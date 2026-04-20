%%% Logic-FL Facts
:- style_check(-discontiguous).

%attributes_1 - org.jsoup.nodes.Attributes
assign(f_attributes_17, attributes_1_literal1, line(attributes_1, 20)).
param(p_key_18, 1, m_get_14).
param(p_key_19, 1, m_put_15).
param(p_value_20, 2, m_put_15).
param(p_attribute_21, 1, m_put_16).
param(p_key_22, 1, m_remove_17).
param(p_key_23, 1, m_has_key_18).
param(p_incoming_24, 1, m_add_all_20).
param(p_accum_25, 1, m_html_25).
param(p_out_26, 2, m_html_25).
param(p_o_27, 1, m_equals_27).
param(p_key_28, 1, m_put_32).
param(p_value_29, 2, m_put_32).
param(p_key_30, 1, m_data_key_38).

%node_1 - org.jsoup.nodes.Node
param(p_base_uri_110, 1, m_node_40).
param(p_attributes_111, 2, m_node_40).
method_invoc(node_1_expr1, m_not_null_2, line(node_1, 32)).
argument(p_base_uri_110, 1, node_1_expr1).
ref(t_validate_3, node_1_expr1, line(node_1, 32)).
method_invoc(node_1_expr2, m_not_null_2, line(node_1, 33)).
argument(p_attributes_111, 1, node_1_expr2).
ref(t_validate_3, node_1_expr2, line(node_1, 33)).
assign(f_child_nodes_112, node_1_expr4, line(node_1, 35)).
method_invoc(node_1_expr4, m_array_list_130, line(node_1, 35)).
argument(node_1_literal1, 1, node_1_expr4).
assign(f_base_uri_113, node_1_expr7, line(node_1, 36)).
method_invoc(node_1_expr7, m_trim_131, line(node_1, 36)).
ref(p_base_uri_110, node_1_expr7, line(node_1, 36)).
assign(f_attributes_114, p_attributes_111, line(node_1, 37)).
param(p_base_uri_115, 1, m_node_132).
param(p_attribute_key_116, 1, m_attr_135).
param(p_attribute_key_117, 1, m_attr_137).
param(p_attribute_value_118, 2, m_attr_137).
param(p_attribute_key_119, 1, m_has_attr_138).
param(p_attribute_key_120, 1, m_remove_attr_139).
param(p_base_uri_121, 1, m_set_base_uri_141).
param(p_node_122, 1, m_head_142).
param(p_depth_123, 2, m_head_142).
param(p_node_124, 1, m_tail_143).
param(p_depth_125, 2, m_tail_143).
param(p_attribute_key_126, 1, m_abs_url_144).
param(p_index_127, 1, m_child_node_145).
param(p_html_128, 1, m_before_151).
param(p_node_129, 1, m_before_152).
param(p_html_130, 1, m_after_153).
param(p_node_131, 1, m_after_154).
param(p_index_132, 1, m_add_sibling_html_155).
param(p_html_133, 2, m_add_sibling_html_155).
param(p_html_134, 1, m_wrap_156).
param(p_el_135, 1, m_get_deep_child_158).
param(p_in_136, 1, m_replace_with_159).
param(p_parent_node_137, 1, m_set_parent_node_160).
param(p_out_138, 1, m_replace_child_161).
param(p_in_139, 2, m_replace_child_161).
param(p_out_140, 1, m_remove_child_162).
param(p_children_141, 1, m_add_children_163).
param(p_index_142, 1, m_add_children_164).
param(p_children_143, 2, m_add_children_164).
param(p_child_144, 1, m_reparent_child_165).
return(node_1_expr12, m_sibling_nodes_167, line(node_1, 445)).
method_invoc(node_1_expr12, m_child_nodes_146, line(node_1, 445)).
ref(node_1_expr13, node_1_expr12, line(node_1, 445)).
method_invoc(node_1_expr13, m_parent_148, line(node_1, 445)).
return(f_sibling_index_145, m_sibling_index_170, line(node_1, 487)).
param(p_sibling_index_146, 1, m_set_sibling_index_171).
param(p_node_visitor_147, 1, m_traverse_172).
param(p_accum_148, 1, m_outer_html_174).
param(p_accum_149, 1, m_outer_html_head_176).
param(p_depth_150, 2, m_outer_html_head_176).
param(p_out_151, 3, m_outer_html_head_176).
param(p_accum_152, 1, m_outer_html_tail_177).
param(p_depth_153, 2, m_outer_html_tail_177).
param(p_out_154, 3, m_outer_html_tail_177).
param(p_accum_155, 1, m_indent_179).
param(p_depth_156, 2, m_indent_179).
param(p_out_157, 3, m_indent_179).
param(p_o_158, 1, m_equals_180).
param(p_parent_159, 1, m_do_clone_183).
param(p_accum_160, 1, m_outer_html_visitor_184).
param(p_out_161, 2, m_outer_html_visitor_184).
param(p_node_162, 1, m_head_185).
param(p_depth_163, 2, m_head_185).
param(p_node_164, 1, m_tail_186).
param(p_depth_165, 2, m_tail_186).

%node_test_1 - org.jsoup.nodes.NodeTest
param(p_node_166, 1, m_head_202).
param(p_depth_167, 2, m_head_202).
param(p_node_168, 1, m_tail_203).
param(p_depth_169, 2, m_tail_203).
assign(v_node_170, node_test_1_expr1, line(node_test_1, 186)).
method_invoc(node_test_1_expr1, m_element_41, line(node_test_1, 186)).
argument(node_test_1_expr2, 1, node_test_1_expr1).
argument(node_test_1_literal1, 2, node_test_1_expr1).
method_invoc(node_test_1_expr2, m_value_of_205, line(node_test_1, 186)).
argument(node_test_1_literal2, 1, node_test_1_expr2).
ref(t_tag_5, node_test_1_expr2, line(node_test_1, 186)).
assign(v_el_171, node_test_1_expr3, line(node_test_1, 187)).
method_invoc(node_test_1_expr3, m_element_41, line(node_test_1, 187)).
argument(node_test_1_expr4, 1, node_test_1_expr3).
argument(node_test_1_literal3, 2, node_test_1_expr3).
method_invoc(node_test_1_expr4, m_value_of_205, line(node_test_1, 187)).
argument(node_test_1_literal4, 1, node_test_1_expr4).
ref(t_tag_5, node_test_1_expr4, line(node_test_1, 187)).
method_invoc(node_test_1_expr5, m_assert_equals_206, line(node_test_1, 189)).
argument(node_test_1_literal5, 1, node_test_1_expr5).
argument(node_test_1_expr6, 2, node_test_1_expr5).
method_invoc(node_test_1_expr6, m_sibling_index_170, line(node_test_1, 189)).
ref(v_node_170, node_test_1_expr6, line(node_test_1, 189)).
method_invoc(node_test_1_expr7, m_assert_equals_206, line(node_test_1, 190)).
argument(node_test_1_literal6, 1, node_test_1_expr7).
argument(node_test_1_expr8, 2, node_test_1_expr7).
method_invoc(node_test_1_expr8, m_size_207, line(node_test_1, 190)).
ref(node_test_1_expr9, node_test_1_expr8, line(node_test_1, 190)).
method_invoc(node_test_1_expr9, m_sibling_nodes_167, line(node_test_1, 190)).
throw(node_test_1_expr9, null_pointer_exception, line(node_test_1, 190)).
ref(v_node_170, node_test_1_expr9, line(node_test_1, 190)).

%element_1 - org.jsoup.nodes.Element
param(p_tag_31, 1, m_element_39).
param(p_base_uri_32, 2, m_element_39).
param(p_attributes_33, 3, m_element_39).
method_invoc(element_1_expr1, m_node_40, line(element_1, 38)).
argument(p_base_uri_32, 1, element_1_expr1).
argument(p_attributes_33, 2, element_1_expr1).
method_invoc(element_1_expr2, m_not_null_2, line(element_1, 40)).
argument(p_tag_31, 1, element_1_expr2).
ref(t_validate_3, element_1_expr2, line(element_1, 40)).
assign(f_tag_34, p_tag_31, line(element_1, 41)).
param(p_tag_35, 1, m_element_41).
param(p_base_uri_36, 2, m_element_41).
method_invoc(element_1_expr6, m_element_39, line(element_1, 53)).
argument(p_tag_35, 1, element_1_expr6).
argument(p_base_uri_36, 2, element_1_expr6).
argument(element_1_expr7, 3, element_1_expr6).
method_invoc(element_1_expr7, m_attributes_42, line(element_1, 53)).
param(p_tag_name_37, 1, m_tag_name_45).
param(p_attribute_key_38, 1, m_attr_49).
param(p_attribute_value_39, 2, m_attr_49).
return(element_1_expr8, m_parent_51, line(element_1, 142)).
assign(element_1_expr8, f_parent_node_40, line(element_1, 142)).
param(p_el_41, 1, m_accumulate_parents_53).
param(p_parents_42, 2, m_accumulate_parents_53).
param(p_index_43, 1, m_child_54).
param(p_css_query_44, 1, m_select_58).
param(p_child_45, 1, m_append_child_59).
param(p_child_46, 1, m_prepend_child_60).
param(p_tag_name_47, 1, m_append_element_61).
param(p_tag_name_48, 1, m_prepend_element_62).
param(p_text_49, 1, m_append_text_63).
param(p_text_50, 1, m_prepend_text_64).
param(p_html_51, 1, m_append_65).
param(p_html_52, 1, m_prepend_66).
param(p_html_53, 1, m_before_67).
param(p_node_54, 1, m_before_68).
param(p_html_55, 1, m_after_69).
param(p_node_56, 1, m_after_70).
param(p_html_57, 1, m_wrap_72).
param(p_search_58, 1, m_index_in_list_79).
param(p_elements_59, 2, m_index_in_list_79).
param(p_tag_name_60, 1, m_get_elements_by_tag_80).
param(p_id_61, 1, m_get_element_by_id_81).
param(p_class_name_62, 1, m_get_elements_by_class_82).
param(p_key_63, 1, m_get_elements_by_attribute_83).
param(p_key_prefix_64, 1, m_get_elements_by_attribute_starting_84).
param(p_key_65, 1, m_get_elements_by_attribute_value_85).
param(p_value_66, 2, m_get_elements_by_attribute_value_85).
param(p_key_67, 1, m_get_elements_by_attribute_value_not_86).
param(p_value_68, 2, m_get_elements_by_attribute_value_not_86).
param(p_key_69, 1, m_get_elements_by_attribute_value_starting_87).
param(p_value_prefix_70, 2, m_get_elements_by_attribute_value_starting_87).
param(p_key_71, 1, m_get_elements_by_attribute_value_ending_88).
param(p_value_suffix_72, 2, m_get_elements_by_attribute_value_ending_88).
param(p_key_73, 1, m_get_elements_by_attribute_value_containing_89).
param(p_match_74, 2, m_get_elements_by_attribute_value_containing_89).
param(p_key_75, 1, m_get_elements_by_attribute_value_matching_90).
param(p_pattern_76, 2, m_get_elements_by_attribute_value_matching_90).
param(p_key_77, 1, m_get_elements_by_attribute_value_matching_91).
param(p_regex_78, 2, m_get_elements_by_attribute_value_matching_91).
param(p_index_79, 1, m_get_elements_by_index_less_than_92).
param(p_index_80, 1, m_get_elements_by_index_greater_than_93).
param(p_index_81, 1, m_get_elements_by_index_equals_94).
param(p_search_text_82, 1, m_get_elements_containing_text_95).
param(p_search_text_83, 1, m_get_elements_containing_own_text_96).
param(p_pattern_84, 1, m_get_elements_matching_text_97).
param(p_regex_85, 1, m_get_elements_matching_text_98).
param(p_pattern_86, 1, m_get_elements_matching_own_text_99).
param(p_regex_87, 1, m_get_elements_matching_own_text_100).
param(p_accum_88, 1, m_text_103).
param(p_accum_89, 1, m_own_text_105).
param(p_accum_90, 1, m_append_normalised_text_106).
param(p_text_node_91, 2, m_append_normalised_text_106).
param(p_element_92, 1, m_append_whitespace_if_br_107).
param(p_accum_93, 2, m_append_whitespace_if_br_107).
param(p_text_94, 1, m_text_109).
param(p_class_names_95, 1, m_class_names_114).
param(p_class_name_96, 1, m_has_class_115).
param(p_class_name_97, 1, m_add_class_116).
param(p_class_name_98, 1, m_remove_class_117).
param(p_class_name_99, 1, m_toggle_class_118).
param(p_value_100, 1, m_val_120).
param(p_accum_101, 1, m_outer_html_head_121).
param(p_depth_102, 2, m_outer_html_head_121).
param(p_out_103, 3, m_outer_html_head_121).
param(p_accum_104, 1, m_outer_html_tail_122).
param(p_depth_105, 2, m_outer_html_tail_122).
param(p_out_106, 3, m_outer_html_tail_122).
param(p_accum_107, 1, m_html_124).
param(p_html_108, 1, m_html_125).
param(p_o_109, 1, m_equals_127).

%tag_1 - org.jsoup.parser.Tag
assign(f_tags_172, tag_1_expr1, line(tag_1, 14)).
method_invoc(tag_1_expr1, m_hash_map_209, line(tag_1, 14)).
assign(f_is_block_173, tag_1_literal1, line(tag_1, 17)).
assign(f_format_as_block_174, tag_1_literal2, line(tag_1, 18)).
assign(f_can_contain_block_175, tag_1_literal3, line(tag_1, 19)).
assign(f_can_contain_inline_176, tag_1_literal4, line(tag_1, 20)).
assign(f_empty_177, tag_1_literal5, line(tag_1, 21)).
assign(f_self_closing_178, tag_1_literal6, line(tag_1, 22)).
assign(f_preserve_whitespace_179, tag_1_literal7, line(tag_1, 23)).
param(p_tag_name_180, 1, m_tag_210).
assign(f_tag_name_181, tag_1_expr4, line(tag_1, 26)).
method_invoc(tag_1_expr4, m_to_lower_case_211, line(tag_1, 26)).
ref(p_tag_name_180, tag_1_expr4, line(tag_1, 26)).
param(p_tag_name_182, 1, m_value_of_205).
method_invoc(tag_1_expr6, m_not_null_2, line(tag_1, 47)).
argument(p_tag_name_182, 1, tag_1_expr6).
ref(t_validate_3, tag_1_expr6, line(tag_1, 47)).
assign(p_tag_name_182, tag_1_expr8, line(tag_1, 48)).
method_invoc(tag_1_expr8, m_to_lower_case_211, line(tag_1, 48)).
ref(tag_1_expr9, tag_1_expr8, line(tag_1, 48)).
method_invoc(tag_1_expr9, m_trim_131, line(tag_1, 48)).
ref(p_tag_name_182, tag_1_expr9, line(tag_1, 48)).
method_invoc(tag_1_expr10, m_not_empty_10, line(tag_1, 49)).
argument(p_tag_name_182, 1, tag_1_expr10).
ref(t_validate_3, tag_1_expr10, line(tag_1, 49)).
assign(v_tag_183, tag_1_expr11, line(tag_1, 52)).
method_invoc(tag_1_expr11, m_get_213, line(tag_1, 52)).
argument(p_tag_name_182, 1, tag_1_expr11).
ref(f_tags_172, tag_1_expr11, line(tag_1, 52)).
return(v_tag_183, m_value_of_205, line(tag_1, 59)).
param(p_tag_name_184, 1, m_is_known_tag_222).
param(p_o_185, 1, m_equals_225).
assign(f_block_tags_186, tag_1_expr13, line(tag_1, 197)).
assign(f_inline_tags_187, tag_1_expr14, line(tag_1, 204)).
assign(f_empty_tags_188, tag_1_expr15, line(tag_1, 211)).
assign(f_format_as_inline_tags_189, tag_1_expr16, line(tag_1, 215)).
assign(f_preserve_whitespace_tags_190, tag_1_expr17, line(tag_1, 218)).
ref(f_block_tags_186, tag_1_stmt9, line(tag_1, 222)).
assign(v_tag_192, tag_1_expr18, line(tag_1, 223)).
method_invoc(tag_1_expr18, m_tag_210, line(tag_1, 223)).
argument(v_tag_name_191, 1, tag_1_expr18).
method_invoc(tag_1_expr19, m_register_228, line(tag_1, 224)).
argument(v_tag_192, 1, tag_1_expr19).
ref(f_inline_tags_187, tag_1_stmt12, line(tag_1, 226)).
assign(v_tag_194, tag_1_expr20, line(tag_1, 227)).
method_invoc(tag_1_expr20, m_tag_210, line(tag_1, 227)).
argument(v_tag_name_193, 1, tag_1_expr20).
assign(q_is_block_1, tag_1_literal12, line(tag_1, 228)).
ref(v_tag_194, q_is_block_1, line(tag_1, 228)).
assign(q_can_contain_block_2, tag_1_literal13, line(tag_1, 229)).
ref(v_tag_194, q_can_contain_block_2, line(tag_1, 229)).
assign(q_format_as_block_3, tag_1_literal14, line(tag_1, 230)).
ref(v_tag_194, q_format_as_block_3, line(tag_1, 230)).
method_invoc(tag_1_expr24, m_register_228, line(tag_1, 231)).
argument(v_tag_194, 1, tag_1_expr24).
ref(f_empty_tags_188, tag_1_stmt18, line(tag_1, 235)).
assign(v_tag_196, tag_1_expr25, line(tag_1, 236)).
method_invoc(tag_1_expr25, m_get_213, line(tag_1, 236)).
argument(v_tag_name_195, 1, tag_1_expr25).
ref(f_tags_172, tag_1_expr25, line(tag_1, 236)).
method_invoc(tag_1_expr26, m_not_null_2, line(tag_1, 237)).
argument(v_tag_196, 1, tag_1_expr26).
ref(t_validate_3, tag_1_expr26, line(tag_1, 237)).
assign(q_can_contain_block_4, tag_1_literal15, line(tag_1, 238)).
ref(v_tag_196, q_can_contain_block_4, line(tag_1, 238)).
assign(q_can_contain_inline_5, tag_1_literal16, line(tag_1, 239)).
ref(v_tag_196, q_can_contain_inline_5, line(tag_1, 239)).
assign(q_empty_6, tag_1_literal17, line(tag_1, 240)).
ref(v_tag_196, q_empty_6, line(tag_1, 240)).
ref(f_format_as_inline_tags_189, tag_1_stmt24, line(tag_1, 243)).
assign(v_tag_198, tag_1_expr30, line(tag_1, 244)).
method_invoc(tag_1_expr30, m_get_213, line(tag_1, 244)).
argument(v_tag_name_197, 1, tag_1_expr30).
ref(f_tags_172, tag_1_expr30, line(tag_1, 244)).
method_invoc(tag_1_expr31, m_not_null_2, line(tag_1, 245)).
argument(v_tag_198, 1, tag_1_expr31).
ref(t_validate_3, tag_1_expr31, line(tag_1, 245)).
assign(q_format_as_block_7, tag_1_literal18, line(tag_1, 246)).
ref(v_tag_198, q_format_as_block_7, line(tag_1, 246)).
ref(f_preserve_whitespace_tags_190, tag_1_stmt28, line(tag_1, 249)).
assign(v_tag_200, tag_1_expr33, line(tag_1, 250)).
method_invoc(tag_1_expr33, m_get_213, line(tag_1, 250)).
argument(v_tag_name_199, 1, tag_1_expr33).
ref(f_tags_172, tag_1_expr33, line(tag_1, 250)).
method_invoc(tag_1_expr34, m_not_null_2, line(tag_1, 251)).
argument(v_tag_200, 1, tag_1_expr34).
ref(t_validate_3, tag_1_expr34, line(tag_1, 251)).
assign(q_preserve_whitespace_8, tag_1_literal19, line(tag_1, 252)).
ref(v_tag_200, q_preserve_whitespace_8, line(tag_1, 252)).
param(p_tag_201, 1, m_register_228).
method_invoc(tag_1_expr36, m_put_229, line(tag_1, 258)).
argument(q_tag_name_9, 1, tag_1_expr36).
argument(p_tag_201, 2, tag_1_expr36).
ref(f_tags_172, tag_1_expr36, line(tag_1, 258)).
ref(p_tag_201, q_tag_name_9, line(tag_1, 258)).
return(p_tag_201, m_register_228, line(tag_1, 260)).

%validate_1 - org.jsoup.helper.Validate
param(p_obj_1, 1, m_not_null_2).
param(p_obj_2, 1, m_not_null_3).
param(p_msg_3, 2, m_not_null_3).
param(p_val_4, 1, m_is_true_4).
param(p_val_5, 1, m_is_true_5).
param(p_msg_6, 2, m_is_true_5).
param(p_val_7, 1, m_is_false_6).
param(p_val_8, 1, m_is_false_7).
param(p_msg_9, 2, m_is_false_7).
param(p_objects_10, 1, m_no_null_elements_8).
param(p_objects_11, 1, m_no_null_elements_9).
param(p_msg_12, 2, m_no_null_elements_9).
param(p_string_13, 1, m_not_empty_10).
method_invoc(validate_1_expr5, m_length_11, line(validate_1, 91)).
ref(p_string_13, validate_1_expr5, line(validate_1, 91)).
param(p_string_14, 1, m_not_empty_12).
param(p_msg_15, 2, m_not_empty_12).
param(p_msg_16, 1, m_fail_13).


% Stack Trace Info.
test_failure(failure_1, 'org.jsoup.nodes.NodeTest', 'orphanNodeReturnsNullForSiblingElements').
trace(trace_1, failure_1, m_sibling_nodes_167, line(node_1, 445), failure_1, target).
trace(trace_2, trace_1, m_orphan_node_returns_null_for_sibling_elements_204, line(node_test_1, 190), failure_1, target).
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
trace(trace_24, trace_23, 'main', line(logicfl_coverage_junit4_test_runner, 36), failure_1, non_target).



%%% End of Static Facts

%%% Values

val(node_1_expr13, null, line(node_1, 445)).



%%% End of Facts