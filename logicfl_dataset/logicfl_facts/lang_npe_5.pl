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
trace(trace_3, trace_2, 'invoke', line(jdk_internal_reflect_direct_method_handle_accessor, 104), failure_1, non_target).
trace(trace_4, trace_3, 'invoke', line(java_lang_reflect_method, 578), failure_1, non_target).
trace(trace_5, trace_4, 'invokeMethod', line(org_junit_platform_commons_util_reflection_utils, 727), failure_1, non_target).
trace(trace_6, trace_5, 'proceed', line(org_junit_jupiter_engine_execution_method_invocation, 60), failure_1, non_target).
trace(trace_7, trace_6, 'proceed', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain_validating_invocation, 131), failure_1, non_target).
trace(trace_8, trace_7, 'intercept', line(org_junit_jupiter_engine_extension_timeout_extension, 156), failure_1, non_target).
trace(trace_9, trace_8, 'interceptTestableMethod', line(org_junit_jupiter_engine_extension_timeout_extension, 147), failure_1, non_target).
trace(trace_10, trace_9, 'interceptTestMethod', line(org_junit_jupiter_engine_extension_timeout_extension, 86), failure_1, non_target).
trace(trace_11, trace_10, 'lambda$ofVoidMethod$0', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker_reflective_interceptor_call, 103), failure_1, non_target).
trace(trace_12, trace_11, 'lambda$invoke$0', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker, 93), failure_1, non_target).
trace(trace_13, trace_12, 'proceed', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain_intercepted_invocation, 106), failure_1, non_target).
trace(trace_14, trace_13, 'proceed', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain, 64), failure_1, non_target).
trace(trace_15, trace_14, 'chainAndInvoke', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain, 45), failure_1, non_target).
trace(trace_16, trace_15, 'invoke', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain, 37), failure_1, non_target).
trace(trace_17, trace_16, 'invoke', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker, 92), failure_1, non_target).
trace(trace_18, trace_17, 'invoke', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker, 86), failure_1, non_target).
trace(trace_19, trace_18, 'lambda$invokeTestMethod$7', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 217), failure_1, non_target).
trace(trace_20, trace_19, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_21, trace_20, 'invokeTestMethod', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 213), failure_1, non_target).
trace(trace_22, trace_21, 'execute', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 138), failure_1, non_target).
trace(trace_23, trace_22, 'execute', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 68), failure_1, non_target).
trace(trace_24, trace_23, 'lambda$executeRecursively$6', line(org_junit_platform_engine_support_hierarchical_node_test_task, 151), failure_1, non_target).
trace(trace_25, trace_24, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_26, trace_25, 'lambda$executeRecursively$8', line(org_junit_platform_engine_support_hierarchical_node_test_task, 141), failure_1, non_target).
trace(trace_27, trace_26, 'around', line(org_junit_platform_engine_support_hierarchical_node, 137), failure_1, non_target).
trace(trace_28, trace_27, 'lambda$executeRecursively$9', line(org_junit_platform_engine_support_hierarchical_node_test_task, 139), failure_1, non_target).
trace(trace_29, trace_28, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_30, trace_29, 'executeRecursively', line(org_junit_platform_engine_support_hierarchical_node_test_task, 138), failure_1, non_target).
trace(trace_31, trace_30, 'execute', line(org_junit_platform_engine_support_hierarchical_node_test_task, 95), failure_1, non_target).
trace(trace_32, trace_31, 'forEach', line(java_util_array_list, 1511), failure_1, non_target).
trace(trace_33, trace_32, 'invokeAll', line(org_junit_platform_engine_support_hierarchical_same_thread_hierarchical_test_executor_service, 41), failure_1, non_target).
trace(trace_34, trace_33, 'lambda$executeRecursively$6', line(org_junit_platform_engine_support_hierarchical_node_test_task, 155), failure_1, non_target).
trace(trace_35, trace_34, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_36, trace_35, 'lambda$executeRecursively$8', line(org_junit_platform_engine_support_hierarchical_node_test_task, 141), failure_1, non_target).
trace(trace_37, trace_36, 'around', line(org_junit_platform_engine_support_hierarchical_node, 137), failure_1, non_target).
trace(trace_38, trace_37, 'lambda$executeRecursively$9', line(org_junit_platform_engine_support_hierarchical_node_test_task, 139), failure_1, non_target).
trace(trace_39, trace_38, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_40, trace_39, 'executeRecursively', line(org_junit_platform_engine_support_hierarchical_node_test_task, 138), failure_1, non_target).
trace(trace_41, trace_40, 'execute', line(org_junit_platform_engine_support_hierarchical_node_test_task, 95), failure_1, non_target).
trace(trace_42, trace_41, 'forEach', line(java_util_array_list, 1511), failure_1, non_target).
trace(trace_43, trace_42, 'invokeAll', line(org_junit_platform_engine_support_hierarchical_same_thread_hierarchical_test_executor_service, 41), failure_1, non_target).
trace(trace_44, trace_43, 'lambda$executeRecursively$6', line(org_junit_platform_engine_support_hierarchical_node_test_task, 155), failure_1, non_target).
trace(trace_45, trace_44, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_46, trace_45, 'lambda$executeRecursively$8', line(org_junit_platform_engine_support_hierarchical_node_test_task, 141), failure_1, non_target).
trace(trace_47, trace_46, 'around', line(org_junit_platform_engine_support_hierarchical_node, 137), failure_1, non_target).
trace(trace_48, trace_47, 'lambda$executeRecursively$9', line(org_junit_platform_engine_support_hierarchical_node_test_task, 139), failure_1, non_target).
trace(trace_49, trace_48, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_50, trace_49, 'executeRecursively', line(org_junit_platform_engine_support_hierarchical_node_test_task, 138), failure_1, non_target).
trace(trace_51, trace_50, 'execute', line(org_junit_platform_engine_support_hierarchical_node_test_task, 95), failure_1, non_target).
trace(trace_52, trace_51, 'submit', line(org_junit_platform_engine_support_hierarchical_same_thread_hierarchical_test_executor_service, 35), failure_1, non_target).
trace(trace_53, trace_52, 'execute', line(org_junit_platform_engine_support_hierarchical_hierarchical_test_executor, 57), failure_1, non_target).
trace(trace_54, trace_53, 'execute', line(org_junit_platform_engine_support_hierarchical_hierarchical_test_engine, 54), failure_1, non_target).
trace(trace_55, trace_54, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 147), failure_1, non_target).
trace(trace_56, trace_55, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 127), failure_1, non_target).
trace(trace_57, trace_56, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 90), failure_1, non_target).
trace(trace_58, trace_57, 'lambda$execute$0', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 55), failure_1, non_target).
trace(trace_59, trace_58, 'withInterceptedStreams', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 102), failure_1, non_target).
trace(trace_60, trace_59, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 54), failure_1, non_target).
trace(trace_61, trace_60, 'execute', line(org_junit_platform_launcher_core_default_launcher, 114), failure_1, non_target).
trace(trace_62, trace_61, 'execute', line(org_junit_platform_launcher_core_default_launcher, 86), failure_1, non_target).
trace(trace_63, trace_62, 'execute', line(org_junit_platform_launcher_core_default_launcher_session_delegating_launcher, 86), failure_1, non_target).
trace(trace_64, trace_63, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit5_test_runner, 38), failure_1, non_target).



%%% End of Static Facts

%%% Values

val(p_duration_168, null, line(duration_utils_1, 73)).



%%% End of Facts
%%% Code Facts
:- style_check(-discontiguous).
%%% Classes
class(duration_utils_1, 'org.apache.commons.lang3.time.DurationUtils').
class(range_1, 'org.apache.commons.lang3.Range').
class(duration_utils_test_1, 'org.apache.commons.lang3.time.DurationUtilsTest').
class(number_utils_1, 'org.apache.commons.lang3.math.NumberUtils').

%%% Methods
%duration_utils_1 - org.apache.commons.lang3.time.DurationUtils
method(m_accept_102, range(duration_utils_1, 1468, 641, 43, 57)).
method(m_get_nanos_of_miili_103, range(duration_utils_1, 2115, 648, 59, 74)).
method(m_is_positive_105, range(duration_utils_1, 2769, 314, 76, 84)).
method(m_to_chrono_unit_106, range(duration_utils_1, 3089, 877, 86, 112)).
method(m_to_duration_107, range(duration_utils_1, 3972, 458, 114, 123)).
method(m_to_millis_int_108, range(duration_utils_1, 4436, 863, 125, 144)).
method(m_zero_if_null_109, range(duration_utils_1, 5305, 335, 146, 154)).
%range_1 - org.apache.commons.lang3.Range
method(m_compare_1, range(range_1, 1439, 392, 39, 49)).
method(m_between_3, range(range_1, 1983, 1001, 59, 77)).
method(m_between_4, range(range_1, 2990, 1115, 79, 98)).
method(m_is_6, range(range_1, 4111, 693, 100, 115)).
method(m_is_7, range(range_1, 4810, 821, 117, 133)).
method(m_range_5, range(range_1, 6154, 983, 160, 185)).
method(m_contains_9, range(range_1, 7143, 455, 187, 198)).
method(m_contains_range_10, range(range_1, 7604, 629, 200, 215)).
method(m_element_compare_to_11, range(range_1, 8239, 774, 217, 237)).
method(m_equals_12, range(range_1, 9019, 791, 239, 261)).
method(m_fit_13, range(range_1, 9816, 1044, 263, 294)).
method(m_get_comparator_14, range(range_1, 10866, 396, 296, 306)).
method(m_get_maximum_15, range(range_1, 11268, 185, 308, 315)).
method(m_get_minimum_16, range(range_1, 11459, 185, 317, 324)).
method(m_hash_code_17, range(range_1, 11650, 487, 326, 342)).
method(m_intersection_with_18, range(range_1, 12143, 933, 344, 362)).
method(m_is_after_19, range(range_1, 13082, 408, 364, 375)).
method(m_is_after_range_20, range(range_1, 13496, 585, 377, 391)).
method(m_is_before_21, range(range_1, 14087, 411, 393, 404)).
method(m_is_before_range_22, range(range_1, 14504, 589, 406, 420)).
method(m_is_ended_by_23, range(range_1, 15099, 408, 422, 433)).
method(m_is_natural_ordering_24, range(range_1, 15513, 424, 435, 445)).
method(m_is_overlapped_by_25, range(range_1, 15943, 784, 447, 466)).
method(m_is_started_by_26, range(range_1, 16733, 412, 468, 479)).
method(m_to_string_27, range(range_1, 17151, 387, 481, 494)).
method(m_to_string_28, range(range_1, 17544, 742, 496, 510)).
%duration_utils_test_1 - org.apache.commons.lang3.time.DurationUtilsTest
method(m_test_get_nanos_of_milli_110, range(duration_utils_test_1, 1255, 852, 35, 47)).
method(m_test_is_positive_112, range(duration_utils_test_1, 2113, 246, 49, 54)).
method(m_test_long_to_int_range_fit_113, range(duration_utils_test_1, 2365, 1216, 56, 72)).
method(m_test_to_duration_114, range(duration_utils_test_1, 3587, 955, 74, 86)).
method(m_test_to_millis_int_115, range(duration_utils_test_1, 4548, 1118, 88, 102)).
method(m_test_zero_if_null_116, range(duration_utils_test_1, 5672, 203, 104, 108)).
%number_utils_1 - org.apache.commons.lang3.math.NumberUtils
method(m_number_utils_35, range(number_utils_1, 3687, 332, 88, 96)).
method(m_to_int_36, range(number_utils_1, 4025, 604, 98, 117)).
method(m_to_int_37, range(number_utils_1, 4635, 873, 119, 145)).
method(m_to_long_38, range(number_utils_1, 5514, 612, 147, 166)).
method(m_to_long_39, range(number_utils_1, 6132, 884, 168, 194)).
method(m_to_float_40, range(number_utils_1, 7022, 663, 196, 216)).
method(m_to_float_41, range(number_utils_1, 7691, 930, 218, 246)).
method(m_to_double_42, range(number_utils_1, 8627, 671, 248, 268)).
method(m_to_double_43, range(number_utils_1, 9304, 940, 270, 298)).
method(m_to_double_44, range(number_utils_1, 10250, 702, 300, 318)).
method(m_to_double_45, range(number_utils_1, 10958, 819, 320, 339)).
method(m_to_byte_46, range(number_utils_1, 11784, 618, 341, 360)).
method(m_to_byte_47, range(number_utils_1, 12408, 878, 362, 388)).
method(m_to_short_48, range(number_utils_1, 13292, 627, 390, 409)).
method(m_to_short_49, range(number_utils_1, 13925, 889, 411, 437)).
method(m_to_scaled_big_decimal_50, range(number_utils_1, 14820, 699, 439, 453)).
method(m_to_scaled_big_decimal_51, range(number_utils_1, 15525, 940, 455, 475)).
method(m_to_scaled_big_decimal_52, range(number_utils_1, 16471, 684, 477, 491)).
method(m_to_scaled_big_decimal_53, range(number_utils_1, 17161, 918, 493, 514)).
method(m_to_scaled_big_decimal_54, range(number_utils_1, 18085, 687, 516, 530)).
method(m_to_scaled_big_decimal_55, range(number_utils_1, 18778, 921, 532, 553)).
method(m_to_scaled_big_decimal_56, range(number_utils_1, 19705, 687, 555, 569)).
method(m_to_scaled_big_decimal_57, range(number_utils_1, 20398, 919, 571, 592)).
method(m_create_number_58, range(number_utils_1, 22513, 8895, 629, 830)).
method(m_get_mantissa_59, range(number_utils_1, 31414, 601, 832, 846)).
method(m_is_zero_60, range(number_utils_1, 32021, 1331, 848, 876)).
method(m_is_all_zeros_61, range(number_utils_1, 33358, 541, 878, 896)).
method(m_create_float_62, range(number_utils_1, 33905, 509, 898, 912)).
method(m_create_double_63, range(number_utils_1, 34420, 514, 914, 928)).
method(m_create_integer_64, range(number_utils_1, 34940, 709, 930, 947)).
method(m_create_long_65, range(number_utils_1, 35655, 636, 949, 965)).
method(m_create_big_integer_66, range(number_utils_1, 36297, 1587, 967, 1007)).
method(m_create_big_decimal_67, range(number_utils_1, 37890, 738, 1009, 1027)).
method(m_min_68, range(number_utils_1, 38729, 714, 1031, 1053)).
method(m_min_69, range(number_utils_1, 39449, 709, 1055, 1077)).
method(m_min_70, range(number_utils_1, 40164, 719, 1079, 1101)).
method(m_min_71, range(number_utils_1, 40889, 714, 1103, 1125)).
method(m_min_72, range(number_utils_1, 41610, 927, 1127, 1153)).
method(m_min_73, range(number_utils_1, 42543, 919, 1155, 1181)).
method(m_max_74, range(number_utils_1, 43563, 714, 1185, 1207)).
method(m_max_75, range(number_utils_1, 44283, 709, 1209, 1231)).
method(m_max_76, range(number_utils_1, 44998, 719, 1233, 1255)).
method(m_max_77, range(number_utils_1, 45723, 714, 1257, 1279)).
method(m_max_78, range(number_utils_1, 46443, 927, 1281, 1307)).
method(m_max_79, range(number_utils_1, 47376, 919, 1309, 1335)).
method(m_validate_array_80, range(number_utils_1, 48301, 445, 1337, 1347)).
method(m_min_81, range(number_utils_1, 48771, 386, 1350, 1366)).
method(m_min_82, range(number_utils_1, 49163, 381, 1368, 1384)).
method(m_min_83, range(number_utils_1, 49550, 391, 1386, 1402)).
method(m_min_84, range(number_utils_1, 49947, 386, 1404, 1420)).
method(m_min_85, range(number_utils_1, 50339, 543, 1422, 1436)).
method(m_min_86, range(number_utils_1, 50888, 535, 1438, 1452)).
method(m_max_87, range(number_utils_1, 51448, 385, 1455, 1471)).
method(m_max_88, range(number_utils_1, 51839, 380, 1473, 1489)).
method(m_max_89, range(number_utils_1, 52225, 390, 1491, 1507)).
method(m_max_90, range(number_utils_1, 52621, 385, 1509, 1525)).
method(m_max_91, range(number_utils_1, 53012, 542, 1527, 1541)).
method(m_max_92, range(number_utils_1, 53560, 534, 1543, 1557)).
method(m_is_digits_93, range(number_utils_1, 54100, 406, 1559, 1571)).
method(m_is_number_94, range(number_utils_1, 54512, 1272, 1573, 1601)).
method(m_is_creatable_95, range(number_utils_1, 55790, 5377, 1603, 1737)).
method(m_is_parsable_96, range(number_utils_1, 61173, 1235, 1739, 1770)).
method(m_with_decimals_parsing_97, range(number_utils_1, 62414, 549, 1772, 1787)).
method(m_compare_98, range(number_utils_1, 62969, 579, 1789, 1804)).
method(m_compare_99, range(number_utils_1, 63554, 583, 1806, 1821)).
method(m_compare_100, range(number_utils_1, 64143, 588, 1823, 1838)).
method(m_compare_101, range(number_utils_1, 64737, 521, 1840, 1852)).

%%% Blocks
%duration_utils_1 - org.apache.commons.lang3.time.DurationUtils
block(duration_utils_1_block1, block, duration_utils_1_code10, body, range(duration_utils_1, 2709, 54, 72, 74)).
%range_1 - org.apache.commons.lang3.Range
block(range_1_block1, block, range_1_code5, body, range(range_1, 1764, 67, 47, 49)).
block(range_1_block2, block, range_1_code7, body, range(range_1, 2919, 65, 75, 77)).
block(range_1_block3, block, range_1_code8, body, range(range_1, 4030, 75, 96, 98)).
block(range_1_block4, block, range_1_code11, body, range(range_1, 6494, 643, 168, 185)).
block(range_1_block5, block, range_1_stmt4, then_statement, range(range_1, 6546, 195, 169, 172)).
block(range_1_block6, block, range_1_stmt5, then_statement, range(range_1, 6768, 72, 173, 175)).
block(range_1_block7, block, range_1_stmt7, then_statement, range(range_1, 6955, 85, 178, 181)).
%duration_utils_test_1 - org.apache.commons.lang3.time.DurationUtilsTest
block(duration_utils_test_1_block1, block, duration_utils_test_1_code4, body, range(duration_utils_test_1, 1299, 808, 36, 47)).
%number_utils_1 - org.apache.commons.lang3.math.NumberUtils

%%% Statements
%duration_utils_1 - org.apache.commons.lang3.time.DurationUtils
stmt(duration_utils_1_stmt1, return_statement, duration_utils_1_block1, (statements, 0), range(duration_utils_1, 2719, 38, 73, 73)).
%range_1 - org.apache.commons.lang3.Range
stmt(range_1_stmt1, return_statement, range_1_block1, (statements, 0), range(range_1, 1778, 43, 48, 48)).
stmt(range_1_stmt2, return_statement, range_1_block2, (statements, 0), range(range_1, 2929, 49, 76, 76)).
stmt(range_1_stmt3, return_statement, range_1_block3, (statements, 0), range(range_1, 4040, 59, 97, 97)).
stmt(range_1_stmt4, if_statement, range_1_block4, (statements, 0), range(range_1, 6504, 237, 169, 172)).
stmt(range_1_stmt5, if_statement, range_1_block4, (statements, 1), range(range_1, 6750, 143, 173, 177)).
stmt(range_1_stmt6, expression_statement, range_1_block6, (statements, 0), range(range_1, 6782, 48, 174, 174)).
stmt(range_1_stmt7, if_statement, range_1_block4, (statements, 2), range(range_1, 6902, 229, 178, 184)).
stmt(range_1_stmt8, expression_statement, range_1_block7, (statements, 0), range(range_1, 6969, 24, 179, 179)).
stmt(range_1_stmt9, expression_statement, range_1_block7, (statements, 1), range(range_1, 7006, 24, 180, 180)).
%duration_utils_test_1 - org.apache.commons.lang3.time.DurationUtilsTest
stmt(duration_utils_test_1_stmt1, expression_statement, duration_utils_test_1_block1, (statements, 0), range(duration_utils_test_1, 1309, 53, 37, 37)).
%number_utils_1 - org.apache.commons.lang3.math.NumberUtils

%%% Expressions
%duration_utils_1 - org.apache.commons.lang3.time.DurationUtils
expr(duration_utils_1_expr1, method_invocation, duration_utils_1_code9, initializer, range(duration_utils_1, 1372, 89, 40, 41), "Range.between(NumberUtils.LONG_INT_MIN_VALUE,NumberUtils.LONG_INT_MAX_VALUE)").
expr(duration_utils_1_expr3, method_invocation, duration_utils_1_expr2, left_operand, range(duration_utils_1, 2726, 18, 73, 73), "duration.getNano()").
expr(duration_utils_1_expr2, infix_expression, duration_utils_1_stmt1, expression, range(duration_utils_1, 2726, 30, 73, 73), "duration.getNano() % 1_000_000").
%range_1 - org.apache.commons.lang3.Range
expr(range_1_expr1, single_member_annotation, range_1_code3, (modifiers, 0), range(range_1, 1305, 44, 35, 35), "@SuppressWarnings({\"rawtypes\",\"unchecked\"})").
expr(range_1_expr2, array_initializer, range_1_expr1, value, range(range_1, 1323, 25, 35, 35), "{\"rawtypes\",\"unchecked\"}").
expr(range_1_expr3, method_invocation, range_1_stmt1, expression, range(range_1, 1785, 35, 48, 48), "((Comparable)obj1).compareTo(obj2)").
expr(range_1_expr4, parenthesized_expression, range_1_expr3, expression, range(range_1, 1785, 19, 48, 48), "((Comparable)obj1)").
expr(range_1_expr5, cast_expression, range_1_expr4, expression, range(range_1, 1786, 17, 48, 48), "(Comparable)obj1").
expr(range_1_expr6, method_invocation, range_1_stmt2, expression, range(range_1, 2936, 41, 76, 76), "between(fromInclusive,toInclusive,null)").
expr(range_1_expr7, class_instance_creation, range_1_stmt3, expression, range(range_1, 4047, 51, 97, 97), "new Range<>(fromInclusive,toInclusive,comparator)").
expr(range_1_expr9, infix_expression, range_1_expr8, left_operand, range(range_1, 6508, 16, 169, 169), "element1 == null").
expr(range_1_expr8, infix_expression, range_1_stmt4, expression, range(range_1, 6508, 36, 169, 169), "element1 == null || element2 == null").
expr(range_1_expr10, infix_expression, range_1_expr8, right_operand, range(range_1, 6528, 16, 169, 169), "element2 == null").
expr(range_1_expr11, infix_expression, range_1_stmt5, expression, range(range_1, 6754, 12, 173, 173), "comp == null").
expr(range_1_expr13, field_access, range_1_expr12, left_hand_side, range(range_1, 6782, 15, 174, 174), "this.comparator").
expr(range_1_expr12, assignment, range_1_stmt6, expression, range(range_1, 6782, 47, 174, 174), "this.comparator=ComparableComparator.INSTANCE").
expr(range_1_expr14, this_expression, f_comparator_15, expression, range(range_1, 6782, 4, 174, 174), "this").
expr(range_1_expr17, field_access, range_1_expr16, expression, range(range_1, 6906, 15, 178, 178), "this.comparator").
expr(range_1_expr16, method_invocation, range_1_expr15, left_operand, range(range_1, 6906, 43, 178, 178), "this.comparator.compare(element1,element2)").
expr(range_1_expr15, infix_expression, range_1_stmt7, expression, range(range_1, 6906, 47, 178, 178), "this.comparator.compare(element1,element2) < 1").
expr(range_1_expr18, this_expression, f_comparator_15, expression, range(range_1, 6906, 4, 178, 178), "this").
expr(range_1_expr20, field_access, range_1_expr19, left_hand_side, range(range_1, 6969, 12, 179, 179), "this.minimum").
expr(range_1_expr21, this_expression, f_minimum_16, expression, range(range_1, 6969, 4, 179, 179), "this").
expr(range_1_expr19, assignment, range_1_stmt8, expression, range(range_1, 6969, 23, 179, 179), "this.minimum=element1").
expr(range_1_expr24, this_expression, f_maximum_17, expression, range(range_1, 7006, 4, 180, 180), "this").
expr(range_1_expr23, field_access, range_1_expr22, left_hand_side, range(range_1, 7006, 12, 180, 180), "this.maximum").
expr(range_1_expr22, assignment, range_1_stmt9, expression, range(range_1, 7006, 23, 180, 180), "this.maximum=element2").
%duration_utils_test_1 - org.apache.commons.lang3.time.DurationUtilsTest
expr(duration_utils_test_1_expr1, method_invocation, duration_utils_test_1_stmt1, expression, range(duration_utils_test_1, 1309, 52, 37, 37), "assertEquals(0,DurationUtils.getNanosOfMiili(null))").
expr(duration_utils_test_1_expr2, method_invocation, duration_utils_test_1_expr1, (arguments, 1), range(duration_utils_test_1, 1325, 35, 37, 37), "DurationUtils.getNanosOfMiili(null)").
%number_utils_1 - org.apache.commons.lang3.math.NumberUtils
expr(number_utils_1_expr1, method_invocation, number_utils_1_code8, initializer, range(number_utils_1, 1255, 16, 35, 35), "Long.valueOf(0L)").
expr(number_utils_1_expr2, method_invocation, number_utils_1_code14, initializer, range(number_utils_1, 1356, 16, 37, 37), "Long.valueOf(1L)").
expr(number_utils_1_expr3, method_invocation, number_utils_1_code20, initializer, range(number_utils_1, 1469, 17, 39, 39), "Long.valueOf(-1L)").
expr(number_utils_1_expr4, prefix_expression, number_utils_1_expr3, (arguments, 0), range(number_utils_1, 1482, 3, 39, 39), "-1L").
expr(number_utils_1_expr5, method_invocation, number_utils_1_code26, initializer, range(number_utils_1, 1582, 18, 41, 41), "Integer.valueOf(0)").
expr(number_utils_1_expr6, method_invocation, number_utils_1_code32, initializer, range(number_utils_1, 1694, 18, 43, 43), "Integer.valueOf(1)").
expr(number_utils_1_expr7, method_invocation, number_utils_1_code38, initializer, range(number_utils_1, 1805, 18, 45, 45), "Integer.valueOf(2)").
expr(number_utils_1_expr8, method_invocation, number_utils_1_code44, initializer, range(number_utils_1, 1929, 19, 47, 47), "Integer.valueOf(-1)").
expr(number_utils_1_expr9, prefix_expression, number_utils_1_expr8, (arguments, 0), range(number_utils_1, 1945, 2, 47, 47), "-1").
expr(number_utils_1_expr10, method_invocation, number_utils_1_code50, initializer, range(number_utils_1, 2038, 24, 49, 49), "Short.valueOf((short)0)").
expr(number_utils_1_expr11, cast_expression, number_utils_1_expr10, (arguments, 0), range(number_utils_1, 2052, 9, 49, 49), "(short)0").
expr(number_utils_1_expr12, method_invocation, number_utils_1_code57, initializer, range(number_utils_1, 2150, 24, 51, 51), "Short.valueOf((short)1)").
expr(number_utils_1_expr13, cast_expression, number_utils_1_expr12, (arguments, 0), range(number_utils_1, 2164, 9, 51, 51), "(short)1").
expr(number_utils_1_expr14, method_invocation, number_utils_1_code64, initializer, range(number_utils_1, 2274, 25, 53, 53), "Short.valueOf((short)-1)").
expr(number_utils_1_expr15, cast_expression, number_utils_1_expr14, (arguments, 0), range(number_utils_1, 2288, 10, 53, 53), "(short)-1").
expr(number_utils_1_expr16, prefix_expression, number_utils_1_expr15, expression, range(number_utils_1, 2296, 2, 53, 53), "-1").
expr(number_utils_1_expr17, method_invocation, number_utils_1_code71, initializer, range(number_utils_1, 2386, 22, 55, 55), "Byte.valueOf((byte)0)").
expr(number_utils_1_expr18, cast_expression, number_utils_1_expr17, (arguments, 0), range(number_utils_1, 2399, 8, 55, 55), "(byte)0").
expr(number_utils_1_expr19, method_invocation, number_utils_1_code78, initializer, range(number_utils_1, 2493, 22, 57, 57), "Byte.valueOf((byte)1)").
expr(number_utils_1_expr20, cast_expression, number_utils_1_expr19, (arguments, 0), range(number_utils_1, 2506, 8, 57, 57), "(byte)1").
expr(number_utils_1_expr21, method_invocation, number_utils_1_code85, initializer, range(number_utils_1, 2612, 23, 59, 59), "Byte.valueOf((byte)-1)").
expr(number_utils_1_expr22, cast_expression, number_utils_1_expr21, (arguments, 0), range(number_utils_1, 2625, 9, 59, 59), "(byte)-1").
expr(number_utils_1_expr23, prefix_expression, number_utils_1_expr22, expression, range(number_utils_1, 2632, 2, 59, 59), "-1").
expr(number_utils_1_expr24, method_invocation, number_utils_1_code92, initializer, range(number_utils_1, 2728, 20, 61, 61), "Double.valueOf(0.0d)").
expr(number_utils_1_expr25, method_invocation, number_utils_1_code98, initializer, range(number_utils_1, 2839, 20, 63, 63), "Double.valueOf(1.0d)").
expr(number_utils_1_expr26, method_invocation, number_utils_1_code104, initializer, range(number_utils_1, 2962, 21, 65, 65), "Double.valueOf(-1.0d)").
expr(number_utils_1_expr27, prefix_expression, number_utils_1_expr26, (arguments, 0), range(number_utils_1, 2977, 5, 65, 65), "-1.0d").
expr(number_utils_1_expr28, method_invocation, number_utils_1_code110, initializer, range(number_utils_1, 3073, 19, 67, 67), "Float.valueOf(0.0f)").
expr(number_utils_1_expr29, method_invocation, number_utils_1_code116, initializer, range(number_utils_1, 3180, 19, 69, 69), "Float.valueOf(1.0f)").
expr(number_utils_1_expr30, method_invocation, number_utils_1_code122, initializer, range(number_utils_1, 3299, 20, 71, 71), "Float.valueOf(-1.0f)").
expr(number_utils_1_expr31, prefix_expression, number_utils_1_expr30, (arguments, 0), range(number_utils_1, 3313, 5, 71, 71), "-1.0f").
expr(number_utils_1_expr32, method_invocation, number_utils_1_code128, initializer, range(number_utils_1, 3468, 31, 78, 78), "Long.valueOf(Integer.MAX_VALUE)").
expr(number_utils_1_expr33, method_invocation, number_utils_1_code134, initializer, range(number_utils_1, 3648, 31, 85, 85), "Long.valueOf(Integer.MIN_VALUE)").

%%% Names
%duration_utils_1 - org.apache.commons.lang3.time.DurationUtils
name(f_long_to_int_range_165, simple_name, duration_utils_1_code9, name, range(duration_utils_1, 1352, 17, 40, 40), 'LONG_TO_INT_RANGE').
name(t_range_9, simple_name, duration_utils_1_expr1, expression, range(duration_utils_1, 1372, 5, 40, 40), 'Range').
name(m_between_3, simple_name, duration_utils_1_expr1, name, range(duration_utils_1, 1378, 7, 40, 40), 'between').
name(t_number_utils_10, simple_name, q_long_int_min_value_4, qualifier, range(duration_utils_1, 1386, 11, 40, 40), 'NumberUtils').
name(q_long_int_min_value_4, qualified_name, duration_utils_1_expr1, (arguments, 0), range(duration_utils_1, 1386, 30, 40, 40), 'NumberUtils.LONG_INT_MIN_VALUE').
name(q_long_int_max_value_5, qualified_name, duration_utils_1_expr1, (arguments, 1), range(duration_utils_1, 1430, 30, 41, 41), 'NumberUtils.LONG_INT_MAX_VALUE').
name(p_duration_168, simple_name, duration_utils_1_expr3, expression, range(duration_utils_1, 2726, 8, 73, 73), 'duration').
name(m_get_nano_104, simple_name, duration_utils_1_expr3, name, range(duration_utils_1, 2735, 7, 73, 73), 'getNano').
%range_1 - org.apache.commons.lang3.Range
name(t_suppress_warnings_1, simple_name, range_1_expr1, type_name, range(range_1, 1306, 16, 35, 35), 'SuppressWarnings').
name(f_instance_1, simple_name, range_1_code4, name, range(range_1, 1420, 8, 37, 37), 'INSTANCE').
name(p_obj_1_2, simple_name, range_1_expr5, expression, range(range_1, 1799, 4, 48, 48), 'obj1').
name(m_compare_to_2, simple_name, range_1_expr3, name, range(range_1, 1805, 9, 48, 48), 'compareTo').
name(p_obj_2_3, simple_name, range_1_expr3, (arguments, 0), range(range_1, 1815, 4, 48, 48), 'obj2').
name(m_between_4, simple_name, range_1_expr6, name, range(range_1, 2936, 7, 76, 76), 'between').
name(p_from_inclusive_4, simple_name, range_1_expr6, (arguments, 0), range(range_1, 2944, 13, 76, 76), 'fromInclusive').
name(p_to_inclusive_5, simple_name, range_1_expr6, (arguments, 1), range(range_1, 2959, 11, 76, 76), 'toInclusive').
name(p_from_inclusive_6, simple_name, range_1_expr7, (arguments, 0), range(range_1, 4059, 13, 97, 97), 'fromInclusive').
name(p_to_inclusive_7, simple_name, range_1_expr7, (arguments, 1), range(range_1, 4074, 11, 97, 97), 'toInclusive').
name(p_comparator_8, simple_name, range_1_expr7, (arguments, 2), range(range_1, 4087, 10, 97, 97), 'comparator').
name(m_range_5, simple_name, range_1_code11, name, range(range_1, 6426, 5, 168, 168), 'Range').
name(p_element_1_12, simple_name, range_1_code13, name, range(range_1, 6440, 8, 168, 168), 'element1').
name(p_element_2_13, simple_name, range_1_code16, name, range(range_1, 6458, 8, 168, 168), 'element2').
name(p_comp_14, simple_name, range_1_code19, name, range(range_1, 6488, 4, 168, 168), 'comp').
name(p_element_1_12, simple_name, range_1_expr9, left_operand, range(range_1, 6508, 8, 169, 169), 'element1').
name(p_element_2_13, simple_name, range_1_expr10, left_operand, range(range_1, 6528, 8, 169, 169), 'element2').
name(p_comp_14, simple_name, range_1_expr11, left_operand, range(range_1, 6754, 4, 173, 173), 'comp').
name(f_comparator_15, simple_name, range_1_expr13, name, range(range_1, 6787, 10, 174, 174), 'comparator').
name(t_comparable_comparator_2, simple_name, q_instance_1, qualifier, range(range_1, 6800, 20, 174, 174), 'ComparableComparator').
name(q_instance_1, qualified_name, range_1_expr12, right_hand_side, range(range_1, 6800, 29, 174, 174), 'ComparableComparator.INSTANCE').
name(f_comparator_15, simple_name, range_1_expr17, name, range(range_1, 6911, 10, 178, 178), 'comparator').
name(m_compare_8, simple_name, range_1_expr16, name, range(range_1, 6922, 7, 178, 178), 'compare').
name(p_element_1_12, simple_name, range_1_expr16, (arguments, 0), range(range_1, 6930, 8, 178, 178), 'element1').
name(p_element_2_13, simple_name, range_1_expr16, (arguments, 1), range(range_1, 6940, 8, 178, 178), 'element2').
name(f_minimum_16, simple_name, range_1_expr20, name, range(range_1, 6974, 7, 179, 179), 'minimum').
name(p_element_1_12, simple_name, range_1_expr19, right_hand_side, range(range_1, 6984, 8, 179, 179), 'element1').
name(f_maximum_17, simple_name, range_1_expr23, name, range(range_1, 7011, 7, 180, 180), 'maximum').
name(p_element_2_13, simple_name, range_1_expr22, right_hand_side, range(range_1, 7021, 8, 180, 180), 'element2').
%duration_utils_test_1 - org.apache.commons.lang3.time.DurationUtilsTest
name(t_duration_utils_test_11, simple_name, duration_utils_test_1_code2, name, range(duration_utils_test_1, 1230, 17, 33, 33), 'DurationUtilsTest').
name(m_assert_equals_111, simple_name, duration_utils_test_1_expr1, name, range(duration_utils_test_1, 1309, 12, 37, 37), 'assertEquals').
name(t_duration_utils_12, simple_name, duration_utils_test_1_expr2, expression, range(duration_utils_test_1, 1325, 13, 37, 37), 'DurationUtils').
name(m_get_nanos_of_miili_103, simple_name, duration_utils_test_1_expr2, name, range(duration_utils_test_1, 1339, 15, 37, 37), 'getNanosOfMiili').
%number_utils_1 - org.apache.commons.lang3.math.NumberUtils
name(f_long_zero_32, simple_name, number_utils_1_code8, name, range(number_utils_1, 1243, 9, 35, 35), 'LONG_ZERO').
name(t_long_3, simple_name, number_utils_1_expr1, expression, range(number_utils_1, 1255, 4, 35, 35), 'Long').
name(m_value_of_29, simple_name, number_utils_1_expr1, name, range(number_utils_1, 1260, 7, 35, 35), 'valueOf').
name(f_long_one_33, simple_name, number_utils_1_code14, name, range(number_utils_1, 1345, 8, 37, 37), 'LONG_ONE').
name(t_long_3, simple_name, number_utils_1_expr2, expression, range(number_utils_1, 1356, 4, 37, 37), 'Long').
name(m_value_of_29, simple_name, number_utils_1_expr2, name, range(number_utils_1, 1361, 7, 37, 37), 'valueOf').
name(f_long_minus_one_34, simple_name, number_utils_1_code20, name, range(number_utils_1, 1452, 14, 39, 39), 'LONG_MINUS_ONE').
name(t_long_3, simple_name, number_utils_1_expr3, expression, range(number_utils_1, 1469, 4, 39, 39), 'Long').
name(m_value_of_29, simple_name, number_utils_1_expr3, name, range(number_utils_1, 1474, 7, 39, 39), 'valueOf').
name(f_integer_zero_35, simple_name, number_utils_1_code26, name, range(number_utils_1, 1567, 12, 41, 41), 'INTEGER_ZERO').
name(t_integer_4, simple_name, number_utils_1_expr5, expression, range(number_utils_1, 1582, 7, 41, 41), 'Integer').
name(m_value_of_30, simple_name, number_utils_1_expr5, name, range(number_utils_1, 1590, 7, 41, 41), 'valueOf').
name(f_integer_one_36, simple_name, number_utils_1_code32, name, range(number_utils_1, 1680, 11, 43, 43), 'INTEGER_ONE').
name(t_integer_4, simple_name, number_utils_1_expr6, expression, range(number_utils_1, 1694, 7, 43, 43), 'Integer').
name(m_value_of_30, simple_name, number_utils_1_expr6, name, range(number_utils_1, 1702, 7, 43, 43), 'valueOf').
name(f_integer_two_37, simple_name, number_utils_1_code38, name, range(number_utils_1, 1791, 11, 45, 45), 'INTEGER_TWO').
name(t_integer_4, simple_name, number_utils_1_expr7, expression, range(number_utils_1, 1805, 7, 45, 45), 'Integer').
name(m_value_of_30, simple_name, number_utils_1_expr7, name, range(number_utils_1, 1813, 7, 45, 45), 'valueOf').
name(f_integer_minus_one_38, simple_name, number_utils_1_code44, name, range(number_utils_1, 1909, 17, 47, 47), 'INTEGER_MINUS_ONE').
name(t_integer_4, simple_name, number_utils_1_expr8, expression, range(number_utils_1, 1929, 7, 47, 47), 'Integer').
name(m_value_of_30, simple_name, number_utils_1_expr8, name, range(number_utils_1, 1937, 7, 47, 47), 'valueOf').
name(f_short_zero_39, simple_name, number_utils_1_code50, name, range(number_utils_1, 2025, 10, 49, 49), 'SHORT_ZERO').
name(t_short_5, simple_name, number_utils_1_expr10, expression, range(number_utils_1, 2038, 5, 49, 49), 'Short').
name(m_value_of_31, simple_name, number_utils_1_expr10, name, range(number_utils_1, 2044, 7, 49, 49), 'valueOf').
name(f_short_one_40, simple_name, number_utils_1_code57, name, range(number_utils_1, 2138, 9, 51, 51), 'SHORT_ONE').
name(t_short_5, simple_name, number_utils_1_expr12, expression, range(number_utils_1, 2150, 5, 51, 51), 'Short').
name(m_value_of_31, simple_name, number_utils_1_expr12, name, range(number_utils_1, 2156, 7, 51, 51), 'valueOf').
name(f_short_minus_one_41, simple_name, number_utils_1_code64, name, range(number_utils_1, 2256, 15, 53, 53), 'SHORT_MINUS_ONE').
name(t_short_5, simple_name, number_utils_1_expr14, expression, range(number_utils_1, 2274, 5, 53, 53), 'Short').
name(m_value_of_31, simple_name, number_utils_1_expr14, name, range(number_utils_1, 2280, 7, 53, 53), 'valueOf').
name(f_byte_zero_42, simple_name, number_utils_1_code71, name, range(number_utils_1, 2374, 9, 55, 55), 'BYTE_ZERO').
name(t_byte_6, simple_name, number_utils_1_expr17, expression, range(number_utils_1, 2386, 4, 55, 55), 'Byte').
name(m_value_of_32, simple_name, number_utils_1_expr17, name, range(number_utils_1, 2391, 7, 55, 55), 'valueOf').
name(f_byte_one_43, simple_name, number_utils_1_code78, name, range(number_utils_1, 2482, 8, 57, 57), 'BYTE_ONE').
name(t_byte_6, simple_name, number_utils_1_expr19, expression, range(number_utils_1, 2493, 4, 57, 57), 'Byte').
name(m_value_of_32, simple_name, number_utils_1_expr19, name, range(number_utils_1, 2498, 7, 57, 57), 'valueOf').
name(f_byte_minus_one_44, simple_name, number_utils_1_code85, name, range(number_utils_1, 2595, 14, 59, 59), 'BYTE_MINUS_ONE').
name(t_byte_6, simple_name, number_utils_1_expr21, expression, range(number_utils_1, 2612, 4, 59, 59), 'Byte').
name(m_value_of_32, simple_name, number_utils_1_expr21, name, range(number_utils_1, 2617, 7, 59, 59), 'valueOf').
name(f_double_zero_45, simple_name, number_utils_1_code92, name, range(number_utils_1, 2714, 11, 61, 61), 'DOUBLE_ZERO').
name(t_double_7, simple_name, number_utils_1_expr24, expression, range(number_utils_1, 2728, 6, 61, 61), 'Double').
name(m_value_of_33, simple_name, number_utils_1_expr24, name, range(number_utils_1, 2735, 7, 61, 61), 'valueOf').
name(f_double_one_46, simple_name, number_utils_1_code98, name, range(number_utils_1, 2826, 10, 63, 63), 'DOUBLE_ONE').
name(t_double_7, simple_name, number_utils_1_expr25, expression, range(number_utils_1, 2839, 6, 63, 63), 'Double').
name(m_value_of_33, simple_name, number_utils_1_expr25, name, range(number_utils_1, 2846, 7, 63, 63), 'valueOf').
name(f_double_minus_one_47, simple_name, number_utils_1_code104, name, range(number_utils_1, 2943, 16, 65, 65), 'DOUBLE_MINUS_ONE').
name(t_double_7, simple_name, number_utils_1_expr26, expression, range(number_utils_1, 2962, 6, 65, 65), 'Double').
name(m_value_of_33, simple_name, number_utils_1_expr26, name, range(number_utils_1, 2969, 7, 65, 65), 'valueOf').
name(f_float_zero_48, simple_name, number_utils_1_code110, name, range(number_utils_1, 3060, 10, 67, 67), 'FLOAT_ZERO').
name(t_float_8, simple_name, number_utils_1_expr28, expression, range(number_utils_1, 3073, 5, 67, 67), 'Float').
name(m_value_of_34, simple_name, number_utils_1_expr28, name, range(number_utils_1, 3079, 7, 67, 67), 'valueOf').
name(f_float_one_49, simple_name, number_utils_1_code116, name, range(number_utils_1, 3168, 9, 69, 69), 'FLOAT_ONE').
name(t_float_8, simple_name, number_utils_1_expr29, expression, range(number_utils_1, 3180, 5, 69, 69), 'Float').
name(m_value_of_34, simple_name, number_utils_1_expr29, name, range(number_utils_1, 3186, 7, 69, 69), 'valueOf').
name(f_float_minus_one_50, simple_name, number_utils_1_code122, name, range(number_utils_1, 3281, 15, 71, 71), 'FLOAT_MINUS_ONE').
name(t_float_8, simple_name, number_utils_1_expr30, expression, range(number_utils_1, 3299, 5, 71, 71), 'Float').
name(m_value_of_34, simple_name, number_utils_1_expr30, name, range(number_utils_1, 3305, 7, 71, 71), 'valueOf').
name(f_long_int_max_value_51, simple_name, number_utils_1_code128, name, range(number_utils_1, 3447, 18, 78, 78), 'LONG_INT_MAX_VALUE').
name(t_long_3, simple_name, number_utils_1_expr32, expression, range(number_utils_1, 3468, 4, 78, 78), 'Long').
name(m_value_of_29, simple_name, number_utils_1_expr32, name, range(number_utils_1, 3473, 7, 78, 78), 'valueOf').
name(q_max_value_2, qualified_name, number_utils_1_expr32, (arguments, 0), range(number_utils_1, 3481, 17, 78, 78), 'Integer.MAX_VALUE').
name(t_integer_4, simple_name, q_max_value_2, qualifier, range(number_utils_1, 3481, 7, 78, 78), 'Integer').
name(f_long_int_min_value_52, simple_name, number_utils_1_code134, name, range(number_utils_1, 3627, 18, 85, 85), 'LONG_INT_MIN_VALUE').
name(t_long_3, simple_name, number_utils_1_expr33, expression, range(number_utils_1, 3648, 4, 85, 85), 'Long').
name(m_value_of_29, simple_name, number_utils_1_expr33, name, range(number_utils_1, 3653, 7, 85, 85), 'valueOf').
name(q_min_value_3, qualified_name, number_utils_1_expr33, (arguments, 0), range(number_utils_1, 3661, 17, 85, 85), 'Integer.MIN_VALUE').
name(t_integer_4, simple_name, q_min_value_3, qualifier, range(number_utils_1, 3661, 7, 85, 85), 'Integer').

%%% Literals
%duration_utils_1 - org.apache.commons.lang3.time.DurationUtils
literal(duration_utils_1_literal1, number_literal, duration_utils_1_expr2, right_operand, range(duration_utils_1, 2747, 9, 73, 73), 1_000_000).
%range_1 - org.apache.commons.lang3.Range
literal(range_1_literal1, string_literal, range_1_expr2, (expressions, 0), range(range_1, 1324, 10, 35, 35), "rawtypes").
literal(range_1_literal2, string_literal, range_1_expr2, (expressions, 1), range(range_1, 1336, 11, 35, 35), "unchecked").
literal(range_1_literal3, null_literal, range_1_expr6, (arguments, 2), range(range_1, 2972, 4, 76, 76), null).
literal(range_1_literal4, null_literal, range_1_expr9, right_operand, range(range_1, 6520, 4, 169, 169), null).
literal(range_1_literal5, null_literal, range_1_expr10, right_operand, range(range_1, 6540, 4, 169, 169), null).
literal(range_1_literal6, null_literal, range_1_expr11, right_operand, range(range_1, 6762, 4, 173, 173), null).
literal(range_1_literal7, number_literal, range_1_expr15, right_operand, range(range_1, 6952, 1, 178, 178), 1).
%duration_utils_test_1 - org.apache.commons.lang3.time.DurationUtilsTest
literal(duration_utils_test_1_literal1, number_literal, duration_utils_test_1_expr1, (arguments, 0), range(duration_utils_test_1, 1322, 1, 37, 37), 0).
literal(duration_utils_test_1_literal2, null_literal, duration_utils_test_1_expr2, (arguments, 0), range(duration_utils_test_1, 1355, 4, 37, 37), null).
%number_utils_1 - org.apache.commons.lang3.math.NumberUtils
literal(number_utils_1_literal1, number_literal, number_utils_1_expr1, (arguments, 0), range(number_utils_1, 1268, 2, 35, 35), 0).
literal(number_utils_1_literal2, number_literal, number_utils_1_expr2, (arguments, 0), range(number_utils_1, 1369, 2, 37, 37), 1).
literal(number_utils_1_literal3, number_literal, number_utils_1_expr4, operand, range(number_utils_1, 1483, 2, 39, 39), 1).
literal(number_utils_1_literal4, number_literal, number_utils_1_expr5, (arguments, 0), range(number_utils_1, 1598, 1, 41, 41), 0).
literal(number_utils_1_literal5, number_literal, number_utils_1_expr6, (arguments, 0), range(number_utils_1, 1710, 1, 43, 43), 1).
literal(number_utils_1_literal6, number_literal, number_utils_1_expr7, (arguments, 0), range(number_utils_1, 1821, 1, 45, 45), 2).
literal(number_utils_1_literal7, number_literal, number_utils_1_expr9, operand, range(number_utils_1, 1946, 1, 47, 47), 1).
literal(number_utils_1_literal8, number_literal, number_utils_1_expr11, expression, range(number_utils_1, 2060, 1, 49, 49), 0).
literal(number_utils_1_literal9, number_literal, number_utils_1_expr13, expression, range(number_utils_1, 2172, 1, 51, 51), 1).
literal(number_utils_1_literal10, number_literal, number_utils_1_expr16, operand, range(number_utils_1, 2297, 1, 53, 53), 1).
literal(number_utils_1_literal11, number_literal, number_utils_1_expr18, expression, range(number_utils_1, 2406, 1, 55, 55), 0).
literal(number_utils_1_literal12, number_literal, number_utils_1_expr20, expression, range(number_utils_1, 2513, 1, 57, 57), 1).
literal(number_utils_1_literal13, number_literal, number_utils_1_expr23, operand, range(number_utils_1, 2633, 1, 59, 59), 1).
literal(number_utils_1_literal14, number_literal, number_utils_1_expr24, (arguments, 0), range(number_utils_1, 2743, 4, 61, 61), 0.0).
literal(number_utils_1_literal15, number_literal, number_utils_1_expr25, (arguments, 0), range(number_utils_1, 2854, 4, 63, 63), 1.0).
literal(number_utils_1_literal16, number_literal, number_utils_1_expr27, operand, range(number_utils_1, 2978, 4, 65, 65), 1.0).
literal(number_utils_1_literal17, number_literal, number_utils_1_expr28, (arguments, 0), range(number_utils_1, 3087, 4, 67, 67), 0.0).
literal(number_utils_1_literal18, number_literal, number_utils_1_expr29, (arguments, 0), range(number_utils_1, 3194, 4, 69, 69), 1.0).
literal(number_utils_1_literal19, number_literal, number_utils_1_expr31, operand, range(number_utils_1, 3314, 4, 71, 71), 1.0).

%%% Other Code Entities
%duration_utils_1 - org.apache.commons.lang3.time.DurationUtils
code(duration_utils_1_code1, compilation_unit, range(duration_utils_1, 0, 5644, 1, -1)).
code(duration_utils_1_code2, type_declaration, duration_utils_1_code1, (types, 0), range(duration_utils_1, 1170, 4473, 30, 156)).
code(duration_utils_1_code3, field_declaration, duration_utils_1_code2, (body_declarations, 0), range(duration_utils_1, 1267, 195, 37, 41)).
code(duration_utils_1_code4, modifier, duration_utils_1_code3, (modifiers, 0), range(duration_utils_1, 1327, 6, 40, 40)).
code(duration_utils_1_code5, modifier, duration_utils_1_code3, (modifiers, 1), range(duration_utils_1, 1334, 5, 40, 40)).
code(duration_utils_1_code6, parameterized_type, duration_utils_1_code3, type, range(duration_utils_1, 1340, 11, 40, 40)).
code(duration_utils_1_code7, simple_type, duration_utils_1_code6, type, range(duration_utils_1, 1340, 5, 40, 40)).
code(duration_utils_1_code8, simple_type, duration_utils_1_code6, (type_arguments, 0), range(duration_utils_1, 1346, 4, 40, 40)).
code(duration_utils_1_code9, variable_declaration_fragment, duration_utils_1_code3, (fragments, 0), range(duration_utils_1, 1352, 109, 40, 41)).
code(duration_utils_1_code10, method_declaration, duration_utils_1_code2, (body_declarations, 2), range(duration_utils_1, 2115, 648, 59, 74)).
%range_1 - org.apache.commons.lang3.Range
code(range_1_code1, compilation_unit, range(range_1, 0, 18290, 1, -1)).
code(range_1_code2, type_declaration, range_1_code1, (types, 0), range(range_1, 897, 17392, 22, 512)).
code(range_1_code3, enum_declaration, range_1_code2, (body_declarations, 0), range(range_1, 1305, 532, 35, 50)).
code(range_1_code4, enum_constant_declaration, range_1_code3, (enum_constants, 0), range(range_1, 1420, 8, 37, 37)).
code(range_1_code5, method_declaration, range_1_code3, (body_declarations, 0), range(range_1, 1439, 392, 39, 49)).
code(range_1_code6, simple_type, range_1_expr5, type, range(range_1, 1787, 10, 48, 48)).
code(range_1_code7, method_declaration, range_1_code2, (body_declarations, 2), range(range_1, 1983, 1001, 59, 77)).
code(range_1_code8, method_declaration, range_1_code2, (body_declarations, 3), range(range_1, 2990, 1115, 79, 98)).
code(range_1_code9, parameterized_type, range_1_expr7, type, range(range_1, 4051, 7, 97, 97)).
code(range_1_code10, simple_type, range_1_code9, type, range(range_1, 4051, 5, 97, 97)).
code(range_1_code11, method_declaration, range_1_code2, (body_declarations, 11), range(range_1, 6154, 983, 160, 185)).
code(range_1_code12, modifier, range_1_code11, (modifiers, 1), range(range_1, 6418, 7, 168, 168)).
code(range_1_code14, modifier, range_1_code13, (modifiers, 0), range(range_1, 6432, 5, 168, 168)).
code(range_1_code13, single_variable_declaration, range_1_code11, (parameters, 0), range(range_1, 6432, 16, 168, 168)).
code(range_1_code15, simple_type, range_1_code13, type, range(range_1, 6438, 1, 168, 168)).
code(range_1_code17, modifier, range_1_code16, (modifiers, 0), range(range_1, 6450, 5, 168, 168)).
code(range_1_code16, single_variable_declaration, range_1_code11, (parameters, 1), range(range_1, 6450, 16, 168, 168)).
code(range_1_code18, simple_type, range_1_code16, type, range(range_1, 6456, 1, 168, 168)).
code(range_1_code20, modifier, range_1_code19, (modifiers, 0), range(range_1, 6468, 5, 168, 168)).
code(range_1_code19, single_variable_declaration, range_1_code11, (parameters, 2), range(range_1, 6468, 24, 168, 168)).
code(range_1_code21, parameterized_type, range_1_code19, type, range(range_1, 6474, 13, 168, 168)).
code(range_1_code22, simple_type, range_1_code21, type, range(range_1, 6474, 10, 168, 168)).
code(range_1_code23, simple_type, range_1_code21, (type_arguments, 0), range(range_1, 6485, 1, 168, 168)).
%duration_utils_test_1 - org.apache.commons.lang3.time.DurationUtilsTest
code(duration_utils_test_1_code1, compilation_unit, range(duration_utils_test_1, 0, 5878, 1, -1)).
code(duration_utils_test_1_code2, type_declaration, duration_utils_test_1_code1, (types, 0), range(duration_utils_test_1, 1177, 4700, 30, 109)).
code(duration_utils_test_1_code3, modifier, duration_utils_test_1_code2, (modifiers, 0), range(duration_utils_test_1, 1217, 6, 33, 33)).
code(duration_utils_test_1_code4, method_declaration, duration_utils_test_1_code2, (body_declarations, 0), range(duration_utils_test_1, 1255, 852, 35, 47)).
%number_utils_1 - org.apache.commons.lang3.math.NumberUtils
code(number_utils_1_code1, compilation_unit, range(number_utils_1, 0, 65261, 1, -1)).
code(number_utils_1_code2, type_declaration, number_utils_1_code1, (types, 0), range(number_utils_1, 1053, 64207, 27, 1853)).
code(number_utils_1_code3, field_declaration, number_utils_1_code2, (body_declarations, 0), range(number_utils_1, 1174, 98, 34, 35)).
code(number_utils_1_code4, modifier, number_utils_1_code3, (modifiers, 0), range(number_utils_1, 1218, 6, 35, 35)).
code(number_utils_1_code5, modifier, number_utils_1_code3, (modifiers, 1), range(number_utils_1, 1225, 6, 35, 35)).
code(number_utils_1_code6, modifier, number_utils_1_code3, (modifiers, 2), range(number_utils_1, 1232, 5, 35, 35)).
code(number_utils_1_code7, simple_type, number_utils_1_code3, type, range(number_utils_1, 1238, 4, 35, 35)).
code(number_utils_1_code8, variable_declaration_fragment, number_utils_1_code3, (fragments, 0), range(number_utils_1, 1243, 28, 35, 35)).
code(number_utils_1_code9, field_declaration, number_utils_1_code2, (body_declarations, 1), range(number_utils_1, 1277, 96, 36, 37)).
code(number_utils_1_code10, modifier, number_utils_1_code9, (modifiers, 0), range(number_utils_1, 1320, 6, 37, 37)).
code(number_utils_1_code11, modifier, number_utils_1_code9, (modifiers, 1), range(number_utils_1, 1327, 6, 37, 37)).
code(number_utils_1_code12, modifier, number_utils_1_code9, (modifiers, 2), range(number_utils_1, 1334, 5, 37, 37)).
code(number_utils_1_code13, simple_type, number_utils_1_code9, type, range(number_utils_1, 1340, 4, 37, 37)).
code(number_utils_1_code14, variable_declaration_fragment, number_utils_1_code9, (fragments, 0), range(number_utils_1, 1345, 27, 37, 37)).
code(number_utils_1_code15, field_declaration, number_utils_1_code2, (body_declarations, 2), range(number_utils_1, 1378, 109, 38, 39)).
code(number_utils_1_code16, modifier, number_utils_1_code15, (modifiers, 0), range(number_utils_1, 1427, 6, 39, 39)).
code(number_utils_1_code17, modifier, number_utils_1_code15, (modifiers, 1), range(number_utils_1, 1434, 6, 39, 39)).
code(number_utils_1_code18, modifier, number_utils_1_code15, (modifiers, 2), range(number_utils_1, 1441, 5, 39, 39)).
code(number_utils_1_code19, simple_type, number_utils_1_code15, type, range(number_utils_1, 1447, 4, 39, 39)).
code(number_utils_1_code20, variable_declaration_fragment, number_utils_1_code15, (fragments, 0), range(number_utils_1, 1452, 34, 39, 39)).
code(number_utils_1_code21, field_declaration, number_utils_1_code2, (body_declarations, 3), range(number_utils_1, 1492, 109, 40, 41)).
code(number_utils_1_code22, modifier, number_utils_1_code21, (modifiers, 0), range(number_utils_1, 1539, 6, 41, 41)).
code(number_utils_1_code23, modifier, number_utils_1_code21, (modifiers, 1), range(number_utils_1, 1546, 6, 41, 41)).
code(number_utils_1_code24, modifier, number_utils_1_code21, (modifiers, 2), range(number_utils_1, 1553, 5, 41, 41)).
code(number_utils_1_code25, simple_type, number_utils_1_code21, type, range(number_utils_1, 1559, 7, 41, 41)).
code(number_utils_1_code26, variable_declaration_fragment, number_utils_1_code21, (fragments, 0), range(number_utils_1, 1567, 33, 41, 41)).
code(number_utils_1_code27, field_declaration, number_utils_1_code2, (body_declarations, 4), range(number_utils_1, 1606, 107, 42, 43)).
code(number_utils_1_code28, modifier, number_utils_1_code27, (modifiers, 0), range(number_utils_1, 1652, 6, 43, 43)).
code(number_utils_1_code29, modifier, number_utils_1_code27, (modifiers, 1), range(number_utils_1, 1659, 6, 43, 43)).
code(number_utils_1_code30, modifier, number_utils_1_code27, (modifiers, 2), range(number_utils_1, 1666, 5, 43, 43)).
code(number_utils_1_code31, simple_type, number_utils_1_code27, type, range(number_utils_1, 1672, 7, 43, 43)).
code(number_utils_1_code32, variable_declaration_fragment, number_utils_1_code27, (fragments, 0), range(number_utils_1, 1680, 32, 43, 43)).
code(number_utils_1_code33, field_declaration, number_utils_1_code2, (body_declarations, 5), range(number_utils_1, 1718, 106, 44, 45)).
code(number_utils_1_code34, modifier, number_utils_1_code33, (modifiers, 0), range(number_utils_1, 1763, 6, 45, 45)).
code(number_utils_1_code35, modifier, number_utils_1_code33, (modifiers, 1), range(number_utils_1, 1770, 6, 45, 45)).
code(number_utils_1_code36, modifier, number_utils_1_code33, (modifiers, 2), range(number_utils_1, 1777, 5, 45, 45)).
code(number_utils_1_code37, simple_type, number_utils_1_code33, type, range(number_utils_1, 1783, 7, 45, 45)).
code(number_utils_1_code38, variable_declaration_fragment, number_utils_1_code33, (fragments, 0), range(number_utils_1, 1791, 32, 45, 45)).
code(number_utils_1_code39, field_declaration, number_utils_1_code2, (body_declarations, 6), range(number_utils_1, 1829, 120, 46, 47)).
code(number_utils_1_code40, modifier, number_utils_1_code39, (modifiers, 0), range(number_utils_1, 1881, 6, 47, 47)).
code(number_utils_1_code41, modifier, number_utils_1_code39, (modifiers, 1), range(number_utils_1, 1888, 6, 47, 47)).
code(number_utils_1_code42, modifier, number_utils_1_code39, (modifiers, 2), range(number_utils_1, 1895, 5, 47, 47)).
code(number_utils_1_code43, simple_type, number_utils_1_code39, type, range(number_utils_1, 1901, 7, 47, 47)).
code(number_utils_1_code44, variable_declaration_fragment, number_utils_1_code39, (fragments, 0), range(number_utils_1, 1909, 39, 47, 47)).
code(number_utils_1_code45, field_declaration, number_utils_1_code2, (body_declarations, 7), range(number_utils_1, 1954, 109, 48, 49)).
code(number_utils_1_code46, modifier, number_utils_1_code45, (modifiers, 0), range(number_utils_1, 1999, 6, 49, 49)).
code(number_utils_1_code47, modifier, number_utils_1_code45, (modifiers, 1), range(number_utils_1, 2006, 6, 49, 49)).
code(number_utils_1_code48, modifier, number_utils_1_code45, (modifiers, 2), range(number_utils_1, 2013, 5, 49, 49)).
code(number_utils_1_code49, simple_type, number_utils_1_code45, type, range(number_utils_1, 2019, 5, 49, 49)).
code(number_utils_1_code50, variable_declaration_fragment, number_utils_1_code45, (fragments, 0), range(number_utils_1, 2025, 37, 49, 49)).
code(number_utils_1_code51, primitive_type, number_utils_1_expr11, type, range(number_utils_1, 2053, 5, 49, 49)).
code(number_utils_1_code52, field_declaration, number_utils_1_code2, (body_declarations, 8), range(number_utils_1, 2068, 107, 50, 51)).
code(number_utils_1_code53, modifier, number_utils_1_code52, (modifiers, 0), range(number_utils_1, 2112, 6, 51, 51)).
code(number_utils_1_code54, modifier, number_utils_1_code52, (modifiers, 1), range(number_utils_1, 2119, 6, 51, 51)).
code(number_utils_1_code55, modifier, number_utils_1_code52, (modifiers, 2), range(number_utils_1, 2126, 5, 51, 51)).
code(number_utils_1_code56, simple_type, number_utils_1_code52, type, range(number_utils_1, 2132, 5, 51, 51)).
code(number_utils_1_code57, variable_declaration_fragment, number_utils_1_code52, (fragments, 0), range(number_utils_1, 2138, 36, 51, 51)).
code(number_utils_1_code58, primitive_type, number_utils_1_expr13, type, range(number_utils_1, 2165, 5, 51, 51)).
code(number_utils_1_code59, field_declaration, number_utils_1_code2, (body_declarations, 9), range(number_utils_1, 2180, 120, 52, 53)).
code(number_utils_1_code60, modifier, number_utils_1_code59, (modifiers, 0), range(number_utils_1, 2230, 6, 53, 53)).
code(number_utils_1_code61, modifier, number_utils_1_code59, (modifiers, 1), range(number_utils_1, 2237, 6, 53, 53)).
code(number_utils_1_code62, modifier, number_utils_1_code59, (modifiers, 2), range(number_utils_1, 2244, 5, 53, 53)).
code(number_utils_1_code63, simple_type, number_utils_1_code59, type, range(number_utils_1, 2250, 5, 53, 53)).
code(number_utils_1_code64, variable_declaration_fragment, number_utils_1_code59, (fragments, 0), range(number_utils_1, 2256, 43, 53, 53)).
code(number_utils_1_code65, primitive_type, number_utils_1_expr15, type, range(number_utils_1, 2289, 5, 53, 53)).
code(number_utils_1_code66, field_declaration, number_utils_1_code2, (body_declarations, 10), range(number_utils_1, 2305, 104, 54, 55)).
code(number_utils_1_code67, modifier, number_utils_1_code66, (modifiers, 0), range(number_utils_1, 2349, 6, 55, 55)).
code(number_utils_1_code68, modifier, number_utils_1_code66, (modifiers, 1), range(number_utils_1, 2356, 6, 55, 55)).
code(number_utils_1_code69, modifier, number_utils_1_code66, (modifiers, 2), range(number_utils_1, 2363, 5, 55, 55)).
code(number_utils_1_code70, simple_type, number_utils_1_code66, type, range(number_utils_1, 2369, 4, 55, 55)).
code(number_utils_1_code71, variable_declaration_fragment, number_utils_1_code66, (fragments, 0), range(number_utils_1, 2374, 34, 55, 55)).
code(number_utils_1_code72, primitive_type, number_utils_1_expr18, type, range(number_utils_1, 2400, 4, 55, 55)).
code(number_utils_1_code73, field_declaration, number_utils_1_code2, (body_declarations, 11), range(number_utils_1, 2414, 102, 56, 57)).
code(number_utils_1_code74, modifier, number_utils_1_code73, (modifiers, 0), range(number_utils_1, 2457, 6, 57, 57)).
code(number_utils_1_code75, modifier, number_utils_1_code73, (modifiers, 1), range(number_utils_1, 2464, 6, 57, 57)).
code(number_utils_1_code76, modifier, number_utils_1_code73, (modifiers, 2), range(number_utils_1, 2471, 5, 57, 57)).
code(number_utils_1_code77, simple_type, number_utils_1_code73, type, range(number_utils_1, 2477, 4, 57, 57)).
code(number_utils_1_code78, variable_declaration_fragment, number_utils_1_code73, (fragments, 0), range(number_utils_1, 2482, 33, 57, 57)).
code(number_utils_1_code79, primitive_type, number_utils_1_expr20, type, range(number_utils_1, 2507, 4, 57, 57)).
code(number_utils_1_code80, field_declaration, number_utils_1_code2, (body_declarations, 12), range(number_utils_1, 2521, 115, 58, 59)).
code(number_utils_1_code81, modifier, number_utils_1_code80, (modifiers, 0), range(number_utils_1, 2570, 6, 59, 59)).
code(number_utils_1_code82, modifier, number_utils_1_code80, (modifiers, 1), range(number_utils_1, 2577, 6, 59, 59)).
code(number_utils_1_code83, modifier, number_utils_1_code80, (modifiers, 2), range(number_utils_1, 2584, 5, 59, 59)).
code(number_utils_1_code84, simple_type, number_utils_1_code80, type, range(number_utils_1, 2590, 4, 59, 59)).
code(number_utils_1_code85, variable_declaration_fragment, number_utils_1_code80, (fragments, 0), range(number_utils_1, 2595, 40, 59, 59)).
code(number_utils_1_code86, primitive_type, number_utils_1_expr22, type, range(number_utils_1, 2626, 4, 59, 59)).
code(number_utils_1_code87, field_declaration, number_utils_1_code2, (body_declarations, 13), range(number_utils_1, 2641, 108, 60, 61)).
code(number_utils_1_code88, modifier, number_utils_1_code87, (modifiers, 0), range(number_utils_1, 2687, 6, 61, 61)).
code(number_utils_1_code89, modifier, number_utils_1_code87, (modifiers, 1), range(number_utils_1, 2694, 6, 61, 61)).
code(number_utils_1_code90, modifier, number_utils_1_code87, (modifiers, 2), range(number_utils_1, 2701, 5, 61, 61)).
code(number_utils_1_code91, simple_type, number_utils_1_code87, type, range(number_utils_1, 2707, 6, 61, 61)).
code(number_utils_1_code92, variable_declaration_fragment, number_utils_1_code87, (fragments, 0), range(number_utils_1, 2714, 34, 61, 61)).
code(number_utils_1_code93, field_declaration, number_utils_1_code2, (body_declarations, 14), range(number_utils_1, 2754, 106, 62, 63)).
code(number_utils_1_code94, modifier, number_utils_1_code93, (modifiers, 0), range(number_utils_1, 2799, 6, 63, 63)).
code(number_utils_1_code95, modifier, number_utils_1_code93, (modifiers, 1), range(number_utils_1, 2806, 6, 63, 63)).
code(number_utils_1_code96, modifier, number_utils_1_code93, (modifiers, 2), range(number_utils_1, 2813, 5, 63, 63)).
code(number_utils_1_code97, simple_type, number_utils_1_code93, type, range(number_utils_1, 2819, 6, 63, 63)).
code(number_utils_1_code98, variable_declaration_fragment, number_utils_1_code93, (fragments, 0), range(number_utils_1, 2826, 33, 63, 63)).
code(number_utils_1_code99, field_declaration, number_utils_1_code2, (body_declarations, 15), range(number_utils_1, 2865, 119, 64, 65)).
code(number_utils_1_code100, modifier, number_utils_1_code99, (modifiers, 0), range(number_utils_1, 2916, 6, 65, 65)).
code(number_utils_1_code101, modifier, number_utils_1_code99, (modifiers, 1), range(number_utils_1, 2923, 6, 65, 65)).
code(number_utils_1_code102, modifier, number_utils_1_code99, (modifiers, 2), range(number_utils_1, 2930, 5, 65, 65)).
code(number_utils_1_code103, simple_type, number_utils_1_code99, type, range(number_utils_1, 2936, 6, 65, 65)).
code(number_utils_1_code104, variable_declaration_fragment, number_utils_1_code99, (fragments, 0), range(number_utils_1, 2943, 40, 65, 65)).
code(number_utils_1_code105, field_declaration, number_utils_1_code2, (body_declarations, 16), range(number_utils_1, 2989, 104, 66, 67)).
code(number_utils_1_code106, modifier, number_utils_1_code105, (modifiers, 0), range(number_utils_1, 3034, 6, 67, 67)).
code(number_utils_1_code107, modifier, number_utils_1_code105, (modifiers, 1), range(number_utils_1, 3041, 6, 67, 67)).
code(number_utils_1_code108, modifier, number_utils_1_code105, (modifiers, 2), range(number_utils_1, 3048, 5, 67, 67)).
code(number_utils_1_code109, simple_type, number_utils_1_code105, type, range(number_utils_1, 3054, 5, 67, 67)).
code(number_utils_1_code110, variable_declaration_fragment, number_utils_1_code105, (fragments, 0), range(number_utils_1, 3060, 32, 67, 67)).
code(number_utils_1_code111, field_declaration, number_utils_1_code2, (body_declarations, 17), range(number_utils_1, 3098, 102, 68, 69)).
code(number_utils_1_code112, modifier, number_utils_1_code111, (modifiers, 0), range(number_utils_1, 3142, 6, 69, 69)).
code(number_utils_1_code113, modifier, number_utils_1_code111, (modifiers, 1), range(number_utils_1, 3149, 6, 69, 69)).
code(number_utils_1_code114, modifier, number_utils_1_code111, (modifiers, 2), range(number_utils_1, 3156, 5, 69, 69)).
code(number_utils_1_code115, simple_type, number_utils_1_code111, type, range(number_utils_1, 3162, 5, 69, 69)).
code(number_utils_1_code116, variable_declaration_fragment, number_utils_1_code111, (fragments, 0), range(number_utils_1, 3168, 31, 69, 69)).
code(number_utils_1_code117, field_declaration, number_utils_1_code2, (body_declarations, 18), range(number_utils_1, 3205, 115, 70, 71)).
code(number_utils_1_code118, modifier, number_utils_1_code117, (modifiers, 0), range(number_utils_1, 3255, 6, 71, 71)).
code(number_utils_1_code119, modifier, number_utils_1_code117, (modifiers, 1), range(number_utils_1, 3262, 6, 71, 71)).
code(number_utils_1_code120, modifier, number_utils_1_code117, (modifiers, 2), range(number_utils_1, 3269, 5, 71, 71)).
code(number_utils_1_code121, simple_type, number_utils_1_code117, type, range(number_utils_1, 3275, 5, 71, 71)).
code(number_utils_1_code122, variable_declaration_fragment, number_utils_1_code117, (fragments, 0), range(number_utils_1, 3281, 38, 71, 71)).
code(number_utils_1_code123, field_declaration, number_utils_1_code2, (body_declarations, 19), range(number_utils_1, 3326, 174, 73, 78)).
code(number_utils_1_code124, modifier, number_utils_1_code123, (modifiers, 0), range(number_utils_1, 3422, 6, 78, 78)).
code(number_utils_1_code125, modifier, number_utils_1_code123, (modifiers, 1), range(number_utils_1, 3429, 6, 78, 78)).
code(number_utils_1_code126, modifier, number_utils_1_code123, (modifiers, 2), range(number_utils_1, 3436, 5, 78, 78)).
code(number_utils_1_code127, simple_type, number_utils_1_code123, type, range(number_utils_1, 3442, 4, 78, 78)).
code(number_utils_1_code128, variable_declaration_fragment, number_utils_1_code123, (fragments, 0), range(number_utils_1, 3447, 52, 78, 78)).
code(number_utils_1_code129, field_declaration, number_utils_1_code2, (body_declarations, 20), range(number_utils_1, 3506, 174, 80, 85)).
code(number_utils_1_code130, modifier, number_utils_1_code129, (modifiers, 0), range(number_utils_1, 3602, 6, 85, 85)).
code(number_utils_1_code131, modifier, number_utils_1_code129, (modifiers, 1), range(number_utils_1, 3609, 6, 85, 85)).
code(number_utils_1_code132, modifier, number_utils_1_code129, (modifiers, 2), range(number_utils_1, 3616, 5, 85, 85)).
code(number_utils_1_code133, simple_type, number_utils_1_code129, type, range(number_utils_1, 3622, 4, 85, 85)).
code(number_utils_1_code134, variable_declaration_fragment, number_utils_1_code129, (fragments, 0), range(number_utils_1, 3627, 52, 85, 85)).

%%% Name References

name_ref(t_byte_6, type, 'Byte', 'Ljava/lang/Byte;').
name_ref(t_comparable_comparator_2, type, 'ComparableComparator', 'Lorg/apache/commons/lang3/Range$ComparableComparator;').
name_ref(t_double_7, type, 'Double', 'Ljava/lang/Double;').
name_ref(t_duration_utils_12, type, 'DurationUtils', 'Lorg/apache/commons/lang3/time/DurationUtils;').
name_ref(t_duration_utils_test_11, type, 'DurationUtilsTest', 'Lorg/apache/commons/lang3/time/DurationUtilsTest;').
name_ref(t_float_8, type, 'Float', 'Ljava/lang/Float;').
name_ref(t_integer_4, type, 'Integer', 'Ljava/lang/Integer;').
name_ref(t_long_3, type, 'Long', 'Ljava/lang/Long;').
name_ref(t_number_utils_10, type, 'NumberUtils', 'Lorg/apache/commons/lang3/math/NumberUtils;').
name_ref(t_range_9, type, 'Range', 'Lorg/apache/commons/lang3/Range<>;').
name_ref(t_short_5, type, 'Short', 'Ljava/lang/Short;').
name_ref(t_suppress_warnings_1, type, 'SuppressWarnings', 'Ljava/lang/SuppressWarnings;').
name_ref(p_a_115, param, 'a', 'Lorg/apache/commons/lang3/math/NumberUtils;.min(JJJ)J#a#0#0').
name_ref(p_a_118, param, 'a', 'Lorg/apache/commons/lang3/math/NumberUtils;.min(III)I#a#0#0').
name_ref(p_a_121, param, 'a', 'Lorg/apache/commons/lang3/math/NumberUtils;.min(SSS)S#a#0#0').
name_ref(p_a_124, param, 'a', 'Lorg/apache/commons/lang3/math/NumberUtils;.min(BBB)B#a#0#0').
name_ref(p_a_127, param, 'a', 'Lorg/apache/commons/lang3/math/NumberUtils;.min(DDD)D#a#0#0').
name_ref(p_a_130, param, 'a', 'Lorg/apache/commons/lang3/math/NumberUtils;.min(FFF)F#a#0#0').
name_ref(p_a_133, param, 'a', 'Lorg/apache/commons/lang3/math/NumberUtils;.max(JJJ)J#a#0#0').
name_ref(p_a_136, param, 'a', 'Lorg/apache/commons/lang3/math/NumberUtils;.max(III)I#a#0#0').
name_ref(p_a_139, param, 'a', 'Lorg/apache/commons/lang3/math/NumberUtils;.max(SSS)S#a#0#0').
name_ref(p_a_142, param, 'a', 'Lorg/apache/commons/lang3/math/NumberUtils;.max(BBB)B#a#0#0').
name_ref(p_a_145, param, 'a', 'Lorg/apache/commons/lang3/math/NumberUtils;.max(DDD)D#a#0#0').
name_ref(p_a_148, param, 'a', 'Lorg/apache/commons/lang3/math/NumberUtils;.max(FFF)F#a#0#0').
name_ref(p_amount_171, param, 'amount', 'Lorg/apache/commons/lang3/time/DurationUtils;.toDuration(JLjava/util/concurrent/TimeUnit;)Ljava/time/Duration;#amount#0#0').
name_ref(p_array_102, param, 'array', 'Lorg/apache/commons/lang3/math/NumberUtils;.min([J)J#array#0#0').
name_ref(p_array_103, param, 'array', 'Lorg/apache/commons/lang3/math/NumberUtils;.min([I)I#array#0#0').
name_ref(p_array_104, param, 'array', 'Lorg/apache/commons/lang3/math/NumberUtils;.min([S)S#array#0#0').
name_ref(p_array_105, param, 'array', 'Lorg/apache/commons/lang3/math/NumberUtils;.min([B)B#array#0#0').
name_ref(p_array_106, param, 'array', 'Lorg/apache/commons/lang3/math/NumberUtils;.min([D)D#array#0#0').
name_ref(p_array_107, param, 'array', 'Lorg/apache/commons/lang3/math/NumberUtils;.min([F)F#array#0#0').
name_ref(p_array_108, param, 'array', 'Lorg/apache/commons/lang3/math/NumberUtils;.max([J)J#array#0#0').
name_ref(p_array_109, param, 'array', 'Lorg/apache/commons/lang3/math/NumberUtils;.max([I)I#array#0#0').
name_ref(p_array_110, param, 'array', 'Lorg/apache/commons/lang3/math/NumberUtils;.max([S)S#array#0#0').
name_ref(p_array_111, param, 'array', 'Lorg/apache/commons/lang3/math/NumberUtils;.max([B)B#array#0#0').
name_ref(p_array_112, param, 'array', 'Lorg/apache/commons/lang3/math/NumberUtils;.max([D)D#array#0#0').
name_ref(p_array_113, param, 'array', 'Lorg/apache/commons/lang3/math/NumberUtils;.max([F)F#array#0#0').
name_ref(p_array_114, param, 'array', 'Lorg/apache/commons/lang3/math/NumberUtils;.validateArray(Ljava/lang/Object;)V#array#0#0').
name_ref(p_b_116, param, 'b', 'Lorg/apache/commons/lang3/math/NumberUtils;.min(JJJ)J#b#0#1').
name_ref(p_b_119, param, 'b', 'Lorg/apache/commons/lang3/math/NumberUtils;.min(III)I#b#0#1').
name_ref(p_b_122, param, 'b', 'Lorg/apache/commons/lang3/math/NumberUtils;.min(SSS)S#b#0#1').
name_ref(p_b_125, param, 'b', 'Lorg/apache/commons/lang3/math/NumberUtils;.min(BBB)B#b#0#1').
name_ref(p_b_128, param, 'b', 'Lorg/apache/commons/lang3/math/NumberUtils;.min(DDD)D#b#0#1').
name_ref(p_b_131, param, 'b', 'Lorg/apache/commons/lang3/math/NumberUtils;.min(FFF)F#b#0#1').
name_ref(p_b_134, param, 'b', 'Lorg/apache/commons/lang3/math/NumberUtils;.max(JJJ)J#b#0#1').
name_ref(p_b_137, param, 'b', 'Lorg/apache/commons/lang3/math/NumberUtils;.max(III)I#b#0#1').
name_ref(p_b_140, param, 'b', 'Lorg/apache/commons/lang3/math/NumberUtils;.max(SSS)S#b#0#1').
name_ref(p_b_143, param, 'b', 'Lorg/apache/commons/lang3/math/NumberUtils;.max(BBB)B#b#0#1').
name_ref(p_b_146, param, 'b', 'Lorg/apache/commons/lang3/math/NumberUtils;.max(DDD)D#b#0#1').
name_ref(p_b_149, param, 'b', 'Lorg/apache/commons/lang3/math/NumberUtils;.max(FFF)F#b#0#1').
name_ref(p_begin_idx_156, param, 'beginIdx', 'Lorg/apache/commons/lang3/math/NumberUtils;.withDecimalsParsing(Ljava/lang/String;I)Z#beginIdx#0#1').
name_ref(p_c_117, param, 'c', 'Lorg/apache/commons/lang3/math/NumberUtils;.min(JJJ)J#c#0#2').
name_ref(p_c_120, param, 'c', 'Lorg/apache/commons/lang3/math/NumberUtils;.min(III)I#c#0#2').
name_ref(p_c_123, param, 'c', 'Lorg/apache/commons/lang3/math/NumberUtils;.min(SSS)S#c#0#2').
name_ref(p_c_126, param, 'c', 'Lorg/apache/commons/lang3/math/NumberUtils;.min(BBB)B#c#0#2').
name_ref(p_c_129, param, 'c', 'Lorg/apache/commons/lang3/math/NumberUtils;.min(DDD)D#c#0#2').
name_ref(p_c_132, param, 'c', 'Lorg/apache/commons/lang3/math/NumberUtils;.min(FFF)F#c#0#2').
name_ref(p_c_135, param, 'c', 'Lorg/apache/commons/lang3/math/NumberUtils;.max(JJJ)J#c#0#2').
name_ref(p_c_138, param, 'c', 'Lorg/apache/commons/lang3/math/NumberUtils;.max(III)I#c#0#2').
name_ref(p_c_141, param, 'c', 'Lorg/apache/commons/lang3/math/NumberUtils;.max(SSS)S#c#0#2').
name_ref(p_c_144, param, 'c', 'Lorg/apache/commons/lang3/math/NumberUtils;.max(BBB)B#c#0#2').
name_ref(p_c_147, param, 'c', 'Lorg/apache/commons/lang3/math/NumberUtils;.max(DDD)D#c#0#2').
name_ref(p_c_150, param, 'c', 'Lorg/apache/commons/lang3/math/NumberUtils;.max(FFF)F#c#0#2').
name_ref(p_comp_14, param, 'comp', 'Lorg/apache/commons/lang3/Range;.(TT;TT;Ljava/util/Comparator<TT;>;)V#comp#0#2').
name_ref(p_comparator_11, param, 'comparator', 'Lorg/apache/commons/lang3/Range;.is<T:Ljava/lang/Object;>(TT;Ljava/util/Comparator<TT;>;)Lorg/apache/commons/lang3/Range<TT;>;#comparator#0#1').
name_ref(p_comparator_8, param, 'comparator', 'Lorg/apache/commons/lang3/Range;.between<T:Ljava/lang/Object;>(TT;TT;Ljava/util/Comparator<TT;>;)Lorg/apache/commons/lang3/Range<TT;>;#comparator#0#2').
name_ref(p_consumer_166, param, 'consumer', 'Lorg/apache/commons/lang3/time/DurationUtils;.accept<T:Ljava/lang/Throwable;>(Lorg/apache/commons/lang3/function/FailableBiConsumer<Ljava/lang/Long;Ljava/lang/Integer;TT;>;Ljava/time/Duration;)V^TT;#consumer#0#0').
name_ref(p_dec_94, param, 'dec', 'Lorg/apache/commons/lang3/math/NumberUtils;.isZero(Ljava/lang/String;Ljava/lang/String;)Z#dec#0#1').
name_ref(p_default_value_55, param, 'defaultValue', 'Lorg/apache/commons/lang3/math/NumberUtils;.toInt(Ljava/lang/String;I)I#defaultValue#0#1').
name_ref(p_default_value_58, param, 'defaultValue', 'Lorg/apache/commons/lang3/math/NumberUtils;.toLong(Ljava/lang/String;J)J#defaultValue#0#1').
name_ref(p_default_value_61, param, 'defaultValue', 'Lorg/apache/commons/lang3/math/NumberUtils;.toFloat(Ljava/lang/String;F)F#defaultValue#0#1').
name_ref(p_default_value_64, param, 'defaultValue', 'Lorg/apache/commons/lang3/math/NumberUtils;.toDouble(Ljava/lang/String;D)D#defaultValue#0#1').
name_ref(p_default_value_67, param, 'defaultValue', 'Lorg/apache/commons/lang3/math/NumberUtils;.toDouble(Ljava/math/BigDecimal;D)D#defaultValue#0#1').
name_ref(p_default_value_70, param, 'defaultValue', 'Lorg/apache/commons/lang3/math/NumberUtils;.toByte(Ljava/lang/String;B)B#defaultValue#0#1').
name_ref(p_default_value_73, param, 'defaultValue', 'Lorg/apache/commons/lang3/math/NumberUtils;.toShort(Ljava/lang/String;S)S#defaultValue#0#1').
name_ref(p_duration_167, param, 'duration', 'Lorg/apache/commons/lang3/time/DurationUtils;.accept<T:Ljava/lang/Throwable;>(Lorg/apache/commons/lang3/function/FailableBiConsumer<Ljava/lang/Long;Ljava/lang/Integer;TT;>;Ljava/time/Duration;)V^TT;#duration#0#1').
name_ref(p_duration_168, param, 'duration', 'Lorg/apache/commons/lang3/time/DurationUtils;.getNanosOfMiili(Ljava/time/Duration;)I#duration#0#0').
name_ref(p_duration_169, param, 'duration', 'Lorg/apache/commons/lang3/time/DurationUtils;.isPositive(Ljava/time/Duration;)Z#duration#0#0').
name_ref(p_duration_173, param, 'duration', 'Lorg/apache/commons/lang3/time/DurationUtils;.toMillisInt(Ljava/time/Duration;)I#duration#0#0').
name_ref(p_duration_174, param, 'duration', 'Lorg/apache/commons/lang3/time/DurationUtils;.zeroIfNull(Ljava/time/Duration;)Ljava/time/Duration;#duration#0#0').
name_ref(p_element_10, param, 'element', 'Lorg/apache/commons/lang3/Range;.is<T:Ljava/lang/Object;>(TT;Ljava/util/Comparator<TT;>;)Lorg/apache/commons/lang3/Range<TT;>;#element#0#0').
name_ref(p_element_18, param, 'element', 'Lorg/apache/commons/lang3/Range;.contains(TT;)Z#element#0#0').
name_ref(p_element_1_12, param, 'element1', 'Lorg/apache/commons/lang3/Range;.(TT;TT;Ljava/util/Comparator<TT;>;)V#element1#0#0').
name_ref(p_element_20, param, 'element', 'Lorg/apache/commons/lang3/Range;.elementCompareTo(TT;)I#element#0#0').
name_ref(p_element_22, param, 'element', 'Lorg/apache/commons/lang3/Range;.fit(TT;)TT;#element#0#0').
name_ref(p_element_24, param, 'element', 'Lorg/apache/commons/lang3/Range;.isAfter(TT;)Z#element#0#0').
name_ref(p_element_26, param, 'element', 'Lorg/apache/commons/lang3/Range;.isBefore(TT;)Z#element#0#0').
name_ref(p_element_28, param, 'element', 'Lorg/apache/commons/lang3/Range;.isEndedBy(TT;)Z#element#0#0').
name_ref(p_element_2_13, param, 'element2', 'Lorg/apache/commons/lang3/Range;.(TT;TT;Ljava/util/Comparator<TT;>;)V#element2#0#1').
name_ref(p_element_30, param, 'element', 'Lorg/apache/commons/lang3/Range;.isStartedBy(TT;)Z#element#0#0').
name_ref(p_element_9, param, 'element', 'Lorg/apache/commons/lang3/Range;.is<T::Ljava/lang/Comparable<-TT;>;>(TT;)Lorg/apache/commons/lang3/Range<TT;>;#element#0#0').
name_ref(p_format_31, param, 'format', 'Lorg/apache/commons/lang3/Range;.toString(Ljava/lang/String;)Ljava/lang/String;#format#0#0').
name_ref(p_from_inclusive_4, param, 'fromInclusive', 'Lorg/apache/commons/lang3/Range;.between<T::Ljava/lang/Comparable<-TT;>;>(TT;TT;)Lorg/apache/commons/lang3/Range<TT;>;#fromInclusive#0#0').
name_ref(p_from_inclusive_6, param, 'fromInclusive', 'Lorg/apache/commons/lang3/Range;.between<T:Ljava/lang/Object;>(TT;TT;Ljava/util/Comparator<TT;>;)Lorg/apache/commons/lang3/Range<TT;>;#fromInclusive#0#0').
name_ref(p_mant_93, param, 'mant', 'Lorg/apache/commons/lang3/math/NumberUtils;.isZero(Ljava/lang/String;Ljava/lang/String;)Z#mant#0#0').
name_ref(p_obj_1_2, param, 'obj1', 'Lorg/apache/commons/lang3/Range$ComparableComparator;.compare(Ljava/lang/Object;Ljava/lang/Object;)I#obj1#0#0').
name_ref(p_obj_21, param, 'obj', 'Lorg/apache/commons/lang3/Range;.equals(Ljava/lang/Object;)Z#obj#0#0').
name_ref(p_obj_2_3, param, 'obj2', 'Lorg/apache/commons/lang3/Range$ComparableComparator;.compare(Ljava/lang/Object;Ljava/lang/Object;)I#obj2#0#1').
name_ref(p_other_23, param, 'other', 'Lorg/apache/commons/lang3/Range;.intersectionWith(Lorg/apache/commons/lang3/Range<TT;>;)Lorg/apache/commons/lang3/Range<TT;>;#other#0#0').
name_ref(p_other_range_19, param, 'otherRange', 'Lorg/apache/commons/lang3/Range;.containsRange(Lorg/apache/commons/lang3/Range<TT;>;)Z#otherRange#0#0').
name_ref(p_other_range_25, param, 'otherRange', 'Lorg/apache/commons/lang3/Range;.isAfterRange(Lorg/apache/commons/lang3/Range<TT;>;)Z#otherRange#0#0').
name_ref(p_other_range_27, param, 'otherRange', 'Lorg/apache/commons/lang3/Range;.isBeforeRange(Lorg/apache/commons/lang3/Range<TT;>;)Z#otherRange#0#0').
name_ref(p_other_range_29, param, 'otherRange', 'Lorg/apache/commons/lang3/Range;.isOverlappedBy(Lorg/apache/commons/lang3/Range<TT;>;)Z#otherRange#0#0').
name_ref(p_rounding_mode_77, param, 'roundingMode', 'Lorg/apache/commons/lang3/math/NumberUtils;.toScaledBigDecimal(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;#roundingMode#0#2').
name_ref(p_rounding_mode_81, param, 'roundingMode', 'Lorg/apache/commons/lang3/math/NumberUtils;.toScaledBigDecimal(Ljava/lang/Float;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;#roundingMode#0#2').
name_ref(p_rounding_mode_85, param, 'roundingMode', 'Lorg/apache/commons/lang3/math/NumberUtils;.toScaledBigDecimal(Ljava/lang/Double;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;#roundingMode#0#2').
name_ref(p_rounding_mode_89, param, 'roundingMode', 'Lorg/apache/commons/lang3/math/NumberUtils;.toScaledBigDecimal(Ljava/lang/String;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;#roundingMode#0#2').
name_ref(p_scale_76, param, 'scale', 'Lorg/apache/commons/lang3/math/NumberUtils;.toScaledBigDecimal(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;#scale#0#1').
name_ref(p_scale_80, param, 'scale', 'Lorg/apache/commons/lang3/math/NumberUtils;.toScaledBigDecimal(Ljava/lang/Float;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;#scale#0#1').
name_ref(p_scale_84, param, 'scale', 'Lorg/apache/commons/lang3/math/NumberUtils;.toScaledBigDecimal(Ljava/lang/Double;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;#scale#0#1').
name_ref(p_scale_88, param, 'scale', 'Lorg/apache/commons/lang3/math/NumberUtils;.toScaledBigDecimal(Ljava/lang/String;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;#scale#0#1').
name_ref(p_stop_pos_92, param, 'stopPos', 'Lorg/apache/commons/lang3/math/NumberUtils;.getMantissa(Ljava/lang/String;I)Ljava/lang/String;#stopPos#0#1').
name_ref(p_str_100, param, 'str', 'Lorg/apache/commons/lang3/math/NumberUtils;.createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;#str#0#0').
name_ref(p_str_101, param, 'str', 'Lorg/apache/commons/lang3/math/NumberUtils;.createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;#str#0#0').
name_ref(p_str_151, param, 'str', 'Lorg/apache/commons/lang3/math/NumberUtils;.isDigits(Ljava/lang/String;)Z#str#0#0').
name_ref(p_str_152, param, 'str', 'Lorg/apache/commons/lang3/math/NumberUtils;.isNumber(Ljava/lang/String;)Z#str#0#0').
name_ref(p_str_153, param, 'str', 'Lorg/apache/commons/lang3/math/NumberUtils;.isCreatable(Ljava/lang/String;)Z#str#0#0').
name_ref(p_str_154, param, 'str', 'Lorg/apache/commons/lang3/math/NumberUtils;.isParsable(Ljava/lang/String;)Z#str#0#0').
name_ref(p_str_155, param, 'str', 'Lorg/apache/commons/lang3/math/NumberUtils;.withDecimalsParsing(Ljava/lang/String;I)Z#str#0#0').
name_ref(p_str_53, param, 'str', 'Lorg/apache/commons/lang3/math/NumberUtils;.toInt(Ljava/lang/String;)I#str#0#0').
name_ref(p_str_54, param, 'str', 'Lorg/apache/commons/lang3/math/NumberUtils;.toInt(Ljava/lang/String;I)I#str#0#0').
name_ref(p_str_56, param, 'str', 'Lorg/apache/commons/lang3/math/NumberUtils;.toLong(Ljava/lang/String;)J#str#0#0').
name_ref(p_str_57, param, 'str', 'Lorg/apache/commons/lang3/math/NumberUtils;.toLong(Ljava/lang/String;J)J#str#0#0').
name_ref(p_str_59, param, 'str', 'Lorg/apache/commons/lang3/math/NumberUtils;.toFloat(Ljava/lang/String;)F#str#0#0').
name_ref(p_str_60, param, 'str', 'Lorg/apache/commons/lang3/math/NumberUtils;.toFloat(Ljava/lang/String;F)F#str#0#0').
name_ref(p_str_62, param, 'str', 'Lorg/apache/commons/lang3/math/NumberUtils;.toDouble(Ljava/lang/String;)D#str#0#0').
name_ref(p_str_63, param, 'str', 'Lorg/apache/commons/lang3/math/NumberUtils;.toDouble(Ljava/lang/String;D)D#str#0#0').
name_ref(p_str_68, param, 'str', 'Lorg/apache/commons/lang3/math/NumberUtils;.toByte(Ljava/lang/String;)B#str#0#0').
name_ref(p_str_69, param, 'str', 'Lorg/apache/commons/lang3/math/NumberUtils;.toByte(Ljava/lang/String;B)B#str#0#0').
name_ref(p_str_71, param, 'str', 'Lorg/apache/commons/lang3/math/NumberUtils;.toShort(Ljava/lang/String;)S#str#0#0').
name_ref(p_str_72, param, 'str', 'Lorg/apache/commons/lang3/math/NumberUtils;.toShort(Ljava/lang/String;S)S#str#0#0').
name_ref(p_str_90, param, 'str', 'Lorg/apache/commons/lang3/math/NumberUtils;.createNumber(Ljava/lang/String;)Ljava/lang/Number;#str#0#0').
name_ref(p_str_91, param, 'str', 'Lorg/apache/commons/lang3/math/NumberUtils;.getMantissa(Ljava/lang/String;I)Ljava/lang/String;#str#0#0').
name_ref(p_str_95, param, 'str', 'Lorg/apache/commons/lang3/math/NumberUtils;.isAllZeros(Ljava/lang/String;)Z#str#0#0').
name_ref(p_str_96, param, 'str', 'Lorg/apache/commons/lang3/math/NumberUtils;.createFloat(Ljava/lang/String;)Ljava/lang/Float;#str#0#0').
name_ref(p_str_97, param, 'str', 'Lorg/apache/commons/lang3/math/NumberUtils;.createDouble(Ljava/lang/String;)Ljava/lang/Double;#str#0#0').
name_ref(p_str_98, param, 'str', 'Lorg/apache/commons/lang3/math/NumberUtils;.createInteger(Ljava/lang/String;)Ljava/lang/Integer;#str#0#0').
name_ref(p_str_99, param, 'str', 'Lorg/apache/commons/lang3/math/NumberUtils;.createLong(Ljava/lang/String;)Ljava/lang/Long;#str#0#0').
name_ref(p_time_unit_170, param, 'timeUnit', 'Lorg/apache/commons/lang3/time/DurationUtils;.toChronoUnit(Ljava/util/concurrent/TimeUnit;)Ljava/time/temporal/ChronoUnit;#timeUnit#0#0').
name_ref(p_time_unit_172, param, 'timeUnit', 'Lorg/apache/commons/lang3/time/DurationUtils;.toDuration(JLjava/util/concurrent/TimeUnit;)Ljava/time/Duration;#timeUnit#0#1').
name_ref(p_to_inclusive_5, param, 'toInclusive', 'Lorg/apache/commons/lang3/Range;.between<T::Ljava/lang/Comparable<-TT;>;>(TT;TT;)Lorg/apache/commons/lang3/Range<TT;>;#toInclusive#0#1').
name_ref(p_to_inclusive_7, param, 'toInclusive', 'Lorg/apache/commons/lang3/Range;.between<T:Ljava/lang/Object;>(TT;TT;Ljava/util/Comparator<TT;>;)Lorg/apache/commons/lang3/Range<TT;>;#toInclusive#0#1').
name_ref(p_value_65, param, 'value', 'Lorg/apache/commons/lang3/math/NumberUtils;.toDouble(Ljava/math/BigDecimal;)D#value#0#0').
name_ref(p_value_66, param, 'value', 'Lorg/apache/commons/lang3/math/NumberUtils;.toDouble(Ljava/math/BigDecimal;D)D#value#0#0').
name_ref(p_value_74, param, 'value', 'Lorg/apache/commons/lang3/math/NumberUtils;.toScaledBigDecimal(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;#value#0#0').
name_ref(p_value_75, param, 'value', 'Lorg/apache/commons/lang3/math/NumberUtils;.toScaledBigDecimal(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;#value#0#0').
name_ref(p_value_78, param, 'value', 'Lorg/apache/commons/lang3/math/NumberUtils;.toScaledBigDecimal(Ljava/lang/Float;)Ljava/math/BigDecimal;#value#0#0').
name_ref(p_value_79, param, 'value', 'Lorg/apache/commons/lang3/math/NumberUtils;.toScaledBigDecimal(Ljava/lang/Float;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;#value#0#0').
name_ref(p_value_82, param, 'value', 'Lorg/apache/commons/lang3/math/NumberUtils;.toScaledBigDecimal(Ljava/lang/Double;)Ljava/math/BigDecimal;#value#0#0').
name_ref(p_value_83, param, 'value', 'Lorg/apache/commons/lang3/math/NumberUtils;.toScaledBigDecimal(Ljava/lang/Double;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;#value#0#0').
name_ref(p_value_86, param, 'value', 'Lorg/apache/commons/lang3/math/NumberUtils;.toScaledBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;#value#0#0').
name_ref(p_value_87, param, 'value', 'Lorg/apache/commons/lang3/math/NumberUtils;.toScaledBigDecimal(Ljava/lang/String;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;#value#0#0').
name_ref(p_x_157, param, 'x', 'Lorg/apache/commons/lang3/math/NumberUtils;.compare(II)I#x#0#0').
name_ref(p_x_159, param, 'x', 'Lorg/apache/commons/lang3/math/NumberUtils;.compare(JJ)I#x#0#0').
name_ref(p_x_161, param, 'x', 'Lorg/apache/commons/lang3/math/NumberUtils;.compare(SS)I#x#0#0').
name_ref(p_x_163, param, 'x', 'Lorg/apache/commons/lang3/math/NumberUtils;.compare(BB)I#x#0#0').
name_ref(p_y_158, param, 'y', 'Lorg/apache/commons/lang3/math/NumberUtils;.compare(II)I#y#0#1').
name_ref(p_y_160, param, 'y', 'Lorg/apache/commons/lang3/math/NumberUtils;.compare(JJ)I#y#0#1').
name_ref(p_y_162, param, 'y', 'Lorg/apache/commons/lang3/math/NumberUtils;.compare(SS)I#y#0#1').
name_ref(p_y_164, param, 'y', 'Lorg/apache/commons/lang3/math/NumberUtils;.compare(BB)I#y#0#1').
name_ref(f_byte_minus_one_44, field, 'BYTE_MINUS_ONE', 'Lorg/apache/commons/lang3/math/NumberUtils;.BYTE_MINUS_ONE)Ljava/lang/Byte;').
name_ref(f_byte_one_43, field, 'BYTE_ONE', 'Lorg/apache/commons/lang3/math/NumberUtils;.BYTE_ONE)Ljava/lang/Byte;').
name_ref(f_byte_zero_42, field, 'BYTE_ZERO', 'Lorg/apache/commons/lang3/math/NumberUtils;.BYTE_ZERO)Ljava/lang/Byte;').
name_ref(f_comparator_15, field, 'comparator', 'Lorg/apache/commons/lang3/Range<Lorg/apache/commons/lang3/Range;:TT;>;.comparator)Ljava/util/Comparator<Lorg/apache/commons/lang3/Range;:TT;>;').
name_ref(f_double_minus_one_47, field, 'DOUBLE_MINUS_ONE', 'Lorg/apache/commons/lang3/math/NumberUtils;.DOUBLE_MINUS_ONE)Ljava/lang/Double;').
name_ref(f_double_one_46, field, 'DOUBLE_ONE', 'Lorg/apache/commons/lang3/math/NumberUtils;.DOUBLE_ONE)Ljava/lang/Double;').
name_ref(f_double_zero_45, field, 'DOUBLE_ZERO', 'Lorg/apache/commons/lang3/math/NumberUtils;.DOUBLE_ZERO)Ljava/lang/Double;').
name_ref(f_float_minus_one_50, field, 'FLOAT_MINUS_ONE', 'Lorg/apache/commons/lang3/math/NumberUtils;.FLOAT_MINUS_ONE)Ljava/lang/Float;').
name_ref(f_float_one_49, field, 'FLOAT_ONE', 'Lorg/apache/commons/lang3/math/NumberUtils;.FLOAT_ONE)Ljava/lang/Float;').
name_ref(f_float_zero_48, field, 'FLOAT_ZERO', 'Lorg/apache/commons/lang3/math/NumberUtils;.FLOAT_ZERO)Ljava/lang/Float;').
name_ref(f_instance_1, field, 'INSTANCE', 'Lorg/apache/commons/lang3/Range$ComparableComparator;.INSTANCE)Lorg/apache/commons/lang3/Range$ComparableComparator;').
name_ref(f_integer_minus_one_38, field, 'INTEGER_MINUS_ONE', 'Lorg/apache/commons/lang3/math/NumberUtils;.INTEGER_MINUS_ONE)Ljava/lang/Integer;').
name_ref(f_integer_one_36, field, 'INTEGER_ONE', 'Lorg/apache/commons/lang3/math/NumberUtils;.INTEGER_ONE)Ljava/lang/Integer;').
name_ref(f_integer_two_37, field, 'INTEGER_TWO', 'Lorg/apache/commons/lang3/math/NumberUtils;.INTEGER_TWO)Ljava/lang/Integer;').
name_ref(f_integer_zero_35, field, 'INTEGER_ZERO', 'Lorg/apache/commons/lang3/math/NumberUtils;.INTEGER_ZERO)Ljava/lang/Integer;').
name_ref(f_long_int_max_value_51, field, 'LONG_INT_MAX_VALUE', 'Lorg/apache/commons/lang3/math/NumberUtils;.LONG_INT_MAX_VALUE)Ljava/lang/Long;').
name_ref(f_long_int_min_value_52, field, 'LONG_INT_MIN_VALUE', 'Lorg/apache/commons/lang3/math/NumberUtils;.LONG_INT_MIN_VALUE)Ljava/lang/Long;').
name_ref(f_long_minus_one_34, field, 'LONG_MINUS_ONE', 'Lorg/apache/commons/lang3/math/NumberUtils;.LONG_MINUS_ONE)Ljava/lang/Long;').
name_ref(f_long_one_33, field, 'LONG_ONE', 'Lorg/apache/commons/lang3/math/NumberUtils;.LONG_ONE)Ljava/lang/Long;').
name_ref(f_long_to_int_range_165, field, 'LONG_TO_INT_RANGE', 'Lorg/apache/commons/lang3/time/DurationUtils;.LONG_TO_INT_RANGE)Lorg/apache/commons/lang3/Range<Ljava/lang/Long;>;').
name_ref(f_long_zero_32, field, 'LONG_ZERO', 'Lorg/apache/commons/lang3/math/NumberUtils;.LONG_ZERO)Ljava/lang/Long;').
name_ref(f_maximum_17, field, 'maximum', 'Lorg/apache/commons/lang3/Range<Lorg/apache/commons/lang3/Range;:TT;>;.maximum)Lorg/apache/commons/lang3/Range;:TT;').
name_ref(f_minimum_16, field, 'minimum', 'Lorg/apache/commons/lang3/Range<Lorg/apache/commons/lang3/Range;:TT;>;.minimum)Lorg/apache/commons/lang3/Range;:TT;').
name_ref(f_short_minus_one_41, field, 'SHORT_MINUS_ONE', 'Lorg/apache/commons/lang3/math/NumberUtils;.SHORT_MINUS_ONE)Ljava/lang/Short;').
name_ref(f_short_one_40, field, 'SHORT_ONE', 'Lorg/apache/commons/lang3/math/NumberUtils;.SHORT_ONE)Ljava/lang/Short;').
name_ref(f_short_zero_39, field, 'SHORT_ZERO', 'Lorg/apache/commons/lang3/math/NumberUtils;.SHORT_ZERO)Ljava/lang/Short;').
name_ref(m_accept_102, method, 'accept', 'Lorg/apache/commons/lang3/time/DurationUtils;.accept<T:Ljava/lang/Throwable;>(Lorg/apache/commons/lang3/function/FailableBiConsumer<Ljava/lang/Long;Ljava/lang/Integer;TT;>;Ljava/time/Duration;)V^TT;').
name_ref(m_assert_equals_111, method, 'assertEquals', 'Lorg/junit/jupiter/api/Assertions;.assertEquals(II)V').
name_ref(m_between_3, method, 'between', 'Lorg/apache/commons/lang3/Range;.between<T::Ljava/lang/Comparable<-TT;>;>(TT;TT;)Lorg/apache/commons/lang3/Range<TT;>;').
name_ref(m_between_4, method, 'between', 'Lorg/apache/commons/lang3/Range;.between<T:Ljava/lang/Object;>(TT;TT;Ljava/util/Comparator<TT;>;)Lorg/apache/commons/lang3/Range<TT;>;').
name_ref(m_compare_1, method, 'compare', 'Lorg/apache/commons/lang3/Range$ComparableComparator;.compare(Ljava/lang/Object;Ljava/lang/Object;)I').
name_ref(m_compare_100, method, 'compare', 'Lorg/apache/commons/lang3/math/NumberUtils;.compare(SS)I').
name_ref(m_compare_101, method, 'compare', 'Lorg/apache/commons/lang3/math/NumberUtils;.compare(BB)I').
name_ref(m_compare_8, method, 'compare', 'Ljava/util/Comparator;.compare(TT;TT;)I').
name_ref(m_compare_98, method, 'compare', 'Lorg/apache/commons/lang3/math/NumberUtils;.compare(II)I').
name_ref(m_compare_99, method, 'compare', 'Lorg/apache/commons/lang3/math/NumberUtils;.compare(JJ)I').
name_ref(m_compare_to_2, method, 'compareTo', 'Ljava/lang/Comparable;.compareTo(TT;)I').
name_ref(m_contains_9, method, 'contains', 'Lorg/apache/commons/lang3/Range;.contains(TT;)Z').
name_ref(m_contains_range_10, method, 'containsRange', 'Lorg/apache/commons/lang3/Range;.containsRange(Lorg/apache/commons/lang3/Range<TT;>;)Z').
name_ref(m_create_big_decimal_67, method, 'createBigDecimal', 'Lorg/apache/commons/lang3/math/NumberUtils;.createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;').
name_ref(m_create_big_integer_66, method, 'createBigInteger', 'Lorg/apache/commons/lang3/math/NumberUtils;.createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;').
name_ref(m_create_double_63, method, 'createDouble', 'Lorg/apache/commons/lang3/math/NumberUtils;.createDouble(Ljava/lang/String;)Ljava/lang/Double;').
name_ref(m_create_float_62, method, 'createFloat', 'Lorg/apache/commons/lang3/math/NumberUtils;.createFloat(Ljava/lang/String;)Ljava/lang/Float;').
name_ref(m_create_integer_64, method, 'createInteger', 'Lorg/apache/commons/lang3/math/NumberUtils;.createInteger(Ljava/lang/String;)Ljava/lang/Integer;').
name_ref(m_create_long_65, method, 'createLong', 'Lorg/apache/commons/lang3/math/NumberUtils;.createLong(Ljava/lang/String;)Ljava/lang/Long;').
name_ref(m_create_number_58, method, 'createNumber', 'Lorg/apache/commons/lang3/math/NumberUtils;.createNumber(Ljava/lang/String;)Ljava/lang/Number;').
name_ref(m_element_compare_to_11, method, 'elementCompareTo', 'Lorg/apache/commons/lang3/Range;.elementCompareTo(TT;)I').
name_ref(m_equals_12, method, 'equals', 'Lorg/apache/commons/lang3/Range;.equals(Ljava/lang/Object;)Z').
name_ref(m_fit_13, method, 'fit', 'Lorg/apache/commons/lang3/Range;.fit(TT;)TT;').
name_ref(m_get_comparator_14, method, 'getComparator', 'Lorg/apache/commons/lang3/Range;.getComparator()Ljava/util/Comparator<TT;>;').
name_ref(m_get_mantissa_59, method, 'getMantissa', 'Lorg/apache/commons/lang3/math/NumberUtils;.getMantissa(Ljava/lang/String;I)Ljava/lang/String;').
name_ref(m_get_maximum_15, method, 'getMaximum', 'Lorg/apache/commons/lang3/Range;.getMaximum()TT;').
name_ref(m_get_minimum_16, method, 'getMinimum', 'Lorg/apache/commons/lang3/Range;.getMinimum()TT;').
name_ref(m_get_nano_104, method, 'getNano', 'Ljava/time/Duration;.getNano()I').
name_ref(m_get_nanos_of_miili_103, method, 'getNanosOfMiili', 'Lorg/apache/commons/lang3/time/DurationUtils;.getNanosOfMiili(Ljava/time/Duration;)I').
name_ref(m_hash_code_17, method, 'hashCode', 'Lorg/apache/commons/lang3/Range;.hashCode()I').
name_ref(m_intersection_with_18, method, 'intersectionWith', 'Lorg/apache/commons/lang3/Range;.intersectionWith(Lorg/apache/commons/lang3/Range<TT;>;)Lorg/apache/commons/lang3/Range<TT;>;').
name_ref(m_is_6, method, 'is', 'Lorg/apache/commons/lang3/Range;.is<T::Ljava/lang/Comparable<-TT;>;>(TT;)Lorg/apache/commons/lang3/Range<TT;>;').
name_ref(m_is_7, method, 'is', 'Lorg/apache/commons/lang3/Range;.is<T:Ljava/lang/Object;>(TT;Ljava/util/Comparator<TT;>;)Lorg/apache/commons/lang3/Range<TT;>;').
name_ref(m_is_after_19, method, 'isAfter', 'Lorg/apache/commons/lang3/Range;.isAfter(TT;)Z').
name_ref(m_is_after_range_20, method, 'isAfterRange', 'Lorg/apache/commons/lang3/Range;.isAfterRange(Lorg/apache/commons/lang3/Range<TT;>;)Z').
name_ref(m_is_all_zeros_61, method, 'isAllZeros', 'Lorg/apache/commons/lang3/math/NumberUtils;.isAllZeros(Ljava/lang/String;)Z').
name_ref(m_is_before_21, method, 'isBefore', 'Lorg/apache/commons/lang3/Range;.isBefore(TT;)Z').
name_ref(m_is_before_range_22, method, 'isBeforeRange', 'Lorg/apache/commons/lang3/Range;.isBeforeRange(Lorg/apache/commons/lang3/Range<TT;>;)Z').
name_ref(m_is_creatable_95, method, 'isCreatable', 'Lorg/apache/commons/lang3/math/NumberUtils;.isCreatable(Ljava/lang/String;)Z').
name_ref(m_is_digits_93, method, 'isDigits', 'Lorg/apache/commons/lang3/math/NumberUtils;.isDigits(Ljava/lang/String;)Z').
name_ref(m_is_ended_by_23, method, 'isEndedBy', 'Lorg/apache/commons/lang3/Range;.isEndedBy(TT;)Z').
name_ref(m_is_natural_ordering_24, method, 'isNaturalOrdering', 'Lorg/apache/commons/lang3/Range;.isNaturalOrdering()Z').
name_ref(m_is_number_94, method, 'isNumber', 'Lorg/apache/commons/lang3/math/NumberUtils;.isNumber(Ljava/lang/String;)Z').
name_ref(m_is_overlapped_by_25, method, 'isOverlappedBy', 'Lorg/apache/commons/lang3/Range;.isOverlappedBy(Lorg/apache/commons/lang3/Range<TT;>;)Z').
name_ref(m_is_parsable_96, method, 'isParsable', 'Lorg/apache/commons/lang3/math/NumberUtils;.isParsable(Ljava/lang/String;)Z').
name_ref(m_is_positive_105, method, 'isPositive', 'Lorg/apache/commons/lang3/time/DurationUtils;.isPositive(Ljava/time/Duration;)Z').
name_ref(m_is_started_by_26, method, 'isStartedBy', 'Lorg/apache/commons/lang3/Range;.isStartedBy(TT;)Z').
name_ref(m_is_zero_60, method, 'isZero', 'Lorg/apache/commons/lang3/math/NumberUtils;.isZero(Ljava/lang/String;Ljava/lang/String;)Z').
name_ref(m_max_74, method, 'max', 'Lorg/apache/commons/lang3/math/NumberUtils;.max([J)J').
name_ref(m_max_75, method, 'max', 'Lorg/apache/commons/lang3/math/NumberUtils;.max([I)I').
name_ref(m_max_76, method, 'max', 'Lorg/apache/commons/lang3/math/NumberUtils;.max([S)S').
name_ref(m_max_77, method, 'max', 'Lorg/apache/commons/lang3/math/NumberUtils;.max([B)B').
name_ref(m_max_78, method, 'max', 'Lorg/apache/commons/lang3/math/NumberUtils;.max([D)D').
name_ref(m_max_79, method, 'max', 'Lorg/apache/commons/lang3/math/NumberUtils;.max([F)F').
name_ref(m_max_87, method, 'max', 'Lorg/apache/commons/lang3/math/NumberUtils;.max(JJJ)J').
name_ref(m_max_88, method, 'max', 'Lorg/apache/commons/lang3/math/NumberUtils;.max(III)I').
name_ref(m_max_89, method, 'max', 'Lorg/apache/commons/lang3/math/NumberUtils;.max(SSS)S').
name_ref(m_max_90, method, 'max', 'Lorg/apache/commons/lang3/math/NumberUtils;.max(BBB)B').
name_ref(m_max_91, method, 'max', 'Lorg/apache/commons/lang3/math/NumberUtils;.max(DDD)D').
name_ref(m_max_92, method, 'max', 'Lorg/apache/commons/lang3/math/NumberUtils;.max(FFF)F').
name_ref(m_min_68, method, 'min', 'Lorg/apache/commons/lang3/math/NumberUtils;.min([J)J').
name_ref(m_min_69, method, 'min', 'Lorg/apache/commons/lang3/math/NumberUtils;.min([I)I').
name_ref(m_min_70, method, 'min', 'Lorg/apache/commons/lang3/math/NumberUtils;.min([S)S').
name_ref(m_min_71, method, 'min', 'Lorg/apache/commons/lang3/math/NumberUtils;.min([B)B').
name_ref(m_min_72, method, 'min', 'Lorg/apache/commons/lang3/math/NumberUtils;.min([D)D').
name_ref(m_min_73, method, 'min', 'Lorg/apache/commons/lang3/math/NumberUtils;.min([F)F').
name_ref(m_min_81, method, 'min', 'Lorg/apache/commons/lang3/math/NumberUtils;.min(JJJ)J').
name_ref(m_min_82, method, 'min', 'Lorg/apache/commons/lang3/math/NumberUtils;.min(III)I').
name_ref(m_min_83, method, 'min', 'Lorg/apache/commons/lang3/math/NumberUtils;.min(SSS)S').
name_ref(m_min_84, method, 'min', 'Lorg/apache/commons/lang3/math/NumberUtils;.min(BBB)B').
name_ref(m_min_85, method, 'min', 'Lorg/apache/commons/lang3/math/NumberUtils;.min(DDD)D').
name_ref(m_min_86, method, 'min', 'Lorg/apache/commons/lang3/math/NumberUtils;.min(FFF)F').
name_ref(m_number_utils_35, method, 'NumberUtils', 'Lorg/apache/commons/lang3/math/NumberUtils;.()V').
name_ref(m_range_5, method, 'Range', 'Lorg/apache/commons/lang3/Range;.(TT;TT;Ljava/util/Comparator<TT;>;)V').
name_ref(m_test_get_nanos_of_milli_110, method, 'testGetNanosOfMilli', 'Lorg/apache/commons/lang3/time/DurationUtilsTest;.testGetNanosOfMilli()V').
name_ref(m_test_is_positive_112, method, 'testIsPositive', 'Lorg/apache/commons/lang3/time/DurationUtilsTest;.testIsPositive()V').
name_ref(m_test_long_to_int_range_fit_113, method, 'testLongToIntRangeFit', 'Lorg/apache/commons/lang3/time/DurationUtilsTest;.testLongToIntRangeFit()V').
name_ref(m_test_to_duration_114, method, 'testToDuration', 'Lorg/apache/commons/lang3/time/DurationUtilsTest;.testToDuration()V').
name_ref(m_test_to_millis_int_115, method, 'testToMillisInt', 'Lorg/apache/commons/lang3/time/DurationUtilsTest;.testToMillisInt()V').
name_ref(m_test_zero_if_null_116, method, 'testZeroIfNull', 'Lorg/apache/commons/lang3/time/DurationUtilsTest;.testZeroIfNull()V').
name_ref(m_to_byte_46, method, 'toByte', 'Lorg/apache/commons/lang3/math/NumberUtils;.toByte(Ljava/lang/String;)B').
name_ref(m_to_byte_47, method, 'toByte', 'Lorg/apache/commons/lang3/math/NumberUtils;.toByte(Ljava/lang/String;B)B').
name_ref(m_to_chrono_unit_106, method, 'toChronoUnit', 'Lorg/apache/commons/lang3/time/DurationUtils;.toChronoUnit(Ljava/util/concurrent/TimeUnit;)Ljava/time/temporal/ChronoUnit;').
name_ref(m_to_double_42, method, 'toDouble', 'Lorg/apache/commons/lang3/math/NumberUtils;.toDouble(Ljava/lang/String;)D').
name_ref(m_to_double_43, method, 'toDouble', 'Lorg/apache/commons/lang3/math/NumberUtils;.toDouble(Ljava/lang/String;D)D').
name_ref(m_to_double_44, method, 'toDouble', 'Lorg/apache/commons/lang3/math/NumberUtils;.toDouble(Ljava/math/BigDecimal;)D').
name_ref(m_to_double_45, method, 'toDouble', 'Lorg/apache/commons/lang3/math/NumberUtils;.toDouble(Ljava/math/BigDecimal;D)D').
name_ref(m_to_duration_107, method, 'toDuration', 'Lorg/apache/commons/lang3/time/DurationUtils;.toDuration(JLjava/util/concurrent/TimeUnit;)Ljava/time/Duration;').
name_ref(m_to_float_40, method, 'toFloat', 'Lorg/apache/commons/lang3/math/NumberUtils;.toFloat(Ljava/lang/String;)F').
name_ref(m_to_float_41, method, 'toFloat', 'Lorg/apache/commons/lang3/math/NumberUtils;.toFloat(Ljava/lang/String;F)F').
name_ref(m_to_int_36, method, 'toInt', 'Lorg/apache/commons/lang3/math/NumberUtils;.toInt(Ljava/lang/String;)I').
name_ref(m_to_int_37, method, 'toInt', 'Lorg/apache/commons/lang3/math/NumberUtils;.toInt(Ljava/lang/String;I)I').
name_ref(m_to_long_38, method, 'toLong', 'Lorg/apache/commons/lang3/math/NumberUtils;.toLong(Ljava/lang/String;)J').
name_ref(m_to_long_39, method, 'toLong', 'Lorg/apache/commons/lang3/math/NumberUtils;.toLong(Ljava/lang/String;J)J').
name_ref(m_to_millis_int_108, method, 'toMillisInt', 'Lorg/apache/commons/lang3/time/DurationUtils;.toMillisInt(Ljava/time/Duration;)I').
name_ref(m_to_scaled_big_decimal_50, method, 'toScaledBigDecimal', 'Lorg/apache/commons/lang3/math/NumberUtils;.toScaledBigDecimal(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;').
name_ref(m_to_scaled_big_decimal_51, method, 'toScaledBigDecimal', 'Lorg/apache/commons/lang3/math/NumberUtils;.toScaledBigDecimal(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;').
name_ref(m_to_scaled_big_decimal_52, method, 'toScaledBigDecimal', 'Lorg/apache/commons/lang3/math/NumberUtils;.toScaledBigDecimal(Ljava/lang/Float;)Ljava/math/BigDecimal;').
name_ref(m_to_scaled_big_decimal_53, method, 'toScaledBigDecimal', 'Lorg/apache/commons/lang3/math/NumberUtils;.toScaledBigDecimal(Ljava/lang/Float;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;').
name_ref(m_to_scaled_big_decimal_54, method, 'toScaledBigDecimal', 'Lorg/apache/commons/lang3/math/NumberUtils;.toScaledBigDecimal(Ljava/lang/Double;)Ljava/math/BigDecimal;').
name_ref(m_to_scaled_big_decimal_55, method, 'toScaledBigDecimal', 'Lorg/apache/commons/lang3/math/NumberUtils;.toScaledBigDecimal(Ljava/lang/Double;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;').
name_ref(m_to_scaled_big_decimal_56, method, 'toScaledBigDecimal', 'Lorg/apache/commons/lang3/math/NumberUtils;.toScaledBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;').
name_ref(m_to_scaled_big_decimal_57, method, 'toScaledBigDecimal', 'Lorg/apache/commons/lang3/math/NumberUtils;.toScaledBigDecimal(Ljava/lang/String;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;').
name_ref(m_to_short_48, method, 'toShort', 'Lorg/apache/commons/lang3/math/NumberUtils;.toShort(Ljava/lang/String;)S').
name_ref(m_to_short_49, method, 'toShort', 'Lorg/apache/commons/lang3/math/NumberUtils;.toShort(Ljava/lang/String;S)S').
name_ref(m_to_string_27, method, 'toString', 'Lorg/apache/commons/lang3/Range;.toString()Ljava/lang/String;').
name_ref(m_to_string_28, method, 'toString', 'Lorg/apache/commons/lang3/Range;.toString(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_validate_array_80, method, 'validateArray', 'Lorg/apache/commons/lang3/math/NumberUtils;.validateArray(Ljava/lang/Object;)V').
name_ref(m_value_of_29, method, 'valueOf', 'Ljava/lang/Long;.valueOf(J)Ljava/lang/Long;').
name_ref(m_value_of_30, method, 'valueOf', 'Ljava/lang/Integer;.valueOf(I)Ljava/lang/Integer;').
name_ref(m_value_of_31, method, 'valueOf', 'Ljava/lang/Short;.valueOf(S)Ljava/lang/Short;').
name_ref(m_value_of_32, method, 'valueOf', 'Ljava/lang/Byte;.valueOf(B)Ljava/lang/Byte;').
name_ref(m_value_of_33, method, 'valueOf', 'Ljava/lang/Double;.valueOf(D)Ljava/lang/Double;').
name_ref(m_value_of_34, method, 'valueOf', 'Ljava/lang/Float;.valueOf(F)Ljava/lang/Float;').
name_ref(m_with_decimals_parsing_97, method, 'withDecimalsParsing', 'Lorg/apache/commons/lang3/math/NumberUtils;.withDecimalsParsing(Ljava/lang/String;I)Z').
name_ref(m_zero_if_null_109, method, 'zeroIfNull', 'Lorg/apache/commons/lang3/time/DurationUtils;.zeroIfNull(Ljava/time/Duration;)Ljava/time/Duration;').
name_ref(q_instance_1, q_name, 'ComparableComparator.INSTANCE', 'Lorg/apache/commons/lang3/Range$ComparableComparator;:Lorg/apache/commons/lang3/Range$ComparableComparator;.INSTANCE)Lorg/apache/commons/lang3/Range$ComparableComparator;').
name_ref(q_long_int_max_value_5, q_name, 'NumberUtils.LONG_INT_MAX_VALUE', 'Lorg/apache/commons/lang3/math/NumberUtils;:Lorg/apache/commons/lang3/math/NumberUtils;.LONG_INT_MAX_VALUE)Ljava/lang/Long;').
name_ref(q_long_int_min_value_4, q_name, 'NumberUtils.LONG_INT_MIN_VALUE', 'Lorg/apache/commons/lang3/math/NumberUtils;:Lorg/apache/commons/lang3/math/NumberUtils;.LONG_INT_MIN_VALUE)Ljava/lang/Long;').
name_ref(q_max_value_2, q_name, 'Integer.MAX_VALUE', 'Ljava/lang/Integer;:Ljava/lang/Integer;.MAX_VALUE)I').
name_ref(q_min_value_3, q_name, 'Integer.MIN_VALUE', 'Ljava/lang/Integer;:Ljava/lang/Integer;.MIN_VALUE)I').

%%% End of Code Facts

