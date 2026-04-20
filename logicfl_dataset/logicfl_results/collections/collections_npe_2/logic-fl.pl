%%% Logic-FL Facts
:- style_check(-discontiguous).

%unmodifiable_list_1 - org.apache.commons.collections4.list.UnmodifiableList
param(p_list_195, 1, m_unmodifiable_list_142).
return(unmodifiable_list_1_expr2, m_unmodifiable_list_142, line(unmodifiable_list_1, 59)).
method_invoc(unmodifiable_list_1_expr2, m_unmodifiable_list_143, line(unmodifiable_list_1, 59)).
argument(p_list_195, 1, unmodifiable_list_1_expr2).
param(p_list_196, 1, m_unmodifiable_list_143).
method_invoc(unmodifiable_list_1_expr3, m_abstract_serializable_list_decorator_139, line(unmodifiable_list_1, 71)).
argument(unmodifiable_list_1_expr4, 1, unmodifiable_list_1_expr3).
assign(unmodifiable_list_1_expr4, p_list_196, line(unmodifiable_list_1, 71)).
return(unmodifiable_list_1_expr5, m_iterator_144, line(unmodifiable_list_1, 77)).
method_invoc(unmodifiable_list_1_expr5, m_unmodifiable_iterator_116, line(unmodifiable_list_1, 77)).
argument(unmodifiable_list_1_expr6, 1, unmodifiable_list_1_expr5).
ref(t_unmodifiable_iterator_5, unmodifiable_list_1_expr5, line(unmodifiable_list_1, 77)).
method_invoc(unmodifiable_list_1_expr6, m_iterator_145, line(unmodifiable_list_1, 77)).
ref(unmodifiable_list_1_expr7, unmodifiable_list_1_expr6, line(unmodifiable_list_1, 77)).
method_invoc(unmodifiable_list_1_expr7, m_decorated_126, line(unmodifiable_list_1, 77)).
param(p_object_197, 1, m_add_146).
param(p_coll_198, 1, m_add_all_147).
param(p_object_199, 1, m_remove_149).
param(p_coll_200, 1, m_remove_all_150).
param(p_coll_201, 1, m_retain_all_151).
param(p_index_202, 1, m_list_iterator_153).
param(p_index_203, 1, m_add_154).
param(p_object_204, 2, m_add_154).
param(p_index_205, 1, m_add_all_155).
param(p_coll_206, 2, m_add_all_155).
param(p_index_207, 1, m_remove_156).
param(p_index_208, 1, m_set_157).
param(p_object_209, 2, m_set_157).
param(p_from_index_210, 1, m_sub_list_158).
param(p_to_index_211, 2, m_sub_list_158).

%composite_set_1 - org.apache.commons.collections4.set.CompositeSet
assign(f_all_212, composite_set_1_expr1, line(composite_set_1, 58)).
method_invoc(composite_set_1_expr1, m_array_list_159, line(composite_set_1, 58)).
method_invoc(composite_set_1_expr2, m_object_118, line(composite_set_1, 64)).
param(p_set_213, 1, m_composite_set_161).
param(p_sets_214, 1, m_composite_set_162).
method_invoc(composite_set_1_expr3, m_object_118, line(composite_set_1, 83)).
method_invoc(composite_set_1_expr4, m_add_composited_163, line(composite_set_1, 84)).
argument(p_sets_214, 1, composite_set_1_expr4).
param(p_obj_215, 1, m_contains_166).
param(p_array_216, 1, m_to_array_169).
param(p_obj_217, 1, m_add_170).
param(p_obj_218, 1, m_remove_171).
param(p_coll_219, 1, m_contains_all_172).
ref(p_coll_219, composite_set_1_stmt4, line(composite_set_1, 255)).
param(p_coll_221, 1, m_add_all_173).
param(p_coll_222, 1, m_remove_all_174).
method_invoc(composite_set_1_expr6, m_size_175, line(composite_set_1, 294)).
ref(p_coll_222, composite_set_1_expr6, line(composite_set_1, 294)).
param(p_coll_223, 1, m_retain_all_176).
param(p_mutator_224, 1, m_set_mutator_178).
param(p_set_225, 1, m_add_composited_179).
ref(composite_set_1_expr7, composite_set_1_stmt6, line(composite_set_1, 357)).
method_invoc(composite_set_1_expr7, m_get_sets_180, line(composite_set_1, 357)).
assign(v_intersects_227, composite_set_1_expr8, line(composite_set_1, 358)).
method_invoc(composite_set_1_expr8, m_intersection_25, line(composite_set_1, 358)).
argument(v_existing_set_226, 1, composite_set_1_expr8).
argument(p_set_225, 2, composite_set_1_expr8).
ref(t_collection_utils_1, composite_set_1_expr8, line(composite_set_1, 358)).
method_invoc(composite_set_1_expr10, m_size_175, line(composite_set_1, 359)).
ref(v_intersects_227, composite_set_1_expr10, line(composite_set_1, 359)).
method_invoc(composite_set_1_expr11, m_add_181, line(composite_set_1, 371)).
argument(p_set_225, 1, composite_set_1_expr11).
ref(f_all_228, composite_set_1_expr11, line(composite_set_1, 371)).
param(p_set_1_229, 1, m_add_composited_182).
param(p_set_2_230, 2, m_add_composited_182).
method_invoc(composite_set_1_expr12, m_add_composited_179, line(composite_set_1, 381)).
argument(p_set_1_229, 1, composite_set_1_expr12).
method_invoc(composite_set_1_expr13, m_add_composited_179, line(composite_set_1, 382)).
argument(p_set_2_230, 1, composite_set_1_expr13).
param(p_sets_231, 1, m_add_composited_163).
ref(p_sets_231, composite_set_1_stmt12, line(composite_set_1, 391)).
method_invoc(composite_set_1_expr14, m_add_composited_179, line(composite_set_1, 392)).
argument(v_set_232, 1, composite_set_1_expr14).
param(p_set_233, 1, m_remove_composited_183).
return(composite_set_1_expr15, m_get_sets_180, line(composite_set_1, 422)).
method_invoc(composite_set_1_expr15, m_unmodifiable_list_142, line(composite_set_1, 422)).
argument(f_all_228, 1, composite_set_1_expr15).
ref(t_unmodifiable_list_6, composite_set_1_expr15, line(composite_set_1, 422)).
param(p_obj_234, 1, m_equals_186).
param(p_composite_235, 1, m_add_188).
param(p_sets_236, 2, m_add_188).
param(p_obj_237, 3, m_add_188).
param(p_composite_238, 1, m_add_all_189).
param(p_sets_239, 2, m_add_all_189).
param(p_coll_240, 3, m_add_all_189).
param(p_comp_241, 1, m_resolve_collision_190).
param(p_existing_242, 2, m_resolve_collision_190).
param(p_added_243, 3, m_resolve_collision_190).
param(p_intersects_244, 4, m_resolve_collision_190).

%composite_set_test_1 - org.apache.commons.collections4.set.CompositeSetTest
param(p_name_245, 1, m_composite_set_test_191).
method_invoc(composite_set_test_1_expr1, m_abstract_set_test_192, line(composite_set_test_1, 34)).
argument(p_name_245, 1, composite_set_test_1_expr1).
assign(v_set_246, composite_set_test_1_expr2, line(composite_set_test_1, 47)).
method_invoc(composite_set_test_1_expr2, m_hash_set_12, line(composite_set_test_1, 47)).
method_invoc(composite_set_test_1_expr3, m_add_195, line(composite_set_test_1, 48)).
argument(composite_set_test_1_expr4, 1, composite_set_test_1_expr3).
ref(v_set_246, composite_set_test_1_expr3, line(composite_set_test_1, 48)).
assign(composite_set_test_1_expr4, composite_set_test_1_literal1, line(composite_set_test_1, 48)).
method_invoc(composite_set_test_1_expr5, m_add_195, line(composite_set_test_1, 49)).
argument(composite_set_test_1_expr6, 1, composite_set_test_1_expr5).
ref(v_set_246, composite_set_test_1_expr5, line(composite_set_test_1, 49)).
assign(composite_set_test_1_expr6, composite_set_test_1_literal2, line(composite_set_test_1, 49)).
return(v_set_246, m_build_one_194, line(composite_set_test_1, 50)).
assign(v_set_247, composite_set_test_1_expr7, line(composite_set_test_1, 55)).
method_invoc(composite_set_test_1_expr7, m_hash_set_12, line(composite_set_test_1, 55)).
method_invoc(composite_set_test_1_expr8, m_add_195, line(composite_set_test_1, 56)).
argument(composite_set_test_1_expr9, 1, composite_set_test_1_expr8).
ref(v_set_247, composite_set_test_1_expr8, line(composite_set_test_1, 56)).
assign(composite_set_test_1_expr9, composite_set_test_1_literal3, line(composite_set_test_1, 56)).
method_invoc(composite_set_test_1_expr10, m_add_195, line(composite_set_test_1, 57)).
argument(composite_set_test_1_expr11, 1, composite_set_test_1_expr10).
ref(v_set_247, composite_set_test_1_expr10, line(composite_set_test_1, 57)).
assign(composite_set_test_1_expr11, composite_set_test_1_literal4, line(composite_set_test_1, 57)).
return(v_set_247, m_build_two_196, line(composite_set_test_1, 58)).
assign(v_set_248, composite_set_test_1_expr12, line(composite_set_test_1, 69)).
method_invoc(composite_set_test_1_expr12, m_composite_set_162, line(composite_set_test_1, 69)).
argument(composite_set_test_1_expr13, 1, composite_set_test_1_expr12).
method_invoc(composite_set_test_1_expr15, m_build_one_194, line(composite_set_test_1, 69)).
method_invoc(composite_set_test_1_expr16, m_build_two_196, line(composite_set_test_1, 69)).
method_invoc(composite_set_test_1_expr17, m_assert_false_199, line(composite_set_test_1, 70)).
argument(composite_set_test_1_expr18, 1, composite_set_test_1_expr17).
method_invoc(composite_set_test_1_expr18, m_contains_all_172, line(composite_set_test_1, 70)).
throw(composite_set_test_1_expr18, null_pointer_exception, line(composite_set_test_1, 70)).
argument(composite_set_test_1_literal5, 1, composite_set_test_1_expr18).
ref(v_set_248, composite_set_test_1_expr18, line(composite_set_test_1, 70)).
assign(v_set_249, composite_set_test_1_expr19, line(composite_set_test_1, 75)).
method_invoc(composite_set_test_1_expr19, m_composite_set_162, line(composite_set_test_1, 75)).
argument(composite_set_test_1_expr20, 1, composite_set_test_1_expr19).
method_invoc(composite_set_test_1_expr22, m_build_one_194, line(composite_set_test_1, 75)).
method_invoc(composite_set_test_1_expr23, m_build_two_196, line(composite_set_test_1, 75)).
method_invoc(composite_set_test_1_expr24, m_assert_false_199, line(composite_set_test_1, 76)).
argument(composite_set_test_1_expr25, 1, composite_set_test_1_expr24).
method_invoc(composite_set_test_1_expr25, m_remove_all_174, line(composite_set_test_1, 76)).
throw(composite_set_test_1_expr25, null_pointer_exception, line(composite_set_test_1, 76)).
argument(composite_set_test_1_literal6, 1, composite_set_test_1_expr25).
ref(v_set_249, composite_set_test_1_expr25, line(composite_set_test_1, 76)).
param(p_comp_250, 1, m_resolve_collision_204).
param(p_existing_251, 2, m_resolve_collision_204).
param(p_added_252, 3, m_resolve_collision_204).
param(p_intersects_253, 4, m_resolve_collision_204).
param(p_composite_254, 1, m_add_205).
param(p_collections_255, 2, m_add_205).
param(p_obj_256, 3, m_add_205).
param(p_composite_257, 1, m_add_all_206).
param(p_collections_258, 2, m_add_all_206).
param(p_coll_259, 3, m_add_all_206).
assign(v_one_260, composite_set_test_1_expr26, line(composite_set_test_1, 143)).
method_invoc(composite_set_test_1_expr26, m_build_one_194, line(composite_set_test_1, 143)).
assign(v_two_261, composite_set_test_1_expr27, line(composite_set_test_1, 144)).
method_invoc(composite_set_test_1_expr27, m_build_two_196, line(composite_set_test_1, 144)).
assign(v_set_262, composite_set_test_1_expr28, line(composite_set_test_1, 145)).
method_invoc(composite_set_test_1_expr28, m_composite_set_160, line(composite_set_test_1, 145)).
method_invoc(composite_set_test_1_expr29, m_add_composited_182, line(composite_set_test_1, 146)).
argument(v_one_260, 1, composite_set_test_1_expr29).
argument(v_two_261, 2, composite_set_test_1_expr29).
ref(v_set_262, composite_set_test_1_expr29, line(composite_set_test_1, 146)).
method_invoc(composite_set_test_1_expr30, m_add_composited_179, line(composite_set_test_1, 147)).
argument(composite_set_test_1_expr31, 1, composite_set_test_1_expr30).
ref(v_set_262, composite_set_test_1_expr30, line(composite_set_test_1, 147)).
assign(composite_set_test_1_expr31, composite_set_test_1_literal7, line(composite_set_test_1, 147)).
throw(composite_set_test_1_expr17, null_pointer_exception, line(composite_set_test_1, 70)).
throw(composite_set_test_1_expr24, null_pointer_exception, line(composite_set_test_1, 76)).

%abstract_collection_decorator_1 - org.apache.commons.collections4.collection.AbstractCollectionDecorator
param(p_coll_163, 1, m_abstract_collection_decorator_99).
assign(f_collection_164, p_coll_163, line(abstract_collection_decorator_1, 81)).
return(f_collection_164, m_decorated_100, line(abstract_collection_decorator_1, 91)).
param(p_coll_165, 1, m_set_collection_101).
param(p_object_166, 1, m_add_102).
param(p_coll_167, 1, m_add_all_103).
param(p_object_168, 1, m_contains_105).
param(p_object_169, 1, m_remove_108).
param(p_object_170, 1, m_to_array_111).
param(p_coll_171, 1, m_contains_all_112).
param(p_coll_172, 1, m_remove_all_113).
param(p_coll_173, 1, m_retain_all_114).

%unmodifiable_iterator_1 - org.apache.commons.collections4.iterators.UnmodifiableIterator
param(p_iterator_174, 1, m_unmodifiable_iterator_116).
return(unmodifiable_iterator_1_expr3, m_unmodifiable_iterator_116, line(unmodifiable_iterator_1, 55)).
method_invoc(unmodifiable_iterator_1_expr3, m_unmodifiable_iterator_117, line(unmodifiable_iterator_1, 55)).
argument(p_iterator_174, 1, unmodifiable_iterator_1_expr3).
param(p_iterator_175, 1, m_unmodifiable_iterator_117).
method_invoc(unmodifiable_iterator_1_expr4, m_object_118, line(unmodifiable_iterator_1, 65)).
assign(f_iterator_176, p_iterator_175, line(unmodifiable_iterator_1, 66)).
return(unmodifiable_iterator_1_expr8, m_has_next_119, line(unmodifiable_iterator_1, 72)).
method_invoc(unmodifiable_iterator_1_expr8, m_has_next_120, line(unmodifiable_iterator_1, 72)).
ref(f_iterator_176, unmodifiable_iterator_1_expr8, line(unmodifiable_iterator_1, 72)).
return(unmodifiable_iterator_1_expr9, m_next_121, line(unmodifiable_iterator_1, 77)).
method_invoc(unmodifiable_iterator_1_expr9, m_next_122, line(unmodifiable_iterator_1, 77)).
ref(f_iterator_176, unmodifiable_iterator_1_expr9, line(unmodifiable_iterator_1, 77)).

%abstract_list_decorator_1 - org.apache.commons.collections4.list.AbstractListDecorator
param(p_list_177, 1, m_abstract_list_decorator_125).
method_invoc(abstract_list_decorator_1_expr1, m_abstract_collection_decorator_99, line(abstract_list_decorator_1, 54)).
argument(p_list_177, 1, abstract_list_decorator_1_expr1).
return(abstract_list_decorator_1_expr2, m_decorated_126, line(abstract_list_decorator_1, 64)).
assign(abstract_list_decorator_1_expr2, abstract_list_decorator_1_expr3, line(abstract_list_decorator_1, 64)).
method_invoc(abstract_list_decorator_1_expr3, m_decorated_100, line(abstract_list_decorator_1, 64)).
param(p_object_178, 1, m_equals_127).
param(p_index_179, 1, m_add_129).
param(p_object_180, 2, m_add_129).
param(p_index_181, 1, m_add_all_130).
param(p_coll_182, 2, m_add_all_130).
param(p_index_183, 1, m_get_131).
param(p_object_184, 1, m_index_of_132).
param(p_object_185, 1, m_last_index_of_133).
param(p_index_186, 1, m_list_iterator_135).
param(p_index_187, 1, m_remove_136).
param(p_index_188, 1, m_set_137).
param(p_object_189, 2, m_set_137).
param(p_from_index_190, 1, m_sub_list_138).
param(p_to_index_191, 2, m_sub_list_138).

%abstract_serializable_list_decorator_1 - org.apache.commons.collections4.list.AbstractSerializableListDecorator
param(p_list_192, 1, m_abstract_serializable_list_decorator_139).
method_invoc(abstract_serializable_list_decorator_1_expr1, m_abstract_list_decorator_125, line(abstract_serializable_list_decorator_1, 43)).
argument(p_list_192, 1, abstract_serializable_list_decorator_1_expr1).
param(p_out_193, 1, m_write_object_140).
throw(m_write_object_140, ioexception).
param(p_in_194, 1, m_read_object_141).
throw(m_read_object_141, ioexception).
throw(m_read_object_141, class_not_found_exception).

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
test_failure(failure_1, 'org.apache.commons.collections4.set.CompositeSetTest', 'testContainsAll').
trace(trace_1, failure_1, m_contains_all_172, line(composite_set_1, 255), failure_1, target).
trace(trace_2, trace_1, m_test_contains_all_198, line(composite_set_test_1, 70), failure_1, target).
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
test_failure(failure_2, 'org.apache.commons.collections4.set.CompositeSetTest', 'testRemoveAll').
trace(trace_18, failure_2, m_remove_all_174, line(composite_set_1, 294), failure_2, target).
trace(trace_19, trace_18, m_test_remove_all_200, line(composite_set_test_1, 76), failure_2, target).
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
test_failure(failure_3, 'org.apache.commons.collections4.set.CompositeSetTest', 'testAddComposited').
trace(trace_35, failure_3, m_get_cardinality_map_2, line(collection_utils_1, 469), failure_3, target).
trace(trace_36, trace_35, m_cardinality_helper_1, line(collection_utils_1, 75), failure_3, target).
trace(trace_37, trace_36, m_set_operation_cardinality_helper_11, line(collection_utils_1, 141), failure_3, target).
trace(trace_38, trace_37, m_intersection_25, line(collection_utils_1, 254), failure_3, target).
trace(trace_39, trace_38, m_add_composited_179, line(composite_set_1, 358), failure_3, target).
trace(trace_40, trace_39, m_test_add_composited_207, line(composite_set_test_1, 147), failure_3, target).
trace(trace_41, trace_40, 'invoke0', line(jdk_internal_reflect_native_method_accessor_impl, -2), failure_3, non_target).
trace(trace_42, trace_41, 'invoke', line(jdk_internal_reflect_native_method_accessor_impl, 77), failure_3, non_target).
trace(trace_43, trace_42, 'invoke', line(jdk_internal_reflect_delegating_method_accessor_impl, 43), failure_3, non_target).
trace(trace_44, trace_43, 'invoke', line(java_lang_reflect_method, 569), failure_3, non_target).
trace(trace_45, trace_44, 'runTest', line(junit_framework_test_case, 177), failure_3, non_target).
trace(trace_46, trace_45, 'runBare', line(junit_framework_test_case, 142), failure_3, non_target).
trace(trace_47, trace_46, 'protect', line(junit_framework_test_result_1, 122), failure_3, non_target).
trace(trace_48, trace_47, 'runProtected', line(junit_framework_test_result, 142), failure_3, non_target).
trace(trace_49, trace_48, 'run', line(junit_framework_test_result, 125), failure_3, non_target).
trace(trace_50, trace_49, 'run', line(junit_framework_test_case, 130), failure_3, non_target).
trace(trace_51, trace_50, 'runTest', line(junit_framework_test_suite, 241), failure_3, non_target).
trace(trace_52, trace_51, 'run', line(junit_framework_test_suite, 236), failure_3, non_target).
trace(trace_53, trace_52, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_3, non_target).
trace(trace_54, trace_53, 'run', line(org_junit_runner_junit_core, 137), failure_3, non_target).
trace(trace_55, trace_54, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_3, non_target).



%%% End of Static Facts

%%% Values

val(p_b_2, null, line(collection_utils_1, 75)).
val(p_b_13, null, line(collection_utils_1, 141)).
val(p_b_24, null, line(collection_utils_1, 254)).
val(p_coll_40, null, line(collection_utils_1, 469)).
val(p_coll_219, null, line(composite_set_1, 255)).
val(p_coll_222, null, line(composite_set_1, 294)).
val(p_set_225, null, line(composite_set_1, 358)).



%%% End of Facts