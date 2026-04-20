%%% Logic-FL Facts
:- style_check(-discontiguous).

%composite_collection_1 - org.apache.commons.collections4.collection.CompositeCollection
assign(f_all_1, composite_collection_1_expr1, line(composite_collection_1, 50)).
method_invoc(composite_collection_1_expr1, m_array_list_1, line(composite_collection_1, 50)).
method_invoc(composite_collection_1_expr2, m_object_3, line(composite_collection_1, 56)).
param(p_composite_collection_2, 1, m_composite_collection_4).
param(p_composite_collection1_3, 1, m_composite_collection_5).
param(p_composite_collection2_4, 2, m_composite_collection_5).
param(p_composite_collections_5, 1, m_composite_collection_6).
assign(v_size_6, composite_collection_1_literal1, line(composite_collection_1, 101)).
ref(f_all_7, composite_collection_1_stmt3, line(composite_collection_1, 102)).
assign(v_size_6, composite_collection_1_expr4, line(composite_collection_1, 103)).
method_invoc(composite_collection_1_expr4, m_size_8, line(composite_collection_1, 103)).
ref(v_item_8, composite_collection_1_expr4, line(composite_collection_1, 103)).
param(p_obj_9, 1, m_contains_10).
ref(f_all_7, composite_collection_1_stmt5, line(composite_collection_1, 135)).
method_invoc(composite_collection_1_expr5, m_contains_11, line(composite_collection_1, 136)).
argument(p_obj_9, 1, composite_collection_1_expr5).
ref(v_item_10, composite_collection_1_expr5, line(composite_collection_1, 136)).
return(composite_collection_1_literal2, m_contains_10, line(composite_collection_1, 137)).
return(composite_collection_1_literal3, m_contains_10, line(composite_collection_1, 140)).
param(p_array_11, 1, m_to_array_14).
param(p_obj_12, 1, m_add_15).
param(p_obj_13, 1, m_remove_16).
param(p_coll_14, 1, m_contains_all_17).
ref(p_coll_14, composite_collection_1_stmt9, line(composite_collection_1, 263)).
method_invoc(composite_collection_1_expr7, m_contains_10, line(composite_collection_1, 264)).
argument(v_item_15, 1, composite_collection_1_expr7).
return(composite_collection_1_literal5, m_contains_all_17, line(composite_collection_1, 268)).
param(p_coll_16, 1, m_add_all_18).
param(p_coll_17, 1, m_remove_all_19).
method_invoc(composite_collection_1_expr9, m_size_8, line(composite_collection_1, 303)).
ref(p_coll_17, composite_collection_1_expr9, line(composite_collection_1, 303)).
assign(v_changed_18, composite_collection_1_literal7, line(composite_collection_1, 306)).
ref(f_all_7, composite_collection_1_stmt14, line(composite_collection_1, 307)).
assign(v_changed_18, composite_collection_1_expr11, line(composite_collection_1, 308)).
method_invoc(composite_collection_1_expr11, m_remove_all_20, line(composite_collection_1, 308)).
argument(p_coll_17, 1, composite_collection_1_expr11).
ref(v_item_19, composite_collection_1_expr11, line(composite_collection_1, 308)).
return(v_changed_18, m_remove_all_19, line(composite_collection_1, 310)).
param(p_coll_20, 1, m_retain_all_21).
assign(v_changed_21, composite_collection_1_literal8, line(composite_collection_1, 325)).
ref(f_all_7, composite_collection_1_stmt18, line(composite_collection_1, 326)).
assign(v_changed_21, composite_collection_1_expr13, line(composite_collection_1, 327)).
method_invoc(composite_collection_1_expr13, m_retain_all_22, line(composite_collection_1, 327)).
argument(p_coll_20, 1, composite_collection_1_expr13).
ref(v_item_22, composite_collection_1_expr13, line(composite_collection_1, 327)).
return(v_changed_21, m_retain_all_21, line(composite_collection_1, 329)).
param(p_mutator_23, 1, m_set_mutator_24).
assign(f_mutator_24, p_mutator_23, line(composite_collection_1, 353)).
param(p_composite_collection_25, 1, m_add_composited_25).
method_invoc(composite_collection_1_expr17, m_add_26, line(composite_collection_1, 362)).
argument(p_composite_collection_25, 1, composite_collection_1_expr17).
ref(f_all_7, composite_collection_1_expr17, line(composite_collection_1, 362)).
param(p_composite_collection1_26, 1, m_add_composited_27).
param(p_composite_collection2_27, 2, m_add_composited_27).
method_invoc(composite_collection_1_expr18, m_add_26, line(composite_collection_1, 373)).
argument(p_composite_collection1_26, 1, composite_collection_1_expr18).
ref(f_all_7, composite_collection_1_expr18, line(composite_collection_1, 373)).
method_invoc(composite_collection_1_expr19, m_add_26, line(composite_collection_1, 374)).
argument(p_composite_collection2_27, 1, composite_collection_1_expr19).
ref(f_all_7, composite_collection_1_expr19, line(composite_collection_1, 374)).
param(p_composite_collections_28, 1, m_add_composited_28).
method_invoc(composite_collection_1_expr20, m_add_all_29, line(composite_collection_1, 383)).
argument(composite_collection_1_expr21, 1, composite_collection_1_expr20).
ref(f_all_7, composite_collection_1_expr20, line(composite_collection_1, 383)).
method_invoc(composite_collection_1_expr21, m_as_list_30, line(composite_collection_1, 383)).
argument(p_composite_collections_28, 1, composite_collection_1_expr21).
ref(t_arrays_1, composite_collection_1_expr21, line(composite_collection_1, 383)).
param(p_coll_29, 1, m_remove_composited_31).
param(p_composite_30, 1, m_add_35).
param(p_collections_31, 2, m_add_35).
param(p_obj_32, 3, m_add_35).
param(p_composite_33, 1, m_add_all_36).
param(p_collections_34, 2, m_add_all_36).
param(p_coll_35, 3, m_add_all_36).
param(p_composite_36, 1, m_remove_37).
param(p_collections_37, 2, m_remove_37).
param(p_obj_38, 3, m_remove_37).
throw(composite_collection_1_expr13, null_pointer_exception, line(composite_collection_1, 327)).

%composite_collection_test_1 - org.apache.commons.collections4.collection.CompositeCollectionTest
param(p_name_39, 1, m_composite_collection_test_38).
method_invoc(composite_collection_test_1_expr1, m_abstract_collection_test_39, line(composite_collection_test_1, 43)).
argument(p_name_39, 1, composite_collection_test_1_expr1).
method_invoc(composite_collection_test_1_expr2, m_set_up_test_49, line(composite_collection_test_1, 111)).
method_invoc(composite_collection_test_1_expr3, m_set_mutator_24, line(composite_collection_test_1, 112)).
argument(composite_collection_test_1_expr4, 1, composite_collection_test_1_expr3).
ref(f_c_40, composite_collection_test_1_expr3, line(composite_collection_test_1, 112)).
method_invoc(composite_collection_test_1_expr4, m__50, line(composite_collection_test_1, 112)).
param(p_composite_41, 1, m_add_51).
param(p_collections_42, 2, m_add_51).
param(p_obj_43, 3, m_add_51).
param(p_composite_44, 1, m_add_all_52).
param(p_collections_45, 2, m_add_all_52).
param(p_coll_46, 3, m_add_all_52).
param(p_composite_47, 1, m_remove_53).
param(p_collections_48, 2, m_remove_53).
param(p_obj_49, 3, m_remove_53).
assign(f_c_40, composite_collection_test_1_expr6, line(composite_collection_test_1, 143)).
method_invoc(composite_collection_test_1_expr6, m_composite_collection_2, line(composite_collection_test_1, 143)).
assign(f_one_50, composite_collection_test_1_expr8, line(composite_collection_test_1, 144)).
method_invoc(composite_collection_test_1_expr8, m_hash_set_54, line(composite_collection_test_1, 144)).
assign(f_two_51, composite_collection_test_1_expr10, line(composite_collection_test_1, 145)).
method_invoc(composite_collection_test_1_expr10, m_hash_set_54, line(composite_collection_test_1, 145)).
param(p_composite_52, 1, m_add_56).
param(p_collections_53, 2, m_add_56).
param(p_obj_54, 3, m_add_56).
param(p_composite_55, 1, m_add_all_57).
param(p_collections_56, 2, m_add_all_57).
param(p_coll_57, 3, m_add_all_57).
param(p_composite_58, 1, m_remove_58).
param(p_collections_59, 2, m_remove_58).
param(p_obj_60, 3, m_remove_58).
param(p_composite_61, 1, m_add_61).
param(p_collections_62, 2, m_add_61).
param(p_obj_63, 3, m_add_61).
param(p_composite_64, 1, m_add_all_62).
param(p_collections_65, 2, m_add_all_62).
param(p_coll_66, 3, m_add_all_62).
param(p_composite_67, 1, m_remove_63).
param(p_collections_68, 2, m_remove_63).
param(p_obj_69, 3, m_remove_63).
method_invoc(composite_collection_test_1_expr11, m_set_up_test_49, line(composite_collection_test_1, 246)).
method_invoc(composite_collection_test_1_expr12, m_add_66, line(composite_collection_test_1, 247)).
argument(composite_collection_test_1_expr13, 1, composite_collection_test_1_expr12).
ref(f_one_50, composite_collection_test_1_expr12, line(composite_collection_test_1, 247)).
assign(composite_collection_test_1_expr13, composite_collection_test_1_literal1, line(composite_collection_test_1, 247)).
method_invoc(composite_collection_test_1_expr14, m_add_66, line(composite_collection_test_1, 248)).
argument(composite_collection_test_1_expr15, 1, composite_collection_test_1_expr14).
ref(f_two_51, composite_collection_test_1_expr14, line(composite_collection_test_1, 248)).
assign(composite_collection_test_1_expr15, composite_collection_test_1_literal2, line(composite_collection_test_1, 248)).
method_invoc(composite_collection_test_1_expr16, m_add_composited_25, line(composite_collection_test_1, 249)).
argument(f_one_50, 1, composite_collection_test_1_expr16).
ref(f_c_40, composite_collection_test_1_expr16, line(composite_collection_test_1, 249)).
method_invoc(composite_collection_test_1_expr17, m_assert_true_67, line(composite_collection_test_1, 250)).
argument(composite_collection_test_1_expr18, 1, composite_collection_test_1_expr17).
method_invoc(composite_collection_test_1_expr18, m_contains_all_17, line(composite_collection_test_1, 250)).
argument(f_two_51, 1, composite_collection_test_1_expr18).
ref(f_c_40, composite_collection_test_1_expr18, line(composite_collection_test_1, 250)).
method_invoc(composite_collection_test_1_expr19, m_assert_false_68, line(composite_collection_test_1, 251)).
argument(composite_collection_test_1_expr20, 1, composite_collection_test_1_expr19).
method_invoc(composite_collection_test_1_expr20, m_contains_all_17, line(composite_collection_test_1, 251)).
throw(composite_collection_test_1_expr20, null_pointer_exception, line(composite_collection_test_1, 251)).
argument(composite_collection_test_1_literal3, 1, composite_collection_test_1_expr20).
ref(f_c_40, composite_collection_test_1_expr20, line(composite_collection_test_1, 251)).
assign(v_null_list_70, composite_collection_test_1_literal4, line(composite_collection_test_1, 255)).
assign(v_cc_71, composite_collection_test_1_expr21, line(composite_collection_test_1, 256)).
method_invoc(composite_collection_test_1_expr21, m_composite_collection_2, line(composite_collection_test_1, 256)).
method_invoc(composite_collection_test_1_expr22, m_add_composited_25, line(composite_collection_test_1, 257)).
argument(v_null_list_70, 1, composite_collection_test_1_expr22).
ref(v_cc_71, composite_collection_test_1_expr22, line(composite_collection_test_1, 257)).
method_invoc(composite_collection_test_1_expr23, m_assert_equals_70, line(composite_collection_test_1, 258)).
argument(composite_collection_test_1_literal5, 1, composite_collection_test_1_expr23).
argument(composite_collection_test_1_expr24, 2, composite_collection_test_1_expr23).
ref(t_assert_2, composite_collection_test_1_expr23, line(composite_collection_test_1, 258)).
method_invoc(composite_collection_test_1_expr24, m_size_7, line(composite_collection_test_1, 258)).
throw(composite_collection_test_1_expr24, null_pointer_exception, line(composite_collection_test_1, 258)).
ref(v_cc_71, composite_collection_test_1_expr24, line(composite_collection_test_1, 258)).
assign(v_null_list_72, composite_collection_test_1_literal6, line(composite_collection_test_1, 262)).
assign(v_cc_73, composite_collection_test_1_expr25, line(composite_collection_test_1, 263)).
method_invoc(composite_collection_test_1_expr25, m_composite_collection_2, line(composite_collection_test_1, 263)).
method_invoc(composite_collection_test_1_expr26, m_add_composited_27, line(composite_collection_test_1, 264)).
argument(v_null_list_72, 1, composite_collection_test_1_expr26).
argument(v_null_list_72, 2, composite_collection_test_1_expr26).
ref(v_cc_73, composite_collection_test_1_expr26, line(composite_collection_test_1, 264)).
method_invoc(composite_collection_test_1_expr27, m_assert_equals_70, line(composite_collection_test_1, 265)).
argument(composite_collection_test_1_literal7, 1, composite_collection_test_1_expr27).
argument(composite_collection_test_1_expr28, 2, composite_collection_test_1_expr27).
ref(t_assert_2, composite_collection_test_1_expr27, line(composite_collection_test_1, 265)).
method_invoc(composite_collection_test_1_expr28, m_size_7, line(composite_collection_test_1, 265)).
throw(composite_collection_test_1_expr28, null_pointer_exception, line(composite_collection_test_1, 265)).
ref(v_cc_73, composite_collection_test_1_expr28, line(composite_collection_test_1, 265)).
assign(v_null_list_74, composite_collection_test_1_literal8, line(composite_collection_test_1, 269)).
assign(v_cc_75, composite_collection_test_1_expr29, line(composite_collection_test_1, 270)).
method_invoc(composite_collection_test_1_expr29, m_composite_collection_2, line(composite_collection_test_1, 270)).
method_invoc(composite_collection_test_1_expr30, m_add_composited_28, line(composite_collection_test_1, 271)).
argument(v_null_list_74, 1, composite_collection_test_1_expr30).
argument(v_null_list_74, 2, composite_collection_test_1_expr30).
argument(v_null_list_74, 3, composite_collection_test_1_expr30).
ref(v_cc_75, composite_collection_test_1_expr30, line(composite_collection_test_1, 271)).
method_invoc(composite_collection_test_1_expr31, m_assert_equals_70, line(composite_collection_test_1, 272)).
argument(composite_collection_test_1_literal9, 1, composite_collection_test_1_expr31).
argument(composite_collection_test_1_expr32, 2, composite_collection_test_1_expr31).
ref(t_assert_2, composite_collection_test_1_expr31, line(composite_collection_test_1, 272)).
method_invoc(composite_collection_test_1_expr32, m_size_7, line(composite_collection_test_1, 272)).
throw(composite_collection_test_1_expr32, null_pointer_exception, line(composite_collection_test_1, 272)).
ref(v_cc_75, composite_collection_test_1_expr32, line(composite_collection_test_1, 272)).
method_invoc(composite_collection_test_1_expr33, m_set_up_mutator_test_48, line(composite_collection_test_1, 331)).
method_invoc(composite_collection_test_1_expr34, m_add_66, line(composite_collection_test_1, 332)).
argument(composite_collection_test_1_expr35, 1, composite_collection_test_1_expr34).
ref(f_one_50, composite_collection_test_1_expr34, line(composite_collection_test_1, 332)).
assign(composite_collection_test_1_expr35, composite_collection_test_1_literal10, line(composite_collection_test_1, 332)).
method_invoc(composite_collection_test_1_expr36, m_add_66, line(composite_collection_test_1, 333)).
argument(composite_collection_test_1_expr37, 1, composite_collection_test_1_expr36).
ref(f_two_51, composite_collection_test_1_expr36, line(composite_collection_test_1, 333)).
assign(composite_collection_test_1_expr37, composite_collection_test_1_literal11, line(composite_collection_test_1, 333)).
method_invoc(composite_collection_test_1_expr38, m_add_66, line(composite_collection_test_1, 334)).
argument(composite_collection_test_1_expr39, 1, composite_collection_test_1_expr38).
ref(f_two_51, composite_collection_test_1_expr38, line(composite_collection_test_1, 334)).
assign(composite_collection_test_1_expr39, composite_collection_test_1_literal12, line(composite_collection_test_1, 334)).
assign(v_removing_76, composite_collection_test_1_expr40, line(composite_collection_test_1, 336)).
method_invoc(composite_collection_test_1_expr40, m_array_list_78, line(composite_collection_test_1, 336)).
argument(f_one_50, 1, composite_collection_test_1_expr40).
method_invoc(composite_collection_test_1_expr41, m_add_composited_27, line(composite_collection_test_1, 337)).
argument(f_one_50, 1, composite_collection_test_1_expr41).
argument(f_two_51, 2, composite_collection_test_1_expr41).
ref(f_c_40, composite_collection_test_1_expr41, line(composite_collection_test_1, 337)).
method_invoc(composite_collection_test_1_expr42, m_remove_all_19, line(composite_collection_test_1, 338)).
argument(v_removing_76, 1, composite_collection_test_1_expr42).
ref(f_c_40, composite_collection_test_1_expr42, line(composite_collection_test_1, 338)).
method_invoc(composite_collection_test_1_expr43, m_assert_true_67, line(composite_collection_test_1, 339)).
argument(composite_collection_test_1_expr44, 1, composite_collection_test_1_expr43).
method_invoc(composite_collection_test_1_expr45, m_contains_10, line(composite_collection_test_1, 339)).
argument(composite_collection_test_1_literal13, 1, composite_collection_test_1_expr45).
ref(f_c_40, composite_collection_test_1_expr45, line(composite_collection_test_1, 339)).
method_invoc(composite_collection_test_1_expr46, m_assert_true_67, line(composite_collection_test_1, 340)).
argument(composite_collection_test_1_expr47, 1, composite_collection_test_1_expr46).
method_invoc(composite_collection_test_1_expr48, m_contains_11, line(composite_collection_test_1, 340)).
argument(composite_collection_test_1_literal14, 1, composite_collection_test_1_expr48).
ref(f_one_50, composite_collection_test_1_expr48, line(composite_collection_test_1, 340)).
method_invoc(composite_collection_test_1_expr49, m_assert_true_67, line(composite_collection_test_1, 341)).
argument(composite_collection_test_1_expr50, 1, composite_collection_test_1_expr49).
method_invoc(composite_collection_test_1_expr51, m_contains_11, line(composite_collection_test_1, 341)).
argument(composite_collection_test_1_literal15, 1, composite_collection_test_1_expr51).
ref(f_two_51, composite_collection_test_1_expr51, line(composite_collection_test_1, 341)).
method_invoc(composite_collection_test_1_expr52, m_remove_all_19, line(composite_collection_test_1, 342)).
throw(composite_collection_test_1_expr52, null_pointer_exception, line(composite_collection_test_1, 342)).
argument(composite_collection_test_1_literal16, 1, composite_collection_test_1_expr52).
ref(f_c_40, composite_collection_test_1_expr52, line(composite_collection_test_1, 342)).
method_invoc(composite_collection_test_1_expr53, m_set_up_test_49, line(composite_collection_test_1, 362)).
method_invoc(composite_collection_test_1_expr54, m_add_66, line(composite_collection_test_1, 363)).
argument(composite_collection_test_1_expr55, 1, composite_collection_test_1_expr54).
ref(f_one_50, composite_collection_test_1_expr54, line(composite_collection_test_1, 363)).
assign(composite_collection_test_1_expr55, composite_collection_test_1_literal17, line(composite_collection_test_1, 363)).
method_invoc(composite_collection_test_1_expr56, m_add_66, line(composite_collection_test_1, 364)).
argument(composite_collection_test_1_expr57, 1, composite_collection_test_1_expr56).
ref(f_one_50, composite_collection_test_1_expr56, line(composite_collection_test_1, 364)).
assign(composite_collection_test_1_expr57, composite_collection_test_1_literal18, line(composite_collection_test_1, 364)).
method_invoc(composite_collection_test_1_expr58, m_add_66, line(composite_collection_test_1, 365)).
argument(composite_collection_test_1_expr59, 1, composite_collection_test_1_expr58).
ref(f_two_51, composite_collection_test_1_expr58, line(composite_collection_test_1, 365)).
assign(composite_collection_test_1_expr59, composite_collection_test_1_literal19, line(composite_collection_test_1, 365)).
method_invoc(composite_collection_test_1_expr60, m_add_composited_25, line(composite_collection_test_1, 366)).
argument(f_one_50, 1, composite_collection_test_1_expr60).
ref(f_c_40, composite_collection_test_1_expr60, line(composite_collection_test_1, 366)).
method_invoc(composite_collection_test_1_expr61, m_retain_all_21, line(composite_collection_test_1, 367)).
argument(f_two_51, 1, composite_collection_test_1_expr61).
ref(f_c_40, composite_collection_test_1_expr61, line(composite_collection_test_1, 367)).
method_invoc(composite_collection_test_1_expr62, m_assert_true_67, line(composite_collection_test_1, 368)).
argument(composite_collection_test_1_expr63, 1, composite_collection_test_1_expr62).
method_invoc(composite_collection_test_1_expr64, m_contains_10, line(composite_collection_test_1, 368)).
argument(composite_collection_test_1_literal20, 1, composite_collection_test_1_expr64).
ref(f_c_40, composite_collection_test_1_expr64, line(composite_collection_test_1, 368)).
method_invoc(composite_collection_test_1_expr65, m_assert_true_67, line(composite_collection_test_1, 369)).
argument(composite_collection_test_1_expr66, 1, composite_collection_test_1_expr65).
method_invoc(composite_collection_test_1_expr67, m_contains_11, line(composite_collection_test_1, 369)).
argument(composite_collection_test_1_literal21, 1, composite_collection_test_1_expr67).
ref(f_one_50, composite_collection_test_1_expr67, line(composite_collection_test_1, 369)).
method_invoc(composite_collection_test_1_expr68, m_assert_true_67, line(composite_collection_test_1, 370)).
argument(composite_collection_test_1_expr69, 1, composite_collection_test_1_expr68).
method_invoc(composite_collection_test_1_expr69, m_contains_10, line(composite_collection_test_1, 370)).
argument(composite_collection_test_1_literal22, 1, composite_collection_test_1_expr69).
ref(f_c_40, composite_collection_test_1_expr69, line(composite_collection_test_1, 370)).
method_invoc(composite_collection_test_1_expr70, m_assert_true_67, line(composite_collection_test_1, 371)).
argument(composite_collection_test_1_expr71, 1, composite_collection_test_1_expr70).
method_invoc(composite_collection_test_1_expr71, m_contains_11, line(composite_collection_test_1, 371)).
argument(composite_collection_test_1_literal23, 1, composite_collection_test_1_expr71).
ref(f_one_50, composite_collection_test_1_expr71, line(composite_collection_test_1, 371)).
method_invoc(composite_collection_test_1_expr72, m_retain_all_21, line(composite_collection_test_1, 372)).
argument(composite_collection_test_1_literal24, 1, composite_collection_test_1_expr72).
ref(f_c_40, composite_collection_test_1_expr72, line(composite_collection_test_1, 372)).
throw(composite_collection_test_1_expr31, null_pointer_exception, line(composite_collection_test_1, 272)).
throw(composite_collection_test_1_expr23, null_pointer_exception, line(composite_collection_test_1, 258)).
throw(composite_collection_test_1_expr27, null_pointer_exception, line(composite_collection_test_1, 265)).
throw(composite_collection_test_1_expr19, null_pointer_exception, line(composite_collection_test_1, 251)).


% Stack Trace Info.
test_failure(failure_1, 'org.apache.commons.collections4.collection.CompositeCollectionTest', 'testContainsAll').
trace(trace_1, failure_1, m_contains_all_17, line(composite_collection_1, 263), failure_1, target).
trace(trace_2, trace_1, m_test_contains_all_65, line(composite_collection_test_1, 251), failure_1, target).
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
test_failure(failure_2, 'org.apache.commons.collections4.collection.CompositeCollectionTest', 'testAddNullList').
trace(trace_18, failure_2, m_size_7, line(composite_collection_1, 103), failure_2, target).
trace(trace_19, trace_18, m_test_add_null_list_69, line(composite_collection_test_1, 258), failure_2, target).
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
test_failure(failure_3, 'org.apache.commons.collections4.collection.CompositeCollectionTest', 'testAddNullLists2Args').
trace(trace_35, failure_3, m_size_7, line(composite_collection_1, 103), failure_3, target).
trace(trace_36, trace_35, m_test_add_null_lists2_args_71, line(composite_collection_test_1, 265), failure_3, target).
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
test_failure(failure_4, 'org.apache.commons.collections4.collection.CompositeCollectionTest', 'testAddNullListsVarArgs').
trace(trace_52, failure_4, m_size_7, line(composite_collection_1, 103), failure_4, target).
trace(trace_53, trace_52, m_test_add_null_lists_var_args_72, line(composite_collection_test_1, 272), failure_4, target).
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
test_failure(failure_5, 'org.apache.commons.collections4.collection.CompositeCollectionTest', 'testRemoveAll').
trace(trace_69, failure_5, m_remove_all_19, line(composite_collection_1, 303), failure_5, target).
trace(trace_70, trace_69, m_test_remove_all_77, line(composite_collection_test_1, 342), failure_5, target).
trace(trace_71, trace_70, 'invoke0', line(jdk_internal_reflect_native_method_accessor_impl, -2), failure_5, non_target).
trace(trace_72, trace_71, 'invoke', line(jdk_internal_reflect_native_method_accessor_impl, 77), failure_5, non_target).
trace(trace_73, trace_72, 'invoke', line(jdk_internal_reflect_delegating_method_accessor_impl, 43), failure_5, non_target).
trace(trace_74, trace_73, 'invoke', line(java_lang_reflect_method, 569), failure_5, non_target).
trace(trace_75, trace_74, 'runTest', line(junit_framework_test_case, 177), failure_5, non_target).
trace(trace_76, trace_75, 'runBare', line(junit_framework_test_case, 142), failure_5, non_target).
trace(trace_77, trace_76, 'protect', line(junit_framework_test_result_1, 122), failure_5, non_target).
trace(trace_78, trace_77, 'runProtected', line(junit_framework_test_result, 142), failure_5, non_target).
trace(trace_79, trace_78, 'run', line(junit_framework_test_result, 125), failure_5, non_target).
trace(trace_80, trace_79, 'run', line(junit_framework_test_case, 130), failure_5, non_target).
trace(trace_81, trace_80, 'runTest', line(junit_framework_test_suite, 241), failure_5, non_target).
trace(trace_82, trace_81, 'run', line(junit_framework_test_suite, 236), failure_5, non_target).
trace(trace_83, trace_82, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_5, non_target).
trace(trace_84, trace_83, 'run', line(org_junit_runner_junit_core, 137), failure_5, non_target).
trace(trace_85, trace_84, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_5, non_target).
test_failure(failure_6, 'org.apache.commons.collections4.collection.CompositeCollectionTest', 'testRetainAll').
trace(trace_86, failure_6, 'requireNonNull', line(java_util_objects, 209), failure_6, non_target).
trace(trace_87, trace_86, 'retainAll', line(java_util_abstract_collection, 399), failure_6, non_target).
trace(trace_88, trace_87, m_retain_all_21, line(composite_collection_1, 327), failure_6, target).
trace(trace_89, trace_88, m_test_retain_all_80, line(composite_collection_test_1, 372), failure_6, target).
trace(trace_90, trace_89, 'invoke0', line(jdk_internal_reflect_native_method_accessor_impl, -2), failure_6, non_target).
trace(trace_91, trace_90, 'invoke', line(jdk_internal_reflect_native_method_accessor_impl, 77), failure_6, non_target).
trace(trace_92, trace_91, 'invoke', line(jdk_internal_reflect_delegating_method_accessor_impl, 43), failure_6, non_target).
trace(trace_93, trace_92, 'invoke', line(java_lang_reflect_method, 569), failure_6, non_target).
trace(trace_94, trace_93, 'runTest', line(junit_framework_test_case, 177), failure_6, non_target).
trace(trace_95, trace_94, 'runBare', line(junit_framework_test_case, 142), failure_6, non_target).
trace(trace_96, trace_95, 'protect', line(junit_framework_test_result_1, 122), failure_6, non_target).
trace(trace_97, trace_96, 'runProtected', line(junit_framework_test_result, 142), failure_6, non_target).
trace(trace_98, trace_97, 'run', line(junit_framework_test_result, 125), failure_6, non_target).
trace(trace_99, trace_98, 'run', line(junit_framework_test_case, 130), failure_6, non_target).
trace(trace_100, trace_99, 'runTest', line(junit_framework_test_suite, 241), failure_6, non_target).
trace(trace_101, trace_100, 'run', line(junit_framework_test_suite, 236), failure_6, non_target).
trace(trace_102, trace_101, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_6, non_target).
trace(trace_103, trace_102, 'run', line(org_junit_runner_junit_core, 137), failure_6, non_target).
trace(trace_104, trace_103, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_6, non_target).



%%% End of Static Facts

%%% Values

val(v_item_8, null, line(composite_collection_1, 103)).
val(p_coll_14, null, line(composite_collection_1, 263)).
val(p_coll_17, null, line(composite_collection_1, 303)).
val(p_coll_20, null, line(composite_collection_1, 327)).
val(v_null_list_70, null, line(composite_collection_test_1, 257)).
val(v_null_list_72, null, line(composite_collection_test_1, 264)).
val(v_null_list_74, null, line(composite_collection_test_1, 271)).



%%% End of Facts