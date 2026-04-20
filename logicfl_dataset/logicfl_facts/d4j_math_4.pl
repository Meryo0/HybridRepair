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
trace(trace_4, trace_3, 'invoke', line(jdk_internal_reflect_direct_method_handle_accessor, 104), failure_1, non_target).
trace(trace_5, trace_4, 'invoke', line(java_lang_reflect_method, 578), failure_1, non_target).
trace(trace_6, trace_5, 'runReflectiveCall', line(org_junit_runners_model_framework_method_1, 59), failure_1, non_target).
trace(trace_7, trace_6, 'run', line(org_junit_internal_runners_model_reflective_callable, 12), failure_1, non_target).
trace(trace_8, trace_7, 'invokeExplosively', line(org_junit_runners_model_framework_method, 56), failure_1, non_target).
trace(trace_9, trace_8, 'evaluate', line(org_junit_internal_runners_statements_invoke_method, 17), failure_1, non_target).
trace(trace_10, trace_9, 'evaluate', line(org_junit_runners_parent_runner_3, 306), failure_1, non_target).
trace(trace_11, trace_10, 'evaluate', line(org_junit_runners_block_junit4_class_runner_1, 100), failure_1, non_target).
trace(trace_12, trace_11, 'runLeaf', line(org_junit_runners_parent_runner, 366), failure_1, non_target).
trace(trace_13, trace_12, 'runChild', line(org_junit_runners_block_junit4_class_runner, 103), failure_1, non_target).
trace(trace_14, trace_13, 'runChild', line(org_junit_runners_block_junit4_class_runner, 63), failure_1, non_target).
trace(trace_15, trace_14, 'run', line(org_junit_runners_parent_runner_4, 331), failure_1, non_target).
trace(trace_16, trace_15, 'schedule', line(org_junit_runners_parent_runner_1, 79), failure_1, non_target).
trace(trace_17, trace_16, 'runChildren', line(org_junit_runners_parent_runner, 329), failure_1, non_target).
trace(trace_18, trace_17, 'access$100', line(org_junit_runners_parent_runner, 66), failure_1, non_target).
trace(trace_19, trace_18, 'evaluate', line(org_junit_runners_parent_runner_2, 293), failure_1, non_target).
trace(trace_20, trace_19, 'evaluate', line(org_junit_runners_parent_runner_3, 306), failure_1, non_target).
trace(trace_21, trace_20, 'run', line(org_junit_runners_parent_runner, 413), failure_1, non_target).
trace(trace_22, trace_21, 'run', line(org_junit_runner_junit_core, 137), failure_1, non_target).
trace(trace_23, trace_22, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_1, non_target).
test_failure(failure_2, 'org.apache.commons.math3.geometry.euclidean.threed.SubLineTest', 'testIntersectionNotIntersecting').
trace(trace_24, failure_2, m_get_abscissa_75, line(line_1, 114), failure_2, target).
trace(trace_25, trace_24, m_to_sub_space_77, line(line_1, 129), failure_2, target).
trace(trace_26, trace_25, m_intersection_92, line(sub_line_1, 116), failure_2, target).
trace(trace_27, trace_26, m_test_intersection_not_intersecting_106, line(sub_line_test_1, 160), failure_2, target).
trace(trace_28, trace_27, 'invoke', line(jdk_internal_reflect_direct_method_handle_accessor, 104), failure_2, non_target).
trace(trace_29, trace_28, 'invoke', line(java_lang_reflect_method, 578), failure_2, non_target).
trace(trace_30, trace_29, 'runReflectiveCall', line(org_junit_runners_model_framework_method_1, 59), failure_2, non_target).
trace(trace_31, trace_30, 'run', line(org_junit_internal_runners_model_reflective_callable, 12), failure_2, non_target).
trace(trace_32, trace_31, 'invokeExplosively', line(org_junit_runners_model_framework_method, 56), failure_2, non_target).
trace(trace_33, trace_32, 'evaluate', line(org_junit_internal_runners_statements_invoke_method, 17), failure_2, non_target).
trace(trace_34, trace_33, 'evaluate', line(org_junit_runners_parent_runner_3, 306), failure_2, non_target).
trace(trace_35, trace_34, 'evaluate', line(org_junit_runners_block_junit4_class_runner_1, 100), failure_2, non_target).
trace(trace_36, trace_35, 'runLeaf', line(org_junit_runners_parent_runner, 366), failure_2, non_target).
trace(trace_37, trace_36, 'runChild', line(org_junit_runners_block_junit4_class_runner, 103), failure_2, non_target).
trace(trace_38, trace_37, 'runChild', line(org_junit_runners_block_junit4_class_runner, 63), failure_2, non_target).
trace(trace_39, trace_38, 'run', line(org_junit_runners_parent_runner_4, 331), failure_2, non_target).
trace(trace_40, trace_39, 'schedule', line(org_junit_runners_parent_runner_1, 79), failure_2, non_target).
trace(trace_41, trace_40, 'runChildren', line(org_junit_runners_parent_runner, 329), failure_2, non_target).
trace(trace_42, trace_41, 'access$100', line(org_junit_runners_parent_runner, 66), failure_2, non_target).
trace(trace_43, trace_42, 'evaluate', line(org_junit_runners_parent_runner_2, 293), failure_2, non_target).
trace(trace_44, trace_43, 'evaluate', line(org_junit_runners_parent_runner_3, 306), failure_2, non_target).
trace(trace_45, trace_44, 'run', line(org_junit_runners_parent_runner, 413), failure_2, non_target).
trace(trace_46, trace_45, 'run', line(org_junit_runner_junit_core, 137), failure_2, non_target).
trace(trace_47, trace_46, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_2, non_target).



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
%%% Code Facts
:- style_check(-discontiguous).
%%% Classes
class(line_1, 'org.apache.commons.math3.geometry.euclidean.threed.Line').
class(line_2, 'org.apache.commons.math3.geometry.euclidean.twod.Line').
class(math_arrays_1, 'org.apache.commons.math3.util.MathArrays').
class(abstract_region_1, 'org.apache.commons.math3.geometry.partitioning.AbstractRegion').
class(sub_line_2, 'org.apache.commons.math3.geometry.euclidean.twod.SubLine').
class(vector2_d_1, 'org.apache.commons.math3.geometry.euclidean.twod.Vector2D').
class(sub_line_1, 'org.apache.commons.math3.geometry.euclidean.threed.SubLine').
class(fast_math_1, 'org.apache.commons.math3.util.FastMath').
class(sub_oriented_point_1, 'org.apache.commons.math3.geometry.euclidean.oned.SubOrientedPoint').
class(precision_1, 'org.apache.commons.math3.util.Precision').
class(intervals_set_1, 'org.apache.commons.math3.geometry.euclidean.oned.IntervalsSet').
class(oriented_point_1, 'org.apache.commons.math3.geometry.euclidean.oned.OrientedPoint').
class(sub_line_test_2, 'org.apache.commons.math3.geometry.euclidean.twod.SubLineTest').
class(abstract_sub_hyperplane_1, 'org.apache.commons.math3.geometry.partitioning.AbstractSubHyperplane').
class(sub_line_test_1, 'org.apache.commons.math3.geometry.euclidean.threed.SubLineTest').
class(bsptree_1, 'org.apache.commons.math3.geometry.partitioning.BSPTree').
class(vector1_d_1, 'org.apache.commons.math3.geometry.euclidean.oned.Vector1D').
class(vector3_d_1, 'org.apache.commons.math3.geometry.euclidean.threed.Vector3D').

%%% Methods
%line_1 - org.apache.commons.math3.geometry.euclidean.threed.Line
method(m_line_63, range(line_1, 2078, 403, 49, 56)).
method(m_line_65, range(line_1, 2487, 294, 58, 66)).
method(m_reset_64, range(line_1, 2787, 768, 68, 81)).
method(m_revert_72, range(line_1, 3561, 264, 83, 90)).
method(m_get_direction_73, range(line_1, 3831, 160, 92, 97)).
method(m_get_origin_74, range(line_1, 3997, 162, 99, 104)).
method(m_get_abscissa_75, range(line_1, 4165, 404, 106, 115)).
method(m_point_at_76, range(line_1, 4575, 284, 117, 123)).
method(m_to_sub_space_77, range(line_1, 4865, 192, 125, 130)).
method(m_to_space_78, range(line_1, 5063, 174, 132, 137)).
method(m_is_similar_to_79, range(line_1, 5243, 556, 139, 149)).
method(m_contains_80, range(line_1, 5805, 219, 151, 157)).
method(m_distance_81, range(line_1, 6030, 362, 159, 167)).
method(m_distance_83, range(line_1, 6398, 700, 169, 187)).
method(m_closest_point_84, range(line_1, 7104, 717, 189, 208)).
method(m_intersection_85, range(line_1, 7827, 389, 210, 218)).
method(m_whole_line_86, range(line_1, 8222, 196, 220, 225)).
%line_2 - org.apache.commons.math3.geometry.euclidean.twod.Line
method(m_line_150, range(line_2, 3457, 234, 76, 83)).
method(m_line_152, range(line_2, 3697, 250, 85, 91)).
method(m_line_153, range(line_2, 3953, 500, 93, 104)).
method(m_line_154, range(line_2, 4459, 421, 106, 116)).
method(m_copy_self_155, range(line_2, 4886, 86, 118, 121)).
method(m_reset_151, range(line_2, 4978, 810, 123, 143)).
method(m_reset_162, range(line_2, 5794, 471, 145, 154)).
method(m_revert_self_163, range(line_2, 6271, 295, 156, 167)).
method(m_get_reverse_164, range(line_2, 6572, 447, 169, 177)).
method(m_to_sub_space_165, range(line_2, 7025, 196, 179, 183)).
method(m_to_space_166, range(line_2, 7227, 279, 185, 190)).
method(m_intersection_167, range(line_2, 7512, 593, 192, 204)).
method(m_whole_hyperplane_169, range(line_2, 8111, 119, 206, 209)).
method(m_whole_space_170, range(line_2, 8236, 237, 211, 217)).
method(m_get_offset_171, range(line_2, 8479, 648, 219, 232)).
method(m_get_offset_172, range(line_2, 9133, 194, 234, 238)).
method(m_same_orientation_as_173, range(line_2, 9333, 205, 240, 244)).
method(m_get_point_at_174, range(line_2, 9544, 509, 246, 256)).
method(m_contains_175, range(line_2, 10059, 230, 258, 264)).
method(m_distance_176, range(line_2, 10295, 467, 266, 277)).
method(m_is_parallel_to_177, range(line_2, 10768, 357, 279, 286)).
method(m_translate_to_point_178, range(line_2, 11131, 229, 288, 293)).
method(m_get_angle_179, range(line_2, 11366, 207, 295, 300)).
method(m_set_angle_180, range(line_2, 11579, 328, 302, 309)).
method(m_get_origin_offset_181, range(line_2, 11913, 154, 311, 316)).
method(m_set_origin_offset_182, range(line_2, 12073, 175, 318, 323)).
method(m_get_transform_183, range(line_2, 12254, 909, 325, 341)).
method(m_line_transform_184, range(line_2, 13972, 994, 365, 390)).
method(m_apply_185, range(line_2, 14976, 348, 392, 399)).
method(m_apply_186, range(line_2, 15334, 635, 401, 411)).
method(m_apply_187, range(line_2, 15979, 700, 413, 423)).
%math_arrays_1 - org.apache.commons.math3.util.MathArrays
method(m_math_arrays_388, range(math_arrays_1, 1952, 67, 49, 52)).
method(m_evaluate_389, range(math_arrays_1, 2165, 200, 59, 65)).
method(m_evaluate_390, range(math_arrays_1, 2374, 379, 66, 74)).
method(m_scale_391, range(math_arrays_1, 2765, 460, 77, 91)).
method(m_scale_in_place_392, range(math_arrays_1, 3231, 388, 93, 106)).
method(m_ebe_add_393, range(math_arrays_1, 3625, 748, 108, 129)).
method(m_ebe_subtract_394, range(math_arrays_1, 4378, 758, 130, 151)).
method(m_ebe_multiply_395, range(math_arrays_1, 5141, 775, 152, 173)).
method(m_ebe_divide_396, range(math_arrays_1, 5921, 769, 174, 195)).
method(m_distance_1_397, range(math_arrays_1, 6696, 445, 197, 210)).
method(m_distance_1_398, range(math_arrays_1, 7147, 423, 212, 225)).
method(m_distance_399, range(math_arrays_1, 7576, 483, 227, 241)).
method(m_distance_400, range(math_arrays_1, 8065, 465, 243, 257)).
method(m_distance_inf_401, range(math_arrays_1, 8536, 477, 259, 272)).
method(m_distance_inf_402, range(math_arrays_1, 9019, 465, 274, 287)).
method(m_is_monotonic_403, range(math_arrays_1, 9736, 1623, 299, 348)).
method(m_is_monotonic_404, range(math_arrays_1, 11365, 421, 350, 360)).
method(m_check_order_405, range(math_arrays_1, 11792, 1953, 362, 424)).
method(m_check_order_406, range(math_arrays_1, 13751, 482, 426, 438)).
method(m_check_order_407, range(math_arrays_1, 14239, 360, 440, 449)).
method(m_check_rectangular_408, range(math_arrays_1, 14605, 746, 451, 469)).
method(m_check_positive_409, range(math_arrays_1, 15357, 521, 471, 486)).
method(m_check_non_negative_410, range(math_arrays_1, 15884, 460, 488, 502)).
method(m_check_non_negative_411, range(math_arrays_1, 16350, 543, 504, 520)).
method(m_safe_norm_412, range(math_arrays_1, 16899, 5092, 522, 635)).
method(m_sort_in_place_413, range(math_arrays_1, 21997, 987, 637, 656)).
method(m_sort_in_place_414, range(math_arrays_1, 22990, 2859, 658, 733)).
method(m_compare_415, range(math_arrays_1, 24920, 577, 705, 720)).
method(m_copy_of_416, range(math_arrays_1, 25855, 245, 735, 743)).
method(m_copy_of_417, range(math_arrays_1, 26106, 251, 745, 753)).
method(m_copy_of_418, range(math_arrays_1, 26363, 517, 755, 768)).
method(m_copy_of_419, range(math_arrays_1, 26886, 529, 770, 783)).
method(m_linear_combination_420, range(math_arrays_1, 27421, 2964, 785, 858)).
method(m_linear_combination_111, range(math_arrays_1, 30391, 3926, 860, 935)).
method(m_linear_combination_136, range(math_arrays_1, 34323, 5019, 937, 1032)).
method(m_linear_combination_421, range(math_arrays_1, 39348, 6139, 1034, 1151)).
method(m_equals_422, range(math_arrays_1, 45493, 750, 1153, 1176)).
method(m_equals_including_na_n_423, range(math_arrays_1, 46249, 817, 1178, 1202)).
method(m_equals_424, range(math_arrays_1, 47072, 788, 1204, 1227)).
method(m_equals_including_na_n_425, range(math_arrays_1, 47866, 854, 1229, 1253)).
method(m_normalize_array_426, range(math_arrays_1, 48727, 2266, 1255, 1307)).
method(m_build_array_427, range(math_arrays_1, 51000, 619, 1309, 1324)).
method(m_build_array_428, range(math_arrays_1, 51626, 1215, 1326, 1354)).
method(m_convolve_429, range(math_arrays_1, 52848, 2056, 1356, 1401)).
%abstract_region_1 - org.apache.commons.math3.geometry.partitioning.AbstractRegion
method(m_abstract_region_247, range(abstract_region_1, 1661, 140, 49, 53)).
method(m_abstract_region_3, range(abstract_region_1, 1807, 774, 55, 69)).
method(m_abstract_region_248, range(abstract_region_1, 2587, 2847, 71, 136)).
method(m_compare_249, range(abstract_region_1, 4254, 275, 103, 107)).
method(m_visit_order_250, range(abstract_region_1, 4814, 152, 118, 121)).
method(m_visit_internal_node_251, range(abstract_region_1, 4984, 109, 123, 125)).
method(m_visit_leaf_node_252, range(abstract_region_1, 5111, 289, 127, 131)).
method(m_abstract_region_253, range(abstract_region_1, 5440, 997, 138, 164)).
method(m_build_new_254, range(abstract_region_1, 6443, 91, 166, 167)).
method(m_insert_cuts_255, range(abstract_region_1, 6540, 1844, 169, 218)).
method(m_copy_self_256, range(abstract_region_1, 8390, 113, 220, 223)).
method(m_is_empty_257, range(abstract_region_1, 8509, 87, 225, 228)).
method(m_is_empty_258, range(abstract_region_1, 8602, 540, 230, 245)).
method(m_contains_259, range(abstract_region_1, 9148, 154, 247, 250)).
method(m_check_point_93, range(abstract_region_1, 9308, 122, 252, 255)).
method(m_check_point_260, range(abstract_region_1, 9436, 998, 257, 276)).
method(m_get_tree_261, range(abstract_region_1, 10440, 339, 278, 285)).
method(m_visit_order_262, range(abstract_region_1, 11076, 122, 295, 298)).
method(m_visit_internal_node_263, range(abstract_region_1, 11208, 2368, 300, 343)).
method(m_visit_leaf_node_264, range(abstract_region_1, 13586, 83, 345, 347)).
method(m_characterize_265, range(abstract_region_1, 13679, 2576, 349, 399)).
method(m_get_boundary_size_266, range(abstract_region_1, 16268, 213, 403, 408)).
method(m_get_size_267, range(abstract_region_1, 16487, 165, 410, 416)).
method(m_set_size_268, range(abstract_region_1, 16658, 161, 418, 423)).
method(m_get_barycenter_269, range(abstract_region_1, 16825, 180, 425, 431)).
method(m_set_barycenter_270, range(abstract_region_1, 17011, 206, 433, 438)).
method(m_compute_geometrical_properties_271, range(abstract_region_1, 17223, 181, 440, 443)).
method(m_side_272, range(abstract_region_1, 17410, 346, 445, 452)).
method(m_recurse_sides_273, range(abstract_region_1, 17762, 3797, 454, 543)).
method(m_sides_274, range(abstract_region_1, 21880, 134, 554, 559)).
method(m_remember_plus_found_275, range(abstract_region_1, 22024, 172, 561, 565)).
method(m_plus_found_276, range(abstract_region_1, 22206, 231, 567, 572)).
method(m_remember_minus_found_277, range(abstract_region_1, 22447, 175, 574, 578)).
method(m_minus_found_278, range(abstract_region_1, 22632, 235, 580, 585)).
method(m_intersection_279, range(abstract_region_1, 22880, 144, 589, 592)).
method(m_recurse_intersection_280, range(abstract_region_1, 23030, 1423, 594, 628)).
method(m_apply_transform_281, range(abstract_region_1, 24459, 653, 630, 642)).
method(m_recurse_transform_282, range(abstract_region_1, 25118, 1385, 644, 672)).
%sub_line_2 - org.apache.commons.math3.geometry.euclidean.twod.SubLine
method(m_sub_line_188, range(sub_line_2, 1952, 318, 42, 49)).
method(m_sub_line_189, range(sub_line_2, 2276, 245, 51, 57)).
method(m_sub_line_191, range(sub_line_2, 2527, 243, 59, 64)).
method(m_get_segments_192, range(sub_line_2, 2776, 1436, 66, 94)).
method(m_intersection_193, range(sub_line_2, 4218, 1706, 96, 131)).
method(m_build_interval_set_190, range(sub_line_2, 5930, 413, 133, 142)).
method(m_build_new_197, range(sub_line_2, 6349, 326, 144, 149)).
method(m_side_198, range(sub_line_2, 6681, 793, 151, 170)).
method(m_split_199, range(sub_line_2, 7480, 2185, 172, 207)).
%vector2_d_1 - org.apache.commons.math3.geometry.euclidean.twod.Vector2D
method(m_vector2_d_213, range(vector2_d_1, 2388, 252, 61, 71)).
method(m_vector2_d_214, range(vector2_d_1, 2646, 432, 73, 85)).
method(m_vector2_d_215, range(vector2_d_1, 3084, 305, 87, 96)).
method(m_vector2_d_216, range(vector2_d_1, 3395, 477, 98, 109)).
method(m_vector2_d_217, range(vector2_d_1, 3878, 638, 111, 125)).
method(m_vector2_d_218, range(vector2_d_1, 4522, 779, 127, 143)).
method(m_get_x_156, range(vector2_d_1, 5307, 170, 145, 151)).
method(m_get_y_157, range(vector2_d_1, 5483, 170, 153, 159)).
method(m_to_array_219, range(vector2_d_1, 5659, 204, 161, 167)).
method(m_get_space_220, range(vector2_d_1, 5869, 98, 169, 172)).
method(m_get_zero_221, range(vector2_d_1, 5973, 79, 174, 177)).
method(m_get_norm1_222, range(vector2_d_1, 6058, 107, 179, 182)).
method(m_get_norm_223, range(vector2_d_1, 6171, 102, 184, 187)).
method(m_get_norm_sq_224, range(vector2_d_1, 6279, 88, 189, 192)).
method(m_get_norm_inf_225, range(vector2_d_1, 6373, 122, 194, 197)).
method(m_add_226, range(vector2_d_1, 6501, 170, 199, 203)).
method(m_add_227, range(vector2_d_1, 6677, 203, 205, 209)).
method(m_subtract_228, range(vector2_d_1, 6886, 165, 211, 215)).
method(m_subtract_229, range(vector2_d_1, 7057, 208, 217, 221)).
method(m_normalize_230, range(vector2_d_1, 7271, 292, 223, 230)).
method(m_negate_231, range(vector2_d_1, 7568, 94, 231, 234)).
method(m_scalar_multiply_232, range(vector2_d_1, 7668, 116, 236, 239)).
method(m_is_na_n_233, range(vector2_d_1, 7790, 106, 241, 244)).
method(m_is_infinite_234, range(vector2_d_1, 7902, 135, 246, 249)).
method(m_distance_1_235, range(vector2_d_1, 8043, 239, 251, 257)).
method(m_distance_236, range(vector2_d_1, 8288, 235, 259, 265)).
method(m_distance_inf_237, range(vector2_d_1, 8529, 254, 267, 273)).
method(m_distance_sq_238, range(vector2_d_1, 8789, 222, 275, 281)).
method(m_dot_product_239, range(vector2_d_1, 9017, 164, 283, 287)).
method(m_distance_240, range(vector2_d_1, 9187, 489, 289, 299)).
method(m_distance_inf_241, range(vector2_d_1, 9682, 510, 301, 311)).
method(m_distance_sq_242, range(vector2_d_1, 10198, 451, 313, 323)).
method(m_equals_243, range(vector2_d_1, 10655, 1158, 325, 360)).
method(m_hash_code_244, range(vector2_d_1, 11819, 343, 362, 375)).
method(m_to_string_245, range(vector2_d_1, 12168, 218, 377, 383)).
method(m_to_string_246, range(vector2_d_1, 12392, 138, 385, 388)).
%sub_line_1 - org.apache.commons.math3.geometry.euclidean.threed.SubLine
method(m_sub_line_87, range(sub_line_1, 1533, 290, 40, 47)).
method(m_sub_line_88, range(sub_line_1, 1829, 359, 49, 57)).
method(m_sub_line_90, range(sub_line_1, 2194, 360, 59, 65)).
method(m_get_segments_91, range(sub_line_1, 2560, 1364, 67, 94)).
method(m_intersection_92, range(sub_line_1, 3930, 1568, 96, 127)).
method(m_build_interval_set_89, range(sub_line_1, 5504, 528, 129, 140)).
%fast_math_1 - org.apache.commons.math3.util.FastMath
method(m_fast_math_314, range(fast_math_1, 13397, 64, 356, 359)).
method(m_double_high_part_315, range(fast_math_1, 13498, 654, 363, 377)).
method(m_sqrt_69, range(fast_math_1, 14158, 298, 379, 386)).
method(m_cosh_317, range(fast_math_1, 14462, 1822, 388, 455)).
method(m_sinh_318, range(fast_math_1, 16290, 3304, 457, 580)).
method(m_tanh_319, range(fast_math_1, 19600, 3131, 582, 704)).
method(m_acosh_320, range(fast_math_1, 22737, 273, 706, 712)).
method(m_asinh_321, range(fast_math_1, 23016, 1298, 714, 742)).
method(m_atanh_322, range(fast_math_1, 24320, 1127, 744, 772)).
method(m_signum_323, range(fast_math_1, 25453, 400, 774, 781)).
method(m_signum_324, range(fast_math_1, 25859, 402, 783, 790)).
method(m_next_up_325, range(fast_math_1, 26267, 284, 792, 798)).
method(m_next_up_326, range(fast_math_1, 26557, 281, 800, 806)).
method(m_random_327, range(fast_math_1, 26844, 272, 808, 814)).
method(m_exp_328, range(fast_math_1, 27122, 845, 816, 838)).
method(m_exp_329, range(fast_math_1, 27973, 4801, 840, 962)).
method(m_expm_1_330, range(fast_math_1, 32780, 188, 964, 970)).
method(m_expm_1_331, range(fast_math_1, 32974, 4343, 972, 1117)).
method(m_log_332, range(fast_math_1, 37323, 175, 1119, 1127)).
method(m_log_333, range(fast_math_1, 37504, 7174, 1129, 1355)).
method(m_log_1p_334, range(fast_math_1, 44684, 1157, 1357, 1393)).
method(m_log_10_335, range(fast_math_1, 45847, 696, 1395, 1415)).
method(m_log_336, range(fast_math_1, 46549, 843, 1417, 1435)).
method(m_pow_337, range(fast_math_1, 47398, 4213, 1437, 1602)).
method(m_pow_338, range(fast_math_1, 51618, 2504, 1605, 1670)).
method(m_poly_sine_339, range(fast_math_1, 54128, 517, 1672, 1691)).
method(m_poly_cosine_340, range(fast_math_1, 54651, 464, 1693, 1709)).
method(m_sin_q_341, range(fast_math_1, 55121, 3257, 1711, 1833)).
method(m_cos_q_342, range(fast_math_1, 58384, 588, 1835, 1851)).
method(m_tan_q_343, range(fast_math_1, 58978, 4517, 1853, 1996)).
method(m_reduce_payne_hanek_344, range(fast_math_1, 63501, 6468, 1998, 2219)).
method(m_sin_161, range(fast_math_1, 69975, 1750, 2221, 2286)).
method(m_cos_160, range(fast_math_1, 71731, 1433, 2288, 2340)).
method(m_tan_345, range(fast_math_1, 73170, 2015, 2342, 2417)).
method(m_atan_346, range(fast_math_1, 75191, 172, 2419, 2426)).
method(m_atan_347, range(fast_math_1, 75369, 4712, 2428, 2573)).
method(m_atan_2_159, range(fast_math_1, 80087, 3042, 2575, 2696)).
method(m_asin_348, range(fast_math_1, 83135, 1698, 2698, 2772)).
method(m_acos_349, range(fast_math_1, 84839, 1803, 2774, 2854)).
method(m_cbrt_350, range(fast_math_1, 86648, 2699, 2856, 2938)).
method(m_to_radians_351, range(fast_math_1, 89353, 782, 2940, 2963)).
method(m_to_degrees_352, range(fast_math_1, 90141, 628, 2965, 2984)).
method(m_abs_353, range(fast_math_1, 90775, 232, 2986, 2994)).
method(m_abs_354, range(fast_math_1, 91013, 426, 2996, 3008)).
method(m_abs_355, range(fast_math_1, 91445, 254, 3010, 3017)).
method(m_abs_168, range(fast_math_1, 91705, 257, 3019, 3026)).
method(m_ulp_358, range(fast_math_1, 91968, 381, 3028, 3038)).
method(m_ulp_359, range(fast_math_1, 92355, 368, 3040, 3050)).
method(m_scalb_360, range(fast_math_1, 92729, 3257, 3052, 3134)).
method(m_scalb_361, range(fast_math_1, 95992, 3139, 3136, 3218)).
method(m_next_after_362, range(fast_math_1, 99137, 2188, 3220, 3274)).
method(m_next_after_363, range(fast_math_1, 101331, 2091, 3276, 3330)).
method(m_floor_364, range(fast_math_1, 103428, 557, 3332, 3357)).
method(m_ceil_365, range(fast_math_1, 103991, 484, 3359, 3382)).
method(m_rint_366, range(fast_math_1, 104481, 699, 3384, 3405)).
method(m_round_367, range(fast_math_1, 105186, 216, 3407, 3413)).
method(m_round_368, range(fast_math_1, 105408, 217, 3415, 3421)).
method(m_min_369, range(fast_math_1, 105631, 254, 3423, 3430)).
method(m_min_370, range(fast_math_1, 105891, 257, 3432, 3439)).
method(m_min_371, range(fast_math_1, 106154, 669, 3441, 3464)).
method(m_min_372, range(fast_math_1, 106829, 698, 3466, 3489)).
method(m_max_373, range(fast_math_1, 107533, 254, 3491, 3498)).
method(m_max_374, range(fast_math_1, 107793, 257, 3500, 3507)).
method(m_max_375, range(fast_math_1, 108056, 669, 3509, 3532)).
method(m_max_376, range(fast_math_1, 108731, 698, 3534, 3557)).
method(m_hypot_158, range(fast_math_1, 109435, 1734, 3559, 3606)).
method(m_ieeeremainder_379, range(fast_math_1, 111175, 1318, 3608, 3630)).
method(m_copy_sign_380, range(fast_math_1, 112499, 880, 3632, 3651)).
method(m_copy_sign_381, range(fast_math_1, 113385, 845, 3653, 3672)).
method(m_get_exponent_378, range(fast_math_1, 114236, 530, 3674, 3686)).
method(m_get_exponent_382, range(fast_math_1, 114772, 529, 3688, 3700)).
method(m_main_383, range(fast_math_1, 115307, 1269, 3702, 3720)).
method(m_cody_waite_384, range(fast_math_1, 120865, 1153, 3823, 3862)).
method(m_get_k_385, range(fast_math_1, 122028, 94, 3864, 3869)).
method(m_get_rem_a_386, range(fast_math_1, 122131, 106, 3870, 3875)).
method(m_get_rem_b_387, range(fast_math_1, 122246, 106, 3876, 3881)).
%sub_oriented_point_1 - org.apache.commons.math3.geometry.euclidean.oned.SubOrientedPoint
method(m_sub_oriented_point_19, range(sub_oriented_point_1, 1475, 336, 33, 40)).
method(m_get_size_26, range(sub_oriented_point_1, 1817, 88, 42, 46)).
method(m_build_new_27, range(sub_oriented_point_1, 1911, 335, 48, 53)).
method(m_side_28, range(sub_oriented_point_1, 2252, 303, 55, 60)).
method(m_split_29, range(sub_oriented_point_1, 2561, 446, 62, 69)).
%precision_1 - org.apache.commons.math3.util.Precision
method(m_precision_430, range(precision_1, 2842, 66, 80, 83)).
method(m_compare_to_431, range(precision_1, 2914, 742, 85, 102)).
method(m_compare_to_432, range(precision_1, 3662, 1149, 104, 128)).
method(m_equals_433, range(precision_1, 4817, 329, 130, 140)).
method(m_equals_including_na_n_434, range(precision_1, 5152, 453, 142, 153)).
method(m_equals_435, range(precision_1, 5611, 470, 155, 167)).
method(m_equals_including_na_n_436, range(precision_1, 6087, 528, 169, 182)).
method(m_equals_437, range(precision_1, 6621, 1313, 184, 217)).
method(m_equals_including_na_n_438, range(precision_1, 7940, 678, 219, 233)).
method(m_equals_439, range(precision_1, 8624, 333, 235, 245)).
method(m_equals_including_na_n_440, range(precision_1, 8963, 459, 247, 258)).
method(m_equals_441, range(precision_1, 9428, 575, 260, 273)).
method(m_equals_with_relative_tolerance_442, range(precision_1, 10009, 827, 275, 296)).
method(m_equals_including_na_n_443, range(precision_1, 10842, 531, 298, 311)).
method(m_equals_444, range(precision_1, 11379, 1295, 313, 345)).
method(m_equals_including_na_n_445, range(precision_1, 12680, 684, 347, 361)).
method(m_round_446, range(precision_1, 13370, 503, 363, 374)).
method(m_round_447, range(precision_1, 13879, 1348, 376, 406)).
method(m_round_448, range(precision_1, 15233, 501, 408, 419)).
method(m_round_449, range(precision_1, 15740, 1046, 421, 439)).
method(m_round_unscaled_450, range(precision_1, 16792, 4589, 441, 534)).
method(m_representable_delta_451, range(precision_1, 21388, 677, 537, 554)).
%intervals_set_1 - org.apache.commons.math3.geometry.euclidean.oned.IntervalsSet
method(m_intervals_set_1, range(intervals_set_1, 1370, 119, 34, 38)).
method(m_intervals_set_2, range(intervals_set_1, 1495, 461, 40, 48)).
method(m_intervals_set_5, range(intervals_set_1, 1962, 609, 50, 61)).
method(m_intervals_set_6, range(intervals_set_1, 2577, 1253, 63, 84)).
method(m_build_tree_4, range(intervals_set_1, 3836, 2431, 86, 128)).
method(m_build_new_9, range(intervals_set_1, 6273, 147, 130, 134)).
method(m_compute_geometrical_properties_10, range(intervals_set_1, 6426, 911, 136, 158)).
method(m_get_inf_11, range(intervals_set_1, 7343, 735, 160, 175)).
method(m_get_sup_12, range(intervals_set_1, 8084, 738, 177, 192)).
method(m_as_list_13, range(intervals_set_1, 8828, 972, 194, 212)).
method(m_recurse_list_14, range(intervals_set_1, 9806, 1527, 214, 250)).
%oriented_point_1 - org.apache.commons.math3.geometry.euclidean.oned.OrientedPoint
method(m_oriented_point_15, range(oriented_point_1, 1398, 347, 37, 45)).
method(m_copy_self_16, range(oriented_point_1, 1751, 225, 47, 54)).
method(m_get_offset_17, range(oriented_point_1, 1982, 203, 56, 60)).
method(m_whole_hyperplane_18, range(oriented_point_1, 2191, 700, 62, 75)).
method(m_whole_space_20, range(oriented_point_1, 2897, 242, 77, 83)).
method(m_same_orientation_as_21, range(oriented_point_1, 3145, 161, 85, 88)).
method(m_get_location_22, range(oriented_point_1, 3312, 163, 90, 95)).
method(m_is_direct_23, range(oriented_point_1, 3481, 235, 97, 103)).
method(m_revert_self_24, range(oriented_point_1, 3722, 95, 105, 109)).
%sub_line_test_2 - org.apache.commons.math3.geometry.euclidean.twod.SubLineTest
method(m_test_end_points_200, range(sub_line_test_2, 1175, 544, 29, 39)).
method(m_test_no_end_points_201, range(sub_line_test_2, 1725, 835, 41, 54)).
method(m_test_no_segments_202, range(sub_line_test_2, 2566, 343, 56, 62)).
method(m_test_several_segments_203, range(sub_line_test_2, 2915, 447, 64, 71)).
method(m_test_half_infinite_neg_204, range(sub_line_test_2, 3368, 724, 73, 84)).
method(m_test_half_infinite_pos_205, range(sub_line_test_2, 4098, 718, 86, 97)).
method(m_test_intersection_inside_inside_206, range(sub_line_test_2, 4822, 420, 99, 105)).
method(m_test_intersection_inside_boundary_207, range(sub_line_test_2, 5248, 377, 107, 113)).
method(m_test_intersection_inside_outside_208, range(sub_line_test_2, 5631, 332, 115, 121)).
method(m_test_intersection_boundary_boundary_209, range(sub_line_test_2, 5969, 379, 123, 129)).
method(m_test_intersection_boundary_outside_210, range(sub_line_test_2, 6354, 334, 131, 137)).
method(m_test_intersection_outside_outside_211, range(sub_line_test_2, 6694, 335, 139, 145)).
method(m_test_intersection_parallel_212, range(sub_line_test_2, 7035, 339, 147, 153)).
%abstract_sub_hyperplane_1 - org.apache.commons.math3.geometry.partitioning.AbstractSubHyperplane
method(m_abstract_sub_hyperplane_25, range(abstract_sub_hyperplane_1, 1808, 415, 45, 53)).
method(m_build_new_283, range(abstract_sub_hyperplane_1, 2229, 379, 55, 61)).
method(m_copy_self_284, range(abstract_sub_hyperplane_1, 2614, 132, 63, 66)).
method(m_get_hyperplane_194, range(abstract_sub_hyperplane_1, 2752, 155, 68, 73)).
method(m_get_remaining_region_196, range(abstract_sub_hyperplane_1, 2913, 443, 75, 84)).
method(m_get_size_285, range(abstract_sub_hyperplane_1, 3362, 98, 86, 89)).
method(m_reunite_286, range(abstract_sub_hyperplane_1, 3466, 348, 91, 97)).
method(m_apply_transform_287, range(abstract_sub_hyperplane_1, 3820, 865, 99, 114)).
method(m_recurse_transform_288, range(abstract_sub_hyperplane_1, 4691, 1465, 116, 145)).
method(m_side_289, range(abstract_sub_hyperplane_1, 6162, 72, 147, 148)).
method(m_split_290, range(abstract_sub_hyperplane_1, 6240, 90, 150, 151)).
method(m_is_empty_291, range(abstract_sub_hyperplane_1, 6336, 99, 153, 156)).
%sub_line_test_1 - org.apache.commons.math3.geometry.euclidean.threed.SubLineTest
method(m_test_end_points_94, range(sub_line_test_1, 1249, 592, 30, 40)).
method(m_test_no_end_points_95, range(sub_line_test_1, 1847, 1163, 42, 59)).
method(m_test_no_segments_96, range(sub_line_test_1, 3016, 400, 61, 67)).
method(m_test_several_segments_97, range(sub_line_test_1, 3422, 523, 69, 76)).
method(m_test_half_infinite_neg_98, range(sub_line_test_1, 3951, 918, 78, 91)).
method(m_test_half_infinite_pos_99, range(sub_line_test_1, 4875, 908, 93, 106)).
method(m_test_intersection_inside_inside_100, range(sub_line_test_1, 5789, 474, 108, 114)).
method(m_test_intersection_inside_boundary_101, range(sub_line_test_1, 6269, 428, 116, 122)).
method(m_test_intersection_inside_outside_102, range(sub_line_test_1, 6703, 382, 124, 130)).
method(m_test_intersection_boundary_boundary_103, range(sub_line_test_1, 7091, 430, 132, 138)).
method(m_test_intersection_boundary_outside_104, range(sub_line_test_1, 7527, 384, 140, 146)).
method(m_test_intersection_outside_outside_105, range(sub_line_test_1, 7917, 385, 148, 154)).
method(m_test_intersection_not_intersecting_106, range(sub_line_test_1, 8312, 384, 156, 162)).
%bsptree_1 - org.apache.commons.math3.geometry.partitioning.BSPTree
method(m_bsptree_292, range(bsptree_1, 3318, 239, 80, 88)).
method(m_bsptree_293, range(bsptree_1, 3563, 319, 90, 99)).
method(m_bsptree_8, range(bsptree_1, 3888, 1012, 101, 123)).
method(m_insert_cut_294, range(bsptree_1, 4906, 1965, 125, 170)).
method(m_copy_self_295, range(bsptree_1, 6877, 548, 172, 188)).
method(m_get_cut_296, range(bsptree_1, 7431, 167, 190, 195)).
method(m_get_plus_297, range(bsptree_1, 7604, 220, 197, 203)).
method(m_get_minus_298, range(bsptree_1, 7830, 224, 205, 211)).
method(m_get_parent_299, range(bsptree_1, 8060, 157, 213, 218)).
method(m_set_attribute_300, range(bsptree_1, 8223, 237, 220, 226)).
method(m_get_attribute_301, range(bsptree_1, 8466, 316, 228, 236)).
method(m_visit_302, range(bsptree_1, 8788, 1459, 238, 281)).
method(m_fit_to_cell_303, range(bsptree_1, 10253, 838, 283, 301)).
method(m_get_cell_304, range(bsptree_1, 11097, 947, 303, 329)).
method(m_condense_305, range(bsptree_1, 12050, 613, 331, 344)).
method(m_merge_306, range(bsptree_1, 12669, 1179, 346, 366)).
method(m_merge_307, range(bsptree_1, 13854, 2058, 368, 415)).
method(m_merge_308, range(bsptree_1, 16898, 1853, 435, 465)).
method(m_split_309, range(bsptree_1, 18764, 3919, 469, 553)).
method(m_insert_in_tree_310, range(bsptree_1, 22689, 1917, 555, 605)).
method(m_chop_off_minus_311, range(bsptree_1, 24612, 515, 607, 619)).
method(m_chop_off_plus_312, range(bsptree_1, 25133, 513, 621, 633)).
%vector1_d_1 - org.apache.commons.math3.geometry.euclidean.oned.Vector1D
method(m_vector1_d_30, range(vector1_d_1, 2293, 177, 60, 67)).
method(m_vector1_d_31, range(vector1_d_1, 2476, 279, 69, 77)).
method(m_vector1_d_32, range(vector1_d_1, 2761, 437, 79, 89)).
method(m_vector1_d_33, range(vector1_d_1, 3204, 586, 91, 104)).
method(m_vector1_d_34, range(vector1_d_1, 3796, 715, 106, 121)).
method(m_get_x_35, range(vector1_d_1, 4517, 162, 123, 129)).
method(m_get_space_36, range(vector1_d_1, 4685, 98, 131, 134)).
method(m_get_zero_37, range(vector1_d_1, 4789, 79, 136, 139)).
method(m_get_norm1_38, range(vector1_d_1, 4874, 89, 141, 144)).
method(m_get_norm_39, range(vector1_d_1, 4969, 88, 146, 149)).
method(m_get_norm_sq_40, range(vector1_d_1, 5063, 80, 151, 154)).
method(m_get_norm_inf_41, range(vector1_d_1, 5149, 91, 156, 159)).
method(m_add_42, range(vector1_d_1, 5246, 155, 161, 165)).
method(m_add_43, range(vector1_d_1, 5407, 179, 167, 171)).
method(m_subtract_44, range(vector1_d_1, 5592, 155, 173, 177)).
method(m_subtract_45, range(vector1_d_1, 5753, 184, 179, 183)).
method(m_normalize_46, range(vector1_d_1, 5943, 292, 185, 192)).
method(m_negate_47, range(vector1_d_1, 6240, 90, 193, 196)).
method(m_scalar_multiply_48, range(vector1_d_1, 6336, 109, 198, 201)).
method(m_is_na_n_49, range(vector1_d_1, 6451, 87, 203, 206)).
method(m_is_infinite_50, range(vector1_d_1, 6544, 109, 208, 211)).
method(m_distance_1_51, range(vector1_d_1, 6659, 184, 213, 218)).
method(m_distance_52, range(vector1_d_1, 6849, 183, 220, 225)).
method(m_distance_inf_53, range(vector1_d_1, 7038, 186, 227, 232)).
method(m_distance_sq_54, range(vector1_d_1, 7230, 176, 234, 239)).
method(m_dot_product_55, range(vector1_d_1, 7412, 153, 241, 245)).
method(m_distance_56, range(vector1_d_1, 7571, 489, 247, 257)).
method(m_distance_inf_57, range(vector1_d_1, 8066, 510, 259, 269)).
method(m_distance_sq_58, range(vector1_d_1, 8582, 451, 271, 281)).
method(m_equals_59, range(vector1_d_1, 9039, 1140, 283, 318)).
method(m_hash_code_60, range(vector1_d_1, 10185, 316, 320, 333)).
method(m_to_string_61, range(vector1_d_1, 10507, 218, 335, 341)).
method(m_to_string_62, range(vector1_d_1, 10731, 138, 343, 346)).
%vector3_d_1 - org.apache.commons.math3.geometry.euclidean.threed.Vector3D
method(m_vector3_d_107, range(vector3_d_1, 3453, 325, 86, 99)).
method(m_vector3_d_109, range(vector3_d_1, 3784, 455, 101, 114)).
method(m_vector3_d_110, range(vector3_d_1, 4245, 574, 116, 129)).
method(m_vector3_d_68, range(vector3_d_1, 4825, 331, 131, 141)).
method(m_vector3_d_70, range(vector3_d_1, 5162, 598, 143, 155)).
method(m_vector3_d_112, range(vector3_d_1, 5766, 766, 157, 172)).
method(m_vector3_d_113, range(vector3_d_1, 6538, 913, 174, 191)).
method(m_get_x_114, range(vector3_d_1, 7457, 178, 193, 199)).
method(m_get_y_115, range(vector3_d_1, 7641, 178, 201, 207)).
method(m_get_z_116, range(vector3_d_1, 7825, 174, 209, 215)).
method(m_to_array_117, range(vector3_d_1, 8005, 207, 217, 223)).
method(m_get_space_118, range(vector3_d_1, 8218, 98, 225, 228)).
method(m_get_zero_119, range(vector3_d_1, 8322, 79, 230, 233)).
method(m_get_norm1_120, range(vector3_d_1, 8407, 125, 235, 238)).
method(m_get_norm_82, range(vector3_d_1, 8538, 200, 240, 244)).
method(m_get_norm_sq_67, range(vector3_d_1, 8744, 186, 246, 250)).
method(m_get_norm_inf_121, range(vector3_d_1, 8936, 153, 252, 255)).
method(m_get_alpha_122, range(vector3_d_1, 9095, 226, 257, 263)).
method(m_get_delta_123, range(vector3_d_1, 9327, 242, 265, 271)).
method(m_add_124, range(vector3_d_1, 9575, 182, 273, 277)).
method(m_add_125, range(vector3_d_1, 9763, 156, 279, 282)).
method(m_subtract_66, range(vector3_d_1, 9925, 187, 284, 288)).
method(m_subtract_126, range(vector3_d_1, 10118, 168, 290, 293)).
method(m_normalize_127, range(vector3_d_1, 10292, 292, 295, 302)).
method(m_orthogonal_128, range(vector3_d_1, 10590, 1461, 304, 336)).
method(m_angle_129, range(vector3_d_1, 12057, 1397, 338, 370)).
method(m_negate_130, range(vector3_d_1, 13460, 98, 372, 375)).
method(m_scalar_multiply_131, range(vector3_d_1, 13564, 123, 377, 380)).
method(m_is_na_n_132, range(vector3_d_1, 13693, 125, 382, 385)).
method(m_is_infinite_133, range(vector3_d_1, 13824, 159, 387, 390)).
method(m_equals_134, range(vector3_d_1, 13989, 1174, 392, 427)).
method(m_hash_code_135, range(vector3_d_1, 15169, 369, 429, 442)).
method(m_dot_product_71, range(vector3_d_1, 15544, 527, 444, 455)).
method(m_cross_product_137, range(vector3_d_1, 16077, 507, 457, 466)).
method(m_distance_1_138, range(vector3_d_1, 16590, 300, 468, 475)).
method(m_distance_139, range(vector3_d_1, 16896, 287, 477, 484)).
method(m_distance_inf_140, range(vector3_d_1, 17189, 328, 486, 493)).
method(m_distance_sq_141, range(vector3_d_1, 17523, 274, 495, 502)).
method(m_dot_product_142, range(vector3_d_1, 17803, 253, 504, 511)).
method(m_cross_product_143, range(vector3_d_1, 18062, 293, 513, 520)).
method(m_distance_1_144, range(vector3_d_1, 18361, 492, 522, 532)).
method(m_distance_145, range(vector3_d_1, 18859, 489, 534, 544)).
method(m_distance_inf_146, range(vector3_d_1, 19354, 510, 546, 556)).
method(m_distance_sq_147, range(vector3_d_1, 19870, 451, 558, 568)).
method(m_to_string_148, range(vector3_d_1, 20327, 218, 570, 576)).
method(m_to_string_149, range(vector3_d_1, 20551, 138, 578, 581)).

%%% Blocks
%line_1 - org.apache.commons.math3.geometry.euclidean.threed.Line
block(line_1_block1, block, line_1_code3, body, range(line_1, 2451, 30, 54, 56)).
block(line_1_block2, block, line_1_code12, body, range(line_1, 3184, 371, 73, 81)).
block(line_1_block3, block, line_1_stmt4, then_statement, range(line_1, 3308, 91, 76, 78)).
block(line_1_block4, block, line_1_code21, body, range(line_1, 4503, 66, 113, 115)).
block(line_1_block5, block, line_1_code22, body, range(line_1, 4990, 67, 128, 130)).
block(line_1_block6, block, line_1_code25, body, range(line_1, 5979, 45, 155, 157)).
block(line_1_block7, block, line_1_code26, body, range(line_1, 6226, 166, 163, 167)).
block(line_1_block8, block, line_1_code34, body, range(line_1, 7340, 481, 193, 208)).
block(line_1_block9, block, line_1_stmt15, then_statement, range(line_1, 7483, 74, 197, 200)).
block(line_1_block10, block, line_1_code51, body, range(line_1, 8100, 116, 215, 218)).
%line_2 - org.apache.commons.math3.geometry.euclidean.twod.Line
block(line_2_block1, block, line_2_code3, body, range(line_2, 3661, 30, 81, 83)).
block(line_2_block2, block, line_2_code11, body, range(line_2, 5206, 582, 128, 143)).
block(line_2_block3, block, line_2_stmt5, then_statement, range(line_2, 5377, 145, 132, 137)).
block(line_2_block4, block, line_2_stmt5, else_statement, range(line_2, 5528, 254, 137, 142)).
block(line_2_block5, block, line_2_code21, body, range(line_2, 7110, 111, 180, 183)).
block(line_2_block6, block, line_2_code26, body, range(line_2, 7787, 318, 197, 204)).
block(line_2_block7, block, line_2_stmt13, then_statement, range(line_2, 7888, 36, 199, 201)).
%math_arrays_1 - org.apache.commons.math3.util.MathArrays
block(math_arrays_1_block1, block, math_arrays_1_code3, body, range(math_arrays_1, 31605, 2712, 882, 935)).
block(math_arrays_1_block2, block, math_arrays_1_stmt21, then_statement, range(math_arrays_1, 34070, 217, 928, 932)).
block(math_arrays_1_block3, block, math_arrays_1_code63, body, range(math_arrays_1, 35767, 3575, 962, 1032)).
block(math_arrays_1_block4, block, math_arrays_1_stmt54, then_statement, range(math_arrays_1, 39085, 227, 1025, 1029)).
%abstract_region_1 - org.apache.commons.math3.geometry.partitioning.AbstractRegion
block(abstract_region_1_block1, block, abstract_region_1_code3, body, range(abstract_region_1, 2548, 33, 67, 69)).
%sub_line_2 - org.apache.commons.math3.geometry.euclidean.twod.SubLine
block(sub_line_2_block1, block, sub_line_2_code3, body, range(sub_line_2, 2447, 74, 55, 57)).
block(sub_line_2_block2, block, sub_line_2_code5, body, range(sub_line_2, 5127, 797, 110, 131)).
block(sub_line_2_block3, block, sub_line_2_code16, body, range(sub_line_2, 6163, 180, 138, 142)).
%vector2_d_1 - org.apache.commons.math3.geometry.euclidean.twod.Vector2D
block(vector2_d_1_block1, block, vector2_d_1_code29, body, range(vector2_d_1, 2593, 47, 68, 71)).
block(vector2_d_1_block2, block, vector2_d_1_code35, body, range(vector2_d_1, 5452, 25, 149, 151)).
block(vector2_d_1_block3, block, vector2_d_1_code36, body, range(vector2_d_1, 5628, 25, 157, 159)).
%sub_line_1 - org.apache.commons.math3.geometry.euclidean.threed.SubLine
block(sub_line_1_block1, block, sub_line_1_code3, body, range(sub_line_1, 1731, 92, 44, 47)).
block(sub_line_1_block2, block, sub_line_1_code11, body, range(sub_line_1, 2115, 73, 55, 57)).
block(sub_line_1_block3, block, sub_line_1_code13, body, range(sub_line_1, 4839, 659, 110, 127)).
block(sub_line_1_block4, block, sub_line_1_code18, body, range(sub_line_1, 5852, 180, 136, 140)).
%fast_math_1 - org.apache.commons.math3.util.FastMath
block(fast_math_1_block1, block, fast_math_1_code101, body, range(fast_math_1, 14420, 36, 384, 386)).
block(fast_math_1_block2, block, fast_math_1_code102, body, range(fast_math_1, 54359, 286, 1679, 1691)).
block(fast_math_1_block3, block, fast_math_1_code107, body, range(fast_math_1, 54874, 241, 1699, 1709)).
block(fast_math_1_block4, block, fast_math_1_code112, body, range(fast_math_1, 55453, 2925, 1718, 1833)).
block(fast_math_1_block5, block, fast_math_1_stmt44, then_statement, range(fast_math_1, 58072, 251, 1821, 1828)).
block(fast_math_1_block6, block, fast_math_1_code156, body, range(fast_math_1, 58740, 232, 1842, 1851)).
block(fast_math_1_block7, block, fast_math_1_code168, body, range(fast_math_1, 70103, 1622, 2227, 2286)).
block(fast_math_1_block8, block, fast_math_1_stmt62, then_statement, range(fast_math_1, 70292, 62, 2235, 2238)).
block(fast_math_1_block9, block, fast_math_1_stmt63, then_statement, range(fast_math_1, 70426, 161, 2241, 2247)).
block(fast_math_1_block10, block, fast_math_1_stmt64, then_statement, range(fast_math_1, 70645, 42, 2249, 2251)).
block(fast_math_1_block11, block, fast_math_1_stmt65, then_statement, range(fast_math_1, 70762, 357, 2254, 2263)).
block(fast_math_1_block12, block, fast_math_1_stmt66, then_statement, range(fast_math_1, 71154, 163, 2263, 2268)).
block(fast_math_1_block13, block, fast_math_1_stmt67, then_statement, range(fast_math_1, 71341, 53, 2270, 2272)).
block(fast_math_1_block14, block, fast_math_1_code175, body, range(fast_math_1, 71861, 1303, 2294, 2340)).
block(fast_math_1_block15, block, fast_math_1_stmt72, then_statement, range(fast_math_1, 71979, 33, 2299, 2301)).
block(fast_math_1_block16, block, fast_math_1_stmt73, then_statement, range(fast_math_1, 72070, 42, 2303, 2305)).
block(fast_math_1_block17, block, fast_math_1_stmt75, then_statement, range(fast_math_1, 72210, 357, 2309, 2318)).
block(fast_math_1_block18, block, fast_math_1_stmt76, then_statement, range(fast_math_1, 72602, 163, 2318, 2323)).
block(fast_math_1_block19, block, fast_math_1_code182, body, range(fast_math_1, 80318, 2811, 2581, 2696)).
block(fast_math_1_block20, block, fast_math_1_stmt79, then_statement, range(fast_math_1, 80350, 42, 2582, 2584)).
block(fast_math_1_block21, block, fast_math_1_stmt80, then_statement, range(fast_math_1, 80414, 623, 2586, 2608)).
block(fast_math_1_block22, block, fast_math_1_stmt81, then_statement, range(fast_math_1, 81115, 255, 2612, 2622)).
block(fast_math_1_block23, block, fast_math_1_stmt82, then_statement, range(fast_math_1, 81415, 258, 2624, 2634)).
block(fast_math_1_block24, block, fast_math_1_stmt83, then_statement, range(fast_math_1, 81718, 171, 2636, 2644)).
block(fast_math_1_block25, block, fast_math_1_stmt85, then_statement, range(fast_math_1, 82205, 197, 2659, 2667)).
block(fast_math_1_block26, block, fast_math_1_stmt86, then_statement, range(fast_math_1, 82243, 55, 2660, 2662)).
block(fast_math_1_block27, block, fast_math_1_stmt87, then_statement, range(fast_math_1, 82336, 56, 2664, 2666)).
block(fast_math_1_block28, block, fast_math_1_code183, body, range(fast_math_1, 91863, 99, 3024, 3026)).
block(fast_math_1_block29, block, fast_math_1_code184, body, range(fast_math_1, 110025, 1144, 3573, 3606)).
block(fast_math_1_block30, block, fast_math_1_stmt90, then_statement, range(fast_math_1, 110085, 56, 3574, 3576)).
block(fast_math_1_block31, block, fast_math_1_stmt91, then_statement, range(fast_math_1, 110187, 42, 3576, 3578)).
block(fast_math_1_block32, block, fast_math_1_stmt91, else_statement, range(fast_math_1, 110235, 928, 3578, 3605)).
block(fast_math_1_block33, block, fast_math_1_stmt94, then_statement, range(fast_math_1, 110362, 100, 3582, 3585)).
block(fast_math_1_block34, block, fast_math_1_stmt95, then_statement, range(fast_math_1, 110490, 100, 3585, 3588)).
block(fast_math_1_block35, block, fast_math_1_code191, body, range(fast_math_1, 114609, 157, 3683, 3686)).
%sub_oriented_point_1 - org.apache.commons.math3.geometry.euclidean.oned.SubOrientedPoint
block(sub_oriented_point_1_block1, block, sub_oriented_point_1_code3, body, range(sub_oriented_point_1, 1760, 51, 38, 40)).
%precision_1 - org.apache.commons.math3.util.Precision
block(precision_1_block1, block, precision_1_code3, body, range(precision_1, 2312, 524, 64, 78)).
%intervals_set_1 - org.apache.commons.math3.geometry.euclidean.oned.IntervalsSet
block(intervals_set_1_block1, block, intervals_set_1_code3, body, range(intervals_set_1, 1909, 47, 46, 48)).
block(intervals_set_1_block2, block, intervals_set_1_code4, body, range(intervals_set_1, 4308, 1959, 93, 128)).
block(intervals_set_1_block3, block, intervals_set_1_stmt2, then_statement, range(intervals_set_1, 4363, 644, 94, 106)).
block(intervals_set_1_block4, block, intervals_set_1_stmt4, then_statement, range(intervals_set_1, 5190, 352, 109, 115)).
%oriented_point_1 - org.apache.commons.math3.geometry.euclidean.oned.OrientedPoint
block(oriented_point_1_block1, block, oriented_point_1_code3, body, range(oriented_point_1, 1672, 73, 42, 45)).
block(oriented_point_1_block2, block, oriented_point_1_code11, body, range(oriented_point_1, 2835, 56, 73, 75)).
%sub_line_test_2 - org.apache.commons.math3.geometry.euclidean.twod.SubLineTest
block(sub_line_test_2_block1, block, sub_line_test_2_code4, body, range(sub_line_test_2, 7084, 290, 148, 153)).
%abstract_sub_hyperplane_1 - org.apache.commons.math3.geometry.partitioning.AbstractSubHyperplane
block(abstract_sub_hyperplane_1_block1, block, abstract_sub_hyperplane_1_code3, body, range(abstract_sub_hyperplane_1, 2125, 98, 50, 53)).
block(abstract_sub_hyperplane_1_block2, block, abstract_sub_hyperplane_1_code9, body, range(abstract_sub_hyperplane_1, 2873, 34, 71, 73)).
block(abstract_sub_hyperplane_1_block3, block, abstract_sub_hyperplane_1_code10, body, range(abstract_sub_hyperplane_1, 3317, 39, 82, 84)).
%sub_line_test_1 - org.apache.commons.math3.geometry.euclidean.threed.SubLineTest
block(sub_line_test_1_block1, block, sub_line_test_1_code4, body, range(sub_line_test_1, 8404, 292, 157, 162)).
%bsptree_1 - org.apache.commons.math3.geometry.partitioning.BSPTree
block(bsptree_1_block1, block, bsptree_1_code3, body, range(bsptree_1, 3747, 135, 93, 99)).
block(bsptree_1_block2, block, bsptree_1_code8, body, range(bsptree_1, 4671, 229, 115, 123)).
%vector1_d_1 - org.apache.commons.math3.geometry.euclidean.oned.Vector1D
block(vector1_d_1_block1, block, vector1_d_1_code36, body, range(vector1_d_1, 2443, 27, 65, 67)).
block(vector1_d_1_block2, block, vector1_d_1_code40, body, range(vector1_d_1, 4654, 25, 127, 129)).
%vector3_d_1 - org.apache.commons.math3.geometry.euclidean.threed.Vector3D
block(vector3_d_1_block1, block, vector3_d_1_code71, body, range(vector3_d_1, 3711, 67, 95, 99)).
block(vector3_d_1_block2, block, vector3_d_1_code79, body, range(vector3_d_1, 5071, 85, 137, 141)).
block(vector3_d_1_block3, block, vector3_d_1_code85, body, range(vector3_d_1, 5552, 208, 151, 155)).
block(vector3_d_1_block4, block, vector3_d_1_code95, body, range(vector3_d_1, 8587, 151, 241, 244)).
block(vector3_d_1_block5, block, vector3_d_1_code96, body, range(vector3_d_1, 8795, 135, 247, 250)).
block(vector3_d_1_block6, block, vector3_d_1_code97, body, range(vector3_d_1, 10004, 108, 285, 288)).
block(vector3_d_1_block7, block, vector3_d_1_code103, body, range(vector3_d_1, 15950, 121, 452, 455)).

%%% Statements
%line_1 - org.apache.commons.math3.geometry.euclidean.threed.Line
stmt(line_1_stmt1, expression_statement, line_1_block1, (statements, 0), range(line_1, 2461, 14, 55, 55)).
stmt(line_1_stmt2, variable_declaration_statement, line_1_block2, (statements, 0), range(line_1, 3194, 39, 74, 74)).
stmt(line_1_stmt3, variable_declaration_statement, line_1_block2, (statements, 1), range(line_1, 3242, 39, 75, 75)).
stmt(line_1_stmt4, if_statement, line_1_block2, (statements, 2), range(line_1, 3290, 109, 76, 78)).
stmt(line_1_stmt5, expression_statement, line_1_block2, (statements, 3), range(line_1, 3408, 65, 79, 79)).
stmt(line_1_stmt6, expression_statement, line_1_block2, (statements, 4), range(line_1, 3482, 67, 80, 80)).
stmt(line_1_stmt7, return_statement, line_1_block4, (statements, 0), range(line_1, 4513, 50, 114, 114)).
stmt(line_1_stmt8, return_statement, line_1_block5, (statements, 0), range(line_1, 5000, 51, 129, 129)).
stmt(line_1_stmt9, return_statement, line_1_block6, (statements, 0), range(line_1, 5989, 29, 156, 156)).
stmt(line_1_stmt10, variable_declaration_statement, line_1_block7, (statements, 0), range(line_1, 6236, 36, 164, 164)).
stmt(line_1_stmt11, variable_declaration_statement, line_1_block7, (statements, 1), range(line_1, 6281, 77, 165, 165)).
stmt(line_1_stmt12, return_statement, line_1_block7, (statements, 2), range(line_1, 6367, 19, 166, 166)).
stmt(line_1_stmt13, variable_declaration_statement, line_1_block8, (statements, 0), range(line_1, 7351, 56, 195, 195)).
stmt(line_1_stmt14, variable_declaration_statement, line_1_block8, (statements, 1), range(line_1, 7416, 31, 196, 196)).
stmt(line_1_stmt15, if_statement, line_1_block8, (statements, 2), range(line_1, 7456, 101, 197, 200)).
stmt(line_1_stmt16, variable_declaration_statement, line_1_block8, (statements, 3), range(line_1, 7567, 49, 202, 202)).
stmt(line_1_stmt17, variable_declaration_statement, line_1_block8, (statements, 4), range(line_1, 7625, 53, 203, 203)).
stmt(line_1_stmt18, variable_declaration_statement, line_1_block8, (statements, 5), range(line_1, 7687, 58, 204, 204)).
stmt(line_1_stmt19, return_statement, line_1_block8, (statements, 6), range(line_1, 7755, 59, 206, 206)).
stmt(line_1_stmt20, variable_declaration_statement, line_1_block10, (statements, 0), range(line_1, 8110, 44, 216, 216)).
stmt(line_1_stmt21, return_statement, line_1_block10, (statements, 1), range(line_1, 8163, 47, 217, 217)).
%line_2 - org.apache.commons.math3.geometry.euclidean.twod.Line
stmt(line_2_stmt1, expression_statement, line_2_block1, (statements, 0), range(line_2, 3671, 14, 82, 82)).
stmt(line_2_stmt2, variable_declaration_statement, line_2_block2, (statements, 0), range(line_2, 5216, 40, 129, 129)).
stmt(line_2_stmt3, variable_declaration_statement, line_2_block2, (statements, 1), range(line_2, 5265, 40, 130, 130)).
stmt(line_2_stmt4, variable_declaration_statement, line_2_block2, (statements, 2), range(line_2, 5314, 40, 131, 131)).
stmt(line_2_stmt5, if_statement, line_2_block2, (statements, 3), range(line_2, 5363, 419, 132, 142)).
stmt(line_2_stmt6, expression_statement, line_2_block4, (statements, 0), range(line_2, 5542, 54, 138, 138)).
stmt(line_2_stmt7, expression_statement, line_2_block4, (statements, 1), range(line_2, 5609, 35, 139, 139)).
stmt(line_2_stmt8, expression_statement, line_2_block4, (statements, 2), range(line_2, 5657, 35, 140, 140)).
stmt(line_2_stmt9, expression_statement, line_2_block4, (statements, 3), range(line_2, 5705, 67, 141, 141)).
stmt(line_2_stmt10, variable_declaration_statement, line_2_block5, (statements, 0), range(line_2, 7120, 31, 181, 181)).
stmt(line_2_stmt11, return_statement, line_2_block5, (statements, 1), range(line_2, 7160, 55, 182, 182)).
stmt(line_2_stmt12, variable_declaration_statement, line_2_block6, (statements, 0), range(line_2, 7797, 51, 198, 198)).
stmt(line_2_stmt13, if_statement, line_2_block6, (statements, 1), range(line_2, 7857, 67, 199, 201)).
stmt(line_2_stmt14, return_statement, line_2_block7, (statements, 0), range(line_2, 7902, 12, 200, 200)).
%math_arrays_1 - org.apache.commons.math3.util.MathArrays
stmt(math_arrays_1_stmt1, variable_declaration_statement, math_arrays_1_block1, (statements, 0), range(math_arrays_1, 32497, 44, 896, 896)).
stmt(math_arrays_1_stmt2, variable_declaration_statement, math_arrays_1_block1, (statements, 1), range(math_arrays_1, 32550, 43, 897, 897)).
stmt(math_arrays_1_stmt3, variable_declaration_statement, math_arrays_1_block1, (statements, 2), range(math_arrays_1, 32602, 38, 898, 898)).
stmt(math_arrays_1_stmt4, variable_declaration_statement, math_arrays_1_block1, (statements, 3), range(math_arrays_1, 32649, 44, 899, 899)).
stmt(math_arrays_1_stmt5, variable_declaration_statement, math_arrays_1_block1, (statements, 4), range(math_arrays_1, 32702, 43, 900, 900)).
stmt(math_arrays_1_stmt6, variable_declaration_statement, math_arrays_1_block1, (statements, 5), range(math_arrays_1, 32754, 38, 901, 901)).
stmt(math_arrays_1_stmt7, variable_declaration_statement, math_arrays_1_block1, (statements, 6), range(math_arrays_1, 32845, 34, 904, 904)).
stmt(math_arrays_1_stmt8, variable_declaration_statement, math_arrays_1_block1, (statements, 7), range(math_arrays_1, 32888, 110, 905, 905)).
stmt(math_arrays_1_stmt9, variable_declaration_statement, math_arrays_1_block1, (statements, 8), range(math_arrays_1, 33058, 44, 908, 908)).
stmt(math_arrays_1_stmt10, variable_declaration_statement, math_arrays_1_block1, (statements, 9), range(math_arrays_1, 33111, 43, 909, 909)).
stmt(math_arrays_1_stmt11, variable_declaration_statement, math_arrays_1_block1, (statements, 10), range(math_arrays_1, 33163, 38, 910, 910)).
stmt(math_arrays_1_stmt12, variable_declaration_statement, math_arrays_1_block1, (statements, 11), range(math_arrays_1, 33210, 44, 911, 911)).
stmt(math_arrays_1_stmt13, variable_declaration_statement, math_arrays_1_block1, (statements, 12), range(math_arrays_1, 33263, 43, 912, 912)).
stmt(math_arrays_1_stmt14, variable_declaration_statement, math_arrays_1_block1, (statements, 13), range(math_arrays_1, 33315, 38, 913, 913)).
stmt(math_arrays_1_stmt15, variable_declaration_statement, math_arrays_1_block1, (statements, 14), range(math_arrays_1, 33406, 34, 916, 916)).
stmt(math_arrays_1_stmt16, variable_declaration_statement, math_arrays_1_block1, (statements, 15), range(math_arrays_1, 33449, 110, 917, 917)).
stmt(math_arrays_1_stmt17, variable_declaration_statement, math_arrays_1_block1, (statements, 16), range(math_arrays_1, 33616, 48, 920, 920)).
stmt(math_arrays_1_stmt18, variable_declaration_statement, math_arrays_1_block1, (statements, 17), range(math_arrays_1, 33673, 46, 921, 921)).
stmt(math_arrays_1_stmt19, variable_declaration_statement, math_arrays_1_block1, (statements, 18), range(math_arrays_1, 33728, 86, 922, 922)).
stmt(math_arrays_1_stmt20, variable_declaration_statement, math_arrays_1_block1, (statements, 19), range(math_arrays_1, 33977, 57, 926, 926)).
stmt(math_arrays_1_stmt21, if_statement, math_arrays_1_block1, (statements, 20), range(math_arrays_1, 34044, 243, 928, 932)).
stmt(math_arrays_1_stmt22, return_statement, math_arrays_1_block1, (statements, 21), range(math_arrays_1, 34297, 14, 934, 934)).
stmt(math_arrays_1_stmt23, variable_declaration_statement, math_arrays_1_block3, (statements, 0), range(math_arrays_1, 36663, 44, 976, 976)).
stmt(math_arrays_1_stmt24, variable_declaration_statement, math_arrays_1_block3, (statements, 1), range(math_arrays_1, 36716, 43, 977, 977)).
stmt(math_arrays_1_stmt25, variable_declaration_statement, math_arrays_1_block3, (statements, 2), range(math_arrays_1, 36768, 38, 978, 978)).
stmt(math_arrays_1_stmt26, variable_declaration_statement, math_arrays_1_block3, (statements, 3), range(math_arrays_1, 36815, 44, 979, 979)).
stmt(math_arrays_1_stmt27, variable_declaration_statement, math_arrays_1_block3, (statements, 4), range(math_arrays_1, 36868, 43, 980, 980)).
stmt(math_arrays_1_stmt28, variable_declaration_statement, math_arrays_1_block3, (statements, 5), range(math_arrays_1, 36920, 38, 981, 981)).
stmt(math_arrays_1_stmt29, variable_declaration_statement, math_arrays_1_block3, (statements, 6), range(math_arrays_1, 37011, 34, 984, 984)).
stmt(math_arrays_1_stmt30, variable_declaration_statement, math_arrays_1_block3, (statements, 7), range(math_arrays_1, 37054, 110, 985, 985)).
stmt(math_arrays_1_stmt31, variable_declaration_statement, math_arrays_1_block3, (statements, 8), range(math_arrays_1, 37224, 44, 988, 988)).
stmt(math_arrays_1_stmt32, variable_declaration_statement, math_arrays_1_block3, (statements, 9), range(math_arrays_1, 37277, 43, 989, 989)).
stmt(math_arrays_1_stmt33, variable_declaration_statement, math_arrays_1_block3, (statements, 10), range(math_arrays_1, 37329, 38, 990, 990)).
stmt(math_arrays_1_stmt34, variable_declaration_statement, math_arrays_1_block3, (statements, 11), range(math_arrays_1, 37376, 44, 991, 991)).
stmt(math_arrays_1_stmt35, variable_declaration_statement, math_arrays_1_block3, (statements, 12), range(math_arrays_1, 37429, 43, 992, 992)).
stmt(math_arrays_1_stmt36, variable_declaration_statement, math_arrays_1_block3, (statements, 13), range(math_arrays_1, 37481, 38, 993, 993)).
stmt(math_arrays_1_stmt37, variable_declaration_statement, math_arrays_1_block3, (statements, 14), range(math_arrays_1, 37572, 34, 996, 996)).
stmt(math_arrays_1_stmt38, variable_declaration_statement, math_arrays_1_block3, (statements, 15), range(math_arrays_1, 37615, 110, 997, 997)).
stmt(math_arrays_1_stmt39, variable_declaration_statement, math_arrays_1_block3, (statements, 16), range(math_arrays_1, 37785, 44, 1000, 1000)).
stmt(math_arrays_1_stmt40, variable_declaration_statement, math_arrays_1_block3, (statements, 17), range(math_arrays_1, 37838, 43, 1001, 1001)).
stmt(math_arrays_1_stmt41, variable_declaration_statement, math_arrays_1_block3, (statements, 18), range(math_arrays_1, 37890, 38, 1002, 1002)).
stmt(math_arrays_1_stmt42, variable_declaration_statement, math_arrays_1_block3, (statements, 19), range(math_arrays_1, 37937, 44, 1003, 1003)).
stmt(math_arrays_1_stmt43, variable_declaration_statement, math_arrays_1_block3, (statements, 20), range(math_arrays_1, 37990, 43, 1004, 1004)).
stmt(math_arrays_1_stmt44, variable_declaration_statement, math_arrays_1_block3, (statements, 21), range(math_arrays_1, 38042, 38, 1005, 1005)).
stmt(math_arrays_1_stmt45, variable_declaration_statement, math_arrays_1_block3, (statements, 22), range(math_arrays_1, 38133, 34, 1008, 1008)).
stmt(math_arrays_1_stmt46, variable_declaration_statement, math_arrays_1_block3, (statements, 23), range(math_arrays_1, 38176, 110, 1009, 1009)).
stmt(math_arrays_1_stmt47, variable_declaration_statement, math_arrays_1_block3, (statements, 24), range(math_arrays_1, 38343, 48, 1012, 1012)).
stmt(math_arrays_1_stmt48, variable_declaration_statement, math_arrays_1_block3, (statements, 25), range(math_arrays_1, 38400, 46, 1013, 1013)).
stmt(math_arrays_1_stmt49, variable_declaration_statement, math_arrays_1_block3, (statements, 26), range(math_arrays_1, 38455, 86, 1014, 1014)).
stmt(math_arrays_1_stmt50, variable_declaration_statement, math_arrays_1_block3, (statements, 27), range(math_arrays_1, 38608, 46, 1017, 1017)).
stmt(math_arrays_1_stmt51, variable_declaration_statement, math_arrays_1_block3, (statements, 28), range(math_arrays_1, 38663, 47, 1018, 1018)).
stmt(math_arrays_1_stmt52, variable_declaration_statement, math_arrays_1_block3, (statements, 29), range(math_arrays_1, 38719, 87, 1019, 1019)).
stmt(math_arrays_1_stmt53, variable_declaration_statement, math_arrays_1_block3, (statements, 30), range(math_arrays_1, 38970, 79, 1023, 1023)).
stmt(math_arrays_1_stmt54, if_statement, math_arrays_1_block3, (statements, 31), range(math_arrays_1, 39059, 253, 1025, 1029)).
stmt(math_arrays_1_stmt55, return_statement, math_arrays_1_block3, (statements, 32), range(math_arrays_1, 39322, 14, 1031, 1031)).
%abstract_region_1 - org.apache.commons.math3.geometry.partitioning.AbstractRegion
stmt(abstract_region_1_stmt1, expression_statement, abstract_region_1_block1, (statements, 0), range(abstract_region_1, 2558, 17, 68, 68)).
%sub_line_2 - org.apache.commons.math3.geometry.euclidean.twod.SubLine
stmt(sub_line_2_stmt1, super_constructor_invocation, sub_line_2_block1, (statements, 0), range(sub_line_2, 2457, 58, 56, 56)).
stmt(sub_line_2_stmt2, variable_declaration_statement, sub_line_2_block2, (statements, 0), range(sub_line_2, 5179, 36, 113, 113)).
stmt(sub_line_2_stmt3, variable_declaration_statement, sub_line_2_block2, (statements, 1), range(sub_line_2, 5224, 44, 114, 114)).
stmt(sub_line_2_stmt4, variable_declaration_statement, sub_line_2_block2, (statements, 2), range(sub_line_2, 5331, 41, 117, 117)).
stmt(sub_line_2_stmt5, variable_declaration_statement, sub_line_2_block2, (statements, 3), range(sub_line_2, 5448, 71, 120, 120)).
stmt(sub_line_2_stmt6, variable_declaration_statement, sub_line_2_block3, (statements, 0), range(sub_line_2, 6173, 39, 139, 139)).
stmt(sub_line_2_stmt7, return_statement, sub_line_2_block3, (statements, 1), range(sub_line_2, 6221, 116, 140, 141)).
%vector2_d_1 - org.apache.commons.math3.geometry.euclidean.twod.Vector2D
stmt(vector2_d_1_stmt1, expression_statement, vector2_d_1_block1, (statements, 0), range(vector2_d_1, 2603, 11, 69, 69)).
stmt(vector2_d_1_stmt2, expression_statement, vector2_d_1_block1, (statements, 1), range(vector2_d_1, 2623, 11, 70, 70)).
stmt(vector2_d_1_stmt3, return_statement, vector2_d_1_block2, (statements, 0), range(vector2_d_1, 5462, 9, 150, 150)).
stmt(vector2_d_1_stmt4, return_statement, vector2_d_1_block3, (statements, 0), range(vector2_d_1, 5638, 9, 158, 158)).
%sub_line_1 - org.apache.commons.math3.geometry.euclidean.threed.SubLine
stmt(sub_line_1_stmt1, expression_statement, sub_line_1_block1, (statements, 0), range(sub_line_1, 1741, 28, 45, 45)).
stmt(sub_line_1_stmt2, expression_statement, sub_line_1_block1, (statements, 1), range(sub_line_1, 1778, 39, 46, 46)).
stmt(sub_line_1_stmt3, constructor_invocation, sub_line_1_block2, (statements, 0), range(sub_line_1, 2125, 57, 56, 56)).
stmt(sub_line_1_stmt4, variable_declaration_statement, sub_line_1_block3, (statements, 0), range(sub_line_1, 4903, 47, 113, 113)).
stmt(sub_line_1_stmt5, variable_declaration_statement, sub_line_1_block3, (statements, 1), range(sub_line_1, 5026, 65, 116, 116)).
stmt(sub_line_1_stmt6, variable_declaration_statement, sub_line_1_block4, (statements, 0), range(sub_line_1, 5862, 39, 137, 137)).
stmt(sub_line_1_stmt7, return_statement, sub_line_1_block4, (statements, 1), range(sub_line_1, 5910, 116, 138, 139)).
%fast_math_1 - org.apache.commons.math3.util.FastMath
stmt(fast_math_1_stmt1, return_statement, fast_math_1_block1, (statements, 0), range(fast_math_1, 14430, 20, 385, 385)).
stmt(fast_math_1_stmt2, variable_declaration_statement, fast_math_1_block2, (statements, 0), range(fast_math_1, 54369, 16, 1680, 1680)).
stmt(fast_math_1_stmt3, variable_declaration_statement, fast_math_1_block2, (statements, 1), range(fast_math_1, 54395, 33, 1682, 1682)).
stmt(fast_math_1_stmt4, expression_statement, fast_math_1_block2, (statements, 2), range(fast_math_1, 54437, 36, 1683, 1683)).
stmt(fast_math_1_stmt5, expression_statement, fast_math_1_block2, (statements, 3), range(fast_math_1, 54482, 34, 1684, 1684)).
stmt(fast_math_1_stmt6, expression_statement, fast_math_1_block2, (statements, 4), range(fast_math_1, 54525, 34, 1685, 1685)).
stmt(fast_math_1_stmt7, expression_statement, fast_math_1_block2, (statements, 5), range(fast_math_1, 54605, 15, 1688, 1688)).
stmt(fast_math_1_stmt8, return_statement, fast_math_1_block2, (statements, 6), range(fast_math_1, 54630, 9, 1690, 1690)).
stmt(fast_math_1_stmt9, variable_declaration_statement, fast_math_1_block3, (statements, 0), range(fast_math_1, 54884, 16, 1700, 1700)).
stmt(fast_math_1_stmt10, variable_declaration_statement, fast_math_1_block3, (statements, 1), range(fast_math_1, 54910, 32, 1702, 1702)).
stmt(fast_math_1_stmt11, expression_statement, fast_math_1_block3, (statements, 2), range(fast_math_1, 54951, 36, 1703, 1703)).
stmt(fast_math_1_stmt12, expression_statement, fast_math_1_block3, (statements, 3), range(fast_math_1, 54996, 34, 1704, 1704)).
stmt(fast_math_1_stmt13, expression_statement, fast_math_1_block3, (statements, 4), range(fast_math_1, 55039, 34, 1705, 1705)).
stmt(fast_math_1_stmt14, expression_statement, fast_math_1_block3, (statements, 5), range(fast_math_1, 55082, 8, 1706, 1706)).
stmt(fast_math_1_stmt15, return_statement, fast_math_1_block3, (statements, 6), range(fast_math_1, 55100, 9, 1708, 1708)).
stmt(fast_math_1_stmt16, variable_declaration_statement, fast_math_1_block4, (statements, 0), range(fast_math_1, 55463, 35, 1719, 1719)).
stmt(fast_math_1_stmt17, variable_declaration_statement, fast_math_1_block4, (statements, 1), range(fast_math_1, 55507, 41, 1720, 1720)).
stmt(fast_math_1_stmt18, variable_declaration_statement, fast_math_1_block4, (statements, 2), range(fast_math_1, 55596, 39, 1723, 1723)).
stmt(fast_math_1_stmt19, variable_declaration_statement, fast_math_1_block4, (statements, 3), range(fast_math_1, 55644, 39, 1724, 1724)).
stmt(fast_math_1_stmt20, variable_declaration_statement, fast_math_1_block4, (statements, 4), range(fast_math_1, 55692, 41, 1725, 1725)).
stmt(fast_math_1_stmt21, variable_declaration_statement, fast_math_1_block4, (statements, 5), range(fast_math_1, 55742, 41, 1726, 1726)).
stmt(fast_math_1_stmt22, variable_declaration_statement, fast_math_1_block4, (statements, 6), range(fast_math_1, 55850, 25, 1729, 1729)).
stmt(fast_math_1_stmt23, variable_declaration_statement, fast_math_1_block4, (statements, 7), range(fast_math_1, 55884, 35, 1730, 1730)).
stmt(fast_math_1_stmt24, variable_declaration_statement, fast_math_1_block4, (statements, 8), range(fast_math_1, 55928, 27, 1731, 1731)).
stmt(fast_math_1_stmt25, variable_declaration_statement, fast_math_1_block4, (statements, 9), range(fast_math_1, 55964, 43, 1732, 1732)).
stmt(fast_math_1_stmt26, variable_declaration_statement, fast_math_1_block4, (statements, 10), range(fast_math_1, 56056, 43, 1735, 1735)).
stmt(fast_math_1_stmt27, variable_declaration_statement, fast_math_1_block4, (statements, 11), range(fast_math_1, 56108, 39, 1736, 1736)).
stmt(fast_math_1_stmt28, expression_statement, fast_math_1_block4, (statements, 12), range(fast_math_1, 56156, 28, 1737, 1737)).
stmt(fast_math_1_stmt29, expression_statement, fast_math_1_block4, (statements, 13), range(fast_math_1, 56193, 16, 1738, 1738)).
stmt(fast_math_1_stmt30, variable_declaration_statement, fast_math_1_block4, (statements, 15), range(fast_math_1, 57095, 13, 1764, 1764)).
stmt(fast_math_1_stmt31, variable_declaration_statement, fast_math_1_block4, (statements, 16), range(fast_math_1, 57117, 13, 1765, 1765)).
stmt(fast_math_1_stmt32, variable_declaration_statement, fast_math_1_block4, (statements, 17), range(fast_math_1, 57140, 17, 1767, 1767)).
stmt(fast_math_1_stmt33, variable_declaration_statement, fast_math_1_block4, (statements, 18), range(fast_math_1, 57166, 17, 1768, 1768)).
stmt(fast_math_1_stmt34, variable_declaration_statement, fast_math_1_block4, (statements, 19), range(fast_math_1, 57192, 24, 1769, 1769)).
stmt(fast_math_1_stmt35, expression_statement, fast_math_1_block4, (statements, 20), range(fast_math_1, 57225, 6, 1770, 1770)).
stmt(fast_math_1_stmt36, expression_statement, fast_math_1_block4, (statements, 21), range(fast_math_1, 57240, 10, 1771, 1771)).
stmt(fast_math_1_stmt37, expression_statement, fast_math_1_block4, (statements, 22), range(fast_math_1, 57260, 20, 1773, 1773)).
stmt(fast_math_1_stmt38, expression_statement, fast_math_1_block4, (statements, 23), range(fast_math_1, 57289, 10, 1774, 1774)).
stmt(fast_math_1_stmt39, expression_statement, fast_math_1_block4, (statements, 24), range(fast_math_1, 57308, 17, 1775, 1775)).
stmt(fast_math_1_stmt40, expression_statement, fast_math_1_block4, (statements, 25), range(fast_math_1, 57334, 6, 1776, 1776)).
stmt(fast_math_1_stmt41, expression_statement, fast_math_1_block4, (statements, 26), range(fast_math_1, 57349, 10, 1777, 1777)).
stmt(fast_math_1_stmt42, expression_statement, fast_math_1_block4, (statements, 27), range(fast_math_1, 57369, 42, 1779, 1779)).
stmt(fast_math_1_stmt43, expression_statement, fast_math_1_block4, (statements, 28), range(fast_math_1, 57617, 68, 1794, 1794)).
stmt(fast_math_1_stmt44, if_statement, fast_math_1_block4, (statements, 29), range(fast_math_1, 58057, 266, 1821, 1828)).
stmt(fast_math_1_stmt45, expression_statement, fast_math_1_block5, (statements, 0), range(fast_math_1, 58086, 106, 1822, 1823)).
stmt(fast_math_1_stmt46, expression_statement, fast_math_1_block5, (statements, 1), range(fast_math_1, 58231, 10, 1824, 1824)).
stmt(fast_math_1_stmt47, expression_statement, fast_math_1_block5, (statements, 2), range(fast_math_1, 58254, 17, 1825, 1825)).
stmt(fast_math_1_stmt48, expression_statement, fast_math_1_block5, (statements, 3), range(fast_math_1, 58284, 6, 1826, 1826)).
stmt(fast_math_1_stmt49, expression_statement, fast_math_1_block5, (statements, 4), range(fast_math_1, 58303, 10, 1827, 1827)).
stmt(fast_math_1_stmt50, expression_statement, fast_math_1_block4, (statements, 30), range(fast_math_1, 58333, 15, 1830, 1830)).
stmt(fast_math_1_stmt51, return_statement, fast_math_1_block4, (statements, 31), range(fast_math_1, 58358, 14, 1832, 1832)).
stmt(fast_math_1_stmt52, variable_declaration_statement, fast_math_1_block6, (statements, 0), range(fast_math_1, 58750, 39, 1843, 1843)).
stmt(fast_math_1_stmt53, variable_declaration_statement, fast_math_1_block6, (statements, 1), range(fast_math_1, 58798, 42, 1844, 1844)).
stmt(fast_math_1_stmt54, variable_declaration_statement, fast_math_1_block6, (statements, 2), range(fast_math_1, 58850, 27, 1846, 1846)).
stmt(fast_math_1_stmt55, variable_declaration_statement, fast_math_1_block6, (statements, 3), range(fast_math_1, 58886, 28, 1847, 1847)).
stmt(fast_math_1_stmt56, expression_statement, fast_math_1_block6, (statements, 4), range(fast_math_1, 58923, 15, 1848, 1848)).
stmt(fast_math_1_stmt57, return_statement, fast_math_1_block6, (statements, 5), range(fast_math_1, 58948, 18, 1850, 1850)).
stmt(fast_math_1_stmt58, variable_declaration_statement, fast_math_1_block7, (statements, 0), range(fast_math_1, 70113, 25, 2228, 2228)).
stmt(fast_math_1_stmt59, variable_declaration_statement, fast_math_1_block7, (statements, 1), range(fast_math_1, 70147, 17, 2229, 2229)).
stmt(fast_math_1_stmt60, variable_declaration_statement, fast_math_1_block7, (statements, 3), range(fast_math_1, 70192, 16, 2231, 2231)).
stmt(fast_math_1_stmt61, expression_statement, fast_math_1_block7, (statements, 4), range(fast_math_1, 70265, 7, 2234, 2234)).
stmt(fast_math_1_stmt62, if_statement, fast_math_1_block7, (statements, 5), range(fast_math_1, 70281, 73, 2235, 2238)).
stmt(fast_math_1_stmt63, if_statement, fast_math_1_block7, (statements, 6), range(fast_math_1, 70411, 176, 2241, 2247)).
stmt(fast_math_1_stmt64, if_statement, fast_math_1_block7, (statements, 7), range(fast_math_1, 70597, 90, 2249, 2251)).
stmt(fast_math_1_stmt65, if_statement, fast_math_1_block7, (statements, 8), range(fast_math_1, 70742, 575, 2254, 2268)).
stmt(fast_math_1_stmt66, if_statement, fast_math_1_stmt65, elseStatement, range(fast_math_1, 71125, 192, 2263, 2268)).
stmt(fast_math_1_stmt67, if_statement, fast_math_1_block7, (statements, 9), range(fast_math_1, 71327, 67, 2270, 2272)).
stmt(fast_math_1_stmt68, switch_statement, fast_math_1_block7, (statements, 10), range(fast_math_1, 71404, 315, 2274, 2285)).
stmt(fast_math_1_stmt69, return_statement, fast_math_1_stmt68, (statements, 1), range(fast_math_1, 71460, 20, 2276, 2276)).
stmt(fast_math_1_stmt70, variable_declaration_statement, fast_math_1_block14, (statements, 0), range(fast_math_1, 71871, 17, 2295, 2295)).
stmt(fast_math_1_stmt71, variable_declaration_statement, fast_math_1_block14, (statements, 1), range(fast_math_1, 71945, 14, 2298, 2298)).
stmt(fast_math_1_stmt72, if_statement, fast_math_1_block14, (statements, 2), range(fast_math_1, 71968, 44, 2299, 2301)).
stmt(fast_math_1_stmt73, if_statement, fast_math_1_block14, (statements, 3), range(fast_math_1, 72022, 90, 2303, 2305)).
stmt(fast_math_1_stmt74, variable_declaration_statement, fast_math_1_block14, (statements, 4), range(fast_math_1, 72167, 14, 2308, 2308)).
stmt(fast_math_1_stmt75, if_statement, fast_math_1_block14, (statements, 5), range(fast_math_1, 72190, 575, 2309, 2323)).
stmt(fast_math_1_stmt76, if_statement, fast_math_1_stmt75, elseStatement, range(fast_math_1, 72573, 192, 2318, 2323)).
stmt(fast_math_1_stmt77, switch_statement, fast_math_1_block14, (statements, 6), range(fast_math_1, 72843, 315, 2328, 2339)).
stmt(fast_math_1_stmt78, return_statement, fast_math_1_stmt77, (statements, 1), range(fast_math_1, 72899, 20, 2330, 2330)).
stmt(fast_math_1_stmt79, if_statement, fast_math_1_block19, (statements, 0), range(fast_math_1, 80328, 64, 2582, 2584)).
stmt(fast_math_1_stmt80, if_statement, fast_math_1_block19, (statements, 1), range(fast_math_1, 80402, 635, 2586, 2608)).
stmt(fast_math_1_stmt81, if_statement, fast_math_1_block19, (statements, 2), range(fast_math_1, 81080, 290, 2612, 2622)).
stmt(fast_math_1_stmt82, if_statement, fast_math_1_block19, (statements, 3), range(fast_math_1, 81380, 293, 2624, 2634)).
stmt(fast_math_1_stmt83, if_statement, fast_math_1_block19, (statements, 4), range(fast_math_1, 81683, 206, 2636, 2644)).
stmt(fast_math_1_stmt84, if_statement, fast_math_1_block19, (statements, 5), range(fast_math_1, 81899, 228, 2646, 2655)).
stmt(fast_math_1_stmt85, if_statement, fast_math_1_block19, (statements, 6), range(fast_math_1, 82193, 209, 2659, 2667)).
stmt(fast_math_1_stmt86, if_statement, fast_math_1_block25, (statements, 0), range(fast_math_1, 82219, 79, 2660, 2662)).
stmt(fast_math_1_stmt87, if_statement, fast_math_1_block25, (statements, 1), range(fast_math_1, 82312, 80, 2664, 2666)).
stmt(fast_math_1_stmt88, return_statement, fast_math_1_block27, (statements, 0), range(fast_math_1, 82354, 24, 2665, 2665)).
stmt(fast_math_1_stmt89, return_statement, fast_math_1_block28, (statements, 0), range(fast_math_1, 91873, 83, 3025, 3025)).
stmt(fast_math_1_stmt90, if_statement, fast_math_1_block29, (statements, 0), range(fast_math_1, 110035, 1128, 3574, 3605)).
stmt(fast_math_1_stmt91, if_statement, fast_math_1_stmt90, elseStatement, range(fast_math_1, 110147, 1016, 3576, 3605)).
stmt(fast_math_1_stmt92, variable_declaration_statement, fast_math_1_block32, (statements, 0), range(fast_math_1, 110250, 32, 3580, 3580)).
stmt(fast_math_1_stmt93, variable_declaration_statement, fast_math_1_block32, (statements, 1), range(fast_math_1, 110295, 32, 3581, 3581)).
stmt(fast_math_1_stmt94, if_statement, fast_math_1_block32, (statements, 2), range(fast_math_1, 110340, 812, 3582, 3603)).
stmt(fast_math_1_stmt95, if_statement, fast_math_1_stmt94, elseStatement, range(fast_math_1, 110468, 684, 3585, 3603)).
stmt(fast_math_1_stmt96, return_statement, fast_math_1_block34, (statements, 0), range(fast_math_1, 110562, 14, 3587, 3587)).
stmt(fast_math_1_stmt97, return_statement, fast_math_1_block35, (statements, 0), range(fast_math_1, 114691, 69, 3685, 3685)).
%sub_oriented_point_1 - org.apache.commons.math3.geometry.euclidean.oned.SubOrientedPoint
stmt(sub_oriented_point_1_stmt1, super_constructor_invocation, sub_oriented_point_1_block1, (statements, 0), range(sub_oriented_point_1, 1770, 35, 39, 39)).
%precision_1 - org.apache.commons.math3.util.Precision
stmt(precision_1_stmt1, expression_statement, precision_1_block1, (statements, 0), range(precision_1, 2505, 65, 70, 70)).
stmt(precision_1_stmt2, expression_statement, precision_1_block1, (statements, 1), range(precision_1, 2762, 68, 77, 77)).
%intervals_set_1 - org.apache.commons.math3.geometry.euclidean.oned.IntervalsSet
stmt(intervals_set_1_stmt1, super_constructor_invocation, intervals_set_1_block1, (statements, 0), range(intervals_set_1, 1919, 31, 47, 47)).
stmt(intervals_set_1_stmt2, if_statement, intervals_set_1_block2, (statements, 0), range(intervals_set_1, 4318, 689, 94, 106)).
stmt(intervals_set_1_stmt3, variable_declaration_statement, intervals_set_1_block2, (statements, 1), range(intervals_set_1, 5016, 120, 107, 108)).
stmt(intervals_set_1_stmt4, if_statement, intervals_set_1_block2, (statements, 2), range(intervals_set_1, 5145, 397, 109, 115)).
stmt(intervals_set_1_stmt5, variable_declaration_statement, intervals_set_1_block2, (statements, 3), range(intervals_set_1, 5605, 119, 118, 119)).
stmt(intervals_set_1_stmt6, return_statement, intervals_set_1_block2, (statements, 4), range(intervals_set_1, 5733, 527, 120, 126)).
%oriented_point_1 - org.apache.commons.math3.geometry.euclidean.oned.OrientedPoint
stmt(oriented_point_1_stmt1, expression_statement, oriented_point_1_block1, (statements, 0), range(oriented_point_1, 1682, 25, 43, 43)).
stmt(oriented_point_1_stmt2, expression_statement, oriented_point_1_block1, (statements, 1), range(oriented_point_1, 1716, 23, 44, 44)).
stmt(oriented_point_1_stmt3, return_statement, oriented_point_1_block2, (statements, 0), range(oriented_point_1, 2845, 40, 74, 74)).
%sub_line_test_2 - org.apache.commons.math3.geometry.euclidean.twod.SubLineTest
stmt(sub_line_test_2_stmt1, variable_declaration_statement, sub_line_test_2_block1, (statements, 0), range(sub_line_test_2, 7094, 73, 149, 149)).
stmt(sub_line_test_2_stmt2, variable_declaration_statement, sub_line_test_2_block1, (statements, 1), range(sub_line_test_2, 7176, 75, 150, 150)).
stmt(sub_line_test_2_stmt3, expression_statement, sub_line_test_2_block1, (statements, 2), range(sub_line_test_2, 7260, 49, 151, 151)).
%abstract_sub_hyperplane_1 - org.apache.commons.math3.geometry.partitioning.AbstractSubHyperplane
stmt(abstract_sub_hyperplane_1_stmt1, expression_statement, abstract_sub_hyperplane_1_block1, (statements, 0), range(abstract_sub_hyperplane_1, 2135, 34, 51, 51)).
stmt(abstract_sub_hyperplane_1_stmt2, expression_statement, abstract_sub_hyperplane_1_block1, (statements, 1), range(abstract_sub_hyperplane_1, 2178, 39, 52, 52)).
stmt(abstract_sub_hyperplane_1_stmt3, return_statement, abstract_sub_hyperplane_1_block2, (statements, 0), range(abstract_sub_hyperplane_1, 2883, 18, 72, 72)).
stmt(abstract_sub_hyperplane_1_stmt4, return_statement, abstract_sub_hyperplane_1_block3, (statements, 0), range(abstract_sub_hyperplane_1, 3327, 23, 83, 83)).
%sub_line_test_1 - org.apache.commons.math3.geometry.euclidean.threed.SubLineTest
stmt(sub_line_test_1_stmt1, variable_declaration_statement, sub_line_test_1_block1, (statements, 0), range(sub_line_test_1, 8414, 75, 158, 158)).
stmt(sub_line_test_1_stmt2, variable_declaration_statement, sub_line_test_1_block1, (statements, 1), range(sub_line_test_1, 8498, 75, 159, 159)).
stmt(sub_line_test_1_stmt3, expression_statement, sub_line_test_1_block1, (statements, 2), range(sub_line_test_1, 8582, 49, 160, 160)).
%bsptree_1 - org.apache.commons.math3.geometry.partitioning.BSPTree
stmt(bsptree_1_stmt1, expression_statement, bsptree_1_block1, (statements, 0), range(bsptree_1, 3757, 14, 94, 94)).
stmt(bsptree_1_stmt2, expression_statement, bsptree_1_block1, (statements, 1), range(bsptree_1, 3780, 14, 95, 95)).
stmt(bsptree_1_stmt3, expression_statement, bsptree_1_block1, (statements, 2), range(bsptree_1, 3803, 14, 96, 96)).
stmt(bsptree_1_stmt4, expression_statement, bsptree_1_block1, (statements, 3), range(bsptree_1, 3826, 14, 97, 97)).
stmt(bsptree_1_stmt5, expression_statement, bsptree_1_block1, (statements, 4), range(bsptree_1, 3849, 27, 98, 98)).
stmt(bsptree_1_stmt6, expression_statement, bsptree_1_block2, (statements, 0), range(bsptree_1, 4681, 21, 116, 116)).
stmt(bsptree_1_stmt7, expression_statement, bsptree_1_block2, (statements, 1), range(bsptree_1, 4711, 22, 117, 117)).
stmt(bsptree_1_stmt8, expression_statement, bsptree_1_block2, (statements, 2), range(bsptree_1, 4742, 23, 118, 118)).
stmt(bsptree_1_stmt9, expression_statement, bsptree_1_block2, (statements, 3), range(bsptree_1, 4774, 22, 119, 119)).
stmt(bsptree_1_stmt10, expression_statement, bsptree_1_block2, (statements, 4), range(bsptree_1, 4805, 27, 120, 120)).
stmt(bsptree_1_stmt11, expression_statement, bsptree_1_block2, (statements, 5), range(bsptree_1, 4841, 22, 121, 121)).
stmt(bsptree_1_stmt12, expression_statement, bsptree_1_block2, (statements, 6), range(bsptree_1, 4872, 22, 122, 122)).
%vector1_d_1 - org.apache.commons.math3.geometry.euclidean.oned.Vector1D
stmt(vector1_d_1_stmt1, expression_statement, vector1_d_1_block1, (statements, 0), range(vector1_d_1, 2453, 11, 66, 66)).
stmt(vector1_d_1_stmt2, return_statement, vector1_d_1_block2, (statements, 0), range(vector1_d_1, 4664, 9, 128, 128)).
%vector3_d_1 - org.apache.commons.math3.geometry.euclidean.threed.Vector3D
stmt(vector3_d_1_stmt1, expression_statement, vector3_d_1_block1, (statements, 0), range(vector3_d_1, 3721, 11, 96, 96)).
stmt(vector3_d_1_stmt2, expression_statement, vector3_d_1_block1, (statements, 1), range(vector3_d_1, 3741, 11, 97, 97)).
stmt(vector3_d_1_stmt3, expression_statement, vector3_d_1_block1, (statements, 2), range(vector3_d_1, 3761, 11, 98, 98)).
stmt(vector3_d_1_stmt4, expression_statement, vector3_d_1_block2, (statements, 0), range(vector3_d_1, 5081, 17, 138, 138)).
stmt(vector3_d_1_stmt5, expression_statement, vector3_d_1_block2, (statements, 1), range(vector3_d_1, 5107, 17, 139, 139)).
stmt(vector3_d_1_stmt6, expression_statement, vector3_d_1_block2, (statements, 2), range(vector3_d_1, 5133, 17, 140, 140)).
stmt(vector3_d_1_stmt7, expression_statement, vector3_d_1_block3, (statements, 0), range(vector3_d_1, 5562, 58, 152, 152)).
stmt(vector3_d_1_stmt8, expression_statement, vector3_d_1_block3, (statements, 1), range(vector3_d_1, 5629, 58, 153, 153)).
stmt(vector3_d_1_stmt9, expression_statement, vector3_d_1_block3, (statements, 2), range(vector3_d_1, 5696, 58, 154, 154)).
stmt(vector3_d_1_stmt10, return_statement, vector3_d_1_block4, (statements, 0), range(vector3_d_1, 8687, 45, 243, 243)).
stmt(vector3_d_1_stmt11, return_statement, vector3_d_1_block5, (statements, 0), range(vector3_d_1, 8895, 29, 249, 249)).
stmt(vector3_d_1_stmt12, variable_declaration_statement, vector3_d_1_block6, (statements, 0), range(vector3_d_1, 10014, 33, 286, 286)).
stmt(vector3_d_1_stmt13, return_statement, vector3_d_1_block6, (statements, 1), range(vector3_d_1, 10056, 50, 287, 287)).
stmt(vector3_d_1_stmt14, variable_declaration_statement, vector3_d_1_block7, (statements, 0), range(vector3_d_1, 15960, 33, 453, 453)).
stmt(vector3_d_1_stmt15, return_statement, vector3_d_1_block7, (statements, 1), range(vector3_d_1, 16002, 63, 454, 454)).

%%% Expressions
%line_1 - org.apache.commons.math3.geometry.euclidean.threed.Line
expr(line_1_expr1, method_invocation, line_1_stmt1, expression, range(line_1, 2461, 13, 55, 55), "reset(p1,p2)").
expr(line_1_expr2, method_invocation, line_1_code15, initializer, range(line_1, 3217, 15, 74, 74), "p2.subtract(p1)").
expr(line_1_expr3, method_invocation, line_1_code18, initializer, range(line_1, 3263, 17, 75, 75), "delta.getNormSq()").
expr(line_1_expr4, infix_expression, line_1_stmt4, expression, range(line_1, 3294, 12, 76, 76), "norm2 == 0.0").
expr(line_1_expr5, assignment, line_1_stmt5, expression, range(line_1, 3408, 64, 79, 79), "this.direction=new Vector3D(1.0 / FastMath.sqrt(norm2),delta)").
expr(line_1_expr8, this_expression, f_direction_80, expression, range(line_1, 3408, 4, 79, 79), "this").
expr(line_1_expr6, field_access, line_1_expr5, left_hand_side, range(line_1, 3408, 14, 79, 79), "this.direction").
expr(line_1_expr7, class_instance_creation, line_1_expr5, right_hand_side, range(line_1, 3425, 47, 79, 79), "new Vector3D(1.0 / FastMath.sqrt(norm2),delta)").
expr(line_1_expr9, infix_expression, line_1_expr7, (arguments, 0), range(line_1, 3438, 26, 79, 79), "1.0 / FastMath.sqrt(norm2)").
expr(line_1_expr10, method_invocation, line_1_expr9, right_operand, range(line_1, 3444, 20, 79, 79), "FastMath.sqrt(norm2)").
expr(line_1_expr11, assignment, line_1_stmt6, expression, range(line_1, 3482, 66, 80, 80), "zero=new Vector3D(1.0,p1,-p1.dotProduct(delta) / norm2,delta)").
expr(line_1_expr12, class_instance_creation, line_1_expr11, right_hand_side, range(line_1, 3489, 59, 80, 80), "new Vector3D(1.0,p1,-p1.dotProduct(delta) / norm2,delta)").
expr(line_1_expr14, prefix_expression, line_1_expr13, left_operand, range(line_1, 3511, 21, 80, 80), "-p1.dotProduct(delta)").
expr(line_1_expr13, infix_expression, line_1_expr12, (arguments, 2), range(line_1, 3511, 29, 80, 80), "-p1.dotProduct(delta) / norm2").
expr(line_1_expr15, method_invocation, line_1_expr14, operand, range(line_1, 3512, 20, 80, 80), "p1.dotProduct(delta)").
expr(line_1_expr16, method_invocation, line_1_stmt7, expression, range(line_1, 4520, 42, 114, 114), "point.subtract(zero).dotProduct(direction)").
expr(line_1_expr17, method_invocation, line_1_expr16, expression, range(line_1, 4520, 20, 114, 114), "point.subtract(zero)").
expr(line_1_expr18, class_instance_creation, line_1_stmt8, expression, range(line_1, 5007, 43, 129, 129), "new Vector1D(getAbscissa((Vector3D)point))").
expr(line_1_expr19, method_invocation, line_1_expr18, (arguments, 0), range(line_1, 5020, 29, 129, 129), "getAbscissa((Vector3D)point)").
expr(line_1_expr20, cast_expression, line_1_expr19, (arguments, 0), range(line_1, 5032, 16, 129, 129), "(Vector3D)point").
expr(line_1_expr21, infix_expression, line_1_stmt9, expression, range(line_1, 5996, 21, 156, 156), "distance(p) < 1.0e-10").
expr(line_1_expr22, method_invocation, line_1_expr21, left_operand, range(line_1, 5996, 11, 156, 156), "distance(p)").
expr(line_1_expr23, method_invocation, line_1_code29, initializer, range(line_1, 6255, 16, 164, 164), "p.subtract(zero)").
expr(line_1_expr24, class_instance_creation, line_1_code32, initializer, range(line_1, 6300, 57, 165, 165), "new Vector3D(1.0,d,-d.dotProduct(direction),direction)").
expr(line_1_expr25, prefix_expression, line_1_expr24, (arguments, 2), range(line_1, 6321, 24, 165, 165), "-d.dotProduct(direction)").
expr(line_1_expr26, method_invocation, line_1_expr25, operand, range(line_1, 6322, 23, 165, 165), "d.dotProduct(direction)").
expr(line_1_expr27, method_invocation, line_1_stmt12, expression, range(line_1, 6374, 11, 166, 166), "n.getNorm()").
expr(line_1_expr28, method_invocation, line_1_code37, initializer, range(line_1, 7370, 36, 195, 195), "direction.dotProduct(line.direction)").
expr(line_1_expr29, infix_expression, line_1_code40, initializer, range(line_1, 7433, 13, 196, 196), "1 - cos * cos").
expr(line_1_expr30, infix_expression, line_1_expr29, right_operand, range(line_1, 7437, 9, 196, 196), "cos * cos").
expr(line_1_expr31, infix_expression, line_1_stmt15, expression, range(line_1, 7460, 21, 197, 197), "n < Precision.EPSILON").
expr(line_1_expr32, method_invocation, line_1_code43, initializer, range(line_1, 7591, 24, 202, 202), "line.zero.subtract(zero)").
expr(line_1_expr33, method_invocation, line_1_code46, initializer, range(line_1, 7649, 28, 203, 203), "delta0.dotProduct(direction)").
expr(line_1_expr34, method_invocation, line_1_code49, initializer, range(line_1, 7711, 33, 204, 204), "delta0.dotProduct(line.direction)").
expr(line_1_expr35, class_instance_creation, line_1_stmt19, expression, range(line_1, 7762, 51, 206, 206), "new Vector3D(1,zero,(a - b * cos) / n,direction)").
expr(line_1_expr36, infix_expression, line_1_expr35, (arguments, 2), range(line_1, 7784, 17, 206, 206), "(a - b * cos) / n").
expr(line_1_expr37, parenthesized_expression, line_1_expr36, left_operand, range(line_1, 7784, 13, 206, 206), "(a - b * cos)").
expr(line_1_expr38, infix_expression, line_1_expr37, expression, range(line_1, 7785, 11, 206, 206), "a - b * cos").
expr(line_1_expr39, infix_expression, line_1_expr38, right_operand, range(line_1, 7789, 7, 206, 206), "b * cos").
expr(line_1_expr40, method_invocation, line_1_code54, initializer, range(line_1, 8135, 18, 216, 216), "closestPoint(line)").
expr(line_1_expr41, conditional_expression, line_1_stmt21, expression, range(line_1, 8170, 39, 217, 217), "line.contains(closest) ? closest : null").
expr(line_1_expr42, method_invocation, line_1_expr41, expression, range(line_1, 8170, 22, 217, 217), "line.contains(closest)").
%line_2 - org.apache.commons.math3.geometry.euclidean.twod.Line
expr(line_2_expr1, method_invocation, line_2_stmt1, expression, range(line_2, 3671, 13, 82, 82), "reset(p1,p2)").
expr(line_2_expr2, infix_expression, line_2_code14, initializer, range(line_2, 5234, 21, 129, 129), "p2.getX() - p1.getX()").
expr(line_2_expr3, method_invocation, line_2_expr2, left_operand, range(line_2, 5234, 9, 129, 129), "p2.getX()").
expr(line_2_expr4, method_invocation, line_2_expr2, right_operand, range(line_2, 5246, 9, 129, 129), "p1.getX()").
expr(line_2_expr5, infix_expression, line_2_code17, initializer, range(line_2, 5283, 21, 130, 130), "p2.getY() - p1.getY()").
expr(line_2_expr6, method_invocation, line_2_expr5, left_operand, range(line_2, 5283, 9, 130, 130), "p2.getY()").
expr(line_2_expr7, method_invocation, line_2_expr5, right_operand, range(line_2, 5295, 9, 130, 130), "p1.getY()").
expr(line_2_expr8, method_invocation, line_2_code20, initializer, range(line_2, 5331, 22, 131, 131), "FastMath.hypot(dx,dy)").
expr(line_2_expr9, infix_expression, line_2_stmt5, expression, range(line_2, 5367, 8, 132, 132), "d == 0.0").
expr(line_2_expr10, assignment, line_2_stmt6, expression, range(line_2, 5542, 53, 138, 138), "angle=FastMath.PI + FastMath.atan2(-dy,-dx)").
expr(line_2_expr11, infix_expression, line_2_expr10, right_hand_side, range(line_2, 5557, 38, 138, 138), "FastMath.PI + FastMath.atan2(-dy,-dx)").
expr(line_2_expr12, method_invocation, line_2_expr11, right_operand, range(line_2, 5571, 24, 138, 138), "FastMath.atan2(-dy,-dx)").
expr(line_2_expr13, prefix_expression, line_2_expr12, (arguments, 0), range(line_2, 5586, 3, 138, 138), "-dy").
expr(line_2_expr14, prefix_expression, line_2_expr12, (arguments, 1), range(line_2, 5591, 3, 138, 138), "-dx").
expr(line_2_expr15, assignment, line_2_stmt7, expression, range(line_2, 5609, 34, 139, 139), "cos=FastMath.cos(angle)").
expr(line_2_expr16, method_invocation, line_2_expr15, right_hand_side, range(line_2, 5624, 19, 139, 139), "FastMath.cos(angle)").
expr(line_2_expr17, assignment, line_2_stmt8, expression, range(line_2, 5657, 34, 140, 140), "sin=FastMath.sin(angle)").
expr(line_2_expr18, method_invocation, line_2_expr17, right_hand_side, range(line_2, 5672, 19, 140, 140), "FastMath.sin(angle)").
expr(line_2_expr19, assignment, line_2_stmt9, expression, range(line_2, 5705, 66, 141, 141), "originOffset=(p2.getX() * p1.getY() - p1.getX() * p2.getY()) / d").
expr(line_2_expr20, infix_expression, line_2_expr19, right_hand_side, range(line_2, 5720, 51, 141, 141), "(p2.getX() * p1.getY() - p1.getX() * p2.getY()) / d").
expr(line_2_expr21, parenthesized_expression, line_2_expr20, left_operand, range(line_2, 5720, 47, 141, 141), "(p2.getX() * p1.getY() - p1.getX() * p2.getY())").
expr(line_2_expr24, method_invocation, line_2_expr23, left_operand, range(line_2, 5721, 9, 141, 141), "p2.getX()").
expr(line_2_expr23, infix_expression, line_2_expr22, left_operand, range(line_2, 5721, 21, 141, 141), "p2.getX() * p1.getY()").
expr(line_2_expr22, infix_expression, line_2_expr21, expression, range(line_2, 5721, 45, 141, 141), "p2.getX() * p1.getY() - p1.getX() * p2.getY()").
expr(line_2_expr25, method_invocation, line_2_expr23, right_operand, range(line_2, 5733, 9, 141, 141), "p1.getY()").
expr(line_2_expr27, method_invocation, line_2_expr26, left_operand, range(line_2, 5745, 9, 141, 141), "p1.getX()").
expr(line_2_expr26, infix_expression, line_2_expr22, right_operand, range(line_2, 5745, 21, 141, 141), "p1.getX() * p2.getY()").
expr(line_2_expr28, method_invocation, line_2_expr26, right_operand, range(line_2, 5757, 9, 141, 141), "p2.getY()").
expr(line_2_expr29, cast_expression, line_2_code23, initializer, range(line_2, 7134, 16, 181, 181), "(Vector2D)point").
expr(line_2_expr30, class_instance_creation, line_2_stmt11, expression, range(line_2, 7167, 47, 182, 182), "new Vector1D(cos * p2.getX() + sin * p2.getY())").
expr(line_2_expr31, infix_expression, line_2_expr30, (arguments, 0), range(line_2, 7180, 33, 182, 182), "cos * p2.getX() + sin * p2.getY()").
expr(line_2_expr32, infix_expression, line_2_expr31, left_operand, range(line_2, 7180, 15, 182, 182), "cos * p2.getX()").
expr(line_2_expr33, method_invocation, line_2_expr32, right_operand, range(line_2, 7186, 9, 182, 182), "p2.getX()").
expr(line_2_expr34, infix_expression, line_2_expr31, right_operand, range(line_2, 7198, 15, 182, 182), "sin * p2.getY()").
expr(line_2_expr35, method_invocation, line_2_expr34, right_operand, range(line_2, 7204, 9, 182, 182), "p2.getY()").
expr(line_2_expr37, infix_expression, line_2_expr36, left_operand, range(line_2, 7814, 15, 198, 198), "sin * other.cos").
expr(line_2_expr36, infix_expression, line_2_code29, initializer, range(line_2, 7814, 33, 198, 198), "sin * other.cos - other.sin * cos").
expr(line_2_expr38, infix_expression, line_2_expr36, right_operand, range(line_2, 7832, 15, 198, 198), "other.sin * cos").
expr(line_2_expr40, method_invocation, line_2_expr39, left_operand, range(line_2, 7861, 15, 199, 199), "FastMath.abs(d)").
expr(line_2_expr39, infix_expression, line_2_stmt13, expression, range(line_2, 7861, 25, 199, 199), "FastMath.abs(d) < 1.0e-10").
%math_arrays_1 - org.apache.commons.math3.util.MathArrays
expr(math_arrays_1_expr1, infix_expression, math_arrays_1_code6, initializer, range(math_arrays_1, 32523, 17, 896, 896), "SPLIT_FACTOR * a1").
expr(math_arrays_1_expr2, infix_expression, math_arrays_1_code9, initializer, range(math_arrays_1, 32576, 16, 897, 897), "ca1 - (ca1 - a1)").
expr(math_arrays_1_expr3, parenthesized_expression, math_arrays_1_expr2, right_operand, range(math_arrays_1, 32582, 10, 897, 897), "(ca1 - a1)").
expr(math_arrays_1_expr4, infix_expression, math_arrays_1_expr3, expression, range(math_arrays_1, 32583, 8, 897, 897), "ca1 - a1").
expr(math_arrays_1_expr5, infix_expression, math_arrays_1_code12, initializer, range(math_arrays_1, 32628, 11, 898, 898), "a1 - a1High").
expr(math_arrays_1_expr6, infix_expression, math_arrays_1_code15, initializer, range(math_arrays_1, 32675, 17, 899, 899), "SPLIT_FACTOR * b1").
expr(math_arrays_1_expr7, infix_expression, math_arrays_1_code18, initializer, range(math_arrays_1, 32728, 16, 900, 900), "cb1 - (cb1 - b1)").
expr(math_arrays_1_expr8, parenthesized_expression, math_arrays_1_expr7, right_operand, range(math_arrays_1, 32734, 10, 900, 900), "(cb1 - b1)").
expr(math_arrays_1_expr9, infix_expression, math_arrays_1_expr8, expression, range(math_arrays_1, 32735, 8, 900, 900), "cb1 - b1").
expr(math_arrays_1_expr10, infix_expression, math_arrays_1_code21, initializer, range(math_arrays_1, 32780, 11, 901, 901), "b1 - b1High").
expr(math_arrays_1_expr11, infix_expression, math_arrays_1_code24, initializer, range(math_arrays_1, 32871, 7, 904, 904), "a1 * b1").
expr(math_arrays_1_expr13, infix_expression, math_arrays_1_expr12, left_operand, range(math_arrays_1, 32914, 13, 905, 905), "a1Low * b1Low").
expr(math_arrays_1_expr12, infix_expression, math_arrays_1_code27, initializer, range(math_arrays_1, 32914, 83, 905, 905), "a1Low * b1Low - (((prod1High - a1High * b1High) - a1Low * b1High) - a1High * b1Low)").
expr(math_arrays_1_expr14, parenthesized_expression, math_arrays_1_expr12, right_operand, range(math_arrays_1, 32930, 67, 905, 905), "(((prod1High - a1High * b1High) - a1Low * b1High) - a1High * b1Low)").
expr(math_arrays_1_expr16, parenthesized_expression, math_arrays_1_expr15, left_operand, range(math_arrays_1, 32931, 48, 905, 905), "((prod1High - a1High * b1High) - a1Low * b1High)").
expr(math_arrays_1_expr15, infix_expression, math_arrays_1_expr14, expression, range(math_arrays_1, 32931, 65, 905, 905), "((prod1High - a1High * b1High) - a1Low * b1High) - a1High * b1Low").
expr(math_arrays_1_expr17, infix_expression, math_arrays_1_expr16, expression, range(math_arrays_1, 32932, 46, 905, 905), "(prod1High - a1High * b1High) - a1Low * b1High").
expr(math_arrays_1_expr18, parenthesized_expression, math_arrays_1_expr17, left_operand, range(math_arrays_1, 32932, 29, 905, 905), "(prod1High - a1High * b1High)").
expr(math_arrays_1_expr19, infix_expression, math_arrays_1_expr18, expression, range(math_arrays_1, 32933, 27, 905, 905), "prod1High - a1High * b1High").
expr(math_arrays_1_expr20, infix_expression, math_arrays_1_expr19, right_operand, range(math_arrays_1, 32945, 15, 905, 905), "a1High * b1High").
expr(math_arrays_1_expr21, infix_expression, math_arrays_1_expr17, right_operand, range(math_arrays_1, 32964, 14, 905, 905), "a1Low * b1High").
expr(math_arrays_1_expr22, infix_expression, math_arrays_1_expr15, right_operand, range(math_arrays_1, 32982, 14, 905, 905), "a1High * b1Low").
expr(math_arrays_1_expr23, infix_expression, math_arrays_1_code30, initializer, range(math_arrays_1, 33084, 17, 908, 908), "SPLIT_FACTOR * a2").
expr(math_arrays_1_expr24, infix_expression, math_arrays_1_code33, initializer, range(math_arrays_1, 33137, 16, 909, 909), "ca2 - (ca2 - a2)").
expr(math_arrays_1_expr25, parenthesized_expression, math_arrays_1_expr24, right_operand, range(math_arrays_1, 33143, 10, 909, 909), "(ca2 - a2)").
expr(math_arrays_1_expr26, infix_expression, math_arrays_1_expr25, expression, range(math_arrays_1, 33144, 8, 909, 909), "ca2 - a2").
expr(math_arrays_1_expr27, infix_expression, math_arrays_1_code36, initializer, range(math_arrays_1, 33189, 11, 910, 910), "a2 - a2High").
expr(math_arrays_1_expr28, infix_expression, math_arrays_1_code39, initializer, range(math_arrays_1, 33236, 17, 911, 911), "SPLIT_FACTOR * b2").
expr(math_arrays_1_expr29, infix_expression, math_arrays_1_code42, initializer, range(math_arrays_1, 33289, 16, 912, 912), "cb2 - (cb2 - b2)").
expr(math_arrays_1_expr30, parenthesized_expression, math_arrays_1_expr29, right_operand, range(math_arrays_1, 33295, 10, 912, 912), "(cb2 - b2)").
expr(math_arrays_1_expr31, infix_expression, math_arrays_1_expr30, expression, range(math_arrays_1, 33296, 8, 912, 912), "cb2 - b2").
expr(math_arrays_1_expr32, infix_expression, math_arrays_1_code45, initializer, range(math_arrays_1, 33341, 11, 913, 913), "b2 - b2High").
expr(math_arrays_1_expr33, infix_expression, math_arrays_1_code48, initializer, range(math_arrays_1, 33432, 7, 916, 916), "a2 * b2").
expr(math_arrays_1_expr35, infix_expression, math_arrays_1_expr34, left_operand, range(math_arrays_1, 33475, 13, 917, 917), "a2Low * b2Low").
expr(math_arrays_1_expr34, infix_expression, math_arrays_1_code51, initializer, range(math_arrays_1, 33475, 83, 917, 917), "a2Low * b2Low - (((prod2High - a2High * b2High) - a2Low * b2High) - a2High * b2Low)").
expr(math_arrays_1_expr36, parenthesized_expression, math_arrays_1_expr34, right_operand, range(math_arrays_1, 33491, 67, 917, 917), "(((prod2High - a2High * b2High) - a2Low * b2High) - a2High * b2Low)").
expr(math_arrays_1_expr38, parenthesized_expression, math_arrays_1_expr37, left_operand, range(math_arrays_1, 33492, 48, 917, 917), "((prod2High - a2High * b2High) - a2Low * b2High)").
expr(math_arrays_1_expr37, infix_expression, math_arrays_1_expr36, expression, range(math_arrays_1, 33492, 65, 917, 917), "((prod2High - a2High * b2High) - a2Low * b2High) - a2High * b2Low").
expr(math_arrays_1_expr40, parenthesized_expression, math_arrays_1_expr39, left_operand, range(math_arrays_1, 33493, 29, 917, 917), "(prod2High - a2High * b2High)").
expr(math_arrays_1_expr39, infix_expression, math_arrays_1_expr38, expression, range(math_arrays_1, 33493, 46, 917, 917), "(prod2High - a2High * b2High) - a2Low * b2High").
expr(math_arrays_1_expr41, infix_expression, math_arrays_1_expr40, expression, range(math_arrays_1, 33494, 27, 917, 917), "prod2High - a2High * b2High").
expr(math_arrays_1_expr42, infix_expression, math_arrays_1_expr41, right_operand, range(math_arrays_1, 33506, 15, 917, 917), "a2High * b2High").
expr(math_arrays_1_expr43, infix_expression, math_arrays_1_expr39, right_operand, range(math_arrays_1, 33525, 14, 917, 917), "a2Low * b2High").
expr(math_arrays_1_expr44, infix_expression, math_arrays_1_expr37, right_operand, range(math_arrays_1, 33543, 14, 917, 917), "a2High * b2Low").
expr(math_arrays_1_expr45, infix_expression, math_arrays_1_code54, initializer, range(math_arrays_1, 33642, 21, 920, 920), "prod1High + prod2High").
expr(math_arrays_1_expr46, infix_expression, math_arrays_1_code57, initializer, range(math_arrays_1, 33699, 19, 921, 921), "s12High - prod2High").
expr(math_arrays_1_expr48, parenthesized_expression, math_arrays_1_expr47, left_operand, range(math_arrays_1, 33754, 34, 922, 922), "(prod2High - (s12High - s12Prime))").
expr(math_arrays_1_expr47, infix_expression, math_arrays_1_code60, initializer, range(math_arrays_1, 33754, 59, 922, 922), "(prod2High - (s12High - s12Prime)) + (prod1High - s12Prime)").
expr(math_arrays_1_expr49, infix_expression, math_arrays_1_expr48, expression, range(math_arrays_1, 33755, 32, 922, 922), "prod2High - (s12High - s12Prime)").
expr(math_arrays_1_expr50, parenthesized_expression, math_arrays_1_expr49, right_operand, range(math_arrays_1, 33767, 20, 922, 922), "(s12High - s12Prime)").
expr(math_arrays_1_expr51, infix_expression, math_arrays_1_expr50, expression, range(math_arrays_1, 33768, 18, 922, 922), "s12High - s12Prime").
expr(math_arrays_1_expr52, parenthesized_expression, math_arrays_1_expr47, right_operand, range(math_arrays_1, 33791, 22, 922, 922), "(prod1High - s12Prime)").
expr(math_arrays_1_expr53, infix_expression, math_arrays_1_expr52, expression, range(math_arrays_1, 33792, 20, 922, 922), "prod1High - s12Prime").
expr(math_arrays_1_expr54, infix_expression, math_arrays_1_code62, initializer, range(math_arrays_1, 33993, 40, 926, 926), "s12High + (prod1Low + prod2Low + s12Low)").
expr(math_arrays_1_expr55, parenthesized_expression, math_arrays_1_expr54, right_operand, range(math_arrays_1, 34003, 30, 926, 926), "(prod1Low + prod2Low + s12Low)").
expr(math_arrays_1_expr56, infix_expression, math_arrays_1_expr55, expression, range(math_arrays_1, 34004, 28, 926, 926), "prod1Low + prod2Low + s12Low").
expr(math_arrays_1_expr57, method_invocation, math_arrays_1_stmt21, expression, range(math_arrays_1, 34048, 20, 928, 928), "Double.isNaN(result)").
expr(math_arrays_1_expr58, infix_expression, math_arrays_1_code66, initializer, range(math_arrays_1, 36689, 17, 976, 976), "SPLIT_FACTOR * a1").
expr(math_arrays_1_expr59, infix_expression, math_arrays_1_code69, initializer, range(math_arrays_1, 36742, 16, 977, 977), "ca1 - (ca1 - a1)").
expr(math_arrays_1_expr60, parenthesized_expression, math_arrays_1_expr59, right_operand, range(math_arrays_1, 36748, 10, 977, 977), "(ca1 - a1)").
expr(math_arrays_1_expr61, infix_expression, math_arrays_1_expr60, expression, range(math_arrays_1, 36749, 8, 977, 977), "ca1 - a1").
expr(math_arrays_1_expr62, infix_expression, math_arrays_1_code72, initializer, range(math_arrays_1, 36794, 11, 978, 978), "a1 - a1High").
expr(math_arrays_1_expr63, infix_expression, math_arrays_1_code75, initializer, range(math_arrays_1, 36841, 17, 979, 979), "SPLIT_FACTOR * b1").
expr(math_arrays_1_expr64, infix_expression, math_arrays_1_code78, initializer, range(math_arrays_1, 36894, 16, 980, 980), "cb1 - (cb1 - b1)").
expr(math_arrays_1_expr65, parenthesized_expression, math_arrays_1_expr64, right_operand, range(math_arrays_1, 36900, 10, 980, 980), "(cb1 - b1)").
expr(math_arrays_1_expr66, infix_expression, math_arrays_1_expr65, expression, range(math_arrays_1, 36901, 8, 980, 980), "cb1 - b1").
expr(math_arrays_1_expr67, infix_expression, math_arrays_1_code81, initializer, range(math_arrays_1, 36946, 11, 981, 981), "b1 - b1High").
expr(math_arrays_1_expr68, infix_expression, math_arrays_1_code84, initializer, range(math_arrays_1, 37037, 7, 984, 984), "a1 * b1").
expr(math_arrays_1_expr69, infix_expression, math_arrays_1_code87, initializer, range(math_arrays_1, 37080, 83, 985, 985), "a1Low * b1Low - (((prod1High - a1High * b1High) - a1Low * b1High) - a1High * b1Low)").
expr(math_arrays_1_expr70, infix_expression, math_arrays_1_expr69, left_operand, range(math_arrays_1, 37080, 13, 985, 985), "a1Low * b1Low").
expr(math_arrays_1_expr71, parenthesized_expression, math_arrays_1_expr69, right_operand, range(math_arrays_1, 37096, 67, 985, 985), "(((prod1High - a1High * b1High) - a1Low * b1High) - a1High * b1Low)").
expr(math_arrays_1_expr73, parenthesized_expression, math_arrays_1_expr72, left_operand, range(math_arrays_1, 37097, 48, 985, 985), "((prod1High - a1High * b1High) - a1Low * b1High)").
expr(math_arrays_1_expr72, infix_expression, math_arrays_1_expr71, expression, range(math_arrays_1, 37097, 65, 985, 985), "((prod1High - a1High * b1High) - a1Low * b1High) - a1High * b1Low").
expr(math_arrays_1_expr75, parenthesized_expression, math_arrays_1_expr74, left_operand, range(math_arrays_1, 37098, 29, 985, 985), "(prod1High - a1High * b1High)").
expr(math_arrays_1_expr74, infix_expression, math_arrays_1_expr73, expression, range(math_arrays_1, 37098, 46, 985, 985), "(prod1High - a1High * b1High) - a1Low * b1High").
expr(math_arrays_1_expr76, infix_expression, math_arrays_1_expr75, expression, range(math_arrays_1, 37099, 27, 985, 985), "prod1High - a1High * b1High").
expr(math_arrays_1_expr77, infix_expression, math_arrays_1_expr76, right_operand, range(math_arrays_1, 37111, 15, 985, 985), "a1High * b1High").
expr(math_arrays_1_expr78, infix_expression, math_arrays_1_expr74, right_operand, range(math_arrays_1, 37130, 14, 985, 985), "a1Low * b1High").
expr(math_arrays_1_expr79, infix_expression, math_arrays_1_expr72, right_operand, range(math_arrays_1, 37148, 14, 985, 985), "a1High * b1Low").
expr(math_arrays_1_expr80, infix_expression, math_arrays_1_code90, initializer, range(math_arrays_1, 37250, 17, 988, 988), "SPLIT_FACTOR * a2").
expr(math_arrays_1_expr81, infix_expression, math_arrays_1_code93, initializer, range(math_arrays_1, 37303, 16, 989, 989), "ca2 - (ca2 - a2)").
expr(math_arrays_1_expr82, parenthesized_expression, math_arrays_1_expr81, right_operand, range(math_arrays_1, 37309, 10, 989, 989), "(ca2 - a2)").
expr(math_arrays_1_expr83, infix_expression, math_arrays_1_expr82, expression, range(math_arrays_1, 37310, 8, 989, 989), "ca2 - a2").
expr(math_arrays_1_expr84, infix_expression, math_arrays_1_code96, initializer, range(math_arrays_1, 37355, 11, 990, 990), "a2 - a2High").
expr(math_arrays_1_expr85, infix_expression, math_arrays_1_code99, initializer, range(math_arrays_1, 37402, 17, 991, 991), "SPLIT_FACTOR * b2").
expr(math_arrays_1_expr86, infix_expression, math_arrays_1_code102, initializer, range(math_arrays_1, 37455, 16, 992, 992), "cb2 - (cb2 - b2)").
expr(math_arrays_1_expr87, parenthesized_expression, math_arrays_1_expr86, right_operand, range(math_arrays_1, 37461, 10, 992, 992), "(cb2 - b2)").
expr(math_arrays_1_expr88, infix_expression, math_arrays_1_expr87, expression, range(math_arrays_1, 37462, 8, 992, 992), "cb2 - b2").
expr(math_arrays_1_expr89, infix_expression, math_arrays_1_code105, initializer, range(math_arrays_1, 37507, 11, 993, 993), "b2 - b2High").
expr(math_arrays_1_expr90, infix_expression, math_arrays_1_code108, initializer, range(math_arrays_1, 37598, 7, 996, 996), "a2 * b2").
expr(math_arrays_1_expr92, infix_expression, math_arrays_1_expr91, left_operand, range(math_arrays_1, 37641, 13, 997, 997), "a2Low * b2Low").
expr(math_arrays_1_expr91, infix_expression, math_arrays_1_code111, initializer, range(math_arrays_1, 37641, 83, 997, 997), "a2Low * b2Low - (((prod2High - a2High * b2High) - a2Low * b2High) - a2High * b2Low)").
expr(math_arrays_1_expr93, parenthesized_expression, math_arrays_1_expr91, right_operand, range(math_arrays_1, 37657, 67, 997, 997), "(((prod2High - a2High * b2High) - a2Low * b2High) - a2High * b2Low)").
expr(math_arrays_1_expr95, parenthesized_expression, math_arrays_1_expr94, left_operand, range(math_arrays_1, 37658, 48, 997, 997), "((prod2High - a2High * b2High) - a2Low * b2High)").
expr(math_arrays_1_expr94, infix_expression, math_arrays_1_expr93, expression, range(math_arrays_1, 37658, 65, 997, 997), "((prod2High - a2High * b2High) - a2Low * b2High) - a2High * b2Low").
expr(math_arrays_1_expr97, parenthesized_expression, math_arrays_1_expr96, left_operand, range(math_arrays_1, 37659, 29, 997, 997), "(prod2High - a2High * b2High)").
expr(math_arrays_1_expr96, infix_expression, math_arrays_1_expr95, expression, range(math_arrays_1, 37659, 46, 997, 997), "(prod2High - a2High * b2High) - a2Low * b2High").
expr(math_arrays_1_expr98, infix_expression, math_arrays_1_expr97, expression, range(math_arrays_1, 37660, 27, 997, 997), "prod2High - a2High * b2High").
expr(math_arrays_1_expr99, infix_expression, math_arrays_1_expr98, right_operand, range(math_arrays_1, 37672, 15, 997, 997), "a2High * b2High").
expr(math_arrays_1_expr100, infix_expression, math_arrays_1_expr96, right_operand, range(math_arrays_1, 37691, 14, 997, 997), "a2Low * b2High").
expr(math_arrays_1_expr101, infix_expression, math_arrays_1_expr94, right_operand, range(math_arrays_1, 37709, 14, 997, 997), "a2High * b2Low").
expr(math_arrays_1_expr102, infix_expression, math_arrays_1_code114, initializer, range(math_arrays_1, 37811, 17, 1000, 1000), "SPLIT_FACTOR * a3").
expr(math_arrays_1_expr103, infix_expression, math_arrays_1_code117, initializer, range(math_arrays_1, 37864, 16, 1001, 1001), "ca3 - (ca3 - a3)").
expr(math_arrays_1_expr104, parenthesized_expression, math_arrays_1_expr103, right_operand, range(math_arrays_1, 37870, 10, 1001, 1001), "(ca3 - a3)").
expr(math_arrays_1_expr105, infix_expression, math_arrays_1_expr104, expression, range(math_arrays_1, 37871, 8, 1001, 1001), "ca3 - a3").
expr(math_arrays_1_expr106, infix_expression, math_arrays_1_code120, initializer, range(math_arrays_1, 37916, 11, 1002, 1002), "a3 - a3High").
expr(math_arrays_1_expr107, infix_expression, math_arrays_1_code123, initializer, range(math_arrays_1, 37963, 17, 1003, 1003), "SPLIT_FACTOR * b3").
expr(math_arrays_1_expr108, infix_expression, math_arrays_1_code126, initializer, range(math_arrays_1, 38016, 16, 1004, 1004), "cb3 - (cb3 - b3)").
expr(math_arrays_1_expr109, parenthesized_expression, math_arrays_1_expr108, right_operand, range(math_arrays_1, 38022, 10, 1004, 1004), "(cb3 - b3)").
expr(math_arrays_1_expr110, infix_expression, math_arrays_1_expr109, expression, range(math_arrays_1, 38023, 8, 1004, 1004), "cb3 - b3").
expr(math_arrays_1_expr111, infix_expression, math_arrays_1_code129, initializer, range(math_arrays_1, 38068, 11, 1005, 1005), "b3 - b3High").
expr(math_arrays_1_expr112, infix_expression, math_arrays_1_code132, initializer, range(math_arrays_1, 38159, 7, 1008, 1008), "a3 * b3").
expr(math_arrays_1_expr114, infix_expression, math_arrays_1_expr113, left_operand, range(math_arrays_1, 38202, 13, 1009, 1009), "a3Low * b3Low").
expr(math_arrays_1_expr113, infix_expression, math_arrays_1_code135, initializer, range(math_arrays_1, 38202, 83, 1009, 1009), "a3Low * b3Low - (((prod3High - a3High * b3High) - a3Low * b3High) - a3High * b3Low)").
expr(math_arrays_1_expr115, parenthesized_expression, math_arrays_1_expr113, right_operand, range(math_arrays_1, 38218, 67, 1009, 1009), "(((prod3High - a3High * b3High) - a3Low * b3High) - a3High * b3Low)").
expr(math_arrays_1_expr117, parenthesized_expression, math_arrays_1_expr116, left_operand, range(math_arrays_1, 38219, 48, 1009, 1009), "((prod3High - a3High * b3High) - a3Low * b3High)").
expr(math_arrays_1_expr116, infix_expression, math_arrays_1_expr115, expression, range(math_arrays_1, 38219, 65, 1009, 1009), "((prod3High - a3High * b3High) - a3Low * b3High) - a3High * b3Low").
expr(math_arrays_1_expr119, parenthesized_expression, math_arrays_1_expr118, left_operand, range(math_arrays_1, 38220, 29, 1009, 1009), "(prod3High - a3High * b3High)").
expr(math_arrays_1_expr118, infix_expression, math_arrays_1_expr117, expression, range(math_arrays_1, 38220, 46, 1009, 1009), "(prod3High - a3High * b3High) - a3Low * b3High").
expr(math_arrays_1_expr120, infix_expression, math_arrays_1_expr119, expression, range(math_arrays_1, 38221, 27, 1009, 1009), "prod3High - a3High * b3High").
expr(math_arrays_1_expr121, infix_expression, math_arrays_1_expr120, right_operand, range(math_arrays_1, 38233, 15, 1009, 1009), "a3High * b3High").
expr(math_arrays_1_expr122, infix_expression, math_arrays_1_expr118, right_operand, range(math_arrays_1, 38252, 14, 1009, 1009), "a3Low * b3High").
expr(math_arrays_1_expr123, infix_expression, math_arrays_1_expr116, right_operand, range(math_arrays_1, 38270, 14, 1009, 1009), "a3High * b3Low").
expr(math_arrays_1_expr124, infix_expression, math_arrays_1_code138, initializer, range(math_arrays_1, 38369, 21, 1012, 1012), "prod1High + prod2High").
expr(math_arrays_1_expr125, infix_expression, math_arrays_1_code141, initializer, range(math_arrays_1, 38426, 19, 1013, 1013), "s12High - prod2High").
expr(math_arrays_1_expr127, parenthesized_expression, math_arrays_1_expr126, left_operand, range(math_arrays_1, 38481, 34, 1014, 1014), "(prod2High - (s12High - s12Prime))").
expr(math_arrays_1_expr126, infix_expression, math_arrays_1_code144, initializer, range(math_arrays_1, 38481, 59, 1014, 1014), "(prod2High - (s12High - s12Prime)) + (prod1High - s12Prime)").
expr(math_arrays_1_expr128, infix_expression, math_arrays_1_expr127, expression, range(math_arrays_1, 38482, 32, 1014, 1014), "prod2High - (s12High - s12Prime)").
expr(math_arrays_1_expr129, parenthesized_expression, math_arrays_1_expr128, right_operand, range(math_arrays_1, 38494, 20, 1014, 1014), "(s12High - s12Prime)").
expr(math_arrays_1_expr130, infix_expression, math_arrays_1_expr129, expression, range(math_arrays_1, 38495, 18, 1014, 1014), "s12High - s12Prime").
expr(math_arrays_1_expr131, parenthesized_expression, math_arrays_1_expr126, right_operand, range(math_arrays_1, 38518, 22, 1014, 1014), "(prod1High - s12Prime)").
expr(math_arrays_1_expr132, infix_expression, math_arrays_1_expr131, expression, range(math_arrays_1, 38519, 20, 1014, 1014), "prod1High - s12Prime").
expr(math_arrays_1_expr133, infix_expression, math_arrays_1_code147, initializer, range(math_arrays_1, 38634, 19, 1017, 1017), "s12High + prod3High").
expr(math_arrays_1_expr134, infix_expression, math_arrays_1_code150, initializer, range(math_arrays_1, 38689, 20, 1018, 1018), "s123High - prod3High").
expr(math_arrays_1_expr136, parenthesized_expression, math_arrays_1_expr135, left_operand, range(math_arrays_1, 38745, 36, 1019, 1019), "(prod3High - (s123High - s123Prime))").
expr(math_arrays_1_expr135, infix_expression, math_arrays_1_code153, initializer, range(math_arrays_1, 38745, 60, 1019, 1019), "(prod3High - (s123High - s123Prime)) + (s12High - s123Prime)").
expr(math_arrays_1_expr137, infix_expression, math_arrays_1_expr136, expression, range(math_arrays_1, 38746, 34, 1019, 1019), "prod3High - (s123High - s123Prime)").
expr(math_arrays_1_expr138, parenthesized_expression, math_arrays_1_expr137, right_operand, range(math_arrays_1, 38758, 22, 1019, 1019), "(s123High - s123Prime)").
expr(math_arrays_1_expr139, infix_expression, math_arrays_1_expr138, expression, range(math_arrays_1, 38759, 20, 1019, 1019), "s123High - s123Prime").
expr(math_arrays_1_expr140, parenthesized_expression, math_arrays_1_expr135, right_operand, range(math_arrays_1, 38784, 21, 1019, 1019), "(s12High - s123Prime)").
expr(math_arrays_1_expr141, infix_expression, math_arrays_1_expr140, expression, range(math_arrays_1, 38785, 19, 1019, 1019), "s12High - s123Prime").
expr(math_arrays_1_expr142, infix_expression, math_arrays_1_code155, initializer, range(math_arrays_1, 38986, 62, 1023, 1023), "s123High + (prod1Low + prod2Low + prod3Low+ s12Low+ s123Low)").
expr(math_arrays_1_expr143, parenthesized_expression, math_arrays_1_expr142, right_operand, range(math_arrays_1, 38997, 51, 1023, 1023), "(prod1Low + prod2Low + prod3Low+ s12Low+ s123Low)").
expr(math_arrays_1_expr144, infix_expression, math_arrays_1_expr143, expression, range(math_arrays_1, 38998, 49, 1023, 1023), "prod1Low + prod2Low + prod3Low+ s12Low+ s123Low").
expr(math_arrays_1_expr145, method_invocation, math_arrays_1_stmt54, expression, range(math_arrays_1, 39063, 20, 1025, 1025), "Double.isNaN(result)").
%abstract_region_1 - org.apache.commons.math3.geometry.partitioning.AbstractRegion
expr(abstract_region_1_expr1, assignment, abstract_region_1_stmt1, expression, range(abstract_region_1, 2558, 16, 68, 68), "this.tree=tree").
expr(abstract_region_1_expr2, field_access, abstract_region_1_expr1, left_hand_side, range(abstract_region_1, 2558, 9, 68, 68), "this.tree").
expr(abstract_region_1_expr3, this_expression, f_tree_299, expression, range(abstract_region_1, 2558, 4, 68, 68), "this").
%sub_line_2 - org.apache.commons.math3.geometry.euclidean.twod.SubLine
expr(sub_line_2_expr1, super_constructor_invocation, sub_line_2_block1, (statements, 0), range(sub_line_2, 2457, 58, 56, 56), "super(new Line(start,end),buildIntervalSet(start,end));").
expr(sub_line_2_expr2, class_instance_creation, sub_line_2_stmt1, (arguments, 0), range(sub_line_2, 2463, 20, 56, 56), "new Line(start,end)").
expr(sub_line_2_expr3, method_invocation, sub_line_2_stmt1, (arguments, 1), range(sub_line_2, 2485, 28, 56, 56), "buildIntervalSet(start,end)").
expr(sub_line_2_expr4, cast_expression, sub_line_2_code7, initializer, range(sub_line_2, 5192, 22, 113, 113), "(Line)getHyperplane()").
expr(sub_line_2_expr5, method_invocation, sub_line_2_expr4, expression, range(sub_line_2, 5199, 15, 113, 113), "getHyperplane()").
expr(sub_line_2_expr6, cast_expression, sub_line_2_code10, initializer, range(sub_line_2, 5237, 30, 114, 114), "(Line)subLine.getHyperplane()").
expr(sub_line_2_expr7, method_invocation, sub_line_2_expr6, expression, range(sub_line_2, 5244, 23, 114, 114), "subLine.getHyperplane()").
expr(sub_line_2_expr8, method_invocation, sub_line_2_code13, initializer, range(sub_line_2, 5346, 25, 117, 117), "line1.intersection(line2)").
expr(sub_line_2_expr9, method_invocation, sub_line_2_code15, initializer, range(sub_line_2, 5464, 54, 120, 120), "getRemainingRegion().checkPoint(line1.toSubSpace(v2D))").
expr(sub_line_2_expr11, method_invocation, sub_line_2_expr9, expression, range(sub_line_2, 5464, 20, 120, 120), "getRemainingRegion()").
expr(sub_line_2_expr10, method_invocation, sub_line_2_expr9, (arguments, 0), range(sub_line_2, 5496, 21, 120, 120), "line1.toSubSpace(v2D)").
expr(sub_line_2_expr12, class_instance_creation, sub_line_2_code19, initializer, range(sub_line_2, 6191, 20, 139, 139), "new Line(start,end)").
expr(sub_line_2_expr13, class_instance_creation, sub_line_2_stmt7, expression, range(sub_line_2, 6228, 108, 140, 141), "new IntervalsSet(line.toSubSpace(start).getX(),line.toSubSpace(end).getX())").
expr(sub_line_2_expr14, method_invocation, sub_line_2_expr13, (arguments, 0), range(sub_line_2, 6245, 29, 140, 140), "line.toSubSpace(start).getX()").
expr(sub_line_2_expr16, method_invocation, sub_line_2_expr14, expression, range(sub_line_2, 6245, 22, 140, 140), "line.toSubSpace(start)").
expr(sub_line_2_expr15, method_invocation, sub_line_2_expr13, (arguments, 1), range(sub_line_2, 6308, 27, 141, 141), "line.toSubSpace(end).getX()").
%vector2_d_1 - org.apache.commons.math3.geometry.euclidean.twod.Vector2D
expr(vector2_d_1_expr1, class_instance_creation, vector2_d_1_code8, initializer, range(vector2_d_1, 1566, 18, 37, 37), "new Vector2D(0,0)").
expr(vector2_d_1_expr2, class_instance_creation, vector2_d_1_code15, initializer, range(vector2_d_1, 1716, 36, 41, 41), "new Vector2D(Double.NaN,Double.NaN)").
expr(vector2_d_1_expr3, class_instance_creation, vector2_d_1_code22, initializer, range(vector2_d_1, 1922, 64, 46, 46), "new Vector2D(Double.POSITIVE_INFINITY,Double.POSITIVE_INFINITY)").
expr(vector2_d_1_expr4, class_instance_creation, vector2_d_1_code28, initializer, range(vector2_d_1, 2117, 64, 50, 50), "new Vector2D(Double.NEGATIVE_INFINITY,Double.NEGATIVE_INFINITY)").
expr(vector2_d_1_expr7, this_expression, f_x_255, expression, range(vector2_d_1, 2603, 4, 69, 69), "this").
expr(vector2_d_1_expr6, field_access, vector2_d_1_expr5, left_hand_side, range(vector2_d_1, 2603, 6, 69, 69), "this.x").
expr(vector2_d_1_expr5, assignment, vector2_d_1_stmt1, expression, range(vector2_d_1, 2603, 10, 69, 69), "this.x=x").
expr(vector2_d_1_expr9, field_access, vector2_d_1_expr8, left_hand_side, range(vector2_d_1, 2623, 6, 70, 70), "this.y").
expr(vector2_d_1_expr8, assignment, vector2_d_1_stmt2, expression, range(vector2_d_1, 2623, 10, 70, 70), "this.y=y").
expr(vector2_d_1_expr10, this_expression, f_y_256, expression, range(vector2_d_1, 2623, 4, 70, 70), "this").
%sub_line_1 - org.apache.commons.math3.geometry.euclidean.threed.SubLine
expr(sub_line_1_expr3, this_expression, f_line_102, expression, range(sub_line_1, 1741, 4, 45, 45), "this").
expr(sub_line_1_expr2, field_access, sub_line_1_expr1, left_hand_side, range(sub_line_1, 1741, 9, 45, 45), "this.line").
expr(sub_line_1_expr1, assignment, sub_line_1_stmt1, expression, range(sub_line_1, 1741, 27, 45, 45), "this.line=line").
expr(sub_line_1_expr6, this_expression, f_remaining_region_103, expression, range(sub_line_1, 1778, 4, 46, 46), "this").
expr(sub_line_1_expr5, field_access, sub_line_1_expr4, left_hand_side, range(sub_line_1, 1778, 20, 46, 46), "this.remainingRegion").
expr(sub_line_1_expr4, assignment, sub_line_1_stmt2, expression, range(sub_line_1, 1778, 38, 46, 46), "this.remainingRegion=remainingRegion").
expr(sub_line_1_expr7, constructor_invocation, sub_line_1_block2, (statements, 0), range(sub_line_1, 2125, 57, 56, 56), "this(new Line(start,end),buildIntervalSet(start,end));").
expr(sub_line_1_expr8, class_instance_creation, sub_line_1_stmt3, (arguments, 0), range(sub_line_1, 2130, 20, 56, 56), "new Line(start,end)").
expr(sub_line_1_expr9, method_invocation, sub_line_1_stmt3, (arguments, 1), range(sub_line_1, 2152, 28, 56, 56), "buildIntervalSet(start,end)").
expr(sub_line_1_expr10, method_invocation, sub_line_1_code15, initializer, range(sub_line_1, 4918, 31, 113, 113), "line.intersection(subLine.line)").
expr(sub_line_1_expr11, method_invocation, sub_line_1_code17, initializer, range(sub_line_1, 5042, 48, 116, 116), "remainingRegion.checkPoint(line.toSubSpace(v1D))").
expr(sub_line_1_expr12, method_invocation, sub_line_1_expr11, (arguments, 0), range(sub_line_1, 5069, 20, 116, 116), "line.toSubSpace(v1D)").
expr(sub_line_1_expr13, class_instance_creation, sub_line_1_code21, initializer, range(sub_line_1, 5880, 20, 137, 137), "new Line(start,end)").
expr(sub_line_1_expr14, class_instance_creation, sub_line_1_stmt7, expression, range(sub_line_1, 5917, 108, 138, 139), "new IntervalsSet(line.toSubSpace(start).getX(),line.toSubSpace(end).getX())").
expr(sub_line_1_expr17, method_invocation, sub_line_1_expr15, expression, range(sub_line_1, 5934, 22, 138, 138), "line.toSubSpace(start)").
expr(sub_line_1_expr15, method_invocation, sub_line_1_expr14, (arguments, 0), range(sub_line_1, 5934, 29, 138, 138), "line.toSubSpace(start).getX()").
expr(sub_line_1_expr16, method_invocation, sub_line_1_expr14, (arguments, 1), range(sub_line_1, 5997, 27, 139, 139), "line.toSubSpace(end).getX()").
%fast_math_1 - org.apache.commons.math3.util.FastMath
expr(fast_math_1_expr1, method_invocation, fast_math_1_code8, initializer, range(fast_math_1, 4268, 32, 97, 97), "StrictMath.log(Double.MAX_VALUE)").
expr(fast_math_1_expr2, array_initializer, fast_math_1_code14, initializer, range(fast_math_1, 4974, 427, 115, 125), "{{1.0,5.669184079525E-24},{-0.25,-0.25},{0.3333333134651184,1.986821492305628E-8},{-0.25,-6.663542893624021E-14},{0.19999998807907104,1.1921056801463227E-8},{-0.1666666567325592,-7.800414592973399E-9},{0.1428571343421936,5.650007086920087E-9},{-0.12502530217170715,-7.44321345601866E-11},{0.11113807559013367,9.219544613762692E-9}}").
expr(fast_math_1_expr3, array_initializer, fast_math_1_code22, initializer, range(fast_math_1, 5529, 287, 128, 135), "{{1.0,-6.032174644509064E-23},{-0.25,-0.25},{0.3333333134651184,1.9868161777724352E-8},{-0.2499999701976776,-2.957007209750105E-8},{0.19999954104423523,1.5830993332061267E-10},{-0.16624879837036133,-2.6033824355191673E-8}}").
expr(fast_math_1_expr4, array_initializer, fast_math_1_code30, initializer, range(fast_math_1, 6047, 411, 142, 157), "{+0.0d,+0.1246747374534607d,+0.24740394949913025d,+0.366272509098053d,+0.4794255495071411d,+0.5850973129272461d,+0.6816387176513672d,+0.7675435543060303d,+0.8414709568023682d,+0.902267575263977d,+0.9489846229553223d,+0.9808930158615112d,+0.9974949359893799d,+0.9985313415527344d}").
expr(fast_math_1_expr5, array_initializer, fast_math_1_code37, initializer, range(fast_math_1, 6552, 440, 161, 176), "{+0.0d,-4.068233003401932E-9d,+9.755392680573412E-9d,+1.9987994582857286E-8d,-1.0902938113007961E-8d,-3.9986783938944604E-8d,+4.23719669792332E-8d,-5.207000323380292E-8d,+2.800552834259E-8d,+1.883511811213715E-8d,-3.5997360512765566E-9d,+4.116164446561962E-8d,+5.0614674548127384E-8d,-1.0129027912496858E-9d}").
expr(fast_math_1_expr6, array_initializer, fast_math_1_code44, initializer, range(fast_math_1, 7091, 415, 180, 195), "{+1.0d,+0.9921976327896118d,+0.9689123630523682d,+0.9305076599121094d,+0.8775825500488281d,+0.8109631538391113d,+0.7316888570785522d,+0.6409968137741089d,+0.5403022766113281d,+0.4311765432357788d,+0.3153223395347595d,+0.19454771280288696d,+0.07073719799518585d,-0.05417713522911072d}").
expr(fast_math_1_expr7, array_initializer, fast_math_1_code51, initializer, range(fast_math_1, 7604, 445, 199, 214), "{+0.0d,+3.4439717236742845E-8d,+5.865827662008209E-8d,-3.7999795083850525E-8d,+1.184154459111628E-8d,-3.43338934259355E-8d,+1.1795268640216787E-8d,+4.438921624363781E-8d,+2.925681159240093E-8d,-2.6437112632041807E-8d,+2.2860509143963117E-8d,-4.813899778443457E-9d,+3.6725170580355583E-9d,+2.0217439756338078E-10d}").
expr(fast_math_1_expr8, array_initializer, fast_math_1_code58, initializer, range(fast_math_1, 8167, 411, 219, 234), "{+0.0d,+0.1256551444530487d,+0.25534194707870483d,+0.3936265707015991d,+0.5463024377822876d,+0.7214844226837158d,+0.9315965175628662d,+1.1974215507507324d,+1.5574076175689697d,+2.092571258544922d,+3.0095696449279785d,+5.041914939880371d,+14.101419448852539d,-18.430862426757812d}").
expr(fast_math_1_expr9, array_initializer, fast_math_1_code65, initializer, range(fast_math_1, 8694, 445, 238, 253), "{+0.0d,-7.877917738262007E-9d,-2.5857668567479893E-8d,+5.2240336371356666E-9d,+5.206150291559893E-8d,+1.8307188599677033E-8d,-5.7618793749770706E-8d,+7.848361555046424E-8d,+1.0708593250394448E-7d,+1.7827257129423813E-8d,+2.893485277253286E-8d,+3.1660099222737955E-7d,+4.983191803254889E-7d,-3.356118100840571E-7d}").
expr(fast_math_1_expr10, array_creation, fast_math_1_code72, initializer, range(fast_math_1, 9244, 773, 256, 274), "new long[]{(0x28be60dbL << 32) | 0x9391054aL,(0x7f09d5f4L << 32) | 0x7d4d3770L,(0x36d8a566L << 32) | 0x4f10e410L,(0x7f9458eaL << 32) | 0xf7aef158L,(0x6dc91b8eL << 32) | 0x909374b8L,(0x01924bbaL << 32) | 0x82746487L,(0x3f877ac7L << 32) | 0x2c4a69cfL,(0xba208d7dL << 32) | 0x4baed121L,(0x3a671c09L << 32) | 0xad17df90L,(0x4e64758eL << 32) | 0x60d4ce7dL,(0x272117e2L << 32) | 0xef7e4a0eL,(0xc7fe25ffL << 32) | 0xf7816603L,(0xfbcbc462L << 32) | 0xd6829b47L,(0xdb4d9fb3L << 32) | 0xc9f2c26dL,(0xd3d18fd9L << 32) | 0xa797fa8bL,(0x5d49eeb1L << 32) | 0xfaf97c5eL,(0xcf41ce7dL << 32) | 0xe294a4baL,0x9afed7ecL << 32}").
expr(fast_math_1_expr11, array_initializer, fast_math_1_expr10, initializer, range(fast_math_1, 9255, 762, 256, 274), "{(0x28be60dbL << 32) | 0x9391054aL,(0x7f09d5f4L << 32) | 0x7d4d3770L,(0x36d8a566L << 32) | 0x4f10e410L,(0x7f9458eaL << 32) | 0xf7aef158L,(0x6dc91b8eL << 32) | 0x909374b8L,(0x01924bbaL << 32) | 0x82746487L,(0x3f877ac7L << 32) | 0x2c4a69cfL,(0xba208d7dL << 32) | 0x4baed121L,(0x3a671c09L << 32) | 0xad17df90L,(0x4e64758eL << 32) | 0x60d4ce7dL,(0x272117e2L << 32) | 0xef7e4a0eL,(0xc7fe25ffL << 32) | 0xf7816603L,(0xfbcbc462L << 32) | 0xd6829b47L,(0xdb4d9fb3L << 32) | 0xc9f2c26dL,(0xd3d18fd9L << 32) | 0xa797fa8bL,(0x5d49eeb1L << 32) | 0xfaf97c5eL,(0xcf41ce7dL << 32) | 0xe294a4baL,0x9afed7ecL << 32}").
expr(fast_math_1_expr12, array_creation, fast_math_1_code82, initializer, range(fast_math_1, 10120, 99, 277, 279), "new long[]{(0xc90fdaa2L << 32) | 0x2168c234L,(0xc4c6628bL << 32) | 0x80dc1cd1L}").
expr(fast_math_1_expr13, array_initializer, fast_math_1_expr12, initializer, range(fast_math_1, 10131, 88, 277, 279), "{(0xc90fdaa2L << 32) | 0x2168c234L,(0xc4c6628bL << 32) | 0x80dc1cd1L}").
expr(fast_math_1_expr14, array_initializer, fast_math_1_code92, initializer, range(fast_math_1, 10413, 85, 285, 285), "{0,0.125,0.25,0.375,0.5,0.625,0.75,0.875,1.0,1.125,1.25,1.375,1.5,1.625}").
expr(fast_math_1_expr15, array_initializer, fast_math_1_code99, initializer, range(fast_math_1, 10577, 263, 288, 292), "{0.6299605249474366,0.7937005259840998,1.0,1.2599210498948732,1.5874010519681994}").
expr(fast_math_1_expr16, method_invocation, fast_math_1_stmt1, expression, range(fast_math_1, 14437, 12, 385, 385), "Math.sqrt(a)").
expr(fast_math_1_expr17, infix_expression, fast_math_1_code104, initializer, range(fast_math_1, 54381, 3, 1680, 1680), "x * x").
expr(fast_math_1_expr18, assignment, fast_math_1_stmt4, expression, range(fast_math_1, 54437, 35, 1683, 1683), "p=p * x2 + -1.9841269659586505E-4").
expr(fast_math_1_expr20, infix_expression, fast_math_1_expr19, left_operand, range(fast_math_1, 54441, 6, 1683, 1683), "p * x2").
expr(fast_math_1_expr19, infix_expression, fast_math_1_expr18, right_hand_side, range(fast_math_1, 54441, 31, 1683, 1683), "p * x2 + -1.9841269659586505E-4").
expr(fast_math_1_expr21, prefix_expression, fast_math_1_expr19, right_operand, range(fast_math_1, 54450, 22, 1683, 1683), "-1.9841269659586505E-4").
expr(fast_math_1_expr22, assignment, fast_math_1_stmt5, expression, range(fast_math_1, 54482, 33, 1684, 1684), "p=p * x2 + 0.008333333333329196").
expr(fast_math_1_expr23, infix_expression, fast_math_1_expr22, right_hand_side, range(fast_math_1, 54486, 29, 1684, 1684), "p * x2 + 0.008333333333329196").
expr(fast_math_1_expr24, infix_expression, fast_math_1_expr23, left_operand, range(fast_math_1, 54486, 6, 1684, 1684), "p * x2").
expr(fast_math_1_expr25, assignment, fast_math_1_stmt6, expression, range(fast_math_1, 54525, 33, 1685, 1685), "p=p * x2 + -0.16666666666666666").
expr(fast_math_1_expr27, infix_expression, fast_math_1_expr26, left_operand, range(fast_math_1, 54529, 6, 1685, 1685), "p * x2").
expr(fast_math_1_expr26, infix_expression, fast_math_1_expr25, right_hand_side, range(fast_math_1, 54529, 29, 1685, 1685), "p * x2 + -0.16666666666666666").
expr(fast_math_1_expr28, prefix_expression, fast_math_1_expr26, right_operand, range(fast_math_1, 54538, 20, 1685, 1685), "-0.16666666666666666").
expr(fast_math_1_expr29, assignment, fast_math_1_stmt7, expression, range(fast_math_1, 54605, 14, 1688, 1688), "p=p * x2 * x").
expr(fast_math_1_expr30, infix_expression, fast_math_1_expr29, right_hand_side, range(fast_math_1, 54609, 10, 1688, 1688), "p * x2 * x").
expr(fast_math_1_expr31, infix_expression, fast_math_1_code109, initializer, range(fast_math_1, 54896, 3, 1700, 1700), "x * x").
expr(fast_math_1_expr32, assignment, fast_math_1_stmt11, expression, range(fast_math_1, 54951, 35, 1703, 1703), "p=p * x2 + -0.0013888888689039883").
expr(fast_math_1_expr33, infix_expression, fast_math_1_expr32, right_hand_side, range(fast_math_1, 54955, 31, 1703, 1703), "p * x2 + -0.0013888888689039883").
expr(fast_math_1_expr34, infix_expression, fast_math_1_expr33, left_operand, range(fast_math_1, 54955, 6, 1703, 1703), "p * x2").
expr(fast_math_1_expr35, prefix_expression, fast_math_1_expr33, right_operand, range(fast_math_1, 54964, 22, 1703, 1703), "-0.0013888888689039883").
expr(fast_math_1_expr36, assignment, fast_math_1_stmt12, expression, range(fast_math_1, 54996, 33, 1704, 1704), "p=p * x2 + 0.041666666666621166").
expr(fast_math_1_expr38, infix_expression, fast_math_1_expr37, left_operand, range(fast_math_1, 55000, 6, 1704, 1704), "p * x2").
expr(fast_math_1_expr37, infix_expression, fast_math_1_expr36, right_hand_side, range(fast_math_1, 55000, 29, 1704, 1704), "p * x2 + 0.041666666666621166").
expr(fast_math_1_expr39, assignment, fast_math_1_stmt13, expression, range(fast_math_1, 55039, 33, 1705, 1705), "p=p * x2 + -0.49999999999999994").
expr(fast_math_1_expr41, infix_expression, fast_math_1_expr40, left_operand, range(fast_math_1, 55043, 6, 1705, 1705), "p * x2").
expr(fast_math_1_expr40, infix_expression, fast_math_1_expr39, right_hand_side, range(fast_math_1, 55043, 29, 1705, 1705), "p * x2 + -0.49999999999999994").
expr(fast_math_1_expr42, prefix_expression, fast_math_1_expr40, right_operand, range(fast_math_1, 55052, 20, 1705, 1705), "-0.49999999999999994").
expr(fast_math_1_expr43, assignment, fast_math_1_stmt14, expression, range(fast_math_1, 55082, 7, 1706, 1706), "p*=x2").
expr(fast_math_1_expr44, cast_expression, fast_math_1_code114, initializer, range(fast_math_1, 55473, 24, 1719, 1719), "(int)((xa * 8.0) + 0.5)").
expr(fast_math_1_expr45, parenthesized_expression, fast_math_1_expr44, expression, range(fast_math_1, 55479, 18, 1719, 1719), "((xa * 8.0) + 0.5)").
expr(fast_math_1_expr47, parenthesized_expression, fast_math_1_expr46, left_operand, range(fast_math_1, 55480, 10, 1719, 1719), "(xa * 8.0)").
expr(fast_math_1_expr46, infix_expression, fast_math_1_expr45, expression, range(fast_math_1, 55480, 16, 1719, 1719), "(xa * 8.0) + 0.5").
expr(fast_math_1_expr48, infix_expression, fast_math_1_expr47, expression, range(fast_math_1, 55481, 8, 1719, 1719), "xa * 8.0").
expr(fast_math_1_expr49, infix_expression, fast_math_1_code118, initializer, range(fast_math_1, 55530, 17, 1720, 1720), "xa - EIGHTHS[idx]").
expr(fast_math_1_expr50, array_access, fast_math_1_expr49, right_operand, range(fast_math_1, 55535, 12, 1720, 1720), "EIGHTHS[idx]").
expr(fast_math_1_expr51, array_access, fast_math_1_code121, initializer, range(fast_math_1, 55617, 17, 1723, 1723), "SINE_TABLE_A[idx]").
expr(fast_math_1_expr52, array_access, fast_math_1_code124, initializer, range(fast_math_1, 55665, 17, 1724, 1724), "SINE_TABLE_B[idx]").
expr(fast_math_1_expr53, array_access, fast_math_1_code127, initializer, range(fast_math_1, 55713, 19, 1725, 1725), "COSINE_TABLE_A[idx]").
expr(fast_math_1_expr54, array_access, fast_math_1_code130, initializer, range(fast_math_1, 55763, 19, 1726, 1726), "COSINE_TABLE_B[idx]").
expr(fast_math_1_expr55, method_invocation, fast_math_1_code134, initializer, range(fast_math_1, 55901, 17, 1730, 1730), "polySine(epsilon)").
expr(fast_math_1_expr56, method_invocation, fast_math_1_code140, initializer, range(fast_math_1, 55987, 19, 1732, 1732), "polyCosine(epsilon)").
expr(fast_math_1_expr57, infix_expression, fast_math_1_code143, initializer, range(fast_math_1, 56076, 22, 1735, 1735), "sinEpsA * HEX_40000000").
expr(fast_math_1_expr58, infix_expression, fast_math_1_code145, initializer, range(fast_math_1, 56123, 23, 1736, 1736), "(sinEpsA + temp) - temp").
expr(fast_math_1_expr59, parenthesized_expression, fast_math_1_expr58, left_operand, range(fast_math_1, 56123, 16, 1736, 1736), "(sinEpsA + temp)").
expr(fast_math_1_expr60, infix_expression, fast_math_1_expr59, expression, range(fast_math_1, 56124, 14, 1736, 1736), "sinEpsA + temp").
expr(fast_math_1_expr61, assignment, fast_math_1_stmt28, expression, range(fast_math_1, 56156, 27, 1737, 1737), "sinEpsB+=sinEpsA - temp2").
expr(fast_math_1_expr62, infix_expression, fast_math_1_expr61, right_hand_side, range(fast_math_1, 56168, 15, 1737, 1737), "sinEpsA - temp2").
expr(fast_math_1_expr63, assignment, fast_math_1_stmt29, expression, range(fast_math_1, 56193, 15, 1738, 1738), "sinEpsA=temp2").
expr(fast_math_1_expr64, infix_expression, fast_math_1_code153, initializer, range(fast_math_1, 57177, 5, 1768, 1768), "a + t").
expr(fast_math_1_expr65, prefix_expression, fast_math_1_code155, initializer, range(fast_math_1, 57203, 12, 1769, 1769), "-(c - a - t)").
expr(fast_math_1_expr66, parenthesized_expression, fast_math_1_expr65, operand, range(fast_math_1, 57204, 11, 1769, 1769), "(c - a - t)").
expr(fast_math_1_expr67, infix_expression, fast_math_1_expr66, expression, range(fast_math_1, 57205, 9, 1769, 1769), "c - a - t").
expr(fast_math_1_expr68, assignment, fast_math_1_stmt35, expression, range(fast_math_1, 57225, 5, 1770, 1770), "a=c").
expr(fast_math_1_expr69, assignment, fast_math_1_stmt36, expression, range(fast_math_1, 57240, 9, 1771, 1771), "b=b + d").
expr(fast_math_1_expr70, infix_expression, fast_math_1_expr69, right_hand_side, range(fast_math_1, 57244, 5, 1771, 1771), "b + d").
expr(fast_math_1_expr71, assignment, fast_math_1_stmt37, expression, range(fast_math_1, 57260, 19, 1773, 1773), "t=costA * sinEpsA").
expr(fast_math_1_expr72, infix_expression, fast_math_1_expr71, right_hand_side, range(fast_math_1, 57264, 15, 1773, 1773), "costA * sinEpsA").
expr(fast_math_1_expr73, assignment, fast_math_1_stmt38, expression, range(fast_math_1, 57289, 9, 1774, 1774), "c=a + t").
expr(fast_math_1_expr74, infix_expression, fast_math_1_expr73, right_hand_side, range(fast_math_1, 57293, 5, 1774, 1774), "a + t").
expr(fast_math_1_expr75, assignment, fast_math_1_stmt39, expression, range(fast_math_1, 57308, 16, 1775, 1775), "d=-(c - a - t)").
expr(fast_math_1_expr76, prefix_expression, fast_math_1_expr75, right_hand_side, range(fast_math_1, 57312, 12, 1775, 1775), "-(c - a - t)").
expr(fast_math_1_expr77, parenthesized_expression, fast_math_1_expr76, operand, range(fast_math_1, 57313, 11, 1775, 1775), "(c - a - t)").
expr(fast_math_1_expr78, infix_expression, fast_math_1_expr77, expression, range(fast_math_1, 57314, 9, 1775, 1775), "c - a - t").
expr(fast_math_1_expr79, assignment, fast_math_1_stmt40, expression, range(fast_math_1, 57334, 5, 1776, 1776), "a=c").
expr(fast_math_1_expr80, assignment, fast_math_1_stmt41, expression, range(fast_math_1, 57349, 9, 1777, 1777), "b=b + d").
expr(fast_math_1_expr81, infix_expression, fast_math_1_expr80, right_hand_side, range(fast_math_1, 57353, 5, 1777, 1777), "b + d").
expr(fast_math_1_expr82, assignment, fast_math_1_stmt42, expression, range(fast_math_1, 57369, 41, 1779, 1779), "b=b + sintA * cosEpsB + costA * sinEpsB").
expr(fast_math_1_expr83, infix_expression, fast_math_1_expr82, right_hand_side, range(fast_math_1, 57373, 37, 1779, 1779), "b + sintA * cosEpsB + costA * sinEpsB").
expr(fast_math_1_expr84, infix_expression, fast_math_1_expr83, left_operand, range(fast_math_1, 57373, 19, 1779, 1779), "b + sintA * cosEpsB").
expr(fast_math_1_expr85, infix_expression, fast_math_1_expr84, right_operand, range(fast_math_1, 57377, 15, 1779, 1779), "sintA * cosEpsB").
expr(fast_math_1_expr86, infix_expression, fast_math_1_expr83, right_operand, range(fast_math_1, 57395, 15, 1779, 1779), "costA * sinEpsB").
expr(fast_math_1_expr87, assignment, fast_math_1_stmt43, expression, range(fast_math_1, 57617, 67, 1794, 1794), "b=b + sintB + costB * sinEpsA + sintB * cosEpsB + costB * sinEpsB").
expr(fast_math_1_expr90, infix_expression, fast_math_1_expr89, left_operand, range(fast_math_1, 57621, 27, 1794, 1794), "b + sintB + costB * sinEpsA").
expr(fast_math_1_expr88, infix_expression, fast_math_1_expr87, right_hand_side, range(fast_math_1, 57621, 63, 1794, 1794), "b + sintB + costB * sinEpsA + sintB * cosEpsB + costB * sinEpsB").
expr(fast_math_1_expr89, infix_expression, fast_math_1_expr88, left_operand, range(fast_math_1, 57621, 45, 1794, 1794), "b + sintB + costB * sinEpsA + sintB * cosEpsB").
expr(fast_math_1_expr91, infix_expression, fast_math_1_expr90, (extended_operands, 0), range(fast_math_1, 57633, 15, 1794, 1794), "costB * sinEpsA").
expr(fast_math_1_expr92, infix_expression, fast_math_1_expr89, right_operand, range(fast_math_1, 57651, 15, 1794, 1794), "sintB * cosEpsB").
expr(fast_math_1_expr93, infix_expression, fast_math_1_expr88, right_operand, range(fast_math_1, 57669, 15, 1794, 1794), "costB * sinEpsB").
expr(fast_math_1_expr94, infix_expression, fast_math_1_stmt44, expression, range(fast_math_1, 58061, 9, 1821, 1821), "xb != 0.0").
expr(fast_math_1_expr95, assignment, fast_math_1_stmt45, expression, range(fast_math_1, 58086, 105, 1822, 1823), "t=((costA + costB) * (cosEpsA + cosEpsB) - (sintA + sintB) * (sinEpsA + sinEpsB)) * xb").
expr(fast_math_1_expr96, infix_expression, fast_math_1_expr95, right_hand_side, range(fast_math_1, 58090, 101, 1822, 1823), "((costA + costB) * (cosEpsA + cosEpsB) - (sintA + sintB) * (sinEpsA + sinEpsB)) * xb").
expr(fast_math_1_expr97, parenthesized_expression, fast_math_1_expr96, left_operand, range(fast_math_1, 58090, 96, 1822, 1823), "((costA + costB) * (cosEpsA + cosEpsB) - (sintA + sintB) * (sinEpsA + sinEpsB))").
expr(fast_math_1_expr98, infix_expression, fast_math_1_expr97, expression, range(fast_math_1, 58091, 94, 1822, 1823), "(costA + costB) * (cosEpsA + cosEpsB) - (sintA + sintB) * (sinEpsA + sinEpsB)").
expr(fast_math_1_expr99, infix_expression, fast_math_1_expr98, left_operand, range(fast_math_1, 58091, 37, 1822, 1822), "(costA + costB) * (cosEpsA + cosEpsB)").
expr(fast_math_1_expr100, parenthesized_expression, fast_math_1_expr99, left_operand, range(fast_math_1, 58091, 15, 1822, 1822), "(costA + costB)").
expr(fast_math_1_expr101, infix_expression, fast_math_1_expr100, expression, range(fast_math_1, 58092, 13, 1822, 1822), "costA + costB").
expr(fast_math_1_expr102, parenthesized_expression, fast_math_1_expr99, right_operand, range(fast_math_1, 58109, 19, 1822, 1822), "(cosEpsA + cosEpsB)").
expr(fast_math_1_expr103, infix_expression, fast_math_1_expr102, expression, range(fast_math_1, 58110, 17, 1822, 1822), "cosEpsA + cosEpsB").
expr(fast_math_1_expr104, assignment, fast_math_1_stmt46, expression, range(fast_math_1, 58231, 9, 1824, 1824), "c=a + t").
expr(fast_math_1_expr105, infix_expression, fast_math_1_expr104, right_hand_side, range(fast_math_1, 58235, 5, 1824, 1824), "a + t").
expr(fast_math_1_expr106, assignment, fast_math_1_stmt47, expression, range(fast_math_1, 58254, 16, 1825, 1825), "d=-(c - a - t)").
expr(fast_math_1_expr107, prefix_expression, fast_math_1_expr106, right_hand_side, range(fast_math_1, 58258, 12, 1825, 1825), "-(c - a - t)").
expr(fast_math_1_expr108, parenthesized_expression, fast_math_1_expr107, operand, range(fast_math_1, 58259, 11, 1825, 1825), "(c - a - t)").
expr(fast_math_1_expr109, infix_expression, fast_math_1_expr108, expression, range(fast_math_1, 58260, 9, 1825, 1825), "c - a - t").
expr(fast_math_1_expr110, assignment, fast_math_1_stmt48, expression, range(fast_math_1, 58284, 5, 1826, 1826), "a=c").
expr(fast_math_1_expr111, assignment, fast_math_1_stmt49, expression, range(fast_math_1, 58303, 9, 1827, 1827), "b=b + d").
expr(fast_math_1_expr112, infix_expression, fast_math_1_expr111, right_hand_side, range(fast_math_1, 58307, 5, 1827, 1827), "b + d").
expr(fast_math_1_expr113, assignment, fast_math_1_stmt50, expression, range(fast_math_1, 58333, 14, 1830, 1830), "result=a + b").
expr(fast_math_1_expr114, infix_expression, fast_math_1_expr113, right_hand_side, range(fast_math_1, 58342, 5, 1830, 1830), "a + b").
expr(fast_math_1_expr115, infix_expression, fast_math_1_code165, initializer, range(fast_math_1, 58867, 9, 1846, 1846), "pi2a - xa").
expr(fast_math_1_expr116, prefix_expression, fast_math_1_code167, initializer, range(fast_math_1, 58897, 16, 1847, 1847), "-(a - pi2a + xa)").
expr(fast_math_1_expr117, parenthesized_expression, fast_math_1_expr116, operand, range(fast_math_1, 58898, 15, 1847, 1847), "(a - pi2a + xa)").
expr(fast_math_1_expr118, infix_expression, fast_math_1_expr117, expression, range(fast_math_1, 58899, 13, 1847, 1847), "a - pi2a + xa").
expr(fast_math_1_expr119, infix_expression, fast_math_1_expr118, left_operand, range(fast_math_1, 58899, 8, 1847, 1847), "a - pi2a").
expr(fast_math_1_expr120, assignment, fast_math_1_stmt56, expression, range(fast_math_1, 58923, 14, 1848, 1848), "b+=pi2b - xb").
expr(fast_math_1_expr121, infix_expression, fast_math_1_expr120, right_hand_side, range(fast_math_1, 58928, 9, 1848, 1848), "pi2b - xb").
expr(fast_math_1_expr122, method_invocation, fast_math_1_stmt57, expression, range(fast_math_1, 58955, 10, 1850, 1850), "sinQ(a,b)").
expr(fast_math_1_expr123, assignment, fast_math_1_stmt61, expression, range(fast_math_1, 70265, 6, 2234, 2234), "xa=x").
expr(fast_math_1_expr124, infix_expression, fast_math_1_stmt62, expression, range(fast_math_1, 70285, 5, 2235, 2235), "x < 0").
expr(fast_math_1_expr125, infix_expression, fast_math_1_stmt63, expression, range(fast_math_1, 70415, 9, 2241, 2241), "xa == 0.0").
expr(fast_math_1_expr126, infix_expression, fast_math_1_stmt64, expression, range(fast_math_1, 70601, 42, 2249, 2249), "xa != xa || xa == Double.POSITIVE_INFINITY").
expr(fast_math_1_expr127, infix_expression, fast_math_1_expr126, left_operand, range(fast_math_1, 70601, 8, 2249, 2249), "xa != xa").
expr(fast_math_1_expr128, infix_expression, fast_math_1_expr126, right_operand, range(fast_math_1, 70613, 30, 2249, 2249), "xa == Double.POSITIVE_INFINITY").
expr(fast_math_1_expr129, infix_expression, fast_math_1_stmt65, expression, range(fast_math_1, 70746, 14, 2254, 2254), "xa > 3294198.0").
expr(fast_math_1_expr130, infix_expression, fast_math_1_stmt66, expression, range(fast_math_1, 71129, 23, 2263, 2263), "xa > 1.5707963267948966").
expr(fast_math_1_expr131, method_invocation, fast_math_1_stmt69, expression, range(fast_math_1, 71467, 12, 2276, 2276), "sinQ(xa,xb)").
expr(fast_math_1_expr132, infix_expression, fast_math_1_stmt72, expression, range(fast_math_1, 71972, 5, 2299, 2299), "x < 0").
expr(fast_math_1_expr133, infix_expression, fast_math_1_stmt73, expression, range(fast_math_1, 72026, 42, 2303, 2303), "xa != xa || xa == Double.POSITIVE_INFINITY").
expr(fast_math_1_expr134, infix_expression, fast_math_1_expr133, left_operand, range(fast_math_1, 72026, 8, 2303, 2303), "xa != xa").
expr(fast_math_1_expr135, infix_expression, fast_math_1_expr133, right_operand, range(fast_math_1, 72038, 30, 2303, 2303), "xa == Double.POSITIVE_INFINITY").
expr(fast_math_1_expr136, infix_expression, fast_math_1_stmt75, expression, range(fast_math_1, 72194, 14, 2309, 2309), "xa > 3294198.0").
expr(fast_math_1_expr137, infix_expression, fast_math_1_stmt76, expression, range(fast_math_1, 72577, 23, 2318, 2318), "xa > 1.5707963267948966").
expr(fast_math_1_expr138, method_invocation, fast_math_1_stmt78, expression, range(fast_math_1, 72906, 12, 2330, 2330), "cosQ(xa,xb)").
expr(fast_math_1_expr140, infix_expression, fast_math_1_expr139, left_operand, range(fast_math_1, 80332, 6, 2582, 2582), "x != x").
expr(fast_math_1_expr139, infix_expression, fast_math_1_stmt79, expression, range(fast_math_1, 80332, 16, 2582, 2582), "x != x || y != y").
expr(fast_math_1_expr141, infix_expression, fast_math_1_expr139, right_operand, range(fast_math_1, 80342, 6, 2582, 2582), "y != y").
expr(fast_math_1_expr142, infix_expression, fast_math_1_stmt80, expression, range(fast_math_1, 80406, 6, 2586, 2586), "y == 0").
expr(fast_math_1_expr143, infix_expression, fast_math_1_stmt81, expression, range(fast_math_1, 81084, 29, 2612, 2612), "y == Double.POSITIVE_INFINITY").
expr(fast_math_1_expr144, infix_expression, fast_math_1_stmt82, expression, range(fast_math_1, 81384, 29, 2624, 2624), "y == Double.NEGATIVE_INFINITY").
expr(fast_math_1_expr145, infix_expression, fast_math_1_stmt83, expression, range(fast_math_1, 81687, 29, 2636, 2636), "x == Double.POSITIVE_INFINITY").
expr(fast_math_1_expr146, infix_expression, fast_math_1_stmt84, expression, range(fast_math_1, 81903, 29, 2646, 2646), "x == Double.NEGATIVE_INFINITY").
expr(fast_math_1_expr147, infix_expression, fast_math_1_stmt85, expression, range(fast_math_1, 82197, 6, 2659, 2659), "x == 0").
expr(fast_math_1_expr148, infix_expression, fast_math_1_stmt86, expression, range(fast_math_1, 82223, 18, 2660, 2660), "y > 0 || 1 / y > 0").
expr(fast_math_1_expr149, infix_expression, fast_math_1_expr148, left_operand, range(fast_math_1, 82223, 5, 2660, 2660), "y > 0").
expr(fast_math_1_expr150, infix_expression, fast_math_1_expr148, right_operand, range(fast_math_1, 82232, 9, 2660, 2660), "1 / y > 0").
expr(fast_math_1_expr151, infix_expression, fast_math_1_expr150, left_operand, range(fast_math_1, 82232, 5, 2660, 2660), "1 / y").
expr(fast_math_1_expr153, infix_expression, fast_math_1_expr152, left_operand, range(fast_math_1, 82316, 5, 2664, 2664), "y < 0").
expr(fast_math_1_expr152, infix_expression, fast_math_1_stmt87, expression, range(fast_math_1, 82316, 18, 2664, 2664), "y < 0 || 1 / y < 0").
expr(fast_math_1_expr154, infix_expression, fast_math_1_expr152, right_operand, range(fast_math_1, 82325, 9, 2664, 2664), "1 / y < 0").
expr(fast_math_1_expr155, infix_expression, fast_math_1_expr154, left_operand, range(fast_math_1, 82325, 5, 2664, 2664), "1 / y").
expr(fast_math_1_expr157, prefix_expression, fast_math_1_expr156, left_operand, range(fast_math_1, 82361, 8, 2665, 2665), "-Math.PI").
expr(fast_math_1_expr156, infix_expression, fast_math_1_stmt88, expression, range(fast_math_1, 82361, 16, 2665, 2665), "-Math.PI * F_1_2").
expr(fast_math_1_expr158, method_invocation, fast_math_1_stmt89, expression, range(fast_math_1, 91880, 75, 3025, 3025), "Double.longBitsToDouble(MASK_NON_SIGN_LONG & Double.doubleToRawLongBits(x))").
expr(fast_math_1_expr159, infix_expression, fast_math_1_expr158, (arguments, 0), range(fast_math_1, 91904, 50, 3025, 3025), "MASK_NON_SIGN_LONG & Double.doubleToRawLongBits(x)").
expr(fast_math_1_expr160, method_invocation, fast_math_1_expr159, right_operand, range(fast_math_1, 91925, 29, 3025, 3025), "Double.doubleToRawLongBits(x)").
expr(fast_math_1_expr161, infix_expression, fast_math_1_stmt90, expression, range(fast_math_1, 110039, 44, 3574, 3574), "Double.isInfinite(x) || Double.isInfinite(y)").
expr(fast_math_1_expr162, method_invocation, fast_math_1_expr161, left_operand, range(fast_math_1, 110039, 20, 3574, 3574), "Double.isInfinite(x)").
expr(fast_math_1_expr163, method_invocation, fast_math_1_expr161, right_operand, range(fast_math_1, 110063, 20, 3574, 3574), "Double.isInfinite(y)").
expr(fast_math_1_expr164, infix_expression, fast_math_1_stmt91, expression, range(fast_math_1, 110151, 34, 3576, 3576), "Double.isNaN(x) || Double.isNaN(y)").
expr(fast_math_1_expr165, method_invocation, fast_math_1_expr164, left_operand, range(fast_math_1, 110151, 15, 3576, 3576), "Double.isNaN(x)").
expr(fast_math_1_expr166, method_invocation, fast_math_1_expr164, right_operand, range(fast_math_1, 110170, 15, 3576, 3576), "Double.isNaN(y)").
expr(fast_math_1_expr167, method_invocation, fast_math_1_code187, initializer, range(fast_math_1, 110267, 14, 3580, 3580), "getExponent(x)").
expr(fast_math_1_expr168, method_invocation, fast_math_1_code190, initializer, range(fast_math_1, 110312, 14, 3581, 3581), "getExponent(y)").
expr(fast_math_1_expr169, infix_expression, fast_math_1_stmt94, expression, range(fast_math_1, 110344, 16, 3582, 3582), "expX > expY + 27").
expr(fast_math_1_expr170, infix_expression, fast_math_1_expr169, right_operand, range(fast_math_1, 110351, 9, 3582, 3582), "expY + 27").
expr(fast_math_1_expr171, infix_expression, fast_math_1_stmt95, expression, range(fast_math_1, 110472, 16, 3585, 3585), "expY > expX + 27").
expr(fast_math_1_expr172, infix_expression, fast_math_1_expr171, right_operand, range(fast_math_1, 110479, 9, 3585, 3585), "expX + 27").
expr(fast_math_1_expr173, method_invocation, fast_math_1_stmt96, expression, range(fast_math_1, 110569, 6, 3587, 3587), "abs(y)").
expr(fast_math_1_expr175, cast_expression, fast_math_1_expr174, left_operand, range(fast_math_1, 114698, 54, 3685, 3685), "(int)((Double.doubleToRawLongBits(d) >>> 52) & 0x7ff)").
expr(fast_math_1_expr174, infix_expression, fast_math_1_stmt97, expression, range(fast_math_1, 114698, 61, 3685, 3685), "(int)((Double.doubleToRawLongBits(d) >>> 52) & 0x7ff) - 1023").
expr(fast_math_1_expr176, parenthesized_expression, fast_math_1_expr175, expression, range(fast_math_1, 114704, 48, 3685, 3685), "((Double.doubleToRawLongBits(d) >>> 52) & 0x7ff)").
expr(fast_math_1_expr177, infix_expression, fast_math_1_expr176, expression, range(fast_math_1, 114705, 46, 3685, 3685), "(Double.doubleToRawLongBits(d) >>> 52) & 0x7ff").
expr(fast_math_1_expr178, parenthesized_expression, fast_math_1_expr177, left_operand, range(fast_math_1, 114705, 38, 3685, 3685), "(Double.doubleToRawLongBits(d) >>> 52)").
expr(fast_math_1_expr179, infix_expression, fast_math_1_expr178, expression, range(fast_math_1, 114706, 36, 3685, 3685), "Double.doubleToRawLongBits(d) >>> 52").
expr(fast_math_1_expr180, method_invocation, fast_math_1_expr179, left_operand, range(fast_math_1, 114706, 29, 3685, 3685), "Double.doubleToRawLongBits(d)").
%sub_oriented_point_1 - org.apache.commons.math3.geometry.euclidean.oned.SubOrientedPoint
expr(sub_oriented_point_1_expr1, super_constructor_invocation, sub_oriented_point_1_block1, (statements, 0), range(sub_oriented_point_1, 1770, 35, 39, 39), "super(hyperplane,remainingRegion);").
%precision_1 - org.apache.commons.math3.util.Precision
expr(precision_1_expr1, assignment, precision_1_stmt1, expression, range(precision_1, 2505, 64, 70, 70), "EPSILON=Double.longBitsToDouble((EXPONENT_OFFSET - 53l) << 52)").
expr(precision_1_expr2, method_invocation, precision_1_expr1, right_hand_side, range(precision_1, 2515, 54, 70, 70), "Double.longBitsToDouble((EXPONENT_OFFSET - 53l) << 52)").
expr(precision_1_expr3, infix_expression, precision_1_expr2, (arguments, 0), range(precision_1, 2539, 29, 70, 70), "(EXPONENT_OFFSET - 53l) << 52").
expr(precision_1_expr4, parenthesized_expression, precision_1_expr3, left_operand, range(precision_1, 2539, 23, 70, 70), "(EXPONENT_OFFSET - 53l)").
expr(precision_1_expr5, infix_expression, precision_1_expr4, expression, range(precision_1, 2540, 21, 70, 70), "EXPONENT_OFFSET - 53l").
expr(precision_1_expr6, assignment, precision_1_stmt2, expression, range(precision_1, 2762, 67, 77, 77), "SAFE_MIN=Double.longBitsToDouble((EXPONENT_OFFSET - 1022l) << 52)").
expr(precision_1_expr7, method_invocation, precision_1_expr6, right_hand_side, range(precision_1, 2773, 56, 77, 77), "Double.longBitsToDouble((EXPONENT_OFFSET - 1022l) << 52)").
expr(precision_1_expr8, infix_expression, precision_1_expr7, (arguments, 0), range(precision_1, 2797, 31, 77, 77), "(EXPONENT_OFFSET - 1022l) << 52").
expr(precision_1_expr9, parenthesized_expression, precision_1_expr8, left_operand, range(precision_1, 2797, 25, 77, 77), "(EXPONENT_OFFSET - 1022l)").
expr(precision_1_expr10, infix_expression, precision_1_expr9, expression, range(precision_1, 2798, 23, 77, 77), "EXPONENT_OFFSET - 1022l").
%intervals_set_1 - org.apache.commons.math3.geometry.euclidean.oned.IntervalsSet
expr(intervals_set_1_expr1, super_constructor_invocation, intervals_set_1_block1, (statements, 0), range(intervals_set_1, 1919, 31, 47, 47), "super(buildTree(lower,upper));").
expr(intervals_set_1_expr2, method_invocation, intervals_set_1_stmt1, (arguments, 0), range(intervals_set_1, 1925, 23, 47, 47), "buildTree(lower,upper)").
expr(intervals_set_1_expr3, infix_expression, intervals_set_1_stmt2, expression, range(intervals_set_1, 4322, 39, 94, 94), "Double.isInfinite(lower) && (lower < 0)").
expr(intervals_set_1_expr4, method_invocation, intervals_set_1_expr3, left_operand, range(intervals_set_1, 4322, 24, 94, 94), "Double.isInfinite(lower)").
expr(intervals_set_1_expr5, parenthesized_expression, intervals_set_1_expr3, right_operand, range(intervals_set_1, 4350, 11, 94, 94), "(lower < 0)").
expr(intervals_set_1_expr6, infix_expression, intervals_set_1_expr5, expression, range(intervals_set_1, 4351, 9, 94, 94), "lower < 0").
expr(intervals_set_1_expr7, method_invocation, intervals_set_1_code9, initializer, range(intervals_set_1, 5072, 63, 108, 108), "new OrientedPoint(new Vector1D(lower),false).wholeHyperplane()").
expr(intervals_set_1_expr8, infix_expression, intervals_set_1_stmt4, expression, range(intervals_set_1, 5149, 39, 109, 109), "Double.isInfinite(upper) && (upper > 0)").
expr(intervals_set_1_expr9, method_invocation, intervals_set_1_expr8, left_operand, range(intervals_set_1, 5149, 24, 109, 109), "Double.isInfinite(upper)").
expr(intervals_set_1_expr10, parenthesized_expression, intervals_set_1_expr8, right_operand, range(intervals_set_1, 5177, 11, 109, 109), "(upper > 0)").
expr(intervals_set_1_expr11, infix_expression, intervals_set_1_expr10, expression, range(intervals_set_1, 5178, 9, 109, 109), "upper > 0").
expr(intervals_set_1_expr12, method_invocation, intervals_set_1_code14, initializer, range(intervals_set_1, 5661, 62, 119, 119), "new OrientedPoint(new Vector1D(upper),true).wholeHyperplane()").
expr(intervals_set_1_expr13, class_instance_creation, intervals_set_1_stmt6, expression, range(intervals_set_1, 5740, 519, 120, 126), "new BSPTree<Euclidean1D>(lowerCut,new BSPTree<Euclidean1D>(Boolean.FALSE),new BSPTree<Euclidean1D>(upperCut,new BSPTree<Euclidean1D>(Boolean.FALSE),new BSPTree<Euclidean1D>(Boolean.TRUE),null),null)").
expr(intervals_set_1_expr14, class_instance_creation, intervals_set_1_expr13, (arguments, 1), range(intervals_set_1, 5815, 39, 121, 121), "new BSPTree<Euclidean1D>(Boolean.FALSE)").
expr(intervals_set_1_expr15, class_instance_creation, intervals_set_1_expr13, (arguments, 2), range(intervals_set_1, 5896, 316, 122, 125), "new BSPTree<Euclidean1D>(upperCut,new BSPTree<Euclidean1D>(Boolean.FALSE),new BSPTree<Euclidean1D>(Boolean.TRUE),null)").
%oriented_point_1 - org.apache.commons.math3.geometry.euclidean.oned.OrientedPoint
expr(oriented_point_1_expr3, this_expression, f_location_16, expression, range(oriented_point_1, 1682, 4, 43, 43), "this").
expr(oriented_point_1_expr2, field_access, oriented_point_1_expr1, left_hand_side, range(oriented_point_1, 1682, 13, 43, 43), "this.location").
expr(oriented_point_1_expr1, assignment, oriented_point_1_stmt1, expression, range(oriented_point_1, 1682, 24, 43, 43), "this.location=location").
expr(oriented_point_1_expr4, assignment, oriented_point_1_stmt2, expression, range(oriented_point_1, 1716, 22, 44, 44), "this.direct=direct").
expr(oriented_point_1_expr6, this_expression, f_direct_17, expression, range(oriented_point_1, 1716, 4, 44, 44), "this").
expr(oriented_point_1_expr5, field_access, oriented_point_1_expr4, left_hand_side, range(oriented_point_1, 1716, 11, 44, 44), "this.direct").
expr(oriented_point_1_expr7, class_instance_creation, oriented_point_1_stmt3, expression, range(oriented_point_1, 2852, 32, 74, 74), "new SubOrientedPoint(this,null)").
expr(oriented_point_1_expr8, this_expression, oriented_point_1_expr7, (arguments, 0), range(oriented_point_1, 2873, 4, 74, 74), "this").
%sub_line_test_2 - org.apache.commons.math3.geometry.euclidean.twod.SubLineTest
expr(sub_line_test_2_expr1, class_instance_creation, sub_line_test_2_code7, initializer, range(sub_line_test_2, 7115, 51, 149, 149), "new SubLine(new Vector2D(0,1),new Vector2D(0,2))").
expr(sub_line_test_2_expr2, class_instance_creation, sub_line_test_2_expr1, (arguments, 0), range(sub_line_test_2, 7127, 18, 149, 149), "new Vector2D(0,1)").
expr(sub_line_test_2_expr3, class_instance_creation, sub_line_test_2_expr1, (arguments, 1), range(sub_line_test_2, 7147, 18, 149, 149), "new Vector2D(0,2)").
expr(sub_line_test_2_expr4, class_instance_creation, sub_line_test_2_code13, initializer, range(sub_line_test_2, 7197, 53, 150, 150), "new SubLine(new Vector2D(66,3),new Vector2D(66,4))").
expr(sub_line_test_2_expr5, class_instance_creation, sub_line_test_2_expr4, (arguments, 0), range(sub_line_test_2, 7209, 19, 150, 150), "new Vector2D(66,3)").
expr(sub_line_test_2_expr6, class_instance_creation, sub_line_test_2_expr4, (arguments, 1), range(sub_line_test_2, 7230, 19, 150, 150), "new Vector2D(66,4)").
expr(sub_line_test_2_expr7, method_invocation, sub_line_test_2_stmt3, expression, range(sub_line_test_2, 7260, 48, 151, 151), "Assert.assertNull(sub1.intersection(sub2,true))").
expr(sub_line_test_2_expr8, method_invocation, sub_line_test_2_expr7, (arguments, 0), range(sub_line_test_2, 7278, 29, 151, 151), "sub1.intersection(sub2,true)").
%abstract_sub_hyperplane_1 - org.apache.commons.math3.geometry.partitioning.AbstractSubHyperplane
expr(abstract_sub_hyperplane_1_expr1, assignment, abstract_sub_hyperplane_1_stmt1, expression, range(abstract_sub_hyperplane_1, 2135, 33, 51, 51), "this.hyperplane=hyperplane").
expr(abstract_sub_hyperplane_1_expr3, this_expression, f_hyperplane_336, expression, range(abstract_sub_hyperplane_1, 2135, 4, 51, 51), "this").
expr(abstract_sub_hyperplane_1_expr2, field_access, abstract_sub_hyperplane_1_expr1, left_hand_side, range(abstract_sub_hyperplane_1, 2135, 15, 51, 51), "this.hyperplane").
expr(abstract_sub_hyperplane_1_expr6, this_expression, f_remaining_region_337, expression, range(abstract_sub_hyperplane_1, 2178, 4, 52, 52), "this").
expr(abstract_sub_hyperplane_1_expr5, field_access, abstract_sub_hyperplane_1_expr4, left_hand_side, range(abstract_sub_hyperplane_1, 2178, 20, 52, 52), "this.remainingRegion").
expr(abstract_sub_hyperplane_1_expr4, assignment, abstract_sub_hyperplane_1_stmt2, expression, range(abstract_sub_hyperplane_1, 2178, 38, 52, 52), "this.remainingRegion=remainingRegion").
%sub_line_test_1 - org.apache.commons.math3.geometry.euclidean.threed.SubLineTest
expr(sub_line_test_1_expr1, class_instance_creation, sub_line_test_1_code6, initializer, range(sub_line_test_1, 8429, 59, 158, 158), "new SubLine(new Vector3D(1,1,1),new Vector3D(1.5,1,1))").
expr(sub_line_test_1_expr2, class_instance_creation, sub_line_test_1_expr1, (arguments, 0), range(sub_line_test_1, 8441, 21, 158, 158), "new Vector3D(1,1,1)").
expr(sub_line_test_1_expr3, class_instance_creation, sub_line_test_1_expr1, (arguments, 1), range(sub_line_test_1, 8464, 23, 158, 158), "new Vector3D(1.5,1,1)").
expr(sub_line_test_1_expr4, class_instance_creation, sub_line_test_1_code11, initializer, range(sub_line_test_1, 8513, 59, 159, 159), "new SubLine(new Vector3D(2,3,0),new Vector3D(2,3,0.5))").
expr(sub_line_test_1_expr5, class_instance_creation, sub_line_test_1_expr4, (arguments, 0), range(sub_line_test_1, 8525, 21, 159, 159), "new Vector3D(2,3,0)").
expr(sub_line_test_1_expr6, class_instance_creation, sub_line_test_1_expr4, (arguments, 1), range(sub_line_test_1, 8548, 23, 159, 159), "new Vector3D(2,3,0.5)").
expr(sub_line_test_1_expr7, method_invocation, sub_line_test_1_stmt3, expression, range(sub_line_test_1, 8582, 48, 160, 160), "Assert.assertNull(sub1.intersection(sub2,true))").
expr(sub_line_test_1_expr8, method_invocation, sub_line_test_1_expr7, (arguments, 0), range(sub_line_test_1, 8600, 29, 160, 160), "sub1.intersection(sub2,true)").
%bsptree_1 - org.apache.commons.math3.geometry.partitioning.BSPTree
expr(bsptree_1_expr1, assignment, bsptree_1_stmt1, expression, range(bsptree_1, 3757, 13, 94, 94), "cut=null").
expr(bsptree_1_expr2, assignment, bsptree_1_stmt2, expression, range(bsptree_1, 3780, 13, 95, 95), "plus=null").
expr(bsptree_1_expr3, assignment, bsptree_1_stmt3, expression, range(bsptree_1, 3803, 13, 96, 96), "minus=null").
expr(bsptree_1_expr4, assignment, bsptree_1_stmt4, expression, range(bsptree_1, 3826, 13, 97, 97), "parent=null").
expr(bsptree_1_expr7, this_expression, f_attribute_352, expression, range(bsptree_1, 3849, 4, 98, 98), "this").
expr(bsptree_1_expr6, field_access, bsptree_1_expr5, left_hand_side, range(bsptree_1, 3849, 14, 98, 98), "this.attribute").
expr(bsptree_1_expr5, assignment, bsptree_1_stmt5, expression, range(bsptree_1, 3849, 26, 98, 98), "this.attribute=attribute").
expr(bsptree_1_expr10, this_expression, f_cut_348, expression, range(bsptree_1, 4681, 4, 116, 116), "this").
expr(bsptree_1_expr9, field_access, bsptree_1_expr8, left_hand_side, range(bsptree_1, 4681, 8, 116, 116), "this.cut").
expr(bsptree_1_expr8, assignment, bsptree_1_stmt6, expression, range(bsptree_1, 4681, 20, 116, 116), "this.cut=cut").
expr(bsptree_1_expr12, field_access, bsptree_1_expr11, left_hand_side, range(bsptree_1, 4711, 9, 117, 117), "this.plus").
expr(bsptree_1_expr13, this_expression, f_plus_349, expression, range(bsptree_1, 4711, 4, 117, 117), "this").
expr(bsptree_1_expr11, assignment, bsptree_1_stmt7, expression, range(bsptree_1, 4711, 21, 117, 117), "this.plus=plus").
expr(bsptree_1_expr16, this_expression, f_minus_350, expression, range(bsptree_1, 4742, 4, 118, 118), "this").
expr(bsptree_1_expr14, assignment, bsptree_1_stmt8, expression, range(bsptree_1, 4742, 22, 118, 118), "this.minus=minus").
expr(bsptree_1_expr15, field_access, bsptree_1_expr14, left_hand_side, range(bsptree_1, 4742, 10, 118, 118), "this.minus").
expr(bsptree_1_expr18, field_access, bsptree_1_expr17, left_hand_side, range(bsptree_1, 4774, 11, 119, 119), "this.parent").
expr(bsptree_1_expr19, this_expression, f_parent_351, expression, range(bsptree_1, 4774, 4, 119, 119), "this").
expr(bsptree_1_expr17, assignment, bsptree_1_stmt9, expression, range(bsptree_1, 4774, 21, 119, 119), "this.parent=null").
expr(bsptree_1_expr21, field_access, bsptree_1_expr20, left_hand_side, range(bsptree_1, 4805, 14, 120, 120), "this.attribute").
expr(bsptree_1_expr22, this_expression, f_attribute_352, expression, range(bsptree_1, 4805, 4, 120, 120), "this").
expr(bsptree_1_expr20, assignment, bsptree_1_stmt10, expression, range(bsptree_1, 4805, 26, 120, 120), "this.attribute=attribute").
expr(bsptree_1_expr23, assignment, bsptree_1_stmt11, expression, range(bsptree_1, 4841, 21, 121, 121), "plus.parent=this").
expr(bsptree_1_expr24, this_expression, bsptree_1_expr23, right_hand_side, range(bsptree_1, 4858, 4, 121, 121), "this").
expr(bsptree_1_expr25, assignment, bsptree_1_stmt12, expression, range(bsptree_1, 4872, 21, 122, 122), "minus.parent=this").
expr(bsptree_1_expr26, this_expression, bsptree_1_expr25, right_hand_side, range(bsptree_1, 4889, 4, 122, 122), "this").
%vector1_d_1 - org.apache.commons.math3.geometry.euclidean.oned.Vector1D
expr(vector1_d_1_expr1, class_instance_creation, vector1_d_1_code8, initializer, range(vector1_d_1, 1491, 17, 36, 36), "new Vector1D(0.0)").
expr(vector1_d_1_expr2, class_instance_creation, vector1_d_1_code15, initializer, range(vector1_d_1, 1585, 17, 39, 39), "new Vector1D(1.0)").
expr(vector1_d_1_expr3, class_instance_creation, vector1_d_1_code22, initializer, range(vector1_d_1, 1734, 24, 43, 43), "new Vector1D(Double.NaN)").
expr(vector1_d_1_expr4, class_instance_creation, vector1_d_1_code29, initializer, range(vector1_d_1, 1928, 38, 48, 48), "new Vector1D(Double.POSITIVE_INFINITY)").
expr(vector1_d_1_expr5, class_instance_creation, vector1_d_1_code35, initializer, range(vector1_d_1, 2097, 38, 52, 52), "new Vector1D(Double.NEGATIVE_INFINITY)").
expr(vector1_d_1_expr6, assignment, vector1_d_1_stmt1, expression, range(vector1_d_1, 2453, 10, 66, 66), "this.x=x").
expr(vector1_d_1_expr8, this_expression, f_x_32, expression, range(vector1_d_1, 2453, 4, 66, 66), "this").
expr(vector1_d_1_expr7, field_access, vector1_d_1_expr6, left_hand_side, range(vector1_d_1, 2453, 6, 66, 66), "this.x").
%vector3_d_1 - org.apache.commons.math3.geometry.euclidean.threed.Vector3D
expr(vector3_d_1_expr1, class_instance_creation, vector3_d_1_code8, initializer, range(vector3_d_1, 1696, 21, 41, 41), "new Vector3D(0,0,0)").
expr(vector3_d_1_expr2, class_instance_creation, vector3_d_1_code15, initializer, range(vector3_d_1, 1820, 21, 44, 44), "new Vector3D(1,0,0)").
expr(vector3_d_1_expr3, class_instance_creation, vector3_d_1_code22, initializer, range(vector3_d_1, 1962, 22, 47, 47), "new Vector3D(-1,0,0)").
expr(vector3_d_1_expr4, prefix_expression, vector3_d_1_expr3, (arguments, 0), range(vector3_d_1, 1975, 2, 47, 47), "-1").
expr(vector3_d_1_expr5, class_instance_creation, vector3_d_1_code29, initializer, range(vector3_d_1, 2088, 21, 50, 50), "new Vector3D(0,1,0)").
expr(vector3_d_1_expr6, class_instance_creation, vector3_d_1_code36, initializer, range(vector3_d_1, 2231, 22, 53, 53), "new Vector3D(0,-1,0)").
expr(vector3_d_1_expr7, prefix_expression, vector3_d_1_expr6, (arguments, 1), range(vector3_d_1, 2247, 2, 53, 53), "-1").
expr(vector3_d_1_expr8, class_instance_creation, vector3_d_1_code43, initializer, range(vector3_d_1, 2356, 21, 56, 56), "new Vector3D(0,0,1)").
expr(vector3_d_1_expr9, class_instance_creation, vector3_d_1_code50, initializer, range(vector3_d_1, 2499, 22, 59, 59), "new Vector3D(0,0,-1)").
expr(vector3_d_1_expr10, prefix_expression, vector3_d_1_expr9, (arguments, 2), range(vector3_d_1, 2518, 2, 59, 59), "-1").
expr(vector3_d_1_expr11, class_instance_creation, vector3_d_1_code57, initializer, range(vector3_d_1, 2653, 48, 63, 63), "new Vector3D(Double.NaN,Double.NaN,Double.NaN)").
expr(vector3_d_1_expr12, class_instance_creation, vector3_d_1_code64, initializer, range(vector3_d_1, 2871, 90, 68, 68), "new Vector3D(Double.POSITIVE_INFINITY,Double.POSITIVE_INFINITY,Double.POSITIVE_INFINITY)").
expr(vector3_d_1_expr13, class_instance_creation, vector3_d_1_code70, initializer, range(vector3_d_1, 3092, 90, 72, 72), "new Vector3D(Double.NEGATIVE_INFINITY,Double.NEGATIVE_INFINITY,Double.NEGATIVE_INFINITY)").
expr(vector3_d_1_expr15, field_access, vector3_d_1_expr14, left_hand_side, range(vector3_d_1, 3721, 6, 96, 96), "this.x").
expr(vector3_d_1_expr14, assignment, vector3_d_1_stmt1, expression, range(vector3_d_1, 3721, 10, 96, 96), "this.x=x").
expr(vector3_d_1_expr16, this_expression, f_x_129, expression, range(vector3_d_1, 3721, 4, 96, 96), "this").
expr(vector3_d_1_expr19, this_expression, f_y_130, expression, range(vector3_d_1, 3741, 4, 97, 97), "this").
expr(vector3_d_1_expr18, field_access, vector3_d_1_expr17, left_hand_side, range(vector3_d_1, 3741, 6, 97, 97), "this.y").
expr(vector3_d_1_expr17, assignment, vector3_d_1_stmt2, expression, range(vector3_d_1, 3741, 10, 97, 97), "this.y=y").
expr(vector3_d_1_expr22, this_expression, f_z_131, expression, range(vector3_d_1, 3761, 4, 98, 98), "this").
expr(vector3_d_1_expr21, field_access, vector3_d_1_expr20, left_hand_side, range(vector3_d_1, 3761, 6, 98, 98), "this.z").
expr(vector3_d_1_expr20, assignment, vector3_d_1_stmt3, expression, range(vector3_d_1, 3761, 10, 98, 98), "this.z=z").
expr(vector3_d_1_expr24, field_access, vector3_d_1_expr23, left_hand_side, range(vector3_d_1, 5081, 6, 138, 138), "this.x").
expr(vector3_d_1_expr23, assignment, vector3_d_1_stmt4, expression, range(vector3_d_1, 5081, 16, 138, 138), "this.x=a * u.x").
expr(vector3_d_1_expr26, this_expression, f_x_129, expression, range(vector3_d_1, 5081, 4, 138, 138), "this").
expr(vector3_d_1_expr25, infix_expression, vector3_d_1_expr23, right_hand_side, range(vector3_d_1, 5090, 7, 138, 138), "a * u.x").
expr(vector3_d_1_expr30, this_expression, f_y_130, expression, range(vector3_d_1, 5107, 4, 139, 139), "this").
expr(vector3_d_1_expr28, field_access, vector3_d_1_expr27, left_hand_side, range(vector3_d_1, 5107, 6, 139, 139), "this.y").
expr(vector3_d_1_expr27, assignment, vector3_d_1_stmt5, expression, range(vector3_d_1, 5107, 16, 139, 139), "this.y=a * u.y").
expr(vector3_d_1_expr29, infix_expression, vector3_d_1_expr27, right_hand_side, range(vector3_d_1, 5116, 7, 139, 139), "a * u.y").
expr(vector3_d_1_expr32, field_access, vector3_d_1_expr31, left_hand_side, range(vector3_d_1, 5133, 6, 140, 140), "this.z").
expr(vector3_d_1_expr34, this_expression, f_z_131, expression, range(vector3_d_1, 5133, 4, 140, 140), "this").
expr(vector3_d_1_expr31, assignment, vector3_d_1_stmt6, expression, range(vector3_d_1, 5133, 16, 140, 140), "this.z=a * u.z").
expr(vector3_d_1_expr33, infix_expression, vector3_d_1_expr31, right_hand_side, range(vector3_d_1, 5142, 7, 140, 140), "a * u.z").
expr(vector3_d_1_expr35, assignment, vector3_d_1_stmt7, expression, range(vector3_d_1, 5562, 57, 152, 152), "this.x=MathArrays.linearCombination(a1,u1.x,a2,u2.x)").
expr(vector3_d_1_expr36, field_access, vector3_d_1_expr35, left_hand_side, range(vector3_d_1, 5562, 6, 152, 152), "this.x").
expr(vector3_d_1_expr38, this_expression, f_x_129, expression, range(vector3_d_1, 5562, 4, 152, 152), "this").
expr(vector3_d_1_expr37, method_invocation, vector3_d_1_expr35, right_hand_side, range(vector3_d_1, 5571, 48, 152, 152), "MathArrays.linearCombination(a1,u1.x,a2,u2.x)").
expr(vector3_d_1_expr39, assignment, vector3_d_1_stmt8, expression, range(vector3_d_1, 5629, 57, 153, 153), "this.y=MathArrays.linearCombination(a1,u1.y,a2,u2.y)").
expr(vector3_d_1_expr40, field_access, vector3_d_1_expr39, left_hand_side, range(vector3_d_1, 5629, 6, 153, 153), "this.y").
expr(vector3_d_1_expr42, this_expression, f_y_130, expression, range(vector3_d_1, 5629, 4, 153, 153), "this").
expr(vector3_d_1_expr41, method_invocation, vector3_d_1_expr39, right_hand_side, range(vector3_d_1, 5638, 48, 153, 153), "MathArrays.linearCombination(a1,u1.y,a2,u2.y)").
expr(vector3_d_1_expr44, field_access, vector3_d_1_expr43, left_hand_side, range(vector3_d_1, 5696, 6, 154, 154), "this.z").
expr(vector3_d_1_expr43, assignment, vector3_d_1_stmt9, expression, range(vector3_d_1, 5696, 57, 154, 154), "this.z=MathArrays.linearCombination(a1,u1.z,a2,u2.z)").
expr(vector3_d_1_expr46, this_expression, f_z_131, expression, range(vector3_d_1, 5696, 4, 154, 154), "this").
expr(vector3_d_1_expr45, method_invocation, vector3_d_1_expr43, right_hand_side, range(vector3_d_1, 5705, 48, 154, 154), "MathArrays.linearCombination(a1,u1.z,a2,u2.z)").
expr(vector3_d_1_expr47, method_invocation, vector3_d_1_stmt10, expression, range(vector3_d_1, 8694, 37, 243, 243), "FastMath.sqrt(x * x + y * y + z * z)").
expr(vector3_d_1_expr50, infix_expression, vector3_d_1_expr49, left_operand, range(vector3_d_1, 8709, 5, 243, 243), "x * x").
expr(vector3_d_1_expr48, infix_expression, vector3_d_1_expr47, (arguments, 0), range(vector3_d_1, 8709, 21, 243, 243), "x * x + y * y + z * z").
expr(vector3_d_1_expr49, infix_expression, vector3_d_1_expr48, left_operand, range(vector3_d_1, 8709, 13, 243, 243), "x * x + y * y").
expr(vector3_d_1_expr51, infix_expression, vector3_d_1_expr49, right_operand, range(vector3_d_1, 8717, 5, 243, 243), "y * y").
expr(vector3_d_1_expr52, infix_expression, vector3_d_1_expr48, right_operand, range(vector3_d_1, 8725, 5, 243, 243), "z * z").
expr(vector3_d_1_expr55, infix_expression, vector3_d_1_expr54, left_operand, range(vector3_d_1, 8902, 5, 249, 249), "x * x").
expr(vector3_d_1_expr54, infix_expression, vector3_d_1_expr53, left_operand, range(vector3_d_1, 8902, 13, 249, 249), "x * x + y * y").
expr(vector3_d_1_expr53, infix_expression, vector3_d_1_stmt11, expression, range(vector3_d_1, 8902, 21, 249, 249), "x * x + y * y + z * z").
expr(vector3_d_1_expr56, infix_expression, vector3_d_1_expr54, right_operand, range(vector3_d_1, 8910, 5, 249, 249), "y * y").
expr(vector3_d_1_expr57, infix_expression, vector3_d_1_expr53, right_operand, range(vector3_d_1, 8918, 5, 249, 249), "z * z").
expr(vector3_d_1_expr58, cast_expression, vector3_d_1_code100, initializer, range(vector3_d_1, 10034, 12, 286, 286), "(Vector3D)v").
expr(vector3_d_1_expr59, class_instance_creation, vector3_d_1_stmt13, expression, range(vector3_d_1, 10063, 42, 287, 287), "new Vector3D(x - v3.x,y - v3.y,z - v3.z)").
expr(vector3_d_1_expr60, infix_expression, vector3_d_1_expr59, (arguments, 0), range(vector3_d_1, 10076, 8, 287, 287), "x - v3.x").
expr(vector3_d_1_expr61, infix_expression, vector3_d_1_expr59, (arguments, 1), range(vector3_d_1, 10086, 8, 287, 287), "y - v3.y").
expr(vector3_d_1_expr62, infix_expression, vector3_d_1_expr59, (arguments, 2), range(vector3_d_1, 10096, 8, 287, 287), "z - v3.z").
expr(vector3_d_1_expr63, cast_expression, vector3_d_1_code106, initializer, range(vector3_d_1, 15980, 12, 453, 453), "(Vector3D)v").
expr(vector3_d_1_expr64, method_invocation, vector3_d_1_stmt15, expression, range(vector3_d_1, 16009, 55, 454, 454), "MathArrays.linearCombination(x,v3.x,y,v3.y,z,v3.z)").

%%% Names
%line_1 - org.apache.commons.math3.geometry.euclidean.threed.Line
name(m_line_63, simple_name, line_1_code3, name, range(line_1, 2372, 4, 54, 54), 'Line').
name(p_p_1_73, simple_name, line_1_code5, name, range(line_1, 2392, 2, 54, 54), 'p1').
name(p_p_2_74, simple_name, line_1_code8, name, range(line_1, 2411, 2, 54, 54), 'p2').
name(m_reset_64, simple_name, line_1_expr1, name, range(line_1, 2461, 5, 55, 55), 'reset').
name(p_p_1_73, simple_name, line_1_expr1, (arguments, 0), range(line_1, 2467, 2, 55, 55), 'p1').
name(p_p_2_74, simple_name, line_1_expr1, (arguments, 1), range(line_1, 2471, 2, 55, 55), 'p2').
name(v_delta_78, simple_name, line_1_code15, name, range(line_1, 3209, 5, 74, 74), 'delta').
name(p_p_2_77, simple_name, line_1_expr2, expression, range(line_1, 3217, 2, 74, 74), 'p2').
name(m_subtract_66, simple_name, line_1_expr2, name, range(line_1, 3220, 8, 74, 74), 'subtract').
name(p_p_1_76, simple_name, line_1_expr2, (arguments, 0), range(line_1, 3229, 2, 74, 74), 'p1').
name(v_norm_2_79, simple_name, line_1_code18, name, range(line_1, 3255, 5, 75, 75), 'norm2').
name(v_delta_78, simple_name, line_1_expr3, expression, range(line_1, 3263, 5, 75, 75), 'delta').
name(m_get_norm_sq_67, simple_name, line_1_expr3, name, range(line_1, 3269, 9, 75, 75), 'getNormSq').
name(v_norm_2_79, simple_name, line_1_expr4, left_operand, range(line_1, 3294, 5, 76, 76), 'norm2').
name(f_direction_80, simple_name, line_1_expr6, name, range(line_1, 3413, 9, 79, 79), 'direction').
name(t_fast_math_2, simple_name, line_1_expr10, expression, range(line_1, 3444, 8, 79, 79), 'FastMath').
name(m_sqrt_69, simple_name, line_1_expr10, name, range(line_1, 3453, 4, 79, 79), 'sqrt').
name(v_norm_2_79, simple_name, line_1_expr10, (arguments, 0), range(line_1, 3458, 5, 79, 79), 'norm2').
name(v_delta_78, simple_name, line_1_expr7, (arguments, 1), range(line_1, 3466, 5, 79, 79), 'delta').
name(f_zero_81, simple_name, line_1_expr11, left_hand_side, range(line_1, 3482, 4, 80, 80), 'zero').
name(p_p_1_76, simple_name, line_1_expr12, (arguments, 1), range(line_1, 3507, 2, 80, 80), 'p1').
name(p_p_1_76, simple_name, line_1_expr15, expression, range(line_1, 3512, 2, 80, 80), 'p1').
name(m_dot_product_71, simple_name, line_1_expr15, name, range(line_1, 3515, 10, 80, 80), 'dotProduct').
name(v_delta_78, simple_name, line_1_expr15, (arguments, 0), range(line_1, 3526, 5, 80, 80), 'delta').
name(v_norm_2_79, simple_name, line_1_expr13, right_operand, range(line_1, 3535, 5, 80, 80), 'norm2').
name(v_delta_78, simple_name, line_1_expr12, (arguments, 3), range(line_1, 3542, 5, 80, 80), 'delta').
name(p_point_82, simple_name, line_1_expr17, expression, range(line_1, 4520, 5, 114, 114), 'point').
name(m_subtract_66, simple_name, line_1_expr17, name, range(line_1, 4526, 8, 114, 114), 'subtract').
name(f_zero_81, simple_name, line_1_expr17, (arguments, 0), range(line_1, 4535, 4, 114, 114), 'zero').
name(m_dot_product_71, simple_name, line_1_expr16, name, range(line_1, 4541, 10, 114, 114), 'dotProduct').
name(f_direction_80, simple_name, line_1_expr16, (arguments, 0), range(line_1, 4552, 9, 114, 114), 'direction').
name(m_get_abscissa_75, simple_name, line_1_expr19, name, range(line_1, 5020, 11, 129, 129), 'getAbscissa').
name(p_point_84, simple_name, line_1_expr20, expression, range(line_1, 5043, 5, 129, 129), 'point').
name(m_distance_81, simple_name, line_1_expr22, name, range(line_1, 5996, 8, 156, 156), 'distance').
name(p_p_87, simple_name, line_1_expr22, (arguments, 0), range(line_1, 6005, 1, 156, 156), 'p').
name(v_d_89, simple_name, line_1_code29, name, range(line_1, 6251, 1, 164, 164), 'd').
name(p_p_88, simple_name, line_1_expr23, expression, range(line_1, 6255, 1, 164, 164), 'p').
name(m_subtract_66, simple_name, line_1_expr23, name, range(line_1, 6257, 8, 164, 164), 'subtract').
name(f_zero_81, simple_name, line_1_expr23, (arguments, 0), range(line_1, 6266, 4, 164, 164), 'zero').
name(v_n_90, simple_name, line_1_code32, name, range(line_1, 6296, 1, 165, 165), 'n').
name(v_d_89, simple_name, line_1_expr24, (arguments, 1), range(line_1, 6318, 1, 165, 165), 'd').
name(v_d_89, simple_name, line_1_expr26, expression, range(line_1, 6322, 1, 165, 165), 'd').
name(m_dot_product_71, simple_name, line_1_expr26, name, range(line_1, 6324, 10, 165, 165), 'dotProduct').
name(f_direction_80, simple_name, line_1_expr26, (arguments, 0), range(line_1, 6335, 9, 165, 165), 'direction').
name(f_direction_80, simple_name, line_1_expr24, (arguments, 3), range(line_1, 6347, 9, 165, 165), 'direction').
name(v_n_90, simple_name, line_1_expr27, expression, range(line_1, 6374, 1, 166, 166), 'n').
name(m_get_norm_82, simple_name, line_1_expr27, name, range(line_1, 6376, 7, 166, 166), 'getNorm').
name(v_cos_93, simple_name, line_1_code37, name, range(line_1, 7364, 3, 195, 195), 'cos').
name(f_direction_80, simple_name, line_1_expr28, expression, range(line_1, 7370, 9, 195, 195), 'direction').
name(m_dot_product_71, simple_name, line_1_expr28, name, range(line_1, 7380, 10, 195, 195), 'dotProduct').
name(q_direction_2, qualified_name, line_1_expr28, (arguments, 0), range(line_1, 7391, 14, 195, 195), 'line.direction').
name(p_line_92, simple_name, q_direction_2, qualifier, range(line_1, 7391, 4, 195, 195), 'line').
name(v_n_94, simple_name, line_1_code40, name, range(line_1, 7429, 1, 196, 196), 'n').
name(v_cos_93, simple_name, line_1_expr30, left_operand, range(line_1, 7437, 3, 196, 196), 'cos').
name(v_cos_93, simple_name, line_1_expr30, right_operand, range(line_1, 7443, 3, 196, 196), 'cos').
name(v_n_94, simple_name, line_1_expr31, left_operand, range(line_1, 7460, 1, 197, 197), 'n').
name(t_precision_3, simple_name, q_epsilon_3, qualifier, range(line_1, 7464, 9, 197, 197), 'Precision').
name(q_epsilon_3, qualified_name, line_1_expr31, right_operand, range(line_1, 7464, 17, 197, 197), 'Precision.EPSILON').
name(v_delta_0_95, simple_name, line_1_code43, name, range(line_1, 7582, 6, 202, 202), 'delta0').
name(q_zero_4, qualified_name, line_1_expr32, expression, range(line_1, 7591, 9, 202, 202), 'line.zero').
name(p_line_92, simple_name, q_zero_4, qualifier, range(line_1, 7591, 4, 202, 202), 'line').
name(m_subtract_66, simple_name, line_1_expr32, name, range(line_1, 7601, 8, 202, 202), 'subtract').
name(f_zero_81, simple_name, line_1_expr32, (arguments, 0), range(line_1, 7610, 4, 202, 202), 'zero').
name(v_a_96, simple_name, line_1_code46, name, range(line_1, 7638, 1, 203, 203), 'a').
name(v_delta_0_95, simple_name, line_1_expr33, expression, range(line_1, 7649, 6, 203, 203), 'delta0').
name(m_dot_product_71, simple_name, line_1_expr33, name, range(line_1, 7656, 10, 203, 203), 'dotProduct').
name(f_direction_80, simple_name, line_1_expr33, (arguments, 0), range(line_1, 7667, 9, 203, 203), 'direction').
name(v_b_97, simple_name, line_1_code49, name, range(line_1, 7700, 1, 204, 204), 'b').
name(v_delta_0_95, simple_name, line_1_expr34, expression, range(line_1, 7711, 6, 204, 204), 'delta0').
name(m_dot_product_71, simple_name, line_1_expr34, name, range(line_1, 7718, 10, 204, 204), 'dotProduct').
name(q_direction_5, qualified_name, line_1_expr34, (arguments, 0), range(line_1, 7729, 14, 204, 204), 'line.direction').
name(p_line_92, simple_name, q_direction_5, qualifier, range(line_1, 7729, 4, 204, 204), 'line').
name(f_zero_81, simple_name, line_1_expr35, (arguments, 1), range(line_1, 7778, 4, 206, 206), 'zero').
name(v_a_96, simple_name, line_1_expr38, left_operand, range(line_1, 7785, 1, 206, 206), 'a').
name(v_b_97, simple_name, line_1_expr39, left_operand, range(line_1, 7789, 1, 206, 206), 'b').
name(v_cos_93, simple_name, line_1_expr39, right_operand, range(line_1, 7793, 3, 206, 206), 'cos').
name(v_n_94, simple_name, line_1_expr36, right_operand, range(line_1, 7800, 1, 206, 206), 'n').
name(f_direction_80, simple_name, line_1_expr35, (arguments, 3), range(line_1, 7803, 9, 206, 206), 'direction').
name(v_closest_99, simple_name, line_1_code54, name, range(line_1, 8125, 7, 216, 216), 'closest').
name(m_closest_point_84, simple_name, line_1_expr40, name, range(line_1, 8135, 12, 216, 216), 'closestPoint').
name(p_line_98, simple_name, line_1_expr40, (arguments, 0), range(line_1, 8148, 4, 216, 216), 'line').
name(p_line_98, simple_name, line_1_expr42, expression, range(line_1, 8170, 4, 217, 217), 'line').
name(m_contains_80, simple_name, line_1_expr42, name, range(line_1, 8175, 8, 217, 217), 'contains').
name(v_closest_99, simple_name, line_1_expr42, (arguments, 0), range(line_1, 8184, 7, 217, 217), 'closest').
name(v_closest_99, simple_name, line_1_expr41, then_expression, range(line_1, 8195, 7, 217, 217), 'closest').
%line_2 - org.apache.commons.math3.geometry.euclidean.twod.Line
name(m_line_150, simple_name, line_2_code3, name, range(line_2, 3618, 4, 81, 81), 'Line').
name(p_p_1_186, simple_name, line_2_code5, name, range(line_2, 3638, 2, 81, 81), 'p1').
name(p_p_2_187, simple_name, line_2_code8, name, range(line_2, 3657, 2, 81, 81), 'p2').
name(m_reset_151, simple_name, line_2_expr1, name, range(line_2, 3671, 5, 82, 82), 'reset').
name(p_p_1_186, simple_name, line_2_expr1, (arguments, 0), range(line_2, 3677, 2, 82, 82), 'p1').
name(p_p_2_187, simple_name, line_2_expr1, (arguments, 1), range(line_2, 3681, 2, 82, 82), 'p2').
name(v_dx_197, simple_name, line_2_code14, name, range(line_2, 5229, 2, 129, 129), 'dx').
name(p_p_2_196, simple_name, line_2_expr3, expression, range(line_2, 5234, 2, 129, 129), 'p2').
name(m_get_x_156, simple_name, line_2_expr3, name, range(line_2, 5237, 4, 129, 129), 'getX').
name(p_p_1_195, simple_name, line_2_expr4, expression, range(line_2, 5246, 2, 129, 129), 'p1').
name(m_get_x_156, simple_name, line_2_expr4, name, range(line_2, 5249, 4, 129, 129), 'getX').
name(v_dy_198, simple_name, line_2_code17, name, range(line_2, 5278, 2, 130, 130), 'dy').
name(p_p_2_196, simple_name, line_2_expr6, expression, range(line_2, 5283, 2, 130, 130), 'p2').
name(m_get_y_157, simple_name, line_2_expr6, name, range(line_2, 5286, 4, 130, 130), 'getY').
name(p_p_1_195, simple_name, line_2_expr7, expression, range(line_2, 5295, 2, 130, 130), 'p1').
name(m_get_y_157, simple_name, line_2_expr7, name, range(line_2, 5298, 4, 130, 130), 'getY').
name(v_d_199, simple_name, line_2_code20, name, range(line_2, 5327, 1, 131, 131), 'd').
name(t_fast_math_2, simple_name, line_2_expr8, expression, range(line_2, 5331, 8, 131, 131), 'FastMath').
name(m_hypot_158, simple_name, line_2_expr8, name, range(line_2, 5340, 5, 131, 131), 'hypot').
name(v_dx_197, simple_name, line_2_expr8, (arguments, 0), range(line_2, 5346, 2, 131, 131), 'dx').
name(v_dy_198, simple_name, line_2_expr8, (arguments, 1), range(line_2, 5350, 2, 131, 131), 'dy').
name(v_d_199, simple_name, line_2_expr9, left_operand, range(line_2, 5367, 1, 132, 132), 'd').
name(f_angle_200, simple_name, line_2_expr10, left_hand_side, range(line_2, 5542, 5, 138, 138), 'angle').
name(t_fast_math_2, simple_name, q_pi_21, qualifier, range(line_2, 5557, 8, 138, 138), 'FastMath').
name(q_pi_21, qualified_name, line_2_expr11, left_operand, range(line_2, 5557, 11, 138, 138), 'FastMath.PI').
name(t_fast_math_2, simple_name, line_2_expr12, expression, range(line_2, 5571, 8, 138, 138), 'FastMath').
name(m_atan_2_159, simple_name, line_2_expr12, name, range(line_2, 5580, 5, 138, 138), 'atan2').
name(v_dy_198, simple_name, line_2_expr13, operand, range(line_2, 5587, 2, 138, 138), 'dy').
name(v_dx_197, simple_name, line_2_expr14, operand, range(line_2, 5592, 2, 138, 138), 'dx').
name(f_cos_201, simple_name, line_2_expr15, left_hand_side, range(line_2, 5609, 3, 139, 139), 'cos').
name(t_fast_math_2, simple_name, line_2_expr16, expression, range(line_2, 5624, 8, 139, 139), 'FastMath').
name(m_cos_160, simple_name, line_2_expr16, name, range(line_2, 5633, 3, 139, 139), 'cos').
name(f_angle_200, simple_name, line_2_expr16, (arguments, 0), range(line_2, 5637, 5, 139, 139), 'angle').
name(f_sin_202, simple_name, line_2_expr17, left_hand_side, range(line_2, 5657, 3, 140, 140), 'sin').
name(t_fast_math_2, simple_name, line_2_expr18, expression, range(line_2, 5672, 8, 140, 140), 'FastMath').
name(m_sin_161, simple_name, line_2_expr18, name, range(line_2, 5681, 3, 140, 140), 'sin').
name(f_angle_200, simple_name, line_2_expr18, (arguments, 0), range(line_2, 5685, 5, 140, 140), 'angle').
name(f_origin_offset_203, simple_name, line_2_expr19, left_hand_side, range(line_2, 5705, 12, 141, 141), 'originOffset').
name(p_p_2_196, simple_name, line_2_expr24, expression, range(line_2, 5721, 2, 141, 141), 'p2').
name(m_get_x_156, simple_name, line_2_expr24, name, range(line_2, 5724, 4, 141, 141), 'getX').
name(p_p_1_195, simple_name, line_2_expr25, expression, range(line_2, 5733, 2, 141, 141), 'p1').
name(m_get_y_157, simple_name, line_2_expr25, name, range(line_2, 5736, 4, 141, 141), 'getY').
name(p_p_1_195, simple_name, line_2_expr27, expression, range(line_2, 5745, 2, 141, 141), 'p1').
name(m_get_x_156, simple_name, line_2_expr27, name, range(line_2, 5748, 4, 141, 141), 'getX').
name(p_p_2_196, simple_name, line_2_expr28, expression, range(line_2, 5757, 2, 141, 141), 'p2').
name(m_get_y_157, simple_name, line_2_expr28, name, range(line_2, 5760, 4, 141, 141), 'getY').
name(v_d_199, simple_name, line_2_expr20, right_operand, range(line_2, 5770, 1, 141, 141), 'd').
name(v_p_2_207, simple_name, line_2_code23, name, range(line_2, 7129, 2, 181, 181), 'p2').
name(p_point_206, simple_name, line_2_expr29, expression, range(line_2, 7145, 5, 181, 181), 'point').
name(f_cos_201, simple_name, line_2_expr32, left_operand, range(line_2, 7180, 3, 182, 182), 'cos').
name(v_p_2_207, simple_name, line_2_expr33, expression, range(line_2, 7186, 2, 182, 182), 'p2').
name(m_get_x_156, simple_name, line_2_expr33, name, range(line_2, 7189, 4, 182, 182), 'getX').
name(f_sin_202, simple_name, line_2_expr34, left_operand, range(line_2, 7198, 3, 182, 182), 'sin').
name(v_p_2_207, simple_name, line_2_expr35, expression, range(line_2, 7204, 2, 182, 182), 'p2').
name(m_get_y_157, simple_name, line_2_expr35, name, range(line_2, 7207, 4, 182, 182), 'getY').
name(v_d_210, simple_name, line_2_code29, name, range(line_2, 7810, 1, 198, 198), 'd').
name(f_sin_202, simple_name, line_2_expr37, left_operand, range(line_2, 7814, 3, 198, 198), 'sin').
name(p_other_209, simple_name, q_cos_22, qualifier, range(line_2, 7820, 5, 198, 198), 'other').
name(q_cos_22, qualified_name, line_2_expr37, right_operand, range(line_2, 7820, 9, 198, 198), 'other.cos').
name(p_other_209, simple_name, q_sin_23, qualifier, range(line_2, 7832, 5, 198, 198), 'other').
name(q_sin_23, qualified_name, line_2_expr38, left_operand, range(line_2, 7832, 9, 198, 198), 'other.sin').
name(f_cos_201, simple_name, line_2_expr38, right_operand, range(line_2, 7844, 3, 198, 198), 'cos').
name(t_fast_math_2, simple_name, line_2_expr40, expression, range(line_2, 7861, 8, 199, 199), 'FastMath').
name(m_abs_168, simple_name, line_2_expr40, name, range(line_2, 7870, 3, 199, 199), 'abs').
name(v_d_210, simple_name, line_2_expr40, (arguments, 0), range(line_2, 7874, 1, 199, 199), 'd').
%math_arrays_1 - org.apache.commons.math3.util.MathArrays
name(v_ca_1_597, simple_name, math_arrays_1_code6, name, range(math_arrays_1, 32510, 3, 896, 896), 'ca1').
name(f_split_factor_598, simple_name, math_arrays_1_expr1, left_operand, range(math_arrays_1, 32523, 12, 896, 896), 'SPLIT_FACTOR').
name(p_a_1_593, simple_name, math_arrays_1_expr1, right_operand, range(math_arrays_1, 32538, 2, 896, 896), 'a1').
name(v_a_1high_599, simple_name, math_arrays_1_code9, name, range(math_arrays_1, 32563, 6, 897, 897), 'a1High').
name(v_ca_1_597, simple_name, math_arrays_1_expr2, left_operand, range(math_arrays_1, 32576, 3, 897, 897), 'ca1').
name(v_ca_1_597, simple_name, math_arrays_1_expr4, left_operand, range(math_arrays_1, 32583, 3, 897, 897), 'ca1').
name(p_a_1_593, simple_name, math_arrays_1_expr4, right_operand, range(math_arrays_1, 32589, 2, 897, 897), 'a1').
name(v_a_1low_600, simple_name, math_arrays_1_code12, name, range(math_arrays_1, 32615, 5, 898, 898), 'a1Low').
name(p_a_1_593, simple_name, math_arrays_1_expr5, left_operand, range(math_arrays_1, 32628, 2, 898, 898), 'a1').
name(v_a_1high_599, simple_name, math_arrays_1_expr5, right_operand, range(math_arrays_1, 32633, 6, 898, 898), 'a1High').
name(v_cb_1_601, simple_name, math_arrays_1_code15, name, range(math_arrays_1, 32662, 3, 899, 899), 'cb1').
name(f_split_factor_598, simple_name, math_arrays_1_expr6, left_operand, range(math_arrays_1, 32675, 12, 899, 899), 'SPLIT_FACTOR').
name(p_b_1_594, simple_name, math_arrays_1_expr6, right_operand, range(math_arrays_1, 32690, 2, 899, 899), 'b1').
name(v_b_1high_602, simple_name, math_arrays_1_code18, name, range(math_arrays_1, 32715, 6, 900, 900), 'b1High').
name(v_cb_1_601, simple_name, math_arrays_1_expr7, left_operand, range(math_arrays_1, 32728, 3, 900, 900), 'cb1').
name(v_cb_1_601, simple_name, math_arrays_1_expr9, left_operand, range(math_arrays_1, 32735, 3, 900, 900), 'cb1').
name(p_b_1_594, simple_name, math_arrays_1_expr9, right_operand, range(math_arrays_1, 32741, 2, 900, 900), 'b1').
name(v_b_1low_603, simple_name, math_arrays_1_code21, name, range(math_arrays_1, 32767, 5, 901, 901), 'b1Low').
name(p_b_1_594, simple_name, math_arrays_1_expr10, left_operand, range(math_arrays_1, 32780, 2, 901, 901), 'b1').
name(v_b_1high_602, simple_name, math_arrays_1_expr10, right_operand, range(math_arrays_1, 32785, 6, 901, 901), 'b1High').
name(v_prod_1high_604, simple_name, math_arrays_1_code24, name, range(math_arrays_1, 32858, 9, 904, 904), 'prod1High').
name(p_a_1_593, simple_name, math_arrays_1_expr11, left_operand, range(math_arrays_1, 32871, 2, 904, 904), 'a1').
name(p_b_1_594, simple_name, math_arrays_1_expr11, right_operand, range(math_arrays_1, 32876, 2, 904, 904), 'b1').
name(v_prod_1low_605, simple_name, math_arrays_1_code27, name, range(math_arrays_1, 32901, 8, 905, 905), 'prod1Low').
name(v_a_1low_600, simple_name, math_arrays_1_expr13, left_operand, range(math_arrays_1, 32914, 5, 905, 905), 'a1Low').
name(v_b_1low_603, simple_name, math_arrays_1_expr13, right_operand, range(math_arrays_1, 32922, 5, 905, 905), 'b1Low').
name(v_prod_1high_604, simple_name, math_arrays_1_expr19, left_operand, range(math_arrays_1, 32933, 9, 905, 905), 'prod1High').
name(v_a_1high_599, simple_name, math_arrays_1_expr20, left_operand, range(math_arrays_1, 32945, 6, 905, 905), 'a1High').
name(v_b_1high_602, simple_name, math_arrays_1_expr20, right_operand, range(math_arrays_1, 32954, 6, 905, 905), 'b1High').
name(v_a_1low_600, simple_name, math_arrays_1_expr21, left_operand, range(math_arrays_1, 32964, 5, 905, 905), 'a1Low').
name(v_b_1high_602, simple_name, math_arrays_1_expr21, right_operand, range(math_arrays_1, 32972, 6, 905, 905), 'b1High').
name(v_a_1high_599, simple_name, math_arrays_1_expr22, left_operand, range(math_arrays_1, 32982, 6, 905, 905), 'a1High').
name(v_b_1low_603, simple_name, math_arrays_1_expr22, right_operand, range(math_arrays_1, 32991, 5, 905, 905), 'b1Low').
name(v_ca_2_606, simple_name, math_arrays_1_code30, name, range(math_arrays_1, 33071, 3, 908, 908), 'ca2').
name(f_split_factor_598, simple_name, math_arrays_1_expr23, left_operand, range(math_arrays_1, 33084, 12, 908, 908), 'SPLIT_FACTOR').
name(p_a_2_595, simple_name, math_arrays_1_expr23, right_operand, range(math_arrays_1, 33099, 2, 908, 908), 'a2').
name(v_a_2high_607, simple_name, math_arrays_1_code33, name, range(math_arrays_1, 33124, 6, 909, 909), 'a2High').
name(v_ca_2_606, simple_name, math_arrays_1_expr24, left_operand, range(math_arrays_1, 33137, 3, 909, 909), 'ca2').
name(v_ca_2_606, simple_name, math_arrays_1_expr26, left_operand, range(math_arrays_1, 33144, 3, 909, 909), 'ca2').
name(p_a_2_595, simple_name, math_arrays_1_expr26, right_operand, range(math_arrays_1, 33150, 2, 909, 909), 'a2').
name(v_a_2low_608, simple_name, math_arrays_1_code36, name, range(math_arrays_1, 33176, 5, 910, 910), 'a2Low').
name(p_a_2_595, simple_name, math_arrays_1_expr27, left_operand, range(math_arrays_1, 33189, 2, 910, 910), 'a2').
name(v_a_2high_607, simple_name, math_arrays_1_expr27, right_operand, range(math_arrays_1, 33194, 6, 910, 910), 'a2High').
name(v_cb_2_609, simple_name, math_arrays_1_code39, name, range(math_arrays_1, 33223, 3, 911, 911), 'cb2').
name(f_split_factor_598, simple_name, math_arrays_1_expr28, left_operand, range(math_arrays_1, 33236, 12, 911, 911), 'SPLIT_FACTOR').
name(p_b_2_596, simple_name, math_arrays_1_expr28, right_operand, range(math_arrays_1, 33251, 2, 911, 911), 'b2').
name(v_b_2high_610, simple_name, math_arrays_1_code42, name, range(math_arrays_1, 33276, 6, 912, 912), 'b2High').
name(v_cb_2_609, simple_name, math_arrays_1_expr29, left_operand, range(math_arrays_1, 33289, 3, 912, 912), 'cb2').
name(v_cb_2_609, simple_name, math_arrays_1_expr31, left_operand, range(math_arrays_1, 33296, 3, 912, 912), 'cb2').
name(p_b_2_596, simple_name, math_arrays_1_expr31, right_operand, range(math_arrays_1, 33302, 2, 912, 912), 'b2').
name(v_b_2low_611, simple_name, math_arrays_1_code45, name, range(math_arrays_1, 33328, 5, 913, 913), 'b2Low').
name(p_b_2_596, simple_name, math_arrays_1_expr32, left_operand, range(math_arrays_1, 33341, 2, 913, 913), 'b2').
name(v_b_2high_610, simple_name, math_arrays_1_expr32, right_operand, range(math_arrays_1, 33346, 6, 913, 913), 'b2High').
name(v_prod_2high_612, simple_name, math_arrays_1_code48, name, range(math_arrays_1, 33419, 9, 916, 916), 'prod2High').
name(p_a_2_595, simple_name, math_arrays_1_expr33, left_operand, range(math_arrays_1, 33432, 2, 916, 916), 'a2').
name(p_b_2_596, simple_name, math_arrays_1_expr33, right_operand, range(math_arrays_1, 33437, 2, 916, 916), 'b2').
name(v_prod_2low_613, simple_name, math_arrays_1_code51, name, range(math_arrays_1, 33462, 8, 917, 917), 'prod2Low').
name(v_a_2low_608, simple_name, math_arrays_1_expr35, left_operand, range(math_arrays_1, 33475, 5, 917, 917), 'a2Low').
name(v_b_2low_611, simple_name, math_arrays_1_expr35, right_operand, range(math_arrays_1, 33483, 5, 917, 917), 'b2Low').
name(v_prod_2high_612, simple_name, math_arrays_1_expr41, left_operand, range(math_arrays_1, 33494, 9, 917, 917), 'prod2High').
name(v_a_2high_607, simple_name, math_arrays_1_expr42, left_operand, range(math_arrays_1, 33506, 6, 917, 917), 'a2High').
name(v_b_2high_610, simple_name, math_arrays_1_expr42, right_operand, range(math_arrays_1, 33515, 6, 917, 917), 'b2High').
name(v_a_2low_608, simple_name, math_arrays_1_expr43, left_operand, range(math_arrays_1, 33525, 5, 917, 917), 'a2Low').
name(v_b_2high_610, simple_name, math_arrays_1_expr43, right_operand, range(math_arrays_1, 33533, 6, 917, 917), 'b2High').
name(v_a_2high_607, simple_name, math_arrays_1_expr44, left_operand, range(math_arrays_1, 33543, 6, 917, 917), 'a2High').
name(v_b_2low_611, simple_name, math_arrays_1_expr44, right_operand, range(math_arrays_1, 33552, 5, 917, 917), 'b2Low').
name(v_s_12high_614, simple_name, math_arrays_1_code54, name, range(math_arrays_1, 33629, 7, 920, 920), 's12High').
name(v_prod_1high_604, simple_name, math_arrays_1_expr45, left_operand, range(math_arrays_1, 33642, 9, 920, 920), 'prod1High').
name(v_prod_2high_612, simple_name, math_arrays_1_expr45, right_operand, range(math_arrays_1, 33654, 9, 920, 920), 'prod2High').
name(v_s_12prime_615, simple_name, math_arrays_1_code57, name, range(math_arrays_1, 33686, 8, 921, 921), 's12Prime').
name(v_s_12high_614, simple_name, math_arrays_1_expr46, left_operand, range(math_arrays_1, 33699, 7, 921, 921), 's12High').
name(v_prod_2high_612, simple_name, math_arrays_1_expr46, right_operand, range(math_arrays_1, 33709, 9, 921, 921), 'prod2High').
name(v_s_12low_616, simple_name, math_arrays_1_code60, name, range(math_arrays_1, 33741, 6, 922, 922), 's12Low').
name(v_prod_2high_612, simple_name, math_arrays_1_expr49, left_operand, range(math_arrays_1, 33755, 9, 922, 922), 'prod2High').
name(v_s_12high_614, simple_name, math_arrays_1_expr51, left_operand, range(math_arrays_1, 33768, 7, 922, 922), 's12High').
name(v_s_12prime_615, simple_name, math_arrays_1_expr51, right_operand, range(math_arrays_1, 33778, 8, 922, 922), 's12Prime').
name(v_prod_1high_604, simple_name, math_arrays_1_expr53, left_operand, range(math_arrays_1, 33792, 9, 922, 922), 'prod1High').
name(v_s_12prime_615, simple_name, math_arrays_1_expr53, right_operand, range(math_arrays_1, 33804, 8, 922, 922), 's12Prime').
name(v_result_617, simple_name, math_arrays_1_code62, name, range(math_arrays_1, 33984, 6, 926, 926), 'result').
name(v_s_12high_614, simple_name, math_arrays_1_expr54, left_operand, range(math_arrays_1, 33993, 7, 926, 926), 's12High').
name(v_prod_1low_605, simple_name, math_arrays_1_expr56, left_operand, range(math_arrays_1, 34004, 8, 926, 926), 'prod1Low').
name(v_prod_2low_613, simple_name, math_arrays_1_expr56, right_operand, range(math_arrays_1, 34015, 8, 926, 926), 'prod2Low').
name(v_s_12low_616, simple_name, math_arrays_1_expr56, (extended_operands, 0), range(math_arrays_1, 34026, 6, 926, 926), 's12Low').
name(t_double_1, simple_name, math_arrays_1_expr57, expression, range(math_arrays_1, 34048, 6, 928, 928), 'Double').
name(m_is_na_n_377, simple_name, math_arrays_1_expr57, name, range(math_arrays_1, 34055, 5, 928, 928), 'isNaN').
name(v_result_617, simple_name, math_arrays_1_expr57, (arguments, 0), range(math_arrays_1, 34061, 6, 928, 928), 'result').
name(v_result_617, simple_name, math_arrays_1_stmt22, expression, range(math_arrays_1, 34304, 6, 934, 934), 'result').
name(v_ca_1_624, simple_name, math_arrays_1_code66, name, range(math_arrays_1, 36676, 3, 976, 976), 'ca1').
name(f_split_factor_598, simple_name, math_arrays_1_expr58, left_operand, range(math_arrays_1, 36689, 12, 976, 976), 'SPLIT_FACTOR').
name(p_a_1_618, simple_name, math_arrays_1_expr58, right_operand, range(math_arrays_1, 36704, 2, 976, 976), 'a1').
name(v_a_1high_625, simple_name, math_arrays_1_code69, name, range(math_arrays_1, 36729, 6, 977, 977), 'a1High').
name(v_ca_1_624, simple_name, math_arrays_1_expr59, left_operand, range(math_arrays_1, 36742, 3, 977, 977), 'ca1').
name(v_ca_1_624, simple_name, math_arrays_1_expr61, left_operand, range(math_arrays_1, 36749, 3, 977, 977), 'ca1').
name(p_a_1_618, simple_name, math_arrays_1_expr61, right_operand, range(math_arrays_1, 36755, 2, 977, 977), 'a1').
name(v_a_1low_626, simple_name, math_arrays_1_code72, name, range(math_arrays_1, 36781, 5, 978, 978), 'a1Low').
name(p_a_1_618, simple_name, math_arrays_1_expr62, left_operand, range(math_arrays_1, 36794, 2, 978, 978), 'a1').
name(v_a_1high_625, simple_name, math_arrays_1_expr62, right_operand, range(math_arrays_1, 36799, 6, 978, 978), 'a1High').
name(v_cb_1_627, simple_name, math_arrays_1_code75, name, range(math_arrays_1, 36828, 3, 979, 979), 'cb1').
name(f_split_factor_598, simple_name, math_arrays_1_expr63, left_operand, range(math_arrays_1, 36841, 12, 979, 979), 'SPLIT_FACTOR').
name(p_b_1_619, simple_name, math_arrays_1_expr63, right_operand, range(math_arrays_1, 36856, 2, 979, 979), 'b1').
name(v_b_1high_628, simple_name, math_arrays_1_code78, name, range(math_arrays_1, 36881, 6, 980, 980), 'b1High').
name(v_cb_1_627, simple_name, math_arrays_1_expr64, left_operand, range(math_arrays_1, 36894, 3, 980, 980), 'cb1').
name(v_cb_1_627, simple_name, math_arrays_1_expr66, left_operand, range(math_arrays_1, 36901, 3, 980, 980), 'cb1').
name(p_b_1_619, simple_name, math_arrays_1_expr66, right_operand, range(math_arrays_1, 36907, 2, 980, 980), 'b1').
name(v_b_1low_629, simple_name, math_arrays_1_code81, name, range(math_arrays_1, 36933, 5, 981, 981), 'b1Low').
name(p_b_1_619, simple_name, math_arrays_1_expr67, left_operand, range(math_arrays_1, 36946, 2, 981, 981), 'b1').
name(v_b_1high_628, simple_name, math_arrays_1_expr67, right_operand, range(math_arrays_1, 36951, 6, 981, 981), 'b1High').
name(v_prod_1high_630, simple_name, math_arrays_1_code84, name, range(math_arrays_1, 37024, 9, 984, 984), 'prod1High').
name(p_a_1_618, simple_name, math_arrays_1_expr68, left_operand, range(math_arrays_1, 37037, 2, 984, 984), 'a1').
name(p_b_1_619, simple_name, math_arrays_1_expr68, right_operand, range(math_arrays_1, 37042, 2, 984, 984), 'b1').
name(v_prod_1low_631, simple_name, math_arrays_1_code87, name, range(math_arrays_1, 37067, 8, 985, 985), 'prod1Low').
name(v_a_1low_626, simple_name, math_arrays_1_expr70, left_operand, range(math_arrays_1, 37080, 5, 985, 985), 'a1Low').
name(v_b_1low_629, simple_name, math_arrays_1_expr70, right_operand, range(math_arrays_1, 37088, 5, 985, 985), 'b1Low').
name(v_prod_1high_630, simple_name, math_arrays_1_expr76, left_operand, range(math_arrays_1, 37099, 9, 985, 985), 'prod1High').
name(v_a_1high_625, simple_name, math_arrays_1_expr77, left_operand, range(math_arrays_1, 37111, 6, 985, 985), 'a1High').
name(v_b_1high_628, simple_name, math_arrays_1_expr77, right_operand, range(math_arrays_1, 37120, 6, 985, 985), 'b1High').
name(v_a_1low_626, simple_name, math_arrays_1_expr78, left_operand, range(math_arrays_1, 37130, 5, 985, 985), 'a1Low').
name(v_b_1high_628, simple_name, math_arrays_1_expr78, right_operand, range(math_arrays_1, 37138, 6, 985, 985), 'b1High').
name(v_a_1high_625, simple_name, math_arrays_1_expr79, left_operand, range(math_arrays_1, 37148, 6, 985, 985), 'a1High').
name(v_b_1low_629, simple_name, math_arrays_1_expr79, right_operand, range(math_arrays_1, 37157, 5, 985, 985), 'b1Low').
name(v_ca_2_632, simple_name, math_arrays_1_code90, name, range(math_arrays_1, 37237, 3, 988, 988), 'ca2').
name(f_split_factor_598, simple_name, math_arrays_1_expr80, left_operand, range(math_arrays_1, 37250, 12, 988, 988), 'SPLIT_FACTOR').
name(p_a_2_620, simple_name, math_arrays_1_expr80, right_operand, range(math_arrays_1, 37265, 2, 988, 988), 'a2').
name(v_a_2high_633, simple_name, math_arrays_1_code93, name, range(math_arrays_1, 37290, 6, 989, 989), 'a2High').
name(v_ca_2_632, simple_name, math_arrays_1_expr81, left_operand, range(math_arrays_1, 37303, 3, 989, 989), 'ca2').
name(v_ca_2_632, simple_name, math_arrays_1_expr83, left_operand, range(math_arrays_1, 37310, 3, 989, 989), 'ca2').
name(p_a_2_620, simple_name, math_arrays_1_expr83, right_operand, range(math_arrays_1, 37316, 2, 989, 989), 'a2').
name(v_a_2low_634, simple_name, math_arrays_1_code96, name, range(math_arrays_1, 37342, 5, 990, 990), 'a2Low').
name(p_a_2_620, simple_name, math_arrays_1_expr84, left_operand, range(math_arrays_1, 37355, 2, 990, 990), 'a2').
name(v_a_2high_633, simple_name, math_arrays_1_expr84, right_operand, range(math_arrays_1, 37360, 6, 990, 990), 'a2High').
name(v_cb_2_635, simple_name, math_arrays_1_code99, name, range(math_arrays_1, 37389, 3, 991, 991), 'cb2').
name(f_split_factor_598, simple_name, math_arrays_1_expr85, left_operand, range(math_arrays_1, 37402, 12, 991, 991), 'SPLIT_FACTOR').
name(p_b_2_621, simple_name, math_arrays_1_expr85, right_operand, range(math_arrays_1, 37417, 2, 991, 991), 'b2').
name(v_b_2high_636, simple_name, math_arrays_1_code102, name, range(math_arrays_1, 37442, 6, 992, 992), 'b2High').
name(v_cb_2_635, simple_name, math_arrays_1_expr86, left_operand, range(math_arrays_1, 37455, 3, 992, 992), 'cb2').
name(v_cb_2_635, simple_name, math_arrays_1_expr88, left_operand, range(math_arrays_1, 37462, 3, 992, 992), 'cb2').
name(p_b_2_621, simple_name, math_arrays_1_expr88, right_operand, range(math_arrays_1, 37468, 2, 992, 992), 'b2').
name(v_b_2low_637, simple_name, math_arrays_1_code105, name, range(math_arrays_1, 37494, 5, 993, 993), 'b2Low').
name(p_b_2_621, simple_name, math_arrays_1_expr89, left_operand, range(math_arrays_1, 37507, 2, 993, 993), 'b2').
name(v_b_2high_636, simple_name, math_arrays_1_expr89, right_operand, range(math_arrays_1, 37512, 6, 993, 993), 'b2High').
name(v_prod_2high_638, simple_name, math_arrays_1_code108, name, range(math_arrays_1, 37585, 9, 996, 996), 'prod2High').
name(p_a_2_620, simple_name, math_arrays_1_expr90, left_operand, range(math_arrays_1, 37598, 2, 996, 996), 'a2').
name(p_b_2_621, simple_name, math_arrays_1_expr90, right_operand, range(math_arrays_1, 37603, 2, 996, 996), 'b2').
name(v_prod_2low_639, simple_name, math_arrays_1_code111, name, range(math_arrays_1, 37628, 8, 997, 997), 'prod2Low').
name(v_a_2low_634, simple_name, math_arrays_1_expr92, left_operand, range(math_arrays_1, 37641, 5, 997, 997), 'a2Low').
name(v_b_2low_637, simple_name, math_arrays_1_expr92, right_operand, range(math_arrays_1, 37649, 5, 997, 997), 'b2Low').
name(v_prod_2high_638, simple_name, math_arrays_1_expr98, left_operand, range(math_arrays_1, 37660, 9, 997, 997), 'prod2High').
name(v_a_2high_633, simple_name, math_arrays_1_expr99, left_operand, range(math_arrays_1, 37672, 6, 997, 997), 'a2High').
name(v_b_2high_636, simple_name, math_arrays_1_expr99, right_operand, range(math_arrays_1, 37681, 6, 997, 997), 'b2High').
name(v_a_2low_634, simple_name, math_arrays_1_expr100, left_operand, range(math_arrays_1, 37691, 5, 997, 997), 'a2Low').
name(v_b_2high_636, simple_name, math_arrays_1_expr100, right_operand, range(math_arrays_1, 37699, 6, 997, 997), 'b2High').
name(v_a_2high_633, simple_name, math_arrays_1_expr101, left_operand, range(math_arrays_1, 37709, 6, 997, 997), 'a2High').
name(v_b_2low_637, simple_name, math_arrays_1_expr101, right_operand, range(math_arrays_1, 37718, 5, 997, 997), 'b2Low').
name(v_ca_3_640, simple_name, math_arrays_1_code114, name, range(math_arrays_1, 37798, 3, 1000, 1000), 'ca3').
name(f_split_factor_598, simple_name, math_arrays_1_expr102, left_operand, range(math_arrays_1, 37811, 12, 1000, 1000), 'SPLIT_FACTOR').
name(p_a_3_622, simple_name, math_arrays_1_expr102, right_operand, range(math_arrays_1, 37826, 2, 1000, 1000), 'a3').
name(v_a_3high_641, simple_name, math_arrays_1_code117, name, range(math_arrays_1, 37851, 6, 1001, 1001), 'a3High').
name(v_ca_3_640, simple_name, math_arrays_1_expr103, left_operand, range(math_arrays_1, 37864, 3, 1001, 1001), 'ca3').
name(v_ca_3_640, simple_name, math_arrays_1_expr105, left_operand, range(math_arrays_1, 37871, 3, 1001, 1001), 'ca3').
name(p_a_3_622, simple_name, math_arrays_1_expr105, right_operand, range(math_arrays_1, 37877, 2, 1001, 1001), 'a3').
name(v_a_3low_642, simple_name, math_arrays_1_code120, name, range(math_arrays_1, 37903, 5, 1002, 1002), 'a3Low').
name(p_a_3_622, simple_name, math_arrays_1_expr106, left_operand, range(math_arrays_1, 37916, 2, 1002, 1002), 'a3').
name(v_a_3high_641, simple_name, math_arrays_1_expr106, right_operand, range(math_arrays_1, 37921, 6, 1002, 1002), 'a3High').
name(v_cb_3_643, simple_name, math_arrays_1_code123, name, range(math_arrays_1, 37950, 3, 1003, 1003), 'cb3').
name(f_split_factor_598, simple_name, math_arrays_1_expr107, left_operand, range(math_arrays_1, 37963, 12, 1003, 1003), 'SPLIT_FACTOR').
name(p_b_3_623, simple_name, math_arrays_1_expr107, right_operand, range(math_arrays_1, 37978, 2, 1003, 1003), 'b3').
name(v_b_3high_644, simple_name, math_arrays_1_code126, name, range(math_arrays_1, 38003, 6, 1004, 1004), 'b3High').
name(v_cb_3_643, simple_name, math_arrays_1_expr108, left_operand, range(math_arrays_1, 38016, 3, 1004, 1004), 'cb3').
name(v_cb_3_643, simple_name, math_arrays_1_expr110, left_operand, range(math_arrays_1, 38023, 3, 1004, 1004), 'cb3').
name(p_b_3_623, simple_name, math_arrays_1_expr110, right_operand, range(math_arrays_1, 38029, 2, 1004, 1004), 'b3').
name(v_b_3low_645, simple_name, math_arrays_1_code129, name, range(math_arrays_1, 38055, 5, 1005, 1005), 'b3Low').
name(p_b_3_623, simple_name, math_arrays_1_expr111, left_operand, range(math_arrays_1, 38068, 2, 1005, 1005), 'b3').
name(v_b_3high_644, simple_name, math_arrays_1_expr111, right_operand, range(math_arrays_1, 38073, 6, 1005, 1005), 'b3High').
name(v_prod_3high_646, simple_name, math_arrays_1_code132, name, range(math_arrays_1, 38146, 9, 1008, 1008), 'prod3High').
name(p_a_3_622, simple_name, math_arrays_1_expr112, left_operand, range(math_arrays_1, 38159, 2, 1008, 1008), 'a3').
name(p_b_3_623, simple_name, math_arrays_1_expr112, right_operand, range(math_arrays_1, 38164, 2, 1008, 1008), 'b3').
name(v_prod_3low_647, simple_name, math_arrays_1_code135, name, range(math_arrays_1, 38189, 8, 1009, 1009), 'prod3Low').
name(v_a_3low_642, simple_name, math_arrays_1_expr114, left_operand, range(math_arrays_1, 38202, 5, 1009, 1009), 'a3Low').
name(v_b_3low_645, simple_name, math_arrays_1_expr114, right_operand, range(math_arrays_1, 38210, 5, 1009, 1009), 'b3Low').
name(v_prod_3high_646, simple_name, math_arrays_1_expr120, left_operand, range(math_arrays_1, 38221, 9, 1009, 1009), 'prod3High').
name(v_a_3high_641, simple_name, math_arrays_1_expr121, left_operand, range(math_arrays_1, 38233, 6, 1009, 1009), 'a3High').
name(v_b_3high_644, simple_name, math_arrays_1_expr121, right_operand, range(math_arrays_1, 38242, 6, 1009, 1009), 'b3High').
name(v_a_3low_642, simple_name, math_arrays_1_expr122, left_operand, range(math_arrays_1, 38252, 5, 1009, 1009), 'a3Low').
name(v_b_3high_644, simple_name, math_arrays_1_expr122, right_operand, range(math_arrays_1, 38260, 6, 1009, 1009), 'b3High').
name(v_a_3high_641, simple_name, math_arrays_1_expr123, left_operand, range(math_arrays_1, 38270, 6, 1009, 1009), 'a3High').
name(v_b_3low_645, simple_name, math_arrays_1_expr123, right_operand, range(math_arrays_1, 38279, 5, 1009, 1009), 'b3Low').
name(v_s_12high_648, simple_name, math_arrays_1_code138, name, range(math_arrays_1, 38356, 7, 1012, 1012), 's12High').
name(v_prod_1high_630, simple_name, math_arrays_1_expr124, left_operand, range(math_arrays_1, 38369, 9, 1012, 1012), 'prod1High').
name(v_prod_2high_638, simple_name, math_arrays_1_expr124, right_operand, range(math_arrays_1, 38381, 9, 1012, 1012), 'prod2High').
name(v_s_12prime_649, simple_name, math_arrays_1_code141, name, range(math_arrays_1, 38413, 8, 1013, 1013), 's12Prime').
name(v_s_12high_648, simple_name, math_arrays_1_expr125, left_operand, range(math_arrays_1, 38426, 7, 1013, 1013), 's12High').
name(v_prod_2high_638, simple_name, math_arrays_1_expr125, right_operand, range(math_arrays_1, 38436, 9, 1013, 1013), 'prod2High').
name(v_s_12low_650, simple_name, math_arrays_1_code144, name, range(math_arrays_1, 38468, 6, 1014, 1014), 's12Low').
name(v_prod_2high_638, simple_name, math_arrays_1_expr128, left_operand, range(math_arrays_1, 38482, 9, 1014, 1014), 'prod2High').
name(v_s_12high_648, simple_name, math_arrays_1_expr130, left_operand, range(math_arrays_1, 38495, 7, 1014, 1014), 's12High').
name(v_s_12prime_649, simple_name, math_arrays_1_expr130, right_operand, range(math_arrays_1, 38505, 8, 1014, 1014), 's12Prime').
name(v_prod_1high_630, simple_name, math_arrays_1_expr132, left_operand, range(math_arrays_1, 38519, 9, 1014, 1014), 'prod1High').
name(v_s_12prime_649, simple_name, math_arrays_1_expr132, right_operand, range(math_arrays_1, 38531, 8, 1014, 1014), 's12Prime').
name(v_s_123high_651, simple_name, math_arrays_1_code147, name, range(math_arrays_1, 38621, 8, 1017, 1017), 's123High').
name(v_s_12high_648, simple_name, math_arrays_1_expr133, left_operand, range(math_arrays_1, 38634, 7, 1017, 1017), 's12High').
name(v_prod_3high_646, simple_name, math_arrays_1_expr133, right_operand, range(math_arrays_1, 38644, 9, 1017, 1017), 'prod3High').
name(v_s_123prime_652, simple_name, math_arrays_1_code150, name, range(math_arrays_1, 38676, 9, 1018, 1018), 's123Prime').
name(v_s_123high_651, simple_name, math_arrays_1_expr134, left_operand, range(math_arrays_1, 38689, 8, 1018, 1018), 's123High').
name(v_prod_3high_646, simple_name, math_arrays_1_expr134, right_operand, range(math_arrays_1, 38700, 9, 1018, 1018), 'prod3High').
name(v_s_123low_653, simple_name, math_arrays_1_code153, name, range(math_arrays_1, 38732, 7, 1019, 1019), 's123Low').
name(v_prod_3high_646, simple_name, math_arrays_1_expr137, left_operand, range(math_arrays_1, 38746, 9, 1019, 1019), 'prod3High').
name(v_s_123high_651, simple_name, math_arrays_1_expr139, left_operand, range(math_arrays_1, 38759, 8, 1019, 1019), 's123High').
name(v_s_123prime_652, simple_name, math_arrays_1_expr139, right_operand, range(math_arrays_1, 38770, 9, 1019, 1019), 's123Prime').
name(v_s_12high_648, simple_name, math_arrays_1_expr141, left_operand, range(math_arrays_1, 38785, 7, 1019, 1019), 's12High').
name(v_s_123prime_652, simple_name, math_arrays_1_expr141, right_operand, range(math_arrays_1, 38795, 9, 1019, 1019), 's123Prime').
name(v_result_654, simple_name, math_arrays_1_code155, name, range(math_arrays_1, 38977, 6, 1023, 1023), 'result').
name(v_s_123high_651, simple_name, math_arrays_1_expr142, left_operand, range(math_arrays_1, 38986, 8, 1023, 1023), 's123High').
name(v_prod_1low_631, simple_name, math_arrays_1_expr144, left_operand, range(math_arrays_1, 38998, 8, 1023, 1023), 'prod1Low').
name(v_prod_2low_639, simple_name, math_arrays_1_expr144, right_operand, range(math_arrays_1, 39009, 8, 1023, 1023), 'prod2Low').
name(v_prod_3low_647, simple_name, math_arrays_1_expr144, (extended_operands, 0), range(math_arrays_1, 39020, 8, 1023, 1023), 'prod3Low').
name(v_s_12low_650, simple_name, math_arrays_1_expr144, (extended_operands, 1), range(math_arrays_1, 39031, 6, 1023, 1023), 's12Low').
name(v_s_123low_653, simple_name, math_arrays_1_expr144, (extended_operands, 2), range(math_arrays_1, 39040, 7, 1023, 1023), 's123Low').
name(t_double_1, simple_name, math_arrays_1_expr145, expression, range(math_arrays_1, 39063, 6, 1025, 1025), 'Double').
name(m_is_na_n_377, simple_name, math_arrays_1_expr145, name, range(math_arrays_1, 39070, 5, 1025, 1025), 'isNaN').
name(v_result_654, simple_name, math_arrays_1_expr145, (arguments, 0), range(math_arrays_1, 39076, 6, 1025, 1025), 'result').
name(v_result_654, simple_name, math_arrays_1_stmt55, expression, range(math_arrays_1, 39329, 6, 1031, 1031), 'result').
%abstract_region_1 - org.apache.commons.math3.geometry.partitioning.AbstractRegion
name(m_abstract_region_3, simple_name, abstract_region_1_code3, name, range(abstract_region_1, 2510, 14, 67, 67), 'AbstractRegion').
name(p_tree_298, simple_name, abstract_region_1_code5, name, range(abstract_region_1, 2542, 4, 67, 67), 'tree').
name(f_tree_299, simple_name, abstract_region_1_expr2, name, range(abstract_region_1, 2563, 4, 68, 68), 'tree').
name(p_tree_298, simple_name, abstract_region_1_expr1, right_hand_side, range(abstract_region_1, 2570, 4, 68, 68), 'tree').
%sub_line_2 - org.apache.commons.math3.geometry.euclidean.twod.SubLine
name(p_start_231, simple_name, sub_line_2_expr2, (arguments, 0), range(sub_line_2, 2472, 5, 56, 56), 'start').
name(p_end_232, simple_name, sub_line_2_expr2, (arguments, 1), range(sub_line_2, 2479, 3, 56, 56), 'end').
name(m_build_interval_set_190, simple_name, sub_line_2_expr3, name, range(sub_line_2, 2485, 16, 56, 56), 'buildIntervalSet').
name(p_start_231, simple_name, sub_line_2_expr3, (arguments, 0), range(sub_line_2, 2502, 5, 56, 56), 'start').
name(p_end_232, simple_name, sub_line_2_expr3, (arguments, 1), range(sub_line_2, 2509, 3, 56, 56), 'end').
name(v_line_1_236, simple_name, sub_line_2_code7, name, range(sub_line_2, 5184, 5, 113, 113), 'line1').
name(m_get_hyperplane_194, simple_name, sub_line_2_expr5, name, range(sub_line_2, 5199, 13, 113, 113), 'getHyperplane').
name(v_line_2_237, simple_name, sub_line_2_code10, name, range(sub_line_2, 5229, 5, 114, 114), 'line2').
name(p_sub_line_234, simple_name, sub_line_2_expr7, expression, range(sub_line_2, 5244, 7, 114, 114), 'subLine').
name(m_get_hyperplane_194, simple_name, sub_line_2_expr7, name, range(sub_line_2, 5252, 13, 114, 114), 'getHyperplane').
name(v_v_2d_238, simple_name, sub_line_2_code13, name, range(sub_line_2, 5340, 3, 117, 117), 'v2D').
name(v_line_1_236, simple_name, sub_line_2_expr8, expression, range(sub_line_2, 5346, 5, 117, 117), 'line1').
name(m_intersection_167, simple_name, sub_line_2_expr8, name, range(sub_line_2, 5352, 12, 117, 117), 'intersection').
name(v_line_2_237, simple_name, sub_line_2_expr8, (arguments, 0), range(sub_line_2, 5365, 5, 117, 117), 'line2').
name(v_loc_1_239, simple_name, sub_line_2_code15, name, range(sub_line_2, 5457, 4, 120, 120), 'loc1').
name(m_get_remaining_region_196, simple_name, sub_line_2_expr11, name, range(sub_line_2, 5464, 18, 120, 120), 'getRemainingRegion').
name(m_check_point_195, simple_name, sub_line_2_expr9, name, range(sub_line_2, 5485, 10, 120, 120), 'checkPoint').
name(v_line_1_236, simple_name, sub_line_2_expr10, expression, range(sub_line_2, 5496, 5, 120, 120), 'line1').
name(m_to_sub_space_165, simple_name, sub_line_2_expr10, name, range(sub_line_2, 5502, 10, 120, 120), 'toSubSpace').
name(v_v_2d_238, simple_name, sub_line_2_expr10, (arguments, 0), range(sub_line_2, 5513, 3, 120, 120), 'v2D').
name(v_line_242, simple_name, sub_line_2_code19, name, range(sub_line_2, 6184, 4, 139, 139), 'line').
name(p_start_240, simple_name, sub_line_2_expr12, (arguments, 0), range(sub_line_2, 6200, 5, 139, 139), 'start').
name(p_end_241, simple_name, sub_line_2_expr12, (arguments, 1), range(sub_line_2, 6207, 3, 139, 139), 'end').
name(v_line_242, simple_name, sub_line_2_expr16, expression, range(sub_line_2, 6245, 4, 140, 140), 'line').
name(m_to_sub_space_165, simple_name, sub_line_2_expr16, name, range(sub_line_2, 6250, 10, 140, 140), 'toSubSpace').
name(p_start_240, simple_name, sub_line_2_expr16, (arguments, 0), range(sub_line_2, 6261, 5, 140, 140), 'start').
name(m_get_x_35, simple_name, sub_line_2_expr14, name, range(sub_line_2, 6268, 4, 140, 140), 'getX').
%vector2_d_1 - org.apache.commons.math3.geometry.euclidean.twod.Vector2D
name(f_zero_249, simple_name, vector2_d_1_code8, name, range(vector2_d_1, 1557, 4, 37, 37), 'ZERO').
name(f_na_n_250, simple_name, vector2_d_1_code15, name, range(vector2_d_1, 1710, 3, 41, 41), 'NaN').
name(t_double_1, simple_name, q_na_n_24, qualifier, range(vector2_d_1, 1729, 6, 41, 41), 'Double').
name(q_na_n_24, qualified_name, vector2_d_1_expr2, (arguments, 0), range(vector2_d_1, 1729, 10, 41, 41), 'Double.NaN').
name(t_double_1, simple_name, q_na_n_24, qualifier, range(vector2_d_1, 1741, 6, 41, 41), 'Double').
name(q_na_n_24, qualified_name, vector2_d_1_expr2, (arguments, 1), range(vector2_d_1, 1741, 10, 41, 41), 'Double.NaN').
name(f_positive_infinity_251, simple_name, vector2_d_1_code22, name, range(vector2_d_1, 1894, 17, 45, 45), 'POSITIVE_INFINITY').
name(f_negative_infinity_252, simple_name, vector2_d_1_code28, name, range(vector2_d_1, 2089, 17, 49, 49), 'NEGATIVE_INFINITY').
name(m_vector2_d_213, simple_name, vector2_d_1_code29, name, range(vector2_d_1, 2564, 8, 68, 68), 'Vector2D').
name(p_x_253, simple_name, vector2_d_1_code31, name, range(vector2_d_1, 2580, 1, 68, 68), 'x').
name(p_y_254, simple_name, vector2_d_1_code33, name, range(vector2_d_1, 2590, 1, 68, 68), 'y').
name(f_x_255, simple_name, vector2_d_1_expr6, name, range(vector2_d_1, 2608, 1, 69, 69), 'x').
name(p_x_253, simple_name, vector2_d_1_expr5, right_hand_side, range(vector2_d_1, 2612, 1, 69, 69), 'x').
name(f_y_256, simple_name, vector2_d_1_expr9, name, range(vector2_d_1, 2628, 1, 70, 70), 'y').
name(p_y_254, simple_name, vector2_d_1_expr8, right_hand_side, range(vector2_d_1, 2632, 1, 70, 70), 'y').
name(f_x_255, simple_name, vector2_d_1_stmt3, expression, range(vector2_d_1, 5469, 1, 150, 150), 'x').
name(f_y_256, simple_name, vector2_d_1_stmt4, expression, range(vector2_d_1, 5645, 1, 158, 158), 'y').
%sub_line_1 - org.apache.commons.math3.geometry.euclidean.threed.SubLine
name(m_sub_line_87, simple_name, sub_line_1_code3, name, range(sub_line_1, 1670, 7, 44, 44), 'SubLine').
name(p_line_100, simple_name, sub_line_1_code5, name, range(sub_line_1, 1689, 4, 44, 44), 'line').
name(p_remaining_region_101, simple_name, sub_line_1_code8, name, range(sub_line_1, 1714, 15, 44, 44), 'remainingRegion').
name(f_line_102, simple_name, sub_line_1_expr2, name, range(sub_line_1, 1746, 4, 45, 45), 'line').
name(p_line_100, simple_name, sub_line_1_expr1, right_hand_side, range(sub_line_1, 1764, 4, 45, 45), 'line').
name(f_remaining_region_103, simple_name, sub_line_1_expr5, name, range(sub_line_1, 1783, 15, 46, 46), 'remainingRegion').
name(p_remaining_region_101, simple_name, sub_line_1_expr4, right_hand_side, range(sub_line_1, 1801, 15, 46, 46), 'remainingRegion').
name(p_start_104, simple_name, sub_line_1_expr8, (arguments, 0), range(sub_line_1, 2139, 5, 56, 56), 'start').
name(p_end_105, simple_name, sub_line_1_expr8, (arguments, 1), range(sub_line_1, 2146, 3, 56, 56), 'end').
name(m_build_interval_set_89, simple_name, sub_line_1_expr9, name, range(sub_line_1, 2152, 16, 56, 56), 'buildIntervalSet').
name(p_start_104, simple_name, sub_line_1_expr9, (arguments, 0), range(sub_line_1, 2169, 5, 56, 56), 'start').
name(p_end_105, simple_name, sub_line_1_expr9, (arguments, 1), range(sub_line_1, 2176, 3, 56, 56), 'end').
name(v_v_1d_109, simple_name, sub_line_1_code15, name, range(sub_line_1, 4912, 3, 113, 113), 'v1D').
name(f_line_102, simple_name, sub_line_1_expr10, expression, range(sub_line_1, 4918, 4, 113, 113), 'line').
name(m_intersection_85, simple_name, sub_line_1_expr10, name, range(sub_line_1, 4923, 12, 113, 113), 'intersection').
name(p_sub_line_107, simple_name, q_line_5, qualifier, range(sub_line_1, 4936, 7, 113, 113), 'subLine').
name(q_line_5, qualified_name, sub_line_1_expr10, (arguments, 0), range(sub_line_1, 4936, 12, 113, 113), 'subLine.line').
name(v_loc_1_110, simple_name, sub_line_1_code17, name, range(sub_line_1, 5035, 4, 116, 116), 'loc1').
name(f_remaining_region_103, simple_name, sub_line_1_expr11, expression, range(sub_line_1, 5042, 15, 116, 116), 'remainingRegion').
name(m_check_point_93, simple_name, sub_line_1_expr11, name, range(sub_line_1, 5058, 10, 116, 116), 'checkPoint').
name(f_line_102, simple_name, sub_line_1_expr12, expression, range(sub_line_1, 5069, 4, 116, 116), 'line').
name(m_to_sub_space_77, simple_name, sub_line_1_expr12, name, range(sub_line_1, 5074, 10, 116, 116), 'toSubSpace').
name(v_v_1d_109, simple_name, sub_line_1_expr12, (arguments, 0), range(sub_line_1, 5085, 3, 116, 116), 'v1D').
name(v_line_113, simple_name, sub_line_1_code21, name, range(sub_line_1, 5873, 4, 137, 137), 'line').
name(p_start_111, simple_name, sub_line_1_expr13, (arguments, 0), range(sub_line_1, 5889, 5, 137, 137), 'start').
name(p_end_112, simple_name, sub_line_1_expr13, (arguments, 1), range(sub_line_1, 5896, 3, 137, 137), 'end').
name(v_line_113, simple_name, sub_line_1_expr17, expression, range(sub_line_1, 5934, 4, 138, 138), 'line').
name(m_to_sub_space_77, simple_name, sub_line_1_expr17, name, range(sub_line_1, 5939, 10, 138, 138), 'toSubSpace').
name(p_start_111, simple_name, sub_line_1_expr17, (arguments, 0), range(sub_line_1, 5950, 5, 138, 138), 'start').
name(m_get_x_35, simple_name, sub_line_1_expr15, name, range(sub_line_1, 5957, 4, 138, 138), 'getX').
%fast_math_1 - org.apache.commons.math3.util.FastMath
name(f_log_max_value_378, simple_name, fast_math_1_code8, name, range(fast_math_1, 4252, 13, 97, 97), 'LOG_MAX_VALUE').
name(t_strict_math_8, simple_name, fast_math_1_expr1, expression, range(fast_math_1, 4268, 10, 97, 97), 'StrictMath').
name(m_log_313, simple_name, fast_math_1_expr1, name, range(fast_math_1, 4279, 3, 97, 97), 'log').
name(q_max_value_26, qualified_name, fast_math_1_expr1, (arguments, 0), range(fast_math_1, 4283, 16, 97, 97), 'Double.MAX_VALUE').
name(t_double_1, simple_name, q_max_value_26, qualifier, range(fast_math_1, 4283, 6, 97, 97), 'Double').
name(f_ln_quick_coef_379, simple_name, fast_math_1_code14, name, range(fast_math_1, 4954, 13, 115, 115), 'LN_QUICK_COEF').
name(f_ln_hi_prec_coef_380, simple_name, fast_math_1_code22, name, range(fast_math_1, 5507, 15, 128, 128), 'LN_HI_PREC_COEF').
name(f_sine_table_a_381, simple_name, fast_math_1_code30, name, range(fast_math_1, 6022, 12, 141, 141), 'SINE_TABLE_A').
name(f_sine_table_b_382, simple_name, fast_math_1_code37, name, range(fast_math_1, 6527, 12, 160, 160), 'SINE_TABLE_B').
name(f_cosine_table_a_383, simple_name, fast_math_1_code44, name, range(fast_math_1, 7064, 14, 179, 179), 'COSINE_TABLE_A').
name(f_cosine_table_b_384, simple_name, fast_math_1_code51, name, range(fast_math_1, 7577, 14, 198, 198), 'COSINE_TABLE_B').
name(f_tangent_table_a_385, simple_name, fast_math_1_code58, name, range(fast_math_1, 8139, 15, 218, 218), 'TANGENT_TABLE_A').
name(f_tangent_table_b_386, simple_name, fast_math_1_code65, name, range(fast_math_1, 8666, 15, 237, 237), 'TANGENT_TABLE_B').
name(f_recip_2pi_387, simple_name, fast_math_1_code72, name, range(fast_math_1, 9230, 9, 256, 256), 'RECIP_2PI').
name(f_pi_o_4_bits_388, simple_name, fast_math_1_code82, name, range(fast_math_1, 10104, 11, 277, 277), 'PI_O_4_BITS').
name(f_eighths_389, simple_name, fast_math_1_code92, name, range(fast_math_1, 10401, 7, 285, 285), 'EIGHTHS').
name(f_cbrttwo_390, simple_name, fast_math_1_code99, name, range(fast_math_1, 10565, 7, 288, 288), 'CBRTTWO').
name(t_math_9, simple_name, fast_math_1_expr16, expression, range(fast_math_1, 14437, 4, 385, 385), 'Math').
name(m_sqrt_316, simple_name, fast_math_1_expr16, name, range(fast_math_1, 14442, 4, 385, 385), 'sqrt').
name(p_a_392, simple_name, fast_math_1_expr16, (arguments, 0), range(fast_math_1, 14447, 1, 385, 385), 'a').
name(v_x_2_422, simple_name, fast_math_1_code104, name, range(fast_math_1, 54376, 2, 1680, 1680), 'x2').
name(p_x_421, simple_name, fast_math_1_expr17, left_operand, range(fast_math_1, 54381, 1, 1680, 1680), 'x').
name(p_x_421, simple_name, fast_math_1_expr17, right_operand, range(fast_math_1, 54383, 1, 1680, 1680), 'x').
name(v_p_423, simple_name, fast_math_1_code106, name, range(fast_math_1, 54402, 1, 1682, 1682), 'p').
name(v_p_423, simple_name, fast_math_1_expr18, left_hand_side, range(fast_math_1, 54437, 1, 1683, 1683), 'p').
name(v_p_423, simple_name, fast_math_1_expr20, left_operand, range(fast_math_1, 54441, 1, 1683, 1683), 'p').
name(v_x_2_422, simple_name, fast_math_1_expr20, right_operand, range(fast_math_1, 54445, 2, 1683, 1683), 'x2').
name(v_p_423, simple_name, fast_math_1_expr22, left_hand_side, range(fast_math_1, 54482, 1, 1684, 1684), 'p').
name(v_p_423, simple_name, fast_math_1_expr24, left_operand, range(fast_math_1, 54486, 1, 1684, 1684), 'p').
name(v_x_2_422, simple_name, fast_math_1_expr24, right_operand, range(fast_math_1, 54490, 2, 1684, 1684), 'x2').
name(v_p_423, simple_name, fast_math_1_expr25, left_hand_side, range(fast_math_1, 54525, 1, 1685, 1685), 'p').
name(v_p_423, simple_name, fast_math_1_expr27, left_operand, range(fast_math_1, 54529, 1, 1685, 1685), 'p').
name(v_x_2_422, simple_name, fast_math_1_expr27, right_operand, range(fast_math_1, 54533, 2, 1685, 1685), 'x2').
name(v_p_423, simple_name, fast_math_1_expr29, left_hand_side, range(fast_math_1, 54605, 1, 1688, 1688), 'p').
name(v_p_423, simple_name, fast_math_1_expr30, left_operand, range(fast_math_1, 54609, 1, 1688, 1688), 'p').
name(v_x_2_422, simple_name, fast_math_1_expr30, right_operand, range(fast_math_1, 54613, 2, 1688, 1688), 'x2').
name(p_x_421, simple_name, fast_math_1_expr30, (extended_operands, 0), range(fast_math_1, 54618, 1, 1688, 1688), 'x').
name(v_p_423, simple_name, fast_math_1_stmt8, expression, range(fast_math_1, 54637, 1, 1690, 1690), 'p').
name(v_x_2_425, simple_name, fast_math_1_code109, name, range(fast_math_1, 54891, 2, 1700, 1700), 'x2').
name(p_x_424, simple_name, fast_math_1_expr31, left_operand, range(fast_math_1, 54896, 1, 1700, 1700), 'x').
name(p_x_424, simple_name, fast_math_1_expr31, right_operand, range(fast_math_1, 54898, 1, 1700, 1700), 'x').
name(v_p_426, simple_name, fast_math_1_code111, name, range(fast_math_1, 54917, 1, 1702, 1702), 'p').
name(v_p_426, simple_name, fast_math_1_expr32, left_hand_side, range(fast_math_1, 54951, 1, 1703, 1703), 'p').
name(v_p_426, simple_name, fast_math_1_expr34, left_operand, range(fast_math_1, 54955, 1, 1703, 1703), 'p').
name(v_x_2_425, simple_name, fast_math_1_expr34, right_operand, range(fast_math_1, 54959, 2, 1703, 1703), 'x2').
name(v_p_426, simple_name, fast_math_1_expr36, left_hand_side, range(fast_math_1, 54996, 1, 1704, 1704), 'p').
name(v_p_426, simple_name, fast_math_1_expr38, left_operand, range(fast_math_1, 55000, 1, 1704, 1704), 'p').
name(v_x_2_425, simple_name, fast_math_1_expr38, right_operand, range(fast_math_1, 55004, 2, 1704, 1704), 'x2').
name(v_p_426, simple_name, fast_math_1_expr39, left_hand_side, range(fast_math_1, 55039, 1, 1705, 1705), 'p').
name(v_p_426, simple_name, fast_math_1_expr41, left_operand, range(fast_math_1, 55043, 1, 1705, 1705), 'p').
name(v_x_2_425, simple_name, fast_math_1_expr41, right_operand, range(fast_math_1, 55047, 2, 1705, 1705), 'x2').
name(v_p_426, simple_name, fast_math_1_expr43, left_hand_side, range(fast_math_1, 55082, 1, 1706, 1706), 'p').
name(v_x_2_425, simple_name, fast_math_1_expr43, right_hand_side, range(fast_math_1, 55087, 2, 1706, 1706), 'x2').
name(v_p_426, simple_name, fast_math_1_stmt15, expression, range(fast_math_1, 55107, 1, 1708, 1708), 'p').
name(v_idx_429, simple_name, fast_math_1_code114, name, range(fast_math_1, 55467, 3, 1719, 1719), 'idx').
name(p_xa_427, simple_name, fast_math_1_expr48, left_operand, range(fast_math_1, 55481, 2, 1719, 1719), 'xa').
name(v_epsilon_430, simple_name, fast_math_1_code118, name, range(fast_math_1, 55520, 7, 1720, 1720), 'epsilon').
name(p_xa_427, simple_name, fast_math_1_expr49, left_operand, range(fast_math_1, 55530, 2, 1720, 1720), 'xa').
name(f_eighths_389, simple_name, fast_math_1_expr50, array, range(fast_math_1, 55535, 7, 1720, 1720), 'EIGHTHS').
name(v_idx_429, simple_name, fast_math_1_expr50, index, range(fast_math_1, 55543, 3, 1720, 1720), 'idx').
name(v_sint_a_431, simple_name, fast_math_1_code121, name, range(fast_math_1, 55609, 5, 1723, 1723), 'sintA').
name(f_sine_table_a_381, simple_name, fast_math_1_expr51, array, range(fast_math_1, 55617, 12, 1723, 1723), 'SINE_TABLE_A').
name(v_idx_429, simple_name, fast_math_1_expr51, index, range(fast_math_1, 55630, 3, 1723, 1723), 'idx').
name(v_sint_b_432, simple_name, fast_math_1_code124, name, range(fast_math_1, 55657, 5, 1724, 1724), 'sintB').
name(f_sine_table_b_382, simple_name, fast_math_1_expr52, array, range(fast_math_1, 55665, 12, 1724, 1724), 'SINE_TABLE_B').
name(v_idx_429, simple_name, fast_math_1_expr52, index, range(fast_math_1, 55678, 3, 1724, 1724), 'idx').
name(v_cost_a_433, simple_name, fast_math_1_code127, name, range(fast_math_1, 55705, 5, 1725, 1725), 'costA').
name(f_cosine_table_a_383, simple_name, fast_math_1_expr53, array, range(fast_math_1, 55713, 14, 1725, 1725), 'COSINE_TABLE_A').
name(v_idx_429, simple_name, fast_math_1_expr53, index, range(fast_math_1, 55728, 3, 1725, 1725), 'idx').
name(v_cost_b_434, simple_name, fast_math_1_code130, name, range(fast_math_1, 55755, 5, 1726, 1726), 'costB').
name(f_cosine_table_b_384, simple_name, fast_math_1_expr54, array, range(fast_math_1, 55763, 14, 1726, 1726), 'COSINE_TABLE_B').
name(v_idx_429, simple_name, fast_math_1_expr54, index, range(fast_math_1, 55778, 3, 1726, 1726), 'idx').
name(v_sin_eps_a_435, simple_name, fast_math_1_code132, name, range(fast_math_1, 55857, 7, 1729, 1729), 'sinEpsA').
name(v_epsilon_430, simple_name, fast_math_1_code132, initializer, range(fast_math_1, 55867, 7, 1729, 1729), 'epsilon').
name(v_sin_eps_b_436, simple_name, fast_math_1_code134, name, range(fast_math_1, 55891, 7, 1730, 1730), 'sinEpsB').
name(m_poly_sine_339, simple_name, fast_math_1_expr55, name, range(fast_math_1, 55901, 8, 1730, 1730), 'polySine').
name(v_epsilon_430, simple_name, fast_math_1_expr55, (arguments, 0), range(fast_math_1, 55910, 7, 1730, 1730), 'epsilon').
name(v_cos_eps_a_437, simple_name, fast_math_1_code137, name, range(fast_math_1, 55941, 7, 1731, 1731), 'cosEpsA').
name(v_cos_eps_b_438, simple_name, fast_math_1_code140, name, range(fast_math_1, 55977, 7, 1732, 1732), 'cosEpsB').
name(m_poly_cosine_340, simple_name, fast_math_1_expr56, name, range(fast_math_1, 55987, 10, 1732, 1732), 'polyCosine').
name(v_epsilon_430, simple_name, fast_math_1_expr56, (arguments, 0), range(fast_math_1, 55998, 7, 1732, 1732), 'epsilon').
name(v_temp_439, simple_name, fast_math_1_code143, name, range(fast_math_1, 56069, 4, 1735, 1735), 'temp').
name(v_sin_eps_a_435, simple_name, fast_math_1_expr57, left_operand, range(fast_math_1, 56076, 7, 1735, 1735), 'sinEpsA').
name(f_hex_40000000_440, simple_name, fast_math_1_expr57, right_operand, range(fast_math_1, 56086, 12, 1735, 1735), 'HEX_40000000').
name(v_temp_2_441, simple_name, fast_math_1_code145, name, range(fast_math_1, 56115, 5, 1736, 1736), 'temp2').
name(v_sin_eps_a_435, simple_name, fast_math_1_expr60, left_operand, range(fast_math_1, 56124, 7, 1736, 1736), 'sinEpsA').
name(v_temp_439, simple_name, fast_math_1_expr60, right_operand, range(fast_math_1, 56134, 4, 1736, 1736), 'temp').
name(v_temp_439, simple_name, fast_math_1_expr58, right_operand, range(fast_math_1, 56142, 4, 1736, 1736), 'temp').
name(v_sin_eps_b_436, simple_name, fast_math_1_expr61, left_hand_side, range(fast_math_1, 56156, 7, 1737, 1737), 'sinEpsB').
name(v_sin_eps_a_435, simple_name, fast_math_1_expr62, left_operand, range(fast_math_1, 56168, 7, 1737, 1737), 'sinEpsA').
name(v_temp_2_441, simple_name, fast_math_1_expr62, right_operand, range(fast_math_1, 56178, 5, 1737, 1737), 'temp2').
name(v_sin_eps_a_435, simple_name, fast_math_1_expr63, left_hand_side, range(fast_math_1, 56193, 7, 1738, 1738), 'sinEpsA').
name(v_temp_2_441, simple_name, fast_math_1_expr63, right_hand_side, range(fast_math_1, 56203, 5, 1738, 1738), 'temp2').
name(v_a_442, simple_name, fast_math_1_code147, name, range(fast_math_1, 57102, 1, 1764, 1764), 'a').
name(v_b_443, simple_name, fast_math_1_code149, name, range(fast_math_1, 57124, 1, 1765, 1765), 'b').
name(v_t_444, simple_name, fast_math_1_code151, name, range(fast_math_1, 57147, 1, 1767, 1767), 't').
name(v_sint_a_431, simple_name, fast_math_1_code151, initializer, range(fast_math_1, 57151, 5, 1767, 1767), 'sintA').
name(v_c_445, simple_name, fast_math_1_code153, name, range(fast_math_1, 57173, 1, 1768, 1768), 'c').
name(v_a_442, simple_name, fast_math_1_expr64, left_operand, range(fast_math_1, 57177, 1, 1768, 1768), 'a').
name(v_t_444, simple_name, fast_math_1_expr64, right_operand, range(fast_math_1, 57181, 1, 1768, 1768), 't').
name(v_d_446, simple_name, fast_math_1_code155, name, range(fast_math_1, 57199, 1, 1769, 1769), 'd').
name(v_c_445, simple_name, fast_math_1_expr67, left_operand, range(fast_math_1, 57205, 1, 1769, 1769), 'c').
name(v_a_442, simple_name, fast_math_1_expr67, right_operand, range(fast_math_1, 57209, 1, 1769, 1769), 'a').
name(v_t_444, simple_name, fast_math_1_expr67, (extended_operands, 0), range(fast_math_1, 57213, 1, 1769, 1769), 't').
name(v_a_442, simple_name, fast_math_1_expr68, left_hand_side, range(fast_math_1, 57225, 1, 1770, 1770), 'a').
name(v_c_445, simple_name, fast_math_1_expr68, right_hand_side, range(fast_math_1, 57229, 1, 1770, 1770), 'c').
name(v_b_443, simple_name, fast_math_1_expr69, left_hand_side, range(fast_math_1, 57240, 1, 1771, 1771), 'b').
name(v_b_443, simple_name, fast_math_1_expr70, left_operand, range(fast_math_1, 57244, 1, 1771, 1771), 'b').
name(v_d_446, simple_name, fast_math_1_expr70, right_operand, range(fast_math_1, 57248, 1, 1771, 1771), 'd').
name(v_t_444, simple_name, fast_math_1_expr71, left_hand_side, range(fast_math_1, 57260, 1, 1773, 1773), 't').
name(v_cost_a_433, simple_name, fast_math_1_expr72, left_operand, range(fast_math_1, 57264, 5, 1773, 1773), 'costA').
name(v_sin_eps_a_435, simple_name, fast_math_1_expr72, right_operand, range(fast_math_1, 57272, 7, 1773, 1773), 'sinEpsA').
name(v_c_445, simple_name, fast_math_1_expr73, left_hand_side, range(fast_math_1, 57289, 1, 1774, 1774), 'c').
name(v_a_442, simple_name, fast_math_1_expr74, left_operand, range(fast_math_1, 57293, 1, 1774, 1774), 'a').
name(v_t_444, simple_name, fast_math_1_expr74, right_operand, range(fast_math_1, 57297, 1, 1774, 1774), 't').
name(v_d_446, simple_name, fast_math_1_expr75, left_hand_side, range(fast_math_1, 57308, 1, 1775, 1775), 'd').
name(v_c_445, simple_name, fast_math_1_expr78, left_operand, range(fast_math_1, 57314, 1, 1775, 1775), 'c').
name(v_a_442, simple_name, fast_math_1_expr78, right_operand, range(fast_math_1, 57318, 1, 1775, 1775), 'a').
name(v_t_444, simple_name, fast_math_1_expr78, (extended_operands, 0), range(fast_math_1, 57322, 1, 1775, 1775), 't').
name(v_a_442, simple_name, fast_math_1_expr79, left_hand_side, range(fast_math_1, 57334, 1, 1776, 1776), 'a').
name(v_c_445, simple_name, fast_math_1_expr79, right_hand_side, range(fast_math_1, 57338, 1, 1776, 1776), 'c').
name(v_b_443, simple_name, fast_math_1_expr80, left_hand_side, range(fast_math_1, 57349, 1, 1777, 1777), 'b').
name(v_b_443, simple_name, fast_math_1_expr81, left_operand, range(fast_math_1, 57353, 1, 1777, 1777), 'b').
name(v_d_446, simple_name, fast_math_1_expr81, right_operand, range(fast_math_1, 57357, 1, 1777, 1777), 'd').
name(v_b_443, simple_name, fast_math_1_expr82, left_hand_side, range(fast_math_1, 57369, 1, 1779, 1779), 'b').
name(v_b_443, simple_name, fast_math_1_expr84, left_operand, range(fast_math_1, 57373, 1, 1779, 1779), 'b').
name(v_sint_a_431, simple_name, fast_math_1_expr85, left_operand, range(fast_math_1, 57377, 5, 1779, 1779), 'sintA').
name(v_cos_eps_b_438, simple_name, fast_math_1_expr85, right_operand, range(fast_math_1, 57385, 7, 1779, 1779), 'cosEpsB').
name(v_cost_a_433, simple_name, fast_math_1_expr86, left_operand, range(fast_math_1, 57395, 5, 1779, 1779), 'costA').
name(v_sin_eps_b_436, simple_name, fast_math_1_expr86, right_operand, range(fast_math_1, 57403, 7, 1779, 1779), 'sinEpsB').
name(v_b_443, simple_name, fast_math_1_expr87, left_hand_side, range(fast_math_1, 57617, 1, 1794, 1794), 'b').
name(v_b_443, simple_name, fast_math_1_expr90, left_operand, range(fast_math_1, 57621, 1, 1794, 1794), 'b').
name(v_sint_b_432, simple_name, fast_math_1_expr90, right_operand, range(fast_math_1, 57625, 5, 1794, 1794), 'sintB').
name(v_cost_b_434, simple_name, fast_math_1_expr91, left_operand, range(fast_math_1, 57633, 5, 1794, 1794), 'costB').
name(v_sin_eps_a_435, simple_name, fast_math_1_expr91, right_operand, range(fast_math_1, 57641, 7, 1794, 1794), 'sinEpsA').
name(v_sint_b_432, simple_name, fast_math_1_expr92, left_operand, range(fast_math_1, 57651, 5, 1794, 1794), 'sintB').
name(v_cos_eps_b_438, simple_name, fast_math_1_expr92, right_operand, range(fast_math_1, 57659, 7, 1794, 1794), 'cosEpsB').
name(v_cost_b_434, simple_name, fast_math_1_expr93, left_operand, range(fast_math_1, 57669, 5, 1794, 1794), 'costB').
name(v_sin_eps_b_436, simple_name, fast_math_1_expr93, right_operand, range(fast_math_1, 57677, 7, 1794, 1794), 'sinEpsB').
name(p_xb_428, simple_name, fast_math_1_expr94, left_operand, range(fast_math_1, 58061, 2, 1821, 1821), 'xb').
name(v_t_444, simple_name, fast_math_1_expr95, left_hand_side, range(fast_math_1, 58086, 1, 1822, 1822), 't').
name(v_cost_a_433, simple_name, fast_math_1_expr101, left_operand, range(fast_math_1, 58092, 5, 1822, 1822), 'costA').
name(v_cost_b_434, simple_name, fast_math_1_expr101, right_operand, range(fast_math_1, 58100, 5, 1822, 1822), 'costB').
name(v_cos_eps_a_437, simple_name, fast_math_1_expr103, left_operand, range(fast_math_1, 58110, 7, 1822, 1822), 'cosEpsA').
name(v_cos_eps_b_438, simple_name, fast_math_1_expr103, right_operand, range(fast_math_1, 58120, 7, 1822, 1822), 'cosEpsB').
name(v_c_445, simple_name, fast_math_1_expr104, left_hand_side, range(fast_math_1, 58231, 1, 1824, 1824), 'c').
name(v_a_442, simple_name, fast_math_1_expr105, left_operand, range(fast_math_1, 58235, 1, 1824, 1824), 'a').
name(v_t_444, simple_name, fast_math_1_expr105, right_operand, range(fast_math_1, 58239, 1, 1824, 1824), 't').
name(v_d_446, simple_name, fast_math_1_expr106, left_hand_side, range(fast_math_1, 58254, 1, 1825, 1825), 'd').
name(v_c_445, simple_name, fast_math_1_expr109, left_operand, range(fast_math_1, 58260, 1, 1825, 1825), 'c').
name(v_a_442, simple_name, fast_math_1_expr109, right_operand, range(fast_math_1, 58264, 1, 1825, 1825), 'a').
name(v_t_444, simple_name, fast_math_1_expr109, (extended_operands, 0), range(fast_math_1, 58268, 1, 1825, 1825), 't').
name(v_a_442, simple_name, fast_math_1_expr110, left_hand_side, range(fast_math_1, 58284, 1, 1826, 1826), 'a').
name(v_c_445, simple_name, fast_math_1_expr110, right_hand_side, range(fast_math_1, 58288, 1, 1826, 1826), 'c').
name(v_b_443, simple_name, fast_math_1_expr111, left_hand_side, range(fast_math_1, 58303, 1, 1827, 1827), 'b').
name(v_b_443, simple_name, fast_math_1_expr112, left_operand, range(fast_math_1, 58307, 1, 1827, 1827), 'b').
name(v_d_446, simple_name, fast_math_1_expr112, right_operand, range(fast_math_1, 58311, 1, 1827, 1827), 'd').
name(v_result_447, simple_name, fast_math_1_expr113, left_hand_side, range(fast_math_1, 58333, 6, 1830, 1830), 'result').
name(v_a_442, simple_name, fast_math_1_expr114, left_operand, range(fast_math_1, 58342, 1, 1830, 1830), 'a').
name(v_b_443, simple_name, fast_math_1_expr114, right_operand, range(fast_math_1, 58346, 1, 1830, 1830), 'b').
name(v_result_447, simple_name, fast_math_1_stmt51, expression, range(fast_math_1, 58365, 6, 1832, 1832), 'result').
name(v_pi_2a_450, simple_name, fast_math_1_code159, name, range(fast_math_1, 58763, 4, 1843, 1843), 'pi2a').
name(v_pi_2b_451, simple_name, fast_math_1_code162, name, range(fast_math_1, 58811, 4, 1844, 1844), 'pi2b').
name(v_a_452, simple_name, fast_math_1_code165, name, range(fast_math_1, 58863, 1, 1846, 1846), 'a').
name(v_pi_2a_450, simple_name, fast_math_1_expr115, left_operand, range(fast_math_1, 58867, 4, 1846, 1846), 'pi2a').
name(p_xa_448, simple_name, fast_math_1_expr115, right_operand, range(fast_math_1, 58874, 2, 1846, 1846), 'xa').
name(v_b_453, simple_name, fast_math_1_code167, name, range(fast_math_1, 58893, 1, 1847, 1847), 'b').
name(v_a_452, simple_name, fast_math_1_expr119, left_operand, range(fast_math_1, 58899, 1, 1847, 1847), 'a').
name(v_pi_2a_450, simple_name, fast_math_1_expr119, right_operand, range(fast_math_1, 58903, 4, 1847, 1847), 'pi2a').
name(p_xa_448, simple_name, fast_math_1_expr118, right_operand, range(fast_math_1, 58910, 2, 1847, 1847), 'xa').
name(v_b_453, simple_name, fast_math_1_expr120, left_hand_side, range(fast_math_1, 58923, 1, 1848, 1848), 'b').
name(v_pi_2b_451, simple_name, fast_math_1_expr121, left_operand, range(fast_math_1, 58928, 4, 1848, 1848), 'pi2b').
name(p_xb_449, simple_name, fast_math_1_expr121, right_operand, range(fast_math_1, 58935, 2, 1848, 1848), 'xb').
name(m_sin_q_341, simple_name, fast_math_1_expr122, name, range(fast_math_1, 58955, 4, 1850, 1850), 'sinQ').
name(v_a_452, simple_name, fast_math_1_expr122, (arguments, 0), range(fast_math_1, 58960, 1, 1850, 1850), 'a').
name(v_b_453, simple_name, fast_math_1_expr122, (arguments, 1), range(fast_math_1, 58963, 1, 1850, 1850), 'b').
name(v_negative_460, simple_name, fast_math_1_code170, name, range(fast_math_1, 70121, 8, 2228, 2228), 'negative').
name(v_quadrant_461, simple_name, fast_math_1_code172, name, range(fast_math_1, 70151, 8, 2229, 2229), 'quadrant').
name(v_xb_462, simple_name, fast_math_1_code174, name, range(fast_math_1, 70199, 2, 2231, 2231), 'xb').
name(v_xa_463, simple_name, fast_math_1_expr123, left_hand_side, range(fast_math_1, 70265, 2, 2234, 2234), 'xa').
name(p_x_459, simple_name, fast_math_1_expr123, right_hand_side, range(fast_math_1, 70270, 1, 2234, 2234), 'x').
name(p_x_459, simple_name, fast_math_1_expr124, left_operand, range(fast_math_1, 70285, 1, 2235, 2235), 'x').
name(v_xa_463, simple_name, fast_math_1_expr125, left_operand, range(fast_math_1, 70415, 2, 2241, 2241), 'xa').
name(v_xa_463, simple_name, fast_math_1_expr127, left_operand, range(fast_math_1, 70601, 2, 2249, 2249), 'xa').
name(v_xa_463, simple_name, fast_math_1_expr127, right_operand, range(fast_math_1, 70607, 2, 2249, 2249), 'xa').
name(v_xa_463, simple_name, fast_math_1_expr128, left_operand, range(fast_math_1, 70613, 2, 2249, 2249), 'xa').
name(t_double_1, simple_name, q_positive_infinity_27, qualifier, range(fast_math_1, 70619, 6, 2249, 2249), 'Double').
name(q_positive_infinity_27, qualified_name, fast_math_1_expr128, right_operand, range(fast_math_1, 70619, 24, 2249, 2249), 'Double.POSITIVE_INFINITY').
name(v_xa_463, simple_name, fast_math_1_expr129, left_operand, range(fast_math_1, 70746, 2, 2254, 2254), 'xa').
name(v_xa_463, simple_name, fast_math_1_expr130, left_operand, range(fast_math_1, 71129, 2, 2263, 2263), 'xa').
name(v_negative_460, simple_name, fast_math_1_stmt67, expression, range(fast_math_1, 71331, 8, 2270, 2270), 'negative').
name(v_quadrant_461, simple_name, fast_math_1_stmt68, expression, range(fast_math_1, 71412, 8, 2274, 2274), 'quadrant').
name(m_sin_q_341, simple_name, fast_math_1_expr131, name, range(fast_math_1, 71467, 4, 2276, 2276), 'sinQ').
name(v_xa_463, simple_name, fast_math_1_expr131, (arguments, 0), range(fast_math_1, 71472, 2, 2276, 2276), 'xa').
name(v_xb_462, simple_name, fast_math_1_expr131, (arguments, 1), range(fast_math_1, 71476, 2, 2276, 2276), 'xb').
name(v_quadrant_465, simple_name, fast_math_1_code177, name, range(fast_math_1, 71875, 8, 2295, 2295), 'quadrant').
name(v_xa_466, simple_name, fast_math_1_code179, name, range(fast_math_1, 71952, 2, 2298, 2298), 'xa').
name(p_x_464, simple_name, fast_math_1_code179, initializer, range(fast_math_1, 71957, 1, 2298, 2298), 'x').
name(p_x_464, simple_name, fast_math_1_expr132, left_operand, range(fast_math_1, 71972, 1, 2299, 2299), 'x').
name(v_xa_466, simple_name, fast_math_1_expr134, left_operand, range(fast_math_1, 72026, 2, 2303, 2303), 'xa').
name(v_xa_466, simple_name, fast_math_1_expr134, right_operand, range(fast_math_1, 72032, 2, 2303, 2303), 'xa').
name(v_xa_466, simple_name, fast_math_1_expr135, left_operand, range(fast_math_1, 72038, 2, 2303, 2303), 'xa').
name(t_double_1, simple_name, q_positive_infinity_28, qualifier, range(fast_math_1, 72044, 6, 2303, 2303), 'Double').
name(q_positive_infinity_28, qualified_name, fast_math_1_expr135, right_operand, range(fast_math_1, 72044, 24, 2303, 2303), 'Double.POSITIVE_INFINITY').
name(v_xb_467, simple_name, fast_math_1_code181, name, range(fast_math_1, 72174, 2, 2308, 2308), 'xb').
name(v_xa_466, simple_name, fast_math_1_expr136, left_operand, range(fast_math_1, 72194, 2, 2309, 2309), 'xa').
name(v_xa_466, simple_name, fast_math_1_expr137, left_operand, range(fast_math_1, 72577, 2, 2318, 2318), 'xa').
name(v_quadrant_465, simple_name, fast_math_1_stmt77, expression, range(fast_math_1, 72851, 8, 2328, 2328), 'quadrant').
name(m_cos_q_342, simple_name, fast_math_1_expr138, name, range(fast_math_1, 72906, 4, 2330, 2330), 'cosQ').
name(v_xa_466, simple_name, fast_math_1_expr138, (arguments, 0), range(fast_math_1, 72911, 2, 2330, 2330), 'xa').
name(v_xb_467, simple_name, fast_math_1_expr138, (arguments, 1), range(fast_math_1, 72915, 2, 2330, 2330), 'xb').
name(p_x_474, simple_name, fast_math_1_expr140, left_operand, range(fast_math_1, 80332, 1, 2582, 2582), 'x').
name(p_x_474, simple_name, fast_math_1_expr140, right_operand, range(fast_math_1, 80337, 1, 2582, 2582), 'x').
name(p_y_473, simple_name, fast_math_1_expr141, left_operand, range(fast_math_1, 80342, 1, 2582, 2582), 'y').
name(p_y_473, simple_name, fast_math_1_expr141, right_operand, range(fast_math_1, 80347, 1, 2582, 2582), 'y').
name(p_y_473, simple_name, fast_math_1_expr142, left_operand, range(fast_math_1, 80406, 1, 2586, 2586), 'y').
name(p_y_473, simple_name, fast_math_1_expr143, left_operand, range(fast_math_1, 81084, 1, 2612, 2612), 'y').
name(t_double_1, simple_name, q_positive_infinity_28, qualifier, range(fast_math_1, 81089, 6, 2612, 2612), 'Double').
name(q_positive_infinity_28, qualified_name, fast_math_1_expr143, right_operand, range(fast_math_1, 81089, 24, 2612, 2612), 'Double.POSITIVE_INFINITY').
name(p_y_473, simple_name, fast_math_1_expr144, left_operand, range(fast_math_1, 81384, 1, 2624, 2624), 'y').
name(t_double_1, simple_name, q_negative_infinity_28, qualifier, range(fast_math_1, 81389, 6, 2624, 2624), 'Double').
name(q_negative_infinity_28, qualified_name, fast_math_1_expr144, right_operand, range(fast_math_1, 81389, 24, 2624, 2624), 'Double.NEGATIVE_INFINITY').
name(p_x_474, simple_name, fast_math_1_expr145, left_operand, range(fast_math_1, 81687, 1, 2636, 2636), 'x').
name(q_positive_infinity_29, qualified_name, fast_math_1_expr145, right_operand, range(fast_math_1, 81692, 24, 2636, 2636), 'Double.POSITIVE_INFINITY').
name(t_double_1, simple_name, q_positive_infinity_29, qualifier, range(fast_math_1, 81692, 6, 2636, 2636), 'Double').
name(p_x_474, simple_name, fast_math_1_expr146, left_operand, range(fast_math_1, 81903, 1, 2646, 2646), 'x').
name(t_double_1, simple_name, q_negative_infinity_29, qualifier, range(fast_math_1, 81908, 6, 2646, 2646), 'Double').
name(q_negative_infinity_29, qualified_name, fast_math_1_expr146, right_operand, range(fast_math_1, 81908, 24, 2646, 2646), 'Double.NEGATIVE_INFINITY').
name(p_x_474, simple_name, fast_math_1_expr147, left_operand, range(fast_math_1, 82197, 1, 2659, 2659), 'x').
name(p_y_473, simple_name, fast_math_1_expr149, left_operand, range(fast_math_1, 82223, 1, 2660, 2660), 'y').
name(p_y_473, simple_name, fast_math_1_expr151, right_operand, range(fast_math_1, 82236, 1, 2660, 2660), 'y').
name(p_y_473, simple_name, fast_math_1_expr153, left_operand, range(fast_math_1, 82316, 1, 2664, 2664), 'y').
name(p_y_473, simple_name, fast_math_1_expr155, right_operand, range(fast_math_1, 82329, 1, 2664, 2664), 'y').
name(t_math_9, simple_name, q_pi_29, qualifier, range(fast_math_1, 82362, 4, 2665, 2665), 'Math').
name(q_pi_29, qualified_name, fast_math_1_expr157, operand, range(fast_math_1, 82362, 7, 2665, 2665), 'Math.PI').
name(f_f_1_2_475, simple_name, fast_math_1_expr156, right_operand, range(fast_math_1, 82372, 5, 2665, 2665), 'F_1_2').
name(t_double_1, simple_name, fast_math_1_expr158, expression, range(fast_math_1, 91880, 6, 3025, 3025), 'Double').
name(m_long_bits_to_double_356, simple_name, fast_math_1_expr158, name, range(fast_math_1, 91887, 16, 3025, 3025), 'longBitsToDouble').
name(f_mask_non_sign_long_485, simple_name, fast_math_1_expr159, left_operand, range(fast_math_1, 91904, 18, 3025, 3025), 'MASK_NON_SIGN_LONG').
name(t_double_1, simple_name, fast_math_1_expr160, expression, range(fast_math_1, 91925, 6, 3025, 3025), 'Double').
name(m_double_to_raw_long_bits_357, simple_name, fast_math_1_expr160, name, range(fast_math_1, 91932, 19, 3025, 3025), 'doubleToRawLongBits').
name(p_x_484, simple_name, fast_math_1_expr160, (arguments, 0), range(fast_math_1, 91952, 1, 3025, 3025), 'x').
name(t_double_1, simple_name, fast_math_1_expr162, expression, range(fast_math_1, 110039, 6, 3574, 3574), 'Double').
name(m_is_infinite_7, simple_name, fast_math_1_expr162, name, range(fast_math_1, 110046, 10, 3574, 3574), 'isInfinite').
name(p_x_517, simple_name, fast_math_1_expr162, (arguments, 0), range(fast_math_1, 110057, 1, 3574, 3574), 'x').
name(t_double_1, simple_name, fast_math_1_expr163, expression, range(fast_math_1, 110063, 6, 3574, 3574), 'Double').
name(m_is_infinite_7, simple_name, fast_math_1_expr163, name, range(fast_math_1, 110070, 10, 3574, 3574), 'isInfinite').
name(p_y_518, simple_name, fast_math_1_expr163, (arguments, 0), range(fast_math_1, 110081, 1, 3574, 3574), 'y').
name(t_double_1, simple_name, fast_math_1_expr165, expression, range(fast_math_1, 110151, 6, 3576, 3576), 'Double').
name(m_is_na_n_377, simple_name, fast_math_1_expr165, name, range(fast_math_1, 110158, 5, 3576, 3576), 'isNaN').
name(p_x_517, simple_name, fast_math_1_expr165, (arguments, 0), range(fast_math_1, 110164, 1, 3576, 3576), 'x').
name(t_double_1, simple_name, fast_math_1_expr166, expression, range(fast_math_1, 110170, 6, 3576, 3576), 'Double').
name(m_is_na_n_377, simple_name, fast_math_1_expr166, name, range(fast_math_1, 110177, 5, 3576, 3576), 'isNaN').
name(p_y_518, simple_name, fast_math_1_expr166, (arguments, 0), range(fast_math_1, 110183, 1, 3576, 3576), 'y').
name(v_exp_x_519, simple_name, fast_math_1_code187, name, range(fast_math_1, 110260, 4, 3580, 3580), 'expX').
name(m_get_exponent_378, simple_name, fast_math_1_expr167, name, range(fast_math_1, 110267, 11, 3580, 3580), 'getExponent').
name(p_x_517, simple_name, fast_math_1_expr167, (arguments, 0), range(fast_math_1, 110279, 1, 3580, 3580), 'x').
name(v_exp_y_520, simple_name, fast_math_1_code190, name, range(fast_math_1, 110305, 4, 3581, 3581), 'expY').
name(m_get_exponent_378, simple_name, fast_math_1_expr168, name, range(fast_math_1, 110312, 11, 3581, 3581), 'getExponent').
name(p_y_518, simple_name, fast_math_1_expr168, (arguments, 0), range(fast_math_1, 110324, 1, 3581, 3581), 'y').
name(v_exp_x_519, simple_name, fast_math_1_expr169, left_operand, range(fast_math_1, 110344, 4, 3582, 3582), 'expX').
name(v_exp_y_520, simple_name, fast_math_1_expr170, left_operand, range(fast_math_1, 110351, 4, 3582, 3582), 'expY').
name(v_exp_y_520, simple_name, fast_math_1_expr171, left_operand, range(fast_math_1, 110472, 4, 3585, 3585), 'expY').
name(v_exp_x_519, simple_name, fast_math_1_expr172, left_operand, range(fast_math_1, 110479, 4, 3585, 3585), 'expX').
name(m_abs_168, simple_name, fast_math_1_expr173, name, range(fast_math_1, 110569, 3, 3587, 3587), 'abs').
name(p_y_518, simple_name, fast_math_1_expr173, (arguments, 0), range(fast_math_1, 110573, 1, 3587, 3587), 'y').
name(t_double_1, simple_name, fast_math_1_expr180, expression, range(fast_math_1, 114706, 6, 3685, 3685), 'Double').
name(m_double_to_raw_long_bits_357, simple_name, fast_math_1_expr180, name, range(fast_math_1, 114713, 19, 3685, 3685), 'doubleToRawLongBits').
name(p_d_527, simple_name, fast_math_1_expr180, (arguments, 0), range(fast_math_1, 114733, 1, 3685, 3685), 'd').
%sub_oriented_point_1 - org.apache.commons.math3.geometry.euclidean.oned.SubOrientedPoint
name(p_hyperplane_20, simple_name, sub_oriented_point_1_stmt1, (arguments, 0), range(sub_oriented_point_1, 1776, 10, 39, 39), 'hyperplane').
name(p_remaining_region_21, simple_name, sub_oriented_point_1_stmt1, (arguments, 1), range(sub_oriented_point_1, 1788, 15, 39, 39), 'remainingRegion').
%precision_1 - org.apache.commons.math3.util.Precision
name(f_epsilon_680, simple_name, precision_1_expr1, left_hand_side, range(precision_1, 2505, 7, 70, 70), 'EPSILON').
name(t_double_1, simple_name, precision_1_expr2, expression, range(precision_1, 2515, 6, 70, 70), 'Double').
name(m_long_bits_to_double_356, simple_name, precision_1_expr2, name, range(precision_1, 2522, 16, 70, 70), 'longBitsToDouble').
name(f_exponent_offset_681, simple_name, precision_1_expr5, left_operand, range(precision_1, 2540, 15, 70, 70), 'EXPONENT_OFFSET').
name(f_safe_min_682, simple_name, precision_1_expr6, left_hand_side, range(precision_1, 2762, 8, 77, 77), 'SAFE_MIN').
name(t_double_1, simple_name, precision_1_expr7, expression, range(precision_1, 2773, 6, 77, 77), 'Double').
name(m_long_bits_to_double_356, simple_name, precision_1_expr7, name, range(precision_1, 2780, 16, 77, 77), 'longBitsToDouble').
name(f_exponent_offset_681, simple_name, precision_1_expr10, left_operand, range(precision_1, 2798, 15, 77, 77), 'EXPONENT_OFFSET').
%intervals_set_1 - org.apache.commons.math3.geometry.euclidean.oned.IntervalsSet
name(m_build_tree_4, simple_name, intervals_set_1_expr2, name, range(intervals_set_1, 1925, 9, 47, 47), 'buildTree').
name(p_lower_1, simple_name, intervals_set_1_expr2, (arguments, 0), range(intervals_set_1, 1935, 5, 47, 47), 'lower').
name(p_upper_2, simple_name, intervals_set_1_expr2, (arguments, 1), range(intervals_set_1, 1942, 5, 47, 47), 'upper').
name(t_double_1, simple_name, intervals_set_1_expr4, expression, range(intervals_set_1, 4322, 6, 94, 94), 'Double').
name(m_is_infinite_7, simple_name, intervals_set_1_expr4, name, range(intervals_set_1, 4329, 10, 94, 94), 'isInfinite').
name(p_lower_5, simple_name, intervals_set_1_expr4, (arguments, 0), range(intervals_set_1, 4340, 5, 94, 94), 'lower').
name(p_lower_5, simple_name, intervals_set_1_expr6, left_operand, range(intervals_set_1, 4351, 5, 94, 94), 'lower').
name(v_lower_cut_7, simple_name, intervals_set_1_code9, name, range(intervals_set_1, 5049, 8, 107, 107), 'lowerCut').
name(t_double_1, simple_name, intervals_set_1_expr9, expression, range(intervals_set_1, 5149, 6, 109, 109), 'Double').
name(m_is_infinite_7, simple_name, intervals_set_1_expr9, name, range(intervals_set_1, 5156, 10, 109, 109), 'isInfinite').
name(p_upper_6, simple_name, intervals_set_1_expr9, (arguments, 0), range(intervals_set_1, 5167, 5, 109, 109), 'upper').
name(p_upper_6, simple_name, intervals_set_1_expr11, left_operand, range(intervals_set_1, 5178, 5, 109, 109), 'upper').
name(v_upper_cut_8, simple_name, intervals_set_1_code14, name, range(intervals_set_1, 5638, 8, 118, 118), 'upperCut').
name(v_lower_cut_7, simple_name, intervals_set_1_expr13, (arguments, 0), range(intervals_set_1, 5765, 8, 120, 120), 'lowerCut').
%oriented_point_1 - org.apache.commons.math3.geometry.euclidean.oned.OrientedPoint
name(m_oriented_point_15, simple_name, oriented_point_1_code3, name, range(oriented_point_1, 1611, 13, 42, 42), 'OrientedPoint').
name(p_location_14, simple_name, oriented_point_1_code5, name, range(oriented_point_1, 1640, 8, 42, 42), 'location').
name(p_direct_15, simple_name, oriented_point_1_code8, name, range(oriented_point_1, 1664, 6, 42, 42), 'direct').
name(f_location_16, simple_name, oriented_point_1_expr2, name, range(oriented_point_1, 1687, 8, 43, 43), 'location').
name(p_location_14, simple_name, oriented_point_1_expr1, right_hand_side, range(oriented_point_1, 1698, 8, 43, 43), 'location').
name(f_direct_17, simple_name, oriented_point_1_expr5, name, range(oriented_point_1, 1721, 6, 44, 44), 'direct').
name(p_direct_15, simple_name, oriented_point_1_expr4, right_hand_side, range(oriented_point_1, 1732, 6, 44, 44), 'direct').
%sub_line_test_2 - org.apache.commons.math3.geometry.euclidean.twod.SubLineTest
name(t_sub_line_test_7, simple_name, sub_line_test_2_code2, name, range(sub_line_test_2, 1156, 11, 27, 27), 'SubLineTest').
name(v_sub_1_247, simple_name, sub_line_test_2_code7, name, range(sub_line_test_2, 7108, 4, 149, 149), 'sub1').
name(v_sub_2_248, simple_name, sub_line_test_2_code13, name, range(sub_line_test_2, 7190, 4, 150, 150), 'sub2').
name(t_assert_5, simple_name, sub_line_test_2_expr7, expression, range(sub_line_test_2, 7260, 6, 151, 151), 'Assert').
name(m_assert_null_108, simple_name, sub_line_test_2_expr7, name, range(sub_line_test_2, 7267, 10, 151, 151), 'assertNull').
name(v_sub_1_247, simple_name, sub_line_test_2_expr8, expression, range(sub_line_test_2, 7278, 4, 151, 151), 'sub1').
name(m_intersection_193, simple_name, sub_line_test_2_expr8, name, range(sub_line_test_2, 7283, 12, 151, 151), 'intersection').
name(v_sub_2_248, simple_name, sub_line_test_2_expr8, (arguments, 0), range(sub_line_test_2, 7296, 4, 151, 151), 'sub2').
%abstract_sub_hyperplane_1 - org.apache.commons.math3.geometry.partitioning.AbstractSubHyperplane
name(p_remaining_region_335, simple_name, abstract_sub_hyperplane_1_code4, name, range(abstract_sub_hyperplane_1, 2108, 15, 50, 50), 'remainingRegion').
name(f_hyperplane_336, simple_name, abstract_sub_hyperplane_1_expr2, name, range(abstract_sub_hyperplane_1, 2140, 10, 51, 51), 'hyperplane').
name(p_hyperplane_334, simple_name, abstract_sub_hyperplane_1_expr1, right_hand_side, range(abstract_sub_hyperplane_1, 2158, 10, 51, 51), 'hyperplane').
name(f_remaining_region_337, simple_name, abstract_sub_hyperplane_1_expr5, name, range(abstract_sub_hyperplane_1, 2183, 15, 52, 52), 'remainingRegion').
name(p_remaining_region_335, simple_name, abstract_sub_hyperplane_1_expr4, right_hand_side, range(abstract_sub_hyperplane_1, 2201, 15, 52, 52), 'remainingRegion').
name(f_hyperplane_336, simple_name, abstract_sub_hyperplane_1_stmt3, expression, range(abstract_sub_hyperplane_1, 2890, 10, 72, 72), 'hyperplane').
name(f_remaining_region_337, simple_name, abstract_sub_hyperplane_1_stmt4, expression, range(abstract_sub_hyperplane_1, 3334, 15, 83, 83), 'remainingRegion').
%sub_line_test_1 - org.apache.commons.math3.geometry.euclidean.threed.SubLineTest
name(t_sub_line_test_4, simple_name, sub_line_test_1_code2, name, range(sub_line_test_1, 1230, 11, 28, 28), 'SubLineTest').
name(v_sub_1_114, simple_name, sub_line_test_1_code6, name, range(sub_line_test_1, 8422, 4, 158, 158), 'sub1').
name(v_sub_2_115, simple_name, sub_line_test_1_code11, name, range(sub_line_test_1, 8506, 4, 159, 159), 'sub2').
name(t_assert_5, simple_name, sub_line_test_1_expr7, expression, range(sub_line_test_1, 8582, 6, 160, 160), 'Assert').
name(m_assert_null_108, simple_name, sub_line_test_1_expr7, name, range(sub_line_test_1, 8589, 10, 160, 160), 'assertNull').
name(v_sub_1_114, simple_name, sub_line_test_1_expr8, expression, range(sub_line_test_1, 8600, 4, 160, 160), 'sub1').
name(m_intersection_92, simple_name, sub_line_test_1_expr8, name, range(sub_line_test_1, 8605, 12, 160, 160), 'intersection').
name(v_sub_2_115, simple_name, sub_line_test_1_expr8, (arguments, 0), range(sub_line_test_1, 8618, 4, 160, 160), 'sub2').
%bsptree_1 - org.apache.commons.math3.geometry.partitioning.BSPTree
name(m_bsptree_293, simple_name, bsptree_1_code3, name, range(bsptree_1, 3715, 7, 93, 93), 'BSPTree').
name(p_attribute_347, simple_name, bsptree_1_code5, name, range(bsptree_1, 3736, 9, 93, 93), 'attribute').
name(f_cut_348, simple_name, bsptree_1_expr1, left_hand_side, range(bsptree_1, 3757, 3, 94, 94), 'cut').
name(f_plus_349, simple_name, bsptree_1_expr2, left_hand_side, range(bsptree_1, 3780, 4, 95, 95), 'plus').
name(f_minus_350, simple_name, bsptree_1_expr3, left_hand_side, range(bsptree_1, 3803, 5, 96, 96), 'minus').
name(f_parent_351, simple_name, bsptree_1_expr4, left_hand_side, range(bsptree_1, 3826, 6, 97, 97), 'parent').
name(f_attribute_352, simple_name, bsptree_1_expr6, name, range(bsptree_1, 3854, 9, 98, 98), 'attribute').
name(p_attribute_347, simple_name, bsptree_1_expr5, right_hand_side, range(bsptree_1, 3866, 9, 98, 98), 'attribute').
name(p_attribute_356, simple_name, bsptree_1_code9, name, range(bsptree_1, 4660, 9, 115, 115), 'attribute').
name(f_cut_348, simple_name, bsptree_1_expr9, name, range(bsptree_1, 4686, 3, 116, 116), 'cut').
name(p_cut_353, simple_name, bsptree_1_expr8, right_hand_side, range(bsptree_1, 4698, 3, 116, 116), 'cut').
name(f_plus_349, simple_name, bsptree_1_expr12, name, range(bsptree_1, 4716, 4, 117, 117), 'plus').
name(p_plus_354, simple_name, bsptree_1_expr11, right_hand_side, range(bsptree_1, 4728, 4, 117, 117), 'plus').
name(f_minus_350, simple_name, bsptree_1_expr15, name, range(bsptree_1, 4747, 5, 118, 118), 'minus').
name(p_minus_355, simple_name, bsptree_1_expr14, right_hand_side, range(bsptree_1, 4759, 5, 118, 118), 'minus').
name(f_parent_351, simple_name, bsptree_1_expr18, name, range(bsptree_1, 4779, 6, 119, 119), 'parent').
name(f_attribute_352, simple_name, bsptree_1_expr21, name, range(bsptree_1, 4810, 9, 120, 120), 'attribute').
name(p_attribute_356, simple_name, bsptree_1_expr20, right_hand_side, range(bsptree_1, 4822, 9, 120, 120), 'attribute').
name(p_plus_354, simple_name, q_parent_24, qualifier, range(bsptree_1, 4841, 4, 121, 121), 'plus').
name(q_parent_24, qualified_name, bsptree_1_expr23, left_hand_side, range(bsptree_1, 4841, 11, 121, 121), 'plus.parent').
name(p_minus_355, simple_name, q_parent_25, qualifier, range(bsptree_1, 4872, 5, 122, 122), 'minus').
name(q_parent_25, qualified_name, bsptree_1_expr25, left_hand_side, range(bsptree_1, 4872, 12, 122, 122), 'minus.parent').
%vector1_d_1 - org.apache.commons.math3.geometry.euclidean.oned.Vector1D
name(f_zero_26, simple_name, vector1_d_1_code8, name, range(vector1_d_1, 1484, 4, 36, 36), 'ZERO').
name(f_one_27, simple_name, vector1_d_1_code15, name, range(vector1_d_1, 1578, 3, 39, 39), 'ONE').
name(f_na_n_28, simple_name, vector1_d_1_code22, name, range(vector1_d_1, 1728, 3, 43, 43), 'NaN').
name(q_na_n_1, qualified_name, vector1_d_1_expr3, (arguments, 0), range(vector1_d_1, 1747, 10, 43, 43), 'Double.NaN').
name(t_double_1, simple_name, q_na_n_1, qualifier, range(vector1_d_1, 1747, 6, 43, 43), 'Double').
name(f_positive_infinity_29, simple_name, vector1_d_1_code29, name, range(vector1_d_1, 1900, 17, 47, 47), 'POSITIVE_INFINITY').
name(f_negative_infinity_30, simple_name, vector1_d_1_code35, name, range(vector1_d_1, 2069, 17, 51, 51), 'NEGATIVE_INFINITY').
name(m_vector1_d_30, simple_name, vector1_d_1_code36, name, range(vector1_d_1, 2424, 8, 65, 65), 'Vector1D').
name(p_x_31, simple_name, vector1_d_1_code38, name, range(vector1_d_1, 2440, 1, 65, 65), 'x').
name(f_x_32, simple_name, vector1_d_1_expr7, name, range(vector1_d_1, 2458, 1, 66, 66), 'x').
name(p_x_31, simple_name, vector1_d_1_expr6, right_hand_side, range(vector1_d_1, 2462, 1, 66, 66), 'x').
name(f_x_32, simple_name, vector1_d_1_stmt2, expression, range(vector1_d_1, 4671, 1, 128, 128), 'x').
%vector3_d_1 - org.apache.commons.math3.geometry.euclidean.threed.Vector3D
name(f_zero_116, simple_name, vector3_d_1_code8, name, range(vector3_d_1, 1687, 4, 41, 41), 'ZERO').
name(f_plus_i_117, simple_name, vector3_d_1_code15, name, range(vector3_d_1, 1811, 6, 44, 44), 'PLUS_I').
name(f_minus_i_118, simple_name, vector3_d_1_code22, name, range(vector3_d_1, 1952, 7, 47, 47), 'MINUS_I').
name(f_plus_j_119, simple_name, vector3_d_1_code29, name, range(vector3_d_1, 2079, 6, 50, 50), 'PLUS_J').
name(f_minus_j_120, simple_name, vector3_d_1_code36, name, range(vector3_d_1, 2221, 7, 53, 53), 'MINUS_J').
name(f_plus_k_121, simple_name, vector3_d_1_code43, name, range(vector3_d_1, 2347, 6, 56, 56), 'PLUS_K').
name(f_minus_k_122, simple_name, vector3_d_1_code50, name, range(vector3_d_1, 2489, 7, 59, 59), 'MINUS_K').
name(f_na_n_123, simple_name, vector3_d_1_code57, name, range(vector3_d_1, 2647, 3, 63, 63), 'NaN').
name(t_double_1, simple_name, q_na_n_6, qualifier, range(vector3_d_1, 2666, 6, 63, 63), 'Double').
name(q_na_n_6, qualified_name, vector3_d_1_expr11, (arguments, 0), range(vector3_d_1, 2666, 10, 63, 63), 'Double.NaN').
name(t_double_1, simple_name, q_na_n_6, qualifier, range(vector3_d_1, 2678, 6, 63, 63), 'Double').
name(q_na_n_6, qualified_name, vector3_d_1_expr11, (arguments, 1), range(vector3_d_1, 2678, 10, 63, 63), 'Double.NaN').
name(t_double_1, simple_name, q_na_n_6, qualifier, range(vector3_d_1, 2690, 6, 63, 63), 'Double').
name(q_na_n_6, qualified_name, vector3_d_1_expr11, (arguments, 2), range(vector3_d_1, 2690, 10, 63, 63), 'Double.NaN').
name(f_positive_infinity_124, simple_name, vector3_d_1_code64, name, range(vector3_d_1, 2843, 17, 67, 67), 'POSITIVE_INFINITY').
name(f_negative_infinity_125, simple_name, vector3_d_1_code70, name, range(vector3_d_1, 3064, 17, 71, 71), 'NEGATIVE_INFINITY').
name(m_vector3_d_107, simple_name, vector3_d_1_code71, name, range(vector3_d_1, 3672, 8, 95, 95), 'Vector3D').
name(p_x_126, simple_name, vector3_d_1_code73, name, range(vector3_d_1, 3688, 1, 95, 95), 'x').
name(p_y_127, simple_name, vector3_d_1_code75, name, range(vector3_d_1, 3698, 1, 95, 95), 'y').
name(p_z_128, simple_name, vector3_d_1_code77, name, range(vector3_d_1, 3708, 1, 95, 95), 'z').
name(f_x_129, simple_name, vector3_d_1_expr15, name, range(vector3_d_1, 3726, 1, 96, 96), 'x').
name(p_x_126, simple_name, vector3_d_1_expr14, right_hand_side, range(vector3_d_1, 3730, 1, 96, 96), 'x').
name(f_y_130, simple_name, vector3_d_1_expr18, name, range(vector3_d_1, 3746, 1, 97, 97), 'y').
name(p_y_127, simple_name, vector3_d_1_expr17, right_hand_side, range(vector3_d_1, 3750, 1, 97, 97), 'y').
name(f_z_131, simple_name, vector3_d_1_expr21, name, range(vector3_d_1, 3766, 1, 98, 98), 'z').
name(p_z_128, simple_name, vector3_d_1_expr20, right_hand_side, range(vector3_d_1, 3770, 1, 98, 98), 'z').
name(m_vector3_d_68, simple_name, vector3_d_1_code79, name, range(vector3_d_1, 5040, 8, 137, 137), 'Vector3D').
name(p_a_135, simple_name, vector3_d_1_code81, name, range(vector3_d_1, 5056, 1, 137, 137), 'a').
name(p_u_136, simple_name, vector3_d_1_code83, name, range(vector3_d_1, 5068, 1, 137, 137), 'u').
name(f_x_129, simple_name, vector3_d_1_expr24, name, range(vector3_d_1, 5086, 1, 138, 138), 'x').
name(p_a_135, simple_name, vector3_d_1_expr25, left_operand, range(vector3_d_1, 5090, 1, 138, 138), 'a').
name(q_x_6, qualified_name, vector3_d_1_expr25, right_operand, range(vector3_d_1, 5094, 3, 138, 138), 'u.x').
name(p_u_136, simple_name, q_x_6, qualifier, range(vector3_d_1, 5094, 1, 138, 138), 'u').
name(f_y_130, simple_name, vector3_d_1_expr28, name, range(vector3_d_1, 5112, 1, 139, 139), 'y').
name(p_a_135, simple_name, vector3_d_1_expr29, left_operand, range(vector3_d_1, 5116, 1, 139, 139), 'a').
name(q_y_7, qualified_name, vector3_d_1_expr29, right_operand, range(vector3_d_1, 5120, 3, 139, 139), 'u.y').
name(p_u_136, simple_name, q_y_7, qualifier, range(vector3_d_1, 5120, 1, 139, 139), 'u').
name(f_z_131, simple_name, vector3_d_1_expr32, name, range(vector3_d_1, 5138, 1, 140, 140), 'z').
name(p_a_135, simple_name, vector3_d_1_expr33, left_operand, range(vector3_d_1, 5142, 1, 140, 140), 'a').
name(q_z_8, qualified_name, vector3_d_1_expr33, right_operand, range(vector3_d_1, 5146, 3, 140, 140), 'u.z').
name(p_u_136, simple_name, q_z_8, qualifier, range(vector3_d_1, 5146, 1, 140, 140), 'u').
name(m_vector3_d_70, simple_name, vector3_d_1_code85, name, range(vector3_d_1, 5495, 8, 151, 151), 'Vector3D').
name(p_a_1_137, simple_name, vector3_d_1_code87, name, range(vector3_d_1, 5511, 2, 151, 151), 'a1').
name(p_u_1_138, simple_name, vector3_d_1_code89, name, range(vector3_d_1, 5524, 2, 151, 151), 'u1').
name(p_a_2_139, simple_name, vector3_d_1_code91, name, range(vector3_d_1, 5535, 2, 151, 151), 'a2').
name(p_u_2_140, simple_name, vector3_d_1_code93, name, range(vector3_d_1, 5548, 2, 151, 151), 'u2').
name(f_x_129, simple_name, vector3_d_1_expr36, name, range(vector3_d_1, 5567, 1, 152, 152), 'x').
name(t_math_arrays_6, simple_name, vector3_d_1_expr37, expression, range(vector3_d_1, 5571, 10, 152, 152), 'MathArrays').
name(m_linear_combination_111, simple_name, vector3_d_1_expr37, name, range(vector3_d_1, 5582, 17, 152, 152), 'linearCombination').
name(p_a_1_137, simple_name, vector3_d_1_expr37, (arguments, 0), range(vector3_d_1, 5600, 2, 152, 152), 'a1').
name(q_x_9, qualified_name, vector3_d_1_expr37, (arguments, 1), range(vector3_d_1, 5604, 4, 152, 152), 'u1.x').
name(p_u_1_138, simple_name, q_x_9, qualifier, range(vector3_d_1, 5604, 2, 152, 152), 'u1').
name(p_a_2_139, simple_name, vector3_d_1_expr37, (arguments, 2), range(vector3_d_1, 5610, 2, 152, 152), 'a2').
name(q_x_10, qualified_name, vector3_d_1_expr37, (arguments, 3), range(vector3_d_1, 5614, 4, 152, 152), 'u2.x').
name(p_u_2_140, simple_name, q_x_10, qualifier, range(vector3_d_1, 5614, 2, 152, 152), 'u2').
name(f_y_130, simple_name, vector3_d_1_expr40, name, range(vector3_d_1, 5634, 1, 153, 153), 'y').
name(t_math_arrays_6, simple_name, vector3_d_1_expr41, expression, range(vector3_d_1, 5638, 10, 153, 153), 'MathArrays').
name(m_linear_combination_111, simple_name, vector3_d_1_expr41, name, range(vector3_d_1, 5649, 17, 153, 153), 'linearCombination').
name(p_a_1_137, simple_name, vector3_d_1_expr41, (arguments, 0), range(vector3_d_1, 5667, 2, 153, 153), 'a1').
name(q_y_11, qualified_name, vector3_d_1_expr41, (arguments, 1), range(vector3_d_1, 5671, 4, 153, 153), 'u1.y').
name(p_u_1_138, simple_name, q_y_11, qualifier, range(vector3_d_1, 5671, 2, 153, 153), 'u1').
name(p_a_2_139, simple_name, vector3_d_1_expr41, (arguments, 2), range(vector3_d_1, 5677, 2, 153, 153), 'a2').
name(q_y_12, qualified_name, vector3_d_1_expr41, (arguments, 3), range(vector3_d_1, 5681, 4, 153, 153), 'u2.y').
name(p_u_2_140, simple_name, q_y_12, qualifier, range(vector3_d_1, 5681, 2, 153, 153), 'u2').
name(f_z_131, simple_name, vector3_d_1_expr44, name, range(vector3_d_1, 5701, 1, 154, 154), 'z').
name(t_math_arrays_6, simple_name, vector3_d_1_expr45, expression, range(vector3_d_1, 5705, 10, 154, 154), 'MathArrays').
name(m_linear_combination_111, simple_name, vector3_d_1_expr45, name, range(vector3_d_1, 5716, 17, 154, 154), 'linearCombination').
name(p_a_1_137, simple_name, vector3_d_1_expr45, (arguments, 0), range(vector3_d_1, 5734, 2, 154, 154), 'a1').
name(q_z_13, qualified_name, vector3_d_1_expr45, (arguments, 1), range(vector3_d_1, 5738, 4, 154, 154), 'u1.z').
name(p_u_1_138, simple_name, q_z_13, qualifier, range(vector3_d_1, 5738, 2, 154, 154), 'u1').
name(p_a_2_139, simple_name, vector3_d_1_expr45, (arguments, 2), range(vector3_d_1, 5744, 2, 154, 154), 'a2').
name(q_z_14, qualified_name, vector3_d_1_expr45, (arguments, 3), range(vector3_d_1, 5748, 4, 154, 154), 'u2.z').
name(p_u_2_140, simple_name, q_z_14, qualifier, range(vector3_d_1, 5748, 2, 154, 154), 'u2').
name(t_fast_math_2, simple_name, vector3_d_1_expr47, expression, range(vector3_d_1, 8694, 8, 243, 243), 'FastMath').
name(m_sqrt_69, simple_name, vector3_d_1_expr47, name, range(vector3_d_1, 8703, 4, 243, 243), 'sqrt').
name(f_x_129, simple_name, vector3_d_1_expr50, left_operand, range(vector3_d_1, 8709, 1, 243, 243), 'x').
name(f_x_129, simple_name, vector3_d_1_expr50, right_operand, range(vector3_d_1, 8713, 1, 243, 243), 'x').
name(f_y_130, simple_name, vector3_d_1_expr51, left_operand, range(vector3_d_1, 8717, 1, 243, 243), 'y').
name(f_y_130, simple_name, vector3_d_1_expr51, right_operand, range(vector3_d_1, 8721, 1, 243, 243), 'y').
name(f_z_131, simple_name, vector3_d_1_expr52, left_operand, range(vector3_d_1, 8725, 1, 243, 243), 'z').
name(f_z_131, simple_name, vector3_d_1_expr52, right_operand, range(vector3_d_1, 8729, 1, 243, 243), 'z').
name(f_x_129, simple_name, vector3_d_1_expr55, left_operand, range(vector3_d_1, 8902, 1, 249, 249), 'x').
name(f_x_129, simple_name, vector3_d_1_expr55, right_operand, range(vector3_d_1, 8906, 1, 249, 249), 'x').
name(f_y_130, simple_name, vector3_d_1_expr56, left_operand, range(vector3_d_1, 8910, 1, 249, 249), 'y').
name(f_y_130, simple_name, vector3_d_1_expr56, right_operand, range(vector3_d_1, 8914, 1, 249, 249), 'y').
name(f_z_131, simple_name, vector3_d_1_expr57, left_operand, range(vector3_d_1, 8918, 1, 249, 249), 'z').
name(f_z_131, simple_name, vector3_d_1_expr57, right_operand, range(vector3_d_1, 8922, 1, 249, 249), 'z').
name(v_v_3_159, simple_name, vector3_d_1_code100, name, range(vector3_d_1, 10029, 2, 286, 286), 'v3').
name(p_v_158, simple_name, vector3_d_1_expr58, expression, range(vector3_d_1, 10045, 1, 286, 286), 'v').
name(f_x_129, simple_name, vector3_d_1_expr60, left_operand, range(vector3_d_1, 10076, 1, 287, 287), 'x').
name(v_v_3_159, simple_name, q_x_15, qualifier, range(vector3_d_1, 10080, 2, 287, 287), 'v3').
name(q_x_15, qualified_name, vector3_d_1_expr60, right_operand, range(vector3_d_1, 10080, 4, 287, 287), 'v3.x').
name(f_y_130, simple_name, vector3_d_1_expr61, left_operand, range(vector3_d_1, 10086, 1, 287, 287), 'y').
name(q_y_16, qualified_name, vector3_d_1_expr61, right_operand, range(vector3_d_1, 10090, 4, 287, 287), 'v3.y').
name(v_v_3_159, simple_name, q_y_16, qualifier, range(vector3_d_1, 10090, 2, 287, 287), 'v3').
name(f_z_131, simple_name, vector3_d_1_expr62, left_operand, range(vector3_d_1, 10096, 1, 287, 287), 'z').
name(q_z_17, qualified_name, vector3_d_1_expr62, right_operand, range(vector3_d_1, 10100, 4, 287, 287), 'v3.z').
name(v_v_3_159, simple_name, q_z_17, qualifier, range(vector3_d_1, 10100, 2, 287, 287), 'v3').
name(v_v_3_167, simple_name, vector3_d_1_code106, name, range(vector3_d_1, 15975, 2, 453, 453), 'v3').
name(p_v_166, simple_name, vector3_d_1_expr63, expression, range(vector3_d_1, 15991, 1, 453, 453), 'v').
name(t_math_arrays_6, simple_name, vector3_d_1_expr64, expression, range(vector3_d_1, 16009, 10, 454, 454), 'MathArrays').
name(m_linear_combination_136, simple_name, vector3_d_1_expr64, name, range(vector3_d_1, 16020, 17, 454, 454), 'linearCombination').
name(f_x_129, simple_name, vector3_d_1_expr64, (arguments, 0), range(vector3_d_1, 16038, 1, 454, 454), 'x').
name(q_x_18, qualified_name, vector3_d_1_expr64, (arguments, 1), range(vector3_d_1, 16041, 4, 454, 454), 'v3.x').
name(v_v_3_167, simple_name, q_x_18, qualifier, range(vector3_d_1, 16041, 2, 454, 454), 'v3').
name(f_y_130, simple_name, vector3_d_1_expr64, (arguments, 2), range(vector3_d_1, 16047, 1, 454, 454), 'y').
name(q_y_19, qualified_name, vector3_d_1_expr64, (arguments, 3), range(vector3_d_1, 16050, 4, 454, 454), 'v3.y').
name(v_v_3_167, simple_name, q_y_19, qualifier, range(vector3_d_1, 16050, 2, 454, 454), 'v3').
name(f_z_131, simple_name, vector3_d_1_expr64, (arguments, 4), range(vector3_d_1, 16056, 1, 454, 454), 'z').
name(v_v_3_167, simple_name, q_z_20, qualifier, range(vector3_d_1, 16059, 2, 454, 454), 'v3').
name(q_z_20, qualified_name, vector3_d_1_expr64, (arguments, 5), range(vector3_d_1, 16059, 4, 454, 454), 'v3.z').

%%% Literals
%line_1 - org.apache.commons.math3.geometry.euclidean.threed.Line
literal(line_1_literal1, number_literal, line_1_expr4, right_operand, range(line_1, 3303, 3, 76, 76), 0.0).
literal(line_1_literal2, number_literal, line_1_expr9, left_operand, range(line_1, 3438, 3, 79, 79), 1.0).
literal(line_1_literal3, number_literal, line_1_expr12, (arguments, 0), range(line_1, 3502, 3, 80, 80), 1.0).
literal(line_1_literal4, number_literal, line_1_expr21, right_operand, range(line_1, 6010, 7, 156, 156), 1.0e-10).
literal(line_1_literal5, number_literal, line_1_expr24, (arguments, 0), range(line_1, 6313, 3, 165, 165), 1.0).
literal(line_1_literal6, number_literal, line_1_expr29, left_operand, range(line_1, 7433, 1, 196, 196), 1).
literal(line_1_literal7, number_literal, line_1_expr35, (arguments, 0), range(line_1, 7775, 1, 206, 206), 1).
literal(line_1_literal8, null_literal, line_1_expr41, else_expression, range(line_1, 8205, 4, 217, 217), null).
%line_2 - org.apache.commons.math3.geometry.euclidean.twod.Line
literal(line_2_literal1, number_literal, line_2_expr9, right_operand, range(line_2, 5372, 3, 132, 132), 0.0).
literal(line_2_literal2, number_literal, line_2_expr39, right_operand, range(line_2, 7879, 7, 199, 199), 1.0e-10).
literal(line_2_literal3, null_literal, line_2_stmt14, expression, range(line_2, 7909, 4, 200, 200), null).
%math_arrays_1 - org.apache.commons.math3.util.MathArrays
%abstract_region_1 - org.apache.commons.math3.geometry.partitioning.AbstractRegion
%sub_line_2 - org.apache.commons.math3.geometry.euclidean.twod.SubLine
%vector2_d_1 - org.apache.commons.math3.geometry.euclidean.twod.Vector2D
literal(vector2_d_1_literal1, number_literal, vector2_d_1_expr1, (arguments, 0), range(vector2_d_1, 1579, 1, 37, 37), 0).
literal(vector2_d_1_literal2, number_literal, vector2_d_1_expr1, (arguments, 1), range(vector2_d_1, 1582, 1, 37, 37), 0).
%sub_line_1 - org.apache.commons.math3.geometry.euclidean.threed.SubLine
%fast_math_1 - org.apache.commons.math3.util.FastMath
literal(fast_math_1_literal1, number_literal, fast_math_1_expr14, (expressions, 0), range(fast_math_1, 10414, 1, 285, 285), 0).
literal(fast_math_1_literal2, number_literal, fast_math_1_expr14, (expressions, 1), range(fast_math_1, 10417, 5, 285, 285), 0.125).
literal(fast_math_1_literal3, number_literal, fast_math_1_expr14, (expressions, 2), range(fast_math_1, 10424, 4, 285, 285), 0.25).
literal(fast_math_1_literal4, number_literal, fast_math_1_expr14, (expressions, 3), range(fast_math_1, 10430, 5, 285, 285), 0.375).
literal(fast_math_1_literal5, number_literal, fast_math_1_expr14, (expressions, 4), range(fast_math_1, 10437, 3, 285, 285), 0.5).
literal(fast_math_1_literal6, number_literal, fast_math_1_expr14, (expressions, 5), range(fast_math_1, 10442, 5, 285, 285), 0.625).
literal(fast_math_1_literal7, number_literal, fast_math_1_expr14, (expressions, 6), range(fast_math_1, 10449, 4, 285, 285), 0.75).
literal(fast_math_1_literal8, number_literal, fast_math_1_expr14, (expressions, 7), range(fast_math_1, 10455, 5, 285, 285), 0.875).
literal(fast_math_1_literal9, number_literal, fast_math_1_expr14, (expressions, 8), range(fast_math_1, 10462, 3, 285, 285), 1.0).
literal(fast_math_1_literal10, number_literal, fast_math_1_expr14, (expressions, 9), range(fast_math_1, 10467, 5, 285, 285), 1.125).
literal(fast_math_1_literal11, number_literal, fast_math_1_expr14, (expressions, 10), range(fast_math_1, 10474, 4, 285, 285), 1.25).
literal(fast_math_1_literal12, number_literal, fast_math_1_expr14, (expressions, 11), range(fast_math_1, 10480, 5, 285, 285), 1.375).
literal(fast_math_1_literal13, number_literal, fast_math_1_expr14, (expressions, 12), range(fast_math_1, 10487, 3, 285, 285), 1.5).
literal(fast_math_1_literal14, number_literal, fast_math_1_expr14, (expressions, 13), range(fast_math_1, 10492, 5, 285, 285), 1.625).
literal(fast_math_1_literal15, number_literal, fast_math_1_expr15, (expressions, 0), range(fast_math_1, 10579, 18, 288, 288), 0.6299605249474366).
literal(fast_math_1_literal16, number_literal, fast_math_1_code106, initializer, range(fast_math_1, 54406, 21, 1682, 1682), 2.7553817452272217E-6).
literal(fast_math_1_literal17, number_literal, fast_math_1_expr21, operand, range(fast_math_1, 54451, 21, 1683, 1683), 1.9841269659586505E-4).
literal(fast_math_1_literal18, number_literal, fast_math_1_expr23, right_operand, range(fast_math_1, 54495, 20, 1684, 1684), 0.008333333333329196).
literal(fast_math_1_literal19, number_literal, fast_math_1_expr28, operand, range(fast_math_1, 54539, 19, 1685, 1685), 0.16666666666666666).
literal(fast_math_1_literal20, number_literal, fast_math_1_code111, initializer, range(fast_math_1, 54921, 20, 1702, 1702), 2.479773539153719E-5).
literal(fast_math_1_literal21, number_literal, fast_math_1_expr35, operand, range(fast_math_1, 54965, 21, 1703, 1703), 0.0013888888689039883).
literal(fast_math_1_literal22, number_literal, fast_math_1_expr37, right_operand, range(fast_math_1, 55009, 20, 1704, 1704), 0.041666666666621166).
literal(fast_math_1_literal23, number_literal, fast_math_1_expr42, operand, range(fast_math_1, 55053, 19, 1705, 1705), 0.49999999999999994).
literal(fast_math_1_literal24, number_literal, fast_math_1_expr48, right_operand, range(fast_math_1, 55486, 3, 1719, 1719), 8.0).
literal(fast_math_1_literal25, number_literal, fast_math_1_expr46, right_operand, range(fast_math_1, 55493, 3, 1719, 1719), 0.5).
literal(fast_math_1_literal26, number_literal, fast_math_1_code137, initializer, range(fast_math_1, 55951, 3, 1731, 1731), 1.0).
literal(fast_math_1_literal27, number_literal, fast_math_1_code147, initializer, range(fast_math_1, 57106, 1, 1764, 1764), 0).
literal(fast_math_1_literal28, number_literal, fast_math_1_code149, initializer, range(fast_math_1, 57128, 1, 1765, 1765), 0).
literal(fast_math_1_literal29, number_literal, fast_math_1_expr94, right_operand, range(fast_math_1, 58067, 3, 1821, 1821), 0.0).
literal(fast_math_1_literal30, number_literal, fast_math_1_code159, initializer, range(fast_math_1, 58770, 18, 1843, 1843), 1.5707963267948966).
literal(fast_math_1_literal31, number_literal, fast_math_1_code162, initializer, range(fast_math_1, 58818, 21, 1844, 1844), 6.123233995736766E-17).
literal(fast_math_1_literal32, boolean_literal, fast_math_1_code170, initializer, range(fast_math_1, 70132, 5, 2228, 2228), false).
literal(fast_math_1_literal33, number_literal, fast_math_1_code172, initializer, range(fast_math_1, 70162, 1, 2229, 2229), 0).
literal(fast_math_1_literal34, number_literal, fast_math_1_code174, initializer, range(fast_math_1, 70204, 3, 2231, 2231), 0.0).
literal(fast_math_1_literal35, number_literal, fast_math_1_expr124, right_operand, range(fast_math_1, 70289, 1, 2235, 2235), 0).
literal(fast_math_1_literal36, number_literal, fast_math_1_expr125, right_operand, range(fast_math_1, 70421, 3, 2241, 2241), 0.0).
literal(fast_math_1_literal37, number_literal, fast_math_1_expr129, right_operand, range(fast_math_1, 70751, 9, 2254, 2254), 3294198.0).
literal(fast_math_1_literal38, number_literal, fast_math_1_expr130, right_operand, range(fast_math_1, 71134, 18, 2263, 2263), 1.5707963267948966).
literal(fast_math_1_literal39, number_literal, fast_math_1_code177, initializer, range(fast_math_1, 71886, 1, 2295, 2295), 0).
literal(fast_math_1_literal40, number_literal, fast_math_1_expr132, right_operand, range(fast_math_1, 71976, 1, 2299, 2299), 0).
literal(fast_math_1_literal41, number_literal, fast_math_1_code181, initializer, range(fast_math_1, 72179, 1, 2308, 2308), 0).
literal(fast_math_1_literal42, number_literal, fast_math_1_expr136, right_operand, range(fast_math_1, 72199, 9, 2309, 2309), 3294198.0).
literal(fast_math_1_literal43, number_literal, fast_math_1_expr137, right_operand, range(fast_math_1, 72582, 18, 2318, 2318), 1.5707963267948966).
literal(fast_math_1_literal44, number_literal, fast_math_1_expr142, right_operand, range(fast_math_1, 80411, 1, 2586, 2586), 0).
literal(fast_math_1_literal45, number_literal, fast_math_1_expr147, right_operand, range(fast_math_1, 82202, 1, 2659, 2659), 0).
literal(fast_math_1_literal46, number_literal, fast_math_1_expr149, right_operand, range(fast_math_1, 82227, 1, 2660, 2660), 0).
literal(fast_math_1_literal47, number_literal, fast_math_1_expr151, left_operand, range(fast_math_1, 82232, 1, 2660, 2660), 1).
literal(fast_math_1_literal48, number_literal, fast_math_1_expr150, right_operand, range(fast_math_1, 82240, 1, 2660, 2660), 0).
literal(fast_math_1_literal49, number_literal, fast_math_1_expr153, right_operand, range(fast_math_1, 82320, 1, 2664, 2664), 0).
literal(fast_math_1_literal50, number_literal, fast_math_1_expr155, left_operand, range(fast_math_1, 82325, 1, 2664, 2664), 1).
literal(fast_math_1_literal51, number_literal, fast_math_1_expr154, right_operand, range(fast_math_1, 82333, 1, 2664, 2664), 0).
literal(fast_math_1_literal52, number_literal, fast_math_1_expr170, right_operand, range(fast_math_1, 110358, 2, 3582, 3582), 27).
literal(fast_math_1_literal53, number_literal, fast_math_1_expr172, right_operand, range(fast_math_1, 110486, 2, 3585, 3585), 27).
literal(fast_math_1_literal54, number_literal, fast_math_1_expr179, right_operand, range(fast_math_1, 114740, 2, 3685, 3685), 52).
literal(fast_math_1_literal55, number_literal, fast_math_1_expr177, right_operand, range(fast_math_1, 114746, 5, 3685, 3685), 0x7ff).
literal(fast_math_1_literal56, number_literal, fast_math_1_expr174, right_operand, range(fast_math_1, 114755, 4, 3685, 3685), 1023).
%sub_oriented_point_1 - org.apache.commons.math3.geometry.euclidean.oned.SubOrientedPoint
%precision_1 - org.apache.commons.math3.util.Precision
literal(precision_1_literal1, number_literal, precision_1_expr5, right_operand, range(precision_1, 2558, 3, 70, 70), 53).
literal(precision_1_literal2, number_literal, precision_1_expr3, right_operand, range(precision_1, 2566, 2, 70, 70), 52).
literal(precision_1_literal3, number_literal, precision_1_expr10, right_operand, range(precision_1, 2816, 5, 77, 77), 1022).
literal(precision_1_literal4, number_literal, precision_1_expr8, right_operand, range(precision_1, 2826, 2, 77, 77), 52).
%intervals_set_1 - org.apache.commons.math3.geometry.euclidean.oned.IntervalsSet
literal(intervals_set_1_literal1, number_literal, intervals_set_1_expr6, right_operand, range(intervals_set_1, 4359, 1, 94, 94), 0).
literal(intervals_set_1_literal2, number_literal, intervals_set_1_expr11, right_operand, range(intervals_set_1, 5186, 1, 109, 109), 0).
literal(intervals_set_1_literal3, null_literal, intervals_set_1_expr13, (arguments, 3), range(intervals_set_1, 6254, 4, 126, 126), null).
%oriented_point_1 - org.apache.commons.math3.geometry.euclidean.oned.OrientedPoint
literal(oriented_point_1_literal1, null_literal, oriented_point_1_expr7, (arguments, 1), range(oriented_point_1, 2879, 4, 74, 74), null).
%sub_line_test_2 - org.apache.commons.math3.geometry.euclidean.twod.SubLineTest
literal(sub_line_test_2_literal1, number_literal, sub_line_test_2_expr2, (arguments, 0), range(sub_line_test_2, 7140, 1, 149, 149), 0).
literal(sub_line_test_2_literal2, number_literal, sub_line_test_2_expr2, (arguments, 1), range(sub_line_test_2, 7143, 1, 149, 149), 1).
literal(sub_line_test_2_literal3, number_literal, sub_line_test_2_expr3, (arguments, 0), range(sub_line_test_2, 7160, 1, 149, 149), 0).
literal(sub_line_test_2_literal4, number_literal, sub_line_test_2_expr3, (arguments, 1), range(sub_line_test_2, 7163, 1, 149, 149), 2).
literal(sub_line_test_2_literal5, number_literal, sub_line_test_2_expr5, (arguments, 0), range(sub_line_test_2, 7222, 2, 150, 150), 66).
literal(sub_line_test_2_literal6, number_literal, sub_line_test_2_expr5, (arguments, 1), range(sub_line_test_2, 7226, 1, 150, 150), 3).
literal(sub_line_test_2_literal7, number_literal, sub_line_test_2_expr6, (arguments, 0), range(sub_line_test_2, 7243, 2, 150, 150), 66).
literal(sub_line_test_2_literal8, number_literal, sub_line_test_2_expr6, (arguments, 1), range(sub_line_test_2, 7247, 1, 150, 150), 4).
literal(sub_line_test_2_literal9, boolean_literal, sub_line_test_2_expr8, (arguments, 1), range(sub_line_test_2, 7302, 4, 151, 151), true).
%abstract_sub_hyperplane_1 - org.apache.commons.math3.geometry.partitioning.AbstractSubHyperplane
%sub_line_test_1 - org.apache.commons.math3.geometry.euclidean.threed.SubLineTest
literal(sub_line_test_1_literal1, number_literal, sub_line_test_1_expr2, (arguments, 0), range(sub_line_test_1, 8454, 1, 158, 158), 1).
literal(sub_line_test_1_literal2, number_literal, sub_line_test_1_expr2, (arguments, 1), range(sub_line_test_1, 8457, 1, 158, 158), 1).
literal(sub_line_test_1_literal3, number_literal, sub_line_test_1_expr2, (arguments, 2), range(sub_line_test_1, 8460, 1, 158, 158), 1).
literal(sub_line_test_1_literal4, number_literal, sub_line_test_1_expr3, (arguments, 0), range(sub_line_test_1, 8477, 3, 158, 158), 1.5).
literal(sub_line_test_1_literal5, number_literal, sub_line_test_1_expr3, (arguments, 1), range(sub_line_test_1, 8482, 1, 158, 158), 1).
literal(sub_line_test_1_literal6, number_literal, sub_line_test_1_expr3, (arguments, 2), range(sub_line_test_1, 8485, 1, 158, 158), 1).
literal(sub_line_test_1_literal7, number_literal, sub_line_test_1_expr5, (arguments, 0), range(sub_line_test_1, 8538, 1, 159, 159), 2).
literal(sub_line_test_1_literal8, number_literal, sub_line_test_1_expr5, (arguments, 1), range(sub_line_test_1, 8541, 1, 159, 159), 3).
literal(sub_line_test_1_literal9, number_literal, sub_line_test_1_expr5, (arguments, 2), range(sub_line_test_1, 8544, 1, 159, 159), 0).
literal(sub_line_test_1_literal10, number_literal, sub_line_test_1_expr6, (arguments, 0), range(sub_line_test_1, 8561, 1, 159, 159), 2).
literal(sub_line_test_1_literal11, number_literal, sub_line_test_1_expr6, (arguments, 1), range(sub_line_test_1, 8564, 1, 159, 159), 3).
literal(sub_line_test_1_literal12, number_literal, sub_line_test_1_expr6, (arguments, 2), range(sub_line_test_1, 8567, 3, 159, 159), 0.5).
literal(sub_line_test_1_literal13, boolean_literal, sub_line_test_1_expr8, (arguments, 1), range(sub_line_test_1, 8624, 4, 160, 160), true).
%bsptree_1 - org.apache.commons.math3.geometry.partitioning.BSPTree
literal(bsptree_1_literal1, null_literal, bsptree_1_expr1, right_hand_side, range(bsptree_1, 3766, 4, 94, 94), null).
literal(bsptree_1_literal2, null_literal, bsptree_1_expr2, right_hand_side, range(bsptree_1, 3789, 4, 95, 95), null).
literal(bsptree_1_literal3, null_literal, bsptree_1_expr3, right_hand_side, range(bsptree_1, 3812, 4, 96, 96), null).
literal(bsptree_1_literal4, null_literal, bsptree_1_expr4, right_hand_side, range(bsptree_1, 3835, 4, 97, 97), null).
literal(bsptree_1_literal5, null_literal, bsptree_1_expr17, right_hand_side, range(bsptree_1, 4791, 4, 119, 119), null).
%vector1_d_1 - org.apache.commons.math3.geometry.euclidean.oned.Vector1D
literal(vector1_d_1_literal1, number_literal, vector1_d_1_expr1, (arguments, 0), range(vector1_d_1, 1504, 3, 36, 36), 0.0).
literal(vector1_d_1_literal2, number_literal, vector1_d_1_expr2, (arguments, 0), range(vector1_d_1, 1598, 3, 39, 39), 1.0).
%vector3_d_1 - org.apache.commons.math3.geometry.euclidean.threed.Vector3D
literal(vector3_d_1_literal1, number_literal, vector3_d_1_expr1, (arguments, 0), range(vector3_d_1, 1709, 1, 41, 41), 0).
literal(vector3_d_1_literal2, number_literal, vector3_d_1_expr1, (arguments, 1), range(vector3_d_1, 1712, 1, 41, 41), 0).
literal(vector3_d_1_literal3, number_literal, vector3_d_1_expr1, (arguments, 2), range(vector3_d_1, 1715, 1, 41, 41), 0).
literal(vector3_d_1_literal4, number_literal, vector3_d_1_expr2, (arguments, 0), range(vector3_d_1, 1833, 1, 44, 44), 1).
literal(vector3_d_1_literal5, number_literal, vector3_d_1_expr2, (arguments, 1), range(vector3_d_1, 1836, 1, 44, 44), 0).
literal(vector3_d_1_literal6, number_literal, vector3_d_1_expr2, (arguments, 2), range(vector3_d_1, 1839, 1, 44, 44), 0).
literal(vector3_d_1_literal9, number_literal, vector3_d_1_expr4, operand, range(vector3_d_1, 1976, 1, 47, 47), 1).
literal(vector3_d_1_literal7, number_literal, vector3_d_1_expr3, (arguments, 1), range(vector3_d_1, 1979, 1, 47, 47), 0).
literal(vector3_d_1_literal8, number_literal, vector3_d_1_expr3, (arguments, 2), range(vector3_d_1, 1982, 1, 47, 47), 0).
literal(vector3_d_1_literal10, number_literal, vector3_d_1_expr5, (arguments, 0), range(vector3_d_1, 2101, 1, 50, 50), 0).
literal(vector3_d_1_literal11, number_literal, vector3_d_1_expr5, (arguments, 1), range(vector3_d_1, 2104, 1, 50, 50), 1).
literal(vector3_d_1_literal12, number_literal, vector3_d_1_expr5, (arguments, 2), range(vector3_d_1, 2107, 1, 50, 50), 0).
literal(vector3_d_1_literal13, number_literal, vector3_d_1_expr6, (arguments, 0), range(vector3_d_1, 2244, 1, 53, 53), 0).
literal(vector3_d_1_literal15, number_literal, vector3_d_1_expr7, operand, range(vector3_d_1, 2248, 1, 53, 53), 1).
literal(vector3_d_1_literal14, number_literal, vector3_d_1_expr6, (arguments, 2), range(vector3_d_1, 2251, 1, 53, 53), 0).
literal(vector3_d_1_literal16, number_literal, vector3_d_1_expr8, (arguments, 0), range(vector3_d_1, 2369, 1, 56, 56), 0).
literal(vector3_d_1_literal17, number_literal, vector3_d_1_expr8, (arguments, 1), range(vector3_d_1, 2372, 1, 56, 56), 0).
literal(vector3_d_1_literal18, number_literal, vector3_d_1_expr8, (arguments, 2), range(vector3_d_1, 2375, 1, 56, 56), 1).
literal(vector3_d_1_literal19, number_literal, vector3_d_1_expr9, (arguments, 0), range(vector3_d_1, 2512, 1, 59, 59), 0).
literal(vector3_d_1_literal20, number_literal, vector3_d_1_expr9, (arguments, 1), range(vector3_d_1, 2515, 1, 59, 59), 0).
literal(vector3_d_1_literal21, number_literal, vector3_d_1_expr10, operand, range(vector3_d_1, 2519, 1, 59, 59), 1).

%%% Other Code Entities
%line_1 - org.apache.commons.math3.geometry.euclidean.threed.Line
code(line_1_code1, compilation_unit, range(line_1, 0, 8422, 1, -1)).
code(line_1_code2, type_declaration, line_1_code1, (types, 0), range(line_1, 1416, 7005, 29, 227)).
code(line_1_code3, method_declaration, line_1_code2, (body_declarations, 2), range(line_1, 2078, 403, 49, 56)).
code(line_1_code4, modifier, line_1_code3, (modifiers, 0), range(line_1, 2365, 6, 54, 54)).
code(line_1_code6, modifier, line_1_code5, (modifiers, 0), range(line_1, 2377, 5, 54, 54)).
code(line_1_code5, single_variable_declaration, line_1_code3, (parameters, 0), range(line_1, 2377, 17, 54, 54)).
code(line_1_code7, simple_type, line_1_code5, type, range(line_1, 2383, 8, 54, 54)).
code(line_1_code9, modifier, line_1_code8, (modifiers, 0), range(line_1, 2396, 5, 54, 54)).
code(line_1_code8, single_variable_declaration, line_1_code3, (parameters, 1), range(line_1, 2396, 17, 54, 54)).
code(line_1_code10, simple_type, line_1_code8, type, range(line_1, 2402, 8, 54, 54)).
code(line_1_code11, simple_type, line_1_code3, (thrown_exception_types, 0), range(line_1, 2422, 28, 54, 54)).
code(line_1_code12, method_declaration, line_1_code2, (body_declarations, 4), range(line_1, 2787, 768, 68, 81)).
code(line_1_code13, modifier, line_1_stmt2, (modifiers, 0), range(line_1, 3194, 5, 74, 74)).
code(line_1_code14, simple_type, line_1_stmt2, type, range(line_1, 3200, 8, 74, 74)).
code(line_1_code15, variable_declaration_fragment, line_1_stmt2, (fragments, 0), range(line_1, 3209, 23, 74, 74)).
code(line_1_code16, modifier, line_1_stmt3, (modifiers, 0), range(line_1, 3242, 5, 75, 75)).
code(line_1_code17, primitive_type, line_1_stmt3, type, range(line_1, 3248, 6, 75, 75)).
code(line_1_code18, variable_declaration_fragment, line_1_stmt3, (fragments, 0), range(line_1, 3255, 25, 75, 75)).
code(line_1_code19, simple_type, line_1_expr7, type, range(line_1, 3429, 8, 79, 79)).
code(line_1_code20, simple_type, line_1_expr12, type, range(line_1, 3493, 8, 80, 80)).
code(line_1_code21, method_declaration, line_1_code2, (body_declarations, 8), range(line_1, 4165, 404, 106, 115)).
code(line_1_code22, method_declaration, line_1_code2, (body_declarations, 10), range(line_1, 4865, 192, 125, 130)).
code(line_1_code23, simple_type, line_1_expr18, type, range(line_1, 5011, 8, 129, 129)).
code(line_1_code24, simple_type, line_1_expr20, type, range(line_1, 5033, 8, 129, 129)).
code(line_1_code25, method_declaration, line_1_code2, (body_declarations, 13), range(line_1, 5805, 219, 151, 157)).
code(line_1_code26, method_declaration, line_1_code2, (body_declarations, 14), range(line_1, 6030, 362, 159, 167)).
code(line_1_code27, modifier, line_1_stmt10, (modifiers, 0), range(line_1, 6236, 5, 164, 164)).
code(line_1_code28, simple_type, line_1_stmt10, type, range(line_1, 6242, 8, 164, 164)).
code(line_1_code29, variable_declaration_fragment, line_1_stmt10, (fragments, 0), range(line_1, 6251, 20, 164, 164)).
code(line_1_code30, modifier, line_1_stmt11, (modifiers, 0), range(line_1, 6281, 5, 165, 165)).
code(line_1_code31, simple_type, line_1_stmt11, type, range(line_1, 6287, 8, 165, 165)).
code(line_1_code32, variable_declaration_fragment, line_1_stmt11, (fragments, 0), range(line_1, 6296, 61, 165, 165)).
code(line_1_code33, simple_type, line_1_expr24, type, range(line_1, 6304, 8, 165, 165)).
code(line_1_code34, method_declaration, line_1_code2, (body_declarations, 16), range(line_1, 7104, 717, 189, 208)).
code(line_1_code35, modifier, line_1_stmt13, (modifiers, 0), range(line_1, 7351, 5, 195, 195)).
code(line_1_code36, primitive_type, line_1_stmt13, type, range(line_1, 7357, 6, 195, 195)).
code(line_1_code37, variable_declaration_fragment, line_1_stmt13, (fragments, 0), range(line_1, 7364, 42, 195, 195)).
code(line_1_code38, modifier, line_1_stmt14, (modifiers, 0), range(line_1, 7416, 5, 196, 196)).
code(line_1_code39, primitive_type, line_1_stmt14, type, range(line_1, 7422, 6, 196, 196)).
code(line_1_code40, variable_declaration_fragment, line_1_stmt14, (fragments, 0), range(line_1, 7429, 17, 196, 196)).
code(line_1_code41, modifier, line_1_stmt16, (modifiers, 0), range(line_1, 7567, 5, 202, 202)).
code(line_1_code42, simple_type, line_1_stmt16, type, range(line_1, 7573, 8, 202, 202)).
code(line_1_code43, variable_declaration_fragment, line_1_stmt16, (fragments, 0), range(line_1, 7582, 33, 202, 202)).
code(line_1_code44, modifier, line_1_stmt17, (modifiers, 0), range(line_1, 7625, 5, 203, 203)).
code(line_1_code45, primitive_type, line_1_stmt17, type, range(line_1, 7631, 6, 203, 203)).
code(line_1_code46, variable_declaration_fragment, line_1_stmt17, (fragments, 0), range(line_1, 7638, 39, 203, 203)).
code(line_1_code47, modifier, line_1_stmt18, (modifiers, 0), range(line_1, 7687, 5, 204, 204)).
code(line_1_code48, primitive_type, line_1_stmt18, type, range(line_1, 7693, 6, 204, 204)).
code(line_1_code49, variable_declaration_fragment, line_1_stmt18, (fragments, 0), range(line_1, 7700, 44, 204, 204)).
code(line_1_code50, simple_type, line_1_expr35, type, range(line_1, 7766, 8, 206, 206)).
code(line_1_code51, method_declaration, line_1_code2, (body_declarations, 17), range(line_1, 7827, 389, 210, 218)).
code(line_1_code52, modifier, line_1_stmt20, (modifiers, 0), range(line_1, 8110, 5, 216, 216)).
code(line_1_code53, simple_type, line_1_stmt20, type, range(line_1, 8116, 8, 216, 216)).
code(line_1_code54, variable_declaration_fragment, line_1_stmt20, (fragments, 0), range(line_1, 8125, 28, 216, 216)).
%line_2 - org.apache.commons.math3.geometry.euclidean.twod.Line
code(line_2_code1, compilation_unit, range(line_2, 0, 16690, 1, -1)).
code(line_2_code2, type_declaration, line_2_code1, (types, 0), range(line_2, 1724, 14965, 35, 427)).
code(line_2_code3, method_declaration, line_2_code2, (body_declarations, 4), range(line_2, 3457, 234, 76, 83)).
code(line_2_code4, modifier, line_2_code3, (modifiers, 0), range(line_2, 3611, 6, 81, 81)).
code(line_2_code6, modifier, line_2_code5, (modifiers, 0), range(line_2, 3623, 5, 81, 81)).
code(line_2_code5, single_variable_declaration, line_2_code3, (parameters, 0), range(line_2, 3623, 17, 81, 81)).
code(line_2_code7, simple_type, line_2_code5, type, range(line_2, 3629, 8, 81, 81)).
code(line_2_code8, single_variable_declaration, line_2_code3, (parameters, 1), range(line_2, 3642, 17, 81, 81)).
code(line_2_code9, modifier, line_2_code8, (modifiers, 0), range(line_2, 3642, 5, 81, 81)).
code(line_2_code10, simple_type, line_2_code8, type, range(line_2, 3648, 8, 81, 81)).
code(line_2_code11, method_declaration, line_2_code2, (body_declarations, 9), range(line_2, 4978, 810, 123, 143)).
code(line_2_code12, modifier, line_2_stmt2, (modifiers, 0), range(line_2, 5216, 5, 129, 129)).
code(line_2_code13, primitive_type, line_2_stmt2, type, range(line_2, 5222, 6, 129, 129)).
code(line_2_code14, variable_declaration_fragment, line_2_stmt2, (fragments, 0), range(line_2, 5229, 26, 129, 129)).
code(line_2_code15, modifier, line_2_stmt3, (modifiers, 0), range(line_2, 5265, 5, 130, 130)).
code(line_2_code16, primitive_type, line_2_stmt3, type, range(line_2, 5271, 6, 130, 130)).
code(line_2_code17, variable_declaration_fragment, line_2_stmt3, (fragments, 0), range(line_2, 5278, 26, 130, 130)).
code(line_2_code18, modifier, line_2_stmt4, (modifiers, 0), range(line_2, 5314, 5, 131, 131)).
code(line_2_code19, primitive_type, line_2_stmt4, type, range(line_2, 5320, 6, 131, 131)).
code(line_2_code20, variable_declaration_fragment, line_2_stmt4, (fragments, 0), range(line_2, 5327, 26, 131, 131)).
code(line_2_code21, method_declaration, line_2_code2, (body_declarations, 13), range(line_2, 7025, 196, 179, 183)).
code(line_2_code22, simple_type, line_2_stmt10, type, range(line_2, 7120, 8, 181, 181)).
code(line_2_code23, variable_declaration_fragment, line_2_stmt10, (fragments, 0), range(line_2, 7129, 21, 181, 181)).
code(line_2_code24, simple_type, line_2_expr29, type, range(line_2, 7135, 8, 181, 181)).
code(line_2_code25, simple_type, line_2_expr30, type, range(line_2, 7171, 8, 182, 182)).
code(line_2_code26, method_declaration, line_2_code2, (body_declarations, 15), range(line_2, 7512, 593, 192, 204)).
code(line_2_code27, modifier, line_2_stmt12, (modifiers, 0), range(line_2, 7797, 5, 198, 198)).
code(line_2_code28, primitive_type, line_2_stmt12, type, range(line_2, 7803, 6, 198, 198)).
code(line_2_code29, variable_declaration_fragment, line_2_stmt12, (fragments, 0), range(line_2, 7810, 37, 198, 198)).
%math_arrays_1 - org.apache.commons.math3.util.MathArrays
code(math_arrays_1_code1, compilation_unit, range(math_arrays_1, 0, 54908, 1, -1)).
code(math_arrays_1_code2, type_declaration, math_arrays_1_code1, (types, 0), range(math_arrays_1, 1720, 53187, 39, 1403)).
code(math_arrays_1_code3, method_declaration, math_arrays_1_code2, (body_declarations, 33), range(math_arrays_1, 30391, 3926, 860, 935)).
code(math_arrays_1_code4, modifier, math_arrays_1_stmt1, (modifiers, 0), range(math_arrays_1, 32497, 5, 896, 896)).
code(math_arrays_1_code5, primitive_type, math_arrays_1_stmt1, type, range(math_arrays_1, 32503, 6, 896, 896)).
code(math_arrays_1_code6, variable_declaration_fragment, math_arrays_1_stmt1, (fragments, 0), range(math_arrays_1, 32510, 30, 896, 896)).
code(math_arrays_1_code7, modifier, math_arrays_1_stmt2, (modifiers, 0), range(math_arrays_1, 32550, 5, 897, 897)).
code(math_arrays_1_code8, primitive_type, math_arrays_1_stmt2, type, range(math_arrays_1, 32556, 6, 897, 897)).
code(math_arrays_1_code9, variable_declaration_fragment, math_arrays_1_stmt2, (fragments, 0), range(math_arrays_1, 32563, 29, 897, 897)).
code(math_arrays_1_code10, modifier, math_arrays_1_stmt3, (modifiers, 0), range(math_arrays_1, 32602, 5, 898, 898)).
code(math_arrays_1_code11, primitive_type, math_arrays_1_stmt3, type, range(math_arrays_1, 32608, 6, 898, 898)).
code(math_arrays_1_code12, variable_declaration_fragment, math_arrays_1_stmt3, (fragments, 0), range(math_arrays_1, 32615, 24, 898, 898)).
code(math_arrays_1_code13, modifier, math_arrays_1_stmt4, (modifiers, 0), range(math_arrays_1, 32649, 5, 899, 899)).
code(math_arrays_1_code14, primitive_type, math_arrays_1_stmt4, type, range(math_arrays_1, 32655, 6, 899, 899)).
code(math_arrays_1_code15, variable_declaration_fragment, math_arrays_1_stmt4, (fragments, 0), range(math_arrays_1, 32662, 30, 899, 899)).
code(math_arrays_1_code16, modifier, math_arrays_1_stmt5, (modifiers, 0), range(math_arrays_1, 32702, 5, 900, 900)).
code(math_arrays_1_code17, primitive_type, math_arrays_1_stmt5, type, range(math_arrays_1, 32708, 6, 900, 900)).
code(math_arrays_1_code18, variable_declaration_fragment, math_arrays_1_stmt5, (fragments, 0), range(math_arrays_1, 32715, 29, 900, 900)).
code(math_arrays_1_code19, modifier, math_arrays_1_stmt6, (modifiers, 0), range(math_arrays_1, 32754, 5, 901, 901)).
code(math_arrays_1_code20, primitive_type, math_arrays_1_stmt6, type, range(math_arrays_1, 32760, 6, 901, 901)).
code(math_arrays_1_code21, variable_declaration_fragment, math_arrays_1_stmt6, (fragments, 0), range(math_arrays_1, 32767, 24, 901, 901)).
code(math_arrays_1_code22, modifier, math_arrays_1_stmt7, (modifiers, 0), range(math_arrays_1, 32845, 5, 904, 904)).
code(math_arrays_1_code23, primitive_type, math_arrays_1_stmt7, type, range(math_arrays_1, 32851, 6, 904, 904)).
code(math_arrays_1_code24, variable_declaration_fragment, math_arrays_1_stmt7, (fragments, 0), range(math_arrays_1, 32858, 20, 904, 904)).
code(math_arrays_1_code25, modifier, math_arrays_1_stmt8, (modifiers, 0), range(math_arrays_1, 32888, 5, 905, 905)).
code(math_arrays_1_code26, primitive_type, math_arrays_1_stmt8, type, range(math_arrays_1, 32894, 6, 905, 905)).
code(math_arrays_1_code27, variable_declaration_fragment, math_arrays_1_stmt8, (fragments, 0), range(math_arrays_1, 32901, 96, 905, 905)).
code(math_arrays_1_code28, modifier, math_arrays_1_stmt9, (modifiers, 0), range(math_arrays_1, 33058, 5, 908, 908)).
code(math_arrays_1_code29, primitive_type, math_arrays_1_stmt9, type, range(math_arrays_1, 33064, 6, 908, 908)).
code(math_arrays_1_code30, variable_declaration_fragment, math_arrays_1_stmt9, (fragments, 0), range(math_arrays_1, 33071, 30, 908, 908)).
code(math_arrays_1_code31, modifier, math_arrays_1_stmt10, (modifiers, 0), range(math_arrays_1, 33111, 5, 909, 909)).
code(math_arrays_1_code32, primitive_type, math_arrays_1_stmt10, type, range(math_arrays_1, 33117, 6, 909, 909)).
code(math_arrays_1_code33, variable_declaration_fragment, math_arrays_1_stmt10, (fragments, 0), range(math_arrays_1, 33124, 29, 909, 909)).
code(math_arrays_1_code34, modifier, math_arrays_1_stmt11, (modifiers, 0), range(math_arrays_1, 33163, 5, 910, 910)).
code(math_arrays_1_code35, primitive_type, math_arrays_1_stmt11, type, range(math_arrays_1, 33169, 6, 910, 910)).
code(math_arrays_1_code36, variable_declaration_fragment, math_arrays_1_stmt11, (fragments, 0), range(math_arrays_1, 33176, 24, 910, 910)).
code(math_arrays_1_code37, modifier, math_arrays_1_stmt12, (modifiers, 0), range(math_arrays_1, 33210, 5, 911, 911)).
code(math_arrays_1_code38, primitive_type, math_arrays_1_stmt12, type, range(math_arrays_1, 33216, 6, 911, 911)).
code(math_arrays_1_code39, variable_declaration_fragment, math_arrays_1_stmt12, (fragments, 0), range(math_arrays_1, 33223, 30, 911, 911)).
code(math_arrays_1_code40, modifier, math_arrays_1_stmt13, (modifiers, 0), range(math_arrays_1, 33263, 5, 912, 912)).
code(math_arrays_1_code41, primitive_type, math_arrays_1_stmt13, type, range(math_arrays_1, 33269, 6, 912, 912)).
code(math_arrays_1_code42, variable_declaration_fragment, math_arrays_1_stmt13, (fragments, 0), range(math_arrays_1, 33276, 29, 912, 912)).
code(math_arrays_1_code43, modifier, math_arrays_1_stmt14, (modifiers, 0), range(math_arrays_1, 33315, 5, 913, 913)).
code(math_arrays_1_code44, primitive_type, math_arrays_1_stmt14, type, range(math_arrays_1, 33321, 6, 913, 913)).
code(math_arrays_1_code45, variable_declaration_fragment, math_arrays_1_stmt14, (fragments, 0), range(math_arrays_1, 33328, 24, 913, 913)).
code(math_arrays_1_code46, modifier, math_arrays_1_stmt15, (modifiers, 0), range(math_arrays_1, 33406, 5, 916, 916)).
code(math_arrays_1_code47, primitive_type, math_arrays_1_stmt15, type, range(math_arrays_1, 33412, 6, 916, 916)).
code(math_arrays_1_code48, variable_declaration_fragment, math_arrays_1_stmt15, (fragments, 0), range(math_arrays_1, 33419, 20, 916, 916)).
code(math_arrays_1_code49, modifier, math_arrays_1_stmt16, (modifiers, 0), range(math_arrays_1, 33449, 5, 917, 917)).
code(math_arrays_1_code50, primitive_type, math_arrays_1_stmt16, type, range(math_arrays_1, 33455, 6, 917, 917)).
code(math_arrays_1_code51, variable_declaration_fragment, math_arrays_1_stmt16, (fragments, 0), range(math_arrays_1, 33462, 96, 917, 917)).
code(math_arrays_1_code52, modifier, math_arrays_1_stmt17, (modifiers, 0), range(math_arrays_1, 33616, 5, 920, 920)).
code(math_arrays_1_code53, primitive_type, math_arrays_1_stmt17, type, range(math_arrays_1, 33622, 6, 920, 920)).
code(math_arrays_1_code54, variable_declaration_fragment, math_arrays_1_stmt17, (fragments, 0), range(math_arrays_1, 33629, 34, 920, 920)).
code(math_arrays_1_code55, modifier, math_arrays_1_stmt18, (modifiers, 0), range(math_arrays_1, 33673, 5, 921, 921)).
code(math_arrays_1_code56, primitive_type, math_arrays_1_stmt18, type, range(math_arrays_1, 33679, 6, 921, 921)).
code(math_arrays_1_code57, variable_declaration_fragment, math_arrays_1_stmt18, (fragments, 0), range(math_arrays_1, 33686, 32, 921, 921)).
code(math_arrays_1_code58, modifier, math_arrays_1_stmt19, (modifiers, 0), range(math_arrays_1, 33728, 5, 922, 922)).
code(math_arrays_1_code59, primitive_type, math_arrays_1_stmt19, type, range(math_arrays_1, 33734, 6, 922, 922)).
code(math_arrays_1_code60, variable_declaration_fragment, math_arrays_1_stmt19, (fragments, 0), range(math_arrays_1, 33741, 72, 922, 922)).
code(math_arrays_1_code61, primitive_type, math_arrays_1_stmt20, type, range(math_arrays_1, 33977, 6, 926, 926)).
code(math_arrays_1_code62, variable_declaration_fragment, math_arrays_1_stmt20, (fragments, 0), range(math_arrays_1, 33984, 49, 926, 926)).
code(math_arrays_1_code63, method_declaration, math_arrays_1_code2, (body_declarations, 34), range(math_arrays_1, 34323, 5019, 937, 1032)).
code(math_arrays_1_code64, modifier, math_arrays_1_stmt23, (modifiers, 0), range(math_arrays_1, 36663, 5, 976, 976)).
code(math_arrays_1_code65, primitive_type, math_arrays_1_stmt23, type, range(math_arrays_1, 36669, 6, 976, 976)).
code(math_arrays_1_code66, variable_declaration_fragment, math_arrays_1_stmt23, (fragments, 0), range(math_arrays_1, 36676, 30, 976, 976)).
code(math_arrays_1_code67, modifier, math_arrays_1_stmt24, (modifiers, 0), range(math_arrays_1, 36716, 5, 977, 977)).
code(math_arrays_1_code68, primitive_type, math_arrays_1_stmt24, type, range(math_arrays_1, 36722, 6, 977, 977)).
code(math_arrays_1_code69, variable_declaration_fragment, math_arrays_1_stmt24, (fragments, 0), range(math_arrays_1, 36729, 29, 977, 977)).
code(math_arrays_1_code70, modifier, math_arrays_1_stmt25, (modifiers, 0), range(math_arrays_1, 36768, 5, 978, 978)).
code(math_arrays_1_code71, primitive_type, math_arrays_1_stmt25, type, range(math_arrays_1, 36774, 6, 978, 978)).
code(math_arrays_1_code72, variable_declaration_fragment, math_arrays_1_stmt25, (fragments, 0), range(math_arrays_1, 36781, 24, 978, 978)).
code(math_arrays_1_code73, modifier, math_arrays_1_stmt26, (modifiers, 0), range(math_arrays_1, 36815, 5, 979, 979)).
code(math_arrays_1_code74, primitive_type, math_arrays_1_stmt26, type, range(math_arrays_1, 36821, 6, 979, 979)).
code(math_arrays_1_code75, variable_declaration_fragment, math_arrays_1_stmt26, (fragments, 0), range(math_arrays_1, 36828, 30, 979, 979)).
code(math_arrays_1_code76, modifier, math_arrays_1_stmt27, (modifiers, 0), range(math_arrays_1, 36868, 5, 980, 980)).
code(math_arrays_1_code77, primitive_type, math_arrays_1_stmt27, type, range(math_arrays_1, 36874, 6, 980, 980)).
code(math_arrays_1_code78, variable_declaration_fragment, math_arrays_1_stmt27, (fragments, 0), range(math_arrays_1, 36881, 29, 980, 980)).
code(math_arrays_1_code79, modifier, math_arrays_1_stmt28, (modifiers, 0), range(math_arrays_1, 36920, 5, 981, 981)).
code(math_arrays_1_code80, primitive_type, math_arrays_1_stmt28, type, range(math_arrays_1, 36926, 6, 981, 981)).
code(math_arrays_1_code81, variable_declaration_fragment, math_arrays_1_stmt28, (fragments, 0), range(math_arrays_1, 36933, 24, 981, 981)).
code(math_arrays_1_code82, modifier, math_arrays_1_stmt29, (modifiers, 0), range(math_arrays_1, 37011, 5, 984, 984)).
code(math_arrays_1_code83, primitive_type, math_arrays_1_stmt29, type, range(math_arrays_1, 37017, 6, 984, 984)).
code(math_arrays_1_code84, variable_declaration_fragment, math_arrays_1_stmt29, (fragments, 0), range(math_arrays_1, 37024, 20, 984, 984)).
code(math_arrays_1_code85, modifier, math_arrays_1_stmt30, (modifiers, 0), range(math_arrays_1, 37054, 5, 985, 985)).
code(math_arrays_1_code86, primitive_type, math_arrays_1_stmt30, type, range(math_arrays_1, 37060, 6, 985, 985)).
code(math_arrays_1_code87, variable_declaration_fragment, math_arrays_1_stmt30, (fragments, 0), range(math_arrays_1, 37067, 96, 985, 985)).
code(math_arrays_1_code88, modifier, math_arrays_1_stmt31, (modifiers, 0), range(math_arrays_1, 37224, 5, 988, 988)).
code(math_arrays_1_code89, primitive_type, math_arrays_1_stmt31, type, range(math_arrays_1, 37230, 6, 988, 988)).
code(math_arrays_1_code90, variable_declaration_fragment, math_arrays_1_stmt31, (fragments, 0), range(math_arrays_1, 37237, 30, 988, 988)).
code(math_arrays_1_code91, modifier, math_arrays_1_stmt32, (modifiers, 0), range(math_arrays_1, 37277, 5, 989, 989)).
code(math_arrays_1_code92, primitive_type, math_arrays_1_stmt32, type, range(math_arrays_1, 37283, 6, 989, 989)).
code(math_arrays_1_code93, variable_declaration_fragment, math_arrays_1_stmt32, (fragments, 0), range(math_arrays_1, 37290, 29, 989, 989)).
code(math_arrays_1_code94, modifier, math_arrays_1_stmt33, (modifiers, 0), range(math_arrays_1, 37329, 5, 990, 990)).
code(math_arrays_1_code95, primitive_type, math_arrays_1_stmt33, type, range(math_arrays_1, 37335, 6, 990, 990)).
code(math_arrays_1_code96, variable_declaration_fragment, math_arrays_1_stmt33, (fragments, 0), range(math_arrays_1, 37342, 24, 990, 990)).
code(math_arrays_1_code97, modifier, math_arrays_1_stmt34, (modifiers, 0), range(math_arrays_1, 37376, 5, 991, 991)).
code(math_arrays_1_code98, primitive_type, math_arrays_1_stmt34, type, range(math_arrays_1, 37382, 6, 991, 991)).
code(math_arrays_1_code99, variable_declaration_fragment, math_arrays_1_stmt34, (fragments, 0), range(math_arrays_1, 37389, 30, 991, 991)).
code(math_arrays_1_code100, modifier, math_arrays_1_stmt35, (modifiers, 0), range(math_arrays_1, 37429, 5, 992, 992)).
code(math_arrays_1_code101, primitive_type, math_arrays_1_stmt35, type, range(math_arrays_1, 37435, 6, 992, 992)).
code(math_arrays_1_code102, variable_declaration_fragment, math_arrays_1_stmt35, (fragments, 0), range(math_arrays_1, 37442, 29, 992, 992)).
code(math_arrays_1_code103, modifier, math_arrays_1_stmt36, (modifiers, 0), range(math_arrays_1, 37481, 5, 993, 993)).
code(math_arrays_1_code104, primitive_type, math_arrays_1_stmt36, type, range(math_arrays_1, 37487, 6, 993, 993)).
code(math_arrays_1_code105, variable_declaration_fragment, math_arrays_1_stmt36, (fragments, 0), range(math_arrays_1, 37494, 24, 993, 993)).
code(math_arrays_1_code106, modifier, math_arrays_1_stmt37, (modifiers, 0), range(math_arrays_1, 37572, 5, 996, 996)).
code(math_arrays_1_code107, primitive_type, math_arrays_1_stmt37, type, range(math_arrays_1, 37578, 6, 996, 996)).
code(math_arrays_1_code108, variable_declaration_fragment, math_arrays_1_stmt37, (fragments, 0), range(math_arrays_1, 37585, 20, 996, 996)).
code(math_arrays_1_code109, modifier, math_arrays_1_stmt38, (modifiers, 0), range(math_arrays_1, 37615, 5, 997, 997)).
code(math_arrays_1_code110, primitive_type, math_arrays_1_stmt38, type, range(math_arrays_1, 37621, 6, 997, 997)).
code(math_arrays_1_code111, variable_declaration_fragment, math_arrays_1_stmt38, (fragments, 0), range(math_arrays_1, 37628, 96, 997, 997)).
code(math_arrays_1_code112, modifier, math_arrays_1_stmt39, (modifiers, 0), range(math_arrays_1, 37785, 5, 1000, 1000)).
code(math_arrays_1_code113, primitive_type, math_arrays_1_stmt39, type, range(math_arrays_1, 37791, 6, 1000, 1000)).
code(math_arrays_1_code114, variable_declaration_fragment, math_arrays_1_stmt39, (fragments, 0), range(math_arrays_1, 37798, 30, 1000, 1000)).
code(math_arrays_1_code115, modifier, math_arrays_1_stmt40, (modifiers, 0), range(math_arrays_1, 37838, 5, 1001, 1001)).
code(math_arrays_1_code116, primitive_type, math_arrays_1_stmt40, type, range(math_arrays_1, 37844, 6, 1001, 1001)).
code(math_arrays_1_code117, variable_declaration_fragment, math_arrays_1_stmt40, (fragments, 0), range(math_arrays_1, 37851, 29, 1001, 1001)).
code(math_arrays_1_code118, modifier, math_arrays_1_stmt41, (modifiers, 0), range(math_arrays_1, 37890, 5, 1002, 1002)).
code(math_arrays_1_code119, primitive_type, math_arrays_1_stmt41, type, range(math_arrays_1, 37896, 6, 1002, 1002)).
code(math_arrays_1_code120, variable_declaration_fragment, math_arrays_1_stmt41, (fragments, 0), range(math_arrays_1, 37903, 24, 1002, 1002)).
code(math_arrays_1_code121, modifier, math_arrays_1_stmt42, (modifiers, 0), range(math_arrays_1, 37937, 5, 1003, 1003)).
code(math_arrays_1_code122, primitive_type, math_arrays_1_stmt42, type, range(math_arrays_1, 37943, 6, 1003, 1003)).
code(math_arrays_1_code123, variable_declaration_fragment, math_arrays_1_stmt42, (fragments, 0), range(math_arrays_1, 37950, 30, 1003, 1003)).
code(math_arrays_1_code124, modifier, math_arrays_1_stmt43, (modifiers, 0), range(math_arrays_1, 37990, 5, 1004, 1004)).
code(math_arrays_1_code125, primitive_type, math_arrays_1_stmt43, type, range(math_arrays_1, 37996, 6, 1004, 1004)).
code(math_arrays_1_code126, variable_declaration_fragment, math_arrays_1_stmt43, (fragments, 0), range(math_arrays_1, 38003, 29, 1004, 1004)).
code(math_arrays_1_code127, modifier, math_arrays_1_stmt44, (modifiers, 0), range(math_arrays_1, 38042, 5, 1005, 1005)).
code(math_arrays_1_code128, primitive_type, math_arrays_1_stmt44, type, range(math_arrays_1, 38048, 6, 1005, 1005)).
code(math_arrays_1_code129, variable_declaration_fragment, math_arrays_1_stmt44, (fragments, 0), range(math_arrays_1, 38055, 24, 1005, 1005)).
code(math_arrays_1_code130, modifier, math_arrays_1_stmt45, (modifiers, 0), range(math_arrays_1, 38133, 5, 1008, 1008)).
code(math_arrays_1_code131, primitive_type, math_arrays_1_stmt45, type, range(math_arrays_1, 38139, 6, 1008, 1008)).
code(math_arrays_1_code132, variable_declaration_fragment, math_arrays_1_stmt45, (fragments, 0), range(math_arrays_1, 38146, 20, 1008, 1008)).
code(math_arrays_1_code133, modifier, math_arrays_1_stmt46, (modifiers, 0), range(math_arrays_1, 38176, 5, 1009, 1009)).
code(math_arrays_1_code134, primitive_type, math_arrays_1_stmt46, type, range(math_arrays_1, 38182, 6, 1009, 1009)).
code(math_arrays_1_code135, variable_declaration_fragment, math_arrays_1_stmt46, (fragments, 0), range(math_arrays_1, 38189, 96, 1009, 1009)).
code(math_arrays_1_code136, modifier, math_arrays_1_stmt47, (modifiers, 0), range(math_arrays_1, 38343, 5, 1012, 1012)).
code(math_arrays_1_code137, primitive_type, math_arrays_1_stmt47, type, range(math_arrays_1, 38349, 6, 1012, 1012)).
code(math_arrays_1_code138, variable_declaration_fragment, math_arrays_1_stmt47, (fragments, 0), range(math_arrays_1, 38356, 34, 1012, 1012)).
code(math_arrays_1_code139, modifier, math_arrays_1_stmt48, (modifiers, 0), range(math_arrays_1, 38400, 5, 1013, 1013)).
code(math_arrays_1_code140, primitive_type, math_arrays_1_stmt48, type, range(math_arrays_1, 38406, 6, 1013, 1013)).
code(math_arrays_1_code141, variable_declaration_fragment, math_arrays_1_stmt48, (fragments, 0), range(math_arrays_1, 38413, 32, 1013, 1013)).
code(math_arrays_1_code142, modifier, math_arrays_1_stmt49, (modifiers, 0), range(math_arrays_1, 38455, 5, 1014, 1014)).
code(math_arrays_1_code143, primitive_type, math_arrays_1_stmt49, type, range(math_arrays_1, 38461, 6, 1014, 1014)).
code(math_arrays_1_code144, variable_declaration_fragment, math_arrays_1_stmt49, (fragments, 0), range(math_arrays_1, 38468, 72, 1014, 1014)).
code(math_arrays_1_code145, modifier, math_arrays_1_stmt50, (modifiers, 0), range(math_arrays_1, 38608, 5, 1017, 1017)).
code(math_arrays_1_code146, primitive_type, math_arrays_1_stmt50, type, range(math_arrays_1, 38614, 6, 1017, 1017)).
code(math_arrays_1_code147, variable_declaration_fragment, math_arrays_1_stmt50, (fragments, 0), range(math_arrays_1, 38621, 32, 1017, 1017)).
code(math_arrays_1_code148, modifier, math_arrays_1_stmt51, (modifiers, 0), range(math_arrays_1, 38663, 5, 1018, 1018)).
code(math_arrays_1_code149, primitive_type, math_arrays_1_stmt51, type, range(math_arrays_1, 38669, 6, 1018, 1018)).
code(math_arrays_1_code150, variable_declaration_fragment, math_arrays_1_stmt51, (fragments, 0), range(math_arrays_1, 38676, 33, 1018, 1018)).
code(math_arrays_1_code151, modifier, math_arrays_1_stmt52, (modifiers, 0), range(math_arrays_1, 38719, 5, 1019, 1019)).
code(math_arrays_1_code152, primitive_type, math_arrays_1_stmt52, type, range(math_arrays_1, 38725, 6, 1019, 1019)).
code(math_arrays_1_code153, variable_declaration_fragment, math_arrays_1_stmt52, (fragments, 0), range(math_arrays_1, 38732, 73, 1019, 1019)).
code(math_arrays_1_code154, primitive_type, math_arrays_1_stmt53, type, range(math_arrays_1, 38970, 6, 1023, 1023)).
code(math_arrays_1_code155, variable_declaration_fragment, math_arrays_1_stmt53, (fragments, 0), range(math_arrays_1, 38977, 71, 1023, 1023)).
%abstract_region_1 - org.apache.commons.math3.geometry.partitioning.AbstractRegion
code(abstract_region_1_code1, compilation_unit, range(abstract_region_1, 0, 26507, 1, -1)).
code(abstract_region_1_code2, type_declaration, abstract_region_1_code1, (types, 0), range(abstract_region_1, 1191, 25315, 30, 674)).
code(abstract_region_1_code3, method_declaration, abstract_region_1_code2, (body_declarations, 4), range(abstract_region_1, 1807, 774, 55, 69)).
code(abstract_region_1_code4, modifier, abstract_region_1_code3, (modifiers, 0), range(abstract_region_1, 2500, 9, 67, 67)).
code(abstract_region_1_code6, modifier, abstract_region_1_code5, (modifiers, 0), range(abstract_region_1, 2525, 5, 67, 67)).
code(abstract_region_1_code5, single_variable_declaration, abstract_region_1_code3, (parameters, 0), range(abstract_region_1, 2525, 21, 67, 67)).
code(abstract_region_1_code7, parameterized_type, abstract_region_1_code5, type, range(abstract_region_1, 2531, 10, 67, 67)).
code(abstract_region_1_code8, simple_type, abstract_region_1_code7, type, range(abstract_region_1, 2531, 7, 67, 67)).
code(abstract_region_1_code9, simple_type, abstract_region_1_code7, (type_arguments, 0), range(abstract_region_1, 2539, 1, 67, 67)).
%sub_line_2 - org.apache.commons.math3.geometry.euclidean.twod.SubLine
code(sub_line_2_code1, compilation_unit, range(sub_line_2, 0, 9669, 1, -1)).
code(sub_line_2_code2, type_declaration, sub_line_2_code1, (types, 0), range(sub_line_2, 1772, 7896, 36, 209)).
code(sub_line_2_code3, method_declaration, sub_line_2_code2, (body_declarations, 1), range(sub_line_2, 2276, 245, 51, 57)).
code(sub_line_2_code4, simple_type, sub_line_2_expr2, type, range(sub_line_2, 2467, 4, 56, 56)).
code(sub_line_2_code5, method_declaration, sub_line_2_code2, (body_declarations, 4), range(sub_line_2, 4218, 1706, 96, 131)).
code(sub_line_2_code6, simple_type, sub_line_2_stmt2, type, range(sub_line_2, 5179, 4, 113, 113)).
code(sub_line_2_code7, variable_declaration_fragment, sub_line_2_stmt2, (fragments, 0), range(sub_line_2, 5184, 30, 113, 113)).
code(sub_line_2_code8, simple_type, sub_line_2_expr4, type, range(sub_line_2, 5193, 4, 113, 113)).
code(sub_line_2_code9, simple_type, sub_line_2_stmt3, type, range(sub_line_2, 5224, 4, 114, 114)).
code(sub_line_2_code10, variable_declaration_fragment, sub_line_2_stmt3, (fragments, 0), range(sub_line_2, 5229, 38, 114, 114)).
code(sub_line_2_code11, simple_type, sub_line_2_expr6, type, range(sub_line_2, 5238, 4, 114, 114)).
code(sub_line_2_code12, simple_type, sub_line_2_stmt4, type, range(sub_line_2, 5331, 8, 117, 117)).
code(sub_line_2_code13, variable_declaration_fragment, sub_line_2_stmt4, (fragments, 0), range(sub_line_2, 5340, 31, 117, 117)).
code(sub_line_2_code14, simple_type, sub_line_2_stmt5, type, range(sub_line_2, 5448, 8, 120, 120)).
code(sub_line_2_code15, variable_declaration_fragment, sub_line_2_stmt5, (fragments, 0), range(sub_line_2, 5457, 61, 120, 120)).
code(sub_line_2_code16, method_declaration, sub_line_2_code2, (body_declarations, 5), range(sub_line_2, 5930, 413, 133, 142)).
code(sub_line_2_code17, modifier, sub_line_2_stmt6, (modifiers, 0), range(sub_line_2, 6173, 5, 139, 139)).
code(sub_line_2_code18, simple_type, sub_line_2_stmt6, type, range(sub_line_2, 6179, 4, 139, 139)).
code(sub_line_2_code19, variable_declaration_fragment, sub_line_2_stmt6, (fragments, 0), range(sub_line_2, 6184, 27, 139, 139)).
code(sub_line_2_code20, simple_type, sub_line_2_expr12, type, range(sub_line_2, 6195, 4, 139, 139)).
code(sub_line_2_code21, simple_type, sub_line_2_expr13, type, range(sub_line_2, 6232, 12, 140, 140)).
%vector2_d_1 - org.apache.commons.math3.geometry.euclidean.twod.Vector2D
code(vector2_d_1_code1, compilation_unit, range(vector2_d_1, 0, 12534, 1, -1)).
code(vector2_d_1_code2, type_declaration, vector2_d_1_code1, (types, 0), range(vector2_d_1, 1289, 11244, 29, 390)).
code(vector2_d_1_code3, field_declaration, vector2_d_1_code2, (body_declarations, 0), range(vector2_d_1, 1489, 96, 36, 37)).
code(vector2_d_1_code4, modifier, vector2_d_1_code3, (modifiers, 0), range(vector2_d_1, 1528, 6, 37, 37)).
code(vector2_d_1_code5, modifier, vector2_d_1_code3, (modifiers, 1), range(vector2_d_1, 1535, 6, 37, 37)).
code(vector2_d_1_code6, modifier, vector2_d_1_code3, (modifiers, 2), range(vector2_d_1, 1542, 5, 37, 37)).
code(vector2_d_1_code7, simple_type, vector2_d_1_code3, type, range(vector2_d_1, 1548, 8, 37, 37)).
code(vector2_d_1_code8, variable_declaration_fragment, vector2_d_1_code3, (fragments, 0), range(vector2_d_1, 1557, 27, 37, 37)).
code(vector2_d_1_code9, simple_type, vector2_d_1_expr1, type, range(vector2_d_1, 1570, 8, 37, 37)).
code(vector2_d_1_code10, field_declaration, vector2_d_1_code2, (body_declarations, 1), range(vector2_d_1, 1628, 125, 40, 41)).
code(vector2_d_1_code11, modifier, vector2_d_1_code10, (modifiers, 0), range(vector2_d_1, 1681, 6, 41, 41)).
code(vector2_d_1_code12, modifier, vector2_d_1_code10, (modifiers, 1), range(vector2_d_1, 1688, 6, 41, 41)).
code(vector2_d_1_code13, modifier, vector2_d_1_code10, (modifiers, 2), range(vector2_d_1, 1695, 5, 41, 41)).
code(vector2_d_1_code14, simple_type, vector2_d_1_code10, type, range(vector2_d_1, 1701, 8, 41, 41)).
code(vector2_d_1_code15, variable_declaration_fragment, vector2_d_1_code10, (fragments, 0), range(vector2_d_1, 1710, 42, 41, 41)).
code(vector2_d_1_code16, simple_type, vector2_d_1_expr2, type, range(vector2_d_1, 1720, 8, 41, 41)).
code(vector2_d_1_code17, field_declaration, vector2_d_1_code2, (body_declarations, 2), range(vector2_d_1, 1798, 189, 44, 46)).
code(vector2_d_1_code18, modifier, vector2_d_1_code17, (modifiers, 0), range(vector2_d_1, 1865, 6, 45, 45)).
code(vector2_d_1_code19, modifier, vector2_d_1_code17, (modifiers, 1), range(vector2_d_1, 1872, 6, 45, 45)).
code(vector2_d_1_code20, modifier, vector2_d_1_code17, (modifiers, 2), range(vector2_d_1, 1879, 5, 45, 45)).
code(vector2_d_1_code21, simple_type, vector2_d_1_code17, type, range(vector2_d_1, 1885, 8, 45, 45)).
code(vector2_d_1_code22, variable_declaration_fragment, vector2_d_1_code17, (fragments, 0), range(vector2_d_1, 1894, 92, 45, 46)).
code(vector2_d_1_code23, field_declaration, vector2_d_1_code2, (body_declarations, 3), range(vector2_d_1, 1993, 189, 48, 50)).
code(vector2_d_1_code24, modifier, vector2_d_1_code23, (modifiers, 0), range(vector2_d_1, 2060, 6, 49, 49)).
code(vector2_d_1_code25, modifier, vector2_d_1_code23, (modifiers, 1), range(vector2_d_1, 2067, 6, 49, 49)).
code(vector2_d_1_code26, modifier, vector2_d_1_code23, (modifiers, 2), range(vector2_d_1, 2074, 5, 49, 49)).
code(vector2_d_1_code27, simple_type, vector2_d_1_code23, type, range(vector2_d_1, 2080, 8, 49, 49)).
code(vector2_d_1_code28, variable_declaration_fragment, vector2_d_1_code23, (fragments, 0), range(vector2_d_1, 2089, 92, 49, 50)).
code(vector2_d_1_code29, method_declaration, vector2_d_1_code2, (body_declarations, 7), range(vector2_d_1, 2388, 252, 61, 71)).
code(vector2_d_1_code30, modifier, vector2_d_1_code29, (modifiers, 0), range(vector2_d_1, 2557, 6, 68, 68)).
code(vector2_d_1_code31, single_variable_declaration, vector2_d_1_code29, (parameters, 0), range(vector2_d_1, 2573, 8, 68, 68)).
code(vector2_d_1_code32, primitive_type, vector2_d_1_code31, type, range(vector2_d_1, 2573, 6, 68, 68)).
code(vector2_d_1_code33, single_variable_declaration, vector2_d_1_code29, (parameters, 1), range(vector2_d_1, 2583, 8, 68, 68)).
code(vector2_d_1_code34, primitive_type, vector2_d_1_code33, type, range(vector2_d_1, 2583, 6, 68, 68)).
code(vector2_d_1_code35, method_declaration, vector2_d_1_code2, (body_declarations, 13), range(vector2_d_1, 5307, 170, 145, 151)).
code(vector2_d_1_code36, method_declaration, vector2_d_1_code2, (body_declarations, 14), range(vector2_d_1, 5483, 170, 153, 159)).
%sub_line_1 - org.apache.commons.math3.geometry.euclidean.threed.SubLine
code(sub_line_1_code1, compilation_unit, range(sub_line_1, 0, 6036, 1, -1)).
code(sub_line_1_code2, type_declaration, sub_line_1_code1, (types, 0), range(sub_line_1, 1262, 4773, 28, 142)).
code(sub_line_1_code3, method_declaration, sub_line_1_code2, (body_declarations, 2), range(sub_line_1, 1533, 290, 40, 47)).
code(sub_line_1_code4, modifier, sub_line_1_code3, (modifiers, 0), range(sub_line_1, 1663, 6, 44, 44)).
code(sub_line_1_code5, single_variable_declaration, sub_line_1_code3, (parameters, 0), range(sub_line_1, 1678, 15, 44, 44)).
code(sub_line_1_code6, modifier, sub_line_1_code5, (modifiers, 0), range(sub_line_1, 1678, 5, 44, 44)).
code(sub_line_1_code7, simple_type, sub_line_1_code5, type, range(sub_line_1, 1684, 4, 44, 44)).
code(sub_line_1_code8, single_variable_declaration, sub_line_1_code3, (parameters, 1), range(sub_line_1, 1695, 34, 44, 44)).
code(sub_line_1_code9, modifier, sub_line_1_code8, (modifiers, 0), range(sub_line_1, 1695, 5, 44, 44)).
code(sub_line_1_code10, simple_type, sub_line_1_code8, type, range(sub_line_1, 1701, 12, 44, 44)).
code(sub_line_1_code11, method_declaration, sub_line_1_code2, (body_declarations, 3), range(sub_line_1, 1829, 359, 49, 57)).
code(sub_line_1_code12, simple_type, sub_line_1_expr8, type, range(sub_line_1, 2134, 4, 56, 56)).
code(sub_line_1_code13, method_declaration, sub_line_1_code2, (body_declarations, 6), range(sub_line_1, 3930, 1568, 96, 127)).
code(sub_line_1_code14, simple_type, sub_line_1_stmt4, type, range(sub_line_1, 4903, 8, 113, 113)).
code(sub_line_1_code15, variable_declaration_fragment, sub_line_1_stmt4, (fragments, 0), range(sub_line_1, 4912, 37, 113, 113)).
code(sub_line_1_code16, simple_type, sub_line_1_stmt5, type, range(sub_line_1, 5026, 8, 116, 116)).
code(sub_line_1_code17, variable_declaration_fragment, sub_line_1_stmt5, (fragments, 0), range(sub_line_1, 5035, 55, 116, 116)).
code(sub_line_1_code18, method_declaration, sub_line_1_code2, (body_declarations, 7), range(sub_line_1, 5504, 528, 129, 140)).
code(sub_line_1_code19, modifier, sub_line_1_stmt6, (modifiers, 0), range(sub_line_1, 5862, 5, 137, 137)).
code(sub_line_1_code20, simple_type, sub_line_1_stmt6, type, range(sub_line_1, 5868, 4, 137, 137)).
code(sub_line_1_code21, variable_declaration_fragment, sub_line_1_stmt6, (fragments, 0), range(sub_line_1, 5873, 27, 137, 137)).
code(sub_line_1_code22, simple_type, sub_line_1_expr13, type, range(sub_line_1, 5884, 4, 137, 137)).
code(sub_line_1_code23, simple_type, sub_line_1_expr14, type, range(sub_line_1, 5921, 12, 138, 138)).
%fast_math_1 - org.apache.commons.math3.util.FastMath
code(fast_math_1_code1, compilation_unit, range(fast_math_1, 0, 122361, 1, -1)).
code(fast_math_1_code2, type_declaration, fast_math_1_code1, (types, 0), range(fast_math_1, 872, 121488, 21, 3883)).
code(fast_math_1_code3, field_declaration, fast_math_1_code2, (body_declarations, 6), range(fast_math_1, 4170, 131, 96, 97)).
code(fast_math_1_code4, modifier, fast_math_1_code3, (modifiers, 0), range(fast_math_1, 4224, 7, 97, 97)).
code(fast_math_1_code5, modifier, fast_math_1_code3, (modifiers, 1), range(fast_math_1, 4232, 6, 97, 97)).
code(fast_math_1_code6, modifier, fast_math_1_code3, (modifiers, 2), range(fast_math_1, 4239, 5, 97, 97)).
code(fast_math_1_code7, primitive_type, fast_math_1_code3, type, range(fast_math_1, 4245, 6, 97, 97)).
code(fast_math_1_code8, variable_declaration_fragment, fast_math_1_code3, (fragments, 0), range(fast_math_1, 4252, 48, 97, 97)).
code(fast_math_1_code9, field_declaration, fast_math_1_code2, (body_declarations, 10), range(fast_math_1, 4865, 537, 114, 125)).
code(fast_math_1_code10, modifier, fast_math_1_code9, (modifiers, 0), range(fast_math_1, 4926, 7, 115, 115)).
code(fast_math_1_code11, modifier, fast_math_1_code9, (modifiers, 1), range(fast_math_1, 4934, 6, 115, 115)).
code(fast_math_1_code12, modifier, fast_math_1_code9, (modifiers, 2), range(fast_math_1, 4941, 5, 115, 115)).
code(fast_math_1_code13, primitive_type, fast_math_1_code9, type, range(fast_math_1, 4947, 6, 115, 115)).
code(fast_math_1_code14, variable_declaration_fragment, fast_math_1_code9, (fragments, 0), range(fast_math_1, 4954, 447, 115, 125)).
code(fast_math_1_code15, dimension, fast_math_1_code14, (extra_dimensions2, 0), range(fast_math_1, 4967, 2, 115, 115)).
code(fast_math_1_code16, dimension, fast_math_1_code14, (extra_dimensions2, 1), range(fast_math_1, 4969, 2, 115, 115)).
code(fast_math_1_code17, field_declaration, fast_math_1_code2, (body_declarations, 11), range(fast_math_1, 5408, 409, 127, 135)).
code(fast_math_1_code18, modifier, fast_math_1_code17, (modifiers, 0), range(fast_math_1, 5479, 7, 128, 128)).
code(fast_math_1_code19, modifier, fast_math_1_code17, (modifiers, 1), range(fast_math_1, 5487, 6, 128, 128)).
code(fast_math_1_code20, modifier, fast_math_1_code17, (modifiers, 2), range(fast_math_1, 5494, 5, 128, 128)).
code(fast_math_1_code21, primitive_type, fast_math_1_code17, type, range(fast_math_1, 5500, 6, 128, 128)).
code(fast_math_1_code22, variable_declaration_fragment, fast_math_1_code17, (fragments, 0), range(fast_math_1, 5507, 309, 128, 135)).
code(fast_math_1_code23, dimension, fast_math_1_code22, (extra_dimensions2, 0), range(fast_math_1, 5522, 2, 128, 128)).
code(fast_math_1_code24, dimension, fast_math_1_code22, (extra_dimensions2, 1), range(fast_math_1, 5524, 2, 128, 128)).
code(fast_math_1_code25, field_declaration, fast_math_1_code2, (body_declarations, 13), range(fast_math_1, 5959, 500, 140, 157)).
code(fast_math_1_code26, modifier, fast_math_1_code25, (modifiers, 0), range(fast_math_1, 5994, 7, 141, 141)).
code(fast_math_1_code27, modifier, fast_math_1_code25, (modifiers, 1), range(fast_math_1, 6002, 6, 141, 141)).
code(fast_math_1_code28, modifier, fast_math_1_code25, (modifiers, 2), range(fast_math_1, 6009, 5, 141, 141)).
code(fast_math_1_code29, primitive_type, fast_math_1_code25, type, range(fast_math_1, 6015, 6, 141, 141)).
code(fast_math_1_code30, variable_declaration_fragment, fast_math_1_code25, (fragments, 0), range(fast_math_1, 6022, 436, 141, 157)).
code(fast_math_1_code31, dimension, fast_math_1_code30, (extra_dimensions2, 0), range(fast_math_1, 6034, 2, 141, 141)).
code(fast_math_1_code32, field_declaration, fast_math_1_code2, (body_declarations, 14), range(fast_math_1, 6465, 528, 159, 176)).
code(fast_math_1_code33, modifier, fast_math_1_code32, (modifiers, 0), range(fast_math_1, 6499, 7, 160, 160)).
code(fast_math_1_code34, modifier, fast_math_1_code32, (modifiers, 1), range(fast_math_1, 6507, 6, 160, 160)).
code(fast_math_1_code35, modifier, fast_math_1_code32, (modifiers, 2), range(fast_math_1, 6514, 5, 160, 160)).
code(fast_math_1_code36, primitive_type, fast_math_1_code32, type, range(fast_math_1, 6520, 6, 160, 160)).
code(fast_math_1_code37, variable_declaration_fragment, fast_math_1_code32, (fragments, 0), range(fast_math_1, 6527, 465, 160, 176)).
code(fast_math_1_code38, dimension, fast_math_1_code37, (extra_dimensions2, 0), range(fast_math_1, 6539, 2, 160, 160)).
code(fast_math_1_code39, field_declaration, fast_math_1_code2, (body_declarations, 15), range(fast_math_1, 6999, 508, 178, 195)).
code(fast_math_1_code40, modifier, fast_math_1_code39, (modifiers, 0), range(fast_math_1, 7036, 7, 179, 179)).
code(fast_math_1_code41, modifier, fast_math_1_code39, (modifiers, 1), range(fast_math_1, 7044, 6, 179, 179)).
code(fast_math_1_code42, modifier, fast_math_1_code39, (modifiers, 2), range(fast_math_1, 7051, 5, 179, 179)).
code(fast_math_1_code43, primitive_type, fast_math_1_code39, type, range(fast_math_1, 7057, 6, 179, 179)).
code(fast_math_1_code44, variable_declaration_fragment, fast_math_1_code39, (fragments, 0), range(fast_math_1, 7064, 442, 179, 195)).
code(fast_math_1_code45, dimension, fast_math_1_code44, (extra_dimensions2, 0), range(fast_math_1, 7078, 2, 179, 179)).
code(fast_math_1_code46, field_declaration, fast_math_1_code2, (body_declarations, 16), range(fast_math_1, 7513, 537, 197, 214)).
code(fast_math_1_code47, modifier, fast_math_1_code46, (modifiers, 0), range(fast_math_1, 7549, 7, 198, 198)).
code(fast_math_1_code48, modifier, fast_math_1_code46, (modifiers, 1), range(fast_math_1, 7557, 6, 198, 198)).
code(fast_math_1_code49, modifier, fast_math_1_code46, (modifiers, 2), range(fast_math_1, 7564, 5, 198, 198)).
code(fast_math_1_code50, primitive_type, fast_math_1_code46, type, range(fast_math_1, 7570, 6, 198, 198)).
code(fast_math_1_code51, variable_declaration_fragment, fast_math_1_code46, (fragments, 0), range(fast_math_1, 7577, 472, 198, 214)).
code(fast_math_1_code52, dimension, fast_math_1_code51, (extra_dimensions2, 0), range(fast_math_1, 7591, 2, 198, 198)).
code(fast_math_1_code53, field_declaration, fast_math_1_code2, (body_declarations, 17), range(fast_math_1, 8057, 522, 217, 234)).
code(fast_math_1_code54, modifier, fast_math_1_code53, (modifiers, 0), range(fast_math_1, 8111, 7, 218, 218)).
code(fast_math_1_code55, modifier, fast_math_1_code53, (modifiers, 1), range(fast_math_1, 8119, 6, 218, 218)).
code(fast_math_1_code56, modifier, fast_math_1_code53, (modifiers, 2), range(fast_math_1, 8126, 5, 218, 218)).
code(fast_math_1_code57, primitive_type, fast_math_1_code53, type, range(fast_math_1, 8132, 6, 218, 218)).
code(fast_math_1_code58, variable_declaration_fragment, fast_math_1_code53, (fragments, 0), range(fast_math_1, 8139, 439, 218, 234)).
code(fast_math_1_code59, dimension, fast_math_1_code58, (extra_dimensions2, 0), range(fast_math_1, 8154, 2, 218, 218)).
code(fast_math_1_code60, field_declaration, fast_math_1_code2, (body_declarations, 18), range(fast_math_1, 8585, 555, 236, 253)).
code(fast_math_1_code61, modifier, fast_math_1_code60, (modifiers, 0), range(fast_math_1, 8638, 7, 237, 237)).
code(fast_math_1_code62, modifier, fast_math_1_code60, (modifiers, 1), range(fast_math_1, 8646, 6, 237, 237)).
code(fast_math_1_code63, modifier, fast_math_1_code60, (modifiers, 2), range(fast_math_1, 8653, 5, 237, 237)).
code(fast_math_1_code64, primitive_type, fast_math_1_code60, type, range(fast_math_1, 8659, 6, 237, 237)).
code(fast_math_1_code65, variable_declaration_fragment, fast_math_1_code60, (fragments, 0), range(fast_math_1, 8666, 473, 237, 253)).
code(fast_math_1_code66, dimension, fast_math_1_code65, (extra_dimensions2, 0), range(fast_math_1, 8681, 2, 237, 237)).
code(fast_math_1_code67, field_declaration, fast_math_1_code2, (body_declarations, 19), range(fast_math_1, 9146, 872, 255, 274)).
code(fast_math_1_code68, modifier, fast_math_1_code67, (modifiers, 0), range(fast_math_1, 9204, 7, 256, 256)).
code(fast_math_1_code69, modifier, fast_math_1_code67, (modifiers, 1), range(fast_math_1, 9212, 6, 256, 256)).
code(fast_math_1_code70, modifier, fast_math_1_code67, (modifiers, 2), range(fast_math_1, 9219, 5, 256, 256)).
code(fast_math_1_code71, primitive_type, fast_math_1_code67, type, range(fast_math_1, 9225, 4, 256, 256)).
code(fast_math_1_code72, variable_declaration_fragment, fast_math_1_code67, (fragments, 0), range(fast_math_1, 9230, 787, 256, 274)).
code(fast_math_1_code73, dimension, fast_math_1_code72, (extra_dimensions2, 0), range(fast_math_1, 9239, 2, 256, 256)).
code(fast_math_1_code74, array_type, fast_math_1_expr10, type, range(fast_math_1, 9248, 6, 256, 256)).
code(fast_math_1_code75, primitive_type, fast_math_1_code74, element_type, range(fast_math_1, 9248, 4, 256, 256)).
code(fast_math_1_code76, dimension, fast_math_1_code74, (dimensions, 0), range(fast_math_1, 9252, 2, 256, 256)).
code(fast_math_1_code77, field_declaration, fast_math_1_code2, (body_declarations, 20), range(fast_math_1, 10024, 196, 276, 279)).
code(fast_math_1_code78, modifier, fast_math_1_code77, (modifiers, 0), range(fast_math_1, 10078, 7, 277, 277)).
code(fast_math_1_code79, modifier, fast_math_1_code77, (modifiers, 1), range(fast_math_1, 10086, 6, 277, 277)).
code(fast_math_1_code80, modifier, fast_math_1_code77, (modifiers, 2), range(fast_math_1, 10093, 5, 277, 277)).
code(fast_math_1_code81, primitive_type, fast_math_1_code77, type, range(fast_math_1, 10099, 4, 277, 277)).
code(fast_math_1_code82, variable_declaration_fragment, fast_math_1_code77, (fragments, 0), range(fast_math_1, 10104, 115, 277, 279)).
code(fast_math_1_code83, dimension, fast_math_1_code82, (extra_dimensions2, 0), range(fast_math_1, 10115, 2, 277, 277)).
code(fast_math_1_code84, array_type, fast_math_1_expr12, type, range(fast_math_1, 10124, 6, 277, 277)).
code(fast_math_1_code85, primitive_type, fast_math_1_code84, element_type, range(fast_math_1, 10124, 4, 277, 277)).
code(fast_math_1_code86, dimension, fast_math_1_code84, (dimensions, 0), range(fast_math_1, 10128, 2, 277, 277)).
code(fast_math_1_code87, field_declaration, fast_math_1_code2, (body_declarations, 21), range(fast_math_1, 10226, 273, 281, 285)).
code(fast_math_1_code88, modifier, fast_math_1_code87, (modifiers, 0), range(fast_math_1, 10373, 7, 285, 285)).
code(fast_math_1_code89, modifier, fast_math_1_code87, (modifiers, 1), range(fast_math_1, 10381, 6, 285, 285)).
code(fast_math_1_code90, modifier, fast_math_1_code87, (modifiers, 2), range(fast_math_1, 10388, 5, 285, 285)).
code(fast_math_1_code91, primitive_type, fast_math_1_code87, type, range(fast_math_1, 10394, 6, 285, 285)).
code(fast_math_1_code92, variable_declaration_fragment, fast_math_1_code87, (fragments, 0), range(fast_math_1, 10401, 97, 285, 285)).
code(fast_math_1_code93, dimension, fast_math_1_code92, (extra_dimensions2, 0), range(fast_math_1, 10408, 2, 285, 285)).
code(fast_math_1_code94, field_declaration, fast_math_1_code2, (body_declarations, 22), range(fast_math_1, 10505, 336, 287, 292)).
code(fast_math_1_code95, modifier, fast_math_1_code94, (modifiers, 0), range(fast_math_1, 10537, 7, 288, 288)).
code(fast_math_1_code96, modifier, fast_math_1_code94, (modifiers, 1), range(fast_math_1, 10545, 6, 288, 288)).
code(fast_math_1_code97, modifier, fast_math_1_code94, (modifiers, 2), range(fast_math_1, 10552, 5, 288, 288)).
code(fast_math_1_code98, primitive_type, fast_math_1_code94, type, range(fast_math_1, 10558, 6, 288, 288)).
code(fast_math_1_code99, variable_declaration_fragment, fast_math_1_code94, (fragments, 0), range(fast_math_1, 10565, 275, 288, 292)).
code(fast_math_1_code100, dimension, fast_math_1_code99, (extra_dimensions2, 0), range(fast_math_1, 10572, 2, 288, 288)).
code(fast_math_1_code101, method_declaration, fast_math_1_code2, (body_declarations, 48), range(fast_math_1, 14158, 298, 379, 386)).
code(fast_math_1_code102, method_declaration, fast_math_1_code2, (body_declarations, 71), range(fast_math_1, 54128, 517, 1672, 1691)).
code(fast_math_1_code103, primitive_type, fast_math_1_stmt2, type, range(fast_math_1, 54369, 6, 1680, 1680)).
code(fast_math_1_code104, variable_declaration_fragment, fast_math_1_stmt2, (fragments, 0), range(fast_math_1, 54376, 8, 1680, 1680)).
code(fast_math_1_code105, primitive_type, fast_math_1_stmt3, type, range(fast_math_1, 54395, 6, 1682, 1682)).
code(fast_math_1_code106, variable_declaration_fragment, fast_math_1_stmt3, (fragments, 0), range(fast_math_1, 54402, 25, 1682, 1682)).
code(fast_math_1_code107, method_declaration, fast_math_1_code2, (body_declarations, 72), range(fast_math_1, 54651, 464, 1693, 1709)).
code(fast_math_1_code108, primitive_type, fast_math_1_stmt9, type, range(fast_math_1, 54884, 6, 1700, 1700)).
code(fast_math_1_code109, variable_declaration_fragment, fast_math_1_stmt9, (fragments, 0), range(fast_math_1, 54891, 8, 1700, 1700)).
code(fast_math_1_code110, primitive_type, fast_math_1_stmt10, type, range(fast_math_1, 54910, 6, 1702, 1702)).
code(fast_math_1_code111, variable_declaration_fragment, fast_math_1_stmt10, (fragments, 0), range(fast_math_1, 54917, 24, 1702, 1702)).
code(fast_math_1_code112, method_declaration, fast_math_1_code2, (body_declarations, 73), range(fast_math_1, 55121, 3257, 1711, 1833)).
code(fast_math_1_code113, primitive_type, fast_math_1_stmt16, type, range(fast_math_1, 55463, 3, 1719, 1719)).
code(fast_math_1_code114, variable_declaration_fragment, fast_math_1_stmt16, (fragments, 0), range(fast_math_1, 55467, 30, 1719, 1719)).
code(fast_math_1_code115, primitive_type, fast_math_1_expr44, type, range(fast_math_1, 55474, 3, 1719, 1719)).
code(fast_math_1_code116, modifier, fast_math_1_stmt17, (modifiers, 0), range(fast_math_1, 55507, 5, 1720, 1720)).
code(fast_math_1_code117, primitive_type, fast_math_1_stmt17, type, range(fast_math_1, 55513, 6, 1720, 1720)).
code(fast_math_1_code118, variable_declaration_fragment, fast_math_1_stmt17, (fragments, 0), range(fast_math_1, 55520, 27, 1720, 1720)).
code(fast_math_1_code119, modifier, fast_math_1_stmt18, (modifiers, 0), range(fast_math_1, 55596, 5, 1723, 1723)).
code(fast_math_1_code120, primitive_type, fast_math_1_stmt18, type, range(fast_math_1, 55602, 6, 1723, 1723)).
code(fast_math_1_code121, variable_declaration_fragment, fast_math_1_stmt18, (fragments, 0), range(fast_math_1, 55609, 25, 1723, 1723)).
code(fast_math_1_code122, modifier, fast_math_1_stmt19, (modifiers, 0), range(fast_math_1, 55644, 5, 1724, 1724)).
code(fast_math_1_code123, primitive_type, fast_math_1_stmt19, type, range(fast_math_1, 55650, 6, 1724, 1724)).
code(fast_math_1_code124, variable_declaration_fragment, fast_math_1_stmt19, (fragments, 0), range(fast_math_1, 55657, 25, 1724, 1724)).
code(fast_math_1_code125, modifier, fast_math_1_stmt20, (modifiers, 0), range(fast_math_1, 55692, 5, 1725, 1725)).
code(fast_math_1_code126, primitive_type, fast_math_1_stmt20, type, range(fast_math_1, 55698, 6, 1725, 1725)).
code(fast_math_1_code127, variable_declaration_fragment, fast_math_1_stmt20, (fragments, 0), range(fast_math_1, 55705, 27, 1725, 1725)).
code(fast_math_1_code128, modifier, fast_math_1_stmt21, (modifiers, 0), range(fast_math_1, 55742, 5, 1726, 1726)).
code(fast_math_1_code129, primitive_type, fast_math_1_stmt21, type, range(fast_math_1, 55748, 6, 1726, 1726)).
code(fast_math_1_code130, variable_declaration_fragment, fast_math_1_stmt21, (fragments, 0), range(fast_math_1, 55755, 27, 1726, 1726)).
code(fast_math_1_code131, primitive_type, fast_math_1_stmt22, type, range(fast_math_1, 55850, 6, 1729, 1729)).
code(fast_math_1_code132, variable_declaration_fragment, fast_math_1_stmt22, (fragments, 0), range(fast_math_1, 55857, 17, 1729, 1729)).
code(fast_math_1_code133, primitive_type, fast_math_1_stmt23, type, range(fast_math_1, 55884, 6, 1730, 1730)).
code(fast_math_1_code134, variable_declaration_fragment, fast_math_1_stmt23, (fragments, 0), range(fast_math_1, 55891, 27, 1730, 1730)).
code(fast_math_1_code135, modifier, fast_math_1_stmt24, (modifiers, 0), range(fast_math_1, 55928, 5, 1731, 1731)).
code(fast_math_1_code136, primitive_type, fast_math_1_stmt24, type, range(fast_math_1, 55934, 6, 1731, 1731)).
code(fast_math_1_code137, variable_declaration_fragment, fast_math_1_stmt24, (fragments, 0), range(fast_math_1, 55941, 13, 1731, 1731)).
code(fast_math_1_code138, modifier, fast_math_1_stmt25, (modifiers, 0), range(fast_math_1, 55964, 5, 1732, 1732)).
code(fast_math_1_code139, primitive_type, fast_math_1_stmt25, type, range(fast_math_1, 55970, 6, 1732, 1732)).
code(fast_math_1_code140, variable_declaration_fragment, fast_math_1_stmt25, (fragments, 0), range(fast_math_1, 55977, 29, 1732, 1732)).
code(fast_math_1_code141, modifier, fast_math_1_stmt26, (modifiers, 0), range(fast_math_1, 56056, 5, 1735, 1735)).
code(fast_math_1_code142, primitive_type, fast_math_1_stmt26, type, range(fast_math_1, 56062, 6, 1735, 1735)).
code(fast_math_1_code143, variable_declaration_fragment, fast_math_1_stmt26, (fragments, 0), range(fast_math_1, 56069, 29, 1735, 1735)).
code(fast_math_1_code144, primitive_type, fast_math_1_stmt27, type, range(fast_math_1, 56108, 6, 1736, 1736)).
code(fast_math_1_code145, variable_declaration_fragment, fast_math_1_stmt27, (fragments, 0), range(fast_math_1, 56115, 31, 1736, 1736)).
code(fast_math_1_code146, primitive_type, fast_math_1_stmt30, type, range(fast_math_1, 57095, 6, 1764, 1764)).
code(fast_math_1_code147, variable_declaration_fragment, fast_math_1_stmt30, (fragments, 0), range(fast_math_1, 57102, 5, 1764, 1764)).
code(fast_math_1_code148, primitive_type, fast_math_1_stmt31, type, range(fast_math_1, 57117, 6, 1765, 1765)).
code(fast_math_1_code149, variable_declaration_fragment, fast_math_1_stmt31, (fragments, 0), range(fast_math_1, 57124, 5, 1765, 1765)).
code(fast_math_1_code150, primitive_type, fast_math_1_stmt32, type, range(fast_math_1, 57140, 6, 1767, 1767)).
code(fast_math_1_code151, variable_declaration_fragment, fast_math_1_stmt32, (fragments, 0), range(fast_math_1, 57147, 9, 1767, 1767)).
code(fast_math_1_code152, primitive_type, fast_math_1_stmt33, type, range(fast_math_1, 57166, 6, 1768, 1768)).
code(fast_math_1_code153, variable_declaration_fragment, fast_math_1_stmt33, (fragments, 0), range(fast_math_1, 57173, 9, 1768, 1768)).
code(fast_math_1_code154, primitive_type, fast_math_1_stmt34, type, range(fast_math_1, 57192, 6, 1769, 1769)).
code(fast_math_1_code155, variable_declaration_fragment, fast_math_1_stmt34, (fragments, 0), range(fast_math_1, 57199, 16, 1769, 1769)).
code(fast_math_1_code156, method_declaration, fast_math_1_code2, (body_declarations, 74), range(fast_math_1, 58384, 588, 1835, 1851)).
code(fast_math_1_code157, modifier, fast_math_1_stmt52, (modifiers, 0), range(fast_math_1, 58750, 5, 1843, 1843)).
code(fast_math_1_code158, primitive_type, fast_math_1_stmt52, type, range(fast_math_1, 58756, 6, 1843, 1843)).
code(fast_math_1_code159, variable_declaration_fragment, fast_math_1_stmt52, (fragments, 0), range(fast_math_1, 58763, 25, 1843, 1843)).
code(fast_math_1_code160, modifier, fast_math_1_stmt53, (modifiers, 0), range(fast_math_1, 58798, 5, 1844, 1844)).
code(fast_math_1_code161, primitive_type, fast_math_1_stmt53, type, range(fast_math_1, 58804, 6, 1844, 1844)).
code(fast_math_1_code162, variable_declaration_fragment, fast_math_1_stmt53, (fragments, 0), range(fast_math_1, 58811, 28, 1844, 1844)).
code(fast_math_1_code163, modifier, fast_math_1_stmt54, (modifiers, 0), range(fast_math_1, 58850, 5, 1846, 1846)).
code(fast_math_1_code164, primitive_type, fast_math_1_stmt54, type, range(fast_math_1, 58856, 6, 1846, 1846)).
code(fast_math_1_code165, variable_declaration_fragment, fast_math_1_stmt54, (fragments, 0), range(fast_math_1, 58863, 13, 1846, 1846)).
code(fast_math_1_code166, primitive_type, fast_math_1_stmt55, type, range(fast_math_1, 58886, 6, 1847, 1847)).
code(fast_math_1_code167, variable_declaration_fragment, fast_math_1_stmt55, (fragments, 0), range(fast_math_1, 58893, 20, 1847, 1847)).
code(fast_math_1_code168, method_declaration, fast_math_1_code2, (body_declarations, 77), range(fast_math_1, 69975, 1750, 2221, 2286)).
code(fast_math_1_code169, primitive_type, fast_math_1_stmt58, type, range(fast_math_1, 70113, 7, 2228, 2228)).
code(fast_math_1_code170, variable_declaration_fragment, fast_math_1_stmt58, (fragments, 0), range(fast_math_1, 70121, 16, 2228, 2228)).
code(fast_math_1_code171, primitive_type, fast_math_1_stmt59, type, range(fast_math_1, 70147, 3, 2229, 2229)).
code(fast_math_1_code172, variable_declaration_fragment, fast_math_1_stmt59, (fragments, 0), range(fast_math_1, 70151, 12, 2229, 2229)).
code(fast_math_1_code173, primitive_type, fast_math_1_stmt60, type, range(fast_math_1, 70192, 6, 2231, 2231)).
code(fast_math_1_code174, variable_declaration_fragment, fast_math_1_stmt60, (fragments, 0), range(fast_math_1, 70199, 8, 2231, 2231)).
code(fast_math_1_code175, method_declaration, fast_math_1_code2, (body_declarations, 78), range(fast_math_1, 71731, 1433, 2288, 2340)).
code(fast_math_1_code176, primitive_type, fast_math_1_stmt70, type, range(fast_math_1, 71871, 3, 2295, 2295)).
code(fast_math_1_code177, variable_declaration_fragment, fast_math_1_stmt70, (fragments, 0), range(fast_math_1, 71875, 12, 2295, 2295)).
code(fast_math_1_code178, primitive_type, fast_math_1_stmt71, type, range(fast_math_1, 71945, 6, 2298, 2298)).
code(fast_math_1_code179, variable_declaration_fragment, fast_math_1_stmt71, (fragments, 0), range(fast_math_1, 71952, 6, 2298, 2298)).
code(fast_math_1_code180, primitive_type, fast_math_1_stmt74, type, range(fast_math_1, 72167, 6, 2308, 2308)).
code(fast_math_1_code181, variable_declaration_fragment, fast_math_1_stmt74, (fragments, 0), range(fast_math_1, 72174, 6, 2308, 2308)).
code(fast_math_1_code182, method_declaration, fast_math_1_code2, (body_declarations, 82), range(fast_math_1, 80087, 3042, 2575, 2696)).
code(fast_math_1_code183, method_declaration, fast_math_1_code2, (body_declarations, 91), range(fast_math_1, 91705, 257, 3019, 3026)).
code(fast_math_1_code184, method_declaration, fast_math_1_code2, (body_declarations, 111), range(fast_math_1, 109435, 1734, 3559, 3606)).
code(fast_math_1_code185, modifier, fast_math_1_stmt92, (modifiers, 0), range(fast_math_1, 110250, 5, 3580, 3580)).
code(fast_math_1_code186, primitive_type, fast_math_1_stmt92, type, range(fast_math_1, 110256, 3, 3580, 3580)).
code(fast_math_1_code187, variable_declaration_fragment, fast_math_1_stmt92, (fragments, 0), range(fast_math_1, 110260, 21, 3580, 3580)).
code(fast_math_1_code188, modifier, fast_math_1_stmt93, (modifiers, 0), range(fast_math_1, 110295, 5, 3581, 3581)).
code(fast_math_1_code189, primitive_type, fast_math_1_stmt93, type, range(fast_math_1, 110301, 3, 3581, 3581)).
code(fast_math_1_code190, variable_declaration_fragment, fast_math_1_stmt93, (fragments, 0), range(fast_math_1, 110305, 21, 3581, 3581)).
code(fast_math_1_code191, method_declaration, fast_math_1_code2, (body_declarations, 115), range(fast_math_1, 114236, 530, 3674, 3686)).
code(fast_math_1_code192, primitive_type, fast_math_1_expr175, type, range(fast_math_1, 114699, 3, 3685, 3685)).
%sub_oriented_point_1 - org.apache.commons.math3.geometry.euclidean.oned.SubOrientedPoint
code(sub_oriented_point_1_code1, compilation_unit, range(sub_oriented_point_1, 0, 3011, 1, -1)).
code(sub_oriented_point_1_code2, type_declaration, sub_oriented_point_1_code1, (types, 0), range(sub_oriented_point_1, 1128, 1882, 24, 71)).
code(sub_oriented_point_1_code3, method_declaration, sub_oriented_point_1_code2, (body_declarations, 0), range(sub_oriented_point_1, 1475, 336, 33, 40)).
%precision_1 - org.apache.commons.math3.util.Precision
code(precision_1_code1, compilation_unit, range(precision_1, 0, 22068, 1, -1)).
code(precision_1_code2, type_declaration, precision_1_code1, (types, 0), range(precision_1, 1079, 20988, 26, 555)).
code(precision_1_code3, initializer, precision_1_code2, (body_declarations, 5), range(precision_1, 2305, 531, 64, 78)).
%intervals_set_1 - org.apache.commons.math3.geometry.euclidean.oned.IntervalsSet
code(intervals_set_1_code1, compilation_unit, range(intervals_set_1, 0, 11337, 1, -1)).
code(intervals_set_1_code2, type_declaration, intervals_set_1_code1, (types, 0), range(intervals_set_1, 1194, 10142, 28, 252)).
code(intervals_set_1_code3, method_declaration, intervals_set_1_code2, (body_declarations, 1), range(intervals_set_1, 1495, 461, 40, 48)).
code(intervals_set_1_code4, method_declaration, intervals_set_1_code2, (body_declarations, 4), range(intervals_set_1, 3836, 2431, 86, 128)).
code(intervals_set_1_code5, modifier, intervals_set_1_stmt3, (modifiers, 0), range(intervals_set_1, 5016, 5, 107, 107)).
code(intervals_set_1_code7, simple_type, intervals_set_1_code6, type, range(intervals_set_1, 5022, 13, 107, 107)).
code(intervals_set_1_code6, parameterized_type, intervals_set_1_stmt3, type, range(intervals_set_1, 5022, 26, 107, 107)).
code(intervals_set_1_code8, simple_type, intervals_set_1_code6, (type_arguments, 0), range(intervals_set_1, 5036, 11, 107, 107)).
code(intervals_set_1_code9, variable_declaration_fragment, intervals_set_1_stmt3, (fragments, 0), range(intervals_set_1, 5049, 86, 107, 108)).
code(intervals_set_1_code10, modifier, intervals_set_1_stmt5, (modifiers, 0), range(intervals_set_1, 5605, 5, 118, 118)).
code(intervals_set_1_code11, parameterized_type, intervals_set_1_stmt5, type, range(intervals_set_1, 5611, 26, 118, 118)).
code(intervals_set_1_code12, simple_type, intervals_set_1_code11, type, range(intervals_set_1, 5611, 13, 118, 118)).
code(intervals_set_1_code13, simple_type, intervals_set_1_code11, (type_arguments, 0), range(intervals_set_1, 5625, 11, 118, 118)).
code(intervals_set_1_code14, variable_declaration_fragment, intervals_set_1_stmt5, (fragments, 0), range(intervals_set_1, 5638, 85, 118, 119)).
code(intervals_set_1_code15, parameterized_type, intervals_set_1_expr13, type, range(intervals_set_1, 5744, 20, 120, 120)).
code(intervals_set_1_code16, simple_type, intervals_set_1_code15, type, range(intervals_set_1, 5744, 7, 120, 120)).
code(intervals_set_1_code17, simple_type, intervals_set_1_code15, (type_arguments, 0), range(intervals_set_1, 5752, 11, 120, 120)).
%oriented_point_1 - org.apache.commons.math3.geometry.euclidean.oned.OrientedPoint
code(oriented_point_1_code1, compilation_unit, range(oriented_point_1, 0, 3821, 1, -1)).
code(oriented_point_1_code2, type_declaration, oriented_point_1_code1, (types, 0), range(oriented_point_1, 978, 2842, 22, 111)).
code(oriented_point_1_code3, method_declaration, oriented_point_1_code2, (body_declarations, 2), range(oriented_point_1, 1398, 347, 37, 45)).
code(oriented_point_1_code4, modifier, oriented_point_1_code3, (modifiers, 0), range(oriented_point_1, 1604, 6, 42, 42)).
code(oriented_point_1_code6, modifier, oriented_point_1_code5, (modifiers, 0), range(oriented_point_1, 1625, 5, 42, 42)).
code(oriented_point_1_code5, single_variable_declaration, oriented_point_1_code3, (parameters, 0), range(oriented_point_1, 1625, 23, 42, 42)).
code(oriented_point_1_code7, simple_type, oriented_point_1_code5, type, range(oriented_point_1, 1631, 8, 42, 42)).
code(oriented_point_1_code9, modifier, oriented_point_1_code8, (modifiers, 0), range(oriented_point_1, 1650, 5, 42, 42)).
code(oriented_point_1_code8, single_variable_declaration, oriented_point_1_code3, (parameters, 1), range(oriented_point_1, 1650, 20, 42, 42)).
code(oriented_point_1_code10, primitive_type, oriented_point_1_code8, type, range(oriented_point_1, 1656, 7, 42, 42)).
code(oriented_point_1_code11, method_declaration, oriented_point_1_code2, (body_declarations, 5), range(oriented_point_1, 2191, 700, 62, 75)).
code(oriented_point_1_code12, simple_type, oriented_point_1_expr7, type, range(oriented_point_1, 2856, 16, 74, 74)).
%sub_line_test_2 - org.apache.commons.math3.geometry.euclidean.twod.SubLineTest
code(sub_line_test_2_code1, compilation_unit, range(sub_line_test_2, 0, 7378, 1, -1)).
code(sub_line_test_2_code3, modifier, sub_line_test_2_code2, (modifiers, 0), range(sub_line_test_2, 1143, 6, 27, 27)).
code(sub_line_test_2_code2, type_declaration, sub_line_test_2_code1, (types, 0), range(sub_line_test_2, 1143, 6234, 27, 155)).
code(sub_line_test_2_code4, method_declaration, sub_line_test_2_code2, (body_declarations, 12), range(sub_line_test_2, 7035, 339, 147, 153)).
code(sub_line_test_2_code5, modifier, sub_line_test_2_stmt1, (modifiers, 0), range(sub_line_test_2, 7094, 5, 149, 149)).
code(sub_line_test_2_code6, simple_type, sub_line_test_2_stmt1, type, range(sub_line_test_2, 7100, 7, 149, 149)).
code(sub_line_test_2_code7, variable_declaration_fragment, sub_line_test_2_stmt1, (fragments, 0), range(sub_line_test_2, 7108, 58, 149, 149)).
code(sub_line_test_2_code8, simple_type, sub_line_test_2_expr1, type, range(sub_line_test_2, 7119, 7, 149, 149)).
code(sub_line_test_2_code9, simple_type, sub_line_test_2_expr2, type, range(sub_line_test_2, 7131, 8, 149, 149)).
code(sub_line_test_2_code10, simple_type, sub_line_test_2_expr3, type, range(sub_line_test_2, 7151, 8, 149, 149)).
code(sub_line_test_2_code11, modifier, sub_line_test_2_stmt2, (modifiers, 0), range(sub_line_test_2, 7176, 5, 150, 150)).
code(sub_line_test_2_code12, simple_type, sub_line_test_2_stmt2, type, range(sub_line_test_2, 7182, 7, 150, 150)).
code(sub_line_test_2_code13, variable_declaration_fragment, sub_line_test_2_stmt2, (fragments, 0), range(sub_line_test_2, 7190, 60, 150, 150)).
code(sub_line_test_2_code14, simple_type, sub_line_test_2_expr4, type, range(sub_line_test_2, 7201, 7, 150, 150)).
code(sub_line_test_2_code15, simple_type, sub_line_test_2_expr5, type, range(sub_line_test_2, 7213, 8, 150, 150)).
code(sub_line_test_2_code16, simple_type, sub_line_test_2_expr6, type, range(sub_line_test_2, 7234, 8, 150, 150)).
%abstract_sub_hyperplane_1 - org.apache.commons.math3.geometry.partitioning.AbstractSubHyperplane
code(abstract_sub_hyperplane_1_code1, compilation_unit, range(abstract_sub_hyperplane_1, 0, 6439, 1, -1)).
code(abstract_sub_hyperplane_1_code2, type_declaration, abstract_sub_hyperplane_1_code1, (types, 0), range(abstract_sub_hyperplane_1, 909, 5529, 21, 158)).
code(abstract_sub_hyperplane_1_code3, method_declaration, abstract_sub_hyperplane_1_code2, (body_declarations, 2), range(abstract_sub_hyperplane_1, 1808, 415, 45, 53)).
code(abstract_sub_hyperplane_1_code4, single_variable_declaration, abstract_sub_hyperplane_1_code3, (parameters, 1), range(abstract_sub_hyperplane_1, 2092, 31, 50, 50)).
code(abstract_sub_hyperplane_1_code5, modifier, abstract_sub_hyperplane_1_code4, (modifiers, 0), range(abstract_sub_hyperplane_1, 2092, 5, 50, 50)).
code(abstract_sub_hyperplane_1_code7, simple_type, abstract_sub_hyperplane_1_code6, type, range(abstract_sub_hyperplane_1, 2098, 6, 50, 50)).
code(abstract_sub_hyperplane_1_code6, parameterized_type, abstract_sub_hyperplane_1_code4, type, range(abstract_sub_hyperplane_1, 2098, 9, 50, 50)).
code(abstract_sub_hyperplane_1_code8, simple_type, abstract_sub_hyperplane_1_code6, (type_arguments, 0), range(abstract_sub_hyperplane_1, 2105, 1, 50, 50)).
code(abstract_sub_hyperplane_1_code9, method_declaration, abstract_sub_hyperplane_1_code2, (body_declarations, 5), range(abstract_sub_hyperplane_1, 2752, 155, 68, 73)).
code(abstract_sub_hyperplane_1_code10, method_declaration, abstract_sub_hyperplane_1_code2, (body_declarations, 6), range(abstract_sub_hyperplane_1, 2913, 443, 75, 84)).
%sub_line_test_1 - org.apache.commons.math3.geometry.euclidean.threed.SubLineTest
code(sub_line_test_1_code1, compilation_unit, range(sub_line_test_1, 0, 8700, 1, -1)).
code(sub_line_test_1_code2, type_declaration, sub_line_test_1_code1, (types, 0), range(sub_line_test_1, 1217, 7482, 28, 164)).
code(sub_line_test_1_code3, modifier, sub_line_test_1_code2, (modifiers, 0), range(sub_line_test_1, 1217, 6, 28, 28)).
code(sub_line_test_1_code4, method_declaration, sub_line_test_1_code2, (body_declarations, 12), range(sub_line_test_1, 8312, 384, 156, 162)).
code(sub_line_test_1_code5, simple_type, sub_line_test_1_stmt1, type, range(sub_line_test_1, 8414, 7, 158, 158)).
code(sub_line_test_1_code6, variable_declaration_fragment, sub_line_test_1_stmt1, (fragments, 0), range(sub_line_test_1, 8422, 66, 158, 158)).
code(sub_line_test_1_code7, simple_type, sub_line_test_1_expr1, type, range(sub_line_test_1, 8433, 7, 158, 158)).
code(sub_line_test_1_code8, simple_type, sub_line_test_1_expr2, type, range(sub_line_test_1, 8445, 8, 158, 158)).
code(sub_line_test_1_code9, simple_type, sub_line_test_1_expr3, type, range(sub_line_test_1, 8468, 8, 158, 158)).
code(sub_line_test_1_code10, simple_type, sub_line_test_1_stmt2, type, range(sub_line_test_1, 8498, 7, 159, 159)).
code(sub_line_test_1_code11, variable_declaration_fragment, sub_line_test_1_stmt2, (fragments, 0), range(sub_line_test_1, 8506, 66, 159, 159)).
code(sub_line_test_1_code12, simple_type, sub_line_test_1_expr4, type, range(sub_line_test_1, 8517, 7, 159, 159)).
code(sub_line_test_1_code13, simple_type, sub_line_test_1_expr5, type, range(sub_line_test_1, 8529, 8, 159, 159)).
code(sub_line_test_1_code14, simple_type, sub_line_test_1_expr6, type, range(sub_line_test_1, 8552, 8, 159, 159)).
%bsptree_1 - org.apache.commons.math3.geometry.partitioning.BSPTree
code(bsptree_1_code1, compilation_unit, range(bsptree_1, 0, 25650, 1, -1)).
code(bsptree_1_code2, type_declaration, bsptree_1_code1, (types, 0), range(bsptree_1, 1066, 24583, 24, 635)).
code(bsptree_1_code3, method_declaration, bsptree_1_code2, (body_declarations, 6), range(bsptree_1, 3563, 319, 90, 99)).
code(bsptree_1_code4, modifier, bsptree_1_code3, (modifiers, 0), range(bsptree_1, 3708, 6, 93, 93)).
code(bsptree_1_code6, modifier, bsptree_1_code5, (modifiers, 0), range(bsptree_1, 3723, 5, 93, 93)).
code(bsptree_1_code5, single_variable_declaration, bsptree_1_code3, (parameters, 0), range(bsptree_1, 3723, 22, 93, 93)).
code(bsptree_1_code7, simple_type, bsptree_1_code5, type, range(bsptree_1, 3729, 6, 93, 93)).
code(bsptree_1_code8, method_declaration, bsptree_1_code2, (body_declarations, 7), range(bsptree_1, 3888, 1012, 101, 123)).
code(bsptree_1_code9, single_variable_declaration, bsptree_1_code8, (parameters, 3), range(bsptree_1, 4647, 22, 115, 115)).
code(bsptree_1_code10, modifier, bsptree_1_code9, (modifiers, 0), range(bsptree_1, 4647, 5, 115, 115)).
code(bsptree_1_code11, simple_type, bsptree_1_code9, type, range(bsptree_1, 4653, 6, 115, 115)).
%vector1_d_1 - org.apache.commons.math3.geometry.euclidean.oned.Vector1D
code(vector1_d_1_code1, compilation_unit, range(vector1_d_1, 0, 10873, 1, -1)).
code(vector1_d_1_code2, type_declaration, vector1_d_1_code1, (types, 0), range(vector1_d_1, 1219, 9653, 28, 348)).
code(vector1_d_1_code3, field_declaration, vector1_d_1_code2, (body_declarations, 0), range(vector1_d_1, 1419, 90, 35, 36)).
code(vector1_d_1_code4, modifier, vector1_d_1_code3, (modifiers, 0), range(vector1_d_1, 1455, 6, 36, 36)).
code(vector1_d_1_code5, modifier, vector1_d_1_code3, (modifiers, 1), range(vector1_d_1, 1462, 6, 36, 36)).
code(vector1_d_1_code6, modifier, vector1_d_1_code3, (modifiers, 2), range(vector1_d_1, 1469, 5, 36, 36)).
code(vector1_d_1_code7, simple_type, vector1_d_1_code3, type, range(vector1_d_1, 1475, 8, 36, 36)).
code(vector1_d_1_code8, variable_declaration_fragment, vector1_d_1_code3, (fragments, 0), range(vector1_d_1, 1484, 24, 36, 36)).
code(vector1_d_1_code9, simple_type, vector1_d_1_expr1, type, range(vector1_d_1, 1495, 8, 36, 36)).
code(vector1_d_1_code10, field_declaration, vector1_d_1_code2, (body_declarations, 1), range(vector1_d_1, 1515, 88, 38, 39)).
code(vector1_d_1_code11, modifier, vector1_d_1_code10, (modifiers, 0), range(vector1_d_1, 1549, 6, 39, 39)).
code(vector1_d_1_code12, modifier, vector1_d_1_code10, (modifiers, 1), range(vector1_d_1, 1556, 6, 39, 39)).
code(vector1_d_1_code13, modifier, vector1_d_1_code10, (modifiers, 2), range(vector1_d_1, 1563, 5, 39, 39)).
code(vector1_d_1_code14, simple_type, vector1_d_1_code10, type, range(vector1_d_1, 1569, 8, 39, 39)).
code(vector1_d_1_code15, variable_declaration_fragment, vector1_d_1_code10, (fragments, 0), range(vector1_d_1, 1578, 24, 39, 39)).
code(vector1_d_1_code16, simple_type, vector1_d_1_expr2, type, range(vector1_d_1, 1589, 8, 39, 39)).
code(vector1_d_1_code17, field_declaration, vector1_d_1_code2, (body_declarations, 2), range(vector1_d_1, 1646, 113, 42, 43)).
code(vector1_d_1_code18, modifier, vector1_d_1_code17, (modifiers, 0), range(vector1_d_1, 1699, 6, 43, 43)).
code(vector1_d_1_code19, modifier, vector1_d_1_code17, (modifiers, 1), range(vector1_d_1, 1706, 6, 43, 43)).
code(vector1_d_1_code20, modifier, vector1_d_1_code17, (modifiers, 2), range(vector1_d_1, 1713, 5, 43, 43)).
code(vector1_d_1_code21, simple_type, vector1_d_1_code17, type, range(vector1_d_1, 1719, 8, 43, 43)).
code(vector1_d_1_code22, variable_declaration_fragment, vector1_d_1_code17, (fragments, 0), range(vector1_d_1, 1728, 30, 43, 43)).
code(vector1_d_1_code23, simple_type, vector1_d_1_expr3, type, range(vector1_d_1, 1738, 8, 43, 43)).
code(vector1_d_1_code24, field_declaration, vector1_d_1_code2, (body_declarations, 3), range(vector1_d_1, 1804, 163, 46, 48)).
code(vector1_d_1_code25, modifier, vector1_d_1_code24, (modifiers, 0), range(vector1_d_1, 1871, 6, 47, 47)).
code(vector1_d_1_code26, modifier, vector1_d_1_code24, (modifiers, 1), range(vector1_d_1, 1878, 6, 47, 47)).
code(vector1_d_1_code27, modifier, vector1_d_1_code24, (modifiers, 2), range(vector1_d_1, 1885, 5, 47, 47)).
code(vector1_d_1_code28, simple_type, vector1_d_1_code24, type, range(vector1_d_1, 1891, 8, 47, 47)).
code(vector1_d_1_code29, variable_declaration_fragment, vector1_d_1_code24, (fragments, 0), range(vector1_d_1, 1900, 66, 47, 48)).
code(vector1_d_1_code30, field_declaration, vector1_d_1_code2, (body_declarations, 4), range(vector1_d_1, 1973, 163, 50, 52)).
code(vector1_d_1_code31, modifier, vector1_d_1_code30, (modifiers, 0), range(vector1_d_1, 2040, 6, 51, 51)).
code(vector1_d_1_code32, modifier, vector1_d_1_code30, (modifiers, 1), range(vector1_d_1, 2047, 6, 51, 51)).
code(vector1_d_1_code33, modifier, vector1_d_1_code30, (modifiers, 2), range(vector1_d_1, 2054, 5, 51, 51)).
code(vector1_d_1_code34, simple_type, vector1_d_1_code30, type, range(vector1_d_1, 2060, 8, 51, 51)).
code(vector1_d_1_code35, variable_declaration_fragment, vector1_d_1_code30, (fragments, 0), range(vector1_d_1, 2069, 66, 51, 52)).
code(vector1_d_1_code36, method_declaration, vector1_d_1_code2, (body_declarations, 7), range(vector1_d_1, 2293, 177, 60, 67)).
code(vector1_d_1_code37, modifier, vector1_d_1_code36, (modifiers, 0), range(vector1_d_1, 2417, 6, 65, 65)).
code(vector1_d_1_code39, primitive_type, vector1_d_1_code38, type, range(vector1_d_1, 2433, 6, 65, 65)).
code(vector1_d_1_code38, single_variable_declaration, vector1_d_1_code36, (parameters, 0), range(vector1_d_1, 2433, 8, 65, 65)).
code(vector1_d_1_code40, method_declaration, vector1_d_1_code2, (body_declarations, 12), range(vector1_d_1, 4517, 162, 123, 129)).
%vector3_d_1 - org.apache.commons.math3.geometry.euclidean.threed.Vector3D
code(vector3_d_1_code1, compilation_unit, range(vector3_d_1, 0, 20693, 1, -1)).
code(vector3_d_1_code2, type_declaration, vector3_d_1_code1, (types, 0), range(vector3_d_1, 1370, 19322, 32, 583)).
code(vector3_d_1_code3, field_declaration, vector3_d_1_code2, (body_declarations, 0), range(vector3_d_1, 1611, 107, 40, 41)).
code(vector3_d_1_code4, modifier, vector3_d_1_code3, (modifiers, 0), range(vector3_d_1, 1658, 6, 41, 41)).
code(vector3_d_1_code5, modifier, vector3_d_1_code3, (modifiers, 1), range(vector3_d_1, 1665, 6, 41, 41)).
code(vector3_d_1_code6, modifier, vector3_d_1_code3, (modifiers, 2), range(vector3_d_1, 1672, 5, 41, 41)).
code(vector3_d_1_code7, simple_type, vector3_d_1_code3, type, range(vector3_d_1, 1678, 8, 41, 41)).
code(vector3_d_1_code8, variable_declaration_fragment, vector3_d_1_code3, (fragments, 0), range(vector3_d_1, 1687, 30, 41, 41)).
code(vector3_d_1_code9, simple_type, vector3_d_1_expr1, type, range(vector3_d_1, 1700, 8, 41, 41)).
code(vector3_d_1_code10, field_declaration, vector3_d_1_code2, (body_declarations, 1), range(vector3_d_1, 1724, 118, 43, 44)).
code(vector3_d_1_code11, modifier, vector3_d_1_code10, (modifiers, 0), range(vector3_d_1, 1782, 6, 44, 44)).
code(vector3_d_1_code12, modifier, vector3_d_1_code10, (modifiers, 1), range(vector3_d_1, 1789, 6, 44, 44)).
code(vector3_d_1_code13, modifier, vector3_d_1_code10, (modifiers, 2), range(vector3_d_1, 1796, 5, 44, 44)).
code(vector3_d_1_code14, simple_type, vector3_d_1_code10, type, range(vector3_d_1, 1802, 8, 44, 44)).
code(vector3_d_1_code15, variable_declaration_fragment, vector3_d_1_code10, (fragments, 0), range(vector3_d_1, 1811, 30, 44, 44)).
code(vector3_d_1_code16, simple_type, vector3_d_1_expr2, type, range(vector3_d_1, 1824, 8, 44, 44)).
code(vector3_d_1_code17, field_declaration, vector3_d_1_code2, (body_declarations, 2), range(vector3_d_1, 1848, 137, 46, 47)).
code(vector3_d_1_code18, modifier, vector3_d_1_code17, (modifiers, 0), range(vector3_d_1, 1923, 6, 47, 47)).
code(vector3_d_1_code19, modifier, vector3_d_1_code17, (modifiers, 1), range(vector3_d_1, 1930, 6, 47, 47)).
code(vector3_d_1_code20, modifier, vector3_d_1_code17, (modifiers, 2), range(vector3_d_1, 1937, 5, 47, 47)).
code(vector3_d_1_code21, simple_type, vector3_d_1_code17, type, range(vector3_d_1, 1943, 8, 47, 47)).
code(vector3_d_1_code22, variable_declaration_fragment, vector3_d_1_code17, (fragments, 0), range(vector3_d_1, 1952, 32, 47, 47)).
code(vector3_d_1_code23, simple_type, vector3_d_1_expr3, type, range(vector3_d_1, 1966, 8, 47, 47)).
code(vector3_d_1_code24, field_declaration, vector3_d_1_code2, (body_declarations, 3), range(vector3_d_1, 1991, 119, 49, 50)).
code(vector3_d_1_code25, modifier, vector3_d_1_code24, (modifiers, 0), range(vector3_d_1, 2050, 6, 50, 50)).
code(vector3_d_1_code26, modifier, vector3_d_1_code24, (modifiers, 1), range(vector3_d_1, 2057, 6, 50, 50)).
code(vector3_d_1_code27, modifier, vector3_d_1_code24, (modifiers, 2), range(vector3_d_1, 2064, 5, 50, 50)).
code(vector3_d_1_code28, simple_type, vector3_d_1_code24, type, range(vector3_d_1, 2070, 8, 50, 50)).
code(vector3_d_1_code29, variable_declaration_fragment, vector3_d_1_code24, (fragments, 0), range(vector3_d_1, 2079, 30, 50, 50)).
code(vector3_d_1_code30, simple_type, vector3_d_1_expr5, type, range(vector3_d_1, 2092, 8, 50, 50)).
code(vector3_d_1_code31, field_declaration, vector3_d_1_code2, (body_declarations, 4), range(vector3_d_1, 2116, 138, 52, 53)).
code(vector3_d_1_code32, modifier, vector3_d_1_code31, (modifiers, 0), range(vector3_d_1, 2192, 6, 53, 53)).
code(vector3_d_1_code33, modifier, vector3_d_1_code31, (modifiers, 1), range(vector3_d_1, 2199, 6, 53, 53)).
code(vector3_d_1_code34, modifier, vector3_d_1_code31, (modifiers, 2), range(vector3_d_1, 2206, 5, 53, 53)).
code(vector3_d_1_code35, simple_type, vector3_d_1_code31, type, range(vector3_d_1, 2212, 8, 53, 53)).
code(vector3_d_1_code36, variable_declaration_fragment, vector3_d_1_code31, (fragments, 0), range(vector3_d_1, 2221, 32, 53, 53)).
code(vector3_d_1_code37, simple_type, vector3_d_1_expr6, type, range(vector3_d_1, 2235, 8, 53, 53)).
code(vector3_d_1_code38, field_declaration, vector3_d_1_code2, (body_declarations, 5), range(vector3_d_1, 2260, 118, 55, 56)).
code(vector3_d_1_code39, modifier, vector3_d_1_code38, (modifiers, 0), range(vector3_d_1, 2318, 6, 56, 56)).
code(vector3_d_1_code40, modifier, vector3_d_1_code38, (modifiers, 1), range(vector3_d_1, 2325, 6, 56, 56)).
code(vector3_d_1_code41, modifier, vector3_d_1_code38, (modifiers, 2), range(vector3_d_1, 2332, 5, 56, 56)).
code(vector3_d_1_code42, simple_type, vector3_d_1_code38, type, range(vector3_d_1, 2338, 8, 56, 56)).
code(vector3_d_1_code43, variable_declaration_fragment, vector3_d_1_code38, (fragments, 0), range(vector3_d_1, 2347, 30, 56, 56)).
code(vector3_d_1_code44, simple_type, vector3_d_1_expr8, type, range(vector3_d_1, 2360, 8, 56, 56)).
code(vector3_d_1_code45, field_declaration, vector3_d_1_code2, (body_declarations, 6), range(vector3_d_1, 2384, 138, 58, 59)).
code(vector3_d_1_code46, modifier, vector3_d_1_code45, (modifiers, 0), range(vector3_d_1, 2460, 6, 59, 59)).
code(vector3_d_1_code47, modifier, vector3_d_1_code45, (modifiers, 1), range(vector3_d_1, 2467, 6, 59, 59)).
code(vector3_d_1_code48, modifier, vector3_d_1_code45, (modifiers, 2), range(vector3_d_1, 2474, 5, 59, 59)).
code(vector3_d_1_code49, simple_type, vector3_d_1_code45, type, range(vector3_d_1, 2480, 8, 59, 59)).
code(vector3_d_1_code50, variable_declaration_fragment, vector3_d_1_code45, (fragments, 0), range(vector3_d_1, 2489, 32, 59, 59)).
code(vector3_d_1_code51, simple_type, vector3_d_1_expr9, type, range(vector3_d_1, 2503, 8, 59, 59)).
code(vector3_d_1_code52, field_declaration, vector3_d_1_code2, (body_declarations, 7), range(vector3_d_1, 2565, 137, 62, 63)).
code(vector3_d_1_code53, modifier, vector3_d_1_code52, (modifiers, 0), range(vector3_d_1, 2618, 6, 63, 63)).
code(vector3_d_1_code54, modifier, vector3_d_1_code52, (modifiers, 1), range(vector3_d_1, 2625, 6, 63, 63)).
code(vector3_d_1_code55, modifier, vector3_d_1_code52, (modifiers, 2), range(vector3_d_1, 2632, 5, 63, 63)).
code(vector3_d_1_code56, simple_type, vector3_d_1_code52, type, range(vector3_d_1, 2638, 8, 63, 63)).
code(vector3_d_1_code57, variable_declaration_fragment, vector3_d_1_code52, (fragments, 0), range(vector3_d_1, 2647, 54, 63, 63)).
code(vector3_d_1_code58, simple_type, vector3_d_1_expr11, type, range(vector3_d_1, 2657, 8, 63, 63)).
code(vector3_d_1_code59, field_declaration, vector3_d_1_code2, (body_declarations, 8), range(vector3_d_1, 2747, 215, 66, 68)).
code(vector3_d_1_code60, modifier, vector3_d_1_code59, (modifiers, 0), range(vector3_d_1, 2814, 6, 67, 67)).
code(vector3_d_1_code61, modifier, vector3_d_1_code59, (modifiers, 1), range(vector3_d_1, 2821, 6, 67, 67)).
code(vector3_d_1_code62, modifier, vector3_d_1_code59, (modifiers, 2), range(vector3_d_1, 2828, 5, 67, 67)).
code(vector3_d_1_code63, simple_type, vector3_d_1_code59, type, range(vector3_d_1, 2834, 8, 67, 67)).
code(vector3_d_1_code64, variable_declaration_fragment, vector3_d_1_code59, (fragments, 0), range(vector3_d_1, 2843, 118, 67, 68)).
code(vector3_d_1_code65, field_declaration, vector3_d_1_code2, (body_declarations, 9), range(vector3_d_1, 2968, 215, 70, 72)).
code(vector3_d_1_code66, modifier, vector3_d_1_code65, (modifiers, 0), range(vector3_d_1, 3035, 6, 71, 71)).
code(vector3_d_1_code67, modifier, vector3_d_1_code65, (modifiers, 1), range(vector3_d_1, 3042, 6, 71, 71)).
code(vector3_d_1_code68, modifier, vector3_d_1_code65, (modifiers, 2), range(vector3_d_1, 3049, 5, 71, 71)).
code(vector3_d_1_code69, simple_type, vector3_d_1_code65, type, range(vector3_d_1, 3055, 8, 71, 71)).
code(vector3_d_1_code70, variable_declaration_fragment, vector3_d_1_code65, (fragments, 0), range(vector3_d_1, 3064, 118, 71, 72)).
code(vector3_d_1_code71, method_declaration, vector3_d_1_code2, (body_declarations, 14), range(vector3_d_1, 3453, 325, 86, 99)).
code(vector3_d_1_code72, modifier, vector3_d_1_code71, (modifiers, 0), range(vector3_d_1, 3665, 6, 95, 95)).
code(vector3_d_1_code74, primitive_type, vector3_d_1_code73, type, range(vector3_d_1, 3681, 6, 95, 95)).
code(vector3_d_1_code73, single_variable_declaration, vector3_d_1_code71, (parameters, 0), range(vector3_d_1, 3681, 8, 95, 95)).
code(vector3_d_1_code75, single_variable_declaration, vector3_d_1_code71, (parameters, 1), range(vector3_d_1, 3691, 8, 95, 95)).
code(vector3_d_1_code76, primitive_type, vector3_d_1_code75, type, range(vector3_d_1, 3691, 6, 95, 95)).
code(vector3_d_1_code77, single_variable_declaration, vector3_d_1_code71, (parameters, 2), range(vector3_d_1, 3701, 8, 95, 95)).
code(vector3_d_1_code78, primitive_type, vector3_d_1_code77, type, range(vector3_d_1, 3701, 6, 95, 95)).
code(vector3_d_1_code79, method_declaration, vector3_d_1_code2, (body_declarations, 17), range(vector3_d_1, 4825, 331, 131, 141)).
code(vector3_d_1_code80, modifier, vector3_d_1_code79, (modifiers, 0), range(vector3_d_1, 5033, 6, 137, 137)).
code(vector3_d_1_code82, primitive_type, vector3_d_1_code81, type, range(vector3_d_1, 5049, 6, 137, 137)).
code(vector3_d_1_code81, single_variable_declaration, vector3_d_1_code79, (parameters, 0), range(vector3_d_1, 5049, 8, 137, 137)).
code(vector3_d_1_code83, single_variable_declaration, vector3_d_1_code79, (parameters, 1), range(vector3_d_1, 5059, 10, 137, 137)).
code(vector3_d_1_code84, simple_type, vector3_d_1_code83, type, range(vector3_d_1, 5059, 8, 137, 137)).
code(vector3_d_1_code85, method_declaration, vector3_d_1_code2, (body_declarations, 18), range(vector3_d_1, 5162, 598, 143, 155)).
code(vector3_d_1_code86, modifier, vector3_d_1_code85, (modifiers, 0), range(vector3_d_1, 5488, 6, 151, 151)).
code(vector3_d_1_code88, primitive_type, vector3_d_1_code87, type, range(vector3_d_1, 5504, 6, 151, 151)).
code(vector3_d_1_code87, single_variable_declaration, vector3_d_1_code85, (parameters, 0), range(vector3_d_1, 5504, 9, 151, 151)).
code(vector3_d_1_code90, simple_type, vector3_d_1_code89, type, range(vector3_d_1, 5515, 8, 151, 151)).
code(vector3_d_1_code89, single_variable_declaration, vector3_d_1_code85, (parameters, 1), range(vector3_d_1, 5515, 11, 151, 151)).
code(vector3_d_1_code91, single_variable_declaration, vector3_d_1_code85, (parameters, 2), range(vector3_d_1, 5528, 9, 151, 151)).
code(vector3_d_1_code92, primitive_type, vector3_d_1_code91, type, range(vector3_d_1, 5528, 6, 151, 151)).
code(vector3_d_1_code94, simple_type, vector3_d_1_code93, type, range(vector3_d_1, 5539, 8, 151, 151)).
code(vector3_d_1_code93, single_variable_declaration, vector3_d_1_code85, (parameters, 3), range(vector3_d_1, 5539, 11, 151, 151)).
code(vector3_d_1_code95, method_declaration, vector3_d_1_code2, (body_declarations, 28), range(vector3_d_1, 8538, 200, 240, 244)).
code(vector3_d_1_code96, method_declaration, vector3_d_1_code2, (body_declarations, 29), range(vector3_d_1, 8744, 186, 246, 250)).
code(vector3_d_1_code97, method_declaration, vector3_d_1_code2, (body_declarations, 35), range(vector3_d_1, 9925, 187, 284, 288)).
code(vector3_d_1_code98, modifier, vector3_d_1_stmt12, (modifiers, 0), range(vector3_d_1, 10014, 5, 286, 286)).
code(vector3_d_1_code99, simple_type, vector3_d_1_stmt12, type, range(vector3_d_1, 10020, 8, 286, 286)).
code(vector3_d_1_code100, variable_declaration_fragment, vector3_d_1_stmt12, (fragments, 0), range(vector3_d_1, 10029, 17, 286, 286)).
code(vector3_d_1_code101, simple_type, vector3_d_1_expr58, type, range(vector3_d_1, 10035, 8, 286, 286)).
code(vector3_d_1_code102, simple_type, vector3_d_1_expr59, type, range(vector3_d_1, 10067, 8, 287, 287)).
code(vector3_d_1_code103, method_declaration, vector3_d_1_code2, (body_declarations, 46), range(vector3_d_1, 15544, 527, 444, 455)).
code(vector3_d_1_code104, modifier, vector3_d_1_stmt14, (modifiers, 0), range(vector3_d_1, 15960, 5, 453, 453)).
code(vector3_d_1_code105, simple_type, vector3_d_1_stmt14, type, range(vector3_d_1, 15966, 8, 453, 453)).
code(vector3_d_1_code106, variable_declaration_fragment, vector3_d_1_stmt14, (fragments, 0), range(vector3_d_1, 15975, 17, 453, 453)).
code(vector3_d_1_code107, simple_type, vector3_d_1_expr63, type, range(vector3_d_1, 15981, 8, 453, 453)).

%%% Name References

name_ref(t_assert_5, type, 'Assert', 'Lorg/junit/Assert;').
name_ref(t_double_1, type, 'Double', 'Ljava/lang/Double;').
name_ref(t_fast_math_2, type, 'FastMath', 'Lorg/apache/commons/math3/util/FastMath;').
name_ref(t_math_9, type, 'Math', 'Ljava/lang/Math;').
name_ref(t_math_arrays_6, type, 'MathArrays', 'Lorg/apache/commons/math3/util/MathArrays;').
name_ref(t_precision_3, type, 'Precision', 'Lorg/apache/commons/math3/util/Precision;').
name_ref(t_strict_math_8, type, 'StrictMath', 'Ljava/lang/StrictMath;').
name_ref(t_sub_line_test_4, type, 'SubLineTest', 'Lorg/apache/commons/math3/geometry/euclidean/threed/SubLineTest;').
name_ref(t_sub_line_test_7, type, 'SubLineTest', 'Lorg/apache/commons/math3/geometry/euclidean/twod/SubLineTest;').
name_ref(p_end_105, param, 'end', 'sub_line_1;end_line_56').
name_ref(p_end_232, param, 'end', 'sub_line_2;end_line_56').
name_ref(p_hyperplane_20, param, 'hyperplane', 'sub_oriented_point_1;hyperplane_line_39').
name_ref(p_lower_1, param, 'lower', 'intervals_set_1;lower_line_47').
name_ref(p_remaining_region_21, param, 'remainingRegion', 'sub_oriented_point_1;remainingRegion_line_39').
name_ref(p_start_104, param, 'start', 'sub_line_1;start_line_56').
name_ref(p_start_231, param, 'start', 'sub_line_2;start_line_56').
name_ref(p_upper_2, param, 'upper', 'intervals_set_1;upper_line_47').
name_ref(v_a_1high_599, var, 'a1High', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDD)D#a1High').
name_ref(v_a_1high_625, var, 'a1High', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDDDD)D#a1High').
name_ref(v_a_1low_600, var, 'a1Low', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDD)D#a1Low').
name_ref(v_a_1low_626, var, 'a1Low', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDDDD)D#a1Low').
name_ref(v_a_2high_607, var, 'a2High', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDD)D#a2High').
name_ref(v_a_2high_633, var, 'a2High', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDDDD)D#a2High').
name_ref(v_a_2low_608, var, 'a2Low', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDD)D#a2Low').
name_ref(v_a_2low_634, var, 'a2Low', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDDDD)D#a2Low').
name_ref(v_a_3high_641, var, 'a3High', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDDDD)D#a3High').
name_ref(v_a_3low_642, var, 'a3Low', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDDDD)D#a3Low').
name_ref(v_a_442, var, 'a', 'Lorg/apache/commons/math3/util/FastMath;.sinQ(DD)D#a').
name_ref(v_a_452, var, 'a', 'Lorg/apache/commons/math3/util/FastMath;.cosQ(DD)D#a').
name_ref(v_a_96, var, 'a', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Line;.closestPoint(Lorg/apache/commons/math3/geometry/euclidean/threed/Line;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;#a').
name_ref(v_b_1high_602, var, 'b1High', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDD)D#b1High').
name_ref(v_b_1high_628, var, 'b1High', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDDDD)D#b1High').
name_ref(v_b_1low_603, var, 'b1Low', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDD)D#b1Low').
name_ref(v_b_1low_629, var, 'b1Low', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDDDD)D#b1Low').
name_ref(v_b_2high_610, var, 'b2High', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDD)D#b2High').
name_ref(v_b_2high_636, var, 'b2High', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDDDD)D#b2High').
name_ref(v_b_2low_611, var, 'b2Low', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDD)D#b2Low').
name_ref(v_b_2low_637, var, 'b2Low', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDDDD)D#b2Low').
name_ref(v_b_3high_644, var, 'b3High', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDDDD)D#b3High').
name_ref(v_b_3low_645, var, 'b3Low', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDDDD)D#b3Low').
name_ref(v_b_443, var, 'b', 'Lorg/apache/commons/math3/util/FastMath;.sinQ(DD)D#b').
name_ref(v_b_453, var, 'b', 'Lorg/apache/commons/math3/util/FastMath;.cosQ(DD)D#b').
name_ref(v_b_97, var, 'b', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Line;.closestPoint(Lorg/apache/commons/math3/geometry/euclidean/threed/Line;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;#b').
name_ref(v_c_445, var, 'c', 'Lorg/apache/commons/math3/util/FastMath;.sinQ(DD)D#c').
name_ref(v_ca_1_597, var, 'ca1', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDD)D#ca1').
name_ref(v_ca_1_624, var, 'ca1', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDDDD)D#ca1').
name_ref(v_ca_2_606, var, 'ca2', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDD)D#ca2').
name_ref(v_ca_2_632, var, 'ca2', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDDDD)D#ca2').
name_ref(v_ca_3_640, var, 'ca3', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDDDD)D#ca3').
name_ref(v_cb_1_601, var, 'cb1', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDD)D#cb1').
name_ref(v_cb_1_627, var, 'cb1', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDDDD)D#cb1').
name_ref(v_cb_2_609, var, 'cb2', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDD)D#cb2').
name_ref(v_cb_2_635, var, 'cb2', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDDDD)D#cb2').
name_ref(v_cb_3_643, var, 'cb3', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDDDD)D#cb3').
name_ref(v_closest_99, var, 'closest', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Line;.intersection(Lorg/apache/commons/math3/geometry/euclidean/threed/Line;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;#closest').
name_ref(v_cos_93, var, 'cos', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Line;.closestPoint(Lorg/apache/commons/math3/geometry/euclidean/threed/Line;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;#cos').
name_ref(v_cos_eps_a_437, var, 'cosEpsA', 'Lorg/apache/commons/math3/util/FastMath;.sinQ(DD)D#cosEpsA').
name_ref(v_cos_eps_b_438, var, 'cosEpsB', 'Lorg/apache/commons/math3/util/FastMath;.sinQ(DD)D#cosEpsB').
name_ref(v_cost_a_433, var, 'costA', 'Lorg/apache/commons/math3/util/FastMath;.sinQ(DD)D#costA').
name_ref(v_cost_b_434, var, 'costB', 'Lorg/apache/commons/math3/util/FastMath;.sinQ(DD)D#costB').
name_ref(v_d_199, var, 'd', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line;.reset(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V#d').
name_ref(v_d_210, var, 'd', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line;.intersection(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;#d').
name_ref(v_d_446, var, 'd', 'Lorg/apache/commons/math3/util/FastMath;.sinQ(DD)D#d').
name_ref(v_d_89, var, 'd', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Line;.distance(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D#d').
name_ref(v_delta_0_95, var, 'delta0', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Line;.closestPoint(Lorg/apache/commons/math3/geometry/euclidean/threed/Line;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;#delta0').
name_ref(v_delta_78, var, 'delta', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Line;.reset(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V|Lorg/apache/commons/math3/exception/MathIllegalArgumentException;#delta').
name_ref(v_dx_197, var, 'dx', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line;.reset(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V#dx').
name_ref(v_dy_198, var, 'dy', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line;.reset(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V#dy').
name_ref(v_epsilon_430, var, 'epsilon', 'Lorg/apache/commons/math3/util/FastMath;.sinQ(DD)D#epsilon').
name_ref(v_exp_x_519, var, 'expX', 'Lorg/apache/commons/math3/util/FastMath;.hypot(DD)D#0#expX').
name_ref(v_exp_y_520, var, 'expY', 'Lorg/apache/commons/math3/util/FastMath;.hypot(DD)D#0#expY').
name_ref(v_idx_429, var, 'idx', 'Lorg/apache/commons/math3/util/FastMath;.sinQ(DD)D#idx').
name_ref(v_line_113, var, 'line', 'Lorg/apache/commons/math3/geometry/euclidean/threed/SubLine;.buildIntervalSet(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;|Lorg/apache/commons/math3/exception/MathIllegalArgumentException;#line').
name_ref(v_line_1_236, var, 'line1', 'Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;.intersection(Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;Z)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;#line1').
name_ref(v_line_242, var, 'line', 'Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;.buildIntervalSet(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;#line').
name_ref(v_line_2_237, var, 'line2', 'Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;.intersection(Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;Z)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;#line2').
name_ref(v_loc_1_110, var, 'loc1', 'Lorg/apache/commons/math3/geometry/euclidean/threed/SubLine;.intersection(Lorg/apache/commons/math3/geometry/euclidean/threed/SubLine;Z)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;#loc1').
name_ref(v_loc_1_239, var, 'loc1', 'Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;.intersection(Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;Z)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;#loc1').
name_ref(v_lower_cut_7, var, 'lowerCut', 'Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;.buildTree(DD)Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;#lowerCut').
name_ref(v_n_90, var, 'n', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Line;.distance(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D#n').
name_ref(v_n_94, var, 'n', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Line;.closestPoint(Lorg/apache/commons/math3/geometry/euclidean/threed/Line;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;#n').
name_ref(v_negative_460, var, 'negative', 'Lorg/apache/commons/math3/util/FastMath;.sin(D)D#negative').
name_ref(v_norm_2_79, var, 'norm2', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Line;.reset(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V|Lorg/apache/commons/math3/exception/MathIllegalArgumentException;#norm2').
name_ref(v_p_2_207, var, 'p2', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line;.toSubSpace(Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;#p2').
name_ref(v_p_423, var, 'p', 'Lorg/apache/commons/math3/util/FastMath;.polySine(D)D#p').
name_ref(v_p_426, var, 'p', 'Lorg/apache/commons/math3/util/FastMath;.polyCosine(D)D#p').
name_ref(v_pi_2a_450, var, 'pi2a', 'Lorg/apache/commons/math3/util/FastMath;.cosQ(DD)D#pi2a').
name_ref(v_pi_2b_451, var, 'pi2b', 'Lorg/apache/commons/math3/util/FastMath;.cosQ(DD)D#pi2b').
name_ref(v_prod_1high_604, var, 'prod1High', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDD)D#prod1High').
name_ref(v_prod_1high_630, var, 'prod1High', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDDDD)D#prod1High').
name_ref(v_prod_1low_605, var, 'prod1Low', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDD)D#prod1Low').
name_ref(v_prod_1low_631, var, 'prod1Low', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDDDD)D#prod1Low').
name_ref(v_prod_2high_612, var, 'prod2High', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDD)D#prod2High').
name_ref(v_prod_2high_638, var, 'prod2High', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDDDD)D#prod2High').
name_ref(v_prod_2low_613, var, 'prod2Low', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDD)D#prod2Low').
name_ref(v_prod_2low_639, var, 'prod2Low', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDDDD)D#prod2Low').
name_ref(v_prod_3high_646, var, 'prod3High', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDDDD)D#prod3High').
name_ref(v_prod_3low_647, var, 'prod3Low', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDDDD)D#prod3Low').
name_ref(v_quadrant_461, var, 'quadrant', 'Lorg/apache/commons/math3/util/FastMath;.sin(D)D#quadrant').
name_ref(v_quadrant_465, var, 'quadrant', 'Lorg/apache/commons/math3/util/FastMath;.cos(D)D#quadrant').
name_ref(v_result_447, var, 'result', 'Lorg/apache/commons/math3/util/FastMath;.sinQ(DD)D#result').
name_ref(v_result_617, var, 'result', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDD)D#result').
name_ref(v_result_654, var, 'result', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDDDD)D#result').
name_ref(v_s_123high_651, var, 's123High', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDDDD)D#s123High').
name_ref(v_s_123low_653, var, 's123Low', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDDDD)D#s123Low').
name_ref(v_s_123prime_652, var, 's123Prime', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDDDD)D#s123Prime').
name_ref(v_s_12high_614, var, 's12High', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDD)D#s12High').
name_ref(v_s_12high_648, var, 's12High', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDDDD)D#s12High').
name_ref(v_s_12low_616, var, 's12Low', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDD)D#s12Low').
name_ref(v_s_12low_650, var, 's12Low', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDDDD)D#s12Low').
name_ref(v_s_12prime_615, var, 's12Prime', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDD)D#s12Prime').
name_ref(v_s_12prime_649, var, 's12Prime', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDDDD)D#s12Prime').
name_ref(v_sin_eps_a_435, var, 'sinEpsA', 'Lorg/apache/commons/math3/util/FastMath;.sinQ(DD)D#sinEpsA').
name_ref(v_sin_eps_b_436, var, 'sinEpsB', 'Lorg/apache/commons/math3/util/FastMath;.sinQ(DD)D#sinEpsB').
name_ref(v_sint_a_431, var, 'sintA', 'Lorg/apache/commons/math3/util/FastMath;.sinQ(DD)D#sintA').
name_ref(v_sint_b_432, var, 'sintB', 'Lorg/apache/commons/math3/util/FastMath;.sinQ(DD)D#sintB').
name_ref(v_sub_1_114, var, 'sub1', 'Lorg/apache/commons/math3/geometry/euclidean/threed/SubLineTest;.testIntersectionNotIntersecting()V|Lorg/apache/commons/math3/exception/MathIllegalArgumentException;#sub1').
name_ref(v_sub_1_247, var, 'sub1', 'Lorg/apache/commons/math3/geometry/euclidean/twod/SubLineTest;.testIntersectionParallel()V#sub1').
name_ref(v_sub_2_115, var, 'sub2', 'Lorg/apache/commons/math3/geometry/euclidean/threed/SubLineTest;.testIntersectionNotIntersecting()V|Lorg/apache/commons/math3/exception/MathIllegalArgumentException;#sub2').
name_ref(v_sub_2_248, var, 'sub2', 'Lorg/apache/commons/math3/geometry/euclidean/twod/SubLineTest;.testIntersectionParallel()V#sub2').
name_ref(v_t_444, var, 't', 'Lorg/apache/commons/math3/util/FastMath;.sinQ(DD)D#t').
name_ref(v_temp_2_441, var, 'temp2', 'Lorg/apache/commons/math3/util/FastMath;.sinQ(DD)D#temp2').
name_ref(v_temp_439, var, 'temp', 'Lorg/apache/commons/math3/util/FastMath;.sinQ(DD)D#temp').
name_ref(v_upper_cut_8, var, 'upperCut', 'Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;.buildTree(DD)Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;#upperCut').
name_ref(v_v_1d_109, var, 'v1D', 'Lorg/apache/commons/math3/geometry/euclidean/threed/SubLine;.intersection(Lorg/apache/commons/math3/geometry/euclidean/threed/SubLine;Z)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;#v1D').
name_ref(v_v_2d_238, var, 'v2D', 'Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;.intersection(Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;Z)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;#v2D').
name_ref(v_v_3_159, var, 'v3', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.subtract(Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;#v3').
name_ref(v_v_3_167, var, 'v3', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.dotProduct(Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;)D#v3').
name_ref(v_x_2_422, var, 'x2', 'Lorg/apache/commons/math3/util/FastMath;.polySine(D)D#x2').
name_ref(v_x_2_425, var, 'x2', 'Lorg/apache/commons/math3/util/FastMath;.polyCosine(D)D#x2').
name_ref(v_xa_463, var, 'xa', 'Lorg/apache/commons/math3/util/FastMath;.sin(D)D#xa').
name_ref(v_xa_466, var, 'xa', 'Lorg/apache/commons/math3/util/FastMath;.cos(D)D#xa').
name_ref(v_xb_462, var, 'xb', 'Lorg/apache/commons/math3/util/FastMath;.sin(D)D#xb').
name_ref(v_xb_467, var, 'xb', 'Lorg/apache/commons/math3/util/FastMath;.cos(D)D#xb').
name_ref(p_a_135, param, 'a', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V#a#0#0').
name_ref(p_a_164, param, 'a', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.scalarMultiply(D)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;#a#0#0').
name_ref(p_a_1_137, param, 'a1', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V#a1#0#0').
name_ref(p_a_1_141, param, 'a1', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V#a1#0#0').
name_ref(p_a_1_147, param, 'a1', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V#a1#0#0').
name_ref(p_a_1_260, param, 'a1', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.(DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V#a1#0#0').
name_ref(p_a_1_264, param, 'a1', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.(DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V#a1#0#0').
name_ref(p_a_1_270, param, 'a1', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.(DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V#a1#0#0').
name_ref(p_a_1_35, param, 'a1', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.(DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;)V#a1#0#0').
name_ref(p_a_1_39, param, 'a1', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.(DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;)V#a1#0#0').
name_ref(p_a_1_45, param, 'a1', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.(DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;)V#a1#0#0').
name_ref(p_a_1_593, param, 'a1', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDD)D#a1#0#0').
name_ref(p_a_1_618, param, 'a1', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDDDD)D#a1#0#0').
name_ref(p_a_1_655, param, 'a1', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDDDDDD)D#a1#0#0').
name_ref(p_a_258, param, 'a', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.(DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V#a#0#0').
name_ref(p_a_284, param, 'a', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.scalarMultiply(D)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;#a#0#0').
name_ref(p_a_2_139, param, 'a2', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V#a2#0#2').
name_ref(p_a_2_143, param, 'a2', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V#a2#0#2').
name_ref(p_a_2_149, param, 'a2', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V#a2#0#2').
name_ref(p_a_2_262, param, 'a2', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.(DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V#a2#0#2').
name_ref(p_a_2_266, param, 'a2', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.(DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V#a2#0#2').
name_ref(p_a_2_272, param, 'a2', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.(DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V#a2#0#2').
name_ref(p_a_2_37, param, 'a2', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.(DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;)V#a2#0#2').
name_ref(p_a_2_41, param, 'a2', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.(DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;)V#a2#0#2').
name_ref(p_a_2_47, param, 'a2', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.(DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;)V#a2#0#2').
name_ref(p_a_2_595, param, 'a2', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDD)D#a2#0#2').
name_ref(p_a_2_620, param, 'a2', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDDDD)D#a2#0#2').
name_ref(p_a_2_657, param, 'a2', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDDDDDD)D#a2#0#2').
name_ref(p_a_33, param, 'a', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.(DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;)V#a#0#0').
name_ref(p_a_392, param, 'a', 'Lorg/apache/commons/math3/util/FastMath;.sqrt(D)D#a#0#0').
name_ref(p_a_396, param, 'a', 'Lorg/apache/commons/math3/util/FastMath;.acosh(D)D#a#0#0').
name_ref(p_a_397, param, 'a', 'Lorg/apache/commons/math3/util/FastMath;.asinh(D)D#a#0#0').
name_ref(p_a_398, param, 'a', 'Lorg/apache/commons/math3/util/FastMath;.atanh(D)D#a#0#0').
name_ref(p_a_399, param, 'a', 'Lorg/apache/commons/math3/util/FastMath;.signum(D)D#a#0#0').
name_ref(p_a_3_145, param, 'a3', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V#a3#0#4').
name_ref(p_a_3_151, param, 'a3', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V#a3#0#4').
name_ref(p_a_3_268, param, 'a3', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.(DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V#a3#0#4').
name_ref(p_a_3_274, param, 'a3', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.(DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V#a3#0#4').
name_ref(p_a_3_43, param, 'a3', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.(DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;)V#a3#0#4').
name_ref(p_a_3_49, param, 'a3', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.(DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;)V#a3#0#4').
name_ref(p_a_3_622, param, 'a3', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDDDD)D#a3#0#4').
name_ref(p_a_3_659, param, 'a3', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDDDDDD)D#a3#0#4').
name_ref(p_a_400, param, 'a', 'Lorg/apache/commons/math3/util/FastMath;.signum(F)F#a#0#0').
name_ref(p_a_401, param, 'a', 'Lorg/apache/commons/math3/util/FastMath;.nextUp(D)D#a#0#0').
name_ref(p_a_402, param, 'a', 'Lorg/apache/commons/math3/util/FastMath;.nextUp(F)F#a#0#0').
name_ref(p_a_4_153, param, 'a4', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V#a4#0#6').
name_ref(p_a_4_276, param, 'a4', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.(DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V#a4#0#6').
name_ref(p_a_4_51, param, 'a4', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.(DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;)V#a4#0#6').
name_ref(p_a_4_661, param, 'a4', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDDDDDD)D#a4#0#6').
name_ref(p_a_501, param, 'a', 'Lorg/apache/commons/math3/util/FastMath;.min(II)I#a#0#0').
name_ref(p_a_503, param, 'a', 'Lorg/apache/commons/math3/util/FastMath;.min(JJ)J#a#0#0').
name_ref(p_a_505, param, 'a', 'Lorg/apache/commons/math3/util/FastMath;.min(FF)F#a#0#0').
name_ref(p_a_507, param, 'a', 'Lorg/apache/commons/math3/util/FastMath;.min(DD)D#a#0#0').
name_ref(p_a_509, param, 'a', 'Lorg/apache/commons/math3/util/FastMath;.max(II)I#a#0#0').
name_ref(p_a_511, param, 'a', 'Lorg/apache/commons/math3/util/FastMath;.max(JJ)J#a#0#0').
name_ref(p_a_513, param, 'a', 'Lorg/apache/commons/math3/util/FastMath;.max(FF)F#a#0#0').
name_ref(p_a_515, param, 'a', 'Lorg/apache/commons/math3/util/FastMath;.max(DD)D#a#0#0').
name_ref(p_a_529, param, 'a', 'Lorg/apache/commons/math3/util/FastMath;.main([Ljava/lang/String;)V#a#0#0').
name_ref(p_a_539, param, 'a', 'Lorg/apache/commons/math3/util/MathArrays;.ebeAdd([D[D)[D|Lorg/apache/commons/math3/exception/DimensionMismatchException;#a#0#0').
name_ref(p_a_541, param, 'a', 'Lorg/apache/commons/math3/util/MathArrays;.ebeSubtract([D[D)[D|Lorg/apache/commons/math3/exception/DimensionMismatchException;#a#0#0').
name_ref(p_a_543, param, 'a', 'Lorg/apache/commons/math3/util/MathArrays;.ebeMultiply([D[D)[D|Lorg/apache/commons/math3/exception/DimensionMismatchException;#a#0#0').
name_ref(p_a_545, param, 'a', 'Lorg/apache/commons/math3/util/MathArrays;.ebeDivide([D[D)[D|Lorg/apache/commons/math3/exception/DimensionMismatchException;#a#0#0').
name_ref(p_a_59, param, 'a', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.scalarMultiply(D)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;#a#0#0').
name_ref(p_a_591, param, 'a', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination([D[D)D|Lorg/apache/commons/math3/exception/DimensionMismatchException;#a#0#0').
name_ref(p_abort_568, param, 'abort', 'Lorg/apache/commons/math3/util/MathArrays;.checkOrder([DLorg/apache/commons/math3/util/MathArrays$OrderDirection;ZZ)Z|Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;#abort#0#3').
name_ref(p_abscissa_214, param, 'abscissa', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line;.getPointAt(Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;D)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;#abscissa#0#0').
name_ref(p_abscissa_83, param, 'abscissa', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Line;.pointAt(D)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;#abscissa#0#0').
name_ref(p_alpha_133, param, 'alpha', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.(DD)V#alpha#0#0').
name_ref(p_alpha_205, param, 'alpha', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line;.reset(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V#alpha#0#1').
name_ref(p_angle_189, param, 'angle', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line;.(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V#angle#0#1').
name_ref(p_angle_190, param, 'angle', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line;.(DDDD)V#angle#0#0').
name_ref(p_angle_220, param, 'angle', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line;.setAngle(D)V#angle#0#0').
name_ref(p_arr_536, param, 'arr', 'Lorg/apache/commons/math3/util/MathArrays;.scale(D[D)[D#arr#0#1').
name_ref(p_arr_538, param, 'arr', 'Lorg/apache/commons/math3/util/MathArrays;.scaleInPlace(D[D)V#arr#0#1').
name_ref(p_array_531, param, 'array', 'Lorg/apache/commons/math3/util/MathArrays$Function;.evaluate([D)D#array#0#0').
name_ref(p_array_532, param, 'array', 'Lorg/apache/commons/math3/util/MathArrays$Function;.evaluate([DII)D#array#0#0').
name_ref(p_attribute_347, param, 'attribute', 'Lorg/apache/commons/math3/geometry/partitioning/BSPTree;.(Ljava/lang/Object;)V#attribute#0#0').
name_ref(p_attribute_356, param, 'attribute', 'Lorg/apache/commons/math3/geometry/partitioning/BSPTree;.(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Ljava/lang/Object;)V#attribute#0#3').
name_ref(p_attribute_358, param, 'attribute', 'Lorg/apache/commons/math3/geometry/partitioning/BSPTree;.setAttribute(Ljava/lang/Object;)V#attribute#0#0').
name_ref(p_b_1_594, param, 'b1', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDD)D#b1#0#1').
name_ref(p_b_1_619, param, 'b1', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDDDD)D#b1#0#1').
name_ref(p_b_1_656, param, 'b1', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDDDDDD)D#b1#0#1').
name_ref(p_b_2_596, param, 'b2', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDD)D#b2#0#3').
name_ref(p_b_2_621, param, 'b2', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDDDD)D#b2#0#3').
name_ref(p_b_2_658, param, 'b2', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDDDDDD)D#b2#0#3').
name_ref(p_b_3_623, param, 'b3', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDDDD)D#b3#0#5').
name_ref(p_b_3_660, param, 'b3', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDDDDDD)D#b3#0#5').
name_ref(p_b_4_662, param, 'b4', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDDDDDD)D#b4#0#7').
name_ref(p_b_502, param, 'b', 'Lorg/apache/commons/math3/util/FastMath;.min(II)I#b#0#1').
name_ref(p_b_504, param, 'b', 'Lorg/apache/commons/math3/util/FastMath;.min(JJ)J#b#0#1').
name_ref(p_b_506, param, 'b', 'Lorg/apache/commons/math3/util/FastMath;.min(FF)F#b#0#1').
name_ref(p_b_508, param, 'b', 'Lorg/apache/commons/math3/util/FastMath;.min(DD)D#b#0#1').
name_ref(p_b_510, param, 'b', 'Lorg/apache/commons/math3/util/FastMath;.max(II)I#b#0#1').
name_ref(p_b_512, param, 'b', 'Lorg/apache/commons/math3/util/FastMath;.max(JJ)J#b#0#1').
name_ref(p_b_514, param, 'b', 'Lorg/apache/commons/math3/util/FastMath;.max(FF)F#b#0#1').
name_ref(p_b_516, param, 'b', 'Lorg/apache/commons/math3/util/FastMath;.max(DD)D#b#0#1').
name_ref(p_b_540, param, 'b', 'Lorg/apache/commons/math3/util/MathArrays;.ebeAdd([D[D)[D|Lorg/apache/commons/math3/exception/DimensionMismatchException;#b#0#1').
name_ref(p_b_542, param, 'b', 'Lorg/apache/commons/math3/util/MathArrays;.ebeSubtract([D[D)[D|Lorg/apache/commons/math3/exception/DimensionMismatchException;#b#0#1').
name_ref(p_b_544, param, 'b', 'Lorg/apache/commons/math3/util/MathArrays;.ebeMultiply([D[D)[D|Lorg/apache/commons/math3/exception/DimensionMismatchException;#b#0#1').
name_ref(p_b_546, param, 'b', 'Lorg/apache/commons/math3/util/MathArrays;.ebeDivide([D[D)[D|Lorg/apache/commons/math3/exception/DimensionMismatchException;#b#0#1').
name_ref(p_b_592, param, 'b', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination([D[D)D|Lorg/apache/commons/math3/exception/DimensionMismatchException;#b#0#1').
name_ref(p_barycenter_323, param, 'barycenter', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;.setBarycenter(Lorg/apache/commons/math3/geometry/Vector<TS;>;)V#barycenter#0#0').
name_ref(p_base_415, param, 'base', 'Lorg/apache/commons/math3/util/FastMath;.log(DD)D#base#0#0').
name_ref(p_boundary_300, param, 'boundary', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;.(Ljava/util/Collection<Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;>;)V#boundary#0#0').
name_ref(p_boundary_309, param, 'boundary', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;.insertCuts(Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Ljava/util/Collection<Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;>;)V#boundary#0#1').
name_ref(p_boundary_4, param, 'boundary', 'Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;.(Ljava/util/Collection<Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;>;)V#boundary#0#0').
name_ref(p_characterization_321, param, 'characterization', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion$BoundaryBuilder;.characterize(Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;[Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;)V#characterization#0#2').
name_ref(p_columns_677, param, 'columns', 'Lorg/apache/commons/math3/util/MathArrays;.buildArray<T:Ljava/lang/Object;>(Lorg/apache/commons/math3/Field<TT;>;II)[[TT;#columns#0#2').
name_ref(p_cos_191, param, 'cos', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line;.(DDDD)V#cos#0#1').
name_ref(p_cotan_flag_456, param, 'cotanFlag', 'Lorg/apache/commons/math3/util/FastMath;.tanQ(DDZ)D#cotanFlag#0#2').
name_ref(p_cut_353, param, 'cut', 'Lorg/apache/commons/math3/geometry/partitioning/BSPTree;.(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Ljava/lang/Object;)V#cut#0#0').
name_ref(p_d_391, param, 'd', 'Lorg/apache/commons/math3/util/FastMath;.doubleHighPart(D)D#d#0#0').
name_ref(p_d_419, param, 'd', 'Lorg/apache/commons/math3/util/FastMath;.pow(DI)D#d#0#0').
name_ref(p_d_488, param, 'd', 'Lorg/apache/commons/math3/util/FastMath;.scalb(DI)D#d#0#0').
name_ref(p_d_492, param, 'd', 'Lorg/apache/commons/math3/util/FastMath;.nextAfter(DD)D#d#0#0').
name_ref(p_d_527, param, 'd', 'Lorg/apache/commons/math3/util/FastMath;.getExponent(D)I#d#0#0').
name_ref(p_delta_134, param, 'delta', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.(DD)V#delta#0#1').
name_ref(p_dir_560, param, 'dir', 'Lorg/apache/commons/math3/util/MathArrays;.isMonotonic<T::Ljava/lang/Comparable<-TT;>;>([TT;Lorg/apache/commons/math3/util/MathArrays$OrderDirection;Z)Z#dir#0#1').
name_ref(p_dir_563, param, 'dir', 'Lorg/apache/commons/math3/util/MathArrays;.isMonotonic([DLorg/apache/commons/math3/util/MathArrays$OrderDirection;Z)Z#dir#0#1').
name_ref(p_dir_566, param, 'dir', 'Lorg/apache/commons/math3/util/MathArrays;.checkOrder([DLorg/apache/commons/math3/util/MathArrays$OrderDirection;ZZ)Z|Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;#dir#0#1').
name_ref(p_dir_570, param, 'dir', 'Lorg/apache/commons/math3/util/MathArrays;.checkOrder([DLorg/apache/commons/math3/util/MathArrays$OrderDirection;Z)V|Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;#dir#0#1').
name_ref(p_dir_581, param, 'dir', 'Lorg/apache/commons/math3/util/MathArrays;.sortInPlace([DLorg/apache/commons/math3/util/MathArrays$OrderDirection;[[D)V|Lorg/apache/commons/math3/exception/NullArgumentException;|Lorg/apache/commons/math3/exception/DimensionMismatchException;#dir#0#1').
name_ref(p_direct_15, param, 'direct', 'Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;.(Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;Z)V#direct#0#1').
name_ref(p_direction_493, param, 'direction', 'Lorg/apache/commons/math3/util/FastMath;.nextAfter(DD)D#direction#0#1').
name_ref(p_direction_495, param, 'direction', 'Lorg/apache/commons/math3/util/FastMath;.nextAfter(FD)F#direction#0#1').
name_ref(p_dividend_521, param, 'dividend', 'Lorg/apache/commons/math3/util/FastMath;.IEEEremainder(DD)D#dividend#0#0').
name_ref(p_divisor_522, param, 'divisor', 'Lorg/apache/commons/math3/util/FastMath;.IEEEremainder(DD)D#divisor#0#1').
name_ref(p_e_420, param, 'e', 'Lorg/apache/commons/math3/util/FastMath;.pow(DI)D#e#0#1').
name_ref(p_end_105, param, 'end', 'Lorg/apache/commons/math3/geometry/euclidean/threed/SubLine;.(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V|Lorg/apache/commons/math3/exception/MathIllegalArgumentException;#end#0#1').
name_ref(p_end_112, param, 'end', 'Lorg/apache/commons/math3/geometry/euclidean/threed/SubLine;.buildIntervalSet(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;|Lorg/apache/commons/math3/exception/MathIllegalArgumentException;#end#0#1').
name_ref(p_end_232, param, 'end', 'Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;.(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V#end#0#1').
name_ref(p_end_241, param, 'end', 'Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;.buildIntervalSet(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;#end#0#1').
name_ref(p_eps_685, param, 'eps', 'Lorg/apache/commons/math3/util/Precision;.compareTo(DDD)I#eps#0#2').
name_ref(p_eps_695, param, 'eps', 'Lorg/apache/commons/math3/util/Precision;.equals(FFF)Z#eps#0#2').
name_ref(p_eps_698, param, 'eps', 'Lorg/apache/commons/math3/util/Precision;.equalsIncludingNaN(FFF)Z#eps#0#2').
name_ref(p_eps_711, param, 'eps', 'Lorg/apache/commons/math3/util/Precision;.equals(DDD)Z#eps#0#2').
name_ref(p_eps_714, param, 'eps', 'Lorg/apache/commons/math3/util/Precision;.equalsWithRelativeTolerance(DDD)Z#eps#0#2').
name_ref(p_eps_717, param, 'eps', 'Lorg/apache/commons/math3/util/Precision;.equalsIncludingNaN(DDD)Z#eps#0#2').
name_ref(p_extra_405, param, 'extra', 'Lorg/apache/commons/math3/util/FastMath;.exp(DD[D)D#extra#0#1').
name_ref(p_f_490, param, 'f', 'Lorg/apache/commons/math3/util/FastMath;.scalb(FI)F#f#0#0').
name_ref(p_f_494, param, 'f', 'Lorg/apache/commons/math3/util/FastMath;.nextAfter(FD)F#f#0#0').
name_ref(p_f_528, param, 'f', 'Lorg/apache/commons/math3/util/FastMath;.getExponent(F)I#f#0#0').
name_ref(p_factor_156, param, 'factor', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.add(DLorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;#factor#0#0').
name_ref(p_factor_160, param, 'factor', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.subtract(DLorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;#factor#0#0').
name_ref(p_factor_279, param, 'factor', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.add(DLorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;#factor#0#0').
name_ref(p_factor_282, param, 'factor', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.subtract(DLorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;#factor#0#0').
name_ref(p_factor_54, param, 'factor', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.add(DLorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;#factor#0#0').
name_ref(p_factor_57, param, 'factor', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.subtract(DLorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;#factor#0#0').
name_ref(p_field_673, param, 'field', 'Lorg/apache/commons/math3/util/MathArrays;.buildArray<T:Ljava/lang/Object;>(Lorg/apache/commons/math3/Field<TT;>;I)[TT;#field#0#0').
name_ref(p_field_675, param, 'field', 'Lorg/apache/commons/math3/util/MathArrays;.buildArray<T:Ljava/lang/Object;>(Lorg/apache/commons/math3/Field<TT;>;II)[[TT;#field#0#0').
name_ref(p_format_185, param, 'format', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.toString(Ljava/text/NumberFormat;)Ljava/lang/String;#format#0#0').
name_ref(p_format_297, param, 'format', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.toString(Ljava/text/NumberFormat;)Ljava/lang/String;#format#0#0').
name_ref(p_format_72, param, 'format', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.toString(Ljava/text/NumberFormat;)Ljava/lang/String;#format#0#0').
name_ref(p_h_679, param, 'h', 'Lorg/apache/commons/math3/util/MathArrays;.convolve([D[D)[D|Lorg/apache/commons/math3/exception/NullArgumentException;|Lorg/apache/commons/math3/exception/NoDataException;#h#0#1').
name_ref(p_hi_prec_406, param, 'hiPrec', 'Lorg/apache/commons/math3/util/FastMath;.exp(DD[D)D#hiPrec#0#2').
name_ref(p_hi_prec_412, param, 'hiPrec', 'Lorg/apache/commons/math3/util/FastMath;.log(D[D)D#hiPrec#0#1').
name_ref(p_hi_prec_out_409, param, 'hiPrecOut', 'Lorg/apache/commons/math3/util/FastMath;.expm1(D[D)D#hiPrecOut#0#1').
name_ref(p_hyper_338, param, 'hyper', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;.buildNew(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<TS;>;Lorg/apache/commons/math3/geometry/partitioning/Region<TT;>;)Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<TS;TT;>;#hyper#0#0').
name_ref(p_hyper_345, param, 'hyper', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;.side(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<TS;>;)Lorg/apache/commons/math3/geometry/partitioning/Side;#hyper#0#0').
name_ref(p_hyper_346, param, 'hyper', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;.split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<TS;>;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane<TS;>;#hyper#0#0').
name_ref(p_hyperplane_20, param, 'hyperplane', 'Lorg/apache/commons/math3/geometry/euclidean/oned/SubOrientedPoint;.(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;Lorg/apache/commons/math3/geometry/partitioning/Region<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;)V#hyperplane#0#0').
name_ref(p_hyperplane_22, param, 'hyperplane', 'Lorg/apache/commons/math3/geometry/euclidean/oned/SubOrientedPoint;.buildNew(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;Lorg/apache/commons/math3/geometry/partitioning/Region<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;)Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;#hyperplane#0#0').
name_ref(p_hyperplane_225, param, 'hyperplane', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;.apply(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;)Lorg/apache/commons/math3/geometry/euclidean/twod/Line;#hyperplane#0#0').
name_ref(p_hyperplane_229, param, 'hyperplane', 'Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;.(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;Lorg/apache/commons/math3/geometry/partitioning/Region<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;)V#hyperplane#0#0').
name_ref(p_hyperplane_24, param, 'hyperplane', 'Lorg/apache/commons/math3/geometry/euclidean/oned/SubOrientedPoint;.side(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;)Lorg/apache/commons/math3/geometry/partitioning/Side;#hyperplane#0#0').
name_ref(p_hyperplane_243, param, 'hyperplane', 'Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;.buildNew(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;Lorg/apache/commons/math3/geometry/partitioning/Region<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;)Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;#hyperplane#0#0').
name_ref(p_hyperplane_245, param, 'hyperplane', 'Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;.side(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;)Lorg/apache/commons/math3/geometry/partitioning/Side;#hyperplane#0#0').
name_ref(p_hyperplane_246, param, 'hyperplane', 'Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;.split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;#hyperplane#0#0').
name_ref(p_hyperplane_25, param, 'hyperplane', 'Lorg/apache/commons/math3/geometry/euclidean/oned/SubOrientedPoint;.split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;#hyperplane#0#0').
name_ref(p_hyperplane_324, param, 'hyperplane', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;.side(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<TS;>;)Lorg/apache/commons/math3/geometry/partitioning/Side;#hyperplane#0#0').
name_ref(p_hyperplane_334, param, 'hyperplane', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;.(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<TS;>;Lorg/apache/commons/math3/geometry/partitioning/Region<TT;>;)V#hyperplane#0#0').
name_ref(p_hyperplane_357, param, 'hyperplane', 'Lorg/apache/commons/math3/geometry/partitioning/BSPTree;.insertCut(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<TS;>;)Z#hyperplane#0#0').
name_ref(p_hyperplane_376, param, 'hyperplane', 'Lorg/apache/commons/math3/geometry/partitioning/BSPTree;.chopOffMinus(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<TS;>;)V#hyperplane#0#0').
name_ref(p_hyperplane_377, param, 'hyperplane', 'Lorg/apache/commons/math3/geometry/partitioning/BSPTree;.chopOffPlus(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<TS;>;)V#hyperplane#0#0').
name_ref(p_hyperplanes_306, param, 'hyperplanes', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;.([Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<TS;>;)V#hyperplanes#0#0').
name_ref(p_in_573, param, 'in', 'Lorg/apache/commons/math3/util/MathArrays;.checkRectangular([[J)V|Lorg/apache/commons/math3/exception/NullArgumentException;|Lorg/apache/commons/math3/exception/DimensionMismatchException;#in#0#0').
name_ref(p_in_574, param, 'in', 'Lorg/apache/commons/math3/util/MathArrays;.checkPositive([D)V|Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;#in#0#0').
name_ref(p_in_575, param, 'in', 'Lorg/apache/commons/math3/util/MathArrays;.checkNonNegative([J)V|Lorg/apache/commons/math3/exception/NotPositiveException;#in#0#0').
name_ref(p_in_576, param, 'in', 'Lorg/apache/commons/math3/util/MathArrays;.checkNonNegative([[J)V|Lorg/apache/commons/math3/exception/NotPositiveException;#in#0#0').
name_ref(p_include_boundary_attributes_315, param, 'includeBoundaryAttributes', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;.getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;#includeBoundaryAttributes#0#0').
name_ref(p_include_end_points_108, param, 'includeEndPoints', 'Lorg/apache/commons/math3/geometry/euclidean/threed/SubLine;.intersection(Lorg/apache/commons/math3/geometry/euclidean/threed/SubLine;Z)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;#includeEndPoints#0#1').
name_ref(p_include_end_points_235, param, 'includeEndPoints', 'Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;.intersection(Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;Z)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;#includeEndPoints#0#1').
name_ref(p_is_plus_child_367, param, 'isPlusChild', 'Lorg/apache/commons/math3/geometry/partitioning/BSPTree;.merge(Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger<TS;>;Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;#isPlusChild#0#3').
name_ref(p_is_plus_child_371, param, 'isPlusChild', 'Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger;.merge(Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;ZZ)Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;#isPlusChild#0#3').
name_ref(p_is_plus_child_375, param, 'isPlusChild', 'Lorg/apache/commons/math3/geometry/partitioning/BSPTree;.insertInTree(Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Z)V#isPlusChild#0#1').
name_ref(p_leaf_368, param, 'leaf', 'Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger;.merge(Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;ZZ)Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;#leaf#0#0').
name_ref(p_leaf_from_instance_372, param, 'leafFromInstance', 'Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger;.merge(Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;ZZ)Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;#leafFromInstance#0#4').
name_ref(p_leaf_merger_363, param, 'leafMerger', 'Lorg/apache/commons/math3/geometry/partitioning/BSPTree;.merge(Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger<TS;>;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;#leafMerger#0#1').
name_ref(p_leaf_merger_365, param, 'leafMerger', 'Lorg/apache/commons/math3/geometry/partitioning/BSPTree;.merge(Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger<TS;>;Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;#leafMerger#0#1').
name_ref(p_left_plane_472, param, 'leftPlane', 'Lorg/apache/commons/math3/util/FastMath;.atan(DDZ)D#leftPlane#0#2').
name_ref(p_len_588, param, 'len', 'Lorg/apache/commons/math3/util/MathArrays;.copyOf([II)[I#len#0#1').
name_ref(p_len_590, param, 'len', 'Lorg/apache/commons/math3/util/MathArrays;.copyOf([DI)[D#len#0#1').
name_ref(p_length_674, param, 'length', 'Lorg/apache/commons/math3/util/MathArrays;.buildArray<T:Ljava/lang/Object;>(Lorg/apache/commons/math3/Field<TT;>;I)[TT;#length#0#1').
name_ref(p_line_100, param, 'line', 'Lorg/apache/commons/math3/geometry/euclidean/threed/SubLine;.(Lorg/apache/commons/math3/geometry/euclidean/threed/Line;Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;)V#line#0#0').
name_ref(p_line_194, param, 'line', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line;.(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)V#line#0#0').
name_ref(p_line_211, param, 'line', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line;.getOffset(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)D#line#0#0').
name_ref(p_line_218, param, 'line', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line;.isParallelTo(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)Z#line#0#0').
name_ref(p_line_75, param, 'line', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Line;.(Lorg/apache/commons/math3/geometry/euclidean/threed/Line;)V#line#0#0').
name_ref(p_line_86, param, 'line', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Line;.isSimilarTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Line;)Z#line#0#0').
name_ref(p_line_91, param, 'line', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Line;.distance(Lorg/apache/commons/math3/geometry/euclidean/threed/Line;)D#line#0#0').
name_ref(p_line_92, param, 'line', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Line;.closestPoint(Lorg/apache/commons/math3/geometry/euclidean/threed/Line;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;#line#0#0').
name_ref(p_line_98, param, 'line', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Line;.intersection(Lorg/apache/commons/math3/geometry/euclidean/threed/Line;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;#line#0#0').
name_ref(p_list_11, param, 'list', 'Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;.recurseList(Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;>;DD)V#list#0#1').
name_ref(p_location_14, param, 'location', 'Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;.(Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;Z)V#location#0#0').
name_ref(p_lower_1, param, 'lower', 'Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;.(DD)V#lower#0#0').
name_ref(p_lower_12, param, 'lower', 'Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;.recurseList(Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;>;DD)V#lower#0#2').
name_ref(p_lower_5, param, 'lower', 'Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;.buildTree(DD)Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;#lower#0#0').
name_ref(p_magnitude_523, param, 'magnitude', 'Lorg/apache/commons/math3/util/FastMath;.copySign(DD)D#magnitude#0#0').
name_ref(p_magnitude_525, param, 'magnitude', 'Lorg/apache/commons/math3/util/FastMath;.copySign(FF)F#magnitude#0#0').
name_ref(p_max_ulps_688, param, 'maxUlps', 'Lorg/apache/commons/math3/util/Precision;.compareTo(DDI)I#maxUlps#0#2').
name_ref(p_max_ulps_701, param, 'maxUlps', 'Lorg/apache/commons/math3/util/Precision;.equals(FFI)Z#maxUlps#0#2').
name_ref(p_max_ulps_704, param, 'maxUlps', 'Lorg/apache/commons/math3/util/Precision;.equalsIncludingNaN(FFI)Z#maxUlps#0#2').
name_ref(p_max_ulps_720, param, 'maxUlps', 'Lorg/apache/commons/math3/util/Precision;.equals(DDI)Z#maxUlps#0#2').
name_ref(p_max_ulps_723, param, 'maxUlps', 'Lorg/apache/commons/math3/util/Precision;.equalsIncludingNaN(DDI)Z#maxUlps#0#2').
name_ref(p_minus_355, param, 'minus', 'Lorg/apache/commons/math3/geometry/partitioning/BSPTree;.(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Ljava/lang/Object;)V#minus#0#2').
name_ref(p_n_489, param, 'n', 'Lorg/apache/commons/math3/util/FastMath;.scalb(DI)D#n#0#1').
name_ref(p_n_491, param, 'n', 'Lorg/apache/commons/math3/util/FastMath;.scalb(FI)F#n#0#1').
name_ref(p_new_tree_307, param, 'newTree', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;.buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;)Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion<TS;TT;>;#newTree#0#0').
name_ref(p_node_10, param, 'node', 'Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;.recurseList(Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;>;DD)V#node#0#0').
name_ref(p_node_303, param, 'node', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion$4775;.visitOrder(Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;)Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;#node#0#0').
name_ref(p_node_304, param, 'node', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion$4775;.visitInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;)V#node#0#0').
name_ref(p_node_305, param, 'node', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion$4775;.visitLeafNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;)V#node#0#0').
name_ref(p_node_308, param, 'node', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;.insertCuts(Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Ljava/util/Collection<Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;>;)V#node#0#0').
name_ref(p_node_310, param, 'node', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;.isEmpty(Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;)Z#node#0#0').
name_ref(p_node_313, param, 'node', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;.checkPoint(Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Lorg/apache/commons/math3/geometry/Vector<TS;>;)Lorg/apache/commons/math3/geometry/partitioning/Region$Location;#node#0#0').
name_ref(p_node_316, param, 'node', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion$BoundaryBuilder;.visitOrder(Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;)Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;#node#0#0').
name_ref(p_node_317, param, 'node', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion$BoundaryBuilder;.visitInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;)V#node#0#0').
name_ref(p_node_318, param, 'node', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion$BoundaryBuilder;.visitLeafNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;)V#node#0#0').
name_ref(p_node_319, param, 'node', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion$BoundaryBuilder;.characterize(Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;[Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;)V#node#0#0').
name_ref(p_node_325, param, 'node', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;.recurseSides(Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion$Sides;)V#node#0#0').
name_ref(p_node_329, param, 'node', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;.recurseIntersection(Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;#node#0#0').
name_ref(p_node_332, param, 'node', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;.recurseTransform(Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Lorg/apache/commons/math3/geometry/partitioning/Transform<TS;TT;>;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;#node#0#0').
name_ref(p_node_342, param, 'node', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;.recurseTransform(Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TT;>;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<TS;>;Lorg/apache/commons/math3/geometry/partitioning/Transform<TS;TT;>;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TT;>;#node#0#0').
name_ref(p_normalized_sum_672, param, 'normalizedSum', 'Lorg/apache/commons/math3/util/MathArrays;.normalizeArray([DD)[D|Lorg/apache/commons/math3/exception/MathIllegalArgumentException;|Lorg/apache/commons/math3/exception/MathArithmeticException;#normalizedSum#0#1').
name_ref(p_num_elements_534, param, 'numElements', 'Lorg/apache/commons/math3/util/MathArrays$Function;.evaluate([DII)D#numElements#0#2').
name_ref(p_o_1_301, param, 'o1', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion$4205;.compare(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;)I#o1#0#0').
name_ref(p_o_1_583, param, 'o1', 'Lorg/apache/commons/math3/util/MathArrays$24869;.compare(Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;[D>;Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;[D>;)I#o1#0#0').
name_ref(p_o_2_302, param, 'o2', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion$4205;.compare(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;)I#o2#0#1').
name_ref(p_o_2_584, param, 'o2', 'Lorg/apache/commons/math3/util/MathArrays$24869;.compare(Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;[D>;Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;[D>;)I#o2#0#1').
name_ref(p_offset_215, param, 'offset', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line;.getPointAt(Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;D)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;#offset#0#1').
name_ref(p_offset_221, param, 'offset', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line;.setOriginOffset(D)V#offset#0#0').
name_ref(p_origin_offset_193, param, 'originOffset', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line;.(DDDD)V#originOffset#0#3').
name_ref(p_original_227, param, 'original', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;.apply(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;#original#0#1').
name_ref(p_original_delta_738, param, 'originalDelta', 'Lorg/apache/commons/math3/util/Precision;.representableDelta(DD)D#originalDelta#0#1').
name_ref(p_other_165, param, 'other', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.equals(Ljava/lang/Object;)Z#other#0#0').
name_ref(p_other_19, param, 'other', 'Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;.sameOrientationAs(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;)Z#other#0#0').
name_ref(p_other_209, param, 'other', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line;.intersection(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;#other#0#0').
name_ref(p_other_213, param, 'other', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line;.sameOrientationAs(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;)Z#other#0#0').
name_ref(p_other_296, param, 'other', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.equals(Ljava/lang/Object;)Z#other#0#0').
name_ref(p_other_340, param, 'other', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;.reunite(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;)Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<TS;TT;>;#other#0#0').
name_ref(p_other_71, param, 'other', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.equals(Ljava/lang/Object;)Z#other#0#0').
name_ref(p_p_188, param, 'p', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line;.(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V#p#0#0').
name_ref(p_p_1_186, param, 'p1', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line;.(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V#p1#0#0').
name_ref(p_p_1_195, param, 'p1', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line;.reset(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V#p1#0#0').
name_ref(p_p_1_290, param, 'p1', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.distance(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)D#p1#0#0').
name_ref(p_p_1_292, param, 'p1', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.distanceInf(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)D#p1#0#0').
name_ref(p_p_1_294, param, 'p1', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.distanceSq(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)D#p1#0#0').
name_ref(p_p_1_547, param, 'p1', 'Lorg/apache/commons/math3/util/MathArrays;.distance1([D[D)D#p1#0#0').
name_ref(p_p_1_549, param, 'p1', 'Lorg/apache/commons/math3/util/MathArrays;.distance1([I[I)I#p1#0#0').
name_ref(p_p_1_551, param, 'p1', 'Lorg/apache/commons/math3/util/MathArrays;.distance([D[D)D#p1#0#0').
name_ref(p_p_1_553, param, 'p1', 'Lorg/apache/commons/math3/util/MathArrays;.distance([I[I)D#p1#0#0').
name_ref(p_p_1_555, param, 'p1', 'Lorg/apache/commons/math3/util/MathArrays;.distanceInf([D[D)D#p1#0#0').
name_ref(p_p_1_557, param, 'p1', 'Lorg/apache/commons/math3/util/MathArrays;.distanceInf([I[I)I#p1#0#0').
name_ref(p_p_1_65, param, 'p1', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.distance(Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;)D#p1#0#0').
name_ref(p_p_1_67, param, 'p1', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.distanceInf(Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;)D#p1#0#0').
name_ref(p_p_1_69, param, 'p1', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.distanceSq(Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;)D#p1#0#0').
name_ref(p_p_1_73, param, 'p1', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Line;.(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V|Lorg/apache/commons/math3/exception/MathIllegalArgumentException;#p1#0#0').
name_ref(p_p_1_76, param, 'p1', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Line;.reset(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V|Lorg/apache/commons/math3/exception/MathIllegalArgumentException;#p1#0#0').
name_ref(p_p_204, param, 'p', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line;.reset(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V#p#0#0').
name_ref(p_p_216, param, 'p', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line;.contains(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)Z#p#0#0').
name_ref(p_p_217, param, 'p', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line;.distance(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)D#p#0#0').
name_ref(p_p_219, param, 'p', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line;.translateToPoint(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V#p#0#0').
name_ref(p_p_281, param, 'p', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.subtract(Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;#p#0#0').
name_ref(p_p_285, param, 'p', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.distance1(Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;)D#p#0#0').
name_ref(p_p_286, param, 'p', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.distance(Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;)D#p#0#0').
name_ref(p_p_287, param, 'p', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.distanceInf(Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;)D#p#0#0').
name_ref(p_p_288, param, 'p', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.distanceSq(Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;)D#p#0#0').
name_ref(p_p_2_187, param, 'p2', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line;.(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V#p2#0#1').
name_ref(p_p_2_196, param, 'p2', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line;.reset(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V#p2#0#1').
name_ref(p_p_2_291, param, 'p2', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.distance(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)D#p2#0#1').
name_ref(p_p_2_293, param, 'p2', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.distanceInf(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)D#p2#0#1').
name_ref(p_p_2_295, param, 'p2', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.distanceSq(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)D#p2#0#1').
name_ref(p_p_2_548, param, 'p2', 'Lorg/apache/commons/math3/util/MathArrays;.distance1([D[D)D#p2#0#1').
name_ref(p_p_2_550, param, 'p2', 'Lorg/apache/commons/math3/util/MathArrays;.distance1([I[I)I#p2#0#1').
name_ref(p_p_2_552, param, 'p2', 'Lorg/apache/commons/math3/util/MathArrays;.distance([D[D)D#p2#0#1').
name_ref(p_p_2_554, param, 'p2', 'Lorg/apache/commons/math3/util/MathArrays;.distance([I[I)D#p2#0#1').
name_ref(p_p_2_556, param, 'p2', 'Lorg/apache/commons/math3/util/MathArrays;.distanceInf([D[D)D#p2#0#1').
name_ref(p_p_2_558, param, 'p2', 'Lorg/apache/commons/math3/util/MathArrays;.distanceInf([I[I)I#p2#0#1').
name_ref(p_p_2_66, param, 'p2', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.distance(Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;)D#p2#0#1').
name_ref(p_p_2_68, param, 'p2', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.distanceInf(Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;)D#p2#0#1').
name_ref(p_p_2_70, param, 'p2', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.distanceSq(Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;)D#p2#0#1').
name_ref(p_p_2_74, param, 'p2', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Line;.(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V|Lorg/apache/commons/math3/exception/MathIllegalArgumentException;#p2#0#1').
name_ref(p_p_2_77, param, 'p2', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Line;.reset(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V|Lorg/apache/commons/math3/exception/MathIllegalArgumentException;#p2#0#1').
name_ref(p_p_56, param, 'p', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.subtract(Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;#p#0#0').
name_ref(p_p_60, param, 'p', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.distance1(Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;)D#p#0#0').
name_ref(p_p_61, param, 'p', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.distance(Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;)D#p#0#0').
name_ref(p_p_62, param, 'p', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.distanceInf(Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;)D#p#0#0').
name_ref(p_p_63, param, 'p', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.distanceSq(Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;)D#p#0#0').
name_ref(p_p_87, param, 'p', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Line;.contains(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Z#p#0#0').
name_ref(p_p_88, param, 'p', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Line;.distance(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D#p#0#0').
name_ref(p_parent_tree_366, param, 'parentTree', 'Lorg/apache/commons/math3/geometry/partitioning/BSPTree;.merge(Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger<TS;>;Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;#parentTree#0#2').
name_ref(p_parent_tree_370, param, 'parentTree', 'Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger;.merge(Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;ZZ)Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;#parentTree#0#2').
name_ref(p_parent_tree_374, param, 'parentTree', 'Lorg/apache/commons/math3/geometry/partitioning/BSPTree;.insertInTree(Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Z)V#parentTree#0#0').
name_ref(p_plus_354, param, 'plus', 'Lorg/apache/commons/math3/geometry/partitioning/BSPTree;.(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Ljava/lang/Object;)V#plus#0#1').
name_ref(p_point_18, param, 'point', 'Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;.getOffset(Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;)D#point#0#0').
name_ref(p_point_206, param, 'point', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line;.toSubSpace(Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;#point#0#0').
name_ref(p_point_208, param, 'point', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line;.toSpace(Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;#point#0#0').
name_ref(p_point_212, param, 'point', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line;.getOffset(Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;)D#point#0#0').
name_ref(p_point_224, param, 'point', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;.apply(Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;#point#0#0').
name_ref(p_point_312, param, 'point', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;.checkPoint(Lorg/apache/commons/math3/geometry/Vector<TS;>;)Lorg/apache/commons/math3/geometry/partitioning/Region$Location;#point#0#0').
name_ref(p_point_314, param, 'point', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;.checkPoint(Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Lorg/apache/commons/math3/geometry/Vector<TS;>;)Lorg/apache/commons/math3/geometry/partitioning/Region$Location;#point#0#1').
name_ref(p_point_361, param, 'point', 'Lorg/apache/commons/math3/geometry/partitioning/BSPTree;.getCell(Lorg/apache/commons/math3/geometry/Vector<TS;>;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;#point#0#0').
name_ref(p_point_82, param, 'point', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Line;.getAbscissa(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D#point#0#0').
name_ref(p_point_84, param, 'point', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Line;.toSubSpace(Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;#point#0#0').
name_ref(p_point_85, param, 'point', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Line;.toSpace(Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;#point#0#0').
name_ref(p_region_311, param, 'region', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;.contains(Lorg/apache/commons/math3/geometry/partitioning/Region<TS;>;)Z#region#0#0').
name_ref(p_remaining_339, param, 'remaining', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;.buildNew(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<TS;>;Lorg/apache/commons/math3/geometry/partitioning/Region<TT;>;)Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<TS;TT;>;#remaining#0#1').
name_ref(p_remaining_region_101, param, 'remainingRegion', 'Lorg/apache/commons/math3/geometry/euclidean/threed/SubLine;.(Lorg/apache/commons/math3/geometry/euclidean/threed/Line;Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;)V#remainingRegion#0#1').
name_ref(p_remaining_region_21, param, 'remainingRegion', 'Lorg/apache/commons/math3/geometry/euclidean/oned/SubOrientedPoint;.(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;Lorg/apache/commons/math3/geometry/partitioning/Region<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;)V#remainingRegion#0#1').
name_ref(p_remaining_region_23, param, 'remainingRegion', 'Lorg/apache/commons/math3/geometry/euclidean/oned/SubOrientedPoint;.buildNew(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;Lorg/apache/commons/math3/geometry/partitioning/Region<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;)Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;#remainingRegion#0#1').
name_ref(p_remaining_region_230, param, 'remainingRegion', 'Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;.(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;Lorg/apache/commons/math3/geometry/partitioning/Region<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;)V#remainingRegion#0#1').
name_ref(p_remaining_region_244, param, 'remainingRegion', 'Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;.buildNew(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;Lorg/apache/commons/math3/geometry/partitioning/Region<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;)Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;#remainingRegion#0#1').
name_ref(p_remaining_region_335, param, 'remainingRegion', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;.(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<TS;>;Lorg/apache/commons/math3/geometry/partitioning/Region<TT;>;)V#remainingRegion#0#1').
name_ref(p_result_458, param, 'result', 'Lorg/apache/commons/math3/util/FastMath;.reducePayneHanek(D[D)V#result#0#1').
name_ref(p_rounding_method_728, param, 'roundingMethod', 'Lorg/apache/commons/math3/util/Precision;.round(DII)D#roundingMethod#0#2').
name_ref(p_rounding_method_733, param, 'roundingMethod', 'Lorg/apache/commons/math3/util/Precision;.round(FII)F|Lorg/apache/commons/math3/exception/MathArithmeticException;|Lorg/apache/commons/math3/exception/MathIllegalArgumentException;#roundingMethod#0#2').
name_ref(p_rounding_method_736, param, 'roundingMethod', 'Lorg/apache/commons/math3/util/Precision;.roundUnscaled(DDI)D|Lorg/apache/commons/math3/exception/MathArithmeticException;|Lorg/apache/commons/math3/exception/MathIllegalArgumentException;#roundingMethod#0#2').
name_ref(p_rows_676, param, 'rows', 'Lorg/apache/commons/math3/util/MathArrays;.buildArray<T:Ljava/lang/Object;>(Lorg/apache/commons/math3/Field<TT;>;II)[[TT;#rows#0#1').
name_ref(p_scale_725, param, 'scale', 'Lorg/apache/commons/math3/util/Precision;.round(DI)D#scale#0#1').
name_ref(p_scale_727, param, 'scale', 'Lorg/apache/commons/math3/util/Precision;.round(DII)D#scale#0#1').
name_ref(p_scale_730, param, 'scale', 'Lorg/apache/commons/math3/util/Precision;.round(FI)F#scale#0#1').
name_ref(p_scale_732, param, 'scale', 'Lorg/apache/commons/math3/util/Precision;.round(FII)F|Lorg/apache/commons/math3/exception/MathArithmeticException;|Lorg/apache/commons/math3/exception/MathIllegalArgumentException;#scale#0#1').
name_ref(p_segment_106, param, 'segment', 'Lorg/apache/commons/math3/geometry/euclidean/threed/SubLine;.(Lorg/apache/commons/math3/geometry/euclidean/threed/Segment;)V|Lorg/apache/commons/math3/exception/MathIllegalArgumentException;#segment#0#0').
name_ref(p_segment_233, param, 'segment', 'Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;.(Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;)V#segment#0#0').
name_ref(p_sides_327, param, 'sides', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;.recurseSides(Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion$Sides;)V#sides#0#2').
name_ref(p_sign_524, param, 'sign', 'Lorg/apache/commons/math3/util/FastMath;.copySign(DD)D#sign#0#1').
name_ref(p_sign_526, param, 'sign', 'Lorg/apache/commons/math3/util/FastMath;.copySign(FF)F#sign#0#1').
name_ref(p_sign_735, param, 'sign', 'Lorg/apache/commons/math3/util/Precision;.roundUnscaled(DDI)D|Lorg/apache/commons/math3/exception/MathArithmeticException;|Lorg/apache/commons/math3/exception/MathIllegalArgumentException;#sign#0#1').
name_ref(p_sin_192, param, 'sin', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line;.(DDDD)V#sin#0#2').
name_ref(p_size_322, param, 'size', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;.setSize(D)V#size#0#0').
name_ref(p_source_585, param, 'source', 'Lorg/apache/commons/math3/util/MathArrays;.copyOf([I)[I#source#0#0').
name_ref(p_source_586, param, 'source', 'Lorg/apache/commons/math3/util/MathArrays;.copyOf([D)[D#source#0#0').
name_ref(p_source_587, param, 'source', 'Lorg/apache/commons/math3/util/MathArrays;.copyOf([II)[I#source#0#0').
name_ref(p_source_589, param, 'source', 'Lorg/apache/commons/math3/util/MathArrays;.copyOf([DI)[D#source#0#0').
name_ref(p_start_104, param, 'start', 'Lorg/apache/commons/math3/geometry/euclidean/threed/SubLine;.(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V|Lorg/apache/commons/math3/exception/MathIllegalArgumentException;#start#0#0').
name_ref(p_start_111, param, 'start', 'Lorg/apache/commons/math3/geometry/euclidean/threed/SubLine;.buildIntervalSet(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;|Lorg/apache/commons/math3/exception/MathIllegalArgumentException;#start#0#0').
name_ref(p_start_231, param, 'start', 'Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;.(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V#start#0#0').
name_ref(p_start_240, param, 'start', 'Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;.buildIntervalSet(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;#start#0#0').
name_ref(p_start_index_533, param, 'startIndex', 'Lorg/apache/commons/math3/util/MathArrays$Function;.evaluate([DII)D#startIndex#0#1').
name_ref(p_strict_561, param, 'strict', 'Lorg/apache/commons/math3/util/MathArrays;.isMonotonic<T::Ljava/lang/Comparable<-TT;>;>([TT;Lorg/apache/commons/math3/util/MathArrays$OrderDirection;Z)Z#strict#0#2').
name_ref(p_strict_564, param, 'strict', 'Lorg/apache/commons/math3/util/MathArrays;.isMonotonic([DLorg/apache/commons/math3/util/MathArrays$OrderDirection;Z)Z#strict#0#2').
name_ref(p_strict_567, param, 'strict', 'Lorg/apache/commons/math3/util/MathArrays;.checkOrder([DLorg/apache/commons/math3/util/MathArrays$OrderDirection;ZZ)Z|Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;#strict#0#2').
name_ref(p_strict_571, param, 'strict', 'Lorg/apache/commons/math3/util/MathArrays;.checkOrder([DLorg/apache/commons/math3/util/MathArrays$OrderDirection;Z)V|Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;#strict#0#2').
name_ref(p_sub_226, param, 'sub', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;.apply(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;#sub#0#0').
name_ref(p_sub_320, param, 'sub', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion$BoundaryBuilder;.characterize(Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;[Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;)V#sub#0#1').
name_ref(p_sub_326, param, 'sub', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;.recurseSides(Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion$Sides;)V#sub#0#1').
name_ref(p_sub_328, param, 'sub', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;.intersection(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;#sub#0#0').
name_ref(p_sub_330, param, 'sub', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;.recurseIntersection(Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;#sub#0#1').
name_ref(p_sub_360, param, 'sub', 'Lorg/apache/commons/math3/geometry/partitioning/BSPTree;.fitToCell(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;#sub#0#0').
name_ref(p_sub_373, param, 'sub', 'Lorg/apache/commons/math3/geometry/partitioning/BSPTree;.split(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;#sub#0#0').
name_ref(p_sub_line_107, param, 'subLine', 'Lorg/apache/commons/math3/geometry/euclidean/threed/SubLine;.intersection(Lorg/apache/commons/math3/geometry/euclidean/threed/SubLine;Z)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;#subLine#0#0').
name_ref(p_sub_line_234, param, 'subLine', 'Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;.intersection(Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;Z)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;#subLine#0#0').
name_ref(p_transform_222, param, 'transform', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line;.getTransform(Ljava/awt/geom/AffineTransform;)Lorg/apache/commons/math3/geometry/partitioning/Transform<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;|Lorg/apache/commons/math3/exception/MathIllegalArgumentException;#transform#0#0').
name_ref(p_transform_223, param, 'transform', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;.(Ljava/awt/geom/AffineTransform;)V|Lorg/apache/commons/math3/exception/MathIllegalArgumentException;#transform#0#0').
name_ref(p_transform_331, param, 'transform', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;.applyTransform(Lorg/apache/commons/math3/geometry/partitioning/Transform<TS;TT;>;)Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion<TS;TT;>;#transform#0#0').
name_ref(p_transform_333, param, 'transform', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;.recurseTransform(Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Lorg/apache/commons/math3/geometry/partitioning/Transform<TS;TT;>;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;#transform#0#1').
name_ref(p_transform_341, param, 'transform', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;.applyTransform(Lorg/apache/commons/math3/geometry/partitioning/Transform<TS;TT;>;)Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<TS;TT;>;#transform#0#0').
name_ref(p_transform_344, param, 'transform', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;.recurseTransform(Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TT;>;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<TS;>;Lorg/apache/commons/math3/geometry/partitioning/Transform<TS;TT;>;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TT;>;#transform#0#2').
name_ref(p_transformed_228, param, 'transformed', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;.apply(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;#transformed#0#2').
name_ref(p_transformed_343, param, 'transformed', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;.recurseTransform(Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TT;>;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<TS;>;Lorg/apache/commons/math3/geometry/partitioning/Transform<TS;TT;>;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TT;>;#transformed#0#1').
name_ref(p_tree_298, param, 'tree', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;.(Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;)V#tree#0#0').
name_ref(p_tree_3, param, 'tree', 'Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;.(Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;)V#tree#0#0').
name_ref(p_tree_362, param, 'tree', 'Lorg/apache/commons/math3/geometry/partitioning/BSPTree;.merge(Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger<TS;>;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;#tree#0#0').
name_ref(p_tree_364, param, 'tree', 'Lorg/apache/commons/math3/geometry/partitioning/BSPTree;.merge(Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger<TS;>;Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;#tree#0#0').
name_ref(p_tree_369, param, 'tree', 'Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger;.merge(Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;ZZ)Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;#tree#0#1').
name_ref(p_tree_9, param, 'tree', 'Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;.buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;)Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;#tree#0#0').
name_ref(p_u_136, param, 'u', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V#u#0#1').
name_ref(p_u_1_138, param, 'u1', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V#u1#0#1').
name_ref(p_u_1_142, param, 'u1', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V#u1#0#1').
name_ref(p_u_1_148, param, 'u1', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V#u1#0#1').
name_ref(p_u_1_261, param, 'u1', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.(DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V#u1#0#1').
name_ref(p_u_1_265, param, 'u1', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.(DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V#u1#0#1').
name_ref(p_u_1_271, param, 'u1', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.(DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V#u1#0#1').
name_ref(p_u_1_36, param, 'u1', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.(DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;)V#u1#0#1').
name_ref(p_u_1_40, param, 'u1', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.(DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;)V#u1#0#1').
name_ref(p_u_1_46, param, 'u1', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.(DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;)V#u1#0#1').
name_ref(p_u_259, param, 'u', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.(DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V#u#0#1').
name_ref(p_u_2_140, param, 'u2', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V#u2#0#3').
name_ref(p_u_2_144, param, 'u2', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V#u2#0#3').
name_ref(p_u_2_150, param, 'u2', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V#u2#0#3').
name_ref(p_u_2_263, param, 'u2', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.(DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V#u2#0#3').
name_ref(p_u_2_267, param, 'u2', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.(DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V#u2#0#3').
name_ref(p_u_2_273, param, 'u2', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.(DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V#u2#0#3').
name_ref(p_u_2_38, param, 'u2', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.(DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;)V#u2#0#3').
name_ref(p_u_2_42, param, 'u2', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.(DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;)V#u2#0#3').
name_ref(p_u_2_48, param, 'u2', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.(DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;)V#u2#0#3').
name_ref(p_u_34, param, 'u', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.(DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;)V#u#0#1').
name_ref(p_u_3_146, param, 'u3', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V#u3#0#5').
name_ref(p_u_3_152, param, 'u3', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V#u3#0#5').
name_ref(p_u_3_269, param, 'u3', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.(DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V#u3#0#5').
name_ref(p_u_3_275, param, 'u3', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.(DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V#u3#0#5').
name_ref(p_u_3_44, param, 'u3', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.(DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;)V#u3#0#5').
name_ref(p_u_3_50, param, 'u3', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.(DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;)V#u3#0#5').
name_ref(p_u_4_154, param, 'u4', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V#u4#0#7').
name_ref(p_u_4_277, param, 'u4', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.(DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V#u4#0#7').
name_ref(p_u_4_52, param, 'u4', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.(DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;)V#u4#0#7').
name_ref(p_unscaled_734, param, 'unscaled', 'Lorg/apache/commons/math3/util/Precision;.roundUnscaled(DDI)D|Lorg/apache/commons/math3/exception/MathArithmeticException;|Lorg/apache/commons/math3/exception/MathIllegalArgumentException;#unscaled#0#0').
name_ref(p_upper_13, param, 'upper', 'Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;.recurseList(Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;>;DD)V#upper#0#3').
name_ref(p_upper_2, param, 'upper', 'Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;.(DD)V#upper#0#1').
name_ref(p_upper_6, param, 'upper', 'Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;.buildTree(DD)Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;#upper#0#1').
name_ref(p_v_132, param, 'v', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.([D)V|Lorg/apache/commons/math3/exception/DimensionMismatchException;#v#0#0').
name_ref(p_v_155, param, 'v', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.add(Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;#v#0#0').
name_ref(p_v_157, param, 'v', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.add(DLorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;#v#0#1').
name_ref(p_v_158, param, 'v', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.subtract(Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;#v#0#0').
name_ref(p_v_161, param, 'v', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.subtract(DLorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;#v#0#1').
name_ref(p_v_166, param, 'v', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.dotProduct(Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;)D#v#0#0').
name_ref(p_v_168, param, 'v', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.crossProduct(Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;#v#0#0').
name_ref(p_v_169, param, 'v', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.distance1(Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;)D#v#0#0').
name_ref(p_v_170, param, 'v', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.distance(Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;)D#v#0#0').
name_ref(p_v_171, param, 'v', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.distanceInf(Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;)D#v#0#0').
name_ref(p_v_172, param, 'v', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.distanceSq(Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;)D#v#0#0').
name_ref(p_v_1_162, param, 'v1', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.angle(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D|Lorg/apache/commons/math3/exception/MathArithmeticException;#v1#0#0').
name_ref(p_v_1_173, param, 'v1', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.dotProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D#v1#0#0').
name_ref(p_v_1_175, param, 'v1', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.crossProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;#v1#0#0').
name_ref(p_v_1_177, param, 'v1', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.distance1(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D#v1#0#0').
name_ref(p_v_1_179, param, 'v1', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.distance(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D#v1#0#0').
name_ref(p_v_1_181, param, 'v1', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.distanceInf(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D#v1#0#0').
name_ref(p_v_1_183, param, 'v1', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.distanceSq(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D#v1#0#0').
name_ref(p_v_257, param, 'v', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.([D)V|Lorg/apache/commons/math3/exception/DimensionMismatchException;#v#0#0').
name_ref(p_v_278, param, 'v', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.add(Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;#v#0#0').
name_ref(p_v_280, param, 'v', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.add(DLorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;#v#0#1').
name_ref(p_v_283, param, 'v', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.subtract(DLorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;#v#0#1').
name_ref(p_v_289, param, 'v', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.dotProduct(Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;)D#v#0#0').
name_ref(p_v_2_163, param, 'v2', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.angle(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D|Lorg/apache/commons/math3/exception/MathArithmeticException;#v2#0#1').
name_ref(p_v_2_174, param, 'v2', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.dotProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D#v2#0#1').
name_ref(p_v_2_176, param, 'v2', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.crossProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;#v2#0#1').
name_ref(p_v_2_178, param, 'v2', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.distance1(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D#v2#0#1').
name_ref(p_v_2_180, param, 'v2', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.distance(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D#v2#0#1').
name_ref(p_v_2_182, param, 'v2', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.distanceInf(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D#v2#0#1').
name_ref(p_v_2_184, param, 'v2', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.distanceSq(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D#v2#0#1').
name_ref(p_v_53, param, 'v', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.add(Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;#v#0#0').
name_ref(p_v_55, param, 'v', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.add(DLorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;#v#0#1').
name_ref(p_v_577, param, 'v', 'Lorg/apache/commons/math3/util/MathArrays;.safeNorm([D)D#v#0#0').
name_ref(p_v_58, param, 'v', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.subtract(DLorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;#v#0#1').
name_ref(p_v_64, param, 'v', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.dotProduct(Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;)D#v#0#0').
name_ref(p_val_535, param, 'val', 'Lorg/apache/commons/math3/util/MathArrays;.scale(D[D)[D#val#0#0').
name_ref(p_val_537, param, 'val', 'Lorg/apache/commons/math3/util/MathArrays;.scaleInPlace(D[D)V#val#0#0').
name_ref(p_val_559, param, 'val', 'Lorg/apache/commons/math3/util/MathArrays;.isMonotonic<T::Ljava/lang/Comparable<-TT;>;>([TT;Lorg/apache/commons/math3/util/MathArrays$OrderDirection;Z)Z#val#0#0').
name_ref(p_val_562, param, 'val', 'Lorg/apache/commons/math3/util/MathArrays;.isMonotonic([DLorg/apache/commons/math3/util/MathArrays$OrderDirection;Z)Z#val#0#0').
name_ref(p_val_565, param, 'val', 'Lorg/apache/commons/math3/util/MathArrays;.checkOrder([DLorg/apache/commons/math3/util/MathArrays$OrderDirection;ZZ)Z|Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;#val#0#0').
name_ref(p_val_569, param, 'val', 'Lorg/apache/commons/math3/util/MathArrays;.checkOrder([DLorg/apache/commons/math3/util/MathArrays$OrderDirection;Z)V|Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;#val#0#0').
name_ref(p_val_572, param, 'val', 'Lorg/apache/commons/math3/util/MathArrays;.checkOrder([D)V|Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;#val#0#0').
name_ref(p_values_671, param, 'values', 'Lorg/apache/commons/math3/util/MathArrays;.normalizeArray([DD)[D|Lorg/apache/commons/math3/exception/MathIllegalArgumentException;|Lorg/apache/commons/math3/exception/MathArithmeticException;#values#0#0').
name_ref(p_visitor_359, param, 'visitor', 'Lorg/apache/commons/math3/geometry/partitioning/BSPTree;.visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor<TS;>;)V#visitor#0#0').
name_ref(p_x_126, param, 'x', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.(DDD)V#x#0#0').
name_ref(p_x_253, param, 'x', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.(DD)V#x#0#0').
name_ref(p_x_31, param, 'x', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.(D)V#x#0#0').
name_ref(p_x_393, param, 'x', 'Lorg/apache/commons/math3/util/FastMath;.cosh(D)D#x#0#0').
name_ref(p_x_394, param, 'x', 'Lorg/apache/commons/math3/util/FastMath;.sinh(D)D#x#0#0').
name_ref(p_x_395, param, 'x', 'Lorg/apache/commons/math3/util/FastMath;.tanh(D)D#x#0#0').
name_ref(p_x_403, param, 'x', 'Lorg/apache/commons/math3/util/FastMath;.exp(D)D#x#0#0').
name_ref(p_x_404, param, 'x', 'Lorg/apache/commons/math3/util/FastMath;.exp(DD[D)D#x#0#0').
name_ref(p_x_407, param, 'x', 'Lorg/apache/commons/math3/util/FastMath;.expm1(D)D#x#0#0').
name_ref(p_x_408, param, 'x', 'Lorg/apache/commons/math3/util/FastMath;.expm1(D[D)D#x#0#0').
name_ref(p_x_410, param, 'x', 'Lorg/apache/commons/math3/util/FastMath;.log(D)D#x#0#0').
name_ref(p_x_411, param, 'x', 'Lorg/apache/commons/math3/util/FastMath;.log(D[D)D#x#0#0').
name_ref(p_x_413, param, 'x', 'Lorg/apache/commons/math3/util/FastMath;.log1p(D)D#x#0#0').
name_ref(p_x_414, param, 'x', 'Lorg/apache/commons/math3/util/FastMath;.log10(D)D#x#0#0').
name_ref(p_x_416, param, 'x', 'Lorg/apache/commons/math3/util/FastMath;.log(DD)D#x#0#1').
name_ref(p_x_417, param, 'x', 'Lorg/apache/commons/math3/util/FastMath;.pow(DD)D#x#0#0').
name_ref(p_x_421, param, 'x', 'Lorg/apache/commons/math3/util/FastMath;.polySine(D)D#x#0#0').
name_ref(p_x_424, param, 'x', 'Lorg/apache/commons/math3/util/FastMath;.polyCosine(D)D#x#0#0').
name_ref(p_x_457, param, 'x', 'Lorg/apache/commons/math3/util/FastMath;.reducePayneHanek(D[D)V#x#0#0').
name_ref(p_x_459, param, 'x', 'Lorg/apache/commons/math3/util/FastMath;.sin(D)D#x#0#0').
name_ref(p_x_464, param, 'x', 'Lorg/apache/commons/math3/util/FastMath;.cos(D)D#x#0#0').
name_ref(p_x_468, param, 'x', 'Lorg/apache/commons/math3/util/FastMath;.tan(D)D#x#0#0').
name_ref(p_x_469, param, 'x', 'Lorg/apache/commons/math3/util/FastMath;.atan(D)D#x#0#0').
name_ref(p_x_474, param, 'x', 'Lorg/apache/commons/math3/util/FastMath;.atan2(DD)D#x#0#1').
name_ref(p_x_476, param, 'x', 'Lorg/apache/commons/math3/util/FastMath;.asin(D)D#x#0#0').
name_ref(p_x_477, param, 'x', 'Lorg/apache/commons/math3/util/FastMath;.acos(D)D#x#0#0').
name_ref(p_x_478, param, 'x', 'Lorg/apache/commons/math3/util/FastMath;.cbrt(D)D#x#0#0').
name_ref(p_x_479, param, 'x', 'Lorg/apache/commons/math3/util/FastMath;.toRadians(D)D#x#0#0').
name_ref(p_x_480, param, 'x', 'Lorg/apache/commons/math3/util/FastMath;.toDegrees(D)D#x#0#0').
name_ref(p_x_481, param, 'x', 'Lorg/apache/commons/math3/util/FastMath;.abs(I)I#x#0#0').
name_ref(p_x_482, param, 'x', 'Lorg/apache/commons/math3/util/FastMath;.abs(J)J#x#0#0').
name_ref(p_x_483, param, 'x', 'Lorg/apache/commons/math3/util/FastMath;.abs(F)F#x#0#0').
name_ref(p_x_484, param, 'x', 'Lorg/apache/commons/math3/util/FastMath;.abs(D)D#x#0#0').
name_ref(p_x_486, param, 'x', 'Lorg/apache/commons/math3/util/FastMath;.ulp(D)D#x#0#0').
name_ref(p_x_487, param, 'x', 'Lorg/apache/commons/math3/util/FastMath;.ulp(F)F#x#0#0').
name_ref(p_x_496, param, 'x', 'Lorg/apache/commons/math3/util/FastMath;.floor(D)D#x#0#0').
name_ref(p_x_497, param, 'x', 'Lorg/apache/commons/math3/util/FastMath;.ceil(D)D#x#0#0').
name_ref(p_x_498, param, 'x', 'Lorg/apache/commons/math3/util/FastMath;.rint(D)D#x#0#0').
name_ref(p_x_499, param, 'x', 'Lorg/apache/commons/math3/util/FastMath;.round(D)J#x#0#0').
name_ref(p_x_500, param, 'x', 'Lorg/apache/commons/math3/util/FastMath;.round(F)I#x#0#0').
name_ref(p_x_517, param, 'x', 'Lorg/apache/commons/math3/util/FastMath;.hypot(DD)D#x#0#0').
name_ref(p_x_578, param, 'x', 'Lorg/apache/commons/math3/util/MathArrays;.sortInPlace([D[[D)V|Lorg/apache/commons/math3/exception/DimensionMismatchException;|Lorg/apache/commons/math3/exception/NullArgumentException;#x#0#0').
name_ref(p_x_580, param, 'x', 'Lorg/apache/commons/math3/util/MathArrays;.sortInPlace([DLorg/apache/commons/math3/util/MathArrays$OrderDirection;[[D)V|Lorg/apache/commons/math3/exception/NullArgumentException;|Lorg/apache/commons/math3/exception/DimensionMismatchException;#x#0#0').
name_ref(p_x_663, param, 'x', 'Lorg/apache/commons/math3/util/MathArrays;.equals([F[F)Z#x#0#0').
name_ref(p_x_665, param, 'x', 'Lorg/apache/commons/math3/util/MathArrays;.equalsIncludingNaN([F[F)Z#x#0#0').
name_ref(p_x_667, param, 'x', 'Lorg/apache/commons/math3/util/MathArrays;.equals([D[D)Z#x#0#0').
name_ref(p_x_669, param, 'x', 'Lorg/apache/commons/math3/util/MathArrays;.equalsIncludingNaN([D[D)Z#x#0#0').
name_ref(p_x_678, param, 'x', 'Lorg/apache/commons/math3/util/MathArrays;.convolve([D[D)[D|Lorg/apache/commons/math3/exception/NullArgumentException;|Lorg/apache/commons/math3/exception/NoDataException;#x#0#0').
name_ref(p_x_683, param, 'x', 'Lorg/apache/commons/math3/util/Precision;.compareTo(DDD)I#x#0#0').
name_ref(p_x_686, param, 'x', 'Lorg/apache/commons/math3/util/Precision;.compareTo(DDI)I#x#0#0').
name_ref(p_x_689, param, 'x', 'Lorg/apache/commons/math3/util/Precision;.equals(FF)Z#x#0#0').
name_ref(p_x_691, param, 'x', 'Lorg/apache/commons/math3/util/Precision;.equalsIncludingNaN(FF)Z#x#0#0').
name_ref(p_x_693, param, 'x', 'Lorg/apache/commons/math3/util/Precision;.equals(FFF)Z#x#0#0').
name_ref(p_x_696, param, 'x', 'Lorg/apache/commons/math3/util/Precision;.equalsIncludingNaN(FFF)Z#x#0#0').
name_ref(p_x_699, param, 'x', 'Lorg/apache/commons/math3/util/Precision;.equals(FFI)Z#x#0#0').
name_ref(p_x_702, param, 'x', 'Lorg/apache/commons/math3/util/Precision;.equalsIncludingNaN(FFI)Z#x#0#0').
name_ref(p_x_705, param, 'x', 'Lorg/apache/commons/math3/util/Precision;.equals(DD)Z#x#0#0').
name_ref(p_x_707, param, 'x', 'Lorg/apache/commons/math3/util/Precision;.equalsIncludingNaN(DD)Z#x#0#0').
name_ref(p_x_709, param, 'x', 'Lorg/apache/commons/math3/util/Precision;.equals(DDD)Z#x#0#0').
name_ref(p_x_712, param, 'x', 'Lorg/apache/commons/math3/util/Precision;.equalsWithRelativeTolerance(DDD)Z#x#0#0').
name_ref(p_x_715, param, 'x', 'Lorg/apache/commons/math3/util/Precision;.equalsIncludingNaN(DDD)Z#x#0#0').
name_ref(p_x_718, param, 'x', 'Lorg/apache/commons/math3/util/Precision;.equals(DDI)Z#x#0#0').
name_ref(p_x_721, param, 'x', 'Lorg/apache/commons/math3/util/Precision;.equalsIncludingNaN(DDI)Z#x#0#0').
name_ref(p_x_724, param, 'x', 'Lorg/apache/commons/math3/util/Precision;.round(DI)D#x#0#0').
name_ref(p_x_726, param, 'x', 'Lorg/apache/commons/math3/util/Precision;.round(DII)D#x#0#0').
name_ref(p_x_729, param, 'x', 'Lorg/apache/commons/math3/util/Precision;.round(FI)F#x#0#0').
name_ref(p_x_731, param, 'x', 'Lorg/apache/commons/math3/util/Precision;.round(FII)F|Lorg/apache/commons/math3/exception/MathArithmeticException;|Lorg/apache/commons/math3/exception/MathIllegalArgumentException;#x#0#0').
name_ref(p_x_737, param, 'x', 'Lorg/apache/commons/math3/util/Precision;.representableDelta(DD)D#x#0#0').
name_ref(p_xa_427, param, 'xa', 'Lorg/apache/commons/math3/util/FastMath;.sinQ(DD)D#xa#0#0').
name_ref(p_xa_448, param, 'xa', 'Lorg/apache/commons/math3/util/FastMath;.cosQ(DD)D#xa#0#0').
name_ref(p_xa_454, param, 'xa', 'Lorg/apache/commons/math3/util/FastMath;.tanQ(DDZ)D#xa#0#0').
name_ref(p_xa_470, param, 'xa', 'Lorg/apache/commons/math3/util/FastMath;.atan(DDZ)D#xa#0#0').
name_ref(p_xa_530, param, 'xa', 'Lorg/apache/commons/math3/util/FastMath$CodyWaite;.(D)V#xa#0#0').
name_ref(p_xb_428, param, 'xb', 'Lorg/apache/commons/math3/util/FastMath;.sinQ(DD)D#xb#0#1').
name_ref(p_xb_449, param, 'xb', 'Lorg/apache/commons/math3/util/FastMath;.cosQ(DD)D#xb#0#1').
name_ref(p_xb_455, param, 'xb', 'Lorg/apache/commons/math3/util/FastMath;.tanQ(DDZ)D#xb#0#1').
name_ref(p_xb_471, param, 'xb', 'Lorg/apache/commons/math3/util/FastMath;.atan(DDZ)D#xb#0#1').
name_ref(p_y_127, param, 'y', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.(DDD)V#y#0#1').
name_ref(p_y_254, param, 'y', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.(DD)V#y#0#1').
name_ref(p_y_418, param, 'y', 'Lorg/apache/commons/math3/util/FastMath;.pow(DD)D#y#0#1').
name_ref(p_y_473, param, 'y', 'Lorg/apache/commons/math3/util/FastMath;.atan2(DD)D#y#0#0').
name_ref(p_y_518, param, 'y', 'Lorg/apache/commons/math3/util/FastMath;.hypot(DD)D#y#0#1').
name_ref(p_y_664, param, 'y', 'Lorg/apache/commons/math3/util/MathArrays;.equals([F[F)Z#y#0#1').
name_ref(p_y_666, param, 'y', 'Lorg/apache/commons/math3/util/MathArrays;.equalsIncludingNaN([F[F)Z#y#0#1').
name_ref(p_y_668, param, 'y', 'Lorg/apache/commons/math3/util/MathArrays;.equals([D[D)Z#y#0#1').
name_ref(p_y_670, param, 'y', 'Lorg/apache/commons/math3/util/MathArrays;.equalsIncludingNaN([D[D)Z#y#0#1').
name_ref(p_y_684, param, 'y', 'Lorg/apache/commons/math3/util/Precision;.compareTo(DDD)I#y#0#1').
name_ref(p_y_687, param, 'y', 'Lorg/apache/commons/math3/util/Precision;.compareTo(DDI)I#y#0#1').
name_ref(p_y_690, param, 'y', 'Lorg/apache/commons/math3/util/Precision;.equals(FF)Z#y#0#1').
name_ref(p_y_692, param, 'y', 'Lorg/apache/commons/math3/util/Precision;.equalsIncludingNaN(FF)Z#y#0#1').
name_ref(p_y_694, param, 'y', 'Lorg/apache/commons/math3/util/Precision;.equals(FFF)Z#y#0#1').
name_ref(p_y_697, param, 'y', 'Lorg/apache/commons/math3/util/Precision;.equalsIncludingNaN(FFF)Z#y#0#1').
name_ref(p_y_700, param, 'y', 'Lorg/apache/commons/math3/util/Precision;.equals(FFI)Z#y#0#1').
name_ref(p_y_703, param, 'y', 'Lorg/apache/commons/math3/util/Precision;.equalsIncludingNaN(FFI)Z#y#0#1').
name_ref(p_y_706, param, 'y', 'Lorg/apache/commons/math3/util/Precision;.equals(DD)Z#y#0#1').
name_ref(p_y_708, param, 'y', 'Lorg/apache/commons/math3/util/Precision;.equalsIncludingNaN(DD)Z#y#0#1').
name_ref(p_y_710, param, 'y', 'Lorg/apache/commons/math3/util/Precision;.equals(DDD)Z#y#0#1').
name_ref(p_y_713, param, 'y', 'Lorg/apache/commons/math3/util/Precision;.equalsWithRelativeTolerance(DDD)Z#y#0#1').
name_ref(p_y_716, param, 'y', 'Lorg/apache/commons/math3/util/Precision;.equalsIncludingNaN(DDD)Z#y#0#1').
name_ref(p_y_719, param, 'y', 'Lorg/apache/commons/math3/util/Precision;.equals(DDI)Z#y#0#1').
name_ref(p_y_722, param, 'y', 'Lorg/apache/commons/math3/util/Precision;.equalsIncludingNaN(DDI)Z#y#0#1').
name_ref(p_y_list_579, param, 'yList', 'Lorg/apache/commons/math3/util/MathArrays;.sortInPlace([D[[D)V|Lorg/apache/commons/math3/exception/DimensionMismatchException;|Lorg/apache/commons/math3/exception/NullArgumentException;#yList#0#1').
name_ref(p_y_list_582, param, 'yList', 'Lorg/apache/commons/math3/util/MathArrays;.sortInPlace([DLorg/apache/commons/math3/util/MathArrays$OrderDirection;[[D)V|Lorg/apache/commons/math3/exception/NullArgumentException;|Lorg/apache/commons/math3/exception/DimensionMismatchException;#yList#0#2').
name_ref(p_z_128, param, 'z', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.(DDD)V#z#0#2').
name_ref(f_angle_200, field, 'angle', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line;.angle)D').
name_ref(f_attribute_352, field, 'attribute', 'Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/partitioning/BSPTree;:TS;>;.attribute)Ljava/lang/Object;').
name_ref(f_cbrttwo_390, field, 'CBRTTWO', 'Lorg/apache/commons/math3/util/FastMath;.CBRTTWO)[D').
name_ref(f_cos_201, field, 'cos', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line;.cos)D').
name_ref(f_cosine_table_a_383, field, 'COSINE_TABLE_A', 'Lorg/apache/commons/math3/util/FastMath;.COSINE_TABLE_A)[D').
name_ref(f_cosine_table_b_384, field, 'COSINE_TABLE_B', 'Lorg/apache/commons/math3/util/FastMath;.COSINE_TABLE_B)[D').
name_ref(f_cut_348, field, 'cut', 'Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/partitioning/BSPTree;:TS;>;.cut)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/partitioning/BSPTree;:TS;>;').
name_ref(f_direct_17, field, 'direct', 'Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;.direct)Z').
name_ref(f_direction_80, field, 'direction', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Line;.direction)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;').
name_ref(f_eighths_389, field, 'EIGHTHS', 'Lorg/apache/commons/math3/util/FastMath;.EIGHTHS)[D').
name_ref(f_epsilon_680, field, 'EPSILON', 'Lorg/apache/commons/math3/util/Precision;.EPSILON)D').
name_ref(f_exponent_offset_681, field, 'EXPONENT_OFFSET', 'Lorg/apache/commons/math3/util/Precision;.EXPONENT_OFFSET)J').
name_ref(f_f_1_2_475, field, 'F_1_2', 'Lorg/apache/commons/math3/util/FastMath;.F_1_2)D').
name_ref(f_hex_40000000_440, field, 'HEX_40000000', 'Lorg/apache/commons/math3/util/FastMath;.HEX_40000000)J').
name_ref(f_hyperplane_336, field, 'hyperplane', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;:TS;Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;:TT;>;.hyperplane)Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;:TS;>;').
name_ref(f_line_102, field, 'line', 'Lorg/apache/commons/math3/geometry/euclidean/threed/SubLine;.line)Lorg/apache/commons/math3/geometry/euclidean/threed/Line;').
name_ref(f_ln_hi_prec_coef_380, field, 'LN_HI_PREC_COEF', 'Lorg/apache/commons/math3/util/FastMath;.LN_HI_PREC_COEF)[[D').
name_ref(f_ln_quick_coef_379, field, 'LN_QUICK_COEF', 'Lorg/apache/commons/math3/util/FastMath;.LN_QUICK_COEF)[[D').
name_ref(f_location_16, field, 'location', 'Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;.location)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;').
name_ref(f_log_max_value_378, field, 'LOG_MAX_VALUE', 'Lorg/apache/commons/math3/util/FastMath;.LOG_MAX_VALUE)D').
name_ref(f_mask_non_sign_long_485, field, 'MASK_NON_SIGN_LONG', 'Lorg/apache/commons/math3/util/FastMath;.MASK_NON_SIGN_LONG)J').
name_ref(f_minus_350, field, 'minus', 'Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/partitioning/BSPTree;:TS;>;.minus)Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/partitioning/BSPTree;:TS;>;').
name_ref(f_minus_i_118, field, 'MINUS_I', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.MINUS_I)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;').
name_ref(f_minus_j_120, field, 'MINUS_J', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.MINUS_J)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;').
name_ref(f_minus_k_122, field, 'MINUS_K', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.MINUS_K)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;').
name_ref(f_na_n_123, field, 'NaN', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.NaN)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;').
name_ref(f_na_n_250, field, 'NaN', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.NaN)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;').
name_ref(f_na_n_28, field, 'NaN', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.NaN)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;').
name_ref(f_negative_infinity_125, field, 'NEGATIVE_INFINITY', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.NEGATIVE_INFINITY)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;').
name_ref(f_negative_infinity_252, field, 'NEGATIVE_INFINITY', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.NEGATIVE_INFINITY)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;').
name_ref(f_negative_infinity_30, field, 'NEGATIVE_INFINITY', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.NEGATIVE_INFINITY)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;').
name_ref(f_one_27, field, 'ONE', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.ONE)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;').
name_ref(f_origin_offset_203, field, 'originOffset', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line;.originOffset)D').
name_ref(f_parent_351, field, 'parent', 'Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/partitioning/BSPTree;:TS;>;.parent)Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/partitioning/BSPTree;:TS;>;').
name_ref(f_pi_o_4_bits_388, field, 'PI_O_4_BITS', 'Lorg/apache/commons/math3/util/FastMath;.PI_O_4_BITS)[J').
name_ref(f_plus_349, field, 'plus', 'Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/partitioning/BSPTree;:TS;>;.plus)Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/partitioning/BSPTree;:TS;>;').
name_ref(f_plus_i_117, field, 'PLUS_I', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.PLUS_I)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;').
name_ref(f_plus_j_119, field, 'PLUS_J', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.PLUS_J)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;').
name_ref(f_plus_k_121, field, 'PLUS_K', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.PLUS_K)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;').
name_ref(f_positive_infinity_124, field, 'POSITIVE_INFINITY', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.POSITIVE_INFINITY)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;').
name_ref(f_positive_infinity_251, field, 'POSITIVE_INFINITY', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.POSITIVE_INFINITY)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;').
name_ref(f_positive_infinity_29, field, 'POSITIVE_INFINITY', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.POSITIVE_INFINITY)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;').
name_ref(f_recip_2pi_387, field, 'RECIP_2PI', 'Lorg/apache/commons/math3/util/FastMath;.RECIP_2PI)[J').
name_ref(f_remaining_region_103, field, 'remainingRegion', 'Lorg/apache/commons/math3/geometry/euclidean/threed/SubLine;.remainingRegion)Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;').
name_ref(f_remaining_region_337, field, 'remainingRegion', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;:TS;Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;:TT;>;.remainingRegion)Lorg/apache/commons/math3/geometry/partitioning/Region<Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;:TT;>;').
name_ref(f_safe_min_682, field, 'SAFE_MIN', 'Lorg/apache/commons/math3/util/Precision;.SAFE_MIN)D').
name_ref(f_sin_202, field, 'sin', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line;.sin)D').
name_ref(f_sine_table_a_381, field, 'SINE_TABLE_A', 'Lorg/apache/commons/math3/util/FastMath;.SINE_TABLE_A)[D').
name_ref(f_sine_table_b_382, field, 'SINE_TABLE_B', 'Lorg/apache/commons/math3/util/FastMath;.SINE_TABLE_B)[D').
name_ref(f_split_factor_598, field, 'SPLIT_FACTOR', 'Lorg/apache/commons/math3/util/MathArrays;.SPLIT_FACTOR)I').
name_ref(f_tangent_table_a_385, field, 'TANGENT_TABLE_A', 'Lorg/apache/commons/math3/util/FastMath;.TANGENT_TABLE_A)[D').
name_ref(f_tangent_table_b_386, field, 'TANGENT_TABLE_B', 'Lorg/apache/commons/math3/util/FastMath;.TANGENT_TABLE_B)[D').
name_ref(f_tree_299, field, 'tree', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion<Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;:TS;Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;:TT;>;.tree)Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;:TS;>;').
name_ref(f_x_129, field, 'x', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.x)D').
name_ref(f_x_255, field, 'x', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.x)D').
name_ref(f_x_32, field, 'x', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.x)D').
name_ref(f_y_130, field, 'y', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.y)D').
name_ref(f_y_256, field, 'y', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.y)D').
name_ref(f_z_131, field, 'z', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.z)D').
name_ref(f_zero_116, field, 'ZERO', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.ZERO)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;').
name_ref(f_zero_249, field, 'ZERO', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.ZERO)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;').
name_ref(f_zero_26, field, 'ZERO', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.ZERO)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;').
name_ref(f_zero_81, field, 'zero', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Line;.zero)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;').
name_ref(m_abs_168, method, 'abs', 'Lorg/apache/commons/math3/util/FastMath;.abs(D)D').
name_ref(m_abs_353, method, 'abs', 'Lorg/apache/commons/math3/util/FastMath;.abs(I)I').
name_ref(m_abs_354, method, 'abs', 'Lorg/apache/commons/math3/util/FastMath;.abs(J)J').
name_ref(m_abs_355, method, 'abs', 'Lorg/apache/commons/math3/util/FastMath;.abs(F)F').
name_ref(m_abstract_region_247, method, 'AbstractRegion', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;.()V').
name_ref(m_abstract_region_248, method, 'AbstractRegion', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;.(Ljava/util/Collection<Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;>;)V').
name_ref(m_abstract_region_253, method, 'AbstractRegion', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;.([Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<TS;>;)V').
name_ref(m_abstract_region_3, method, 'AbstractRegion', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;.(Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;)V').
name_ref(m_abstract_sub_hyperplane_25, method, 'AbstractSubHyperplane', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;.(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<TS;>;Lorg/apache/commons/math3/geometry/partitioning/Region<TT;>;)V').
name_ref(m_acos_349, method, 'acos', 'Lorg/apache/commons/math3/util/FastMath;.acos(D)D').
name_ref(m_acosh_320, method, 'acosh', 'Lorg/apache/commons/math3/util/FastMath;.acosh(D)D').
name_ref(m_add_124, method, 'add', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.add(Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;').
name_ref(m_add_125, method, 'add', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.add(DLorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;').
name_ref(m_add_226, method, 'add', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.add(Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;').
name_ref(m_add_227, method, 'add', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.add(DLorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;').
name_ref(m_add_42, method, 'add', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.add(Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;').
name_ref(m_add_43, method, 'add', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.add(DLorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;').
name_ref(m_angle_129, method, 'angle', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.angle(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D|Lorg/apache/commons/math3/exception/MathArithmeticException;').
name_ref(m_apply_185, method, 'apply', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;.apply(Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;').
name_ref(m_apply_186, method, 'apply', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;.apply(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;)Lorg/apache/commons/math3/geometry/euclidean/twod/Line;').
name_ref(m_apply_187, method, 'apply', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;.apply(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;').
name_ref(m_apply_transform_281, method, 'applyTransform', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;.applyTransform(Lorg/apache/commons/math3/geometry/partitioning/Transform<TS;TT;>;)Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion<TS;TT;>;').
name_ref(m_apply_transform_287, method, 'applyTransform', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;.applyTransform(Lorg/apache/commons/math3/geometry/partitioning/Transform<TS;TT;>;)Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<TS;TT;>;').
name_ref(m_as_list_13, method, 'asList', 'Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;.asList()Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;>;').
name_ref(m_asin_348, method, 'asin', 'Lorg/apache/commons/math3/util/FastMath;.asin(D)D').
name_ref(m_asinh_321, method, 'asinh', 'Lorg/apache/commons/math3/util/FastMath;.asinh(D)D').
name_ref(m_assert_null_108, method, 'assertNull', 'Lorg/junit/Assert;.assertNull(Ljava/lang/Object;)V').
name_ref(m_atan_2_159, method, 'atan2', 'Lorg/apache/commons/math3/util/FastMath;.atan2(DD)D').
name_ref(m_atan_346, method, 'atan', 'Lorg/apache/commons/math3/util/FastMath;.atan(D)D').
name_ref(m_atan_347, method, 'atan', 'Lorg/apache/commons/math3/util/FastMath;.atan(DDZ)D').
name_ref(m_atanh_322, method, 'atanh', 'Lorg/apache/commons/math3/util/FastMath;.atanh(D)D').
name_ref(m_bsptree_292, method, 'BSPTree', 'Lorg/apache/commons/math3/geometry/partitioning/BSPTree;.()V').
name_ref(m_bsptree_293, method, 'BSPTree', 'Lorg/apache/commons/math3/geometry/partitioning/BSPTree;.(Ljava/lang/Object;)V').
name_ref(m_bsptree_8, method, 'BSPTree', 'Lorg/apache/commons/math3/geometry/partitioning/BSPTree;.(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Ljava/lang/Object;)V').
name_ref(m_build_array_427, method, 'buildArray', 'Lorg/apache/commons/math3/util/MathArrays;.buildArray<T:Ljava/lang/Object;>(Lorg/apache/commons/math3/Field<TT;>;I)[TT;').
name_ref(m_build_array_428, method, 'buildArray', 'Lorg/apache/commons/math3/util/MathArrays;.buildArray<T:Ljava/lang/Object;>(Lorg/apache/commons/math3/Field<TT;>;II)[[TT;').
name_ref(m_build_interval_set_190, method, 'buildIntervalSet', 'Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;.buildIntervalSet(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;').
name_ref(m_build_interval_set_89, method, 'buildIntervalSet', 'Lorg/apache/commons/math3/geometry/euclidean/threed/SubLine;.buildIntervalSet(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;|Lorg/apache/commons/math3/exception/MathIllegalArgumentException;').
name_ref(m_build_new_197, method, 'buildNew', 'Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;.buildNew(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;Lorg/apache/commons/math3/geometry/partitioning/Region<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;)Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;').
name_ref(m_build_new_254, method, 'buildNew', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;.buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;)Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion<TS;TT;>;').
name_ref(m_build_new_27, method, 'buildNew', 'Lorg/apache/commons/math3/geometry/euclidean/oned/SubOrientedPoint;.buildNew(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;Lorg/apache/commons/math3/geometry/partitioning/Region<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;)Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;').
name_ref(m_build_new_283, method, 'buildNew', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;.buildNew(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<TS;>;Lorg/apache/commons/math3/geometry/partitioning/Region<TT;>;)Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<TS;TT;>;').
name_ref(m_build_new_9, method, 'buildNew', 'Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;.buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;)Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;').
name_ref(m_build_tree_4, method, 'buildTree', 'Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;.buildTree(DD)Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;').
name_ref(m_cbrt_350, method, 'cbrt', 'Lorg/apache/commons/math3/util/FastMath;.cbrt(D)D').
name_ref(m_ceil_365, method, 'ceil', 'Lorg/apache/commons/math3/util/FastMath;.ceil(D)D').
name_ref(m_characterize_265, method, 'characterize', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion$BoundaryBuilder;.characterize(Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;[Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;)V').
name_ref(m_check_non_negative_410, method, 'checkNonNegative', 'Lorg/apache/commons/math3/util/MathArrays;.checkNonNegative([J)V|Lorg/apache/commons/math3/exception/NotPositiveException;').
name_ref(m_check_non_negative_411, method, 'checkNonNegative', 'Lorg/apache/commons/math3/util/MathArrays;.checkNonNegative([[J)V|Lorg/apache/commons/math3/exception/NotPositiveException;').
name_ref(m_check_order_405, method, 'checkOrder', 'Lorg/apache/commons/math3/util/MathArrays;.checkOrder([DLorg/apache/commons/math3/util/MathArrays$OrderDirection;ZZ)Z|Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;').
name_ref(m_check_order_406, method, 'checkOrder', 'Lorg/apache/commons/math3/util/MathArrays;.checkOrder([DLorg/apache/commons/math3/util/MathArrays$OrderDirection;Z)V|Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;').
name_ref(m_check_order_407, method, 'checkOrder', 'Lorg/apache/commons/math3/util/MathArrays;.checkOrder([D)V|Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;').
name_ref(m_check_point_195, method, 'checkPoint', 'Lorg/apache/commons/math3/geometry/partitioning/Region;.checkPoint(Lorg/apache/commons/math3/geometry/Vector<TS;>;)Lorg/apache/commons/math3/geometry/partitioning/Region$Location;').
name_ref(m_check_point_260, method, 'checkPoint', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;.checkPoint(Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Lorg/apache/commons/math3/geometry/Vector<TS;>;)Lorg/apache/commons/math3/geometry/partitioning/Region$Location;').
name_ref(m_check_point_93, method, 'checkPoint', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;.checkPoint(Lorg/apache/commons/math3/geometry/Vector<TS;>;)Lorg/apache/commons/math3/geometry/partitioning/Region$Location;').
name_ref(m_check_positive_409, method, 'checkPositive', 'Lorg/apache/commons/math3/util/MathArrays;.checkPositive([D)V|Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;').
name_ref(m_check_rectangular_408, method, 'checkRectangular', 'Lorg/apache/commons/math3/util/MathArrays;.checkRectangular([[J)V|Lorg/apache/commons/math3/exception/NullArgumentException;|Lorg/apache/commons/math3/exception/DimensionMismatchException;').
name_ref(m_chop_off_minus_311, method, 'chopOffMinus', 'Lorg/apache/commons/math3/geometry/partitioning/BSPTree;.chopOffMinus(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<TS;>;)V').
name_ref(m_chop_off_plus_312, method, 'chopOffPlus', 'Lorg/apache/commons/math3/geometry/partitioning/BSPTree;.chopOffPlus(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<TS;>;)V').
name_ref(m_closest_point_84, method, 'closestPoint', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Line;.closestPoint(Lorg/apache/commons/math3/geometry/euclidean/threed/Line;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;').
name_ref(m_cody_waite_384, method, 'CodyWaite', 'Lorg/apache/commons/math3/util/FastMath$CodyWaite;.(D)V').
name_ref(m_compare_249, method, 'compare', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion$4205;.compare(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;)I').
name_ref(m_compare_415, method, 'compare', 'Lorg/apache/commons/math3/util/MathArrays$24869;.compare(Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;[D>;Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;[D>;)I').
name_ref(m_compare_to_431, method, 'compareTo', 'Lorg/apache/commons/math3/util/Precision;.compareTo(DDD)I').
name_ref(m_compare_to_432, method, 'compareTo', 'Lorg/apache/commons/math3/util/Precision;.compareTo(DDI)I').
name_ref(m_compute_geometrical_properties_10, method, 'computeGeometricalProperties', 'Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;.computeGeometricalProperties()V').
name_ref(m_compute_geometrical_properties_271, method, 'computeGeometricalProperties', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;.computeGeometricalProperties()V').
name_ref(m_condense_305, method, 'condense', 'Lorg/apache/commons/math3/geometry/partitioning/BSPTree;.condense()V').
name_ref(m_contains_175, method, 'contains', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line;.contains(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)Z').
name_ref(m_contains_259, method, 'contains', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;.contains(Lorg/apache/commons/math3/geometry/partitioning/Region<TS;>;)Z').
name_ref(m_contains_80, method, 'contains', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Line;.contains(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Z').
name_ref(m_convolve_429, method, 'convolve', 'Lorg/apache/commons/math3/util/MathArrays;.convolve([D[D)[D|Lorg/apache/commons/math3/exception/NullArgumentException;|Lorg/apache/commons/math3/exception/NoDataException;').
name_ref(m_copy_of_416, method, 'copyOf', 'Lorg/apache/commons/math3/util/MathArrays;.copyOf([I)[I').
name_ref(m_copy_of_417, method, 'copyOf', 'Lorg/apache/commons/math3/util/MathArrays;.copyOf([D)[D').
name_ref(m_copy_of_418, method, 'copyOf', 'Lorg/apache/commons/math3/util/MathArrays;.copyOf([II)[I').
name_ref(m_copy_of_419, method, 'copyOf', 'Lorg/apache/commons/math3/util/MathArrays;.copyOf([DI)[D').
name_ref(m_copy_self_155, method, 'copySelf', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line;.copySelf()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;').
name_ref(m_copy_self_16, method, 'copySelf', 'Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;.copySelf()Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;').
name_ref(m_copy_self_256, method, 'copySelf', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;.copySelf()Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion<TS;TT;>;').
name_ref(m_copy_self_284, method, 'copySelf', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;.copySelf()Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<TS;TT;>;').
name_ref(m_copy_self_295, method, 'copySelf', 'Lorg/apache/commons/math3/geometry/partitioning/BSPTree;.copySelf()Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;').
name_ref(m_copy_sign_380, method, 'copySign', 'Lorg/apache/commons/math3/util/FastMath;.copySign(DD)D').
name_ref(m_copy_sign_381, method, 'copySign', 'Lorg/apache/commons/math3/util/FastMath;.copySign(FF)F').
name_ref(m_cos_160, method, 'cos', 'Lorg/apache/commons/math3/util/FastMath;.cos(D)D').
name_ref(m_cos_q_342, method, 'cosQ', 'Lorg/apache/commons/math3/util/FastMath;.cosQ(DD)D').
name_ref(m_cosh_317, method, 'cosh', 'Lorg/apache/commons/math3/util/FastMath;.cosh(D)D').
name_ref(m_cross_product_137, method, 'crossProduct', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.crossProduct(Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;').
name_ref(m_cross_product_143, method, 'crossProduct', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.crossProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;').
name_ref(m_distance_139, method, 'distance', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.distance(Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;)D').
name_ref(m_distance_145, method, 'distance', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.distance(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D').
name_ref(m_distance_176, method, 'distance', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line;.distance(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)D').
name_ref(m_distance_1_138, method, 'distance1', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.distance1(Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;)D').
name_ref(m_distance_1_144, method, 'distance1', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.distance1(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D').
name_ref(m_distance_1_235, method, 'distance1', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.distance1(Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;)D').
name_ref(m_distance_1_397, method, 'distance1', 'Lorg/apache/commons/math3/util/MathArrays;.distance1([D[D)D').
name_ref(m_distance_1_398, method, 'distance1', 'Lorg/apache/commons/math3/util/MathArrays;.distance1([I[I)I').
name_ref(m_distance_1_51, method, 'distance1', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.distance1(Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;)D').
name_ref(m_distance_236, method, 'distance', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.distance(Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;)D').
name_ref(m_distance_240, method, 'distance', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.distance(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)D').
name_ref(m_distance_399, method, 'distance', 'Lorg/apache/commons/math3/util/MathArrays;.distance([D[D)D').
name_ref(m_distance_400, method, 'distance', 'Lorg/apache/commons/math3/util/MathArrays;.distance([I[I)D').
name_ref(m_distance_52, method, 'distance', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.distance(Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;)D').
name_ref(m_distance_56, method, 'distance', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.distance(Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;)D').
name_ref(m_distance_81, method, 'distance', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Line;.distance(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D').
name_ref(m_distance_83, method, 'distance', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Line;.distance(Lorg/apache/commons/math3/geometry/euclidean/threed/Line;)D').
name_ref(m_distance_inf_140, method, 'distanceInf', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.distanceInf(Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;)D').
name_ref(m_distance_inf_146, method, 'distanceInf', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.distanceInf(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D').
name_ref(m_distance_inf_237, method, 'distanceInf', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.distanceInf(Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;)D').
name_ref(m_distance_inf_241, method, 'distanceInf', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.distanceInf(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)D').
name_ref(m_distance_inf_401, method, 'distanceInf', 'Lorg/apache/commons/math3/util/MathArrays;.distanceInf([D[D)D').
name_ref(m_distance_inf_402, method, 'distanceInf', 'Lorg/apache/commons/math3/util/MathArrays;.distanceInf([I[I)I').
name_ref(m_distance_inf_53, method, 'distanceInf', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.distanceInf(Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;)D').
name_ref(m_distance_inf_57, method, 'distanceInf', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.distanceInf(Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;)D').
name_ref(m_distance_sq_141, method, 'distanceSq', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.distanceSq(Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;)D').
name_ref(m_distance_sq_147, method, 'distanceSq', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.distanceSq(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D').
name_ref(m_distance_sq_238, method, 'distanceSq', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.distanceSq(Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;)D').
name_ref(m_distance_sq_242, method, 'distanceSq', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.distanceSq(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)D').
name_ref(m_distance_sq_54, method, 'distanceSq', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.distanceSq(Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;)D').
name_ref(m_distance_sq_58, method, 'distanceSq', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.distanceSq(Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;)D').
name_ref(m_dot_product_142, method, 'dotProduct', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.dotProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D').
name_ref(m_dot_product_239, method, 'dotProduct', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.dotProduct(Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;)D').
name_ref(m_dot_product_55, method, 'dotProduct', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.dotProduct(Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;)D').
name_ref(m_dot_product_71, method, 'dotProduct', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.dotProduct(Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;)D').
name_ref(m_double_high_part_315, method, 'doubleHighPart', 'Lorg/apache/commons/math3/util/FastMath;.doubleHighPart(D)D').
name_ref(m_double_to_raw_long_bits_357, method, 'doubleToRawLongBits', 'Ljava/lang/Double;.doubleToRawLongBits(D)J').
name_ref(m_ebe_add_393, method, 'ebeAdd', 'Lorg/apache/commons/math3/util/MathArrays;.ebeAdd([D[D)[D|Lorg/apache/commons/math3/exception/DimensionMismatchException;').
name_ref(m_ebe_divide_396, method, 'ebeDivide', 'Lorg/apache/commons/math3/util/MathArrays;.ebeDivide([D[D)[D|Lorg/apache/commons/math3/exception/DimensionMismatchException;').
name_ref(m_ebe_multiply_395, method, 'ebeMultiply', 'Lorg/apache/commons/math3/util/MathArrays;.ebeMultiply([D[D)[D|Lorg/apache/commons/math3/exception/DimensionMismatchException;').
name_ref(m_ebe_subtract_394, method, 'ebeSubtract', 'Lorg/apache/commons/math3/util/MathArrays;.ebeSubtract([D[D)[D|Lorg/apache/commons/math3/exception/DimensionMismatchException;').
name_ref(m_equals_134, method, 'equals', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.equals(Ljava/lang/Object;)Z').
name_ref(m_equals_243, method, 'equals', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.equals(Ljava/lang/Object;)Z').
name_ref(m_equals_422, method, 'equals', 'Lorg/apache/commons/math3/util/MathArrays;.equals([F[F)Z').
name_ref(m_equals_424, method, 'equals', 'Lorg/apache/commons/math3/util/MathArrays;.equals([D[D)Z').
name_ref(m_equals_433, method, 'equals', 'Lorg/apache/commons/math3/util/Precision;.equals(FF)Z').
name_ref(m_equals_435, method, 'equals', 'Lorg/apache/commons/math3/util/Precision;.equals(FFF)Z').
name_ref(m_equals_437, method, 'equals', 'Lorg/apache/commons/math3/util/Precision;.equals(FFI)Z').
name_ref(m_equals_439, method, 'equals', 'Lorg/apache/commons/math3/util/Precision;.equals(DD)Z').
name_ref(m_equals_441, method, 'equals', 'Lorg/apache/commons/math3/util/Precision;.equals(DDD)Z').
name_ref(m_equals_444, method, 'equals', 'Lorg/apache/commons/math3/util/Precision;.equals(DDI)Z').
name_ref(m_equals_59, method, 'equals', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.equals(Ljava/lang/Object;)Z').
name_ref(m_equals_including_na_n_423, method, 'equalsIncludingNaN', 'Lorg/apache/commons/math3/util/MathArrays;.equalsIncludingNaN([F[F)Z').
name_ref(m_equals_including_na_n_425, method, 'equalsIncludingNaN', 'Lorg/apache/commons/math3/util/MathArrays;.equalsIncludingNaN([D[D)Z').
name_ref(m_equals_including_na_n_434, method, 'equalsIncludingNaN', 'Lorg/apache/commons/math3/util/Precision;.equalsIncludingNaN(FF)Z').
name_ref(m_equals_including_na_n_436, method, 'equalsIncludingNaN', 'Lorg/apache/commons/math3/util/Precision;.equalsIncludingNaN(FFF)Z').
name_ref(m_equals_including_na_n_438, method, 'equalsIncludingNaN', 'Lorg/apache/commons/math3/util/Precision;.equalsIncludingNaN(FFI)Z').
name_ref(m_equals_including_na_n_440, method, 'equalsIncludingNaN', 'Lorg/apache/commons/math3/util/Precision;.equalsIncludingNaN(DD)Z').
name_ref(m_equals_including_na_n_443, method, 'equalsIncludingNaN', 'Lorg/apache/commons/math3/util/Precision;.equalsIncludingNaN(DDD)Z').
name_ref(m_equals_including_na_n_445, method, 'equalsIncludingNaN', 'Lorg/apache/commons/math3/util/Precision;.equalsIncludingNaN(DDI)Z').
name_ref(m_equals_with_relative_tolerance_442, method, 'equalsWithRelativeTolerance', 'Lorg/apache/commons/math3/util/Precision;.equalsWithRelativeTolerance(DDD)Z').
name_ref(m_evaluate_389, method, 'evaluate', 'Lorg/apache/commons/math3/util/MathArrays$Function;.evaluate([D)D').
name_ref(m_evaluate_390, method, 'evaluate', 'Lorg/apache/commons/math3/util/MathArrays$Function;.evaluate([DII)D').
name_ref(m_exp_328, method, 'exp', 'Lorg/apache/commons/math3/util/FastMath;.exp(D)D').
name_ref(m_exp_329, method, 'exp', 'Lorg/apache/commons/math3/util/FastMath;.exp(DD[D)D').
name_ref(m_expm_1_330, method, 'expm1', 'Lorg/apache/commons/math3/util/FastMath;.expm1(D)D').
name_ref(m_expm_1_331, method, 'expm1', 'Lorg/apache/commons/math3/util/FastMath;.expm1(D[D)D').
name_ref(m_fast_math_314, method, 'FastMath', 'Lorg/apache/commons/math3/util/FastMath;.()V').
name_ref(m_fit_to_cell_303, method, 'fitToCell', 'Lorg/apache/commons/math3/geometry/partitioning/BSPTree;.fitToCell(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;').
name_ref(m_floor_364, method, 'floor', 'Lorg/apache/commons/math3/util/FastMath;.floor(D)D').
name_ref(m_get_abscissa_75, method, 'getAbscissa', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Line;.getAbscissa(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D').
name_ref(m_get_alpha_122, method, 'getAlpha', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.getAlpha()D').
name_ref(m_get_angle_179, method, 'getAngle', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line;.getAngle()D').
name_ref(m_get_attribute_301, method, 'getAttribute', 'Lorg/apache/commons/math3/geometry/partitioning/BSPTree;.getAttribute()Ljava/lang/Object;').
name_ref(m_get_barycenter_269, method, 'getBarycenter', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;.getBarycenter()Lorg/apache/commons/math3/geometry/Vector<TS;>;').
name_ref(m_get_boundary_size_266, method, 'getBoundarySize', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;.getBoundarySize()D').
name_ref(m_get_cell_304, method, 'getCell', 'Lorg/apache/commons/math3/geometry/partitioning/BSPTree;.getCell(Lorg/apache/commons/math3/geometry/Vector<TS;>;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;').
name_ref(m_get_cut_296, method, 'getCut', 'Lorg/apache/commons/math3/geometry/partitioning/BSPTree;.getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;').
name_ref(m_get_delta_123, method, 'getDelta', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.getDelta()D').
name_ref(m_get_direction_73, method, 'getDirection', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Line;.getDirection()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;').
name_ref(m_get_exponent_378, method, 'getExponent', 'Lorg/apache/commons/math3/util/FastMath;.getExponent(D)I').
name_ref(m_get_exponent_382, method, 'getExponent', 'Lorg/apache/commons/math3/util/FastMath;.getExponent(F)I').
name_ref(m_get_hyperplane_194, method, 'getHyperplane', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;.getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<TS;>;').
name_ref(m_get_inf_11, method, 'getInf', 'Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;.getInf()D').
name_ref(m_get_k_385, method, 'getK', 'Lorg/apache/commons/math3/util/FastMath$CodyWaite;.getK()I').
name_ref(m_get_location_22, method, 'getLocation', 'Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;.getLocation()Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;').
name_ref(m_get_minus_298, method, 'getMinus', 'Lorg/apache/commons/math3/geometry/partitioning/BSPTree;.getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;').
name_ref(m_get_norm1_120, method, 'getNorm1', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.getNorm1()D').
name_ref(m_get_norm1_222, method, 'getNorm1', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.getNorm1()D').
name_ref(m_get_norm1_38, method, 'getNorm1', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.getNorm1()D').
name_ref(m_get_norm_223, method, 'getNorm', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.getNorm()D').
name_ref(m_get_norm_39, method, 'getNorm', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.getNorm()D').
name_ref(m_get_norm_82, method, 'getNorm', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.getNorm()D').
name_ref(m_get_norm_inf_121, method, 'getNormInf', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.getNormInf()D').
name_ref(m_get_norm_inf_225, method, 'getNormInf', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.getNormInf()D').
name_ref(m_get_norm_inf_41, method, 'getNormInf', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.getNormInf()D').
name_ref(m_get_norm_sq_224, method, 'getNormSq', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.getNormSq()D').
name_ref(m_get_norm_sq_40, method, 'getNormSq', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.getNormSq()D').
name_ref(m_get_norm_sq_67, method, 'getNormSq', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.getNormSq()D').
name_ref(m_get_offset_17, method, 'getOffset', 'Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;.getOffset(Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;)D').
name_ref(m_get_offset_171, method, 'getOffset', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line;.getOffset(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)D').
name_ref(m_get_offset_172, method, 'getOffset', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line;.getOffset(Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;)D').
name_ref(m_get_origin_74, method, 'getOrigin', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Line;.getOrigin()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;').
name_ref(m_get_origin_offset_181, method, 'getOriginOffset', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line;.getOriginOffset()D').
name_ref(m_get_parent_299, method, 'getParent', 'Lorg/apache/commons/math3/geometry/partitioning/BSPTree;.getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;').
name_ref(m_get_plus_297, method, 'getPlus', 'Lorg/apache/commons/math3/geometry/partitioning/BSPTree;.getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;').
name_ref(m_get_point_at_174, method, 'getPointAt', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line;.getPointAt(Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;D)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;').
name_ref(m_get_rem_a_386, method, 'getRemA', 'Lorg/apache/commons/math3/util/FastMath$CodyWaite;.getRemA()D').
name_ref(m_get_rem_b_387, method, 'getRemB', 'Lorg/apache/commons/math3/util/FastMath$CodyWaite;.getRemB()D').
name_ref(m_get_remaining_region_196, method, 'getRemainingRegion', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;.getRemainingRegion()Lorg/apache/commons/math3/geometry/partitioning/Region<TT;>;').
name_ref(m_get_reverse_164, method, 'getReverse', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line;.getReverse()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;').
name_ref(m_get_segments_192, method, 'getSegments', 'Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;.getSegments()Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;>;').
name_ref(m_get_segments_91, method, 'getSegments', 'Lorg/apache/commons/math3/geometry/euclidean/threed/SubLine;.getSegments()Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/threed/Segment;>;').
name_ref(m_get_size_26, method, 'getSize', 'Lorg/apache/commons/math3/geometry/euclidean/oned/SubOrientedPoint;.getSize()D').
name_ref(m_get_size_267, method, 'getSize', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;.getSize()D').
name_ref(m_get_size_285, method, 'getSize', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;.getSize()D').
name_ref(m_get_space_118, method, 'getSpace', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.getSpace()Lorg/apache/commons/math3/geometry/Space;').
name_ref(m_get_space_220, method, 'getSpace', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.getSpace()Lorg/apache/commons/math3/geometry/Space;').
name_ref(m_get_space_36, method, 'getSpace', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.getSpace()Lorg/apache/commons/math3/geometry/Space;').
name_ref(m_get_sup_12, method, 'getSup', 'Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;.getSup()D').
name_ref(m_get_transform_183, method, 'getTransform', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line;.getTransform(Ljava/awt/geom/AffineTransform;)Lorg/apache/commons/math3/geometry/partitioning/Transform<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;|Lorg/apache/commons/math3/exception/MathIllegalArgumentException;').
name_ref(m_get_tree_261, method, 'getTree', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;.getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;').
name_ref(m_get_x_114, method, 'getX', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.getX()D').
name_ref(m_get_x_156, method, 'getX', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.getX()D').
name_ref(m_get_x_35, method, 'getX', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.getX()D').
name_ref(m_get_y_115, method, 'getY', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.getY()D').
name_ref(m_get_y_157, method, 'getY', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.getY()D').
name_ref(m_get_z_116, method, 'getZ', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.getZ()D').
name_ref(m_get_zero_119, method, 'getZero', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.getZero()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;').
name_ref(m_get_zero_221, method, 'getZero', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.getZero()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;').
name_ref(m_get_zero_37, method, 'getZero', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.getZero()Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;').
name_ref(m_hash_code_135, method, 'hashCode', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.hashCode()I').
name_ref(m_hash_code_244, method, 'hashCode', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.hashCode()I').
name_ref(m_hash_code_60, method, 'hashCode', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.hashCode()I').
name_ref(m_hypot_158, method, 'hypot', 'Lorg/apache/commons/math3/util/FastMath;.hypot(DD)D').
name_ref(m_ieeeremainder_379, method, 'IEEEremainder', 'Lorg/apache/commons/math3/util/FastMath;.IEEEremainder(DD)D').
name_ref(m_insert_cut_294, method, 'insertCut', 'Lorg/apache/commons/math3/geometry/partitioning/BSPTree;.insertCut(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<TS;>;)Z').
name_ref(m_insert_cuts_255, method, 'insertCuts', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;.insertCuts(Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Ljava/util/Collection<Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;>;)V').
name_ref(m_insert_in_tree_310, method, 'insertInTree', 'Lorg/apache/commons/math3/geometry/partitioning/BSPTree;.insertInTree(Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Z)V').
name_ref(m_intersection_167, method, 'intersection', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line;.intersection(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;').
name_ref(m_intersection_193, method, 'intersection', 'Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;.intersection(Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;Z)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;').
name_ref(m_intersection_279, method, 'intersection', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;.intersection(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;').
name_ref(m_intersection_85, method, 'intersection', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Line;.intersection(Lorg/apache/commons/math3/geometry/euclidean/threed/Line;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;').
name_ref(m_intersection_92, method, 'intersection', 'Lorg/apache/commons/math3/geometry/euclidean/threed/SubLine;.intersection(Lorg/apache/commons/math3/geometry/euclidean/threed/SubLine;Z)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;').
name_ref(m_intervals_set_1, method, 'IntervalsSet', 'Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;.()V').
name_ref(m_intervals_set_2, method, 'IntervalsSet', 'Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;.(DD)V').
name_ref(m_intervals_set_5, method, 'IntervalsSet', 'Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;.(Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;)V').
name_ref(m_intervals_set_6, method, 'IntervalsSet', 'Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;.(Ljava/util/Collection<Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;>;)V').
name_ref(m_is_direct_23, method, 'isDirect', 'Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;.isDirect()Z').
name_ref(m_is_empty_257, method, 'isEmpty', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;.isEmpty()Z').
name_ref(m_is_empty_258, method, 'isEmpty', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;.isEmpty(Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;)Z').
name_ref(m_is_empty_291, method, 'isEmpty', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;.isEmpty()Z').
name_ref(m_is_infinite_133, method, 'isInfinite', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.isInfinite()Z').
name_ref(m_is_infinite_234, method, 'isInfinite', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.isInfinite()Z').
name_ref(m_is_infinite_50, method, 'isInfinite', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.isInfinite()Z').
name_ref(m_is_infinite_7, method, 'isInfinite', 'Ljava/lang/Double;.isInfinite(D)Z').
name_ref(m_is_monotonic_403, method, 'isMonotonic', 'Lorg/apache/commons/math3/util/MathArrays;.isMonotonic<T::Ljava/lang/Comparable<-TT;>;>([TT;Lorg/apache/commons/math3/util/MathArrays$OrderDirection;Z)Z').
name_ref(m_is_monotonic_404, method, 'isMonotonic', 'Lorg/apache/commons/math3/util/MathArrays;.isMonotonic([DLorg/apache/commons/math3/util/MathArrays$OrderDirection;Z)Z').
name_ref(m_is_na_n_132, method, 'isNaN', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.isNaN()Z').
name_ref(m_is_na_n_233, method, 'isNaN', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.isNaN()Z').
name_ref(m_is_na_n_377, method, 'isNaN', 'Ljava/lang/Double;.isNaN(D)Z').
name_ref(m_is_na_n_49, method, 'isNaN', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.isNaN()Z').
name_ref(m_is_parallel_to_177, method, 'isParallelTo', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line;.isParallelTo(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)Z').
name_ref(m_is_similar_to_79, method, 'isSimilarTo', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Line;.isSimilarTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Line;)Z').
name_ref(m_line_150, method, 'Line', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line;.(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V').
name_ref(m_line_152, method, 'Line', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line;.(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V').
name_ref(m_line_153, method, 'Line', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line;.(DDDD)V').
name_ref(m_line_154, method, 'Line', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line;.(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)V').
name_ref(m_line_63, method, 'Line', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Line;.(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V|Lorg/apache/commons/math3/exception/MathIllegalArgumentException;').
name_ref(m_line_65, method, 'Line', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Line;.(Lorg/apache/commons/math3/geometry/euclidean/threed/Line;)V').
name_ref(m_line_transform_184, method, 'LineTransform', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;.(Ljava/awt/geom/AffineTransform;)V|Lorg/apache/commons/math3/exception/MathIllegalArgumentException;').
name_ref(m_linear_combination_111, method, 'linearCombination', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDD)D').
name_ref(m_linear_combination_136, method, 'linearCombination', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDDDD)D').
name_ref(m_linear_combination_420, method, 'linearCombination', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination([D[D)D|Lorg/apache/commons/math3/exception/DimensionMismatchException;').
name_ref(m_linear_combination_421, method, 'linearCombination', 'Lorg/apache/commons/math3/util/MathArrays;.linearCombination(DDDDDDDD)D').
name_ref(m_log_10_335, method, 'log10', 'Lorg/apache/commons/math3/util/FastMath;.log10(D)D').
name_ref(m_log_1p_334, method, 'log1p', 'Lorg/apache/commons/math3/util/FastMath;.log1p(D)D').
name_ref(m_log_313, method, 'log', 'Ljava/lang/StrictMath;.log(D)D').
name_ref(m_log_332, method, 'log', 'Lorg/apache/commons/math3/util/FastMath;.log(D)D').
name_ref(m_log_333, method, 'log', 'Lorg/apache/commons/math3/util/FastMath;.log(D[D)D').
name_ref(m_log_336, method, 'log', 'Lorg/apache/commons/math3/util/FastMath;.log(DD)D').
name_ref(m_long_bits_to_double_356, method, 'longBitsToDouble', 'Ljava/lang/Double;.longBitsToDouble(J)D').
name_ref(m_main_383, method, 'main', 'Lorg/apache/commons/math3/util/FastMath;.main([Ljava/lang/String;)V').
name_ref(m_math_arrays_388, method, 'MathArrays', 'Lorg/apache/commons/math3/util/MathArrays;.()V').
name_ref(m_max_373, method, 'max', 'Lorg/apache/commons/math3/util/FastMath;.max(II)I').
name_ref(m_max_374, method, 'max', 'Lorg/apache/commons/math3/util/FastMath;.max(JJ)J').
name_ref(m_max_375, method, 'max', 'Lorg/apache/commons/math3/util/FastMath;.max(FF)F').
name_ref(m_max_376, method, 'max', 'Lorg/apache/commons/math3/util/FastMath;.max(DD)D').
name_ref(m_merge_306, method, 'merge', 'Lorg/apache/commons/math3/geometry/partitioning/BSPTree;.merge(Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger<TS;>;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;').
name_ref(m_merge_307, method, 'merge', 'Lorg/apache/commons/math3/geometry/partitioning/BSPTree;.merge(Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger<TS;>;Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;').
name_ref(m_merge_308, method, 'merge', 'Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger;.merge(Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;ZZ)Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;').
name_ref(m_min_369, method, 'min', 'Lorg/apache/commons/math3/util/FastMath;.min(II)I').
name_ref(m_min_370, method, 'min', 'Lorg/apache/commons/math3/util/FastMath;.min(JJ)J').
name_ref(m_min_371, method, 'min', 'Lorg/apache/commons/math3/util/FastMath;.min(FF)F').
name_ref(m_min_372, method, 'min', 'Lorg/apache/commons/math3/util/FastMath;.min(DD)D').
name_ref(m_minus_found_278, method, 'minusFound', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion$Sides;.minusFound()Z').
name_ref(m_negate_130, method, 'negate', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.negate()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;').
name_ref(m_negate_231, method, 'negate', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.negate()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;').
name_ref(m_negate_47, method, 'negate', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.negate()Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;').
name_ref(m_next_after_362, method, 'nextAfter', 'Lorg/apache/commons/math3/util/FastMath;.nextAfter(DD)D').
name_ref(m_next_after_363, method, 'nextAfter', 'Lorg/apache/commons/math3/util/FastMath;.nextAfter(FD)F').
name_ref(m_next_up_325, method, 'nextUp', 'Lorg/apache/commons/math3/util/FastMath;.nextUp(D)D').
name_ref(m_next_up_326, method, 'nextUp', 'Lorg/apache/commons/math3/util/FastMath;.nextUp(F)F').
name_ref(m_normalize_127, method, 'normalize', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.normalize()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;|Lorg/apache/commons/math3/exception/MathArithmeticException;').
name_ref(m_normalize_230, method, 'normalize', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.normalize()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;|Lorg/apache/commons/math3/exception/MathArithmeticException;').
name_ref(m_normalize_46, method, 'normalize', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.normalize()Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;|Lorg/apache/commons/math3/exception/MathArithmeticException;').
name_ref(m_normalize_array_426, method, 'normalizeArray', 'Lorg/apache/commons/math3/util/MathArrays;.normalizeArray([DD)[D|Lorg/apache/commons/math3/exception/MathIllegalArgumentException;|Lorg/apache/commons/math3/exception/MathArithmeticException;').
name_ref(m_oriented_point_15, method, 'OrientedPoint', 'Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;.(Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;Z)V').
name_ref(m_orthogonal_128, method, 'orthogonal', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.orthogonal()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;|Lorg/apache/commons/math3/exception/MathArithmeticException;').
name_ref(m_plus_found_276, method, 'plusFound', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion$Sides;.plusFound()Z').
name_ref(m_point_at_76, method, 'pointAt', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Line;.pointAt(D)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;').
name_ref(m_poly_cosine_340, method, 'polyCosine', 'Lorg/apache/commons/math3/util/FastMath;.polyCosine(D)D').
name_ref(m_poly_sine_339, method, 'polySine', 'Lorg/apache/commons/math3/util/FastMath;.polySine(D)D').
name_ref(m_pow_337, method, 'pow', 'Lorg/apache/commons/math3/util/FastMath;.pow(DD)D').
name_ref(m_pow_338, method, 'pow', 'Lorg/apache/commons/math3/util/FastMath;.pow(DI)D').
name_ref(m_precision_430, method, 'Precision', 'Lorg/apache/commons/math3/util/Precision;.()V').
name_ref(m_random_327, method, 'random', 'Lorg/apache/commons/math3/util/FastMath;.random()D').
name_ref(m_recurse_intersection_280, method, 'recurseIntersection', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;.recurseIntersection(Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;').
name_ref(m_recurse_list_14, method, 'recurseList', 'Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;.recurseList(Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;>;DD)V').
name_ref(m_recurse_sides_273, method, 'recurseSides', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;.recurseSides(Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion$Sides;)V').
name_ref(m_recurse_transform_282, method, 'recurseTransform', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;.recurseTransform(Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Lorg/apache/commons/math3/geometry/partitioning/Transform<TS;TT;>;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;').
name_ref(m_recurse_transform_288, method, 'recurseTransform', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;.recurseTransform(Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TT;>;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<TS;>;Lorg/apache/commons/math3/geometry/partitioning/Transform<TS;TT;>;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TT;>;').
name_ref(m_reduce_payne_hanek_344, method, 'reducePayneHanek', 'Lorg/apache/commons/math3/util/FastMath;.reducePayneHanek(D[D)V').
name_ref(m_remember_minus_found_277, method, 'rememberMinusFound', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion$Sides;.rememberMinusFound()V').
name_ref(m_remember_plus_found_275, method, 'rememberPlusFound', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion$Sides;.rememberPlusFound()V').
name_ref(m_representable_delta_451, method, 'representableDelta', 'Lorg/apache/commons/math3/util/Precision;.representableDelta(DD)D').
name_ref(m_reset_151, method, 'reset', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line;.reset(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V').
name_ref(m_reset_162, method, 'reset', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line;.reset(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V').
name_ref(m_reset_64, method, 'reset', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Line;.reset(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V|Lorg/apache/commons/math3/exception/MathIllegalArgumentException;').
name_ref(m_reunite_286, method, 'reunite', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;.reunite(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;)Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<TS;TT;>;').
name_ref(m_revert_72, method, 'revert', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Line;.revert()Lorg/apache/commons/math3/geometry/euclidean/threed/Line;').
name_ref(m_revert_self_163, method, 'revertSelf', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line;.revertSelf()V').
name_ref(m_revert_self_24, method, 'revertSelf', 'Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;.revertSelf()V').
name_ref(m_rint_366, method, 'rint', 'Lorg/apache/commons/math3/util/FastMath;.rint(D)D').
name_ref(m_round_367, method, 'round', 'Lorg/apache/commons/math3/util/FastMath;.round(D)J').
name_ref(m_round_368, method, 'round', 'Lorg/apache/commons/math3/util/FastMath;.round(F)I').
name_ref(m_round_446, method, 'round', 'Lorg/apache/commons/math3/util/Precision;.round(DI)D').
name_ref(m_round_447, method, 'round', 'Lorg/apache/commons/math3/util/Precision;.round(DII)D').
name_ref(m_round_448, method, 'round', 'Lorg/apache/commons/math3/util/Precision;.round(FI)F').
name_ref(m_round_449, method, 'round', 'Lorg/apache/commons/math3/util/Precision;.round(FII)F|Lorg/apache/commons/math3/exception/MathArithmeticException;|Lorg/apache/commons/math3/exception/MathIllegalArgumentException;').
name_ref(m_round_unscaled_450, method, 'roundUnscaled', 'Lorg/apache/commons/math3/util/Precision;.roundUnscaled(DDI)D|Lorg/apache/commons/math3/exception/MathArithmeticException;|Lorg/apache/commons/math3/exception/MathIllegalArgumentException;').
name_ref(m_safe_norm_412, method, 'safeNorm', 'Lorg/apache/commons/math3/util/MathArrays;.safeNorm([D)D').
name_ref(m_same_orientation_as_173, method, 'sameOrientationAs', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line;.sameOrientationAs(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;)Z').
name_ref(m_same_orientation_as_21, method, 'sameOrientationAs', 'Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;.sameOrientationAs(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;)Z').
name_ref(m_scalar_multiply_131, method, 'scalarMultiply', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.scalarMultiply(D)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;').
name_ref(m_scalar_multiply_232, method, 'scalarMultiply', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.scalarMultiply(D)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;').
name_ref(m_scalar_multiply_48, method, 'scalarMultiply', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.scalarMultiply(D)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;').
name_ref(m_scalb_360, method, 'scalb', 'Lorg/apache/commons/math3/util/FastMath;.scalb(DI)D').
name_ref(m_scalb_361, method, 'scalb', 'Lorg/apache/commons/math3/util/FastMath;.scalb(FI)F').
name_ref(m_scale_391, method, 'scale', 'Lorg/apache/commons/math3/util/MathArrays;.scale(D[D)[D').
name_ref(m_scale_in_place_392, method, 'scaleInPlace', 'Lorg/apache/commons/math3/util/MathArrays;.scaleInPlace(D[D)V').
name_ref(m_set_angle_180, method, 'setAngle', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line;.setAngle(D)V').
name_ref(m_set_attribute_300, method, 'setAttribute', 'Lorg/apache/commons/math3/geometry/partitioning/BSPTree;.setAttribute(Ljava/lang/Object;)V').
name_ref(m_set_barycenter_270, method, 'setBarycenter', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;.setBarycenter(Lorg/apache/commons/math3/geometry/Vector<TS;>;)V').
name_ref(m_set_origin_offset_182, method, 'setOriginOffset', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line;.setOriginOffset(D)V').
name_ref(m_set_size_268, method, 'setSize', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;.setSize(D)V').
name_ref(m_side_198, method, 'side', 'Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;.side(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;)Lorg/apache/commons/math3/geometry/partitioning/Side;').
name_ref(m_side_272, method, 'side', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;.side(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<TS;>;)Lorg/apache/commons/math3/geometry/partitioning/Side;').
name_ref(m_side_28, method, 'side', 'Lorg/apache/commons/math3/geometry/euclidean/oned/SubOrientedPoint;.side(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;)Lorg/apache/commons/math3/geometry/partitioning/Side;').
name_ref(m_side_289, method, 'side', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;.side(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<TS;>;)Lorg/apache/commons/math3/geometry/partitioning/Side;').
name_ref(m_sides_274, method, 'Sides', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion$Sides;.()V').
name_ref(m_signum_323, method, 'signum', 'Lorg/apache/commons/math3/util/FastMath;.signum(D)D').
name_ref(m_signum_324, method, 'signum', 'Lorg/apache/commons/math3/util/FastMath;.signum(F)F').
name_ref(m_sin_161, method, 'sin', 'Lorg/apache/commons/math3/util/FastMath;.sin(D)D').
name_ref(m_sin_q_341, method, 'sinQ', 'Lorg/apache/commons/math3/util/FastMath;.sinQ(DD)D').
name_ref(m_sinh_318, method, 'sinh', 'Lorg/apache/commons/math3/util/FastMath;.sinh(D)D').
name_ref(m_sort_in_place_413, method, 'sortInPlace', 'Lorg/apache/commons/math3/util/MathArrays;.sortInPlace([D[[D)V|Lorg/apache/commons/math3/exception/DimensionMismatchException;|Lorg/apache/commons/math3/exception/NullArgumentException;').
name_ref(m_sort_in_place_414, method, 'sortInPlace', 'Lorg/apache/commons/math3/util/MathArrays;.sortInPlace([DLorg/apache/commons/math3/util/MathArrays$OrderDirection;[[D)V|Lorg/apache/commons/math3/exception/NullArgumentException;|Lorg/apache/commons/math3/exception/DimensionMismatchException;').
name_ref(m_split_199, method, 'split', 'Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;.split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;').
name_ref(m_split_29, method, 'split', 'Lorg/apache/commons/math3/geometry/euclidean/oned/SubOrientedPoint;.split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;').
name_ref(m_split_290, method, 'split', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;.split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<TS;>;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane<TS;>;').
name_ref(m_split_309, method, 'split', 'Lorg/apache/commons/math3/geometry/partitioning/BSPTree;.split(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;').
name_ref(m_sqrt_316, method, 'sqrt', 'Ljava/lang/Math;.sqrt(D)D').
name_ref(m_sqrt_69, method, 'sqrt', 'Lorg/apache/commons/math3/util/FastMath;.sqrt(D)D').
name_ref(m_sub_line_188, method, 'SubLine', 'Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;.(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;Lorg/apache/commons/math3/geometry/partitioning/Region<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;)V').
name_ref(m_sub_line_189, method, 'SubLine', 'Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;.(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V').
name_ref(m_sub_line_191, method, 'SubLine', 'Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;.(Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;)V').
name_ref(m_sub_line_87, method, 'SubLine', 'Lorg/apache/commons/math3/geometry/euclidean/threed/SubLine;.(Lorg/apache/commons/math3/geometry/euclidean/threed/Line;Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;)V').
name_ref(m_sub_line_88, method, 'SubLine', 'Lorg/apache/commons/math3/geometry/euclidean/threed/SubLine;.(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V|Lorg/apache/commons/math3/exception/MathIllegalArgumentException;').
name_ref(m_sub_line_90, method, 'SubLine', 'Lorg/apache/commons/math3/geometry/euclidean/threed/SubLine;.(Lorg/apache/commons/math3/geometry/euclidean/threed/Segment;)V|Lorg/apache/commons/math3/exception/MathIllegalArgumentException;').
name_ref(m_sub_oriented_point_19, method, 'SubOrientedPoint', 'Lorg/apache/commons/math3/geometry/euclidean/oned/SubOrientedPoint;.(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;Lorg/apache/commons/math3/geometry/partitioning/Region<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;)V').
name_ref(m_subtract_126, method, 'subtract', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.subtract(DLorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;').
name_ref(m_subtract_228, method, 'subtract', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.subtract(Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;').
name_ref(m_subtract_229, method, 'subtract', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.subtract(DLorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;').
name_ref(m_subtract_44, method, 'subtract', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.subtract(Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;').
name_ref(m_subtract_45, method, 'subtract', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.subtract(DLorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;').
name_ref(m_subtract_66, method, 'subtract', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.subtract(Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;').
name_ref(m_tan_345, method, 'tan', 'Lorg/apache/commons/math3/util/FastMath;.tan(D)D').
name_ref(m_tan_q_343, method, 'tanQ', 'Lorg/apache/commons/math3/util/FastMath;.tanQ(DDZ)D').
name_ref(m_tanh_319, method, 'tanh', 'Lorg/apache/commons/math3/util/FastMath;.tanh(D)D').
name_ref(m_test_end_points_200, method, 'testEndPoints', 'Lorg/apache/commons/math3/geometry/euclidean/twod/SubLineTest;.testEndPoints()V').
name_ref(m_test_end_points_94, method, 'testEndPoints', 'Lorg/apache/commons/math3/geometry/euclidean/threed/SubLineTest;.testEndPoints()V|Lorg/apache/commons/math3/exception/MathIllegalArgumentException;').
name_ref(m_test_half_infinite_neg_204, method, 'testHalfInfiniteNeg', 'Lorg/apache/commons/math3/geometry/euclidean/twod/SubLineTest;.testHalfInfiniteNeg()V').
name_ref(m_test_half_infinite_neg_98, method, 'testHalfInfiniteNeg', 'Lorg/apache/commons/math3/geometry/euclidean/threed/SubLineTest;.testHalfInfiniteNeg()V|Lorg/apache/commons/math3/exception/MathIllegalArgumentException;').
name_ref(m_test_half_infinite_pos_205, method, 'testHalfInfinitePos', 'Lorg/apache/commons/math3/geometry/euclidean/twod/SubLineTest;.testHalfInfinitePos()V').
name_ref(m_test_half_infinite_pos_99, method, 'testHalfInfinitePos', 'Lorg/apache/commons/math3/geometry/euclidean/threed/SubLineTest;.testHalfInfinitePos()V|Lorg/apache/commons/math3/exception/MathIllegalArgumentException;').
name_ref(m_test_intersection_boundary_boundary_103, method, 'testIntersectionBoundaryBoundary', 'Lorg/apache/commons/math3/geometry/euclidean/threed/SubLineTest;.testIntersectionBoundaryBoundary()V|Lorg/apache/commons/math3/exception/MathIllegalArgumentException;').
name_ref(m_test_intersection_boundary_boundary_209, method, 'testIntersectionBoundaryBoundary', 'Lorg/apache/commons/math3/geometry/euclidean/twod/SubLineTest;.testIntersectionBoundaryBoundary()V').
name_ref(m_test_intersection_boundary_outside_104, method, 'testIntersectionBoundaryOutside', 'Lorg/apache/commons/math3/geometry/euclidean/threed/SubLineTest;.testIntersectionBoundaryOutside()V|Lorg/apache/commons/math3/exception/MathIllegalArgumentException;').
name_ref(m_test_intersection_boundary_outside_210, method, 'testIntersectionBoundaryOutside', 'Lorg/apache/commons/math3/geometry/euclidean/twod/SubLineTest;.testIntersectionBoundaryOutside()V').
name_ref(m_test_intersection_inside_boundary_101, method, 'testIntersectionInsideBoundary', 'Lorg/apache/commons/math3/geometry/euclidean/threed/SubLineTest;.testIntersectionInsideBoundary()V|Lorg/apache/commons/math3/exception/MathIllegalArgumentException;').
name_ref(m_test_intersection_inside_boundary_207, method, 'testIntersectionInsideBoundary', 'Lorg/apache/commons/math3/geometry/euclidean/twod/SubLineTest;.testIntersectionInsideBoundary()V').
name_ref(m_test_intersection_inside_inside_100, method, 'testIntersectionInsideInside', 'Lorg/apache/commons/math3/geometry/euclidean/threed/SubLineTest;.testIntersectionInsideInside()V|Lorg/apache/commons/math3/exception/MathIllegalArgumentException;').
name_ref(m_test_intersection_inside_inside_206, method, 'testIntersectionInsideInside', 'Lorg/apache/commons/math3/geometry/euclidean/twod/SubLineTest;.testIntersectionInsideInside()V').
name_ref(m_test_intersection_inside_outside_102, method, 'testIntersectionInsideOutside', 'Lorg/apache/commons/math3/geometry/euclidean/threed/SubLineTest;.testIntersectionInsideOutside()V|Lorg/apache/commons/math3/exception/MathIllegalArgumentException;').
name_ref(m_test_intersection_inside_outside_208, method, 'testIntersectionInsideOutside', 'Lorg/apache/commons/math3/geometry/euclidean/twod/SubLineTest;.testIntersectionInsideOutside()V').
name_ref(m_test_intersection_not_intersecting_106, method, 'testIntersectionNotIntersecting', 'Lorg/apache/commons/math3/geometry/euclidean/threed/SubLineTest;.testIntersectionNotIntersecting()V|Lorg/apache/commons/math3/exception/MathIllegalArgumentException;').
name_ref(m_test_intersection_outside_outside_105, method, 'testIntersectionOutsideOutside', 'Lorg/apache/commons/math3/geometry/euclidean/threed/SubLineTest;.testIntersectionOutsideOutside()V|Lorg/apache/commons/math3/exception/MathIllegalArgumentException;').
name_ref(m_test_intersection_outside_outside_211, method, 'testIntersectionOutsideOutside', 'Lorg/apache/commons/math3/geometry/euclidean/twod/SubLineTest;.testIntersectionOutsideOutside()V').
name_ref(m_test_intersection_parallel_212, method, 'testIntersectionParallel', 'Lorg/apache/commons/math3/geometry/euclidean/twod/SubLineTest;.testIntersectionParallel()V').
name_ref(m_test_no_end_points_201, method, 'testNoEndPoints', 'Lorg/apache/commons/math3/geometry/euclidean/twod/SubLineTest;.testNoEndPoints()V').
name_ref(m_test_no_end_points_95, method, 'testNoEndPoints', 'Lorg/apache/commons/math3/geometry/euclidean/threed/SubLineTest;.testNoEndPoints()V|Lorg/apache/commons/math3/exception/MathIllegalArgumentException;').
name_ref(m_test_no_segments_202, method, 'testNoSegments', 'Lorg/apache/commons/math3/geometry/euclidean/twod/SubLineTest;.testNoSegments()V').
name_ref(m_test_no_segments_96, method, 'testNoSegments', 'Lorg/apache/commons/math3/geometry/euclidean/threed/SubLineTest;.testNoSegments()V|Lorg/apache/commons/math3/exception/MathIllegalArgumentException;').
name_ref(m_test_several_segments_203, method, 'testSeveralSegments', 'Lorg/apache/commons/math3/geometry/euclidean/twod/SubLineTest;.testSeveralSegments()V').
name_ref(m_test_several_segments_97, method, 'testSeveralSegments', 'Lorg/apache/commons/math3/geometry/euclidean/threed/SubLineTest;.testSeveralSegments()V|Lorg/apache/commons/math3/exception/MathIllegalArgumentException;').
name_ref(m_to_array_117, method, 'toArray', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.toArray()[D').
name_ref(m_to_array_219, method, 'toArray', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.toArray()[D').
name_ref(m_to_degrees_352, method, 'toDegrees', 'Lorg/apache/commons/math3/util/FastMath;.toDegrees(D)D').
name_ref(m_to_radians_351, method, 'toRadians', 'Lorg/apache/commons/math3/util/FastMath;.toRadians(D)D').
name_ref(m_to_space_166, method, 'toSpace', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line;.toSpace(Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;').
name_ref(m_to_space_78, method, 'toSpace', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Line;.toSpace(Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;').
name_ref(m_to_string_148, method, 'toString', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.toString()Ljava/lang/String;').
name_ref(m_to_string_149, method, 'toString', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.toString(Ljava/text/NumberFormat;)Ljava/lang/String;').
name_ref(m_to_string_245, method, 'toString', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.toString()Ljava/lang/String;').
name_ref(m_to_string_246, method, 'toString', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.toString(Ljava/text/NumberFormat;)Ljava/lang/String;').
name_ref(m_to_string_61, method, 'toString', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.toString()Ljava/lang/String;').
name_ref(m_to_string_62, method, 'toString', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.toString(Ljava/text/NumberFormat;)Ljava/lang/String;').
name_ref(m_to_sub_space_165, method, 'toSubSpace', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line;.toSubSpace(Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;').
name_ref(m_to_sub_space_77, method, 'toSubSpace', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Line;.toSubSpace(Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;').
name_ref(m_translate_to_point_178, method, 'translateToPoint', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line;.translateToPoint(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V').
name_ref(m_ulp_358, method, 'ulp', 'Lorg/apache/commons/math3/util/FastMath;.ulp(D)D').
name_ref(m_ulp_359, method, 'ulp', 'Lorg/apache/commons/math3/util/FastMath;.ulp(F)F').
name_ref(m_vector1_d_30, method, 'Vector1D', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.(D)V').
name_ref(m_vector1_d_31, method, 'Vector1D', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.(DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;)V').
name_ref(m_vector1_d_32, method, 'Vector1D', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.(DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;)V').
name_ref(m_vector1_d_33, method, 'Vector1D', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.(DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;)V').
name_ref(m_vector1_d_34, method, 'Vector1D', 'Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;.(DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;)V').
name_ref(m_vector2_d_213, method, 'Vector2D', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.(DD)V').
name_ref(m_vector2_d_214, method, 'Vector2D', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.([D)V|Lorg/apache/commons/math3/exception/DimensionMismatchException;').
name_ref(m_vector2_d_215, method, 'Vector2D', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.(DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V').
name_ref(m_vector2_d_216, method, 'Vector2D', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.(DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V').
name_ref(m_vector2_d_217, method, 'Vector2D', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.(DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V').
name_ref(m_vector2_d_218, method, 'Vector2D', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;.(DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V').
name_ref(m_vector3_d_107, method, 'Vector3D', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.(DDD)V').
name_ref(m_vector3_d_109, method, 'Vector3D', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.([D)V|Lorg/apache/commons/math3/exception/DimensionMismatchException;').
name_ref(m_vector3_d_110, method, 'Vector3D', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.(DD)V').
name_ref(m_vector3_d_112, method, 'Vector3D', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V').
name_ref(m_vector3_d_113, method, 'Vector3D', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V').
name_ref(m_vector3_d_68, method, 'Vector3D', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V').
name_ref(m_vector3_d_70, method, 'Vector3D', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V').
name_ref(m_visit_302, method, 'visit', 'Lorg/apache/commons/math3/geometry/partitioning/BSPTree;.visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor<TS;>;)V').
name_ref(m_visit_internal_node_251, method, 'visitInternalNode', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion$4775;.visitInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;)V').
name_ref(m_visit_internal_node_263, method, 'visitInternalNode', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion$BoundaryBuilder;.visitInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;)V').
name_ref(m_visit_leaf_node_252, method, 'visitLeafNode', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion$4775;.visitLeafNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;)V').
name_ref(m_visit_leaf_node_264, method, 'visitLeafNode', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion$BoundaryBuilder;.visitLeafNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;)V').
name_ref(m_visit_order_250, method, 'visitOrder', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion$4775;.visitOrder(Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;)Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;').
name_ref(m_visit_order_262, method, 'visitOrder', 'Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion$BoundaryBuilder;.visitOrder(Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;)Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;').
name_ref(m_whole_hyperplane_169, method, 'wholeHyperplane', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line;.wholeHyperplane()Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;').
name_ref(m_whole_hyperplane_18, method, 'wholeHyperplane', 'Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;.wholeHyperplane()Lorg/apache/commons/math3/geometry/euclidean/oned/SubOrientedPoint;').
name_ref(m_whole_line_86, method, 'wholeLine', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Line;.wholeLine()Lorg/apache/commons/math3/geometry/euclidean/threed/SubLine;').
name_ref(m_whole_space_170, method, 'wholeSpace', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line;.wholeSpace()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;').
name_ref(m_whole_space_20, method, 'wholeSpace', 'Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;.wholeSpace()Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;').
name_ref(q_cos_22, q_name, 'other.cos', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line;.intersection(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;#other#0#0:Lorg/apache/commons/math3/geometry/euclidean/twod/Line;.cos)D').
name_ref(q_direction_2, q_name, 'line.direction', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Line;.closestPoint(Lorg/apache/commons/math3/geometry/euclidean/threed/Line;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;#line#0#0:Lorg/apache/commons/math3/geometry/euclidean/threed/Line;.direction)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;').
name_ref(q_epsilon_3, q_name, 'Precision.EPSILON', 'Lorg/apache/commons/math3/util/Precision;:Lorg/apache/commons/math3/util/Precision;.EPSILON)D').
name_ref(q_line_5, q_name, 'subLine.line', 'Lorg/apache/commons/math3/geometry/euclidean/threed/SubLine;.intersection(Lorg/apache/commons/math3/geometry/euclidean/threed/SubLine;Z)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;#subLine#0#0:Lorg/apache/commons/math3/geometry/euclidean/threed/SubLine;.line)Lorg/apache/commons/math3/geometry/euclidean/threed/Line;').
name_ref(q_max_value_26, q_name, 'Double.MAX_VALUE', 'Ljava/lang/Double;:Ljava/lang/Double;.MAX_VALUE)D').
name_ref(q_na_n_1, q_name, 'Double.NaN', 'Ljava/lang/Double;:Ljava/lang/Double;.NaN)D').
name_ref(q_negative_infinity_28, q_name, 'Double.NEGATIVE_INFINITY', 'Ljava/lang/Double;:Ljava/lang/Double;.NEGATIVE_INFINITY)D').
name_ref(q_parent_24, q_name, 'plus.parent', 'Lorg/apache/commons/math3/geometry/partitioning/BSPTree;.(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Ljava/lang/Object;)V#plus#0#1:Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/partitioning/BSPTree;:TS;>;.parent)Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/partitioning/BSPTree;:TS;>;').
name_ref(q_parent_25, q_name, 'minus.parent', 'Lorg/apache/commons/math3/geometry/partitioning/BSPTree;.(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;Ljava/lang/Object;)V#minus#0#2:Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/partitioning/BSPTree;:TS;>;.parent)Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/partitioning/BSPTree;:TS;>;').
name_ref(q_pi_21, q_name, 'FastMath.PI', 'Lorg/apache/commons/math3/util/FastMath;:Lorg/apache/commons/math3/util/FastMath;.PI)D').
name_ref(q_pi_29, q_name, 'Math.PI', 'Ljava/lang/Math;:Ljava/lang/Math;.PI)D').
name_ref(q_positive_infinity_27, q_name, 'Double.POSITIVE_INFINITY', 'Ljava/lang/Double;:Ljava/lang/Double;.POSITIVE_INFINITY)D').
name_ref(q_sin_23, q_name, 'other.sin', 'Lorg/apache/commons/math3/geometry/euclidean/twod/Line;.intersection(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;#other#0#0:Lorg/apache/commons/math3/geometry/euclidean/twod/Line;.sin)D').
name_ref(q_x_10, q_name, 'u2.x', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V#u2#0#3:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.x)D').
name_ref(q_x_15, q_name, 'v3.x', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.subtract(Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;#v3:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.x)D').
name_ref(q_x_18, q_name, 'v3.x', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.dotProduct(Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;)D#v3:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.x)D').
name_ref(q_x_6, q_name, 'u.x', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V#u#0#1:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.x)D').
name_ref(q_x_9, q_name, 'u1.x', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V#u1#0#1:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.x)D').
name_ref(q_y_11, q_name, 'u1.y', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V#u1#0#1:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.y)D').
name_ref(q_y_12, q_name, 'u2.y', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V#u2#0#3:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.y)D').
name_ref(q_y_16, q_name, 'v3.y', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.subtract(Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;#v3:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.y)D').
name_ref(q_y_19, q_name, 'v3.y', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.dotProduct(Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;)D#v3:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.y)D').
name_ref(q_y_7, q_name, 'u.y', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V#u#0#1:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.y)D').
name_ref(q_z_13, q_name, 'u1.z', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V#u1#0#1:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.z)D').
name_ref(q_z_14, q_name, 'u2.z', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V#u2#0#3:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.z)D').
name_ref(q_z_17, q_name, 'v3.z', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.subtract(Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;#v3:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.z)D').
name_ref(q_z_20, q_name, 'v3.z', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.dotProduct(Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;)D#v3:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.z)D').
name_ref(q_z_8, q_name, 'u.z', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V#u#0#1:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;.z)D').
name_ref(q_zero_4, q_name, 'line.zero', 'Lorg/apache/commons/math3/geometry/euclidean/threed/Line;.closestPoint(Lorg/apache/commons/math3/geometry/euclidean/threed/Line;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;#line#0#0:Lorg/apache/commons/math3/geometry/euclidean/threed/Line;.zero)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;').

%%% End of Code Facts

