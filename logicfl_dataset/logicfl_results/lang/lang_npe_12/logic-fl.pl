%%% Logic-FL Facts
:- style_check(-discontiguous).

%type_utils_1 - org.apache.commons.lang3.reflect.TypeUtils
param(p_bounds_490, 1, m_with_upper_bounds_218).
assign(f_upper_bounds_491, p_bounds_490, line(type_utils_1, 68)).
return(type_utils_1_expr4, m_with_upper_bounds_218, line(type_utils_1, 69)).
param(p_bounds_492, 1, m_with_lower_bounds_219).
assign(f_lower_bounds_493, p_bounds_492, line(type_utils_1, 78)).
return(type_utils_1_expr8, m_with_lower_bounds_219, line(type_utils_1, 79)).
return(type_utils_1_expr9, m_build_220, line(type_utils_1, 87)).
method_invoc(type_utils_1_expr9, m_wildcard_type_impl_221, line(type_utils_1, 87)).
argument(f_upper_bounds_491, 1, type_utils_1_expr9).
argument(f_lower_bounds_493, 2, type_utils_1_expr9).
param(p_component_type_494, 1, m_generic_array_type_impl_222).
param(p_obj_495, 1, m_equals_225).
param(p_raw_496, 1, m_parameterized_type_impl_227).
param(p_use_owner_497, 2, m_parameterized_type_impl_227).
param(p_type_arguments_498, 3, m_parameterized_type_impl_227).
param(p_obj_499, 1, m_equals_232).
assign(f_empty_bounds_500, type_utils_1_expr10, line(type_utils_1, 223)).
param(p_upper_bounds_501, 1, m_wildcard_type_impl_221).
param(p_lower_bounds_502, 2, m_wildcard_type_impl_221).
assign(f_upper_bounds_503, type_utils_1_expr13, line(type_utils_1, 234)).
method_invoc(type_utils_1_expr13, m_default_if_null_83, line(type_utils_1, 234)).
argument(p_upper_bounds_501, 1, type_utils_1_expr13).
argument(f_empty_bounds_500, 2, type_utils_1_expr13).
ref(t_object_utils_16, type_utils_1_expr13, line(type_utils_1, 234)).
assign(f_lower_bounds_504, type_utils_1_expr17, line(type_utils_1, 235)).
method_invoc(type_utils_1_expr17, m_default_if_null_83, line(type_utils_1, 235)).
argument(p_lower_bounds_502, 1, type_utils_1_expr17).
argument(f_empty_bounds_500, 2, type_utils_1_expr17).
ref(t_object_utils_16, type_utils_1_expr17, line(type_utils_1, 235)).
return(type_utils_1_expr19, m_get_upper_bounds_234, line(type_utils_1, 243)).
method_invoc(type_utils_1_expr19, m_clone_235, line(type_utils_1, 243)).
ref(f_upper_bounds_503, type_utils_1_expr19, line(type_utils_1, 243)).
return(type_utils_1_expr20, m_get_lower_bounds_236, line(type_utils_1, 251)).
method_invoc(type_utils_1_expr20, m_clone_235, line(type_utils_1, 251)).
ref(f_lower_bounds_504, type_utils_1_expr20, line(type_utils_1, 251)).
param(p_obj_505, 1, m_equals_238).
return(type_utils_1_expr21, m_equals_238, line(type_utils_1, 267)).
method_invoc(type_utils_1_expr26, m_equals_239, line(type_utils_1, 267)).
argument(type_utils_1_expr27, 1, type_utils_1_expr26).
argument(type_utils_1_expr28, 2, type_utils_1_expr26).
ref(t_type_utils_17, type_utils_1_expr26, line(type_utils_1, 267)).
assign(type_utils_1_expr28, p_obj_505, line(type_utils_1, 267)).
assign(f_wildcard_all_506, type_utils_1_expr29, line(type_utils_1, 287)).
method_invoc(type_utils_1_expr29, m_build_220, line(type_utils_1, 287)).
ref(type_utils_1_expr30, type_utils_1_expr29, line(type_utils_1, 287)).
method_invoc(type_utils_1_expr30, m_with_upper_bounds_218, line(type_utils_1, 287)).
argument(type_utils_1_expr31, 1, type_utils_1_expr30).
ref(type_utils_1_expr32, type_utils_1_expr30, line(type_utils_1, 287)).
method_invoc(type_utils_1_expr32, m_wildcard_type_241, line(type_utils_1, 287)).
param(p_type_507, 1, m_is_assignable_243).
param(p_to_type_508, 2, m_is_assignable_243).
return(type_utils_1_expr33, m_is_assignable_243, line(type_utils_1, 311)).
method_invoc(type_utils_1_expr33, m_is_assignable_244, line(type_utils_1, 311)).
argument(p_type_507, 1, type_utils_1_expr33).
argument(p_to_type_508, 2, type_utils_1_expr33).
argument(type_utils_1_literal2, 3, type_utils_1_expr33).
param(p_type_509, 1, m_is_assignable_244).
param(p_to_type_510, 2, m_is_assignable_244).
param(p_type_var_assigns_511, 3, m_is_assignable_244).
return(type_utils_1_expr37, m_is_assignable_244, line(type_utils_1, 326)).
method_invoc(type_utils_1_expr37, m_is_assignable_245, line(type_utils_1, 326)).
argument(p_type_509, 1, type_utils_1_expr37).
argument(type_utils_1_expr38, 2, type_utils_1_expr37).
assign(type_utils_1_expr38, p_to_type_510, line(type_utils_1, 326)).
return(type_utils_1_expr40, m_is_assignable_244, line(type_utils_1, 330)).
method_invoc(type_utils_1_expr40, m_is_assignable_246, line(type_utils_1, 330)).
throw(type_utils_1_expr40, null_pointer_exception, line(type_utils_1, 330)).
argument(p_type_509, 1, type_utils_1_expr40).
argument(type_utils_1_expr41, 2, type_utils_1_expr40).
argument(p_type_var_assigns_511, 3, type_utils_1_expr40).
assign(type_utils_1_expr41, p_to_type_510, line(type_utils_1, 330)).
return(type_utils_1_expr44, m_is_assignable_244, line(type_utils_1, 338)).
method_invoc(type_utils_1_expr44, m_is_assignable_247, line(type_utils_1, 338)).
argument(p_type_509, 1, type_utils_1_expr44).
argument(type_utils_1_expr45, 2, type_utils_1_expr44).
argument(p_type_var_assigns_511, 3, type_utils_1_expr44).
assign(type_utils_1_expr45, p_to_type_510, line(type_utils_1, 338)).
param(p_type_512, 1, m_is_assignable_245).
param(p_to_class_513, 2, m_is_assignable_245).
return(type_utils_1_expr47, m_is_assignable_245, line(type_utils_1, 359)).
method_invoc(type_utils_1_expr50, m_is_primitive_32, line(type_utils_1, 359)).
ref(p_to_class_513, type_utils_1_expr50, line(type_utils_1, 359)).
method_invoc(type_utils_1_expr52, m_equals_7, line(type_utils_1, 369)).
argument(p_type_512, 1, type_utils_1_expr52).
ref(p_to_class_513, type_utils_1_expr52, line(type_utils_1, 369)).
return(type_utils_1_literal7, m_is_assignable_245, line(type_utils_1, 370)).
return(type_utils_1_expr54, m_is_assignable_245, line(type_utils_1, 375)).
method_invoc(type_utils_1_expr54, m_is_assignable_29, line(type_utils_1, 375)).
argument(type_utils_1_expr55, 1, type_utils_1_expr54).
argument(p_to_class_513, 2, type_utils_1_expr54).
ref(t_class_utils_18, type_utils_1_expr54, line(type_utils_1, 375)).
assign(type_utils_1_expr55, p_type_512, line(type_utils_1, 375)).
return(type_utils_1_expr57, m_is_assignable_245, line(type_utils_1, 380)).
method_invoc(type_utils_1_expr57, m_is_assignable_245, line(type_utils_1, 380)).
argument(type_utils_1_expr58, 1, type_utils_1_expr57).
argument(p_to_class_513, 2, type_utils_1_expr57).
method_invoc(type_utils_1_expr58, m_get_raw_type_248, line(type_utils_1, 380)).
argument(type_utils_1_expr59, 1, type_utils_1_expr58).
assign(type_utils_1_expr59, p_type_512, line(type_utils_1, 380)).
param(p_type_514, 1, m_is_assignable_246).
param(p_to_parameterized_type_515, 2, m_is_assignable_246).
param(p_type_var_assigns_516, 3, m_is_assignable_246).
method_invoc(type_utils_1_expr62, m_equals_7, line(type_utils_1, 436)).
argument(p_type_514, 1, type_utils_1_expr62).
ref(p_to_parameterized_type_515, type_utils_1_expr62, line(type_utils_1, 436)).
assign(v_to_class_517, type_utils_1_expr63, line(type_utils_1, 441)).
method_invoc(type_utils_1_expr63, m_get_raw_type_248, line(type_utils_1, 441)).
argument(p_to_parameterized_type_515, 1, type_utils_1_expr63).
assign(v_from_type_var_assigns_518, type_utils_1_expr64, line(type_utils_1, 444)).
method_invoc(type_utils_1_expr64, m_get_type_arguments_249, line(type_utils_1, 444)).
argument(p_type_514, 1, type_utils_1_expr64).
argument(v_to_class_517, 2, type_utils_1_expr64).
argument(type_utils_1_literal10, 3, type_utils_1_expr64).
method_invoc(type_utils_1_expr66, m_is_empty_250, line(type_utils_1, 454)).
ref(v_from_type_var_assigns_518, type_utils_1_expr66, line(type_utils_1, 454)).
assign(v_to_type_var_assigns_519, type_utils_1_expr67, line(type_utils_1, 459)).
method_invoc(type_utils_1_expr67, m_get_type_arguments_251, line(type_utils_1, 459)).
argument(p_to_parameterized_type_515, 1, type_utils_1_expr67).
argument(v_to_class_517, 2, type_utils_1_expr67).
argument(p_type_var_assigns_516, 3, type_utils_1_expr67).
ref(type_utils_1_expr68, type_utils_1_stmt36, line(type_utils_1, 463)).
method_invoc(type_utils_1_expr68, m_key_set_252, line(type_utils_1, 463)).
ref(v_to_type_var_assigns_519, type_utils_1_expr68, line(type_utils_1, 463)).
assign(v_to_type_arg_521, type_utils_1_expr69, line(type_utils_1, 464)).
method_invoc(type_utils_1_expr69, m_unroll_variable_assignments_253, line(type_utils_1, 464)).
argument(v_var_520, 1, type_utils_1_expr69).
argument(v_to_type_var_assigns_519, 2, type_utils_1_expr69).
assign(v_from_type_arg_522, type_utils_1_expr70, line(type_utils_1, 465)).
method_invoc(type_utils_1_expr70, m_unroll_variable_assignments_253, line(type_utils_1, 465)).
argument(v_var_520, 1, type_utils_1_expr70).
argument(v_from_type_var_assigns_518, 2, type_utils_1_expr70).
method_invoc(type_utils_1_expr75, m_equals_7, line(type_utils_1, 471)).
argument(v_from_type_arg_522, 1, type_utils_1_expr75).
ref(v_to_type_arg_521, type_utils_1_expr75, line(type_utils_1, 471)).
param(p_var_523, 1, m_unroll_variable_assignments_253).
param(p_type_var_assigns_524, 2, m_unroll_variable_assignments_253).
assign(v_result_525, type_utils_1_expr77, line(type_utils_1, 491)).
method_invoc(type_utils_1_expr77, m_get_254, line(type_utils_1, 491)).
argument(p_var_523, 1, type_utils_1_expr77).
ref(p_type_var_assigns_524, type_utils_1_expr77, line(type_utils_1, 491)).
method_invoc(type_utils_1_expr81, m_equals_7, line(type_utils_1, 492)).
argument(p_var_523, 1, type_utils_1_expr81).
ref(v_result_525, type_utils_1_expr81, line(type_utils_1, 492)).
assign(p_var_523, type_utils_1_expr83, line(type_utils_1, 493)).
assign(type_utils_1_expr83, v_result_525, line(type_utils_1, 493)).
return(v_result_525, m_unroll_variable_assignments_253, line(type_utils_1, 498)).
param(p_type_526, 1, m_is_assignable_255).
param(p_to_generic_array_type_527, 2, m_is_assignable_255).
param(p_type_var_assigns_528, 3, m_is_assignable_255).
param(p_type_529, 1, m_is_assignable_247).
param(p_to_wildcard_type_530, 2, m_is_assignable_247).
param(p_type_var_assigns_531, 3, m_is_assignable_247).
method_invoc(type_utils_1_expr86, m_equals_7, line(type_utils_1, 600)).
argument(p_type_529, 1, type_utils_1_expr86).
ref(p_to_wildcard_type_530, type_utils_1_expr86, line(type_utils_1, 600)).
assign(v_to_upper_bounds_532, type_utils_1_expr87, line(type_utils_1, 604)).
method_invoc(type_utils_1_expr87, m_get_implicit_upper_bounds_256, line(type_utils_1, 604)).
argument(p_to_wildcard_type_530, 1, type_utils_1_expr87).
assign(v_to_lower_bounds_533, type_utils_1_expr88, line(type_utils_1, 605)).
method_invoc(type_utils_1_expr88, m_get_implicit_lower_bounds_257, line(type_utils_1, 605)).
argument(p_to_wildcard_type_530, 1, type_utils_1_expr88).
ref(v_to_upper_bounds_532, type_utils_1_stmt52, line(type_utils_1, 644)).
method_invoc(type_utils_1_expr91, m_is_assignable_244, line(type_utils_1, 647)).
argument(p_type_529, 1, type_utils_1_expr91).
argument(type_utils_1_expr92, 2, type_utils_1_expr91).
argument(p_type_var_assigns_531, 3, type_utils_1_expr91).
method_invoc(type_utils_1_expr92, m_substitute_type_variables_258, line(type_utils_1, 647)).
argument(v_to_bound_534, 1, type_utils_1_expr92).
argument(p_type_var_assigns_531, 2, type_utils_1_expr92).
ref(v_to_lower_bounds_533, type_utils_1_stmt54, line(type_utils_1, 653)).
method_invoc(type_utils_1_expr94, m_is_assignable_244, line(type_utils_1, 656)).
argument(type_utils_1_expr95, 1, type_utils_1_expr94).
argument(p_type_529, 2, type_utils_1_expr94).
argument(p_type_var_assigns_531, 3, type_utils_1_expr94).
method_invoc(type_utils_1_expr95, m_substitute_type_variables_258, line(type_utils_1, 656)).
argument(v_to_bound_535, 1, type_utils_1_expr95).
argument(p_type_var_assigns_531, 2, type_utils_1_expr95).
param(p_type_536, 1, m_is_assignable_259).
param(p_to_type_variable_537, 2, m_is_assignable_259).
param(p_type_var_assigns_538, 3, m_is_assignable_259).
param(p_type_539, 1, m_substitute_type_variables_258).
param(p_type_var_assigns_540, 2, m_substitute_type_variables_258).
return(p_type_539, m_substitute_type_variables_258, line(type_utils_1, 730)).
param(p_type_541, 1, m_get_type_arguments_260).
param(p_type_542, 1, m_get_type_arguments_261).
param(p_to_class_543, 2, m_get_type_arguments_261).
param(p_type_544, 1, m_get_type_arguments_249).
param(p_to_class_545, 2, m_get_type_arguments_249).
param(p_subtype_var_assigns_546, 3, m_get_type_arguments_249).
return(type_utils_1_expr100, m_get_type_arguments_249, line(type_utils_1, 797)).
method_invoc(type_utils_1_expr100, m_get_type_arguments_262, line(type_utils_1, 797)).
argument(type_utils_1_expr101, 1, type_utils_1_expr100).
argument(p_to_class_545, 2, type_utils_1_expr100).
argument(p_subtype_var_assigns_546, 3, type_utils_1_expr100).
assign(type_utils_1_expr101, p_type_544, line(type_utils_1, 797)).
return(type_utils_1_expr103, m_get_type_arguments_249, line(type_utils_1, 801)).
method_invoc(type_utils_1_expr103, m_get_type_arguments_251, line(type_utils_1, 801)).
argument(type_utils_1_expr104, 1, type_utils_1_expr103).
argument(p_to_class_545, 2, type_utils_1_expr103).
argument(p_subtype_var_assigns_546, 3, type_utils_1_expr103).
assign(type_utils_1_expr104, p_type_544, line(type_utils_1, 801)).
param(p_parameterized_type_547, 1, m_get_type_arguments_251).
param(p_to_class_548, 2, m_get_type_arguments_251).
param(p_subtype_var_assigns_549, 3, m_get_type_arguments_251).
assign(v_cls_550, type_utils_1_expr105, line(type_utils_1, 846)).
method_invoc(type_utils_1_expr105, m_get_raw_type_248, line(type_utils_1, 846)).
argument(p_parameterized_type_547, 1, type_utils_1_expr105).
method_invoc(type_utils_1_expr107, m_is_assignable_245, line(type_utils_1, 849)).
argument(v_cls_550, 1, type_utils_1_expr107).
argument(p_to_class_548, 2, type_utils_1_expr107).
assign(v_owner_type_551, type_utils_1_expr108, line(type_utils_1, 853)).
method_invoc(type_utils_1_expr108, m_get_owner_type_263, line(type_utils_1, 853)).
ref(p_parameterized_type_547, type_utils_1_expr108, line(type_utils_1, 853)).
assign(v_type_var_assigns_552, type_utils_1_expr111, line(type_utils_1, 863)).
cond_expr(type_utils_1_expr112, type_utils_1_expr113, type_utils_1_expr114, line(type_utils_1, 863)).
method_invoc(type_utils_1_expr113, m_hash_map_2, line(type_utils_1, 863)).
method_invoc(type_utils_1_expr114, m_hash_map_264, line(type_utils_1, 864)).
argument(p_subtype_var_assigns_549, 1, type_utils_1_expr114).
assign(v_type_args_553, type_utils_1_expr115, line(type_utils_1, 868)).
method_invoc(type_utils_1_expr115, m_get_actual_type_arguments_265, line(type_utils_1, 868)).
ref(p_parameterized_type_547, type_utils_1_expr115, line(type_utils_1, 868)).
assign(v_type_params_554, type_utils_1_expr116, line(type_utils_1, 870)).
method_invoc(type_utils_1_expr116, m_get_type_parameters_266, line(type_utils_1, 870)).
ref(v_cls_550, type_utils_1_expr116, line(type_utils_1, 870)).
assign(v_i_555, type_utils_1_literal17, line(type_utils_1, 873)).
ref(v_type_params_554, q_length_13, line(type_utils_1, 873)).
assign(v_type_arg_556, type_utils_1_expr120, line(type_utils_1, 874)).
ref(v_type_args_553, type_utils_1_expr120, line(type_utils_1, 874)).
method_invoc(type_utils_1_expr121, m_put_3, line(type_utils_1, 875)).
argument(type_utils_1_expr122, 1, type_utils_1_expr121).
argument(type_utils_1_expr123, 2, type_utils_1_expr121).
ref(v_type_var_assigns_552, type_utils_1_expr121, line(type_utils_1, 875)).
ref(v_type_params_554, type_utils_1_expr122, line(type_utils_1, 875)).
cond_expr(type_utils_1_expr124, type_utils_1_expr125, v_type_arg_556, line(type_utils_1, 875)).
method_invoc(type_utils_1_expr124, m_contains_key_267, line(type_utils_1, 875)).
argument(v_type_arg_556, 1, type_utils_1_expr124).
ref(v_type_var_assigns_552, type_utils_1_expr124, line(type_utils_1, 875)).
method_invoc(type_utils_1_expr125, m_get_254, line(type_utils_1, 875)).
argument(v_type_arg_556, 1, type_utils_1_expr125).
ref(v_type_var_assigns_552, type_utils_1_expr125, line(type_utils_1, 875)).
method_invoc(type_utils_1_expr126, m_equals_7, line(type_utils_1, 879)).
argument(v_cls_550, 1, type_utils_1_expr126).
ref(p_to_class_548, type_utils_1_expr126, line(type_utils_1, 879)).
return(v_type_var_assigns_552, m_get_type_arguments_251, line(type_utils_1, 881)).
return(type_utils_1_expr127, m_get_type_arguments_251, line(type_utils_1, 885)).
method_invoc(type_utils_1_expr127, m_get_type_arguments_249, line(type_utils_1, 885)).
argument(type_utils_1_expr128, 1, type_utils_1_expr127).
argument(p_to_class_548, 2, type_utils_1_expr127).
argument(v_type_var_assigns_552, 3, type_utils_1_expr127).
method_invoc(type_utils_1_expr128, m_get_closest_parent_type_268, line(type_utils_1, 885)).
argument(v_cls_550, 1, type_utils_1_expr128).
argument(p_to_class_548, 2, type_utils_1_expr128).
param(p_cls_557, 1, m_get_type_arguments_262).
param(p_to_class_558, 2, m_get_type_arguments_262).
param(p_subtype_var_assigns_559, 3, m_get_type_arguments_262).
method_invoc(type_utils_1_expr130, m_is_assignable_245, line(type_utils_1, 899)).
argument(p_cls_557, 1, type_utils_1_expr130).
argument(p_to_class_558, 2, type_utils_1_expr130).
method_invoc(type_utils_1_expr131, m_is_primitive_32, line(type_utils_1, 904)).
ref(p_cls_557, type_utils_1_expr131, line(type_utils_1, 904)).
assign(v_type_var_assigns_560, type_utils_1_expr132, line(type_utils_1, 917)).
cond_expr(type_utils_1_expr133, type_utils_1_expr134, type_utils_1_expr135, line(type_utils_1, 917)).
method_invoc(type_utils_1_expr134, m_hash_map_2, line(type_utils_1, 917)).
method_invoc(type_utils_1_expr135, m_hash_map_264, line(type_utils_1, 918)).
argument(p_subtype_var_assigns_559, 1, type_utils_1_expr135).
method_invoc(type_utils_1_expr136, m_equals_7, line(type_utils_1, 921)).
argument(p_cls_557, 1, type_utils_1_expr136).
ref(p_to_class_558, type_utils_1_expr136, line(type_utils_1, 921)).
return(type_utils_1_expr137, m_get_type_arguments_262, line(type_utils_1, 926)).
method_invoc(type_utils_1_expr137, m_get_type_arguments_249, line(type_utils_1, 926)).
argument(type_utils_1_expr138, 1, type_utils_1_expr137).
argument(p_to_class_558, 2, type_utils_1_expr137).
argument(v_type_var_assigns_560, 3, type_utils_1_expr137).
method_invoc(type_utils_1_expr138, m_get_closest_parent_type_268, line(type_utils_1, 926)).
argument(p_cls_557, 1, type_utils_1_expr138).
argument(p_to_class_558, 2, type_utils_1_expr138).
param(p_cls_561, 1, m_determine_type_arguments_269).
param(p_super_type_562, 2, m_determine_type_arguments_269).
param(p_cls_563, 1, m_map_type_variables_to_arguments_270).
param(p_parameterized_type_564, 2, m_map_type_variables_to_arguments_270).
param(p_type_var_assigns_565, 3, m_map_type_variables_to_arguments_270).
param(p_cls_566, 1, m_get_closest_parent_type_268).
param(p_super_class_567, 2, m_get_closest_parent_type_268).
method_invoc(type_utils_1_expr139, m_is_interface_271, line(type_utils_1, 1048)).
ref(p_super_class_567, type_utils_1_expr139, line(type_utils_1, 1048)).
assign(v_interface_types_568, type_utils_1_expr140, line(type_utils_1, 1050)).
method_invoc(type_utils_1_expr140, m_get_generic_interfaces_272, line(type_utils_1, 1050)).
ref(p_cls_566, type_utils_1_expr140, line(type_utils_1, 1050)).
assign(v_generic_interface_569, type_utils_1_literal19, line(type_utils_1, 1052)).
ref(v_interface_types_568, type_utils_1_stmt83, line(type_utils_1, 1055)).
assign(v_mid_class_571, type_utils_1_literal20, line(type_utils_1, 1056)).
assign(v_mid_class_571, type_utils_1_expr143, line(type_utils_1, 1059)).
method_invoc(type_utils_1_expr143, m_get_raw_type_248, line(type_utils_1, 1059)).
argument(type_utils_1_expr144, 1, type_utils_1_expr143).
assign(type_utils_1_expr144, v_mid_type_570, line(type_utils_1, 1059)).
assign(v_mid_class_571, type_utils_1_expr147, line(type_utils_1, 1061)).
assign(type_utils_1_expr147, v_mid_type_570, line(type_utils_1, 1061)).
method_invoc(type_utils_1_expr149, m_is_assignable_245, line(type_utils_1, 1069)).
argument(v_mid_class_571, 1, type_utils_1_expr149).
argument(p_super_class_567, 2, type_utils_1_expr149).
method_invoc(type_utils_1_expr150, m_is_assignable_243, line(type_utils_1, 1070)).
argument(v_generic_interface_569, 1, type_utils_1_expr150).
argument(type_utils_1_expr151, 2, type_utils_1_expr150).
assign(type_utils_1_expr151, v_mid_class_571, line(type_utils_1, 1070)).
assign(v_generic_interface_569, v_mid_type_570, line(type_utils_1, 1071)).
return(v_generic_interface_569, m_get_closest_parent_type_268, line(type_utils_1, 1077)).
return(type_utils_1_expr154, m_get_closest_parent_type_268, line(type_utils_1, 1083)).
method_invoc(type_utils_1_expr154, m_get_generic_superclass_273, line(type_utils_1, 1083)).
ref(p_cls_566, type_utils_1_expr154, line(type_utils_1, 1083)).
param(p_value_572, 1, m_is_instance_274).
param(p_type_573, 2, m_is_instance_274).
param(p_bounds_574, 1, m_normalize_upper_bounds_275).
param(p_type_variable_575, 1, m_get_implicit_bounds_276).
param(p_wildcard_type_576, 1, m_get_implicit_upper_bounds_256).
method_invoc(type_utils_1_expr155, m_not_null_142, line(type_utils_1, 1178)).
argument(p_wildcard_type_576, 1, type_utils_1_expr155).
argument(type_utils_1_literal22, 2, type_utils_1_expr155).
ref(t_validate_19, type_utils_1_expr155, line(type_utils_1, 1178)).
assign(v_bounds_577, type_utils_1_expr156, line(type_utils_1, 1179)).
method_invoc(type_utils_1_expr156, m_get_upper_bounds_277, line(type_utils_1, 1179)).
ref(p_wildcard_type_576, type_utils_1_expr156, line(type_utils_1, 1179)).
return(type_utils_1_expr157, m_get_implicit_upper_bounds_256, line(type_utils_1, 1181)).
cond_expr(type_utils_1_expr158, type_utils_1_expr159, type_utils_1_expr160, line(type_utils_1, 1181)).
ref(v_bounds_577, q_length_14, line(type_utils_1, 1181)).
method_invoc(type_utils_1_expr160, m_normalize_upper_bounds_275, line(type_utils_1, 1181)).
argument(v_bounds_577, 1, type_utils_1_expr160).
param(p_wildcard_type_578, 1, m_get_implicit_lower_bounds_257).
method_invoc(type_utils_1_expr163, m_not_null_142, line(type_utils_1, 1194)).
argument(p_wildcard_type_578, 1, type_utils_1_expr163).
argument(type_utils_1_literal24, 2, type_utils_1_expr163).
ref(t_validate_19, type_utils_1_expr163, line(type_utils_1, 1194)).
assign(v_bounds_579, type_utils_1_expr164, line(type_utils_1, 1195)).
method_invoc(type_utils_1_expr164, m_get_lower_bounds_278, line(type_utils_1, 1195)).
ref(p_wildcard_type_578, type_utils_1_expr164, line(type_utils_1, 1195)).
return(type_utils_1_expr165, m_get_implicit_lower_bounds_257, line(type_utils_1, 1197)).
cond_expr(type_utils_1_expr166, type_utils_1_expr167, v_bounds_579, line(type_utils_1, 1197)).
ref(v_bounds_579, q_length_15, line(type_utils_1, 1197)).
param(p_type_var_assigns_580, 1, m_types_satisfy_variables_279).
param(p_parameterized_type_581, 1, m_get_raw_type_248).
assign(v_raw_type_582, type_utils_1_expr169, line(type_utils_1, 1239)).
method_invoc(type_utils_1_expr169, m_get_raw_type_280, line(type_utils_1, 1239)).
ref(p_parameterized_type_581, type_utils_1_expr169, line(type_utils_1, 1239)).
assign(type_utils_1_expr171, type_utils_1_expr172, line(type_utils_1, 1246)).
return(type_utils_1_expr173, m_get_raw_type_248, line(type_utils_1, 1250)).
assign(type_utils_1_expr173, v_raw_type_582, line(type_utils_1, 1250)).
param(p_type_583, 1, m_get_raw_type_281).
param(p_assigning_type_584, 2, m_get_raw_type_281).
param(p_type_585, 1, m_is_array_type_282).
param(p_type_586, 1, m_get_array_component_type_283).
param(p_type_arguments_587, 1, m_unroll_variables_284).
param(p_type_588, 2, m_unroll_variables_284).
param(p_type_arguments_589, 1, m_unroll_bounds_285).
param(p_bounds_590, 2, m_unroll_bounds_285).
param(p_type_591, 1, m_contains_type_variables_286).
param(p_raw_592, 1, m_parameterize_287).
param(p_type_arguments_593, 2, m_parameterize_287).
param(p_raw_594, 1, m_parameterize_288).
param(p_type_arg_mappings_595, 2, m_parameterize_288).
param(p_owner_596, 1, m_parameterize_with_owner_289).
param(p_raw_597, 2, m_parameterize_with_owner_289).
param(p_type_arguments_598, 3, m_parameterize_with_owner_289).
param(p_owner_599, 1, m_parameterize_with_owner_290).
param(p_raw_600, 2, m_parameterize_with_owner_290).
param(p_type_arg_mappings_601, 3, m_parameterize_with_owner_290).
param(p_mappings_602, 1, m_extract_type_arguments_from_291).
param(p_variables_603, 2, m_extract_type_arguments_from_291).
return(type_utils_1_expr174, m_wildcard_type_241, line(type_utils_1, 1546)).
method_invoc(type_utils_1_expr174, m_wildcard_type_builder_217, line(type_utils_1, 1546)).
param(p_component_type_604, 1, m_generic_array_type_292).
param(p_t_1_605, 1, m_equals_293).
param(p_t_2_606, 2, m_equals_293).
param(p_p_607, 1, m_equals_294).
param(p_t_608, 2, m_equals_294).
param(p_a_609, 1, m_equals_295).
param(p_t_610, 2, m_equals_295).
param(p_w_611, 1, m_equals_239).
param(p_t_612, 2, m_equals_239).
param(p_t_1_613, 1, m_equals_296).
param(p_t_2_614, 2, m_equals_296).
param(p_type_615, 1, m_to_string_297).
param(p_var_616, 1, m_to_long_string_298).
param(p_type_617, 1, m_wrap_299).
param(p_type_618, 1, m_wrap_301).
param(p_c_619, 1, m_class_to_string_302).
param(p_v_620, 1, m_type_variable_to_string_303).
param(p_p_621, 1, m_parameterized_type_to_string_304).
param(p_w_622, 1, m_wildcard_type_to_string_305).
param(p_g_623, 1, m_generic_array_type_to_string_306).
param(p_buf_624, 1, m_append_all_to_307).
param(p_sep_625, 2, m_append_all_to_307).
param(p_types_626, 3, m_append_all_to_307).

%type_utils_test_1 - org.apache.commons.lang3.reflect.TypeUtilsTest
param(p_list_0_627, 1, m_dummy_method_308).
param(p_list_1_628, 2, m_dummy_method_308).
param(p_list_2_629, 3, m_dummy_method_308).
param(p_list_3_630, 4, m_dummy_method_308).
param(p_list_4_631, 5, m_dummy_method_308).
param(p_list_5_632, 6, m_dummy_method_308).
param(p_list_6_633, 7, m_dummy_method_308).
param(p_list_7_634, 8, m_dummy_method_308).
param(p_list_8_635, 9, m_dummy_method_308).
param(p_list_9_636, 10, m_dummy_method_308).
param(p_list_10_637, 11, m_dummy_method_308).
param(p_list_11_638, 12, m_dummy_method_308).
param(p_list_12_639, 13, m_dummy_method_308).
param(p_list_13_640, 14, m_dummy_method_308).
throw(m_test_is_assignable_309, security_exception).
throw(m_test_is_assignable_309, no_such_method_exception).
throw(m_test_is_assignable_309, no_such_field_exception).
param(p_types_641, 1, m_delegate_boolean_assertion_310).
param(p_i_2_642, 2, m_delegate_boolean_assertion_310).
param(p_i_1_643, 3, m_delegate_boolean_assertion_310).
param(p_expected_644, 4, m_delegate_boolean_assertion_310).
throw(m_test_is_instance_311, security_exception).
throw(m_test_is_instance_311, no_such_field_exception).
throw(m_test_types_satisfy_variables_313, security_exception).
throw(m_test_types_satisfy_variables_313, no_such_field_exception).
throw(m_test_types_satisfy_variables_313, no_such_method_exception).
throw(m_test_determine_type_variable_assignments_314, security_exception).
throw(m_test_determine_type_variable_assignments_314, no_such_field_exception).
throw(m_test_determine_type_variable_assignments_314, no_such_method_exception).
throw(m_test_get_raw_type_315, security_exception).
throw(m_test_get_raw_type_315, no_such_field_exception).
throw(m_test_is_array_generic_types_317, exception).
throw(m_test_get_primitive_array_component_type_318, exception).
throw(m_test_get_array_component_type_319, exception).
throw(m_test_lang820_320, exception).
throw(m_test_parameterize_321, exception).
throw(m_test_parameterize_with_owner_322, exception).
throw(m_test_wildcard_type_323, exception).
throw(m_test_lang1114_326, exception).
throw(m_test_generic_array_type_327, exception).
throw(m_test_lang1190_331, exception).
assign(v_from_type_645, type_utils_test_1_expr1, line(type_utils_test_1, 769)).
method_invoc(type_utils_test_1_expr1, m_get_generic_return_type_332, line(type_utils_test_1, 769)).
ref(type_utils_test_1_expr2, type_utils_test_1_expr1, line(type_utils_test_1, 769)).
method_invoc(type_utils_test_1_expr2, m_get_declared_method_333, line(type_utils_test_1, 769)).
throw(type_utils_test_1_expr2, no_such_method_exception, line(type_utils_test_1, 769)).
throw(type_utils_test_1_expr2, security_exception, line(type_utils_test_1, 769)).
argument(type_utils_test_1_literal1, 1, type_utils_test_1_expr2).
ref(type_utils_test_1_expr3, type_utils_test_1_expr2, line(type_utils_test_1, 769)).
assign(v_failing_to_type_646, type_utils_test_1_expr4, line(type_utils_test_1, 770)).
method_invoc(type_utils_test_1_expr4, m_build_220, line(type_utils_test_1, 770)).
ref(type_utils_test_1_expr5, type_utils_test_1_expr4, line(type_utils_test_1, 770)).
method_invoc(type_utils_test_1_expr5, m_with_lower_bounds_219, line(type_utils_test_1, 770)).
argument(type_utils_test_1_expr6, 1, type_utils_test_1_expr5).
ref(type_utils_test_1_expr7, type_utils_test_1_expr5, line(type_utils_test_1, 770)).
method_invoc(type_utils_test_1_expr7, m_wildcard_type_241, line(type_utils_test_1, 770)).
ref(t_type_utils_17, type_utils_test_1_expr7, line(type_utils_test_1, 770)).
method_invoc(type_utils_test_1_expr8, m_assert_true_334, line(type_utils_test_1, 772)).
argument(type_utils_test_1_expr9, 1, type_utils_test_1_expr8).
ref(t_assert_22, type_utils_test_1_expr8, line(type_utils_test_1, 772)).
method_invoc(type_utils_test_1_expr9, m_is_assignable_243, line(type_utils_test_1, 772)).
argument(v_from_type_645, 1, type_utils_test_1_expr9).
argument(v_failing_to_type_646, 2, type_utils_test_1_expr9).
ref(t_type_utils_17, type_utils_test_1_expr9, line(type_utils_test_1, 772)).
param(p_enclosing_instance_647, 1, m_aclass_338).

%system_utils_1 - org.apache.commons.lang3.SystemUtils
assign(f_awt_toolkit_152, system_utils_1_expr1, line(system_utils_1, 88)).
method_invoc(system_utils_1_expr1, m_get_system_property_120, line(system_utils_1, 88)).
argument(system_utils_1_literal1, 1, system_utils_1_expr1).
assign(f_file_encoding_153, system_utils_1_expr2, line(system_utils_1, 110)).
method_invoc(system_utils_1_expr2, m_get_system_property_120, line(system_utils_1, 110)).
argument(system_utils_1_literal2, 1, system_utils_1_expr2).
assign(f_file_separator_154, system_utils_1_expr3, line(system_utils_1, 137)).
method_invoc(system_utils_1_expr3, m_get_system_property_120, line(system_utils_1, 137)).
argument(system_utils_1_literal3, 1, system_utils_1_expr3).
assign(f_java_awt_fonts_155, system_utils_1_expr4, line(system_utils_1, 155)).
method_invoc(system_utils_1_expr4, m_get_system_property_120, line(system_utils_1, 155)).
argument(system_utils_1_literal4, 1, system_utils_1_expr4).
assign(f_java_awt_graphicsenv_156, system_utils_1_expr5, line(system_utils_1, 173)).
method_invoc(system_utils_1_expr5, m_get_system_property_120, line(system_utils_1, 173)).
argument(system_utils_1_literal5, 1, system_utils_1_expr5).
assign(f_java_awt_headless_157, system_utils_1_expr6, line(system_utils_1, 194)).
method_invoc(system_utils_1_expr6, m_get_system_property_120, line(system_utils_1, 194)).
argument(system_utils_1_literal6, 1, system_utils_1_expr6).
assign(f_java_awt_printerjob_158, system_utils_1_expr7, line(system_utils_1, 212)).
method_invoc(system_utils_1_expr7, m_get_system_property_120, line(system_utils_1, 212)).
argument(system_utils_1_literal7, 1, system_utils_1_expr7).
assign(f_java_class_path_159, system_utils_1_expr8, line(system_utils_1, 230)).
method_invoc(system_utils_1_expr8, m_get_system_property_120, line(system_utils_1, 230)).
argument(system_utils_1_literal8, 1, system_utils_1_expr8).
assign(f_java_class_version_160, system_utils_1_expr9, line(system_utils_1, 248)).
method_invoc(system_utils_1_expr9, m_get_system_property_120, line(system_utils_1, 248)).
argument(system_utils_1_literal9, 1, system_utils_1_expr9).
assign(f_java_compiler_161, system_utils_1_expr10, line(system_utils_1, 267)).
method_invoc(system_utils_1_expr10, m_get_system_property_120, line(system_utils_1, 267)).
argument(system_utils_1_literal10, 1, system_utils_1_expr10).
assign(f_java_endorsed_dirs_162, system_utils_1_expr11, line(system_utils_1, 285)).
method_invoc(system_utils_1_expr11, m_get_system_property_120, line(system_utils_1, 285)).
argument(system_utils_1_literal11, 1, system_utils_1_expr11).
assign(f_java_ext_dirs_163, system_utils_1_expr12, line(system_utils_1, 303)).
method_invoc(system_utils_1_expr12, m_get_system_property_120, line(system_utils_1, 303)).
argument(system_utils_1_literal12, 1, system_utils_1_expr12).
assign(f_java_home_164, system_utils_1_expr13, line(system_utils_1, 321)).
method_invoc(system_utils_1_expr13, m_get_system_property_120, line(system_utils_1, 321)).
argument(f_java_home_key_165, 1, system_utils_1_expr13).
assign(f_java_io_tmpdir_166, system_utils_1_expr14, line(system_utils_1, 339)).
method_invoc(system_utils_1_expr14, m_get_system_property_120, line(system_utils_1, 339)).
argument(f_java_io_tmpdir_key_167, 1, system_utils_1_expr14).
assign(f_java_library_path_168, system_utils_1_expr15, line(system_utils_1, 357)).
method_invoc(system_utils_1_expr15, m_get_system_property_120, line(system_utils_1, 357)).
argument(system_utils_1_literal13, 1, system_utils_1_expr15).
assign(f_java_runtime_name_169, system_utils_1_expr16, line(system_utils_1, 376)).
method_invoc(system_utils_1_expr16, m_get_system_property_120, line(system_utils_1, 376)).
argument(system_utils_1_literal14, 1, system_utils_1_expr16).
assign(f_java_runtime_version_170, system_utils_1_expr17, line(system_utils_1, 395)).
method_invoc(system_utils_1_expr17, m_get_system_property_120, line(system_utils_1, 395)).
argument(system_utils_1_literal15, 1, system_utils_1_expr17).
assign(f_java_specification_name_171, system_utils_1_expr18, line(system_utils_1, 413)).
method_invoc(system_utils_1_expr18, m_get_system_property_120, line(system_utils_1, 413)).
argument(system_utils_1_literal16, 1, system_utils_1_expr18).
assign(f_java_specification_vendor_172, system_utils_1_expr19, line(system_utils_1, 431)).
method_invoc(system_utils_1_expr19, m_get_system_property_120, line(system_utils_1, 431)).
argument(system_utils_1_literal17, 1, system_utils_1_expr19).
assign(f_java_specification_version_173, system_utils_1_expr20, line(system_utils_1, 449)).
method_invoc(system_utils_1_expr20, m_get_system_property_120, line(system_utils_1, 449)).
argument(system_utils_1_literal18, 1, system_utils_1_expr20).
assign(f_java_specification_version_as_enum_174, system_utils_1_expr21, line(system_utils_1, 450)).
method_invoc(system_utils_1_expr21, m_get_69, line(system_utils_1, 450)).
argument(f_java_specification_version_173, 1, system_utils_1_expr21).
ref(t_java_version_13, system_utils_1_expr21, line(system_utils_1, 450)).
assign(f_java_util_prefs_preferences_factory_175, system_utils_1_expr22, line(system_utils_1, 469)).
method_invoc(system_utils_1_expr22, m_get_system_property_120, line(system_utils_1, 470)).
argument(system_utils_1_literal19, 1, system_utils_1_expr22).
assign(f_java_vendor_176, system_utils_1_expr23, line(system_utils_1, 488)).
method_invoc(system_utils_1_expr23, m_get_system_property_120, line(system_utils_1, 488)).
argument(system_utils_1_literal20, 1, system_utils_1_expr23).
assign(f_java_vendor_url_177, system_utils_1_expr24, line(system_utils_1, 506)).
method_invoc(system_utils_1_expr24, m_get_system_property_120, line(system_utils_1, 506)).
argument(system_utils_1_literal21, 1, system_utils_1_expr24).
assign(f_java_version_178, system_utils_1_expr25, line(system_utils_1, 524)).
method_invoc(system_utils_1_expr25, m_get_system_property_120, line(system_utils_1, 524)).
argument(system_utils_1_literal22, 1, system_utils_1_expr25).
assign(f_java_vm_info_179, system_utils_1_expr26, line(system_utils_1, 543)).
method_invoc(system_utils_1_expr26, m_get_system_property_120, line(system_utils_1, 543)).
argument(system_utils_1_literal23, 1, system_utils_1_expr26).
assign(f_java_vm_name_180, system_utils_1_expr27, line(system_utils_1, 561)).
method_invoc(system_utils_1_expr27, m_get_system_property_120, line(system_utils_1, 561)).
argument(system_utils_1_literal24, 1, system_utils_1_expr27).
assign(f_java_vm_specification_name_181, system_utils_1_expr28, line(system_utils_1, 579)).
method_invoc(system_utils_1_expr28, m_get_system_property_120, line(system_utils_1, 579)).
argument(system_utils_1_literal25, 1, system_utils_1_expr28).
assign(f_java_vm_specification_vendor_182, system_utils_1_expr29, line(system_utils_1, 597)).
method_invoc(system_utils_1_expr29, m_get_system_property_120, line(system_utils_1, 597)).
argument(system_utils_1_literal26, 1, system_utils_1_expr29).
assign(f_java_vm_specification_version_183, system_utils_1_expr30, line(system_utils_1, 615)).
method_invoc(system_utils_1_expr30, m_get_system_property_120, line(system_utils_1, 615)).
argument(system_utils_1_literal27, 1, system_utils_1_expr30).
assign(f_java_vm_vendor_184, system_utils_1_expr31, line(system_utils_1, 633)).
method_invoc(system_utils_1_expr31, m_get_system_property_120, line(system_utils_1, 633)).
argument(system_utils_1_literal28, 1, system_utils_1_expr31).
assign(f_java_vm_version_185, system_utils_1_expr32, line(system_utils_1, 651)).
method_invoc(system_utils_1_expr32, m_get_system_property_120, line(system_utils_1, 651)).
argument(system_utils_1_literal29, 1, system_utils_1_expr32).
assign(f_line_separator_186, system_utils_1_expr33, line(system_utils_1, 669)).
method_invoc(system_utils_1_expr33, m_get_system_property_120, line(system_utils_1, 669)).
argument(system_utils_1_literal30, 1, system_utils_1_expr33).
assign(f_os_arch_187, system_utils_1_expr34, line(system_utils_1, 687)).
method_invoc(system_utils_1_expr34, m_get_system_property_120, line(system_utils_1, 687)).
argument(system_utils_1_literal31, 1, system_utils_1_expr34).
assign(f_os_name_188, system_utils_1_expr35, line(system_utils_1, 705)).
method_invoc(system_utils_1_expr35, m_get_system_property_120, line(system_utils_1, 705)).
argument(system_utils_1_literal32, 1, system_utils_1_expr35).
assign(f_os_version_189, system_utils_1_expr36, line(system_utils_1, 723)).
method_invoc(system_utils_1_expr36, m_get_system_property_120, line(system_utils_1, 723)).
argument(system_utils_1_literal33, 1, system_utils_1_expr36).
assign(f_path_separator_190, system_utils_1_expr37, line(system_utils_1, 744)).
method_invoc(system_utils_1_expr37, m_get_system_property_120, line(system_utils_1, 744)).
argument(system_utils_1_literal34, 1, system_utils_1_expr37).
assign(f_user_country_191, system_utils_1_expr38, line(system_utils_1, 764)).
cond_expr(system_utils_1_expr39, system_utils_1_expr40, system_utils_1_expr41, line(system_utils_1, 764)).
method_invoc(system_utils_1_expr42, m_get_system_property_120, line(system_utils_1, 764)).
argument(system_utils_1_literal35, 1, system_utils_1_expr42).
method_invoc(system_utils_1_expr40, m_get_system_property_120, line(system_utils_1, 765)).
argument(system_utils_1_literal37, 1, system_utils_1_expr40).
method_invoc(system_utils_1_expr41, m_get_system_property_120, line(system_utils_1, 765)).
argument(system_utils_1_literal38, 1, system_utils_1_expr41).
assign(f_user_dir_192, system_utils_1_expr43, line(system_utils_1, 783)).
method_invoc(system_utils_1_expr43, m_get_system_property_120, line(system_utils_1, 783)).
argument(f_user_dir_key_193, 1, system_utils_1_expr43).
assign(f_user_home_194, system_utils_1_expr44, line(system_utils_1, 801)).
method_invoc(system_utils_1_expr44, m_get_system_property_120, line(system_utils_1, 801)).
argument(f_user_home_key_195, 1, system_utils_1_expr44).
assign(f_user_language_196, system_utils_1_expr45, line(system_utils_1, 820)).
method_invoc(system_utils_1_expr45, m_get_system_property_120, line(system_utils_1, 820)).
argument(system_utils_1_literal39, 1, system_utils_1_expr45).
assign(f_user_name_197, system_utils_1_expr46, line(system_utils_1, 838)).
method_invoc(system_utils_1_expr46, m_get_system_property_120, line(system_utils_1, 838)).
argument(system_utils_1_literal40, 1, system_utils_1_expr46).
assign(f_user_timezone_198, system_utils_1_expr47, line(system_utils_1, 856)).
method_invoc(system_utils_1_expr47, m_get_system_property_120, line(system_utils_1, 856)).
argument(system_utils_1_literal41, 1, system_utils_1_expr47).
assign(f_is_java_1_1_199, system_utils_1_expr48, line(system_utils_1, 871)).
method_invoc(system_utils_1_expr48, m_get_java_version_matches_121, line(system_utils_1, 871)).
argument(system_utils_1_literal42, 1, system_utils_1_expr48).
assign(f_is_java_1_2_200, system_utils_1_expr49, line(system_utils_1, 881)).
method_invoc(system_utils_1_expr49, m_get_java_version_matches_121, line(system_utils_1, 881)).
argument(system_utils_1_literal43, 1, system_utils_1_expr49).
assign(f_is_java_1_3_201, system_utils_1_expr50, line(system_utils_1, 891)).
method_invoc(system_utils_1_expr50, m_get_java_version_matches_121, line(system_utils_1, 891)).
argument(system_utils_1_literal44, 1, system_utils_1_expr50).
assign(f_is_java_1_4_202, system_utils_1_expr51, line(system_utils_1, 901)).
method_invoc(system_utils_1_expr51, m_get_java_version_matches_121, line(system_utils_1, 901)).
argument(system_utils_1_literal45, 1, system_utils_1_expr51).
assign(f_is_java_1_5_203, system_utils_1_expr52, line(system_utils_1, 911)).
method_invoc(system_utils_1_expr52, m_get_java_version_matches_121, line(system_utils_1, 911)).
argument(system_utils_1_literal46, 1, system_utils_1_expr52).
assign(f_is_java_1_6_204, system_utils_1_expr53, line(system_utils_1, 921)).
method_invoc(system_utils_1_expr53, m_get_java_version_matches_121, line(system_utils_1, 921)).
argument(system_utils_1_literal47, 1, system_utils_1_expr53).
assign(f_is_java_1_7_205, system_utils_1_expr54, line(system_utils_1, 933)).
method_invoc(system_utils_1_expr54, m_get_java_version_matches_121, line(system_utils_1, 933)).
argument(system_utils_1_literal48, 1, system_utils_1_expr54).
assign(f_is_java_1_8_206, system_utils_1_expr55, line(system_utils_1, 945)).
method_invoc(system_utils_1_expr55, m_get_java_version_matches_121, line(system_utils_1, 945)).
argument(system_utils_1_literal49, 1, system_utils_1_expr55).
assign(f_is_java_1_9_207, system_utils_1_expr56, line(system_utils_1, 957)).
method_invoc(system_utils_1_expr56, m_get_java_version_matches_121, line(system_utils_1, 957)).
argument(system_utils_1_literal50, 1, system_utils_1_expr56).
assign(f_is_os_aix_208, system_utils_1_expr57, line(system_utils_1, 977)).
method_invoc(system_utils_1_expr57, m_get_osmatches_name_122, line(system_utils_1, 977)).
argument(system_utils_1_literal51, 1, system_utils_1_expr57).
assign(f_is_os_hp_ux_209, system_utils_1_expr58, line(system_utils_1, 989)).
method_invoc(system_utils_1_expr58, m_get_osmatches_name_122, line(system_utils_1, 989)).
argument(system_utils_1_literal52, 1, system_utils_1_expr58).
assign(f_is_os_400_210, system_utils_1_expr59, line(system_utils_1, 1001)).
method_invoc(system_utils_1_expr59, m_get_osmatches_name_122, line(system_utils_1, 1001)).
argument(system_utils_1_literal53, 1, system_utils_1_expr59).
assign(f_is_os_irix_211, system_utils_1_expr60, line(system_utils_1, 1013)).
method_invoc(system_utils_1_expr60, m_get_osmatches_name_122, line(system_utils_1, 1013)).
argument(system_utils_1_literal54, 1, system_utils_1_expr60).
assign(f_is_os_linux_212, system_utils_1_expr61, line(system_utils_1, 1025)).
method_invoc(system_utils_1_expr62, m_get_osmatches_name_122, line(system_utils_1, 1025)).
argument(system_utils_1_literal55, 1, system_utils_1_expr62).
method_invoc(system_utils_1_expr63, m_get_osmatches_name_122, line(system_utils_1, 1025)).
argument(system_utils_1_literal56, 1, system_utils_1_expr63).
assign(f_is_os_mac_213, system_utils_1_expr64, line(system_utils_1, 1037)).
method_invoc(system_utils_1_expr64, m_get_osmatches_name_122, line(system_utils_1, 1037)).
argument(system_utils_1_literal57, 1, system_utils_1_expr64).
assign(f_is_os_mac_osx_214, system_utils_1_expr65, line(system_utils_1, 1049)).
method_invoc(system_utils_1_expr65, m_get_osmatches_name_122, line(system_utils_1, 1049)).
argument(system_utils_1_literal58, 1, system_utils_1_expr65).
assign(f_is_os_mac_osx_cheetah_215, system_utils_1_expr66, line(system_utils_1, 1061)).
method_invoc(system_utils_1_expr66, m_get_osmatches_123, line(system_utils_1, 1061)).
argument(system_utils_1_literal59, 1, system_utils_1_expr66).
argument(system_utils_1_literal60, 2, system_utils_1_expr66).
assign(f_is_os_mac_osx_puma_216, system_utils_1_expr67, line(system_utils_1, 1073)).
method_invoc(system_utils_1_expr67, m_get_osmatches_123, line(system_utils_1, 1073)).
argument(system_utils_1_literal61, 1, system_utils_1_expr67).
argument(system_utils_1_literal62, 2, system_utils_1_expr67).
assign(f_is_os_mac_osx_jaguar_217, system_utils_1_expr68, line(system_utils_1, 1085)).
method_invoc(system_utils_1_expr68, m_get_osmatches_123, line(system_utils_1, 1085)).
argument(system_utils_1_literal63, 1, system_utils_1_expr68).
argument(system_utils_1_literal64, 2, system_utils_1_expr68).
assign(f_is_os_mac_osx_panther_218, system_utils_1_expr69, line(system_utils_1, 1097)).
method_invoc(system_utils_1_expr69, m_get_osmatches_123, line(system_utils_1, 1097)).
argument(system_utils_1_literal65, 1, system_utils_1_expr69).
argument(system_utils_1_literal66, 2, system_utils_1_expr69).
assign(f_is_os_mac_osx_tiger_219, system_utils_1_expr70, line(system_utils_1, 1109)).
method_invoc(system_utils_1_expr70, m_get_osmatches_123, line(system_utils_1, 1109)).
argument(system_utils_1_literal67, 1, system_utils_1_expr70).
argument(system_utils_1_literal68, 2, system_utils_1_expr70).
assign(f_is_os_mac_osx_leopard_220, system_utils_1_expr71, line(system_utils_1, 1121)).
method_invoc(system_utils_1_expr71, m_get_osmatches_123, line(system_utils_1, 1121)).
argument(system_utils_1_literal69, 1, system_utils_1_expr71).
argument(system_utils_1_literal70, 2, system_utils_1_expr71).
assign(f_is_os_mac_osx_snow_leopard_221, system_utils_1_expr72, line(system_utils_1, 1133)).
method_invoc(system_utils_1_expr72, m_get_osmatches_123, line(system_utils_1, 1133)).
argument(system_utils_1_literal71, 1, system_utils_1_expr72).
argument(system_utils_1_literal72, 2, system_utils_1_expr72).
assign(f_is_os_mac_osx_lion_222, system_utils_1_expr73, line(system_utils_1, 1145)).
method_invoc(system_utils_1_expr73, m_get_osmatches_123, line(system_utils_1, 1145)).
argument(system_utils_1_literal73, 1, system_utils_1_expr73).
argument(system_utils_1_literal74, 2, system_utils_1_expr73).
assign(f_is_os_mac_osx_mountain_lion_223, system_utils_1_expr74, line(system_utils_1, 1157)).
method_invoc(system_utils_1_expr74, m_get_osmatches_123, line(system_utils_1, 1157)).
argument(system_utils_1_literal75, 1, system_utils_1_expr74).
argument(system_utils_1_literal76, 2, system_utils_1_expr74).
assign(f_is_os_mac_osx_mavericks_224, system_utils_1_expr75, line(system_utils_1, 1169)).
method_invoc(system_utils_1_expr75, m_get_osmatches_123, line(system_utils_1, 1169)).
argument(system_utils_1_literal77, 1, system_utils_1_expr75).
argument(system_utils_1_literal78, 2, system_utils_1_expr75).
assign(f_is_os_mac_osx_yosemite_225, system_utils_1_expr76, line(system_utils_1, 1181)).
method_invoc(system_utils_1_expr76, m_get_osmatches_123, line(system_utils_1, 1181)).
argument(system_utils_1_literal79, 1, system_utils_1_expr76).
argument(system_utils_1_literal80, 2, system_utils_1_expr76).
assign(f_is_os_mac_osx_el_capitan_226, system_utils_1_expr77, line(system_utils_1, 1193)).
method_invoc(system_utils_1_expr77, m_get_osmatches_123, line(system_utils_1, 1193)).
argument(system_utils_1_literal81, 1, system_utils_1_expr77).
argument(system_utils_1_literal82, 2, system_utils_1_expr77).
assign(f_is_os_free_bsd_227, system_utils_1_expr78, line(system_utils_1, 1205)).
method_invoc(system_utils_1_expr78, m_get_osmatches_name_122, line(system_utils_1, 1205)).
argument(system_utils_1_literal83, 1, system_utils_1_expr78).
assign(f_is_os_open_bsd_228, system_utils_1_expr79, line(system_utils_1, 1217)).
method_invoc(system_utils_1_expr79, m_get_osmatches_name_122, line(system_utils_1, 1217)).
argument(system_utils_1_literal84, 1, system_utils_1_expr79).
assign(f_is_os_net_bsd_229, system_utils_1_expr80, line(system_utils_1, 1229)).
method_invoc(system_utils_1_expr80, m_get_osmatches_name_122, line(system_utils_1, 1229)).
argument(system_utils_1_literal85, 1, system_utils_1_expr80).
assign(f_is_os_os2_230, system_utils_1_expr81, line(system_utils_1, 1241)).
method_invoc(system_utils_1_expr81, m_get_osmatches_name_122, line(system_utils_1, 1241)).
argument(system_utils_1_literal86, 1, system_utils_1_expr81).
assign(f_is_os_solaris_231, system_utils_1_expr82, line(system_utils_1, 1253)).
method_invoc(system_utils_1_expr82, m_get_osmatches_name_122, line(system_utils_1, 1253)).
argument(system_utils_1_literal87, 1, system_utils_1_expr82).
assign(f_is_os_sun_os_232, system_utils_1_expr83, line(system_utils_1, 1265)).
method_invoc(system_utils_1_expr83, m_get_osmatches_name_122, line(system_utils_1, 1265)).
argument(system_utils_1_literal88, 1, system_utils_1_expr83).
assign(f_is_os_unix_233, system_utils_1_expr84, line(system_utils_1, 1277)).
assign(f_is_os_windows_234, system_utils_1_expr85, line(system_utils_1, 1290)).
method_invoc(system_utils_1_expr85, m_get_osmatches_name_122, line(system_utils_1, 1290)).
argument(f_os_name_windows_prefix_235, 1, system_utils_1_expr85).
assign(f_is_os_windows_2000_236, system_utils_1_expr86, line(system_utils_1, 1302)).
method_invoc(system_utils_1_expr86, m_get_osmatches_name_122, line(system_utils_1, 1302)).
argument(system_utils_1_expr87, 1, system_utils_1_expr86).
assign(f_is_os_windows_2003_237, system_utils_1_expr88, line(system_utils_1, 1314)).
method_invoc(system_utils_1_expr88, m_get_osmatches_name_122, line(system_utils_1, 1314)).
argument(system_utils_1_expr89, 1, system_utils_1_expr88).
assign(f_is_os_windows_2008_238, system_utils_1_expr90, line(system_utils_1, 1326)).
method_invoc(system_utils_1_expr90, m_get_osmatches_name_122, line(system_utils_1, 1326)).
argument(system_utils_1_expr91, 1, system_utils_1_expr90).
assign(f_is_os_windows_2012_239, system_utils_1_expr92, line(system_utils_1, 1338)).
method_invoc(system_utils_1_expr92, m_get_osmatches_name_122, line(system_utils_1, 1338)).
argument(system_utils_1_expr93, 1, system_utils_1_expr92).
assign(f_is_os_windows_95_240, system_utils_1_expr94, line(system_utils_1, 1350)).
method_invoc(system_utils_1_expr94, m_get_osmatches_name_122, line(system_utils_1, 1350)).
argument(system_utils_1_expr95, 1, system_utils_1_expr94).
assign(f_is_os_windows_98_241, system_utils_1_expr96, line(system_utils_1, 1362)).
method_invoc(system_utils_1_expr96, m_get_osmatches_name_122, line(system_utils_1, 1362)).
argument(system_utils_1_expr97, 1, system_utils_1_expr96).
assign(f_is_os_windows_me_242, system_utils_1_expr98, line(system_utils_1, 1374)).
method_invoc(system_utils_1_expr98, m_get_osmatches_name_122, line(system_utils_1, 1374)).
argument(system_utils_1_expr99, 1, system_utils_1_expr98).
assign(f_is_os_windows_nt_243, system_utils_1_expr100, line(system_utils_1, 1386)).
method_invoc(system_utils_1_expr100, m_get_osmatches_name_122, line(system_utils_1, 1386)).
argument(system_utils_1_expr101, 1, system_utils_1_expr100).
assign(f_is_os_windows_xp_244, system_utils_1_expr102, line(system_utils_1, 1398)).
method_invoc(system_utils_1_expr102, m_get_osmatches_name_122, line(system_utils_1, 1398)).
argument(system_utils_1_expr103, 1, system_utils_1_expr102).
assign(f_is_os_windows_vista_245, system_utils_1_expr104, line(system_utils_1, 1411)).
method_invoc(system_utils_1_expr104, m_get_osmatches_name_122, line(system_utils_1, 1411)).
argument(system_utils_1_expr105, 1, system_utils_1_expr104).
assign(f_is_os_windows_7_246, system_utils_1_expr106, line(system_utils_1, 1423)).
method_invoc(system_utils_1_expr106, m_get_osmatches_name_122, line(system_utils_1, 1423)).
argument(system_utils_1_expr107, 1, system_utils_1_expr106).
assign(f_is_os_windows_8_247, system_utils_1_expr108, line(system_utils_1, 1435)).
method_invoc(system_utils_1_expr108, m_get_osmatches_name_122, line(system_utils_1, 1435)).
argument(system_utils_1_expr109, 1, system_utils_1_expr108).
assign(f_is_os_windows_10_248, system_utils_1_expr110, line(system_utils_1, 1447)).
method_invoc(system_utils_1_expr110, m_get_osmatches_name_122, line(system_utils_1, 1447)).
argument(system_utils_1_expr111, 1, system_utils_1_expr110).
assign(f_is_os_zos_249, system_utils_1_expr112, line(system_utils_1, 1464)).
method_invoc(system_utils_1_expr112, m_get_osmatches_name_122, line(system_utils_1, 1464)).
argument(system_utils_1_literal102, 1, system_utils_1_expr112).
param(p_version_prefix_250, 1, m_get_java_version_matches_121).
return(system_utils_1_expr113, m_get_java_version_matches_121, line(system_utils_1, 1505)).
method_invoc(system_utils_1_expr113, m_is_java_version_match_126, line(system_utils_1, 1505)).
argument(f_java_specification_version_173, 1, system_utils_1_expr113).
argument(p_version_prefix_250, 2, system_utils_1_expr113).
param(p_os_name_prefix_251, 1, m_get_osmatches_123).
param(p_os_version_prefix_252, 2, m_get_osmatches_123).
return(system_utils_1_expr114, m_get_osmatches_123, line(system_utils_1, 1516)).
method_invoc(system_utils_1_expr114, m_is_osmatch_127, line(system_utils_1, 1516)).
argument(f_os_name_188, 1, system_utils_1_expr114).
argument(f_os_version_189, 2, system_utils_1_expr114).
argument(p_os_name_prefix_251, 3, system_utils_1_expr114).
argument(p_os_version_prefix_252, 4, system_utils_1_expr114).
param(p_os_name_prefix_253, 1, m_get_osmatches_name_122).
return(system_utils_1_expr115, m_get_osmatches_name_122, line(system_utils_1, 1526)).
method_invoc(system_utils_1_expr115, m_is_osname_match_128, line(system_utils_1, 1526)).
argument(f_os_name_188, 1, system_utils_1_expr115).
argument(p_os_name_prefix_253, 2, system_utils_1_expr115).
param(p_property_254, 1, m_get_system_property_120).
return(system_utils_1_expr116, m_get_system_property_120, line(system_utils_1, 1544)).
method_invoc(system_utils_1_expr116, m_get_property_129, line(system_utils_1, 1544)).
argument(p_property_254, 1, system_utils_1_expr116).
ref(t_system_15, system_utils_1_expr116, line(system_utils_1, 1544)).
param(p_required_version_255, 1, m_is_java_version_at_least_31).
return(system_utils_1_expr117, m_is_java_version_at_least_31, line(system_utils_1, 1611)).
method_invoc(system_utils_1_expr117, m_at_least_67, line(system_utils_1, 1611)).
argument(p_required_version_255, 1, system_utils_1_expr117).
ref(f_java_specification_version_as_enum_174, system_utils_1_expr117, line(system_utils_1, 1611)).
param(p_version_256, 1, m_is_java_version_match_126).
param(p_version_prefix_257, 2, m_is_java_version_match_126).
return(system_utils_1_expr119, m_is_java_version_match_126, line(system_utils_1, 1630)).
method_invoc(system_utils_1_expr119, m_starts_with_133, line(system_utils_1, 1630)).
argument(p_version_prefix_257, 1, system_utils_1_expr119).
ref(p_version_256, system_utils_1_expr119, line(system_utils_1, 1630)).
param(p_os_name_258, 1, m_is_osmatch_127).
param(p_os_version_259, 2, m_is_osmatch_127).
param(p_os_name_prefix_260, 3, m_is_osmatch_127).
param(p_os_version_prefix_261, 4, m_is_osmatch_127).
return(system_utils_1_expr123, m_is_osmatch_127, line(system_utils_1, 1649)).
method_invoc(system_utils_1_expr124, m_is_osname_match_128, line(system_utils_1, 1649)).
argument(p_os_name_258, 1, system_utils_1_expr124).
argument(p_os_name_prefix_260, 2, system_utils_1_expr124).
method_invoc(system_utils_1_expr125, m_is_osversion_match_134, line(system_utils_1, 1649)).
argument(p_os_version_259, 1, system_utils_1_expr125).
argument(p_os_version_prefix_261, 2, system_utils_1_expr125).
param(p_os_name_262, 1, m_is_osname_match_128).
param(p_os_name_prefix_263, 2, m_is_osname_match_128).
return(system_utils_1_expr127, m_is_osname_match_128, line(system_utils_1, 1666)).
method_invoc(system_utils_1_expr127, m_starts_with_133, line(system_utils_1, 1666)).
argument(p_os_name_prefix_263, 1, system_utils_1_expr127).
ref(p_os_name_262, system_utils_1_expr127, line(system_utils_1, 1666)).
param(p_os_version_264, 1, m_is_osversion_match_134).
param(p_os_version_prefix_265, 2, m_is_osversion_match_134).

%object_utils_1 - org.apache.commons.lang3.ObjectUtils
assign(f_null_104, object_utils_1_expr1, line(object_utils_1, 62)).
method_invoc(object_utils_1_expr1, m_null_81, line(object_utils_1, 62)).
param(p_object_105, 1, m_default_if_null_83).
param(p_default_value_106, 2, m_default_if_null_83).
return(object_utils_1_expr2, m_default_if_null_83, line(object_utils_1, 95)).
cond_expr(object_utils_1_expr3, p_object_105, p_default_value_106, line(object_utils_1, 95)).
param(p_values_107, 1, m_first_non_null_84).
param(p_values_108, 1, m_any_not_null_85).
param(p_values_109, 1, m_all_not_null_86).
param(p_object_1_110, 1, m_equals_87).
param(p_object_2_111, 2, m_equals_87).
param(p_object_1_112, 1, m_not_equal_88).
param(p_object_2_113, 2, m_not_equal_88).
param(p_obj_114, 1, m_hash_code_89).
param(p_objects_115, 1, m_hash_code_multi_90).
param(p_object_116, 1, m_identity_to_string_91).
param(p_appendable_117, 1, m_identity_to_string_92).
param(p_object_118, 2, m_identity_to_string_92).
throw(m_identity_to_string_92, ioexception).
param(p_builder_119, 1, m_identity_to_string_93).
param(p_object_120, 2, m_identity_to_string_93).
param(p_buffer_121, 1, m_identity_to_string_94).
param(p_object_122, 2, m_identity_to_string_94).
param(p_builder_123, 1, m_identity_to_string_95).
param(p_object_124, 2, m_identity_to_string_95).
param(p_obj_125, 1, m_to_string_96).
param(p_obj_126, 1, m_to_string_97).
param(p_null_str_127, 2, m_to_string_97).
param(p_values_128, 1, m_min_98).
param(p_values_129, 1, m_max_99).
param(p_c_1_130, 1, m_compare_100).
param(p_c_2_131, 2, m_compare_100).
param(p_c_1_132, 1, m_compare_101).
param(p_c_2_133, 2, m_compare_101).
param(p_null_greater_134, 3, m_compare_101).
param(p_items_135, 1, m_median_102).
param(p_comparator_136, 1, m_median_103).
param(p_items_137, 2, m_median_103).
param(p_items_138, 1, m_mode_104).
param(p_obj_139, 1, m_clone_105).
param(p_obj_140, 1, m_clone_if_possible_106).
method_invoc(object_utils_1_expr4, m_object_107, line(object_utils_1, 748)).
param(p_v_141, 1, m_const_109).
param(p_v_142, 1, m_const_110).
param(p_v_143, 1, m_const_byte_111).
throw(m_const_byte_111, illegal_argument_exception).
param(p_v_144, 1, m_const_112).
param(p_v_145, 1, m_const_113).
param(p_v_146, 1, m_const_short_114).
throw(m_const_short_114, illegal_argument_exception).
param(p_v_147, 1, m_const_115).
param(p_v_148, 1, m_const_116).
param(p_v_149, 1, m_const_117).
param(p_v_150, 1, m_const_118).
param(p_v_151, 1, m_const_119).

%class_utils_1 - org.apache.commons.lang3.ClassUtils
assign(f_package_separator_1, class_utils_1_expr1, line(class_utils_1, 63)).
method_invoc(class_utils_1_expr1, m_value_of_1, line(class_utils_1, 63)).
argument(f_package_separator_char_2, 1, class_utils_1_expr1).
ref(t_string_1, class_utils_1_expr1, line(class_utils_1, 63)).
assign(f_inner_class_separator_3, class_utils_1_expr2, line(class_utils_1, 73)).
method_invoc(class_utils_1_expr2, m_value_of_1, line(class_utils_1, 73)).
argument(f_inner_class_separator_char_4, 1, class_utils_1_expr2).
ref(t_string_1, class_utils_1_expr2, line(class_utils_1, 73)).
assign(f_primitive_wrapper_map_5, class_utils_1_expr3, line(class_utils_1, 78)).
method_invoc(class_utils_1_expr3, m_hash_map_2, line(class_utils_1, 78)).
method_invoc(class_utils_1_expr4, m_put_3, line(class_utils_1, 80)).
argument(q_type_1, 1, class_utils_1_expr4).
argument(class_utils_1_expr5, 2, class_utils_1_expr4).
ref(f_primitive_wrapper_map_5, class_utils_1_expr4, line(class_utils_1, 80)).
ref(t_boolean_2, q_type_1, line(class_utils_1, 80)).
method_invoc(class_utils_1_expr6, m_put_3, line(class_utils_1, 81)).
argument(q_type_2, 1, class_utils_1_expr6).
argument(class_utils_1_expr7, 2, class_utils_1_expr6).
ref(f_primitive_wrapper_map_5, class_utils_1_expr6, line(class_utils_1, 81)).
ref(t_byte_3, q_type_2, line(class_utils_1, 81)).
method_invoc(class_utils_1_expr8, m_put_3, line(class_utils_1, 82)).
argument(q_type_3, 1, class_utils_1_expr8).
argument(class_utils_1_expr9, 2, class_utils_1_expr8).
ref(f_primitive_wrapper_map_5, class_utils_1_expr8, line(class_utils_1, 82)).
ref(t_character_4, q_type_3, line(class_utils_1, 82)).
method_invoc(class_utils_1_expr10, m_put_3, line(class_utils_1, 83)).
argument(q_type_4, 1, class_utils_1_expr10).
argument(class_utils_1_expr11, 2, class_utils_1_expr10).
ref(f_primitive_wrapper_map_5, class_utils_1_expr10, line(class_utils_1, 83)).
ref(t_short_5, q_type_4, line(class_utils_1, 83)).
method_invoc(class_utils_1_expr12, m_put_3, line(class_utils_1, 84)).
argument(q_type_5, 1, class_utils_1_expr12).
argument(class_utils_1_expr13, 2, class_utils_1_expr12).
ref(f_primitive_wrapper_map_5, class_utils_1_expr12, line(class_utils_1, 84)).
ref(t_integer_6, q_type_5, line(class_utils_1, 84)).
method_invoc(class_utils_1_expr14, m_put_3, line(class_utils_1, 85)).
argument(q_type_6, 1, class_utils_1_expr14).
argument(class_utils_1_expr15, 2, class_utils_1_expr14).
ref(f_primitive_wrapper_map_5, class_utils_1_expr14, line(class_utils_1, 85)).
ref(t_long_7, q_type_6, line(class_utils_1, 85)).
method_invoc(class_utils_1_expr16, m_put_3, line(class_utils_1, 86)).
argument(q_type_7, 1, class_utils_1_expr16).
argument(class_utils_1_expr17, 2, class_utils_1_expr16).
ref(f_primitive_wrapper_map_5, class_utils_1_expr16, line(class_utils_1, 86)).
ref(t_double_8, q_type_7, line(class_utils_1, 86)).
method_invoc(class_utils_1_expr18, m_put_3, line(class_utils_1, 87)).
argument(q_type_8, 1, class_utils_1_expr18).
argument(class_utils_1_expr19, 2, class_utils_1_expr18).
ref(f_primitive_wrapper_map_5, class_utils_1_expr18, line(class_utils_1, 87)).
ref(t_float_9, q_type_8, line(class_utils_1, 87)).
method_invoc(class_utils_1_expr20, m_put_3, line(class_utils_1, 88)).
argument(q_type_9, 1, class_utils_1_expr20).
argument(q_type_10, 2, class_utils_1_expr20).
ref(f_primitive_wrapper_map_5, class_utils_1_expr20, line(class_utils_1, 88)).
ref(t_void_10, q_type_9, line(class_utils_1, 88)).
ref(t_void_10, q_type_10, line(class_utils_1, 88)).
assign(f_wrapper_primitive_map_6, class_utils_1_expr21, line(class_utils_1, 94)).
method_invoc(class_utils_1_expr21, m_hash_map_2, line(class_utils_1, 94)).
ref(class_utils_1_expr22, class_utils_1_stmt10, line(class_utils_1, 96)).
method_invoc(class_utils_1_expr22, m_entry_set_4, line(class_utils_1, 96)).
ref(f_primitive_wrapper_map_5, class_utils_1_expr22, line(class_utils_1, 96)).
assign(v_primitive_class_8, class_utils_1_expr23, line(class_utils_1, 97)).
method_invoc(class_utils_1_expr23, m_get_key_5, line(class_utils_1, 97)).
ref(v_entry_7, class_utils_1_expr23, line(class_utils_1, 97)).
assign(v_wrapper_class_9, class_utils_1_expr24, line(class_utils_1, 98)).
method_invoc(class_utils_1_expr24, m_get_value_6, line(class_utils_1, 98)).
ref(v_entry_7, class_utils_1_expr24, line(class_utils_1, 98)).
method_invoc(class_utils_1_expr26, m_equals_7, line(class_utils_1, 99)).
argument(v_wrapper_class_9, 1, class_utils_1_expr26).
ref(v_primitive_class_8, class_utils_1_expr26, line(class_utils_1, 99)).
method_invoc(class_utils_1_expr27, m_put_3, line(class_utils_1, 100)).
argument(v_wrapper_class_9, 1, class_utils_1_expr27).
argument(v_primitive_class_8, 2, class_utils_1_expr27).
ref(f_wrapper_primitive_map_6, class_utils_1_expr27, line(class_utils_1, 100)).
assign(v_m_10, class_utils_1_expr28, line(class_utils_1, 119)).
method_invoc(class_utils_1_expr28, m_hash_map_2, line(class_utils_1, 119)).
method_invoc(class_utils_1_expr29, m_put_3, line(class_utils_1, 120)).
argument(class_utils_1_literal1, 1, class_utils_1_expr29).
argument(class_utils_1_literal2, 2, class_utils_1_expr29).
ref(v_m_10, class_utils_1_expr29, line(class_utils_1, 120)).
method_invoc(class_utils_1_expr30, m_put_3, line(class_utils_1, 121)).
argument(class_utils_1_literal3, 1, class_utils_1_expr30).
argument(class_utils_1_literal4, 2, class_utils_1_expr30).
ref(v_m_10, class_utils_1_expr30, line(class_utils_1, 121)).
method_invoc(class_utils_1_expr31, m_put_3, line(class_utils_1, 122)).
argument(class_utils_1_literal5, 1, class_utils_1_expr31).
argument(class_utils_1_literal6, 2, class_utils_1_expr31).
ref(v_m_10, class_utils_1_expr31, line(class_utils_1, 122)).
method_invoc(class_utils_1_expr32, m_put_3, line(class_utils_1, 123)).
argument(class_utils_1_literal7, 1, class_utils_1_expr32).
argument(class_utils_1_literal8, 2, class_utils_1_expr32).
ref(v_m_10, class_utils_1_expr32, line(class_utils_1, 123)).
method_invoc(class_utils_1_expr33, m_put_3, line(class_utils_1, 124)).
argument(class_utils_1_literal9, 1, class_utils_1_expr33).
argument(class_utils_1_literal10, 2, class_utils_1_expr33).
ref(v_m_10, class_utils_1_expr33, line(class_utils_1, 124)).
method_invoc(class_utils_1_expr34, m_put_3, line(class_utils_1, 125)).
argument(class_utils_1_literal11, 1, class_utils_1_expr34).
argument(class_utils_1_literal12, 2, class_utils_1_expr34).
ref(v_m_10, class_utils_1_expr34, line(class_utils_1, 125)).
method_invoc(class_utils_1_expr35, m_put_3, line(class_utils_1, 126)).
argument(class_utils_1_literal13, 1, class_utils_1_expr35).
argument(class_utils_1_literal14, 2, class_utils_1_expr35).
ref(v_m_10, class_utils_1_expr35, line(class_utils_1, 126)).
method_invoc(class_utils_1_expr36, m_put_3, line(class_utils_1, 127)).
argument(class_utils_1_literal15, 1, class_utils_1_expr36).
argument(class_utils_1_literal16, 2, class_utils_1_expr36).
ref(v_m_10, class_utils_1_expr36, line(class_utils_1, 127)).
method_invoc(class_utils_1_expr37, m_put_3, line(class_utils_1, 128)).
argument(class_utils_1_literal17, 1, class_utils_1_expr37).
argument(class_utils_1_literal18, 2, class_utils_1_expr37).
ref(v_m_10, class_utils_1_expr37, line(class_utils_1, 128)).
assign(v_r_11, class_utils_1_expr38, line(class_utils_1, 129)).
method_invoc(class_utils_1_expr38, m_hash_map_2, line(class_utils_1, 129)).
ref(class_utils_1_expr39, class_utils_1_stmt26, line(class_utils_1, 130)).
method_invoc(class_utils_1_expr39, m_entry_set_4, line(class_utils_1, 130)).
ref(v_m_10, class_utils_1_expr39, line(class_utils_1, 130)).
method_invoc(class_utils_1_expr40, m_put_3, line(class_utils_1, 131)).
argument(class_utils_1_expr41, 1, class_utils_1_expr40).
argument(class_utils_1_expr42, 2, class_utils_1_expr40).
ref(v_r_11, class_utils_1_expr40, line(class_utils_1, 131)).
method_invoc(class_utils_1_expr41, m_get_value_6, line(class_utils_1, 131)).
ref(v_e_12, class_utils_1_expr41, line(class_utils_1, 131)).
method_invoc(class_utils_1_expr42, m_get_key_5, line(class_utils_1, 131)).
ref(v_e_12, class_utils_1_expr42, line(class_utils_1, 131)).
assign(f_abbreviation_map_13, class_utils_1_expr44, line(class_utils_1, 133)).
method_invoc(class_utils_1_expr44, m_unmodifiable_map_8, line(class_utils_1, 133)).
argument(v_m_10, 1, class_utils_1_expr44).
ref(t_collections_11, class_utils_1_expr44, line(class_utils_1, 133)).
assign(f_reverse_abbreviation_map_14, class_utils_1_expr46, line(class_utils_1, 134)).
method_invoc(class_utils_1_expr46, m_unmodifiable_map_8, line(class_utils_1, 134)).
argument(v_r_11, 1, class_utils_1_expr46).
ref(t_collections_11, class_utils_1_expr46, line(class_utils_1, 134)).
param(p_object_15, 1, m_get_short_class_name_10).
param(p_value_if_null_16, 2, m_get_short_class_name_10).
param(p_cls_17, 1, m_get_short_class_name_11).
param(p_class_name_18, 1, m_get_short_class_name_12).
param(p_cls_19, 1, m_get_simple_name_13).
param(p_object_20, 1, m_get_simple_name_14).
param(p_value_if_null_21, 2, m_get_simple_name_14).
param(p_object_22, 1, m_get_package_name_15).
param(p_value_if_null_23, 2, m_get_package_name_15).
param(p_cls_24, 1, m_get_package_name_16).
param(p_class_name_25, 1, m_get_package_name_17).
param(p_cls_26, 1, m_get_abbreviated_name_18).
param(p_len_27, 2, m_get_abbreviated_name_18).
param(p_class_name_28, 1, m_get_abbreviated_name_19).
param(p_len_29, 2, m_get_abbreviated_name_19).
param(p_cls_30, 1, m_get_all_superclasses_20).
param(p_cls_31, 1, m_get_all_interfaces_21).
param(p_cls_32, 1, m_get_all_interfaces_22).
param(p_interfaces_found_33, 2, m_get_all_interfaces_22).
param(p_class_names_34, 1, m_convert_class_names_to_classes_23).
param(p_classes_35, 1, m_convert_classes_to_class_names_24).
param(p_class_array_36, 1, m_is_assignable_25).
param(p_to_class_array_37, 2, m_is_assignable_25).
param(p_class_array_38, 1, m_is_assignable_26).
param(p_to_class_array_39, 2, m_is_assignable_26).
param(p_autoboxing_40, 3, m_is_assignable_26).
param(p_type_41, 1, m_is_primitive_or_wrapper_27).
param(p_type_42, 1, m_is_primitive_wrapper_28).
param(p_cls_43, 1, m_is_assignable_29).
param(p_to_class_44, 2, m_is_assignable_29).
return(class_utils_1_expr47, m_is_assignable_29, line(class_utils_1, 675)).
method_invoc(class_utils_1_expr47, m_is_assignable_30, line(class_utils_1, 675)).
argument(p_cls_43, 1, class_utils_1_expr47).
argument(p_to_class_44, 2, class_utils_1_expr47).
argument(class_utils_1_expr48, 3, class_utils_1_expr47).
method_invoc(class_utils_1_expr48, m_is_java_version_at_least_31, line(class_utils_1, 675)).
argument(q_java_1_5_10, 1, class_utils_1_expr48).
ref(t_system_utils_12, class_utils_1_expr48, line(class_utils_1, 675)).
ref(t_java_version_13, q_java_1_5_10, line(class_utils_1, 675)).
param(p_cls_45, 1, m_is_assignable_30).
param(p_to_class_46, 2, m_is_assignable_30).
param(p_autoboxing_47, 3, m_is_assignable_30).
method_invoc(class_utils_1_expr52, m_is_primitive_32, line(class_utils_1, 715)).
ref(p_cls_45, class_utils_1_expr52, line(class_utils_1, 715)).
method_invoc(class_utils_1_expr54, m_is_primitive_32, line(class_utils_1, 715)).
ref(p_to_class_46, class_utils_1_expr54, line(class_utils_1, 715)).
method_invoc(class_utils_1_expr56, m_is_primitive_32, line(class_utils_1, 721)).
ref(p_to_class_46, class_utils_1_expr56, line(class_utils_1, 721)).
method_invoc(class_utils_1_expr58, m_is_primitive_32, line(class_utils_1, 721)).
ref(p_cls_45, class_utils_1_expr58, line(class_utils_1, 721)).
method_invoc(class_utils_1_expr59, m_equals_7, line(class_utils_1, 728)).
argument(p_to_class_46, 1, class_utils_1_expr59).
ref(p_cls_45, class_utils_1_expr59, line(class_utils_1, 728)).
method_invoc(class_utils_1_expr60, m_is_primitive_32, line(class_utils_1, 731)).
ref(p_cls_45, class_utils_1_expr60, line(class_utils_1, 731)).
return(class_utils_1_expr61, m_is_assignable_30, line(class_utils_1, 775)).
method_invoc(class_utils_1_expr61, m_is_assignable_from_33, line(class_utils_1, 775)).
argument(p_cls_45, 1, class_utils_1_expr61).
ref(p_to_class_46, class_utils_1_expr61, line(class_utils_1, 775)).
param(p_cls_48, 1, m_primitive_to_wrapper_34).
param(p_classes_49, 1, m_primitives_to_wrappers_35).
param(p_cls_50, 1, m_wrapper_to_primitive_36).
param(p_classes_51, 1, m_wrappers_to_primitives_37).
param(p_cls_52, 1, m_is_inner_class_38).
param(p_class_loader_53, 1, m_get_class_39).
param(p_class_name_54, 2, m_get_class_39).
param(p_initialize_55, 3, m_get_class_39).
throw(m_get_class_39, class_not_found_exception).
param(p_class_loader_56, 1, m_get_class_40).
param(p_class_name_57, 2, m_get_class_40).
throw(m_get_class_40, class_not_found_exception).
param(p_class_name_58, 1, m_get_class_41).
throw(m_get_class_41, class_not_found_exception).
param(p_class_name_59, 1, m_get_class_42).
param(p_initialize_60, 2, m_get_class_42).
throw(m_get_class_42, class_not_found_exception).
param(p_cls_61, 1, m_get_public_method_43).
param(p_method_name_62, 2, m_get_public_method_43).
param(p_parameter_types_63, 3, m_get_public_method_43).
throw(m_get_public_method_43, security_exception).
throw(m_get_public_method_43, no_such_method_exception).
param(p_class_name_64, 1, m_to_canonical_name_44).
param(p_array_65, 1, m_to_class_45).
param(p_object_66, 1, m_get_short_canonical_name_46).
param(p_value_if_null_67, 2, m_get_short_canonical_name_46).
param(p_cls_68, 1, m_get_short_canonical_name_47).
param(p_canonical_name_69, 1, m_get_short_canonical_name_48).
param(p_object_70, 1, m_get_package_canonical_name_49).
param(p_value_if_null_71, 2, m_get_package_canonical_name_49).
param(p_cls_72, 1, m_get_package_canonical_name_50).
param(p_canonical_name_73, 1, m_get_package_canonical_name_51).
param(p_class_name_74, 1, m_get_canonical_name_52).
param(p_type_75, 1, m_hierarchy_53).
param(p_type_76, 1, m_hierarchy_54).
param(p_interfaces_behavior_77, 2, m_hierarchy_54).
param(p_add_to_78, 1, m_walk_interfaces_62).
param(p_c_79, 2, m_walk_interfaces_62).

%java_version_1 - org.apache.commons.lang3.JavaVersion
method_invoc(java_version_1_expr1, m_max_version_64, line(java_version_1, 81)).
method_invoc(java_version_1_expr2, m_to_string_65, line(java_version_1, 81)).
argument(java_version_1_expr3, 1, java_version_1_expr2).
ref(t_float_9, java_version_1_expr2, line(java_version_1, 81)).
method_invoc(java_version_1_expr3, m_max_version_64, line(java_version_1, 81)).
param(p_value_91, 1, m_java_version_66).
param(p_name_92, 2, m_java_version_66).
assign(f_value_93, p_value_91, line(java_version_1, 99)).
assign(f_name_94, p_name_92, line(java_version_1, 100)).
param(p_required_version_95, 1, m_at_least_67).
return(java_version_1_expr10, m_at_least_67, line(java_version_1, 114)).
ref(p_required_version_95, q_value_11, line(java_version_1, 114)).
param(p_nom_96, 1, m_get_java_version_68).
param(p_nom_97, 1, m_get_69).
method_invoc(java_version_1_expr13, m_equals_70, line(java_version_1, 141)).
argument(p_nom_97, 1, java_version_1_expr13).
ref(java_version_1_literal21, java_version_1_expr13, line(java_version_1, 141)).
method_invoc(java_version_1_expr14, m_equals_70, line(java_version_1, 143)).
argument(p_nom_97, 1, java_version_1_expr14).
ref(java_version_1_literal22, java_version_1_expr14, line(java_version_1, 143)).
method_invoc(java_version_1_expr15, m_equals_70, line(java_version_1, 145)).
argument(p_nom_97, 1, java_version_1_expr15).
ref(java_version_1_literal23, java_version_1_expr15, line(java_version_1, 145)).
method_invoc(java_version_1_expr16, m_equals_70, line(java_version_1, 147)).
argument(p_nom_97, 1, java_version_1_expr16).
ref(java_version_1_literal24, java_version_1_expr16, line(java_version_1, 147)).
method_invoc(java_version_1_expr17, m_equals_70, line(java_version_1, 149)).
argument(p_nom_97, 1, java_version_1_expr17).
ref(java_version_1_literal25, java_version_1_expr17, line(java_version_1, 149)).
method_invoc(java_version_1_expr18, m_equals_70, line(java_version_1, 151)).
argument(p_nom_97, 1, java_version_1_expr18).
ref(java_version_1_literal26, java_version_1_expr18, line(java_version_1, 151)).
method_invoc(java_version_1_expr19, m_equals_70, line(java_version_1, 153)).
argument(p_nom_97, 1, java_version_1_expr19).
ref(java_version_1_literal27, java_version_1_expr19, line(java_version_1, 153)).
method_invoc(java_version_1_expr20, m_equals_70, line(java_version_1, 155)).
argument(p_nom_97, 1, java_version_1_expr20).
ref(java_version_1_literal28, java_version_1_expr20, line(java_version_1, 155)).
method_invoc(java_version_1_expr21, m_equals_70, line(java_version_1, 157)).
argument(p_nom_97, 1, java_version_1_expr21).
ref(java_version_1_literal29, java_version_1_expr21, line(java_version_1, 157)).
method_invoc(java_version_1_expr22, m_equals_70, line(java_version_1, 159)).
argument(p_nom_97, 1, java_version_1_expr22).
ref(java_version_1_literal30, java_version_1_expr22, line(java_version_1, 159)).
assign(v_v_98, java_version_1_expr24, line(java_version_1, 165)).
method_invoc(java_version_1_expr24, m_to_float_version_71, line(java_version_1, 165)).
argument(p_nom_97, 1, java_version_1_expr24).
assign(java_version_1_expr26, java_version_1_expr27, line(java_version_1, 166)).
assign(v_first_comma_99, java_version_1_expr28, line(java_version_1, 167)).
method_invoc(java_version_1_expr28, m_max_72, line(java_version_1, 167)).
argument(java_version_1_expr29, 1, java_version_1_expr28).
argument(java_version_1_expr30, 2, java_version_1_expr28).
ref(t_math_14, java_version_1_expr28, line(java_version_1, 167)).
method_invoc(java_version_1_expr29, m_index_of_73, line(java_version_1, 167)).
argument(java_version_1_literal34, 1, java_version_1_expr29).
ref(p_nom_97, java_version_1_expr29, line(java_version_1, 167)).
method_invoc(java_version_1_expr30, m_index_of_73, line(java_version_1, 167)).
argument(java_version_1_literal35, 1, java_version_1_expr30).
ref(p_nom_97, java_version_1_expr30, line(java_version_1, 167)).
assign(v_end_100, java_version_1_expr31, line(java_version_1, 168)).
method_invoc(java_version_1_expr31, m_max_72, line(java_version_1, 168)).
argument(java_version_1_expr32, 1, java_version_1_expr31).
argument(java_version_1_expr33, 2, java_version_1_expr31).
ref(t_math_14, java_version_1_expr31, line(java_version_1, 168)).
method_invoc(java_version_1_expr32, m_length_74, line(java_version_1, 168)).
ref(p_nom_97, java_version_1_expr32, line(java_version_1, 168)).
method_invoc(java_version_1_expr33, m_index_of_75, line(java_version_1, 168)).
argument(java_version_1_literal36, 1, java_version_1_expr33).
argument(v_first_comma_99, 2, java_version_1_expr33).
ref(p_nom_97, java_version_1_expr33, line(java_version_1, 168)).
method_invoc(java_version_1_expr35, m_parse_float_76, line(java_version_1, 169)).
throw(java_version_1_expr35, number_format_exception, line(java_version_1, 169)).
argument(java_version_1_expr36, 1, java_version_1_expr35).
ref(t_float_9, java_version_1_expr35, line(java_version_1, 169)).
method_invoc(java_version_1_expr36, m_substring_77, line(java_version_1, 169)).
argument(java_version_1_expr37, 1, java_version_1_expr36).
argument(v_end_100, 2, java_version_1_expr36).
ref(p_nom_97, java_version_1_expr36, line(java_version_1, 169)).
return(f_java_recent_90, m_get_69, line(java_version_1, 170)).
assign(v_v_101, java_version_1_expr38, line(java_version_1, 195)).
method_invoc(java_version_1_expr38, m_to_float_version_71, line(java_version_1, 195)).
argument(java_version_1_expr39, 1, java_version_1_expr38).
method_invoc(java_version_1_expr39, m_get_property_79, line(java_version_1, 195)).
argument(java_version_1_literal39, 1, java_version_1_expr39).
argument(java_version_1_literal40, 2, java_version_1_expr39).
ref(t_system_15, java_version_1_expr39, line(java_version_1, 195)).
return(v_v_101, m_max_version_64, line(java_version_1, 197)).
param(p_value_102, 1, m_to_float_version_71).
assign(v_to_parse_103, java_version_1_expr41, line(java_version_1, 209)).
method_invoc(java_version_1_expr41, m_split_80, line(java_version_1, 209)).
argument(java_version_1_literal42, 1, java_version_1_expr41).
ref(p_value_102, java_version_1_expr41, line(java_version_1, 209)).
ref(v_to_parse_103, q_length_12, line(java_version_1, 210)).
return(java_version_1_expr43, m_to_float_version_71, line(java_version_1, 212)).
method_invoc(java_version_1_expr43, m_parse_float_76, line(java_version_1, 212)).
throw(java_version_1_expr43, number_format_exception, line(java_version_1, 212)).
argument(java_version_1_expr44, 1, java_version_1_expr43).
ref(t_float_9, java_version_1_expr43, line(java_version_1, 212)).
ref(v_to_parse_103, java_version_1_expr45, line(java_version_1, 212)).
ref(v_to_parse_103, java_version_1_expr46, line(java_version_1, 212)).
return(java_version_1_expr47, m_to_float_version_71, line(java_version_1, 217)).

%validate_1 - org.apache.commons.lang3.Validate
param(p_expression_266, 1, m_is_true_137).
param(p_message_267, 2, m_is_true_137).
param(p_value_268, 3, m_is_true_137).
param(p_expression_269, 1, m_is_true_138).
param(p_message_270, 2, m_is_true_138).
param(p_value_271, 3, m_is_true_138).
param(p_expression_272, 1, m_is_true_139).
param(p_message_273, 2, m_is_true_139).
param(p_values_274, 3, m_is_true_139).
param(p_expression_275, 1, m_is_true_140).
param(p_object_276, 1, m_not_null_141).
param(p_object_277, 1, m_not_null_142).
param(p_message_278, 2, m_not_null_142).
param(p_values_279, 3, m_not_null_142).
return(p_object_277, m_not_null_142, line(validate_1, 237)).
param(p_array_280, 1, m_not_empty_143).
param(p_message_281, 2, m_not_empty_143).
param(p_values_282, 3, m_not_empty_143).
param(p_array_283, 1, m_not_empty_144).
param(p_collection_284, 1, m_not_empty_145).
param(p_message_285, 2, m_not_empty_145).
param(p_values_286, 3, m_not_empty_145).
param(p_collection_287, 1, m_not_empty_146).
param(p_map_288, 1, m_not_empty_147).
param(p_message_289, 2, m_not_empty_147).
param(p_values_290, 3, m_not_empty_147).
param(p_map_291, 1, m_not_empty_148).
param(p_chars_292, 1, m_not_empty_149).
param(p_message_293, 2, m_not_empty_149).
param(p_values_294, 3, m_not_empty_149).
param(p_chars_295, 1, m_not_empty_150).
param(p_chars_296, 1, m_not_blank_151).
param(p_message_297, 2, m_not_blank_151).
param(p_values_298, 3, m_not_blank_151).
param(p_chars_299, 1, m_not_blank_152).
param(p_array_300, 1, m_no_null_elements_153).
param(p_message_301, 2, m_no_null_elements_153).
param(p_values_302, 3, m_no_null_elements_153).
param(p_array_303, 1, m_no_null_elements_154).
param(p_iterable_304, 1, m_no_null_elements_155).
param(p_message_305, 2, m_no_null_elements_155).
param(p_values_306, 3, m_no_null_elements_155).
param(p_iterable_307, 1, m_no_null_elements_156).
param(p_array_308, 1, m_valid_index_157).
param(p_index_309, 2, m_valid_index_157).
param(p_message_310, 3, m_valid_index_157).
param(p_values_311, 4, m_valid_index_157).
param(p_array_312, 1, m_valid_index_158).
param(p_index_313, 2, m_valid_index_158).
param(p_collection_314, 1, m_valid_index_159).
param(p_index_315, 2, m_valid_index_159).
param(p_message_316, 3, m_valid_index_159).
param(p_values_317, 4, m_valid_index_159).
param(p_collection_318, 1, m_valid_index_160).
param(p_index_319, 2, m_valid_index_160).
param(p_chars_320, 1, m_valid_index_161).
param(p_index_321, 2, m_valid_index_161).
param(p_message_322, 3, m_valid_index_161).
param(p_values_323, 4, m_valid_index_161).
param(p_chars_324, 1, m_valid_index_162).
param(p_index_325, 2, m_valid_index_162).
param(p_expression_326, 1, m_valid_state_163).
param(p_expression_327, 1, m_valid_state_164).
param(p_message_328, 2, m_valid_state_164).
param(p_values_329, 3, m_valid_state_164).
param(p_input_330, 1, m_matches_pattern_165).
param(p_pattern_331, 2, m_matches_pattern_165).
param(p_input_332, 1, m_matches_pattern_166).
param(p_pattern_333, 2, m_matches_pattern_166).
param(p_message_334, 3, m_matches_pattern_166).
param(p_values_335, 4, m_matches_pattern_166).
param(p_value_336, 1, m_not_na_n_167).
param(p_value_337, 1, m_not_na_n_168).
param(p_message_338, 2, m_not_na_n_168).
param(p_values_339, 3, m_not_na_n_168).
param(p_value_340, 1, m_finite_169).
param(p_value_341, 1, m_finite_170).
param(p_message_342, 2, m_finite_170).
param(p_values_343, 3, m_finite_170).
param(p_value_344, 1, m_greater_obj_171).
param(p_min_345, 2, m_greater_obj_171).
param(p_value_346, 1, m_greater_obj_172).
param(p_min_347, 2, m_greater_obj_172).
param(p_message_348, 3, m_greater_obj_172).
param(p_values_349, 4, m_greater_obj_172).
param(p_value_350, 1, m_greater_173).
param(p_min_351, 2, m_greater_173).
param(p_value_352, 1, m_greater_174).
param(p_min_353, 2, m_greater_174).
param(p_message_354, 3, m_greater_174).
param(p_values_355, 4, m_greater_174).
param(p_value_356, 1, m_greater_175).
param(p_min_357, 2, m_greater_175).
param(p_value_358, 1, m_greater_176).
param(p_min_359, 2, m_greater_176).
param(p_message_360, 3, m_greater_176).
param(p_values_361, 4, m_greater_176).
param(p_value_362, 1, m_greater_or_equal_obj_177).
param(p_min_363, 2, m_greater_or_equal_obj_177).
param(p_value_364, 1, m_greater_or_equal_obj_178).
param(p_min_365, 2, m_greater_or_equal_obj_178).
param(p_message_366, 3, m_greater_or_equal_obj_178).
param(p_values_367, 4, m_greater_or_equal_obj_178).
param(p_value_368, 1, m_greater_or_equal_179).
param(p_min_369, 2, m_greater_or_equal_179).
param(p_value_370, 1, m_greater_or_equal_180).
param(p_min_371, 2, m_greater_or_equal_180).
param(p_message_372, 3, m_greater_or_equal_180).
param(p_values_373, 4, m_greater_or_equal_180).
param(p_value_374, 1, m_greater_or_equal_181).
param(p_min_375, 2, m_greater_or_equal_181).
param(p_value_376, 1, m_greater_or_equal_182).
param(p_min_377, 2, m_greater_or_equal_182).
param(p_message_378, 3, m_greater_or_equal_182).
param(p_values_379, 4, m_greater_or_equal_182).
param(p_value_380, 1, m_smaller_obj_183).
param(p_max_381, 2, m_smaller_obj_183).
param(p_value_382, 1, m_smaller_obj_184).
param(p_max_383, 2, m_smaller_obj_184).
param(p_message_384, 3, m_smaller_obj_184).
param(p_values_385, 4, m_smaller_obj_184).
param(p_value_386, 1, m_smaller_185).
param(p_max_387, 2, m_smaller_185).
param(p_value_388, 1, m_smaller_186).
param(p_max_389, 2, m_smaller_186).
param(p_message_390, 3, m_smaller_186).
param(p_values_391, 4, m_smaller_186).
param(p_value_392, 1, m_smaller_187).
param(p_max_393, 2, m_smaller_187).
param(p_value_394, 1, m_smaller_188).
param(p_max_395, 2, m_smaller_188).
param(p_message_396, 3, m_smaller_188).
param(p_values_397, 4, m_smaller_188).
param(p_value_398, 1, m_smaller_or_equal_obj_189).
param(p_max_399, 2, m_smaller_or_equal_obj_189).
param(p_value_400, 1, m_smaller_or_equal_obj_190).
param(p_max_401, 2, m_smaller_or_equal_obj_190).
param(p_message_402, 3, m_smaller_or_equal_obj_190).
param(p_values_403, 4, m_smaller_or_equal_obj_190).
param(p_value_404, 1, m_smaller_or_equal_191).
param(p_max_405, 2, m_smaller_or_equal_191).
param(p_value_406, 1, m_smaller_or_equal_192).
param(p_max_407, 2, m_smaller_or_equal_192).
param(p_message_408, 3, m_smaller_or_equal_192).
param(p_values_409, 4, m_smaller_or_equal_192).
param(p_value_410, 1, m_smaller_or_equal_193).
param(p_max_411, 2, m_smaller_or_equal_193).
param(p_value_412, 1, m_smaller_or_equal_194).
param(p_max_413, 2, m_smaller_or_equal_194).
param(p_message_414, 3, m_smaller_or_equal_194).
param(p_values_415, 4, m_smaller_or_equal_194).
param(p_value_416, 1, m_different_obj_195).
param(p_reference_417, 2, m_different_obj_195).
param(p_value_418, 1, m_different_obj_196).
param(p_reference_419, 2, m_different_obj_196).
param(p_message_420, 3, m_different_obj_196).
param(p_values_421, 4, m_different_obj_196).
param(p_value_422, 1, m_different_197).
param(p_reference_423, 2, m_different_197).
param(p_value_424, 1, m_different_198).
param(p_reference_425, 2, m_different_198).
param(p_message_426, 3, m_different_198).
param(p_values_427, 4, m_different_198).
param(p_value_428, 1, m_different_199).
param(p_reference_429, 2, m_different_199).
param(p_value_430, 1, m_different_200).
param(p_reference_431, 2, m_different_200).
param(p_message_432, 3, m_different_200).
param(p_values_433, 4, m_different_200).
param(p_start_434, 1, m_inclusive_between_201).
param(p_end_435, 2, m_inclusive_between_201).
param(p_value_436, 3, m_inclusive_between_201).
param(p_start_437, 1, m_inclusive_between_202).
param(p_end_438, 2, m_inclusive_between_202).
param(p_value_439, 3, m_inclusive_between_202).
param(p_message_440, 4, m_inclusive_between_202).
param(p_values_441, 5, m_inclusive_between_202).
param(p_start_442, 1, m_inclusive_between_203).
param(p_end_443, 2, m_inclusive_between_203).
param(p_value_444, 3, m_inclusive_between_203).
param(p_start_445, 1, m_inclusive_between_204).
param(p_end_446, 2, m_inclusive_between_204).
param(p_value_447, 3, m_inclusive_between_204).
param(p_message_448, 4, m_inclusive_between_204).
param(p_start_449, 1, m_inclusive_between_205).
param(p_end_450, 2, m_inclusive_between_205).
param(p_value_451, 3, m_inclusive_between_205).
param(p_start_452, 1, m_inclusive_between_206).
param(p_end_453, 2, m_inclusive_between_206).
param(p_value_454, 3, m_inclusive_between_206).
param(p_message_455, 4, m_inclusive_between_206).
param(p_start_456, 1, m_exclusive_between_207).
param(p_end_457, 2, m_exclusive_between_207).
param(p_value_458, 3, m_exclusive_between_207).
param(p_start_459, 1, m_exclusive_between_208).
param(p_end_460, 2, m_exclusive_between_208).
param(p_value_461, 3, m_exclusive_between_208).
param(p_message_462, 4, m_exclusive_between_208).
param(p_values_463, 5, m_exclusive_between_208).
param(p_start_464, 1, m_exclusive_between_209).
param(p_end_465, 2, m_exclusive_between_209).
param(p_value_466, 3, m_exclusive_between_209).
param(p_start_467, 1, m_exclusive_between_210).
param(p_end_468, 2, m_exclusive_between_210).
param(p_value_469, 3, m_exclusive_between_210).
param(p_message_470, 4, m_exclusive_between_210).
param(p_start_471, 1, m_exclusive_between_211).
param(p_end_472, 2, m_exclusive_between_211).
param(p_value_473, 3, m_exclusive_between_211).
param(p_start_474, 1, m_exclusive_between_212).
param(p_end_475, 2, m_exclusive_between_212).
param(p_value_476, 3, m_exclusive_between_212).
param(p_message_477, 4, m_exclusive_between_212).
param(p_type_478, 1, m_is_instance_of_213).
param(p_obj_479, 2, m_is_instance_of_213).
param(p_type_480, 1, m_is_instance_of_214).
param(p_obj_481, 2, m_is_instance_of_214).
param(p_message_482, 3, m_is_instance_of_214).
param(p_values_483, 4, m_is_instance_of_214).
param(p_super_type_484, 1, m_is_assignable_from_215).
param(p_type_485, 2, m_is_assignable_from_215).
param(p_super_type_486, 1, m_is_assignable_from_216).
param(p_type_487, 2, m_is_assignable_from_216).
param(p_message_488, 3, m_is_assignable_from_216).
param(p_values_489, 4, m_is_assignable_from_216).


% Stack Trace Info.
test_failure(failure_1, 'org.apache.commons.lang3.reflect.TypeUtilsTest', 'testLANG1190').
trace(trace_1, failure_1, m_is_assignable_246, line(type_utils_1, 471), failure_1, target).
trace(trace_2, trace_1, m_is_assignable_244, line(type_utils_1, 330), failure_1, target).
trace(trace_3, trace_2, m_is_assignable_247, line(type_utils_1, 656), failure_1, target).
trace(trace_4, trace_3, m_is_assignable_244, line(type_utils_1, 338), failure_1, target).
trace(trace_5, trace_4, m_is_assignable_243, line(type_utils_1, 311), failure_1, target).
trace(trace_6, trace_5, m_test_lang1190_331, line(type_utils_test_1, 772), failure_1, target).
trace(trace_7, trace_6, 'invoke0', line(jdk_internal_reflect_native_method_accessor_impl, -2), failure_1, non_target).
trace(trace_8, trace_7, 'invoke', line(jdk_internal_reflect_native_method_accessor_impl, 77), failure_1, non_target).
trace(trace_9, trace_8, 'invoke', line(jdk_internal_reflect_delegating_method_accessor_impl, 43), failure_1, non_target).
trace(trace_10, trace_9, 'invoke', line(java_lang_reflect_method, 569), failure_1, non_target).
trace(trace_11, trace_10, 'runReflectiveCall', line(org_junit_runners_model_framework_method_1, 59), failure_1, non_target).
trace(trace_12, trace_11, 'run', line(org_junit_internal_runners_model_reflective_callable, 12), failure_1, non_target).
trace(trace_13, trace_12, 'invokeExplosively', line(org_junit_runners_model_framework_method, 56), failure_1, non_target).
trace(trace_14, trace_13, 'evaluate', line(org_junit_internal_runners_statements_invoke_method, 17), failure_1, non_target).
trace(trace_15, trace_14, 'evaluate', line(org_junit_runners_parent_runner_3, 306), failure_1, non_target).
trace(trace_16, trace_15, 'evaluate', line(org_junit_runners_block_junit4_class_runner_1, 100), failure_1, non_target).
trace(trace_17, trace_16, 'runLeaf', line(org_junit_runners_parent_runner, 366), failure_1, non_target).
trace(trace_18, trace_17, 'runChild', line(org_junit_runners_block_junit4_class_runner, 103), failure_1, non_target).
trace(trace_19, trace_18, 'runChild', line(org_junit_runners_block_junit4_class_runner, 63), failure_1, non_target).
trace(trace_20, trace_19, 'run', line(org_junit_runners_parent_runner_4, 331), failure_1, non_target).
trace(trace_21, trace_20, 'schedule', line(org_junit_runners_parent_runner_1, 79), failure_1, non_target).
trace(trace_22, trace_21, 'runChildren', line(org_junit_runners_parent_runner, 329), failure_1, non_target).
trace(trace_23, trace_22, 'access$100', line(org_junit_runners_parent_runner, 66), failure_1, non_target).
trace(trace_24, trace_23, 'evaluate', line(org_junit_runners_parent_runner_2, 293), failure_1, non_target).
trace(trace_25, trace_24, 'evaluate', line(org_junit_runners_parent_runner_3, 306), failure_1, non_target).
trace(trace_26, trace_25, 'run', line(org_junit_runners_parent_runner, 413), failure_1, non_target).
trace(trace_27, trace_26, 'run', line(org_junit_runner_junit_core, 137), failure_1, non_target).
trace(trace_28, trace_27, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_1, non_target).



%%% End of Static Facts

%%% Values

val(p_type_507, null, line(type_utils_1, 311)).
val(p_type_var_assigns_511, null, line(type_utils_1, 330)).
val(p_type_var_assigns_511, null, line(type_utils_1, 338)).
val(type_utils_1_expr69, null, line(type_utils_1, 464)).
val(v_to_type_arg_521, null, line(type_utils_1, 471)).
val(p_type_var_assigns_531, null, line(type_utils_1, 656)).



%%% End of Facts