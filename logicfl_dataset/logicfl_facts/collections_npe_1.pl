%%% Logic-FL Facts
:- style_check(-discontiguous).

%composite_map_1 - org.apache.commons.collections4.map.CompositeMap
param(p_one_163, 1, m_composite_map_100).
param(p_two_164, 2, m_composite_map_100).
method_invoc(composite_map_1_expr1, m_composite_map_101, line(composite_map_1, 74)).
argument(composite_map_1_expr2, 1, composite_map_1_expr1).
argument(composite_map_1_literal1, 2, composite_map_1_expr1).
param(p_one_165, 1, m_composite_map_102).
param(p_two_166, 2, m_composite_map_102).
param(p_mutator_167, 3, m_composite_map_102).
param(p_composite_168, 1, m_composite_map_103).
param(p_composite_169, 1, m_composite_map_101).
param(p_mutator_170, 2, m_composite_map_101).
assign(f_mutator_171, p_mutator_170, line(composite_map_1, 109)).
assign(f_composite_172, composite_map_1_expr9, line(composite_map_1, 110)).
assign(v_i_173, composite_map_1_expr12, line(composite_map_1, 111)).
ref(p_composite_169, q_length_1, line(composite_map_1, 111)).
method_invoc(composite_map_1_expr15, m_add_composited_104, line(composite_map_1, 112)).
throw(composite_map_1_expr15, illegal_argument_exception, line(composite_map_1, 112)).
argument(composite_map_1_expr16, 1, composite_map_1_expr15).
ref(composite_map_1_expr17, composite_map_1_expr15, line(composite_map_1, 112)).
ref(p_composite_169, composite_map_1_expr16, line(composite_map_1, 112)).
param(p_mutator_174, 1, m_set_mutator_105).
param(p_map_175, 1, m_add_composited_104).
throw(m_add_composited_104, illegal_argument_exception).
assign(v_i_176, composite_map_1_expr19, line(composite_map_1, 135)).
ref(f_composite_172, q_length_2, line(composite_map_1, 135)).
assign(v_intersect_177, composite_map_1_expr22, line(composite_map_1, 136)).
method_invoc(composite_map_1_expr22, m_intersection_25, line(composite_map_1, 136)).
argument(composite_map_1_expr23, 1, composite_map_1_expr22).
argument(composite_map_1_expr24, 2, composite_map_1_expr22).
ref(t_collection_utils_1, composite_map_1_expr22, line(composite_map_1, 136)).
method_invoc(composite_map_1_expr23, m_key_set_106, line(composite_map_1, 136)).
ref(composite_map_1_expr25, composite_map_1_expr23, line(composite_map_1, 136)).
ref(f_composite_172, composite_map_1_expr25, line(composite_map_1, 136)).
method_invoc(composite_map_1_expr24, m_key_set_106, line(composite_map_1, 136)).
ref(p_map_175, composite_map_1_expr24, line(composite_map_1, 136)).
method_invoc(composite_map_1_expr29, m_size_107, line(composite_map_1, 137)).
ref(v_intersect_177, composite_map_1_expr29, line(composite_map_1, 137)).
assign(v_temp_178, composite_map_1_expr30, line(composite_map_1, 144)).
ref(f_composite_172, composite_map_1_expr32, line(composite_map_1, 144)).
method_invoc(composite_map_1_expr35, m_arraycopy_108, line(composite_map_1, 145)).
argument(f_composite_172, 1, composite_map_1_expr35).
argument(composite_map_1_literal9, 2, composite_map_1_expr35).
argument(v_temp_178, 3, composite_map_1_expr35).
argument(composite_map_1_literal10, 4, composite_map_1_expr35).
argument(composite_map_1_expr37, 5, composite_map_1_expr35).
ref(t_system_8, composite_map_1_expr35, line(composite_map_1, 145)).
ref(f_composite_172, composite_map_1_expr37, line(composite_map_1, 145)).
assign(composite_map_1_expr42, p_map_175, line(composite_map_1, 146)).
ref(v_temp_178, composite_map_1_expr42, line(composite_map_1, 146)).
ref(v_temp_178, q_length_3, line(composite_map_1, 146)).
assign(f_composite_172, v_temp_178, line(composite_map_1, 147)).
param(p_map_180, 1, m_remove_composited_109).
param(p_key_181, 1, m_contains_key_111).
param(p_value_182, 1, m_contains_value_112).
param(p_key_183, 1, m_get_114).
param(p_key_184, 1, m_put_117).
param(p_value_185, 2, m_put_117).
param(p_map_186, 1, m_put_all_118).
param(p_key_187, 1, m_remove_119).
param(p_obj_188, 1, m_equals_122).
param(p_composite_189, 1, m_resolve_collision_124).
param(p_existing_190, 2, m_resolve_collision_124).
param(p_added_191, 3, m_resolve_collision_124).
param(p_intersect_192, 4, m_resolve_collision_124).
param(p_map_193, 1, m_put_125).
param(p_composited_194, 2, m_put_125).
param(p_key_195, 3, m_put_125).
param(p_value_196, 4, m_put_125).
param(p_map_197, 1, m_put_all_126).
param(p_composited_198, 2, m_put_all_126).
param(p_map_to_add_199, 3, m_put_all_126).

%composite_map_test_1 - org.apache.commons.collections4.map.CompositeMapTest
assign(f_pass_200, composite_map_test_1_literal1, line(composite_map_test_1, 31)).
param(p_test_name_201, 1, m_composite_map_test_127).
method_invoc(composite_map_test_1_expr1, m_abstract_iterable_map_test_128, line(composite_map_test_1, 34)).
argument(p_test_name_201, 1, composite_map_test_1_expr1).
throw(m_set_up_129, exception).
method_invoc(composite_map_test_1_expr2, m_set_up_130, line(composite_map_test_1, 39)).
throw(composite_map_test_1_expr2, exception, line(composite_map_test_1, 39)).
assign(f_pass_202, composite_map_test_1_literal2, line(composite_map_test_1, 40)).
assign(v_map_203, composite_map_test_1_expr6, line(composite_map_test_1, 53)).
method_invoc(composite_map_test_1_expr6, m_hash_map_32, line(composite_map_test_1, 53)).
method_invoc(composite_map_test_1_expr7, m_put_133, line(composite_map_test_1, 54)).
argument(composite_map_test_1_expr8, 1, composite_map_test_1_expr7).
argument(composite_map_test_1_expr9, 2, composite_map_test_1_expr7).
ref(v_map_203, composite_map_test_1_expr7, line(composite_map_test_1, 54)).
assign(composite_map_test_1_expr8, composite_map_test_1_literal3, line(composite_map_test_1, 54)).
assign(composite_map_test_1_expr9, composite_map_test_1_literal4, line(composite_map_test_1, 54)).
method_invoc(composite_map_test_1_expr10, m_put_133, line(composite_map_test_1, 55)).
argument(composite_map_test_1_expr11, 1, composite_map_test_1_expr10).
argument(composite_map_test_1_expr12, 2, composite_map_test_1_expr10).
ref(v_map_203, composite_map_test_1_expr10, line(composite_map_test_1, 55)).
assign(composite_map_test_1_expr11, composite_map_test_1_literal5, line(composite_map_test_1, 55)).
assign(composite_map_test_1_expr12, composite_map_test_1_literal6, line(composite_map_test_1, 55)).
return(v_map_203, m_build_one_132, line(composite_map_test_1, 56)).
assign(v_map_204, composite_map_test_1_expr13, line(composite_map_test_1, 61)).
method_invoc(composite_map_test_1_expr13, m_hash_map_32, line(composite_map_test_1, 61)).
method_invoc(composite_map_test_1_expr14, m_put_133, line(composite_map_test_1, 62)).
argument(composite_map_test_1_expr15, 1, composite_map_test_1_expr14).
argument(composite_map_test_1_expr16, 2, composite_map_test_1_expr14).
ref(v_map_204, composite_map_test_1_expr14, line(composite_map_test_1, 62)).
assign(composite_map_test_1_expr15, composite_map_test_1_literal7, line(composite_map_test_1, 62)).
assign(composite_map_test_1_expr16, composite_map_test_1_literal8, line(composite_map_test_1, 62)).
method_invoc(composite_map_test_1_expr17, m_put_133, line(composite_map_test_1, 63)).
argument(composite_map_test_1_expr18, 1, composite_map_test_1_expr17).
argument(composite_map_test_1_expr19, 2, composite_map_test_1_expr17).
ref(v_map_204, composite_map_test_1_expr17, line(composite_map_test_1, 63)).
assign(composite_map_test_1_expr18, composite_map_test_1_literal9, line(composite_map_test_1, 63)).
assign(composite_map_test_1_expr19, composite_map_test_1_literal10, line(composite_map_test_1, 63)).
return(v_map_204, m_build_two_134, line(composite_map_test_1, 64)).
assign(v_map_205, composite_map_test_1_expr20, line(composite_map_test_1, 75)).
method_invoc(composite_map_test_1_expr20, m_composite_map_100, line(composite_map_test_1, 75)).
argument(composite_map_test_1_expr21, 1, composite_map_test_1_expr20).
argument(composite_map_test_1_expr22, 2, composite_map_test_1_expr20).
method_invoc(composite_map_test_1_expr21, m_build_one_132, line(composite_map_test_1, 75)).
method_invoc(composite_map_test_1_expr22, m_build_two_134, line(composite_map_test_1, 75)).
assign(v_three_206, composite_map_test_1_expr23, line(composite_map_test_1, 76)).
method_invoc(composite_map_test_1_expr23, m_hash_map_32, line(composite_map_test_1, 76)).
method_invoc(composite_map_test_1_expr24, m_put_133, line(composite_map_test_1, 77)).
argument(composite_map_test_1_expr25, 1, composite_map_test_1_expr24).
argument(composite_map_test_1_expr26, 2, composite_map_test_1_expr24).
ref(v_three_206, composite_map_test_1_expr24, line(composite_map_test_1, 77)).
assign(composite_map_test_1_expr25, composite_map_test_1_literal11, line(composite_map_test_1, 77)).
assign(composite_map_test_1_expr26, composite_map_test_1_literal12, line(composite_map_test_1, 77)).
method_invoc(composite_map_test_1_expr27, m_add_composited_104, line(composite_map_test_1, 78)).
throw(composite_map_test_1_expr27, illegal_argument_exception, line(composite_map_test_1, 78)).
throw(composite_map_test_1_expr27, null_pointer_exception, line(composite_map_test_1, 78)).
argument(composite_map_test_1_literal13, 1, composite_map_test_1_expr27).
ref(v_map_205, composite_map_test_1_expr27, line(composite_map_test_1, 78)).
assign(v_map_207, composite_map_test_1_expr28, line(composite_map_test_1, 91)).
method_invoc(composite_map_test_1_expr28, m_composite_map_100, line(composite_map_test_1, 91)).
argument(composite_map_test_1_expr29, 1, composite_map_test_1_expr28).
argument(composite_map_test_1_expr30, 2, composite_map_test_1_expr28).
method_invoc(composite_map_test_1_expr29, m_build_one_132, line(composite_map_test_1, 91)).
method_invoc(composite_map_test_1_expr30, m_build_two_134, line(composite_map_test_1, 91)).
assign(v_three_208, composite_map_test_1_expr31, line(composite_map_test_1, 92)).
method_invoc(composite_map_test_1_expr31, m_hash_map_32, line(composite_map_test_1, 92)).
method_invoc(composite_map_test_1_expr32, m_put_133, line(composite_map_test_1, 93)).
argument(composite_map_test_1_expr33, 1, composite_map_test_1_expr32).
argument(composite_map_test_1_expr34, 2, composite_map_test_1_expr32).
ref(v_three_208, composite_map_test_1_expr32, line(composite_map_test_1, 93)).
assign(composite_map_test_1_expr33, composite_map_test_1_literal14, line(composite_map_test_1, 93)).
assign(composite_map_test_1_expr34, composite_map_test_1_literal15, line(composite_map_test_1, 93)).
method_invoc(composite_map_test_1_expr35, m_add_composited_104, line(composite_map_test_1, 94)).
throw(composite_map_test_1_expr35, illegal_argument_exception, line(composite_map_test_1, 94)).
throw(composite_map_test_1_expr35, null_pointer_exception, line(composite_map_test_1, 94)).
argument(composite_map_test_1_literal16, 1, composite_map_test_1_expr35).
ref(v_map_207, composite_map_test_1_expr35, line(composite_map_test_1, 94)).
assign(v_map_209, composite_map_test_1_expr36, line(composite_map_test_1, 108)).
method_invoc(composite_map_test_1_expr36, m_composite_map_100, line(composite_map_test_1, 108)).
argument(composite_map_test_1_expr37, 1, composite_map_test_1_expr36).
argument(composite_map_test_1_expr38, 2, composite_map_test_1_expr36).
method_invoc(composite_map_test_1_expr37, m_build_one_132, line(composite_map_test_1, 108)).
method_invoc(composite_map_test_1_expr38, m_build_two_134, line(composite_map_test_1, 108)).
assign(v_three_210, composite_map_test_1_expr39, line(composite_map_test_1, 109)).
method_invoc(composite_map_test_1_expr39, m_hash_map_32, line(composite_map_test_1, 109)).
method_invoc(composite_map_test_1_expr40, m_put_133, line(composite_map_test_1, 110)).
argument(composite_map_test_1_expr41, 1, composite_map_test_1_expr40).
argument(composite_map_test_1_expr42, 2, composite_map_test_1_expr40).
ref(v_three_210, composite_map_test_1_expr40, line(composite_map_test_1, 110)).
assign(composite_map_test_1_expr41, composite_map_test_1_literal17, line(composite_map_test_1, 110)).
assign(composite_map_test_1_expr42, composite_map_test_1_literal18, line(composite_map_test_1, 110)).
method_invoc(composite_map_test_1_expr43, m_add_composited_104, line(composite_map_test_1, 111)).
throw(composite_map_test_1_expr43, illegal_argument_exception, line(composite_map_test_1, 111)).
throw(composite_map_test_1_expr43, null_pointer_exception, line(composite_map_test_1, 111)).
argument(composite_map_test_1_literal19, 1, composite_map_test_1_expr43).
ref(v_map_209, composite_map_test_1_expr43, line(composite_map_test_1, 111)).
assign(v_map_211, composite_map_test_1_expr44, line(composite_map_test_1, 122)).
method_invoc(composite_map_test_1_expr44, m_composite_map_100, line(composite_map_test_1, 122)).
argument(composite_map_test_1_expr45, 1, composite_map_test_1_expr44).
argument(composite_map_test_1_expr46, 2, composite_map_test_1_expr44).
method_invoc(composite_map_test_1_expr45, m_build_one_132, line(composite_map_test_1, 122)).
method_invoc(composite_map_test_1_expr46, m_build_two_134, line(composite_map_test_1, 122)).
assign(v_three_212, composite_map_test_1_expr47, line(composite_map_test_1, 123)).
method_invoc(composite_map_test_1_expr47, m_hash_map_32, line(composite_map_test_1, 123)).
method_invoc(composite_map_test_1_expr48, m_put_133, line(composite_map_test_1, 124)).
argument(composite_map_test_1_expr49, 1, composite_map_test_1_expr48).
argument(composite_map_test_1_expr50, 2, composite_map_test_1_expr48).
ref(v_three_212, composite_map_test_1_expr48, line(composite_map_test_1, 124)).
assign(composite_map_test_1_expr49, composite_map_test_1_literal20, line(composite_map_test_1, 124)).
assign(composite_map_test_1_expr50, composite_map_test_1_literal21, line(composite_map_test_1, 124)).
method_invoc(composite_map_test_1_expr51, m_add_composited_104, line(composite_map_test_1, 125)).
throw(composite_map_test_1_expr51, illegal_argument_exception, line(composite_map_test_1, 125)).
throw(composite_map_test_1_expr51, null_pointer_exception, line(composite_map_test_1, 125)).
argument(composite_map_test_1_literal22, 1, composite_map_test_1_expr51).
ref(v_map_211, composite_map_test_1_expr51, line(composite_map_test_1, 125)).
param(p_composite_213, 1, m_resolve_collision_141).
param(p_existing_214, 2, m_resolve_collision_141).
param(p_added_215, 3, m_resolve_collision_141).
param(p_intersect_216, 4, m_resolve_collision_141).
param(p_map_217, 1, m_put_142).
param(p_composited_218, 2, m_put_142).
param(p_key_219, 3, m_put_142).
param(p_value_220, 4, m_put_142).
param(p_map_221, 1, m_put_all_143).
param(p_composited_222, 2, m_put_all_143).
param(p_t_223, 3, m_put_all_143).
param(p_composite_224, 1, m_resolve_collision_145).
param(p_existing_225, 2, m_resolve_collision_145).
param(p_added_226, 3, m_resolve_collision_145).
param(p_intersect_227, 4, m_resolve_collision_145).
param(p_map_228, 1, m_put_146).
param(p_composited_229, 2, m_put_146).
param(p_key_230, 3, m_put_146).
param(p_value_231, 4, m_put_146).
param(p_map_232, 1, m_put_all_147).
param(p_composited_233, 2, m_put_all_147).
param(p_t_234, 3, m_put_all_147).
param(p_composite_235, 1, m_resolve_collision_149).
param(p_existing_236, 2, m_resolve_collision_149).
param(p_added_237, 3, m_resolve_collision_149).
param(p_intersect_238, 4, m_resolve_collision_149).
param(p_map_239, 1, m_put_150).
param(p_composited_240, 2, m_put_150).
param(p_key_241, 3, m_put_150).
param(p_value_242, 4, m_put_150).
param(p_map_243, 1, m_put_all_151).
param(p_composited_244, 2, m_put_all_151).
param(p_t_245, 3, m_put_all_151).

%abstract_iterable_map_1 - org.apache.commons.collections4.map.AbstractIterableMap

%collection_utils_1 - org.apache.commons.collections4.CollectionUtils
param(p_a_1, 1, m_cardinality_helper_1).
param(p_b_2, 2, m_cardinality_helper_1).
assign(f_cardinality_a_3, collection_utils_1_expr2, line(collection_utils_1, 74)).
method_invoc(collection_utils_1_expr2, m_get_cardinality_map_2, line(collection_utils_1, 74)).
argument(p_a_1, 1, collection_utils_1_expr2).
ref(t_collection_utils_1, collection_utils_1_expr2, line(collection_utils_1, 74)).
assign(f_cardinality_b_4, collection_utils_1_expr4, line(collection_utils_1, 75)).
method_invoc(collection_utils_1_expr4, m_get_cardinality_map_2, line(collection_utils_1, 75)).
argument(p_b_2, 1, collection_utils_1_expr4).
ref(t_collection_utils_1, collection_utils_1_expr4, line(collection_utils_1, 75)).
param(p_obj_5, 1, m_max_3).
param(p_obj_6, 1, m_min_4).
return(collection_utils_1_expr5, m_min_4, line(collection_utils_1, 93)).
method_invoc(collection_utils_1_expr5, m_min_5, line(collection_utils_1, 93)).
argument(collection_utils_1_expr6, 1, collection_utils_1_expr5).
argument(collection_utils_1_expr7, 2, collection_utils_1_expr5).
ref(t_math_2, collection_utils_1_expr5, line(collection_utils_1, 93)).
method_invoc(collection_utils_1_expr6, m_freq_a_6, line(collection_utils_1, 93)).
argument(p_obj_6, 1, collection_utils_1_expr6).
method_invoc(collection_utils_1_expr7, m_freq_b_7, line(collection_utils_1, 93)).
argument(p_obj_6, 1, collection_utils_1_expr7).
param(p_obj_7, 1, m_freq_a_6).
return(collection_utils_1_expr8, m_freq_a_6, line(collection_utils_1, 102)).
method_invoc(collection_utils_1_expr8, m_get_freq_8, line(collection_utils_1, 102)).
argument(p_obj_7, 1, collection_utils_1_expr8).
argument(f_cardinality_a_3, 2, collection_utils_1_expr8).
param(p_obj_8, 1, m_freq_b_7).
return(collection_utils_1_expr9, m_freq_b_7, line(collection_utils_1, 111)).
method_invoc(collection_utils_1_expr9, m_get_freq_8, line(collection_utils_1, 111)).
argument(p_obj_8, 1, collection_utils_1_expr9).
argument(f_cardinality_b_4, 2, collection_utils_1_expr9).
param(p_obj_9, 1, m_get_freq_8).
param(p_freq_map_10, 2, m_get_freq_8).
assign(v_count_11, collection_utils_1_expr10, line(collection_utils_1, 115)).
method_invoc(collection_utils_1_expr10, m_get_9, line(collection_utils_1, 115)).
argument(p_obj_9, 1, collection_utils_1_expr10).
ref(p_freq_map_10, collection_utils_1_expr10, line(collection_utils_1, 115)).
return(collection_utils_1_expr12, m_get_freq_8, line(collection_utils_1, 117)).
method_invoc(collection_utils_1_expr12, m_int_value_10, line(collection_utils_1, 117)).
ref(v_count_11, collection_utils_1_expr12, line(collection_utils_1, 117)).
return(collection_utils_1_literal2, m_get_freq_8, line(collection_utils_1, 119)).
param(p_a_12, 1, m_set_operation_cardinality_helper_11).
param(p_b_13, 2, m_set_operation_cardinality_helper_11).
method_invoc(collection_utils_1_expr13, m_cardinality_helper_1, line(collection_utils_1, 141)).
argument(p_a_12, 1, collection_utils_1_expr13).
argument(p_b_13, 2, collection_utils_1_expr13).
assign(f_elements_14, collection_utils_1_expr15, line(collection_utils_1, 142)).
method_invoc(collection_utils_1_expr15, m_hash_set_12, line(collection_utils_1, 142)).
method_invoc(collection_utils_1_expr16, m_add_all_13, line(collection_utils_1, 143)).
argument(f_elements_14, 1, collection_utils_1_expr16).
argument(p_a_12, 2, collection_utils_1_expr16).
method_invoc(collection_utils_1_expr17, m_add_all_13, line(collection_utils_1, 144)).
argument(f_elements_14, 1, collection_utils_1_expr17).
argument(p_b_13, 2, collection_utils_1_expr17).
assign(f_new_list_15, collection_utils_1_expr19, line(collection_utils_1, 146)).
method_invoc(collection_utils_1_expr19, m_array_list_14, line(collection_utils_1, 146)).
argument(collection_utils_1_expr20, 1, collection_utils_1_expr19).
method_invoc(collection_utils_1_expr20, m_size_15, line(collection_utils_1, 146)).
ref(f_elements_14, collection_utils_1_expr20, line(collection_utils_1, 146)).
return(collection_utils_1_expr21, m_iterator_16, line(collection_utils_1, 151)).
method_invoc(collection_utils_1_expr21, m_iterator_17, line(collection_utils_1, 151)).
ref(f_elements_14, collection_utils_1_expr21, line(collection_utils_1, 151)).
param(p_obj_16, 1, m_set_cardinality_18).
param(p_count_17, 2, m_set_cardinality_18).
assign(v_i_18, collection_utils_1_literal3, line(collection_utils_1, 160)).
return(f_new_list_15, m_list_19, line(collection_utils_1, 170)).
assign(f_empty_collection_19, collection_utils_1_expr25, line(collection_utils_1, 182)).
method_invoc(collection_utils_1_expr25, m_empty_list_20, line(collection_utils_1, 182)).
ref(t_collections_3, collection_utils_1_expr25, line(collection_utils_1, 182)).
param(p_collection_20, 1, m_empty_if_null_23).
param(p_a_21, 1, m_union_24).
param(p_b_22, 2, m_union_24).
param(p_a_23, 1, m_intersection_25).
param(p_b_24, 2, m_intersection_25).
assign(v_helper_25, collection_utils_1_expr26, line(collection_utils_1, 254)).
method_invoc(collection_utils_1_expr26, m_set_operation_cardinality_helper_11, line(collection_utils_1, 254)).
argument(p_a_23, 1, collection_utils_1_expr26).
argument(p_b_24, 2, collection_utils_1_expr26).
ref(v_helper_25, collection_utils_1_stmt19, line(collection_utils_1, 255)).
method_invoc(collection_utils_1_expr27, m_set_cardinality_18, line(collection_utils_1, 256)).
argument(v_obj_26, 1, collection_utils_1_expr27).
argument(collection_utils_1_expr28, 2, collection_utils_1_expr27).
ref(v_helper_25, collection_utils_1_expr27, line(collection_utils_1, 256)).
method_invoc(collection_utils_1_expr28, m_min_4, line(collection_utils_1, 256)).
argument(v_obj_26, 1, collection_utils_1_expr28).
ref(v_helper_25, collection_utils_1_expr28, line(collection_utils_1, 256)).
return(collection_utils_1_expr29, m_intersection_25, line(collection_utils_1, 258)).
method_invoc(collection_utils_1_expr29, m_list_19, line(collection_utils_1, 258)).
ref(v_helper_25, collection_utils_1_expr29, line(collection_utils_1, 258)).
param(p_a_27, 1, m_disjunction_26).
param(p_b_28, 2, m_disjunction_26).
param(p_a_29, 1, m_subtract_27).
param(p_b_30, 2, m_subtract_27).
param(p_a_31, 1, m_subtract_28).
param(p_b_32, 2, m_subtract_28).
param(p_p_33, 3, m_subtract_28).
param(p_coll_1_34, 1, m_contains_all_29).
param(p_coll_2_35, 2, m_contains_all_29).
param(p_coll_1_36, 1, m_contains_any_30).
param(p_coll_2_37, 2, m_contains_any_30).
param(p_coll_1_38, 1, m_contains_any_31).
param(p_coll_2_39, 2, m_contains_any_31).
param(p_coll_40, 1, m_get_cardinality_map_2).
assign(v_count_41, collection_utils_1_expr30, line(collection_utils_1, 468)).
method_invoc(collection_utils_1_expr30, m_hash_map_32, line(collection_utils_1, 468)).
ref(p_coll_40, collection_utils_1_stmt23, line(collection_utils_1, 469)).
assign(v_c_43, collection_utils_1_expr31, line(collection_utils_1, 470)).
method_invoc(collection_utils_1_expr31, m_get_9, line(collection_utils_1, 470)).
argument(v_obj_42, 1, collection_utils_1_expr31).
ref(v_count_41, collection_utils_1_expr31, line(collection_utils_1, 470)).
method_invoc(collection_utils_1_expr33, m_put_33, line(collection_utils_1, 472)).
argument(v_obj_42, 1, collection_utils_1_expr33).
argument(collection_utils_1_expr34, 2, collection_utils_1_expr33).
ref(v_count_41, collection_utils_1_expr33, line(collection_utils_1, 472)).
method_invoc(collection_utils_1_expr34, m_value_of_34, line(collection_utils_1, 472)).
argument(collection_utils_1_literal5, 1, collection_utils_1_expr34).
ref(t_integer_4, collection_utils_1_expr34, line(collection_utils_1, 472)).
return(v_count_41, m_get_cardinality_map_2, line(collection_utils_1, 477)).
param(p_a_44, 1, m_is_sub_collection_35).
param(p_b_45, 2, m_is_sub_collection_35).
param(p_a_46, 1, m_is_proper_sub_collection_36).
param(p_b_47, 2, m_is_proper_sub_collection_36).
param(p_a_48, 1, m_is_equal_collection_37).
param(p_b_49, 2, m_is_equal_collection_37).
param(p_a_50, 1, m_is_equal_collection_38).
param(p_b_51, 2, m_is_equal_collection_38).
param(p_equator_52, 3, m_is_equal_collection_38).
param(p_input_53, 1, m_transform_39).
param(p_equator_54, 1, m_equator_wrapper_40).
param(p_object_55, 2, m_equator_wrapper_40).
param(p_obj_56, 1, m_equals_42).
param(p_obj_57, 1, m_cardinality_44).
param(p_coll_58, 2, m_cardinality_44).
param(p_collection_59, 1, m_find_45).
param(p_predicate_60, 2, m_find_45).
param(p_collection_61, 1, m_for_all_do_46).
param(p_closure_62, 2, m_for_all_do_46).
param(p_iterator_63, 1, m_for_all_do_47).
param(p_closure_64, 2, m_for_all_do_47).
param(p_collection_65, 1, m_for_all_but_last_do_48).
param(p_closure_66, 2, m_for_all_but_last_do_48).
param(p_iterator_67, 1, m_for_all_but_last_do_49).
param(p_closure_68, 2, m_for_all_but_last_do_49).
param(p_collection_69, 1, m_filter_50).
param(p_predicate_70, 2, m_filter_50).
param(p_collection_71, 1, m_filter_inverse_51).
param(p_predicate_72, 2, m_filter_inverse_51).
param(p_collection_73, 1, m_transform_52).
param(p_transformer_74, 2, m_transform_52).
param(p_input_75, 1, m_count_matches_53).
param(p_predicate_76, 2, m_count_matches_53).
param(p_input_77, 1, m_exists_54).
param(p_predicate_78, 2, m_exists_54).
param(p_input_79, 1, m_matches_all_55).
param(p_predicate_80, 2, m_matches_all_55).
param(p_input_collection_81, 1, m_select_56).
param(p_predicate_82, 2, m_select_56).
param(p_input_collection_83, 1, m_select_57).
param(p_predicate_84, 2, m_select_57).
param(p_output_collection_85, 3, m_select_57).
param(p_input_collection_86, 1, m_select_58).
param(p_predicate_87, 2, m_select_58).
param(p_output_collection_88, 3, m_select_58).
param(p_rejected_collection_89, 4, m_select_58).
param(p_input_collection_90, 1, m_select_rejected_59).
param(p_predicate_91, 2, m_select_rejected_59).
param(p_input_collection_92, 1, m_select_rejected_60).
param(p_predicate_93, 2, m_select_rejected_60).
param(p_output_collection_94, 3, m_select_rejected_60).
param(p_input_collection_95, 1, m_collect_61).
param(p_transformer_96, 2, m_collect_61).
param(p_input_iterator_97, 1, m_collect_62).
param(p_transformer_98, 2, m_collect_62).
param(p_input_collection_99, 1, m_collect_63).
param(p_transformer_100, 2, m_collect_63).
param(p_output_collection_101, 3, m_collect_63).
param(p_input_iterator_102, 1, m_collect_64).
param(p_transformer_103, 2, m_collect_64).
param(p_output_collection_104, 3, m_collect_64).
param(p_collection_105, 1, m_add_ignore_null_65).
param(p_object_106, 2, m_add_ignore_null_65).
param(p_collection_107, 1, m_add_all_13).
param(p_iterable_108, 2, m_add_all_13).
return(collection_utils_1_expr36, m_add_all_13, line(collection_utils_1, 1141)).
method_invoc(collection_utils_1_expr36, m_add_all_66, line(collection_utils_1, 1141)).
argument(collection_utils_1_expr37, 1, collection_utils_1_expr36).
ref(p_collection_107, collection_utils_1_expr36, line(collection_utils_1, 1141)).
assign(collection_utils_1_expr37, p_iterable_108, line(collection_utils_1, 1141)).
param(p_collection_109, 1, m_add_all_67).
param(p_iterator_110, 2, m_add_all_67).
param(p_collection_111, 1, m_add_all_68).
param(p_enumeration_112, 2, m_add_all_68).
param(p_collection_113, 1, m_add_all_69).
param(p_elements_114, 2, m_add_all_69).
param(p_iterator_115, 1, m_get_70).
param(p_index_116, 2, m_get_70).
param(p_index_117, 1, m_check_index_bounds_71).
param(p_iterable_118, 1, m_get_72).
param(p_index_119, 2, m_get_72).
param(p_object_120, 1, m_get_73).
param(p_index_121, 2, m_get_73).
param(p_map_122, 1, m_get_74).
param(p_index_123, 2, m_get_74).
param(p_object_124, 1, m_size_75).
param(p_object_125, 1, m_size_is_empty_76).
param(p_coll_126, 1, m_is_empty_77).
param(p_coll_127, 1, m_is_not_empty_78).
param(p_array_128, 1, m_reverse_array_79).
param(p_coll_129, 1, m_is_full_80).
param(p_coll_130, 1, m_max_size_81).
param(p_a_131, 1, m_collate_82).
param(p_b_132, 2, m_collate_82).
param(p_a_133, 1, m_collate_83).
param(p_b_134, 2, m_collate_83).
param(p_include_duplicates_135, 3, m_collate_83).
param(p_a_136, 1, m_collate_84).
param(p_b_137, 2, m_collate_84).
param(p_c_138, 3, m_collate_84).
param(p_a_139, 1, m_collate_85).
param(p_b_140, 2, m_collate_85).
param(p_c_141, 3, m_collate_85).
param(p_include_duplicates_142, 4, m_collate_85).
param(p_collection_143, 1, m_permutations_86).
param(p_collection_144, 1, m_retain_all_87).
param(p_retain_145, 2, m_retain_all_87).
param(p_collection_146, 1, m_retain_all_88).
param(p_retain_147, 2, m_retain_all_88).
param(p_equator_148, 3, m_retain_all_88).
param(p_input_149, 1, m_transform_89).
param(p_collection_150, 1, m_remove_all_90).
param(p_remove_151, 2, m_remove_all_90).
param(p_collection_152, 1, m_remove_all_91).
param(p_remove_153, 2, m_remove_all_91).
param(p_equator_154, 3, m_remove_all_91).
param(p_input_155, 1, m_transform_92).
param(p_collection_156, 1, m_synchronized_collection_93).
param(p_collection_157, 1, m_unmodifiable_collection_94).
param(p_collection_158, 1, m_predicated_collection_95).
param(p_predicate_159, 2, m_predicated_collection_95).
param(p_collection_160, 1, m_transforming_collection_96).
param(p_transformer_161, 2, m_transforming_collection_96).
param(p_collection_162, 1, m_extract_singleton_97).


% Stack Trace Info.
test_failure(failure_1, 'org.apache.commons.collections4.map.CompositeMapTest', 'testAddComposited').
trace(trace_1, failure_1, m_add_composited_104, line(composite_map_1, 136), failure_1, target).
trace(trace_2, trace_1, m_test_add_composited_136, line(composite_map_test_1, 78), failure_1, target).
trace(trace_3, trace_2, 'invoke', line(jdk_internal_reflect_direct_method_handle_accessor, 104), failure_1, non_target).
trace(trace_4, trace_3, 'invoke', line(java_lang_reflect_method, 578), failure_1, non_target).
trace(trace_5, trace_4, 'runTest', line(junit_framework_test_case, 177), failure_1, non_target).
trace(trace_6, trace_5, 'runBare', line(junit_framework_test_case, 142), failure_1, non_target).
trace(trace_7, trace_6, 'protect', line(junit_framework_test_result_1, 122), failure_1, non_target).
trace(trace_8, trace_7, 'runProtected', line(junit_framework_test_result, 142), failure_1, non_target).
trace(trace_9, trace_8, 'run', line(junit_framework_test_result, 125), failure_1, non_target).
trace(trace_10, trace_9, 'run', line(junit_framework_test_case, 130), failure_1, non_target).
trace(trace_11, trace_10, 'runTest', line(junit_framework_test_suite, 241), failure_1, non_target).
trace(trace_12, trace_11, 'run', line(junit_framework_test_suite, 236), failure_1, non_target).
trace(trace_13, trace_12, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_1, non_target).
trace(trace_14, trace_13, 'run', line(org_junit_runner_junit_core, 137), failure_1, non_target).
trace(trace_15, trace_14, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_1, non_target).
test_failure(failure_2, 'org.apache.commons.collections4.map.CompositeMapTest', 'testRemoveComposited').
trace(trace_16, failure_2, m_add_composited_104, line(composite_map_1, 136), failure_2, target).
trace(trace_17, trace_16, m_test_remove_composited_137, line(composite_map_test_1, 94), failure_2, target).
trace(trace_18, trace_17, 'invoke', line(jdk_internal_reflect_direct_method_handle_accessor, 104), failure_2, non_target).
trace(trace_19, trace_18, 'invoke', line(java_lang_reflect_method, 578), failure_2, non_target).
trace(trace_20, trace_19, 'runTest', line(junit_framework_test_case, 177), failure_2, non_target).
trace(trace_21, trace_20, 'runBare', line(junit_framework_test_case, 142), failure_2, non_target).
trace(trace_22, trace_21, 'protect', line(junit_framework_test_result_1, 122), failure_2, non_target).
trace(trace_23, trace_22, 'runProtected', line(junit_framework_test_result, 142), failure_2, non_target).
trace(trace_24, trace_23, 'run', line(junit_framework_test_result, 125), failure_2, non_target).
trace(trace_25, trace_24, 'run', line(junit_framework_test_case, 130), failure_2, non_target).
trace(trace_26, trace_25, 'runTest', line(junit_framework_test_suite, 241), failure_2, non_target).
trace(trace_27, trace_26, 'run', line(junit_framework_test_suite, 236), failure_2, non_target).
trace(trace_28, trace_27, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_2, non_target).
trace(trace_29, trace_28, 'run', line(org_junit_runner_junit_core, 137), failure_2, non_target).
trace(trace_30, trace_29, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_2, non_target).
test_failure(failure_3, 'org.apache.commons.collections4.map.CompositeMapTest', 'testRemoveFromUnderlying').
trace(trace_31, failure_3, m_add_composited_104, line(composite_map_1, 136), failure_3, target).
trace(trace_32, trace_31, m_test_remove_from_underlying_138, line(composite_map_test_1, 111), failure_3, target).
trace(trace_33, trace_32, 'invoke', line(jdk_internal_reflect_direct_method_handle_accessor, 104), failure_3, non_target).
trace(trace_34, trace_33, 'invoke', line(java_lang_reflect_method, 578), failure_3, non_target).
trace(trace_35, trace_34, 'runTest', line(junit_framework_test_case, 177), failure_3, non_target).
trace(trace_36, trace_35, 'runBare', line(junit_framework_test_case, 142), failure_3, non_target).
trace(trace_37, trace_36, 'protect', line(junit_framework_test_result_1, 122), failure_3, non_target).
trace(trace_38, trace_37, 'runProtected', line(junit_framework_test_result, 142), failure_3, non_target).
trace(trace_39, trace_38, 'run', line(junit_framework_test_result, 125), failure_3, non_target).
trace(trace_40, trace_39, 'run', line(junit_framework_test_case, 130), failure_3, non_target).
trace(trace_41, trace_40, 'runTest', line(junit_framework_test_suite, 241), failure_3, non_target).
trace(trace_42, trace_41, 'run', line(junit_framework_test_suite, 236), failure_3, non_target).
trace(trace_43, trace_42, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_3, non_target).
trace(trace_44, trace_43, 'run', line(org_junit_runner_junit_core, 137), failure_3, non_target).
trace(trace_45, trace_44, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_3, non_target).
test_failure(failure_4, 'org.apache.commons.collections4.map.CompositeMapTest', 'testRemoveFromComposited').
trace(trace_46, failure_4, m_add_composited_104, line(composite_map_1, 136), failure_4, target).
trace(trace_47, trace_46, m_test_remove_from_composited_139, line(composite_map_test_1, 125), failure_4, target).
trace(trace_48, trace_47, 'invoke', line(jdk_internal_reflect_direct_method_handle_accessor, 104), failure_4, non_target).
trace(trace_49, trace_48, 'invoke', line(java_lang_reflect_method, 578), failure_4, non_target).
trace(trace_50, trace_49, 'runTest', line(junit_framework_test_case, 177), failure_4, non_target).
trace(trace_51, trace_50, 'runBare', line(junit_framework_test_case, 142), failure_4, non_target).
trace(trace_52, trace_51, 'protect', line(junit_framework_test_result_1, 122), failure_4, non_target).
trace(trace_53, trace_52, 'runProtected', line(junit_framework_test_result, 142), failure_4, non_target).
trace(trace_54, trace_53, 'run', line(junit_framework_test_result, 125), failure_4, non_target).
trace(trace_55, trace_54, 'run', line(junit_framework_test_case, 130), failure_4, non_target).
trace(trace_56, trace_55, 'runTest', line(junit_framework_test_suite, 241), failure_4, non_target).
trace(trace_57, trace_56, 'run', line(junit_framework_test_suite, 236), failure_4, non_target).
trace(trace_58, trace_57, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_4, non_target).
trace(trace_59, trace_58, 'run', line(org_junit_runner_junit_core, 137), failure_4, non_target).
trace(trace_60, trace_59, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_4, non_target).



%%% End of Static Facts

%%% Values

val(p_map_175, null, line(composite_map_1, 136)).



%%% End of Facts
%%% Code Facts
:- style_check(-discontiguous).
%%% Classes
class(composite_map_1, 'org.apache.commons.collections4.map.CompositeMap').
class(composite_map_test_1, 'org.apache.commons.collections4.map.CompositeMapTest').
class(abstract_iterable_map_1, 'org.apache.commons.collections4.map.AbstractIterableMap').
class(collection_utils_1, 'org.apache.commons.collections4.CollectionUtils').

%%% Methods
%composite_map_1 - org.apache.commons.collections4.map.CompositeMap
method(m_composite_map_99, range(composite_map_1, 2309, 156, 57, 63)).
method(m_composite_map_100, range(composite_map_1, 2471, 408, 65, 75)).
method(m_composite_map_102, range(composite_map_1, 2885, 444, 77, 87)).
method(m_composite_map_103, range(composite_map_1, 3335, 388, 89, 98)).
method(m_composite_map_101, range(composite_map_1, 3729, 603, 100, 114)).
method(m_set_mutator_105, range(composite_map_1, 4416, 255, 117, 124)).
method(m_add_composited_104, range(composite_map_1, 4677, 1091, 126, 148)).
method(m_remove_composited_109, range(composite_map_1, 5774, 771, 150, 169)).
method(m_clear_110, range(composite_map_1, 6629, 332, 172, 182)).
method(m_contains_key_111, range(composite_map_1, 6967, 1021, 184, 208)).
method(m_contains_value_112, range(composite_map_1, 7994, 1138, 210, 234)).
method(m_entry_set_113, range(composite_map_1, 9138, 1217, 236, 260)).
method(m_get_114, range(composite_map_1, 10361, 1526, 262, 294)).
method(m_is_empty_115, range(composite_map_1, 11893, 399, 296, 309)).
method(m_key_set_116, range(composite_map_1, 12298, 1073, 311, 333)).
method(m_put_117, range(composite_map_1, 13377, 1682, 335, 366)).
method(m_put_all_118, range(composite_map_1, 15065, 1422, 368, 396)).
method(m_remove_119, range(composite_map_1, 16493, 1689, 398, 431)).
method(m_size_120, range(composite_map_1, 18188, 462, 433, 447)).
method(m_values_121, range(composite_map_1, 18656, 1006, 449, 469)).
method(m_equals_122, range(composite_map_1, 19668, 417, 471, 484)).
method(m_hash_code_123, range(composite_map_1, 20091, 294, 486, 497)).
method(m_resolve_collision_124, range(composite_map_1, 20753, 569, 508, 519)).
method(m_put_125, range(composite_map_1, 21332, 1371, 521, 543)).
method(m_put_all_126, range(composite_map_1, 22713, 985, 545, 562)).
%composite_map_test_1 - org.apache.commons.collections4.map.CompositeMapTest
method(m_composite_map_test_127, range(composite_map_test_1, 1212, 79, 33, 35)).
method(m_set_up_129, range(composite_map_test_1, 1297, 108, 37, 41)).
method(m_make_object_131, range(composite_map_test_1, 1411, 244, 43, 49)).
method(m_build_one_132, range(composite_map_test_1, 1661, 216, 51, 57)).
method(m_build_two_134, range(composite_map_test_1, 1883, 218, 59, 65)).
method(m_test_get_135, range(composite_map_test_1, 2107, 199, 67, 71)).
method(m_test_add_composited_136, range(composite_map_test_1, 2312, 556, 73, 87)).
method(m_test_remove_composited_137, range(composite_map_test_1, 2874, 530, 89, 104)).
method(m_test_remove_from_underlying_138, range(composite_map_test_1, 3410, 462, 106, 118)).
method(m_test_remove_from_composited_139, range(composite_map_test_1, 3878, 462, 120, 132)).
method(m_test_resolve_collision_140, range(composite_map_test_1, 4346, 1029, 134, 161)).
method(m_resolve_collision_141, range(composite_map_test_1, 4589, 247, 139, 145)).
method(m_put_142, range(composite_map_test_1, 4850, 213, 147, 151)).
method(m_put_all_143, range(composite_map_test_1, 5077, 214, 153, 156)).
method(m_test_put_144, range(composite_map_test_1, 5381, 1088, 163, 191)).
method(m_resolve_collision_145, range(composite_map_test_1, 5645, 277, 168, 174)).
method(m_put_146, range(composite_map_test_1, 5936, 217, 176, 181)).
method(m_put_all_147, range(composite_map_test_1, 6167, 214, 183, 186)).
method(m_test_put_all_148, range(composite_map_test_1, 6475, 1005, 193, 219)).
method(m_resolve_collision_149, range(composite_map_test_1, 6707, 277, 197, 203)).
method(m_put_150, range(composite_map_test_1, 6998, 213, 205, 209)).
method(m_put_all_151, range(composite_map_test_1, 7225, 184, 211, 214)).
method(m_get_compatibility_version_152, range(composite_map_test_1, 7486, 81, 221, 224)).
%abstract_iterable_map_1 - org.apache.commons.collections4.map.AbstractIterableMap
method(m_map_iterator_98, range(abstract_iterable_map_1, 1214, 160, 31, 37)).
%collection_utils_1 - org.apache.commons.collections4.CollectionUtils
method(m_cardinality_helper_1, range(collection_utils_1, 2733, 406, 68, 76)).
method(m_max_3, range(collection_utils_1, 3149, 271, 78, 85)).
method(m_min_4, range(collection_utils_1, 3430, 271, 87, 94)).
method(m_freq_a_6, range(collection_utils_1, 3711, 279, 96, 103)).
method(m_freq_b_7, range(collection_utils_1, 4000, 279, 105, 112)).
method(m_get_freq_8, range(collection_utils_1, 4289, 242, 114, 120)).
method(m_set_operation_cardinality_helper_11, range(collection_utils_1, 4978, 567, 135, 147)).
method(m_iterator_16, range(collection_utils_1, 5555, 99, 149, 152)).
method(m_set_cardinality_18, range(collection_utils_1, 5664, 334, 154, 163)).
method(m_list_19, range(collection_utils_1, 6008, 166, 165, 171)).
method(m_collection_utils_21, range(collection_utils_1, 6628, 117, 184, 187)).
method(m_empty_collection_22, range(collection_utils_1, 6751, 397, 189, 200)).
method(m_empty_if_null_23, range(collection_utils_1, 7154, 492, 202, 212)).
method(m_union_24, range(collection_utils_1, 7652, 969, 214, 235)).
method(m_intersection_25, range(collection_utils_1, 8627, 1018, 237, 259)).
method(m_disjunction_26, range(collection_utils_1, 9651, 1356, 261, 287)).
method(m_subtract_27, range(collection_utils_1, 11013, 865, 289, 305)).
method(m_subtract_28, range(collection_utils_1, 11884, 1789, 307, 344)).
method(m_contains_all_29, range(collection_utils_1, 13679, 2197, 346, 394)).
method(m_contains_any_30, range(collection_utils_1, 15882, 1125, 396, 424)).
method(m_contains_any_31, range(collection_utils_1, 17013, 1017, 426, 453)).
method(m_get_cardinality_map_2, range(collection_utils_1, 18036, 1008, 455, 478)).
method(m_is_sub_collection_35, range(collection_utils_1, 19050, 891, 480, 500)).
method(m_is_proper_sub_collection_36, range(collection_utils_1, 19947, 1197, 502, 525)).
method(m_is_equal_collection_37, range(collection_utils_1, 21150, 1120, 527, 553)).
method(m_is_equal_collection_38, range(collection_utils_1, 22276, 1878, 555, 596)).
method(m_transform_39, range(collection_utils_1, 23901, 151, 589, 592)).
method(m_equator_wrapper_40, range(collection_utils_1, 24566, 153, 611, 614)).
method(m_get_object_41, range(collection_utils_1, 24729, 59, 616, 618)).
method(m_equals_42, range(collection_utils_1, 24798, 345, 620, 628)).
method(m_hash_code_43, range(collection_utils_1, 25153, 92, 630, 633)).
method(m_cardinality_44, range(collection_utils_1, 25257, 798, 636, 653)).
method(m_find_45, range(collection_utils_1, 26061, 849, 655, 670)).
method(m_for_all_do_46, range(collection_utils_1, 26916, 782, 672, 690)).
method(m_for_all_do_47, range(collection_utils_1, 27704, 792, 692, 711)).
method(m_for_all_but_last_do_48, range(collection_utils_1, 28502, 943, 713, 730)).
method(m_for_all_but_last_do_49, range(collection_utils_1, 29451, 865, 732, 748)).
method(m_filter_50, range(collection_utils_1, 30322, 999, 750, 772)).
method(m_filter_inverse_51, range(collection_utils_1, 31327, 895, 774, 790)).
method(m_transform_52, range(collection_utils_1, 32228, 1549, 792, 824)).
method(m_count_matches_53, range(collection_utils_1, 33783, 787, 826, 841)).
method(m_exists_54, range(collection_utils_1, 34576, 775, 843, 858)).
method(m_matches_all_55, range(collection_utils_1, 35357, 888, 860, 878)).
method(m_select_56, range(collection_utils_1, 36251, 958, 880, 897)).
method(m_select_57, range(collection_utils_1, 37215, 1176, 899, 925)).
method(m_select_58, range(collection_utils_1, 38397, 1975, 927, 967)).
method(m_select_rejected_59, range(collection_utils_1, 40378, 1028, 969, 987)).
method(m_select_rejected_60, range(collection_utils_1, 41412, 1196, 989, 1015)).
method(m_collect_61, range(collection_utils_1, 42614, 1059, 1017, 1035)).
method(m_collect_62, range(collection_utils_1, 43679, 816, 1037, 1052)).
method(m_collect_63, range(collection_utils_1, 44501, 1306, 1054, 1078)).
method(m_collect_64, range(collection_utils_1, 45813, 1449, 1080, 1108)).
method(m_add_ignore_null_65, range(collection_utils_1, 47346, 702, 1111, 1126)).
method(m_add_all_13, range(collection_utils_1, 48054, 924, 1128, 1144)).
method(m_add_all_67, range(collection_utils_1, 48984, 726, 1146, 1161)).
method(m_add_all_68, range(collection_utils_1, 49716, 769, 1163, 1178)).
method(m_add_all_69, range(collection_utils_1, 50491, 701, 1180, 1195)).
method(m_get_70, range(collection_utils_1, 51198, 915, 1197, 1215)).
method(m_check_index_bounds_71, range(collection_utils_1, 52119, 339, 1217, 1226)).
method(m_get_72, range(collection_utils_1, 52464, 809, 1228, 1244)).
method(m_get_73, range(collection_utils_1, 53279, 3080, 1246, 1305)).
method(m_get_74, range(collection_utils_1, 56365, 684, 1307, 1321)).
method(m_size_75, range(collection_utils_1, 57055, 1854, 1323, 1369)).
method(m_size_is_empty_76, range(collection_utils_1, 58915, 1738, 1371, 1413)).
method(m_is_empty_77, range(collection_utils_1, 60737, 343, 1416, 1427)).
method(m_is_not_empty_78, range(collection_utils_1, 61086, 344, 1429, 1440)).
method(m_reverse_array_79, range(collection_utils_1, 61514, 403, 1443, 1460)).
method(m_is_full_80, range(collection_utils_1, 61923, 1262, 1462, 1491)).
method(m_max_size_81, range(collection_utils_1, 63191, 1286, 1493, 1522)).
method(m_collate_82, range(collection_utils_1, 64561, 842, 1525, 1541)).
method(m_collate_83, range(collection_utils_1, 65409, 1107, 1543, 1562)).
method(m_collate_84, range(collection_utils_1, 66522, 866, 1564, 1581)).
method(m_collate_85, range(collection_utils_1, 67394, 2097, 1583, 1630)).
method(m_permutations_86, range(collection_utils_1, 69576, 1162, 1634, 1659)).
method(m_retain_all_87, range(collection_utils_1, 70822, 1639, 1662, 1686)).
method(m_retain_all_88, range(collection_utils_1, 72467, 2448, 1688, 1734)).
method(m_transform_89, range(collection_utils_1, 74368, 148, 1718, 1721)).
method(m_remove_all_90, range(collection_utils_1, 74921, 1780, 1736, 1761)).
method(m_remove_all_91, range(collection_utils_1, 76707, 2500, 1763, 1810)).
method(m_transform_92, range(collection_utils_1, 78659, 148, 1794, 1797)).
method(m_synchronized_collection_93, range(collection_utils_1, 79291, 1135, 1813, 1840)).
method(m_unmodifiable_collection_94, range(collection_utils_1, 80432, 767, 1842, 1856)).
method(m_predicated_collection_95, range(collection_utils_1, 81205, 1037, 1858, 1875)).
method(m_transforming_collection_96, range(collection_utils_1, 82248, 1129, 1877, 1896)).
method(m_extract_singleton_97, range(collection_utils_1, 83383, 751, 1898, 1915)).

%%% Blocks
%composite_map_1 - org.apache.commons.collections4.map.CompositeMap
block(composite_map_1_block1, block, composite_map_1_code3, body, range(composite_map_1, 2828, 51, 73, 75)).
block(composite_map_1_block2, block, composite_map_1_code7, body, range(composite_map_1, 4142, 190, 108, 114)).
block(composite_map_1_block3, block, composite_map_1_stmt4, body, range(composite_map_1, 4269, 57, 111, 113)).
block(composite_map_1_block4, block, composite_map_1_code28, body, range(composite_map_1, 5058, 710, 134, 148)).
block(composite_map_1_block5, block, composite_map_1_stmt6, body, range(composite_map_1, 5116, 432, 135, 143)).
block(composite_map_1_block6, block, composite_map_1_stmt8, then_statement, range(composite_map_1, 5273, 265, 137, 142)).
%composite_map_test_1 - org.apache.commons.collections4.map.CompositeMapTest
block(composite_map_test_1_block1, block, composite_map_test_1_code7, body, range(composite_map_test_1, 1259, 32, 33, 35)).
block(composite_map_test_1_block2, block, composite_map_test_1_code8, body, range(composite_map_test_1, 1348, 57, 38, 41)).
block(composite_map_test_1_block3, block, composite_map_test_1_code9, body, range(composite_map_test_1, 1725, 152, 52, 57)).
block(composite_map_test_1_block4, block, composite_map_test_1_code22, body, range(composite_map_test_1, 1946, 155, 60, 65)).
block(composite_map_test_1_block5, block, composite_map_test_1_code35, body, range(composite_map_test_1, 2379, 489, 74, 87)).
block(composite_map_test_1_block6, block, composite_map_test_1_code54, body, range(composite_map_test_1, 2944, 460, 90, 104)).
block(composite_map_test_1_block7, block, composite_map_test_1_code73, body, range(composite_map_test_1, 3484, 388, 107, 118)).
block(composite_map_test_1_block8, block, composite_map_test_1_code92, body, range(composite_map_test_1, 3952, 388, 121, 132)).
%abstract_iterable_map_1 - org.apache.commons.collections4.map.AbstractIterableMap
%collection_utils_1 - org.apache.commons.collections4.CollectionUtils
block(collection_utils_1_block1, block, collection_utils_1_code4, body, range(collection_utils_1, 2992, 147, 73, 76)).
block(collection_utils_1_block2, block, collection_utils_1_code20, body, range(collection_utils_1, 3637, 64, 92, 94)).
block(collection_utils_1_block3, block, collection_utils_1_code21, body, range(collection_utils_1, 3932, 58, 101, 103)).
block(collection_utils_1_block4, block, collection_utils_1_code22, body, range(collection_utils_1, 4221, 58, 110, 112)).
block(collection_utils_1_block5, block, collection_utils_1_code23, body, range(collection_utils_1, 4358, 173, 114, 120)).
block(collection_utils_1_block6, block, collection_utils_1_stmt7, then_statement, range(collection_utils_1, 4443, 56, 116, 118)).
block(collection_utils_1_block7, block, collection_utils_1_code28, body, range(collection_utils_1, 5257, 288, 140, 147)).
block(collection_utils_1_block8, block, collection_utils_1_code33, body, range(collection_utils_1, 5603, 51, 150, 152)).
block(collection_utils_1_block9, block, collection_utils_1_code34, body, range(collection_utils_1, 5893, 105, 159, 163)).
block(collection_utils_1_block10, block, collection_utils_1_stmt16, body, range(collection_utils_1, 5939, 49, 160, 162)).
block(collection_utils_1_block11, block, collection_utils_1_code37, body, range(collection_utils_1, 6135, 39, 169, 171)).
block(collection_utils_1_block12, block, collection_utils_1_code44, body, range(collection_utils_1, 9405, 240, 253, 259)).
block(collection_utils_1_block13, block, collection_utils_1_stmt19, body, range(collection_utils_1, 9541, 68, 255, 257)).
block(collection_utils_1_block14, block, collection_utils_1_code55, body, range(collection_utils_1, 18686, 358, 467, 478)).
block(collection_utils_1_block15, block, collection_utils_1_stmt23, body, range(collection_utils_1, 18776, 240, 469, 476)).
block(collection_utils_1_block16, block, collection_utils_1_stmt25, then_statement, range(collection_utils_1, 18851, 67, 471, 473)).
block(collection_utils_1_block17, block, collection_utils_1_code70, body, range(collection_utils_1, 48782, 196, 1139, 1144)).
block(collection_utils_1_block18, block, collection_utils_1_stmt28, then_statement, range(collection_utils_1, 48831, 85, 1140, 1142)).

%%% Statements
%composite_map_1 - org.apache.commons.collections4.map.CompositeMap
stmt(composite_map_1_stmt1, constructor_invocation, composite_map_1_block1, (statements, 0), range(composite_map_1, 2838, 35, 74, 74)).
stmt(composite_map_1_stmt2, expression_statement, composite_map_1_block2, (statements, 0), range(composite_map_1, 4152, 23, 109, 109)).
stmt(composite_map_1_stmt3, expression_statement, composite_map_1_block2, (statements, 1), range(composite_map_1, 4184, 28, 110, 110)).
stmt(composite_map_1_stmt4, for_statement, composite_map_1_block2, (statements, 2), range(composite_map_1, 4221, 105, 111, 113)).
stmt(composite_map_1_stmt5, expression_statement, composite_map_1_block3, (statements, 0), range(composite_map_1, 4283, 33, 112, 112)).
stmt(composite_map_1_stmt6, for_statement, composite_map_1_block4, (statements, 0), range(composite_map_1, 5068, 480, 135, 143)).
stmt(composite_map_1_stmt7, variable_declaration_statement, composite_map_1_block5, (statements, 0), range(composite_map_1, 5130, 103, 136, 136)).
stmt(composite_map_1_stmt8, if_statement, composite_map_1_block5, (statements, 1), range(composite_map_1, 5246, 292, 137, 142)).
stmt(composite_map_1_stmt9, variable_declaration_statement, composite_map_1_block4, (statements, 1), range(composite_map_1, 5557, 60, 144, 144)).
stmt(composite_map_1_stmt10, expression_statement, composite_map_1_block4, (statements, 2), range(composite_map_1, 5626, 68, 145, 145)).
stmt(composite_map_1_stmt11, expression_statement, composite_map_1_block4, (statements, 3), range(composite_map_1, 5703, 28, 146, 146)).
stmt(composite_map_1_stmt12, expression_statement, composite_map_1_block4, (statements, 4), range(composite_map_1, 5740, 22, 147, 147)).
%composite_map_test_1 - org.apache.commons.collections4.map.CompositeMapTest
stmt(composite_map_test_1_stmt1, super_constructor_invocation, composite_map_test_1_block1, (statements, 0), range(composite_map_test_1, 1269, 16, 34, 34)).
stmt(composite_map_test_1_stmt2, expression_statement, composite_map_test_1_block2, (statements, 0), range(composite_map_test_1, 1358, 14, 39, 39)).
stmt(composite_map_test_1_stmt3, expression_statement, composite_map_test_1_block2, (statements, 1), range(composite_map_test_1, 1381, 18, 40, 40)).
stmt(composite_map_test_1_stmt4, variable_declaration_statement, composite_map_test_1_block3, (statements, 0), range(composite_map_test_1, 1735, 42, 53, 53)).
stmt(composite_map_test_1_stmt5, expression_statement, composite_map_test_1_block3, (statements, 1), range(composite_map_test_1, 1786, 28, 54, 54)).
stmt(composite_map_test_1_stmt6, expression_statement, composite_map_test_1_block3, (statements, 2), range(composite_map_test_1, 1823, 28, 55, 55)).
stmt(composite_map_test_1_stmt7, return_statement, composite_map_test_1_block3, (statements, 3), range(composite_map_test_1, 1860, 11, 56, 56)).
stmt(composite_map_test_1_stmt8, variable_declaration_statement, composite_map_test_1_block4, (statements, 0), range(composite_map_test_1, 1956, 42, 61, 61)).
stmt(composite_map_test_1_stmt9, expression_statement, composite_map_test_1_block4, (statements, 1), range(composite_map_test_1, 2007, 30, 62, 62)).
stmt(composite_map_test_1_stmt10, expression_statement, composite_map_test_1_block4, (statements, 2), range(composite_map_test_1, 2046, 29, 63, 63)).
stmt(composite_map_test_1_stmt11, return_statement, composite_map_test_1_block4, (statements, 3), range(composite_map_test_1, 2084, 11, 64, 64)).
stmt(composite_map_test_1_stmt12, variable_declaration_statement, composite_map_test_1_block5, (statements, 0), range(composite_map_test_1, 2389, 74, 75, 75)).
stmt(composite_map_test_1_stmt13, variable_declaration_statement, composite_map_test_1_block5, (statements, 1), range(composite_map_test_1, 2472, 44, 76, 76)).
stmt(composite_map_test_1_stmt14, expression_statement, composite_map_test_1_block5, (statements, 2), range(composite_map_test_1, 2525, 31, 77, 77)).
stmt(composite_map_test_1_stmt15, expression_statement, composite_map_test_1_block5, (statements, 3), range(composite_map_test_1, 2565, 24, 78, 78)).
stmt(composite_map_test_1_stmt16, variable_declaration_statement, composite_map_test_1_block6, (statements, 0), range(composite_map_test_1, 2954, 74, 91, 91)).
stmt(composite_map_test_1_stmt17, variable_declaration_statement, composite_map_test_1_block6, (statements, 1), range(composite_map_test_1, 3037, 44, 92, 92)).
stmt(composite_map_test_1_stmt18, expression_statement, composite_map_test_1_block6, (statements, 2), range(composite_map_test_1, 3090, 31, 93, 93)).
stmt(composite_map_test_1_stmt19, expression_statement, composite_map_test_1_block6, (statements, 3), range(composite_map_test_1, 3130, 24, 94, 94)).
stmt(composite_map_test_1_stmt20, variable_declaration_statement, composite_map_test_1_block7, (statements, 0), range(composite_map_test_1, 3494, 74, 108, 108)).
stmt(composite_map_test_1_stmt21, variable_declaration_statement, composite_map_test_1_block7, (statements, 1), range(composite_map_test_1, 3577, 44, 109, 109)).
stmt(composite_map_test_1_stmt22, expression_statement, composite_map_test_1_block7, (statements, 2), range(composite_map_test_1, 3630, 31, 110, 110)).
stmt(composite_map_test_1_stmt23, expression_statement, composite_map_test_1_block7, (statements, 3), range(composite_map_test_1, 3670, 24, 111, 111)).
stmt(composite_map_test_1_stmt24, variable_declaration_statement, composite_map_test_1_block8, (statements, 0), range(composite_map_test_1, 3962, 74, 122, 122)).
stmt(composite_map_test_1_stmt25, variable_declaration_statement, composite_map_test_1_block8, (statements, 1), range(composite_map_test_1, 4045, 44, 123, 123)).
stmt(composite_map_test_1_stmt26, expression_statement, composite_map_test_1_block8, (statements, 2), range(composite_map_test_1, 4098, 31, 124, 124)).
stmt(composite_map_test_1_stmt27, expression_statement, composite_map_test_1_block8, (statements, 3), range(composite_map_test_1, 4138, 24, 125, 125)).
%abstract_iterable_map_1 - org.apache.commons.collections4.map.AbstractIterableMap
%collection_utils_1 - org.apache.commons.collections4.CollectionUtils
stmt(collection_utils_1_stmt1, expression_statement, collection_utils_1_block1, (statements, 0), range(collection_utils_1, 3006, 55, 74, 74)).
stmt(collection_utils_1_stmt2, expression_statement, collection_utils_1_block1, (statements, 1), range(collection_utils_1, 3074, 55, 75, 75)).
stmt(collection_utils_1_stmt3, return_statement, collection_utils_1_block2, (statements, 0), range(collection_utils_1, 3651, 40, 93, 93)).
stmt(collection_utils_1_stmt4, return_statement, collection_utils_1_block3, (statements, 0), range(collection_utils_1, 3946, 34, 102, 102)).
stmt(collection_utils_1_stmt5, return_statement, collection_utils_1_block4, (statements, 0), range(collection_utils_1, 4235, 34, 111, 111)).
stmt(collection_utils_1_stmt6, variable_declaration_statement, collection_utils_1_block5, (statements, 0), range(collection_utils_1, 4372, 39, 115, 115)).
stmt(collection_utils_1_stmt7, if_statement, collection_utils_1_block5, (statements, 1), range(collection_utils_1, 4424, 75, 116, 118)).
stmt(collection_utils_1_stmt8, return_statement, collection_utils_1_block6, (statements, 0), range(collection_utils_1, 4461, 24, 117, 117)).
stmt(collection_utils_1_stmt9, return_statement, collection_utils_1_block5, (statements, 2), range(collection_utils_1, 4512, 9, 119, 119)).
stmt(collection_utils_1_stmt10, super_constructor_invocation, collection_utils_1_block7, (statements, 0), range(collection_utils_1, 5271, 12, 141, 141)).
stmt(collection_utils_1_stmt11, expression_statement, collection_utils_1_block7, (statements, 1), range(collection_utils_1, 5296, 27, 142, 142)).
stmt(collection_utils_1_stmt12, expression_statement, collection_utils_1_block7, (statements, 2), range(collection_utils_1, 5336, 20, 143, 143)).
stmt(collection_utils_1_stmt13, expression_statement, collection_utils_1_block7, (statements, 3), range(collection_utils_1, 5369, 20, 144, 144)).
stmt(collection_utils_1_stmt14, expression_statement, collection_utils_1_block7, (statements, 4), range(collection_utils_1, 5492, 43, 146, 146)).
stmt(collection_utils_1_stmt15, return_statement, collection_utils_1_block8, (statements, 0), range(collection_utils_1, 5617, 27, 151, 151)).
stmt(collection_utils_1_stmt16, for_statement, collection_utils_1_block9, (statements, 0), range(collection_utils_1, 5907, 81, 160, 162)).
stmt(collection_utils_1_stmt17, return_statement, collection_utils_1_block11, (statements, 0), range(collection_utils_1, 6149, 15, 170, 170)).
stmt(collection_utils_1_stmt18, variable_declaration_statement, collection_utils_1_block12, (statements, 0), range(collection_utils_1, 9415, 90, 254, 254)).
stmt(collection_utils_1_stmt19, enhanced_for_statement, collection_utils_1_block12, (statements, 1), range(collection_utils_1, 9514, 95, 255, 257)).
stmt(collection_utils_1_stmt20, expression_statement, collection_utils_1_block13, (statements, 0), range(collection_utils_1, 9555, 44, 256, 256)).
stmt(collection_utils_1_stmt21, return_statement, collection_utils_1_block12, (statements, 2), range(collection_utils_1, 9618, 21, 258, 258)).
stmt(collection_utils_1_stmt22, variable_declaration_statement, collection_utils_1_block14, (statements, 0), range(collection_utils_1, 18696, 46, 468, 468)).
stmt(collection_utils_1_stmt23, enhanced_for_statement, collection_utils_1_block14, (statements, 1), range(collection_utils_1, 18751, 265, 469, 476)).
stmt(collection_utils_1_stmt24, variable_declaration_statement, collection_utils_1_block15, (statements, 0), range(collection_utils_1, 18790, 33, 470, 470)).
stmt(collection_utils_1_stmt25, if_statement, collection_utils_1_block15, (statements, 1), range(collection_utils_1, 18836, 170, 471, 475)).
stmt(collection_utils_1_stmt26, expression_statement, collection_utils_1_block16, (statements, 0), range(collection_utils_1, 18869, 35, 472, 472)).
stmt(collection_utils_1_stmt27, return_statement, collection_utils_1_block14, (statements, 2), range(collection_utils_1, 19025, 13, 477, 477)).
stmt(collection_utils_1_stmt28, if_statement, collection_utils_1_block17, (statements, 0), range(collection_utils_1, 48792, 124, 1140, 1142)).
stmt(collection_utils_1_stmt29, return_statement, collection_utils_1_block18, (statements, 0), range(collection_utils_1, 48845, 61, 1141, 1141)).

%%% Expressions
%composite_map_1 - org.apache.commons.collections4.map.CompositeMap
expr(composite_map_1_expr1, constructor_invocation, composite_map_1_block1, (statements, 0), range(composite_map_1, 2838, 35, 74, 74), "this(new Map[]{one,two},null);").
expr(composite_map_1_expr2, array_creation, composite_map_1_stmt1, (arguments, 0), range(composite_map_1, 2843, 22, 74, 74), "new Map[]{one,two}").
expr(composite_map_1_expr3, array_initializer, composite_map_1_expr2, initializer, range(composite_map_1, 2853, 12, 74, 74), "{one,two}").
expr(composite_map_1_expr4, assignment, composite_map_1_stmt2, expression, range(composite_map_1, 4152, 22, 109, 109), "this.mutator=mutator").
expr(composite_map_1_expr5, field_access, composite_map_1_expr4, left_hand_side, range(composite_map_1, 4152, 12, 109, 109), "this.mutator").
expr(composite_map_1_expr6, this_expression, f_mutator_171, expression, range(composite_map_1, 4152, 4, 109, 109), "this").
expr(composite_map_1_expr7, assignment, composite_map_1_stmt3, expression, range(composite_map_1, 4184, 27, 110, 110), "this.composite=new Map[0]").
expr(composite_map_1_expr8, field_access, composite_map_1_expr7, left_hand_side, range(composite_map_1, 4184, 14, 110, 110), "this.composite").
expr(composite_map_1_expr10, this_expression, f_composite_172, expression, range(composite_map_1, 4184, 4, 110, 110), "this").
expr(composite_map_1_expr9, array_creation, composite_map_1_expr7, right_hand_side, range(composite_map_1, 4201, 10, 110, 110), "new Map[0]").
expr(composite_map_1_expr11, variable_declaration_expression, composite_map_1_stmt4, (initializers, 0), range(composite_map_1, 4226, 28, 111, 111), "int i=composite.length - 1").
expr(composite_map_1_expr12, infix_expression, composite_map_1_code27, initializer, range(composite_map_1, 4234, 20, 111, 111), "composite.length - 1").
expr(composite_map_1_expr13, infix_expression, composite_map_1_stmt4, expression, range(composite_map_1, 4256, 6, 111, 111), "i >= 0").
expr(composite_map_1_expr14, prefix_expression, composite_map_1_stmt4, (updaters, 0), range(composite_map_1, 4264, 3, 111, 111), "--i").
expr(composite_map_1_expr15, method_invocation, composite_map_1_stmt5, expression, range(composite_map_1, 4283, 32, 112, 112), "this.addComposited(composite[i])").
expr(composite_map_1_expr17, this_expression, composite_map_1_expr15, expression, range(composite_map_1, 4283, 4, 112, 112), "this").
expr(composite_map_1_expr16, array_access, composite_map_1_expr15, (arguments, 0), range(composite_map_1, 4302, 12, 112, 112), "composite[i]").
expr(composite_map_1_expr18, variable_declaration_expression, composite_map_1_stmt6, (initializers, 0), range(composite_map_1, 5073, 28, 135, 135), "int i=composite.length - 1").
expr(composite_map_1_expr19, infix_expression, composite_map_1_code30, initializer, range(composite_map_1, 5081, 20, 135, 135), "composite.length - 1").
expr(composite_map_1_expr20, infix_expression, composite_map_1_stmt6, expression, range(composite_map_1, 5103, 6, 135, 135), "i >= 0").
expr(composite_map_1_expr21, prefix_expression, composite_map_1_stmt6, (updaters, 0), range(composite_map_1, 5111, 3, 135, 135), "--i").
expr(composite_map_1_expr22, method_invocation, composite_map_1_code35, initializer, range(composite_map_1, 5162, 70, 136, 136), "CollectionUtils.intersection(this.composite[i].keySet(),map.keySet())").
expr(composite_map_1_expr23, method_invocation, composite_map_1_expr22, (arguments, 0), range(composite_map_1, 5191, 26, 136, 136), "this.composite[i].keySet()").
expr(composite_map_1_expr25, array_access, composite_map_1_expr23, expression, range(composite_map_1, 5191, 17, 136, 136), "this.composite[i]").
expr(composite_map_1_expr27, this_expression, f_composite_172, expression, range(composite_map_1, 5191, 4, 136, 136), "this").
expr(composite_map_1_expr26, field_access, composite_map_1_expr25, array, range(composite_map_1, 5191, 14, 136, 136), "this.composite").
expr(composite_map_1_expr24, method_invocation, composite_map_1_expr22, (arguments, 1), range(composite_map_1, 5219, 12, 136, 136), "map.keySet()").
expr(composite_map_1_expr29, method_invocation, composite_map_1_expr28, left_operand, range(composite_map_1, 5250, 16, 137, 137), "intersect.size()").
expr(composite_map_1_expr28, infix_expression, composite_map_1_stmt8, expression, range(composite_map_1, 5250, 21, 137, 137), "intersect.size() != 0").
expr(composite_map_1_expr30, array_creation, composite_map_1_code43, initializer, range(composite_map_1, 5582, 34, 144, 144), "new Map[this.composite.length + 1]").
expr(composite_map_1_expr32, field_access, composite_map_1_expr31, left_operand, range(composite_map_1, 5590, 21, 144, 144), "this.composite.length").
expr(composite_map_1_expr31, infix_expression, composite_map_1_expr30, (dimensions, 0), range(composite_map_1, 5590, 25, 144, 144), "this.composite.length + 1").
expr(composite_map_1_expr34, this_expression, f_composite_172, expression, range(composite_map_1, 5590, 4, 144, 144), "this").
expr(composite_map_1_expr33, field_access, composite_map_1_expr32, expression, range(composite_map_1, 5590, 14, 144, 144), "this.composite").
expr(composite_map_1_expr35, method_invocation, composite_map_1_stmt10, expression, range(composite_map_1, 5626, 67, 145, 145), "System.arraycopy(this.composite,0,temp,0,this.composite.length)").
expr(composite_map_1_expr36, field_access, composite_map_1_expr35, (arguments, 0), range(composite_map_1, 5643, 14, 145, 145), "this.composite").
expr(composite_map_1_expr38, this_expression, f_composite_172, expression, range(composite_map_1, 5643, 4, 145, 145), "this").
expr(composite_map_1_expr40, this_expression, f_composite_172, expression, range(composite_map_1, 5671, 4, 145, 145), "this").
expr(composite_map_1_expr37, field_access, composite_map_1_expr35, (arguments, 4), range(composite_map_1, 5671, 21, 145, 145), "this.composite.length").
expr(composite_map_1_expr39, field_access, composite_map_1_expr37, expression, range(composite_map_1, 5671, 14, 145, 145), "this.composite").
expr(composite_map_1_expr41, assignment, composite_map_1_stmt11, expression, range(composite_map_1, 5703, 27, 146, 146), "temp[temp.length - 1]=map").
expr(composite_map_1_expr42, array_access, composite_map_1_expr41, left_hand_side, range(composite_map_1, 5703, 21, 146, 146), "temp[temp.length - 1]").
expr(composite_map_1_expr43, infix_expression, composite_map_1_expr42, index, range(composite_map_1, 5708, 15, 146, 146), "temp.length - 1").
expr(composite_map_1_expr45, field_access, composite_map_1_expr44, left_hand_side, range(composite_map_1, 5740, 14, 147, 147), "this.composite").
expr(composite_map_1_expr44, assignment, composite_map_1_stmt12, expression, range(composite_map_1, 5740, 21, 147, 147), "this.composite=temp").
expr(composite_map_1_expr46, this_expression, f_composite_172, expression, range(composite_map_1, 5740, 4, 147, 147), "this").
%composite_map_test_1 - org.apache.commons.collections4.map.CompositeMapTest
expr(composite_map_test_1_expr1, super_constructor_invocation, composite_map_test_1_block1, (statements, 0), range(composite_map_test_1, 1269, 16, 34, 34), "super(testName);").
expr(composite_map_test_1_expr2, super_method_invocation, composite_map_test_1_stmt2, expression, range(composite_map_test_1, 1358, 13, 39, 39), "super.setUp()").
expr(composite_map_test_1_expr4, field_access, composite_map_test_1_expr3, left_hand_side, range(composite_map_test_1, 1381, 9, 40, 40), "this.pass").
expr(composite_map_test_1_expr3, assignment, composite_map_test_1_stmt3, expression, range(composite_map_test_1, 1381, 17, 40, 40), "this.pass=false").
expr(composite_map_test_1_expr5, this_expression, f_pass_202, expression, range(composite_map_test_1, 1381, 4, 40, 40), "this").
expr(composite_map_test_1_expr6, class_instance_creation, composite_map_test_1_code15, initializer, range(composite_map_test_1, 1761, 15, 53, 53), "new HashMap<>()").
expr(composite_map_test_1_expr7, method_invocation, composite_map_test_1_stmt5, expression, range(composite_map_test_1, 1786, 27, 54, 54), "map.put((K)\"1\",(V)\"one\")").
expr(composite_map_test_1_expr8, cast_expression, composite_map_test_1_expr7, (arguments, 0), range(composite_map_test_1, 1794, 7, 54, 54), "(K)\"1\"").
expr(composite_map_test_1_expr9, cast_expression, composite_map_test_1_expr7, (arguments, 1), range(composite_map_test_1, 1803, 9, 54, 54), "(V)\"one\"").
expr(composite_map_test_1_expr10, method_invocation, composite_map_test_1_stmt6, expression, range(composite_map_test_1, 1823, 27, 55, 55), "map.put((K)\"2\",(V)\"two\")").
expr(composite_map_test_1_expr11, cast_expression, composite_map_test_1_expr10, (arguments, 0), range(composite_map_test_1, 1831, 7, 55, 55), "(K)\"2\"").
expr(composite_map_test_1_expr12, cast_expression, composite_map_test_1_expr10, (arguments, 1), range(composite_map_test_1, 1840, 9, 55, 55), "(V)\"two\"").
expr(composite_map_test_1_expr13, class_instance_creation, composite_map_test_1_code28, initializer, range(composite_map_test_1, 1982, 15, 61, 61), "new HashMap<>()").
expr(composite_map_test_1_expr14, method_invocation, composite_map_test_1_stmt9, expression, range(composite_map_test_1, 2007, 29, 62, 62), "map.put((K)\"3\",(V)\"three\")").
expr(composite_map_test_1_expr15, cast_expression, composite_map_test_1_expr14, (arguments, 0), range(composite_map_test_1, 2015, 7, 62, 62), "(K)\"3\"").
expr(composite_map_test_1_expr16, cast_expression, composite_map_test_1_expr14, (arguments, 1), range(composite_map_test_1, 2024, 11, 62, 62), "(V)\"three\"").
expr(composite_map_test_1_expr17, method_invocation, composite_map_test_1_stmt10, expression, range(composite_map_test_1, 2046, 28, 63, 63), "map.put((K)\"4\",(V)\"four\")").
expr(composite_map_test_1_expr18, cast_expression, composite_map_test_1_expr17, (arguments, 0), range(composite_map_test_1, 2054, 7, 63, 63), "(K)\"4\"").
expr(composite_map_test_1_expr19, cast_expression, composite_map_test_1_expr17, (arguments, 1), range(composite_map_test_1, 2063, 10, 63, 63), "(V)\"four\"").
expr(composite_map_test_1_expr20, class_instance_creation, composite_map_test_1_code41, initializer, range(composite_map_test_1, 2420, 42, 75, 75), "new CompositeMap<>(buildOne(),buildTwo())").
expr(composite_map_test_1_expr21, method_invocation, composite_map_test_1_expr20, (arguments, 0), range(composite_map_test_1, 2439, 10, 75, 75), "buildOne()").
expr(composite_map_test_1_expr22, method_invocation, composite_map_test_1_expr20, (arguments, 1), range(composite_map_test_1, 2451, 10, 75, 75), "buildTwo()").
expr(composite_map_test_1_expr23, class_instance_creation, composite_map_test_1_code49, initializer, range(composite_map_test_1, 2500, 15, 76, 76), "new HashMap<>()").
expr(composite_map_test_1_expr24, method_invocation, composite_map_test_1_stmt14, expression, range(composite_map_test_1, 2525, 30, 77, 77), "three.put((K)\"5\",(V)\"five\")").
expr(composite_map_test_1_expr25, cast_expression, composite_map_test_1_expr24, (arguments, 0), range(composite_map_test_1, 2535, 7, 77, 77), "(K)\"5\"").
expr(composite_map_test_1_expr26, cast_expression, composite_map_test_1_expr24, (arguments, 1), range(composite_map_test_1, 2544, 10, 77, 77), "(V)\"five\"").
expr(composite_map_test_1_expr27, method_invocation, composite_map_test_1_stmt15, expression, range(composite_map_test_1, 2565, 23, 78, 78), "map.addComposited(null)").
expr(composite_map_test_1_expr28, class_instance_creation, composite_map_test_1_code60, initializer, range(composite_map_test_1, 2985, 42, 91, 91), "new CompositeMap<>(buildOne(),buildTwo())").
expr(composite_map_test_1_expr29, method_invocation, composite_map_test_1_expr28, (arguments, 0), range(composite_map_test_1, 3004, 10, 91, 91), "buildOne()").
expr(composite_map_test_1_expr30, method_invocation, composite_map_test_1_expr28, (arguments, 1), range(composite_map_test_1, 3016, 10, 91, 91), "buildTwo()").
expr(composite_map_test_1_expr31, class_instance_creation, composite_map_test_1_code68, initializer, range(composite_map_test_1, 3065, 15, 92, 92), "new HashMap<>()").
expr(composite_map_test_1_expr32, method_invocation, composite_map_test_1_stmt18, expression, range(composite_map_test_1, 3090, 30, 93, 93), "three.put((K)\"5\",(V)\"five\")").
expr(composite_map_test_1_expr33, cast_expression, composite_map_test_1_expr32, (arguments, 0), range(composite_map_test_1, 3100, 7, 93, 93), "(K)\"5\"").
expr(composite_map_test_1_expr34, cast_expression, composite_map_test_1_expr32, (arguments, 1), range(composite_map_test_1, 3109, 10, 93, 93), "(V)\"five\"").
expr(composite_map_test_1_expr35, method_invocation, composite_map_test_1_stmt19, expression, range(composite_map_test_1, 3130, 23, 94, 94), "map.addComposited(null)").
expr(composite_map_test_1_expr36, class_instance_creation, composite_map_test_1_code79, initializer, range(composite_map_test_1, 3525, 42, 108, 108), "new CompositeMap<>(buildOne(),buildTwo())").
expr(composite_map_test_1_expr37, method_invocation, composite_map_test_1_expr36, (arguments, 0), range(composite_map_test_1, 3544, 10, 108, 108), "buildOne()").
expr(composite_map_test_1_expr38, method_invocation, composite_map_test_1_expr36, (arguments, 1), range(composite_map_test_1, 3556, 10, 108, 108), "buildTwo()").
expr(composite_map_test_1_expr39, class_instance_creation, composite_map_test_1_code87, initializer, range(composite_map_test_1, 3605, 15, 109, 109), "new HashMap<>()").
expr(composite_map_test_1_expr40, method_invocation, composite_map_test_1_stmt22, expression, range(composite_map_test_1, 3630, 30, 110, 110), "three.put((K)\"5\",(V)\"five\")").
expr(composite_map_test_1_expr41, cast_expression, composite_map_test_1_expr40, (arguments, 0), range(composite_map_test_1, 3640, 7, 110, 110), "(K)\"5\"").
expr(composite_map_test_1_expr42, cast_expression, composite_map_test_1_expr40, (arguments, 1), range(composite_map_test_1, 3649, 10, 110, 110), "(V)\"five\"").
expr(composite_map_test_1_expr43, method_invocation, composite_map_test_1_stmt23, expression, range(composite_map_test_1, 3670, 23, 111, 111), "map.addComposited(null)").
expr(composite_map_test_1_expr44, class_instance_creation, composite_map_test_1_code98, initializer, range(composite_map_test_1, 3993, 42, 122, 122), "new CompositeMap<>(buildOne(),buildTwo())").
expr(composite_map_test_1_expr45, method_invocation, composite_map_test_1_expr44, (arguments, 0), range(composite_map_test_1, 4012, 10, 122, 122), "buildOne()").
expr(composite_map_test_1_expr46, method_invocation, composite_map_test_1_expr44, (arguments, 1), range(composite_map_test_1, 4024, 10, 122, 122), "buildTwo()").
expr(composite_map_test_1_expr47, class_instance_creation, composite_map_test_1_code106, initializer, range(composite_map_test_1, 4073, 15, 123, 123), "new HashMap<>()").
expr(composite_map_test_1_expr48, method_invocation, composite_map_test_1_stmt26, expression, range(composite_map_test_1, 4098, 30, 124, 124), "three.put((K)\"5\",(V)\"five\")").
expr(composite_map_test_1_expr49, cast_expression, composite_map_test_1_expr48, (arguments, 0), range(composite_map_test_1, 4108, 7, 124, 124), "(K)\"5\"").
expr(composite_map_test_1_expr50, cast_expression, composite_map_test_1_expr48, (arguments, 1), range(composite_map_test_1, 4117, 10, 124, 124), "(V)\"five\"").
expr(composite_map_test_1_expr51, method_invocation, composite_map_test_1_stmt27, expression, range(composite_map_test_1, 4138, 23, 125, 125), "map.addComposited(null)").
%abstract_iterable_map_1 - org.apache.commons.collections4.map.AbstractIterableMap
%collection_utils_1 - org.apache.commons.collections4.CollectionUtils
expr(collection_utils_1_expr1, assignment, collection_utils_1_stmt1, expression, range(collection_utils_1, 3006, 54, 74, 74), "cardinalityA=CollectionUtils.<O>getCardinalityMap(a)").
expr(collection_utils_1_expr2, method_invocation, collection_utils_1_expr1, right_hand_side, range(collection_utils_1, 3021, 39, 74, 74), "CollectionUtils.<O>getCardinalityMap(a)").
expr(collection_utils_1_expr3, assignment, collection_utils_1_stmt2, expression, range(collection_utils_1, 3074, 54, 75, 75), "cardinalityB=CollectionUtils.<O>getCardinalityMap(b)").
expr(collection_utils_1_expr4, method_invocation, collection_utils_1_expr3, right_hand_side, range(collection_utils_1, 3089, 39, 75, 75), "CollectionUtils.<O>getCardinalityMap(b)").
expr(collection_utils_1_expr5, method_invocation, collection_utils_1_stmt3, expression, range(collection_utils_1, 3658, 32, 93, 93), "Math.min(freqA(obj),freqB(obj))").
expr(collection_utils_1_expr6, method_invocation, collection_utils_1_expr5, (arguments, 0), range(collection_utils_1, 3667, 10, 93, 93), "freqA(obj)").
expr(collection_utils_1_expr7, method_invocation, collection_utils_1_expr5, (arguments, 1), range(collection_utils_1, 3679, 10, 93, 93), "freqB(obj)").
expr(collection_utils_1_expr8, method_invocation, collection_utils_1_stmt4, expression, range(collection_utils_1, 3953, 26, 102, 102), "getFreq(obj,cardinalityA)").
expr(collection_utils_1_expr9, method_invocation, collection_utils_1_stmt5, expression, range(collection_utils_1, 4242, 26, 111, 111), "getFreq(obj,cardinalityB)").
expr(collection_utils_1_expr10, method_invocation, collection_utils_1_code26, initializer, range(collection_utils_1, 4394, 16, 115, 115), "freqMap.get(obj)").
expr(collection_utils_1_expr11, infix_expression, collection_utils_1_stmt7, expression, range(collection_utils_1, 4428, 13, 116, 116), "count != null").
expr(collection_utils_1_expr12, method_invocation, collection_utils_1_stmt8, expression, range(collection_utils_1, 4468, 16, 117, 117), "count.intValue()").
expr(collection_utils_1_expr13, super_constructor_invocation, collection_utils_1_block7, (statements, 0), range(collection_utils_1, 5271, 12, 141, 141), "super(a,b);").
expr(collection_utils_1_expr14, assignment, collection_utils_1_stmt11, expression, range(collection_utils_1, 5296, 26, 142, 142), "elements=new HashSet<>()").
expr(collection_utils_1_expr15, class_instance_creation, collection_utils_1_expr14, right_hand_side, range(collection_utils_1, 5307, 15, 142, 142), "new HashSet<>()").
expr(collection_utils_1_expr16, method_invocation, collection_utils_1_stmt12, expression, range(collection_utils_1, 5336, 19, 143, 143), "addAll(elements,a)").
expr(collection_utils_1_expr17, method_invocation, collection_utils_1_stmt13, expression, range(collection_utils_1, 5369, 19, 144, 144), "addAll(elements,b)").
expr(collection_utils_1_expr18, assignment, collection_utils_1_stmt14, expression, range(collection_utils_1, 5492, 42, 146, 146), "newList=new ArrayList<>(elements.size())").
expr(collection_utils_1_expr19, class_instance_creation, collection_utils_1_expr18, right_hand_side, range(collection_utils_1, 5502, 32, 146, 146), "new ArrayList<>(elements.size())").
expr(collection_utils_1_expr20, method_invocation, collection_utils_1_expr19, (arguments, 0), range(collection_utils_1, 5518, 15, 146, 146), "elements.size()").
expr(collection_utils_1_expr21, method_invocation, collection_utils_1_stmt15, expression, range(collection_utils_1, 5624, 19, 151, 151), "elements.iterator()").
expr(collection_utils_1_expr22, variable_declaration_expression, collection_utils_1_stmt16, (initializers, 0), range(collection_utils_1, 5912, 9, 160, 160), "int i=0").
expr(collection_utils_1_expr23, infix_expression, collection_utils_1_stmt16, expression, range(collection_utils_1, 5923, 9, 160, 160), "i < count").
expr(collection_utils_1_expr24, postfix_expression, collection_utils_1_stmt16, (updaters, 0), range(collection_utils_1, 5934, 3, 160, 160), "i++").
expr(collection_utils_1_expr25, method_invocation, collection_utils_1_code43, initializer, range(collection_utils_1, 6598, 23, 182, 182), "Collections.emptyList()").
expr(collection_utils_1_expr26, class_instance_creation, collection_utils_1_code49, initializer, range(collection_utils_1, 9463, 41, 254, 254), "new SetOperationCardinalityHelper<>(a,b)").
expr(collection_utils_1_expr27, method_invocation, collection_utils_1_stmt20, expression, range(collection_utils_1, 9555, 43, 256, 256), "helper.setCardinality(obj,helper.min(obj))").
expr(collection_utils_1_expr28, method_invocation, collection_utils_1_expr27, (arguments, 1), range(collection_utils_1, 9582, 15, 256, 256), "helper.min(obj)").
expr(collection_utils_1_expr29, method_invocation, collection_utils_1_stmt21, expression, range(collection_utils_1, 9625, 13, 258, 258), "helper.list()").
expr(collection_utils_1_expr30, class_instance_creation, collection_utils_1_code61, initializer, range(collection_utils_1, 18726, 15, 468, 468), "new HashMap<>()").
expr(collection_utils_1_expr31, method_invocation, collection_utils_1_code69, initializer, range(collection_utils_1, 18808, 14, 470, 470), "count.get(obj)").
expr(collection_utils_1_expr32, infix_expression, collection_utils_1_stmt25, expression, range(collection_utils_1, 18840, 9, 471, 471), "c == null").
expr(collection_utils_1_expr33, method_invocation, collection_utils_1_stmt26, expression, range(collection_utils_1, 18869, 34, 472, 472), "count.put(obj,Integer.valueOf(1))").
expr(collection_utils_1_expr34, method_invocation, collection_utils_1_expr33, (arguments, 1), range(collection_utils_1, 18884, 18, 472, 472), "Integer.valueOf(1)").
expr(collection_utils_1_expr35, instanceof_expression, collection_utils_1_stmt28, expression, range(collection_utils_1, 48796, 33, 1140, 1140), "iterable instanceof Collection<?>").
expr(collection_utils_1_expr36, method_invocation, collection_utils_1_stmt29, expression, range(collection_utils_1, 48852, 53, 1141, 1141), "collection.addAll((Collection<? extends C>)iterable)").
expr(collection_utils_1_expr37, cast_expression, collection_utils_1_expr36, (arguments, 0), range(collection_utils_1, 48870, 34, 1141, 1141), "(Collection<? extends C>)iterable").

%%% Names
%composite_map_1 - org.apache.commons.collections4.map.CompositeMap
name(p_one_163, simple_name, composite_map_1_expr3, (expressions, 0), range(composite_map_1, 2855, 3, 74, 74), 'one').
name(p_two_164, simple_name, composite_map_1_expr3, (expressions, 1), range(composite_map_1, 2860, 3, 74, 74), 'two').
name(m_composite_map_101, simple_name, composite_map_1_code7, name, range(composite_map_1, 4068, 12, 108, 108), 'CompositeMap').
name(p_composite_169, simple_name, composite_map_1_code9, name, range(composite_map_1, 4099, 9, 108, 108), 'composite').
name(p_mutator_170, simple_name, composite_map_1_code17, name, range(composite_map_1, 4133, 7, 108, 108), 'mutator').
name(f_mutator_171, simple_name, composite_map_1_expr5, name, range(composite_map_1, 4157, 7, 109, 109), 'mutator').
name(p_mutator_170, simple_name, composite_map_1_expr4, right_hand_side, range(composite_map_1, 4167, 7, 109, 109), 'mutator').
name(f_composite_172, simple_name, composite_map_1_expr8, name, range(composite_map_1, 4189, 9, 110, 110), 'composite').
name(v_i_173, simple_name, composite_map_1_code27, name, range(composite_map_1, 4230, 1, 111, 111), 'i').
name(p_composite_169, simple_name, q_length_1, qualifier, range(composite_map_1, 4234, 9, 111, 111), 'composite').
name(q_length_1, qualified_name, composite_map_1_expr12, left_operand, range(composite_map_1, 4234, 16, 111, 111), 'composite.length').
name(v_i_173, simple_name, composite_map_1_expr13, left_operand, range(composite_map_1, 4256, 1, 111, 111), 'i').
name(v_i_173, simple_name, composite_map_1_expr14, operand, range(composite_map_1, 4266, 1, 111, 111), 'i').
name(m_add_composited_104, simple_name, composite_map_1_expr15, name, range(composite_map_1, 4288, 13, 112, 112), 'addComposited').
name(p_composite_169, simple_name, composite_map_1_expr16, array, range(composite_map_1, 4302, 9, 112, 112), 'composite').
name(v_i_173, simple_name, composite_map_1_expr16, index, range(composite_map_1, 4312, 1, 112, 112), 'i').
name(v_i_176, simple_name, composite_map_1_code30, name, range(composite_map_1, 5077, 1, 135, 135), 'i').
name(q_length_2, qualified_name, composite_map_1_expr19, left_operand, range(composite_map_1, 5081, 16, 135, 135), 'composite.length').
name(f_composite_172, simple_name, q_length_2, qualifier, range(composite_map_1, 5081, 9, 135, 135), 'composite').
name(v_i_176, simple_name, composite_map_1_expr20, left_operand, range(composite_map_1, 5103, 1, 135, 135), 'i').
name(v_i_176, simple_name, composite_map_1_expr21, operand, range(composite_map_1, 5113, 1, 135, 135), 'i').
name(v_intersect_177, simple_name, composite_map_1_code35, name, range(composite_map_1, 5150, 9, 136, 136), 'intersect').
name(t_collection_utils_1, simple_name, composite_map_1_expr22, expression, range(composite_map_1, 5162, 15, 136, 136), 'CollectionUtils').
name(m_intersection_25, simple_name, composite_map_1_expr22, name, range(composite_map_1, 5178, 12, 136, 136), 'intersection').
name(f_composite_172, simple_name, composite_map_1_expr26, name, range(composite_map_1, 5196, 9, 136, 136), 'composite').
name(v_i_176, simple_name, composite_map_1_expr25, index, range(composite_map_1, 5206, 1, 136, 136), 'i').
name(m_key_set_106, simple_name, composite_map_1_expr23, name, range(composite_map_1, 5209, 6, 136, 136), 'keySet').
name(p_map_175, simple_name, composite_map_1_expr24, expression, range(composite_map_1, 5219, 3, 136, 136), 'map').
name(m_key_set_106, simple_name, composite_map_1_expr24, name, range(composite_map_1, 5223, 6, 136, 136), 'keySet').
name(v_intersect_177, simple_name, composite_map_1_expr29, expression, range(composite_map_1, 5250, 9, 137, 137), 'intersect').
name(m_size_107, simple_name, composite_map_1_expr29, name, range(composite_map_1, 5260, 4, 137, 137), 'size').
name(v_temp_178, simple_name, composite_map_1_code43, name, range(composite_map_1, 5575, 4, 144, 144), 'temp').
name(f_composite_172, simple_name, composite_map_1_expr33, name, range(composite_map_1, 5595, 9, 144, 144), 'composite').
name(f_length_179, simple_name, composite_map_1_expr32, name, range(composite_map_1, 5605, 6, 144, 144), 'length').
name(t_system_8, simple_name, composite_map_1_expr35, expression, range(composite_map_1, 5626, 6, 145, 145), 'System').
name(m_arraycopy_108, simple_name, composite_map_1_expr35, name, range(composite_map_1, 5633, 9, 145, 145), 'arraycopy').
name(f_composite_172, simple_name, composite_map_1_expr36, name, range(composite_map_1, 5648, 9, 145, 145), 'composite').
name(v_temp_178, simple_name, composite_map_1_expr35, (arguments, 2), range(composite_map_1, 5662, 4, 145, 145), 'temp').
name(f_composite_172, simple_name, composite_map_1_expr39, name, range(composite_map_1, 5676, 9, 145, 145), 'composite').
name(f_length_179, simple_name, composite_map_1_expr37, name, range(composite_map_1, 5686, 6, 145, 145), 'length').
name(v_temp_178, simple_name, composite_map_1_expr42, array, range(composite_map_1, 5703, 4, 146, 146), 'temp').
name(v_temp_178, simple_name, q_length_3, qualifier, range(composite_map_1, 5708, 4, 146, 146), 'temp').
name(q_length_3, qualified_name, composite_map_1_expr43, left_operand, range(composite_map_1, 5708, 11, 146, 146), 'temp.length').
name(p_map_175, simple_name, composite_map_1_expr41, right_hand_side, range(composite_map_1, 5727, 3, 146, 146), 'map').
name(f_composite_172, simple_name, composite_map_1_expr45, name, range(composite_map_1, 5745, 9, 147, 147), 'composite').
name(v_temp_178, simple_name, composite_map_1_expr44, right_hand_side, range(composite_map_1, 5757, 4, 147, 147), 'temp').
%composite_map_test_1 - org.apache.commons.collections4.map.CompositeMapTest
name(f_pass_200, simple_name, composite_map_test_1_code6, name, range(composite_map_test_1, 1193, 4, 31, 31), 'pass').
name(p_test_name_201, simple_name, composite_map_test_1_stmt1, (arguments, 0), range(composite_map_test_1, 1275, 8, 34, 34), 'testName').
name(m_set_up_130, simple_name, composite_map_test_1_expr2, name, range(composite_map_test_1, 1364, 5, 39, 39), 'setUp').
name(f_pass_202, simple_name, composite_map_test_1_expr4, name, range(composite_map_test_1, 1386, 4, 40, 40), 'pass').
name(v_map_203, simple_name, composite_map_test_1_code15, name, range(composite_map_test_1, 1755, 3, 53, 53), 'map').
name(v_map_203, simple_name, composite_map_test_1_expr7, expression, range(composite_map_test_1, 1786, 3, 54, 54), 'map').
name(m_put_133, simple_name, composite_map_test_1_expr7, name, range(composite_map_test_1, 1790, 3, 54, 54), 'put').
name(v_map_203, simple_name, composite_map_test_1_expr10, expression, range(composite_map_test_1, 1823, 3, 55, 55), 'map').
name(m_put_133, simple_name, composite_map_test_1_expr10, name, range(composite_map_test_1, 1827, 3, 55, 55), 'put').
name(v_map_203, simple_name, composite_map_test_1_stmt7, expression, range(composite_map_test_1, 1867, 3, 56, 56), 'map').
name(v_map_204, simple_name, composite_map_test_1_code28, name, range(composite_map_test_1, 1976, 3, 61, 61), 'map').
name(v_map_204, simple_name, composite_map_test_1_expr14, expression, range(composite_map_test_1, 2007, 3, 62, 62), 'map').
name(m_put_133, simple_name, composite_map_test_1_expr14, name, range(composite_map_test_1, 2011, 3, 62, 62), 'put').
name(v_map_204, simple_name, composite_map_test_1_expr17, expression, range(composite_map_test_1, 2046, 3, 63, 63), 'map').
name(m_put_133, simple_name, composite_map_test_1_expr17, name, range(composite_map_test_1, 2050, 3, 63, 63), 'put').
name(v_map_204, simple_name, composite_map_test_1_stmt11, expression, range(composite_map_test_1, 2091, 3, 64, 64), 'map').
name(v_map_205, simple_name, composite_map_test_1_code41, name, range(composite_map_test_1, 2414, 3, 75, 75), 'map').
name(m_build_one_132, simple_name, composite_map_test_1_expr21, name, range(composite_map_test_1, 2439, 8, 75, 75), 'buildOne').
name(m_build_two_134, simple_name, composite_map_test_1_expr22, name, range(composite_map_test_1, 2451, 8, 75, 75), 'buildTwo').
name(v_three_206, simple_name, composite_map_test_1_code49, name, range(composite_map_test_1, 2492, 5, 76, 76), 'three').
name(v_three_206, simple_name, composite_map_test_1_expr24, expression, range(composite_map_test_1, 2525, 5, 77, 77), 'three').
name(m_put_133, simple_name, composite_map_test_1_expr24, name, range(composite_map_test_1, 2531, 3, 77, 77), 'put').
name(v_map_205, simple_name, composite_map_test_1_expr27, expression, range(composite_map_test_1, 2565, 3, 78, 78), 'map').
name(m_add_composited_104, simple_name, composite_map_test_1_expr27, name, range(composite_map_test_1, 2569, 13, 78, 78), 'addComposited').
name(v_map_207, simple_name, composite_map_test_1_code60, name, range(composite_map_test_1, 2979, 3, 91, 91), 'map').
name(m_build_one_132, simple_name, composite_map_test_1_expr29, name, range(composite_map_test_1, 3004, 8, 91, 91), 'buildOne').
name(m_build_two_134, simple_name, composite_map_test_1_expr30, name, range(composite_map_test_1, 3016, 8, 91, 91), 'buildTwo').
name(v_three_208, simple_name, composite_map_test_1_code68, name, range(composite_map_test_1, 3057, 5, 92, 92), 'three').
name(v_three_208, simple_name, composite_map_test_1_expr32, expression, range(composite_map_test_1, 3090, 5, 93, 93), 'three').
name(m_put_133, simple_name, composite_map_test_1_expr32, name, range(composite_map_test_1, 3096, 3, 93, 93), 'put').
name(v_map_207, simple_name, composite_map_test_1_expr35, expression, range(composite_map_test_1, 3130, 3, 94, 94), 'map').
name(m_add_composited_104, simple_name, composite_map_test_1_expr35, name, range(composite_map_test_1, 3134, 13, 94, 94), 'addComposited').
name(v_map_209, simple_name, composite_map_test_1_code79, name, range(composite_map_test_1, 3519, 3, 108, 108), 'map').
name(m_build_one_132, simple_name, composite_map_test_1_expr37, name, range(composite_map_test_1, 3544, 8, 108, 108), 'buildOne').
name(m_build_two_134, simple_name, composite_map_test_1_expr38, name, range(composite_map_test_1, 3556, 8, 108, 108), 'buildTwo').
name(v_three_210, simple_name, composite_map_test_1_code87, name, range(composite_map_test_1, 3597, 5, 109, 109), 'three').
name(v_three_210, simple_name, composite_map_test_1_expr40, expression, range(composite_map_test_1, 3630, 5, 110, 110), 'three').
name(m_put_133, simple_name, composite_map_test_1_expr40, name, range(composite_map_test_1, 3636, 3, 110, 110), 'put').
name(v_map_209, simple_name, composite_map_test_1_expr43, expression, range(composite_map_test_1, 3670, 3, 111, 111), 'map').
name(m_add_composited_104, simple_name, composite_map_test_1_expr43, name, range(composite_map_test_1, 3674, 13, 111, 111), 'addComposited').
name(v_map_211, simple_name, composite_map_test_1_code98, name, range(composite_map_test_1, 3987, 3, 122, 122), 'map').
name(m_build_one_132, simple_name, composite_map_test_1_expr45, name, range(composite_map_test_1, 4012, 8, 122, 122), 'buildOne').
name(m_build_two_134, simple_name, composite_map_test_1_expr46, name, range(composite_map_test_1, 4024, 8, 122, 122), 'buildTwo').
name(v_three_212, simple_name, composite_map_test_1_code106, name, range(composite_map_test_1, 4065, 5, 123, 123), 'three').
name(v_three_212, simple_name, composite_map_test_1_expr48, expression, range(composite_map_test_1, 4098, 5, 124, 124), 'three').
name(m_put_133, simple_name, composite_map_test_1_expr48, name, range(composite_map_test_1, 4104, 3, 124, 124), 'put').
name(v_map_211, simple_name, composite_map_test_1_expr51, expression, range(composite_map_test_1, 4138, 3, 125, 125), 'map').
name(m_add_composited_104, simple_name, composite_map_test_1_expr51, name, range(composite_map_test_1, 4142, 13, 125, 125), 'addComposited').
%abstract_iterable_map_1 - org.apache.commons.collections4.map.AbstractIterableMap
name(t_abstract_iterable_map_5, simple_name, abstract_iterable_map_1_code2, name, range(abstract_iterable_map_1, 1152, 19, 29, 29), 'AbstractIterableMap').
name(t_k_6, simple_name, abstract_iterable_map_1_code5, name, range(abstract_iterable_map_1, 1172, 1, 29, 29), 'K').
name(t_v_7, simple_name, abstract_iterable_map_1_code6, name, range(abstract_iterable_map_1, 1175, 1, 29, 29), 'V').
%collection_utils_1 - org.apache.commons.collections4.CollectionUtils
name(m_cardinality_helper_1, simple_name, collection_utils_1_code4, name, range(collection_utils_1, 2912, 17, 73, 73), 'CardinalityHelper').
name(p_a_1, simple_name, collection_utils_1_code6, name, range(collection_utils_1, 2958, 1, 73, 73), 'a').
name(p_b_2, simple_name, collection_utils_1_code12, name, range(collection_utils_1, 2989, 1, 73, 73), 'b').
name(f_cardinality_a_3, simple_name, collection_utils_1_expr1, left_hand_side, range(collection_utils_1, 3006, 12, 74, 74), 'cardinalityA').
name(t_collection_utils_1, simple_name, collection_utils_1_expr2, expression, range(collection_utils_1, 3021, 15, 74, 74), 'CollectionUtils').
name(m_get_cardinality_map_2, simple_name, collection_utils_1_expr2, name, range(collection_utils_1, 3040, 17, 74, 74), 'getCardinalityMap').
name(p_a_1, simple_name, collection_utils_1_expr2, (arguments, 0), range(collection_utils_1, 3058, 1, 74, 74), 'a').
name(f_cardinality_b_4, simple_name, collection_utils_1_expr3, left_hand_side, range(collection_utils_1, 3074, 12, 75, 75), 'cardinalityB').
name(t_collection_utils_1, simple_name, collection_utils_1_expr4, expression, range(collection_utils_1, 3089, 15, 75, 75), 'CollectionUtils').
name(m_get_cardinality_map_2, simple_name, collection_utils_1_expr4, name, range(collection_utils_1, 3108, 17, 75, 75), 'getCardinalityMap').
name(p_b_2, simple_name, collection_utils_1_expr4, (arguments, 0), range(collection_utils_1, 3126, 1, 75, 75), 'b').
name(t_math_2, simple_name, collection_utils_1_expr5, expression, range(collection_utils_1, 3658, 4, 93, 93), 'Math').
name(m_min_5, simple_name, collection_utils_1_expr5, name, range(collection_utils_1, 3663, 3, 93, 93), 'min').
name(m_freq_a_6, simple_name, collection_utils_1_expr6, name, range(collection_utils_1, 3667, 5, 93, 93), 'freqA').
name(p_obj_6, simple_name, collection_utils_1_expr6, (arguments, 0), range(collection_utils_1, 3673, 3, 93, 93), 'obj').
name(m_freq_b_7, simple_name, collection_utils_1_expr7, name, range(collection_utils_1, 3679, 5, 93, 93), 'freqB').
name(p_obj_6, simple_name, collection_utils_1_expr7, (arguments, 0), range(collection_utils_1, 3685, 3, 93, 93), 'obj').
name(m_get_freq_8, simple_name, collection_utils_1_expr8, name, range(collection_utils_1, 3953, 7, 102, 102), 'getFreq').
name(p_obj_7, simple_name, collection_utils_1_expr8, (arguments, 0), range(collection_utils_1, 3961, 3, 102, 102), 'obj').
name(f_cardinality_a_3, simple_name, collection_utils_1_expr8, (arguments, 1), range(collection_utils_1, 3966, 12, 102, 102), 'cardinalityA').
name(m_get_freq_8, simple_name, collection_utils_1_expr9, name, range(collection_utils_1, 4242, 7, 111, 111), 'getFreq').
name(p_obj_8, simple_name, collection_utils_1_expr9, (arguments, 0), range(collection_utils_1, 4250, 3, 111, 111), 'obj').
name(f_cardinality_b_4, simple_name, collection_utils_1_expr9, (arguments, 1), range(collection_utils_1, 4255, 12, 111, 111), 'cardinalityB').
name(v_count_11, simple_name, collection_utils_1_code26, name, range(collection_utils_1, 4386, 5, 115, 115), 'count').
name(p_freq_map_10, simple_name, collection_utils_1_expr10, expression, range(collection_utils_1, 4394, 7, 115, 115), 'freqMap').
name(m_get_9, simple_name, collection_utils_1_expr10, name, range(collection_utils_1, 4402, 3, 115, 115), 'get').
name(p_obj_9, simple_name, collection_utils_1_expr10, (arguments, 0), range(collection_utils_1, 4406, 3, 115, 115), 'obj').
name(v_count_11, simple_name, collection_utils_1_expr11, left_operand, range(collection_utils_1, 4428, 5, 116, 116), 'count').
name(v_count_11, simple_name, collection_utils_1_expr12, expression, range(collection_utils_1, 4468, 5, 117, 117), 'count').
name(m_int_value_10, simple_name, collection_utils_1_expr12, name, range(collection_utils_1, 4474, 8, 117, 117), 'intValue').
name(p_a_12, simple_name, collection_utils_1_stmt10, (arguments, 0), range(collection_utils_1, 5277, 1, 141, 141), 'a').
name(p_b_13, simple_name, collection_utils_1_stmt10, (arguments, 1), range(collection_utils_1, 5280, 1, 141, 141), 'b').
name(f_elements_14, simple_name, collection_utils_1_expr14, left_hand_side, range(collection_utils_1, 5296, 8, 142, 142), 'elements').
name(m_add_all_13, simple_name, collection_utils_1_expr16, name, range(collection_utils_1, 5336, 6, 143, 143), 'addAll').
name(f_elements_14, simple_name, collection_utils_1_expr16, (arguments, 0), range(collection_utils_1, 5343, 8, 143, 143), 'elements').
name(p_a_12, simple_name, collection_utils_1_expr16, (arguments, 1), range(collection_utils_1, 5353, 1, 143, 143), 'a').
name(m_add_all_13, simple_name, collection_utils_1_expr17, name, range(collection_utils_1, 5369, 6, 144, 144), 'addAll').
name(f_elements_14, simple_name, collection_utils_1_expr17, (arguments, 0), range(collection_utils_1, 5376, 8, 144, 144), 'elements').
name(p_b_13, simple_name, collection_utils_1_expr17, (arguments, 1), range(collection_utils_1, 5386, 1, 144, 144), 'b').
name(f_new_list_15, simple_name, collection_utils_1_expr18, left_hand_side, range(collection_utils_1, 5492, 7, 146, 146), 'newList').
name(f_elements_14, simple_name, collection_utils_1_expr20, expression, range(collection_utils_1, 5518, 8, 146, 146), 'elements').
name(m_size_15, simple_name, collection_utils_1_expr20, name, range(collection_utils_1, 5527, 4, 146, 146), 'size').
name(f_elements_14, simple_name, collection_utils_1_expr21, expression, range(collection_utils_1, 5624, 8, 151, 151), 'elements').
name(m_iterator_17, simple_name, collection_utils_1_expr21, name, range(collection_utils_1, 5633, 8, 151, 151), 'iterator').
name(v_i_18, simple_name, collection_utils_1_code36, name, range(collection_utils_1, 5916, 1, 160, 160), 'i').
name(v_i_18, simple_name, collection_utils_1_expr23, left_operand, range(collection_utils_1, 5923, 1, 160, 160), 'i').
name(p_count_17, simple_name, collection_utils_1_expr23, right_operand, range(collection_utils_1, 5927, 5, 160, 160), 'count').
name(v_i_18, simple_name, collection_utils_1_expr24, operand, range(collection_utils_1, 5934, 1, 160, 160), 'i').
name(f_new_list_15, simple_name, collection_utils_1_stmt17, expression, range(collection_utils_1, 6156, 7, 170, 170), 'newList').
name(f_empty_collection_19, simple_name, collection_utils_1_code43, name, range(collection_utils_1, 6579, 16, 182, 182), 'EMPTY_COLLECTION').
name(t_collections_3, simple_name, collection_utils_1_expr25, expression, range(collection_utils_1, 6598, 11, 182, 182), 'Collections').
name(m_empty_list_20, simple_name, collection_utils_1_expr25, name, range(collection_utils_1, 6610, 9, 182, 182), 'emptyList').
name(v_helper_25, simple_name, collection_utils_1_code49, name, range(collection_utils_1, 9454, 6, 254, 254), 'helper').
name(p_a_23, simple_name, collection_utils_1_expr26, (arguments, 0), range(collection_utils_1, 9499, 1, 254, 254), 'a').
name(p_b_24, simple_name, collection_utils_1_expr26, (arguments, 1), range(collection_utils_1, 9502, 1, 254, 254), 'b').
name(v_obj_26, simple_name, collection_utils_1_code52, name, range(collection_utils_1, 9527, 3, 255, 255), 'obj').
name(v_helper_25, simple_name, collection_utils_1_stmt19, expression, range(collection_utils_1, 9533, 6, 255, 255), 'helper').
name(v_helper_25, simple_name, collection_utils_1_expr27, expression, range(collection_utils_1, 9555, 6, 256, 256), 'helper').
name(m_set_cardinality_18, simple_name, collection_utils_1_expr27, name, range(collection_utils_1, 9562, 14, 256, 256), 'setCardinality').
name(v_obj_26, simple_name, collection_utils_1_expr27, (arguments, 0), range(collection_utils_1, 9577, 3, 256, 256), 'obj').
name(v_helper_25, simple_name, collection_utils_1_expr28, expression, range(collection_utils_1, 9582, 6, 256, 256), 'helper').
name(m_min_4, simple_name, collection_utils_1_expr28, name, range(collection_utils_1, 9589, 3, 256, 256), 'min').
name(v_obj_26, simple_name, collection_utils_1_expr28, (arguments, 0), range(collection_utils_1, 9593, 3, 256, 256), 'obj').
name(v_helper_25, simple_name, collection_utils_1_expr29, expression, range(collection_utils_1, 9625, 6, 258, 258), 'helper').
name(m_list_19, simple_name, collection_utils_1_expr29, name, range(collection_utils_1, 9632, 4, 258, 258), 'list').
name(v_count_41, simple_name, collection_utils_1_code61, name, range(collection_utils_1, 18718, 5, 468, 468), 'count').
name(v_obj_42, simple_name, collection_utils_1_code64, name, range(collection_utils_1, 18764, 3, 469, 469), 'obj').
name(p_coll_40, simple_name, collection_utils_1_stmt23, expression, range(collection_utils_1, 18770, 4, 469, 469), 'coll').
name(v_c_43, simple_name, collection_utils_1_code69, name, range(collection_utils_1, 18804, 1, 470, 470), 'c').
name(v_count_41, simple_name, collection_utils_1_expr31, expression, range(collection_utils_1, 18808, 5, 470, 470), 'count').
name(m_get_9, simple_name, collection_utils_1_expr31, name, range(collection_utils_1, 18814, 3, 470, 470), 'get').
name(v_obj_42, simple_name, collection_utils_1_expr31, (arguments, 0), range(collection_utils_1, 18818, 3, 470, 470), 'obj').
name(v_c_43, simple_name, collection_utils_1_expr32, left_operand, range(collection_utils_1, 18840, 1, 471, 471), 'c').
name(v_count_41, simple_name, collection_utils_1_expr33, expression, range(collection_utils_1, 18869, 5, 472, 472), 'count').
name(m_put_33, simple_name, collection_utils_1_expr33, name, range(collection_utils_1, 18875, 3, 472, 472), 'put').
name(v_obj_42, simple_name, collection_utils_1_expr33, (arguments, 0), range(collection_utils_1, 18879, 3, 472, 472), 'obj').
name(t_integer_4, simple_name, collection_utils_1_expr34, expression, range(collection_utils_1, 18884, 7, 472, 472), 'Integer').
name(m_value_of_34, simple_name, collection_utils_1_expr34, name, range(collection_utils_1, 18892, 7, 472, 472), 'valueOf').
name(v_count_41, simple_name, collection_utils_1_stmt27, expression, range(collection_utils_1, 19032, 5, 477, 477), 'count').
name(p_iterable_108, simple_name, collection_utils_1_expr35, left_operand, range(collection_utils_1, 48796, 8, 1140, 1140), 'iterable').
name(p_collection_107, simple_name, collection_utils_1_expr36, expression, range(collection_utils_1, 48852, 10, 1141, 1141), 'collection').
name(m_add_all_66, simple_name, collection_utils_1_expr36, name, range(collection_utils_1, 48863, 6, 1141, 1141), 'addAll').
name(p_iterable_108, simple_name, collection_utils_1_expr37, expression, range(collection_utils_1, 48896, 8, 1141, 1141), 'iterable').

%%% Literals
%composite_map_1 - org.apache.commons.collections4.map.CompositeMap
literal(composite_map_1_literal1, null_literal, composite_map_1_stmt1, (arguments, 1), range(composite_map_1, 2867, 4, 74, 74), null).
literal(composite_map_1_literal2, number_literal, composite_map_1_expr9, (dimensions, 0), range(composite_map_1, 4209, 1, 110, 110), 0).
literal(composite_map_1_literal3, number_literal, composite_map_1_expr12, right_operand, range(composite_map_1, 4253, 1, 111, 111), 1).
literal(composite_map_1_literal4, number_literal, composite_map_1_expr13, right_operand, range(composite_map_1, 4261, 1, 111, 111), 0).
literal(composite_map_1_literal5, number_literal, composite_map_1_expr19, right_operand, range(composite_map_1, 5100, 1, 135, 135), 1).
literal(composite_map_1_literal6, number_literal, composite_map_1_expr20, right_operand, range(composite_map_1, 5108, 1, 135, 135), 0).
literal(composite_map_1_literal7, number_literal, composite_map_1_expr28, right_operand, range(composite_map_1, 5270, 1, 137, 137), 0).
literal(composite_map_1_literal8, number_literal, composite_map_1_expr31, right_operand, range(composite_map_1, 5614, 1, 144, 144), 1).
literal(composite_map_1_literal9, number_literal, composite_map_1_expr35, (arguments, 1), range(composite_map_1, 5659, 1, 145, 145), 0).
literal(composite_map_1_literal10, number_literal, composite_map_1_expr35, (arguments, 3), range(composite_map_1, 5668, 1, 145, 145), 0).
literal(composite_map_1_literal11, number_literal, composite_map_1_expr43, right_operand, range(composite_map_1, 5722, 1, 146, 146), 1).
%composite_map_test_1 - org.apache.commons.collections4.map.CompositeMapTest
literal(composite_map_test_1_literal1, boolean_literal, composite_map_test_1_code6, initializer, range(composite_map_test_1, 1200, 5, 31, 31), false).
literal(composite_map_test_1_literal2, boolean_literal, composite_map_test_1_expr3, right_hand_side, range(composite_map_test_1, 1393, 5, 40, 40), false).
literal(composite_map_test_1_literal3, string_literal, composite_map_test_1_expr8, expression, range(composite_map_test_1, 1798, 3, 54, 54), "1").
literal(composite_map_test_1_literal4, string_literal, composite_map_test_1_expr9, expression, range(composite_map_test_1, 1807, 5, 54, 54), "one").
literal(composite_map_test_1_literal5, string_literal, composite_map_test_1_expr11, expression, range(composite_map_test_1, 1835, 3, 55, 55), "2").
literal(composite_map_test_1_literal6, string_literal, composite_map_test_1_expr12, expression, range(composite_map_test_1, 1844, 5, 55, 55), "two").
literal(composite_map_test_1_literal7, string_literal, composite_map_test_1_expr15, expression, range(composite_map_test_1, 2019, 3, 62, 62), "3").
literal(composite_map_test_1_literal8, string_literal, composite_map_test_1_expr16, expression, range(composite_map_test_1, 2028, 7, 62, 62), "three").
literal(composite_map_test_1_literal9, string_literal, composite_map_test_1_expr18, expression, range(composite_map_test_1, 2058, 3, 63, 63), "4").
literal(composite_map_test_1_literal10, string_literal, composite_map_test_1_expr19, expression, range(composite_map_test_1, 2067, 6, 63, 63), "four").
literal(composite_map_test_1_literal11, string_literal, composite_map_test_1_expr25, expression, range(composite_map_test_1, 2539, 3, 77, 77), "5").
literal(composite_map_test_1_literal12, string_literal, composite_map_test_1_expr26, expression, range(composite_map_test_1, 2548, 6, 77, 77), "five").
literal(composite_map_test_1_literal13, null_literal, composite_map_test_1_expr27, (arguments, 0), range(composite_map_test_1, 2583, 4, 78, 78), null).
literal(composite_map_test_1_literal14, string_literal, composite_map_test_1_expr33, expression, range(composite_map_test_1, 3104, 3, 93, 93), "5").
literal(composite_map_test_1_literal15, string_literal, composite_map_test_1_expr34, expression, range(composite_map_test_1, 3113, 6, 93, 93), "five").
literal(composite_map_test_1_literal16, null_literal, composite_map_test_1_expr35, (arguments, 0), range(composite_map_test_1, 3148, 4, 94, 94), null).
literal(composite_map_test_1_literal17, string_literal, composite_map_test_1_expr41, expression, range(composite_map_test_1, 3644, 3, 110, 110), "5").
literal(composite_map_test_1_literal18, string_literal, composite_map_test_1_expr42, expression, range(composite_map_test_1, 3653, 6, 110, 110), "five").
literal(composite_map_test_1_literal19, null_literal, composite_map_test_1_expr43, (arguments, 0), range(composite_map_test_1, 3688, 4, 111, 111), null).
literal(composite_map_test_1_literal20, string_literal, composite_map_test_1_expr49, expression, range(composite_map_test_1, 4112, 3, 124, 124), "5").
literal(composite_map_test_1_literal21, string_literal, composite_map_test_1_expr50, expression, range(composite_map_test_1, 4121, 6, 124, 124), "five").
literal(composite_map_test_1_literal22, null_literal, composite_map_test_1_expr51, (arguments, 0), range(composite_map_test_1, 4156, 4, 125, 125), null).
%abstract_iterable_map_1 - org.apache.commons.collections4.map.AbstractIterableMap
%collection_utils_1 - org.apache.commons.collections4.CollectionUtils
literal(collection_utils_1_literal1, null_literal, collection_utils_1_expr11, right_operand, range(collection_utils_1, 4437, 4, 116, 116), null).
literal(collection_utils_1_literal2, number_literal, collection_utils_1_stmt9, expression, range(collection_utils_1, 4519, 1, 119, 119), 0).
literal(collection_utils_1_literal3, number_literal, collection_utils_1_code36, initializer, range(collection_utils_1, 5920, 1, 160, 160), 0).
literal(collection_utils_1_literal4, null_literal, collection_utils_1_expr32, right_operand, range(collection_utils_1, 18845, 4, 471, 471), null).
literal(collection_utils_1_literal5, number_literal, collection_utils_1_expr34, (arguments, 0), range(collection_utils_1, 18900, 1, 472, 472), 1).

%%% Other Code Entities
%composite_map_1 - org.apache.commons.collections4.map.CompositeMap
code(composite_map_1_code1, compilation_unit, range(composite_map_1, 0, 23707, 1, -1)).
code(composite_map_1_code2, type_declaration, composite_map_1_code1, (types, 0), range(composite_map_1, 1138, 22568, 29, 564)).
code(composite_map_1_code3, method_declaration, composite_map_1_code2, (body_declarations, 4), range(composite_map_1, 2471, 408, 65, 75)).
code(composite_map_1_code4, array_type, composite_map_1_expr2, type, range(composite_map_1, 2847, 5, 74, 74)).
code(composite_map_1_code5, simple_type, composite_map_1_code4, element_type, range(composite_map_1, 2847, 3, 74, 74)).
code(composite_map_1_code6, dimension, composite_map_1_code4, (dimensions, 0), range(composite_map_1, 2850, 2, 74, 74)).
code(composite_map_1_code7, method_declaration, composite_map_1_code2, (body_declarations, 7), range(composite_map_1, 3729, 603, 100, 114)).
code(composite_map_1_code8, modifier, composite_map_1_code7, (modifiers, 1), range(composite_map_1, 4061, 6, 108, 108)).
code(composite_map_1_code10, modifier, composite_map_1_code9, (modifiers, 0), range(composite_map_1, 4081, 5, 108, 108)).
code(composite_map_1_code9, single_variable_declaration, composite_map_1_code7, (parameters, 0), range(composite_map_1, 4081, 27, 108, 108)).
code(composite_map_1_code11, array_type, composite_map_1_code9, type, range(composite_map_1, 4087, 11, 108, 108)).
code(composite_map_1_code12, parameterized_type, composite_map_1_code11, element_type, range(composite_map_1, 4087, 9, 108, 108)).
code(composite_map_1_code13, simple_type, composite_map_1_code12, type, range(composite_map_1, 4087, 3, 108, 108)).
code(composite_map_1_code14, simple_type, composite_map_1_code12, (type_arguments, 0), range(composite_map_1, 4091, 1, 108, 108)).
code(composite_map_1_code15, simple_type, composite_map_1_code12, (type_arguments, 1), range(composite_map_1, 4094, 1, 108, 108)).
code(composite_map_1_code16, dimension, composite_map_1_code11, (dimensions, 0), range(composite_map_1, 4096, 2, 108, 108)).
code(composite_map_1_code17, single_variable_declaration, composite_map_1_code7, (parameters, 1), range(composite_map_1, 4110, 30, 108, 108)).
code(composite_map_1_code18, modifier, composite_map_1_code17, (modifiers, 0), range(composite_map_1, 4110, 5, 108, 108)).
code(composite_map_1_code20, simple_type, composite_map_1_code19, type, range(composite_map_1, 4116, 10, 108, 108)).
code(composite_map_1_code19, parameterized_type, composite_map_1_code17, type, range(composite_map_1, 4116, 16, 108, 108)).
code(composite_map_1_code21, simple_type, composite_map_1_code19, (type_arguments, 0), range(composite_map_1, 4127, 1, 108, 108)).
code(composite_map_1_code22, simple_type, composite_map_1_code19, (type_arguments, 1), range(composite_map_1, 4130, 1, 108, 108)).
code(composite_map_1_code23, array_type, composite_map_1_expr9, type, range(composite_map_1, 4205, 6, 110, 110)).
code(composite_map_1_code24, simple_type, composite_map_1_code23, element_type, range(composite_map_1, 4205, 3, 110, 110)).
code(composite_map_1_code25, dimension, composite_map_1_code23, (dimensions, 0), range(composite_map_1, 4208, 3, 110, 110)).
code(composite_map_1_code26, primitive_type, composite_map_1_expr11, type, range(composite_map_1, 4226, 3, 111, 111)).
code(composite_map_1_code27, variable_declaration_fragment, composite_map_1_expr11, (fragments, 0), range(composite_map_1, 4230, 24, 111, 111)).
code(composite_map_1_code28, method_declaration, composite_map_1_code2, (body_declarations, 9), range(composite_map_1, 4677, 1091, 126, 148)).
code(composite_map_1_code29, primitive_type, composite_map_1_expr18, type, range(composite_map_1, 5073, 3, 135, 135)).
code(composite_map_1_code30, variable_declaration_fragment, composite_map_1_expr18, (fragments, 0), range(composite_map_1, 5077, 24, 135, 135)).
code(composite_map_1_code31, modifier, composite_map_1_stmt7, (modifiers, 0), range(composite_map_1, 5130, 5, 136, 136)).
code(composite_map_1_code32, parameterized_type, composite_map_1_stmt7, type, range(composite_map_1, 5136, 13, 136, 136)).
code(composite_map_1_code33, simple_type, composite_map_1_code32, type, range(composite_map_1, 5136, 10, 136, 136)).
code(composite_map_1_code34, simple_type, composite_map_1_code32, (type_arguments, 0), range(composite_map_1, 5147, 1, 136, 136)).
code(composite_map_1_code35, variable_declaration_fragment, composite_map_1_stmt7, (fragments, 0), range(composite_map_1, 5150, 82, 136, 136)).
code(composite_map_1_code36, modifier, composite_map_1_stmt9, (modifiers, 0), range(composite_map_1, 5557, 5, 144, 144)).
code(composite_map_1_code37, array_type, composite_map_1_stmt9, type, range(composite_map_1, 5563, 11, 144, 144)).
code(composite_map_1_code39, simple_type, composite_map_1_code38, type, range(composite_map_1, 5563, 3, 144, 144)).
code(composite_map_1_code38, parameterized_type, composite_map_1_code37, element_type, range(composite_map_1, 5563, 9, 144, 144)).
code(composite_map_1_code40, simple_type, composite_map_1_code38, (type_arguments, 0), range(composite_map_1, 5567, 1, 144, 144)).
code(composite_map_1_code41, simple_type, composite_map_1_code38, (type_arguments, 1), range(composite_map_1, 5570, 1, 144, 144)).
code(composite_map_1_code42, dimension, composite_map_1_code37, (dimensions, 0), range(composite_map_1, 5572, 2, 144, 144)).
code(composite_map_1_code43, variable_declaration_fragment, composite_map_1_stmt9, (fragments, 0), range(composite_map_1, 5575, 41, 144, 144)).
code(composite_map_1_code44, array_type, composite_map_1_expr30, type, range(composite_map_1, 5586, 30, 144, 144)).
code(composite_map_1_code45, simple_type, composite_map_1_code44, element_type, range(composite_map_1, 5586, 3, 144, 144)).
code(composite_map_1_code46, dimension, composite_map_1_code44, (dimensions, 0), range(composite_map_1, 5589, 27, 144, 144)).
%composite_map_test_1 - org.apache.commons.collections4.map.CompositeMapTest
code(composite_map_test_1_code1, compilation_unit, range(composite_map_test_1, 0, 7950, 1, -1)).
code(composite_map_test_1_code2, type_declaration, composite_map_test_1_code1, (types, 0), range(composite_map_test_1, 927, 7022, 23, 233)).
code(composite_map_test_1_code3, field_declaration, composite_map_test_1_code2, (body_declarations, 0), range(composite_map_test_1, 1131, 75, 30, 31)).
code(composite_map_test_1_code4, modifier, composite_map_test_1_code3, (modifiers, 0), range(composite_map_test_1, 1177, 7, 31, 31)).
code(composite_map_test_1_code5, primitive_type, composite_map_test_1_code3, type, range(composite_map_test_1, 1185, 7, 31, 31)).
code(composite_map_test_1_code6, variable_declaration_fragment, composite_map_test_1_code3, (fragments, 0), range(composite_map_test_1, 1193, 12, 31, 31)).
code(composite_map_test_1_code7, method_declaration, composite_map_test_1_code2, (body_declarations, 1), range(composite_map_test_1, 1212, 79, 33, 35)).
code(composite_map_test_1_code8, method_declaration, composite_map_test_1_code2, (body_declarations, 2), range(composite_map_test_1, 1297, 108, 37, 41)).
code(composite_map_test_1_code9, method_declaration, composite_map_test_1_code2, (body_declarations, 4), range(composite_map_test_1, 1661, 216, 51, 57)).
code(composite_map_test_1_code10, modifier, composite_map_test_1_stmt4, (modifiers, 0), range(composite_map_test_1, 1735, 5, 53, 53)).
code(composite_map_test_1_code12, simple_type, composite_map_test_1_code11, type, range(composite_map_test_1, 1741, 7, 53, 53)).
code(composite_map_test_1_code11, parameterized_type, composite_map_test_1_stmt4, type, range(composite_map_test_1, 1741, 13, 53, 53)).
code(composite_map_test_1_code13, simple_type, composite_map_test_1_code11, (type_arguments, 0), range(composite_map_test_1, 1749, 1, 53, 53)).
code(composite_map_test_1_code14, simple_type, composite_map_test_1_code11, (type_arguments, 1), range(composite_map_test_1, 1752, 1, 53, 53)).
code(composite_map_test_1_code15, variable_declaration_fragment, composite_map_test_1_stmt4, (fragments, 0), range(composite_map_test_1, 1755, 21, 53, 53)).
code(composite_map_test_1_code17, simple_type, composite_map_test_1_code16, type, range(composite_map_test_1, 1765, 7, 53, 53)).
code(composite_map_test_1_code16, parameterized_type, composite_map_test_1_expr6, type, range(composite_map_test_1, 1765, 9, 53, 53)).
code(composite_map_test_1_code18, simple_type, composite_map_test_1_expr8, type, range(composite_map_test_1, 1795, 1, 54, 54)).
code(composite_map_test_1_code19, simple_type, composite_map_test_1_expr9, type, range(composite_map_test_1, 1804, 1, 54, 54)).
code(composite_map_test_1_code20, simple_type, composite_map_test_1_expr11, type, range(composite_map_test_1, 1832, 1, 55, 55)).
code(composite_map_test_1_code21, simple_type, composite_map_test_1_expr12, type, range(composite_map_test_1, 1841, 1, 55, 55)).
code(composite_map_test_1_code22, method_declaration, composite_map_test_1_code2, (body_declarations, 5), range(composite_map_test_1, 1883, 218, 59, 65)).
code(composite_map_test_1_code23, modifier, composite_map_test_1_stmt8, (modifiers, 0), range(composite_map_test_1, 1956, 5, 61, 61)).
code(composite_map_test_1_code25, simple_type, composite_map_test_1_code24, type, range(composite_map_test_1, 1962, 7, 61, 61)).
code(composite_map_test_1_code24, parameterized_type, composite_map_test_1_stmt8, type, range(composite_map_test_1, 1962, 13, 61, 61)).
code(composite_map_test_1_code26, simple_type, composite_map_test_1_code24, (type_arguments, 0), range(composite_map_test_1, 1970, 1, 61, 61)).
code(composite_map_test_1_code27, simple_type, composite_map_test_1_code24, (type_arguments, 1), range(composite_map_test_1, 1973, 1, 61, 61)).
code(composite_map_test_1_code28, variable_declaration_fragment, composite_map_test_1_stmt8, (fragments, 0), range(composite_map_test_1, 1976, 21, 61, 61)).
code(composite_map_test_1_code30, simple_type, composite_map_test_1_code29, type, range(composite_map_test_1, 1986, 7, 61, 61)).
code(composite_map_test_1_code29, parameterized_type, composite_map_test_1_expr13, type, range(composite_map_test_1, 1986, 9, 61, 61)).
code(composite_map_test_1_code31, simple_type, composite_map_test_1_expr15, type, range(composite_map_test_1, 2016, 1, 62, 62)).
code(composite_map_test_1_code32, simple_type, composite_map_test_1_expr16, type, range(composite_map_test_1, 2025, 1, 62, 62)).
code(composite_map_test_1_code33, simple_type, composite_map_test_1_expr18, type, range(composite_map_test_1, 2055, 1, 63, 63)).
code(composite_map_test_1_code34, simple_type, composite_map_test_1_expr19, type, range(composite_map_test_1, 2064, 1, 63, 63)).
code(composite_map_test_1_code35, method_declaration, composite_map_test_1_code2, (body_declarations, 7), range(composite_map_test_1, 2312, 556, 73, 87)).
code(composite_map_test_1_code36, modifier, composite_map_test_1_stmt12, (modifiers, 0), range(composite_map_test_1, 2389, 5, 75, 75)).
code(composite_map_test_1_code38, simple_type, composite_map_test_1_code37, type, range(composite_map_test_1, 2395, 12, 75, 75)).
code(composite_map_test_1_code37, parameterized_type, composite_map_test_1_stmt12, type, range(composite_map_test_1, 2395, 18, 75, 75)).
code(composite_map_test_1_code39, simple_type, composite_map_test_1_code37, (type_arguments, 0), range(composite_map_test_1, 2408, 1, 75, 75)).
code(composite_map_test_1_code40, simple_type, composite_map_test_1_code37, (type_arguments, 1), range(composite_map_test_1, 2411, 1, 75, 75)).
code(composite_map_test_1_code41, variable_declaration_fragment, composite_map_test_1_stmt12, (fragments, 0), range(composite_map_test_1, 2414, 48, 75, 75)).
code(composite_map_test_1_code43, simple_type, composite_map_test_1_code42, type, range(composite_map_test_1, 2424, 12, 75, 75)).
code(composite_map_test_1_code42, parameterized_type, composite_map_test_1_expr20, type, range(composite_map_test_1, 2424, 14, 75, 75)).
code(composite_map_test_1_code44, modifier, composite_map_test_1_stmt13, (modifiers, 0), range(composite_map_test_1, 2472, 5, 76, 76)).
code(composite_map_test_1_code46, simple_type, composite_map_test_1_code45, type, range(composite_map_test_1, 2478, 7, 76, 76)).
code(composite_map_test_1_code45, parameterized_type, composite_map_test_1_stmt13, type, range(composite_map_test_1, 2478, 13, 76, 76)).
code(composite_map_test_1_code47, simple_type, composite_map_test_1_code45, (type_arguments, 0), range(composite_map_test_1, 2486, 1, 76, 76)).
code(composite_map_test_1_code48, simple_type, composite_map_test_1_code45, (type_arguments, 1), range(composite_map_test_1, 2489, 1, 76, 76)).
code(composite_map_test_1_code49, variable_declaration_fragment, composite_map_test_1_stmt13, (fragments, 0), range(composite_map_test_1, 2492, 23, 76, 76)).
code(composite_map_test_1_code50, parameterized_type, composite_map_test_1_expr23, type, range(composite_map_test_1, 2504, 9, 76, 76)).
code(composite_map_test_1_code51, simple_type, composite_map_test_1_code50, type, range(composite_map_test_1, 2504, 7, 76, 76)).
code(composite_map_test_1_code52, simple_type, composite_map_test_1_expr25, type, range(composite_map_test_1, 2536, 1, 77, 77)).
code(composite_map_test_1_code53, simple_type, composite_map_test_1_expr26, type, range(composite_map_test_1, 2545, 1, 77, 77)).
code(composite_map_test_1_code54, method_declaration, composite_map_test_1_code2, (body_declarations, 8), range(composite_map_test_1, 2874, 530, 89, 104)).
code(composite_map_test_1_code55, modifier, composite_map_test_1_stmt16, (modifiers, 0), range(composite_map_test_1, 2954, 5, 91, 91)).
code(composite_map_test_1_code56, parameterized_type, composite_map_test_1_stmt16, type, range(composite_map_test_1, 2960, 18, 91, 91)).
code(composite_map_test_1_code57, simple_type, composite_map_test_1_code56, type, range(composite_map_test_1, 2960, 12, 91, 91)).
code(composite_map_test_1_code58, simple_type, composite_map_test_1_code56, (type_arguments, 0), range(composite_map_test_1, 2973, 1, 91, 91)).
code(composite_map_test_1_code59, simple_type, composite_map_test_1_code56, (type_arguments, 1), range(composite_map_test_1, 2976, 1, 91, 91)).
code(composite_map_test_1_code60, variable_declaration_fragment, composite_map_test_1_stmt16, (fragments, 0), range(composite_map_test_1, 2979, 48, 91, 91)).
code(composite_map_test_1_code61, parameterized_type, composite_map_test_1_expr28, type, range(composite_map_test_1, 2989, 14, 91, 91)).
code(composite_map_test_1_code62, simple_type, composite_map_test_1_code61, type, range(composite_map_test_1, 2989, 12, 91, 91)).
code(composite_map_test_1_code63, modifier, composite_map_test_1_stmt17, (modifiers, 0), range(composite_map_test_1, 3037, 5, 92, 92)).
code(composite_map_test_1_code65, simple_type, composite_map_test_1_code64, type, range(composite_map_test_1, 3043, 7, 92, 92)).
code(composite_map_test_1_code64, parameterized_type, composite_map_test_1_stmt17, type, range(composite_map_test_1, 3043, 13, 92, 92)).
code(composite_map_test_1_code66, simple_type, composite_map_test_1_code64, (type_arguments, 0), range(composite_map_test_1, 3051, 1, 92, 92)).
code(composite_map_test_1_code67, simple_type, composite_map_test_1_code64, (type_arguments, 1), range(composite_map_test_1, 3054, 1, 92, 92)).
code(composite_map_test_1_code68, variable_declaration_fragment, composite_map_test_1_stmt17, (fragments, 0), range(composite_map_test_1, 3057, 23, 92, 92)).
code(composite_map_test_1_code70, simple_type, composite_map_test_1_code69, type, range(composite_map_test_1, 3069, 7, 92, 92)).
code(composite_map_test_1_code69, parameterized_type, composite_map_test_1_expr31, type, range(composite_map_test_1, 3069, 9, 92, 92)).
code(composite_map_test_1_code71, simple_type, composite_map_test_1_expr33, type, range(composite_map_test_1, 3101, 1, 93, 93)).
code(composite_map_test_1_code72, simple_type, composite_map_test_1_expr34, type, range(composite_map_test_1, 3110, 1, 93, 93)).
code(composite_map_test_1_code73, method_declaration, composite_map_test_1_code2, (body_declarations, 9), range(composite_map_test_1, 3410, 462, 106, 118)).
code(composite_map_test_1_code74, modifier, composite_map_test_1_stmt20, (modifiers, 0), range(composite_map_test_1, 3494, 5, 108, 108)).
code(composite_map_test_1_code76, simple_type, composite_map_test_1_code75, type, range(composite_map_test_1, 3500, 12, 108, 108)).
code(composite_map_test_1_code75, parameterized_type, composite_map_test_1_stmt20, type, range(composite_map_test_1, 3500, 18, 108, 108)).
code(composite_map_test_1_code77, simple_type, composite_map_test_1_code75, (type_arguments, 0), range(composite_map_test_1, 3513, 1, 108, 108)).
code(composite_map_test_1_code78, simple_type, composite_map_test_1_code75, (type_arguments, 1), range(composite_map_test_1, 3516, 1, 108, 108)).
code(composite_map_test_1_code79, variable_declaration_fragment, composite_map_test_1_stmt20, (fragments, 0), range(composite_map_test_1, 3519, 48, 108, 108)).
code(composite_map_test_1_code80, parameterized_type, composite_map_test_1_expr36, type, range(composite_map_test_1, 3529, 14, 108, 108)).
code(composite_map_test_1_code81, simple_type, composite_map_test_1_code80, type, range(composite_map_test_1, 3529, 12, 108, 108)).
code(composite_map_test_1_code82, modifier, composite_map_test_1_stmt21, (modifiers, 0), range(composite_map_test_1, 3577, 5, 109, 109)).
code(composite_map_test_1_code84, simple_type, composite_map_test_1_code83, type, range(composite_map_test_1, 3583, 7, 109, 109)).
code(composite_map_test_1_code83, parameterized_type, composite_map_test_1_stmt21, type, range(composite_map_test_1, 3583, 13, 109, 109)).
code(composite_map_test_1_code85, simple_type, composite_map_test_1_code83, (type_arguments, 0), range(composite_map_test_1, 3591, 1, 109, 109)).
code(composite_map_test_1_code86, simple_type, composite_map_test_1_code83, (type_arguments, 1), range(composite_map_test_1, 3594, 1, 109, 109)).
code(composite_map_test_1_code87, variable_declaration_fragment, composite_map_test_1_stmt21, (fragments, 0), range(composite_map_test_1, 3597, 23, 109, 109)).
code(composite_map_test_1_code88, parameterized_type, composite_map_test_1_expr39, type, range(composite_map_test_1, 3609, 9, 109, 109)).
code(composite_map_test_1_code89, simple_type, composite_map_test_1_code88, type, range(composite_map_test_1, 3609, 7, 109, 109)).
code(composite_map_test_1_code90, simple_type, composite_map_test_1_expr41, type, range(composite_map_test_1, 3641, 1, 110, 110)).
code(composite_map_test_1_code91, simple_type, composite_map_test_1_expr42, type, range(composite_map_test_1, 3650, 1, 110, 110)).
code(composite_map_test_1_code92, method_declaration, composite_map_test_1_code2, (body_declarations, 10), range(composite_map_test_1, 3878, 462, 120, 132)).
code(composite_map_test_1_code93, modifier, composite_map_test_1_stmt24, (modifiers, 0), range(composite_map_test_1, 3962, 5, 122, 122)).
code(composite_map_test_1_code94, parameterized_type, composite_map_test_1_stmt24, type, range(composite_map_test_1, 3968, 18, 122, 122)).
code(composite_map_test_1_code95, simple_type, composite_map_test_1_code94, type, range(composite_map_test_1, 3968, 12, 122, 122)).
code(composite_map_test_1_code96, simple_type, composite_map_test_1_code94, (type_arguments, 0), range(composite_map_test_1, 3981, 1, 122, 122)).
code(composite_map_test_1_code97, simple_type, composite_map_test_1_code94, (type_arguments, 1), range(composite_map_test_1, 3984, 1, 122, 122)).
code(composite_map_test_1_code98, variable_declaration_fragment, composite_map_test_1_stmt24, (fragments, 0), range(composite_map_test_1, 3987, 48, 122, 122)).
code(composite_map_test_1_code100, simple_type, composite_map_test_1_code99, type, range(composite_map_test_1, 3997, 12, 122, 122)).
code(composite_map_test_1_code99, parameterized_type, composite_map_test_1_expr44, type, range(composite_map_test_1, 3997, 14, 122, 122)).
code(composite_map_test_1_code101, modifier, composite_map_test_1_stmt25, (modifiers, 0), range(composite_map_test_1, 4045, 5, 123, 123)).
code(composite_map_test_1_code102, parameterized_type, composite_map_test_1_stmt25, type, range(composite_map_test_1, 4051, 13, 123, 123)).
code(composite_map_test_1_code103, simple_type, composite_map_test_1_code102, type, range(composite_map_test_1, 4051, 7, 123, 123)).
code(composite_map_test_1_code104, simple_type, composite_map_test_1_code102, (type_arguments, 0), range(composite_map_test_1, 4059, 1, 123, 123)).
code(composite_map_test_1_code105, simple_type, composite_map_test_1_code102, (type_arguments, 1), range(composite_map_test_1, 4062, 1, 123, 123)).
code(composite_map_test_1_code106, variable_declaration_fragment, composite_map_test_1_stmt25, (fragments, 0), range(composite_map_test_1, 4065, 23, 123, 123)).
code(composite_map_test_1_code108, simple_type, composite_map_test_1_code107, type, range(composite_map_test_1, 4077, 7, 123, 123)).
code(composite_map_test_1_code107, parameterized_type, composite_map_test_1_expr47, type, range(composite_map_test_1, 4077, 9, 123, 123)).
code(composite_map_test_1_code109, simple_type, composite_map_test_1_expr49, type, range(composite_map_test_1, 4109, 1, 124, 124)).
code(composite_map_test_1_code110, simple_type, composite_map_test_1_expr50, type, range(composite_map_test_1, 4118, 1, 124, 124)).
%abstract_iterable_map_1 - org.apache.commons.collections4.map.AbstractIterableMap
code(abstract_iterable_map_1_code1, compilation_unit, range(abstract_iterable_map_1, 0, 1377, 1, -1)).
code(abstract_iterable_map_1_code2, type_declaration, abstract_iterable_map_1_code1, (types, 0), range(abstract_iterable_map_1, 954, 422, 22, 38)).
code(abstract_iterable_map_1_code3, modifier, abstract_iterable_map_1_code2, (modifiers, 0), range(abstract_iterable_map_1, 1130, 6, 29, 29)).
code(abstract_iterable_map_1_code4, modifier, abstract_iterable_map_1_code2, (modifiers, 1), range(abstract_iterable_map_1, 1137, 8, 29, 29)).
code(abstract_iterable_map_1_code5, type_parameter, abstract_iterable_map_1_code2, (type_parameters, 0), range(abstract_iterable_map_1, 1172, 1, 29, 29)).
code(abstract_iterable_map_1_code6, type_parameter, abstract_iterable_map_1_code2, (type_parameters, 1), range(abstract_iterable_map_1, 1175, 1, 29, 29)).
code(abstract_iterable_map_1_code8, simple_type, abstract_iterable_map_1_code7, type, range(abstract_iterable_map_1, 1189, 11, 29, 29)).
code(abstract_iterable_map_1_code7, parameterized_type, abstract_iterable_map_1_code2, (super_interface_types, 0), range(abstract_iterable_map_1, 1189, 17, 29, 29)).
code(abstract_iterable_map_1_code9, simple_type, abstract_iterable_map_1_code7, (type_arguments, 0), range(abstract_iterable_map_1, 1201, 1, 29, 29)).
code(abstract_iterable_map_1_code10, simple_type, abstract_iterable_map_1_code7, (type_arguments, 1), range(abstract_iterable_map_1, 1204, 1, 29, 29)).
%collection_utils_1 - org.apache.commons.collections4.CollectionUtils
code(collection_utils_1_code1, compilation_unit, range(collection_utils_1, 0, 84137, 1, -1)).
code(collection_utils_1_code2, type_declaration, collection_utils_1_code1, (types, 0), range(collection_utils_1, 1829, 82307, 43, 1916)).
code(collection_utils_1_code3, type_declaration, collection_utils_1_code2, (body_declarations, 0), range(collection_utils_1, 2312, 2225, 56, 121)).
code(collection_utils_1_code4, method_declaration, collection_utils_1_code3, (body_declarations, 2), range(collection_utils_1, 2733, 406, 68, 76)).
code(collection_utils_1_code5, modifier, collection_utils_1_code4, (modifiers, 0), range(collection_utils_1, 2905, 6, 73, 73)).
code(collection_utils_1_code7, modifier, collection_utils_1_code6, (modifiers, 0), range(collection_utils_1, 2930, 5, 73, 73)).
code(collection_utils_1_code6, single_variable_declaration, collection_utils_1_code4, (parameters, 0), range(collection_utils_1, 2930, 29, 73, 73)).
code(collection_utils_1_code8, parameterized_type, collection_utils_1_code6, type, range(collection_utils_1, 2936, 21, 73, 73)).
code(collection_utils_1_code9, simple_type, collection_utils_1_code8, type, range(collection_utils_1, 2936, 8, 73, 73)).
code(collection_utils_1_code10, wildcard_type, collection_utils_1_code8, (type_arguments, 0), range(collection_utils_1, 2945, 11, 73, 73)).
code(collection_utils_1_code11, simple_type, collection_utils_1_code10, bound, range(collection_utils_1, 2955, 1, 73, 73)).
code(collection_utils_1_code12, single_variable_declaration, collection_utils_1_code4, (parameters, 1), range(collection_utils_1, 2961, 29, 73, 73)).
code(collection_utils_1_code13, modifier, collection_utils_1_code12, (modifiers, 0), range(collection_utils_1, 2961, 5, 73, 73)).
code(collection_utils_1_code14, parameterized_type, collection_utils_1_code12, type, range(collection_utils_1, 2967, 21, 73, 73)).
code(collection_utils_1_code15, simple_type, collection_utils_1_code14, type, range(collection_utils_1, 2967, 8, 73, 73)).
code(collection_utils_1_code16, wildcard_type, collection_utils_1_code14, (type_arguments, 0), range(collection_utils_1, 2976, 11, 73, 73)).
code(collection_utils_1_code17, simple_type, collection_utils_1_code16, bound, range(collection_utils_1, 2986, 1, 73, 73)).
code(collection_utils_1_code18, simple_type, collection_utils_1_expr2, (type_arguments, 0), range(collection_utils_1, 3038, 1, 74, 74)).
code(collection_utils_1_code19, simple_type, collection_utils_1_expr4, (type_arguments, 0), range(collection_utils_1, 3106, 1, 75, 75)).
code(collection_utils_1_code20, method_declaration, collection_utils_1_code3, (body_declarations, 4), range(collection_utils_1, 3430, 271, 87, 94)).
code(collection_utils_1_code21, method_declaration, collection_utils_1_code3, (body_declarations, 5), range(collection_utils_1, 3711, 279, 96, 103)).
code(collection_utils_1_code22, method_declaration, collection_utils_1_code3, (body_declarations, 6), range(collection_utils_1, 4000, 279, 105, 112)).
code(collection_utils_1_code23, method_declaration, collection_utils_1_code3, (body_declarations, 7), range(collection_utils_1, 4289, 242, 114, 120)).
code(collection_utils_1_code24, modifier, collection_utils_1_stmt6, (modifiers, 0), range(collection_utils_1, 4372, 5, 115, 115)).
code(collection_utils_1_code25, simple_type, collection_utils_1_stmt6, type, range(collection_utils_1, 4378, 7, 115, 115)).
code(collection_utils_1_code26, variable_declaration_fragment, collection_utils_1_stmt6, (fragments, 0), range(collection_utils_1, 4386, 24, 115, 115)).
code(collection_utils_1_code27, type_declaration, collection_utils_1_code2, (body_declarations, 1), range(collection_utils_1, 4543, 1638, 123, 173)).
code(collection_utils_1_code28, method_declaration, collection_utils_1_code27, (body_declarations, 2), range(collection_utils_1, 4978, 567, 135, 147)).
code(collection_utils_1_code30, simple_type, collection_utils_1_code29, type, range(collection_utils_1, 5311, 7, 142, 142)).
code(collection_utils_1_code29, parameterized_type, collection_utils_1_expr15, type, range(collection_utils_1, 5311, 9, 142, 142)).
code(collection_utils_1_code31, parameterized_type, collection_utils_1_expr19, type, range(collection_utils_1, 5506, 11, 146, 146)).
code(collection_utils_1_code32, simple_type, collection_utils_1_code31, type, range(collection_utils_1, 5506, 9, 146, 146)).
code(collection_utils_1_code33, method_declaration, collection_utils_1_code27, (body_declarations, 3), range(collection_utils_1, 5555, 99, 149, 152)).
code(collection_utils_1_code34, method_declaration, collection_utils_1_code27, (body_declarations, 4), range(collection_utils_1, 5664, 334, 154, 163)).
code(collection_utils_1_code35, primitive_type, collection_utils_1_expr22, type, range(collection_utils_1, 5912, 3, 160, 160)).
code(collection_utils_1_code36, variable_declaration_fragment, collection_utils_1_expr22, (fragments, 0), range(collection_utils_1, 5916, 5, 160, 160)).
code(collection_utils_1_code37, method_declaration, collection_utils_1_code27, (body_declarations, 5), range(collection_utils_1, 6008, 166, 165, 171)).
code(collection_utils_1_code38, field_declaration, collection_utils_1_code2, (body_declarations, 2), range(collection_utils_1, 6187, 435, 175, 182)).
code(collection_utils_1_code39, modifier, collection_utils_1_code38, (modifiers, 1), range(collection_utils_1, 6548, 6, 182, 182)).
code(collection_utils_1_code40, modifier, collection_utils_1_code38, (modifiers, 2), range(collection_utils_1, 6555, 6, 182, 182)).
code(collection_utils_1_code41, modifier, collection_utils_1_code38, (modifiers, 3), range(collection_utils_1, 6562, 5, 182, 182)).
code(collection_utils_1_code42, simple_type, collection_utils_1_code38, type, range(collection_utils_1, 6568, 10, 182, 182)).
code(collection_utils_1_code43, variable_declaration_fragment, collection_utils_1_code38, (fragments, 0), range(collection_utils_1, 6579, 42, 182, 182)).
code(collection_utils_1_code44, method_declaration, collection_utils_1_code2, (body_declarations, 7), range(collection_utils_1, 8627, 1018, 237, 259)).
code(collection_utils_1_code45, modifier, collection_utils_1_stmt18, (modifiers, 0), range(collection_utils_1, 9415, 5, 254, 254)).
code(collection_utils_1_code46, parameterized_type, collection_utils_1_stmt18, type, range(collection_utils_1, 9421, 32, 254, 254)).
code(collection_utils_1_code47, simple_type, collection_utils_1_code46, type, range(collection_utils_1, 9421, 29, 254, 254)).
code(collection_utils_1_code48, simple_type, collection_utils_1_code46, (type_arguments, 0), range(collection_utils_1, 9451, 1, 254, 254)).
code(collection_utils_1_code49, variable_declaration_fragment, collection_utils_1_stmt18, (fragments, 0), range(collection_utils_1, 9454, 50, 254, 254)).
code(collection_utils_1_code50, parameterized_type, collection_utils_1_expr26, type, range(collection_utils_1, 9467, 31, 254, 254)).
code(collection_utils_1_code51, simple_type, collection_utils_1_code50, type, range(collection_utils_1, 9467, 29, 254, 254)).
code(collection_utils_1_code53, modifier, collection_utils_1_code52, (modifiers, 0), range(collection_utils_1, 9519, 5, 255, 255)).
code(collection_utils_1_code52, single_variable_declaration, collection_utils_1_stmt19, parameter, range(collection_utils_1, 9519, 11, 255, 255)).
code(collection_utils_1_code54, simple_type, collection_utils_1_code52, type, range(collection_utils_1, 9525, 1, 255, 255)).
code(collection_utils_1_code55, method_declaration, collection_utils_1_code2, (body_declarations, 14), range(collection_utils_1, 18036, 1008, 455, 478)).
code(collection_utils_1_code56, modifier, collection_utils_1_stmt22, (modifiers, 0), range(collection_utils_1, 18696, 5, 468, 468)).
code(collection_utils_1_code57, parameterized_type, collection_utils_1_stmt22, type, range(collection_utils_1, 18702, 15, 468, 468)).
code(collection_utils_1_code58, simple_type, collection_utils_1_code57, type, range(collection_utils_1, 18702, 3, 468, 468)).
code(collection_utils_1_code59, simple_type, collection_utils_1_code57, (type_arguments, 0), range(collection_utils_1, 18706, 1, 468, 468)).
code(collection_utils_1_code60, simple_type, collection_utils_1_code57, (type_arguments, 1), range(collection_utils_1, 18709, 7, 468, 468)).
code(collection_utils_1_code61, variable_declaration_fragment, collection_utils_1_stmt22, (fragments, 0), range(collection_utils_1, 18718, 23, 468, 468)).
code(collection_utils_1_code62, parameterized_type, collection_utils_1_expr30, type, range(collection_utils_1, 18730, 9, 468, 468)).
code(collection_utils_1_code63, simple_type, collection_utils_1_code62, type, range(collection_utils_1, 18730, 7, 468, 468)).
code(collection_utils_1_code64, single_variable_declaration, collection_utils_1_stmt23, parameter, range(collection_utils_1, 18756, 11, 469, 469)).
code(collection_utils_1_code65, modifier, collection_utils_1_code64, (modifiers, 0), range(collection_utils_1, 18756, 5, 469, 469)).
code(collection_utils_1_code66, simple_type, collection_utils_1_code64, type, range(collection_utils_1, 18762, 1, 469, 469)).
code(collection_utils_1_code67, modifier, collection_utils_1_stmt24, (modifiers, 0), range(collection_utils_1, 18790, 5, 470, 470)).
code(collection_utils_1_code68, simple_type, collection_utils_1_stmt24, type, range(collection_utils_1, 18796, 7, 470, 470)).
code(collection_utils_1_code69, variable_declaration_fragment, collection_utils_1_stmt24, (fragments, 0), range(collection_utils_1, 18804, 18, 470, 470)).
code(collection_utils_1_code70, method_declaration, collection_utils_1_code2, (body_declarations, 42), range(collection_utils_1, 48054, 924, 1128, 1144)).
code(collection_utils_1_code71, parameterized_type, collection_utils_1_expr35, right_operand, range(collection_utils_1, 48816, 13, 1140, 1140)).
code(collection_utils_1_code72, simple_type, collection_utils_1_code71, type, range(collection_utils_1, 48816, 10, 1140, 1140)).
code(collection_utils_1_code73, wildcard_type, collection_utils_1_code71, (type_arguments, 0), range(collection_utils_1, 48827, 1, 1140, 1140)).
code(collection_utils_1_code75, simple_type, collection_utils_1_code74, type, range(collection_utils_1, 48871, 10, 1141, 1141)).
code(collection_utils_1_code74, parameterized_type, collection_utils_1_expr37, type, range(collection_utils_1, 48871, 23, 1141, 1141)).
code(collection_utils_1_code76, wildcard_type, collection_utils_1_code74, (type_arguments, 0), range(collection_utils_1, 48882, 11, 1141, 1141)).
code(collection_utils_1_code77, simple_type, collection_utils_1_code76, bound, range(collection_utils_1, 48892, 1, 1141, 1141)).

%%% Name References

name_ref(t_abstract_iterable_map_5, type, 'AbstractIterableMap', 'Lorg/apache/commons/collections4/map/AbstractIterableMap<TK;TV;>;').
name_ref(t_collection_utils_1, type, 'CollectionUtils', 'Lorg/apache/commons/collections4/CollectionUtils;').
name_ref(t_collections_3, type, 'Collections', 'Ljava/util/Collections;').
name_ref(t_integer_4, type, 'Integer', 'Ljava/lang/Integer;').
name_ref(t_k_6, type, 'K', 'Lorg/apache/commons/collections4/map/AbstractIterableMap;:TK;').
name_ref(t_math_2, type, 'Math', 'Ljava/lang/Math;').
name_ref(t_system_8, type, 'System', 'Ljava/lang/System;').
name_ref(t_v_7, type, 'V', 'Lorg/apache/commons/collections4/map/AbstractIterableMap;:TV;').
name_ref(p_a_12, param, 'a', 'collection_utils_1;a_line_141').
name_ref(p_b_13, param, 'b', 'collection_utils_1;b_line_141').
name_ref(p_one_163, param, 'one', 'composite_map_1;one_line_74').
name_ref(p_test_name_201, param, 'testName', 'composite_map_test_1;testName_line_34').
name_ref(p_two_164, param, 'two', 'composite_map_1;two_line_74').
name_ref(v_c_43, var, 'c', 'Lorg/apache/commons/collections4/CollectionUtils;.getCardinalityMap<O:Ljava/lang/Object;>(Ljava/lang/Iterable<+TO;>;)Ljava/util/Map<TO;Ljava/lang/Integer;>;#0#0#c').
name_ref(v_count_11, var, 'count', 'Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;.getFreq(Ljava/lang/Object;Ljava/util/Map<*Ljava/lang/Integer;>;)I#count').
name_ref(v_count_41, var, 'count', 'Lorg/apache/commons/collections4/CollectionUtils;.getCardinalityMap<O:Ljava/lang/Object;>(Ljava/lang/Iterable<+TO;>;)Ljava/util/Map<TO;Ljava/lang/Integer;>;#count').
name_ref(v_helper_25, var, 'helper', 'Lorg/apache/commons/collections4/CollectionUtils;.intersection<O:Ljava/lang/Object;>(Ljava/lang/Iterable<+TO;>;Ljava/lang/Iterable<+TO;>;)Ljava/util/Collection<TO;>;#helper').
name_ref(v_i_173, var, 'i', 'Lorg/apache/commons/collections4/map/CompositeMap;.([Ljava/util/Map<TK;TV;>;Lorg/apache/commons/collections4/map/CompositeMap$MapMutator<TK;TV;>;)V#0#i').
name_ref(v_i_176, var, 'i', 'Lorg/apache/commons/collections4/map/CompositeMap;.addComposited(Ljava/util/Map<TK;TV;>;)V|Ljava/lang/IllegalArgumentException;#0#i').
name_ref(v_i_18, var, 'i', 'Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;.setCardinality(TO;I)V#0#i').
name_ref(v_intersect_177, var, 'intersect', 'Lorg/apache/commons/collections4/map/CompositeMap;.addComposited(Ljava/util/Map<TK;TV;>;)V|Ljava/lang/IllegalArgumentException;#0#0#intersect').
name_ref(v_map_203, var, 'map', 'Lorg/apache/commons/collections4/map/CompositeMapTest;.buildOne()Ljava/util/Map<TK;TV;>;#map').
name_ref(v_map_204, var, 'map', 'Lorg/apache/commons/collections4/map/CompositeMapTest;.buildTwo()Ljava/util/Map<TK;TV;>;#map').
name_ref(v_map_205, var, 'map', 'Lorg/apache/commons/collections4/map/CompositeMapTest;.testAddComposited()V#map').
name_ref(v_map_207, var, 'map', 'Lorg/apache/commons/collections4/map/CompositeMapTest;.testRemoveComposited()V#map').
name_ref(v_map_209, var, 'map', 'Lorg/apache/commons/collections4/map/CompositeMapTest;.testRemoveFromUnderlying()V#map').
name_ref(v_map_211, var, 'map', 'Lorg/apache/commons/collections4/map/CompositeMapTest;.testRemoveFromComposited()V#map').
name_ref(v_obj_26, var, 'obj', 'Lorg/apache/commons/collections4/CollectionUtils;.intersection<O:Ljava/lang/Object;>(Ljava/lang/Iterable<+TO;>;Ljava/lang/Iterable<+TO;>;)Ljava/util/Collection<TO;>;#0#obj').
name_ref(v_obj_42, var, 'obj', 'Lorg/apache/commons/collections4/CollectionUtils;.getCardinalityMap<O:Ljava/lang/Object;>(Ljava/lang/Iterable<+TO;>;)Ljava/util/Map<TO;Ljava/lang/Integer;>;#0#obj').
name_ref(v_temp_178, var, 'temp', 'Lorg/apache/commons/collections4/map/CompositeMap;.addComposited(Ljava/util/Map<TK;TV;>;)V|Ljava/lang/IllegalArgumentException;#temp').
name_ref(v_three_206, var, 'three', 'Lorg/apache/commons/collections4/map/CompositeMapTest;.testAddComposited()V#three').
name_ref(v_three_208, var, 'three', 'Lorg/apache/commons/collections4/map/CompositeMapTest;.testRemoveComposited()V#three').
name_ref(v_three_210, var, 'three', 'Lorg/apache/commons/collections4/map/CompositeMapTest;.testRemoveFromUnderlying()V#three').
name_ref(v_three_212, var, 'three', 'Lorg/apache/commons/collections4/map/CompositeMapTest;.testRemoveFromComposited()V#three').
name_ref(p_a_1, param, 'a', 'Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;.(Ljava/lang/Iterable<+TO;>;Ljava/lang/Iterable<+TO;>;)V#a#0#0').
name_ref(p_a_12, param, 'a', 'Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;.(Ljava/lang/Iterable<+TO;>;Ljava/lang/Iterable<+TO;>;)V#a#0#0').
name_ref(p_a_131, param, 'a', 'Lorg/apache/commons/collections4/CollectionUtils;.collate<O::Ljava/lang/Comparable<-TO;>;>(Ljava/lang/Iterable<+TO;>;Ljava/lang/Iterable<+TO;>;)Ljava/util/List<TO;>;#a#0#0').
name_ref(p_a_133, param, 'a', 'Lorg/apache/commons/collections4/CollectionUtils;.collate<O::Ljava/lang/Comparable<-TO;>;>(Ljava/lang/Iterable<+TO;>;Ljava/lang/Iterable<+TO;>;Z)Ljava/util/List<TO;>;#a#0#0').
name_ref(p_a_136, param, 'a', 'Lorg/apache/commons/collections4/CollectionUtils;.collate<O:Ljava/lang/Object;>(Ljava/lang/Iterable<+TO;>;Ljava/lang/Iterable<+TO;>;Ljava/util/Comparator<-TO;>;)Ljava/util/List<TO;>;#a#0#0').
name_ref(p_a_139, param, 'a', 'Lorg/apache/commons/collections4/CollectionUtils;.collate<O:Ljava/lang/Object;>(Ljava/lang/Iterable<+TO;>;Ljava/lang/Iterable<+TO;>;Ljava/util/Comparator<-TO;>;Z)Ljava/util/List<TO;>;#a#0#0').
name_ref(p_a_21, param, 'a', 'Lorg/apache/commons/collections4/CollectionUtils;.union<O:Ljava/lang/Object;>(Ljava/lang/Iterable<+TO;>;Ljava/lang/Iterable<+TO;>;)Ljava/util/Collection<TO;>;#a#0#0').
name_ref(p_a_23, param, 'a', 'Lorg/apache/commons/collections4/CollectionUtils;.intersection<O:Ljava/lang/Object;>(Ljava/lang/Iterable<+TO;>;Ljava/lang/Iterable<+TO;>;)Ljava/util/Collection<TO;>;#a#0#0').
name_ref(p_a_27, param, 'a', 'Lorg/apache/commons/collections4/CollectionUtils;.disjunction<O:Ljava/lang/Object;>(Ljava/lang/Iterable<+TO;>;Ljava/lang/Iterable<+TO;>;)Ljava/util/Collection<TO;>;#a#0#0').
name_ref(p_a_29, param, 'a', 'Lorg/apache/commons/collections4/CollectionUtils;.subtract<O:Ljava/lang/Object;>(Ljava/lang/Iterable<+TO;>;Ljava/lang/Iterable<+TO;>;)Ljava/util/Collection<TO;>;#a#0#0').
name_ref(p_a_31, param, 'a', 'Lorg/apache/commons/collections4/CollectionUtils;.subtract<O:Ljava/lang/Object;>(Ljava/lang/Iterable<+TO;>;Ljava/lang/Iterable<+TO;>;Lorg/apache/commons/collections4/Predicate<TO;>;)Ljava/util/Collection<TO;>;#a#0#0').
name_ref(p_a_44, param, 'a', 'Lorg/apache/commons/collections4/CollectionUtils;.isSubCollection(Ljava/util/Collection<*>;Ljava/util/Collection<*>;)Z#a#0#0').
name_ref(p_a_46, param, 'a', 'Lorg/apache/commons/collections4/CollectionUtils;.isProperSubCollection(Ljava/util/Collection<*>;Ljava/util/Collection<*>;)Z#a#0#0').
name_ref(p_a_48, param, 'a', 'Lorg/apache/commons/collections4/CollectionUtils;.isEqualCollection(Ljava/util/Collection<*>;Ljava/util/Collection<*>;)Z#a#0#0').
name_ref(p_a_50, param, 'a', 'Lorg/apache/commons/collections4/CollectionUtils;.isEqualCollection<E:Ljava/lang/Object;>(Ljava/util/Collection<+TE;>;Ljava/util/Collection<+TE;>;Lorg/apache/commons/collections4/Equator<-TE;>;)Z#a#0#0').
name_ref(p_added_191, param, 'added', 'Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;.resolveCollision(Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;Ljava/util/Map<TK;TV;>;Ljava/util/Map<TK;TV;>;Ljava/util/Collection<TK;>;)V#added#0#2').
name_ref(p_added_215, param, 'added', 'Lorg/apache/commons/collections4/map/CompositeMapTest$4481;.resolveCollision(Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;Ljava/util/Map<TK;TV;>;Ljava/util/Map<TK;TV;>;Ljava/util/Collection<TK;>;)V#added#0#2').
name_ref(p_added_226, param, 'added', 'Lorg/apache/commons/collections4/map/CompositeMapTest$5538;.resolveCollision(Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;Ljava/util/Map<TK;TV;>;Ljava/util/Map<TK;TV;>;Ljava/util/Collection<TK;>;)V#added#0#2').
name_ref(p_added_237, param, 'added', 'Lorg/apache/commons/collections4/map/CompositeMapTest$6600;.resolveCollision(Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;Ljava/util/Map<TK;TV;>;Ljava/util/Map<TK;TV;>;Ljava/util/Collection<TK;>;)V#added#0#2').
name_ref(p_array_128, param, 'array', 'Lorg/apache/commons/collections4/CollectionUtils;.reverseArray([Ljava/lang/Object;)V#array#0#0').
name_ref(p_b_13, param, 'b', 'Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;.(Ljava/lang/Iterable<+TO;>;Ljava/lang/Iterable<+TO;>;)V#b#0#1').
name_ref(p_b_132, param, 'b', 'Lorg/apache/commons/collections4/CollectionUtils;.collate<O::Ljava/lang/Comparable<-TO;>;>(Ljava/lang/Iterable<+TO;>;Ljava/lang/Iterable<+TO;>;)Ljava/util/List<TO;>;#b#0#1').
name_ref(p_b_134, param, 'b', 'Lorg/apache/commons/collections4/CollectionUtils;.collate<O::Ljava/lang/Comparable<-TO;>;>(Ljava/lang/Iterable<+TO;>;Ljava/lang/Iterable<+TO;>;Z)Ljava/util/List<TO;>;#b#0#1').
name_ref(p_b_137, param, 'b', 'Lorg/apache/commons/collections4/CollectionUtils;.collate<O:Ljava/lang/Object;>(Ljava/lang/Iterable<+TO;>;Ljava/lang/Iterable<+TO;>;Ljava/util/Comparator<-TO;>;)Ljava/util/List<TO;>;#b#0#1').
name_ref(p_b_140, param, 'b', 'Lorg/apache/commons/collections4/CollectionUtils;.collate<O:Ljava/lang/Object;>(Ljava/lang/Iterable<+TO;>;Ljava/lang/Iterable<+TO;>;Ljava/util/Comparator<-TO;>;Z)Ljava/util/List<TO;>;#b#0#1').
name_ref(p_b_2, param, 'b', 'Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;.(Ljava/lang/Iterable<+TO;>;Ljava/lang/Iterable<+TO;>;)V#b#0#1').
name_ref(p_b_22, param, 'b', 'Lorg/apache/commons/collections4/CollectionUtils;.union<O:Ljava/lang/Object;>(Ljava/lang/Iterable<+TO;>;Ljava/lang/Iterable<+TO;>;)Ljava/util/Collection<TO;>;#b#0#1').
name_ref(p_b_24, param, 'b', 'Lorg/apache/commons/collections4/CollectionUtils;.intersection<O:Ljava/lang/Object;>(Ljava/lang/Iterable<+TO;>;Ljava/lang/Iterable<+TO;>;)Ljava/util/Collection<TO;>;#b#0#1').
name_ref(p_b_28, param, 'b', 'Lorg/apache/commons/collections4/CollectionUtils;.disjunction<O:Ljava/lang/Object;>(Ljava/lang/Iterable<+TO;>;Ljava/lang/Iterable<+TO;>;)Ljava/util/Collection<TO;>;#b#0#1').
name_ref(p_b_30, param, 'b', 'Lorg/apache/commons/collections4/CollectionUtils;.subtract<O:Ljava/lang/Object;>(Ljava/lang/Iterable<+TO;>;Ljava/lang/Iterable<+TO;>;)Ljava/util/Collection<TO;>;#b#0#1').
name_ref(p_b_32, param, 'b', 'Lorg/apache/commons/collections4/CollectionUtils;.subtract<O:Ljava/lang/Object;>(Ljava/lang/Iterable<+TO;>;Ljava/lang/Iterable<+TO;>;Lorg/apache/commons/collections4/Predicate<TO;>;)Ljava/util/Collection<TO;>;#b#0#1').
name_ref(p_b_45, param, 'b', 'Lorg/apache/commons/collections4/CollectionUtils;.isSubCollection(Ljava/util/Collection<*>;Ljava/util/Collection<*>;)Z#b#0#1').
name_ref(p_b_47, param, 'b', 'Lorg/apache/commons/collections4/CollectionUtils;.isProperSubCollection(Ljava/util/Collection<*>;Ljava/util/Collection<*>;)Z#b#0#1').
name_ref(p_b_49, param, 'b', 'Lorg/apache/commons/collections4/CollectionUtils;.isEqualCollection(Ljava/util/Collection<*>;Ljava/util/Collection<*>;)Z#b#0#1').
name_ref(p_b_51, param, 'b', 'Lorg/apache/commons/collections4/CollectionUtils;.isEqualCollection<E:Ljava/lang/Object;>(Ljava/util/Collection<+TE;>;Ljava/util/Collection<+TE;>;Lorg/apache/commons/collections4/Equator<-TE;>;)Z#b#0#1').
name_ref(p_c_138, param, 'c', 'Lorg/apache/commons/collections4/CollectionUtils;.collate<O:Ljava/lang/Object;>(Ljava/lang/Iterable<+TO;>;Ljava/lang/Iterable<+TO;>;Ljava/util/Comparator<-TO;>;)Ljava/util/List<TO;>;#c#0#2').
name_ref(p_c_141, param, 'c', 'Lorg/apache/commons/collections4/CollectionUtils;.collate<O:Ljava/lang/Object;>(Ljava/lang/Iterable<+TO;>;Ljava/lang/Iterable<+TO;>;Ljava/util/Comparator<-TO;>;Z)Ljava/util/List<TO;>;#c#0#2').
name_ref(p_closure_62, param, 'closure', 'Lorg/apache/commons/collections4/CollectionUtils;.forAllDo<T:Ljava/lang/Object;C::Lorg/apache/commons/collections4/Closure<-TT;>;>(Ljava/lang/Iterable<TT;>;TC;)TC;#closure#0#1').
name_ref(p_closure_64, param, 'closure', 'Lorg/apache/commons/collections4/CollectionUtils;.forAllDo<T:Ljava/lang/Object;C::Lorg/apache/commons/collections4/Closure<-TT;>;>(Ljava/util/Iterator<TT;>;TC;)TC;#closure#0#1').
name_ref(p_closure_66, param, 'closure', 'Lorg/apache/commons/collections4/CollectionUtils;.forAllButLastDo<T:Ljava/lang/Object;C::Lorg/apache/commons/collections4/Closure<-TT;>;>(Ljava/lang/Iterable<TT;>;TC;)TT;#closure#0#1').
name_ref(p_closure_68, param, 'closure', 'Lorg/apache/commons/collections4/CollectionUtils;.forAllButLastDo<T:Ljava/lang/Object;C::Lorg/apache/commons/collections4/Closure<-TT;>;>(Ljava/util/Iterator<TT;>;TC;)TT;#closure#0#1').
name_ref(p_coll_126, param, 'coll', 'Lorg/apache/commons/collections4/CollectionUtils;.isEmpty(Ljava/util/Collection<*>;)Z#coll#0#0').
name_ref(p_coll_127, param, 'coll', 'Lorg/apache/commons/collections4/CollectionUtils;.isNotEmpty(Ljava/util/Collection<*>;)Z#coll#0#0').
name_ref(p_coll_129, param, 'coll', 'Lorg/apache/commons/collections4/CollectionUtils;.isFull(Ljava/util/Collection<+Ljava/lang/Object;>;)Z#coll#0#0').
name_ref(p_coll_130, param, 'coll', 'Lorg/apache/commons/collections4/CollectionUtils;.maxSize(Ljava/util/Collection<+Ljava/lang/Object;>;)I#coll#0#0').
name_ref(p_coll_1_34, param, 'coll1', 'Lorg/apache/commons/collections4/CollectionUtils;.containsAll(Ljava/util/Collection<*>;Ljava/util/Collection<*>;)Z#coll1#0#0').
name_ref(p_coll_1_36, param, 'coll1', 'Lorg/apache/commons/collections4/CollectionUtils;.containsAny<T:Ljava/lang/Object;>(Ljava/util/Collection<*>;[TT;)Z#coll1#0#0').
name_ref(p_coll_1_38, param, 'coll1', 'Lorg/apache/commons/collections4/CollectionUtils;.containsAny(Ljava/util/Collection<*>;Ljava/util/Collection<*>;)Z#coll1#0#0').
name_ref(p_coll_2_35, param, 'coll2', 'Lorg/apache/commons/collections4/CollectionUtils;.containsAll(Ljava/util/Collection<*>;Ljava/util/Collection<*>;)Z#coll2#0#1').
name_ref(p_coll_2_37, param, 'coll2', 'Lorg/apache/commons/collections4/CollectionUtils;.containsAny<T:Ljava/lang/Object;>(Ljava/util/Collection<*>;[TT;)Z#coll2#0#1').
name_ref(p_coll_2_39, param, 'coll2', 'Lorg/apache/commons/collections4/CollectionUtils;.containsAny(Ljava/util/Collection<*>;Ljava/util/Collection<*>;)Z#coll2#0#1').
name_ref(p_coll_40, param, 'coll', 'Lorg/apache/commons/collections4/CollectionUtils;.getCardinalityMap<O:Ljava/lang/Object;>(Ljava/lang/Iterable<+TO;>;)Ljava/util/Map<TO;Ljava/lang/Integer;>;#coll#0#0').
name_ref(p_coll_58, param, 'coll', 'Lorg/apache/commons/collections4/CollectionUtils;.cardinality<O:Ljava/lang/Object;>(TO;Ljava/lang/Iterable<-TO;>;)I#coll#0#1').
name_ref(p_collection_105, param, 'collection', 'Lorg/apache/commons/collections4/CollectionUtils;.addIgnoreNull<T:Ljava/lang/Object;>(Ljava/util/Collection<TT;>;TT;)Z#collection#0#0').
name_ref(p_collection_107, param, 'collection', 'Lorg/apache/commons/collections4/CollectionUtils;.addAll<C:Ljava/lang/Object;>(Ljava/util/Collection<TC;>;Ljava/lang/Iterable<+TC;>;)Z#collection#0#0').
name_ref(p_collection_109, param, 'collection', 'Lorg/apache/commons/collections4/CollectionUtils;.addAll<C:Ljava/lang/Object;>(Ljava/util/Collection<TC;>;Ljava/util/Iterator<+TC;>;)Z#collection#0#0').
name_ref(p_collection_111, param, 'collection', 'Lorg/apache/commons/collections4/CollectionUtils;.addAll<C:Ljava/lang/Object;>(Ljava/util/Collection<TC;>;Ljava/util/Enumeration<+TC;>;)Z#collection#0#0').
name_ref(p_collection_113, param, 'collection', 'Lorg/apache/commons/collections4/CollectionUtils;.addAll<C:Ljava/lang/Object;>(Ljava/util/Collection<TC;>;[TC;)Z#collection#0#0').
name_ref(p_collection_143, param, 'collection', 'Lorg/apache/commons/collections4/CollectionUtils;.permutations<E:Ljava/lang/Object;>(Ljava/util/Collection<TE;>;)Ljava/util/Collection<Ljava/util/List<TE;>;>;#collection#0#0').
name_ref(p_collection_144, param, 'collection', 'Lorg/apache/commons/collections4/CollectionUtils;.retainAll<C:Ljava/lang/Object;>(Ljava/util/Collection<TC;>;Ljava/util/Collection<*>;)Ljava/util/Collection<TC;>;#collection#0#0').
name_ref(p_collection_146, param, 'collection', 'Lorg/apache/commons/collections4/CollectionUtils;.retainAll<E:Ljava/lang/Object;>(Ljava/lang/Iterable<TE;>;Ljava/lang/Iterable<+TE;>;Lorg/apache/commons/collections4/Equator<-TE;>;)Ljava/util/Collection<TE;>;#collection#0#0').
name_ref(p_collection_150, param, 'collection', 'Lorg/apache/commons/collections4/CollectionUtils;.removeAll<E:Ljava/lang/Object;>(Ljava/util/Collection<TE;>;Ljava/util/Collection<*>;)Ljava/util/Collection<TE;>;#collection#0#0').
name_ref(p_collection_152, param, 'collection', 'Lorg/apache/commons/collections4/CollectionUtils;.removeAll<E:Ljava/lang/Object;>(Ljava/lang/Iterable<TE;>;Ljava/lang/Iterable<+TE;>;Lorg/apache/commons/collections4/Equator<-TE;>;)Ljava/util/Collection<TE;>;#collection#0#0').
name_ref(p_collection_156, param, 'collection', 'Lorg/apache/commons/collections4/CollectionUtils;.synchronizedCollection<C:Ljava/lang/Object;>(Ljava/util/Collection<TC;>;)Ljava/util/Collection<TC;>;#collection#0#0').
name_ref(p_collection_157, param, 'collection', 'Lorg/apache/commons/collections4/CollectionUtils;.unmodifiableCollection<C:Ljava/lang/Object;>(Ljava/util/Collection<+TC;>;)Ljava/util/Collection<TC;>;#collection#0#0').
name_ref(p_collection_158, param, 'collection', 'Lorg/apache/commons/collections4/CollectionUtils;.predicatedCollection<C:Ljava/lang/Object;>(Ljava/util/Collection<TC;>;Lorg/apache/commons/collections4/Predicate<-TC;>;)Ljava/util/Collection<TC;>;#collection#0#0').
name_ref(p_collection_160, param, 'collection', 'Lorg/apache/commons/collections4/CollectionUtils;.transformingCollection<E:Ljava/lang/Object;>(Ljava/util/Collection<TE;>;Lorg/apache/commons/collections4/Transformer<-TE;+TE;>;)Ljava/util/Collection<TE;>;#collection#0#0').
name_ref(p_collection_162, param, 'collection', 'Lorg/apache/commons/collections4/CollectionUtils;.extractSingleton<E:Ljava/lang/Object;>(Ljava/util/Collection<TE;>;)TE;#collection#0#0').
name_ref(p_collection_20, param, 'collection', 'Lorg/apache/commons/collections4/CollectionUtils;.emptyIfNull<T:Ljava/lang/Object;>(Ljava/util/Collection<TT;>;)Ljava/util/Collection<TT;>;#collection#0#0').
name_ref(p_collection_59, param, 'collection', 'Lorg/apache/commons/collections4/CollectionUtils;.find<T:Ljava/lang/Object;>(Ljava/lang/Iterable<TT;>;Lorg/apache/commons/collections4/Predicate<-TT;>;)TT;#collection#0#0').
name_ref(p_collection_61, param, 'collection', 'Lorg/apache/commons/collections4/CollectionUtils;.forAllDo<T:Ljava/lang/Object;C::Lorg/apache/commons/collections4/Closure<-TT;>;>(Ljava/lang/Iterable<TT;>;TC;)TC;#collection#0#0').
name_ref(p_collection_65, param, 'collection', 'Lorg/apache/commons/collections4/CollectionUtils;.forAllButLastDo<T:Ljava/lang/Object;C::Lorg/apache/commons/collections4/Closure<-TT;>;>(Ljava/lang/Iterable<TT;>;TC;)TT;#collection#0#0').
name_ref(p_collection_69, param, 'collection', 'Lorg/apache/commons/collections4/CollectionUtils;.filter<T:Ljava/lang/Object;>(Ljava/lang/Iterable<TT;>;Lorg/apache/commons/collections4/Predicate<-TT;>;)Z#collection#0#0').
name_ref(p_collection_71, param, 'collection', 'Lorg/apache/commons/collections4/CollectionUtils;.filterInverse<T:Ljava/lang/Object;>(Ljava/lang/Iterable<TT;>;Lorg/apache/commons/collections4/Predicate<-TT;>;)Z#collection#0#0').
name_ref(p_collection_73, param, 'collection', 'Lorg/apache/commons/collections4/CollectionUtils;.transform<C:Ljava/lang/Object;>(Ljava/util/Collection<TC;>;Lorg/apache/commons/collections4/Transformer<-TC;+TC;>;)V#collection#0#0').
name_ref(p_composite_168, param, 'composite', 'Lorg/apache/commons/collections4/map/CompositeMap;.([Ljava/util/Map<TK;TV;>;)V#composite#0#0').
name_ref(p_composite_169, param, 'composite', 'Lorg/apache/commons/collections4/map/CompositeMap;.([Ljava/util/Map<TK;TV;>;Lorg/apache/commons/collections4/map/CompositeMap$MapMutator<TK;TV;>;)V#composite#0#0').
name_ref(p_composite_189, param, 'composite', 'Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;.resolveCollision(Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;Ljava/util/Map<TK;TV;>;Ljava/util/Map<TK;TV;>;Ljava/util/Collection<TK;>;)V#composite#0#0').
name_ref(p_composite_213, param, 'composite', 'Lorg/apache/commons/collections4/map/CompositeMapTest$4481;.resolveCollision(Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;Ljava/util/Map<TK;TV;>;Ljava/util/Map<TK;TV;>;Ljava/util/Collection<TK;>;)V#composite#0#0').
name_ref(p_composite_224, param, 'composite', 'Lorg/apache/commons/collections4/map/CompositeMapTest$5538;.resolveCollision(Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;Ljava/util/Map<TK;TV;>;Ljava/util/Map<TK;TV;>;Ljava/util/Collection<TK;>;)V#composite#0#0').
name_ref(p_composite_235, param, 'composite', 'Lorg/apache/commons/collections4/map/CompositeMapTest$6600;.resolveCollision(Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;Ljava/util/Map<TK;TV;>;Ljava/util/Map<TK;TV;>;Ljava/util/Collection<TK;>;)V#composite#0#0').
name_ref(p_composited_194, param, 'composited', 'Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;.put(Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;[Ljava/util/Map<TK;TV;>;TK;TV;)TV;#composited#0#1').
name_ref(p_composited_198, param, 'composited', 'Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;.putAll(Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;[Ljava/util/Map<TK;TV;>;Ljava/util/Map<+TK;+TV;>;)V#composited#0#1').
name_ref(p_composited_218, param, 'composited', 'Lorg/apache/commons/collections4/map/CompositeMapTest$4481;.put(Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;[Ljava/util/Map<TK;TV;>;TK;TV;)TV;#composited#0#1').
name_ref(p_composited_222, param, 'composited', 'Lorg/apache/commons/collections4/map/CompositeMapTest$4481;.putAll(Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;[Ljava/util/Map<TK;TV;>;Ljava/util/Map<+TK;+TV;>;)V#composited#0#1').
name_ref(p_composited_229, param, 'composited', 'Lorg/apache/commons/collections4/map/CompositeMapTest$5538;.put(Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;[Ljava/util/Map<TK;TV;>;TK;TV;)TV;#composited#0#1').
name_ref(p_composited_233, param, 'composited', 'Lorg/apache/commons/collections4/map/CompositeMapTest$5538;.putAll(Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;[Ljava/util/Map<TK;TV;>;Ljava/util/Map<+TK;+TV;>;)V#composited#0#1').
name_ref(p_composited_240, param, 'composited', 'Lorg/apache/commons/collections4/map/CompositeMapTest$6600;.put(Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;[Ljava/util/Map<TK;TV;>;TK;TV;)TV;#composited#0#1').
name_ref(p_composited_244, param, 'composited', 'Lorg/apache/commons/collections4/map/CompositeMapTest$6600;.putAll(Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;[Ljava/util/Map<TK;TV;>;Ljava/util/Map<+TK;+TV;>;)V#composited#0#1').
name_ref(p_count_17, param, 'count', 'Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;.setCardinality(TO;I)V#count#0#1').
name_ref(p_elements_114, param, 'elements', 'Lorg/apache/commons/collections4/CollectionUtils;.addAll<C:Ljava/lang/Object;>(Ljava/util/Collection<TC;>;[TC;)Z#elements#0#1').
name_ref(p_enumeration_112, param, 'enumeration', 'Lorg/apache/commons/collections4/CollectionUtils;.addAll<C:Ljava/lang/Object;>(Ljava/util/Collection<TC;>;Ljava/util/Enumeration<+TC;>;)Z#enumeration#0#1').
name_ref(p_equator_148, param, 'equator', 'Lorg/apache/commons/collections4/CollectionUtils;.retainAll<E:Ljava/lang/Object;>(Ljava/lang/Iterable<TE;>;Ljava/lang/Iterable<+TE;>;Lorg/apache/commons/collections4/Equator<-TE;>;)Ljava/util/Collection<TE;>;#equator#0#2').
name_ref(p_equator_154, param, 'equator', 'Lorg/apache/commons/collections4/CollectionUtils;.removeAll<E:Ljava/lang/Object;>(Ljava/lang/Iterable<TE;>;Ljava/lang/Iterable<+TE;>;Lorg/apache/commons/collections4/Equator<-TE;>;)Ljava/util/Collection<TE;>;#equator#0#2').
name_ref(p_equator_52, param, 'equator', 'Lorg/apache/commons/collections4/CollectionUtils;.isEqualCollection<E:Ljava/lang/Object;>(Ljava/util/Collection<+TE;>;Ljava/util/Collection<+TE;>;Lorg/apache/commons/collections4/Equator<-TE;>;)Z#equator#0#2').
name_ref(p_equator_54, param, 'equator', 'Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper;.(Lorg/apache/commons/collections4/Equator<-TO;>;TO;)V#equator#0#0').
name_ref(p_existing_190, param, 'existing', 'Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;.resolveCollision(Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;Ljava/util/Map<TK;TV;>;Ljava/util/Map<TK;TV;>;Ljava/util/Collection<TK;>;)V#existing#0#1').
name_ref(p_existing_214, param, 'existing', 'Lorg/apache/commons/collections4/map/CompositeMapTest$4481;.resolveCollision(Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;Ljava/util/Map<TK;TV;>;Ljava/util/Map<TK;TV;>;Ljava/util/Collection<TK;>;)V#existing#0#1').
name_ref(p_existing_225, param, 'existing', 'Lorg/apache/commons/collections4/map/CompositeMapTest$5538;.resolveCollision(Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;Ljava/util/Map<TK;TV;>;Ljava/util/Map<TK;TV;>;Ljava/util/Collection<TK;>;)V#existing#0#1').
name_ref(p_existing_236, param, 'existing', 'Lorg/apache/commons/collections4/map/CompositeMapTest$6600;.resolveCollision(Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;Ljava/util/Map<TK;TV;>;Ljava/util/Map<TK;TV;>;Ljava/util/Collection<TK;>;)V#existing#0#1').
name_ref(p_freq_map_10, param, 'freqMap', 'Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;.getFreq(Ljava/lang/Object;Ljava/util/Map<*Ljava/lang/Integer;>;)I#freqMap#0#1').
name_ref(p_include_duplicates_135, param, 'includeDuplicates', 'Lorg/apache/commons/collections4/CollectionUtils;.collate<O::Ljava/lang/Comparable<-TO;>;>(Ljava/lang/Iterable<+TO;>;Ljava/lang/Iterable<+TO;>;Z)Ljava/util/List<TO;>;#includeDuplicates#0#2').
name_ref(p_include_duplicates_142, param, 'includeDuplicates', 'Lorg/apache/commons/collections4/CollectionUtils;.collate<O:Ljava/lang/Object;>(Ljava/lang/Iterable<+TO;>;Ljava/lang/Iterable<+TO;>;Ljava/util/Comparator<-TO;>;Z)Ljava/util/List<TO;>;#includeDuplicates#0#3').
name_ref(p_index_116, param, 'index', 'Lorg/apache/commons/collections4/CollectionUtils;.get<T:Ljava/lang/Object;>(Ljava/util/Iterator<TT;>;I)TT;#index#0#1').
name_ref(p_index_117, param, 'index', 'Lorg/apache/commons/collections4/CollectionUtils;.checkIndexBounds(I)V#index#0#0').
name_ref(p_index_119, param, 'index', 'Lorg/apache/commons/collections4/CollectionUtils;.get<T:Ljava/lang/Object;>(Ljava/lang/Iterable<TT;>;I)TT;#index#0#1').
name_ref(p_index_121, param, 'index', 'Lorg/apache/commons/collections4/CollectionUtils;.get(Ljava/lang/Object;I)Ljava/lang/Object;#index#0#1').
name_ref(p_index_123, param, 'index', 'Lorg/apache/commons/collections4/CollectionUtils;.get<K:Ljava/lang/Object;V:Ljava/lang/Object;>(Ljava/util/Map<TK;TV;>;I)Ljava/util/Map$Entry<TK;TV;>;#index#0#1').
name_ref(p_input_149, param, 'input', 'Lorg/apache/commons/collections4/CollectionUtils$74318;.transform(TE;)Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper<TE;>;#input#0#0').
name_ref(p_input_155, param, 'input', 'Lorg/apache/commons/collections4/CollectionUtils$78609;.transform(TE;)Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper<TE;>;#input#0#0').
name_ref(p_input_53, param, 'input', 'Lorg/apache/commons/collections4/CollectionUtils$23873;.transform(Ljava/lang/Object;)Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper<*>;#input#0#0').
name_ref(p_input_75, param, 'input', 'Lorg/apache/commons/collections4/CollectionUtils;.countMatches<C:Ljava/lang/Object;>(Ljava/lang/Iterable<TC;>;Lorg/apache/commons/collections4/Predicate<-TC;>;)I#input#0#0').
name_ref(p_input_77, param, 'input', 'Lorg/apache/commons/collections4/CollectionUtils;.exists<C:Ljava/lang/Object;>(Ljava/lang/Iterable<TC;>;Lorg/apache/commons/collections4/Predicate<-TC;>;)Z#input#0#0').
name_ref(p_input_79, param, 'input', 'Lorg/apache/commons/collections4/CollectionUtils;.matchesAll<C:Ljava/lang/Object;>(Ljava/lang/Iterable<TC;>;Lorg/apache/commons/collections4/Predicate<-TC;>;)Z#input#0#0').
name_ref(p_input_collection_81, param, 'inputCollection', 'Lorg/apache/commons/collections4/CollectionUtils;.select<O:Ljava/lang/Object;>(Ljava/lang/Iterable<+TO;>;Lorg/apache/commons/collections4/Predicate<-TO;>;)Ljava/util/Collection<TO;>;#inputCollection#0#0').
name_ref(p_input_collection_83, param, 'inputCollection', 'Lorg/apache/commons/collections4/CollectionUtils;.select<O:Ljava/lang/Object;R::Ljava/util/Collection<-TO;>;>(Ljava/lang/Iterable<+TO;>;Lorg/apache/commons/collections4/Predicate<-TO;>;TR;)TR;#inputCollection#0#0').
name_ref(p_input_collection_86, param, 'inputCollection', 'Lorg/apache/commons/collections4/CollectionUtils;.select<O:Ljava/lang/Object;R::Ljava/util/Collection<-TO;>;>(Ljava/lang/Iterable<+TO;>;Lorg/apache/commons/collections4/Predicate<-TO;>;TR;TR;)TR;#inputCollection#0#0').
name_ref(p_input_collection_90, param, 'inputCollection', 'Lorg/apache/commons/collections4/CollectionUtils;.selectRejected<O:Ljava/lang/Object;>(Ljava/lang/Iterable<+TO;>;Lorg/apache/commons/collections4/Predicate<-TO;>;)Ljava/util/Collection<TO;>;#inputCollection#0#0').
name_ref(p_input_collection_92, param, 'inputCollection', 'Lorg/apache/commons/collections4/CollectionUtils;.selectRejected<O:Ljava/lang/Object;R::Ljava/util/Collection<-TO;>;>(Ljava/lang/Iterable<+TO;>;Lorg/apache/commons/collections4/Predicate<-TO;>;TR;)TR;#inputCollection#0#0').
name_ref(p_input_collection_95, param, 'inputCollection', 'Lorg/apache/commons/collections4/CollectionUtils;.collect<I:Ljava/lang/Object;O:Ljava/lang/Object;>(Ljava/lang/Iterable<TI;>;Lorg/apache/commons/collections4/Transformer<-TI;+TO;>;)Ljava/util/Collection<TO;>;#inputCollection#0#0').
name_ref(p_input_collection_99, param, 'inputCollection', 'Lorg/apache/commons/collections4/CollectionUtils;.collect<I:Ljava/lang/Object;O:Ljava/lang/Object;R::Ljava/util/Collection<-TO;>;>(Ljava/lang/Iterable<+TI;>;Lorg/apache/commons/collections4/Transformer<-TI;+TO;>;TR;)TR;#inputCollection#0#0').
name_ref(p_input_iterator_102, param, 'inputIterator', 'Lorg/apache/commons/collections4/CollectionUtils;.collect<I:Ljava/lang/Object;O:Ljava/lang/Object;R::Ljava/util/Collection<-TO;>;>(Ljava/util/Iterator<+TI;>;Lorg/apache/commons/collections4/Transformer<-TI;+TO;>;TR;)TR;#inputIterator#0#0').
name_ref(p_input_iterator_97, param, 'inputIterator', 'Lorg/apache/commons/collections4/CollectionUtils;.collect<I:Ljava/lang/Object;O:Ljava/lang/Object;>(Ljava/util/Iterator<TI;>;Lorg/apache/commons/collections4/Transformer<-TI;+TO;>;)Ljava/util/Collection<TO;>;#inputIterator#0#0').
name_ref(p_intersect_192, param, 'intersect', 'Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;.resolveCollision(Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;Ljava/util/Map<TK;TV;>;Ljava/util/Map<TK;TV;>;Ljava/util/Collection<TK;>;)V#intersect#0#3').
name_ref(p_intersect_216, param, 'intersect', 'Lorg/apache/commons/collections4/map/CompositeMapTest$4481;.resolveCollision(Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;Ljava/util/Map<TK;TV;>;Ljava/util/Map<TK;TV;>;Ljava/util/Collection<TK;>;)V#intersect#0#3').
name_ref(p_intersect_227, param, 'intersect', 'Lorg/apache/commons/collections4/map/CompositeMapTest$5538;.resolveCollision(Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;Ljava/util/Map<TK;TV;>;Ljava/util/Map<TK;TV;>;Ljava/util/Collection<TK;>;)V#intersect#0#3').
name_ref(p_intersect_238, param, 'intersect', 'Lorg/apache/commons/collections4/map/CompositeMapTest$6600;.resolveCollision(Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;Ljava/util/Map<TK;TV;>;Ljava/util/Map<TK;TV;>;Ljava/util/Collection<TK;>;)V#intersect#0#3').
name_ref(p_iterable_108, param, 'iterable', 'Lorg/apache/commons/collections4/CollectionUtils;.addAll<C:Ljava/lang/Object;>(Ljava/util/Collection<TC;>;Ljava/lang/Iterable<+TC;>;)Z#iterable#0#1').
name_ref(p_iterable_118, param, 'iterable', 'Lorg/apache/commons/collections4/CollectionUtils;.get<T:Ljava/lang/Object;>(Ljava/lang/Iterable<TT;>;I)TT;#iterable#0#0').
name_ref(p_iterator_110, param, 'iterator', 'Lorg/apache/commons/collections4/CollectionUtils;.addAll<C:Ljava/lang/Object;>(Ljava/util/Collection<TC;>;Ljava/util/Iterator<+TC;>;)Z#iterator#0#1').
name_ref(p_iterator_115, param, 'iterator', 'Lorg/apache/commons/collections4/CollectionUtils;.get<T:Ljava/lang/Object;>(Ljava/util/Iterator<TT;>;I)TT;#iterator#0#0').
name_ref(p_iterator_63, param, 'iterator', 'Lorg/apache/commons/collections4/CollectionUtils;.forAllDo<T:Ljava/lang/Object;C::Lorg/apache/commons/collections4/Closure<-TT;>;>(Ljava/util/Iterator<TT;>;TC;)TC;#iterator#0#0').
name_ref(p_iterator_67, param, 'iterator', 'Lorg/apache/commons/collections4/CollectionUtils;.forAllButLastDo<T:Ljava/lang/Object;C::Lorg/apache/commons/collections4/Closure<-TT;>;>(Ljava/util/Iterator<TT;>;TC;)TT;#iterator#0#0').
name_ref(p_key_181, param, 'key', 'Lorg/apache/commons/collections4/map/CompositeMap;.containsKey(Ljava/lang/Object;)Z#key#0#0').
name_ref(p_key_183, param, 'key', 'Lorg/apache/commons/collections4/map/CompositeMap;.get(Ljava/lang/Object;)TV;#key#0#0').
name_ref(p_key_184, param, 'key', 'Lorg/apache/commons/collections4/map/CompositeMap;.put(TK;TV;)TV;#key#0#0').
name_ref(p_key_187, param, 'key', 'Lorg/apache/commons/collections4/map/CompositeMap;.remove(Ljava/lang/Object;)TV;#key#0#0').
name_ref(p_key_195, param, 'key', 'Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;.put(Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;[Ljava/util/Map<TK;TV;>;TK;TV;)TV;#key#0#2').
name_ref(p_key_219, param, 'key', 'Lorg/apache/commons/collections4/map/CompositeMapTest$4481;.put(Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;[Ljava/util/Map<TK;TV;>;TK;TV;)TV;#key#0#2').
name_ref(p_key_230, param, 'key', 'Lorg/apache/commons/collections4/map/CompositeMapTest$5538;.put(Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;[Ljava/util/Map<TK;TV;>;TK;TV;)TV;#key#0#2').
name_ref(p_key_241, param, 'key', 'Lorg/apache/commons/collections4/map/CompositeMapTest$6600;.put(Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;[Ljava/util/Map<TK;TV;>;TK;TV;)TV;#key#0#2').
name_ref(p_map_122, param, 'map', 'Lorg/apache/commons/collections4/CollectionUtils;.get<K:Ljava/lang/Object;V:Ljava/lang/Object;>(Ljava/util/Map<TK;TV;>;I)Ljava/util/Map$Entry<TK;TV;>;#map#0#0').
name_ref(p_map_175, param, 'map', 'Lorg/apache/commons/collections4/map/CompositeMap;.addComposited(Ljava/util/Map<TK;TV;>;)V|Ljava/lang/IllegalArgumentException;#map#0#0').
name_ref(p_map_180, param, 'map', 'Lorg/apache/commons/collections4/map/CompositeMap;.removeComposited(Ljava/util/Map<TK;TV;>;)Ljava/util/Map<TK;TV;>;#map#0#0').
name_ref(p_map_186, param, 'map', 'Lorg/apache/commons/collections4/map/CompositeMap;.putAll(Ljava/util/Map<+TK;+TV;>;)V#map#0#0').
name_ref(p_map_193, param, 'map', 'Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;.put(Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;[Ljava/util/Map<TK;TV;>;TK;TV;)TV;#map#0#0').
name_ref(p_map_197, param, 'map', 'Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;.putAll(Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;[Ljava/util/Map<TK;TV;>;Ljava/util/Map<+TK;+TV;>;)V#map#0#0').
name_ref(p_map_217, param, 'map', 'Lorg/apache/commons/collections4/map/CompositeMapTest$4481;.put(Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;[Ljava/util/Map<TK;TV;>;TK;TV;)TV;#map#0#0').
name_ref(p_map_221, param, 'map', 'Lorg/apache/commons/collections4/map/CompositeMapTest$4481;.putAll(Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;[Ljava/util/Map<TK;TV;>;Ljava/util/Map<+TK;+TV;>;)V#map#0#0').
name_ref(p_map_228, param, 'map', 'Lorg/apache/commons/collections4/map/CompositeMapTest$5538;.put(Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;[Ljava/util/Map<TK;TV;>;TK;TV;)TV;#map#0#0').
name_ref(p_map_232, param, 'map', 'Lorg/apache/commons/collections4/map/CompositeMapTest$5538;.putAll(Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;[Ljava/util/Map<TK;TV;>;Ljava/util/Map<+TK;+TV;>;)V#map#0#0').
name_ref(p_map_239, param, 'map', 'Lorg/apache/commons/collections4/map/CompositeMapTest$6600;.put(Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;[Ljava/util/Map<TK;TV;>;TK;TV;)TV;#map#0#0').
name_ref(p_map_243, param, 'map', 'Lorg/apache/commons/collections4/map/CompositeMapTest$6600;.putAll(Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;[Ljava/util/Map<TK;TV;>;Ljava/util/Map<+TK;+TV;>;)V#map#0#0').
name_ref(p_map_to_add_199, param, 'mapToAdd', 'Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;.putAll(Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;[Ljava/util/Map<TK;TV;>;Ljava/util/Map<+TK;+TV;>;)V#mapToAdd#0#2').
name_ref(p_mutator_167, param, 'mutator', 'Lorg/apache/commons/collections4/map/CompositeMap;.(Ljava/util/Map<TK;TV;>;Ljava/util/Map<TK;TV;>;Lorg/apache/commons/collections4/map/CompositeMap$MapMutator<TK;TV;>;)V#mutator#0#2').
name_ref(p_mutator_170, param, 'mutator', 'Lorg/apache/commons/collections4/map/CompositeMap;.([Ljava/util/Map<TK;TV;>;Lorg/apache/commons/collections4/map/CompositeMap$MapMutator<TK;TV;>;)V#mutator#0#1').
name_ref(p_mutator_174, param, 'mutator', 'Lorg/apache/commons/collections4/map/CompositeMap;.setMutator(Lorg/apache/commons/collections4/map/CompositeMap$MapMutator<TK;TV;>;)V#mutator#0#0').
name_ref(p_obj_16, param, 'obj', 'Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;.setCardinality(TO;I)V#obj#0#0').
name_ref(p_obj_188, param, 'obj', 'Lorg/apache/commons/collections4/map/CompositeMap;.equals(Ljava/lang/Object;)Z#obj#0#0').
name_ref(p_obj_5, param, 'obj', 'Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;.max(Ljava/lang/Object;)I#obj#0#0').
name_ref(p_obj_56, param, 'obj', 'Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper;.equals(Ljava/lang/Object;)Z#obj#0#0').
name_ref(p_obj_57, param, 'obj', 'Lorg/apache/commons/collections4/CollectionUtils;.cardinality<O:Ljava/lang/Object;>(TO;Ljava/lang/Iterable<-TO;>;)I#obj#0#0').
name_ref(p_obj_6, param, 'obj', 'Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;.min(Ljava/lang/Object;)I#obj#0#0').
name_ref(p_obj_7, param, 'obj', 'Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;.freqA(Ljava/lang/Object;)I#obj#0#0').
name_ref(p_obj_8, param, 'obj', 'Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;.freqB(Ljava/lang/Object;)I#obj#0#0').
name_ref(p_obj_9, param, 'obj', 'Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;.getFreq(Ljava/lang/Object;Ljava/util/Map<*Ljava/lang/Integer;>;)I#obj#0#0').
name_ref(p_object_106, param, 'object', 'Lorg/apache/commons/collections4/CollectionUtils;.addIgnoreNull<T:Ljava/lang/Object;>(Ljava/util/Collection<TT;>;TT;)Z#object#0#1').
name_ref(p_object_120, param, 'object', 'Lorg/apache/commons/collections4/CollectionUtils;.get(Ljava/lang/Object;I)Ljava/lang/Object;#object#0#0').
name_ref(p_object_124, param, 'object', 'Lorg/apache/commons/collections4/CollectionUtils;.size(Ljava/lang/Object;)I#object#0#0').
name_ref(p_object_125, param, 'object', 'Lorg/apache/commons/collections4/CollectionUtils;.sizeIsEmpty(Ljava/lang/Object;)Z#object#0#0').
name_ref(p_object_55, param, 'object', 'Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper;.(Lorg/apache/commons/collections4/Equator<-TO;>;TO;)V#object#0#1').
name_ref(p_one_163, param, 'one', 'Lorg/apache/commons/collections4/map/CompositeMap;.(Ljava/util/Map<TK;TV;>;Ljava/util/Map<TK;TV;>;)V#one#0#0').
name_ref(p_one_165, param, 'one', 'Lorg/apache/commons/collections4/map/CompositeMap;.(Ljava/util/Map<TK;TV;>;Ljava/util/Map<TK;TV;>;Lorg/apache/commons/collections4/map/CompositeMap$MapMutator<TK;TV;>;)V#one#0#0').
name_ref(p_output_collection_101, param, 'outputCollection', 'Lorg/apache/commons/collections4/CollectionUtils;.collect<I:Ljava/lang/Object;O:Ljava/lang/Object;R::Ljava/util/Collection<-TO;>;>(Ljava/lang/Iterable<+TI;>;Lorg/apache/commons/collections4/Transformer<-TI;+TO;>;TR;)TR;#outputCollection#0#2').
name_ref(p_output_collection_104, param, 'outputCollection', 'Lorg/apache/commons/collections4/CollectionUtils;.collect<I:Ljava/lang/Object;O:Ljava/lang/Object;R::Ljava/util/Collection<-TO;>;>(Ljava/util/Iterator<+TI;>;Lorg/apache/commons/collections4/Transformer<-TI;+TO;>;TR;)TR;#outputCollection#0#2').
name_ref(p_output_collection_85, param, 'outputCollection', 'Lorg/apache/commons/collections4/CollectionUtils;.select<O:Ljava/lang/Object;R::Ljava/util/Collection<-TO;>;>(Ljava/lang/Iterable<+TO;>;Lorg/apache/commons/collections4/Predicate<-TO;>;TR;)TR;#outputCollection#0#2').
name_ref(p_output_collection_88, param, 'outputCollection', 'Lorg/apache/commons/collections4/CollectionUtils;.select<O:Ljava/lang/Object;R::Ljava/util/Collection<-TO;>;>(Ljava/lang/Iterable<+TO;>;Lorg/apache/commons/collections4/Predicate<-TO;>;TR;TR;)TR;#outputCollection#0#2').
name_ref(p_output_collection_94, param, 'outputCollection', 'Lorg/apache/commons/collections4/CollectionUtils;.selectRejected<O:Ljava/lang/Object;R::Ljava/util/Collection<-TO;>;>(Ljava/lang/Iterable<+TO;>;Lorg/apache/commons/collections4/Predicate<-TO;>;TR;)TR;#outputCollection#0#2').
name_ref(p_p_33, param, 'p', 'Lorg/apache/commons/collections4/CollectionUtils;.subtract<O:Ljava/lang/Object;>(Ljava/lang/Iterable<+TO;>;Ljava/lang/Iterable<+TO;>;Lorg/apache/commons/collections4/Predicate<TO;>;)Ljava/util/Collection<TO;>;#p#0#2').
name_ref(p_predicate_159, param, 'predicate', 'Lorg/apache/commons/collections4/CollectionUtils;.predicatedCollection<C:Ljava/lang/Object;>(Ljava/util/Collection<TC;>;Lorg/apache/commons/collections4/Predicate<-TC;>;)Ljava/util/Collection<TC;>;#predicate#0#1').
name_ref(p_predicate_60, param, 'predicate', 'Lorg/apache/commons/collections4/CollectionUtils;.find<T:Ljava/lang/Object;>(Ljava/lang/Iterable<TT;>;Lorg/apache/commons/collections4/Predicate<-TT;>;)TT;#predicate#0#1').
name_ref(p_predicate_70, param, 'predicate', 'Lorg/apache/commons/collections4/CollectionUtils;.filter<T:Ljava/lang/Object;>(Ljava/lang/Iterable<TT;>;Lorg/apache/commons/collections4/Predicate<-TT;>;)Z#predicate#0#1').
name_ref(p_predicate_72, param, 'predicate', 'Lorg/apache/commons/collections4/CollectionUtils;.filterInverse<T:Ljava/lang/Object;>(Ljava/lang/Iterable<TT;>;Lorg/apache/commons/collections4/Predicate<-TT;>;)Z#predicate#0#1').
name_ref(p_predicate_76, param, 'predicate', 'Lorg/apache/commons/collections4/CollectionUtils;.countMatches<C:Ljava/lang/Object;>(Ljava/lang/Iterable<TC;>;Lorg/apache/commons/collections4/Predicate<-TC;>;)I#predicate#0#1').
name_ref(p_predicate_78, param, 'predicate', 'Lorg/apache/commons/collections4/CollectionUtils;.exists<C:Ljava/lang/Object;>(Ljava/lang/Iterable<TC;>;Lorg/apache/commons/collections4/Predicate<-TC;>;)Z#predicate#0#1').
name_ref(p_predicate_80, param, 'predicate', 'Lorg/apache/commons/collections4/CollectionUtils;.matchesAll<C:Ljava/lang/Object;>(Ljava/lang/Iterable<TC;>;Lorg/apache/commons/collections4/Predicate<-TC;>;)Z#predicate#0#1').
name_ref(p_predicate_82, param, 'predicate', 'Lorg/apache/commons/collections4/CollectionUtils;.select<O:Ljava/lang/Object;>(Ljava/lang/Iterable<+TO;>;Lorg/apache/commons/collections4/Predicate<-TO;>;)Ljava/util/Collection<TO;>;#predicate#0#1').
name_ref(p_predicate_84, param, 'predicate', 'Lorg/apache/commons/collections4/CollectionUtils;.select<O:Ljava/lang/Object;R::Ljava/util/Collection<-TO;>;>(Ljava/lang/Iterable<+TO;>;Lorg/apache/commons/collections4/Predicate<-TO;>;TR;)TR;#predicate#0#1').
name_ref(p_predicate_87, param, 'predicate', 'Lorg/apache/commons/collections4/CollectionUtils;.select<O:Ljava/lang/Object;R::Ljava/util/Collection<-TO;>;>(Ljava/lang/Iterable<+TO;>;Lorg/apache/commons/collections4/Predicate<-TO;>;TR;TR;)TR;#predicate#0#1').
name_ref(p_predicate_91, param, 'predicate', 'Lorg/apache/commons/collections4/CollectionUtils;.selectRejected<O:Ljava/lang/Object;>(Ljava/lang/Iterable<+TO;>;Lorg/apache/commons/collections4/Predicate<-TO;>;)Ljava/util/Collection<TO;>;#predicate#0#1').
name_ref(p_predicate_93, param, 'predicate', 'Lorg/apache/commons/collections4/CollectionUtils;.selectRejected<O:Ljava/lang/Object;R::Ljava/util/Collection<-TO;>;>(Ljava/lang/Iterable<+TO;>;Lorg/apache/commons/collections4/Predicate<-TO;>;TR;)TR;#predicate#0#1').
name_ref(p_rejected_collection_89, param, 'rejectedCollection', 'Lorg/apache/commons/collections4/CollectionUtils;.select<O:Ljava/lang/Object;R::Ljava/util/Collection<-TO;>;>(Ljava/lang/Iterable<+TO;>;Lorg/apache/commons/collections4/Predicate<-TO;>;TR;TR;)TR;#rejectedCollection#0#3').
name_ref(p_remove_151, param, 'remove', 'Lorg/apache/commons/collections4/CollectionUtils;.removeAll<E:Ljava/lang/Object;>(Ljava/util/Collection<TE;>;Ljava/util/Collection<*>;)Ljava/util/Collection<TE;>;#remove#0#1').
name_ref(p_remove_153, param, 'remove', 'Lorg/apache/commons/collections4/CollectionUtils;.removeAll<E:Ljava/lang/Object;>(Ljava/lang/Iterable<TE;>;Ljava/lang/Iterable<+TE;>;Lorg/apache/commons/collections4/Equator<-TE;>;)Ljava/util/Collection<TE;>;#remove#0#1').
name_ref(p_retain_145, param, 'retain', 'Lorg/apache/commons/collections4/CollectionUtils;.retainAll<C:Ljava/lang/Object;>(Ljava/util/Collection<TC;>;Ljava/util/Collection<*>;)Ljava/util/Collection<TC;>;#retain#0#1').
name_ref(p_retain_147, param, 'retain', 'Lorg/apache/commons/collections4/CollectionUtils;.retainAll<E:Ljava/lang/Object;>(Ljava/lang/Iterable<TE;>;Ljava/lang/Iterable<+TE;>;Lorg/apache/commons/collections4/Equator<-TE;>;)Ljava/util/Collection<TE;>;#retain#0#1').
name_ref(p_t_223, param, 't', 'Lorg/apache/commons/collections4/map/CompositeMapTest$4481;.putAll(Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;[Ljava/util/Map<TK;TV;>;Ljava/util/Map<+TK;+TV;>;)V#t#0#2').
name_ref(p_t_234, param, 't', 'Lorg/apache/commons/collections4/map/CompositeMapTest$5538;.putAll(Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;[Ljava/util/Map<TK;TV;>;Ljava/util/Map<+TK;+TV;>;)V#t#0#2').
name_ref(p_t_245, param, 't', 'Lorg/apache/commons/collections4/map/CompositeMapTest$6600;.putAll(Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;[Ljava/util/Map<TK;TV;>;Ljava/util/Map<+TK;+TV;>;)V#t#0#2').
name_ref(p_test_name_201, param, 'testName', 'Lorg/apache/commons/collections4/map/CompositeMapTest;.(Ljava/lang/String;)V#testName#0#0').
name_ref(p_transformer_100, param, 'transformer', 'Lorg/apache/commons/collections4/CollectionUtils;.collect<I:Ljava/lang/Object;O:Ljava/lang/Object;R::Ljava/util/Collection<-TO;>;>(Ljava/lang/Iterable<+TI;>;Lorg/apache/commons/collections4/Transformer<-TI;+TO;>;TR;)TR;#transformer#0#1').
name_ref(p_transformer_103, param, 'transformer', 'Lorg/apache/commons/collections4/CollectionUtils;.collect<I:Ljava/lang/Object;O:Ljava/lang/Object;R::Ljava/util/Collection<-TO;>;>(Ljava/util/Iterator<+TI;>;Lorg/apache/commons/collections4/Transformer<-TI;+TO;>;TR;)TR;#transformer#0#1').
name_ref(p_transformer_161, param, 'transformer', 'Lorg/apache/commons/collections4/CollectionUtils;.transformingCollection<E:Ljava/lang/Object;>(Ljava/util/Collection<TE;>;Lorg/apache/commons/collections4/Transformer<-TE;+TE;>;)Ljava/util/Collection<TE;>;#transformer#0#1').
name_ref(p_transformer_74, param, 'transformer', 'Lorg/apache/commons/collections4/CollectionUtils;.transform<C:Ljava/lang/Object;>(Ljava/util/Collection<TC;>;Lorg/apache/commons/collections4/Transformer<-TC;+TC;>;)V#transformer#0#1').
name_ref(p_transformer_96, param, 'transformer', 'Lorg/apache/commons/collections4/CollectionUtils;.collect<I:Ljava/lang/Object;O:Ljava/lang/Object;>(Ljava/lang/Iterable<TI;>;Lorg/apache/commons/collections4/Transformer<-TI;+TO;>;)Ljava/util/Collection<TO;>;#transformer#0#1').
name_ref(p_transformer_98, param, 'transformer', 'Lorg/apache/commons/collections4/CollectionUtils;.collect<I:Ljava/lang/Object;O:Ljava/lang/Object;>(Ljava/util/Iterator<TI;>;Lorg/apache/commons/collections4/Transformer<-TI;+TO;>;)Ljava/util/Collection<TO;>;#transformer#0#1').
name_ref(p_two_164, param, 'two', 'Lorg/apache/commons/collections4/map/CompositeMap;.(Ljava/util/Map<TK;TV;>;Ljava/util/Map<TK;TV;>;)V#two#0#1').
name_ref(p_two_166, param, 'two', 'Lorg/apache/commons/collections4/map/CompositeMap;.(Ljava/util/Map<TK;TV;>;Ljava/util/Map<TK;TV;>;Lorg/apache/commons/collections4/map/CompositeMap$MapMutator<TK;TV;>;)V#two#0#1').
name_ref(p_value_182, param, 'value', 'Lorg/apache/commons/collections4/map/CompositeMap;.containsValue(Ljava/lang/Object;)Z#value#0#0').
name_ref(p_value_185, param, 'value', 'Lorg/apache/commons/collections4/map/CompositeMap;.put(TK;TV;)TV;#value#0#1').
name_ref(p_value_196, param, 'value', 'Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;.put(Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;[Ljava/util/Map<TK;TV;>;TK;TV;)TV;#value#0#3').
name_ref(p_value_220, param, 'value', 'Lorg/apache/commons/collections4/map/CompositeMapTest$4481;.put(Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;[Ljava/util/Map<TK;TV;>;TK;TV;)TV;#value#0#3').
name_ref(p_value_231, param, 'value', 'Lorg/apache/commons/collections4/map/CompositeMapTest$5538;.put(Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;[Ljava/util/Map<TK;TV;>;TK;TV;)TV;#value#0#3').
name_ref(p_value_242, param, 'value', 'Lorg/apache/commons/collections4/map/CompositeMapTest$6600;.put(Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;[Ljava/util/Map<TK;TV;>;TK;TV;)TV;#value#0#3').
name_ref(f_cardinality_a_3, field, 'cardinalityA', 'Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper<Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;:TO;>;.cardinalityA)Ljava/util/Map<Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;:TO;Ljava/lang/Integer;>;').
name_ref(f_cardinality_b_4, field, 'cardinalityB', 'Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper<Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;:TO;>;.cardinalityB)Ljava/util/Map<Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;:TO;Ljava/lang/Integer;>;').
name_ref(f_composite_172, field, 'composite', 'Lorg/apache/commons/collections4/map/CompositeMap<Lorg/apache/commons/collections4/map/CompositeMap;:TK;Lorg/apache/commons/collections4/map/CompositeMap;:TV;>;.composite)[Ljava/util/Map<Lorg/apache/commons/collections4/map/CompositeMap;:TK;Lorg/apache/commons/collections4/map/CompositeMap;:TV;>;').
name_ref(f_elements_14, field, 'elements', 'Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper<Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;:TO;>;.elements)Ljava/util/Set<Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;:TO;>;').
name_ref(f_empty_collection_19, field, 'EMPTY_COLLECTION', 'Lorg/apache/commons/collections4/CollectionUtils;.EMPTY_COLLECTION)Ljava/util/Collection<>;').
name_ref(f_length_179, field, 'length', '.length)I').
name_ref(f_mutator_171, field, 'mutator', 'Lorg/apache/commons/collections4/map/CompositeMap<Lorg/apache/commons/collections4/map/CompositeMap;:TK;Lorg/apache/commons/collections4/map/CompositeMap;:TV;>;.mutator)Lorg/apache/commons/collections4/map/CompositeMap$MapMutator<Lorg/apache/commons/collections4/map/CompositeMap;:TK;Lorg/apache/commons/collections4/map/CompositeMap;:TV;>;').
name_ref(f_new_list_15, field, 'newList', 'Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper<Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;:TO;>;.newList)Ljava/util/List<Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;:TO;>;').
name_ref(f_pass_200, field, 'pass', 'Lorg/apache/commons/collections4/map/CompositeMapTest;.pass)Z').
name_ref(f_pass_202, field, 'pass', 'Lorg/apache/commons/collections4/map/CompositeMapTest<Lorg/apache/commons/collections4/map/CompositeMapTest;:TK;Lorg/apache/commons/collections4/map/CompositeMapTest;:TV;>;.pass)Z').
name_ref(m_abstract_iterable_map_test_128, method, 'AbstractIterableMapTest', 'Lorg/apache/commons/collections4/map/AbstractIterableMapTest;.(Ljava/lang/String;)V').
name_ref(m_add_all_13, method, 'addAll', 'Lorg/apache/commons/collections4/CollectionUtils;.addAll<C:Ljava/lang/Object;>(Ljava/util/Collection<TC;>;Ljava/lang/Iterable<+TC;>;)Z').
name_ref(m_add_all_66, method, 'addAll', 'Ljava/util/Collection;.addAll(Ljava/util/Collection<+TE;>;)Z').
name_ref(m_add_all_67, method, 'addAll', 'Lorg/apache/commons/collections4/CollectionUtils;.addAll<C:Ljava/lang/Object;>(Ljava/util/Collection<TC;>;Ljava/util/Iterator<+TC;>;)Z').
name_ref(m_add_all_68, method, 'addAll', 'Lorg/apache/commons/collections4/CollectionUtils;.addAll<C:Ljava/lang/Object;>(Ljava/util/Collection<TC;>;Ljava/util/Enumeration<+TC;>;)Z').
name_ref(m_add_all_69, method, 'addAll', 'Lorg/apache/commons/collections4/CollectionUtils;.addAll<C:Ljava/lang/Object;>(Ljava/util/Collection<TC;>;[TC;)Z').
name_ref(m_add_composited_104, method, 'addComposited', 'Lorg/apache/commons/collections4/map/CompositeMap;.addComposited(Ljava/util/Map<TK;TV;>;)V|Ljava/lang/IllegalArgumentException;').
name_ref(m_add_ignore_null_65, method, 'addIgnoreNull', 'Lorg/apache/commons/collections4/CollectionUtils;.addIgnoreNull<T:Ljava/lang/Object;>(Ljava/util/Collection<TT;>;TT;)Z').
name_ref(m_array_list_14, method, 'ArrayList', 'Ljava/util/ArrayList;.(I)V').
name_ref(m_arraycopy_108, method, 'arraycopy', 'Ljava/lang/System;.arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V').
name_ref(m_build_one_132, method, 'buildOne', 'Lorg/apache/commons/collections4/map/CompositeMapTest;.buildOne()Ljava/util/Map<TK;TV;>;').
name_ref(m_build_two_134, method, 'buildTwo', 'Lorg/apache/commons/collections4/map/CompositeMapTest;.buildTwo()Ljava/util/Map<TK;TV;>;').
name_ref(m_cardinality_44, method, 'cardinality', 'Lorg/apache/commons/collections4/CollectionUtils;.cardinality<O:Ljava/lang/Object;>(TO;Ljava/lang/Iterable<-TO;>;)I').
name_ref(m_cardinality_helper_1, method, 'CardinalityHelper', 'Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;.(Ljava/lang/Iterable<+TO;>;Ljava/lang/Iterable<+TO;>;)V').
name_ref(m_check_index_bounds_71, method, 'checkIndexBounds', 'Lorg/apache/commons/collections4/CollectionUtils;.checkIndexBounds(I)V').
name_ref(m_clear_110, method, 'clear', 'Lorg/apache/commons/collections4/map/CompositeMap;.clear()V').
name_ref(m_collate_82, method, 'collate', 'Lorg/apache/commons/collections4/CollectionUtils;.collate<O::Ljava/lang/Comparable<-TO;>;>(Ljava/lang/Iterable<+TO;>;Ljava/lang/Iterable<+TO;>;)Ljava/util/List<TO;>;').
name_ref(m_collate_83, method, 'collate', 'Lorg/apache/commons/collections4/CollectionUtils;.collate<O::Ljava/lang/Comparable<-TO;>;>(Ljava/lang/Iterable<+TO;>;Ljava/lang/Iterable<+TO;>;Z)Ljava/util/List<TO;>;').
name_ref(m_collate_84, method, 'collate', 'Lorg/apache/commons/collections4/CollectionUtils;.collate<O:Ljava/lang/Object;>(Ljava/lang/Iterable<+TO;>;Ljava/lang/Iterable<+TO;>;Ljava/util/Comparator<-TO;>;)Ljava/util/List<TO;>;').
name_ref(m_collate_85, method, 'collate', 'Lorg/apache/commons/collections4/CollectionUtils;.collate<O:Ljava/lang/Object;>(Ljava/lang/Iterable<+TO;>;Ljava/lang/Iterable<+TO;>;Ljava/util/Comparator<-TO;>;Z)Ljava/util/List<TO;>;').
name_ref(m_collect_61, method, 'collect', 'Lorg/apache/commons/collections4/CollectionUtils;.collect<I:Ljava/lang/Object;O:Ljava/lang/Object;>(Ljava/lang/Iterable<TI;>;Lorg/apache/commons/collections4/Transformer<-TI;+TO;>;)Ljava/util/Collection<TO;>;').
name_ref(m_collect_62, method, 'collect', 'Lorg/apache/commons/collections4/CollectionUtils;.collect<I:Ljava/lang/Object;O:Ljava/lang/Object;>(Ljava/util/Iterator<TI;>;Lorg/apache/commons/collections4/Transformer<-TI;+TO;>;)Ljava/util/Collection<TO;>;').
name_ref(m_collect_63, method, 'collect', 'Lorg/apache/commons/collections4/CollectionUtils;.collect<I:Ljava/lang/Object;O:Ljava/lang/Object;R::Ljava/util/Collection<-TO;>;>(Ljava/lang/Iterable<+TI;>;Lorg/apache/commons/collections4/Transformer<-TI;+TO;>;TR;)TR;').
name_ref(m_collect_64, method, 'collect', 'Lorg/apache/commons/collections4/CollectionUtils;.collect<I:Ljava/lang/Object;O:Ljava/lang/Object;R::Ljava/util/Collection<-TO;>;>(Ljava/util/Iterator<+TI;>;Lorg/apache/commons/collections4/Transformer<-TI;+TO;>;TR;)TR;').
name_ref(m_collection_utils_21, method, 'CollectionUtils', 'Lorg/apache/commons/collections4/CollectionUtils;.()V').
name_ref(m_composite_map_100, method, 'CompositeMap', 'Lorg/apache/commons/collections4/map/CompositeMap;.(Ljava/util/Map<TK;TV;>;Ljava/util/Map<TK;TV;>;)V').
name_ref(m_composite_map_101, method, 'CompositeMap', 'Lorg/apache/commons/collections4/map/CompositeMap;.([Ljava/util/Map<TK;TV;>;Lorg/apache/commons/collections4/map/CompositeMap$MapMutator<TK;TV;>;)V').
name_ref(m_composite_map_102, method, 'CompositeMap', 'Lorg/apache/commons/collections4/map/CompositeMap;.(Ljava/util/Map<TK;TV;>;Ljava/util/Map<TK;TV;>;Lorg/apache/commons/collections4/map/CompositeMap$MapMutator<TK;TV;>;)V').
name_ref(m_composite_map_103, method, 'CompositeMap', 'Lorg/apache/commons/collections4/map/CompositeMap;.([Ljava/util/Map<TK;TV;>;)V').
name_ref(m_composite_map_99, method, 'CompositeMap', 'Lorg/apache/commons/collections4/map/CompositeMap;.()V').
name_ref(m_composite_map_test_127, method, 'CompositeMapTest', 'Lorg/apache/commons/collections4/map/CompositeMapTest;.(Ljava/lang/String;)V').
name_ref(m_contains_all_29, method, 'containsAll', 'Lorg/apache/commons/collections4/CollectionUtils;.containsAll(Ljava/util/Collection<*>;Ljava/util/Collection<*>;)Z').
name_ref(m_contains_any_30, method, 'containsAny', 'Lorg/apache/commons/collections4/CollectionUtils;.containsAny<T:Ljava/lang/Object;>(Ljava/util/Collection<*>;[TT;)Z').
name_ref(m_contains_any_31, method, 'containsAny', 'Lorg/apache/commons/collections4/CollectionUtils;.containsAny(Ljava/util/Collection<*>;Ljava/util/Collection<*>;)Z').
name_ref(m_contains_key_111, method, 'containsKey', 'Lorg/apache/commons/collections4/map/CompositeMap;.containsKey(Ljava/lang/Object;)Z').
name_ref(m_contains_value_112, method, 'containsValue', 'Lorg/apache/commons/collections4/map/CompositeMap;.containsValue(Ljava/lang/Object;)Z').
name_ref(m_count_matches_53, method, 'countMatches', 'Lorg/apache/commons/collections4/CollectionUtils;.countMatches<C:Ljava/lang/Object;>(Ljava/lang/Iterable<TC;>;Lorg/apache/commons/collections4/Predicate<-TC;>;)I').
name_ref(m_disjunction_26, method, 'disjunction', 'Lorg/apache/commons/collections4/CollectionUtils;.disjunction<O:Ljava/lang/Object;>(Ljava/lang/Iterable<+TO;>;Ljava/lang/Iterable<+TO;>;)Ljava/util/Collection<TO;>;').
name_ref(m_empty_collection_22, method, 'emptyCollection', 'Lorg/apache/commons/collections4/CollectionUtils;.emptyCollection<T:Ljava/lang/Object;>()Ljava/util/Collection<TT;>;').
name_ref(m_empty_if_null_23, method, 'emptyIfNull', 'Lorg/apache/commons/collections4/CollectionUtils;.emptyIfNull<T:Ljava/lang/Object;>(Ljava/util/Collection<TT;>;)Ljava/util/Collection<TT;>;').
name_ref(m_empty_list_20, method, 'emptyList', 'Ljava/util/Collections;.emptyList<T:Ljava/lang/Object;>()Ljava/util/List<TT;>;').
name_ref(m_entry_set_113, method, 'entrySet', 'Lorg/apache/commons/collections4/map/CompositeMap;.entrySet()Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;').
name_ref(m_equals_122, method, 'equals', 'Lorg/apache/commons/collections4/map/CompositeMap;.equals(Ljava/lang/Object;)Z').
name_ref(m_equals_42, method, 'equals', 'Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper;.equals(Ljava/lang/Object;)Z').
name_ref(m_equator_wrapper_40, method, 'EquatorWrapper', 'Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper;.(Lorg/apache/commons/collections4/Equator<-TO;>;TO;)V').
name_ref(m_exists_54, method, 'exists', 'Lorg/apache/commons/collections4/CollectionUtils;.exists<C:Ljava/lang/Object;>(Ljava/lang/Iterable<TC;>;Lorg/apache/commons/collections4/Predicate<-TC;>;)Z').
name_ref(m_extract_singleton_97, method, 'extractSingleton', 'Lorg/apache/commons/collections4/CollectionUtils;.extractSingleton<E:Ljava/lang/Object;>(Ljava/util/Collection<TE;>;)TE;').
name_ref(m_filter_50, method, 'filter', 'Lorg/apache/commons/collections4/CollectionUtils;.filter<T:Ljava/lang/Object;>(Ljava/lang/Iterable<TT;>;Lorg/apache/commons/collections4/Predicate<-TT;>;)Z').
name_ref(m_filter_inverse_51, method, 'filterInverse', 'Lorg/apache/commons/collections4/CollectionUtils;.filterInverse<T:Ljava/lang/Object;>(Ljava/lang/Iterable<TT;>;Lorg/apache/commons/collections4/Predicate<-TT;>;)Z').
name_ref(m_find_45, method, 'find', 'Lorg/apache/commons/collections4/CollectionUtils;.find<T:Ljava/lang/Object;>(Ljava/lang/Iterable<TT;>;Lorg/apache/commons/collections4/Predicate<-TT;>;)TT;').
name_ref(m_for_all_but_last_do_48, method, 'forAllButLastDo', 'Lorg/apache/commons/collections4/CollectionUtils;.forAllButLastDo<T:Ljava/lang/Object;C::Lorg/apache/commons/collections4/Closure<-TT;>;>(Ljava/lang/Iterable<TT;>;TC;)TT;').
name_ref(m_for_all_but_last_do_49, method, 'forAllButLastDo', 'Lorg/apache/commons/collections4/CollectionUtils;.forAllButLastDo<T:Ljava/lang/Object;C::Lorg/apache/commons/collections4/Closure<-TT;>;>(Ljava/util/Iterator<TT;>;TC;)TT;').
name_ref(m_for_all_do_46, method, 'forAllDo', 'Lorg/apache/commons/collections4/CollectionUtils;.forAllDo<T:Ljava/lang/Object;C::Lorg/apache/commons/collections4/Closure<-TT;>;>(Ljava/lang/Iterable<TT;>;TC;)TC;').
name_ref(m_for_all_do_47, method, 'forAllDo', 'Lorg/apache/commons/collections4/CollectionUtils;.forAllDo<T:Ljava/lang/Object;C::Lorg/apache/commons/collections4/Closure<-TT;>;>(Ljava/util/Iterator<TT;>;TC;)TC;').
name_ref(m_freq_a_6, method, 'freqA', 'Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;.freqA(Ljava/lang/Object;)I').
name_ref(m_freq_b_7, method, 'freqB', 'Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;.freqB(Ljava/lang/Object;)I').
name_ref(m_get_114, method, 'get', 'Lorg/apache/commons/collections4/map/CompositeMap;.get(Ljava/lang/Object;)TV;').
name_ref(m_get_70, method, 'get', 'Lorg/apache/commons/collections4/CollectionUtils;.get<T:Ljava/lang/Object;>(Ljava/util/Iterator<TT;>;I)TT;').
name_ref(m_get_72, method, 'get', 'Lorg/apache/commons/collections4/CollectionUtils;.get<T:Ljava/lang/Object;>(Ljava/lang/Iterable<TT;>;I)TT;').
name_ref(m_get_73, method, 'get', 'Lorg/apache/commons/collections4/CollectionUtils;.get(Ljava/lang/Object;I)Ljava/lang/Object;').
name_ref(m_get_74, method, 'get', 'Lorg/apache/commons/collections4/CollectionUtils;.get<K:Ljava/lang/Object;V:Ljava/lang/Object;>(Ljava/util/Map<TK;TV;>;I)Ljava/util/Map$Entry<TK;TV;>;').
name_ref(m_get_9, method, 'get', 'Ljava/util/Map;.get(Ljava/lang/Object;)TV;').
name_ref(m_get_cardinality_map_2, method, 'getCardinalityMap', 'Lorg/apache/commons/collections4/CollectionUtils;.getCardinalityMap<O:Ljava/lang/Object;>(Ljava/lang/Iterable<+TO;>;)Ljava/util/Map<TO;Ljava/lang/Integer;>;').
name_ref(m_get_compatibility_version_152, method, 'getCompatibilityVersion', 'Lorg/apache/commons/collections4/map/CompositeMapTest;.getCompatibilityVersion()Ljava/lang/String;').
name_ref(m_get_freq_8, method, 'getFreq', 'Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;.getFreq(Ljava/lang/Object;Ljava/util/Map<*Ljava/lang/Integer;>;)I').
name_ref(m_get_object_41, method, 'getObject', 'Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper;.getObject()TO;').
name_ref(m_hash_code_123, method, 'hashCode', 'Lorg/apache/commons/collections4/map/CompositeMap;.hashCode()I').
name_ref(m_hash_code_43, method, 'hashCode', 'Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper;.hashCode()I').
name_ref(m_hash_map_32, method, 'HashMap', 'Ljava/util/HashMap;.()V').
name_ref(m_hash_set_12, method, 'HashSet', 'Ljava/util/HashSet;.()V').
name_ref(m_int_value_10, method, 'intValue', 'Ljava/lang/Integer;.intValue()I').
name_ref(m_intersection_25, method, 'intersection', 'Lorg/apache/commons/collections4/CollectionUtils;.intersection<O:Ljava/lang/Object;>(Ljava/lang/Iterable<+TO;>;Ljava/lang/Iterable<+TO;>;)Ljava/util/Collection<TO;>;').
name_ref(m_is_empty_115, method, 'isEmpty', 'Lorg/apache/commons/collections4/map/CompositeMap;.isEmpty()Z').
name_ref(m_is_empty_77, method, 'isEmpty', 'Lorg/apache/commons/collections4/CollectionUtils;.isEmpty(Ljava/util/Collection<*>;)Z').
name_ref(m_is_equal_collection_37, method, 'isEqualCollection', 'Lorg/apache/commons/collections4/CollectionUtils;.isEqualCollection(Ljava/util/Collection<*>;Ljava/util/Collection<*>;)Z').
name_ref(m_is_equal_collection_38, method, 'isEqualCollection', 'Lorg/apache/commons/collections4/CollectionUtils;.isEqualCollection<E:Ljava/lang/Object;>(Ljava/util/Collection<+TE;>;Ljava/util/Collection<+TE;>;Lorg/apache/commons/collections4/Equator<-TE;>;)Z').
name_ref(m_is_full_80, method, 'isFull', 'Lorg/apache/commons/collections4/CollectionUtils;.isFull(Ljava/util/Collection<+Ljava/lang/Object;>;)Z').
name_ref(m_is_not_empty_78, method, 'isNotEmpty', 'Lorg/apache/commons/collections4/CollectionUtils;.isNotEmpty(Ljava/util/Collection<*>;)Z').
name_ref(m_is_proper_sub_collection_36, method, 'isProperSubCollection', 'Lorg/apache/commons/collections4/CollectionUtils;.isProperSubCollection(Ljava/util/Collection<*>;Ljava/util/Collection<*>;)Z').
name_ref(m_is_sub_collection_35, method, 'isSubCollection', 'Lorg/apache/commons/collections4/CollectionUtils;.isSubCollection(Ljava/util/Collection<*>;Ljava/util/Collection<*>;)Z').
name_ref(m_iterator_16, method, 'iterator', 'Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;.iterator()Ljava/util/Iterator<TO;>;').
name_ref(m_iterator_17, method, 'iterator', 'Ljava/util/Set;.iterator()Ljava/util/Iterator<TE;>;').
name_ref(m_key_set_106, method, 'keySet', 'Ljava/util/Map;.keySet()Ljava/util/Set<TK;>;').
name_ref(m_key_set_116, method, 'keySet', 'Lorg/apache/commons/collections4/map/CompositeMap;.keySet()Ljava/util/Set<TK;>;').
name_ref(m_list_19, method, 'list', 'Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;.list()Ljava/util/Collection<TO;>;').
name_ref(m_make_object_131, method, 'makeObject', 'Lorg/apache/commons/collections4/map/CompositeMapTest;.makeObject()Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;').
name_ref(m_map_iterator_98, method, 'mapIterator', 'Lorg/apache/commons/collections4/map/AbstractIterableMap;.mapIterator()Lorg/apache/commons/collections4/MapIterator<TK;TV;>;').
name_ref(m_matches_all_55, method, 'matchesAll', 'Lorg/apache/commons/collections4/CollectionUtils;.matchesAll<C:Ljava/lang/Object;>(Ljava/lang/Iterable<TC;>;Lorg/apache/commons/collections4/Predicate<-TC;>;)Z').
name_ref(m_max_3, method, 'max', 'Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;.max(Ljava/lang/Object;)I').
name_ref(m_max_size_81, method, 'maxSize', 'Lorg/apache/commons/collections4/CollectionUtils;.maxSize(Ljava/util/Collection<+Ljava/lang/Object;>;)I').
name_ref(m_min_4, method, 'min', 'Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;.min(Ljava/lang/Object;)I').
name_ref(m_min_5, method, 'min', 'Ljava/lang/Math;.min(II)I').
name_ref(m_permutations_86, method, 'permutations', 'Lorg/apache/commons/collections4/CollectionUtils;.permutations<E:Ljava/lang/Object;>(Ljava/util/Collection<TE;>;)Ljava/util/Collection<Ljava/util/List<TE;>;>;').
name_ref(m_predicated_collection_95, method, 'predicatedCollection', 'Lorg/apache/commons/collections4/CollectionUtils;.predicatedCollection<C:Ljava/lang/Object;>(Ljava/util/Collection<TC;>;Lorg/apache/commons/collections4/Predicate<-TC;>;)Ljava/util/Collection<TC;>;').
name_ref(m_put_117, method, 'put', 'Lorg/apache/commons/collections4/map/CompositeMap;.put(TK;TV;)TV;').
name_ref(m_put_125, method, 'put', 'Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;.put(Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;[Ljava/util/Map<TK;TV;>;TK;TV;)TV;').
name_ref(m_put_133, method, 'put', 'Ljava/util/HashMap;.put(TK;TV;)TV;').
name_ref(m_put_142, method, 'put', 'Lorg/apache/commons/collections4/map/CompositeMapTest$4481;.put(Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;[Ljava/util/Map<TK;TV;>;TK;TV;)TV;').
name_ref(m_put_146, method, 'put', 'Lorg/apache/commons/collections4/map/CompositeMapTest$5538;.put(Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;[Ljava/util/Map<TK;TV;>;TK;TV;)TV;').
name_ref(m_put_150, method, 'put', 'Lorg/apache/commons/collections4/map/CompositeMapTest$6600;.put(Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;[Ljava/util/Map<TK;TV;>;TK;TV;)TV;').
name_ref(m_put_33, method, 'put', 'Ljava/util/Map;.put(TK;TV;)TV;').
name_ref(m_put_all_118, method, 'putAll', 'Lorg/apache/commons/collections4/map/CompositeMap;.putAll(Ljava/util/Map<+TK;+TV;>;)V').
name_ref(m_put_all_126, method, 'putAll', 'Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;.putAll(Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;[Ljava/util/Map<TK;TV;>;Ljava/util/Map<+TK;+TV;>;)V').
name_ref(m_put_all_143, method, 'putAll', 'Lorg/apache/commons/collections4/map/CompositeMapTest$4481;.putAll(Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;[Ljava/util/Map<TK;TV;>;Ljava/util/Map<+TK;+TV;>;)V').
name_ref(m_put_all_147, method, 'putAll', 'Lorg/apache/commons/collections4/map/CompositeMapTest$5538;.putAll(Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;[Ljava/util/Map<TK;TV;>;Ljava/util/Map<+TK;+TV;>;)V').
name_ref(m_put_all_151, method, 'putAll', 'Lorg/apache/commons/collections4/map/CompositeMapTest$6600;.putAll(Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;[Ljava/util/Map<TK;TV;>;Ljava/util/Map<+TK;+TV;>;)V').
name_ref(m_remove_119, method, 'remove', 'Lorg/apache/commons/collections4/map/CompositeMap;.remove(Ljava/lang/Object;)TV;').
name_ref(m_remove_all_90, method, 'removeAll', 'Lorg/apache/commons/collections4/CollectionUtils;.removeAll<E:Ljava/lang/Object;>(Ljava/util/Collection<TE;>;Ljava/util/Collection<*>;)Ljava/util/Collection<TE;>;').
name_ref(m_remove_all_91, method, 'removeAll', 'Lorg/apache/commons/collections4/CollectionUtils;.removeAll<E:Ljava/lang/Object;>(Ljava/lang/Iterable<TE;>;Ljava/lang/Iterable<+TE;>;Lorg/apache/commons/collections4/Equator<-TE;>;)Ljava/util/Collection<TE;>;').
name_ref(m_remove_composited_109, method, 'removeComposited', 'Lorg/apache/commons/collections4/map/CompositeMap;.removeComposited(Ljava/util/Map<TK;TV;>;)Ljava/util/Map<TK;TV;>;').
name_ref(m_resolve_collision_124, method, 'resolveCollision', 'Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;.resolveCollision(Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;Ljava/util/Map<TK;TV;>;Ljava/util/Map<TK;TV;>;Ljava/util/Collection<TK;>;)V').
name_ref(m_resolve_collision_141, method, 'resolveCollision', 'Lorg/apache/commons/collections4/map/CompositeMapTest$4481;.resolveCollision(Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;Ljava/util/Map<TK;TV;>;Ljava/util/Map<TK;TV;>;Ljava/util/Collection<TK;>;)V').
name_ref(m_resolve_collision_145, method, 'resolveCollision', 'Lorg/apache/commons/collections4/map/CompositeMapTest$5538;.resolveCollision(Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;Ljava/util/Map<TK;TV;>;Ljava/util/Map<TK;TV;>;Ljava/util/Collection<TK;>;)V').
name_ref(m_resolve_collision_149, method, 'resolveCollision', 'Lorg/apache/commons/collections4/map/CompositeMapTest$6600;.resolveCollision(Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;Ljava/util/Map<TK;TV;>;Ljava/util/Map<TK;TV;>;Ljava/util/Collection<TK;>;)V').
name_ref(m_retain_all_87, method, 'retainAll', 'Lorg/apache/commons/collections4/CollectionUtils;.retainAll<C:Ljava/lang/Object;>(Ljava/util/Collection<TC;>;Ljava/util/Collection<*>;)Ljava/util/Collection<TC;>;').
name_ref(m_retain_all_88, method, 'retainAll', 'Lorg/apache/commons/collections4/CollectionUtils;.retainAll<E:Ljava/lang/Object;>(Ljava/lang/Iterable<TE;>;Ljava/lang/Iterable<+TE;>;Lorg/apache/commons/collections4/Equator<-TE;>;)Ljava/util/Collection<TE;>;').
name_ref(m_reverse_array_79, method, 'reverseArray', 'Lorg/apache/commons/collections4/CollectionUtils;.reverseArray([Ljava/lang/Object;)V').
name_ref(m_select_56, method, 'select', 'Lorg/apache/commons/collections4/CollectionUtils;.select<O:Ljava/lang/Object;>(Ljava/lang/Iterable<+TO;>;Lorg/apache/commons/collections4/Predicate<-TO;>;)Ljava/util/Collection<TO;>;').
name_ref(m_select_57, method, 'select', 'Lorg/apache/commons/collections4/CollectionUtils;.select<O:Ljava/lang/Object;R::Ljava/util/Collection<-TO;>;>(Ljava/lang/Iterable<+TO;>;Lorg/apache/commons/collections4/Predicate<-TO;>;TR;)TR;').
name_ref(m_select_58, method, 'select', 'Lorg/apache/commons/collections4/CollectionUtils;.select<O:Ljava/lang/Object;R::Ljava/util/Collection<-TO;>;>(Ljava/lang/Iterable<+TO;>;Lorg/apache/commons/collections4/Predicate<-TO;>;TR;TR;)TR;').
name_ref(m_select_rejected_59, method, 'selectRejected', 'Lorg/apache/commons/collections4/CollectionUtils;.selectRejected<O:Ljava/lang/Object;>(Ljava/lang/Iterable<+TO;>;Lorg/apache/commons/collections4/Predicate<-TO;>;)Ljava/util/Collection<TO;>;').
name_ref(m_select_rejected_60, method, 'selectRejected', 'Lorg/apache/commons/collections4/CollectionUtils;.selectRejected<O:Ljava/lang/Object;R::Ljava/util/Collection<-TO;>;>(Ljava/lang/Iterable<+TO;>;Lorg/apache/commons/collections4/Predicate<-TO;>;TR;)TR;').
name_ref(m_set_cardinality_18, method, 'setCardinality', 'Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;.setCardinality(TO;I)V').
name_ref(m_set_mutator_105, method, 'setMutator', 'Lorg/apache/commons/collections4/map/CompositeMap;.setMutator(Lorg/apache/commons/collections4/map/CompositeMap$MapMutator<TK;TV;>;)V').
name_ref(m_set_operation_cardinality_helper_11, method, 'SetOperationCardinalityHelper', 'Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;.(Ljava/lang/Iterable<+TO;>;Ljava/lang/Iterable<+TO;>;)V').
name_ref(m_set_up_129, method, 'setUp', 'Lorg/apache/commons/collections4/map/CompositeMapTest;.setUp()V|Ljava/lang/Exception;').
name_ref(m_set_up_130, method, 'setUp', 'Ljunit/framework/TestCase;.setUp()V|Ljava/lang/Exception;').
name_ref(m_size_107, method, 'size', 'Ljava/util/Collection;.size()I').
name_ref(m_size_120, method, 'size', 'Lorg/apache/commons/collections4/map/CompositeMap;.size()I').
name_ref(m_size_15, method, 'size', 'Ljava/util/Set;.size()I').
name_ref(m_size_75, method, 'size', 'Lorg/apache/commons/collections4/CollectionUtils;.size(Ljava/lang/Object;)I').
name_ref(m_size_is_empty_76, method, 'sizeIsEmpty', 'Lorg/apache/commons/collections4/CollectionUtils;.sizeIsEmpty(Ljava/lang/Object;)Z').
name_ref(m_subtract_27, method, 'subtract', 'Lorg/apache/commons/collections4/CollectionUtils;.subtract<O:Ljava/lang/Object;>(Ljava/lang/Iterable<+TO;>;Ljava/lang/Iterable<+TO;>;)Ljava/util/Collection<TO;>;').
name_ref(m_subtract_28, method, 'subtract', 'Lorg/apache/commons/collections4/CollectionUtils;.subtract<O:Ljava/lang/Object;>(Ljava/lang/Iterable<+TO;>;Ljava/lang/Iterable<+TO;>;Lorg/apache/commons/collections4/Predicate<TO;>;)Ljava/util/Collection<TO;>;').
name_ref(m_synchronized_collection_93, method, 'synchronizedCollection', 'Lorg/apache/commons/collections4/CollectionUtils;.synchronizedCollection<C:Ljava/lang/Object;>(Ljava/util/Collection<TC;>;)Ljava/util/Collection<TC;>;').
name_ref(m_test_add_composited_136, method, 'testAddComposited', 'Lorg/apache/commons/collections4/map/CompositeMapTest;.testAddComposited()V').
name_ref(m_test_get_135, method, 'testGet', 'Lorg/apache/commons/collections4/map/CompositeMapTest;.testGet()V').
name_ref(m_test_put_144, method, 'testPut', 'Lorg/apache/commons/collections4/map/CompositeMapTest;.testPut()V').
name_ref(m_test_put_all_148, method, 'testPutAll', 'Lorg/apache/commons/collections4/map/CompositeMapTest;.testPutAll()V').
name_ref(m_test_remove_composited_137, method, 'testRemoveComposited', 'Lorg/apache/commons/collections4/map/CompositeMapTest;.testRemoveComposited()V').
name_ref(m_test_remove_from_composited_139, method, 'testRemoveFromComposited', 'Lorg/apache/commons/collections4/map/CompositeMapTest;.testRemoveFromComposited()V').
name_ref(m_test_remove_from_underlying_138, method, 'testRemoveFromUnderlying', 'Lorg/apache/commons/collections4/map/CompositeMapTest;.testRemoveFromUnderlying()V').
name_ref(m_test_resolve_collision_140, method, 'testResolveCollision', 'Lorg/apache/commons/collections4/map/CompositeMapTest;.testResolveCollision()V').
name_ref(m_transform_39, method, 'transform', 'Lorg/apache/commons/collections4/CollectionUtils$23873;.transform(Ljava/lang/Object;)Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper<*>;').
name_ref(m_transform_52, method, 'transform', 'Lorg/apache/commons/collections4/CollectionUtils;.transform<C:Ljava/lang/Object;>(Ljava/util/Collection<TC;>;Lorg/apache/commons/collections4/Transformer<-TC;+TC;>;)V').
name_ref(m_transform_89, method, 'transform', 'Lorg/apache/commons/collections4/CollectionUtils$74318;.transform(TE;)Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper<TE;>;').
name_ref(m_transform_92, method, 'transform', 'Lorg/apache/commons/collections4/CollectionUtils$78609;.transform(TE;)Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper<TE;>;').
name_ref(m_transforming_collection_96, method, 'transformingCollection', 'Lorg/apache/commons/collections4/CollectionUtils;.transformingCollection<E:Ljava/lang/Object;>(Ljava/util/Collection<TE;>;Lorg/apache/commons/collections4/Transformer<-TE;+TE;>;)Ljava/util/Collection<TE;>;').
name_ref(m_union_24, method, 'union', 'Lorg/apache/commons/collections4/CollectionUtils;.union<O:Ljava/lang/Object;>(Ljava/lang/Iterable<+TO;>;Ljava/lang/Iterable<+TO;>;)Ljava/util/Collection<TO;>;').
name_ref(m_unmodifiable_collection_94, method, 'unmodifiableCollection', 'Lorg/apache/commons/collections4/CollectionUtils;.unmodifiableCollection<C:Ljava/lang/Object;>(Ljava/util/Collection<+TC;>;)Ljava/util/Collection<TC;>;').
name_ref(m_value_of_34, method, 'valueOf', 'Ljava/lang/Integer;.valueOf(I)Ljava/lang/Integer;').
name_ref(m_values_121, method, 'values', 'Lorg/apache/commons/collections4/map/CompositeMap;.values()Ljava/util/Collection<TV;>;').
name_ref(q_length_1, q_name, 'composite.length', 'Lorg/apache/commons/collections4/map/CompositeMap;.([Ljava/util/Map<TK;TV;>;Lorg/apache/commons/collections4/map/CompositeMap$MapMutator<TK;TV;>;)V#composite#0#0:.length)I').
name_ref(q_length_2, q_name, 'composite.length', 'Lorg/apache/commons/collections4/map/CompositeMap<Lorg/apache/commons/collections4/map/CompositeMap;:TK;Lorg/apache/commons/collections4/map/CompositeMap;:TV;>;.composite)[Ljava/util/Map<Lorg/apache/commons/collections4/map/CompositeMap;:TK;Lorg/apache/commons/collections4/map/CompositeMap;:TV;>;:.length)I').
name_ref(q_length_3, q_name, 'temp.length', 'Lorg/apache/commons/collections4/map/CompositeMap;.addComposited(Ljava/util/Map<TK;TV;>;)V|Ljava/lang/IllegalArgumentException;#temp:.length)I').

%%% End of Code Facts

