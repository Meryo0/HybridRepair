%%% Logic-FL Facts
:- style_check(-discontiguous).

%prepare_ast_1 - com.google.javascript.jscomp.PrepareAst
param(p_compiler_2085, 1, m_prepare_ast_453).
method_invoc(prepare_ast_1_expr1, m_prepare_ast_1508, line(prepare_ast_1, 40)).
argument(p_compiler_2085, 1, prepare_ast_1_expr1).
argument(prepare_ast_1_literal1, 2, prepare_ast_1_expr1).
param(p_compiler_2086, 1, m_prepare_ast_1508).
param(p_check_only_2087, 2, m_prepare_ast_1508).
assign(f_compiler_2088, p_compiler_2086, line(prepare_ast_1, 44)).
assign(f_check_only_2089, p_check_only_2087, line(prepare_ast_1, 45)).
param(p_externs_2090, 1, m_process_1510).
param(p_root_2091, 2, m_process_1510).
method_invoc(prepare_ast_1_expr10, m_traverse_814, line(prepare_ast_1, 68)).
argument(f_compiler_2088, 1, prepare_ast_1_expr10).
argument(p_root_2091, 2, prepare_ast_1_expr10).
argument(prepare_ast_1_expr11, 3, prepare_ast_1_expr10).
ref(t_node_traversal_34, prepare_ast_1_expr10, line(prepare_ast_1, 68)).
param(p_n_2092, 1, m_normalize_node_types_1511).
param(p_n_2093, 1, m_normalize_blocks_1512).
param(p_t_2094, 1, m_should_traverse_1514).
param(p_n_2095, 2, m_should_traverse_1514).
param(p_parent_2096, 3, m_should_traverse_1514).
method_invoc(prepare_ast_1_expr12, m_is_object_lit_1515, line(prepare_ast_1, 126)).
ref(p_n_2095, prepare_ast_1_expr12, line(prepare_ast_1, 126)).
return(prepare_ast_1_literal4, m_should_traverse_1514, line(prepare_ast_1, 129)).
param(p_t_2097, 1, m_visit_1516).
param(p_n_2098, 2, m_visit_1516).
param(p_parent_2099, 3, m_visit_1516).
method_invoc(prepare_ast_1_expr13, m_get_type_824, line(prepare_ast_1, 134)).
ref(p_n_2098, prepare_ast_1_expr13, line(prepare_ast_1, 134)).
method_invoc(prepare_ast_1_expr14, m_annotate_dispatchers_1517, line(prepare_ast_1, 140)).
argument(p_n_2098, 1, prepare_ast_1_expr14).
argument(p_parent_2099, 2, prepare_ast_1_expr14).
param(p_objlit_2100, 1, m_normalize_object_literal_annotations_1518).
param(p_n_2101, 1, m_annotate_calls_1519).
param(p_n_2102, 1, m_annotate_dispatchers_1517).
param(p_parent_2103, 2, m_annotate_dispatchers_1517).
method_invoc(prepare_ast_1_expr15, m_check_state_536, line(prepare_ast_1, 180)).
argument(prepare_ast_1_expr16, 1, prepare_ast_1_expr15).
ref(t_preconditions_19, prepare_ast_1_expr15, line(prepare_ast_1, 180)).
method_invoc(prepare_ast_1_expr16, m_is_function_842, line(prepare_ast_1, 180)).
ref(p_n_2102, prepare_ast_1_expr16, line(prepare_ast_1, 180)).
method_invoc(prepare_ast_1_expr19, m_get_jsdoc_info_1492, line(prepare_ast_1, 181)).
ref(p_parent_2103, prepare_ast_1_expr19, line(prepare_ast_1, 181)).
param(p_objlit_2104, 1, m_normalize_object_literal_key_annotations_1520).
param(p_key_2105, 2, m_normalize_object_literal_key_annotations_1520).
param(p_value_2106, 3, m_normalize_object_literal_key_annotations_1520).

%type_inference_1 - com.google.javascript.jscomp.TypeInference
assign(f_function_literal_undefined_this_2744, type_inference_1_expr1, line(type_inference_1, 68)).
param(p_compiler_2745, 1, m_type_inference_3008).
param(p_cfg_2746, 2, m_type_inference_3008).
param(p_reverse_interpreter_2747, 3, m_type_inference_3008).
param(p_function_scope_2748, 4, m_type_inference_3008).
param(p_assertion_functions_map_2749, 5, m_type_inference_3008).
method_invoc(type_inference_1_expr2, m_branched_forward_data_flow_analysis_922, line(type_inference_1, 88)).
argument(p_cfg_2746, 1, type_inference_1_expr2).
argument(type_inference_1_expr3, 2, type_inference_1_expr2).
method_invoc(type_inference_1_expr3, m_flow_scope_join_op_3009, line(type_inference_1, 88)).
assign(f_compiler_2750, p_compiler_2745, line(type_inference_1, 89)).
assign(f_registry_2751, type_inference_1_expr9, line(type_inference_1, 90)).
method_invoc(type_inference_1_expr9, m_get_type_registry_7, line(type_inference_1, 90)).
ref(p_compiler_2745, type_inference_1_expr9, line(type_inference_1, 90)).
assign(f_reverse_interpreter_2752, p_reverse_interpreter_2747, line(type_inference_1, 91)).
assign(f_unknown_type_2753, type_inference_1_expr16, line(type_inference_1, 92)).
method_invoc(type_inference_1_expr16, m_get_native_object_type_3010, line(type_inference_1, 92)).
argument(f_unknown_type_2754, 1, type_inference_1_expr16).
ref(f_registry_2751, type_inference_1_expr16, line(type_inference_1, 92)).
assign(f_syntactic_scope_2755, p_function_scope_2748, line(type_inference_1, 94)).
method_invoc(type_inference_1_expr21, m_infer_arguments_3011, line(type_inference_1, 95)).
argument(p_function_scope_2748, 1, type_inference_1_expr21).
assign(f_function_scope_2756, type_inference_1_expr24, line(type_inference_1, 97)).
method_invoc(type_inference_1_expr24, m_create_entry_lattice_1232, line(type_inference_1, 97)).
argument(p_function_scope_2748, 1, type_inference_1_expr24).
ref(t_linked_flow_scope_69, type_inference_1_expr24, line(type_inference_1, 97)).
assign(f_assertion_functions_map_2757, p_assertion_functions_map_2749, line(type_inference_1, 98)).
assign(v_var_it_2758, type_inference_1_expr29, line(type_inference_1, 102)).
method_invoc(type_inference_1_expr30, m_has_next_1315, line(type_inference_1, 104)).
ref(v_var_it_2758, type_inference_1_expr30, line(type_inference_1, 104)).
assign(f_bottom_scope_2759, type_inference_1_expr33, line(type_inference_1, 114)).
method_invoc(type_inference_1_expr33, m_create_entry_lattice_1232, line(type_inference_1, 114)).
argument(type_inference_1_expr35, 1, type_inference_1_expr33).
ref(t_linked_flow_scope_69, type_inference_1_expr33, line(type_inference_1, 114)).
param(p_function_scope_2760, 1, m_infer_arguments_3011).
assign(v_function_node_2761, type_inference_1_expr36, line(type_inference_1, 122)).
method_invoc(type_inference_1_expr36, m_get_root_node_1646, line(type_inference_1, 122)).
ref(p_function_scope_2760, type_inference_1_expr36, line(type_inference_1, 122)).
assign(v_ast_parameters_2762, type_inference_1_expr37, line(type_inference_1, 123)).
method_invoc(type_inference_1_expr37, m_get_next_827, line(type_inference_1, 123)).
ref(type_inference_1_expr38, type_inference_1_expr37, line(type_inference_1, 123)).
method_invoc(type_inference_1_expr38, m_get_first_child_828, line(type_inference_1, 123)).
ref(v_function_node_2761, type_inference_1_expr38, line(type_inference_1, 123)).
assign(v_iife_argument_node_2763, type_inference_1_literal1, line(type_inference_1, 124)).
method_invoc(type_inference_1_expr39, m_is_call_or_new_target_1489, line(type_inference_1, 126)).
argument(v_function_node_2761, 1, type_inference_1_expr39).
ref(t_node_util_50, type_inference_1_expr39, line(type_inference_1, 126)).
assign(v_function_type_2764, type_inference_1_expr40, line(type_inference_1, 130)).
assign(v_parameter_types_2765, type_inference_1_expr42, line(type_inference_1, 133)).
method_invoc(type_inference_1_expr42, m_get_parameters_node_3012, line(type_inference_1, 133)).
ref(v_function_type_2764, type_inference_1_expr42, line(type_inference_1, 133)).
assign(v_parameter_type_node_2766, type_inference_1_expr44, line(type_inference_1, 135)).
method_invoc(type_inference_1_expr44, m_get_first_child_828, line(type_inference_1, 135)).
ref(v_parameter_types_2765, type_inference_1_expr44, line(type_inference_1, 135)).
ref(type_inference_1_expr45, type_inference_1_stmt22, line(type_inference_1, 136)).
method_invoc(type_inference_1_expr45, m_children_1084, line(type_inference_1, 136)).
ref(v_ast_parameters_2762, type_inference_1_expr45, line(type_inference_1, 136)).
return(f_bottom_scope_2759, m_create_initial_estimate_lattice_3013, line(type_inference_1, 168)).
return(f_function_scope_2756, m_create_entry_lattice_3014, line(type_inference_1, 173)).
param(p_n_2768, 1, m_flow_through_3015).
param(p_input_2769, 2, m_flow_through_3015).
assign(v_output_2770, type_inference_1_expr47, line(type_inference_1, 184)).
method_invoc(type_inference_1_expr47, m_create_child_flow_scope_3016, line(type_inference_1, 184)).
ref(p_input_2769, type_inference_1_expr47, line(type_inference_1, 184)).
assign(v_output_2770, type_inference_1_expr49, line(type_inference_1, 185)).
method_invoc(type_inference_1_expr49, m_traverse_3017, line(type_inference_1, 185)).
argument(p_n_2768, 1, type_inference_1_expr49).
argument(v_output_2770, 2, type_inference_1_expr49).
return(v_output_2770, m_flow_through_3015, line(type_inference_1, 186)).
param(p_source_2771, 1, m_branched_flow_through_3018).
param(p_input_2772, 2, m_branched_flow_through_3018).
assign(v_output_2773, type_inference_1_expr50, line(type_inference_1, 197)).
method_invoc(type_inference_1_expr50, m_flow_through_3015, line(type_inference_1, 197)).
argument(p_source_2771, 1, type_inference_1_expr50).
argument(p_input_2772, 2, type_inference_1_expr50).
assign(v_condition_2774, type_inference_1_literal4, line(type_inference_1, 198)).
assign(v_condition_flow_scope_2775, type_inference_1_literal5, line(type_inference_1, 199)).
assign(v_condition_outcomes_2776, type_inference_1_literal6, line(type_inference_1, 200)).
assign(v_branch_edges_2777, type_inference_1_expr51, line(type_inference_1, 202)).
method_invoc(type_inference_1_expr51, m_get_out_edges_919, line(type_inference_1, 202)).
argument(p_source_2771, 1, type_inference_1_expr51).
ref(type_inference_1_expr52, type_inference_1_expr51, line(type_inference_1, 202)).
method_invoc(type_inference_1_expr52, m_get_cfg_892, line(type_inference_1, 202)).
assign(v_result_2778, type_inference_1_expr53, line(type_inference_1, 203)).
method_invoc(type_inference_1_expr53, m_new_array_list_with_capacity_3019, line(type_inference_1, 203)).
argument(type_inference_1_expr54, 1, type_inference_1_expr53).
ref(t_lists_22, type_inference_1_expr53, line(type_inference_1, 203)).
method_invoc(type_inference_1_expr54, m_size_918, line(type_inference_1, 203)).
ref(v_branch_edges_2777, type_inference_1_expr54, line(type_inference_1, 203)).
ref(v_branch_edges_2777, type_inference_1_stmt35, line(type_inference_1, 204)).
assign(v_branch_2780, type_inference_1_expr55, line(type_inference_1, 205)).
method_invoc(type_inference_1_expr55, m_get_value_3020, line(type_inference_1, 205)).
ref(v_branch_edge_2779, type_inference_1_expr55, line(type_inference_1, 205)).
assign(v_new_scope_2781, v_output_2773, line(type_inference_1, 206)).
method_invoc(type_inference_1_expr56, m_add_330, line(type_inference_1, 298)).
argument(type_inference_1_expr57, 1, type_inference_1_expr56).
ref(v_result_2778, type_inference_1_expr56, line(type_inference_1, 298)).
method_invoc(type_inference_1_expr57, m_optimize_3021, line(type_inference_1, 298)).
ref(v_new_scope_2781, type_inference_1_expr57, line(type_inference_1, 298)).
return(v_result_2778, m_branched_flow_through_3018, line(type_inference_1, 300)).
param(p_n_2782, 1, m_traverse_3017).
param(p_scope_2783, 2, m_traverse_3017).
method_invoc(type_inference_1_expr58, m_get_type_824, line(type_inference_1, 304)).
ref(p_n_2782, type_inference_1_expr58, line(type_inference_1, 304)).
method_invoc(type_inference_1_expr60, m_is_function_842, line(type_inference_1, 454)).
ref(p_n_2782, type_inference_1_expr60, line(type_inference_1, 454)).
assign(v_info_2784, type_inference_1_expr61, line(type_inference_1, 455)).
method_invoc(type_inference_1_expr61, m_get_jsdoc_info_1492, line(type_inference_1, 455)).
ref(p_n_2782, type_inference_1_expr61, line(type_inference_1, 455)).
method_invoc(type_inference_1_expr64, m_has_type_3022, line(type_inference_1, 456)).
ref(v_info_2784, type_inference_1_expr64, line(type_inference_1, 456)).
return(p_scope_2783, m_traverse_3017, line(type_inference_1, 471)).
param(p_n_2785, 1, m_traverse_return_3023).
param(p_scope_2786, 2, m_traverse_return_3023).
param(p_catch_node_2787, 1, m_traverse_catch_3024).
param(p_scope_2788, 2, m_traverse_catch_3024).
param(p_n_2789, 1, m_traverse_assign_3025).
param(p_scope_2790, 2, m_traverse_assign_3025).
param(p_scope_2791, 1, m_update_scope_for_type_change_3026).
param(p_left_2792, 2, m_update_scope_for_type_change_3026).
param(p_left_type_2793, 3, m_update_scope_for_type_change_3026).
param(p_result_type_2794, 4, m_update_scope_for_type_change_3026).
param(p_getprop_2795, 1, m_ensure_property_defined_3027).
param(p_right_type_2796, 2, m_ensure_property_defined_3027).
param(p_getprop_2797, 1, m_ensure_property_declared_3028).
param(p_getprop_2798, 1, m_ensure_property_declared_helper_3029).
param(p_object_type_2799, 2, m_ensure_property_declared_helper_3029).
param(p_n_2800, 1, m_traverse_name_3030).
param(p_scope_2801, 2, m_traverse_name_3030).
param(p_n_2802, 1, m_traverse_array_literal_3031).
param(p_scope_2803, 2, m_traverse_array_literal_3031).
param(p_n_2804, 1, m_traverse_object_literal_3032).
param(p_scope_2805, 2, m_traverse_object_literal_3032).
param(p_n_2806, 1, m_traverse_add_3033).
param(p_scope_2807, 2, m_traverse_add_3033).
param(p_type_2808, 1, m_is_added_as_number_3034).
param(p_n_2809, 1, m_traverse_hook_3035).
param(p_scope_2810, 2, m_traverse_hook_3035).
param(p_n_2811, 1, m_traverse_call_3036).
param(p_scope_2812, 2, m_traverse_call_3036).
param(p_scope_2813, 1, m_tighten_types_after_assertions_3037).
param(p_call_node_2814, 2, m_tighten_types_after_assertions_3037).
param(p_scope_2815, 1, m_narrow_scope_3038).
param(p_node_2816, 2, m_narrow_scope_3038).
param(p_narrowed_2817, 3, m_narrow_scope_3038).
param(p_n_2818, 1, m_backwards_inference_from_call_site_3039).
param(p_fn_type_2819, 2, m_backwards_inference_from_call_site_3039).
param(p_n_2820, 1, m_update_bind_3040).
param(p_fn_type_2821, 2, m_update_bind_3040).
param(p_n_2822, 1, m_update_type_of_parameters_3041).
param(p_fn_type_2823, 2, m_update_type_of_parameters_3041).
param(p_fn_type_2824, 1, m_infer_template_types_from_parameters_3042).
param(p_call_2825, 2, m_infer_template_types_from_parameters_3042).
param(p_param_type_2826, 1, m_maybe_resolve_templated_type_3043).
param(p_arg_type_2827, 2, m_maybe_resolve_templated_type_3043).
param(p_resolved_types_2828, 3, m_maybe_resolve_templated_type_3043).
param(p_decl_params_2829, 1, m_maybe_resolve_template_type_from_nodes_3044).
param(p_call_params_2830, 2, m_maybe_resolve_template_type_from_nodes_3044).
param(p_resolved_types_2831, 3, m_maybe_resolve_template_type_from_nodes_3044).
param(p_decl_params_2832, 1, m_maybe_resolve_template_type_from_nodes_3045).
param(p_call_params_2833, 2, m_maybe_resolve_template_type_from_nodes_3045).
param(p_resolved_types_2834, 3, m_maybe_resolve_template_type_from_nodes_3045).
param(p_map_2835, 1, m_resolved_template_type_3046).
param(p_template_2836, 2, m_resolved_template_type_3046).
param(p_resolved_2837, 3, m_resolved_template_type_3046).
param(p_registry_2838, 1, m_template_type_replacer_3047).
param(p_replacements_2839, 2, m_template_type_replacer_3047).
param(p_type_2840, 1, m_case_template_type_3048).
param(p_n_2841, 1, m_infer_templated_types_for_call_3049).
param(p_fn_type_2842, 2, m_infer_templated_types_for_call_3049).
param(p_n_2843, 1, m_traverse_new_3050).
param(p_scope_2844, 2, m_traverse_new_3050).
param(p_n_2845, 1, m_traverse_and_3051).
param(p_scope_2846, 2, m_traverse_and_3051).
param(p_n_2847, 1, m_traverse_children_3052).
param(p_scope_2848, 2, m_traverse_children_3052).
param(p_n_2849, 1, m_traverse_get_elem_3053).
param(p_scope_2850, 2, m_traverse_get_elem_3053).
param(p_n_2851, 1, m_traverse_get_prop_3054).
param(p_scope_2852, 2, m_traverse_get_prop_3054).
param(p_type_2853, 1, m_infer_property_types_to_match_constraint_3055).
param(p_constraint_2854, 2, m_infer_property_types_to_match_constraint_3055).
param(p_n_2855, 1, m_dereference_pointer_3056).
param(p_scope_2856, 2, m_dereference_pointer_3056).
param(p_obj_type_2857, 1, m_get_property_type_3057).
param(p_prop_name_2858, 2, m_get_property_type_3057).
param(p_n_2859, 3, m_get_property_type_3057).
param(p_scope_2860, 4, m_get_property_type_3057).
param(p_n_2861, 1, m_traverse_or_3058).
param(p_scope_2862, 2, m_traverse_or_3058).
param(p_n_2863, 1, m_traverse_short_circuiting_bin_op_3059).
param(p_scope_2864, 2, m_traverse_short_circuiting_bin_op_3059).
param(p_condition_2865, 3, m_traverse_short_circuiting_bin_op_3059).
param(p_n_2866, 1, m_traverse_within_short_circuiting_bin_op_3060).
param(p_scope_2867, 2, m_traverse_within_short_circuiting_bin_op_3060).
param(p_left_2868, 1, m_get_boolean_outcome_pair_3061).
param(p_right_2869, 2, m_get_boolean_outcome_pair_3061).
param(p_condition_2870, 3, m_get_boolean_outcome_pair_3061).
param(p_left_2871, 1, m_get_boolean_outcomes_3062).
param(p_right_2872, 2, m_get_boolean_outcomes_3062).
param(p_condition_2873, 3, m_get_boolean_outcomes_3062).
param(p_to_boolean_outcomes_2874, 1, m_boolean_outcome_pair_3063).
param(p_boolean_values_2875, 2, m_boolean_outcome_pair_3063).
param(p_left_scope_2876, 3, m_boolean_outcome_pair_3063).
param(p_right_scope_2877, 4, m_boolean_outcome_pair_3063).
param(p_node_type_2878, 1, m_get_outcome_flow_scope_3065).
param(p_outcome_2879, 2, m_get_outcome_flow_scope_3065).
param(p_js_type_2880, 1, m_new_boolean_outcome_pair_3066).
param(p_flow_scope_2881, 2, m_new_boolean_outcome_pair_3066).
param(p_scope_2882, 1, m_redeclare_simple_var_3067).
param(p_name_node_2883, 2, m_redeclare_simple_var_3067).
param(p_var_type_2884, 3, m_redeclare_simple_var_3067).
param(p_v_2885, 1, m_is_unflowable_3068).
param(p_n_2886, 1, m_get_jstype_3069).
param(p_type_id_2887, 1, m_get_native_type_3070).

%instance_object_type_1 - com.google.javascript.rhino.jstype.InstanceObjectType
param(p_registry_4845, 1, m_instance_object_type_4348).
param(p_constructor_4846, 2, m_instance_object_type_4348).
method_invoc(instance_object_type_1_expr1, m_instance_object_type_4421, line(instance_object_type_1, 57)).
argument(p_registry_4845, 1, instance_object_type_1_expr1).
argument(p_constructor_4846, 2, instance_object_type_1_expr1).
argument(instance_object_type_1_literal1, 3, instance_object_type_1_expr1).
argument(instance_object_type_1_literal2, 4, instance_object_type_1_expr1).
param(p_registry_4847, 1, m_instance_object_type_4421).
param(p_constructor_4848, 2, m_instance_object_type_4421).
param(p_is_native_type_4849, 3, m_instance_object_type_4421).
param(p_templatized_types_4850, 4, m_instance_object_type_4421).
method_invoc(instance_object_type_1_expr2, m_prototype_object_type_4344, line(instance_object_type_1, 63)).
argument(p_registry_4847, 1, instance_object_type_1_expr2).
argument(instance_object_type_1_literal3, 2, instance_object_type_1_expr2).
argument(instance_object_type_1_literal4, 3, instance_object_type_1_expr2).
argument(p_is_native_type_4849, 4, instance_object_type_1_expr2).
argument(instance_object_type_1_expr3, 5, instance_object_type_1_expr2).
argument(p_templatized_types_4850, 6, instance_object_type_1_expr2).
method_invoc(instance_object_type_1_expr3, m_get_template_keys_4422, line(instance_object_type_1, 63)).
ref(p_constructor_4848, instance_object_type_1_expr3, line(instance_object_type_1, 63)).
method_invoc(instance_object_type_1_expr4, m_check_not_null_538, line(instance_object_type_1, 65)).
argument(p_constructor_4848, 1, instance_object_type_1_expr4).
ref(t_preconditions_19, instance_object_type_1_expr4, line(instance_object_type_1, 65)).
assign(f_constructor_4851, p_constructor_4848, line(instance_object_type_1, 66)).
return(instance_object_type_1_expr8, m_get_reference_name_4423, line(instance_object_type_1, 71)).
method_invoc(instance_object_type_1_expr8, m_get_reference_name_4366, line(instance_object_type_1, 71)).
ref(instance_object_type_1_expr9, instance_object_type_1_expr8, line(instance_object_type_1, 71)).
method_invoc(instance_object_type_1_expr9, m_get_constructor_4424, line(instance_object_type_1, 71)).
return(instance_object_type_1_expr10, m_has_reference_name_4425, line(instance_object_type_1, 76)).
method_invoc(instance_object_type_1_expr10, m_has_reference_name_4426, line(instance_object_type_1, 76)).
ref(instance_object_type_1_expr11, instance_object_type_1_expr10, line(instance_object_type_1, 76)).
method_invoc(instance_object_type_1_expr11, m_get_constructor_4424, line(instance_object_type_1, 76)).
return(instance_object_type_1_expr12, m_get_implicit_prototype_4427, line(instance_object_type_1, 81)).
method_invoc(instance_object_type_1_expr12, m_get_prototype_4364, line(instance_object_type_1, 81)).
ref(instance_object_type_1_expr13, instance_object_type_1_expr12, line(instance_object_type_1, 81)).
method_invoc(instance_object_type_1_expr13, m_get_constructor_4424, line(instance_object_type_1, 81)).
return(f_constructor_4851, m_get_constructor_4424, line(instance_object_type_1, 86)).
param(p_name_4852, 1, m_define_property_4428).
param(p_type_4853, 2, m_define_property_4428).
param(p_inferred_4854, 3, m_define_property_4428).
param(p_property_node_4855, 4, m_define_property_4428).
assign(v_proto_4856, instance_object_type_1_expr14, line(instance_object_type_1, 92)).
method_invoc(instance_object_type_1_expr14, m_get_implicit_prototype_4427, line(instance_object_type_1, 92)).
method_invoc(instance_object_type_1_expr17, m_has_own_declared_property_4429, line(instance_object_type_1, 93)).
argument(p_name_4852, 1, instance_object_type_1_expr17).
ref(v_proto_4856, instance_object_type_1_expr17, line(instance_object_type_1, 93)).
return(instance_object_type_1_expr18, m_define_property_4428, line(instance_object_type_1, 96)).
method_invoc(instance_object_type_1_expr18, m_define_property_4430, line(instance_object_type_1, 96)).
argument(p_name_4852, 1, instance_object_type_1_expr18).
argument(p_type_4853, 2, instance_object_type_1_expr18).
argument(p_inferred_4854, 3, instance_object_type_1_expr18).
argument(p_property_node_4855, 4, instance_object_type_1_expr18).
param(p_for_annotations_4857, 1, m_to_string_helper_4431).
method_invoc(instance_object_type_1_expr19, m_has_reference_name_4426, line(instance_object_type_1, 101)).
ref(f_constructor_4851, instance_object_type_1_expr19, line(instance_object_type_1, 101)).
assign(v_type_string_4858, instance_object_type_1_expr20, line(instance_object_type_1, 102)).
method_invoc(instance_object_type_1_expr20, m_get_reference_name_4366, line(instance_object_type_1, 102)).
ref(f_constructor_4851, instance_object_type_1_expr20, line(instance_object_type_1, 102)).
assign(v_templatized_types_4859, instance_object_type_1_expr21, line(instance_object_type_1, 104)).
method_invoc(instance_object_type_1_expr21, m_get_templatized_types_4432, line(instance_object_type_1, 104)).
method_invoc(instance_object_type_1_expr23, m_is_empty_4433, line(instance_object_type_1, 105)).
ref(v_templatized_types_4859, instance_object_type_1_expr23, line(instance_object_type_1, 105)).
return(v_type_string_4858, m_to_string_helper_4431, line(instance_object_type_1, 109)).
return(instance_object_type_1_expr24, m_is_nominal_type_4442, line(instance_object_type_1, 164)).
method_invoc(instance_object_type_1_expr24, m_has_reference_name_4425, line(instance_object_type_1, 164)).
method_invoc(instance_object_type_1_expr25, m_has_reference_name_4425, line(instance_object_type_1, 173)).
return(instance_object_type_1_expr26, m_hash_code_4443, line(instance_object_type_1, 174)).
method_invoc(instance_object_type_1_expr26, m_hash_code_982, line(instance_object_type_1, 174)).
ref(instance_object_type_1_expr27, instance_object_type_1_expr26, line(instance_object_type_1, 174)).
method_invoc(instance_object_type_1_expr27, m_get_reference_name_4423, line(instance_object_type_1, 174)).
return(instance_object_type_1_expr28, m_get_ctor_extended_interfaces_4445, line(instance_object_type_1, 187)).
method_invoc(instance_object_type_1_expr28, m_get_extended_interfaces_1810, line(instance_object_type_1, 187)).
ref(instance_object_type_1_expr29, instance_object_type_1_expr28, line(instance_object_type_1, 187)).
method_invoc(instance_object_type_1_expr29, m_get_constructor_4424, line(instance_object_type_1, 187)).

%jserror_1 - com.google.javascript.jscomp.JSError
param(p_type_1537, 1, m_make_1156).
param(p_arguments_1538, 2, m_make_1156).
param(p_source_name_1539, 1, m_make_1157).
param(p_lineno_1540, 2, m_make_1157).
param(p_charno_1541, 3, m_make_1157).
param(p_type_1542, 4, m_make_1157).
param(p_arguments_1543, 5, m_make_1157).
return(jserror_1_expr1, m_make_1157, line(jserror_1, 87)).
method_invoc(jserror_1_expr1, m_jserror_1158, line(jserror_1, 87)).
argument(p_source_name_1539, 1, jserror_1_expr1).
argument(jserror_1_literal1, 2, jserror_1_expr1).
argument(p_lineno_1540, 3, jserror_1_expr1).
argument(p_charno_1541, 4, jserror_1_expr1).
argument(p_type_1542, 5, jserror_1_expr1).
argument(jserror_1_literal2, 6, jserror_1_expr1).
argument(p_arguments_1543, 7, jserror_1_expr1).
param(p_source_name_1544, 1, m_make_1159).
param(p_lineno_1545, 2, m_make_1159).
param(p_charno_1546, 3, m_make_1159).
param(p_level_1547, 4, m_make_1159).
param(p_type_1548, 5, m_make_1159).
param(p_arguments_1549, 6, m_make_1159).
param(p_source_name_1550, 1, m_make_1160).
param(p_n_1551, 2, m_make_1160).
param(p_type_1552, 3, m_make_1160).
param(p_arguments_1553, 4, m_make_1160).
param(p_n_1554, 1, m_make_1161).
param(p_type_1555, 2, m_make_1161).
param(p_arguments_1556, 3, m_make_1161).
param(p_source_name_1557, 1, m_make_1162).
param(p_n_1558, 2, m_make_1162).
param(p_level_1559, 3, m_make_1162).
param(p_type_1560, 4, m_make_1162).
param(p_arguments_1561, 5, m_make_1162).
param(p_source_name_1562, 1, m_jserror_1158).
param(p_node_1563, 2, m_jserror_1158).
param(p_lineno_1564, 3, m_jserror_1158).
param(p_charno_1565, 4, m_jserror_1158).
param(p_type_1566, 5, m_jserror_1158).
param(p_level_1567, 6, m_jserror_1158).
param(p_arguments_1568, 7, m_jserror_1158).
assign(f_type_1569, p_type_1566, line(jserror_1, 155)).
assign(f_node_1570, p_node_1563, line(jserror_1, 156)).
assign(f_description_72, jserror_1_expr10, line(jserror_1, 157)).
method_invoc(jserror_1_expr10, m_format_1163, line(jserror_1, 157)).
argument(p_arguments_1568, 1, jserror_1_expr10).
ref(f_format_1296, jserror_1_expr10, line(jserror_1, 157)).
ref(p_type_1566, q_format_49, line(jserror_1, 157)).
assign(f_line_number_1571, p_lineno_1564, line(jserror_1, 158)).
assign(f_charno_1572, p_charno_1565, line(jserror_1, 159)).
assign(f_source_name_1573, p_source_name_1562, line(jserror_1, 160)).
assign(f_default_level_1574, jserror_1_expr23, line(jserror_1, 161)).
cond_expr(jserror_1_expr25, q_level_50, p_level_1567, line(jserror_1, 161)).
ref(p_type_1566, q_level_50, line(jserror_1, 161)).
assign(f_level_1575, jserror_1_expr28, line(jserror_1, 162)).
cond_expr(jserror_1_expr30, q_level_51, p_level_1567, line(jserror_1, 162)).
ref(p_type_1566, q_level_51, line(jserror_1, 162)).
param(p_source_name_1576, 1, m_jserror_1164).
param(p_node_1577, 2, m_jserror_1164).
param(p_type_1578, 3, m_jserror_1164).
param(p_arguments_1579, 4, m_jserror_1164).
return(f_type_1569, m_get_type_960, line(jserror_1, 179)).
param(p_level_1580, 1, m_format_1165).
param(p_formatter_1581, 2, m_format_1165).
return(f_charno_1572, m_get_charno_81, line(jserror_1, 214)).
return(f_default_level_1574, m_get_default_level_470, line(jserror_1, 242)).
param(p_o_1582, 1, m_equals_1170).

%type_validator_1 - com.google.javascript.jscomp.TypeValidator
assign(f_should_report_2916, type_validator_1_literal1, line(type_validator_1, 63)).
assign(f_mismatches_2917, type_validator_1_expr1, line(type_validator_1, 69)).
method_invoc(type_validator_1_expr1, m_new_array_list_329, line(type_validator_1, 69)).
ref(t_lists_22, type_validator_1_expr1, line(type_validator_1, 69)).
assign(f_invalid_cast_2918, type_validator_1_expr2, line(type_validator_1, 78)).
assign(f_type_mismatch_warning_2919, type_validator_1_expr3, line(type_validator_1, 84)).
assign(f_missing_extends_tag_warning_2920, type_validator_1_expr4, line(type_validator_1, 89)).
assign(f_dup_var_declaration_2921, type_validator_1_expr5, line(type_validator_1, 94)).
assign(f_hidden_property_mismatch_2922, type_validator_1_expr6, line(type_validator_1, 99)).
assign(f_interface_method_not_implemented_2923, type_validator_1_expr7, line(type_validator_1, 106)).
assign(f_hidden_interface_property_mismatch_2924, type_validator_1_expr8, line(type_validator_1, 111)).
assign(f_unknown_typeof_value_2925, type_validator_1_expr9, line(type_validator_1, 119)).
assign(f_illegal_property_access_2926, type_validator_1_expr10, line(type_validator_1, 122)).
assign(f_all_diagnostics_2927, type_validator_1_expr11, line(type_validator_1, 126)).
method_invoc(type_validator_1_expr11, m_diagnostic_group_953, line(type_validator_1, 126)).
argument(f_invalid_cast_2918, 1, type_validator_1_expr11).
argument(f_type_mismatch_warning_2919, 2, type_validator_1_expr11).
argument(f_missing_extends_tag_warning_2920, 3, type_validator_1_expr11).
argument(f_dup_var_declaration_2921, 4, type_validator_1_expr11).
argument(f_hidden_property_mismatch_2922, 5, type_validator_1_expr11).
argument(f_interface_method_not_implemented_2923, 6, type_validator_1_expr11).
argument(f_hidden_interface_property_mismatch_2924, 7, type_validator_1_expr11).
argument(f_unknown_typeof_value_2925, 8, type_validator_1_expr11).
argument(f_illegal_property_access_2926, 9, type_validator_1_expr11).
param(p_compiler_2928, 1, m_type_validator_409).
assign(f_compiler_2929, p_compiler_2928, line(type_validator_1, 138)).
assign(f_type_registry_2930, type_validator_1_expr17, line(type_validator_1, 139)).
method_invoc(type_validator_1_expr17, m_get_type_registry_7, line(type_validator_1, 139)).
ref(p_compiler_2928, type_validator_1_expr17, line(type_validator_1, 139)).
assign(f_all_value_types_2931, type_validator_1_expr21, line(type_validator_1, 140)).
method_invoc(type_validator_1_expr21, m_create_union_type_3079, line(type_validator_1, 140)).
argument(f_string_type_2932, 1, type_validator_1_expr21).
argument(f_number_type_2933, 2, type_validator_1_expr21).
argument(f_boolean_type_2934, 3, type_validator_1_expr21).
argument(f_null_type_2935, 4, type_validator_1_expr21).
argument(f_void_type_1494, 5, type_validator_1_expr21).
ref(f_type_registry_2930, type_validator_1_expr21, line(type_validator_1, 140)).
assign(f_null_or_undefined_2936, type_validator_1_expr25, line(type_validator_1, 142)).
method_invoc(type_validator_1_expr25, m_create_union_type_3079, line(type_validator_1, 142)).
argument(f_null_type_2935, 1, type_validator_1_expr25).
argument(f_void_type_1494, 2, type_validator_1_expr25).
ref(f_type_registry_2930, type_validator_1_expr25, line(type_validator_1, 142)).
param(p_report_2937, 1, m_set_should_report_1780).
assign(f_should_report_2916, p_report_2937, line(type_validator_1, 157)).
param(p_t_2938, 1, m_expect_valid_typeof_name_3081).
param(p_n_2939, 2, m_expect_valid_typeof_name_3081).
param(p_found_2940, 3, m_expect_valid_typeof_name_3081).
param(p_t_2941, 1, m_expect_object_3082).
param(p_n_2942, 2, m_expect_object_3082).
param(p_type_2943, 3, m_expect_object_3082).
param(p_msg_2944, 4, m_expect_object_3082).
param(p_t_2945, 1, m_expect_actual_object_3083).
param(p_n_2946, 2, m_expect_actual_object_3083).
param(p_type_2947, 3, m_expect_actual_object_3083).
param(p_msg_2948, 4, m_expect_actual_object_3083).
param(p_t_2949, 1, m_expect_any_object_3084).
param(p_n_2950, 2, m_expect_any_object_3084).
param(p_type_2951, 3, m_expect_any_object_3084).
param(p_msg_2952, 4, m_expect_any_object_3084).
param(p_t_2953, 1, m_expect_string_3085).
param(p_n_2954, 2, m_expect_string_3085).
param(p_type_2955, 3, m_expect_string_3085).
param(p_msg_2956, 4, m_expect_string_3085).
param(p_t_2957, 1, m_expect_number_3086).
param(p_n_2958, 2, m_expect_number_3086).
param(p_type_2959, 3, m_expect_number_3086).
param(p_msg_2960, 4, m_expect_number_3086).
param(p_t_2961, 1, m_expect_bitwiseable_3087).
param(p_n_2962, 2, m_expect_bitwiseable_3087).
param(p_type_2963, 3, m_expect_bitwiseable_3087).
param(p_msg_2964, 4, m_expect_bitwiseable_3087).
param(p_t_2965, 1, m_expect_string_or_number_3088).
param(p_n_2966, 2, m_expect_string_or_number_3088).
param(p_type_2967, 3, m_expect_string_or_number_3088).
param(p_msg_2968, 4, m_expect_string_or_number_3088).
param(p_t_2969, 1, m_expect_not_null_or_undefined_3089).
param(p_n_2970, 2, m_expect_not_null_or_undefined_3089).
param(p_type_2971, 3, m_expect_not_null_or_undefined_3089).
param(p_msg_2972, 4, m_expect_not_null_or_undefined_3089).
param(p_expected_type_2973, 5, m_expect_not_null_or_undefined_3089).
param(p_type_2974, 1, m_contains_forward_declared_unresolved_name_3090).
param(p_t_2975, 1, m_expect_switch_matches_case_3091).
param(p_n_2976, 2, m_expect_switch_matches_case_3091).
param(p_switch_type_2977, 3, m_expect_switch_matches_case_3091).
param(p_case_type_2978, 4, m_expect_switch_matches_case_3091).
param(p_t_2979, 1, m_expect_index_match_3092).
param(p_n_2980, 2, m_expect_index_match_3092).
param(p_obj_type_2981, 3, m_expect_index_match_3092).
param(p_index_type_2982, 4, m_expect_index_match_3092).
param(p_t_2983, 1, m_expect_can_assign_to_property_of_3093).
param(p_n_2984, 2, m_expect_can_assign_to_property_of_3093).
param(p_right_type_2985, 3, m_expect_can_assign_to_property_of_3093).
param(p_left_type_2986, 4, m_expect_can_assign_to_property_of_3093).
param(p_owner_2987, 5, m_expect_can_assign_to_property_of_3093).
param(p_prop_name_2988, 6, m_expect_can_assign_to_property_of_3093).
param(p_t_2989, 1, m_expect_can_assign_to_3094).
param(p_n_2990, 2, m_expect_can_assign_to_3094).
param(p_right_type_2991, 3, m_expect_can_assign_to_3094).
param(p_left_type_2992, 4, m_expect_can_assign_to_3094).
param(p_msg_2993, 5, m_expect_can_assign_to_3094).
param(p_t_2994, 1, m_expect_argument_matches_parameter_3095).
param(p_n_2995, 2, m_expect_argument_matches_parameter_3095).
param(p_arg_type_2996, 3, m_expect_argument_matches_parameter_3095).
param(p_param_type_2997, 4, m_expect_argument_matches_parameter_3095).
param(p_call_node_2998, 5, m_expect_argument_matches_parameter_3095).
param(p_ordinal_2999, 6, m_expect_argument_matches_parameter_3095).
param(p_t_3000, 1, m_expect_can_override_3096).
param(p_n_3001, 2, m_expect_can_override_3096).
param(p_overriding_type_3002, 3, m_expect_can_override_3096).
param(p_hidden_type_3003, 4, m_expect_can_override_3096).
param(p_property_name_3004, 5, m_expect_can_override_3096).
param(p_owner_type_3005, 6, m_expect_can_override_3096).
param(p_t_3006, 1, m_expect_super_type_3097).
param(p_n_3007, 2, m_expect_super_type_3097).
param(p_super_object_3008, 3, m_expect_super_type_3097).
param(p_sub_object_3009, 4, m_expect_super_type_3097).
param(p_t_3010, 1, m_expect_can_cast_3098).
param(p_n_3011, 2, m_expect_can_cast_3098).
param(p_cast_type_3012, 3, m_expect_can_cast_3098).
param(p_type_3013, 4, m_expect_can_cast_3098).
param(p_source_name_3014, 1, m_expect_undeclared_variable_3099).
param(p_input_3015, 2, m_expect_undeclared_variable_3099).
param(p_n_3016, 3, m_expect_undeclared_variable_3099).
param(p_parent_3017, 4, m_expect_undeclared_variable_3099).
param(p_var_3018, 5, m_expect_undeclared_variable_3099).
param(p_variable_name_3019, 6, m_expect_undeclared_variable_3099).
param(p_new_type_3020, 7, m_expect_undeclared_variable_3099).
param(p_t_3021, 1, m_expect_all_interface_properties_3100).
param(p_n_3022, 2, m_expect_all_interface_properties_3100).
param(p_type_3023, 3, m_expect_all_interface_properties_3100).
param(p_t_3024, 1, m_expect_interface_property_3101).
param(p_n_3025, 2, m_expect_interface_property_3101).
param(p_instance_3026, 3, m_expect_interface_property_3101).
param(p_implemented_interface_3027, 4, m_expect_interface_property_3101).
param(p_prop_3028, 5, m_expect_interface_property_3101).
param(p_t_3029, 1, m_mismatch_3102).
param(p_n_3030, 2, m_mismatch_3102).
param(p_msg_3031, 3, m_mismatch_3102).
param(p_found_3032, 4, m_mismatch_3102).
param(p_required_3033, 5, m_mismatch_3102).
param(p_t_3034, 1, m_mismatch_3103).
param(p_n_3035, 2, m_mismatch_3103).
param(p_msg_3036, 3, m_mismatch_3103).
param(p_found_3037, 4, m_mismatch_3103).
param(p_required_3038, 5, m_mismatch_3103).
param(p_source_name_3039, 1, m_mismatch_3104).
param(p_n_3040, 2, m_mismatch_3104).
param(p_msg_3041, 3, m_mismatch_3104).
param(p_found_3042, 4, m_mismatch_3104).
param(p_required_3043, 5, m_mismatch_3104).
param(p_found_3044, 1, m_register_mismatch_3105).
param(p_required_3045, 2, m_register_mismatch_3105).
param(p_error_3046, 3, m_register_mismatch_3105).
param(p_found_3047, 1, m_register_if_mismatch_3106).
param(p_required_3048, 2, m_register_if_mismatch_3106).
param(p_error_3049, 3, m_register_if_mismatch_3106).
param(p_description_3050, 1, m_format_found_required_3107).
param(p_found_3051, 2, m_format_found_required_3107).
param(p_required_3052, 3, m_format_found_required_3107).
param(p_n_3053, 1, m_get_readable_jstype_name_3108).
param(p_dereference_3054, 2, m_get_readable_jstype_name_3108).
param(p_n_3055, 1, m_get_jstype_3109).
param(p_type_id_3056, 1, m_get_native_type_3110).
param(p_error_3057, 1, m_report_3111).
param(p_a_3058, 1, m_type_mismatch_3112).
param(p_b_3059, 2, m_type_mismatch_3112).
param(p_src_3060, 3, m_type_mismatch_3112).
param(p_object_3061, 1, m_equals_3113).

%no_resolved_type_1 - com.google.javascript.rhino.jstype.NoResolvedType
param(p_registry_5270, 1, m_no_resolved_type_4575).
method_invoc(no_resolved_type_1_expr1, m_no_type_4573, line(no_resolved_type_1, 59)).
argument(p_registry_5270, 1, no_resolved_type_1_expr1).
param(p_that_5271, 1, m_is_subtype_4707).
param(p_for_annotations_5272, 1, m_to_string_helper_4708).

%arrow_type_1 - com.google.javascript.rhino.jstype.ArrowType
param(p_registry_4656, 1, m_arrow_type_4270).
param(p_parameters_4657, 2, m_arrow_type_4270).
param(p_return_type_4658, 3, m_arrow_type_4270).
method_invoc(arrow_type_1_expr1, m_arrow_type_4271, line(arrow_type_1, 64)).
argument(p_registry_4656, 1, arrow_type_1_expr1).
argument(p_parameters_4657, 2, arrow_type_1_expr1).
argument(p_return_type_4658, 3, arrow_type_1_expr1).
argument(arrow_type_1_literal1, 4, arrow_type_1_expr1).
param(p_registry_4659, 1, m_arrow_type_4271).
param(p_parameters_4660, 2, m_arrow_type_4271).
param(p_return_type_4661, 3, m_arrow_type_4271).
param(p_return_type_inferred_4662, 4, m_arrow_type_4271).
method_invoc(arrow_type_1_expr2, m_jstype_4257, line(arrow_type_1, 69)).
argument(p_registry_4659, 1, arrow_type_1_expr2).
assign(f_parameters_4663, arrow_type_1_expr5, line(arrow_type_1, 71)).
cond_expr(arrow_type_1_expr7, arrow_type_1_expr8, p_parameters_4660, line(arrow_type_1, 71)).
assign(f_return_type_4664, arrow_type_1_expr11, line(arrow_type_1, 74)).
cond_expr(arrow_type_1_expr13, arrow_type_1_expr14, p_return_type_4661, line(arrow_type_1, 74)).
assign(f_return_type_inferred_4665, p_return_type_inferred_4662, line(arrow_type_1, 76)).
param(p_other_4666, 1, m_is_subtype_4272).
param(p_that_4667, 1, m_has_equal_parameters_4273).
param(p_eq_method_4668, 2, m_has_equal_parameters_4273).
param(p_that_4669, 1, m_check_arrow_equivalence_helper_4274).
param(p_eq_method_4670, 2, m_check_arrow_equivalence_helper_4274).
param(p_that_4671, 1, m_get_least_supertype_4276).
param(p_that_4672, 1, m_get_greatest_subtype_4277).
param(p_that_4673, 1, m_test_for_equality_4278).
param(p_visitor_4674, 1, m_visit_4279).
param(p_visitor_4675, 1, m_visit_4280).
param(p_that_4676, 2, m_visit_4280).
param(p_t_4677, 1, m_resolve_internal_4282).
param(p_scope_4678, 2, m_resolve_internal_4282).
assign(f_return_type_4664, arrow_type_1_expr19, line(arrow_type_1, 275)).
method_invoc(arrow_type_1_expr19, m_safe_resolve_4283, line(arrow_type_1, 275)).
argument(f_return_type_4664, 1, arrow_type_1_expr19).
argument(p_t_4677, 2, arrow_type_1_expr19).
argument(p_scope_4678, 3, arrow_type_1_expr19).
assign(v_param_node_4679, arrow_type_1_expr22, line(arrow_type_1, 277)).
method_invoc(arrow_type_1_expr22, m_get_first_child_828, line(arrow_type_1, 277)).
ref(f_parameters_4663, arrow_type_1_expr22, line(arrow_type_1, 277)).
assign(v_param_node_4679, arrow_type_1_expr25, line(arrow_type_1, 278)).
method_invoc(arrow_type_1_expr25, m_get_next_827, line(arrow_type_1, 278)).
ref(v_param_node_4679, arrow_type_1_expr25, line(arrow_type_1, 278)).
method_invoc(arrow_type_1_expr26, m_set_jstype_3117, line(arrow_type_1, 279)).
argument(arrow_type_1_expr27, 1, arrow_type_1_expr26).
ref(v_param_node_4679, arrow_type_1_expr26, line(arrow_type_1, 279)).
method_invoc(arrow_type_1_expr27, m_resolve_1626, line(arrow_type_1, 279)).
argument(p_t_4677, 1, arrow_type_1_expr27).
argument(p_scope_4678, 2, arrow_type_1_expr27).
ref(arrow_type_1_expr28, arrow_type_1_expr27, line(arrow_type_1, 279)).
method_invoc(arrow_type_1_expr28, m_get_jstype_1808, line(arrow_type_1, 279)).
ref(v_param_node_4679, arrow_type_1_expr28, line(arrow_type_1, 279)).
return(arrow_type_1_expr29, m_resolve_internal_4282, line(arrow_type_1, 282)).
param(p_for_annotations_4680, 1, m_to_string_helper_4285).

%prototype_object_type_1 - com.google.javascript.rhino.jstype.PrototypeObjectType
assign(f_owner_function_5372, prototype_object_type_1_literal1, line(prototype_object_type_1, 84)).
assign(f_pretty_print_5373, prototype_object_type_1_literal2, line(prototype_object_type_1, 88)).
param(p_registry_5374, 1, m_prototype_object_type_4347).
param(p_class_name_5375, 2, m_prototype_object_type_4347).
param(p_implicit_prototype_5376, 3, m_prototype_object_type_4347).
method_invoc(prototype_object_type_1_expr1, m_prototype_object_type_4344, line(prototype_object_type_1, 105)).
argument(p_registry_5374, 1, prototype_object_type_1_expr1).
argument(p_class_name_5375, 2, prototype_object_type_1_expr1).
argument(p_implicit_prototype_5376, 3, prototype_object_type_1_expr1).
argument(prototype_object_type_1_literal3, 4, prototype_object_type_1_expr1).
argument(prototype_object_type_1_literal4, 5, prototype_object_type_1_expr1).
argument(prototype_object_type_1_literal5, 6, prototype_object_type_1_expr1).
param(p_registry_5377, 1, m_prototype_object_type_4344).
param(p_class_name_5378, 2, m_prototype_object_type_4344).
param(p_implicit_prototype_5379, 3, m_prototype_object_type_4344).
param(p_native_type_5380, 4, m_prototype_object_type_4344).
param(p_template_keys_5381, 5, m_prototype_object_type_4344).
param(p_templatized_types_5382, 6, m_prototype_object_type_4344).
method_invoc(prototype_object_type_1_expr2, m_object_type_4743, line(prototype_object_type_1, 116)).
argument(p_registry_5377, 1, prototype_object_type_1_expr2).
argument(p_template_keys_5381, 2, prototype_object_type_1_expr2).
argument(p_templatized_types_5382, 3, prototype_object_type_1_expr2).
assign(f_properties_5383, prototype_object_type_1_expr5, line(prototype_object_type_1, 117)).
method_invoc(prototype_object_type_1_expr5, m_property_map_4802, line(prototype_object_type_1, 117)).
method_invoc(prototype_object_type_1_expr7, m_set_parent_source_4805, line(prototype_object_type_1, 118)).
argument(prototype_object_type_1_expr8, 1, prototype_object_type_1_expr7).
ref(f_properties_5383, prototype_object_type_1_expr7, line(prototype_object_type_1, 118)).
assign(f_class_name_5384, p_class_name_5378, line(prototype_object_type_1, 120)).
assign(f_native_type_5385, p_native_type_5380, line(prototype_object_type_1, 121)).
method_invoc(prototype_object_type_1_expr19, m_set_implicit_prototype_4579, line(prototype_object_type_1, 123)).
argument(p_implicit_prototype_5379, 1, prototype_object_type_1_expr19).
method_invoc(prototype_object_type_1_expr20, m_set_implicit_prototype_4579, line(prototype_object_type_1, 125)).
argument(prototype_object_type_1_expr21, 1, prototype_object_type_1_expr20).
return(f_properties_5383, m_get_property_map_4819, line(prototype_object_type_1, 132)).
param(p_name_5386, 1, m_define_property_4430).
param(p_type_5387, 2, m_define_property_4430).
param(p_inferred_5388, 3, m_define_property_4430).
param(p_property_node_5389, 4, m_define_property_4430).
method_invoc(prototype_object_type_1_expr22, m_has_own_declared_property_4429, line(prototype_object_type_1, 138)).
argument(p_name_5386, 1, prototype_object_type_1_expr22).
assign(v_new_prop_5390, prototype_object_type_1_expr23, line(prototype_object_type_1, 141)).
method_invoc(prototype_object_type_1_expr23, m_property_4373, line(prototype_object_type_1, 141)).
argument(p_name_5386, 1, prototype_object_type_1_expr23).
argument(p_type_5387, 2, prototype_object_type_1_expr23).
argument(p_inferred_5388, 3, prototype_object_type_1_expr23).
argument(p_property_node_5389, 4, prototype_object_type_1_expr23).
method_invoc(prototype_object_type_1_expr24, m_put_property_4817, line(prototype_object_type_1, 143)).
argument(p_name_5386, 1, prototype_object_type_1_expr24).
argument(v_new_prop_5390, 2, prototype_object_type_1_expr24).
ref(f_properties_5383, prototype_object_type_1_expr24, line(prototype_object_type_1, 143)).
return(prototype_object_type_1_literal7, m_define_property_4430, line(prototype_object_type_1, 144)).
param(p_name_5391, 1, m_remove_property_4820).
param(p_property_name_5392, 1, m_set_property_jsdoc_info_4821).
param(p_info_5393, 2, m_set_property_jsdoc_info_4821).
param(p_property_name_5394, 1, m_has_overriden_native_property_4824).
param(p_for_annotations_5395, 1, m_to_string_helper_4828).
param(p_pretty_print_5396, 1, m_set_pretty_print_4345).
assign(f_pretty_print_5373, p_pretty_print_5396, line(prototype_object_type_1, 273)).
return(prototype_object_type_1_literal8, m_get_constructor_4830, line(prototype_object_type_1, 282)).
return(f_implicit_prototype_fallback_5397, m_get_implicit_prototype_4831, line(prototype_object_type_1, 287)).
param(p_implicit_prototype_5398, 1, m_set_implicit_prototype_4579).
method_invoc(prototype_object_type_1_expr28, m_check_state_536, line(prototype_object_type_1, 297)).
argument(prototype_object_type_1_expr29, 1, prototype_object_type_1_expr28).
method_invoc(prototype_object_type_1_expr30, m_has_cached_values_4410, line(prototype_object_type_1, 297)).
assign(f_implicit_prototype_fallback_5397, p_implicit_prototype_5398, line(prototype_object_type_1, 298)).
return(f_class_name_5384, m_get_reference_name_4366, line(prototype_object_type_1, 304)).
return(prototype_object_type_1_expr36, m_get_reference_name_4366, line(prototype_object_type_1, 306)).
method_invoc(prototype_object_type_1_expr37, m_get_reference_name_4366, line(prototype_object_type_1, 306)).
ref(f_owner_function_5372, prototype_object_type_1_expr37, line(prototype_object_type_1, 306)).
return(prototype_object_type_1_expr38, m_has_reference_name_4426, line(prototype_object_type_1, 314)).
param(p_that_5399, 1, m_is_subtype_4832).
method_invoc(prototype_object_type_1_expr41, m_is_subtype_helper_4542, line(prototype_object_type_1, 319)).
argument(prototype_object_type_1_expr42, 1, prototype_object_type_1_expr41).
argument(p_that_5399, 2, prototype_object_type_1_expr41).
ref(t_jstype_66, prototype_object_type_1_expr41, line(prototype_object_type_1, 319)).
method_invoc(prototype_object_type_1_expr43, m_is_union_type_4474, line(prototype_object_type_1, 324)).
ref(p_that_5399, prototype_object_type_1_expr43, line(prototype_object_type_1, 324)).
method_invoc(prototype_object_type_1_expr44, m_is_record_type_4484, line(prototype_object_type_1, 331)).
ref(p_that_5399, prototype_object_type_1_expr44, line(prototype_object_type_1, 331)).
assign(v_that_obj_5400, prototype_object_type_1_expr45, line(prototype_object_type_1, 338)).
method_invoc(prototype_object_type_1_expr45, m_to_object_type_4403, line(prototype_object_type_1, 338)).
ref(p_that_5399, prototype_object_type_1_expr45, line(prototype_object_type_1, 338)).
assign(v_that_ctor_5401, prototype_object_type_1_expr46, line(prototype_object_type_1, 339)).
cond_expr(prototype_object_type_1_expr47, prototype_object_type_1_literal14, prototype_object_type_1_expr48, line(prototype_object_type_1, 339)).
method_invoc(prototype_object_type_1_expr48, m_get_constructor_1811, line(prototype_object_type_1, 339)).
ref(v_that_obj_5400, prototype_object_type_1_expr48, line(prototype_object_type_1, 339)).
method_invoc(prototype_object_type_1_expr51, m_get_constructor_4830, line(prototype_object_type_1, 341)).
method_invoc(prototype_object_type_1_expr52, m_is_interface_1104, line(prototype_object_type_1, 341)).
ref(prototype_object_type_1_expr53, prototype_object_type_1_expr52, line(prototype_object_type_1, 341)).
method_invoc(prototype_object_type_1_expr53, m_get_constructor_4830, line(prototype_object_type_1, 341)).
method_invoc(prototype_object_type_1_expr56, m_is_interface_1104, line(prototype_object_type_1, 347)).
ref(v_that_ctor_5401, prototype_object_type_1_expr56, line(prototype_object_type_1, 347)).
method_invoc(prototype_object_type_1_expr58, m_is_unknown_type_4613, line(prototype_object_type_1, 357)).
method_invoc(prototype_object_type_1_expr59, m_implicit_prototype_chain_is_unknown_4833, line(prototype_object_type_1, 357)).
return(prototype_object_type_1_expr60, m_is_subtype_4832, line(prototype_object_type_1, 363)).
method_invoc(prototype_object_type_1_expr62, m_is_implicit_prototype_4780, line(prototype_object_type_1, 363)).
argument(v_that_obj_5400, 1, prototype_object_type_1_expr62).
assign(v_p_5402, prototype_object_type_1_expr63, line(prototype_object_type_1, 367)).
method_invoc(prototype_object_type_1_expr63, m_get_implicit_prototype_4831, line(prototype_object_type_1, 367)).
method_invoc(prototype_object_type_1_expr65, m_is_unknown_type_4613, line(prototype_object_type_1, 369)).
ref(v_p_5402, prototype_object_type_1_expr65, line(prototype_object_type_1, 369)).
assign(v_p_5402, prototype_object_type_1_expr67, line(prototype_object_type_1, 372)).
method_invoc(prototype_object_type_1_expr67, m_get_implicit_prototype_1805, line(prototype_object_type_1, 372)).
ref(v_p_5402, prototype_object_type_1_expr67, line(prototype_object_type_1, 372)).
return(prototype_object_type_1_literal20, m_implicit_prototype_chain_is_unknown_4833, line(prototype_object_type_1, 374)).
return(prototype_object_type_1_expr68, m_has_cached_values_4410, line(prototype_object_type_1, 379)).
method_invoc(prototype_object_type_1_expr68, m_has_cached_values_4784, line(prototype_object_type_1, 379)).
return(f_native_type_5385, m_is_native_object_type_4834, line(prototype_object_type_1, 385)).
param(p_type_5403, 1, m_set_owner_function_4835).
method_invoc(prototype_object_type_1_expr69, m_check_state_536, line(prototype_object_type_1, 390)).
argument(prototype_object_type_1_expr70, 1, prototype_object_type_1_expr69).
ref(t_preconditions_19, prototype_object_type_1_expr69, line(prototype_object_type_1, 390)).
assign(f_owner_function_5372, p_type_5403, line(prototype_object_type_1, 391)).
return(f_owner_function_5372, m_get_owner_function_4836, line(prototype_object_type_1, 396)).
return(prototype_object_type_1_expr74, m_get_ctor_extended_interfaces_4838, line(prototype_object_type_1, 408)).
cond_expr(prototype_object_type_1_expr75, prototype_object_type_1_expr76, prototype_object_type_1_expr77, line(prototype_object_type_1, 408)).
method_invoc(prototype_object_type_1_expr75, m_is_function_prototype_type_3161, line(prototype_object_type_1, 408)).
param(p_t_5404, 1, m_resolve_internal_4416).
param(p_scope_5405, 2, m_resolve_internal_4416).
method_invoc(prototype_object_type_1_expr78, m_set_resolved_type_internal_4412, line(prototype_object_type_1, 415)).
argument(prototype_object_type_1_expr79, 1, prototype_object_type_1_expr78).
assign(v_implicit_prototype_5406, prototype_object_type_1_expr80, line(prototype_object_type_1, 417)).
method_invoc(prototype_object_type_1_expr80, m_get_implicit_prototype_4831, line(prototype_object_type_1, 417)).
assign(f_implicit_prototype_fallback_5397, prototype_object_type_1_expr83, line(prototype_object_type_1, 419)).
ref(prototype_object_type_1_expr84, prototype_object_type_1_stmt49, line(prototype_object_type_1, 422)).
method_invoc(prototype_object_type_1_expr84, m_values_4818, line(prototype_object_type_1, 422)).
ref(f_properties_5383, prototype_object_type_1_expr84, line(prototype_object_type_1, 422)).
method_invoc(prototype_object_type_1_expr85, m_set_type_4413, line(prototype_object_type_1, 423)).
argument(prototype_object_type_1_expr86, 1, prototype_object_type_1_expr85).
ref(v_prop_5407, prototype_object_type_1_expr85, line(prototype_object_type_1, 423)).
method_invoc(prototype_object_type_1_expr86, m_safe_resolve_4283, line(prototype_object_type_1, 423)).
argument(prototype_object_type_1_expr87, 1, prototype_object_type_1_expr86).
argument(p_t_5404, 2, prototype_object_type_1_expr86).
argument(p_scope_5405, 3, prototype_object_type_1_expr86).
method_invoc(prototype_object_type_1_expr87, m_get_type_4368, line(prototype_object_type_1, 423)).
ref(v_prop_5407, prototype_object_type_1_expr87, line(prototype_object_type_1, 423)).
return(prototype_object_type_1_expr88, m_resolve_internal_4416, line(prototype_object_type_1, 425)).
param(p_constraint_5408, 1, m_match_constraint_4839).
param(p_constraint_obj_5409, 1, m_match_record_type_constraint_4840).

%diagnostic_groups_1 - com.google.javascript.jscomp.DiagnosticGroups
assign(f_unused_1235, diagnostic_groups_1_expr1, line(diagnostic_groups_1, 30)).
assign(f_groups_by_name_1236, diagnostic_groups_1_expr2, line(diagnostic_groups_1, 35)).
param(p_name_1237, 1, m_register_deprecated_group_969).
return(diagnostic_groups_1_expr3, m_register_deprecated_group_969, line(diagnostic_groups_1, 39)).
method_invoc(diagnostic_groups_1_expr3, m_register_group_970, line(diagnostic_groups_1, 39)).
argument(p_name_1237, 1, diagnostic_groups_1_expr3).
argument(diagnostic_groups_1_expr4, 2, diagnostic_groups_1_expr3).
method_invoc(diagnostic_groups_1_expr4, m_diagnostic_group_951, line(diagnostic_groups_1, 39)).
argument(p_name_1237, 1, diagnostic_groups_1_expr4).
argument(f_unused_1235, 2, diagnostic_groups_1_expr4).
param(p_name_1238, 1, m_register_group_970).
param(p_group_1239, 2, m_register_group_970).
method_invoc(diagnostic_groups_1_expr5, m_put_395, line(diagnostic_groups_1, 44)).
argument(p_name_1238, 1, diagnostic_groups_1_expr5).
argument(p_group_1239, 2, diagnostic_groups_1_expr5).
ref(f_groups_by_name_1236, diagnostic_groups_1_expr5, line(diagnostic_groups_1, 44)).
return(p_group_1239, m_register_group_970, line(diagnostic_groups_1, 45)).
param(p_name_1240, 1, m_register_group_971).
param(p_types_1241, 2, m_register_group_971).
assign(v_group_1242, diagnostic_groups_1_expr6, line(diagnostic_groups_1, 50)).
method_invoc(diagnostic_groups_1_expr6, m_diagnostic_group_951, line(diagnostic_groups_1, 50)).
argument(p_name_1240, 1, diagnostic_groups_1_expr6).
argument(p_types_1241, 2, diagnostic_groups_1_expr6).
method_invoc(diagnostic_groups_1_expr7, m_put_395, line(diagnostic_groups_1, 51)).
argument(p_name_1240, 1, diagnostic_groups_1_expr7).
argument(v_group_1242, 2, diagnostic_groups_1_expr7).
ref(f_groups_by_name_1236, diagnostic_groups_1_expr7, line(diagnostic_groups_1, 51)).
return(v_group_1242, m_register_group_971, line(diagnostic_groups_1, 52)).
param(p_name_1243, 1, m_register_group_972).
param(p_groups_1244, 2, m_register_group_972).
assign(v_group_1245, diagnostic_groups_1_expr8, line(diagnostic_groups_1, 57)).
method_invoc(diagnostic_groups_1_expr8, m_diagnostic_group_957, line(diagnostic_groups_1, 57)).
argument(p_name_1243, 1, diagnostic_groups_1_expr8).
argument(p_groups_1244, 2, diagnostic_groups_1_expr8).
method_invoc(diagnostic_groups_1_expr9, m_put_395, line(diagnostic_groups_1, 58)).
argument(p_name_1243, 1, diagnostic_groups_1_expr9).
argument(v_group_1245, 2, diagnostic_groups_1_expr9).
ref(f_groups_by_name_1236, diagnostic_groups_1_expr9, line(diagnostic_groups_1, 58)).
return(v_group_1245, m_register_group_972, line(diagnostic_groups_1, 59)).
return(diagnostic_groups_1_expr10, m_get_registered_groups_973, line(diagnostic_groups_1, 64)).
method_invoc(diagnostic_groups_1_expr10, m_copy_of_974, line(diagnostic_groups_1, 64)).
argument(f_groups_by_name_1236, 1, diagnostic_groups_1_expr10).
ref(t_immutable_map_38, diagnostic_groups_1_expr10, line(diagnostic_groups_1, 64)).
param(p_name_1246, 1, m_for_name_975).
assign(f_global_this_1247, diagnostic_groups_1_expr11, line(diagnostic_groups_1, 90)).
assign(f_deprecated_1248, diagnostic_groups_1_expr12, line(diagnostic_groups_1, 94)).
assign(f_visibility_1249, diagnostic_groups_1_expr13, line(diagnostic_groups_1, 103)).
assign(f_constant_property_1250, diagnostic_groups_1_expr14, line(diagnostic_groups_1, 111)).
assign(f_non_standard_jsdoc_1251, diagnostic_groups_1_expr15, line(diagnostic_groups_1, 116)).
assign(f_access_controls_1252, diagnostic_groups_1_expr16, line(diagnostic_groups_1, 120)).
assign(f_invalid_casts_1253, diagnostic_groups_1_expr17, line(diagnostic_groups_1, 124)).
assign(f_fileoverview_jsdoc_1254, diagnostic_groups_1_expr18, line(diagnostic_groups_1, 128)).
assign(f_strict_module_dep_check_1255, diagnostic_groups_1_expr19, line(diagnostic_groups_1, 131)).
assign(f_violated_module_dep_1256, diagnostic_groups_1_expr20, line(diagnostic_groups_1, 136)).
assign(f_externs_validation_1257, diagnostic_groups_1_expr21, line(diagnostic_groups_1, 140)).
assign(f_ambiguous_function_decl_1258, diagnostic_groups_1_expr22, line(diagnostic_groups_1, 145)).
assign(f_unknown_defines_1259, diagnostic_groups_1_expr23, line(diagnostic_groups_1, 149)).
assign(f_tweaks_1260, diagnostic_groups_1_expr24, line(diagnostic_groups_1, 153)).
assign(f_missing_properties_1261, diagnostic_groups_1_expr25, line(diagnostic_groups_1, 159)).
assign(f_internet_explorer_checks_1262, diagnostic_groups_1_expr26, line(diagnostic_groups_1, 163)).
assign(f_undefined_variables_1263, diagnostic_groups_1_expr27, line(diagnostic_groups_1, 167)).
assign(f_undefined_names_1264, diagnostic_groups_1_expr28, line(diagnostic_groups_1, 171)).
assign(f_debugger_statement_present_1265, diagnostic_groups_1_expr29, line(diagnostic_groups_1, 175)).
assign(f_check_regexp_1266, diagnostic_groups_1_expr30, line(diagnostic_groups_1, 179)).
assign(f_check_types_1267, diagnostic_groups_1_expr31, line(diagnostic_groups_1, 184)).
assign(f_check_variables_1268, diagnostic_groups_1_expr32, line(diagnostic_groups_1, 189)).
assign(f_check_useless_code_1269, diagnostic_groups_1_expr33, line(diagnostic_groups_1, 194)).
assign(f_const_1270, diagnostic_groups_1_expr34, line(diagnostic_groups_1, 199)).
assign(f_type_invalidation_1271, diagnostic_groups_1_expr35, line(diagnostic_groups_1, 205)).
assign(f_duplicate_vars_1272, diagnostic_groups_1_expr36, line(diagnostic_groups_1, 209)).
assign(f_es5_strict_1273, diagnostic_groups_1_expr37, line(diagnostic_groups_1, 214)).
assign(f_check_provides_1274, diagnostic_groups_1_expr38, line(diagnostic_groups_1, 225)).
assign(f_duplicate_message_1275, diagnostic_groups_1_expr39, line(diagnostic_groups_1, 229)).
assign(f_misplaced_type_annotation_1276, diagnostic_groups_1_expr40, line(diagnostic_groups_1, 233)).
assign(f_cast_1277, diagnostic_groups_1_expr41, line(diagnostic_groups_1, 237)).
assign(f_suspicious_code_1278, diagnostic_groups_1_expr42, line(diagnostic_groups_1, 241)).
param(p_options_1279, 1, m_set_warning_level_976).
param(p_name_1280, 2, m_set_warning_level_976).
param(p_level_1281, 3, m_set_warning_level_976).

%value_type_1 - com.google.javascript.rhino.jstype.ValueType
param(p_registry_5505, 1, m_value_type_4289).
method_invoc(value_type_1_expr1, m_jstype_4257, line(value_type_1, 49)).
argument(p_registry_5505, 1, value_type_1_expr1).
param(p_t_5506, 1, m_resolve_internal_4970).
param(p_scope_5507, 2, m_resolve_internal_4970).
return(value_type_1_expr2, m_resolve_internal_4970, line(value_type_1, 54)).
param(p_visitor_5508, 1, m_visit_4972).
param(p_that_5509, 2, m_visit_4972).

%check_global_names_1 - com.google.javascript.jscomp.CheckGlobalNames
assign(f_undefined_name_warning_142, check_global_names_1_expr1, line(check_global_names_1, 45)).
method_invoc(check_global_names_1_expr1, m_warning_109, line(check_global_names_1, 45)).
argument(check_global_names_1_literal1, 1, check_global_names_1_expr1).
argument(check_global_names_1_literal2, 2, check_global_names_1_expr1).
ref(t_diagnostic_type_2, check_global_names_1_expr1, line(check_global_names_1, 45)).
assign(f_name_defined_late_warning_143, check_global_names_1_expr2, line(check_global_names_1, 49)).
assign(f_strict_module_dep_qname_144, check_global_names_1_expr3, line(check_global_names_1, 54)).
param(p_compiler_145, 1, m_check_global_names_110).
param(p_level_146, 2, m_check_global_names_110).
param(p_namespace_147, 1, m_inject_namespace_111).
param(p_externs_148, 1, m_process_112).
param(p_root_149, 2, m_process_112).
param(p_type_150, 1, m_find_prototype_props_113).
param(p_props_151, 2, m_find_prototype_props_113).
param(p_name_152, 1, m_check_descendant_names_114).
param(p_name_is_defined_153, 2, m_check_descendant_names_114).
param(p_name_154, 1, m_validate_name_115).
param(p_is_defined_155, 2, m_validate_name_115).
param(p_ref_156, 1, m_is_typedef_116).
param(p_name_157, 1, m_report_bad_module_reference_117).
param(p_ref_158, 2, m_report_bad_module_reference_117).
param(p_name_159, 1, m_report_ref_to_undefined_name_118).
param(p_ref_160, 2, m_report_ref_to_undefined_name_118).
param(p_name_161, 1, m_property_must_be_initialized_by_full_name_119).

%memoized_scope_creator_1 - com.google.javascript.jscomp.MemoizedScopeCreator
assign(f_scopes_1729, memoized_scope_creator_1_expr1, line(memoized_scope_creator_1, 49)).
method_invoc(memoized_scope_creator_1_expr1, m_new_hash_map_422, line(memoized_scope_creator_1, 49)).
ref(t_maps_17, memoized_scope_creator_1_expr1, line(memoized_scope_creator_1, 49)).
param(p_delegate_1730, 1, m_memoized_scope_creator_1258).
assign(f_delegate_1731, p_delegate_1730, line(memoized_scope_creator_1, 56)).
param(p_var_1732, 1, m_get_references_1259).
param(p_var_1733, 1, m_get_scope_1260).
param(p_n_1734, 1, m_create_scope_1262).
param(p_parent_1735, 2, m_create_scope_1262).
assign(v_scope_1736, memoized_scope_creator_1_expr5, line(memoized_scope_creator_1, 80)).
method_invoc(memoized_scope_creator_1_expr5, m_get_390, line(memoized_scope_creator_1, 80)).
argument(p_n_1734, 1, memoized_scope_creator_1_expr5).
ref(f_scopes_1729, memoized_scope_creator_1_expr5, line(memoized_scope_creator_1, 80)).
assign(v_scope_1736, memoized_scope_creator_1_expr8, line(memoized_scope_creator_1, 82)).
method_invoc(memoized_scope_creator_1_expr8, m_create_scope_1263, line(memoized_scope_creator_1, 82)).
argument(p_n_1734, 1, memoized_scope_creator_1_expr8).
argument(p_parent_1735, 2, memoized_scope_creator_1_expr8).
ref(f_delegate_1731, memoized_scope_creator_1_expr8, line(memoized_scope_creator_1, 82)).
method_invoc(memoized_scope_creator_1_expr9, m_put_395, line(memoized_scope_creator_1, 83)).
argument(p_n_1734, 1, memoized_scope_creator_1_expr9).
argument(v_scope_1736, 2, memoized_scope_creator_1_expr9).
ref(f_scopes_1729, memoized_scope_creator_1_expr9, line(memoized_scope_creator_1, 83)).
method_invoc(memoized_scope_creator_1_expr10, m_check_state_536, line(memoized_scope_creator_1, 85)).
argument(memoized_scope_creator_1_expr11, 1, memoized_scope_creator_1_expr10).
ref(t_preconditions_19, memoized_scope_creator_1_expr10, line(memoized_scope_creator_1, 85)).
method_invoc(memoized_scope_creator_1_expr12, m_get_parent_1264, line(memoized_scope_creator_1, 85)).
ref(v_scope_1736, memoized_scope_creator_1_expr12, line(memoized_scope_creator_1, 85)).
return(v_scope_1736, m_create_scope_1262, line(memoized_scope_creator_1, 87)).
param(p_n_1737, 1, m_get_scope_if_memoized_1266).
param(p_script_name_1738, 1, m_remove_scopes_for_script_1267).

%const_check_1 - com.google.javascript.jscomp.ConstCheck
assign(f_const_reassigned_value_error_1016, const_check_1_expr1, line(const_check_1, 36)).
param(p_compiler_1017, 1, m_const_check_800).
param(p_externs_1018, 1, m_process_801).
param(p_root_1019, 2, m_process_801).
param(p_t_1020, 1, m_visit_802).
param(p_n_1021, 2, m_visit_802).
param(p_parent_1022, 3, m_visit_802).
param(p_var_1023, 1, m_is_constant_803).
param(p_t_1024, 1, m_report_error_804).
param(p_n_1025, 2, m_report_error_804).
param(p_name_1026, 3, m_report_error_804).

%config_1 - com.google.javascript.jscomp.parsing.Config
param(p_annotation_whitelist_3550, 1, m_config_3338).
param(p_suppression_names_3551, 2, m_config_3338).
param(p_is_ide_mode_3552, 3, m_config_3338).
param(p_language_mode_3553, 4, m_config_3338).
param(p_accept_const_keyword_3554, 5, m_config_3338).
assign(f_annotation_names_3555, config_1_expr3, line(config_1, 76)).
method_invoc(config_1_expr3, m_build_annotation_names_3339, line(config_1, 76)).
argument(p_annotation_whitelist_3550, 1, config_1_expr3).
assign(f_parse_js_doc_documentation_3556, p_is_ide_mode_3552, line(config_1, 77)).
assign(f_suppression_names_3557, p_suppression_names_3551, line(config_1, 78)).
assign(f_is_ide_mode_3558, p_is_ide_mode_3552, line(config_1, 79)).
assign(f_language_mode_3559, p_language_mode_3553, line(config_1, 80)).
assign(f_accept_const_keyword_3560, p_accept_const_keyword_3554, line(config_1, 81)).
param(p_annotation_whitelist_3561, 1, m_build_annotation_names_3339).
assign(v_annotation_builder_3562, config_1_expr20, line(config_1, 90)).
method_invoc(config_1_expr21, m_put_all_3340, line(config_1, 92)).
argument(q_recognized_annotations_82, 1, config_1_expr21).
ref(v_annotation_builder_3562, config_1_expr21, line(config_1, 92)).
ref(t_annotation_88, q_recognized_annotations_82, line(config_1, 92)).
ref(p_annotation_whitelist_3561, config_1_stmt9, line(config_1, 93)).
method_invoc(config_1_expr23, m_contains_key_818, line(config_1, 94)).
argument(v_unrecognized_annotation_3563, 1, config_1_expr23).
ref(f_recognized_annotations_3546, config_1_expr23, line(config_1, 94)).
ref(t_annotation_88, q_recognized_annotations_83, line(config_1, 94)).
method_invoc(config_1_expr24, m_put_3341, line(config_1, 96)).
argument(v_unrecognized_annotation_3563, 1, config_1_expr24).
argument(q_not_implemented_83, 2, config_1_expr24).
ref(v_annotation_builder_3562, config_1_expr24, line(config_1, 96)).
return(config_1_expr25, m_build_annotation_names_3339, line(config_1, 100)).
method_invoc(config_1_expr25, m_build_3342, line(config_1, 100)).
ref(v_annotation_builder_3562, config_1_expr25, line(config_1, 100)).

%annotation_1 - com.google.javascript.jscomp.parsing.Annotation
assign(f_recognized_annotations_3546, annotation_1_expr1, line(annotation_1, 78)).

%var_check_1 - com.google.javascript.jscomp.VarCheck
assign(f_undefined_var_error_3313, var_check_1_expr1, line(var_check_1, 38)).
method_invoc(var_check_1_expr1, m_error_1, line(var_check_1, 38)).
argument(var_check_1_literal1, 1, var_check_1_expr1).
argument(var_check_1_literal2, 2, var_check_1_expr1).
ref(t_diagnostic_type_2, var_check_1_expr1, line(var_check_1, 38)).
assign(f_violated_module_dep_error_3314, var_check_1_expr2, line(var_check_1, 42)).
method_invoc(var_check_1_expr2, m_error_1, line(var_check_1, 42)).
argument(var_check_1_literal3, 1, var_check_1_expr2).
argument(var_check_1_expr3, 2, var_check_1_expr2).
ref(t_diagnostic_type_2, var_check_1_expr2, line(var_check_1, 42)).
assign(f_missing_module_dep_error_3315, var_check_1_expr4, line(var_check_1, 47)).
method_invoc(var_check_1_expr4, m_warning_109, line(var_check_1, 47)).
argument(var_check_1_literal4, 1, var_check_1_expr4).
argument(var_check_1_expr5, 2, var_check_1_expr4).
ref(t_diagnostic_type_2, var_check_1_expr4, line(var_check_1, 47)).
assign(f_strict_module_dep_error_3316, var_check_1_expr6, line(var_check_1, 52)).
method_invoc(var_check_1_expr6, m_disabled_82, line(var_check_1, 52)).
argument(var_check_1_literal5, 1, var_check_1_expr6).
argument(var_check_1_expr7, 2, var_check_1_expr6).
ref(t_diagnostic_type_2, var_check_1_expr6, line(var_check_1, 52)).
assign(f_name_reference_in_externs_error_3317, var_check_1_expr8, line(var_check_1, 57)).
assign(f_undefined_extern_var_error_3318, var_check_1_expr9, line(var_check_1, 62)).
param(p_compiler_3319, 1, m_var_check_3201).
param(p_compiler_3320, 1, m_var_check_3202).
param(p_sanity_check_3321, 2, m_var_check_3202).
param(p_externs_3322, 1, m_process_3203).
param(p_root_3323, 2, m_process_3203).
param(p_script_root_3324, 1, m_hot_swap_script_3204).
param(p_original_root_3325, 2, m_hot_swap_script_3204).
param(p_t_3326, 1, m_visit_3205).
param(p_n_3327, 2, m_visit_3205).
param(p_parent_3328, 3, m_visit_3205).
param(p_var_name_3329, 1, m_create_synthesized_extern_var_3206).
param(p_t_3330, 1, m_visit_3207).
param(p_n_3331, 2, m_visit_3207).
param(p_parent_3332, 3, m_visit_3207).

%property_map_1 - com.google.javascript.rhino.jstype.PropertyMap
assign(f_empty_map_5349, property_map_1_expr1, line(property_map_1, 60)).
method_invoc(property_map_1_expr1, m_property_map_4799, line(property_map_1, 60)).
argument(property_map_1_expr2, 1, property_map_1_expr1).
assign(f_prop_map_from_type_5350, property_map_1_expr3, line(property_map_1, 63)).
method_invoc(property_map_1_expr3, m__4800, line(property_map_1, 64)).
param(p_t_5351, 1, m_apply_4801).
assign(f_parent_source_5352, property_map_1_literal1, line(property_map_1, 74)).
method_invoc(property_map_1_expr4, m_property_map_4799, line(property_map_1, 80)).
argument(property_map_1_expr5, 1, property_map_1_expr4).
method_invoc(property_map_1_expr5, m_new_tree_map_4803, line(property_map_1, 80)).
ref(t_maps_17, property_map_1_expr5, line(property_map_1, 80)).
param(p_underlying_map_5353, 1, m_property_map_4799).
assign(f_properties_5354, p_underlying_map_5353, line(property_map_1, 84)).
param(p_owner_type_5355, 1, m_set_parent_source_4805).
assign(f_parent_source_5352, p_owner_type_5355, line(property_map_1, 93)).
assign(v_i_proto_5356, property_map_1_expr15, line(property_map_1, 102)).
method_invoc(property_map_1_expr15, m_get_implicit_prototype_1805, line(property_map_1, 102)).
ref(f_parent_source_5352, property_map_1_expr15, line(property_map_1, 102)).
return(property_map_1_expr16, m_get_primary_parent_4806, line(property_map_1, 103)).
cond_expr(property_map_1_expr17, property_map_1_literal3, property_map_1_expr18, line(property_map_1, 103)).
method_invoc(property_map_1_expr18, m_get_property_map_4746, line(property_map_1, 103)).
ref(v_i_proto_5356, property_map_1_expr18, line(property_map_1, 103)).
assign(v_extended_interfaces_5357, property_map_1_expr20, line(property_map_1, 114)).
method_invoc(property_map_1_expr21, m_is_empty_4808, line(property_map_1, 118)).
argument(v_extended_interfaces_5357, 1, property_map_1_expr21).
ref(t_iterables_115, property_map_1_expr21, line(property_map_1, 118)).
return(property_map_1_expr22, m_get_secondary_parents_4807, line(property_map_1, 119)).
method_invoc(property_map_1_expr22, m_of_310, line(property_map_1, 119)).
ref(t_immutable_list_14, property_map_1_expr22, line(property_map_1, 119)).
param(p_name_5358, 1, m_get_slot_4809).
param(p_property_name_5359, 1, m_get_own_property_4749).
return(property_map_1_expr23, m_get_own_property_4749, line(property_map_1, 148)).
method_invoc(property_map_1_expr23, m_get_390, line(property_map_1, 148)).
argument(p_property_name_5359, 1, property_map_1_expr23).
ref(f_properties_5354, property_map_1_expr23, line(property_map_1, 148)).
assign(v_primary_parent_5360, property_map_1_expr24, line(property_map_1, 152)).
method_invoc(property_map_1_expr24, m_get_primary_parent_4806, line(property_map_1, 152)).
assign(v_props_5361, property_map_1_expr26, line(property_map_1, 156)).
method_invoc(property_map_1_expr26, m_new_hash_set_522, line(property_map_1, 156)).
ref(t_sets_12, property_map_1_expr26, line(property_map_1, 156)).
method_invoc(property_map_1_expr27, m_collect_property_names_4810, line(property_map_1, 157)).
argument(v_props_5361, 1, property_map_1_expr27).
return(property_map_1_expr28, m_get_properties_count_4775, line(property_map_1, 158)).
method_invoc(property_map_1_expr28, m_size_4811, line(property_map_1, 158)).
ref(v_props_5361, property_map_1_expr28, line(property_map_1, 158)).
param(p_property_name_5362, 1, m_has_own_property_4812).
param(p_property_name_5363, 1, m_has_property_4813).
param(p_props_5364, 1, m_collect_property_names_4810).
ref(property_map_1_expr29, property_map_1_stmt18, line(property_map_1, 174)).
method_invoc(property_map_1_expr29, m_key_set_4815, line(property_map_1, 174)).
ref(f_properties_5354, property_map_1_expr29, line(property_map_1, 174)).
method_invoc(property_map_1_expr30, m_add_67, line(property_map_1, 175)).
argument(v_prop_5365, 1, property_map_1_expr30).
ref(p_props_5364, property_map_1_expr30, line(property_map_1, 175)).
assign(v_primary_parent_5366, property_map_1_expr31, line(property_map_1, 177)).
method_invoc(property_map_1_expr31, m_get_primary_parent_4806, line(property_map_1, 177)).
method_invoc(property_map_1_expr33, m_collect_property_names_4810, line(property_map_1, 179)).
argument(p_props_5364, 1, property_map_1_expr33).
ref(v_primary_parent_5366, property_map_1_expr33, line(property_map_1, 179)).
ref(property_map_1_expr34, property_map_1_stmt23, line(property_map_1, 181)).
method_invoc(property_map_1_expr34, m_get_secondary_parents_4807, line(property_map_1, 181)).
param(p_name_5368, 1, m_remove_property_4816).
param(p_name_5369, 1, m_put_property_4817).
param(p_new_prop_5370, 2, m_put_property_4817).
assign(v_old_prop_5371, property_map_1_expr35, line(property_map_1, 193)).
method_invoc(property_map_1_expr35, m_get_390, line(property_map_1, 193)).
argument(p_name_5369, 1, property_map_1_expr35).
ref(f_properties_5354, property_map_1_expr35, line(property_map_1, 193)).
method_invoc(property_map_1_expr37, m_put_395, line(property_map_1, 199)).
argument(p_name_5369, 1, property_map_1_expr37).
argument(p_new_prop_5370, 2, property_map_1_expr37).
ref(f_properties_5354, property_map_1_expr37, line(property_map_1, 199)).
return(property_map_1_expr38, m_values_4818, line(property_map_1, 203)).
method_invoc(property_map_1_expr38, m_values_1662, line(property_map_1, 203)).
ref(f_properties_5354, property_map_1_expr38, line(property_map_1, 203)).

%compose_warnings_guard_1 - com.google.javascript.jscomp.ComposeWarningsGuard
assign(f_order_of_addition_994, compose_warnings_guard_1_expr1, line(compose_warnings_guard_1, 45)).
method_invoc(compose_warnings_guard_1_expr1, m_new_hash_map_422, line(compose_warnings_guard_1, 45)).
ref(t_maps_17, compose_warnings_guard_1_expr1, line(compose_warnings_guard_1, 45)).
assign(f_number_of_adds_995, compose_warnings_guard_1_literal1, line(compose_warnings_guard_1, 46)).
assign(f_guard_comparator_996, compose_warnings_guard_1_expr2, line(compose_warnings_guard_1, 48)).
assign(f_demote_errors_997, compose_warnings_guard_1_literal2, line(compose_warnings_guard_1, 50)).
param(p_order_of_addition_998, 1, m_guard_comparator_783).
assign(f_order_of_addition_999, p_order_of_addition_998, line(compose_warnings_guard_1, 58)).
param(p_a_1000, 1, m_compare_784).
param(p_b_1001, 2, m_compare_784).
assign(v_priority_diff_1002, compose_warnings_guard_1_expr6, line(compose_warnings_guard_1, 63)).
method_invoc(compose_warnings_guard_1_expr7, m_get_priority_785, line(compose_warnings_guard_1, 63)).
ref(p_a_1000, compose_warnings_guard_1_expr7, line(compose_warnings_guard_1, 63)).
method_invoc(compose_warnings_guard_1_expr8, m_get_priority_785, line(compose_warnings_guard_1, 63)).
ref(p_b_1001, compose_warnings_guard_1_expr8, line(compose_warnings_guard_1, 63)).
return(v_priority_diff_1002, m_compare_784, line(compose_warnings_guard_1, 65)).
return(compose_warnings_guard_1_expr10, m_compare_784, line(compose_warnings_guard_1, 70)).
method_invoc(compose_warnings_guard_1_expr11, m_int_value_786, line(compose_warnings_guard_1, 70)).
ref(compose_warnings_guard_1_expr12, compose_warnings_guard_1_expr11, line(compose_warnings_guard_1, 70)).
method_invoc(compose_warnings_guard_1_expr12, m_get_390, line(compose_warnings_guard_1, 70)).
argument(p_b_1001, 1, compose_warnings_guard_1_expr12).
ref(f_order_of_addition_999, compose_warnings_guard_1_expr12, line(compose_warnings_guard_1, 70)).
assign(f_guards_1003, compose_warnings_guard_1_expr13, line(compose_warnings_guard_1, 76)).
param(p_guards_1004, 1, m_compose_warnings_guard_332).
method_invoc(compose_warnings_guard_1_expr14, m_add_guards_787, line(compose_warnings_guard_1, 80)).
argument(p_guards_1004, 1, compose_warnings_guard_1_expr14).
param(p_guards_1005, 1, m_compose_warnings_guard_591).
method_invoc(compose_warnings_guard_1_expr15, m_compose_warnings_guard_332, line(compose_warnings_guard_1, 84)).
argument(compose_warnings_guard_1_expr16, 1, compose_warnings_guard_1_expr15).
method_invoc(compose_warnings_guard_1_expr16, m_new_array_list_788, line(compose_warnings_guard_1, 84)).
argument(p_guards_1005, 1, compose_warnings_guard_1_expr16).
ref(t_lists_22, compose_warnings_guard_1_expr16, line(compose_warnings_guard_1, 84)).
param(p_guard_1006, 1, m_add_guard_333).
assign(v_compose_guard_1007, compose_warnings_guard_1_expr18, line(compose_warnings_guard_1, 89)).
assign(compose_warnings_guard_1_expr18, p_guard_1006, line(compose_warnings_guard_1, 89)).
ref(v_compose_guard_1007, q_demote_errors_42, line(compose_warnings_guard_1, 90)).
method_invoc(compose_warnings_guard_1_expr19, m_add_guards_787, line(compose_warnings_guard_1, 95)).
argument(compose_warnings_guard_1_expr20, 1, compose_warnings_guard_1_expr19).
method_invoc(compose_warnings_guard_1_expr20, m_new_array_list_789, line(compose_warnings_guard_1, 95)).
argument(compose_warnings_guard_1_expr21, 1, compose_warnings_guard_1_expr20).
ref(t_lists_22, compose_warnings_guard_1_expr20, line(compose_warnings_guard_1, 95)).
method_invoc(compose_warnings_guard_1_expr21, m_descending_set_790, line(compose_warnings_guard_1, 95)).
ref(f_guards_1003, compose_warnings_guard_1_expr21, line(compose_warnings_guard_1, 95)).
ref(v_compose_guard_1007, q_guards_43, line(compose_warnings_guard_1, 95)).
method_invoc(compose_warnings_guard_1_expr23, m_put_395, line(compose_warnings_guard_1, 98)).
argument(p_guard_1006, 1, compose_warnings_guard_1_expr23).
argument(f_number_of_adds_995, 2, compose_warnings_guard_1_expr23).
ref(f_order_of_addition_994, compose_warnings_guard_1_expr23, line(compose_warnings_guard_1, 98)).
method_invoc(compose_warnings_guard_1_expr24, m_remove_791, line(compose_warnings_guard_1, 99)).
argument(p_guard_1006, 1, compose_warnings_guard_1_expr24).
ref(f_guards_1003, compose_warnings_guard_1_expr24, line(compose_warnings_guard_1, 99)).
method_invoc(compose_warnings_guard_1_expr25, m_add_792, line(compose_warnings_guard_1, 100)).
argument(p_guard_1006, 1, compose_warnings_guard_1_expr25).
ref(f_guards_1003, compose_warnings_guard_1_expr25, line(compose_warnings_guard_1, 100)).
param(p_guards_1008, 1, m_add_guards_787).
ref(p_guards_1008, compose_warnings_guard_1_stmt16, line(compose_warnings_guard_1, 105)).
method_invoc(compose_warnings_guard_1_expr26, m_add_guard_333, line(compose_warnings_guard_1, 106)).
argument(v_guard_1009, 1, compose_warnings_guard_1_expr26).
param(p_error_1010, 1, m_level_793).
ref(f_guards_1003, compose_warnings_guard_1_stmt18, line(compose_warnings_guard_1, 112)).
assign(v_new_level_1012, compose_warnings_guard_1_expr27, line(compose_warnings_guard_1, 113)).
method_invoc(compose_warnings_guard_1_expr27, m_level_471, line(compose_warnings_guard_1, 113)).
argument(p_error_1010, 1, compose_warnings_guard_1_expr27).
ref(v_guard_1011, compose_warnings_guard_1_expr27, line(compose_warnings_guard_1, 113)).
return(compose_warnings_guard_1_literal5, m_level_793, line(compose_warnings_guard_1, 121)).
param(p_group_1013, 1, m_disables_794).
param(p_group_1014, 1, m_enables_612).
ref(f_guards_1003, compose_warnings_guard_1_stmt22, line(compose_warnings_guard_1, 150)).
method_invoc(compose_warnings_guard_1_expr29, m_enables_795, line(compose_warnings_guard_1, 151)).
argument(p_group_1014, 1, compose_warnings_guard_1_expr29).
ref(v_guard_1015, compose_warnings_guard_1_expr29, line(compose_warnings_guard_1, 151)).
return(compose_warnings_guard_1_literal6, m_enables_612, line(compose_warnings_guard_1, 152)).
method_invoc(compose_warnings_guard_1_expr30, m_disables_796, line(compose_warnings_guard_1, 153)).
argument(p_group_1014, 1, compose_warnings_guard_1_expr30).
ref(v_guard_1015, compose_warnings_guard_1_expr30, line(compose_warnings_guard_1, 153)).
return(compose_warnings_guard_1_literal7, m_enables_612, line(compose_warnings_guard_1, 158)).

%function_type_builder_1 - com.google.javascript.jscomp.FunctionTypeBuilder
assign(f_contents_1423, function_type_builder_1_expr1, line(function_type_builder_1, 78)).
method_invoc(function_type_builder_1_expr1, m_get_1061, line(function_type_builder_1, 78)).
ref(t_unknown_function_contents_39, function_type_builder_1_expr1, line(function_type_builder_1, 78)).
assign(f_return_type_1424, function_type_builder_1_literal1, line(function_type_builder_1, 80)).
assign(f_return_type_inferred_1425, function_type_builder_1_literal2, line(function_type_builder_1, 81)).
assign(f_implemented_interfaces_1426, function_type_builder_1_literal3, line(function_type_builder_1, 82)).
assign(f_extended_interfaces_1427, function_type_builder_1_literal4, line(function_type_builder_1, 83)).
assign(f_base_type_1428, function_type_builder_1_literal5, line(function_type_builder_1, 84)).
assign(f_this_type_1429, function_type_builder_1_literal6, line(function_type_builder_1, 85)).
assign(f_is_constructor_1430, function_type_builder_1_literal7, line(function_type_builder_1, 86)).
assign(f_makes_structs_1431, function_type_builder_1_literal8, line(function_type_builder_1, 87)).
assign(f_makes_dicts_1432, function_type_builder_1_literal9, line(function_type_builder_1, 88)).
assign(f_is_interface_1433, function_type_builder_1_literal10, line(function_type_builder_1, 89)).
assign(f_parameters_node_1434, function_type_builder_1_literal11, line(function_type_builder_1, 90)).
assign(f_template_type_names_1435, function_type_builder_1_expr2, line(function_type_builder_1, 91)).
method_invoc(function_type_builder_1_expr2, m_of_310, line(function_type_builder_1, 91)).
ref(t_immutable_list_14, function_type_builder_1_expr2, line(function_type_builder_1, 91)).
assign(f_extends_without_typedef_1436, function_type_builder_1_expr3, line(function_type_builder_1, 93)).
method_invoc(function_type_builder_1_expr3, m_warning_109, line(function_type_builder_1, 93)).
argument(function_type_builder_1_literal12, 1, function_type_builder_1_expr3).
argument(function_type_builder_1_literal13, 2, function_type_builder_1_expr3).
ref(t_diagnostic_type_2, function_type_builder_1_expr3, line(function_type_builder_1, 93)).
assign(f_extends_non_object_1437, function_type_builder_1_expr4, line(function_type_builder_1, 97)).
method_invoc(function_type_builder_1_expr4, m_warning_109, line(function_type_builder_1, 97)).
argument(function_type_builder_1_literal14, 1, function_type_builder_1_expr4).
argument(function_type_builder_1_literal15, 2, function_type_builder_1_expr4).
ref(t_diagnostic_type_2, function_type_builder_1_expr4, line(function_type_builder_1, 97)).
assign(f_resolved_tag_empty_1438, function_type_builder_1_expr5, line(function_type_builder_1, 101)).
method_invoc(function_type_builder_1_expr5, m_warning_109, line(function_type_builder_1, 101)).
argument(function_type_builder_1_literal16, 1, function_type_builder_1_expr5).
argument(function_type_builder_1_literal17, 2, function_type_builder_1_expr5).
ref(t_diagnostic_type_2, function_type_builder_1_expr5, line(function_type_builder_1, 101)).
assign(f_implements_without_constructor_1439, function_type_builder_1_expr6, line(function_type_builder_1, 105)).
assign(f_constructor_required_1440, function_type_builder_1_expr7, line(function_type_builder_1, 110)).
assign(f_var_args_must_be_last_1441, function_type_builder_1_expr8, line(function_type_builder_1, 114)).
method_invoc(function_type_builder_1_expr8, m_warning_109, line(function_type_builder_1, 114)).
argument(function_type_builder_1_literal18, 1, function_type_builder_1_expr8).
argument(function_type_builder_1_literal19, 2, function_type_builder_1_expr8).
ref(t_diagnostic_type_2, function_type_builder_1_expr8, line(function_type_builder_1, 114)).
assign(f_optional_arg_at_end_1442, function_type_builder_1_expr9, line(function_type_builder_1, 118)).
method_invoc(function_type_builder_1_expr9, m_warning_109, line(function_type_builder_1, 118)).
argument(function_type_builder_1_literal20, 1, function_type_builder_1_expr9).
argument(function_type_builder_1_literal21, 2, function_type_builder_1_expr9).
ref(t_diagnostic_type_2, function_type_builder_1_expr9, line(function_type_builder_1, 118)).
assign(f_inexistant_param_1443, function_type_builder_1_expr10, line(function_type_builder_1, 122)).
method_invoc(function_type_builder_1_expr10, m_warning_109, line(function_type_builder_1, 122)).
argument(function_type_builder_1_literal22, 1, function_type_builder_1_expr10).
argument(function_type_builder_1_literal23, 2, function_type_builder_1_expr10).
ref(t_diagnostic_type_2, function_type_builder_1_expr10, line(function_type_builder_1, 122)).
assign(f_type_redefinition_1444, function_type_builder_1_expr11, line(function_type_builder_1, 126)).
method_invoc(function_type_builder_1_expr11, m_warning_109, line(function_type_builder_1, 126)).
argument(function_type_builder_1_literal24, 1, function_type_builder_1_expr11).
argument(function_type_builder_1_expr12, 2, function_type_builder_1_expr11).
ref(t_diagnostic_type_2, function_type_builder_1_expr11, line(function_type_builder_1, 126)).
assign(f_template_type_duplicated_1445, function_type_builder_1_expr13, line(function_type_builder_1, 132)).
method_invoc(function_type_builder_1_expr13, m_warning_109, line(function_type_builder_1, 132)).
argument(function_type_builder_1_literal25, 1, function_type_builder_1_expr13).
argument(function_type_builder_1_literal26, 2, function_type_builder_1_expr13).
ref(t_diagnostic_type_2, function_type_builder_1_expr13, line(function_type_builder_1, 132)).
assign(f_template_type_expected_1446, function_type_builder_1_expr14, line(function_type_builder_1, 136)).
method_invoc(function_type_builder_1_expr14, m_warning_109, line(function_type_builder_1, 136)).
argument(function_type_builder_1_literal27, 1, function_type_builder_1_expr14).
argument(function_type_builder_1_literal28, 2, function_type_builder_1_expr14).
ref(t_diagnostic_type_2, function_type_builder_1_expr14, line(function_type_builder_1, 136)).
assign(f_this_type_non_object_1447, function_type_builder_1_expr15, line(function_type_builder_1, 140)).
param(p_type_1448, 1, m_apply_1062).
param(p_type_1449, 1, m_apply_1063).
param(p_fn_name_1450, 1, m_function_type_builder_1064).
param(p_compiler_1451, 2, m_function_type_builder_1064).
param(p_error_root_1452, 3, m_function_type_builder_1064).
param(p_source_name_1453, 4, m_function_type_builder_1064).
param(p_scope_1454, 5, m_function_type_builder_1064).
method_invoc(function_type_builder_1_expr16, m_check_not_null_538, line(function_type_builder_1, 203)).
argument(p_error_root_1452, 1, function_type_builder_1_expr16).
ref(t_preconditions_19, function_type_builder_1_expr16, line(function_type_builder_1, 203)).
assign(f_fn_name_1455, function_type_builder_1_expr19, line(function_type_builder_1, 205)).
cond_expr(function_type_builder_1_expr21, function_type_builder_1_literal29, p_fn_name_1450, line(function_type_builder_1, 205)).
assign(f_coding_convention_1456, function_type_builder_1_expr24, line(function_type_builder_1, 206)).
method_invoc(function_type_builder_1_expr24, m_get_coding_convention_12, line(function_type_builder_1, 206)).
ref(p_compiler_1451, function_type_builder_1_expr24, line(function_type_builder_1, 206)).
assign(f_type_registry_1457, function_type_builder_1_expr28, line(function_type_builder_1, 207)).
method_invoc(function_type_builder_1_expr28, m_get_type_registry_7, line(function_type_builder_1, 207)).
ref(p_compiler_1451, function_type_builder_1_expr28, line(function_type_builder_1, 207)).
assign(f_error_root_1458, p_error_root_1452, line(function_type_builder_1, 208)).
assign(f_source_name_1459, p_source_name_1453, line(function_type_builder_1, 209)).
assign(f_compiler_1460, p_compiler_1451, line(function_type_builder_1, 210)).
assign(f_scope_1461, p_scope_1454, line(function_type_builder_1, 211)).
param(p_contents_1462, 1, m_set_contents_1065).
assign(f_contents_1423, p_contents_1462, line(function_type_builder_1, 219)).
return(function_type_builder_1_expr46, m_set_contents_1065, line(function_type_builder_1, 221)).
param(p_old_type_1463, 1, m_infer_from_overridden_function_1066).
param(p_params_parent_1464, 2, m_infer_from_overridden_function_1066).
return(function_type_builder_1_expr48, m_infer_from_overridden_function_1066, line(function_type_builder_1, 236)).
param(p_info_1465, 1, m_infer_return_type_1067).
method_invoc(function_type_builder_1_expr51, m_has_return_type_1068, line(function_type_builder_1, 297)).
ref(p_info_1465, function_type_builder_1_expr51, line(function_type_builder_1, 297)).
return(function_type_builder_1_expr52, m_infer_return_type_1067, line(function_type_builder_1, 302)).
param(p_info_1466, 1, m_infer_inheritance_1069).
assign(f_is_constructor_1430, function_type_builder_1_expr55, line(function_type_builder_1, 311)).
method_invoc(function_type_builder_1_expr55, m_is_constructor_1070, line(function_type_builder_1, 311)).
ref(p_info_1466, function_type_builder_1_expr55, line(function_type_builder_1, 311)).
assign(f_makes_structs_1431, function_type_builder_1_expr57, line(function_type_builder_1, 312)).
method_invoc(function_type_builder_1_expr57, m_makes_structs_1071, line(function_type_builder_1, 312)).
ref(p_info_1466, function_type_builder_1_expr57, line(function_type_builder_1, 312)).
assign(f_makes_dicts_1432, function_type_builder_1_expr59, line(function_type_builder_1, 313)).
method_invoc(function_type_builder_1_expr59, m_makes_dicts_1072, line(function_type_builder_1, 313)).
ref(p_info_1466, function_type_builder_1_expr59, line(function_type_builder_1, 313)).
assign(f_is_interface_1433, function_type_builder_1_expr61, line(function_type_builder_1, 314)).
method_invoc(function_type_builder_1_expr61, m_is_interface_1073, line(function_type_builder_1, 314)).
ref(p_info_1466, function_type_builder_1_expr61, line(function_type_builder_1, 314)).
method_invoc(function_type_builder_1_expr66, m_has_base_type_1074, line(function_type_builder_1, 323)).
ref(p_info_1466, function_type_builder_1_expr66, line(function_type_builder_1, 323)).
method_invoc(function_type_builder_1_expr68, m_get_implemented_interface_count_1075, line(function_type_builder_1, 337)).
ref(p_info_1466, function_type_builder_1_expr68, line(function_type_builder_1, 337)).
assign(f_extended_interfaces_1427, function_type_builder_1_expr70, line(function_type_builder_1, 358)).
method_invoc(function_type_builder_1_expr70, m_new_array_list_329, line(function_type_builder_1, 358)).
ref(t_lists_22, function_type_builder_1_expr70, line(function_type_builder_1, 358)).
ref(function_type_builder_1_expr71, function_type_builder_1_stmt27, line(function_type_builder_1, 359)).
method_invoc(function_type_builder_1_expr71, m_get_extended_interfaces_1076, line(function_type_builder_1, 359)).
ref(p_info_1466, function_type_builder_1_expr71, line(function_type_builder_1, 359)).
assign(v_maybe_interface_type_1468, function_type_builder_1_expr72, line(function_type_builder_1, 360)).
method_invoc(function_type_builder_1_expr72, m_evaluate_1077, line(function_type_builder_1, 360)).
argument(f_scope_1461, 1, function_type_builder_1_expr72).
argument(f_type_registry_1457, 2, function_type_builder_1_expr72).
ref(v_t_1467, function_type_builder_1_expr72, line(function_type_builder_1, 360)).
method_invoc(function_type_builder_1_expr75, m_add_330, line(function_type_builder_1, 363)).
argument(function_type_builder_1_expr76, 1, function_type_builder_1_expr75).
ref(f_extended_interfaces_1427, function_type_builder_1_expr75, line(function_type_builder_1, 363)).
assign(function_type_builder_1_expr76, v_maybe_interface_type_1468, line(function_type_builder_1, 363)).
return(function_type_builder_1_expr77, m_infer_inheritance_1069, line(function_type_builder_1, 369)).
param(p_info_1469, 1, m_infer_this_type_1078).
param(p_type_1470, 2, m_infer_this_type_1078).
param(p_info_1471, 1, m_infer_this_type_1079).
assign(v_maybe_this_type_1472, function_type_builder_1_literal37, line(function_type_builder_1, 395)).
method_invoc(function_type_builder_1_expr80, m_has_this_type_1080, line(function_type_builder_1, 396)).
ref(p_info_1471, function_type_builder_1_expr80, line(function_type_builder_1, 396)).
return(function_type_builder_1_expr82, m_infer_this_type_1079, line(function_type_builder_1, 407)).
param(p_info_1473, 1, m_infer_parameter_types_1081).
param(p_args_parent_1474, 1, m_infer_parameter_types_1082).
param(p_info_1475, 2, m_infer_parameter_types_1082).
assign(v_old_parameter_type_1476, function_type_builder_1_literal41, line(function_type_builder_1, 438)).
assign(v_builder_1477, function_type_builder_1_expr85, line(function_type_builder_1, 443)).
method_invoc(function_type_builder_1_expr85, m_function_param_builder_1083, line(function_type_builder_1, 443)).
argument(f_type_registry_1457, 1, function_type_builder_1_expr85).
assign(v_warned_about_arg_list_1478, function_type_builder_1_literal43, line(function_type_builder_1, 444)).
assign(v_all_js_doc_params_1479, function_type_builder_1_expr86, line(function_type_builder_1, 445)).
cond_expr(function_type_builder_1_expr87, function_type_builder_1_expr88, function_type_builder_1_expr89, line(function_type_builder_1, 445)).
assign(function_type_builder_1_expr87, function_type_builder_1_expr90, line(function_type_builder_1, 445)).
assign(v_found_template_type_1480, function_type_builder_1_literal45, line(function_type_builder_1, 448)).
assign(v_is_var_args_1481, function_type_builder_1_literal46, line(function_type_builder_1, 449)).
ref(function_type_builder_1_expr91, function_type_builder_1_stmt44, line(function_type_builder_1, 450)).
method_invoc(function_type_builder_1_expr91, m_children_1084, line(function_type_builder_1, 450)).
ref(p_args_parent_1474, function_type_builder_1_expr91, line(function_type_builder_1, 450)).
ref(v_all_js_doc_params_1479, function_type_builder_1_stmt47, line(function_type_builder_1, 489)).
assign(f_parameters_node_1434, function_type_builder_1_expr97, line(function_type_builder_1, 493)).
method_invoc(function_type_builder_1_expr97, m_build_1085, line(function_type_builder_1, 493)).
ref(v_builder_1477, function_type_builder_1_expr97, line(function_type_builder_1, 493)).
return(function_type_builder_1_expr98, m_infer_parameter_types_1082, line(function_type_builder_1, 494)).
param(p_param_1484, 1, m_is_optional_parameter_1086).
param(p_info_1485, 2, m_is_optional_parameter_1086).
param(p_param_1486, 1, m_is_var_args_parameter_1087).
param(p_info_1487, 2, m_is_var_args_parameter_1087).
param(p_info_1488, 1, m_infer_template_type_name_1088).
assign(f_template_type_names_1435, function_type_builder_1_expr101, line(function_type_builder_1, 531)).
method_invoc(function_type_builder_1_expr101, m_get_template_type_names_1089, line(function_type_builder_1, 531)).
ref(p_info_1488, function_type_builder_1_expr101, line(function_type_builder_1, 531)).
method_invoc(function_type_builder_1_expr102, m_set_template_type_names_1090, line(function_type_builder_1, 532)).
argument(f_template_type_names_1435, 1, function_type_builder_1_expr102).
ref(f_type_registry_1457, function_type_builder_1_expr102, line(function_type_builder_1, 532)).
return(function_type_builder_1_expr103, m_infer_template_type_name_1088, line(function_type_builder_1, 534)).
param(p_builder_1489, 1, m_add_parameter_1091).
param(p_param_type_1490, 2, m_add_parameter_1091).
param(p_warned_about_arg_list_1491, 3, m_add_parameter_1091).
param(p_is_optional_1492, 4, m_add_parameter_1091).
param(p_is_var_args_1493, 5, m_add_parameter_1091).
method_invoc(function_type_builder_1_expr107, m_may_have_non_empty_returns_1093, line(function_type_builder_1, 594)).
ref(f_contents_1423, function_type_builder_1_expr107, line(function_type_builder_1, 594)).
assign(f_return_type_1424, function_type_builder_1_expr109, line(function_type_builder_1, 597)).
method_invoc(function_type_builder_1_expr109, m_get_native_type_1094, line(function_type_builder_1, 597)).
argument(f_void_type_1494, 1, function_type_builder_1_expr109).
ref(f_type_registry_1457, function_type_builder_1_expr109, line(function_type_builder_1, 597)).
assign(f_return_type_inferred_1425, function_type_builder_1_literal50, line(function_type_builder_1, 598)).
assign(v_fn_type_1495, function_type_builder_1_expr114, line(function_type_builder_1, 615)).
method_invoc(function_type_builder_1_expr114, m_create_interface_type_1095, line(function_type_builder_1, 615)).
argument(f_fn_name_1455, 1, function_type_builder_1_expr114).
argument(function_type_builder_1_expr115, 2, function_type_builder_1_expr114).
ref(f_type_registry_1457, function_type_builder_1_expr114, line(function_type_builder_1, 615)).
method_invoc(function_type_builder_1_expr117, m_is_global_1096, line(function_type_builder_1, 617)).
ref(function_type_builder_1_expr118, function_type_builder_1_expr117, line(function_type_builder_1, 617)).
method_invoc(function_type_builder_1_expr118, m_get_scope_declared_in_1097, line(function_type_builder_1, 617)).
method_invoc(function_type_builder_1_expr120, m_is_empty_1098, line(function_type_builder_1, 617)).
ref(f_fn_name_1455, function_type_builder_1_expr120, line(function_type_builder_1, 617)).
method_invoc(function_type_builder_1_expr121, m_declare_type_1099, line(function_type_builder_1, 618)).
argument(f_fn_name_1455, 1, function_type_builder_1_expr121).
argument(function_type_builder_1_expr122, 2, function_type_builder_1_expr121).
ref(f_type_registry_1457, function_type_builder_1_expr121, line(function_type_builder_1, 618)).
method_invoc(function_type_builder_1_expr122, m_get_instance_type_1100, line(function_type_builder_1, 618)).
ref(v_fn_type_1495, function_type_builder_1_expr122, line(function_type_builder_1, 618)).
method_invoc(function_type_builder_1_expr123, m_maybe_set_base_type_1101, line(function_type_builder_1, 620)).
argument(v_fn_type_1495, 1, function_type_builder_1_expr123).
method_invoc(function_type_builder_1_expr126, m_set_extended_interfaces_1102, line(function_type_builder_1, 638)).
throw(function_type_builder_1_expr126, unsupported_operation_exception, line(function_type_builder_1, 638)).
argument(f_extended_interfaces_1427, 1, function_type_builder_1_expr126).
ref(v_fn_type_1495, function_type_builder_1_expr126, line(function_type_builder_1, 638)).
method_invoc(function_type_builder_1_expr127, m_clear_template_type_names_1103, line(function_type_builder_1, 641)).
ref(f_type_registry_1457, function_type_builder_1_expr127, line(function_type_builder_1, 641)).
return(v_fn_type_1495, m_build_and_register_1092, line(function_type_builder_1, 643)).
param(p_fn_type_1496, 1, m_maybe_set_base_type_1101).
method_invoc(function_type_builder_1_expr130, m_is_interface_1104, line(function_type_builder_1, 647)).
ref(p_fn_type_1496, function_type_builder_1_expr130, line(function_type_builder_1, 647)).
param(p_warning_1497, 1, m_report_warning_1106).
param(p_args_1498, 2, m_report_warning_1106).
param(p_error_1499, 1, m_report_error_1107).
param(p_args_1500, 2, m_report_error_1107).
param(p_info_1501, 1, m_is_function_type_declaration_1108).
assign(v_dot_index_1502, function_type_builder_1_expr132, line(function_type_builder_1, 733)).
method_invoc(function_type_builder_1_expr132, m_index_of_1109, line(function_type_builder_1, 733)).
argument(function_type_builder_1_literal56, 1, function_type_builder_1_expr132).
ref(f_fn_name_1455, function_type_builder_1_expr132, line(function_type_builder_1, 733)).
return(f_scope_1461, m_get_scope_declared_in_1097, line(function_type_builder_1, 741)).
param(p_object_type_1503, 1, m_has_more_tags_to_resolve_1110).
assign(f_singleton_1504, function_type_builder_1_expr135, line(function_type_builder_1, 799)).
return(f_singleton_1504, m_get_1061, line(function_type_builder_1, 803)).
assign(f_has_non_empty_returns_1505, function_type_builder_1_literal58, line(function_type_builder_1, 844)).
assign(f_assigned_var_names_1506, function_type_builder_1_expr136, line(function_type_builder_1, 847)).
method_invoc(function_type_builder_1_expr136, m_create_1124, line(function_type_builder_1, 847)).
ref(t_hash_multiset_41, function_type_builder_1_expr136, line(function_type_builder_1, 847)).
param(p_n_1507, 1, m_ast_function_contents_1125).
assign(f_n_1508, p_n_1507, line(function_type_builder_1, 850)).
return(f_n_1508, m_get_source_node_1126, line(function_type_builder_1, 855)).
return(function_type_builder_1_expr140, m_may_be_from_externs_1127, line(function_type_builder_1, 860)).
method_invoc(function_type_builder_1_expr140, m_is_from_externs_1128, line(function_type_builder_1, 860)).
ref(f_n_1508, function_type_builder_1_expr140, line(function_type_builder_1, 860)).
return(f_has_non_empty_returns_1505, m_may_have_non_empty_returns_1129, line(function_type_builder_1, 865)).
assign(v_block_1509, function_type_builder_1_expr141, line(function_type_builder_1, 874)).
method_invoc(function_type_builder_1_expr141, m_get_last_child_1132, line(function_type_builder_1, 874)).
ref(f_n_1508, function_type_builder_1_expr141, line(function_type_builder_1, 874)).
return(function_type_builder_1_expr142, m_may_have_single_throw_1131, line(function_type_builder_1, 875)).
method_invoc(function_type_builder_1_expr143, m_has_one_child_1133, line(function_type_builder_1, 875)).
ref(v_block_1509, function_type_builder_1_expr143, line(function_type_builder_1, 875)).
method_invoc(function_type_builder_1_expr144, m_is_throw_1134, line(function_type_builder_1, 875)).
ref(function_type_builder_1_expr145, function_type_builder_1_expr144, line(function_type_builder_1, 875)).
method_invoc(function_type_builder_1_expr145, m_get_first_child_828, line(function_type_builder_1, 875)).
ref(v_block_1509, function_type_builder_1_expr145, line(function_type_builder_1, 875)).
return(function_type_builder_1_expr146, m_get_escaped_var_names_1135, line(function_type_builder_1, 880)).
cond_expr(function_type_builder_1_expr147, function_type_builder_1_expr148, f_escaped_var_names_1510, line(function_type_builder_1, 880)).
param(p_name_1511, 1, m_record_escaped_var_name_1136).
param(p_name_1512, 1, m_record_escaped_qualified_name_1138).
return(f_assigned_var_names_1506, m_get_assigned_name_counts_1139, line(function_type_builder_1, 906)).
param(p_name_1513, 1, m_record_assigned_name_1140).

%source_excerpt_provider_1 - com.google.javascript.jscomp.SourceExcerptProvider
param(p_source_2342, 1, m_get_1671).
param(p_source_name_2343, 2, m_get_1671).
param(p_line_number_2344, 3, m_get_1671).
param(p_formatter_2345, 4, m_get_1671).
param(p_source_2347, 1, m_get_1672).
param(p_source_name_2348, 2, m_get_1672).
param(p_line_number_2349, 3, m_get_1672).
param(p_formatter_2350, 4, m_get_1672).
param(p_source_2351, 1, m_get_1673).
param(p_source_name_2352, 2, m_get_1673).
param(p_line_number_2353, 3, m_get_1673).
param(p_formatter_2354, 4, m_get_1673).
param(p_source_name_2355, 1, m_get_source_line_1674).
param(p_line_number_2356, 2, m_get_source_line_1674).
param(p_source_name_2357, 1, m_get_source_region_1675).
param(p_line_number_2358, 2, m_get_source_region_1675).
param(p_line_2359, 1, m_format_line_1676).
param(p_line_number_2360, 2, m_format_line_1676).
param(p_region_2361, 1, m_format_region_1677).

%jsdoc_info_builder_1 - com.google.javascript.rhino.JSDocInfoBuilder
assign(f_populated_4322, jsdoc_info_builder_1_literal1, line(jsdoc_info_builder_1, 61)).
assign(f_parse_documentation_4323, jsdoc_info_builder_1_literal2, line(jsdoc_info_builder_1, 64)).
assign(f_current_marker_4324, jsdoc_info_builder_1_literal3, line(jsdoc_info_builder_1, 67)).
param(p_parse_documentation_4325, 1, m_jsdoc_info_builder_3463).
assign(f_current_info_4326, jsdoc_info_builder_1_expr3, line(jsdoc_info_builder_1, 70)).
method_invoc(jsdoc_info_builder_1_expr3, m_jsdoc_info_3831, line(jsdoc_info_builder_1, 70)).
argument(p_parse_documentation_4325, 1, jsdoc_info_builder_1_expr3).
assign(f_parse_documentation_4323, p_parse_documentation_4325, line(jsdoc_info_builder_1, 71)).
param(p_source_comment_4327, 1, m_record_original_comment_string_3464).
return(f_parse_documentation_4323, m_should_parse_documentation_3470, line(jsdoc_info_builder_1, 85)).
return(f_populated_4322, m_is_populated_3957, line(jsdoc_info_builder_1, 93)).
return(jsdoc_info_builder_1_expr8, m_is_populated_with_file_overview_3531, line(jsdoc_info_builder_1, 102)).
method_invoc(jsdoc_info_builder_1_expr9, m_is_populated_3957, line(jsdoc_info_builder_1, 102)).
param(p_associated_node_4328, 1, m_build_3533).
assign(v_built_4329, f_current_info_4326, line(jsdoc_info_builder_1, 126)).
method_invoc(jsdoc_info_builder_1_expr10, m_set_associated_node_3950, line(jsdoc_info_builder_1, 127)).
argument(p_associated_node_4328, 1, jsdoc_info_builder_1_expr10).
ref(v_built_4329, jsdoc_info_builder_1_expr10, line(jsdoc_info_builder_1, 127)).
method_invoc(jsdoc_info_builder_1_expr11, m_populate_defaults_3959, line(jsdoc_info_builder_1, 128)).
argument(v_built_4329, 1, jsdoc_info_builder_1_expr11).
assign(f_populated_4322, jsdoc_info_builder_1_literal4, line(jsdoc_info_builder_1, 129)).
assign(f_current_info_4326, jsdoc_info_builder_1_expr14, line(jsdoc_info_builder_1, 130)).
method_invoc(jsdoc_info_builder_1_expr14, m_jsdoc_info_3831, line(jsdoc_info_builder_1, 130)).
argument(f_parse_documentation_4323, 1, jsdoc_info_builder_1_expr14).
return(v_built_4329, m_build_3533, line(jsdoc_info_builder_1, 131)).
param(p_info_4330, 1, m_populate_defaults_3959).
method_invoc(jsdoc_info_builder_1_expr18, m_get_visibility_3898, line(jsdoc_info_builder_1, 139)).
ref(p_info_4330, jsdoc_info_builder_1_expr18, line(jsdoc_info_builder_1, 139)).
method_invoc(jsdoc_info_builder_1_expr19, m_set_visibility_3877, line(jsdoc_info_builder_1, 140)).
argument(q_inherited_116, 1, jsdoc_info_builder_1_expr19).
ref(p_info_4330, jsdoc_info_builder_1_expr19, line(jsdoc_info_builder_1, 140)).
ref(t_visibility_103, q_inherited_116, line(jsdoc_info_builder_1, 140)).
param(p_annotation_4331, 1, m_mark_annotation_3474).
param(p_lineno_4332, 2, m_mark_annotation_3474).
param(p_charno_4333, 3, m_mark_annotation_3474).
assign(v_marker_4334, jsdoc_info_builder_1_expr20, line(jsdoc_info_builder_1, 149)).
method_invoc(jsdoc_info_builder_1_expr20, m_add_marker_3881, line(jsdoc_info_builder_1, 149)).
ref(f_current_info_4326, jsdoc_info_builder_1_expr20, line(jsdoc_info_builder_1, 149)).
assign(f_current_marker_4324, v_marker_4334, line(jsdoc_info_builder_1, 161)).
param(p_text_4335, 1, m_mark_text_3960).
param(p_start_lineno_4336, 2, m_mark_text_3960).
param(p_start_charno_4337, 3, m_mark_text_3960).
param(p_end_lineno_4338, 4, m_mark_text_3960).
param(p_end_charno_4339, 5, m_mark_text_3960).
param(p_type_node_4340, 1, m_mark_type_node_3493).
param(p_lineno_4341, 2, m_mark_type_node_3493).
param(p_start_charno_4342, 3, m_mark_type_node_3493).
param(p_end_lineno_4343, 4, m_mark_type_node_3493).
param(p_end_charno_4344, 5, m_mark_type_node_3493).
param(p_has_lc_4345, 6, m_mark_type_node_3493).
param(p_name_4346, 1, m_mark_name_3961).
param(p_lineno_4347, 2, m_mark_name_3961).
param(p_charno_4348, 3, m_mark_name_3961).
param(p_name_4349, 1, m_mark_name_3962).
param(p_file_4350, 2, m_mark_name_3962).
param(p_lineno_4351, 3, m_mark_name_3962).
param(p_charno_4352, 4, m_mark_name_3962).
param(p_description_4353, 1, m_record_block_description_3963).
param(p_visibility_4354, 1, m_record_visibility_3964).
param(p_parameter_name_4355, 1, m_record_parameter_3965).
param(p_type_4356, 2, m_record_parameter_3965).
param(p_parameter_name_4357, 1, m_record_parameter_description_3966).
param(p_description_4358, 2, m_record_parameter_description_3966).
param(p_names_4359, 1, m_record_template_type_names_3967).
param(p_type_4360, 1, m_record_throw_type_3968).
param(p_type_4361, 1, m_record_throw_description_3969).
param(p_description_4362, 2, m_record_throw_description_3969).
param(p_author_4363, 1, m_add_author_3970).
param(p_reference_4364, 1, m_add_reference_3971).
param(p_version_4365, 1, m_record_version_3974).
param(p_reason_4366, 1, m_record_deprecation_reason_3975).
param(p_suppressions_4367, 1, m_record_suppressions_3976).
param(p_modifies_4368, 1, m_record_modifies_3977).
param(p_type_4369, 1, m_record_type_3978).
param(p_type_4370, 1, m_record_typedef_3979).
param(p_js_type_4371, 1, m_record_return_type_3981).
param(p_description_4372, 1, m_record_return_description_3982).
param(p_type_4373, 1, m_record_define_type_3983).
param(p_type_4374, 1, m_record_enum_parameter_type_3984).
param(p_type_4375, 1, m_record_this_type_3985).
param(p_js_type_4376, 1, m_record_base_type_3986).
param(p_description_4377, 1, m_record_description_3988).
param(p_meaning_4378, 1, m_record_meaning_3989).
param(p_description_4379, 1, m_record_file_overview_3990).
method_invoc(jsdoc_info_builder_1_expr25, m_has_any_singleton_type_tags_4004, line(jsdoc_info_builder_1, 861)).
method_invoc(jsdoc_info_builder_1_expr26, m_set_interface_3846, line(jsdoc_info_builder_1, 866)).
argument(jsdoc_info_builder_1_literal8, 1, jsdoc_info_builder_1_expr26).
ref(f_current_info_4326, jsdoc_info_builder_1_expr26, line(jsdoc_info_builder_1, 866)).
assign(f_populated_4322, jsdoc_info_builder_1_literal9, line(jsdoc_info_builder_1, 867)).
return(jsdoc_info_builder_1_literal10, m_record_interface_3475, line(jsdoc_info_builder_1, 868)).
return(jsdoc_info_builder_1_expr28, m_is_interface_recorded_3484, line(jsdoc_info_builder_1, 961)).
method_invoc(jsdoc_info_builder_1_expr28, m_is_interface_1073, line(jsdoc_info_builder_1, 961)).
ref(f_current_info_4326, jsdoc_info_builder_1_expr28, line(jsdoc_info_builder_1, 961)).
param(p_name_4380, 1, m_has_parameter_4011).
param(p_interface_name_4381, 1, m_record_implemented_interface_4012).
param(p_interface_type_4382, 1, m_record_extended_interface_3485).
method_invoc(jsdoc_info_builder_1_expr29, m_add_extended_interface_3934, line(jsdoc_info_builder_1, 987)).
argument(p_interface_type_4382, 1, jsdoc_info_builder_1_expr29).
ref(f_current_info_4326, jsdoc_info_builder_1_expr29, line(jsdoc_info_builder_1, 987)).
assign(f_populated_4322, jsdoc_info_builder_1_literal11, line(jsdoc_info_builder_1, 988)).
return(jsdoc_info_builder_1_literal12, m_record_extended_interface_3485, line(jsdoc_info_builder_1, 989)).
param(p_name_4383, 1, m_record_lends_4013).
return(jsdoc_info_builder_1_expr31, m_has_any_singleton_type_tags_4004, line(jsdoc_info_builder_1, 1030)).
method_invoc(jsdoc_info_builder_1_expr32, m_has_type_3022, line(jsdoc_info_builder_1, 1030)).
ref(f_current_info_4326, jsdoc_info_builder_1_expr32, line(jsdoc_info_builder_1, 1030)).

%source_file_1 - com.google.javascript.jscomp.SourceFile
assign(f_is_extern_file_2362, source_file_1_literal1, line(source_file_1, 60)).
assign(f_original_path_2363, source_file_1_literal2, line(source_file_1, 67)).
assign(f_line_offsets_2364, source_file_1_literal3, line(source_file_1, 70)).
assign(f_code_2365, source_file_1_literal4, line(source_file_1, 72)).
param(p_file_name_2366, 1, m_source_file_1679).
method_invoc(source_file_1_expr3, m_is_empty_1098, line(source_file_1, 82)).
ref(p_file_name_2366, source_file_1_expr3, line(source_file_1, 82)).
assign(f_file_name_2367, p_file_name_2366, line(source_file_1, 85)).
param(p_lineno_2368, 1, m_get_line_offset_1680).
throw(m_get_code_1189, ioexception).
return(f_code_2365, m_get_code_1189, line(source_file_1, 132)).
throw(m_get_code_reader_1683, ioexception).
param(p_source_code_2369, 1, m_set_code_1685).
assign(f_code_2365, p_source_code_2369, line(source_file_1, 148)).
param(p_original_path_2370, 1, m_set_original_path_1687).
assign(f_original_path_2363, p_original_path_2370, line(source_file_1, 156)).
return(f_file_name_2367, m_get_name_1179, line(source_file_1, 175)).
return(f_is_extern_file_2362, m_is_extern_560, line(source_file_1, 181)).
param(p_new_val_2371, 1, m_set_is_extern_529).
assign(f_is_extern_file_2362, p_new_val_2371, line(source_file_1, 186)).
param(p_offset_2372, 1, m_get_line_of_offset_1690).
param(p_offset_2373, 1, m_get_column_of_offset_1691).
param(p_line_number_2374, 1, m_get_line_1692).
param(p_line_number_2375, 1, m_get_region_1693).
param(p_file_name_2376, 1, m_from_file_1695).
param(p_c_2377, 2, m_from_file_1695).
param(p_file_name_2378, 1, m_from_file_1696).
param(p_file_2379, 1, m_from_file_1697).
param(p_c_2380, 2, m_from_file_1697).
param(p_file_2381, 1, m_from_file_1698).
param(p_file_name_2382, 1, m_from_code_1699).
param(p_code_2383, 2, m_from_code_1699).
return(source_file_1_expr12, m_from_code_1699, line(source_file_1, 323)).
method_invoc(source_file_1_expr12, m_build_from_code_1700, line(source_file_1, 323)).
argument(p_file_name_2382, 1, source_file_1_expr12).
argument(p_code_2383, 2, source_file_1_expr12).
ref(source_file_1_expr13, source_file_1_expr12, line(source_file_1, 323)).
method_invoc(source_file_1_expr13, m_builder_1701, line(source_file_1, 323)).
param(p_file_name_2384, 1, m_from_code_1702).
param(p_original_path_2385, 2, m_from_code_1702).
param(p_code_2386, 3, m_from_code_1702).
param(p_file_name_2387, 1, m_from_input_stream_1703).
param(p_s_2388, 2, m_from_input_stream_1703).
throw(m_from_input_stream_1703, ioexception).
param(p_file_name_2389, 1, m_from_input_stream_1704).
param(p_original_path_2390, 2, m_from_input_stream_1704).
param(p_s_2391, 3, m_from_input_stream_1704).
throw(m_from_input_stream_1704, ioexception).
param(p_file_name_2392, 1, m_from_reader_1705).
param(p_r_2393, 2, m_from_reader_1705).
throw(m_from_reader_1705, ioexception).
param(p_file_name_2394, 1, m_from_generator_1706).
param(p_generator_2395, 2, m_from_generator_1706).
return(source_file_1_expr14, m_builder_1701, line(source_file_1, 355)).
method_invoc(source_file_1_expr14, m_builder_1707, line(source_file_1, 355)).
assign(f_charset_2396, q_utf_8_68, line(source_file_1, 365)).
ref(t_charsets_62, q_utf_8_68, line(source_file_1, 365)).
assign(f_original_path_2397, source_file_1_literal6, line(source_file_1, 366)).
param(p_charset_2398, 1, m_with_charset_1708).
param(p_original_path_2399, 1, m_with_original_path_1709).
param(p_file_name_2400, 1, m_build_from_file_1710).
param(p_file_2401, 1, m_build_from_file_1711).
param(p_file_name_2402, 1, m_build_from_code_1700).
param(p_code_2403, 2, m_build_from_code_1700).
return(source_file_1_expr15, m_build_from_code_1700, line(source_file_1, 391)).
method_invoc(source_file_1_expr15, m_preloaded_1712, line(source_file_1, 391)).
argument(p_file_name_2402, 1, source_file_1_expr15).
argument(f_original_path_2397, 2, source_file_1_expr15).
argument(p_code_2403, 3, source_file_1_expr15).
param(p_file_name_2404, 1, m_build_from_input_stream_1713).
param(p_s_2405, 2, m_build_from_input_stream_1713).
throw(m_build_from_input_stream_1713, ioexception).
param(p_file_name_2406, 1, m_build_from_reader_1714).
param(p_r_2407, 2, m_build_from_reader_1714).
throw(m_build_from_reader_1714, ioexception).
param(p_file_name_2408, 1, m_build_from_generator_1715).
param(p_generator_2409, 2, m_build_from_generator_1715).
param(p_file_name_2410, 1, m_preloaded_1712).
param(p_original_path_2411, 2, m_preloaded_1712).
param(p_code_2412, 3, m_preloaded_1712).
method_invoc(source_file_1_expr16, m_source_file_1679, line(source_file_1, 422)).
argument(p_file_name_2410, 1, source_file_1_expr16).
method_invoc(source_file_1_expr17, m_set_original_path_1687, line(source_file_1, 423)).
argument(p_original_path_2411, 1, source_file_1_expr17).
method_invoc(source_file_1_expr18, m_set_code_1685, line(source_file_1, 424)).
argument(p_code_2412, 1, source_file_1_expr18).
param(p_file_name_2413, 1, m_generated_1716).
param(p_original_path_2414, 2, m_generated_1716).
param(p_generator_2415, 3, m_generated_1716).
throw(m_get_code_1717, ioexception).
param(p_file_2416, 1, m_on_disk_1719).
param(p_original_path_2417, 2, m_on_disk_1719).
param(p_c_2418, 3, m_on_disk_1719).
throw(m_get_code_1720, ioexception).
throw(m_get_code_reader_1721, ioexception).
param(p_c_2419, 1, m_set_charset_1723).

%type_check_1 - com.google.javascript.jscomp.TypeCheck
assign(f_unexpected_token_2507, type_check_1_expr1, line(type_check_1, 60)).
method_invoc(type_check_1_expr1, m_error_1, line(type_check_1, 60)).
argument(type_check_1_literal1, 1, type_check_1_expr1).
argument(type_check_1_literal2, 2, type_check_1_expr1).
ref(t_diagnostic_type_2, type_check_1_expr1, line(type_check_1, 60)).
assign(f_bad_delete_2508, type_check_1_expr2, line(type_check_1, 69)).
assign(f_deterministic_test_2509, type_check_1_expr3, line(type_check_1, 84)).
assign(f_deterministic_test_no_result_2510, type_check_1_expr4, line(type_check_1, 91)).
assign(f_inexistent_enum_element_2511, type_check_1_expr5, line(type_check_1, 98)).
assign(f_inexistent_property_2512, type_check_1_expr6, line(type_check_1, 105)).
assign(f_not_a_constructor_2513, type_check_1_expr7, line(type_check_1, 110)).
assign(f_bit_operation_2514, type_check_1_expr8, line(type_check_1, 115)).
assign(f_not_callable_2515, type_check_1_expr9, line(type_check_1, 120)).
assign(f_constructor_not_callable_2516, type_check_1_expr10, line(type_check_1, 125)).
assign(f_function_masks_variable_2517, type_check_1_expr11, line(type_check_1, 130)).
assign(f_multiple_var_def_2518, type_check_1_expr12, line(type_check_1, 135)).
method_invoc(type_check_1_expr12, m_warning_109, line(type_check_1, 135)).
argument(type_check_1_literal3, 1, type_check_1_expr12).
argument(type_check_1_literal4, 2, type_check_1_expr12).
ref(t_diagnostic_type_2, type_check_1_expr12, line(type_check_1, 135)).
assign(f_enum_dup_2519, type_check_1_expr13, line(type_check_1, 139)).
method_invoc(type_check_1_expr13, m_error_1, line(type_check_1, 139)).
argument(type_check_1_literal5, 1, type_check_1_expr13).
argument(type_check_1_literal6, 2, type_check_1_expr13).
ref(t_diagnostic_type_2, type_check_1_expr13, line(type_check_1, 139)).
assign(f_enum_not_constant_2520, type_check_1_expr14, line(type_check_1, 142)).
assign(f_invalid_interface_member_declaration_2521, type_check_1_expr15, line(type_check_1, 146)).
assign(f_interface_function_not_empty_2522, type_check_1_expr16, line(type_check_1, 152)).
assign(f_conflicting_extended_type_2523, type_check_1_expr17, line(type_check_1, 157)).
assign(f_conflicting_implemented_type_2524, type_check_1_expr18, line(type_check_1, 162)).
assign(f_bad_implemented_type_2525, type_check_1_expr19, line(type_check_1, 168)).
assign(f_hidden_superclass_property_2526, type_check_1_expr20, line(type_check_1, 173)).
assign(f_hidden_interface_property_2527, type_check_1_expr21, line(type_check_1, 179)).
assign(f_hidden_superclass_property_mismatch_2528, type_check_1_expr22, line(type_check_1, 185)).
assign(f_unknown_override_2529, type_check_1_expr23, line(type_check_1, 192)).
assign(f_interface_method_override_2530, type_check_1_expr24, line(type_check_1, 197)).
assign(f_unknown_expr_type_2531, type_check_1_expr25, line(type_check_1, 202)).
assign(f_unresolved_type_2532, type_check_1_expr26, line(type_check_1, 206)).
assign(f_wrong_argument_count_2533, type_check_1_expr27, line(type_check_1, 210)).
assign(f_illegal_implicit_cast_2534, type_check_1_expr28, line(type_check_1, 216)).
assign(f_incompatible_extended_property_type_2535, type_check_1_expr29, line(type_check_1, 222)).
assign(f_expected_this_type_2536, type_check_1_expr30, line(type_check_1, 228)).
assign(f_in_used_with_struct_2537, type_check_1_expr31, line(type_check_1, 233)).
assign(f_illegal_property_creation_2538, type_check_1_expr32, line(type_check_1, 237)).
assign(f_illegal_objlit_key_2539, type_check_1_expr33, line(type_check_1, 242)).
assign(f_all_diagnostics_2540, type_check_1_expr34, line(type_check_1, 247)).
method_invoc(type_check_1_expr34, m_diagnostic_group_953, line(type_check_1, 247)).
argument(f_deterministic_test_2509, 1, type_check_1_expr34).
argument(f_deterministic_test_no_result_2510, 2, type_check_1_expr34).
argument(f_inexistent_enum_element_2511, 3, type_check_1_expr34).
argument(f_inexistent_property_2512, 4, type_check_1_expr34).
argument(f_not_a_constructor_2513, 5, type_check_1_expr34).
argument(f_bit_operation_2514, 6, type_check_1_expr34).
argument(f_not_callable_2515, 7, type_check_1_expr34).
argument(f_constructor_not_callable_2516, 8, type_check_1_expr34).
argument(f_function_masks_variable_2517, 9, type_check_1_expr34).
argument(f_multiple_var_def_2518, 10, type_check_1_expr34).
argument(f_enum_dup_2519, 11, type_check_1_expr34).
argument(f_enum_not_constant_2520, 12, type_check_1_expr34).
argument(f_invalid_interface_member_declaration_2521, 13, type_check_1_expr34).
argument(f_interface_function_not_empty_2522, 14, type_check_1_expr34).
argument(f_conflicting_extended_type_2523, 15, type_check_1_expr34).
argument(f_conflicting_implemented_type_2524, 16, type_check_1_expr34).
argument(f_bad_implemented_type_2525, 17, type_check_1_expr34).
argument(f_hidden_superclass_property_2526, 18, type_check_1_expr34).
argument(f_hidden_interface_property_2527, 19, type_check_1_expr34).
argument(f_hidden_superclass_property_mismatch_2528, 20, type_check_1_expr34).
argument(f_unknown_override_2529, 21, type_check_1_expr34).
argument(f_interface_method_override_2530, 22, type_check_1_expr34).
argument(f_unknown_expr_type_2531, 23, type_check_1_expr34).
argument(f_unresolved_type_2532, 24, type_check_1_expr34).
argument(f_wrong_argument_count_2533, 25, type_check_1_expr34).
argument(f_illegal_implicit_cast_2534, 26, type_check_1_expr34).
argument(f_incompatible_extended_property_type_2535, 27, type_check_1_expr34).
argument(f_expected_this_type_2536, 28, type_check_1_expr34).
argument(f_in_used_with_struct_2537, 29, type_check_1_expr34).
argument(f_illegal_property_creation_2538, 30, type_check_1_expr34).
argument(f_illegal_objlit_key_2539, 31, type_check_1_expr34).
argument(q_type_parse_error_71, 32, type_check_1_expr34).
argument(q_unknown_lends_72, 33, type_check_1_expr34).
argument(q_lends_on_non_object_73, 34, type_check_1_expr34).
argument(q_ctor_initializer_74, 35, type_check_1_expr34).
argument(q_iface_initializer_75, 36, type_check_1_expr34).
argument(q_this_type_non_object_76, 37, type_check_1_expr34).
assign(f_report_missing_properties_2541, type_check_1_literal7, line(type_check_1, 301)).
assign(f_infer_jsdoc_info_2542, type_check_1_literal8, line(type_check_1, 303)).
assign(f_typed_count_2543, type_check_1_literal9, line(type_check_1, 306)).
assign(f_null_count_2544, type_check_1_literal10, line(type_check_1, 307)).
assign(f_unknown_count_2545, type_check_1_literal11, line(type_check_1, 308)).
assign(f_no_type_check_section_2546, type_check_1_literal12, line(type_check_1, 313)).
param(p_compiler_2547, 1, m_type_check_1768).
param(p_reverse_interpreter_2548, 2, m_type_check_1768).
param(p_type_registry_2549, 3, m_type_check_1768).
param(p_top_scope_2550, 4, m_type_check_1768).
param(p_scope_creator_2551, 5, m_type_check_1768).
param(p_report_missing_override_2552, 6, m_type_check_1768).
param(p_report_unknown_types_2553, 7, m_type_check_1768).
assign(f_compiler_2554, p_compiler_2547, line(type_check_1, 322)).
assign(f_validator_2555, type_check_1_expr40, line(type_check_1, 323)).
method_invoc(type_check_1_expr40, m_get_type_validator_18, line(type_check_1, 323)).
ref(p_compiler_2547, type_check_1_expr40, line(type_check_1, 323)).
assign(f_reverse_interpreter_2556, p_reverse_interpreter_2548, line(type_check_1, 324)).
assign(f_type_registry_2557, p_type_registry_2549, line(type_check_1, 325)).
assign(f_top_scope_2558, p_top_scope_2550, line(type_check_1, 326)).
assign(f_scope_creator_2559, p_scope_creator_2551, line(type_check_1, 327)).
assign(f_report_missing_override_2560, p_report_missing_override_2552, line(type_check_1, 328)).
assign(f_report_unknown_types_2561, p_report_unknown_types_2553, line(type_check_1, 329)).
assign(f_infer_jsdoc_info_2542, type_check_1_expr62, line(type_check_1, 330)).
method_invoc(type_check_1_expr62, m_infer_jsdoc_info_1150, line(type_check_1, 330)).
argument(p_compiler_2547, 1, type_check_1_expr62).
param(p_compiler_2562, 1, m_type_check_1769).
param(p_reverse_interpreter_2563, 2, m_type_check_1769).
param(p_type_registry_2564, 3, m_type_check_1769).
param(p_report_missing_override_2565, 4, m_type_check_1769).
param(p_report_unknown_types_2566, 5, m_type_check_1769).
method_invoc(type_check_1_expr64, m_type_check_1768, line(type_check_1, 338)).
argument(p_compiler_2562, 1, type_check_1_expr64).
argument(p_reverse_interpreter_2563, 2, type_check_1_expr64).
argument(p_type_registry_2564, 3, type_check_1_expr64).
argument(type_check_1_literal13, 4, type_check_1_expr64).
argument(type_check_1_literal14, 5, type_check_1_expr64).
argument(p_report_missing_override_2565, 6, type_check_1_expr64).
argument(p_report_unknown_types_2566, 7, type_check_1_expr64).
param(p_compiler_2567, 1, m_type_check_1770).
param(p_reverse_interpreter_2568, 2, m_type_check_1770).
param(p_type_registry_2569, 3, m_type_check_1770).
param(p_report_2570, 1, m_report_missing_properties_1771).
param(p_externs_root_2571, 1, m_process_1772).
param(p_js_root_2572, 2, m_process_1772).
method_invoc(type_check_1_expr65, m_check_not_null_538, line(type_check_1, 364)).
argument(f_scope_creator_2559, 1, type_check_1_expr65).
ref(t_preconditions_19, type_check_1_expr65, line(type_check_1, 364)).
method_invoc(type_check_1_expr66, m_check_not_null_538, line(type_check_1, 365)).
argument(f_top_scope_2558, 1, type_check_1_expr66).
ref(t_preconditions_19, type_check_1_expr66, line(type_check_1, 365)).
assign(v_externs_and_js_2573, type_check_1_expr67, line(type_check_1, 367)).
method_invoc(type_check_1_expr67, m_get_parent_840, line(type_check_1, 367)).
ref(p_js_root_2572, type_check_1_expr67, line(type_check_1, 367)).
method_invoc(type_check_1_expr68, m_check_state_536, line(type_check_1, 368)).
argument(type_check_1_expr69, 1, type_check_1_expr68).
ref(t_preconditions_19, type_check_1_expr68, line(type_check_1, 368)).
method_invoc(type_check_1_expr70, m_check_state_536, line(type_check_1, 369)).
argument(type_check_1_expr71, 1, type_check_1_expr70).
ref(t_preconditions_19, type_check_1_expr70, line(type_check_1, 369)).
method_invoc(type_check_1_expr73, m_check_1773, line(type_check_1, 375)).
argument(p_js_root_2572, 1, type_check_1_expr73).
argument(type_check_1_literal17, 2, type_check_1_expr73).
param(p_externs_root_2574, 1, m_process_for_testing_1774).
param(p_js_root_2575, 2, m_process_for_testing_1774).
method_invoc(type_check_1_expr74, m_check_state_536, line(type_check_1, 380)).
argument(type_check_1_expr75, 1, type_check_1_expr74).
ref(t_preconditions_19, type_check_1_expr74, line(type_check_1, 380)).
method_invoc(type_check_1_expr76, m_check_state_536, line(type_check_1, 381)).
argument(type_check_1_expr77, 1, type_check_1_expr76).
ref(t_preconditions_19, type_check_1_expr76, line(type_check_1, 381)).
method_invoc(type_check_1_expr78, m_check_state_536, line(type_check_1, 383)).
argument(type_check_1_expr79, 1, type_check_1_expr78).
ref(t_preconditions_19, type_check_1_expr78, line(type_check_1, 383)).
method_invoc(type_check_1_expr80, m_get_parent_840, line(type_check_1, 383)).
ref(p_js_root_2575, type_check_1_expr80, line(type_check_1, 383)).
assign(v_externs_and_js_root_2576, type_check_1_expr81, line(type_check_1, 384)).
method_invoc(type_check_1_expr81, m_get_parent_840, line(type_check_1, 384)).
ref(p_js_root_2575, type_check_1_expr81, line(type_check_1, 384)).
assign(f_scope_creator_2559, type_check_1_expr83, line(type_check_1, 386)).
method_invoc(type_check_1_expr83, m_memoized_scope_creator_1258, line(type_check_1, 386)).
argument(type_check_1_expr84, 1, type_check_1_expr83).
method_invoc(type_check_1_expr84, m_typed_scope_creator_1775, line(type_check_1, 386)).
argument(f_compiler_2554, 1, type_check_1_expr84).
assign(f_top_scope_2558, type_check_1_expr86, line(type_check_1, 387)).
method_invoc(type_check_1_expr86, m_create_scope_1262, line(type_check_1, 387)).
argument(v_externs_and_js_root_2576, 1, type_check_1_expr86).
argument(type_check_1_literal21, 2, type_check_1_expr86).
ref(f_scope_creator_2559, type_check_1_expr86, line(type_check_1, 387)).
assign(v_inference_2577, type_check_1_expr87, line(type_check_1, 389)).
method_invoc(type_check_1_expr87, m_type_inference_pass_1776, line(type_check_1, 389)).
argument(f_compiler_2554, 1, type_check_1_expr87).
argument(f_reverse_interpreter_2556, 2, type_check_1_expr87).
argument(f_top_scope_2558, 3, type_check_1_expr87).
argument(f_scope_creator_2559, 4, type_check_1_expr87).
method_invoc(type_check_1_expr88, m_process_1777, line(type_check_1, 392)).
argument(p_externs_root_2574, 1, type_check_1_expr88).
argument(p_js_root_2575, 2, type_check_1_expr88).
ref(v_inference_2577, type_check_1_expr88, line(type_check_1, 392)).
method_invoc(type_check_1_expr89, m_process_1772, line(type_check_1, 393)).
argument(p_externs_root_2574, 1, type_check_1_expr89).
argument(p_js_root_2575, 2, type_check_1_expr89).
param(p_node_2578, 1, m_check_1773).
param(p_externs_2579, 2, m_check_1773).
method_invoc(type_check_1_expr90, m_check_not_null_538, line(type_check_1, 400)).
argument(p_node_2578, 1, type_check_1_expr90).
ref(t_preconditions_19, type_check_1_expr90, line(type_check_1, 400)).
assign(v_t_2580, type_check_1_expr91, line(type_check_1, 402)).
method_invoc(type_check_1_expr91, m_node_traversal_1284, line(type_check_1, 402)).
argument(f_compiler_2554, 1, type_check_1_expr91).
argument(type_check_1_expr92, 2, type_check_1_expr91).
argument(f_scope_creator_2559, 3, type_check_1_expr91).
assign(f_in_externs_2581, p_externs_2579, line(type_check_1, 403)).
method_invoc(type_check_1_expr94, m_traverse_with_scope_1296, line(type_check_1, 404)).
argument(p_node_2578, 1, type_check_1_expr94).
argument(f_top_scope_2558, 2, type_check_1_expr94).
ref(v_t_2580, type_check_1_expr94, line(type_check_1, 404)).
param(p_n_2582, 1, m_check_no_type_check_section_1778).
param(p_enter_section_2583, 2, m_check_no_type_check_section_1778).
method_invoc(type_check_1_expr95, m_get_type_824, line(type_check_1, 414)).
ref(p_n_2582, type_check_1_expr95, line(type_check_1, 414)).
assign(v_info_2584, type_check_1_expr96, line(type_check_1, 420)).
method_invoc(type_check_1_expr96, m_get_jsdoc_info_1492, line(type_check_1, 420)).
ref(p_n_2582, type_check_1_expr96, line(type_check_1, 420)).
method_invoc(type_check_1_expr99, m_is_no_type_check_1779, line(type_check_1, 421)).
ref(v_info_2584, type_check_1_expr99, line(type_check_1, 421)).
method_invoc(type_check_1_expr100, m_set_should_report_1780, line(type_check_1, 428)).
argument(type_check_1_expr101, 1, type_check_1_expr100).
ref(f_validator_2555, type_check_1_expr100, line(type_check_1, 428)).
param(p_t_2585, 1, m_report_1781).
param(p_n_2586, 2, m_report_1781).
param(p_diagnostic_type_2587, 3, m_report_1781).
param(p_arguments_2588, 4, m_report_1781).
param(p_t_2589, 1, m_should_traverse_1782).
param(p_n_2590, 2, m_should_traverse_1782).
param(p_parent_2591, 3, m_should_traverse_1782).
method_invoc(type_check_1_expr102, m_check_no_type_check_section_1778, line(type_check_1, 443)).
argument(p_n_2590, 1, type_check_1_expr102).
argument(type_check_1_literal24, 2, type_check_1_expr102).
method_invoc(type_check_1_expr103, m_get_type_824, line(type_check_1, 444)).
ref(p_n_2590, type_check_1_expr103, line(type_check_1, 444)).
assign(v_outer_scope_2592, type_check_1_expr104, line(type_check_1, 447)).
method_invoc(type_check_1_expr104, m_get_scope_1313, line(type_check_1, 447)).
ref(p_t_2589, type_check_1_expr104, line(type_check_1, 447)).
assign(v_function_private_name_2593, type_check_1_expr105, line(type_check_1, 448)).
method_invoc(type_check_1_expr105, m_get_string_1783, line(type_check_1, 448)).
throw(type_check_1_expr105, unsupported_operation_exception, line(type_check_1, 448)).
ref(type_check_1_expr106, type_check_1_expr105, line(type_check_1, 448)).
method_invoc(type_check_1_expr106, m_get_first_child_828, line(type_check_1, 448)).
ref(p_n_2590, type_check_1_expr106, line(type_check_1, 448)).
method_invoc(type_check_1_expr112, m_length_1652, line(type_check_1, 449)).
ref(v_function_private_name_2593, type_check_1_expr112, line(type_check_1, 449)).
return(type_check_1_literal27, m_should_traverse_1782, line(type_check_1, 464)).
param(p_t_2594, 1, m_visit_1784).
param(p_n_2595, 2, m_visit_1784).
param(p_parent_2596, 3, m_visit_1784).
assign(v_typeable_2597, type_check_1_literal28, line(type_check_1, 483)).
method_invoc(type_check_1_expr113, m_get_type_824, line(type_check_1, 485)).
ref(p_n_2595, type_check_1_expr113, line(type_check_1, 485)).
assign(v_typeable_2597, type_check_1_expr115, line(type_check_1, 500)).
method_invoc(type_check_1_expr115, m_visit_name_1785, line(type_check_1, 500)).
argument(p_t_2594, 1, type_check_1_expr115).
argument(p_n_2595, 2, type_check_1_expr115).
argument(p_parent_2596, 3, type_check_1_expr115).
assign(v_typeable_2597, type_check_1_literal29, line(type_check_1, 504)).
method_invoc(type_check_1_expr117, m_visit_function_1786, line(type_check_1, 778)).
argument(p_t_2594, 1, type_check_1_expr117).
argument(p_n_2595, 2, type_check_1_expr117).
assign(v_typeable_2597, type_check_1_literal30, line(type_check_1, 796)).
assign(v_typeable_2597, type_check_1_expr120, line(type_check_1, 847)).
method_invoc(type_check_1_expr122, m_check_no_type_check_section_1778, line(type_check_1, 853)).
argument(p_n_2595, 1, type_check_1_expr122).
argument(type_check_1_literal31, 2, type_check_1_expr122).
param(p_t_2598, 1, m_check_typeof_string_1787).
param(p_n_2599, 2, m_check_typeof_string_1787).
param(p_s_2600, 3, m_check_typeof_string_1787).
param(p_t_2601, 1, m_do_percent_typed_accounting_1788).
param(p_n_2602, 2, m_do_percent_typed_accounting_1788).
param(p_t_2603, 1, m_visit_assign_1789).
param(p_assign_2604, 2, m_visit_assign_1789).
param(p_t_2605, 1, m_check_prop_creation_1790).
param(p_lvalue_2606, 2, m_check_prop_creation_1790).
param(p_t_2607, 1, m_check_property_inheritance_on_getprop_assign_1791).
param(p_assign_2608, 2, m_check_property_inheritance_on_getprop_assign_1791).
param(p_object_2609, 3, m_check_property_inheritance_on_getprop_assign_1791).
param(p_property_2610, 4, m_check_property_inheritance_on_getprop_assign_1791).
param(p_info_2611, 5, m_check_property_inheritance_on_getprop_assign_1791).
param(p_property_type_2612, 6, m_check_property_inheritance_on_getprop_assign_1791).
param(p_t_2613, 1, m_visit_obj_lit_key_1792).
param(p_key_2614, 2, m_visit_obj_lit_key_1792).
param(p_objlit_2615, 3, m_visit_obj_lit_key_1792).
param(p_lit_type_2616, 4, m_visit_obj_lit_key_1792).
param(p_type_2617, 1, m_property_is_implicit_cast_1793).
param(p_prop_2618, 2, m_property_is_implicit_cast_1793).
param(p_t_2619, 1, m_check_declared_property_inheritance_1794).
param(p_n_2620, 2, m_check_declared_property_inheritance_1794).
param(p_ctor_type_2621, 3, m_check_declared_property_inheritance_1794).
param(p_property_name_2622, 4, m_check_declared_property_inheritance_1794).
param(p_info_2623, 5, m_check_declared_property_inheritance_1794).
param(p_property_type_2624, 6, m_check_declared_property_inheritance_1794).
param(p_ctor_2625, 1, m_has_unknown_or_empty_supertype_1795).
param(p_t_2626, 1, m_visit_interface_getprop_1796).
param(p_assign_2627, 2, m_visit_interface_getprop_1796).
param(p_object_2628, 3, m_visit_interface_getprop_1796).
param(p_property_2629, 4, m_visit_interface_getprop_1796).
param(p_lvalue_2630, 5, m_visit_interface_getprop_1796).
param(p_rvalue_2631, 6, m_visit_interface_getprop_1796).
param(p_t_2632, 1, m_visit_name_1785).
param(p_n_2633, 2, m_visit_name_1785).
param(p_parent_2634, 3, m_visit_name_1785).
assign(v_parent_node_type_2635, type_check_1_expr123, line(type_check_1, 1352)).
method_invoc(type_check_1_expr123, m_get_type_824, line(type_check_1, 1352)).
ref(p_parent_2634, type_check_1_expr123, line(type_check_1, 1352)).
ref(t_token_51, q_function_77, line(type_check_1, 1353)).
return(type_check_1_literal32, m_visit_name_1785, line(type_check_1, 1357)).
param(p_t_2636, 1, m_visit_get_prop_1797).
param(p_n_2637, 2, m_visit_get_prop_1797).
param(p_parent_2638, 3, m_visit_get_prop_1797).
param(p_child_type_2639, 1, m_check_property_access_1798).
param(p_prop_name_2640, 2, m_check_property_access_1798).
param(p_t_2641, 3, m_check_property_access_1798).
param(p_n_2642, 4, m_check_property_access_1798).
param(p_object_type_2643, 1, m_check_property_access_helper_1799).
param(p_prop_name_2644, 2, m_check_property_access_helper_1799).
param(p_t_2645, 3, m_check_property_access_helper_1799).
param(p_n_2646, 4, m_check_property_access_helper_1799).
param(p_get_prop_2647, 1, m_is_property_test_1800).
param(p_t_2648, 1, m_visit_get_elem_1801).
param(p_n_2649, 2, m_visit_get_elem_1801).
param(p_t_2650, 1, m_visit_var_1802).
param(p_n_2651, 2, m_visit_var_1802).
param(p_t_2652, 1, m_visit_new_1803).
param(p_n_2653, 2, m_visit_new_1803).
param(p_t_2654, 1, m_check_interface_conflict_properties_1804).
param(p_n_2655, 2, m_check_interface_conflict_properties_1804).
param(p_function_name_2656, 3, m_check_interface_conflict_properties_1804).
param(p_properties_2657, 4, m_check_interface_conflict_properties_1804).
param(p_current_properties_2658, 5, m_check_interface_conflict_properties_1804).
param(p_interface_type_2659, 6, m_check_interface_conflict_properties_1804).
assign(v_implicit_proto_2660, type_check_1_expr128, line(type_check_1, 1570)).
method_invoc(type_check_1_expr128, m_get_implicit_prototype_1805, line(type_check_1, 1570)).
ref(p_interface_type_2659, type_check_1_expr128, line(type_check_1, 1570)).
assign(v_current_property_names_2661, type_check_1_expr130, line(type_check_1, 1574)).
method_invoc(type_check_1_expr130, m_get_own_property_names_1806, line(type_check_1, 1574)).
ref(v_implicit_proto_2660, type_check_1_expr130, line(type_check_1, 1574)).
param(p_t_2662, 1, m_visit_function_1786).
param(p_n_2663, 2, m_visit_function_1786).
assign(v_function_type_2664, type_check_1_expr131, line(type_check_1, 1602)).
method_invoc(type_check_1_expr131, m_to_maybe_function_type_1807, line(type_check_1, 1602)).
argument(type_check_1_expr132, 1, type_check_1_expr131).
ref(t_jstype_66, type_check_1_expr131, line(type_check_1, 1602)).
method_invoc(type_check_1_expr132, m_get_jstype_1808, line(type_check_1, 1602)).
ref(p_n_2663, type_check_1_expr132, line(type_check_1, 1602)).
assign(v_function_private_name_2665, type_check_1_expr133, line(type_check_1, 1603)).
method_invoc(type_check_1_expr133, m_get_string_1783, line(type_check_1, 1603)).
throw(type_check_1_expr133, unsupported_operation_exception, line(type_check_1, 1603)).
ref(type_check_1_expr134, type_check_1_expr133, line(type_check_1, 1603)).
method_invoc(type_check_1_expr134, m_get_first_child_828, line(type_check_1, 1603)).
ref(p_n_2663, type_check_1_expr134, line(type_check_1, 1603)).
method_invoc(type_check_1_expr135, m_is_constructor_1809, line(type_check_1, 1604)).
ref(v_function_type_2664, type_check_1_expr135, line(type_check_1, 1604)).
method_invoc(type_check_1_expr136, m_is_interface_1104, line(type_check_1, 1644)).
ref(v_function_type_2664, type_check_1_expr136, line(type_check_1, 1644)).
ref(type_check_1_expr137, type_check_1_stmt62, line(type_check_1, 1646)).
method_invoc(type_check_1_expr137, m_get_extended_interfaces_1810, line(type_check_1, 1646)).
ref(v_function_type_2664, type_check_1_expr137, line(type_check_1, 1646)).
method_invoc(type_check_1_expr140, m_get_constructor_1811, line(type_check_1, 1647)).
ref(v_ext_interface_2666, type_check_1_expr140, line(type_check_1, 1647)).
method_invoc(type_check_1_expr142, m_get_extended_interfaces_count_1812, line(type_check_1, 1656)).
ref(v_function_type_2664, type_check_1_expr142, line(type_check_1, 1656)).
assign(v_properties_2667, type_check_1_expr143, line(type_check_1, 1658)).
assign(v_current_properties_2668, type_check_1_expr144, line(type_check_1, 1660)).
ref(type_check_1_expr145, type_check_1_stmt67, line(type_check_1, 1662)).
method_invoc(type_check_1_expr145, m_get_extended_interfaces_1810, line(type_check_1, 1662)).
ref(v_function_type_2664, type_check_1_expr145, line(type_check_1, 1662)).
method_invoc(type_check_1_expr146, m_clear_1813, line(type_check_1, 1663)).
ref(v_current_properties_2668, type_check_1_expr146, line(type_check_1, 1663)).
method_invoc(type_check_1_expr147, m_check_interface_conflict_properties_1804, line(type_check_1, 1664)).
throw(type_check_1_expr147, null_pointer_exception, line(type_check_1, 1664)).
argument(p_t_2662, 1, type_check_1_expr147).
argument(p_n_2663, 2, type_check_1_expr147).
argument(v_function_private_name_2665, 3, type_check_1_expr147).
argument(v_properties_2667, 4, type_check_1_expr147).
argument(v_current_properties_2668, 5, type_check_1_expr147).
argument(v_interface_type_2669, 6, type_check_1_expr147).
param(p_t_2670, 1, m_visit_call_1814).
param(p_n_2671, 2, m_visit_call_1814).
param(p_t_2672, 1, m_visit_parameter_list_1815).
param(p_call_2673, 2, m_visit_parameter_list_1815).
param(p_function_type_2674, 3, m_visit_parameter_list_1815).
param(p_t_2675, 1, m_visit_return_1816).
param(p_n_2676, 2, m_visit_return_1816).
param(p_op_2677, 1, m_visit_binary_operator_1817).
param(p_t_2678, 2, m_visit_binary_operator_1817).
param(p_n_2679, 3, m_visit_binary_operator_1817).
param(p_t_2680, 1, m_check_enum_alias_1818).
param(p_decl_info_2681, 2, m_check_enum_alias_1818).
param(p_value_2682, 3, m_check_enum_alias_1818).
param(p_n_2683, 1, m_get_jstype_1819).
param(p_t_2684, 1, m_ensure_typed_1820).
param(p_n_2685, 2, m_ensure_typed_1820).
param(p_t_2686, 1, m_ensure_typed_1821).
param(p_n_2687, 2, m_ensure_typed_1821).
param(p_type_2688, 3, m_ensure_typed_1821).
param(p_t_2689, 1, m_ensure_typed_1822).
param(p_n_2690, 2, m_ensure_typed_1822).
param(p_type_2691, 3, m_ensure_typed_1822).
param(p_type_id_2692, 1, m_get_native_type_1824).

%suppress_doc_warnings_guard_1 - com.google.javascript.jscomp.SuppressDocWarningsGuard
assign(f_suppressors_2478, suppress_doc_warnings_guard_1_expr1, line(suppress_doc_warnings_guard_1, 34)).
param(p_suppressible_groups_2479, 1, m_suppress_doc_warnings_guard_1755).
ref(suppress_doc_warnings_guard_1_expr2, suppress_doc_warnings_guard_1_stmt1, line(suppress_doc_warnings_guard_1, 42)).
method_invoc(suppress_doc_warnings_guard_1_expr2, m_entry_set_1591, line(suppress_doc_warnings_guard_1, 42)).
ref(p_suppressible_groups_2479, suppress_doc_warnings_guard_1_expr2, line(suppress_doc_warnings_guard_1, 42)).
method_invoc(suppress_doc_warnings_guard_1_expr3, m_put_395, line(suppress_doc_warnings_guard_1, 43)).
argument(suppress_doc_warnings_guard_1_expr4, 1, suppress_doc_warnings_guard_1_expr3).
argument(suppress_doc_warnings_guard_1_expr5, 2, suppress_doc_warnings_guard_1_expr3).
ref(f_suppressors_2478, suppress_doc_warnings_guard_1_expr3, line(suppress_doc_warnings_guard_1, 43)).
param(p_error_2480, 1, m_level_1756).
assign(v_node_2481, q_node_69, line(suppress_doc_warnings_guard_1, 53)).
ref(p_error_2480, q_node_69, line(suppress_doc_warnings_guard_1, 53)).
return(suppress_doc_warnings_guard_1_literal2, m_level_1756, line(suppress_doc_warnings_guard_1, 92)).
return(q_value_70, m_get_priority_1757, line(suppress_doc_warnings_guard_1, 99)).

%node_1 - com.google.javascript.rhino.Node
param(p_prop_type_4393, 1, m_prop_to_string_4024).
param(p_number_4394, 1, m_number_node_4025).
param(p_number_4395, 1, m_number_node_4026).
param(p_lineno_4396, 2, m_number_node_4026).
param(p_charno_4397, 3, m_number_node_4026).
param(p_d_4398, 1, m_set_double_4028).
param(p_node_4399, 1, m_is_equivalent_to_4029).
param(p_compare_js_type_4400, 2, m_is_equivalent_to_4029).
param(p_recurse_4401, 3, m_is_equivalent_to_4029).
param(p_type_4402, 1, m_string_node_4030).
param(p_str_4403, 2, m_string_node_4030).
method_invoc(node_1_expr1, m_node_3004, line(node_1, 188)).
argument(p_type_4402, 1, node_1_expr1).
assign(f_str_4404, p_str_4403, line(node_1, 192)).
param(p_type_4405, 1, m_string_node_4031).
param(p_str_4406, 2, m_string_node_4031).
param(p_lineno_4407, 3, m_string_node_4031).
param(p_charno_4408, 4, m_string_node_4031).
method_invoc(node_1_expr6, m_node_4032, line(node_1, 196)).
argument(p_type_4405, 1, node_1_expr6).
argument(p_lineno_4407, 2, node_1_expr6).
argument(p_charno_4408, 3, node_1_expr6).
assign(f_str_4404, p_str_4406, line(node_1, 200)).
return(f_str_4404, m_get_string_4033, line(node_1, 209)).
param(p_str_4409, 1, m_set_string_4034).
param(p_node_4410, 1, m_is_equivalent_to_4035).
param(p_compare_js_type_4411, 2, m_is_equivalent_to_4035).
param(p_recurse_4412, 3, m_is_equivalent_to_4035).
return(node_1_expr13, m_is_equivalent_to_4035, line(node_1, 226)).
assign(node_1_expr13, node_1_expr14, line(node_1, 226)).
method_invoc(node_1_expr15, m_is_equivalent_to_4036, line(node_1, 226)).
argument(p_node_4410, 1, node_1_expr15).
argument(p_compare_js_type_4411, 2, node_1_expr15).
argument(p_recurse_4412, 3, node_1_expr15).
param(p_next_4413, 1, m_chain_4041).
param(p_prop_type_4414, 1, m_abstract_prop_list_item_4044).
param(p_next_4415, 2, m_abstract_prop_list_item_4044).
assign(f_prop_type_4416, p_prop_type_4414, line(node_1, 269)).
assign(f_next_4417, p_next_4415, line(node_1, 270)).
return(f_prop_type_4416, m_get_type_4045, line(node_1, 275)).
return(f_next_4417, m_get_next_4046, line(node_1, 280)).
param(p_next_4418, 1, m_chain_4047).
param(p_prop_type_4419, 1, m_object_prop_list_item_4048).
param(p_object_value_4420, 2, m_object_prop_list_item_4048).
param(p_next_4421, 3, m_object_prop_list_item_4048).
method_invoc(node_1_expr22, m_abstract_prop_list_item_4044, line(node_1, 295)).
argument(p_prop_type_4419, 1, node_1_expr22).
argument(p_next_4421, 2, node_1_expr22).
assign(f_object_value_4422, p_object_value_4420, line(node_1, 296)).
return(f_object_value_4422, m_get_object_value_4050, line(node_1, 306)).
param(p_next_4423, 1, m_chain_4052).
param(p_prop_type_4424, 1, m_int_prop_list_item_4053).
param(p_int_value_4425, 2, m_int_prop_list_item_4053).
param(p_next_4426, 3, m_int_prop_list_item_4053).
method_invoc(node_1_expr26, m_abstract_prop_list_item_4044, line(node_1, 327)).
argument(p_prop_type_4424, 1, node_1_expr26).
argument(p_next_4426, 2, node_1_expr26).
assign(f_int_value_4427, p_int_value_4425, line(node_1, 328)).
param(p_next_4428, 1, m_chain_4057).
return(node_1_expr30, m_chain_4057, line(node_1, 348)).
method_invoc(node_1_expr30, m_int_prop_list_item_4053, line(node_1, 348)).
argument(node_1_expr31, 1, node_1_expr30).
argument(f_int_value_4427, 2, node_1_expr30).
argument(p_next_4428, 3, node_1_expr30).
method_invoc(node_1_expr31, m_get_type_4045, line(node_1, 348)).
param(p_node_type_4429, 1, m_node_3004).
assign(f_type_4430, p_node_type_4429, line(node_1, 353)).
assign(f_parent_4431, node_1_literal3, line(node_1, 354)).
assign(f_source_position_4432, node_1_expr35, line(node_1, 355)).
param(p_node_type_4433, 1, m_node_4058).
param(p_child_4434, 2, m_node_4058).
method_invoc(node_1_expr36, m_check_argument_4059, line(node_1, 359)).
argument(node_1_expr37, 1, node_1_expr36).
argument(node_1_literal5, 2, node_1_expr36).
ref(t_preconditions_19, node_1_expr36, line(node_1, 359)).
ref(p_child_4434, q_parent_117, line(node_1, 359)).
method_invoc(node_1_expr38, m_check_argument_4059, line(node_1, 361)).
argument(node_1_expr39, 1, node_1_expr38).
argument(node_1_literal7, 2, node_1_expr38).
ref(t_preconditions_19, node_1_expr38, line(node_1, 361)).
ref(p_child_4434, q_next_118, line(node_1, 361)).
assign(f_type_4430, p_node_type_4433, line(node_1, 364)).
assign(f_parent_4431, node_1_literal9, line(node_1, 365)).
assign(f_first_4435, node_1_expr43, line(node_1, 366)).
assign(f_last_4436, p_child_4434, line(node_1, 366)).
assign(q_next_119, node_1_literal10, line(node_1, 367)).
ref(p_child_4434, q_next_119, line(node_1, 367)).
assign(q_parent_119, node_1_expr46, line(node_1, 368)).
ref(p_child_4434, q_parent_119, line(node_1, 368)).
assign(f_source_position_4432, node_1_expr48, line(node_1, 369)).
param(p_node_type_4437, 1, m_node_3005).
param(p_left_4438, 2, m_node_3005).
param(p_right_4439, 3, m_node_3005).
method_invoc(node_1_expr49, m_check_argument_4059, line(node_1, 373)).
argument(node_1_expr50, 1, node_1_expr49).
argument(node_1_literal12, 2, node_1_expr49).
ref(t_preconditions_19, node_1_expr49, line(node_1, 373)).
ref(p_left_4438, q_parent_119, line(node_1, 373)).
method_invoc(node_1_expr51, m_check_argument_4059, line(node_1, 375)).
argument(node_1_expr52, 1, node_1_expr51).
argument(node_1_literal14, 2, node_1_expr51).
ref(t_preconditions_19, node_1_expr51, line(node_1, 375)).
ref(p_left_4438, q_next_120, line(node_1, 375)).
method_invoc(node_1_expr53, m_check_argument_4059, line(node_1, 377)).
argument(node_1_expr54, 1, node_1_expr53).
argument(node_1_literal16, 2, node_1_expr53).
ref(t_preconditions_19, node_1_expr53, line(node_1, 377)).
ref(p_right_4439, q_parent_121, line(node_1, 377)).
method_invoc(node_1_expr55, m_check_argument_4059, line(node_1, 379)).
argument(node_1_expr56, 1, node_1_expr55).
argument(node_1_literal18, 2, node_1_expr55).
ref(t_preconditions_19, node_1_expr55, line(node_1, 379)).
ref(p_right_4439, q_next_122, line(node_1, 379)).
assign(f_type_4430, p_node_type_4437, line(node_1, 381)).
assign(f_parent_4431, node_1_literal20, line(node_1, 382)).
assign(f_first_4435, p_left_4438, line(node_1, 383)).
assign(f_last_4436, p_right_4439, line(node_1, 384)).
assign(q_next_123, p_right_4439, line(node_1, 385)).
ref(p_left_4438, q_next_123, line(node_1, 385)).
assign(q_parent_123, node_1_expr63, line(node_1, 386)).
ref(p_left_4438, q_parent_123, line(node_1, 386)).
assign(q_next_123, node_1_literal21, line(node_1, 387)).
ref(p_right_4439, q_next_123, line(node_1, 387)).
assign(q_parent_123, node_1_expr66, line(node_1, 388)).
ref(p_right_4439, q_parent_123, line(node_1, 388)).
assign(f_source_position_4432, node_1_expr68, line(node_1, 389)).
param(p_node_type_4440, 1, m_node_4060).
param(p_left_4441, 2, m_node_4060).
param(p_mid_4442, 3, m_node_4060).
param(p_right_4443, 4, m_node_4060).
param(p_node_type_4444, 1, m_node_4061).
param(p_left_4445, 2, m_node_4061).
param(p_mid_4446, 3, m_node_4061).
param(p_mid_2_4447, 4, m_node_4061).
param(p_right_4448, 5, m_node_4061).
param(p_node_type_4449, 1, m_node_4032).
param(p_lineno_4450, 2, m_node_4032).
param(p_charno_4451, 3, m_node_4032).
assign(f_type_4430, p_node_type_4449, line(node_1, 437)).
assign(f_parent_4431, node_1_literal23, line(node_1, 438)).
assign(f_source_position_4432, node_1_expr72, line(node_1, 439)).
method_invoc(node_1_expr72, m_merge_line_char_no_4062, line(node_1, 439)).
argument(p_lineno_4450, 1, node_1_expr72).
argument(p_charno_4451, 2, node_1_expr72).
param(p_node_type_4452, 1, m_node_4063).
param(p_child_4453, 2, m_node_4063).
param(p_lineno_4454, 3, m_node_4063).
param(p_charno_4455, 4, m_node_4063).
method_invoc(node_1_expr73, m_node_4058, line(node_1, 443)).
argument(p_node_type_4452, 1, node_1_expr73).
argument(p_child_4453, 2, node_1_expr73).
assign(f_source_position_4432, node_1_expr75, line(node_1, 444)).
method_invoc(node_1_expr75, m_merge_line_char_no_4062, line(node_1, 444)).
argument(p_lineno_4454, 1, node_1_expr75).
argument(p_charno_4455, 2, node_1_expr75).
param(p_node_type_4456, 1, m_node_4064).
param(p_left_4457, 2, m_node_4064).
param(p_right_4458, 3, m_node_4064).
param(p_lineno_4459, 4, m_node_4064).
param(p_charno_4460, 5, m_node_4064).
param(p_node_type_4461, 1, m_node_4065).
param(p_left_4462, 2, m_node_4065).
param(p_mid_4463, 3, m_node_4065).
param(p_right_4464, 4, m_node_4065).
param(p_lineno_4465, 5, m_node_4065).
param(p_charno_4466, 6, m_node_4065).
param(p_node_type_4467, 1, m_node_4066).
param(p_left_4468, 2, m_node_4066).
param(p_mid_4469, 3, m_node_4066).
param(p_mid_2_4470, 4, m_node_4066).
param(p_right_4471, 5, m_node_4066).
param(p_lineno_4472, 6, m_node_4066).
param(p_charno_4473, 7, m_node_4066).
param(p_node_type_4474, 1, m_node_4067).
param(p_children_4475, 2, m_node_4067).
param(p_lineno_4476, 3, m_node_4067).
param(p_charno_4477, 4, m_node_4067).
param(p_node_type_4478, 1, m_node_4068).
param(p_children_4479, 2, m_node_4068).
param(p_number_4480, 1, m_new_number_4069).
param(p_number_4481, 1, m_new_number_4070).
param(p_lineno_4482, 2, m_new_number_4070).
param(p_charno_4483, 3, m_new_number_4070).
param(p_str_4484, 1, m_new_string_4071).
param(p_type_4485, 1, m_new_string_3455).
param(p_str_4486, 2, m_new_string_3455).
return(node_1_expr76, m_new_string_3455, line(node_1, 508)).
method_invoc(node_1_expr76, m_string_node_4030, line(node_1, 508)).
argument(p_type_4485, 1, node_1_expr76).
argument(p_str_4486, 2, node_1_expr76).
param(p_str_4487, 1, m_new_string_3522).
param(p_lineno_4488, 2, m_new_string_3522).
param(p_charno_4489, 3, m_new_string_3522).
return(node_1_expr77, m_new_string_3522, line(node_1, 512)).
method_invoc(node_1_expr77, m_string_node_4031, line(node_1, 512)).
argument(q_string_123, 1, node_1_expr77).
argument(p_str_4487, 2, node_1_expr77).
argument(p_lineno_4488, 3, node_1_expr77).
argument(p_charno_4489, 4, node_1_expr77).
ref(t_token_51, q_string_123, line(node_1, 512)).
param(p_type_4490, 1, m_new_string_4072).
param(p_str_4491, 2, m_new_string_4072).
param(p_lineno_4492, 3, m_new_string_4072).
param(p_charno_4493, 4, m_new_string_4072).
return(f_type_4430, m_get_type_824, line(node_1, 520)).
param(p_type_4494, 1, m_set_type_4073).
return(f_first_4435, m_get_first_child_828, line(node_1, 532)).
return(f_last_4436, m_get_last_child_1132, line(node_1, 536)).
return(f_next_4495, m_get_next_827, line(node_1, 540)).
param(p_child_4496, 1, m_get_child_before_4075).
param(p_i_4497, 1, m_get_child_at_index_4076).
param(p_child_4498, 1, m_get_index_of_child_4077).
param(p_child_4499, 1, m_add_child_to_front_4079).
param(p_child_4500, 1, m_add_child_to_back_3392).
method_invoc(node_1_expr78, m_check_argument_1173, line(node_1, 600)).
argument(node_1_expr79, 1, node_1_expr78).
ref(t_preconditions_19, node_1_expr78, line(node_1, 600)).
ref(p_child_4500, q_parent_123, line(node_1, 600)).
method_invoc(node_1_expr80, m_check_argument_1173, line(node_1, 601)).
argument(node_1_expr81, 1, node_1_expr80).
ref(t_preconditions_19, node_1_expr80, line(node_1, 601)).
ref(p_child_4500, q_next_124, line(node_1, 601)).
assign(q_parent_125, node_1_expr83, line(node_1, 602)).
ref(p_child_4500, q_parent_125, line(node_1, 602)).
assign(q_next_125, node_1_literal26, line(node_1, 603)).
ref(p_child_4500, q_next_125, line(node_1, 603)).
assign(f_first_4435, node_1_expr87, line(node_1, 605)).
assign(f_last_4436, p_child_4500, line(node_1, 605)).
return(none, m_add_child_to_back_3392, line(node_1, 606)).
assign(q_next_125, p_child_4500, line(node_1, 608)).
ref(f_last_4436, q_next_125, line(node_1, 608)).
assign(f_last_4436, p_child_4500, line(node_1, 609)).
param(p_children_4501, 1, m_add_children_to_front_4080).
param(p_children_4502, 1, m_add_children_to_back_4081).
param(p_new_child_4503, 1, m_add_child_before_4082).
param(p_node_4504, 2, m_add_child_before_4082).
param(p_new_child_4505, 1, m_add_child_after_4083).
param(p_node_4506, 2, m_add_child_after_4083).
param(p_children_4507, 1, m_add_children_after_4084).
param(p_node_4508, 2, m_add_children_after_4084).
param(p_child_4509, 1, m_remove_child_4085).
param(p_child_4510, 1, m_replace_child_4086).
param(p_new_child_4511, 2, m_replace_child_4086).
param(p_prev_child_4512, 1, m_replace_child_after_4087).
param(p_new_child_4513, 2, m_replace_child_after_4087).
param(p_prop_type_4514, 1, m_lookup_property_4088).
assign(v_x_4515, f_prop_list_head_4516, line(node_1, 751)).
method_invoc(node_1_expr93, m_get_type_4039, line(node_1, 752)).
ref(v_x_4515, node_1_expr93, line(node_1, 752)).
assign(v_x_4515, node_1_expr95, line(node_1, 753)).
method_invoc(node_1_expr95, m_get_next_4040, line(node_1, 753)).
ref(v_x_4515, node_1_expr95, line(node_1, 753)).
return(v_x_4515, m_lookup_property_4088, line(node_1, 755)).
param(p_other_4517, 1, m_clone_props_from_3450).
method_invoc(node_1_expr96, m_check_state_1310, line(node_1, 766)).
argument(node_1_expr97, 1, node_1_expr96).
argument(node_1_literal29, 2, node_1_expr96).
ref(t_preconditions_19, node_1_expr96, line(node_1, 766)).
assign(f_prop_list_head_4516, q_prop_list_head_126, line(node_1, 768)).
ref(p_other_4517, q_prop_list_head_126, line(node_1, 768)).
return(node_1_expr103, m_clone_props_from_3450, line(node_1, 769)).
param(p_prop_type_4518, 1, m_remove_prop_4089).
assign(v_result_4519, node_1_expr104, line(node_1, 773)).
method_invoc(node_1_expr104, m_remove_prop_4090, line(node_1, 773)).
argument(f_prop_list_head_4516, 1, node_1_expr104).
argument(p_prop_type_4518, 2, node_1_expr104).
assign(f_prop_list_head_4516, v_result_4519, line(node_1, 775)).
param(p_item_4520, 1, m_remove_prop_4090).
param(p_prop_type_4521, 2, m_remove_prop_4090).
return(node_1_literal32, m_remove_prop_4090, line(node_1, 787)).
method_invoc(node_1_expr109, m_get_type_4039, line(node_1, 788)).
ref(p_item_4520, node_1_expr109, line(node_1, 788)).
return(node_1_expr110, m_remove_prop_4090, line(node_1, 789)).
method_invoc(node_1_expr110, m_get_next_4040, line(node_1, 789)).
ref(p_item_4520, node_1_expr110, line(node_1, 789)).
assign(v_result_4522, node_1_expr111, line(node_1, 791)).
method_invoc(node_1_expr111, m_remove_prop_4090, line(node_1, 791)).
argument(node_1_expr112, 1, node_1_expr111).
argument(p_prop_type_4521, 2, node_1_expr111).
method_invoc(node_1_expr112, m_get_next_4040, line(node_1, 791)).
ref(p_item_4520, node_1_expr112, line(node_1, 791)).
method_invoc(node_1_expr114, m_get_next_4040, line(node_1, 792)).
ref(p_item_4520, node_1_expr114, line(node_1, 792)).
return(node_1_expr115, m_remove_prop_4090, line(node_1, 793)).
method_invoc(node_1_expr115, m_chain_4041, line(node_1, 793)).
argument(v_result_4522, 1, node_1_expr115).
ref(p_item_4520, node_1_expr115, line(node_1, 793)).
return(p_item_4520, m_remove_prop_4090, line(node_1, 795)).
param(p_prop_type_4523, 1, m_get_prop_4091).
assign(v_item_4524, node_1_expr116, line(node_1, 801)).
method_invoc(node_1_expr116, m_lookup_property_4088, line(node_1, 801)).
argument(p_prop_type_4523, 1, node_1_expr116).
return(node_1_literal34, m_get_prop_4091, line(node_1, 803)).
return(node_1_expr118, m_get_prop_4091, line(node_1, 805)).
method_invoc(node_1_expr118, m_get_object_value_4042, line(node_1, 805)).
ref(v_item_4524, node_1_expr118, line(node_1, 805)).
param(p_prop_type_4525, 1, m_get_boolean_prop_4092).
return(node_1_expr119, m_get_boolean_prop_4092, line(node_1, 809)).
method_invoc(node_1_expr120, m_get_int_prop_4093, line(node_1, 809)).
argument(p_prop_type_4525, 1, node_1_expr120).
param(p_prop_type_4526, 1, m_get_int_prop_4093).
assign(v_item_4527, node_1_expr121, line(node_1, 817)).
method_invoc(node_1_expr121, m_lookup_property_4088, line(node_1, 817)).
argument(p_prop_type_4526, 1, node_1_expr121).
return(node_1_literal37, m_get_int_prop_4093, line(node_1, 819)).
param(p_prop_type_4528, 1, m_get_existing_int_prop_4094).
param(p_prop_type_4529, 1, m_put_prop_4095).
param(p_value_4530, 2, m_put_prop_4095).
method_invoc(node_1_expr123, m_remove_prop_4089, line(node_1, 833)).
argument(p_prop_type_4529, 1, node_1_expr123).
assign(f_prop_list_head_4516, node_1_expr126, line(node_1, 835)).
method_invoc(node_1_expr126, m_create_prop_4096, line(node_1, 835)).
argument(p_prop_type_4529, 1, node_1_expr126).
argument(p_value_4530, 2, node_1_expr126).
argument(f_prop_list_head_4516, 3, node_1_expr126).
param(p_prop_type_4531, 1, m_put_boolean_prop_4097).
param(p_value_4532, 2, m_put_boolean_prop_4097).
method_invoc(node_1_expr127, m_put_int_prop_4098, line(node_1, 840)).
argument(p_prop_type_4531, 1, node_1_expr127).
argument(node_1_expr128, 2, node_1_expr127).
cond_expr(p_value_4532, node_1_literal39, node_1_literal40, line(node_1, 840)).
param(p_prop_type_4533, 1, m_put_int_prop_4098).
param(p_value_4534, 2, m_put_int_prop_4098).
method_invoc(node_1_expr129, m_remove_prop_4089, line(node_1, 844)).
argument(p_prop_type_4533, 1, node_1_expr129).
assign(f_prop_list_head_4516, node_1_expr132, line(node_1, 846)).
method_invoc(node_1_expr132, m_create_prop_4099, line(node_1, 846)).
argument(p_prop_type_4533, 1, node_1_expr132).
argument(p_value_4534, 2, node_1_expr132).
argument(f_prop_list_head_4516, 3, node_1_expr132).
param(p_prop_type_4535, 1, m_create_prop_4096).
param(p_value_4536, 2, m_create_prop_4096).
param(p_next_4537, 3, m_create_prop_4096).
return(node_1_expr133, m_create_prop_4096, line(node_1, 851)).
method_invoc(node_1_expr133, m_object_prop_list_item_4048, line(node_1, 851)).
argument(p_prop_type_4535, 1, node_1_expr133).
argument(p_value_4536, 2, node_1_expr133).
argument(p_next_4537, 3, node_1_expr133).
param(p_prop_type_4538, 1, m_create_prop_4099).
param(p_value_4539, 2, m_create_prop_4099).
param(p_next_4540, 3, m_create_prop_4099).
return(node_1_expr134, m_create_prop_4099, line(node_1, 855)).
method_invoc(node_1_expr134, m_int_prop_list_item_4053, line(node_1, 855)).
argument(p_prop_type_4538, 1, node_1_expr134).
argument(p_value_4539, 2, node_1_expr134).
argument(p_next_4540, 3, node_1_expr134).
throw(m_get_double_4101, unsupported_operation_exception).
param(p_s_4541, 1, m_set_double_4102).
throw(m_set_double_4102, unsupported_operation_exception).
throw(m_get_string_1783, unsupported_operation_exception).
param(p_s_4542, 1, m_set_string_4103).
throw(m_set_string_4103, unsupported_operation_exception).
param(p_print_source_4543, 1, m_to_string_4105).
param(p_print_annotations_4544, 2, m_to_string_4105).
param(p_print_type_4545, 3, m_to_string_4105).
param(p_sb_4546, 1, m_to_string_4106).
param(p_print_source_4547, 2, m_to_string_4106).
param(p_print_annotations_4548, 3, m_to_string_4106).
param(p_print_type_4549, 4, m_to_string_4106).
param(p_appendable_4550, 1, m_append_string_tree_4109).
throw(m_append_string_tree_4109, ioexception).
param(p_n_4551, 1, m_to_string_tree_helper_4110).
param(p_level_4552, 2, m_to_string_tree_helper_4110).
param(p_sb_4553, 3, m_to_string_tree_helper_4110).
throw(m_to_string_tree_helper_4110, ioexception).
param(p_file_4554, 1, m_set_static_source_file_1190).
method_invoc(node_1_expr135, m_put_prop_4095, line(node_1, 1076)).
argument(f_static_source_file_4555, 1, node_1_expr135).
argument(p_file_4554, 2, node_1_expr135).
ref(node_1_expr136, node_1_expr135, line(node_1, 1076)).
param(p_name_4556, 1, m_set_source_file_for_testing_4111).
assign(v_file_4557, node_1_expr137, line(node_1, 1085)).
method_invoc(node_1_expr137, m_get_static_source_file_4112, line(node_1, 1085)).
return(node_1_expr138, m_get_source_file_name_1324, line(node_1, 1086)).
cond_expr(node_1_expr139, node_1_literal42, node_1_expr140, line(node_1, 1086)).
method_invoc(node_1_expr140, m_get_name_3344, line(node_1, 1086)).
ref(v_file_4557, node_1_expr140, line(node_1, 1086)).
return(node_1_expr141, m_get_static_source_file_4112, line(node_1, 1091)).
assign(node_1_expr141, node_1_expr142, line(node_1, 1091)).
assign(node_1_expr142, node_1_expr143, line(node_1, 1091)).
method_invoc(node_1_expr143, m_get_prop_4091, line(node_1, 1091)).
argument(f_static_source_file_4555, 1, node_1_expr143).
ref(node_1_expr144, node_1_expr143, line(node_1, 1091)).
param(p_input_id_4558, 1, m_set_input_id_1182).
method_invoc(node_1_expr145, m_put_prop_4095, line(node_1, 1098)).
argument(f_input_id_4559, 1, node_1_expr145).
argument(p_input_id_4558, 2, node_1_expr145).
ref(node_1_expr146, node_1_expr145, line(node_1, 1098)).
return(node_1_expr147, m_get_input_id_539, line(node_1, 1105)).
assign(node_1_expr147, node_1_expr148, line(node_1, 1105)).
assign(node_1_expr148, node_1_expr149, line(node_1, 1105)).
method_invoc(node_1_expr149, m_get_prop_4091, line(node_1, 1105)).
argument(f_input_id_4559, 1, node_1_expr149).
ref(node_1_expr150, node_1_expr149, line(node_1, 1105)).
assign(v_file_4560, node_1_expr151, line(node_1, 1109)).
method_invoc(node_1_expr151, m_get_static_source_file_4112, line(node_1, 1109)).
return(node_1_expr152, m_is_from_externs_1128, line(node_1, 1110)).
cond_expr(node_1_expr153, node_1_literal44, node_1_expr154, line(node_1, 1110)).
method_invoc(node_1_expr154, m_is_extern_4113, line(node_1, 1110)).
ref(v_file_4560, node_1_expr154, line(node_1, 1110)).
param(p_length_4561, 1, m_set_length_3523).
method_invoc(node_1_expr155, m_put_int_prop_4098, line(node_1, 1118)).
argument(f_length_4562, 1, node_1_expr155).
argument(p_length_4561, 2, node_1_expr155).
return(node_1_expr156, m_get_lineno_3372, line(node_1, 1122)).
method_invoc(node_1_expr156, m_extract_lineno_4115, line(node_1, 1122)).
argument(f_source_position_4432, 1, node_1_expr156).
return(node_1_expr157, m_get_charno_4116, line(node_1, 1126)).
method_invoc(node_1_expr157, m_extract_charno_4117, line(node_1, 1126)).
argument(f_source_position_4432, 1, node_1_expr157).
param(p_lineno_4563, 1, m_set_lineno_3374).
assign(v_charno_4564, node_1_expr158, line(node_1, 1146)).
method_invoc(node_1_expr158, m_get_charno_4116, line(node_1, 1146)).
assign(v_charno_4564, node_1_literal47, line(node_1, 1148)).
assign(f_source_position_4432, node_1_expr163, line(node_1, 1150)).
method_invoc(node_1_expr163, m_merge_line_char_no_4062, line(node_1, 1150)).
argument(p_lineno_4563, 1, node_1_expr163).
argument(v_charno_4564, 2, node_1_expr163).
param(p_charno_4565, 1, m_set_charno_3377).
assign(f_source_position_4432, node_1_expr165, line(node_1, 1154)).
method_invoc(node_1_expr165, m_merge_line_char_no_4062, line(node_1, 1154)).
argument(node_1_expr166, 1, node_1_expr165).
argument(p_charno_4565, 2, node_1_expr165).
method_invoc(node_1_expr166, m_get_lineno_3372, line(node_1, 1154)).
param(p_source_position_4566, 1, m_set_source_encoded_position_4120).
param(p_source_position_4567, 1, m_set_source_encoded_position_for_tree_4121).
param(p_lineno_4568, 1, m_merge_line_char_no_4062).
param(p_charno_4569, 2, m_merge_line_char_no_4062).
assign(node_1_expr171, node_1_expr172, line(node_1, 1179)).
return(node_1_expr174, m_merge_line_char_no_4062, line(node_1, 1182)).
assign(node_1_expr176, node_1_expr177, line(node_1, 1182)).
param(p_line_char_no_4572, 1, m_extract_lineno_4115).
return(node_1_expr180, m_extract_lineno_4115, line(node_1, 1192)).
return(node_1_expr181, m_extract_lineno_4115, line(node_1, 1194)).
param(p_line_char_no_4573, 1, m_extract_charno_4117).
return(node_1_expr184, m_extract_charno_4117, line(node_1, 1204)).
return(node_1_expr185, m_extract_charno_4117, line(node_1, 1206)).
return(node_1_expr187, m_children_1084, line(node_1, 1224)).
method_invoc(node_1_expr187, m_empty_set_596, line(node_1, 1224)).
ref(t_collections_27, node_1_expr187, line(node_1, 1224)).
param(p_start_4574, 1, m_sibling_node_iterable_4123).
return(f_parent_4431, m_get_parent_840, line(node_1, 1305)).
param(p_level_4575, 1, m_get_ancestor_4129).
param(p_cur_4576, 1, m_ancestor_iterable_4131).
return(node_1_expr188, m_has_one_child_1133, line(node_1, 1373)).
assign(v_c_4577, node_1_literal57, line(node_1, 1387)).
assign(v_n_4578, f_first_4435, line(node_1, 1388)).
assign(v_n_4578, q_next_127, line(node_1, 1388)).
ref(v_n_4578, q_next_127, line(node_1, 1388)).
return(v_c_4577, m_get_child_count_846, line(node_1, 1391)).
param(p_child_4579, 1, m_has_child_4137).
param(p_node_2_4580, 1, m_check_tree_equals_4138).
param(p_node_2_4581, 1, m_check_tree_equals_impl_4139).
param(p_node_2_4582, 1, m_check_tree_type_aware_equals_impl_4140).
param(p_node_4583, 1, m_is_equivalent_to_4141).
return(node_1_expr195, m_is_equivalent_to_4141, line(node_1, 1472)).
method_invoc(node_1_expr195, m_is_equivalent_to_4036, line(node_1, 1472)).
argument(p_node_4583, 1, node_1_expr195).
argument(node_1_literal59, 2, node_1_expr195).
argument(node_1_literal60, 3, node_1_expr195).
param(p_node_4584, 1, m_is_equivalent_to_typed_4142).
param(p_node_4585, 1, m_is_equivalent_to_4036).
param(p_compare_js_type_4586, 2, m_is_equivalent_to_4036).
param(p_recurse_4587, 3, m_is_equivalent_to_4036).
method_invoc(node_1_expr199, m_get_type_824, line(node_1, 1490)).
ref(p_node_4585, node_1_expr199, line(node_1, 1490)).
method_invoc(node_1_expr202, m_is_equivalent_4143, line(node_1, 1496)).
argument(f_js_type_4588, 1, node_1_expr202).
argument(node_1_expr203, 2, node_1_expr202).
ref(t_jstype_66, node_1_expr202, line(node_1, 1496)).
method_invoc(node_1_expr203, m_get_jstype_1808, line(node_1, 1496)).
ref(p_node_4585, node_1_expr203, line(node_1, 1496)).
ref(t_token_51, q_inc_128, line(node_1, 1500)).
ref(t_token_51, q_dec_129, line(node_1, 1500)).
ref(t_token_51, q_string_130, line(node_1, 1506)).
ref(t_token_51, q_string_key_130, line(node_1, 1506)).
ref(t_token_51, q_string_key_131, line(node_1, 1507)).
assign(v_slash_v1_4589, node_1_expr211, line(node_1, 1515)).
method_invoc(node_1_expr211, m_get_int_prop_4093, line(node_1, 1515)).
argument(f_slash_v_4590, 1, node_1_expr211).
ref(node_1_expr212, node_1_expr211, line(node_1, 1515)).
assign(v_slash_v2_4591, node_1_expr213, line(node_1, 1516)).
method_invoc(node_1_expr213, m_get_int_prop_4093, line(node_1, 1516)).
argument(f_slash_v_4590, 1, node_1_expr213).
ref(p_node_4585, node_1_expr213, line(node_1, 1516)).
ref(t_token_51, q_call_131, line(node_1, 1520)).
assign(v_n_4592, f_first_4435, line(node_1, 1528)).
assign(v_n_2_4593, q_first_132, line(node_1, 1528)).
ref(p_node_4585, q_first_132, line(node_1, 1528)).
method_invoc(node_1_expr220, m_is_equivalent_to_4036, line(node_1, 1531)).
argument(v_n_2_4593, 1, node_1_expr220).
argument(p_compare_js_type_4586, 2, node_1_expr220).
argument(node_1_literal62, 3, node_1_expr220).
ref(v_n_4592, node_1_expr220, line(node_1, 1531)).
return(node_1_literal63, m_is_equivalent_to_4036, line(node_1, 1532)).
return(node_1_literal64, m_is_equivalent_to_4036, line(node_1, 1537)).
ref(t_token_51, q_name_133, line(node_1, 1549)).
assign(v_name_4594, node_1_expr222, line(node_1, 1550)).
method_invoc(node_1_expr222, m_get_string_1783, line(node_1, 1550)).
throw(node_1_expr222, unsupported_operation_exception, line(node_1, 1550)).
return(node_1_expr223, m_get_qualified_name_1497, line(node_1, 1551)).
cond_expr(node_1_expr224, node_1_literal65, v_name_4594, line(node_1, 1551)).
method_invoc(node_1_expr224, m_is_empty_1098, line(node_1, 1551)).
ref(v_name_4594, node_1_expr224, line(node_1, 1551)).
method_invoc(node_1_expr225, m_get_type_824, line(node_1, 1570)).
return(node_1_literal66, m_is_qualified_name_3160, line(node_1, 1578)).
param(p_prev_4595, 1, m_remove_child_after_4148).
param(p_other_4596, 1, m_copy_information_from_4151).
param(p_other_4597, 1, m_copy_information_from_for_tree_4152).
param(p_other_4598, 1, m_use_source_info_from_4153).
param(p_other_4599, 1, m_srcref_4154).
param(p_other_4600, 1, m_use_source_info_from_for_tree_4155).
param(p_other_4601, 1, m_srcref_tree_4156).
param(p_other_4602, 1, m_use_source_info_if_missing_from_4157).
param(p_other_4603, 1, m_use_source_info_if_missing_from_for_tree_4158).
return(f_js_type_4588, m_get_jstype_1808, line(node_1, 1809)).
param(p_js_type_4604, 1, m_set_jstype_3117).
assign(f_js_type_4588, p_js_type_4604, line(node_1, 1813)).
return(node_1_expr229, m_get_js_doc_builder_for_node_4159, line(node_1, 1817)).
method_invoc(node_1_expr229, m_file_level_js_doc_builder_4160, line(node_1, 1817)).
param(p_file_level_comment_4605, 1, m_append_4161).
return(node_1_expr230, m_get_jsdoc_info_1492, line(node_1, 1851)).
assign(node_1_expr230, node_1_expr231, line(node_1, 1851)).
method_invoc(node_1_expr231, m_get_prop_4091, line(node_1, 1851)).
argument(f_jsdoc_info_prop_4606, 1, node_1_expr231).
param(p_info_4607, 1, m_set_jsdoc_info_3366).
method_invoc(node_1_expr232, m_put_prop_4095, line(node_1, 1858)).
argument(f_jsdoc_info_prop_4606, 1, node_1_expr232).
argument(p_info_4607, 2, node_1_expr232).
return(node_1_expr233, m_set_jsdoc_info_3366, line(node_1, 1859)).
param(p_var_args_4608, 1, m_set_var_args_4162).
method_invoc(node_1_expr234, m_put_boolean_prop_4097, line(node_1, 1868)).
argument(f_var_args_name_4609, 1, node_1_expr234).
argument(p_var_args_4608, 2, node_1_expr234).
param(p_optional_arg_4610, 1, m_set_optional_arg_4164).
method_invoc(node_1_expr235, m_put_boolean_prop_4097, line(node_1, 1886)).
argument(f_opt_arg_name_4611, 1, node_1_expr235).
argument(p_optional_arg_4610, 2, node_1_expr235).
param(p_val_4612, 1, m_set_is_synthetic_block_3581).
method_invoc(node_1_expr236, m_put_boolean_prop_4097, line(node_1, 1903)).
argument(f_synthetic_block_prop_4613, 1, node_1_expr236).
argument(p_val_4612, 2, node_1_expr236).
return(node_1_expr237, m_is_synthetic_block_845, line(node_1, 1911)).
method_invoc(node_1_expr237, m_get_boolean_prop_4092, line(node_1, 1911)).
argument(f_synthetic_block_prop_4613, 1, node_1_expr237).
param(p_val_4614, 1, m_set_directives_4166).
param(p_warning_4615, 1, m_add_suppression_4168).
param(p_val_4616, 1, m_set_was_empty_node_4169).
param(p_flags_4617, 1, m_set_side_effect_flags_4171).
param(p_flags_4618, 1, m_set_side_effect_flags_4172).
param(p_value_4619, 1, m_side_effect_flags_4175).
param(p_flag_4620, 1, m_remove_flag_4186).
param(p_value_4621, 1, m_are_bit_flags_set_4190).
param(p_flags_4622, 2, m_are_bit_flags_set_4190).
param(p_node_a_4623, 1, m_node_mismatch_4193).
param(p_node_b_4624, 2, m_node_mismatch_4193).
param(p_object_4625, 1, m_equals_4194).
return(node_1_expr238, m_is_block_841, line(node_1, 2170)).
method_invoc(node_1_expr239, m_get_type_824, line(node_1, 2170)).
ref(node_1_expr240, node_1_expr239, line(node_1, 2170)).
ref(t_token_51, q_block_133, line(node_1, 2170)).
return(node_1_expr241, m_is_call_1413, line(node_1, 2178)).
method_invoc(node_1_expr242, m_get_type_824, line(node_1, 2178)).
ref(node_1_expr243, node_1_expr242, line(node_1, 2178)).
ref(t_token_51, q_call_133, line(node_1, 2178)).
return(node_1_expr244, m_is_function_842, line(node_1, 2238)).
method_invoc(node_1_expr245, m_get_type_824, line(node_1, 2238)).
ref(node_1_expr246, node_1_expr245, line(node_1, 2238)).
ref(t_token_51, q_function_133, line(node_1, 2238)).
return(node_1_expr247, m_is_get_elem_1391, line(node_1, 2246)).
method_invoc(node_1_expr248, m_get_type_824, line(node_1, 2246)).
ref(node_1_expr249, node_1_expr248, line(node_1, 2246)).
ref(t_token_51, q_getelem_133, line(node_1, 2246)).
return(node_1_expr250, m_is_get_prop_1390, line(node_1, 2250)).
method_invoc(node_1_expr251, m_get_type_824, line(node_1, 2250)).
ref(node_1_expr252, node_1_expr251, line(node_1, 2250)).
ref(t_token_51, q_getprop_134, line(node_1, 2250)).
return(node_1_expr253, m_is_name_3166, line(node_1, 2282)).
method_invoc(node_1_expr254, m_get_type_824, line(node_1, 2282)).
ref(node_1_expr255, node_1_expr254, line(node_1, 2282)).
ref(t_token_51, q_name_135, line(node_1, 2282)).
return(node_1_expr256, m_is_new_1414, line(node_1, 2290)).
method_invoc(node_1_expr257, m_get_type_824, line(node_1, 2290)).
ref(node_1_expr258, node_1_expr257, line(node_1, 2290)).
ref(t_token_51, q_new_135, line(node_1, 2290)).
return(node_1_expr259, m_is_object_lit_1515, line(node_1, 2306)).
method_invoc(node_1_expr260, m_get_type_824, line(node_1, 2306)).
ref(node_1_expr261, node_1_expr260, line(node_1, 2306)).
ref(t_token_51, q_objectlit_136, line(node_1, 2306)).
return(node_1_expr262, m_is_param_list_3193, line(node_1, 2314)).
method_invoc(node_1_expr263, m_get_type_824, line(node_1, 2314)).
ref(node_1_expr264, node_1_expr263, line(node_1, 2314)).
ref(t_token_51, q_param_list_137, line(node_1, 2314)).
return(node_1_expr265, m_is_return_3198, line(node_1, 2322)).
method_invoc(node_1_expr266, m_get_type_824, line(node_1, 2322)).
ref(node_1_expr267, node_1_expr266, line(node_1, 2322)).
ref(t_token_51, q_return_137, line(node_1, 2322)).
return(node_1_expr268, m_is_script_537, line(node_1, 2326)).
method_invoc(node_1_expr269, m_get_type_824, line(node_1, 2326)).
ref(node_1_expr270, node_1_expr269, line(node_1, 2326)).
ref(t_token_51, q_script_138, line(node_1, 2326)).
return(node_1_expr271, m_is_try_4235, line(node_1, 2358)).
method_invoc(node_1_expr272, m_get_type_824, line(node_1, 2358)).
ref(node_1_expr273, node_1_expr272, line(node_1, 2358)).
ref(t_token_51, q_try_138, line(node_1, 2358)).
return(node_1_expr274, m_is_var_4237, line(node_1, 2366)).
method_invoc(node_1_expr275, m_get_type_824, line(node_1, 2366)).
ref(node_1_expr276, node_1_expr275, line(node_1, 2366)).
ref(t_token_51, q_var_139, line(node_1, 2366)).

%basic_error_manager_1 - com.google.javascript.jscomp.BasicErrorManager
assign(f_messages_52, basic_error_manager_1_expr1, line(basic_error_manager_1, 38)).
assign(f_error_count_53, basic_error_manager_1_literal1, line(basic_error_manager_1, 40)).
assign(f_warning_count_54, basic_error_manager_1_literal2, line(basic_error_manager_1, 41)).
assign(f_typed_percent_55, basic_error_manager_1_literal3, line(basic_error_manager_1, 42)).
param(p_level_56, 1, m_report_66).
param(p_error_57, 2, m_report_66).
method_invoc(basic_error_manager_1_expr2, m_add_67, line(basic_error_manager_1, 46)).
argument(basic_error_manager_1_expr3, 1, basic_error_manager_1_expr2).
ref(f_messages_52, basic_error_manager_1_expr2, line(basic_error_manager_1, 46)).
method_invoc(basic_error_manager_1_expr3, m_error_with_level_68, line(basic_error_manager_1, 46)).
argument(p_error_57, 1, basic_error_manager_1_expr3).
argument(p_level_56, 2, basic_error_manager_1_expr3).
ref(t_check_level_8, q_error_4, line(basic_error_manager_1, 47)).
ref(t_check_level_8, q_warning_5, line(basic_error_manager_1, 49)).
param(p_level_58, 1, m_println_70).
param(p_error_59, 2, m_println_70).
return(f_error_count_53, m_get_error_count_72, line(basic_error_manager_1, 76)).
param(p_typed_percent_60, 1, m_set_typed_percent_76).
param(p_level_61, 1, m_to_array_78).
param(p_p_1_62, 1, m_compare_79).
param(p_p_2_63, 2, m_compare_79).
ref(p_p_1_62, q_level_6, line(basic_error_manager_1, 140)).
ref(p_p_2_63, q_level_7, line(basic_error_manager_1, 140)).
assign(v_source_1_64, q_source_name_8, line(basic_error_manager_1, 145)).
assign(v_source_2_65, q_source_name_9, line(basic_error_manager_1, 146)).
assign(v_source_compare_66, basic_error_manager_1_expr12, line(basic_error_manager_1, 148)).
method_invoc(basic_error_manager_1_expr12, m_compare_to_80, line(basic_error_manager_1, 148)).
argument(v_source_2_65, 1, basic_error_manager_1_expr12).
ref(v_source_1_64, basic_error_manager_1_expr12, line(basic_error_manager_1, 148)).
assign(v_lineno_1_67, q_line_number_10, line(basic_error_manager_1, 158)).
assign(v_lineno_2_68, q_line_number_11, line(basic_error_manager_1, 159)).
return(basic_error_manager_1_expr18, m_compare_79, line(basic_error_manager_1, 161)).
assign(v_charno_1_69, basic_error_manager_1_expr25, line(basic_error_manager_1, 168)).
method_invoc(basic_error_manager_1_expr25, m_get_charno_81, line(basic_error_manager_1, 168)).
ref(f_error_70, basic_error_manager_1_expr25, line(basic_error_manager_1, 168)).
ref(p_p_1_62, q_error_12, line(basic_error_manager_1, 168)).
assign(v_charno_2_71, basic_error_manager_1_expr26, line(basic_error_manager_1, 169)).
method_invoc(basic_error_manager_1_expr26, m_get_charno_81, line(basic_error_manager_1, 169)).
ref(f_error_70, basic_error_manager_1_expr26, line(basic_error_manager_1, 169)).
ref(p_p_2_63, q_error_13, line(basic_error_manager_1, 169)).
return(basic_error_manager_1_expr34, m_compare_79, line(basic_error_manager_1, 178)).
method_invoc(basic_error_manager_1_expr34, m_compare_to_80, line(basic_error_manager_1, 178)).
argument(q_description_14, 1, basic_error_manager_1_expr34).
ref(f_description_72, basic_error_manager_1_expr34, line(basic_error_manager_1, 178)).
param(p_error_73, 1, m_error_with_level_68).
param(p_level_74, 2, m_error_with_level_68).
assign(f_error_70, p_error_73, line(basic_error_manager_1, 187)).
assign(f_level_75, p_level_74, line(basic_error_manager_1, 188)).

%check_level_1 - com.google.javascript.jscomp.CheckLevel
return(check_level_1_expr1, m_is_on_125, line(check_level_1, 30)).

%graph_1 - com.google.javascript.jscomp.graph.Graph
param(p_annotatable_3387, 1, m_annotation_state_3238).
param(p_annotation_3388, 2, m_annotation_state_3238).
param(p_size_3389, 1, m_graph_annotation_state_3239).
param(p_n_1_3390, 1, m_connect_3240).
param(p_edge_3391, 2, m_connect_3240).
param(p_n_2_3392, 3, m_connect_3240).
param(p_n_1_3393, 1, m_disconnect_3241).
param(p_n_2_3394, 2, m_disconnect_3241).
param(p_n_1_3395, 1, m_connect_if_not_found_860).
param(p_edge_3396, 2, m_connect_if_not_found_860).
param(p_n_2_3397, 3, m_connect_if_not_found_860).
method_invoc(graph_1_expr2, m_is_connected_3242, line(graph_1, 120)).
argument(p_n_1_3395, 1, graph_1_expr2).
argument(p_edge_3396, 2, graph_1_expr2).
argument(p_n_2_3397, 3, graph_1_expr2).
method_invoc(graph_1_expr3, m_connect_3240, line(graph_1, 121)).
argument(p_n_1_3395, 1, graph_1_expr3).
argument(p_edge_3396, 2, graph_1_expr3).
argument(p_n_2_3397, 3, graph_1_expr3).
param(p_value_3398, 1, m_create_node_3243).
param(p_value_3399, 1, m_get_node_degree_3246).
param(p_value_3400, 1, m_get_weight_3247).
param(p_value_3401, 1, m_get_neighbor_nodes_3248).
param(p_value_3402, 1, m_get_neighbor_nodes_iterator_3249).
param(p_n_1_3403, 1, m_get_edges_3250).
param(p_n_2_3404, 2, m_get_edges_3250).
param(p_n_1_3405, 1, m_get_first_edge_3251).
param(p_n_2_3406, 2, m_get_first_edge_3251).
param(p_n_3407, 1, m_has_node_3252).
param(p_n_1_3408, 1, m_is_connected_3253).
param(p_n_2_3409, 2, m_is_connected_3253).
param(p_n_1_3410, 1, m_is_connected_3242).
param(p_e_3411, 2, m_is_connected_3242).
param(p_n_2_3412, 3, m_is_connected_3242).
param(p_val_3413, 1, m_get_node_or_fail_3254).
assign(v_node_3414, graph_1_expr4, line(graph_1, 220)).
assign(graph_1_expr4, graph_1_expr5, line(graph_1, 220)).
method_invoc(graph_1_expr5, m_get_node_3255, line(graph_1, 220)).
argument(p_val_3413, 1, graph_1_expr5).
return(v_node_3414, m_get_node_or_fail_3254, line(graph_1, 224)).
param(p_graph_3415, 1, m_simple_sub_graph_3264).
param(p_value_3416, 1, m_is_independent_of_3265).
param(p_value_3417, 1, m_add_node_3266).
param(p_stack_3418, 1, m_push_annotations_3267).
param(p_have_annotations_3419, 2, m_push_annotations_3267).
param(p_stack_3420, 1, m_pop_annotations_3268).

%check_global_this_1 - com.google.javascript.jscomp.CheckGlobalThis
assign(f_global_this_162, check_global_this_1_expr1, line(check_global_this_1, 58)).
method_invoc(check_global_this_1_expr1, m_warning_109, line(check_global_this_1, 58)).
argument(check_global_this_1_literal1, 1, check_global_this_1_expr1).
argument(check_global_this_1_literal2, 2, check_global_this_1_expr1).
ref(t_diagnostic_type_2, check_global_this_1_expr1, line(check_global_this_1, 58)).
param(p_compiler_163, 1, m_check_global_this_120).
param(p_t_164, 1, m_should_traverse_121).
param(p_n_165, 2, m_should_traverse_121).
param(p_parent_166, 3, m_should_traverse_121).
param(p_t_167, 1, m_visit_122).
param(p_n_168, 2, m_visit_122).
param(p_parent_169, 3, m_visit_122).
param(p_n_170, 1, m_should_report_this_123).
param(p_parent_171, 2, m_should_report_this_123).
param(p_n_172, 1, m_get_function_js_doc_info_124).

%no_object_type_1 - com.google.javascript.rhino.jstype.NoObjectType
param(p_registry_5255, 1, m_no_object_type_4574).
method_invoc(no_object_type_1_expr1, m_function_type_4317, line(no_object_type_1, 67)).
argument(p_registry_5255, 1, no_object_type_1_expr1).
argument(no_object_type_1_literal1, 2, no_object_type_1_expr1).
argument(no_object_type_1_literal2, 3, no_object_type_1_expr1).
argument(no_object_type_1_expr2, 4, no_object_type_1_expr1).
argument(no_object_type_1_literal3, 5, no_object_type_1_expr1).
argument(no_object_type_1_literal4, 6, no_object_type_1_expr1).
argument(no_object_type_1_literal5, 7, no_object_type_1_expr1).
argument(no_object_type_1_literal6, 8, no_object_type_1_expr1).
assign(no_object_type_1_expr4, no_object_type_1_expr5, line(no_object_type_1, 70)).
ref(no_object_type_1_expr6, no_object_type_1_expr4, line(no_object_type_1, 70)).
method_invoc(no_object_type_1_expr6, m_get_internal_arrow_type_4318, line(no_object_type_1, 70)).
method_invoc(no_object_type_1_expr7, m_set_instance_type_4404, line(no_object_type_1, 71)).
argument(no_object_type_1_expr8, 1, no_object_type_1_expr7).
ref(no_object_type_1_expr9, no_object_type_1_expr7, line(no_object_type_1, 71)).
param(p_that_5256, 1, m_is_subtype_4688).
param(p_property_name_5257, 1, m_define_property_4697).
param(p_type_5258, 2, m_define_property_4697).
param(p_inferred_5259, 3, m_define_property_4697).
param(p_property_node_5260, 4, m_define_property_4697).
param(p_name_5261, 1, m_remove_property_4698).
param(p_property_name_5262, 1, m_set_property_jsdoc_info_4699).
param(p_info_5263, 2, m_set_property_jsdoc_info_4699).
param(p_visitor_5264, 1, m_visit_4700).
param(p_visitor_5265, 1, m_visit_4701).
param(p_that_5266, 2, m_visit_4701).
param(p_for_annotations_5267, 1, m_to_string_helper_4702).
param(p_t_5268, 1, m_resolve_internal_4704).
param(p_scope_5269, 2, m_resolve_internal_4704).

%error_format_1 - com.google.javascript.jscomp.ErrorFormat
param(p_source_1409, 1, m_to_formatter_1056).
param(p_colorize_1410, 2, m_to_formatter_1056).
param(p_source_1412, 1, m_to_formatter_1057).
param(p_colorize_1413, 2, m_to_formatter_1057).
assign(v_formatter_1414, error_format_1_expr1, line(error_format_1, 38)).
method_invoc(error_format_1_expr1, m_lightweight_message_formatter_1058, line(error_format_1, 38)).
argument(p_source_1412, 1, error_format_1_expr1).
method_invoc(error_format_1_expr2, m_set_colorize_57, line(error_format_1, 40)).
argument(p_colorize_1413, 1, error_format_1_expr2).
ref(v_formatter_1414, error_format_1_expr2, line(error_format_1, 40)).
return(v_formatter_1414, m_to_formatter_1057, line(error_format_1, 41)).
param(p_source_1416, 1, m_to_formatter_1059).
param(p_colorize_1417, 2, m_to_formatter_1059).
param(p_source_1419, 1, m_to_formatter_1060).
param(p_colorize_1420, 2, m_to_formatter_1060).
param(p_source_1421, 1, m_to_formatter_325).
param(p_colorize_1422, 2, m_to_formatter_325).

%all_type_1 - com.google.javascript.rhino.jstype.AllType
param(p_registry_4648, 1, m_all_type_4256).
method_invoc(all_type_1_expr1, m_jstype_4257, line(all_type_1, 53)).
argument(p_registry_4648, 1, all_type_1_expr1).
return(all_type_1_literal1, m_is_all_type_4258, line(all_type_1, 58)).
param(p_that_4649, 1, m_test_for_equality_4262).
param(p_for_annotations_4650, 1, m_to_string_helper_4263).
param(p_visitor_4651, 1, m_visit_4266).
param(p_visitor_4652, 1, m_visit_4267).
param(p_that_4653, 2, m_visit_4267).
param(p_t_4654, 1, m_resolve_internal_4269).
param(p_scope_4655, 2, m_resolve_internal_4269).
return(all_type_1_expr2, m_resolve_internal_4269, line(all_type_1, 114)).

%lightweight_message_formatter_1 - com.google.javascript.jscomp.LightweightMessageFormatter
assign(f_excerpt_formatter_1669, lightweight_message_formatter_1_expr1, line(lightweight_message_formatter_1, 33)).
param(p_source_1670, 1, m_lightweight_message_formatter_1058).
method_invoc(lightweight_message_formatter_1_expr2, m_lightweight_message_formatter_1220, line(lightweight_message_formatter_1, 45)).
argument(p_source_1670, 1, lightweight_message_formatter_1_expr2).
argument(f_line_1671, 2, lightweight_message_formatter_1_expr2).
param(p_source_1672, 1, m_lightweight_message_formatter_1220).
param(p_excerpt_1673, 2, m_lightweight_message_formatter_1220).
method_invoc(lightweight_message_formatter_1_expr3, m_abstract_message_formatter_56, line(lightweight_message_formatter_1, 50)).
argument(p_source_1672, 1, lightweight_message_formatter_1_expr3).
method_invoc(lightweight_message_formatter_1_expr4, m_check_not_null_538, line(lightweight_message_formatter_1, 51)).
argument(p_source_1672, 1, lightweight_message_formatter_1_expr4).
ref(t_preconditions_19, lightweight_message_formatter_1_expr4, line(lightweight_message_formatter_1, 51)).
assign(f_excerpt_1674, p_excerpt_1673, line(lightweight_message_formatter_1, 52)).
param(p_error_1675, 1, m_format_error_1222).
param(p_warning_1676, 1, m_format_warning_1223).
param(p_error_1677, 1, m_format_1224).
param(p_warning_1678, 2, m_format_1224).
param(p_line_1679, 1, m_format_line_1225).
param(p_line_number_1680, 2, m_format_line_1225).
param(p_region_1681, 1, m_format_region_1226).

%boolean_type_1 - com.google.javascript.rhino.jstype.BooleanType
param(p_registry_4681, 1, m_boolean_type_4288).
method_invoc(boolean_type_1_expr1, m_value_type_4289, line(boolean_type_1, 53)).
argument(p_registry_4681, 1, boolean_type_1_expr1).
param(p_that_4682, 1, m_test_for_equality_4291).
param(p_for_annotations_4683, 1, m_to_string_helper_4297).
return(boolean_type_1_expr2, m_to_string_helper_4297, line(boolean_type_1, 103)).
method_invoc(boolean_type_1_expr2, m_get_display_name_4298, line(boolean_type_1, 103)).
return(boolean_type_1_literal1, m_get_display_name_4298, line(boolean_type_1, 108)).
param(p_visitor_4684, 1, m_visit_4300).

%check_debugger_statement_1 - com.google.javascript.jscomp.CheckDebuggerStatement
assign(f_debugger_statement_present_135, check_debugger_statement_1_expr1, line(check_debugger_statement_1, 33)).
param(p_compiler_136, 1, m_check_debugger_statement_106).
param(p_externs_137, 1, m_process_107).
param(p_root_138, 2, m_process_107).
param(p_t_139, 1, m_visit_108).
param(p_n_140, 2, m_visit_108).
param(p_parent_141, 3, m_visit_108).

%named_type_1 - com.google.javascript.rhino.jstype.NamedType
assign(f_property_continuations_5207, named_type_1_literal1, line(named_type_1, 98)).
param(p_registry_5208, 1, m_named_type_4657).
param(p_reference_5209, 2, m_named_type_4657).
param(p_source_name_5210, 3, m_named_type_4657).
param(p_lineno_5211, 4, m_named_type_4657).
param(p_charno_5212, 5, m_named_type_4657).
method_invoc(named_type_1_expr1, m_proxy_object_type_4658, line(named_type_1, 105)).
argument(p_registry_5208, 1, named_type_1_expr1).
argument(named_type_1_expr2, 2, named_type_1_expr1).
method_invoc(named_type_1_expr2, m_get_native_object_type_3010, line(named_type_1, 105)).
argument(q_unknown_type_206, 1, named_type_1_expr2).
ref(p_registry_5208, named_type_1_expr2, line(named_type_1, 105)).
ref(t_jstype_native_15, q_unknown_type_206, line(named_type_1, 105)).
method_invoc(named_type_1_expr3, m_check_not_null_538, line(named_type_1, 107)).
argument(p_reference_5209, 1, named_type_1_expr3).
ref(t_preconditions_19, named_type_1_expr3, line(named_type_1, 107)).
assign(f_reference_5213, p_reference_5209, line(named_type_1, 108)).
assign(f_source_name_5214, p_source_name_5210, line(named_type_1, 109)).
assign(f_lineno_5215, p_lineno_5211, line(named_type_1, 110)).
assign(f_charno_5216, p_charno_5212, line(named_type_1, 111)).
param(p_property_name_5217, 1, m_define_property_4659).
param(p_type_5218, 2, m_define_property_4659).
param(p_inferred_5219, 3, m_define_property_4659).
param(p_property_node_5220, 4, m_define_property_4659).
assign(v_referenced_obj_type_5221, named_type_1_expr16, line(named_type_1, 134)).
method_invoc(named_type_1_expr16, m_get_referenced_obj_type_internal_4661, line(named_type_1, 134)).
method_invoc(named_type_1_expr20, m_is_unknown_type_4613, line(named_type_1, 135)).
ref(v_referenced_obj_type_5221, named_type_1_expr20, line(named_type_1, 135)).
assign(f_property_continuations_5207, named_type_1_literal3, line(named_type_1, 142)).
return(named_type_1_expr22, m_get_referenced_type_4662, line(named_type_1, 147)).
method_invoc(named_type_1_expr22, m_get_referenced_type_internal_4663, line(named_type_1, 147)).
param(p_for_annotations_5222, 1, m_to_string_helper_4665).
return(named_type_1_expr23, m_hash_code_4669, line(named_type_1, 177)).
method_invoc(named_type_1_expr23, m_hash_code_982, line(named_type_1, 177)).
ref(f_reference_5213, named_type_1_expr23, line(named_type_1, 177)).
param(p_t_5223, 1, m_resolve_internal_4670).
param(p_enclosing_5224, 2, m_resolve_internal_4670).
assign(v_resolved_5225, named_type_1_expr24, line(named_type_1, 189)).
method_invoc(named_type_1_expr24, m_resolve_via_registry_4671, line(named_type_1, 189)).
argument(p_t_5223, 1, named_type_1_expr24).
argument(p_enclosing_5224, 2, named_type_1_expr24).
method_invoc(named_type_1_expr25, m_detect_inheritance_cycle_4672, line(named_type_1, 190)).
method_invoc(named_type_1_expr26, m_resolve_via_properties_4673, line(named_type_1, 201)).
argument(p_t_5223, 1, named_type_1_expr26).
argument(p_enclosing_5224, 2, named_type_1_expr26).
method_invoc(named_type_1_expr27, m_detect_inheritance_cycle_4672, line(named_type_1, 202)).
method_invoc(named_type_1_expr28, m_resolve_internal_4674, line(named_type_1, 206)).
argument(p_t_5223, 1, named_type_1_expr28).
argument(p_enclosing_5224, 2, named_type_1_expr28).
method_invoc(named_type_1_expr29, m_is_resolved_4547, line(named_type_1, 207)).
method_invoc(named_type_1_expr30, m_finish_property_continuations_4660, line(named_type_1, 208)).
return(named_type_1_expr31, m_resolve_internal_4670, line(named_type_1, 210)).
cond_expr(named_type_1_expr32, named_type_1_expr33, named_type_1_expr34, line(named_type_1, 210)).
method_invoc(named_type_1_expr32, m_is_last_generation_4597, line(named_type_1, 210)).
ref(f_registry_4786, named_type_1_expr32, line(named_type_1, 210)).
param(p_t_5226, 1, m_resolve_via_registry_4671).
param(p_enclosing_5227, 2, m_resolve_via_registry_4671).
assign(v_type_5228, named_type_1_expr35, line(named_type_1, 220)).
method_invoc(named_type_1_expr35, m_get_type_4605, line(named_type_1, 220)).
argument(f_reference_5213, 1, named_type_1_expr35).
ref(f_registry_4786, named_type_1_expr35, line(named_type_1, 220)).
return(named_type_1_literal5, m_resolve_via_registry_4671, line(named_type_1, 225)).
param(p_t_5229, 1, m_resolve_via_properties_4673).
param(p_enclosing_5230, 2, m_resolve_via_properties_4673).
assign(v_value_5231, named_type_1_expr37, line(named_type_1, 235)).
method_invoc(named_type_1_expr37, m_lookup_via_properties_4675, line(named_type_1, 235)).
argument(p_t_5229, 1, named_type_1_expr37).
argument(p_enclosing_5230, 2, named_type_1_expr37).
method_invoc(named_type_1_expr41, m_is_function_type_3130, line(named_type_1, 237)).
ref(v_value_5231, named_type_1_expr41, line(named_type_1, 237)).
method_invoc(named_type_1_expr44, m_is_no_object_type_4456, line(named_type_1, 242)).
ref(v_value_5231, named_type_1_expr44, line(named_type_1, 242)).
method_invoc(named_type_1_expr46, m_handle_unresolved_type_4676, line(named_type_1, 256)).
argument(p_t_5229, 1, named_type_1_expr46).
argument(named_type_1_expr47, 2, named_type_1_expr46).
method_invoc(named_type_1_expr49, m_is_unknown_type_3133, line(named_type_1, 256)).
ref(v_value_5231, named_type_1_expr49, line(named_type_1, 256)).
param(p_t_5232, 1, m_lookup_via_properties_4675).
param(p_enclosing_5233, 2, m_lookup_via_properties_4675).
assign(v_component_names_5234, named_type_1_expr50, line(named_type_1, 268)).
method_invoc(named_type_1_expr50, m_split_4677, line(named_type_1, 268)).
argument(named_type_1_literal9, 1, named_type_1_expr50).
argument(named_type_1_expr51, 2, named_type_1_expr50).
ref(f_reference_5213, named_type_1_expr50, line(named_type_1, 268)).
method_invoc(named_type_1_expr53, m_length_1652, line(named_type_1, 269)).
ref(named_type_1_expr54, named_type_1_expr53, line(named_type_1, 269)).
ref(v_component_names_5234, named_type_1_expr54, line(named_type_1, 269)).
assign(v_slot_5235, named_type_1_expr55, line(named_type_1, 272)).
method_invoc(named_type_1_expr55, m_get_slot_4678, line(named_type_1, 272)).
argument(named_type_1_expr56, 1, named_type_1_expr55).
ref(p_enclosing_5233, named_type_1_expr55, line(named_type_1, 272)).
ref(v_component_names_5234, named_type_1_expr56, line(named_type_1, 272)).
return(named_type_1_literal15, m_lookup_via_properties_4675, line(named_type_1, 274)).
param(p_type_5236, 1, m_set_referenced_and_resolved_type_4679).
param(p_t_5237, 2, m_set_referenced_and_resolved_type_4679).
param(p_enclosing_5238, 3, m_set_referenced_and_resolved_type_4679).
param(p_t_5239, 1, m_handle_type_cycle_4680).
param(p_t_5240, 1, m_check_enum_element_cycle_4681).
param(p_t_5241, 1, m_check_proto_cycle_4682).
param(p_t_5242, 1, m_handle_unresolved_type_4676).
param(p_ignore_forward_referenced_types_5243, 2, m_handle_unresolved_type_4676).
method_invoc(named_type_1_expr58, m_is_last_generation_4597, line(named_type_1, 340)).
ref(f_registry_4786, named_type_1_expr58, line(named_type_1, 340)).
assign(v_is_forward_declared_5244, named_type_1_expr59, line(named_type_1, 341)).
method_invoc(named_type_1_expr62, m_is_last_generation_4597, line(named_type_1, 344)).
ref(f_registry_4786, named_type_1_expr62, line(named_type_1, 344)).
method_invoc(named_type_1_expr63, m_warning_4683, line(named_type_1, 345)).
argument(named_type_1_expr64, 1, named_type_1_expr63).
argument(f_source_name_5214, 2, named_type_1_expr63).
argument(f_lineno_5215, 3, named_type_1_expr63).
argument(f_charno_5216, 4, named_type_1_expr63).
ref(p_t_5242, named_type_1_expr63, line(named_type_1, 345)).
method_invoc(named_type_1_expr65, m_set_resolved_type_internal_4412, line(named_type_1, 357)).
argument(named_type_1_expr66, 1, named_type_1_expr65).
method_invoc(named_type_1_expr66, m_get_referenced_type_4662, line(named_type_1, 357)).
param(p_t_5245, 1, m_get_typedef_type_4684).
param(p_slot_5246, 2, m_get_typedef_type_4684).
param(p_name_5247, 3, m_get_typedef_type_4684).
param(p_validator_5248, 1, m_set_validator_4685).
method_invoc(named_type_1_expr67, m_is_resolved_4547, line(named_type_1, 377)).
ref(named_type_1_expr68, named_type_1_expr67, line(named_type_1, 377)).
assign(f_validator_5249, p_validator_5248, line(named_type_1, 380)).
return(named_type_1_literal17, m_set_validator_4685, line(named_type_1, 381)).
param(p_property_name_5250, 1, m_property_continuation_4686).
param(p_type_5251, 2, m_property_continuation_4686).
param(p_inferred_5252, 3, m_property_continuation_4686).
param(p_property_node_5253, 4, m_property_continuation_4686).
param(p_target_5254, 1, m_commit_4687).

%check_side_effects_1 - com.google.javascript.jscomp.CheckSideEffects
assign(f_useless_code_error_199, check_side_effects_1_expr1, line(check_side_effects_1, 43)).
method_invoc(check_side_effects_1_expr1, m_warning_109, line(check_side_effects_1, 43)).
argument(check_side_effects_1_literal1, 1, check_side_effects_1_expr1).
argument(check_side_effects_1_literal2, 2, check_side_effects_1_expr1).
ref(t_diagnostic_type_2, check_side_effects_1_expr1, line(check_side_effects_1, 43)).
param(p_compiler_200, 1, m_check_side_effects_137).
param(p_level_201, 2, m_check_side_effects_137).
param(p_protect_side_effect_free_code_202, 3, m_check_side_effects_137).
param(p_externs_203, 1, m_process_138).
param(p_root_204, 2, m_process_138).
param(p_script_root_205, 1, m_hot_swap_script_139).
param(p_original_root_206, 2, m_hot_swap_script_139).
param(p_t_207, 1, m_visit_140).
param(p_n_208, 2, m_visit_140).
param(p_parent_209, 3, m_visit_140).
param(p_compiler_210, 1, m_strip_protection_143).
param(p_externs_211, 1, m_process_144).
param(p_root_212, 2, m_process_144).
param(p_t_213, 1, m_visit_145).
param(p_n_214, 2, m_visit_145).
param(p_parent_215, 3, m_visit_145).

%jsdoc_info_1 - com.google.javascript.rhino.JSDocInfo
assign(f_base_type_4213, jsdoc_info_1_literal1, line(jsdoc_info_1, 91)).
assign(f_extended_interfaces_4214, jsdoc_info_1_literal2, line(jsdoc_info_1, 92)).
assign(f_implemented_interfaces_4215, jsdoc_info_1_literal3, line(jsdoc_info_1, 93)).
assign(f_parameters_4216, jsdoc_info_1_literal4, line(jsdoc_info_1, 94)).
assign(f_thrown_types_4217, jsdoc_info_1_literal5, line(jsdoc_info_1, 95)).
assign(f_template_type_names_4218, jsdoc_info_1_literal6, line(jsdoc_info_1, 96)).
assign(f_description_4219, jsdoc_info_1_literal7, line(jsdoc_info_1, 99)).
assign(f_meaning_4220, jsdoc_info_1_literal8, line(jsdoc_info_1, 100)).
assign(f_deprecated_4221, jsdoc_info_1_literal9, line(jsdoc_info_1, 101)).
assign(f_license_4222, jsdoc_info_1_literal10, line(jsdoc_info_1, 102)).
assign(f_suppressions_4223, jsdoc_info_1_literal11, line(jsdoc_info_1, 103)).
assign(f_modifies_4224, jsdoc_info_1_literal12, line(jsdoc_info_1, 104)).
assign(f_lends_name_4225, jsdoc_info_1_literal13, line(jsdoc_info_1, 105)).
param(p_item_4226, 1, m_set_item_3818).
param(p_new_val_4227, 1, m_set_has_brackets_3820).
param(p_p_4228, 1, m_set_annotation_3822).
param(p_p_4229, 1, m_set_name_3824).
param(p_p_4230, 1, m_set_name_node_3826).
param(p_p_4231, 1, m_set_description_3828).
param(p_p_4232, 1, m_set_type_3830).
assign(f_info_4233, jsdoc_info_1_literal14, line(jsdoc_info_1, 246)).
assign(f_documentation_4234, jsdoc_info_1_literal15, line(jsdoc_info_1, 248)).
assign(f_associated_node_4235, jsdoc_info_1_literal16, line(jsdoc_info_1, 251)).
assign(f_visibility_4236, jsdoc_info_1_literal17, line(jsdoc_info_1, 253)).
assign(f_bitset_4237, jsdoc_info_1_literal18, line(jsdoc_info_1, 266)).
assign(f_type_4238, jsdoc_info_1_literal19, line(jsdoc_info_1, 276)).
assign(f_this_type_4239, jsdoc_info_1_literal20, line(jsdoc_info_1, 281)).
assign(f_include_documentation_4240, jsdoc_info_1_literal21, line(jsdoc_info_1, 288)).
param(p_include_documentation_4241, 1, m_jsdoc_info_3831).
assign(f_include_documentation_4240, p_include_documentation_4241, line(jsdoc_info_1, 335)).
param(p_value_4242, 1, m_set_consistent_id_generator_3833).
param(p_value_4243, 1, m_set_stable_id_generator_3834).
param(p_value_4244, 1, m_set_constant_3835).
param(p_value_4245, 1, m_set_constructor_3836).
param(p_value_4246, 1, m_set_define_3839).
param(p_value_4247, 1, m_set_hidden_3840).
param(p_value_4248, 1, m_set_no_check_3841).
param(p_value_4249, 1, m_set_should_preserve_try_3842).
param(p_value_4250, 1, m_set_override_3843).
param(p_value_4251, 1, m_set_no_alias_3844).
param(p_value_4252, 1, m_set_deprecated_3845).
param(p_value_4253, 1, m_set_interface_3846).
method_invoc(jsdoc_info_1_expr4, m_set_flag_3847, line(jsdoc_info_1, 395)).
argument(p_value_4253, 1, jsdoc_info_1_expr4).
argument(f_mask_interface_4254, 2, jsdoc_info_1_expr4).
param(p_value_4255, 1, m_set_export_3848).
param(p_value_4256, 1, m_set_expose_3849).
param(p_value_4257, 1, m_set_no_shadow_3850).
param(p_value_4258, 1, m_set_id_generator_3851).
param(p_value_4259, 1, m_set_implicit_cast_3852).
param(p_value_4260, 1, m_set_no_side_effects_3853).
param(p_value_4261, 1, m_set_externs_3854).
param(p_value_4262, 1, m_set_java_dispatch_3855).
param(p_value_4263, 1, m_set_no_compile_3856).
param(p_value_4264, 1, m_set_flag_3847).
param(p_mask_4265, 2, m_set_flag_3847).
assign(f_bitset_4237, p_mask_4265, line(jsdoc_info_1, 436)).
return(jsdoc_info_1_expr6, m_is_constructor_1070, line(jsdoc_info_1, 470)).
method_invoc(jsdoc_info_1_expr6, m_get_flag_3860, line(jsdoc_info_1, 470)).
argument(f_mask_constructor_4266, 1, jsdoc_info_1_expr6).
return(jsdoc_info_1_expr7, m_makes_structs_1071, line(jsdoc_info_1, 478)).
method_invoc(jsdoc_info_1_expr7, m_get_flag_3860, line(jsdoc_info_1, 478)).
argument(f_mask_struct_4267, 1, jsdoc_info_1_expr7).
return(jsdoc_info_1_expr8, m_makes_dicts_1072, line(jsdoc_info_1, 486)).
method_invoc(jsdoc_info_1_expr8, m_get_flag_3860, line(jsdoc_info_1, 486)).
argument(f_mask_dict_4268, 1, jsdoc_info_1_expr8).
return(jsdoc_info_1_expr9, m_is_no_type_check_1779, line(jsdoc_info_1, 511)).
method_invoc(jsdoc_info_1_expr9, m_get_flag_3860, line(jsdoc_info_1, 511)).
argument(f_mask_nocheck_4269, 1, jsdoc_info_1_expr9).
return(jsdoc_info_1_expr10, m_is_interface_1073, line(jsdoc_info_1, 551)).
method_invoc(jsdoc_info_1_expr10, m_get_flag_3860, line(jsdoc_info_1, 551)).
argument(f_mask_interface_4254, 1, jsdoc_info_1_expr10).
return(jsdoc_info_1_expr11, m_is_externs_3873, line(jsdoc_info_1, 607)).
method_invoc(jsdoc_info_1_expr11, m_get_flag_3860, line(jsdoc_info_1, 607)).
argument(f_mask_externs_4270, 1, jsdoc_info_1_expr11).
return(jsdoc_info_1_expr12, m_is_no_compile_3875, line(jsdoc_info_1, 623)).
method_invoc(jsdoc_info_1_expr12, m_get_flag_3860, line(jsdoc_info_1, 623)).
argument(f_mask_nocompile_4271, 1, jsdoc_info_1_expr12).
param(p_mask_4272, 1, m_get_flag_3860).
return(jsdoc_info_1_expr13, m_get_flag_3860, line(jsdoc_info_1, 649)).
assign(jsdoc_info_1_expr14, jsdoc_info_1_expr15, line(jsdoc_info_1, 649)).
param(p_visibility_4273, 1, m_set_visibility_3877).
assign(f_visibility_4236, p_visibility_4273, line(jsdoc_info_1, 654)).
assign(f_info_4233, jsdoc_info_1_expr21, line(jsdoc_info_1, 659)).
method_invoc(jsdoc_info_1_expr21, m_lazily_initialized_info_3879, line(jsdoc_info_1, 659)).
return(jsdoc_info_1_literal24, m_lazy_init_documentation_3880, line(jsdoc_info_1, 669)).
method_invoc(jsdoc_info_1_expr24, m_lazy_init_documentation_3880, line(jsdoc_info_1, 684)).
return(jsdoc_info_1_literal25, m_add_marker_3881, line(jsdoc_info_1, 685)).
param(p_reason_4274, 1, m_set_deprecation_reason_3882).
param(p_suppression_4275, 1, m_add_suppression_3883).
param(p_suppressions_4276, 1, m_set_suppressions_3884).
param(p_modifies_4277, 1, m_add_modifies_3885).
param(p_modifies_4278, 1, m_set_modifies_3886).
param(p_version_4279, 1, m_document_version_3887).
param(p_reference_4280, 1, m_document_reference_3888).
param(p_author_4281, 1, m_document_author_3889).
param(p_type_4282, 1, m_document_throws_3890).
param(p_throws_description_4283, 2, m_document_throws_3890).
param(p_parameter_4284, 1, m_document_param_3891).
param(p_description_4285, 2, m_document_param_3891).
param(p_description_4286, 1, m_document_block_3892).
param(p_description_4287, 1, m_document_file_overview_3893).
param(p_description_4288, 1, m_document_return_3894).
param(p_js_type_4289, 1, m_declare_param_3895).
param(p_parameter_4290, 2, m_declare_param_3895).
param(p_template_type_names_4291, 1, m_declare_template_type_names_3896).
param(p_js_type_4292, 1, m_declare_throws_3897).
return(f_visibility_4236, m_get_visibility_3898, line(jsdoc_info_1, 977)).
param(p_parameter_4293, 1, m_get_parameter_type_3899).
param(p_parameter_4294, 1, m_has_parameter_3900).
param(p_parameter_4295, 1, m_has_parameter_type_3901).
ref(f_info_4233, q_parameters_111, line(jsdoc_info_1, 1021)).
return(jsdoc_info_1_expr28, m_get_parameter_names_3902, line(jsdoc_info_1, 1022)).
method_invoc(jsdoc_info_1_expr28, m_of_3903, line(jsdoc_info_1, 1022)).
ref(t_immutable_set_13, jsdoc_info_1_expr28, line(jsdoc_info_1, 1022)).
param(p_type_4296, 1, m_set_type_3905).
param(p_type_4297, 1, m_set_return_type_3906).
param(p_type_4298, 1, m_set_enum_parameter_type_3907).
param(p_type_4299, 1, m_set_typedef_type_3908).
param(p_type_4300, 1, m_set_type_3909).
param(p_mask_4301, 2, m_set_type_3909).
return(jsdoc_info_1_expr29, m_has_type_3022, line(jsdoc_info_1, 1078)).
method_invoc(jsdoc_info_1_expr29, m_has_type_3911, line(jsdoc_info_1, 1078)).
argument(f_typefield_type_4302, 1, jsdoc_info_1_expr29).
return(jsdoc_info_1_expr30, m_has_enum_parameter_type_3912, line(jsdoc_info_1, 1086)).
method_invoc(jsdoc_info_1_expr30, m_has_type_3911, line(jsdoc_info_1, 1086)).
argument(f_typefield_enum_4303, 1, jsdoc_info_1_expr30).
return(jsdoc_info_1_expr31, m_has_typedef_type_3913, line(jsdoc_info_1, 1094)).
method_invoc(jsdoc_info_1_expr31, m_has_type_3911, line(jsdoc_info_1, 1094)).
argument(f_typefield_typedef_4304, 1, jsdoc_info_1_expr31).
return(jsdoc_info_1_expr32, m_has_return_type_1068, line(jsdoc_info_1, 1102)).
method_invoc(jsdoc_info_1_expr32, m_has_type_3911, line(jsdoc_info_1, 1102)).
argument(f_typefield_return_4305, 1, jsdoc_info_1_expr32).
param(p_mask_4306, 1, m_has_type_3911).
return(jsdoc_info_1_expr33, m_has_type_3911, line(jsdoc_info_1, 1106)).
assign(jsdoc_info_1_expr34, jsdoc_info_1_expr35, line(jsdoc_info_1, 1106)).
param(p_typefield_4308, 1, m_get_type_3918).
param(p_type_4309, 1, m_set_this_type_3920).
return(jsdoc_info_1_expr36, m_has_this_type_1080, line(jsdoc_info_1, 1164)).
param(p_type_4310, 1, m_set_base_type_3921).
return(jsdoc_info_1_expr37, m_get_base_type_3922, line(jsdoc_info_1, 1176)).
cond_expr(jsdoc_info_1_expr38, jsdoc_info_1_literal29, q_base_type_112, line(jsdoc_info_1, 1176)).
assign(jsdoc_info_1_expr38, jsdoc_info_1_expr39, line(jsdoc_info_1, 1176)).
ref(f_info_4233, q_base_type_112, line(jsdoc_info_1, 1176)).
param(p_desc_4311, 1, m_set_description_3924).
param(p_meaning_4312, 1, m_set_meaning_3926).
param(p_name_4313, 1, m_set_lends_name_3928).
param(p_license_4314, 1, m_set_license_3930).
return(jsdoc_info_1_expr40, m_has_base_type_1074, line(jsdoc_info_1, 1257)).
method_invoc(jsdoc_info_1_expr41, m_get_base_type_3922, line(jsdoc_info_1, 1257)).
param(p_interface_name_4315, 1, m_add_implemented_interface_3932).
ref(f_info_4233, q_implemented_interfaces_113, line(jsdoc_info_1, 1294)).
return(jsdoc_info_1_literal34, m_get_implemented_interface_count_1075, line(jsdoc_info_1, 1295)).
param(p_type_4316, 1, m_add_extended_interface_3934).
method_invoc(jsdoc_info_1_expr45, m_lazy_init_info_3878, line(jsdoc_info_1, 1306)).
ref(f_info_4233, q_extended_interfaces_114, line(jsdoc_info_1, 1307)).
assign(q_extended_interfaces_115, jsdoc_info_1_expr48, line(jsdoc_info_1, 1308)).
ref(f_info_4233, q_extended_interfaces_115, line(jsdoc_info_1, 1308)).
method_invoc(jsdoc_info_1_expr48, m_new_array_list_with_capacity_3019, line(jsdoc_info_1, 1308)).
argument(jsdoc_info_1_literal36, 1, jsdoc_info_1_expr48).
ref(t_lists_22, jsdoc_info_1_expr48, line(jsdoc_info_1, 1308)).
method_invoc(jsdoc_info_1_expr49, m_contains_3935, line(jsdoc_info_1, 1310)).
argument(p_type_4316, 1, jsdoc_info_1_expr49).
ref(f_extended_interfaces_4214, jsdoc_info_1_expr49, line(jsdoc_info_1, 1310)).
ref(f_info_4233, q_extended_interfaces_115, line(jsdoc_info_1, 1310)).
method_invoc(jsdoc_info_1_expr50, m_add_330, line(jsdoc_info_1, 1313)).
argument(p_type_4316, 1, jsdoc_info_1_expr50).
ref(f_extended_interfaces_4214, jsdoc_info_1_expr50, line(jsdoc_info_1, 1313)).
ref(f_info_4233, q_extended_interfaces_115, line(jsdoc_info_1, 1313)).
return(jsdoc_info_1_literal37, m_add_extended_interface_3934, line(jsdoc_info_1, 1314)).
ref(f_info_4233, q_extended_interfaces_115, line(jsdoc_info_1, 1324)).
return(jsdoc_info_1_expr54, m_get_extended_interfaces_1076, line(jsdoc_info_1, 1327)).
method_invoc(jsdoc_info_1_expr54, m_unmodifiable_list_3283, line(jsdoc_info_1, 1327)).
argument(q_extended_interfaces_115, 1, jsdoc_info_1_expr54).
ref(t_collections_27, jsdoc_info_1_expr54, line(jsdoc_info_1, 1327)).
ref(f_info_4233, q_extended_interfaces_115, line(jsdoc_info_1, 1327)).
param(p_name_4317, 1, m_has_description_for_parameter_3940).
param(p_name_4318, 1, m_get_description_for_parameter_3941).
return(jsdoc_info_1_expr55, m_has_file_overview_3947, line(jsdoc_info_1, 1426)).
method_invoc(jsdoc_info_1_expr55, m_get_flag_3860, line(jsdoc_info_1, 1426)).
argument(f_mask_fileoverview_4319, 1, jsdoc_info_1_expr55).
param(p_node_4320, 1, m_set_associated_node_3950).
assign(f_associated_node_4235, p_node_4320, line(jsdoc_info_1, 1448)).
ref(f_info_4233, q_template_type_names_115, line(jsdoc_info_1, 1465)).
return(jsdoc_info_1_expr62, m_get_template_type_names_1089, line(jsdoc_info_1, 1466)).
method_invoc(jsdoc_info_1_expr62, m_of_310, line(jsdoc_info_1, 1466)).
ref(t_immutable_list_14, jsdoc_info_1_expr62, line(jsdoc_info_1, 1466)).
param(p_source_comment_4321, 1, m_set_original_comment_string_3956).

%node_util_1 - com.google.javascript.jscomp.NodeUtil
assign(f_max_positive_integer_number_1837, node_util_1_expr1, line(node_util_1, 50)).
assign(node_util_1_expr1, node_util_1_expr2, line(node_util_1, 50)).
method_invoc(node_util_1_expr2, m_pow_1329, line(node_util_1, 50)).
argument(node_util_1_literal1, 1, node_util_1_expr2).
argument(node_util_1_literal2, 2, node_util_1_expr2).
ref(t_math_52, node_util_1_expr2, line(node_util_1, 50)).
assign(f_constructors_without_side_effects_1838, node_util_1_expr3, line(node_util_1, 57)).
param(p_n_1839, 1, m_get_impure_boolean_value_1331).
param(p_n_1840, 1, m_get_pure_boolean_value_1332).
param(p_n_1841, 1, m_get_string_value_1333).
param(p_value_1842, 1, m_get_string_value_1334).
param(p_n_1843, 1, m_get_array_element_string_value_1335).
param(p_literal_1844, 1, m_array_to_string_1336).
param(p_n_1845, 1, m_get_number_value_1337).
param(p_raw_js_string_1846, 1, m_get_string_number_value_1338).
param(p_s_1847, 1, m_trim_js_white_space_1339).
param(p_c_1848, 1, m_is_str_white_space_char_1340).
param(p_n_1849, 1, m_get_function_name_1341).
param(p_n_1850, 1, m_get_nearest_function_name_1342).
param(p_n_1851, 1, m_is_immutable_value_1343).
param(p_n_1852, 1, m_is_symmetric_operation_1344).
param(p_n_1853, 1, m_is_relational_operation_1345).
param(p_type_1854, 1, m_get_inverse_operator_1346).
param(p_n_1855, 1, m_is_literal_value_1347).
param(p_include_functions_1856, 2, m_is_literal_value_1347).
param(p_val_1857, 1, m_is_valid_define_value_1348).
param(p_defines_1858, 2, m_is_valid_define_value_1348).
param(p_block_1859, 1, m_is_empty_block_1349).
param(p_n_1860, 1, m_is_simple_operator_1350).
param(p_type_1861, 1, m_is_simple_operator_type_1351).
param(p_child_1862, 1, m_new_expr_1352).
param(p_n_1863, 1, m_may_effect_mutable_state_1353).
param(p_n_1864, 1, m_may_effect_mutable_state_1354).
param(p_compiler_1865, 2, m_may_effect_mutable_state_1354).
param(p_n_1866, 1, m_may_have_side_effects_1355).
param(p_n_1867, 1, m_may_have_side_effects_1356).
param(p_compiler_1868, 2, m_may_have_side_effects_1356).
param(p_n_1869, 1, m_check_for_state_change_helper_1357).
param(p_check_for_new_objects_1870, 2, m_check_for_state_change_helper_1357).
param(p_compiler_1871, 3, m_check_for_state_change_helper_1357).
param(p_call_node_1872, 1, m_constructor_call_has_side_effects_1358).
param(p_call_node_1873, 1, m_constructor_call_has_side_effects_1359).
param(p_compiler_1874, 2, m_constructor_call_has_side_effects_1359).
assign(f_builtin_functions_without_sideeffects_1875, node_util_1_expr4, line(node_util_1, 972)).
assign(f_object_methods_without_sideeffects_1876, node_util_1_expr5, line(node_util_1, 975)).
assign(f_regexp_methods_1877, node_util_1_expr6, line(node_util_1, 977)).
assign(f_string_regexp_methods_1878, node_util_1_expr7, line(node_util_1, 979)).
param(p_call_node_1879, 1, m_function_call_has_side_effects_1360).
param(p_call_node_1880, 1, m_function_call_has_side_effects_1361).
param(p_compiler_1881, 2, m_function_call_has_side_effects_1361).
param(p_n_1882, 1, m_call_has_local_result_1362).
param(p_n_1883, 1, m_new_has_local_result_1363).
param(p_n_1884, 1, m_node_type_may_have_side_effects_1364).
param(p_n_1885, 1, m_node_type_may_have_side_effects_1365).
param(p_compiler_1886, 2, m_node_type_may_have_side_effects_1365).
param(p_n_1887, 1, m_can_be_side_effected_1366).
param(p_n_1888, 1, m_can_be_side_effected_1367).
param(p_known_constants_1889, 2, m_can_be_side_effected_1367).
param(p_type_1890, 1, m_precedence_1368).
param(p_n_1891, 1, m_is_undefined_1369).
param(p_n_1892, 1, m_is_null_or_undefined_1370).
param(p_n_1893, 1, m_all_results_match_1371).
param(p_p_1894, 2, m_all_results_match_1371).
param(p_n_1895, 1, m_any_results_match_1372).
param(p_p_1896, 2, m_any_results_match_1372).
param(p_n_1897, 1, m_apply_1373).
assign(f_numberic_result_predicate_1898, node_util_1_expr8, line(node_util_1, 1317)).
param(p_n_1899, 1, m_is_numeric_result_1374).
param(p_n_1900, 1, m_is_numeric_result_helper_1375).
param(p_n_1901, 1, m_apply_1376).
assign(f_boolean_result_predicate_1902, node_util_1_expr9, line(node_util_1, 1370)).
param(p_n_1903, 1, m_is_boolean_result_1377).
param(p_n_1904, 1, m_is_boolean_result_helper_1378).
param(p_n_1905, 1, m_apply_1379).
assign(f_may_be_string_predicate_1906, node_util_1_expr10, line(node_util_1, 1416)).
param(p_n_1907, 1, m_may_be_string_1380).
param(p_n_1908, 1, m_may_be_string_1381).
param(p_recurse_1909, 2, m_may_be_string_1381).
param(p_n_1910, 1, m_may_be_string_helper_1382).
param(p_type_1911, 1, m_is_associative_1383).
param(p_type_1912, 1, m_is_commutative_1384).
param(p_n_1913, 1, m_is_assignment_op_1385).
param(p_n_1914, 1, m_get_op_from_assignment_op_1386).
param(p_n_1915, 1, m_contains_function_1387).
param(p_n_1916, 1, m_references_this_1388).
param(p_n_1917, 1, m_is_get_1389).
return(node_util_1_expr11, m_is_get_1389, line(node_util_1, 1545)).
method_invoc(node_util_1_expr12, m_is_get_prop_1390, line(node_util_1, 1545)).
ref(p_n_1917, node_util_1_expr12, line(node_util_1, 1545)).
method_invoc(node_util_1_expr13, m_is_get_elem_1391, line(node_util_1, 1545)).
ref(p_n_1917, node_util_1_expr13, line(node_util_1, 1545)).
param(p_n_1918, 1, m_is_var_declaration_1392).
param(p_n_1919, 1, m_get_assigned_value_1393).
param(p_n_1920, 1, m_is_expr_assign_1394).
param(p_n_1921, 1, m_is_expr_call_1395).
param(p_n_1922, 1, m_is_for_in_1396).
param(p_n_1923, 1, m_is_loop_structure_1397).
param(p_n_1924, 1, m_get_loop_code_block_1398).
param(p_n_1925, 1, m_is_within_loop_1399).
param(p_n_1926, 1, m_is_control_structure_1279).
method_invoc(node_util_1_expr14, m_get_type_824, line(node_util_1, 1660)).
ref(p_n_1926, node_util_1_expr14, line(node_util_1, 1660)).
return(node_util_1_literal3, m_is_control_structure_1279, line(node_util_1, 1674)).
param(p_parent_1927, 1, m_is_control_structure_code_block_1400).
param(p_n_1928, 2, m_is_control_structure_code_block_1400).
param(p_n_1929, 1, m_get_condition_expression_1401).
param(p_n_1930, 1, m_is_statement_block_1402).
return(node_util_1_expr15, m_is_statement_block_1402, line(node_util_1, 1738)).
method_invoc(node_util_1_expr16, m_is_script_537, line(node_util_1, 1738)).
ref(p_n_1930, node_util_1_expr16, line(node_util_1, 1738)).
method_invoc(node_util_1_expr17, m_is_block_841, line(node_util_1, 1738)).
ref(p_n_1930, node_util_1_expr17, line(node_util_1, 1738)).
param(p_n_1931, 1, m_is_statement_1403).
return(node_util_1_expr18, m_is_statement_1403, line(node_util_1, 1745)).
method_invoc(node_util_1_expr18, m_is_statement_parent_1404, line(node_util_1, 1745)).
argument(node_util_1_expr19, 1, node_util_1_expr18).
method_invoc(node_util_1_expr19, m_get_parent_840, line(node_util_1, 1745)).
ref(p_n_1931, node_util_1_expr19, line(node_util_1, 1745)).
param(p_parent_1932, 1, m_is_statement_parent_1404).
method_invoc(node_util_1_expr20, m_check_state_536, line(node_util_1, 1752)).
argument(node_util_1_expr21, 1, node_util_1_expr20).
ref(t_preconditions_19, node_util_1_expr20, line(node_util_1, 1752)).
method_invoc(node_util_1_expr22, m_get_type_824, line(node_util_1, 1753)).
ref(p_parent_1932, node_util_1_expr22, line(node_util_1, 1753)).
return(node_util_1_literal5, m_is_statement_parent_1404, line(node_util_1, 1757)).
return(node_util_1_literal6, m_is_statement_parent_1404, line(node_util_1, 1759)).
param(p_n_1933, 1, m_is_switch_case_1405).
param(p_n_1934, 1, m_is_reference_name_1406).
param(p_parent_1935, 1, m_is_try_finally_node_1407).
param(p_child_1936, 2, m_is_try_finally_node_1407).
param(p_n_1937, 1, m_is_try_catch_node_container_1408).
param(p_parent_1938, 1, m_remove_child_1409).
param(p_node_1939, 2, m_remove_child_1409).
param(p_try_node_1940, 1, m_maybe_add_finally_1410).
param(p_block_1941, 1, m_try_merge_block_1411).
param(p_node_1942, 1, m_is_call_or_new_1412).
return(node_util_1_expr23, m_is_call_or_new_1412, line(node_util_1, 1883)).
method_invoc(node_util_1_expr24, m_is_call_1413, line(node_util_1, 1883)).
ref(p_node_1942, node_util_1_expr24, line(node_util_1, 1883)).
method_invoc(node_util_1_expr25, m_is_new_1414, line(node_util_1, 1883)).
ref(p_node_1942, node_util_1_expr25, line(node_util_1, 1883)).
param(p_fn_1943, 1, m_get_function_body_1415).
param(p_n_1944, 1, m_is_function_declaration_1416).
return(node_util_1_expr26, m_is_function_declaration_1416, line(node_util_1, 1900)).
method_invoc(node_util_1_expr27, m_is_function_842, line(node_util_1, 1900)).
ref(p_n_1944, node_util_1_expr27, line(node_util_1, 1900)).
method_invoc(node_util_1_expr28, m_is_statement_1403, line(node_util_1, 1900)).
argument(p_n_1944, 1, node_util_1_expr28).
param(p_n_1945, 1, m_is_hoisted_function_declaration_1417).
return(node_util_1_expr29, m_is_hoisted_function_declaration_1417, line(node_util_1, 1909)).
method_invoc(node_util_1_expr30, m_is_function_declaration_1416, line(node_util_1, 1909)).
argument(p_n_1945, 1, node_util_1_expr30).
param(p_n_1946, 1, m_is_function_expression_1418).
return(node_util_1_expr31, m_is_function_expression_1418, line(node_util_1, 1938)).
method_invoc(node_util_1_expr32, m_is_function_842, line(node_util_1, 1938)).
ref(p_n_1946, node_util_1_expr32, line(node_util_1, 1938)).
method_invoc(node_util_1_expr34, m_is_statement_1403, line(node_util_1, 1938)).
argument(p_n_1946, 1, node_util_1_expr34).
param(p_n_1947, 1, m_is_bleeding_function_name_1419).
param(p_node_1948, 1, m_is_empty_function_expression_1420).
param(p_function_1949, 1, m_is_var_args_function_1421).
param(p_call_node_1950, 1, m_is_object_call_method_1422).
param(p_method_name_1951, 2, m_is_object_call_method_1422).
param(p_call_node_1952, 1, m_is_function_object_call_1423).
param(p_call_node_1953, 1, m_is_function_object_apply_1424).
param(p_n_1954, 1, m_is_var_or_simple_assign_lhs_1425).
param(p_parent_1955, 2, m_is_var_or_simple_assign_lhs_1425).
param(p_n_1956, 1, m_is_lvalue_1426).
param(p_node_1957, 1, m_is_object_lit_key_1427).
param(p_parent_1958, 2, m_is_object_lit_key_1427).
method_invoc(node_util_1_expr35, m_get_type_824, line(node_util_1, 2063)).
ref(p_node_1957, node_util_1_expr35, line(node_util_1, 2063)).
return(node_util_1_literal7, m_is_object_lit_key_1427, line(node_util_1, 2069)).
param(p_key_1959, 1, m_get_object_lit_key_name_1428).
param(p_key_1960, 1, m_get_object_lit_key_type_from_value_type_1429).
param(p_value_type_1961, 2, m_get_object_lit_key_type_from_value_type_1429).
param(p_node_1962, 1, m_is_get_or_set_key_1430).
param(p_operator_1963, 1, m_op_to_str_1431).
param(p_operator_1964, 1, m_op_to_str_no_fail_1432).
param(p_node_1965, 1, m_contains_type_1433).
param(p_type_1966, 2, m_contains_type_1433).
param(p_traverse_children_pred_1967, 3, m_contains_type_1433).
param(p_node_1968, 1, m_contains_type_1434).
param(p_type_1969, 2, m_contains_type_1434).
param(p_branch_1970, 1, m_redeclare_vars_inside_branch_1435).
param(p_source_1971, 1, m_copy_name_annotations_1436).
param(p_destination_1972, 2, m_copy_name_annotations_1436).
param(p_n_1973, 1, m_get_adding_root_1437).
param(p_convention_1974, 1, m_new_qualified_name_node_1438).
param(p_name_1975, 2, m_new_qualified_name_node_1438).
param(p_convention_1976, 1, m_new_qualified_name_node_1439).
param(p_name_1977, 2, m_new_qualified_name_node_1439).
param(p_basis_node_1978, 3, m_new_qualified_name_node_1439).
param(p_original_name_1979, 4, m_new_qualified_name_node_1439).
param(p_q_name_1980, 1, m_get_root_of_qualified_name_1440).
param(p_node_1981, 1, m_set_debug_information_1441).
param(p_basis_node_1982, 2, m_set_debug_information_1441).
param(p_original_name_1983, 3, m_set_debug_information_1441).
param(p_convention_1984, 1, m_new_name_1442).
param(p_name_1985, 2, m_new_name_1442).
param(p_convention_1986, 1, m_new_name_1443).
param(p_name_1987, 2, m_new_name_1443).
param(p_srcref_1988, 3, m_new_name_1443).
param(p_convention_1989, 1, m_new_name_1444).
param(p_name_1990, 2, m_new_name_1444).
param(p_basis_node_1991, 3, m_new_name_1444).
param(p_original_name_1992, 4, m_new_name_1444).
param(p_s_1993, 1, m_is_latin_1445).
param(p_name_1994, 1, m_is_valid_simple_name_1446).
param(p_name_1995, 1, m_is_valid_qualified_name_1447).
param(p_name_1996, 1, m_is_valid_property_name_1448).
param(p_n_1997, 1, m_visit_1449).
param(p_root_1998, 1, m_get_vars_declared_in_branch_1450).
param(p_n_1999, 1, m_is_prototype_property_declaration_1451).
param(p_n_2000, 1, m_is_prototype_property_1452).
param(p_q_name_2001, 1, m_get_prototype_class_name_1453).
param(p_q_name_2002, 1, m_get_prototype_property_name_1454).
param(p_src_reference_node_2003, 1, m_new_undefined_node_1455).
param(p_name_2004, 1, m_new_var_node_1456).
param(p_value_2005, 2, m_new_var_node_1456).
param(p_name_2006, 1, m_match_name_node_1457).
param(p_n_2007, 1, m_apply_1458).
param(p_type_2008, 1, m_match_node_type_1459).
param(p_n_2009, 1, m_apply_1460).
param(p_n_2010, 1, m_apply_1461).
param(p_n_2011, 1, m_apply_1462).
assign(f_match_not_function_2012, node_util_1_expr36, line(node_util_1, 2626)).
method_invoc(node_util_1_expr36, m_match_not_function_1463, line(node_util_1, 2626)).
param(p_n_2013, 1, m_apply_1464).
param(p_node_2014, 1, m_get_node_type_reference_count_1465).
param(p_type_2015, 2, m_get_node_type_reference_count_1465).
param(p_traverse_children_pred_2016, 3, m_get_node_type_reference_count_1465).
param(p_node_2017, 1, m_is_name_referenced_1466).
param(p_name_2018, 2, m_is_name_referenced_1466).
param(p_traverse_children_pred_2019, 3, m_is_name_referenced_1466).
param(p_node_2020, 1, m_is_name_referenced_1467).
param(p_name_2021, 2, m_is_name_referenced_1467).
param(p_node_2022, 1, m_get_name_reference_count_1468).
param(p_name_2023, 2, m_get_name_reference_count_1468).
param(p_node_2024, 1, m_has_1469).
param(p_pred_2025, 2, m_has_1469).
param(p_traverse_children_pred_2026, 3, m_has_1469).
param(p_n_2027, 1, m_get_count_1470).
param(p_pred_2028, 2, m_get_count_1470).
param(p_traverse_children_pred_2029, 3, m_get_count_1470).
param(p_node_2030, 1, m_visit_1471).
param(p_node_2031, 1, m_visit_pre_order_1472).
param(p_visitor_2032, 2, m_visit_pre_order_1472).
param(p_traverse_children_pred_2033, 3, m_visit_pre_order_1472).
param(p_node_2034, 1, m_visit_post_order_1473).
param(p_visitor_2035, 2, m_visit_post_order_1473).
param(p_traverse_children_pred_2036, 3, m_visit_post_order_1473).
param(p_n_2037, 1, m_has_finally_1474).
param(p_n_2038, 1, m_get_catch_block_1475).
param(p_n_2039, 1, m_has_catch_handler_1476).
param(p_fn_node_2040, 1, m_get_function_parameters_1477).
param(p_node_2041, 1, m_is_constant_name_1478).
param(p_convention_2042, 1, m_is_constant_by_convention_1479).
param(p_node_2043, 2, m_is_constant_by_convention_1479).
param(p_parent_2044, 3, m_is_constant_by_convention_1479).
param(p_n_2045, 1, m_get_function_jsdoc_info_1480).
param(p_n_2046, 1, m_get_source_name_1481).
assign(v_source_name_2047, node_util_1_literal8, line(node_util_1, 2854)).
assign(v_source_name_2047, node_util_1_expr41, line(node_util_1, 2856)).
method_invoc(node_util_1_expr41, m_get_source_file_name_1324, line(node_util_1, 2856)).
ref(p_n_2046, node_util_1_expr41, line(node_util_1, 2856)).
assign(p_n_2046, node_util_1_expr43, line(node_util_1, 2857)).
method_invoc(node_util_1_expr43, m_get_parent_840, line(node_util_1, 2857)).
ref(p_n_2046, node_util_1_expr43, line(node_util_1, 2857)).
return(v_source_name_2047, m_get_source_name_1481, line(node_util_1, 2859)).
param(p_n_2048, 1, m_get_source_file_1482).
param(p_n_2049, 1, m_get_input_id_1289).
method_invoc(node_util_1_expr47, m_is_script_537, line(node_util_1, 2880)).
ref(p_n_2049, node_util_1_expr47, line(node_util_1, 2880)).
assign(p_n_2049, node_util_1_expr49, line(node_util_1, 2881)).
method_invoc(node_util_1_expr49, m_get_parent_840, line(node_util_1, 2881)).
ref(p_n_2049, node_util_1_expr49, line(node_util_1, 2881)).
return(node_util_1_expr50, m_get_input_id_1289, line(node_util_1, 2884)).
cond_expr(node_util_1_expr51, node_util_1_expr52, node_util_1_literal12, line(node_util_1, 2884)).
assign(node_util_1_expr51, node_util_1_expr53, line(node_util_1, 2884)).
method_invoc(node_util_1_expr55, m_is_script_537, line(node_util_1, 2884)).
ref(p_n_2049, node_util_1_expr55, line(node_util_1, 2884)).
method_invoc(node_util_1_expr52, m_get_input_id_539, line(node_util_1, 2884)).
ref(p_n_2049, node_util_1_expr52, line(node_util_1, 2884)).
param(p_call_target_2050, 1, m_new_call_node_1483).
param(p_parameters_2051, 2, m_new_call_node_1483).
param(p_value_2052, 1, m_evaluates_to_local_value_1484).
param(p_value_2053, 1, m_evaluates_to_local_value_1485).
param(p_locals_2054, 2, m_evaluates_to_local_value_1485).
param(p_first_2055, 1, m_get_nth_sibling_1486).
param(p_index_2056, 2, m_get_nth_sibling_1486).
param(p_function_2057, 1, m_get_argument_for_function_1487).
param(p_index_2058, 2, m_get_argument_for_function_1487).
param(p_call_2059, 1, m_get_argument_for_call_or_new_1488).
param(p_index_2060, 2, m_get_argument_for_call_or_new_1488).
param(p_target_2061, 1, m_is_call_or_new_target_1489).
assign(v_parent_2062, node_util_1_expr56, line(node_util_1, 3019)).
method_invoc(node_util_1_expr56, m_get_parent_840, line(node_util_1, 3019)).
ref(p_target_2061, node_util_1_expr56, line(node_util_1, 3019)).
return(node_util_1_expr57, m_is_call_or_new_target_1489, line(node_util_1, 3020)).
param(p_call_2063, 1, m_is_to_string_method_call_1490).
param(p_n_2064, 1, m_get_best_jsdoc_info_1491).
assign(v_info_2065, node_util_1_expr60, line(node_util_1, 3036)).
method_invoc(node_util_1_expr60, m_get_jsdoc_info_1492, line(node_util_1, 3036)).
ref(p_n_2064, node_util_1_expr60, line(node_util_1, 3036)).
return(v_info_2065, m_get_best_jsdoc_info_1491, line(node_util_1, 3062)).
param(p_n_2066, 1, m_get_best_lvalue_1493).
assign(v_parent_2067, node_util_1_expr62, line(node_util_1, 3067)).
method_invoc(node_util_1_expr62, m_get_parent_840, line(node_util_1, 3067)).
ref(p_n_2066, node_util_1_expr62, line(node_util_1, 3067)).
assign(v_is_function_declaration_2068, node_util_1_expr63, line(node_util_1, 3068)).
method_invoc(node_util_1_expr63, m_is_function_declaration_1416, line(node_util_1, 3068)).
argument(p_n_2066, 1, node_util_1_expr63).
return(node_util_1_expr64, m_get_best_lvalue_1493, line(node_util_1, 3070)).
method_invoc(node_util_1_expr64, m_get_first_child_828, line(node_util_1, 3070)).
ref(p_n_2066, node_util_1_expr64, line(node_util_1, 3070)).
param(p_n_2069, 1, m_get_rvalue_of_lvalue_1494).
assign(v_parent_2070, node_util_1_expr65, line(node_util_1, 3091)).
method_invoc(node_util_1_expr65, m_get_parent_840, line(node_util_1, 3091)).
ref(p_n_2069, node_util_1_expr65, line(node_util_1, 3091)).
method_invoc(node_util_1_expr66, m_get_type_824, line(node_util_1, 3092)).
ref(v_parent_2070, node_util_1_expr66, line(node_util_1, 3092)).
return(v_parent_2070, m_get_rvalue_of_lvalue_1494, line(node_util_1, 3098)).
param(p_l_value_2071, 1, m_get_best_lvalue_owner_1495).
method_invoc(node_util_1_expr70, m_get_parent_840, line(node_util_1, 3105)).
ref(p_l_value_2071, node_util_1_expr70, line(node_util_1, 3105)).
method_invoc(node_util_1_expr71, m_is_object_lit_key_1427, line(node_util_1, 3108)).
argument(p_l_value_2071, 1, node_util_1_expr71).
argument(node_util_1_expr72, 2, node_util_1_expr71).
method_invoc(node_util_1_expr72, m_get_parent_840, line(node_util_1, 3108)).
ref(p_l_value_2071, node_util_1_expr72, line(node_util_1, 3108)).
method_invoc(node_util_1_expr73, m_is_get_1389, line(node_util_1, 3110)).
argument(p_l_value_2071, 1, node_util_1_expr73).
return(node_util_1_literal18, m_get_best_lvalue_owner_1495, line(node_util_1, 3114)).
param(p_l_value_2072, 1, m_get_best_lvalue_name_1496).
method_invoc(node_util_1_expr77, m_get_parent_840, line(node_util_1, 3119)).
ref(p_l_value_2072, node_util_1_expr77, line(node_util_1, 3119)).
return(node_util_1_literal21, m_get_best_lvalue_name_1496, line(node_util_1, 3120)).
method_invoc(node_util_1_expr78, m_is_object_lit_key_1427, line(node_util_1, 3122)).
argument(p_l_value_2072, 1, node_util_1_expr78).
argument(node_util_1_expr79, 2, node_util_1_expr78).
method_invoc(node_util_1_expr79, m_get_parent_840, line(node_util_1, 3122)).
ref(p_l_value_2072, node_util_1_expr79, line(node_util_1, 3122)).
return(node_util_1_expr80, m_get_best_lvalue_name_1496, line(node_util_1, 3132)).
method_invoc(node_util_1_expr80, m_get_qualified_name_1497, line(node_util_1, 3132)).
ref(p_l_value_2072, node_util_1_expr80, line(node_util_1, 3132)).
param(p_expr_2073, 1, m_is_expression_result_used_1498).
param(p_n_2074, 1, m_is_executed_exactly_once_1499).
param(p_value_2075, 1, m_boolean_node_1500).
param(p_value_2076, 1, m_number_node_1501).
param(p_srcref_2077, 2, m_number_node_1501).
param(p_n_2078, 1, m_is_na_n_1502).

%process_tweaks_1 - com.google.javascript.jscomp.ProcessTweaks
assign(f_id_matcher_2148, process_tweaks_1_expr1, line(process_tweaks_1, 56)).
method_invoc(process_tweaks_1_expr1, m_or_1543, line(process_tweaks_1, 56)).
argument(process_tweaks_1_expr2, 1, process_tweaks_1_expr1).
ref(process_tweaks_1_expr3, process_tweaks_1_expr1, line(process_tweaks_1, 56)).
method_invoc(process_tweaks_1_expr3, m_or_1543, line(process_tweaks_1, 56)).
argument(process_tweaks_1_expr4, 1, process_tweaks_1_expr3).
ref(process_tweaks_1_expr5, process_tweaks_1_expr3, line(process_tweaks_1, 56)).
method_invoc(process_tweaks_1_expr5, m_in_range_1544, line(process_tweaks_1, 56)).
argument(process_tweaks_1_literal1, 1, process_tweaks_1_expr5).
argument(process_tweaks_1_literal2, 2, process_tweaks_1_expr5).
ref(t_char_matcher_56, process_tweaks_1_expr5, line(process_tweaks_1, 56)).
assign(f_unknown_tweak_warning_2149, process_tweaks_1_expr6, line(process_tweaks_1, 60)).
assign(f_tweak_multiply_registered_error_2150, process_tweaks_1_expr7, line(process_tweaks_1, 65)).
assign(f_non_literal_tweak_id_error_2151, process_tweaks_1_expr8, line(process_tweaks_1, 70)).
assign(f_invalid_tweak_default_value_warning_2152, process_tweaks_1_expr9, line(process_tweaks_1, 75)).
assign(f_non_global_tweak_init_error_2153, process_tweaks_1_expr10, line(process_tweaks_1, 81)).
assign(f_tweak_override_after_registered_error_2154, process_tweaks_1_expr11, line(process_tweaks_1, 86)).
assign(f_tweak_wrong_getter_type_warning_2155, process_tweaks_1_expr12, line(process_tweaks_1, 92)).
assign(f_invalid_tweak_id_error_2156, process_tweaks_1_expr13, line(process_tweaks_1, 97)).
ref(t_token_51, q_true_60, line(process_tweaks_1, 107)).
ref(t_token_51, q_number_61, line(process_tweaks_1, 109)).
ref(t_token_51, q_string_62, line(process_tweaks_1, 110)).
param(p_name_2165, 1, m_tweak_function_1545).
method_invoc(process_tweaks_1_expr14, m_tweak_function_1546, line(process_tweaks_1, 124)).
argument(p_name_2165, 1, process_tweaks_1_expr14).
argument(process_tweaks_1_literal14, 2, process_tweaks_1_expr14).
argument(q_error_63, 3, process_tweaks_1_expr14).
argument(q_error_64, 4, process_tweaks_1_expr14).
argument(process_tweaks_1_literal15, 5, process_tweaks_1_expr14).
ref(t_token_51, q_error_63, line(process_tweaks_1, 124)).
ref(t_token_51, q_error_64, line(process_tweaks_1, 124)).
param(p_name_2167, 1, m_tweak_function_1547).
param(p_expected_type_name_2168, 2, m_tweak_function_1547).
param(p_valid_node_type_a_2169, 3, m_tweak_function_1547).
method_invoc(process_tweaks_1_expr15, m_tweak_function_1546, line(process_tweaks_1, 129)).
argument(p_name_2167, 1, process_tweaks_1_expr15).
argument(p_expected_type_name_2168, 2, process_tweaks_1_expr15).
argument(p_valid_node_type_a_2169, 3, process_tweaks_1_expr15).
argument(q_error_64, 4, process_tweaks_1_expr15).
argument(process_tweaks_1_literal16, 5, process_tweaks_1_expr15).
ref(t_token_51, q_error_64, line(process_tweaks_1, 129)).
param(p_name_2170, 1, m_tweak_function_1548).
param(p_expected_type_name_2171, 2, m_tweak_function_1548).
param(p_valid_node_type_a_2172, 3, m_tweak_function_1548).
param(p_valid_node_type_b_2173, 4, m_tweak_function_1548).
method_invoc(process_tweaks_1_expr16, m_tweak_function_1546, line(process_tweaks_1, 134)).
argument(p_name_2170, 1, process_tweaks_1_expr16).
argument(p_expected_type_name_2171, 2, process_tweaks_1_expr16).
argument(p_valid_node_type_a_2172, 3, process_tweaks_1_expr16).
argument(p_valid_node_type_b_2173, 4, process_tweaks_1_expr16).
argument(process_tweaks_1_literal17, 5, process_tweaks_1_expr16).
param(p_name_2174, 1, m_tweak_function_1549).
param(p_register_function_2175, 2, m_tweak_function_1549).
method_invoc(process_tweaks_1_expr17, m_tweak_function_1546, line(process_tweaks_1, 138)).
argument(p_name_2174, 1, process_tweaks_1_expr17).
argument(process_tweaks_1_literal18, 2, process_tweaks_1_expr17).
argument(q_error_64, 3, process_tweaks_1_expr17).
argument(q_error_64, 4, process_tweaks_1_expr17).
argument(p_register_function_2175, 5, process_tweaks_1_expr17).
ref(t_token_51, q_error_64, line(process_tweaks_1, 138)).
ref(t_token_51, q_error_64, line(process_tweaks_1, 138)).
param(p_name_2176, 1, m_tweak_function_1546).
param(p_expected_type_name_2177, 2, m_tweak_function_1546).
param(p_valid_node_type_a_2178, 3, m_tweak_function_1546).
param(p_valid_node_type_b_2179, 4, m_tweak_function_1546).
param(p_register_function_2180, 5, m_tweak_function_1546).
assign(f_name_2181, p_name_2176, line(process_tweaks_1, 144)).
assign(f_expected_type_name_2182, p_expected_type_name_2177, line(process_tweaks_1, 145)).
assign(f_valid_node_type_a_2183, p_valid_node_type_a_2178, line(process_tweaks_1, 146)).
assign(f_valid_node_type_b_2184, p_valid_node_type_b_2179, line(process_tweaks_1, 147)).
assign(f_register_function_2185, p_register_function_2180, line(process_tweaks_1, 148)).
param(p_type_2186, 1, m_is_valid_node_type_1550).
param(p_register_function_2187, 1, m_is_correct_register_function_1551).
return(f_name_2181, m_get_name_1553, line(process_tweaks_1, 165)).
assign(f_tweak_functions_map_2188, process_tweaks_1_expr34, line(process_tweaks_1, 188)).
method_invoc(process_tweaks_1_expr34, m_new_hash_map_422, line(process_tweaks_1, 188)).
ref(t_maps_17, process_tweaks_1_expr34, line(process_tweaks_1, 188)).
ref(process_tweaks_1_expr35, process_tweaks_1_stmt12, line(process_tweaks_1, 189)).
method_invoc(process_tweaks_1_expr35, m_values_1556, line(process_tweaks_1, 189)).
ref(t_tweak_function_57, process_tweaks_1_expr35, line(process_tweaks_1, 189)).
method_invoc(process_tweaks_1_expr36, m_put_395, line(process_tweaks_1, 190)).
argument(process_tweaks_1_expr37, 1, process_tweaks_1_expr36).
argument(v_func_2189, 2, process_tweaks_1_expr36).
ref(f_tweak_functions_map_2188, process_tweaks_1_expr36, line(process_tweaks_1, 190)).
method_invoc(process_tweaks_1_expr37, m_get_name_1553, line(process_tweaks_1, 190)).
ref(v_func_2189, process_tweaks_1_expr37, line(process_tweaks_1, 190)).
param(p_compiler_2190, 1, m_process_tweaks_1557).
param(p_strip_tweaks_2191, 2, m_process_tweaks_1557).
param(p_compiler_default_value_overrides_2192, 3, m_process_tweaks_1557).
param(p_externs_2193, 1, m_process_1558).
param(p_root_2194, 2, m_process_1558).
param(p_calls_2195, 1, m_replace_get_compiler_overrides_calls_1559).
param(p_tweak_infos_2196, 1, m_strip_all_calls_1560).
param(p_source_information_node_2197, 1, m_create_compiler_default_value_overrides_var_node_1561).
param(p_tweak_infos_2198, 1, m_apply_compiler_default_value_overrides_1562).
param(p_root_2199, 1, m_collect_tweaks_1563).
param(p_tweak_infos_2200, 1, m_collect_tweaks_result_1564).
param(p_get_overrides_calls_2201, 2, m_collect_tweaks_result_1564).
param(p_t_2202, 1, m_visit_1565).
param(p_n_2203, 2, m_visit_1565).
param(p_parent_2204, 3, m_visit_1565).
param(p_source_name_2205, 1, m_tweak_function_call_1566).
param(p_tweak_func_2206, 2, m_tweak_function_call_1566).
param(p_call_node_2207, 3, m_tweak_function_call_1566).
param(p_source_name_2208, 1, m_tweak_function_call_1567).
param(p_tweak_func_2209, 2, m_tweak_function_call_1567).
param(p_call_node_2210, 3, m_tweak_function_call_1567).
param(p_value_node_2211, 4, m_tweak_function_call_1567).
param(p_tweak_id_2212, 1, m_tweak_info_1569).
param(p_source_name_2213, 1, m_add_register_call_1573).
param(p_tweak_func_2214, 2, m_add_register_call_1573).
param(p_call_node_2215, 3, m_add_register_call_1573).
param(p_default_value_node_2216, 4, m_add_register_call_1573).
param(p_source_name_2217, 1, m_add_override_default_value_call_1574).
param(p_tweak_func_2218, 2, m_add_override_default_value_call_1574).
param(p_call_node_2219, 3, m_add_override_default_value_call_1574).
param(p_default_value_node_2220, 4, m_add_override_default_value_call_1574).
param(p_source_name_2221, 1, m_add_getter_call_1575).
param(p_tweak_func_2222, 2, m_add_getter_call_1575).
param(p_call_node_2223, 3, m_add_getter_call_1575).

%diagnostic_type_1 - com.google.javascript.jscomp.DiagnosticType
param(p_name_1282, 1, m_error_1).
param(p_description_format_1283, 2, m_error_1).
return(diagnostic_type_1_expr1, m_error_1, line(diagnostic_type_1, 54)).
method_invoc(diagnostic_type_1_expr1, m_make_977, line(diagnostic_type_1, 54)).
argument(p_name_1282, 1, diagnostic_type_1_expr1).
argument(q_error_49, 2, diagnostic_type_1_expr1).
argument(p_description_format_1283, 3, diagnostic_type_1_expr1).
ref(t_check_level_8, q_error_49, line(diagnostic_type_1, 54)).
param(p_name_1284, 1, m_warning_109).
param(p_description_format_1285, 2, m_warning_109).
return(diagnostic_type_1_expr2, m_warning_109, line(diagnostic_type_1, 65)).
method_invoc(diagnostic_type_1_expr2, m_make_977, line(diagnostic_type_1, 65)).
argument(p_name_1284, 1, diagnostic_type_1_expr2).
argument(q_warning_49, 2, diagnostic_type_1_expr2).
argument(p_description_format_1285, 3, diagnostic_type_1_expr2).
ref(t_check_level_8, q_warning_49, line(diagnostic_type_1, 65)).
param(p_name_1286, 1, m_disabled_82).
param(p_description_format_1287, 2, m_disabled_82).
return(diagnostic_type_1_expr3, m_disabled_82, line(diagnostic_type_1, 77)).
method_invoc(diagnostic_type_1_expr3, m_make_977, line(diagnostic_type_1, 77)).
argument(p_name_1286, 1, diagnostic_type_1_expr3).
argument(q_off_49, 2, diagnostic_type_1_expr3).
argument(p_description_format_1287, 3, diagnostic_type_1_expr3).
ref(t_check_level_8, q_off_49, line(diagnostic_type_1, 77)).
param(p_name_1288, 1, m_make_977).
param(p_level_1289, 2, m_make_977).
param(p_description_format_1290, 3, m_make_977).
return(diagnostic_type_1_expr4, m_make_977, line(diagnostic_type_1, 90)).
param(p_key_1291, 1, m_diagnostic_type_978).
param(p_level_1292, 2, m_diagnostic_type_978).
param(p_format_1293, 3, m_diagnostic_type_978).
assign(f_key_1294, p_key_1291, line(diagnostic_type_1, 98)).
assign(f_default_level_1295, p_level_1292, line(diagnostic_type_1, 99)).
assign(f_format_1296, p_format_1293, line(diagnostic_type_1, 100)).
assign(f_level_1297, f_default_level_1295, line(diagnostic_type_1, 102)).
param(p_arguments_1298, 1, m_format_979).
param(p_type_1299, 1, m_equals_980).
return(diagnostic_type_1_expr19, m_equals_980, line(diagnostic_type_1, 115)).
return(diagnostic_type_1_expr21, m_hash_code_981, line(diagnostic_type_1, 121)).
method_invoc(diagnostic_type_1_expr21, m_hash_code_982, line(diagnostic_type_1, 121)).
ref(f_key_1294, diagnostic_type_1_expr21, line(diagnostic_type_1, 121)).
param(p_diagnostic_type_1300, 1, m_compare_to_983).

%control_flow_analysis_1 - com.google.javascript.jscomp.ControlFlowAnalysis
assign(f_priority_comparator_1027, control_flow_analysis_1_expr1, line(control_flow_analysis_1, 70)).
method_invoc(control_flow_analysis_1_expr1, m__805, line(control_flow_analysis_1, 71)).
param(p_a_1028, 1, m_compare_806).
param(p_b_1029, 2, m_compare_806).
assign(f_exception_handler_1030, control_flow_analysis_1_expr2, line(control_flow_analysis_1, 95)).
method_invoc(control_flow_analysis_1_expr2, m_array_deque_807, line(control_flow_analysis_1, 95)).
assign(f_finally_map_1031, control_flow_analysis_1_expr3, line(control_flow_analysis_1, 126)).
method_invoc(control_flow_analysis_1_expr3, m_create_808, line(control_flow_analysis_1, 126)).
ref(t_hash_multimap_33, control_flow_analysis_1_expr3, line(control_flow_analysis_1, 126)).
param(p_compiler_1032, 1, m_control_flow_analysis_809).
param(p_should_traverse_functions_1033, 2, m_control_flow_analysis_809).
param(p_edge_annotations_1034, 3, m_control_flow_analysis_809).
assign(f_compiler_1035, p_compiler_1032, line(control_flow_analysis_1, 139)).
assign(f_should_traverse_functions_1036, p_should_traverse_functions_1033, line(control_flow_analysis_1, 140)).
assign(f_edge_annotations_1037, p_edge_annotations_1034, line(control_flow_analysis_1, 141)).
return(f_cfg_1038, m_get_cfg_810, line(control_flow_analysis_1, 145)).
param(p_externs_1039, 1, m_process_811).
param(p_root_1040, 2, m_process_811).
assign(f_root_1041, p_root_1040, line(control_flow_analysis_1, 150)).
assign(f_ast_position_counter_1042, control_flow_analysis_1_literal1, line(control_flow_analysis_1, 151)).
assign(f_ast_position_1043, control_flow_analysis_1_expr18, line(control_flow_analysis_1, 152)).
method_invoc(control_flow_analysis_1_expr18, m_new_hash_map_422, line(control_flow_analysis_1, 152)).
ref(t_maps_17, control_flow_analysis_1_expr18, line(control_flow_analysis_1, 152)).
assign(f_node_priorities_1044, control_flow_analysis_1_expr20, line(control_flow_analysis_1, 153)).
method_invoc(control_flow_analysis_1_expr20, m_new_hash_map_422, line(control_flow_analysis_1, 153)).
ref(t_maps_17, control_flow_analysis_1_expr20, line(control_flow_analysis_1, 153)).
assign(f_cfg_1038, control_flow_analysis_1_expr22, line(control_flow_analysis_1, 154)).
method_invoc(control_flow_analysis_1_expr22, m_ast_control_flow_graph_812, line(control_flow_analysis_1, 154)).
argument(control_flow_analysis_1_expr23, 1, control_flow_analysis_1_expr22).
argument(f_node_priorities_1044, 2, control_flow_analysis_1_expr22).
argument(f_edge_annotations_1037, 3, control_flow_analysis_1_expr22).
method_invoc(control_flow_analysis_1_expr23, m_compute_fall_through_813, line(control_flow_analysis_1, 154)).
argument(p_root_1040, 1, control_flow_analysis_1_expr23).
method_invoc(control_flow_analysis_1_expr24, m_traverse_814, line(control_flow_analysis_1, 156)).
argument(f_compiler_1035, 1, control_flow_analysis_1_expr24).
argument(p_root_1040, 2, control_flow_analysis_1_expr24).
argument(control_flow_analysis_1_expr25, 3, control_flow_analysis_1_expr24).
ref(t_node_traversal_34, control_flow_analysis_1_expr24, line(control_flow_analysis_1, 156)).
method_invoc(control_flow_analysis_1_expr26, m_put_395, line(control_flow_analysis_1, 157)).
argument(control_flow_analysis_1_literal2, 1, control_flow_analysis_1_expr26).
argument(control_flow_analysis_1_expr27, 2, control_flow_analysis_1_expr26).
ref(f_ast_position_1043, control_flow_analysis_1_expr26, line(control_flow_analysis_1, 157)).
assign(f_priority_counter_1045, control_flow_analysis_1_literal3, line(control_flow_analysis_1, 161)).
assign(v_entry_1046, control_flow_analysis_1_expr29, line(control_flow_analysis_1, 162)).
method_invoc(control_flow_analysis_1_expr29, m_get_entry_815, line(control_flow_analysis_1, 162)).
ref(f_cfg_1038, control_flow_analysis_1_expr29, line(control_flow_analysis_1, 162)).
method_invoc(control_flow_analysis_1_expr30, m_prioritize_from_entry_node_816, line(control_flow_analysis_1, 163)).
argument(v_entry_1046, 1, control_flow_analysis_1_expr30).
ref(control_flow_analysis_1_expr31, control_flow_analysis_1_stmt16, line(control_flow_analysis_1, 182)).
method_invoc(control_flow_analysis_1_expr31, m_get_directed_graph_nodes_817, line(control_flow_analysis_1, 182)).
ref(f_cfg_1038, control_flow_analysis_1_expr31, line(control_flow_analysis_1, 182)).
method_invoc(control_flow_analysis_1_expr33, m_contains_key_818, line(control_flow_analysis_1, 183)).
argument(v_candidate_1047, 1, control_flow_analysis_1_expr33).
ref(f_node_priorities_1044, control_flow_analysis_1_expr33, line(control_flow_analysis_1, 183)).
method_invoc(control_flow_analysis_1_expr34, m_put_395, line(control_flow_analysis_1, 189)).
argument(control_flow_analysis_1_expr35, 1, control_flow_analysis_1_expr34).
argument(control_flow_analysis_1_expr36, 2, control_flow_analysis_1_expr34).
ref(f_node_priorities_1044, control_flow_analysis_1_expr34, line(control_flow_analysis_1, 189)).
method_invoc(control_flow_analysis_1_expr35, m_get_implicit_return_819, line(control_flow_analysis_1, 189)).
ref(f_cfg_1038, control_flow_analysis_1_expr35, line(control_flow_analysis_1, 189)).
param(p_entry_1048, 1, m_prioritize_from_entry_node_816).
assign(v_worklist_1049, control_flow_analysis_1_expr37, line(control_flow_analysis_1, 197)).
method_invoc(control_flow_analysis_1_expr38, m_add_820, line(control_flow_analysis_1, 199)).
argument(p_entry_1048, 1, control_flow_analysis_1_expr38).
ref(v_worklist_1049, control_flow_analysis_1_expr38, line(control_flow_analysis_1, 199)).
method_invoc(control_flow_analysis_1_expr40, m_is_empty_821, line(control_flow_analysis_1, 201)).
ref(v_worklist_1049, control_flow_analysis_1_expr40, line(control_flow_analysis_1, 201)).
assign(v_current_1050, control_flow_analysis_1_expr41, line(control_flow_analysis_1, 202)).
method_invoc(control_flow_analysis_1_expr41, m_remove_822, line(control_flow_analysis_1, 202)).
ref(v_worklist_1049, control_flow_analysis_1_expr41, line(control_flow_analysis_1, 202)).
method_invoc(control_flow_analysis_1_expr42, m_contains_key_818, line(control_flow_analysis_1, 203)).
argument(v_current_1050, 1, control_flow_analysis_1_expr42).
ref(f_node_priorities_1044, control_flow_analysis_1_expr42, line(control_flow_analysis_1, 203)).
method_invoc(control_flow_analysis_1_expr43, m_put_395, line(control_flow_analysis_1, 207)).
argument(v_current_1050, 1, control_flow_analysis_1_expr43).
argument(control_flow_analysis_1_expr44, 2, control_flow_analysis_1_expr43).
ref(f_node_priorities_1044, control_flow_analysis_1_expr43, line(control_flow_analysis_1, 207)).
assign(v_successors_1051, control_flow_analysis_1_expr45, line(control_flow_analysis_1, 209)).
ref(v_successors_1051, control_flow_analysis_1_stmt26, line(control_flow_analysis_1, 211)).
method_invoc(control_flow_analysis_1_expr46, m_add_820, line(control_flow_analysis_1, 212)).
argument(v_candidate_1052, 1, control_flow_analysis_1_expr46).
ref(v_worklist_1049, control_flow_analysis_1_expr46, line(control_flow_analysis_1, 212)).
param(p_node_traversal_1053, 1, m_should_traverse_823).
param(p_n_1054, 2, m_should_traverse_823).
param(p_parent_1055, 3, m_should_traverse_823).
method_invoc(control_flow_analysis_1_expr47, m_put_395, line(control_flow_analysis_1, 220)).
argument(p_n_1054, 1, control_flow_analysis_1_expr47).
argument(control_flow_analysis_1_expr48, 2, control_flow_analysis_1_expr47).
ref(f_ast_position_1043, control_flow_analysis_1_expr47, line(control_flow_analysis_1, 220)).
method_invoc(control_flow_analysis_1_expr49, m_get_type_824, line(control_flow_analysis_1, 222)).
ref(p_n_1054, control_flow_analysis_1_expr49, line(control_flow_analysis_1, 222)).
method_invoc(control_flow_analysis_1_expr52, m_get_value_825, line(control_flow_analysis_1, 224)).
ref(control_flow_analysis_1_expr53, control_flow_analysis_1_expr52, line(control_flow_analysis_1, 224)).
method_invoc(control_flow_analysis_1_expr53, m_get_entry_815, line(control_flow_analysis_1, 224)).
ref(f_cfg_1038, control_flow_analysis_1_expr53, line(control_flow_analysis_1, 224)).
method_invoc(control_flow_analysis_1_expr54, m_push_826, line(control_flow_analysis_1, 225)).
argument(p_n_1054, 1, control_flow_analysis_1_expr54).
ref(f_exception_handler_1030, control_flow_analysis_1_expr54, line(control_flow_analysis_1, 225)).
return(control_flow_analysis_1_literal4, m_should_traverse_823, line(control_flow_analysis_1, 226)).
return(control_flow_analysis_1_literal5, m_should_traverse_823, line(control_flow_analysis_1, 228)).
method_invoc(control_flow_analysis_1_expr56, m_get_type_824, line(control_flow_analysis_1, 251)).
ref(p_parent_1055, control_flow_analysis_1_expr56, line(control_flow_analysis_1, 251)).
return(control_flow_analysis_1_expr57, m_should_traverse_823, line(control_flow_analysis_1, 270)).
method_invoc(control_flow_analysis_1_expr58, m_get_next_827, line(control_flow_analysis_1, 270)).
ref(control_flow_analysis_1_expr59, control_flow_analysis_1_expr58, line(control_flow_analysis_1, 270)).
method_invoc(control_flow_analysis_1_expr59, m_get_next_827, line(control_flow_analysis_1, 270)).
ref(control_flow_analysis_1_expr60, control_flow_analysis_1_expr59, line(control_flow_analysis_1, 270)).
method_invoc(control_flow_analysis_1_expr60, m_get_first_child_828, line(control_flow_analysis_1, 270)).
ref(p_parent_1055, control_flow_analysis_1_expr60, line(control_flow_analysis_1, 270)).
return(control_flow_analysis_1_literal7, m_should_traverse_823, line(control_flow_analysis_1, 291)).
param(p_t_1056, 1, m_visit_829).
param(p_n_1057, 2, m_visit_829).
param(p_parent_1058, 3, m_visit_829).
method_invoc(control_flow_analysis_1_expr61, m_get_type_824, line(control_flow_analysis_1, 296)).
ref(p_n_1057, control_flow_analysis_1_expr61, line(control_flow_analysis_1, 296)).
method_invoc(control_flow_analysis_1_expr62, m_handle_stmt_list_830, line(control_flow_analysis_1, 320)).
argument(p_n_1057, 1, control_flow_analysis_1_expr62).
return(none, m_visit_829, line(control_flow_analysis_1, 321)).
method_invoc(control_flow_analysis_1_expr63, m_handle_function_831, line(control_flow_analysis_1, 323)).
argument(p_n_1057, 1, control_flow_analysis_1_expr63).
return(none, m_visit_829, line(control_flow_analysis_1, 324)).
param(p_node_1059, 1, m_handle_if_832).
param(p_node_1060, 1, m_handle_while_833).
param(p_node_1061, 1, m_handle_do_834).
param(p_for_node_1062, 1, m_handle_for_835).
param(p_node_1063, 1, m_handle_switch_836).
param(p_node_1064, 1, m_handle_case_837).
param(p_node_1065, 1, m_handle_default_838).
param(p_node_1066, 1, m_handle_with_839).
param(p_node_1067, 1, m_handle_stmt_list_830).
assign(v_parent_1068, control_flow_analysis_1_expr64, line(control_flow_analysis_1, 485)).
method_invoc(control_flow_analysis_1_expr64, m_get_parent_840, line(control_flow_analysis_1, 485)).
ref(p_node_1067, control_flow_analysis_1_expr64, line(control_flow_analysis_1, 485)).
method_invoc(control_flow_analysis_1_expr69, m_is_block_841, line(control_flow_analysis_1, 487)).
ref(p_node_1067, control_flow_analysis_1_expr69, line(control_flow_analysis_1, 487)).
assign(v_child_1069, control_flow_analysis_1_expr71, line(control_flow_analysis_1, 495)).
method_invoc(control_flow_analysis_1_expr71, m_get_first_child_828, line(control_flow_analysis_1, 495)).
ref(p_node_1067, control_flow_analysis_1_expr71, line(control_flow_analysis_1, 495)).
method_invoc(control_flow_analysis_1_expr74, m_is_function_842, line(control_flow_analysis_1, 499)).
ref(v_child_1069, control_flow_analysis_1_expr74, line(control_flow_analysis_1, 499)).
assign(v_child_1069, control_flow_analysis_1_expr76, line(control_flow_analysis_1, 500)).
method_invoc(control_flow_analysis_1_expr76, m_get_next_827, line(control_flow_analysis_1, 500)).
ref(v_child_1069, control_flow_analysis_1_expr76, line(control_flow_analysis_1, 500)).
method_invoc(control_flow_analysis_1_expr78, m_create_edge_843, line(control_flow_analysis_1, 504)).
argument(p_node_1067, 1, control_flow_analysis_1_expr78).
argument(q_uncond_44, 2, control_flow_analysis_1_expr78).
argument(control_flow_analysis_1_expr79, 3, control_flow_analysis_1_expr78).
ref(t_branch_35, q_uncond_44, line(control_flow_analysis_1, 504)).
method_invoc(control_flow_analysis_1_expr79, m_compute_fall_through_813, line(control_flow_analysis_1, 504)).
argument(v_child_1069, 1, control_flow_analysis_1_expr79).
method_invoc(control_flow_analysis_1_expr80, m_create_edge_843, line(control_flow_analysis_1, 506)).
argument(p_node_1067, 1, control_flow_analysis_1_expr80).
argument(q_uncond_45, 2, control_flow_analysis_1_expr80).
argument(control_flow_analysis_1_expr81, 3, control_flow_analysis_1_expr80).
ref(t_branch_35, q_uncond_45, line(control_flow_analysis_1, 506)).
method_invoc(control_flow_analysis_1_expr81, m_compute_follow_node_844, line(control_flow_analysis_1, 506)).
argument(p_node_1067, 1, control_flow_analysis_1_expr81).
argument(control_flow_analysis_1_expr82, 2, control_flow_analysis_1_expr81).
method_invoc(control_flow_analysis_1_expr84, m_get_type_824, line(control_flow_analysis_1, 511)).
ref(v_parent_1068, control_flow_analysis_1_expr84, line(control_flow_analysis_1, 511)).
method_invoc(control_flow_analysis_1_expr86, m_is_block_841, line(control_flow_analysis_1, 517)).
ref(p_node_1067, control_flow_analysis_1_expr86, line(control_flow_analysis_1, 517)).
method_invoc(control_flow_analysis_1_expr87, m_is_synthetic_block_845, line(control_flow_analysis_1, 517)).
ref(p_node_1067, control_flow_analysis_1_expr87, line(control_flow_analysis_1, 517)).
param(p_node_1070, 1, m_handle_function_831).
method_invoc(control_flow_analysis_1_expr88, m_check_state_536, line(control_flow_analysis_1, 527)).
argument(control_flow_analysis_1_expr89, 1, control_flow_analysis_1_expr88).
ref(t_preconditions_19, control_flow_analysis_1_expr88, line(control_flow_analysis_1, 527)).
method_invoc(control_flow_analysis_1_expr90, m_get_child_count_846, line(control_flow_analysis_1, 527)).
ref(p_node_1070, control_flow_analysis_1_expr90, line(control_flow_analysis_1, 527)).
method_invoc(control_flow_analysis_1_expr91, m_create_edge_843, line(control_flow_analysis_1, 528)).
argument(p_node_1070, 1, control_flow_analysis_1_expr91).
argument(q_uncond_45, 2, control_flow_analysis_1_expr91).
argument(control_flow_analysis_1_expr92, 3, control_flow_analysis_1_expr91).
ref(t_branch_35, q_uncond_45, line(control_flow_analysis_1, 528)).
method_invoc(control_flow_analysis_1_expr93, m_check_state_536, line(control_flow_analysis_1, 530)).
argument(control_flow_analysis_1_expr94, 1, control_flow_analysis_1_expr93).
ref(t_preconditions_19, control_flow_analysis_1_expr93, line(control_flow_analysis_1, 530)).
method_invoc(control_flow_analysis_1_expr95, m_peek_847, line(control_flow_analysis_1, 530)).
ref(f_exception_handler_1030, control_flow_analysis_1_expr95, line(control_flow_analysis_1, 530)).
method_invoc(control_flow_analysis_1_expr96, m_pop_848, line(control_flow_analysis_1, 531)).
ref(f_exception_handler_1030, control_flow_analysis_1_expr96, line(control_flow_analysis_1, 531)).
param(p_node_1071, 1, m_handle_expr_849).
param(p_node_1072, 1, m_handle_throw_850).
param(p_node_1073, 1, m_handle_try_851).
param(p_node_1074, 1, m_handle_catch_852).
param(p_node_1075, 1, m_handle_break_853).
param(p_node_1076, 1, m_handle_continue_854).
param(p_node_1077, 1, m_handle_return_855).
param(p_node_1078, 1, m_handle_stmt_856).
param(p_node_1079, 1, m_compute_follow_node_844).
param(p_cfa_1080, 2, m_compute_follow_node_844).
return(control_flow_analysis_1_expr97, m_compute_follow_node_844, line(control_flow_analysis_1, 675)).
method_invoc(control_flow_analysis_1_expr97, m_compute_follow_node_857, line(control_flow_analysis_1, 675)).
argument(p_node_1079, 1, control_flow_analysis_1_expr97).
argument(p_node_1079, 2, control_flow_analysis_1_expr97).
argument(p_cfa_1080, 3, control_flow_analysis_1_expr97).
param(p_node_1081, 1, m_compute_follow_node_858).
param(p_from_node_1082, 1, m_compute_follow_node_857).
param(p_node_1083, 2, m_compute_follow_node_857).
param(p_cfa_1084, 3, m_compute_follow_node_857).
assign(v_parent_1085, control_flow_analysis_1_expr98, line(control_flow_analysis_1, 712)).
method_invoc(control_flow_analysis_1_expr98, m_get_parent_840, line(control_flow_analysis_1, 712)).
ref(p_node_1083, control_flow_analysis_1_expr98, line(control_flow_analysis_1, 712)).
method_invoc(control_flow_analysis_1_expr102, m_is_function_842, line(control_flow_analysis_1, 713)).
ref(v_parent_1085, control_flow_analysis_1_expr102, line(control_flow_analysis_1, 713)).
return(control_flow_analysis_1_literal14, m_compute_follow_node_857, line(control_flow_analysis_1, 715)).
method_invoc(control_flow_analysis_1_expr103, m_get_type_824, line(control_flow_analysis_1, 719)).
ref(v_parent_1085, control_flow_analysis_1_expr103, line(control_flow_analysis_1, 719)).
assign(v_next_sibling_1086, control_flow_analysis_1_expr104, line(control_flow_analysis_1, 776)).
method_invoc(control_flow_analysis_1_expr104, m_get_next_827, line(control_flow_analysis_1, 776)).
ref(p_node_1083, control_flow_analysis_1_expr104, line(control_flow_analysis_1, 776)).
method_invoc(control_flow_analysis_1_expr107, m_is_function_842, line(control_flow_analysis_1, 779)).
ref(v_next_sibling_1086, control_flow_analysis_1_expr107, line(control_flow_analysis_1, 779)).
return(control_flow_analysis_1_expr109, m_compute_follow_node_857, line(control_flow_analysis_1, 784)).
method_invoc(control_flow_analysis_1_expr109, m_compute_fall_through_813, line(control_flow_analysis_1, 784)).
argument(v_next_sibling_1086, 1, control_flow_analysis_1_expr109).
return(control_flow_analysis_1_expr110, m_compute_follow_node_857, line(control_flow_analysis_1, 787)).
method_invoc(control_flow_analysis_1_expr110, m_compute_follow_node_857, line(control_flow_analysis_1, 787)).
argument(p_from_node_1082, 1, control_flow_analysis_1_expr110).
argument(v_parent_1085, 2, control_flow_analysis_1_expr110).
argument(p_cfa_1084, 3, control_flow_analysis_1_expr110).
param(p_n_1087, 1, m_compute_fall_through_813).
method_invoc(control_flow_analysis_1_expr111, m_get_type_824, line(control_flow_analysis_1, 797)).
ref(p_n_1087, control_flow_analysis_1_expr111, line(control_flow_analysis_1, 797)).
return(p_n_1087, m_compute_fall_through_813, line(control_flow_analysis_1, 808)).
param(p_from_node_1088, 1, m_create_edge_843).
param(p_branch_1089, 2, m_create_edge_843).
param(p_to_node_1090, 3, m_create_edge_843).
method_invoc(control_flow_analysis_1_expr112, m_create_node_859, line(control_flow_analysis_1, 820)).
argument(p_from_node_1088, 1, control_flow_analysis_1_expr112).
ref(f_cfg_1038, control_flow_analysis_1_expr112, line(control_flow_analysis_1, 820)).
method_invoc(control_flow_analysis_1_expr113, m_create_node_859, line(control_flow_analysis_1, 821)).
argument(p_to_node_1090, 1, control_flow_analysis_1_expr113).
ref(f_cfg_1038, control_flow_analysis_1_expr113, line(control_flow_analysis_1, 821)).
method_invoc(control_flow_analysis_1_expr114, m_connect_if_not_found_860, line(control_flow_analysis_1, 822)).
argument(p_from_node_1088, 1, control_flow_analysis_1_expr114).
argument(p_branch_1089, 2, control_flow_analysis_1_expr114).
argument(p_to_node_1090, 3, control_flow_analysis_1_expr114).
ref(f_cfg_1038, control_flow_analysis_1_expr114, line(control_flow_analysis_1, 822)).
param(p_cfg_node_1091, 1, m_connect_to_possible_exception_handler_861).
param(p_target_1092, 2, m_connect_to_possible_exception_handler_861).
param(p_first_1093, 1, m_get_next_sibling_of_type_862).
param(p_types_1094, 2, m_get_next_sibling_of_type_862).
param(p_target_1095, 1, m_is_break_target_863).
param(p_label_1096, 2, m_is_break_target_863).
param(p_target_1097, 1, m_is_continue_target_864).
param(p_parent_1098, 2, m_is_continue_target_864).
param(p_label_1099, 3, m_is_continue_target_864).
param(p_target_1100, 1, m_match_label_865).
param(p_label_1101, 2, m_match_label_865).
param(p_n_1102, 1, m_may_throw_exception_866).
param(p_n_1103, 1, m_is_break_structure_867).
param(p_labeled_1104, 2, m_is_break_structure_867).
param(p_n_1105, 1, m_is_continue_structure_868).
param(p_n_1106, 1, m_get_exception_handler_869).
param(p_block_1107, 1, m_get_catch_handler_for_block_870).
param(p_entry_1108, 1, m_ast_control_flow_graph_812).
param(p_priorities_1109, 2, m_ast_control_flow_graph_812).
param(p_edge_annotations_1110, 3, m_ast_control_flow_graph_812).
method_invoc(control_flow_analysis_1_expr115, m_control_flow_graph_871, line(control_flow_analysis_1, 1016)).
argument(p_entry_1108, 1, control_flow_analysis_1_expr115).
argument(control_flow_analysis_1_literal17, 2, control_flow_analysis_1_expr115).
argument(p_edge_annotations_1110, 3, control_flow_analysis_1_expr115).
assign(f_priorities_1111, p_priorities_1109, line(control_flow_analysis_1, 1018)).
param(p_is_forward_1112, 1, m_get_optional_node_comparator_872).
return(control_flow_analysis_1_expr119, m_get_optional_node_comparator_872, line(control_flow_analysis_1, 1030)).
method_invoc(control_flow_analysis_1_expr119, m__873, line(control_flow_analysis_1, 1030)).
param(p_n_1_1113, 1, m_compare_874).
param(p_n_2_1114, 2, m_compare_874).
return(control_flow_analysis_1_expr120, m_compare_874, line(control_flow_analysis_1, 1034)).
method_invoc(control_flow_analysis_1_expr121, m_get_position_875, line(control_flow_analysis_1, 1034)).
argument(p_n_1_1113, 1, control_flow_analysis_1_expr121).
method_invoc(control_flow_analysis_1_expr122, m_get_position_875, line(control_flow_analysis_1, 1034)).
argument(p_n_2_1114, 1, control_flow_analysis_1_expr122).
param(p_n_1_1115, 1, m_compare_876).
param(p_n_2_1116, 2, m_compare_876).
param(p_n_1117, 1, m_get_position_875).
assign(v_priority_1118, control_flow_analysis_1_expr123, line(control_flow_analysis_1, 1053)).
method_invoc(control_flow_analysis_1_expr123, m_get_390, line(control_flow_analysis_1, 1053)).
argument(p_n_1117, 1, control_flow_analysis_1_expr123).
ref(f_priorities_1111, control_flow_analysis_1_expr123, line(control_flow_analysis_1, 1053)).
method_invoc(control_flow_analysis_1_expr124, m_check_not_null_538, line(control_flow_analysis_1, 1054)).
argument(v_priority_1118, 1, control_flow_analysis_1_expr124).
ref(t_preconditions_19, control_flow_analysis_1_expr124, line(control_flow_analysis_1, 1054)).
return(v_priority_1118, m_get_position_875, line(control_flow_analysis_1, 1055)).

%disambiguate_properties_1 - com.google.javascript.jscomp.DisambiguateProperties
assign(f_invalidation_1301, disambiguate_properties_1_expr1, line(disambiguate_properties_1, 88)).
method_invoc(disambiguate_properties_1_expr1, m_disabled_82, line(disambiguate_properties_1, 88)).
argument(disambiguate_properties_1_literal1, 1, disambiguate_properties_1_expr1).
argument(disambiguate_properties_1_expr2, 2, disambiguate_properties_1_expr1).
ref(t_diagnostic_type_2, disambiguate_properties_1_expr1, line(disambiguate_properties_1, 88)).
param(p_name_1302, 1, m_property_985).
param(p_type_1303, 1, m_add_type_987).
param(p_top_1304, 2, m_add_type_987).
param(p_related_type_1305, 3, m_add_type_987).
param(p_type_1306, 1, m_add_type_to_skip_988).
param(p_type_1307, 1, m_should_rename_991).
param(p_node_1308, 1, m_schedule_renaming_993).
param(p_type_1309, 2, m_schedule_renaming_993).
param(p_compiler_1310, 1, m_for_jstype_system_994).
param(p_properties_to_error_for_1311, 2, m_for_jstype_system_994).
param(p_compiler_1312, 1, m_for_concrete_type_system_995).
param(p_tt_1313, 2, m_for_concrete_type_system_995).
param(p_properties_to_error_for_1314, 3, m_for_concrete_type_system_995).
param(p_compiler_1315, 1, m_disambiguate_properties_996).
param(p_type_system_1316, 2, m_disambiguate_properties_996).
param(p_properties_to_error_for_1317, 3, m_disambiguate_properties_996).
param(p_externs_1318, 1, m_process_997).
param(p_root_1319, 2, m_process_997).
param(p_t_1320, 1, m_record_invalidation_error_998).
param(p_error_1321, 2, m_record_invalidation_error_998).
param(p_type_1322, 1, m_add_invalidating_type_999).
param(p_error_1323, 2, m_add_invalidating_type_999).
param(p_name_1324, 1, m_get_property_1000).
param(p_field_1325, 1, m_get_type_with_property_1001).
param(p_type_1326, 2, m_get_type_with_property_1001).
param(p_t_1327, 1, m_should_traverse_1002).
param(p_n_1328, 2, m_should_traverse_1002).
param(p_parent_1329, 3, m_should_traverse_1002).
param(p_t_1330, 1, m_enter_scope_1003).
param(p_t_1331, 1, m_exit_scope_1004).
param(p_t_1332, 1, m_visit_1006).
param(p_n_1333, 2, m_visit_1006).
param(p_parent_1334, 3, m_visit_1006).
param(p_t_1335, 1, m_visit_1007).
param(p_n_1336, 2, m_visit_1007).
param(p_parent_1337, 3, m_visit_1007).
param(p_t_1338, 1, m_handle_get_prop_1008).
param(p_n_1339, 2, m_handle_get_prop_1008).
param(p_t_1340, 1, m_handle_object_lit_1009).
param(p_n_1341, 2, m_handle_object_lit_1009).
param(p_errors_1342, 1, m_print_error_locations_1010).
param(p_t_1343, 2, m_print_error_locations_1010).
param(p_t_1344, 1, m_process_property_1011).
param(p_prop_1345, 2, m_process_property_1011).
param(p_type_1346, 3, m_process_property_1011).
param(p_related_type_1347, 4, m_process_property_1011).
param(p_types_1348, 1, m_build_prop_names_1013).
param(p_name_1349, 2, m_build_prop_names_1013).
param(p_node_1350, 1, m_get_function_scope_1016).
param(p_scope_1351, 1, m_get_type_1017).
param(p_node_1352, 2, m_get_type_1017).
param(p_prop_1353, 3, m_get_type_1017).
param(p_type_1354, 1, m_is_invalidating_type_1018).
param(p_type_1355, 1, m_add_invalidating_type_1019).
param(p_type_1356, 1, m_get_types_to_skip_for_type_1020).
param(p_type_1357, 1, m_is_type_to_skip_1021).
param(p_type_1358, 1, m_restrict_by_not_null_or_undefined_1022).
param(p_type_1359, 1, m_get_type_alternatives_1023).
param(p_field_1360, 1, m_get_type_with_property_1024).
param(p_type_1361, 2, m_get_type_with_property_1024).
param(p_type_1362, 1, m_get_instance_from_prototype_1025).
param(p_type_1363, 1, m_record_interfaces_1026).
param(p_related_type_1364, 2, m_record_interfaces_1026).
param(p_p_1365, 3, m_record_interfaces_1026).
param(p_compiler_1366, 1, m_jstype_system_1027).
param(p_type_1367, 1, m_add_invalidating_type_1028).
param(p_node_1368, 1, m_get_function_scope_1030).
param(p_scope_1369, 1, m_get_type_1031).
param(p_node_1370, 2, m_get_type_1031).
param(p_prop_1371, 3, m_get_type_1031).
param(p_type_1372, 1, m_is_invalidating_type_1032).
param(p_type_1373, 1, m_get_types_to_skip_for_type_1033).
param(p_type_1374, 1, m_get_types_to_skip_for_type_non_union_1034).
param(p_type_1375, 1, m_is_type_to_skip_1035).
param(p_type_1376, 1, m_restrict_by_not_null_or_undefined_1036).
param(p_type_1377, 1, m_get_type_alternatives_1037).
param(p_field_1378, 1, m_get_type_with_property_1038).
param(p_type_1379, 2, m_get_type_with_property_1038).
param(p_type_1380, 1, m_get_instance_from_prototype_1039).
param(p_type_1381, 1, m_record_interfaces_1040).
param(p_related_type_1382, 2, m_record_interfaces_1040).
param(p_p_1383, 3, m_record_interfaces_1040).
param(p_tt_1384, 1, m_concrete_type_system_1041).
param(p_convention_1385, 2, m_concrete_type_system_1041).
param(p_type_1386, 1, m_add_invalidating_type_1042).
param(p_decl_1387, 1, m_get_function_scope_1044).
param(p_scope_1388, 1, m_get_type_1045).
param(p_node_1389, 2, m_get_type_1045).
param(p_prop_1390, 3, m_get_type_1045).
param(p_c_type_1391, 1, m_maybe_add_autoboxes_1046).
param(p_node_1392, 2, m_maybe_add_autoboxes_1046).
param(p_prop_1393, 3, m_maybe_add_autoboxes_1046).
param(p_c_type_1394, 1, m_maybe_add_autoboxes_1047).
param(p_js_type_1395, 2, m_maybe_add_autoboxes_1047).
param(p_prop_1396, 3, m_maybe_add_autoboxes_1047).
param(p_type_1397, 1, m_is_invalidating_type_1048).
param(p_type_1398, 1, m_get_types_to_skip_for_type_1049).
param(p_type_1399, 1, m_is_type_to_skip_1050).
param(p_type_1400, 1, m_restrict_by_not_null_or_undefined_1051).
param(p_type_1401, 1, m_get_type_alternatives_1052).
param(p_field_1402, 1, m_get_type_with_property_1053).
param(p_type_1403, 2, m_get_type_with_property_1053).
param(p_type_1404, 1, m_get_instance_from_prototype_1054).
param(p_type_1405, 1, m_record_interfaces_1055).
param(p_related_type_1406, 2, m_record_interfaces_1055).
param(p_p_1407, 3, m_record_interfaces_1055).

%rhino_error_reporter_1 - com.google.javascript.jscomp.RhinoErrorReporter
assign(f_parse_error_2229, rhino_error_reporter_1_expr1, line(rhino_error_reporter_1, 34)).
assign(f_type_parse_error_2230, rhino_error_reporter_1_expr2, line(rhino_error_reporter_1, 37)).
assign(f_trailing_comma_2231, rhino_error_reporter_1_expr3, line(rhino_error_reporter_1, 42)).
assign(f_duplicate_param_2232, rhino_error_reporter_1_expr4, line(rhino_error_reporter_1, 49)).
assign(f_bad_jsdoc_annotation_2233, rhino_error_reporter_1_expr5, line(rhino_error_reporter_1, 52)).
assign(f_misplaced_type_annotation_2234, rhino_error_reporter_1_expr6, line(rhino_error_reporter_1, 55)).
param(p_s_2235, 1, m_replace_place_holders_1578).
assign(p_s_2235, rhino_error_reporter_1_expr8, line(rhino_error_reporter_1, 71)).
method_invoc(rhino_error_reporter_1_expr8, m_quote_1579, line(rhino_error_reporter_1, 71)).
argument(p_s_2235, 1, rhino_error_reporter_1_expr8).
ref(t_pattern_58, rhino_error_reporter_1_expr8, line(rhino_error_reporter_1, 71)).
return(rhino_error_reporter_1_expr9, m_replace_place_holders_1578, line(rhino_error_reporter_1, 72)).
method_invoc(rhino_error_reporter_1_expr9, m_compile_1580, line(rhino_error_reporter_1, 72)).
argument(rhino_error_reporter_1_expr10, 1, rhino_error_reporter_1_expr9).
ref(t_pattern_58, rhino_error_reporter_1_expr9, line(rhino_error_reporter_1, 72)).
method_invoc(rhino_error_reporter_1_expr10, m_replace_all_1581, line(rhino_error_reporter_1, 72)).
argument(rhino_error_reporter_1_literal1, 1, rhino_error_reporter_1_expr10).
argument(rhino_error_reporter_1_literal2, 2, rhino_error_reporter_1_expr10).
ref(p_s_2235, rhino_error_reporter_1_expr10, line(rhino_error_reporter_1, 72)).
param(p_compiler_2236, 1, m_rhino_error_reporter_1582).
assign(f_compiler_2237, p_compiler_2236, line(rhino_error_reporter_1, 76)).
assign(f_type_map_2238, rhino_error_reporter_1_expr15, line(rhino_error_reporter_1, 77)).
method_invoc(rhino_error_reporter_1_expr15, m_of_1583, line(rhino_error_reporter_1, 77)).
argument(rhino_error_reporter_1_expr16, 1, rhino_error_reporter_1_expr15).
argument(f_trailing_comma_2231, 2, rhino_error_reporter_1_expr15).
argument(rhino_error_reporter_1_expr17, 3, rhino_error_reporter_1_expr15).
argument(f_duplicate_param_2232, 4, rhino_error_reporter_1_expr15).
argument(rhino_error_reporter_1_expr18, 5, rhino_error_reporter_1_expr15).
argument(f_bad_jsdoc_annotation_2233, 6, rhino_error_reporter_1_expr15).
argument(rhino_error_reporter_1_expr19, 7, rhino_error_reporter_1_expr15).
argument(f_misplaced_type_annotation_2234, 8, rhino_error_reporter_1_expr15).
argument(rhino_error_reporter_1_expr20, 9, rhino_error_reporter_1_expr15).
argument(f_type_parse_error_2230, 10, rhino_error_reporter_1_expr15).
ref(t_immutable_map_38, rhino_error_reporter_1_expr15, line(rhino_error_reporter_1, 77)).
param(p_compiler_2239, 1, m_for_new_rhino_1584).
return(rhino_error_reporter_1_expr21, m_for_new_rhino_1584, line(rhino_error_reporter_1, 105)).
method_invoc(rhino_error_reporter_1_expr21, m_new_rhino_error_reporter_1585, line(rhino_error_reporter_1, 105)).
argument(p_compiler_2239, 1, rhino_error_reporter_1_expr21).
param(p_compiler_2240, 1, m_for_old_rhino_1586).
return(rhino_error_reporter_1_expr22, m_for_old_rhino_1586, line(rhino_error_reporter_1, 109)).
method_invoc(rhino_error_reporter_1_expr22, m_old_rhino_error_reporter_1587, line(rhino_error_reporter_1, 109)).
argument(p_compiler_2240, 1, rhino_error_reporter_1_expr22).
param(p_message_2241, 1, m_warning_at_line_1588).
param(p_source_name_2242, 2, m_warning_at_line_1588).
param(p_line_2243, 3, m_warning_at_line_1588).
param(p_line_offset_2244, 4, m_warning_at_line_1588).
method_invoc(rhino_error_reporter_1_expr23, m_report_10, line(rhino_error_reporter_1, 114)).
argument(rhino_error_reporter_1_expr24, 1, rhino_error_reporter_1_expr23).
ref(f_compiler_2237, rhino_error_reporter_1_expr23, line(rhino_error_reporter_1, 114)).
param(p_message_2245, 1, m_error_at_line_1589).
param(p_source_name_2246, 2, m_error_at_line_1589).
param(p_line_2247, 3, m_error_at_line_1589).
param(p_line_offset_2248, 4, m_error_at_line_1589).
param(p_message_2249, 1, m_make_error_1590).
param(p_source_name_2250, 2, m_make_error_1590).
param(p_line_2251, 3, m_make_error_1590).
param(p_line_offset_2252, 4, m_make_error_1590).
param(p_default_level_2253, 5, m_make_error_1590).
ref(rhino_error_reporter_1_expr25, rhino_error_reporter_1_stmt8, line(rhino_error_reporter_1, 129)).
method_invoc(rhino_error_reporter_1_expr25, m_entry_set_1591, line(rhino_error_reporter_1, 129)).
ref(f_type_map_2238, rhino_error_reporter_1_expr25, line(rhino_error_reporter_1, 129)).
method_invoc(rhino_error_reporter_1_expr26, m_matches_1592, line(rhino_error_reporter_1, 130)).
ref(rhino_error_reporter_1_expr27, rhino_error_reporter_1_expr26, line(rhino_error_reporter_1, 130)).
method_invoc(rhino_error_reporter_1_expr27, m_matcher_1593, line(rhino_error_reporter_1, 130)).
argument(p_message_2249, 1, rhino_error_reporter_1_expr27).
ref(rhino_error_reporter_1_expr28, rhino_error_reporter_1_expr27, line(rhino_error_reporter_1, 130)).
method_invoc(rhino_error_reporter_1_expr28, m_get_key_1594, line(rhino_error_reporter_1, 130)).
ref(v_entry_2254, rhino_error_reporter_1_expr28, line(rhino_error_reporter_1, 130)).
return(rhino_error_reporter_1_expr29, m_make_error_1590, line(rhino_error_reporter_1, 131)).
method_invoc(rhino_error_reporter_1_expr29, m_make_1157, line(rhino_error_reporter_1, 131)).
argument(p_source_name_2250, 1, rhino_error_reporter_1_expr29).
argument(p_line_2251, 2, rhino_error_reporter_1_expr29).
argument(p_line_offset_2252, 3, rhino_error_reporter_1_expr29).
argument(rhino_error_reporter_1_expr30, 4, rhino_error_reporter_1_expr29).
argument(p_message_2249, 5, rhino_error_reporter_1_expr29).
ref(t_jserror_59, rhino_error_reporter_1_expr29, line(rhino_error_reporter_1, 131)).
param(p_compiler_2255, 1, m_old_rhino_error_reporter_1587).
method_invoc(rhino_error_reporter_1_expr31, m_rhino_error_reporter_1582, line(rhino_error_reporter_1, 144)).
argument(p_compiler_2255, 1, rhino_error_reporter_1_expr31).
param(p_message_2256, 1, m_error_1595).
param(p_source_name_2257, 2, m_error_1595).
param(p_line_2258, 3, m_error_1595).
param(p_line_offset_2259, 4, m_error_1595).
param(p_message_2260, 1, m_warning_1596).
param(p_source_name_2261, 2, m_warning_1596).
param(p_line_2262, 3, m_warning_1596).
param(p_line_offset_2263, 4, m_warning_1596).
method_invoc(rhino_error_reporter_1_expr32, m_warning_at_line_1588, line(rhino_error_reporter_1, 156)).
argument(p_message_2260, 1, rhino_error_reporter_1_expr32).
argument(p_source_name_2261, 2, rhino_error_reporter_1_expr32).
argument(p_line_2262, 3, rhino_error_reporter_1_expr32).
argument(p_line_offset_2263, 4, rhino_error_reporter_1_expr32).
param(p_compiler_2264, 1, m_new_rhino_error_reporter_1585).
method_invoc(rhino_error_reporter_1_expr33, m_rhino_error_reporter_1582, line(rhino_error_reporter_1, 164)).
argument(p_compiler_2264, 1, rhino_error_reporter_1_expr33).
param(p_message_2265, 1, m_runtime_error_1597).
param(p_source_name_2266, 2, m_runtime_error_1597).
param(p_line_2267, 3, m_runtime_error_1597).
param(p_line_source_2268, 4, m_runtime_error_1597).
param(p_line_offset_2269, 5, m_runtime_error_1597).
param(p_message_2270, 1, m_error_1598).
param(p_source_name_2271, 2, m_error_1598).
param(p_line_2272, 3, m_error_1598).
param(p_source_line_2273, 4, m_error_1598).
param(p_line_offset_2274, 5, m_error_1598).
param(p_message_2275, 1, m_error_1599).
param(p_source_name_2276, 2, m_error_1599).
param(p_offset_2277, 3, m_error_1599).
param(p_length_2278, 4, m_error_1599).
param(p_message_2279, 1, m_warning_1600).
param(p_source_name_2280, 2, m_warning_1600).
param(p_line_2281, 3, m_warning_1600).
param(p_source_line_2282, 4, m_warning_1600).
param(p_line_offset_2283, 5, m_warning_1600).
param(p_message_2284, 1, m_warning_1601).
param(p_source_name_2285, 2, m_warning_1601).
param(p_offset_2286, 3, m_warning_1601).
param(p_length_2287, 4, m_warning_1601).

%irfactory_1 - com.google.javascript.jscomp.parsing.IRFactory
assign(f_allowed_directives_3564, irfactory_1_expr1, line(irfactory_1, 107)).
assign(f_es5_reserved_keywords_3565, irfactory_1_expr2, line(irfactory_1, 110)).
assign(f_es5_strict_reserved_keywords_3566, irfactory_1_expr3, line(irfactory_1, 114)).
assign(f_parsed_comments_3567, irfactory_1_expr4, line(irfactory_1, 122)).
method_invoc(irfactory_1_expr4, m_new_hash_set_522, line(irfactory_1, 122)).
ref(t_sets_12, irfactory_1_expr4, line(irfactory_1, 122)).
assign(f_root_node_js_doc_holder_3568, irfactory_1_expr5, line(irfactory_1, 126)).
method_invoc(irfactory_1_expr5, m_node_3004, line(irfactory_1, 126)).
argument(q_script_84, 1, irfactory_1_expr5).
ref(t_token_51, q_script_84, line(irfactory_1, 126)).
assign(f_file_level_js_doc_builder_3569, irfactory_1_expr6, line(irfactory_1, 127)).
assign(f_file_overview_info_3570, irfactory_1_literal1, line(irfactory_1, 129)).
param(p_source_string_3571, 1, m_irfactory_3343).
param(p_source_file_3572, 2, m_irfactory_3343).
param(p_config_3573, 3, m_irfactory_3343).
param(p_error_reporter_3574, 4, m_irfactory_3343).
assign(f_source_string_3575, p_source_string_3571, line(irfactory_1, 141)).
assign(f_source_file_3576, p_source_file_3572, line(irfactory_1, 142)).
assign(f_source_name_3577, irfactory_1_expr15, line(irfactory_1, 145)).
cond_expr(irfactory_1_expr17, irfactory_1_literal2, irfactory_1_expr18, line(irfactory_1, 145)).
method_invoc(irfactory_1_expr18, m_get_name_3344, line(irfactory_1, 145)).
ref(p_source_file_3572, irfactory_1_expr18, line(irfactory_1, 145)).
assign(f_config_3578, p_config_3573, line(irfactory_1, 147)).
assign(f_error_reporter_3579, p_error_reporter_3574, line(irfactory_1, 148)).
assign(f_transform_dispatcher_3580, irfactory_1_expr27, line(irfactory_1, 149)).
method_invoc(irfactory_1_expr27, m_transform_dispatcher_3345, line(irfactory_1, 149)).
assign(f_template_node_3581, irfactory_1_expr31, line(irfactory_1, 151)).
method_invoc(irfactory_1_expr31, m_create_template_node_3346, line(irfactory_1, 151)).
ref(p_config_3573, q_language_mode_84, line(irfactory_1, 153)).
assign(f_reserved_keywords_3582, f_es5_reserved_keywords_3565, line(irfactory_1, 159)).
assign(v_template_node_3583, irfactory_1_expr34, line(irfactory_1, 174)).
method_invoc(irfactory_1_expr34, m_node_3004, line(irfactory_1, 174)).
argument(q_script_85, 1, irfactory_1_expr34).
ref(t_token_51, q_script_85, line(irfactory_1, 174)).
method_invoc(irfactory_1_expr35, m_set_static_source_file_1190, line(irfactory_1, 175)).
argument(f_source_file_3576, 1, irfactory_1_expr35).
ref(v_template_node_3583, irfactory_1_expr35, line(irfactory_1, 175)).
return(v_template_node_3583, m_create_template_node_3346, line(irfactory_1, 176)).
param(p_node_3584, 1, m_transform_tree_3347).
param(p_source_file_3585, 2, m_transform_tree_3347).
param(p_source_string_3586, 3, m_transform_tree_3347).
param(p_config_3587, 4, m_transform_tree_3347).
param(p_error_reporter_3588, 5, m_transform_tree_3347).
assign(v_ir_factory_3589, irfactory_1_expr36, line(irfactory_1, 184)).
method_invoc(irfactory_1_expr36, m_irfactory_3343, line(irfactory_1, 184)).
argument(p_source_string_3586, 1, irfactory_1_expr36).
argument(p_source_file_3585, 2, irfactory_1_expr36).
argument(p_config_3587, 3, irfactory_1_expr36).
argument(p_error_reporter_3588, 4, irfactory_1_expr36).
assign(v_ir_node_3590, irfactory_1_expr37, line(irfactory_1, 186)).
method_invoc(irfactory_1_expr37, m_transform_3348, line(irfactory_1, 186)).
argument(p_node_3584, 1, irfactory_1_expr37).
ref(v_ir_factory_3589, irfactory_1_expr37, line(irfactory_1, 186)).
method_invoc(irfactory_1_expr39, m_get_comments_3349, line(irfactory_1, 188)).
ref(p_node_3584, irfactory_1_expr39, line(irfactory_1, 188)).
ref(irfactory_1_expr40, irfactory_1_stmt17, line(irfactory_1, 189)).
method_invoc(irfactory_1_expr40, m_get_comments_3349, line(irfactory_1, 189)).
ref(p_node_3584, irfactory_1_expr40, line(irfactory_1, 189)).
method_invoc(irfactory_1_expr43, m_get_comment_type_3350, line(irfactory_1, 190)).
ref(v_comment_3591, irfactory_1_expr43, line(irfactory_1, 190)).
ref(t_comment_type_90, q_jsdoc_85, line(irfactory_1, 190)).
method_invoc(irfactory_1_expr45, m_get_comment_type_3350, line(irfactory_1, 193)).
ref(v_comment_3591, irfactory_1_expr45, line(irfactory_1, 193)).
ref(t_comment_type_90, q_block_comment_86, line(irfactory_1, 193)).
method_invoc(irfactory_1_expr46, m_set_file_overview_js_doc_3351, line(irfactory_1, 199)).
argument(v_ir_node_3590, 1, irfactory_1_expr46).
ref(v_ir_factory_3589, irfactory_1_expr46, line(irfactory_1, 199)).
return(v_ir_node_3590, m_transform_tree_3347, line(irfactory_1, 201)).
param(p_ir_node_3592, 1, m_set_file_overview_js_doc_3351).
assign(v_root_node_js_doc_3593, irfactory_1_expr47, line(irfactory_1, 208)).
method_invoc(irfactory_1_expr47, m_get_jsdoc_info_1492, line(irfactory_1, 208)).
ref(f_root_node_js_doc_holder_3568, irfactory_1_expr47, line(irfactory_1, 208)).
param(p_node_3594, 1, m_transform_block_3352).
param(p_comment_3595, 1, m_handle_block_comment_3353).
param(p_js_doc_parser_3596, 1, m_handle_possible_file_overview_js_doc_3354).
method_invoc(irfactory_1_expr51, m_get_file_overview_jsdoc_info_3355, line(irfactory_1, 260)).
ref(p_js_doc_parser_3596, irfactory_1_expr51, line(irfactory_1, 260)).
return(irfactory_1_literal7, m_handle_possible_file_overview_js_doc_3354, line(irfactory_1, 264)).
param(p_comment_3597, 1, m_handle_possible_file_overview_js_doc_3356).
param(p_ir_node_3598, 2, m_handle_possible_file_overview_js_doc_3356).
param(p_node_3599, 1, m_handle_js_doc_3357).
param(p_ir_node_3600, 2, m_handle_js_doc_3357).
assign(v_comment_3601, irfactory_1_expr52, line(irfactory_1, 274)).
method_invoc(irfactory_1_expr52, m_get_js_doc_node_3358, line(irfactory_1, 274)).
ref(p_node_3599, irfactory_1_expr52, line(irfactory_1, 274)).
assign(v_js_doc_parser_3602, irfactory_1_expr54, line(irfactory_1, 276)).
method_invoc(irfactory_1_expr54, m_create_js_doc_info_parser_3359, line(irfactory_1, 276)).
argument(v_comment_3601, 1, irfactory_1_expr54).
argument(p_ir_node_3600, 2, irfactory_1_expr54).
method_invoc(irfactory_1_expr55, m_add_67, line(irfactory_1, 277)).
argument(v_comment_3601, 1, irfactory_1_expr55).
ref(f_parsed_comments_3567, irfactory_1_expr55, line(irfactory_1, 277)).
method_invoc(irfactory_1_expr57, m_handle_possible_file_overview_js_doc_3354, line(irfactory_1, 278)).
argument(v_js_doc_parser_3602, 1, irfactory_1_expr57).
assign(v_info_3603, irfactory_1_expr58, line(irfactory_1, 279)).
method_invoc(irfactory_1_expr58, m_retrieve_and_reset_parsed_jsdoc_info_3360, line(irfactory_1, 279)).
ref(v_js_doc_parser_3602, irfactory_1_expr58, line(irfactory_1, 279)).
method_invoc(irfactory_1_expr60, m_validate_type_annotations_3361, line(irfactory_1, 281)).
argument(v_info_3603, 1, irfactory_1_expr60).
argument(p_node_3599, 2, irfactory_1_expr60).
argument(p_ir_node_3600, 3, irfactory_1_expr60).
return(v_info_3603, m_handle_js_doc_3357, line(irfactory_1, 283)).
return(irfactory_1_literal10, m_handle_js_doc_3357, line(irfactory_1, 286)).
param(p_info_3604, 1, m_validate_type_annotations_3361).
param(p_node_3605, 2, m_validate_type_annotations_3361).
param(p_ir_node_3606, 3, m_validate_type_annotations_3361).
method_invoc(irfactory_1_expr61, m_has_type_3022, line(irfactory_1, 291)).
ref(p_info_3604, irfactory_1_expr61, line(irfactory_1, 291)).
param(p_node_3607, 1, m_is_prop_access_3362).
param(p_node_3608, 1, m_is_expr_stmt_3363).
param(p_node_3609, 1, m_transform_3348).
assign(v_ir_node_3610, irfactory_1_expr62, line(irfactory_1, 354)).
method_invoc(irfactory_1_expr62, m_just_transform_3364, line(irfactory_1, 354)).
argument(p_node_3609, 1, irfactory_1_expr62).
assign(v_js_doc_info_3611, irfactory_1_expr63, line(irfactory_1, 355)).
method_invoc(irfactory_1_expr63, m_handle_js_doc_3357, line(irfactory_1, 355)).
argument(p_node_3609, 1, irfactory_1_expr63).
argument(v_ir_node_3610, 2, irfactory_1_expr63).
assign(v_ir_node_3610, irfactory_1_expr66, line(irfactory_1, 357)).
method_invoc(irfactory_1_expr66, m_maybe_inject_cast_node_3365, line(irfactory_1, 357)).
argument(p_node_3609, 1, irfactory_1_expr66).
argument(v_js_doc_info_3611, 2, irfactory_1_expr66).
argument(v_ir_node_3610, 3, irfactory_1_expr66).
method_invoc(irfactory_1_expr67, m_set_jsdoc_info_3366, line(irfactory_1, 358)).
argument(v_js_doc_info_3611, 1, irfactory_1_expr67).
ref(v_ir_node_3610, irfactory_1_expr67, line(irfactory_1, 358)).
method_invoc(irfactory_1_expr68, m_set_source_info_3367, line(irfactory_1, 360)).
argument(v_ir_node_3610, 1, irfactory_1_expr68).
argument(p_node_3609, 2, irfactory_1_expr68).
return(v_ir_node_3610, m_transform_3348, line(irfactory_1, 361)).
param(p_node_3612, 1, m_maybe_inject_cast_node_3365).
param(p_info_3613, 2, m_maybe_inject_cast_node_3365).
param(p_ir_node_3614, 3, m_maybe_inject_cast_node_3365).
method_invoc(irfactory_1_expr73, m_get_type_3368, line(irfactory_1, 365)).
ref(p_node_3612, irfactory_1_expr73, line(irfactory_1, 365)).
return(p_ir_node_3614, m_maybe_inject_cast_node_3365, line(irfactory_1, 372)).
param(p_node_3615, 1, m_transform_name_as_string_3369).
param(p_literal_node_3616, 1, m_transform_number_as_string_3370).
param(p_value_3617, 1, m_get_string_value_3371).
param(p_ir_node_3618, 1, m_set_source_info_3367).
param(p_node_3619, 2, m_set_source_info_3367).
method_invoc(irfactory_1_expr75, m_get_lineno_3372, line(irfactory_1, 407)).
ref(p_ir_node_3618, irfactory_1_expr75, line(irfactory_1, 407)).
assign(v_lineno_3620, irfactory_1_expr77, line(irfactory_1, 411)).
method_invoc(irfactory_1_expr77, m_get_lineno_3373, line(irfactory_1, 411)).
ref(p_node_3619, irfactory_1_expr77, line(irfactory_1, 411)).
method_invoc(irfactory_1_expr78, m_set_lineno_3374, line(irfactory_1, 412)).
argument(v_lineno_3620, 1, irfactory_1_expr78).
ref(p_ir_node_3618, irfactory_1_expr78, line(irfactory_1, 412)).
assign(v_charno_3621, irfactory_1_expr79, line(irfactory_1, 413)).
method_invoc(irfactory_1_expr79, m_position_2charno_3375, line(irfactory_1, 413)).
argument(irfactory_1_expr80, 1, irfactory_1_expr79).
method_invoc(irfactory_1_expr80, m_get_absolute_position_3376, line(irfactory_1, 413)).
ref(p_node_3619, irfactory_1_expr80, line(irfactory_1, 413)).
method_invoc(irfactory_1_expr81, m_set_charno_3377, line(irfactory_1, 414)).
argument(v_charno_3621, 1, irfactory_1_expr81).
ref(p_ir_node_3618, irfactory_1_expr81, line(irfactory_1, 414)).
method_invoc(irfactory_1_expr82, m_maybe_set_length_from_3378, line(irfactory_1, 415)).
argument(p_ir_node_3618, 1, irfactory_1_expr82).
argument(p_node_3619, 2, irfactory_1_expr82).
param(p_node_3622, 1, m_create_js_doc_info_parser_3359).
param(p_ir_node_3623, 2, m_create_js_doc_info_parser_3359).
assign(v_comment_3624, irfactory_1_expr83, line(irfactory_1, 431)).
method_invoc(irfactory_1_expr83, m_get_value_3379, line(irfactory_1, 431)).
ref(p_node_3622, irfactory_1_expr83, line(irfactory_1, 431)).
assign(v_lineno_3625, irfactory_1_expr84, line(irfactory_1, 432)).
method_invoc(irfactory_1_expr84, m_get_lineno_3373, line(irfactory_1, 432)).
ref(p_node_3622, irfactory_1_expr84, line(irfactory_1, 432)).
assign(v_position_3626, irfactory_1_expr85, line(irfactory_1, 433)).
method_invoc(irfactory_1_expr85, m_get_absolute_position_3376, line(irfactory_1, 433)).
ref(p_node_3622, irfactory_1_expr85, line(irfactory_1, 433)).
assign(v_num_opening_chars_3627, irfactory_1_literal13, line(irfactory_1, 436)).
assign(v_jsdoc_parser_3628, irfactory_1_expr86, line(irfactory_1, 437)).
method_invoc(irfactory_1_expr87, m_set_file_level_js_doc_builder_3380, line(irfactory_1, 446)).
argument(f_file_level_js_doc_builder_3569, 1, irfactory_1_expr87).
ref(v_jsdoc_parser_3628, irfactory_1_expr87, line(irfactory_1, 446)).
method_invoc(irfactory_1_expr88, m_set_file_overview_jsdoc_info_3381, line(irfactory_1, 447)).
argument(f_file_overview_info_3570, 1, irfactory_1_expr88).
ref(v_jsdoc_parser_3628, irfactory_1_expr88, line(irfactory_1, 447)).
method_invoc(irfactory_1_expr89, m_parse_3382, line(irfactory_1, 448)).
ref(v_jsdoc_parser_3628, irfactory_1_expr89, line(irfactory_1, 448)).
return(v_jsdoc_parser_3628, m_create_js_doc_info_parser_3359, line(irfactory_1, 449)).
param(p_node_3629, 1, m_maybe_set_length_from_3378).
param(p_source_3630, 2, m_maybe_set_length_from_3378).
ref(f_config_3578, q_is_ide_mode_88, line(irfactory_1, 454)).
param(p_position_3631, 1, m_position_2charno_3375).
assign(v_line_index_3632, irfactory_1_expr90, line(irfactory_1, 460)).
method_invoc(irfactory_1_expr90, m_last_index_of_3383, line(irfactory_1, 460)).
argument(irfactory_1_literal14, 1, irfactory_1_expr90).
argument(p_position_3631, 2, irfactory_1_expr90).
ref(f_source_string_3575, irfactory_1_expr90, line(irfactory_1, 460)).
return(p_position_3631, m_position_2charno_3375, line(irfactory_1, 462)).
return(irfactory_1_expr93, m_position_2charno_3375, line(irfactory_1, 465)).
param(p_node_3633, 1, m_just_transform_3364).
return(irfactory_1_expr94, m_just_transform_3364, line(irfactory_1, 470)).
method_invoc(irfactory_1_expr94, m_process_3384, line(irfactory_1, 470)).
argument(p_node_3633, 1, irfactory_1_expr94).
ref(f_transform_dispatcher_3580, irfactory_1_expr94, line(irfactory_1, 470)).
param(p_n_3634, 1, m_process_generic_3385).
assign(v_node_3635, irfactory_1_expr95, line(irfactory_1, 476)).
method_invoc(irfactory_1_expr95, m_new_node_3386, line(irfactory_1, 476)).
argument(irfactory_1_expr96, 1, irfactory_1_expr95).
method_invoc(irfactory_1_expr96, m_transform_token_type_3387, line(irfactory_1, 476)).
argument(irfactory_1_expr97, 1, irfactory_1_expr96).
method_invoc(irfactory_1_expr97, m_get_type_3368, line(irfactory_1, 476)).
ref(p_n_3634, irfactory_1_expr97, line(irfactory_1, 476)).
ref(p_n_3634, irfactory_1_stmt69, line(irfactory_1, 477)).
return(v_node_3635, m_process_generic_3385, line(irfactory_1, 480)).
param(p_n_3637, 1, m_transform_as_string_3388).
param(p_literal_node_3638, 1, m_process_array_literal_3389).
param(p_assignment_node_3639, 1, m_process_assignment_3390).
param(p_root_node_3640, 1, m_process_ast_root_3391).
assign(v_node_3641, irfactory_1_expr98, line(irfactory_1, 536)).
method_invoc(irfactory_1_expr98, m_new_node_3386, line(irfactory_1, 536)).
argument(q_script_89, 1, irfactory_1_expr98).
ref(t_token_51, q_script_89, line(irfactory_1, 536)).
ref(p_root_node_3640, irfactory_1_stmt72, line(irfactory_1, 537)).
method_invoc(irfactory_1_expr99, m_add_child_to_back_3392, line(irfactory_1, 538)).
argument(irfactory_1_expr100, 1, irfactory_1_expr99).
ref(v_node_3641, irfactory_1_expr99, line(irfactory_1, 538)).
method_invoc(irfactory_1_expr100, m_transform_3348, line(irfactory_1, 538)).
argument(irfactory_1_expr101, 1, irfactory_1_expr100).
assign(irfactory_1_expr101, v_child_3642, line(irfactory_1, 538)).
method_invoc(irfactory_1_expr102, m_parse_directives_3393, line(irfactory_1, 540)).
argument(v_node_3641, 1, irfactory_1_expr102).
return(v_node_3641, m_process_ast_root_3391, line(irfactory_1, 541)).
param(p_node_3643, 1, m_parse_directives_3393).
assign(v_directives_3644, irfactory_1_literal17, line(irfactory_1, 555)).
method_invoc(irfactory_1_expr103, m_is_directive_3394, line(irfactory_1, 556)).
argument(irfactory_1_expr104, 1, irfactory_1_expr103).
method_invoc(irfactory_1_expr104, m_get_first_child_828, line(irfactory_1, 556)).
ref(p_node_3643, irfactory_1_expr104, line(irfactory_1, 556)).
param(p_n_3645, 1, m_is_directive_3394).
return(irfactory_1_literal20, m_is_directive_3394, line(irfactory_1, 571)).
assign(v_n_type_3646, irfactory_1_expr107, line(irfactory_1, 573)).
method_invoc(irfactory_1_expr107, m_get_type_824, line(irfactory_1, 573)).
ref(p_n_3645, irfactory_1_expr107, line(irfactory_1, 573)).
return(irfactory_1_expr108, m_is_directive_3394, line(irfactory_1, 574)).
ref(t_token_51, q_expr_result_89, line(irfactory_1, 574)).
param(p_block_node_3647, 1, m_process_block_3395).
return(irfactory_1_expr111, m_process_block_3395, line(irfactory_1, 581)).
method_invoc(irfactory_1_expr111, m_process_generic_3385, line(irfactory_1, 581)).
argument(p_block_node_3647, 1, irfactory_1_expr111).
param(p_statement_node_3648, 1, m_process_break_statement_3396).
param(p_clause_node_3649, 1, m_process_catch_clause_3397).
param(p_expr_node_3650, 1, m_process_conditional_expression_3398).
param(p_statement_node_3651, 1, m_process_continue_statement_3399).
param(p_loop_node_3652, 1, m_process_do_loop_3400).
param(p_get_node_3653, 1, m_process_element_get_3401).
param(p_expr_node_3654, 1, m_process_empty_expression_3402).
param(p_expr_node_3655, 1, m_process_empty_statement_3403).
param(p_statement_node_3656, 1, m_process_expression_statement_3404).
param(p_loop_node_3657, 1, m_process_for_in_loop_3405).
param(p_loop_node_3658, 1, m_process_for_loop_3406).
param(p_call_node_3659, 1, m_process_function_call_3407).
param(p_function_node_3660, 1, m_process_function_node_3408).
assign(v_name_3661, irfactory_1_expr112, line(irfactory_1, 711)).
method_invoc(irfactory_1_expr112, m_get_function_name_3409, line(irfactory_1, 711)).
ref(p_function_node_3660, irfactory_1_expr112, line(irfactory_1, 711)).
assign(v_is_unnamed_function_3662, irfactory_1_literal21, line(irfactory_1, 712)).
assign(v_node_3663, irfactory_1_expr114, line(irfactory_1, 728)).
method_invoc(irfactory_1_expr114, m_new_node_3386, line(irfactory_1, 728)).
argument(q_function_90, 1, irfactory_1_expr114).
ref(t_token_51, q_function_90, line(irfactory_1, 728)).
assign(v_new_name_3664, irfactory_1_expr115, line(irfactory_1, 729)).
method_invoc(irfactory_1_expr115, m_transform_3348, line(irfactory_1, 729)).
argument(v_name_3661, 1, irfactory_1_expr115).
method_invoc(irfactory_1_expr116, m_add_child_to_back_3392, line(irfactory_1, 743)).
argument(v_new_name_3664, 1, irfactory_1_expr116).
ref(v_node_3663, irfactory_1_expr116, line(irfactory_1, 743)).
assign(v_lp_3665, irfactory_1_expr117, line(irfactory_1, 744)).
method_invoc(irfactory_1_expr117, m_new_node_3386, line(irfactory_1, 744)).
argument(q_param_list_90, 1, irfactory_1_expr117).
ref(t_token_51, q_param_list_90, line(irfactory_1, 744)).
assign(v_fn_name_3666, irfactory_1_expr118, line(irfactory_1, 751)).
method_invoc(irfactory_1_expr118, m_get_function_name_3409, line(irfactory_1, 751)).
ref(p_function_node_3660, irfactory_1_expr118, line(irfactory_1, 751)).
method_invoc(irfactory_1_expr120, m_set_lineno_3374, line(irfactory_1, 753)).
argument(irfactory_1_expr121, 1, irfactory_1_expr120).
ref(v_lp_3665, irfactory_1_expr120, line(irfactory_1, 753)).
method_invoc(irfactory_1_expr121, m_get_lineno_3373, line(irfactory_1, 753)).
ref(v_fn_name_3666, irfactory_1_expr121, line(irfactory_1, 753)).
assign(v_lparen_charno_3667, irfactory_1_expr122, line(irfactory_1, 757)).
method_invoc(irfactory_1_expr123, m_get_lp_3410, line(irfactory_1, 757)).
ref(p_function_node_3660, irfactory_1_expr123, line(irfactory_1, 757)).
method_invoc(irfactory_1_expr124, m_set_charno_3377, line(irfactory_1, 760)).
argument(irfactory_1_expr125, 1, irfactory_1_expr124).
ref(v_lp_3665, irfactory_1_expr124, line(irfactory_1, 760)).
method_invoc(irfactory_1_expr125, m_position_2charno_3375, line(irfactory_1, 760)).
argument(v_lparen_charno_3667, 1, irfactory_1_expr125).
ref(irfactory_1_expr126, irfactory_1_stmt97, line(irfactory_1, 761)).
method_invoc(irfactory_1_expr126, m_get_params_3411, line(irfactory_1, 761)).
ref(p_function_node_3660, irfactory_1_expr126, line(irfactory_1, 761)).
method_invoc(irfactory_1_expr127, m_add_child_to_back_3392, line(irfactory_1, 778)).
argument(v_lp_3665, 1, irfactory_1_expr127).
ref(v_node_3663, irfactory_1_expr127, line(irfactory_1, 778)).
assign(v_body_node_3669, irfactory_1_expr128, line(irfactory_1, 780)).
method_invoc(irfactory_1_expr128, m_transform_3348, line(irfactory_1, 780)).
argument(irfactory_1_expr129, 1, irfactory_1_expr128).
method_invoc(irfactory_1_expr129, m_get_body_3412, line(irfactory_1, 780)).
ref(p_function_node_3660, irfactory_1_expr129, line(irfactory_1, 780)).
method_invoc(irfactory_1_expr131, m_is_block_841, line(irfactory_1, 781)).
ref(v_body_node_3669, irfactory_1_expr131, line(irfactory_1, 781)).
method_invoc(irfactory_1_expr132, m_parse_directives_3393, line(irfactory_1, 788)).
argument(v_body_node_3669, 1, irfactory_1_expr132).
method_invoc(irfactory_1_expr133, m_add_child_to_back_3392, line(irfactory_1, 789)).
argument(v_body_node_3669, 1, irfactory_1_expr133).
ref(v_node_3663, irfactory_1_expr133, line(irfactory_1, 789)).
return(v_node_3663, m_process_function_node_3408, line(irfactory_1, 790)).
param(p_statement_node_3670, 1, m_process_if_statement_3413).
param(p_expr_node_3671, 1, m_process_infix_expression_3414).
param(p_literal_node_3672, 1, m_process_keyword_literal_3415).
param(p_label_node_3673, 1, m_process_label_3416).
param(p_statement_node_3674, 1, m_process_labeled_statement_3417).
param(p_name_node_3675, 1, m_process_name_3418).
return(irfactory_1_expr134, m_process_name_3418, line(irfactory_1, 853)).
method_invoc(irfactory_1_expr134, m_process_name_3419, line(irfactory_1, 853)).
argument(p_name_node_3675, 1, irfactory_1_expr134).
argument(irfactory_1_literal24, 2, irfactory_1_expr134).
param(p_name_node_3676, 1, m_process_name_3419).
param(p_as_string_3677, 2, m_process_name_3419).
method_invoc(irfactory_1_expr135, m_is_reserved_keyword_3420, line(irfactory_1, 860)).
argument(irfactory_1_expr136, 1, irfactory_1_expr135).
method_invoc(irfactory_1_expr136, m_get_identifier_3421, line(irfactory_1, 860)).
ref(p_name_node_3676, irfactory_1_expr136, line(irfactory_1, 860)).
return(irfactory_1_expr137, m_process_name_3419, line(irfactory_1, 866)).
method_invoc(irfactory_1_expr137, m_new_string_node_3422, line(irfactory_1, 866)).
argument(q_name_91, 1, irfactory_1_expr137).
argument(irfactory_1_expr138, 2, irfactory_1_expr137).
ref(t_token_51, q_name_91, line(irfactory_1, 866)).
method_invoc(irfactory_1_expr138, m_get_identifier_3421, line(irfactory_1, 866)).
ref(p_name_node_3676, irfactory_1_expr138, line(irfactory_1, 866)).
param(p_identifier_3678, 1, m_is_reserved_keyword_3420).
return(irfactory_1_expr139, m_is_reserved_keyword_3420, line(irfactory_1, 874)).
method_invoc(irfactory_1_expr141, m_contains_961, line(irfactory_1, 874)).
argument(p_identifier_3678, 1, irfactory_1_expr141).
ref(f_reserved_keywords_3582, irfactory_1_expr141, line(irfactory_1, 874)).
param(p_expr_node_3679, 1, m_process_new_expression_3423).
param(p_literal_node_3680, 1, m_process_number_literal_3424).
param(p_literal_node_3681, 1, m_process_object_literal_3425).
param(p_fn_node_3682, 1, m_get_fn_param_node_3426).
param(p_property_node_3683, 1, m_process_object_property_3427).
param(p_expr_node_3684, 1, m_process_parenthesized_expression_3428).
param(p_get_node_3685, 1, m_process_property_get_3429).
param(p_literal_node_3686, 1, m_process_reg_exp_literal_3430).
param(p_statement_node_3687, 1, m_process_return_statement_3431).
param(p_scope_node_3688, 1, m_process_scope_3432).
param(p_literal_node_3689, 1, m_process_string_literal_3433).
param(p_case_node_3690, 1, m_process_switch_case_3434).
param(p_statement_node_3691, 1, m_process_switch_statement_3435).
param(p_statement_node_3692, 1, m_process_throw_statement_3436).
param(p_statement_node_3693, 1, m_process_try_statement_3437).
param(p_expr_node_3694, 1, m_process_unary_expression_3438).
param(p_target_3695, 1, m_valid_assignment_target_3439).
param(p_declaration_node_3696, 1, m_process_variable_declaration_3440).
param(p_initializer_node_3697, 1, m_process_variable_initializer_3441).
param(p_loop_node_3698, 1, m_process_while_loop_3442).
param(p_statement_node_3699, 1, m_process_with_statement_3443).
param(p_node_3700, 1, m_process_illegal_token_3444).
param(p_node_3701, 1, m_report_destructuring_assign_3445).
param(p_node_3702, 1, m_report_getter_3446).
param(p_node_3703, 1, m_report_setter_3447).
param(p_node_3704, 1, m_report_getter_param_3448).
param(p_node_3705, 1, m_report_setter_param_3449).
param(p_token_3706, 1, m_transform_token_type_3387).
return(q_block_92, m_transform_token_type_3387, line(irfactory_1, 1399)).
ref(t_token_51, q_block_92, line(irfactory_1, 1399)).
param(p_type_3707, 1, m_new_node_3386).
return(irfactory_1_expr142, m_new_node_3386, line(irfactory_1, 1423)).
method_invoc(irfactory_1_expr142, m_clone_props_from_3450, line(irfactory_1, 1423)).
argument(f_template_node_3581, 1, irfactory_1_expr142).
ref(irfactory_1_expr143, irfactory_1_expr142, line(irfactory_1, 1423)).
method_invoc(irfactory_1_expr143, m_node_3004, line(irfactory_1, 1423)).
argument(p_type_3707, 1, irfactory_1_expr143).
param(p_type_3708, 1, m_new_node_3451).
param(p_child_1_3709, 2, m_new_node_3451).
param(p_type_3710, 1, m_new_node_3452).
param(p_child_1_3711, 2, m_new_node_3452).
param(p_child_2_3712, 3, m_new_node_3452).
param(p_type_3713, 1, m_new_node_3453).
param(p_child_1_3714, 2, m_new_node_3453).
param(p_child_2_3715, 3, m_new_node_3453).
param(p_child_3_3716, 4, m_new_node_3453).
param(p_value_3717, 1, m_new_string_node_3454).
param(p_type_3718, 1, m_new_string_node_3422).
param(p_value_3719, 2, m_new_string_node_3422).
return(irfactory_1_expr144, m_new_string_node_3422, line(irfactory_1, 1443)).
method_invoc(irfactory_1_expr144, m_clone_props_from_3450, line(irfactory_1, 1443)).
argument(f_template_node_3581, 1, irfactory_1_expr144).
ref(irfactory_1_expr145, irfactory_1_expr144, line(irfactory_1, 1443)).
method_invoc(irfactory_1_expr145, m_new_string_3455, line(irfactory_1, 1443)).
argument(p_type_3718, 1, irfactory_1_expr145).
argument(p_value_3719, 2, irfactory_1_expr145).
ref(t_node_92, irfactory_1_expr145, line(irfactory_1, 1443)).
param(p_value_3720, 1, m_new_number_node_3456).

%object_type_1 - com.google.javascript.rhino.jstype.ObjectType
assign(f_doc_info_5287, object_type_1_literal1, line(object_type_1, 84)).
assign(f_unknown_5288, object_type_1_literal2, line(object_type_1, 85)).
param(p_registry_5289, 1, m_object_type_4742).
method_invoc(object_type_1_expr1, m_jstype_4257, line(object_type_1, 88)).
argument(p_registry_5289, 1, object_type_1_expr1).
param(p_registry_5290, 1, m_object_type_4743).
param(p_template_keys_5291, 2, m_object_type_4743).
param(p_templatized_types_5292, 3, m_object_type_4743).
method_invoc(object_type_1_expr2, m_jstype_4448, line(object_type_1, 93)).
argument(p_registry_5290, 1, object_type_1_expr2).
argument(p_template_keys_5291, 2, object_type_1_expr2).
argument(p_templatized_types_5292, 3, object_type_1_expr2).
param(p_name_5293, 1, m_get_slot_4747).
param(p_name_5294, 1, m_get_own_slot_4748).
return(object_type_1_expr3, m_get_own_slot_4748, line(object_type_1, 122)).
method_invoc(object_type_1_expr3, m_get_own_property_4749, line(object_type_1, 122)).
argument(p_name_5294, 1, object_type_1_expr3).
ref(object_type_1_expr4, object_type_1_expr3, line(object_type_1, 122)).
method_invoc(object_type_1_expr4, m_get_property_map_4746, line(object_type_1, 122)).
param(p_info_5295, 1, m_set_jsdoc_info_4754).
assign(f_visited_5296, object_type_1_literal3, line(object_type_1, 178)).
assign(v_p_5297, object_type_1_expr8, line(object_type_1, 179)).
method_invoc(object_type_1_expr8, m_get_implicit_prototype_1805, line(object_type_1, 179)).
assign(v_p_5297, object_type_1_expr11, line(object_type_1, 190)).
assign(q_visited_206, object_type_1_literal5, line(object_type_1, 192)).
ref(v_p_5297, q_visited_206, line(object_type_1, 192)).
assign(v_p_5297, object_type_1_expr14, line(object_type_1, 193)).
method_invoc(object_type_1_expr14, m_get_implicit_prototype_1805, line(object_type_1, 193)).
ref(v_p_5297, object_type_1_expr14, line(object_type_1, 193)).
return(object_type_1_literal7, m_detect_implicit_prototype_cycle_4755, line(object_type_1, 195)).
return(object_type_1_expr16, m_detect_inheritance_cycle_4672, line(object_type_1, 209)).
method_invoc(object_type_1_expr17, m_detect_implicit_prototype_cycle_4755, line(object_type_1, 209)).
param(p_suffix_5298, 1, m_create_delegate_suffix_4758).
return(object_type_1_expr18, m_create_delegate_suffix_4758, line(object_type_1, 253)).
param(p_that_5299, 1, m_test_for_equality_4759).
param(p_property_name_5300, 1, m_define_declared_property_3169).
param(p_type_5301, 2, m_define_declared_property_3169).
param(p_property_node_5302, 3, m_define_declared_property_3169).
assign(v_result_5303, object_type_1_expr19, line(object_type_1, 301)).
method_invoc(object_type_1_expr19, m_define_property_4760, line(object_type_1, 301)).
argument(p_property_name_5300, 1, object_type_1_expr19).
argument(p_type_5301, 2, object_type_1_expr19).
argument(object_type_1_literal10, 3, object_type_1_expr19).
argument(p_property_node_5302, 4, object_type_1_expr19).
method_invoc(object_type_1_expr20, m_register_property_on_type_4580, line(object_type_1, 306)).
argument(p_property_name_5300, 1, object_type_1_expr20).
argument(object_type_1_expr21, 2, object_type_1_expr20).
ref(f_registry_4786, object_type_1_expr20, line(object_type_1, 306)).
return(v_result_5303, m_define_declared_property_3169, line(object_type_1, 307)).
param(p_property_name_5304, 1, m_define_synthesized_property_4761).
param(p_type_5305, 2, m_define_synthesized_property_4761).
param(p_property_node_5306, 3, m_define_synthesized_property_4761).
param(p_property_name_5307, 1, m_define_inferred_property_4762).
param(p_type_5308, 2, m_define_inferred_property_4762).
param(p_property_node_5309, 3, m_define_inferred_property_4762).
param(p_property_name_5310, 1, m_define_property_4760).
param(p_type_5311, 2, m_define_property_4760).
param(p_inferred_5312, 3, m_define_property_4760).
param(p_property_node_5313, 4, m_define_property_4760).
param(p_property_name_5314, 1, m_remove_property_4763).
param(p_property_name_5315, 1, m_get_property_node_4764).
param(p_property_name_5316, 1, m_get_own_property_jsdoc_info_4765).
param(p_property_name_5317, 1, m_set_property_jsdoc_info_4766).
param(p_info_5318, 2, m_set_property_jsdoc_info_4766).
param(p_property_name_5319, 1, m_find_property_type_4767).
param(p_property_name_5320, 1, m_get_property_type_4768).
param(p_property_name_5321, 1, m_has_property_4769).
param(p_property_name_5322, 1, m_has_own_property_4770).
return(object_type_1_expr22, m_has_own_property_4770, line(object_type_1, 460)).
method_invoc(object_type_1_expr23, m_get_own_slot_4748, line(object_type_1, 460)).
argument(p_property_name_5322, 1, object_type_1_expr23).
param(p_property_name_5323, 1, m_is_property_type_inferred_4771).
param(p_property_name_5324, 1, m_is_property_type_declared_4772).
param(p_name_5325, 1, m_has_own_declared_property_4429).
return(object_type_1_expr24, m_has_own_declared_property_4429, line(object_type_1, 492)).
method_invoc(object_type_1_expr25, m_has_own_property_4770, line(object_type_1, 492)).
argument(p_name_5325, 1, object_type_1_expr25).
method_invoc(object_type_1_expr26, m_is_property_type_declared_4772, line(object_type_1, 492)).
argument(p_name_5325, 1, object_type_1_expr26).
param(p_property_name_5326, 1, m_is_property_in_externs_4773).
return(object_type_1_expr27, m_get_properties_count_4774, line(object_type_1, 505)).
method_invoc(object_type_1_expr27, m_get_properties_count_4775, line(object_type_1, 505)).
ref(object_type_1_expr28, object_type_1_expr27, line(object_type_1, 505)).
method_invoc(object_type_1_expr28, m_get_property_map_4746, line(object_type_1, 505)).
param(p_props_5327, 1, m_collect_property_names_4777).
param(p_visitor_5328, 1, m_visit_4778).
param(p_visitor_5329, 1, m_visit_4779).
param(p_that_5330, 2, m_visit_4779).
param(p_prototype_5331, 1, m_is_implicit_prototype_4780).
assign(v_current_5332, object_type_1_expr30, line(object_type_1, 545)).
assign(v_current_5332, object_type_1_expr33, line(object_type_1, 547)).
method_invoc(object_type_1_expr33, m_get_implicit_prototype_1805, line(object_type_1, 547)).
ref(v_current_5332, object_type_1_expr33, line(object_type_1, 547)).
method_invoc(object_type_1_expr34, m_is_equivalent_to_4505, line(object_type_1, 548)).
argument(p_prototype_5331, 1, object_type_1_expr34).
ref(v_current_5332, object_type_1_expr34, line(object_type_1, 548)).
return(object_type_1_literal13, m_is_implicit_prototype_4780, line(object_type_1, 549)).
return(object_type_1_literal14, m_is_implicit_prototype_4780, line(object_type_1, 552)).
assign(v_implicit_proto_5333, object_type_1_expr35, line(object_type_1, 569)).
method_invoc(object_type_1_expr35, m_get_implicit_prototype_1805, line(object_type_1, 569)).
assign(f_unknown_5288, object_type_1_literal16, line(object_type_1, 572)).
ref(object_type_1_expr39, object_type_1_stmt28, line(object_type_1, 573)).
method_invoc(object_type_1_expr39, m_get_ctor_extended_interfaces_4782, line(object_type_1, 573)).
method_invoc(object_type_1_expr40, m_is_unknown_type_4613, line(object_type_1, 574)).
ref(v_interface_type_5334, object_type_1_expr40, line(object_type_1, 574)).
assign(f_unknown_5288, object_type_1_literal17, line(object_type_1, 575)).
assign(f_unknown_5288, object_type_1_expr43, line(object_type_1, 580)).
method_invoc(object_type_1_expr43, m_is_unknown_type_4613, line(object_type_1, 580)).
ref(v_implicit_proto_5333, object_type_1_expr43, line(object_type_1, 580)).
return(f_unknown_5288, m_is_unknown_type_4613, line(object_type_1, 583)).
return(object_type_1_expr44, m_has_cached_values_4784, line(object_type_1, 597)).
param(p_type_5335, 1, m_cast_4787).
return(object_type_1_expr45, m_is_function_prototype_type_3161, line(object_type_1, 622)).
method_invoc(object_type_1_expr46, m_get_owner_function_4788, line(object_type_1, 622)).
param(p_type_5336, 1, m_set_owner_function_4374).
return(object_type_1_expr47, m_get_ctor_implemented_interfaces_4789, line(object_type_1, 638)).
method_invoc(object_type_1_expr47, m_of_3903, line(object_type_1, 638)).
ref(t_immutable_set_13, object_type_1_expr47, line(object_type_1, 638)).
return(object_type_1_expr48, m_get_ctor_extended_interfaces_4782, line(object_type_1, 646)).
method_invoc(object_type_1_expr48, m_of_3903, line(object_type_1, 646)).
ref(t_immutable_set_13, object_type_1_expr48, line(object_type_1, 646)).

%can_cast_to_visitor_1 - com.google.javascript.rhino.jstype.CanCastToVisitor
param(p_this_type_4685, 1, m_case_unknown_type_4301).
param(p_that_type_4686, 2, m_case_unknown_type_4301).
param(p_that_type_4687, 1, m_case_no_type_4302).
param(p_that_type_4688, 1, m_case_no_object_type_4303).
param(p_that_type_4689, 1, m_case_all_type_4304).
param(p_this_type_4690, 1, m_can_cast_to_union_4305).
param(p_union_type_4691, 2, m_can_cast_to_union_4305).
param(p_this_type_4692, 1, m_can_cast_to_function_4306).
param(p_function_type_4693, 2, m_can_cast_to_function_4306).
param(p_type_4694, 1, m_is_interface_4307).
param(p_this_type_4695, 1, m_cast_cast_to_helper_4308).
param(p_that_type_4696, 2, m_cast_cast_to_helper_4308).
param(p_this_type_4697, 1, m_case_value_type_4309).
param(p_that_type_4698, 2, m_case_value_type_4309).
param(p_this_type_4699, 1, m_case_object_type_4310).
param(p_that_type_4700, 2, m_case_object_type_4310).
param(p_this_type_4701, 1, m_case_function_type_4311).
param(p_that_type_4702, 2, m_case_function_type_4311).
param(p_this_type_4703, 1, m_case_union_type_4312).
param(p_that_type_4704, 2, m_case_union_type_4312).
param(p_this_type_4705, 1, m_case_parameterized_type_4313).
param(p_that_type_4706, 2, m_case_parameterized_type_4313).
param(p_this_type_4707, 1, m_case_template_type_4314).
param(p_that_type_4708, 2, m_case_template_type_4314).
param(p_type_type_4709, 1, m_case_enum_element_type_4315).
param(p_that_type_4710, 2, m_case_enum_element_type_4315).

%check_access_controls_1 - com.google.javascript.jscomp.CheckAccessControls
assign(f_deprecated_name_76, check_access_controls_1_expr1, line(check_access_controls_1, 48)).
method_invoc(check_access_controls_1_expr1, m_disabled_82, line(check_access_controls_1, 48)).
argument(check_access_controls_1_literal1, 1, check_access_controls_1_expr1).
argument(check_access_controls_1_literal2, 2, check_access_controls_1_expr1).
ref(t_diagnostic_type_2, check_access_controls_1_expr1, line(check_access_controls_1, 48)).
assign(f_deprecated_name_reason_77, check_access_controls_1_expr2, line(check_access_controls_1, 52)).
method_invoc(check_access_controls_1_expr2, m_disabled_82, line(check_access_controls_1, 52)).
argument(check_access_controls_1_literal3, 1, check_access_controls_1_expr2).
argument(check_access_controls_1_literal4, 2, check_access_controls_1_expr2).
ref(t_diagnostic_type_2, check_access_controls_1_expr2, line(check_access_controls_1, 52)).
assign(f_deprecated_prop_78, check_access_controls_1_expr3, line(check_access_controls_1, 56)).
method_invoc(check_access_controls_1_expr3, m_disabled_82, line(check_access_controls_1, 56)).
argument(check_access_controls_1_literal5, 1, check_access_controls_1_expr3).
argument(check_access_controls_1_literal6, 2, check_access_controls_1_expr3).
ref(t_diagnostic_type_2, check_access_controls_1_expr3, line(check_access_controls_1, 56)).
assign(f_deprecated_prop_reason_79, check_access_controls_1_expr4, line(check_access_controls_1, 60)).
method_invoc(check_access_controls_1_expr4, m_disabled_82, line(check_access_controls_1, 60)).
argument(check_access_controls_1_literal7, 1, check_access_controls_1_expr4).
argument(check_access_controls_1_literal8, 2, check_access_controls_1_expr4).
ref(t_diagnostic_type_2, check_access_controls_1_expr4, line(check_access_controls_1, 60)).
assign(f_deprecated_class_80, check_access_controls_1_expr5, line(check_access_controls_1, 64)).
method_invoc(check_access_controls_1_expr5, m_disabled_82, line(check_access_controls_1, 64)).
argument(check_access_controls_1_literal9, 1, check_access_controls_1_expr5).
argument(check_access_controls_1_literal10, 2, check_access_controls_1_expr5).
ref(t_diagnostic_type_2, check_access_controls_1_expr5, line(check_access_controls_1, 64)).
assign(f_deprecated_class_reason_81, check_access_controls_1_expr6, line(check_access_controls_1, 68)).
method_invoc(check_access_controls_1_expr6, m_disabled_82, line(check_access_controls_1, 68)).
argument(check_access_controls_1_literal11, 1, check_access_controls_1_expr6).
argument(check_access_controls_1_literal12, 2, check_access_controls_1_expr6).
ref(t_diagnostic_type_2, check_access_controls_1_expr6, line(check_access_controls_1, 68)).
assign(f_bad_private_global_access_82, check_access_controls_1_expr7, line(check_access_controls_1, 72)).
assign(f_bad_private_property_access_83, check_access_controls_1_expr8, line(check_access_controls_1, 77)).
assign(f_bad_protected_property_access_84, check_access_controls_1_expr9, line(check_access_controls_1, 82)).
assign(f_private_override_85, check_access_controls_1_expr10, line(check_access_controls_1, 87)).
assign(f_visibility_mismatch_86, check_access_controls_1_expr11, line(check_access_controls_1, 92)).
assign(f_const_property_reassigned_value_87, check_access_controls_1_expr12, line(check_access_controls_1, 97)).
assign(f_const_property_deleted_88, check_access_controls_1_expr13, line(check_access_controls_1, 102)).
param(p_compiler_89, 1, m_check_access_controls_83).
param(p_externs_90, 1, m_process_84).
param(p_root_91, 2, m_process_84).
param(p_script_root_92, 1, m_hot_swap_script_85).
param(p_original_root_93, 2, m_hot_swap_script_85).
param(p_t_94, 1, m_enter_scope_86).
param(p_t_95, 1, m_exit_scope_87).
param(p_n_96, 1, m_get_class_of_method_88).
param(p_parent_97, 2, m_get_class_of_method_88).
param(p_type_98, 1, m_normalize_class_type_89).
param(p_t_99, 1, m_should_traverse_90).
param(p_n_100, 2, m_should_traverse_90).
param(p_parent_101, 3, m_should_traverse_90).
param(p_t_102, 1, m_visit_91).
param(p_n_103, 2, m_visit_91).
param(p_parent_104, 3, m_visit_91).
param(p_t_105, 1, m_check_constructor_deprecation_92).
param(p_n_106, 2, m_check_constructor_deprecation_92).
param(p_parent_107, 3, m_check_constructor_deprecation_92).
param(p_t_108, 1, m_check_name_deprecation_93).
param(p_n_109, 2, m_check_name_deprecation_93).
param(p_parent_110, 3, m_check_name_deprecation_93).
param(p_t_111, 1, m_check_property_deprecation_94).
param(p_n_112, 2, m_check_property_deprecation_94).
param(p_parent_113, 3, m_check_property_deprecation_94).
param(p_t_114, 1, m_check_name_visibility_95).
param(p_name_115, 2, m_check_name_visibility_95).
param(p_parent_116, 3, m_check_name_visibility_95).
param(p_t_117, 1, m_check_constant_property_96).
param(p_getprop_118, 2, m_check_constant_property_96).
param(p_t_119, 1, m_check_property_visibility_97).
param(p_getprop_120, 2, m_check_property_visibility_97).
param(p_parent_121, 3, m_check_property_visibility_97).
param(p_parent_122, 1, m_is_valid_private_constructor_access_98).
param(p_t_123, 1, m_should_emit_deprecation_warning_99).
param(p_n_124, 2, m_should_emit_deprecation_warning_99).
param(p_parent_125, 3, m_should_emit_deprecation_warning_99).
param(p_t_126, 1, m_can_access_deprecated_types_100).
param(p_n_127, 1, m_is_deprecated_function_101).
param(p_parent_128, 2, m_is_deprecated_function_101).
param(p_type_129, 1, m_get_type_deprecation_info_102).
param(p_object_type_130, 1, m_is_property_declared_constant_103).
param(p_prop_131, 2, m_is_property_declared_constant_103).
param(p_type_132, 1, m_get_property_deprecation_info_104).
param(p_prop_133, 2, m_get_property_deprecation_info_104).
param(p_type_134, 1, m_dereference_105).

%infer_jsdoc_info_1 - com.google.javascript.jscomp.InferJSDocInfo
param(p_compiler_1524, 1, m_infer_jsdoc_info_1150).
assign(f_compiler_1525, p_compiler_1524, line(infer_jsdoc_info_1, 69)).
param(p_externs_1526, 1, m_process_1151).
param(p_root_1527, 2, m_process_1151).
param(p_root_1528, 1, m_hot_swap_script_1152).
param(p_original_root_1529, 2, m_hot_swap_script_1152).
param(p_t_1530, 1, m_visit_1153).
param(p_n_1531, 2, m_visit_1153).
param(p_parent_1532, 3, m_visit_1153).
param(p_type_1533, 1, m_dereference_to_object_1154).
param(p_obj_type_1534, 1, m_attach_jsdoc_info_to_nominal_type_or_shape_1155).
param(p_doc_info_1535, 2, m_attach_jsdoc_info_to_nominal_type_or_shape_1155).
param(p_q_name_1536, 3, m_attach_jsdoc_info_to_nominal_type_or_shape_1155).

%abstract_compiler_1 - com.google.javascript.jscomp.AbstractCompiler
assign(f_read_error_1, abstract_compiler_1_expr1, line(abstract_compiler_1, 44)).
method_invoc(abstract_compiler_1_expr1, m_error_1, line(abstract_compiler_1, 44)).
argument(abstract_compiler_1_literal1, 1, abstract_compiler_1_expr1).
argument(abstract_compiler_1_literal2, 2, abstract_compiler_1_expr1).
ref(t_diagnostic_type_2, abstract_compiler_1_expr1, line(abstract_compiler_1, 44)).
assign(f_stage_2, q_raw_1, line(abstract_compiler_1, 47)).
ref(t_life_cycle_stage_3, q_raw_1, line(abstract_compiler_1, 47)).
param(p_input_id_3, 1, m_get_input_2).
param(p_source_name_4, 1, m_get_source_file_by_name_3).
param(p_name_5, 1, m_new_extern_input_4).
param(p_error_6, 1, m_report_10).
param(p_msg_7, 1, m_throw_internal_error_11).
param(p_cause_8, 2, m_throw_internal_error_11).
param(p_message_9, 1, m_add_to_debug_log_14).
param(p_map_10, 1, m_set_css_renaming_map_15).
param(p_module_11, 1, m_get_node_for_code_insertion_17).
param(p_code_12, 1, m_parse_synthetic_code_19).
param(p_filename_13, 1, m_parse_synthetic_code_20).
param(p_code_14, 2, m_parse_synthetic_code_20).
param(p_code_15, 1, m_parse_test_code_21).
param(p_root_16, 1, m_to_source_22).
param(p_handler_17, 1, m_add_change_handler_28).
param(p_handler_18, 1, m_remove_change_handler_29).
param(p_root_19, 1, m_prepare_ast_35).
param(p_stage_20, 1, m_set_life_cycle_stage_37).
param(p_n_1_21, 1, m_are_nodes_equal_for_inlining_38).
param(p_n_2_22, 2, m_are_nodes_equal_for_inlining_38).
param(p_references_23, 1, m_set_has_reg_exp_global_references_39).
param(p_error_24, 1, m_get_error_level_41).
param(p_pass_28, 1, m_process_45).
param(p_ref_map_patch_29, 1, m_update_global_var_references_47).
param(p_collection_root_30, 2, m_update_global_var_references_47).
param(p_progress_31, 1, m_set_progress_52).
param(p_last_pass_name_32, 2, m_set_progress_52).
param(p_resource_name_33, 1, m_ensure_library_injected_53).
param(p_source_name_34, 1, m_set_old_parse_tree_54).
param(p_ast_root_35, 2, m_set_old_parse_tree_54).
param(p_source_name_36, 1, m_get_old_parse_tree_by_name_55).

%dependency_options_1 - com.google.javascript.jscomp.DependencyOptions
assign(f_sort_dependencies_1203, dependency_options_1_literal1, line(dependency_options_1, 42)).
assign(f_prune_dependencies_1204, dependency_options_1_literal2, line(dependency_options_1, 43)).
assign(f_drop_moochers_1205, dependency_options_1_literal3, line(dependency_options_1, 44)).
assign(f_entry_points_1206, dependency_options_1_expr1, line(dependency_options_1, 45)).
method_invoc(dependency_options_1_expr1, m_new_hash_set_522, line(dependency_options_1, 45)).
ref(t_sets_12, dependency_options_1_expr1, line(dependency_options_1, 45)).
param(p_enabled_1207, 1, m_set_dependency_sorting_942).
param(p_enabled_1208, 1, m_set_dependency_pruning_943).
param(p_enabled_1209, 1, m_set_moocher_dropping_944).
param(p_symbols_1210, 1, m_set_entry_points_945).

%google_coding_convention_1 - com.google.javascript.jscomp.GoogleCodingConvention
assign(f_enum_key_pattern_1514, google_coding_convention_1_expr1, line(google_coding_convention_1, 39)).
method_invoc(google_coding_convention_1_expr2, m_google_coding_convention_1142, line(google_coding_convention_1, 44)).
argument(google_coding_convention_1_expr3, 1, google_coding_convention_1_expr2).
method_invoc(google_coding_convention_1_expr3, m_closure_coding_convention_159, line(google_coding_convention_1, 44)).
param(p_convention_1515, 1, m_google_coding_convention_1142).
method_invoc(google_coding_convention_1_expr4, m_proxy_162, line(google_coding_convention_1, 49)).
argument(p_convention_1515, 1, google_coding_convention_1_expr4).
param(p_name_1516, 1, m_is_constant_1143).
param(p_name_1517, 1, m_is_constant_key_1144).
param(p_key_1518, 1, m_is_valid_enum_key_1145).
param(p_parameter_1519, 1, m_is_optional_parameter_1146).
param(p_parameter_1520, 1, m_is_var_args_parameter_1147).
param(p_name_1521, 1, m_is_exported_1148).
param(p_local_1522, 2, m_is_exported_1148).
param(p_name_1523, 1, m_is_private_1149).

%abstract_message_formatter_1 - com.google.javascript.jscomp.AbstractMessageFormatter
param(p_source_37, 1, m_abstract_message_formatter_56).
assign(f_source_38, p_source_37, line(abstract_message_formatter_1, 33)).
param(p_colorize_39, 1, m_set_colorize_57).
assign(f_colorize_40, p_colorize_39, line(abstract_message_formatter_1, 37)).
assign(f_supported_color_terminals_41, abstract_message_formatter_1_expr7, line(abstract_message_formatter_1, 47)).
param(p_term_42, 1, m_term_supports_color_59).
param(p_control_character_43, 1, m_color_60).
param(p_level_44, 1, m_get_level_name_62).
param(p_text_45, 1, m_maybe_colorize_63).
param(p_color_46, 2, m_maybe_colorize_63).

%compiler_1 - com.google.javascript.jscomp.Compiler
assign(f_module_dependency_error_427, compiler_1_expr1, line(compiler_1, 86)).
assign(f_missing_entry_error_428, compiler_1_expr2, line(compiler_1, 91)).
method_invoc(compiler_1_expr2, m_error_1, line(compiler_1, 91)).
argument(compiler_1_literal1, 1, compiler_1_expr2).
argument(compiler_1_literal2, 2, compiler_1_expr2).
ref(t_diagnostic_type_2, compiler_1_expr2, line(compiler_1, 91)).
assign(f_options_429, compiler_1_literal3, line(compiler_1, 98)).
assign(f_passes_430, compiler_1_literal4, line(compiler_1, 100)).
assign(f_injected_libraries_431, compiler_1_expr3, line(compiler_1, 123)).
method_invoc(compiler_1_expr3, m_new_linked_hash_map_312, line(compiler_1, 123)).
ref(t_maps_17, compiler_1_expr3, line(compiler_1, 123)).
assign(f_extern_exports_432, compiler_1_literal5, line(compiler_1, 136)).
assign(f_unique_name_id_433, compiler_1_literal6, line(compiler_1, 142)).
assign(f_has_reg_exp_global_references_434, compiler_1_literal7, line(compiler_1, 148)).
assign(f_debug_log_435, compiler_1_expr4, line(compiler_1, 154)).
method_invoc(compiler_1_expr4, m_string_builder_313, line(compiler_1, 154)).
assign(f_default_coding_convention_436, compiler_1_expr5, line(compiler_1, 157)).
method_invoc(compiler_1_expr5, m_closure_coding_convention_159, line(compiler_1, 157)).
assign(f_parser_config_437, compiler_1_literal8, line(compiler_1, 160)).
assign(f_old_error_reporter_438, compiler_1_expr6, line(compiler_1, 168)).
assign(f_default_error_reporter_439, compiler_1_expr7, line(compiler_1, 172)).
assign(f_optimize_loop_error_440, compiler_1_expr8, line(compiler_1, 176)).
method_invoc(compiler_1_expr8, m_error_1, line(compiler_1, 176)).
argument(compiler_1_literal9, 1, compiler_1_expr8).
argument(compiler_1_literal10, 2, compiler_1_expr8).
ref(t_diagnostic_type_2, compiler_1_expr8, line(compiler_1, 176)).
assign(f_motion_iterations_error_441, compiler_1_expr9, line(compiler_1, 179)).
assign(f_compiler_executor_442, compiler_1_expr10, line(compiler_1, 195)).
method_invoc(compiler_1_expr10, m_new_cached_thread_pool_314, line(compiler_1, 196)).
argument(compiler_1_expr11, 1, compiler_1_expr10).
ref(t_executors_18, compiler_1_expr10, line(compiler_1, 196)).
method_invoc(compiler_1_expr11, m__315, line(compiler_1, 196)).
param(p_r_443, 1, m_new_thread_316).
assign(f_compiler_thread_444, compiler_1_literal11, line(compiler_1, 205)).
assign(f_use_threads_445, compiler_1_literal12, line(compiler_1, 208)).
assign(f_logger_446, compiler_1_expr12, line(compiler_1, 216)).
assign(f_global_ref_map_447, compiler_1_literal13, line(compiler_1, 221)).
assign(f_progress_448, compiler_1_literal14, line(compiler_1, 223)).
method_invoc(compiler_1_expr13, m_compiler_318, line(compiler_1, 230)).
argument(compiler_1_expr14, 1, compiler_1_expr13).
assign(compiler_1_expr14, compiler_1_literal15, line(compiler_1, 230)).
param(p_stream_449, 1, m_compiler_318).
method_invoc(compiler_1_expr15, m_add_change_handler_319, line(compiler_1, 238)).
argument(f_recent_change_450, 1, compiler_1_expr15).
assign(f_out_stream_451, p_stream_449, line(compiler_1, 239)).
param(p_error_manager_452, 1, m_compiler_320).
param(p_error_manager_453, 1, m_set_error_manager_321).
method_invoc(compiler_1_expr17, m_check_not_null_322, line(compiler_1, 256)).
argument(p_error_manager_453, 1, compiler_1_expr17).
argument(compiler_1_literal16, 2, compiler_1_expr17).
ref(t_preconditions_19, compiler_1_expr17, line(compiler_1, 256)).
assign(f_error_manager_454, p_error_manager_453, line(compiler_1, 258)).
assign(v_colorize_455, compiler_1_expr21, line(compiler_1, 266)).
method_invoc(compiler_1_expr21, m_should_colorize_error_output_324, line(compiler_1, 266)).
ref(f_options_429, compiler_1_expr21, line(compiler_1, 266)).
return(compiler_1_expr22, m_create_message_formatter_323, line(compiler_1, 267)).
method_invoc(compiler_1_expr22, m_to_formatter_325, line(compiler_1, 267)).
argument(compiler_1_expr23, 1, compiler_1_expr22).
argument(v_colorize_455, 2, compiler_1_expr22).
ref(f_error_format_456, compiler_1_expr22, line(compiler_1, 267)).
ref(f_options_429, q_error_format_17, line(compiler_1, 267)).
param(p_options_457, 1, m_init_options_326).
assign(f_options_429, p_options_457, line(compiler_1, 275)).
method_invoc(compiler_1_expr29, m_set_error_manager_321, line(compiler_1, 278)).
argument(compiler_1_expr30, 1, compiler_1_expr29).
method_invoc(compiler_1_expr31, m_enables_327, line(compiler_1, 289)).
argument(q_check_types_18, 1, compiler_1_expr31).
ref(p_options_457, compiler_1_expr31, line(compiler_1, 289)).
ref(t_diagnostic_groups_20, q_check_types_18, line(compiler_1, 289)).
assign(q_check_types_19, compiler_1_literal19, line(compiler_1, 290)).
ref(p_options_457, q_check_types_19, line(compiler_1, 290)).
method_invoc(compiler_1_expr34, m_is_on_125, line(compiler_1, 303)).
ref(f_check_global_this_level_458, compiler_1_expr34, line(compiler_1, 303)).
ref(p_options_457, q_check_global_this_level_20, line(compiler_1, 303)).
method_invoc(compiler_1_expr36, m_get_language_in_328, line(compiler_1, 310)).
ref(p_options_457, compiler_1_expr36, line(compiler_1, 310)).
ref(t_language_mode_21, q_ecmascript5_strict_21, line(compiler_1, 310)).
assign(v_guards_459, compiler_1_expr37, line(compiler_1, 317)).
method_invoc(compiler_1_expr37, m_new_array_list_329, line(compiler_1, 317)).
ref(t_lists_22, compiler_1_expr37, line(compiler_1, 317)).
method_invoc(compiler_1_expr38, m_add_330, line(compiler_1, 318)).
argument(compiler_1_expr39, 1, compiler_1_expr38).
ref(v_guards_459, compiler_1_expr38, line(compiler_1, 318)).
method_invoc(compiler_1_expr40, m_add_330, line(compiler_1, 321)).
argument(compiler_1_expr41, 1, compiler_1_expr40).
ref(v_guards_459, compiler_1_expr40, line(compiler_1, 321)).
method_invoc(compiler_1_expr41, m_get_warnings_guard_331, line(compiler_1, 321)).
ref(p_options_457, compiler_1_expr41, line(compiler_1, 321)).
assign(v_composed_guards_460, compiler_1_expr42, line(compiler_1, 323)).
method_invoc(compiler_1_expr42, m_compose_warnings_guard_332, line(compiler_1, 323)).
argument(v_guards_459, 1, compiler_1_expr42).
ref(p_options_457, q_check_symbols_22, line(compiler_1, 330)).
method_invoc(compiler_1_expr45, m_add_guard_333, line(compiler_1, 332)).
argument(compiler_1_expr46, 1, compiler_1_expr45).
ref(v_composed_guards_460, compiler_1_expr45, line(compiler_1, 332)).
method_invoc(compiler_1_expr46, m_diagnostic_group_warnings_guard_334, line(compiler_1, 332)).
argument(q_check_variables_23, 1, compiler_1_expr46).
argument(q_off_24, 2, compiler_1_expr46).
assign(f_warnings_guard_461, v_composed_guards_460, line(compiler_1, 336)).
param(p_externs_462, 1, m_init_335).
param(p_inputs_463, 2, m_init_335).
param(p_options_464, 3, m_init_335).
param(p_externs_465, 1, m_init_336).
param(p_inputs_466, 2, m_init_336).
param(p_options_467, 3, m_init_336).
param(p_externs_468, 1, m_init_337).
param(p_modules_469, 2, m_init_337).
param(p_options_470, 3, m_init_337).
param(p_externs_471, 1, m_init_modules_338).
param(p_modules_472, 2, m_init_modules_338).
param(p_options_473, 3, m_init_modules_338).
param(p_files_474, 1, m_make_compiler_input_340).
param(p_is_extern_475, 2, m_make_compiler_input_340).
assign(f_empty_module_list_error_476, compiler_1_expr50, line(compiler_1, 433)).
assign(f_empty_root_module_error_477, compiler_1_expr51, line(compiler_1, 437)).
param(p_modules_478, 1, m_check_first_module_341).
param(p_module_name_479, 1, m_create_fill_file_name_342).
param(p_modules_480, 1, m_fill_empty_modules_343).
param(p_modules_481, 1, m_get_all_inputs_from_modules_345).
assign(f_duplicate_input_482, compiler_1_expr52, line(compiler_1, 508)).
assign(f_duplicate_extern_input_483, compiler_1_expr53, line(compiler_1, 510)).
param(p_extern_484, 1, m_compile_347).
param(p_input_485, 2, m_compile_347).
param(p_options_486, 3, m_compile_347).
param(p_extern_487, 1, m_compile_348).
param(p_input_488, 2, m_compile_348).
param(p_options_489, 3, m_compile_348).
param(p_extern_490, 1, m_compile_349).
param(p_modules_491, 2, m_compile_349).
param(p_options_492, 3, m_compile_349).
param(p_externs_493, 1, m_compile_350).
param(p_inputs_494, 2, m_compile_350).
param(p_options_495, 3, m_compile_350).
param(p_externs_496, 1, m_compile_351).
param(p_inputs_497, 2, m_compile_351).
param(p_options_498, 3, m_compile_351).
param(p_externs_499, 1, m_compile_352).
param(p_modules_500, 2, m_compile_352).
param(p_options_501, 3, m_compile_352).
param(p_externs_502, 1, m_compile_modules_353).
param(p_modules_503, 2, m_compile_modules_353).
param(p_options_504, 3, m_compile_modules_353).
throw(m_call_355, exception).
param(p_callable_505, 1, m_run_in_compiler_thread_357).
param(p_passes_506, 1, m_set_pass_config_363).
param(p_p_507, 1, m_process_367).
assign(f_sanity_check_508, compiler_1_expr54, line(compiler_1, 855)).
method_invoc(compiler_1_expr54, m__368, line(compiler_1, 856)).
argument(compiler_1_literal20, 1, compiler_1_expr54).
argument(compiler_1_literal21, 2, compiler_1_expr54).
param(p_compiler_509, 1, m_create_369).
param(p_strip_types_510, 1, m_strip_code_373).
param(p_strip_name_suffixes_511, 2, m_strip_code_373).
param(p_strip_type_prefixes_512, 3, m_strip_code_373).
param(p_strip_name_prefixes_513, 4, m_strip_code_373).
param(p_execution_time_514, 1, m_run_custom_passes_374).
assign(f_current_tracer_515, compiler_1_literal22, line(compiler_1, 917)).
assign(f_current_pass_name_516, compiler_1_literal23, line(compiler_1, 918)).
param(p_pass_name_517, 1, m_start_pass_375).
param(p_pass_name_518, 1, m_new_tracer_377).
param(p_t_519, 1, m_stop_tracer_378).
param(p_pass_name_520, 2, m_stop_tracer_378).
param(p_n_1_521, 1, m_are_nodes_equal_for_inlining_388).
param(p_n_2_522, 2, m_are_nodes_equal_for_inlining_388).
param(p_id_523, 1, m_get_input_389).
return(compiler_1_expr55, m_get_input_389, line(compiler_1, 1046)).
method_invoc(compiler_1_expr55, m_get_390, line(compiler_1, 1046)).
argument(p_id_523, 1, compiler_1_expr55).
ref(f_inputs_by_id_524, compiler_1_expr55, line(compiler_1, 1046)).
param(p_id_525, 1, m_remove_extern_input_391).
param(p_name_526, 1, m_new_extern_input_392).
param(p_id_527, 1, m_put_compiler_input_393).
param(p_input_528, 2, m_put_compiler_input_393).
method_invoc(compiler_1_expr56, m_set_compiler_394, line(compiler_1, 1081)).
argument(compiler_1_expr57, 1, compiler_1_expr56).
ref(p_input_528, compiler_1_expr56, line(compiler_1, 1081)).
return(compiler_1_expr58, m_put_compiler_input_393, line(compiler_1, 1082)).
method_invoc(compiler_1_expr58, m_put_395, line(compiler_1, 1082)).
argument(p_id_527, 1, compiler_1_expr58).
argument(p_input_528, 2, compiler_1_expr58).
ref(f_inputs_by_id_524, compiler_1_expr58, line(compiler_1, 1082)).
param(p_ast_529, 1, m_add_incremental_source_ast_396).
param(p_ast_530, 1, m_replace_incremental_source_ast_397).
param(p_ast_531, 1, m_add_new_source_ast_398).
assign(f_type_registry_532, compiler_1_expr61, line(compiler_1, 1187)).
method_invoc(compiler_1_expr61, m_jstype_registry_402, line(compiler_1, 1187)).
argument(f_old_error_reporter_438, 1, compiler_1_expr61).
argument(q_loose_types_25, 2, compiler_1_expr61).
ref(f_options_429, q_loose_types_25, line(compiler_1, 1187)).
return(f_type_registry_532, m_get_type_registry_401, line(compiler_1, 1189)).
assign(f_type_validator_533, compiler_1_expr64, line(compiler_1, 1267)).
method_invoc(compiler_1_expr64, m_type_validator_409, line(compiler_1, 1267)).
argument(compiler_1_expr65, 1, compiler_1_expr64).
return(f_type_validator_533, m_get_type_validator_408, line(compiler_1, 1269)).
param(p_externs_root_534, 1, m_hoist_externs_411).
param(p_file_535, 1, m_parse_415).
assign(f_synthetic_code_id_536, compiler_1_literal26, line(compiler_1, 1556)).
param(p_js_537, 1, m_parse_synthetic_code_416).
param(p_file_name_538, 1, m_parse_synthetic_code_419).
param(p_js_539, 2, m_parse_synthetic_code_419).
param(p_js_540, 1, m_parse_test_code_420).
method_invoc(compiler_1_expr67, m_init_compiler_options_if_testing_418, line(compiler_1, 1589)).
assign(v_input_541, compiler_1_expr68, line(compiler_1, 1590)).
method_invoc(compiler_1_expr68, m_compiler_input_421, line(compiler_1, 1590)).
argument(compiler_1_expr69, 1, compiler_1_expr68).
assign(f_inputs_by_id_524, compiler_1_expr72, line(compiler_1, 1593)).
method_invoc(compiler_1_expr72, m_new_hash_map_422, line(compiler_1, 1593)).
ref(t_maps_17, compiler_1_expr72, line(compiler_1, 1593)).
method_invoc(compiler_1_expr73, m_put_compiler_input_393, line(compiler_1, 1595)).
argument(compiler_1_expr74, 1, compiler_1_expr73).
argument(v_input_541, 2, compiler_1_expr73).
method_invoc(compiler_1_expr74, m_get_input_id_423, line(compiler_1, 1595)).
ref(v_input_541, compiler_1_expr74, line(compiler_1, 1595)).
return(compiler_1_expr75, m_parse_test_code_420, line(compiler_1, 1596)).
method_invoc(compiler_1_expr75, m_get_ast_root_424, line(compiler_1, 1596)).
argument(compiler_1_expr76, 1, compiler_1_expr75).
ref(v_input_541, compiler_1_expr75, line(compiler_1, 1596)).
return(f_default_error_reporter_439, m_get_default_error_reporter_425, line(compiler_1, 1601)).
throw(m_call_427, exception).
throw(m_call_429, exception).
param(p_module_542, 1, m_to_source_430).
throw(m_call_431, exception).
param(p_module_543, 1, m_to_source_array_432).
throw(m_call_433, exception).
param(p_cb_544, 1, m_to_source_434).
param(p_input_seq_num_545, 2, m_to_source_434).
param(p_root_546, 3, m_to_source_434).
throw(m_call_435, exception).
param(p_n_547, 1, m_to_source_436).
param(p_n_548, 1, m_to_source_437).
param(p_source_map_549, 2, m_to_source_437).
param(p_first_output_550, 3, m_to_source_437).
param(p_str_551, 1, m_append_439).
param(p_suffix_552, 1, m_ends_with_444).
param(p_map_553, 1, m_set_css_renaming_map_446).
param(p_root_554, 1, m_prepare_ast_452).
assign(v_pass_555, compiler_1_expr77, line(compiler_1, 1942)).
method_invoc(compiler_1_expr77, m_prepare_ast_453, line(compiler_1, 1942)).
argument(compiler_1_expr78, 1, compiler_1_expr77).
method_invoc(compiler_1_expr79, m_process_454, line(compiler_1, 1943)).
argument(compiler_1_literal29, 1, compiler_1_expr79).
argument(p_root_554, 2, compiler_1_expr79).
ref(v_pass_555, compiler_1_expr79, line(compiler_1, 1943)).
assign(f_recent_change_450, compiler_1_expr80, line(compiler_1, 1957)).
assign(f_code_change_handlers_556, compiler_1_expr81, line(compiler_1, 1959)).
assign(f_synthesized_externs_input_557, compiler_1_literal30, line(compiler_1, 1965)).
param(p_handler_558, 1, m_add_change_handler_319).
method_invoc(compiler_1_expr82, m_add_330, line(compiler_1, 1969)).
argument(p_handler_558, 1, compiler_1_expr82).
ref(f_code_change_handlers_556, compiler_1_expr82, line(compiler_1, 1969)).
param(p_handler_559, 1, m_remove_change_handler_456).
assign(v_convention_560, compiler_1_expr83, line(compiler_1, 1991)).
method_invoc(compiler_1_expr83, m_get_coding_convention_459, line(compiler_1, 1991)).
ref(f_options_429, compiler_1_expr83, line(compiler_1, 1991)).
assign(v_convention_560, compiler_1_expr85, line(compiler_1, 1992)).
cond_expr(compiler_1_expr86, v_convention_560, f_default_coding_convention_436, line(compiler_1, 1992)).
return(v_convention_560, m_get_coding_convention_458, line(compiler_1, 1993)).
return(q_ide_mode_26, m_is_ide_mode_460, line(compiler_1, 1998)).
ref(f_options_429, q_ide_mode_26, line(compiler_1, 1998)).
return(q_accept_const_keyword_27, m_accept_const_keyword_463, line(compiler_1, 2017)).
ref(f_options_429, q_accept_const_keyword_27, line(compiler_1, 2017)).
method_invoc(compiler_1_expr88, m_get_language_in_328, line(compiler_1, 2024)).
ref(f_options_429, compiler_1_expr88, line(compiler_1, 2024)).
assign(v_mode_561, q_ecmascript5_28, line(compiler_1, 2029)).
assign(f_parser_config_437, compiler_1_expr91, line(compiler_1, 2038)).
method_invoc(compiler_1_expr91, m_create_config_465, line(compiler_1, 2038)).
argument(compiler_1_expr92, 1, compiler_1_expr91).
argument(v_mode_561, 2, compiler_1_expr91).
argument(compiler_1_expr93, 3, compiler_1_expr91).
argument(q_extra_annotation_names_29, 4, compiler_1_expr91).
ref(t_parser_runner_23, compiler_1_expr91, line(compiler_1, 2038)).
return(f_parser_config_437, m_get_parser_config_464, line(compiler_1, 2044)).
return(compiler_1_expr94, m_get_diagnostic_groups_467, line(compiler_1, 2062)).
method_invoc(compiler_1_expr94, m_diagnostic_groups_468, line(compiler_1, 2062)).
param(p_error_562, 1, m_report_469).
assign(v_level_563, compiler_1_expr95, line(compiler_1, 2067)).
method_invoc(compiler_1_expr95, m_get_default_level_470, line(compiler_1, 2067)).
ref(p_error_562, compiler_1_expr95, line(compiler_1, 2067)).
assign(v_new_level_564, compiler_1_expr97, line(compiler_1, 2069)).
method_invoc(compiler_1_expr97, m_level_471, line(compiler_1, 2069)).
argument(p_error_562, 1, compiler_1_expr97).
ref(f_warnings_guard_461, compiler_1_expr97, line(compiler_1, 2069)).
method_invoc(compiler_1_expr99, m_is_on_125, line(compiler_1, 2075)).
ref(v_level_563, compiler_1_expr99, line(compiler_1, 2075)).
ref(compiler_1_expr102, compiler_1_expr101, line(compiler_1, 2076)).
method_invoc(compiler_1_expr102, m_get_options_472, line(compiler_1, 2076)).
method_invoc(compiler_1_expr103, m_report_473, line(compiler_1, 2079)).
argument(v_level_563, 1, compiler_1_expr103).
argument(p_error_562, 2, compiler_1_expr103).
ref(f_error_manager_454, compiler_1_expr103, line(compiler_1, 2079)).
param(p_error_566, 1, m_get_error_level_474).
param(p_message_567, 1, m_throw_internal_error_475).
param(p_cause_568, 2, m_throw_internal_error_475).
return(compiler_1_expr104, m_get_error_count_476, line(compiler_1, 2110)).
method_invoc(compiler_1_expr104, m_get_error_count_477, line(compiler_1, 2110)).
ref(f_error_manager_454, compiler_1_expr104, line(compiler_1, 2110)).
return(compiler_1_expr105, m_has_halting_errors_479, line(compiler_1, 2122)).
method_invoc(compiler_1_expr107, m_is_ide_mode_460, line(compiler_1, 2122)).
method_invoc(compiler_1_expr109, m_get_error_count_476, line(compiler_1, 2122)).
param(p_str_569, 1, m_add_to_debug_log_481).
param(p_source_name_570, 1, m_get_source_file_by_name_482).
param(p_source_name_571, 1, m_get_source_line_483).
param(p_line_number_572, 2, m_get_source_line_483).
param(p_source_name_573, 1, m_get_source_region_484).
param(p_line_number_574, 2, m_get_source_region_484).
param(p_module_575, 1, m_get_node_for_code_insertion_485).
return(f_options_429, m_get_options_472, line(compiler_1, 2217)).
param(p_level_576, 1, m_set_logging_level_490).
throw(m_get_ast_dot_graph_491, ioexception).
param(p_state_577, 1, m_set_state_498).
param(p_references_578, 1, m_set_has_reg_exp_global_references_502).
param(p_ref_map_patch_579, 1, m_update_global_var_references_503).
param(p_collection_root_580, 2, m_update_global_var_references_503).
param(p_new_progress_581, 1, m_set_progress_508).
param(p_pass_name_582, 2, m_set_progress_508).
param(p_ast_583, 1, m_replace_script_509).
param(p_ast_584, 1, m_add_new_script_510).
param(p_ast_585, 1, m_process_new_script_511).
param(p_original_root_586, 2, m_process_new_script_511).
param(p_original_root_587, 1, m_run_hot_swap_512).
param(p_js_588, 2, m_run_hot_swap_512).
param(p_pass_config_589, 3, m_run_hot_swap_512).
param(p_original_root_590, 1, m_run_hot_swap_pass_513).
param(p_js_591, 2, m_run_hot_swap_pass_513).
param(p_pass_factory_592, 3, m_run_hot_swap_pass_513).
param(p_resource_name_593, 1, m_ensure_library_injected_516).
param(p_resource_name_594, 1, m_load_library_code_517).
param(p_source_name_595, 1, m_set_old_parse_tree_520).
param(p_old_ast_596, 2, m_set_old_parse_tree_520).
param(p_source_name_597, 1, m_get_old_parse_tree_by_name_521).

%js_ast_1 - com.google.javascript.jscomp.JsAst
assign(f_logger___1588, js_ast_1_expr1, line(js_ast_1, 35)).
method_invoc(js_ast_1_expr1, m_get_logger_1176, line(js_ast_1, 35)).
argument(js_ast_1_expr2, 1, js_ast_1_expr1).
ref(t_logger_44, js_ast_1_expr1, line(js_ast_1, 35)).
method_invoc(js_ast_1_expr2, m_get_name_1177, line(js_ast_1, 35)).
ref(js_ast_1_expr3, js_ast_1_expr2, line(js_ast_1, 35)).
param(p_source_file_1589, 1, m_js_ast_531).
assign(f_input_id_1590, js_ast_1_expr6, line(js_ast_1, 44)).
method_invoc(js_ast_1_expr6, m_input_id_1178, line(js_ast_1, 44)).
argument(js_ast_1_expr8, 1, js_ast_1_expr6).
method_invoc(js_ast_1_expr8, m_get_name_1179, line(js_ast_1, 44)).
ref(p_source_file_1589, js_ast_1_expr8, line(js_ast_1, 44)).
assign(f_source_file_1591, p_source_file_1589, line(js_ast_1, 45)).
assign(f_file_name_1592, js_ast_1_expr14, line(js_ast_1, 46)).
method_invoc(js_ast_1_expr14, m_get_name_1179, line(js_ast_1, 46)).
ref(p_source_file_1589, js_ast_1_expr14, line(js_ast_1, 46)).
param(p_compiler_1593, 1, m_get_ast_root_1180).
method_invoc(js_ast_1_expr17, m_parse_1181, line(js_ast_1, 52)).
argument(p_compiler_1593, 1, js_ast_1_expr17).
method_invoc(js_ast_1_expr18, m_set_input_id_1182, line(js_ast_1, 53)).
argument(f_input_id_1590, 1, js_ast_1_expr18).
ref(f_root_1594, js_ast_1_expr18, line(js_ast_1, 53)).
return(f_root_1594, m_get_ast_root_1180, line(js_ast_1, 55)).
return(f_input_id_1590, m_get_input_id_1184, line(js_ast_1, 69)).
return(f_source_file_1591, m_get_source_file_1185, line(js_ast_1, 74)).
param(p_file_1595, 1, m_set_source_file_1186).
param(p_compiler_1596, 1, m_parse_1181).
method_invoc(js_ast_1_expr19, m_fine_1187, line(js_ast_1, 85)).
argument(js_ast_1_expr20, 1, js_ast_1_expr19).
ref(f_logger___1588, js_ast_1_expr19, line(js_ast_1, 85)).
method_invoc(js_ast_1_expr21, m_get_name_1179, line(js_ast_1, 85)).
ref(f_source_file_1591, js_ast_1_expr21, line(js_ast_1, 85)).
assign(v_result_1597, js_ast_1_expr22, line(js_ast_1, 86)).
method_invoc(js_ast_1_expr22, m_parse_1188, line(js_ast_1, 86)).
throw(js_ast_1_expr22, ioexception, line(js_ast_1, 86)).
argument(f_source_file_1591, 1, js_ast_1_expr22).
argument(js_ast_1_expr23, 2, js_ast_1_expr22).
argument(js_ast_1_expr24, 3, js_ast_1_expr22).
argument(js_ast_1_expr25, 4, js_ast_1_expr22).
argument(f_logger___1588, 5, js_ast_1_expr22).
ref(t_parser_runner_23, js_ast_1_expr22, line(js_ast_1, 86)).
method_invoc(js_ast_1_expr23, m_get_code_1189, line(js_ast_1, 86)).
throw(js_ast_1_expr23, ioexception, line(js_ast_1, 86)).
ref(f_source_file_1591, js_ast_1_expr23, line(js_ast_1, 86)).
assign(f_root_1594, q_ast_51, line(js_ast_1, 90)).
ref(v_result_1597, q_ast_51, line(js_ast_1, 90)).
method_invoc(js_ast_1_expr27, m_set_old_parse_tree_54, line(js_ast_1, 91)).
argument(js_ast_1_expr28, 1, js_ast_1_expr27).
argument(q_old_ast_52, 2, js_ast_1_expr27).
ref(p_compiler_1596, js_ast_1_expr27, line(js_ast_1, 91)).
method_invoc(js_ast_1_expr28, m_get_name_1179, line(js_ast_1, 91)).
ref(f_source_file_1591, js_ast_1_expr28, line(js_ast_1, 91)).
ref(v_result_1597, q_old_ast_52, line(js_ast_1, 91)).
method_invoc(js_ast_1_expr31, m_has_halting_errors_27, line(js_ast_1, 97)).
ref(p_compiler_1596, js_ast_1_expr31, line(js_ast_1, 97)).
method_invoc(js_ast_1_expr32, m_prepare_ast_35, line(js_ast_1, 101)).
argument(f_root_1594, 1, js_ast_1_expr32).
ref(p_compiler_1596, js_ast_1_expr32, line(js_ast_1, 101)).
method_invoc(js_ast_1_expr33, m_set_static_source_file_1190, line(js_ast_1, 106)).
argument(f_source_file_1591, 1, js_ast_1_expr33).
ref(f_root_1594, js_ast_1_expr33, line(js_ast_1, 106)).

%js_doc_token_stream_1 - com.google.javascript.jscomp.parsing.JsDocTokenStream
param(p_source_string_3865, 1, m_js_doc_token_stream_3535).
param(p_source_string_3866, 1, m_js_doc_token_stream_3536).
param(p_lineno_3867, 2, m_js_doc_token_stream_3536).
param(p_source_string_3868, 1, m_js_doc_token_stream_3537).
param(p_lineno_3869, 2, m_js_doc_token_stream_3537).
param(p_init_charno_3870, 3, m_js_doc_token_stream_3537).
method_invoc(js_doc_token_stream_1_expr1, m_check_not_null_538, line(js_doc_token_stream_1, 46)).
argument(p_source_string_3868, 1, js_doc_token_stream_1_expr1).
ref(t_preconditions_19, js_doc_token_stream_1_expr1, line(js_doc_token_stream_1, 46)).
assign(f_lineno_3871, p_lineno_3869, line(js_doc_token_stream_1, 47)).
assign(f_source_string_3872, p_source_string_3868, line(js_doc_token_stream_1, 48)).
assign(f_source_end_3873, js_doc_token_stream_1_expr10, line(js_doc_token_stream_1, 49)).
method_invoc(js_doc_token_stream_1_expr10, m_length_1652, line(js_doc_token_stream_1, 49)).
ref(p_source_string_3868, js_doc_token_stream_1_expr10, line(js_doc_token_stream_1, 49)).
assign(f_source_cursor_3874, js_doc_token_stream_1_expr14, line(js_doc_token_stream_1, 50)).
assign(f_cursor_3875, js_doc_token_stream_1_literal1, line(js_doc_token_stream_1, 50)).
assign(f_init_lineno_3876, p_lineno_3869, line(js_doc_token_stream_1, 51)).
assign(f_init_charno_3877, p_init_charno_3870, line(js_doc_token_stream_1, 52)).
assign(f_string_buffer_top_3878, js_doc_token_stream_1_literal2, line(js_doc_token_stream_1, 61)).
assign(f_charno_3879, js_doc_token_stream_1_expr26, line(js_doc_token_stream_1, 65)).
assign(v_c_3880, js_doc_token_stream_1_expr28, line(js_doc_token_stream_1, 66)).
method_invoc(js_doc_token_stream_1_expr28, m_get_char_3538, line(js_doc_token_stream_1, 66)).
return(q_eol_108, m_get_js_doc_token_3529, line(js_doc_token_stream_1, 70)).
ref(t_js_doc_token_95, q_eol_108, line(js_doc_token_stream_1, 70)).
method_invoc(js_doc_token_stream_1_expr32, m_is_jsspace_3539, line(js_doc_token_stream_1, 71)).
argument(v_c_3880, 1, js_doc_token_stream_1_expr32).
assign(v_c_3880, js_doc_token_stream_1_expr34, line(js_doc_token_stream_1, 80)).
method_invoc(js_doc_token_stream_1_expr34, m_get_char_3538, line(js_doc_token_stream_1, 80)).
method_invoc(js_doc_token_stream_1_expr35, m_is_alpha_3540, line(js_doc_token_stream_1, 81)).
argument(v_c_3880, 1, js_doc_token_stream_1_expr35).
method_invoc(js_doc_token_stream_1_expr36, m_add_to_string_3541, line(js_doc_token_stream_1, 82)).
argument(v_c_3880, 1, js_doc_token_stream_1_expr36).
method_invoc(js_doc_token_stream_1_expr37, m_unget_char_3542, line(js_doc_token_stream_1, 84)).
argument(v_c_3880, 1, js_doc_token_stream_1_expr37).
assign(f_string_3882, js_doc_token_stream_1_expr40, line(js_doc_token_stream_1, 85)).
method_invoc(js_doc_token_stream_1_expr40, m_get_string_from_buffer_3543, line(js_doc_token_stream_1, 85)).
assign(f_string_buffer_top_3878, js_doc_token_stream_1_literal5, line(js_doc_token_stream_1, 86)).
return(q_annotation_108, m_get_js_doc_token_3529, line(js_doc_token_stream_1, 87)).
ref(t_js_doc_token_95, q_annotation_108, line(js_doc_token_stream_1, 87)).
method_invoc(js_doc_token_stream_1_expr43, m_match_char_3544, line(js_doc_token_stream_1, 92)).
argument(js_doc_token_stream_1_literal6, 1, js_doc_token_stream_1_expr43).
return(q_eoc_108, m_get_js_doc_token_3529, line(js_doc_token_stream_1, 93)).
ref(t_js_doc_token_95, q_eoc_108, line(js_doc_token_stream_1, 93)).
return(q_star_108, m_get_js_doc_token_3529, line(js_doc_token_stream_1, 95)).
ref(t_js_doc_token_95, q_star_108, line(js_doc_token_stream_1, 95)).
return(q_lc_108, m_get_js_doc_token_3529, line(js_doc_token_stream_1, 111)).
ref(t_js_doc_token_95, q_lc_108, line(js_doc_token_stream_1, 111)).
return(q_rc_108, m_get_js_doc_token_3529, line(js_doc_token_stream_1, 114)).
ref(t_js_doc_token_95, q_rc_108, line(js_doc_token_stream_1, 114)).
assign(v_c_1_3883, v_c_3880, line(js_doc_token_stream_1, 160)).
method_invoc(js_doc_token_stream_1_expr44, m_add_to_string_3541, line(js_doc_token_stream_1, 161)).
argument(v_c_3880, 1, js_doc_token_stream_1_expr44).
assign(v_c_2_3884, js_doc_token_stream_1_expr45, line(js_doc_token_stream_1, 162)).
method_invoc(js_doc_token_stream_1_expr45, m_get_char_3538, line(js_doc_token_stream_1, 162)).
method_invoc(js_doc_token_stream_1_expr47, m_is_jsdoc_string_3545, line(js_doc_token_stream_1, 163)).
argument(v_c_2_3884, 1, js_doc_token_stream_1_expr47).
assign(v_c_1_3883, v_c_2_3884, line(js_doc_token_stream_1, 170)).
assign(v_c_2_3884, js_doc_token_stream_1_expr50, line(js_doc_token_stream_1, 171)).
method_invoc(js_doc_token_stream_1_expr50, m_get_char_3538, line(js_doc_token_stream_1, 171)).
method_invoc(js_doc_token_stream_1_expr54, m_is_jsdoc_string_3545, line(js_doc_token_stream_1, 179)).
argument(v_c_2_3884, 1, js_doc_token_stream_1_expr54).
method_invoc(js_doc_token_stream_1_expr55, m_add_to_string_3541, line(js_doc_token_stream_1, 180)).
argument(v_c_1_3883, 1, js_doc_token_stream_1_expr55).
method_invoc(js_doc_token_stream_1_expr56, m_unget_char_3542, line(js_doc_token_stream_1, 182)).
argument(v_c_2_3884, 1, js_doc_token_stream_1_expr56).
method_invoc(js_doc_token_stream_1_expr57, m_add_to_string_3541, line(js_doc_token_stream_1, 183)).
argument(v_c_1_3883, 1, js_doc_token_stream_1_expr57).
assign(f_string_3882, js_doc_token_stream_1_expr60, line(js_doc_token_stream_1, 184)).
method_invoc(js_doc_token_stream_1_expr60, m_get_string_from_buffer_3543, line(js_doc_token_stream_1, 184)).
assign(f_string_buffer_top_3878, js_doc_token_stream_1_literal9, line(js_doc_token_stream_1, 185)).
return(q_string_108, m_get_js_doc_token_3529, line(js_doc_token_stream_1, 186)).
ref(t_js_doc_token_95, q_string_108, line(js_doc_token_stream_1, 186)).
return(f_lineno_3871, m_get_lineno_3471, line(js_doc_token_stream_1, 226)).
return(js_doc_token_stream_1_expr63, m_get_charno_3472, line(js_doc_token_stream_1, 229)).
cond_expr(js_doc_token_stream_1_expr64, js_doc_token_stream_1_expr65, f_charno_3879, line(js_doc_token_stream_1, 229)).
return(f_string_3882, m_get_string_3473, line(js_doc_token_stream_1, 232)).
assign(f_token_end_3885, f_cursor_3875, line(js_doc_token_stream_1, 237)).
return(js_doc_token_stream_1_expr67, m_get_string_from_buffer_3543, line(js_doc_token_stream_1, 238)).
method_invoc(js_doc_token_stream_1_expr67, m_string_3548, line(js_doc_token_stream_1, 238)).
argument(f_string_buffer_3886, 1, js_doc_token_stream_1_expr67).
argument(js_doc_token_stream_1_literal10, 2, js_doc_token_stream_1_expr67).
argument(f_string_buffer_top_3878, 3, js_doc_token_stream_1_expr67).
param(p_c_3887, 1, m_add_to_string_3541).
assign(v_n_3888, f_string_buffer_top_3878, line(js_doc_token_stream_1, 242)).
ref(f_string_buffer_3886, q_length_108, line(js_doc_token_stream_1, 243)).
assign(js_doc_token_stream_1_expr70, js_doc_token_stream_1_expr71, line(js_doc_token_stream_1, 248)).
ref(f_string_buffer_3886, js_doc_token_stream_1_expr70, line(js_doc_token_stream_1, 248)).
assign(js_doc_token_stream_1_expr71, p_c_3887, line(js_doc_token_stream_1, 248)).
assign(f_string_buffer_top_3878, js_doc_token_stream_1_expr73, line(js_doc_token_stream_1, 249)).
param(p_c_3889, 1, m_unget_char_3542).
assign(js_doc_token_stream_1_expr74, js_doc_token_stream_1_expr75, line(js_doc_token_stream_1, 254)).
assign(js_doc_token_stream_1_expr76, js_doc_token_stream_1_expr77, line(js_doc_token_stream_1, 254)).
ref(f_unget_buffer_3891, js_doc_token_stream_1_expr80, line(js_doc_token_stream_1, 254)).
assign(js_doc_token_stream_1_expr83, p_c_3889, line(js_doc_token_stream_1, 255)).
ref(f_unget_buffer_3891, js_doc_token_stream_1_expr83, line(js_doc_token_stream_1, 255)).
param(p_test_3892, 1, m_match_char_3544).
assign(v_c_3893, js_doc_token_stream_1_expr86, line(js_doc_token_stream_1, 260)).
method_invoc(js_doc_token_stream_1_expr86, m_get_char_ignore_line_end_3549, line(js_doc_token_stream_1, 260)).
assign(f_token_end_3885, f_cursor_3875, line(js_doc_token_stream_1, 262)).
return(js_doc_token_stream_1_literal15, m_match_char_3544, line(js_doc_token_stream_1, 263)).
method_invoc(js_doc_token_stream_1_expr89, m_unget_char_ignore_line_end_3550, line(js_doc_token_stream_1, 265)).
argument(v_c_3893, 1, js_doc_token_stream_1_expr89).
return(js_doc_token_stream_1_literal16, m_match_char_3544, line(js_doc_token_stream_1, 266)).
param(p_c_3894, 1, m_is_alpha_3540).
return(js_doc_token_stream_1_expr91, m_is_alpha_3540, line(js_doc_token_stream_1, 273)).
return(js_doc_token_stream_1_expr92, m_is_alpha_3540, line(js_doc_token_stream_1, 275)).
param(p_c_3895, 1, m_is_jsdoc_string_3545).
return(js_doc_token_stream_1_literal21, m_is_jsdoc_string_3545, line(js_doc_token_stream_1, 298)).
return(js_doc_token_stream_1_expr95, m_is_jsdoc_string_3545, line(js_doc_token_stream_1, 301)).
method_invoc(js_doc_token_stream_1_expr96, m_is_jsspace_3539, line(js_doc_token_stream_1, 301)).
argument(p_c_3895, 1, js_doc_token_stream_1_expr96).
param(p_c_3896, 1, m_is_jsspace_3539).
return(js_doc_token_stream_1_expr98, m_is_jsspace_3539, line(js_doc_token_stream_1, 311)).
param(p_c_3897, 1, m_is_jsformat_char_3551).
assign(f_charno_3879, js_doc_token_stream_1_expr111, line(js_doc_token_stream_1, 341)).
method_invoc(js_doc_token_stream_1_expr111, m_get_offset_3554, line(js_doc_token_stream_1, 341)).
return(js_doc_token_stream_1_expr112, m_get_char_3538, line(js_doc_token_stream_1, 343)).
ref(f_unget_buffer_3891, js_doc_token_stream_1_expr112, line(js_doc_token_stream_1, 343)).
assign(v_c_3898, js_doc_token_stream_1_expr116, line(js_doc_token_stream_1, 356)).
method_invoc(js_doc_token_stream_1_expr116, m_char_at_3555, line(js_doc_token_stream_1, 356)).
argument(js_doc_token_stream_1_expr117, 1, js_doc_token_stream_1_expr116).
ref(f_source_string_3872, js_doc_token_stream_1_expr116, line(js_doc_token_stream_1, 356)).
assign(f_line_end_char_3899, js_doc_token_stream_1_expr123, line(js_doc_token_stream_1, 364)).
assign(f_line_start_3900, js_doc_token_stream_1_expr125, line(js_doc_token_stream_1, 365)).
assign(f_line_end_char_3899, v_c_3898, line(js_doc_token_stream_1, 371)).
assign(v_c_3898, js_doc_token_stream_1_literal37, line(js_doc_token_stream_1, 372)).
assign(f_charno_3879, js_doc_token_stream_1_expr136, line(js_doc_token_stream_1, 385)).
method_invoc(js_doc_token_stream_1_expr136, m_get_offset_3554, line(js_doc_token_stream_1, 385)).
return(v_c_3898, m_get_char_3538, line(js_doc_token_stream_1, 388)).
assign(v_c_3901, js_doc_token_stream_1_expr141, line(js_doc_token_stream_1, 412)).
method_invoc(js_doc_token_stream_1_expr141, m_char_at_3555, line(js_doc_token_stream_1, 412)).
argument(js_doc_token_stream_1_expr142, 1, js_doc_token_stream_1_expr141).
ref(f_source_string_3872, js_doc_token_stream_1_expr141, line(js_doc_token_stream_1, 412)).
return(v_c_3901, m_get_char_ignore_line_end_3549, line(js_doc_token_stream_1, 434)).
param(p_c_3902, 1, m_unget_char_ignore_line_end_3550).
assign(js_doc_token_stream_1_expr150, p_c_3902, line(js_doc_token_stream_1, 439)).
ref(f_unget_buffer_3891, js_doc_token_stream_1_expr150, line(js_doc_token_stream_1, 439)).
return(js_doc_token_stream_1_expr153, m_get_offset_3554, line(js_doc_token_stream_1, 447)).
assign(f_string_3882, js_doc_token_stream_1_literal45, line(js_doc_token_stream_1, 454)).
assign(f_string_buffer_3886, js_doc_token_stream_1_expr154, line(js_doc_token_stream_1, 456)).
assign(f_unget_buffer_3891, js_doc_token_stream_1_expr155, line(js_doc_token_stream_1, 460)).
assign(f_hit_eof_3903, js_doc_token_stream_1_literal48, line(js_doc_token_stream_1, 463)).
assign(f_line_start_3900, js_doc_token_stream_1_literal49, line(js_doc_token_stream_1, 465)).
assign(f_line_end_char_3899, js_doc_token_stream_1_expr156, line(js_doc_token_stream_1, 466)).
assign(f_charno_3879, js_doc_token_stream_1_expr157, line(js_doc_token_stream_1, 468)).

%compiler_input_1 - com.google.javascript.jscomp.CompilerInput
assign(f_provides_598, compiler_input_1_expr1, line(compiler_input_1, 52)).
method_invoc(compiler_input_1_expr1, m_new_hash_set_522, line(compiler_input_1, 52)).
ref(t_sets_12, compiler_input_1_expr1, line(compiler_input_1, 52)).
assign(f_requires_599, compiler_input_1_expr2, line(compiler_input_1, 53)).
method_invoc(compiler_input_1_expr2, m_new_hash_set_522, line(compiler_input_1, 53)).
ref(t_sets_12, compiler_input_1_expr2, line(compiler_input_1, 53)).
assign(f_generated_dependency_info_from_source_600, compiler_input_1_literal1, line(compiler_input_1, 54)).
param(p_ast_601, 1, m_compiler_input_523).
param(p_ast_602, 1, m_compiler_input_524).
param(p_is_extern_603, 2, m_compiler_input_524).
method_invoc(compiler_input_1_expr3, m_compiler_input_525, line(compiler_input_1, 65)).
argument(p_ast_602, 1, compiler_input_1_expr3).
argument(compiler_input_1_expr4, 2, compiler_input_1_expr3).
argument(p_is_extern_603, 3, compiler_input_1_expr3).
method_invoc(compiler_input_1_expr4, m_get_input_id_526, line(compiler_input_1, 65)).
ref(p_ast_602, compiler_input_1_expr4, line(compiler_input_1, 65)).
param(p_ast_604, 1, m_compiler_input_527).
param(p_input_id_605, 2, m_compiler_input_527).
param(p_is_extern_606, 3, m_compiler_input_527).
param(p_ast_607, 1, m_compiler_input_525).
param(p_input_id_608, 2, m_compiler_input_525).
param(p_is_extern_609, 3, m_compiler_input_525).
assign(f_ast_610, p_ast_607, line(compiler_input_1, 73)).
assign(f_id_611, p_input_id_608, line(compiler_input_1, 74)).
method_invoc(compiler_input_1_expr14, m_get_source_file_528, line(compiler_input_1, 78)).
ref(p_ast_607, compiler_input_1_expr14, line(compiler_input_1, 78)).
method_invoc(compiler_input_1_expr15, m_set_is_extern_529, line(compiler_input_1, 79)).
argument(p_is_extern_609, 1, compiler_input_1_expr15).
ref(compiler_input_1_expr16, compiler_input_1_expr15, line(compiler_input_1, 79)).
method_invoc(compiler_input_1_expr16, m_get_source_file_528, line(compiler_input_1, 79)).
ref(p_ast_607, compiler_input_1_expr16, line(compiler_input_1, 79)).
param(p_file_612, 1, m_compiler_input_421).
method_invoc(compiler_input_1_expr17, m_compiler_input_530, line(compiler_input_1, 84)).
argument(p_file_612, 1, compiler_input_1_expr17).
argument(compiler_input_1_literal4, 2, compiler_input_1_expr17).
param(p_file_613, 1, m_compiler_input_530).
param(p_is_extern_614, 2, m_compiler_input_530).
method_invoc(compiler_input_1_expr18, m_compiler_input_524, line(compiler_input_1, 88)).
argument(compiler_input_1_expr19, 1, compiler_input_1_expr18).
argument(p_is_extern_614, 2, compiler_input_1_expr18).
method_invoc(compiler_input_1_expr19, m_js_ast_531, line(compiler_input_1, 88)).
argument(p_file_613, 1, compiler_input_1_expr19).
return(f_id_611, m_get_input_id_423, line(compiler_input_1, 94)).
param(p_compiler_615, 1, m_get_ast_root_424).
assign(v_root_616, compiler_input_1_expr20, line(compiler_input_1, 116)).
method_invoc(compiler_input_1_expr20, m_get_ast_root_535, line(compiler_input_1, 116)).
argument(p_compiler_615, 1, compiler_input_1_expr20).
ref(f_ast_610, compiler_input_1_expr20, line(compiler_input_1, 116)).
method_invoc(compiler_input_1_expr22, m_check_state_536, line(compiler_input_1, 119)).
argument(compiler_input_1_expr23, 1, compiler_input_1_expr22).
ref(t_preconditions_19, compiler_input_1_expr22, line(compiler_input_1, 119)).
method_invoc(compiler_input_1_expr23, m_is_script_537, line(compiler_input_1, 119)).
ref(v_root_616, compiler_input_1_expr23, line(compiler_input_1, 119)).
method_invoc(compiler_input_1_expr24, m_check_not_null_538, line(compiler_input_1, 120)).
argument(compiler_input_1_expr25, 1, compiler_input_1_expr24).
ref(t_preconditions_19, compiler_input_1_expr24, line(compiler_input_1, 120)).
method_invoc(compiler_input_1_expr25, m_get_input_id_539, line(compiler_input_1, 120)).
ref(v_root_616, compiler_input_1_expr25, line(compiler_input_1, 120)).
return(v_root_616, m_get_ast_root_424, line(compiler_input_1, 122)).
param(p_file_617, 1, m_set_source_file_542).
param(p_compiler_618, 1, m_set_compiler_394).
assign(f_compiler_619, p_compiler_618, line(compiler_input_1, 147)).
param(p_provide_620, 1, m_add_provide_547).
param(p_require_621, 1, m_add_require_548).
param(p_require_622, 1, m_remove_require_549).
throw(m_regenerate_dependency_info_if_necessary_550, ioexception).
param(p_n_623, 1, m_visit_tree_551).
param(p_n_624, 1, m_visit_subtree_552).
param(p_parent_625, 2, m_visit_subtree_552).
param(p_line_number_626, 1, m_get_line_553).
param(p_line_number_627, 1, m_get_region_554).
throw(m_get_code_555, ioexception).
param(p_module_628, 1, m_set_module_557).
param(p_module_629, 1, m_override_module_558).
method_invoc(compiler_input_1_expr32, m_get_source_file_528, line(compiler_input_1, 337)).
ref(f_ast_610, compiler_input_1_expr32, line(compiler_input_1, 337)).
return(compiler_input_1_expr33, m_is_extern_559, line(compiler_input_1, 340)).
method_invoc(compiler_input_1_expr33, m_is_extern_560, line(compiler_input_1, 340)).
ref(compiler_input_1_expr34, compiler_input_1_expr33, line(compiler_input_1, 340)).
method_invoc(compiler_input_1_expr34, m_get_source_file_528, line(compiler_input_1, 340)).
ref(f_ast_610, compiler_input_1_expr34, line(compiler_input_1, 340)).
param(p_is_extern_630, 1, m_set_is_extern_561).
param(p_lineno_631, 1, m_get_line_offset_562).

%property_renaming_policy_1 - com.google.javascript.jscomp.PropertyRenamingPolicy

%jstype_expression_1 - com.google.javascript.rhino.JSTypeExpression
param(p_root_4384, 1, m_jstype_expression_4016).
param(p_source_name_4385, 2, m_jstype_expression_4016).
assign(f_root_4386, p_root_4384, line(jstype_expression_1, 65)).
assign(f_source_name_4387, p_source_name_4385, line(jstype_expression_1, 66)).
param(p_expr_4388, 1, m_make_optional_arg_4017).
param(p_scope_4389, 1, m_evaluate_1077).
param(p_registry_4390, 2, m_evaluate_1077).
assign(v_type_4391, jstype_expression_1_expr7, line(jstype_expression_1, 100)).
method_invoc(jstype_expression_1_expr7, m_create_from_type_nodes_4020, line(jstype_expression_1, 100)).
argument(f_root_4386, 1, jstype_expression_1_expr7).
argument(f_source_name_4387, 2, jstype_expression_1_expr7).
argument(p_scope_4389, 3, jstype_expression_1_expr7).
ref(p_registry_4390, jstype_expression_1_expr7, line(jstype_expression_1, 100)).
method_invoc(jstype_expression_1_expr8, m_set_jstype_3117, line(jstype_expression_1, 101)).
argument(v_type_4391, 1, jstype_expression_1_expr8).
ref(f_root_4386, jstype_expression_1_expr8, line(jstype_expression_1, 101)).
return(v_type_4391, m_evaluate_1077, line(jstype_expression_1, 102)).
param(p_other_4392, 1, m_equals_4021).
return(jstype_expression_1_expr9, m_equals_4021, line(jstype_expression_1, 107)).

%function_builder_1 - com.google.javascript.rhino.jstype.FunctionBuilder
assign(f_name_4716, function_builder_1_literal1, line(function_builder_1, 55)).
assign(f_source_node_4717, function_builder_1_literal2, line(function_builder_1, 56)).
assign(f_parameters_node_4718, function_builder_1_literal3, line(function_builder_1, 57)).
assign(f_return_type_4719, function_builder_1_literal4, line(function_builder_1, 58)).
assign(f_type_of_this_4720, function_builder_1_literal5, line(function_builder_1, 59)).
assign(f_template_keys_4721, function_builder_1_expr1, line(function_builder_1, 60)).
method_invoc(function_builder_1_expr1, m_of_310, line(function_builder_1, 60)).
ref(t_immutable_list_14, function_builder_1_expr1, line(function_builder_1, 60)).
assign(f_inferred_return_type_4722, function_builder_1_literal6, line(function_builder_1, 61)).
assign(f_is_constructor_4723, function_builder_1_literal7, line(function_builder_1, 62)).
assign(f_is_native_type_4724, function_builder_1_literal8, line(function_builder_1, 63)).
param(p_registry_4725, 1, m_function_builder_4319).
assign(f_registry_4726, p_registry_4725, line(function_builder_1, 66)).
param(p_name_4727, 1, m_with_name_4320).
param(p_source_node_4728, 1, m_with_source_node_4321).
param(p_params_4729, 1, m_with_params_4322).
param(p_parameters_node_4730, 1, m_with_params_node_4323).
assign(f_parameters_node_4718, p_parameters_node_4730, line(function_builder_1, 91)).
return(function_builder_1_expr8, m_with_params_node_4323, line(function_builder_1, 92)).
param(p_return_type_4731, 1, m_with_return_type_4324).
assign(f_return_type_4719, p_return_type_4731, line(function_builder_1, 97)).
return(function_builder_1_expr12, m_with_return_type_4324, line(function_builder_1, 98)).
param(p_return_type_4732, 1, m_with_return_type_4325).
param(p_inferred_4733, 2, m_with_return_type_4325).
param(p_return_type_4734, 1, m_with_inferred_return_type_4326).
param(p_type_of_this_4735, 1, m_with_type_of_this_4327).
param(p_template_keys_4736, 1, m_with_template_keys_4328).
param(p_is_constructor_4737, 1, m_set_is_constructor_4330).
assign(f_is_native_type_4724, function_builder_1_literal9, line(function_builder_1, 142)).
return(function_builder_1_expr16, m_for_native_type_4331, line(function_builder_1, 143)).
param(p_other_type_4738, 1, m_copy_from_other_function_4332).
return(function_builder_1_expr17, m_build_4333, line(function_builder_1, 161)).
method_invoc(function_builder_1_expr17, m_function_type_4317, line(function_builder_1, 161)).
argument(f_registry_4726, 1, function_builder_1_expr17).
argument(f_name_4716, 2, function_builder_1_expr17).
argument(f_source_node_4717, 3, function_builder_1_expr17).
argument(function_builder_1_expr18, 4, function_builder_1_expr17).
argument(f_type_of_this_4720, 5, function_builder_1_expr17).
argument(f_template_keys_4721, 6, function_builder_1_expr17).
argument(f_is_constructor_4723, 7, function_builder_1_expr17).
argument(f_is_native_type_4724, 8, function_builder_1_expr17).

%check_unreachable_code_1 - com.google.javascript.jscomp.CheckUnreachableCode
assign(f_unreachable_code_229, check_unreachable_code_1_expr1, line(check_unreachable_code_1, 35)).
method_invoc(check_unreachable_code_1_expr1, m_error_1, line(check_unreachable_code_1, 35)).
argument(check_unreachable_code_1_literal1, 1, check_unreachable_code_1_expr1).
argument(check_unreachable_code_1_literal2, 2, check_unreachable_code_1_expr1).
ref(t_diagnostic_type_2, check_unreachable_code_1_expr1, line(check_unreachable_code_1, 35)).
param(p_compiler_230, 1, m_check_unreachable_code_152).
param(p_level_231, 2, m_check_unreachable_code_152).
param(p_t_232, 1, m_enter_scope_153).
param(p_t_233, 1, m_should_traverse_154).
param(p_n_234, 2, m_should_traverse_154).
param(p_parent_235, 3, m_should_traverse_154).
param(p_control_flow_graph_236, 1, m_init_scope_155).
param(p_t_237, 1, m_exit_scope_156).
param(p_t_238, 1, m_visit_157).
param(p_n_239, 2, m_visit_157).
param(p_parent_240, 3, m_visit_157).
param(p_input_241, 1, m_apply_158).

%chainable_reverse_abstract_interpreter_1 - com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter
param(p_convention_3981, 1, m_chainable_reverse_abstract_interpreter_3626).
param(p_type_registry_3982, 2, m_chainable_reverse_abstract_interpreter_3626).
method_invoc(chainable_reverse_abstract_interpreter_1_expr1, m_check_not_null_538, line(chainable_reverse_abstract_interpreter_1, 65)).
argument(p_convention_3981, 1, chainable_reverse_abstract_interpreter_1_expr1).
ref(t_preconditions_19, chainable_reverse_abstract_interpreter_1_expr1, line(chainable_reverse_abstract_interpreter_1, 65)).
assign(f_convention_3983, p_convention_3981, line(chainable_reverse_abstract_interpreter_1, 66)).
assign(f_type_registry_3984, p_type_registry_3982, line(chainable_reverse_abstract_interpreter_1, 67)).
assign(f_first_link_3985, chainable_reverse_abstract_interpreter_1_expr9, line(chainable_reverse_abstract_interpreter_1, 68)).
assign(f_next_link_3986, chainable_reverse_abstract_interpreter_1_literal1, line(chainable_reverse_abstract_interpreter_1, 69)).
param(p_last_link_3987, 1, m_append_3627).
param(p_condition_3988, 1, m_first_preciser_scope_knowing_condition_outcome_3629).
param(p_blind_scope_3989, 2, m_first_preciser_scope_knowing_condition_outcome_3629).
param(p_outcome_3990, 3, m_first_preciser_scope_knowing_condition_outcome_3629).
param(p_condition_3991, 1, m_next_preciser_scope_knowing_condition_outcome_3630).
param(p_blind_scope_3992, 2, m_next_preciser_scope_knowing_condition_outcome_3630).
param(p_outcome_3993, 3, m_next_preciser_scope_knowing_condition_outcome_3630).
param(p_node_3994, 1, m_get_type_if_refinable_3631).
param(p_scope_3995, 2, m_get_type_if_refinable_3631).
param(p_scope_3996, 1, m_declare_name_in_scope_3632).
param(p_node_3997, 2, m_declare_name_in_scope_3632).
param(p_type_3998, 3, m_declare_name_in_scope_3632).
assign(f_restrict_undefined_visitor_3999, chainable_reverse_abstract_interpreter_1_expr11, line(chainable_reverse_abstract_interpreter_1, 186)).
method_invoc(chainable_reverse_abstract_interpreter_1_expr11, m__3633, line(chainable_reverse_abstract_interpreter_1, 187)).
param(p_enum_element_type_4000, 1, m_case_enum_element_type_3634).
param(p_type_4001, 1, m_case_function_type_3639).
param(p_type_4002, 1, m_case_object_type_3642).
param(p_type_4003, 1, m_case_union_type_3644).
param(p_type_4004, 1, m_case_parameterized_type_3647).
param(p_template_type_4005, 1, m_case_template_type_3648).
assign(f_restrict_null_visitor_4006, chainable_reverse_abstract_interpreter_1_expr12, line(chainable_reverse_abstract_interpreter_1, 274)).
method_invoc(chainable_reverse_abstract_interpreter_1_expr12, m__3649, line(chainable_reverse_abstract_interpreter_1, 275)).
param(p_enum_element_type_4007, 1, m_case_enum_element_type_3650).
param(p_type_4008, 1, m_case_function_type_3655).
param(p_type_4009, 1, m_case_object_type_3658).
param(p_type_4010, 1, m_case_union_type_3660).
param(p_type_4011, 1, m_case_parameterized_type_3663).
param(p_template_type_4012, 1, m_case_template_type_3664).
param(p_top_type_4013, 1, m_case_top_type_3665).
param(p_type_4014, 1, m_case_union_type_3668).
param(p_enum_element_type_4015, 1, m_case_enum_element_type_3670).
param(p_type_4016, 1, m_case_parameterized_type_3671).
param(p_template_type_4017, 1, m_case_template_type_3672).
param(p_type_4018, 1, m_case_function_type_3675).
param(p_type_4019, 1, m_case_object_type_3678).
param(p_top_type_4020, 1, m_case_top_type_3681).
param(p_type_4021, 1, m_case_function_type_3684).
param(p_type_4022, 1, m_case_object_type_3687).
param(p_value_4023, 1, m_restrict_by_one_type_of_result_visitor_3690).
param(p_result_equals_value_4024, 2, m_restrict_by_one_type_of_result_visitor_3690).
param(p_result_4025, 1, m_matches_expectation_3691).
param(p_top_type_4026, 1, m_case_top_type_3692).
param(p_type_4027, 1, m_case_function_type_3695).
param(p_type_4028, 1, m_case_object_type_3698).
param(p_type_4029, 1, m_get_restricted_without_undefined_3701).
param(p_type_4030, 1, m_get_restricted_without_null_3702).
param(p_type_4031, 1, m_get_restricted_by_type_of_result_3703).
param(p_value_4032, 2, m_get_restricted_by_type_of_result_3703).
param(p_result_equals_value_4033, 3, m_get_restricted_by_type_of_result_3703).
param(p_type_id_4034, 1, m_get_native_type_3704).
param(p_value_4035, 1, m_get_native_type_for_type_of_3705).

%check_suspicious_code_1 - com.google.javascript.jscomp.CheckSuspiciousCode
assign(f_suspicious_semicolon_216, check_suspicious_code_1_expr1, line(check_suspicious_code_1, 39)).
method_invoc(check_suspicious_code_1_expr1, m_warning_109, line(check_suspicious_code_1, 39)).
argument(check_suspicious_code_1_literal1, 1, check_suspicious_code_1_expr1).
argument(check_suspicious_code_1_literal2, 2, check_suspicious_code_1_expr1).
ref(t_diagnostic_type_2, check_suspicious_code_1_expr1, line(check_suspicious_code_1, 39)).
assign(f_suspicious_comparison_with_nan_217, check_suspicious_code_1_expr2, line(check_suspicious_code_1, 43)).
param(p_t_218, 1, m_visit_147).
param(p_n_219, 2, m_visit_147).
param(p_parent_220, 3, m_visit_147).
param(p_t_221, 1, m_check_missing_semicolon_148).
param(p_n_222, 2, m_check_missing_semicolon_148).
param(p_t_223, 1, m_report_if_was_empty_149).
param(p_block_224, 2, m_report_if_was_empty_149).
param(p_t_225, 1, m_check_na_n_150).
param(p_n_226, 2, m_check_na_n_150).
param(p_t_227, 1, m_report_if_na_n_151).
param(p_n_228, 2, m_report_if_na_n_151).

%js_message_visitor_1 - com.google.javascript.jscomp.JsMessageVisitor
assign(f_message_has_no_description_1598, js_message_visitor_1_expr1, line(js_message_visitor_1, 48)).
assign(f_message_has_no_text_1599, js_message_visitor_1_expr2, line(js_message_visitor_1, 52)).
assign(f_message_tree_malformed_1600, js_message_visitor_1_expr3, line(js_message_visitor_1, 57)).
assign(f_message_has_no_value_1601, js_message_visitor_1_expr4, line(js_message_visitor_1, 61)).
assign(f_message_duplicate_key_1602, js_message_visitor_1_expr5, line(js_message_visitor_1, 65)).
assign(f_message_node_is_orphaned_1603, js_message_visitor_1_expr6, line(js_message_visitor_1, 70)).
assign(f_message_not_initialized_using_new_syntax_1604, js_message_visitor_1_expr7, line(js_message_visitor_1, 74)).
assign(f_bad_fallback_syntax_1605, js_message_visitor_1_expr8, line(js_message_visitor_1, 78)).
assign(f_fallback_arg_error_1606, js_message_visitor_1_expr9, line(js_message_visitor_1, 85)).
assign(f_msg_unnamed_pattern_1607, js_message_visitor_1_expr10, line(js_message_visitor_1, 106)).
assign(f_camelcase_pattern_1608, js_message_visitor_1_expr11, line(js_message_visitor_1, 109)).
param(p_compiler_1609, 1, m_js_message_visitor_1191).
param(p_need_to_check_duplications_1610, 2, m_js_message_visitor_1191).
param(p_style_1611, 3, m_js_message_visitor_1191).
param(p_id_generator_1612, 4, m_js_message_visitor_1191).
param(p_externs_1613, 1, m_process_1192).
param(p_root_1614, 2, m_process_1192).
param(p_traversal_1615, 1, m_visit_1193).
param(p_node_1616, 2, m_visit_1193).
param(p_parent_1617, 3, m_visit_1193).
param(p_t_1618, 1, m_track_message_1194).
param(p_message_1619, 2, m_track_message_1194).
param(p_msg_name_1620, 3, m_track_message_1194).
param(p_msg_node_1621, 4, m_track_message_1194).
param(p_is_unnamed_message_1622, 5, m_track_message_1194).
param(p_t_1623, 1, m_get_tracked_message_1195).
param(p_msg_name_1624, 2, m_get_tracked_message_1195).
param(p_msg_name_1625, 1, m_check_if_message_duplicated_1196).
param(p_msg_node_1626, 2, m_check_if_message_duplicated_1196).
param(p_builder_1627, 1, m_extract_message_from_variable_1197).
param(p_name_node_1628, 2, m_extract_message_from_variable_1197).
param(p_parent_node_1629, 3, m_extract_message_from_variable_1197).
param(p_grand_parent_node_1630, 4, m_extract_message_from_variable_1197).
throw(m_extract_message_from_variable_1197, malformed_exception).
param(p_builder_1631, 1, m_extract_message_from_property_1198).
param(p_get_prop_node_1632, 2, m_extract_message_from_property_1198).
param(p_assign_node_1633, 3, m_extract_message_from_property_1198).
throw(m_extract_message_from_property_1198, malformed_exception).
param(p_builder_1634, 1, m_maybe_init_meta_data_from_js_doc_or_help_var_1199).
param(p_var_node_1635, 2, m_maybe_init_meta_data_from_js_doc_or_help_var_1199).
param(p_parent_of_var_node_1636, 3, m_maybe_init_meta_data_from_js_doc_or_help_var_1199).
throw(m_maybe_init_meta_data_from_js_doc_or_help_var_1199, malformed_exception).
param(p_builder_1637, 1, m_maybe_init_meta_data_from_help_var_1200).
param(p_sibling_1638, 2, m_maybe_init_meta_data_from_help_var_1200).
throw(m_maybe_init_meta_data_from_help_var_1200, malformed_exception).
param(p_builder_1639, 1, m_maybe_init_meta_data_from_js_doc_1201).
param(p_node_1640, 2, m_maybe_init_meta_data_from_js_doc_1201).
param(p_node_1641, 1, m_extract_string_from_string_expr_node_1202).
throw(m_extract_string_from_string_expr_node_1202, malformed_exception).
param(p_builder_1642, 1, m_extract_from_function_node_1203).
param(p_node_1643, 2, m_extract_from_function_node_1203).
throw(m_extract_from_function_node_1203, malformed_exception).
param(p_builder_1644, 1, m_extract_from_return_descendant_1204).
param(p_node_1645, 2, m_extract_from_return_descendant_1204).
throw(m_extract_from_return_descendant_1204, malformed_exception).
param(p_builder_1646, 1, m_extract_from_call_node_1205).
param(p_node_1647, 2, m_extract_from_call_node_1205).
throw(m_extract_from_call_node_1205, malformed_exception).
param(p_builder_1648, 1, m_parse_message_text_node_1206).
param(p_node_1649, 2, m_parse_message_text_node_1206).
throw(m_parse_message_text_node_1206, malformed_exception).
param(p_t_1650, 1, m_visit_fallback_function_call_1207).
param(p_call_1651, 2, m_visit_fallback_function_call_1207).
param(p_message_1652, 1, m_process_js_message_1208).
param(p_definition_1653, 2, m_process_js_message_1208).
param(p_call_node_1654, 1, m_process_message_fallback_1209).
param(p_message_1_1655, 2, m_process_message_fallback_1209).
param(p_message_2_1656, 3, m_process_message_fallback_1209).
param(p_identifier_1657, 1, m_is_message_name_1210).
param(p_is_new_style_message_1658, 2, m_is_message_name_1210).
param(p_identifier_1659, 1, m_is_unnamed_message_name_1211).
param(p_input_1660, 1, m_is_lower_camel_case_with_numeric_suffixes_1212).
param(p_node_1661, 1, m_get_readable_token_name_1213).
param(p_input_1662, 1, m_to_lower_camel_case_with_numeric_suffixes_1214).
param(p_node_1663, 1, m_check_node_1215).
param(p_type_1664, 2, m_check_node_1215).
throw(m_check_node_1215, malformed_exception).
param(p_message_1665, 1, m_malformed_exception_1216).
param(p_node_1666, 2, m_malformed_exception_1216).
param(p_message_1667, 1, m_message_location_1218).
param(p_message_node_1668, 2, m_message_location_1218).

%function_type_1 - com.google.javascript.rhino.jstype.FunctionType
assign(f_implemented_interfaces_4759, function_type_1_expr1, line(function_type_1, 119)).
method_invoc(function_type_1_expr1, m_of_310, line(function_type_1, 119)).
ref(t_immutable_list_14, function_type_1_expr1, line(function_type_1, 119)).
assign(f_extended_interfaces_4760, function_type_1_expr2, line(function_type_1, 125)).
method_invoc(function_type_1_expr2, m_of_310, line(function_type_1, 125)).
ref(t_immutable_list_14, function_type_1_expr2, line(function_type_1, 125)).
param(p_registry_4761, 1, m_function_type_4317).
param(p_name_4762, 2, m_function_type_4317).
param(p_source_4763, 3, m_function_type_4317).
param(p_arrow_type_4764, 4, m_function_type_4317).
param(p_type_of_this_4765, 5, m_function_type_4317).
param(p_template_keys_4766, 6, m_function_type_4317).
param(p_is_constructor_4767, 7, m_function_type_4317).
param(p_native_type_4768, 8, m_function_type_4317).
method_invoc(function_type_1_expr3, m_prototype_object_type_4344, line(function_type_1, 138)).
argument(p_registry_4761, 1, function_type_1_expr3).
argument(p_name_4762, 2, function_type_1_expr3).
argument(function_type_1_expr4, 3, function_type_1_expr3).
argument(p_native_type_4768, 4, function_type_1_expr3).
argument(p_template_keys_4766, 5, function_type_1_expr3).
argument(function_type_1_literal1, 6, function_type_1_expr3).
method_invoc(function_type_1_expr5, m_set_pretty_print_4345, line(function_type_1, 141)).
argument(function_type_1_literal2, 1, function_type_1_expr5).
method_invoc(function_type_1_expr6, m_check_argument_1173, line(function_type_1, 143)).
argument(function_type_1_expr7, 1, function_type_1_expr6).
ref(t_preconditions_19, function_type_1_expr6, line(function_type_1, 143)).
method_invoc(function_type_1_expr9, m_check_not_null_538, line(function_type_1, 145)).
argument(p_arrow_type_4764, 1, function_type_1_expr9).
ref(t_preconditions_19, function_type_1_expr9, line(function_type_1, 145)).
assign(f_source_4769, p_source_4763, line(function_type_1, 146)).
assign(f_kind_4770, q_constructor_140, line(function_type_1, 148)).
ref(t_kind_110, q_constructor_140, line(function_type_1, 148)).
assign(f_prop_access_4771, q_any_141, line(function_type_1, 149)).
ref(t_prop_access_111, q_any_141, line(function_type_1, 149)).
assign(f_type_of_this_4772, function_type_1_expr21, line(function_type_1, 150)).
cond_expr(function_type_1_expr23, p_type_of_this_4765, function_type_1_expr24, line(function_type_1, 150)).
assign(f_kind_4770, q_ordinary_142, line(function_type_1, 153)).
ref(t_kind_110, q_ordinary_142, line(function_type_1, 153)).
assign(f_type_of_this_4772, function_type_1_expr30, line(function_type_1, 154)).
cond_expr(function_type_1_expr32, p_type_of_this_4765, function_type_1_expr33, line(function_type_1, 154)).
assign(f_call_4773, p_arrow_type_4764, line(function_type_1, 158)).
param(p_registry_4774, 1, m_function_type_4346).
param(p_name_4775, 2, m_function_type_4346).
param(p_source_4776, 3, m_function_type_4346).
method_invoc(function_type_1_expr37, m_prototype_object_type_4347, line(function_type_1, 163)).
argument(p_registry_4774, 1, function_type_1_expr37).
argument(p_name_4775, 2, function_type_1_expr37).
argument(function_type_1_expr38, 3, function_type_1_expr37).
method_invoc(function_type_1_expr39, m_set_pretty_print_4345, line(function_type_1, 165)).
argument(function_type_1_literal6, 1, function_type_1_expr39).
method_invoc(function_type_1_expr40, m_check_argument_1173, line(function_type_1, 167)).
argument(function_type_1_expr41, 1, function_type_1_expr40).
ref(t_preconditions_19, function_type_1_expr40, line(function_type_1, 167)).
method_invoc(function_type_1_expr43, m_check_argument_1173, line(function_type_1, 169)).
argument(function_type_1_expr44, 1, function_type_1_expr43).
ref(t_preconditions_19, function_type_1_expr43, line(function_type_1, 169)).
assign(f_source_4769, p_source_4776, line(function_type_1, 170)).
assign(f_call_4773, function_type_1_expr50, line(function_type_1, 171)).
method_invoc(function_type_1_expr50, m_arrow_type_4270, line(function_type_1, 171)).
argument(p_registry_4774, 1, function_type_1_expr50).
argument(function_type_1_expr52, 2, function_type_1_expr50).
argument(function_type_1_literal9, 3, function_type_1_expr50).
method_invoc(function_type_1_expr52, m_node_3004, line(function_type_1, 171)).
argument(q_param_list_143, 1, function_type_1_expr52).
ref(t_token_51, q_param_list_143, line(function_type_1, 171)).
assign(f_kind_4770, q_interface_143, line(function_type_1, 172)).
ref(t_kind_110, q_interface_143, line(function_type_1, 172)).
assign(f_type_of_this_4772, function_type_1_expr58, line(function_type_1, 173)).
method_invoc(function_type_1_expr58, m_instance_object_type_4348, line(function_type_1, 173)).
argument(p_registry_4774, 1, function_type_1_expr58).
argument(function_type_1_expr60, 2, function_type_1_expr58).
param(p_registry_4777, 1, m_for_interface_4349).
param(p_name_4778, 2, m_for_interface_4349).
param(p_source_4779, 3, m_for_interface_4349).
return(function_type_1_expr61, m_for_interface_4349, line(function_type_1, 179)).
method_invoc(function_type_1_expr61, m_function_type_4346, line(function_type_1, 179)).
argument(p_registry_4777, 1, function_type_1_expr61).
argument(p_name_4778, 2, function_type_1_expr61).
argument(p_source_4779, 3, function_type_1_expr61).
return(function_type_1_expr62, m_is_constructor_1809, line(function_type_1, 191)).
ref(t_kind_110, q_constructor_144, line(function_type_1, 191)).
return(function_type_1_expr63, m_is_interface_1104, line(function_type_1, 196)).
ref(t_kind_110, q_interface_144, line(function_type_1, 196)).
return(function_type_1_expr64, m_to_maybe_function_type_4356, line(function_type_1, 254)).
return(q_parameters_144, m_get_parameters_node_3012, line(function_type_1, 285)).
ref(f_call_4773, q_parameters_144, line(function_type_1, 285)).
return(f_call_4773, m_get_internal_arrow_type_4318, line(function_type_1, 330)).
param(p_name_4780, 1, m_get_slot_3172).
method_invoc(function_type_1_expr65, m_equals_3170, line(function_type_1, 335)).
argument(p_name_4780, 1, function_type_1_expr65).
ref(function_type_1_literal10, function_type_1_expr65, line(function_type_1, 335)).
method_invoc(function_type_1_expr66, m_get_prototype_4364, line(function_type_1, 337)).
return(f_prototype_slot_4781, m_get_slot_3172, line(function_type_1, 338)).
assign(v_ref_name_4782, function_type_1_expr68, line(function_type_1, 366)).
method_invoc(function_type_1_expr68, m_get_reference_name_4366, line(function_type_1, 366)).
method_invoc(function_type_1_expr70, m_set_prototype_4367, line(function_type_1, 375)).
argument(function_type_1_expr71, 1, function_type_1_expr70).
argument(function_type_1_literal13, 2, function_type_1_expr70).
return(function_type_1_expr72, m_get_prototype_4364, line(function_type_1, 384)).
assign(function_type_1_expr72, function_type_1_expr73, line(function_type_1, 384)).
method_invoc(function_type_1_expr73, m_get_type_4368, line(function_type_1, 384)).
ref(f_prototype_slot_4781, function_type_1_expr73, line(function_type_1, 384)).
param(p_base_type_4783, 1, m_set_prototype_based_on_4369).
method_invoc(function_type_1_expr74, m_set_prototype_based_on_4370, line(function_type_1, 393)).
argument(p_base_type_4783, 1, function_type_1_expr74).
argument(function_type_1_literal14, 2, function_type_1_expr74).
param(p_base_type_4784, 1, m_set_prototype_based_on_4370).
param(p_property_node_4785, 2, m_set_prototype_based_on_4370).
method_invoc(function_type_1_expr76, m_has_reference_name_4371, line(function_type_1, 414)).
ref(p_base_type_4784, function_type_1_expr76, line(function_type_1, 414)).
assign(p_base_type_4784, function_type_1_expr78, line(function_type_1, 417)).
method_invoc(function_type_1_expr78, m_prototype_object_type_4347, line(function_type_1, 417)).
argument(f_registry_4786, 1, function_type_1_expr78).
argument(function_type_1_expr79, 2, function_type_1_expr78).
argument(p_base_type_4784, 3, function_type_1_expr78).
method_invoc(function_type_1_expr80, m_set_prototype_4367, line(function_type_1, 420)).
argument(p_base_type_4784, 1, function_type_1_expr80).
argument(p_property_node_4785, 2, function_type_1_expr80).
param(p_prototype_4787, 1, m_set_prototype_4367).
param(p_property_node_4788, 2, m_set_prototype_4367).
method_invoc(function_type_1_expr83, m_is_constructor_1809, line(function_type_1, 433)).
method_invoc(function_type_1_expr85, m_get_instance_type_1100, line(function_type_1, 433)).
return(function_type_1_expr86, m_set_prototype_4367, line(function_type_1, 436)).
method_invoc(function_type_1_expr86, m_set_prototype_no_check_4372, line(function_type_1, 436)).
argument(p_prototype_4787, 1, function_type_1_expr86).
argument(p_property_node_4788, 2, function_type_1_expr86).
param(p_prototype_4789, 1, m_set_prototype_no_check_4372).
param(p_property_node_4790, 2, m_set_prototype_no_check_4372).
assign(v_old_prototype_4791, function_type_1_expr87, line(function_type_1, 441)).
cond_expr(function_type_1_expr88, function_type_1_literal16, function_type_1_expr89, line(function_type_1, 441)).
assign(v_replaced_prototype_4792, function_type_1_expr90, line(function_type_1, 443)).
assign(f_prototype_slot_4781, function_type_1_expr93, line(function_type_1, 445)).
method_invoc(function_type_1_expr93, m_property_4373, line(function_type_1, 445)).
argument(function_type_1_literal19, 1, function_type_1_expr93).
argument(p_prototype_4789, 2, function_type_1_expr93).
argument(function_type_1_literal20, 3, function_type_1_expr93).
argument(function_type_1_expr95, 4, function_type_1_expr93).
method_invoc(function_type_1_expr96, m_set_owner_function_4374, line(function_type_1, 447)).
argument(function_type_1_expr97, 1, function_type_1_expr96).
ref(p_prototype_4789, function_type_1_expr96, line(function_type_1, 447)).
method_invoc(function_type_1_expr100, m_is_constructor_1809, line(function_type_1, 455)).
method_invoc(function_type_1_expr101, m_is_interface_1104, line(function_type_1, 455)).
assign(v_super_class_4793, function_type_1_expr102, line(function_type_1, 456)).
method_invoc(function_type_1_expr102, m_get_super_class_constructor_3171, line(function_type_1, 456)).
method_invoc(function_type_1_expr104, m_add_sub_type_4375, line(function_type_1, 458)).
argument(function_type_1_expr105, 1, function_type_1_expr104).
ref(v_super_class_4793, function_type_1_expr104, line(function_type_1, 458)).
method_invoc(function_type_1_expr106, m_is_interface_1104, line(function_type_1, 461)).
ref(function_type_1_expr107, function_type_1_stmt52, line(function_type_1, 462)).
method_invoc(function_type_1_expr107, m_get_extended_interfaces_1810, line(function_type_1, 462)).
method_invoc(function_type_1_expr109, m_get_constructor_1811, line(function_type_1, 463)).
ref(v_interface_type_4794, function_type_1_expr109, line(function_type_1, 463)).
return(function_type_1_literal24, m_set_prototype_no_check_4372, line(function_type_1, 474)).
param(p_instance_4795, 1, m_add_related_interfaces_4377).
param(p_set_4796, 2, m_add_related_interfaces_4377).
param(p_implemented_interfaces_4797, 1, m_set_implemented_interfaces_4380).
param(p_instance_4798, 1, m_add_related_extended_interfaces_4382).
param(p_set_4799, 2, m_add_related_extended_interfaces_4382).
return(f_extended_interfaces_4760, m_get_extended_interfaces_1810, line(function_type_1, 567)).
return(function_type_1_expr110, m_get_extended_interfaces_count_1812, line(function_type_1, 572)).
method_invoc(function_type_1_expr110, m_size_918, line(function_type_1, 572)).
ref(f_extended_interfaces_4760, function_type_1_expr110, line(function_type_1, 572)).
param(p_extended_interfaces_4800, 1, m_set_extended_interfaces_1102).
throw(m_set_extended_interfaces_1102, unsupported_operation_exception).
method_invoc(function_type_1_expr111, m_is_interface_1104, line(function_type_1, 577)).
assign(f_extended_interfaces_4760, function_type_1_expr114, line(function_type_1, 578)).
method_invoc(function_type_1_expr114, m_copy_of_4383, line(function_type_1, 578)).
argument(p_extended_interfaces_4800, 1, function_type_1_expr114).
ref(t_immutable_list_14, function_type_1_expr114, line(function_type_1, 578)).
param(p_name_4801, 1, m_get_property_type_4384).
param(p_args_to_bind_4802, 1, m_get_bind_return_type_4385).
param(p_is_call_4803, 1, m_get_call_or_bind_signature_4386).
param(p_name_4804, 1, m_define_property_4387).
param(p_type_4805, 2, m_define_property_4387).
param(p_inferred_4806, 3, m_define_property_4387).
param(p_property_node_4807, 4, m_define_property_4387).
param(p_that_4808, 1, m_sup_and_inf_helper_4388).
param(p_least_super_4809, 2, m_sup_and_inf_helper_4388).
param(p_other_4810, 1, m_try_merge_function_piecewise_4389).
param(p_least_super_4811, 2, m_try_merge_function_piecewise_4389).
method_invoc(function_type_1_expr116, m_check_argument_1173, line(function_type_1, 832)).
argument(function_type_1_expr117, 1, function_type_1_expr116).
ref(t_preconditions_19, function_type_1_expr116, line(function_type_1, 832)).
method_invoc(function_type_1_expr118, m_is_constructor_1809, line(function_type_1, 832)).
method_invoc(function_type_1_expr119, m_is_interface_1104, line(function_type_1, 832)).
assign(v_maybe_super_instance_type_4812, function_type_1_expr120, line(function_type_1, 833)).
method_invoc(function_type_1_expr120, m_get_implicit_prototype_1805, line(function_type_1, 833)).
ref(function_type_1_expr121, function_type_1_expr120, line(function_type_1, 833)).
method_invoc(function_type_1_expr121, m_get_prototype_4364, line(function_type_1, 833)).
return(function_type_1_literal26, m_get_super_class_constructor_3171, line(function_type_1, 835)).
return(function_type_1_expr123, m_get_super_class_constructor_3171, line(function_type_1, 837)).
method_invoc(function_type_1_expr123, m_get_constructor_1811, line(function_type_1, 837)).
ref(v_maybe_super_instance_type_4812, function_type_1_expr123, line(function_type_1, 837)).
param(p_type_4813, 1, m_get_top_defining_interface_4390).
param(p_property_name_4814, 2, m_get_top_defining_interface_4390).
param(p_property_name_4815, 1, m_get_top_most_defining_type_4391).
param(p_that_4816, 1, m_check_function_equivalence_helper_4392).
param(p_eq_method_4817, 2, m_check_function_equivalence_helper_4392).
param(p_other_type_4818, 1, m_has_equal_call_type_4394).
param(p_for_annotations_4819, 1, m_to_string_helper_4395).
param(p_b_4820, 1, m_append_arg_string_4396).
param(p_p_4821, 2, m_append_arg_string_4396).
param(p_for_annotations_4822, 3, m_append_arg_string_4396).
param(p_builder_4823, 1, m_append_var_args_string_4397).
param(p_param_type_4824, 2, m_append_var_args_string_4397).
param(p_for_annotations_4825, 3, m_append_var_args_string_4397).
param(p_builder_4826, 1, m_append_optional_arg_string_4398).
param(p_param_type_4827, 2, m_append_optional_arg_string_4398).
param(p_for_annotations_4828, 3, m_append_optional_arg_string_4398).
param(p_that_4829, 1, m_is_subtype_4399).
param(p_visitor_4830, 1, m_visit_4400).
param(p_visitor_4831, 1, m_visit_4401).
param(p_that_4832, 2, m_visit_4401).
method_invoc(function_type_1_expr124, m_check_state_536, line(function_type_1, 1062)).
argument(function_type_1_expr125, 1, function_type_1_expr124).
ref(t_preconditions_19, function_type_1_expr124, line(function_type_1, 1062)).
method_invoc(function_type_1_expr125, m_has_instance_type_4402, line(function_type_1, 1062)).
return(function_type_1_expr126, m_get_instance_type_1100, line(function_type_1, 1063)).
method_invoc(function_type_1_expr126, m_to_object_type_4403, line(function_type_1, 1063)).
ref(f_type_of_this_4772, function_type_1_expr126, line(function_type_1, 1063)).
param(p_instance_type_4833, 1, m_set_instance_type_4404).
assign(f_type_of_this_4772, p_instance_type_4833, line(function_type_1, 1071)).
return(function_type_1_expr128, m_has_instance_type_4402, line(function_type_1, 1078)).
method_invoc(function_type_1_expr129, m_is_constructor_1809, line(function_type_1, 1078)).
method_invoc(function_type_1_expr130, m_is_interface_1104, line(function_type_1, 1078)).
return(function_type_1_expr131, m_get_type_of_this_3132, line(function_type_1, 1086)).
cond_expr(function_type_1_expr132, function_type_1_expr133, f_type_of_this_4772, line(function_type_1, 1086)).
method_invoc(function_type_1_expr132, m_is_empty_type_4341, line(function_type_1, 1086)).
ref(f_type_of_this_4772, function_type_1_expr132, line(function_type_1, 1086)).
param(p_source_4834, 1, m_set_source_4406).
param(p_sub_type_4835, 1, m_add_sub_type_4375).
assign(f_sub_types_4836, function_type_1_expr136, line(function_type_1, 1118)).
method_invoc(function_type_1_expr136, m_new_array_list_329, line(function_type_1, 1118)).
ref(t_lists_22, function_type_1_expr136, line(function_type_1, 1118)).
method_invoc(function_type_1_expr137, m_add_330, line(function_type_1, 1120)).
argument(p_sub_type_4835, 1, function_type_1_expr137).
ref(f_sub_types_4836, function_type_1_expr137, line(function_type_1, 1120)).
return(function_type_1_expr138, m_has_cached_values_4409, line(function_type_1, 1155)).
method_invoc(function_type_1_expr140, m_has_cached_values_4410, line(function_type_1, 1155)).
param(p_t_4837, 1, m_resolve_internal_4411).
param(p_scope_4838, 2, m_resolve_internal_4411).
method_invoc(function_type_1_expr141, m_set_resolved_type_internal_4412, line(function_type_1, 1160)).
argument(function_type_1_expr142, 1, function_type_1_expr141).
assign(f_call_4773, function_type_1_expr144, line(function_type_1, 1162)).
assign(function_type_1_expr144, function_type_1_expr145, line(function_type_1, 1162)).
method_invoc(function_type_1_expr145, m_safe_resolve_4283, line(function_type_1, 1162)).
argument(f_call_4773, 1, function_type_1_expr145).
argument(p_t_4837, 2, function_type_1_expr145).
argument(p_scope_4838, 3, function_type_1_expr145).
method_invoc(function_type_1_expr147, m_set_type_4413, line(function_type_1, 1164)).
argument(function_type_1_expr148, 1, function_type_1_expr147).
ref(f_prototype_slot_4781, function_type_1_expr147, line(function_type_1, 1164)).
assign(v_maybe_type_of_this_4839, function_type_1_expr149, line(function_type_1, 1179)).
method_invoc(function_type_1_expr149, m_safe_resolve_4283, line(function_type_1, 1179)).
argument(f_type_of_this_4772, 1, function_type_1_expr149).
argument(p_t_4837, 2, function_type_1_expr149).
argument(p_scope_4838, 3, function_type_1_expr149).
assign(v_maybe_type_of_this_4839, function_type_1_expr152, line(function_type_1, 1181)).
method_invoc(function_type_1_expr152, m_restrict_by_not_null_or_undefined_4414, line(function_type_1, 1181)).
ref(v_maybe_type_of_this_4839, function_type_1_expr152, line(function_type_1, 1181)).
assign(f_type_of_this_4772, v_maybe_type_of_this_4839, line(function_type_1, 1184)).
assign(v_changed_4840, function_type_1_literal31, line(function_type_1, 1187)).
assign(v_resolved_interfaces_4841, function_type_1_expr155, line(function_type_1, 1188)).
ref(f_implemented_interfaces_4759, function_type_1_stmt85, line(function_type_1, 1190)).
assign(v_i_4843, function_type_1_literal33, line(function_type_1, 1200)).
method_invoc(function_type_1_expr159, m_size_918, line(function_type_1, 1200)).
ref(f_sub_types_4836, function_type_1_expr159, line(function_type_1, 1200)).
method_invoc(function_type_1_expr161, m_set_4415, line(function_type_1, 1201)).
argument(v_i_4843, 1, function_type_1_expr161).
argument(function_type_1_expr162, 2, function_type_1_expr161).
ref(f_sub_types_4836, function_type_1_expr161, line(function_type_1, 1201)).
return(function_type_1_expr163, m_resolve_internal_4411, line(function_type_1, 1206)).
method_invoc(function_type_1_expr163, m_resolve_internal_4416, line(function_type_1, 1206)).
argument(p_t_4837, 1, function_type_1_expr163).
argument(p_scope_4838, 2, function_type_1_expr163).
param(p_type_4844, 1, m_get_debug_hash_code_string_of_4418).

%coding_convention_1 - com.google.javascript.jscomp.CodingConvention
param(p_variable_name_279, 1, m_is_constant_201).
param(p_key_name_280, 1, m_is_constant_key_202).
param(p_key_281, 1, m_is_valid_enum_key_203).
param(p_parameter_282, 1, m_is_optional_parameter_204).
param(p_parameter_283, 1, m_is_var_args_parameter_205).
param(p_name_284, 1, m_is_exported_206).
param(p_local_285, 2, m_is_exported_206).
param(p_name_286, 1, m_is_exported_207).
param(p_name_287, 1, m_is_private_208).
param(p_call_node_288, 1, m_get_classes_defined_by_call_209).
param(p_property_name_289, 1, m_is_super_class_reference_210).
param(p_node_290, 1, m_extract_class_name_if_provide_211).
param(p_parent_291, 2, m_extract_class_name_if_provide_211).
param(p_node_292, 1, m_extract_class_name_if_require_212).
param(p_parent_293, 2, m_extract_class_name_if_require_212).
param(p_n_294, 1, m_identify_type_declaration_call_215).
param(p_parent_ctor_295, 1, m_apply_subclass_relationship_216).
param(p_child_ctor_296, 2, m_apply_subclass_relationship_216).
param(p_type_297, 3, m_apply_subclass_relationship_216).
param(p_call_node_298, 1, m_get_singleton_getter_class_name_218).
param(p_function_type_299, 1, m_apply_singleton_getter_219).
param(p_getter_type_300, 2, m_apply_singleton_getter_219).
param(p_object_type_301, 3, m_apply_singleton_getter_219).
param(p_n_302, 1, m_is_inlinable_function_220).
param(p_call_node_303, 1, m_get_delegate_relationship_221).
param(p_delegate_superclass_304, 1, m_apply_delegate_relationship_222).
param(p_delegate_base_305, 2, m_apply_delegate_relationship_222).
param(p_delegator_306, 3, m_apply_delegate_relationship_222).
param(p_delegate_proxy_307, 4, m_apply_delegate_relationship_222).
param(p_find_delegate_308, 5, m_apply_delegate_relationship_222).
param(p_n_309, 1, m_check_for_calling_convention_defining_calls_224).
param(p_delegate_calling_conventions_310, 2, m_check_for_calling_convention_defining_calls_224).
param(p_registry_311, 1, m_define_delegate_proxy_prototype_properties_225).
param(p_scope_312, 2, m_define_delegate_proxy_prototype_properties_225).
param(p_delegate_proxy_prototypes_313, 3, m_define_delegate_proxy_prototype_properties_225).
param(p_delegate_calling_conventions_314, 4, m_define_delegate_proxy_prototype_properties_225).
param(p_n_315, 1, m_describe_function_bind_227).
param(p_n_316, 1, m_describe_function_bind_228).
param(p_use_type_info_317, 2, m_describe_function_bind_228).
param(p_target_318, 1, m_bind_229).
param(p_this_value_319, 2, m_bind_229).
param(p_parameters_320, 3, m_bind_229).
param(p_call_321, 1, m_is_property_test_function_231).
param(p_get_prop_322, 1, m_is_prototype_alias_232).
param(p_call_node_323, 1, m_get_object_literal_cast_233).
param(p_type_324, 1, m_subclass_relationship_235).
param(p_subclass_node_325, 2, m_subclass_relationship_235).
param(p_superclass_node_326, 3, m_subclass_relationship_235).
param(p_delegate_base_327, 1, m_delegate_relationship_236).
param(p_delegator_328, 2, m_delegate_relationship_236).
param(p_type_name_329, 1, m_object_literal_cast_237).
param(p_object_node_330, 2, m_object_literal_cast_237).
param(p_diagnostic_type_331, 3, m_object_literal_cast_237).
param(p_function_name_332, 1, m_assertion_function_spec_238).
method_invoc(coding_convention_1_expr1, m_assertion_function_spec_194, line(coding_convention_1, 384)).
argument(p_function_name_332, 1, coding_convention_1_expr1).
argument(coding_convention_1_literal1, 2, coding_convention_1_expr1).
param(p_function_name_333, 1, m_assertion_function_spec_194).
param(p_asserted_type_334, 2, m_assertion_function_spec_194).
assign(f_function_name_335, p_function_name_333, line(coding_convention_1, 389)).
assign(f_asserted_type_336, p_asserted_type_334, line(coding_convention_1, 390)).
return(f_function_name_335, m_get_function_name_239, line(coding_convention_1, 395)).
param(p_first_param_337, 1, m_get_asserted_param_240).
param(p_call_338, 1, m_get_asserted_type_241).
param(p_registry_339, 2, m_get_asserted_type_241).

%control_flow_graph_1 - com.google.javascript.jscomp.ControlFlowGraph
param(p_entry_1119, 1, m_control_flow_graph_871).
param(p_node_annotations_1120, 2, m_control_flow_graph_871).
param(p_edge_annotations_1121, 3, m_control_flow_graph_871).
method_invoc(control_flow_graph_1_expr1, m_linked_directed_graph_877, line(control_flow_graph_1, 49)).
argument(p_node_annotations_1120, 1, control_flow_graph_1_expr1).
argument(p_edge_annotations_1121, 2, control_flow_graph_1_expr1).
assign(f_implicit_return_1122, control_flow_graph_1_expr3, line(control_flow_graph_1, 50)).
method_invoc(control_flow_graph_1_expr3, m_create_directed_graph_node_878, line(control_flow_graph_1, 50)).
argument(control_flow_graph_1_literal1, 1, control_flow_graph_1_expr3).
assign(f_entry_1123, control_flow_graph_1_expr6, line(control_flow_graph_1, 51)).
method_invoc(control_flow_graph_1_expr6, m_create_directed_graph_node_878, line(control_flow_graph_1, 51)).
argument(p_entry_1119, 1, control_flow_graph_1_expr6).
return(f_implicit_return_1122, m_get_implicit_return_819, line(control_flow_graph_1, 60)).
return(f_entry_1123, m_get_entry_815, line(control_flow_graph_1, 70)).
param(p_node_1124, 1, m_is_implicit_return_879).
param(p_src_value_1125, 1, m_connect_to_implicit_return_880).
param(p_edge_value_1126, 2, m_connect_to_implicit_return_880).
param(p_is_forward_1127, 1, m_get_optional_node_comparator_881).
param(p_node_traversal_1133, 1, m_should_traverse_883).
param(p_n_1134, 2, m_should_traverse_883).
param(p_parent_1135, 3, m_should_traverse_883).
param(p_n_1136, 1, m_is_entering_new_cfg_node_884).

%diagnostic_group_warnings_guard_1 - com.google.javascript.jscomp.DiagnosticGroupWarningsGuard
param(p_group_1227, 1, m_diagnostic_group_warnings_guard_334).
param(p_level_1228, 2, m_diagnostic_group_warnings_guard_334).
assign(f_group_1229, p_group_1227, line(diagnostic_group_warnings_guard_1, 34)).
assign(f_level_1230, p_level_1228, line(diagnostic_group_warnings_guard_1, 35)).
param(p_error_1231, 1, m_level_965).
return(diagnostic_group_warnings_guard_1_expr7, m_level_965, line(diagnostic_group_warnings_guard_1, 40)).
cond_expr(diagnostic_group_warnings_guard_1_expr8, f_level_1230, diagnostic_group_warnings_guard_1_literal1, line(diagnostic_group_warnings_guard_1, 40)).
method_invoc(diagnostic_group_warnings_guard_1_expr8, m_matches_958, line(diagnostic_group_warnings_guard_1, 40)).
argument(p_error_1231, 1, diagnostic_group_warnings_guard_1_expr8).
ref(f_group_1229, diagnostic_group_warnings_guard_1_expr8, line(diagnostic_group_warnings_guard_1, 40)).
param(p_other_group_1232, 1, m_disables_966).
return(diagnostic_group_warnings_guard_1_expr9, m_disables_966, line(diagnostic_group_warnings_guard_1, 45)).
method_invoc(diagnostic_group_warnings_guard_1_expr11, m_is_on_125, line(diagnostic_group_warnings_guard_1, 45)).
ref(f_level_1230, diagnostic_group_warnings_guard_1_expr11, line(diagnostic_group_warnings_guard_1, 45)).
method_invoc(diagnostic_group_warnings_guard_1_expr12, m_is_sub_group_962, line(diagnostic_group_warnings_guard_1, 45)).
argument(p_other_group_1232, 1, diagnostic_group_warnings_guard_1_expr12).
ref(f_group_1229, diagnostic_group_warnings_guard_1_expr12, line(diagnostic_group_warnings_guard_1, 45)).
param(p_other_group_1233, 1, m_enables_967).
method_invoc(diagnostic_group_warnings_guard_1_expr13, m_is_on_125, line(diagnostic_group_warnings_guard_1, 50)).
ref(f_level_1230, diagnostic_group_warnings_guard_1_expr13, line(diagnostic_group_warnings_guard_1, 50)).
ref(diagnostic_group_warnings_guard_1_expr14, diagnostic_group_warnings_guard_1_stmt6, line(diagnostic_group_warnings_guard_1, 51)).
method_invoc(diagnostic_group_warnings_guard_1_expr14, m_get_types_963, line(diagnostic_group_warnings_guard_1, 51)).
ref(p_other_group_1233, diagnostic_group_warnings_guard_1_expr14, line(diagnostic_group_warnings_guard_1, 51)).
method_invoc(diagnostic_group_warnings_guard_1_expr15, m_matches_959, line(diagnostic_group_warnings_guard_1, 52)).
argument(v_type_1234, 1, diagnostic_group_warnings_guard_1_expr15).
ref(f_group_1229, diagnostic_group_warnings_guard_1_expr15, line(diagnostic_group_warnings_guard_1, 52)).
return(diagnostic_group_warnings_guard_1_literal2, m_enables_967, line(diagnostic_group_warnings_guard_1, 53)).
return(diagnostic_group_warnings_guard_1_literal3, m_enables_967, line(diagnostic_group_warnings_guard_1, 58)).

%type_safe_dispatcher_1 - com.google.javascript.jscomp.parsing.TypeSafeDispatcher
param(p_literal_node_3937, 1, m_process_array_literal_3583).
param(p_assignment_node_3938, 1, m_process_assignment_3584).
param(p_root_node_3939, 1, m_process_ast_root_3585).
param(p_block_node_3940, 1, m_process_block_3586).
param(p_statement_node_3941, 1, m_process_break_statement_3587).
param(p_clause_node_3942, 1, m_process_catch_clause_3588).
param(p_expr_node_3943, 1, m_process_conditional_expression_3589).
param(p_statement_node_3944, 1, m_process_continue_statement_3590).
param(p_loop_node_3945, 1, m_process_do_loop_3591).
param(p_get_node_3946, 1, m_process_element_get_3592).
param(p_expr_node_3947, 1, m_process_empty_expression_3593).
param(p_expr_node_3948, 1, m_process_empty_statement_3594).
param(p_statement_node_3949, 1, m_process_expression_statement_3595).
param(p_loop_node_3950, 1, m_process_for_in_loop_3596).
param(p_loop_node_3951, 1, m_process_for_loop_3597).
param(p_call_node_3952, 1, m_process_function_call_3598).
param(p_function_node_3953, 1, m_process_function_node_3599).
param(p_statement_node_3954, 1, m_process_if_statement_3600).
param(p_expr_node_3955, 1, m_process_infix_expression_3601).
param(p_literal_node_3956, 1, m_process_keyword_literal_3602).
param(p_label_node_3957, 1, m_process_label_3603).
param(p_statement_node_3958, 1, m_process_labeled_statement_3604).
param(p_name_node_3959, 1, m_process_name_3605).
param(p_expr_node_3960, 1, m_process_new_expression_3606).
param(p_literal_node_3961, 1, m_process_number_literal_3607).
param(p_literal_node_3962, 1, m_process_object_literal_3608).
param(p_property_node_3963, 1, m_process_object_property_3609).
param(p_expr_node_3964, 1, m_process_parenthesized_expression_3610).
param(p_get_node_3965, 1, m_process_property_get_3611).
param(p_literal_node_3966, 1, m_process_reg_exp_literal_3612).
param(p_statement_node_3967, 1, m_process_return_statement_3613).
param(p_scope_node_3968, 1, m_process_scope_3614).
param(p_literal_node_3969, 1, m_process_string_literal_3615).
param(p_case_node_3970, 1, m_process_switch_case_3616).
param(p_statement_node_3971, 1, m_process_switch_statement_3617).
param(p_statement_node_3972, 1, m_process_throw_statement_3618).
param(p_statement_node_3973, 1, m_process_try_statement_3619).
param(p_expr_node_3974, 1, m_process_unary_expression_3620).
param(p_declaration_node_3975, 1, m_process_variable_declaration_3621).
param(p_initializer_node_3976, 1, m_process_variable_initializer_3622).
param(p_loop_node_3977, 1, m_process_while_loop_3623).
param(p_statement_node_3978, 1, m_process_with_statement_3624).
param(p_node_3979, 1, m_process_illegal_token_3625).
param(p_node_3980, 1, m_process_3384).
method_invoc(type_safe_dispatcher_1_expr1, m_get_type_3368, line(type_safe_dispatcher_1, 121)).
ref(p_node_3980, type_safe_dispatcher_1_expr1, line(type_safe_dispatcher_1, 121)).
return(type_safe_dispatcher_1_expr3, m_process_3384, line(type_safe_dispatcher_1, 174)).
method_invoc(type_safe_dispatcher_1_expr3, m_process_block_3586, line(type_safe_dispatcher_1, 174)).
argument(type_safe_dispatcher_1_expr4, 1, type_safe_dispatcher_1_expr3).
assign(type_safe_dispatcher_1_expr4, p_node_3980, line(type_safe_dispatcher_1, 174)).
return(type_safe_dispatcher_1_expr5, m_process_3384, line(type_safe_dispatcher_1, 232)).
method_invoc(type_safe_dispatcher_1_expr5, m_process_function_node_3599, line(type_safe_dispatcher_1, 232)).
argument(type_safe_dispatcher_1_expr6, 1, type_safe_dispatcher_1_expr5).
assign(type_safe_dispatcher_1_expr6, p_node_3980, line(type_safe_dispatcher_1, 232)).
return(type_safe_dispatcher_1_expr7, m_process_3384, line(type_safe_dispatcher_1, 246)).
method_invoc(type_safe_dispatcher_1_expr7, m_process_name_3605, line(type_safe_dispatcher_1, 246)).
argument(type_safe_dispatcher_1_expr8, 1, type_safe_dispatcher_1_expr7).
assign(type_safe_dispatcher_1_expr8, p_node_3980, line(type_safe_dispatcher_1, 246)).
return(type_safe_dispatcher_1_expr9, m_process_3384, line(type_safe_dispatcher_1, 258)).
method_invoc(type_safe_dispatcher_1_expr9, m_process_ast_root_3585, line(type_safe_dispatcher_1, 258)).
argument(type_safe_dispatcher_1_expr10, 1, type_safe_dispatcher_1_expr9).
assign(type_safe_dispatcher_1_expr10, p_node_3980, line(type_safe_dispatcher_1, 258)).

%property_1 - com.google.javascript.rhino.jstype.Property
assign(f_doc_info_5337, property_1_literal1, line(property_1, 77)).
param(p_name_5338, 1, m_property_4373).
param(p_type_5339, 2, m_property_4373).
param(p_inferred_5340, 3, m_property_4373).
param(p_property_node_5341, 4, m_property_4373).
assign(f_name_5342, p_name_5338, line(property_1, 81)).
assign(f_type_5343, p_type_5339, line(property_1, 82)).
assign(f_inferred_5344, p_inferred_5340, line(property_1, 83)).
assign(f_property_node_5345, p_property_node_5341, line(property_1, 84)).
return(f_type_5343, m_get_type_4368, line(property_1, 114)).
param(p_type_5346, 1, m_set_type_4413).
assign(f_type_5343, p_type_5346, line(property_1, 127)).
param(p_info_5347, 1, m_set_jsdoc_info_4798).
param(p_n_5348, 1, m_set_node_3173).
assign(f_property_node_5345, p_n_5348, line(property_1, 139)).

%jstype_1 - com.google.javascript.rhino.jstype.JSType
assign(f_resolved_4860, jstype_1_literal1, line(jstype_1, 71)).
assign(f_resolve_result_4861, jstype_1_literal2, line(jstype_1, 72)).
assign(f_in_templated_check_visit_4862, jstype_1_literal3, line(jstype_1, 76)).
assign(f_can_cast_to_visitor_4863, jstype_1_expr1, line(jstype_1, 77)).
assign(f_alpha_4864, jstype_1_expr2, line(jstype_1, 97)).
method_invoc(jstype_1_expr2, m__4446, line(jstype_1, 97)).
param(p_t_1_4865, 1, m_compare_4447).
param(p_t_2_4866, 2, m_compare_4447).
param(p_registry_4867, 1, m_jstype_4257).
method_invoc(jstype_1_expr3, m_jstype_4448, line(jstype_1, 111)).
argument(p_registry_4867, 1, jstype_1_expr3).
argument(jstype_1_literal4, 2, jstype_1_expr3).
argument(jstype_1_literal5, 3, jstype_1_expr3).
param(p_registry_4868, 1, m_jstype_4448).
param(p_template_keys_4869, 2, m_jstype_4448).
param(p_templatized_types_4870, 3, m_jstype_4448).
assign(f_registry_4786, p_registry_4868, line(jstype_1, 116)).
assign(v_keys_length_4871, jstype_1_expr7, line(jstype_1, 119)).
cond_expr(jstype_1_expr8, jstype_1_literal6, jstype_1_expr9, line(jstype_1, 119)).
method_invoc(jstype_1_expr9, m_size_918, line(jstype_1, 119)).
ref(p_template_keys_4869, jstype_1_expr9, line(jstype_1, 119)).
assign(v_types_length_4872, jstype_1_expr10, line(jstype_1, 120)).
cond_expr(jstype_1_expr11, jstype_1_literal8, jstype_1_expr12, line(jstype_1, 120)).
method_invoc(jstype_1_expr12, m_size_918, line(jstype_1, 120)).
ref(p_templatized_types_4870, jstype_1_expr12, line(jstype_1, 120)).
assign(p_template_keys_4869, jstype_1_expr19, line(jstype_1, 138)).
method_invoc(jstype_1_expr19, m_of_310, line(jstype_1, 138)).
ref(t_immutable_list_14, jstype_1_expr19, line(jstype_1, 138)).
assign(p_templatized_types_4870, jstype_1_expr21, line(jstype_1, 139)).
method_invoc(jstype_1_expr21, m_of_310, line(jstype_1, 139)).
ref(t_immutable_list_14, jstype_1_expr21, line(jstype_1, 139)).
assign(f_template_keys_4873, p_template_keys_4869, line(jstype_1, 142)).
assign(f_templatized_types_4874, p_templatized_types_4870, line(jstype_1, 143)).
param(p_type_id_4875, 1, m_get_native_type_4449).
return(jstype_1_expr28, m_get_native_type_4449, line(jstype_1, 150)).
method_invoc(jstype_1_expr28, m_get_native_type_1094, line(jstype_1, 150)).
argument(p_type_id_4875, 1, jstype_1_expr28).
ref(f_registry_4786, jstype_1_expr28, line(jstype_1, 150)).
param(p_pname_4876, 1, m_has_property_4453).
return(jstype_1_literal12, m_is_no_type_4454, line(jstype_1, 189)).
return(jstype_1_literal13, m_is_no_resolved_type_4455, line(jstype_1, 193)).
return(jstype_1_literal14, m_is_no_object_type_4456, line(jstype_1, 197)).
return(jstype_1_expr29, m_is_empty_type_4341, line(jstype_1, 201)).
method_invoc(jstype_1_expr30, m_is_no_type_4454, line(jstype_1, 201)).
method_invoc(jstype_1_expr31, m_is_no_object_type_4456, line(jstype_1, 201)).
method_invoc(jstype_1_expr32, m_is_no_resolved_type_4455, line(jstype_1, 201)).
return(jstype_1_literal15, m_is_all_type_4472, line(jstype_1, 278)).
return(jstype_1_literal16, m_is_unknown_type_3133, line(jstype_1, 282)).
return(jstype_1_expr33, m_is_union_type_4474, line(jstype_1, 290)).
method_invoc(jstype_1_expr34, m_to_maybe_union_type_4475, line(jstype_1, 290)).
return(jstype_1_literal18, m_to_maybe_union_type_4475, line(jstype_1, 349)).
return(jstype_1_expr35, m_is_function_type_3130, line(jstype_1, 359)).
method_invoc(jstype_1_expr36, m_to_maybe_function_type_3131, line(jstype_1, 359)).
return(jstype_1_literal20, m_to_maybe_function_type_3131, line(jstype_1, 375)).
param(p_type_4877, 1, m_to_maybe_function_type_1807).
return(jstype_1_expr37, m_to_maybe_function_type_1807, line(jstype_1, 382)).
cond_expr(jstype_1_expr38, jstype_1_literal21, jstype_1_expr39, line(jstype_1, 382)).
method_invoc(jstype_1_expr39, m_to_maybe_function_type_3131, line(jstype_1, 382)).
ref(p_type_4877, jstype_1_expr39, line(jstype_1, 382)).
return(jstype_1_expr40, m_is_record_type_4484, line(jstype_1, 412)).
method_invoc(jstype_1_expr41, m_to_maybe_record_type_4485, line(jstype_1, 412)).
return(jstype_1_literal24, m_to_maybe_record_type_4485, line(jstype_1, 420)).
return(jstype_1_expr42, m_is_parameterized_type_4486, line(jstype_1, 424)).
method_invoc(jstype_1_expr43, m_to_maybe_parameterized_type_4487, line(jstype_1, 424)).
return(jstype_1_literal26, m_to_maybe_parameterized_type_4487, line(jstype_1, 432)).
param(p_type_4878, 1, m_to_maybe_parameterized_type_4488).
return(jstype_1_expr44, m_is_template_type_4489, line(jstype_1, 443)).
method_invoc(jstype_1_expr45, m_to_maybe_template_type_4490, line(jstype_1, 443)).
return(jstype_1_literal28, m_to_maybe_template_type_4490, line(jstype_1, 451)).
param(p_type_4879, 1, m_to_maybe_template_type_4491).
assign(f_in_templated_check_visit_4862, jstype_1_literal29, line(jstype_1, 463)).
assign(v_result_4880, jstype_1_expr52, line(jstype_1, 464)).
method_invoc(jstype_1_expr52, m_has_any_template_types_internal_4493, line(jstype_1, 464)).
assign(f_in_templated_check_visit_4862, jstype_1_literal30, line(jstype_1, 465)).
return(v_result_4880, m_has_any_template_types_4492, line(jstype_1, 466)).
method_invoc(jstype_1_expr56, m_is_templatized_4494, line(jstype_1, 474)).
return(jstype_1_literal31, m_has_any_template_types_internal_4493, line(jstype_1, 481)).
return(jstype_1_expr57, m_is_templatized_4494, line(jstype_1, 488)).
method_invoc(jstype_1_expr58, m_is_empty_4433, line(jstype_1, 488)).
ref(f_template_keys_4873, jstype_1_expr58, line(jstype_1, 488)).
return(f_template_keys_4873, m_get_template_keys_4422, line(jstype_1, 495)).
return(f_templatized_types_4874, m_get_templatized_types_4432, line(jstype_1, 499)).
param(p_key_4881, 1, m_has_templatized_type_4495).
param(p_key_4882, 1, m_get_templatized_type_4496).
param(p_type_1_4883, 1, m_has_equivalent_template_types_4497).
param(p_type_2_4884, 2, m_has_equivalent_template_types_4497).
param(p_eq_method_4885, 3, m_has_equivalent_template_types_4497).
return(jstype_1_literal32, m_is_nominal_type_4500, line(jstype_1, 571)).
param(p_that_4886, 1, m_is_equivalent_to_4505).
return(jstype_1_expr59, m_is_equivalent_to_4505, line(jstype_1, 626)).
method_invoc(jstype_1_expr59, m_check_equivalence_helper_4506, line(jstype_1, 626)).
argument(p_that_4886, 1, jstype_1_expr59).
argument(q_identity_145, 2, jstype_1_expr59).
ref(t_equivalence_method_109, q_identity_145, line(jstype_1, 626)).
param(p_that_4887, 1, m_is_invariant_4507).
param(p_that_4888, 1, m_differs_from_4508).
param(p_that_4889, 1, m_check_equivalence_helper_4506).
param(p_eq_method_4890, 2, m_check_equivalence_helper_4506).
return(jstype_1_literal33, m_check_equivalence_helper_4506, line(jstype_1, 656)).
assign(v_this_unknown_4891, jstype_1_expr62, line(jstype_1, 659)).
method_invoc(jstype_1_expr62, m_is_unknown_type_3133, line(jstype_1, 659)).
assign(v_that_unknown_4892, jstype_1_expr63, line(jstype_1, 660)).
method_invoc(jstype_1_expr63, m_is_unknown_type_3133, line(jstype_1, 660)).
ref(p_that_4889, jstype_1_expr63, line(jstype_1, 660)).
ref(t_equivalence_method_109, q_invariant_146, line(jstype_1, 662)).
ref(t_equivalence_method_109, q_data_flow_147, line(jstype_1, 666)).
method_invoc(jstype_1_expr69, m_is_union_type_4474, line(jstype_1, 679)).
method_invoc(jstype_1_expr70, m_is_union_type_4474, line(jstype_1, 679)).
ref(p_that_4889, jstype_1_expr70, line(jstype_1, 679)).
method_invoc(jstype_1_expr72, m_is_function_type_3130, line(jstype_1, 684)).
method_invoc(jstype_1_expr73, m_is_function_type_3130, line(jstype_1, 684)).
ref(p_that_4889, jstype_1_expr73, line(jstype_1, 684)).
method_invoc(jstype_1_expr75, m_is_record_type_4484, line(jstype_1, 689)).
method_invoc(jstype_1_expr76, m_is_record_type_4484, line(jstype_1, 689)).
ref(p_that_4889, jstype_1_expr76, line(jstype_1, 689)).
assign(v_this_param_type_4893, jstype_1_expr77, line(jstype_1, 694)).
method_invoc(jstype_1_expr77, m_to_maybe_parameterized_type_4487, line(jstype_1, 694)).
assign(v_that_param_type_4894, jstype_1_expr78, line(jstype_1, 695)).
method_invoc(jstype_1_expr78, m_to_maybe_parameterized_type_4487, line(jstype_1, 695)).
ref(p_that_4889, jstype_1_expr78, line(jstype_1, 695)).
method_invoc(jstype_1_expr83, m_is_nominal_type_4500, line(jstype_1, 719)).
method_invoc(jstype_1_expr84, m_is_nominal_type_4500, line(jstype_1, 719)).
ref(p_that_4889, jstype_1_expr84, line(jstype_1, 719)).
return(jstype_1_expr85, m_check_equivalence_helper_4506, line(jstype_1, 720)).
method_invoc(jstype_1_expr85, m_equals_3170, line(jstype_1, 720)).
argument(jstype_1_expr86, 1, jstype_1_expr85).
ref(jstype_1_expr87, jstype_1_expr85, line(jstype_1, 720)).
method_invoc(jstype_1_expr87, m_get_reference_name_3139, line(jstype_1, 720)).
ref(jstype_1_expr88, jstype_1_expr87, line(jstype_1, 720)).
method_invoc(jstype_1_expr88, m_to_object_type_4403, line(jstype_1, 720)).
return(jstype_1_expr92, m_check_equivalence_helper_4506, line(jstype_1, 732)).
method_invoc(jstype_1_expr92, m_check_equivalence_helper_4506, line(jstype_1, 732)).
argument(jstype_1_expr93, 1, jstype_1_expr92).
argument(p_eq_method_4890, 2, jstype_1_expr92).
return(jstype_1_expr94, m_check_equivalence_helper_4506, line(jstype_1, 741)).
param(p_type_a_4895, 1, m_is_equivalent_4143).
param(p_type_b_4896, 2, m_is_equivalent_4143).
param(p_js_type_4897, 1, m_equals_4509).
return(jstype_1_expr96, m_hash_code_4510, line(jstype_1, 757)).
method_invoc(jstype_1_expr96, m_identity_hash_code_4511, line(jstype_1, 757)).
argument(jstype_1_expr97, 1, jstype_1_expr96).
ref(t_system_112, jstype_1_expr96, line(jstype_1, 757)).
param(p_property_name_4898, 1, m_find_property_type_4517).
param(p_that_4899, 1, m_can_cast_to_4519).
return(jstype_1_expr98, m_to_object_type_4403, line(jstype_1, 876)).
cond_expr(jstype_1_expr99, jstype_1_expr100, jstype_1_literal36, line(jstype_1, 876)).
assign(jstype_1_expr100, jstype_1_expr102, line(jstype_1, 876)).
param(p_that_4900, 1, m_can_test_for_equality_with_4524).
param(p_that_4901, 1, m_test_for_equality_4525).
param(p_a_type_4902, 1, m_test_for_equality_helper_4526).
param(p_b_type_4903, 2, m_test_for_equality_helper_4526).
param(p_that_4904, 1, m_can_test_for_shallow_equality_with_4527).
param(p_that_4905, 1, m_get_least_supertype_4530).
param(p_this_type_4906, 1, m_get_least_supertype_4531).
param(p_that_type_4907, 2, m_get_least_supertype_4531).
param(p_that_4908, 1, m_get_greatest_subtype_4532).
param(p_this_type_4909, 1, m_get_greatest_subtype_4533).
param(p_that_type_4910, 2, m_get_greatest_subtype_4533).
param(p_type_4911, 1, m_filter_no_resolved_type_4534).
param(p_outcome_4912, 1, m_get_restricted_type_given_to_boolean_outcome_4535).
param(p_that_4913, 1, m_get_types_under_equality_4537).
param(p_that_4914, 1, m_get_types_under_inequality_4538).
param(p_that_4915, 1, m_get_types_under_shallow_equality_4539).
param(p_that_4916, 1, m_get_types_under_shallow_inequality_4540).
return(jstype_1_expr103, m_restrict_by_not_null_or_undefined_4414, line(jstype_1, 1303)).
param(p_that_4917, 1, m_is_subtype_4541).
return(jstype_1_expr104, m_is_subtype_4541, line(jstype_1, 1333)).
method_invoc(jstype_1_expr104, m_is_subtype_helper_4542, line(jstype_1, 1333)).
argument(jstype_1_expr105, 1, jstype_1_expr104).
argument(p_that_4917, 2, jstype_1_expr104).
param(p_this_type_4918, 1, m_is_subtype_helper_4542).
param(p_that_type_4919, 2, m_is_subtype_helper_4542).
method_invoc(jstype_1_expr106, m_is_unknown_type_3133, line(jstype_1, 1342)).
ref(p_that_type_4919, jstype_1_expr106, line(jstype_1, 1342)).
method_invoc(jstype_1_expr107, m_is_all_type_4472, line(jstype_1, 1346)).
ref(p_that_type_4919, jstype_1_expr107, line(jstype_1, 1346)).
method_invoc(jstype_1_expr108, m_is_equivalent_to_4505, line(jstype_1, 1350)).
argument(p_that_type_4919, 1, jstype_1_expr108).
ref(p_this_type_4918, jstype_1_expr108, line(jstype_1, 1350)).
method_invoc(jstype_1_expr109, m_is_union_type_4474, line(jstype_1, 1354)).
ref(p_that_type_4919, jstype_1_expr109, line(jstype_1, 1354)).
method_invoc(jstype_1_expr110, m_is_parameterized_type_4486, line(jstype_1, 1365)).
ref(p_this_type_4918, jstype_1_expr110, line(jstype_1, 1365)).
return(jstype_1_literal37, m_is_subtype_helper_4542, line(jstype_1, 1375)).
param(p_visitor_4920, 1, m_visit_4543).
param(p_visitor_4921, 1, m_visit_4544).
param(p_that_4922, 2, m_visit_4544).
param(p_t_4923, 1, m_force_resolve_4545).
param(p_scope_4924, 2, m_force_resolve_4545).
param(p_t_4925, 1, m_resolve_1626).
param(p_scope_4926, 2, m_resolve_1626).
return(f_resolve_result_4861, m_resolve_1626, line(jstype_1, 1426)).
assign(f_resolved_4860, jstype_1_literal39, line(jstype_1, 1428)).
assign(f_resolve_result_4861, jstype_1_expr115, line(jstype_1, 1429)).
method_invoc(jstype_1_expr115, m_resolve_internal_4546, line(jstype_1, 1429)).
argument(p_t_4925, 1, jstype_1_expr115).
argument(p_scope_4926, 2, jstype_1_expr115).
method_invoc(jstype_1_expr116, m_set_resolved_type_internal_4412, line(jstype_1, 1430)).
argument(f_resolve_result_4861, 1, jstype_1_expr116).
ref(f_resolve_result_4861, jstype_1_expr116, line(jstype_1, 1430)).
return(f_resolve_result_4861, m_resolve_1626, line(jstype_1, 1431)).
param(p_t_4927, 1, m_resolve_internal_4546).
param(p_scope_4928, 2, m_resolve_internal_4546).
param(p_type_4929, 1, m_set_resolved_type_internal_4412).
assign(f_resolve_result_4861, p_type_4929, line(jstype_1, 1440)).
assign(f_resolved_4860, jstype_1_literal40, line(jstype_1, 1441)).
return(f_resolved_4860, m_is_resolved_4547, line(jstype_1, 1446)).
param(p_type_4930, 1, m_safe_resolve_4283).
param(p_t_4931, 2, m_safe_resolve_4283).
param(p_scope_4932, 3, m_safe_resolve_4283).
return(jstype_1_expr119, m_safe_resolve_4283, line(jstype_1, 1461)).
cond_expr(jstype_1_expr120, jstype_1_literal41, jstype_1_expr121, line(jstype_1, 1461)).
method_invoc(jstype_1_expr121, m_resolve_1626, line(jstype_1, 1461)).
argument(p_t_4931, 1, jstype_1_expr121).
argument(p_scope_4932, 2, jstype_1_expr121).
ref(p_type_4930, jstype_1_expr121, line(jstype_1, 1461)).
param(p_validator_4933, 1, m_set_validator_4549).
param(p_type_a_4934, 1, m_type_pair_4550).
param(p_type_b_4935, 2, m_type_pair_4550).
return(jstype_1_expr122, m_to_string_4551, line(jstype_1, 1490)).
method_invoc(jstype_1_expr122, m_to_string_helper_4552, line(jstype_1, 1490)).
argument(jstype_1_literal43, 1, jstype_1_expr122).
param(p_for_annotations_4936, 1, m_to_string_helper_4552).
param(p_constraint_4937, 1, m_match_constraint_4555).

%semantic_reverse_abstract_interpreter_1 - com.google.javascript.jscomp.type.SemanticReverseAbstractInterpreter
assign(f_eq_4036, semantic_reverse_abstract_interpreter_1_expr1, line(semantic_reverse_abstract_interpreter_1, 47)).
method_invoc(semantic_reverse_abstract_interpreter_1_expr1, m__3706, line(semantic_reverse_abstract_interpreter_1, 48)).
param(p_p_4037, 1, m_apply_3707).
assign(f_ne_4038, semantic_reverse_abstract_interpreter_1_expr2, line(semantic_reverse_abstract_interpreter_1, 61)).
method_invoc(semantic_reverse_abstract_interpreter_1_expr2, m__3708, line(semantic_reverse_abstract_interpreter_1, 62)).
param(p_p_4039, 1, m_apply_3709).
assign(f_sheq_4040, semantic_reverse_abstract_interpreter_1_expr3, line(semantic_reverse_abstract_interpreter_1, 76)).
method_invoc(semantic_reverse_abstract_interpreter_1_expr3, m__3710, line(semantic_reverse_abstract_interpreter_1, 77)).
param(p_p_4041, 1, m_apply_3711).
assign(f_shne_4042, semantic_reverse_abstract_interpreter_1_expr4, line(semantic_reverse_abstract_interpreter_1, 91)).
method_invoc(semantic_reverse_abstract_interpreter_1_expr4, m__3712, line(semantic_reverse_abstract_interpreter_1, 92)).
param(p_p_4043, 1, m_apply_3713).
assign(f_ineq_4044, semantic_reverse_abstract_interpreter_1_expr5, line(semantic_reverse_abstract_interpreter_1, 106)).
method_invoc(semantic_reverse_abstract_interpreter_1_expr5, m__3714, line(semantic_reverse_abstract_interpreter_1, 107)).
param(p_p_4045, 1, m_apply_3715).
param(p_convention_4046, 1, m_semantic_reverse_abstract_interpreter_3716).
param(p_type_registry_4047, 2, m_semantic_reverse_abstract_interpreter_3716).
method_invoc(semantic_reverse_abstract_interpreter_1_expr6, m_chainable_reverse_abstract_interpreter_3626, line(semantic_reverse_abstract_interpreter_1, 121)).
argument(p_convention_4046, 1, semantic_reverse_abstract_interpreter_1_expr6).
argument(p_type_registry_4047, 2, semantic_reverse_abstract_interpreter_1_expr6).
param(p_condition_4048, 1, m_get_preciser_scope_knowing_condition_outcome_3717).
param(p_blind_scope_4049, 2, m_get_preciser_scope_knowing_condition_outcome_3717).
param(p_outcome_4050, 3, m_get_preciser_scope_knowing_condition_outcome_3717).
param(p_condition_4051, 1, m_case_equality_3718).
param(p_blind_scope_4052, 2, m_case_equality_3718).
param(p_merging_4053, 3, m_case_equality_3718).
param(p_left_4054, 1, m_case_equality_3719).
param(p_right_4055, 2, m_case_equality_3719).
param(p_blind_scope_4056, 3, m_case_equality_3719).
param(p_merging_4057, 4, m_case_equality_3719).
param(p_left_4058, 1, m_case_and_or_not_short_circuiting_3720).
param(p_right_4059, 2, m_case_and_or_not_short_circuiting_3720).
param(p_blind_scope_4060, 3, m_case_and_or_not_short_circuiting_3720).
param(p_condition_4061, 4, m_case_and_or_not_short_circuiting_3720).
param(p_left_4062, 1, m_case_and_or_maybe_short_circuiting_3721).
param(p_right_4063, 2, m_case_and_or_maybe_short_circuiting_3721).
param(p_blind_scope_4064, 3, m_case_and_or_maybe_short_circuiting_3721).
param(p_condition_4065, 4, m_case_and_or_maybe_short_circuiting_3721).
param(p_blind_scope_4066, 1, m_maybe_restrict_name_3722).
param(p_node_4067, 2, m_maybe_restrict_name_3722).
param(p_original_type_4068, 3, m_maybe_restrict_name_3722).
param(p_restricted_type_4069, 4, m_maybe_restrict_name_3722).
param(p_blind_scope_4070, 1, m_maybe_restrict_two_names_3723).
param(p_left_4071, 2, m_maybe_restrict_two_names_3723).
param(p_original_left_type_4072, 3, m_maybe_restrict_two_names_3723).
param(p_restricted_left_type_4073, 4, m_maybe_restrict_two_names_3723).
param(p_right_4074, 5, m_maybe_restrict_two_names_3723).
param(p_original_right_type_4075, 6, m_maybe_restrict_two_names_3723).
param(p_restricted_right_type_4076, 7, m_maybe_restrict_two_names_3723).
param(p_name_4077, 1, m_case_name_or_get_prop_3724).
param(p_blind_scope_4078, 2, m_case_name_or_get_prop_3724).
param(p_outcome_4079, 3, m_case_name_or_get_prop_3724).
param(p_node_4080, 1, m_case_type_of_3725).
param(p_type_4081, 2, m_case_type_of_3725).
param(p_value_4082, 3, m_case_type_of_3725).
param(p_result_equals_value_4083, 4, m_case_type_of_3725).
param(p_blind_scope_4084, 5, m_case_type_of_3725).
param(p_left_4085, 1, m_case_instance_of_3726).
param(p_right_4086, 2, m_case_instance_of_3726).
param(p_blind_scope_4087, 3, m_case_instance_of_3726).
param(p_outcome_4088, 4, m_case_instance_of_3726).
param(p_object_4089, 1, m_case_in_3727).
param(p_property_name_4090, 2, m_case_in_3727).
param(p_blind_scope_4091, 3, m_case_in_3727).
param(p_target_4092, 1, m_restrict_by_true_instance_of_result_visitor_3728).
param(p_type_4093, 1, m_case_top_type_3729).
param(p_type_4094, 1, m_case_object_type_3731).
param(p_type_4095, 1, m_case_union_type_3732).
param(p_type_4096, 1, m_case_function_type_3733).
param(p_type_4097, 1, m_apply_common_restriction_3734).
param(p_target_4098, 1, m_restrict_by_false_instance_of_result_visitor_3735).
param(p_type_4099, 1, m_case_object_type_3736).
param(p_type_4100, 1, m_case_union_type_3737).
param(p_type_4101, 1, m_case_function_type_3738).

%process_defines_1 - com.google.javascript.jscomp.ProcessDefines
assign(f_known_defines_2107, process_defines_1_expr1, line(process_defines_1, 54)).
assign(f_unknown_define_warning_2108, process_defines_1_expr2, line(process_defines_1, 63)).
method_invoc(process_defines_1_expr2, m_warning_109, line(process_defines_1, 63)).
argument(process_defines_1_literal1, 1, process_defines_1_expr2).
argument(process_defines_1_literal2, 2, process_defines_1_expr2).
ref(t_diagnostic_type_2, process_defines_1_expr2, line(process_defines_1, 63)).
assign(f_invalid_define_type_error_2109, process_defines_1_expr3, line(process_defines_1, 68)).
assign(f_invalid_define_init_error_2110, process_defines_1_expr4, line(process_defines_1, 73)).
assign(f_non_global_define_init_error_2111, process_defines_1_expr5, line(process_defines_1, 78)).
assign(f_define_not_assignable_error_2112, process_defines_1_expr6, line(process_defines_1, 83)).
assign(f_reason_define_not_assignable_2113, process_defines_1_expr7, line(process_defines_1, 88)).
param(p_compiler_2114, 1, m_process_defines_1521).
param(p_replacements_2115, 2, m_process_defines_1521).
param(p_namespace_2116, 1, m_inject_namespace_1522).
param(p_externs_2117, 1, m_process_1523).
param(p_root_2118, 2, m_process_1523).
param(p_all_defines_2119, 1, m_override_defines_1524).
param(p_format_2120, 1, m_format_1525).
param(p_params_2121, 2, m_format_1525).
param(p_expression_2122, 1, m_is_valid_define_type_1526).
param(p_root_2123, 1, m_collect_defines_1527).
param(p_namespace_2124, 2, m_collect_defines_1527).
param(p_compiler_2125, 1, m_collect_defines_1528).
param(p_list_of_defines_2126, 2, m_collect_defines_1528).
param(p_node_traversal_2127, 1, m_should_traverse_1530).
param(p_n_2128, 2, m_should_traverse_1530).
param(p_parent_2129, 3, m_should_traverse_1530).
param(p_t_2130, 1, m_visit_1531).
param(p_n_2131, 2, m_visit_1531).
param(p_parent_2132, 3, m_visit_1531).
param(p_n_2133, 1, m_update_assign_allowed_stack_1532).
param(p_entering_2134, 2, m_update_assign_allowed_stack_1532).
param(p_t_2135, 1, m_process_define_assignment_1534).
param(p_name_2136, 2, m_process_define_assignment_1534).
param(p_value_2137, 3, m_process_define_assignment_1534).
param(p_value_parent_2138, 4, m_process_define_assignment_1534).
param(p_ref_2139, 1, m_get_value_parent_1535).
param(p_info_2140, 1, m_set_define_info_not_assignable_1536).
param(p_t_2141, 2, m_set_define_info_not_assignable_1536).
param(p_ref_2142, 1, m_ref_info_1537).
param(p_name_2143, 2, m_ref_info_1537).
param(p_initial_value_2144, 1, m_define_info_1538).
param(p_initial_value_parent_2145, 2, m_define_info_1538).
param(p_reason_2146, 1, m_set_not_assignable_1539).
param(p_value_2147, 1, m_record_assignment_1541).

%type_check_test_1 - com.google.javascript.jscomp.TypeCheckTest
assign(f_report_missing_overrides_2693, q_warning_78, line(type_check_test_1, 44)).
ref(t_check_level_8, q_warning_78, line(type_check_test_1, 44)).
throw(m_set_up_1825, exception).
method_invoc(type_check_test_1_expr1, m_set_up_1826, line(type_check_test_1, 48)).
throw(type_check_test_1_expr1, exception, line(type_check_test_1, 48)).
assign(f_report_missing_overrides_2693, q_warning_78, line(type_check_test_1, 49)).
ref(t_check_level_8, q_warning_78, line(type_check_test_1, 49)).
throw(m_test_private_type_1828, exception).
throw(m_test_type_check1_1829, exception).
throw(m_test_type_check2_1830, exception).
throw(m_test_type_check4_1831, exception).
throw(m_test_type_check5_1832, exception).
throw(m_test_type_check6_1833, exception).
throw(m_test_type_check8_1834, exception).
throw(m_test_type_check9_1835, exception).
throw(m_test_type_check10_1836, exception).
throw(m_test_type_check11_1837, exception).
throw(m_test_type_check12_1838, exception).
throw(m_test_type_check13_1839, exception).
throw(m_test_type_check14_1840, exception).
throw(m_test_type_check15_1841, exception).
throw(m_test_type_check16_1842, exception).
throw(m_test_type_check17_1843, exception).
throw(m_test_type_check18_1844, exception).
throw(m_test_type_check19_1845, exception).
throw(m_test_type_check20_1846, exception).
throw(m_test_type_check_basic_downcast_1847, exception).
throw(m_test_type_check_no_downcast_to_number_1848, exception).
throw(m_test_type_check21_1849, exception).
throw(m_test_type_check22_1850, exception).
throw(m_test_type_check23_1851, exception).
throw(m_test_type_check24_1852, exception).
throw(m_test_type_check_default_externs_1853, exception).
throw(m_test_type_check_custom_externs_1854, exception).
throw(m_test_type_check_custom_externs2_1855, exception).
throw(m_test_parameterized_array1_1856, exception).
throw(m_test_parameterized_array2_1857, exception).
throw(m_test_parameterized_array3_1858, exception).
throw(m_test_parameterized_array4_1859, exception).
throw(m_test_parameterized_array5_1860, exception).
throw(m_test_parameterized_array6_1861, exception).
throw(m_test_parameterized_array7_1862, exception).
throw(m_test_parameterized_object1_1863, exception).
throw(m_test_parameterized_object2_1864, exception).
throw(m_test_parameterized_object3_1865, exception).
throw(m_test_parameterized_object4_1866, exception).
throw(m_test_parameterized_object5_1867, exception).
throw(m_test_union_of_function_and_type_1868, exception).
throw(m_test_optional_parameter_compared_to_undefined_1869, exception).
throw(m_test_optional_all_type_1870, exception).
throw(m_test_optional_unknown_named_type_1871, exception).
throw(m_test_optional_arg_function_param_1872, exception).
throw(m_test_optional_arg_function_param2_1873, exception).
throw(m_test_optional_arg_function_param3_1874, exception).
throw(m_test_optional_arg_function_param4_1875, exception).
throw(m_test_optional_arg_function_param_error_1876, exception).
throw(m_test_optional_nullable_arg_function_param_1877, exception).
throw(m_test_optional_nullable_arg_function_param2_1878, exception).
throw(m_test_optional_nullable_arg_function_param3_1879, exception).
throw(m_test_optional_arg_function_return_1880, exception).
throw(m_test_optional_arg_function_return2_1881, exception).
throw(m_test_boolean_type_1882, exception).
throw(m_test_boolean_reduction1_1883, exception).
throw(m_test_boolean_reduction2_1884, exception).
throw(m_test_boolean_reduction3_1885, exception).
throw(m_test_boolean_reduction4_1886, exception).
throw(m_test_boolean_reduction5_1887, exception).
throw(m_test_boolean_reduction6_1888, exception).
throw(m_test_boolean_reduction7_1889, exception).
throw(m_test_null_and_1890, exception).
throw(m_test_null_or_1891, exception).
throw(m_test_boolean_preservation1_1892, exception).
throw(m_test_boolean_preservation2_1893, exception).
throw(m_test_boolean_preservation3_1894, exception).
throw(m_test_boolean_preservation4_1895, exception).
throw(m_test_type_of_reduction1_1896, exception).
throw(m_test_type_of_reduction2_1897, exception).
throw(m_test_type_of_reduction3_1898, exception).
throw(m_test_type_of_reduction4_1899, exception).
throw(m_test_type_of_reduction5_1900, exception).
throw(m_test_type_of_reduction6_1901, exception).
throw(m_test_type_of_reduction7_1902, exception).
throw(m_test_type_of_reduction8_1903, exception).
throw(m_test_type_of_reduction9_1904, exception).
throw(m_test_type_of_reduction10_1905, exception).
throw(m_test_type_of_reduction11_1906, exception).
throw(m_test_type_of_reduction12_1907, exception).
throw(m_test_type_of_reduction13_1908, exception).
throw(m_test_type_of_reduction14_1909, exception).
throw(m_test_type_of_reduction15_1910, exception).
throw(m_test_type_of_reduction16_1911, exception).
throw(m_test_qualified_name_reduction1_1912, exception).
throw(m_test_qualified_name_reduction2_1913, exception).
throw(m_test_qualified_name_reduction3_1914, exception).
throw(m_test_qualified_name_reduction4_1915, exception).
throw(m_test_qualified_name_reduction5a_1916, exception).
throw(m_test_qualified_name_reduction5b_1917, exception).
throw(m_test_qualified_name_reduction5c_1918, exception).
throw(m_test_qualified_name_reduction6_1919, exception).
throw(m_test_qualified_name_reduction7_1920, exception).
throw(m_test_qualified_name_reduction7a_1921, exception).
throw(m_test_qualified_name_reduction8_1922, exception).
throw(m_test_qualified_name_reduction9_1923, exception).
throw(m_test_qualified_name_reduction10_1924, exception).
throw(m_test_obj_lit_def1a_1925, exception).
throw(m_test_obj_lit_def1b_1926, exception).
throw(m_test_obj_lit_def2a_1927, exception).
throw(m_test_obj_lit_def2b_1928, exception).
throw(m_test_obj_lit_def3a_1929, exception).
throw(m_test_obj_lit_def3b_1930, exception).
throw(m_test_obj_lit_def4_1931, exception).
throw(m_test_obj_lit_def5_1932, exception).
throw(m_test_obj_lit_def6_1933, exception).
throw(m_test_obj_lit_def7_1934, exception).
throw(m_test_instance_of_reduction1_1935, exception).
throw(m_test_instance_of_reduction2_1936, exception).
throw(m_test_undeclared_global_property1_1937, exception).
throw(m_test_undeclared_global_property2_1938, exception).
throw(m_test_locally_inferred_global_property1_1939, exception).
throw(m_test_property_inferred_propagation_1940, exception).
throw(m_test_property_inference1_1941, exception).
throw(m_test_property_inference2_1942, exception).
throw(m_test_property_inference3_1943, exception).
throw(m_test_property_inference4_1944, exception).
throw(m_test_property_inference5_1945, exception).
throw(m_test_property_inference6_1946, exception).
throw(m_test_property_inference7_1947, exception).
throw(m_test_property_inference8_1948, exception).
throw(m_test_property_inference9_1949, exception).
throw(m_test_property_inference10_1950, exception).
throw(m_test_no_persistent_type_inference_for_object_properties_1951, exception).
throw(m_test_no_persistent_type_inference_for_function_properties_1952, exception).
throw(m_test_object_property_type_inferred_in_local_scope1_1953, exception).
throw(m_test_object_property_type_inferred_in_local_scope2_1954, exception).
throw(m_test_object_property_type_inferred_in_local_scope3_1955, exception).
throw(m_test_mismatching_overriding_inferred_property_before_declared_property1_1956, exception).
throw(m_test_mismatching_overriding_inferred_property_before_declared_property2_1957, exception).
throw(m_test_mismatching_overriding_inferred_property_before_declared_property3_1958, exception).
throw(m_test_mismatching_overriding_inferred_property_before_declared_property4_1959, exception).
throw(m_test_property_used_before_definition1_1960, exception).
throw(m_test_property_used_before_definition2_1961, exception).
throw(m_test_add1_1962, exception).
throw(m_test_add2_1963, exception).
throw(m_test_add3_1964, exception).
throw(m_test_add4_1965, exception).
throw(m_test_add5_1966, exception).
throw(m_test_add6_1967, exception).
throw(m_test_add7_1968, exception).
throw(m_test_add8_1969, exception).
throw(m_test_add9_1970, exception).
throw(m_test_add10_1971, exception).
throw(m_test_add11_1972, exception).
throw(m_test_add12_1973, exception).
throw(m_test_add13_1974, exception).
throw(m_test_add14_1975, exception).
throw(m_test_add15_1976, exception).
throw(m_test_add16_1977, exception).
throw(m_test_add17_1978, exception).
throw(m_test_add18_1979, exception).
throw(m_test_add19_1980, exception).
throw(m_test_add20_1981, exception).
throw(m_test_add21_1982, exception).
throw(m_test_numeric_comparison1_1983, exception).
throw(m_test_numeric_comparison2_1984, exception).
throw(m_test_numeric_comparison3_1985, exception).
throw(m_test_numeric_comparison4_1986, exception).
throw(m_test_numeric_comparison5_1987, exception).
throw(m_test_numeric_comparison6_1988, exception).
throw(m_test_string_comparison1_1989, exception).
throw(m_test_string_comparison2_1990, exception).
throw(m_test_string_comparison3_1991, exception).
throw(m_test_string_comparison4_1992, exception).
throw(m_test_string_comparison5_1993, exception).
throw(m_test_string_comparison6_1994, exception).
throw(m_test_value_of_comparison1_1995, exception).
throw(m_test_value_of_comparison2_1996, exception).
throw(m_test_value_of_comparison3_1997, exception).
throw(m_test_generic_relational_expression_1998, exception).
throw(m_test_instanceof1_1999, exception).
throw(m_test_instanceof2_2000, exception).
throw(m_test_instanceof3_2001, exception).
throw(m_test_instanceof4_2002, exception).
throw(m_test_instanceof5_2003, exception).
throw(m_test_instanceof6_2004, exception).
throw(m_test_instance_of_reduction3_2005, exception).
throw(m_test_scoping1_2006, exception).
throw(m_test_scoping2_2007, exception).
throw(m_test_scoping3_2008, exception).
throw(m_test_scoping4_2009, exception).
throw(m_test_scoping5_2010, exception).
throw(m_test_scoping6_2011, exception).
throw(m_test_scoping7_2012, exception).
throw(m_test_scoping8_2013, exception).
throw(m_test_scoping9_2014, exception).
throw(m_test_scoping10_2015, exception).
throw(m_test_scoping11_2016, exception).
throw(m_test_scoping12_2017, exception).
throw(m_test_function_arguments1_2018, exception).
throw(m_test_function_arguments2_2019, exception).
throw(m_test_function_arguments3_2020, exception).
throw(m_test_function_arguments4_2021, exception).
throw(m_test_function_arguments5_2022, exception).
throw(m_test_function_arguments6_2023, exception).
throw(m_test_function_arguments7_2024, exception).
throw(m_test_function_arguments8_2025, exception).
throw(m_test_function_arguments9_2026, exception).
throw(m_test_function_arguments10_2027, exception).
throw(m_test_function_arguments11_2028, exception).
throw(m_test_function_arguments12_2029, exception).
throw(m_test_function_arguments13_2030, exception).
throw(m_test_function_arguments14_2031, exception).
throw(m_test_function_arguments15_2032, exception).
throw(m_test_function_arguments16_2033, exception).
throw(m_test_function_arguments17_2034, exception).
throw(m_test_print_function_name1_2035, exception).
throw(m_test_print_function_name2_2036, exception).
throw(m_test_function_inference1_2037, exception).
throw(m_test_function_inference2_2038, exception).
throw(m_test_function_inference3_2039, exception).
throw(m_test_function_inference4_2040, exception).
throw(m_test_function_inference5_2041, exception).
throw(m_test_function_inference6_2042, exception).
throw(m_test_function_inference7_2043, exception).
throw(m_test_function_inference8_2044, exception).
throw(m_test_function_inference9_2045, exception).
throw(m_test_function_inference10_2046, exception).
throw(m_test_function_inference11_2047, exception).
throw(m_test_function_inference12_2048, exception).
throw(m_test_function_inference13_2049, exception).
throw(m_test_function_inference14_2050, exception).
throw(m_test_function_inference15_2051, exception).
throw(m_test_function_inference16_2052, exception).
throw(m_test_function_inference17_2053, exception).
throw(m_test_function_inference18_2054, exception).
throw(m_test_function_inference19_2055, exception).
throw(m_test_function_inference20_2056, exception).
throw(m_test_function_inference21_2057, exception).
throw(m_test_function_inference22_2058, exception).
throw(m_test_function_inference23_2059, exception).
throw(m_test_inner_function1_2060, exception).
throw(m_test_inner_function2_2061, exception).
throw(m_test_inner_function3_2062, exception).
throw(m_test_inner_function4_2063, exception).
throw(m_test_inner_function5_2064, exception).
throw(m_test_inner_function6_2065, exception).
throw(m_test_inner_function7_2066, exception).
throw(m_test_inner_function8_2067, exception).
throw(m_test_inner_function9_2068, exception).
throw(m_test_inner_function10_2069, exception).
throw(m_test_inner_function11_2070, exception).
throw(m_test_abstract_method_handling1_2071, exception).
throw(m_test_abstract_method_handling2_2072, exception).
throw(m_test_abstract_method_handling3_2073, exception).
throw(m_test_abstract_method_handling4_2074, exception).
throw(m_test_abstract_method_handling5_2075, exception).
throw(m_test_abstract_method_handling6_2076, exception).
throw(m_test_method_inference1_2077, exception).
throw(m_test_method_inference2_2078, exception).
throw(m_test_method_inference3_2079, exception).
throw(m_test_method_inference4_2080, exception).
throw(m_test_method_inference5_2081, exception).
throw(m_test_method_inference6_2082, exception).
throw(m_test_method_inference7_2083, exception).
throw(m_test_method_inference8_2084, exception).
throw(m_test_method_inference9_2085, exception).
throw(m_test_static_method_declaration1_2086, exception).
throw(m_test_static_method_declaration2_2087, exception).
throw(m_test_static_method_declaration3_2088, exception).
throw(m_test_duplicate_static_method_decl1_2089, exception).
throw(m_test_duplicate_static_method_decl2_2090, exception).
throw(m_test_duplicate_static_method_decl3_2091, exception).
throw(m_test_duplicate_static_method_decl4_2092, exception).
throw(m_test_duplicate_static_method_decl5_2093, exception).
throw(m_test_duplicate_static_property_decl1_2094, exception).
throw(m_test_duplicate_static_property_decl2_2095, exception).
throw(m_test_duplicate_static_property_decl3_2096, exception).
throw(m_test_duplicate_static_property_decl4_2097, exception).
throw(m_test_duplicate_static_property_decl5_2098, exception).
throw(m_test_duplicate_static_property_decl6_2099, exception).
throw(m_test_duplicate_static_property_decl7_2100, exception).
throw(m_test_duplicate_static_property_decl8_2101, exception).
throw(m_test_duplicate_static_property_decl9_2102, exception).
throw(m_test_duplicate_static_property_dec20_2103, exception).
throw(m_test_duplicate_local_var_decl_2104, exception).
throw(m_test_duplicate_instance_method1_2105, exception).
throw(m_test_duplicate_instance_method2_2106, exception).
throw(m_test_duplicate_instance_method3_2107, exception).
throw(m_test_duplicate_instance_method4_2108, exception).
throw(m_test_duplicate_instance_method5_2109, exception).
throw(m_test_duplicate_instance_method6_2110, exception).
throw(m_test_stub_function_declaration1_2111, exception).
throw(m_test_stub_function_declaration2_2112, exception).
throw(m_test_stub_function_declaration3_2113, exception).
throw(m_test_stub_function_declaration4_2114, exception).
throw(m_test_stub_function_declaration5_2115, exception).
throw(m_test_stub_function_declaration6_2116, exception).
throw(m_test_stub_function_declaration7_2117, exception).
throw(m_test_stub_function_declaration8_2118, exception).
throw(m_test_stub_function_declaration9_2119, exception).
throw(m_test_stub_function_declaration10_2120, exception).
throw(m_test_nested_function_inference1_2121, exception).
param(p_function_def_2694, 1, m_test_function_type_2122).
param(p_function_type_2695, 2, m_test_function_type_2122).
throw(m_test_function_type_2122, exception).
param(p_function_def_2696, 1, m_test_function_type_2123).
param(p_function_name_2697, 2, m_test_function_type_2123).
param(p_function_type_2698, 3, m_test_function_type_2123).
throw(m_test_function_type_2123, exception).
param(p_function_def_2699, 1, m_test_extern_function_type_2124).
param(p_function_name_2700, 2, m_test_extern_function_type_2124).
param(p_function_type_2701, 3, m_test_extern_function_type_2124).
throw(m_test_extern_function_type_2124, exception).
throw(m_test_type_redefinition_2125, exception).
throw(m_test_in1_2126, exception).
throw(m_test_in2_2127, exception).
throw(m_test_in3_2128, exception).
throw(m_test_in4_2129, exception).
throw(m_test_in5_2130, exception).
throw(m_test_in6_2131, exception).
throw(m_test_in7_2132, exception).
throw(m_test_for_in1_2133, exception).
throw(m_test_for_in2_2134, exception).
throw(m_test_for_in3_2135, exception).
throw(m_test_for_in4_2136, exception).
throw(m_test_for_in5_2137, exception).
throw(m_test_comparison2_2138, exception).
throw(m_test_comparison3_2139, exception).
throw(m_test_comparison4_2140, exception).
throw(m_test_comparison5_2141, exception).
throw(m_test_comparison6_2142, exception).
throw(m_test_comparison7_2143, exception).
throw(m_test_comparison8_2144, exception).
throw(m_test_comparison9_2145, exception).
throw(m_test_comparison10_2146, exception).
throw(m_test_comparison11_2147, exception).
throw(m_test_comparison12_2148, exception).
throw(m_test_comparison13_2149, exception).
throw(m_test_comparison14_2150, exception).
throw(m_test_comparison15_2151, exception).
throw(m_test_delete_operator1_2152, exception).
throw(m_test_delete_operator2_2153, exception).
throw(m_test_enum_static_method1_2154, exception).
throw(m_test_enum_static_method2_2155, exception).
throw(m_test_enum1_2156, exception).
throw(m_test_enum2_2157, exception).
throw(m_test_enum3_2158, exception).
throw(m_test_enum4_2159, exception).
throw(m_test_enum5_2160, exception).
throw(m_test_enum6_2161, exception).
throw(m_test_enum7_2162, exception).
throw(m_test_enum8_2163, exception).
throw(m_test_enum9_2164, exception).
throw(m_test_enum10_2165, exception).
throw(m_test_enum11_2166, exception).
throw(m_test_enum12_2167, exception).
throw(m_test_enum13_2168, exception).
throw(m_test_enum14_2169, exception).
throw(m_test_enum15_2170, exception).
throw(m_test_enum16_2171, exception).
throw(m_test_enum17_2172, exception).
throw(m_test_enum18_2173, exception).
throw(m_test_enum19_2174, exception).
throw(m_test_enum20_2175, exception).
throw(m_test_enum21_2176, exception).
throw(m_test_enum22_2177, exception).
throw(m_test_enum23_2178, exception).
throw(m_test_enum24_2179, exception).
throw(m_test_enum25_2180, exception).
throw(m_test_enum26_2181, exception).
throw(m_test_enum27_2182, exception).
throw(m_test_enum28_2183, exception).
throw(m_test_enum29_2184, exception).
throw(m_test_enum30_2185, exception).
throw(m_test_enum31_2186, exception).
throw(m_test_enum32_2187, exception).
throw(m_test_enum34_2188, exception).
throw(m_test_enum35_2189, exception).
throw(m_test_enum36_2190, exception).
throw(m_test_enum37_2191, exception).
throw(m_test_enum38_2192, exception).
throw(m_test_enum39_2193, exception).
throw(m_test_enum40_2194, exception).
throw(m_test_enum41_2195, exception).
throw(m_test_enum42_2196, exception).
throw(m_test_aliased_enum1_2197, exception).
throw(m_test_aliased_enum2_2198, exception).
throw(m_test_aliased_enum3_2199, exception).
throw(m_test_aliased_enum4_2200, exception).
throw(m_test_aliased_enum5_2201, exception).
throw(m_test_backwards_enum_use1_2202, exception).
throw(m_test_backwards_enum_use2_2203, exception).
throw(m_test_backwards_enum_use3_2204, exception).
throw(m_test_backwards_enum_use4_2205, exception).
throw(m_test_backwards_enum_use5_2206, exception).
throw(m_test_backwards_typedef_use2_2207, exception).
throw(m_test_backwards_typedef_use4_2208, exception).
throw(m_test_backwards_typedef_use6_2209, exception).
throw(m_test_backwards_typedef_use7_2210, exception).
throw(m_test_backwards_typedef_use8_2211, exception).
throw(m_test_backwards_typedef_use9_2212, exception).
throw(m_test_backwards_typedef_use10_2213, exception).
throw(m_test_backwards_constructor1_2214, exception).
throw(m_test_backwards_constructor2_2215, exception).
throw(m_test_minimal_constructor_annotation_2216, exception).
throw(m_test_good_extends1_2217, exception).
throw(m_test_good_extends2_2218, exception).
throw(m_test_good_extends3_2219, exception).
throw(m_test_good_extends4_2220, exception).
throw(m_test_good_extends5_2221, exception).
throw(m_test_good_extends6_2222, exception).
throw(m_test_good_extends7_2223, exception).
throw(m_test_good_extends8_2224, exception).
throw(m_test_good_extends9_2225, exception).
throw(m_test_good_extends10_2226, exception).
throw(m_test_good_extends11_2227, exception).
throw(m_test_good_extends12_2228, exception).
throw(m_test_good_extends13_2229, exception).
throw(m_test_good_extends14_2230, exception).
throw(m_test_good_extends15_2231, exception).
throw(m_test_good_extends16_2232, exception).
throw(m_test_good_extends17_2233, exception).
throw(m_test_bad_extends1_2234, exception).
throw(m_test_bad_extends2_2235, exception).
throw(m_test_bad_extends3_2236, exception).
throw(m_test_bad_extends4_2237, exception).
throw(m_test_late_extends_2238, exception).
throw(m_test_superclass_match_2239, exception).
throw(m_test_superclass_match_with_mixin_2240, exception).
throw(m_test_superclass_mismatch1_2241, exception).
throw(m_test_superclass_mismatch2_2242, exception).
throw(m_test_super_class_defined_after_sub_class1_2243, exception).
throw(m_test_super_class_defined_after_sub_class2_2244, exception).
throw(m_test_direct_prototype_assignment1_2245, exception).
throw(m_test_direct_prototype_assignment2_2246, exception).
throw(m_test_direct_prototype_assignment3_2247, exception).
throw(m_test_good_implements1_2248, exception).
throw(m_test_good_implements2_2249, exception).
throw(m_test_good_implements3_2250, exception).
throw(m_test_good_implements4_2251, exception).
throw(m_test_good_implements5_2252, exception).
throw(m_test_good_implements6_2253, exception).
throw(m_test_good_implements7_2254, exception).
throw(m_test_bad_implements1_2255, exception).
throw(m_test_bad_implements2_2256, exception).
throw(m_test_bad_implements3_2257, exception).
throw(m_test_bad_implements4_2258, exception).
throw(m_test_bad_implements5_2259, exception).
throw(m_test_bad_implements6_2260, exception).
throw(m_test_interface_extends_2261, exception).
throw(m_test_bad_interface_extends1_2262, exception).
throw(m_test_bad_interface_extends_non_existent_interfaces_2263, exception).
assign(v_js_2702, type_check_test_1_expr3, line(type_check_test_1, 3772)).
assign(v_expected_warnings_2703, type_check_test_1_expr4, line(type_check_test_1, 3776)).
method_invoc(type_check_test_1_expr5, m_test_types_2264, line(type_check_test_1, 3780)).
throw(type_check_test_1_expr5, exception, line(type_check_test_1, 3780)).
argument(v_js_2702, 1, type_check_test_1_expr5).
argument(v_expected_warnings_2703, 2, type_check_test_1_expr5).
throw(m_test_bad_interface_extends2_2265, exception).
throw(m_test_bad_interface_extends3_2266, exception).
throw(m_test_bad_interface_extends4_2267, exception).
throw(m_test_bad_interface_extends5_2268, exception).
throw(m_test_bad_implements_aconstructor_2269, exception).
throw(m_test_bad_implements_non_interface_type_2270, exception).
throw(m_test_bad_implements_non_object_type_2271, exception).
throw(m_test_interface_assignment1_2272, exception).
throw(m_test_interface_assignment2_2273, exception).
throw(m_test_interface_assignment3_2274, exception).
throw(m_test_interface_assignment4_2275, exception).
throw(m_test_interface_assignment5_2276, exception).
throw(m_test_interface_assignment6_2277, exception).
throw(m_test_interface_assignment7_2278, exception).
throw(m_test_interface_assignment8_2279, exception).
throw(m_test_interface_assignment9_2280, exception).
throw(m_test_interface_assignment10_2281, exception).
throw(m_test_interface_assignment11_2282, exception).
throw(m_test_interface_assignment12_2283, exception).
throw(m_test_interface_assignment13_2284, exception).
throw(m_test_getprop1_2285, exception).
throw(m_test_getprop2_2286, exception).
throw(m_test_getprop3_2287, exception).
throw(m_test_getprop4_2288, exception).
throw(m_test_setprop1_2289, exception).
throw(m_test_setprop2_2290, exception).
throw(m_test_setprop3_2291, exception).
throw(m_test_setprop4_2292, exception).
throw(m_test_setprop5_2293, exception).
throw(m_test_setprop6_2294, exception).
throw(m_test_setprop7_2295, exception).
throw(m_test_setprop8_2296, exception).
throw(m_test_setprop9_2297, exception).
throw(m_test_setprop10_2298, exception).
throw(m_test_setprop11_2299, exception).
throw(m_test_getprop_dict1_2300, exception).
throw(m_test_getprop_dict2_2301, exception).
throw(m_test_getprop_dict3_2302, exception).
throw(m_test_getprop_dict4_2303, exception).
throw(m_test_getprop_dict5_2304, exception).
throw(m_test_getprop_dict6_2305, exception).
throw(m_test_getprop_dict7_2306, exception).
throw(m_test_getelem_struct1_2307, exception).
throw(m_test_getelem_struct2_2308, exception).
throw(m_test_getelem_struct3_2309, exception).
throw(m_test_getelem_struct4_2310, exception).
throw(m_test_getelem_struct5_2311, exception).
throw(m_test_getelem_struct6_2312, exception).
throw(m_test_getelem_struct7_2313, exception).
throw(m_test_in_on_struct_2314, exception).
throw(m_test_forin_on_struct_2315, exception).
throw(m_test_array_access1_2316, exception).
throw(m_test_array_access2_2317, exception).
throw(m_test_array_access3_2318, exception).
throw(m_test_array_access4_2319, exception).
throw(m_test_array_access6_2320, exception).
throw(m_test_array_access7_2321, exception).
throw(m_test_array_access8_2322, exception).
throw(m_test_array_access9_2323, exception).
throw(m_test_prop_access_2324, exception).
throw(m_test_prop_access2_2325, exception).
throw(m_test_prop_access3_2326, exception).
throw(m_test_prop_access4_2327, exception).
throw(m_test_switch_case1_2328, exception).
throw(m_test_switch_case2_2329, exception).
throw(m_test_var1_2330, exception).
throw(m_test_var2_2331, exception).
throw(m_test_var3_2332, exception).
throw(m_test_var4_2333, exception).
throw(m_test_var5_2334, exception).
throw(m_test_var6_2335, exception).
throw(m_test_var7_2336, exception).
throw(m_test_var8_2337, exception).
throw(m_test_var9_2338, exception).
throw(m_test_var10_2339, exception).
throw(m_test_var11_2340, exception).
throw(m_test_var12_2341, exception).
throw(m_test_var13_2342, exception).
throw(m_test_var14_2343, exception).
throw(m_test_var15_2344, exception).
throw(m_test_assign1_2345, exception).
throw(m_test_assign2_2346, exception).
throw(m_test_assign3_2347, exception).
throw(m_test_assign4_2348, exception).
throw(m_test_assign_inference_2349, exception).
throw(m_test_or1_2350, exception).
throw(m_test_or2_2351, exception).
throw(m_test_or3_2352, exception).
throw(m_test_or4_2353, exception).
throw(m_test_or5_2354, exception).
throw(m_test_and1_2355, exception).
throw(m_test_and2_2356, exception).
throw(m_test_and3_2357, exception).
throw(m_test_and4_2358, exception).
throw(m_test_and5_2359, exception).
throw(m_test_and6_2360, exception).
throw(m_test_and7_2361, exception).
throw(m_test_hook_2362, exception).
throw(m_test_hook_restricts_type1_2363, exception).
throw(m_test_hook_restricts_type2_2364, exception).
throw(m_test_hook_restricts_type3_2365, exception).
throw(m_test_hook_restricts_type4_2366, exception).
throw(m_test_hook_restricts_type5_2367, exception).
throw(m_test_hook_restricts_type6_2368, exception).
throw(m_test_hook_restricts_type7_2369, exception).
throw(m_test_while_restricts_type1_2370, exception).
throw(m_test_while_restricts_type2_2371, exception).
throw(m_test_higher_order_functions1_2372, exception).
throw(m_test_higher_order_functions2_2373, exception).
throw(m_test_higher_order_functions3_2374, exception).
throw(m_test_higher_order_functions4_2375, exception).
throw(m_test_higher_order_functions5_2376, exception).
throw(m_test_constructor_alias1_2377, exception).
throw(m_test_constructor_alias2_2378, exception).
throw(m_test_constructor_alias3_2379, exception).
throw(m_test_constructor_alias4_2380, exception).
throw(m_test_constructor_alias5_2381, exception).
throw(m_test_constructor_alias6_2382, exception).
throw(m_test_constructor_alias7_2383, exception).
throw(m_test_constructor_alias8_2384, exception).
throw(m_test_constructor_alias9_2385, exception).
throw(m_test_constructor_alias10_2386, exception).
throw(m_test_closure1_2387, exception).
throw(m_test_closure2_2388, exception).
throw(m_test_closure3_2389, exception).
throw(m_test_closure4_2390, exception).
throw(m_test_closure5_2391, exception).
throw(m_test_closure6_2392, exception).
throw(m_test_closure7_2393, exception).
throw(m_test_return1_2394, exception).
throw(m_test_return2_2395, exception).
throw(m_test_return3_2396, exception).
throw(m_test_return4_2397, exception).
throw(m_test_return5_2398, exception).
throw(m_test_return6_2399, exception).
throw(m_test_return7_2400, exception).
throw(m_test_return8_2401, exception).
throw(m_test_inferred_return1_2402, exception).
throw(m_test_inferred_return2_2403, exception).
throw(m_test_inferred_return3_2404, exception).
throw(m_test_inferred_return4_2405, exception).
throw(m_test_inferred_return5_2406, exception).
throw(m_test_inferred_return6_2407, exception).
throw(m_test_inferred_return7_2408, exception).
throw(m_test_inferred_return8_2409, exception).
throw(m_test_inferred_param1_2410, exception).
throw(m_test_inferred_param2_2411, exception).
throw(m_test_inferred_param3_2412, exception).
throw(m_test_inferred_param4_2413, exception).
throw(m_test_inferred_param5_2414, exception).
throw(m_test_inferred_param6_2415, exception).
throw(m_test_inferred_param7_2416, exception).
throw(m_test_overridden_params1_2417, exception).
throw(m_test_overridden_params2_2418, exception).
throw(m_test_overridden_params3_2419, exception).
throw(m_test_overridden_params4_2420, exception).
throw(m_test_overridden_params5_2421, exception).
throw(m_test_overridden_params6_2422, exception).
throw(m_test_overridden_return1_2423, exception).
throw(m_test_overridden_return2_2424, exception).
throw(m_test_this1_2425, exception).
throw(m_test_overridden_property1_2426, exception).
throw(m_test_overridden_property2_2427, exception).
throw(m_test_overridden_property3_2428, exception).
throw(m_test_overridden_property4_2429, exception).
throw(m_test_overridden_property5_2430, exception).
throw(m_test_overridden_property6_2431, exception).
throw(m_test_this2_2432, exception).
throw(m_test_this3_2433, exception).
throw(m_test_this4_2434, exception).
throw(m_test_this5_2435, exception).
throw(m_test_this6_2436, exception).
throw(m_test_this7_2437, exception).
throw(m_test_this8_2438, exception).
throw(m_test_this9_2439, exception).
throw(m_test_this10_2440, exception).
throw(m_test_this11_2441, exception).
throw(m_test_this12_2442, exception).
throw(m_test_this13_2443, exception).
throw(m_test_this14_2444, exception).
throw(m_test_this_type_of_function1_2445, exception).
throw(m_test_this_type_of_function2_2446, exception).
throw(m_test_this_type_of_function3_2447, exception).
throw(m_test_this_type_of_function4_2448, exception).
throw(m_test_global_this1_2449, exception).
throw(m_test_global_this2_2450, exception).
throw(m_test_global_this2b_2451, exception).
throw(m_test_global_this3_2452, exception).
throw(m_test_global_this4_2453, exception).
throw(m_test_global_this5_2454, exception).
throw(m_test_global_this6_2455, exception).
throw(m_test_global_this7_2456, exception).
throw(m_test_global_this8_2457, exception).
throw(m_test_global_this9_2458, exception).
throw(m_test_control_flow_restricts_type1_2459, exception).
throw(m_test_control_flow_restricts_type2_2460, exception).
throw(m_test_control_flow_restricts_type3_2461, exception).
throw(m_test_control_flow_restricts_type4_2462, exception).
throw(m_test_control_flow_restricts_type5_2463, exception).
throw(m_test_control_flow_restricts_type6_2464, exception).
throw(m_test_control_flow_restricts_type7_2465, exception).
throw(m_test_control_flow_restricts_type8_2466, exception).
throw(m_test_control_flow_restricts_type9_2467, exception).
throw(m_test_control_flow_restricts_type10_2468, exception).
throw(m_test_control_flow_restricts_type11_2469, exception).
throw(m_test_switch_case3_2470, exception).
throw(m_test_switch_case4_2471, exception).
throw(m_test_switch_case5_2472, exception).
throw(m_test_switch_case6_2473, exception).
throw(m_test_switch_case7_2474, exception).
throw(m_test_switch_case8_2475, exception).
throw(m_test_no_type_check1_2476, exception).
throw(m_test_no_type_check2_2477, exception).
throw(m_test_no_type_check3_2478, exception).
throw(m_test_no_type_check4_2479, exception).
throw(m_test_no_type_check5_2480, exception).
throw(m_test_no_type_check6_2481, exception).
throw(m_test_no_type_check7_2482, exception).
throw(m_test_no_type_check8_2483, exception).
throw(m_test_no_type_check9_2484, exception).
throw(m_test_no_type_check10_2485, exception).
throw(m_test_no_type_check11_2486, exception).
throw(m_test_no_type_check12_2487, exception).
throw(m_test_no_type_check13_2488, exception).
throw(m_test_no_type_check14_2489, exception).
throw(m_test_implicit_cast_2490, exception).
throw(m_test_implicit_cast_subclass_access_2491, exception).
throw(m_test_implicit_cast_not_in_externs_2492, exception).
throw(m_test_number_node_2493, exception).
throw(m_test_string_node_2494, exception).
throw(m_test_boolean_node_true_2495, exception).
throw(m_test_boolean_node_false_2496, exception).
throw(m_test_undefined_node_2497, exception).
throw(m_test_number_autoboxing_2498, exception).
throw(m_test_number_unboxing_2499, exception).
throw(m_test_string_autoboxing_2500, exception).
throw(m_test_string_unboxing_2501, exception).
throw(m_test_boolean_autoboxing_2502, exception).
throw(m_test_boolean_unboxing_2503, exception).
throw(m_test_iife1_2504, exception).
throw(m_test_iife2_2505, exception).
throw(m_test_iife3_2506, exception).
throw(m_test_iife4_2507, exception).
throw(m_test_iife5_2508, exception).
throw(m_test_not_iife1_2509, exception).
throw(m_test_issue61_2510, exception).
throw(m_test_issue61b_2511, exception).
throw(m_test_issue86_2512, exception).
throw(m_test_issue124_2513, exception).
throw(m_test_issue124b_2514, exception).
throw(m_test_issue259_2515, exception).
throw(m_test_issue301_2516, exception).
throw(m_test_issue368_2517, exception).
throw(m_test_issue380_2518, exception).
throw(m_test_issue483_2519, exception).
throw(m_test_issue537a_2520, exception).
throw(m_test_issue537b_2521, exception).
throw(m_test_issue537c_2522, exception).
throw(m_test_issue537d_2523, exception).
throw(m_test_issue586_2524, exception).
throw(m_test_issue635_2525, exception).
throw(m_test_issue635b_2526, exception).
throw(m_test_issue669_2527, exception).
throw(m_test_issue688_2528, exception).
throw(m_test_issue700_2529, exception).
throw(m_test_issue725_2530, exception).
throw(m_test_issue726_2531, exception).
throw(m_test_issue765_2532, exception).
throw(m_test_issue783_2533, exception).
throw(m_test_issue791_2534, exception).
throw(m_test_issue810_2535, exception).
throw(m_test_bug592170_2536, exception).
throw(m_test_bug901455_2537, exception).
throw(m_test_bug908701_2538, exception).
throw(m_test_bug908625_2539, exception).
throw(m_test_bug911118_2540, exception).
throw(m_test_bug909000_2541, exception).
throw(m_test_bug930117_2542, exception).
throw(m_test_bug1484445_2543, exception).
throw(m_test_bug1859535_2544, exception).
throw(m_test_bug1940591_2545, exception).
throw(m_test_bug1942972_2546, exception).
throw(m_test_bug1943776_2547, exception).
throw(m_test_bug1987544_2548, exception).
throw(m_test_bug1940769_2549, exception).
throw(m_test_bug2335992_2550, exception).
throw(m_test_bug2341812_2551, exception).
throw(m_test_bug7701884_2552, exception).
throw(m_test_scoped_constructors1_2553, exception).
throw(m_test_scoped_constructors2_2554, exception).
throw(m_test_qualified_name_inference1_2555, exception).
throw(m_test_qualified_name_inference2_2556, exception).
throw(m_test_qualified_name_inference3_2557, exception).
throw(m_test_qualified_name_inference4_2558, exception).
throw(m_test_qualified_name_inference5_2559, exception).
throw(m_test_qualified_name_inference6_2560, exception).
throw(m_test_qualified_name_inference7_2561, exception).
throw(m_test_qualified_name_inference8_2562, exception).
throw(m_test_qualified_name_inference9_2563, exception).
throw(m_test_qualified_name_inference10_2564, exception).
throw(m_test_qualified_name_inference11_2565, exception).
throw(m_test_qualified_name_inference12_2566, exception).
throw(m_test_qualified_name_inference13_2567, exception).
throw(m_test_sheq_refined_scope_2568, exception).
throw(m_test_assign_to_untyped_variable_2569, exception).
throw(m_test_assign_to_untyped_property_2570, exception).
throw(m_test_new1_2571, exception).
throw(m_test_new2_2572, exception).
throw(m_test_new3_2573, exception).
throw(m_test_new4_2574, exception).
throw(m_test_new5_2575, exception).
throw(m_test_new6_2576, exception).
throw(m_test_new7_2577, exception).
throw(m_test_new8_2578, exception).
throw(m_test_new9_2579, exception).
throw(m_test_new10_2580, exception).
throw(m_test_new11_2581, exception).
throw(m_test_new12_2582, exception).
throw(m_test_new13_2583, exception).
throw(m_test_new14_2584, exception).
throw(m_test_new15_2585, exception).
throw(m_test_new16_2586, exception).
throw(m_test_new17_2587, exception).
throw(m_test_new18_2588, exception).
throw(m_test_name1_2589, exception).
throw(m_test_name2_2590, exception).
throw(m_test_name3_2591, exception).
throw(m_test_name4_2592, exception).
throw(m_test_name5_2593, exception).
param(p_name_2704, 1, m_test_name_node_2594).
throw(m_test_bit_operation1_2595, exception).
throw(m_test_bit_operation2_2596, exception).
throw(m_test_bit_operation3_2597, exception).
throw(m_test_bit_operation4_2598, exception).
throw(m_test_bit_operation5_2599, exception).
throw(m_test_bit_operation6_2600, exception).
throw(m_test_bit_operation7_2601, exception).
throw(m_test_bit_operation8_2602, exception).
throw(m_test_bit_operation9_2603, exception).
throw(m_test_call1_2604, exception).
throw(m_test_call2_2605, exception).
throw(m_test_call3_2606, exception).
throw(m_test_call4_2607, exception).
throw(m_test_call5_2608, exception).
throw(m_test_call6_2609, exception).
throw(m_test_call7_2610, exception).
throw(m_test_call8_2611, exception).
throw(m_test_call9_2612, exception).
throw(m_test_call10_2613, exception).
throw(m_test_call11_2614, exception).
throw(m_test_function_call1_2615, exception).
throw(m_test_function_call2_2616, exception).
throw(m_test_function_call3_2617, exception).
throw(m_test_function_call4_2618, exception).
throw(m_test_function_call5_2619, exception).
throw(m_test_function_call6_2620, exception).
throw(m_test_function_call7_2621, exception).
throw(m_test_function_call8_2622, exception).
throw(m_test_function_bind1_2623, exception).
throw(m_test_function_bind2_2624, exception).
throw(m_test_function_bind3_2625, exception).
throw(m_test_function_bind4_2626, exception).
throw(m_test_function_bind5_2627, exception).
throw(m_test_goog_bind1_2628, exception).
throw(m_test_goog_bind2_2629, exception).
throw(m_test_cast2_2630, exception).
throw(m_test_cast3_2631, exception).
throw(m_test_cast3a_2632, exception).
throw(m_test_cast4_2633, exception).
throw(m_test_cast5_2634, exception).
throw(m_test_cast5a_2635, exception).
throw(m_test_cast6_2636, exception).
throw(m_test_cast7_2637, exception).
throw(m_test_cast8_2638, exception).
throw(m_test_cast9_2639, exception).
throw(m_test_cast10_2640, exception).
throw(m_test_cast11_2641, exception).
throw(m_test_cast12_2642, exception).
throw(m_test_cast13_2643, exception).
throw(m_test_cast14_2644, exception).
throw(m_test_cast15_2645, exception).
throw(m_test_cast16_2646, exception).
throw(m_test_cast17a_2647, exception).
throw(m_test_cast17b_2648, exception).
throw(m_test_cast18_2649, exception).
throw(m_test_cast19_2650, exception).
throw(m_test_cast20_2651, exception).
throw(m_test_cast21_2652, exception).
throw(m_test_cast22_2653, exception).
throw(m_test_cast23_2654, exception).
throw(m_test_cast24_2655, exception).
throw(m_test_cast25_2656, exception).
throw(m_test_cast26_2657, exception).
throw(m_test_cast27_2658, exception).
throw(m_test_cast27a_2659, exception).
throw(m_test_cast28_2660, exception).
throw(m_test_cast28a_2661, exception).
throw(m_test_cast29a_2662, exception).
throw(m_test_cast29b_2663, exception).
throw(m_test_cast29c_2664, exception).
throw(m_test_cast30_2665, exception).
throw(m_test_cast31_2666, exception).
throw(m_test_cast32_2667, exception).
throw(m_test_cast33_2668, exception).
throw(m_test_cast34a_2669, exception).
throw(m_test_cast34b_2670, exception).
throw(m_test_nested_casts_2671, exception).
throw(m_test_native_cast1_2672, exception).
throw(m_test_native_cast2_2673, exception).
throw(m_test_native_cast3_2674, exception).
throw(m_test_native_cast4_2675, exception).
throw(m_test_bad_constructor_call_2676, exception).
throw(m_test_typeof_2677, exception).
throw(m_test_typeof2_2678, exception).
throw(m_test_typeof3_2679, exception).
throw(m_test_constructor_type1_2680, exception).
throw(m_test_constructor_type2_2681, exception).
throw(m_test_constructor_type3_2682, exception).
throw(m_test_constructor_type4_2683, exception).
throw(m_test_constructor_type5_2684, exception).
throw(m_test_constructor_type6_2685, exception).
throw(m_test_constructor_type7_2686, exception).
throw(m_test_constructor_type8_2687, exception).
throw(m_test_constructor_type9_2688, exception).
throw(m_test_constructor_type10_2689, exception).
throw(m_test_constructor_type11_2690, exception).
throw(m_test_constructor_type12_2691, exception).
throw(m_test_bad_struct_2692, exception).
throw(m_test_bad_dict_2693, exception).
throw(m_test_anonymous_prototype1_2694, exception).
throw(m_test_anonymous_prototype2_2695, exception).
throw(m_test_anonymous_type1_2696, exception).
throw(m_test_anonymous_type2_2697, exception).
throw(m_test_anonymous_type3_2698, exception).
throw(m_test_bang1_2699, exception).
throw(m_test_bang2_2700, exception).
throw(m_test_bang3_2701, exception).
throw(m_test_bang4_2702, exception).
throw(m_test_bang5_2703, exception).
throw(m_test_bang6_2704, exception).
throw(m_test_bang7_2705, exception).
throw(m_test_define_property_on_nullable_object1_2706, exception).
throw(m_test_define_property_on_nullable_object2_2707, exception).
throw(m_test_unknown_constructor_instance_type1_2708, exception).
throw(m_test_unknown_constructor_instance_type2_2709, exception).
throw(m_test_unknown_constructor_instance_type3_2710, exception).
throw(m_test_unknown_prototype_chain_2711, exception).
throw(m_test_namespaced_constructor_2712, exception).
throw(m_test_complex_namespace_2713, exception).
throw(m_test_adding_methods_using_prototype_idiom_simple_namespace_2714, exception).
throw(m_test_adding_methods_using_prototype_idiom_complex_namespace1_2715, exception).
throw(m_test_adding_methods_using_prototype_idiom_complex_namespace2_2716, exception).
param(p_p_2705, 1, m_test_adding_methods_using_prototype_idiom_complex_namespace_2717).
throw(m_test_adding_methods_prototype_idiom_and_object_literal_simple_namespace_2718, exception).
throw(m_test_dont_add_methods_if_no_constructor_2719, exception).
throw(m_test_function_assignement_2720, exception).
throw(m_test_add_methods_prototype_two_ways_2721, exception).
throw(m_test_prototype_property_types_2722, exception).
throw(m_test_value_type_built_in_prototype_property_type_2723, exception).
throw(m_test_declare_built_in_constructor_2724, exception).
throw(m_test_extend_built_in_type1_2725, exception).
throw(m_test_extend_built_in_type2_2726, exception).
throw(m_test_extend_function1_2727, exception).
throw(m_test_extend_function2_2728, exception).
throw(m_test_inheritance_check1_2729, exception).
throw(m_test_inheritance_check2_2730, exception).
throw(m_test_inheritance_check3_2731, exception).
throw(m_test_inheritance_check4_2732, exception).
throw(m_test_inheritance_check5_2733, exception).
throw(m_test_inheritance_check6_2734, exception).
throw(m_test_inheritance_check7_2735, exception).
throw(m_test_inheritance_check8_2736, exception).
throw(m_test_inheritance_check9_1_2737, exception).
throw(m_test_inheritance_check9_2_2738, exception).
throw(m_test_inheritance_check9_3_2739, exception).
throw(m_test_inheritance_check10_1_2740, exception).
throw(m_test_inheritance_check10_2_2741, exception).
throw(m_test_inheritance_check10_3_2742, exception).
throw(m_test_interface_inheritance_check11_2743, exception).
throw(m_test_inheritance_check12_2744, exception).
throw(m_test_inheritance_check13_2745, exception).
throw(m_test_inheritance_check14_2746, exception).
throw(m_test_inheritance_check15_2747, exception).
throw(m_test_inheritance_check16_2748, exception).
throw(m_test_inheritance_check17_2749, exception).
throw(m_test_interface_property_override1_2750, exception).
throw(m_test_interface_property_override2_2751, exception).
throw(m_test_interface_inheritance_check1_2752, exception).
throw(m_test_interface_inheritance_check2_2753, exception).
throw(m_test_interface_inheritance_check3_2754, exception).
throw(m_test_interface_inheritance_check4_2755, exception).
throw(m_test_interface_inheritance_check5_2756, exception).
throw(m_test_interface_inheritance_check6_2757, exception).
throw(m_test_interface_inheritance_check7_2758, exception).
throw(m_test_interface_inheritance_check8_2759, exception).
throw(m_test_interface_inheritance_check9_2760, exception).
throw(m_test_interface_inheritance_check10_2761, exception).
throw(m_test_interface_inheritance_check12_2762, exception).
throw(m_test_interface_inheritance_check13_2763, exception).
throw(m_test_interface_property_not_implemented_2764, exception).
throw(m_test_interface_property_not_implemented2_2765, exception).
throw(m_test_stub_constructor_implementing_interface_2766, exception).
throw(m_test_object_literal_2767, exception).
throw(m_test_object_literal_declaration1_2768, exception).
throw(m_test_object_literal_declaration2_2769, exception).
throw(m_test_object_literal_declaration3_2770, exception).
throw(m_test_object_literal_declaration4_2771, exception).
throw(m_test_object_literal_declaration5_2772, exception).
throw(m_test_object_literal_declaration6_2773, exception).
throw(m_test_object_literal_declaration7_2774, exception).
throw(m_test_call_date_constructor_as_function_2775, exception).
throw(m_test_call_error_constructor_as_function_2776, exception).
throw(m_test_call_array_constructor_as_function_2777, exception).
throw(m_test_property_type_of_union_type_2778, exception).
throw(m_test_annotated_property_on_interface1_2779, exception).
throw(m_test_annotated_property_on_interface2_2780, exception).
throw(m_test_annotated_property_on_interface3_2781, exception).
throw(m_test_annotated_property_on_interface4_2782, exception).
throw(m_test_warn_unannotated_property_on_interface5_2783, exception).
throw(m_test_warn_unannotated_property_on_interface6_2784, exception).
throw(m_test_data_property_on_interface1_2785, exception).
throw(m_test_data_property_on_interface2_2786, exception).
throw(m_test_data_property_on_interface3_2787, exception).
throw(m_test_data_property_on_interface4_2788, exception).
throw(m_test_warn_data_property_on_interface3_2789, exception).
throw(m_test_warn_data_property_on_interface4_2790, exception).
throw(m_test_error_mismatching_property_on_interface4_2791, exception).
throw(m_test_error_mismatching_property_on_interface5_2792, exception).
throw(m_test_error_mismatching_property_on_interface6_2793, exception).
throw(m_test_interface_non_empty_function_2794, exception).
throw(m_test_double_nested_interface_2795, exception).
throw(m_test_static_data_property_on_nested_interface_2796, exception).
throw(m_test_interface_instantiation_2797, exception).
throw(m_test_prototype_loop_2798, exception).
throw(m_test_implements_loop_2799, exception).
throw(m_test_implements_extends_loop_2800, exception).
throw(m_test_interface_extends_loop_2801, exception).
throw(m_test_conversion_from_interface_to_recursive_constructor_2802, exception).
throw(m_test_direct_prototype_assign_2803, exception).
throw(m_test_resolution_via_registry1_2804, exception).
throw(m_test_resolution_via_registry2_2805, exception).
throw(m_test_resolution_via_registry3_2806, exception).
throw(m_test_resolution_via_registry4_2807, exception).
throw(m_test_resolution_via_registry5_2808, exception).
throw(m_test_gather_propery_without_annotation1_2809, exception).
throw(m_test_gather_propery_without_annotation2_2810, exception).
throw(m_test_function_masks_variable_bug_2811, exception).
throw(m_test_dfa1_2812, exception).
throw(m_test_dfa2_2813, exception).
throw(m_test_dfa3_2814, exception).
throw(m_test_dfa4_2815, exception).
throw(m_test_dfa5_2816, exception).
throw(m_test_dfa6_2817, exception).
throw(m_test_dfa7_2818, exception).
throw(m_test_dfa8_2819, exception).
throw(m_test_dfa9_2820, exception).
throw(m_test_dfa10_2821, exception).
throw(m_test_dfa11_2822, exception).
throw(m_test_dfa12_2823, exception).
throw(m_test_dfa13_2824, exception).
throw(m_test_type_inference_with_cast1_2825, exception).
throw(m_test_type_inference_with_cast2_2826, exception).
throw(m_test_type_inference_with_cast3_2827, exception).
throw(m_test_type_inference_with_cast4_2828, exception).
throw(m_test_type_inference_with_cast5_2829, exception).
throw(m_test_type_inference_with_closure1_2830, exception).
throw(m_test_type_inference_with_closure2_2831, exception).
throw(m_test_type_inference_with_no_entry1_2832, exception).
throw(m_test_type_inference_with_no_entry2_2833, exception).
throw(m_test_forward_property_reference_2834, exception).
throw(m_test_no_forward_type_declaration_2835, exception).
throw(m_test_no_forward_type_declaration_and_no_braces_2836, exception).
throw(m_test_forward_type_declaration1_2837, exception).
throw(m_test_forward_type_declaration2_2838, exception).
throw(m_test_forward_type_declaration3_2839, exception).
throw(m_test_forward_type_declaration4_2840, exception).
throw(m_test_forward_type_declaration5_2841, exception).
throw(m_test_forward_type_declaration6_2842, exception).
throw(m_test_forward_type_declaration7_2843, exception).
throw(m_test_forward_type_declaration8_2844, exception).
throw(m_test_forward_type_declaration9_2845, exception).
throw(m_test_forward_type_declaration10_2846, exception).
throw(m_test_forward_type_declaration12_2847, exception).
throw(m_test_forward_type_declaration13_2848, exception).
throw(m_test_duplicate_type_def_2849, exception).
throw(m_test_type_def1_2850, exception).
throw(m_test_type_def2_2851, exception).
throw(m_test_type_def3_2852, exception).
throw(m_test_type_def4_2853, exception).
throw(m_test_type_def5_2854, exception).
throw(m_test_circular_type_def_2855, exception).
throw(m_test_get_typed_percent1_2856, exception).
throw(m_test_get_typed_percent2_2857, exception).
throw(m_test_get_typed_percent3_2858, exception).
throw(m_test_get_typed_percent4_2859, exception).
throw(m_test_get_typed_percent5_2860, exception).
throw(m_test_get_typed_percent6_2861, exception).
param(p_js_2706, 1, m_get_typed_percent_2862).
throw(m_get_typed_percent_2862, exception).
param(p_js_1node_2707, 1, m_get_instance_type_2863).
throw(m_test_prototype_property_reference_2864, exception).
throw(m_test_resolving_named_types_2865, exception).
throw(m_test_missing_property1_2866, exception).
throw(m_test_missing_property2_2867, exception).
throw(m_test_missing_property3_2868, exception).
throw(m_test_missing_property4_2869, exception).
throw(m_test_missing_property5_2870, exception).
throw(m_test_missing_property6_2871, exception).
throw(m_test_missing_property7_2872, exception).
throw(m_test_missing_property8_2873, exception).
throw(m_test_missing_property9_2874, exception).
throw(m_test_missing_property10_2875, exception).
throw(m_test_missing_property11_2876, exception).
throw(m_test_missing_property12_2877, exception).
throw(m_test_missing_property13_2878, exception).
throw(m_test_missing_property14_2879, exception).
throw(m_test_missing_property15_2880, exception).
throw(m_test_missing_property16_2881, exception).
throw(m_test_missing_property17_2882, exception).
throw(m_test_missing_property18_2883, exception).
throw(m_test_missing_property19_2884, exception).
throw(m_test_missing_property20_2885, exception).
throw(m_test_missing_property21_2886, exception).
throw(m_test_missing_property22_2887, exception).
throw(m_test_missing_property23_2888, exception).
throw(m_test_missing_property24_2889, exception).
throw(m_test_missing_property25_2890, exception).
throw(m_test_missing_property26_2891, exception).
throw(m_test_missing_property27_2892, exception).
throw(m_test_missing_property28_2893, exception).
throw(m_test_missing_property29_2894, exception).
throw(m_test_missing_property30_2895, exception).
throw(m_test_missing_property31_2896, exception).
throw(m_test_missing_property32_2897, exception).
throw(m_test_missing_property33_2898, exception).
throw(m_test_missing_property34_2899, exception).
throw(m_test_missing_property35_2900, exception).
throw(m_test_missing_property36_2901, exception).
throw(m_test_missing_property37_2902, exception).
throw(m_test_missing_property38_2903, exception).
throw(m_test_missing_property39_2904, exception).
throw(m_test_missing_property40_2905, exception).
throw(m_test_missing_property41_2906, exception).
throw(m_test_missing_property42_2907, exception).
throw(m_test_reflect_object1_2908, exception).
throw(m_test_reflect_object2_2909, exception).
throw(m_test_lends1_2910, exception).
throw(m_test_lends2_2911, exception).
throw(m_test_lends3_2912, exception).
throw(m_test_lends4_2913, exception).
throw(m_test_lends5_2914, exception).
throw(m_test_lends6_2915, exception).
throw(m_test_lends7_2916, exception).
throw(m_test_lends8_2917, exception).
throw(m_test_lends9_2918, exception).
throw(m_test_lends10_2919, exception).
throw(m_test_lends11_2920, exception).
throw(m_test_declared_native_type_equality_2921, exception).
throw(m_test_undefined_var_2922, exception).
throw(m_test_flow_scope_bug1_2923, exception).
throw(m_test_flow_scope_bug2_2924, exception).
throw(m_test_type_check_standalone_ast_2926, exception).
throw(m_test_update_parameter_type_on_closure_2927, exception).
throw(m_test_templated_this_type1_2928, exception).
throw(m_test_templated_this_type2_2929, exception).
throw(m_test_template_type1_2930, exception).
throw(m_test_template_type2_2931, exception).
throw(m_test_template_type3_2932, exception).
throw(m_test_template_type4_2933, exception).
throw(m_test_template_type5_2934, exception).
throw(m_disable_test_bad_template_type4_2935, exception).
throw(m_disable_test_bad_template_type5_2936, exception).
throw(m_disable_test_function_literal_undefined_this_argument_2937, exception).
throw(m_test_function_literal_defined_this_argument_2938, exception).
throw(m_test_function_literal_defined_this_argument2_2939, exception).
throw(m_test_function_literal_unread_null_this_argument_2940, exception).
throw(m_test_union_template_this_type_2941, exception).
throw(m_test_active_xobject_2942, exception).
throw(m_test_record_type1_2943, exception).
throw(m_test_record_type2_2944, exception).
throw(m_test_record_type3_2945, exception).
throw(m_test_record_type4_2946, exception).
throw(m_test_record_type5_2947, exception).
throw(m_test_record_type6_2948, exception).
throw(m_test_record_type7_2949, exception).
throw(m_test_record_type8_2950, exception).
throw(m_test_duplicate_record_fields1_2951, exception).
throw(m_test_duplicate_record_fields2_2952, exception).
throw(m_test_multiple_extends_interface1_2953, exception).
throw(m_test_multiple_extends_interface2_2954, exception).
throw(m_test_multiple_extends_interface3_2955, exception).
throw(m_test_multiple_extends_interface4_2956, exception).
throw(m_test_multiple_extends_interface5_2957, exception).
throw(m_test_multiple_extends_interface6_2958, exception).
throw(m_test_multiple_extends_interface_assignment_2959, exception).
throw(m_test_multiple_extends_interface_param_pass_2960, exception).
throw(m_test_bad_multiple_extends_class_2961, exception).
throw(m_test_interface_extends_resolution_2962, exception).
throw(m_test_property_can_be_defined_in_object_2963, exception).
param(p_object_type_2708, 1, m_check_object_type_2964).
param(p_property_name_2709, 2, m_check_object_type_2964).
param(p_expected_type_2710, 3, m_check_object_type_2964).
throw(m_test_extended_interface_properties_compatibility1_2965, exception).
throw(m_test_extended_interface_properties_compatibility2_2966, exception).
throw(m_test_extended_interface_properties_compatibility3_2967, exception).
throw(m_test_extended_interface_properties_compatibility4_2968, exception).
throw(m_test_extended_interface_properties_compatibility5_2969, exception).
throw(m_test_extended_interface_properties_compatibility6_2970, exception).
throw(m_test_extended_interface_properties_compatibility7_2971, exception).
throw(m_test_extended_interface_properties_compatibility8_2972, exception).
throw(m_test_generics1_2973, exception).
throw(m_test_filter0_2974, exception).
throw(m_test_filter1_2975, exception).
throw(m_test_filter2_2976, exception).
throw(m_test_filter3_2977, exception).
throw(m_test_backwards_inference_goog_array_filter1_2978, exception).
throw(m_test_backwards_inference_goog_array_filter2_2979, exception).
throw(m_test_backwards_inference_goog_array_filter3_2980, exception).
throw(m_test_backwards_inference_goog_array_filter4_2981, exception).
throw(m_test_catch_expression1_2982, exception).
throw(m_test_catch_expression2_2983, exception).
throw(m_test_parameterized1_2984, exception).
throw(m_test_parameterized2_2985, exception).
throw(m_test_parameterized3_2986, exception).
throw(m_test_parameterized4_2987, exception).
throw(m_test_parameterized5_2988, exception).
throw(m_test_parameterized_type_subtypes2_2989, exception).
param(p_js_2711, 1, m_test_types_2990).
throw(m_test_types_2990, exception).
param(p_js_2712, 1, m_test_types_2991).
param(p_description_2713, 2, m_test_types_2991).
throw(m_test_types_2991, exception).
param(p_js_2714, 1, m_test_types_2992).
param(p_type_2715, 2, m_test_types_2992).
throw(m_test_types_2992, exception).
param(p_js_2716, 1, m_test_closure_types_2993).
param(p_description_2717, 2, m_test_closure_types_2993).
throw(m_test_closure_types_2993, exception).
param(p_js_2718, 1, m_test_closure_types_multiple_warnings_2994).
param(p_descriptions_2719, 2, m_test_closure_types_multiple_warnings_2994).
throw(m_test_closure_types_multiple_warnings_2994, exception).
param(p_js_2720, 1, m_test_types_2995).
param(p_description_2721, 2, m_test_types_2995).
param(p_is_error_2722, 3, m_test_types_2995).
throw(m_test_types_2995, exception).
param(p_externs_2723, 1, m_test_types_2996).
param(p_js_2724, 2, m_test_types_2996).
param(p_description_2725, 3, m_test_types_2996).
param(p_is_error_2726, 4, m_test_types_2996).
throw(m_test_types_2996, exception).
param(p_js_2727, 1, m_parse_and_type_check_2997).
param(p_externs_2728, 1, m_parse_and_type_check_2998).
param(p_js_2729, 2, m_parse_and_type_check_2998).
param(p_js_2730, 1, m_parse_and_type_check_with_scope_2999).
param(p_externs_2731, 1, m_parse_and_type_check_with_scope_3000).
param(p_js_2732, 2, m_parse_and_type_check_with_scope_3000).
param(p_n_2733, 1, m_type_check_3001).
return(type_check_test_1_expr6, m_make_type_check_3002, line(type_check_test_1, 11515)).
method_invoc(type_check_test_1_expr6, m_type_check_1769, line(type_check_test_1, 11515)).
argument(f_compiler_2734, 1, type_check_test_1_expr6).
argument(type_check_test_1_expr7, 2, type_check_test_1_expr6).
argument(f_registry_2735, 3, type_check_test_1_expr6).
argument(f_report_missing_overrides_2693, 4, type_check_test_1_expr6).
argument(q_off_78, 5, type_check_test_1_expr6).
param(p_js_2736, 1, m_test_types_2264).
param(p_warnings_2737, 2, m_test_types_2264).
throw(m_test_types_2264, exception).
assign(v_n_2738, type_check_test_1_expr8, line(type_check_test_1, 11525)).
method_invoc(type_check_test_1_expr8, m_parse_test_code_420, line(type_check_test_1, 11525)).
argument(p_js_2736, 1, type_check_test_1_expr8).
ref(f_compiler_2734, type_check_test_1_expr8, line(type_check_test_1, 11525)).
method_invoc(type_check_test_1_expr9, m_assert_equals_3003, line(type_check_test_1, 11526)).
argument(type_check_test_1_literal2, 1, type_check_test_1_expr9).
argument(type_check_test_1_expr10, 2, type_check_test_1_expr9).
method_invoc(type_check_test_1_expr10, m_get_error_count_476, line(type_check_test_1, 11526)).
ref(f_compiler_2734, type_check_test_1_expr10, line(type_check_test_1, 11526)).
assign(v_externs_node_2739, type_check_test_1_expr11, line(type_check_test_1, 11527)).
method_invoc(type_check_test_1_expr11, m_node_3004, line(type_check_test_1, 11527)).
argument(q_block_78, 1, type_check_test_1_expr11).
ref(t_token_51, q_block_78, line(type_check_test_1, 11527)).
assign(v_extern_and_js_root_2740, type_check_test_1_expr12, line(type_check_test_1, 11528)).
method_invoc(type_check_test_1_expr12, m_node_3005, line(type_check_test_1, 11528)).
argument(q_block_79, 1, type_check_test_1_expr12).
argument(v_externs_node_2739, 2, type_check_test_1_expr12).
argument(v_n_2738, 3, type_check_test_1_expr12).
ref(t_token_51, q_block_79, line(type_check_test_1, 11528)).
method_invoc(type_check_test_1_expr13, m_process_for_testing_1774, line(type_check_test_1, 11530)).
argument(type_check_test_1_literal3, 1, type_check_test_1_expr13).
argument(v_n_2738, 2, type_check_test_1_expr13).
ref(type_check_test_1_expr14, type_check_test_1_expr13, line(type_check_test_1, 11530)).
method_invoc(type_check_test_1_expr14, m_make_type_check_3002, line(type_check_test_1, 11530)).
param(p_props_2741, 1, m_suppress_missing_property_3006).
param(p_root_2742, 1, m_type_check_result_3007).
param(p_scope_2743, 2, m_type_check_result_3007).

%proxy_object_type_1 - com.google.javascript.rhino.jstype.ProxyObjectType
param(p_registry_5410, 1, m_proxy_object_type_4658).
param(p_referenced_type_5411, 2, m_proxy_object_type_4658).
method_invoc(proxy_object_type_1_expr1, m_object_type_4742, line(proxy_object_type_1, 62)).
argument(p_registry_5410, 1, proxy_object_type_1_expr1).
method_invoc(proxy_object_type_1_expr2, m_set_referenced_type_4841, line(proxy_object_type_1, 63)).
argument(p_referenced_type_5411, 1, proxy_object_type_1_expr2).
return(f_referenced_type_5412, m_get_referenced_type_internal_4663, line(proxy_object_type_1, 73)).
return(f_referenced_obj_type_5413, m_get_referenced_obj_type_internal_4661, line(proxy_object_type_1, 77)).
param(p_referenced_type_5414, 1, m_set_referenced_type_4841).
assign(f_referenced_type_5412, p_referenced_type_5414, line(proxy_object_type_1, 81)).
assign(f_referenced_obj_type_5413, proxy_object_type_1_expr9, line(proxy_object_type_1, 83)).
assign(proxy_object_type_1_expr9, p_referenced_type_5414, line(proxy_object_type_1, 83)).
return(proxy_object_type_1_expr11, m_is_no_type_4849, line(proxy_object_type_1, 123)).
method_invoc(proxy_object_type_1_expr11, m_is_no_type_4454, line(proxy_object_type_1, 123)).
ref(f_referenced_type_5412, proxy_object_type_1_expr11, line(proxy_object_type_1, 123)).
return(proxy_object_type_1_expr12, m_is_unknown_type_4852, line(proxy_object_type_1, 138)).
method_invoc(proxy_object_type_1_expr12, m_is_unknown_type_3133, line(proxy_object_type_1, 138)).
ref(f_referenced_type_5412, proxy_object_type_1_expr12, line(proxy_object_type_1, 138)).
return(proxy_object_type_1_expr13, m_is_all_type_4861, line(proxy_object_type_1, 183)).
method_invoc(proxy_object_type_1_expr13, m_is_all_type_4472, line(proxy_object_type_1, 183)).
ref(f_referenced_type_5412, proxy_object_type_1_expr13, line(proxy_object_type_1, 183)).
return(proxy_object_type_1_expr14, m_to_maybe_union_type_4866, line(proxy_object_type_1, 209)).
method_invoc(proxy_object_type_1_expr14, m_to_maybe_union_type_4475, line(proxy_object_type_1, 209)).
ref(f_referenced_type_5412, proxy_object_type_1_expr14, line(proxy_object_type_1, 209)).
return(proxy_object_type_1_expr15, m_to_maybe_function_type_4867, line(proxy_object_type_1, 214)).
method_invoc(proxy_object_type_1_expr15, m_to_maybe_function_type_3131, line(proxy_object_type_1, 214)).
ref(f_referenced_type_5412, proxy_object_type_1_expr15, line(proxy_object_type_1, 214)).
param(p_that_5415, 1, m_test_for_equality_4869).
param(p_that_5416, 1, m_is_subtype_4870).
return(proxy_object_type_1_expr16, m_get_ctor_implemented_interfaces_4872, line(proxy_object_type_1, 240)).
cond_expr(proxy_object_type_1_expr17, proxy_object_type_1_expr18, proxy_object_type_1_expr19, line(proxy_object_type_1, 240)).
method_invoc(proxy_object_type_1_expr18, m_empty_list_597, line(proxy_object_type_1, 240)).
ref(t_collections_27, proxy_object_type_1_expr18, line(proxy_object_type_1, 240)).
param(p_for_annotations_5417, 1, m_to_string_helper_4874).
return(proxy_object_type_1_expr20, m_get_implicit_prototype_4875, line(proxy_object_type_1, 256)).
cond_expr(proxy_object_type_1_expr21, proxy_object_type_1_literal2, proxy_object_type_1_expr22, line(proxy_object_type_1, 256)).
param(p_property_name_5418, 1, m_define_property_4876).
param(p_type_5419, 2, m_define_property_4876).
param(p_inferred_5420, 3, m_define_property_4876).
param(p_property_node_5421, 4, m_define_property_4876).
param(p_name_5422, 1, m_remove_property_4877).
param(p_property_name_5423, 1, m_find_property_type_4878).
param(p_info_5424, 1, m_set_jsdoc_info_4880).
param(p_property_name_5425, 1, m_set_property_jsdoc_info_4881).
param(p_info_5426, 2, m_set_property_jsdoc_info_4881).
return(proxy_object_type_1_expr23, m_get_constructor_4882, line(proxy_object_type_1, 300)).
cond_expr(proxy_object_type_1_expr24, proxy_object_type_1_literal4, proxy_object_type_1_expr25, line(proxy_object_type_1, 300)).
param(p_visitor_5427, 1, m_visit_4885).
param(p_visitor_5428, 1, m_visit_4886).
param(p_that_5429, 2, m_visit_4886).
param(p_t_5430, 1, m_resolve_internal_4674).
param(p_scope_5431, 2, m_resolve_internal_4674).
method_invoc(proxy_object_type_1_expr26, m_set_referenced_type_4841, line(proxy_object_type_1, 327)).
argument(proxy_object_type_1_expr27, 1, proxy_object_type_1_expr26).
method_invoc(proxy_object_type_1_expr27, m_resolve_1626, line(proxy_object_type_1, 327)).
argument(p_t_5430, 1, proxy_object_type_1_expr27).
argument(p_scope_5431, 2, proxy_object_type_1_expr27).
ref(f_referenced_type_5412, proxy_object_type_1_expr27, line(proxy_object_type_1, 327)).
return(proxy_object_type_1_expr28, m_resolve_internal_4674, line(proxy_object_type_1, 328)).
param(p_constraint_5432, 1, m_match_constraint_4890).
return(proxy_object_type_1_expr29, m_to_maybe_parameterized_type_4891, line(proxy_object_type_1, 359)).
method_invoc(proxy_object_type_1_expr29, m_to_maybe_parameterized_type_4487, line(proxy_object_type_1, 359)).
ref(f_referenced_type_5412, proxy_object_type_1_expr29, line(proxy_object_type_1, 359)).
return(proxy_object_type_1_expr30, m_to_maybe_template_type_4892, line(proxy_object_type_1, 364)).
method_invoc(proxy_object_type_1_expr30, m_to_maybe_template_type_4490, line(proxy_object_type_1, 364)).
ref(f_referenced_type_5412, proxy_object_type_1_expr30, line(proxy_object_type_1, 364)).

%code_change_handler_1 - com.google.javascript.jscomp.CodeChangeHandler
assign(f_has_changed_278, code_change_handler_1_literal1, line(code_change_handler_1, 36)).

%union_type_1 - com.google.javascript.rhino.jstype.UnionType
param(p_registry_5437, 1, m_union_type_4904).
param(p_alternates_5438, 2, m_union_type_4904).
method_invoc(union_type_1_expr1, m_jstype_4257, line(union_type_1, 82)).
argument(p_registry_5437, 1, union_type_1_expr1).
assign(f_alternates_5439, p_alternates_5438, line(union_type_1, 83)).
assign(f_hashcode_5440, union_type_1_expr7, line(union_type_1, 84)).
method_invoc(union_type_1_expr7, m_hash_code_4905, line(union_type_1, 84)).
ref(f_alternates_5439, union_type_1_expr7, line(union_type_1, 84)).
param(p_property_name_5441, 1, m_find_property_type_4910).
assign(v_restricted_5442, union_type_1_expr11, line(union_type_1, 208)).
method_invoc(union_type_1_expr11, m_union_type_builder_4617, line(union_type_1, 208)).
argument(f_registry_4786, 1, union_type_1_expr11).
ref(f_alternates_5439, union_type_1_stmt5, line(union_type_1, 209)).
method_invoc(union_type_1_expr12, m_add_alternate_4586, line(union_type_1, 210)).
argument(union_type_1_expr13, 1, union_type_1_expr12).
ref(v_restricted_5442, union_type_1_expr12, line(union_type_1, 210)).
method_invoc(union_type_1_expr13, m_restrict_by_not_null_or_undefined_4414, line(union_type_1, 210)).
ref(v_t_5443, union_type_1_expr13, line(union_type_1, 210)).
return(union_type_1_expr14, m_restrict_by_not_null_or_undefined_4913, line(union_type_1, 212)).
method_invoc(union_type_1_expr14, m_build_4618, line(union_type_1, 212)).
ref(v_restricted_5442, union_type_1_expr14, line(union_type_1, 212)).
param(p_that_5444, 1, m_test_for_equality_4914).
param(p_that_5445, 1, m_get_least_supertype_4919).
param(p_that_5446, 1, m_meet_4920).
param(p_that_5447, 1, m_check_union_equivalence_helper_4921).
param(p_eq_method_5448, 2, m_check_union_equivalence_helper_4921).
param(p_type_5449, 1, m_has_alternate_4922).
param(p_eq_method_5450, 2, m_has_alternate_4922).
param(p_pname_5451, 1, m_has_property_4923).
param(p_type_5452, 1, m_contains_4927).
param(p_type_5453, 1, m_get_restricted_union_4928).
param(p_for_annotations_5454, 1, m_to_string_helper_4929).
param(p_that_5455, 1, m_is_subtype_4930).
param(p_outcome_5456, 1, m_get_restricted_type_given_to_boolean_outcome_4931).
param(p_that_5457, 1, m_get_types_under_equality_4933).
param(p_that_5458, 1, m_get_types_under_inequality_4934).
param(p_that_5459, 1, m_get_types_under_shallow_inequality_4935).
param(p_visitor_5460, 1, m_visit_4936).
param(p_visitor_5461, 1, m_visit_4937).
param(p_that_5462, 2, m_visit_4937).
param(p_t_5463, 1, m_resolve_internal_4938).
param(p_scope_5464, 2, m_resolve_internal_4938).
method_invoc(union_type_1_expr15, m_set_resolved_type_internal_4412, line(union_type_1, 540)).
argument(union_type_1_expr16, 1, union_type_1_expr15).
assign(v_changed_5465, union_type_1_literal1, line(union_type_1, 542)).
assign(v_resolved_types_5466, union_type_1_expr17, line(union_type_1, 543)).
method_invoc(union_type_1_expr17, m_builder_4939, line(union_type_1, 543)).
ref(t_immutable_list_14, union_type_1_expr17, line(union_type_1, 543)).
ref(f_alternates_5439, union_type_1_stmt11, line(union_type_1, 544)).
assign(v_new_alternate_5468, union_type_1_expr18, line(union_type_1, 545)).
method_invoc(union_type_1_expr18, m_resolve_1626, line(union_type_1, 545)).
argument(p_t_5463, 1, union_type_1_expr18).
argument(p_scope_5464, 2, union_type_1_expr18).
ref(v_alternate_5467, union_type_1_expr18, line(union_type_1, 545)).
assign(v_changed_5465, union_type_1_expr20, line(union_type_1, 546)).
assign(union_type_1_expr20, union_type_1_expr21, line(union_type_1, 546)).
method_invoc(union_type_1_expr22, m_add_4940, line(union_type_1, 547)).
argument(v_alternate_5467, 1, union_type_1_expr22).
ref(v_resolved_types_5466, union_type_1_expr22, line(union_type_1, 547)).
return(union_type_1_expr23, m_resolve_internal_4938, line(union_type_1, 555)).
param(p_validator_5469, 1, m_set_validator_4942).
param(p_constraint_5470, 1, m_match_constraint_4944).

%jstype_registry_1 - com.google.javascript.rhino.jstype.JSTypeRegistry
assign(f_namespaces_4971, jstype_registry_1_expr1, line(jstype_registry_1, 104)).
method_invoc(jstype_registry_1_expr1, m_hash_set_4556, line(jstype_registry_1, 104)).
assign(f_non_nullable_type_names_4972, jstype_registry_1_expr2, line(jstype_registry_1, 119)).
method_invoc(jstype_registry_1_expr2, m_hash_set_4556, line(jstype_registry_1, 119)).
assign(f_forward_declared_types_4973, jstype_registry_1_expr3, line(jstype_registry_1, 124)).
method_invoc(jstype_registry_1_expr3, m_hash_set_4556, line(jstype_registry_1, 124)).
assign(f_types_indexed_by_property_4974, jstype_registry_1_expr4, line(jstype_registry_1, 128)).
assign(f_greatest_subtype_by_property_4975, jstype_registry_1_expr5, line(jstype_registry_1, 140)).
assign(f_interface_to_implementors_4976, jstype_registry_1_expr6, line(jstype_registry_1, 144)).
assign(f_unresolved_named_types_4977, jstype_registry_1_expr7, line(jstype_registry_1, 148)).
assign(f_resolved_named_types_4978, jstype_registry_1_expr8, line(jstype_registry_1, 152)).
assign(f_last_generation_4979, jstype_registry_1_literal1, line(jstype_registry_1, 156)).
assign(f_template_types_4980, jstype_registry_1_expr9, line(jstype_registry_1, 159)).
method_invoc(jstype_registry_1_expr9, m_new_hash_map_422, line(jstype_registry_1, 159)).
ref(t_maps_17, jstype_registry_1_expr9, line(jstype_registry_1, 159)).
assign(f_resolve_mode_4984, q_lazy_names_148, line(jstype_registry_1, 191)).
ref(t_resolve_mode_113, q_lazy_names_148, line(jstype_registry_1, 191)).
param(p_reporter_4985, 1, m_jstype_registry_4557).
param(p_reporter_4986, 1, m_jstype_registry_402).
param(p_tolerate_undefined_values_4987, 2, m_jstype_registry_402).
assign(f_reporter_4988, p_reporter_4986, line(jstype_registry_1, 205)).
assign(f_native_types_4989, jstype_registry_1_expr14, line(jstype_registry_1, 206)).
ref(jstype_registry_1_expr16, jstype_registry_1_expr15, line(jstype_registry_1, 206)).
method_invoc(jstype_registry_1_expr16, m_values_4558, line(jstype_registry_1, 206)).
ref(t_jstype_native_15, jstype_registry_1_expr16, line(jstype_registry_1, 206)).
assign(f_names_to_types_4991, jstype_registry_1_expr18, line(jstype_registry_1, 207)).
method_invoc(jstype_registry_1_expr18, m_hash_map_4559, line(jstype_registry_1, 207)).
method_invoc(jstype_registry_1_expr19, m_reset_for_type_check_4560, line(jstype_registry_1, 208)).
assign(f_tolerate_undefined_values_4992, p_tolerate_undefined_values_4987, line(jstype_registry_1, 209)).
param(p_mode_4993, 1, m_set_resolve_mode_4561).
return(f_reporter_4988, m_get_error_reporter_3120, line(jstype_registry_1, 225)).
return(f_tolerate_undefined_values_4992, m_should_tolerate_undefined_values_4563, line(jstype_registry_1, 229)).
method_invoc(jstype_registry_1_expr23, m_clear_4564, line(jstype_registry_1, 236)).
ref(f_types_indexed_by_property_4974, jstype_registry_1_expr23, line(jstype_registry_1, 236)).
method_invoc(jstype_registry_1_expr24, m_clear_4564, line(jstype_registry_1, 237)).
ref(f_each_ref_type_indexed_by_property_4994, jstype_registry_1_expr24, line(jstype_registry_1, 237)).
method_invoc(jstype_registry_1_expr25, m_initialize_built_in_types_4565, line(jstype_registry_1, 238)).
method_invoc(jstype_registry_1_expr26, m_clear_4564, line(jstype_registry_1, 239)).
ref(f_names_to_types_4991, jstype_registry_1_expr26, line(jstype_registry_1, 239)).
method_invoc(jstype_registry_1_expr27, m_clear_917, line(jstype_registry_1, 240)).
ref(f_namespaces_4971, jstype_registry_1_expr27, line(jstype_registry_1, 240)).
method_invoc(jstype_registry_1_expr28, m_initialize_registry_4566, line(jstype_registry_1, 241)).
assign(v_boolean_type_4995, jstype_registry_1_expr29, line(jstype_registry_1, 246)).
method_invoc(jstype_registry_1_expr29, m_boolean_type_4288, line(jstype_registry_1, 246)).
argument(jstype_registry_1_expr30, 1, jstype_registry_1_expr29).
method_invoc(jstype_registry_1_expr31, m_register_native_type_4567, line(jstype_registry_1, 247)).
argument(q_boolean_type_149, 1, jstype_registry_1_expr31).
argument(v_boolean_type_4995, 2, jstype_registry_1_expr31).
ref(t_jstype_native_15, q_boolean_type_149, line(jstype_registry_1, 247)).
assign(v_null_type_4996, jstype_registry_1_expr32, line(jstype_registry_1, 249)).
method_invoc(jstype_registry_1_expr32, m_null_type_4568, line(jstype_registry_1, 249)).
argument(jstype_registry_1_expr33, 1, jstype_registry_1_expr32).
method_invoc(jstype_registry_1_expr34, m_register_native_type_4567, line(jstype_registry_1, 250)).
argument(q_null_type_150, 1, jstype_registry_1_expr34).
argument(v_null_type_4996, 2, jstype_registry_1_expr34).
ref(t_jstype_native_15, q_null_type_150, line(jstype_registry_1, 250)).
assign(v_number_type_4997, jstype_registry_1_expr35, line(jstype_registry_1, 252)).
method_invoc(jstype_registry_1_expr35, m_number_type_4569, line(jstype_registry_1, 252)).
argument(jstype_registry_1_expr36, 1, jstype_registry_1_expr35).
method_invoc(jstype_registry_1_expr37, m_register_native_type_4567, line(jstype_registry_1, 253)).
argument(q_number_type_151, 1, jstype_registry_1_expr37).
argument(v_number_type_4997, 2, jstype_registry_1_expr37).
ref(t_jstype_native_15, q_number_type_151, line(jstype_registry_1, 253)).
assign(v_string_type_4998, jstype_registry_1_expr38, line(jstype_registry_1, 255)).
method_invoc(jstype_registry_1_expr38, m_string_type_4570, line(jstype_registry_1, 255)).
argument(jstype_registry_1_expr39, 1, jstype_registry_1_expr38).
method_invoc(jstype_registry_1_expr40, m_register_native_type_4567, line(jstype_registry_1, 256)).
argument(q_string_type_152, 1, jstype_registry_1_expr40).
argument(v_string_type_4998, 2, jstype_registry_1_expr40).
ref(t_jstype_native_15, q_string_type_152, line(jstype_registry_1, 256)).
assign(v_unknown_type_4999, jstype_registry_1_expr41, line(jstype_registry_1, 258)).
method_invoc(jstype_registry_1_expr41, m_unknown_type_4571, line(jstype_registry_1, 258)).
argument(jstype_registry_1_expr42, 1, jstype_registry_1_expr41).
argument(jstype_registry_1_literal2, 2, jstype_registry_1_expr41).
method_invoc(jstype_registry_1_expr43, m_register_native_type_4567, line(jstype_registry_1, 259)).
argument(q_unknown_type_153, 1, jstype_registry_1_expr43).
argument(v_unknown_type_4999, 2, jstype_registry_1_expr43).
ref(t_jstype_native_15, q_unknown_type_153, line(jstype_registry_1, 259)).
assign(v_checked_unknown_type_5000, jstype_registry_1_expr44, line(jstype_registry_1, 260)).
method_invoc(jstype_registry_1_expr44, m_unknown_type_4571, line(jstype_registry_1, 260)).
argument(jstype_registry_1_expr45, 1, jstype_registry_1_expr44).
argument(jstype_registry_1_literal3, 2, jstype_registry_1_expr44).
method_invoc(jstype_registry_1_expr46, m_register_native_type_4567, line(jstype_registry_1, 261)).
argument(q_checked_unknown_type_154, 1, jstype_registry_1_expr46).
argument(v_checked_unknown_type_5000, 2, jstype_registry_1_expr46).
assign(v_void_type_5001, jstype_registry_1_expr47, line(jstype_registry_1, 264)).
method_invoc(jstype_registry_1_expr47, m_void_type_4572, line(jstype_registry_1, 264)).
argument(jstype_registry_1_expr48, 1, jstype_registry_1_expr47).
method_invoc(jstype_registry_1_expr49, m_register_native_type_4567, line(jstype_registry_1, 265)).
argument(q_void_type_155, 1, jstype_registry_1_expr49).
argument(v_void_type_5001, 2, jstype_registry_1_expr49).
ref(t_jstype_native_15, q_void_type_155, line(jstype_registry_1, 265)).
assign(v_all_type_5002, jstype_registry_1_expr50, line(jstype_registry_1, 267)).
method_invoc(jstype_registry_1_expr50, m_all_type_4256, line(jstype_registry_1, 267)).
argument(jstype_registry_1_expr51, 1, jstype_registry_1_expr50).
method_invoc(jstype_registry_1_expr52, m_register_native_type_4567, line(jstype_registry_1, 268)).
argument(q_all_type_156, 1, jstype_registry_1_expr52).
argument(v_all_type_5002, 2, jstype_registry_1_expr52).
ref(t_jstype_native_15, q_all_type_156, line(jstype_registry_1, 268)).
assign(v_top_level_prototype_5003, jstype_registry_1_expr53, line(jstype_registry_1, 274)).
method_invoc(jstype_registry_1_expr54, m_register_native_type_4567, line(jstype_registry_1, 276)).
argument(q_top_level_prototype_157, 1, jstype_registry_1_expr54).
argument(v_top_level_prototype_5003, 2, jstype_registry_1_expr54).
ref(t_jstype_native_15, q_top_level_prototype_157, line(jstype_registry_1, 276)).
assign(v_object_function_type_5004, jstype_registry_1_expr55, line(jstype_registry_1, 279)).
method_invoc(jstype_registry_1_expr56, m_set_prototype_4367, line(jstype_registry_1, 284)).
argument(v_top_level_prototype_5003, 1, jstype_registry_1_expr56).
argument(jstype_registry_1_literal4, 2, jstype_registry_1_expr56).
ref(v_object_function_type_5004, jstype_registry_1_expr56, line(jstype_registry_1, 284)).
method_invoc(jstype_registry_1_expr57, m_register_native_type_4567, line(jstype_registry_1, 285)).
argument(q_object_function_type_158, 1, jstype_registry_1_expr57).
argument(v_object_function_type_5004, 2, jstype_registry_1_expr57).
ref(t_jstype_native_15, q_object_function_type_158, line(jstype_registry_1, 285)).
assign(v_object_type_5005, jstype_registry_1_expr58, line(jstype_registry_1, 287)).
method_invoc(jstype_registry_1_expr58, m_get_instance_type_1100, line(jstype_registry_1, 287)).
ref(v_object_function_type_5004, jstype_registry_1_expr58, line(jstype_registry_1, 287)).
method_invoc(jstype_registry_1_expr59, m_register_native_type_4567, line(jstype_registry_1, 288)).
argument(q_object_type_159, 1, jstype_registry_1_expr59).
argument(v_object_type_5005, 2, jstype_registry_1_expr59).
ref(t_jstype_native_15, q_object_type_159, line(jstype_registry_1, 288)).
assign(v_object_prototype_5006, jstype_registry_1_expr60, line(jstype_registry_1, 290)).
method_invoc(jstype_registry_1_expr60, m_get_prototype_4364, line(jstype_registry_1, 290)).
ref(v_object_function_type_5004, jstype_registry_1_expr60, line(jstype_registry_1, 290)).
method_invoc(jstype_registry_1_expr61, m_register_native_type_4567, line(jstype_registry_1, 291)).
argument(q_object_prototype_159, 1, jstype_registry_1_expr61).
argument(v_object_prototype_5006, 2, jstype_registry_1_expr61).
ref(t_jstype_native_15, q_object_prototype_159, line(jstype_registry_1, 291)).
assign(v_function_function_type_5007, jstype_registry_1_expr62, line(jstype_registry_1, 294)).
method_invoc(jstype_registry_1_expr63, m_set_prototype_based_on_4369, line(jstype_registry_1, 299)).
argument(v_object_type_5005, 1, jstype_registry_1_expr63).
ref(v_function_function_type_5007, jstype_registry_1_expr63, line(jstype_registry_1, 299)).
method_invoc(jstype_registry_1_expr64, m_register_native_type_4567, line(jstype_registry_1, 300)).
argument(q_function_function_type_160, 1, jstype_registry_1_expr64).
argument(v_function_function_type_5007, 2, jstype_registry_1_expr64).
assign(v_function_prototype_5008, jstype_registry_1_expr65, line(jstype_registry_1, 303)).
method_invoc(jstype_registry_1_expr65, m_get_prototype_4364, line(jstype_registry_1, 303)).
ref(v_function_function_type_5007, jstype_registry_1_expr65, line(jstype_registry_1, 303)).
method_invoc(jstype_registry_1_expr66, m_register_native_type_4567, line(jstype_registry_1, 304)).
argument(q_function_prototype_161, 1, jstype_registry_1_expr66).
argument(v_function_prototype_5008, 2, jstype_registry_1_expr66).
ref(t_jstype_native_15, q_function_prototype_161, line(jstype_registry_1, 304)).
assign(v_no_type_5009, jstype_registry_1_expr67, line(jstype_registry_1, 306)).
method_invoc(jstype_registry_1_expr67, m_no_type_4573, line(jstype_registry_1, 306)).
argument(jstype_registry_1_expr68, 1, jstype_registry_1_expr67).
method_invoc(jstype_registry_1_expr69, m_register_native_type_4567, line(jstype_registry_1, 307)).
argument(q_no_type_162, 1, jstype_registry_1_expr69).
argument(v_no_type_5009, 2, jstype_registry_1_expr69).
ref(t_jstype_native_15, q_no_type_162, line(jstype_registry_1, 307)).
assign(v_no_object_type_5010, jstype_registry_1_expr70, line(jstype_registry_1, 309)).
method_invoc(jstype_registry_1_expr70, m_no_object_type_4574, line(jstype_registry_1, 309)).
argument(jstype_registry_1_expr71, 1, jstype_registry_1_expr70).
method_invoc(jstype_registry_1_expr72, m_register_native_type_4567, line(jstype_registry_1, 310)).
argument(q_no_object_type_163, 1, jstype_registry_1_expr72).
argument(v_no_object_type_5010, 2, jstype_registry_1_expr72).
ref(t_jstype_native_15, q_no_object_type_163, line(jstype_registry_1, 310)).
assign(v_no_resolved_type_5011, jstype_registry_1_expr73, line(jstype_registry_1, 312)).
method_invoc(jstype_registry_1_expr73, m_no_resolved_type_4575, line(jstype_registry_1, 312)).
argument(jstype_registry_1_expr74, 1, jstype_registry_1_expr73).
method_invoc(jstype_registry_1_expr75, m_register_native_type_4567, line(jstype_registry_1, 313)).
argument(q_no_resolved_type_164, 1, jstype_registry_1_expr75).
argument(v_no_resolved_type_5011, 2, jstype_registry_1_expr75).
ref(t_jstype_native_15, q_no_resolved_type_164, line(jstype_registry_1, 313)).
assign(v_array_function_type_5012, jstype_registry_1_expr76, line(jstype_registry_1, 316)).
assign(jstype_registry_1_expr78, jstype_registry_1_expr79, line(jstype_registry_1, 320)).
ref(jstype_registry_1_expr80, jstype_registry_1_expr78, line(jstype_registry_1, 320)).
method_invoc(jstype_registry_1_expr80, m_get_internal_arrow_type_4318, line(jstype_registry_1, 320)).
ref(v_array_function_type_5012, jstype_registry_1_expr80, line(jstype_registry_1, 320)).
assign(v_array_prototype_5013, jstype_registry_1_expr81, line(jstype_registry_1, 323)).
method_invoc(jstype_registry_1_expr81, m_get_prototype_4364, line(jstype_registry_1, 323)).
ref(v_array_function_type_5012, jstype_registry_1_expr81, line(jstype_registry_1, 323)).
method_invoc(jstype_registry_1_expr82, m_register_native_type_4567, line(jstype_registry_1, 324)).
argument(q_array_function_type_165, 1, jstype_registry_1_expr82).
argument(v_array_function_type_5012, 2, jstype_registry_1_expr82).
ref(t_jstype_native_15, q_array_function_type_165, line(jstype_registry_1, 324)).
assign(v_array_type_5014, jstype_registry_1_expr83, line(jstype_registry_1, 326)).
method_invoc(jstype_registry_1_expr83, m_get_instance_type_1100, line(jstype_registry_1, 326)).
ref(v_array_function_type_5012, jstype_registry_1_expr83, line(jstype_registry_1, 326)).
method_invoc(jstype_registry_1_expr84, m_register_native_type_4567, line(jstype_registry_1, 327)).
argument(q_array_type_166, 1, jstype_registry_1_expr84).
argument(v_array_type_5014, 2, jstype_registry_1_expr84).
ref(t_jstype_native_15, q_array_type_166, line(jstype_registry_1, 327)).
assign(v_boolean_object_function_type_5015, jstype_registry_1_expr85, line(jstype_registry_1, 330)).
assign(v_boolean_prototype_5016, jstype_registry_1_expr86, line(jstype_registry_1, 334)).
method_invoc(jstype_registry_1_expr86, m_get_prototype_4364, line(jstype_registry_1, 334)).
ref(v_boolean_object_function_type_5015, jstype_registry_1_expr86, line(jstype_registry_1, 334)).
method_invoc(jstype_registry_1_expr87, m_register_native_type_4567, line(jstype_registry_1, 335)).
argument(q_boolean_object_function_type_167, 1, jstype_registry_1_expr87).
argument(v_boolean_object_function_type_5015, 2, jstype_registry_1_expr87).
assign(v_boolean_object_type_5017, jstype_registry_1_expr88, line(jstype_registry_1, 339)).
method_invoc(jstype_registry_1_expr89, m_register_native_type_4567, line(jstype_registry_1, 341)).
argument(q_boolean_object_type_168, 1, jstype_registry_1_expr89).
argument(v_boolean_object_type_5017, 2, jstype_registry_1_expr89).
ref(t_jstype_native_15, q_boolean_object_type_168, line(jstype_registry_1, 341)).
assign(v_date_function_type_5018, jstype_registry_1_expr90, line(jstype_registry_1, 344)).
assign(v_date_prototype_5019, jstype_registry_1_expr91, line(jstype_registry_1, 351)).
method_invoc(jstype_registry_1_expr91, m_get_prototype_4364, line(jstype_registry_1, 351)).
ref(v_date_function_type_5018, jstype_registry_1_expr91, line(jstype_registry_1, 351)).
method_invoc(jstype_registry_1_expr92, m_register_native_type_4567, line(jstype_registry_1, 352)).
argument(q_date_function_type_169, 1, jstype_registry_1_expr92).
argument(v_date_function_type_5018, 2, jstype_registry_1_expr92).
ref(t_jstype_native_15, q_date_function_type_169, line(jstype_registry_1, 352)).
assign(v_date_type_5020, jstype_registry_1_expr93, line(jstype_registry_1, 354)).
method_invoc(jstype_registry_1_expr93, m_get_instance_type_1100, line(jstype_registry_1, 354)).
ref(v_date_function_type_5018, jstype_registry_1_expr93, line(jstype_registry_1, 354)).
method_invoc(jstype_registry_1_expr94, m_register_native_type_4567, line(jstype_registry_1, 355)).
argument(q_date_type_170, 1, jstype_registry_1_expr94).
argument(v_date_type_5020, 2, jstype_registry_1_expr94).
ref(t_jstype_native_15, q_date_type_170, line(jstype_registry_1, 355)).
assign(v_error_function_type_5021, jstype_registry_1_expr95, line(jstype_registry_1, 358)).
method_invoc(jstype_registry_1_expr95, m_error_function_type_4316, line(jstype_registry_1, 358)).
argument(jstype_registry_1_expr96, 1, jstype_registry_1_expr95).
argument(jstype_registry_1_literal5, 2, jstype_registry_1_expr95).
method_invoc(jstype_registry_1_expr97, m_register_native_type_4567, line(jstype_registry_1, 359)).
argument(q_error_function_type_171, 1, jstype_registry_1_expr97).
argument(v_error_function_type_5021, 2, jstype_registry_1_expr97).
ref(t_jstype_native_15, q_error_function_type_171, line(jstype_registry_1, 359)).
assign(v_error_type_5022, jstype_registry_1_expr98, line(jstype_registry_1, 361)).
method_invoc(jstype_registry_1_expr98, m_get_instance_type_1100, line(jstype_registry_1, 361)).
ref(v_error_function_type_5021, jstype_registry_1_expr98, line(jstype_registry_1, 361)).
method_invoc(jstype_registry_1_expr99, m_register_native_type_4567, line(jstype_registry_1, 362)).
argument(q_error_type_172, 1, jstype_registry_1_expr99).
argument(v_error_type_5022, 2, jstype_registry_1_expr99).
ref(t_jstype_native_15, q_error_type_172, line(jstype_registry_1, 362)).
assign(v_eval_error_function_type_5023, jstype_registry_1_expr100, line(jstype_registry_1, 365)).
method_invoc(jstype_registry_1_expr101, m_set_prototype_based_on_4369, line(jstype_registry_1, 367)).
argument(v_error_type_5022, 1, jstype_registry_1_expr101).
ref(v_eval_error_function_type_5023, jstype_registry_1_expr101, line(jstype_registry_1, 367)).
method_invoc(jstype_registry_1_expr102, m_register_native_type_4567, line(jstype_registry_1, 368)).
argument(q_eval_error_function_type_173, 1, jstype_registry_1_expr102).
argument(v_eval_error_function_type_5023, 2, jstype_registry_1_expr102).
assign(v_eval_error_type_5024, jstype_registry_1_expr103, line(jstype_registry_1, 371)).
method_invoc(jstype_registry_1_expr103, m_get_instance_type_1100, line(jstype_registry_1, 371)).
ref(v_eval_error_function_type_5023, jstype_registry_1_expr103, line(jstype_registry_1, 371)).
method_invoc(jstype_registry_1_expr104, m_register_native_type_4567, line(jstype_registry_1, 372)).
argument(q_eval_error_type_174, 1, jstype_registry_1_expr104).
argument(v_eval_error_type_5024, 2, jstype_registry_1_expr104).
ref(t_jstype_native_15, q_eval_error_type_174, line(jstype_registry_1, 372)).
assign(v_range_error_function_type_5025, jstype_registry_1_expr105, line(jstype_registry_1, 375)).
method_invoc(jstype_registry_1_expr106, m_set_prototype_based_on_4369, line(jstype_registry_1, 377)).
argument(v_error_type_5022, 1, jstype_registry_1_expr106).
ref(v_range_error_function_type_5025, jstype_registry_1_expr106, line(jstype_registry_1, 377)).
method_invoc(jstype_registry_1_expr107, m_register_native_type_4567, line(jstype_registry_1, 378)).
argument(q_range_error_function_type_175, 1, jstype_registry_1_expr107).
argument(v_range_error_function_type_5025, 2, jstype_registry_1_expr107).
assign(v_range_error_type_5026, jstype_registry_1_expr108, line(jstype_registry_1, 381)).
method_invoc(jstype_registry_1_expr108, m_get_instance_type_1100, line(jstype_registry_1, 381)).
ref(v_range_error_function_type_5025, jstype_registry_1_expr108, line(jstype_registry_1, 381)).
method_invoc(jstype_registry_1_expr109, m_register_native_type_4567, line(jstype_registry_1, 382)).
argument(q_range_error_type_176, 1, jstype_registry_1_expr109).
argument(v_range_error_type_5026, 2, jstype_registry_1_expr109).
ref(t_jstype_native_15, q_range_error_type_176, line(jstype_registry_1, 382)).
assign(v_reference_error_function_type_5027, jstype_registry_1_expr110, line(jstype_registry_1, 385)).
method_invoc(jstype_registry_1_expr111, m_set_prototype_based_on_4369, line(jstype_registry_1, 387)).
argument(v_error_type_5022, 1, jstype_registry_1_expr111).
ref(v_reference_error_function_type_5027, jstype_registry_1_expr111, line(jstype_registry_1, 387)).
method_invoc(jstype_registry_1_expr112, m_register_native_type_4567, line(jstype_registry_1, 388)).
argument(q_reference_error_function_type_177, 1, jstype_registry_1_expr112).
argument(v_reference_error_function_type_5027, 2, jstype_registry_1_expr112).
assign(v_reference_error_type_5028, jstype_registry_1_expr113, line(jstype_registry_1, 392)).
method_invoc(jstype_registry_1_expr114, m_register_native_type_4567, line(jstype_registry_1, 394)).
argument(q_reference_error_type_178, 1, jstype_registry_1_expr114).
argument(v_reference_error_type_5028, 2, jstype_registry_1_expr114).
ref(t_jstype_native_15, q_reference_error_type_178, line(jstype_registry_1, 394)).
assign(v_syntax_error_function_type_5029, jstype_registry_1_expr115, line(jstype_registry_1, 397)).
method_invoc(jstype_registry_1_expr116, m_set_prototype_based_on_4369, line(jstype_registry_1, 399)).
argument(v_error_type_5022, 1, jstype_registry_1_expr116).
ref(v_syntax_error_function_type_5029, jstype_registry_1_expr116, line(jstype_registry_1, 399)).
method_invoc(jstype_registry_1_expr117, m_register_native_type_4567, line(jstype_registry_1, 400)).
argument(q_syntax_error_function_type_179, 1, jstype_registry_1_expr117).
argument(v_syntax_error_function_type_5029, 2, jstype_registry_1_expr117).
assign(v_syntax_error_type_5030, jstype_registry_1_expr118, line(jstype_registry_1, 403)).
method_invoc(jstype_registry_1_expr118, m_get_instance_type_1100, line(jstype_registry_1, 403)).
ref(v_syntax_error_function_type_5029, jstype_registry_1_expr118, line(jstype_registry_1, 403)).
method_invoc(jstype_registry_1_expr119, m_register_native_type_4567, line(jstype_registry_1, 404)).
argument(q_syntax_error_type_180, 1, jstype_registry_1_expr119).
argument(v_syntax_error_type_5030, 2, jstype_registry_1_expr119).
ref(t_jstype_native_15, q_syntax_error_type_180, line(jstype_registry_1, 404)).
assign(v_type_error_function_type_5031, jstype_registry_1_expr120, line(jstype_registry_1, 407)).
method_invoc(jstype_registry_1_expr121, m_set_prototype_based_on_4369, line(jstype_registry_1, 409)).
argument(v_error_type_5022, 1, jstype_registry_1_expr121).
ref(v_type_error_function_type_5031, jstype_registry_1_expr121, line(jstype_registry_1, 409)).
method_invoc(jstype_registry_1_expr122, m_register_native_type_4567, line(jstype_registry_1, 410)).
argument(q_type_error_function_type_181, 1, jstype_registry_1_expr122).
argument(v_type_error_function_type_5031, 2, jstype_registry_1_expr122).
assign(v_type_error_type_5032, jstype_registry_1_expr123, line(jstype_registry_1, 413)).
method_invoc(jstype_registry_1_expr123, m_get_instance_type_1100, line(jstype_registry_1, 413)).
ref(v_type_error_function_type_5031, jstype_registry_1_expr123, line(jstype_registry_1, 413)).
method_invoc(jstype_registry_1_expr124, m_register_native_type_4567, line(jstype_registry_1, 414)).
argument(q_type_error_type_182, 1, jstype_registry_1_expr124).
argument(v_type_error_type_5032, 2, jstype_registry_1_expr124).
ref(t_jstype_native_15, q_type_error_type_182, line(jstype_registry_1, 414)).
assign(v_uri_error_function_type_5033, jstype_registry_1_expr125, line(jstype_registry_1, 417)).
method_invoc(jstype_registry_1_expr126, m_set_prototype_based_on_4369, line(jstype_registry_1, 419)).
argument(v_error_type_5022, 1, jstype_registry_1_expr126).
ref(v_uri_error_function_type_5033, jstype_registry_1_expr126, line(jstype_registry_1, 419)).
method_invoc(jstype_registry_1_expr127, m_register_native_type_4567, line(jstype_registry_1, 420)).
argument(q_uri_error_function_type_183, 1, jstype_registry_1_expr127).
argument(v_uri_error_function_type_5033, 2, jstype_registry_1_expr127).
assign(v_uri_error_type_5034, jstype_registry_1_expr128, line(jstype_registry_1, 423)).
method_invoc(jstype_registry_1_expr128, m_get_instance_type_1100, line(jstype_registry_1, 423)).
ref(v_uri_error_function_type_5033, jstype_registry_1_expr128, line(jstype_registry_1, 423)).
method_invoc(jstype_registry_1_expr129, m_register_native_type_4567, line(jstype_registry_1, 424)).
argument(q_uri_error_type_184, 1, jstype_registry_1_expr129).
argument(v_uri_error_type_5034, 2, jstype_registry_1_expr129).
ref(t_jstype_native_15, q_uri_error_type_184, line(jstype_registry_1, 424)).
assign(v_number_object_function_type_5035, jstype_registry_1_expr130, line(jstype_registry_1, 427)).
assign(v_number_prototype_5036, jstype_registry_1_expr131, line(jstype_registry_1, 431)).
method_invoc(jstype_registry_1_expr131, m_get_prototype_4364, line(jstype_registry_1, 431)).
ref(v_number_object_function_type_5035, jstype_registry_1_expr131, line(jstype_registry_1, 431)).
method_invoc(jstype_registry_1_expr132, m_register_native_type_4567, line(jstype_registry_1, 432)).
argument(q_number_object_function_type_185, 1, jstype_registry_1_expr132).
argument(v_number_object_function_type_5035, 2, jstype_registry_1_expr132).
assign(v_number_object_type_5037, jstype_registry_1_expr133, line(jstype_registry_1, 435)).
method_invoc(jstype_registry_1_expr134, m_register_native_type_4567, line(jstype_registry_1, 437)).
argument(q_number_object_type_186, 1, jstype_registry_1_expr134).
argument(v_number_object_type_5037, 2, jstype_registry_1_expr134).
ref(t_jstype_native_15, q_number_object_type_186, line(jstype_registry_1, 437)).
assign(v_regexp_function_type_5038, jstype_registry_1_expr135, line(jstype_registry_1, 440)).
assign(jstype_registry_1_expr137, jstype_registry_1_expr138, line(jstype_registry_1, 444)).
ref(jstype_registry_1_expr139, jstype_registry_1_expr137, line(jstype_registry_1, 444)).
method_invoc(jstype_registry_1_expr139, m_get_internal_arrow_type_4318, line(jstype_registry_1, 444)).
ref(v_regexp_function_type_5038, jstype_registry_1_expr139, line(jstype_registry_1, 444)).
assign(v_regexp_prototype_5039, jstype_registry_1_expr140, line(jstype_registry_1, 447)).
method_invoc(jstype_registry_1_expr140, m_get_prototype_4364, line(jstype_registry_1, 447)).
ref(v_regexp_function_type_5038, jstype_registry_1_expr140, line(jstype_registry_1, 447)).
method_invoc(jstype_registry_1_expr141, m_register_native_type_4567, line(jstype_registry_1, 448)).
argument(q_regexp_function_type_187, 1, jstype_registry_1_expr141).
argument(v_regexp_function_type_5038, 2, jstype_registry_1_expr141).
ref(t_jstype_native_15, q_regexp_function_type_187, line(jstype_registry_1, 448)).
assign(v_regexp_type_5040, jstype_registry_1_expr142, line(jstype_registry_1, 450)).
method_invoc(jstype_registry_1_expr142, m_get_instance_type_1100, line(jstype_registry_1, 450)).
ref(v_regexp_function_type_5038, jstype_registry_1_expr142, line(jstype_registry_1, 450)).
method_invoc(jstype_registry_1_expr143, m_register_native_type_4567, line(jstype_registry_1, 451)).
argument(q_regexp_type_188, 1, jstype_registry_1_expr143).
argument(v_regexp_type_5040, 2, jstype_registry_1_expr143).
ref(t_jstype_native_15, q_regexp_type_188, line(jstype_registry_1, 451)).
assign(v_string_object_function_type_5041, jstype_registry_1_expr144, line(jstype_registry_1, 454)).
assign(v_string_prototype_5042, jstype_registry_1_expr145, line(jstype_registry_1, 458)).
method_invoc(jstype_registry_1_expr145, m_get_prototype_4364, line(jstype_registry_1, 458)).
ref(v_string_object_function_type_5041, jstype_registry_1_expr145, line(jstype_registry_1, 458)).
method_invoc(jstype_registry_1_expr146, m_register_native_type_4567, line(jstype_registry_1, 459)).
argument(q_string_object_function_type_189, 1, jstype_registry_1_expr146).
argument(v_string_object_function_type_5041, 2, jstype_registry_1_expr146).
assign(v_string_object_type_5043, jstype_registry_1_expr147, line(jstype_registry_1, 462)).
method_invoc(jstype_registry_1_expr148, m_register_native_type_4567, line(jstype_registry_1, 464)).
argument(q_string_object_type_190, 1, jstype_registry_1_expr148).
argument(v_string_object_type_5043, 2, jstype_registry_1_expr148).
assign(v_null_void_5044, jstype_registry_1_expr149, line(jstype_registry_1, 468)).
method_invoc(jstype_registry_1_expr150, m_register_native_type_4567, line(jstype_registry_1, 470)).
argument(q_null_void_191, 1, jstype_registry_1_expr150).
argument(v_null_void_5044, 2, jstype_registry_1_expr150).
ref(t_jstype_native_15, q_null_void_191, line(jstype_registry_1, 470)).
assign(v_object_number_string_5045, jstype_registry_1_expr151, line(jstype_registry_1, 473)).
method_invoc(jstype_registry_1_expr152, m_register_native_type_4567, line(jstype_registry_1, 475)).
argument(q_object_number_string_192, 1, jstype_registry_1_expr152).
argument(v_object_number_string_5045, 2, jstype_registry_1_expr152).
ref(t_jstype_native_15, q_object_number_string_192, line(jstype_registry_1, 475)).
assign(v_object_number_string_boolean_5046, jstype_registry_1_expr153, line(jstype_registry_1, 478)).
method_invoc(jstype_registry_1_expr154, m_register_native_type_4567, line(jstype_registry_1, 480)).
argument(q_object_number_string_boolean_193, 1, jstype_registry_1_expr154).
argument(v_object_number_string_boolean_5046, 2, jstype_registry_1_expr154).
ref(t_jstype_native_15, q_object_number_string_boolean_193, line(jstype_registry_1, 480)).
assign(v_number_string_boolean_5047, jstype_registry_1_expr155, line(jstype_registry_1, 484)).
method_invoc(jstype_registry_1_expr156, m_register_native_type_4567, line(jstype_registry_1, 486)).
argument(q_number_string_boolean_194, 1, jstype_registry_1_expr156).
argument(v_number_string_boolean_5047, 2, jstype_registry_1_expr156).
ref(t_jstype_native_15, q_number_string_boolean_194, line(jstype_registry_1, 486)).
assign(v_number_string_5048, jstype_registry_1_expr157, line(jstype_registry_1, 490)).
method_invoc(jstype_registry_1_expr157, m_create_union_type_4576, line(jstype_registry_1, 490)).
argument(v_number_type_4997, 1, jstype_registry_1_expr157).
argument(v_string_type_4998, 2, jstype_registry_1_expr157).
method_invoc(jstype_registry_1_expr158, m_register_native_type_4567, line(jstype_registry_1, 491)).
argument(q_number_string_195, 1, jstype_registry_1_expr158).
argument(v_number_string_5048, 2, jstype_registry_1_expr158).
ref(t_jstype_native_15, q_number_string_195, line(jstype_registry_1, 491)).
assign(v_string_value_or_object_type_5049, jstype_registry_1_expr159, line(jstype_registry_1, 496)).
method_invoc(jstype_registry_1_expr160, m_register_native_type_4567, line(jstype_registry_1, 498)).
argument(q_string_value_or_object_type_196, 1, jstype_registry_1_expr160).
argument(v_string_value_or_object_type_5049, 2, jstype_registry_1_expr160).
assign(v_number_value_or_object_type_5050, jstype_registry_1_expr161, line(jstype_registry_1, 502)).
method_invoc(jstype_registry_1_expr162, m_register_native_type_4567, line(jstype_registry_1, 504)).
argument(q_number_value_or_object_type_197, 1, jstype_registry_1_expr162).
argument(v_number_value_or_object_type_5050, 2, jstype_registry_1_expr162).
assign(v_u2u_function_type_5051, jstype_registry_1_expr163, line(jstype_registry_1, 508)).
method_invoc(jstype_registry_1_expr164, m_register_native_type_4567, line(jstype_registry_1, 510)).
argument(q_u2u_function_type_198, 1, jstype_registry_1_expr164).
argument(v_u2u_function_type_5051, 2, jstype_registry_1_expr164).
ref(t_jstype_native_15, q_u2u_function_type_198, line(jstype_registry_1, 510)).
assign(v_u2u_constructor_type_5052, jstype_registry_1_expr165, line(jstype_registry_1, 514)).
method_invoc(jstype_registry_1_expr165, m__4577, line(jstype_registry_1, 519)).
argument(jstype_registry_1_expr166, 1, jstype_registry_1_expr165).
argument(jstype_registry_1_literal6, 2, jstype_registry_1_expr165).
argument(jstype_registry_1_literal7, 3, jstype_registry_1_expr165).
argument(jstype_registry_1_expr167, 4, jstype_registry_1_expr165).
argument(v_unknown_type_4999, 5, jstype_registry_1_expr165).
argument(jstype_registry_1_literal8, 6, jstype_registry_1_expr165).
argument(jstype_registry_1_literal9, 7, jstype_registry_1_expr165).
argument(jstype_registry_1_literal10, 8, jstype_registry_1_expr165).
method_invoc(jstype_registry_1_expr168, m_register_native_type_4567, line(jstype_registry_1, 534)).
argument(q_u2u_constructor_type_199, 1, jstype_registry_1_expr168).
argument(v_u2u_constructor_type_5052, 2, jstype_registry_1_expr168).
ref(t_jstype_native_15, q_u2u_constructor_type_199, line(jstype_registry_1, 534)).
method_invoc(jstype_registry_1_expr169, m_register_native_type_4567, line(jstype_registry_1, 535)).
argument(q_function_instance_type_200, 1, jstype_registry_1_expr169).
argument(v_u2u_constructor_type_5052, 2, jstype_registry_1_expr169).
method_invoc(jstype_registry_1_expr170, m_set_instance_type_4404, line(jstype_registry_1, 538)).
argument(v_u2u_constructor_type_5052, 1, jstype_registry_1_expr170).
ref(v_function_function_type_5007, jstype_registry_1_expr170, line(jstype_registry_1, 538)).
method_invoc(jstype_registry_1_expr171, m_set_implicit_prototype_4579, line(jstype_registry_1, 539)).
argument(v_function_prototype_5008, 1, jstype_registry_1_expr171).
ref(v_u2u_constructor_type_5052, jstype_registry_1_expr171, line(jstype_registry_1, 539)).
assign(v_least_function_type_5053, jstype_registry_1_expr172, line(jstype_registry_1, 542)).
method_invoc(jstype_registry_1_expr173, m_register_native_type_4567, line(jstype_registry_1, 544)).
argument(q_least_function_type_201, 1, jstype_registry_1_expr173).
argument(v_least_function_type_5053, 2, jstype_registry_1_expr173).
ref(t_jstype_native_15, q_least_function_type_201, line(jstype_registry_1, 544)).
assign(v_global_this_ctor_5054, jstype_registry_1_expr174, line(jstype_registry_1, 547)).
assign(v_global_this_5055, jstype_registry_1_expr175, line(jstype_registry_1, 551)).
method_invoc(jstype_registry_1_expr175, m_get_instance_type_1100, line(jstype_registry_1, 551)).
ref(v_global_this_ctor_5054, jstype_registry_1_expr175, line(jstype_registry_1, 551)).
method_invoc(jstype_registry_1_expr176, m_register_native_type_4567, line(jstype_registry_1, 552)).
argument(q_global_this_202, 1, jstype_registry_1_expr176).
argument(v_global_this_5055, 2, jstype_registry_1_expr176).
ref(t_jstype_native_15, q_global_this_202, line(jstype_registry_1, 552)).
assign(v_greatest_function_type_5056, jstype_registry_1_expr177, line(jstype_registry_1, 555)).
method_invoc(jstype_registry_1_expr178, m_register_native_type_4567, line(jstype_registry_1, 557)).
argument(q_greatest_function_type_203, 1, jstype_registry_1_expr178).
argument(v_greatest_function_type_5056, 2, jstype_registry_1_expr178).
ref(t_jstype_native_15, q_greatest_function_type_203, line(jstype_registry_1, 557)).
method_invoc(jstype_registry_1_expr179, m_register_property_on_type_4580, line(jstype_registry_1, 562)).
argument(jstype_registry_1_literal11, 1, jstype_registry_1_expr179).
argument(v_object_function_type_5004, 2, jstype_registry_1_expr179).
method_invoc(jstype_registry_1_expr180, m_register_4581, line(jstype_registry_1, 566)).
argument(jstype_registry_1_expr181, 1, jstype_registry_1_expr180).
method_invoc(jstype_registry_1_expr181, m_get_native_type_1094, line(jstype_registry_1, 566)).
argument(q_array_type_204, 1, jstype_registry_1_expr181).
ref(t_jstype_native_15, q_array_type_204, line(jstype_registry_1, 566)).
method_invoc(jstype_registry_1_expr182, m_register_4581, line(jstype_registry_1, 567)).
argument(jstype_registry_1_expr183, 1, jstype_registry_1_expr182).
method_invoc(jstype_registry_1_expr183, m_get_native_type_1094, line(jstype_registry_1, 567)).
argument(q_boolean_object_type_204, 1, jstype_registry_1_expr183).
ref(t_jstype_native_15, q_boolean_object_type_204, line(jstype_registry_1, 567)).
method_invoc(jstype_registry_1_expr184, m_register_4581, line(jstype_registry_1, 568)).
argument(jstype_registry_1_expr185, 1, jstype_registry_1_expr184).
method_invoc(jstype_registry_1_expr185, m_get_native_type_1094, line(jstype_registry_1, 568)).
argument(q_boolean_type_204, 1, jstype_registry_1_expr185).
ref(t_jstype_native_15, q_boolean_type_204, line(jstype_registry_1, 568)).
method_invoc(jstype_registry_1_expr186, m_register_4581, line(jstype_registry_1, 569)).
argument(jstype_registry_1_expr187, 1, jstype_registry_1_expr186).
method_invoc(jstype_registry_1_expr187, m_get_native_type_1094, line(jstype_registry_1, 569)).
argument(q_date_type_204, 1, jstype_registry_1_expr187).
ref(t_jstype_native_15, q_date_type_204, line(jstype_registry_1, 569)).
method_invoc(jstype_registry_1_expr188, m_register_4581, line(jstype_registry_1, 570)).
argument(jstype_registry_1_expr189, 1, jstype_registry_1_expr188).
method_invoc(jstype_registry_1_expr189, m_get_native_type_1094, line(jstype_registry_1, 570)).
argument(q_null_type_204, 1, jstype_registry_1_expr189).
ref(t_jstype_native_15, q_null_type_204, line(jstype_registry_1, 570)).
method_invoc(jstype_registry_1_expr190, m_register_4582, line(jstype_registry_1, 571)).
argument(jstype_registry_1_expr191, 1, jstype_registry_1_expr190).
argument(jstype_registry_1_literal12, 2, jstype_registry_1_expr190).
method_invoc(jstype_registry_1_expr191, m_get_native_type_1094, line(jstype_registry_1, 571)).
argument(q_null_type_204, 1, jstype_registry_1_expr191).
ref(t_jstype_native_15, q_null_type_204, line(jstype_registry_1, 571)).
method_invoc(jstype_registry_1_expr192, m_register_4581, line(jstype_registry_1, 572)).
argument(jstype_registry_1_expr193, 1, jstype_registry_1_expr192).
method_invoc(jstype_registry_1_expr193, m_get_native_type_1094, line(jstype_registry_1, 572)).
argument(q_number_object_type_204, 1, jstype_registry_1_expr193).
ref(t_jstype_native_15, q_number_object_type_204, line(jstype_registry_1, 572)).
method_invoc(jstype_registry_1_expr194, m_register_4581, line(jstype_registry_1, 573)).
argument(jstype_registry_1_expr195, 1, jstype_registry_1_expr194).
method_invoc(jstype_registry_1_expr195, m_get_native_type_1094, line(jstype_registry_1, 573)).
argument(q_number_type_204, 1, jstype_registry_1_expr195).
ref(t_jstype_native_15, q_number_type_204, line(jstype_registry_1, 573)).
method_invoc(jstype_registry_1_expr196, m_register_4581, line(jstype_registry_1, 574)).
argument(jstype_registry_1_expr197, 1, jstype_registry_1_expr196).
method_invoc(jstype_registry_1_expr197, m_get_native_type_1094, line(jstype_registry_1, 574)).
argument(q_object_type_204, 1, jstype_registry_1_expr197).
ref(t_jstype_native_15, q_object_type_204, line(jstype_registry_1, 574)).
method_invoc(jstype_registry_1_expr198, m_register_4581, line(jstype_registry_1, 575)).
argument(jstype_registry_1_expr199, 1, jstype_registry_1_expr198).
method_invoc(jstype_registry_1_expr199, m_get_native_type_1094, line(jstype_registry_1, 575)).
argument(q_error_type_204, 1, jstype_registry_1_expr199).
ref(t_jstype_native_15, q_error_type_204, line(jstype_registry_1, 575)).
method_invoc(jstype_registry_1_expr200, m_register_4581, line(jstype_registry_1, 576)).
argument(jstype_registry_1_expr201, 1, jstype_registry_1_expr200).
method_invoc(jstype_registry_1_expr201, m_get_native_type_1094, line(jstype_registry_1, 576)).
argument(q_uri_error_type_204, 1, jstype_registry_1_expr201).
ref(t_jstype_native_15, q_uri_error_type_204, line(jstype_registry_1, 576)).
method_invoc(jstype_registry_1_expr202, m_register_4581, line(jstype_registry_1, 577)).
argument(jstype_registry_1_expr203, 1, jstype_registry_1_expr202).
method_invoc(jstype_registry_1_expr203, m_get_native_type_1094, line(jstype_registry_1, 577)).
argument(q_eval_error_type_204, 1, jstype_registry_1_expr203).
ref(t_jstype_native_15, q_eval_error_type_204, line(jstype_registry_1, 577)).
method_invoc(jstype_registry_1_expr204, m_register_4581, line(jstype_registry_1, 578)).
argument(jstype_registry_1_expr205, 1, jstype_registry_1_expr204).
method_invoc(jstype_registry_1_expr205, m_get_native_type_1094, line(jstype_registry_1, 578)).
argument(q_type_error_type_204, 1, jstype_registry_1_expr205).
ref(t_jstype_native_15, q_type_error_type_204, line(jstype_registry_1, 578)).
method_invoc(jstype_registry_1_expr206, m_register_4581, line(jstype_registry_1, 579)).
argument(jstype_registry_1_expr207, 1, jstype_registry_1_expr206).
method_invoc(jstype_registry_1_expr207, m_get_native_type_1094, line(jstype_registry_1, 579)).
argument(q_range_error_type_204, 1, jstype_registry_1_expr207).
ref(t_jstype_native_15, q_range_error_type_204, line(jstype_registry_1, 579)).
method_invoc(jstype_registry_1_expr208, m_register_4581, line(jstype_registry_1, 580)).
argument(jstype_registry_1_expr209, 1, jstype_registry_1_expr208).
method_invoc(jstype_registry_1_expr209, m_get_native_type_1094, line(jstype_registry_1, 580)).
argument(q_reference_error_type_204, 1, jstype_registry_1_expr209).
ref(t_jstype_native_15, q_reference_error_type_204, line(jstype_registry_1, 580)).
method_invoc(jstype_registry_1_expr210, m_register_4581, line(jstype_registry_1, 581)).
argument(jstype_registry_1_expr211, 1, jstype_registry_1_expr210).
method_invoc(jstype_registry_1_expr211, m_get_native_type_1094, line(jstype_registry_1, 581)).
argument(q_syntax_error_type_204, 1, jstype_registry_1_expr211).
ref(t_jstype_native_15, q_syntax_error_type_204, line(jstype_registry_1, 581)).
method_invoc(jstype_registry_1_expr212, m_register_4581, line(jstype_registry_1, 582)).
argument(jstype_registry_1_expr213, 1, jstype_registry_1_expr212).
method_invoc(jstype_registry_1_expr213, m_get_native_type_1094, line(jstype_registry_1, 582)).
argument(q_regexp_type_204, 1, jstype_registry_1_expr213).
ref(t_jstype_native_15, q_regexp_type_204, line(jstype_registry_1, 582)).
method_invoc(jstype_registry_1_expr214, m_register_4581, line(jstype_registry_1, 583)).
argument(jstype_registry_1_expr215, 1, jstype_registry_1_expr214).
method_invoc(jstype_registry_1_expr215, m_get_native_type_1094, line(jstype_registry_1, 583)).
argument(q_string_object_type_204, 1, jstype_registry_1_expr215).
ref(t_jstype_native_15, q_string_object_type_204, line(jstype_registry_1, 583)).
method_invoc(jstype_registry_1_expr216, m_register_4581, line(jstype_registry_1, 584)).
argument(jstype_registry_1_expr217, 1, jstype_registry_1_expr216).
method_invoc(jstype_registry_1_expr217, m_get_native_type_1094, line(jstype_registry_1, 584)).
argument(q_string_type_204, 1, jstype_registry_1_expr217).
ref(t_jstype_native_15, q_string_type_204, line(jstype_registry_1, 584)).
method_invoc(jstype_registry_1_expr218, m_register_4581, line(jstype_registry_1, 585)).
argument(jstype_registry_1_expr219, 1, jstype_registry_1_expr218).
method_invoc(jstype_registry_1_expr219, m_get_native_type_1094, line(jstype_registry_1, 585)).
argument(q_void_type_204, 1, jstype_registry_1_expr219).
ref(t_jstype_native_15, q_void_type_204, line(jstype_registry_1, 585)).
method_invoc(jstype_registry_1_expr220, m_register_4582, line(jstype_registry_1, 586)).
argument(jstype_registry_1_expr221, 1, jstype_registry_1_expr220).
argument(jstype_registry_1_literal13, 2, jstype_registry_1_expr220).
method_invoc(jstype_registry_1_expr221, m_get_native_type_1094, line(jstype_registry_1, 586)).
argument(q_void_type_204, 1, jstype_registry_1_expr221).
ref(t_jstype_native_15, q_void_type_204, line(jstype_registry_1, 586)).
method_invoc(jstype_registry_1_expr222, m_register_4582, line(jstype_registry_1, 587)).
argument(jstype_registry_1_expr223, 1, jstype_registry_1_expr222).
argument(jstype_registry_1_literal14, 2, jstype_registry_1_expr222).
method_invoc(jstype_registry_1_expr223, m_get_native_type_1094, line(jstype_registry_1, 587)).
argument(q_void_type_204, 1, jstype_registry_1_expr223).
ref(t_jstype_native_15, q_void_type_204, line(jstype_registry_1, 587)).
method_invoc(jstype_registry_1_expr224, m_register_4582, line(jstype_registry_1, 588)).
argument(jstype_registry_1_expr225, 1, jstype_registry_1_expr224).
argument(jstype_registry_1_literal15, 2, jstype_registry_1_expr224).
method_invoc(jstype_registry_1_expr225, m_get_native_type_1094, line(jstype_registry_1, 588)).
argument(q_function_instance_type_204, 1, jstype_registry_1_expr225).
ref(t_jstype_native_15, q_function_instance_type_204, line(jstype_registry_1, 588)).
param(p_type_5057, 1, m_register_4581).
method_invoc(jstype_registry_1_expr226, m_register_4582, line(jstype_registry_1, 592)).
argument(p_type_5057, 1, jstype_registry_1_expr226).
argument(jstype_registry_1_expr227, 2, jstype_registry_1_expr226).
method_invoc(jstype_registry_1_expr227, m_to_string_4551, line(jstype_registry_1, 592)).
ref(p_type_5057, jstype_registry_1_expr227, line(jstype_registry_1, 592)).
param(p_type_5058, 1, m_register_4582).
param(p_name_5059, 2, m_register_4582).
method_invoc(jstype_registry_1_expr228, m_check_argument_4059, line(jstype_registry_1, 596)).
argument(jstype_registry_1_expr229, 1, jstype_registry_1_expr228).
argument(jstype_registry_1_literal16, 2, jstype_registry_1_expr228).
ref(t_preconditions_19, jstype_registry_1_expr228, line(jstype_registry_1, 596)).
method_invoc(jstype_registry_1_expr230, m_put_395, line(jstype_registry_1, 599)).
argument(p_name_5059, 1, jstype_registry_1_expr230).
argument(p_type_5058, 2, jstype_registry_1_expr230).
ref(f_names_to_types_4991, jstype_registry_1_expr230, line(jstype_registry_1, 599)).
method_invoc(jstype_registry_1_expr232, m_index_of_4583, line(jstype_registry_1, 602)).
argument(jstype_registry_1_literal17, 1, jstype_registry_1_expr232).
ref(p_name_5059, jstype_registry_1_expr232, line(jstype_registry_1, 602)).
param(p_type_id_5060, 1, m_register_native_type_4567).
param(p_type_5061, 2, m_register_native_type_4567).
assign(jstype_registry_1_expr234, p_type_5061, line(jstype_registry_1, 609)).
ref(f_native_types_4989, jstype_registry_1_expr234, line(jstype_registry_1, 609)).
method_invoc(jstype_registry_1_expr235, m_ordinal_4584, line(jstype_registry_1, 609)).
ref(p_type_id_5060, jstype_registry_1_expr235, line(jstype_registry_1, 609)).
param(p_property_name_5062, 1, m_register_property_on_type_4580).
param(p_type_5063, 2, m_register_property_on_type_4580).
assign(v_type_set_5064, jstype_registry_1_expr236, line(jstype_registry_1, 625)).
method_invoc(jstype_registry_1_expr236, m_get_390, line(jstype_registry_1, 625)).
argument(p_property_name_5062, 1, jstype_registry_1_expr236).
ref(f_types_indexed_by_property_4974, jstype_registry_1_expr236, line(jstype_registry_1, 625)).
assign(v_type_set_5064, jstype_registry_1_expr239, line(jstype_registry_1, 627)).
method_invoc(jstype_registry_1_expr239, m_union_type_builder_4585, line(jstype_registry_1, 627)).
argument(jstype_registry_1_expr240, 1, jstype_registry_1_expr239).
argument(f_property_checking_union_size_5065, 2, jstype_registry_1_expr239).
method_invoc(jstype_registry_1_expr241, m_put_395, line(jstype_registry_1, 628)).
argument(p_property_name_5062, 1, jstype_registry_1_expr241).
argument(v_type_set_5064, 2, jstype_registry_1_expr241).
ref(f_types_indexed_by_property_4974, jstype_registry_1_expr241, line(jstype_registry_1, 628)).
method_invoc(jstype_registry_1_expr242, m_add_alternate_4586, line(jstype_registry_1, 631)).
argument(p_type_5063, 1, jstype_registry_1_expr242).
ref(v_type_set_5064, jstype_registry_1_expr242, line(jstype_registry_1, 631)).
method_invoc(jstype_registry_1_expr243, m_add_reference_type_indexed_by_property_4587, line(jstype_registry_1, 632)).
argument(p_property_name_5062, 1, jstype_registry_1_expr243).
argument(p_type_5063, 2, jstype_registry_1_expr243).
method_invoc(jstype_registry_1_expr244, m_remove_4588, line(jstype_registry_1, 635)).
argument(p_property_name_5062, 1, jstype_registry_1_expr244).
ref(f_greatest_subtype_by_property_4975, jstype_registry_1_expr244, line(jstype_registry_1, 635)).
param(p_property_name_5066, 1, m_add_reference_type_indexed_by_property_4587).
param(p_type_5067, 2, m_add_reference_type_indexed_by_property_4587).
method_invoc(jstype_registry_1_expr247, m_has_reference_name_4371, line(jstype_registry_1, 640)).
ref(jstype_registry_1_expr248, jstype_registry_1_expr247, line(jstype_registry_1, 640)).
assign(jstype_registry_1_expr248, jstype_registry_1_expr249, line(jstype_registry_1, 640)).
assign(jstype_registry_1_expr249, p_type_5067, line(jstype_registry_1, 640)).
assign(v_type_set_5068, jstype_registry_1_expr250, line(jstype_registry_1, 641)).
assign(v_type_set_5068, jstype_registry_1_expr253, line(jstype_registry_1, 644)).
method_invoc(jstype_registry_1_expr253, m_new_hash_map_422, line(jstype_registry_1, 644)).
ref(t_maps_17, jstype_registry_1_expr253, line(jstype_registry_1, 644)).
method_invoc(jstype_registry_1_expr254, m_put_395, line(jstype_registry_1, 645)).
argument(p_property_name_5066, 1, jstype_registry_1_expr254).
argument(v_type_set_5068, 2, jstype_registry_1_expr254).
ref(f_each_ref_type_indexed_by_property_4994, jstype_registry_1_expr254, line(jstype_registry_1, 645)).
assign(v_obj_type_5069, jstype_registry_1_expr255, line(jstype_registry_1, 647)).
assign(jstype_registry_1_expr255, p_type_5067, line(jstype_registry_1, 647)).
method_invoc(jstype_registry_1_expr256, m_put_395, line(jstype_registry_1, 648)).
argument(jstype_registry_1_expr257, 1, jstype_registry_1_expr256).
argument(v_obj_type_5069, 2, jstype_registry_1_expr256).
ref(v_type_set_5068, jstype_registry_1_expr256, line(jstype_registry_1, 648)).
method_invoc(jstype_registry_1_expr257, m_get_reference_name_3139, line(jstype_registry_1, 648)).
ref(v_obj_type_5069, jstype_registry_1_expr257, line(jstype_registry_1, 648)).
param(p_property_name_5070, 1, m_unregister_property_on_type_4589).
param(p_type_5071, 2, m_unregister_property_on_type_4589).
param(p_type_5072, 1, m_get_greatest_subtype_with_property_4590).
param(p_property_name_5073, 2, m_get_greatest_subtype_with_property_4590).
param(p_type_5074, 1, m_can_property_be_defined_4591).
param(p_property_name_5075, 2, m_can_property_be_defined_4591).
param(p_property_name_5076, 1, m_get_types_with_property_4592).
param(p_property_name_5077, 1, m_get_each_reference_type_with_property_4593).
param(p_a_5078, 1, m_find_common_super_object_4594).
param(p_b_5079, 2, m_find_common_super_object_4594).
param(p_a_5080, 1, m_get_super_stack_4595).
return(f_last_generation_4979, m_is_last_generation_4597, line(jstype_registry_1, 796)).
param(p_last_generation_5081, 1, m_set_last_generation_4598).
param(p_type_5082, 1, m_register_type_implementing_interface_4599).
param(p_interface_instance_5083, 2, m_register_type_implementing_interface_4599).
param(p_interface_instance_5084, 1, m_get_direct_implementors_4600).
param(p_name_5085, 1, m_declare_type_1099).
param(p_t_5086, 2, m_declare_type_1099).
method_invoc(jstype_registry_1_expr259, m_contains_key_818, line(jstype_registry_1, 838)).
argument(p_name_5085, 1, jstype_registry_1_expr259).
ref(f_names_to_types_4991, jstype_registry_1_expr259, line(jstype_registry_1, 838)).
method_invoc(jstype_registry_1_expr260, m_register_4582, line(jstype_registry_1, 841)).
argument(p_t_5086, 1, jstype_registry_1_expr260).
argument(p_name_5085, 2, jstype_registry_1_expr260).
return(jstype_registry_1_literal21, m_declare_type_1099, line(jstype_registry_1, 842)).
param(p_name_5087, 1, m_overwrite_declared_type_4601).
param(p_t_5088, 2, m_overwrite_declared_type_4601).
param(p_name_5089, 1, m_forward_declare_type_4602).
param(p_name_5090, 1, m_is_forward_declared_type_4603).
return(jstype_registry_1_expr261, m_is_forward_declared_type_4603, line(jstype_registry_1, 866)).
method_invoc(jstype_registry_1_expr261, m_contains_961, line(jstype_registry_1, 866)).
argument(p_name_5090, 1, jstype_registry_1_expr261).
ref(f_forward_declared_types_4973, jstype_registry_1_expr261, line(jstype_registry_1, 866)).
param(p_name_5091, 1, m_has_namespace_4604).
param(p_js_type_name_5092, 1, m_get_type_4605).
assign(v_template_type_5093, jstype_registry_1_expr262, line(jstype_registry_1, 883)).
method_invoc(jstype_registry_1_expr262, m_get_390, line(jstype_registry_1, 883)).
argument(p_js_type_name_5092, 1, jstype_registry_1_expr262).
ref(f_template_types_4980, jstype_registry_1_expr262, line(jstype_registry_1, 883)).
return(jstype_registry_1_expr264, m_get_type_4605, line(jstype_registry_1, 887)).
method_invoc(jstype_registry_1_expr264, m_get_390, line(jstype_registry_1, 887)).
argument(p_js_type_name_5092, 1, jstype_registry_1_expr264).
ref(f_names_to_types_4991, jstype_registry_1_expr264, line(jstype_registry_1, 887)).
param(p_type_id_5094, 1, m_get_native_type_1094).
return(jstype_registry_1_expr265, m_get_native_type_1094, line(jstype_registry_1, 891)).
ref(f_native_types_4989, jstype_registry_1_expr265, line(jstype_registry_1, 891)).
method_invoc(jstype_registry_1_expr266, m_ordinal_4584, line(jstype_registry_1, 891)).
ref(p_type_id_5094, jstype_registry_1_expr266, line(jstype_registry_1, 891)).
param(p_type_id_5095, 1, m_get_native_object_type_3010).
return(jstype_registry_1_expr267, m_get_native_object_type_3010, line(jstype_registry_1, 895)).
assign(jstype_registry_1_expr267, jstype_registry_1_expr268, line(jstype_registry_1, 895)).
method_invoc(jstype_registry_1_expr268, m_get_native_type_1094, line(jstype_registry_1, 895)).
argument(p_type_id_5095, 1, jstype_registry_1_expr268).
param(p_type_id_5096, 1, m_get_native_function_type_3137).
return(jstype_registry_1_expr269, m_get_native_function_type_3137, line(jstype_registry_1, 899)).
assign(jstype_registry_1_expr269, jstype_registry_1_expr270, line(jstype_registry_1, 899)).
method_invoc(jstype_registry_1_expr270, m_get_native_type_1094, line(jstype_registry_1, 899)).
argument(p_type_id_5096, 1, jstype_registry_1_expr270).
param(p_scope_5097, 1, m_get_type_4606).
param(p_js_type_name_5098, 2, m_get_type_4606).
param(p_source_name_5099, 3, m_get_type_4606).
param(p_lineno_5100, 4, m_get_type_4606).
param(p_charno_5101, 5, m_get_type_4606).
assign(v_type_5102, jstype_registry_1_expr271, line(jstype_registry_1, 916)).
method_invoc(jstype_registry_1_expr271, m_get_type_4605, line(jstype_registry_1, 916)).
argument(p_js_type_name_5098, 1, jstype_registry_1_expr271).
assign(v_named_type_5103, jstype_registry_1_expr273, line(jstype_registry_1, 920)).
method_invoc(jstype_registry_1_expr274, m_put_4607, line(jstype_registry_1, 922)).
argument(p_scope_5097, 1, jstype_registry_1_expr274).
argument(v_named_type_5103, 2, jstype_registry_1_expr274).
ref(f_unresolved_named_types_4977, jstype_registry_1_expr274, line(jstype_registry_1, 922)).
assign(v_type_5102, v_named_type_5103, line(jstype_registry_1, 923)).
return(v_type_5102, m_get_type_4606, line(jstype_registry_1, 925)).
param(p_scope_5104, 1, m_resolve_types_in_scope_3073).
ref(jstype_registry_1_expr276, jstype_registry_1_stmt205, line(jstype_registry_1, 942)).
method_invoc(jstype_registry_1_expr276, m_get_4609, line(jstype_registry_1, 942)).
argument(p_scope_5104, 1, jstype_registry_1_expr276).
ref(f_unresolved_named_types_4977, jstype_registry_1_expr276, line(jstype_registry_1, 942)).
method_invoc(jstype_registry_1_expr277, m_resolve_1626, line(jstype_registry_1, 943)).
argument(f_reporter_4988, 1, jstype_registry_1_expr277).
argument(p_scope_5104, 2, jstype_registry_1_expr277).
ref(v_type_5105, jstype_registry_1_expr277, line(jstype_registry_1, 943)).
method_invoc(jstype_registry_1_expr278, m_put_all_4610, line(jstype_registry_1, 946)).
argument(p_scope_5104, 1, jstype_registry_1_expr278).
argument(jstype_registry_1_expr279, 2, jstype_registry_1_expr278).
ref(f_resolved_named_types_4978, jstype_registry_1_expr278, line(jstype_registry_1, 946)).
method_invoc(jstype_registry_1_expr279, m_remove_all_4611, line(jstype_registry_1, 946)).
argument(p_scope_5104, 1, jstype_registry_1_expr279).
ref(f_unresolved_named_types_4977, jstype_registry_1_expr279, line(jstype_registry_1, 946)).
method_invoc(jstype_registry_1_expr283, m_get_parent_scope_4612, line(jstype_registry_1, 948)).
ref(p_scope_5104, jstype_registry_1_expr283, line(jstype_registry_1, 948)).
assign(v_global_this_5106, jstype_registry_1_expr284, line(jstype_registry_1, 952)).
assign(jstype_registry_1_expr284, jstype_registry_1_expr285, line(jstype_registry_1, 952)).
method_invoc(jstype_registry_1_expr285, m_get_native_type_1094, line(jstype_registry_1, 952)).
argument(q_global_this_204, 1, jstype_registry_1_expr285).
assign(v_window_type_5107, jstype_registry_1_expr286, line(jstype_registry_1, 954)).
method_invoc(jstype_registry_1_expr286, m_get_type_4605, line(jstype_registry_1, 954)).
argument(jstype_registry_1_literal26, 1, jstype_registry_1_expr286).
method_invoc(jstype_registry_1_expr287, m_is_unknown_type_4613, line(jstype_registry_1, 955)).
ref(v_global_this_5106, jstype_registry_1_expr287, line(jstype_registry_1, 955)).
param(p_type_5108, 1, m_create_optional_type_4339).
method_invoc(jstype_registry_1_expr290, m_is_all_type_4472, line(jstype_registry_1, 972)).
ref(p_type_5108, jstype_registry_1_expr290, line(jstype_registry_1, 972)).
return(p_type_5108, m_create_optional_type_4339, line(jstype_registry_1, 973)).
param(p_type_5109, 1, m_create_default_object_union_4614).
method_invoc(jstype_registry_1_expr291, m_is_template_type_4489, line(jstype_registry_1, 984)).
ref(p_type_5109, jstype_registry_1_expr291, line(jstype_registry_1, 984)).
return(jstype_registry_1_expr292, m_create_default_object_union_4614, line(jstype_registry_1, 989)).
cond_expr(jstype_registry_1_expr293, jstype_registry_1_expr294, jstype_registry_1_expr295, line(jstype_registry_1, 989)).
method_invoc(jstype_registry_1_expr293, m_should_tolerate_undefined_values_4563, line(jstype_registry_1, 989)).
param(p_type_5110, 1, m_create_nullable_type_4615).
return(jstype_registry_1_expr296, m_create_nullable_type_4615, line(jstype_registry_1, 1000)).
method_invoc(jstype_registry_1_expr296, m_create_union_type_4576, line(jstype_registry_1, 1000)).
argument(p_type_5110, 1, jstype_registry_1_expr296).
argument(jstype_registry_1_expr297, 2, jstype_registry_1_expr296).
method_invoc(jstype_registry_1_expr297, m_get_native_type_1094, line(jstype_registry_1, 1000)).
argument(q_null_type_204, 1, jstype_registry_1_expr297).
ref(t_jstype_native_15, q_null_type_204, line(jstype_registry_1, 1000)).
param(p_type_5111, 1, m_create_optional_nullable_type_4616).
param(p_variants_5112, 1, m_create_union_type_4576).
assign(v_builder_5113, jstype_registry_1_expr298, line(jstype_registry_1, 1016)).
method_invoc(jstype_registry_1_expr298, m_union_type_builder_4617, line(jstype_registry_1, 1016)).
argument(jstype_registry_1_expr299, 1, jstype_registry_1_expr298).
ref(p_variants_5112, jstype_registry_1_stmt218, line(jstype_registry_1, 1017)).
method_invoc(jstype_registry_1_expr300, m_add_alternate_4586, line(jstype_registry_1, 1018)).
argument(v_type_5114, 1, jstype_registry_1_expr300).
ref(v_builder_5113, jstype_registry_1_expr300, line(jstype_registry_1, 1018)).
return(jstype_registry_1_expr301, m_create_union_type_4576, line(jstype_registry_1, 1020)).
method_invoc(jstype_registry_1_expr301, m_build_4618, line(jstype_registry_1, 1020)).
ref(v_builder_5113, jstype_registry_1_expr301, line(jstype_registry_1, 1020)).
param(p_variants_5115, 1, m_create_union_type_3079).
assign(v_builder_5116, jstype_registry_1_expr302, line(jstype_registry_1, 1028)).
method_invoc(jstype_registry_1_expr302, m_union_type_builder_4617, line(jstype_registry_1, 1028)).
argument(jstype_registry_1_expr303, 1, jstype_registry_1_expr302).
ref(p_variants_5115, jstype_registry_1_stmt222, line(jstype_registry_1, 1029)).
method_invoc(jstype_registry_1_expr304, m_add_alternate_4586, line(jstype_registry_1, 1030)).
argument(jstype_registry_1_expr305, 1, jstype_registry_1_expr304).
ref(v_builder_5116, jstype_registry_1_expr304, line(jstype_registry_1, 1030)).
method_invoc(jstype_registry_1_expr305, m_get_native_type_1094, line(jstype_registry_1, 1030)).
argument(v_type_id_5117, 1, jstype_registry_1_expr305).
return(jstype_registry_1_expr306, m_create_union_type_3079, line(jstype_registry_1, 1032)).
method_invoc(jstype_registry_1_expr306, m_build_4618, line(jstype_registry_1, 1032)).
ref(v_builder_5116, jstype_registry_1_expr306, line(jstype_registry_1, 1032)).
param(p_name_5118, 1, m_create_enum_type_4619).
param(p_source_5119, 2, m_create_enum_type_4619).
param(p_elements_type_5120, 3, m_create_enum_type_4619).
param(p_parameters_node_5121, 1, m_create_arrow_type_4620).
param(p_return_type_5122, 2, m_create_arrow_type_4620).
return(jstype_registry_1_expr307, m_create_arrow_type_4620, line(jstype_registry_1, 1052)).
method_invoc(jstype_registry_1_expr307, m_arrow_type_4270, line(jstype_registry_1, 1052)).
argument(jstype_registry_1_expr308, 1, jstype_registry_1_expr307).
argument(p_parameters_node_5121, 2, jstype_registry_1_expr307).
argument(p_return_type_5122, 3, jstype_registry_1_expr307).
param(p_parameters_node_5123, 1, m_create_arrow_type_4621).
return(jstype_registry_1_expr309, m_create_arrow_type_4621, line(jstype_registry_1, 1062)).
method_invoc(jstype_registry_1_expr309, m_arrow_type_4270, line(jstype_registry_1, 1062)).
argument(jstype_registry_1_expr310, 1, jstype_registry_1_expr309).
argument(p_parameters_node_5123, 2, jstype_registry_1_expr309).
argument(jstype_registry_1_literal27, 3, jstype_registry_1_expr309).
param(p_return_type_5124, 1, m_create_function_type_4622).
param(p_parameter_types_5125, 2, m_create_function_type_4622).
param(p_return_type_5126, 1, m_create_function_type_with_var_args_4623).
param(p_parameter_types_5127, 2, m_create_function_type_with_var_args_4623).
param(p_return_type_5128, 1, m_create_function_type_4624).
param(p_parameter_types_5129, 2, m_create_function_type_4624).
param(p_return_type_5130, 1, m_create_function_type_with_var_args_4625).
param(p_parameter_types_5131, 2, m_create_function_type_with_var_args_4625).
return(jstype_registry_1_expr311, m_create_function_type_with_var_args_4625, line(jstype_registry_1, 1109)).
method_invoc(jstype_registry_1_expr311, m_create_function_type_4626, line(jstype_registry_1, 1109)).
argument(p_return_type_5130, 1, jstype_registry_1_expr311).
argument(jstype_registry_1_expr312, 2, jstype_registry_1_expr311).
param(p_return_type_5132, 1, m_create_native_function_type_with_var_args_4627).
param(p_parameter_types_5133, 2, m_create_native_function_type_with_var_args_4627).
return(jstype_registry_1_expr313, m_create_native_function_type_with_var_args_4627, line(jstype_registry_1, 1122)).
method_invoc(jstype_registry_1_expr313, m_create_native_function_type_4628, line(jstype_registry_1, 1122)).
argument(p_return_type_5132, 1, jstype_registry_1_expr313).
argument(jstype_registry_1_expr314, 2, jstype_registry_1_expr313).
param(p_return_type_5134, 1, m_create_constructor_type_4629).
param(p_parameter_types_5135, 2, m_create_constructor_type_4629).
param(p_return_type_5136, 1, m_create_constructor_type_with_var_args_4630).
param(p_parameter_types_5137, 2, m_create_constructor_type_with_var_args_4630).
param(p_instance_type_5138, 1, m_create_function_type_4631).
param(p_return_type_5139, 2, m_create_function_type_4631).
param(p_parameter_types_5140, 3, m_create_function_type_4631).
param(p_instance_type_5141, 1, m_create_function_type_with_var_args_4632).
param(p_return_type_5142, 2, m_create_function_type_with_var_args_4632).
param(p_parameter_types_5143, 3, m_create_function_type_with_var_args_4632).
param(p_parameter_types_5144, 1, m_create_parameters_4633).
param(p_parameter_types_5145, 1, m_create_parameters_with_var_args_4634).
param(p_parameter_types_5146, 1, m_create_parameters_4635).
param(p_parameter_types_5147, 1, m_create_parameters_with_var_args_4636).
return(jstype_registry_1_expr315, m_create_parameters_with_var_args_4636, line(jstype_registry_1, 1229)).
method_invoc(jstype_registry_1_expr315, m_create_parameters_4637, line(jstype_registry_1, 1229)).
argument(jstype_registry_1_literal28, 1, jstype_registry_1_expr315).
argument(p_parameter_types_5147, 2, jstype_registry_1_expr315).
param(p_parameter_types_5148, 1, m_create_optional_parameters_4638).
assign(v_builder_5149, jstype_registry_1_expr316, line(jstype_registry_1, 1237)).
method_invoc(jstype_registry_1_expr316, m_function_param_builder_1083, line(jstype_registry_1, 1237)).
argument(jstype_registry_1_expr317, 1, jstype_registry_1_expr316).
method_invoc(jstype_registry_1_expr318, m_add_optional_params_4337, line(jstype_registry_1, 1238)).
argument(p_parameter_types_5148, 1, jstype_registry_1_expr318).
ref(v_builder_5149, jstype_registry_1_expr318, line(jstype_registry_1, 1238)).
return(jstype_registry_1_expr319, m_create_optional_parameters_4638, line(jstype_registry_1, 1239)).
method_invoc(jstype_registry_1_expr319, m_build_1085, line(jstype_registry_1, 1239)).
ref(v_builder_5149, jstype_registry_1_expr319, line(jstype_registry_1, 1239)).
param(p_last_var_args_5150, 1, m_create_parameters_4637).
param(p_parameter_types_5151, 2, m_create_parameters_4637).
assign(v_builder_5152, jstype_registry_1_expr320, line(jstype_registry_1, 1253)).
method_invoc(jstype_registry_1_expr320, m_function_param_builder_1083, line(jstype_registry_1, 1253)).
argument(jstype_registry_1_expr321, 1, jstype_registry_1_expr320).
assign(v_max_5153, jstype_registry_1_expr322, line(jstype_registry_1, 1254)).
ref(p_parameter_types_5151, q_length_204, line(jstype_registry_1, 1254)).
assign(v_i_5154, jstype_registry_1_literal30, line(jstype_registry_1, 1255)).
method_invoc(jstype_registry_1_expr328, m_add_var_args_4340, line(jstype_registry_1, 1257)).
argument(jstype_registry_1_expr329, 1, jstype_registry_1_expr328).
ref(v_builder_5152, jstype_registry_1_expr328, line(jstype_registry_1, 1257)).
ref(p_parameter_types_5151, jstype_registry_1_expr329, line(jstype_registry_1, 1257)).
method_invoc(jstype_registry_1_expr330, m_add_required_params_4334, line(jstype_registry_1, 1259)).
argument(jstype_registry_1_expr331, 1, jstype_registry_1_expr330).
ref(v_builder_5152, jstype_registry_1_expr330, line(jstype_registry_1, 1259)).
ref(p_parameter_types_5151, jstype_registry_1_expr331, line(jstype_registry_1, 1259)).
return(jstype_registry_1_expr332, m_create_parameters_4637, line(jstype_registry_1, 1262)).
method_invoc(jstype_registry_1_expr332, m_build_1085, line(jstype_registry_1, 1262)).
ref(v_builder_5152, jstype_registry_1_expr332, line(jstype_registry_1, 1262)).
param(p_return_type_5155, 1, m_create_function_type_4639).
param(p_last_var_args_5156, 2, m_create_function_type_4639).
param(p_parameter_types_5157, 3, m_create_function_type_4639).
return(jstype_registry_1_expr333, m_create_function_type_4639, line(jstype_registry_1, 1275)).
method_invoc(jstype_registry_1_expr333, m_create_function_type_with_var_args_4625, line(jstype_registry_1, 1275)).
argument(p_return_type_5155, 1, jstype_registry_1_expr333).
argument(p_parameter_types_5157, 2, jstype_registry_1_expr333).
param(p_existing_function_type_5158, 1, m_create_function_type_with_new_return_type_4640).
param(p_return_type_5159, 2, m_create_function_type_with_new_return_type_4640).
param(p_existing_function_type_5160, 1, m_create_function_type_with_new_this_type_4641).
param(p_this_type_5161, 2, m_create_function_type_with_new_this_type_4641).
param(p_return_type_5162, 1, m_create_function_type_4626).
param(p_parameters_5163, 2, m_create_function_type_4626).
return(jstype_registry_1_expr334, m_create_function_type_4626, line(jstype_registry_1, 1317)).
method_invoc(jstype_registry_1_expr334, m_build_4333, line(jstype_registry_1, 1317)).
ref(jstype_registry_1_expr335, jstype_registry_1_expr334, line(jstype_registry_1, 1317)).
method_invoc(jstype_registry_1_expr335, m_with_return_type_4324, line(jstype_registry_1, 1317)).
argument(p_return_type_5162, 1, jstype_registry_1_expr335).
ref(jstype_registry_1_expr336, jstype_registry_1_expr335, line(jstype_registry_1, 1317)).
method_invoc(jstype_registry_1_expr336, m_with_params_node_4323, line(jstype_registry_1, 1317)).
argument(p_parameters_5163, 1, jstype_registry_1_expr336).
ref(jstype_registry_1_expr337, jstype_registry_1_expr336, line(jstype_registry_1, 1317)).
method_invoc(jstype_registry_1_expr337, m_function_builder_4319, line(jstype_registry_1, 1317)).
argument(jstype_registry_1_expr338, 1, jstype_registry_1_expr337).
param(p_return_type_5164, 1, m_create_native_function_type_4628).
param(p_parameters_5165, 2, m_create_native_function_type_4628).
return(jstype_registry_1_expr339, m_create_native_function_type_4628, line(jstype_registry_1, 1325)).
method_invoc(jstype_registry_1_expr339, m_build_4333, line(jstype_registry_1, 1325)).
ref(jstype_registry_1_expr340, jstype_registry_1_expr339, line(jstype_registry_1, 1325)).
method_invoc(jstype_registry_1_expr340, m_for_native_type_4331, line(jstype_registry_1, 1325)).
ref(jstype_registry_1_expr341, jstype_registry_1_expr340, line(jstype_registry_1, 1325)).
method_invoc(jstype_registry_1_expr341, m_with_return_type_4324, line(jstype_registry_1, 1325)).
argument(p_return_type_5164, 1, jstype_registry_1_expr341).
ref(jstype_registry_1_expr342, jstype_registry_1_expr341, line(jstype_registry_1, 1325)).
method_invoc(jstype_registry_1_expr342, m_with_params_node_4323, line(jstype_registry_1, 1325)).
argument(p_parameters_5165, 1, jstype_registry_1_expr342).
ref(jstype_registry_1_expr343, jstype_registry_1_expr342, line(jstype_registry_1, 1325)).
method_invoc(jstype_registry_1_expr343, m_function_builder_4319, line(jstype_registry_1, 1325)).
argument(jstype_registry_1_expr344, 1, jstype_registry_1_expr343).
param(p_return_type_5166, 1, m_create_constructor_type_4642).
param(p_last_var_args_5167, 2, m_create_constructor_type_4642).
param(p_parameter_types_5168, 3, m_create_constructor_type_4642).
param(p_implicit_prototype_5169, 1, m_create_object_type_4643).
param(p_properties_5170, 1, m_create_record_type_4644).
param(p_name_5171, 1, m_create_object_type_4645).
param(p_n_5172, 2, m_create_object_type_4645).
param(p_implicit_prototype_5173, 3, m_create_object_type_4645).
param(p_info_5174, 1, m_create_anonymous_object_type_4646).
param(p_type_5175, 1, m_reset_implicit_prototype_4647).
param(p_new_implicit_proto_5176, 2, m_reset_implicit_prototype_4647).
param(p_name_5177, 1, m_create_constructor_type_4649).
param(p_source_5178, 2, m_create_constructor_type_4649).
param(p_parameters_5179, 3, m_create_constructor_type_4649).
param(p_return_type_5180, 4, m_create_constructor_type_4649).
param(p_template_keys_5181, 5, m_create_constructor_type_4649).
param(p_name_5182, 1, m_create_interface_type_1095).
param(p_source_5183, 2, m_create_interface_type_1095).
return(jstype_registry_1_expr345, m_create_interface_type_1095, line(jstype_registry_1, 1436)).
method_invoc(jstype_registry_1_expr345, m_for_interface_4349, line(jstype_registry_1, 1436)).
argument(jstype_registry_1_expr346, 1, jstype_registry_1_expr345).
argument(p_name_5182, 2, jstype_registry_1_expr345).
argument(p_source_5183, 3, jstype_registry_1_expr345).
ref(t_function_type_114, jstype_registry_1_expr345, line(jstype_registry_1, 1436)).
param(p_object_type_5184, 1, m_create_parameterized_type_4650).
param(p_parameter_type_5185, 2, m_create_parameterized_type_4650).
param(p_base_type_5186, 1, m_create_templatized_type_4651).
param(p_templatized_types_5187, 2, m_create_templatized_type_4651).
param(p_reference_5188, 1, m_create_named_type_4652).
param(p_source_name_5189, 2, m_create_named_type_4652).
param(p_lineno_5190, 3, m_create_named_type_4652).
param(p_charno_5191, 4, m_create_named_type_4652).
param(p_name_5192, 1, m_identify_non_nullable_name_4653).
param(p_n_5193, 1, m_create_from_type_nodes_4020).
param(p_source_name_5194, 2, m_create_from_type_nodes_4020).
param(p_scope_5195, 3, m_create_from_type_nodes_4020).
ref(t_resolve_mode_113, q_lazy_expressions_205, line(jstype_registry_1, 1493)).
return(jstype_registry_1_expr348, m_create_from_type_nodes_4020, line(jstype_registry_1, 1501)).
method_invoc(jstype_registry_1_expr348, m_create_from_type_nodes_internal_4654, line(jstype_registry_1, 1501)).
argument(p_n_5193, 1, jstype_registry_1_expr348).
argument(p_source_name_5194, 2, jstype_registry_1_expr348).
argument(p_scope_5195, 3, jstype_registry_1_expr348).
param(p_n_5196, 1, m_has_type_name_4655).
param(p_n_5197, 1, m_create_from_type_nodes_internal_4654).
param(p_source_name_5198, 2, m_create_from_type_nodes_internal_4654).
param(p_scope_5199, 3, m_create_from_type_nodes_internal_4654).
method_invoc(jstype_registry_1_expr349, m_get_type_824, line(jstype_registry_1, 1522)).
ref(p_n_5197, jstype_registry_1_expr349, line(jstype_registry_1, 1522)).
return(jstype_registry_1_expr350, m_create_from_type_nodes_internal_4654, line(jstype_registry_1, 1528)).
method_invoc(jstype_registry_1_expr350, m_restrict_by_not_null_or_undefined_4414, line(jstype_registry_1, 1528)).
ref(jstype_registry_1_expr351, jstype_registry_1_expr350, line(jstype_registry_1, 1528)).
method_invoc(jstype_registry_1_expr351, m_create_from_type_nodes_internal_4654, line(jstype_registry_1, 1528)).
argument(jstype_registry_1_expr352, 1, jstype_registry_1_expr351).
argument(p_source_name_5198, 2, jstype_registry_1_expr351).
argument(p_scope_5199, 3, jstype_registry_1_expr351).
assign(v_named_type_5200, jstype_registry_1_expr353, line(jstype_registry_1, 1574)).
method_invoc(jstype_registry_1_expr353, m_get_type_4606, line(jstype_registry_1, 1574)).
argument(p_scope_5199, 1, jstype_registry_1_expr353).
argument(jstype_registry_1_expr354, 2, jstype_registry_1_expr353).
argument(p_source_name_5198, 3, jstype_registry_1_expr353).
argument(jstype_registry_1_expr355, 4, jstype_registry_1_expr353).
argument(jstype_registry_1_expr356, 5, jstype_registry_1_expr353).
method_invoc(jstype_registry_1_expr354, m_get_string_1783, line(jstype_registry_1, 1574)).
throw(jstype_registry_1_expr354, unsupported_operation_exception, line(jstype_registry_1, 1574)).
ref(p_n_5197, jstype_registry_1_expr354, line(jstype_registry_1, 1574)).
ref(t_resolve_mode_113, q_lazy_names_206, line(jstype_registry_1, 1576)).
assign(jstype_registry_1_expr359, jstype_registry_1_expr360, line(jstype_registry_1, 1579)).
assign(v_type_list_5201, jstype_registry_1_expr361, line(jstype_registry_1, 1581)).
method_invoc(jstype_registry_1_expr361, m_get_first_child_828, line(jstype_registry_1, 1581)).
ref(p_n_5197, jstype_registry_1_expr361, line(jstype_registry_1, 1581)).
return(jstype_registry_1_expr364, m_create_from_type_nodes_internal_4654, line(jstype_registry_1, 1598)).
method_invoc(jstype_registry_1_expr364, m_create_default_object_union_4614, line(jstype_registry_1, 1598)).
argument(v_named_type_5200, 1, jstype_registry_1_expr364).
param(p_n_5202, 1, m_create_record_type_from_nodes_4656).
param(p_source_name_5203, 2, m_create_record_type_from_nodes_4656).
param(p_scope_5204, 3, m_create_record_type_from_nodes_4656).
param(p_names_5205, 1, m_set_template_type_names_1090).
method_invoc(jstype_registry_1_expr365, m_check_not_null_538, line(jstype_registry_1, 1739)).
argument(p_names_5205, 1, jstype_registry_1_expr365).
ref(t_preconditions_19, jstype_registry_1_expr365, line(jstype_registry_1, 1739)).
ref(p_names_5205, jstype_registry_1_stmt256, line(jstype_registry_1, 1740)).
method_invoc(jstype_registry_1_expr366, m_clear_4564, line(jstype_registry_1, 1749)).
ref(f_template_types_4980, jstype_registry_1_expr366, line(jstype_registry_1, 1749)).

%function_param_builder_1 - com.google.javascript.rhino.jstype.FunctionParamBuilder
assign(f_root_4739, function_param_builder_1_expr1, line(function_param_builder_1, 52)).
method_invoc(function_param_builder_1_expr1, m_node_3004, line(function_param_builder_1, 52)).
argument(q_param_list_140, 1, function_param_builder_1_expr1).
ref(t_token_51, q_param_list_140, line(function_param_builder_1, 52)).
param(p_registry_4740, 1, m_function_param_builder_1083).
assign(f_registry_4741, p_registry_4740, line(function_param_builder_1, 55)).
param(p_types_4742, 1, m_add_required_params_4334).
method_invoc(function_param_builder_1_expr5, m_has_optional_or_var_args_4335, line(function_param_builder_1, 63)).
ref(p_types_4742, function_param_builder_1_stmt3, line(function_param_builder_1, 67)).
method_invoc(function_param_builder_1_expr6, m_new_parameter_4336, line(function_param_builder_1, 68)).
argument(v_type_4743, 1, function_param_builder_1_expr6).
return(function_param_builder_1_literal1, m_add_required_params_4334, line(function_param_builder_1, 70)).
param(p_types_4744, 1, m_add_optional_params_4337).
method_invoc(function_param_builder_1_expr7, m_has_var_args_4338, line(function_param_builder_1, 80)).
ref(p_types_4744, function_param_builder_1_stmt7, line(function_param_builder_1, 84)).
method_invoc(function_param_builder_1_expr8, m_set_optional_arg_4164, line(function_param_builder_1, 85)).
argument(function_param_builder_1_literal2, 1, function_param_builder_1_expr8).
ref(function_param_builder_1_expr9, function_param_builder_1_expr8, line(function_param_builder_1, 85)).
method_invoc(function_param_builder_1_expr9, m_new_parameter_4336, line(function_param_builder_1, 85)).
argument(function_param_builder_1_expr10, 1, function_param_builder_1_expr9).
method_invoc(function_param_builder_1_expr10, m_create_optional_type_4339, line(function_param_builder_1, 85)).
argument(v_type_4745, 1, function_param_builder_1_expr10).
ref(f_registry_4741, function_param_builder_1_expr10, line(function_param_builder_1, 85)).
return(function_param_builder_1_literal3, m_add_optional_params_4337, line(function_param_builder_1, 87)).
param(p_type_4746, 1, m_add_var_args_4340).
method_invoc(function_param_builder_1_expr11, m_has_var_args_4338, line(function_param_builder_1, 95)).
method_invoc(function_param_builder_1_expr13, m_is_empty_type_4341, line(function_param_builder_1, 104)).
ref(p_type_4746, function_param_builder_1_expr13, line(function_param_builder_1, 104)).
assign(p_type_4746, function_param_builder_1_expr15, line(function_param_builder_1, 105)).
method_invoc(function_param_builder_1_expr15, m_create_optional_type_4339, line(function_param_builder_1, 105)).
argument(p_type_4746, 1, function_param_builder_1_expr15).
ref(f_registry_4741, function_param_builder_1_expr15, line(function_param_builder_1, 105)).
method_invoc(function_param_builder_1_expr16, m_set_var_args_4162, line(function_param_builder_1, 107)).
argument(function_param_builder_1_literal4, 1, function_param_builder_1_expr16).
ref(function_param_builder_1_expr17, function_param_builder_1_expr16, line(function_param_builder_1, 107)).
method_invoc(function_param_builder_1_expr17, m_new_parameter_4336, line(function_param_builder_1, 107)).
argument(p_type_4746, 1, function_param_builder_1_expr17).
return(function_param_builder_1_literal5, m_add_var_args_4340, line(function_param_builder_1, 108)).
param(p_n_4747, 1, m_new_parameter_from_node_4342).
param(p_n_4748, 1, m_new_optional_parameter_from_node_4343).
param(p_type_4749, 1, m_new_parameter_4336).
assign(v_param_node_4750, function_param_builder_1_expr18, line(function_param_builder_1, 135)).
method_invoc(function_param_builder_1_expr18, m_new_string_3455, line(function_param_builder_1, 135)).
argument(q_name_140, 1, function_param_builder_1_expr18).
argument(function_param_builder_1_literal6, 2, function_param_builder_1_expr18).
ref(t_node_92, function_param_builder_1_expr18, line(function_param_builder_1, 135)).
ref(t_token_51, q_name_140, line(function_param_builder_1, 135)).
method_invoc(function_param_builder_1_expr19, m_set_jstype_3117, line(function_param_builder_1, 136)).
argument(p_type_4749, 1, function_param_builder_1_expr19).
ref(v_param_node_4750, function_param_builder_1_expr19, line(function_param_builder_1, 136)).
method_invoc(function_param_builder_1_expr20, m_add_child_to_back_3392, line(function_param_builder_1, 137)).
argument(v_param_node_4750, 1, function_param_builder_1_expr20).
ref(f_root_4739, function_param_builder_1_expr20, line(function_param_builder_1, 137)).
return(v_param_node_4750, m_new_parameter_4336, line(function_param_builder_1, 138)).
return(f_root_4739, m_build_1085, line(function_param_builder_1, 142)).
assign(v_last_child_4751, function_param_builder_1_expr21, line(function_param_builder_1, 146)).
method_invoc(function_param_builder_1_expr21, m_get_last_child_1132, line(function_param_builder_1, 146)).
ref(f_root_4739, function_param_builder_1_expr21, line(function_param_builder_1, 146)).
return(function_param_builder_1_expr22, m_has_optional_or_var_args_4335, line(function_param_builder_1, 147)).
assign(v_last_child_4752, function_param_builder_1_expr24, line(function_param_builder_1, 152)).
method_invoc(function_param_builder_1_expr24, m_get_last_child_1132, line(function_param_builder_1, 152)).
ref(f_root_4739, function_param_builder_1_expr24, line(function_param_builder_1, 152)).
return(function_param_builder_1_expr25, m_has_var_args_4338, line(function_param_builder_1, 153)).
method_invoc(function_param_builder_1_expr27, m_is_var_args_4163, line(function_param_builder_1, 153)).
ref(v_last_child_4752, function_param_builder_1_expr27, line(function_param_builder_1, 153)).

%number_type_1 - com.google.javascript.rhino.jstype.NumberType
param(p_registry_5283, 1, m_number_type_4569).
method_invoc(number_type_1_expr1, m_value_type_4289, line(number_type_1, 53)).
argument(p_registry_5283, 1, number_type_1_expr1).
param(p_that_5284, 1, m_test_for_equality_4732).
param(p_for_annotations_5285, 1, m_to_string_helper_4737).
return(number_type_1_expr2, m_to_string_helper_4737, line(number_type_1, 97)).
method_invoc(number_type_1_expr2, m_get_display_name_4738, line(number_type_1, 97)).
return(number_type_1_literal1, m_get_display_name_4738, line(number_type_1, 102)).
param(p_visitor_5286, 1, m_visit_4740).

%variable_reference_check_1 - com.google.javascript.jscomp.VariableReferenceCheck
assign(f_undeclared_reference_3333, variable_reference_check_1_expr1, line(variable_reference_check_1, 40)).
method_invoc(variable_reference_check_1_expr1, m_warning_109, line(variable_reference_check_1, 40)).
argument(variable_reference_check_1_literal1, 1, variable_reference_check_1_expr1).
argument(variable_reference_check_1_literal2, 2, variable_reference_check_1_expr1).
ref(t_diagnostic_type_2, variable_reference_check_1_expr1, line(variable_reference_check_1, 40)).
assign(f_redeclared_variable_3334, variable_reference_check_1_expr2, line(variable_reference_check_1, 44)).
method_invoc(variable_reference_check_1_expr2, m_warning_109, line(variable_reference_check_1, 44)).
argument(variable_reference_check_1_literal3, 1, variable_reference_check_1_expr2).
argument(variable_reference_check_1_literal4, 2, variable_reference_check_1_expr2).
ref(t_diagnostic_type_2, variable_reference_check_1_expr2, line(variable_reference_check_1, 44)).
assign(f_ambiguous_function_decl_3335, variable_reference_check_1_expr3, line(variable_reference_check_1, 48)).
param(p_compiler_3336, 1, m_variable_reference_check_3210).
param(p_check_level_3337, 2, m_variable_reference_check_3210).
param(p_externs_3338, 1, m_process_3211).
param(p_root_3339, 2, m_process_3211).
param(p_script_root_3340, 1, m_hot_swap_script_3212).
param(p_original_root_3341, 2, m_hot_swap_script_3212).
param(p_t_3342, 1, m_after_exit_scope_3213).
param(p_reference_map_3343, 2, m_after_exit_scope_3213).
param(p_t_3344, 1, m_check_var_3214).
param(p_v_3345, 2, m_check_var_3214).
param(p_references_3346, 3, m_check_var_3214).

%type_inference_pass_1 - com.google.javascript.jscomp.TypeInferencePass
assign(f_dataflow_error_2888, type_inference_pass_1_expr1, line(type_inference_pass_1, 34)).
method_invoc(type_inference_pass_1_expr1, m_warning_109, line(type_inference_pass_1, 34)).
argument(type_inference_pass_1_literal1, 1, type_inference_pass_1_expr1).
argument(type_inference_pass_1_literal2, 2, type_inference_pass_1_expr1).
ref(t_diagnostic_type_2, type_inference_pass_1_expr1, line(type_inference_pass_1, 34)).
param(p_compiler_2889, 1, m_type_inference_pass_1776).
param(p_reverse_interpreter_2890, 2, m_type_inference_pass_1776).
param(p_top_scope_2891, 3, m_type_inference_pass_1776).
param(p_scope_creator_2892, 4, m_type_inference_pass_1776).
assign(f_compiler_2893, p_compiler_2889, line(type_inference_pass_1, 47)).
assign(f_reverse_interpreter_2894, p_reverse_interpreter_2890, line(type_inference_pass_1, 48)).
assign(f_top_scope_2895, p_top_scope_2891, line(type_inference_pass_1, 49)).
assign(f_scope_creator_2896, p_scope_creator_2892, line(type_inference_pass_1, 50)).
assign(f_assertion_functions_map_2897, type_inference_pass_1_expr15, line(type_inference_pass_1, 52)).
method_invoc(type_inference_pass_1_expr15, m_new_hash_map_422, line(type_inference_pass_1, 52)).
ref(t_maps_17, type_inference_pass_1_expr15, line(type_inference_pass_1, 52)).
ref(type_inference_pass_1_expr16, type_inference_pass_1_stmt6, line(type_inference_pass_1, 54)).
method_invoc(type_inference_pass_1_expr16, m_get_assertion_functions_234, line(type_inference_pass_1, 54)).
ref(type_inference_pass_1_expr17, type_inference_pass_1_expr16, line(type_inference_pass_1, 54)).
method_invoc(type_inference_pass_1_expr17, m_get_coding_convention_12, line(type_inference_pass_1, 54)).
ref(p_compiler_2889, type_inference_pass_1_expr17, line(type_inference_pass_1, 54)).
method_invoc(type_inference_pass_1_expr18, m_put_395, line(type_inference_pass_1, 55)).
argument(type_inference_pass_1_expr19, 1, type_inference_pass_1_expr18).
argument(v_assertion_fucntion_2898, 2, type_inference_pass_1_expr18).
ref(f_assertion_functions_map_2897, type_inference_pass_1_expr18, line(type_inference_pass_1, 55)).
method_invoc(type_inference_pass_1_expr19, m_get_function_name_239, line(type_inference_pass_1, 55)).
ref(v_assertion_fucntion_2898, type_inference_pass_1_expr19, line(type_inference_pass_1, 55)).
param(p_externs_root_2899, 1, m_process_1777).
param(p_js_root_2900, 2, m_process_1777).
assign(v_externs_and_js_2901, type_inference_pass_1_expr20, line(type_inference_pass_1, 68)).
method_invoc(type_inference_pass_1_expr20, m_get_parent_840, line(type_inference_pass_1, 68)).
ref(p_js_root_2900, type_inference_pass_1_expr20, line(type_inference_pass_1, 68)).
method_invoc(type_inference_pass_1_expr21, m_check_state_536, line(type_inference_pass_1, 69)).
argument(type_inference_pass_1_expr22, 1, type_inference_pass_1_expr21).
ref(t_preconditions_19, type_inference_pass_1_expr21, line(type_inference_pass_1, 69)).
method_invoc(type_inference_pass_1_expr23, m_check_state_536, line(type_inference_pass_1, 70)).
argument(type_inference_pass_1_expr24, 1, type_inference_pass_1_expr23).
ref(t_preconditions_19, type_inference_pass_1_expr23, line(type_inference_pass_1, 70)).
method_invoc(type_inference_pass_1_expr25, m_infer_all_scopes_3071, line(type_inference_pass_1, 73)).
argument(v_externs_and_js_2901, 1, type_inference_pass_1_expr25).
param(p_node_2902, 1, m_infer_all_scopes_3071).
method_invoc(type_inference_pass_1_expr26, m_traverse_with_scope_1296, line(type_inference_pass_1, 101)).
argument(p_node_2902, 1, type_inference_pass_1_expr26).
argument(f_top_scope_2895, 2, type_inference_pass_1_expr26).
ref(type_inference_pass_1_expr27, type_inference_pass_1_expr26, line(type_inference_pass_1, 101)).
assign(type_inference_pass_1_expr27, type_inference_pass_1_expr28, line(type_inference_pass_1, 101)).
method_invoc(type_inference_pass_1_expr28, m_node_traversal_1284, line(type_inference_pass_1, 101)).
argument(f_compiler_2893, 1, type_inference_pass_1_expr28).
argument(type_inference_pass_1_expr29, 2, type_inference_pass_1_expr28).
argument(f_scope_creator_2896, 3, type_inference_pass_1_expr28).
method_invoc(type_inference_pass_1_expr30, m_traverse_with_scope_1296, line(type_inference_pass_1, 104)).
argument(p_node_2902, 1, type_inference_pass_1_expr30).
argument(f_top_scope_2895, 2, type_inference_pass_1_expr30).
ref(type_inference_pass_1_expr31, type_inference_pass_1_expr30, line(type_inference_pass_1, 104)).
assign(type_inference_pass_1_expr31, type_inference_pass_1_expr32, line(type_inference_pass_1, 104)).
method_invoc(type_inference_pass_1_expr32, m_node_traversal_1284, line(type_inference_pass_1, 104)).
argument(f_compiler_2893, 1, type_inference_pass_1_expr32).
argument(type_inference_pass_1_expr33, 2, type_inference_pass_1_expr32).
argument(f_scope_creator_2896, 3, type_inference_pass_1_expr32).
param(p_n_2903, 1, m_infer_scope_3072).
param(p_scope_2904, 2, m_infer_scope_3072).
assign(v_type_inference_2905, type_inference_pass_1_expr34, line(type_inference_pass_1, 110)).
method_invoc(type_inference_pass_1_expr35, m_analyze_897, line(type_inference_pass_1, 115)).
ref(v_type_inference_2905, type_inference_pass_1_expr35, line(type_inference_pass_1, 115)).
method_invoc(type_inference_pass_1_expr36, m_resolve_types_in_scope_3073, line(type_inference_pass_1, 118)).
argument(p_scope_2904, 1, type_inference_pass_1_expr36).
ref(type_inference_pass_1_expr37, type_inference_pass_1_expr36, line(type_inference_pass_1, 118)).
method_invoc(type_inference_pass_1_expr37, m_get_type_registry_7, line(type_inference_pass_1, 118)).
ref(f_compiler_2893, type_inference_pass_1_expr37, line(type_inference_pass_1, 118)).
param(p_t_2906, 1, m_enter_scope_3074).
method_invoc(type_inference_pass_1_expr38, m_get_scope_1313, line(type_inference_pass_1, 128)).
ref(p_t_2906, type_inference_pass_1_expr38, line(type_inference_pass_1, 128)).
param(p_t_2907, 1, m_visit_3075).
param(p_n_2908, 2, m_visit_3075).
param(p_parent_2909, 3, m_visit_3075).
param(p_t_2910, 1, m_enter_scope_3076).
method_invoc(type_inference_pass_1_expr39, m_infer_scope_3072, line(type_inference_pass_1, 143)).
argument(type_inference_pass_1_expr40, 1, type_inference_pass_1_expr39).
argument(type_inference_pass_1_expr41, 2, type_inference_pass_1_expr39).
method_invoc(type_inference_pass_1_expr40, m_get_current_node_1305, line(type_inference_pass_1, 143)).
ref(p_t_2910, type_inference_pass_1_expr40, line(type_inference_pass_1, 143)).
method_invoc(type_inference_pass_1_expr41, m_get_scope_1313, line(type_inference_pass_1, 143)).
ref(p_t_2910, type_inference_pass_1_expr41, line(type_inference_pass_1, 143)).
param(p_t_2911, 1, m_visit_3077).
param(p_n_2912, 2, m_visit_3077).
param(p_parent_2913, 3, m_visit_3077).
param(p_n_2914, 1, m_compute_cfg_3078).
assign(v_cfa_2915, type_inference_pass_1_expr42, line(type_inference_pass_1, 153)).
method_invoc(type_inference_pass_1_expr42, m_control_flow_analysis_809, line(type_inference_pass_1, 153)).
argument(f_compiler_2893, 1, type_inference_pass_1_expr42).
argument(type_inference_pass_1_literal4, 2, type_inference_pass_1_expr42).
argument(type_inference_pass_1_literal5, 3, type_inference_pass_1_expr42).
method_invoc(type_inference_pass_1_expr43, m_process_811, line(type_inference_pass_1, 154)).
argument(type_inference_pass_1_literal6, 1, type_inference_pass_1_expr43).
argument(p_n_2914, 2, type_inference_pass_1_expr43).
ref(v_cfa_2915, type_inference_pass_1_expr43, line(type_inference_pass_1, 154)).
return(type_inference_pass_1_expr44, m_compute_cfg_3078, line(type_inference_pass_1, 155)).
method_invoc(type_inference_pass_1_expr44, m_get_cfg_810, line(type_inference_pass_1, 155)).
ref(v_cfa_2915, type_inference_pass_1_expr44, line(type_inference_pass_1, 155)).

%compiler_options_1 - com.google.javascript.jscomp.CompilerOptions
assign(f_save_data_structures_632, compiler_options_1_literal2, line(compiler_options_1, 95)).
assign(f_dependency_options_633, compiler_options_1_expr2, line(compiler_options_1, 123)).
method_invoc(compiler_options_1_expr2, m_dependency_options_565, line(compiler_options_1, 123)).
assign(f_message_bundle_634, compiler_options_1_literal3, line(compiler_options_1, 127)).
param(p_level_635, 1, m_set_aggressive_var_check_566).
param(p_tighten_636, 1, m_set_tighten_types_567).
param(p_level_637, 1, m_set_report_missing_override_568).
param(p_level_638, 1, m_set_report_unknown_types_569).
param(p_level_639, 1, m_set_check_requires_570).
param(p_level_640, 1, m_set_check_provides_571).
param(p_level_641, 1, m_set_check_global_names_level_572).
param(p_level_642, 1, m_set_broken_closure_requires_level_573).
param(p_level_643, 1, m_set_check_global_this_level_574).
param(p_level_644, 1, m_set_check_missing_get_css_name_level_575).
param(p_check_645, 1, m_set_check_caja_576).
param(p_level_646, 1, m_set_check_unreachable_code_577).
param(p_level_647, 1, m_set_check_missing_return_578).
param(p_names_648, 1, m_set_aliasable_globals_579).
param(p_names_649, 1, m_set_unaliasable_globals_580).
param(p_enabled_650, 1, m_set_collapse_object_literals_581).
param(p_enabled_651, 1, m_set_specialize_initial_module_582).
param(p_replace_messages_with_chrome_i18n_652, 1, m_set_replace_messages_with_chrome_i18n_583).
param(p_tc_project_id_653, 2, m_set_replace_messages_with_chrome_i18n_583).
param(p_enabled_654, 1, m_set_ignore_caja_properties_584).
param(p_app_name_str_655, 1, m_set_app_name_str_585).
assign(f_replace_id_generators_656, compiler_options_1_literal4, line(compiler_options_1, 653)).
assign(f_transform_amdto_cjsmodules_657, compiler_options_1_literal5, line(compiler_options_1, 678)).
assign(f_process_common_jsmodules_658, compiler_options_1_literal6, line(compiler_options_1, 681)).
assign(f_common_jsmodule_path_prefix_659, q_default_filename_prefix_30, line(compiler_options_1, 684)).
assign(f_input_delimiter_660, compiler_options_1_literal7, line(compiler_options_1, 705)).
param(p_enabled_661, 1, m_set_prefer_single_quotes_586).
param(p_yes_662, 1, m_set_trusted_strings_587).
param(p_report_path_663, 1, m_set_report_path_588).
param(p_mode_664, 1, m_set_tracer_mode_590).
assign(f_warnings_guard_665, compiler_options_1_expr3, line(compiler_options_1, 751)).
method_invoc(compiler_options_1_expr3, m_compose_warnings_guard_591, line(compiler_options_1, 751)).
assign(f_summary_detail_level_666, compiler_options_1_literal8, line(compiler_options_1, 753)).
assign(f_line_length_threshold_667, q_default_line_length_threshold_31, line(compiler_options_1, 755)).
ref(t_code_printer_25, q_default_line_length_threshold_31, line(compiler_options_1, 755)).
param(p_file_path_668, 1, m_set_name_reference_report_path_592).
param(p_file_path_669, 1, m_set_name_reference_graph_path_593).
assign(f_source_map_detail_level_670, q_symbols_32, line(compiler_options_1, 792)).
assign(f_source_map_format_671, q_default_33, line(compiler_options_1, 796)).
assign(f_source_map_location_mappings_672, compiler_options_1_expr4, line(compiler_options_1, 799)).
param(p_enable_673, 1, m_set_protect_hidden_side_effects_594).
assign(f_language_in_674, q_ecmascript3_34, line(compiler_options_1, 843)).
ref(t_language_mode_21, q_ecmascript3_34, line(compiler_options_1, 843)).
assign(f_accept_const_keyword_675, compiler_options_1_literal9, line(compiler_options_1, 846)).
assign(f_skip_all_passes_676, compiler_options_1_literal10, line(compiler_options_1, 849)).
assign(f_name_anonymous_functions_only_677, compiler_options_1_literal11, line(compiler_options_1, 850)).
assign(f_dev_mode_678, q_off_35, line(compiler_options_1, 851)).
ref(t_dev_mode_26, q_off_35, line(compiler_options_1, 851)).
assign(f_check_symbols_679, compiler_options_1_literal12, line(compiler_options_1, 852)).
assign(f_aggressive_var_check_680, q_off_36, line(compiler_options_1, 853)).
ref(t_check_level_8, q_off_36, line(compiler_options_1, 853)).
assign(f_check_suspicious_code_681, compiler_options_1_literal13, line(compiler_options_1, 854)).
assign(f_check_control_structures_682, compiler_options_1_literal14, line(compiler_options_1, 855)).
assign(f_check_types_683, compiler_options_1_literal15, line(compiler_options_1, 856)).
assign(f_tighten_types_684, compiler_options_1_literal16, line(compiler_options_1, 857)).
assign(f_report_missing_override_685, q_off_36, line(compiler_options_1, 858)).
ref(t_check_level_8, q_off_36, line(compiler_options_1, 858)).
assign(f_report_unknown_types_686, q_off_36, line(compiler_options_1, 859)).
ref(t_check_level_8, q_off_36, line(compiler_options_1, 859)).
assign(f_check_requires_687, q_off_36, line(compiler_options_1, 860)).
ref(t_check_level_8, q_off_36, line(compiler_options_1, 860)).
assign(f_check_provides_688, q_off_36, line(compiler_options_1, 861)).
ref(t_check_level_8, q_off_36, line(compiler_options_1, 861)).
assign(f_check_global_names_level_689, q_off_36, line(compiler_options_1, 862)).
ref(t_check_level_8, q_off_36, line(compiler_options_1, 862)).
assign(f_broken_closure_requires_level_690, q_error_36, line(compiler_options_1, 863)).
ref(t_check_level_8, q_error_36, line(compiler_options_1, 863)).
assign(f_check_global_this_level_458, q_off_36, line(compiler_options_1, 864)).
ref(t_check_level_8, q_off_36, line(compiler_options_1, 864)).
assign(f_check_unreachable_code_691, q_off_36, line(compiler_options_1, 865)).
ref(t_check_level_8, q_off_36, line(compiler_options_1, 865)).
assign(f_check_missing_return_692, q_off_36, line(compiler_options_1, 866)).
ref(t_check_level_8, q_off_36, line(compiler_options_1, 866)).
assign(f_check_missing_get_css_name_level_693, q_off_36, line(compiler_options_1, 867)).
ref(t_check_level_8, q_off_36, line(compiler_options_1, 867)).
assign(f_check_missing_get_css_name_blacklist_694, compiler_options_1_literal17, line(compiler_options_1, 868)).
assign(f_check_caja_695, compiler_options_1_literal18, line(compiler_options_1, 869)).
assign(f_compute_function_side_effects_696, compiler_options_1_literal19, line(compiler_options_1, 870)).
assign(f_chain_calls_697, compiler_options_1_literal20, line(compiler_options_1, 871)).
assign(f_extra_annotation_names_698, compiler_options_1_literal21, line(compiler_options_1, 872)).
assign(f_fold_constants_699, compiler_options_1_literal22, line(compiler_options_1, 875)).
assign(f_coalesce_variable_names_700, compiler_options_1_literal23, line(compiler_options_1, 876)).
assign(f_dead_assignment_elimination_701, compiler_options_1_literal24, line(compiler_options_1, 877)).
assign(f_inline_constant_vars_702, compiler_options_1_literal25, line(compiler_options_1, 878)).
assign(f_inline_functions_703, compiler_options_1_literal26, line(compiler_options_1, 879)).
assign(f_inline_local_functions_704, compiler_options_1_literal27, line(compiler_options_1, 880)).
assign(f_assume_strict_this_705, compiler_options_1_literal28, line(compiler_options_1, 881)).
assign(f_inline_properties_706, compiler_options_1_literal29, line(compiler_options_1, 882)).
assign(f_cross_module_code_motion_707, compiler_options_1_literal30, line(compiler_options_1, 883)).
assign(f_cross_module_method_motion_708, compiler_options_1_literal31, line(compiler_options_1, 884)).
assign(f_inline_getters_709, compiler_options_1_literal32, line(compiler_options_1, 885)).
assign(f_inline_variables_710, compiler_options_1_literal33, line(compiler_options_1, 886)).
assign(f_inline_local_variables_711, compiler_options_1_literal34, line(compiler_options_1, 887)).
assign(f_smart_name_removal_712, compiler_options_1_literal35, line(compiler_options_1, 888)).
assign(f_remove_dead_code_713, compiler_options_1_literal36, line(compiler_options_1, 889)).
assign(f_extract_prototype_member_declarations_714, compiler_options_1_literal37, line(compiler_options_1, 890)).
assign(f_remove_unused_prototype_properties_715, compiler_options_1_literal38, line(compiler_options_1, 891)).
assign(f_remove_unused_prototype_properties_in_externs_716, compiler_options_1_literal39, line(compiler_options_1, 892)).
assign(f_remove_unused_class_properties_717, compiler_options_1_literal40, line(compiler_options_1, 893)).
assign(f_remove_unused_vars_718, compiler_options_1_literal41, line(compiler_options_1, 894)).
assign(f_remove_unused_local_vars_719, compiler_options_1_literal42, line(compiler_options_1, 895)).
assign(f_alias_externals_720, compiler_options_1_literal43, line(compiler_options_1, 896)).
assign(f_collapse_variable_declarations_721, compiler_options_1_literal44, line(compiler_options_1, 897)).
assign(f_group_variable_declarations_722, compiler_options_1_literal45, line(compiler_options_1, 898)).
assign(f_collapse_anonymous_functions_723, compiler_options_1_literal46, line(compiler_options_1, 899)).
assign(f_aliasable_strings_724, compiler_options_1_expr57, line(compiler_options_1, 900)).
method_invoc(compiler_options_1_expr57, m_empty_set_596, line(compiler_options_1, 900)).
ref(t_collections_27, compiler_options_1_expr57, line(compiler_options_1, 900)).
assign(f_alias_strings_blacklist_725, compiler_options_1_literal47, line(compiler_options_1, 901)).
assign(f_alias_all_strings_726, compiler_options_1_literal48, line(compiler_options_1, 902)).
assign(f_output_js_string_usage_727, compiler_options_1_literal49, line(compiler_options_1, 903)).
assign(f_convert_to_dotted_properties_728, compiler_options_1_literal50, line(compiler_options_1, 904)).
assign(f_rewrite_function_expressions_729, compiler_options_1_literal51, line(compiler_options_1, 905)).
assign(f_optimize_parameters_730, compiler_options_1_literal52, line(compiler_options_1, 906)).
assign(f_optimize_returns_731, compiler_options_1_literal53, line(compiler_options_1, 907)).
assign(f_variable_renaming_732, q_off_36, line(compiler_options_1, 910)).
ref(t_variable_renaming_policy_28, q_off_36, line(compiler_options_1, 910)).
assign(f_property_renaming_733, q_off_37, line(compiler_options_1, 911)).
ref(t_property_renaming_policy_29, q_off_37, line(compiler_options_1, 911)).
assign(f_property_affinity_734, compiler_options_1_literal54, line(compiler_options_1, 912)).
assign(f_label_renaming_735, compiler_options_1_literal55, line(compiler_options_1, 913)).
assign(f_generate_pseudo_names_736, compiler_options_1_literal56, line(compiler_options_1, 914)).
assign(f_shadow_variables_737, compiler_options_1_literal57, line(compiler_options_1, 915)).
assign(f_rename_prefix_738, compiler_options_1_literal58, line(compiler_options_1, 916)).
assign(f_alias_keywords_739, compiler_options_1_literal59, line(compiler_options_1, 917)).
assign(f_collapse_properties_740, compiler_options_1_literal60, line(compiler_options_1, 918)).
assign(f_collapse_properties_on_extern_types_741, compiler_options_1_literal61, line(compiler_options_1, 919)).
assign(f_collapse_object_literals_742, compiler_options_1_literal62, line(compiler_options_1, 920)).
assign(f_devirtualize_prototype_methods_743, compiler_options_1_literal63, line(compiler_options_1, 921)).
assign(f_disambiguate_properties_744, compiler_options_1_literal64, line(compiler_options_1, 922)).
assign(f_ambiguate_properties_745, compiler_options_1_literal65, line(compiler_options_1, 923)).
assign(f_anonymous_function_naming_746, q_off_38, line(compiler_options_1, 924)).
ref(t_anonymous_function_naming_policy_4, q_off_38, line(compiler_options_1, 924)).
assign(f_export_test_functions_747, compiler_options_1_literal66, line(compiler_options_1, 925)).
assign(f_runtime_type_check_748, compiler_options_1_literal67, line(compiler_options_1, 928)).
assign(f_runtime_type_check_log_function_749, compiler_options_1_literal68, line(compiler_options_1, 929)).
assign(f_ignore_caja_properties_750, compiler_options_1_literal69, line(compiler_options_1, 930)).
assign(f_synthetic_block_start_marker_751, compiler_options_1_literal70, line(compiler_options_1, 931)).
assign(f_synthetic_block_end_marker_752, compiler_options_1_literal71, line(compiler_options_1, 932)).
assign(f_locale_753, compiler_options_1_literal72, line(compiler_options_1, 933)).
assign(f_mark_as_compiled_754, compiler_options_1_literal73, line(compiler_options_1, 934)).
assign(f_remove_try_catch_finally_755, compiler_options_1_literal74, line(compiler_options_1, 935)).
assign(f_closure_pass_756, compiler_options_1_literal75, line(compiler_options_1, 936)).
assign(f_jquery_pass_757, compiler_options_1_literal76, line(compiler_options_1, 937)).
assign(f_remove_abstract_methods_758, compiler_options_1_literal77, line(compiler_options_1, 938)).
assign(f_remove_closure_asserts_759, compiler_options_1_literal78, line(compiler_options_1, 939)).
assign(f_strip_types_760, compiler_options_1_expr94, line(compiler_options_1, 940)).
method_invoc(compiler_options_1_expr94, m_empty_set_596, line(compiler_options_1, 940)).
ref(t_collections_27, compiler_options_1_expr94, line(compiler_options_1, 940)).
assign(f_strip_name_suffixes_761, compiler_options_1_expr96, line(compiler_options_1, 941)).
method_invoc(compiler_options_1_expr96, m_empty_set_596, line(compiler_options_1, 941)).
ref(t_collections_27, compiler_options_1_expr96, line(compiler_options_1, 941)).
assign(f_strip_name_prefixes_762, compiler_options_1_expr98, line(compiler_options_1, 942)).
method_invoc(compiler_options_1_expr98, m_empty_set_596, line(compiler_options_1, 942)).
ref(t_collections_27, compiler_options_1_expr98, line(compiler_options_1, 942)).
assign(f_strip_type_prefixes_763, compiler_options_1_expr100, line(compiler_options_1, 943)).
method_invoc(compiler_options_1_expr100, m_empty_set_596, line(compiler_options_1, 943)).
ref(t_collections_27, compiler_options_1_expr100, line(compiler_options_1, 943)).
assign(f_custom_passes_764, compiler_options_1_literal79, line(compiler_options_1, 944)).
assign(f_mark_no_side_effect_calls_765, compiler_options_1_literal80, line(compiler_options_1, 945)).
assign(f_define_replacements_766, compiler_options_1_expr104, line(compiler_options_1, 946)).
method_invoc(compiler_options_1_expr104, m_new_hash_map_422, line(compiler_options_1, 946)).
ref(t_maps_17, compiler_options_1_expr104, line(compiler_options_1, 946)).
assign(f_tweak_processing_767, q_off_39, line(compiler_options_1, 947)).
ref(t_tweak_processing_30, q_off_39, line(compiler_options_1, 947)).
assign(f_tweak_replacements_768, compiler_options_1_expr107, line(compiler_options_1, 948)).
method_invoc(compiler_options_1_expr107, m_new_hash_map_422, line(compiler_options_1, 948)).
ref(t_maps_17, compiler_options_1_expr107, line(compiler_options_1, 948)).
assign(f_move_function_declarations_769, compiler_options_1_literal81, line(compiler_options_1, 949)).
assign(f_instrumentation_template_770, compiler_options_1_literal82, line(compiler_options_1, 950)).
assign(f_app_name_str_771, compiler_options_1_literal83, line(compiler_options_1, 951)).
assign(f_record_function_information_772, compiler_options_1_literal84, line(compiler_options_1, 952)).
assign(f_generate_exports_773, compiler_options_1_literal85, line(compiler_options_1, 953)).
assign(f_css_renaming_map_774, compiler_options_1_literal86, line(compiler_options_1, 954)).
assign(f_css_renaming_whitelist_775, compiler_options_1_literal87, line(compiler_options_1, 955)).
assign(f_process_object_property_string_776, compiler_options_1_literal88, line(compiler_options_1, 956)).
assign(f_id_generators_777, compiler_options_1_expr117, line(compiler_options_1, 957)).
method_invoc(compiler_options_1_expr117, m_empty_set_596, line(compiler_options_1, 957)).
ref(t_collections_27, compiler_options_1_expr117, line(compiler_options_1, 957)).
assign(f_replace_strings_function_descriptions_778, compiler_options_1_expr119, line(compiler_options_1, 958)).
method_invoc(compiler_options_1_expr119, m_empty_list_597, line(compiler_options_1, 958)).
ref(t_collections_27, compiler_options_1_expr119, line(compiler_options_1, 958)).
assign(f_replace_strings_placeholder_token_779, compiler_options_1_literal89, line(compiler_options_1, 959)).
assign(f_replace_strings_reserved_strings_780, compiler_options_1_expr122, line(compiler_options_1, 960)).
method_invoc(compiler_options_1_expr122, m_empty_set_596, line(compiler_options_1, 960)).
ref(t_collections_27, compiler_options_1_expr122, line(compiler_options_1, 960)).
assign(f_property_invalidation_errors_781, compiler_options_1_expr124, line(compiler_options_1, 961)).
method_invoc(compiler_options_1_expr124, m_new_hash_map_422, line(compiler_options_1, 961)).
ref(t_maps_17, compiler_options_1_expr124, line(compiler_options_1, 961)).
assign(f_print_input_delimiter_782, compiler_options_1_literal90, line(compiler_options_1, 964)).
assign(f_pretty_print_783, compiler_options_1_literal91, line(compiler_options_1, 965)).
assign(f_line_break_784, compiler_options_1_literal92, line(compiler_options_1, 966)).
assign(f_prefer_line_break_at_end_of_file_785, compiler_options_1_literal93, line(compiler_options_1, 967)).
assign(f_report_path_786, compiler_options_1_literal94, line(compiler_options_1, 968)).
assign(f_tracer_787, q_off_40, line(compiler_options_1, 969)).
ref(t_tracer_mode_31, q_off_40, line(compiler_options_1, 969)).
assign(f_colorize_error_output_788, compiler_options_1_literal95, line(compiler_options_1, 970)).
assign(f_error_format_456, q_singleline_41, line(compiler_options_1, 971)).
ref(t_error_format_32, q_singleline_41, line(compiler_options_1, 971)).
assign(f_debug_function_side_effects_path_789, compiler_options_1_literal96, line(compiler_options_1, 972)).
assign(f_extern_exports_790, compiler_options_1_literal97, line(compiler_options_1, 973)).
assign(f_name_reference_report_path_791, compiler_options_1_literal98, line(compiler_options_1, 974)).
assign(f_name_reference_graph_path_792, compiler_options_1_literal99, line(compiler_options_1, 975)).
assign(f_alias_handler_793, f_null_alias_transformation_handler_794, line(compiler_options_1, 978)).
assign(f_error_handler_565, compiler_options_1_literal100, line(compiler_options_1, 979)).
param(p_remove_unused_class_properties_795, 1, m_set_remove_unused_class_properties_599).
param(p_source_796, 1, m_get_replacements_helper_602).
param(p_define_name_797, 1, m_set_define_to_boolean_literal_603).
param(p_value_798, 2, m_set_define_to_boolean_literal_603).
param(p_define_name_799, 1, m_set_define_to_string_literal_604).
param(p_value_800, 2, m_set_define_to_string_literal_604).
param(p_define_name_801, 1, m_set_define_to_number_literal_605).
param(p_value_802, 2, m_set_define_to_number_literal_605).
param(p_define_name_803, 1, m_set_define_to_double_literal_606).
param(p_value_804, 2, m_set_define_to_double_literal_606).
param(p_tweak_id_805, 1, m_set_tweak_to_boolean_literal_607).
param(p_value_806, 2, m_set_tweak_to_boolean_literal_607).
param(p_tweak_id_807, 1, m_set_tweak_to_string_literal_608).
param(p_value_808, 2, m_set_tweak_to_string_literal_608).
param(p_tweak_id_809, 1, m_set_tweak_to_number_literal_609).
param(p_value_810, 2, m_set_tweak_to_number_literal_609).
param(p_tweak_id_811, 1, m_set_tweak_to_double_literal_610).
param(p_value_812, 2, m_set_tweak_to_double_literal_610).
param(p_type_813, 1, m_enables_327).
return(compiler_options_1_expr139, m_enables_327, line(compiler_options_1, 1110)).
method_invoc(compiler_options_1_expr139, m_enables_612, line(compiler_options_1, 1110)).
argument(p_type_813, 1, compiler_options_1_expr139).
ref(f_warnings_guard_665, compiler_options_1_expr139, line(compiler_options_1, 1110)).
param(p_type_814, 1, m_disables_613).
param(p_type_815, 1, m_set_warning_level_614).
param(p_level_816, 2, m_set_warning_level_614).
method_invoc(compiler_options_1_expr140, m_add_warnings_guard_615, line(compiler_options_1, 1125)).
argument(compiler_options_1_expr141, 1, compiler_options_1_expr140).
method_invoc(compiler_options_1_expr141, m_diagnostic_group_warnings_guard_334, line(compiler_options_1, 1125)).
argument(p_type_815, 1, compiler_options_1_expr141).
argument(p_level_816, 2, compiler_options_1_expr141).
return(f_warnings_guard_665, m_get_warnings_guard_331, line(compiler_options_1, 1129)).
param(p_guard_817, 1, m_add_warnings_guard_615).
method_invoc(compiler_options_1_expr142, m_add_guard_333, line(compiler_options_1, 1151)).
argument(p_guard_817, 1, compiler_options_1_expr142).
ref(f_warnings_guard_665, compiler_options_1_expr142, line(compiler_options_1, 1151)).
param(p_new_variable_policy_818, 1, m_set_renaming_policy_618).
param(p_new_property_policy_819, 2, m_set_renaming_policy_618).
param(p_use_affinity_820, 1, m_set_property_affinity_619).
param(p_shadow_821, 1, m_set_shadow_variables_620).
param(p_collapse_822, 1, m_set_collapse_properties_on_extern_types_621).
param(p_process_823, 1, m_set_process_object_property_string_622).
param(p_replace_id_generators_824, 1, m_set_replace_id_generators_623).
param(p_id_generators_825, 1, m_set_id_generators_624).
param(p_previous_mappings_826, 1, m_set_id_generators_map_625).
param(p_reach_827, 1, m_set_inline_functions_626).
param(p_reach_828, 1, m_set_inline_variables_627).
param(p_enable_829, 1, m_set_inline_properties_628).
param(p_reach_830, 1, m_set_remove_unused_variable_629).
param(p_reach_831, 1, m_set_remove_unused_variables_630).
param(p_placeholder_token_832, 1, m_set_replace_strings_configuration_631).
param(p_function_descriptors_833, 2, m_set_replace_strings_configuration_631).
param(p_rewrite_834, 1, m_set_rewrite_new_date_goog_now_632).
param(p_remove_835, 1, m_set_remove_abstract_methods_633).
param(p_remove_836, 1, m_set_remove_closure_asserts_634).
param(p_value_837, 1, m_set_name_anonymous_functions_only_635).
param(p_colorize_error_output_838, 1, m_set_colorize_error_output_636).
return(f_colorize_error_output_788, m_should_colorize_error_output_324, line(compiler_options_1, 1328)).
param(p_value_839, 1, m_set_chain_calls_637).
param(p_value_840, 1, m_set_accept_const_keyword_638).
param(p_log_function_841, 1, m_enable_runtime_type_check_639).
param(p_generate_exports_842, 1, m_set_generate_exports_641).
param(p_coding_convention_843, 1, m_set_coding_convention_642).
assign(f_coding_convention_844, p_coding_convention_843, line(compiler_options_1, 1365)).
return(f_coding_convention_844, m_get_coding_convention_459, line(compiler_options_1, 1369)).
param(p_options_845, 1, m_set_dependency_options_643).
param(p_new_val_846, 1, m_set_manage_closure_dependencies_644).
param(p_entry_points_847, 1, m_set_manage_closure_dependencies_645).
param(p_summary_detail_level_848, 1, m_set_summary_detail_level_646).
param(p_enabled_849, 1, m_enable_extern_exports_647).
param(p_extra_annotation_names_850, 1, m_set_extra_annotation_names_648).
param(p_charset_name_851, 1, m_set_output_charset_650).
param(p_tweak_processing_852, 1, m_set_tweak_processing_652).
param(p_language_in_853, 1, m_set_language_in_654).
assign(f_language_in_674, p_language_in_853, line(compiler_options_1, 1465)).
assign(f_language_out_854, p_language_in_853, line(compiler_options_1, 1466)).
return(f_language_in_674, m_get_language_in_328, line(compiler_options_1, 1470)).
param(p_loose_types_855, 1, m_set_loose_types_656).
throw(m_clone_657, clone_not_supported_exception).
param(p_changes_856, 1, m_set_alias_transformation_handler_658).
param(p_handler_857, 1, m_set_error_handler_660).
param(p_enable_858, 1, m_set_infer_types_661).
param(p_enable_859, 1, m_set_assume_strict_this_664).
param(p_property_invalidation_errors_860, 1, m_set_property_invalidation_errors_665).
param(p_language_out_861, 1, m_set_language_out_666).
param(p_ide_mode_862, 1, m_set_ide_mode_667).
param(p_save_863, 1, m_set_save_data_structures_668).
param(p_skip_all_passes_864, 1, m_set_skip_all_passes_669).
param(p_dev_mode_865, 1, m_set_dev_mode_670).
param(p_message_bundle_866, 1, m_set_message_bundle_671).
param(p_check_symbols_867, 1, m_set_check_symbols_672).
param(p_check_suspicious_code_868, 1, m_set_check_suspicious_code_673).
param(p_check_control_structures_869, 1, m_set_check_control_structures_674).
param(p_check_types_870, 1, m_set_check_types_675).
param(p_black_list_871, 1, m_set_check_missing_get_css_name_blacklist_676).
param(p_fold_constants_872, 1, m_set_fold_constants_677).
param(p_dead_assignment_elimination_873, 1, m_set_dead_assignment_elimination_678).
param(p_inline_constant_vars_874, 1, m_set_inline_constant_vars_679).
param(p_inline_functions_875, 1, m_set_inline_functions_680).
param(p_inline_local_functions_876, 1, m_set_inline_local_functions_681).
param(p_cross_module_code_motion_877, 1, m_set_cross_module_code_motion_682).
param(p_coalesce_variable_names_878, 1, m_set_coalesce_variable_names_683).
param(p_cross_module_method_motion_879, 1, m_set_cross_module_method_motion_684).
param(p_inline_getters_880, 1, m_set_inline_getters_685).
param(p_inline_variables_881, 1, m_set_inline_variables_686).
param(p_inline_local_variables_882, 1, m_set_inline_local_variables_687).
param(p_enabled_883, 1, m_set_flow_sensitive_inline_variables_688).
param(p_smart_name_removal_884, 1, m_set_smart_name_removal_689).
param(p_remove_dead_code_885, 1, m_set_remove_dead_code_690).
param(p_enabled_886, 1, m_set_extract_prototype_member_declarations_691).
param(p_enabled_887, 1, m_set_remove_unused_prototype_properties_692).
param(p_enabled_888, 1, m_set_remove_unused_prototype_properties_in_externs_693).
param(p_remove_unused_vars_889, 1, m_set_remove_unused_vars_694).
param(p_remove_unused_local_vars_890, 1, m_set_remove_unused_local_vars_695).
param(p_alias_externals_891, 1, m_set_alias_externals_696).
param(p_enabled_892, 1, m_set_collapse_variable_declarations_697).
param(p_enabled_893, 1, m_set_group_variable_declarations_698).
param(p_enabled_894, 1, m_set_collapse_anonymous_functions_699).
param(p_aliasable_strings_895, 1, m_set_aliasable_strings_700).
param(p_alias_strings_blacklist_896, 1, m_set_alias_strings_blacklist_701).
param(p_alias_all_strings_897, 1, m_set_alias_all_strings_702).
param(p_output_js_string_usage_898, 1, m_set_output_js_string_usage_703).
param(p_convert_to_dotted_properties_899, 1, m_set_convert_to_dotted_properties_704).
param(p_rewrite_function_expressions_900, 1, m_set_rewrite_function_expressions_705).
param(p_optimize_parameters_901, 1, m_set_optimize_parameters_706).
param(p_optimize_returns_902, 1, m_set_optimize_returns_707).
param(p_optimize_calls_903, 1, m_set_optimize_calls_708).
param(p_optimize_arguments_array_904, 1, m_set_optimize_arguments_array_709).
param(p_variable_renaming_905, 1, m_set_variable_renaming_710).
param(p_property_renaming_906, 1, m_set_property_renaming_711).
param(p_label_renaming_907, 1, m_set_label_renaming_712).
param(p_reserve_raw_exports_908, 1, m_set_reserve_raw_exports_713).
param(p_generate_pseudo_names_909, 1, m_set_generate_pseudo_names_714).
param(p_rename_prefix_910, 1, m_set_rename_prefix_715).
param(p_rename_prefix_namespace_911, 1, m_set_rename_prefix_namespace_716).
param(p_alias_keywords_912, 1, m_set_alias_keywords_717).
param(p_collapse_properties_913, 1, m_set_collapse_properties_718).
param(p_devirtualize_prototype_methods_914, 1, m_set_devirtualize_prototype_methods_719).
param(p_compute_function_side_effects_915, 1, m_set_compute_function_side_effects_720).
param(p_debug_function_side_effects_path_916, 1, m_set_debug_function_side_effects_path_721).
param(p_disambiguate_properties_917, 1, m_set_disambiguate_properties_722).
param(p_ambiguate_properties_918, 1, m_set_ambiguate_properties_723).
param(p_anonymous_function_naming_919, 1, m_set_anonymous_function_naming_724).
param(p_input_map_920, 1, m_set_input_anonymous_function_naming_map_725).
param(p_input_variable_map_serialized_921, 1, m_set_input_variable_map_serialized_726).
throw(m_set_input_variable_map_serialized_726, parse_exception).
param(p_input_variable_map_922, 1, m_set_input_variable_map_727).
param(p_input_property_map_serialized_923, 1, m_set_input_property_map_serialized_728).
throw(m_set_input_property_map_serialized_728, parse_exception).
param(p_input_property_map_924, 1, m_set_input_property_map_729).
param(p_export_test_functions_925, 1, m_set_export_test_functions_730).
param(p_runtime_type_check_926, 1, m_set_runtime_type_check_731).
param(p_runtime_type_check_log_function_927, 1, m_set_runtime_type_check_log_function_732).
param(p_synthetic_block_start_marker_928, 1, m_set_synthetic_block_start_marker_733).
param(p_synthetic_block_end_marker_929, 1, m_set_synthetic_block_end_marker_734).
param(p_locale_930, 1, m_set_locale_735).
param(p_mark_as_compiled_931, 1, m_set_mark_as_compiled_736).
param(p_remove_try_catch_finally_932, 1, m_set_remove_try_catch_finally_737).
param(p_closure_pass_933, 1, m_set_closure_pass_738).
param(p_gather_css_names_934, 1, m_set_gather_css_names_739).
param(p_strip_types_935, 1, m_set_strip_types_740).
param(p_strip_name_suffixes_936, 1, m_set_strip_name_suffixes_741).
param(p_strip_name_prefixes_937, 1, m_set_strip_name_prefixes_742).
param(p_strip_type_prefixes_938, 1, m_set_strip_type_prefixes_743).
param(p_custom_passes_939, 1, m_set_custom_passes_744).
param(p_mark_no_side_effect_calls_940, 1, m_set_mark_no_side_effect_calls_745).
param(p_define_replacements_941, 1, m_set_define_replacements_746).
param(p_tweak_replacements_942, 1, m_set_tweak_replacements_747).
param(p_move_function_declarations_943, 1, m_set_move_function_declarations_748).
param(p_instrumentation_template_944, 1, m_set_instrumentation_template_749).
param(p_record_function_information_945, 1, m_set_record_function_information_750).
param(p_css_renaming_map_946, 1, m_set_css_renaming_map_751).
param(p_whitelist_947, 1, m_set_css_renaming_whitelist_752).
param(p_replace_strings_function_descriptions_948, 1, m_set_replace_strings_function_descriptions_753).
param(p_replace_strings_placeholder_token_949, 1, m_set_replace_strings_placeholder_token_754).
param(p_replace_strings_reserved_strings_950, 1, m_set_replace_strings_reserved_strings_755).
param(p_serialized_map_951, 1, m_set_replace_strings_input_map_756).
param(p_pretty_print_952, 1, m_set_pretty_print_757).
param(p_line_break_953, 1, m_set_line_break_758).
param(p_line_break_at_end_954, 1, m_set_prefer_line_break_at_end_of_file_759).
param(p_print_input_delimiter_955, 1, m_set_print_input_delimiter_760).
param(p_input_delimiter_956, 1, m_set_input_delimiter_761).
param(p_tracer_957, 1, m_set_tracer_762).
param(p_error_format_958, 1, m_set_error_format_763).
param(p_warnings_guard_959, 1, m_set_warnings_guard_764).
param(p_line_length_threshold_960, 1, m_set_line_length_threshold_765).
param(p_extern_exports_961, 1, m_set_extern_exports_766).
param(p_extern_exports_path_962, 1, m_set_extern_exports_path_767).
param(p_source_map_output_path_963, 1, m_set_source_map_output_path_768).
param(p_source_map_detail_level_964, 1, m_set_source_map_detail_level_769).
param(p_source_map_format_965, 1, m_set_source_map_format_770).
param(p_source_map_location_mappings_966, 1, m_set_source_map_location_mappings_771).
param(p_transform_amdto_cjsmodules_967, 1, m_set_transform_amdto_cjsmodules_772).
param(p_process_common_jsmodules_968, 1, m_set_process_common_jsmodules_773).
param(p_common_jsmodule_path_prefix_969, 1, m_set_common_jsmodule_path_prefix_774).
param(p_value_973, 1, m_from_string_775).
param(p_source_file_985, 1, m_log_alias_transformation_779).
param(p_position_986, 2, m_log_alias_transformation_779).
param(p_alias_987, 1, m_add_alias_780).
param(p_definition_988, 2, m_add_alias_780).
assign(f_null_alias_transformation_handler_794, compiler_options_1_expr152, line(compiler_options_1, 2162)).
assign(f_null_alias_transformation_989, compiler_options_1_expr153, line(compiler_options_1, 2169)).
param(p_source_file_990, 1, m_log_alias_transformation_781).
param(p_position_991, 2, m_log_alias_transformation_781).
param(p_alias_992, 1, m_add_alias_782).
param(p_definition_993, 2, m_add_alias_782).

%ir_1 - com.google.javascript.rhino.IR
param(p_name_4102, 1, m_function_3741).
param(p_params_4103, 2, m_function_3741).
param(p_body_4104, 3, m_function_3741).
param(p_param_4105, 1, m_param_list_3743).
param(p_params_4106, 1, m_param_list_3744).
param(p_params_4107, 1, m_param_list_3745).
param(p_stmt_4108, 1, m_block_3747).
param(p_stmts_4109, 1, m_block_3748).
param(p_stmts_4110, 1, m_block_3749).
param(p_stmt_4111, 1, m_block_unchecked_3750).
assign(v_block_4112, ir_1_expr1, line(ir_1, 126)).
method_invoc(ir_1_expr1, m_node_3004, line(ir_1, 126)).
argument(q_script_111, 1, ir_1_expr1).
ref(t_token_51, q_script_111, line(ir_1, 126)).
return(v_block_4112, m_script_3524, line(ir_1, 127)).
param(p_stmts_4113, 1, m_script_3751).
param(p_stmts_4114, 1, m_script_3752).
param(p_name_4115, 1, m_var_3753).
param(p_value_4116, 2, m_var_3753).
param(p_name_4117, 1, m_var_3754).
param(p_expr_4118, 1, m_return_node_3756).
param(p_expr_4119, 1, m_throw_node_3757).
param(p_expr_4120, 1, m_expr_result_3758).
param(p_cond_4121, 1, m_if_node_3759).
param(p_then_4122, 2, m_if_node_3759).
param(p_cond_4123, 1, m_if_node_3760).
param(p_then_4124, 2, m_if_node_3760).
param(p_else_node_4125, 3, m_if_node_3760).
param(p_body_4126, 1, m_do_node_3761).
param(p_cond_4127, 2, m_do_node_3761).
param(p_target_4128, 1, m_for_in_3762).
param(p_cond_4129, 2, m_for_in_3762).
param(p_body_4130, 3, m_for_in_3762).
param(p_init_4131, 1, m_for_node_3763).
param(p_cond_4132, 2, m_for_node_3763).
param(p_incr_4133, 3, m_for_node_3763).
param(p_body_4134, 4, m_for_node_3763).
param(p_cond_4135, 1, m_switch_node_3764).
param(p_cases_4136, 2, m_switch_node_3764).
param(p_expr_4137, 1, m_case_node_3765).
param(p_body_4138, 2, m_case_node_3765).
param(p_body_4139, 1, m_default_case_3766).
param(p_name_4140, 1, m_label_3767).
param(p_stmt_4141, 2, m_label_3767).
param(p_name_4142, 1, m_label_name_3768).
param(p_try_body_4143, 1, m_try_finally_3769).
param(p_finally_body_4144, 2, m_try_finally_3769).
param(p_try_body_4145, 1, m_try_catch_3770).
param(p_catch_node_4146, 2, m_try_catch_3770).
param(p_try_body_4147, 1, m_try_catch_finally_3771).
param(p_catch_node_4148, 2, m_try_catch_finally_3771).
param(p_finally_body_4149, 3, m_try_catch_finally_3771).
param(p_expr_4150, 1, m_catch_node_3772).
param(p_body_4151, 2, m_catch_node_3772).
param(p_name_4152, 1, m_break_node_3774).
param(p_name_4153, 1, m_continue_node_3776).
param(p_target_4154, 1, m_call_3777).
param(p_args_4155, 2, m_call_3777).
param(p_target_4156, 1, m_new_node_3778).
param(p_args_4157, 2, m_new_node_3778).
param(p_name_4158, 1, m_name_3779).
param(p_target_4159, 1, m_getprop_3780).
param(p_prop_4160, 2, m_getprop_3780).
param(p_target_4161, 1, m_getelem_3781).
param(p_elem_4162, 2, m_getelem_3781).
param(p_target_4163, 1, m_assign_3782).
param(p_expr_4164, 2, m_assign_3782).
param(p_cond_4165, 1, m_hook_3783).
param(p_trueval_4166, 2, m_hook_3783).
param(p_falseval_4167, 3, m_hook_3783).
param(p_expr_1_4168, 1, m_comma_3784).
param(p_expr_2_4169, 2, m_comma_3784).
param(p_expr_1_4170, 1, m_and_3785).
param(p_expr_2_4171, 2, m_and_3785).
param(p_expr_1_4172, 1, m_or_3786).
param(p_expr_2_4173, 2, m_or_3786).
param(p_expr_1_4174, 1, m_not_3787).
param(p_expr_1_4175, 1, m_eq_3788).
param(p_expr_2_4176, 2, m_eq_3788).
param(p_expr_1_4177, 1, m_sheq_3789).
param(p_expr_2_4178, 2, m_sheq_3789).
param(p_expr_1_4179, 1, m_void_node_3790).
param(p_expr_1_4180, 1, m_neg_3791).
param(p_expr_1_4181, 1, m_pos_3792).
param(p_expr_1_4182, 1, m_add_3793).
param(p_expr_2_4183, 2, m_add_3793).
param(p_expr_1_4184, 1, m_sub_3794).
param(p_expr_2_4185, 2, m_sub_3794).
param(p_propdefs_4186, 1, m_objectlit_3795).
param(p_string_4187, 1, m_propdef_3796).
param(p_value_4188, 2, m_propdef_3796).
param(p_exprs_4189, 1, m_arraylit_3797).
param(p_expr_4190, 1, m_regexp_3798).
param(p_expr_4191, 1, m_regexp_3799).
param(p_flags_4192, 2, m_regexp_3799).
param(p_s_4193, 1, m_string_3800).
param(p_s_4194, 1, m_string_key_3801).
param(p_d_4195, 1, m_number_3802).
param(p_token_4196, 1, m_binary_op_3807).
param(p_expr_1_4197, 2, m_binary_op_3807).
param(p_expr_2_4198, 3, m_binary_op_3807).
param(p_token_4199, 1, m_unary_op_3808).
param(p_expr_4200, 2, m_unary_op_3808).
param(p_n_4201, 1, m_may_be_expression_or_empty_3809).
param(p_n_4202, 1, m_is_assignment_target_3810).
param(p_n_4203, 1, m_may_be_statement_no_return_3811).
param(p_n_4204, 1, m_may_be_statement_3812).
param(p_n_4205, 1, m_may_be_expression_3813).

%check_provides_1 - com.google.javascript.jscomp.CheckProvides
assign(f_missing_provide_warning_176, check_provides_1_expr1, line(check_provides_1, 37)).
method_invoc(check_provides_1_expr1, m_disabled_82, line(check_provides_1, 37)).
argument(check_provides_1_literal1, 1, check_provides_1_expr1).
argument(check_provides_1_literal2, 2, check_provides_1_expr1).
ref(t_diagnostic_type_2, check_provides_1_expr1, line(check_provides_1, 37)).
param(p_compiler_177, 1, m_check_provides_126).
param(p_check_level_178, 2, m_check_provides_126).
param(p_externs_179, 1, m_process_127).
param(p_root_180, 2, m_process_127).
param(p_script_root_181, 1, m_hot_swap_script_128).
param(p_original_root_182, 2, m_hot_swap_script_128).
param(p_convention_183, 1, m_check_provides_callback_129).
param(p_t_184, 1, m_visit_130).
param(p_n_185, 2, m_visit_130).
param(p_parent_186, 3, m_visit_130).
param(p_n_187, 1, m_visit_function_node_131).
param(p_parent_188, 2, m_visit_function_node_131).
param(p_t_189, 1, m_visit_script_node_132).
param(p_n_190, 2, m_visit_script_node_132).

%check_reg_exp_1 - com.google.javascript.jscomp.CheckRegExp
assign(f_regexp_reference_191, check_reg_exp_1_expr1, line(check_reg_exp_1, 32)).
assign(f_malformed_regexp_192, check_reg_exp_1_expr2, line(check_reg_exp_1, 36)).
method_invoc(check_reg_exp_1_expr2, m_warning_109, line(check_reg_exp_1, 36)).
argument(check_reg_exp_1_literal1, 1, check_reg_exp_1_expr2).
argument(check_reg_exp_1_literal2, 2, check_reg_exp_1_expr2).
ref(t_diagnostic_type_2, check_reg_exp_1_expr2, line(check_reg_exp_1, 36)).
param(p_compiler_193, 1, m_check_reg_exp_134).
param(p_externs_194, 1, m_process_135).
param(p_root_195, 2, m_process_135).
param(p_t_196, 1, m_visit_136).
param(p_n_197, 2, m_visit_136).
param(p_parent_198, 3, m_visit_136).

%scope_1 - com.google.javascript.jscomp.Scope
assign(f_vars_2288, scope_1_expr1, line(scope_1, 56)).
method_invoc(scope_1_expr1, m_linked_hash_map_1602, line(scope_1, 56)).
assign(f_declaratively_unbound_vars_without_types_2289, scope_1_expr2, line(scope_1, 66)).
method_invoc(scope_1_expr2, m__1603, line(scope_1, 67)).
param(p_var_2290, 1, m_apply_1604).
return(scope_1_expr3, m_apply_1604, line(scope_1, 69)).
method_invoc(scope_1_expr7, m_get_parent_node_1605, line(scope_1, 69)).
ref(p_var_2290, scope_1_expr7, line(scope_1, 69)).
assign(f_marked_escaped_2291, scope_1_literal2, line(scope_1, 110)).
assign(f_marked_assigned_exactly_once_2292, scope_1_literal3, line(scope_1, 113)).
param(p_inferred_2293, 1, m_var_1606).
param(p_name_2294, 2, m_var_1606).
param(p_name_node_2295, 3, m_var_1606).
param(p_type_2296, 4, m_var_1606).
param(p_scope_2297, 5, m_var_1606).
param(p_index_2298, 6, m_var_1606).
param(p_input_2299, 7, m_var_1606).
assign(f_name_2300, p_name_2294, line(scope_1, 122)).
assign(f_name_node_2301, p_name_node_2295, line(scope_1, 123)).
assign(f_type_2302, p_type_2296, line(scope_1, 124)).
assign(f_scope_2303, p_scope_2297, line(scope_1, 125)).
assign(f_index_2304, p_index_2298, line(scope_1, 126)).
assign(f_input_2305, p_input_2299, line(scope_1, 127)).
assign(f_type_inferred_2306, p_inferred_2293, line(scope_1, 128)).
return(scope_1_expr29, m_get_parent_node_1605, line(scope_1, 170)).
cond_expr(scope_1_expr30, scope_1_literal4, scope_1_expr31, line(scope_1, 170)).
method_invoc(scope_1_expr31, m_get_parent_840, line(scope_1, 170)).
ref(f_name_node_2301, scope_1_expr31, line(scope_1, 170)).
return(scope_1_expr32, m_get_initial_value_1620, line(scope_1, 227)).
method_invoc(scope_1_expr32, m_get_rvalue_of_lvalue_1494, line(scope_1, 227)).
argument(f_name_node_2301, 1, scope_1_expr32).
ref(t_node_util_50, scope_1_expr32, line(scope_1, 227)).
return(f_type_2302, m_get_type_1621, line(scope_1, 236)).
return(f_name_node_2301, m_get_name_node_1622, line(scope_1, 243)).
param(p_type_2307, 1, m_set_type_1624).
param(p_error_reporter_2308, 1, m_resolve_type_1625).
assign(f_type_2302, scope_1_expr35, line(scope_1, 268)).
method_invoc(scope_1_expr35, m_resolve_1626, line(scope_1, 268)).
argument(p_error_reporter_2308, 1, scope_1_expr35).
argument(f_scope_2303, 2, scope_1_expr35).
ref(f_type_2302, scope_1_expr35, line(scope_1, 268)).
param(p_other_2309, 1, m_equals_1630).
param(p_scope_2310, 1, m_arguments_1637).
param(p_other_2311, 1, m_equals_1638).
param(p_parent_2312, 1, m_scope_1640).
param(p_root_node_2313, 2, m_scope_1640).
method_invoc(scope_1_expr36, m_check_not_null_538, line(scope_1, 387)).
argument(p_parent_2312, 1, scope_1_expr36).
ref(t_preconditions_19, scope_1_expr36, line(scope_1, 387)).
method_invoc(scope_1_expr37, m_check_argument_1173, line(scope_1, 388)).
argument(scope_1_expr38, 1, scope_1_expr37).
ref(t_preconditions_19, scope_1_expr37, line(scope_1, 388)).
ref(p_parent_2312, q_root_node_64, line(scope_1, 388)).
assign(f_parent_2314, p_parent_2312, line(scope_1, 390)).
assign(f_root_node_2315, p_root_node_2313, line(scope_1, 391)).
assign(f_is_bottom_2316, scope_1_literal7, line(scope_1, 392)).
assign(f_depth_2317, scope_1_expr50, line(scope_1, 393)).
ref(p_parent_2312, q_depth_65, line(scope_1, 393)).
param(p_root_node_2318, 1, m_scope_1641).
param(p_is_bottom_2319, 2, m_scope_1641).
assign(f_parent_2314, scope_1_literal9, line(scope_1, 403)).
assign(f_root_node_2315, p_root_node_2318, line(scope_1, 404)).
assign(f_is_bottom_2316, p_is_bottom_2319, line(scope_1, 405)).
assign(f_depth_2317, scope_1_literal10, line(scope_1, 406)).
param(p_root_node_2320, 1, m_create_global_scope_1642).
return(scope_1_expr64, m_create_global_scope_1642, line(scope_1, 410)).
method_invoc(scope_1_expr64, m_scope_1641, line(scope_1, 410)).
argument(p_root_node_2320, 1, scope_1_expr64).
argument(scope_1_literal11, 2, scope_1_expr64).
param(p_root_node_2321, 1, m_create_lattice_bottom_1643).
return(scope_1_expr65, m_create_lattice_bottom_1643, line(scope_1, 414)).
method_invoc(scope_1_expr65, m_scope_1641, line(scope_1, 414)).
argument(p_root_node_2321, 1, scope_1_expr65).
argument(scope_1_literal12, 2, scope_1_expr65).
return(f_root_node_2315, m_get_root_node_1646, line(scope_1, 433)).
return(f_parent_2314, m_get_parent_1264, line(scope_1, 437)).
return(f_parent_2314, m_get_parent_scope_1648, line(scope_1, 450)).
param(p_name_2322, 1, m_declare_1650).
param(p_name_node_2323, 2, m_declare_1650).
param(p_type_2324, 3, m_declare_1650).
param(p_input_2325, 4, m_declare_1650).
param(p_name_2326, 1, m_declare_1651).
param(p_name_node_2327, 2, m_declare_1651).
param(p_type_2328, 3, m_declare_1651).
param(p_input_2329, 4, m_declare_1651).
param(p_inferred_2330, 5, m_declare_1651).
method_invoc(scope_1_expr66, m_check_state_536, line(scope_1, 495)).
argument(scope_1_expr67, 1, scope_1_expr66).
ref(t_preconditions_19, scope_1_expr66, line(scope_1, 495)).
method_invoc(scope_1_expr70, m_length_1652, line(scope_1, 495)).
ref(p_name_2326, scope_1_expr70, line(scope_1, 495)).
method_invoc(scope_1_expr71, m_check_state_536, line(scope_1, 498)).
argument(scope_1_expr72, 1, scope_1_expr71).
ref(t_preconditions_19, scope_1_expr71, line(scope_1, 498)).
method_invoc(scope_1_expr73, m_get_390, line(scope_1, 498)).
argument(p_name_2326, 1, scope_1_expr73).
ref(f_vars_2288, scope_1_expr73, line(scope_1, 498)).
assign(v_var_2331, scope_1_expr74, line(scope_1, 500)).
method_invoc(scope_1_expr74, m_var_1606, line(scope_1, 500)).
argument(p_inferred_2330, 1, scope_1_expr74).
argument(p_name_2326, 2, scope_1_expr74).
argument(p_name_node_2327, 3, scope_1_expr74).
argument(p_type_2328, 4, scope_1_expr74).
argument(scope_1_expr75, 5, scope_1_expr74).
argument(scope_1_expr76, 6, scope_1_expr74).
argument(p_input_2329, 7, scope_1_expr74).
method_invoc(scope_1_expr76, m_size_1653, line(scope_1, 500)).
ref(f_vars_2288, scope_1_expr76, line(scope_1, 500)).
method_invoc(scope_1_expr77, m_put_395, line(scope_1, 501)).
argument(p_name_2326, 1, scope_1_expr77).
argument(v_var_2331, 2, scope_1_expr77).
ref(f_vars_2288, scope_1_expr77, line(scope_1, 501)).
return(v_var_2331, m_declare_1651, line(scope_1, 502)).
param(p_var_2332, 1, m_undeclare_1654).
param(p_name_2333, 1, m_get_slot_1655).
return(scope_1_expr78, m_get_slot_1655, line(scope_1, 517)).
method_invoc(scope_1_expr78, m_get_var_1656, line(scope_1, 517)).
argument(p_name_2333, 1, scope_1_expr78).
param(p_name_2334, 1, m_get_own_slot_1657).
param(p_name_2335, 1, m_get_var_1656).
assign(v_var_2336, scope_1_expr79, line(scope_1, 529)).
method_invoc(scope_1_expr79, m_get_390, line(scope_1, 529)).
argument(p_name_2335, 1, scope_1_expr79).
ref(f_vars_2288, scope_1_expr79, line(scope_1, 529)).
return(v_var_2336, m_get_var_1656, line(scope_1, 531)).
return(scope_1_expr82, m_get_var_1656, line(scope_1, 533)).
method_invoc(scope_1_expr82, m_get_var_1656, line(scope_1, 533)).
argument(p_name_2335, 1, scope_1_expr82).
ref(f_parent_2314, scope_1_expr82, line(scope_1, 533)).
return(scope_1_literal18, m_get_var_1656, line(scope_1, 535)).
param(p_name_2337, 1, m_is_declared_1659).
param(p_recurse_2338, 2, m_is_declared_1659).
assign(v_scope_2339, scope_1_expr83, line(scope_1, 553)).
method_invoc(scope_1_expr84, m_contains_key_818, line(scope_1, 554)).
argument(p_name_2337, 1, scope_1_expr84).
ref(f_vars_2288, scope_1_expr84, line(scope_1, 554)).
ref(v_scope_2339, q_vars_66, line(scope_1, 554)).
return(scope_1_literal19, m_is_declared_1659, line(scope_1, 555)).
ref(v_scope_2339, q_parent_67, line(scope_1, 557)).
return(scope_1_literal21, m_is_declared_1659, line(scope_1, 560)).
return(scope_1_expr87, m_get_vars_1660, line(scope_1, 567)).
method_invoc(scope_1_expr87, m_iterator_1661, line(scope_1, 567)).
ref(scope_1_expr88, scope_1_expr87, line(scope_1, 567)).
method_invoc(scope_1_expr88, m_values_1662, line(scope_1, 567)).
ref(f_vars_2288, scope_1_expr88, line(scope_1, 567)).
param(p_var_2340, 1, m_get_references_1664).
param(p_var_2341, 1, m_get_scope_1665).
return(scope_1_expr89, m_is_global_1096, line(scope_1, 603)).
return(scope_1_expr90, m_get_declaratively_unbound_vars_without_types_1669, line(scope_1, 617)).
method_invoc(scope_1_expr90, m_filter_1670, line(scope_1, 617)).
argument(scope_1_expr91, 1, scope_1_expr90).
argument(f_declaratively_unbound_vars_without_types_2289, 2, scope_1_expr90).
ref(t_iterators_60, scope_1_expr90, line(scope_1, 617)).

%script_runtime_1 - com.google.javascript.rhino.ScriptRuntime
param(p_c_4626, 1, m_is_jsline_terminator_4242).
assign(f_na_n_4627, script_runtime_1_expr1, line(script_runtime_1, 81)).
method_invoc(script_runtime_1_expr1, m_long_bits_to_double_4243, line(script_runtime_1, 81)).
argument(script_runtime_1_literal1, 1, script_runtime_1_expr1).
ref(t_double_106, script_runtime_1_expr1, line(script_runtime_1, 81)).
assign(f_negative_zero_4628, script_runtime_1_expr2, line(script_runtime_1, 85)).
method_invoc(script_runtime_1_expr2, m_long_bits_to_double_4243, line(script_runtime_1, 85)).
argument(script_runtime_1_literal2, 1, script_runtime_1_expr2).
ref(t_double_106, script_runtime_1_expr2, line(script_runtime_1, 85)).
param(p_s_4629, 1, m_string_to_number_4244).
param(p_start_4630, 2, m_string_to_number_4244).
param(p_radix_4631, 3, m_string_to_number_4244).
param(p_s_4632, 1, m_escape_string_4245).
param(p_s_4633, 1, m_escape_string_4246).
param(p_escape_quote_4634, 2, m_escape_string_4246).
param(p_s_4635, 1, m_is_valid_identifier_name_4247).
param(p_str_4636, 1, m_test_uint32_string_4248).
param(p_s_4637, 1, m_is_special_property_4249).
param(p_message_id_4638, 1, m_get_message0_4250).
return(script_runtime_1_expr3, m_get_message0_4250, line(script_runtime_1, 367)).
method_invoc(script_runtime_1_expr3, m_get_message_4251, line(script_runtime_1, 367)).
argument(p_message_id_4638, 1, script_runtime_1_expr3).
argument(script_runtime_1_literal3, 2, script_runtime_1_expr3).
param(p_message_id_4639, 1, m_get_message1_4252).
param(p_arg_1_4640, 2, m_get_message1_4252).
param(p_message_id_4641, 1, m_get_message_4251).
param(p_arguments_4642, 2, m_get_message_4251).
assign(v_default_resource_4643, script_runtime_1_literal4, line(script_runtime_1, 380)).
assign(v_locale_4644, script_runtime_1_expr4, line(script_runtime_1, 383)).
method_invoc(script_runtime_1_expr4, m_get_default_4253, line(script_runtime_1, 383)).
ref(t_locale_107, script_runtime_1_expr4, line(script_runtime_1, 383)).
assign(v_rb_4645, script_runtime_1_expr5, line(script_runtime_1, 386)).
method_invoc(script_runtime_1_expr5, m_get_bundle_4254, line(script_runtime_1, 386)).
argument(v_default_resource_4643, 1, script_runtime_1_expr5).
argument(v_locale_4644, 2, script_runtime_1_expr5).
ref(t_resource_bundle_98, script_runtime_1_expr5, line(script_runtime_1, 386)).
assign(v_format_string_4646, script_runtime_1_expr7, line(script_runtime_1, 390)).
method_invoc(script_runtime_1_expr7, m_get_string_3563, line(script_runtime_1, 390)).
argument(p_message_id_4641, 1, script_runtime_1_expr7).
ref(v_rb_4645, script_runtime_1_expr7, line(script_runtime_1, 390)).
assign(v_formatter_4647, script_runtime_1_expr8, line(script_runtime_1, 402)).
method_invoc(script_runtime_1_expr8, m_message_format_4255, line(script_runtime_1, 402)).
argument(v_format_string_4646, 1, script_runtime_1_expr8).
return(script_runtime_1_expr9, m_get_message_4251, line(script_runtime_1, 403)).
method_invoc(script_runtime_1_expr9, m_format_1163, line(script_runtime_1, 403)).
argument(p_arguments_4642, 1, script_runtime_1_expr9).
ref(v_formatter_4647, script_runtime_1_expr9, line(script_runtime_1, 403)).

%control_structure_check_1 - com.google.javascript.jscomp.ControlStructureCheck
assign(f_use_of_with_1137, control_structure_check_1_expr1, line(control_structure_check_1, 31)).
method_invoc(control_structure_check_1_expr1, m_warning_109, line(control_structure_check_1, 31)).
argument(control_structure_check_1_literal1, 1, control_structure_check_1_expr1).
argument(control_structure_check_1_literal2, 2, control_structure_check_1_expr1).
ref(t_diagnostic_type_2, control_structure_check_1_expr1, line(control_structure_check_1, 31)).
param(p_compiler_1138, 1, m_control_structure_check_885).
param(p_externs_1139, 1, m_process_886).
param(p_root_1140, 2, m_process_886).
param(p_script_root_1141, 1, m_hot_swap_script_887).
param(p_original_root_1142, 2, m_hot_swap_script_887).
param(p_node_1143, 1, m_check_888).
param(p_n_1144, 1, m_report_889).
param(p_error_1145, 2, m_report_889).

%syntactic_scope_creator_1 - com.google.javascript.jscomp.SyntacticScopeCreator
assign(f_var_multiply_declared_error_2482, syntactic_scope_creator_1_expr1, line(syntactic_scope_creator_1, 43)).
assign(f_var_arguments_shadowed_error_2483, syntactic_scope_creator_1_expr2, line(syntactic_scope_creator_1, 48)).
param(p_compiler_2484, 1, m_syntactic_scope_creator_1285).
assign(f_compiler_2485, p_compiler_2484, line(syntactic_scope_creator_1, 57)).
assign(f_redeclaration_handler_2486, syntactic_scope_creator_1_expr8, line(syntactic_scope_creator_1, 58)).
method_invoc(syntactic_scope_creator_1_expr8, m_default_redeclaration_handler_1758, line(syntactic_scope_creator_1, 58)).
param(p_compiler_2487, 1, m_syntactic_scope_creator_1759).
param(p_redeclaration_handler_2488, 2, m_syntactic_scope_creator_1759).
param(p_n_2489, 1, m_create_scope_1760).
param(p_parent_2490, 2, m_create_scope_1760).
param(p_n_2491, 1, m_scan_root_1761).
param(p_parent_2492, 2, m_scan_root_1761).
param(p_n_2493, 1, m_scan_vars_1762).
param(p_parent_2494, 2, m_scan_vars_1762).
param(p_s_2495, 1, m_on_redeclaration_1763).
param(p_name_2496, 2, m_on_redeclaration_1763).
param(p_n_2497, 3, m_on_redeclaration_1763).
param(p_input_2498, 4, m_on_redeclaration_1763).
param(p_s_2499, 1, m_on_redeclaration_1764).
param(p_name_2500, 2, m_on_redeclaration_1764).
param(p_n_2501, 3, m_on_redeclaration_1764).
param(p_input_2502, 4, m_on_redeclaration_1764).
param(p_n_2503, 1, m_declare_var_1765).
param(p_n_2504, 1, m_has_duplicate_declaration_suppression_1766).
param(p_orig_var_2505, 2, m_has_duplicate_declaration_suppression_1766).
param(p_compiler_2506, 1, m_generate_untyped_top_scope_1767).

%logger_error_manager_1 - com.google.javascript.jscomp.LoggerErrorManager
param(p_formatter_1722, 1, m_logger_error_manager_1254).
param(p_logger_1723, 2, m_logger_error_manager_1254).
assign(f_formatter_1724, p_formatter_1722, line(logger_error_manager_1, 38)).
assign(f_logger_1725, p_logger_1723, line(logger_error_manager_1, 39)).
param(p_logger_1726, 1, m_logger_error_manager_1255).
param(p_level_1727, 1, m_println_1256).
param(p_error_1728, 2, m_println_1256).

%strict_mode_check_1 - com.google.javascript.jscomp.StrictModeCheck
assign(f_unknown_variable_2442, strict_mode_check_1_expr1, line(strict_mode_check_1, 40)).
method_invoc(strict_mode_check_1_expr1, m_warning_109, line(strict_mode_check_1, 40)).
argument(strict_mode_check_1_literal1, 1, strict_mode_check_1_expr1).
argument(strict_mode_check_1_literal2, 2, strict_mode_check_1_expr1).
ref(t_diagnostic_type_2, strict_mode_check_1_expr1, line(strict_mode_check_1, 40)).
assign(f_eval_use_2443, strict_mode_check_1_expr2, line(strict_mode_check_1, 43)).
method_invoc(strict_mode_check_1_expr2, m_error_1, line(strict_mode_check_1, 43)).
argument(strict_mode_check_1_literal3, 1, strict_mode_check_1_expr2).
argument(strict_mode_check_1_literal4, 2, strict_mode_check_1_expr2).
ref(t_diagnostic_type_2, strict_mode_check_1_expr2, line(strict_mode_check_1, 43)).
assign(f_eval_declaration_2444, strict_mode_check_1_expr3, line(strict_mode_check_1, 46)).
method_invoc(strict_mode_check_1_expr3, m_warning_109, line(strict_mode_check_1, 46)).
argument(strict_mode_check_1_literal5, 1, strict_mode_check_1_expr3).
argument(strict_mode_check_1_literal6, 2, strict_mode_check_1_expr3).
ref(t_diagnostic_type_2, strict_mode_check_1_expr3, line(strict_mode_check_1, 46)).
assign(f_eval_assignment_2445, strict_mode_check_1_expr4, line(strict_mode_check_1, 50)).
method_invoc(strict_mode_check_1_expr4, m_warning_109, line(strict_mode_check_1, 50)).
argument(strict_mode_check_1_literal7, 1, strict_mode_check_1_expr4).
argument(strict_mode_check_1_literal8, 2, strict_mode_check_1_expr4).
ref(t_diagnostic_type_2, strict_mode_check_1_expr4, line(strict_mode_check_1, 50)).
assign(f_arguments_declaration_2446, strict_mode_check_1_expr5, line(strict_mode_check_1, 54)).
method_invoc(strict_mode_check_1_expr5, m_warning_109, line(strict_mode_check_1, 54)).
argument(strict_mode_check_1_literal9, 1, strict_mode_check_1_expr5).
argument(strict_mode_check_1_literal10, 2, strict_mode_check_1_expr5).
ref(t_diagnostic_type_2, strict_mode_check_1_expr5, line(strict_mode_check_1, 54)).
assign(f_arguments_assignment_2447, strict_mode_check_1_expr6, line(strict_mode_check_1, 58)).
method_invoc(strict_mode_check_1_expr6, m_warning_109, line(strict_mode_check_1, 58)).
argument(strict_mode_check_1_literal11, 1, strict_mode_check_1_expr6).
argument(strict_mode_check_1_literal12, 2, strict_mode_check_1_expr6).
ref(t_diagnostic_type_2, strict_mode_check_1_expr6, line(strict_mode_check_1, 58)).
assign(f_delete_variable_2448, strict_mode_check_1_expr7, line(strict_mode_check_1, 62)).
method_invoc(strict_mode_check_1_expr7, m_warning_109, line(strict_mode_check_1, 62)).
argument(strict_mode_check_1_literal13, 1, strict_mode_check_1_expr7).
argument(strict_mode_check_1_expr8, 2, strict_mode_check_1_expr7).
ref(t_diagnostic_type_2, strict_mode_check_1_expr7, line(strict_mode_check_1, 62)).
assign(f_illegal_name_2449, strict_mode_check_1_expr9, line(strict_mode_check_1, 67)).
method_invoc(strict_mode_check_1_expr9, m_error_1, line(strict_mode_check_1, 67)).
argument(strict_mode_check_1_literal14, 1, strict_mode_check_1_expr9).
argument(strict_mode_check_1_literal15, 2, strict_mode_check_1_expr9).
ref(t_diagnostic_type_2, strict_mode_check_1_expr9, line(strict_mode_check_1, 67)).
assign(f_duplicate_object_key_2450, strict_mode_check_1_expr10, line(strict_mode_check_1, 71)).
method_invoc(strict_mode_check_1_expr10, m_warning_109, line(strict_mode_check_1, 71)).
argument(strict_mode_check_1_literal16, 1, strict_mode_check_1_expr10).
argument(strict_mode_check_1_literal17, 2, strict_mode_check_1_expr10).
ref(t_diagnostic_type_2, strict_mode_check_1_expr10, line(strict_mode_check_1, 71)).
param(p_compiler_2451, 1, m_strict_mode_check_1742).
param(p_compiler_2452, 1, m_strict_mode_check_1743).
param(p_no_var_check_2453, 2, m_strict_mode_check_1743).
param(p_no_caja_checks_2454, 3, m_strict_mode_check_1743).
param(p_externs_2455, 1, m_process_1744).
param(p_root_2456, 2, m_process_1744).
param(p_t_2457, 1, m_visit_1745).
param(p_n_2458, 2, m_visit_1745).
param(p_parent_2459, 3, m_visit_1745).
param(p_n_2460, 1, m_is_declaration_1746).
param(p_t_2461, 1, m_check_name_use_1747).
param(p_n_2462, 2, m_check_name_use_1747).
param(p_t_2463, 1, m_check_assignment_1748).
param(p_n_2464, 2, m_check_assignment_1748).
param(p_t_2465, 1, m_check_delete_1749).
param(p_n_2466, 2, m_check_delete_1749).
param(p_t_2467, 1, m_check_object_literal_1750).
param(p_n_2468, 2, m_check_object_literal_1750).
param(p_t_2469, 1, m_check_label_1751).
param(p_n_2470, 2, m_check_label_1751).
param(p_t_2471, 1, m_visit_1752).
param(p_n_2472, 2, m_visit_1752).
param(p_parent_2473, 3, m_visit_1752).
param(p_t_2474, 1, m_check_declaration_1753).
param(p_n_2475, 2, m_check_declaration_1753).
param(p_t_2476, 1, m_check_property_1754).
param(p_n_2477, 2, m_check_property_1754).

%typed_scope_creator_1 - com.google.javascript.jscomp.TypedScopeCreator
assign(f_delegate_proxy_suffix_3062, typed_scope_creator_1_expr1, line(typed_scope_creator_1, 101)).
assign(f_malformed_typedef_3063, typed_scope_creator_1_expr2, line(typed_scope_creator_1, 104)).
assign(f_enum_initializer_3064, typed_scope_creator_1_expr3, line(typed_scope_creator_1, 109)).
assign(f_ctor_initializer_3065, typed_scope_creator_1_expr4, line(typed_scope_creator_1, 114)).
assign(f_iface_initializer_3066, typed_scope_creator_1_expr5, line(typed_scope_creator_1, 119)).
assign(f_constructor_expected_3067, typed_scope_creator_1_expr6, line(typed_scope_creator_1, 124)).
assign(f_unknown_lends_3068, typed_scope_creator_1_expr7, line(typed_scope_creator_1, 129)).
assign(f_lends_on_non_object_3069, typed_scope_creator_1_expr8, line(typed_scope_creator_1, 134)).
assign(f_delegate_proxy_prototypes_3070, typed_scope_creator_1_expr9, line(typed_scope_creator_1, 144)).
method_invoc(typed_scope_creator_1_expr9, m_new_array_list_329, line(typed_scope_creator_1, 144)).
ref(t_lists_22, typed_scope_creator_1_expr9, line(typed_scope_creator_1, 144)).
assign(f_delegate_calling_conventions_3071, typed_scope_creator_1_expr10, line(typed_scope_creator_1, 145)).
assign(f_function_analysis_results_3072, typed_scope_creator_1_expr11, line(typed_scope_creator_1, 149)).
param(p_node_3073, 1, m_deferred_set_type_3116).
param(p_type_3074, 2, m_deferred_set_type_3116).
method_invoc(typed_scope_creator_1_expr12, m_check_not_null_538, line(typed_scope_creator_1, 164)).
argument(p_node_3073, 1, typed_scope_creator_1_expr12).
ref(t_preconditions_19, typed_scope_creator_1_expr12, line(typed_scope_creator_1, 164)).
method_invoc(typed_scope_creator_1_expr13, m_check_not_null_538, line(typed_scope_creator_1, 165)).
argument(p_type_3074, 1, typed_scope_creator_1_expr13).
ref(t_preconditions_19, typed_scope_creator_1_expr13, line(typed_scope_creator_1, 165)).
assign(f_node_3075, p_node_3073, line(typed_scope_creator_1, 166)).
assign(f_type_3076, p_type_3074, line(typed_scope_creator_1, 167)).
method_invoc(typed_scope_creator_1_expr20, m_set_jstype_3117, line(typed_scope_creator_1, 171)).
argument(p_type_3074, 1, typed_scope_creator_1_expr20).
ref(p_node_3073, typed_scope_creator_1_expr20, line(typed_scope_creator_1, 171)).
param(p_scope_3077, 1, m_resolve_3118).
method_invoc(typed_scope_creator_1_expr21, m_set_jstype_3117, line(typed_scope_creator_1, 175)).
argument(typed_scope_creator_1_expr22, 1, typed_scope_creator_1_expr21).
ref(f_node_3075, typed_scope_creator_1_expr21, line(typed_scope_creator_1, 175)).
method_invoc(typed_scope_creator_1_expr22, m_resolve_1626, line(typed_scope_creator_1, 175)).
argument(f_type_parsing_error_reporter_3078, 1, typed_scope_creator_1_expr22).
argument(p_scope_3077, 2, typed_scope_creator_1_expr22).
ref(f_type_3076, typed_scope_creator_1_expr22, line(typed_scope_creator_1, 175)).
param(p_compiler_3079, 1, m_typed_scope_creator_1775).
method_invoc(typed_scope_creator_1_expr23, m_typed_scope_creator_3119, line(typed_scope_creator_1, 180)).
argument(p_compiler_3079, 1, typed_scope_creator_1_expr23).
argument(typed_scope_creator_1_expr24, 2, typed_scope_creator_1_expr23).
method_invoc(typed_scope_creator_1_expr24, m_get_coding_convention_12, line(typed_scope_creator_1, 180)).
ref(p_compiler_3079, typed_scope_creator_1_expr24, line(typed_scope_creator_1, 180)).
param(p_compiler_3080, 1, m_typed_scope_creator_3119).
param(p_coding_convention_3081, 2, m_typed_scope_creator_3119).
assign(f_compiler_3082, p_compiler_3080, line(typed_scope_creator_1, 185)).
assign(f_validator_3083, typed_scope_creator_1_expr30, line(typed_scope_creator_1, 186)).
method_invoc(typed_scope_creator_1_expr30, m_get_type_validator_18, line(typed_scope_creator_1, 186)).
ref(p_compiler_3080, typed_scope_creator_1_expr30, line(typed_scope_creator_1, 186)).
assign(f_coding_convention_3084, p_coding_convention_3081, line(typed_scope_creator_1, 187)).
assign(f_type_registry_3085, typed_scope_creator_1_expr37, line(typed_scope_creator_1, 188)).
method_invoc(typed_scope_creator_1_expr37, m_get_type_registry_7, line(typed_scope_creator_1, 188)).
ref(p_compiler_3080, typed_scope_creator_1_expr37, line(typed_scope_creator_1, 188)).
assign(f_type_parsing_error_reporter_3078, typed_scope_creator_1_expr41, line(typed_scope_creator_1, 189)).
method_invoc(typed_scope_creator_1_expr41, m_get_error_reporter_3120, line(typed_scope_creator_1, 189)).
ref(f_type_registry_3085, typed_scope_creator_1_expr41, line(typed_scope_creator_1, 189)).
assign(f_unknown_type_3086, typed_scope_creator_1_expr45, line(typed_scope_creator_1, 190)).
method_invoc(typed_scope_creator_1_expr45, m_get_native_object_type_3010, line(typed_scope_creator_1, 190)).
argument(f_unknown_type_2754, 1, typed_scope_creator_1_expr45).
ref(f_type_registry_3085, typed_scope_creator_1_expr45, line(typed_scope_creator_1, 190)).
param(p_root_3087, 1, m_create_scope_3121).
param(p_parent_3088, 2, m_create_scope_3121).
assign(v_new_scope_3089, typed_scope_creator_1_literal1, line(typed_scope_creator_1, 202)).
assign(v_scope_builder_3090, typed_scope_creator_1_literal2, line(typed_scope_creator_1, 203)).
assign(v_global_this_3091, typed_scope_creator_1_expr48, line(typed_scope_creator_1, 205)).
method_invoc(typed_scope_creator_1_expr49, m_set_jstype_3117, line(typed_scope_creator_1, 210)).
argument(v_global_this_3091, 1, typed_scope_creator_1_expr49).
ref(p_root_3087, typed_scope_creator_1_expr49, line(typed_scope_creator_1, 210)).
method_invoc(typed_scope_creator_1_expr50, m_set_jstype_3117, line(typed_scope_creator_1, 211)).
argument(v_global_this_3091, 1, typed_scope_creator_1_expr50).
ref(typed_scope_creator_1_expr51, typed_scope_creator_1_expr50, line(typed_scope_creator_1, 211)).
method_invoc(typed_scope_creator_1_expr51, m_get_first_child_828, line(typed_scope_creator_1, 211)).
ref(p_root_3087, typed_scope_creator_1_expr51, line(typed_scope_creator_1, 211)).
method_invoc(typed_scope_creator_1_expr52, m_set_jstype_3117, line(typed_scope_creator_1, 212)).
argument(v_global_this_3091, 1, typed_scope_creator_1_expr52).
ref(typed_scope_creator_1_expr53, typed_scope_creator_1_expr52, line(typed_scope_creator_1, 212)).
method_invoc(typed_scope_creator_1_expr53, m_get_last_child_1132, line(typed_scope_creator_1, 212)).
ref(p_root_3087, typed_scope_creator_1_expr53, line(typed_scope_creator_1, 212)).
method_invoc(typed_scope_creator_1_expr54, m_process_3122, line(typed_scope_creator_1, 215)).
argument(typed_scope_creator_1_expr55, 1, typed_scope_creator_1_expr54).
argument(typed_scope_creator_1_expr56, 2, typed_scope_creator_1_expr54).
ref(typed_scope_creator_1_expr57, typed_scope_creator_1_expr54, line(typed_scope_creator_1, 215)).
assign(typed_scope_creator_1_expr57, typed_scope_creator_1_expr58, line(typed_scope_creator_1, 215)).
method_invoc(typed_scope_creator_1_expr58, m_first_order_function_analyzer_3123, line(typed_scope_creator_1, 215)).
argument(f_compiler_3082, 1, typed_scope_creator_1_expr58).
argument(f_function_analysis_results_3072, 2, typed_scope_creator_1_expr58).
assign(v_new_scope_3089, typed_scope_creator_1_expr60, line(typed_scope_creator_1, 219)).
method_invoc(typed_scope_creator_1_expr60, m_create_initial_scope_3124, line(typed_scope_creator_1, 219)).
argument(p_root_3087, 1, typed_scope_creator_1_expr60).
assign(v_global_scope_builder_3092, typed_scope_creator_1_expr61, line(typed_scope_creator_1, 221)).
method_invoc(typed_scope_creator_1_expr61, m_global_scope_builder_3125, line(typed_scope_creator_1, 221)).
argument(v_new_scope_3089, 1, typed_scope_creator_1_expr61).
assign(v_scope_builder_3090, v_global_scope_builder_3092, line(typed_scope_creator_1, 222)).
method_invoc(typed_scope_creator_1_expr63, m_traverse_814, line(typed_scope_creator_1, 223)).
argument(f_compiler_3082, 1, typed_scope_creator_1_expr63).
argument(p_root_3087, 2, typed_scope_creator_1_expr63).
argument(v_scope_builder_3090, 3, typed_scope_creator_1_expr63).
ref(t_node_traversal_34, typed_scope_creator_1_expr63, line(typed_scope_creator_1, 223)).
assign(v_new_scope_3089, typed_scope_creator_1_expr65, line(typed_scope_creator_1, 225)).
method_invoc(typed_scope_creator_1_expr65, m_scope_1640, line(typed_scope_creator_1, 225)).
argument(p_parent_3088, 1, typed_scope_creator_1_expr65).
argument(p_root_3087, 2, typed_scope_creator_1_expr65).
assign(v_local_scope_builder_3093, typed_scope_creator_1_expr66, line(typed_scope_creator_1, 226)).
method_invoc(typed_scope_creator_1_expr66, m_local_scope_builder_3126, line(typed_scope_creator_1, 226)).
argument(v_new_scope_3089, 1, typed_scope_creator_1_expr66).
assign(v_scope_builder_3090, v_local_scope_builder_3093, line(typed_scope_creator_1, 227)).
method_invoc(typed_scope_creator_1_expr68, m_build_3127, line(typed_scope_creator_1, 228)).
ref(v_local_scope_builder_3093, typed_scope_creator_1_expr68, line(typed_scope_creator_1, 228)).
method_invoc(typed_scope_creator_1_expr69, m_resolve_stub_declarations_3128, line(typed_scope_creator_1, 231)).
ref(v_scope_builder_3090, typed_scope_creator_1_expr69, line(typed_scope_creator_1, 231)).
method_invoc(typed_scope_creator_1_expr70, m_resolve_types_3129, line(typed_scope_creator_1, 232)).
ref(v_scope_builder_3090, typed_scope_creator_1_expr70, line(typed_scope_creator_1, 232)).
ref(q_non_extern_functions_79, typed_scope_creator_1_stmt32, line(typed_scope_creator_1, 237)).
ref(v_scope_builder_3090, q_non_extern_functions_79, line(typed_scope_creator_1, 237)).
assign(v_type_3095, typed_scope_creator_1_expr71, line(typed_scope_creator_1, 238)).
method_invoc(typed_scope_creator_1_expr71, m_get_jstype_1808, line(typed_scope_creator_1, 238)).
ref(v_function_node_3094, typed_scope_creator_1_expr71, line(typed_scope_creator_1, 238)).
method_invoc(typed_scope_creator_1_expr74, m_is_function_type_3130, line(typed_scope_creator_1, 239)).
ref(v_type_3095, typed_scope_creator_1_expr74, line(typed_scope_creator_1, 239)).
assign(v_fn_type_3096, typed_scope_creator_1_expr75, line(typed_scope_creator_1, 240)).
method_invoc(typed_scope_creator_1_expr75, m_to_maybe_function_type_3131, line(typed_scope_creator_1, 240)).
ref(v_type_3095, typed_scope_creator_1_expr75, line(typed_scope_creator_1, 240)).
assign(v_fn_this_type_3097, typed_scope_creator_1_expr76, line(typed_scope_creator_1, 241)).
method_invoc(typed_scope_creator_1_expr76, m_get_type_of_this_3132, line(typed_scope_creator_1, 241)).
ref(v_fn_type_3096, typed_scope_creator_1_expr76, line(typed_scope_creator_1, 241)).
method_invoc(typed_scope_creator_1_expr78, m_is_unknown_type_3133, line(typed_scope_creator_1, 242)).
ref(v_fn_this_type_3097, typed_scope_creator_1_expr78, line(typed_scope_creator_1, 242)).
method_invoc(typed_scope_creator_1_expr80, m_define_delegate_proxy_prototype_properties_225, line(typed_scope_creator_1, 250)).
argument(f_type_registry_3085, 1, typed_scope_creator_1_expr80).
argument(v_new_scope_3089, 2, typed_scope_creator_1_expr80).
argument(f_delegate_proxy_prototypes_3070, 3, typed_scope_creator_1_expr80).
argument(f_delegate_calling_conventions_3071, 4, typed_scope_creator_1_expr80).
ref(f_coding_convention_3084, typed_scope_creator_1_expr80, line(typed_scope_creator_1, 250)).
return(v_new_scope_3089, m_create_scope_3121, line(typed_scope_creator_1, 254)).
param(p_global_scope_3098, 1, m_patch_global_scope_3134).
param(p_script_root_3099, 2, m_patch_global_scope_3134).
param(p_root_3100, 1, m_create_initial_scope_3124).
method_invoc(typed_scope_creator_1_expr81, m_traverse_814, line(typed_scope_creator_1, 312)).
argument(f_compiler_3082, 1, typed_scope_creator_1_expr81).
argument(p_root_3100, 2, typed_scope_creator_1_expr81).
argument(typed_scope_creator_1_expr82, 3, typed_scope_creator_1_expr81).
ref(t_node_traversal_34, typed_scope_creator_1_expr81, line(typed_scope_creator_1, 312)).
assign(v_s_3101, typed_scope_creator_1_expr83, line(typed_scope_creator_1, 315)).
method_invoc(typed_scope_creator_1_expr83, m_create_global_scope_1642, line(typed_scope_creator_1, 315)).
argument(p_root_3100, 1, typed_scope_creator_1_expr83).
ref(t_scope_72, typed_scope_creator_1_expr83, line(typed_scope_creator_1, 315)).
method_invoc(typed_scope_creator_1_expr84, m_declare_native_function_type_3135, line(typed_scope_creator_1, 316)).
argument(v_s_3101, 1, typed_scope_creator_1_expr84).
argument(f_array_function_type_3102, 2, typed_scope_creator_1_expr84).
method_invoc(typed_scope_creator_1_expr85, m_declare_native_function_type_3135, line(typed_scope_creator_1, 317)).
argument(v_s_3101, 1, typed_scope_creator_1_expr85).
argument(f_boolean_object_function_type_3103, 2, typed_scope_creator_1_expr85).
method_invoc(typed_scope_creator_1_expr86, m_declare_native_function_type_3135, line(typed_scope_creator_1, 318)).
argument(v_s_3101, 1, typed_scope_creator_1_expr86).
argument(f_date_function_type_3104, 2, typed_scope_creator_1_expr86).
method_invoc(typed_scope_creator_1_expr87, m_declare_native_function_type_3135, line(typed_scope_creator_1, 319)).
argument(v_s_3101, 1, typed_scope_creator_1_expr87).
argument(f_error_function_type_3105, 2, typed_scope_creator_1_expr87).
method_invoc(typed_scope_creator_1_expr88, m_declare_native_function_type_3135, line(typed_scope_creator_1, 320)).
argument(v_s_3101, 1, typed_scope_creator_1_expr88).
argument(f_eval_error_function_type_3106, 2, typed_scope_creator_1_expr88).
method_invoc(typed_scope_creator_1_expr89, m_declare_native_function_type_3135, line(typed_scope_creator_1, 321)).
argument(v_s_3101, 1, typed_scope_creator_1_expr89).
argument(f_function_function_type_3107, 2, typed_scope_creator_1_expr89).
method_invoc(typed_scope_creator_1_expr90, m_declare_native_function_type_3135, line(typed_scope_creator_1, 322)).
argument(v_s_3101, 1, typed_scope_creator_1_expr90).
argument(f_number_object_function_type_3108, 2, typed_scope_creator_1_expr90).
method_invoc(typed_scope_creator_1_expr91, m_declare_native_function_type_3135, line(typed_scope_creator_1, 323)).
argument(v_s_3101, 1, typed_scope_creator_1_expr91).
argument(f_object_function_type_3109, 2, typed_scope_creator_1_expr91).
method_invoc(typed_scope_creator_1_expr92, m_declare_native_function_type_3135, line(typed_scope_creator_1, 324)).
argument(v_s_3101, 1, typed_scope_creator_1_expr92).
argument(f_range_error_function_type_3110, 2, typed_scope_creator_1_expr92).
method_invoc(typed_scope_creator_1_expr93, m_declare_native_function_type_3135, line(typed_scope_creator_1, 325)).
argument(v_s_3101, 1, typed_scope_creator_1_expr93).
argument(f_reference_error_function_type_3111, 2, typed_scope_creator_1_expr93).
method_invoc(typed_scope_creator_1_expr94, m_declare_native_function_type_3135, line(typed_scope_creator_1, 326)).
argument(v_s_3101, 1, typed_scope_creator_1_expr94).
argument(f_regexp_function_type_3112, 2, typed_scope_creator_1_expr94).
method_invoc(typed_scope_creator_1_expr95, m_declare_native_function_type_3135, line(typed_scope_creator_1, 327)).
argument(v_s_3101, 1, typed_scope_creator_1_expr95).
argument(f_string_object_function_type_3113, 2, typed_scope_creator_1_expr95).
method_invoc(typed_scope_creator_1_expr96, m_declare_native_function_type_3135, line(typed_scope_creator_1, 328)).
argument(v_s_3101, 1, typed_scope_creator_1_expr96).
argument(f_syntax_error_function_type_3114, 2, typed_scope_creator_1_expr96).
method_invoc(typed_scope_creator_1_expr97, m_declare_native_function_type_3135, line(typed_scope_creator_1, 329)).
argument(v_s_3101, 1, typed_scope_creator_1_expr97).
argument(f_type_error_function_type_3115, 2, typed_scope_creator_1_expr97).
method_invoc(typed_scope_creator_1_expr98, m_declare_native_function_type_3135, line(typed_scope_creator_1, 330)).
argument(v_s_3101, 1, typed_scope_creator_1_expr98).
argument(f_uri_error_function_type_3116, 2, typed_scope_creator_1_expr98).
method_invoc(typed_scope_creator_1_expr99, m_declare_native_value_type_3136, line(typed_scope_creator_1, 331)).
argument(v_s_3101, 1, typed_scope_creator_1_expr99).
argument(typed_scope_creator_1_literal6, 2, typed_scope_creator_1_expr99).
argument(f_void_type_1494, 3, typed_scope_creator_1_expr99).
method_invoc(typed_scope_creator_1_expr100, m_declare_native_value_type_3136, line(typed_scope_creator_1, 336)).
argument(v_s_3101, 1, typed_scope_creator_1_expr100).
argument(typed_scope_creator_1_literal7, 2, typed_scope_creator_1_expr100).
argument(f_function_instance_type_3117, 3, typed_scope_creator_1_expr100).
return(v_s_3101, m_create_initial_scope_3124, line(typed_scope_creator_1, 338)).
param(p_scope_3118, 1, m_declare_native_function_type_3135).
param(p_t_id_3119, 2, m_declare_native_function_type_3135).
assign(v_t_3120, typed_scope_creator_1_expr101, line(typed_scope_creator_1, 342)).
method_invoc(typed_scope_creator_1_expr101, m_get_native_function_type_3137, line(typed_scope_creator_1, 342)).
argument(p_t_id_3119, 1, typed_scope_creator_1_expr101).
ref(f_type_registry_3085, typed_scope_creator_1_expr101, line(typed_scope_creator_1, 342)).
method_invoc(typed_scope_creator_1_expr102, m_declare_native_type_3138, line(typed_scope_creator_1, 343)).
argument(p_scope_3118, 1, typed_scope_creator_1_expr102).
argument(typed_scope_creator_1_expr103, 2, typed_scope_creator_1_expr102).
argument(v_t_3120, 3, typed_scope_creator_1_expr102).
method_invoc(typed_scope_creator_1_expr103, m_get_reference_name_3139, line(typed_scope_creator_1, 343)).
ref(typed_scope_creator_1_expr104, typed_scope_creator_1_expr103, line(typed_scope_creator_1, 343)).
method_invoc(typed_scope_creator_1_expr104, m_get_instance_type_1100, line(typed_scope_creator_1, 343)).
ref(v_t_3120, typed_scope_creator_1_expr104, line(typed_scope_creator_1, 343)).
method_invoc(typed_scope_creator_1_expr105, m_declare_native_type_3138, line(typed_scope_creator_1, 344)).
argument(p_scope_3118, 1, typed_scope_creator_1_expr105).
argument(typed_scope_creator_1_expr106, 2, typed_scope_creator_1_expr105).
argument(typed_scope_creator_1_expr107, 3, typed_scope_creator_1_expr105).
param(p_scope_3121, 1, m_declare_native_value_type_3136).
param(p_name_3122, 2, m_declare_native_value_type_3136).
param(p_t_id_3123, 3, m_declare_native_value_type_3136).
method_invoc(typed_scope_creator_1_expr108, m_declare_native_type_3138, line(typed_scope_creator_1, 350)).
argument(p_scope_3121, 1, typed_scope_creator_1_expr108).
argument(p_name_3122, 2, typed_scope_creator_1_expr108).
argument(typed_scope_creator_1_expr109, 3, typed_scope_creator_1_expr108).
method_invoc(typed_scope_creator_1_expr109, m_get_native_type_1094, line(typed_scope_creator_1, 350)).
argument(p_t_id_3123, 1, typed_scope_creator_1_expr109).
ref(f_type_registry_3085, typed_scope_creator_1_expr109, line(typed_scope_creator_1, 350)).
param(p_scope_3124, 1, m_declare_native_type_3138).
param(p_name_3125, 2, m_declare_native_type_3138).
param(p_t_3126, 3, m_declare_native_type_3138).
method_invoc(typed_scope_creator_1_expr110, m_declare_1651, line(typed_scope_creator_1, 354)).
argument(p_name_3125, 1, typed_scope_creator_1_expr110).
argument(typed_scope_creator_1_literal8, 2, typed_scope_creator_1_expr110).
argument(p_t_3126, 3, typed_scope_creator_1_expr110).
argument(typed_scope_creator_1_literal9, 4, typed_scope_creator_1_expr110).
argument(typed_scope_creator_1_literal10, 5, typed_scope_creator_1_expr110).
ref(p_scope_3124, typed_scope_creator_1_expr110, line(typed_scope_creator_1, 354)).
param(p_registry_3127, 1, m_discover_enums_and_typedefs_3140).
assign(f_registry_3128, p_registry_3127, line(typed_scope_creator_1, 362)).
param(p_t_3129, 1, m_visit_3141).
param(p_node_3130, 2, m_visit_3141).
param(p_parent_3131, 3, m_visit_3141).
assign(v_name_node_3132, typed_scope_creator_1_literal11, line(typed_scope_creator_1, 367)).
method_invoc(typed_scope_creator_1_expr114, m_get_type_824, line(typed_scope_creator_1, 368)).
ref(p_node_3130, typed_scope_creator_1_expr114, line(typed_scope_creator_1, 368)).
param(p_name_node_3133, 1, m_identify_name_node_3142).
param(p_value_node_3134, 2, m_identify_name_node_3142).
param(p_info_3135, 3, m_identify_name_node_3142).
param(p_native_type_3136, 1, m_get_native_type_3143).
return(typed_scope_creator_1_expr115, m_get_native_type_3143, line(typed_scope_creator_1, 406)).
method_invoc(typed_scope_creator_1_expr115, m_get_native_type_1094, line(typed_scope_creator_1, 406)).
argument(p_native_type_3136, 1, typed_scope_creator_1_expr115).
ref(f_type_registry_3085, typed_scope_creator_1_expr115, line(typed_scope_creator_1, 406)).
assign(f_deferred_set_types_3137, typed_scope_creator_1_expr116, line(typed_scope_creator_1, 417)).
assign(f_non_extern_functions_3138, typed_scope_creator_1_expr117, line(typed_scope_creator_1, 423)).
method_invoc(typed_scope_creator_1_expr117, m_new_array_list_329, line(typed_scope_creator_1, 423)).
ref(t_lists_22, typed_scope_creator_1_expr117, line(typed_scope_creator_1, 423)).
assign(f_lent_object_literals_3139, typed_scope_creator_1_literal12, line(typed_scope_creator_1, 435)).
assign(f_stub_declarations_3140, typed_scope_creator_1_expr118, line(typed_scope_creator_1, 443)).
assign(f_source_name_3141, typed_scope_creator_1_literal13, line(typed_scope_creator_1, 449)).
param(p_scope_3142, 1, m_abstract_scope_builder_3144).
assign(f_scope_3143, p_scope_3142, line(typed_scope_creator_1, 457)).
param(p_node_3144, 1, m_set_deferred_type_3145).
param(p_type_3145, 2, m_set_deferred_type_3145).
method_invoc(typed_scope_creator_1_expr122, m_add_330, line(typed_scope_creator_1, 461)).
argument(typed_scope_creator_1_expr123, 1, typed_scope_creator_1_expr122).
ref(f_deferred_set_types_3137, typed_scope_creator_1_expr122, line(typed_scope_creator_1, 461)).
method_invoc(typed_scope_creator_1_expr123, m_deferred_set_type_3116, line(typed_scope_creator_1, 461)).
argument(p_node_3144, 1, typed_scope_creator_1_expr123).
argument(p_type_3145, 2, typed_scope_creator_1_expr123).
ref(f_deferred_set_types_3137, typed_scope_creator_1_stmt72, line(typed_scope_creator_1, 466)).
method_invoc(typed_scope_creator_1_expr124, m_resolve_3118, line(typed_scope_creator_1, 467)).
argument(f_scope_3143, 1, typed_scope_creator_1_expr124).
ref(v_deferred_3146, typed_scope_creator_1_expr124, line(typed_scope_creator_1, 467)).
assign(v_vars_3147, typed_scope_creator_1_expr125, line(typed_scope_creator_1, 471)).
method_invoc(typed_scope_creator_1_expr125, m_get_vars_1660, line(typed_scope_creator_1, 471)).
ref(f_scope_3143, typed_scope_creator_1_expr125, line(typed_scope_creator_1, 471)).
method_invoc(typed_scope_creator_1_expr126, m_has_next_1315, line(typed_scope_creator_1, 472)).
ref(v_vars_3147, typed_scope_creator_1_expr126, line(typed_scope_creator_1, 472)).
method_invoc(typed_scope_creator_1_expr127, m_resolve_type_1625, line(typed_scope_creator_1, 473)).
argument(f_type_parsing_error_reporter_3078, 1, typed_scope_creator_1_expr127).
ref(typed_scope_creator_1_expr128, typed_scope_creator_1_expr127, line(typed_scope_creator_1, 473)).
method_invoc(typed_scope_creator_1_expr128, m_next_901, line(typed_scope_creator_1, 473)).
ref(v_vars_3147, typed_scope_creator_1_expr128, line(typed_scope_creator_1, 473)).
method_invoc(typed_scope_creator_1_expr129, m_resolve_types_in_scope_3073, line(typed_scope_creator_1, 478)).
argument(f_scope_3143, 1, typed_scope_creator_1_expr129).
ref(f_type_registry_3085, typed_scope_creator_1_expr129, line(typed_scope_creator_1, 478)).
param(p_t_3148, 1, m_should_traverse_3146).
param(p_n_3149, 2, m_should_traverse_3146).
param(p_parent_3150, 3, m_should_traverse_3146).
assign(f_input_id_3151, typed_scope_creator_1_expr131, line(typed_scope_creator_1, 483)).
method_invoc(typed_scope_creator_1_expr131, m_get_input_id_1325, line(typed_scope_creator_1, 483)).
ref(p_t_3148, typed_scope_creator_1_expr131, line(typed_scope_creator_1, 483)).
method_invoc(typed_scope_creator_1_expr133, m_is_function_842, line(typed_scope_creator_1, 484)).
ref(p_n_3149, typed_scope_creator_1_expr133, line(typed_scope_creator_1, 484)).
method_invoc(typed_scope_creator_1_expr134, m_check_not_null_538, line(typed_scope_creator_1, 486)).
argument(f_input_id_3151, 1, typed_scope_creator_1_expr134).
ref(t_preconditions_19, typed_scope_creator_1_expr134, line(typed_scope_creator_1, 486)).
assign(f_source_name_3141, typed_scope_creator_1_expr136, line(typed_scope_creator_1, 487)).
method_invoc(typed_scope_creator_1_expr136, m_get_source_name_1481, line(typed_scope_creator_1, 487)).
argument(p_n_3149, 1, typed_scope_creator_1_expr136).
ref(t_node_util_50, typed_scope_creator_1_expr136, line(typed_scope_creator_1, 487)).
assign(v_descend_3152, typed_scope_creator_1_expr137, line(typed_scope_creator_1, 492)).
method_invoc(typed_scope_creator_1_expr142, m_is_function_842, line(typed_scope_creator_1, 492)).
ref(p_parent_3150, typed_scope_creator_1_expr142, line(typed_scope_creator_1, 492)).
method_invoc(typed_scope_creator_1_expr143, m_is_statement_parent_1404, line(typed_scope_creator_1, 498)).
argument(p_n_3149, 1, typed_scope_creator_1_expr143).
ref(t_node_util_50, typed_scope_creator_1_expr143, line(typed_scope_creator_1, 498)).
assign(v_child_3153, typed_scope_creator_1_expr145, line(typed_scope_creator_1, 499)).
method_invoc(typed_scope_creator_1_expr145, m_get_first_child_828, line(typed_scope_creator_1, 499)).
ref(p_n_3149, typed_scope_creator_1_expr145, line(typed_scope_creator_1, 499)).
assign(v_child_3153, typed_scope_creator_1_expr148, line(typed_scope_creator_1, 501)).
method_invoc(typed_scope_creator_1_expr148, m_get_next_827, line(typed_scope_creator_1, 501)).
ref(v_child_3153, typed_scope_creator_1_expr148, line(typed_scope_creator_1, 501)).
method_invoc(typed_scope_creator_1_expr149, m_is_hoisted_function_declaration_1417, line(typed_scope_creator_1, 502)).
argument(v_child_3153, 1, typed_scope_creator_1_expr149).
ref(t_node_util_50, typed_scope_creator_1_expr149, line(typed_scope_creator_1, 502)).
method_invoc(typed_scope_creator_1_expr150, m_define_function_literal_3147, line(typed_scope_creator_1, 503)).
argument(v_child_3153, 1, typed_scope_creator_1_expr150).
return(v_descend_3152, m_should_traverse_3146, line(typed_scope_creator_1, 509)).
param(p_t_3154, 1, m_visit_3148).
param(p_n_3155, 2, m_visit_3148).
param(p_parent_3156, 3, m_visit_3148).
assign(f_input_id_3151, typed_scope_creator_1_expr152, line(typed_scope_creator_1, 514)).
method_invoc(typed_scope_creator_1_expr152, m_get_input_id_1325, line(typed_scope_creator_1, 514)).
ref(p_t_3154, typed_scope_creator_1_expr152, line(typed_scope_creator_1, 514)).
method_invoc(typed_scope_creator_1_expr153, m_attach_literal_types_3149, line(typed_scope_creator_1, 515)).
argument(p_t_3154, 1, typed_scope_creator_1_expr153).
argument(p_n_3155, 2, typed_scope_creator_1_expr153).
method_invoc(typed_scope_creator_1_expr154, m_get_type_824, line(typed_scope_creator_1, 517)).
ref(p_n_3155, typed_scope_creator_1_expr154, line(typed_scope_creator_1, 517)).
method_invoc(typed_scope_creator_1_expr157, m_get_input_1303, line(typed_scope_creator_1, 524)).
ref(p_t_3154, typed_scope_creator_1_expr157, line(typed_scope_creator_1, 524)).
method_invoc(typed_scope_creator_1_expr159, m_is_extern_559, line(typed_scope_creator_1, 524)).
ref(typed_scope_creator_1_expr160, typed_scope_creator_1_expr159, line(typed_scope_creator_1, 524)).
method_invoc(typed_scope_creator_1_expr160, m_get_input_1303, line(typed_scope_creator_1, 524)).
ref(p_t_3154, typed_scope_creator_1_expr160, line(typed_scope_creator_1, 524)).
method_invoc(typed_scope_creator_1_expr161, m_add_330, line(typed_scope_creator_1, 525)).
argument(p_n_3155, 1, typed_scope_creator_1_expr161).
ref(f_non_extern_functions_3138, typed_scope_creator_1_expr161, line(typed_scope_creator_1, 525)).
method_invoc(typed_scope_creator_1_expr163, m_is_hoisted_function_declaration_1417, line(typed_scope_creator_1, 529)).
argument(p_n_3155, 1, typed_scope_creator_1_expr163).
ref(t_node_util_50, typed_scope_creator_1_expr163, line(typed_scope_creator_1, 529)).
method_invoc(typed_scope_creator_1_expr167, m_get_parent_840, line(typed_scope_creator_1, 562)).
ref(p_n_3155, typed_scope_creator_1_expr167, line(typed_scope_creator_1, 562)).
method_invoc(typed_scope_creator_1_expr168, m_is_statement_1403, line(typed_scope_creator_1, 562)).
argument(p_n_3155, 1, typed_scope_creator_1_expr168).
ref(t_node_util_50, typed_scope_creator_1_expr168, line(typed_scope_creator_1, 562)).
param(p_t_3157, 1, m_attach_literal_types_3149).
param(p_n_3158, 2, m_attach_literal_types_3149).
method_invoc(typed_scope_creator_1_expr169, m_get_type_824, line(typed_scope_creator_1, 572)).
ref(p_n_3158, typed_scope_creator_1_expr169, line(typed_scope_creator_1, 572)).
param(p_object_lit_3159, 1, m_define_object_literal_3150).
param(p_obj_lit_3160, 1, m_process_object_lit_properties_3151).
param(p_obj_lit_type_3161, 2, m_process_object_lit_properties_3151).
param(p_declare_on_owner_3162, 3, m_process_object_lit_properties_3151).
param(p_source_name_3163, 1, m_get_declared_type_in_annotation_3152).
param(p_node_3164, 2, m_get_declared_type_in_annotation_3152).
param(p_info_3165, 3, m_get_declared_type_in_annotation_3152).
param(p_n_3166, 1, m_assert_definition_node_3153).
param(p_type_3167, 2, m_assert_definition_node_3153).
method_invoc(typed_scope_creator_1_expr170, m_check_state_536, line(typed_scope_creator_1, 732)).
argument(typed_scope_creator_1_expr171, 1, typed_scope_creator_1_expr170).
ref(t_preconditions_19, typed_scope_creator_1_expr170, line(typed_scope_creator_1, 732)).
method_invoc(typed_scope_creator_1_expr172, m_check_state_536, line(typed_scope_creator_1, 733)).
argument(typed_scope_creator_1_expr173, 1, typed_scope_creator_1_expr172).
ref(t_preconditions_19, typed_scope_creator_1_expr172, line(typed_scope_creator_1, 733)).
method_invoc(typed_scope_creator_1_expr174, m_get_type_824, line(typed_scope_creator_1, 733)).
ref(p_n_3166, typed_scope_creator_1_expr174, line(typed_scope_creator_1, 733)).
param(p_n_3168, 1, m_define_catch_3154).
param(p_n_3169, 1, m_define_var_3155).
param(p_n_3170, 1, m_define_function_literal_3147).
method_invoc(typed_scope_creator_1_expr175, m_assert_definition_node_3153, line(typed_scope_creator_1, 771)).
argument(p_n_3170, 1, typed_scope_creator_1_expr175).
argument(q_function_80, 2, typed_scope_creator_1_expr175).
ref(t_token_51, q_function_80, line(typed_scope_creator_1, 771)).
assign(v_l_value_3171, typed_scope_creator_1_expr176, line(typed_scope_creator_1, 775)).
method_invoc(typed_scope_creator_1_expr176, m_get_best_lvalue_1493, line(typed_scope_creator_1, 775)).
argument(p_n_3170, 1, typed_scope_creator_1_expr176).
ref(t_node_util_50, typed_scope_creator_1_expr176, line(typed_scope_creator_1, 775)).
assign(v_info_3172, typed_scope_creator_1_expr177, line(typed_scope_creator_1, 776)).
method_invoc(typed_scope_creator_1_expr177, m_get_best_jsdoc_info_1491, line(typed_scope_creator_1, 776)).
argument(p_n_3170, 1, typed_scope_creator_1_expr177).
ref(t_node_util_50, typed_scope_creator_1_expr177, line(typed_scope_creator_1, 776)).
assign(v_function_name_3173, typed_scope_creator_1_expr178, line(typed_scope_creator_1, 777)).
method_invoc(typed_scope_creator_1_expr178, m_get_best_lvalue_name_1496, line(typed_scope_creator_1, 777)).
argument(v_l_value_3171, 1, typed_scope_creator_1_expr178).
ref(t_node_util_50, typed_scope_creator_1_expr178, line(typed_scope_creator_1, 777)).
assign(v_function_type_3174, typed_scope_creator_1_expr179, line(typed_scope_creator_1, 778)).
method_invoc(typed_scope_creator_1_expr180, m_set_deferred_type_3145, line(typed_scope_creator_1, 782)).
argument(p_n_3170, 1, typed_scope_creator_1_expr180).
argument(v_function_type_3174, 2, typed_scope_creator_1_expr180).
method_invoc(typed_scope_creator_1_expr181, m_is_function_declaration_1416, line(typed_scope_creator_1, 787)).
argument(p_n_3170, 1, typed_scope_creator_1_expr181).
ref(t_node_util_50, typed_scope_creator_1_expr181, line(typed_scope_creator_1, 787)).
method_invoc(typed_scope_creator_1_expr182, m_define_slot_3156, line(typed_scope_creator_1, 788)).
argument(typed_scope_creator_1_expr183, 1, typed_scope_creator_1_expr182).
argument(p_n_3170, 2, typed_scope_creator_1_expr182).
argument(v_function_type_3174, 3, typed_scope_creator_1_expr182).
method_invoc(typed_scope_creator_1_expr183, m_get_first_child_828, line(typed_scope_creator_1, 788)).
ref(p_n_3170, typed_scope_creator_1_expr183, line(typed_scope_creator_1, 788)).
param(p_name_3175, 1, m_define_name_3157).
param(p_var_3176, 2, m_define_name_3157).
param(p_info_3177, 3, m_define_name_3157).
param(p_type_3178, 1, m_should_use_function_literal_type_3158).
param(p_info_3179, 2, m_should_use_function_literal_type_3158).
param(p_l_value_3180, 3, m_should_use_function_literal_type_3158).
param(p_r_value_3181, 1, m_create_function_type_from_nodes_3159).
param(p_name_3182, 2, m_create_function_type_from_nodes_3159).
param(p_info_3183, 3, m_create_function_type_from_nodes_3159).
param(p_lvalue_node_3184, 4, m_create_function_type_from_nodes_3159).
assign(v_function_type_3185, typed_scope_creator_1_literal19, line(typed_scope_creator_1, 859)).
method_invoc(typed_scope_creator_1_expr187, m_is_qualified_name_3160, line(typed_scope_creator_1, 862)).
ref(p_r_value_3181, typed_scope_creator_1_expr187, line(typed_scope_creator_1, 862)).
method_invoc(typed_scope_creator_1_expr188, m_is_global_1096, line(typed_scope_creator_1, 862)).
ref(f_scope_3143, typed_scope_creator_1_expr188, line(typed_scope_creator_1, 862)).
assign(v_error_root_3186, typed_scope_creator_1_expr190, line(typed_scope_creator_1, 879)).
cond_expr(typed_scope_creator_1_expr191, p_lvalue_node_3184, p_r_value_3181, line(typed_scope_creator_1, 879)).
assign(v_is_fn_literal_3187, typed_scope_creator_1_expr192, line(typed_scope_creator_1, 880)).
assign(v_fn_root_3188, typed_scope_creator_1_expr193, line(typed_scope_creator_1, 882)).
cond_expr(v_is_fn_literal_3187, p_r_value_3181, typed_scope_creator_1_literal23, line(typed_scope_creator_1, 882)).
assign(v_parameters_node_3189, typed_scope_creator_1_expr194, line(typed_scope_creator_1, 883)).
cond_expr(v_is_fn_literal_3187, typed_scope_creator_1_expr195, typed_scope_creator_1_literal24, line(typed_scope_creator_1, 883)).
assign(v_fn_block_3190, typed_scope_creator_1_expr196, line(typed_scope_creator_1, 885)).
cond_expr(v_is_fn_literal_3187, typed_scope_creator_1_expr197, typed_scope_creator_1_literal25, line(typed_scope_creator_1, 885)).
method_invoc(typed_scope_creator_1_expr197, m_get_next_827, line(typed_scope_creator_1, 885)).
ref(v_parameters_node_3189, typed_scope_creator_1_expr197, line(typed_scope_creator_1, 885)).
method_invoc(typed_scope_creator_1_expr200, m_has_type_3022, line(typed_scope_creator_1, 887)).
ref(p_info_3183, typed_scope_creator_1_expr200, line(typed_scope_creator_1, 887)).
assign(v_owner_node_3191, typed_scope_creator_1_expr202, line(typed_scope_creator_1, 900)).
method_invoc(typed_scope_creator_1_expr202, m_get_best_lvalue_owner_1495, line(typed_scope_creator_1, 900)).
argument(p_lvalue_node_3184, 1, typed_scope_creator_1_expr202).
ref(t_node_util_50, typed_scope_creator_1_expr202, line(typed_scope_creator_1, 900)).
assign(v_owner_name_3192, typed_scope_creator_1_expr203, line(typed_scope_creator_1, 901)).
method_invoc(typed_scope_creator_1_expr203, m_get_best_lvalue_name_1496, line(typed_scope_creator_1, 901)).
argument(v_owner_node_3191, 1, typed_scope_creator_1_expr203).
ref(t_node_util_50, typed_scope_creator_1_expr203, line(typed_scope_creator_1, 901)).
assign(v_owner_var_3193, typed_scope_creator_1_literal28, line(typed_scope_creator_1, 902)).
assign(v_prop_name_3194, typed_scope_creator_1_literal29, line(typed_scope_creator_1, 903)).
assign(v_owner_type_3195, typed_scope_creator_1_literal30, line(typed_scope_creator_1, 904)).
assign(v_overridden_type_3196, typed_scope_creator_1_literal32, line(typed_scope_creator_1, 915)).
assign(v_builder_3197, typed_scope_creator_1_expr208, line(typed_scope_creator_1, 920)).
assign(v_searched_for_this_type_3198, typed_scope_creator_1_literal35, line(typed_scope_creator_1, 930)).
method_invoc(typed_scope_creator_1_expr212, m_is_function_prototype_type_3161, line(typed_scope_creator_1, 931)).
ref(v_owner_type_3195, typed_scope_creator_1_expr212, line(typed_scope_creator_1, 931)).
method_invoc(typed_scope_creator_1_expr215, m_is_this_3162, line(typed_scope_creator_1, 936)).
ref(v_owner_node_3191, typed_scope_creator_1_expr215, line(typed_scope_creator_1, 936)).
method_invoc(typed_scope_creator_1_expr217, m_infer_this_type_1079, line(typed_scope_creator_1, 950)).
argument(p_info_3183, 1, typed_scope_creator_1_expr217).
ref(v_builder_3197, typed_scope_creator_1_expr217, line(typed_scope_creator_1, 950)).
assign(v_function_type_3185, typed_scope_creator_1_expr219, line(typed_scope_creator_1, 953)).
method_invoc(typed_scope_creator_1_expr219, m_build_and_register_1092, line(typed_scope_creator_1, 953)).
ref(typed_scope_creator_1_expr220, typed_scope_creator_1_expr219, line(typed_scope_creator_1, 953)).
method_invoc(typed_scope_creator_1_expr220, m_infer_parameter_types_1082, line(typed_scope_creator_1, 953)).
argument(v_parameters_node_3189, 1, typed_scope_creator_1_expr220).
argument(p_info_3183, 2, typed_scope_creator_1_expr220).
ref(v_builder_3197, typed_scope_creator_1_expr220, line(typed_scope_creator_1, 953)).
return(v_function_type_3185, m_create_function_type_from_nodes_3159, line(typed_scope_creator_1, 960)).
param(p_owner_type_3199, 1, m_find_overridden_function_3163).
param(p_prop_name_3200, 2, m_find_overridden_function_3163).
param(p_r_value_3201, 1, m_create_enum_type_from_nodes_3164).
param(p_name_3202, 2, m_create_enum_type_from_nodes_3164).
param(p_info_3203, 3, m_create_enum_type_from_nodes_3164).
param(p_l_value_node_3204, 4, m_create_enum_type_from_nodes_3164).
param(p_name_3205, 1, m_define_slot_3156).
param(p_parent_3206, 2, m_define_slot_3156).
param(p_type_3207, 3, m_define_slot_3156).
method_invoc(typed_scope_creator_1_expr221, m_define_slot_3165, line(typed_scope_creator_1, 1060)).
argument(p_name_3205, 1, typed_scope_creator_1_expr221).
argument(p_parent_3206, 2, typed_scope_creator_1_expr221).
argument(p_type_3207, 3, typed_scope_creator_1_expr221).
argument(typed_scope_creator_1_expr222, 4, typed_scope_creator_1_expr221).
param(p_n_3208, 1, m_define_slot_3165).
param(p_parent_3209, 2, m_define_slot_3165).
param(p_type_3210, 3, m_define_slot_3165).
param(p_inferred_3211, 4, m_define_slot_3165).
method_invoc(typed_scope_creator_1_expr223, m_check_argument_1173, line(typed_scope_creator_1, 1076)).
argument(typed_scope_creator_1_expr224, 1, typed_scope_creator_1_expr223).
ref(t_preconditions_19, typed_scope_creator_1_expr223, line(typed_scope_creator_1, 1076)).
method_invoc(typed_scope_creator_1_expr226, m_is_name_3166, line(typed_scope_creator_1, 1080)).
ref(p_n_3208, typed_scope_creator_1_expr226, line(typed_scope_creator_1, 1080)).
method_invoc(typed_scope_creator_1_expr227, m_check_argument_1173, line(typed_scope_creator_1, 1081)).
argument(typed_scope_creator_1_expr228, 1, typed_scope_creator_1_expr227).
ref(t_preconditions_19, typed_scope_creator_1_expr227, line(typed_scope_creator_1, 1081)).
method_invoc(typed_scope_creator_1_expr229, m_define_slot_3167, line(typed_scope_creator_1, 1092)).
argument(p_n_3208, 1, typed_scope_creator_1_expr229).
argument(p_parent_3209, 2, typed_scope_creator_1_expr229).
argument(typed_scope_creator_1_expr230, 3, typed_scope_creator_1_expr229).
argument(p_type_3210, 4, typed_scope_creator_1_expr229).
argument(p_inferred_3211, 5, typed_scope_creator_1_expr229).
method_invoc(typed_scope_creator_1_expr230, m_get_qualified_name_1497, line(typed_scope_creator_1, 1092)).
ref(p_n_3208, typed_scope_creator_1_expr230, line(typed_scope_creator_1, 1092)).
param(p_n_3212, 1, m_define_slot_3167).
param(p_parent_3213, 2, m_define_slot_3167).
param(p_variable_name_3214, 3, m_define_slot_3167).
param(p_type_3215, 4, m_define_slot_3167).
param(p_inferred_3216, 5, m_define_slot_3167).
method_invoc(typed_scope_creator_1_expr231, m_check_argument_1173, line(typed_scope_creator_1, 1108)).
argument(typed_scope_creator_1_expr232, 1, typed_scope_creator_1_expr231).
ref(t_preconditions_19, typed_scope_creator_1_expr231, line(typed_scope_creator_1, 1108)).
method_invoc(typed_scope_creator_1_expr233, m_is_empty_1098, line(typed_scope_creator_1, 1108)).
ref(p_variable_name_3214, typed_scope_creator_1_expr233, line(typed_scope_creator_1, 1108)).
assign(v_is_global_var_3217, typed_scope_creator_1_expr234, line(typed_scope_creator_1, 1110)).
method_invoc(typed_scope_creator_1_expr235, m_is_name_3166, line(typed_scope_creator_1, 1110)).
ref(p_n_3212, typed_scope_creator_1_expr235, line(typed_scope_creator_1, 1110)).
method_invoc(typed_scope_creator_1_expr236, m_is_global_1096, line(typed_scope_creator_1, 1110)).
ref(f_scope_3143, typed_scope_creator_1_expr236, line(typed_scope_creator_1, 1110)).
assign(v_should_declare_on_global_this_3218, typed_scope_creator_1_expr237, line(typed_scope_creator_1, 1111)).
assign(v_scope_to_declare_in_3219, f_scope_3143, line(typed_scope_creator_1, 1119)).
method_invoc(typed_scope_creator_1_expr239, m_is_get_prop_1390, line(typed_scope_creator_1, 1120)).
ref(p_n_3212, typed_scope_creator_1_expr239, line(typed_scope_creator_1, 1120)).
method_invoc(typed_scope_creator_1_expr241, m_is_global_1096, line(typed_scope_creator_1, 1120)).
ref(f_scope_3143, typed_scope_creator_1_expr241, line(typed_scope_creator_1, 1120)).
assign(v_is_extern_3220, typed_scope_creator_1_expr242, line(typed_scope_creator_1, 1133)).
method_invoc(typed_scope_creator_1_expr242, m_is_from_externs_1128, line(typed_scope_creator_1, 1133)).
ref(p_n_3212, typed_scope_creator_1_expr242, line(typed_scope_creator_1, 1133)).
assign(v_new_var_3221, typed_scope_creator_1_literal40, line(typed_scope_creator_1, 1134)).
assign(v_input_3222, typed_scope_creator_1_expr243, line(typed_scope_creator_1, 1137)).
method_invoc(typed_scope_creator_1_expr243, m_get_input_2, line(typed_scope_creator_1, 1137)).
argument(f_input_id_3151, 1, typed_scope_creator_1_expr243).
ref(f_compiler_3082, typed_scope_creator_1_expr243, line(typed_scope_creator_1, 1137)).
method_invoc(typed_scope_creator_1_expr244, m_is_declared_1659, line(typed_scope_creator_1, 1138)).
argument(p_variable_name_3214, 1, typed_scope_creator_1_expr244).
argument(typed_scope_creator_1_literal41, 2, typed_scope_creator_1_expr244).
ref(v_scope_to_declare_in_3219, typed_scope_creator_1_expr244, line(typed_scope_creator_1, 1138)).
method_invoc(typed_scope_creator_1_expr246, m_set_deferred_type_3145, line(typed_scope_creator_1, 1144)).
argument(p_n_3212, 1, typed_scope_creator_1_expr246).
argument(p_type_3215, 2, typed_scope_creator_1_expr246).
assign(v_new_var_3221, typed_scope_creator_1_expr248, line(typed_scope_creator_1, 1147)).
assign(v_fn_type_3223, typed_scope_creator_1_expr250, line(typed_scope_creator_1, 1162)).
method_invoc(typed_scope_creator_1_expr250, m_to_maybe_function_type_1807, line(typed_scope_creator_1, 1162)).
argument(p_type_3215, 1, typed_scope_creator_1_expr250).
ref(t_jstype_66, typed_scope_creator_1_expr250, line(typed_scope_creator_1, 1162)).
assign(typed_scope_creator_1_expr254, typed_scope_creator_1_expr255, line(typed_scope_creator_1, 1172)).
method_invoc(typed_scope_creator_1_expr256, m_is_constructor_1809, line(typed_scope_creator_1, 1172)).
ref(v_fn_type_3223, typed_scope_creator_1_expr256, line(typed_scope_creator_1, 1172)).
method_invoc(typed_scope_creator_1_expr257, m_is_interface_1104, line(typed_scope_creator_1, 1172)).
ref(v_fn_type_3223, typed_scope_creator_1_expr257, line(typed_scope_creator_1, 1172)).
method_invoc(typed_scope_creator_1_expr258, m_finish_constructor_definition_3168, line(typed_scope_creator_1, 1174)).
argument(p_n_3212, 1, typed_scope_creator_1_expr258).
argument(p_variable_name_3214, 2, typed_scope_creator_1_expr258).
argument(v_fn_type_3223, 3, typed_scope_creator_1_expr258).
argument(v_scope_to_declare_in_3219, 4, typed_scope_creator_1_expr258).
argument(v_input_3222, 5, typed_scope_creator_1_expr258).
argument(v_new_var_3221, 6, typed_scope_creator_1_expr258).
assign(v_global_this_3224, typed_scope_creator_1_expr259, line(typed_scope_creator_1, 1180)).
method_invoc(typed_scope_creator_1_expr260, m_define_declared_property_3169, line(typed_scope_creator_1, 1189)).
argument(p_variable_name_3214, 1, typed_scope_creator_1_expr260).
argument(p_type_3215, 2, typed_scope_creator_1_expr260).
argument(p_n_3212, 3, typed_scope_creator_1_expr260).
ref(v_global_this_3224, typed_scope_creator_1_expr260, line(typed_scope_creator_1, 1189)).
method_invoc(typed_scope_creator_1_expr264, m_equals_3170, line(typed_scope_creator_1, 1193)).
argument(p_variable_name_3214, 1, typed_scope_creator_1_expr264).
ref(typed_scope_creator_1_literal44, typed_scope_creator_1_expr264, line(typed_scope_creator_1, 1193)).
param(p_n_3225, 1, m_finish_constructor_definition_3168).
param(p_variable_name_3226, 2, m_finish_constructor_definition_3168).
param(p_fn_type_3227, 3, m_finish_constructor_definition_3168).
param(p_scope_to_declare_in_3228, 4, m_finish_constructor_definition_3168).
param(p_input_3229, 5, m_finish_constructor_definition_3168).
param(p_new_var_3230, 6, m_finish_constructor_definition_3168).
assign(v_super_class_ctor_3231, typed_scope_creator_1_expr265, line(typed_scope_creator_1, 1210)).
method_invoc(typed_scope_creator_1_expr265, m_get_super_class_constructor_3171, line(typed_scope_creator_1, 1210)).
ref(p_fn_type_3227, typed_scope_creator_1_expr265, line(typed_scope_creator_1, 1210)).
assign(v_prototype_slot_3232, typed_scope_creator_1_expr266, line(typed_scope_creator_1, 1211)).
method_invoc(typed_scope_creator_1_expr266, m_get_slot_3172, line(typed_scope_creator_1, 1211)).
argument(typed_scope_creator_1_literal45, 1, typed_scope_creator_1_expr266).
ref(p_fn_type_3227, typed_scope_creator_1_expr266, line(typed_scope_creator_1, 1211)).
method_invoc(typed_scope_creator_1_expr267, m_set_node_3173, line(typed_scope_creator_1, 1221)).
argument(p_n_3225, 1, typed_scope_creator_1_expr267).
ref(v_prototype_slot_3232, typed_scope_creator_1_expr267, line(typed_scope_creator_1, 1221)).
assign(v_prototype_name_3233, typed_scope_creator_1_expr268, line(typed_scope_creator_1, 1223)).
assign(v_prototype_var_3234, typed_scope_creator_1_expr269, line(typed_scope_creator_1, 1228)).
method_invoc(typed_scope_creator_1_expr269, m_get_var_1656, line(typed_scope_creator_1, 1228)).
argument(v_prototype_name_3233, 1, typed_scope_creator_1_expr269).
ref(p_scope_to_declare_in_3228, typed_scope_creator_1_expr269, line(typed_scope_creator_1, 1228)).
ref(v_prototype_var_3234, q_scope_80, line(typed_scope_creator_1, 1229)).
method_invoc(typed_scope_creator_1_expr273, m_declare_1651, line(typed_scope_creator_1, 1233)).
argument(v_prototype_name_3233, 1, typed_scope_creator_1_expr273).
argument(p_n_3225, 2, typed_scope_creator_1_expr273).
argument(typed_scope_creator_1_expr274, 3, typed_scope_creator_1_expr273).
argument(p_input_3229, 4, typed_scope_creator_1_expr273).
argument(typed_scope_creator_1_expr275, 5, typed_scope_creator_1_expr273).
ref(p_scope_to_declare_in_3228, typed_scope_creator_1_expr273, line(typed_scope_creator_1, 1233)).
method_invoc(typed_scope_creator_1_expr278, m_get_initial_value_1620, line(typed_scope_creator_1, 1242)).
ref(p_new_var_3230, typed_scope_creator_1_expr278, line(typed_scope_creator_1, 1242)).
param(p_n_3235, 1, m_is_qname_rooted_in_global_scope_3174).
param(p_n_3236, 1, m_get_qname_root_scope_3175).
param(p_source_name_3237, 1, m_get_declared_type_3176).
param(p_info_3238, 2, m_get_declared_type_3176).
param(p_l_value_3239, 3, m_get_declared_type_3176).
param(p_r_value_3240, 4, m_get_declared_type_3176).
param(p_v_3241, 1, m_get_function_type_3177).
param(p_n_3242, 1, m_check_for_calling_convention_defining_calls_3178).
param(p_delegate_calling_conventions_3243, 2, m_check_for_calling_convention_defining_calls_3178).
param(p_t_3244, 1, m_check_for_class_defining_calls_3179).
param(p_n_3245, 2, m_check_for_class_defining_calls_3179).
param(p_parent_3246, 3, m_check_for_class_defining_calls_3179).
param(p_delegate_relationship_3247, 1, m_apply_delegate_relationship_3180).
param(p_t_3248, 1, m_maybe_declare_qualified_name_3181).
param(p_info_3249, 2, m_maybe_declare_qualified_name_3181).
param(p_n_3250, 3, m_maybe_declare_qualified_name_3181).
param(p_parent_3251, 4, m_maybe_declare_qualified_name_3181).
param(p_rhs_value_3252, 5, m_maybe_declare_qualified_name_3181).
param(p_q_name_3253, 1, m_is_qualified_name_inferred_3182).
param(p_n_3254, 2, m_is_qualified_name_inferred_3182).
param(p_info_3255, 3, m_is_qualified_name_inferred_3182).
param(p_rhs_value_3256, 4, m_is_qualified_name_inferred_3182).
param(p_value_type_3257, 5, m_is_qualified_name_inferred_3182).
param(p_slot_name_3258, 1, m_get_object_slot_3183).
ref(f_stub_declarations_3140, typed_scope_creator_1_stmt168, line(typed_scope_creator_1, 1685)).
param(p_this_type_3260, 1, m_collect_properties_3184).
param(p_t_3261, 1, m_visit_3185).
param(p_n_3262, 2, m_visit_3185).
param(p_parent_3263, 3, m_visit_3185).
param(p_t_3264, 1, m_maybe_collect_member_3186).
param(p_member_3265, 2, m_maybe_collect_member_3186).
param(p_node_with_js_doc_info_3266, 3, m_maybe_collect_member_3186).
param(p_value_3267, 4, m_maybe_collect_member_3186).
param(p_node_3268, 1, m_stub_declaration_3187).
param(p_is_extern_3269, 2, m_stub_declaration_3187).
param(p_owner_name_3270, 3, m_stub_declaration_3187).
param(p_scope_3271, 1, m_global_scope_builder_3125).
method_invoc(typed_scope_creator_1_expr279, m_abstract_scope_builder_3144, line(typed_scope_creator_1, 1793)).
argument(p_scope_3271, 1, typed_scope_creator_1_expr279).
param(p_t_3272, 1, m_visit_3188).
param(p_n_3273, 2, m_visit_3188).
param(p_parent_3274, 3, m_visit_3188).
method_invoc(typed_scope_creator_1_expr280, m_visit_3148, line(typed_scope_creator_1, 1805)).
argument(p_t_3272, 1, typed_scope_creator_1_expr280).
argument(p_n_3273, 2, typed_scope_creator_1_expr280).
argument(p_parent_3274, 3, typed_scope_creator_1_expr280).
method_invoc(typed_scope_creator_1_expr281, m_get_type_824, line(typed_scope_creator_1, 1807)).
ref(p_n_3273, typed_scope_creator_1_expr281, line(typed_scope_creator_1, 1807)).
param(p_t_3275, 1, m_maybe_declare_qualified_name_3189).
param(p_info_3276, 2, m_maybe_declare_qualified_name_3189).
param(p_n_3277, 3, m_maybe_declare_qualified_name_3189).
param(p_parent_3278, 4, m_maybe_declare_qualified_name_3189).
param(p_rhs_value_3279, 5, m_maybe_declare_qualified_name_3189).
param(p_t_3280, 1, m_check_for_typedef_3190).
param(p_candidate_3281, 2, m_check_for_typedef_3190).
param(p_info_3282, 3, m_check_for_typedef_3190).
param(p_scope_3283, 1, m_local_scope_builder_3126).
method_invoc(typed_scope_creator_1_expr282, m_abstract_scope_builder_3144, line(typed_scope_creator_1, 1872)).
argument(p_scope_3283, 1, typed_scope_creator_1_expr282).
method_invoc(typed_scope_creator_1_expr283, m_traverse_814, line(typed_scope_creator_1, 1879)).
argument(f_compiler_3082, 1, typed_scope_creator_1_expr283).
argument(typed_scope_creator_1_expr284, 2, typed_scope_creator_1_expr283).
argument(typed_scope_creator_1_expr285, 3, typed_scope_creator_1_expr283).
ref(t_node_traversal_34, typed_scope_creator_1_expr283, line(typed_scope_creator_1, 1879)).
method_invoc(typed_scope_creator_1_expr284, m_get_root_node_1646, line(typed_scope_creator_1, 1879)).
ref(f_scope_3143, typed_scope_creator_1_expr284, line(typed_scope_creator_1, 1879)).
assign(v_contents_3284, typed_scope_creator_1_expr286, line(typed_scope_creator_1, 1881)).
ref(typed_scope_creator_1_expr288, typed_scope_creator_1_stmt176, line(typed_scope_creator_1, 1884)).
method_invoc(typed_scope_creator_1_expr288, m_get_escaped_var_names_1135, line(typed_scope_creator_1, 1884)).
ref(v_contents_3284, typed_scope_creator_1_expr288, line(typed_scope_creator_1, 1884)).
ref(typed_scope_creator_1_expr289, typed_scope_creator_1_stmt177, line(typed_scope_creator_1, 1891)).
method_invoc(typed_scope_creator_1_expr289, m_entry_set_3191, line(typed_scope_creator_1, 1891)).
ref(typed_scope_creator_1_expr290, typed_scope_creator_1_expr289, line(typed_scope_creator_1, 1891)).
method_invoc(typed_scope_creator_1_expr290, m_get_assigned_name_counts_1139, line(typed_scope_creator_1, 1891)).
ref(v_contents_3284, typed_scope_creator_1_expr290, line(typed_scope_creator_1, 1891)).
param(p_t_3286, 1, m_visit_3192).
param(p_n_3287, 2, m_visit_3192).
param(p_parent_3288, 3, m_visit_3192).
method_invoc(typed_scope_creator_1_expr292, m_get_root_node_1646, line(typed_scope_creator_1, 1910)).
ref(f_scope_3143, typed_scope_creator_1_expr292, line(typed_scope_creator_1, 1910)).
return(none, m_visit_3192, line(typed_scope_creator_1, 1910)).
method_invoc(typed_scope_creator_1_expr294, m_is_param_list_3193, line(typed_scope_creator_1, 1912)).
ref(p_n_3287, typed_scope_creator_1_expr294, line(typed_scope_creator_1, 1912)).
method_invoc(typed_scope_creator_1_expr296, m_get_root_node_1646, line(typed_scope_creator_1, 1912)).
ref(f_scope_3143, typed_scope_creator_1_expr296, line(typed_scope_creator_1, 1912)).
method_invoc(typed_scope_creator_1_expr297, m_handle_function_inputs_3194, line(typed_scope_creator_1, 1913)).
argument(p_parent_3288, 1, typed_scope_creator_1_expr297).
return(none, m_visit_3192, line(typed_scope_creator_1, 1914)).
method_invoc(typed_scope_creator_1_expr298, m_visit_3148, line(typed_scope_creator_1, 1917)).
argument(p_t_3286, 1, typed_scope_creator_1_expr298).
argument(p_n_3287, 2, typed_scope_creator_1_expr298).
argument(p_parent_3288, 3, typed_scope_creator_1_expr298).
param(p_fn_node_3289, 1, m_handle_function_inputs_3194).
assign(v_fn_name_node_3290, typed_scope_creator_1_expr299, line(typed_scope_creator_1, 1923)).
method_invoc(typed_scope_creator_1_expr299, m_get_first_child_828, line(typed_scope_creator_1, 1923)).
ref(p_fn_node_3289, typed_scope_creator_1_expr299, line(typed_scope_creator_1, 1923)).
assign(v_fn_name_3291, typed_scope_creator_1_expr300, line(typed_scope_creator_1, 1924)).
method_invoc(typed_scope_creator_1_expr300, m_get_string_1783, line(typed_scope_creator_1, 1924)).
throw(typed_scope_creator_1_expr300, unsupported_operation_exception, line(typed_scope_creator_1, 1924)).
ref(v_fn_name_node_3290, typed_scope_creator_1_expr300, line(typed_scope_creator_1, 1924)).
method_invoc(typed_scope_creator_1_expr302, m_is_empty_1098, line(typed_scope_creator_1, 1925)).
ref(v_fn_name_3291, typed_scope_creator_1_expr302, line(typed_scope_creator_1, 1925)).
assign(v_fn_var_3292, typed_scope_creator_1_expr303, line(typed_scope_creator_1, 1926)).
method_invoc(typed_scope_creator_1_expr303, m_get_var_1656, line(typed_scope_creator_1, 1926)).
argument(v_fn_name_3291, 1, typed_scope_creator_1_expr303).
ref(f_scope_3143, typed_scope_creator_1_expr303, line(typed_scope_creator_1, 1926)).
method_invoc(typed_scope_creator_1_expr306, m_declare_arguments_3195, line(typed_scope_creator_1, 1939)).
argument(p_fn_node_3289, 1, typed_scope_creator_1_expr306).
param(p_function_node_3293, 1, m_declare_arguments_3195).
assign(v_ast_parameters_3294, typed_scope_creator_1_expr307, line(typed_scope_creator_1, 1946)).
method_invoc(typed_scope_creator_1_expr307, m_get_next_827, line(typed_scope_creator_1, 1946)).
ref(typed_scope_creator_1_expr308, typed_scope_creator_1_expr307, line(typed_scope_creator_1, 1946)).
method_invoc(typed_scope_creator_1_expr308, m_get_first_child_828, line(typed_scope_creator_1, 1946)).
ref(p_function_node_3293, typed_scope_creator_1_expr308, line(typed_scope_creator_1, 1946)).
assign(v_iife_argument_node_3295, typed_scope_creator_1_literal51, line(typed_scope_creator_1, 1947)).
method_invoc(typed_scope_creator_1_expr309, m_is_call_or_new_target_1489, line(typed_scope_creator_1, 1949)).
argument(p_function_node_3293, 1, typed_scope_creator_1_expr309).
ref(t_node_util_50, typed_scope_creator_1_expr309, line(typed_scope_creator_1, 1949)).
assign(v_body_3296, typed_scope_creator_1_expr310, line(typed_scope_creator_1, 1953)).
method_invoc(typed_scope_creator_1_expr310, m_get_next_827, line(typed_scope_creator_1, 1953)).
ref(v_ast_parameters_3294, typed_scope_creator_1_expr310, line(typed_scope_creator_1, 1953)).
assign(v_function_type_3297, typed_scope_creator_1_expr311, line(typed_scope_creator_1, 1954)).
assign(v_js_doc_parameters_3298, typed_scope_creator_1_expr313, line(typed_scope_creator_1, 1957)).
method_invoc(typed_scope_creator_1_expr313, m_get_parameters_node_3012, line(typed_scope_creator_1, 1957)).
ref(v_function_type_3297, typed_scope_creator_1_expr313, line(typed_scope_creator_1, 1957)).
assign(v_js_doc_parameter_3299, typed_scope_creator_1_expr315, line(typed_scope_creator_1, 1959)).
method_invoc(typed_scope_creator_1_expr315, m_get_first_child_828, line(typed_scope_creator_1, 1959)).
ref(v_js_doc_parameters_3298, typed_scope_creator_1_expr315, line(typed_scope_creator_1, 1959)).
ref(typed_scope_creator_1_expr316, typed_scope_creator_1_stmt199, line(typed_scope_creator_1, 1960)).
method_invoc(typed_scope_creator_1_expr316, m_children_1084, line(typed_scope_creator_1, 1960)).
ref(v_ast_parameters_3294, typed_scope_creator_1_expr316, line(typed_scope_creator_1, 1960)).
param(p_compiler_3301, 1, m_first_order_function_analyzer_3123).
param(p_out_param_3302, 2, m_first_order_function_analyzer_3123).
assign(f_compiler_3303, p_compiler_3301, line(typed_scope_creator_1, 2004)).
assign(f_data_3304, p_out_param_3302, line(typed_scope_creator_1, 2005)).
param(p_externs_3305, 1, m_process_3122).
param(p_root_3306, 2, m_process_3122).
method_invoc(typed_scope_creator_1_expr324, m_traverse_roots_1306, line(typed_scope_creator_1, 2012)).
argument(f_compiler_3303, 1, typed_scope_creator_1_expr324).
argument(typed_scope_creator_1_expr325, 2, typed_scope_creator_1_expr324).
argument(typed_scope_creator_1_expr326, 3, typed_scope_creator_1_expr324).
ref(t_node_traversal_34, typed_scope_creator_1_expr324, line(typed_scope_creator_1, 2012)).
param(p_t_3307, 1, m_enter_scope_3196).
method_invoc(typed_scope_creator_1_expr328, m_in_global_scope_1319, line(typed_scope_creator_1, 2018)).
ref(p_t_3307, typed_scope_creator_1_expr328, line(typed_scope_creator_1, 2018)).
assign(v_n_3308, typed_scope_creator_1_expr329, line(typed_scope_creator_1, 2019)).
method_invoc(typed_scope_creator_1_expr329, m_get_scope_root_1318, line(typed_scope_creator_1, 2019)).
ref(p_t_3307, typed_scope_creator_1_expr329, line(typed_scope_creator_1, 2019)).
method_invoc(typed_scope_creator_1_expr330, m_put_395, line(typed_scope_creator_1, 2020)).
argument(v_n_3308, 1, typed_scope_creator_1_expr330).
argument(typed_scope_creator_1_expr331, 2, typed_scope_creator_1_expr330).
ref(f_data_3304, typed_scope_creator_1_expr330, line(typed_scope_creator_1, 2020)).
method_invoc(typed_scope_creator_1_expr331, m_ast_function_contents_1125, line(typed_scope_creator_1, 2020)).
argument(v_n_3308, 1, typed_scope_creator_1_expr331).
param(p_t_3309, 1, m_visit_3197).
param(p_n_3310, 2, m_visit_3197).
param(p_parent_3311, 3, m_visit_3197).
method_invoc(typed_scope_creator_1_expr332, m_in_global_scope_1319, line(typed_scope_creator_1, 2025)).
ref(p_t_3309, typed_scope_creator_1_expr332, line(typed_scope_creator_1, 2025)).
return(none, m_visit_3197, line(typed_scope_creator_1, 2026)).
method_invoc(typed_scope_creator_1_expr334, m_is_return_3198, line(typed_scope_creator_1, 2029)).
ref(p_n_3310, typed_scope_creator_1_expr334, line(typed_scope_creator_1, 2029)).
method_invoc(typed_scope_creator_1_expr336, m_get_first_child_828, line(typed_scope_creator_1, 2029)).
ref(p_n_3310, typed_scope_creator_1_expr336, line(typed_scope_creator_1, 2029)).
method_invoc(typed_scope_creator_1_expr338, m_get_scope_depth_1320, line(typed_scope_creator_1, 2033)).
ref(p_t_3309, typed_scope_creator_1_expr338, line(typed_scope_creator_1, 2033)).
method_invoc(typed_scope_creator_1_expr340, m_is_name_3166, line(typed_scope_creator_1, 2045)).
ref(p_n_3310, typed_scope_creator_1_expr340, line(typed_scope_creator_1, 2045)).
method_invoc(typed_scope_creator_1_expr341, m_is_lvalue_1426, line(typed_scope_creator_1, 2045)).
argument(p_n_3310, 1, typed_scope_creator_1_expr341).
ref(t_node_util_50, typed_scope_creator_1_expr341, line(typed_scope_creator_1, 2045)).
method_invoc(typed_scope_creator_1_expr343, m_is_get_prop_1390, line(typed_scope_creator_1, 2062)).
ref(p_n_3310, typed_scope_creator_1_expr343, line(typed_scope_creator_1, 2062)).
method_invoc(typed_scope_creator_1_expr344, m_is_unscoped_qualified_name_3199, line(typed_scope_creator_1, 2062)).
ref(p_n_3310, typed_scope_creator_1_expr344, line(typed_scope_creator_1, 2062)).
param(p_n_3312, 1, m_get_function_analysis_results_3200).
return(typed_scope_creator_1_expr346, m_get_function_analysis_results_3200, line(typed_scope_creator_1, 2085)).
method_invoc(typed_scope_creator_1_expr346, m_get_390, line(typed_scope_creator_1, 2085)).
argument(p_n_3312, 1, typed_scope_creator_1_expr346).
ref(f_function_analysis_results_3072, typed_scope_creator_1_expr346, line(typed_scope_creator_1, 2085)).

%anonymous_function_naming_policy_1 - com.google.javascript.jscomp.AnonymousFunctionNamingPolicy
ref(t_name_anonymous_functions_5, q_delimiter_2, line(anonymous_function_naming_policy_1, 34)).
ref(t_name_anonymous_functions_mapped_6, q_prefix_3, line(anonymous_function_naming_policy_1, 42)).
param(p_reserved_characters_50, 1, m_anonymous_function_naming_policy_64).
assign(f_reserved_characters_51, p_reserved_characters_50, line(anonymous_function_naming_policy_1, 48)).

%diagnostic_group_1 - com.google.javascript.jscomp.DiagnosticGroup
param(p_name_1211, 1, m_diagnostic_group_951).
param(p_types_1212, 2, m_diagnostic_group_951).
assign(f_name_1213, p_name_1211, line(diagnostic_group_1, 46)).
assign(f_types_1214, diagnostic_group_1_expr6, line(diagnostic_group_1, 47)).
method_invoc(diagnostic_group_1_expr6, m_copy_of_166, line(diagnostic_group_1, 47)).
argument(diagnostic_group_1_expr8, 1, diagnostic_group_1_expr6).
ref(t_immutable_set_13, diagnostic_group_1_expr6, line(diagnostic_group_1, 47)).
method_invoc(diagnostic_group_1_expr8, m_as_list_952, line(diagnostic_group_1, 47)).
argument(p_types_1212, 1, diagnostic_group_1_expr8).
ref(t_arrays_37, diagnostic_group_1_expr8, line(diagnostic_group_1, 47)).
param(p_types_1215, 1, m_diagnostic_group_953).
method_invoc(diagnostic_group_1_expr9, m_diagnostic_group_951, line(diagnostic_group_1, 54)).
argument(diagnostic_group_1_literal1, 1, diagnostic_group_1_expr9).
argument(p_types_1215, 2, diagnostic_group_1_expr9).
param(p_type_1216, 1, m_diagnostic_group_954).
assign(f_singletons_1217, diagnostic_group_1_expr10, line(diagnostic_group_1, 66)).
param(p_type_1218, 1, m_for_type_955).
param(p_groups_1219, 1, m_diagnostic_group_956).
param(p_name_1220, 1, m_diagnostic_group_957).
param(p_groups_1221, 2, m_diagnostic_group_957).
assign(v_set_1222, diagnostic_group_1_expr11, line(diagnostic_group_1, 88)).
method_invoc(diagnostic_group_1_expr11, m_new_hash_set_522, line(diagnostic_group_1, 88)).
ref(t_sets_12, diagnostic_group_1_expr11, line(diagnostic_group_1, 88)).
ref(p_groups_1221, diagnostic_group_1_stmt5, line(diagnostic_group_1, 90)).
method_invoc(diagnostic_group_1_expr12, m_add_all_164, line(diagnostic_group_1, 91)).
argument(q_types_48, 1, diagnostic_group_1_expr12).
ref(v_set_1222, diagnostic_group_1_expr12, line(diagnostic_group_1, 91)).
ref(v_group_1223, q_types_48, line(diagnostic_group_1, 91)).
assign(f_name_1213, p_name_1220, line(diagnostic_group_1, 94)).
assign(f_types_1214, diagnostic_group_1_expr18, line(diagnostic_group_1, 95)).
method_invoc(diagnostic_group_1_expr18, m_copy_of_166, line(diagnostic_group_1, 95)).
argument(v_set_1222, 1, diagnostic_group_1_expr18).
ref(t_immutable_set_13, diagnostic_group_1_expr18, line(diagnostic_group_1, 95)).
param(p_error_1224, 1, m_matches_958).
return(diagnostic_group_1_expr20, m_matches_958, line(diagnostic_group_1, 103)).
method_invoc(diagnostic_group_1_expr20, m_matches_959, line(diagnostic_group_1, 103)).
argument(diagnostic_group_1_expr21, 1, diagnostic_group_1_expr20).
method_invoc(diagnostic_group_1_expr21, m_get_type_960, line(diagnostic_group_1, 103)).
ref(p_error_1224, diagnostic_group_1_expr21, line(diagnostic_group_1, 103)).
param(p_type_1225, 1, m_matches_959).
return(diagnostic_group_1_expr22, m_matches_959, line(diagnostic_group_1, 110)).
method_invoc(diagnostic_group_1_expr22, m_contains_961, line(diagnostic_group_1, 110)).
argument(p_type_1225, 1, diagnostic_group_1_expr22).
ref(f_types_1214, diagnostic_group_1_expr22, line(diagnostic_group_1, 110)).
param(p_group_1226, 1, m_is_sub_group_962).
return(f_types_1214, m_get_types_963, line(diagnostic_group_1, 129)).

%di_graph_1 - com.google.javascript.jscomp.graph.DiGraph
param(p_node_value_3363, 1, m_get_out_edges_3218).
param(p_node_value_3364, 1, m_get_in_edges_3219).
param(p_n_3365, 1, m_get_directed_pred_nodes_3220).
param(p_n_3366, 1, m_get_directed_succ_nodes_3221).
param(p_node_value_3367, 1, m_get_directed_pred_nodes_3222).
param(p_node_value_3368, 1, m_get_directed_succ_nodes_3223).
param(p_node_value_3369, 1, m_create_directed_graph_node_3224).
param(p_node_value_3370, 1, m_get_directed_graph_node_3225).
param(p_n_1_3371, 1, m_get_directed_graph_edges_3226).
param(p_n_2_3372, 2, m_get_directed_graph_edges_3226).
param(p_n_1_3373, 1, m_disconnect_in_direction_3227).
param(p_n_2_3374, 2, m_disconnect_in_direction_3227).
param(p_n_1_3375, 1, m_is_connected_in_direction_3228).
param(p_n_2_3376, 2, m_is_connected_in_direction_3228).
param(p_n_1_3377, 1, m_is_connected_in_direction_3229).
param(p_edge_value_3378, 2, m_is_connected_in_direction_3229).
param(p_n_2_3379, 3, m_is_connected_in_direction_3229).
param(p_n_1_3380, 1, m_is_connected_3230).
param(p_n_2_3381, 2, m_is_connected_3230).
param(p_n_1_3382, 1, m_is_connected_3231).
param(p_e_3383, 2, m_is_connected_3231).
param(p_n_2_3384, 3, m_is_connected_3231).
return(di_graph_1_expr1, m_is_connected_3231, line(di_graph_1, 99)).
method_invoc(di_graph_1_expr2, m_is_connected_in_direction_3229, line(di_graph_1, 99)).
argument(p_n_1_3382, 1, di_graph_1_expr2).
argument(p_e_3383, 2, di_graph_1_expr2).
argument(p_n_2_3384, 3, di_graph_1_expr2).
param(p_node_3385, 1, m_set_source_3236).
param(p_node_3386, 1, m_set_destination_3237).

%join_op_1 - com.google.javascript.jscomp.JoinOp
param(p_values_1583, 1, m_apply_1172).
method_invoc(join_op_1_expr1, m_check_argument_1173, line(join_op_1, 38)).
argument(join_op_1_expr2, 1, join_op_1_expr1).
ref(t_preconditions_19, join_op_1_expr1, line(join_op_1, 38)).
method_invoc(join_op_1_expr3, m_is_empty_933, line(join_op_1, 38)).
ref(p_values_1583, join_op_1_expr3, line(join_op_1, 38)).
assign(v_size_1584, join_op_1_expr4, line(join_op_1, 39)).
method_invoc(join_op_1_expr4, m_size_918, line(join_op_1, 39)).
ref(p_values_1583, join_op_1_expr4, line(join_op_1, 39)).
return(join_op_1_expr6, m_apply_1172, line(join_op_1, 41)).
method_invoc(join_op_1_expr6, m_get_929, line(join_op_1, 41)).
argument(join_op_1_literal2, 1, join_op_1_expr6).
ref(p_values_1583, join_op_1_expr6, line(join_op_1, 41)).
param(p_lattice_a_1585, 1, m_apply_1174).
param(p_lattice_b_1586, 2, m_apply_1174).
param(p_size_1587, 1, m_compute_mid_point_1175).

%input_id_1 - com.google.javascript.rhino.InputId
param(p_id_4206, 1, m_input_id_1178).
assign(f_id_4207, p_id_4206, line(input_id_1, 52)).
return(input_id_1_expr4, m_hash_code_3815, line(input_id_1, 61)).
method_invoc(input_id_1_expr4, m_hash_code_982, line(input_id_1, 61)).
ref(f_id_4207, input_id_1_expr4, line(input_id_1, 61)).
param(p_obj_4208, 1, m_equals_3816).

%equivalence_method_1 - com.google.javascript.rhino.jstype.EquivalenceMethod

%string_type_1 - com.google.javascript.rhino.jstype.StringType
param(p_registry_5433, 1, m_string_type_4570).
method_invoc(string_type_1_expr1, m_value_type_4289, line(string_type_1, 53)).
argument(p_registry_5433, 1, string_type_1_expr1).
param(p_that_5434, 1, m_test_for_equality_4894).
param(p_for_annotations_5435, 1, m_to_string_helper_4899).
return(string_type_1_expr2, m_to_string_helper_4899, line(string_type_1, 92)).
method_invoc(string_type_1_expr2, m_get_display_name_4900, line(string_type_1, 92)).
return(string_type_1_literal1, m_get_display_name_4900, line(string_type_1, 97)).
param(p_visitor_5436, 1, m_visit_4903).

%node_traversal_1 - com.google.javascript.jscomp.NodeTraversal
assign(f_node_traversal_error_1739, node_traversal_1_expr1, line(node_traversal_1, 46)).
assign(f_scopes_1740, node_traversal_1_expr2, line(node_traversal_1, 54)).
method_invoc(node_traversal_1_expr2, m_array_deque_807, line(node_traversal_1, 54)).
assign(f_scope_roots_1741, node_traversal_1_expr3, line(node_traversal_1, 60)).
method_invoc(node_traversal_1_expr3, m_array_deque_807, line(node_traversal_1, 60)).
assign(f_cfgs_1742, node_traversal_1_expr4, line(node_traversal_1, 69)).
method_invoc(node_traversal_1_expr4, m_linked_list_1268, line(node_traversal_1, 69)).
param(p_node_traversal_1743, 1, m_should_traverse_1269).
param(p_n_1744, 2, m_should_traverse_1269).
param(p_parent_1745, 3, m_should_traverse_1269).
param(p_t_1746, 1, m_visit_1270).
param(p_n_1747, 2, m_visit_1270).
param(p_parent_1748, 3, m_visit_1270).
param(p_t_1749, 1, m_enter_scope_1271).
param(p_t_1750, 1, m_exit_scope_1272).
param(p_node_traversal_1751, 1, m_should_traverse_1273).
param(p_n_1752, 2, m_should_traverse_1273).
param(p_parent_1753, 3, m_should_traverse_1273).
param(p_node_traversal_1754, 1, m_should_traverse_1274).
param(p_n_1755, 2, m_should_traverse_1274).
param(p_parent_1756, 3, m_should_traverse_1274).
return(node_traversal_1_literal1, m_should_traverse_1274, line(node_traversal_1, 145)).
param(p_t_1757, 1, m_enter_scope_1275).
param(p_t_1758, 1, m_exit_scope_1276).
param(p_node_traversal_1759, 1, m_should_traverse_1277).
param(p_n_1760, 2, m_should_traverse_1277).
param(p_parent_1761, 3, m_should_traverse_1277).
param(p_node_traversal_1762, 1, m_should_traverse_1278).
param(p_n_1763, 2, m_should_traverse_1278).
param(p_parent_1764, 3, m_should_traverse_1278).
return(node_traversal_1_expr5, m_should_traverse_1278, line(node_traversal_1, 179)).
method_invoc(node_traversal_1_expr8, m_is_control_structure_1279, line(node_traversal_1, 179)).
argument(p_parent_1764, 1, node_traversal_1_expr8).
ref(t_node_util_50, node_traversal_1_expr8, line(node_traversal_1, 179)).
param(p_node_types_1765, 1, m_abstract_node_type_pruning_callback_1280).
param(p_node_types_1766, 1, m_abstract_node_type_pruning_callback_1281).
param(p_include_1767, 2, m_abstract_node_type_pruning_callback_1281).
param(p_node_traversal_1768, 1, m_should_traverse_1282).
param(p_n_1769, 2, m_should_traverse_1282).
param(p_parent_1770, 3, m_should_traverse_1282).
param(p_compiler_1771, 1, m_node_traversal_1283).
param(p_cb_1772, 2, m_node_traversal_1283).
method_invoc(node_traversal_1_expr9, m_node_traversal_1284, line(node_traversal_1, 222)).
argument(p_compiler_1771, 1, node_traversal_1_expr9).
argument(p_cb_1772, 2, node_traversal_1_expr9).
argument(node_traversal_1_expr10, 3, node_traversal_1_expr9).
method_invoc(node_traversal_1_expr10, m_syntactic_scope_creator_1285, line(node_traversal_1, 222)).
argument(p_compiler_1771, 1, node_traversal_1_expr10).
param(p_compiler_1773, 1, m_node_traversal_1284).
param(p_cb_1774, 2, m_node_traversal_1284).
param(p_scope_creator_1775, 3, m_node_traversal_1284).
assign(f_callback_1776, p_cb_1774, line(node_traversal_1, 231)).
assign(f_scope_callback_1777, node_traversal_1_expr17, line(node_traversal_1, 233)).
assign(node_traversal_1_expr17, p_cb_1774, line(node_traversal_1, 233)).
assign(f_compiler_1778, p_compiler_1773, line(node_traversal_1, 235)).
assign(f_input_id_1779, node_traversal_1_literal3, line(node_traversal_1, 236)).
assign(f_source_name_1780, node_traversal_1_literal4, line(node_traversal_1, 237)).
assign(f_scope_creator_1781, p_scope_creator_1775, line(node_traversal_1, 238)).
param(p_unexpected_exception_1782, 1, m_throw_unexpected_exception_1286).
param(p_label_1783, 1, m_format_node_context_1287).
param(p_n_1784, 2, m_format_node_context_1287).
param(p_root_1785, 1, m_traverse_1288).
assign(f_input_id_1779, node_traversal_1_expr32, line(node_traversal_1, 273)).
method_invoc(node_traversal_1_expr32, m_get_input_id_1289, line(node_traversal_1, 273)).
argument(p_root_1785, 1, node_traversal_1_expr32).
ref(t_node_util_50, node_traversal_1_expr32, line(node_traversal_1, 273)).
assign(f_source_name_1780, node_traversal_1_literal5, line(node_traversal_1, 274)).
assign(f_cur_node_1786, p_root_1785, line(node_traversal_1, 275)).
method_invoc(node_traversal_1_expr35, m_push_scope_1290, line(node_traversal_1, 276)).
argument(p_root_1785, 1, node_traversal_1_expr35).
method_invoc(node_traversal_1_expr36, m_traverse_branch_1291, line(node_traversal_1, 277)).
argument(p_root_1785, 1, node_traversal_1_expr36).
argument(node_traversal_1_literal6, 2, node_traversal_1_expr36).
method_invoc(node_traversal_1_expr37, m_pop_scope_1292, line(node_traversal_1, 278)).
param(p_roots_1787, 1, m_traverse_roots_1293).
param(p_roots_1788, 1, m_traverse_roots_1294).
method_invoc(node_traversal_1_expr38, m_is_empty_933, line(node_traversal_1, 289)).
ref(p_roots_1788, node_traversal_1_expr38, line(node_traversal_1, 289)).
assign(v_scope_root_1789, node_traversal_1_expr39, line(node_traversal_1, 294)).
method_invoc(node_traversal_1_expr39, m_get_parent_840, line(node_traversal_1, 294)).
ref(node_traversal_1_expr40, node_traversal_1_expr39, line(node_traversal_1, 294)).
method_invoc(node_traversal_1_expr40, m_get_929, line(node_traversal_1, 294)).
argument(node_traversal_1_literal7, 1, node_traversal_1_expr40).
ref(p_roots_1788, node_traversal_1_expr40, line(node_traversal_1, 294)).
method_invoc(node_traversal_1_expr41, m_check_state_536, line(node_traversal_1, 295)).
argument(node_traversal_1_expr42, 1, node_traversal_1_expr41).
ref(t_preconditions_19, node_traversal_1_expr41, line(node_traversal_1, 295)).
assign(f_input_id_1779, node_traversal_1_expr44, line(node_traversal_1, 297)).
method_invoc(node_traversal_1_expr44, m_get_input_id_1289, line(node_traversal_1, 297)).
argument(v_scope_root_1789, 1, node_traversal_1_expr44).
ref(t_node_util_50, node_traversal_1_expr44, line(node_traversal_1, 297)).
assign(f_source_name_1780, node_traversal_1_literal9, line(node_traversal_1, 298)).
assign(f_cur_node_1786, v_scope_root_1789, line(node_traversal_1, 299)).
method_invoc(node_traversal_1_expr47, m_push_scope_1290, line(node_traversal_1, 300)).
argument(v_scope_root_1789, 1, node_traversal_1_expr47).
ref(p_roots_1788, node_traversal_1_stmt26, line(node_traversal_1, 302)).
method_invoc(node_traversal_1_expr48, m_check_state_536, line(node_traversal_1, 303)).
argument(node_traversal_1_expr49, 1, node_traversal_1_expr48).
ref(t_preconditions_19, node_traversal_1_expr48, line(node_traversal_1, 303)).
method_invoc(node_traversal_1_expr50, m_get_parent_840, line(node_traversal_1, 303)).
ref(v_root_1790, node_traversal_1_expr50, line(node_traversal_1, 303)).
method_invoc(node_traversal_1_expr51, m_traverse_branch_1291, line(node_traversal_1, 304)).
argument(v_root_1790, 1, node_traversal_1_expr51).
argument(v_scope_root_1789, 2, node_traversal_1_expr51).
method_invoc(node_traversal_1_expr52, m_pop_scope_1292, line(node_traversal_1, 307)).
param(p_n_1791, 1, m_format_node_position_1295).
param(p_root_1792, 1, m_traverse_with_scope_1296).
param(p_s_1793, 2, m_traverse_with_scope_1296).
method_invoc(node_traversal_1_expr53, m_check_state_536, line(node_traversal_1, 337)).
argument(node_traversal_1_expr54, 1, node_traversal_1_expr53).
ref(t_preconditions_19, node_traversal_1_expr53, line(node_traversal_1, 337)).
method_invoc(node_traversal_1_expr54, m_is_global_1096, line(node_traversal_1, 337)).
ref(p_s_1793, node_traversal_1_expr54, line(node_traversal_1, 337)).
assign(f_input_id_1779, node_traversal_1_literal10, line(node_traversal_1, 339)).
assign(f_source_name_1780, node_traversal_1_literal11, line(node_traversal_1, 340)).
assign(f_cur_node_1786, p_root_1792, line(node_traversal_1, 341)).
method_invoc(node_traversal_1_expr58, m_push_scope_1297, line(node_traversal_1, 342)).
argument(p_s_1793, 1, node_traversal_1_expr58).
method_invoc(node_traversal_1_expr59, m_traverse_branch_1291, line(node_traversal_1, 343)).
argument(p_root_1792, 1, node_traversal_1_expr59).
argument(node_traversal_1_literal12, 2, node_traversal_1_expr59).
method_invoc(node_traversal_1_expr60, m_pop_scope_1292, line(node_traversal_1, 344)).
param(p_s_1794, 1, m_traverse_at_scope_1298).
param(p_node_1795, 1, m_traverse_inner_node_1299).
param(p_parent_1796, 2, m_traverse_inner_node_1299).
param(p_refined_scope_1797, 3, m_traverse_inner_node_1299).
return(node_traversal_1_expr61, m_get_input_1303, line(node_traversal_1, 434)).
method_invoc(node_traversal_1_expr61, m_get_input_2, line(node_traversal_1, 434)).
argument(f_input_id_1779, 1, node_traversal_1_expr61).
ref(f_compiler_1778, node_traversal_1_expr61, line(node_traversal_1, 434)).
return(f_cur_node_1786, m_get_current_node_1305, line(node_traversal_1, 447)).
param(p_compiler_1798, 1, m_traverse_814).
param(p_root_1799, 2, m_traverse_814).
param(p_cb_1800, 3, m_traverse_814).
assign(v_t_1801, node_traversal_1_expr62, line(node_traversal_1, 455)).
method_invoc(node_traversal_1_expr62, m_node_traversal_1283, line(node_traversal_1, 455)).
argument(p_compiler_1798, 1, node_traversal_1_expr62).
argument(p_cb_1800, 2, node_traversal_1_expr62).
method_invoc(node_traversal_1_expr63, m_traverse_1288, line(node_traversal_1, 456)).
argument(p_root_1799, 1, node_traversal_1_expr63).
ref(v_t_1801, node_traversal_1_expr63, line(node_traversal_1, 456)).
param(p_compiler_1802, 1, m_traverse_roots_1306).
param(p_roots_1803, 2, m_traverse_roots_1306).
param(p_cb_1804, 3, m_traverse_roots_1306).
assign(v_t_1805, node_traversal_1_expr64, line(node_traversal_1, 464)).
method_invoc(node_traversal_1_expr64, m_node_traversal_1283, line(node_traversal_1, 464)).
argument(p_compiler_1802, 1, node_traversal_1_expr64).
argument(p_cb_1804, 2, node_traversal_1_expr64).
method_invoc(node_traversal_1_expr65, m_traverse_roots_1294, line(node_traversal_1, 465)).
argument(p_roots_1803, 1, node_traversal_1_expr65).
ref(v_t_1805, node_traversal_1_expr65, line(node_traversal_1, 465)).
param(p_compiler_1806, 1, m_traverse_roots_1307).
param(p_cb_1807, 2, m_traverse_roots_1307).
param(p_roots_1808, 3, m_traverse_roots_1307).
param(p_n_1809, 1, m_traverse_branch_1291).
param(p_parent_1810, 2, m_traverse_branch_1291).
assign(v_type_1811, node_traversal_1_expr66, line(node_traversal_1, 479)).
method_invoc(node_traversal_1_expr66, m_get_type_824, line(node_traversal_1, 479)).
ref(p_n_1809, node_traversal_1_expr66, line(node_traversal_1, 479)).
ref(t_token_51, q_script_59, line(node_traversal_1, 480)).
assign(f_input_id_1779, node_traversal_1_expr69, line(node_traversal_1, 481)).
method_invoc(node_traversal_1_expr69, m_get_input_id_539, line(node_traversal_1, 481)).
ref(p_n_1809, node_traversal_1_expr69, line(node_traversal_1, 481)).
assign(f_source_name_1780, node_traversal_1_expr71, line(node_traversal_1, 482)).
method_invoc(node_traversal_1_expr71, m_get_source_name_1308, line(node_traversal_1, 482)).
argument(p_n_1809, 1, node_traversal_1_expr71).
assign(f_cur_node_1786, p_n_1809, line(node_traversal_1, 485)).
method_invoc(node_traversal_1_expr74, m_should_traverse_1269, line(node_traversal_1, 486)).
argument(node_traversal_1_expr75, 1, node_traversal_1_expr74).
argument(p_n_1809, 2, node_traversal_1_expr74).
argument(p_parent_1810, 3, node_traversal_1_expr74).
ref(f_callback_1776, node_traversal_1_expr74, line(node_traversal_1, 486)).
return(none, m_traverse_branch_1291, line(node_traversal_1, 486)).
method_invoc(node_traversal_1_expr76, m_traverse_function_1309, line(node_traversal_1, 490)).
argument(p_n_1809, 1, node_traversal_1_expr76).
argument(p_parent_1810, 2, node_traversal_1_expr76).
assign(v_child_1812, node_traversal_1_expr78, line(node_traversal_1, 494)).
method_invoc(node_traversal_1_expr78, m_get_first_child_828, line(node_traversal_1, 494)).
ref(p_n_1809, node_traversal_1_expr78, line(node_traversal_1, 494)).
assign(v_next_1813, node_traversal_1_expr80, line(node_traversal_1, 497)).
method_invoc(node_traversal_1_expr80, m_get_next_827, line(node_traversal_1, 497)).
ref(v_child_1812, node_traversal_1_expr80, line(node_traversal_1, 497)).
method_invoc(node_traversal_1_expr81, m_traverse_branch_1291, line(node_traversal_1, 498)).
argument(v_child_1812, 1, node_traversal_1_expr81).
argument(p_n_1809, 2, node_traversal_1_expr81).
assign(v_child_1812, v_next_1813, line(node_traversal_1, 499)).
assign(f_cur_node_1786, p_n_1809, line(node_traversal_1, 504)).
method_invoc(node_traversal_1_expr84, m_visit_1270, line(node_traversal_1, 505)).
argument(node_traversal_1_expr85, 1, node_traversal_1_expr84).
argument(p_n_1809, 2, node_traversal_1_expr84).
argument(p_parent_1810, 3, node_traversal_1_expr84).
ref(f_callback_1776, node_traversal_1_expr84, line(node_traversal_1, 505)).
param(p_n_1814, 1, m_traverse_function_1309).
param(p_parent_1815, 2, m_traverse_function_1309).
method_invoc(node_traversal_1_expr86, m_check_state_536, line(node_traversal_1, 512)).
argument(node_traversal_1_expr87, 1, node_traversal_1_expr86).
ref(t_preconditions_19, node_traversal_1_expr86, line(node_traversal_1, 512)).
method_invoc(node_traversal_1_expr88, m_get_child_count_846, line(node_traversal_1, 512)).
ref(p_n_1814, node_traversal_1_expr88, line(node_traversal_1, 512)).
method_invoc(node_traversal_1_expr89, m_check_state_536, line(node_traversal_1, 513)).
argument(node_traversal_1_expr90, 1, node_traversal_1_expr89).
ref(t_preconditions_19, node_traversal_1_expr89, line(node_traversal_1, 513)).
method_invoc(node_traversal_1_expr90, m_is_function_842, line(node_traversal_1, 513)).
ref(p_n_1814, node_traversal_1_expr90, line(node_traversal_1, 513)).
assign(v_fn_name_1816, node_traversal_1_expr91, line(node_traversal_1, 515)).
method_invoc(node_traversal_1_expr91, m_get_first_child_828, line(node_traversal_1, 515)).
ref(p_n_1814, node_traversal_1_expr91, line(node_traversal_1, 515)).
assign(v_is_function_expression_1817, node_traversal_1_expr92, line(node_traversal_1, 517)).
assign(node_traversal_1_expr93, node_traversal_1_expr94, line(node_traversal_1, 517)).
method_invoc(node_traversal_1_expr96, m_traverse_branch_1291, line(node_traversal_1, 522)).
argument(v_fn_name_1816, 1, node_traversal_1_expr96).
argument(p_n_1814, 2, node_traversal_1_expr96).
assign(f_cur_node_1786, p_n_1814, line(node_traversal_1, 525)).
method_invoc(node_traversal_1_expr98, m_push_scope_1290, line(node_traversal_1, 526)).
argument(p_n_1814, 1, node_traversal_1_expr98).
assign(v_args_1818, node_traversal_1_expr99, line(node_traversal_1, 534)).
method_invoc(node_traversal_1_expr99, m_get_next_827, line(node_traversal_1, 534)).
ref(v_fn_name_1816, node_traversal_1_expr99, line(node_traversal_1, 534)).
assign(v_body_1819, node_traversal_1_expr100, line(node_traversal_1, 535)).
method_invoc(node_traversal_1_expr100, m_get_next_827, line(node_traversal_1, 535)).
ref(v_args_1818, node_traversal_1_expr100, line(node_traversal_1, 535)).
method_invoc(node_traversal_1_expr101, m_traverse_branch_1291, line(node_traversal_1, 538)).
argument(v_args_1818, 1, node_traversal_1_expr101).
argument(p_n_1814, 2, node_traversal_1_expr101).
method_invoc(node_traversal_1_expr102, m_check_state_1310, line(node_traversal_1, 541)).
argument(node_traversal_1_expr103, 1, node_traversal_1_expr102).
argument(v_body_1819, 2, node_traversal_1_expr102).
ref(t_preconditions_19, node_traversal_1_expr102, line(node_traversal_1, 541)).
method_invoc(node_traversal_1_expr105, m_get_next_827, line(node_traversal_1, 541)).
ref(v_body_1819, node_traversal_1_expr105, line(node_traversal_1, 541)).
method_invoc(node_traversal_1_expr106, m_traverse_branch_1291, line(node_traversal_1, 543)).
argument(v_body_1819, 1, node_traversal_1_expr106).
argument(p_n_1814, 2, node_traversal_1_expr106).
method_invoc(node_traversal_1_expr107, m_pop_scope_1292, line(node_traversal_1, 545)).
param(p_node_1820, 1, m_push_scope_1290).
method_invoc(node_traversal_1_expr108, m_check_state_536, line(node_traversal_1, 564)).
argument(node_traversal_1_expr109, 1, node_traversal_1_expr108).
ref(t_preconditions_19, node_traversal_1_expr108, line(node_traversal_1, 564)).
method_invoc(node_traversal_1_expr110, m_push_826, line(node_traversal_1, 565)).
argument(p_node_1820, 1, node_traversal_1_expr110).
ref(f_scope_roots_1741, node_traversal_1_expr110, line(node_traversal_1, 565)).
method_invoc(node_traversal_1_expr111, m_push_826, line(node_traversal_1, 566)).
argument(node_traversal_1_literal18, 1, node_traversal_1_expr111).
ref(f_cfgs_1742, node_traversal_1_expr111, line(node_traversal_1, 566)).
method_invoc(node_traversal_1_expr113, m_enter_scope_1271, line(node_traversal_1, 568)).
argument(node_traversal_1_expr114, 1, node_traversal_1_expr113).
ref(f_scope_callback_1777, node_traversal_1_expr113, line(node_traversal_1, 568)).
param(p_s_1821, 1, m_push_scope_1297).
method_invoc(node_traversal_1_expr115, m_check_state_536, line(node_traversal_1, 574)).
argument(node_traversal_1_expr116, 1, node_traversal_1_expr115).
ref(t_preconditions_19, node_traversal_1_expr115, line(node_traversal_1, 574)).
method_invoc(node_traversal_1_expr117, m_push_826, line(node_traversal_1, 575)).
argument(p_s_1821, 1, node_traversal_1_expr117).
ref(f_scopes_1740, node_traversal_1_expr117, line(node_traversal_1, 575)).
method_invoc(node_traversal_1_expr118, m_push_826, line(node_traversal_1, 576)).
argument(node_traversal_1_literal21, 1, node_traversal_1_expr118).
ref(f_cfgs_1742, node_traversal_1_expr118, line(node_traversal_1, 576)).
method_invoc(node_traversal_1_expr120, m_enter_scope_1271, line(node_traversal_1, 578)).
argument(node_traversal_1_expr121, 1, node_traversal_1_expr120).
ref(f_scope_callback_1777, node_traversal_1_expr120, line(node_traversal_1, 578)).
method_invoc(node_traversal_1_expr123, m_exit_scope_1272, line(node_traversal_1, 585)).
argument(node_traversal_1_expr124, 1, node_traversal_1_expr123).
ref(f_scope_callback_1777, node_traversal_1_expr123, line(node_traversal_1, 585)).
method_invoc(node_traversal_1_expr125, m_is_empty_1312, line(node_traversal_1, 587)).
ref(f_scope_roots_1741, node_traversal_1_expr125, line(node_traversal_1, 587)).
method_invoc(node_traversal_1_expr126, m_pop_848, line(node_traversal_1, 588)).
ref(f_scopes_1740, node_traversal_1_expr126, line(node_traversal_1, 588)).
method_invoc(node_traversal_1_expr127, m_pop_848, line(node_traversal_1, 590)).
ref(f_scope_roots_1741, node_traversal_1_expr127, line(node_traversal_1, 590)).
method_invoc(node_traversal_1_expr128, m_pop_848, line(node_traversal_1, 592)).
ref(f_cfgs_1742, node_traversal_1_expr128, line(node_traversal_1, 592)).
assign(v_scope_1822, node_traversal_1_expr129, line(node_traversal_1, 597)).
cond_expr(node_traversal_1_expr130, node_traversal_1_literal24, node_traversal_1_expr131, line(node_traversal_1, 597)).
method_invoc(node_traversal_1_expr130, m_is_empty_1312, line(node_traversal_1, 597)).
ref(f_scopes_1740, node_traversal_1_expr130, line(node_traversal_1, 597)).
method_invoc(node_traversal_1_expr131, m_peek_847, line(node_traversal_1, 597)).
ref(f_scopes_1740, node_traversal_1_expr131, line(node_traversal_1, 597)).
method_invoc(node_traversal_1_expr132, m_is_empty_1312, line(node_traversal_1, 598)).
ref(f_scope_roots_1741, node_traversal_1_expr132, line(node_traversal_1, 598)).
return(v_scope_1822, m_get_scope_1313, line(node_traversal_1, 599)).
assign(v_it_1823, node_traversal_1_expr133, line(node_traversal_1, 602)).
method_invoc(node_traversal_1_expr133, m_descending_iterator_1314, line(node_traversal_1, 602)).
ref(f_scope_roots_1741, node_traversal_1_expr133, line(node_traversal_1, 602)).
method_invoc(node_traversal_1_expr134, m_has_next_1315, line(node_traversal_1, 603)).
ref(v_it_1823, node_traversal_1_expr134, line(node_traversal_1, 603)).
assign(v_scope_1822, node_traversal_1_expr136, line(node_traversal_1, 604)).
method_invoc(node_traversal_1_expr136, m_create_scope_1263, line(node_traversal_1, 604)).
argument(node_traversal_1_expr137, 1, node_traversal_1_expr136).
argument(v_scope_1822, 2, node_traversal_1_expr136).
ref(f_scope_creator_1781, node_traversal_1_expr136, line(node_traversal_1, 604)).
method_invoc(node_traversal_1_expr137, m_next_901, line(node_traversal_1, 604)).
ref(v_it_1823, node_traversal_1_expr137, line(node_traversal_1, 604)).
method_invoc(node_traversal_1_expr138, m_push_826, line(node_traversal_1, 605)).
argument(v_scope_1822, 1, node_traversal_1_expr138).
ref(f_scopes_1740, node_traversal_1_expr138, line(node_traversal_1, 605)).
method_invoc(node_traversal_1_expr139, m_clear_1316, line(node_traversal_1, 607)).
ref(f_scope_roots_1741, node_traversal_1_expr139, line(node_traversal_1, 607)).
return(v_scope_1822, m_get_scope_1313, line(node_traversal_1, 609)).
method_invoc(node_traversal_1_expr140, m_is_empty_1312, line(node_traversal_1, 625)).
ref(f_scope_roots_1741, node_traversal_1_expr140, line(node_traversal_1, 625)).
return(node_traversal_1_expr141, m_get_scope_root_1318, line(node_traversal_1, 628)).
method_invoc(node_traversal_1_expr141, m_peek_847, line(node_traversal_1, 628)).
ref(f_scope_roots_1741, node_traversal_1_expr141, line(node_traversal_1, 628)).
return(node_traversal_1_expr142, m_in_global_scope_1319, line(node_traversal_1, 636)).
method_invoc(node_traversal_1_expr143, m_get_scope_depth_1320, line(node_traversal_1, 636)).
return(node_traversal_1_expr144, m_get_scope_depth_1320, line(node_traversal_1, 640)).
method_invoc(node_traversal_1_expr145, m_size_1321, line(node_traversal_1, 640)).
ref(f_scopes_1740, node_traversal_1_expr145, line(node_traversal_1, 640)).
method_invoc(node_traversal_1_expr146, m_size_1321, line(node_traversal_1, 640)).
ref(f_scope_roots_1741, node_traversal_1_expr146, line(node_traversal_1, 640)).
param(p_n_1824, 1, m_report_1323).
param(p_diagnostic_type_1825, 2, m_report_1323).
param(p_arguments_1826, 3, m_report_1323).
param(p_n_1827, 1, m_get_source_name_1308).
assign(v_name_1828, node_traversal_1_expr147, line(node_traversal_1, 656)).
method_invoc(node_traversal_1_expr147, m_get_source_file_name_1324, line(node_traversal_1, 656)).
ref(p_n_1827, node_traversal_1_expr147, line(node_traversal_1, 656)).
return(node_traversal_1_expr148, m_get_source_name_1308, line(node_traversal_1, 657)).
cond_expr(node_traversal_1_expr149, node_traversal_1_literal26, v_name_1828, line(node_traversal_1, 657)).
return(f_input_id_1779, m_get_input_id_1325, line(node_traversal_1, 661)).
param(p_n_1829, 1, m_make_error_1326).
param(p_level_1830, 2, m_make_error_1326).
param(p_type_1831, 3, m_make_error_1326).
param(p_arguments_1832, 4, m_make_error_1326).
param(p_n_1833, 1, m_make_error_1327).
param(p_type_1834, 2, m_make_error_1327).
param(p_arguments_1835, 3, m_make_error_1327).
param(p_n_1836, 1, m_get_best_source_file_name_1328).

%js_doc_token_1 - com.google.javascript.jscomp.parsing.JsDocToken

%union_type_builder_1 - com.google.javascript.rhino.jstype.UnionTypeBuilder
assign(f_alternates_5471, union_type_builder_1_expr1, line(union_type_builder_1, 70)).
method_invoc(union_type_builder_1_expr1, m_new_array_list_329, line(union_type_builder_1, 70)).
ref(t_lists_22, union_type_builder_1_expr1, line(union_type_builder_1, 70)).
assign(f_is_all_type_5472, union_type_builder_1_literal1, line(union_type_builder_1, 71)).
assign(f_is_native_unknown_type_5473, union_type_builder_1_literal2, line(union_type_builder_1, 72)).
assign(f_are_all_unknowns_checked_5474, union_type_builder_1_literal3, line(union_type_builder_1, 73)).
assign(f_function_type_position_5475, union_type_builder_1_expr2, line(union_type_builder_1, 94)).
assign(f_result_5476, union_type_builder_1_literal5, line(union_type_builder_1, 97)).
param(p_registry_5477, 1, m_union_type_builder_4617).
method_invoc(union_type_builder_1_expr3, m_union_type_builder_4585, line(union_type_builder_1, 100)).
argument(p_registry_5477, 1, union_type_builder_1_expr3).
argument(f_default_max_union_size_5478, 2, union_type_builder_1_expr3).
param(p_registry_5479, 1, m_union_type_builder_4585).
param(p_max_union_size_5480, 2, m_union_type_builder_4585).
assign(f_registry_5481, p_registry_5479, line(union_type_builder_1, 104)).
assign(f_max_union_size_5482, p_max_union_size_5480, line(union_type_builder_1, 105)).
param(p_alternate_5483, 1, m_add_alternate_4586).
method_invoc(union_type_builder_1_expr10, m_is_no_type_4454, line(union_type_builder_1, 123)).
ref(p_alternate_5483, union_type_builder_1_expr10, line(union_type_builder_1, 123)).
return(union_type_builder_1_expr11, m_add_alternate_4586, line(union_type_builder_1, 124)).
assign(f_is_all_type_5472, union_type_builder_1_expr13, line(union_type_builder_1, 127)).
method_invoc(union_type_builder_1_expr14, m_is_all_type_4472, line(union_type_builder_1, 127)).
ref(p_alternate_5483, union_type_builder_1_expr14, line(union_type_builder_1, 127)).
assign(v_is_alternate_unknown_5484, union_type_builder_1_expr15, line(union_type_builder_1, 129)).
assign(f_is_native_unknown_type_5473, union_type_builder_1_expr17, line(union_type_builder_1, 130)).
method_invoc(union_type_builder_1_expr21, m_is_union_type_4474, line(union_type_builder_1, 136)).
ref(p_alternate_5483, union_type_builder_1_expr21, line(union_type_builder_1, 136)).
method_invoc(union_type_builder_1_expr23, m_size_918, line(union_type_builder_1, 142)).
ref(f_alternates_5471, union_type_builder_1_expr23, line(union_type_builder_1, 142)).
method_invoc(union_type_builder_1_expr25, m_is_function_type_3130, line(union_type_builder_1, 149)).
ref(p_alternate_5483, union_type_builder_1_expr25, line(union_type_builder_1, 149)).
assign(v_current_index_5485, union_type_builder_1_literal7, line(union_type_builder_1, 163)).
assign(v_it_5486, union_type_builder_1_expr28, line(union_type_builder_1, 164)).
method_invoc(union_type_builder_1_expr28, m_iterator_4947, line(union_type_builder_1, 164)).
ref(f_alternates_5471, union_type_builder_1_expr28, line(union_type_builder_1, 164)).
method_invoc(union_type_builder_1_expr29, m_has_next_1315, line(union_type_builder_1, 165)).
ref(v_it_5486, union_type_builder_1_expr29, line(union_type_builder_1, 165)).
assign(v_remove_current_5487, union_type_builder_1_literal8, line(union_type_builder_1, 166)).
assign(v_current_5488, union_type_builder_1_expr30, line(union_type_builder_1, 167)).
method_invoc(union_type_builder_1_expr30, m_next_901, line(union_type_builder_1, 167)).
ref(v_it_5486, union_type_builder_1_expr30, line(union_type_builder_1, 167)).
method_invoc(union_type_builder_1_expr32, m_is_unknown_type_3133, line(union_type_builder_1, 172)).
ref(p_alternate_5483, union_type_builder_1_expr32, line(union_type_builder_1, 172)).
method_invoc(union_type_builder_1_expr33, m_is_equivalent_to_4505, line(union_type_builder_1, 178)).
argument(v_current_5488, 1, union_type_builder_1_expr33).
ref(p_alternate_5483, union_type_builder_1_expr33, line(union_type_builder_1, 178)).
method_invoc(union_type_builder_1_expr35, m_is_parameterized_type_4486, line(union_type_builder_1, 192)).
ref(p_alternate_5483, union_type_builder_1_expr35, line(union_type_builder_1, 192)).
method_invoc(union_type_builder_1_expr36, m_is_parameterized_type_4486, line(union_type_builder_1, 192)).
ref(v_current_5488, union_type_builder_1_expr36, line(union_type_builder_1, 192)).
method_invoc(union_type_builder_1_expr37, m_is_subtype_4541, line(union_type_builder_1, 246)).
argument(v_current_5488, 1, union_type_builder_1_expr37).
ref(p_alternate_5483, union_type_builder_1_expr37, line(union_type_builder_1, 246)).
return(union_type_builder_1_expr38, m_add_alternate_4586, line(union_type_builder_1, 248)).
method_invoc(union_type_builder_1_expr39, m_is_subtype_4541, line(union_type_builder_1, 249)).
argument(p_alternate_5483, 1, union_type_builder_1_expr39).
ref(v_current_5488, union_type_builder_1_expr39, line(union_type_builder_1, 249)).
method_invoc(union_type_builder_1_expr41, m_is_function_type_3130, line(union_type_builder_1, 268)).
ref(p_alternate_5483, union_type_builder_1_expr41, line(union_type_builder_1, 268)).
method_invoc(union_type_builder_1_expr42, m_check_state_536, line(union_type_builder_1, 270)).
argument(union_type_builder_1_expr43, 1, union_type_builder_1_expr42).
ref(t_preconditions_19, union_type_builder_1_expr42, line(union_type_builder_1, 270)).
assign(f_function_type_position_5475, union_type_builder_1_expr46, line(union_type_builder_1, 271)).
method_invoc(union_type_builder_1_expr46, m_size_918, line(union_type_builder_1, 271)).
ref(f_alternates_5471, union_type_builder_1_expr46, line(union_type_builder_1, 271)).
method_invoc(union_type_builder_1_expr47, m_add_330, line(union_type_builder_1, 274)).
argument(p_alternate_5483, 1, union_type_builder_1_expr47).
ref(f_alternates_5471, union_type_builder_1_expr47, line(union_type_builder_1, 274)).
assign(f_result_5476, union_type_builder_1_literal10, line(union_type_builder_1, 275)).
return(union_type_builder_1_expr49, m_add_alternate_4586, line(union_type_builder_1, 280)).
assign(v_size_5489, union_type_builder_1_expr50, line(union_type_builder_1, 298)).
method_invoc(union_type_builder_1_expr50, m_size_918, line(union_type_builder_1, 298)).
ref(f_alternates_5471, union_type_builder_1_expr50, line(union_type_builder_1, 298)).
return(union_type_builder_1_literal12, m_reduce_alternates_without_union_4948, line(union_type_builder_1, 302)).
return(union_type_builder_1_expr54, m_reduce_alternates_without_union_4948, line(union_type_builder_1, 304)).
method_invoc(union_type_builder_1_expr54, m_next_901, line(union_type_builder_1, 304)).
ref(union_type_builder_1_expr55, union_type_builder_1_expr54, line(union_type_builder_1, 304)).
method_invoc(union_type_builder_1_expr55, m_iterator_4947, line(union_type_builder_1, 304)).
ref(f_alternates_5471, union_type_builder_1_expr55, line(union_type_builder_1, 304)).
assign(f_result_5476, union_type_builder_1_expr58, line(union_type_builder_1, 318)).
method_invoc(union_type_builder_1_expr58, m_reduce_alternates_without_union_4948, line(union_type_builder_1, 318)).
assign(f_result_5476, union_type_builder_1_expr61, line(union_type_builder_1, 320)).
method_invoc(union_type_builder_1_expr61, m_union_type_4904, line(union_type_builder_1, 320)).
argument(f_registry_5481, 1, union_type_builder_1_expr61).
argument(union_type_builder_1_expr62, 2, union_type_builder_1_expr61).
method_invoc(union_type_builder_1_expr62, m_get_alternate_list_copy_4949, line(union_type_builder_1, 320)).
return(f_result_5476, m_build_4618, line(union_type_builder_1, 323)).
return(union_type_builder_1_expr63, m_get_alternate_list_copy_4949, line(union_type_builder_1, 327)).
method_invoc(union_type_builder_1_expr63, m_copy_of_4383, line(union_type_builder_1, 327)).
argument(f_alternates_5471, 1, union_type_builder_1_expr63).
ref(t_immutable_list_14, union_type_builder_1_expr63, line(union_type_builder_1, 327)).

%pass_factory_1 - com.google.javascript.jscomp.PassFactory
param(p_name_2079, 1, m_pass_factory_1503).
param(p_is_one_time_pass_2080, 2, m_pass_factory_1503).
assign(f_name_2081, p_name_2079, line(pass_factory_1, 38)).
assign(f_is_one_time_pass_2082, p_is_one_time_pass_2080, line(pass_factory_1, 39)).
param(p_compiler_2083, 1, m_create_1506).
param(p_compiler_2084, 1, m_get_hot_swap_pass_1507).

%null_type_1 - com.google.javascript.rhino.jstype.NullType
param(p_registry_5279, 1, m_null_type_4568).
method_invoc(null_type_1_expr1, m_value_type_4289, line(null_type_1, 54)).
argument(p_registry_5279, 1, null_type_1_expr1).
return(null_type_1_expr2, m_restrict_by_not_null_or_undefined_4725, line(null_type_1, 84)).
method_invoc(null_type_1_expr2, m_get_native_type_1094, line(null_type_1, 84)).
argument(q_no_type_206, 1, null_type_1_expr2).
ref(f_registry_4786, null_type_1_expr2, line(null_type_1, 84)).
ref(t_jstype_native_15, q_no_type_206, line(null_type_1, 84)).
param(p_that_5280, 1, m_test_for_equality_4726).
param(p_for_annotations_5281, 1, m_to_string_helper_4727).
return(null_type_1_expr3, m_to_string_helper_4727, line(null_type_1, 104)).
method_invoc(null_type_1_expr3, m_get_display_name_4728, line(null_type_1, 104)).
return(null_type_1_literal1, m_get_display_name_4728, line(null_type_1, 109)).
param(p_visitor_5282, 1, m_visit_4730).

%unknown_type_1 - com.google.javascript.rhino.jstype.UnknownType
param(p_registry_5490, 1, m_unknown_type_4571).
param(p_is_checked_5491, 2, m_unknown_type_4571).
method_invoc(unknown_type_1_expr1, m_object_type_4742, line(unknown_type_1, 57)).
argument(p_registry_5490, 1, unknown_type_1_expr1).
assign(f_is_checked_5492, p_is_checked_5491, line(unknown_type_1, 58)).
return(unknown_type_1_literal1, m_is_unknown_type_4950, line(unknown_type_1, 63)).
param(p_that_5493, 1, m_test_for_equality_4956).
param(p_that_5494, 1, m_is_subtype_4958).
param(p_visitor_5495, 1, m_visit_4959).
param(p_visitor_5496, 1, m_visit_4960).
param(p_that_5497, 2, m_visit_4960).
param(p_for_annotations_5498, 1, m_to_string_helper_4961).
param(p_property_name_5499, 1, m_define_property_4962).
param(p_type_5500, 2, m_define_property_4962).
param(p_inferred_5501, 3, m_define_property_4962).
param(p_property_node_5502, 4, m_define_property_4962).
return(unknown_type_1_literal2, m_get_implicit_prototype_4963, line(unknown_type_1, 129)).
return(unknown_type_1_literal3, m_get_constructor_4964, line(unknown_type_1, 134)).
param(p_t_5503, 1, m_resolve_internal_4969).
param(p_scope_5504, 2, m_resolve_internal_4969).
return(unknown_type_1_expr5, m_resolve_internal_4969, line(unknown_type_1, 159)).

%source_map_1 - com.google.javascript.jscomp.SourceMap
param(p_node_2425, 1, m_apply_1730).
param(p_node_2427, 1, m_apply_1731).
param(p_prefix_2428, 1, m_location_mapping_1732).
param(p_replacement_2429, 2, m_location_mapping_1732).
param(p_generator_2430, 1, m_source_map_1733).
param(p_node_2431, 1, m_add_mapping_1734).
param(p_output_start_position_2432, 2, m_add_mapping_1734).
param(p_output_end_position_2433, 3, m_add_mapping_1734).
param(p_source_file_2434, 1, m_fixup_source_location_1735).
param(p_out_2435, 1, m_append_to_1736).
param(p_name_2436, 2, m_append_to_1736).
throw(m_append_to_1736, ioexception).
param(p_offset_line_2437, 1, m_set_starting_position_1738).
param(p_offset_index_2438, 2, m_set_starting_position_1738).
param(p_prefix_2439, 1, m_set_wrapper_prefix_1739).
param(p_validate_2440, 1, m_validate_1740).
param(p_source_map_location_mappings_2441, 1, m_set_prefix_mappings_1741).

%no_type_1 - com.google.javascript.rhino.jstype.NoType
param(p_registry_5273, 1, m_no_type_4573).
method_invoc(no_type_1_expr1, m_no_object_type_4574, line(no_type_1, 65)).
argument(p_registry_5273, 1, no_type_1_expr1).
return(no_type_1_literal1, m_is_no_type_4710, line(no_type_1, 75)).
param(p_that_5274, 1, m_is_subtype_4712).
param(p_visitor_5275, 1, m_visit_4717).
param(p_visitor_5276, 1, m_visit_4718).
param(p_that_5277, 2, m_visit_4718).
param(p_for_annotations_5278, 1, m_to_string_helper_4719).

%data_flow_analysis_1 - com.google.javascript.jscomp.DataFlowAnalysis
param(p_target_cfg_1146, 1, m_data_flow_analysis_890).
param(p_join_op_1147, 2, m_data_flow_analysis_890).
assign(f_cfg_1148, p_target_cfg_1146, line(data_flow_analysis_1, 121)).
assign(f_join_op_1149, p_join_op_1147, line(data_flow_analysis_1, 122)).
assign(v_node_comparator_1150, data_flow_analysis_1_expr7, line(data_flow_analysis_1, 123)).
assign(f_ordered_work_set_1151, data_flow_analysis_1_expr11, line(data_flow_analysis_1, 126)).
method_invoc(data_flow_analysis_1_expr11, m_new_tree_set_891, line(data_flow_analysis_1, 126)).
argument(v_node_comparator_1150, 1, data_flow_analysis_1_expr11).
ref(t_sets_12, data_flow_analysis_1_expr11, line(data_flow_analysis_1, 126)).
return(f_cfg_1148, m_get_cfg_892, line(data_flow_analysis_1, 139)).
param(p_lattice_a_1152, 1, m_join_894).
param(p_lattice_b_1153, 2, m_join_894).
param(p_node_1154, 1, m_flow_through_896).
param(p_input_1155, 2, m_flow_through_896).
method_invoc(data_flow_analysis_1_expr13, m_analyze_898, line(data_flow_analysis_1, 180)).
argument(f_max_steps_1156, 1, data_flow_analysis_1_expr13).
param(p_max_steps_1157, 1, m_analyze_898).
method_invoc(data_flow_analysis_1_expr14, m_initialize_899, line(data_flow_analysis_1, 202)).
assign(v_step_1158, data_flow_analysis_1_literal2, line(data_flow_analysis_1, 203)).
method_invoc(data_flow_analysis_1_expr16, m_is_empty_900, line(data_flow_analysis_1, 204)).
ref(f_ordered_work_set_1151, data_flow_analysis_1_expr16, line(data_flow_analysis_1, 204)).
assign(v_cur_node_1159, data_flow_analysis_1_expr18, line(data_flow_analysis_1, 209)).
method_invoc(data_flow_analysis_1_expr18, m_next_901, line(data_flow_analysis_1, 209)).
ref(data_flow_analysis_1_expr19, data_flow_analysis_1_expr18, line(data_flow_analysis_1, 209)).
method_invoc(data_flow_analysis_1_expr19, m_iterator_902, line(data_flow_analysis_1, 209)).
ref(f_ordered_work_set_1151, data_flow_analysis_1_expr19, line(data_flow_analysis_1, 209)).
method_invoc(data_flow_analysis_1_expr20, m_remove_903, line(data_flow_analysis_1, 210)).
argument(v_cur_node_1159, 1, data_flow_analysis_1_expr20).
ref(f_ordered_work_set_1151, data_flow_analysis_1_expr20, line(data_flow_analysis_1, 210)).
method_invoc(data_flow_analysis_1_expr21, m_join_inputs_904, line(data_flow_analysis_1, 211)).
argument(v_cur_node_1159, 1, data_flow_analysis_1_expr21).
method_invoc(data_flow_analysis_1_expr22, m_flow_905, line(data_flow_analysis_1, 212)).
argument(v_cur_node_1159, 1, data_flow_analysis_1_expr22).
assign(v_next_nodes_1160, data_flow_analysis_1_expr23, line(data_flow_analysis_1, 215)).
cond_expr(data_flow_analysis_1_expr24, data_flow_analysis_1_expr25, data_flow_analysis_1_expr26, line(data_flow_analysis_1, 215)).
method_invoc(data_flow_analysis_1_expr24, m_is_forward_895, line(data_flow_analysis_1, 215)).
ref(v_next_nodes_1160, data_flow_analysis_1_stmt17, line(data_flow_analysis_1, 218)).
method_invoc(data_flow_analysis_1_expr28, m_get_implicit_return_819, line(data_flow_analysis_1, 219)).
ref(f_cfg_1148, data_flow_analysis_1_expr28, line(data_flow_analysis_1, 219)).
method_invoc(data_flow_analysis_1_expr29, m_add_67, line(data_flow_analysis_1, 220)).
argument(v_next_node_1161, 1, data_flow_analysis_1_expr29).
ref(f_ordered_work_set_1151, data_flow_analysis_1_expr29, line(data_flow_analysis_1, 220)).
method_invoc(data_flow_analysis_1_expr31, m_is_forward_895, line(data_flow_analysis_1, 226)).
method_invoc(data_flow_analysis_1_expr32, m_join_inputs_904, line(data_flow_analysis_1, 227)).
argument(data_flow_analysis_1_expr33, 1, data_flow_analysis_1_expr32).
method_invoc(data_flow_analysis_1_expr33, m_get_implicit_return_819, line(data_flow_analysis_1, 227)).
ref(data_flow_analysis_1_expr34, data_flow_analysis_1_expr33, line(data_flow_analysis_1, 227)).
method_invoc(data_flow_analysis_1_expr34, m_get_cfg_892, line(data_flow_analysis_1, 227)).
param(p_node_1162, 1, m_flow_905).
param(p_node_1163, 1, m_join_inputs_904).
param(p_in_state_1164, 1, m_flow_state_908).
param(p_out_state_1165, 2, m_flow_state_908).
param(p_in_1166, 1, m_set_in_910).
param(p_out_1167, 1, m_set_out_912).
param(p_msg_1168, 1, m_max_iterations_exceeded_exception_915).
method_invoc(data_flow_analysis_1_expr35, m_clear_917, line(data_flow_analysis_1, 394)).
ref(f_ordered_work_set_1169, data_flow_analysis_1_expr35, line(data_flow_analysis_1, 394)).
ref(data_flow_analysis_1_expr36, data_flow_analysis_1_stmt24, line(data_flow_analysis_1, 395)).
method_invoc(data_flow_analysis_1_expr36, m_get_directed_graph_nodes_817, line(data_flow_analysis_1, 395)).
ref(data_flow_analysis_1_expr37, data_flow_analysis_1_expr36, line(data_flow_analysis_1, 395)).
method_invoc(data_flow_analysis_1_expr37, m_get_cfg_892, line(data_flow_analysis_1, 395)).
assign(v_out_edge_count_1171, data_flow_analysis_1_expr38, line(data_flow_analysis_1, 396)).
method_invoc(data_flow_analysis_1_expr38, m_size_918, line(data_flow_analysis_1, 396)).
ref(data_flow_analysis_1_expr39, data_flow_analysis_1_expr38, line(data_flow_analysis_1, 396)).
method_invoc(data_flow_analysis_1_expr39, m_get_out_edges_919, line(data_flow_analysis_1, 396)).
argument(data_flow_analysis_1_expr40, 1, data_flow_analysis_1_expr39).
ref(data_flow_analysis_1_expr41, data_flow_analysis_1_expr39, line(data_flow_analysis_1, 396)).
method_invoc(data_flow_analysis_1_expr41, m_get_cfg_892, line(data_flow_analysis_1, 396)).
method_invoc(data_flow_analysis_1_expr40, m_get_value_825, line(data_flow_analysis_1, 396)).
ref(v_node_1170, data_flow_analysis_1_expr40, line(data_flow_analysis_1, 396)).
assign(v_out_lattices_1172, data_flow_analysis_1_expr42, line(data_flow_analysis_1, 397)).
method_invoc(data_flow_analysis_1_expr42, m_new_array_list_329, line(data_flow_analysis_1, 397)).
ref(t_lists_22, data_flow_analysis_1_expr42, line(data_flow_analysis_1, 397)).
assign(v_i_1173, data_flow_analysis_1_literal3, line(data_flow_analysis_1, 398)).
method_invoc(data_flow_analysis_1_expr46, m_add_330, line(data_flow_analysis_1, 399)).
argument(data_flow_analysis_1_expr47, 1, data_flow_analysis_1_expr46).
ref(v_out_lattices_1172, data_flow_analysis_1_expr46, line(data_flow_analysis_1, 399)).
method_invoc(data_flow_analysis_1_expr47, m_create_initial_estimate_lattice_906, line(data_flow_analysis_1, 399)).
method_invoc(data_flow_analysis_1_expr48, m_set_annotation_920, line(data_flow_analysis_1, 401)).
argument(data_flow_analysis_1_expr49, 1, data_flow_analysis_1_expr48).
ref(v_node_1170, data_flow_analysis_1_expr48, line(data_flow_analysis_1, 401)).
method_invoc(data_flow_analysis_1_expr49, m_branched_flow_state_921, line(data_flow_analysis_1, 401)).
argument(data_flow_analysis_1_expr50, 1, data_flow_analysis_1_expr49).
argument(v_out_lattices_1172, 2, data_flow_analysis_1_expr49).
method_invoc(data_flow_analysis_1_expr52, m_get_implicit_return_819, line(data_flow_analysis_1, 403)).
ref(data_flow_analysis_1_expr53, data_flow_analysis_1_expr52, line(data_flow_analysis_1, 403)).
method_invoc(data_flow_analysis_1_expr53, m_get_cfg_892, line(data_flow_analysis_1, 403)).
method_invoc(data_flow_analysis_1_expr54, m_add_67, line(data_flow_analysis_1, 404)).
argument(v_node_1170, 1, data_flow_analysis_1_expr54).
ref(f_ordered_work_set_1169, data_flow_analysis_1_expr54, line(data_flow_analysis_1, 404)).
param(p_target_cfg_1174, 1, m_branched_forward_data_flow_analysis_922).
param(p_join_op_1175, 2, m_branched_forward_data_flow_analysis_922).
method_invoc(data_flow_analysis_1_expr55, m_data_flow_analysis_890, line(data_flow_analysis_1, 411)).
argument(p_target_cfg_1174, 1, data_flow_analysis_1_expr55).
argument(p_join_op_1175, 2, data_flow_analysis_1_expr55).
return(data_flow_analysis_1_literal4, m_is_forward_924, line(data_flow_analysis_1, 427)).
param(p_node_1176, 1, m_branched_flow_through_925).
param(p_input_1177, 2, m_branched_flow_through_925).
param(p_node_1178, 1, m_flow_926).
assign(v_state_1179, data_flow_analysis_1_expr56, line(data_flow_analysis_1, 445)).
method_invoc(data_flow_analysis_1_expr56, m_get_annotation_927, line(data_flow_analysis_1, 445)).
ref(p_node_1178, data_flow_analysis_1_expr56, line(data_flow_analysis_1, 445)).
assign(v_out_before_1180, q_out_45, line(data_flow_analysis_1, 446)).
ref(v_state_1179, q_out_45, line(data_flow_analysis_1, 446)).
assign(q_out_46, data_flow_analysis_1_expr58, line(data_flow_analysis_1, 447)).
ref(v_state_1179, q_out_46, line(data_flow_analysis_1, 447)).
method_invoc(data_flow_analysis_1_expr58, m_branched_flow_through_925, line(data_flow_analysis_1, 447)).
argument(data_flow_analysis_1_expr59, 1, data_flow_analysis_1_expr58).
argument(q_in_46, 2, data_flow_analysis_1_expr58).
method_invoc(data_flow_analysis_1_expr59, m_get_value_825, line(data_flow_analysis_1, 447)).
ref(p_node_1178, data_flow_analysis_1_expr59, line(data_flow_analysis_1, 447)).
ref(v_state_1179, q_in_46, line(data_flow_analysis_1, 447)).
method_invoc(data_flow_analysis_1_expr60, m_check_state_536, line(data_flow_analysis_1, 448)).
argument(data_flow_analysis_1_expr61, 1, data_flow_analysis_1_expr60).
ref(t_preconditions_19, data_flow_analysis_1_expr60, line(data_flow_analysis_1, 448)).
method_invoc(data_flow_analysis_1_expr62, m_size_918, line(data_flow_analysis_1, 448)).
ref(v_out_before_1180, data_flow_analysis_1_expr62, line(data_flow_analysis_1, 448)).
method_invoc(data_flow_analysis_1_expr63, m_size_918, line(data_flow_analysis_1, 448)).
ref(f_out_1181, data_flow_analysis_1_expr63, line(data_flow_analysis_1, 448)).
ref(v_state_1179, q_out_47, line(data_flow_analysis_1, 448)).
assign(v_i_1182, data_flow_analysis_1_literal5, line(data_flow_analysis_1, 449)).
method_invoc(data_flow_analysis_1_expr66, m_size_918, line(data_flow_analysis_1, 449)).
ref(v_out_before_1180, data_flow_analysis_1_expr66, line(data_flow_analysis_1, 449)).
method_invoc(data_flow_analysis_1_expr69, m_equals_928, line(data_flow_analysis_1, 450)).
argument(data_flow_analysis_1_expr70, 1, data_flow_analysis_1_expr69).
ref(data_flow_analysis_1_expr71, data_flow_analysis_1_expr69, line(data_flow_analysis_1, 450)).
method_invoc(data_flow_analysis_1_expr71, m_get_929, line(data_flow_analysis_1, 450)).
argument(v_i_1182, 1, data_flow_analysis_1_expr71).
ref(v_out_before_1180, data_flow_analysis_1_expr71, line(data_flow_analysis_1, 450)).
method_invoc(data_flow_analysis_1_expr70, m_get_929, line(data_flow_analysis_1, 450)).
argument(v_i_1182, 1, data_flow_analysis_1_expr70).
ref(f_out_1181, data_flow_analysis_1_expr70, line(data_flow_analysis_1, 450)).
ref(v_state_1179, q_out_47, line(data_flow_analysis_1, 450)).
return(data_flow_analysis_1_literal6, m_flow_926, line(data_flow_analysis_1, 451)).
param(p_node_1183, 1, m_join_inputs_930).
assign(v_state_1184, data_flow_analysis_1_expr72, line(data_flow_analysis_1, 459)).
method_invoc(data_flow_analysis_1_expr72, m_get_annotation_927, line(data_flow_analysis_1, 459)).
ref(p_node_1183, data_flow_analysis_1_expr72, line(data_flow_analysis_1, 459)).
assign(v_pred_nodes_1185, data_flow_analysis_1_expr73, line(data_flow_analysis_1, 460)).
assign(v_values_1186, data_flow_analysis_1_expr74, line(data_flow_analysis_1, 462)).
method_invoc(data_flow_analysis_1_expr74, m_array_list_931, line(data_flow_analysis_1, 462)).
argument(data_flow_analysis_1_expr75, 1, data_flow_analysis_1_expr74).
method_invoc(data_flow_analysis_1_expr75, m_size_918, line(data_flow_analysis_1, 462)).
ref(v_pred_nodes_1185, data_flow_analysis_1_expr75, line(data_flow_analysis_1, 462)).
ref(v_pred_nodes_1185, data_flow_analysis_1_stmt44, line(data_flow_analysis_1, 464)).
assign(v_pred_node_state_1188, data_flow_analysis_1_expr76, line(data_flow_analysis_1, 465)).
method_invoc(data_flow_analysis_1_expr76, m_get_annotation_927, line(data_flow_analysis_1, 465)).
ref(v_pred_node_1187, data_flow_analysis_1_expr76, line(data_flow_analysis_1, 465)).
assign(v_in_1189, data_flow_analysis_1_expr77, line(data_flow_analysis_1, 467)).
method_invoc(data_flow_analysis_1_expr77, m_get_929, line(data_flow_analysis_1, 467)).
argument(data_flow_analysis_1_expr78, 1, data_flow_analysis_1_expr77).
ref(f_out_1181, data_flow_analysis_1_expr77, line(data_flow_analysis_1, 467)).
ref(v_pred_node_state_1188, q_out_47, line(data_flow_analysis_1, 467)).
method_invoc(data_flow_analysis_1_expr79, m_add_330, line(data_flow_analysis_1, 470)).
argument(v_in_1189, 1, data_flow_analysis_1_expr79).
ref(v_values_1186, data_flow_analysis_1_expr79, line(data_flow_analysis_1, 470)).
method_invoc(data_flow_analysis_1_expr81, m_get_entry_815, line(data_flow_analysis_1, 472)).
ref(data_flow_analysis_1_expr82, data_flow_analysis_1_expr81, line(data_flow_analysis_1, 472)).
method_invoc(data_flow_analysis_1_expr82, m_get_cfg_892, line(data_flow_analysis_1, 472)).
method_invoc(data_flow_analysis_1_expr83, m_set_in_932, line(data_flow_analysis_1, 473)).
argument(data_flow_analysis_1_expr84, 1, data_flow_analysis_1_expr83).
ref(v_state_1184, data_flow_analysis_1_expr83, line(data_flow_analysis_1, 473)).
method_invoc(data_flow_analysis_1_expr84, m_create_entry_lattice_907, line(data_flow_analysis_1, 473)).
method_invoc(data_flow_analysis_1_expr86, m_is_empty_933, line(data_flow_analysis_1, 474)).
ref(v_values_1186, data_flow_analysis_1_expr86, line(data_flow_analysis_1, 474)).
method_invoc(data_flow_analysis_1_expr87, m_set_in_932, line(data_flow_analysis_1, 475)).
argument(data_flow_analysis_1_expr88, 1, data_flow_analysis_1_expr87).
ref(v_state_1184, data_flow_analysis_1_expr87, line(data_flow_analysis_1, 475)).
method_invoc(data_flow_analysis_1_expr88, m_apply_934, line(data_flow_analysis_1, 475)).
argument(v_values_1186, 1, data_flow_analysis_1_expr88).
ref(f_join_op_1190, data_flow_analysis_1_expr88, line(data_flow_analysis_1, 475)).
param(p_in_state_1191, 1, m_branched_flow_state_921).
param(p_out_state_1192, 2, m_branched_flow_state_921).
method_invoc(data_flow_analysis_1_expr89, m_check_not_null_538, line(data_flow_analysis_1, 497)).
argument(p_in_state_1191, 1, data_flow_analysis_1_expr89).
ref(t_preconditions_19, data_flow_analysis_1_expr89, line(data_flow_analysis_1, 497)).
method_invoc(data_flow_analysis_1_expr90, m_check_not_null_538, line(data_flow_analysis_1, 498)).
argument(p_out_state_1192, 1, data_flow_analysis_1_expr90).
ref(t_preconditions_19, data_flow_analysis_1_expr90, line(data_flow_analysis_1, 498)).
assign(f_in_1193, p_in_state_1191, line(data_flow_analysis_1, 499)).
assign(f_out_1194, p_out_state_1192, line(data_flow_analysis_1, 500)).
param(p_in_1195, 1, m_set_in_932).
method_invoc(data_flow_analysis_1_expr97, m_check_not_null_538, line(data_flow_analysis_1, 508)).
argument(p_in_1195, 1, data_flow_analysis_1_expr97).
ref(t_preconditions_19, data_flow_analysis_1_expr97, line(data_flow_analysis_1, 508)).
assign(f_in_1193, p_in_1195, line(data_flow_analysis_1, 509)).
param(p_out_1196, 1, m_set_out_937).
param(p_js_scope_1197, 1, m_compute_escaped_940).
param(p_escaped_1198, 2, m_compute_escaped_940).
param(p_compiler_1199, 3, m_compute_escaped_940).
param(p_t_1200, 1, m_visit_941).
param(p_n_1201, 2, m_visit_941).
param(p_parent_1202, 3, m_visit_941).

%js_doc_info_parser_1 - com.google.javascript.jscomp.parsing.JsDocInfoParser
assign(f_parser_3721, js_doc_info_parser_1_expr1, line(js_doc_info_parser_1, 55)).
method_invoc(js_doc_info_parser_1_expr1, m_error_reporter_parser_3457, line(js_doc_info_parser_1, 55)).
param(p_message_id_3722, 1, m_add_parser_warning_3458).
param(p_message_arg_3723, 2, m_add_parser_warning_3458).
param(p_lineno_3724, 3, m_add_parser_warning_3458).
param(p_charno_3725, 4, m_add_parser_warning_3458).
param(p_message_id_3726, 1, m_add_parser_warning_3459).
param(p_lineno_3727, 2, m_add_parser_warning_3459).
param(p_charno_3728, 3, m_add_parser_warning_3459).
param(p_message_id_3729, 1, m_add_type_warning_3460).
param(p_message_arg_3730, 2, m_add_type_warning_3460).
param(p_lineno_3731, 3, m_add_type_warning_3460).
param(p_charno_3732, 4, m_add_type_warning_3460).
param(p_message_id_3733, 1, m_add_type_warning_3461).
param(p_lineno_3734, 2, m_add_type_warning_3461).
param(p_charno_3735, 3, m_add_type_warning_3461).
assign(f_file_overview_jsdoc_info_3736, js_doc_info_parser_1_literal1, line(js_doc_info_parser_1, 90)).
assign(f_modifies_annotation_keywords_3737, js_doc_info_parser_1_expr2, line(js_doc_info_parser_1, 95)).
param(p_file_level_js_doc_builder_3738, 1, m_set_file_level_js_doc_builder_3380).
assign(f_file_level_js_doc_builder_3739, p_file_level_js_doc_builder_3738, line(js_doc_info_parser_1, 109)).
param(p_file_overview_jsdoc_info_3740, 1, m_set_file_overview_jsdoc_info_3381).
assign(f_file_overview_jsdoc_info_3736, p_file_overview_jsdoc_info_3740, line(js_doc_info_parser_1, 117)).
param(p_stream_3744, 1, m_js_doc_info_parser_3462).
param(p_comment_node_3745, 2, m_js_doc_info_parser_3462).
param(p_associated_node_3746, 3, m_js_doc_info_parser_3462).
param(p_config_3747, 4, m_js_doc_info_parser_3462).
param(p_error_reporter_3748, 5, m_js_doc_info_parser_3462).
assign(f_stream_3749, p_stream_3744, line(js_doc_info_parser_1, 131)).
assign(f_associated_node_3750, p_associated_node_3746, line(js_doc_info_parser_1, 132)).
assign(f_source_file_3751, js_doc_info_parser_1_expr17, line(js_doc_info_parser_1, 135)).
cond_expr(js_doc_info_parser_1_expr19, js_doc_info_parser_1_literal2, js_doc_info_parser_1_expr20, line(js_doc_info_parser_1, 135)).
assign(f_jsdoc_builder_3752, js_doc_info_parser_1_expr23, line(js_doc_info_parser_1, 138)).
method_invoc(js_doc_info_parser_1_expr23, m_jsdoc_info_builder_3463, line(js_doc_info_parser_1, 138)).
argument(q_parse_js_doc_documentation_92, 1, js_doc_info_parser_1_expr23).
ref(p_config_3747, q_parse_js_doc_documentation_92, line(js_doc_info_parser_1, 138)).
method_invoc(js_doc_info_parser_1_expr26, m_record_original_comment_string_3464, line(js_doc_info_parser_1, 140)).
argument(js_doc_info_parser_1_expr27, 1, js_doc_info_parser_1_expr26).
ref(f_jsdoc_builder_3752, js_doc_info_parser_1_expr26, line(js_doc_info_parser_1, 140)).
method_invoc(js_doc_info_parser_1_expr27, m_get_value_3379, line(js_doc_info_parser_1, 140)).
ref(p_comment_node_3745, js_doc_info_parser_1_expr27, line(js_doc_info_parser_1, 140)).
assign(f_annotation_names_3753, q_annotation_names_93, line(js_doc_info_parser_1, 142)).
ref(p_config_3747, q_annotation_names_93, line(js_doc_info_parser_1, 142)).
assign(f_suppression_names_3754, q_suppression_names_94, line(js_doc_info_parser_1, 143)).
ref(p_config_3747, q_suppression_names_94, line(js_doc_info_parser_1, 143)).
assign(f_error_reporter_3755, p_error_reporter_3748, line(js_doc_info_parser_1, 145)).
assign(f_template_node_3756, js_doc_info_parser_1_expr41, line(js_doc_info_parser_1, 146)).
method_invoc(js_doc_info_parser_1_expr41, m_create_template_node_3465, line(js_doc_info_parser_1, 146)).
ref(js_doc_info_parser_1_expr43, js_doc_info_parser_1_expr41, line(js_doc_info_parser_1, 146)).
return(js_doc_info_parser_1_expr44, m_get_source_name_3466, line(js_doc_info_parser_1, 150)).
cond_expr(js_doc_info_parser_1_expr45, js_doc_info_parser_1_literal5, js_doc_info_parser_1_expr46, line(js_doc_info_parser_1, 150)).
method_invoc(js_doc_info_parser_1_expr46, m_get_name_3344, line(js_doc_info_parser_1, 150)).
ref(f_source_file_3751, js_doc_info_parser_1_expr46, line(js_doc_info_parser_1, 150)).
param(p_type_string_3757, 1, m_parse_type_string_3467).
assign(f_state_3758, q_searching_annotation_95, line(js_doc_info_parser_1, 189)).
ref(t_state_94, q_searching_annotation_95, line(js_doc_info_parser_1, 189)).
method_invoc(js_doc_info_parser_1_expr48, m_skip_eols_3468, line(js_doc_info_parser_1, 190)).
assign(v_token_3759, js_doc_info_parser_1_expr49, line(js_doc_info_parser_1, 192)).
method_invoc(js_doc_info_parser_1_expr49, m_next_3469, line(js_doc_info_parser_1, 192)).
assign(v_extended_types_3760, js_doc_info_parser_1_expr50, line(js_doc_info_parser_1, 194)).
method_invoc(js_doc_info_parser_1_expr50, m_new_array_list_329, line(js_doc_info_parser_1, 194)).
ref(t_lists_22, js_doc_info_parser_1_expr50, line(js_doc_info_parser_1, 194)).
method_invoc(js_doc_info_parser_1_expr51, m_should_parse_documentation_3470, line(js_doc_info_parser_1, 197)).
ref(f_jsdoc_builder_3752, js_doc_info_parser_1_expr51, line(js_doc_info_parser_1, 197)).
ref(t_js_doc_token_95, q_annotation_96, line(js_doc_info_parser_1, 204)).
ref(t_state_94, q_searching_annotation_97, line(js_doc_info_parser_1, 216)).
assign(f_state_3758, q_searching_newline_97, line(js_doc_info_parser_1, 217)).
ref(t_state_94, q_searching_newline_97, line(js_doc_info_parser_1, 217)).
assign(v_lineno_3761, js_doc_info_parser_1_expr57, line(js_doc_info_parser_1, 218)).
method_invoc(js_doc_info_parser_1_expr57, m_get_lineno_3471, line(js_doc_info_parser_1, 218)).
ref(f_stream_3749, js_doc_info_parser_1_expr57, line(js_doc_info_parser_1, 218)).
assign(v_charno_3762, js_doc_info_parser_1_expr59, line(js_doc_info_parser_1, 219)).
method_invoc(js_doc_info_parser_1_expr59, m_get_charno_3472, line(js_doc_info_parser_1, 219)).
ref(f_stream_3749, js_doc_info_parser_1_expr59, line(js_doc_info_parser_1, 219)).
assign(v_annotation_name_3763, js_doc_info_parser_1_expr60, line(js_doc_info_parser_1, 221)).
method_invoc(js_doc_info_parser_1_expr60, m_get_string_3473, line(js_doc_info_parser_1, 221)).
ref(f_stream_3749, js_doc_info_parser_1_expr60, line(js_doc_info_parser_1, 221)).
assign(v_annotation_3764, js_doc_info_parser_1_expr61, line(js_doc_info_parser_1, 222)).
method_invoc(js_doc_info_parser_1_expr61, m_get_390, line(js_doc_info_parser_1, 222)).
argument(v_annotation_name_3763, 1, js_doc_info_parser_1_expr61).
ref(f_annotation_names_3753, js_doc_info_parser_1_expr61, line(js_doc_info_parser_1, 222)).
method_invoc(js_doc_info_parser_1_expr63, m_mark_annotation_3474, line(js_doc_info_parser_1, 228)).
argument(v_annotation_name_3763, 1, js_doc_info_parser_1_expr63).
argument(v_lineno_3761, 2, js_doc_info_parser_1_expr63).
argument(v_charno_3762, 3, js_doc_info_parser_1_expr63).
ref(f_jsdoc_builder_3752, js_doc_info_parser_1_expr63, line(js_doc_info_parser_1, 228)).
method_invoc(js_doc_info_parser_1_expr65, m_record_interface_3475, line(js_doc_info_parser_1, 307)).
ref(f_jsdoc_builder_3752, js_doc_info_parser_1_expr65, line(js_doc_info_parser_1, 307)).
assign(v_token_3759, js_doc_info_parser_1_expr67, line(js_doc_info_parser_1, 316)).
method_invoc(js_doc_info_parser_1_expr67, m_eat_tokens_until_eol_3476, line(js_doc_info_parser_1, 316)).
method_invoc(js_doc_info_parser_1_expr68, m_skip_eols_3468, line(js_doc_info_parser_1, 428)).
assign(v_token_3759, js_doc_info_parser_1_expr70, line(js_doc_info_parser_1, 429)).
method_invoc(js_doc_info_parser_1_expr70, m_next_3469, line(js_doc_info_parser_1, 429)).
assign(v_lineno_3761, js_doc_info_parser_1_expr72, line(js_doc_info_parser_1, 430)).
method_invoc(js_doc_info_parser_1_expr72, m_get_lineno_3471, line(js_doc_info_parser_1, 430)).
ref(f_stream_3749, js_doc_info_parser_1_expr72, line(js_doc_info_parser_1, 430)).
assign(v_charno_3762, js_doc_info_parser_1_expr74, line(js_doc_info_parser_1, 431)).
method_invoc(js_doc_info_parser_1_expr74, m_get_charno_3472, line(js_doc_info_parser_1, 431)).
ref(f_stream_3749, js_doc_info_parser_1_expr74, line(js_doc_info_parser_1, 431)).
assign(v_matching_rc_3765, js_doc_info_parser_1_literal8, line(js_doc_info_parser_1, 432)).
ref(t_js_doc_token_95, q_lc_98, line(js_doc_info_parser_1, 434)).
assign(v_token_3759, js_doc_info_parser_1_expr77, line(js_doc_info_parser_1, 435)).
method_invoc(js_doc_info_parser_1_expr77, m_next_3469, line(js_doc_info_parser_1, 435)).
assign(v_matching_rc_3765, js_doc_info_parser_1_literal9, line(js_doc_info_parser_1, 436)).
ref(t_js_doc_token_95, q_string_99, line(js_doc_info_parser_1, 439)).
assign(v_type_node_3766, js_doc_info_parser_1_expr80, line(js_doc_info_parser_1, 440)).
method_invoc(js_doc_info_parser_1_expr80, m_parse_and_record_type_name_node_3477, line(js_doc_info_parser_1, 440)).
argument(v_token_3759, 1, js_doc_info_parser_1_expr80).
argument(v_lineno_3761, 2, js_doc_info_parser_1_expr80).
argument(v_charno_3762, 3, js_doc_info_parser_1_expr80).
argument(v_matching_rc_3765, 4, js_doc_info_parser_1_expr80).
assign(v_lineno_3761, js_doc_info_parser_1_expr82, line(js_doc_info_parser_1, 443)).
method_invoc(js_doc_info_parser_1_expr82, m_get_lineno_3471, line(js_doc_info_parser_1, 443)).
ref(f_stream_3749, js_doc_info_parser_1_expr82, line(js_doc_info_parser_1, 443)).
assign(v_charno_3762, js_doc_info_parser_1_expr84, line(js_doc_info_parser_1, 444)).
method_invoc(js_doc_info_parser_1_expr84, m_get_charno_3472, line(js_doc_info_parser_1, 444)).
ref(f_stream_3749, js_doc_info_parser_1_expr84, line(js_doc_info_parser_1, 444)).
assign(v_type_node_3766, js_doc_info_parser_1_expr86, line(js_doc_info_parser_1, 446)).
method_invoc(js_doc_info_parser_1_expr86, m_wrap_node_3478, line(js_doc_info_parser_1, 446)).
argument(q_bang_100, 1, js_doc_info_parser_1_expr86).
argument(v_type_node_3766, 2, js_doc_info_parser_1_expr86).
ref(t_token_51, q_bang_100, line(js_doc_info_parser_1, 446)).
assign(v_type_3767, js_doc_info_parser_1_expr88, line(js_doc_info_parser_1, 447)).
method_invoc(js_doc_info_parser_1_expr88, m_create_jstype_expression_3479, line(js_doc_info_parser_1, 447)).
argument(v_type_node_3766, 1, js_doc_info_parser_1_expr88).
ref(t_annotation_88, q_extends_101, line(js_doc_info_parser_1, 449)).
method_invoc(js_doc_info_parser_1_expr90, m_add_330, line(js_doc_info_parser_1, 451)).
argument(js_doc_info_parser_1_expr91, 1, js_doc_info_parser_1_expr90).
ref(v_extended_types_3760, js_doc_info_parser_1_expr90, line(js_doc_info_parser_1, 451)).
method_invoc(js_doc_info_parser_1_expr91, m_extended_type_info_3480, line(js_doc_info_parser_1, 451)).
argument(v_type_3767, 1, js_doc_info_parser_1_expr91).
argument(js_doc_info_parser_1_expr92, 2, js_doc_info_parser_1_expr91).
argument(js_doc_info_parser_1_expr93, 3, js_doc_info_parser_1_expr91).
assign(v_token_3759, js_doc_info_parser_1_expr95, line(js_doc_info_parser_1, 461)).
method_invoc(js_doc_info_parser_1_expr95, m_next_3469, line(js_doc_info_parser_1, 461)).
ref(t_js_doc_token_95, q_rc_102, line(js_doc_info_parser_1, 463)).
assign(v_token_3759, js_doc_info_parser_1_expr98, line(js_doc_info_parser_1, 475)).
method_invoc(js_doc_info_parser_1_expr98, m_eat_tokens_until_eol_3481, line(js_doc_info_parser_1, 475)).
argument(v_token_3759, 1, js_doc_info_parser_1_expr98).
method_invoc(js_doc_info_parser_1_expr99, m_has_parsed_file_overview_doc_info_3482, line(js_doc_info_parser_1, 956)).
method_invoc(js_doc_info_parser_1_expr100, m_check_extended_types_3483, line(js_doc_info_parser_1, 959)).
argument(v_extended_types_3760, 1, js_doc_info_parser_1_expr100).
return(js_doc_info_parser_1_literal10, m_parse_3382, line(js_doc_info_parser_1, 960)).
ref(t_state_94, q_searching_newline_103, line(js_doc_info_parser_1, 971)).
assign(v_token_3759, js_doc_info_parser_1_expr103, line(js_doc_info_parser_1, 974)).
method_invoc(js_doc_info_parser_1_expr103, m_next_3469, line(js_doc_info_parser_1, 974)).
ref(t_js_doc_token_95, q_star_103, line(js_doc_info_parser_1, 978)).
ref(t_state_94, q_searching_annotation_104, line(js_doc_info_parser_1, 978)).
assign(v_token_3759, js_doc_info_parser_1_expr108, line(js_doc_info_parser_1, 979)).
method_invoc(js_doc_info_parser_1_expr108, m_next_3469, line(js_doc_info_parser_1, 979)).
param(p_extended_types_3768, 1, m_check_extended_types_3483).
ref(p_extended_types_3768, js_doc_info_parser_1_stmt65, line(js_doc_info_parser_1, 994)).
method_invoc(js_doc_info_parser_1_expr109, m_is_interface_recorded_3484, line(js_doc_info_parser_1, 996)).
ref(f_jsdoc_builder_3752, js_doc_info_parser_1_expr109, line(js_doc_info_parser_1, 996)).
method_invoc(js_doc_info_parser_1_expr111, m_record_extended_interface_3485, line(js_doc_info_parser_1, 997)).
argument(q_type_104, 1, js_doc_info_parser_1_expr111).
ref(f_jsdoc_builder_3752, js_doc_info_parser_1_expr111, line(js_doc_info_parser_1, 997)).
ref(v_type_info_3769, q_type_104, line(js_doc_info_parser_1, 997)).
param(p_token_3770, 1, m_parse_suppress_tag_3486).
param(p_token_3771, 1, m_parse_modifies_tag_3487).
param(p_token_3772, 1, m_parse_and_record_type_node_3488).
param(p_token_3773, 1, m_parse_and_record_type_node_3489).
param(p_matching_lc_3774, 2, m_parse_and_record_type_node_3489).
param(p_token_3775, 1, m_parse_and_record_type_name_node_3477).
param(p_lineno_3776, 2, m_parse_and_record_type_name_node_3477).
param(p_start_charno_3777, 3, m_parse_and_record_type_name_node_3477).
param(p_matching_lc_3778, 4, m_parse_and_record_type_name_node_3477).
return(js_doc_info_parser_1_expr112, m_parse_and_record_type_name_node_3477, line(js_doc_info_parser_1, 1139)).
method_invoc(js_doc_info_parser_1_expr112, m_parse_and_record_type_node_3490, line(js_doc_info_parser_1, 1139)).
argument(p_token_3775, 1, js_doc_info_parser_1_expr112).
argument(p_lineno_3776, 2, js_doc_info_parser_1_expr112).
argument(p_start_charno_3777, 3, js_doc_info_parser_1_expr112).
argument(p_matching_lc_3778, 4, js_doc_info_parser_1_expr112).
argument(js_doc_info_parser_1_literal11, 5, js_doc_info_parser_1_expr112).
param(p_token_3779, 1, m_parse_and_record_param_type_node_3491).
param(p_token_3780, 1, m_parse_and_record_type_node_3490).
param(p_lineno_3781, 2, m_parse_and_record_type_node_3490).
param(p_start_charno_3782, 3, m_parse_and_record_type_node_3490).
param(p_matching_lc_3783, 4, m_parse_and_record_type_node_3490).
param(p_only_parse_simple_names_3784, 5, m_parse_and_record_type_node_3490).
assign(v_type_node_3785, js_doc_info_parser_1_literal12, line(js_doc_info_parser_1, 1188)).
assign(v_type_node_3785, js_doc_info_parser_1_expr114, line(js_doc_info_parser_1, 1191)).
method_invoc(js_doc_info_parser_1_expr114, m_parse_type_name_annotation_3492, line(js_doc_info_parser_1, 1191)).
argument(p_token_3780, 1, js_doc_info_parser_1_expr114).
assign(v_end_lineno_3786, js_doc_info_parser_1_expr116, line(js_doc_info_parser_1, 1197)).
method_invoc(js_doc_info_parser_1_expr116, m_get_lineno_3471, line(js_doc_info_parser_1, 1197)).
ref(f_stream_3749, js_doc_info_parser_1_expr116, line(js_doc_info_parser_1, 1197)).
assign(v_end_charno_3787, js_doc_info_parser_1_expr117, line(js_doc_info_parser_1, 1198)).
method_invoc(js_doc_info_parser_1_expr117, m_get_charno_3472, line(js_doc_info_parser_1, 1198)).
ref(f_stream_3749, js_doc_info_parser_1_expr117, line(js_doc_info_parser_1, 1198)).
method_invoc(js_doc_info_parser_1_expr118, m_mark_type_node_3493, line(js_doc_info_parser_1, 1200)).
argument(v_type_node_3785, 1, js_doc_info_parser_1_expr118).
argument(p_lineno_3781, 2, js_doc_info_parser_1_expr118).
argument(p_start_charno_3782, 3, js_doc_info_parser_1_expr118).
argument(v_end_lineno_3786, 4, js_doc_info_parser_1_expr118).
argument(v_end_charno_3787, 5, js_doc_info_parser_1_expr118).
argument(p_matching_lc_3783, 6, js_doc_info_parser_1_expr118).
ref(f_jsdoc_builder_3752, js_doc_info_parser_1_expr118, line(js_doc_info_parser_1, 1200)).
return(v_type_node_3785, m_parse_and_record_type_node_3490, line(js_doc_info_parser_1, 1204)).
param(p_token_3788, 1, m_to_string_3494).
param(p_n_3789, 1, m_create_jstype_expression_3479).
return(js_doc_info_parser_1_expr119, m_create_jstype_expression_3479, line(js_doc_info_parser_1, 1276)).
cond_expr(js_doc_info_parser_1_expr120, js_doc_info_parser_1_literal14, js_doc_info_parser_1_expr121, line(js_doc_info_parser_1, 1276)).
param(p_string_3790, 1, m_extraction_info_3495).
param(p_token_3791, 2, m_extraction_info_3495).
param(p_type_3792, 1, m_extended_type_info_3480).
param(p_lineno_3793, 2, m_extended_type_info_3480).
param(p_charno_3794, 3, m_extended_type_info_3480).
assign(f_type_3795, p_type_3792, line(js_doc_info_parser_1, 1304)).
assign(f_lineno_3796, p_lineno_3793, line(js_doc_info_parser_1, 1305)).
assign(f_charno_3797, p_charno_3794, line(js_doc_info_parser_1, 1306)).
param(p_token_3798, 1, m_extract_multiline_textual_block_3497).
param(p_token_3799, 1, m_extract_multiline_textual_block_3498).
param(p_option_3800, 2, m_extract_multiline_textual_block_3498).
param(p_token_3801, 1, m_extract_block_comment_3499).
param(p_s_3802, 1, m_trim_end_3500).
param(p_token_3803, 1, m_parse_type_expression_annotation_3501).
param(p_token_3804, 1, m_parse_param_type_expression_annotation_3502).
param(p_token_3805, 1, m_parse_type_name_annotation_3492).
ref(t_js_doc_token_95, q_lc_105, line(js_doc_info_parser_1, 1649)).
return(js_doc_info_parser_1_expr132, m_parse_type_name_annotation_3492, line(js_doc_info_parser_1, 1663)).
method_invoc(js_doc_info_parser_1_expr132, m_parse_type_name_3503, line(js_doc_info_parser_1, 1663)).
argument(p_token_3805, 1, js_doc_info_parser_1_expr132).
param(p_token_3806, 1, m_parse_top_level_type_expression_3504).
param(p_token_3807, 1, m_parse_type_expression_list_3505).
param(p_token_3808, 1, m_parse_type_expression_3506).
param(p_token_3809, 1, m_parse_basic_type_expression_3507).
param(p_token_3810, 1, m_parse_type_name_3503).
ref(t_js_doc_token_95, q_string_105, line(js_doc_info_parser_1, 1804)).
assign(v_type_name_3811, js_doc_info_parser_1_expr134, line(js_doc_info_parser_1, 1808)).
method_invoc(js_doc_info_parser_1_expr134, m_get_string_3473, line(js_doc_info_parser_1, 1808)).
ref(f_stream_3749, js_doc_info_parser_1_expr134, line(js_doc_info_parser_1, 1808)).
assign(v_lineno_3812, js_doc_info_parser_1_expr135, line(js_doc_info_parser_1, 1809)).
method_invoc(js_doc_info_parser_1_expr135, m_get_lineno_3471, line(js_doc_info_parser_1, 1809)).
ref(f_stream_3749, js_doc_info_parser_1_expr135, line(js_doc_info_parser_1, 1809)).
assign(v_charno_3813, js_doc_info_parser_1_expr136, line(js_doc_info_parser_1, 1810)).
method_invoc(js_doc_info_parser_1_expr136, m_get_charno_3472, line(js_doc_info_parser_1, 1810)).
ref(f_stream_3749, js_doc_info_parser_1_expr136, line(js_doc_info_parser_1, 1810)).
method_invoc(js_doc_info_parser_1_expr138, m_match_3508, line(js_doc_info_parser_1, 1811)).
argument(q_eol_105, 1, js_doc_info_parser_1_expr138).
ref(t_js_doc_token_95, q_eol_105, line(js_doc_info_parser_1, 1811)).
assign(v_type_name_node_3814, js_doc_info_parser_1_expr139, line(js_doc_info_parser_1, 1820)).
method_invoc(js_doc_info_parser_1_expr139, m_new_string_node_3509, line(js_doc_info_parser_1, 1820)).
argument(v_type_name_3811, 1, js_doc_info_parser_1_expr139).
argument(v_lineno_3812, 2, js_doc_info_parser_1_expr139).
argument(v_charno_3813, 3, js_doc_info_parser_1_expr139).
method_invoc(js_doc_info_parser_1_expr140, m_match_3508, line(js_doc_info_parser_1, 1822)).
argument(q_lt_106, 1, js_doc_info_parser_1_expr140).
ref(t_js_doc_token_95, q_lt_106, line(js_doc_info_parser_1, 1822)).
return(v_type_name_node_3814, m_parse_type_name_3503, line(js_doc_info_parser_1, 1837)).
param(p_token_3815, 1, m_parse_function_type_3510).
param(p_token_3816, 1, m_parse_parameters_type_3511).
param(p_token_3817, 1, m_parse_result_type_3512).
param(p_token_3818, 1, m_parse_union_type_3513).
param(p_token_3819, 1, m_parse_union_type_with_alternate_3514).
param(p_alternate_3820, 2, m_parse_union_type_with_alternate_3514).
param(p_token_3821, 1, m_parse_array_type_3515).
param(p_token_3822, 1, m_parse_record_type_3516).
param(p_token_3823, 1, m_parse_field_type_list_3517).
param(p_token_3824, 1, m_parse_field_type_3518).
param(p_token_3825, 1, m_parse_field_name_3519).
param(p_type_3826, 1, m_wrap_node_3478).
param(p_n_3827, 2, m_wrap_node_3478).
return(js_doc_info_parser_1_expr141, m_wrap_node_3478, line(js_doc_info_parser_1, 2222)).
cond_expr(js_doc_info_parser_1_expr142, js_doc_info_parser_1_literal16, js_doc_info_parser_1_expr143, line(js_doc_info_parser_1, 2222)).
param(p_type_3828, 1, m_new_node_3520).
param(p_s_3829, 1, m_new_string_node_3521).
param(p_s_3830, 1, m_new_string_node_3509).
param(p_lineno_3831, 2, m_new_string_node_3509).
param(p_charno_3832, 3, m_new_string_node_3509).
assign(v_n_3833, js_doc_info_parser_1_expr144, line(js_doc_info_parser_1, 2237)).
method_invoc(js_doc_info_parser_1_expr144, m_clone_props_from_3450, line(js_doc_info_parser_1, 2237)).
argument(f_template_node_3756, 1, js_doc_info_parser_1_expr144).
ref(js_doc_info_parser_1_expr145, js_doc_info_parser_1_expr144, line(js_doc_info_parser_1, 2237)).
method_invoc(js_doc_info_parser_1_expr145, m_new_string_3522, line(js_doc_info_parser_1, 2237)).
argument(p_s_3830, 1, js_doc_info_parser_1_expr145).
argument(p_lineno_3831, 2, js_doc_info_parser_1_expr145).
argument(p_charno_3832, 3, js_doc_info_parser_1_expr145).
ref(t_node_92, js_doc_info_parser_1_expr145, line(js_doc_info_parser_1, 2237)).
method_invoc(js_doc_info_parser_1_expr146, m_set_length_3523, line(js_doc_info_parser_1, 2238)).
argument(js_doc_info_parser_1_expr147, 1, js_doc_info_parser_1_expr146).
ref(v_n_3833, js_doc_info_parser_1_expr146, line(js_doc_info_parser_1, 2238)).
method_invoc(js_doc_info_parser_1_expr147, m_length_1652, line(js_doc_info_parser_1, 2238)).
ref(p_s_3830, js_doc_info_parser_1_expr147, line(js_doc_info_parser_1, 2238)).
return(v_n_3833, m_new_string_node_3509, line(js_doc_info_parser_1, 2239)).
assign(v_template_node_3834, js_doc_info_parser_1_expr148, line(js_doc_info_parser_1, 2246)).
method_invoc(js_doc_info_parser_1_expr148, m_script_3524, line(js_doc_info_parser_1, 2246)).
ref(t_ir_96, js_doc_info_parser_1_expr148, line(js_doc_info_parser_1, 2246)).
method_invoc(js_doc_info_parser_1_expr149, m_set_static_source_file_1190, line(js_doc_info_parser_1, 2247)).
argument(js_doc_info_parser_1_expr150, 1, js_doc_info_parser_1_expr149).
ref(v_template_node_3834, js_doc_info_parser_1_expr149, line(js_doc_info_parser_1, 2247)).
return(v_template_node_3834, m_create_template_node_3465, line(js_doc_info_parser_1, 2251)).
param(p_warning_3835, 1, m_report_type_syntax_warning_3525).
return(js_doc_info_parser_1_expr151, m_eat_tokens_until_eol_3476, line(js_doc_info_parser_1, 2268)).
method_invoc(js_doc_info_parser_1_expr151, m_eat_tokens_until_eol_3481, line(js_doc_info_parser_1, 2268)).
argument(js_doc_info_parser_1_expr152, 1, js_doc_info_parser_1_expr151).
method_invoc(js_doc_info_parser_1_expr152, m_next_3469, line(js_doc_info_parser_1, 2268)).
param(p_token_3836, 1, m_eat_tokens_until_eol_3481).
ref(t_js_doc_token_95, q_eol_107, line(js_doc_info_parser_1, 2277)).
ref(t_js_doc_token_95, q_eoc_107, line(js_doc_info_parser_1, 2277)).
assign(f_state_3758, q_searching_annotation_108, line(js_doc_info_parser_1, 2279)).
ref(t_state_94, q_searching_annotation_108, line(js_doc_info_parser_1, 2279)).
return(p_token_3836, m_eat_tokens_until_eol_3481, line(js_doc_info_parser_1, 2280)).
assign(p_token_3836, js_doc_info_parser_1_expr159, line(js_doc_info_parser_1, 2282)).
method_invoc(js_doc_info_parser_1_expr159, m_next_3469, line(js_doc_info_parser_1, 2282)).
assign(f_no_unread_token_3837, js_doc_info_parser_1_literal19, line(js_doc_info_parser_1, 2289)).
assign(f_unread_token_3838, f_no_unread_token_3837, line(js_doc_info_parser_1, 2294)).
param(p_token_3839, 1, m_restore_look_ahead_3527).
param(p_token_3840, 1, m_match_3508).
assign(f_unread_token_3838, js_doc_info_parser_1_expr161, line(js_doc_info_parser_1, 2306)).
method_invoc(js_doc_info_parser_1_expr161, m_next_3469, line(js_doc_info_parser_1, 2306)).
return(js_doc_info_parser_1_expr162, m_match_3508, line(js_doc_info_parser_1, 2307)).
param(p_token_1_3841, 1, m_match_3528).
param(p_token_2_3842, 2, m_match_3528).
return(js_doc_info_parser_1_expr164, m_next_3469, line(js_doc_info_parser_1, 2325)).
method_invoc(js_doc_info_parser_1_expr164, m_get_js_doc_token_3529, line(js_doc_info_parser_1, 2325)).
ref(f_stream_3749, js_doc_info_parser_1_expr164, line(js_doc_info_parser_1, 2325)).
return(js_doc_info_parser_1_expr165, m_next_3469, line(js_doc_info_parser_1, 2327)).
method_invoc(js_doc_info_parser_1_expr165, m_current_3530, line(js_doc_info_parser_1, 2327)).
assign(v_t_3843, f_unread_token_3838, line(js_doc_info_parser_1, 2335)).
assign(f_unread_token_3838, f_no_unread_token_3837, line(js_doc_info_parser_1, 2336)).
return(v_t_3843, m_current_3530, line(js_doc_info_parser_1, 2337)).
method_invoc(js_doc_info_parser_1_expr167, m_match_3508, line(js_doc_info_parser_1, 2345)).
argument(q_eol_108, 1, js_doc_info_parser_1_expr167).
ref(t_js_doc_token_95, q_eol_108, line(js_doc_info_parser_1, 2345)).
return(js_doc_info_parser_1_expr168, m_has_parsed_file_overview_doc_info_3482, line(js_doc_info_parser_1, 2358)).
method_invoc(js_doc_info_parser_1_expr168, m_is_populated_with_file_overview_3531, line(js_doc_info_parser_1, 2358)).
ref(f_jsdoc_builder_3752, js_doc_info_parser_1_expr168, line(js_doc_info_parser_1, 2358)).
return(js_doc_info_parser_1_expr169, m_retrieve_and_reset_parsed_jsdoc_info_3360, line(js_doc_info_parser_1, 2366)).
method_invoc(js_doc_info_parser_1_expr169, m_build_3533, line(js_doc_info_parser_1, 2366)).
argument(f_associated_node_3750, 1, js_doc_info_parser_1_expr169).
ref(f_jsdoc_builder_3752, js_doc_info_parser_1_expr169, line(js_doc_info_parser_1, 2366)).
return(f_file_overview_jsdoc_info_3736, m_get_file_overview_jsdoc_info_3355, line(js_doc_info_parser_1, 2373)).

%jstype_native_1 - com.google.javascript.rhino.jstype.JSTypeNative

%linked_directed_graph_1 - com.google.javascript.jscomp.graph.LinkedDirectedGraph
assign(f_nodes_3421, linked_directed_graph_1_expr1, line(linked_directed_graph_1, 44)).
param(p_use_node_annotations_3422, 1, m_linked_directed_graph_877).
param(p_use_edge_annotations_3423, 2, m_linked_directed_graph_877).
assign(f_use_node_annotations_3424, p_use_node_annotations_3422, line(linked_directed_graph_1, 73)).
assign(f_use_edge_annotations_3425, p_use_edge_annotations_3423, line(linked_directed_graph_1, 74)).
param(p_src_value_3426, 1, m_connect_3274).
param(p_edge_value_3427, 2, m_connect_3274).
param(p_dest_value_3428, 3, m_connect_3274).
assign(v_src_3429, linked_directed_graph_1_expr8, line(linked_directed_graph_1, 79)).
method_invoc(linked_directed_graph_1_expr8, m_get_node_or_fail_3254, line(linked_directed_graph_1, 79)).
argument(p_src_value_3426, 1, linked_directed_graph_1_expr8).
assign(v_dest_3430, linked_directed_graph_1_expr9, line(linked_directed_graph_1, 80)).
method_invoc(linked_directed_graph_1_expr9, m_get_node_or_fail_3254, line(linked_directed_graph_1, 80)).
argument(p_dest_value_3428, 1, linked_directed_graph_1_expr9).
assign(v_edge_3431, linked_directed_graph_1_expr10, line(linked_directed_graph_1, 81)).
method_invoc(linked_directed_graph_1_expr11, m_add_330, line(linked_directed_graph_1, 85)).
argument(v_edge_3431, 1, linked_directed_graph_1_expr11).
ref(linked_directed_graph_1_expr12, linked_directed_graph_1_expr11, line(linked_directed_graph_1, 85)).
method_invoc(linked_directed_graph_1_expr12, m_get_out_edges_3275, line(linked_directed_graph_1, 85)).
ref(v_src_3429, linked_directed_graph_1_expr12, line(linked_directed_graph_1, 85)).
method_invoc(linked_directed_graph_1_expr13, m_add_330, line(linked_directed_graph_1, 86)).
argument(v_edge_3431, 1, linked_directed_graph_1_expr13).
ref(linked_directed_graph_1_expr14, linked_directed_graph_1_expr13, line(linked_directed_graph_1, 86)).
method_invoc(linked_directed_graph_1_expr14, m_get_in_edges_3276, line(linked_directed_graph_1, 86)).
ref(v_dest_3430, linked_directed_graph_1_expr14, line(linked_directed_graph_1, 86)).
param(p_n_1_3432, 1, m_disconnect_3277).
param(p_n_2_3433, 2, m_disconnect_3277).
param(p_src_value_3434, 1, m_disconnect_in_direction_3278).
param(p_dest_value_3435, 2, m_disconnect_in_direction_3278).
return(linked_directed_graph_1_expr15, m_get_directed_graph_nodes_817, line(linked_directed_graph_1, 107)).
method_invoc(linked_directed_graph_1_expr15, m_unmodifiable_collection_3279, line(linked_directed_graph_1, 107)).
argument(linked_directed_graph_1_expr16, 1, linked_directed_graph_1_expr15).
ref(t_collections_27, linked_directed_graph_1_expr15, line(linked_directed_graph_1, 107)).
param(p_node_value_3436, 1, m_get_directed_graph_node_3280).
return(linked_directed_graph_1_expr17, m_get_directed_graph_node_3280, line(linked_directed_graph_1, 113)).
method_invoc(linked_directed_graph_1_expr17, m_get_390, line(linked_directed_graph_1, 113)).
argument(p_node_value_3436, 1, linked_directed_graph_1_expr17).
ref(f_nodes_3437, linked_directed_graph_1_expr17, line(linked_directed_graph_1, 113)).
param(p_node_value_3438, 1, m_get_node_3281).
return(linked_directed_graph_1_expr18, m_get_node_3281, line(linked_directed_graph_1, 118)).
method_invoc(linked_directed_graph_1_expr18, m_get_directed_graph_node_3280, line(linked_directed_graph_1, 118)).
argument(p_node_value_3438, 1, linked_directed_graph_1_expr18).
param(p_node_value_3439, 1, m_get_in_edges_3282).
param(p_node_value_3440, 1, m_get_out_edges_919).
assign(v_node_3441, linked_directed_graph_1_expr19, line(linked_directed_graph_1, 129)).
method_invoc(linked_directed_graph_1_expr19, m_get_node_or_fail_3254, line(linked_directed_graph_1, 129)).
argument(p_node_value_3440, 1, linked_directed_graph_1_expr19).
return(linked_directed_graph_1_expr20, m_get_out_edges_919, line(linked_directed_graph_1, 130)).
method_invoc(linked_directed_graph_1_expr20, m_unmodifiable_list_3283, line(linked_directed_graph_1, 130)).
argument(linked_directed_graph_1_expr21, 1, linked_directed_graph_1_expr20).
ref(t_collections_27, linked_directed_graph_1_expr20, line(linked_directed_graph_1, 130)).
method_invoc(linked_directed_graph_1_expr21, m_get_out_edges_3275, line(linked_directed_graph_1, 130)).
ref(v_node_3441, linked_directed_graph_1_expr21, line(linked_directed_graph_1, 130)).
param(p_node_value_3442, 1, m_create_directed_graph_node_878).
assign(v_node_3443, linked_directed_graph_1_expr22, line(linked_directed_graph_1, 135)).
method_invoc(linked_directed_graph_1_expr22, m_get_390, line(linked_directed_graph_1, 135)).
argument(p_node_value_3442, 1, linked_directed_graph_1_expr22).
ref(f_nodes_3437, linked_directed_graph_1_expr22, line(linked_directed_graph_1, 135)).
assign(v_node_3443, linked_directed_graph_1_expr25, line(linked_directed_graph_1, 137)).
cond_expr(f_use_node_annotations_3424, linked_directed_graph_1_expr26, linked_directed_graph_1_expr27, line(linked_directed_graph_1, 137)).
method_invoc(linked_directed_graph_1_expr28, m_put_395, line(linked_directed_graph_1, 140)).
argument(p_node_value_3442, 1, linked_directed_graph_1_expr28).
argument(v_node_3443, 2, linked_directed_graph_1_expr28).
ref(f_nodes_3437, linked_directed_graph_1_expr28, line(linked_directed_graph_1, 140)).
return(v_node_3443, m_create_directed_graph_node_878, line(linked_directed_graph_1, 142)).
param(p_n_1_3444, 1, m_get_edges_3284).
param(p_n_2_3445, 2, m_get_edges_3284).
param(p_n_1_3446, 1, m_get_first_edge_3285).
param(p_n_2_3447, 2, m_get_first_edge_3285).
param(p_value_3448, 1, m_create_node_859).
return(linked_directed_graph_1_expr29, m_create_node_859, line(linked_directed_graph_1, 177)).
method_invoc(linked_directed_graph_1_expr29, m_create_directed_graph_node_878, line(linked_directed_graph_1, 177)).
argument(p_value_3448, 1, linked_directed_graph_1_expr29).
param(p_n_1_3449, 1, m_get_directed_graph_edges_3286).
param(p_n_2_3450, 2, m_get_directed_graph_edges_3286).
param(p_n_1_3451, 1, m_is_connected_in_direction_3287).
param(p_n_2_3452, 2, m_is_connected_in_direction_3287).
param(p_n_1_3453, 1, m_is_connected_in_direction_3288).
param(p_edge_value_3454, 2, m_is_connected_in_direction_3288).
param(p_n_2_3455, 3, m_is_connected_in_direction_3288).
return(linked_directed_graph_1_expr30, m_is_connected_in_direction_3288, line(linked_directed_graph_1, 200)).
method_invoc(linked_directed_graph_1_expr30, m_is_connected_in_direction_3289, line(linked_directed_graph_1, 200)).
argument(p_n_1_3453, 1, linked_directed_graph_1_expr30).
argument(linked_directed_graph_1_expr31, 2, linked_directed_graph_1_expr30).
argument(p_n_2_3455, 3, linked_directed_graph_1_expr30).
method_invoc(linked_directed_graph_1_expr31, m_equal_to_3290, line(linked_directed_graph_1, 200)).
argument(p_edge_value_3454, 1, linked_directed_graph_1_expr31).
ref(t_predicates_87, linked_directed_graph_1_expr31, line(linked_directed_graph_1, 200)).
param(p_n_1_3456, 1, m_is_connected_in_direction_3289).
param(p_edge_matcher_3457, 2, m_is_connected_in_direction_3289).
param(p_n_2_3458, 3, m_is_connected_in_direction_3289).
assign(v_d_node1_3459, linked_directed_graph_1_expr32, line(linked_directed_graph_1, 205)).
method_invoc(linked_directed_graph_1_expr32, m_get_node_or_fail_3254, line(linked_directed_graph_1, 205)).
argument(p_n_1_3456, 1, linked_directed_graph_1_expr32).
assign(v_d_node2_3460, linked_directed_graph_1_expr33, line(linked_directed_graph_1, 206)).
method_invoc(linked_directed_graph_1_expr33, m_get_node_or_fail_3254, line(linked_directed_graph_1, 206)).
argument(p_n_2_3458, 1, linked_directed_graph_1_expr33).
ref(linked_directed_graph_1_expr34, linked_directed_graph_1_stmt22, line(linked_directed_graph_1, 207)).
method_invoc(linked_directed_graph_1_expr34, m_get_out_edges_3232, line(linked_directed_graph_1, 207)).
ref(v_d_node1_3459, linked_directed_graph_1_expr34, line(linked_directed_graph_1, 207)).
method_invoc(linked_directed_graph_1_expr37, m_get_destination_3235, line(linked_directed_graph_1, 208)).
ref(v_out_edge_3461, linked_directed_graph_1_expr37, line(linked_directed_graph_1, 208)).
return(linked_directed_graph_1_literal2, m_is_connected_in_direction_3289, line(linked_directed_graph_1, 214)).
param(p_node_value_3462, 1, m_get_directed_pred_nodes_3291).
param(p_node_value_3463, 1, m_get_directed_succ_nodes_3292).
param(p_d_node_3464, 1, m_get_directed_pred_nodes_3293).
assign(v_node_list_3465, linked_directed_graph_1_expr39, line(linked_directed_graph_1, 233)).
method_invoc(linked_directed_graph_1_expr39, m_new_array_list_329, line(linked_directed_graph_1, 233)).
ref(t_lists_22, linked_directed_graph_1_expr39, line(linked_directed_graph_1, 233)).
ref(linked_directed_graph_1_expr40, linked_directed_graph_1_stmt27, line(linked_directed_graph_1, 234)).
method_invoc(linked_directed_graph_1_expr40, m_get_in_edges_3233, line(linked_directed_graph_1, 234)).
ref(p_d_node_3464, linked_directed_graph_1_expr40, line(linked_directed_graph_1, 234)).
method_invoc(linked_directed_graph_1_expr41, m_add_330, line(linked_directed_graph_1, 235)).
argument(linked_directed_graph_1_expr42, 1, linked_directed_graph_1_expr41).
ref(v_node_list_3465, linked_directed_graph_1_expr41, line(linked_directed_graph_1, 235)).
method_invoc(linked_directed_graph_1_expr42, m_get_source_3234, line(linked_directed_graph_1, 235)).
ref(v_edge_3466, linked_directed_graph_1_expr42, line(linked_directed_graph_1, 235)).
return(v_node_list_3465, m_get_directed_pred_nodes_3293, line(linked_directed_graph_1, 237)).
param(p_d_node_3467, 1, m_get_directed_succ_nodes_3294).
assign(v_node_list_3468, linked_directed_graph_1_expr44, line(linked_directed_graph_1, 246)).
method_invoc(linked_directed_graph_1_expr44, m_new_array_list_329, line(linked_directed_graph_1, 246)).
ref(t_lists_22, linked_directed_graph_1_expr44, line(linked_directed_graph_1, 246)).
ref(linked_directed_graph_1_expr45, linked_directed_graph_1_stmt32, line(linked_directed_graph_1, 247)).
method_invoc(linked_directed_graph_1_expr45, m_get_out_edges_3232, line(linked_directed_graph_1, 247)).
ref(p_d_node_3467, linked_directed_graph_1_expr45, line(linked_directed_graph_1, 247)).
method_invoc(linked_directed_graph_1_expr46, m_add_330, line(linked_directed_graph_1, 248)).
argument(linked_directed_graph_1_expr47, 1, linked_directed_graph_1_expr46).
ref(v_node_list_3468, linked_directed_graph_1_expr46, line(linked_directed_graph_1, 248)).
method_invoc(linked_directed_graph_1_expr47, m_get_destination_3235, line(linked_directed_graph_1, 248)).
ref(v_edge_3469, linked_directed_graph_1_expr47, line(linked_directed_graph_1, 248)).
return(v_node_list_3468, m_get_directed_succ_nodes_3294, line(linked_directed_graph_1, 250)).
param(p_value_3470, 1, m_get_neighbor_nodes_3300).
param(p_node_3471, 1, m_get_neighbor_nodes_3301).
param(p_value_3472, 1, m_get_neighbor_nodes_iterator_3302).
param(p_value_3473, 1, m_get_node_degree_3304).
assign(f_in_edge_list_3474, linked_directed_graph_1_expr48, line(linked_directed_graph_1, 335)).
method_invoc(linked_directed_graph_1_expr48, m_new_array_list_329, line(linked_directed_graph_1, 335)).
ref(t_lists_22, linked_directed_graph_1_expr48, line(linked_directed_graph_1, 335)).
assign(f_out_edge_list_3475, linked_directed_graph_1_expr49, line(linked_directed_graph_1, 336)).
param(p_node_value_3476, 1, m_linked_directed_graph_node_3305).
assign(f_value_3477, p_node_value_3476, line(linked_directed_graph_1, 347)).
return(f_value_3477, m_get_value_3306, line(linked_directed_graph_1, 352)).
param(p_data_3478, 1, m_set_annotation_3308).
return(f_in_edge_list_3479, m_get_in_edges_3276, line(linked_directed_graph_1, 389)).
return(f_out_edge_list_3480, m_get_out_edges_3275, line(linked_directed_graph_1, 394)).
param(p_node_value_3481, 1, m_annotated_linked_directed_graph_node_3317).
method_invoc(linked_directed_graph_1_expr53, m_linked_directed_graph_node_3305, line(linked_directed_graph_1, 438)).
argument(p_node_value_3481, 1, linked_directed_graph_1_expr53).
return(linked_directed_graph_1_expr54, m_get_annotation_3318, line(linked_directed_graph_1, 444)).
assign(linked_directed_graph_1_expr54, f_annotation_3482, line(linked_directed_graph_1, 444)).
param(p_data_3483, 1, m_set_annotation_3319).
assign(f_annotation_3482, p_data_3483, line(linked_directed_graph_1, 449)).
param(p_source_node_3484, 1, m_linked_directed_graph_edge_3320).
param(p_edge_value_3485, 2, m_linked_directed_graph_edge_3320).
param(p_dest_node_3486, 3, m_linked_directed_graph_edge_3320).
assign(f_value_3487, p_edge_value_3485, line(linked_directed_graph_1, 473)).
assign(f_source_node_3488, p_source_node_3484, line(linked_directed_graph_1, 474)).
assign(f_dest_node_3489, p_dest_node_3486, line(linked_directed_graph_1, 475)).
return(f_source_node_3488, m_get_source_3321, line(linked_directed_graph_1, 480)).
return(f_dest_node_3489, m_get_destination_3322, line(linked_directed_graph_1, 485)).
param(p_node_3490, 1, m_set_destination_3323).
param(p_node_3491, 1, m_set_source_3324).
return(f_value_3487, m_get_value_3325, line(linked_directed_graph_1, 500)).
param(p_data_3492, 1, m_set_annotation_3327).
param(p_source_node_3493, 1, m_annotated_linked_directed_graph_edge_3335).
param(p_edge_value_3494, 2, m_annotated_linked_directed_graph_edge_3335).
param(p_dest_node_3495, 3, m_annotated_linked_directed_graph_edge_3335).
param(p_data_3496, 1, m_set_annotation_3337).

%variable_renaming_policy_1 - com.google.javascript.jscomp.VariableRenamingPolicy

%parser_runner_1 - com.google.javascript.jscomp.parsing.ParserRunner
assign(f_annotation_names_3904, parser_runner_1_literal1, line(parser_runner_1, 42)).
assign(f_suppression_names_3905, parser_runner_1_literal2, line(parser_runner_1, 44)).
assign(f_reserved_vars_3906, parser_runner_1_literal3, line(parser_runner_1, 45)).
param(p_is_ide_mode_3907, 1, m_create_config_3557).
param(p_is_ide_mode_3908, 1, m_create_config_3558).
param(p_language_mode_3909, 2, m_create_config_3558).
param(p_accept_const_keyword_3910, 3, m_create_config_3558).
param(p_is_ide_mode_3911, 1, m_create_config_465).
param(p_language_mode_3912, 2, m_create_config_465).
param(p_accept_const_keyword_3913, 3, m_create_config_465).
param(p_extra_annotation_names_3914, 4, m_create_config_465).
method_invoc(parser_runner_1_expr1, m_init_resource_config_3559, line(parser_runner_1, 65)).
assign(v_effective_annotation_names_3915, f_annotation_names_3904, line(parser_runner_1, 68)).
return(parser_runner_1_expr4, m_create_config_465, line(parser_runner_1, 73)).
method_invoc(parser_runner_1_expr4, m_config_3338, line(parser_runner_1, 73)).
argument(v_effective_annotation_names_3915, 1, parser_runner_1_expr4).
argument(f_suppression_names_3905, 2, parser_runner_1_expr4).
argument(p_is_ide_mode_3911, 3, parser_runner_1_expr4).
argument(p_language_mode_3912, 4, parser_runner_1_expr4).
argument(p_accept_const_keyword_3913, 5, parser_runner_1_expr4).
assign(v_config_3916, parser_runner_1_expr6, line(parser_runner_1, 87)).
method_invoc(parser_runner_1_expr6, m_get_bundle_3561, line(parser_runner_1, 87)).
argument(f_config_resource_3917, 1, parser_runner_1_expr6).
ref(t_resource_bundle_98, parser_runner_1_expr6, line(parser_runner_1, 87)).
assign(f_annotation_names_3904, parser_runner_1_expr8, line(parser_runner_1, 88)).
method_invoc(parser_runner_1_expr8, m_extract_list_3562, line(parser_runner_1, 88)).
argument(parser_runner_1_expr9, 1, parser_runner_1_expr8).
method_invoc(parser_runner_1_expr9, m_get_string_3563, line(parser_runner_1, 88)).
argument(parser_runner_1_literal6, 1, parser_runner_1_expr9).
ref(v_config_3916, parser_runner_1_expr9, line(parser_runner_1, 88)).
assign(f_suppression_names_3905, parser_runner_1_expr11, line(parser_runner_1, 89)).
method_invoc(parser_runner_1_expr11, m_extract_list_3562, line(parser_runner_1, 89)).
argument(parser_runner_1_expr12, 1, parser_runner_1_expr11).
method_invoc(parser_runner_1_expr12, m_get_string_3563, line(parser_runner_1, 89)).
argument(parser_runner_1_literal7, 1, parser_runner_1_expr12).
ref(v_config_3916, parser_runner_1_expr12, line(parser_runner_1, 89)).
assign(f_reserved_vars_3906, parser_runner_1_expr14, line(parser_runner_1, 90)).
method_invoc(parser_runner_1_expr14, m_extract_list_3562, line(parser_runner_1, 90)).
argument(parser_runner_1_expr15, 1, parser_runner_1_expr14).
method_invoc(parser_runner_1_expr15, m_get_string_3563, line(parser_runner_1, 90)).
argument(parser_runner_1_literal8, 1, parser_runner_1_expr15).
ref(v_config_3916, parser_runner_1_expr15, line(parser_runner_1, 90)).
param(p_config_prop_3918, 1, m_extract_list_3562).
assign(v_names_3919, parser_runner_1_expr16, line(parser_runner_1, 94)).
method_invoc(parser_runner_1_expr16, m_split_3564, line(parser_runner_1, 94)).
argument(parser_runner_1_literal9, 1, parser_runner_1_expr16).
ref(p_config_prop_3918, parser_runner_1_expr16, line(parser_runner_1, 94)).
assign(v_trimmed_names_3920, parser_runner_1_expr17, line(parser_runner_1, 95)).
method_invoc(parser_runner_1_expr17, m_new_hash_set_522, line(parser_runner_1, 95)).
ref(t_sets_12, parser_runner_1_expr17, line(parser_runner_1, 95)).
ref(v_names_3919, parser_runner_1_stmt12, line(parser_runner_1, 96)).
method_invoc(parser_runner_1_expr18, m_add_67, line(parser_runner_1, 97)).
argument(parser_runner_1_expr19, 1, parser_runner_1_expr18).
ref(v_trimmed_names_3920, parser_runner_1_expr18, line(parser_runner_1, 97)).
method_invoc(parser_runner_1_expr19, m_trim_3565, line(parser_runner_1, 97)).
ref(v_name_3921, parser_runner_1_expr19, line(parser_runner_1, 97)).
return(parser_runner_1_expr20, m_extract_list_3562, line(parser_runner_1, 99)).
method_invoc(parser_runner_1_expr20, m_copy_of_166, line(parser_runner_1, 99)).
argument(v_trimmed_names_3920, 1, parser_runner_1_expr20).
ref(t_immutable_set_13, parser_runner_1_expr20, line(parser_runner_1, 99)).
param(p_source_file_3922, 1, m_parse_1188).
param(p_source_string_3923, 2, m_parse_1188).
param(p_config_3924, 3, m_parse_1188).
param(p_error_reporter_3925, 4, m_parse_1188).
param(p_logger_3926, 5, m_parse_1188).
throw(m_parse_1188, ioexception).
assign(v_cx_3927, parser_runner_1_expr21, line(parser_runner_1, 116)).
method_invoc(parser_runner_1_expr21, m_enter_3566, line(parser_runner_1, 116)).
ref(t_context_99, parser_runner_1_expr21, line(parser_runner_1, 116)).
method_invoc(parser_runner_1_expr22, m_set_error_reporter_3567, line(parser_runner_1, 117)).
argument(p_error_reporter_3925, 1, parser_runner_1_expr22).
ref(v_cx_3927, parser_runner_1_expr22, line(parser_runner_1, 117)).
method_invoc(parser_runner_1_expr23, m_set_language_version_3568, line(parser_runner_1, 118)).
argument(q_version_1_5_109, 1, parser_runner_1_expr23).
ref(v_cx_3927, parser_runner_1_expr23, line(parser_runner_1, 118)).
ref(t_context_99, q_version_1_5_109, line(parser_runner_1, 118)).
assign(v_compiler_env_3928, parser_runner_1_expr24, line(parser_runner_1, 119)).
method_invoc(parser_runner_1_expr24, m_compiler_environs_3569, line(parser_runner_1, 119)).
method_invoc(parser_runner_1_expr25, m_init_from_context_3570, line(parser_runner_1, 120)).
argument(v_cx_3927, 1, parser_runner_1_expr25).
ref(v_compiler_env_3928, parser_runner_1_expr25, line(parser_runner_1, 120)).
method_invoc(parser_runner_1_expr26, m_set_recording_comments_3571, line(parser_runner_1, 121)).
argument(parser_runner_1_literal10, 1, parser_runner_1_expr26).
ref(v_compiler_env_3928, parser_runner_1_expr26, line(parser_runner_1, 121)).
method_invoc(parser_runner_1_expr27, m_set_recording_local_js_doc_comments_3572, line(parser_runner_1, 122)).
argument(parser_runner_1_literal11, 1, parser_runner_1_expr27).
ref(v_compiler_env_3928, parser_runner_1_expr27, line(parser_runner_1, 122)).
method_invoc(parser_runner_1_expr28, m_set_warn_trailing_comma_3573, line(parser_runner_1, 125)).
argument(parser_runner_1_expr29, 1, parser_runner_1_expr28).
ref(v_compiler_env_3928, parser_runner_1_expr28, line(parser_runner_1, 125)).
assign(v_accept_es5_3929, parser_runner_1_expr30, line(parser_runner_1, 129)).
method_invoc(parser_runner_1_expr31, m_set_reserved_keyword_as_identifier_3574, line(parser_runner_1, 131)).
argument(v_accept_es5_3929, 1, parser_runner_1_expr31).
ref(v_compiler_env_3928, parser_runner_1_expr31, line(parser_runner_1, 131)).
method_invoc(parser_runner_1_expr32, m_set_allow_member_expr_as_function_name_3575, line(parser_runner_1, 133)).
argument(parser_runner_1_literal12, 1, parser_runner_1_expr32).
ref(v_compiler_env_3928, parser_runner_1_expr32, line(parser_runner_1, 133)).
method_invoc(parser_runner_1_expr33, m_set_ide_mode_3576, line(parser_runner_1, 134)).
argument(q_is_ide_mode_110, 1, parser_runner_1_expr33).
ref(v_compiler_env_3928, parser_runner_1_expr33, line(parser_runner_1, 134)).
ref(p_config_3924, q_is_ide_mode_110, line(parser_runner_1, 134)).
method_invoc(parser_runner_1_expr34, m_set_recover_from_errors_3577, line(parser_runner_1, 135)).
argument(q_is_ide_mode_111, 1, parser_runner_1_expr34).
ref(v_compiler_env_3928, parser_runner_1_expr34, line(parser_runner_1, 135)).
ref(p_config_3924, q_is_ide_mode_111, line(parser_runner_1, 135)).
assign(v_p_3930, parser_runner_1_expr35, line(parser_runner_1, 137)).
method_invoc(parser_runner_1_expr35, m_parser_3578, line(parser_runner_1, 137)).
argument(v_compiler_env_3928, 1, parser_runner_1_expr35).
argument(p_error_reporter_3925, 2, parser_runner_1_expr35).
assign(v_ast_root_3931, parser_runner_1_literal13, line(parser_runner_1, 138)).
assign(v_ast_root_3931, parser_runner_1_expr37, line(parser_runner_1, 140)).
method_invoc(parser_runner_1_expr37, m_parse_3579, line(parser_runner_1, 140)).
argument(p_source_string_3923, 1, parser_runner_1_expr37).
argument(parser_runner_1_expr38, 2, parser_runner_1_expr37).
argument(parser_runner_1_literal14, 3, parser_runner_1_expr37).
ref(v_p_3930, parser_runner_1_expr37, line(parser_runner_1, 140)).
method_invoc(parser_runner_1_expr38, m_get_name_3344, line(parser_runner_1, 140)).
ref(p_source_file_3922, parser_runner_1_expr38, line(parser_runner_1, 140)).
method_invoc(parser_runner_1_expr39, m_exit_3580, line(parser_runner_1, 145)).
ref(t_context_99, parser_runner_1_expr39, line(parser_runner_1, 145)).
assign(v_root_3932, parser_runner_1_literal15, line(parser_runner_1, 147)).
assign(v_root_3932, parser_runner_1_expr42, line(parser_runner_1, 149)).
method_invoc(parser_runner_1_expr42, m_transform_tree_3347, line(parser_runner_1, 149)).
argument(v_ast_root_3931, 1, parser_runner_1_expr42).
argument(p_source_file_3922, 2, parser_runner_1_expr42).
argument(p_source_string_3923, 3, parser_runner_1_expr42).
argument(p_config_3924, 4, parser_runner_1_expr42).
argument(p_error_reporter_3925, 5, parser_runner_1_expr42).
ref(t_irfactory_100, parser_runner_1_expr42, line(parser_runner_1, 149)).
method_invoc(parser_runner_1_expr43, m_set_is_synthetic_block_3581, line(parser_runner_1, 151)).
argument(parser_runner_1_literal17, 1, parser_runner_1_expr43).
ref(v_root_3932, parser_runner_1_expr43, line(parser_runner_1, 151)).
return(parser_runner_1_expr44, m_parse_1188, line(parser_runner_1, 153)).
method_invoc(parser_runner_1_expr44, m_parse_result_3582, line(parser_runner_1, 153)).
argument(v_root_3932, 1, parser_runner_1_expr44).
argument(v_ast_root_3931, 2, parser_runner_1_expr44).
param(p_ast_3933, 1, m_parse_result_3582).
param(p_old_ast_3934, 2, m_parse_result_3582).
assign(f_ast_3935, p_ast_3933, line(parser_runner_1, 164)).
assign(f_old_ast_3936, p_old_ast_3934, line(parser_runner_1, 165)).

%error_function_type_1 - com.google.javascript.rhino.jstype.ErrorFunctionType
param(p_registry_4714, 1, m_error_function_type_4316).
param(p_name_4715, 2, m_error_function_type_4316).
method_invoc(error_function_type_1_expr1, m_function_type_4317, line(error_function_type_1, 51)).
argument(p_registry_4714, 1, error_function_type_1_expr1).
argument(p_name_4715, 2, error_function_type_1_expr1).
argument(error_function_type_1_literal1, 3, error_function_type_1_expr1).
argument(error_function_type_1_expr2, 4, error_function_type_1_expr1).
argument(error_function_type_1_literal2, 5, error_function_type_1_expr1).
argument(error_function_type_1_literal3, 6, error_function_type_1_expr1).
argument(error_function_type_1_literal4, 7, error_function_type_1_expr1).
argument(error_function_type_1_literal5, 8, error_function_type_1_expr1).
assign(error_function_type_1_expr4, error_function_type_1_expr5, line(error_function_type_1, 73)).
ref(error_function_type_1_expr6, error_function_type_1_expr4, line(error_function_type_1, 73)).
method_invoc(error_function_type_1_expr6, m_get_internal_arrow_type_4318, line(error_function_type_1, 73)).
method_invoc(error_function_type_1_expr5, m_get_instance_type_1100, line(error_function_type_1, 73)).

%coding_conventions_1 - com.google.javascript.jscomp.CodingConventions
return(coding_conventions_1_expr1, m_get_default_161, line(coding_conventions_1, 42)).
method_invoc(coding_conventions_1_expr1, m_default_coding_convention_243, line(coding_conventions_1, 42)).
param(p_convention_340, 1, m_proxy_162).
assign(f_next_convention_341, p_convention_340, line(coding_conventions_1, 60)).
param(p_variable_name_342, 1, m_is_constant_244).
param(p_key_name_343, 1, m_is_constant_key_245).
param(p_key_344, 1, m_is_valid_enum_key_246).
param(p_parameter_345, 1, m_is_optional_parameter_247).
param(p_parameter_346, 1, m_is_var_args_parameter_248).
param(p_name_347, 1, m_is_exported_249).
param(p_local_348, 2, m_is_exported_249).
param(p_name_349, 1, m_is_exported_250).
param(p_name_350, 1, m_is_private_251).
param(p_call_node_351, 1, m_get_classes_defined_by_call_252).
param(p_property_name_352, 1, m_is_super_class_reference_253).
param(p_node_353, 1, m_extract_class_name_if_provide_254).
param(p_parent_354, 2, m_extract_class_name_if_provide_254).
param(p_node_355, 1, m_extract_class_name_if_require_255).
param(p_parent_356, 2, m_extract_class_name_if_require_255).
param(p_n_357, 1, m_identify_type_declaration_call_258).
param(p_parent_ctor_358, 1, m_apply_subclass_relationship_259).
param(p_child_ctor_359, 2, m_apply_subclass_relationship_259).
param(p_type_360, 3, m_apply_subclass_relationship_259).
param(p_call_node_361, 1, m_get_singleton_getter_class_name_261).
param(p_function_type_362, 1, m_apply_singleton_getter_262).
param(p_getter_type_363, 2, m_apply_singleton_getter_262).
param(p_object_type_364, 3, m_apply_singleton_getter_262).
param(p_n_365, 1, m_is_inlinable_function_263).
param(p_call_node_366, 1, m_get_delegate_relationship_264).
param(p_delegate_superclass_367, 1, m_apply_delegate_relationship_265).
param(p_delegate_base_368, 2, m_apply_delegate_relationship_265).
param(p_delegator_369, 3, m_apply_delegate_relationship_265).
param(p_delegate_proxy_370, 4, m_apply_delegate_relationship_265).
param(p_find_delegate_371, 5, m_apply_delegate_relationship_265).
param(p_n_372, 1, m_check_for_calling_convention_defining_calls_267).
param(p_delegate_calling_conventions_373, 2, m_check_for_calling_convention_defining_calls_267).
param(p_registry_374, 1, m_define_delegate_proxy_prototype_properties_268).
param(p_scope_375, 2, m_define_delegate_proxy_prototype_properties_268).
param(p_delegate_proxy_prototypes_376, 3, m_define_delegate_proxy_prototype_properties_268).
param(p_delegate_calling_conventions_377, 4, m_define_delegate_proxy_prototype_properties_268).
method_invoc(coding_conventions_1_expr5, m_define_delegate_proxy_prototype_properties_225, line(coding_conventions_1, 199)).
argument(p_registry_374, 1, coding_conventions_1_expr5).
argument(p_scope_375, 2, coding_conventions_1_expr5).
argument(p_delegate_proxy_prototypes_376, 3, coding_conventions_1_expr5).
argument(p_delegate_calling_conventions_377, 4, coding_conventions_1_expr5).
ref(f_next_convention_341, coding_conventions_1_expr5, line(coding_conventions_1, 199)).
return(coding_conventions_1_expr6, m_get_assertion_functions_270, line(coding_conventions_1, 210)).
method_invoc(coding_conventions_1_expr6, m_get_assertion_functions_234, line(coding_conventions_1, 210)).
ref(f_next_convention_341, coding_conventions_1_expr6, line(coding_conventions_1, 210)).
param(p_n_378, 1, m_describe_function_bind_271).
param(p_n_379, 1, m_describe_function_bind_272).
param(p_use_type_info_380, 2, m_describe_function_bind_272).
param(p_call_381, 1, m_is_property_test_function_273).
param(p_get_prop_382, 1, m_is_prototype_alias_274).
param(p_call_node_383, 1, m_get_object_literal_cast_275).
param(p_variable_name_384, 1, m_is_constant_277).
param(p_variable_name_385, 1, m_is_constant_key_278).
param(p_key_386, 1, m_is_valid_enum_key_279).
param(p_parameter_387, 1, m_is_optional_parameter_280).
param(p_parameter_388, 1, m_is_var_args_parameter_281).
param(p_name_389, 1, m_is_exported_282).
param(p_local_390, 2, m_is_exported_282).
param(p_name_391, 1, m_is_exported_283).
param(p_name_392, 1, m_is_private_284).
param(p_call_node_393, 1, m_get_classes_defined_by_call_285).
param(p_property_name_394, 1, m_is_super_class_reference_286).
param(p_node_395, 1, m_extract_class_name_if_provide_287).
param(p_parent_396, 2, m_extract_class_name_if_provide_287).
param(p_node_397, 1, m_extract_class_name_if_require_288).
param(p_parent_398, 2, m_extract_class_name_if_require_288).
param(p_n_399, 1, m_identify_type_declaration_call_291).
param(p_parent_ctor_400, 1, m_apply_subclass_relationship_292).
param(p_child_ctor_401, 2, m_apply_subclass_relationship_292).
param(p_type_402, 3, m_apply_subclass_relationship_292).
param(p_call_node_403, 1, m_get_singleton_getter_class_name_294).
param(p_function_type_404, 1, m_apply_singleton_getter_295).
param(p_getter_type_405, 2, m_apply_singleton_getter_295).
param(p_object_type_406, 3, m_apply_singleton_getter_295).
param(p_n_407, 1, m_is_inlinable_function_296).
param(p_call_node_408, 1, m_get_delegate_relationship_297).
param(p_delegate_superclass_409, 1, m_apply_delegate_relationship_298).
param(p_delegate_base_410, 2, m_apply_delegate_relationship_298).
param(p_delegator_411, 3, m_apply_delegate_relationship_298).
param(p_delegate_proxy_412, 4, m_apply_delegate_relationship_298).
param(p_find_delegate_413, 5, m_apply_delegate_relationship_298).
param(p_n_414, 1, m_check_for_calling_convention_defining_calls_300).
param(p_delegate_calling_conventions_415, 2, m_check_for_calling_convention_defining_calls_300).
param(p_registry_416, 1, m_define_delegate_proxy_prototype_properties_301).
param(p_scope_417, 2, m_define_delegate_proxy_prototype_properties_301).
param(p_delegate_proxy_prototypes_418, 3, m_define_delegate_proxy_prototype_properties_301).
param(p_delegate_calling_conventions_419, 4, m_define_delegate_proxy_prototype_properties_301).
param(p_call_420, 1, m_is_property_test_function_303).
param(p_get_prop_421, 1, m_is_prototype_alias_304).
param(p_call_node_422, 1, m_get_object_literal_cast_305).
param(p_n_423, 1, m_describe_function_bind_307).
param(p_n_424, 1, m_describe_function_bind_308).
param(p_use_type_info_425, 2, m_describe_function_bind_308).
return(coding_conventions_1_expr7, m_get_indirectly_declared_properties_309, line(coding_conventions_1, 467)).
method_invoc(coding_conventions_1_expr7, m_of_310, line(coding_conventions_1, 467)).
ref(t_immutable_list_14, coding_conventions_1_expr7, line(coding_conventions_1, 467)).
param(p_n_426, 1, m_safe_next_311).

%linked_flow_scope_1 - com.google.javascript.jscomp.LinkedFlowScope
assign(f_frozen_1682, linked_flow_scope_1_literal1, line(linked_flow_scope_1, 58)).
param(p_cache_1683, 1, m_linked_flow_scope_1227).
param(p_direct_parent_1684, 2, m_linked_flow_scope_1227).
assign(f_cache_1685, p_cache_1683, line(linked_flow_scope_1, 66)).
assign(f_last_slot_1686, linked_flow_scope_1_literal3, line(linked_flow_scope_1, 68)).
assign(f_depth_1687, linked_flow_scope_1_literal4, line(linked_flow_scope_1, 69)).
assign(f_parent_1688, q_linked_equivalent_53, line(linked_flow_scope_1, 70)).
ref(p_cache_1683, q_linked_equivalent_53, line(linked_flow_scope_1, 70)).
assign(f_last_slot_1686, q_last_slot_54, line(linked_flow_scope_1, 72)).
ref(p_direct_parent_1684, q_last_slot_54, line(linked_flow_scope_1, 72)).
assign(f_depth_1687, linked_flow_scope_1_expr19, line(linked_flow_scope_1, 73)).
ref(p_direct_parent_1684, q_depth_55, line(linked_flow_scope_1, 73)).
assign(f_parent_1688, p_direct_parent_1684, line(linked_flow_scope_1, 74)).
param(p_cache_1689, 1, m_linked_flow_scope_1228).
method_invoc(linked_flow_scope_1_expr24, m_linked_flow_scope_1227, line(linked_flow_scope_1, 79)).
argument(p_cache_1689, 1, linked_flow_scope_1_expr24).
argument(linked_flow_scope_1_literal6, 2, linked_flow_scope_1_expr24).
param(p_direct_parent_1690, 1, m_linked_flow_scope_1229).
method_invoc(linked_flow_scope_1_expr25, m_linked_flow_scope_1227, line(linked_flow_scope_1, 83)).
argument(q_cache_56, 1, linked_flow_scope_1_expr25).
argument(p_direct_parent_1690, 2, linked_flow_scope_1_expr25).
ref(p_direct_parent_1690, q_cache_56, line(linked_flow_scope_1, 83)).
return(q_function_scope_57, m_get_function_scope_1230, line(linked_flow_scope_1, 88)).
ref(f_cache_1685, q_function_scope_57, line(linked_flow_scope_1, 88)).
param(p_scope_1691, 1, m_create_entry_lattice_1232).
return(linked_flow_scope_1_expr26, m_create_entry_lattice_1232, line(linked_flow_scope_1, 100)).
method_invoc(linked_flow_scope_1_expr26, m_linked_flow_scope_1228, line(linked_flow_scope_1, 100)).
argument(linked_flow_scope_1_expr27, 1, linked_flow_scope_1_expr26).
method_invoc(linked_flow_scope_1_expr27, m_flat_flow_scope_cache_1233, line(linked_flow_scope_1, 100)).
argument(p_scope_1691, 1, linked_flow_scope_1_expr27).
param(p_symbol_1692, 1, m_infer_slot_type_1234).
param(p_type_1693, 2, m_infer_slot_type_1234).
param(p_node_1694, 1, m_infer_qualified_slot_1235).
param(p_symbol_1695, 2, m_infer_qualified_slot_1235).
param(p_bottom_type_1696, 3, m_infer_qualified_slot_1235).
param(p_inferred_type_1697, 4, m_infer_qualified_slot_1235).
param(p_name_1698, 1, m_get_slot_1239).
param(p_name_1699, 1, m_get_own_slot_1240).
assign(f_frozen_1682, linked_flow_scope_1_literal7, line(linked_flow_scope_1, 162)).
return(linked_flow_scope_1_expr30, m_create_child_flow_scope_1241, line(linked_flow_scope_1, 171)).
method_invoc(linked_flow_scope_1_expr30, m_linked_flow_scope_1229, line(linked_flow_scope_1, 171)).
argument(linked_flow_scope_1_expr31, 1, linked_flow_scope_1_expr30).
param(p_blind_scope_1701, 1, m_find_unique_refined_slot_1242).
param(p_static_scope_1702, 1, m_complete_scope_1243).
assign(v_current_1703, linked_flow_scope_1_expr33, line(linked_flow_scope_1, 234)).
ref(v_current_1703, q_parent_58, line(linked_flow_scope_1, 235)).
assign(v_current_1703, q_parent_59, line(linked_flow_scope_1, 237)).
ref(v_current_1703, q_parent_59, line(linked_flow_scope_1, 237)).
return(v_current_1703, m_optimize_1244, line(linked_flow_scope_1, 238)).
param(p_a_1704, 1, m_apply_1245).
param(p_b_1705, 2, m_apply_1245).
param(p_other_1706, 1, m_equals_1246).
assign(v_that_1707, linked_flow_scope_1_expr38, line(linked_flow_scope_1, 261)).
assign(linked_flow_scope_1_expr38, p_other_1706, line(linked_flow_scope_1, 261)).
method_invoc(linked_flow_scope_1_expr40, m_optimize_1244, line(linked_flow_scope_1, 262)).
ref(linked_flow_scope_1_expr41, linked_flow_scope_1_expr40, line(linked_flow_scope_1, 262)).
method_invoc(linked_flow_scope_1_expr42, m_optimize_1244, line(linked_flow_scope_1, 262)).
ref(v_that_1707, linked_flow_scope_1_expr42, line(linked_flow_scope_1, 262)).
method_invoc(linked_flow_scope_1_expr44, m_get_function_scope_1230, line(linked_flow_scope_1, 274)).
ref(linked_flow_scope_1_expr45, linked_flow_scope_1_expr44, line(linked_flow_scope_1, 274)).
method_invoc(linked_flow_scope_1_expr46, m_get_function_scope_1230, line(linked_flow_scope_1, 274)).
ref(v_that_1707, linked_flow_scope_1_expr46, line(linked_flow_scope_1, 274)).
return(linked_flow_scope_1_literal9, m_equals_1246, line(linked_flow_scope_1, 275)).
param(p_slot_a_1708, 1, m_diff_slots_1247).
param(p_slot_b_1709, 2, m_diff_slots_1247).
param(p_name_1710, 1, m_linked_flow_slot_1249).
param(p_type_1711, 2, m_linked_flow_slot_1249).
param(p_parent_1712, 3, m_linked_flow_slot_1249).
assign(f_symbols_1713, linked_flow_scope_1_expr47, line(linked_flow_scope_1, 389)).
method_invoc(linked_flow_scope_1_expr47, m_new_hash_map_422, line(linked_flow_scope_1, 389)).
ref(t_maps_17, linked_flow_scope_1_expr47, line(linked_flow_scope_1, 389)).
assign(f_dirty_symbols_1714, linked_flow_scope_1_expr48, line(linked_flow_scope_1, 399)).
method_invoc(linked_flow_scope_1_expr48, m_new_hash_set_522, line(linked_flow_scope_1, 399)).
ref(t_sets_12, linked_flow_scope_1_expr48, line(linked_flow_scope_1, 399)).
param(p_function_scope_1715, 1, m_flat_flow_scope_cache_1233).
assign(f_function_scope_1716, p_function_scope_1715, line(linked_flow_scope_1, 403)).
assign(f_symbols_1713, linked_flow_scope_1_expr53, line(linked_flow_scope_1, 404)).
method_invoc(linked_flow_scope_1_expr53, m_of_1250, line(linked_flow_scope_1, 404)).
ref(t_immutable_map_38, linked_flow_scope_1_expr53, line(linked_flow_scope_1, 404)).
assign(f_linked_equivalent_1717, linked_flow_scope_1_literal10, line(linked_flow_scope_1, 405)).
param(p_direct_parent_1718, 1, m_flat_flow_scope_cache_1251).
param(p_joined_scope_a_1719, 1, m_flat_flow_scope_cache_1252).
param(p_joined_scope_b_1720, 2, m_flat_flow_scope_cache_1252).
param(p_name_1721, 1, m_get_slot_1253).

%warnings_guard_1 - com.google.javascript.jscomp.WarningsGuard
param(p_value_3358, 1, m_priority_3215).
assign(f_value_3359, p_value_3358, line(warnings_guard_1, 59)).
param(p_error_3360, 1, m_level_471).
return(q_value_81, m_get_priority_785, line(warnings_guard_1, 84)).
param(p_group_3361, 1, m_disables_796).
return(warnings_guard_1_literal8, m_disables_796, line(warnings_guard_1, 95)).
param(p_group_3362, 1, m_enables_795).
return(warnings_guard_1_literal9, m_enables_795, line(warnings_guard_1, 106)).

%void_type_1 - com.google.javascript.rhino.jstype.VoidType
param(p_registry_5510, 1, m_void_type_4572).
method_invoc(void_type_1_expr1, m_value_type_4289, line(void_type_1, 54)).
argument(p_registry_5510, 1, void_type_1_expr1).
param(p_that_5511, 1, m_test_for_equality_4974).
param(p_for_annotations_5512, 1, m_to_string_helper_4979).
return(void_type_1_expr2, m_to_string_helper_4979, line(void_type_1, 96)).
method_invoc(void_type_1_expr2, m_get_display_name_4980, line(void_type_1, 96)).
return(void_type_1_literal1, m_get_display_name_4980, line(void_type_1, 101)).
param(p_visitor_5513, 1, m_visit_4982).

%closure_coding_convention_1 - com.google.javascript.jscomp.ClosureCodingConvention
assign(f_objectlit_expected_242, closure_coding_convention_1_expr1, line(closure_coding_convention_1, 43)).
method_invoc(closure_coding_convention_1_expr1, m_warning_109, line(closure_coding_convention_1, 43)).
argument(closure_coding_convention_1_literal1, 1, closure_coding_convention_1_expr1).
argument(closure_coding_convention_1_literal2, 2, closure_coding_convention_1_expr1).
ref(t_diagnostic_type_2, closure_coding_convention_1_expr1, line(closure_coding_convention_1, 43)).
method_invoc(closure_coding_convention_1_expr2, m_closure_coding_convention_160, line(closure_coding_convention_1, 50)).
argument(closure_coding_convention_1_expr3, 1, closure_coding_convention_1_expr2).
method_invoc(closure_coding_convention_1_expr3, m_get_default_161, line(closure_coding_convention_1, 50)).
ref(t_coding_conventions_11, closure_coding_convention_1_expr3, line(closure_coding_convention_1, 50)).
param(p_wrapped_243, 1, m_closure_coding_convention_160).
method_invoc(closure_coding_convention_1_expr4, m_proxy_162, line(closure_coding_convention_1, 54)).
argument(p_wrapped_243, 1, closure_coding_convention_1_expr4).
assign(v_props_244, closure_coding_convention_1_expr5, line(closure_coding_convention_1, 56)).
method_invoc(closure_coding_convention_1_expr5, m_new_hash_set_163, line(closure_coding_convention_1, 56)).
argument(closure_coding_convention_1_literal3, 1, closure_coding_convention_1_expr5).
argument(closure_coding_convention_1_literal4, 2, closure_coding_convention_1_expr5).
argument(closure_coding_convention_1_literal5, 3, closure_coding_convention_1_expr5).
ref(t_sets_12, closure_coding_convention_1_expr5, line(closure_coding_convention_1, 56)).
method_invoc(closure_coding_convention_1_expr6, m_add_all_164, line(closure_coding_convention_1, 60)).
argument(closure_coding_convention_1_expr7, 1, closure_coding_convention_1_expr6).
ref(v_props_244, closure_coding_convention_1_expr6, line(closure_coding_convention_1, 60)).
method_invoc(closure_coding_convention_1_expr7, m_get_indirectly_declared_properties_165, line(closure_coding_convention_1, 60)).
ref(p_wrapped_243, closure_coding_convention_1_expr7, line(closure_coding_convention_1, 60)).
assign(f_indirectly_declared_properties_245, closure_coding_convention_1_expr9, line(closure_coding_convention_1, 61)).
method_invoc(closure_coding_convention_1_expr9, m_copy_of_166, line(closure_coding_convention_1, 61)).
argument(v_props_244, 1, closure_coding_convention_1_expr9).
ref(t_immutable_set_13, closure_coding_convention_1_expr9, line(closure_coding_convention_1, 61)).
param(p_parent_ctor_246, 1, m_apply_subclass_relationship_167).
param(p_child_ctor_247, 2, m_apply_subclass_relationship_167).
param(p_type_248, 3, m_apply_subclass_relationship_167).
param(p_call_node_249, 1, m_get_classes_defined_by_call_168).
param(p_call_name_250, 1, m_typeof_class_defining_name_169).
param(p_property_name_251, 1, m_is_super_class_reference_170).
param(p_qualified_name_252, 1, m_ends_with_prototype_171).
param(p_node_253, 1, m_extract_class_name_if_provide_172).
param(p_parent_254, 2, m_extract_class_name_if_provide_172).
param(p_node_255, 1, m_extract_class_name_if_require_173).
param(p_parent_256, 2, m_extract_class_name_if_require_173).
param(p_node_257, 1, m_extract_class_name_if_goog_174).
param(p_parent_258, 2, m_extract_class_name_if_goog_174).
param(p_function_name_259, 3, m_extract_class_name_if_goog_174).
param(p_n_260, 1, m_identify_type_declaration_call_177).
param(p_call_node_261, 1, m_get_singleton_getter_class_name_179).
param(p_function_type_262, 1, m_apply_singleton_getter_180).
param(p_getter_type_263, 2, m_apply_singleton_getter_180).
param(p_object_type_264, 3, m_apply_singleton_getter_180).
assign(f_property_test_functions_265, closure_coding_convention_1_expr10, line(closure_coding_convention_1, 311)).
method_invoc(closure_coding_convention_1_expr10, m_of_182, line(closure_coding_convention_1, 311)).
argument(closure_coding_convention_1_literal6, 1, closure_coding_convention_1_expr10).
argument(closure_coding_convention_1_literal7, 2, closure_coding_convention_1_expr10).
argument(closure_coding_convention_1_literal8, 3, closure_coding_convention_1_expr10).
argument(closure_coding_convention_1_literal9, 4, closure_coding_convention_1_expr10).
argument(closure_coding_convention_1_literal10, 5, closure_coding_convention_1_expr10).
argument(closure_coding_convention_1_literal11, 6, closure_coding_convention_1_expr10).
argument(closure_coding_convention_1_literal12, 7, closure_coding_convention_1_expr10).
argument(closure_coding_convention_1_literal13, 8, closure_coding_convention_1_expr10).
argument(closure_coding_convention_1_literal14, 9, closure_coding_convention_1_expr10).
ref(t_immutable_set_13, closure_coding_convention_1_expr10, line(closure_coding_convention_1, 311)).
param(p_call_266, 1, m_is_property_test_function_183).
param(p_call_node_267, 1, m_get_object_literal_cast_184).
param(p_parameter_268, 1, m_is_optional_parameter_185).
param(p_parameter_269, 1, m_is_var_args_parameter_186).
param(p_name_270, 1, m_is_private_187).
return(closure_coding_convention_1_expr11, m_get_assertion_functions_188, line(closure_coding_convention_1, 369)).
method_invoc(closure_coding_convention_1_expr11, m_of_189, line(closure_coding_convention_1, 369)).
argument(closure_coding_convention_1_expr12, 1, closure_coding_convention_1_expr11).
argument(closure_coding_convention_1_expr13, 2, closure_coding_convention_1_expr11).
argument(closure_coding_convention_1_expr14, 3, closure_coding_convention_1_expr11).
argument(closure_coding_convention_1_expr15, 4, closure_coding_convention_1_expr11).
argument(closure_coding_convention_1_expr16, 5, closure_coding_convention_1_expr11).
argument(closure_coding_convention_1_expr17, 6, closure_coding_convention_1_expr11).
argument(closure_coding_convention_1_expr18, 7, closure_coding_convention_1_expr11).
ref(t_immutable_list_14, closure_coding_convention_1_expr11, line(closure_coding_convention_1, 369)).
param(p_n_271, 1, m_describe_function_bind_190).
param(p_use_type_info_272, 2, m_describe_function_bind_190).
param(p_n_273, 1, m_safe_next_192).
param(p_function_name_274, 1, m_assert_instanceof_spec_193).
method_invoc(closure_coding_convention_1_expr19, m_assertion_function_spec_194, line(closure_coding_convention_1, 444)).
argument(p_function_name_274, 1, closure_coding_convention_1_expr19).
argument(q_object_type_16, 2, closure_coding_convention_1_expr19).
ref(t_jstype_native_15, q_object_type_16, line(closure_coding_convention_1, 444)).
param(p_call_276, 1, m_get_asserted_type_195).
param(p_registry_277, 2, m_get_asserted_type_195).


% Stack Trace Info.
test_failure(failure_1, 'com.google.javascript.jscomp.TypeCheckTest', 'testBadInterfaceExtendsNonExistentInterfaces').
trace(trace_1, failure_1, m_check_interface_conflict_properties_1804, line(type_check_1, 1574), failure_1, target).
trace(trace_2, trace_1, m_visit_function_1786, line(type_check_1, 1664), failure_1, target).
trace(trace_3, trace_2, m_visit_1784, line(type_check_1, 778), failure_1, target).
trace(trace_4, trace_3, m_traverse_branch_1291, line(node_traversal_1, 505), failure_1, target).
trace(trace_5, trace_4, m_traverse_branch_1291, line(node_traversal_1, 498), failure_1, target).
trace(trace_6, trace_5, m_traverse_with_scope_1296, line(node_traversal_1, 343), failure_1, target).
trace(trace_7, trace_6, m_check_1773, line(type_check_1, 404), failure_1, target).
trace(trace_8, trace_7, m_process_1772, line(type_check_1, 375), failure_1, target).
trace(trace_9, trace_8, m_process_for_testing_1774, line(type_check_1, 393), failure_1, target).
trace(trace_10, trace_9, m_test_types_2264, line(type_check_test_1, 11530), failure_1, target).
trace(trace_11, trace_10, m_test_bad_interface_extends_non_existent_interfaces_2263, line(type_check_test_1, 3780), failure_1, target).
trace(trace_12, trace_11, 'invoke0', line(jdk_internal_reflect_native_method_accessor_impl, -2), failure_1, non_target).
trace(trace_13, trace_12, 'invoke', line(jdk_internal_reflect_native_method_accessor_impl, 77), failure_1, non_target).
trace(trace_14, trace_13, 'invoke', line(jdk_internal_reflect_delegating_method_accessor_impl, 43), failure_1, non_target).
trace(trace_15, trace_14, 'invoke', line(java_lang_reflect_method, 569), failure_1, non_target).
trace(trace_16, trace_15, 'runTest', line(junit_framework_test_case, 177), failure_1, non_target).
trace(trace_17, trace_16, 'runBare', line(junit_framework_test_case, 142), failure_1, non_target).
trace(trace_18, trace_17, 'protect', line(junit_framework_test_result_1, 122), failure_1, non_target).
trace(trace_19, trace_18, 'runProtected', line(junit_framework_test_result, 142), failure_1, non_target).
trace(trace_20, trace_19, 'run', line(junit_framework_test_result, 125), failure_1, non_target).
trace(trace_21, trace_20, 'run', line(junit_framework_test_case, 130), failure_1, non_target).
trace(trace_22, trace_21, 'runTest', line(junit_framework_test_suite, 241), failure_1, non_target).
trace(trace_23, trace_22, 'run', line(junit_framework_test_suite, 236), failure_1, non_target).
trace(trace_24, trace_23, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_1, non_target).
trace(trace_25, trace_24, 'run', line(org_junit_runner_junit_core, 137), failure_1, non_target).
trace(trace_26, trace_25, 'main', line(logicfl_coverage_junit4_test_runner, 36), failure_1, non_target).



%%% End of Static Facts

%%% Values

val(p_parent_1810, null, line(node_traversal_1, 486)).
val(node_traversal_1_expr80, null, line(node_traversal_1, 497)).
val(p_parent_1810, null, line(node_traversal_1, 505)).
val(p_externs_root_2571, null, line(type_check_1, 372)).
val(f_scope_creator_2559, null, line(type_check_1, 380)).
val(f_top_scope_2558, null, line(type_check_1, 381)).
val(p_externs_root_2574, null, line(type_check_1, 392)).
val(p_externs_root_2574, null, line(type_check_1, 393)).
val(type_check_1_expr128, null, line(type_check_1, 1570)).
val(v_implicit_proto_2660, null, line(type_check_1, 1574)).



%%% End of Facts