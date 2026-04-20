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
test_failure(failure_1, 'org.apache.commons.collections4.collection.CompositeCollectionTest', 'testAddNullLists2Args').
trace(trace_1, failure_1, m_size_7, line(composite_collection_1, 103), failure_1, target).
trace(trace_2, trace_1, m_test_add_null_lists2_args_71, line(composite_collection_test_1, 265), failure_1, target).
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
test_failure(failure_2, 'org.apache.commons.collections4.collection.CompositeCollectionTest', 'testAddNullListsVarArgs').
trace(trace_16, failure_2, m_size_7, line(composite_collection_1, 103), failure_2, target).
trace(trace_17, trace_16, m_test_add_null_lists_var_args_72, line(composite_collection_test_1, 272), failure_2, target).
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
test_failure(failure_3, 'org.apache.commons.collections4.collection.CompositeCollectionTest', 'testRemoveAll').
trace(trace_31, failure_3, m_remove_all_19, line(composite_collection_1, 303), failure_3, target).
trace(trace_32, trace_31, m_test_remove_all_77, line(composite_collection_test_1, 342), failure_3, target).
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
test_failure(failure_4, 'org.apache.commons.collections4.collection.CompositeCollectionTest', 'testRetainAll').
trace(trace_46, failure_4, 'requireNonNull', line(java_util_objects, 233), failure_4, non_target).
trace(trace_47, trace_46, 'retainAll', line(java_util_abstract_collection, 401), failure_4, non_target).
trace(trace_48, trace_47, m_retain_all_21, line(composite_collection_1, 327), failure_4, target).
trace(trace_49, trace_48, m_test_retain_all_80, line(composite_collection_test_1, 372), failure_4, target).
trace(trace_50, trace_49, 'invoke', line(jdk_internal_reflect_direct_method_handle_accessor, 104), failure_4, non_target).
trace(trace_51, trace_50, 'invoke', line(java_lang_reflect_method, 578), failure_4, non_target).
trace(trace_52, trace_51, 'runTest', line(junit_framework_test_case, 177), failure_4, non_target).
trace(trace_53, trace_52, 'runBare', line(junit_framework_test_case, 142), failure_4, non_target).
trace(trace_54, trace_53, 'protect', line(junit_framework_test_result_1, 122), failure_4, non_target).
trace(trace_55, trace_54, 'runProtected', line(junit_framework_test_result, 142), failure_4, non_target).
trace(trace_56, trace_55, 'run', line(junit_framework_test_result, 125), failure_4, non_target).
trace(trace_57, trace_56, 'run', line(junit_framework_test_case, 130), failure_4, non_target).
trace(trace_58, trace_57, 'runTest', line(junit_framework_test_suite, 241), failure_4, non_target).
trace(trace_59, trace_58, 'run', line(junit_framework_test_suite, 236), failure_4, non_target).
trace(trace_60, trace_59, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_4, non_target).
trace(trace_61, trace_60, 'run', line(org_junit_runner_junit_core, 137), failure_4, non_target).
trace(trace_62, trace_61, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_4, non_target).
test_failure(failure_5, 'org.apache.commons.collections4.collection.CompositeCollectionTest', 'testContainsAll').
trace(trace_63, failure_5, m_contains_all_17, line(composite_collection_1, 263), failure_5, target).
trace(trace_64, trace_63, m_test_contains_all_65, line(composite_collection_test_1, 251), failure_5, target).
trace(trace_65, trace_64, 'invoke', line(jdk_internal_reflect_direct_method_handle_accessor, 104), failure_5, non_target).
trace(trace_66, trace_65, 'invoke', line(java_lang_reflect_method, 578), failure_5, non_target).
trace(trace_67, trace_66, 'runTest', line(junit_framework_test_case, 177), failure_5, non_target).
trace(trace_68, trace_67, 'runBare', line(junit_framework_test_case, 142), failure_5, non_target).
trace(trace_69, trace_68, 'protect', line(junit_framework_test_result_1, 122), failure_5, non_target).
trace(trace_70, trace_69, 'runProtected', line(junit_framework_test_result, 142), failure_5, non_target).
trace(trace_71, trace_70, 'run', line(junit_framework_test_result, 125), failure_5, non_target).
trace(trace_72, trace_71, 'run', line(junit_framework_test_case, 130), failure_5, non_target).
trace(trace_73, trace_72, 'runTest', line(junit_framework_test_suite, 241), failure_5, non_target).
trace(trace_74, trace_73, 'run', line(junit_framework_test_suite, 236), failure_5, non_target).
trace(trace_75, trace_74, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_5, non_target).
trace(trace_76, trace_75, 'run', line(org_junit_runner_junit_core, 137), failure_5, non_target).
trace(trace_77, trace_76, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_5, non_target).
test_failure(failure_6, 'org.apache.commons.collections4.collection.CompositeCollectionTest', 'testAddNullList').
trace(trace_78, failure_6, m_size_7, line(composite_collection_1, 103), failure_6, target).
trace(trace_79, trace_78, m_test_add_null_list_69, line(composite_collection_test_1, 258), failure_6, target).
trace(trace_80, trace_79, 'invoke', line(jdk_internal_reflect_direct_method_handle_accessor, 104), failure_6, non_target).
trace(trace_81, trace_80, 'invoke', line(java_lang_reflect_method, 578), failure_6, non_target).
trace(trace_82, trace_81, 'runTest', line(junit_framework_test_case, 177), failure_6, non_target).
trace(trace_83, trace_82, 'runBare', line(junit_framework_test_case, 142), failure_6, non_target).
trace(trace_84, trace_83, 'protect', line(junit_framework_test_result_1, 122), failure_6, non_target).
trace(trace_85, trace_84, 'runProtected', line(junit_framework_test_result, 142), failure_6, non_target).
trace(trace_86, trace_85, 'run', line(junit_framework_test_result, 125), failure_6, non_target).
trace(trace_87, trace_86, 'run', line(junit_framework_test_case, 130), failure_6, non_target).
trace(trace_88, trace_87, 'runTest', line(junit_framework_test_suite, 241), failure_6, non_target).
trace(trace_89, trace_88, 'run', line(junit_framework_test_suite, 236), failure_6, non_target).
trace(trace_90, trace_89, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_6, non_target).
trace(trace_91, trace_90, 'run', line(org_junit_runner_junit_core, 137), failure_6, non_target).
trace(trace_92, trace_91, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_6, non_target).



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
%%% Code Facts
:- style_check(-discontiguous).
%%% Classes
class(composite_collection_1, 'org.apache.commons.collections4.collection.CompositeCollection').
class(composite_collection_test_1, 'org.apache.commons.collections4.collection.CompositeCollectionTest').

%%% Methods
%composite_collection_1 - org.apache.commons.collections4.collection.CompositeCollection
method(m_composite_collection_2, range(composite_collection_1, 2033, 113, 52, 57)).
method(m_composite_collection_4, range(composite_collection_1, 2152, 299, 59, 67)).
method(m_composite_collection_5, range(composite_collection_1, 2457, 481, 69, 79)).
method(m_composite_collection_6, range(composite_collection_1, 2944, 296, 81, 89)).
method(m_size_7, range(composite_collection_1, 3324, 398, 92, 106)).
method(m_is_empty_9, range(composite_collection_1, 3728, 445, 108, 123)).
method(m_contains_10, range(composite_collection_1, 4179, 523, 125, 141)).
method(m_iterator_12, range(composite_collection_1, 4708, 750, 143, 163)).
method(m_to_array_13, range(composite_collection_1, 5464, 421, 165, 178)).
method(m_to_array_14, range(composite_collection_1, 5891, 972, 180, 209)).
method(m_add_15, range(composite_collection_1, 6869, 930, 211, 230)).
method(m_remove_16, range(composite_collection_1, 7805, 876, 232, 250)).
method(m_contains_all_17, range(composite_collection_1, 8687, 563, 252, 269)).
method(m_add_all_18, range(composite_collection_1, 9256, 978, 271, 290)).
method(m_remove_all_19, range(composite_collection_1, 10240, 666, 292, 311)).
method(m_retain_all_21, range(composite_collection_1, 10912, 630, 313, 330)).
method(m_clear_23, range(composite_collection_1, 11548, 359, 332, 344)).
method(m_set_mutator_24, range(composite_collection_1, 11991, 235, 347, 354)).
method(m_add_composited_25, range(composite_collection_1, 12232, 291, 356, 363)).
method(m_add_composited_27, range(composite_collection_1, 12529, 488, 365, 375)).
method(m_add_composited_28, range(composite_collection_1, 13023, 316, 377, 384)).
method(m_remove_composited_31, range(composite_collection_1, 13345, 234, 386, 393)).
method(m_to_collection_32, range(composite_collection_1, 13663, 322, 396, 404)).
method(m_get_collections_33, range(composite_collection_1, 13991, 245, 406, 413)).
method(m_get_mutator_34, range(composite_collection_1, 14242, 208, 415, 421)).
method(m_add_35, range(composite_collection_1, 14748, 760, 431, 443)).
method(m_add_all_36, range(composite_collection_1, 15518, 854, 445, 459)).
method(m_remove_37, range(composite_collection_1, 16382, 842, 461, 475)).
%composite_collection_test_1 - org.apache.commons.collections4.collection.CompositeCollectionTest
method(m_composite_collection_test_38, range(composite_collection_test_1, 1366, 78, 42, 44)).
method(m_get_compatibility_version_40, range(composite_collection_test_1, 1450, 81, 46, 49)).
method(m_get_full_elements_41, range(composite_collection_test_1, 1537, 143, 51, 55)).
method(m_is_add_supported_42, range(composite_collection_test_1, 1770, 166, 58, 64)).
method(m_is_remove_supported_43, range(composite_collection_test_1, 1942, 78, 66, 69)).
method(m_make_confirmed_collection_44, range(composite_collection_test_1, 2026, 100, 71, 74)).
method(m_make_confirmed_full_collection_45, range(composite_collection_test_1, 2214, 303, 78, 86)).
method(m_make_full_collection_46, range(composite_collection_test_1, 2522, 525, 87, 100)).
method(m_make_object_47, range(composite_collection_test_1, 3052, 158, 101, 107)).
method(m_set_up_mutator_test_48, range(composite_collection_test_1, 3216, 1202, 109, 140)).
method(m_add_51, range(composite_collection_test_1, 3388, 293, 114, 120)).
method(m_add_all_52, range(composite_collection_test_1, 3695, 355, 122, 129)).
method(m_remove_53, range(composite_collection_test_1, 4064, 336, 131, 138)).
method(m_set_up_test_49, range(composite_collection_test_1, 4424, 137, 142, 146)).
method(m_test_add_all_mutator_55, range(composite_collection_test_1, 4567, 1280, 148, 182)).
method(m_add_56, range(composite_collection_test_1, 4753, 325, 152, 159)).
method(m_add_all_57, range(composite_collection_test_1, 5092, 355, 161, 168)).
method(m_remove_58, range(composite_collection_test_1, 5461, 206, 170, 174)).
method(m_test_add_all_to_collection_59, range(composite_collection_test_1, 5853, 381, 184, 194)).
method(m_test_add_mutator_60, range(composite_collection_test_1, 6240, 1252, 196, 229)).
method(m_add_61, range(composite_collection_test_1, 6423, 325, 200, 207)).
method(m_add_all_62, range(composite_collection_test_1, 6762, 355, 209, 216)).
method(m_remove_63, range(composite_collection_test_1, 7131, 206, 218, 222)).
method(m_test_clear_64, range(composite_collection_test_1, 7499, 296, 232, 242)).
method(m_test_contains_all_65, range(composite_collection_test_1, 7801, 257, 244, 252)).
method(m_test_add_null_list_69, range(composite_collection_test_1, 8064, 229, 254, 259)).
method(m_test_add_null_lists2_args_71, range(composite_collection_test_1, 8303, 245, 261, 266)).
method(m_test_add_null_lists_var_args_72, range(composite_collection_test_1, 8558, 257, 268, 273)).
method(m_test_is_empty_73, range(composite_collection_test_1, 8825, 299, 275, 284)).
method(m_test_iterator_74, range(composite_collection_test_1, 9130, 476, 286, 301)).
method(m_test_multiple_collections_size_75, range(composite_collection_test_1, 9612, 404, 303, 314)).
method(m_test_remove_76, range(composite_collection_test_1, 10022, 349, 316, 327)).
method(m_test_remove_all_77, range(composite_collection_test_1, 10377, 638, 329, 346)).
method(m_test_remove_composited_79, range(composite_collection_test_1, 11021, 323, 348, 358)).
method(m_test_retain_all_80, range(composite_collection_test_1, 11350, 560, 360, 377)).
method(m_test_size_81, range(composite_collection_test_1, 11916, 260, 379, 387)).
method(m_test_to_collection_82, range(composite_collection_test_1, 12182, 384, 389, 400)).
method(m_test_unsupported_remove_83, range(composite_collection_test_1, 12572, 460, 402, 416)).

%%% Blocks
%composite_collection_1 - org.apache.commons.collections4.collection.CompositeCollection
block(composite_collection_1_block1, block, composite_collection_1_code14, body, range(composite_collection_1, 2122, 24, 55, 57)).
block(composite_collection_1_block2, block, composite_collection_1_code15, body, range(composite_collection_1, 3582, 140, 100, 106)).
block(composite_collection_1_block3, block, composite_collection_1_stmt3, body, range(composite_collection_1, 3651, 44, 102, 104)).
block(composite_collection_1_block4, block, composite_collection_1_code23, body, range(composite_collection_1, 4535, 167, 134, 141)).
block(composite_collection_1_block5, block, composite_collection_1_stmt5, body, range(composite_collection_1, 4582, 92, 135, 139)).
block(composite_collection_1_block6, block, composite_collection_1_stmt6, then_statement, range(composite_collection_1, 4620, 44, 136, 138)).
block(composite_collection_1_block7, block, composite_collection_1_code29, body, range(composite_collection_1, 9084, 166, 262, 269)).
block(composite_collection_1_block8, block, composite_collection_1_stmt9, body, range(composite_collection_1, 9125, 98, 263, 267)).
block(composite_collection_1_block9, block, composite_collection_1_stmt10, then_statement, range(composite_collection_1, 9168, 45, 264, 266)).
block(composite_collection_1_block10, block, composite_collection_1_code33, body, range(composite_collection_1, 10672, 234, 302, 311)).
block(composite_collection_1_block11, block, composite_collection_1_stmt12, then_statement, range(composite_collection_1, 10704, 37, 303, 305)).
block(composite_collection_1_block12, block, composite_collection_1_stmt14, body, range(composite_collection_1, 10820, 56, 307, 309)).
block(composite_collection_1_block13, block, composite_collection_1_code41, body, range(composite_collection_1, 11376, 166, 324, 330)).
block(composite_collection_1_block14, block, composite_collection_1_stmt18, body, range(composite_collection_1, 11456, 56, 326, 328)).
block(composite_collection_1_block15, block, composite_collection_1_code49, body, range(composite_collection_1, 12187, 39, 352, 354)).
block(composite_collection_1_block16, block, composite_collection_1_code50, body, range(composite_collection_1, 12478, 45, 361, 363)).
block(composite_collection_1_block17, block, composite_collection_1_code51, body, range(composite_collection_1, 12932, 85, 372, 375)).
block(composite_collection_1_block18, block, composite_collection_1_code52, body, range(composite_collection_1, 13275, 64, 382, 384)).
%composite_collection_test_1 - org.apache.commons.collections4.collection.CompositeCollectionTest
block(composite_collection_test_1_block1, block, composite_collection_test_1_code3, body, range(composite_collection_test_1, 1416, 28, 42, 44)).
block(composite_collection_test_1_block2, block, composite_collection_test_1_code4, body, range(composite_collection_test_1, 3282, 1136, 110, 140)).
block(composite_collection_test_1_block3, block, composite_collection_test_1_code9, body, range(composite_collection_test_1, 4451, 110, 142, 146)).
block(composite_collection_test_1_block4, block, composite_collection_test_1_code16, body, range(composite_collection_test_1, 7866, 192, 245, 252)).
block(composite_collection_test_1_block5, block, composite_collection_test_1_code19, body, range(composite_collection_test_1, 8094, 199, 254, 259)).
block(composite_collection_test_1_block6, block, composite_collection_test_1_code30, body, range(composite_collection_test_1, 8339, 209, 261, 266)).
block(composite_collection_test_1_block7, block, composite_collection_test_1_code41, body, range(composite_collection_test_1, 8596, 219, 268, 273)).
block(composite_collection_test_1_block8, block, composite_collection_test_1_code52, body, range(composite_collection_test_1, 10440, 575, 330, 346)).
block(composite_collection_test_1_block9, block, composite_collection_test_1_code63, body, range(composite_collection_test_1, 11413, 497, 361, 377)).

%%% Statements
%composite_collection_1 - org.apache.commons.collections4.collection.CompositeCollection
stmt(composite_collection_1_stmt1, super_constructor_invocation, composite_collection_1_block1, (statements, 0), range(composite_collection_1, 2132, 8, 56, 56)).
stmt(composite_collection_1_stmt2, variable_declaration_statement, composite_collection_1_block2, (statements, 0), range(composite_collection_1, 3592, 13, 101, 101)).
stmt(composite_collection_1_stmt3, enhanced_for_statement, composite_collection_1_block2, (statements, 1), range(composite_collection_1, 3614, 81, 102, 104)).
stmt(composite_collection_1_stmt4, expression_statement, composite_collection_1_block3, (statements, 0), range(composite_collection_1, 3665, 20, 103, 103)).
stmt(composite_collection_1_stmt5, enhanced_for_statement, composite_collection_1_block4, (statements, 0), range(composite_collection_1, 4545, 129, 135, 139)).
stmt(composite_collection_1_stmt6, if_statement, composite_collection_1_block5, (statements, 0), range(composite_collection_1, 4596, 68, 136, 138)).
stmt(composite_collection_1_stmt7, return_statement, composite_collection_1_block6, (statements, 0), range(composite_collection_1, 4638, 12, 137, 137)).
stmt(composite_collection_1_stmt8, return_statement, composite_collection_1_block4, (statements, 1), range(composite_collection_1, 4683, 13, 140, 140)).
stmt(composite_collection_1_stmt9, enhanced_for_statement, composite_collection_1_block7, (statements, 0), range(composite_collection_1, 9094, 129, 263, 267)).
stmt(composite_collection_1_stmt10, if_statement, composite_collection_1_block8, (statements, 0), range(composite_collection_1, 9139, 74, 264, 266)).
stmt(composite_collection_1_stmt11, return_statement, composite_collection_1_block7, (statements, 1), range(composite_collection_1, 9232, 12, 268, 268)).
stmt(composite_collection_1_stmt12, if_statement, composite_collection_1_block10, (statements, 0), range(composite_collection_1, 10682, 59, 303, 305)).
stmt(composite_collection_1_stmt13, variable_declaration_statement, composite_collection_1_block10, (statements, 1), range(composite_collection_1, 10750, 24, 306, 306)).
stmt(composite_collection_1_stmt14, enhanced_for_statement, composite_collection_1_block10, (statements, 2), range(composite_collection_1, 10783, 93, 307, 309)).
stmt(composite_collection_1_stmt15, expression_statement, composite_collection_1_block12, (statements, 0), range(composite_collection_1, 10834, 32, 308, 308)).
stmt(composite_collection_1_stmt16, return_statement, composite_collection_1_block10, (statements, 3), range(composite_collection_1, 10885, 15, 310, 310)).
stmt(composite_collection_1_stmt17, variable_declaration_statement, composite_collection_1_block13, (statements, 0), range(composite_collection_1, 11386, 24, 325, 325)).
stmt(composite_collection_1_stmt18, enhanced_for_statement, composite_collection_1_block13, (statements, 1), range(composite_collection_1, 11419, 93, 326, 328)).
stmt(composite_collection_1_stmt19, expression_statement, composite_collection_1_block14, (statements, 0), range(composite_collection_1, 11470, 32, 327, 327)).
stmt(composite_collection_1_stmt20, return_statement, composite_collection_1_block13, (statements, 2), range(composite_collection_1, 11521, 15, 329, 329)).
stmt(composite_collection_1_stmt21, expression_statement, composite_collection_1_block15, (statements, 0), range(composite_collection_1, 12197, 23, 353, 353)).
stmt(composite_collection_1_stmt22, expression_statement, composite_collection_1_block16, (statements, 0), range(composite_collection_1, 12488, 29, 362, 362)).
stmt(composite_collection_1_stmt23, expression_statement, composite_collection_1_block17, (statements, 0), range(composite_collection_1, 12942, 30, 373, 373)).
stmt(composite_collection_1_stmt24, expression_statement, composite_collection_1_block17, (statements, 1), range(composite_collection_1, 12981, 30, 374, 374)).
stmt(composite_collection_1_stmt25, expression_statement, composite_collection_1_block18, (statements, 0), range(composite_collection_1, 13285, 48, 383, 383)).
%composite_collection_test_1 - org.apache.commons.collections4.collection.CompositeCollectionTest
stmt(composite_collection_test_1_stmt1, super_constructor_invocation, composite_collection_test_1_block1, (statements, 0), range(composite_collection_test_1, 1426, 12, 43, 43)).
stmt(composite_collection_test_1_stmt2, expression_statement, composite_collection_test_1_block2, (statements, 0), range(composite_collection_test_1, 3292, 12, 111, 111)).
stmt(composite_collection_test_1_stmt3, expression_statement, composite_collection_test_1_block2, (statements, 1), range(composite_collection_test_1, 3313, 1099, 112, 139)).
stmt(composite_collection_test_1_stmt4, expression_statement, composite_collection_test_1_block3, (statements, 0), range(composite_collection_test_1, 4461, 32, 143, 143)).
stmt(composite_collection_test_1_stmt5, expression_statement, composite_collection_test_1_block3, (statements, 1), range(composite_collection_test_1, 4502, 22, 144, 144)).
stmt(composite_collection_test_1_stmt6, expression_statement, composite_collection_test_1_block3, (statements, 2), range(composite_collection_test_1, 4533, 22, 145, 145)).
stmt(composite_collection_test_1_stmt7, expression_statement, composite_collection_test_1_block4, (statements, 0), range(composite_collection_test_1, 7876, 12, 246, 246)).
stmt(composite_collection_test_1_stmt8, expression_statement, composite_collection_test_1_block4, (statements, 1), range(composite_collection_test_1, 7897, 17, 247, 247)).
stmt(composite_collection_test_1_stmt9, expression_statement, composite_collection_test_1_block4, (statements, 2), range(composite_collection_test_1, 7923, 17, 248, 248)).
stmt(composite_collection_test_1_stmt10, expression_statement, composite_collection_test_1_block4, (statements, 3), range(composite_collection_test_1, 7949, 21, 249, 249)).
stmt(composite_collection_test_1_stmt11, expression_statement, composite_collection_test_1_block4, (statements, 4), range(composite_collection_test_1, 7979, 31, 250, 250)).
stmt(composite_collection_test_1_stmt12, expression_statement, composite_collection_test_1_block4, (statements, 5), range(composite_collection_test_1, 8019, 33, 251, 251)).
stmt(composite_collection_test_1_stmt13, variable_declaration_statement, composite_collection_test_1_block5, (statements, 0), range(composite_collection_test_1, 8104, 34, 255, 255)).
stmt(composite_collection_test_1_stmt14, variable_declaration_statement, composite_collection_test_1_block5, (statements, 1), range(composite_collection_test_1, 8147, 61, 256, 256)).
stmt(composite_collection_test_1_stmt15, expression_statement, composite_collection_test_1_block5, (statements, 2), range(composite_collection_test_1, 8217, 27, 257, 257)).
stmt(composite_collection_test_1_stmt16, expression_statement, composite_collection_test_1_block5, (statements, 3), range(composite_collection_test_1, 8253, 34, 258, 258)).
stmt(composite_collection_test_1_stmt17, variable_declaration_statement, composite_collection_test_1_block6, (statements, 0), range(composite_collection_test_1, 8349, 34, 262, 262)).
stmt(composite_collection_test_1_stmt18, variable_declaration_statement, composite_collection_test_1_block6, (statements, 1), range(composite_collection_test_1, 8392, 61, 263, 263)).
stmt(composite_collection_test_1_stmt19, expression_statement, composite_collection_test_1_block6, (statements, 2), range(composite_collection_test_1, 8462, 37, 264, 264)).
stmt(composite_collection_test_1_stmt20, expression_statement, composite_collection_test_1_block6, (statements, 3), range(composite_collection_test_1, 8508, 34, 265, 265)).
stmt(composite_collection_test_1_stmt21, variable_declaration_statement, composite_collection_test_1_block7, (statements, 0), range(composite_collection_test_1, 8606, 34, 269, 269)).
stmt(composite_collection_test_1_stmt22, variable_declaration_statement, composite_collection_test_1_block7, (statements, 1), range(composite_collection_test_1, 8649, 61, 270, 270)).
stmt(composite_collection_test_1_stmt23, expression_statement, composite_collection_test_1_block7, (statements, 2), range(composite_collection_test_1, 8719, 47, 271, 271)).
stmt(composite_collection_test_1_stmt24, expression_statement, composite_collection_test_1_block7, (statements, 3), range(composite_collection_test_1, 8775, 34, 272, 272)).
stmt(composite_collection_test_1_stmt25, expression_statement, composite_collection_test_1_block8, (statements, 0), range(composite_collection_test_1, 10450, 19, 331, 331)).
stmt(composite_collection_test_1_stmt26, expression_statement, composite_collection_test_1_block8, (statements, 1), range(composite_collection_test_1, 10478, 17, 332, 332)).
stmt(composite_collection_test_1_stmt27, expression_statement, composite_collection_test_1_block8, (statements, 2), range(composite_collection_test_1, 10504, 17, 333, 333)).
stmt(composite_collection_test_1_stmt28, expression_statement, composite_collection_test_1_block8, (statements, 3), range(composite_collection_test_1, 10530, 17, 334, 334)).
stmt(composite_collection_test_1_stmt29, variable_declaration_statement, composite_collection_test_1_block8, (statements, 4), range(composite_collection_test_1, 10628, 52, 336, 336)).
stmt(composite_collection_test_1_stmt30, expression_statement, composite_collection_test_1_block8, (statements, 5), range(composite_collection_test_1, 10689, 26, 337, 337)).
stmt(composite_collection_test_1_stmt31, expression_statement, composite_collection_test_1_block8, (statements, 6), range(composite_collection_test_1, 10724, 22, 338, 338)).
stmt(composite_collection_test_1_stmt32, expression_statement, composite_collection_test_1_block8, (statements, 7), range(composite_collection_test_1, 10755, 29, 339, 339)).
stmt(composite_collection_test_1_stmt33, expression_statement, composite_collection_test_1_block8, (statements, 8), range(composite_collection_test_1, 10793, 31, 340, 340)).
stmt(composite_collection_test_1_stmt34, expression_statement, composite_collection_test_1_block8, (statements, 9), range(composite_collection_test_1, 10833, 31, 341, 341)).
stmt(composite_collection_test_1_stmt35, expression_statement, composite_collection_test_1_block8, (statements, 10), range(composite_collection_test_1, 10873, 18, 342, 342)).
stmt(composite_collection_test_1_stmt36, expression_statement, composite_collection_test_1_block9, (statements, 0), range(composite_collection_test_1, 11423, 12, 362, 362)).
stmt(composite_collection_test_1_stmt37, expression_statement, composite_collection_test_1_block9, (statements, 1), range(composite_collection_test_1, 11444, 17, 363, 363)).
stmt(composite_collection_test_1_stmt38, expression_statement, composite_collection_test_1_block9, (statements, 2), range(composite_collection_test_1, 11470, 17, 364, 364)).
stmt(composite_collection_test_1_stmt39, expression_statement, composite_collection_test_1_block9, (statements, 3), range(composite_collection_test_1, 11496, 17, 365, 365)).
stmt(composite_collection_test_1_stmt40, expression_statement, composite_collection_test_1_block9, (statements, 4), range(composite_collection_test_1, 11522, 21, 366, 366)).
stmt(composite_collection_test_1_stmt41, expression_statement, composite_collection_test_1_block9, (statements, 5), range(composite_collection_test_1, 11552, 17, 367, 367)).
stmt(composite_collection_test_1_stmt42, expression_statement, composite_collection_test_1_block9, (statements, 6), range(composite_collection_test_1, 11578, 29, 368, 368)).
stmt(composite_collection_test_1_stmt43, expression_statement, composite_collection_test_1_block9, (statements, 7), range(composite_collection_test_1, 11616, 31, 369, 369)).
stmt(composite_collection_test_1_stmt44, expression_statement, composite_collection_test_1_block9, (statements, 8), range(composite_collection_test_1, 11656, 28, 370, 370)).
stmt(composite_collection_test_1_stmt45, expression_statement, composite_collection_test_1_block9, (statements, 9), range(composite_collection_test_1, 11693, 30, 371, 371)).
stmt(composite_collection_test_1_stmt46, expression_statement, composite_collection_test_1_block9, (statements, 10), range(composite_collection_test_1, 11732, 18, 372, 372)).

%%% Expressions
%composite_collection_1 - org.apache.commons.collections4.collection.CompositeCollection
expr(composite_collection_1_expr1, class_instance_creation, composite_collection_1_code11, initializer, range(composite_collection_1, 2009, 17, 50, 50), "new ArrayList<>()").
expr(composite_collection_1_expr2, super_constructor_invocation, composite_collection_1_block1, (statements, 0), range(composite_collection_1, 2132, 8, 56, 56), "super();").
expr(composite_collection_1_expr3, assignment, composite_collection_1_stmt4, expression, range(composite_collection_1, 3665, 19, 103, 103), "size+=item.size()").
expr(composite_collection_1_expr4, method_invocation, composite_collection_1_expr3, right_hand_side, range(composite_collection_1, 3673, 11, 103, 103), "item.size()").
expr(composite_collection_1_expr5, method_invocation, composite_collection_1_stmt6, expression, range(composite_collection_1, 4600, 18, 136, 136), "item.contains(obj)").
expr(composite_collection_1_expr6, infix_expression, composite_collection_1_stmt10, expression, range(composite_collection_1, 9143, 23, 264, 264), "contains(item) == false").
expr(composite_collection_1_expr7, method_invocation, composite_collection_1_expr6, left_operand, range(composite_collection_1, 9143, 14, 264, 264), "contains(item)").
expr(composite_collection_1_expr8, infix_expression, composite_collection_1_stmt12, expression, range(composite_collection_1, 10686, 16, 303, 303), "coll.size() == 0").
expr(composite_collection_1_expr9, method_invocation, composite_collection_1_expr8, left_operand, range(composite_collection_1, 10686, 11, 303, 303), "coll.size()").
expr(composite_collection_1_expr10, assignment, composite_collection_1_stmt15, expression, range(composite_collection_1, 10834, 31, 308, 308), "changed|=item.removeAll(coll)").
expr(composite_collection_1_expr11, method_invocation, composite_collection_1_expr10, right_hand_side, range(composite_collection_1, 10845, 20, 308, 308), "item.removeAll(coll)").
expr(composite_collection_1_expr12, assignment, composite_collection_1_stmt19, expression, range(composite_collection_1, 11470, 31, 327, 327), "changed|=item.retainAll(coll)").
expr(composite_collection_1_expr13, method_invocation, composite_collection_1_expr12, right_hand_side, range(composite_collection_1, 11481, 20, 327, 327), "item.retainAll(coll)").
expr(composite_collection_1_expr15, field_access, composite_collection_1_expr14, left_hand_side, range(composite_collection_1, 12197, 12, 353, 353), "this.mutator").
expr(composite_collection_1_expr16, this_expression, f_mutator_24, expression, range(composite_collection_1, 12197, 4, 353, 353), "this").
expr(composite_collection_1_expr14, assignment, composite_collection_1_stmt21, expression, range(composite_collection_1, 12197, 22, 353, 353), "this.mutator=mutator").
expr(composite_collection_1_expr17, method_invocation, composite_collection_1_stmt22, expression, range(composite_collection_1, 12488, 28, 362, 362), "all.add(compositeCollection)").
expr(composite_collection_1_expr18, method_invocation, composite_collection_1_stmt23, expression, range(composite_collection_1, 12942, 29, 373, 373), "all.add(compositeCollection1)").
expr(composite_collection_1_expr19, method_invocation, composite_collection_1_stmt24, expression, range(composite_collection_1, 12981, 29, 374, 374), "all.add(compositeCollection2)").
expr(composite_collection_1_expr20, method_invocation, composite_collection_1_stmt25, expression, range(composite_collection_1, 13285, 47, 383, 383), "all.addAll(Arrays.asList(compositeCollections))").
expr(composite_collection_1_expr21, method_invocation, composite_collection_1_expr20, (arguments, 0), range(composite_collection_1, 13296, 35, 383, 383), "Arrays.asList(compositeCollections)").
%composite_collection_test_1 - org.apache.commons.collections4.collection.CompositeCollectionTest
expr(composite_collection_test_1_expr1, super_constructor_invocation, composite_collection_test_1_block1, (statements, 0), range(composite_collection_test_1, 1426, 12, 43, 43), "super(name);").
expr(composite_collection_test_1_expr2, method_invocation, composite_collection_test_1_stmt2, expression, range(composite_collection_test_1, 3292, 11, 111, 111), "setUpTest()").
expr(composite_collection_test_1_expr3, method_invocation, composite_collection_test_1_stmt3, expression, range(composite_collection_test_1, 3313, 1098, 112, 139), "c.setMutator(new CompositeCollection.CollectionMutator<E>(){\n  @Override public boolean add(  final CompositeCollection<E> composite,  final List<Collection<E>> collections,  final E obj){\n    for (    final Collection<E> coll : collections) {\n      coll.add(obj);\n    }\n    return true;\n  }\n  @Override public boolean addAll(  final CompositeCollection<E> composite,  final List<Collection<E>> collections,  final Collection<? extends E> coll){\n    for (    final Collection<E> collection : collections) {\n      collection.addAll(coll);\n    }\n    return true;\n  }\n  @Override public boolean remove(  final CompositeCollection<E> composite,  final List<Collection<E>> collections,  final Object obj){\n    for (    final Collection<E> collection : collections) {\n      collection.remove(obj);\n    }\n    return true;\n  }\n}\n)").
expr(composite_collection_test_1_expr4, class_instance_creation, composite_collection_test_1_expr3, (arguments, 0), range(composite_collection_test_1, 3326, 1084, 112, 139), "new CompositeCollection.CollectionMutator<E>(){\n  @Override public boolean add(  final CompositeCollection<E> composite,  final List<Collection<E>> collections,  final E obj){\n    for (    final Collection<E> coll : collections) {\n      coll.add(obj);\n    }\n    return true;\n  }\n  @Override public boolean addAll(  final CompositeCollection<E> composite,  final List<Collection<E>> collections,  final Collection<? extends E> coll){\n    for (    final Collection<E> collection : collections) {\n      collection.addAll(coll);\n    }\n    return true;\n  }\n  @Override public boolean remove(  final CompositeCollection<E> composite,  final List<Collection<E>> collections,  final Object obj){\n    for (    final Collection<E> collection : collections) {\n      collection.remove(obj);\n    }\n    return true;\n  }\n}").
expr(composite_collection_test_1_expr5, assignment, composite_collection_test_1_stmt4, expression, range(composite_collection_test_1, 4461, 31, 143, 143), "c=new CompositeCollection<>()").
expr(composite_collection_test_1_expr6, class_instance_creation, composite_collection_test_1_expr5, right_hand_side, range(composite_collection_test_1, 4465, 27, 143, 143), "new CompositeCollection<>()").
expr(composite_collection_test_1_expr7, assignment, composite_collection_test_1_stmt5, expression, range(composite_collection_test_1, 4502, 21, 144, 144), "one=new HashSet<>()").
expr(composite_collection_test_1_expr8, class_instance_creation, composite_collection_test_1_expr7, right_hand_side, range(composite_collection_test_1, 4508, 15, 144, 144), "new HashSet<>()").
expr(composite_collection_test_1_expr9, assignment, composite_collection_test_1_stmt6, expression, range(composite_collection_test_1, 4533, 21, 145, 145), "two=new HashSet<>()").
expr(composite_collection_test_1_expr10, class_instance_creation, composite_collection_test_1_expr9, right_hand_side, range(composite_collection_test_1, 4539, 15, 145, 145), "new HashSet<>()").
expr(composite_collection_test_1_expr11, method_invocation, composite_collection_test_1_stmt7, expression, range(composite_collection_test_1, 7876, 11, 246, 246), "setUpTest()").
expr(composite_collection_test_1_expr12, method_invocation, composite_collection_test_1_stmt8, expression, range(composite_collection_test_1, 7897, 16, 247, 247), "one.add((E)\"1\")").
expr(composite_collection_test_1_expr13, cast_expression, composite_collection_test_1_expr12, (arguments, 0), range(composite_collection_test_1, 7905, 7, 247, 247), "(E)\"1\"").
expr(composite_collection_test_1_expr14, method_invocation, composite_collection_test_1_stmt9, expression, range(composite_collection_test_1, 7923, 16, 248, 248), "two.add((E)\"1\")").
expr(composite_collection_test_1_expr15, cast_expression, composite_collection_test_1_expr14, (arguments, 0), range(composite_collection_test_1, 7931, 7, 248, 248), "(E)\"1\"").
expr(composite_collection_test_1_expr16, method_invocation, composite_collection_test_1_stmt10, expression, range(composite_collection_test_1, 7949, 20, 249, 249), "c.addComposited(one)").
expr(composite_collection_test_1_expr17, method_invocation, composite_collection_test_1_stmt11, expression, range(composite_collection_test_1, 7979, 30, 250, 250), "assertTrue(c.containsAll(two))").
expr(composite_collection_test_1_expr18, method_invocation, composite_collection_test_1_expr17, (arguments, 0), range(composite_collection_test_1, 7990, 18, 250, 250), "c.containsAll(two)").
expr(composite_collection_test_1_expr19, method_invocation, composite_collection_test_1_stmt12, expression, range(composite_collection_test_1, 8019, 32, 251, 251), "assertFalse(c.containsAll(null))").
expr(composite_collection_test_1_expr20, method_invocation, composite_collection_test_1_expr19, (arguments, 0), range(composite_collection_test_1, 8031, 19, 251, 251), "c.containsAll(null)").
expr(composite_collection_test_1_expr21, class_instance_creation, composite_collection_test_1_code27, initializer, range(composite_collection_test_1, 8180, 27, 256, 256), "new CompositeCollection<>()").
expr(composite_collection_test_1_expr22, method_invocation, composite_collection_test_1_stmt15, expression, range(composite_collection_test_1, 8217, 26, 257, 257), "cc.addComposited(nullList)").
expr(composite_collection_test_1_expr23, method_invocation, composite_collection_test_1_stmt16, expression, range(composite_collection_test_1, 8253, 33, 258, 258), "Assert.assertEquals(0,cc.size())").
expr(composite_collection_test_1_expr24, method_invocation, composite_collection_test_1_expr23, (arguments, 1), range(composite_collection_test_1, 8276, 9, 258, 258), "cc.size()").
expr(composite_collection_test_1_expr25, class_instance_creation, composite_collection_test_1_code38, initializer, range(composite_collection_test_1, 8425, 27, 263, 263), "new CompositeCollection<>()").
expr(composite_collection_test_1_expr26, method_invocation, composite_collection_test_1_stmt19, expression, range(composite_collection_test_1, 8462, 36, 264, 264), "cc.addComposited(nullList,nullList)").
expr(composite_collection_test_1_expr27, method_invocation, composite_collection_test_1_stmt20, expression, range(composite_collection_test_1, 8508, 33, 265, 265), "Assert.assertEquals(0,cc.size())").
expr(composite_collection_test_1_expr28, method_invocation, composite_collection_test_1_expr27, (arguments, 1), range(composite_collection_test_1, 8531, 9, 265, 265), "cc.size()").
expr(composite_collection_test_1_expr29, class_instance_creation, composite_collection_test_1_code49, initializer, range(composite_collection_test_1, 8682, 27, 270, 270), "new CompositeCollection<>()").
expr(composite_collection_test_1_expr30, method_invocation, composite_collection_test_1_stmt23, expression, range(composite_collection_test_1, 8719, 46, 271, 271), "cc.addComposited(nullList,nullList,nullList)").
expr(composite_collection_test_1_expr31, method_invocation, composite_collection_test_1_stmt24, expression, range(composite_collection_test_1, 8775, 33, 272, 272), "Assert.assertEquals(0,cc.size())").
expr(composite_collection_test_1_expr32, method_invocation, composite_collection_test_1_expr31, (arguments, 1), range(composite_collection_test_1, 8798, 9, 272, 272), "cc.size()").
expr(composite_collection_test_1_expr33, method_invocation, composite_collection_test_1_stmt25, expression, range(composite_collection_test_1, 10450, 18, 331, 331), "setUpMutatorTest()").
expr(composite_collection_test_1_expr34, method_invocation, composite_collection_test_1_stmt26, expression, range(composite_collection_test_1, 10478, 16, 332, 332), "one.add((E)\"1\")").
expr(composite_collection_test_1_expr35, cast_expression, composite_collection_test_1_expr34, (arguments, 0), range(composite_collection_test_1, 10486, 7, 332, 332), "(E)\"1\"").
expr(composite_collection_test_1_expr36, method_invocation, composite_collection_test_1_stmt27, expression, range(composite_collection_test_1, 10504, 16, 333, 333), "two.add((E)\"2\")").
expr(composite_collection_test_1_expr37, cast_expression, composite_collection_test_1_expr36, (arguments, 0), range(composite_collection_test_1, 10512, 7, 333, 333), "(E)\"2\"").
expr(composite_collection_test_1_expr38, method_invocation, composite_collection_test_1_stmt28, expression, range(composite_collection_test_1, 10530, 16, 334, 334), "two.add((E)\"1\")").
expr(composite_collection_test_1_expr39, cast_expression, composite_collection_test_1_expr38, (arguments, 0), range(composite_collection_test_1, 10538, 7, 334, 334), "(E)\"1\"").
expr(composite_collection_test_1_expr40, class_instance_creation, composite_collection_test_1_code60, initializer, range(composite_collection_test_1, 10659, 20, 336, 336), "new ArrayList<>(one)").
expr(composite_collection_test_1_expr41, method_invocation, composite_collection_test_1_stmt30, expression, range(composite_collection_test_1, 10689, 25, 337, 337), "c.addComposited(one,two)").
expr(composite_collection_test_1_expr42, method_invocation, composite_collection_test_1_stmt31, expression, range(composite_collection_test_1, 10724, 21, 338, 338), "c.removeAll(removing)").
expr(composite_collection_test_1_expr43, method_invocation, composite_collection_test_1_stmt32, expression, range(composite_collection_test_1, 10755, 28, 339, 339), "assertTrue(!c.contains(\"1\"))").
expr(composite_collection_test_1_expr44, prefix_expression, composite_collection_test_1_expr43, (arguments, 0), range(composite_collection_test_1, 10766, 16, 339, 339), "!c.contains(\"1\")").
expr(composite_collection_test_1_expr45, method_invocation, composite_collection_test_1_expr44, operand, range(composite_collection_test_1, 10767, 15, 339, 339), "c.contains(\"1\")").
expr(composite_collection_test_1_expr46, method_invocation, composite_collection_test_1_stmt33, expression, range(composite_collection_test_1, 10793, 30, 340, 340), "assertTrue(!one.contains(\"1\"))").
expr(composite_collection_test_1_expr47, prefix_expression, composite_collection_test_1_expr46, (arguments, 0), range(composite_collection_test_1, 10804, 18, 340, 340), "!one.contains(\"1\")").
expr(composite_collection_test_1_expr48, method_invocation, composite_collection_test_1_expr47, operand, range(composite_collection_test_1, 10805, 17, 340, 340), "one.contains(\"1\")").
expr(composite_collection_test_1_expr49, method_invocation, composite_collection_test_1_stmt34, expression, range(composite_collection_test_1, 10833, 30, 341, 341), "assertTrue(!two.contains(\"1\"))").
expr(composite_collection_test_1_expr50, prefix_expression, composite_collection_test_1_expr49, (arguments, 0), range(composite_collection_test_1, 10844, 18, 341, 341), "!two.contains(\"1\")").
expr(composite_collection_test_1_expr51, method_invocation, composite_collection_test_1_expr50, operand, range(composite_collection_test_1, 10845, 17, 341, 341), "two.contains(\"1\")").
expr(composite_collection_test_1_expr52, method_invocation, composite_collection_test_1_stmt35, expression, range(composite_collection_test_1, 10873, 17, 342, 342), "c.removeAll(null)").
expr(composite_collection_test_1_expr53, method_invocation, composite_collection_test_1_stmt36, expression, range(composite_collection_test_1, 11423, 11, 362, 362), "setUpTest()").
expr(composite_collection_test_1_expr54, method_invocation, composite_collection_test_1_stmt37, expression, range(composite_collection_test_1, 11444, 16, 363, 363), "one.add((E)\"1\")").
expr(composite_collection_test_1_expr55, cast_expression, composite_collection_test_1_expr54, (arguments, 0), range(composite_collection_test_1, 11452, 7, 363, 363), "(E)\"1\"").
expr(composite_collection_test_1_expr56, method_invocation, composite_collection_test_1_stmt38, expression, range(composite_collection_test_1, 11470, 16, 364, 364), "one.add((E)\"2\")").
expr(composite_collection_test_1_expr57, cast_expression, composite_collection_test_1_expr56, (arguments, 0), range(composite_collection_test_1, 11478, 7, 364, 364), "(E)\"2\"").
expr(composite_collection_test_1_expr58, method_invocation, composite_collection_test_1_stmt39, expression, range(composite_collection_test_1, 11496, 16, 365, 365), "two.add((E)\"1\")").
expr(composite_collection_test_1_expr59, cast_expression, composite_collection_test_1_expr58, (arguments, 0), range(composite_collection_test_1, 11504, 7, 365, 365), "(E)\"1\"").
expr(composite_collection_test_1_expr60, method_invocation, composite_collection_test_1_stmt40, expression, range(composite_collection_test_1, 11522, 20, 366, 366), "c.addComposited(one)").
expr(composite_collection_test_1_expr61, method_invocation, composite_collection_test_1_stmt41, expression, range(composite_collection_test_1, 11552, 16, 367, 367), "c.retainAll(two)").
expr(composite_collection_test_1_expr62, method_invocation, composite_collection_test_1_stmt42, expression, range(composite_collection_test_1, 11578, 28, 368, 368), "assertTrue(!c.contains(\"2\"))").
expr(composite_collection_test_1_expr63, prefix_expression, composite_collection_test_1_expr62, (arguments, 0), range(composite_collection_test_1, 11589, 16, 368, 368), "!c.contains(\"2\")").
expr(composite_collection_test_1_expr64, method_invocation, composite_collection_test_1_expr63, operand, range(composite_collection_test_1, 11590, 15, 368, 368), "c.contains(\"2\")").
expr(composite_collection_test_1_expr65, method_invocation, composite_collection_test_1_stmt43, expression, range(composite_collection_test_1, 11616, 30, 369, 369), "assertTrue(!one.contains(\"2\"))").
expr(composite_collection_test_1_expr66, prefix_expression, composite_collection_test_1_expr65, (arguments, 0), range(composite_collection_test_1, 11627, 18, 369, 369), "!one.contains(\"2\")").
expr(composite_collection_test_1_expr67, method_invocation, composite_collection_test_1_expr66, operand, range(composite_collection_test_1, 11628, 17, 369, 369), "one.contains(\"2\")").
expr(composite_collection_test_1_expr68, method_invocation, composite_collection_test_1_stmt44, expression, range(composite_collection_test_1, 11656, 27, 370, 370), "assertTrue(c.contains(\"1\"))").
expr(composite_collection_test_1_expr69, method_invocation, composite_collection_test_1_expr68, (arguments, 0), range(composite_collection_test_1, 11667, 15, 370, 370), "c.contains(\"1\")").
expr(composite_collection_test_1_expr70, method_invocation, composite_collection_test_1_stmt45, expression, range(composite_collection_test_1, 11693, 29, 371, 371), "assertTrue(one.contains(\"1\"))").
expr(composite_collection_test_1_expr71, method_invocation, composite_collection_test_1_expr70, (arguments, 0), range(composite_collection_test_1, 11704, 17, 371, 371), "one.contains(\"1\")").
expr(composite_collection_test_1_expr72, method_invocation, composite_collection_test_1_stmt46, expression, range(composite_collection_test_1, 11732, 17, 372, 372), "c.retainAll(null)").

%%% Names
%composite_collection_1 - org.apache.commons.collections4.collection.CompositeCollection
name(f_all_1, simple_name, composite_collection_1_code11, name, range(composite_collection_1, 2003, 3, 50, 50), 'all').
name(v_size_6, simple_name, composite_collection_1_code17, name, range(composite_collection_1, 3596, 4, 101, 101), 'size').
name(v_item_8, simple_name, composite_collection_1_code18, name, range(composite_collection_1, 3639, 4, 102, 102), 'item').
name(f_all_7, simple_name, composite_collection_1_stmt3, expression, range(composite_collection_1, 3646, 3, 102, 102), 'all').
name(v_size_6, simple_name, composite_collection_1_expr3, left_hand_side, range(composite_collection_1, 3665, 4, 103, 103), 'size').
name(v_item_8, simple_name, composite_collection_1_expr4, expression, range(composite_collection_1, 3673, 4, 103, 103), 'item').
name(m_size_8, simple_name, composite_collection_1_expr4, name, range(composite_collection_1, 3678, 4, 103, 103), 'size').
name(v_item_10, simple_name, composite_collection_1_code24, name, range(composite_collection_1, 4570, 4, 135, 135), 'item').
name(f_all_7, simple_name, composite_collection_1_stmt5, expression, range(composite_collection_1, 4577, 3, 135, 135), 'all').
name(v_item_10, simple_name, composite_collection_1_expr5, expression, range(composite_collection_1, 4600, 4, 136, 136), 'item').
name(m_contains_11, simple_name, composite_collection_1_expr5, name, range(composite_collection_1, 4605, 8, 136, 136), 'contains').
name(p_obj_9, simple_name, composite_collection_1_expr5, (arguments, 0), range(composite_collection_1, 4614, 3, 136, 136), 'obj').
name(v_item_15, simple_name, composite_collection_1_code30, name, range(composite_collection_1, 9112, 4, 263, 263), 'item').
name(p_coll_14, simple_name, composite_collection_1_stmt9, expression, range(composite_collection_1, 9119, 4, 263, 263), 'coll').
name(m_contains_10, simple_name, composite_collection_1_expr7, name, range(composite_collection_1, 9143, 8, 264, 264), 'contains').
name(v_item_15, simple_name, composite_collection_1_expr7, (arguments, 0), range(composite_collection_1, 9152, 4, 264, 264), 'item').
name(p_coll_17, simple_name, composite_collection_1_expr9, expression, range(composite_collection_1, 10686, 4, 303, 303), 'coll').
name(m_size_8, simple_name, composite_collection_1_expr9, name, range(composite_collection_1, 10691, 4, 303, 303), 'size').
name(v_changed_18, simple_name, composite_collection_1_code35, name, range(composite_collection_1, 10758, 7, 306, 306), 'changed').
name(v_item_19, simple_name, composite_collection_1_code36, name, range(composite_collection_1, 10808, 4, 307, 307), 'item').
name(f_all_7, simple_name, composite_collection_1_stmt14, expression, range(composite_collection_1, 10815, 3, 307, 307), 'all').
name(v_changed_18, simple_name, composite_collection_1_expr10, left_hand_side, range(composite_collection_1, 10834, 7, 308, 308), 'changed').
name(v_item_19, simple_name, composite_collection_1_expr11, expression, range(composite_collection_1, 10845, 4, 308, 308), 'item').
name(m_remove_all_20, simple_name, composite_collection_1_expr11, name, range(composite_collection_1, 10850, 9, 308, 308), 'removeAll').
name(p_coll_17, simple_name, composite_collection_1_expr11, (arguments, 0), range(composite_collection_1, 10860, 4, 308, 308), 'coll').
name(v_changed_18, simple_name, composite_collection_1_stmt16, expression, range(composite_collection_1, 10892, 7, 310, 310), 'changed').
name(v_changed_21, simple_name, composite_collection_1_code43, name, range(composite_collection_1, 11394, 7, 325, 325), 'changed').
name(v_item_22, simple_name, composite_collection_1_code44, name, range(composite_collection_1, 11444, 4, 326, 326), 'item').
name(f_all_7, simple_name, composite_collection_1_stmt18, expression, range(composite_collection_1, 11451, 3, 326, 326), 'all').
name(v_changed_21, simple_name, composite_collection_1_expr12, left_hand_side, range(composite_collection_1, 11470, 7, 327, 327), 'changed').
name(v_item_22, simple_name, composite_collection_1_expr13, expression, range(composite_collection_1, 11481, 4, 327, 327), 'item').
name(m_retain_all_22, simple_name, composite_collection_1_expr13, name, range(composite_collection_1, 11486, 9, 327, 327), 'retainAll').
name(p_coll_20, simple_name, composite_collection_1_expr13, (arguments, 0), range(composite_collection_1, 11496, 4, 327, 327), 'coll').
name(v_changed_21, simple_name, composite_collection_1_stmt20, expression, range(composite_collection_1, 11528, 7, 329, 329), 'changed').
name(f_mutator_24, simple_name, composite_collection_1_expr15, name, range(composite_collection_1, 12202, 7, 353, 353), 'mutator').
name(p_mutator_23, simple_name, composite_collection_1_expr14, right_hand_side, range(composite_collection_1, 12212, 7, 353, 353), 'mutator').
name(f_all_7, simple_name, composite_collection_1_expr17, expression, range(composite_collection_1, 12488, 3, 362, 362), 'all').
name(m_add_26, simple_name, composite_collection_1_expr17, name, range(composite_collection_1, 12492, 3, 362, 362), 'add').
name(p_composite_collection_25, simple_name, composite_collection_1_expr17, (arguments, 0), range(composite_collection_1, 12496, 19, 362, 362), 'compositeCollection').
name(f_all_7, simple_name, composite_collection_1_expr18, expression, range(composite_collection_1, 12942, 3, 373, 373), 'all').
name(m_add_26, simple_name, composite_collection_1_expr18, name, range(composite_collection_1, 12946, 3, 373, 373), 'add').
name(p_composite_collection1_26, simple_name, composite_collection_1_expr18, (arguments, 0), range(composite_collection_1, 12950, 20, 373, 373), 'compositeCollection1').
name(f_all_7, simple_name, composite_collection_1_expr19, expression, range(composite_collection_1, 12981, 3, 374, 374), 'all').
name(m_add_26, simple_name, composite_collection_1_expr19, name, range(composite_collection_1, 12985, 3, 374, 374), 'add').
name(p_composite_collection2_27, simple_name, composite_collection_1_expr19, (arguments, 0), range(composite_collection_1, 12989, 20, 374, 374), 'compositeCollection2').
name(f_all_7, simple_name, composite_collection_1_expr20, expression, range(composite_collection_1, 13285, 3, 383, 383), 'all').
name(m_add_all_29, simple_name, composite_collection_1_expr20, name, range(composite_collection_1, 13289, 6, 383, 383), 'addAll').
name(t_arrays_1, simple_name, composite_collection_1_expr21, expression, range(composite_collection_1, 13296, 6, 383, 383), 'Arrays').
name(m_as_list_30, simple_name, composite_collection_1_expr21, name, range(composite_collection_1, 13303, 6, 383, 383), 'asList').
name(p_composite_collections_28, simple_name, composite_collection_1_expr21, (arguments, 0), range(composite_collection_1, 13310, 20, 383, 383), 'compositeCollections').
%composite_collection_test_1 - org.apache.commons.collections4.collection.CompositeCollectionTest
name(p_name_39, simple_name, composite_collection_test_1_stmt1, (arguments, 0), range(composite_collection_test_1, 1432, 4, 43, 43), 'name').
name(m_set_up_test_49, simple_name, composite_collection_test_1_expr2, name, range(composite_collection_test_1, 3292, 9, 111, 111), 'setUpTest').
name(f_c_40, simple_name, composite_collection_test_1_expr3, expression, range(composite_collection_test_1, 3313, 1, 112, 112), 'c').
name(m_set_mutator_24, simple_name, composite_collection_test_1_expr3, name, range(composite_collection_test_1, 3315, 10, 112, 112), 'setMutator').
name(f_c_40, simple_name, composite_collection_test_1_expr5, left_hand_side, range(composite_collection_test_1, 4461, 1, 143, 143), 'c').
name(f_one_50, simple_name, composite_collection_test_1_expr7, left_hand_side, range(composite_collection_test_1, 4502, 3, 144, 144), 'one').
name(f_two_51, simple_name, composite_collection_test_1_expr9, left_hand_side, range(composite_collection_test_1, 4533, 3, 145, 145), 'two').
name(m_set_up_test_49, simple_name, composite_collection_test_1_expr11, name, range(composite_collection_test_1, 7876, 9, 246, 246), 'setUpTest').
name(f_one_50, simple_name, composite_collection_test_1_expr12, expression, range(composite_collection_test_1, 7897, 3, 247, 247), 'one').
name(m_add_66, simple_name, composite_collection_test_1_expr12, name, range(composite_collection_test_1, 7901, 3, 247, 247), 'add').
name(f_two_51, simple_name, composite_collection_test_1_expr14, expression, range(composite_collection_test_1, 7923, 3, 248, 248), 'two').
name(m_add_66, simple_name, composite_collection_test_1_expr14, name, range(composite_collection_test_1, 7927, 3, 248, 248), 'add').
name(f_c_40, simple_name, composite_collection_test_1_expr16, expression, range(composite_collection_test_1, 7949, 1, 249, 249), 'c').
name(m_add_composited_25, simple_name, composite_collection_test_1_expr16, name, range(composite_collection_test_1, 7951, 13, 249, 249), 'addComposited').
name(f_one_50, simple_name, composite_collection_test_1_expr16, (arguments, 0), range(composite_collection_test_1, 7965, 3, 249, 249), 'one').
name(m_assert_true_67, simple_name, composite_collection_test_1_expr17, name, range(composite_collection_test_1, 7979, 10, 250, 250), 'assertTrue').
name(f_c_40, simple_name, composite_collection_test_1_expr18, expression, range(composite_collection_test_1, 7990, 1, 250, 250), 'c').
name(m_contains_all_17, simple_name, composite_collection_test_1_expr18, name, range(composite_collection_test_1, 7992, 11, 250, 250), 'containsAll').
name(f_two_51, simple_name, composite_collection_test_1_expr18, (arguments, 0), range(composite_collection_test_1, 8004, 3, 250, 250), 'two').
name(m_assert_false_68, simple_name, composite_collection_test_1_expr19, name, range(composite_collection_test_1, 8019, 11, 251, 251), 'assertFalse').
name(f_c_40, simple_name, composite_collection_test_1_expr20, expression, range(composite_collection_test_1, 8031, 1, 251, 251), 'c').
name(m_contains_all_17, simple_name, composite_collection_test_1_expr20, name, range(composite_collection_test_1, 8033, 11, 251, 251), 'containsAll').
name(v_null_list_70, simple_name, composite_collection_test_1_code23, name, range(composite_collection_test_1, 8122, 8, 255, 255), 'nullList').
name(v_cc_71, simple_name, composite_collection_test_1_code27, name, range(composite_collection_test_1, 8175, 2, 256, 256), 'cc').
name(v_cc_71, simple_name, composite_collection_test_1_expr22, expression, range(composite_collection_test_1, 8217, 2, 257, 257), 'cc').
name(m_add_composited_25, simple_name, composite_collection_test_1_expr22, name, range(composite_collection_test_1, 8220, 13, 257, 257), 'addComposited').
name(v_null_list_70, simple_name, composite_collection_test_1_expr22, (arguments, 0), range(composite_collection_test_1, 8234, 8, 257, 257), 'nullList').
name(t_assert_2, simple_name, composite_collection_test_1_expr23, expression, range(composite_collection_test_1, 8253, 6, 258, 258), 'Assert').
name(m_assert_equals_70, simple_name, composite_collection_test_1_expr23, name, range(composite_collection_test_1, 8260, 12, 258, 258), 'assertEquals').
name(v_cc_71, simple_name, composite_collection_test_1_expr24, expression, range(composite_collection_test_1, 8276, 2, 258, 258), 'cc').
name(m_size_7, simple_name, composite_collection_test_1_expr24, name, range(composite_collection_test_1, 8279, 4, 258, 258), 'size').
name(v_null_list_72, simple_name, composite_collection_test_1_code34, name, range(composite_collection_test_1, 8367, 8, 262, 262), 'nullList').
name(v_cc_73, simple_name, composite_collection_test_1_code38, name, range(composite_collection_test_1, 8420, 2, 263, 263), 'cc').
name(v_cc_73, simple_name, composite_collection_test_1_expr26, expression, range(composite_collection_test_1, 8462, 2, 264, 264), 'cc').
name(m_add_composited_27, simple_name, composite_collection_test_1_expr26, name, range(composite_collection_test_1, 8465, 13, 264, 264), 'addComposited').
name(v_null_list_72, simple_name, composite_collection_test_1_expr26, (arguments, 0), range(composite_collection_test_1, 8479, 8, 264, 264), 'nullList').
name(v_null_list_72, simple_name, composite_collection_test_1_expr26, (arguments, 1), range(composite_collection_test_1, 8489, 8, 264, 264), 'nullList').
name(t_assert_2, simple_name, composite_collection_test_1_expr27, expression, range(composite_collection_test_1, 8508, 6, 265, 265), 'Assert').
name(m_assert_equals_70, simple_name, composite_collection_test_1_expr27, name, range(composite_collection_test_1, 8515, 12, 265, 265), 'assertEquals').
name(v_cc_73, simple_name, composite_collection_test_1_expr28, expression, range(composite_collection_test_1, 8531, 2, 265, 265), 'cc').
name(m_size_7, simple_name, composite_collection_test_1_expr28, name, range(composite_collection_test_1, 8534, 4, 265, 265), 'size').
name(v_null_list_74, simple_name, composite_collection_test_1_code45, name, range(composite_collection_test_1, 8624, 8, 269, 269), 'nullList').
name(v_cc_75, simple_name, composite_collection_test_1_code49, name, range(composite_collection_test_1, 8677, 2, 270, 270), 'cc').
name(v_cc_75, simple_name, composite_collection_test_1_expr30, expression, range(composite_collection_test_1, 8719, 2, 271, 271), 'cc').
name(m_add_composited_28, simple_name, composite_collection_test_1_expr30, name, range(composite_collection_test_1, 8722, 13, 271, 271), 'addComposited').
name(v_null_list_74, simple_name, composite_collection_test_1_expr30, (arguments, 0), range(composite_collection_test_1, 8736, 8, 271, 271), 'nullList').
name(v_null_list_74, simple_name, composite_collection_test_1_expr30, (arguments, 1), range(composite_collection_test_1, 8746, 8, 271, 271), 'nullList').
name(v_null_list_74, simple_name, composite_collection_test_1_expr30, (arguments, 2), range(composite_collection_test_1, 8756, 8, 271, 271), 'nullList').
name(t_assert_2, simple_name, composite_collection_test_1_expr31, expression, range(composite_collection_test_1, 8775, 6, 272, 272), 'Assert').
name(m_assert_equals_70, simple_name, composite_collection_test_1_expr31, name, range(composite_collection_test_1, 8782, 12, 272, 272), 'assertEquals').
name(v_cc_75, simple_name, composite_collection_test_1_expr32, expression, range(composite_collection_test_1, 8798, 2, 272, 272), 'cc').
name(m_size_7, simple_name, composite_collection_test_1_expr32, name, range(composite_collection_test_1, 8801, 4, 272, 272), 'size').
name(m_set_up_mutator_test_48, simple_name, composite_collection_test_1_expr33, name, range(composite_collection_test_1, 10450, 16, 331, 331), 'setUpMutatorTest').
name(f_one_50, simple_name, composite_collection_test_1_expr34, expression, range(composite_collection_test_1, 10478, 3, 332, 332), 'one').
name(m_add_66, simple_name, composite_collection_test_1_expr34, name, range(composite_collection_test_1, 10482, 3, 332, 332), 'add').
name(f_two_51, simple_name, composite_collection_test_1_expr36, expression, range(composite_collection_test_1, 10504, 3, 333, 333), 'two').
name(m_add_66, simple_name, composite_collection_test_1_expr36, name, range(composite_collection_test_1, 10508, 3, 333, 333), 'add').
name(f_two_51, simple_name, composite_collection_test_1_expr38, expression, range(composite_collection_test_1, 10530, 3, 334, 334), 'two').
name(m_add_66, simple_name, composite_collection_test_1_expr38, name, range(composite_collection_test_1, 10534, 3, 334, 334), 'add').
name(v_removing_76, simple_name, composite_collection_test_1_code60, name, range(composite_collection_test_1, 10648, 8, 336, 336), 'removing').
name(f_one_50, simple_name, composite_collection_test_1_expr40, (arguments, 0), range(composite_collection_test_1, 10675, 3, 336, 336), 'one').
name(f_c_40, simple_name, composite_collection_test_1_expr41, expression, range(composite_collection_test_1, 10689, 1, 337, 337), 'c').
name(m_add_composited_27, simple_name, composite_collection_test_1_expr41, name, range(composite_collection_test_1, 10691, 13, 337, 337), 'addComposited').
name(f_one_50, simple_name, composite_collection_test_1_expr41, (arguments, 0), range(composite_collection_test_1, 10705, 3, 337, 337), 'one').
name(f_two_51, simple_name, composite_collection_test_1_expr41, (arguments, 1), range(composite_collection_test_1, 10710, 3, 337, 337), 'two').
name(f_c_40, simple_name, composite_collection_test_1_expr42, expression, range(composite_collection_test_1, 10724, 1, 338, 338), 'c').
name(m_remove_all_19, simple_name, composite_collection_test_1_expr42, name, range(composite_collection_test_1, 10726, 9, 338, 338), 'removeAll').
name(v_removing_76, simple_name, composite_collection_test_1_expr42, (arguments, 0), range(composite_collection_test_1, 10736, 8, 338, 338), 'removing').
name(m_assert_true_67, simple_name, composite_collection_test_1_expr43, name, range(composite_collection_test_1, 10755, 10, 339, 339), 'assertTrue').
name(f_c_40, simple_name, composite_collection_test_1_expr45, expression, range(composite_collection_test_1, 10767, 1, 339, 339), 'c').
name(m_contains_10, simple_name, composite_collection_test_1_expr45, name, range(composite_collection_test_1, 10769, 8, 339, 339), 'contains').
name(m_assert_true_67, simple_name, composite_collection_test_1_expr46, name, range(composite_collection_test_1, 10793, 10, 340, 340), 'assertTrue').
name(f_one_50, simple_name, composite_collection_test_1_expr48, expression, range(composite_collection_test_1, 10805, 3, 340, 340), 'one').
name(m_contains_11, simple_name, composite_collection_test_1_expr48, name, range(composite_collection_test_1, 10809, 8, 340, 340), 'contains').
name(m_assert_true_67, simple_name, composite_collection_test_1_expr49, name, range(composite_collection_test_1, 10833, 10, 341, 341), 'assertTrue').
name(f_two_51, simple_name, composite_collection_test_1_expr51, expression, range(composite_collection_test_1, 10845, 3, 341, 341), 'two').
name(m_contains_11, simple_name, composite_collection_test_1_expr51, name, range(composite_collection_test_1, 10849, 8, 341, 341), 'contains').
name(f_c_40, simple_name, composite_collection_test_1_expr52, expression, range(composite_collection_test_1, 10873, 1, 342, 342), 'c').
name(m_remove_all_19, simple_name, composite_collection_test_1_expr52, name, range(composite_collection_test_1, 10875, 9, 342, 342), 'removeAll').
name(m_set_up_test_49, simple_name, composite_collection_test_1_expr53, name, range(composite_collection_test_1, 11423, 9, 362, 362), 'setUpTest').
name(f_one_50, simple_name, composite_collection_test_1_expr54, expression, range(composite_collection_test_1, 11444, 3, 363, 363), 'one').
name(m_add_66, simple_name, composite_collection_test_1_expr54, name, range(composite_collection_test_1, 11448, 3, 363, 363), 'add').
name(f_one_50, simple_name, composite_collection_test_1_expr56, expression, range(composite_collection_test_1, 11470, 3, 364, 364), 'one').
name(m_add_66, simple_name, composite_collection_test_1_expr56, name, range(composite_collection_test_1, 11474, 3, 364, 364), 'add').
name(f_two_51, simple_name, composite_collection_test_1_expr58, expression, range(composite_collection_test_1, 11496, 3, 365, 365), 'two').
name(m_add_66, simple_name, composite_collection_test_1_expr58, name, range(composite_collection_test_1, 11500, 3, 365, 365), 'add').
name(f_c_40, simple_name, composite_collection_test_1_expr60, expression, range(composite_collection_test_1, 11522, 1, 366, 366), 'c').
name(m_add_composited_25, simple_name, composite_collection_test_1_expr60, name, range(composite_collection_test_1, 11524, 13, 366, 366), 'addComposited').
name(f_one_50, simple_name, composite_collection_test_1_expr60, (arguments, 0), range(composite_collection_test_1, 11538, 3, 366, 366), 'one').
name(f_c_40, simple_name, composite_collection_test_1_expr61, expression, range(composite_collection_test_1, 11552, 1, 367, 367), 'c').
name(m_retain_all_21, simple_name, composite_collection_test_1_expr61, name, range(composite_collection_test_1, 11554, 9, 367, 367), 'retainAll').
name(f_two_51, simple_name, composite_collection_test_1_expr61, (arguments, 0), range(composite_collection_test_1, 11564, 3, 367, 367), 'two').
name(m_assert_true_67, simple_name, composite_collection_test_1_expr62, name, range(composite_collection_test_1, 11578, 10, 368, 368), 'assertTrue').
name(f_c_40, simple_name, composite_collection_test_1_expr64, expression, range(composite_collection_test_1, 11590, 1, 368, 368), 'c').
name(m_contains_10, simple_name, composite_collection_test_1_expr64, name, range(composite_collection_test_1, 11592, 8, 368, 368), 'contains').
name(m_assert_true_67, simple_name, composite_collection_test_1_expr65, name, range(composite_collection_test_1, 11616, 10, 369, 369), 'assertTrue').
name(f_one_50, simple_name, composite_collection_test_1_expr67, expression, range(composite_collection_test_1, 11628, 3, 369, 369), 'one').
name(m_contains_11, simple_name, composite_collection_test_1_expr67, name, range(composite_collection_test_1, 11632, 8, 369, 369), 'contains').
name(m_assert_true_67, simple_name, composite_collection_test_1_expr68, name, range(composite_collection_test_1, 11656, 10, 370, 370), 'assertTrue').
name(f_c_40, simple_name, composite_collection_test_1_expr69, expression, range(composite_collection_test_1, 11667, 1, 370, 370), 'c').
name(m_contains_10, simple_name, composite_collection_test_1_expr69, name, range(composite_collection_test_1, 11669, 8, 370, 370), 'contains').
name(m_assert_true_67, simple_name, composite_collection_test_1_expr70, name, range(composite_collection_test_1, 11693, 10, 371, 371), 'assertTrue').
name(f_one_50, simple_name, composite_collection_test_1_expr71, expression, range(composite_collection_test_1, 11704, 3, 371, 371), 'one').
name(m_contains_11, simple_name, composite_collection_test_1_expr71, name, range(composite_collection_test_1, 11708, 8, 371, 371), 'contains').
name(f_c_40, simple_name, composite_collection_test_1_expr72, expression, range(composite_collection_test_1, 11732, 1, 372, 372), 'c').
name(m_retain_all_21, simple_name, composite_collection_test_1_expr72, name, range(composite_collection_test_1, 11734, 9, 372, 372), 'retainAll').

%%% Literals
%composite_collection_1 - org.apache.commons.collections4.collection.CompositeCollection
literal(composite_collection_1_literal1, number_literal, composite_collection_1_code17, initializer, range(composite_collection_1, 3603, 1, 101, 101), 0).
literal(composite_collection_1_literal2, boolean_literal, composite_collection_1_stmt7, expression, range(composite_collection_1, 4645, 4, 137, 137), true).
literal(composite_collection_1_literal3, boolean_literal, composite_collection_1_stmt8, expression, range(composite_collection_1, 4690, 5, 140, 140), false).
literal(composite_collection_1_literal4, boolean_literal, composite_collection_1_expr6, right_operand, range(composite_collection_1, 9161, 5, 264, 264), false).
literal(composite_collection_1_literal5, boolean_literal, composite_collection_1_stmt11, expression, range(composite_collection_1, 9239, 4, 268, 268), true).
literal(composite_collection_1_literal6, number_literal, composite_collection_1_expr8, right_operand, range(composite_collection_1, 10701, 1, 303, 303), 0).
literal(composite_collection_1_literal7, boolean_literal, composite_collection_1_code35, initializer, range(composite_collection_1, 10768, 5, 306, 306), false).
literal(composite_collection_1_literal8, boolean_literal, composite_collection_1_code43, initializer, range(composite_collection_1, 11404, 5, 325, 325), false).
%composite_collection_test_1 - org.apache.commons.collections4.collection.CompositeCollectionTest
literal(composite_collection_test_1_literal1, string_literal, composite_collection_test_1_expr13, expression, range(composite_collection_test_1, 7909, 3, 247, 247), "1").
literal(composite_collection_test_1_literal2, string_literal, composite_collection_test_1_expr15, expression, range(composite_collection_test_1, 7935, 3, 248, 248), "1").
literal(composite_collection_test_1_literal3, null_literal, composite_collection_test_1_expr20, (arguments, 0), range(composite_collection_test_1, 8045, 4, 251, 251), null).
literal(composite_collection_test_1_literal4, null_literal, composite_collection_test_1_code23, initializer, range(composite_collection_test_1, 8133, 4, 255, 255), null).
literal(composite_collection_test_1_literal5, number_literal, composite_collection_test_1_expr23, (arguments, 0), range(composite_collection_test_1, 8273, 1, 258, 258), 0).
literal(composite_collection_test_1_literal6, null_literal, composite_collection_test_1_code34, initializer, range(composite_collection_test_1, 8378, 4, 262, 262), null).
literal(composite_collection_test_1_literal7, number_literal, composite_collection_test_1_expr27, (arguments, 0), range(composite_collection_test_1, 8528, 1, 265, 265), 0).
literal(composite_collection_test_1_literal8, null_literal, composite_collection_test_1_code45, initializer, range(composite_collection_test_1, 8635, 4, 269, 269), null).
literal(composite_collection_test_1_literal9, number_literal, composite_collection_test_1_expr31, (arguments, 0), range(composite_collection_test_1, 8795, 1, 272, 272), 0).
literal(composite_collection_test_1_literal10, string_literal, composite_collection_test_1_expr35, expression, range(composite_collection_test_1, 10490, 3, 332, 332), "1").
literal(composite_collection_test_1_literal11, string_literal, composite_collection_test_1_expr37, expression, range(composite_collection_test_1, 10516, 3, 333, 333), "2").
literal(composite_collection_test_1_literal12, string_literal, composite_collection_test_1_expr39, expression, range(composite_collection_test_1, 10542, 3, 334, 334), "1").
literal(composite_collection_test_1_literal13, string_literal, composite_collection_test_1_expr45, (arguments, 0), range(composite_collection_test_1, 10778, 3, 339, 339), "1").
literal(composite_collection_test_1_literal14, string_literal, composite_collection_test_1_expr48, (arguments, 0), range(composite_collection_test_1, 10818, 3, 340, 340), "1").
literal(composite_collection_test_1_literal15, string_literal, composite_collection_test_1_expr51, (arguments, 0), range(composite_collection_test_1, 10858, 3, 341, 341), "1").
literal(composite_collection_test_1_literal16, null_literal, composite_collection_test_1_expr52, (arguments, 0), range(composite_collection_test_1, 10885, 4, 342, 342), null).
literal(composite_collection_test_1_literal17, string_literal, composite_collection_test_1_expr55, expression, range(composite_collection_test_1, 11456, 3, 363, 363), "1").
literal(composite_collection_test_1_literal18, string_literal, composite_collection_test_1_expr57, expression, range(composite_collection_test_1, 11482, 3, 364, 364), "2").
literal(composite_collection_test_1_literal19, string_literal, composite_collection_test_1_expr59, expression, range(composite_collection_test_1, 11508, 3, 365, 365), "1").
literal(composite_collection_test_1_literal20, string_literal, composite_collection_test_1_expr64, (arguments, 0), range(composite_collection_test_1, 11601, 3, 368, 368), "2").
literal(composite_collection_test_1_literal21, string_literal, composite_collection_test_1_expr67, (arguments, 0), range(composite_collection_test_1, 11641, 3, 369, 369), "2").
literal(composite_collection_test_1_literal22, string_literal, composite_collection_test_1_expr69, (arguments, 0), range(composite_collection_test_1, 11678, 3, 370, 370), "1").
literal(composite_collection_test_1_literal23, string_literal, composite_collection_test_1_expr71, (arguments, 0), range(composite_collection_test_1, 11717, 3, 371, 371), "1").
literal(composite_collection_test_1_literal24, null_literal, composite_collection_test_1_expr72, (arguments, 0), range(composite_collection_test_1, 11744, 4, 372, 372), null).

%%% Other Code Entities
%composite_collection_1 - org.apache.commons.collections4.collection.CompositeCollection
code(composite_collection_1_code1, compilation_unit, range(composite_collection_1, 0, 17236, 1, -1)).
code(composite_collection_1_code2, type_declaration, composite_collection_1_code1, (types, 0), range(composite_collection_1, 1241, 15993, 31, 479)).
code(composite_collection_1_code3, field_declaration, composite_collection_1_code2, (body_declarations, 2), range(composite_collection_1, 1929, 98, 49, 50)).
code(composite_collection_1_code4, modifier, composite_collection_1_code3, (modifiers, 0), range(composite_collection_1, 1969, 7, 50, 50)).
code(composite_collection_1_code5, modifier, composite_collection_1_code3, (modifiers, 1), range(composite_collection_1, 1977, 5, 50, 50)).
code(composite_collection_1_code7, simple_type, composite_collection_1_code6, type, range(composite_collection_1, 1983, 4, 50, 50)).
code(composite_collection_1_code6, parameterized_type, composite_collection_1_code3, type, range(composite_collection_1, 1983, 19, 50, 50)).
code(composite_collection_1_code9, simple_type, composite_collection_1_code8, type, range(composite_collection_1, 1988, 10, 50, 50)).
code(composite_collection_1_code8, parameterized_type, composite_collection_1_code6, (type_arguments, 0), range(composite_collection_1, 1988, 13, 50, 50)).
code(composite_collection_1_code10, simple_type, composite_collection_1_code8, (type_arguments, 0), range(composite_collection_1, 1999, 1, 50, 50)).
code(composite_collection_1_code11, variable_declaration_fragment, composite_collection_1_code3, (fragments, 0), range(composite_collection_1, 2003, 23, 50, 50)).
code(composite_collection_1_code13, simple_type, composite_collection_1_code12, type, range(composite_collection_1, 2013, 9, 50, 50)).
code(composite_collection_1_code12, parameterized_type, composite_collection_1_expr1, type, range(composite_collection_1, 2013, 11, 50, 50)).
code(composite_collection_1_code14, method_declaration, composite_collection_1_code2, (body_declarations, 3), range(composite_collection_1, 2033, 113, 52, 57)).
code(composite_collection_1_code15, method_declaration, composite_collection_1_code2, (body_declarations, 7), range(composite_collection_1, 3324, 398, 92, 106)).
code(composite_collection_1_code16, primitive_type, composite_collection_1_stmt2, type, range(composite_collection_1, 3592, 3, 101, 101)).
code(composite_collection_1_code17, variable_declaration_fragment, composite_collection_1_stmt2, (fragments, 0), range(composite_collection_1, 3596, 8, 101, 101)).
code(composite_collection_1_code19, modifier, composite_collection_1_code18, (modifiers, 0), range(composite_collection_1, 3619, 5, 102, 102)).
code(composite_collection_1_code18, single_variable_declaration, composite_collection_1_stmt3, parameter, range(composite_collection_1, 3619, 24, 102, 102)).
code(composite_collection_1_code20, parameterized_type, composite_collection_1_code18, type, range(composite_collection_1, 3625, 13, 102, 102)).
code(composite_collection_1_code21, simple_type, composite_collection_1_code20, type, range(composite_collection_1, 3625, 10, 102, 102)).
code(composite_collection_1_code22, simple_type, composite_collection_1_code20, (type_arguments, 0), range(composite_collection_1, 3636, 1, 102, 102)).
code(composite_collection_1_code23, method_declaration, composite_collection_1_code2, (body_declarations, 9), range(composite_collection_1, 4179, 523, 125, 141)).
code(composite_collection_1_code24, single_variable_declaration, composite_collection_1_stmt5, parameter, range(composite_collection_1, 4550, 24, 135, 135)).
code(composite_collection_1_code25, modifier, composite_collection_1_code24, (modifiers, 0), range(composite_collection_1, 4550, 5, 135, 135)).
code(composite_collection_1_code27, simple_type, composite_collection_1_code26, type, range(composite_collection_1, 4556, 10, 135, 135)).
code(composite_collection_1_code26, parameterized_type, composite_collection_1_code24, type, range(composite_collection_1, 4556, 13, 135, 135)).
code(composite_collection_1_code28, simple_type, composite_collection_1_code26, (type_arguments, 0), range(composite_collection_1, 4567, 1, 135, 135)).
code(composite_collection_1_code29, method_declaration, composite_collection_1_code2, (body_declarations, 15), range(composite_collection_1, 8687, 563, 252, 269)).
code(composite_collection_1_code30, single_variable_declaration, composite_collection_1_stmt9, parameter, range(composite_collection_1, 9099, 17, 263, 263)).
code(composite_collection_1_code31, modifier, composite_collection_1_code30, (modifiers, 0), range(composite_collection_1, 9099, 5, 263, 263)).
code(composite_collection_1_code32, simple_type, composite_collection_1_code30, type, range(composite_collection_1, 9105, 6, 263, 263)).
code(composite_collection_1_code33, method_declaration, composite_collection_1_code2, (body_declarations, 17), range(composite_collection_1, 10240, 666, 292, 311)).
code(composite_collection_1_code34, primitive_type, composite_collection_1_stmt13, type, range(composite_collection_1, 10750, 7, 306, 306)).
code(composite_collection_1_code35, variable_declaration_fragment, composite_collection_1_stmt13, (fragments, 0), range(composite_collection_1, 10758, 15, 306, 306)).
code(composite_collection_1_code37, modifier, composite_collection_1_code36, (modifiers, 0), range(composite_collection_1, 10788, 5, 307, 307)).
code(composite_collection_1_code36, single_variable_declaration, composite_collection_1_stmt14, parameter, range(composite_collection_1, 10788, 24, 307, 307)).
code(composite_collection_1_code38, parameterized_type, composite_collection_1_code36, type, range(composite_collection_1, 10794, 13, 307, 307)).
code(composite_collection_1_code39, simple_type, composite_collection_1_code38, type, range(composite_collection_1, 10794, 10, 307, 307)).
code(composite_collection_1_code40, simple_type, composite_collection_1_code38, (type_arguments, 0), range(composite_collection_1, 10805, 1, 307, 307)).
code(composite_collection_1_code41, method_declaration, composite_collection_1_code2, (body_declarations, 18), range(composite_collection_1, 10912, 630, 313, 330)).
code(composite_collection_1_code42, primitive_type, composite_collection_1_stmt17, type, range(composite_collection_1, 11386, 7, 325, 325)).
code(composite_collection_1_code43, variable_declaration_fragment, composite_collection_1_stmt17, (fragments, 0), range(composite_collection_1, 11394, 15, 325, 325)).
code(composite_collection_1_code45, modifier, composite_collection_1_code44, (modifiers, 0), range(composite_collection_1, 11424, 5, 326, 326)).
code(composite_collection_1_code44, single_variable_declaration, composite_collection_1_stmt18, parameter, range(composite_collection_1, 11424, 24, 326, 326)).
code(composite_collection_1_code47, simple_type, composite_collection_1_code46, type, range(composite_collection_1, 11430, 10, 326, 326)).
code(composite_collection_1_code46, parameterized_type, composite_collection_1_code44, type, range(composite_collection_1, 11430, 13, 326, 326)).
code(composite_collection_1_code48, simple_type, composite_collection_1_code46, (type_arguments, 0), range(composite_collection_1, 11441, 1, 326, 326)).
code(composite_collection_1_code49, method_declaration, composite_collection_1_code2, (body_declarations, 20), range(composite_collection_1, 11991, 235, 347, 354)).
code(composite_collection_1_code50, method_declaration, composite_collection_1_code2, (body_declarations, 21), range(composite_collection_1, 12232, 291, 356, 363)).
code(composite_collection_1_code51, method_declaration, composite_collection_1_code2, (body_declarations, 22), range(composite_collection_1, 12529, 488, 365, 375)).
code(composite_collection_1_code52, method_declaration, composite_collection_1_code2, (body_declarations, 23), range(composite_collection_1, 13023, 316, 377, 384)).
%composite_collection_test_1 - org.apache.commons.collections4.collection.CompositeCollectionTest
code(composite_collection_test_1_code1, compilation_unit, range(composite_collection_test_1, 0, 13453, 1, -1)).
code(composite_collection_test_1_code2, type_declaration, composite_collection_test_1_code1, (types, 0), range(composite_collection_test_1, 1041, 12411, 28, 425)).
code(composite_collection_test_1_code3, method_declaration, composite_collection_test_1_code2, (body_declarations, 3), range(composite_collection_test_1, 1366, 78, 42, 44)).
code(composite_collection_test_1_code4, method_declaration, composite_collection_test_1_code2, (body_declarations, 12), range(composite_collection_test_1, 3216, 1202, 109, 140)).
code(composite_collection_test_1_code6, simple_type, composite_collection_test_1_code5, type, range(composite_collection_test_1, 3330, 37, 112, 112)).
code(composite_collection_test_1_code5, parameterized_type, composite_collection_test_1_expr4, type, range(composite_collection_test_1, 3330, 40, 112, 112)).
code(composite_collection_test_1_code7, simple_type, composite_collection_test_1_code5, (type_arguments, 0), range(composite_collection_test_1, 3368, 1, 112, 112)).
code(composite_collection_test_1_code8, anonymous_class_declaration, composite_collection_test_1_expr4, anonymous_class_declaration, range(composite_collection_test_1, 3373, 1037, 112, 139)).
code(composite_collection_test_1_code9, method_declaration, composite_collection_test_1_code2, (body_declarations, 13), range(composite_collection_test_1, 4424, 137, 142, 146)).
code(composite_collection_test_1_code11, simple_type, composite_collection_test_1_code10, type, range(composite_collection_test_1, 4469, 19, 143, 143)).
code(composite_collection_test_1_code10, parameterized_type, composite_collection_test_1_expr6, type, range(composite_collection_test_1, 4469, 21, 143, 143)).
code(composite_collection_test_1_code13, simple_type, composite_collection_test_1_code12, type, range(composite_collection_test_1, 4512, 7, 144, 144)).
code(composite_collection_test_1_code12, parameterized_type, composite_collection_test_1_expr8, type, range(composite_collection_test_1, 4512, 9, 144, 144)).
code(composite_collection_test_1_code14, parameterized_type, composite_collection_test_1_expr10, type, range(composite_collection_test_1, 4543, 9, 145, 145)).
code(composite_collection_test_1_code15, simple_type, composite_collection_test_1_code14, type, range(composite_collection_test_1, 4543, 7, 145, 145)).
code(composite_collection_test_1_code16, method_declaration, composite_collection_test_1_code2, (body_declarations, 18), range(composite_collection_test_1, 7801, 257, 244, 252)).
code(composite_collection_test_1_code17, simple_type, composite_collection_test_1_expr13, type, range(composite_collection_test_1, 7906, 1, 247, 247)).
code(composite_collection_test_1_code18, simple_type, composite_collection_test_1_expr15, type, range(composite_collection_test_1, 7932, 1, 248, 248)).
code(composite_collection_test_1_code19, method_declaration, composite_collection_test_1_code2, (body_declarations, 19), range(composite_collection_test_1, 8064, 229, 254, 259)).
code(composite_collection_test_1_code20, parameterized_type, composite_collection_test_1_stmt13, type, range(composite_collection_test_1, 8104, 17, 255, 255)).
code(composite_collection_test_1_code21, simple_type, composite_collection_test_1_code20, type, range(composite_collection_test_1, 8104, 9, 255, 255)).
code(composite_collection_test_1_code22, simple_type, composite_collection_test_1_code20, (type_arguments, 0), range(composite_collection_test_1, 8114, 6, 255, 255)).
code(composite_collection_test_1_code23, variable_declaration_fragment, composite_collection_test_1_stmt13, (fragments, 0), range(composite_collection_test_1, 8122, 15, 255, 255)).
code(composite_collection_test_1_code24, parameterized_type, composite_collection_test_1_stmt14, type, range(composite_collection_test_1, 8147, 27, 256, 256)).
code(composite_collection_test_1_code25, simple_type, composite_collection_test_1_code24, type, range(composite_collection_test_1, 8147, 19, 256, 256)).
code(composite_collection_test_1_code26, simple_type, composite_collection_test_1_code24, (type_arguments, 0), range(composite_collection_test_1, 8167, 6, 256, 256)).
code(composite_collection_test_1_code27, variable_declaration_fragment, composite_collection_test_1_stmt14, (fragments, 0), range(composite_collection_test_1, 8175, 32, 256, 256)).
code(composite_collection_test_1_code29, simple_type, composite_collection_test_1_code28, type, range(composite_collection_test_1, 8184, 19, 256, 256)).
code(composite_collection_test_1_code28, parameterized_type, composite_collection_test_1_expr21, type, range(composite_collection_test_1, 8184, 21, 256, 256)).
code(composite_collection_test_1_code30, method_declaration, composite_collection_test_1_code2, (body_declarations, 20), range(composite_collection_test_1, 8303, 245, 261, 266)).
code(composite_collection_test_1_code31, parameterized_type, composite_collection_test_1_stmt17, type, range(composite_collection_test_1, 8349, 17, 262, 262)).
code(composite_collection_test_1_code32, simple_type, composite_collection_test_1_code31, type, range(composite_collection_test_1, 8349, 9, 262, 262)).
code(composite_collection_test_1_code33, simple_type, composite_collection_test_1_code31, (type_arguments, 0), range(composite_collection_test_1, 8359, 6, 262, 262)).
code(composite_collection_test_1_code34, variable_declaration_fragment, composite_collection_test_1_stmt17, (fragments, 0), range(composite_collection_test_1, 8367, 15, 262, 262)).
code(composite_collection_test_1_code35, parameterized_type, composite_collection_test_1_stmt18, type, range(composite_collection_test_1, 8392, 27, 263, 263)).
code(composite_collection_test_1_code36, simple_type, composite_collection_test_1_code35, type, range(composite_collection_test_1, 8392, 19, 263, 263)).
code(composite_collection_test_1_code37, simple_type, composite_collection_test_1_code35, (type_arguments, 0), range(composite_collection_test_1, 8412, 6, 263, 263)).
code(composite_collection_test_1_code38, variable_declaration_fragment, composite_collection_test_1_stmt18, (fragments, 0), range(composite_collection_test_1, 8420, 32, 263, 263)).
code(composite_collection_test_1_code39, parameterized_type, composite_collection_test_1_expr25, type, range(composite_collection_test_1, 8429, 21, 263, 263)).
code(composite_collection_test_1_code40, simple_type, composite_collection_test_1_code39, type, range(composite_collection_test_1, 8429, 19, 263, 263)).
code(composite_collection_test_1_code41, method_declaration, composite_collection_test_1_code2, (body_declarations, 21), range(composite_collection_test_1, 8558, 257, 268, 273)).
code(composite_collection_test_1_code43, simple_type, composite_collection_test_1_code42, type, range(composite_collection_test_1, 8606, 9, 269, 269)).
code(composite_collection_test_1_code42, parameterized_type, composite_collection_test_1_stmt21, type, range(composite_collection_test_1, 8606, 17, 269, 269)).
code(composite_collection_test_1_code44, simple_type, composite_collection_test_1_code42, (type_arguments, 0), range(composite_collection_test_1, 8616, 6, 269, 269)).
code(composite_collection_test_1_code45, variable_declaration_fragment, composite_collection_test_1_stmt21, (fragments, 0), range(composite_collection_test_1, 8624, 15, 269, 269)).
code(composite_collection_test_1_code46, parameterized_type, composite_collection_test_1_stmt22, type, range(composite_collection_test_1, 8649, 27, 270, 270)).
code(composite_collection_test_1_code47, simple_type, composite_collection_test_1_code46, type, range(composite_collection_test_1, 8649, 19, 270, 270)).
code(composite_collection_test_1_code48, simple_type, composite_collection_test_1_code46, (type_arguments, 0), range(composite_collection_test_1, 8669, 6, 270, 270)).
code(composite_collection_test_1_code49, variable_declaration_fragment, composite_collection_test_1_stmt22, (fragments, 0), range(composite_collection_test_1, 8677, 32, 270, 270)).
code(composite_collection_test_1_code51, simple_type, composite_collection_test_1_code50, type, range(composite_collection_test_1, 8686, 19, 270, 270)).
code(composite_collection_test_1_code50, parameterized_type, composite_collection_test_1_expr29, type, range(composite_collection_test_1, 8686, 21, 270, 270)).
code(composite_collection_test_1_code52, method_declaration, composite_collection_test_1_code2, (body_declarations, 26), range(composite_collection_test_1, 10377, 638, 329, 346)).
code(composite_collection_test_1_code53, simple_type, composite_collection_test_1_expr35, type, range(composite_collection_test_1, 10487, 1, 332, 332)).
code(composite_collection_test_1_code54, simple_type, composite_collection_test_1_expr37, type, range(composite_collection_test_1, 10513, 1, 333, 333)).
code(composite_collection_test_1_code55, simple_type, composite_collection_test_1_expr39, type, range(composite_collection_test_1, 10539, 1, 334, 334)).
code(composite_collection_test_1_code56, modifier, composite_collection_test_1_stmt29, (modifiers, 0), range(composite_collection_test_1, 10628, 5, 336, 336)).
code(composite_collection_test_1_code58, simple_type, composite_collection_test_1_code57, type, range(composite_collection_test_1, 10634, 10, 336, 336)).
code(composite_collection_test_1_code57, parameterized_type, composite_collection_test_1_stmt29, type, range(composite_collection_test_1, 10634, 13, 336, 336)).
code(composite_collection_test_1_code59, simple_type, composite_collection_test_1_code57, (type_arguments, 0), range(composite_collection_test_1, 10645, 1, 336, 336)).
code(composite_collection_test_1_code60, variable_declaration_fragment, composite_collection_test_1_stmt29, (fragments, 0), range(composite_collection_test_1, 10648, 31, 336, 336)).
code(composite_collection_test_1_code61, parameterized_type, composite_collection_test_1_expr40, type, range(composite_collection_test_1, 10663, 11, 336, 336)).
code(composite_collection_test_1_code62, simple_type, composite_collection_test_1_code61, type, range(composite_collection_test_1, 10663, 9, 336, 336)).
code(composite_collection_test_1_code63, method_declaration, composite_collection_test_1_code2, (body_declarations, 28), range(composite_collection_test_1, 11350, 560, 360, 377)).
code(composite_collection_test_1_code64, simple_type, composite_collection_test_1_expr55, type, range(composite_collection_test_1, 11453, 1, 363, 363)).
code(composite_collection_test_1_code65, simple_type, composite_collection_test_1_expr57, type, range(composite_collection_test_1, 11479, 1, 364, 364)).
code(composite_collection_test_1_code66, simple_type, composite_collection_test_1_expr59, type, range(composite_collection_test_1, 11505, 1, 365, 365)).

%%% Name References

name_ref(t_arrays_1, type, 'Arrays', 'Ljava/util/Arrays;').
name_ref(t_assert_2, type, 'Assert', 'Lorg/junit/Assert;').
name_ref(p_name_39, param, 'name', 'composite_collection_test_1;name_line_43').
name_ref(v_cc_71, var, 'cc', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest;.testAddNullList()V#cc').
name_ref(v_cc_73, var, 'cc', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest;.testAddNullLists2Args()V#cc').
name_ref(v_cc_75, var, 'cc', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest;.testAddNullListsVarArgs()V#cc').
name_ref(v_changed_18, var, 'changed', 'Lorg/apache/commons/collections4/collection/CompositeCollection;.removeAll(Ljava/util/Collection<*>;)Z#changed').
name_ref(v_changed_21, var, 'changed', 'Lorg/apache/commons/collections4/collection/CompositeCollection;.retainAll(Ljava/util/Collection<*>;)Z#changed').
name_ref(v_item_10, var, 'item', 'Lorg/apache/commons/collections4/collection/CompositeCollection;.contains(Ljava/lang/Object;)Z#0#item').
name_ref(v_item_15, var, 'item', 'Lorg/apache/commons/collections4/collection/CompositeCollection;.containsAll(Ljava/util/Collection<*>;)Z#0#item').
name_ref(v_item_19, var, 'item', 'Lorg/apache/commons/collections4/collection/CompositeCollection;.removeAll(Ljava/util/Collection<*>;)Z#0#item').
name_ref(v_item_22, var, 'item', 'Lorg/apache/commons/collections4/collection/CompositeCollection;.retainAll(Ljava/util/Collection<*>;)Z#0#item').
name_ref(v_item_8, var, 'item', 'Lorg/apache/commons/collections4/collection/CompositeCollection;.size()I#0#item').
name_ref(v_null_list_70, var, 'nullList', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest;.testAddNullList()V#nullList').
name_ref(v_null_list_72, var, 'nullList', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest;.testAddNullLists2Args()V#nullList').
name_ref(v_null_list_74, var, 'nullList', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest;.testAddNullListsVarArgs()V#nullList').
name_ref(v_removing_76, var, 'removing', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest;.testRemoveAll()V#removing').
name_ref(v_size_6, var, 'size', 'Lorg/apache/commons/collections4/collection/CompositeCollection;.size()I#size').
name_ref(p_array_11, param, 'array', 'Lorg/apache/commons/collections4/collection/CompositeCollection;.toArray<T:Ljava/lang/Object;>([TT;)[TT;#array#0#0').
name_ref(p_coll_14, param, 'coll', 'Lorg/apache/commons/collections4/collection/CompositeCollection;.containsAll(Ljava/util/Collection<*>;)Z#coll#0#0').
name_ref(p_coll_16, param, 'coll', 'Lorg/apache/commons/collections4/collection/CompositeCollection;.addAll(Ljava/util/Collection<+TE;>;)Z#coll#0#0').
name_ref(p_coll_17, param, 'coll', 'Lorg/apache/commons/collections4/collection/CompositeCollection;.removeAll(Ljava/util/Collection<*>;)Z#coll#0#0').
name_ref(p_coll_20, param, 'coll', 'Lorg/apache/commons/collections4/collection/CompositeCollection;.retainAll(Ljava/util/Collection<*>;)Z#coll#0#0').
name_ref(p_coll_29, param, 'coll', 'Lorg/apache/commons/collections4/collection/CompositeCollection;.removeComposited(Ljava/util/Collection<TE;>;)V#coll#0#0').
name_ref(p_coll_35, param, 'coll', 'Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator;.addAll(Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;Ljava/util/List<Ljava/util/Collection<TE;>;>;Ljava/util/Collection<+TE;>;)Z#coll#0#2').
name_ref(p_coll_46, param, 'coll', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest$3330;.addAll(Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;Ljava/util/List<Ljava/util/Collection<TE;>;>;Ljava/util/Collection<+TE;>;)Z#coll#0#2').
name_ref(p_coll_57, param, 'coll', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest$4696;.addAll(Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;Ljava/util/List<Ljava/util/Collection<TE;>;>;Ljava/util/Collection<+TE;>;)Z#coll#0#2').
name_ref(p_coll_66, param, 'coll', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest$6366;.addAll(Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;Ljava/util/List<Ljava/util/Collection<TE;>;>;Ljava/util/Collection<+TE;>;)Z#coll#0#2').
name_ref(p_collections_31, param, 'collections', 'Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator;.add(Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;Ljava/util/List<Ljava/util/Collection<TE;>;>;TE;)Z#collections#0#1').
name_ref(p_collections_34, param, 'collections', 'Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator;.addAll(Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;Ljava/util/List<Ljava/util/Collection<TE;>;>;Ljava/util/Collection<+TE;>;)Z#collections#0#1').
name_ref(p_collections_37, param, 'collections', 'Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator;.remove(Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;Ljava/util/List<Ljava/util/Collection<TE;>;>;Ljava/lang/Object;)Z#collections#0#1').
name_ref(p_collections_42, param, 'collections', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest$3330;.add(Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;Ljava/util/List<Ljava/util/Collection<TE;>;>;TE;)Z#collections#0#1').
name_ref(p_collections_45, param, 'collections', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest$3330;.addAll(Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;Ljava/util/List<Ljava/util/Collection<TE;>;>;Ljava/util/Collection<+TE;>;)Z#collections#0#1').
name_ref(p_collections_48, param, 'collections', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest$3330;.remove(Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;Ljava/util/List<Ljava/util/Collection<TE;>;>;Ljava/lang/Object;)Z#collections#0#1').
name_ref(p_collections_53, param, 'collections', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest$4696;.add(Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;Ljava/util/List<Ljava/util/Collection<TE;>;>;TE;)Z#collections#0#1').
name_ref(p_collections_56, param, 'collections', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest$4696;.addAll(Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;Ljava/util/List<Ljava/util/Collection<TE;>;>;Ljava/util/Collection<+TE;>;)Z#collections#0#1').
name_ref(p_collections_59, param, 'collections', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest$4696;.remove(Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;Ljava/util/List<Ljava/util/Collection<TE;>;>;Ljava/lang/Object;)Z#collections#0#1').
name_ref(p_collections_62, param, 'collections', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest$6366;.add(Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;Ljava/util/List<Ljava/util/Collection<TE;>;>;TE;)Z#collections#0#1').
name_ref(p_collections_65, param, 'collections', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest$6366;.addAll(Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;Ljava/util/List<Ljava/util/Collection<TE;>;>;Ljava/util/Collection<+TE;>;)Z#collections#0#1').
name_ref(p_collections_68, param, 'collections', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest$6366;.remove(Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;Ljava/util/List<Ljava/util/Collection<TE;>;>;Ljava/lang/Object;)Z#collections#0#1').
name_ref(p_composite_30, param, 'composite', 'Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator;.add(Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;Ljava/util/List<Ljava/util/Collection<TE;>;>;TE;)Z#composite#0#0').
name_ref(p_composite_33, param, 'composite', 'Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator;.addAll(Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;Ljava/util/List<Ljava/util/Collection<TE;>;>;Ljava/util/Collection<+TE;>;)Z#composite#0#0').
name_ref(p_composite_36, param, 'composite', 'Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator;.remove(Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;Ljava/util/List<Ljava/util/Collection<TE;>;>;Ljava/lang/Object;)Z#composite#0#0').
name_ref(p_composite_41, param, 'composite', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest$3330;.add(Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;Ljava/util/List<Ljava/util/Collection<TE;>;>;TE;)Z#composite#0#0').
name_ref(p_composite_44, param, 'composite', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest$3330;.addAll(Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;Ljava/util/List<Ljava/util/Collection<TE;>;>;Ljava/util/Collection<+TE;>;)Z#composite#0#0').
name_ref(p_composite_47, param, 'composite', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest$3330;.remove(Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;Ljava/util/List<Ljava/util/Collection<TE;>;>;Ljava/lang/Object;)Z#composite#0#0').
name_ref(p_composite_52, param, 'composite', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest$4696;.add(Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;Ljava/util/List<Ljava/util/Collection<TE;>;>;TE;)Z#composite#0#0').
name_ref(p_composite_55, param, 'composite', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest$4696;.addAll(Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;Ljava/util/List<Ljava/util/Collection<TE;>;>;Ljava/util/Collection<+TE;>;)Z#composite#0#0').
name_ref(p_composite_58, param, 'composite', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest$4696;.remove(Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;Ljava/util/List<Ljava/util/Collection<TE;>;>;Ljava/lang/Object;)Z#composite#0#0').
name_ref(p_composite_61, param, 'composite', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest$6366;.add(Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;Ljava/util/List<Ljava/util/Collection<TE;>;>;TE;)Z#composite#0#0').
name_ref(p_composite_64, param, 'composite', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest$6366;.addAll(Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;Ljava/util/List<Ljava/util/Collection<TE;>;>;Ljava/util/Collection<+TE;>;)Z#composite#0#0').
name_ref(p_composite_67, param, 'composite', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest$6366;.remove(Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;Ljava/util/List<Ljava/util/Collection<TE;>;>;Ljava/lang/Object;)Z#composite#0#0').
name_ref(p_composite_collection1_26, param, 'compositeCollection1', 'Lorg/apache/commons/collections4/collection/CompositeCollection;.addComposited(Ljava/util/Collection<TE;>;Ljava/util/Collection<TE;>;)V#compositeCollection1#0#0').
name_ref(p_composite_collection1_3, param, 'compositeCollection1', 'Lorg/apache/commons/collections4/collection/CompositeCollection;.(Ljava/util/Collection<TE;>;Ljava/util/Collection<TE;>;)V#compositeCollection1#0#0').
name_ref(p_composite_collection2_27, param, 'compositeCollection2', 'Lorg/apache/commons/collections4/collection/CompositeCollection;.addComposited(Ljava/util/Collection<TE;>;Ljava/util/Collection<TE;>;)V#compositeCollection2#0#1').
name_ref(p_composite_collection2_4, param, 'compositeCollection2', 'Lorg/apache/commons/collections4/collection/CompositeCollection;.(Ljava/util/Collection<TE;>;Ljava/util/Collection<TE;>;)V#compositeCollection2#0#1').
name_ref(p_composite_collection_2, param, 'compositeCollection', 'Lorg/apache/commons/collections4/collection/CompositeCollection;.(Ljava/util/Collection<TE;>;)V#compositeCollection#0#0').
name_ref(p_composite_collection_25, param, 'compositeCollection', 'Lorg/apache/commons/collections4/collection/CompositeCollection;.addComposited(Ljava/util/Collection<TE;>;)V#compositeCollection#0#0').
name_ref(p_composite_collections_28, param, 'compositeCollections', 'Lorg/apache/commons/collections4/collection/CompositeCollection;.addComposited([Ljava/util/Collection<TE;>;)V#compositeCollections#0#0').
name_ref(p_composite_collections_5, param, 'compositeCollections', 'Lorg/apache/commons/collections4/collection/CompositeCollection;.([Ljava/util/Collection<TE;>;)V#compositeCollections#0#0').
name_ref(p_mutator_23, param, 'mutator', 'Lorg/apache/commons/collections4/collection/CompositeCollection;.setMutator(Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator<TE;>;)V#mutator#0#0').
name_ref(p_name_39, param, 'name', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest;.(Ljava/lang/String;)V#name#0#0').
name_ref(p_obj_12, param, 'obj', 'Lorg/apache/commons/collections4/collection/CompositeCollection;.add(TE;)Z#obj#0#0').
name_ref(p_obj_13, param, 'obj', 'Lorg/apache/commons/collections4/collection/CompositeCollection;.remove(Ljava/lang/Object;)Z#obj#0#0').
name_ref(p_obj_32, param, 'obj', 'Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator;.add(Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;Ljava/util/List<Ljava/util/Collection<TE;>;>;TE;)Z#obj#0#2').
name_ref(p_obj_38, param, 'obj', 'Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator;.remove(Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;Ljava/util/List<Ljava/util/Collection<TE;>;>;Ljava/lang/Object;)Z#obj#0#2').
name_ref(p_obj_43, param, 'obj', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest$3330;.add(Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;Ljava/util/List<Ljava/util/Collection<TE;>;>;TE;)Z#obj#0#2').
name_ref(p_obj_49, param, 'obj', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest$3330;.remove(Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;Ljava/util/List<Ljava/util/Collection<TE;>;>;Ljava/lang/Object;)Z#obj#0#2').
name_ref(p_obj_54, param, 'obj', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest$4696;.add(Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;Ljava/util/List<Ljava/util/Collection<TE;>;>;TE;)Z#obj#0#2').
name_ref(p_obj_60, param, 'obj', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest$4696;.remove(Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;Ljava/util/List<Ljava/util/Collection<TE;>;>;Ljava/lang/Object;)Z#obj#0#2').
name_ref(p_obj_63, param, 'obj', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest$6366;.add(Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;Ljava/util/List<Ljava/util/Collection<TE;>;>;TE;)Z#obj#0#2').
name_ref(p_obj_69, param, 'obj', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest$6366;.remove(Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;Ljava/util/List<Ljava/util/Collection<TE;>;>;Ljava/lang/Object;)Z#obj#0#2').
name_ref(p_obj_9, param, 'obj', 'Lorg/apache/commons/collections4/collection/CompositeCollection;.contains(Ljava/lang/Object;)Z#obj#0#0').
name_ref(f_all_1, field, 'all', 'Lorg/apache/commons/collections4/collection/CompositeCollection;.all)Ljava/util/List<Ljava/util/Collection<Lorg/apache/commons/collections4/collection/CompositeCollection;:TE;>;>;').
name_ref(f_all_7, field, 'all', 'Lorg/apache/commons/collections4/collection/CompositeCollection<Lorg/apache/commons/collections4/collection/CompositeCollection;:TE;>;.all)Ljava/util/List<Ljava/util/Collection<Lorg/apache/commons/collections4/collection/CompositeCollection;:TE;>;>;').
name_ref(f_c_40, field, 'c', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest<Lorg/apache/commons/collections4/collection/CompositeCollectionTest;:TE;>;.c)Lorg/apache/commons/collections4/collection/CompositeCollection<Lorg/apache/commons/collections4/collection/CompositeCollectionTest;:TE;>;').
name_ref(f_mutator_24, field, 'mutator', 'Lorg/apache/commons/collections4/collection/CompositeCollection<Lorg/apache/commons/collections4/collection/CompositeCollection;:TE;>;.mutator)Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator<Lorg/apache/commons/collections4/collection/CompositeCollection;:TE;>;').
name_ref(f_one_50, field, 'one', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest<Lorg/apache/commons/collections4/collection/CompositeCollectionTest;:TE;>;.one)Ljava/util/Collection<Lorg/apache/commons/collections4/collection/CompositeCollectionTest;:TE;>;').
name_ref(f_two_51, field, 'two', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest<Lorg/apache/commons/collections4/collection/CompositeCollectionTest;:TE;>;.two)Ljava/util/Collection<Lorg/apache/commons/collections4/collection/CompositeCollectionTest;:TE;>;').
name_ref(m__50, method, '', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest$3330;.()V').
name_ref(m_abstract_collection_test_39, method, 'AbstractCollectionTest', 'Lorg/apache/commons/collections4/collection/AbstractCollectionTest;.(Ljava/lang/String;)V').
name_ref(m_add_15, method, 'add', 'Lorg/apache/commons/collections4/collection/CompositeCollection;.add(TE;)Z').
name_ref(m_add_26, method, 'add', 'Ljava/util/List;.add(TE;)Z').
name_ref(m_add_35, method, 'add', 'Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator;.add(Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;Ljava/util/List<Ljava/util/Collection<TE;>;>;TE;)Z').
name_ref(m_add_51, method, 'add', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest$3330;.add(Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;Ljava/util/List<Ljava/util/Collection<TE;>;>;TE;)Z').
name_ref(m_add_56, method, 'add', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest$4696;.add(Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;Ljava/util/List<Ljava/util/Collection<TE;>;>;TE;)Z').
name_ref(m_add_61, method, 'add', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest$6366;.add(Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;Ljava/util/List<Ljava/util/Collection<TE;>;>;TE;)Z').
name_ref(m_add_66, method, 'add', 'Ljava/util/Collection;.add(TE;)Z').
name_ref(m_add_all_18, method, 'addAll', 'Lorg/apache/commons/collections4/collection/CompositeCollection;.addAll(Ljava/util/Collection<+TE;>;)Z').
name_ref(m_add_all_29, method, 'addAll', 'Ljava/util/List;.addAll(Ljava/util/Collection<+TE;>;)Z').
name_ref(m_add_all_36, method, 'addAll', 'Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator;.addAll(Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;Ljava/util/List<Ljava/util/Collection<TE;>;>;Ljava/util/Collection<+TE;>;)Z').
name_ref(m_add_all_52, method, 'addAll', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest$3330;.addAll(Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;Ljava/util/List<Ljava/util/Collection<TE;>;>;Ljava/util/Collection<+TE;>;)Z').
name_ref(m_add_all_57, method, 'addAll', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest$4696;.addAll(Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;Ljava/util/List<Ljava/util/Collection<TE;>;>;Ljava/util/Collection<+TE;>;)Z').
name_ref(m_add_all_62, method, 'addAll', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest$6366;.addAll(Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;Ljava/util/List<Ljava/util/Collection<TE;>;>;Ljava/util/Collection<+TE;>;)Z').
name_ref(m_add_composited_25, method, 'addComposited', 'Lorg/apache/commons/collections4/collection/CompositeCollection;.addComposited(Ljava/util/Collection<TE;>;)V').
name_ref(m_add_composited_27, method, 'addComposited', 'Lorg/apache/commons/collections4/collection/CompositeCollection;.addComposited(Ljava/util/Collection<TE;>;Ljava/util/Collection<TE;>;)V').
name_ref(m_add_composited_28, method, 'addComposited', 'Lorg/apache/commons/collections4/collection/CompositeCollection;.addComposited([Ljava/util/Collection<TE;>;)V').
name_ref(m_array_list_1, method, 'ArrayList', 'Ljava/util/ArrayList;.()V').
name_ref(m_array_list_78, method, 'ArrayList', 'Ljava/util/ArrayList;.(Ljava/util/Collection<+TE;>;)V').
name_ref(m_as_list_30, method, 'asList', 'Ljava/util/Arrays;.asList<T:Ljava/lang/Object;>([TT;)Ljava/util/List<TT;>;').
name_ref(m_assert_equals_70, method, 'assertEquals', 'Lorg/junit/Assert;.assertEquals(JJ)V').
name_ref(m_assert_false_68, method, 'assertFalse', 'Ljunit/framework/TestCase;.assertFalse(Z)V').
name_ref(m_assert_true_67, method, 'assertTrue', 'Ljunit/framework/TestCase;.assertTrue(Z)V').
name_ref(m_clear_23, method, 'clear', 'Lorg/apache/commons/collections4/collection/CompositeCollection;.clear()V').
name_ref(m_composite_collection_2, method, 'CompositeCollection', 'Lorg/apache/commons/collections4/collection/CompositeCollection;.()V').
name_ref(m_composite_collection_4, method, 'CompositeCollection', 'Lorg/apache/commons/collections4/collection/CompositeCollection;.(Ljava/util/Collection<TE;>;)V').
name_ref(m_composite_collection_5, method, 'CompositeCollection', 'Lorg/apache/commons/collections4/collection/CompositeCollection;.(Ljava/util/Collection<TE;>;Ljava/util/Collection<TE;>;)V').
name_ref(m_composite_collection_6, method, 'CompositeCollection', 'Lorg/apache/commons/collections4/collection/CompositeCollection;.([Ljava/util/Collection<TE;>;)V').
name_ref(m_composite_collection_test_38, method, 'CompositeCollectionTest', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest;.(Ljava/lang/String;)V').
name_ref(m_contains_10, method, 'contains', 'Lorg/apache/commons/collections4/collection/CompositeCollection;.contains(Ljava/lang/Object;)Z').
name_ref(m_contains_11, method, 'contains', 'Ljava/util/Collection;.contains(Ljava/lang/Object;)Z').
name_ref(m_contains_all_17, method, 'containsAll', 'Lorg/apache/commons/collections4/collection/CompositeCollection;.containsAll(Ljava/util/Collection<*>;)Z').
name_ref(m_get_collections_33, method, 'getCollections', 'Lorg/apache/commons/collections4/collection/CompositeCollection;.getCollections()Ljava/util/List<Ljava/util/Collection<TE;>;>;').
name_ref(m_get_compatibility_version_40, method, 'getCompatibilityVersion', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest;.getCompatibilityVersion()Ljava/lang/String;').
name_ref(m_get_full_elements_41, method, 'getFullElements', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest;.getFullElements()[TE;').
name_ref(m_get_mutator_34, method, 'getMutator', 'Lorg/apache/commons/collections4/collection/CompositeCollection;.getMutator()Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator<TE;>;').
name_ref(m_hash_set_54, method, 'HashSet', 'Ljava/util/HashSet;.()V').
name_ref(m_is_add_supported_42, method, 'isAddSupported', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest;.isAddSupported()Z').
name_ref(m_is_empty_9, method, 'isEmpty', 'Lorg/apache/commons/collections4/collection/CompositeCollection;.isEmpty()Z').
name_ref(m_is_remove_supported_43, method, 'isRemoveSupported', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest;.isRemoveSupported()Z').
name_ref(m_iterator_12, method, 'iterator', 'Lorg/apache/commons/collections4/collection/CompositeCollection;.iterator()Ljava/util/Iterator<TE;>;').
name_ref(m_make_confirmed_collection_44, method, 'makeConfirmedCollection', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest;.makeConfirmedCollection()Ljava/util/Collection<TE;>;').
name_ref(m_make_confirmed_full_collection_45, method, 'makeConfirmedFullCollection', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest;.makeConfirmedFullCollection()Ljava/util/Collection<TE;>;').
name_ref(m_make_full_collection_46, method, 'makeFullCollection', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest;.makeFullCollection()Ljava/util/Collection<TE;>;').
name_ref(m_make_object_47, method, 'makeObject', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest;.makeObject()Ljava/util/Collection<TE;>;').
name_ref(m_object_3, method, 'Object', 'Ljava/lang/Object;.()V').
name_ref(m_remove_16, method, 'remove', 'Lorg/apache/commons/collections4/collection/CompositeCollection;.remove(Ljava/lang/Object;)Z').
name_ref(m_remove_37, method, 'remove', 'Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator;.remove(Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;Ljava/util/List<Ljava/util/Collection<TE;>;>;Ljava/lang/Object;)Z').
name_ref(m_remove_53, method, 'remove', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest$3330;.remove(Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;Ljava/util/List<Ljava/util/Collection<TE;>;>;Ljava/lang/Object;)Z').
name_ref(m_remove_58, method, 'remove', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest$4696;.remove(Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;Ljava/util/List<Ljava/util/Collection<TE;>;>;Ljava/lang/Object;)Z').
name_ref(m_remove_63, method, 'remove', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest$6366;.remove(Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;Ljava/util/List<Ljava/util/Collection<TE;>;>;Ljava/lang/Object;)Z').
name_ref(m_remove_all_19, method, 'removeAll', 'Lorg/apache/commons/collections4/collection/CompositeCollection;.removeAll(Ljava/util/Collection<*>;)Z').
name_ref(m_remove_all_20, method, 'removeAll', 'Ljava/util/Collection;.removeAll(Ljava/util/Collection<*>;)Z').
name_ref(m_remove_composited_31, method, 'removeComposited', 'Lorg/apache/commons/collections4/collection/CompositeCollection;.removeComposited(Ljava/util/Collection<TE;>;)V').
name_ref(m_retain_all_21, method, 'retainAll', 'Lorg/apache/commons/collections4/collection/CompositeCollection;.retainAll(Ljava/util/Collection<*>;)Z').
name_ref(m_retain_all_22, method, 'retainAll', 'Ljava/util/Collection;.retainAll(Ljava/util/Collection<*>;)Z').
name_ref(m_set_mutator_24, method, 'setMutator', 'Lorg/apache/commons/collections4/collection/CompositeCollection;.setMutator(Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator<TE;>;)V').
name_ref(m_set_up_mutator_test_48, method, 'setUpMutatorTest', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest;.setUpMutatorTest()V').
name_ref(m_set_up_test_49, method, 'setUpTest', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest;.setUpTest()V').
name_ref(m_size_7, method, 'size', 'Lorg/apache/commons/collections4/collection/CompositeCollection;.size()I').
name_ref(m_size_8, method, 'size', 'Ljava/util/Collection;.size()I').
name_ref(m_test_add_all_mutator_55, method, 'testAddAllMutator', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest;.testAddAllMutator()V').
name_ref(m_test_add_all_to_collection_59, method, 'testAddAllToCollection', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest;.testAddAllToCollection()V').
name_ref(m_test_add_mutator_60, method, 'testAddMutator', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest;.testAddMutator()V').
name_ref(m_test_add_null_list_69, method, 'testAddNullList', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest;.testAddNullList()V').
name_ref(m_test_add_null_lists2_args_71, method, 'testAddNullLists2Args', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest;.testAddNullLists2Args()V').
name_ref(m_test_add_null_lists_var_args_72, method, 'testAddNullListsVarArgs', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest;.testAddNullListsVarArgs()V').
name_ref(m_test_clear_64, method, 'testClear', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest;.testClear()V').
name_ref(m_test_contains_all_65, method, 'testContainsAll', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest;.testContainsAll()V').
name_ref(m_test_is_empty_73, method, 'testIsEmpty', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest;.testIsEmpty()V').
name_ref(m_test_iterator_74, method, 'testIterator', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest;.testIterator()V').
name_ref(m_test_multiple_collections_size_75, method, 'testMultipleCollectionsSize', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest;.testMultipleCollectionsSize()V').
name_ref(m_test_remove_76, method, 'testRemove', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest;.testRemove()V').
name_ref(m_test_remove_all_77, method, 'testRemoveAll', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest;.testRemoveAll()V').
name_ref(m_test_remove_composited_79, method, 'testRemoveComposited', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest;.testRemoveComposited()V').
name_ref(m_test_retain_all_80, method, 'testRetainAll', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest;.testRetainAll()V').
name_ref(m_test_size_81, method, 'testSize', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest;.testSize()V').
name_ref(m_test_to_collection_82, method, 'testToCollection', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest;.testToCollection()V').
name_ref(m_test_unsupported_remove_83, method, 'testUnsupportedRemove', 'Lorg/apache/commons/collections4/collection/CompositeCollectionTest;.testUnsupportedRemove()V').
name_ref(m_to_array_13, method, 'toArray', 'Lorg/apache/commons/collections4/collection/CompositeCollection;.toArray()[Ljava/lang/Object;').
name_ref(m_to_array_14, method, 'toArray', 'Lorg/apache/commons/collections4/collection/CompositeCollection;.toArray<T:Ljava/lang/Object;>([TT;)[TT;').
name_ref(m_to_collection_32, method, 'toCollection', 'Lorg/apache/commons/collections4/collection/CompositeCollection;.toCollection()Ljava/util/Collection<TE;>;').

%%% End of Code Facts

