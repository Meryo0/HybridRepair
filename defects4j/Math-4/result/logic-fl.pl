%%% Logic-FL Facts
:- style_check(-discontiguous).

%line_1 - org.apache.commons.math3.geometry.euclidean.threed.Line
param(p_p_1_73, 1, m_line_63).
param(p_p_2_74, 2, m_line_63).
throw(m_line_63, math_illegal_argument_exception).
method_invoc(line_1_expr1, m_reset_64, line(line_1, 55)).
throw(line_1_expr1, math_illegal_argument_exception, line(line_1, 55)).
argument(p_p_1_73, 1, line_1_expr1).
argument(p_p_2_74, 2, line_1_expr1).
param(p_line_75, 1, m_line_65).
param(p_p_1_76, 1, m_reset_64).
param(p_p_2_77, 2, m_reset_64).
throw(m_reset_64, math_illegal_argument_exception).
assign(v_delta_78, line_1_expr2, line(line_1, 74)).
method_invoc(line_1_expr2, m_subtract_66, line(line_1, 74)).
argument(p_p_1_76, 1, line_1_expr2).
ref(p_p_2_77, line_1_expr2, line(line_1, 74)).
assign(v_norm_2_79, line_1_expr3, line(line_1, 75)).
method_invoc(line_1_expr3, m_get_norm_sq_67, line(line_1, 75)).
ref(v_delta_78, line_1_expr3, line(line_1, 75)).
assign(f_direction_80, line_1_expr7, line(line_1, 79)).
method_invoc(line_1_expr7, m_vector3_d_68, line(line_1, 79)).
argument(line_1_expr9, 1, line_1_expr7).
argument(v_delta_78, 2, line_1_expr7).
method_invoc(line_1_expr10, m_sqrt_69, line(line_1, 79)).
argument(v_norm_2_79, 1, line_1_expr10).
ref(t_fast_math_2, line_1_expr10, line(line_1, 79)).
assign(f_zero_81, line_1_expr12, line(line_1, 80)).
method_invoc(line_1_expr12, m_vector3_d_70, line(line_1, 80)).
argument(line_1_literal3, 1, line_1_expr12).
argument(p_p_1_76, 2, line_1_expr12).
argument(line_1_expr13, 3, line_1_expr12).
argument(v_delta_78, 4, line_1_expr12).
method_invoc(line_1_expr15, m_dot_product_71, line(line_1, 80)).
argument(v_delta_78, 1, line_1_expr15).
ref(p_p_1_76, line_1_expr15, line(line_1, 80)).
param(p_point_82, 1, m_get_abscissa_75).
return(line_1_expr16, m_get_abscissa_75, line(line_1, 114)).
method_invoc(line_1_expr16, m_dot_product_71, line(line_1, 114)).
argument(f_direction_80, 1, line_1_expr16).
ref(line_1_expr17, line_1_expr16, line(line_1, 114)).
method_invoc(line_1_expr17, m_subtract_66, line(line_1, 114)).
argument(f_zero_81, 1, line_1_expr17).
ref(p_point_82, line_1_expr17, line(line_1, 114)).
param(p_abscissa_83, 1, m_point_at_76).
param(p_point_84, 1, m_to_sub_space_77).
return(line_1_expr18, m_to_sub_space_77, line(line_1, 129)).
method_invoc(line_1_expr18, m_vector1_d_30, line(line_1, 129)).
argument(line_1_expr19, 1, line_1_expr18).
method_invoc(line_1_expr19, m_get_abscissa_75, line(line_1, 129)).
throw(line_1_expr19, null_pointer_exception, line(line_1, 129)).
argument(line_1_expr20, 1, line_1_expr19).
assign(line_1_expr20, p_point_84, line(line_1, 129)).
param(p_point_85, 1, m_to_space_78).
param(p_line_86, 1, m_is_similar_to_79).
param(p_p_87, 1, m_contains_80).
return(line_1_expr21, m_contains_80, line(line_1, 156)).
method_invoc(line_1_expr22, m_distance_81, line(line_1, 156)).
argument(p_p_87, 1, line_1_expr22).
param(p_p_88, 1, m_distance_81).
assign(v_d_89, line_1_expr23, line(line_1, 164)).
method_invoc(line_1_expr23, m_subtract_66, line(line_1, 164)).
argument(f_zero_81, 1, line_1_expr23).
ref(p_p_88, line_1_expr23, line(line_1, 164)).
assign(v_n_90, line_1_expr24, line(line_1, 165)).
method_invoc(line_1_expr24, m_vector3_d_70, line(line_1, 165)).
argument(line_1_literal5, 1, line_1_expr24).
argument(v_d_89, 2, line_1_expr24).
argument(line_1_expr25, 3, line_1_expr24).
argument(f_direction_80, 4, line_1_expr24).
method_invoc(line_1_expr26, m_dot_product_71, line(line_1, 165)).
argument(f_direction_80, 1, line_1_expr26).
ref(v_d_89, line_1_expr26, line(line_1, 165)).
return(line_1_expr27, m_distance_81, line(line_1, 166)).
method_invoc(line_1_expr27, m_get_norm_82, line(line_1, 166)).
ref(v_n_90, line_1_expr27, line(line_1, 166)).
param(p_line_91, 1, m_distance_83).
param(p_line_92, 1, m_closest_point_84).
assign(v_cos_93, line_1_expr28, line(line_1, 195)).
method_invoc(line_1_expr28, m_dot_product_71, line(line_1, 195)).
argument(q_direction_2, 1, line_1_expr28).
ref(f_direction_80, line_1_expr28, line(line_1, 195)).
ref(p_line_92, q_direction_2, line(line_1, 195)).
assign(v_n_94, line_1_expr29, line(line_1, 196)).
ref(t_precision_3, q_epsilon_3, line(line_1, 197)).
assign(v_delta_0_95, line_1_expr32, line(line_1, 202)).
method_invoc(line_1_expr32, m_subtract_66, line(line_1, 202)).
argument(f_zero_81, 1, line_1_expr32).
ref(f_zero_81, line_1_expr32, line(line_1, 202)).
ref(p_line_92, q_zero_4, line(line_1, 202)).
assign(v_a_96, line_1_expr33, line(line_1, 203)).
method_invoc(line_1_expr33, m_dot_product_71, line(line_1, 203)).
argument(f_direction_80, 1, line_1_expr33).
ref(v_delta_0_95, line_1_expr33, line(line_1, 203)).
assign(v_b_97, line_1_expr34, line(line_1, 204)).
method_invoc(line_1_expr34, m_dot_product_71, line(line_1, 204)).
argument(q_direction_5, 1, line_1_expr34).
ref(v_delta_0_95, line_1_expr34, line(line_1, 204)).
ref(p_line_92, q_direction_5, line(line_1, 204)).
return(line_1_expr35, m_closest_point_84, line(line_1, 206)).
method_invoc(line_1_expr35, m_vector3_d_70, line(line_1, 206)).
argument(line_1_literal7, 1, line_1_expr35).
argument(f_zero_81, 2, line_1_expr35).
argument(line_1_expr36, 3, line_1_expr35).
argument(f_direction_80, 4, line_1_expr35).
assign(line_1_expr37, line_1_expr38, line(line_1, 206)).
param(p_line_98, 1, m_intersection_85).
assign(v_closest_99, line_1_expr40, line(line_1, 216)).
method_invoc(line_1_expr40, m_closest_point_84, line(line_1, 216)).
argument(p_line_98, 1, line_1_expr40).
return(line_1_expr41, m_intersection_85, line(line_1, 217)).
cond_expr(line_1_expr42, v_closest_99, line_1_literal8, line(line_1, 217)).
method_invoc(line_1_expr42, m_contains_80, line(line_1, 217)).
argument(v_closest_99, 1, line_1_expr42).
ref(p_line_98, line_1_expr42, line(line_1, 217)).
throw(line_1_expr18, null_pointer_exception, line(line_1, 129)).

%line_2 - org.apache.commons.math3.geometry.euclidean.twod.Line
param(p_p_1_186, 1, m_line_150).
param(p_p_2_187, 2, m_line_150).
method_invoc(line_2_expr1, m_reset_151, line(line_2, 82)).
argument(p_p_1_186, 1, line_2_expr1).
argument(p_p_2_187, 2, line_2_expr1).
param(p_p_188, 1, m_line_152).
param(p_angle_189, 2, m_line_152).
param(p_angle_190, 1, m_line_153).
param(p_cos_191, 2, m_line_153).
param(p_sin_192, 3, m_line_153).
param(p_origin_offset_193, 4, m_line_153).
param(p_line_194, 1, m_line_154).
param(p_p_1_195, 1, m_reset_151).
param(p_p_2_196, 2, m_reset_151).
assign(v_dx_197, line_2_expr2, line(line_2, 129)).
method_invoc(line_2_expr3, m_get_x_156, line(line_2, 129)).
ref(p_p_2_196, line_2_expr3, line(line_2, 129)).
method_invoc(line_2_expr4, m_get_x_156, line(line_2, 129)).
ref(p_p_1_195, line_2_expr4, line(line_2, 129)).
assign(v_dy_198, line_2_expr5, line(line_2, 130)).
method_invoc(line_2_expr6, m_get_y_157, line(line_2, 130)).
ref(p_p_2_196, line_2_expr6, line(line_2, 130)).
method_invoc(line_2_expr7, m_get_y_157, line(line_2, 130)).
ref(p_p_1_195, line_2_expr7, line(line_2, 130)).
assign(v_d_199, line_2_expr8, line(line_2, 131)).
method_invoc(line_2_expr8, m_hypot_158, line(line_2, 131)).
argument(v_dx_197, 1, line_2_expr8).
argument(v_dy_198, 2, line_2_expr8).
ref(t_fast_math_2, line_2_expr8, line(line_2, 131)).
assign(f_angle_200, line_2_expr11, line(line_2, 138)).
ref(t_fast_math_2, q_pi_21, line(line_2, 138)).
method_invoc(line_2_expr12, m_atan_2_159, line(line_2, 138)).
argument(line_2_expr13, 1, line_2_expr12).
argument(line_2_expr14, 2, line_2_expr12).
ref(t_fast_math_2, line_2_expr12, line(line_2, 138)).
assign(f_cos_201, line_2_expr16, line(line_2, 139)).
method_invoc(line_2_expr16, m_cos_160, line(line_2, 139)).
argument(f_angle_200, 1, line_2_expr16).
ref(t_fast_math_2, line_2_expr16, line(line_2, 139)).
assign(f_sin_202, line_2_expr18, line(line_2, 140)).
method_invoc(line_2_expr18, m_sin_161, line(line_2, 140)).
argument(f_angle_200, 1, line_2_expr18).
ref(t_fast_math_2, line_2_expr18, line(line_2, 140)).
assign(f_origin_offset_203, line_2_expr20, line(line_2, 141)).
assign(line_2_expr21, line_2_expr22, line(line_2, 141)).
method_invoc(line_2_expr24, m_get_x_156, line(line_2, 141)).
ref(p_p_2_196, line_2_expr24, line(line_2, 141)).
method_invoc(line_2_expr25, m_get_y_157, line(line_2, 141)).
ref(p_p_1_195, line_2_expr25, line(line_2, 141)).
method_invoc(line_2_expr27, m_get_x_156, line(line_2, 141)).
ref(p_p_1_195, line_2_expr27, line(line_2, 141)).
method_invoc(line_2_expr28, m_get_y_157, line(line_2, 141)).
ref(p_p_2_196, line_2_expr28, line(line_2, 141)).
param(p_p_204, 1, m_reset_162).
param(p_alpha_205, 2, m_reset_162).
param(p_point_206, 1, m_to_sub_space_165).
assign(v_p_2_207, line_2_expr29, line(line_2, 181)).
assign(line_2_expr29, p_point_206, line(line_2, 181)).
return(line_2_expr30, m_to_sub_space_165, line(line_2, 182)).
method_invoc(line_2_expr30, m_vector1_d_30, line(line_2, 182)).
argument(line_2_expr31, 1, line_2_expr30).
method_invoc(line_2_expr33, m_get_x_156, line(line_2, 182)).
ref(v_p_2_207, line_2_expr33, line(line_2, 182)).
method_invoc(line_2_expr35, m_get_y_157, line(line_2, 182)).
ref(v_p_2_207, line_2_expr35, line(line_2, 182)).
param(p_point_208, 1, m_to_space_166).
param(p_other_209, 1, m_intersection_167).
assign(v_d_210, line_2_expr36, line(line_2, 198)).
ref(p_other_209, q_cos_22, line(line_2, 198)).
ref(p_other_209, q_sin_23, line(line_2, 198)).
method_invoc(line_2_expr40, m_abs_168, line(line_2, 199)).
argument(v_d_210, 1, line_2_expr40).
ref(t_fast_math_2, line_2_expr40, line(line_2, 199)).
return(line_2_literal3, m_intersection_167, line(line_2, 200)).
param(p_line_211, 1, m_get_offset_171).
param(p_point_212, 1, m_get_offset_172).
param(p_other_213, 1, m_same_orientation_as_173).
param(p_abscissa_214, 1, m_get_point_at_174).
param(p_offset_215, 2, m_get_point_at_174).
param(p_p_216, 1, m_contains_175).
param(p_p_217, 1, m_distance_176).
param(p_line_218, 1, m_is_parallel_to_177).
param(p_p_219, 1, m_translate_to_point_178).
param(p_angle_220, 1, m_set_angle_180).
param(p_offset_221, 1, m_set_origin_offset_182).
param(p_transform_222, 1, m_get_transform_183).
throw(m_get_transform_183, math_illegal_argument_exception).
param(p_transform_223, 1, m_line_transform_184).
throw(m_line_transform_184, math_illegal_argument_exception).
param(p_point_224, 1, m_apply_185).
param(p_hyperplane_225, 1, m_apply_186).
param(p_sub_226, 1, m_apply_187).
param(p_original_227, 2, m_apply_187).
param(p_transformed_228, 3, m_apply_187).

%math_arrays_1 - org.apache.commons.math3.util.MathArrays
param(p_array_531, 1, m_evaluate_389).
param(p_array_532, 1, m_evaluate_390).
param(p_start_index_533, 2, m_evaluate_390).
param(p_num_elements_534, 3, m_evaluate_390).
param(p_val_535, 1, m_scale_391).
param(p_arr_536, 2, m_scale_391).
param(p_val_537, 1, m_scale_in_place_392).
param(p_arr_538, 2, m_scale_in_place_392).
param(p_a_539, 1, m_ebe_add_393).
param(p_b_540, 2, m_ebe_add_393).
throw(m_ebe_add_393, dimension_mismatch_exception).
param(p_a_541, 1, m_ebe_subtract_394).
param(p_b_542, 2, m_ebe_subtract_394).
throw(m_ebe_subtract_394, dimension_mismatch_exception).
param(p_a_543, 1, m_ebe_multiply_395).
param(p_b_544, 2, m_ebe_multiply_395).
throw(m_ebe_multiply_395, dimension_mismatch_exception).
param(p_a_545, 1, m_ebe_divide_396).
param(p_b_546, 2, m_ebe_divide_396).
throw(m_ebe_divide_396, dimension_mismatch_exception).
param(p_p_1_547, 1, m_distance_1_397).
param(p_p_2_548, 2, m_distance_1_397).
param(p_p_1_549, 1, m_distance_1_398).
param(p_p_2_550, 2, m_distance_1_398).
param(p_p_1_551, 1, m_distance_399).
param(p_p_2_552, 2, m_distance_399).
param(p_p_1_553, 1, m_distance_400).
param(p_p_2_554, 2, m_distance_400).
param(p_p_1_555, 1, m_distance_inf_401).
param(p_p_2_556, 2, m_distance_inf_401).
param(p_p_1_557, 1, m_distance_inf_402).
param(p_p_2_558, 2, m_distance_inf_402).
param(p_val_559, 1, m_is_monotonic_403).
param(p_dir_560, 2, m_is_monotonic_403).
param(p_strict_561, 3, m_is_monotonic_403).
param(p_val_562, 1, m_is_monotonic_404).
param(p_dir_563, 2, m_is_monotonic_404).
param(p_strict_564, 3, m_is_monotonic_404).
param(p_val_565, 1, m_check_order_405).
param(p_dir_566, 2, m_check_order_405).
param(p_strict_567, 3, m_check_order_405).
param(p_abort_568, 4, m_check_order_405).
throw(m_check_order_405, non_monotonic_sequence_exception).
param(p_val_569, 1, m_check_order_406).
param(p_dir_570, 2, m_check_order_406).
param(p_strict_571, 3, m_check_order_406).
throw(m_check_order_406, non_monotonic_sequence_exception).
param(p_val_572, 1, m_check_order_407).
throw(m_check_order_407, non_monotonic_sequence_exception).
param(p_in_573, 1, m_check_rectangular_408).
throw(m_check_rectangular_408, null_argument_exception).
throw(m_check_rectangular_408, dimension_mismatch_exception).
param(p_in_574, 1, m_check_positive_409).
throw(m_check_positive_409, not_strictly_positive_exception).
param(p_in_575, 1, m_check_non_negative_410).
throw(m_check_non_negative_410, not_positive_exception).
param(p_in_576, 1, m_check_non_negative_411).
throw(m_check_non_negative_411, not_positive_exception).
param(p_v_577, 1, m_safe_norm_412).
param(p_x_578, 1, m_sort_in_place_413).
param(p_y_list_579, 2, m_sort_in_place_413).
throw(m_sort_in_place_413, dimension_mismatch_exception).
throw(m_sort_in_place_413, null_argument_exception).
param(p_x_580, 1, m_sort_in_place_414).
param(p_dir_581, 2, m_sort_in_place_414).
param(p_y_list_582, 3, m_sort_in_place_414).
throw(m_sort_in_place_414, null_argument_exception).
throw(m_sort_in_place_414, dimension_mismatch_exception).
param(p_o_1_583, 1, m_compare_415).
param(p_o_2_584, 2, m_compare_415).
param(p_source_585, 1, m_copy_of_416).
param(p_source_586, 1, m_copy_of_417).
param(p_source_587, 1, m_copy_of_418).
param(p_len_588, 2, m_copy_of_418).
param(p_source_589, 1, m_copy_of_419).
param(p_len_590, 2, m_copy_of_419).
param(p_a_591, 1, m_linear_combination_420).
param(p_b_592, 2, m_linear_combination_420).
throw(m_linear_combination_420, dimension_mismatch_exception).
param(p_a_1_593, 1, m_linear_combination_111).
param(p_b_1_594, 2, m_linear_combination_111).
param(p_a_2_595, 3, m_linear_combination_111).
param(p_b_2_596, 4, m_linear_combination_111).
assign(v_ca_1_597, math_arrays_1_expr1, line(math_arrays_1, 896)).
assign(v_a_1high_599, math_arrays_1_expr2, line(math_arrays_1, 897)).
assign(math_arrays_1_expr3, math_arrays_1_expr4, line(math_arrays_1, 897)).
assign(v_a_1low_600, math_arrays_1_expr5, line(math_arrays_1, 898)).
assign(v_cb_1_601, math_arrays_1_expr6, line(math_arrays_1, 899)).
assign(v_b_1high_602, math_arrays_1_expr7, line(math_arrays_1, 900)).
assign(math_arrays_1_expr8, math_arrays_1_expr9, line(math_arrays_1, 900)).
assign(v_b_1low_603, math_arrays_1_expr10, line(math_arrays_1, 901)).
assign(v_prod_1high_604, math_arrays_1_expr11, line(math_arrays_1, 904)).
assign(v_prod_1low_605, math_arrays_1_expr12, line(math_arrays_1, 905)).
assign(math_arrays_1_expr14, math_arrays_1_expr15, line(math_arrays_1, 905)).
assign(math_arrays_1_expr16, math_arrays_1_expr17, line(math_arrays_1, 905)).
assign(math_arrays_1_expr18, math_arrays_1_expr19, line(math_arrays_1, 905)).
assign(v_ca_2_606, math_arrays_1_expr23, line(math_arrays_1, 908)).
assign(v_a_2high_607, math_arrays_1_expr24, line(math_arrays_1, 909)).
assign(math_arrays_1_expr25, math_arrays_1_expr26, line(math_arrays_1, 909)).
assign(v_a_2low_608, math_arrays_1_expr27, line(math_arrays_1, 910)).
assign(v_cb_2_609, math_arrays_1_expr28, line(math_arrays_1, 911)).
assign(v_b_2high_610, math_arrays_1_expr29, line(math_arrays_1, 912)).
assign(math_arrays_1_expr30, math_arrays_1_expr31, line(math_arrays_1, 912)).
assign(v_b_2low_611, math_arrays_1_expr32, line(math_arrays_1, 913)).
assign(v_prod_2high_612, math_arrays_1_expr33, line(math_arrays_1, 916)).
assign(v_prod_2low_613, math_arrays_1_expr34, line(math_arrays_1, 917)).
assign(math_arrays_1_expr36, math_arrays_1_expr37, line(math_arrays_1, 917)).
assign(math_arrays_1_expr38, math_arrays_1_expr39, line(math_arrays_1, 917)).
assign(math_arrays_1_expr40, math_arrays_1_expr41, line(math_arrays_1, 917)).
assign(v_s_12high_614, math_arrays_1_expr45, line(math_arrays_1, 920)).
assign(v_s_12prime_615, math_arrays_1_expr46, line(math_arrays_1, 921)).
assign(v_s_12low_616, math_arrays_1_expr47, line(math_arrays_1, 922)).
assign(math_arrays_1_expr48, math_arrays_1_expr49, line(math_arrays_1, 922)).
assign(math_arrays_1_expr50, math_arrays_1_expr51, line(math_arrays_1, 922)).
assign(math_arrays_1_expr52, math_arrays_1_expr53, line(math_arrays_1, 922)).
assign(v_result_617, math_arrays_1_expr54, line(math_arrays_1, 926)).
assign(math_arrays_1_expr55, math_arrays_1_expr56, line(math_arrays_1, 926)).
method_invoc(math_arrays_1_expr57, m_is_na_n_377, line(math_arrays_1, 928)).
argument(v_result_617, 1, math_arrays_1_expr57).
ref(t_double_1, math_arrays_1_expr57, line(math_arrays_1, 928)).
return(v_result_617, m_linear_combination_111, line(math_arrays_1, 934)).
param(p_a_1_618, 1, m_linear_combination_136).
param(p_b_1_619, 2, m_linear_combination_136).
param(p_a_2_620, 3, m_linear_combination_136).
param(p_b_2_621, 4, m_linear_combination_136).
param(p_a_3_622, 5, m_linear_combination_136).
param(p_b_3_623, 6, m_linear_combination_136).
assign(v_ca_1_624, math_arrays_1_expr58, line(math_arrays_1, 976)).
assign(v_a_1high_625, math_arrays_1_expr59, line(math_arrays_1, 977)).
assign(math_arrays_1_expr60, math_arrays_1_expr61, line(math_arrays_1, 977)).
assign(v_a_1low_626, math_arrays_1_expr62, line(math_arrays_1, 978)).
assign(v_cb_1_627, math_arrays_1_expr63, line(math_arrays_1, 979)).
assign(v_b_1high_628, math_arrays_1_expr64, line(math_arrays_1, 980)).
assign(math_arrays_1_expr65, math_arrays_1_expr66, line(math_arrays_1, 980)).
assign(v_b_1low_629, math_arrays_1_expr67, line(math_arrays_1, 981)).
assign(v_prod_1high_630, math_arrays_1_expr68, line(math_arrays_1, 984)).
assign(v_prod_1low_631, math_arrays_1_expr69, line(math_arrays_1, 985)).
assign(math_arrays_1_expr71, math_arrays_1_expr72, line(math_arrays_1, 985)).
assign(math_arrays_1_expr73, math_arrays_1_expr74, line(math_arrays_1, 985)).
assign(math_arrays_1_expr75, math_arrays_1_expr76, line(math_arrays_1, 985)).
assign(v_ca_2_632, math_arrays_1_expr80, line(math_arrays_1, 988)).
assign(v_a_2high_633, math_arrays_1_expr81, line(math_arrays_1, 989)).
assign(math_arrays_1_expr82, math_arrays_1_expr83, line(math_arrays_1, 989)).
assign(v_a_2low_634, math_arrays_1_expr84, line(math_arrays_1, 990)).
assign(v_cb_2_635, math_arrays_1_expr85, line(math_arrays_1, 991)).
assign(v_b_2high_636, math_arrays_1_expr86, line(math_arrays_1, 992)).
assign(math_arrays_1_expr87, math_arrays_1_expr88, line(math_arrays_1, 992)).
assign(v_b_2low_637, math_arrays_1_expr89, line(math_arrays_1, 993)).
assign(v_prod_2high_638, math_arrays_1_expr90, line(math_arrays_1, 996)).
assign(v_prod_2low_639, math_arrays_1_expr91, line(math_arrays_1, 997)).
assign(math_arrays_1_expr93, math_arrays_1_expr94, line(math_arrays_1, 997)).
assign(math_arrays_1_expr95, math_arrays_1_expr96, line(math_arrays_1, 997)).
assign(math_arrays_1_expr97, math_arrays_1_expr98, line(math_arrays_1, 997)).
assign(v_ca_3_640, math_arrays_1_expr102, line(math_arrays_1, 1000)).
assign(v_a_3high_641, math_arrays_1_expr103, line(math_arrays_1, 1001)).
assign(math_arrays_1_expr104, math_arrays_1_expr105, line(math_arrays_1, 1001)).
assign(v_a_3low_642, math_arrays_1_expr106, line(math_arrays_1, 1002)).
assign(v_cb_3_643, math_arrays_1_expr107, line(math_arrays_1, 1003)).
assign(v_b_3high_644, math_arrays_1_expr108, line(math_arrays_1, 1004)).
assign(math_arrays_1_expr109, math_arrays_1_expr110, line(math_arrays_1, 1004)).
assign(v_b_3low_645, math_arrays_1_expr111, line(math_arrays_1, 1005)).
assign(v_prod_3high_646, math_arrays_1_expr112, line(math_arrays_1, 1008)).
assign(v_prod_3low_647, math_arrays_1_expr113, line(math_arrays_1, 1009)).
assign(math_arrays_1_expr115, math_arrays_1_expr116, line(math_arrays_1, 1009)).
assign(math_arrays_1_expr117, math_arrays_1_expr118, line(math_arrays_1, 1009)).
assign(math_arrays_1_expr119, math_arrays_1_expr120, line(math_arrays_1, 1009)).
assign(v_s_12high_648, math_arrays_1_expr124, line(math_arrays_1, 1012)).
assign(v_s_12prime_649, math_arrays_1_expr125, line(math_arrays_1, 1013)).
assign(v_s_12low_650, math_arrays_1_expr126, line(math_arrays_1, 1014)).
assign(math_arrays_1_expr127, math_arrays_1_expr128, line(math_arrays_1, 1014)).
assign(math_arrays_1_expr129, math_arrays_1_expr130, line(math_arrays_1, 1014)).
assign(math_arrays_1_expr131, math_arrays_1_expr132, line(math_arrays_1, 1014)).
assign(v_s_123high_651, math_arrays_1_expr133, line(math_arrays_1, 1017)).
assign(v_s_123prime_652, math_arrays_1_expr134, line(math_arrays_1, 1018)).
assign(v_s_123low_653, math_arrays_1_expr135, line(math_arrays_1, 1019)).
assign(math_arrays_1_expr136, math_arrays_1_expr137, line(math_arrays_1, 1019)).
assign(math_arrays_1_expr138, math_arrays_1_expr139, line(math_arrays_1, 1019)).
assign(math_arrays_1_expr140, math_arrays_1_expr141, line(math_arrays_1, 1019)).
assign(v_result_654, math_arrays_1_expr142, line(math_arrays_1, 1023)).
assign(math_arrays_1_expr143, math_arrays_1_expr144, line(math_arrays_1, 1023)).
method_invoc(math_arrays_1_expr145, m_is_na_n_377, line(math_arrays_1, 1025)).
argument(v_result_654, 1, math_arrays_1_expr145).
ref(t_double_1, math_arrays_1_expr145, line(math_arrays_1, 1025)).
return(v_result_654, m_linear_combination_136, line(math_arrays_1, 1031)).
param(p_a_1_655, 1, m_linear_combination_421).
param(p_b_1_656, 2, m_linear_combination_421).
param(p_a_2_657, 3, m_linear_combination_421).
param(p_b_2_658, 4, m_linear_combination_421).
param(p_a_3_659, 5, m_linear_combination_421).
param(p_b_3_660, 6, m_linear_combination_421).
param(p_a_4_661, 7, m_linear_combination_421).
param(p_b_4_662, 8, m_linear_combination_421).
param(p_x_663, 1, m_equals_422).
param(p_y_664, 2, m_equals_422).
param(p_x_665, 1, m_equals_including_na_n_423).
param(p_y_666, 2, m_equals_including_na_n_423).
param(p_x_667, 1, m_equals_424).
param(p_y_668, 2, m_equals_424).
param(p_x_669, 1, m_equals_including_na_n_425).
param(p_y_670, 2, m_equals_including_na_n_425).
param(p_values_671, 1, m_normalize_array_426).
param(p_normalized_sum_672, 2, m_normalize_array_426).
throw(m_normalize_array_426, math_illegal_argument_exception).
throw(m_normalize_array_426, math_arithmetic_exception).
param(p_field_673, 1, m_build_array_427).
param(p_length_674, 2, m_build_array_427).
param(p_field_675, 1, m_build_array_428).
param(p_rows_676, 2, m_build_array_428).
param(p_columns_677, 3, m_build_array_428).
param(p_x_678, 1, m_convolve_429).
param(p_h_679, 2, m_convolve_429).
throw(m_convolve_429, null_argument_exception).
throw(m_convolve_429, no_data_exception).

%abstract_region_1 - org.apache.commons.math3.geometry.partitioning.AbstractRegion
param(p_tree_298, 1, m_abstract_region_3).
assign(f_tree_299, p_tree_298, line(abstract_region_1, 68)).
param(p_boundary_300, 1, m_abstract_region_248).
param(p_o_1_301, 1, m_compare_249).
param(p_o_2_302, 2, m_compare_249).
param(p_node_303, 1, m_visit_order_250).
param(p_node_304, 1, m_visit_internal_node_251).
param(p_node_305, 1, m_visit_leaf_node_252).
param(p_hyperplanes_306, 1, m_abstract_region_253).
param(p_new_tree_307, 1, m_build_new_254).
param(p_node_308, 1, m_insert_cuts_255).
param(p_boundary_309, 2, m_insert_cuts_255).
param(p_node_310, 1, m_is_empty_258).
param(p_region_311, 1, m_contains_259).
param(p_point_312, 1, m_check_point_93).
param(p_node_313, 1, m_check_point_260).
param(p_point_314, 2, m_check_point_260).
param(p_include_boundary_attributes_315, 1, m_get_tree_261).
param(p_node_316, 1, m_visit_order_262).
param(p_node_317, 1, m_visit_internal_node_263).
param(p_node_318, 1, m_visit_leaf_node_264).
param(p_node_319, 1, m_characterize_265).
param(p_sub_320, 2, m_characterize_265).
param(p_characterization_321, 3, m_characterize_265).
param(p_size_322, 1, m_set_size_268).
param(p_barycenter_323, 1, m_set_barycenter_270).
param(p_hyperplane_324, 1, m_side_272).
param(p_node_325, 1, m_recurse_sides_273).
param(p_sub_326, 2, m_recurse_sides_273).
param(p_sides_327, 3, m_recurse_sides_273).
param(p_sub_328, 1, m_intersection_279).
param(p_node_329, 1, m_recurse_intersection_280).
param(p_sub_330, 2, m_recurse_intersection_280).
param(p_transform_331, 1, m_apply_transform_281).
param(p_node_332, 1, m_recurse_transform_282).
param(p_transform_333, 2, m_recurse_transform_282).

%sub_line_2 - org.apache.commons.math3.geometry.euclidean.twod.SubLine
param(p_hyperplane_229, 1, m_sub_line_188).
param(p_remaining_region_230, 2, m_sub_line_188).
param(p_start_231, 1, m_sub_line_189).
param(p_end_232, 2, m_sub_line_189).
method_invoc(sub_line_2_expr1, m_abstract_sub_hyperplane_25, line(sub_line_2, 56)).
argument(sub_line_2_expr2, 1, sub_line_2_expr1).
argument(sub_line_2_expr3, 2, sub_line_2_expr1).
method_invoc(sub_line_2_expr2, m_line_150, line(sub_line_2, 56)).
argument(p_start_231, 1, sub_line_2_expr2).
argument(p_end_232, 2, sub_line_2_expr2).
method_invoc(sub_line_2_expr3, m_build_interval_set_190, line(sub_line_2, 56)).
argument(p_start_231, 1, sub_line_2_expr3).
argument(p_end_232, 2, sub_line_2_expr3).
param(p_segment_233, 1, m_sub_line_191).
param(p_sub_line_234, 1, m_intersection_193).
param(p_include_end_points_235, 2, m_intersection_193).
assign(v_line_1_236, sub_line_2_expr4, line(sub_line_2, 113)).
assign(sub_line_2_expr4, sub_line_2_expr5, line(sub_line_2, 113)).
method_invoc(sub_line_2_expr5, m_get_hyperplane_194, line(sub_line_2, 113)).
assign(v_line_2_237, sub_line_2_expr6, line(sub_line_2, 114)).
assign(sub_line_2_expr6, sub_line_2_expr7, line(sub_line_2, 114)).
method_invoc(sub_line_2_expr7, m_get_hyperplane_194, line(sub_line_2, 114)).
ref(p_sub_line_234, sub_line_2_expr7, line(sub_line_2, 114)).
assign(v_v_2d_238, sub_line_2_expr8, line(sub_line_2, 117)).
method_invoc(sub_line_2_expr8, m_intersection_167, line(sub_line_2, 117)).
argument(v_line_2_237, 1, sub_line_2_expr8).
ref(v_line_1_236, sub_line_2_expr8, line(sub_line_2, 117)).
assign(v_loc_1_239, sub_line_2_expr9, line(sub_line_2, 120)).
method_invoc(sub_line_2_expr9, m_check_point_195, line(sub_line_2, 120)).
argument(sub_line_2_expr10, 1, sub_line_2_expr9).
ref(sub_line_2_expr11, sub_line_2_expr9, line(sub_line_2, 120)).
method_invoc(sub_line_2_expr11, m_get_remaining_region_196, line(sub_line_2, 120)).
method_invoc(sub_line_2_expr10, m_to_sub_space_165, line(sub_line_2, 120)).
throw(sub_line_2_expr10, null_pointer_exception, line(sub_line_2, 120)).
argument(v_v_2d_238, 1, sub_line_2_expr10).
ref(v_line_1_236, sub_line_2_expr10, line(sub_line_2, 120)).
param(p_start_240, 1, m_build_interval_set_190).
param(p_end_241, 2, m_build_interval_set_190).
assign(v_line_242, sub_line_2_expr12, line(sub_line_2, 139)).
method_invoc(sub_line_2_expr12, m_line_150, line(sub_line_2, 139)).
argument(p_start_240, 1, sub_line_2_expr12).
argument(p_end_241, 2, sub_line_2_expr12).
return(sub_line_2_expr13, m_build_interval_set_190, line(sub_line_2, 140)).
method_invoc(sub_line_2_expr13, m_intervals_set_2, line(sub_line_2, 140)).
argument(sub_line_2_expr14, 1, sub_line_2_expr13).
argument(sub_line_2_expr15, 2, sub_line_2_expr13).
method_invoc(sub_line_2_expr14, m_get_x_35, line(sub_line_2, 140)).
ref(sub_line_2_expr16, sub_line_2_expr14, line(sub_line_2, 140)).
method_invoc(sub_line_2_expr16, m_to_sub_space_165, line(sub_line_2, 140)).
argument(p_start_240, 1, sub_line_2_expr16).
ref(v_line_242, sub_line_2_expr16, line(sub_line_2, 140)).
param(p_hyperplane_243, 1, m_build_new_197).
param(p_remaining_region_244, 2, m_build_new_197).
param(p_hyperplane_245, 1, m_side_198).
param(p_hyperplane_246, 1, m_split_199).

%vector2_d_1 - org.apache.commons.math3.geometry.euclidean.twod.Vector2D
assign(f_zero_249, vector2_d_1_expr1, line(vector2_d_1, 37)).
method_invoc(vector2_d_1_expr1, m_vector2_d_213, line(vector2_d_1, 37)).
argument(vector2_d_1_literal1, 1, vector2_d_1_expr1).
argument(vector2_d_1_literal2, 2, vector2_d_1_expr1).
assign(f_na_n_250, vector2_d_1_expr2, line(vector2_d_1, 41)).
method_invoc(vector2_d_1_expr2, m_vector2_d_213, line(vector2_d_1, 41)).
argument(q_na_n_24, 1, vector2_d_1_expr2).
argument(q_na_n_24, 2, vector2_d_1_expr2).
ref(t_double_1, q_na_n_24, line(vector2_d_1, 41)).
ref(t_double_1, q_na_n_24, line(vector2_d_1, 41)).
assign(f_positive_infinity_251, vector2_d_1_expr3, line(vector2_d_1, 45)).
assign(f_negative_infinity_252, vector2_d_1_expr4, line(vector2_d_1, 49)).
param(p_x_253, 1, m_vector2_d_213).
param(p_y_254, 2, m_vector2_d_213).
assign(f_x_255, p_x_253, line(vector2_d_1, 69)).
assign(f_y_256, p_y_254, line(vector2_d_1, 70)).
param(p_v_257, 1, m_vector2_d_214).
throw(m_vector2_d_214, dimension_mismatch_exception).
param(p_a_258, 1, m_vector2_d_215).
param(p_u_259, 2, m_vector2_d_215).
param(p_a_1_260, 1, m_vector2_d_216).
param(p_u_1_261, 2, m_vector2_d_216).
param(p_a_2_262, 3, m_vector2_d_216).
param(p_u_2_263, 4, m_vector2_d_216).
param(p_a_1_264, 1, m_vector2_d_217).
param(p_u_1_265, 2, m_vector2_d_217).
param(p_a_2_266, 3, m_vector2_d_217).
param(p_u_2_267, 4, m_vector2_d_217).
param(p_a_3_268, 5, m_vector2_d_217).
param(p_u_3_269, 6, m_vector2_d_217).
param(p_a_1_270, 1, m_vector2_d_218).
param(p_u_1_271, 2, m_vector2_d_218).
param(p_a_2_272, 3, m_vector2_d_218).
param(p_u_2_273, 4, m_vector2_d_218).
param(p_a_3_274, 5, m_vector2_d_218).
param(p_u_3_275, 6, m_vector2_d_218).
param(p_a_4_276, 7, m_vector2_d_218).
param(p_u_4_277, 8, m_vector2_d_218).
return(f_x_255, m_get_x_156, line(vector2_d_1, 150)).
return(f_y_256, m_get_y_157, line(vector2_d_1, 158)).
param(p_v_278, 1, m_add_226).
param(p_factor_279, 1, m_add_227).
param(p_v_280, 2, m_add_227).
param(p_p_281, 1, m_subtract_228).
param(p_factor_282, 1, m_subtract_229).
param(p_v_283, 2, m_subtract_229).
throw(m_normalize_230, math_arithmetic_exception).
param(p_a_284, 1, m_scalar_multiply_232).
param(p_p_285, 1, m_distance_1_235).
param(p_p_286, 1, m_distance_236).
param(p_p_287, 1, m_distance_inf_237).
param(p_p_288, 1, m_distance_sq_238).
param(p_v_289, 1, m_dot_product_239).
param(p_p_1_290, 1, m_distance_240).
param(p_p_2_291, 2, m_distance_240).
param(p_p_1_292, 1, m_distance_inf_241).
param(p_p_2_293, 2, m_distance_inf_241).
param(p_p_1_294, 1, m_distance_sq_242).
param(p_p_2_295, 2, m_distance_sq_242).
param(p_other_296, 1, m_equals_243).
param(p_format_297, 1, m_to_string_246).

%sub_line_1 - org.apache.commons.math3.geometry.euclidean.threed.SubLine
param(p_line_100, 1, m_sub_line_87).
param(p_remaining_region_101, 2, m_sub_line_87).
assign(f_line_102, p_line_100, line(sub_line_1, 45)).
assign(f_remaining_region_103, p_remaining_region_101, line(sub_line_1, 46)).
param(p_start_104, 1, m_sub_line_88).
param(p_end_105, 2, m_sub_line_88).
throw(m_sub_line_88, math_illegal_argument_exception).
method_invoc(sub_line_1_expr7, m_sub_line_87, line(sub_line_1, 56)).
argument(sub_line_1_expr8, 1, sub_line_1_expr7).
argument(sub_line_1_expr9, 2, sub_line_1_expr7).
method_invoc(sub_line_1_expr8, m_line_63, line(sub_line_1, 56)).
throw(sub_line_1_expr8, math_illegal_argument_exception, line(sub_line_1, 56)).
argument(p_start_104, 1, sub_line_1_expr8).
argument(p_end_105, 2, sub_line_1_expr8).
method_invoc(sub_line_1_expr9, m_build_interval_set_89, line(sub_line_1, 56)).
throw(sub_line_1_expr9, math_illegal_argument_exception, line(sub_line_1, 56)).
argument(p_start_104, 1, sub_line_1_expr9).
argument(p_end_105, 2, sub_line_1_expr9).
param(p_segment_106, 1, m_sub_line_90).
throw(m_sub_line_90, math_illegal_argument_exception).
param(p_sub_line_107, 1, m_intersection_92).
param(p_include_end_points_108, 2, m_intersection_92).
assign(v_v_1d_109, sub_line_1_expr10, line(sub_line_1, 113)).
method_invoc(sub_line_1_expr10, m_intersection_85, line(sub_line_1, 113)).
argument(q_line_5, 1, sub_line_1_expr10).
ref(f_line_102, sub_line_1_expr10, line(sub_line_1, 113)).
ref(p_sub_line_107, q_line_5, line(sub_line_1, 113)).
assign(v_loc_1_110, sub_line_1_expr11, line(sub_line_1, 116)).
method_invoc(sub_line_1_expr11, m_check_point_93, line(sub_line_1, 116)).
argument(sub_line_1_expr12, 1, sub_line_1_expr11).
ref(f_remaining_region_103, sub_line_1_expr11, line(sub_line_1, 116)).
method_invoc(sub_line_1_expr12, m_to_sub_space_77, line(sub_line_1, 116)).
argument(v_v_1d_109, 1, sub_line_1_expr12).
ref(f_line_102, sub_line_1_expr12, line(sub_line_1, 116)).
param(p_start_111, 1, m_build_interval_set_89).
param(p_end_112, 2, m_build_interval_set_89).
throw(m_build_interval_set_89, math_illegal_argument_exception).
assign(v_line_113, sub_line_1_expr13, line(sub_line_1, 137)).
method_invoc(sub_line_1_expr13, m_line_63, line(sub_line_1, 137)).
throw(sub_line_1_expr13, math_illegal_argument_exception, line(sub_line_1, 137)).
argument(p_start_111, 1, sub_line_1_expr13).
argument(p_end_112, 2, sub_line_1_expr13).
return(sub_line_1_expr14, m_build_interval_set_89, line(sub_line_1, 138)).
method_invoc(sub_line_1_expr14, m_intervals_set_2, line(sub_line_1, 138)).
argument(sub_line_1_expr15, 1, sub_line_1_expr14).
argument(sub_line_1_expr16, 2, sub_line_1_expr14).
method_invoc(sub_line_1_expr15, m_get_x_35, line(sub_line_1, 138)).
ref(sub_line_1_expr17, sub_line_1_expr15, line(sub_line_1, 138)).
method_invoc(sub_line_1_expr17, m_to_sub_space_77, line(sub_line_1, 138)).
argument(p_start_111, 1, sub_line_1_expr17).
ref(v_line_113, sub_line_1_expr17, line(sub_line_1, 138)).

%fast_math_1 - org.apache.commons.math3.util.FastMath
assign(f_log_max_value_378, fast_math_1_expr1, line(fast_math_1, 97)).
method_invoc(fast_math_1_expr1, m_log_313, line(fast_math_1, 97)).
argument(q_max_value_26, 1, fast_math_1_expr1).
ref(t_strict_math_8, fast_math_1_expr1, line(fast_math_1, 97)).
ref(t_double_1, q_max_value_26, line(fast_math_1, 97)).
assign(f_ln_quick_coef_379, fast_math_1_expr2, line(fast_math_1, 115)).
assign(f_ln_hi_prec_coef_380, fast_math_1_expr3, line(fast_math_1, 128)).
assign(f_sine_table_a_381, fast_math_1_expr4, line(fast_math_1, 141)).
assign(f_sine_table_b_382, fast_math_1_expr5, line(fast_math_1, 160)).
assign(f_cosine_table_a_383, fast_math_1_expr6, line(fast_math_1, 179)).
assign(f_cosine_table_b_384, fast_math_1_expr7, line(fast_math_1, 198)).
assign(f_tangent_table_a_385, fast_math_1_expr8, line(fast_math_1, 218)).
assign(f_tangent_table_b_386, fast_math_1_expr9, line(fast_math_1, 237)).
assign(f_recip_2pi_387, fast_math_1_expr10, line(fast_math_1, 256)).
assign(f_pi_o_4_bits_388, fast_math_1_expr12, line(fast_math_1, 277)).
assign(f_eighths_389, fast_math_1_expr14, line(fast_math_1, 285)).
assign(f_cbrttwo_390, fast_math_1_expr15, line(fast_math_1, 288)).
param(p_d_391, 1, m_double_high_part_315).
param(p_a_392, 1, m_sqrt_69).
return(fast_math_1_expr16, m_sqrt_69, line(fast_math_1, 385)).
method_invoc(fast_math_1_expr16, m_sqrt_316, line(fast_math_1, 385)).
argument(p_a_392, 1, fast_math_1_expr16).
ref(t_math_9, fast_math_1_expr16, line(fast_math_1, 385)).
param(p_x_393, 1, m_cosh_317).
param(p_x_394, 1, m_sinh_318).
param(p_x_395, 1, m_tanh_319).
param(p_a_396, 1, m_acosh_320).
param(p_a_397, 1, m_asinh_321).
param(p_a_398, 1, m_atanh_322).
param(p_a_399, 1, m_signum_323).
param(p_a_400, 1, m_signum_324).
param(p_a_401, 1, m_next_up_325).
param(p_a_402, 1, m_next_up_326).
param(p_x_403, 1, m_exp_328).
param(p_x_404, 1, m_exp_329).
param(p_extra_405, 2, m_exp_329).
param(p_hi_prec_406, 3, m_exp_329).
param(p_x_407, 1, m_expm_1_330).
param(p_x_408, 1, m_expm_1_331).
param(p_hi_prec_out_409, 2, m_expm_1_331).
param(p_x_410, 1, m_log_332).
param(p_x_411, 1, m_log_333).
param(p_hi_prec_412, 2, m_log_333).
param(p_x_413, 1, m_log_1p_334).
param(p_x_414, 1, m_log_10_335).
param(p_base_415, 1, m_log_336).
param(p_x_416, 2, m_log_336).
param(p_x_417, 1, m_pow_337).
param(p_y_418, 2, m_pow_337).
param(p_d_419, 1, m_pow_338).
param(p_e_420, 2, m_pow_338).
param(p_x_421, 1, m_poly_sine_339).
assign(v_x_2_422, fast_math_1_expr17, line(fast_math_1, 1680)).
assign(v_p_423, fast_math_1_literal16, line(fast_math_1, 1682)).
assign(v_p_423, fast_math_1_expr19, line(fast_math_1, 1683)).
assign(v_p_423, fast_math_1_expr23, line(fast_math_1, 1684)).
assign(v_p_423, fast_math_1_expr26, line(fast_math_1, 1685)).
assign(v_p_423, fast_math_1_expr30, line(fast_math_1, 1688)).
return(v_p_423, m_poly_sine_339, line(fast_math_1, 1690)).
param(p_x_424, 1, m_poly_cosine_340).
assign(v_x_2_425, fast_math_1_expr31, line(fast_math_1, 1700)).
assign(v_p_426, fast_math_1_literal20, line(fast_math_1, 1702)).
assign(v_p_426, fast_math_1_expr33, line(fast_math_1, 1703)).
assign(v_p_426, fast_math_1_expr37, line(fast_math_1, 1704)).
assign(v_p_426, fast_math_1_expr40, line(fast_math_1, 1705)).
assign(v_p_426, v_x_2_425, line(fast_math_1, 1706)).
return(v_p_426, m_poly_cosine_340, line(fast_math_1, 1708)).
param(p_xa_427, 1, m_sin_q_341).
param(p_xb_428, 2, m_sin_q_341).
assign(v_idx_429, fast_math_1_expr44, line(fast_math_1, 1719)).
assign(fast_math_1_expr44, fast_math_1_expr45, line(fast_math_1, 1719)).
assign(fast_math_1_expr45, fast_math_1_expr46, line(fast_math_1, 1719)).
assign(fast_math_1_expr47, fast_math_1_expr48, line(fast_math_1, 1719)).
assign(v_epsilon_430, fast_math_1_expr49, line(fast_math_1, 1720)).
ref(f_eighths_389, fast_math_1_expr50, line(fast_math_1, 1720)).
assign(v_sint_a_431, fast_math_1_expr51, line(fast_math_1, 1723)).
ref(f_sine_table_a_381, fast_math_1_expr51, line(fast_math_1, 1723)).
assign(v_sint_b_432, fast_math_1_expr52, line(fast_math_1, 1724)).
ref(f_sine_table_b_382, fast_math_1_expr52, line(fast_math_1, 1724)).
assign(v_cost_a_433, fast_math_1_expr53, line(fast_math_1, 1725)).
ref(f_cosine_table_a_383, fast_math_1_expr53, line(fast_math_1, 1725)).
assign(v_cost_b_434, fast_math_1_expr54, line(fast_math_1, 1726)).
ref(f_cosine_table_b_384, fast_math_1_expr54, line(fast_math_1, 1726)).
assign(v_sin_eps_a_435, v_epsilon_430, line(fast_math_1, 1729)).
assign(v_sin_eps_b_436, fast_math_1_expr55, line(fast_math_1, 1730)).
method_invoc(fast_math_1_expr55, m_poly_sine_339, line(fast_math_1, 1730)).
argument(v_epsilon_430, 1, fast_math_1_expr55).
assign(v_cos_eps_a_437, fast_math_1_literal26, line(fast_math_1, 1731)).
assign(v_cos_eps_b_438, fast_math_1_expr56, line(fast_math_1, 1732)).
method_invoc(fast_math_1_expr56, m_poly_cosine_340, line(fast_math_1, 1732)).
argument(v_epsilon_430, 1, fast_math_1_expr56).
assign(v_temp_439, fast_math_1_expr57, line(fast_math_1, 1735)).
assign(v_temp_2_441, fast_math_1_expr58, line(fast_math_1, 1736)).
assign(fast_math_1_expr59, fast_math_1_expr60, line(fast_math_1, 1736)).
assign(v_sin_eps_b_436, fast_math_1_expr62, line(fast_math_1, 1737)).
assign(v_sin_eps_a_435, v_temp_2_441, line(fast_math_1, 1738)).
assign(v_a_442, fast_math_1_literal27, line(fast_math_1, 1764)).
assign(v_b_443, fast_math_1_literal28, line(fast_math_1, 1765)).
assign(v_t_444, v_sint_a_431, line(fast_math_1, 1767)).
assign(v_c_445, fast_math_1_expr64, line(fast_math_1, 1768)).
assign(v_d_446, fast_math_1_expr65, line(fast_math_1, 1769)).
assign(fast_math_1_expr66, fast_math_1_expr67, line(fast_math_1, 1769)).
assign(v_a_442, v_c_445, line(fast_math_1, 1770)).
assign(v_b_443, fast_math_1_expr70, line(fast_math_1, 1771)).
assign(v_t_444, fast_math_1_expr72, line(fast_math_1, 1773)).
assign(v_c_445, fast_math_1_expr74, line(fast_math_1, 1774)).
assign(v_d_446, fast_math_1_expr76, line(fast_math_1, 1775)).
assign(fast_math_1_expr77, fast_math_1_expr78, line(fast_math_1, 1775)).
assign(v_a_442, v_c_445, line(fast_math_1, 1776)).
assign(v_b_443, fast_math_1_expr81, line(fast_math_1, 1777)).
assign(v_b_443, fast_math_1_expr83, line(fast_math_1, 1779)).
assign(v_b_443, fast_math_1_expr88, line(fast_math_1, 1794)).
assign(v_t_444, fast_math_1_expr96, line(fast_math_1, 1822)).
assign(fast_math_1_expr97, fast_math_1_expr98, line(fast_math_1, 1822)).
assign(fast_math_1_expr100, fast_math_1_expr101, line(fast_math_1, 1822)).
assign(fast_math_1_expr102, fast_math_1_expr103, line(fast_math_1, 1822)).
assign(v_c_445, fast_math_1_expr105, line(fast_math_1, 1824)).
assign(v_d_446, fast_math_1_expr107, line(fast_math_1, 1825)).
assign(fast_math_1_expr108, fast_math_1_expr109, line(fast_math_1, 1825)).
assign(v_a_442, v_c_445, line(fast_math_1, 1826)).
assign(v_b_443, fast_math_1_expr112, line(fast_math_1, 1827)).
assign(v_result_447, fast_math_1_expr114, line(fast_math_1, 1830)).
return(v_result_447, m_sin_q_341, line(fast_math_1, 1832)).
param(p_xa_448, 1, m_cos_q_342).
param(p_xb_449, 2, m_cos_q_342).
assign(v_pi_2a_450, fast_math_1_literal30, line(fast_math_1, 1843)).
assign(v_pi_2b_451, fast_math_1_literal31, line(fast_math_1, 1844)).
assign(v_a_452, fast_math_1_expr115, line(fast_math_1, 1846)).
assign(v_b_453, fast_math_1_expr116, line(fast_math_1, 1847)).
assign(fast_math_1_expr117, fast_math_1_expr118, line(fast_math_1, 1847)).
assign(v_b_453, fast_math_1_expr121, line(fast_math_1, 1848)).
return(fast_math_1_expr122, m_cos_q_342, line(fast_math_1, 1850)).
method_invoc(fast_math_1_expr122, m_sin_q_341, line(fast_math_1, 1850)).
argument(v_a_452, 1, fast_math_1_expr122).
argument(v_b_453, 2, fast_math_1_expr122).
param(p_xa_454, 1, m_tan_q_343).
param(p_xb_455, 2, m_tan_q_343).
param(p_cotan_flag_456, 3, m_tan_q_343).
param(p_x_457, 1, m_reduce_payne_hanek_344).
param(p_result_458, 2, m_reduce_payne_hanek_344).
param(p_x_459, 1, m_sin_161).
assign(v_negative_460, fast_math_1_literal32, line(fast_math_1, 2228)).
assign(v_quadrant_461, fast_math_1_literal33, line(fast_math_1, 2229)).
assign(v_xb_462, fast_math_1_literal34, line(fast_math_1, 2231)).
assign(v_xa_463, p_x_459, line(fast_math_1, 2234)).
ref(t_double_1, q_positive_infinity_27, line(fast_math_1, 2249)).
return(fast_math_1_expr131, m_sin_161, line(fast_math_1, 2276)).
method_invoc(fast_math_1_expr131, m_sin_q_341, line(fast_math_1, 2276)).
argument(v_xa_463, 1, fast_math_1_expr131).
argument(v_xb_462, 2, fast_math_1_expr131).
param(p_x_464, 1, m_cos_160).
assign(v_quadrant_465, fast_math_1_literal39, line(fast_math_1, 2295)).
assign(v_xa_466, p_x_464, line(fast_math_1, 2298)).
ref(t_double_1, q_positive_infinity_28, line(fast_math_1, 2303)).
assign(v_xb_467, fast_math_1_literal41, line(fast_math_1, 2308)).
return(fast_math_1_expr138, m_cos_160, line(fast_math_1, 2330)).
method_invoc(fast_math_1_expr138, m_cos_q_342, line(fast_math_1, 2330)).
argument(v_xa_466, 1, fast_math_1_expr138).
argument(v_xb_467, 2, fast_math_1_expr138).
param(p_x_468, 1, m_tan_345).
param(p_x_469, 1, m_atan_346).
param(p_xa_470, 1, m_atan_347).
param(p_xb_471, 2, m_atan_347).
param(p_left_plane_472, 3, m_atan_347).
param(p_y_473, 1, m_atan_2_159).
param(p_x_474, 2, m_atan_2_159).
ref(t_double_1, q_positive_infinity_28, line(fast_math_1, 2612)).
ref(t_double_1, q_negative_infinity_28, line(fast_math_1, 2624)).
ref(t_double_1, q_positive_infinity_29, line(fast_math_1, 2636)).
ref(t_double_1, q_negative_infinity_29, line(fast_math_1, 2646)).
return(fast_math_1_expr156, m_atan_2_159, line(fast_math_1, 2665)).
ref(t_math_9, q_pi_29, line(fast_math_1, 2665)).
param(p_x_476, 1, m_asin_348).
param(p_x_477, 1, m_acos_349).
param(p_x_478, 1, m_cbrt_350).
param(p_x_479, 1, m_to_radians_351).
param(p_x_480, 1, m_to_degrees_352).
param(p_x_481, 1, m_abs_353).
param(p_x_482, 1, m_abs_354).
param(p_x_483, 1, m_abs_355).
param(p_x_484, 1, m_abs_168).
return(fast_math_1_expr158, m_abs_168, line(fast_math_1, 3025)).
method_invoc(fast_math_1_expr158, m_long_bits_to_double_356, line(fast_math_1, 3025)).
argument(fast_math_1_expr159, 1, fast_math_1_expr158).
ref(t_double_1, fast_math_1_expr158, line(fast_math_1, 3025)).
method_invoc(fast_math_1_expr160, m_double_to_raw_long_bits_357, line(fast_math_1, 3025)).
argument(p_x_484, 1, fast_math_1_expr160).
ref(t_double_1, fast_math_1_expr160, line(fast_math_1, 3025)).
param(p_x_486, 1, m_ulp_358).
param(p_x_487, 1, m_ulp_359).
param(p_d_488, 1, m_scalb_360).
param(p_n_489, 2, m_scalb_360).
param(p_f_490, 1, m_scalb_361).
param(p_n_491, 2, m_scalb_361).
param(p_d_492, 1, m_next_after_362).
param(p_direction_493, 2, m_next_after_362).
param(p_f_494, 1, m_next_after_363).
param(p_direction_495, 2, m_next_after_363).
param(p_x_496, 1, m_floor_364).
param(p_x_497, 1, m_ceil_365).
param(p_x_498, 1, m_rint_366).
param(p_x_499, 1, m_round_367).
param(p_x_500, 1, m_round_368).
param(p_a_501, 1, m_min_369).
param(p_b_502, 2, m_min_369).
param(p_a_503, 1, m_min_370).
param(p_b_504, 2, m_min_370).
param(p_a_505, 1, m_min_371).
param(p_b_506, 2, m_min_371).
param(p_a_507, 1, m_min_372).
param(p_b_508, 2, m_min_372).
param(p_a_509, 1, m_max_373).
param(p_b_510, 2, m_max_373).
param(p_a_511, 1, m_max_374).
param(p_b_512, 2, m_max_374).
param(p_a_513, 1, m_max_375).
param(p_b_514, 2, m_max_375).
param(p_a_515, 1, m_max_376).
param(p_b_516, 2, m_max_376).
param(p_x_517, 1, m_hypot_158).
param(p_y_518, 2, m_hypot_158).
method_invoc(fast_math_1_expr162, m_is_infinite_7, line(fast_math_1, 3574)).
argument(p_x_517, 1, fast_math_1_expr162).
ref(t_double_1, fast_math_1_expr162, line(fast_math_1, 3574)).
method_invoc(fast_math_1_expr163, m_is_infinite_7, line(fast_math_1, 3574)).
argument(p_y_518, 1, fast_math_1_expr163).
ref(t_double_1, fast_math_1_expr163, line(fast_math_1, 3574)).
method_invoc(fast_math_1_expr165, m_is_na_n_377, line(fast_math_1, 3576)).
argument(p_x_517, 1, fast_math_1_expr165).
ref(t_double_1, fast_math_1_expr165, line(fast_math_1, 3576)).
method_invoc(fast_math_1_expr166, m_is_na_n_377, line(fast_math_1, 3576)).
argument(p_y_518, 1, fast_math_1_expr166).
ref(t_double_1, fast_math_1_expr166, line(fast_math_1, 3576)).
assign(v_exp_x_519, fast_math_1_expr167, line(fast_math_1, 3580)).
method_invoc(fast_math_1_expr167, m_get_exponent_378, line(fast_math_1, 3580)).
argument(p_x_517, 1, fast_math_1_expr167).
assign(v_exp_y_520, fast_math_1_expr168, line(fast_math_1, 3581)).
method_invoc(fast_math_1_expr168, m_get_exponent_378, line(fast_math_1, 3581)).
argument(p_y_518, 1, fast_math_1_expr168).
return(fast_math_1_expr173, m_hypot_158, line(fast_math_1, 3587)).
method_invoc(fast_math_1_expr173, m_abs_168, line(fast_math_1, 3587)).
argument(p_y_518, 1, fast_math_1_expr173).
param(p_dividend_521, 1, m_ieeeremainder_379).
param(p_divisor_522, 2, m_ieeeremainder_379).
param(p_magnitude_523, 1, m_copy_sign_380).
param(p_sign_524, 2, m_copy_sign_380).
param(p_magnitude_525, 1, m_copy_sign_381).
param(p_sign_526, 2, m_copy_sign_381).
param(p_d_527, 1, m_get_exponent_378).
return(fast_math_1_expr174, m_get_exponent_378, line(fast_math_1, 3685)).
assign(fast_math_1_expr175, fast_math_1_expr176, line(fast_math_1, 3685)).
assign(fast_math_1_expr176, fast_math_1_expr177, line(fast_math_1, 3685)).
assign(fast_math_1_expr178, fast_math_1_expr179, line(fast_math_1, 3685)).
method_invoc(fast_math_1_expr180, m_double_to_raw_long_bits_357, line(fast_math_1, 3685)).
argument(p_d_527, 1, fast_math_1_expr180).
ref(t_double_1, fast_math_1_expr180, line(fast_math_1, 3685)).
param(p_f_528, 1, m_get_exponent_382).
param(p_a_529, 1, m_main_383).
param(p_xa_530, 1, m_cody_waite_384).

%sub_oriented_point_1 - org.apache.commons.math3.geometry.euclidean.oned.SubOrientedPoint
param(p_hyperplane_20, 1, m_sub_oriented_point_19).
param(p_remaining_region_21, 2, m_sub_oriented_point_19).
method_invoc(sub_oriented_point_1_expr1, m_abstract_sub_hyperplane_25, line(sub_oriented_point_1, 39)).
argument(p_hyperplane_20, 1, sub_oriented_point_1_expr1).
argument(p_remaining_region_21, 2, sub_oriented_point_1_expr1).
param(p_hyperplane_22, 1, m_build_new_27).
param(p_remaining_region_23, 2, m_build_new_27).
param(p_hyperplane_24, 1, m_side_28).
param(p_hyperplane_25, 1, m_split_29).

%precision_1 - org.apache.commons.math3.util.Precision
assign(f_epsilon_680, precision_1_expr2, line(precision_1, 70)).
method_invoc(precision_1_expr2, m_long_bits_to_double_356, line(precision_1, 70)).
argument(precision_1_expr3, 1, precision_1_expr2).
ref(t_double_1, precision_1_expr2, line(precision_1, 70)).
assign(precision_1_expr4, precision_1_expr5, line(precision_1, 70)).
assign(f_safe_min_682, precision_1_expr7, line(precision_1, 77)).
method_invoc(precision_1_expr7, m_long_bits_to_double_356, line(precision_1, 77)).
argument(precision_1_expr8, 1, precision_1_expr7).
ref(t_double_1, precision_1_expr7, line(precision_1, 77)).
assign(precision_1_expr9, precision_1_expr10, line(precision_1, 77)).
param(p_x_683, 1, m_compare_to_431).
param(p_y_684, 2, m_compare_to_431).
param(p_eps_685, 3, m_compare_to_431).
param(p_x_686, 1, m_compare_to_432).
param(p_y_687, 2, m_compare_to_432).
param(p_max_ulps_688, 3, m_compare_to_432).
param(p_x_689, 1, m_equals_433).
param(p_y_690, 2, m_equals_433).
param(p_x_691, 1, m_equals_including_na_n_434).
param(p_y_692, 2, m_equals_including_na_n_434).
param(p_x_693, 1, m_equals_435).
param(p_y_694, 2, m_equals_435).
param(p_eps_695, 3, m_equals_435).
param(p_x_696, 1, m_equals_including_na_n_436).
param(p_y_697, 2, m_equals_including_na_n_436).
param(p_eps_698, 3, m_equals_including_na_n_436).
param(p_x_699, 1, m_equals_437).
param(p_y_700, 2, m_equals_437).
param(p_max_ulps_701, 3, m_equals_437).
param(p_x_702, 1, m_equals_including_na_n_438).
param(p_y_703, 2, m_equals_including_na_n_438).
param(p_max_ulps_704, 3, m_equals_including_na_n_438).
param(p_x_705, 1, m_equals_439).
param(p_y_706, 2, m_equals_439).
param(p_x_707, 1, m_equals_including_na_n_440).
param(p_y_708, 2, m_equals_including_na_n_440).
param(p_x_709, 1, m_equals_441).
param(p_y_710, 2, m_equals_441).
param(p_eps_711, 3, m_equals_441).
param(p_x_712, 1, m_equals_with_relative_tolerance_442).
param(p_y_713, 2, m_equals_with_relative_tolerance_442).
param(p_eps_714, 3, m_equals_with_relative_tolerance_442).
param(p_x_715, 1, m_equals_including_na_n_443).
param(p_y_716, 2, m_equals_including_na_n_443).
param(p_eps_717, 3, m_equals_including_na_n_443).
param(p_x_718, 1, m_equals_444).
param(p_y_719, 2, m_equals_444).
param(p_max_ulps_720, 3, m_equals_444).
param(p_x_721, 1, m_equals_including_na_n_445).
param(p_y_722, 2, m_equals_including_na_n_445).
param(p_max_ulps_723, 3, m_equals_including_na_n_445).
param(p_x_724, 1, m_round_446).
param(p_scale_725, 2, m_round_446).
param(p_x_726, 1, m_round_447).
param(p_scale_727, 2, m_round_447).
param(p_rounding_method_728, 3, m_round_447).
param(p_x_729, 1, m_round_448).
param(p_scale_730, 2, m_round_448).
param(p_x_731, 1, m_round_449).
param(p_scale_732, 2, m_round_449).
param(p_rounding_method_733, 3, m_round_449).
throw(m_round_449, math_arithmetic_exception).
throw(m_round_449, math_illegal_argument_exception).
param(p_unscaled_734, 1, m_round_unscaled_450).
param(p_sign_735, 2, m_round_unscaled_450).
param(p_rounding_method_736, 3, m_round_unscaled_450).
throw(m_round_unscaled_450, math_arithmetic_exception).
throw(m_round_unscaled_450, math_illegal_argument_exception).
param(p_x_737, 1, m_representable_delta_451).
param(p_original_delta_738, 2, m_representable_delta_451).

%intervals_set_1 - org.apache.commons.math3.geometry.euclidean.oned.IntervalsSet
param(p_lower_1, 1, m_intervals_set_2).
param(p_upper_2, 2, m_intervals_set_2).
method_invoc(intervals_set_1_expr1, m_abstract_region_3, line(intervals_set_1, 47)).
argument(intervals_set_1_expr2, 1, intervals_set_1_expr1).
method_invoc(intervals_set_1_expr2, m_build_tree_4, line(intervals_set_1, 47)).
argument(p_lower_1, 1, intervals_set_1_expr2).
argument(p_upper_2, 2, intervals_set_1_expr2).
param(p_tree_3, 1, m_intervals_set_5).
param(p_boundary_4, 1, m_intervals_set_6).
param(p_lower_5, 1, m_build_tree_4).
param(p_upper_6, 2, m_build_tree_4).
method_invoc(intervals_set_1_expr4, m_is_infinite_7, line(intervals_set_1, 94)).
argument(p_lower_5, 1, intervals_set_1_expr4).
ref(t_double_1, intervals_set_1_expr4, line(intervals_set_1, 94)).
assign(intervals_set_1_expr5, intervals_set_1_expr6, line(intervals_set_1, 94)).
assign(v_lower_cut_7, intervals_set_1_expr7, line(intervals_set_1, 107)).
method_invoc(intervals_set_1_expr9, m_is_infinite_7, line(intervals_set_1, 109)).
argument(p_upper_6, 1, intervals_set_1_expr9).
ref(t_double_1, intervals_set_1_expr9, line(intervals_set_1, 109)).
assign(intervals_set_1_expr10, intervals_set_1_expr11, line(intervals_set_1, 109)).
assign(v_upper_cut_8, intervals_set_1_expr12, line(intervals_set_1, 118)).
return(intervals_set_1_expr13, m_build_tree_4, line(intervals_set_1, 120)).
method_invoc(intervals_set_1_expr13, m_bsptree_8, line(intervals_set_1, 120)).
argument(v_lower_cut_7, 1, intervals_set_1_expr13).
argument(intervals_set_1_expr14, 2, intervals_set_1_expr13).
argument(intervals_set_1_expr15, 3, intervals_set_1_expr13).
argument(intervals_set_1_literal3, 4, intervals_set_1_expr13).
param(p_tree_9, 1, m_build_new_9).
param(p_node_10, 1, m_recurse_list_14).
param(p_list_11, 2, m_recurse_list_14).
param(p_lower_12, 3, m_recurse_list_14).
param(p_upper_13, 4, m_recurse_list_14).

%oriented_point_1 - org.apache.commons.math3.geometry.euclidean.oned.OrientedPoint
param(p_location_14, 1, m_oriented_point_15).
param(p_direct_15, 2, m_oriented_point_15).
assign(f_location_16, p_location_14, line(oriented_point_1, 43)).
assign(f_direct_17, p_direct_15, line(oriented_point_1, 44)).
param(p_point_18, 1, m_get_offset_17).
return(oriented_point_1_expr7, m_whole_hyperplane_18, line(oriented_point_1, 74)).
method_invoc(oriented_point_1_expr7, m_sub_oriented_point_19, line(oriented_point_1, 74)).
argument(oriented_point_1_expr8, 1, oriented_point_1_expr7).
argument(oriented_point_1_literal1, 2, oriented_point_1_expr7).
param(p_other_19, 1, m_same_orientation_as_21).

%sub_line_test_2 - org.apache.commons.math3.geometry.euclidean.twod.SubLineTest
assign(v_sub_1_247, sub_line_test_2_expr1, line(sub_line_test_2, 149)).
method_invoc(sub_line_test_2_expr1, m_sub_line_189, line(sub_line_test_2, 149)).
argument(sub_line_test_2_expr2, 1, sub_line_test_2_expr1).
argument(sub_line_test_2_expr3, 2, sub_line_test_2_expr1).
method_invoc(sub_line_test_2_expr2, m_vector2_d_213, line(sub_line_test_2, 149)).
argument(sub_line_test_2_literal1, 1, sub_line_test_2_expr2).
argument(sub_line_test_2_literal2, 2, sub_line_test_2_expr2).
method_invoc(sub_line_test_2_expr3, m_vector2_d_213, line(sub_line_test_2, 149)).
argument(sub_line_test_2_literal3, 1, sub_line_test_2_expr3).
argument(sub_line_test_2_literal4, 2, sub_line_test_2_expr3).
assign(v_sub_2_248, sub_line_test_2_expr4, line(sub_line_test_2, 150)).
method_invoc(sub_line_test_2_expr4, m_sub_line_189, line(sub_line_test_2, 150)).
argument(sub_line_test_2_expr5, 1, sub_line_test_2_expr4).
argument(sub_line_test_2_expr6, 2, sub_line_test_2_expr4).
method_invoc(sub_line_test_2_expr5, m_vector2_d_213, line(sub_line_test_2, 150)).
argument(sub_line_test_2_literal5, 1, sub_line_test_2_expr5).
argument(sub_line_test_2_literal6, 2, sub_line_test_2_expr5).
method_invoc(sub_line_test_2_expr6, m_vector2_d_213, line(sub_line_test_2, 150)).
argument(sub_line_test_2_literal7, 1, sub_line_test_2_expr6).
argument(sub_line_test_2_literal8, 2, sub_line_test_2_expr6).
method_invoc(sub_line_test_2_expr7, m_assert_null_108, line(sub_line_test_2, 151)).
argument(sub_line_test_2_expr8, 1, sub_line_test_2_expr7).
ref(t_assert_5, sub_line_test_2_expr7, line(sub_line_test_2, 151)).
method_invoc(sub_line_test_2_expr8, m_intersection_193, line(sub_line_test_2, 151)).
argument(v_sub_2_248, 1, sub_line_test_2_expr8).
argument(sub_line_test_2_literal9, 2, sub_line_test_2_expr8).
ref(v_sub_1_247, sub_line_test_2_expr8, line(sub_line_test_2, 151)).

%abstract_sub_hyperplane_1 - org.apache.commons.math3.geometry.partitioning.AbstractSubHyperplane
param(p_hyperplane_334, 1, m_abstract_sub_hyperplane_25).
param(p_remaining_region_335, 2, m_abstract_sub_hyperplane_25).
assign(f_hyperplane_336, p_hyperplane_334, line(abstract_sub_hyperplane_1, 51)).
assign(f_remaining_region_337, p_remaining_region_335, line(abstract_sub_hyperplane_1, 52)).
param(p_hyper_338, 1, m_build_new_283).
param(p_remaining_339, 2, m_build_new_283).
return(f_hyperplane_336, m_get_hyperplane_194, line(abstract_sub_hyperplane_1, 72)).
return(f_remaining_region_337, m_get_remaining_region_196, line(abstract_sub_hyperplane_1, 83)).
param(p_other_340, 1, m_reunite_286).
param(p_transform_341, 1, m_apply_transform_287).
param(p_node_342, 1, m_recurse_transform_288).
param(p_transformed_343, 2, m_recurse_transform_288).
param(p_transform_344, 3, m_recurse_transform_288).
param(p_hyper_345, 1, m_side_289).
param(p_hyper_346, 1, m_split_290).

%sub_line_test_1 - org.apache.commons.math3.geometry.euclidean.threed.SubLineTest
throw(m_test_end_points_94, math_illegal_argument_exception).
throw(m_test_no_end_points_95, math_illegal_argument_exception).
throw(m_test_no_segments_96, math_illegal_argument_exception).
throw(m_test_several_segments_97, math_illegal_argument_exception).
throw(m_test_half_infinite_neg_98, math_illegal_argument_exception).
throw(m_test_half_infinite_pos_99, math_illegal_argument_exception).
throw(m_test_intersection_inside_inside_100, math_illegal_argument_exception).
throw(m_test_intersection_inside_boundary_101, math_illegal_argument_exception).
throw(m_test_intersection_inside_outside_102, math_illegal_argument_exception).
throw(m_test_intersection_boundary_boundary_103, math_illegal_argument_exception).
throw(m_test_intersection_boundary_outside_104, math_illegal_argument_exception).
throw(m_test_intersection_outside_outside_105, math_illegal_argument_exception).
throw(m_test_intersection_not_intersecting_106, math_illegal_argument_exception).
assign(v_sub_1_114, sub_line_test_1_expr1, line(sub_line_test_1, 158)).
method_invoc(sub_line_test_1_expr1, m_sub_line_88, line(sub_line_test_1, 158)).
throw(sub_line_test_1_expr1, math_illegal_argument_exception, line(sub_line_test_1, 158)).
argument(sub_line_test_1_expr2, 1, sub_line_test_1_expr1).
argument(sub_line_test_1_expr3, 2, sub_line_test_1_expr1).
method_invoc(sub_line_test_1_expr2, m_vector3_d_107, line(sub_line_test_1, 158)).
argument(sub_line_test_1_literal1, 1, sub_line_test_1_expr2).
argument(sub_line_test_1_literal2, 2, sub_line_test_1_expr2).
argument(sub_line_test_1_literal3, 3, sub_line_test_1_expr2).
method_invoc(sub_line_test_1_expr3, m_vector3_d_107, line(sub_line_test_1, 158)).
argument(sub_line_test_1_literal4, 1, sub_line_test_1_expr3).
argument(sub_line_test_1_literal5, 2, sub_line_test_1_expr3).
argument(sub_line_test_1_literal6, 3, sub_line_test_1_expr3).
assign(v_sub_2_115, sub_line_test_1_expr4, line(sub_line_test_1, 159)).
method_invoc(sub_line_test_1_expr4, m_sub_line_88, line(sub_line_test_1, 159)).
throw(sub_line_test_1_expr4, math_illegal_argument_exception, line(sub_line_test_1, 159)).
argument(sub_line_test_1_expr5, 1, sub_line_test_1_expr4).
argument(sub_line_test_1_expr6, 2, sub_line_test_1_expr4).
method_invoc(sub_line_test_1_expr5, m_vector3_d_107, line(sub_line_test_1, 159)).
argument(sub_line_test_1_literal7, 1, sub_line_test_1_expr5).
argument(sub_line_test_1_literal8, 2, sub_line_test_1_expr5).
argument(sub_line_test_1_literal9, 3, sub_line_test_1_expr5).
method_invoc(sub_line_test_1_expr6, m_vector3_d_107, line(sub_line_test_1, 159)).
argument(sub_line_test_1_literal10, 1, sub_line_test_1_expr6).
argument(sub_line_test_1_literal11, 2, sub_line_test_1_expr6).
argument(sub_line_test_1_literal12, 3, sub_line_test_1_expr6).
method_invoc(sub_line_test_1_expr7, m_assert_null_108, line(sub_line_test_1, 160)).
argument(sub_line_test_1_expr8, 1, sub_line_test_1_expr7).
ref(t_assert_5, sub_line_test_1_expr7, line(sub_line_test_1, 160)).
method_invoc(sub_line_test_1_expr8, m_intersection_92, line(sub_line_test_1, 160)).
argument(v_sub_2_115, 1, sub_line_test_1_expr8).
argument(sub_line_test_1_literal13, 2, sub_line_test_1_expr8).
ref(v_sub_1_114, sub_line_test_1_expr8, line(sub_line_test_1, 160)).

%bsptree_1 - org.apache.commons.math3.geometry.partitioning.BSPTree
param(p_attribute_347, 1, m_bsptree_293).
assign(f_cut_348, bsptree_1_literal1, line(bsptree_1, 94)).
assign(f_plus_349, bsptree_1_literal2, line(bsptree_1, 95)).
assign(f_minus_350, bsptree_1_literal3, line(bsptree_1, 96)).
assign(f_parent_351, bsptree_1_literal4, line(bsptree_1, 97)).
assign(f_attribute_352, p_attribute_347, line(bsptree_1, 98)).
param(p_cut_353, 1, m_bsptree_8).
param(p_plus_354, 2, m_bsptree_8).
param(p_minus_355, 3, m_bsptree_8).
param(p_attribute_356, 4, m_bsptree_8).
assign(f_cut_348, p_cut_353, line(bsptree_1, 116)).
assign(f_plus_349, p_plus_354, line(bsptree_1, 117)).
assign(f_minus_350, p_minus_355, line(bsptree_1, 118)).
assign(f_parent_351, bsptree_1_literal5, line(bsptree_1, 119)).
assign(f_attribute_352, p_attribute_356, line(bsptree_1, 120)).
assign(q_parent_24, bsptree_1_expr24, line(bsptree_1, 121)).
ref(p_plus_354, q_parent_24, line(bsptree_1, 121)).
assign(q_parent_25, bsptree_1_expr26, line(bsptree_1, 122)).
ref(p_minus_355, q_parent_25, line(bsptree_1, 122)).
param(p_hyperplane_357, 1, m_insert_cut_294).
param(p_attribute_358, 1, m_set_attribute_300).
param(p_visitor_359, 1, m_visit_302).
param(p_sub_360, 1, m_fit_to_cell_303).
param(p_point_361, 1, m_get_cell_304).
param(p_tree_362, 1, m_merge_306).
param(p_leaf_merger_363, 2, m_merge_306).
param(p_tree_364, 1, m_merge_307).
param(p_leaf_merger_365, 2, m_merge_307).
param(p_parent_tree_366, 3, m_merge_307).
param(p_is_plus_child_367, 4, m_merge_307).
param(p_leaf_368, 1, m_merge_308).
param(p_tree_369, 2, m_merge_308).
param(p_parent_tree_370, 3, m_merge_308).
param(p_is_plus_child_371, 4, m_merge_308).
param(p_leaf_from_instance_372, 5, m_merge_308).
param(p_sub_373, 1, m_split_309).
param(p_parent_tree_374, 1, m_insert_in_tree_310).
param(p_is_plus_child_375, 2, m_insert_in_tree_310).
param(p_hyperplane_376, 1, m_chop_off_minus_311).
param(p_hyperplane_377, 1, m_chop_off_plus_312).

%vector1_d_1 - org.apache.commons.math3.geometry.euclidean.oned.Vector1D
assign(f_zero_26, vector1_d_1_expr1, line(vector1_d_1, 36)).
method_invoc(vector1_d_1_expr1, m_vector1_d_30, line(vector1_d_1, 36)).
argument(vector1_d_1_literal1, 1, vector1_d_1_expr1).
assign(f_one_27, vector1_d_1_expr2, line(vector1_d_1, 39)).
method_invoc(vector1_d_1_expr2, m_vector1_d_30, line(vector1_d_1, 39)).
argument(vector1_d_1_literal2, 1, vector1_d_1_expr2).
assign(f_na_n_28, vector1_d_1_expr3, line(vector1_d_1, 43)).
method_invoc(vector1_d_1_expr3, m_vector1_d_30, line(vector1_d_1, 43)).
argument(q_na_n_1, 1, vector1_d_1_expr3).
ref(t_double_1, q_na_n_1, line(vector1_d_1, 43)).
assign(f_positive_infinity_29, vector1_d_1_expr4, line(vector1_d_1, 47)).
assign(f_negative_infinity_30, vector1_d_1_expr5, line(vector1_d_1, 51)).
param(p_x_31, 1, m_vector1_d_30).
assign(f_x_32, p_x_31, line(vector1_d_1, 66)).
param(p_a_33, 1, m_vector1_d_31).
param(p_u_34, 2, m_vector1_d_31).
param(p_a_1_35, 1, m_vector1_d_32).
param(p_u_1_36, 2, m_vector1_d_32).
param(p_a_2_37, 3, m_vector1_d_32).
param(p_u_2_38, 4, m_vector1_d_32).
param(p_a_1_39, 1, m_vector1_d_33).
param(p_u_1_40, 2, m_vector1_d_33).
param(p_a_2_41, 3, m_vector1_d_33).
param(p_u_2_42, 4, m_vector1_d_33).
param(p_a_3_43, 5, m_vector1_d_33).
param(p_u_3_44, 6, m_vector1_d_33).
param(p_a_1_45, 1, m_vector1_d_34).
param(p_u_1_46, 2, m_vector1_d_34).
param(p_a_2_47, 3, m_vector1_d_34).
param(p_u_2_48, 4, m_vector1_d_34).
param(p_a_3_49, 5, m_vector1_d_34).
param(p_u_3_50, 6, m_vector1_d_34).
param(p_a_4_51, 7, m_vector1_d_34).
param(p_u_4_52, 8, m_vector1_d_34).
return(f_x_32, m_get_x_35, line(vector1_d_1, 128)).
param(p_v_53, 1, m_add_42).
param(p_factor_54, 1, m_add_43).
param(p_v_55, 2, m_add_43).
param(p_p_56, 1, m_subtract_44).
param(p_factor_57, 1, m_subtract_45).
param(p_v_58, 2, m_subtract_45).
throw(m_normalize_46, math_arithmetic_exception).
param(p_a_59, 1, m_scalar_multiply_48).
param(p_p_60, 1, m_distance_1_51).
param(p_p_61, 1, m_distance_52).
param(p_p_62, 1, m_distance_inf_53).
param(p_p_63, 1, m_distance_sq_54).
param(p_v_64, 1, m_dot_product_55).
param(p_p_1_65, 1, m_distance_56).
param(p_p_2_66, 2, m_distance_56).
param(p_p_1_67, 1, m_distance_inf_57).
param(p_p_2_68, 2, m_distance_inf_57).
param(p_p_1_69, 1, m_distance_sq_58).
param(p_p_2_70, 2, m_distance_sq_58).
param(p_other_71, 1, m_equals_59).
param(p_format_72, 1, m_to_string_62).

%vector3_d_1 - org.apache.commons.math3.geometry.euclidean.threed.Vector3D
assign(f_zero_116, vector3_d_1_expr1, line(vector3_d_1, 41)).
method_invoc(vector3_d_1_expr1, m_vector3_d_107, line(vector3_d_1, 41)).
argument(vector3_d_1_literal1, 1, vector3_d_1_expr1).
argument(vector3_d_1_literal2, 2, vector3_d_1_expr1).
argument(vector3_d_1_literal3, 3, vector3_d_1_expr1).
assign(f_plus_i_117, vector3_d_1_expr2, line(vector3_d_1, 44)).
method_invoc(vector3_d_1_expr2, m_vector3_d_107, line(vector3_d_1, 44)).
argument(vector3_d_1_literal4, 1, vector3_d_1_expr2).
argument(vector3_d_1_literal5, 2, vector3_d_1_expr2).
argument(vector3_d_1_literal6, 3, vector3_d_1_expr2).
assign(f_minus_i_118, vector3_d_1_expr3, line(vector3_d_1, 47)).
method_invoc(vector3_d_1_expr3, m_vector3_d_107, line(vector3_d_1, 47)).
argument(vector3_d_1_expr4, 1, vector3_d_1_expr3).
argument(vector3_d_1_literal7, 2, vector3_d_1_expr3).
argument(vector3_d_1_literal8, 3, vector3_d_1_expr3).
assign(f_plus_j_119, vector3_d_1_expr5, line(vector3_d_1, 50)).
method_invoc(vector3_d_1_expr5, m_vector3_d_107, line(vector3_d_1, 50)).
argument(vector3_d_1_literal10, 1, vector3_d_1_expr5).
argument(vector3_d_1_literal11, 2, vector3_d_1_expr5).
argument(vector3_d_1_literal12, 3, vector3_d_1_expr5).
assign(f_minus_j_120, vector3_d_1_expr6, line(vector3_d_1, 53)).
method_invoc(vector3_d_1_expr6, m_vector3_d_107, line(vector3_d_1, 53)).
argument(vector3_d_1_literal13, 1, vector3_d_1_expr6).
argument(vector3_d_1_expr7, 2, vector3_d_1_expr6).
argument(vector3_d_1_literal14, 3, vector3_d_1_expr6).
assign(f_plus_k_121, vector3_d_1_expr8, line(vector3_d_1, 56)).
method_invoc(vector3_d_1_expr8, m_vector3_d_107, line(vector3_d_1, 56)).
argument(vector3_d_1_literal16, 1, vector3_d_1_expr8).
argument(vector3_d_1_literal17, 2, vector3_d_1_expr8).
argument(vector3_d_1_literal18, 3, vector3_d_1_expr8).
assign(f_minus_k_122, vector3_d_1_expr9, line(vector3_d_1, 59)).
method_invoc(vector3_d_1_expr9, m_vector3_d_107, line(vector3_d_1, 59)).
argument(vector3_d_1_literal19, 1, vector3_d_1_expr9).
argument(vector3_d_1_literal20, 2, vector3_d_1_expr9).
argument(vector3_d_1_expr10, 3, vector3_d_1_expr9).
assign(f_na_n_123, vector3_d_1_expr11, line(vector3_d_1, 63)).
method_invoc(vector3_d_1_expr11, m_vector3_d_107, line(vector3_d_1, 63)).
argument(q_na_n_6, 1, vector3_d_1_expr11).
argument(q_na_n_6, 2, vector3_d_1_expr11).
argument(q_na_n_6, 3, vector3_d_1_expr11).
ref(t_double_1, q_na_n_6, line(vector3_d_1, 63)).
ref(t_double_1, q_na_n_6, line(vector3_d_1, 63)).
ref(t_double_1, q_na_n_6, line(vector3_d_1, 63)).
assign(f_positive_infinity_124, vector3_d_1_expr12, line(vector3_d_1, 67)).
assign(f_negative_infinity_125, vector3_d_1_expr13, line(vector3_d_1, 71)).
param(p_x_126, 1, m_vector3_d_107).
param(p_y_127, 2, m_vector3_d_107).
param(p_z_128, 3, m_vector3_d_107).
assign(f_x_129, p_x_126, line(vector3_d_1, 96)).
assign(f_y_130, p_y_127, line(vector3_d_1, 97)).
assign(f_z_131, p_z_128, line(vector3_d_1, 98)).
param(p_v_132, 1, m_vector3_d_109).
throw(m_vector3_d_109, dimension_mismatch_exception).
param(p_alpha_133, 1, m_vector3_d_110).
param(p_delta_134, 2, m_vector3_d_110).
param(p_a_135, 1, m_vector3_d_68).
param(p_u_136, 2, m_vector3_d_68).
assign(f_x_129, vector3_d_1_expr25, line(vector3_d_1, 138)).
ref(p_u_136, q_x_6, line(vector3_d_1, 138)).
assign(f_y_130, vector3_d_1_expr29, line(vector3_d_1, 139)).
ref(p_u_136, q_y_7, line(vector3_d_1, 139)).
assign(f_z_131, vector3_d_1_expr33, line(vector3_d_1, 140)).
ref(p_u_136, q_z_8, line(vector3_d_1, 140)).
param(p_a_1_137, 1, m_vector3_d_70).
param(p_u_1_138, 2, m_vector3_d_70).
param(p_a_2_139, 3, m_vector3_d_70).
param(p_u_2_140, 4, m_vector3_d_70).
assign(f_x_129, vector3_d_1_expr37, line(vector3_d_1, 152)).
method_invoc(vector3_d_1_expr37, m_linear_combination_111, line(vector3_d_1, 152)).
argument(p_a_1_137, 1, vector3_d_1_expr37).
argument(q_x_9, 2, vector3_d_1_expr37).
argument(p_a_2_139, 3, vector3_d_1_expr37).
argument(q_x_10, 4, vector3_d_1_expr37).
ref(t_math_arrays_6, vector3_d_1_expr37, line(vector3_d_1, 152)).
ref(p_u_1_138, q_x_9, line(vector3_d_1, 152)).
ref(p_u_2_140, q_x_10, line(vector3_d_1, 152)).
assign(f_y_130, vector3_d_1_expr41, line(vector3_d_1, 153)).
method_invoc(vector3_d_1_expr41, m_linear_combination_111, line(vector3_d_1, 153)).
argument(p_a_1_137, 1, vector3_d_1_expr41).
argument(q_y_11, 2, vector3_d_1_expr41).
argument(p_a_2_139, 3, vector3_d_1_expr41).
argument(q_y_12, 4, vector3_d_1_expr41).
ref(t_math_arrays_6, vector3_d_1_expr41, line(vector3_d_1, 153)).
ref(p_u_1_138, q_y_11, line(vector3_d_1, 153)).
ref(p_u_2_140, q_y_12, line(vector3_d_1, 153)).
assign(f_z_131, vector3_d_1_expr45, line(vector3_d_1, 154)).
method_invoc(vector3_d_1_expr45, m_linear_combination_111, line(vector3_d_1, 154)).
argument(p_a_1_137, 1, vector3_d_1_expr45).
argument(q_z_13, 2, vector3_d_1_expr45).
argument(p_a_2_139, 3, vector3_d_1_expr45).
argument(q_z_14, 4, vector3_d_1_expr45).
ref(t_math_arrays_6, vector3_d_1_expr45, line(vector3_d_1, 154)).
ref(p_u_1_138, q_z_13, line(vector3_d_1, 154)).
ref(p_u_2_140, q_z_14, line(vector3_d_1, 154)).
param(p_a_1_141, 1, m_vector3_d_112).
param(p_u_1_142, 2, m_vector3_d_112).
param(p_a_2_143, 3, m_vector3_d_112).
param(p_u_2_144, 4, m_vector3_d_112).
param(p_a_3_145, 5, m_vector3_d_112).
param(p_u_3_146, 6, m_vector3_d_112).
param(p_a_1_147, 1, m_vector3_d_113).
param(p_u_1_148, 2, m_vector3_d_113).
param(p_a_2_149, 3, m_vector3_d_113).
param(p_u_2_150, 4, m_vector3_d_113).
param(p_a_3_151, 5, m_vector3_d_113).
param(p_u_3_152, 6, m_vector3_d_113).
param(p_a_4_153, 7, m_vector3_d_113).
param(p_u_4_154, 8, m_vector3_d_113).
return(vector3_d_1_expr47, m_get_norm_82, line(vector3_d_1, 243)).
method_invoc(vector3_d_1_expr47, m_sqrt_69, line(vector3_d_1, 243)).
argument(vector3_d_1_expr48, 1, vector3_d_1_expr47).
ref(t_fast_math_2, vector3_d_1_expr47, line(vector3_d_1, 243)).
return(vector3_d_1_expr53, m_get_norm_sq_67, line(vector3_d_1, 249)).
param(p_v_155, 1, m_add_124).
param(p_factor_156, 1, m_add_125).
param(p_v_157, 2, m_add_125).
param(p_v_158, 1, m_subtract_66).
assign(v_v_3_159, vector3_d_1_expr58, line(vector3_d_1, 286)).
assign(vector3_d_1_expr58, p_v_158, line(vector3_d_1, 286)).
return(vector3_d_1_expr59, m_subtract_66, line(vector3_d_1, 287)).
method_invoc(vector3_d_1_expr59, m_vector3_d_107, line(vector3_d_1, 287)).
argument(vector3_d_1_expr60, 1, vector3_d_1_expr59).
argument(vector3_d_1_expr61, 2, vector3_d_1_expr59).
argument(vector3_d_1_expr62, 3, vector3_d_1_expr59).
ref(v_v_3_159, q_x_15, line(vector3_d_1, 287)).
ref(v_v_3_159, q_y_16, line(vector3_d_1, 287)).
ref(v_v_3_159, q_z_17, line(vector3_d_1, 287)).
param(p_factor_160, 1, m_subtract_126).
param(p_v_161, 2, m_subtract_126).
throw(m_normalize_127, math_arithmetic_exception).
throw(m_orthogonal_128, math_arithmetic_exception).
param(p_v_1_162, 1, m_angle_129).
param(p_v_2_163, 2, m_angle_129).
throw(m_angle_129, math_arithmetic_exception).
param(p_a_164, 1, m_scalar_multiply_131).
param(p_other_165, 1, m_equals_134).
param(p_v_166, 1, m_dot_product_71).
assign(v_v_3_167, vector3_d_1_expr63, line(vector3_d_1, 453)).
assign(vector3_d_1_expr63, p_v_166, line(vector3_d_1, 453)).
return(vector3_d_1_expr64, m_dot_product_71, line(vector3_d_1, 454)).
method_invoc(vector3_d_1_expr64, m_linear_combination_136, line(vector3_d_1, 454)).
argument(f_x_129, 1, vector3_d_1_expr64).
argument(q_x_18, 2, vector3_d_1_expr64).
argument(f_y_130, 3, vector3_d_1_expr64).
argument(q_y_19, 4, vector3_d_1_expr64).
argument(f_z_131, 5, vector3_d_1_expr64).
argument(q_z_20, 6, vector3_d_1_expr64).
ref(t_math_arrays_6, vector3_d_1_expr64, line(vector3_d_1, 454)).
ref(v_v_3_167, q_x_18, line(vector3_d_1, 454)).
ref(v_v_3_167, q_y_19, line(vector3_d_1, 454)).
ref(v_v_3_167, q_z_20, line(vector3_d_1, 454)).
param(p_v_168, 1, m_cross_product_137).
param(p_v_169, 1, m_distance_1_138).
param(p_v_170, 1, m_distance_139).
param(p_v_171, 1, m_distance_inf_140).
param(p_v_172, 1, m_distance_sq_141).
param(p_v_1_173, 1, m_dot_product_142).
param(p_v_2_174, 2, m_dot_product_142).
param(p_v_1_175, 1, m_cross_product_143).
param(p_v_2_176, 2, m_cross_product_143).
param(p_v_1_177, 1, m_distance_1_144).
param(p_v_2_178, 2, m_distance_1_144).
param(p_v_1_179, 1, m_distance_145).
param(p_v_2_180, 2, m_distance_145).
param(p_v_1_181, 1, m_distance_inf_146).
param(p_v_2_182, 2, m_distance_inf_146).
param(p_v_1_183, 1, m_distance_sq_147).
param(p_v_2_184, 2, m_distance_sq_147).
param(p_format_185, 1, m_to_string_149).


% Stack Trace Info.
test_failure(failure_1, 'org.apache.commons.math3.geometry.euclidean.twod.SubLineTest', 'testIntersectionParallel').
trace(trace_1, failure_1, m_to_sub_space_165, line(line_2, 182), failure_1, target).
trace(trace_2, trace_1, m_intersection_193, line(sub_line_2, 120), failure_1, target).
trace(trace_3, trace_2, m_test_intersection_parallel_212, line(sub_line_test_2, 151), failure_1, target).
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
trace(trace_25, trace_24, 'main', line(logicfl_coverage_junit4_test_runner, 36), failure_1, non_target).
test_failure(failure_2, 'org.apache.commons.math3.geometry.euclidean.threed.SubLineTest', 'testIntersectionNotIntersecting').
trace(trace_26, failure_2, m_get_abscissa_75, line(line_1, 114), failure_2, target).
trace(trace_27, trace_26, m_to_sub_space_77, line(line_1, 129), failure_2, target).
trace(trace_28, trace_27, m_intersection_92, line(sub_line_1, 116), failure_2, target).
trace(trace_29, trace_28, m_test_intersection_not_intersecting_106, line(sub_line_test_1, 160), failure_2, target).
trace(trace_30, trace_29, 'invoke0', line(jdk_internal_reflect_native_method_accessor_impl, -2), failure_2, non_target).
trace(trace_31, trace_30, 'invoke', line(jdk_internal_reflect_native_method_accessor_impl, 77), failure_2, non_target).
trace(trace_32, trace_31, 'invoke', line(jdk_internal_reflect_delegating_method_accessor_impl, 43), failure_2, non_target).
trace(trace_33, trace_32, 'invoke', line(java_lang_reflect_method, 569), failure_2, non_target).
trace(trace_34, trace_33, 'runReflectiveCall', line(org_junit_runners_model_framework_method_1, 59), failure_2, non_target).
trace(trace_35, trace_34, 'run', line(org_junit_internal_runners_model_reflective_callable, 12), failure_2, non_target).
trace(trace_36, trace_35, 'invokeExplosively', line(org_junit_runners_model_framework_method, 56), failure_2, non_target).
trace(trace_37, trace_36, 'evaluate', line(org_junit_internal_runners_statements_invoke_method, 17), failure_2, non_target).
trace(trace_38, trace_37, 'evaluate', line(org_junit_runners_parent_runner_3, 306), failure_2, non_target).
trace(trace_39, trace_38, 'evaluate', line(org_junit_runners_block_junit4_class_runner_1, 100), failure_2, non_target).
trace(trace_40, trace_39, 'runLeaf', line(org_junit_runners_parent_runner, 366), failure_2, non_target).
trace(trace_41, trace_40, 'runChild', line(org_junit_runners_block_junit4_class_runner, 103), failure_2, non_target).
trace(trace_42, trace_41, 'runChild', line(org_junit_runners_block_junit4_class_runner, 63), failure_2, non_target).
trace(trace_43, trace_42, 'run', line(org_junit_runners_parent_runner_4, 331), failure_2, non_target).
trace(trace_44, trace_43, 'schedule', line(org_junit_runners_parent_runner_1, 79), failure_2, non_target).
trace(trace_45, trace_44, 'runChildren', line(org_junit_runners_parent_runner, 329), failure_2, non_target).
trace(trace_46, trace_45, 'access$100', line(org_junit_runners_parent_runner, 66), failure_2, non_target).
trace(trace_47, trace_46, 'evaluate', line(org_junit_runners_parent_runner_2, 293), failure_2, non_target).
trace(trace_48, trace_47, 'evaluate', line(org_junit_runners_parent_runner_3, 306), failure_2, non_target).
trace(trace_49, trace_48, 'run', line(org_junit_runners_parent_runner, 413), failure_2, non_target).
trace(trace_50, trace_49, 'run', line(org_junit_runner_junit_core, 137), failure_2, non_target).
trace(trace_51, trace_50, 'main', line(logicfl_coverage_junit4_test_runner, 36), failure_2, non_target).



%%% End of Static Facts

%%% Values

val(p_point_82, null, line(line_1, 114)).
val(p_point_84, null, line(line_1, 129)).
val(p_point_206, null, line(line_2, 181)).
val(v_p_2_207, null, line(line_2, 182)).
val(sub_line_1_expr10, null, line(sub_line_1, 113)).
val(v_v_1d_109, null, line(sub_line_1, 116)).
val(sub_line_2_expr8, null, line(sub_line_2, 117)).
val(v_v_2d_238, null, line(sub_line_2, 120)).



%%% End of Facts