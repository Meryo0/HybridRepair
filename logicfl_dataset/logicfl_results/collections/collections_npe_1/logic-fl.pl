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
test_failure(failure_2, 'org.apache.commons.collections4.map.CompositeMapTest', 'testRemoveComposited').
trace(trace_18, failure_2, m_add_composited_104, line(composite_map_1, 136), failure_2, target).
trace(trace_19, trace_18, m_test_remove_composited_137, line(composite_map_test_1, 94), failure_2, target).
trace(trace_20, trace_19, 'invoke0', line(jdk_internal_reflect_native_method_accessor_impl, -2), failure_2, non_target).
trace(trace_21, trace_20, 'invoke', line(jdk_internal_reflect_native_method_accessor_impl, 77), failure_2, non_target).
trace(trace_22, trace_21, 'invoke', line(jdk_internal_reflect_delegating_method_accessor_impl, 43), failure_2, non_target).
trace(trace_23, trace_22, 'invoke', line(java_lang_reflect_method, 569), failure_2, non_target).
trace(trace_24, trace_23, 'runTest', line(junit_framework_test_case, 177), failure_2, non_target).
trace(trace_25, trace_24, 'runBare', line(junit_framework_test_case, 142), failure_2, non_target).
trace(trace_26, trace_25, 'protect', line(junit_framework_test_result_1, 122), failure_2, non_target).
trace(trace_27, trace_26, 'runProtected', line(junit_framework_test_result, 142), failure_2, non_target).
trace(trace_28, trace_27, 'run', line(junit_framework_test_result, 125), failure_2, non_target).
trace(trace_29, trace_28, 'run', line(junit_framework_test_case, 130), failure_2, non_target).
trace(trace_30, trace_29, 'runTest', line(junit_framework_test_suite, 241), failure_2, non_target).
trace(trace_31, trace_30, 'run', line(junit_framework_test_suite, 236), failure_2, non_target).
trace(trace_32, trace_31, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_2, non_target).
trace(trace_33, trace_32, 'run', line(org_junit_runner_junit_core, 137), failure_2, non_target).
trace(trace_34, trace_33, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_2, non_target).
test_failure(failure_3, 'org.apache.commons.collections4.map.CompositeMapTest', 'testRemoveFromUnderlying').
trace(trace_35, failure_3, m_add_composited_104, line(composite_map_1, 136), failure_3, target).
trace(trace_36, trace_35, m_test_remove_from_underlying_138, line(composite_map_test_1, 111), failure_3, target).
trace(trace_37, trace_36, 'invoke0', line(jdk_internal_reflect_native_method_accessor_impl, -2), failure_3, non_target).
trace(trace_38, trace_37, 'invoke', line(jdk_internal_reflect_native_method_accessor_impl, 77), failure_3, non_target).
trace(trace_39, trace_38, 'invoke', line(jdk_internal_reflect_delegating_method_accessor_impl, 43), failure_3, non_target).
trace(trace_40, trace_39, 'invoke', line(java_lang_reflect_method, 569), failure_3, non_target).
trace(trace_41, trace_40, 'runTest', line(junit_framework_test_case, 177), failure_3, non_target).
trace(trace_42, trace_41, 'runBare', line(junit_framework_test_case, 142), failure_3, non_target).
trace(trace_43, trace_42, 'protect', line(junit_framework_test_result_1, 122), failure_3, non_target).
trace(trace_44, trace_43, 'runProtected', line(junit_framework_test_result, 142), failure_3, non_target).
trace(trace_45, trace_44, 'run', line(junit_framework_test_result, 125), failure_3, non_target).
trace(trace_46, trace_45, 'run', line(junit_framework_test_case, 130), failure_3, non_target).
trace(trace_47, trace_46, 'runTest', line(junit_framework_test_suite, 241), failure_3, non_target).
trace(trace_48, trace_47, 'run', line(junit_framework_test_suite, 236), failure_3, non_target).
trace(trace_49, trace_48, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_3, non_target).
trace(trace_50, trace_49, 'run', line(org_junit_runner_junit_core, 137), failure_3, non_target).
trace(trace_51, trace_50, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_3, non_target).
test_failure(failure_4, 'org.apache.commons.collections4.map.CompositeMapTest', 'testRemoveFromComposited').
trace(trace_52, failure_4, m_add_composited_104, line(composite_map_1, 136), failure_4, target).
trace(trace_53, trace_52, m_test_remove_from_composited_139, line(composite_map_test_1, 125), failure_4, target).
trace(trace_54, trace_53, 'invoke0', line(jdk_internal_reflect_native_method_accessor_impl, -2), failure_4, non_target).
trace(trace_55, trace_54, 'invoke', line(jdk_internal_reflect_native_method_accessor_impl, 77), failure_4, non_target).
trace(trace_56, trace_55, 'invoke', line(jdk_internal_reflect_delegating_method_accessor_impl, 43), failure_4, non_target).
trace(trace_57, trace_56, 'invoke', line(java_lang_reflect_method, 569), failure_4, non_target).
trace(trace_58, trace_57, 'runTest', line(junit_framework_test_case, 177), failure_4, non_target).
trace(trace_59, trace_58, 'runBare', line(junit_framework_test_case, 142), failure_4, non_target).
trace(trace_60, trace_59, 'protect', line(junit_framework_test_result_1, 122), failure_4, non_target).
trace(trace_61, trace_60, 'runProtected', line(junit_framework_test_result, 142), failure_4, non_target).
trace(trace_62, trace_61, 'run', line(junit_framework_test_result, 125), failure_4, non_target).
trace(trace_63, trace_62, 'run', line(junit_framework_test_case, 130), failure_4, non_target).
trace(trace_64, trace_63, 'runTest', line(junit_framework_test_suite, 241), failure_4, non_target).
trace(trace_65, trace_64, 'run', line(junit_framework_test_suite, 236), failure_4, non_target).
trace(trace_66, trace_65, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_4, non_target).
trace(trace_67, trace_66, 'run', line(org_junit_runner_junit_core, 137), failure_4, non_target).
trace(trace_68, trace_67, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_4, non_target).



%%% End of Static Facts

%%% Values

val(p_map_175, null, line(composite_map_1, 136)).



%%% End of Facts