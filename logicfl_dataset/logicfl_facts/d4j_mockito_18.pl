%%% Logic-FL Facts
:- style_check(-discontiguous).

%returns_empty_values_test_1 - org.mockito.internal.stubbing.defaultanswers.ReturnsEmptyValuesTest
assign(f_values_326, returns_empty_values_test_1_expr1, line(returns_empty_values_test_1, 31)).
method_invoc(returns_empty_values_test_1_expr1, m_returns_empty_values_287, line(returns_empty_values_test_1, 31)).
throw(m_should_return_empty__iterable_289, exception).
method_invoc(returns_empty_values_test_1_expr2, m_assert_false_290, line(returns_empty_values_test_1, 57)).
argument(returns_empty_values_test_1_expr3, 1, returns_empty_values_test_1_expr2).
method_invoc(returns_empty_values_test_1_expr3, m_has_next_291, line(returns_empty_values_test_1, 57)).
ref(returns_empty_values_test_1_expr4, returns_empty_values_test_1_expr3, line(returns_empty_values_test_1, 57)).
method_invoc(returns_empty_values_test_1_expr4, m_iterator_292, line(returns_empty_values_test_1, 57)).
ref(returns_empty_values_test_1_expr5, returns_empty_values_test_1_expr4, line(returns_empty_values_test_1, 57)).
assign(returns_empty_values_test_1_expr5, returns_empty_values_test_1_expr6, line(returns_empty_values_test_1, 57)).
assign(returns_empty_values_test_1_expr6, returns_empty_values_test_1_expr7, line(returns_empty_values_test_1, 57)).
method_invoc(returns_empty_values_test_1_expr7, m_return_value_for_285, line(returns_empty_values_test_1, 57)).
argument(returns_empty_values_test_1_expr8, 1, returns_empty_values_test_1_expr7).
ref(f_values_326, returns_empty_values_test_1_expr7, line(returns_empty_values_test_1, 57)).

%iterables_1 - org.mockito.internal.util.collections.Iterables
param(p_in_373, 1, m_to_iterable_228).
assign(v_out_374, iterables_1_expr1, line(iterables_1, 16)).
method_invoc(iterables_1_expr1, m_linked_list_343, line(iterables_1, 16)).
method_invoc(iterables_1_expr2, m_has_more_elements_344, line(iterables_1, 17)).
ref(p_in_373, iterables_1_expr2, line(iterables_1, 17)).
return(v_out_374, m_to_iterable_228, line(iterables_1, 20)).

%sets_1 - org.mockito.internal.util.collections.Sets
param(p_mocks_375, 1, m_new_mock_safe_hash_set_345).
param(p_mocks_376, 1, m_new_mock_safe_hash_set_154).
return(sets_1_expr1, m_new_mock_safe_hash_set_154, line(sets_1, 20)).
method_invoc(sets_1_expr1, m_of_339, line(sets_1, 20)).
argument(p_mocks_376, 1, sets_1_expr1).
ref(t_hash_code_and_equals_safe_set_42, sets_1_expr1, line(sets_1, 20)).
param(p_elements_377, 1, m_new_set_347).

%primitives_1 - org.mockito.internal.util.Primitives
assign(f_primitive_types_349, primitives_1_expr1, line(primitives_1, 13)).
method_invoc(primitives_1_expr1, m_hash_map_117, line(primitives_1, 13)).
assign(f_primitive_or_wrapper_default_values_350, primitives_1_expr2, line(primitives_1, 14)).
method_invoc(primitives_1_expr2, m_hash_map_117, line(primitives_1, 14)).
param(p_clazz_351, 1, m_primitive_type_of_311).
param(p_type_352, 1, m_is_primitive_or_wrapper_286).
return(primitives_1_expr3, m_is_primitive_or_wrapper_286, line(primitives_1, 42)).
method_invoc(primitives_1_expr3, m_contains_key_312, line(primitives_1, 42)).
argument(p_type_352, 1, primitives_1_expr3).
ref(f_primitive_or_wrapper_default_values_350, primitives_1_expr3, line(primitives_1, 42)).
param(p_primitive_or_wrapper_type_353, 1, m_default_value_for_primitive_or_wrapper_313).
method_invoc(primitives_1_expr4, m_put_126, line(primitives_1, 58)).
argument(primitives_1_expr5, 1, primitives_1_expr4).
argument(q_type_2, 2, primitives_1_expr4).
ref(f_primitive_types_349, primitives_1_expr4, line(primitives_1, 58)).
ref(t_boolean_34, q_type_2, line(primitives_1, 58)).
method_invoc(primitives_1_expr6, m_put_126, line(primitives_1, 59)).
argument(primitives_1_expr7, 1, primitives_1_expr6).
argument(q_type_3, 2, primitives_1_expr6).
ref(f_primitive_types_349, primitives_1_expr6, line(primitives_1, 59)).
ref(t_character_35, q_type_3, line(primitives_1, 59)).
method_invoc(primitives_1_expr8, m_put_126, line(primitives_1, 60)).
argument(primitives_1_expr9, 1, primitives_1_expr8).
argument(q_type_4, 2, primitives_1_expr8).
ref(f_primitive_types_349, primitives_1_expr8, line(primitives_1, 60)).
ref(t_byte_36, q_type_4, line(primitives_1, 60)).
method_invoc(primitives_1_expr10, m_put_126, line(primitives_1, 61)).
argument(primitives_1_expr11, 1, primitives_1_expr10).
argument(q_type_5, 2, primitives_1_expr10).
ref(f_primitive_types_349, primitives_1_expr10, line(primitives_1, 61)).
ref(t_short_37, q_type_5, line(primitives_1, 61)).
method_invoc(primitives_1_expr12, m_put_126, line(primitives_1, 62)).
argument(primitives_1_expr13, 1, primitives_1_expr12).
argument(q_type_6, 2, primitives_1_expr12).
ref(f_primitive_types_349, primitives_1_expr12, line(primitives_1, 62)).
ref(t_integer_38, q_type_6, line(primitives_1, 62)).
method_invoc(primitives_1_expr14, m_put_126, line(primitives_1, 63)).
argument(primitives_1_expr15, 1, primitives_1_expr14).
argument(q_type_7, 2, primitives_1_expr14).
ref(f_primitive_types_349, primitives_1_expr14, line(primitives_1, 63)).
ref(t_long_39, q_type_7, line(primitives_1, 63)).
method_invoc(primitives_1_expr16, m_put_126, line(primitives_1, 64)).
argument(primitives_1_expr17, 1, primitives_1_expr16).
argument(q_type_8, 2, primitives_1_expr16).
ref(f_primitive_types_349, primitives_1_expr16, line(primitives_1, 64)).
ref(t_float_40, q_type_8, line(primitives_1, 64)).
method_invoc(primitives_1_expr18, m_put_126, line(primitives_1, 65)).
argument(primitives_1_expr19, 1, primitives_1_expr18).
argument(q_type_9, 2, primitives_1_expr18).
ref(f_primitive_types_349, primitives_1_expr18, line(primitives_1, 65)).
ref(t_double_41, q_type_9, line(primitives_1, 65)).
method_invoc(primitives_1_expr20, m_put_126, line(primitives_1, 69)).
argument(primitives_1_expr21, 1, primitives_1_expr20).
argument(primitives_1_literal1, 2, primitives_1_expr20).
ref(f_primitive_or_wrapper_default_values_350, primitives_1_expr20, line(primitives_1, 69)).
method_invoc(primitives_1_expr22, m_put_126, line(primitives_1, 70)).
argument(primitives_1_expr23, 1, primitives_1_expr22).
argument(primitives_1_literal2, 2, primitives_1_expr22).
ref(f_primitive_or_wrapper_default_values_350, primitives_1_expr22, line(primitives_1, 70)).
method_invoc(primitives_1_expr24, m_put_126, line(primitives_1, 71)).
argument(primitives_1_expr25, 1, primitives_1_expr24).
argument(primitives_1_expr26, 2, primitives_1_expr24).
ref(f_primitive_or_wrapper_default_values_350, primitives_1_expr24, line(primitives_1, 71)).
assign(primitives_1_expr26, primitives_1_literal3, line(primitives_1, 71)).
method_invoc(primitives_1_expr27, m_put_126, line(primitives_1, 72)).
argument(primitives_1_expr28, 1, primitives_1_expr27).
argument(primitives_1_expr29, 2, primitives_1_expr27).
ref(f_primitive_or_wrapper_default_values_350, primitives_1_expr27, line(primitives_1, 72)).
assign(primitives_1_expr29, primitives_1_literal4, line(primitives_1, 72)).
method_invoc(primitives_1_expr30, m_put_126, line(primitives_1, 73)).
argument(primitives_1_expr31, 1, primitives_1_expr30).
argument(primitives_1_literal5, 2, primitives_1_expr30).
ref(f_primitive_or_wrapper_default_values_350, primitives_1_expr30, line(primitives_1, 73)).
method_invoc(primitives_1_expr32, m_put_126, line(primitives_1, 74)).
argument(primitives_1_expr33, 1, primitives_1_expr32).
argument(primitives_1_literal6, 2, primitives_1_expr32).
ref(f_primitive_or_wrapper_default_values_350, primitives_1_expr32, line(primitives_1, 74)).
method_invoc(primitives_1_expr34, m_put_126, line(primitives_1, 75)).
argument(primitives_1_expr35, 1, primitives_1_expr34).
argument(primitives_1_literal7, 2, primitives_1_expr34).
ref(f_primitive_or_wrapper_default_values_350, primitives_1_expr34, line(primitives_1, 75)).
method_invoc(primitives_1_expr36, m_put_126, line(primitives_1, 76)).
argument(primitives_1_expr37, 1, primitives_1_expr36).
argument(primitives_1_literal8, 2, primitives_1_expr36).
ref(f_primitive_or_wrapper_default_values_350, primitives_1_expr36, line(primitives_1, 76)).
method_invoc(primitives_1_expr38, m_put_126, line(primitives_1, 78)).
argument(primitives_1_expr39, 1, primitives_1_expr38).
argument(primitives_1_literal9, 2, primitives_1_expr38).
ref(f_primitive_or_wrapper_default_values_350, primitives_1_expr38, line(primitives_1, 78)).
method_invoc(primitives_1_expr40, m_put_126, line(primitives_1, 79)).
argument(primitives_1_expr41, 1, primitives_1_expr40).
argument(primitives_1_literal10, 2, primitives_1_expr40).
ref(f_primitive_or_wrapper_default_values_350, primitives_1_expr40, line(primitives_1, 79)).
method_invoc(primitives_1_expr42, m_put_126, line(primitives_1, 80)).
argument(primitives_1_expr43, 1, primitives_1_expr42).
argument(primitives_1_expr44, 2, primitives_1_expr42).
ref(f_primitive_or_wrapper_default_values_350, primitives_1_expr42, line(primitives_1, 80)).
assign(primitives_1_expr44, primitives_1_literal11, line(primitives_1, 80)).
method_invoc(primitives_1_expr45, m_put_126, line(primitives_1, 81)).
argument(primitives_1_expr46, 1, primitives_1_expr45).
argument(primitives_1_expr47, 2, primitives_1_expr45).
ref(f_primitive_or_wrapper_default_values_350, primitives_1_expr45, line(primitives_1, 81)).
assign(primitives_1_expr47, primitives_1_literal12, line(primitives_1, 81)).
method_invoc(primitives_1_expr48, m_put_126, line(primitives_1, 82)).
argument(primitives_1_expr49, 1, primitives_1_expr48).
argument(primitives_1_literal13, 2, primitives_1_expr48).
ref(f_primitive_or_wrapper_default_values_350, primitives_1_expr48, line(primitives_1, 82)).
method_invoc(primitives_1_expr50, m_put_126, line(primitives_1, 83)).
argument(primitives_1_expr51, 1, primitives_1_expr50).
argument(primitives_1_literal14, 2, primitives_1_expr50).
ref(f_primitive_or_wrapper_default_values_350, primitives_1_expr50, line(primitives_1, 83)).
method_invoc(primitives_1_expr52, m_put_126, line(primitives_1, 84)).
argument(primitives_1_expr53, 1, primitives_1_expr52).
argument(primitives_1_literal15, 2, primitives_1_expr52).
ref(f_primitive_or_wrapper_default_values_350, primitives_1_expr52, line(primitives_1, 84)).
method_invoc(primitives_1_expr54, m_put_126, line(primitives_1, 85)).
argument(primitives_1_expr55, 1, primitives_1_expr54).
argument(primitives_1_literal16, 2, primitives_1_expr54).
ref(f_primitive_or_wrapper_default_values_350, primitives_1_expr54, line(primitives_1, 85)).

%final_mock_candidate_filter_1 - org.mockito.internal.configuration.injection.filter.FinalMockCandidateFilter
param(p_mocks_241, 1, m_filter_candidate_200).
param(p_field_242, 2, m_filter_candidate_200).
param(p_field_instance_243, 3, m_filter_candidate_200).

%checks_1 - org.mockito.internal.util.Checks
param(p_value_327, 1, m_check_not_null_178).
param(p_checked_value_328, 2, m_check_not_null_178).
return(p_value_327, m_check_not_null_178, line(checks_1, 17)).
param(p_iterable_329, 1, m_check_items_not_null_180).
param(p_checked_iterable_330, 2, m_check_items_not_null_180).
method_invoc(checks_1_expr2, m_check_not_null_178, line(checks_1, 21)).
argument(p_iterable_329, 1, checks_1_expr2).
argument(p_checked_iterable_330, 2, checks_1_expr2).
ref(p_iterable_329, checks_1_stmt4, line(checks_1, 22)).
return(p_iterable_329, m_check_items_not_null_180, line(checks_1, 25)).

%test_base_1 - org.mockitoutil.TestBase
method_invoc(test_base_1_expr1, m_override_cleans_stack_trace_26, line(test_base_1, 42)).
argument(test_base_1_literal1, 1, test_base_1_expr1).
ref(test_base_1_expr2, test_base_1_expr1, line(test_base_1, 42)).
method_invoc(test_base_1_expr2, m_get_config_115, line(test_base_1, 42)).
ref(t_configuration_access_47, test_base_1_expr2, line(test_base_1, 42)).
method_invoc(test_base_1_expr3, m_override_default_answer_25, line(test_base_1, 43)).
argument(test_base_1_literal2, 1, test_base_1_expr3).
ref(test_base_1_expr4, test_base_1_expr3, line(test_base_1, 43)).
method_invoc(test_base_1_expr4, m_get_config_115, line(test_base_1, 43)).
ref(t_configuration_access_47, test_base_1_expr4, line(test_base_1, 43)).
assign(v_state_386, test_base_1_expr5, line(test_base_1, 44)).
method_invoc(test_base_1_expr5, m_state_master_356, line(test_base_1, 44)).
method_invoc(test_base_1_expr6, m_validate_18, line(test_base_1, 47)).
ref(v_state_386, test_base_1_expr6, line(test_base_1, 47)).
method_invoc(test_base_1_expr7, m_reset_15, line(test_base_1, 49)).
ref(v_state_386, test_base_1_expr7, line(test_base_1, 49)).
method_invoc(test_base_1_expr8, m_init_mocks_1, line(test_base_1, 54)).
argument(test_base_1_expr9, 1, test_base_1_expr8).
ref(t_mockito_annotations_48, test_base_1_expr8, line(test_base_1, 54)).
param(p_o_387, 1, m_assert_that_361).
param(p_a_388, 2, m_assert_that_361).
param(p_actual_389, 1, m_assert_that_362).
param(p_m_390, 2, m_assert_that_362).
param(p_message_391, 1, m_assert_that_363).
param(p_actual_392, 2, m_assert_that_363).
param(p_m_393, 3, m_assert_that_363).
param(p_substring_394, 1, m_ends_with_364).
param(p_value_395, 1, m_assert_value_365).
param(p_expected_396, 1, m_assert_not_equals_366).
param(p_got_397, 2, m_assert_not_equals_366).
param(p_sub_398, 1, m_assert_contains_367).
param(p_string_399, 2, m_assert_contains_367).
param(p_sub_400, 1, m_assert_contains_ignoring_case_368).
param(p_string_401, 2, m_assert_contains_ignoring_case_368).
param(p_string_402, 1, m_contains_ignoring_case_369).
param(p_sub_403, 2, m_contains_ignoring_case_369).
param(p_sub_404, 1, m_assert_not_contains_370).
param(p_string_405, 2, m_assert_not_contains_370).
param(p_type_406, 1, m_invocation_of_371).
param(p_method_name_407, 2, m_invocation_of_371).
param(p_args_408, 3, m_invocation_of_371).
throw(m_invocation_of_371, no_such_method_exception).
param(p_type_409, 1, m_invocation_of_372).
param(p_method_name_410, 2, m_invocation_of_372).
param(p_real_method_411, 3, m_invocation_of_372).
throw(m_invocation_of_372, no_such_method_exception).
param(p_m_412, 1, m_describe_373).
param(p_o_413, 1, m_is_mock_374).
param(p_list_414, 1, m_assert_contains_type_375).
param(p_clazz_415, 2, m_assert_contains_type_375).
param(p_objects_416, 1, m_matches_376).
param(p_e_417, 1, m_get_stack_trace_377).

%configuration_access_1 - org.mockito.internal.configuration.ConfigurationAccess
return(configuration_access_1_expr1, m_get_config_115, line(configuration_access_1, 12)).
assign(configuration_access_1_expr1, configuration_access_1_expr2, line(configuration_access_1, 12)).
method_invoc(configuration_access_1_expr2, m_get_it_116, line(configuration_access_1, 12)).
ref(configuration_access_1_expr3, configuration_access_1_expr2, line(configuration_access_1, 12)).
method_invoc(configuration_access_1_expr3, m_global_configuration_3, line(configuration_access_1, 12)).

%default_stack_trace_cleaner_provider_1 - org.mockito.internal.exceptions.stacktrace.DefaultStackTraceCleanerProvider
param(p_default_cleaner_295, 1, m_get_stack_trace_cleaner_235).

%injecting_annotation_engine_1 - org.mockito.internal.configuration.InjectingAnnotationEngine
assign(f_delegate_153, injecting_annotation_engine_1_expr1, line(injecting_annotation_engine_1, 24)).
method_invoc(injecting_annotation_engine_1_expr1, m_default_annotation_engine_118, line(injecting_annotation_engine_1, 24)).
assign(f_spy_annotation_engine_154, injecting_annotation_engine_1_expr2, line(injecting_annotation_engine_1, 25)).
method_invoc(injecting_annotation_engine_1_expr2, m_spy_annotation_engine_147, line(injecting_annotation_engine_1, 25)).
param(p_annotation_155, 1, m_create_mock_for_148).
param(p_field_156, 2, m_create_mock_for_148).
param(p_clazz_157, 1, m_process_149).
param(p_test_instance_158, 2, m_process_149).
method_invoc(injecting_annotation_engine_1_expr3, m_process_independent_annotations_150, line(injecting_annotation_engine_1, 55)).
argument(injecting_annotation_engine_1_expr4, 1, injecting_annotation_engine_1_expr3).
argument(p_test_instance_158, 2, injecting_annotation_engine_1_expr3).
method_invoc(injecting_annotation_engine_1_expr4, m_get_class_4, line(injecting_annotation_engine_1, 55)).
ref(p_test_instance_158, injecting_annotation_engine_1_expr4, line(injecting_annotation_engine_1, 55)).
method_invoc(injecting_annotation_engine_1_expr5, m_process_inject_mocks_151, line(injecting_annotation_engine_1, 56)).
argument(injecting_annotation_engine_1_expr6, 1, injecting_annotation_engine_1_expr5).
argument(p_test_instance_158, 2, injecting_annotation_engine_1_expr5).
method_invoc(injecting_annotation_engine_1_expr6, m_get_class_4, line(injecting_annotation_engine_1, 56)).
ref(p_test_instance_158, injecting_annotation_engine_1_expr6, line(injecting_annotation_engine_1, 56)).
param(p_clazz_159, 1, m_process_inject_mocks_151).
param(p_test_instance_160, 2, m_process_inject_mocks_151).
assign(v_class_context_161, p_clazz_159, line(injecting_annotation_engine_1, 60)).
method_invoc(injecting_annotation_engine_1_expr9, m_inject_mocks_152, line(injecting_annotation_engine_1, 62)).
argument(p_test_instance_160, 1, injecting_annotation_engine_1_expr9).
assign(v_class_context_161, injecting_annotation_engine_1_expr11, line(injecting_annotation_engine_1, 63)).
method_invoc(injecting_annotation_engine_1_expr11, m_get_superclass_8, line(injecting_annotation_engine_1, 63)).
ref(v_class_context_161, injecting_annotation_engine_1_expr11, line(injecting_annotation_engine_1, 63)).
param(p_clazz_162, 1, m_process_independent_annotations_150).
param(p_test_instance_163, 2, m_process_independent_annotations_150).
assign(v_class_context_164, p_clazz_162, line(injecting_annotation_engine_1, 68)).
method_invoc(injecting_annotation_engine_1_expr14, m_process_9, line(injecting_annotation_engine_1, 71)).
argument(v_class_context_164, 1, injecting_annotation_engine_1_expr14).
argument(p_test_instance_163, 2, injecting_annotation_engine_1_expr14).
ref(f_delegate_153, injecting_annotation_engine_1_expr14, line(injecting_annotation_engine_1, 71)).
method_invoc(injecting_annotation_engine_1_expr15, m_process_9, line(injecting_annotation_engine_1, 73)).
argument(v_class_context_164, 1, injecting_annotation_engine_1_expr15).
argument(p_test_instance_163, 2, injecting_annotation_engine_1_expr15).
ref(f_spy_annotation_engine_154, injecting_annotation_engine_1_expr15, line(injecting_annotation_engine_1, 73)).
assign(v_class_context_164, injecting_annotation_engine_1_expr17, line(injecting_annotation_engine_1, 75)).
method_invoc(injecting_annotation_engine_1_expr17, m_get_superclass_8, line(injecting_annotation_engine_1, 75)).
ref(v_class_context_164, injecting_annotation_engine_1_expr17, line(injecting_annotation_engine_1, 75)).
param(p_test_class_instance_165, 1, m_inject_mocks_152).
assign(v_clazz_166, injecting_annotation_engine_1_expr18, line(injecting_annotation_engine_1, 90)).
method_invoc(injecting_annotation_engine_1_expr18, m_get_class_4, line(injecting_annotation_engine_1, 90)).
ref(p_test_class_instance_165, injecting_annotation_engine_1_expr18, line(injecting_annotation_engine_1, 90)).
assign(v_mock_dependent_fields_167, injecting_annotation_engine_1_expr19, line(injecting_annotation_engine_1, 91)).
method_invoc(injecting_annotation_engine_1_expr19, m_hash_set_153, line(injecting_annotation_engine_1, 91)).
assign(v_mocks_168, injecting_annotation_engine_1_expr20, line(injecting_annotation_engine_1, 92)).
method_invoc(injecting_annotation_engine_1_expr20, m_new_mock_safe_hash_set_154, line(injecting_annotation_engine_1, 92)).
method_invoc(injecting_annotation_engine_1_expr23, m_add_to_155, line(injecting_annotation_engine_1, 95)).
argument(v_mock_dependent_fields_167, 1, injecting_annotation_engine_1_expr23).
ref(injecting_annotation_engine_1_expr24, injecting_annotation_engine_1_expr23, line(injecting_annotation_engine_1, 95)).
method_invoc(injecting_annotation_engine_1_expr24, m_inject_mocks_scanner_156, line(injecting_annotation_engine_1, 95)).
argument(v_clazz_166, 1, injecting_annotation_engine_1_expr24).
method_invoc(injecting_annotation_engine_1_expr25, m_add_prepared_mocks_157, line(injecting_annotation_engine_1, 96)).
argument(v_mocks_168, 1, injecting_annotation_engine_1_expr25).
ref(injecting_annotation_engine_1_expr26, injecting_annotation_engine_1_expr25, line(injecting_annotation_engine_1, 96)).
method_invoc(injecting_annotation_engine_1_expr26, m_mock_scanner_158, line(injecting_annotation_engine_1, 96)).
argument(p_test_class_instance_165, 1, injecting_annotation_engine_1_expr26).
argument(v_clazz_166, 2, injecting_annotation_engine_1_expr26).
assign(v_clazz_166, injecting_annotation_engine_1_expr28, line(injecting_annotation_engine_1, 97)).
method_invoc(injecting_annotation_engine_1_expr28, m_get_superclass_8, line(injecting_annotation_engine_1, 97)).
ref(v_clazz_166, injecting_annotation_engine_1_expr28, line(injecting_annotation_engine_1, 97)).
method_invoc(injecting_annotation_engine_1_expr29, m_inject_mocks_on_fields_129, line(injecting_annotation_engine_1, 100)).
argument(v_mock_dependent_fields_167, 1, injecting_annotation_engine_1_expr29).
argument(v_mocks_168, 2, injecting_annotation_engine_1_expr29).
argument(p_test_class_instance_165, 3, injecting_annotation_engine_1_expr29).
ref(injecting_annotation_engine_1_expr30, injecting_annotation_engine_1_expr29, line(injecting_annotation_engine_1, 100)).
method_invoc(injecting_annotation_engine_1_expr30, m_default_injection_engine_159, line(injecting_annotation_engine_1, 100)).

%field_reader_1 - org.mockito.internal.util.reflection.FieldReader
assign(f_changer_381, field_reader_1_expr1, line(field_reader_1, 15)).
method_invoc(field_reader_1_expr1, m_accessibility_changer_352, line(field_reader_1, 15)).
param(p_target_382, 1, m_field_reader_210).
param(p_field_383, 2, m_field_reader_210).
assign(f_target_384, p_target_382, line(field_reader_1, 18)).
assign(f_field_385, p_field_383, line(field_reader_1, 19)).
method_invoc(field_reader_1_expr8, m_enable_access_349, line(field_reader_1, 20)).
argument(p_field_383, 1, field_reader_1_expr8).
ref(f_changer_381, field_reader_1_expr8, line(field_reader_1, 20)).
return(field_reader_1_expr9, m_read_212, line(field_reader_1, 29)).
method_invoc(field_reader_1_expr9, m_get_354, line(field_reader_1, 29)).
throw(field_reader_1_expr9, illegal_argument_exception, line(field_reader_1, 29)).
throw(field_reader_1_expr9, illegal_access_exception, line(field_reader_1, 29)).
argument(f_target_384, 1, field_reader_1_expr9).
ref(f_field_385, field_reader_1_expr9, line(field_reader_1, 29)).

%property_and_setter_injection_1 - org.mockito.internal.configuration.injection.PropertyAndSetterInjection
assign(f_mock_candidate_filter_222, property_and_setter_injection_1_expr1, line(property_and_setter_injection_1, 62)).
method_invoc(property_and_setter_injection_1_expr1, m_type_based_candidate_filter_189, line(property_and_setter_injection_1, 62)).
argument(property_and_setter_injection_1_expr2, 1, property_and_setter_injection_1_expr1).
method_invoc(property_and_setter_injection_1_expr2, m_name_based_candidate_filter_190, line(property_and_setter_injection_1, 62)).
argument(property_and_setter_injection_1_expr3, 1, property_and_setter_injection_1_expr2).
method_invoc(property_and_setter_injection_1_expr3, m_final_mock_candidate_filter_191, line(property_and_setter_injection_1, 62)).
assign(f_not_final_or_static_223, property_and_setter_injection_1_expr4, line(property_and_setter_injection_1, 64)).
method_invoc(property_and_setter_injection_1_expr4, m__192, line(property_and_setter_injection_1, 64)).
param(p_object_224, 1, m_is_out_193).
param(p_inject_mocks_field_225, 1, m_process_injection_194).
param(p_inject_mocks_field_owner_226, 2, m_process_injection_194).
param(p_mock_candidates_227, 3, m_process_injection_194).
param(p_field_228, 1, m_initialize_inject_mocks_field_195).
param(p_field_owner_229, 2, m_initialize_inject_mocks_field_195).
param(p_awaiting_injection_clazz_230, 1, m_inject_mock_candidates_196).
param(p_mocks_231, 2, m_inject_mock_candidates_196).
param(p_instance_232, 3, m_inject_mock_candidates_196).
param(p_mocks_233, 1, m_inject_mock_candidates_on_fields_197).
param(p_instance_234, 2, m_inject_mock_candidates_on_fields_197).
param(p_injection_occurred_235, 3, m_inject_mock_candidates_on_fields_197).
param(p_ordered_instance_fields_236, 4, m_inject_mock_candidates_on_fields_197).
param(p_awaiting_injection_clazz_237, 1, m_ordered_instance_fields_from_198).

%type_based_candidate_filter_1 - org.mockito.internal.configuration.injection.filter.TypeBasedCandidateFilter
param(p_next_250, 1, m_type_based_candidate_filter_189).
assign(f_next_251, p_next_250, line(type_based_candidate_filter_1, 17)).
param(p_mocks_252, 1, m_filter_candidate_205).
param(p_field_253, 2, m_filter_candidate_205).
param(p_field_instance_254, 3, m_filter_candidate_205).

%thread_safe_mocking_progress_1 - org.mockito.internal.progress.ThreadSafeMockingProgress
assign(f_mocking_progress_315, thread_safe_mocking_progress_1_expr1, line(thread_safe_mocking_progress_1, 18)).
method_invoc(thread_safe_mocking_progress_1_expr1, m_thread_local_136, line(thread_safe_mocking_progress_1, 18)).
method_invoc(thread_safe_mocking_progress_1_expr3, m_get_137, line(thread_safe_mocking_progress_1, 21)).
ref(f_mocking_progress_315, thread_safe_mocking_progress_1_expr3, line(thread_safe_mocking_progress_1, 21)).
method_invoc(thread_safe_mocking_progress_1_expr4, m_set_138, line(thread_safe_mocking_progress_1, 22)).
argument(thread_safe_mocking_progress_1_expr5, 1, thread_safe_mocking_progress_1_expr4).
ref(f_mocking_progress_315, thread_safe_mocking_progress_1_expr4, line(thread_safe_mocking_progress_1, 22)).
method_invoc(thread_safe_mocking_progress_1_expr5, m_mocking_progress_impl_269, line(thread_safe_mocking_progress_1, 22)).
return(thread_safe_mocking_progress_1_expr6, m_thread_safely_268, line(thread_safe_mocking_progress_1, 24)).
method_invoc(thread_safe_mocking_progress_1_expr6, m_get_137, line(thread_safe_mocking_progress_1, 24)).
ref(f_mocking_progress_315, thread_safe_mocking_progress_1_expr6, line(thread_safe_mocking_progress_1, 24)).
param(p_i_ongoing_stubbing_316, 1, m_report_ongoing_stubbing_270).
param(p_verify_317, 1, m_verification_started_272).
method_invoc(thread_safe_mocking_progress_1_expr7, m_validate_state_275, line(thread_safe_mocking_progress_1, 48)).
ref(thread_safe_mocking_progress_1_expr8, thread_safe_mocking_progress_1_expr7, line(thread_safe_mocking_progress_1, 48)).
method_invoc(thread_safe_mocking_progress_1_expr8, m_thread_safely_268, line(thread_safe_mocking_progress_1, 48)).
param(p_invocation_318, 1, m_stubbing_completed_276).
method_invoc(thread_safe_mocking_progress_1_expr9, m_reset_278, line(thread_safe_mocking_progress_1, 60)).
ref(thread_safe_mocking_progress_1_expr10, thread_safe_mocking_progress_1_expr9, line(thread_safe_mocking_progress_1, 60)).
method_invoc(thread_safe_mocking_progress_1_expr10, m_thread_safely_268, line(thread_safe_mocking_progress_1, 60)).
method_invoc(thread_safe_mocking_progress_1_expr11, m_reset_ongoing_stubbing_279, line(thread_safe_mocking_progress_1, 64)).
ref(thread_safe_mocking_progress_1_expr12, thread_safe_mocking_progress_1_expr11, line(thread_safe_mocking_progress_1, 64)).
method_invoc(thread_safe_mocking_progress_1_expr12, m_thread_safely_268, line(thread_safe_mocking_progress_1, 64)).
param(p_mock_319, 1, m_mocking_started_281).
param(p_class_to_mock_320, 2, m_mocking_started_281).
param(p_listener_321, 1, m_set_listener_282).

%mock_annotation_processor_1 - org.mockito.internal.configuration.MockAnnotationProcessor
param(p_annotation_169, 1, m_process_160).
param(p_field_170, 2, m_process_160).

%argument_matcher_storage_impl_1 - org.mockito.internal.progress.ArgumentMatcherStorageImpl
assign(f_matcher_stack_296, argument_matcher_storage_impl_1_expr1, line(argument_matcher_storage_impl_1, 26)).
method_invoc(argument_matcher_storage_impl_1_expr1, m_stack_236, line(argument_matcher_storage_impl_1, 26)).
param(p_matcher_297, 1, m_report_matcher_237).
param(p_additional_matcher_name_298, 1, m_assert_state_for_242).
param(p_sub_matchers_count_299, 2, m_assert_state_for_242).
param(p_count_300, 1, m_pop_last_argument_matchers_243).
param(p_additional_matcher_name_301, 1, m_assert_matchers_found_for_244).
param(p_additional_matcher_name_302, 1, m_assert_incorrect_use_of_additional_matchers_245).
param(p_count_303, 2, m_assert_incorrect_use_of_additional_matchers_245).
method_invoc(argument_matcher_storage_impl_1_expr3, m_is_empty_247, line(argument_matcher_storage_impl_1, 112)).
ref(f_matcher_stack_296, argument_matcher_storage_impl_1_expr3, line(argument_matcher_storage_impl_1, 112)).
method_invoc(argument_matcher_storage_impl_1_expr4, m_clear_249, line(argument_matcher_storage_impl_1, 123)).
ref(f_matcher_stack_296, argument_matcher_storage_impl_1_expr4, line(argument_matcher_storage_impl_1, 123)).

%spy_on_injected_fields_handler_1 - org.mockito.internal.configuration.injection.SpyOnInjectedFieldsHandler
param(p_field_238, 1, m_process_injection_199).
param(p_field_owner_239, 2, m_process_injection_199).
param(p_mock_candidates_240, 3, m_process_injection_199).

%mockito_configuration_1 - org.mockito.configuration.MockitoConfiguration
assign(f_overridden_default_answer_17, mockito_configuration_1_literal1, line(mockito_configuration_1, 17)).
assign(f_enable_class_cache_18, mockito_configuration_1_literal2, line(mockito_configuration_1, 20)).
param(p_default_answer_19, 1, m_override_default_answer_25).
assign(f_overridden_default_answer_17, p_default_answer_19, line(mockito_configuration_1, 24)).
param(p_cleans_stack_trace_20, 1, m_override_cleans_stack_trace_26).
assign(f_cleans_stack_trace_21, p_cleans_stack_trace_20, line(mockito_configuration_1, 29)).
param(p_engine_22, 1, m_override_annotation_engine_27).
param(p_enable_class_cache_23, 1, m_override_enable_class_cache_28).
return(mockito_configuration_1_expr10, m_get_annotation_engine_30, line(mockito_configuration_1, 56)).
method_invoc(mockito_configuration_1_expr10, m__31, line(mockito_configuration_1, 56)).
param(p_annotation_25, 1, m_create_mock_for_32).
param(p_field_26, 2, m_create_mock_for_32).

%hash_code_and_equals_safe_set_1 - org.mockito.internal.util.collections.HashCodeAndEqualsSafeSet
assign(f_backing_hash_set_354, hash_code_and_equals_safe_set_1_expr1, line(hash_code_and_equals_safe_set_1, 34)).
method_invoc(hash_code_and_equals_safe_set_1_expr1, m_hash_set_153, line(hash_code_and_equals_safe_set_1, 34)).
return(hash_code_and_equals_safe_set_1_expr2, m_iterator_314, line(hash_code_and_equals_safe_set_1, 37)).
method_invoc(hash_code_and_equals_safe_set_1_expr2, m__315, line(hash_code_and_equals_safe_set_1, 37)).
assign(f_iterator_355, hash_code_and_equals_safe_set_1_expr3, line(hash_code_and_equals_safe_set_1, 38)).
method_invoc(hash_code_and_equals_safe_set_1_expr3, m_iterator_316, line(hash_code_and_equals_safe_set_1, 38)).
ref(f_backing_hash_set_354, hash_code_and_equals_safe_set_1_expr3, line(hash_code_and_equals_safe_set_1, 38)).
return(hash_code_and_equals_safe_set_1_expr4, m_has_next_317, line(hash_code_and_equals_safe_set_1, 41)).
method_invoc(hash_code_and_equals_safe_set_1_expr4, m_has_next_291, line(hash_code_and_equals_safe_set_1, 41)).
ref(f_iterator_355, hash_code_and_equals_safe_set_1_expr4, line(hash_code_and_equals_safe_set_1, 41)).
param(p_mock_356, 1, m_contains_322).
param(p_mock_357, 1, m_add_323).
param(p_mock_358, 1, m_remove_324).
throw(m_clone_326, clone_not_supported_exception).
param(p_o_359, 1, m_equals_327).
param(p_array_360, 1, m_unwrap_to_330).
param(p_typed_array_361, 1, m_to_array_331).
param(p_mocks_362, 1, m_remove_all_332).
param(p_mocks_363, 1, m_contains_all_333).
param(p_mocks_364, 1, m_add_all_334).
return(hash_code_and_equals_safe_set_1_expr5, m_add_all_334, line(hash_code_and_equals_safe_set_1, 124)).
method_invoc(hash_code_and_equals_safe_set_1_expr5, m_add_all_335, line(hash_code_and_equals_safe_set_1, 124)).
argument(hash_code_and_equals_safe_set_1_expr6, 1, hash_code_and_equals_safe_set_1_expr5).
ref(f_backing_hash_set_354, hash_code_and_equals_safe_set_1_expr5, line(hash_code_and_equals_safe_set_1, 124)).
method_invoc(hash_code_and_equals_safe_set_1_expr6, m_as_wrapped_mocks_336, line(hash_code_and_equals_safe_set_1, 124)).
argument(p_mocks_364, 1, hash_code_and_equals_safe_set_1_expr6).
param(p_mocks_365, 1, m_retain_all_337).
param(p_mocks_366, 1, m_as_wrapped_mocks_336).
method_invoc(hash_code_and_equals_safe_set_1_expr7, m_check_not_null_178, line(hash_code_and_equals_safe_set_1, 132)).
argument(p_mocks_366, 1, hash_code_and_equals_safe_set_1_expr7).
argument(hash_code_and_equals_safe_set_1_literal1, 2, hash_code_and_equals_safe_set_1_expr7).
ref(t_checks_43, hash_code_and_equals_safe_set_1_expr7, line(hash_code_and_equals_safe_set_1, 132)).
assign(v_hash_set_367, hash_code_and_equals_safe_set_1_expr8, line(hash_code_and_equals_safe_set_1, 133)).
method_invoc(hash_code_and_equals_safe_set_1_expr8, m_hash_set_153, line(hash_code_and_equals_safe_set_1, 133)).
ref(p_mocks_366, hash_code_and_equals_safe_set_1_stmt6, line(hash_code_and_equals_safe_set_1, 134)).
return(v_hash_set_367, m_as_wrapped_mocks_336, line(hash_code_and_equals_safe_set_1, 138)).
param(p_mocks_369, 1, m_of_339).
return(hash_code_and_equals_safe_set_1_expr9, m_of_339, line(hash_code_and_equals_safe_set_1, 146)).
method_invoc(hash_code_and_equals_safe_set_1_expr9, m_of_340, line(hash_code_and_equals_safe_set_1, 146)).
argument(hash_code_and_equals_safe_set_1_expr10, 1, hash_code_and_equals_safe_set_1_expr9).
method_invoc(hash_code_and_equals_safe_set_1_expr10, m_as_list_341, line(hash_code_and_equals_safe_set_1, 146)).
argument(p_mocks_369, 1, hash_code_and_equals_safe_set_1_expr10).
ref(t_arrays_44, hash_code_and_equals_safe_set_1_expr10, line(hash_code_and_equals_safe_set_1, 146)).
param(p_objects_370, 1, m_of_340).
assign(v_hash_code_and_equals_safe_set_371, hash_code_and_equals_safe_set_1_expr11, line(hash_code_and_equals_safe_set_1, 150)).
method_invoc(hash_code_and_equals_safe_set_1_expr11, m_hash_code_and_equals_safe_set_342, line(hash_code_and_equals_safe_set_1, 150)).
ref(p_objects_370, hash_code_and_equals_safe_set_1_stmt11, line(hash_code_and_equals_safe_set_1, 152)).
return(v_hash_code_and_equals_safe_set_371, m_of_340, line(hash_code_and_equals_safe_set_1, 156)).

%default_mockito_configuration_1 - org.mockito.configuration.DefaultMockitoConfiguration
return(default_mockito_configuration_1_expr1, m_get_annotation_engine_5, line(default_mockito_configuration_1, 39)).
method_invoc(default_mockito_configuration_1_expr1, m_injecting_annotation_engine_22, line(default_mockito_configuration_1, 39)).

%captor_annotation_processor_1 - org.mockito.internal.configuration.CaptorAnnotationProcessor
param(p_annotation_127, 1, m_process_111).
param(p_field_128, 2, m_process_111).

%plugin_registry_1 - org.mockito.internal.configuration.plugins.PluginRegistry
assign(f_plugin_switch_291, plugin_registry_1_expr1, line(plugin_registry_1, 9)).
method_invoc(plugin_registry_1_expr1, m_load_plugin_221, line(plugin_registry_1, 10)).
argument(plugin_registry_1_expr2, 1, plugin_registry_1_expr1).
argument(plugin_registry_1_expr3, 2, plugin_registry_1_expr1).
ref(plugin_registry_1_expr4, plugin_registry_1_expr1, line(plugin_registry_1, 10)).
method_invoc(plugin_registry_1_expr4, m_plugin_loader_220, line(plugin_registry_1, 10)).
argument(plugin_registry_1_expr5, 1, plugin_registry_1_expr4).
method_invoc(plugin_registry_1_expr5, m_default_plugin_switch_229, line(plugin_registry_1, 10)).
method_invoc(plugin_registry_1_expr3, m_get_name_227, line(plugin_registry_1, 10)).
ref(plugin_registry_1_expr6, plugin_registry_1_expr3, line(plugin_registry_1, 10)).
assign(f_mock_maker_292, plugin_registry_1_expr7, line(plugin_registry_1, 12)).
method_invoc(plugin_registry_1_expr7, m_load_plugin_221, line(plugin_registry_1, 13)).
argument(plugin_registry_1_expr8, 1, plugin_registry_1_expr7).
argument(plugin_registry_1_literal1, 2, plugin_registry_1_expr7).
ref(plugin_registry_1_expr9, plugin_registry_1_expr7, line(plugin_registry_1, 13)).
method_invoc(plugin_registry_1_expr9, m_plugin_loader_220, line(plugin_registry_1, 13)).
argument(f_plugin_switch_291, 1, plugin_registry_1_expr9).
assign(f_stack_trace_cleaner_provider_293, plugin_registry_1_expr10, line(plugin_registry_1, 15)).
method_invoc(plugin_registry_1_expr10, m_load_plugin_221, line(plugin_registry_1, 16)).
argument(plugin_registry_1_expr11, 1, plugin_registry_1_expr10).
argument(plugin_registry_1_literal2, 2, plugin_registry_1_expr10).
ref(plugin_registry_1_expr12, plugin_registry_1_expr10, line(plugin_registry_1, 16)).
method_invoc(plugin_registry_1_expr12, m_plugin_loader_220, line(plugin_registry_1, 16)).
argument(f_plugin_switch_291, 1, plugin_registry_1_expr12).
return(f_mock_maker_292, m_get_mock_maker_231, line(plugin_registry_1, 33)).

%plugin_finder_1 - org.mockito.internal.configuration.plugins.PluginFinder
param(p_plugin_switch_278, 1, m_plugin_finder_218).
assign(f_plugin_switch_279, p_plugin_switch_278, line(plugin_finder_1, 15)).
param(p_resources_280, 1, m_find_plugin_class_219).
ref(p_resources_280, plugin_finder_1_stmt2, line(plugin_finder_1, 19)).
return(plugin_finder_1_literal1, m_find_plugin_class_219, line(plugin_finder_1, 39)).

%class_path_loader_1 - org.mockito.internal.configuration.ClassPathLoader
assign(v_config_class_129, class_path_loader_1_expr2, line(class_path_loader_1, 68)).
assign(class_path_loader_1_expr2, class_path_loader_1_expr3, line(class_path_loader_1, 68)).
method_invoc(class_path_loader_1_expr3, m_for_name_113, line(class_path_loader_1, 68)).
throw(class_path_loader_1_expr3, class_not_found_exception, line(class_path_loader_1, 68)).
argument(f_mockito_configuration_class_name_130, 1, class_path_loader_1_expr3).
ref(t_class_7, class_path_loader_1_expr3, line(class_path_loader_1, 68)).
return(class_path_loader_1_expr4, m_load_configuration_112, line(class_path_loader_1, 75)).
assign(class_path_loader_1_expr4, class_path_loader_1_expr5, line(class_path_loader_1, 75)).
method_invoc(class_path_loader_1_expr5, m_new_instance_114, line(class_path_loader_1, 75)).
throw(class_path_loader_1_expr5, instantiation_exception, line(class_path_loader_1, 75)).
throw(class_path_loader_1_expr5, illegal_access_exception, line(class_path_loader_1, 75)).
ref(v_config_class_129, class_path_loader_1_expr5, line(class_path_loader_1, 75)).

%object_methods_guru_1 - org.mockito.internal.util.ObjectMethodsGuru
param(p_method_344, 1, m_is_to_string_306).
param(p_method_345, 1, m_is_to_string_307).
param(p_method_346, 1, m_is_equals_method_308).
param(p_method_347, 1, m_is_hash_code_method_309).
param(p_method_348, 1, m_is_compare_to_method_310).

%plugin_loader_1 - org.mockito.internal.configuration.plugins.PluginLoader
param(p_plugin_switch_282, 1, m_plugin_loader_220).
assign(f_plugin_switch_283, p_plugin_switch_282, line(plugin_loader_1, 17)).
param(p_plugin_type_284, 1, m_load_plugin_221).
param(p_default_plugin_class_name_285, 2, m_load_plugin_221).
assign(v_plugin_286, plugin_loader_1_expr4, line(plugin_loader_1, 24)).
method_invoc(plugin_loader_1_expr4, m_load_impl_222, line(plugin_loader_1, 24)).
argument(p_plugin_type_284, 1, plugin_loader_1_expr4).
return(plugin_loader_1_expr6, m_load_plugin_221, line(plugin_loader_1, 33)).
method_invoc(plugin_loader_1_expr6, m_cast_223, line(plugin_loader_1, 33)).
argument(plugin_loader_1_expr7, 1, plugin_loader_1_expr6).
ref(p_plugin_type_284, plugin_loader_1_expr6, line(plugin_loader_1, 33)).
method_invoc(plugin_loader_1_expr7, m_new_instance_114, line(plugin_loader_1, 33)).
throw(plugin_loader_1_expr7, instantiation_exception, line(plugin_loader_1, 33)).
throw(plugin_loader_1_expr7, illegal_access_exception, line(plugin_loader_1, 33)).
ref(plugin_loader_1_expr8, plugin_loader_1_expr7, line(plugin_loader_1, 33)).
method_invoc(plugin_loader_1_expr8, m_for_name_113, line(plugin_loader_1, 33)).
throw(plugin_loader_1_expr8, class_not_found_exception, line(plugin_loader_1, 33)).
argument(p_default_plugin_class_name_285, 1, plugin_loader_1_expr8).
ref(t_class_7, plugin_loader_1_expr8, line(plugin_loader_1, 33)).
param(p_service_287, 1, m_load_impl_222).
assign(v_loader_288, plugin_loader_1_expr9, line(plugin_loader_1, 46)).
method_invoc(plugin_loader_1_expr9, m_get_context_class_loader_224, line(plugin_loader_1, 46)).
ref(plugin_loader_1_expr10, plugin_loader_1_expr9, line(plugin_loader_1, 46)).
method_invoc(plugin_loader_1_expr10, m_current_thread_225, line(plugin_loader_1, 46)).
ref(t_thread_19, plugin_loader_1_expr10, line(plugin_loader_1, 46)).
assign(v_resources_289, plugin_loader_1_expr13, line(plugin_loader_1, 52)).
method_invoc(plugin_loader_1_expr13, m_get_resources_226, line(plugin_loader_1, 52)).
throw(plugin_loader_1_expr13, ioexception, line(plugin_loader_1, 52)).
argument(plugin_loader_1_expr14, 1, plugin_loader_1_expr13).
ref(v_loader_288, plugin_loader_1_expr13, line(plugin_loader_1, 52)).
method_invoc(plugin_loader_1_expr15, m_get_name_227, line(plugin_loader_1, 52)).
ref(p_service_287, plugin_loader_1_expr15, line(plugin_loader_1, 52)).
assign(v_found_plugin_class_290, plugin_loader_1_expr16, line(plugin_loader_1, 58)).
method_invoc(plugin_loader_1_expr16, m_find_plugin_class_219, line(plugin_loader_1, 58)).
argument(plugin_loader_1_expr17, 1, plugin_loader_1_expr16).
ref(plugin_loader_1_expr18, plugin_loader_1_expr16, line(plugin_loader_1, 58)).
method_invoc(plugin_loader_1_expr18, m_plugin_finder_218, line(plugin_loader_1, 58)).
argument(f_plugin_switch_283, 1, plugin_loader_1_expr18).
method_invoc(plugin_loader_1_expr17, m_to_iterable_228, line(plugin_loader_1, 58)).
argument(v_resources_289, 1, plugin_loader_1_expr17).
ref(t_iterables_20, plugin_loader_1_expr17, line(plugin_loader_1, 58)).
return(plugin_loader_1_literal5, m_load_impl_222, line(plugin_loader_1, 64)).

%default_injection_engine_1 - org.mockito.internal.configuration.DefaultInjectionEngine
param(p_needing_injection_147, 1, m_inject_mocks_on_fields_129).
param(p_mocks_148, 2, m_inject_mocks_on_fields_129).
param(p_test_class_instance_149, 3, m_inject_mocks_on_fields_129).
method_invoc(default_injection_engine_1_expr1, m_apply_130, line(default_injection_engine_1, 20)).
ref(default_injection_engine_1_expr2, default_injection_engine_1_expr1, line(default_injection_engine_1, 20)).
method_invoc(default_injection_engine_1_expr2, m_handle_spy_annotation_131, line(default_injection_engine_1, 20)).
ref(default_injection_engine_1_expr3, default_injection_engine_1_expr2, line(default_injection_engine_1, 20)).
method_invoc(default_injection_engine_1_expr3, m_try_property_or_field_injection_132, line(default_injection_engine_1, 20)).
ref(default_injection_engine_1_expr4, default_injection_engine_1_expr3, line(default_injection_engine_1, 20)).
method_invoc(default_injection_engine_1_expr4, m_try_constructor_injection_133, line(default_injection_engine_1, 20)).
ref(default_injection_engine_1_expr5, default_injection_engine_1_expr4, line(default_injection_engine_1, 20)).
method_invoc(default_injection_engine_1_expr5, m_with_mocks_134, line(default_injection_engine_1, 20)).
argument(p_mocks_148, 1, default_injection_engine_1_expr5).
ref(default_injection_engine_1_expr6, default_injection_engine_1_expr5, line(default_injection_engine_1, 20)).
method_invoc(default_injection_engine_1_expr6, m_on_fields_135, line(default_injection_engine_1, 20)).
argument(p_needing_injection_147, 1, default_injection_engine_1_expr6).
argument(p_test_class_instance_149, 2, default_injection_engine_1_expr6).
ref(t_mock_injection_9, default_injection_engine_1_expr6, line(default_injection_engine_1, 20)).

%mock_injection_1 - org.mockito.internal.configuration.injection.MockInjection
param(p_field_193, 1, m_on_field_174).
param(p_of_instance_194, 2, m_on_field_174).
param(p_fields_195, 1, m_on_fields_135).
param(p_of_instance_196, 2, m_on_fields_135).
return(mock_injection_1_expr1, m_on_fields_135, line(mock_injection_1, 48)).
method_invoc(mock_injection_1_expr1, m_ongoing_mock_injection_175, line(mock_injection_1, 48)).
argument(p_fields_195, 1, mock_injection_1_expr1).
argument(p_of_instance_196, 2, mock_injection_1_expr1).
assign(f_fields_197, mock_injection_1_expr2, line(mock_injection_1, 55)).
method_invoc(mock_injection_1_expr2, m_hash_set_153, line(mock_injection_1, 55)).
assign(f_mocks_198, mock_injection_1_expr3, line(mock_injection_1, 56)).
method_invoc(mock_injection_1_expr3, m_new_mock_safe_hash_set_154, line(mock_injection_1, 56)).
assign(f_injection_strategies_199, mock_injection_1_expr4, line(mock_injection_1, 58)).
method_invoc(mock_injection_1_expr4, m_nop_176, line(mock_injection_1, 58)).
ref(t_mock_injection_strategy_14, mock_injection_1_expr4, line(mock_injection_1, 58)).
assign(f_post_injection_strategies_200, mock_injection_1_expr5, line(mock_injection_1, 59)).
method_invoc(mock_injection_1_expr5, m_nop_176, line(mock_injection_1, 59)).
ref(t_mock_injection_strategy_14, mock_injection_1_expr5, line(mock_injection_1, 59)).
param(p_field_201, 1, m_ongoing_mock_injection_177).
param(p_field_owner_202, 2, m_ongoing_mock_injection_177).
param(p_fields_203, 1, m_ongoing_mock_injection_175).
param(p_field_owner_204, 2, m_ongoing_mock_injection_175).
assign(f_field_owner_205, mock_injection_1_expr8, line(mock_injection_1, 66)).
method_invoc(mock_injection_1_expr8, m_check_not_null_178, line(mock_injection_1, 66)).
argument(p_field_owner_204, 1, mock_injection_1_expr8).
argument(mock_injection_1_literal1, 2, mock_injection_1_expr8).
method_invoc(mock_injection_1_expr10, m_add_all_179, line(mock_injection_1, 67)).
argument(mock_injection_1_expr11, 1, mock_injection_1_expr10).
ref(f_fields_197, mock_injection_1_expr10, line(mock_injection_1, 67)).
method_invoc(mock_injection_1_expr11, m_check_items_not_null_180, line(mock_injection_1, 67)).
argument(p_fields_203, 1, mock_injection_1_expr11).
argument(mock_injection_1_literal2, 2, mock_injection_1_expr11).
param(p_mocks_206, 1, m_with_mocks_134).
method_invoc(mock_injection_1_expr14, m_add_all_179, line(mock_injection_1, 71)).
argument(mock_injection_1_expr15, 1, mock_injection_1_expr14).
ref(f_mocks_198, mock_injection_1_expr14, line(mock_injection_1, 71)).
method_invoc(mock_injection_1_expr15, m_check_not_null_178, line(mock_injection_1, 71)).
argument(p_mocks_206, 1, mock_injection_1_expr15).
argument(mock_injection_1_literal3, 2, mock_injection_1_expr15).
return(mock_injection_1_expr18, m_with_mocks_134, line(mock_injection_1, 72)).
method_invoc(mock_injection_1_expr19, m_then_try_181, line(mock_injection_1, 76)).
argument(mock_injection_1_expr20, 1, mock_injection_1_expr19).
ref(f_injection_strategies_199, mock_injection_1_expr19, line(mock_injection_1, 76)).
method_invoc(mock_injection_1_expr20, m_constructor_injection_168, line(mock_injection_1, 76)).
return(mock_injection_1_expr21, m_try_constructor_injection_133, line(mock_injection_1, 77)).
method_invoc(mock_injection_1_expr22, m_then_try_181, line(mock_injection_1, 81)).
argument(mock_injection_1_expr23, 1, mock_injection_1_expr22).
ref(f_injection_strategies_199, mock_injection_1_expr22, line(mock_injection_1, 81)).
method_invoc(mock_injection_1_expr23, m_property_and_setter_injection_182, line(mock_injection_1, 81)).
return(mock_injection_1_expr24, m_try_property_or_field_injection_132, line(mock_injection_1, 82)).
method_invoc(mock_injection_1_expr25, m_then_try_181, line(mock_injection_1, 86)).
argument(mock_injection_1_expr26, 1, mock_injection_1_expr25).
ref(f_post_injection_strategies_200, mock_injection_1_expr25, line(mock_injection_1, 86)).
method_invoc(mock_injection_1_expr26, m_spy_on_injected_fields_handler_183, line(mock_injection_1, 86)).
return(mock_injection_1_expr27, m_handle_spy_annotation_131, line(mock_injection_1, 87)).
ref(f_fields_197, mock_injection_1_stmt12, line(mock_injection_1, 91)).

%mockito_annotations_1 - org.mockito.MockitoAnnotations
param(p_test_class_1, 1, m_init_mocks_1).
assign(v_annotation_engine_2, mockito_annotations_1_expr2, line(mockito_annotations_1, 94)).
method_invoc(mockito_annotations_1_expr2, m_get_annotation_engine_2, line(mockito_annotations_1, 94)).
ref(mockito_annotations_1_expr3, mockito_annotations_1_expr2, line(mockito_annotations_1, 94)).
method_invoc(mockito_annotations_1_expr3, m_global_configuration_3, line(mockito_annotations_1, 94)).
assign(v_clazz_3, mockito_annotations_1_expr4, line(mockito_annotations_1, 95)).
method_invoc(mockito_annotations_1_expr4, m_get_class_4, line(mockito_annotations_1, 95)).
ref(p_test_class_1, mockito_annotations_1_expr4, line(mockito_annotations_1, 95)).
method_invoc(mockito_annotations_1_expr6, m_get_class_4, line(mockito_annotations_1, 98)).
ref(v_annotation_engine_2, mockito_annotations_1_expr6, line(mockito_annotations_1, 98)).
method_invoc(mockito_annotations_1_expr7, m_get_class_4, line(mockito_annotations_1, 98)).
ref(mockito_annotations_1_expr8, mockito_annotations_1_expr7, line(mockito_annotations_1, 98)).
method_invoc(mockito_annotations_1_expr8, m_get_annotation_engine_5, line(mockito_annotations_1, 98)).
ref(mockito_annotations_1_expr9, mockito_annotations_1_expr8, line(mockito_annotations_1, 98)).
method_invoc(mockito_annotations_1_expr9, m_default_mockito_configuration_6, line(mockito_annotations_1, 98)).
method_invoc(mockito_annotations_1_expr12, m_scan_deprecated_way_7, line(mockito_annotations_1, 102)).
argument(v_annotation_engine_2, 1, mockito_annotations_1_expr12).
argument(p_test_class_1, 2, mockito_annotations_1_expr12).
argument(v_clazz_3, 3, mockito_annotations_1_expr12).
assign(v_clazz_3, mockito_annotations_1_expr14, line(mockito_annotations_1, 103)).
method_invoc(mockito_annotations_1_expr14, m_get_superclass_8, line(mockito_annotations_1, 103)).
ref(v_clazz_3, mockito_annotations_1_expr14, line(mockito_annotations_1, 103)).
method_invoc(mockito_annotations_1_expr15, m_process_9, line(mockito_annotations_1, 108)).
argument(mockito_annotations_1_expr16, 1, mockito_annotations_1_expr15).
argument(p_test_class_1, 2, mockito_annotations_1_expr15).
ref(v_annotation_engine_2, mockito_annotations_1_expr15, line(mockito_annotations_1, 108)).
method_invoc(mockito_annotations_1_expr16, m_get_class_4, line(mockito_annotations_1, 108)).
ref(p_test_class_1, mockito_annotations_1_expr16, line(mockito_annotations_1, 108)).
param(p_annotation_engine_4, 1, m_scan_deprecated_way_7).
param(p_test_class_5, 2, m_scan_deprecated_way_7).
param(p_clazz_6, 3, m_scan_deprecated_way_7).
assign(v_fields_7, mockito_annotations_1_expr17, line(mockito_annotations_1, 112)).
method_invoc(mockito_annotations_1_expr17, m_get_declared_fields_10, line(mockito_annotations_1, 112)).
throw(mockito_annotations_1_expr17, security_exception, line(mockito_annotations_1, 112)).
ref(p_clazz_6, mockito_annotations_1_expr17, line(mockito_annotations_1, 112)).
ref(v_fields_7, mockito_annotations_1_stmt10, line(mockito_annotations_1, 114)).
method_invoc(mockito_annotations_1_expr18, m_process_annotation_deprecated_way_11, line(mockito_annotations_1, 115)).
argument(p_annotation_engine_4, 1, mockito_annotations_1_expr18).
argument(p_test_class_5, 2, mockito_annotations_1_expr18).
argument(v_field_8, 3, mockito_annotations_1_expr18).
param(p_annotation_engine_9, 1, m_process_annotation_deprecated_way_11).
param(p_test_class_10, 2, m_process_annotation_deprecated_way_11).
param(p_field_11, 3, m_process_annotation_deprecated_way_11).
assign(v_already_assigned_12, mockito_annotations_1_literal2, line(mockito_annotations_1, 121)).
ref(mockito_annotations_1_expr19, mockito_annotations_1_stmt13, line(mockito_annotations_1, 122)).
method_invoc(mockito_annotations_1_expr19, m_get_annotations_12, line(mockito_annotations_1, 122)).
ref(p_field_11, mockito_annotations_1_expr19, line(mockito_annotations_1, 122)).
param(p_field_14, 1, m_throw_if_already_assigned_13).
param(p_already_assigned_15, 2, m_throw_if_already_assigned_13).

%constructor_injection_1 - org.mockito.internal.configuration.injection.ConstructorInjection
param(p_arg_resolver_186, 1, m_constructor_injection_169).
param(p_field_187, 1, m_process_injection_170).
param(p_field_owner_188, 2, m_process_injection_170).
param(p_mock_candidates_189, 3, m_process_injection_170).
param(p_objects_190, 1, m_simple_argument_resolver_171).
param(p_arg_types_191, 1, m_resolve_type_instances_172).
param(p_arg_type_192, 1, m_object_that_is_assignable_from_173).

%spy_annotation_engine_1 - org.mockito.internal.configuration.SpyAnnotationEngine
param(p_annotation_173, 1, m_create_mock_for_162).
param(p_field_174, 2, m_create_mock_for_162).
param(p_context_175, 1, m_process_163).
param(p_test_instance_176, 2, m_process_163).
assign(v_fields_177, spy_annotation_engine_1_expr1, line(spy_annotation_engine_1, 48)).
method_invoc(spy_annotation_engine_1_expr1, m_get_declared_fields_10, line(spy_annotation_engine_1, 48)).
throw(spy_annotation_engine_1_expr1, security_exception, line(spy_annotation_engine_1, 48)).
ref(p_context_175, spy_annotation_engine_1_expr1, line(spy_annotation_engine_1, 48)).
ref(v_fields_177, spy_annotation_engine_1_stmt2, line(spy_annotation_engine_1, 49)).
method_invoc(spy_annotation_engine_1_expr3, m_is_annotation_present_164, line(spy_annotation_engine_1, 50)).
argument(spy_annotation_engine_1_expr4, 1, spy_annotation_engine_1_expr3).
ref(v_field_178, spy_annotation_engine_1_expr3, line(spy_annotation_engine_1, 50)).
method_invoc(spy_annotation_engine_1_expr6, m_is_annotation_present_164, line(spy_annotation_engine_1, 50)).
argument(spy_annotation_engine_1_expr7, 1, spy_annotation_engine_1_expr6).
ref(v_field_178, spy_annotation_engine_1_expr6, line(spy_annotation_engine_1, 50)).
param(p_test_instance_179, 1, m_assert_not_interface_165).
param(p_type_180, 2, m_assert_not_interface_165).
param(p_test_instance_181, 1, m_new_spy_instance_166).
param(p_field_182, 2, m_new_spy_instance_166).
throw(m_new_spy_instance_166, instantiation_exception).
throw(m_new_spy_instance_166, illegal_access_exception).
throw(m_new_spy_instance_166, invocation_target_exception).
param(p_annotation_183, 1, m_assert_no_incompatible_annotations_167).
param(p_field_184, 2, m_assert_no_incompatible_annotations_167).
param(p_undesired_annotations_185, 3, m_assert_no_incompatible_annotations_167).

%mock_scanner_1 - org.mockito.internal.configuration.injection.scanner.MockScanner
assign(f_mock_util_263, mock_scanner_1_expr1, line(mock_scanner_1, 22)).
method_invoc(mock_scanner_1_expr1, m_mock_util_203, line(mock_scanner_1, 22)).
param(p_instance_264, 1, m_mock_scanner_158).
param(p_clazz_265, 2, m_mock_scanner_158).
assign(f_instance_266, p_instance_264, line(mock_scanner_1, 33)).
assign(f_clazz_267, p_clazz_265, line(mock_scanner_1, 34)).
param(p_mocks_268, 1, m_add_prepared_mocks_157).
method_invoc(mock_scanner_1_expr8, m_add_all_179, line(mock_scanner_1, 47)).
argument(mock_scanner_1_expr9, 1, mock_scanner_1_expr8).
ref(p_mocks_268, mock_scanner_1_expr8, line(mock_scanner_1, 47)).
method_invoc(mock_scanner_1_expr9, m_scan_209, line(mock_scanner_1, 47)).
assign(v_mocks_269, mock_scanner_1_expr10, line(mock_scanner_1, 56)).
method_invoc(mock_scanner_1_expr10, m_new_mock_safe_hash_set_154, line(mock_scanner_1, 56)).
ref(mock_scanner_1_expr11, mock_scanner_1_stmt5, line(mock_scanner_1, 57)).
method_invoc(mock_scanner_1_expr11, m_get_declared_fields_10, line(mock_scanner_1, 57)).
throw(mock_scanner_1_expr11, security_exception, line(mock_scanner_1, 57)).
ref(f_clazz_267, mock_scanner_1_expr11, line(mock_scanner_1, 57)).
assign(v_field_reader_271, mock_scanner_1_expr12, line(mock_scanner_1, 59)).
method_invoc(mock_scanner_1_expr12, m_field_reader_210, line(mock_scanner_1, 59)).
argument(f_instance_266, 1, mock_scanner_1_expr12).
argument(v_field_270, 2, mock_scanner_1_expr12).
assign(v_mock_instance_272, mock_scanner_1_expr13, line(mock_scanner_1, 61)).
method_invoc(mock_scanner_1_expr13, m_prepared_mock_211, line(mock_scanner_1, 61)).
argument(mock_scanner_1_expr14, 1, mock_scanner_1_expr13).
argument(v_field_270, 2, mock_scanner_1_expr13).
method_invoc(mock_scanner_1_expr14, m_read_212, line(mock_scanner_1, 61)).
ref(v_field_reader_271, mock_scanner_1_expr14, line(mock_scanner_1, 61)).
return(v_mocks_269, m_scan_209, line(mock_scanner_1, 66)).
param(p_instance_273, 1, m_prepared_mock_211).
param(p_field_274, 2, m_prepared_mock_211).
method_invoc(mock_scanner_1_expr16, m_is_annotated_by_mock_or_spy_213, line(mock_scanner_1, 70)).
argument(p_field_274, 1, mock_scanner_1_expr16).
method_invoc(mock_scanner_1_expr17, m_is_mock_or_spy_214, line(mock_scanner_1, 72)).
argument(p_instance_273, 1, mock_scanner_1_expr17).
return(mock_scanner_1_literal2, m_prepared_mock_211, line(mock_scanner_1, 76)).
param(p_field_275, 1, m_is_annotated_by_mock_or_spy_213).
return(mock_scanner_1_expr18, m_is_annotated_by_mock_or_spy_213, line(mock_scanner_1, 80)).
method_invoc(mock_scanner_1_expr21, m_get_annotation_207, line(mock_scanner_1, 80)).
argument(mock_scanner_1_expr22, 1, mock_scanner_1_expr21).
ref(p_field_275, mock_scanner_1_expr21, line(mock_scanner_1, 80)).
method_invoc(mock_scanner_1_expr24, m_get_annotation_207, line(mock_scanner_1, 81)).
argument(mock_scanner_1_expr25, 1, mock_scanner_1_expr24).
ref(p_field_275, mock_scanner_1_expr24, line(mock_scanner_1, 81)).
method_invoc(mock_scanner_1_expr27, m_get_annotation_207, line(mock_scanner_1, 82)).
argument(mock_scanner_1_expr28, 1, mock_scanner_1_expr27).
ref(p_field_275, mock_scanner_1_expr27, line(mock_scanner_1, 82)).
param(p_instance_276, 1, m_is_mock_or_spy_214).
return(mock_scanner_1_expr29, m_is_mock_or_spy_214, line(mock_scanner_1, 86)).
method_invoc(mock_scanner_1_expr30, m_is_mock_215, line(mock_scanner_1, 86)).
argument(p_instance_276, 1, mock_scanner_1_expr30).
ref(f_mock_util_263, mock_scanner_1_expr30, line(mock_scanner_1, 86)).
method_invoc(mock_scanner_1_expr31, m_is_spy_216, line(mock_scanner_1, 87)).
argument(p_instance_276, 1, mock_scanner_1_expr31).
ref(f_mock_util_263, mock_scanner_1_expr31, line(mock_scanner_1, 87)).

%returns_empty_values_1 - org.mockito.internal.stubbing.defaultanswers.ReturnsEmptyValues
assign(f_methods_guru_322, returns_empty_values_1_expr1, line(returns_empty_values_1, 56)).
method_invoc(returns_empty_values_1_expr1, m_object_methods_guru_283, line(returns_empty_values_1, 56)).
assign(f_mock_util_323, returns_empty_values_1_expr2, line(returns_empty_values_1, 57)).
method_invoc(returns_empty_values_1_expr2, m_mock_util_203, line(returns_empty_values_1, 57)).
param(p_invocation_324, 1, m_answer_284).
param(p_type_325, 1, m_return_value_for_285).
method_invoc(returns_empty_values_1_expr3, m_is_primitive_or_wrapper_286, line(returns_empty_values_1, 83)).
argument(p_type_325, 1, returns_empty_values_1_expr3).
ref(t_primitives_28, returns_empty_values_1_expr3, line(returns_empty_values_1, 83)).
return(returns_empty_values_1_literal1, m_return_value_for_285, line(returns_empty_values_1, 117)).

%reporter_1 - org.mockito.exceptions.Reporter
param(p_t_27, 1, m_checked_exception_invalid_35).
param(p_location_28, 1, m_unfinished_stubbing_37).
param(p_location_29, 1, m_unfinished_verification_exception_40).
param(p_type_30, 1, m_not_amock_passed_to_verify_41).
param(p_expected_matchers_count_31, 1, m_invalid_use_of_matchers_52).
param(p_recorded_matchers_32, 2, m_invalid_use_of_matchers_52).
param(p_additional_matcher_name_33, 1, m_incorrect_use_of_additional_matchers_53).
param(p_expected_sub_matchers_count_34, 2, m_incorrect_use_of_additional_matchers_53).
param(p_matcher_stack_35, 3, m_incorrect_use_of_additional_matchers_53).
param(p_additional_matcher_name_36, 1, m_report_no_sub_matchers_found_55).
param(p_matchers_37, 1, m_locations_of_56).
param(p_wanted_38, 1, m_arguments_are_different_57).
param(p_actual_39, 2, m_arguments_are_different_57).
param(p_actual_location_40, 3, m_arguments_are_different_57).
param(p_wanted_41, 1, m_wanted_but_not_invoked_58).
param(p_wanted_42, 1, m_wanted_but_not_invoked_59).
param(p_invocations_43, 2, m_wanted_but_not_invoked_59).
param(p_wanted_44, 1, m_create_wanted_but_not_invoked_message_60).
param(p_wanted_45, 1, m_wanted_but_not_invoked_in_order_61).
param(p_previous_46, 2, m_wanted_but_not_invoked_in_order_61).
param(p_wanted_count_47, 1, m_too_many_actual_invocations_62).
param(p_actual_count_48, 2, m_too_many_actual_invocations_62).
param(p_wanted_49, 3, m_too_many_actual_invocations_62).
param(p_first_undesired_50, 4, m_too_many_actual_invocations_62).
param(p_wanted_count_51, 1, m_create_too_many_invocations_message_63).
param(p_actual_count_52, 2, m_create_too_many_invocations_message_63).
param(p_wanted_53, 3, m_create_too_many_invocations_message_63).
param(p_first_undesired_54, 4, m_create_too_many_invocations_message_63).
param(p_wanted_55, 1, m_never_wanted_but_invoked_64).
param(p_first_undesired_56, 2, m_never_wanted_but_invoked_64).
param(p_wanted_count_57, 1, m_too_many_actual_invocations_in_order_65).
param(p_actual_count_58, 2, m_too_many_actual_invocations_in_order_65).
param(p_wanted_59, 3, m_too_many_actual_invocations_in_order_65).
param(p_first_undesired_60, 4, m_too_many_actual_invocations_in_order_65).
param(p_discrepancy_61, 1, m_create_too_little_invocations_message_66).
param(p_wanted_62, 2, m_create_too_little_invocations_message_66).
param(p_last_actual_invocation_63, 3, m_create_too_little_invocations_message_66).
param(p_discrepancy_64, 1, m_too_little_actual_invocations_67).
param(p_wanted_65, 2, m_too_little_actual_invocations_67).
param(p_last_actual_location_66, 3, m_too_little_actual_invocations_67).
param(p_discrepancy_67, 1, m_too_little_actual_invocations_in_order_68).
param(p_wanted_68, 2, m_too_little_actual_invocations_in_order_68).
param(p_last_actual_location_69, 3, m_too_little_actual_invocations_in_order_68).
param(p_undesired_70, 1, m_no_more_interactions_wanted_69).
param(p_invocations_71, 2, m_no_more_interactions_wanted_69).
param(p_undesired_72, 1, m_no_more_interactions_wanted_in_order_70).
param(p_clazz_73, 1, m_cannot_mock_final_class_71).
param(p_method_name_74, 1, m_cannot_stub_void_method_with_areturn_value_72).
param(p_expected_type_75, 1, m_wrong_type_of_return_value_74).
param(p_actual_type_76, 2, m_wrong_type_of_return_value_74).
param(p_method_name_77, 3, m_wrong_type_of_return_value_74).
param(p_mock_78, 1, m_wrong_type_returned_by_default_answer_75).
param(p_expected_type_79, 2, m_wrong_type_returned_by_default_answer_75).
param(p_actual_type_80, 3, m_wrong_type_returned_by_default_answer_75).
param(p_method_name_81, 4, m_wrong_type_returned_by_default_answer_75).
param(p_max_number_of_invocations_82, 1, m_wanted_at_most_x_76).
param(p_found_size_83, 2, m_wanted_at_most_x_76).
param(p_last_matchers_84, 1, m_misplaced_argument_matcher_77).
param(p_invocation_85, 1, m_smart_null_pointer_exception_78).
param(p_location_86, 2, m_smart_null_pointer_exception_78).
param(p_wrong_type_87, 1, m_extra_interfaces_accepts_only_interfaces_81).
param(p_wrong_type_88, 1, m_extra_interfaces_cannot_contain_mocked_type_82).
param(p_mocked_type_89, 1, m_mocked_type_is_inconsistent_with_spied_instance_type_84).
param(p_spied_instance_90, 2, m_mocked_type_is_inconsistent_with_spied_instance_type_84).
param(p_field_name_91, 1, m_more_than_one_annotation_not_allowed_87).
param(p_undesired_annotation_one_92, 1, m_unsupported_combination_of_annotations_88).
param(p_undesired_annotation_two_93, 2, m_unsupported_combination_of_annotations_88).
param(p_field_name_94, 1, m_cannot_initialize_for_spy_annotation_89).
param(p_details_95, 2, m_cannot_initialize_for_spy_annotation_89).
param(p_field_name_96, 1, m_cannot_initialize_for_inject_mocks_annotation_90).
param(p_details_97, 2, m_cannot_initialize_for_inject_mocks_annotation_90).
param(p_field_98, 1, m_field_initialisation_threw_exception_92).
param(p_details_99, 2, m_field_initialisation_threw_exception_92).
param(p_listener_100, 1, m_invocation_listener_threw_exception_95).
param(p_listener_throwable_101, 2, m_invocation_listener_threw_exception_95).
param(p_field_102, 1, m_cannot_inject_dependency_96).
param(p_matching_mock_103, 2, m_cannot_inject_dependency_96).
param(p_details_104, 3, m_cannot_inject_dependency_96).
param(p_details_105, 1, m_exception_cause_message_if_available_97).
param(p_mocked_type_106, 1, m_mocked_type_is_inconsistent_with_delegated_instance_type_98).
param(p_delegated_instance_107, 2, m_mocked_type_is_inconsistent_with_delegated_instance_type_98).
param(p_invocation_108, 1, m_invalid_argument_position_range_at_invocation_time_101).
param(p_will_return_last_parameter_109, 2, m_invalid_argument_position_range_at_invocation_time_101).
param(p_argument_index_110, 3, m_invalid_argument_position_range_at_invocation_time_101).
param(p_invocation_111, 1, m_possible_argument_types_of_102).
param(p_invocation_112, 1, m_wrong_type_of_argument_to_return_103).
param(p_expected_type_113, 2, m_wrong_type_of_argument_to_return_103).
param(p_actual_type_114, 3, m_wrong_type_of_argument_to_return_103).
param(p_argument_index_115, 4, m_wrong_type_of_argument_to_return_103).
param(p_class_to_mock_116, 1, m_serializable_wont_work_for_objects_that_dont_implement_serializable_105).
param(p_mock_method_117, 1, m_delegated_method_has_wrong_return_type_106).
param(p_delegate_method_118, 2, m_delegated_method_has_wrong_return_type_106).
param(p_mock_119, 3, m_delegated_method_has_wrong_return_type_106).
param(p_delegate_120, 4, m_delegated_method_has_wrong_return_type_106).
param(p_mock_method_121, 1, m_delegated_method_does_not_exist_on_delegate_107).
param(p_mock_122, 2, m_delegated_method_does_not_exist_on_delegate_107).
param(p_delegate_123, 3, m_delegated_method_does_not_exist_on_delegate_107).
param(p_mode_124, 1, m_using_constructor_with_fancy_serializable_108).
param(p_duration_millis_125, 1, m_cannot_create_timer_with_negative_duration_time_109).
param(p_mock_126, 1, m_safely_get_mock_name_110).

%default_plugin_switch_1 - org.mockito.internal.configuration.plugins.DefaultPluginSwitch
param(p_plugin_class_name_277, 1, m_is_enabled_217).

%plugins_1 - org.mockito.internal.configuration.plugins.Plugins
assign(f_registry_294, plugins_1_expr1, line(plugins_1, 11)).
method_invoc(plugins_1_expr1, m_plugin_registry_232, line(plugins_1, 11)).
return(plugins_1_expr2, m_get_mock_maker_234, line(plugins_1, 27)).
method_invoc(plugins_1_expr2, m_get_mock_maker_231, line(plugins_1, 27)).
ref(f_registry_294, plugins_1_expr2, line(plugins_1, 27)).

%accessibility_changer_1 - org.mockito.internal.util.reflection.AccessibilityChanger
assign(f_was_accessible_378, accessibility_changer_1_literal1, line(accessibility_changer_1, 11)).
param(p_accessible_object_379, 1, m_safely_disable_access_348).
param(p_accessible_object_380, 1, m_enable_access_349).
assign(f_was_accessible_378, accessibility_changer_1_expr2, line(accessibility_changer_1, 29)).
method_invoc(accessibility_changer_1_expr2, m_is_accessible_350, line(accessibility_changer_1, 29)).
ref(p_accessible_object_380, accessibility_changer_1_expr2, line(accessibility_changer_1, 29)).
method_invoc(accessibility_changer_1_expr3, m_set_accessible_351, line(accessibility_changer_1, 30)).
argument(accessibility_changer_1_literal2, 1, accessibility_changer_1_expr3).
ref(p_accessible_object_380, accessibility_changer_1_expr3, line(accessibility_changer_1, 30)).

%mock_injection_strategy_1 - org.mockito.internal.configuration.injection.MockInjectionStrategy
return(mock_injection_strategy_1_expr1, m_nop_176, line(mock_injection_strategy_1, 20)).
method_invoc(mock_injection_strategy_1_expr1, m__184, line(mock_injection_strategy_1, 20)).
param(p_field_208, 1, m_process_injection_185).
param(p_field_owner_209, 2, m_process_injection_185).
param(p_mock_candidates_210, 3, m_process_injection_185).
param(p_strategy_211, 1, m_then_try_181).
method_invoc(mock_injection_strategy_1_expr3, m_then_try_181, line(mock_injection_strategy_1, 42)).
argument(p_strategy_211, 1, mock_injection_strategy_1_expr3).
ref(f_next_strategy_212, mock_injection_strategy_1_expr3, line(mock_injection_strategy_1, 42)).
assign(f_next_strategy_212, p_strategy_211, line(mock_injection_strategy_1, 44)).
return(p_strategy_211, m_then_try_181, line(mock_injection_strategy_1, 46)).
param(p_on_field_213, 1, m_process_186).
param(p_field_owned_by_214, 2, m_process_186).
param(p_mock_candidates_215, 3, m_process_186).
param(p_field_216, 1, m_process_injection_187).
param(p_field_owner_217, 2, m_process_injection_187).
param(p_mock_candidates_218, 3, m_process_injection_187).
param(p_field_219, 1, m_relay_process_to_next_strategy_188).
param(p_field_owner_220, 2, m_relay_process_to_next_strategy_188).
param(p_mock_candidates_221, 3, m_relay_process_to_next_strategy_188).

%global_configuration_1 - org.mockito.internal.configuration.GlobalConfiguration
assign(f_global_configuration_150, global_configuration_1_expr1, line(global_configuration_1, 22)).
method_invoc(global_configuration_1_expr1, m_thread_local_136, line(global_configuration_1, 22)).
return(global_configuration_1_expr2, m_get_it_116, line(global_configuration_1, 26)).
method_invoc(global_configuration_1_expr2, m_get_137, line(global_configuration_1, 26)).
ref(f_global_configuration_150, global_configuration_1_expr2, line(global_configuration_1, 26)).
method_invoc(global_configuration_1_expr4, m_get_137, line(global_configuration_1, 31)).
ref(f_global_configuration_150, global_configuration_1_expr4, line(global_configuration_1, 31)).
method_invoc(global_configuration_1_expr5, m_set_138, line(global_configuration_1, 32)).
argument(global_configuration_1_expr6, 1, global_configuration_1_expr5).
ref(f_global_configuration_150, global_configuration_1_expr5, line(global_configuration_1, 32)).
method_invoc(global_configuration_1_expr6, m_create_config_139, line(global_configuration_1, 32)).
assign(v_default_configuration_151, global_configuration_1_expr7, line(global_configuration_1, 37)).
method_invoc(global_configuration_1_expr7, m_default_mockito_configuration_6, line(global_configuration_1, 37)).
assign(v_config_152, global_configuration_1_expr8, line(global_configuration_1, 38)).
method_invoc(global_configuration_1_expr8, m_load_configuration_112, line(global_configuration_1, 38)).
ref(global_configuration_1_expr9, global_configuration_1_expr8, line(global_configuration_1, 38)).
method_invoc(global_configuration_1_expr9, m_class_path_loader_140, line(global_configuration_1, 38)).
return(v_config_152, m_create_config_139, line(global_configuration_1, 40)).
method_invoc(global_configuration_1_expr11, m_global_configuration_3, line(global_configuration_1, 47)).
return(global_configuration_1_expr12, m_get_annotation_engine_2, line(global_configuration_1, 55)).
method_invoc(global_configuration_1_expr12, m_get_annotation_engine_143, line(global_configuration_1, 55)).
ref(global_configuration_1_expr13, global_configuration_1_expr12, line(global_configuration_1, 55)).
method_invoc(global_configuration_1_expr13, m_get_137, line(global_configuration_1, 55)).
ref(f_global_configuration_150, global_configuration_1_expr13, line(global_configuration_1, 55)).

%default_annotation_engine_1 - org.mockito.internal.configuration.DefaultAnnotationEngine
assign(f_annotation_processor_map_131, default_annotation_engine_1_expr1, line(default_annotation_engine_1, 30)).
method_invoc(default_annotation_engine_1_expr1, m_hash_map_117, line(default_annotation_engine_1, 30)).
method_invoc(default_annotation_engine_1_expr2, m_register_annotation_processor_119, line(default_annotation_engine_1, 33)).
argument(default_annotation_engine_1_expr3, 1, default_annotation_engine_1_expr2).
argument(default_annotation_engine_1_expr4, 2, default_annotation_engine_1_expr2).
method_invoc(default_annotation_engine_1_expr4, m_mock_annotation_processor_120, line(default_annotation_engine_1, 33)).
method_invoc(default_annotation_engine_1_expr5, m_register_annotation_processor_119, line(default_annotation_engine_1, 34)).
argument(default_annotation_engine_1_expr6, 1, default_annotation_engine_1_expr5).
argument(default_annotation_engine_1_expr7, 2, default_annotation_engine_1_expr5).
method_invoc(default_annotation_engine_1_expr7, m_mockito_annotations_mock_annotation_processor_121, line(default_annotation_engine_1, 34)).
method_invoc(default_annotation_engine_1_expr8, m_register_annotation_processor_119, line(default_annotation_engine_1, 35)).
argument(default_annotation_engine_1_expr9, 1, default_annotation_engine_1_expr8).
argument(default_annotation_engine_1_expr10, 2, default_annotation_engine_1_expr8).
method_invoc(default_annotation_engine_1_expr10, m_captor_annotation_processor_122, line(default_annotation_engine_1, 35)).
param(p_annotation_132, 1, m_create_mock_for_123).
param(p_field_133, 2, m_create_mock_for_123).
param(p_annotation_134, 1, m_for_annotation_124).
param(p_annotation_135, 1, m_process_125).
param(p_field_136, 2, m_process_125).
param(p_annotation_class_137, 1, m_register_annotation_processor_119).
param(p_field_annotation_processor_138, 2, m_register_annotation_processor_119).
method_invoc(default_annotation_engine_1_expr11, m_put_126, line(default_annotation_engine_1, 58)).
argument(p_annotation_class_137, 1, default_annotation_engine_1_expr11).
argument(p_field_annotation_processor_138, 2, default_annotation_engine_1_expr11).
ref(f_annotation_processor_map_131, default_annotation_engine_1_expr11, line(default_annotation_engine_1, 58)).
param(p_clazz_139, 1, m_process_127).
param(p_test_instance_140, 2, m_process_127).
assign(v_fields_141, default_annotation_engine_1_expr12, line(default_annotation_engine_1, 62)).
method_invoc(default_annotation_engine_1_expr12, m_get_declared_fields_10, line(default_annotation_engine_1, 62)).
throw(default_annotation_engine_1_expr12, security_exception, line(default_annotation_engine_1, 62)).
ref(p_clazz_139, default_annotation_engine_1_expr12, line(default_annotation_engine_1, 62)).
ref(v_fields_141, default_annotation_engine_1_stmt6, line(default_annotation_engine_1, 63)).
assign(v_already_assigned_143, default_annotation_engine_1_literal1, line(default_annotation_engine_1, 64)).
ref(default_annotation_engine_1_expr13, default_annotation_engine_1_stmt8, line(default_annotation_engine_1, 65)).
method_invoc(default_annotation_engine_1_expr13, m_get_annotations_12, line(default_annotation_engine_1, 65)).
ref(v_field_142, default_annotation_engine_1_expr13, line(default_annotation_engine_1, 65)).
param(p_field_145, 1, m_throw_if_already_assigned_128).
param(p_already_assigned_146, 2, m_throw_if_already_assigned_128).

%name_based_candidate_filter_1 - org.mockito.internal.configuration.injection.filter.NameBasedCandidateFilter
assign(f_mock_util_244, name_based_candidate_filter_1_expr1, line(name_based_candidate_filter_1, 16)).
method_invoc(name_based_candidate_filter_1_expr1, m_mock_util_203, line(name_based_candidate_filter_1, 16)).
param(p_next_245, 1, m_name_based_candidate_filter_190).
assign(f_next_246, p_next_245, line(name_based_candidate_filter_1, 19)).
param(p_mocks_247, 1, m_filter_candidate_204).
param(p_field_248, 2, m_filter_candidate_204).
param(p_field_instance_249, 3, m_filter_candidate_204).

%state_master_1 - org.mockito.StateMaster
assign(f_mocking_progress_16, state_master_1_expr1, line(state_master_1, 12)).
method_invoc(state_master_1_expr1, m_thread_safe_mocking_progress_14, line(state_master_1, 12)).
method_invoc(state_master_1_expr2, m_reset_16, line(state_master_1, 15)).
ref(f_mocking_progress_16, state_master_1_expr2, line(state_master_1, 15)).
method_invoc(state_master_1_expr3, m_reset_ongoing_stubbing_17, line(state_master_1, 16)).
ref(f_mocking_progress_16, state_master_1_expr3, line(state_master_1, 16)).
method_invoc(state_master_1_expr4, m_validate_state_19, line(state_master_1, 20)).
ref(f_mocking_progress_16, state_master_1_expr4, line(state_master_1, 20)).

%mocking_progress_impl_1 - org.mockito.internal.progress.MockingProgressImpl
assign(f_reporter_304, mocking_progress_impl_1_expr1, line(mocking_progress_impl_1, 21)).
method_invoc(mocking_progress_impl_1_expr1, m_reporter_250, line(mocking_progress_impl_1, 21)).
assign(f_argument_matcher_storage_305, mocking_progress_impl_1_expr2, line(mocking_progress_impl_1, 22)).
method_invoc(mocking_progress_impl_1_expr2, m_argument_matcher_storage_impl_251, line(mocking_progress_impl_1, 22)).
assign(f_stubbing_in_progress_306, mocking_progress_impl_1_literal1, line(mocking_progress_impl_1, 26)).
param(p_i_ongoing_stubbing_307, 1, m_report_ongoing_stubbing_252).
param(p_verify_308, 1, m_verification_started_254).
assign(f_i_ongoing_stubbing_309, mocking_progress_impl_1_literal2, line(mocking_progress_impl_1, 49)).
method_invoc(mocking_progress_impl_1_expr4, m_validate_most_stuff_259, line(mocking_progress_impl_1, 68)).
method_invoc(mocking_progress_impl_1_expr6, m_validate_141, line(mocking_progress_impl_1, 81)).
ref(t_global_configuration_25, mocking_progress_impl_1_expr6, line(mocking_progress_impl_1, 81)).
method_invoc(mocking_progress_impl_1_expr8, m_validate_state_260, line(mocking_progress_impl_1, 89)).
ref(mocking_progress_impl_1_expr9, mocking_progress_impl_1_expr8, line(mocking_progress_impl_1, 89)).
method_invoc(mocking_progress_impl_1_expr9, m_get_argument_matcher_storage_261, line(mocking_progress_impl_1, 89)).
param(p_invocation_311, 1, m_stubbing_completed_262).
assign(f_stubbing_in_progress_306, mocking_progress_impl_1_literal5, line(mocking_progress_impl_1, 103)).
assign(f_verification_mode_310, mocking_progress_impl_1_literal6, line(mocking_progress_impl_1, 104)).
method_invoc(mocking_progress_impl_1_expr12, m_reset_265, line(mocking_progress_impl_1, 105)).
ref(mocking_progress_impl_1_expr13, mocking_progress_impl_1_expr12, line(mocking_progress_impl_1, 105)).
method_invoc(mocking_progress_impl_1_expr13, m_get_argument_matcher_storage_261, line(mocking_progress_impl_1, 105)).
return(f_argument_matcher_storage_305, m_get_argument_matcher_storage_261, line(mocking_progress_impl_1, 109)).
param(p_mock_312, 1, m_mocking_started_266).
param(p_class_to_mock_313, 2, m_mocking_started_266).
param(p_listener_314, 1, m_set_listener_267).

%mock_util_1 - org.mockito.internal.util.MockUtil
assign(f_mock_maker_332, mock_util_1_expr1, line(mock_util_1, 24)).
method_invoc(mock_util_1_expr1, m_get_mock_maker_234, line(mock_util_1, 24)).
ref(t_plugins_31, mock_util_1_expr1, line(mock_util_1, 24)).
param(p_type_333, 1, m_is_type_mockable_296).
param(p_settings_334, 1, m_create_mock_297).
param(p_mock_335, 1, m_reset_mock_298).
param(p_mock_336, 1, m_get_mock_handler_299).
param(p_mock_337, 1, m_is_mock_215).
return(mock_util_1_expr2, m_is_mock_215, line(mock_util_1, 66)).
method_invoc(mock_util_1_expr2, m_is_mockito_mock_300, line(mock_util_1, 66)).
argument(p_mock_337, 1, mock_util_1_expr2).
param(p_mock_338, 1, m_is_spy_216).
return(mock_util_1_expr3, m_is_spy_216, line(mock_util_1, 70)).
method_invoc(mock_util_1_expr4, m_is_mockito_mock_300, line(mock_util_1, 70)).
argument(p_mock_338, 1, mock_util_1_expr4).
method_invoc(mock_util_1_expr6, m_get_default_answer_301, line(mock_util_1, 70)).
ref(mock_util_1_expr7, mock_util_1_expr6, line(mock_util_1, 70)).
method_invoc(mock_util_1_expr7, m_get_mock_settings_302, line(mock_util_1, 70)).
argument(p_mock_338, 1, mock_util_1_expr7).
ref(t_mockito_32, q_calls_real_methods_1, line(mock_util_1, 70)).
param(p_mock_339, 1, m_is_mockito_mock_300).
return(mock_util_1_expr8, m_is_mockito_mock_300, line(mock_util_1, 74)).
method_invoc(mock_util_1_expr9, m_get_handler_303, line(mock_util_1, 74)).
argument(p_mock_339, 1, mock_util_1_expr9).
ref(f_mock_maker_332, mock_util_1_expr9, line(mock_util_1, 74)).
param(p_mock_340, 1, m_get_mock_name_304).
param(p_mock_341, 1, m_maybe_redefine_mock_name_305).
param(p_new_name_342, 2, m_maybe_redefine_mock_name_305).
param(p_mock_343, 1, m_get_mock_settings_302).

%mockito_annotations_mock_annotation_processor_1 - org.mockito.internal.configuration.MockitoAnnotationsMockAnnotationProcessor
param(p_annotation_171, 1, m_process_161).
param(p_field_172, 2, m_process_161).

%inject_mocks_scanner_1 - org.mockito.internal.configuration.injection.scanner.InjectMocksScanner
param(p_clazz_255, 1, m_inject_mocks_scanner_156).
assign(f_clazz_256, p_clazz_255, line(inject_mocks_scanner_1, 30)).
param(p_mock_dependent_fields_257, 1, m_add_to_155).
method_invoc(inject_mocks_scanner_1_expr4, m_add_all_179, line(inject_mocks_scanner_1, 40)).
argument(inject_mocks_scanner_1_expr5, 1, inject_mocks_scanner_1_expr4).
ref(p_mock_dependent_fields_257, inject_mocks_scanner_1_expr4, line(inject_mocks_scanner_1, 40)).
method_invoc(inject_mocks_scanner_1_expr5, m_scan_206, line(inject_mocks_scanner_1, 40)).
assign(v_mock_dependent_fields_258, inject_mocks_scanner_1_expr6, line(inject_mocks_scanner_1, 49)).
method_invoc(inject_mocks_scanner_1_expr6, m_hash_set_153, line(inject_mocks_scanner_1, 49)).
assign(v_fields_259, inject_mocks_scanner_1_expr7, line(inject_mocks_scanner_1, 50)).
method_invoc(inject_mocks_scanner_1_expr7, m_get_declared_fields_10, line(inject_mocks_scanner_1, 50)).
throw(inject_mocks_scanner_1_expr7, security_exception, line(inject_mocks_scanner_1, 50)).
ref(f_clazz_256, inject_mocks_scanner_1_expr7, line(inject_mocks_scanner_1, 50)).
ref(v_fields_259, inject_mocks_scanner_1_stmt5, line(inject_mocks_scanner_1, 51)).
method_invoc(inject_mocks_scanner_1_expr9, m_get_annotation_207, line(inject_mocks_scanner_1, 52)).
argument(inject_mocks_scanner_1_expr10, 1, inject_mocks_scanner_1_expr9).
ref(v_field_260, inject_mocks_scanner_1_expr9, line(inject_mocks_scanner_1, 52)).
return(v_mock_dependent_fields_258, m_scan_206, line(inject_mocks_scanner_1, 58)).
param(p_field_261, 1, m_assert_no_annotations_208).
param(p_annotations_262, 2, m_assert_no_annotations_208).


% Stack Trace Info.
test_failure(failure_1, 'org.mockito.internal.stubbing.defaultanswers.ReturnsEmptyValuesTest', 'should_return_empty_iterable').
trace(trace_1, failure_1, m_should_return_empty__iterable_289, line(returns_empty_values_test_1, 57), failure_1, target).
trace(trace_2, trace_1, 'invoke', line(jdk_internal_reflect_direct_method_handle_accessor, 104), failure_1, non_target).
trace(trace_3, trace_2, 'invoke', line(java_lang_reflect_method, 578), failure_1, non_target).
trace(trace_4, trace_3, 'runReflectiveCall', line(org_junit_runners_model_framework_method_1, 59), failure_1, non_target).
trace(trace_5, trace_4, 'run', line(org_junit_internal_runners_model_reflective_callable, 12), failure_1, non_target).
trace(trace_6, trace_5, 'invokeExplosively', line(org_junit_runners_model_framework_method, 56), failure_1, non_target).
trace(trace_7, trace_6, 'evaluate', line(org_junit_internal_runners_statements_invoke_method, 17), failure_1, non_target).
trace(trace_8, trace_7, 'evaluate', line(org_junit_internal_runners_statements_run_befores, 26), failure_1, non_target).
trace(trace_9, trace_8, 'evaluate', line(org_junit_internal_runners_statements_run_afters, 27), failure_1, non_target).
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



%%% End of Static Facts

%%% Values

val(returns_empty_values_test_1_expr5, null, line(returns_empty_values_test_1, 57)).
val(returns_empty_values_test_1_expr7, null, line(returns_empty_values_test_1, 57)).



%%% End of Facts
%%% Code Facts
:- style_check(-discontiguous).
%%% Classes
class(returns_empty_values_test_1, 'org.mockito.internal.stubbing.defaultanswers.ReturnsEmptyValuesTest').
class(iterables_1, 'org.mockito.internal.util.collections.Iterables').
class(sets_1, 'org.mockito.internal.util.collections.Sets').
class(primitives_1, 'org.mockito.internal.util.Primitives').
class(final_mock_candidate_filter_1, 'org.mockito.internal.configuration.injection.filter.FinalMockCandidateFilter').
class(checks_1, 'org.mockito.internal.util.Checks').
class(test_base_1, 'org.mockitoutil.TestBase').
class(configuration_access_1, 'org.mockito.internal.configuration.ConfigurationAccess').
class(default_stack_trace_cleaner_provider_1, 'org.mockito.internal.exceptions.stacktrace.DefaultStackTraceCleanerProvider').
class(injecting_annotation_engine_1, 'org.mockito.internal.configuration.InjectingAnnotationEngine').
class(field_reader_1, 'org.mockito.internal.util.reflection.FieldReader').
class(property_and_setter_injection_1, 'org.mockito.internal.configuration.injection.PropertyAndSetterInjection').
class(type_based_candidate_filter_1, 'org.mockito.internal.configuration.injection.filter.TypeBasedCandidateFilter').
class(thread_safe_mocking_progress_1, 'org.mockito.internal.progress.ThreadSafeMockingProgress').
class(mock_annotation_processor_1, 'org.mockito.internal.configuration.MockAnnotationProcessor').
class(argument_matcher_storage_impl_1, 'org.mockito.internal.progress.ArgumentMatcherStorageImpl').
class(spy_on_injected_fields_handler_1, 'org.mockito.internal.configuration.injection.SpyOnInjectedFieldsHandler').
class(mockito_configuration_1, 'org.mockito.configuration.MockitoConfiguration').
class(hash_code_and_equals_safe_set_1, 'org.mockito.internal.util.collections.HashCodeAndEqualsSafeSet').
class(default_mockito_configuration_1, 'org.mockito.configuration.DefaultMockitoConfiguration').
class(captor_annotation_processor_1, 'org.mockito.internal.configuration.CaptorAnnotationProcessor').
class(plugin_registry_1, 'org.mockito.internal.configuration.plugins.PluginRegistry').
class(plugin_finder_1, 'org.mockito.internal.configuration.plugins.PluginFinder').
class(class_path_loader_1, 'org.mockito.internal.configuration.ClassPathLoader').
class(object_methods_guru_1, 'org.mockito.internal.util.ObjectMethodsGuru').
class(plugin_loader_1, 'org.mockito.internal.configuration.plugins.PluginLoader').
class(default_injection_engine_1, 'org.mockito.internal.configuration.DefaultInjectionEngine').
class(mock_injection_1, 'org.mockito.internal.configuration.injection.MockInjection').
class(mockito_annotations_1, 'org.mockito.MockitoAnnotations').
class(constructor_injection_1, 'org.mockito.internal.configuration.injection.ConstructorInjection').
class(spy_annotation_engine_1, 'org.mockito.internal.configuration.SpyAnnotationEngine').
class(mock_scanner_1, 'org.mockito.internal.configuration.injection.scanner.MockScanner').
class(returns_empty_values_1, 'org.mockito.internal.stubbing.defaultanswers.ReturnsEmptyValues').
class(reporter_1, 'org.mockito.exceptions.Reporter').
class(default_plugin_switch_1, 'org.mockito.internal.configuration.plugins.DefaultPluginSwitch').
class(plugins_1, 'org.mockito.internal.configuration.plugins.Plugins').
class(accessibility_changer_1, 'org.mockito.internal.util.reflection.AccessibilityChanger').
class(mock_injection_strategy_1, 'org.mockito.internal.configuration.injection.MockInjectionStrategy').
class(global_configuration_1, 'org.mockito.internal.configuration.GlobalConfiguration').
class(default_annotation_engine_1, 'org.mockito.internal.configuration.DefaultAnnotationEngine').
class(name_based_candidate_filter_1, 'org.mockito.internal.configuration.injection.filter.NameBasedCandidateFilter').
class(state_master_1, 'org.mockito.StateMaster').
class(mocking_progress_impl_1, 'org.mockito.internal.progress.MockingProgressImpl').
class(mock_util_1, 'org.mockito.internal.util.MockUtil').
class(mockito_annotations_mock_annotation_processor_1, 'org.mockito.internal.configuration.MockitoAnnotationsMockAnnotationProcessor').
class(inject_mocks_scanner_1, 'org.mockito.internal.configuration.injection.scanner.InjectMocksScanner').

%%% Methods
%returns_empty_values_test_1 - org.mockito.internal.stubbing.defaultanswers.ReturnsEmptyValuesTest
method(m_should_return_empty_collections_or_null_for_non__collections_288, range(returns_empty_values_test_1, 865, 1294, 33, 53)).
method(m_should_return_empty__iterable_289, range(returns_empty_values_test_1, 2165, 171, 55, 58)).
method(m_should_return__primitive_293, range(returns_empty_values_test_1, 2342, 567, 60, 69)).
method(m_should_return_non_zero_for_compare_to_method_294, range(returns_empty_values_test_1, 2915, 344, 71, 82)).
method(m_should_return_zero_if_mock_is_compared_to__itself_295, range(returns_empty_values_test_1, 3265, 323, 84, 95)).
%iterables_1 - org.mockito.internal.util.collections.Iterables
method(m_to_iterable_228, range(iterables_1, 196, 275, 12, 21)).
%sets_1 - org.mockito.internal.util.collections.Sets
method(m_new_mock_safe_hash_set_345, range(sets_1, 323, 127, 15, 17)).
method(m_new_mock_safe_hash_set_154, range(sets_1, 456, 120, 19, 21)).
method(m_new_identity_set_346, range(sets_1, 582, 84, 23, 25)).
method(m_new_set_347, range(sets_1, 672, 271, 27, 32)).
%primitives_1 - org.mockito.internal.util.Primitives
method(m_primitive_type_of_311, range(primitives_1, 489, 723, 17, 33)).
method(m_is_primitive_or_wrapper_286, range(primitives_1, 1218, 361, 35, 43)).
method(m_default_value_for_primitive_or_wrapper_313, range(primitives_1, 1585, 519, 45, 54)).
%final_mock_candidate_filter_1 - org.mockito.internal.configuration.injection.filter.FinalMockCandidateFilter
method(m_filter_candidate_200, range(final_mock_candidate_filter_1, 812, 923, 23, 47)).
method(m_then_inject_201, range(final_mock_candidate_filter_1, 1089, 479, 28, 37)).
method(m_then_inject_202, range(final_mock_candidate_filter_1, 1646, 71, 42, 44)).
%checks_1 - org.mockito.internal.util.Checks
method(m_check_not_null_178, range(checks_1, 218, 212, 13, 18)).
method(m_check_items_not_null_180, range(checks_1, 436, 283, 20, 26)).
%test_base_1 - org.mockitoutil.TestBase
method(m_clean_up_config_in_any_case_355, range(test_base_1, 1203, 579, 40, 50)).
method(m_init_357, range(test_base_1, 1788, 82, 52, 55)).
method(m_make_stack_traces_clean_358, range(test_base_1, 1880, 121, 57, 59)).
method(m_reset_state_359, range(test_base_1, 2011, 67, 61, 63)).
method(m_get_last_invocation_360, range(test_base_1, 2088, 102, 65, 67)).
method(m_assert_that_361, range(test_base_1, 2252, 90, 70, 72)).
method(m_assert_that_362, range(test_base_1, 2352, 116, 74, 76)).
method(m_assert_that_363, range(test_base_1, 2478, 141, 78, 80)).
method(m_ends_with_364, range(test_base_1, 2629, 372, 82, 90)).
method(m_assert_value_365, range(test_base_1, 2751, 233, 84, 88)).
method(m_assert_not_equals_366, range(test_base_1, 3011, 114, 92, 94)).
method(m_assert_contains_367, range(test_base_1, 3131, 307, 96, 105)).
method(m_assert_contains_ignoring_case_368, range(test_base_1, 3444, 328, 107, 116)).
method(m_contains_ignoring_case_369, range(test_base_1, 3778, 461, 118, 132)).
method(m_assert_not_contains_370, range(test_base_1, 4245, 311, 134, 143)).
method(m_invocation_of_371, range(test_base_1, 4566, 414, 145, 152)).
method(m_invocation_of_372, range(test_base_1, 4986, 295, 154, 157)).
method(m_describe_373, range(test_base_1, 5287, 104, 159, 161)).
method(m_is_mock_374, range(test_base_1, 5397, 83, 163, 165)).
method(m_assert_contains_type_375, range(test_base_1, 5486, 500, 167, 179)).
method(m_matches_376, range(test_base_1, 5661, 307, 169, 177)).
method(m_get_stack_trace_377, range(test_base_1, 5992, 271, 181, 188)).
%configuration_access_1 - org.mockito.internal.configuration.ConfigurationAccess
method(m_get_config_115, range(configuration_access_1, 261, 127, 11, 13)).
%default_stack_trace_cleaner_provider_1 - org.mockito.internal.exceptions.stacktrace.DefaultStackTraceCleanerProvider
method(m_get_stack_trace_cleaner_235, range(default_stack_trace_cleaner_provider_1, 308, 118, 11, 13)).
%injecting_annotation_engine_1 - org.mockito.internal.configuration.InjectingAnnotationEngine
method(m_create_mock_for_148, range(injecting_annotation_engine_1, 916, 426, 27, 36)).
method(m_process_149, range(injecting_annotation_engine_1, 1348, 759, 38, 57)).
method(m_process_inject_mocks_151, range(injecting_annotation_engine_1, 2113, 280, 59, 65)).
method(m_process_independent_annotations_150, range(injecting_annotation_engine_1, 2399, 473, 67, 77)).
method(m_inject_mocks_152, range(injecting_annotation_engine_1, 2879, 912, 80, 101)).
%field_reader_1 - org.mockito.internal.util.reflection.FieldReader
method(m_field_reader_210, range(field_reader_1, 404, 149, 17, 21)).
method(m_is_null_353, range(field_reader_1, 559, 66, 23, 25)).
method(m_read_212, range(field_reader_1, 631, 233, 27, 33)).
%property_and_setter_injection_1 - org.mockito.internal.configuration.injection.PropertyAndSetterInjection
method(m_is_out_193, range(property_and_setter_injection_1, 2688, 150, 65, 67)).
method(m_process_injection_194, range(property_and_setter_injection_1, 2852, 804, 71, 84)).
method(m_initialize_inject_mocks_field_195, range(property_and_setter_injection_1, 3662, 642, 86, 98)).
method(m_inject_mock_candidates_196, range(property_and_setter_injection_1, 4311, 557, 101, 109)).
method(m_inject_mock_candidates_on_fields_197, range(property_and_setter_injection_1, 4874, 583, 111, 122)).
method(m_ordered_instance_fields_from_198, range(property_and_setter_injection_1, 5463, 323, 124, 129)).
%type_based_candidate_filter_1 - org.mockito.internal.configuration.injection.filter.TypeBasedCandidateFilter
method(m_type_based_candidate_filter_189, range(type_based_candidate_filter_1, 402, 91, 16, 18)).
method(m_filter_candidate_205, range(type_based_candidate_filter_1, 499, 420, 20, 29)).
%thread_safe_mocking_progress_1 - org.mockito.internal.progress.ThreadSafeMockingProgress
method(m_thread_safely_268, range(thread_safe_mocking_progress_1, 649, 198, 20, 25)).
method(m_report_ongoing_stubbing_270, range(thread_safe_mocking_progress_1, 857, 140, 27, 29)).
method(m_pull_ongoing_stubbing_271, range(thread_safe_mocking_progress_1, 1003, 106, 31, 33)).
method(m_verification_started_272, range(thread_safe_mocking_progress_1, 1119, 116, 35, 37)).
method(m_pull_verification_mode_273, range(thread_safe_mocking_progress_1, 1241, 108, 39, 41)).
method(m_stubbing_started_274, range(thread_safe_mocking_progress_1, 1355, 79, 43, 45)).
method(m_validate_state_19, range(thread_safe_mocking_progress_1, 1440, 75, 47, 49)).
method(m_stubbing_completed_276, range(thread_safe_mocking_progress_1, 1521, 114, 51, 53)).
method(m_to_string_277, range(thread_safe_mocking_progress_1, 1645, 74, 55, 57)).
method(m_reset_16, range(thread_safe_mocking_progress_1, 1725, 59, 59, 61)).
method(m_reset_ongoing_stubbing_17, range(thread_safe_mocking_progress_1, 1790, 89, 63, 65)).
method(m_get_argument_matcher_storage_280, range(thread_safe_mocking_progress_1, 1885, 124, 67, 69)).
method(m_mocking_started_281, range(thread_safe_mocking_progress_1, 2019, 124, 71, 73)).
method(m_set_listener_282, range(thread_safe_mocking_progress_1, 2149, 111, 75, 77)).
%mock_annotation_processor_1 - org.mockito.internal.configuration.MockAnnotationProcessor
method(m_process_160, range(mock_annotation_processor_1, 438, 689, 17, 34)).
%argument_matcher_storage_impl_1 - org.mockito.internal.progress.ArgumentMatcherStorageImpl
method(m_report_matcher_237, range(argument_matcher_storage_impl_1, 980, 161, 31, 34)).
method(m_pull_localized_matchers_238, range(argument_matcher_storage_impl_1, 1265, 313, 39, 47)).
method(m_report_and_239, range(argument_matcher_storage_impl_1, 1688, 260, 52, 57)).
method(m_report_or_240, range(argument_matcher_storage_impl_1, 2059, 254, 62, 67)).
method(m_report_not_241, range(argument_matcher_storage_impl_1, 2425, 265, 72, 77)).
method(m_assert_state_for_242, range(argument_matcher_storage_impl_1, 2696, 231, 79, 82)).
method(m_pop_last_argument_matchers_243, range(argument_matcher_storage_impl_1, 2933, 324, 84, 91)).
method(m_assert_matchers_found_for_244, range(argument_matcher_storage_impl_1, 3263, 231, 93, 98)).
method(m_assert_incorrect_use_of_additional_matchers_245, range(argument_matcher_storage_impl_1, 3500, 393, 100, 106)).
method(m_validate_state_246, range(argument_matcher_storage_impl_1, 4009, 269, 111, 117)).
method(m_reset_248, range(argument_matcher_storage_impl_1, 4386, 57, 122, 124)).
%spy_on_injected_fields_handler_1 - org.mockito.internal.configuration.injection.SpyOnInjectedFieldsHandler
method(m_process_injection_199, range(spy_on_injected_fields_handler_1, 860, 1207, 30, 56)).
%mockito_configuration_1 - org.mockito.configuration.MockitoConfiguration
method(m_override_default_answer_25, range(mockito_configuration_1, 776, 125, 23, 25)).
method(m_override_cleans_stack_trace_26, range(mockito_configuration_1, 971, 120, 28, 30)).
method(m_override_annotation_engine_27, range(mockito_configuration_1, 1165, 109, 33, 35)).
method(m_override_enable_class_cache_28, range(mockito_configuration_1, 1348, 120, 38, 40)).
method(m_get_default_answer_29, range(mockito_configuration_1, 1474, 225, 42, 49)).
method(m_get_annotation_engine_30, range(mockito_configuration_1, 1705, 590, 51, 66)).
method(m_create_mock_for_32, range(mockito_configuration_1, 1925, 353, 57, 64)).
method(m_cleans_stack_trace_33, range(mockito_configuration_1, 2305, 88, 68, 71)).
method(m_enable_class_cache_34, range(mockito_configuration_1, 2399, 88, 73, 76)).
%hash_code_and_equals_safe_set_1 - org.mockito.internal.util.collections.HashCodeAndEqualsSafeSet
method(m_iterator_314, range(hash_code_and_equals_safe_set_1, 1050, 474, 36, 52)).
method(m_has_next_317, range(hash_code_and_equals_safe_set_1, 1243, 83, 40, 42)).
method(m_next_318, range(hash_code_and_equals_safe_set_1, 1340, 82, 44, 46)).
method(m_remove_319, range(hash_code_and_equals_safe_set_1, 1436, 71, 48, 50)).
method(m_size_320, range(hash_code_and_equals_safe_set_1, 1530, 63, 54, 56)).
method(m_is_empty_321, range(hash_code_and_equals_safe_set_1, 1599, 73, 58, 60)).
method(m_contains_322, range(hash_code_and_equals_safe_set_1, 1678, 123, 62, 64)).
method(m_add_323, range(hash_code_and_equals_safe_set_1, 1807, 113, 66, 68)).
method(m_remove_324, range(hash_code_and_equals_safe_set_1, 1926, 119, 70, 72)).
method(m_clear_325, range(hash_code_and_equals_safe_set_1, 2051, 59, 74, 76)).
method(m_clone_326, range(hash_code_and_equals_safe_set_1, 2116, 121, 78, 80)).
method(m_equals_327, range(hash_code_and_equals_safe_set_1, 2243, 270, 82, 88)).
method(m_hash_code_328, range(hash_code_and_equals_safe_set_1, 2519, 81, 90, 92)).
method(m_to_array_329, range(hash_code_and_equals_safe_set_1, 2606, 78, 94, 96)).
method(m_unwrap_to_330, range(hash_code_and_equals_safe_set_1, 2690, 303, 98, 106)).
method(m_to_array_331, range(hash_code_and_equals_safe_set_1, 3000, 226, 109, 113)).
method(m_remove_all_332, range(hash_code_and_equals_safe_set_1, 3232, 117, 115, 117)).
method(m_contains_all_333, range(hash_code_and_equals_safe_set_1, 3355, 121, 119, 121)).
method(m_add_all_334, range(hash_code_and_equals_safe_set_1, 3482, 111, 123, 125)).
method(m_retain_all_337, range(hash_code_and_equals_safe_set_1, 3599, 117, 127, 129)).
method(m_as_wrapped_mocks_336, range(hash_code_and_equals_safe_set_1, 3722, 484, 131, 139)).
method(m_to_string_338, range(hash_code_and_equals_safe_set_1, 4212, 84, 141, 143)).
method(m_of_339, range(hash_code_and_equals_safe_set_1, 4302, 107, 145, 147)).
method(m_of_340, range(hash_code_and_equals_safe_set_1, 4415, 357, 149, 157)).
%default_mockito_configuration_1 - org.mockito.configuration.DefaultMockitoConfiguration
method(m_get_return_values_20, range(default_mockito_configuration_1, 866, 262, 25, 29)).
method(m_get_default_answer_21, range(default_mockito_configuration_1, 1134, 89, 31, 33)).
method(m_get_annotation_engine_5, range(default_mockito_configuration_1, 1330, 101, 38, 40)).
method(m_cleans_stack_trace_23, range(default_mockito_configuration_1, 1545, 62, 45, 47)).
method(m_enable_class_cache_24, range(default_mockito_configuration_1, 1721, 62, 52, 54)).
%captor_annotation_processor_1 - org.mockito.internal.configuration.CaptorAnnotationProcessor
method(m_process_111, range(captor_annotation_processor_1, 542, 557, 18, 27)).
%plugin_registry_1 - org.mockito.internal.configuration.plugins.PluginRegistry
method(m_get_stack_trace_cleaner_provider_230, range(plugin_registry_1, 802, 247, 18, 24)).
method(m_get_mock_maker_231, range(plugin_registry_1, 1055, 357, 26, 34)).
%plugin_finder_1 - org.mockito.internal.configuration.plugins.PluginFinder
method(m_plugin_finder_218, range(plugin_finder_1, 314, 96, 14, 16)).
method(m_find_plugin_class_219, range(plugin_finder_1, 416, 911, 18, 40)).
%class_path_loader_1 - org.mockito.internal.configuration.ClassPathLoader
method(m_load_configuration_112, range(class_path_loader_1, 2326, 993, 60, 81)).
%object_methods_guru_1 - org.mockito.internal.util.ObjectMethodsGuru
method(m_is_to_string_306, range(object_methods_guru_1, 464, 105, 17, 19)).
method(m_is_to_string_307, range(object_methods_guru_1, 575, 223, 21, 25)).
method(m_is_equals_method_308, range(object_methods_guru_1, 804, 225, 27, 31)).
method(m_is_hash_code_method_309, range(object_methods_guru_1, 1035, 164, 33, 36)).
method(m_is_compare_to_method_310, range(object_methods_guru_1, 1205, 326, 38, 43)).
%plugin_loader_1 - org.mockito.internal.configuration.plugins.PluginLoader
method(m_plugin_loader_220, range(plugin_loader_1, 426, 96, 16, 18)).
method(m_load_plugin_221, range(plugin_loader_1, 528, 950, 20, 39)).
method(m_load_impl_222, range(plugin_loader_1, 1484, 1196, 41, 69)).
%default_injection_engine_1 - org.mockito.internal.configuration.DefaultInjectionEngine
method(m_inject_mocks_on_fields_129, range(default_injection_engine_1, 471, 370, 19, 26)).
%mock_injection_1 - org.mockito.internal.configuration.injection.MockInjection
method(m_on_field_174, range(mock_injection_1, 689, 378, 27, 37)).
method(m_on_fields_135, range(mock_injection_1, 1073, 387, 39, 49)).
method(m_ongoing_mock_injection_177, range(mock_injection_1, 1948, 132, 61, 63)).
method(m_ongoing_mock_injection_175, range(mock_injection_1, 2090, 217, 65, 68)).
method(m_with_mocks_134, range(mock_injection_1, 2317, 154, 70, 73)).
method(m_try_constructor_injection_133, range(mock_injection_1, 2481, 159, 75, 78)).
method(m_try_property_or_field_injection_132, range(mock_injection_1, 2650, 169, 80, 83)).
method(m_handle_spy_annotation_131, range(mock_injection_1, 2829, 165, 85, 88)).
method(m_apply_130, range(mock_injection_1, 3004, 232, 90, 95)).
%mockito_annotations_1 - org.mockito.MockitoAnnotations
method(m_init_mocks_1, range(mockito_annotations_1, 3211, 1351, 83, 109)).
method(m_scan_deprecated_way_7, range(mockito_annotations_1, 4568, 286, 111, 117)).
method(m_process_annotation_deprecated_way_11, range(mockito_annotations_1, 4860, 812, 119, 135)).
method(m_throw_if_already_assigned_13, range(mockito_annotations_1, 5678, 198, 137, 141)).
%constructor_injection_1 - org.mockito.internal.configuration.injection.ConstructorInjection
method(m_constructor_injection_168, range(constructor_injection_1, 1271, 33, 42, 42)).
method(m_constructor_injection_169, range(constructor_injection_1, 1337, 109, 45, 47)).
method(m_process_injection_170, range(constructor_injection_1, 1452, 759, 49, 64)).
method(m_simple_argument_resolver_171, range(constructor_injection_1, 2435, 98, 72, 74)).
method(m_resolve_type_instances_172, range(constructor_injection_1, 2543, 341, 76, 82)).
method(m_object_that_is_assignable_from_173, range(constructor_injection_1, 2894, 233, 84, 89)).
%spy_annotation_engine_1 - org.mockito.internal.configuration.SpyAnnotationEngine
method(m_create_mock_for_162, range(spy_annotation_engine_1, 1293, 92, 42, 44)).
method(m_process_163, range(spy_annotation_engine_1, 1391, 1655, 46, 74)).
method(m_assert_not_interface_165, range(spy_annotation_engine_1, 3052, 317, 76, 81)).
method(m_new_spy_instance_166, range(spy_annotation_engine_1, 3375, 1750, 83, 119)).
method(m_assert_no_incompatible_annotations_167, range(spy_annotation_engine_1, 5163, 360, 122, 128)).
%mock_scanner_1 - org.mockito.internal.configuration.injection.scanner.MockScanner
method(m_mock_scanner_158, range(mock_scanner_1, 711, 288, 26, 35)).
method(m_add_prepared_mocks_157, range(mock_scanner_1, 1005, 335, 37, 48)).
method(m_scan_209, range(mock_scanner_1, 1346, 631, 50, 67)).
method(m_prepared_mock_211, range(mock_scanner_1, 1983, 314, 69, 77)).
method(m_is_annotated_by_mock_or_spy_213, range(mock_scanner_1, 2303, 251, 79, 83)).
method(m_is_mock_or_spy_214, range(mock_scanner_1, 2560, 138, 85, 88)).
%returns_empty_values_1 - org.mockito.internal.stubbing.defaultanswers.ReturnsEmptyValues
method(m_answer_284, range(returns_empty_values_1, 1916, 1035, 62, 80)).
method(m_return_value_for_285, range(returns_empty_values_1, 2961, 1714, 82, 118)).
%reporter_1 - org.mockito.exceptions.Reporter
method(m_checked_exception_invalid_35, range(reporter_1, 2261, 206, 56, 61)).
method(m_cannot_stub_with_null_throwable_36, range(reporter_1, 2473, 154, 63, 68)).
method(m_unfinished_stubbing_37, range(reporter_1, 2633, 812, 70, 86)).
method(m_incorrect_use_of_api_38, range(reporter_1, 3451, 622, 88, 99)).
method(m_missing_method_invocation_39, range(reporter_1, 4079, 709, 101, 114)).
method(m_unfinished_verification_exception_40, range(reporter_1, 4794, 691, 116, 131)).
method(m_not_amock_passed_to_verify_41, range(reporter_1, 5491, 517, 133, 142)).
method(m_null_passed_to_verify_42, range(reporter_1, 6014, 540, 144, 154)).
method(m_not_amock_passed_to_when_method_43, range(reporter_1, 6560, 289, 156, 162)).
method(m_null_passed_to_when_method_44, range(reporter_1, 6855, 364, 164, 171)).
method(m_mocks_have_to_be_passed_to_verify_no_more_interactions_45, range(reporter_1, 7225, 379, 173, 181)).
method(m_not_amock_passed_to_verify_no_more_interactions_46, range(reporter_1, 7610, 374, 183, 191)).
method(m_null_passed_to_verify_no_more_interactions_47, range(reporter_1, 7990, 353, 193, 200)).
method(m_not_amock_passed_when_creating_in_order_48, range(reporter_1, 8349, 327, 202, 209)).
method(m_null_passed_when_creating_in_order_49, range(reporter_1, 8682, 326, 211, 218)).
method(m_mocks_have_to_be_passed_when_creating_in_order_50, range(reporter_1, 9014, 326, 220, 227)).
method(m_in_order_requires_familiar_mock_51, range(reporter_1, 9346, 347, 229, 236)).
method(m_invalid_use_of_matchers_52, range(reporter_1, 9699, 926, 238, 255)).
method(m_incorrect_use_of_additional_matchers_53, range(reporter_1, 10631, 1140, 257, 276)).
method(m_stub_passed_to_verify_54, range(reporter_1, 11777, 300, 278, 283)).
method(m_report_no_sub_matchers_found_55, range(reporter_1, 12083, 280, 285, 291)).
method(m_locations_of_56, range(reporter_1, 12370, 290, 294, 299)).
method(m_arguments_are_different_57, range(reporter_1, 12666, 460, 301, 312)).
method(m_wanted_but_not_invoked_58, range(reporter_1, 13132, 148, 314, 316)).
method(m_wanted_but_not_invoked_59, range(reporter_1, 13286, 827, 318, 335)).
method(m_create_wanted_but_not_invoked_message_60, range(reporter_1, 14119, 248, 337, 344)).
method(m_wanted_but_not_invoked_in_order_61, range(reporter_1, 14373, 490, 346, 357)).
method(m_too_many_actual_invocations_62, range(reporter_1, 14869, 292, 359, 362)).
method(m_create_too_many_invocations_message_63, range(reporter_1, 15167, 485, 364, 374)).
method(m_never_wanted_but_invoked_64, range(reporter_1, 15658, 349, 376, 385)).
method(m_too_many_actual_invocations_in_order_65, range(reporter_1, 16013, 368, 387, 392)).
method(m_create_too_little_invocations_message_66, range(reporter_1, 16387, 643, 394, 407)).
method(m_too_little_actual_invocations_67, range(reporter_1, 17036, 316, 409, 413)).
method(m_too_little_actual_invocations_in_order_68, range(reporter_1, 17358, 390, 415, 421)).
method(m_no_more_interactions_wanted_69, range(reporter_1, 17754, 552, 423, 434)).
method(m_no_more_interactions_wanted_in_order_70, range(reporter_1, 18312, 364, 436, 443)).
method(m_cannot_mock_final_class_71, range(reporter_1, 18682, 334, 445, 453)).
method(m_cannot_stub_void_method_with_areturn_value_72, range(reporter_1, 19022, 1127, 455, 470)).
method(m_only_void_methods_can_be_set_to_do_nothing_73, range(reporter_1, 20155, 505, 472, 482)).
method(m_wrong_type_of_return_value_74, range(reporter_1, 20666, 899, 484, 497)).
method(m_wrong_type_returned_by_default_answer_75, range(reporter_1, 21571, 578, 499, 508)).
method(m_wanted_at_most_x_76, range(reporter_1, 22156, 204, 511, 513)).
method(m_misplaced_argument_matcher_77, range(reporter_1, 22366, 969, 515, 531)).
method(m_smart_null_pointer_exception_78, range(reporter_1, 23341, 384, 533, 542)).
method(m_no_argument_value_was_captured_79, range(reporter_1, 23731, 756, 544, 557)).
method(m_extra_interfaces_does_not_accept_null_parameters_80, range(reporter_1, 24493, 186, 559, 563)).
method(m_extra_interfaces_accepts_only_interfaces_81, range(reporter_1, 24685, 297, 565, 570)).
method(m_extra_interfaces_cannot_contain_mocked_type_82, range(reporter_1, 24988, 375, 572, 578)).
method(m_extra_interfaces_requires_at_least_one_interface_83, range(reporter_1, 25369, 186, 580, 584)).
method(m_mocked_type_is_inconsistent_with_spied_instance_type_84, range(reporter_1, 25561, 676, 586, 595)).
method(m_cannot_call_abstract_real_method_85, range(reporter_1, 26243, 390, 597, 604)).
method(m_cannot_verify_to_string_86, range(reporter_1, 26639, 674, 606, 614)).
method(m_more_than_one_annotation_not_allowed_87, range(reporter_1, 27319, 363, 616, 620)).
method(m_unsupported_combination_of_annotations_88, range(reporter_1, 27688, 309, 622, 625)).
method(m_cannot_initialize_for_spy_annotation_89, range(reporter_1, 28003, 685, 627, 636)).
method(m_cannot_initialize_for_inject_mocks_annotation_90, range(reporter_1, 28694, 760, 638, 648)).
method(m_at_most_and_never_should_not_be_used_with_timeout_91, range(reporter_1, 29460, 645, 650, 659)).
method(m_field_initialisation_threw_exception_92, range(reporter_1, 30111, 510, 661, 668)).
method(m_invocation_listener_does_not_accept_null_parameters_93, range(reporter_1, 30627, 160, 670, 672)).
method(m_invocation_listeners_requires_at_least_one_listener_94, range(reporter_1, 30793, 159, 674, 676)).
method(m_invocation_listener_threw_exception_95, range(reporter_1, 30958, 386, 678, 682)).
method(m_cannot_inject_dependency_96, range(reporter_1, 31350, 538, 684, 692)).
method(m_exception_cause_message_if_available_97, range(reporter_1, 31894, 215, 694, 699)).
method(m_mocked_type_is_inconsistent_with_delegated_instance_type_98, range(reporter_1, 32115, 692, 701, 710)).
method(m_spy_and_delegate_are_mutually_exclusive_99, range(reporter_1, 32813, 212, 712, 716)).
method(m_invalid_argument_range_at_identity_answer_creation_time_100, range(reporter_1, 33031, 389, 718, 723)).
method(m_invalid_argument_position_range_at_invocation_time_101, range(reporter_1, 33426, 945, 725, 736)).
method(m_possible_argument_types_of_102, range(reporter_1, 34377, 960, 738, 755)).
method(m_wrong_type_of_argument_to_return_103, range(reporter_1, 35343, 1455, 757, 777)).
method(m_default_answer_does_not_accept_null_parameter_104, range(reporter_1, 36804, 147, 779, 781)).
method(m_serializable_wont_work_for_objects_that_dont_implement_serializable_105, range(reporter_1, 36957, 794, 783, 793)).
method(m_delegated_method_has_wrong_return_type_106, range(reporter_1, 37757, 737, 795, 803)).
method(m_delegated_method_does_not_exist_on_delegate_107, range(reporter_1, 38500, 581, 805, 813)).
method(m_using_constructor_with_fancy_serializable_108, range(reporter_1, 39087, 212, 815, 817)).
method(m_cannot_create_timer_with_negative_duration_time_109, range(reporter_1, 39305, 451, 819, 826)).
method(m_safely_get_mock_name_110, range(reporter_1, 39762, 104, 828, 830)).
%default_plugin_switch_1 - org.mockito.internal.configuration.plugins.DefaultPluginSwitch
method(m_is_enabled_217, range(default_plugin_switch_1, 151, 77, 6, 8)).
%plugins_1 - org.mockito.internal.configuration.plugins.Plugins
method(m_get_stack_trace_cleaner_provider_233, range(plugins_1, 316, 203, 13, 18)).
method(m_get_mock_maker_234, range(plugins_1, 525, 345, 20, 28)).
%accessibility_changer_1 - org.mockito.internal.util.reflection.AccessibilityChanger
method(m_safely_disable_access_348, range(accessibility_changer_1, 299, 335, 13, 23)).
method(m_enable_access_349, range(accessibility_changer_1, 640, 282, 25, 31)).
%mock_injection_strategy_1 - org.mockito.internal.configuration.injection.MockInjectionStrategy
method(m_nop_176, range(mock_injection_strategy_1, 320, 340, 16, 25)).
method(m_process_injection_185, range(mock_injection_strategy_1, 503, 140, 21, 23)).
method(m_then_try_181, range(mock_injection_strategy_1, 716, 518, 30, 47)).
method(m_process_186, range(mock_injection_strategy_1, 1240, 1019, 49, 72)).
method(m_process_injection_187, range(mock_injection_strategy_1, 2265, 510, 74, 86)).
method(m_relay_process_to_next_strategy_188, range(mock_injection_strategy_1, 2781, 206, 88, 90)).
%global_configuration_1 - org.mockito.internal.configuration.GlobalConfiguration
method(m_get_it_116, range(global_configuration_1, 936, 80, 25, 27)).
method(m_global_configuration_3, range(global_configuration_1, 1022, 229, 29, 34)).
method(m_create_config_139, range(global_configuration_1, 1257, 347, 36, 44)).
method(m_validate_141, range(global_configuration_1, 1610, 72, 46, 48)).
method(m_get_return_values_142, range(global_configuration_1, 1688, 106, 50, 52)).
method(m_get_annotation_engine_2, range(global_configuration_1, 1800, 118, 54, 56)).
method(m_cleans_stack_trace_144, range(global_configuration_1, 1924, 103, 58, 60)).
method(m_enable_class_cache_145, range(global_configuration_1, 2037, 103, 62, 64)).
method(m_get_default_answer_146, range(global_configuration_1, 2146, 110, 66, 68)).
%default_annotation_engine_1 - org.mockito.internal.configuration.DefaultAnnotationEngine
method(m_default_annotation_engine_118, range(default_annotation_engine_1, 1121, 321, 32, 36)).
method(m_create_mock_for_123, range(default_annotation_engine_1, 1588, 177, 41, 44)).
method(m_for_annotation_124, range(default_annotation_engine_1, 1771, 457, 46, 55)).
method(m_process_125, range(default_annotation_engine_1, 2118, 93, 51, 53)).
method(m_register_annotation_processor_119, range(default_annotation_engine_1, 2234, 230, 57, 59)).
method(m_process_127, range(default_annotation_engine_1, 2470, 907, 61, 79)).
method(m_throw_if_already_assigned_128, range(default_annotation_engine_1, 3387, 191, 81, 85)).
%name_based_candidate_filter_1 - org.mockito.internal.configuration.injection.filter.NameBasedCandidateFilter
method(m_name_based_candidate_filter_190, range(name_based_candidate_filter_1, 513, 91, 18, 20)).
method(m_filter_candidate_204, range(name_based_candidate_filter_1, 610, 562, 22, 33)).
%state_master_1 - org.mockito.StateMaster
method(m_reset_15, range(state_master_1, 340, 108, 14, 17)).
method(m_validate_18, range(state_master_1, 458, 71, 19, 21)).
%mocking_progress_impl_1 - org.mockito.internal.progress.MockingProgressImpl
method(m_report_ongoing_stubbing_252, range(mocking_progress_impl_1, 1076, 126, 29, 31)).
method(m_pull_ongoing_stubbing_253, range(mocking_progress_impl_1, 1208, 157, 33, 37)).
method(m_verification_started_254, range(mocking_progress_impl_1, 1375, 171, 39, 43)).
method(m_reset_ongoing_stubbing_255, range(mocking_progress_impl_1, 1662, 75, 48, 50)).
method(m_pull_verification_mode_256, range(mocking_progress_impl_1, 1743, 254, 52, 60)).
method(m_stubbing_started_257, range(mocking_progress_impl_1, 2003, 111, 62, 65)).
method(m_validate_state_258, range(mocking_progress_impl_1, 2120, 288, 67, 76)).
method(m_validate_most_stuff_259, range(mocking_progress_impl_1, 2414, 559, 78, 90)).
method(m_stubbing_completed_262, range(mocking_progress_impl_1, 2979, 95, 92, 94)).
method(m_to_string_263, range(mocking_progress_impl_1, 3084, 198, 96, 100)).
method(m_reset_264, range(mocking_progress_impl_1, 3288, 140, 102, 106)).
method(m_get_argument_matcher_storage_261, range(mocking_progress_impl_1, 3434, 104, 108, 110)).
method(m_mocking_started_266, range(mocking_progress_impl_1, 3544, 246, 112, 117)).
method(m_set_listener_267, range(mocking_progress_impl_1, 3796, 99, 119, 121)).
%mock_util_1 - org.mockito.internal.util.MockUtil
method(m_is_type_mockable_296, range(mock_util_1, 861, 128, 26, 28)).
method(m_create_mock_297, range(mock_util_1, 995, 402, 30, 41)).
method(m_reset_mock_298, range(mock_util_1, 1403, 330, 43, 49)).
method(m_get_mock_handler_299, range(mock_util_1, 1739, 459, 51, 62)).
method(m_is_mock_215, range(mock_util_1, 2204, 247, 64, 67)).
method(m_is_spy_216, range(mock_util_1, 2457, 151, 69, 71)).
method(m_is_mockito_mock_300, range(mock_util_1, 2614, 100, 73, 75)).
method(m_get_mock_name_304, range(mock_util_1, 2720, 117, 77, 79)).
method(m_maybe_redefine_mock_name_305, range(mock_util_1, 2843, 372, 81, 87)).
method(m_get_mock_settings_302, range(mock_util_1, 3221, 119, 89, 91)).
%mockito_annotations_mock_annotation_processor_1 - org.mockito.internal.configuration.MockitoAnnotationsMockAnnotationProcessor
method(m_process_161, range(mockito_annotations_mock_annotation_processor_1, 476, 122, 18, 20)).
%inject_mocks_scanner_1 - org.mockito.internal.configuration.injection.scanner.InjectMocksScanner
method(m_inject_mocks_scanner_156, range(inject_mocks_scanner_1, 571, 247, 24, 31)).
method(m_add_to_155, range(inject_mocks_scanner_1, 825, 263, 34, 41)).
method(m_scan_206, range(inject_mocks_scanner_1, 1094, 577, 43, 59)).
method(m_assert_no_annotations_208, range(inject_mocks_scanner_1, 1677, 338, 61, 67)).

%%% Blocks
%returns_empty_values_test_1 - org.mockito.internal.stubbing.defaultanswers.ReturnsEmptyValuesTest
block(returns_empty_values_test_1_block1, block, returns_empty_values_test_1_code9, body, range(returns_empty_values_test_1, 2235, 101, 56, 58)).
%iterables_1 - org.mockito.internal.util.collections.Iterables
block(iterables_1_block1, block, iterables_1_code3, body, range(iterables_1, 314, 157, 15, 21)).
block(iterables_1_block2, block, iterables_1_stmt2, body, range(iterables_1, 395, 50, 17, 19)).
%sets_1 - org.mockito.internal.util.collections.Sets
block(sets_1_block1, block, sets_1_code3, body, range(sets_1, 518, 58, 19, 21)).
%primitives_1 - org.mockito.internal.util.Primitives
block(primitives_1_block1, block, primitives_1_code41, body, range(primitives_1, 1502, 77, 41, 43)).
block(primitives_1_block2, block, primitives_1_code42, body, range(primitives_1, 2118, 453, 57, 66)).
block(primitives_1_block3, block, primitives_1_code51, body, range(primitives_1, 2584, 1111, 68, 86)).
%final_mock_candidate_filter_1 - org.mockito.internal.configuration.injection.filter.FinalMockCandidateFilter
%checks_1 - org.mockito.internal.util.Checks
block(checks_1_block1, block, checks_1_code3, body, range(checks_1, 281, 149, 13, 18)).
block(checks_1_block2, block, checks_1_stmt1, then_statement, range(checks_1, 309, 93, 14, 16)).
block(checks_1_block3, block, checks_1_code4, body, range(checks_1, 527, 192, 20, 26)).
block(checks_1_block4, block, checks_1_stmt4, body, range(checks_1, 615, 73, 22, 24)).
%test_base_1 - org.mockitoutil.TestBase
block(test_base_1_block1, block, test_base_1_code5, body, range(test_base_1, 1251, 531, 41, 50)).
block(test_base_1_block2, block, test_base_1_code9, body, range(test_base_1, 1819, 51, 53, 55)).
%configuration_access_1 - org.mockito.internal.configuration.ConfigurationAccess
block(configuration_access_1_block1, block, configuration_access_1_code3, body, range(configuration_access_1, 308, 80, 11, 13)).
%default_stack_trace_cleaner_provider_1 - org.mockito.internal.exceptions.stacktrace.DefaultStackTraceCleanerProvider
%injecting_annotation_engine_1 - org.mockito.internal.configuration.InjectingAnnotationEngine
block(injecting_annotation_engine_1_block1, block, injecting_annotation_engine_1_code17, body, range(injecting_annotation_engine_1, 1955, 152, 54, 57)).
block(injecting_annotation_engine_1_block2, block, injecting_annotation_engine_1_code18, body, range(injecting_annotation_engine_1, 2194, 199, 59, 65)).
block(injecting_annotation_engine_1_block3, block, injecting_annotation_engine_1_stmt4, body, range(injecting_annotation_engine_1, 2280, 107, 61, 64)).
block(injecting_annotation_engine_1_block4, block, injecting_annotation_engine_1_code24, body, range(injecting_annotation_engine_1, 2491, 381, 67, 77)).
block(injecting_annotation_engine_1_block5, block, injecting_annotation_engine_1_stmt8, body, range(injecting_annotation_engine_1, 2577, 289, 69, 76)).
block(injecting_annotation_engine_1_block6, block, injecting_annotation_engine_1_code30, body, range(injecting_annotation_engine_1, 3251, 540, 89, 101)).
block(injecting_annotation_engine_1_block7, block, injecting_annotation_engine_1_stmt15, body, range(injecting_annotation_engine_1, 3468, 203, 94, 98)).
%field_reader_1 - org.mockito.internal.util.reflection.FieldReader
block(field_reader_1_block1, block, field_reader_1_code8, body, range(field_reader_1, 451, 102, 17, 21)).
block(field_reader_1_block2, block, field_reader_1_code14, body, range(field_reader_1, 652, 212, 27, 33)).
block(field_reader_1_block3, block, field_reader_1_stmt4, body, range(field_reader_1, 666, 49, 28, 30)).
%property_and_setter_injection_1 - org.mockito.internal.configuration.injection.PropertyAndSetterInjection
%type_based_candidate_filter_1 - org.mockito.internal.configuration.injection.filter.TypeBasedCandidateFilter
block(type_based_candidate_filter_1_block1, block, type_based_candidate_filter_1_code3, body, range(type_based_candidate_filter_1, 460, 33, 16, 18)).
%thread_safe_mocking_progress_1 - org.mockito.internal.progress.ThreadSafeMockingProgress
block(thread_safe_mocking_progress_1_block1, block, thread_safe_mocking_progress_1_code17, body, range(thread_safe_mocking_progress_1, 687, 160, 20, 25)).
block(thread_safe_mocking_progress_1_block2, block, thread_safe_mocking_progress_1_stmt1, then_statement, range(thread_safe_mocking_progress_1, 732, 71, 21, 23)).
block(thread_safe_mocking_progress_1_block3, block, thread_safe_mocking_progress_1_code19, body, range(thread_safe_mocking_progress_1, 1468, 47, 47, 49)).
block(thread_safe_mocking_progress_1_block4, block, thread_safe_mocking_progress_1_code20, body, range(thread_safe_mocking_progress_1, 1745, 39, 59, 61)).
block(thread_safe_mocking_progress_1_block5, block, thread_safe_mocking_progress_1_code21, body, range(thread_safe_mocking_progress_1, 1825, 54, 63, 65)).
%mock_annotation_processor_1 - org.mockito.internal.configuration.MockAnnotationProcessor
%argument_matcher_storage_impl_1 - org.mockito.internal.progress.ArgumentMatcherStorageImpl
block(argument_matcher_storage_impl_1_block1, block, argument_matcher_storage_impl_1_code15, body, range(argument_matcher_storage_impl_1, 4037, 241, 111, 117)).
block(argument_matcher_storage_impl_1_block2, block, argument_matcher_storage_impl_1_stmt1, then_statement, range(argument_matcher_storage_impl_1, 4076, 196, 112, 116)).
block(argument_matcher_storage_impl_1_block3, block, argument_matcher_storage_impl_1_code16, body, range(argument_matcher_storage_impl_1, 4406, 37, 122, 124)).
%spy_on_injected_fields_handler_1 - org.mockito.internal.configuration.injection.SpyOnInjectedFieldsHandler
%mockito_configuration_1 - org.mockito.configuration.MockitoConfiguration
block(mockito_configuration_1_block1, block, mockito_configuration_1_code16, body, range(mockito_configuration_1, 840, 61, 23, 25)).
block(mockito_configuration_1_block2, block, mockito_configuration_1_code17, body, range(mockito_configuration_1, 1034, 57, 28, 30)).
block(mockito_configuration_1_block3, block, mockito_configuration_1_code18, body, range(mockito_configuration_1, 1765, 530, 52, 66)).
block(mockito_configuration_1_block4, block, mockito_configuration_1_stmt3, then_statement, range(mockito_configuration_1, 1810, 53, 53, 55)).
%hash_code_and_equals_safe_set_1 - org.mockito.internal.util.collections.HashCodeAndEqualsSafeSet
block(hash_code_and_equals_safe_set_1_block1, block, hash_code_and_equals_safe_set_1_code17, body, range(hash_code_and_equals_safe_set_1, 1085, 439, 36, 52)).
block(hash_code_and_equals_safe_set_1_block2, block, hash_code_and_equals_safe_set_1_code29, body, range(hash_code_and_equals_safe_set_1, 1268, 58, 40, 42)).
block(hash_code_and_equals_safe_set_1_block3, block, hash_code_and_equals_safe_set_1_code30, body, range(hash_code_and_equals_safe_set_1, 3525, 68, 123, 125)).
block(hash_code_and_equals_safe_set_1_block4, block, hash_code_and_equals_safe_set_1_code31, body, range(hash_code_and_equals_safe_set_1, 3804, 402, 131, 139)).
block(hash_code_and_equals_safe_set_1_block5, block, hash_code_and_equals_safe_set_1_stmt6, body, range(hash_code_and_equals_safe_set_1, 4022, 154, 134, 137)).
block(hash_code_and_equals_safe_set_1_block6, block, hash_code_and_equals_safe_set_1_code41, body, range(hash_code_and_equals_safe_set_1, 4361, 48, 145, 147)).
block(hash_code_and_equals_safe_set_1_block7, block, hash_code_and_equals_safe_set_1_code42, body, range(hash_code_and_equals_safe_set_1, 4483, 289, 149, 157)).
block(hash_code_and_equals_safe_set_1_block8, block, hash_code_and_equals_safe_set_1_stmt10, then_statement, range(hash_code_and_equals_safe_set_1, 4606, 119, 151, 155)).
block(hash_code_and_equals_safe_set_1_block9, block, hash_code_and_equals_safe_set_1_stmt11, body, range(hash_code_and_equals_safe_set_1, 4648, 67, 152, 154)).
%default_mockito_configuration_1 - org.mockito.configuration.DefaultMockitoConfiguration
block(default_mockito_configuration_1_block1, block, default_mockito_configuration_1_code5, body, range(default_mockito_configuration_1, 1376, 55, 38, 40)).
%captor_annotation_processor_1 - org.mockito.internal.configuration.CaptorAnnotationProcessor
%plugin_registry_1 - org.mockito.internal.configuration.plugins.PluginRegistry
block(plugin_registry_1_block1, block, plugin_registry_1_code26, body, range(plugin_registry_1, 1379, 33, 32, 34)).
%plugin_finder_1 - org.mockito.internal.configuration.plugins.PluginFinder
block(plugin_finder_1_block1, block, plugin_finder_1_code3, body, range(plugin_finder_1, 361, 49, 14, 16)).
block(plugin_finder_1_block2, block, plugin_finder_1_code7, body, range(plugin_finder_1, 464, 863, 18, 40)).
block(plugin_finder_1_block3, block, plugin_finder_1_stmt2, body, range(plugin_finder_1, 505, 795, 19, 38)).
%class_path_loader_1 - org.mockito.internal.configuration.ClassPathLoader
block(class_path_loader_1_block1, block, class_path_loader_1_code4, body, range(class_path_loader_1, 2487, 832, 64, 81)).
block(class_path_loader_1_block2, block, class_path_loader_1_stmt1, body, range(class_path_loader_1, 2574, 94, 67, 69)).
block(class_path_loader_1_block3, block, class_path_loader_1_code6, body, range(class_path_loader_1, 2702, 116, 69, 72)).
block(class_path_loader_1_block4, block, class_path_loader_1_stmt3, body, range(class_path_loader_1, 2832, 81, 74, 76)).
%object_methods_guru_1 - org.mockito.internal.util.ObjectMethodsGuru
%plugin_loader_1 - org.mockito.internal.configuration.plugins.PluginLoader
block(plugin_loader_1_block1, block, plugin_loader_1_code3, body, range(plugin_loader_1, 473, 49, 16, 18)).
block(plugin_loader_1_block2, block, plugin_loader_1_code7, body, range(plugin_loader_1, 699, 779, 23, 39)).
block(plugin_loader_1_block3, block, plugin_loader_1_stmt3, then_statement, range(plugin_loader_1, 770, 38, 25, 27)).
block(plugin_loader_1_block4, block, plugin_loader_1_stmt4, body, range(plugin_loader_1, 822, 346, 29, 34)).
block(plugin_loader_1_block5, block, plugin_loader_1_code10, body, range(plugin_loader_1, 1656, 1024, 45, 69)).
block(plugin_loader_1_block6, block, plugin_loader_1_stmt7, then_statement, range(plugin_loader_1, 1763, 68, 47, 49)).
block(plugin_loader_1_block7, block, plugin_loader_1_stmt8, body, range(plugin_loader_1, 1880, 99, 51, 53)).
block(plugin_loader_1_block8, block, plugin_loader_1_code13, body, range(plugin_loader_1, 2002, 83, 53, 55)).
block(plugin_loader_1_block9, block, plugin_loader_1_stmt10, body, range(plugin_loader_1, 2099, 392, 57, 65)).
block(plugin_loader_1_block10, block, plugin_loader_1_stmt12, then_statement, range(plugin_loader_1, 2262, 194, 59, 63)).
%default_injection_engine_1 - org.mockito.internal.configuration.DefaultInjectionEngine
block(default_injection_engine_1_block1, block, default_injection_engine_1_code4, body, range(default_injection_engine_1, 577, 264, 19, 26)).
%mock_injection_1 - org.mockito.internal.configuration.injection.MockInjection
block(mock_injection_1_block1, block, mock_injection_1_code3, body, range(mock_injection_1, 1392, 68, 47, 49)).
block(mock_injection_1_block2, block, mock_injection_1_code33, body, range(mock_injection_1, 2157, 150, 65, 68)).
block(mock_injection_1_block3, block, mock_injection_1_code41, body, range(mock_injection_1, 2374, 97, 70, 73)).
block(mock_injection_1_block4, block, mock_injection_1_code42, body, range(mock_injection_1, 2535, 105, 75, 78)).
block(mock_injection_1_block5, block, mock_injection_1_code44, body, range(mock_injection_1, 2708, 111, 80, 83)).
block(mock_injection_1_block6, block, mock_injection_1_code46, body, range(mock_injection_1, 2879, 115, 85, 88)).
block(mock_injection_1_block7, block, mock_injection_1_code48, body, range(mock_injection_1, 3024, 212, 90, 95)).
block(mock_injection_1_block8, block, mock_injection_1_stmt12, body, range(mock_injection_1, 3065, 161, 91, 94)).
%mockito_annotations_1 - org.mockito.MockitoAnnotations
block(mockito_annotations_1_block1, block, mockito_annotations_1_code3, body, range(mockito_annotations_1, 3545, 1017, 89, 109)).
block(mockito_annotations_1_block2, block, mockito_annotations_1_stmt1, then_statement, range(mockito_annotations_1, 3578, 171, 90, 92)).
block(mockito_annotations_1_block3, block, mockito_annotations_1_stmt4, then_statement, range(mockito_annotations_1, 4082, 371, 98, 105)).
block(mockito_annotations_1_block4, block, mockito_annotations_1_stmt5, body, range(mockito_annotations_1, 4310, 133, 101, 104)).
block(mockito_annotations_1_block5, block, mockito_annotations_1_code13, body, range(mockito_annotations_1, 4667, 187, 111, 117)).
block(mockito_annotations_1_block6, block, mockito_annotations_1_stmt10, body, range(mockito_annotations_1, 4757, 91, 114, 116)).
block(mockito_annotations_1_block7, block, mockito_annotations_1_code20, body, range(mockito_annotations_1, 5006, 666, 120, 135)).
block(mockito_annotations_1_block8, block, mockito_annotations_1_stmt13, body, range(mockito_annotations_1, 5109, 557, 122, 134)).
%constructor_injection_1 - org.mockito.internal.configuration.injection.ConstructorInjection
block(constructor_injection_1_block1, block, constructor_injection_1_code3, body, range(constructor_injection_1, 1301, 3, 42, 42)).
%spy_annotation_engine_1 - org.mockito.internal.configuration.SpyAnnotationEngine
block(spy_annotation_engine_1_block1, block, spy_annotation_engine_1_code5, body, range(spy_annotation_engine_1, 1518, 1528, 47, 74)).
block(spy_annotation_engine_1_block2, block, spy_annotation_engine_1_stmt2, body, range(spy_annotation_engine_1, 1609, 1431, 49, 73)).
block(spy_annotation_engine_1_block3, block, spy_annotation_engine_1_stmt3, then_statement, range(spy_annotation_engine_1, 1714, 1316, 50, 72)).
%mock_scanner_1 - org.mockito.internal.configuration.injection.scanner.MockScanner
block(mock_scanner_1_block1, block, mock_scanner_1_code9, body, range(mock_scanner_1, 930, 69, 32, 35)).
block(mock_scanner_1_block2, block, mock_scanner_1_code17, body, range(mock_scanner_1, 1303, 37, 46, 48)).
block(mock_scanner_1_block3, block, mock_scanner_1_code18, body, range(mock_scanner_1, 1555, 422, 55, 67)).
block(mock_scanner_1_block4, block, mock_scanner_1_stmt5, body, range(mock_scanner_1, 1661, 288, 57, 65)).
block(mock_scanner_1_block5, block, mock_scanner_1_stmt8, then_statement, range(mock_scanner_1, 1883, 56, 62, 64)).
block(mock_scanner_1_block6, block, mock_scanner_1_code30, body, range(mock_scanner_1, 2041, 256, 69, 77)).
block(mock_scanner_1_block7, block, mock_scanner_1_stmt10, then_statement, range(mock_scanner_1, 2086, 40, 70, 72)).
block(mock_scanner_1_block8, block, mock_scanner_1_stmt11, then_statement, range(mock_scanner_1, 2159, 111, 72, 75)).
block(mock_scanner_1_block9, block, mock_scanner_1_code31, body, range(mock_scanner_1, 2355, 199, 79, 83)).
block(mock_scanner_1_block10, block, mock_scanner_1_code35, body, range(mock_scanner_1, 2605, 93, 85, 88)).
%returns_empty_values_1 - org.mockito.internal.stubbing.defaultanswers.ReturnsEmptyValues
block(returns_empty_values_1_block1, block, returns_empty_values_1_code16, body, range(returns_empty_values_1, 2998, 1677, 82, 118)).
block(returns_empty_values_1_block2, block, returns_empty_values_1_stmt1, then_statement, range(returns_empty_values_1, 3051, 261, 83, 87)).
block(returns_empty_values_1_block3, block, returns_empty_values_1_stmt2, then_statement, range(returns_empty_values_1, 3348, 56, 87, 89)).
block(returns_empty_values_1_block4, block, returns_empty_values_1_stmt3, then_statement, range(returns_empty_values_1, 3433, 53, 89, 91)).
block(returns_empty_values_1_block5, block, returns_empty_values_1_stmt4, then_statement, range(returns_empty_values_1, 3519, 53, 91, 93)).
block(returns_empty_values_1_block6, block, returns_empty_values_1_stmt5, then_statement, range(returns_empty_values_1, 3607, 53, 93, 95)).
block(returns_empty_values_1_block7, block, returns_empty_values_1_stmt6, then_statement, range(returns_empty_values_1, 3693, 53, 95, 97)).
block(returns_empty_values_1_block8, block, returns_empty_values_1_stmt7, then_statement, range(returns_empty_values_1, 3785, 59, 97, 99)).
block(returns_empty_values_1_block9, block, returns_empty_values_1_stmt8, then_statement, range(returns_empty_values_1, 3874, 56, 99, 101)).
block(returns_empty_values_1_block10, block, returns_empty_values_1_stmt9, then_statement, range(returns_empty_values_1, 3966, 56, 101, 103)).
block(returns_empty_values_1_block11, block, returns_empty_values_1_stmt10, then_statement, range(returns_empty_values_1, 4057, 55, 103, 105)).
block(returns_empty_values_1_block12, block, returns_empty_values_1_stmt11, then_statement, range(returns_empty_values_1, 4141, 61, 105, 107)).
block(returns_empty_values_1_block13, block, returns_empty_values_1_stmt12, then_statement, range(returns_empty_values_1, 4235, 61, 107, 109)).
block(returns_empty_values_1_block14, block, returns_empty_values_1_stmt13, then_statement, range(returns_empty_values_1, 4331, 61, 109, 111)).
block(returns_empty_values_1_block15, block, returns_empty_values_1_stmt14, then_statement, range(returns_empty_values_1, 4425, 61, 111, 113)).
block(returns_empty_values_1_block16, block, returns_empty_values_1_stmt15, then_statement, range(returns_empty_values_1, 4525, 67, 113, 115)).
%reporter_1 - org.mockito.exceptions.Reporter
%default_plugin_switch_1 - org.mockito.internal.configuration.plugins.DefaultPluginSwitch
%plugins_1 - org.mockito.internal.configuration.plugins.Plugins
block(plugins_1_block1, block, plugins_1_code9, body, range(plugins_1, 823, 47, 26, 28)).
%accessibility_changer_1 - org.mockito.internal.util.reflection.AccessibilityChanger
block(accessibility_changer_1_block1, block, accessibility_changer_1_code8, body, range(accessibility_changer_1, 812, 110, 28, 31)).
%mock_injection_strategy_1 - org.mockito.internal.configuration.injection.MockInjectionStrategy
block(mock_injection_strategy_1_block1, block, mock_injection_strategy_1_code5, body, range(mock_injection_strategy_1, 444, 216, 19, 25)).
block(mock_injection_strategy_1_block2, block, mock_injection_strategy_1_code8, body, range(mock_injection_strategy_1, 1059, 175, 40, 47)).
block(mock_injection_strategy_1_block3, block, mock_injection_strategy_1_stmt2, then_statement, range(mock_injection_strategy_1, 1094, 55, 41, 43)).
block(mock_injection_strategy_1_block4, block, mock_injection_strategy_1_stmt2, else_statement, range(mock_injection_strategy_1, 1155, 48, 43, 45)).
%global_configuration_1 - org.mockito.internal.configuration.GlobalConfiguration
block(global_configuration_1_block1, block, global_configuration_1_code14, body, range(global_configuration_1, 966, 50, 25, 27)).
block(global_configuration_1_block2, block, global_configuration_1_code15, body, range(global_configuration_1, 1051, 200, 29, 34)).
block(global_configuration_1_block3, block, global_configuration_1_stmt2, then_statement, range(global_configuration_1, 1180, 65, 31, 33)).
block(global_configuration_1_block4, block, global_configuration_1_code17, body, range(global_configuration_1, 1302, 302, 36, 44)).
block(global_configuration_1_block5, block, global_configuration_1_stmt6, then_statement, range(global_configuration_1, 1502, 38, 39, 41)).
block(global_configuration_1_block6, block, global_configuration_1_code24, body, range(global_configuration_1, 1640, 42, 46, 48)).
block(global_configuration_1_block7, block, global_configuration_1_code26, body, range(global_configuration_1, 1846, 72, 54, 56)).
%default_annotation_engine_1 - org.mockito.internal.configuration.DefaultAnnotationEngine
block(default_annotation_engine_1_block1, block, default_annotation_engine_1_code25, body, range(default_annotation_engine_1, 1154, 288, 32, 36)).
block(default_annotation_engine_1_block2, block, default_annotation_engine_1_code33, body, range(default_annotation_engine_1, 2378, 86, 57, 59)).
block(default_annotation_engine_1_block3, block, default_annotation_engine_1_code34, body, range(default_annotation_engine_1, 2527, 850, 61, 79)).
block(default_annotation_engine_1_block4, block, default_annotation_engine_1_stmt6, body, range(default_annotation_engine_1, 2616, 755, 63, 78)).
block(default_annotation_engine_1_block5, block, default_annotation_engine_1_stmt8, body, range(default_annotation_engine_1, 2727, 634, 65, 77)).
%name_based_candidate_filter_1 - org.mockito.internal.configuration.injection.filter.NameBasedCandidateFilter
block(name_based_candidate_filter_1_block1, block, name_based_candidate_filter_1_code9, body, range(name_based_candidate_filter_1, 571, 33, 18, 20)).
%state_master_1 - org.mockito.StateMaster
block(state_master_1_block1, block, state_master_1_code10, body, range(state_master_1, 360, 88, 14, 17)).
block(state_master_1_block2, block, state_master_1_code11, body, range(state_master_1, 481, 48, 19, 21)).
%mocking_progress_impl_1 - org.mockito.internal.progress.MockingProgressImpl
block(mocking_progress_impl_1_block1, block, mocking_progress_impl_1_code21, body, range(mocking_progress_impl_1, 1697, 40, 48, 50)).
block(mocking_progress_impl_1_block2, block, mocking_progress_impl_1_code22, body, range(mocking_progress_impl_1, 2148, 260, 67, 76)).
block(mocking_progress_impl_1_block3, block, mocking_progress_impl_1_stmt3, then_statement, range(mocking_progress_impl_1, 2257, 145, 71, 75)).
block(mocking_progress_impl_1_block4, block, mocking_progress_impl_1_code23, body, range(mocking_progress_impl_1, 2447, 526, 78, 90)).
block(mocking_progress_impl_1_block5, block, mocking_progress_impl_1_stmt5, then_statement, range(mocking_progress_impl_1, 2737, 176, 83, 87)).
block(mocking_progress_impl_1_block6, block, mocking_progress_impl_1_code24, body, range(mocking_progress_impl_1, 3308, 120, 102, 106)).
block(mocking_progress_impl_1_block7, block, mocking_progress_impl_1_code25, body, range(mocking_progress_impl_1, 3492, 46, 108, 110)).
%mock_util_1 - org.mockito.internal.util.MockUtil
block(mock_util_1_block1, block, mock_util_1_code10, body, range(mock_util_1, 2239, 212, 64, 67)).
block(mock_util_1_block2, block, mock_util_1_code11, body, range(mock_util_1, 2491, 117, 69, 71)).
block(mock_util_1_block3, block, mock_util_1_code12, body, range(mock_util_1, 2656, 58, 73, 75)).
%mockito_annotations_mock_annotation_processor_1 - org.mockito.internal.configuration.MockitoAnnotationsMockAnnotationProcessor
%inject_mocks_scanner_1 - org.mockito.internal.configuration.injection.scanner.InjectMocksScanner
block(inject_mocks_scanner_1_block1, block, inject_mocks_scanner_1_code3, body, range(inject_mocks_scanner_1, 783, 35, 29, 31)).
block(inject_mocks_scanner_1_block2, block, inject_mocks_scanner_1_code9, body, range(inject_mocks_scanner_1, 1037, 51, 39, 41)).
block(inject_mocks_scanner_1_block3, block, inject_mocks_scanner_1_code10, body, range(inject_mocks_scanner_1, 1236, 435, 48, 59)).
block(inject_mocks_scanner_1_block4, block, inject_mocks_scanner_1_stmt5, body, range(inject_mocks_scanner_1, 1388, 240, 51, 56)).
block(inject_mocks_scanner_1_block5, block, inject_mocks_scanner_1_stmt6, then_statement, range(inject_mocks_scanner_1, 1454, 164, 52, 55)).

%%% Statements
%returns_empty_values_test_1 - org.mockito.internal.stubbing.defaultanswers.ReturnsEmptyValuesTest
stmt(returns_empty_values_test_1_stmt1, expression_statement, returns_empty_values_test_1_block1, (statements, 0), range(returns_empty_values_test_1, 2245, 85, 57, 57)).
%iterables_1 - org.mockito.internal.util.collections.Iterables
stmt(iterables_1_stmt1, variable_declaration_statement, iterables_1_block1, (statements, 0), range(iterables_1, 324, 34, 16, 16)).
stmt(iterables_1_stmt2, while_statement, iterables_1_block1, (statements, 1), range(iterables_1, 367, 78, 17, 19)).
stmt(iterables_1_stmt3, return_statement, iterables_1_block1, (statements, 2), range(iterables_1, 454, 11, 20, 20)).
%sets_1 - org.mockito.internal.util.collections.Sets
stmt(sets_1_stmt1, return_statement, sets_1_block1, (statements, 0), range(sets_1, 528, 42, 20, 20)).
%primitives_1 - org.mockito.internal.util.Primitives
stmt(primitives_1_stmt1, return_statement, primitives_1_block1, (statements, 0), range(primitives_1, 1512, 61, 42, 42)).
stmt(primitives_1_stmt2, expression_statement, primitives_1_block2, (statements, 0), range(primitives_1, 2128, 49, 58, 58)).
stmt(primitives_1_stmt3, expression_statement, primitives_1_block2, (statements, 1), range(primitives_1, 2186, 53, 59, 59)).
stmt(primitives_1_stmt4, expression_statement, primitives_1_block2, (statements, 2), range(primitives_1, 2248, 43, 60, 60)).
stmt(primitives_1_stmt5, expression_statement, primitives_1_block2, (statements, 3), range(primitives_1, 2300, 45, 61, 61)).
stmt(primitives_1_stmt6, expression_statement, primitives_1_block2, (statements, 4), range(primitives_1, 2354, 49, 62, 62)).
stmt(primitives_1_stmt7, expression_statement, primitives_1_block2, (statements, 5), range(primitives_1, 2412, 43, 63, 63)).
stmt(primitives_1_stmt8, expression_statement, primitives_1_block2, (statements, 6), range(primitives_1, 2464, 45, 64, 64)).
stmt(primitives_1_stmt9, expression_statement, primitives_1_block2, (statements, 7), range(primitives_1, 2518, 47, 65, 65)).
stmt(primitives_1_stmt10, expression_statement, primitives_1_block3, (statements, 0), range(primitives_1, 2594, 62, 69, 69)).
stmt(primitives_1_stmt11, expression_statement, primitives_1_block3, (statements, 1), range(primitives_1, 2665, 67, 70, 70)).
stmt(primitives_1_stmt12, expression_statement, primitives_1_block3, (statements, 2), range(primitives_1, 2741, 62, 71, 71)).
stmt(primitives_1_stmt13, expression_statement, primitives_1_block3, (statements, 3), range(primitives_1, 2812, 64, 72, 72)).
stmt(primitives_1_stmt14, expression_statement, primitives_1_block3, (statements, 4), range(primitives_1, 2885, 58, 73, 73)).
stmt(primitives_1_stmt15, expression_statement, primitives_1_block3, (statements, 5), range(primitives_1, 2952, 56, 74, 74)).
stmt(primitives_1_stmt16, expression_statement, primitives_1_block3, (statements, 6), range(primitives_1, 3017, 57, 75, 75)).
stmt(primitives_1_stmt17, expression_statement, primitives_1_block3, (statements, 7), range(primitives_1, 3083, 58, 76, 76)).
stmt(primitives_1_stmt18, expression_statement, primitives_1_block3, (statements, 8), range(primitives_1, 3151, 62, 78, 78)).
stmt(primitives_1_stmt19, expression_statement, primitives_1_block3, (statements, 9), range(primitives_1, 3222, 62, 79, 79)).
stmt(primitives_1_stmt20, expression_statement, primitives_1_block3, (statements, 10), range(primitives_1, 3293, 62, 80, 80)).
stmt(primitives_1_stmt21, expression_statement, primitives_1_block3, (statements, 11), range(primitives_1, 3364, 64, 81, 81)).
stmt(primitives_1_stmt22, expression_statement, primitives_1_block3, (statements, 12), range(primitives_1, 3437, 54, 82, 82)).
stmt(primitives_1_stmt23, expression_statement, primitives_1_block3, (statements, 13), range(primitives_1, 3500, 56, 83, 83)).
stmt(primitives_1_stmt24, expression_statement, primitives_1_block3, (statements, 14), range(primitives_1, 3565, 57, 84, 84)).
stmt(primitives_1_stmt25, expression_statement, primitives_1_block3, (statements, 15), range(primitives_1, 3631, 58, 85, 85)).
%final_mock_candidate_filter_1 - org.mockito.internal.configuration.injection.filter.FinalMockCandidateFilter
%checks_1 - org.mockito.internal.util.Checks
stmt(checks_1_stmt1, if_statement, checks_1_block1, (statements, 0), range(checks_1, 291, 111, 14, 16)).
stmt(checks_1_stmt2, return_statement, checks_1_block1, (statements, 1), range(checks_1, 411, 13, 17, 17)).
stmt(checks_1_stmt3, expression_statement, checks_1_block3, (statements, 0), range(checks_1, 537, 40, 21, 21)).
stmt(checks_1_stmt4, enhanced_for_statement, checks_1_block3, (statements, 1), range(checks_1, 586, 102, 22, 24)).
stmt(checks_1_stmt5, return_statement, checks_1_block3, (statements, 2), range(checks_1, 697, 16, 25, 25)).
%test_base_1 - org.mockitoutil.TestBase
stmt(test_base_1_stmt1, expression_statement, test_base_1_block1, (statements, 0), range(test_base_1, 1261, 64, 42, 42)).
stmt(test_base_1_stmt2, expression_statement, test_base_1_block1, (statements, 1), range(test_base_1, 1334, 60, 43, 43)).
stmt(test_base_1_stmt3, variable_declaration_statement, test_base_1_block1, (statements, 2), range(test_base_1, 1403, 38, 44, 44)).
stmt(test_base_1_stmt4, expression_statement, test_base_1_block1, (statements, 3), range(test_base_1, 1608, 17, 47, 47)).
stmt(test_base_1_stmt5, expression_statement, test_base_1_block1, (statements, 4), range(test_base_1, 1762, 14, 49, 49)).
stmt(test_base_1_stmt6, expression_statement, test_base_1_block2, (statements, 0), range(test_base_1, 1829, 35, 54, 54)).
%configuration_access_1 - org.mockito.internal.configuration.ConfigurationAccess
stmt(configuration_access_1_stmt1, return_statement, configuration_access_1_block1, (statements, 0), range(configuration_access_1, 318, 64, 12, 12)).
%default_stack_trace_cleaner_provider_1 - org.mockito.internal.exceptions.stacktrace.DefaultStackTraceCleanerProvider
%injecting_annotation_engine_1 - org.mockito.internal.configuration.InjectingAnnotationEngine
stmt(injecting_annotation_engine_1_stmt1, expression_statement, injecting_annotation_engine_1_block1, (statements, 0), range(injecting_annotation_engine_1, 1965, 69, 55, 55)).
stmt(injecting_annotation_engine_1_stmt2, expression_statement, injecting_annotation_engine_1_block1, (statements, 1), range(injecting_annotation_engine_1, 2043, 58, 56, 56)).
stmt(injecting_annotation_engine_1_stmt3, variable_declaration_statement, injecting_annotation_engine_1_block2, (statements, 0), range(injecting_annotation_engine_1, 2204, 30, 60, 60)).
stmt(injecting_annotation_engine_1_stmt4, while_statement, injecting_annotation_engine_1_block2, (statements, 1), range(injecting_annotation_engine_1, 2243, 144, 61, 64)).
stmt(injecting_annotation_engine_1_stmt5, expression_statement, injecting_annotation_engine_1_block3, (statements, 0), range(injecting_annotation_engine_1, 2294, 26, 62, 62)).
stmt(injecting_annotation_engine_1_stmt6, expression_statement, injecting_annotation_engine_1_block3, (statements, 1), range(injecting_annotation_engine_1, 2333, 44, 63, 63)).
stmt(injecting_annotation_engine_1_stmt7, variable_declaration_statement, injecting_annotation_engine_1_block4, (statements, 0), range(injecting_annotation_engine_1, 2501, 30, 68, 68)).
stmt(injecting_annotation_engine_1_stmt8, while_statement, injecting_annotation_engine_1_block4, (statements, 1), range(injecting_annotation_engine_1, 2540, 326, 69, 76)).
stmt(injecting_annotation_engine_1_stmt9, expression_statement, injecting_annotation_engine_1_block5, (statements, 0), range(injecting_annotation_engine_1, 2645, 45, 71, 71)).
stmt(injecting_annotation_engine_1_stmt10, expression_statement, injecting_annotation_engine_1_block5, (statements, 1), range(injecting_annotation_engine_1, 2742, 56, 73, 73)).
stmt(injecting_annotation_engine_1_stmt11, expression_statement, injecting_annotation_engine_1_block5, (statements, 2), range(injecting_annotation_engine_1, 2812, 44, 75, 75)).
stmt(injecting_annotation_engine_1_stmt12, variable_declaration_statement, injecting_annotation_engine_1_block6, (statements, 0), range(injecting_annotation_engine_1, 3261, 46, 90, 90)).
stmt(injecting_annotation_engine_1_stmt13, variable_declaration_statement, injecting_annotation_engine_1_block6, (statements, 1), range(injecting_annotation_engine_1, 3316, 54, 91, 91)).
stmt(injecting_annotation_engine_1_stmt14, variable_declaration_statement, injecting_annotation_engine_1_block6, (statements, 2), range(injecting_annotation_engine_1, 3379, 41, 92, 92)).
stmt(injecting_annotation_engine_1_stmt15, while_statement, injecting_annotation_engine_1_block6, (statements, 3), range(injecting_annotation_engine_1, 3438, 233, 94, 98)).
stmt(injecting_annotation_engine_1_stmt16, expression_statement, injecting_annotation_engine_1_block7, (statements, 0), range(injecting_annotation_engine_1, 3482, 57, 95, 95)).
stmt(injecting_annotation_engine_1_stmt17, expression_statement, injecting_annotation_engine_1_block7, (statements, 1), range(injecting_annotation_engine_1, 3552, 66, 96, 96)).
stmt(injecting_annotation_engine_1_stmt18, expression_statement, injecting_annotation_engine_1_block7, (statements, 2), range(injecting_annotation_engine_1, 3631, 30, 97, 97)).
stmt(injecting_annotation_engine_1_stmt19, expression_statement, injecting_annotation_engine_1_block6, (statements, 4), range(injecting_annotation_engine_1, 3689, 96, 100, 100)).
%field_reader_1 - org.mockito.internal.util.reflection.FieldReader
stmt(field_reader_1_stmt1, expression_statement, field_reader_1_block1, (statements, 0), range(field_reader_1, 461, 21, 18, 18)).
stmt(field_reader_1_stmt2, expression_statement, field_reader_1_block1, (statements, 1), range(field_reader_1, 491, 19, 19, 19)).
stmt(field_reader_1_stmt3, expression_statement, field_reader_1_block1, (statements, 2), range(field_reader_1, 519, 28, 20, 20)).
stmt(field_reader_1_stmt4, try_statement, field_reader_1_block2, (statements, 0), range(field_reader_1, 662, 196, 28, 32)).
stmt(field_reader_1_stmt5, return_statement, field_reader_1_block3, (statements, 0), range(field_reader_1, 680, 25, 29, 29)).
%property_and_setter_injection_1 - org.mockito.internal.configuration.injection.PropertyAndSetterInjection
%type_based_candidate_filter_1 - org.mockito.internal.configuration.injection.filter.TypeBasedCandidateFilter
stmt(type_based_candidate_filter_1_stmt1, expression_statement, type_based_candidate_filter_1_block1, (statements, 0), range(type_based_candidate_filter_1, 470, 17, 17, 17)).
%thread_safe_mocking_progress_1 - org.mockito.internal.progress.ThreadSafeMockingProgress
stmt(thread_safe_mocking_progress_1_stmt1, if_statement, thread_safe_mocking_progress_1_block1, (statements, 0), range(thread_safe_mocking_progress_1, 697, 106, 21, 23)).
stmt(thread_safe_mocking_progress_1_stmt2, expression_statement, thread_safe_mocking_progress_1_block2, (statements, 0), range(thread_safe_mocking_progress_1, 746, 47, 22, 22)).
stmt(thread_safe_mocking_progress_1_stmt3, return_statement, thread_safe_mocking_progress_1_block1, (statements, 1), range(thread_safe_mocking_progress_1, 812, 29, 24, 24)).
stmt(thread_safe_mocking_progress_1_stmt4, expression_statement, thread_safe_mocking_progress_1_block3, (statements, 0), range(thread_safe_mocking_progress_1, 1478, 31, 48, 48)).
stmt(thread_safe_mocking_progress_1_stmt5, expression_statement, thread_safe_mocking_progress_1_block4, (statements, 0), range(thread_safe_mocking_progress_1, 1755, 23, 60, 60)).
stmt(thread_safe_mocking_progress_1_stmt6, expression_statement, thread_safe_mocking_progress_1_block5, (statements, 0), range(thread_safe_mocking_progress_1, 1835, 38, 64, 64)).
%mock_annotation_processor_1 - org.mockito.internal.configuration.MockAnnotationProcessor
%argument_matcher_storage_impl_1 - org.mockito.internal.progress.ArgumentMatcherStorageImpl
stmt(argument_matcher_storage_impl_1_stmt1, if_statement, argument_matcher_storage_impl_1_block1, (statements, 0), range(argument_matcher_storage_impl_1, 4047, 225, 112, 116)).
stmt(argument_matcher_storage_impl_1_stmt2, expression_statement, argument_matcher_storage_impl_1_block3, (statements, 0), range(argument_matcher_storage_impl_1, 4416, 21, 123, 123)).
%spy_on_injected_fields_handler_1 - org.mockito.internal.configuration.injection.SpyOnInjectedFieldsHandler
%mockito_configuration_1 - org.mockito.configuration.MockitoConfiguration
stmt(mockito_configuration_1_stmt1, expression_statement, mockito_configuration_1_block1, (statements, 0), range(mockito_configuration_1, 850, 45, 24, 24)).
stmt(mockito_configuration_1_stmt2, expression_statement, mockito_configuration_1_block2, (statements, 0), range(mockito_configuration_1, 1044, 41, 29, 29)).
stmt(mockito_configuration_1_stmt3, if_statement, mockito_configuration_1_block3, (statements, 0), range(mockito_configuration_1, 1775, 88, 53, 55)).
stmt(mockito_configuration_1_stmt4, return_statement, mockito_configuration_1_block3, (statements, 1), range(mockito_configuration_1, 1872, 417, 56, 65)).
%hash_code_and_equals_safe_set_1 - org.mockito.internal.util.collections.HashCodeAndEqualsSafeSet
stmt(hash_code_and_equals_safe_set_1_stmt1, return_statement, hash_code_and_equals_safe_set_1_block1, (statements, 0), range(hash_code_and_equals_safe_set_1, 1095, 423, 37, 51)).
stmt(hash_code_and_equals_safe_set_1_stmt2, return_statement, hash_code_and_equals_safe_set_1_block2, (statements, 0), range(hash_code_and_equals_safe_set_1, 1286, 26, 41, 41)).
stmt(hash_code_and_equals_safe_set_1_stmt3, return_statement, hash_code_and_equals_safe_set_1_block3, (statements, 0), range(hash_code_and_equals_safe_set_1, 3535, 52, 124, 124)).
stmt(hash_code_and_equals_safe_set_1_stmt4, expression_statement, hash_code_and_equals_safe_set_1_block4, (statements, 0), range(hash_code_and_equals_safe_set_1, 3814, 72, 132, 132)).
stmt(hash_code_and_equals_safe_set_1_stmt5, variable_declaration_statement, hash_code_and_equals_safe_set_1_block4, (statements, 1), range(hash_code_and_equals_safe_set_1, 3895, 92, 133, 133)).
stmt(hash_code_and_equals_safe_set_1_stmt6, enhanced_for_statement, hash_code_and_equals_safe_set_1_block4, (statements, 2), range(hash_code_and_equals_safe_set_1, 3996, 180, 134, 137)).
stmt(hash_code_and_equals_safe_set_1_stmt7, return_statement, hash_code_and_equals_safe_set_1_block4, (statements, 3), range(hash_code_and_equals_safe_set_1, 4185, 15, 138, 138)).
stmt(hash_code_and_equals_safe_set_1_stmt8, return_statement, hash_code_and_equals_safe_set_1_block6, (statements, 0), range(hash_code_and_equals_safe_set_1, 4371, 32, 146, 146)).
stmt(hash_code_and_equals_safe_set_1_stmt9, variable_declaration_statement, hash_code_and_equals_safe_set_1_block7, (statements, 0), range(hash_code_and_equals_safe_set_1, 4493, 83, 150, 150)).
stmt(hash_code_and_equals_safe_set_1_stmt10, if_statement, hash_code_and_equals_safe_set_1_block7, (statements, 1), range(hash_code_and_equals_safe_set_1, 4585, 140, 151, 155)).
stmt(hash_code_and_equals_safe_set_1_stmt11, enhanced_for_statement, hash_code_and_equals_safe_set_1_block8, (statements, 0), range(hash_code_and_equals_safe_set_1, 4620, 95, 152, 154)).
stmt(hash_code_and_equals_safe_set_1_stmt12, return_statement, hash_code_and_equals_safe_set_1_block7, (statements, 2), range(hash_code_and_equals_safe_set_1, 4734, 32, 156, 156)).
%default_mockito_configuration_1 - org.mockito.configuration.DefaultMockitoConfiguration
stmt(default_mockito_configuration_1_stmt1, return_statement, default_mockito_configuration_1_block1, (statements, 0), range(default_mockito_configuration_1, 1386, 39, 39, 39)).
%captor_annotation_processor_1 - org.mockito.internal.configuration.CaptorAnnotationProcessor
%plugin_registry_1 - org.mockito.internal.configuration.plugins.PluginRegistry
stmt(plugin_registry_1_stmt1, return_statement, plugin_registry_1_block1, (statements, 0), range(plugin_registry_1, 1389, 17, 33, 33)).
%plugin_finder_1 - org.mockito.internal.configuration.plugins.PluginFinder
stmt(plugin_finder_1_stmt1, expression_statement, plugin_finder_1_block1, (statements, 0), range(plugin_finder_1, 371, 33, 15, 15)).
stmt(plugin_finder_1_stmt2, enhanced_for_statement, plugin_finder_1_block2, (statements, 0), range(plugin_finder_1, 474, 826, 19, 38)).
stmt(plugin_finder_1_stmt3, return_statement, plugin_finder_1_block2, (statements, 1), range(plugin_finder_1, 1309, 12, 39, 39)).
%class_path_loader_1 - org.mockito.internal.configuration.ClassPathLoader
stmt(class_path_loader_1_stmt1, try_statement, class_path_loader_1_block1, (statements, 1), range(class_path_loader_1, 2570, 248, 67, 72)).
stmt(class_path_loader_1_stmt2, expression_statement, class_path_loader_1_block2, (statements, 0), range(class_path_loader_1, 2588, 70, 68, 68)).
stmt(class_path_loader_1_stmt3, try_statement, class_path_loader_1_block1, (statements, 2), range(class_path_loader_1, 2828, 485, 74, 80)).
stmt(class_path_loader_1_stmt4, return_statement, class_path_loader_1_block4, (statements, 0), range(class_path_loader_1, 2846, 57, 75, 75)).
%object_methods_guru_1 - org.mockito.internal.util.ObjectMethodsGuru
%plugin_loader_1 - org.mockito.internal.configuration.plugins.PluginLoader
stmt(plugin_loader_1_stmt1, expression_statement, plugin_loader_1_block1, (statements, 0), range(plugin_loader_1, 483, 33, 17, 17)).
stmt(plugin_loader_1_stmt2, variable_declaration_statement, plugin_loader_1_block2, (statements, 0), range(plugin_loader_1, 709, 32, 24, 24)).
stmt(plugin_loader_1_stmt3, if_statement, plugin_loader_1_block2, (statements, 1), range(plugin_loader_1, 750, 58, 25, 27)).
stmt(plugin_loader_1_stmt4, try_statement, plugin_loader_1_block2, (statements, 2), range(plugin_loader_1, 818, 654, 29, 38)).
stmt(plugin_loader_1_stmt5, return_statement, plugin_loader_1_block4, (statements, 0), range(plugin_loader_1, 1082, 76, 33, 33)).
stmt(plugin_loader_1_stmt6, variable_declaration_statement, plugin_loader_1_block5, (statements, 0), range(plugin_loader_1, 1666, 68, 46, 46)).
stmt(plugin_loader_1_stmt7, if_statement, plugin_loader_1_block5, (statements, 1), range(plugin_loader_1, 1743, 88, 47, 49)).
stmt(plugin_loader_1_stmt8, try_statement, plugin_loader_1_block5, (statements, 3), range(plugin_loader_1, 1876, 209, 51, 55)).
stmt(plugin_loader_1_stmt9, expression_statement, plugin_loader_1_block7, (statements, 0), range(plugin_loader_1, 1894, 75, 52, 52)).
stmt(plugin_loader_1_stmt10, try_statement, plugin_loader_1_block5, (statements, 4), range(plugin_loader_1, 2095, 579, 57, 68)).
stmt(plugin_loader_1_stmt11, variable_declaration_statement, plugin_loader_1_block9, (statements, 0), range(plugin_loader_1, 2113, 106, 58, 58)).
stmt(plugin_loader_1_stmt12, if_statement, plugin_loader_1_block9, (statements, 1), range(plugin_loader_1, 2232, 224, 59, 63)).
stmt(plugin_loader_1_stmt13, return_statement, plugin_loader_1_block9, (statements, 2), range(plugin_loader_1, 2469, 12, 64, 64)).
%default_injection_engine_1 - org.mockito.internal.configuration.DefaultInjectionEngine
stmt(default_injection_engine_1_stmt1, expression_statement, default_injection_engine_1_block1, (statements, 0), range(default_injection_engine_1, 587, 248, 20, 25)).
%mock_injection_1 - org.mockito.internal.configuration.injection.MockInjection
stmt(mock_injection_1_stmt1, return_statement, mock_injection_1_block1, (statements, 0), range(mock_injection_1, 1402, 52, 48, 48)).
stmt(mock_injection_1_stmt2, expression_statement, mock_injection_1_block2, (statements, 0), range(mock_injection_1, 2171, 57, 66, 66)).
stmt(mock_injection_1_stmt3, expression_statement, mock_injection_1_block2, (statements, 1), range(mock_injection_1, 2241, 56, 67, 67)).
stmt(mock_injection_1_stmt4, expression_statement, mock_injection_1_block3, (statements, 0), range(mock_injection_1, 2388, 48, 71, 71)).
stmt(mock_injection_1_stmt5, return_statement, mock_injection_1_block3, (statements, 1), range(mock_injection_1, 2449, 12, 72, 72)).
stmt(mock_injection_1_stmt6, expression_statement, mock_injection_1_block4, (statements, 0), range(mock_injection_1, 2549, 56, 76, 76)).
stmt(mock_injection_1_stmt7, return_statement, mock_injection_1_block4, (statements, 1), range(mock_injection_1, 2618, 12, 77, 77)).
stmt(mock_injection_1_stmt8, expression_statement, mock_injection_1_block5, (statements, 0), range(mock_injection_1, 2722, 62, 81, 81)).
stmt(mock_injection_1_stmt9, return_statement, mock_injection_1_block5, (statements, 1), range(mock_injection_1, 2797, 12, 82, 82)).
stmt(mock_injection_1_stmt10, expression_statement, mock_injection_1_block6, (statements, 0), range(mock_injection_1, 2893, 66, 86, 86)).
stmt(mock_injection_1_stmt11, return_statement, mock_injection_1_block6, (statements, 1), range(mock_injection_1, 2972, 12, 87, 87)).
stmt(mock_injection_1_stmt12, enhanced_for_statement, mock_injection_1_block7, (statements, 0), range(mock_injection_1, 3038, 188, 91, 94)).
%mockito_annotations_1 - org.mockito.MockitoAnnotations
stmt(mockito_annotations_1_stmt1, if_statement, mockito_annotations_1_block1, (statements, 0), range(mockito_annotations_1, 3555, 194, 90, 92)).
stmt(mockito_annotations_1_stmt2, variable_declaration_statement, mockito_annotations_1_block1, (statements, 1), range(mockito_annotations_1, 3759, 84, 94, 94)).
stmt(mockito_annotations_1_stmt3, variable_declaration_statement, mockito_annotations_1_block1, (statements, 2), range(mockito_annotations_1, 3852, 38, 95, 95)).
stmt(mockito_annotations_1_stmt4, if_statement, mockito_annotations_1_block1, (statements, 3), range(mockito_annotations_1, 3979, 474, 98, 105)).
stmt(mockito_annotations_1_stmt5, while_statement, mockito_annotations_1_block3, (statements, 0), range(mockito_annotations_1, 4280, 163, 101, 104)).
stmt(mockito_annotations_1_stmt6, expression_statement, mockito_annotations_1_block4, (statements, 0), range(mockito_annotations_1, 4328, 54, 102, 102)).
stmt(mockito_annotations_1_stmt7, expression_statement, mockito_annotations_1_block4, (statements, 1), range(mockito_annotations_1, 4399, 30, 103, 103)).
stmt(mockito_annotations_1_stmt8, expression_statement, mockito_annotations_1_block1, (statements, 4), range(mockito_annotations_1, 4498, 58, 108, 108)).
stmt(mockito_annotations_1_stmt9, variable_declaration_statement, mockito_annotations_1_block5, (statements, 0), range(mockito_annotations_1, 4677, 43, 112, 112)).
stmt(mockito_annotations_1_stmt10, enhanced_for_statement, mockito_annotations_1_block5, (statements, 1), range(mockito_annotations_1, 4730, 118, 114, 116)).
stmt(mockito_annotations_1_stmt11, expression_statement, mockito_annotations_1_block6, (statements, 0), range(mockito_annotations_1, 4771, 67, 115, 115)).
stmt(mockito_annotations_1_stmt12, variable_declaration_statement, mockito_annotations_1_block7, (statements, 0), range(mockito_annotations_1, 5016, 32, 121, 121)).
stmt(mockito_annotations_1_stmt13, enhanced_for_statement, mockito_annotations_1_block7, (statements, 1), range(mockito_annotations_1, 5057, 609, 122, 134)).
%constructor_injection_1 - org.mockito.internal.configuration.injection.ConstructorInjection
%spy_annotation_engine_1 - org.mockito.internal.configuration.SpyAnnotationEngine
stmt(spy_annotation_engine_1_stmt1, variable_declaration_statement, spy_annotation_engine_1_block1, (statements, 0), range(spy_annotation_engine_1, 1528, 45, 48, 48)).
stmt(spy_annotation_engine_1_stmt2, enhanced_for_statement, spy_annotation_engine_1_block1, (statements, 1), range(spy_annotation_engine_1, 1582, 1458, 49, 73)).
stmt(spy_annotation_engine_1_stmt3, if_statement, spy_annotation_engine_1_block2, (statements, 0), range(spy_annotation_engine_1, 1623, 1407, 50, 72)).
%mock_scanner_1 - org.mockito.internal.configuration.injection.scanner.MockScanner
stmt(mock_scanner_1_stmt1, expression_statement, mock_scanner_1_block1, (statements, 0), range(mock_scanner_1, 940, 25, 33, 33)).
stmt(mock_scanner_1_stmt2, expression_statement, mock_scanner_1_block1, (statements, 1), range(mock_scanner_1, 974, 19, 34, 34)).
stmt(mock_scanner_1_stmt3, expression_statement, mock_scanner_1_block2, (statements, 0), range(mock_scanner_1, 1313, 21, 47, 47)).
stmt(mock_scanner_1_stmt4, variable_declaration_statement, mock_scanner_1_block3, (statements, 0), range(mock_scanner_1, 1565, 41, 56, 56)).
stmt(mock_scanner_1_stmt5, enhanced_for_statement, mock_scanner_1_block3, (statements, 1), range(mock_scanner_1, 1615, 334, 57, 65)).
stmt(mock_scanner_1_stmt6, variable_declaration_statement, mock_scanner_1_block4, (statements, 0), range(mock_scanner_1, 1709, 59, 59, 59)).
stmt(mock_scanner_1_stmt7, variable_declaration_statement, mock_scanner_1_block4, (statements, 1), range(mock_scanner_1, 1782, 62, 61, 61)).
stmt(mock_scanner_1_stmt8, if_statement, mock_scanner_1_block4, (statements, 2), range(mock_scanner_1, 1857, 82, 62, 64)).
stmt(mock_scanner_1_stmt9, return_statement, mock_scanner_1_block3, (statements, 2), range(mock_scanner_1, 1958, 13, 66, 66)).
stmt(mock_scanner_1_stmt10, if_statement, mock_scanner_1_block6, (statements, 0), range(mock_scanner_1, 2051, 219, 70, 75)).
stmt(mock_scanner_1_stmt11, if_statement, mock_scanner_1_stmt10, elseStatement, range(mock_scanner_1, 2132, 138, 72, 75)).
stmt(mock_scanner_1_stmt12, return_statement, mock_scanner_1_block6, (statements, 1), range(mock_scanner_1, 2279, 12, 76, 76)).
stmt(mock_scanner_1_stmt13, return_statement, mock_scanner_1_block9, (statements, 0), range(mock_scanner_1, 2365, 183, 80, 82)).
stmt(mock_scanner_1_stmt14, return_statement, mock_scanner_1_block10, (statements, 0), range(mock_scanner_1, 2615, 77, 86, 87)).
%returns_empty_values_1 - org.mockito.internal.stubbing.defaultanswers.ReturnsEmptyValues
stmt(returns_empty_values_1_stmt1, if_statement, returns_empty_values_1_block1, (statements, 0), range(returns_empty_values_1, 3008, 1584, 83, 115)).
stmt(returns_empty_values_1_stmt2, if_statement, returns_empty_values_1_stmt1, elseStatement, range(returns_empty_values_1, 3318, 1274, 87, 115)).
stmt(returns_empty_values_1_stmt3, if_statement, returns_empty_values_1_stmt2, elseStatement, range(returns_empty_values_1, 3410, 1182, 89, 115)).
stmt(returns_empty_values_1_stmt4, if_statement, returns_empty_values_1_stmt3, elseStatement, range(returns_empty_values_1, 3492, 1100, 91, 115)).
stmt(returns_empty_values_1_stmt5, if_statement, returns_empty_values_1_stmt4, elseStatement, range(returns_empty_values_1, 3578, 1014, 93, 115)).
stmt(returns_empty_values_1_stmt6, if_statement, returns_empty_values_1_stmt5, elseStatement, range(returns_empty_values_1, 3666, 926, 95, 115)).
stmt(returns_empty_values_1_stmt7, if_statement, returns_empty_values_1_stmt6, elseStatement, range(returns_empty_values_1, 3752, 840, 97, 115)).
stmt(returns_empty_values_1_stmt8, if_statement, returns_empty_values_1_stmt7, elseStatement, range(returns_empty_values_1, 3850, 742, 99, 115)).
stmt(returns_empty_values_1_stmt9, if_statement, returns_empty_values_1_stmt8, elseStatement, range(returns_empty_values_1, 3936, 656, 101, 115)).
stmt(returns_empty_values_1_stmt10, if_statement, returns_empty_values_1_stmt9, elseStatement, range(returns_empty_values_1, 4028, 564, 103, 115)).
stmt(returns_empty_values_1_stmt11, if_statement, returns_empty_values_1_stmt10, elseStatement, range(returns_empty_values_1, 4118, 474, 105, 115)).
stmt(returns_empty_values_1_stmt12, if_statement, returns_empty_values_1_stmt11, elseStatement, range(returns_empty_values_1, 4208, 384, 107, 115)).
stmt(returns_empty_values_1_stmt13, if_statement, returns_empty_values_1_stmt12, elseStatement, range(returns_empty_values_1, 4302, 290, 109, 115)).
stmt(returns_empty_values_1_stmt14, if_statement, returns_empty_values_1_stmt13, elseStatement, range(returns_empty_values_1, 4398, 194, 111, 115)).
stmt(returns_empty_values_1_stmt15, if_statement, returns_empty_values_1_stmt14, elseStatement, range(returns_empty_values_1, 4492, 100, 113, 115)).
stmt(returns_empty_values_1_stmt16, return_statement, returns_empty_values_1_block1, (statements, 1), range(returns_empty_values_1, 4657, 12, 117, 117)).
%reporter_1 - org.mockito.exceptions.Reporter
%default_plugin_switch_1 - org.mockito.internal.configuration.plugins.DefaultPluginSwitch
%plugins_1 - org.mockito.internal.configuration.plugins.Plugins
stmt(plugins_1_stmt1, return_statement, plugins_1_block1, (statements, 0), range(plugins_1, 833, 31, 27, 27)).
%accessibility_changer_1 - org.mockito.internal.util.reflection.AccessibilityChanger
stmt(accessibility_changer_1_stmt1, expression_statement, accessibility_changer_1_block1, (statements, 0), range(accessibility_changer_1, 822, 48, 29, 29)).
stmt(accessibility_changer_1_stmt2, expression_statement, accessibility_changer_1_block1, (statements, 1), range(accessibility_changer_1, 879, 37, 30, 30)).
%mock_injection_strategy_1 - org.mockito.internal.configuration.injection.MockInjectionStrategy
stmt(mock_injection_strategy_1_stmt1, return_statement, mock_injection_strategy_1_block1, (statements, 0), range(mock_injection_strategy_1, 454, 200, 20, 24)).
stmt(mock_injection_strategy_1_stmt2, if_statement, mock_injection_strategy_1_block2, (statements, 0), range(mock_injection_strategy_1, 1069, 134, 41, 45)).
stmt(mock_injection_strategy_1_stmt3, expression_statement, mock_injection_strategy_1_block3, (statements, 0), range(mock_injection_strategy_1, 1108, 31, 42, 42)).
stmt(mock_injection_strategy_1_stmt4, expression_statement, mock_injection_strategy_1_block4, (statements, 0), range(mock_injection_strategy_1, 1169, 24, 44, 44)).
stmt(mock_injection_strategy_1_stmt5, return_statement, mock_injection_strategy_1_block2, (statements, 1), range(mock_injection_strategy_1, 1212, 16, 46, 46)).
%global_configuration_1 - org.mockito.internal.configuration.GlobalConfiguration
stmt(global_configuration_1_stmt1, return_statement, global_configuration_1_block1, (statements, 0), range(global_configuration_1, 976, 34, 26, 26)).
stmt(global_configuration_1_stmt2, if_statement, global_configuration_1_block2, (statements, 0), range(global_configuration_1, 1140, 105, 31, 33)).
stmt(global_configuration_1_stmt3, expression_statement, global_configuration_1_block3, (statements, 0), range(global_configuration_1, 1194, 41, 32, 32)).
stmt(global_configuration_1_stmt4, variable_declaration_statement, global_configuration_1_block4, (statements, 0), range(global_configuration_1, 1312, 79, 37, 37)).
stmt(global_configuration_1_stmt5, variable_declaration_statement, global_configuration_1_block4, (statements, 1), range(global_configuration_1, 1400, 73, 38, 38)).
stmt(global_configuration_1_stmt6, if_statement, global_configuration_1_block4, (statements, 2), range(global_configuration_1, 1482, 116, 39, 43)).
stmt(global_configuration_1_stmt7, return_statement, global_configuration_1_block5, (statements, 0), range(global_configuration_1, 1516, 14, 40, 40)).
stmt(global_configuration_1_stmt8, expression_statement, global_configuration_1_block6, (statements, 0), range(global_configuration_1, 1650, 26, 47, 47)).
stmt(global_configuration_1_stmt9, return_statement, global_configuration_1_block7, (statements, 0), range(global_configuration_1, 1856, 56, 55, 55)).
%default_annotation_engine_1 - org.mockito.internal.configuration.DefaultAnnotationEngine
stmt(default_annotation_engine_1_stmt1, expression_statement, default_annotation_engine_1_block1, (statements, 0), range(default_annotation_engine_1, 1164, 71, 33, 33)).
stmt(default_annotation_engine_1_stmt2, expression_statement, default_annotation_engine_1_block1, (statements, 1), range(default_annotation_engine_1, 1244, 108, 34, 34)).
stmt(default_annotation_engine_1_stmt3, expression_statement, default_annotation_engine_1_block1, (statements, 2), range(default_annotation_engine_1, 1361, 75, 35, 35)).
stmt(default_annotation_engine_1_stmt4, expression_statement, default_annotation_engine_1_block2, (statements, 0), range(default_annotation_engine_1, 2388, 70, 58, 58)).
stmt(default_annotation_engine_1_stmt5, variable_declaration_statement, default_annotation_engine_1_block3, (statements, 0), range(default_annotation_engine_1, 2537, 43, 62, 62)).
stmt(default_annotation_engine_1_stmt6, enhanced_for_statement, default_annotation_engine_1_block3, (statements, 1), range(default_annotation_engine_1, 2589, 782, 63, 78)).
stmt(default_annotation_engine_1_stmt7, variable_declaration_statement, default_annotation_engine_1_block4, (statements, 0), range(default_annotation_engine_1, 2630, 32, 64, 64)).
stmt(default_annotation_engine_1_stmt8, enhanced_for_statement, default_annotation_engine_1_block4, (statements, 1), range(default_annotation_engine_1, 2675, 686, 65, 77)).
%name_based_candidate_filter_1 - org.mockito.internal.configuration.injection.filter.NameBasedCandidateFilter
stmt(name_based_candidate_filter_1_stmt1, expression_statement, name_based_candidate_filter_1_block1, (statements, 0), range(name_based_candidate_filter_1, 581, 17, 19, 19)).
%state_master_1 - org.mockito.StateMaster
stmt(state_master_1_stmt1, expression_statement, state_master_1_block1, (statements, 0), range(state_master_1, 370, 24, 15, 15)).
stmt(state_master_1_stmt2, expression_statement, state_master_1_block1, (statements, 1), range(state_master_1, 403, 39, 16, 16)).
stmt(state_master_1_stmt3, expression_statement, state_master_1_block2, (statements, 0), range(state_master_1, 491, 32, 20, 20)).
%mocking_progress_impl_1 - org.mockito.internal.progress.MockingProgressImpl
stmt(mocking_progress_impl_1_stmt1, expression_statement, mocking_progress_impl_1_block1, (statements, 0), range(mocking_progress_impl_1, 1707, 24, 49, 49)).
stmt(mocking_progress_impl_1_stmt2, expression_statement, mocking_progress_impl_1_block2, (statements, 0), range(mocking_progress_impl_1, 2158, 20, 68, 68)).
stmt(mocking_progress_impl_1_stmt3, if_statement, mocking_progress_impl_1_block2, (statements, 1), range(mocking_progress_impl_1, 2225, 177, 71, 75)).
stmt(mocking_progress_impl_1_stmt4, expression_statement, mocking_progress_impl_1_block4, (statements, 0), range(mocking_progress_impl_1, 2666, 31, 81, 81)).
stmt(mocking_progress_impl_1_stmt5, if_statement, mocking_progress_impl_1_block4, (statements, 1), range(mocking_progress_impl_1, 2707, 206, 83, 87)).
stmt(mocking_progress_impl_1_stmt6, expression_statement, mocking_progress_impl_1_block4, (statements, 2), range(mocking_progress_impl_1, 2923, 44, 89, 89)).
stmt(mocking_progress_impl_1_stmt7, expression_statement, mocking_progress_impl_1_block6, (statements, 0), range(mocking_progress_impl_1, 3318, 26, 103, 103)).
stmt(mocking_progress_impl_1_stmt8, expression_statement, mocking_progress_impl_1_block6, (statements, 1), range(mocking_progress_impl_1, 3353, 24, 104, 104)).
stmt(mocking_progress_impl_1_stmt9, expression_statement, mocking_progress_impl_1_block6, (statements, 2), range(mocking_progress_impl_1, 3386, 36, 105, 105)).
stmt(mocking_progress_impl_1_stmt10, return_statement, mocking_progress_impl_1_block7, (statements, 0), range(mocking_progress_impl_1, 3502, 30, 109, 109)).
%mock_util_1 - org.mockito.internal.util.MockUtil
stmt(mock_util_1_stmt1, return_statement, mock_util_1_block1, (statements, 0), range(mock_util_1, 2418, 27, 66, 66)).
stmt(mock_util_1_stmt2, return_statement, mock_util_1_block2, (statements, 0), range(mock_util_1, 2501, 101, 70, 70)).
stmt(mock_util_1_stmt3, return_statement, mock_util_1_block3, (statements, 0), range(mock_util_1, 2666, 42, 74, 74)).
%mockito_annotations_mock_annotation_processor_1 - org.mockito.internal.configuration.MockitoAnnotationsMockAnnotationProcessor
%inject_mocks_scanner_1 - org.mockito.internal.configuration.injection.scanner.InjectMocksScanner
stmt(inject_mocks_scanner_1_stmt1, expression_statement, inject_mocks_scanner_1_block1, (statements, 0), range(inject_mocks_scanner_1, 793, 19, 30, 30)).
stmt(inject_mocks_scanner_1_stmt2, expression_statement, inject_mocks_scanner_1_block2, (statements, 0), range(inject_mocks_scanner_1, 1047, 35, 40, 40)).
stmt(inject_mocks_scanner_1_stmt3, variable_declaration_statement, inject_mocks_scanner_1_block3, (statements, 0), range(inject_mocks_scanner_1, 1246, 54, 49, 49)).
stmt(inject_mocks_scanner_1_stmt4, variable_declaration_statement, inject_mocks_scanner_1_block3, (statements, 1), range(inject_mocks_scanner_1, 1309, 43, 50, 50)).
stmt(inject_mocks_scanner_1_stmt5, enhanced_for_statement, inject_mocks_scanner_1_block3, (statements, 2), range(inject_mocks_scanner_1, 1361, 267, 51, 56)).
stmt(inject_mocks_scanner_1_stmt6, if_statement, inject_mocks_scanner_1_block4, (statements, 0), range(inject_mocks_scanner_1, 1402, 216, 52, 55)).
stmt(inject_mocks_scanner_1_stmt7, return_statement, inject_mocks_scanner_1_block3, (statements, 3), range(inject_mocks_scanner_1, 1638, 27, 58, 58)).

%%% Expressions
%returns_empty_values_test_1 - org.mockito.internal.stubbing.defaultanswers.ReturnsEmptyValuesTest
expr(returns_empty_values_test_1_expr1, class_instance_creation, returns_empty_values_test_1_code7, initializer, range(returns_empty_values_test_1, 834, 24, 31, 31), "new ReturnsEmptyValues()").
expr(returns_empty_values_test_1_expr2, method_invocation, returns_empty_values_test_1_stmt1, expression, range(returns_empty_values_test_1, 2245, 84, 57, 57), "assertFalse(((Iterable)values.returnValueFor(Iterable.class)).iterator().hasNext())").
expr(returns_empty_values_test_1_expr5, parenthesized_expression, returns_empty_values_test_1_expr4, expression, range(returns_empty_values_test_1, 2257, 50, 57, 57), "((Iterable)values.returnValueFor(Iterable.class))").
expr(returns_empty_values_test_1_expr4, method_invocation, returns_empty_values_test_1_expr3, expression, range(returns_empty_values_test_1, 2257, 61, 57, 57), "((Iterable)values.returnValueFor(Iterable.class)).iterator()").
expr(returns_empty_values_test_1_expr3, method_invocation, returns_empty_values_test_1_expr2, (arguments, 0), range(returns_empty_values_test_1, 2257, 71, 57, 57), "((Iterable)values.returnValueFor(Iterable.class)).iterator().hasNext()").
expr(returns_empty_values_test_1_expr6, cast_expression, returns_empty_values_test_1_expr5, expression, range(returns_empty_values_test_1, 2258, 48, 57, 57), "(Iterable)values.returnValueFor(Iterable.class)").
expr(returns_empty_values_test_1_expr7, method_invocation, returns_empty_values_test_1_expr6, expression, range(returns_empty_values_test_1, 2269, 37, 57, 57), "values.returnValueFor(Iterable.class)").
expr(returns_empty_values_test_1_expr8, type_literal, returns_empty_values_test_1_expr7, (arguments, 0), range(returns_empty_values_test_1, 2291, 14, 57, 57), "Iterable.class").
%iterables_1 - org.mockito.internal.util.collections.Iterables
expr(iterables_1_expr1, class_instance_creation, iterables_1_code7, initializer, range(iterables_1, 338, 19, 16, 16), "new LinkedList<T>()").
expr(iterables_1_expr2, method_invocation, iterables_1_stmt2, expression, range(iterables_1, 373, 20, 17, 17), "in.hasMoreElements()").
%sets_1 - org.mockito.internal.util.collections.Sets
expr(sets_1_expr1, method_invocation, sets_1_stmt1, expression, range(sets_1, 535, 34, 20, 20), "HashCodeAndEqualsSafeSet.of(mocks)").
%primitives_1 - org.mockito.internal.util.Primitives
expr(primitives_1_expr1, class_instance_creation, primitives_1_code15, initializer, range(primitives_1, 330, 33, 13, 13), "new HashMap<Class<?>,Class<?>>()").
expr(primitives_1_expr2, class_instance_creation, primitives_1_code34, initializer, range(primitives_1, 450, 31, 14, 14), "new HashMap<Class<?>,Object>()").
expr(primitives_1_expr3, method_invocation, primitives_1_stmt1, expression, range(primitives_1, 1519, 53, 42, 42), "PRIMITIVE_OR_WRAPPER_DEFAULT_VALUES.containsKey(type)").
expr(primitives_1_expr4, method_invocation, primitives_1_stmt2, expression, range(primitives_1, 2128, 48, 58, 58), "PRIMITIVE_TYPES.put(Boolean.class,Boolean.TYPE)").
expr(primitives_1_expr5, type_literal, primitives_1_expr4, (arguments, 0), range(primitives_1, 2148, 13, 58, 58), "Boolean.class").
expr(primitives_1_expr6, method_invocation, primitives_1_stmt3, expression, range(primitives_1, 2186, 52, 59, 59), "PRIMITIVE_TYPES.put(Character.class,Character.TYPE)").
expr(primitives_1_expr7, type_literal, primitives_1_expr6, (arguments, 0), range(primitives_1, 2206, 15, 59, 59), "Character.class").
expr(primitives_1_expr8, method_invocation, primitives_1_stmt4, expression, range(primitives_1, 2248, 42, 60, 60), "PRIMITIVE_TYPES.put(Byte.class,Byte.TYPE)").
expr(primitives_1_expr9, type_literal, primitives_1_expr8, (arguments, 0), range(primitives_1, 2268, 10, 60, 60), "Byte.class").
expr(primitives_1_expr10, method_invocation, primitives_1_stmt5, expression, range(primitives_1, 2300, 44, 61, 61), "PRIMITIVE_TYPES.put(Short.class,Short.TYPE)").
expr(primitives_1_expr11, type_literal, primitives_1_expr10, (arguments, 0), range(primitives_1, 2320, 11, 61, 61), "Short.class").
expr(primitives_1_expr12, method_invocation, primitives_1_stmt6, expression, range(primitives_1, 2354, 48, 62, 62), "PRIMITIVE_TYPES.put(Integer.class,Integer.TYPE)").
expr(primitives_1_expr13, type_literal, primitives_1_expr12, (arguments, 0), range(primitives_1, 2374, 13, 62, 62), "Integer.class").
expr(primitives_1_expr14, method_invocation, primitives_1_stmt7, expression, range(primitives_1, 2412, 42, 63, 63), "PRIMITIVE_TYPES.put(Long.class,Long.TYPE)").
expr(primitives_1_expr15, type_literal, primitives_1_expr14, (arguments, 0), range(primitives_1, 2432, 10, 63, 63), "Long.class").
expr(primitives_1_expr16, method_invocation, primitives_1_stmt8, expression, range(primitives_1, 2464, 44, 64, 64), "PRIMITIVE_TYPES.put(Float.class,Float.TYPE)").
expr(primitives_1_expr17, type_literal, primitives_1_expr16, (arguments, 0), range(primitives_1, 2484, 11, 64, 64), "Float.class").
expr(primitives_1_expr18, method_invocation, primitives_1_stmt9, expression, range(primitives_1, 2518, 46, 65, 65), "PRIMITIVE_TYPES.put(Double.class,Double.TYPE)").
expr(primitives_1_expr19, type_literal, primitives_1_expr18, (arguments, 0), range(primitives_1, 2538, 12, 65, 65), "Double.class").
expr(primitives_1_expr20, method_invocation, primitives_1_stmt10, expression, range(primitives_1, 2594, 61, 69, 69), "PRIMITIVE_OR_WRAPPER_DEFAULT_VALUES.put(Boolean.class,false)").
expr(primitives_1_expr21, type_literal, primitives_1_expr20, (arguments, 0), range(primitives_1, 2634, 13, 69, 69), "Boolean.class").
expr(primitives_1_expr22, method_invocation, primitives_1_stmt11, expression, range(primitives_1, 2665, 66, 70, 70), "PRIMITIVE_OR_WRAPPER_DEFAULT_VALUES.put(Character.class,'\\u0000')").
expr(primitives_1_expr23, type_literal, primitives_1_expr22, (arguments, 0), range(primitives_1, 2705, 15, 70, 70), "Character.class").
expr(primitives_1_expr24, method_invocation, primitives_1_stmt12, expression, range(primitives_1, 2741, 61, 71, 71), "PRIMITIVE_OR_WRAPPER_DEFAULT_VALUES.put(Byte.class,(byte)0)").
expr(primitives_1_expr25, type_literal, primitives_1_expr24, (arguments, 0), range(primitives_1, 2781, 10, 71, 71), "Byte.class").
expr(primitives_1_expr26, cast_expression, primitives_1_expr24, (arguments, 1), range(primitives_1, 2793, 8, 71, 71), "(byte)0").
expr(primitives_1_expr27, method_invocation, primitives_1_stmt13, expression, range(primitives_1, 2812, 63, 72, 72), "PRIMITIVE_OR_WRAPPER_DEFAULT_VALUES.put(Short.class,(short)0)").
expr(primitives_1_expr28, type_literal, primitives_1_expr27, (arguments, 0), range(primitives_1, 2852, 11, 72, 72), "Short.class").
expr(primitives_1_expr29, cast_expression, primitives_1_expr27, (arguments, 1), range(primitives_1, 2865, 9, 72, 72), "(short)0").
expr(primitives_1_expr30, method_invocation, primitives_1_stmt14, expression, range(primitives_1, 2885, 57, 73, 73), "PRIMITIVE_OR_WRAPPER_DEFAULT_VALUES.put(Integer.class,0)").
expr(primitives_1_expr31, type_literal, primitives_1_expr30, (arguments, 0), range(primitives_1, 2925, 13, 73, 73), "Integer.class").
expr(primitives_1_expr32, method_invocation, primitives_1_stmt15, expression, range(primitives_1, 2952, 55, 74, 74), "PRIMITIVE_OR_WRAPPER_DEFAULT_VALUES.put(Long.class,0L)").
expr(primitives_1_expr33, type_literal, primitives_1_expr32, (arguments, 0), range(primitives_1, 2992, 10, 74, 74), "Long.class").
expr(primitives_1_expr34, method_invocation, primitives_1_stmt16, expression, range(primitives_1, 3017, 56, 75, 75), "PRIMITIVE_OR_WRAPPER_DEFAULT_VALUES.put(Float.class,0F)").
expr(primitives_1_expr35, type_literal, primitives_1_expr34, (arguments, 0), range(primitives_1, 3057, 11, 75, 75), "Float.class").
expr(primitives_1_expr36, method_invocation, primitives_1_stmt17, expression, range(primitives_1, 3083, 57, 76, 76), "PRIMITIVE_OR_WRAPPER_DEFAULT_VALUES.put(Double.class,0D)").
expr(primitives_1_expr37, type_literal, primitives_1_expr36, (arguments, 0), range(primitives_1, 3123, 12, 76, 76), "Double.class").
expr(primitives_1_expr38, method_invocation, primitives_1_stmt18, expression, range(primitives_1, 3151, 61, 78, 78), "PRIMITIVE_OR_WRAPPER_DEFAULT_VALUES.put(boolean.class,false)").
expr(primitives_1_expr39, type_literal, primitives_1_expr38, (arguments, 0), range(primitives_1, 3191, 13, 78, 78), "boolean.class").
expr(primitives_1_expr40, method_invocation, primitives_1_stmt19, expression, range(primitives_1, 3222, 61, 79, 79), "PRIMITIVE_OR_WRAPPER_DEFAULT_VALUES.put(char.class,'\\u0000')").
expr(primitives_1_expr41, type_literal, primitives_1_expr40, (arguments, 0), range(primitives_1, 3262, 10, 79, 79), "char.class").
expr(primitives_1_expr42, method_invocation, primitives_1_stmt20, expression, range(primitives_1, 3293, 61, 80, 80), "PRIMITIVE_OR_WRAPPER_DEFAULT_VALUES.put(byte.class,(byte)0)").
expr(primitives_1_expr43, type_literal, primitives_1_expr42, (arguments, 0), range(primitives_1, 3333, 10, 80, 80), "byte.class").
expr(primitives_1_expr44, cast_expression, primitives_1_expr42, (arguments, 1), range(primitives_1, 3345, 8, 80, 80), "(byte)0").
expr(primitives_1_expr45, method_invocation, primitives_1_stmt21, expression, range(primitives_1, 3364, 63, 81, 81), "PRIMITIVE_OR_WRAPPER_DEFAULT_VALUES.put(short.class,(short)0)").
expr(primitives_1_expr46, type_literal, primitives_1_expr45, (arguments, 0), range(primitives_1, 3404, 11, 81, 81), "short.class").
expr(primitives_1_expr47, cast_expression, primitives_1_expr45, (arguments, 1), range(primitives_1, 3417, 9, 81, 81), "(short)0").
expr(primitives_1_expr48, method_invocation, primitives_1_stmt22, expression, range(primitives_1, 3437, 53, 82, 82), "PRIMITIVE_OR_WRAPPER_DEFAULT_VALUES.put(int.class,0)").
expr(primitives_1_expr49, type_literal, primitives_1_expr48, (arguments, 0), range(primitives_1, 3477, 9, 82, 82), "int.class").
expr(primitives_1_expr50, method_invocation, primitives_1_stmt23, expression, range(primitives_1, 3500, 55, 83, 83), "PRIMITIVE_OR_WRAPPER_DEFAULT_VALUES.put(long.class,0L)").
expr(primitives_1_expr51, type_literal, primitives_1_expr50, (arguments, 0), range(primitives_1, 3540, 10, 83, 83), "long.class").
expr(primitives_1_expr52, method_invocation, primitives_1_stmt24, expression, range(primitives_1, 3565, 56, 84, 84), "PRIMITIVE_OR_WRAPPER_DEFAULT_VALUES.put(float.class,0F)").
expr(primitives_1_expr53, type_literal, primitives_1_expr52, (arguments, 0), range(primitives_1, 3605, 11, 84, 84), "float.class").
expr(primitives_1_expr54, method_invocation, primitives_1_stmt25, expression, range(primitives_1, 3631, 57, 85, 85), "PRIMITIVE_OR_WRAPPER_DEFAULT_VALUES.put(double.class,0D)").
expr(primitives_1_expr55, type_literal, primitives_1_expr54, (arguments, 0), range(primitives_1, 3671, 12, 85, 85), "double.class").
%final_mock_candidate_filter_1 - org.mockito.internal.configuration.injection.filter.FinalMockCandidateFilter
%checks_1 - org.mockito.internal.util.Checks
expr(checks_1_expr1, infix_expression, checks_1_stmt1, expression, range(checks_1, 294, 13, 14, 14), "value == null").
expr(checks_1_expr2, method_invocation, checks_1_stmt3, expression, range(checks_1, 537, 39, 21, 21), "checkNotNull(iterable,checkedIterable)").
%test_base_1 - org.mockitoutil.TestBase
expr(test_base_1_expr1, method_invocation, test_base_1_stmt1, expression, range(test_base_1, 1261, 63, 42, 42), "ConfigurationAccess.getConfig().overrideCleansStackTrace(false)").
expr(test_base_1_expr2, method_invocation, test_base_1_expr1, expression, range(test_base_1, 1261, 31, 42, 42), "ConfigurationAccess.getConfig()").
expr(test_base_1_expr4, method_invocation, test_base_1_expr3, expression, range(test_base_1, 1334, 31, 43, 43), "ConfigurationAccess.getConfig()").
expr(test_base_1_expr3, method_invocation, test_base_1_stmt2, expression, range(test_base_1, 1334, 59, 43, 43), "ConfigurationAccess.getConfig().overrideDefaultAnswer(null)").
expr(test_base_1_expr5, class_instance_creation, test_base_1_code7, initializer, range(test_base_1, 1423, 17, 44, 44), "new StateMaster()").
expr(test_base_1_expr6, method_invocation, test_base_1_stmt4, expression, range(test_base_1, 1608, 16, 47, 47), "state.validate()").
expr(test_base_1_expr7, method_invocation, test_base_1_stmt5, expression, range(test_base_1, 1762, 13, 49, 49), "state.reset()").
expr(test_base_1_expr8, method_invocation, test_base_1_stmt6, expression, range(test_base_1, 1829, 34, 54, 54), "MockitoAnnotations.initMocks(this)").
expr(test_base_1_expr9, this_expression, test_base_1_expr8, (arguments, 0), range(test_base_1, 1858, 4, 54, 54), "this").
%configuration_access_1 - org.mockito.internal.configuration.ConfigurationAccess
expr(configuration_access_1_expr1, cast_expression, configuration_access_1_stmt1, expression, range(configuration_access_1, 325, 56, 12, 12), "(MockitoConfiguration)new GlobalConfiguration().getIt()").
expr(configuration_access_1_expr2, method_invocation, configuration_access_1_expr1, expression, range(configuration_access_1, 348, 33, 12, 12), "new GlobalConfiguration().getIt()").
expr(configuration_access_1_expr3, class_instance_creation, configuration_access_1_expr2, expression, range(configuration_access_1, 348, 25, 12, 12), "new GlobalConfiguration()").
%default_stack_trace_cleaner_provider_1 - org.mockito.internal.exceptions.stacktrace.DefaultStackTraceCleanerProvider
%injecting_annotation_engine_1 - org.mockito.internal.configuration.InjectingAnnotationEngine
expr(injecting_annotation_engine_1_expr1, class_instance_creation, injecting_annotation_engine_1_code9, initializer, range(injecting_annotation_engine_1, 796, 29, 24, 24), "new DefaultAnnotationEngine()").
expr(injecting_annotation_engine_1_expr2, class_instance_creation, injecting_annotation_engine_1_code15, initializer, range(injecting_annotation_engine_1, 884, 25, 25, 25), "new SpyAnnotationEngine()").
expr(injecting_annotation_engine_1_expr3, method_invocation, injecting_annotation_engine_1_stmt1, expression, range(injecting_annotation_engine_1, 1965, 68, 55, 55), "processIndependentAnnotations(testInstance.getClass(),testInstance)").
expr(injecting_annotation_engine_1_expr4, method_invocation, injecting_annotation_engine_1_expr3, (arguments, 0), range(injecting_annotation_engine_1, 1995, 23, 55, 55), "testInstance.getClass()").
expr(injecting_annotation_engine_1_expr5, method_invocation, injecting_annotation_engine_1_stmt2, expression, range(injecting_annotation_engine_1, 2043, 57, 56, 56), "processInjectMocks(testInstance.getClass(),testInstance)").
expr(injecting_annotation_engine_1_expr6, method_invocation, injecting_annotation_engine_1_expr5, (arguments, 0), range(injecting_annotation_engine_1, 2062, 23, 56, 56), "testInstance.getClass()").
expr(injecting_annotation_engine_1_expr7, infix_expression, injecting_annotation_engine_1_stmt4, expression, range(injecting_annotation_engine_1, 2250, 28, 61, 61), "classContext != Object.class").
expr(injecting_annotation_engine_1_expr8, type_literal, injecting_annotation_engine_1_expr7, right_operand, range(injecting_annotation_engine_1, 2266, 12, 61, 61), "Object.class").
expr(injecting_annotation_engine_1_expr9, method_invocation, injecting_annotation_engine_1_stmt5, expression, range(injecting_annotation_engine_1, 2294, 25, 62, 62), "injectMocks(testInstance)").
expr(injecting_annotation_engine_1_expr10, assignment, injecting_annotation_engine_1_stmt6, expression, range(injecting_annotation_engine_1, 2333, 43, 63, 63), "classContext=classContext.getSuperclass()").
expr(injecting_annotation_engine_1_expr11, method_invocation, injecting_annotation_engine_1_expr10, right_hand_side, range(injecting_annotation_engine_1, 2348, 28, 63, 63), "classContext.getSuperclass()").
expr(injecting_annotation_engine_1_expr12, infix_expression, injecting_annotation_engine_1_stmt8, expression, range(injecting_annotation_engine_1, 2547, 28, 69, 69), "classContext != Object.class").
expr(injecting_annotation_engine_1_expr13, type_literal, injecting_annotation_engine_1_expr12, right_operand, range(injecting_annotation_engine_1, 2563, 12, 69, 69), "Object.class").
expr(injecting_annotation_engine_1_expr14, method_invocation, injecting_annotation_engine_1_stmt9, expression, range(injecting_annotation_engine_1, 2645, 44, 71, 71), "delegate.process(classContext,testInstance)").
expr(injecting_annotation_engine_1_expr15, method_invocation, injecting_annotation_engine_1_stmt10, expression, range(injecting_annotation_engine_1, 2742, 55, 73, 73), "spyAnnotationEngine.process(classContext,testInstance)").
expr(injecting_annotation_engine_1_expr16, assignment, injecting_annotation_engine_1_stmt11, expression, range(injecting_annotation_engine_1, 2812, 43, 75, 75), "classContext=classContext.getSuperclass()").
expr(injecting_annotation_engine_1_expr17, method_invocation, injecting_annotation_engine_1_expr16, right_hand_side, range(injecting_annotation_engine_1, 2827, 28, 75, 75), "classContext.getSuperclass()").
expr(injecting_annotation_engine_1_expr18, method_invocation, injecting_annotation_engine_1_code34, initializer, range(injecting_annotation_engine_1, 3278, 28, 90, 90), "testClassInstance.getClass()").
expr(injecting_annotation_engine_1_expr19, class_instance_creation, injecting_annotation_engine_1_code38, initializer, range(injecting_annotation_engine_1, 3349, 20, 91, 91), "new HashSet<Field>()").
expr(injecting_annotation_engine_1_expr20, method_invocation, injecting_annotation_engine_1_code45, initializer, range(injecting_annotation_engine_1, 3399, 20, 92, 92), "newMockSafeHashSet()").
expr(injecting_annotation_engine_1_expr21, infix_expression, injecting_annotation_engine_1_stmt15, expression, range(injecting_annotation_engine_1, 3445, 21, 94, 94), "clazz != Object.class").
expr(injecting_annotation_engine_1_expr22, type_literal, injecting_annotation_engine_1_expr21, right_operand, range(injecting_annotation_engine_1, 3454, 12, 94, 94), "Object.class").
expr(injecting_annotation_engine_1_expr23, method_invocation, injecting_annotation_engine_1_stmt16, expression, range(injecting_annotation_engine_1, 3482, 56, 95, 95), "new InjectMocksScanner(clazz).addTo(mockDependentFields)").
expr(injecting_annotation_engine_1_expr24, class_instance_creation, injecting_annotation_engine_1_expr23, expression, range(injecting_annotation_engine_1, 3482, 29, 95, 95), "new InjectMocksScanner(clazz)").
expr(injecting_annotation_engine_1_expr25, method_invocation, injecting_annotation_engine_1_stmt17, expression, range(injecting_annotation_engine_1, 3552, 65, 96, 96), "new MockScanner(testClassInstance,clazz).addPreparedMocks(mocks)").
expr(injecting_annotation_engine_1_expr26, class_instance_creation, injecting_annotation_engine_1_expr25, expression, range(injecting_annotation_engine_1, 3552, 41, 96, 96), "new MockScanner(testClassInstance,clazz)").
expr(injecting_annotation_engine_1_expr27, assignment, injecting_annotation_engine_1_stmt18, expression, range(injecting_annotation_engine_1, 3631, 29, 97, 97), "clazz=clazz.getSuperclass()").
expr(injecting_annotation_engine_1_expr28, method_invocation, injecting_annotation_engine_1_expr27, right_hand_side, range(injecting_annotation_engine_1, 3639, 21, 97, 97), "clazz.getSuperclass()").
expr(injecting_annotation_engine_1_expr29, method_invocation, injecting_annotation_engine_1_stmt19, expression, range(injecting_annotation_engine_1, 3689, 95, 100, 100), "new DefaultInjectionEngine().injectMocksOnFields(mockDependentFields,mocks,testClassInstance)").
expr(injecting_annotation_engine_1_expr30, class_instance_creation, injecting_annotation_engine_1_expr29, expression, range(injecting_annotation_engine_1, 3689, 28, 100, 100), "new DefaultInjectionEngine()").
%field_reader_1 - org.mockito.internal.util.reflection.FieldReader
expr(field_reader_1_expr1, class_instance_creation, field_reader_1_code6, initializer, range(field_reader_1, 371, 26, 15, 15), "new AccessibilityChanger()").
expr(field_reader_1_expr4, this_expression, f_target_384, expression, range(field_reader_1, 461, 4, 18, 18), "this").
expr(field_reader_1_expr3, field_access, field_reader_1_expr2, left_hand_side, range(field_reader_1, 461, 11, 18, 18), "this.target").
expr(field_reader_1_expr2, assignment, field_reader_1_stmt1, expression, range(field_reader_1, 461, 20, 18, 18), "this.target=target").
expr(field_reader_1_expr7, this_expression, f_field_385, expression, range(field_reader_1, 491, 4, 19, 19), "this").
expr(field_reader_1_expr6, field_access, field_reader_1_expr5, left_hand_side, range(field_reader_1, 491, 10, 19, 19), "this.field").
expr(field_reader_1_expr5, assignment, field_reader_1_stmt2, expression, range(field_reader_1, 491, 18, 19, 19), "this.field=field").
expr(field_reader_1_expr8, method_invocation, field_reader_1_stmt3, expression, range(field_reader_1, 519, 27, 20, 20), "changer.enableAccess(field)").
expr(field_reader_1_expr9, method_invocation, field_reader_1_stmt5, expression, range(field_reader_1, 687, 17, 29, 29), "field.get(target)").
%property_and_setter_injection_1 - org.mockito.internal.configuration.injection.PropertyAndSetterInjection
expr(property_and_setter_injection_1_expr1, class_instance_creation, property_and_setter_injection_1_code9, initializer, range(property_and_setter_injection_1, 2496, 90, 62, 62), "new TypeBasedCandidateFilter(new NameBasedCandidateFilter(new FinalMockCandidateFilter()))").
expr(property_and_setter_injection_1_expr2, class_instance_creation, property_and_setter_injection_1_expr1, (arguments, 0), range(property_and_setter_injection_1, 2525, 60, 62, 62), "new NameBasedCandidateFilter(new FinalMockCandidateFilter())").
expr(property_and_setter_injection_1_expr3, class_instance_creation, property_and_setter_injection_1_expr2, (arguments, 0), range(property_and_setter_injection_1, 2554, 30, 62, 62), "new FinalMockCandidateFilter()").
expr(property_and_setter_injection_1_expr4, class_instance_creation, property_and_setter_injection_1_code19, initializer, range(property_and_setter_injection_1, 2649, 195, 64, 68), "new ListUtil.Filter<Field>(){\n  public boolean isOut(  Field object){\n    return Modifier.isFinal(object.getModifiers()) || Modifier.isStatic(object.getModifiers());\n  }\n}").
%type_based_candidate_filter_1 - org.mockito.internal.configuration.injection.filter.TypeBasedCandidateFilter
expr(type_based_candidate_filter_1_expr1, assignment, type_based_candidate_filter_1_stmt1, expression, range(type_based_candidate_filter_1, 470, 16, 17, 17), "this.next=next").
expr(type_based_candidate_filter_1_expr2, field_access, type_based_candidate_filter_1_expr1, left_hand_side, range(type_based_candidate_filter_1, 470, 9, 17, 17), "this.next").
expr(type_based_candidate_filter_1_expr3, this_expression, f_next_251, expression, range(type_based_candidate_filter_1, 470, 4, 17, 17), "this").
%thread_safe_mocking_progress_1 - org.mockito.internal.progress.ThreadSafeMockingProgress
expr(thread_safe_mocking_progress_1_expr1, class_instance_creation, thread_safe_mocking_progress_1_code13, initializer, range(thread_safe_mocking_progress_1, 608, 34, 18, 18), "new ThreadLocal<MockingProgress>()").
expr(thread_safe_mocking_progress_1_expr2, infix_expression, thread_safe_mocking_progress_1_stmt1, expression, range(thread_safe_mocking_progress_1, 701, 29, 21, 21), "mockingProgress.get() == null").
expr(thread_safe_mocking_progress_1_expr3, method_invocation, thread_safe_mocking_progress_1_expr2, left_operand, range(thread_safe_mocking_progress_1, 701, 21, 21, 21), "mockingProgress.get()").
expr(thread_safe_mocking_progress_1_expr4, method_invocation, thread_safe_mocking_progress_1_stmt2, expression, range(thread_safe_mocking_progress_1, 746, 46, 22, 22), "mockingProgress.set(new MockingProgressImpl())").
expr(thread_safe_mocking_progress_1_expr5, class_instance_creation, thread_safe_mocking_progress_1_expr4, (arguments, 0), range(thread_safe_mocking_progress_1, 766, 25, 22, 22), "new MockingProgressImpl()").
expr(thread_safe_mocking_progress_1_expr6, method_invocation, thread_safe_mocking_progress_1_stmt3, expression, range(thread_safe_mocking_progress_1, 819, 21, 24, 24), "mockingProgress.get()").
expr(thread_safe_mocking_progress_1_expr8, method_invocation, thread_safe_mocking_progress_1_expr7, expression, range(thread_safe_mocking_progress_1, 1478, 14, 48, 48), "threadSafely()").
expr(thread_safe_mocking_progress_1_expr7, method_invocation, thread_safe_mocking_progress_1_stmt4, expression, range(thread_safe_mocking_progress_1, 1478, 30, 48, 48), "threadSafely().validateState()").
expr(thread_safe_mocking_progress_1_expr10, method_invocation, thread_safe_mocking_progress_1_expr9, expression, range(thread_safe_mocking_progress_1, 1755, 14, 60, 60), "threadSafely()").
expr(thread_safe_mocking_progress_1_expr9, method_invocation, thread_safe_mocking_progress_1_stmt5, expression, range(thread_safe_mocking_progress_1, 1755, 22, 60, 60), "threadSafely().reset()").
expr(thread_safe_mocking_progress_1_expr11, method_invocation, thread_safe_mocking_progress_1_stmt6, expression, range(thread_safe_mocking_progress_1, 1835, 37, 64, 64), "threadSafely().resetOngoingStubbing()").
expr(thread_safe_mocking_progress_1_expr12, method_invocation, thread_safe_mocking_progress_1_expr11, expression, range(thread_safe_mocking_progress_1, 1835, 14, 64, 64), "threadSafely()").
%mock_annotation_processor_1 - org.mockito.internal.configuration.MockAnnotationProcessor
%argument_matcher_storage_impl_1 - org.mockito.internal.progress.ArgumentMatcherStorageImpl
expr(argument_matcher_storage_impl_1_expr1, class_instance_creation, argument_matcher_storage_impl_1_code11, initializer, range(argument_matcher_storage_impl_1, 810, 29, 26, 26), "new Stack<LocalizedMatcher>()").
expr(argument_matcher_storage_impl_1_expr2, prefix_expression, argument_matcher_storage_impl_1_stmt1, expression, range(argument_matcher_storage_impl_1, 4051, 23, 112, 112), "!matcherStack.isEmpty()").
expr(argument_matcher_storage_impl_1_expr3, method_invocation, argument_matcher_storage_impl_1_expr2, operand, range(argument_matcher_storage_impl_1, 4052, 22, 112, 112), "matcherStack.isEmpty()").
expr(argument_matcher_storage_impl_1_expr4, method_invocation, argument_matcher_storage_impl_1_stmt2, expression, range(argument_matcher_storage_impl_1, 4416, 20, 123, 123), "matcherStack.clear()").
%spy_on_injected_fields_handler_1 - org.mockito.internal.configuration.injection.SpyOnInjectedFieldsHandler
%mockito_configuration_1 - org.mockito.configuration.MockitoConfiguration
expr(mockito_configuration_1_expr3, this_expression, f_overridden_default_answer_17, expression, range(mockito_configuration_1, 850, 4, 24, 24), "this").
expr(mockito_configuration_1_expr1, assignment, mockito_configuration_1_stmt1, expression, range(mockito_configuration_1, 850, 44, 24, 24), "this.overriddenDefaultAnswer=defaultAnswer").
expr(mockito_configuration_1_expr2, field_access, mockito_configuration_1_expr1, left_hand_side, range(mockito_configuration_1, 850, 28, 24, 24), "this.overriddenDefaultAnswer").
expr(mockito_configuration_1_expr4, assignment, mockito_configuration_1_stmt2, expression, range(mockito_configuration_1, 1044, 40, 29, 29), "this.cleansStackTrace=cleansStackTrace").
expr(mockito_configuration_1_expr5, field_access, mockito_configuration_1_expr4, left_hand_side, range(mockito_configuration_1, 1044, 21, 29, 29), "this.cleansStackTrace").
expr(mockito_configuration_1_expr6, this_expression, f_cleans_stack_trace_21, expression, range(mockito_configuration_1, 1044, 4, 29, 29), "this").
expr(mockito_configuration_1_expr7, infix_expression, mockito_configuration_1_stmt3, expression, range(mockito_configuration_1, 1779, 29, 53, 53), "this.overriddenEngine != null").
expr(mockito_configuration_1_expr8, field_access, mockito_configuration_1_expr7, left_operand, range(mockito_configuration_1, 1779, 21, 53, 53), "this.overriddenEngine").
expr(mockito_configuration_1_expr9, this_expression, f_overridden_engine_24, expression, range(mockito_configuration_1, 1779, 4, 53, 53), "this").
expr(mockito_configuration_1_expr10, class_instance_creation, mockito_configuration_1_stmt4, expression, range(mockito_configuration_1, 1879, 409, 56, 65), "new InjectingAnnotationEngine(){\n  @Override public Object createMockFor(  Annotation annotation,  Field field){\n    if (annotation instanceof SmartMock) {\n      return Mockito.mock(field.getType(),Mockito.RETURNS_SMART_NULLS);\n    }\n else {\n      return super.createMockFor(annotation,field);\n    }\n  }\n}").
%hash_code_and_equals_safe_set_1 - org.mockito.internal.util.collections.HashCodeAndEqualsSafeSet
expr(hash_code_and_equals_safe_set_1_expr1, class_instance_creation, hash_code_and_equals_safe_set_1_code13, initializer, range(hash_code_and_equals_safe_set_1, 1000, 43, 34, 34), "new HashSet<HashCodeAndEqualsMockWrapper>()").
expr(hash_code_and_equals_safe_set_1_expr2, class_instance_creation, hash_code_and_equals_safe_set_1_stmt1, expression, range(hash_code_and_equals_safe_set_1, 1102, 415, 37, 51), "new Iterator<Object>(){\n  private final Iterator<HashCodeAndEqualsMockWrapper> iterator=backingHashSet.iterator();\n  public boolean hasNext(){\n    return iterator.hasNext();\n  }\n  public Object next(){\n    return iterator.next().get();\n  }\n  public void remove(){\n    iterator.remove();\n  }\n}").
expr(hash_code_and_equals_safe_set_1_expr3, method_invocation, hash_code_and_equals_safe_set_1_code28, initializer, range(hash_code_and_equals_safe_set_1, 1203, 25, 38, 38), "backingHashSet.iterator()").
expr(hash_code_and_equals_safe_set_1_expr4, method_invocation, hash_code_and_equals_safe_set_1_stmt2, expression, range(hash_code_and_equals_safe_set_1, 1293, 18, 41, 41), "iterator.hasNext()").
expr(hash_code_and_equals_safe_set_1_expr5, method_invocation, hash_code_and_equals_safe_set_1_stmt3, expression, range(hash_code_and_equals_safe_set_1, 3542, 44, 124, 124), "backingHashSet.addAll(asWrappedMocks(mocks))").
expr(hash_code_and_equals_safe_set_1_expr6, method_invocation, hash_code_and_equals_safe_set_1_expr5, (arguments, 0), range(hash_code_and_equals_safe_set_1, 3564, 21, 124, 124), "asWrappedMocks(mocks)").
expr(hash_code_and_equals_safe_set_1_expr7, method_invocation, hash_code_and_equals_safe_set_1_stmt4, expression, range(hash_code_and_equals_safe_set_1, 3814, 71, 132, 132), "Checks.checkNotNull(mocks,\"Passed collection should notify() be null\")").
expr(hash_code_and_equals_safe_set_1_expr8, class_instance_creation, hash_code_and_equals_safe_set_1_code35, initializer, range(hash_code_and_equals_safe_set_1, 3943, 43, 133, 133), "new HashSet<HashCodeAndEqualsMockWrapper>()").
expr(hash_code_and_equals_safe_set_1_expr9, method_invocation, hash_code_and_equals_safe_set_1_stmt8, expression, range(hash_code_and_equals_safe_set_1, 4378, 24, 146, 146), "of(Arrays.asList(mocks))").
expr(hash_code_and_equals_safe_set_1_expr10, method_invocation, hash_code_and_equals_safe_set_1_expr9, (arguments, 0), range(hash_code_and_equals_safe_set_1, 4381, 20, 146, 146), "Arrays.asList(mocks)").
expr(hash_code_and_equals_safe_set_1_expr11, class_instance_creation, hash_code_and_equals_safe_set_1_code44, initializer, range(hash_code_and_equals_safe_set_1, 4545, 30, 150, 150), "new HashCodeAndEqualsSafeSet()").
expr(hash_code_and_equals_safe_set_1_expr12, infix_expression, hash_code_and_equals_safe_set_1_stmt10, expression, range(hash_code_and_equals_safe_set_1, 4589, 15, 151, 151), "objects != null").
%default_mockito_configuration_1 - org.mockito.configuration.DefaultMockitoConfiguration
expr(default_mockito_configuration_1_expr1, class_instance_creation, default_mockito_configuration_1_stmt1, expression, range(default_mockito_configuration_1, 1393, 31, 39, 39), "new InjectingAnnotationEngine()").
%captor_annotation_processor_1 - org.mockito.internal.configuration.CaptorAnnotationProcessor
%plugin_registry_1 - org.mockito.internal.configuration.plugins.PluginRegistry
expr(plugin_registry_1_expr1, method_invocation, plugin_registry_1_code7, initializer, range(plugin_registry_1, 269, 111, 10, 10), "new PluginLoader(new DefaultPluginSwitch()).loadPlugin(PluginSwitch.class,DefaultPluginSwitch.class.getName())").
expr(plugin_registry_1_expr4, class_instance_creation, plugin_registry_1_expr1, expression, range(plugin_registry_1, 269, 43, 10, 10), "new PluginLoader(new DefaultPluginSwitch())").
expr(plugin_registry_1_expr5, class_instance_creation, plugin_registry_1_expr4, (arguments, 0), range(plugin_registry_1, 286, 25, 10, 10), "new DefaultPluginSwitch()").
expr(plugin_registry_1_expr2, type_literal, plugin_registry_1_expr1, (arguments, 0), range(plugin_registry_1, 324, 18, 10, 10), "PluginSwitch.class").
expr(plugin_registry_1_expr6, type_literal, plugin_registry_1_expr3, expression, range(plugin_registry_1, 344, 25, 10, 10), "DefaultPluginSwitch.class").
expr(plugin_registry_1_expr3, method_invocation, plugin_registry_1_expr1, (arguments, 1), range(plugin_registry_1, 344, 35, 10, 10), "DefaultPluginSwitch.class.getName()").
expr(plugin_registry_1_expr7, method_invocation, plugin_registry_1_code16, initializer, range(plugin_registry_1, 435, 120, 13, 13), "new PluginLoader(pluginSwitch).loadPlugin(MockMaker.class,\"org.mockito.internal.creation.bytebuddy.ByteBuddyMockMaker\")").
expr(plugin_registry_1_expr9, class_instance_creation, plugin_registry_1_expr7, expression, range(plugin_registry_1, 435, 30, 13, 13), "new PluginLoader(pluginSwitch)").
expr(plugin_registry_1_expr8, type_literal, plugin_registry_1_expr7, (arguments, 0), range(plugin_registry_1, 477, 15, 13, 13), "MockMaker.class").
expr(plugin_registry_1_expr12, class_instance_creation, plugin_registry_1_expr10, expression, range(plugin_registry_1, 642, 30, 16, 16), "new PluginLoader(pluginSwitch)").
expr(plugin_registry_1_expr10, method_invocation, plugin_registry_1_code23, initializer, range(plugin_registry_1, 642, 153, 16, 16), "new PluginLoader(pluginSwitch).loadPlugin(StackTraceCleanerProvider.class,\"org.mockito.internal.exceptions.stacktrace.DefaultStackTraceCleanerProvider\")").
expr(plugin_registry_1_expr11, type_literal, plugin_registry_1_expr10, (arguments, 0), range(plugin_registry_1, 684, 31, 16, 16), "StackTraceCleanerProvider.class").
%plugin_finder_1 - org.mockito.internal.configuration.plugins.PluginFinder
expr(plugin_finder_1_expr3, this_expression, f_plugin_switch_279, expression, range(plugin_finder_1, 371, 4, 15, 15), "this").
expr(plugin_finder_1_expr2, field_access, plugin_finder_1_expr1, left_hand_side, range(plugin_finder_1, 371, 17, 15, 15), "this.pluginSwitch").
expr(plugin_finder_1_expr1, assignment, plugin_finder_1_stmt1, expression, range(plugin_finder_1, 371, 32, 15, 15), "this.pluginSwitch=pluginSwitch").
%class_path_loader_1 - org.mockito.internal.configuration.ClassPathLoader
expr(class_path_loader_1_expr1, assignment, class_path_loader_1_stmt2, expression, range(class_path_loader_1, 2588, 69, 68, 68), "configClass=(Class)Class.forName(MOCKITO_CONFIGURATION_CLASS_NAME)").
expr(class_path_loader_1_expr2, cast_expression, class_path_loader_1_expr1, right_hand_side, range(class_path_loader_1, 2602, 55, 68, 68), "(Class)Class.forName(MOCKITO_CONFIGURATION_CLASS_NAME)").
expr(class_path_loader_1_expr3, method_invocation, class_path_loader_1_expr2, expression, range(class_path_loader_1, 2610, 47, 68, 68), "Class.forName(MOCKITO_CONFIGURATION_CLASS_NAME)").
expr(class_path_loader_1_expr4, cast_expression, class_path_loader_1_stmt4, expression, range(class_path_loader_1, 2853, 49, 75, 75), "(IMockitoConfiguration)configClass.newInstance()").
expr(class_path_loader_1_expr5, method_invocation, class_path_loader_1_expr4, expression, range(class_path_loader_1, 2877, 25, 75, 75), "configClass.newInstance()").
%object_methods_guru_1 - org.mockito.internal.util.ObjectMethodsGuru
%plugin_loader_1 - org.mockito.internal.configuration.plugins.PluginLoader
expr(plugin_loader_1_expr1, assignment, plugin_loader_1_stmt1, expression, range(plugin_loader_1, 483, 32, 17, 17), "this.pluginSwitch=pluginSwitch").
expr(plugin_loader_1_expr2, field_access, plugin_loader_1_expr1, left_hand_side, range(plugin_loader_1, 483, 17, 17, 17), "this.pluginSwitch").
expr(plugin_loader_1_expr3, this_expression, f_plugin_switch_283, expression, range(plugin_loader_1, 483, 4, 17, 17), "this").
expr(plugin_loader_1_expr4, method_invocation, plugin_loader_1_code9, initializer, range(plugin_loader_1, 720, 20, 24, 24), "loadImpl(pluginType)").
expr(plugin_loader_1_expr5, infix_expression, plugin_loader_1_stmt3, expression, range(plugin_loader_1, 754, 14, 25, 25), "plugin != null").
expr(plugin_loader_1_expr6, method_invocation, plugin_loader_1_stmt5, expression, range(plugin_loader_1, 1089, 68, 33, 33), "pluginType.cast(Class.forName(defaultPluginClassName).newInstance())").
expr(plugin_loader_1_expr7, method_invocation, plugin_loader_1_expr6, (arguments, 0), range(plugin_loader_1, 1105, 51, 33, 33), "Class.forName(defaultPluginClassName).newInstance()").
expr(plugin_loader_1_expr8, method_invocation, plugin_loader_1_expr7, expression, range(plugin_loader_1, 1105, 37, 33, 33), "Class.forName(defaultPluginClassName)").
expr(plugin_loader_1_expr10, method_invocation, plugin_loader_1_expr9, expression, range(plugin_loader_1, 1687, 22, 46, 46), "Thread.currentThread()").
expr(plugin_loader_1_expr9, method_invocation, plugin_loader_1_code12, initializer, range(plugin_loader_1, 1687, 46, 46, 46), "Thread.currentThread().getContextClassLoader()").
expr(plugin_loader_1_expr11, infix_expression, plugin_loader_1_stmt7, expression, range(plugin_loader_1, 1747, 14, 47, 47), "loader == null").
expr(plugin_loader_1_expr12, assignment, plugin_loader_1_stmt9, expression, range(plugin_loader_1, 1894, 74, 52, 52), "resources=loader.getResources(\"mockito-extensions/\" + service.getName())").
expr(plugin_loader_1_expr13, method_invocation, plugin_loader_1_expr12, right_hand_side, range(plugin_loader_1, 1906, 62, 52, 52), "loader.getResources(\"mockito-extensions/\" + service.getName())").
expr(plugin_loader_1_expr14, infix_expression, plugin_loader_1_expr13, (arguments, 0), range(plugin_loader_1, 1926, 41, 52, 52), "\"mockito-extensions/\" + service.getName()").
expr(plugin_loader_1_expr15, method_invocation, plugin_loader_1_expr14, right_operand, range(plugin_loader_1, 1950, 17, 52, 52), "service.getName()").
expr(plugin_loader_1_expr18, class_instance_creation, plugin_loader_1_expr16, expression, range(plugin_loader_1, 2139, 30, 58, 58), "new PluginFinder(pluginSwitch)").
expr(plugin_loader_1_expr16, method_invocation, plugin_loader_1_code15, initializer, range(plugin_loader_1, 2139, 79, 58, 58), "new PluginFinder(pluginSwitch).findPluginClass(Iterables.toIterable(resources))").
expr(plugin_loader_1_expr17, method_invocation, plugin_loader_1_expr16, (arguments, 0), range(plugin_loader_1, 2186, 31, 58, 58), "Iterables.toIterable(resources)").
expr(plugin_loader_1_expr19, infix_expression, plugin_loader_1_stmt12, expression, range(plugin_loader_1, 2236, 24, 59, 59), "foundPluginClass != null").
%default_injection_engine_1 - org.mockito.internal.configuration.DefaultInjectionEngine
expr(default_injection_engine_1_expr1, method_invocation, default_injection_engine_1_stmt1, expression, range(default_injection_engine_1, 587, 247, 20, 25), "MockInjection.onFields(needingInjection,testClassInstance).withMocks(mocks).tryConstructorInjection().tryPropertyOrFieldInjection().handleSpyAnnotation().apply()").
expr(default_injection_engine_1_expr6, method_invocation, default_injection_engine_1_expr5, expression, range(default_injection_engine_1, 587, 59, 20, 20), "MockInjection.onFields(needingInjection,testClassInstance)").
expr(default_injection_engine_1_expr5, method_invocation, default_injection_engine_1_expr4, expression, range(default_injection_engine_1, 587, 93, 20, 21), "MockInjection.onFields(needingInjection,testClassInstance).withMocks(mocks)").
expr(default_injection_engine_1_expr4, method_invocation, default_injection_engine_1_expr3, expression, range(default_injection_engine_1, 587, 136, 20, 22), "MockInjection.onFields(needingInjection,testClassInstance).withMocks(mocks).tryConstructorInjection()").
expr(default_injection_engine_1_expr3, method_invocation, default_injection_engine_1_expr2, expression, range(default_injection_engine_1, 587, 183, 20, 23), "MockInjection.onFields(needingInjection,testClassInstance).withMocks(mocks).tryConstructorInjection().tryPropertyOrFieldInjection()").
expr(default_injection_engine_1_expr2, method_invocation, default_injection_engine_1_expr1, expression, range(default_injection_engine_1, 587, 222, 20, 24), "MockInjection.onFields(needingInjection,testClassInstance).withMocks(mocks).tryConstructorInjection().tryPropertyOrFieldInjection().handleSpyAnnotation()").
%mock_injection_1 - org.mockito.internal.configuration.injection.MockInjection
expr(mock_injection_1_expr1, class_instance_creation, mock_injection_1_stmt1, expression, range(mock_injection_1, 1409, 44, 48, 48), "new OngoingMockInjection(fields,ofInstance)").
expr(mock_injection_1_expr2, class_instance_creation, mock_injection_1_code12, initializer, range(mock_injection_1, 1618, 20, 55, 55), "new HashSet<Field>()").
expr(mock_injection_1_expr3, method_invocation, mock_injection_1_code22, initializer, range(mock_injection_1, 1682, 20, 56, 56), "newMockSafeHashSet()").
expr(mock_injection_1_expr4, method_invocation, mock_injection_1_code27, initializer, range(mock_injection_1, 1811, 27, 58, 58), "MockInjectionStrategy.nop()").
expr(mock_injection_1_expr5, method_invocation, mock_injection_1_code32, initializer, range(mock_injection_1, 1910, 27, 59, 59), "MockInjectionStrategy.nop()").
expr(mock_injection_1_expr6, assignment, mock_injection_1_stmt2, expression, range(mock_injection_1, 2171, 56, 66, 66), "this.fieldOwner=checkNotNull(fieldOwner,\"fieldOwner\")").
expr(mock_injection_1_expr7, field_access, mock_injection_1_expr6, left_hand_side, range(mock_injection_1, 2171, 15, 66, 66), "this.fieldOwner").
expr(mock_injection_1_expr9, this_expression, f_field_owner_205, expression, range(mock_injection_1, 2171, 4, 66, 66), "this").
expr(mock_injection_1_expr8, method_invocation, mock_injection_1_expr6, right_hand_side, range(mock_injection_1, 2189, 38, 66, 66), "checkNotNull(fieldOwner,\"fieldOwner\")").
expr(mock_injection_1_expr13, this_expression, f_fields_197, expression, range(mock_injection_1, 2241, 4, 67, 67), "this").
expr(mock_injection_1_expr12, field_access, mock_injection_1_expr10, expression, range(mock_injection_1, 2241, 11, 67, 67), "this.fields").
expr(mock_injection_1_expr10, method_invocation, mock_injection_1_stmt3, expression, range(mock_injection_1, 2241, 55, 67, 67), "this.fields.addAll(checkItemsNotNull(fields,\"fields\"))").
expr(mock_injection_1_expr11, method_invocation, mock_injection_1_expr10, (arguments, 0), range(mock_injection_1, 2260, 35, 67, 67), "checkItemsNotNull(fields,\"fields\")").
expr(mock_injection_1_expr14, method_invocation, mock_injection_1_stmt4, expression, range(mock_injection_1, 2388, 47, 71, 71), "this.mocks.addAll(checkNotNull(mocks,\"mocks\"))").
expr(mock_injection_1_expr17, this_expression, f_mocks_198, expression, range(mock_injection_1, 2388, 4, 71, 71), "this").
expr(mock_injection_1_expr16, field_access, mock_injection_1_expr14, expression, range(mock_injection_1, 2388, 10, 71, 71), "this.mocks").
expr(mock_injection_1_expr15, method_invocation, mock_injection_1_expr14, (arguments, 0), range(mock_injection_1, 2406, 28, 71, 71), "checkNotNull(mocks,\"mocks\")").
expr(mock_injection_1_expr18, this_expression, mock_injection_1_stmt5, expression, range(mock_injection_1, 2456, 4, 72, 72), "this").
expr(mock_injection_1_expr19, method_invocation, mock_injection_1_stmt6, expression, range(mock_injection_1, 2549, 55, 76, 76), "injectionStrategies.thenTry(new ConstructorInjection())").
expr(mock_injection_1_expr20, class_instance_creation, mock_injection_1_expr19, (arguments, 0), range(mock_injection_1, 2577, 26, 76, 76), "new ConstructorInjection()").
expr(mock_injection_1_expr21, this_expression, mock_injection_1_stmt7, expression, range(mock_injection_1, 2625, 4, 77, 77), "this").
expr(mock_injection_1_expr22, method_invocation, mock_injection_1_stmt8, expression, range(mock_injection_1, 2722, 61, 81, 81), "injectionStrategies.thenTry(new PropertyAndSetterInjection())").
expr(mock_injection_1_expr23, class_instance_creation, mock_injection_1_expr22, (arguments, 0), range(mock_injection_1, 2750, 32, 81, 81), "new PropertyAndSetterInjection()").
expr(mock_injection_1_expr24, this_expression, mock_injection_1_stmt9, expression, range(mock_injection_1, 2804, 4, 82, 82), "this").
expr(mock_injection_1_expr25, method_invocation, mock_injection_1_stmt10, expression, range(mock_injection_1, 2893, 65, 86, 86), "postInjectionStrategies.thenTry(new SpyOnInjectedFieldsHandler())").
expr(mock_injection_1_expr26, class_instance_creation, mock_injection_1_expr25, (arguments, 0), range(mock_injection_1, 2925, 32, 86, 86), "new SpyOnInjectedFieldsHandler()").
expr(mock_injection_1_expr27, this_expression, mock_injection_1_stmt11, expression, range(mock_injection_1, 2979, 4, 87, 87), "this").
%mockito_annotations_1 - org.mockito.MockitoAnnotations
expr(mockito_annotations_1_expr1, infix_expression, mockito_annotations_1_stmt1, expression, range(mockito_annotations_1, 3559, 17, 90, 90), "testClass == null").
expr(mockito_annotations_1_expr2, method_invocation, mockito_annotations_1_code5, initializer, range(mockito_annotations_1, 3795, 47, 94, 94), "new GlobalConfiguration().getAnnotationEngine()").
expr(mockito_annotations_1_expr3, class_instance_creation, mockito_annotations_1_expr2, expression, range(mockito_annotations_1, 3795, 25, 94, 94), "new GlobalConfiguration()").
expr(mockito_annotations_1_expr4, method_invocation, mockito_annotations_1_code10, initializer, range(mockito_annotations_1, 3869, 20, 95, 95), "testClass.getClass()").
expr(mockito_annotations_1_expr5, infix_expression, mockito_annotations_1_stmt4, expression, range(mockito_annotations_1, 3983, 97, 98, 98), "annotationEngine.getClass() != new DefaultMockitoConfiguration().getAnnotationEngine().getClass()").
expr(mockito_annotations_1_expr6, method_invocation, mockito_annotations_1_expr5, left_operand, range(mockito_annotations_1, 3983, 27, 98, 98), "annotationEngine.getClass()").
expr(mockito_annotations_1_expr7, method_invocation, mockito_annotations_1_expr5, right_operand, range(mockito_annotations_1, 4014, 66, 98, 98), "new DefaultMockitoConfiguration().getAnnotationEngine().getClass()").
expr(mockito_annotations_1_expr8, method_invocation, mockito_annotations_1_expr7, expression, range(mockito_annotations_1, 4014, 55, 98, 98), "new DefaultMockitoConfiguration().getAnnotationEngine()").
expr(mockito_annotations_1_expr9, class_instance_creation, mockito_annotations_1_expr8, expression, range(mockito_annotations_1, 4014, 33, 98, 98), "new DefaultMockitoConfiguration()").
expr(mockito_annotations_1_expr10, infix_expression, mockito_annotations_1_stmt5, expression, range(mockito_annotations_1, 4287, 21, 101, 101), "clazz != Object.class").
expr(mockito_annotations_1_expr11, type_literal, mockito_annotations_1_expr10, right_operand, range(mockito_annotations_1, 4296, 12, 101, 101), "Object.class").
expr(mockito_annotations_1_expr12, method_invocation, mockito_annotations_1_stmt6, expression, range(mockito_annotations_1, 4328, 53, 102, 102), "scanDeprecatedWay(annotationEngine,testClass,clazz)").
expr(mockito_annotations_1_expr13, assignment, mockito_annotations_1_stmt7, expression, range(mockito_annotations_1, 4399, 29, 103, 103), "clazz=clazz.getSuperclass()").
expr(mockito_annotations_1_expr14, method_invocation, mockito_annotations_1_expr13, right_hand_side, range(mockito_annotations_1, 4407, 21, 103, 103), "clazz.getSuperclass()").
expr(mockito_annotations_1_expr15, method_invocation, mockito_annotations_1_stmt8, expression, range(mockito_annotations_1, 4498, 57, 108, 108), "annotationEngine.process(testClass.getClass(),testClass)").
expr(mockito_annotations_1_expr16, method_invocation, mockito_annotations_1_expr15, (arguments, 0), range(mockito_annotations_1, 4523, 20, 108, 108), "testClass.getClass()").
expr(mockito_annotations_1_expr17, method_invocation, mockito_annotations_1_code17, initializer, range(mockito_annotations_1, 4694, 25, 112, 112), "clazz.getDeclaredFields()").
expr(mockito_annotations_1_expr18, method_invocation, mockito_annotations_1_stmt11, expression, range(mockito_annotations_1, 4771, 66, 115, 115), "processAnnotationDeprecatedWay(annotationEngine,testClass,field)").
expr(mockito_annotations_1_expr19, method_invocation, mockito_annotations_1_stmt13, expression, range(mockito_annotations_1, 5085, 22, 122, 122), "field.getAnnotations()").
%constructor_injection_1 - org.mockito.internal.configuration.injection.ConstructorInjection
%spy_annotation_engine_1 - org.mockito.internal.configuration.SpyAnnotationEngine
expr(spy_annotation_engine_1_expr1, method_invocation, spy_annotation_engine_1_code9, initializer, range(spy_annotation_engine_1, 1545, 27, 48, 48), "context.getDeclaredFields()").
expr(spy_annotation_engine_1_expr3, method_invocation, spy_annotation_engine_1_expr2, left_operand, range(spy_annotation_engine_1, 1627, 36, 50, 50), "field.isAnnotationPresent(Spy.class)").
expr(spy_annotation_engine_1_expr2, infix_expression, spy_annotation_engine_1_stmt3, expression, range(spy_annotation_engine_1, 1627, 85, 50, 50), "field.isAnnotationPresent(Spy.class) && !field.isAnnotationPresent(InjectMocks.class)").
expr(spy_annotation_engine_1_expr4, type_literal, spy_annotation_engine_1_expr3, (arguments, 0), range(spy_annotation_engine_1, 1653, 9, 50, 50), "Spy.class").
expr(spy_annotation_engine_1_expr5, prefix_expression, spy_annotation_engine_1_expr2, right_operand, range(spy_annotation_engine_1, 1667, 45, 50, 50), "!field.isAnnotationPresent(InjectMocks.class)").
expr(spy_annotation_engine_1_expr6, method_invocation, spy_annotation_engine_1_expr5, operand, range(spy_annotation_engine_1, 1668, 44, 50, 50), "field.isAnnotationPresent(InjectMocks.class)").
expr(spy_annotation_engine_1_expr7, type_literal, spy_annotation_engine_1_expr6, (arguments, 0), range(spy_annotation_engine_1, 1694, 17, 50, 50), "InjectMocks.class").
%mock_scanner_1 - org.mockito.internal.configuration.injection.scanner.MockScanner
expr(mock_scanner_1_expr1, class_instance_creation, mock_scanner_1_code7, initializer, range(mock_scanner_1, 621, 14, 22, 22), "new MockUtil()").
expr(mock_scanner_1_expr2, assignment, mock_scanner_1_stmt1, expression, range(mock_scanner_1, 940, 24, 33, 33), "this.instance=instance").
expr(mock_scanner_1_expr4, this_expression, f_instance_266, expression, range(mock_scanner_1, 940, 4, 33, 33), "this").
expr(mock_scanner_1_expr3, field_access, mock_scanner_1_expr2, left_hand_side, range(mock_scanner_1, 940, 13, 33, 33), "this.instance").
expr(mock_scanner_1_expr6, field_access, mock_scanner_1_expr5, left_hand_side, range(mock_scanner_1, 974, 10, 34, 34), "this.clazz").
expr(mock_scanner_1_expr5, assignment, mock_scanner_1_stmt2, expression, range(mock_scanner_1, 974, 18, 34, 34), "this.clazz=clazz").
expr(mock_scanner_1_expr7, this_expression, f_clazz_267, expression, range(mock_scanner_1, 974, 4, 34, 34), "this").
expr(mock_scanner_1_expr8, method_invocation, mock_scanner_1_stmt3, expression, range(mock_scanner_1, 1313, 20, 47, 47), "mocks.addAll(scan())").
expr(mock_scanner_1_expr9, method_invocation, mock_scanner_1_expr8, (arguments, 0), range(mock_scanner_1, 1326, 6, 47, 47), "scan()").
expr(mock_scanner_1_expr10, method_invocation, mock_scanner_1_code22, initializer, range(mock_scanner_1, 1585, 20, 56, 56), "newMockSafeHashSet()").
expr(mock_scanner_1_expr11, method_invocation, mock_scanner_1_stmt5, expression, range(mock_scanner_1, 1634, 25, 57, 57), "clazz.getDeclaredFields()").
expr(mock_scanner_1_expr12, class_instance_creation, mock_scanner_1_code26, initializer, range(mock_scanner_1, 1735, 32, 59, 59), "new FieldReader(instance,field)").
expr(mock_scanner_1_expr13, method_invocation, mock_scanner_1_code29, initializer, range(mock_scanner_1, 1804, 39, 61, 61), "preparedMock(fieldReader.read(),field)").
expr(mock_scanner_1_expr14, method_invocation, mock_scanner_1_expr13, (arguments, 0), range(mock_scanner_1, 1817, 18, 61, 61), "fieldReader.read()").
expr(mock_scanner_1_expr15, infix_expression, mock_scanner_1_stmt8, expression, range(mock_scanner_1, 1861, 20, 62, 62), "mockInstance != null").
expr(mock_scanner_1_expr16, method_invocation, mock_scanner_1_stmt10, expression, range(mock_scanner_1, 2055, 29, 70, 70), "isAnnotatedByMockOrSpy(field)").
expr(mock_scanner_1_expr17, method_invocation, mock_scanner_1_stmt11, expression, range(mock_scanner_1, 2136, 21, 72, 72), "isMockOrSpy(instance)").
expr(mock_scanner_1_expr19, infix_expression, mock_scanner_1_expr18, left_operand, range(mock_scanner_1, 2372, 97, 80, 81), "null != field.getAnnotation(Spy.class) || null != field.getAnnotation(Mock.class)").
expr(mock_scanner_1_expr18, infix_expression, mock_scanner_1_stmt13, expression, range(mock_scanner_1, 2372, 175, 80, 82), "null != field.getAnnotation(Spy.class) || null != field.getAnnotation(Mock.class) || null != field.getAnnotation(MockitoAnnotations.Mock.class)").
expr(mock_scanner_1_expr20, infix_expression, mock_scanner_1_expr19, left_operand, range(mock_scanner_1, 2372, 38, 80, 80), "null != field.getAnnotation(Spy.class)").
expr(mock_scanner_1_expr21, method_invocation, mock_scanner_1_expr20, right_operand, range(mock_scanner_1, 2380, 30, 80, 80), "field.getAnnotation(Spy.class)").
expr(mock_scanner_1_expr22, type_literal, mock_scanner_1_expr21, (arguments, 0), range(mock_scanner_1, 2400, 9, 80, 80), "Spy.class").
expr(mock_scanner_1_expr23, infix_expression, mock_scanner_1_expr19, right_operand, range(mock_scanner_1, 2430, 39, 81, 81), "null != field.getAnnotation(Mock.class)").
expr(mock_scanner_1_expr24, method_invocation, mock_scanner_1_expr23, right_operand, range(mock_scanner_1, 2438, 31, 81, 81), "field.getAnnotation(Mock.class)").
expr(mock_scanner_1_expr25, type_literal, mock_scanner_1_expr24, (arguments, 0), range(mock_scanner_1, 2458, 10, 81, 81), "Mock.class").
expr(mock_scanner_1_expr26, infix_expression, mock_scanner_1_expr18, right_operand, range(mock_scanner_1, 2489, 58, 82, 82), "null != field.getAnnotation(MockitoAnnotations.Mock.class)").
expr(mock_scanner_1_expr27, method_invocation, mock_scanner_1_expr26, right_operand, range(mock_scanner_1, 2497, 50, 82, 82), "field.getAnnotation(MockitoAnnotations.Mock.class)").
expr(mock_scanner_1_expr28, type_literal, mock_scanner_1_expr27, (arguments, 0), range(mock_scanner_1, 2517, 29, 82, 82), "MockitoAnnotations.Mock.class").
expr(mock_scanner_1_expr29, infix_expression, mock_scanner_1_stmt14, expression, range(mock_scanner_1, 2622, 69, 86, 87), "mockUtil.isMock(instance) || mockUtil.isSpy(instance)").
expr(mock_scanner_1_expr30, method_invocation, mock_scanner_1_expr29, left_operand, range(mock_scanner_1, 2622, 25, 86, 86), "mockUtil.isMock(instance)").
expr(mock_scanner_1_expr31, method_invocation, mock_scanner_1_expr29, right_operand, range(mock_scanner_1, 2667, 24, 87, 87), "mockUtil.isSpy(instance)").
%returns_empty_values_1 - org.mockito.internal.stubbing.defaultanswers.ReturnsEmptyValues
expr(returns_empty_values_1_expr1, class_instance_creation, returns_empty_values_1_code10, initializer, range(returns_empty_values_1, 1729, 23, 56, 56), "new ObjectMethodsGuru()").
expr(returns_empty_values_1_expr2, class_instance_creation, returns_empty_values_1_code14, initializer, range(returns_empty_values_1, 1778, 14, 57, 57), "new MockUtil()").
expr(returns_empty_values_1_expr3, method_invocation, returns_empty_values_1_stmt1, expression, range(returns_empty_values_1, 3012, 37, 83, 83), "Primitives.isPrimitiveOrWrapper(type)").
expr(returns_empty_values_1_expr4, infix_expression, returns_empty_values_1_stmt2, expression, range(returns_empty_values_1, 3322, 24, 87, 87), "type == Collection.class").
expr(returns_empty_values_1_expr5, type_literal, returns_empty_values_1_expr4, right_operand, range(returns_empty_values_1, 3330, 16, 87, 87), "Collection.class").
expr(returns_empty_values_1_expr6, infix_expression, returns_empty_values_1_stmt3, expression, range(returns_empty_values_1, 3414, 17, 89, 89), "type == Set.class").
expr(returns_empty_values_1_expr7, type_literal, returns_empty_values_1_expr6, right_operand, range(returns_empty_values_1, 3422, 9, 89, 89), "Set.class").
expr(returns_empty_values_1_expr8, infix_expression, returns_empty_values_1_stmt4, expression, range(returns_empty_values_1, 3496, 21, 91, 91), "type == HashSet.class").
expr(returns_empty_values_1_expr9, type_literal, returns_empty_values_1_expr8, right_operand, range(returns_empty_values_1, 3504, 13, 91, 91), "HashSet.class").
expr(returns_empty_values_1_expr10, infix_expression, returns_empty_values_1_stmt5, expression, range(returns_empty_values_1, 3582, 23, 93, 93), "type == SortedSet.class").
expr(returns_empty_values_1_expr11, type_literal, returns_empty_values_1_expr10, right_operand, range(returns_empty_values_1, 3590, 15, 93, 93), "SortedSet.class").
expr(returns_empty_values_1_expr12, infix_expression, returns_empty_values_1_stmt6, expression, range(returns_empty_values_1, 3670, 21, 95, 95), "type == TreeSet.class").
expr(returns_empty_values_1_expr13, type_literal, returns_empty_values_1_expr12, right_operand, range(returns_empty_values_1, 3678, 13, 95, 95), "TreeSet.class").
expr(returns_empty_values_1_expr14, infix_expression, returns_empty_values_1_stmt7, expression, range(returns_empty_values_1, 3756, 27, 97, 97), "type == LinkedHashSet.class").
expr(returns_empty_values_1_expr15, type_literal, returns_empty_values_1_expr14, right_operand, range(returns_empty_values_1, 3764, 19, 97, 97), "LinkedHashSet.class").
expr(returns_empty_values_1_expr16, infix_expression, returns_empty_values_1_stmt8, expression, range(returns_empty_values_1, 3854, 18, 99, 99), "type == List.class").
expr(returns_empty_values_1_expr17, type_literal, returns_empty_values_1_expr16, right_operand, range(returns_empty_values_1, 3862, 10, 99, 99), "List.class").
expr(returns_empty_values_1_expr18, infix_expression, returns_empty_values_1_stmt9, expression, range(returns_empty_values_1, 3940, 24, 101, 101), "type == LinkedList.class").
expr(returns_empty_values_1_expr19, type_literal, returns_empty_values_1_expr18, right_operand, range(returns_empty_values_1, 3948, 16, 101, 101), "LinkedList.class").
expr(returns_empty_values_1_expr20, infix_expression, returns_empty_values_1_stmt10, expression, range(returns_empty_values_1, 4032, 23, 103, 103), "type == ArrayList.class").
expr(returns_empty_values_1_expr21, type_literal, returns_empty_values_1_expr20, right_operand, range(returns_empty_values_1, 4040, 15, 103, 103), "ArrayList.class").
expr(returns_empty_values_1_expr22, infix_expression, returns_empty_values_1_stmt11, expression, range(returns_empty_values_1, 4122, 17, 105, 105), "type == Map.class").
expr(returns_empty_values_1_expr23, type_literal, returns_empty_values_1_expr22, right_operand, range(returns_empty_values_1, 4130, 9, 105, 105), "Map.class").
expr(returns_empty_values_1_expr24, infix_expression, returns_empty_values_1_stmt12, expression, range(returns_empty_values_1, 4212, 21, 107, 107), "type == HashMap.class").
expr(returns_empty_values_1_expr25, type_literal, returns_empty_values_1_expr24, right_operand, range(returns_empty_values_1, 4220, 13, 107, 107), "HashMap.class").
expr(returns_empty_values_1_expr26, infix_expression, returns_empty_values_1_stmt13, expression, range(returns_empty_values_1, 4306, 23, 109, 109), "type == SortedMap.class").
expr(returns_empty_values_1_expr27, type_literal, returns_empty_values_1_expr26, right_operand, range(returns_empty_values_1, 4314, 15, 109, 109), "SortedMap.class").
expr(returns_empty_values_1_expr28, infix_expression, returns_empty_values_1_stmt14, expression, range(returns_empty_values_1, 4402, 21, 111, 111), "type == TreeMap.class").
expr(returns_empty_values_1_expr29, type_literal, returns_empty_values_1_expr28, right_operand, range(returns_empty_values_1, 4410, 13, 111, 111), "TreeMap.class").
expr(returns_empty_values_1_expr30, infix_expression, returns_empty_values_1_stmt15, expression, range(returns_empty_values_1, 4496, 27, 113, 113), "type == LinkedHashMap.class").
expr(returns_empty_values_1_expr31, type_literal, returns_empty_values_1_expr30, right_operand, range(returns_empty_values_1, 4504, 19, 113, 113), "LinkedHashMap.class").
%reporter_1 - org.mockito.exceptions.Reporter
%default_plugin_switch_1 - org.mockito.internal.configuration.plugins.DefaultPluginSwitch
%plugins_1 - org.mockito.internal.configuration.plugins.Plugins
expr(plugins_1_expr1, class_instance_creation, plugins_1_code7, initializer, range(plugins_1, 289, 20, 11, 11), "new PluginRegistry()").
expr(plugins_1_expr2, method_invocation, plugins_1_stmt1, expression, range(plugins_1, 840, 23, 27, 27), "registry.getMockMaker()").
%accessibility_changer_1 - org.mockito.internal.util.reflection.AccessibilityChanger
expr(accessibility_changer_1_expr1, assignment, accessibility_changer_1_stmt1, expression, range(accessibility_changer_1, 822, 47, 29, 29), "wasAccessible=accessibleObject.isAccessible()").
expr(accessibility_changer_1_expr2, method_invocation, accessibility_changer_1_expr1, right_hand_side, range(accessibility_changer_1, 838, 31, 29, 29), "accessibleObject.isAccessible()").
expr(accessibility_changer_1_expr3, method_invocation, accessibility_changer_1_stmt2, expression, range(accessibility_changer_1, 879, 36, 30, 30), "accessibleObject.setAccessible(true)").
%mock_injection_strategy_1 - org.mockito.internal.configuration.injection.MockInjectionStrategy
expr(mock_injection_strategy_1_expr1, class_instance_creation, mock_injection_strategy_1_stmt1, expression, range(mock_injection_strategy_1, 461, 192, 20, 24), "new MockInjectionStrategy(){\n  protected boolean processInjection(  Field field,  Object fieldOwner,  Set<Object> mockCandidates){\n    return false;\n  }\n}").
expr(mock_injection_strategy_1_expr2, infix_expression, mock_injection_strategy_1_stmt2, expression, range(mock_injection_strategy_1, 1072, 20, 41, 41), "nextStrategy != null").
expr(mock_injection_strategy_1_expr3, method_invocation, mock_injection_strategy_1_stmt3, expression, range(mock_injection_strategy_1, 1108, 30, 42, 42), "nextStrategy.thenTry(strategy)").
expr(mock_injection_strategy_1_expr4, assignment, mock_injection_strategy_1_stmt4, expression, range(mock_injection_strategy_1, 1169, 23, 44, 44), "nextStrategy=strategy").
%global_configuration_1 - org.mockito.internal.configuration.GlobalConfiguration
expr(global_configuration_1_expr1, class_instance_creation, global_configuration_1_code10, initializer, range(global_configuration_1, 861, 40, 22, 22), "new ThreadLocal<IMockitoConfiguration>()").
expr(global_configuration_1_expr2, method_invocation, global_configuration_1_stmt1, expression, range(global_configuration_1, 983, 26, 26, 26), "GLOBAL_CONFIGURATION.get()").
expr(global_configuration_1_expr3, infix_expression, global_configuration_1_stmt2, expression, range(global_configuration_1, 1144, 34, 31, 31), "GLOBAL_CONFIGURATION.get() == null").
expr(global_configuration_1_expr4, method_invocation, global_configuration_1_expr3, left_operand, range(global_configuration_1, 1144, 26, 31, 31), "GLOBAL_CONFIGURATION.get()").
expr(global_configuration_1_expr5, method_invocation, global_configuration_1_stmt3, expression, range(global_configuration_1, 1194, 40, 32, 32), "GLOBAL_CONFIGURATION.set(createConfig())").
expr(global_configuration_1_expr6, method_invocation, global_configuration_1_expr5, (arguments, 0), range(global_configuration_1, 1219, 14, 32, 32), "createConfig()").
expr(global_configuration_1_expr7, class_instance_creation, global_configuration_1_code19, initializer, range(global_configuration_1, 1357, 33, 37, 37), "new DefaultMockitoConfiguration()").
expr(global_configuration_1_expr8, method_invocation, global_configuration_1_code22, initializer, range(global_configuration_1, 1431, 41, 38, 38), "new ClassPathLoader().loadConfiguration()").
expr(global_configuration_1_expr9, class_instance_creation, global_configuration_1_expr8, expression, range(global_configuration_1, 1431, 21, 38, 38), "new ClassPathLoader()").
expr(global_configuration_1_expr10, infix_expression, global_configuration_1_stmt6, expression, range(global_configuration_1, 1486, 14, 39, 39), "config != null").
expr(global_configuration_1_expr11, class_instance_creation, global_configuration_1_stmt8, expression, range(global_configuration_1, 1650, 25, 47, 47), "new GlobalConfiguration()").
expr(global_configuration_1_expr13, method_invocation, global_configuration_1_expr12, expression, range(global_configuration_1, 1863, 26, 55, 55), "GLOBAL_CONFIGURATION.get()").
expr(global_configuration_1_expr12, method_invocation, global_configuration_1_stmt9, expression, range(global_configuration_1, 1863, 48, 55, 55), "GLOBAL_CONFIGURATION.get().getAnnotationEngine()").
%default_annotation_engine_1 - org.mockito.internal.configuration.DefaultAnnotationEngine
expr(default_annotation_engine_1_expr1, class_instance_creation, default_annotation_engine_1_code15, initializer, range(default_annotation_engine_1, 1043, 71, 30, 30), "new HashMap<Class<? extends Annotation>,FieldAnnotationProcessor<?>>()").
expr(default_annotation_engine_1_expr2, method_invocation, default_annotation_engine_1_stmt1, expression, range(default_annotation_engine_1, 1164, 70, 33, 33), "registerAnnotationProcessor(Mock.class,new MockAnnotationProcessor())").
expr(default_annotation_engine_1_expr3, type_literal, default_annotation_engine_1_expr2, (arguments, 0), range(default_annotation_engine_1, 1192, 10, 33, 33), "Mock.class").
expr(default_annotation_engine_1_expr4, class_instance_creation, default_annotation_engine_1_expr2, (arguments, 1), range(default_annotation_engine_1, 1204, 29, 33, 33), "new MockAnnotationProcessor()").
expr(default_annotation_engine_1_expr5, method_invocation, default_annotation_engine_1_stmt2, expression, range(default_annotation_engine_1, 1244, 107, 34, 34), "registerAnnotationProcessor(MockitoAnnotations.Mock.class,new MockitoAnnotationsMockAnnotationProcessor())").
expr(default_annotation_engine_1_expr6, type_literal, default_annotation_engine_1_expr5, (arguments, 0), range(default_annotation_engine_1, 1272, 29, 34, 34), "MockitoAnnotations.Mock.class").
expr(default_annotation_engine_1_expr7, class_instance_creation, default_annotation_engine_1_expr5, (arguments, 1), range(default_annotation_engine_1, 1303, 47, 34, 34), "new MockitoAnnotationsMockAnnotationProcessor()").
expr(default_annotation_engine_1_expr8, method_invocation, default_annotation_engine_1_stmt3, expression, range(default_annotation_engine_1, 1361, 74, 35, 35), "registerAnnotationProcessor(Captor.class,new CaptorAnnotationProcessor())").
expr(default_annotation_engine_1_expr9, type_literal, default_annotation_engine_1_expr8, (arguments, 0), range(default_annotation_engine_1, 1389, 12, 35, 35), "Captor.class").
expr(default_annotation_engine_1_expr10, class_instance_creation, default_annotation_engine_1_expr8, (arguments, 1), range(default_annotation_engine_1, 1403, 31, 35, 35), "new CaptorAnnotationProcessor()").
expr(default_annotation_engine_1_expr11, method_invocation, default_annotation_engine_1_stmt4, expression, range(default_annotation_engine_1, 2388, 69, 58, 58), "annotationProcessorMap.put(annotationClass,fieldAnnotationProcessor)").
expr(default_annotation_engine_1_expr12, method_invocation, default_annotation_engine_1_code38, initializer, range(default_annotation_engine_1, 2554, 25, 62, 62), "clazz.getDeclaredFields()").
expr(default_annotation_engine_1_expr13, method_invocation, default_annotation_engine_1_stmt8, expression, range(default_annotation_engine_1, 2703, 22, 65, 65), "field.getAnnotations()").
%name_based_candidate_filter_1 - org.mockito.internal.configuration.injection.filter.NameBasedCandidateFilter
expr(name_based_candidate_filter_1_expr1, class_instance_creation, name_based_candidate_filter_1_code7, initializer, range(name_based_candidate_filter_1, 492, 14, 16, 16), "new MockUtil()").
expr(name_based_candidate_filter_1_expr3, field_access, name_based_candidate_filter_1_expr2, left_hand_side, range(name_based_candidate_filter_1, 581, 9, 19, 19), "this.next").
expr(name_based_candidate_filter_1_expr2, assignment, name_based_candidate_filter_1_stmt1, expression, range(name_based_candidate_filter_1, 581, 16, 19, 19), "this.next=next").
expr(name_based_candidate_filter_1_expr4, this_expression, f_next_246, expression, range(name_based_candidate_filter_1, 581, 4, 19, 19), "this").
%state_master_1 - org.mockito.StateMaster
expr(state_master_1_expr1, class_instance_creation, state_master_1_code8, initializer, range(state_master_1, 302, 31, 12, 12), "new ThreadSafeMockingProgress()").
expr(state_master_1_expr2, method_invocation, state_master_1_stmt1, expression, range(state_master_1, 370, 23, 15, 15), "mockingProgress.reset()").
expr(state_master_1_expr3, method_invocation, state_master_1_stmt2, expression, range(state_master_1, 403, 38, 16, 16), "mockingProgress.resetOngoingStubbing()").
expr(state_master_1_expr4, method_invocation, state_master_1_stmt3, expression, range(state_master_1, 491, 31, 20, 20), "mockingProgress.validateState()").
%mocking_progress_impl_1 - org.mockito.internal.progress.MockingProgressImpl
expr(mocking_progress_impl_1_expr1, class_instance_creation, mocking_progress_impl_1_code9, initializer, range(mocking_progress_impl_1, 759, 14, 21, 21), "new Reporter()").
expr(mocking_progress_impl_1_expr2, class_instance_creation, mocking_progress_impl_1_code15, initializer, range(mocking_progress_impl_1, 841, 32, 22, 22), "new ArgumentMatcherStorageImpl()").
expr(mocking_progress_impl_1_expr3, assignment, mocking_progress_impl_1_stmt1, expression, range(mocking_progress_impl_1, 1707, 23, 49, 49), "iOngoingStubbing=null").
expr(mocking_progress_impl_1_expr4, method_invocation, mocking_progress_impl_1_stmt2, expression, range(mocking_progress_impl_1, 2158, 19, 68, 68), "validateMostStuff()").
expr(mocking_progress_impl_1_expr5, infix_expression, mocking_progress_impl_1_stmt3, expression, range(mocking_progress_impl_1, 2229, 26, 71, 71), "stubbingInProgress != null").
expr(mocking_progress_impl_1_expr6, method_invocation, mocking_progress_impl_1_stmt4, expression, range(mocking_progress_impl_1, 2666, 30, 81, 81), "GlobalConfiguration.validate()").
expr(mocking_progress_impl_1_expr7, infix_expression, mocking_progress_impl_1_stmt5, expression, range(mocking_progress_impl_1, 2711, 24, 83, 83), "verificationMode != null").
expr(mocking_progress_impl_1_expr9, method_invocation, mocking_progress_impl_1_expr8, expression, range(mocking_progress_impl_1, 2923, 27, 89, 89), "getArgumentMatcherStorage()").
expr(mocking_progress_impl_1_expr8, method_invocation, mocking_progress_impl_1_stmt6, expression, range(mocking_progress_impl_1, 2923, 43, 89, 89), "getArgumentMatcherStorage().validateState()").
expr(mocking_progress_impl_1_expr10, assignment, mocking_progress_impl_1_stmt7, expression, range(mocking_progress_impl_1, 3318, 25, 103, 103), "stubbingInProgress=null").
expr(mocking_progress_impl_1_expr11, assignment, mocking_progress_impl_1_stmt8, expression, range(mocking_progress_impl_1, 3353, 23, 104, 104), "verificationMode=null").
expr(mocking_progress_impl_1_expr13, method_invocation, mocking_progress_impl_1_expr12, expression, range(mocking_progress_impl_1, 3386, 27, 105, 105), "getArgumentMatcherStorage()").
expr(mocking_progress_impl_1_expr12, method_invocation, mocking_progress_impl_1_stmt9, expression, range(mocking_progress_impl_1, 3386, 35, 105, 105), "getArgumentMatcherStorage().reset()").
%mock_util_1 - org.mockito.internal.util.MockUtil
expr(mock_util_1_expr1, method_invocation, mock_util_1_code9, initializer, range(mock_util_1, 832, 22, 24, 24), "Plugins.getMockMaker()").
expr(mock_util_1_expr2, method_invocation, mock_util_1_stmt1, expression, range(mock_util_1, 2425, 19, 66, 66), "isMockitoMock(mock)").
expr(mock_util_1_expr3, infix_expression, mock_util_1_stmt2, expression, range(mock_util_1, 2508, 93, 70, 70), "isMockitoMock(mock) && getMockSettings(mock).getDefaultAnswer() == Mockito.CALLS_REAL_METHODS").
expr(mock_util_1_expr4, method_invocation, mock_util_1_expr3, left_operand, range(mock_util_1, 2508, 19, 70, 70), "isMockitoMock(mock)").
expr(mock_util_1_expr7, method_invocation, mock_util_1_expr6, expression, range(mock_util_1, 2531, 21, 70, 70), "getMockSettings(mock)").
expr(mock_util_1_expr5, infix_expression, mock_util_1_expr3, right_operand, range(mock_util_1, 2531, 70, 70, 70), "getMockSettings(mock).getDefaultAnswer() == Mockito.CALLS_REAL_METHODS").
expr(mock_util_1_expr6, method_invocation, mock_util_1_expr5, left_operand, range(mock_util_1, 2531, 40, 70, 70), "getMockSettings(mock).getDefaultAnswer()").
expr(mock_util_1_expr8, infix_expression, mock_util_1_stmt3, expression, range(mock_util_1, 2673, 34, 74, 74), "mockMaker.getHandler(mock) != null").
expr(mock_util_1_expr9, method_invocation, mock_util_1_expr8, left_operand, range(mock_util_1, 2673, 26, 74, 74), "mockMaker.getHandler(mock)").
%mockito_annotations_mock_annotation_processor_1 - org.mockito.internal.configuration.MockitoAnnotationsMockAnnotationProcessor
%inject_mocks_scanner_1 - org.mockito.internal.configuration.injection.scanner.InjectMocksScanner
expr(inject_mocks_scanner_1_expr2, field_access, inject_mocks_scanner_1_expr1, left_hand_side, range(inject_mocks_scanner_1, 793, 10, 30, 30), "this.clazz").
expr(inject_mocks_scanner_1_expr3, this_expression, f_clazz_256, expression, range(inject_mocks_scanner_1, 793, 4, 30, 30), "this").
expr(inject_mocks_scanner_1_expr1, assignment, inject_mocks_scanner_1_stmt1, expression, range(inject_mocks_scanner_1, 793, 18, 30, 30), "this.clazz=clazz").
expr(inject_mocks_scanner_1_expr4, method_invocation, inject_mocks_scanner_1_stmt2, expression, range(inject_mocks_scanner_1, 1047, 34, 40, 40), "mockDependentFields.addAll(scan())").
expr(inject_mocks_scanner_1_expr5, method_invocation, inject_mocks_scanner_1_expr4, (arguments, 0), range(inject_mocks_scanner_1, 1074, 6, 40, 40), "scan()").
expr(inject_mocks_scanner_1_expr6, class_instance_creation, inject_mocks_scanner_1_code14, initializer, range(inject_mocks_scanner_1, 1279, 20, 49, 49), "new HashSet<Field>()").
expr(inject_mocks_scanner_1_expr7, method_invocation, inject_mocks_scanner_1_code21, initializer, range(inject_mocks_scanner_1, 1326, 25, 50, 50), "clazz.getDeclaredFields()").
expr(inject_mocks_scanner_1_expr8, infix_expression, inject_mocks_scanner_1_stmt6, expression, range(inject_mocks_scanner_1, 1406, 46, 52, 52), "null != field.getAnnotation(InjectMocks.class)").
expr(inject_mocks_scanner_1_expr9, method_invocation, inject_mocks_scanner_1_expr8, right_operand, range(inject_mocks_scanner_1, 1414, 38, 52, 52), "field.getAnnotation(InjectMocks.class)").
expr(inject_mocks_scanner_1_expr10, type_literal, inject_mocks_scanner_1_expr9, (arguments, 0), range(inject_mocks_scanner_1, 1434, 17, 52, 52), "InjectMocks.class").

%%% Names
%returns_empty_values_test_1 - org.mockito.internal.stubbing.defaultanswers.ReturnsEmptyValuesTest
name(t_returns_empty_values_test_29, simple_name, returns_empty_values_test_1_code2, name, range(returns_empty_values_test_1, 759, 22, 29, 29), 'ReturnsEmptyValuesTest').
name(f_values_326, simple_name, returns_empty_values_test_1_code7, name, range(returns_empty_values_test_1, 825, 6, 31, 31), 'values').
name(m_assert_false_290, simple_name, returns_empty_values_test_1_expr2, name, range(returns_empty_values_test_1, 2245, 11, 57, 57), 'assertFalse').
name(f_values_326, simple_name, returns_empty_values_test_1_expr7, expression, range(returns_empty_values_test_1, 2269, 6, 57, 57), 'values').
name(m_return_value_for_285, simple_name, returns_empty_values_test_1_expr7, name, range(returns_empty_values_test_1, 2276, 14, 57, 57), 'returnValueFor').
name(m_iterator_292, simple_name, returns_empty_values_test_1_expr4, name, range(returns_empty_values_test_1, 2308, 8, 57, 57), 'iterator').
name(m_has_next_291, simple_name, returns_empty_values_test_1_expr3, name, range(returns_empty_values_test_1, 2319, 7, 57, 57), 'hasNext').
%iterables_1 - org.mockito.internal.util.collections.Iterables
name(v_out_374, simple_name, iterables_1_code7, name, range(iterables_1, 332, 3, 16, 16), 'out').
name(p_in_373, simple_name, iterables_1_expr2, expression, range(iterables_1, 373, 2, 17, 17), 'in').
name(m_has_more_elements_344, simple_name, iterables_1_expr2, name, range(iterables_1, 376, 15, 17, 17), 'hasMoreElements').
name(v_out_374, simple_name, iterables_1_stmt3, expression, range(iterables_1, 461, 3, 20, 20), 'out').
%sets_1 - org.mockito.internal.util.collections.Sets
name(t_hash_code_and_equals_safe_set_42, simple_name, sets_1_expr1, expression, range(sets_1, 535, 24, 20, 20), 'HashCodeAndEqualsSafeSet').
name(m_of_339, simple_name, sets_1_expr1, name, range(sets_1, 560, 2, 20, 20), 'of').
name(p_mocks_376, simple_name, sets_1_expr1, (arguments, 0), range(sets_1, 563, 5, 20, 20), 'mocks').
%primitives_1 - org.mockito.internal.util.Primitives
name(f_primitive_types_349, simple_name, primitives_1_code15, name, range(primitives_1, 312, 15, 13, 13), 'PRIMITIVE_TYPES').
name(f_primitive_or_wrapper_default_values_350, simple_name, primitives_1_code34, name, range(primitives_1, 412, 35, 14, 14), 'PRIMITIVE_OR_WRAPPER_DEFAULT_VALUES').
name(f_primitive_or_wrapper_default_values_350, simple_name, primitives_1_expr3, expression, range(primitives_1, 1519, 35, 42, 42), 'PRIMITIVE_OR_WRAPPER_DEFAULT_VALUES').
name(m_contains_key_312, simple_name, primitives_1_expr3, name, range(primitives_1, 1555, 11, 42, 42), 'containsKey').
name(p_type_352, simple_name, primitives_1_expr3, (arguments, 0), range(primitives_1, 1567, 4, 42, 42), 'type').
name(f_primitive_types_349, simple_name, primitives_1_expr4, expression, range(primitives_1, 2128, 15, 58, 58), 'PRIMITIVE_TYPES').
name(m_put_126, simple_name, primitives_1_expr4, name, range(primitives_1, 2144, 3, 58, 58), 'put').
name(q_type_2, qualified_name, primitives_1_expr4, (arguments, 1), range(primitives_1, 2163, 12, 58, 58), 'Boolean.TYPE').
name(t_boolean_34, simple_name, q_type_2, qualifier, range(primitives_1, 2163, 7, 58, 58), 'Boolean').
name(f_primitive_types_349, simple_name, primitives_1_expr6, expression, range(primitives_1, 2186, 15, 59, 59), 'PRIMITIVE_TYPES').
name(m_put_126, simple_name, primitives_1_expr6, name, range(primitives_1, 2202, 3, 59, 59), 'put').
name(q_type_3, qualified_name, primitives_1_expr6, (arguments, 1), range(primitives_1, 2223, 14, 59, 59), 'Character.TYPE').
name(t_character_35, simple_name, q_type_3, qualifier, range(primitives_1, 2223, 9, 59, 59), 'Character').
name(f_primitive_types_349, simple_name, primitives_1_expr8, expression, range(primitives_1, 2248, 15, 60, 60), 'PRIMITIVE_TYPES').
name(m_put_126, simple_name, primitives_1_expr8, name, range(primitives_1, 2264, 3, 60, 60), 'put').
name(t_byte_36, simple_name, q_type_4, qualifier, range(primitives_1, 2280, 4, 60, 60), 'Byte').
name(q_type_4, qualified_name, primitives_1_expr8, (arguments, 1), range(primitives_1, 2280, 9, 60, 60), 'Byte.TYPE').
name(f_primitive_types_349, simple_name, primitives_1_expr10, expression, range(primitives_1, 2300, 15, 61, 61), 'PRIMITIVE_TYPES').
name(m_put_126, simple_name, primitives_1_expr10, name, range(primitives_1, 2316, 3, 61, 61), 'put').
name(q_type_5, qualified_name, primitives_1_expr10, (arguments, 1), range(primitives_1, 2333, 10, 61, 61), 'Short.TYPE').
name(t_short_37, simple_name, q_type_5, qualifier, range(primitives_1, 2333, 5, 61, 61), 'Short').
name(f_primitive_types_349, simple_name, primitives_1_expr12, expression, range(primitives_1, 2354, 15, 62, 62), 'PRIMITIVE_TYPES').
name(m_put_126, simple_name, primitives_1_expr12, name, range(primitives_1, 2370, 3, 62, 62), 'put').
name(t_integer_38, simple_name, q_type_6, qualifier, range(primitives_1, 2389, 7, 62, 62), 'Integer').
name(q_type_6, qualified_name, primitives_1_expr12, (arguments, 1), range(primitives_1, 2389, 12, 62, 62), 'Integer.TYPE').
name(f_primitive_types_349, simple_name, primitives_1_expr14, expression, range(primitives_1, 2412, 15, 63, 63), 'PRIMITIVE_TYPES').
name(m_put_126, simple_name, primitives_1_expr14, name, range(primitives_1, 2428, 3, 63, 63), 'put').
name(q_type_7, qualified_name, primitives_1_expr14, (arguments, 1), range(primitives_1, 2444, 9, 63, 63), 'Long.TYPE').
name(t_long_39, simple_name, q_type_7, qualifier, range(primitives_1, 2444, 4, 63, 63), 'Long').
name(f_primitive_types_349, simple_name, primitives_1_expr16, expression, range(primitives_1, 2464, 15, 64, 64), 'PRIMITIVE_TYPES').
name(m_put_126, simple_name, primitives_1_expr16, name, range(primitives_1, 2480, 3, 64, 64), 'put').
name(q_type_8, qualified_name, primitives_1_expr16, (arguments, 1), range(primitives_1, 2497, 10, 64, 64), 'Float.TYPE').
name(t_float_40, simple_name, q_type_8, qualifier, range(primitives_1, 2497, 5, 64, 64), 'Float').
name(f_primitive_types_349, simple_name, primitives_1_expr18, expression, range(primitives_1, 2518, 15, 65, 65), 'PRIMITIVE_TYPES').
name(m_put_126, simple_name, primitives_1_expr18, name, range(primitives_1, 2534, 3, 65, 65), 'put').
name(t_double_41, simple_name, q_type_9, qualifier, range(primitives_1, 2552, 6, 65, 65), 'Double').
name(q_type_9, qualified_name, primitives_1_expr18, (arguments, 1), range(primitives_1, 2552, 11, 65, 65), 'Double.TYPE').
name(f_primitive_or_wrapper_default_values_350, simple_name, primitives_1_expr20, expression, range(primitives_1, 2594, 35, 69, 69), 'PRIMITIVE_OR_WRAPPER_DEFAULT_VALUES').
name(m_put_126, simple_name, primitives_1_expr20, name, range(primitives_1, 2630, 3, 69, 69), 'put').
name(f_primitive_or_wrapper_default_values_350, simple_name, primitives_1_expr22, expression, range(primitives_1, 2665, 35, 70, 70), 'PRIMITIVE_OR_WRAPPER_DEFAULT_VALUES').
name(m_put_126, simple_name, primitives_1_expr22, name, range(primitives_1, 2701, 3, 70, 70), 'put').
name(f_primitive_or_wrapper_default_values_350, simple_name, primitives_1_expr24, expression, range(primitives_1, 2741, 35, 71, 71), 'PRIMITIVE_OR_WRAPPER_DEFAULT_VALUES').
name(m_put_126, simple_name, primitives_1_expr24, name, range(primitives_1, 2777, 3, 71, 71), 'put').
name(f_primitive_or_wrapper_default_values_350, simple_name, primitives_1_expr27, expression, range(primitives_1, 2812, 35, 72, 72), 'PRIMITIVE_OR_WRAPPER_DEFAULT_VALUES').
name(m_put_126, simple_name, primitives_1_expr27, name, range(primitives_1, 2848, 3, 72, 72), 'put').
name(f_primitive_or_wrapper_default_values_350, simple_name, primitives_1_expr30, expression, range(primitives_1, 2885, 35, 73, 73), 'PRIMITIVE_OR_WRAPPER_DEFAULT_VALUES').
name(m_put_126, simple_name, primitives_1_expr30, name, range(primitives_1, 2921, 3, 73, 73), 'put').
name(f_primitive_or_wrapper_default_values_350, simple_name, primitives_1_expr32, expression, range(primitives_1, 2952, 35, 74, 74), 'PRIMITIVE_OR_WRAPPER_DEFAULT_VALUES').
name(m_put_126, simple_name, primitives_1_expr32, name, range(primitives_1, 2988, 3, 74, 74), 'put').
name(f_primitive_or_wrapper_default_values_350, simple_name, primitives_1_expr34, expression, range(primitives_1, 3017, 35, 75, 75), 'PRIMITIVE_OR_WRAPPER_DEFAULT_VALUES').
name(m_put_126, simple_name, primitives_1_expr34, name, range(primitives_1, 3053, 3, 75, 75), 'put').
name(f_primitive_or_wrapper_default_values_350, simple_name, primitives_1_expr36, expression, range(primitives_1, 3083, 35, 76, 76), 'PRIMITIVE_OR_WRAPPER_DEFAULT_VALUES').
name(m_put_126, simple_name, primitives_1_expr36, name, range(primitives_1, 3119, 3, 76, 76), 'put').
name(f_primitive_or_wrapper_default_values_350, simple_name, primitives_1_expr38, expression, range(primitives_1, 3151, 35, 78, 78), 'PRIMITIVE_OR_WRAPPER_DEFAULT_VALUES').
name(m_put_126, simple_name, primitives_1_expr38, name, range(primitives_1, 3187, 3, 78, 78), 'put').
name(f_primitive_or_wrapper_default_values_350, simple_name, primitives_1_expr40, expression, range(primitives_1, 3222, 35, 79, 79), 'PRIMITIVE_OR_WRAPPER_DEFAULT_VALUES').
name(m_put_126, simple_name, primitives_1_expr40, name, range(primitives_1, 3258, 3, 79, 79), 'put').
name(f_primitive_or_wrapper_default_values_350, simple_name, primitives_1_expr42, expression, range(primitives_1, 3293, 35, 80, 80), 'PRIMITIVE_OR_WRAPPER_DEFAULT_VALUES').
name(m_put_126, simple_name, primitives_1_expr42, name, range(primitives_1, 3329, 3, 80, 80), 'put').
name(f_primitive_or_wrapper_default_values_350, simple_name, primitives_1_expr45, expression, range(primitives_1, 3364, 35, 81, 81), 'PRIMITIVE_OR_WRAPPER_DEFAULT_VALUES').
name(m_put_126, simple_name, primitives_1_expr45, name, range(primitives_1, 3400, 3, 81, 81), 'put').
name(f_primitive_or_wrapper_default_values_350, simple_name, primitives_1_expr48, expression, range(primitives_1, 3437, 35, 82, 82), 'PRIMITIVE_OR_WRAPPER_DEFAULT_VALUES').
name(m_put_126, simple_name, primitives_1_expr48, name, range(primitives_1, 3473, 3, 82, 82), 'put').
name(f_primitive_or_wrapper_default_values_350, simple_name, primitives_1_expr50, expression, range(primitives_1, 3500, 35, 83, 83), 'PRIMITIVE_OR_WRAPPER_DEFAULT_VALUES').
name(m_put_126, simple_name, primitives_1_expr50, name, range(primitives_1, 3536, 3, 83, 83), 'put').
name(f_primitive_or_wrapper_default_values_350, simple_name, primitives_1_expr52, expression, range(primitives_1, 3565, 35, 84, 84), 'PRIMITIVE_OR_WRAPPER_DEFAULT_VALUES').
name(m_put_126, simple_name, primitives_1_expr52, name, range(primitives_1, 3601, 3, 84, 84), 'put').
name(f_primitive_or_wrapper_default_values_350, simple_name, primitives_1_expr54, expression, range(primitives_1, 3631, 35, 85, 85), 'PRIMITIVE_OR_WRAPPER_DEFAULT_VALUES').
name(m_put_126, simple_name, primitives_1_expr54, name, range(primitives_1, 3667, 3, 85, 85), 'put').
%final_mock_candidate_filter_1 - org.mockito.internal.configuration.injection.filter.FinalMockCandidateFilter
name(t_final_mock_candidate_filter_17, simple_name, final_mock_candidate_filter_1_code2, name, range(final_mock_candidate_filter_1, 750, 24, 22, 22), 'FinalMockCandidateFilter').
%checks_1 - org.mockito.internal.util.Checks
name(p_value_327, simple_name, checks_1_expr1, left_operand, range(checks_1, 294, 5, 14, 14), 'value').
name(p_value_327, simple_name, checks_1_stmt2, expression, range(checks_1, 418, 5, 17, 17), 'value').
name(m_check_not_null_178, simple_name, checks_1_expr2, name, range(checks_1, 537, 12, 21, 21), 'checkNotNull').
name(p_iterable_329, simple_name, checks_1_expr2, (arguments, 0), range(checks_1, 550, 8, 21, 21), 'iterable').
name(p_checked_iterable_330, simple_name, checks_1_expr2, (arguments, 1), range(checks_1, 560, 15, 21, 21), 'checkedIterable').
name(v_item_331, simple_name, checks_1_code5, name, range(checks_1, 598, 4, 22, 22), 'item').
name(p_iterable_329, simple_name, checks_1_stmt4, expression, range(checks_1, 605, 8, 22, 22), 'iterable').
name(p_iterable_329, simple_name, checks_1_stmt5, expression, range(checks_1, 704, 8, 25, 25), 'iterable').
%test_base_1 - org.mockitoutil.TestBase
name(t_test_base_46, simple_name, test_base_1_code2, name, range(test_base_1, 1172, 8, 38, 38), 'TestBase').
name(t_configuration_access_47, simple_name, test_base_1_expr2, expression, range(test_base_1, 1261, 19, 42, 42), 'ConfigurationAccess').
name(m_get_config_115, simple_name, test_base_1_expr2, name, range(test_base_1, 1281, 9, 42, 42), 'getConfig').
name(m_override_cleans_stack_trace_26, simple_name, test_base_1_expr1, name, range(test_base_1, 1293, 24, 42, 42), 'overrideCleansStackTrace').
name(t_configuration_access_47, simple_name, test_base_1_expr4, expression, range(test_base_1, 1334, 19, 43, 43), 'ConfigurationAccess').
name(m_get_config_115, simple_name, test_base_1_expr4, name, range(test_base_1, 1354, 9, 43, 43), 'getConfig').
name(m_override_default_answer_25, simple_name, test_base_1_expr3, name, range(test_base_1, 1366, 21, 43, 43), 'overrideDefaultAnswer').
name(v_state_386, simple_name, test_base_1_code7, name, range(test_base_1, 1415, 5, 44, 44), 'state').
name(v_state_386, simple_name, test_base_1_expr6, expression, range(test_base_1, 1608, 5, 47, 47), 'state').
name(m_validate_18, simple_name, test_base_1_expr6, name, range(test_base_1, 1614, 8, 47, 47), 'validate').
name(v_state_386, simple_name, test_base_1_expr7, expression, range(test_base_1, 1762, 5, 49, 49), 'state').
name(m_reset_15, simple_name, test_base_1_expr7, name, range(test_base_1, 1768, 5, 49, 49), 'reset').
name(t_mockito_annotations_48, simple_name, test_base_1_expr8, expression, range(test_base_1, 1829, 18, 54, 54), 'MockitoAnnotations').
name(m_init_mocks_1, simple_name, test_base_1_expr8, name, range(test_base_1, 1848, 9, 54, 54), 'initMocks').
%configuration_access_1 - org.mockito.internal.configuration.ConfigurationAccess
name(m_get_it_116, simple_name, configuration_access_1_expr2, name, range(configuration_access_1, 374, 5, 12, 12), 'getIt').
%default_stack_trace_cleaner_provider_1 - org.mockito.internal.exceptions.stacktrace.DefaultStackTraceCleanerProvider
name(t_default_stack_trace_cleaner_provider_22, simple_name, default_stack_trace_cleaner_provider_1_code2, name, range(default_stack_trace_cleaner_provider_1, 231, 32, 9, 9), 'DefaultStackTraceCleanerProvider').
%injecting_annotation_engine_1 - org.mockito.internal.configuration.InjectingAnnotationEngine
name(t_injecting_annotation_engine_10, simple_name, injecting_annotation_engine_1_code2, name, range(injecting_annotation_engine_1, 694, 25, 23, 23), 'InjectingAnnotationEngine').
name(f_delegate_153, simple_name, injecting_annotation_engine_1_code9, name, range(injecting_annotation_engine_1, 785, 8, 24, 24), 'delegate').
name(f_spy_annotation_engine_154, simple_name, injecting_annotation_engine_1_code15, name, range(injecting_annotation_engine_1, 862, 19, 25, 25), 'spyAnnotationEngine').
name(m_process_independent_annotations_150, simple_name, injecting_annotation_engine_1_expr3, name, range(injecting_annotation_engine_1, 1965, 29, 55, 55), 'processIndependentAnnotations').
name(p_test_instance_158, simple_name, injecting_annotation_engine_1_expr4, expression, range(injecting_annotation_engine_1, 1995, 12, 55, 55), 'testInstance').
name(m_get_class_4, simple_name, injecting_annotation_engine_1_expr4, name, range(injecting_annotation_engine_1, 2008, 8, 55, 55), 'getClass').
name(p_test_instance_158, simple_name, injecting_annotation_engine_1_expr3, (arguments, 1), range(injecting_annotation_engine_1, 2020, 12, 55, 55), 'testInstance').
name(m_process_inject_mocks_151, simple_name, injecting_annotation_engine_1_expr5, name, range(injecting_annotation_engine_1, 2043, 18, 56, 56), 'processInjectMocks').
name(p_test_instance_158, simple_name, injecting_annotation_engine_1_expr6, expression, range(injecting_annotation_engine_1, 2062, 12, 56, 56), 'testInstance').
name(m_get_class_4, simple_name, injecting_annotation_engine_1_expr6, name, range(injecting_annotation_engine_1, 2075, 8, 56, 56), 'getClass').
name(p_test_instance_158, simple_name, injecting_annotation_engine_1_expr5, (arguments, 1), range(injecting_annotation_engine_1, 2087, 12, 56, 56), 'testInstance').
name(v_class_context_161, simple_name, injecting_annotation_engine_1_code22, name, range(injecting_annotation_engine_1, 2213, 12, 60, 60), 'classContext').
name(p_clazz_159, simple_name, injecting_annotation_engine_1_code22, initializer, range(injecting_annotation_engine_1, 2228, 5, 60, 60), 'clazz').
name(v_class_context_161, simple_name, injecting_annotation_engine_1_expr7, left_operand, range(injecting_annotation_engine_1, 2250, 12, 61, 61), 'classContext').
name(m_inject_mocks_152, simple_name, injecting_annotation_engine_1_expr9, name, range(injecting_annotation_engine_1, 2294, 11, 62, 62), 'injectMocks').
name(p_test_instance_160, simple_name, injecting_annotation_engine_1_expr9, (arguments, 0), range(injecting_annotation_engine_1, 2306, 12, 62, 62), 'testInstance').
name(v_class_context_161, simple_name, injecting_annotation_engine_1_expr10, left_hand_side, range(injecting_annotation_engine_1, 2333, 12, 63, 63), 'classContext').
name(v_class_context_161, simple_name, injecting_annotation_engine_1_expr11, expression, range(injecting_annotation_engine_1, 2348, 12, 63, 63), 'classContext').
name(m_get_superclass_8, simple_name, injecting_annotation_engine_1_expr11, name, range(injecting_annotation_engine_1, 2361, 13, 63, 63), 'getSuperclass').
name(v_class_context_164, simple_name, injecting_annotation_engine_1_code28, name, range(injecting_annotation_engine_1, 2510, 12, 68, 68), 'classContext').
name(p_clazz_162, simple_name, injecting_annotation_engine_1_code28, initializer, range(injecting_annotation_engine_1, 2525, 5, 68, 68), 'clazz').
name(v_class_context_164, simple_name, injecting_annotation_engine_1_expr12, left_operand, range(injecting_annotation_engine_1, 2547, 12, 69, 69), 'classContext').
name(f_delegate_153, simple_name, injecting_annotation_engine_1_expr14, expression, range(injecting_annotation_engine_1, 2645, 8, 71, 71), 'delegate').
name(m_process_9, simple_name, injecting_annotation_engine_1_expr14, name, range(injecting_annotation_engine_1, 2654, 7, 71, 71), 'process').
name(v_class_context_164, simple_name, injecting_annotation_engine_1_expr14, (arguments, 0), range(injecting_annotation_engine_1, 2662, 12, 71, 71), 'classContext').
name(p_test_instance_163, simple_name, injecting_annotation_engine_1_expr14, (arguments, 1), range(injecting_annotation_engine_1, 2676, 12, 71, 71), 'testInstance').
name(f_spy_annotation_engine_154, simple_name, injecting_annotation_engine_1_expr15, expression, range(injecting_annotation_engine_1, 2742, 19, 73, 73), 'spyAnnotationEngine').
name(m_process_9, simple_name, injecting_annotation_engine_1_expr15, name, range(injecting_annotation_engine_1, 2762, 7, 73, 73), 'process').
name(v_class_context_164, simple_name, injecting_annotation_engine_1_expr15, (arguments, 0), range(injecting_annotation_engine_1, 2770, 12, 73, 73), 'classContext').
name(p_test_instance_163, simple_name, injecting_annotation_engine_1_expr15, (arguments, 1), range(injecting_annotation_engine_1, 2784, 12, 73, 73), 'testInstance').
name(v_class_context_164, simple_name, injecting_annotation_engine_1_expr16, left_hand_side, range(injecting_annotation_engine_1, 2812, 12, 75, 75), 'classContext').
name(v_class_context_164, simple_name, injecting_annotation_engine_1_expr17, expression, range(injecting_annotation_engine_1, 2827, 12, 75, 75), 'classContext').
name(m_get_superclass_8, simple_name, injecting_annotation_engine_1_expr17, name, range(injecting_annotation_engine_1, 2840, 13, 75, 75), 'getSuperclass').
name(v_clazz_166, simple_name, injecting_annotation_engine_1_code34, name, range(injecting_annotation_engine_1, 3270, 5, 90, 90), 'clazz').
name(p_test_class_instance_165, simple_name, injecting_annotation_engine_1_expr18, expression, range(injecting_annotation_engine_1, 3278, 17, 90, 90), 'testClassInstance').
name(m_get_class_4, simple_name, injecting_annotation_engine_1_expr18, name, range(injecting_annotation_engine_1, 3296, 8, 90, 90), 'getClass').
name(v_mock_dependent_fields_167, simple_name, injecting_annotation_engine_1_code38, name, range(injecting_annotation_engine_1, 3327, 19, 91, 91), 'mockDependentFields').
name(v_mocks_168, simple_name, injecting_annotation_engine_1_code45, name, range(injecting_annotation_engine_1, 3391, 5, 92, 92), 'mocks').
name(m_new_mock_safe_hash_set_154, simple_name, injecting_annotation_engine_1_expr20, name, range(injecting_annotation_engine_1, 3399, 18, 92, 92), 'newMockSafeHashSet').
name(v_clazz_166, simple_name, injecting_annotation_engine_1_expr21, left_operand, range(injecting_annotation_engine_1, 3445, 5, 94, 94), 'clazz').
name(v_clazz_166, simple_name, injecting_annotation_engine_1_expr24, (arguments, 0), range(injecting_annotation_engine_1, 3505, 5, 95, 95), 'clazz').
name(m_add_to_155, simple_name, injecting_annotation_engine_1_expr23, name, range(injecting_annotation_engine_1, 3512, 5, 95, 95), 'addTo').
name(v_mock_dependent_fields_167, simple_name, injecting_annotation_engine_1_expr23, (arguments, 0), range(injecting_annotation_engine_1, 3518, 19, 95, 95), 'mockDependentFields').
name(p_test_class_instance_165, simple_name, injecting_annotation_engine_1_expr26, (arguments, 0), range(injecting_annotation_engine_1, 3568, 17, 96, 96), 'testClassInstance').
name(v_clazz_166, simple_name, injecting_annotation_engine_1_expr26, (arguments, 1), range(injecting_annotation_engine_1, 3587, 5, 96, 96), 'clazz').
name(m_add_prepared_mocks_157, simple_name, injecting_annotation_engine_1_expr25, name, range(injecting_annotation_engine_1, 3594, 16, 96, 96), 'addPreparedMocks').
name(v_mocks_168, simple_name, injecting_annotation_engine_1_expr25, (arguments, 0), range(injecting_annotation_engine_1, 3611, 5, 96, 96), 'mocks').
name(v_clazz_166, simple_name, injecting_annotation_engine_1_expr27, left_hand_side, range(injecting_annotation_engine_1, 3631, 5, 97, 97), 'clazz').
name(v_clazz_166, simple_name, injecting_annotation_engine_1_expr28, expression, range(injecting_annotation_engine_1, 3639, 5, 97, 97), 'clazz').
name(m_get_superclass_8, simple_name, injecting_annotation_engine_1_expr28, name, range(injecting_annotation_engine_1, 3645, 13, 97, 97), 'getSuperclass').
name(m_inject_mocks_on_fields_129, simple_name, injecting_annotation_engine_1_expr29, name, range(injecting_annotation_engine_1, 3718, 19, 100, 100), 'injectMocksOnFields').
name(v_mock_dependent_fields_167, simple_name, injecting_annotation_engine_1_expr29, (arguments, 0), range(injecting_annotation_engine_1, 3738, 19, 100, 100), 'mockDependentFields').
name(v_mocks_168, simple_name, injecting_annotation_engine_1_expr29, (arguments, 1), range(injecting_annotation_engine_1, 3759, 5, 100, 100), 'mocks').
name(p_test_class_instance_165, simple_name, injecting_annotation_engine_1_expr29, (arguments, 2), range(injecting_annotation_engine_1, 3766, 17, 100, 100), 'testClassInstance').
%field_reader_1 - org.mockito.internal.util.reflection.FieldReader
name(f_changer_381, simple_name, field_reader_1_code6, name, range(field_reader_1, 361, 7, 15, 15), 'changer').
name(m_field_reader_210, simple_name, field_reader_1_code8, name, range(field_reader_1, 411, 11, 17, 17), 'FieldReader').
name(p_target_382, simple_name, field_reader_1_code10, name, range(field_reader_1, 430, 6, 17, 17), 'target').
name(p_field_383, simple_name, field_reader_1_code12, name, range(field_reader_1, 444, 5, 17, 17), 'field').
name(f_target_384, simple_name, field_reader_1_expr3, name, range(field_reader_1, 466, 6, 18, 18), 'target').
name(p_target_382, simple_name, field_reader_1_expr2, right_hand_side, range(field_reader_1, 475, 6, 18, 18), 'target').
name(f_field_385, simple_name, field_reader_1_expr6, name, range(field_reader_1, 496, 5, 19, 19), 'field').
name(p_field_383, simple_name, field_reader_1_expr5, right_hand_side, range(field_reader_1, 504, 5, 19, 19), 'field').
name(f_changer_381, simple_name, field_reader_1_expr8, expression, range(field_reader_1, 519, 7, 20, 20), 'changer').
name(m_enable_access_349, simple_name, field_reader_1_expr8, name, range(field_reader_1, 527, 12, 20, 20), 'enableAccess').
name(p_field_383, simple_name, field_reader_1_expr8, (arguments, 0), range(field_reader_1, 540, 5, 20, 20), 'field').
name(f_field_385, simple_name, field_reader_1_expr9, expression, range(field_reader_1, 687, 5, 29, 29), 'field').
name(m_get_354, simple_name, field_reader_1_expr9, name, range(field_reader_1, 693, 3, 29, 29), 'get').
name(f_target_384, simple_name, field_reader_1_expr9, (arguments, 0), range(field_reader_1, 697, 6, 29, 29), 'target').
%property_and_setter_injection_1 - org.mockito.internal.configuration.injection.PropertyAndSetterInjection
name(t_property_and_setter_injection_15, simple_name, property_and_setter_injection_1_code2, name, range(property_and_setter_injection_1, 2376, 26, 60, 60), 'PropertyAndSetterInjection').
name(f_mock_candidate_filter_222, simple_name, property_and_setter_injection_1_code9, name, range(property_and_setter_injection_1, 2474, 19, 62, 62), 'mockCandidateFilter').
name(f_not_final_or_static_223, simple_name, property_and_setter_injection_1_code19, name, range(property_and_setter_injection_1, 2630, 16, 64, 64), 'notFinalOrStatic').
%type_based_candidate_filter_1 - org.mockito.internal.configuration.injection.filter.TypeBasedCandidateFilter
name(m_type_based_candidate_filter_189, simple_name, type_based_candidate_filter_1_code3, name, range(type_based_candidate_filter_1, 409, 24, 16, 16), 'TypeBasedCandidateFilter').
name(p_next_250, simple_name, type_based_candidate_filter_1_code5, name, range(type_based_candidate_filter_1, 454, 4, 16, 16), 'next').
name(f_next_251, simple_name, type_based_candidate_filter_1_expr2, name, range(type_based_candidate_filter_1, 475, 4, 17, 17), 'next').
name(p_next_250, simple_name, type_based_candidate_filter_1_expr1, right_hand_side, range(type_based_candidate_filter_1, 482, 4, 17, 17), 'next').
%thread_safe_mocking_progress_1 - org.mockito.internal.progress.ThreadSafeMockingProgress
name(t_thread_safe_mocking_progress_26, simple_name, thread_safe_mocking_progress_1_code2, name, range(thread_safe_mocking_progress_1, 391, 25, 15, 15), 'ThreadSafeMockingProgress').
name(f_mocking_progress_315, simple_name, thread_safe_mocking_progress_1_code13, name, range(thread_safe_mocking_progress_1, 590, 15, 18, 18), 'mockingProgress').
name(f_mocking_progress_315, simple_name, thread_safe_mocking_progress_1_expr3, expression, range(thread_safe_mocking_progress_1, 701, 15, 21, 21), 'mockingProgress').
name(m_get_137, simple_name, thread_safe_mocking_progress_1_expr3, name, range(thread_safe_mocking_progress_1, 717, 3, 21, 21), 'get').
name(f_mocking_progress_315, simple_name, thread_safe_mocking_progress_1_expr4, expression, range(thread_safe_mocking_progress_1, 746, 15, 22, 22), 'mockingProgress').
name(m_set_138, simple_name, thread_safe_mocking_progress_1_expr4, name, range(thread_safe_mocking_progress_1, 762, 3, 22, 22), 'set').
name(f_mocking_progress_315, simple_name, thread_safe_mocking_progress_1_expr6, expression, range(thread_safe_mocking_progress_1, 819, 15, 24, 24), 'mockingProgress').
name(m_get_137, simple_name, thread_safe_mocking_progress_1_expr6, name, range(thread_safe_mocking_progress_1, 835, 3, 24, 24), 'get').
name(m_thread_safely_268, simple_name, thread_safe_mocking_progress_1_expr8, name, range(thread_safe_mocking_progress_1, 1478, 12, 48, 48), 'threadSafely').
name(m_validate_state_275, simple_name, thread_safe_mocking_progress_1_expr7, name, range(thread_safe_mocking_progress_1, 1493, 13, 48, 48), 'validateState').
name(m_thread_safely_268, simple_name, thread_safe_mocking_progress_1_expr10, name, range(thread_safe_mocking_progress_1, 1755, 12, 60, 60), 'threadSafely').
name(m_reset_278, simple_name, thread_safe_mocking_progress_1_expr9, name, range(thread_safe_mocking_progress_1, 1770, 5, 60, 60), 'reset').
name(m_thread_safely_268, simple_name, thread_safe_mocking_progress_1_expr12, name, range(thread_safe_mocking_progress_1, 1835, 12, 64, 64), 'threadSafely').
name(m_reset_ongoing_stubbing_279, simple_name, thread_safe_mocking_progress_1_expr11, name, range(thread_safe_mocking_progress_1, 1850, 20, 64, 64), 'resetOngoingStubbing').
%mock_annotation_processor_1 - org.mockito.internal.configuration.MockAnnotationProcessor
name(t_mock_annotation_processor_11, simple_name, mock_annotation_processor_1_code2, name, range(mock_annotation_processor_1, 366, 23, 16, 16), 'MockAnnotationProcessor').
%argument_matcher_storage_impl_1 - org.mockito.internal.progress.ArgumentMatcherStorageImpl
name(t_argument_matcher_storage_impl_23, simple_name, argument_matcher_storage_impl_1_code2, name, range(argument_matcher_storage_impl_1, 590, 26, 22, 22), 'ArgumentMatcherStorageImpl').
name(f_matcher_stack_296, simple_name, argument_matcher_storage_impl_1_code11, name, range(argument_matcher_storage_impl_1, 795, 12, 26, 26), 'matcherStack').
name(f_matcher_stack_296, simple_name, argument_matcher_storage_impl_1_expr3, expression, range(argument_matcher_storage_impl_1, 4052, 12, 112, 112), 'matcherStack').
name(m_is_empty_247, simple_name, argument_matcher_storage_impl_1_expr3, name, range(argument_matcher_storage_impl_1, 4065, 7, 112, 112), 'isEmpty').
name(f_matcher_stack_296, simple_name, argument_matcher_storage_impl_1_expr4, expression, range(argument_matcher_storage_impl_1, 4416, 12, 123, 123), 'matcherStack').
name(m_clear_249, simple_name, argument_matcher_storage_impl_1_expr4, name, range(argument_matcher_storage_impl_1, 4429, 5, 123, 123), 'clear').
%spy_on_injected_fields_handler_1 - org.mockito.internal.configuration.injection.SpyOnInjectedFieldsHandler
name(t_spy_on_injected_fields_handler_16, simple_name, spy_on_injected_fields_handler_1_code2, name, range(spy_on_injected_fields_handler_1, 796, 26, 28, 28), 'SpyOnInjectedFieldsHandler').
%mockito_configuration_1 - org.mockito.configuration.MockitoConfiguration
name(t_mockito_configuration_3, simple_name, mockito_configuration_1_code2, name, range(mockito_configuration_1, 425, 20, 15, 15), 'MockitoConfiguration').
name(f_overridden_default_answer_17, simple_name, mockito_configuration_1_code11, name, range(mockito_configuration_1, 545, 23, 17, 17), 'overriddenDefaultAnswer').
name(f_enable_class_cache_18, simple_name, mockito_configuration_1_code15, name, range(mockito_configuration_1, 682, 16, 20, 20), 'enableClassCache').
name(f_overridden_default_answer_17, simple_name, mockito_configuration_1_expr2, name, range(mockito_configuration_1, 855, 23, 24, 24), 'overriddenDefaultAnswer').
name(p_default_answer_19, simple_name, mockito_configuration_1_expr1, right_hand_side, range(mockito_configuration_1, 881, 13, 24, 24), 'defaultAnswer').
name(f_cleans_stack_trace_21, simple_name, mockito_configuration_1_expr5, name, range(mockito_configuration_1, 1049, 16, 29, 29), 'cleansStackTrace').
name(p_cleans_stack_trace_20, simple_name, mockito_configuration_1_expr4, right_hand_side, range(mockito_configuration_1, 1068, 16, 29, 29), 'cleansStackTrace').
name(f_overridden_engine_24, simple_name, mockito_configuration_1_expr8, name, range(mockito_configuration_1, 1784, 16, 53, 53), 'overriddenEngine').
%hash_code_and_equals_safe_set_1 - org.mockito.internal.util.collections.HashCodeAndEqualsSafeSet
name(t_hash_code_and_equals_safe_set_42, simple_name, hash_code_and_equals_safe_set_1_code2, name, range(hash_code_and_equals_safe_set_1, 876, 24, 32, 32), 'HashCodeAndEqualsSafeSet').
name(f_backing_hash_set_354, simple_name, hash_code_and_equals_safe_set_1_code13, name, range(hash_code_and_equals_safe_set_1, 983, 14, 34, 34), 'backingHashSet').
name(f_iterator_355, simple_name, hash_code_and_equals_safe_set_1_code28, name, range(hash_code_and_equals_safe_set_1, 1192, 8, 38, 38), 'iterator').
name(f_backing_hash_set_354, simple_name, hash_code_and_equals_safe_set_1_expr3, expression, range(hash_code_and_equals_safe_set_1, 1203, 14, 38, 38), 'backingHashSet').
name(m_iterator_316, simple_name, hash_code_and_equals_safe_set_1_expr3, name, range(hash_code_and_equals_safe_set_1, 1218, 8, 38, 38), 'iterator').
name(f_iterator_355, simple_name, hash_code_and_equals_safe_set_1_expr4, expression, range(hash_code_and_equals_safe_set_1, 1293, 8, 41, 41), 'iterator').
name(m_has_next_291, simple_name, hash_code_and_equals_safe_set_1_expr4, name, range(hash_code_and_equals_safe_set_1, 1302, 7, 41, 41), 'hasNext').
name(f_backing_hash_set_354, simple_name, hash_code_and_equals_safe_set_1_expr5, expression, range(hash_code_and_equals_safe_set_1, 3542, 14, 124, 124), 'backingHashSet').
name(m_add_all_335, simple_name, hash_code_and_equals_safe_set_1_expr5, name, range(hash_code_and_equals_safe_set_1, 3557, 6, 124, 124), 'addAll').
name(m_as_wrapped_mocks_336, simple_name, hash_code_and_equals_safe_set_1_expr6, name, range(hash_code_and_equals_safe_set_1, 3564, 14, 124, 124), 'asWrappedMocks').
name(p_mocks_364, simple_name, hash_code_and_equals_safe_set_1_expr6, (arguments, 0), range(hash_code_and_equals_safe_set_1, 3579, 5, 124, 124), 'mocks').
name(t_checks_43, simple_name, hash_code_and_equals_safe_set_1_expr7, expression, range(hash_code_and_equals_safe_set_1, 3814, 6, 132, 132), 'Checks').
name(m_check_not_null_178, simple_name, hash_code_and_equals_safe_set_1_expr7, name, range(hash_code_and_equals_safe_set_1, 3821, 12, 132, 132), 'checkNotNull').
name(p_mocks_366, simple_name, hash_code_and_equals_safe_set_1_expr7, (arguments, 0), range(hash_code_and_equals_safe_set_1, 3834, 5, 132, 132), 'mocks').
name(v_hash_set_367, simple_name, hash_code_and_equals_safe_set_1_code35, name, range(hash_code_and_equals_safe_set_1, 3933, 7, 133, 133), 'hashSet').
name(v_mock_368, simple_name, hash_code_and_equals_safe_set_1_code39, name, range(hash_code_and_equals_safe_set_1, 4008, 4, 134, 134), 'mock').
name(p_mocks_366, simple_name, hash_code_and_equals_safe_set_1_stmt6, expression, range(hash_code_and_equals_safe_set_1, 4015, 5, 134, 134), 'mocks').
name(v_hash_set_367, simple_name, hash_code_and_equals_safe_set_1_stmt7, expression, range(hash_code_and_equals_safe_set_1, 4192, 7, 138, 138), 'hashSet').
name(m_of_340, simple_name, hash_code_and_equals_safe_set_1_expr9, name, range(hash_code_and_equals_safe_set_1, 4378, 2, 146, 146), 'of').
name(t_arrays_44, simple_name, hash_code_and_equals_safe_set_1_expr10, expression, range(hash_code_and_equals_safe_set_1, 4381, 6, 146, 146), 'Arrays').
name(m_as_list_341, simple_name, hash_code_and_equals_safe_set_1_expr10, name, range(hash_code_and_equals_safe_set_1, 4388, 6, 146, 146), 'asList').
name(p_mocks_369, simple_name, hash_code_and_equals_safe_set_1_expr10, (arguments, 0), range(hash_code_and_equals_safe_set_1, 4395, 5, 146, 146), 'mocks').
name(v_hash_code_and_equals_safe_set_371, simple_name, hash_code_and_equals_safe_set_1_code44, name, range(hash_code_and_equals_safe_set_1, 4518, 24, 150, 150), 'hashCodeAndEqualsSafeSet').
name(p_objects_370, simple_name, hash_code_and_equals_safe_set_1_expr12, left_operand, range(hash_code_and_equals_safe_set_1, 4589, 7, 151, 151), 'objects').
name(v_mock_372, simple_name, hash_code_and_equals_safe_set_1_code46, name, range(hash_code_and_equals_safe_set_1, 4632, 4, 152, 152), 'mock').
name(p_objects_370, simple_name, hash_code_and_equals_safe_set_1_stmt11, expression, range(hash_code_and_equals_safe_set_1, 4639, 7, 152, 152), 'objects').
name(v_hash_code_and_equals_safe_set_371, simple_name, hash_code_and_equals_safe_set_1_stmt12, expression, range(hash_code_and_equals_safe_set_1, 4741, 24, 156, 156), 'hashCodeAndEqualsSafeSet').
%default_mockito_configuration_1 - org.mockito.configuration.DefaultMockitoConfiguration
name(t_default_mockito_configuration_2, simple_name, default_mockito_configuration_1_code2, name, range(default_mockito_configuration_1, 701, 27, 20, 20), 'DefaultMockitoConfiguration').
%captor_annotation_processor_1 - org.mockito.internal.configuration.CaptorAnnotationProcessor
name(t_captor_annotation_processor_5, simple_name, captor_annotation_processor_1_code2, name, range(captor_annotation_processor_1, 466, 25, 17, 17), 'CaptorAnnotationProcessor').
%plugin_registry_1 - org.mockito.internal.configuration.plugins.PluginRegistry
name(t_plugin_registry_21, simple_name, plugin_registry_1_code2, name, range(plugin_registry_1, 193, 14, 7, 7), 'PluginRegistry').
name(f_plugin_switch_291, simple_name, plugin_registry_1_code7, name, range(plugin_registry_1, 242, 12, 9, 9), 'pluginSwitch').
name(m_load_plugin_221, simple_name, plugin_registry_1_expr1, name, range(plugin_registry_1, 313, 10, 10, 10), 'loadPlugin').
name(m_get_name_227, simple_name, plugin_registry_1_expr3, name, range(plugin_registry_1, 370, 7, 10, 10), 'getName').
name(f_mock_maker_292, simple_name, plugin_registry_1_code16, name, range(plugin_registry_1, 411, 9, 12, 12), 'mockMaker').
name(f_plugin_switch_291, simple_name, plugin_registry_1_expr9, (arguments, 0), range(plugin_registry_1, 452, 12, 13, 13), 'pluginSwitch').
name(m_load_plugin_221, simple_name, plugin_registry_1_expr7, name, range(plugin_registry_1, 466, 10, 13, 13), 'loadPlugin').
name(f_stack_trace_cleaner_provider_293, simple_name, plugin_registry_1_code23, name, range(plugin_registry_1, 602, 25, 15, 15), 'stackTraceCleanerProvider').
name(f_plugin_switch_291, simple_name, plugin_registry_1_expr12, (arguments, 0), range(plugin_registry_1, 659, 12, 16, 16), 'pluginSwitch').
name(m_load_plugin_221, simple_name, plugin_registry_1_expr10, name, range(plugin_registry_1, 673, 10, 16, 16), 'loadPlugin').
name(f_mock_maker_292, simple_name, plugin_registry_1_stmt1, expression, range(plugin_registry_1, 1396, 9, 33, 33), 'mockMaker').
%plugin_finder_1 - org.mockito.internal.configuration.plugins.PluginFinder
name(m_plugin_finder_218, simple_name, plugin_finder_1_code3, name, range(plugin_finder_1, 321, 12, 14, 14), 'PluginFinder').
name(p_plugin_switch_278, simple_name, plugin_finder_1_code5, name, range(plugin_finder_1, 347, 12, 14, 14), 'pluginSwitch').
name(f_plugin_switch_279, simple_name, plugin_finder_1_expr2, name, range(plugin_finder_1, 376, 12, 15, 15), 'pluginSwitch').
name(p_plugin_switch_278, simple_name, plugin_finder_1_expr1, right_hand_side, range(plugin_finder_1, 391, 12, 15, 15), 'pluginSwitch').
name(v_resource_281, simple_name, plugin_finder_1_code8, name, range(plugin_finder_1, 483, 8, 19, 19), 'resource').
name(p_resources_280, simple_name, plugin_finder_1_stmt2, expression, range(plugin_finder_1, 494, 9, 19, 19), 'resources').
%class_path_loader_1 - org.mockito.internal.configuration.ClassPathLoader
name(t_class_path_loader_6, simple_name, class_path_loader_1_code2, name, range(class_path_loader_1, 2186, 15, 56, 56), 'ClassPathLoader').
name(v_config_class_129, simple_name, class_path_loader_1_expr1, left_hand_side, range(class_path_loader_1, 2588, 11, 68, 68), 'configClass').
name(t_class_7, simple_name, class_path_loader_1_expr3, expression, range(class_path_loader_1, 2610, 5, 68, 68), 'Class').
name(m_for_name_113, simple_name, class_path_loader_1_expr3, name, range(class_path_loader_1, 2616, 7, 68, 68), 'forName').
name(f_mockito_configuration_class_name_130, simple_name, class_path_loader_1_expr3, (arguments, 0), range(class_path_loader_1, 2624, 32, 68, 68), 'MOCKITO_CONFIGURATION_CLASS_NAME').
name(v_config_class_129, simple_name, class_path_loader_1_expr5, expression, range(class_path_loader_1, 2877, 11, 75, 75), 'configClass').
name(m_new_instance_114, simple_name, class_path_loader_1_expr5, name, range(class_path_loader_1, 2889, 11, 75, 75), 'newInstance').
%object_methods_guru_1 - org.mockito.internal.util.ObjectMethodsGuru
name(t_object_methods_guru_33, simple_name, object_methods_guru_1_code2, name, range(object_methods_guru_1, 342, 17, 13, 13), 'ObjectMethodsGuru').
%plugin_loader_1 - org.mockito.internal.configuration.plugins.PluginLoader
name(m_plugin_loader_220, simple_name, plugin_loader_1_code3, name, range(plugin_loader_1, 433, 12, 16, 16), 'PluginLoader').
name(p_plugin_switch_282, simple_name, plugin_loader_1_code5, name, range(plugin_loader_1, 459, 12, 16, 16), 'pluginSwitch').
name(f_plugin_switch_283, simple_name, plugin_loader_1_expr2, name, range(plugin_loader_1, 488, 12, 17, 17), 'pluginSwitch').
name(p_plugin_switch_282, simple_name, plugin_loader_1_expr1, right_hand_side, range(plugin_loader_1, 503, 12, 17, 17), 'pluginSwitch').
name(v_plugin_286, simple_name, plugin_loader_1_code9, name, range(plugin_loader_1, 711, 6, 24, 24), 'plugin').
name(m_load_impl_222, simple_name, plugin_loader_1_expr4, name, range(plugin_loader_1, 720, 8, 24, 24), 'loadImpl').
name(p_plugin_type_284, simple_name, plugin_loader_1_expr4, (arguments, 0), range(plugin_loader_1, 729, 10, 24, 24), 'pluginType').
name(v_plugin_286, simple_name, plugin_loader_1_expr5, left_operand, range(plugin_loader_1, 754, 6, 25, 25), 'plugin').
name(p_plugin_type_284, simple_name, plugin_loader_1_expr6, expression, range(plugin_loader_1, 1089, 10, 33, 33), 'pluginType').
name(m_cast_223, simple_name, plugin_loader_1_expr6, name, range(plugin_loader_1, 1100, 4, 33, 33), 'cast').
name(t_class_7, simple_name, plugin_loader_1_expr8, expression, range(plugin_loader_1, 1105, 5, 33, 33), 'Class').
name(m_for_name_113, simple_name, plugin_loader_1_expr8, name, range(plugin_loader_1, 1111, 7, 33, 33), 'forName').
name(p_default_plugin_class_name_285, simple_name, plugin_loader_1_expr8, (arguments, 0), range(plugin_loader_1, 1119, 22, 33, 33), 'defaultPluginClassName').
name(m_new_instance_114, simple_name, plugin_loader_1_expr7, name, range(plugin_loader_1, 1143, 11, 33, 33), 'newInstance').
name(v_loader_288, simple_name, plugin_loader_1_code12, name, range(plugin_loader_1, 1678, 6, 46, 46), 'loader').
name(t_thread_19, simple_name, plugin_loader_1_expr10, expression, range(plugin_loader_1, 1687, 6, 46, 46), 'Thread').
name(m_current_thread_225, simple_name, plugin_loader_1_expr10, name, range(plugin_loader_1, 1694, 13, 46, 46), 'currentThread').
name(m_get_context_class_loader_224, simple_name, plugin_loader_1_expr9, name, range(plugin_loader_1, 1710, 21, 46, 46), 'getContextClassLoader').
name(v_loader_288, simple_name, plugin_loader_1_expr11, left_operand, range(plugin_loader_1, 1747, 6, 47, 47), 'loader').
name(v_resources_289, simple_name, plugin_loader_1_expr12, left_hand_side, range(plugin_loader_1, 1894, 9, 52, 52), 'resources').
name(v_loader_288, simple_name, plugin_loader_1_expr13, expression, range(plugin_loader_1, 1906, 6, 52, 52), 'loader').
name(m_get_resources_226, simple_name, plugin_loader_1_expr13, name, range(plugin_loader_1, 1913, 12, 52, 52), 'getResources').
name(p_service_287, simple_name, plugin_loader_1_expr15, expression, range(plugin_loader_1, 1950, 7, 52, 52), 'service').
name(m_get_name_227, simple_name, plugin_loader_1_expr15, name, range(plugin_loader_1, 1958, 7, 52, 52), 'getName').
name(v_found_plugin_class_290, simple_name, plugin_loader_1_code15, name, range(plugin_loader_1, 2120, 16, 58, 58), 'foundPluginClass').
name(f_plugin_switch_283, simple_name, plugin_loader_1_expr18, (arguments, 0), range(plugin_loader_1, 2156, 12, 58, 58), 'pluginSwitch').
name(m_find_plugin_class_219, simple_name, plugin_loader_1_expr16, name, range(plugin_loader_1, 2170, 15, 58, 58), 'findPluginClass').
name(t_iterables_20, simple_name, plugin_loader_1_expr17, expression, range(plugin_loader_1, 2186, 9, 58, 58), 'Iterables').
name(m_to_iterable_228, simple_name, plugin_loader_1_expr17, name, range(plugin_loader_1, 2196, 10, 58, 58), 'toIterable').
name(v_resources_289, simple_name, plugin_loader_1_expr17, (arguments, 0), range(plugin_loader_1, 2207, 9, 58, 58), 'resources').
name(v_found_plugin_class_290, simple_name, plugin_loader_1_expr19, left_operand, range(plugin_loader_1, 2236, 16, 59, 59), 'foundPluginClass').
%default_injection_engine_1 - org.mockito.internal.configuration.DefaultInjectionEngine
name(t_default_injection_engine_8, simple_name, default_injection_engine_1_code2, name, range(default_injection_engine_1, 441, 22, 17, 17), 'DefaultInjectionEngine').
name(t_mock_injection_9, simple_name, default_injection_engine_1_expr6, expression, range(default_injection_engine_1, 587, 13, 20, 20), 'MockInjection').
name(m_on_fields_135, simple_name, default_injection_engine_1_expr6, name, range(default_injection_engine_1, 601, 8, 20, 20), 'onFields').
name(p_needing_injection_147, simple_name, default_injection_engine_1_expr6, (arguments, 0), range(default_injection_engine_1, 610, 16, 20, 20), 'needingInjection').
name(p_test_class_instance_149, simple_name, default_injection_engine_1_expr6, (arguments, 1), range(default_injection_engine_1, 628, 17, 20, 20), 'testClassInstance').
name(m_with_mocks_134, simple_name, default_injection_engine_1_expr5, name, range(default_injection_engine_1, 664, 9, 21, 21), 'withMocks').
name(p_mocks_148, simple_name, default_injection_engine_1_expr5, (arguments, 0), range(default_injection_engine_1, 674, 5, 21, 21), 'mocks').
name(m_try_constructor_injection_133, simple_name, default_injection_engine_1_expr4, name, range(default_injection_engine_1, 698, 23, 22, 22), 'tryConstructorInjection').
name(m_try_property_or_field_injection_132, simple_name, default_injection_engine_1_expr3, name, range(default_injection_engine_1, 741, 27, 23, 23), 'tryPropertyOrFieldInjection').
name(m_handle_spy_annotation_131, simple_name, default_injection_engine_1_expr2, name, range(default_injection_engine_1, 788, 19, 24, 24), 'handleSpyAnnotation').
name(m_apply_130, simple_name, default_injection_engine_1_expr1, name, range(default_injection_engine_1, 827, 5, 25, 25), 'apply').
%mock_injection_1 - org.mockito.internal.configuration.injection.MockInjection
name(p_fields_195, simple_name, mock_injection_1_expr1, (arguments, 0), range(mock_injection_1, 1434, 6, 48, 48), 'fields').
name(p_of_instance_196, simple_name, mock_injection_1_expr1, (arguments, 1), range(mock_injection_1, 1442, 10, 48, 48), 'ofInstance').
name(f_fields_197, simple_name, mock_injection_1_code12, name, range(mock_injection_1, 1609, 6, 55, 55), 'fields').
name(f_mocks_198, simple_name, mock_injection_1_code22, name, range(mock_injection_1, 1674, 5, 56, 56), 'mocks').
name(m_new_mock_safe_hash_set_154, simple_name, mock_injection_1_expr3, name, range(mock_injection_1, 1682, 18, 56, 56), 'newMockSafeHashSet').
name(f_injection_strategies_199, simple_name, mock_injection_1_code27, name, range(mock_injection_1, 1789, 19, 58, 58), 'injectionStrategies').
name(t_mock_injection_strategy_14, simple_name, mock_injection_1_expr4, expression, range(mock_injection_1, 1811, 21, 58, 58), 'MockInjectionStrategy').
name(m_nop_176, simple_name, mock_injection_1_expr4, name, range(mock_injection_1, 1833, 3, 58, 58), 'nop').
name(f_post_injection_strategies_200, simple_name, mock_injection_1_code32, name, range(mock_injection_1, 1884, 23, 59, 59), 'postInjectionStrategies').
name(t_mock_injection_strategy_14, simple_name, mock_injection_1_expr5, expression, range(mock_injection_1, 1910, 21, 59, 59), 'MockInjectionStrategy').
name(m_nop_176, simple_name, mock_injection_1_expr5, name, range(mock_injection_1, 1932, 3, 59, 59), 'nop').
name(m_ongoing_mock_injection_175, simple_name, mock_injection_1_code33, name, range(mock_injection_1, 2098, 20, 65, 65), 'OngoingMockInjection').
name(p_fields_203, simple_name, mock_injection_1_code35, name, range(mock_injection_1, 2130, 6, 65, 65), 'fields').
name(p_field_owner_204, simple_name, mock_injection_1_code39, name, range(mock_injection_1, 2145, 10, 65, 65), 'fieldOwner').
name(f_field_owner_205, simple_name, mock_injection_1_expr7, name, range(mock_injection_1, 2176, 10, 66, 66), 'fieldOwner').
name(m_check_not_null_178, simple_name, mock_injection_1_expr8, name, range(mock_injection_1, 2189, 12, 66, 66), 'checkNotNull').
name(p_field_owner_204, simple_name, mock_injection_1_expr8, (arguments, 0), range(mock_injection_1, 2202, 10, 66, 66), 'fieldOwner').
name(f_fields_197, simple_name, mock_injection_1_expr12, name, range(mock_injection_1, 2246, 6, 67, 67), 'fields').
name(m_add_all_179, simple_name, mock_injection_1_expr10, name, range(mock_injection_1, 2253, 6, 67, 67), 'addAll').
name(m_check_items_not_null_180, simple_name, mock_injection_1_expr11, name, range(mock_injection_1, 2260, 17, 67, 67), 'checkItemsNotNull').
name(p_fields_203, simple_name, mock_injection_1_expr11, (arguments, 0), range(mock_injection_1, 2278, 6, 67, 67), 'fields').
name(f_mocks_198, simple_name, mock_injection_1_expr16, name, range(mock_injection_1, 2393, 5, 71, 71), 'mocks').
name(m_add_all_179, simple_name, mock_injection_1_expr14, name, range(mock_injection_1, 2399, 6, 71, 71), 'addAll').
name(m_check_not_null_178, simple_name, mock_injection_1_expr15, name, range(mock_injection_1, 2406, 12, 71, 71), 'checkNotNull').
name(p_mocks_206, simple_name, mock_injection_1_expr15, (arguments, 0), range(mock_injection_1, 2419, 5, 71, 71), 'mocks').
name(f_injection_strategies_199, simple_name, mock_injection_1_expr19, expression, range(mock_injection_1, 2549, 19, 76, 76), 'injectionStrategies').
name(m_then_try_181, simple_name, mock_injection_1_expr19, name, range(mock_injection_1, 2569, 7, 76, 76), 'thenTry').
name(f_injection_strategies_199, simple_name, mock_injection_1_expr22, expression, range(mock_injection_1, 2722, 19, 81, 81), 'injectionStrategies').
name(m_then_try_181, simple_name, mock_injection_1_expr22, name, range(mock_injection_1, 2742, 7, 81, 81), 'thenTry').
name(f_post_injection_strategies_200, simple_name, mock_injection_1_expr25, expression, range(mock_injection_1, 2893, 23, 86, 86), 'postInjectionStrategies').
name(m_then_try_181, simple_name, mock_injection_1_expr25, name, range(mock_injection_1, 2917, 7, 86, 86), 'thenTry').
name(v_field_207, simple_name, mock_injection_1_code49, name, range(mock_injection_1, 3049, 5, 91, 91), 'field').
name(f_fields_197, simple_name, mock_injection_1_stmt12, expression, range(mock_injection_1, 3057, 6, 91, 91), 'fields').
%mockito_annotations_1 - org.mockito.MockitoAnnotations
name(p_test_class_1, simple_name, mockito_annotations_1_expr1, left_operand, range(mockito_annotations_1, 3559, 9, 90, 90), 'testClass').
name(v_annotation_engine_2, simple_name, mockito_annotations_1_code5, name, range(mockito_annotations_1, 3776, 16, 94, 94), 'annotationEngine').
name(m_get_annotation_engine_2, simple_name, mockito_annotations_1_expr2, name, range(mockito_annotations_1, 3821, 19, 94, 94), 'getAnnotationEngine').
name(v_clazz_3, simple_name, mockito_annotations_1_code10, name, range(mockito_annotations_1, 3861, 5, 95, 95), 'clazz').
name(p_test_class_1, simple_name, mockito_annotations_1_expr4, expression, range(mockito_annotations_1, 3869, 9, 95, 95), 'testClass').
name(m_get_class_4, simple_name, mockito_annotations_1_expr4, name, range(mockito_annotations_1, 3879, 8, 95, 95), 'getClass').
name(v_annotation_engine_2, simple_name, mockito_annotations_1_expr6, expression, range(mockito_annotations_1, 3983, 16, 98, 98), 'annotationEngine').
name(m_get_class_4, simple_name, mockito_annotations_1_expr6, name, range(mockito_annotations_1, 4000, 8, 98, 98), 'getClass').
name(m_get_annotation_engine_5, simple_name, mockito_annotations_1_expr8, name, range(mockito_annotations_1, 4048, 19, 98, 98), 'getAnnotationEngine').
name(m_get_class_4, simple_name, mockito_annotations_1_expr7, name, range(mockito_annotations_1, 4070, 8, 98, 98), 'getClass').
name(v_clazz_3, simple_name, mockito_annotations_1_expr10, left_operand, range(mockito_annotations_1, 4287, 5, 101, 101), 'clazz').
name(m_scan_deprecated_way_7, simple_name, mockito_annotations_1_expr12, name, range(mockito_annotations_1, 4328, 17, 102, 102), 'scanDeprecatedWay').
name(v_annotation_engine_2, simple_name, mockito_annotations_1_expr12, (arguments, 0), range(mockito_annotations_1, 4346, 16, 102, 102), 'annotationEngine').
name(p_test_class_1, simple_name, mockito_annotations_1_expr12, (arguments, 1), range(mockito_annotations_1, 4364, 9, 102, 102), 'testClass').
name(v_clazz_3, simple_name, mockito_annotations_1_expr12, (arguments, 2), range(mockito_annotations_1, 4375, 5, 102, 102), 'clazz').
name(v_clazz_3, simple_name, mockito_annotations_1_expr13, left_hand_side, range(mockito_annotations_1, 4399, 5, 103, 103), 'clazz').
name(v_clazz_3, simple_name, mockito_annotations_1_expr14, expression, range(mockito_annotations_1, 4407, 5, 103, 103), 'clazz').
name(m_get_superclass_8, simple_name, mockito_annotations_1_expr14, name, range(mockito_annotations_1, 4413, 13, 103, 103), 'getSuperclass').
name(v_annotation_engine_2, simple_name, mockito_annotations_1_expr15, expression, range(mockito_annotations_1, 4498, 16, 108, 108), 'annotationEngine').
name(m_process_9, simple_name, mockito_annotations_1_expr15, name, range(mockito_annotations_1, 4515, 7, 108, 108), 'process').
name(p_test_class_1, simple_name, mockito_annotations_1_expr16, expression, range(mockito_annotations_1, 4523, 9, 108, 108), 'testClass').
name(m_get_class_4, simple_name, mockito_annotations_1_expr16, name, range(mockito_annotations_1, 4533, 8, 108, 108), 'getClass').
name(p_test_class_1, simple_name, mockito_annotations_1_expr15, (arguments, 1), range(mockito_annotations_1, 4545, 9, 108, 108), 'testClass').
name(v_fields_7, simple_name, mockito_annotations_1_code17, name, range(mockito_annotations_1, 4685, 6, 112, 112), 'fields').
name(p_clazz_6, simple_name, mockito_annotations_1_expr17, expression, range(mockito_annotations_1, 4694, 5, 112, 112), 'clazz').
name(m_get_declared_fields_10, simple_name, mockito_annotations_1_expr17, name, range(mockito_annotations_1, 4700, 17, 112, 112), 'getDeclaredFields').
name(v_field_8, simple_name, mockito_annotations_1_code18, name, range(mockito_annotations_1, 4741, 5, 114, 114), 'field').
name(v_fields_7, simple_name, mockito_annotations_1_stmt10, expression, range(mockito_annotations_1, 4749, 6, 114, 114), 'fields').
name(m_process_annotation_deprecated_way_11, simple_name, mockito_annotations_1_expr18, name, range(mockito_annotations_1, 4771, 30, 115, 115), 'processAnnotationDeprecatedWay').
name(p_annotation_engine_4, simple_name, mockito_annotations_1_expr18, (arguments, 0), range(mockito_annotations_1, 4802, 16, 115, 115), 'annotationEngine').
name(p_test_class_5, simple_name, mockito_annotations_1_expr18, (arguments, 1), range(mockito_annotations_1, 4820, 9, 115, 115), 'testClass').
name(v_field_8, simple_name, mockito_annotations_1_expr18, (arguments, 2), range(mockito_annotations_1, 4831, 5, 115, 115), 'field').
name(v_already_assigned_12, simple_name, mockito_annotations_1_code22, name, range(mockito_annotations_1, 5024, 15, 121, 121), 'alreadyAssigned').
name(v_annotation_13, simple_name, mockito_annotations_1_code23, name, range(mockito_annotations_1, 5072, 10, 122, 122), 'annotation').
name(p_field_11, simple_name, mockito_annotations_1_expr19, expression, range(mockito_annotations_1, 5085, 5, 122, 122), 'field').
name(m_get_annotations_12, simple_name, mockito_annotations_1_expr19, name, range(mockito_annotations_1, 5091, 14, 122, 122), 'getAnnotations').
%constructor_injection_1 - org.mockito.internal.configuration.injection.ConstructorInjection
name(m_constructor_injection_168, simple_name, constructor_injection_1_code3, name, range(constructor_injection_1, 1278, 20, 42, 42), 'ConstructorInjection').
%spy_annotation_engine_1 - org.mockito.internal.configuration.SpyAnnotationEngine
name(t_spy_annotation_engine_13, simple_name, spy_annotation_engine_1_code2, name, range(spy_annotation_engine_1, 1238, 19, 40, 40), 'SpyAnnotationEngine').
name(v_fields_177, simple_name, spy_annotation_engine_1_code9, name, range(spy_annotation_engine_1, 1536, 6, 48, 48), 'fields').
name(p_context_175, simple_name, spy_annotation_engine_1_expr1, expression, range(spy_annotation_engine_1, 1545, 7, 48, 48), 'context').
name(m_get_declared_fields_10, simple_name, spy_annotation_engine_1_expr1, name, range(spy_annotation_engine_1, 1553, 17, 48, 48), 'getDeclaredFields').
name(v_field_178, simple_name, spy_annotation_engine_1_code10, name, range(spy_annotation_engine_1, 1593, 5, 49, 49), 'field').
name(v_fields_177, simple_name, spy_annotation_engine_1_stmt2, expression, range(spy_annotation_engine_1, 1601, 6, 49, 49), 'fields').
name(v_field_178, simple_name, spy_annotation_engine_1_expr3, expression, range(spy_annotation_engine_1, 1627, 5, 50, 50), 'field').
name(m_is_annotation_present_164, simple_name, spy_annotation_engine_1_expr3, name, range(spy_annotation_engine_1, 1633, 19, 50, 50), 'isAnnotationPresent').
name(v_field_178, simple_name, spy_annotation_engine_1_expr6, expression, range(spy_annotation_engine_1, 1668, 5, 50, 50), 'field').
name(m_is_annotation_present_164, simple_name, spy_annotation_engine_1_expr6, name, range(spy_annotation_engine_1, 1674, 19, 50, 50), 'isAnnotationPresent').
%mock_scanner_1 - org.mockito.internal.configuration.injection.scanner.MockScanner
name(f_mock_util_263, simple_name, mock_scanner_1_code7, name, range(mock_scanner_1, 610, 8, 22, 22), 'mockUtil').
name(m_mock_scanner_158, simple_name, mock_scanner_1_code9, name, range(mock_scanner_1, 885, 11, 32, 32), 'MockScanner').
name(p_instance_264, simple_name, mock_scanner_1_code11, name, range(mock_scanner_1, 904, 8, 32, 32), 'instance').
name(p_clazz_265, simple_name, mock_scanner_1_code13, name, range(mock_scanner_1, 923, 5, 32, 32), 'clazz').
name(f_instance_266, simple_name, mock_scanner_1_expr3, name, range(mock_scanner_1, 945, 8, 33, 33), 'instance').
name(p_instance_264, simple_name, mock_scanner_1_expr2, right_hand_side, range(mock_scanner_1, 956, 8, 33, 33), 'instance').
name(f_clazz_267, simple_name, mock_scanner_1_expr6, name, range(mock_scanner_1, 979, 5, 34, 34), 'clazz').
name(p_clazz_265, simple_name, mock_scanner_1_expr5, right_hand_side, range(mock_scanner_1, 987, 5, 34, 34), 'clazz').
name(p_mocks_268, simple_name, mock_scanner_1_expr8, expression, range(mock_scanner_1, 1313, 5, 47, 47), 'mocks').
name(m_add_all_179, simple_name, mock_scanner_1_expr8, name, range(mock_scanner_1, 1319, 6, 47, 47), 'addAll').
name(m_scan_209, simple_name, mock_scanner_1_expr9, name, range(mock_scanner_1, 1326, 4, 47, 47), 'scan').
name(v_mocks_269, simple_name, mock_scanner_1_code22, name, range(mock_scanner_1, 1577, 5, 56, 56), 'mocks').
name(m_new_mock_safe_hash_set_154, simple_name, mock_scanner_1_expr10, name, range(mock_scanner_1, 1585, 18, 56, 56), 'newMockSafeHashSet').
name(v_field_270, simple_name, mock_scanner_1_code23, name, range(mock_scanner_1, 1626, 5, 57, 57), 'field').
name(f_clazz_267, simple_name, mock_scanner_1_expr11, expression, range(mock_scanner_1, 1634, 5, 57, 57), 'clazz').
name(m_get_declared_fields_10, simple_name, mock_scanner_1_expr11, name, range(mock_scanner_1, 1640, 17, 57, 57), 'getDeclaredFields').
name(v_field_reader_271, simple_name, mock_scanner_1_code26, name, range(mock_scanner_1, 1721, 11, 59, 59), 'fieldReader').
name(f_instance_266, simple_name, mock_scanner_1_expr12, (arguments, 0), range(mock_scanner_1, 1751, 8, 59, 59), 'instance').
name(v_field_270, simple_name, mock_scanner_1_expr12, (arguments, 1), range(mock_scanner_1, 1761, 5, 59, 59), 'field').
name(v_mock_instance_272, simple_name, mock_scanner_1_code29, name, range(mock_scanner_1, 1789, 12, 61, 61), 'mockInstance').
name(m_prepared_mock_211, simple_name, mock_scanner_1_expr13, name, range(mock_scanner_1, 1804, 12, 61, 61), 'preparedMock').
name(v_field_reader_271, simple_name, mock_scanner_1_expr14, expression, range(mock_scanner_1, 1817, 11, 61, 61), 'fieldReader').
name(m_read_212, simple_name, mock_scanner_1_expr14, name, range(mock_scanner_1, 1829, 4, 61, 61), 'read').
name(v_field_270, simple_name, mock_scanner_1_expr13, (arguments, 1), range(mock_scanner_1, 1837, 5, 61, 61), 'field').
name(v_mock_instance_272, simple_name, mock_scanner_1_expr15, left_operand, range(mock_scanner_1, 1861, 12, 62, 62), 'mockInstance').
name(v_mocks_269, simple_name, mock_scanner_1_stmt9, expression, range(mock_scanner_1, 1965, 5, 66, 66), 'mocks').
name(m_is_annotated_by_mock_or_spy_213, simple_name, mock_scanner_1_expr16, name, range(mock_scanner_1, 2055, 22, 70, 70), 'isAnnotatedByMockOrSpy').
name(p_field_274, simple_name, mock_scanner_1_expr16, (arguments, 0), range(mock_scanner_1, 2078, 5, 70, 70), 'field').
name(m_is_mock_or_spy_214, simple_name, mock_scanner_1_expr17, name, range(mock_scanner_1, 2136, 11, 72, 72), 'isMockOrSpy').
name(p_instance_273, simple_name, mock_scanner_1_expr17, (arguments, 0), range(mock_scanner_1, 2148, 8, 72, 72), 'instance').
name(p_field_275, simple_name, mock_scanner_1_expr21, expression, range(mock_scanner_1, 2380, 5, 80, 80), 'field').
name(m_get_annotation_207, simple_name, mock_scanner_1_expr21, name, range(mock_scanner_1, 2386, 13, 80, 80), 'getAnnotation').
name(p_field_275, simple_name, mock_scanner_1_expr24, expression, range(mock_scanner_1, 2438, 5, 81, 81), 'field').
name(m_get_annotation_207, simple_name, mock_scanner_1_expr24, name, range(mock_scanner_1, 2444, 13, 81, 81), 'getAnnotation').
name(p_field_275, simple_name, mock_scanner_1_expr27, expression, range(mock_scanner_1, 2497, 5, 82, 82), 'field').
name(m_get_annotation_207, simple_name, mock_scanner_1_expr27, name, range(mock_scanner_1, 2503, 13, 82, 82), 'getAnnotation').
name(f_mock_util_263, simple_name, mock_scanner_1_expr30, expression, range(mock_scanner_1, 2622, 8, 86, 86), 'mockUtil').
name(m_is_mock_215, simple_name, mock_scanner_1_expr30, name, range(mock_scanner_1, 2631, 6, 86, 86), 'isMock').
name(p_instance_276, simple_name, mock_scanner_1_expr30, (arguments, 0), range(mock_scanner_1, 2638, 8, 86, 86), 'instance').
name(f_mock_util_263, simple_name, mock_scanner_1_expr31, expression, range(mock_scanner_1, 2667, 8, 87, 87), 'mockUtil').
name(m_is_spy_216, simple_name, mock_scanner_1_expr31, name, range(mock_scanner_1, 2676, 5, 87, 87), 'isSpy').
name(p_instance_276, simple_name, mock_scanner_1_expr31, (arguments, 0), range(mock_scanner_1, 2682, 8, 87, 87), 'instance').
%returns_empty_values_1 - org.mockito.internal.stubbing.defaultanswers.ReturnsEmptyValues
name(t_returns_empty_values_27, simple_name, returns_empty_values_1_code2, name, range(returns_empty_values_1, 1556, 18, 53, 53), 'ReturnsEmptyValues').
name(f_methods_guru_322, simple_name, returns_empty_values_1_code10, name, range(returns_empty_values_1, 1715, 11, 56, 56), 'methodsGuru').
name(f_mock_util_323, simple_name, returns_empty_values_1_code14, name, range(returns_empty_values_1, 1767, 8, 57, 57), 'mockUtil').
name(t_primitives_28, simple_name, returns_empty_values_1_expr3, expression, range(returns_empty_values_1, 3012, 10, 83, 83), 'Primitives').
name(m_is_primitive_or_wrapper_286, simple_name, returns_empty_values_1_expr3, name, range(returns_empty_values_1, 3023, 20, 83, 83), 'isPrimitiveOrWrapper').
name(p_type_325, simple_name, returns_empty_values_1_expr3, (arguments, 0), range(returns_empty_values_1, 3044, 4, 83, 83), 'type').
name(p_type_325, simple_name, returns_empty_values_1_expr4, left_operand, range(returns_empty_values_1, 3322, 4, 87, 87), 'type').
name(p_type_325, simple_name, returns_empty_values_1_expr6, left_operand, range(returns_empty_values_1, 3414, 4, 89, 89), 'type').
name(p_type_325, simple_name, returns_empty_values_1_expr8, left_operand, range(returns_empty_values_1, 3496, 4, 91, 91), 'type').
name(p_type_325, simple_name, returns_empty_values_1_expr10, left_operand, range(returns_empty_values_1, 3582, 4, 93, 93), 'type').
name(p_type_325, simple_name, returns_empty_values_1_expr12, left_operand, range(returns_empty_values_1, 3670, 4, 95, 95), 'type').
name(p_type_325, simple_name, returns_empty_values_1_expr14, left_operand, range(returns_empty_values_1, 3756, 4, 97, 97), 'type').
name(p_type_325, simple_name, returns_empty_values_1_expr16, left_operand, range(returns_empty_values_1, 3854, 4, 99, 99), 'type').
name(p_type_325, simple_name, returns_empty_values_1_expr18, left_operand, range(returns_empty_values_1, 3940, 4, 101, 101), 'type').
name(p_type_325, simple_name, returns_empty_values_1_expr20, left_operand, range(returns_empty_values_1, 4032, 4, 103, 103), 'type').
name(p_type_325, simple_name, returns_empty_values_1_expr22, left_operand, range(returns_empty_values_1, 4122, 4, 105, 105), 'type').
name(p_type_325, simple_name, returns_empty_values_1_expr24, left_operand, range(returns_empty_values_1, 4212, 4, 107, 107), 'type').
name(p_type_325, simple_name, returns_empty_values_1_expr26, left_operand, range(returns_empty_values_1, 4306, 4, 109, 109), 'type').
name(p_type_325, simple_name, returns_empty_values_1_expr28, left_operand, range(returns_empty_values_1, 4402, 4, 111, 111), 'type').
name(p_type_325, simple_name, returns_empty_values_1_expr30, left_operand, range(returns_empty_values_1, 4496, 4, 113, 113), 'type').
%reporter_1 - org.mockito.exceptions.Reporter
name(t_reporter_4, simple_name, reporter_1_code2, name, range(reporter_1, 2245, 8, 54, 54), 'Reporter').
%default_plugin_switch_1 - org.mockito.internal.configuration.plugins.DefaultPluginSwitch
name(t_default_plugin_switch_18, simple_name, default_plugin_switch_1_code2, name, range(default_plugin_switch_1, 101, 19, 5, 5), 'DefaultPluginSwitch').
%plugins_1 - org.mockito.internal.configuration.plugins.Plugins
name(f_registry_294, simple_name, plugins_1_code7, name, range(plugins_1, 278, 8, 11, 11), 'registry').
name(f_registry_294, simple_name, plugins_1_expr2, expression, range(plugins_1, 840, 8, 27, 27), 'registry').
name(m_get_mock_maker_231, simple_name, plugins_1_expr2, name, range(plugins_1, 849, 12, 27, 27), 'getMockMaker').
%accessibility_changer_1 - org.mockito.internal.util.reflection.AccessibilityChanger
name(t_accessibility_changer_45, simple_name, accessibility_changer_1_code2, name, range(accessibility_changer_1, 224, 20, 9, 9), 'AccessibilityChanger').
name(f_was_accessible_378, simple_name, accessibility_changer_1_code7, name, range(accessibility_changer_1, 272, 13, 11, 11), 'wasAccessible').
name(f_was_accessible_378, simple_name, accessibility_changer_1_expr1, left_hand_side, range(accessibility_changer_1, 822, 13, 29, 29), 'wasAccessible').
name(p_accessible_object_380, simple_name, accessibility_changer_1_expr2, expression, range(accessibility_changer_1, 838, 16, 29, 29), 'accessibleObject').
name(m_is_accessible_350, simple_name, accessibility_changer_1_expr2, name, range(accessibility_changer_1, 855, 12, 29, 29), 'isAccessible').
name(p_accessible_object_380, simple_name, accessibility_changer_1_expr3, expression, range(accessibility_changer_1, 879, 16, 30, 30), 'accessibleObject').
name(m_set_accessible_351, simple_name, accessibility_changer_1_expr3, name, range(accessibility_changer_1, 896, 13, 30, 30), 'setAccessible').
%mock_injection_strategy_1 - org.mockito.internal.configuration.injection.MockInjectionStrategy
name(t_mock_injection_strategy_14, simple_name, mock_injection_strategy_1_code2, name, range(mock_injection_strategy_1, 291, 21, 14, 14), 'MockInjectionStrategy').
name(f_next_strategy_212, simple_name, mock_injection_strategy_1_expr2, left_operand, range(mock_injection_strategy_1, 1072, 12, 41, 41), 'nextStrategy').
name(f_next_strategy_212, simple_name, mock_injection_strategy_1_expr3, expression, range(mock_injection_strategy_1, 1108, 12, 42, 42), 'nextStrategy').
name(m_then_try_181, simple_name, mock_injection_strategy_1_expr3, name, range(mock_injection_strategy_1, 1121, 7, 42, 42), 'thenTry').
name(p_strategy_211, simple_name, mock_injection_strategy_1_expr3, (arguments, 0), range(mock_injection_strategy_1, 1129, 8, 42, 42), 'strategy').
name(f_next_strategy_212, simple_name, mock_injection_strategy_1_expr4, left_hand_side, range(mock_injection_strategy_1, 1169, 12, 44, 44), 'nextStrategy').
name(p_strategy_211, simple_name, mock_injection_strategy_1_expr4, right_hand_side, range(mock_injection_strategy_1, 1184, 8, 44, 44), 'strategy').
name(p_strategy_211, simple_name, mock_injection_strategy_1_stmt5, expression, range(mock_injection_strategy_1, 1219, 8, 46, 46), 'strategy').
%global_configuration_1 - org.mockito.internal.configuration.GlobalConfiguration
name(f_global_configuration_150, simple_name, global_configuration_1_code10, name, range(global_configuration_1, 838, 20, 22, 22), 'GLOBAL_CONFIGURATION').
name(f_global_configuration_150, simple_name, global_configuration_1_expr2, expression, range(global_configuration_1, 983, 20, 26, 26), 'GLOBAL_CONFIGURATION').
name(m_get_137, simple_name, global_configuration_1_expr2, name, range(global_configuration_1, 1004, 3, 26, 26), 'get').
name(m_global_configuration_3, simple_name, global_configuration_1_code15, name, range(global_configuration_1, 1029, 19, 29, 29), 'GlobalConfiguration').
name(f_global_configuration_150, simple_name, global_configuration_1_expr4, expression, range(global_configuration_1, 1144, 20, 31, 31), 'GLOBAL_CONFIGURATION').
name(m_get_137, simple_name, global_configuration_1_expr4, name, range(global_configuration_1, 1165, 3, 31, 31), 'get').
name(f_global_configuration_150, simple_name, global_configuration_1_expr5, expression, range(global_configuration_1, 1194, 20, 32, 32), 'GLOBAL_CONFIGURATION').
name(m_set_138, simple_name, global_configuration_1_expr5, name, range(global_configuration_1, 1215, 3, 32, 32), 'set').
name(m_create_config_139, simple_name, global_configuration_1_expr6, name, range(global_configuration_1, 1219, 12, 32, 32), 'createConfig').
name(v_default_configuration_151, simple_name, global_configuration_1_code19, name, range(global_configuration_1, 1334, 20, 37, 37), 'defaultConfiguration').
name(v_config_152, simple_name, global_configuration_1_code22, name, range(global_configuration_1, 1422, 6, 38, 38), 'config').
name(m_load_configuration_112, simple_name, global_configuration_1_expr8, name, range(global_configuration_1, 1453, 17, 38, 38), 'loadConfiguration').
name(v_config_152, simple_name, global_configuration_1_expr10, left_operand, range(global_configuration_1, 1486, 6, 39, 39), 'config').
name(v_config_152, simple_name, global_configuration_1_stmt7, expression, range(global_configuration_1, 1523, 6, 40, 40), 'config').
name(f_global_configuration_150, simple_name, global_configuration_1_expr13, expression, range(global_configuration_1, 1863, 20, 55, 55), 'GLOBAL_CONFIGURATION').
name(m_get_137, simple_name, global_configuration_1_expr13, name, range(global_configuration_1, 1884, 3, 55, 55), 'get').
name(m_get_annotation_engine_143, simple_name, global_configuration_1_expr12, name, range(global_configuration_1, 1890, 19, 55, 55), 'getAnnotationEngine').
%default_annotation_engine_1 - org.mockito.internal.configuration.DefaultAnnotationEngine
name(f_annotation_processor_map_131, simple_name, default_annotation_engine_1_code15, name, range(default_annotation_engine_1, 1018, 22, 30, 30), 'annotationProcessorMap').
name(m_default_annotation_engine_118, simple_name, default_annotation_engine_1_code25, name, range(default_annotation_engine_1, 1128, 23, 32, 32), 'DefaultAnnotationEngine').
name(m_register_annotation_processor_119, simple_name, default_annotation_engine_1_expr2, name, range(default_annotation_engine_1, 1164, 27, 33, 33), 'registerAnnotationProcessor').
name(m_register_annotation_processor_119, simple_name, default_annotation_engine_1_expr5, name, range(default_annotation_engine_1, 1244, 27, 34, 34), 'registerAnnotationProcessor').
name(m_register_annotation_processor_119, simple_name, default_annotation_engine_1_expr8, name, range(default_annotation_engine_1, 1361, 27, 35, 35), 'registerAnnotationProcessor').
name(f_annotation_processor_map_131, simple_name, default_annotation_engine_1_expr11, expression, range(default_annotation_engine_1, 2388, 22, 58, 58), 'annotationProcessorMap').
name(m_put_126, simple_name, default_annotation_engine_1_expr11, name, range(default_annotation_engine_1, 2411, 3, 58, 58), 'put').
name(p_annotation_class_137, simple_name, default_annotation_engine_1_expr11, (arguments, 0), range(default_annotation_engine_1, 2415, 15, 58, 58), 'annotationClass').
name(p_field_annotation_processor_138, simple_name, default_annotation_engine_1_expr11, (arguments, 1), range(default_annotation_engine_1, 2432, 24, 58, 58), 'fieldAnnotationProcessor').
name(v_fields_141, simple_name, default_annotation_engine_1_code38, name, range(default_annotation_engine_1, 2545, 6, 62, 62), 'fields').
name(p_clazz_139, simple_name, default_annotation_engine_1_expr12, expression, range(default_annotation_engine_1, 2554, 5, 62, 62), 'clazz').
name(m_get_declared_fields_10, simple_name, default_annotation_engine_1_expr12, name, range(default_annotation_engine_1, 2560, 17, 62, 62), 'getDeclaredFields').
name(v_field_142, simple_name, default_annotation_engine_1_code39, name, range(default_annotation_engine_1, 2600, 5, 63, 63), 'field').
name(v_fields_141, simple_name, default_annotation_engine_1_stmt6, expression, range(default_annotation_engine_1, 2608, 6, 63, 63), 'fields').
name(v_already_assigned_143, simple_name, default_annotation_engine_1_code42, name, range(default_annotation_engine_1, 2638, 15, 64, 64), 'alreadyAssigned').
name(v_annotation_144, simple_name, default_annotation_engine_1_code43, name, range(default_annotation_engine_1, 2690, 10, 65, 65), 'annotation').
name(v_field_142, simple_name, default_annotation_engine_1_expr13, expression, range(default_annotation_engine_1, 2703, 5, 65, 65), 'field').
name(m_get_annotations_12, simple_name, default_annotation_engine_1_expr13, name, range(default_annotation_engine_1, 2709, 14, 65, 65), 'getAnnotations').
%name_based_candidate_filter_1 - org.mockito.internal.configuration.injection.filter.NameBasedCandidateFilter
name(f_mock_util_244, simple_name, name_based_candidate_filter_1_code7, name, range(name_based_candidate_filter_1, 481, 8, 16, 16), 'mockUtil').
name(m_name_based_candidate_filter_190, simple_name, name_based_candidate_filter_1_code9, name, range(name_based_candidate_filter_1, 520, 24, 18, 18), 'NameBasedCandidateFilter').
name(p_next_245, simple_name, name_based_candidate_filter_1_code11, name, range(name_based_candidate_filter_1, 565, 4, 18, 18), 'next').
name(f_next_246, simple_name, name_based_candidate_filter_1_expr3, name, range(name_based_candidate_filter_1, 586, 4, 19, 19), 'next').
name(p_next_245, simple_name, name_based_candidate_filter_1_expr2, right_hand_side, range(name_based_candidate_filter_1, 593, 4, 19, 19), 'next').
%state_master_1 - org.mockito.StateMaster
name(t_state_master_1, simple_name, state_master_1_code2, name, range(state_master_1, 221, 11, 10, 10), 'StateMaster').
name(f_mocking_progress_16, simple_name, state_master_1_code8, name, range(state_master_1, 284, 15, 12, 12), 'mockingProgress').
name(f_mocking_progress_16, simple_name, state_master_1_expr2, expression, range(state_master_1, 370, 15, 15, 15), 'mockingProgress').
name(m_reset_16, simple_name, state_master_1_expr2, name, range(state_master_1, 386, 5, 15, 15), 'reset').
name(f_mocking_progress_16, simple_name, state_master_1_expr3, expression, range(state_master_1, 403, 15, 16, 16), 'mockingProgress').
name(m_reset_ongoing_stubbing_17, simple_name, state_master_1_expr3, name, range(state_master_1, 419, 20, 16, 16), 'resetOngoingStubbing').
name(f_mocking_progress_16, simple_name, state_master_1_expr4, expression, range(state_master_1, 491, 15, 20, 20), 'mockingProgress').
name(m_validate_state_19, simple_name, state_master_1_expr4, name, range(state_master_1, 507, 13, 20, 20), 'validateState').
%mocking_progress_impl_1 - org.mockito.internal.progress.MockingProgressImpl
name(t_mocking_progress_impl_24, simple_name, mocking_progress_impl_1_code2, name, range(mocking_progress_impl_1, 667, 19, 19, 19), 'MockingProgressImpl').
name(f_reporter_304, simple_name, mocking_progress_impl_1_code9, name, range(mocking_progress_impl_1, 748, 8, 21, 21), 'reporter').
name(f_argument_matcher_storage_305, simple_name, mocking_progress_impl_1_code15, name, range(mocking_progress_impl_1, 816, 22, 22, 22), 'argumentMatcherStorage').
name(f_stubbing_in_progress_306, simple_name, mocking_progress_impl_1_code20, name, range(mocking_progress_impl_1, 998, 18, 26, 26), 'stubbingInProgress').
name(f_i_ongoing_stubbing_309, simple_name, mocking_progress_impl_1_expr3, left_hand_side, range(mocking_progress_impl_1, 1707, 16, 49, 49), 'iOngoingStubbing').
name(m_validate_most_stuff_259, simple_name, mocking_progress_impl_1_expr4, name, range(mocking_progress_impl_1, 2158, 17, 68, 68), 'validateMostStuff').
name(f_stubbing_in_progress_306, simple_name, mocking_progress_impl_1_expr5, left_operand, range(mocking_progress_impl_1, 2229, 18, 71, 71), 'stubbingInProgress').
name(t_global_configuration_25, simple_name, mocking_progress_impl_1_expr6, expression, range(mocking_progress_impl_1, 2666, 19, 81, 81), 'GlobalConfiguration').
name(m_validate_141, simple_name, mocking_progress_impl_1_expr6, name, range(mocking_progress_impl_1, 2686, 8, 81, 81), 'validate').
name(f_verification_mode_310, simple_name, mocking_progress_impl_1_expr7, left_operand, range(mocking_progress_impl_1, 2711, 16, 83, 83), 'verificationMode').
name(m_get_argument_matcher_storage_261, simple_name, mocking_progress_impl_1_expr9, name, range(mocking_progress_impl_1, 2923, 25, 89, 89), 'getArgumentMatcherStorage').
name(m_validate_state_260, simple_name, mocking_progress_impl_1_expr8, name, range(mocking_progress_impl_1, 2951, 13, 89, 89), 'validateState').
name(f_stubbing_in_progress_306, simple_name, mocking_progress_impl_1_expr10, left_hand_side, range(mocking_progress_impl_1, 3318, 18, 103, 103), 'stubbingInProgress').
name(f_verification_mode_310, simple_name, mocking_progress_impl_1_expr11, left_hand_side, range(mocking_progress_impl_1, 3353, 16, 104, 104), 'verificationMode').
name(m_get_argument_matcher_storage_261, simple_name, mocking_progress_impl_1_expr13, name, range(mocking_progress_impl_1, 3386, 25, 105, 105), 'getArgumentMatcherStorage').
name(m_reset_265, simple_name, mocking_progress_impl_1_expr12, name, range(mocking_progress_impl_1, 3414, 5, 105, 105), 'reset').
name(f_argument_matcher_storage_305, simple_name, mocking_progress_impl_1_stmt10, expression, range(mocking_progress_impl_1, 3509, 22, 109, 109), 'argumentMatcherStorage').
%mock_util_1 - org.mockito.internal.util.MockUtil
name(t_mock_util_30, simple_name, mock_util_1_code2, name, range(mock_util_1, 773, 8, 22, 22), 'MockUtil').
name(f_mock_maker_332, simple_name, mock_util_1_code9, name, range(mock_util_1, 820, 9, 24, 24), 'mockMaker').
name(t_plugins_31, simple_name, mock_util_1_expr1, expression, range(mock_util_1, 832, 7, 24, 24), 'Plugins').
name(m_get_mock_maker_234, simple_name, mock_util_1_expr1, name, range(mock_util_1, 840, 12, 24, 24), 'getMockMaker').
name(m_is_mockito_mock_300, simple_name, mock_util_1_expr2, name, range(mock_util_1, 2425, 13, 66, 66), 'isMockitoMock').
name(p_mock_337, simple_name, mock_util_1_expr2, (arguments, 0), range(mock_util_1, 2439, 4, 66, 66), 'mock').
name(m_is_mockito_mock_300, simple_name, mock_util_1_expr4, name, range(mock_util_1, 2508, 13, 70, 70), 'isMockitoMock').
name(p_mock_338, simple_name, mock_util_1_expr4, (arguments, 0), range(mock_util_1, 2522, 4, 70, 70), 'mock').
name(m_get_mock_settings_302, simple_name, mock_util_1_expr7, name, range(mock_util_1, 2531, 15, 70, 70), 'getMockSettings').
name(p_mock_338, simple_name, mock_util_1_expr7, (arguments, 0), range(mock_util_1, 2547, 4, 70, 70), 'mock').
name(m_get_default_answer_301, simple_name, mock_util_1_expr6, name, range(mock_util_1, 2553, 16, 70, 70), 'getDefaultAnswer').
name(t_mockito_32, simple_name, q_calls_real_methods_1, qualifier, range(mock_util_1, 2575, 7, 70, 70), 'Mockito').
name(q_calls_real_methods_1, qualified_name, mock_util_1_expr5, right_operand, range(mock_util_1, 2575, 26, 70, 70), 'Mockito.CALLS_REAL_METHODS').
name(f_mock_maker_332, simple_name, mock_util_1_expr9, expression, range(mock_util_1, 2673, 9, 74, 74), 'mockMaker').
name(m_get_handler_303, simple_name, mock_util_1_expr9, name, range(mock_util_1, 2683, 10, 74, 74), 'getHandler').
name(p_mock_339, simple_name, mock_util_1_expr9, (arguments, 0), range(mock_util_1, 2694, 4, 74, 74), 'mock').
%mockito_annotations_mock_annotation_processor_1 - org.mockito.internal.configuration.MockitoAnnotationsMockAnnotationProcessor
name(t_mockito_annotations_mock_annotation_processor_12, simple_name, mockito_annotations_mock_annotation_processor_1_code2, name, range(mockito_annotations_mock_annotation_processor_1, 385, 41, 16, 16), 'MockitoAnnotationsMockAnnotationProcessor').
%inject_mocks_scanner_1 - org.mockito.internal.configuration.injection.scanner.InjectMocksScanner
name(m_inject_mocks_scanner_156, simple_name, inject_mocks_scanner_1_code3, name, range(inject_mocks_scanner_1, 748, 18, 29, 29), 'InjectMocksScanner').
name(p_clazz_255, simple_name, inject_mocks_scanner_1_code5, name, range(inject_mocks_scanner_1, 776, 5, 29, 29), 'clazz').
name(f_clazz_256, simple_name, inject_mocks_scanner_1_expr2, name, range(inject_mocks_scanner_1, 798, 5, 30, 30), 'clazz').
name(p_clazz_255, simple_name, inject_mocks_scanner_1_expr1, right_hand_side, range(inject_mocks_scanner_1, 806, 5, 30, 30), 'clazz').
name(p_mock_dependent_fields_257, simple_name, inject_mocks_scanner_1_expr4, expression, range(inject_mocks_scanner_1, 1047, 19, 40, 40), 'mockDependentFields').
name(m_add_all_179, simple_name, inject_mocks_scanner_1_expr4, name, range(inject_mocks_scanner_1, 1067, 6, 40, 40), 'addAll').
name(m_scan_206, simple_name, inject_mocks_scanner_1_expr5, name, range(inject_mocks_scanner_1, 1074, 4, 40, 40), 'scan').
name(v_mock_dependent_fields_258, simple_name, inject_mocks_scanner_1_code14, name, range(inject_mocks_scanner_1, 1257, 19, 49, 49), 'mockDependentFields').
name(v_fields_259, simple_name, inject_mocks_scanner_1_code21, name, range(inject_mocks_scanner_1, 1317, 6, 50, 50), 'fields').
name(f_clazz_256, simple_name, inject_mocks_scanner_1_expr7, expression, range(inject_mocks_scanner_1, 1326, 5, 50, 50), 'clazz').
name(m_get_declared_fields_10, simple_name, inject_mocks_scanner_1_expr7, name, range(inject_mocks_scanner_1, 1332, 17, 50, 50), 'getDeclaredFields').
name(v_field_260, simple_name, inject_mocks_scanner_1_code22, name, range(inject_mocks_scanner_1, 1372, 5, 51, 51), 'field').
name(v_fields_259, simple_name, inject_mocks_scanner_1_stmt5, expression, range(inject_mocks_scanner_1, 1380, 6, 51, 51), 'fields').
name(v_field_260, simple_name, inject_mocks_scanner_1_expr9, expression, range(inject_mocks_scanner_1, 1414, 5, 52, 52), 'field').
name(m_get_annotation_207, simple_name, inject_mocks_scanner_1_expr9, name, range(inject_mocks_scanner_1, 1420, 13, 52, 52), 'getAnnotation').
name(v_mock_dependent_fields_258, simple_name, inject_mocks_scanner_1_stmt7, expression, range(inject_mocks_scanner_1, 1645, 19, 58, 58), 'mockDependentFields').

%%% Literals
%returns_empty_values_test_1 - org.mockito.internal.stubbing.defaultanswers.ReturnsEmptyValuesTest
%iterables_1 - org.mockito.internal.util.collections.Iterables
%sets_1 - org.mockito.internal.util.collections.Sets
%primitives_1 - org.mockito.internal.util.Primitives
literal(primitives_1_literal1, boolean_literal, primitives_1_expr20, (arguments, 1), range(primitives_1, 2649, 5, 69, 69), false).
literal(primitives_1_literal2, character_literal, primitives_1_expr22, (arguments, 1), range(primitives_1, 2722, 8, 70, 70), '\u0000').
literal(primitives_1_literal3, number_literal, primitives_1_expr26, expression, range(primitives_1, 2800, 1, 71, 71), 0).
literal(primitives_1_literal4, number_literal, primitives_1_expr29, expression, range(primitives_1, 2873, 1, 72, 72), 0).
literal(primitives_1_literal5, number_literal, primitives_1_expr30, (arguments, 1), range(primitives_1, 2940, 1, 73, 73), 0).
literal(primitives_1_literal6, number_literal, primitives_1_expr32, (arguments, 1), range(primitives_1, 3004, 2, 74, 74), 0).
literal(primitives_1_literal7, number_literal, primitives_1_expr34, (arguments, 1), range(primitives_1, 3070, 2, 75, 75), 0F).
literal(primitives_1_literal8, number_literal, primitives_1_expr36, (arguments, 1), range(primitives_1, 3137, 2, 76, 76), 0D).
literal(primitives_1_literal9, boolean_literal, primitives_1_expr38, (arguments, 1), range(primitives_1, 3206, 5, 78, 78), false).
literal(primitives_1_literal10, character_literal, primitives_1_expr40, (arguments, 1), range(primitives_1, 3274, 8, 79, 79), '\u0000').
literal(primitives_1_literal11, number_literal, primitives_1_expr44, expression, range(primitives_1, 3352, 1, 80, 80), 0).
literal(primitives_1_literal12, number_literal, primitives_1_expr47, expression, range(primitives_1, 3425, 1, 81, 81), 0).
literal(primitives_1_literal13, number_literal, primitives_1_expr48, (arguments, 1), range(primitives_1, 3488, 1, 82, 82), 0).
literal(primitives_1_literal14, number_literal, primitives_1_expr50, (arguments, 1), range(primitives_1, 3552, 2, 83, 83), 0).
literal(primitives_1_literal15, number_literal, primitives_1_expr52, (arguments, 1), range(primitives_1, 3618, 2, 84, 84), 0F).
literal(primitives_1_literal16, number_literal, primitives_1_expr54, (arguments, 1), range(primitives_1, 3685, 2, 85, 85), 0D).
%final_mock_candidate_filter_1 - org.mockito.internal.configuration.injection.filter.FinalMockCandidateFilter
%checks_1 - org.mockito.internal.util.Checks
literal(checks_1_literal1, null_literal, checks_1_expr1, right_operand, range(checks_1, 303, 4, 14, 14), null).
%test_base_1 - org.mockitoutil.TestBase
literal(test_base_1_literal1, boolean_literal, test_base_1_expr1, (arguments, 0), range(test_base_1, 1318, 5, 42, 42), false).
literal(test_base_1_literal2, null_literal, test_base_1_expr3, (arguments, 0), range(test_base_1, 1388, 4, 43, 43), null).
%configuration_access_1 - org.mockito.internal.configuration.ConfigurationAccess
%default_stack_trace_cleaner_provider_1 - org.mockito.internal.exceptions.stacktrace.DefaultStackTraceCleanerProvider
%injecting_annotation_engine_1 - org.mockito.internal.configuration.InjectingAnnotationEngine
%field_reader_1 - org.mockito.internal.util.reflection.FieldReader
%property_and_setter_injection_1 - org.mockito.internal.configuration.injection.PropertyAndSetterInjection
%type_based_candidate_filter_1 - org.mockito.internal.configuration.injection.filter.TypeBasedCandidateFilter
%thread_safe_mocking_progress_1 - org.mockito.internal.progress.ThreadSafeMockingProgress
literal(thread_safe_mocking_progress_1_literal1, null_literal, thread_safe_mocking_progress_1_expr2, right_operand, range(thread_safe_mocking_progress_1, 726, 4, 21, 21), null).
%mock_annotation_processor_1 - org.mockito.internal.configuration.MockAnnotationProcessor
%argument_matcher_storage_impl_1 - org.mockito.internal.progress.ArgumentMatcherStorageImpl
%spy_on_injected_fields_handler_1 - org.mockito.internal.configuration.injection.SpyOnInjectedFieldsHandler
%mockito_configuration_1 - org.mockito.configuration.MockitoConfiguration
literal(mockito_configuration_1_literal1, null_literal, mockito_configuration_1_code11, initializer, range(mockito_configuration_1, 571, 4, 17, 17), null).
literal(mockito_configuration_1_literal2, boolean_literal, mockito_configuration_1_code15, initializer, range(mockito_configuration_1, 701, 4, 20, 20), true).
literal(mockito_configuration_1_literal3, null_literal, mockito_configuration_1_expr7, right_operand, range(mockito_configuration_1, 1804, 4, 53, 53), null).
%hash_code_and_equals_safe_set_1 - org.mockito.internal.util.collections.HashCodeAndEqualsSafeSet
literal(hash_code_and_equals_safe_set_1_literal1, string_literal, hash_code_and_equals_safe_set_1_expr7, (arguments, 1), range(hash_code_and_equals_safe_set_1, 3841, 43, 132, 132), "Passed collection should notify() be null").
literal(hash_code_and_equals_safe_set_1_literal2, null_literal, hash_code_and_equals_safe_set_1_expr12, right_operand, range(hash_code_and_equals_safe_set_1, 4600, 4, 151, 151), null).
%default_mockito_configuration_1 - org.mockito.configuration.DefaultMockitoConfiguration
%captor_annotation_processor_1 - org.mockito.internal.configuration.CaptorAnnotationProcessor
%plugin_registry_1 - org.mockito.internal.configuration.plugins.PluginRegistry
literal(plugin_registry_1_literal1, string_literal, plugin_registry_1_expr7, (arguments, 1), range(plugin_registry_1, 494, 60, 13, 13), "org.mockito.internal.creation.bytebuddy.ByteBuddyMockMaker").
literal(plugin_registry_1_literal2, string_literal, plugin_registry_1_expr10, (arguments, 1), range(plugin_registry_1, 717, 77, 16, 16), "org.mockito.internal.exceptions.stacktrace.DefaultStackTraceCleanerProvider").
%plugin_finder_1 - org.mockito.internal.configuration.plugins.PluginFinder
literal(plugin_finder_1_literal1, null_literal, plugin_finder_1_stmt3, expression, range(plugin_finder_1, 1316, 4, 39, 39), null).
%class_path_loader_1 - org.mockito.internal.configuration.ClassPathLoader
%object_methods_guru_1 - org.mockito.internal.util.ObjectMethodsGuru
%plugin_loader_1 - org.mockito.internal.configuration.plugins.PluginLoader
literal(plugin_loader_1_literal1, null_literal, plugin_loader_1_expr5, right_operand, range(plugin_loader_1, 764, 4, 25, 25), null).
literal(plugin_loader_1_literal2, null_literal, plugin_loader_1_expr11, right_operand, range(plugin_loader_1, 1757, 4, 47, 47), null).
literal(plugin_loader_1_literal3, string_literal, plugin_loader_1_expr14, left_operand, range(plugin_loader_1, 1926, 21, 52, 52), "mockito-extensions/").
literal(plugin_loader_1_literal4, null_literal, plugin_loader_1_expr19, right_operand, range(plugin_loader_1, 2256, 4, 59, 59), null).
literal(plugin_loader_1_literal5, null_literal, plugin_loader_1_stmt13, expression, range(plugin_loader_1, 2476, 4, 64, 64), null).
%default_injection_engine_1 - org.mockito.internal.configuration.DefaultInjectionEngine
%mock_injection_1 - org.mockito.internal.configuration.injection.MockInjection
literal(mock_injection_1_literal1, string_literal, mock_injection_1_expr8, (arguments, 1), range(mock_injection_1, 2214, 12, 66, 66), "fieldOwner").
literal(mock_injection_1_literal2, string_literal, mock_injection_1_expr11, (arguments, 1), range(mock_injection_1, 2286, 8, 67, 67), "fields").
literal(mock_injection_1_literal3, string_literal, mock_injection_1_expr15, (arguments, 1), range(mock_injection_1, 2426, 7, 71, 71), "mocks").
%mockito_annotations_1 - org.mockito.MockitoAnnotations
literal(mockito_annotations_1_literal1, null_literal, mockito_annotations_1_expr1, right_operand, range(mockito_annotations_1, 3572, 4, 90, 90), null).
literal(mockito_annotations_1_literal2, boolean_literal, mockito_annotations_1_code22, initializer, range(mockito_annotations_1, 5042, 5, 121, 121), false).
%constructor_injection_1 - org.mockito.internal.configuration.injection.ConstructorInjection
%spy_annotation_engine_1 - org.mockito.internal.configuration.SpyAnnotationEngine
%mock_scanner_1 - org.mockito.internal.configuration.injection.scanner.MockScanner
literal(mock_scanner_1_literal1, null_literal, mock_scanner_1_expr15, right_operand, range(mock_scanner_1, 1877, 4, 62, 62), null).
literal(mock_scanner_1_literal2, null_literal, mock_scanner_1_stmt12, expression, range(mock_scanner_1, 2286, 4, 76, 76), null).
literal(mock_scanner_1_literal3, null_literal, mock_scanner_1_expr20, left_operand, range(mock_scanner_1, 2372, 4, 80, 80), null).
literal(mock_scanner_1_literal4, null_literal, mock_scanner_1_expr23, left_operand, range(mock_scanner_1, 2430, 4, 81, 81), null).
literal(mock_scanner_1_literal5, null_literal, mock_scanner_1_expr26, left_operand, range(mock_scanner_1, 2489, 4, 82, 82), null).
%returns_empty_values_1 - org.mockito.internal.stubbing.defaultanswers.ReturnsEmptyValues
literal(returns_empty_values_1_literal1, null_literal, returns_empty_values_1_stmt16, expression, range(returns_empty_values_1, 4664, 4, 117, 117), null).
%reporter_1 - org.mockito.exceptions.Reporter
%default_plugin_switch_1 - org.mockito.internal.configuration.plugins.DefaultPluginSwitch
%plugins_1 - org.mockito.internal.configuration.plugins.Plugins
%accessibility_changer_1 - org.mockito.internal.util.reflection.AccessibilityChanger
literal(accessibility_changer_1_literal1, null_literal, accessibility_changer_1_code7, initializer, range(accessibility_changer_1, 288, 4, 11, 11), null).
literal(accessibility_changer_1_literal2, boolean_literal, accessibility_changer_1_expr3, (arguments, 0), range(accessibility_changer_1, 910, 4, 30, 30), true).
%mock_injection_strategy_1 - org.mockito.internal.configuration.injection.MockInjectionStrategy
literal(mock_injection_strategy_1_literal1, null_literal, mock_injection_strategy_1_expr2, right_operand, range(mock_injection_strategy_1, 1088, 4, 41, 41), null).
%global_configuration_1 - org.mockito.internal.configuration.GlobalConfiguration
literal(global_configuration_1_literal1, null_literal, global_configuration_1_expr3, right_operand, range(global_configuration_1, 1174, 4, 31, 31), null).
literal(global_configuration_1_literal2, null_literal, global_configuration_1_expr10, right_operand, range(global_configuration_1, 1496, 4, 39, 39), null).
%default_annotation_engine_1 - org.mockito.internal.configuration.DefaultAnnotationEngine
literal(default_annotation_engine_1_literal1, boolean_literal, default_annotation_engine_1_code42, initializer, range(default_annotation_engine_1, 2656, 5, 64, 64), false).
%name_based_candidate_filter_1 - org.mockito.internal.configuration.injection.filter.NameBasedCandidateFilter
%state_master_1 - org.mockito.StateMaster
%mocking_progress_impl_1 - org.mockito.internal.progress.MockingProgressImpl
literal(mocking_progress_impl_1_literal1, null_literal, mocking_progress_impl_1_code20, initializer, range(mocking_progress_impl_1, 1019, 4, 26, 26), null).
literal(mocking_progress_impl_1_literal2, null_literal, mocking_progress_impl_1_expr3, right_hand_side, range(mocking_progress_impl_1, 1726, 4, 49, 49), null).
literal(mocking_progress_impl_1_literal3, null_literal, mocking_progress_impl_1_expr5, right_operand, range(mocking_progress_impl_1, 2251, 4, 71, 71), null).
literal(mocking_progress_impl_1_literal4, null_literal, mocking_progress_impl_1_expr7, right_operand, range(mocking_progress_impl_1, 2731, 4, 83, 83), null).
literal(mocking_progress_impl_1_literal5, null_literal, mocking_progress_impl_1_expr10, right_hand_side, range(mocking_progress_impl_1, 3339, 4, 103, 103), null).
literal(mocking_progress_impl_1_literal6, null_literal, mocking_progress_impl_1_expr11, right_hand_side, range(mocking_progress_impl_1, 3372, 4, 104, 104), null).
%mock_util_1 - org.mockito.internal.util.MockUtil
literal(mock_util_1_literal1, null_literal, mock_util_1_expr8, right_operand, range(mock_util_1, 2703, 4, 74, 74), null).
%mockito_annotations_mock_annotation_processor_1 - org.mockito.internal.configuration.MockitoAnnotationsMockAnnotationProcessor
%inject_mocks_scanner_1 - org.mockito.internal.configuration.injection.scanner.InjectMocksScanner
literal(inject_mocks_scanner_1_literal1, null_literal, inject_mocks_scanner_1_expr8, left_operand, range(inject_mocks_scanner_1, 1406, 4, 52, 52), null).

%%% Other Code Entities
%returns_empty_values_test_1 - org.mockito.internal.stubbing.defaultanswers.ReturnsEmptyValuesTest
code(returns_empty_values_test_1_code1, compilation_unit, range(returns_empty_values_test_1, 0, 3592, 1, -1)).
code(returns_empty_values_test_1_code2, type_declaration, returns_empty_values_test_1_code1, (types, 0), range(returns_empty_values_test_1, 715, 2876, 28, 97)).
code(returns_empty_values_test_1_code3, modifier, returns_empty_values_test_1_code2, (modifiers, 1), range(returns_empty_values_test_1, 746, 6, 29, 29)).
code(returns_empty_values_test_1_code4, simple_type, returns_empty_values_test_1_code2, superclass_type, range(returns_empty_values_test_1, 790, 8, 29, 29)).
code(returns_empty_values_test_1_code5, field_declaration, returns_empty_values_test_1_code2, (body_declarations, 0), range(returns_empty_values_test_1, 806, 53, 31, 31)).
code(returns_empty_values_test_1_code6, simple_type, returns_empty_values_test_1_code5, type, range(returns_empty_values_test_1, 806, 18, 31, 31)).
code(returns_empty_values_test_1_code7, variable_declaration_fragment, returns_empty_values_test_1_code5, (fragments, 0), range(returns_empty_values_test_1, 825, 33, 31, 31)).
code(returns_empty_values_test_1_code8, simple_type, returns_empty_values_test_1_expr1, type, range(returns_empty_values_test_1, 838, 18, 31, 31)).
code(returns_empty_values_test_1_code9, method_declaration, returns_empty_values_test_1_code2, (body_declarations, 2), range(returns_empty_values_test_1, 2165, 171, 55, 58)).
code(returns_empty_values_test_1_code10, simple_type, returns_empty_values_test_1_expr6, type, range(returns_empty_values_test_1, 2259, 8, 57, 57)).
code(returns_empty_values_test_1_code11, simple_type, returns_empty_values_test_1_expr8, type, range(returns_empty_values_test_1, 2291, 8, 57, 57)).
%iterables_1 - org.mockito.internal.util.collections.Iterables
code(iterables_1_code1, compilation_unit, range(iterables_1, 0, 474, 1, -1)).
code(iterables_1_code2, type_declaration, iterables_1_code1, (types, 0), range(iterables_1, 131, 342, 7, 22)).
code(iterables_1_code3, method_declaration, iterables_1_code2, (body_declarations, 0), range(iterables_1, 196, 275, 12, 21)).
code(iterables_1_code4, parameterized_type, iterables_1_stmt1, type, range(iterables_1, 324, 7, 16, 16)).
code(iterables_1_code5, simple_type, iterables_1_code4, type, range(iterables_1, 324, 4, 16, 16)).
code(iterables_1_code6, simple_type, iterables_1_code4, (type_arguments, 0), range(iterables_1, 329, 1, 16, 16)).
code(iterables_1_code7, variable_declaration_fragment, iterables_1_stmt1, (fragments, 0), range(iterables_1, 332, 25, 16, 16)).
code(iterables_1_code9, simple_type, iterables_1_code8, type, range(iterables_1, 342, 10, 16, 16)).
code(iterables_1_code8, parameterized_type, iterables_1_expr1, type, range(iterables_1, 342, 13, 16, 16)).
code(iterables_1_code10, simple_type, iterables_1_code8, (type_arguments, 0), range(iterables_1, 353, 1, 16, 16)).
%sets_1 - org.mockito.internal.util.collections.Sets
code(sets_1_code1, compilation_unit, range(sets_1, 0, 946, 1, -1)).
code(sets_1_code2, type_declaration, sets_1_code1, (types, 0), range(sets_1, 290, 655, 14, 33)).
code(sets_1_code3, method_declaration, sets_1_code2, (body_declarations, 1), range(sets_1, 456, 120, 19, 21)).
%primitives_1 - org.mockito.internal.util.Primitives
code(primitives_1_code1, compilation_unit, range(primitives_1, 0, 3697, 1, -1)).
code(primitives_1_code2, type_declaration, primitives_1_code1, (types, 0), range(primitives_1, 205, 3492, 10, -1)).
code(primitives_1_code3, field_declaration, primitives_1_code2, (body_declarations, 0), range(primitives_1, 267, 97, 13, 13)).
code(primitives_1_code4, modifier, primitives_1_code3, (modifiers, 0), range(primitives_1, 267, 7, 13, 13)).
code(primitives_1_code5, modifier, primitives_1_code3, (modifiers, 1), range(primitives_1, 275, 6, 13, 13)).
code(primitives_1_code6, modifier, primitives_1_code3, (modifiers, 2), range(primitives_1, 282, 5, 13, 13)).
code(primitives_1_code7, parameterized_type, primitives_1_code3, type, range(primitives_1, 288, 23, 13, 13)).
code(primitives_1_code8, simple_type, primitives_1_code7, type, range(primitives_1, 288, 3, 13, 13)).
code(primitives_1_code9, parameterized_type, primitives_1_code7, (type_arguments, 0), range(primitives_1, 292, 8, 13, 13)).
code(primitives_1_code10, simple_type, primitives_1_code9, type, range(primitives_1, 292, 5, 13, 13)).
code(primitives_1_code11, wildcard_type, primitives_1_code9, (type_arguments, 0), range(primitives_1, 298, 1, 13, 13)).
code(primitives_1_code12, parameterized_type, primitives_1_code7, (type_arguments, 1), range(primitives_1, 302, 8, 13, 13)).
code(primitives_1_code13, simple_type, primitives_1_code12, type, range(primitives_1, 302, 5, 13, 13)).
code(primitives_1_code14, wildcard_type, primitives_1_code12, (type_arguments, 0), range(primitives_1, 308, 1, 13, 13)).
code(primitives_1_code15, variable_declaration_fragment, primitives_1_code3, (fragments, 0), range(primitives_1, 312, 51, 13, 13)).
code(primitives_1_code16, parameterized_type, primitives_1_expr1, type, range(primitives_1, 334, 27, 13, 13)).
code(primitives_1_code17, simple_type, primitives_1_code16, type, range(primitives_1, 334, 7, 13, 13)).
code(primitives_1_code18, parameterized_type, primitives_1_code16, (type_arguments, 0), range(primitives_1, 342, 8, 13, 13)).
code(primitives_1_code19, simple_type, primitives_1_code18, type, range(primitives_1, 342, 5, 13, 13)).
code(primitives_1_code20, wildcard_type, primitives_1_code18, (type_arguments, 0), range(primitives_1, 348, 1, 13, 13)).
code(primitives_1_code21, parameterized_type, primitives_1_code16, (type_arguments, 1), range(primitives_1, 352, 8, 13, 13)).
code(primitives_1_code22, simple_type, primitives_1_code21, type, range(primitives_1, 352, 5, 13, 13)).
code(primitives_1_code23, wildcard_type, primitives_1_code21, (type_arguments, 0), range(primitives_1, 358, 1, 13, 13)).
code(primitives_1_code25, modifier, primitives_1_code24, (modifiers, 0), range(primitives_1, 369, 7, 14, 14)).
code(primitives_1_code24, field_declaration, primitives_1_code2, (body_declarations, 1), range(primitives_1, 369, 113, 14, 14)).
code(primitives_1_code26, modifier, primitives_1_code24, (modifiers, 1), range(primitives_1, 377, 6, 14, 14)).
code(primitives_1_code27, modifier, primitives_1_code24, (modifiers, 2), range(primitives_1, 384, 5, 14, 14)).
code(primitives_1_code29, simple_type, primitives_1_code28, type, range(primitives_1, 390, 3, 14, 14)).
code(primitives_1_code28, parameterized_type, primitives_1_code24, type, range(primitives_1, 390, 21, 14, 14)).
code(primitives_1_code31, simple_type, primitives_1_code30, type, range(primitives_1, 394, 5, 14, 14)).
code(primitives_1_code30, parameterized_type, primitives_1_code28, (type_arguments, 0), range(primitives_1, 394, 8, 14, 14)).
code(primitives_1_code32, wildcard_type, primitives_1_code30, (type_arguments, 0), range(primitives_1, 400, 1, 14, 14)).
code(primitives_1_code33, simple_type, primitives_1_code28, (type_arguments, 1), range(primitives_1, 404, 6, 14, 14)).
code(primitives_1_code34, variable_declaration_fragment, primitives_1_code24, (fragments, 0), range(primitives_1, 412, 69, 14, 14)).
code(primitives_1_code35, parameterized_type, primitives_1_expr2, type, range(primitives_1, 454, 25, 14, 14)).
code(primitives_1_code36, simple_type, primitives_1_code35, type, range(primitives_1, 454, 7, 14, 14)).
code(primitives_1_code38, simple_type, primitives_1_code37, type, range(primitives_1, 462, 5, 14, 14)).
code(primitives_1_code37, parameterized_type, primitives_1_code35, (type_arguments, 0), range(primitives_1, 462, 8, 14, 14)).
code(primitives_1_code39, wildcard_type, primitives_1_code37, (type_arguments, 0), range(primitives_1, 468, 1, 14, 14)).
code(primitives_1_code40, simple_type, primitives_1_code35, (type_arguments, 1), range(primitives_1, 472, 6, 14, 14)).
code(primitives_1_code41, method_declaration, primitives_1_code2, (body_declarations, 3), range(primitives_1, 1218, 361, 35, 43)).
code(primitives_1_code42, initializer, primitives_1_code2, (body_declarations, 5), range(primitives_1, 2111, 460, 57, 66)).
code(primitives_1_code43, simple_type, primitives_1_expr5, type, range(primitives_1, 2148, 7, 58, 58)).
code(primitives_1_code44, simple_type, primitives_1_expr7, type, range(primitives_1, 2206, 9, 59, 59)).
code(primitives_1_code45, simple_type, primitives_1_expr9, type, range(primitives_1, 2268, 4, 60, 60)).
code(primitives_1_code46, simple_type, primitives_1_expr11, type, range(primitives_1, 2320, 5, 61, 61)).
code(primitives_1_code47, simple_type, primitives_1_expr13, type, range(primitives_1, 2374, 7, 62, 62)).
code(primitives_1_code48, simple_type, primitives_1_expr15, type, range(primitives_1, 2432, 4, 63, 63)).
code(primitives_1_code49, simple_type, primitives_1_expr17, type, range(primitives_1, 2484, 5, 64, 64)).
code(primitives_1_code50, simple_type, primitives_1_expr19, type, range(primitives_1, 2538, 6, 65, 65)).
code(primitives_1_code51, initializer, primitives_1_code2, (body_declarations, 6), range(primitives_1, 2577, 1118, 68, 86)).
code(primitives_1_code52, simple_type, primitives_1_expr21, type, range(primitives_1, 2634, 7, 69, 69)).
code(primitives_1_code53, simple_type, primitives_1_expr23, type, range(primitives_1, 2705, 9, 70, 70)).
code(primitives_1_code54, simple_type, primitives_1_expr25, type, range(primitives_1, 2781, 4, 71, 71)).
code(primitives_1_code55, primitive_type, primitives_1_expr26, type, range(primitives_1, 2794, 4, 71, 71)).
code(primitives_1_code56, simple_type, primitives_1_expr28, type, range(primitives_1, 2852, 5, 72, 72)).
code(primitives_1_code57, primitive_type, primitives_1_expr29, type, range(primitives_1, 2866, 5, 72, 72)).
code(primitives_1_code58, simple_type, primitives_1_expr31, type, range(primitives_1, 2925, 7, 73, 73)).
code(primitives_1_code59, simple_type, primitives_1_expr33, type, range(primitives_1, 2992, 4, 74, 74)).
code(primitives_1_code60, simple_type, primitives_1_expr35, type, range(primitives_1, 3057, 5, 75, 75)).
code(primitives_1_code61, simple_type, primitives_1_expr37, type, range(primitives_1, 3123, 6, 76, 76)).
code(primitives_1_code62, primitive_type, primitives_1_expr39, type, range(primitives_1, 3191, 7, 78, 78)).
code(primitives_1_code63, primitive_type, primitives_1_expr41, type, range(primitives_1, 3262, 4, 79, 79)).
code(primitives_1_code64, primitive_type, primitives_1_expr43, type, range(primitives_1, 3333, 4, 80, 80)).
code(primitives_1_code65, primitive_type, primitives_1_expr44, type, range(primitives_1, 3346, 4, 80, 80)).
code(primitives_1_code66, primitive_type, primitives_1_expr46, type, range(primitives_1, 3404, 5, 81, 81)).
code(primitives_1_code67, primitive_type, primitives_1_expr47, type, range(primitives_1, 3418, 5, 81, 81)).
code(primitives_1_code68, primitive_type, primitives_1_expr49, type, range(primitives_1, 3477, 3, 82, 82)).
code(primitives_1_code69, primitive_type, primitives_1_expr51, type, range(primitives_1, 3540, 4, 83, 83)).
code(primitives_1_code70, primitive_type, primitives_1_expr53, type, range(primitives_1, 3605, 5, 84, 84)).
code(primitives_1_code71, primitive_type, primitives_1_expr55, type, range(primitives_1, 3671, 6, 85, 85)).
%final_mock_candidate_filter_1 - org.mockito.internal.configuration.injection.filter.FinalMockCandidateFilter
code(final_mock_candidate_filter_1_code1, compilation_unit, range(final_mock_candidate_filter_1, 0, 1738, 1, -1)).
code(final_mock_candidate_filter_1_code2, type_declaration, final_mock_candidate_filter_1_code1, (types, 0), range(final_mock_candidate_filter_1, 406, 1331, 14, 48)).
code(final_mock_candidate_filter_1_code3, modifier, final_mock_candidate_filter_1_code2, (modifiers, 0), range(final_mock_candidate_filter_1, 737, 6, 22, 22)).
code(final_mock_candidate_filter_1_code4, simple_type, final_mock_candidate_filter_1_code2, (super_interface_types, 0), range(final_mock_candidate_filter_1, 786, 19, 22, 22)).
%checks_1 - org.mockito.internal.util.Checks
code(checks_1_code1, compilation_unit, range(checks_1, 0, 722, 1, -1)).
code(checks_1_code2, type_declaration, checks_1_code1, (types, 0), range(checks_1, 157, 564, 8, 27)).
code(checks_1_code3, method_declaration, checks_1_code2, (body_declarations, 0), range(checks_1, 218, 212, 13, 18)).
code(checks_1_code4, method_declaration, checks_1_code2, (body_declarations, 1), range(checks_1, 436, 283, 20, 26)).
code(checks_1_code5, single_variable_declaration, checks_1_stmt4, parameter, range(checks_1, 591, 11, 22, 22)).
code(checks_1_code6, simple_type, checks_1_code5, type, range(checks_1, 591, 6, 22, 22)).
%test_base_1 - org.mockitoutil.TestBase
code(test_base_1_code1, compilation_unit, range(test_base_1, 0, 6266, 1, -1)).
code(test_base_1_code2, type_declaration, test_base_1_code1, (types, 0), range(test_base_1, 1010, 5255, 33, 189)).
code(test_base_1_code3, modifier, test_base_1_code2, (modifiers, 1), range(test_base_1, 1159, 6, 38, 38)).
code(test_base_1_code4, simple_type, test_base_1_code2, superclass_type, range(test_base_1, 1189, 6, 38, 38)).
code(test_base_1_code5, method_declaration, test_base_1_code2, (body_declarations, 0), range(test_base_1, 1203, 579, 40, 50)).
code(test_base_1_code6, simple_type, test_base_1_stmt3, type, range(test_base_1, 1403, 11, 44, 44)).
code(test_base_1_code7, variable_declaration_fragment, test_base_1_stmt3, (fragments, 0), range(test_base_1, 1415, 25, 44, 44)).
code(test_base_1_code8, simple_type, test_base_1_expr5, type, range(test_base_1, 1427, 11, 44, 44)).
code(test_base_1_code9, method_declaration, test_base_1_code2, (body_declarations, 1), range(test_base_1, 1788, 82, 52, 55)).
%configuration_access_1 - org.mockito.internal.configuration.ConfigurationAccess
code(configuration_access_1_code1, compilation_unit, range(configuration_access_1, 0, 390, 1, -1)).
code(configuration_access_1_code2, type_declaration, configuration_access_1_code1, (types, 0), range(configuration_access_1, 221, 169, 9, -1)).
code(configuration_access_1_code3, method_declaration, configuration_access_1_code2, (body_declarations, 0), range(configuration_access_1, 261, 127, 11, 13)).
code(configuration_access_1_code4, simple_type, configuration_access_1_expr1, type, range(configuration_access_1, 326, 20, 12, 12)).
code(configuration_access_1_code5, simple_type, configuration_access_1_expr3, type, range(configuration_access_1, 352, 19, 12, 12)).
%default_stack_trace_cleaner_provider_1 - org.mockito.internal.exceptions.stacktrace.DefaultStackTraceCleanerProvider
code(default_stack_trace_cleaner_provider_1_code1, compilation_unit, range(default_stack_trace_cleaner_provider_1, 0, 428, 1, -1)).
code(default_stack_trace_cleaner_provider_1_code2, type_declaration, default_stack_trace_cleaner_provider_1_code1, (types, 0), range(default_stack_trace_cleaner_provider_1, 168, 260, 6, -1)).
code(default_stack_trace_cleaner_provider_1_code3, modifier, default_stack_trace_cleaner_provider_1_code2, (modifiers, 0), range(default_stack_trace_cleaner_provider_1, 218, 6, 9, 9)).
code(default_stack_trace_cleaner_provider_1_code4, simple_type, default_stack_trace_cleaner_provider_1_code2, (super_interface_types, 0), range(default_stack_trace_cleaner_provider_1, 275, 25, 9, 9)).
%injecting_annotation_engine_1 - org.mockito.internal.configuration.InjectingAnnotationEngine
code(injecting_annotation_engine_1_code1, compilation_unit, range(injecting_annotation_engine_1, 0, 3795, 1, -1)).
code(injecting_annotation_engine_1_code2, type_declaration, injecting_annotation_engine_1_code1, (types, 0), range(injecting_annotation_engine_1, 591, 3203, 19, 103)).
code(injecting_annotation_engine_1_code3, modifier, injecting_annotation_engine_1_code2, (modifiers, 1), range(injecting_annotation_engine_1, 681, 6, 23, 23)).
code(injecting_annotation_engine_1_code4, simple_type, injecting_annotation_engine_1_code2, (super_interface_types, 0), range(injecting_annotation_engine_1, 731, 16, 23, 23)).
code(injecting_annotation_engine_1_code5, field_declaration, injecting_annotation_engine_1_code2, (body_declarations, 0), range(injecting_annotation_engine_1, 754, 72, 24, 24)).
code(injecting_annotation_engine_1_code6, modifier, injecting_annotation_engine_1_code5, (modifiers, 0), range(injecting_annotation_engine_1, 754, 7, 24, 24)).
code(injecting_annotation_engine_1_code7, modifier, injecting_annotation_engine_1_code5, (modifiers, 1), range(injecting_annotation_engine_1, 762, 5, 24, 24)).
code(injecting_annotation_engine_1_code8, simple_type, injecting_annotation_engine_1_code5, type, range(injecting_annotation_engine_1, 768, 16, 24, 24)).
code(injecting_annotation_engine_1_code9, variable_declaration_fragment, injecting_annotation_engine_1_code5, (fragments, 0), range(injecting_annotation_engine_1, 785, 40, 24, 24)).
code(injecting_annotation_engine_1_code10, simple_type, injecting_annotation_engine_1_expr1, type, range(injecting_annotation_engine_1, 800, 23, 24, 24)).
code(injecting_annotation_engine_1_code12, modifier, injecting_annotation_engine_1_code11, (modifiers, 0), range(injecting_annotation_engine_1, 831, 7, 25, 25)).
code(injecting_annotation_engine_1_code11, field_declaration, injecting_annotation_engine_1_code2, (body_declarations, 1), range(injecting_annotation_engine_1, 831, 79, 25, 25)).
code(injecting_annotation_engine_1_code13, modifier, injecting_annotation_engine_1_code11, (modifiers, 1), range(injecting_annotation_engine_1, 839, 5, 25, 25)).
code(injecting_annotation_engine_1_code14, simple_type, injecting_annotation_engine_1_code11, type, range(injecting_annotation_engine_1, 845, 16, 25, 25)).
code(injecting_annotation_engine_1_code15, variable_declaration_fragment, injecting_annotation_engine_1_code11, (fragments, 0), range(injecting_annotation_engine_1, 862, 47, 25, 25)).
code(injecting_annotation_engine_1_code16, simple_type, injecting_annotation_engine_1_expr2, type, range(injecting_annotation_engine_1, 888, 19, 25, 25)).
code(injecting_annotation_engine_1_code17, method_declaration, injecting_annotation_engine_1_code2, (body_declarations, 3), range(injecting_annotation_engine_1, 1348, 759, 38, 57)).
code(injecting_annotation_engine_1_code18, method_declaration, injecting_annotation_engine_1_code2, (body_declarations, 4), range(injecting_annotation_engine_1, 2113, 280, 59, 65)).
code(injecting_annotation_engine_1_code19, parameterized_type, injecting_annotation_engine_1_stmt3, type, range(injecting_annotation_engine_1, 2204, 8, 60, 60)).
code(injecting_annotation_engine_1_code20, simple_type, injecting_annotation_engine_1_code19, type, range(injecting_annotation_engine_1, 2204, 5, 60, 60)).
code(injecting_annotation_engine_1_code21, wildcard_type, injecting_annotation_engine_1_code19, (type_arguments, 0), range(injecting_annotation_engine_1, 2210, 1, 60, 60)).
code(injecting_annotation_engine_1_code22, variable_declaration_fragment, injecting_annotation_engine_1_stmt3, (fragments, 0), range(injecting_annotation_engine_1, 2213, 20, 60, 60)).
code(injecting_annotation_engine_1_code23, simple_type, injecting_annotation_engine_1_expr8, type, range(injecting_annotation_engine_1, 2266, 6, 61, 61)).
code(injecting_annotation_engine_1_code24, method_declaration, injecting_annotation_engine_1_code2, (body_declarations, 5), range(injecting_annotation_engine_1, 2399, 473, 67, 77)).
code(injecting_annotation_engine_1_code25, parameterized_type, injecting_annotation_engine_1_stmt7, type, range(injecting_annotation_engine_1, 2501, 8, 68, 68)).
code(injecting_annotation_engine_1_code26, simple_type, injecting_annotation_engine_1_code25, type, range(injecting_annotation_engine_1, 2501, 5, 68, 68)).
code(injecting_annotation_engine_1_code27, wildcard_type, injecting_annotation_engine_1_code25, (type_arguments, 0), range(injecting_annotation_engine_1, 2507, 1, 68, 68)).
code(injecting_annotation_engine_1_code28, variable_declaration_fragment, injecting_annotation_engine_1_stmt7, (fragments, 0), range(injecting_annotation_engine_1, 2510, 20, 68, 68)).
code(injecting_annotation_engine_1_code29, simple_type, injecting_annotation_engine_1_expr13, type, range(injecting_annotation_engine_1, 2563, 6, 69, 69)).
code(injecting_annotation_engine_1_code30, method_declaration, injecting_annotation_engine_1_code2, (body_declarations, 6), range(injecting_annotation_engine_1, 2879, 912, 80, 101)).
code(injecting_annotation_engine_1_code32, simple_type, injecting_annotation_engine_1_code31, type, range(injecting_annotation_engine_1, 3261, 5, 90, 90)).
code(injecting_annotation_engine_1_code31, parameterized_type, injecting_annotation_engine_1_stmt12, type, range(injecting_annotation_engine_1, 3261, 8, 90, 90)).
code(injecting_annotation_engine_1_code33, wildcard_type, injecting_annotation_engine_1_code31, (type_arguments, 0), range(injecting_annotation_engine_1, 3267, 1, 90, 90)).
code(injecting_annotation_engine_1_code34, variable_declaration_fragment, injecting_annotation_engine_1_stmt12, (fragments, 0), range(injecting_annotation_engine_1, 3270, 36, 90, 90)).
code(injecting_annotation_engine_1_code35, parameterized_type, injecting_annotation_engine_1_stmt13, type, range(injecting_annotation_engine_1, 3316, 10, 91, 91)).
code(injecting_annotation_engine_1_code36, simple_type, injecting_annotation_engine_1_code35, type, range(injecting_annotation_engine_1, 3316, 3, 91, 91)).
code(injecting_annotation_engine_1_code37, simple_type, injecting_annotation_engine_1_code35, (type_arguments, 0), range(injecting_annotation_engine_1, 3320, 5, 91, 91)).
code(injecting_annotation_engine_1_code38, variable_declaration_fragment, injecting_annotation_engine_1_stmt13, (fragments, 0), range(injecting_annotation_engine_1, 3327, 42, 91, 91)).
code(injecting_annotation_engine_1_code39, parameterized_type, injecting_annotation_engine_1_expr19, type, range(injecting_annotation_engine_1, 3353, 14, 91, 91)).
code(injecting_annotation_engine_1_code40, simple_type, injecting_annotation_engine_1_code39, type, range(injecting_annotation_engine_1, 3353, 7, 91, 91)).
code(injecting_annotation_engine_1_code41, simple_type, injecting_annotation_engine_1_code39, (type_arguments, 0), range(injecting_annotation_engine_1, 3361, 5, 91, 91)).
code(injecting_annotation_engine_1_code42, parameterized_type, injecting_annotation_engine_1_stmt14, type, range(injecting_annotation_engine_1, 3379, 11, 92, 92)).
code(injecting_annotation_engine_1_code43, simple_type, injecting_annotation_engine_1_code42, type, range(injecting_annotation_engine_1, 3379, 3, 92, 92)).
code(injecting_annotation_engine_1_code44, simple_type, injecting_annotation_engine_1_code42, (type_arguments, 0), range(injecting_annotation_engine_1, 3383, 6, 92, 92)).
code(injecting_annotation_engine_1_code45, variable_declaration_fragment, injecting_annotation_engine_1_stmt14, (fragments, 0), range(injecting_annotation_engine_1, 3391, 28, 92, 92)).
code(injecting_annotation_engine_1_code46, simple_type, injecting_annotation_engine_1_expr22, type, range(injecting_annotation_engine_1, 3454, 6, 94, 94)).
code(injecting_annotation_engine_1_code47, simple_type, injecting_annotation_engine_1_expr24, type, range(injecting_annotation_engine_1, 3486, 18, 95, 95)).
code(injecting_annotation_engine_1_code48, simple_type, injecting_annotation_engine_1_expr26, type, range(injecting_annotation_engine_1, 3556, 11, 96, 96)).
code(injecting_annotation_engine_1_code49, simple_type, injecting_annotation_engine_1_expr30, type, range(injecting_annotation_engine_1, 3693, 22, 100, 100)).
%field_reader_1 - org.mockito.internal.util.reflection.FieldReader
code(field_reader_1_code1, compilation_unit, range(field_reader_1, 0, 867, 1, -1)).
code(field_reader_1_code2, type_declaration, field_reader_1_code1, (types, 0), range(field_reader_1, 254, 612, 11, 34)).
code(field_reader_1_code3, field_declaration, field_reader_1_code2, (body_declarations, 2), range(field_reader_1, 334, 64, 15, 15)).
code(field_reader_1_code4, modifier, field_reader_1_code3, (modifiers, 0), range(field_reader_1, 334, 5, 15, 15)).
code(field_reader_1_code5, simple_type, field_reader_1_code3, type, range(field_reader_1, 340, 20, 15, 15)).
code(field_reader_1_code6, variable_declaration_fragment, field_reader_1_code3, (fragments, 0), range(field_reader_1, 361, 36, 15, 15)).
code(field_reader_1_code7, simple_type, field_reader_1_expr1, type, range(field_reader_1, 375, 20, 15, 15)).
code(field_reader_1_code8, method_declaration, field_reader_1_code2, (body_declarations, 3), range(field_reader_1, 404, 149, 17, 21)).
code(field_reader_1_code9, modifier, field_reader_1_code8, (modifiers, 0), range(field_reader_1, 404, 6, 17, 17)).
code(field_reader_1_code11, simple_type, field_reader_1_code10, type, range(field_reader_1, 423, 6, 17, 17)).
code(field_reader_1_code10, single_variable_declaration, field_reader_1_code8, (parameters, 0), range(field_reader_1, 423, 13, 17, 17)).
code(field_reader_1_code13, simple_type, field_reader_1_code12, type, range(field_reader_1, 438, 5, 17, 17)).
code(field_reader_1_code12, single_variable_declaration, field_reader_1_code8, (parameters, 1), range(field_reader_1, 438, 11, 17, 17)).
code(field_reader_1_code14, method_declaration, field_reader_1_code2, (body_declarations, 5), range(field_reader_1, 631, 233, 27, 33)).
%property_and_setter_injection_1 - org.mockito.internal.configuration.injection.PropertyAndSetterInjection
code(property_and_setter_injection_1_code1, compilation_unit, range(property_and_setter_injection_1, 0, 5789, 1, -1)).
code(property_and_setter_injection_1_code2, type_declaration, property_and_setter_injection_1_code1, (types, 0), range(property_and_setter_injection_1, 1077, 4711, 26, 130)).
code(property_and_setter_injection_1_code3, modifier, property_and_setter_injection_1_code2, (modifiers, 0), range(property_and_setter_injection_1, 2363, 6, 60, 60)).
code(property_and_setter_injection_1_code4, simple_type, property_and_setter_injection_1_code2, superclass_type, range(property_and_setter_injection_1, 2411, 21, 60, 60)).
code(property_and_setter_injection_1_code5, field_declaration, property_and_setter_injection_1_code2, (body_declarations, 0), range(property_and_setter_injection_1, 2440, 147, 62, 62)).
code(property_and_setter_injection_1_code6, modifier, property_and_setter_injection_1_code5, (modifiers, 0), range(property_and_setter_injection_1, 2440, 7, 62, 62)).
code(property_and_setter_injection_1_code7, modifier, property_and_setter_injection_1_code5, (modifiers, 1), range(property_and_setter_injection_1, 2448, 5, 62, 62)).
code(property_and_setter_injection_1_code8, simple_type, property_and_setter_injection_1_code5, type, range(property_and_setter_injection_1, 2454, 19, 62, 62)).
code(property_and_setter_injection_1_code9, variable_declaration_fragment, property_and_setter_injection_1_code5, (fragments, 0), range(property_and_setter_injection_1, 2474, 112, 62, 62)).
code(property_and_setter_injection_1_code10, simple_type, property_and_setter_injection_1_expr1, type, range(property_and_setter_injection_1, 2500, 24, 62, 62)).
code(property_and_setter_injection_1_code11, simple_type, property_and_setter_injection_1_expr2, type, range(property_and_setter_injection_1, 2529, 24, 62, 62)).
code(property_and_setter_injection_1_code12, simple_type, property_and_setter_injection_1_expr3, type, range(property_and_setter_injection_1, 2558, 24, 62, 62)).
code(property_and_setter_injection_1_code13, field_declaration, property_and_setter_injection_1_code2, (body_declarations, 1), range(property_and_setter_injection_1, 2593, 252, 64, 68)).
code(property_and_setter_injection_1_code14, modifier, property_and_setter_injection_1_code13, (modifiers, 0), range(property_and_setter_injection_1, 2593, 7, 64, 64)).
code(property_and_setter_injection_1_code15, modifier, property_and_setter_injection_1_code13, (modifiers, 1), range(property_and_setter_injection_1, 2601, 5, 64, 64)).
code(property_and_setter_injection_1_code17, simple_type, property_and_setter_injection_1_code16, type, range(property_and_setter_injection_1, 2607, 15, 64, 64)).
code(property_and_setter_injection_1_code16, parameterized_type, property_and_setter_injection_1_code13, type, range(property_and_setter_injection_1, 2607, 22, 64, 64)).
code(property_and_setter_injection_1_code18, simple_type, property_and_setter_injection_1_code16, (type_arguments, 0), range(property_and_setter_injection_1, 2623, 5, 64, 64)).
code(property_and_setter_injection_1_code19, variable_declaration_fragment, property_and_setter_injection_1_code13, (fragments, 0), range(property_and_setter_injection_1, 2630, 214, 64, 68)).
code(property_and_setter_injection_1_code21, simple_type, property_and_setter_injection_1_code20, type, range(property_and_setter_injection_1, 2653, 15, 64, 64)).
code(property_and_setter_injection_1_code20, parameterized_type, property_and_setter_injection_1_expr4, type, range(property_and_setter_injection_1, 2653, 22, 64, 64)).
code(property_and_setter_injection_1_code22, simple_type, property_and_setter_injection_1_code20, (type_arguments, 0), range(property_and_setter_injection_1, 2669, 5, 64, 64)).
code(property_and_setter_injection_1_code23, anonymous_class_declaration, property_and_setter_injection_1_expr4, anonymous_class_declaration, range(property_and_setter_injection_1, 2678, 166, 64, 68)).
%type_based_candidate_filter_1 - org.mockito.internal.configuration.injection.filter.TypeBasedCandidateFilter
code(type_based_candidate_filter_1_code1, compilation_unit, range(type_based_candidate_filter_1, 0, 922, 1, -1)).
code(type_based_candidate_filter_1_code2, type_declaration, type_based_candidate_filter_1_code1, (types, 0), range(type_based_candidate_filter_1, 295, 626, 12, 30)).
code(type_based_candidate_filter_1_code3, method_declaration, type_based_candidate_filter_1_code2, (body_declarations, 1), range(type_based_candidate_filter_1, 402, 91, 16, 18)).
code(type_based_candidate_filter_1_code4, modifier, type_based_candidate_filter_1_code3, (modifiers, 0), range(type_based_candidate_filter_1, 402, 6, 16, 16)).
code(type_based_candidate_filter_1_code5, single_variable_declaration, type_based_candidate_filter_1_code3, (parameters, 0), range(type_based_candidate_filter_1, 434, 24, 16, 16)).
code(type_based_candidate_filter_1_code6, simple_type, type_based_candidate_filter_1_code5, type, range(type_based_candidate_filter_1, 434, 19, 16, 16)).
%thread_safe_mocking_progress_1 - org.mockito.internal.progress.ThreadSafeMockingProgress
code(thread_safe_mocking_progress_1_code1, compilation_unit, range(thread_safe_mocking_progress_1, 0, 2262, 1, -1)).
code(thread_safe_mocking_progress_1_code2, type_declaration, thread_safe_mocking_progress_1_code1, (types, 0), range(thread_safe_mocking_progress_1, 347, 1915, 14, -1)).
code(thread_safe_mocking_progress_1_code3, modifier, thread_safe_mocking_progress_1_code2, (modifiers, 1), range(thread_safe_mocking_progress_1, 378, 6, 15, 15)).
code(thread_safe_mocking_progress_1_code4, simple_type, thread_safe_mocking_progress_1_code2, (super_interface_types, 0), range(thread_safe_mocking_progress_1, 428, 15, 15, 15)).
code(thread_safe_mocking_progress_1_code5, simple_type, thread_safe_mocking_progress_1_code2, (super_interface_types, 1), range(thread_safe_mocking_progress_1, 445, 12, 15, 15)).
code(thread_safe_mocking_progress_1_code6, field_declaration, thread_safe_mocking_progress_1_code2, (body_declarations, 1), range(thread_safe_mocking_progress_1, 540, 103, 18, 18)).
code(thread_safe_mocking_progress_1_code7, modifier, thread_safe_mocking_progress_1_code6, (modifiers, 0), range(thread_safe_mocking_progress_1, 540, 7, 18, 18)).
code(thread_safe_mocking_progress_1_code8, modifier, thread_safe_mocking_progress_1_code6, (modifiers, 1), range(thread_safe_mocking_progress_1, 548, 6, 18, 18)).
code(thread_safe_mocking_progress_1_code9, modifier, thread_safe_mocking_progress_1_code6, (modifiers, 2), range(thread_safe_mocking_progress_1, 555, 5, 18, 18)).
code(thread_safe_mocking_progress_1_code10, parameterized_type, thread_safe_mocking_progress_1_code6, type, range(thread_safe_mocking_progress_1, 561, 28, 18, 18)).
code(thread_safe_mocking_progress_1_code11, simple_type, thread_safe_mocking_progress_1_code10, type, range(thread_safe_mocking_progress_1, 561, 11, 18, 18)).
code(thread_safe_mocking_progress_1_code12, simple_type, thread_safe_mocking_progress_1_code10, (type_arguments, 0), range(thread_safe_mocking_progress_1, 573, 15, 18, 18)).
code(thread_safe_mocking_progress_1_code13, variable_declaration_fragment, thread_safe_mocking_progress_1_code6, (fragments, 0), range(thread_safe_mocking_progress_1, 590, 52, 18, 18)).
code(thread_safe_mocking_progress_1_code14, parameterized_type, thread_safe_mocking_progress_1_expr1, type, range(thread_safe_mocking_progress_1, 612, 28, 18, 18)).
code(thread_safe_mocking_progress_1_code15, simple_type, thread_safe_mocking_progress_1_code14, type, range(thread_safe_mocking_progress_1, 612, 11, 18, 18)).
code(thread_safe_mocking_progress_1_code16, simple_type, thread_safe_mocking_progress_1_code14, (type_arguments, 0), range(thread_safe_mocking_progress_1, 624, 15, 18, 18)).
code(thread_safe_mocking_progress_1_code17, method_declaration, thread_safe_mocking_progress_1_code2, (body_declarations, 2), range(thread_safe_mocking_progress_1, 649, 198, 20, 25)).
code(thread_safe_mocking_progress_1_code18, simple_type, thread_safe_mocking_progress_1_expr5, type, range(thread_safe_mocking_progress_1, 770, 19, 22, 22)).
code(thread_safe_mocking_progress_1_code19, method_declaration, thread_safe_mocking_progress_1_code2, (body_declarations, 8), range(thread_safe_mocking_progress_1, 1440, 75, 47, 49)).
code(thread_safe_mocking_progress_1_code20, method_declaration, thread_safe_mocking_progress_1_code2, (body_declarations, 11), range(thread_safe_mocking_progress_1, 1725, 59, 59, 61)).
code(thread_safe_mocking_progress_1_code21, method_declaration, thread_safe_mocking_progress_1_code2, (body_declarations, 12), range(thread_safe_mocking_progress_1, 1790, 89, 63, 65)).
%mock_annotation_processor_1 - org.mockito.internal.configuration.MockAnnotationProcessor
code(mock_annotation_processor_1_code1, compilation_unit, range(mock_annotation_processor_1, 0, 1130, 1, -1)).
code(mock_annotation_processor_1_code2, type_declaration, mock_annotation_processor_1_code1, (types, 0), range(mock_annotation_processor_1, 285, 844, 13, 35)).
code(mock_annotation_processor_1_code3, modifier, mock_annotation_processor_1_code2, (modifiers, 0), range(mock_annotation_processor_1, 353, 6, 16, 16)).
code(mock_annotation_processor_1_code5, simple_type, mock_annotation_processor_1_code4, type, range(mock_annotation_processor_1, 401, 24, 16, 16)).
code(mock_annotation_processor_1_code4, parameterized_type, mock_annotation_processor_1_code2, (super_interface_types, 0), range(mock_annotation_processor_1, 401, 30, 16, 16)).
code(mock_annotation_processor_1_code6, simple_type, mock_annotation_processor_1_code4, (type_arguments, 0), range(mock_annotation_processor_1, 426, 4, 16, 16)).
%argument_matcher_storage_impl_1 - org.mockito.internal.progress.ArgumentMatcherStorageImpl
code(argument_matcher_storage_impl_1_code1, compilation_unit, range(argument_matcher_storage_impl_1, 0, 4445, 1, -1)).
code(argument_matcher_storage_impl_1_code2, type_declaration, argument_matcher_storage_impl_1_code1, (types, 0), range(argument_matcher_storage_impl_1, 546, 3899, 21, -1)).
code(argument_matcher_storage_impl_1_code3, modifier, argument_matcher_storage_impl_1_code2, (modifiers, 1), range(argument_matcher_storage_impl_1, 577, 6, 22, 22)).
code(argument_matcher_storage_impl_1_code4, simple_type, argument_matcher_storage_impl_1_code2, (super_interface_types, 0), range(argument_matcher_storage_impl_1, 628, 22, 22, 22)).
code(argument_matcher_storage_impl_1_code5, field_declaration, argument_matcher_storage_impl_1_code2, (body_declarations, 2), range(argument_matcher_storage_impl_1, 757, 83, 26, 26)).
code(argument_matcher_storage_impl_1_code6, modifier, argument_matcher_storage_impl_1_code5, (modifiers, 0), range(argument_matcher_storage_impl_1, 757, 7, 26, 26)).
code(argument_matcher_storage_impl_1_code7, modifier, argument_matcher_storage_impl_1_code5, (modifiers, 1), range(argument_matcher_storage_impl_1, 765, 5, 26, 26)).
code(argument_matcher_storage_impl_1_code9, simple_type, argument_matcher_storage_impl_1_code8, type, range(argument_matcher_storage_impl_1, 771, 5, 26, 26)).
code(argument_matcher_storage_impl_1_code8, parameterized_type, argument_matcher_storage_impl_1_code5, type, range(argument_matcher_storage_impl_1, 771, 23, 26, 26)).
code(argument_matcher_storage_impl_1_code10, simple_type, argument_matcher_storage_impl_1_code8, (type_arguments, 0), range(argument_matcher_storage_impl_1, 777, 16, 26, 26)).
code(argument_matcher_storage_impl_1_code11, variable_declaration_fragment, argument_matcher_storage_impl_1_code5, (fragments, 0), range(argument_matcher_storage_impl_1, 795, 44, 26, 26)).
code(argument_matcher_storage_impl_1_code12, parameterized_type, argument_matcher_storage_impl_1_expr1, type, range(argument_matcher_storage_impl_1, 814, 23, 26, 26)).
code(argument_matcher_storage_impl_1_code13, simple_type, argument_matcher_storage_impl_1_code12, type, range(argument_matcher_storage_impl_1, 814, 5, 26, 26)).
code(argument_matcher_storage_impl_1_code14, simple_type, argument_matcher_storage_impl_1_code12, (type_arguments, 0), range(argument_matcher_storage_impl_1, 820, 16, 26, 26)).
code(argument_matcher_storage_impl_1_code15, method_declaration, argument_matcher_storage_impl_1_code2, (body_declarations, 12), range(argument_matcher_storage_impl_1, 4009, 269, 111, 117)).
code(argument_matcher_storage_impl_1_code16, method_declaration, argument_matcher_storage_impl_1_code2, (body_declarations, 13), range(argument_matcher_storage_impl_1, 4386, 57, 122, 124)).
%spy_on_injected_fields_handler_1 - org.mockito.internal.configuration.injection.SpyOnInjectedFieldsHandler
code(spy_on_injected_fields_handler_1_code1, compilation_unit, range(spy_on_injected_fields_handler_1, 0, 2070, 1, -1)).
code(spy_on_injected_fields_handler_1_code2, type_declaration, spy_on_injected_fields_handler_1_code1, (types, 0), range(spy_on_injected_fields_handler_1, 543, 1526, 20, 57)).
code(spy_on_injected_fields_handler_1_code3, modifier, spy_on_injected_fields_handler_1_code2, (modifiers, 0), range(spy_on_injected_fields_handler_1, 783, 6, 28, 28)).
code(spy_on_injected_fields_handler_1_code4, simple_type, spy_on_injected_fields_handler_1_code2, superclass_type, range(spy_on_injected_fields_handler_1, 831, 21, 28, 28)).
%mockito_configuration_1 - org.mockito.configuration.MockitoConfiguration
code(mockito_configuration_1_code1, compilation_unit, range(mockito_configuration_1, 0, 2489, 1, -1)).
code(mockito_configuration_1_code3, modifier, mockito_configuration_1_code2, (modifiers, 0), range(mockito_configuration_1, 412, 6, 15, 15)).
code(mockito_configuration_1_code2, type_declaration, mockito_configuration_1_code1, (types, 0), range(mockito_configuration_1, 412, 2077, 15, -1)).
code(mockito_configuration_1_code4, simple_type, mockito_configuration_1_code2, superclass_type, range(mockito_configuration_1, 454, 27, 15, 15)).
code(mockito_configuration_1_code5, simple_type, mockito_configuration_1_code2, (super_interface_types, 0), range(mockito_configuration_1, 493, 21, 15, 15)).
code(mockito_configuration_1_code7, modifier, mockito_configuration_1_code6, (modifiers, 0), range(mockito_configuration_1, 522, 7, 17, 17)).
code(mockito_configuration_1_code6, field_declaration, mockito_configuration_1_code2, (body_declarations, 0), range(mockito_configuration_1, 522, 54, 17, 17)).
code(mockito_configuration_1_code9, simple_type, mockito_configuration_1_code8, type, range(mockito_configuration_1, 530, 6, 17, 17)).
code(mockito_configuration_1_code8, parameterized_type, mockito_configuration_1_code6, type, range(mockito_configuration_1, 530, 14, 17, 17)).
code(mockito_configuration_1_code10, simple_type, mockito_configuration_1_code8, (type_arguments, 0), range(mockito_configuration_1, 537, 6, 17, 17)).
code(mockito_configuration_1_code11, variable_declaration_fragment, mockito_configuration_1_code6, (fragments, 0), range(mockito_configuration_1, 545, 30, 17, 17)).
code(mockito_configuration_1_code13, modifier, mockito_configuration_1_code12, (modifiers, 0), range(mockito_configuration_1, 666, 7, 20, 20)).
code(mockito_configuration_1_code12, field_declaration, mockito_configuration_1_code2, (body_declarations, 3), range(mockito_configuration_1, 666, 40, 20, 20)).
code(mockito_configuration_1_code14, primitive_type, mockito_configuration_1_code12, type, range(mockito_configuration_1, 674, 7, 20, 20)).
code(mockito_configuration_1_code15, variable_declaration_fragment, mockito_configuration_1_code12, (fragments, 0), range(mockito_configuration_1, 682, 23, 20, 20)).
code(mockito_configuration_1_code16, method_declaration, mockito_configuration_1_code2, (body_declarations, 4), range(mockito_configuration_1, 776, 125, 23, 25)).
code(mockito_configuration_1_code17, method_declaration, mockito_configuration_1_code2, (body_declarations, 5), range(mockito_configuration_1, 971, 120, 28, 30)).
code(mockito_configuration_1_code18, method_declaration, mockito_configuration_1_code2, (body_declarations, 9), range(mockito_configuration_1, 1705, 590, 51, 66)).
code(mockito_configuration_1_code19, simple_type, mockito_configuration_1_expr10, type, range(mockito_configuration_1, 1883, 25, 56, 56)).
code(mockito_configuration_1_code20, anonymous_class_declaration, mockito_configuration_1_expr10, anonymous_class_declaration, range(mockito_configuration_1, 1911, 377, 56, 65)).
%hash_code_and_equals_safe_set_1 - org.mockito.internal.util.collections.HashCodeAndEqualsSafeSet
code(hash_code_and_equals_safe_set_1_code1, compilation_unit, range(hash_code_and_equals_safe_set_1, 0, 4775, 1, -1)).
code(hash_code_and_equals_safe_set_1_code2, type_declaration, hash_code_and_equals_safe_set_1_code1, (types, 0), range(hash_code_and_equals_safe_set_1, 382, 4392, 17, 158)).
code(hash_code_and_equals_safe_set_1_code3, modifier, hash_code_and_equals_safe_set_1_code2, (modifiers, 0), range(hash_code_and_equals_safe_set_1, 863, 6, 32, 32)).
code(hash_code_and_equals_safe_set_1_code5, simple_type, hash_code_and_equals_safe_set_1_code4, type, range(hash_code_and_equals_safe_set_1, 912, 3, 32, 32)).
code(hash_code_and_equals_safe_set_1_code4, parameterized_type, hash_code_and_equals_safe_set_1_code2, (super_interface_types, 0), range(hash_code_and_equals_safe_set_1, 912, 11, 32, 32)).
code(hash_code_and_equals_safe_set_1_code6, simple_type, hash_code_and_equals_safe_set_1_code4, (type_arguments, 0), range(hash_code_and_equals_safe_set_1, 916, 6, 32, 32)).
code(hash_code_and_equals_safe_set_1_code7, field_declaration, hash_code_and_equals_safe_set_1_code2, (body_declarations, 0), range(hash_code_and_equals_safe_set_1, 931, 113, 34, 34)).
code(hash_code_and_equals_safe_set_1_code8, modifier, hash_code_and_equals_safe_set_1_code7, (modifiers, 0), range(hash_code_and_equals_safe_set_1, 931, 7, 34, 34)).
code(hash_code_and_equals_safe_set_1_code9, modifier, hash_code_and_equals_safe_set_1_code7, (modifiers, 1), range(hash_code_and_equals_safe_set_1, 939, 5, 34, 34)).
code(hash_code_and_equals_safe_set_1_code10, parameterized_type, hash_code_and_equals_safe_set_1_code7, type, range(hash_code_and_equals_safe_set_1, 945, 37, 34, 34)).
code(hash_code_and_equals_safe_set_1_code11, simple_type, hash_code_and_equals_safe_set_1_code10, type, range(hash_code_and_equals_safe_set_1, 945, 7, 34, 34)).
code(hash_code_and_equals_safe_set_1_code12, simple_type, hash_code_and_equals_safe_set_1_code10, (type_arguments, 0), range(hash_code_and_equals_safe_set_1, 953, 28, 34, 34)).
code(hash_code_and_equals_safe_set_1_code13, variable_declaration_fragment, hash_code_and_equals_safe_set_1_code7, (fragments, 0), range(hash_code_and_equals_safe_set_1, 983, 60, 34, 34)).
code(hash_code_and_equals_safe_set_1_code14, parameterized_type, hash_code_and_equals_safe_set_1_expr1, type, range(hash_code_and_equals_safe_set_1, 1004, 37, 34, 34)).
code(hash_code_and_equals_safe_set_1_code15, simple_type, hash_code_and_equals_safe_set_1_code14, type, range(hash_code_and_equals_safe_set_1, 1004, 7, 34, 34)).
code(hash_code_and_equals_safe_set_1_code16, simple_type, hash_code_and_equals_safe_set_1_code14, (type_arguments, 0), range(hash_code_and_equals_safe_set_1, 1012, 28, 34, 34)).
code(hash_code_and_equals_safe_set_1_code17, method_declaration, hash_code_and_equals_safe_set_1_code2, (body_declarations, 1), range(hash_code_and_equals_safe_set_1, 1050, 474, 36, 52)).
code(hash_code_and_equals_safe_set_1_code19, simple_type, hash_code_and_equals_safe_set_1_code18, type, range(hash_code_and_equals_safe_set_1, 1106, 8, 37, 37)).
code(hash_code_and_equals_safe_set_1_code18, parameterized_type, hash_code_and_equals_safe_set_1_expr2, type, range(hash_code_and_equals_safe_set_1, 1106, 16, 37, 37)).
code(hash_code_and_equals_safe_set_1_code20, simple_type, hash_code_and_equals_safe_set_1_code18, (type_arguments, 0), range(hash_code_and_equals_safe_set_1, 1115, 6, 37, 37)).
code(hash_code_and_equals_safe_set_1_code21, anonymous_class_declaration, hash_code_and_equals_safe_set_1_expr2, anonymous_class_declaration, range(hash_code_and_equals_safe_set_1, 1125, 392, 37, 51)).
code(hash_code_and_equals_safe_set_1_code23, modifier, hash_code_and_equals_safe_set_1_code22, (modifiers, 0), range(hash_code_and_equals_safe_set_1, 1139, 7, 38, 38)).
code(hash_code_and_equals_safe_set_1_code22, field_declaration, hash_code_and_equals_safe_set_1_code21, (body_declarations, 0), range(hash_code_and_equals_safe_set_1, 1139, 90, 38, 38)).
code(hash_code_and_equals_safe_set_1_code24, modifier, hash_code_and_equals_safe_set_1_code22, (modifiers, 1), range(hash_code_and_equals_safe_set_1, 1147, 5, 38, 38)).
code(hash_code_and_equals_safe_set_1_code26, simple_type, hash_code_and_equals_safe_set_1_code25, type, range(hash_code_and_equals_safe_set_1, 1153, 8, 38, 38)).
code(hash_code_and_equals_safe_set_1_code25, parameterized_type, hash_code_and_equals_safe_set_1_code22, type, range(hash_code_and_equals_safe_set_1, 1153, 38, 38, 38)).
code(hash_code_and_equals_safe_set_1_code27, simple_type, hash_code_and_equals_safe_set_1_code25, (type_arguments, 0), range(hash_code_and_equals_safe_set_1, 1162, 28, 38, 38)).
code(hash_code_and_equals_safe_set_1_code28, variable_declaration_fragment, hash_code_and_equals_safe_set_1_code22, (fragments, 0), range(hash_code_and_equals_safe_set_1, 1192, 36, 38, 38)).
code(hash_code_and_equals_safe_set_1_code29, method_declaration, hash_code_and_equals_safe_set_1_code21, (body_declarations, 1), range(hash_code_and_equals_safe_set_1, 1243, 83, 40, 42)).
code(hash_code_and_equals_safe_set_1_code30, method_declaration, hash_code_and_equals_safe_set_1_code2, (body_declarations, 16), range(hash_code_and_equals_safe_set_1, 3482, 111, 123, 125)).
code(hash_code_and_equals_safe_set_1_code31, method_declaration, hash_code_and_equals_safe_set_1_code2, (body_declarations, 18), range(hash_code_and_equals_safe_set_1, 3722, 484, 131, 139)).
code(hash_code_and_equals_safe_set_1_code32, parameterized_type, hash_code_and_equals_safe_set_1_stmt5, type, range(hash_code_and_equals_safe_set_1, 3895, 37, 133, 133)).
code(hash_code_and_equals_safe_set_1_code33, simple_type, hash_code_and_equals_safe_set_1_code32, type, range(hash_code_and_equals_safe_set_1, 3895, 7, 133, 133)).
code(hash_code_and_equals_safe_set_1_code34, simple_type, hash_code_and_equals_safe_set_1_code32, (type_arguments, 0), range(hash_code_and_equals_safe_set_1, 3903, 28, 133, 133)).
code(hash_code_and_equals_safe_set_1_code35, variable_declaration_fragment, hash_code_and_equals_safe_set_1_stmt5, (fragments, 0), range(hash_code_and_equals_safe_set_1, 3933, 53, 133, 133)).
code(hash_code_and_equals_safe_set_1_code36, parameterized_type, hash_code_and_equals_safe_set_1_expr8, type, range(hash_code_and_equals_safe_set_1, 3947, 37, 133, 133)).
code(hash_code_and_equals_safe_set_1_code37, simple_type, hash_code_and_equals_safe_set_1_code36, type, range(hash_code_and_equals_safe_set_1, 3947, 7, 133, 133)).
code(hash_code_and_equals_safe_set_1_code38, simple_type, hash_code_and_equals_safe_set_1_code36, (type_arguments, 0), range(hash_code_and_equals_safe_set_1, 3955, 28, 133, 133)).
code(hash_code_and_equals_safe_set_1_code40, simple_type, hash_code_and_equals_safe_set_1_code39, type, range(hash_code_and_equals_safe_set_1, 4001, 6, 134, 134)).
code(hash_code_and_equals_safe_set_1_code39, single_variable_declaration, hash_code_and_equals_safe_set_1_stmt6, parameter, range(hash_code_and_equals_safe_set_1, 4001, 11, 134, 134)).
code(hash_code_and_equals_safe_set_1_code41, method_declaration, hash_code_and_equals_safe_set_1_code2, (body_declarations, 20), range(hash_code_and_equals_safe_set_1, 4302, 107, 145, 147)).
code(hash_code_and_equals_safe_set_1_code42, method_declaration, hash_code_and_equals_safe_set_1_code2, (body_declarations, 21), range(hash_code_and_equals_safe_set_1, 4415, 357, 149, 157)).
code(hash_code_and_equals_safe_set_1_code43, simple_type, hash_code_and_equals_safe_set_1_stmt9, type, range(hash_code_and_equals_safe_set_1, 4493, 24, 150, 150)).
code(hash_code_and_equals_safe_set_1_code44, variable_declaration_fragment, hash_code_and_equals_safe_set_1_stmt9, (fragments, 0), range(hash_code_and_equals_safe_set_1, 4518, 57, 150, 150)).
code(hash_code_and_equals_safe_set_1_code45, simple_type, hash_code_and_equals_safe_set_1_expr11, type, range(hash_code_and_equals_safe_set_1, 4549, 24, 150, 150)).
code(hash_code_and_equals_safe_set_1_code47, simple_type, hash_code_and_equals_safe_set_1_code46, type, range(hash_code_and_equals_safe_set_1, 4625, 6, 152, 152)).
code(hash_code_and_equals_safe_set_1_code46, single_variable_declaration, hash_code_and_equals_safe_set_1_stmt11, parameter, range(hash_code_and_equals_safe_set_1, 4625, 11, 152, 152)).
%default_mockito_configuration_1 - org.mockito.configuration.DefaultMockitoConfiguration
code(default_mockito_configuration_1_code1, compilation_unit, range(default_mockito_configuration_1, 0, 1795, 1, -1)).
code(default_mockito_configuration_1_code2, type_declaration, default_mockito_configuration_1_code1, (types, 0), range(default_mockito_configuration_1, 367, 1428, 12, -1)).
code(default_mockito_configuration_1_code3, modifier, default_mockito_configuration_1_code2, (modifiers, 1), range(default_mockito_configuration_1, 688, 6, 20, 20)).
code(default_mockito_configuration_1_code4, simple_type, default_mockito_configuration_1_code2, (super_interface_types, 0), range(default_mockito_configuration_1, 740, 21, 20, 20)).
code(default_mockito_configuration_1_code5, method_declaration, default_mockito_configuration_1_code2, (body_declarations, 2), range(default_mockito_configuration_1, 1330, 101, 38, 40)).
code(default_mockito_configuration_1_code6, simple_type, default_mockito_configuration_1_expr1, type, range(default_mockito_configuration_1, 1397, 25, 39, 39)).
%captor_annotation_processor_1 - org.mockito.internal.configuration.CaptorAnnotationProcessor
code(captor_annotation_processor_1_code1, compilation_unit, range(captor_annotation_processor_1, 0, 1102, 1, -1)).
code(captor_annotation_processor_1_code2, type_declaration, captor_annotation_processor_1_code1, (types, 0), range(captor_annotation_processor_1, 373, 728, 14, 28)).
code(captor_annotation_processor_1_code3, modifier, captor_annotation_processor_1_code2, (modifiers, 0), range(captor_annotation_processor_1, 453, 6, 17, 17)).
code(captor_annotation_processor_1_code5, simple_type, captor_annotation_processor_1_code4, type, range(captor_annotation_processor_1, 503, 24, 17, 17)).
code(captor_annotation_processor_1_code4, parameterized_type, captor_annotation_processor_1_code2, (super_interface_types, 0), range(captor_annotation_processor_1, 503, 32, 17, 17)).
code(captor_annotation_processor_1_code6, simple_type, captor_annotation_processor_1_code4, (type_arguments, 0), range(captor_annotation_processor_1, 528, 6, 17, 17)).
%plugin_registry_1 - org.mockito.internal.configuration.plugins.PluginRegistry
code(plugin_registry_1_code1, compilation_unit, range(plugin_registry_1, 0, 1415, 1, -1)).
code(plugin_registry_1_code2, type_declaration, plugin_registry_1_code1, (types, 0), range(plugin_registry_1, 187, 1227, 7, 35)).
code(plugin_registry_1_code4, modifier, plugin_registry_1_code3, (modifiers, 0), range(plugin_registry_1, 215, 7, 9, 9)).
code(plugin_registry_1_code3, field_declaration, plugin_registry_1_code2, (body_declarations, 0), range(plugin_registry_1, 215, 166, 9, 10)).
code(plugin_registry_1_code5, modifier, plugin_registry_1_code3, (modifiers, 1), range(plugin_registry_1, 223, 5, 9, 9)).
code(plugin_registry_1_code6, simple_type, plugin_registry_1_code3, type, range(plugin_registry_1, 229, 12, 9, 9)).
code(plugin_registry_1_code7, variable_declaration_fragment, plugin_registry_1_code3, (fragments, 0), range(plugin_registry_1, 242, 138, 9, 10)).
code(plugin_registry_1_code8, simple_type, plugin_registry_1_expr4, type, range(plugin_registry_1, 273, 12, 10, 10)).
code(plugin_registry_1_code9, simple_type, plugin_registry_1_expr5, type, range(plugin_registry_1, 290, 19, 10, 10)).
code(plugin_registry_1_code10, simple_type, plugin_registry_1_expr2, type, range(plugin_registry_1, 324, 12, 10, 10)).
code(plugin_registry_1_code11, simple_type, plugin_registry_1_expr6, type, range(plugin_registry_1, 344, 19, 10, 10)).
code(plugin_registry_1_code13, modifier, plugin_registry_1_code12, (modifiers, 0), range(plugin_registry_1, 387, 7, 12, 12)).
code(plugin_registry_1_code12, field_declaration, plugin_registry_1_code2, (body_declarations, 1), range(plugin_registry_1, 387, 169, 12, 13)).
code(plugin_registry_1_code14, modifier, plugin_registry_1_code12, (modifiers, 1), range(plugin_registry_1, 395, 5, 12, 12)).
code(plugin_registry_1_code15, simple_type, plugin_registry_1_code12, type, range(plugin_registry_1, 401, 9, 12, 12)).
code(plugin_registry_1_code16, variable_declaration_fragment, plugin_registry_1_code12, (fragments, 0), range(plugin_registry_1, 411, 144, 12, 13)).
code(plugin_registry_1_code17, simple_type, plugin_registry_1_expr9, type, range(plugin_registry_1, 439, 12, 13, 13)).
code(plugin_registry_1_code18, simple_type, plugin_registry_1_expr8, type, range(plugin_registry_1, 477, 9, 13, 13)).
code(plugin_registry_1_code20, modifier, plugin_registry_1_code19, (modifiers, 0), range(plugin_registry_1, 562, 7, 15, 15)).
code(plugin_registry_1_code19, field_declaration, plugin_registry_1_code2, (body_declarations, 2), range(plugin_registry_1, 562, 234, 15, 16)).
code(plugin_registry_1_code21, modifier, plugin_registry_1_code19, (modifiers, 1), range(plugin_registry_1, 570, 5, 15, 15)).
code(plugin_registry_1_code22, simple_type, plugin_registry_1_code19, type, range(plugin_registry_1, 576, 25, 15, 15)).
code(plugin_registry_1_code23, variable_declaration_fragment, plugin_registry_1_code19, (fragments, 0), range(plugin_registry_1, 602, 193, 15, 16)).
code(plugin_registry_1_code24, simple_type, plugin_registry_1_expr12, type, range(plugin_registry_1, 646, 12, 16, 16)).
code(plugin_registry_1_code25, simple_type, plugin_registry_1_expr11, type, range(plugin_registry_1, 684, 25, 16, 16)).
code(plugin_registry_1_code26, method_declaration, plugin_registry_1_code2, (body_declarations, 4), range(plugin_registry_1, 1055, 357, 26, 34)).
%plugin_finder_1 - org.mockito.internal.configuration.plugins.PluginFinder
code(plugin_finder_1_code1, compilation_unit, range(plugin_finder_1, 0, 1330, 1, -1)).
code(plugin_finder_1_code2, type_declaration, plugin_finder_1_code1, (types, 0), range(plugin_finder_1, 242, 1087, 10, 41)).
code(plugin_finder_1_code3, method_declaration, plugin_finder_1_code2, (body_declarations, 1), range(plugin_finder_1, 314, 96, 14, 16)).
code(plugin_finder_1_code4, modifier, plugin_finder_1_code3, (modifiers, 0), range(plugin_finder_1, 314, 6, 14, 14)).
code(plugin_finder_1_code6, simple_type, plugin_finder_1_code5, type, range(plugin_finder_1, 334, 12, 14, 14)).
code(plugin_finder_1_code5, single_variable_declaration, plugin_finder_1_code3, (parameters, 0), range(plugin_finder_1, 334, 25, 14, 14)).
code(plugin_finder_1_code7, method_declaration, plugin_finder_1_code2, (body_declarations, 2), range(plugin_finder_1, 416, 911, 18, 40)).
code(plugin_finder_1_code8, single_variable_declaration, plugin_finder_1_stmt2, parameter, range(plugin_finder_1, 479, 12, 19, 19)).
code(plugin_finder_1_code9, simple_type, plugin_finder_1_code8, type, range(plugin_finder_1, 479, 3, 19, 19)).
%class_path_loader_1 - org.mockito.internal.configuration.ClassPathLoader
code(class_path_loader_1_code1, compilation_unit, range(class_path_loader_1, 0, 3322, 1, -1)).
code(class_path_loader_1_code2, type_declaration, class_path_loader_1_code1, (types, 0), range(class_path_loader_1, 588, 2733, 20, 82)).
code(class_path_loader_1_code3, modifier, class_path_loader_1_code2, (modifiers, 0), range(class_path_loader_1, 2173, 6, 56, 56)).
code(class_path_loader_1_code4, method_declaration, class_path_loader_1_code2, (body_declarations, 1), range(class_path_loader_1, 2326, 993, 60, 81)).
code(class_path_loader_1_code5, simple_type, class_path_loader_1_expr2, type, range(class_path_loader_1, 2603, 5, 68, 68)).
code(class_path_loader_1_code6, catch_clause, class_path_loader_1_stmt1, (catch_clauses, 0), range(class_path_loader_1, 2669, 149, 69, 72)).
code(class_path_loader_1_code7, simple_type, class_path_loader_1_expr4, type, range(class_path_loader_1, 2854, 21, 75, 75)).
%object_methods_guru_1 - org.mockito.internal.util.ObjectMethodsGuru
code(object_methods_guru_1_code1, compilation_unit, range(object_methods_guru_1, 0, 1533, 1, -1)).
code(object_methods_guru_1_code2, type_declaration, object_methods_guru_1_code1, (types, 0), range(object_methods_guru_1, 329, 1204, 13, -1)).
code(object_methods_guru_1_code3, modifier, object_methods_guru_1_code2, (modifiers, 0), range(object_methods_guru_1, 329, 6, 13, 13)).
code(object_methods_guru_1_code4, simple_type, object_methods_guru_1_code2, (super_interface_types, 0), range(object_methods_guru_1, 371, 12, 13, 13)).
%plugin_loader_1 - org.mockito.internal.configuration.plugins.PluginLoader
code(plugin_loader_1_code1, compilation_unit, range(plugin_loader_1, 0, 2683, 1, -1)).
code(plugin_loader_1_code2, type_declaration, plugin_loader_1_code1, (types, 0), range(plugin_loader_1, 354, 2328, 12, 70)).
code(plugin_loader_1_code4, modifier, plugin_loader_1_code3, (modifiers, 0), range(plugin_loader_1, 426, 6, 16, 16)).
code(plugin_loader_1_code3, method_declaration, plugin_loader_1_code2, (body_declarations, 1), range(plugin_loader_1, 426, 96, 16, 18)).
code(plugin_loader_1_code5, single_variable_declaration, plugin_loader_1_code3, (parameters, 0), range(plugin_loader_1, 446, 25, 16, 16)).
code(plugin_loader_1_code6, simple_type, plugin_loader_1_code5, type, range(plugin_loader_1, 446, 12, 16, 16)).
code(plugin_loader_1_code7, method_declaration, plugin_loader_1_code2, (body_declarations, 2), range(plugin_loader_1, 528, 950, 20, 39)).
code(plugin_loader_1_code8, simple_type, plugin_loader_1_stmt2, type, range(plugin_loader_1, 709, 1, 24, 24)).
code(plugin_loader_1_code9, variable_declaration_fragment, plugin_loader_1_stmt2, (fragments, 0), range(plugin_loader_1, 711, 29, 24, 24)).
code(plugin_loader_1_code10, method_declaration, plugin_loader_1_code2, (body_declarations, 3), range(plugin_loader_1, 1484, 1196, 41, 69)).
code(plugin_loader_1_code11, simple_type, plugin_loader_1_stmt6, type, range(plugin_loader_1, 1666, 11, 46, 46)).
code(plugin_loader_1_code12, variable_declaration_fragment, plugin_loader_1_stmt6, (fragments, 0), range(plugin_loader_1, 1678, 55, 46, 46)).
code(plugin_loader_1_code13, catch_clause, plugin_loader_1_stmt8, (catch_clauses, 0), range(plugin_loader_1, 1980, 105, 53, 55)).
code(plugin_loader_1_code14, simple_type, plugin_loader_1_stmt11, type, range(plugin_loader_1, 2113, 6, 58, 58)).
code(plugin_loader_1_code15, variable_declaration_fragment, plugin_loader_1_stmt11, (fragments, 0), range(plugin_loader_1, 2120, 98, 58, 58)).
code(plugin_loader_1_code16, simple_type, plugin_loader_1_expr18, type, range(plugin_loader_1, 2143, 12, 58, 58)).
%default_injection_engine_1 - org.mockito.internal.configuration.DefaultInjectionEngine
code(default_injection_engine_1_code1, compilation_unit, range(default_injection_engine_1, 0, 845, 1, -1)).
code(default_injection_engine_1_code2, type_declaration, default_injection_engine_1_code1, (types, 0), range(default_injection_engine_1, 288, 556, 12, 28)).
code(default_injection_engine_1_code3, modifier, default_injection_engine_1_code2, (modifiers, 0), range(default_injection_engine_1, 428, 6, 17, 17)).
code(default_injection_engine_1_code4, method_declaration, default_injection_engine_1_code2, (body_declarations, 0), range(default_injection_engine_1, 471, 370, 19, 26)).
%mock_injection_1 - org.mockito.internal.configuration.injection.MockInjection
code(mock_injection_1_code1, compilation_unit, range(mock_injection_1, 0, 3245, 1, -1)).
code(mock_injection_1_code2, type_declaration, mock_injection_1_code1, (types, 0), range(mock_injection_1, 492, 2752, 17, 97)).
code(mock_injection_1_code3, method_declaration, mock_injection_1_code2, (body_declarations, 1), range(mock_injection_1, 1073, 387, 39, 49)).
code(mock_injection_1_code4, simple_type, mock_injection_1_expr1, type, range(mock_injection_1, 1413, 20, 48, 48)).
code(mock_injection_1_code5, type_declaration, mock_injection_1_code2, (body_declarations, 2), range(mock_injection_1, 1466, 1776, 51, 96)).
code(mock_injection_1_code7, modifier, mock_injection_1_code6, (modifiers, 0), range(mock_injection_1, 1584, 7, 55, 55)).
code(mock_injection_1_code6, field_declaration, mock_injection_1_code5, (body_declarations, 0), range(mock_injection_1, 1584, 55, 55, 55)).
code(mock_injection_1_code8, modifier, mock_injection_1_code6, (modifiers, 1), range(mock_injection_1, 1592, 5, 55, 55)).
code(mock_injection_1_code9, parameterized_type, mock_injection_1_code6, type, range(mock_injection_1, 1598, 10, 55, 55)).
code(mock_injection_1_code10, simple_type, mock_injection_1_code9, type, range(mock_injection_1, 1598, 3, 55, 55)).
code(mock_injection_1_code11, simple_type, mock_injection_1_code9, (type_arguments, 0), range(mock_injection_1, 1602, 5, 55, 55)).
code(mock_injection_1_code12, variable_declaration_fragment, mock_injection_1_code6, (fragments, 0), range(mock_injection_1, 1609, 29, 55, 55)).
code(mock_injection_1_code14, simple_type, mock_injection_1_code13, type, range(mock_injection_1, 1622, 7, 55, 55)).
code(mock_injection_1_code13, parameterized_type, mock_injection_1_expr2, type, range(mock_injection_1, 1622, 14, 55, 55)).
code(mock_injection_1_code15, simple_type, mock_injection_1_code13, (type_arguments, 0), range(mock_injection_1, 1630, 5, 55, 55)).
code(mock_injection_1_code17, modifier, mock_injection_1_code16, (modifiers, 0), range(mock_injection_1, 1648, 7, 56, 56)).
code(mock_injection_1_code16, field_declaration, mock_injection_1_code5, (body_declarations, 1), range(mock_injection_1, 1648, 55, 56, 56)).
code(mock_injection_1_code18, modifier, mock_injection_1_code16, (modifiers, 1), range(mock_injection_1, 1656, 5, 56, 56)).
code(mock_injection_1_code19, parameterized_type, mock_injection_1_code16, type, range(mock_injection_1, 1662, 11, 56, 56)).
code(mock_injection_1_code20, simple_type, mock_injection_1_code19, type, range(mock_injection_1, 1662, 3, 56, 56)).
code(mock_injection_1_code21, simple_type, mock_injection_1_code19, (type_arguments, 0), range(mock_injection_1, 1666, 6, 56, 56)).
code(mock_injection_1_code22, variable_declaration_fragment, mock_injection_1_code16, (fragments, 0), range(mock_injection_1, 1674, 28, 56, 56)).
code(mock_injection_1_code23, field_declaration, mock_injection_1_code5, (body_declarations, 3), range(mock_injection_1, 1753, 86, 58, 58)).
code(mock_injection_1_code24, modifier, mock_injection_1_code23, (modifiers, 0), range(mock_injection_1, 1753, 7, 58, 58)).
code(mock_injection_1_code25, modifier, mock_injection_1_code23, (modifiers, 1), range(mock_injection_1, 1761, 5, 58, 58)).
code(mock_injection_1_code26, simple_type, mock_injection_1_code23, type, range(mock_injection_1, 1767, 21, 58, 58)).
code(mock_injection_1_code27, variable_declaration_fragment, mock_injection_1_code23, (fragments, 0), range(mock_injection_1, 1789, 49, 58, 58)).
code(mock_injection_1_code28, field_declaration, mock_injection_1_code5, (body_declarations, 4), range(mock_injection_1, 1848, 90, 59, 59)).
code(mock_injection_1_code29, modifier, mock_injection_1_code28, (modifiers, 0), range(mock_injection_1, 1848, 7, 59, 59)).
code(mock_injection_1_code30, modifier, mock_injection_1_code28, (modifiers, 1), range(mock_injection_1, 1856, 5, 59, 59)).
code(mock_injection_1_code31, simple_type, mock_injection_1_code28, type, range(mock_injection_1, 1862, 21, 59, 59)).
code(mock_injection_1_code32, variable_declaration_fragment, mock_injection_1_code28, (fragments, 0), range(mock_injection_1, 1884, 53, 59, 59)).
code(mock_injection_1_code34, modifier, mock_injection_1_code33, (modifiers, 0), range(mock_injection_1, 2090, 7, 65, 65)).
code(mock_injection_1_code33, method_declaration, mock_injection_1_code5, (body_declarations, 6), range(mock_injection_1, 2090, 217, 65, 68)).
code(mock_injection_1_code36, parameterized_type, mock_injection_1_code35, type, range(mock_injection_1, 2119, 10, 65, 65)).
code(mock_injection_1_code35, single_variable_declaration, mock_injection_1_code33, (parameters, 0), range(mock_injection_1, 2119, 17, 65, 65)).
code(mock_injection_1_code37, simple_type, mock_injection_1_code36, type, range(mock_injection_1, 2119, 3, 65, 65)).
code(mock_injection_1_code38, simple_type, mock_injection_1_code36, (type_arguments, 0), range(mock_injection_1, 2123, 5, 65, 65)).
code(mock_injection_1_code39, single_variable_declaration, mock_injection_1_code33, (parameters, 1), range(mock_injection_1, 2138, 17, 65, 65)).
code(mock_injection_1_code40, simple_type, mock_injection_1_code39, type, range(mock_injection_1, 2138, 6, 65, 65)).
code(mock_injection_1_code41, method_declaration, mock_injection_1_code5, (body_declarations, 7), range(mock_injection_1, 2317, 154, 70, 73)).
code(mock_injection_1_code42, method_declaration, mock_injection_1_code5, (body_declarations, 8), range(mock_injection_1, 2481, 159, 75, 78)).
code(mock_injection_1_code43, simple_type, mock_injection_1_expr20, type, range(mock_injection_1, 2581, 20, 76, 76)).
code(mock_injection_1_code44, method_declaration, mock_injection_1_code5, (body_declarations, 9), range(mock_injection_1, 2650, 169, 80, 83)).
code(mock_injection_1_code45, simple_type, mock_injection_1_expr23, type, range(mock_injection_1, 2754, 26, 81, 81)).
code(mock_injection_1_code46, method_declaration, mock_injection_1_code5, (body_declarations, 10), range(mock_injection_1, 2829, 165, 85, 88)).
code(mock_injection_1_code47, simple_type, mock_injection_1_expr26, type, range(mock_injection_1, 2929, 26, 86, 86)).
code(mock_injection_1_code48, method_declaration, mock_injection_1_code5, (body_declarations, 11), range(mock_injection_1, 3004, 232, 90, 95)).
code(mock_injection_1_code49, single_variable_declaration, mock_injection_1_stmt12, parameter, range(mock_injection_1, 3043, 11, 91, 91)).
code(mock_injection_1_code50, simple_type, mock_injection_1_code49, type, range(mock_injection_1, 3043, 5, 91, 91)).
%mockito_annotations_1 - org.mockito.MockitoAnnotations
code(mockito_annotations_1_code1, compilation_unit, range(mockito_annotations_1, 0, 5879, 1, -1)).
code(mockito_annotations_1_code2, type_declaration, mockito_annotations_1_code1, (types, 0), range(mockito_annotations_1, 765, 5113, 24, 142)).
code(mockito_annotations_1_code3, method_declaration, mockito_annotations_1_code2, (body_declarations, 1), range(mockito_annotations_1, 3211, 1351, 83, 109)).
code(mockito_annotations_1_code4, simple_type, mockito_annotations_1_stmt2, type, range(mockito_annotations_1, 3759, 16, 94, 94)).
code(mockito_annotations_1_code5, variable_declaration_fragment, mockito_annotations_1_stmt2, (fragments, 0), range(mockito_annotations_1, 3776, 66, 94, 94)).
code(mockito_annotations_1_code6, simple_type, mockito_annotations_1_expr3, type, range(mockito_annotations_1, 3799, 19, 94, 94)).
code(mockito_annotations_1_code7, parameterized_type, mockito_annotations_1_stmt3, type, range(mockito_annotations_1, 3852, 8, 95, 95)).
code(mockito_annotations_1_code8, simple_type, mockito_annotations_1_code7, type, range(mockito_annotations_1, 3852, 5, 95, 95)).
code(mockito_annotations_1_code9, wildcard_type, mockito_annotations_1_code7, (type_arguments, 0), range(mockito_annotations_1, 3858, 1, 95, 95)).
code(mockito_annotations_1_code10, variable_declaration_fragment, mockito_annotations_1_stmt3, (fragments, 0), range(mockito_annotations_1, 3861, 28, 95, 95)).
code(mockito_annotations_1_code11, simple_type, mockito_annotations_1_expr9, type, range(mockito_annotations_1, 4018, 27, 98, 98)).
code(mockito_annotations_1_code12, simple_type, mockito_annotations_1_expr11, type, range(mockito_annotations_1, 4296, 6, 101, 101)).
code(mockito_annotations_1_code13, method_declaration, mockito_annotations_1_code2, (body_declarations, 2), range(mockito_annotations_1, 4568, 286, 111, 117)).
code(mockito_annotations_1_code14, array_type, mockito_annotations_1_stmt9, type, range(mockito_annotations_1, 4677, 7, 112, 112)).
code(mockito_annotations_1_code15, simple_type, mockito_annotations_1_code14, element_type, range(mockito_annotations_1, 4677, 5, 112, 112)).
code(mockito_annotations_1_code16, dimension, mockito_annotations_1_code14, (dimensions, 0), range(mockito_annotations_1, 4682, 2, 112, 112)).
code(mockito_annotations_1_code17, variable_declaration_fragment, mockito_annotations_1_stmt9, (fragments, 0), range(mockito_annotations_1, 4685, 34, 112, 112)).
code(mockito_annotations_1_code19, simple_type, mockito_annotations_1_code18, type, range(mockito_annotations_1, 4735, 5, 114, 114)).
code(mockito_annotations_1_code18, single_variable_declaration, mockito_annotations_1_stmt10, parameter, range(mockito_annotations_1, 4735, 11, 114, 114)).
code(mockito_annotations_1_code20, method_declaration, mockito_annotations_1_code2, (body_declarations, 3), range(mockito_annotations_1, 4860, 812, 119, 135)).
code(mockito_annotations_1_code21, primitive_type, mockito_annotations_1_stmt12, type, range(mockito_annotations_1, 5016, 7, 121, 121)).
code(mockito_annotations_1_code22, variable_declaration_fragment, mockito_annotations_1_stmt12, (fragments, 0), range(mockito_annotations_1, 5024, 23, 121, 121)).
code(mockito_annotations_1_code23, single_variable_declaration, mockito_annotations_1_stmt13, parameter, range(mockito_annotations_1, 5061, 21, 122, 122)).
code(mockito_annotations_1_code24, simple_type, mockito_annotations_1_code23, type, range(mockito_annotations_1, 5061, 10, 122, 122)).
%constructor_injection_1 - org.mockito.internal.configuration.injection.ConstructorInjection
code(constructor_injection_1_code1, compilation_unit, range(constructor_injection_1, 0, 3137, 1, -1)).
code(constructor_injection_1_code2, type_declaration, constructor_injection_1_code1, (types, 0), range(constructor_injection_1, 651, 2485, 20, 92)).
code(constructor_injection_1_code4, modifier, constructor_injection_1_code3, (modifiers, 0), range(constructor_injection_1, 1271, 6, 42, 42)).
code(constructor_injection_1_code3, method_declaration, constructor_injection_1_code2, (body_declarations, 1), range(constructor_injection_1, 1271, 33, 42, 42)).
%spy_annotation_engine_1 - org.mockito.internal.configuration.SpyAnnotationEngine
code(spy_annotation_engine_1_code1, compilation_unit, range(spy_annotation_engine_1, 0, 5526, 1, -1)).
code(spy_annotation_engine_1_code2, type_declaration, spy_annotation_engine_1_code1, (types, 0), range(spy_annotation_engine_1, 622, 4903, 21, 129)).
code(spy_annotation_engine_1_code3, modifier, spy_annotation_engine_1_code2, (modifiers, 1), range(spy_annotation_engine_1, 1225, 6, 40, 40)).
code(spy_annotation_engine_1_code4, simple_type, spy_annotation_engine_1_code2, (super_interface_types, 0), range(spy_annotation_engine_1, 1269, 16, 40, 40)).
code(spy_annotation_engine_1_code5, method_declaration, spy_annotation_engine_1_code2, (body_declarations, 1), range(spy_annotation_engine_1, 1391, 1655, 46, 74)).
code(spy_annotation_engine_1_code6, array_type, spy_annotation_engine_1_stmt1, type, range(spy_annotation_engine_1, 1528, 7, 48, 48)).
code(spy_annotation_engine_1_code7, simple_type, spy_annotation_engine_1_code6, element_type, range(spy_annotation_engine_1, 1528, 5, 48, 48)).
code(spy_annotation_engine_1_code8, dimension, spy_annotation_engine_1_code6, (dimensions, 0), range(spy_annotation_engine_1, 1533, 2, 48, 48)).
code(spy_annotation_engine_1_code9, variable_declaration_fragment, spy_annotation_engine_1_stmt1, (fragments, 0), range(spy_annotation_engine_1, 1536, 36, 48, 48)).
code(spy_annotation_engine_1_code10, single_variable_declaration, spy_annotation_engine_1_stmt2, parameter, range(spy_annotation_engine_1, 1587, 11, 49, 49)).
code(spy_annotation_engine_1_code11, simple_type, spy_annotation_engine_1_code10, type, range(spy_annotation_engine_1, 1587, 5, 49, 49)).
code(spy_annotation_engine_1_code12, simple_type, spy_annotation_engine_1_expr4, type, range(spy_annotation_engine_1, 1653, 3, 50, 50)).
code(spy_annotation_engine_1_code13, simple_type, spy_annotation_engine_1_expr7, type, range(spy_annotation_engine_1, 1694, 11, 50, 50)).
%mock_scanner_1 - org.mockito.internal.configuration.injection.scanner.MockScanner
code(mock_scanner_1_code1, compilation_unit, range(mock_scanner_1, 0, 2701, 1, -1)).
code(mock_scanner_1_code2, type_declaration, mock_scanner_1_code1, (types, 0), range(mock_scanner_1, 505, 2195, 18, 89)).
code(mock_scanner_1_code3, field_declaration, mock_scanner_1_code2, (body_declarations, 0), range(mock_scanner_1, 587, 49, 22, 22)).
code(mock_scanner_1_code4, modifier, mock_scanner_1_code3, (modifiers, 0), range(mock_scanner_1, 587, 7, 22, 22)).
code(mock_scanner_1_code5, modifier, mock_scanner_1_code3, (modifiers, 1), range(mock_scanner_1, 595, 5, 22, 22)).
code(mock_scanner_1_code6, simple_type, mock_scanner_1_code3, type, range(mock_scanner_1, 601, 8, 22, 22)).
code(mock_scanner_1_code7, variable_declaration_fragment, mock_scanner_1_code3, (fragments, 0), range(mock_scanner_1, 610, 25, 22, 22)).
code(mock_scanner_1_code8, simple_type, mock_scanner_1_expr1, type, range(mock_scanner_1, 625, 8, 22, 22)).
code(mock_scanner_1_code9, method_declaration, mock_scanner_1_code2, (body_declarations, 3), range(mock_scanner_1, 711, 288, 26, 35)).
code(mock_scanner_1_code10, modifier, mock_scanner_1_code9, (modifiers, 0), range(mock_scanner_1, 878, 6, 32, 32)).
code(mock_scanner_1_code11, single_variable_declaration, mock_scanner_1_code9, (parameters, 0), range(mock_scanner_1, 897, 15, 32, 32)).
code(mock_scanner_1_code12, simple_type, mock_scanner_1_code11, type, range(mock_scanner_1, 897, 6, 32, 32)).
code(mock_scanner_1_code13, single_variable_declaration, mock_scanner_1_code9, (parameters, 1), range(mock_scanner_1, 914, 14, 32, 32)).
code(mock_scanner_1_code14, parameterized_type, mock_scanner_1_code13, type, range(mock_scanner_1, 914, 8, 32, 32)).
code(mock_scanner_1_code15, simple_type, mock_scanner_1_code14, type, range(mock_scanner_1, 914, 5, 32, 32)).
code(mock_scanner_1_code16, wildcard_type, mock_scanner_1_code14, (type_arguments, 0), range(mock_scanner_1, 920, 1, 32, 32)).
code(mock_scanner_1_code17, method_declaration, mock_scanner_1_code2, (body_declarations, 4), range(mock_scanner_1, 1005, 335, 37, 48)).
code(mock_scanner_1_code18, method_declaration, mock_scanner_1_code2, (body_declarations, 5), range(mock_scanner_1, 1346, 631, 50, 67)).
code(mock_scanner_1_code20, simple_type, mock_scanner_1_code19, type, range(mock_scanner_1, 1565, 3, 56, 56)).
code(mock_scanner_1_code19, parameterized_type, mock_scanner_1_stmt4, type, range(mock_scanner_1, 1565, 11, 56, 56)).
code(mock_scanner_1_code21, simple_type, mock_scanner_1_code19, (type_arguments, 0), range(mock_scanner_1, 1569, 6, 56, 56)).
code(mock_scanner_1_code22, variable_declaration_fragment, mock_scanner_1_stmt4, (fragments, 0), range(mock_scanner_1, 1577, 28, 56, 56)).
code(mock_scanner_1_code24, simple_type, mock_scanner_1_code23, type, range(mock_scanner_1, 1620, 5, 57, 57)).
code(mock_scanner_1_code23, single_variable_declaration, mock_scanner_1_stmt5, parameter, range(mock_scanner_1, 1620, 11, 57, 57)).
code(mock_scanner_1_code25, simple_type, mock_scanner_1_stmt6, type, range(mock_scanner_1, 1709, 11, 59, 59)).
code(mock_scanner_1_code26, variable_declaration_fragment, mock_scanner_1_stmt6, (fragments, 0), range(mock_scanner_1, 1721, 46, 59, 59)).
code(mock_scanner_1_code27, simple_type, mock_scanner_1_expr12, type, range(mock_scanner_1, 1739, 11, 59, 59)).
code(mock_scanner_1_code28, simple_type, mock_scanner_1_stmt7, type, range(mock_scanner_1, 1782, 6, 61, 61)).
code(mock_scanner_1_code29, variable_declaration_fragment, mock_scanner_1_stmt7, (fragments, 0), range(mock_scanner_1, 1789, 54, 61, 61)).
code(mock_scanner_1_code30, method_declaration, mock_scanner_1_code2, (body_declarations, 6), range(mock_scanner_1, 1983, 314, 69, 77)).
code(mock_scanner_1_code31, method_declaration, mock_scanner_1_code2, (body_declarations, 7), range(mock_scanner_1, 2303, 251, 79, 83)).
code(mock_scanner_1_code32, simple_type, mock_scanner_1_expr22, type, range(mock_scanner_1, 2400, 3, 80, 80)).
code(mock_scanner_1_code33, simple_type, mock_scanner_1_expr25, type, range(mock_scanner_1, 2458, 4, 81, 81)).
code(mock_scanner_1_code34, simple_type, mock_scanner_1_expr28, type, range(mock_scanner_1, 2517, 23, 82, 82)).
code(mock_scanner_1_code35, method_declaration, mock_scanner_1_code2, (body_declarations, 8), range(mock_scanner_1, 2560, 138, 85, 88)).
%returns_empty_values_1 - org.mockito.internal.stubbing.defaultanswers.ReturnsEmptyValues
code(returns_empty_values_1_code1, compilation_unit, range(returns_empty_values_1, 0, 4679, 1, -1)).
code(returns_empty_values_1_code2, type_declaration, returns_empty_values_1_code1, (types, 0), range(returns_empty_values_1, 841, 3837, 30, 120)).
code(returns_empty_values_1_code3, modifier, returns_empty_values_1_code2, (modifiers, 0), range(returns_empty_values_1, 1543, 6, 53, 53)).
code(returns_empty_values_1_code4, parameterized_type, returns_empty_values_1_code2, (super_interface_types, 0), range(returns_empty_values_1, 1586, 14, 53, 53)).
code(returns_empty_values_1_code5, simple_type, returns_empty_values_1_code4, type, range(returns_empty_values_1, 1586, 6, 53, 53)).
code(returns_empty_values_1_code6, simple_type, returns_empty_values_1_code4, (type_arguments, 0), range(returns_empty_values_1, 1593, 6, 53, 53)).
code(returns_empty_values_1_code7, simple_type, returns_empty_values_1_code2, (super_interface_types, 1), range(returns_empty_values_1, 1602, 12, 53, 53)).
code(returns_empty_values_1_code9, simple_type, returns_empty_values_1_code8, type, range(returns_empty_values_1, 1697, 17, 56, 56)).
code(returns_empty_values_1_code8, field_declaration, returns_empty_values_1_code2, (body_declarations, 1), range(returns_empty_values_1, 1697, 56, 56, 56)).
code(returns_empty_values_1_code10, variable_declaration_fragment, returns_empty_values_1_code8, (fragments, 0), range(returns_empty_values_1, 1715, 37, 56, 56)).
code(returns_empty_values_1_code11, simple_type, returns_empty_values_1_expr1, type, range(returns_empty_values_1, 1733, 17, 56, 56)).
code(returns_empty_values_1_code13, simple_type, returns_empty_values_1_code12, type, range(returns_empty_values_1, 1758, 8, 57, 57)).
code(returns_empty_values_1_code12, field_declaration, returns_empty_values_1_code2, (body_declarations, 2), range(returns_empty_values_1, 1758, 35, 57, 57)).
code(returns_empty_values_1_code14, variable_declaration_fragment, returns_empty_values_1_code12, (fragments, 0), range(returns_empty_values_1, 1767, 25, 57, 57)).
code(returns_empty_values_1_code15, simple_type, returns_empty_values_1_expr2, type, range(returns_empty_values_1, 1782, 8, 57, 57)).
code(returns_empty_values_1_code16, method_declaration, returns_empty_values_1_code2, (body_declarations, 4), range(returns_empty_values_1, 2961, 1714, 82, 118)).
code(returns_empty_values_1_code17, simple_type, returns_empty_values_1_expr5, type, range(returns_empty_values_1, 3330, 10, 87, 87)).
code(returns_empty_values_1_code18, simple_type, returns_empty_values_1_expr7, type, range(returns_empty_values_1, 3422, 3, 89, 89)).
code(returns_empty_values_1_code19, simple_type, returns_empty_values_1_expr9, type, range(returns_empty_values_1, 3504, 7, 91, 91)).
code(returns_empty_values_1_code20, simple_type, returns_empty_values_1_expr11, type, range(returns_empty_values_1, 3590, 9, 93, 93)).
code(returns_empty_values_1_code21, simple_type, returns_empty_values_1_expr13, type, range(returns_empty_values_1, 3678, 7, 95, 95)).
code(returns_empty_values_1_code22, simple_type, returns_empty_values_1_expr15, type, range(returns_empty_values_1, 3764, 13, 97, 97)).
code(returns_empty_values_1_code23, simple_type, returns_empty_values_1_expr17, type, range(returns_empty_values_1, 3862, 4, 99, 99)).
code(returns_empty_values_1_code24, simple_type, returns_empty_values_1_expr19, type, range(returns_empty_values_1, 3948, 10, 101, 101)).
code(returns_empty_values_1_code25, simple_type, returns_empty_values_1_expr21, type, range(returns_empty_values_1, 4040, 9, 103, 103)).
code(returns_empty_values_1_code26, simple_type, returns_empty_values_1_expr23, type, range(returns_empty_values_1, 4130, 3, 105, 105)).
code(returns_empty_values_1_code27, simple_type, returns_empty_values_1_expr25, type, range(returns_empty_values_1, 4220, 7, 107, 107)).
code(returns_empty_values_1_code28, simple_type, returns_empty_values_1_expr27, type, range(returns_empty_values_1, 4314, 9, 109, 109)).
code(returns_empty_values_1_code29, simple_type, returns_empty_values_1_expr29, type, range(returns_empty_values_1, 4410, 7, 111, 111)).
code(returns_empty_values_1_code30, simple_type, returns_empty_values_1_expr31, type, range(returns_empty_values_1, 4504, 13, 113, 113)).
%reporter_1 - org.mockito.exceptions.Reporter
code(reporter_1_code1, compilation_unit, range(reporter_1, 0, 39869, 1, -1)).
code(reporter_1_code2, type_declaration, reporter_1_code1, (types, 0), range(reporter_1, 1793, 38075, 43, 831)).
code(reporter_1_code3, modifier, reporter_1_code2, (modifiers, 0), range(reporter_1, 2232, 6, 54, 54)).
%default_plugin_switch_1 - org.mockito.internal.configuration.plugins.DefaultPluginSwitch
code(default_plugin_switch_1_code1, compilation_unit, range(default_plugin_switch_1, 0, 231, 1, -1)).
code(default_plugin_switch_1_code2, type_declaration, default_plugin_switch_1_code1, (types, 0), range(default_plugin_switch_1, 95, 135, 5, 9)).
code(default_plugin_switch_1_code3, simple_type, default_plugin_switch_1_code2, (super_interface_types, 0), range(default_plugin_switch_1, 132, 12, 5, 5)).
%plugins_1 - org.mockito.internal.configuration.plugins.Plugins
code(plugins_1_code1, compilation_unit, range(plugins_1, 0, 873, 1, -1)).
code(plugins_1_code2, type_declaration, plugins_1_code1, (types, 0), range(plugins_1, 146, 726, 6, 29)).
code(plugins_1_code4, modifier, plugins_1_code3, (modifiers, 0), range(plugins_1, 248, 7, 11, 11)).
code(plugins_1_code3, field_declaration, plugins_1_code2, (body_declarations, 0), range(plugins_1, 248, 62, 11, 11)).
code(plugins_1_code5, modifier, plugins_1_code3, (modifiers, 1), range(plugins_1, 256, 6, 11, 11)).
code(plugins_1_code6, simple_type, plugins_1_code3, type, range(plugins_1, 263, 14, 11, 11)).
code(plugins_1_code7, variable_declaration_fragment, plugins_1_code3, (fragments, 0), range(plugins_1, 278, 31, 11, 11)).
code(plugins_1_code8, simple_type, plugins_1_expr1, type, range(plugins_1, 293, 14, 11, 11)).
code(plugins_1_code9, method_declaration, plugins_1_code2, (body_declarations, 2), range(plugins_1, 525, 345, 20, 28)).
%accessibility_changer_1 - org.mockito.internal.util.reflection.AccessibilityChanger
code(accessibility_changer_1_code1, compilation_unit, range(accessibility_changer_1, 0, 925, 1, -1)).
code(accessibility_changer_1_code2, type_declaration, accessibility_changer_1_code1, (types, 0), range(accessibility_changer_1, 211, 713, 9, 32)).
code(accessibility_changer_1_code3, modifier, accessibility_changer_1_code2, (modifiers, 0), range(accessibility_changer_1, 211, 6, 9, 9)).
code(accessibility_changer_1_code5, modifier, accessibility_changer_1_code4, (modifiers, 0), range(accessibility_changer_1, 256, 7, 11, 11)).
code(accessibility_changer_1_code4, field_declaration, accessibility_changer_1_code2, (body_declarations, 0), range(accessibility_changer_1, 256, 37, 11, 11)).
code(accessibility_changer_1_code6, simple_type, accessibility_changer_1_code4, type, range(accessibility_changer_1, 264, 7, 11, 11)).
code(accessibility_changer_1_code7, variable_declaration_fragment, accessibility_changer_1_code4, (fragments, 0), range(accessibility_changer_1, 272, 20, 11, 11)).
code(accessibility_changer_1_code8, method_declaration, accessibility_changer_1_code2, (body_declarations, 2), range(accessibility_changer_1, 640, 282, 25, 31)).
%mock_injection_strategy_1 - org.mockito.internal.configuration.injection.MockInjectionStrategy
code(mock_injection_strategy_1_code1, compilation_unit, range(mock_injection_strategy_1, 0, 2990, 1, -1)).
code(mock_injection_strategy_1_code2, type_declaration, mock_injection_strategy_1_code1, (types, 0), range(mock_injection_strategy_1, 231, 2758, 11, 91)).
code(mock_injection_strategy_1_code3, modifier, mock_injection_strategy_1_code2, (modifiers, 0), range(mock_injection_strategy_1, 269, 6, 14, 14)).
code(mock_injection_strategy_1_code4, modifier, mock_injection_strategy_1_code2, (modifiers, 1), range(mock_injection_strategy_1, 276, 8, 14, 14)).
code(mock_injection_strategy_1_code5, method_declaration, mock_injection_strategy_1_code2, (body_declarations, 0), range(mock_injection_strategy_1, 320, 340, 16, 25)).
code(mock_injection_strategy_1_code6, simple_type, mock_injection_strategy_1_expr1, type, range(mock_injection_strategy_1, 465, 21, 20, 20)).
code(mock_injection_strategy_1_code7, anonymous_class_declaration, mock_injection_strategy_1_expr1, anonymous_class_declaration, range(mock_injection_strategy_1, 489, 164, 20, 24)).
code(mock_injection_strategy_1_code8, method_declaration, mock_injection_strategy_1_code2, (body_declarations, 2), range(mock_injection_strategy_1, 716, 518, 30, 47)).
%global_configuration_1 - org.mockito.internal.configuration.GlobalConfiguration
code(global_configuration_1_code1, compilation_unit, range(global_configuration_1, 0, 2258, 1, -1)).
code(global_configuration_1_code2, type_declaration, global_configuration_1_code1, (types, 0), range(global_configuration_1, 434, 1824, 15, -1)).
code(global_configuration_1_code4, modifier, global_configuration_1_code3, (modifiers, 0), range(global_configuration_1, 782, 7, 22, 22)).
code(global_configuration_1_code3, field_declaration, global_configuration_1_code2, (body_declarations, 1), range(global_configuration_1, 782, 120, 22, 22)).
code(global_configuration_1_code5, modifier, global_configuration_1_code3, (modifiers, 1), range(global_configuration_1, 790, 6, 22, 22)).
code(global_configuration_1_code6, modifier, global_configuration_1_code3, (modifiers, 2), range(global_configuration_1, 797, 5, 22, 22)).
code(global_configuration_1_code8, simple_type, global_configuration_1_code7, type, range(global_configuration_1, 803, 11, 22, 22)).
code(global_configuration_1_code7, parameterized_type, global_configuration_1_code3, type, range(global_configuration_1, 803, 34, 22, 22)).
code(global_configuration_1_code9, simple_type, global_configuration_1_code7, (type_arguments, 0), range(global_configuration_1, 815, 21, 22, 22)).
code(global_configuration_1_code10, variable_declaration_fragment, global_configuration_1_code3, (fragments, 0), range(global_configuration_1, 838, 63, 22, 22)).
code(global_configuration_1_code11, parameterized_type, global_configuration_1_expr1, type, range(global_configuration_1, 865, 34, 22, 22)).
code(global_configuration_1_code12, simple_type, global_configuration_1_code11, type, range(global_configuration_1, 865, 11, 22, 22)).
code(global_configuration_1_code13, simple_type, global_configuration_1_code11, (type_arguments, 0), range(global_configuration_1, 877, 21, 22, 22)).
code(global_configuration_1_code14, method_declaration, global_configuration_1_code2, (body_declarations, 2), range(global_configuration_1, 936, 80, 25, 27)).
code(global_configuration_1_code16, modifier, global_configuration_1_code15, (modifiers, 0), range(global_configuration_1, 1022, 6, 29, 29)).
code(global_configuration_1_code15, method_declaration, global_configuration_1_code2, (body_declarations, 3), range(global_configuration_1, 1022, 229, 29, 34)).
code(global_configuration_1_code17, method_declaration, global_configuration_1_code2, (body_declarations, 4), range(global_configuration_1, 1257, 347, 36, 44)).
code(global_configuration_1_code18, simple_type, global_configuration_1_stmt4, type, range(global_configuration_1, 1312, 21, 37, 37)).
code(global_configuration_1_code19, variable_declaration_fragment, global_configuration_1_stmt4, (fragments, 0), range(global_configuration_1, 1334, 56, 37, 37)).
code(global_configuration_1_code20, simple_type, global_configuration_1_expr7, type, range(global_configuration_1, 1361, 27, 37, 37)).
code(global_configuration_1_code21, simple_type, global_configuration_1_stmt5, type, range(global_configuration_1, 1400, 21, 38, 38)).
code(global_configuration_1_code22, variable_declaration_fragment, global_configuration_1_stmt5, (fragments, 0), range(global_configuration_1, 1422, 50, 38, 38)).
code(global_configuration_1_code23, simple_type, global_configuration_1_expr9, type, range(global_configuration_1, 1435, 15, 38, 38)).
code(global_configuration_1_code24, method_declaration, global_configuration_1_code2, (body_declarations, 5), range(global_configuration_1, 1610, 72, 46, 48)).
code(global_configuration_1_code25, simple_type, global_configuration_1_expr11, type, range(global_configuration_1, 1654, 19, 47, 47)).
code(global_configuration_1_code26, method_declaration, global_configuration_1_code2, (body_declarations, 7), range(global_configuration_1, 1800, 118, 54, 56)).
%default_annotation_engine_1 - org.mockito.internal.configuration.DefaultAnnotationEngine
code(default_annotation_engine_1_code1, compilation_unit, range(default_annotation_engine_1, 0, 3581, 1, -1)).
code(default_annotation_engine_1_code2, type_declaration, default_annotation_engine_1_code1, (types, 0), range(default_annotation_engine_1, 579, 3002, 20, -1)).
code(default_annotation_engine_1_code3, field_declaration, default_annotation_engine_1_code2, (body_declarations, 0), range(default_annotation_engine_1, 942, 173, 30, 30)).
code(default_annotation_engine_1_code4, modifier, default_annotation_engine_1_code3, (modifiers, 0), range(default_annotation_engine_1, 942, 7, 30, 30)).
code(default_annotation_engine_1_code5, modifier, default_annotation_engine_1_code3, (modifiers, 1), range(default_annotation_engine_1, 950, 5, 30, 30)).
code(default_annotation_engine_1_code6, parameterized_type, default_annotation_engine_1_code3, type, range(default_annotation_engine_1, 956, 61, 30, 30)).
code(default_annotation_engine_1_code7, simple_type, default_annotation_engine_1_code6, type, range(default_annotation_engine_1, 956, 3, 30, 30)).
code(default_annotation_engine_1_code9, simple_type, default_annotation_engine_1_code8, type, range(default_annotation_engine_1, 960, 5, 30, 30)).
code(default_annotation_engine_1_code8, parameterized_type, default_annotation_engine_1_code6, (type_arguments, 0), range(default_annotation_engine_1, 960, 27, 30, 30)).
code(default_annotation_engine_1_code10, wildcard_type, default_annotation_engine_1_code8, (type_arguments, 0), range(default_annotation_engine_1, 966, 20, 30, 30)).
code(default_annotation_engine_1_code11, simple_type, default_annotation_engine_1_code10, bound, range(default_annotation_engine_1, 976, 10, 30, 30)).
code(default_annotation_engine_1_code13, simple_type, default_annotation_engine_1_code12, type, range(default_annotation_engine_1, 989, 24, 30, 30)).
code(default_annotation_engine_1_code12, parameterized_type, default_annotation_engine_1_code6, (type_arguments, 1), range(default_annotation_engine_1, 989, 27, 30, 30)).
code(default_annotation_engine_1_code14, wildcard_type, default_annotation_engine_1_code12, (type_arguments, 0), range(default_annotation_engine_1, 1014, 1, 30, 30)).
code(default_annotation_engine_1_code15, variable_declaration_fragment, default_annotation_engine_1_code3, (fragments, 0), range(default_annotation_engine_1, 1018, 96, 30, 30)).
code(default_annotation_engine_1_code17, simple_type, default_annotation_engine_1_code16, type, range(default_annotation_engine_1, 1047, 7, 30, 30)).
code(default_annotation_engine_1_code16, parameterized_type, default_annotation_engine_1_expr1, type, range(default_annotation_engine_1, 1047, 65, 30, 30)).
code(default_annotation_engine_1_code18, parameterized_type, default_annotation_engine_1_code16, (type_arguments, 0), range(default_annotation_engine_1, 1055, 27, 30, 30)).
code(default_annotation_engine_1_code19, simple_type, default_annotation_engine_1_code18, type, range(default_annotation_engine_1, 1055, 5, 30, 30)).
code(default_annotation_engine_1_code20, wildcard_type, default_annotation_engine_1_code18, (type_arguments, 0), range(default_annotation_engine_1, 1061, 20, 30, 30)).
code(default_annotation_engine_1_code21, simple_type, default_annotation_engine_1_code20, bound, range(default_annotation_engine_1, 1071, 10, 30, 30)).
code(default_annotation_engine_1_code22, parameterized_type, default_annotation_engine_1_code16, (type_arguments, 1), range(default_annotation_engine_1, 1084, 27, 30, 30)).
code(default_annotation_engine_1_code23, simple_type, default_annotation_engine_1_code22, type, range(default_annotation_engine_1, 1084, 24, 30, 30)).
code(default_annotation_engine_1_code24, wildcard_type, default_annotation_engine_1_code22, (type_arguments, 0), range(default_annotation_engine_1, 1109, 1, 30, 30)).
code(default_annotation_engine_1_code26, modifier, default_annotation_engine_1_code25, (modifiers, 0), range(default_annotation_engine_1, 1121, 6, 32, 32)).
code(default_annotation_engine_1_code25, method_declaration, default_annotation_engine_1_code2, (body_declarations, 1), range(default_annotation_engine_1, 1121, 321, 32, 36)).
code(default_annotation_engine_1_code27, simple_type, default_annotation_engine_1_expr3, type, range(default_annotation_engine_1, 1192, 4, 33, 33)).
code(default_annotation_engine_1_code28, simple_type, default_annotation_engine_1_expr4, type, range(default_annotation_engine_1, 1208, 23, 33, 33)).
code(default_annotation_engine_1_code29, simple_type, default_annotation_engine_1_expr6, type, range(default_annotation_engine_1, 1272, 23, 34, 34)).
code(default_annotation_engine_1_code30, simple_type, default_annotation_engine_1_expr7, type, range(default_annotation_engine_1, 1307, 41, 34, 34)).
code(default_annotation_engine_1_code31, simple_type, default_annotation_engine_1_expr9, type, range(default_annotation_engine_1, 1389, 6, 35, 35)).
code(default_annotation_engine_1_code32, simple_type, default_annotation_engine_1_expr10, type, range(default_annotation_engine_1, 1407, 25, 35, 35)).
code(default_annotation_engine_1_code33, method_declaration, default_annotation_engine_1_code2, (body_declarations, 4), range(default_annotation_engine_1, 2234, 230, 57, 59)).
code(default_annotation_engine_1_code34, method_declaration, default_annotation_engine_1_code2, (body_declarations, 5), range(default_annotation_engine_1, 2470, 907, 61, 79)).
code(default_annotation_engine_1_code36, simple_type, default_annotation_engine_1_code35, element_type, range(default_annotation_engine_1, 2537, 5, 62, 62)).
code(default_annotation_engine_1_code35, array_type, default_annotation_engine_1_stmt5, type, range(default_annotation_engine_1, 2537, 7, 62, 62)).
code(default_annotation_engine_1_code37, dimension, default_annotation_engine_1_code35, (dimensions, 0), range(default_annotation_engine_1, 2542, 2, 62, 62)).
code(default_annotation_engine_1_code38, variable_declaration_fragment, default_annotation_engine_1_stmt5, (fragments, 0), range(default_annotation_engine_1, 2545, 34, 62, 62)).
code(default_annotation_engine_1_code40, simple_type, default_annotation_engine_1_code39, type, range(default_annotation_engine_1, 2594, 5, 63, 63)).
code(default_annotation_engine_1_code39, single_variable_declaration, default_annotation_engine_1_stmt6, parameter, range(default_annotation_engine_1, 2594, 11, 63, 63)).
code(default_annotation_engine_1_code41, primitive_type, default_annotation_engine_1_stmt7, type, range(default_annotation_engine_1, 2630, 7, 64, 64)).
code(default_annotation_engine_1_code42, variable_declaration_fragment, default_annotation_engine_1_stmt7, (fragments, 0), range(default_annotation_engine_1, 2638, 23, 64, 64)).
code(default_annotation_engine_1_code43, single_variable_declaration, default_annotation_engine_1_stmt8, parameter, range(default_annotation_engine_1, 2679, 21, 65, 65)).
code(default_annotation_engine_1_code44, simple_type, default_annotation_engine_1_code43, type, range(default_annotation_engine_1, 2679, 10, 65, 65)).
%name_based_candidate_filter_1 - org.mockito.internal.configuration.injection.filter.NameBasedCandidateFilter
code(name_based_candidate_filter_1_code1, compilation_unit, range(name_based_candidate_filter_1, 0, 1175, 1, -1)).
code(name_based_candidate_filter_1_code2, type_declaration, name_based_candidate_filter_1_code1, (types, 0), range(name_based_candidate_filter_1, 339, 835, 14, 34)).
code(name_based_candidate_filter_1_code4, modifier, name_based_candidate_filter_1_code3, (modifiers, 0), range(name_based_candidate_filter_1, 458, 7, 16, 16)).
code(name_based_candidate_filter_1_code3, field_declaration, name_based_candidate_filter_1_code2, (body_declarations, 1), range(name_based_candidate_filter_1, 458, 49, 16, 16)).
code(name_based_candidate_filter_1_code5, modifier, name_based_candidate_filter_1_code3, (modifiers, 1), range(name_based_candidate_filter_1, 466, 5, 16, 16)).
code(name_based_candidate_filter_1_code6, simple_type, name_based_candidate_filter_1_code3, type, range(name_based_candidate_filter_1, 472, 8, 16, 16)).
code(name_based_candidate_filter_1_code7, variable_declaration_fragment, name_based_candidate_filter_1_code3, (fragments, 0), range(name_based_candidate_filter_1, 481, 25, 16, 16)).
code(name_based_candidate_filter_1_code8, simple_type, name_based_candidate_filter_1_expr1, type, range(name_based_candidate_filter_1, 496, 8, 16, 16)).
code(name_based_candidate_filter_1_code10, modifier, name_based_candidate_filter_1_code9, (modifiers, 0), range(name_based_candidate_filter_1, 513, 6, 18, 18)).
code(name_based_candidate_filter_1_code9, method_declaration, name_based_candidate_filter_1_code2, (body_declarations, 2), range(name_based_candidate_filter_1, 513, 91, 18, 20)).
code(name_based_candidate_filter_1_code12, simple_type, name_based_candidate_filter_1_code11, type, range(name_based_candidate_filter_1, 545, 19, 18, 18)).
code(name_based_candidate_filter_1_code11, single_variable_declaration, name_based_candidate_filter_1_code9, (parameters, 0), range(name_based_candidate_filter_1, 545, 24, 18, 18)).
%state_master_1 - org.mockito.StateMaster
code(state_master_1_code1, compilation_unit, range(state_master_1, 0, 531, 1, -1)).
code(state_master_1_code2, type_declaration, state_master_1_code1, (types, 0), range(state_master_1, 208, 323, 10, -1)).
code(state_master_1_code3, modifier, state_master_1_code2, (modifiers, 0), range(state_master_1, 208, 6, 10, 10)).
code(state_master_1_code4, field_declaration, state_master_1_code2, (body_declarations, 0), range(state_master_1, 244, 90, 12, 12)).
code(state_master_1_code5, modifier, state_master_1_code4, (modifiers, 0), range(state_master_1, 244, 7, 12, 12)).
code(state_master_1_code6, modifier, state_master_1_code4, (modifiers, 1), range(state_master_1, 252, 5, 12, 12)).
code(state_master_1_code7, simple_type, state_master_1_code4, type, range(state_master_1, 258, 25, 12, 12)).
code(state_master_1_code8, variable_declaration_fragment, state_master_1_code4, (fragments, 0), range(state_master_1, 284, 49, 12, 12)).
code(state_master_1_code9, simple_type, state_master_1_expr1, type, range(state_master_1, 306, 25, 12, 12)).
code(state_master_1_code10, method_declaration, state_master_1_code2, (body_declarations, 1), range(state_master_1, 340, 108, 14, 17)).
code(state_master_1_code11, method_declaration, state_master_1_code2, (body_declarations, 2), range(state_master_1, 458, 71, 19, 21)).
%mocking_progress_impl_1 - org.mockito.internal.progress.MockingProgressImpl
code(mocking_progress_impl_1_code1, compilation_unit, range(mocking_progress_impl_1, 0, 3897, 1, -1)).
code(mocking_progress_impl_1_code2, type_declaration, mocking_progress_impl_1_code1, (types, 0), range(mocking_progress_impl_1, 623, 3274, 18, -1)).
code(mocking_progress_impl_1_code3, modifier, mocking_progress_impl_1_code2, (modifiers, 1), range(mocking_progress_impl_1, 654, 6, 19, 19)).
code(mocking_progress_impl_1_code4, simple_type, mocking_progress_impl_1_code2, (super_interface_types, 0), range(mocking_progress_impl_1, 698, 15, 19, 19)).
code(mocking_progress_impl_1_code6, modifier, mocking_progress_impl_1_code5, (modifiers, 0), range(mocking_progress_impl_1, 725, 7, 21, 21)).
code(mocking_progress_impl_1_code5, field_declaration, mocking_progress_impl_1_code2, (body_declarations, 0), range(mocking_progress_impl_1, 725, 49, 21, 21)).
code(mocking_progress_impl_1_code7, modifier, mocking_progress_impl_1_code5, (modifiers, 1), range(mocking_progress_impl_1, 733, 5, 21, 21)).
code(mocking_progress_impl_1_code8, simple_type, mocking_progress_impl_1_code5, type, range(mocking_progress_impl_1, 739, 8, 21, 21)).
code(mocking_progress_impl_1_code9, variable_declaration_fragment, mocking_progress_impl_1_code5, (fragments, 0), range(mocking_progress_impl_1, 748, 25, 21, 21)).
code(mocking_progress_impl_1_code10, simple_type, mocking_progress_impl_1_expr1, type, range(mocking_progress_impl_1, 763, 8, 21, 21)).
code(mocking_progress_impl_1_code11, field_declaration, mocking_progress_impl_1_code2, (body_declarations, 1), range(mocking_progress_impl_1, 779, 95, 22, 22)).
code(mocking_progress_impl_1_code12, modifier, mocking_progress_impl_1_code11, (modifiers, 0), range(mocking_progress_impl_1, 779, 7, 22, 22)).
code(mocking_progress_impl_1_code13, modifier, mocking_progress_impl_1_code11, (modifiers, 1), range(mocking_progress_impl_1, 787, 5, 22, 22)).
code(mocking_progress_impl_1_code14, simple_type, mocking_progress_impl_1_code11, type, range(mocking_progress_impl_1, 793, 22, 22, 22)).
code(mocking_progress_impl_1_code15, variable_declaration_fragment, mocking_progress_impl_1_code11, (fragments, 0), range(mocking_progress_impl_1, 816, 57, 22, 22)).
code(mocking_progress_impl_1_code16, simple_type, mocking_progress_impl_1_expr2, type, range(mocking_progress_impl_1, 845, 26, 22, 22)).
code(mocking_progress_impl_1_code18, modifier, mocking_progress_impl_1_code17, (modifiers, 0), range(mocking_progress_impl_1, 981, 7, 26, 26)).
code(mocking_progress_impl_1_code17, field_declaration, mocking_progress_impl_1_code2, (body_declarations, 4), range(mocking_progress_impl_1, 981, 43, 26, 26)).
code(mocking_progress_impl_1_code19, simple_type, mocking_progress_impl_1_code17, type, range(mocking_progress_impl_1, 989, 8, 26, 26)).
code(mocking_progress_impl_1_code20, variable_declaration_fragment, mocking_progress_impl_1_code17, (fragments, 0), range(mocking_progress_impl_1, 998, 25, 26, 26)).
code(mocking_progress_impl_1_code21, method_declaration, mocking_progress_impl_1_code2, (body_declarations, 9), range(mocking_progress_impl_1, 1662, 75, 48, 50)).
code(mocking_progress_impl_1_code22, method_declaration, mocking_progress_impl_1_code2, (body_declarations, 12), range(mocking_progress_impl_1, 2120, 288, 67, 76)).
code(mocking_progress_impl_1_code23, method_declaration, mocking_progress_impl_1_code2, (body_declarations, 13), range(mocking_progress_impl_1, 2414, 559, 78, 90)).
code(mocking_progress_impl_1_code24, method_declaration, mocking_progress_impl_1_code2, (body_declarations, 16), range(mocking_progress_impl_1, 3288, 140, 102, 106)).
code(mocking_progress_impl_1_code25, method_declaration, mocking_progress_impl_1_code2, (body_declarations, 17), range(mocking_progress_impl_1, 3434, 104, 108, 110)).
%mock_util_1 - org.mockito.internal.util.MockUtil
code(mock_util_1_code1, compilation_unit, range(mock_util_1, 0, 3343, 1, -1)).
code(mock_util_1_code2, type_declaration, mock_util_1_code1, (types, 0), range(mock_util_1, 729, 2613, 21, 92)).
code(mock_util_1_code3, modifier, mock_util_1_code2, (modifiers, 1), range(mock_util_1, 760, 6, 22, 22)).
code(mock_util_1_code5, modifier, mock_util_1_code4, (modifiers, 0), range(mock_util_1, 789, 7, 24, 24)).
code(mock_util_1_code4, field_declaration, mock_util_1_code2, (body_declarations, 0), range(mock_util_1, 789, 66, 24, 24)).
code(mock_util_1_code6, modifier, mock_util_1_code4, (modifiers, 1), range(mock_util_1, 797, 6, 24, 24)).
code(mock_util_1_code7, modifier, mock_util_1_code4, (modifiers, 2), range(mock_util_1, 804, 5, 24, 24)).
code(mock_util_1_code8, simple_type, mock_util_1_code4, type, range(mock_util_1, 810, 9, 24, 24)).
code(mock_util_1_code9, variable_declaration_fragment, mock_util_1_code4, (fragments, 0), range(mock_util_1, 820, 34, 24, 24)).
code(mock_util_1_code10, method_declaration, mock_util_1_code2, (body_declarations, 5), range(mock_util_1, 2204, 247, 64, 67)).
code(mock_util_1_code11, method_declaration, mock_util_1_code2, (body_declarations, 6), range(mock_util_1, 2457, 151, 69, 71)).
code(mock_util_1_code12, method_declaration, mock_util_1_code2, (body_declarations, 7), range(mock_util_1, 2614, 100, 73, 75)).
%mockito_annotations_mock_annotation_processor_1 - org.mockito.internal.configuration.MockitoAnnotationsMockAnnotationProcessor
code(mockito_annotations_mock_annotation_processor_1_code1, compilation_unit, range(mockito_annotations_mock_annotation_processor_1, 0, 601, 1, -1)).
code(mockito_annotations_mock_annotation_processor_1_code2, type_declaration, mockito_annotations_mock_annotation_processor_1_code1, (types, 0), range(mockito_annotations_mock_annotation_processor_1, 271, 329, 12, 21)).
code(mockito_annotations_mock_annotation_processor_1_code3, modifier, mockito_annotations_mock_annotation_processor_1_code2, (modifiers, 1), range(mockito_annotations_mock_annotation_processor_1, 372, 6, 16, 16)).
code(mockito_annotations_mock_annotation_processor_1_code4, parameterized_type, mockito_annotations_mock_annotation_processor_1_code2, (super_interface_types, 0), range(mockito_annotations_mock_annotation_processor_1, 438, 30, 16, 16)).
code(mockito_annotations_mock_annotation_processor_1_code5, simple_type, mockito_annotations_mock_annotation_processor_1_code4, type, range(mockito_annotations_mock_annotation_processor_1, 438, 24, 16, 16)).
code(mockito_annotations_mock_annotation_processor_1_code6, simple_type, mockito_annotations_mock_annotation_processor_1_code4, (type_arguments, 0), range(mockito_annotations_mock_annotation_processor_1, 463, 4, 16, 16)).
%inject_mocks_scanner_1 - org.mockito.internal.configuration.injection.scanner.InjectMocksScanner
code(inject_mocks_scanner_1_code1, compilation_unit, range(inject_mocks_scanner_1, 0, 2018, 1, -1)).
code(inject_mocks_scanner_1_code2, type_declaration, inject_mocks_scanner_1_code1, (types, 0), range(inject_mocks_scanner_1, 428, 1589, 17, 68)).
code(inject_mocks_scanner_1_code3, method_declaration, inject_mocks_scanner_1_code2, (body_declarations, 1), range(inject_mocks_scanner_1, 571, 247, 24, 31)).
code(inject_mocks_scanner_1_code4, modifier, inject_mocks_scanner_1_code3, (modifiers, 0), range(inject_mocks_scanner_1, 741, 6, 29, 29)).
code(inject_mocks_scanner_1_code6, parameterized_type, inject_mocks_scanner_1_code5, type, range(inject_mocks_scanner_1, 767, 8, 29, 29)).
code(inject_mocks_scanner_1_code7, simple_type, inject_mocks_scanner_1_code6, type, range(inject_mocks_scanner_1, 767, 5, 29, 29)).
code(inject_mocks_scanner_1_code5, single_variable_declaration, inject_mocks_scanner_1_code3, (parameters, 0), range(inject_mocks_scanner_1, 767, 14, 29, 29)).
code(inject_mocks_scanner_1_code8, wildcard_type, inject_mocks_scanner_1_code6, (type_arguments, 0), range(inject_mocks_scanner_1, 773, 1, 29, 29)).
code(inject_mocks_scanner_1_code9, method_declaration, inject_mocks_scanner_1_code2, (body_declarations, 2), range(inject_mocks_scanner_1, 825, 263, 34, 41)).
code(inject_mocks_scanner_1_code10, method_declaration, inject_mocks_scanner_1_code2, (body_declarations, 3), range(inject_mocks_scanner_1, 1094, 577, 43, 59)).
code(inject_mocks_scanner_1_code12, simple_type, inject_mocks_scanner_1_code11, type, range(inject_mocks_scanner_1, 1246, 3, 49, 49)).
code(inject_mocks_scanner_1_code11, parameterized_type, inject_mocks_scanner_1_stmt3, type, range(inject_mocks_scanner_1, 1246, 10, 49, 49)).
code(inject_mocks_scanner_1_code13, simple_type, inject_mocks_scanner_1_code11, (type_arguments, 0), range(inject_mocks_scanner_1, 1250, 5, 49, 49)).
code(inject_mocks_scanner_1_code14, variable_declaration_fragment, inject_mocks_scanner_1_stmt3, (fragments, 0), range(inject_mocks_scanner_1, 1257, 42, 49, 49)).
code(inject_mocks_scanner_1_code16, simple_type, inject_mocks_scanner_1_code15, type, range(inject_mocks_scanner_1, 1283, 7, 49, 49)).
code(inject_mocks_scanner_1_code15, parameterized_type, inject_mocks_scanner_1_expr6, type, range(inject_mocks_scanner_1, 1283, 14, 49, 49)).
code(inject_mocks_scanner_1_code17, simple_type, inject_mocks_scanner_1_code15, (type_arguments, 0), range(inject_mocks_scanner_1, 1291, 5, 49, 49)).
code(inject_mocks_scanner_1_code19, simple_type, inject_mocks_scanner_1_code18, element_type, range(inject_mocks_scanner_1, 1309, 5, 50, 50)).
code(inject_mocks_scanner_1_code18, array_type, inject_mocks_scanner_1_stmt4, type, range(inject_mocks_scanner_1, 1309, 7, 50, 50)).
code(inject_mocks_scanner_1_code20, dimension, inject_mocks_scanner_1_code18, (dimensions, 0), range(inject_mocks_scanner_1, 1314, 2, 50, 50)).
code(inject_mocks_scanner_1_code21, variable_declaration_fragment, inject_mocks_scanner_1_stmt4, (fragments, 0), range(inject_mocks_scanner_1, 1317, 34, 50, 50)).
code(inject_mocks_scanner_1_code22, single_variable_declaration, inject_mocks_scanner_1_stmt5, parameter, range(inject_mocks_scanner_1, 1366, 11, 51, 51)).
code(inject_mocks_scanner_1_code23, simple_type, inject_mocks_scanner_1_code22, type, range(inject_mocks_scanner_1, 1366, 5, 51, 51)).
code(inject_mocks_scanner_1_code24, simple_type, inject_mocks_scanner_1_expr10, type, range(inject_mocks_scanner_1, 1434, 11, 52, 52)).

%%% Name References

name_ref(t_accessibility_changer_45, type, 'AccessibilityChanger', 'Lorg/mockito/internal/util/reflection/AccessibilityChanger;').
name_ref(t_argument_matcher_storage_impl_23, type, 'ArgumentMatcherStorageImpl', 'Lorg/mockito/internal/progress/ArgumentMatcherStorageImpl;').
name_ref(t_arrays_44, type, 'Arrays', 'Ljava/util/Arrays;').
name_ref(t_boolean_34, type, 'Boolean', 'Ljava/lang/Boolean;').
name_ref(t_byte_36, type, 'Byte', 'Ljava/lang/Byte;').
name_ref(t_captor_annotation_processor_5, type, 'CaptorAnnotationProcessor', 'Lorg/mockito/internal/configuration/CaptorAnnotationProcessor;').
name_ref(t_character_35, type, 'Character', 'Ljava/lang/Character;').
name_ref(t_checks_43, type, 'Checks', 'Lorg/mockito/internal/util/Checks;').
name_ref(t_class_7, type, 'Class', 'Ljava/lang/Class<>;').
name_ref(t_class_path_loader_6, type, 'ClassPathLoader', 'Lorg/mockito/internal/configuration/ClassPathLoader;').
name_ref(t_configuration_access_47, type, 'ConfigurationAccess', 'Lorg/mockito/internal/configuration/ConfigurationAccess;').
name_ref(t_default_injection_engine_8, type, 'DefaultInjectionEngine', 'Lorg/mockito/internal/configuration/DefaultInjectionEngine;').
name_ref(t_default_mockito_configuration_2, type, 'DefaultMockitoConfiguration', 'Lorg/mockito/configuration/DefaultMockitoConfiguration;').
name_ref(t_default_plugin_switch_18, type, 'DefaultPluginSwitch', 'Lorg/mockito/internal/configuration/plugins/DefaultPluginSwitch;').
name_ref(t_default_stack_trace_cleaner_provider_22, type, 'DefaultStackTraceCleanerProvider', 'Lorg/mockito/internal/exceptions/stacktrace/DefaultStackTraceCleanerProvider;').
name_ref(t_double_41, type, 'Double', 'Ljava/lang/Double;').
name_ref(t_final_mock_candidate_filter_17, type, 'FinalMockCandidateFilter', 'Lorg/mockito/internal/configuration/injection/filter/FinalMockCandidateFilter;').
name_ref(t_float_40, type, 'Float', 'Ljava/lang/Float;').
name_ref(t_global_configuration_25, type, 'GlobalConfiguration', 'Lorg/mockito/internal/configuration/GlobalConfiguration;').
name_ref(t_hash_code_and_equals_safe_set_42, type, 'HashCodeAndEqualsSafeSet', 'Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;').
name_ref(t_injecting_annotation_engine_10, type, 'InjectingAnnotationEngine', 'Lorg/mockito/internal/configuration/InjectingAnnotationEngine;').
name_ref(t_integer_38, type, 'Integer', 'Ljava/lang/Integer;').
name_ref(t_iterables_20, type, 'Iterables', 'Lorg/mockito/internal/util/collections/Iterables;').
name_ref(t_long_39, type, 'Long', 'Ljava/lang/Long;').
name_ref(t_mock_annotation_processor_11, type, 'MockAnnotationProcessor', 'Lorg/mockito/internal/configuration/MockAnnotationProcessor;').
name_ref(t_mock_injection_9, type, 'MockInjection', 'Lorg/mockito/internal/configuration/injection/MockInjection;').
name_ref(t_mock_injection_strategy_14, type, 'MockInjectionStrategy', 'Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;').
name_ref(t_mock_util_30, type, 'MockUtil', 'Lorg/mockito/internal/util/MockUtil;').
name_ref(t_mocking_progress_impl_24, type, 'MockingProgressImpl', 'Lorg/mockito/internal/progress/MockingProgressImpl;').
name_ref(t_mockito_32, type, 'Mockito', 'Lorg/mockito/Mockito;').
name_ref(t_mockito_annotations_48, type, 'MockitoAnnotations', 'Lorg/mockito/MockitoAnnotations;').
name_ref(t_mockito_annotations_mock_annotation_processor_12, type, 'MockitoAnnotationsMockAnnotationProcessor', 'Lorg/mockito/internal/configuration/MockitoAnnotationsMockAnnotationProcessor;').
name_ref(t_mockito_configuration_3, type, 'MockitoConfiguration', 'Lorg/mockito/configuration/MockitoConfiguration;').
name_ref(t_object_methods_guru_33, type, 'ObjectMethodsGuru', 'Lorg/mockito/internal/util/ObjectMethodsGuru;').
name_ref(t_plugin_registry_21, type, 'PluginRegistry', 'Lorg/mockito/internal/configuration/plugins/PluginRegistry;').
name_ref(t_plugins_31, type, 'Plugins', 'Lorg/mockito/internal/configuration/plugins/Plugins;').
name_ref(t_primitives_28, type, 'Primitives', 'Lorg/mockito/internal/util/Primitives;').
name_ref(t_property_and_setter_injection_15, type, 'PropertyAndSetterInjection', 'Lorg/mockito/internal/configuration/injection/PropertyAndSetterInjection;').
name_ref(t_reporter_4, type, 'Reporter', 'Lorg/mockito/exceptions/Reporter;').
name_ref(t_returns_empty_values_27, type, 'ReturnsEmptyValues', 'Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValues;').
name_ref(t_returns_empty_values_test_29, type, 'ReturnsEmptyValuesTest', 'Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValuesTest;').
name_ref(t_short_37, type, 'Short', 'Ljava/lang/Short;').
name_ref(t_spy_annotation_engine_13, type, 'SpyAnnotationEngine', 'Lorg/mockito/internal/configuration/SpyAnnotationEngine;').
name_ref(t_spy_on_injected_fields_handler_16, type, 'SpyOnInjectedFieldsHandler', 'Lorg/mockito/internal/configuration/injection/SpyOnInjectedFieldsHandler;').
name_ref(t_state_master_1, type, 'StateMaster', 'Lorg/mockito/StateMaster;').
name_ref(t_test_base_46, type, 'TestBase', 'Lorg/mockitoutil/TestBase;').
name_ref(t_thread_19, type, 'Thread', 'Ljava/lang/Thread;').
name_ref(t_thread_safe_mocking_progress_26, type, 'ThreadSafeMockingProgress', 'Lorg/mockito/internal/progress/ThreadSafeMockingProgress;').
name_ref(v_already_assigned_12, var, 'alreadyAssigned', 'Lorg/mockito/MockitoAnnotations;.processAnnotationDeprecatedWay(Lorg/mockito/configuration/AnnotationEngine;Ljava/lang/Object;Ljava/lang/reflect/Field;)V#alreadyAssigned').
name_ref(v_already_assigned_143, var, 'alreadyAssigned', 'Lorg/mockito/internal/configuration/DefaultAnnotationEngine;.process(Ljava/lang/Class<*>;Ljava/lang/Object;)V#0#0#alreadyAssigned').
name_ref(v_annotation_13, var, 'annotation', 'Lorg/mockito/MockitoAnnotations;.processAnnotationDeprecatedWay(Lorg/mockito/configuration/AnnotationEngine;Ljava/lang/Object;Ljava/lang/reflect/Field;)V#0#annotation').
name_ref(v_annotation_144, var, 'annotation', 'Lorg/mockito/internal/configuration/DefaultAnnotationEngine;.process(Ljava/lang/Class<*>;Ljava/lang/Object;)V#0#0#0#annotation').
name_ref(v_annotation_engine_2, var, 'annotationEngine', 'Lorg/mockito/MockitoAnnotations;.initMocks(Ljava/lang/Object;)V#annotationEngine').
name_ref(v_class_context_161, var, 'classContext', 'Lorg/mockito/internal/configuration/InjectingAnnotationEngine;.processInjectMocks(Ljava/lang/Class<*>;Ljava/lang/Object;)V#classContext').
name_ref(v_class_context_164, var, 'classContext', 'Lorg/mockito/internal/configuration/InjectingAnnotationEngine;.processIndependentAnnotations(Ljava/lang/Class<*>;Ljava/lang/Object;)V#classContext').
name_ref(v_clazz_166, var, 'clazz', 'Lorg/mockito/internal/configuration/InjectingAnnotationEngine;.injectMocks(Ljava/lang/Object;)V#clazz').
name_ref(v_clazz_3, var, 'clazz', 'Lorg/mockito/MockitoAnnotations;.initMocks(Ljava/lang/Object;)V#clazz').
name_ref(v_config_152, var, 'config', 'Lorg/mockito/internal/configuration/GlobalConfiguration;.createConfig()Lorg/mockito/configuration/IMockitoConfiguration;#config').
name_ref(v_config_class_129, var, 'configClass', 'Lorg/mockito/internal/configuration/ClassPathLoader;.loadConfiguration()Lorg/mockito/configuration/IMockitoConfiguration;#configClass').
name_ref(v_default_configuration_151, var, 'defaultConfiguration', 'Lorg/mockito/internal/configuration/GlobalConfiguration;.createConfig()Lorg/mockito/configuration/IMockitoConfiguration;#defaultConfiguration').
name_ref(v_field_142, var, 'field', 'Lorg/mockito/internal/configuration/DefaultAnnotationEngine;.process(Ljava/lang/Class<*>;Ljava/lang/Object;)V#0#field').
name_ref(v_field_178, var, 'field', 'Lorg/mockito/internal/configuration/SpyAnnotationEngine;.process(Ljava/lang/Class<*>;Ljava/lang/Object;)V#0#field').
name_ref(v_field_207, var, 'field', 'Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;.apply()V#0#field').
name_ref(v_field_260, var, 'field', 'Lorg/mockito/internal/configuration/injection/scanner/InjectMocksScanner;.scan()Ljava/util/Set<Ljava/lang/reflect/Field;>;#0#field').
name_ref(v_field_270, var, 'field', 'Lorg/mockito/internal/configuration/injection/scanner/MockScanner;.scan()Ljava/util/Set<Ljava/lang/Object;>;#0#field').
name_ref(v_field_8, var, 'field', 'Lorg/mockito/MockitoAnnotations;.scanDeprecatedWay(Lorg/mockito/configuration/AnnotationEngine;Ljava/lang/Object;Ljava/lang/Class<*>;)V#0#field').
name_ref(v_field_reader_271, var, 'fieldReader', 'Lorg/mockito/internal/configuration/injection/scanner/MockScanner;.scan()Ljava/util/Set<Ljava/lang/Object;>;#0#0#fieldReader').
name_ref(v_fields_141, var, 'fields', 'Lorg/mockito/internal/configuration/DefaultAnnotationEngine;.process(Ljava/lang/Class<*>;Ljava/lang/Object;)V#fields').
name_ref(v_fields_177, var, 'fields', 'Lorg/mockito/internal/configuration/SpyAnnotationEngine;.process(Ljava/lang/Class<*>;Ljava/lang/Object;)V#fields').
name_ref(v_fields_259, var, 'fields', 'Lorg/mockito/internal/configuration/injection/scanner/InjectMocksScanner;.scan()Ljava/util/Set<Ljava/lang/reflect/Field;>;#fields').
name_ref(v_fields_7, var, 'fields', 'Lorg/mockito/MockitoAnnotations;.scanDeprecatedWay(Lorg/mockito/configuration/AnnotationEngine;Ljava/lang/Object;Ljava/lang/Class<*>;)V#fields').
name_ref(v_found_plugin_class_290, var, 'foundPluginClass', 'Lorg/mockito/internal/configuration/plugins/PluginLoader;.loadImpl<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)TT;#1#0#foundPluginClass').
name_ref(v_hash_code_and_equals_safe_set_371, var, 'hashCodeAndEqualsSafeSet', 'Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;.of(Ljava/lang/Iterable<Ljava/lang/Object;>;)Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;#hashCodeAndEqualsSafeSet').
name_ref(v_hash_set_367, var, 'hashSet', 'Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;.asWrappedMocks(Ljava/util/Collection<*>;)Ljava/util/HashSet<Lorg/mockito/internal/util/collections/HashCodeAndEqualsMockWrapper;>;#hashSet').
name_ref(v_item_331, var, 'item', 'Lorg/mockito/internal/util/Checks;.checkItemsNotNull<T::Ljava/lang/Iterable;>(TT;Ljava/lang/String;)TT;#0#item').
name_ref(v_loader_288, var, 'loader', 'Lorg/mockito/internal/configuration/plugins/PluginLoader;.loadImpl<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)TT;#loader').
name_ref(v_mock_368, var, 'mock', 'Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;.asWrappedMocks(Ljava/util/Collection<*>;)Ljava/util/HashSet<Lorg/mockito/internal/util/collections/HashCodeAndEqualsMockWrapper;>;#0#mock').
name_ref(v_mock_372, var, 'mock', 'Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;.of(Ljava/lang/Iterable<Ljava/lang/Object;>;)Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;#0#mock').
name_ref(v_mock_dependent_fields_167, var, 'mockDependentFields', 'Lorg/mockito/internal/configuration/InjectingAnnotationEngine;.injectMocks(Ljava/lang/Object;)V#mockDependentFields').
name_ref(v_mock_dependent_fields_258, var, 'mockDependentFields', 'Lorg/mockito/internal/configuration/injection/scanner/InjectMocksScanner;.scan()Ljava/util/Set<Ljava/lang/reflect/Field;>;#mockDependentFields').
name_ref(v_mock_instance_272, var, 'mockInstance', 'Lorg/mockito/internal/configuration/injection/scanner/MockScanner;.scan()Ljava/util/Set<Ljava/lang/Object;>;#0#0#mockInstance').
name_ref(v_mocks_168, var, 'mocks', 'Lorg/mockito/internal/configuration/InjectingAnnotationEngine;.injectMocks(Ljava/lang/Object;)V#mocks').
name_ref(v_mocks_269, var, 'mocks', 'Lorg/mockito/internal/configuration/injection/scanner/MockScanner;.scan()Ljava/util/Set<Ljava/lang/Object;>;#mocks').
name_ref(v_out_374, var, 'out', 'Lorg/mockito/internal/util/collections/Iterables;.toIterable<T:Ljava/lang/Object;>(Ljava/util/Enumeration<TT;>;)Ljava/lang/Iterable<TT;>;#out').
name_ref(v_plugin_286, var, 'plugin', 'Lorg/mockito/internal/configuration/plugins/PluginLoader;.loadPlugin<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Ljava/lang/String;)TT;#plugin').
name_ref(v_resource_281, var, 'resource', 'Lorg/mockito/internal/configuration/plugins/PluginFinder;.findPluginClass(Ljava/lang/Iterable<Ljava/net/URL;>;)Ljava/lang/String;#0#resource').
name_ref(v_resources_289, var, 'resources', 'Lorg/mockito/internal/configuration/plugins/PluginLoader;.loadImpl<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)TT;#resources').
name_ref(v_state_386, var, 'state', 'Lorg/mockitoutil/TestBase;.cleanUpConfigInAnyCase()V#state').
name_ref(p_a_388, param, 'a', 'Lorg/mockitoutil/TestBase;.assertThat<T:Ljava/lang/Object;>(TT;Lorg/mockitoutil/Assertor<TT;>;)V#a#0#1').
name_ref(p_accessible_object_379, param, 'accessibleObject', 'Lorg/mockito/internal/util/reflection/AccessibilityChanger;.safelyDisableAccess(Ljava/lang/reflect/AccessibleObject;)V#accessibleObject#0#0').
name_ref(p_accessible_object_380, param, 'accessibleObject', 'Lorg/mockito/internal/util/reflection/AccessibilityChanger;.enableAccess(Ljava/lang/reflect/AccessibleObject;)V#accessibleObject#0#0').
name_ref(p_actual_389, param, 'actual', 'Lorg/mockitoutil/TestBase;.assertThat<T:Ljava/lang/Object;>(TT;Lorg/hamcrest/Matcher<TT;>;)V#actual#0#0').
name_ref(p_actual_39, param, 'actual', 'Lorg/mockito/exceptions/Reporter;.argumentsAreDifferent(Ljava/lang/String;Ljava/lang/String;Lorg/mockito/invocation/Location;)V#actual#0#1').
name_ref(p_actual_392, param, 'actual', 'Lorg/mockitoutil/TestBase;.assertThat<T:Ljava/lang/Object;>(Ljava/lang/String;TT;Lorg/hamcrest/Matcher<TT;>;)V#actual#0#1').
name_ref(p_actual_count_48, param, 'actualCount', 'Lorg/mockito/exceptions/Reporter;.tooManyActualInvocations(IILorg/mockito/invocation/DescribedInvocation;Lorg/mockito/invocation/Location;)V#actualCount#0#1').
name_ref(p_actual_count_52, param, 'actualCount', 'Lorg/mockito/exceptions/Reporter;.createTooManyInvocationsMessage(IILorg/mockito/invocation/DescribedInvocation;Lorg/mockito/invocation/Location;)Ljava/lang/String;#actualCount#0#1').
name_ref(p_actual_count_58, param, 'actualCount', 'Lorg/mockito/exceptions/Reporter;.tooManyActualInvocationsInOrder(IILorg/mockito/invocation/DescribedInvocation;Lorg/mockito/invocation/Location;)V#actualCount#0#1').
name_ref(p_actual_location_40, param, 'actualLocation', 'Lorg/mockito/exceptions/Reporter;.argumentsAreDifferent(Ljava/lang/String;Ljava/lang/String;Lorg/mockito/invocation/Location;)V#actualLocation#0#2').
name_ref(p_actual_type_114, param, 'actualType', 'Lorg/mockito/exceptions/Reporter;.wrongTypeOfArgumentToReturn(Lorg/mockito/invocation/InvocationOnMock;Ljava/lang/String;Ljava/lang/Class;I)V#actualType#0#2').
name_ref(p_actual_type_76, param, 'actualType', 'Lorg/mockito/exceptions/Reporter;.wrongTypeOfReturnValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V#actualType#0#1').
name_ref(p_actual_type_80, param, 'actualType', 'Lorg/mockito/exceptions/Reporter;.wrongTypeReturnedByDefaultAnswer(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V#actualType#0#2').
name_ref(p_additional_matcher_name_298, param, 'additionalMatcherName', 'Lorg/mockito/internal/progress/ArgumentMatcherStorageImpl;.assertStateFor(Ljava/lang/String;I)V#additionalMatcherName#0#0').
name_ref(p_additional_matcher_name_301, param, 'additionalMatcherName', 'Lorg/mockito/internal/progress/ArgumentMatcherStorageImpl;.assertMatchersFoundFor(Ljava/lang/String;)V#additionalMatcherName#0#0').
name_ref(p_additional_matcher_name_302, param, 'additionalMatcherName', 'Lorg/mockito/internal/progress/ArgumentMatcherStorageImpl;.assertIncorrectUseOfAdditionalMatchers(Ljava/lang/String;I)V#additionalMatcherName#0#0').
name_ref(p_additional_matcher_name_33, param, 'additionalMatcherName', 'Lorg/mockito/exceptions/Reporter;.incorrectUseOfAdditionalMatchers(Ljava/lang/String;ILjava/util/Collection<Lorg/mockito/internal/matchers/LocalizedMatcher;>;)V#additionalMatcherName#0#0').
name_ref(p_additional_matcher_name_36, param, 'additionalMatcherName', 'Lorg/mockito/exceptions/Reporter;.reportNoSubMatchersFound(Ljava/lang/String;)V#additionalMatcherName#0#0').
name_ref(p_already_assigned_146, param, 'alreadyAssigned', 'Lorg/mockito/internal/configuration/DefaultAnnotationEngine;.throwIfAlreadyAssigned(Ljava/lang/reflect/Field;Z)V#alreadyAssigned#0#1').
name_ref(p_already_assigned_15, param, 'alreadyAssigned', 'Lorg/mockito/MockitoAnnotations;.throwIfAlreadyAssigned(Ljava/lang/reflect/Field;Z)V#alreadyAssigned#0#1').
name_ref(p_annotation_127, param, 'annotation', 'Lorg/mockito/internal/configuration/CaptorAnnotationProcessor;.process(Lorg/mockito/Captor;Ljava/lang/reflect/Field;)Ljava/lang/Object;#annotation#0#0').
name_ref(p_annotation_132, param, 'annotation', 'Lorg/mockito/internal/configuration/DefaultAnnotationEngine;.createMockFor(Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Field;)Ljava/lang/Object;#annotation#0#0').
name_ref(p_annotation_134, param, 'annotation', 'Lorg/mockito/internal/configuration/DefaultAnnotationEngine;.forAnnotation<A::Ljava/lang/annotation/Annotation;>(TA;)Lorg/mockito/internal/configuration/FieldAnnotationProcessor<TA;>;#annotation#0#0').
name_ref(p_annotation_135, param, 'annotation', 'Lorg/mockito/internal/configuration/DefaultAnnotationEngine$2074;.process(TA;Ljava/lang/reflect/Field;)Ljava/lang/Object;#annotation#0#0').
name_ref(p_annotation_155, param, 'annotation', 'Lorg/mockito/internal/configuration/InjectingAnnotationEngine;.createMockFor(Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Field;)Ljava/lang/Object;#annotation#0#0').
name_ref(p_annotation_169, param, 'annotation', 'Lorg/mockito/internal/configuration/MockAnnotationProcessor;.process(Lorg/mockito/Mock;Ljava/lang/reflect/Field;)Ljava/lang/Object;#annotation#0#0').
name_ref(p_annotation_171, param, 'annotation', 'Lorg/mockito/internal/configuration/MockitoAnnotationsMockAnnotationProcessor;.process(Lorg/mockito/MockitoAnnotations$Mock;Ljava/lang/reflect/Field;)Ljava/lang/Object;#annotation#0#0').
name_ref(p_annotation_173, param, 'annotation', 'Lorg/mockito/internal/configuration/SpyAnnotationEngine;.createMockFor(Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Field;)Ljava/lang/Object;#annotation#0#0').
name_ref(p_annotation_183, param, 'annotation', 'Lorg/mockito/internal/configuration/SpyAnnotationEngine;.assertNoIncompatibleAnnotations(Ljava/lang/Class;Ljava/lang/reflect/Field;[Ljava/lang/Class;)V#annotation#0#0').
name_ref(p_annotation_25, param, 'annotation', 'Lorg/mockito/configuration/MockitoConfiguration$1883;.createMockFor(Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Field;)Ljava/lang/Object;#annotation#0#0').
name_ref(p_annotation_class_137, param, 'annotationClass', 'Lorg/mockito/internal/configuration/DefaultAnnotationEngine;.registerAnnotationProcessor<A::Ljava/lang/annotation/Annotation;>(Ljava/lang/Class<TA;>;Lorg/mockito/internal/configuration/FieldAnnotationProcessor<TA;>;)V#annotationClass#0#0').
name_ref(p_annotation_engine_4, param, 'annotationEngine', 'Lorg/mockito/MockitoAnnotations;.scanDeprecatedWay(Lorg/mockito/configuration/AnnotationEngine;Ljava/lang/Object;Ljava/lang/Class<*>;)V#annotationEngine#0#0').
name_ref(p_annotation_engine_9, param, 'annotationEngine', 'Lorg/mockito/MockitoAnnotations;.processAnnotationDeprecatedWay(Lorg/mockito/configuration/AnnotationEngine;Ljava/lang/Object;Ljava/lang/reflect/Field;)V#annotationEngine#0#0').
name_ref(p_annotations_262, param, 'annotations', 'Lorg/mockito/internal/configuration/injection/scanner/InjectMocksScanner;.assertNoAnnotations(Ljava/lang/reflect/Field;[Ljava/lang/Class;)V#annotations#0#1').
name_ref(p_arg_resolver_186, param, 'argResolver', 'Lorg/mockito/internal/configuration/injection/ConstructorInjection;.(Lorg/mockito/internal/util/reflection/FieldInitializer$ConstructorArgumentResolver;)V#argResolver#0#0').
name_ref(p_arg_type_192, param, 'argType', 'Lorg/mockito/internal/configuration/injection/ConstructorInjection$SimpleArgumentResolver;.objectThatIsAssignableFrom(Ljava/lang/Class<*>;)Ljava/lang/Object;#argType#0#0').
name_ref(p_arg_types_191, param, 'argTypes', 'Lorg/mockito/internal/configuration/injection/ConstructorInjection$SimpleArgumentResolver;.resolveTypeInstances([Ljava/lang/Class<*>;)[Ljava/lang/Object;#argTypes#0#0').
name_ref(p_args_408, param, 'args', 'Lorg/mockitoutil/TestBase;.invocationOf(Ljava/lang/Class<*>;Ljava/lang/String;[Ljava/lang/Object;)Lorg/mockito/invocation/Invocation;|Ljava/lang/NoSuchMethodException;#args#0#2').
name_ref(p_argument_index_110, param, 'argumentIndex', 'Lorg/mockito/exceptions/Reporter;.invalidArgumentPositionRangeAtInvocationTime(Lorg/mockito/invocation/InvocationOnMock;ZI)I#argumentIndex#0#2').
name_ref(p_argument_index_115, param, 'argumentIndex', 'Lorg/mockito/exceptions/Reporter;.wrongTypeOfArgumentToReturn(Lorg/mockito/invocation/InvocationOnMock;Ljava/lang/String;Ljava/lang/Class;I)V#argumentIndex#0#3').
name_ref(p_array_360, param, 'array', 'Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;.unwrapTo<T:Ljava/lang/Object;>([TT;)[TT;#array#0#0').
name_ref(p_awaiting_injection_clazz_230, param, 'awaitingInjectionClazz', 'Lorg/mockito/internal/configuration/injection/PropertyAndSetterInjection;.injectMockCandidates(Ljava/lang/Class<*>;Ljava/util/Set<Ljava/lang/Object;>;Ljava/lang/Object;)Z#awaitingInjectionClazz#0#0').
name_ref(p_awaiting_injection_clazz_237, param, 'awaitingInjectionClazz', 'Lorg/mockito/internal/configuration/injection/PropertyAndSetterInjection;.orderedInstanceFieldsFrom(Ljava/lang/Class<*>;)Ljava/util/List<Ljava/lang/reflect/Field;>;#awaitingInjectionClazz#0#0').
name_ref(p_checked_iterable_330, param, 'checkedIterable', 'Lorg/mockito/internal/util/Checks;.checkItemsNotNull<T::Ljava/lang/Iterable;>(TT;Ljava/lang/String;)TT;#checkedIterable#0#1').
name_ref(p_checked_value_328, param, 'checkedValue', 'Lorg/mockito/internal/util/Checks;.checkNotNull<T:Ljava/lang/Object;>(TT;Ljava/lang/String;)TT;#checkedValue#0#1').
name_ref(p_class_to_mock_116, param, 'classToMock', 'Lorg/mockito/exceptions/Reporter;.serializableWontWorkForObjectsThatDontImplementSerializable(Ljava/lang/Class;)V#classToMock#0#0').
name_ref(p_class_to_mock_313, param, 'classToMock', 'Lorg/mockito/internal/progress/MockingProgressImpl;.mockingStarted(Ljava/lang/Object;Ljava/lang/Class;)V#classToMock#0#1').
name_ref(p_class_to_mock_320, param, 'classToMock', 'Lorg/mockito/internal/progress/ThreadSafeMockingProgress;.mockingStarted(Ljava/lang/Object;Ljava/lang/Class;)V#classToMock#0#1').
name_ref(p_clazz_139, param, 'clazz', 'Lorg/mockito/internal/configuration/DefaultAnnotationEngine;.process(Ljava/lang/Class<*>;Ljava/lang/Object;)V#clazz#0#0').
name_ref(p_clazz_157, param, 'clazz', 'Lorg/mockito/internal/configuration/InjectingAnnotationEngine;.process(Ljava/lang/Class<*>;Ljava/lang/Object;)V#clazz#0#0').
name_ref(p_clazz_159, param, 'clazz', 'Lorg/mockito/internal/configuration/InjectingAnnotationEngine;.processInjectMocks(Ljava/lang/Class<*>;Ljava/lang/Object;)V#clazz#0#0').
name_ref(p_clazz_162, param, 'clazz', 'Lorg/mockito/internal/configuration/InjectingAnnotationEngine;.processIndependentAnnotations(Ljava/lang/Class<*>;Ljava/lang/Object;)V#clazz#0#0').
name_ref(p_clazz_255, param, 'clazz', 'Lorg/mockito/internal/configuration/injection/scanner/InjectMocksScanner;.(Ljava/lang/Class<*>;)V#clazz#0#0').
name_ref(p_clazz_265, param, 'clazz', 'Lorg/mockito/internal/configuration/injection/scanner/MockScanner;.(Ljava/lang/Object;Ljava/lang/Class<*>;)V#clazz#0#1').
name_ref(p_clazz_351, param, 'clazz', 'Lorg/mockito/internal/util/Primitives;.primitiveTypeOf<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)Ljava/lang/Class<TT;>;#clazz#0#0').
name_ref(p_clazz_415, param, 'clazz', 'Lorg/mockitoutil/TestBase;.assertContainsType(Ljava/util/Collection<*>;Ljava/lang/Class<*>;)V#clazz#0#1').
name_ref(p_clazz_6, param, 'clazz', 'Lorg/mockito/MockitoAnnotations;.scanDeprecatedWay(Lorg/mockito/configuration/AnnotationEngine;Ljava/lang/Object;Ljava/lang/Class<*>;)V#clazz#0#2').
name_ref(p_clazz_73, param, 'clazz', 'Lorg/mockito/exceptions/Reporter;.cannotMockFinalClass(Ljava/lang/Class<*>;)V#clazz#0#0').
name_ref(p_cleans_stack_trace_20, param, 'cleansStackTrace', 'Lorg/mockito/configuration/MockitoConfiguration;.overrideCleansStackTrace(Z)V#cleansStackTrace#0#0').
name_ref(p_context_175, param, 'context', 'Lorg/mockito/internal/configuration/SpyAnnotationEngine;.process(Ljava/lang/Class<*>;Ljava/lang/Object;)V#context#0#0').
name_ref(p_count_300, param, 'count', 'Lorg/mockito/internal/progress/ArgumentMatcherStorageImpl;.popLastArgumentMatchers(I)Ljava/util/List<Lorg/hamcrest/Matcher;>;#count#0#0').
name_ref(p_count_303, param, 'count', 'Lorg/mockito/internal/progress/ArgumentMatcherStorageImpl;.assertIncorrectUseOfAdditionalMatchers(Ljava/lang/String;I)V#count#0#1').
name_ref(p_default_answer_19, param, 'defaultAnswer', 'Lorg/mockito/configuration/MockitoConfiguration;.overrideDefaultAnswer(Lorg/mockito/stubbing/Answer<Ljava/lang/Object;>;)V#defaultAnswer#0#0').
name_ref(p_default_cleaner_295, param, 'defaultCleaner', 'Lorg/mockito/internal/exceptions/stacktrace/DefaultStackTraceCleanerProvider;.getStackTraceCleaner(Lorg/mockito/exceptions/stacktrace/StackTraceCleaner;)Lorg/mockito/exceptions/stacktrace/StackTraceCleaner;#defaultCleaner#0#0').
name_ref(p_default_plugin_class_name_285, param, 'defaultPluginClassName', 'Lorg/mockito/internal/configuration/plugins/PluginLoader;.loadPlugin<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Ljava/lang/String;)TT;#defaultPluginClassName#0#1').
name_ref(p_delegate_120, param, 'delegate', 'Lorg/mockito/exceptions/Reporter;.delegatedMethodHasWrongReturnType(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;)V#delegate#0#3').
name_ref(p_delegate_123, param, 'delegate', 'Lorg/mockito/exceptions/Reporter;.delegatedMethodDoesNotExistOnDelegate(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;)V#delegate#0#2').
name_ref(p_delegate_method_118, param, 'delegateMethod', 'Lorg/mockito/exceptions/Reporter;.delegatedMethodHasWrongReturnType(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;)V#delegateMethod#0#1').
name_ref(p_delegated_instance_107, param, 'delegatedInstance', 'Lorg/mockito/exceptions/Reporter;.mockedTypeIsInconsistentWithDelegatedInstanceType(Ljava/lang/Class;Ljava/lang/Object;)V#delegatedInstance#0#1').
name_ref(p_details_104, param, 'details', 'Lorg/mockito/exceptions/Reporter;.cannotInjectDependency(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Exception;)V#details#0#2').
name_ref(p_details_105, param, 'details', 'Lorg/mockito/exceptions/Reporter;.exceptionCauseMessageIfAvailable(Ljava/lang/Exception;)Ljava/lang/String;#details#0#0').
name_ref(p_details_95, param, 'details', 'Lorg/mockito/exceptions/Reporter;.cannotInitializeForSpyAnnotation(Ljava/lang/String;Ljava/lang/Exception;)V#details#0#1').
name_ref(p_details_97, param, 'details', 'Lorg/mockito/exceptions/Reporter;.cannotInitializeForInjectMocksAnnotation(Ljava/lang/String;Ljava/lang/Exception;)V#details#0#1').
name_ref(p_details_99, param, 'details', 'Lorg/mockito/exceptions/Reporter;.fieldInitialisationThrewException(Ljava/lang/reflect/Field;Ljava/lang/Throwable;)V#details#0#1').
name_ref(p_discrepancy_61, param, 'discrepancy', 'Lorg/mockito/exceptions/Reporter;.createTooLittleInvocationsMessage(Lorg/mockito/internal/reporting/Discrepancy;Lorg/mockito/invocation/DescribedInvocation;Lorg/mockito/invocation/Location;)Ljava/lang/String;#discrepancy#0#0').
name_ref(p_discrepancy_64, param, 'discrepancy', 'Lorg/mockito/exceptions/Reporter;.tooLittleActualInvocations(Lorg/mockito/internal/reporting/Discrepancy;Lorg/mockito/invocation/DescribedInvocation;Lorg/mockito/invocation/Location;)V#discrepancy#0#0').
name_ref(p_discrepancy_67, param, 'discrepancy', 'Lorg/mockito/exceptions/Reporter;.tooLittleActualInvocationsInOrder(Lorg/mockito/internal/reporting/Discrepancy;Lorg/mockito/invocation/DescribedInvocation;Lorg/mockito/invocation/Location;)V#discrepancy#0#0').
name_ref(p_duration_millis_125, param, 'durationMillis', 'Lorg/mockito/exceptions/Reporter;.cannotCreateTimerWithNegativeDurationTime(J)V#durationMillis#0#0').
name_ref(p_e_417, param, 'e', 'Lorg/mockitoutil/TestBase;.getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;#e#0#0').
name_ref(p_elements_377, param, 'elements', 'Lorg/mockito/internal/util/collections/Sets;.newSet<T:Ljava/lang/Object;>([TT;)Ljava/util/Set<TT;>;#elements#0#0').
name_ref(p_enable_class_cache_23, param, 'enableClassCache', 'Lorg/mockito/configuration/MockitoConfiguration;.overrideEnableClassCache(Z)V#enableClassCache#0#0').
name_ref(p_engine_22, param, 'engine', 'Lorg/mockito/configuration/MockitoConfiguration;.overrideAnnotationEngine(Lorg/mockito/configuration/AnnotationEngine;)V#engine#0#0').
name_ref(p_expected_396, param, 'expected', 'Lorg/mockitoutil/TestBase;.assertNotEquals(Ljava/lang/Object;Ljava/lang/Object;)V#expected#0#0').
name_ref(p_expected_matchers_count_31, param, 'expectedMatchersCount', 'Lorg/mockito/exceptions/Reporter;.invalidUseOfMatchers(ILjava/util/List<Lorg/mockito/internal/matchers/LocalizedMatcher;>;)V#expectedMatchersCount#0#0').
name_ref(p_expected_sub_matchers_count_34, param, 'expectedSubMatchersCount', 'Lorg/mockito/exceptions/Reporter;.incorrectUseOfAdditionalMatchers(Ljava/lang/String;ILjava/util/Collection<Lorg/mockito/internal/matchers/LocalizedMatcher;>;)V#expectedSubMatchersCount#0#1').
name_ref(p_expected_type_113, param, 'expectedType', 'Lorg/mockito/exceptions/Reporter;.wrongTypeOfArgumentToReturn(Lorg/mockito/invocation/InvocationOnMock;Ljava/lang/String;Ljava/lang/Class;I)V#expectedType#0#1').
name_ref(p_expected_type_75, param, 'expectedType', 'Lorg/mockito/exceptions/Reporter;.wrongTypeOfReturnValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V#expectedType#0#0').
name_ref(p_expected_type_79, param, 'expectedType', 'Lorg/mockito/exceptions/Reporter;.wrongTypeReturnedByDefaultAnswer(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V#expectedType#0#1').
name_ref(p_field_102, param, 'field', 'Lorg/mockito/exceptions/Reporter;.cannotInjectDependency(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Exception;)V#field#0#0').
name_ref(p_field_11, param, 'field', 'Lorg/mockito/MockitoAnnotations;.processAnnotationDeprecatedWay(Lorg/mockito/configuration/AnnotationEngine;Ljava/lang/Object;Ljava/lang/reflect/Field;)V#field#0#2').
name_ref(p_field_128, param, 'field', 'Lorg/mockito/internal/configuration/CaptorAnnotationProcessor;.process(Lorg/mockito/Captor;Ljava/lang/reflect/Field;)Ljava/lang/Object;#field#0#1').
name_ref(p_field_133, param, 'field', 'Lorg/mockito/internal/configuration/DefaultAnnotationEngine;.createMockFor(Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Field;)Ljava/lang/Object;#field#0#1').
name_ref(p_field_136, param, 'field', 'Lorg/mockito/internal/configuration/DefaultAnnotationEngine$2074;.process(TA;Ljava/lang/reflect/Field;)Ljava/lang/Object;#field#0#1').
name_ref(p_field_14, param, 'field', 'Lorg/mockito/MockitoAnnotations;.throwIfAlreadyAssigned(Ljava/lang/reflect/Field;Z)V#field#0#0').
name_ref(p_field_145, param, 'field', 'Lorg/mockito/internal/configuration/DefaultAnnotationEngine;.throwIfAlreadyAssigned(Ljava/lang/reflect/Field;Z)V#field#0#0').
name_ref(p_field_156, param, 'field', 'Lorg/mockito/internal/configuration/InjectingAnnotationEngine;.createMockFor(Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Field;)Ljava/lang/Object;#field#0#1').
name_ref(p_field_170, param, 'field', 'Lorg/mockito/internal/configuration/MockAnnotationProcessor;.process(Lorg/mockito/Mock;Ljava/lang/reflect/Field;)Ljava/lang/Object;#field#0#1').
name_ref(p_field_172, param, 'field', 'Lorg/mockito/internal/configuration/MockitoAnnotationsMockAnnotationProcessor;.process(Lorg/mockito/MockitoAnnotations$Mock;Ljava/lang/reflect/Field;)Ljava/lang/Object;#field#0#1').
name_ref(p_field_174, param, 'field', 'Lorg/mockito/internal/configuration/SpyAnnotationEngine;.createMockFor(Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Field;)Ljava/lang/Object;#field#0#1').
name_ref(p_field_182, param, 'field', 'Lorg/mockito/internal/configuration/SpyAnnotationEngine;.newSpyInstance(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;|Ljava/lang/InstantiationException;|Ljava/lang/IllegalAccessException;|Ljava/lang/reflect/InvocationTargetException;#field#0#1').
name_ref(p_field_184, param, 'field', 'Lorg/mockito/internal/configuration/SpyAnnotationEngine;.assertNoIncompatibleAnnotations(Ljava/lang/Class;Ljava/lang/reflect/Field;[Ljava/lang/Class;)V#field#0#1').
name_ref(p_field_187, param, 'field', 'Lorg/mockito/internal/configuration/injection/ConstructorInjection;.processInjection(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/util/Set<Ljava/lang/Object;>;)Z#field#0#0').
name_ref(p_field_193, param, 'field', 'Lorg/mockito/internal/configuration/injection/MockInjection;.onField(Ljava/lang/reflect/Field;Ljava/lang/Object;)Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;#field#0#0').
name_ref(p_field_201, param, 'field', 'Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;.(Ljava/lang/reflect/Field;Ljava/lang/Object;)V#field#0#0').
name_ref(p_field_208, param, 'field', 'Lorg/mockito/internal/configuration/injection/MockInjectionStrategy$465;.processInjection(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/util/Set<Ljava/lang/Object;>;)Z#field#0#0').
name_ref(p_field_216, param, 'field', 'Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;.processInjection(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/util/Set<Ljava/lang/Object;>;)Z#field#0#0').
name_ref(p_field_219, param, 'field', 'Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;.relayProcessToNextStrategy(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/util/Set<Ljava/lang/Object;>;)Z#field#0#0').
name_ref(p_field_228, param, 'field', 'Lorg/mockito/internal/configuration/injection/PropertyAndSetterInjection;.initializeInjectMocksField(Ljava/lang/reflect/Field;Ljava/lang/Object;)Lorg/mockito/internal/util/reflection/FieldInitializationReport;#field#0#0').
name_ref(p_field_238, param, 'field', 'Lorg/mockito/internal/configuration/injection/SpyOnInjectedFieldsHandler;.processInjection(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/util/Set<Ljava/lang/Object;>;)Z#field#0#0').
name_ref(p_field_242, param, 'field', 'Lorg/mockito/internal/configuration/injection/filter/FinalMockCandidateFilter;.filterCandidate(Ljava/util/Collection<Ljava/lang/Object;>;Ljava/lang/reflect/Field;Ljava/lang/Object;)Lorg/mockito/internal/configuration/injection/filter/OngoingInjecter;#field#0#1').
name_ref(p_field_248, param, 'field', 'Lorg/mockito/internal/configuration/injection/filter/NameBasedCandidateFilter;.filterCandidate(Ljava/util/Collection<Ljava/lang/Object;>;Ljava/lang/reflect/Field;Ljava/lang/Object;)Lorg/mockito/internal/configuration/injection/filter/OngoingInjecter;#field#0#1').
name_ref(p_field_253, param, 'field', 'Lorg/mockito/internal/configuration/injection/filter/TypeBasedCandidateFilter;.filterCandidate(Ljava/util/Collection<Ljava/lang/Object;>;Ljava/lang/reflect/Field;Ljava/lang/Object;)Lorg/mockito/internal/configuration/injection/filter/OngoingInjecter;#field#0#1').
name_ref(p_field_26, param, 'field', 'Lorg/mockito/configuration/MockitoConfiguration$1883;.createMockFor(Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Field;)Ljava/lang/Object;#field#0#1').
name_ref(p_field_261, param, 'field', 'Lorg/mockito/internal/configuration/injection/scanner/InjectMocksScanner;.assertNoAnnotations(Ljava/lang/reflect/Field;[Ljava/lang/Class;)V#field#0#0').
name_ref(p_field_274, param, 'field', 'Lorg/mockito/internal/configuration/injection/scanner/MockScanner;.preparedMock(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;#field#0#1').
name_ref(p_field_275, param, 'field', 'Lorg/mockito/internal/configuration/injection/scanner/MockScanner;.isAnnotatedByMockOrSpy(Ljava/lang/reflect/Field;)Z#field#0#0').
name_ref(p_field_383, param, 'field', 'Lorg/mockito/internal/util/reflection/FieldReader;.(Ljava/lang/Object;Ljava/lang/reflect/Field;)V#field#0#1').
name_ref(p_field_98, param, 'field', 'Lorg/mockito/exceptions/Reporter;.fieldInitialisationThrewException(Ljava/lang/reflect/Field;Ljava/lang/Throwable;)V#field#0#0').
name_ref(p_field_annotation_processor_138, param, 'fieldAnnotationProcessor', 'Lorg/mockito/internal/configuration/DefaultAnnotationEngine;.registerAnnotationProcessor<A::Ljava/lang/annotation/Annotation;>(Ljava/lang/Class<TA;>;Lorg/mockito/internal/configuration/FieldAnnotationProcessor<TA;>;)V#fieldAnnotationProcessor#0#1').
name_ref(p_field_instance_243, param, 'fieldInstance', 'Lorg/mockito/internal/configuration/injection/filter/FinalMockCandidateFilter;.filterCandidate(Ljava/util/Collection<Ljava/lang/Object;>;Ljava/lang/reflect/Field;Ljava/lang/Object;)Lorg/mockito/internal/configuration/injection/filter/OngoingInjecter;#fieldInstance#0#2').
name_ref(p_field_instance_249, param, 'fieldInstance', 'Lorg/mockito/internal/configuration/injection/filter/NameBasedCandidateFilter;.filterCandidate(Ljava/util/Collection<Ljava/lang/Object;>;Ljava/lang/reflect/Field;Ljava/lang/Object;)Lorg/mockito/internal/configuration/injection/filter/OngoingInjecter;#fieldInstance#0#2').
name_ref(p_field_instance_254, param, 'fieldInstance', 'Lorg/mockito/internal/configuration/injection/filter/TypeBasedCandidateFilter;.filterCandidate(Ljava/util/Collection<Ljava/lang/Object;>;Ljava/lang/reflect/Field;Ljava/lang/Object;)Lorg/mockito/internal/configuration/injection/filter/OngoingInjecter;#fieldInstance#0#2').
name_ref(p_field_name_91, param, 'fieldName', 'Lorg/mockito/exceptions/Reporter;.moreThanOneAnnotationNotAllowed(Ljava/lang/String;)V#fieldName#0#0').
name_ref(p_field_name_94, param, 'fieldName', 'Lorg/mockito/exceptions/Reporter;.cannotInitializeForSpyAnnotation(Ljava/lang/String;Ljava/lang/Exception;)V#fieldName#0#0').
name_ref(p_field_name_96, param, 'fieldName', 'Lorg/mockito/exceptions/Reporter;.cannotInitializeForInjectMocksAnnotation(Ljava/lang/String;Ljava/lang/Exception;)V#fieldName#0#0').
name_ref(p_field_owned_by_214, param, 'fieldOwnedBy', 'Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;.process(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/util/Set<Ljava/lang/Object;>;)Z#fieldOwnedBy#0#1').
name_ref(p_field_owner_188, param, 'fieldOwner', 'Lorg/mockito/internal/configuration/injection/ConstructorInjection;.processInjection(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/util/Set<Ljava/lang/Object;>;)Z#fieldOwner#0#1').
name_ref(p_field_owner_202, param, 'fieldOwner', 'Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;.(Ljava/lang/reflect/Field;Ljava/lang/Object;)V#fieldOwner#0#1').
name_ref(p_field_owner_204, param, 'fieldOwner', 'Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;.(Ljava/util/Set<Ljava/lang/reflect/Field;>;Ljava/lang/Object;)V#fieldOwner#0#1').
name_ref(p_field_owner_209, param, 'fieldOwner', 'Lorg/mockito/internal/configuration/injection/MockInjectionStrategy$465;.processInjection(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/util/Set<Ljava/lang/Object;>;)Z#fieldOwner#0#1').
name_ref(p_field_owner_217, param, 'fieldOwner', 'Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;.processInjection(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/util/Set<Ljava/lang/Object;>;)Z#fieldOwner#0#1').
name_ref(p_field_owner_220, param, 'fieldOwner', 'Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;.relayProcessToNextStrategy(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/util/Set<Ljava/lang/Object;>;)Z#fieldOwner#0#1').
name_ref(p_field_owner_229, param, 'fieldOwner', 'Lorg/mockito/internal/configuration/injection/PropertyAndSetterInjection;.initializeInjectMocksField(Ljava/lang/reflect/Field;Ljava/lang/Object;)Lorg/mockito/internal/util/reflection/FieldInitializationReport;#fieldOwner#0#1').
name_ref(p_field_owner_239, param, 'fieldOwner', 'Lorg/mockito/internal/configuration/injection/SpyOnInjectedFieldsHandler;.processInjection(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/util/Set<Ljava/lang/Object;>;)Z#fieldOwner#0#1').
name_ref(p_fields_195, param, 'fields', 'Lorg/mockito/internal/configuration/injection/MockInjection;.onFields(Ljava/util/Set<Ljava/lang/reflect/Field;>;Ljava/lang/Object;)Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;#fields#0#0').
name_ref(p_fields_203, param, 'fields', 'Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;.(Ljava/util/Set<Ljava/lang/reflect/Field;>;Ljava/lang/Object;)V#fields#0#0').
name_ref(p_first_undesired_50, param, 'firstUndesired', 'Lorg/mockito/exceptions/Reporter;.tooManyActualInvocations(IILorg/mockito/invocation/DescribedInvocation;Lorg/mockito/invocation/Location;)V#firstUndesired#0#3').
name_ref(p_first_undesired_54, param, 'firstUndesired', 'Lorg/mockito/exceptions/Reporter;.createTooManyInvocationsMessage(IILorg/mockito/invocation/DescribedInvocation;Lorg/mockito/invocation/Location;)Ljava/lang/String;#firstUndesired#0#3').
name_ref(p_first_undesired_56, param, 'firstUndesired', 'Lorg/mockito/exceptions/Reporter;.neverWantedButInvoked(Lorg/mockito/invocation/DescribedInvocation;Lorg/mockito/invocation/Location;)V#firstUndesired#0#1').
name_ref(p_first_undesired_60, param, 'firstUndesired', 'Lorg/mockito/exceptions/Reporter;.tooManyActualInvocationsInOrder(IILorg/mockito/invocation/DescribedInvocation;Lorg/mockito/invocation/Location;)V#firstUndesired#0#3').
name_ref(p_found_size_83, param, 'foundSize', 'Lorg/mockito/exceptions/Reporter;.wantedAtMostX(II)V#foundSize#0#1').
name_ref(p_got_397, param, 'got', 'Lorg/mockitoutil/TestBase;.assertNotEquals(Ljava/lang/Object;Ljava/lang/Object;)V#got#0#1').
name_ref(p_i_ongoing_stubbing_307, param, 'iOngoingStubbing', 'Lorg/mockito/internal/progress/MockingProgressImpl;.reportOngoingStubbing(Lorg/mockito/internal/progress/IOngoingStubbing;)V#iOngoingStubbing#0#0').
name_ref(p_i_ongoing_stubbing_316, param, 'iOngoingStubbing', 'Lorg/mockito/internal/progress/ThreadSafeMockingProgress;.reportOngoingStubbing(Lorg/mockito/internal/progress/IOngoingStubbing;)V#iOngoingStubbing#0#0').
name_ref(p_in_373, param, 'in', 'Lorg/mockito/internal/util/collections/Iterables;.toIterable<T:Ljava/lang/Object;>(Ljava/util/Enumeration<TT;>;)Ljava/lang/Iterable<TT;>;#in#0#0').
name_ref(p_inject_mocks_field_225, param, 'injectMocksField', 'Lorg/mockito/internal/configuration/injection/PropertyAndSetterInjection;.processInjection(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/util/Set<Ljava/lang/Object;>;)Z#injectMocksField#0#0').
name_ref(p_inject_mocks_field_owner_226, param, 'injectMocksFieldOwner', 'Lorg/mockito/internal/configuration/injection/PropertyAndSetterInjection;.processInjection(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/util/Set<Ljava/lang/Object;>;)Z#injectMocksFieldOwner#0#1').
name_ref(p_injection_occurred_235, param, 'injectionOccurred', 'Lorg/mockito/internal/configuration/injection/PropertyAndSetterInjection;.injectMockCandidatesOnFields(Ljava/util/Set<Ljava/lang/Object;>;Ljava/lang/Object;ZLjava/util/List<Ljava/lang/reflect/Field;>;)Z#injectionOccurred#0#2').
name_ref(p_instance_232, param, 'instance', 'Lorg/mockito/internal/configuration/injection/PropertyAndSetterInjection;.injectMockCandidates(Ljava/lang/Class<*>;Ljava/util/Set<Ljava/lang/Object;>;Ljava/lang/Object;)Z#instance#0#2').
name_ref(p_instance_234, param, 'instance', 'Lorg/mockito/internal/configuration/injection/PropertyAndSetterInjection;.injectMockCandidatesOnFields(Ljava/util/Set<Ljava/lang/Object;>;Ljava/lang/Object;ZLjava/util/List<Ljava/lang/reflect/Field;>;)Z#instance#0#1').
name_ref(p_instance_264, param, 'instance', 'Lorg/mockito/internal/configuration/injection/scanner/MockScanner;.(Ljava/lang/Object;Ljava/lang/Class<*>;)V#instance#0#0').
name_ref(p_instance_273, param, 'instance', 'Lorg/mockito/internal/configuration/injection/scanner/MockScanner;.preparedMock(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;#instance#0#0').
name_ref(p_instance_276, param, 'instance', 'Lorg/mockito/internal/configuration/injection/scanner/MockScanner;.isMockOrSpy(Ljava/lang/Object;)Z#instance#0#0').
name_ref(p_invocation_108, param, 'invocation', 'Lorg/mockito/exceptions/Reporter;.invalidArgumentPositionRangeAtInvocationTime(Lorg/mockito/invocation/InvocationOnMock;ZI)I#invocation#0#0').
name_ref(p_invocation_111, param, 'invocation', 'Lorg/mockito/exceptions/Reporter;.possibleArgumentTypesOf(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/StringBuilder;#invocation#0#0').
name_ref(p_invocation_112, param, 'invocation', 'Lorg/mockito/exceptions/Reporter;.wrongTypeOfArgumentToReturn(Lorg/mockito/invocation/InvocationOnMock;Ljava/lang/String;Ljava/lang/Class;I)V#invocation#0#0').
name_ref(p_invocation_311, param, 'invocation', 'Lorg/mockito/internal/progress/MockingProgressImpl;.stubbingCompleted(Lorg/mockito/invocation/Invocation;)V#invocation#0#0').
name_ref(p_invocation_318, param, 'invocation', 'Lorg/mockito/internal/progress/ThreadSafeMockingProgress;.stubbingCompleted(Lorg/mockito/invocation/Invocation;)V#invocation#0#0').
name_ref(p_invocation_324, param, 'invocation', 'Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValues;.answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;#invocation#0#0').
name_ref(p_invocation_85, param, 'invocation', 'Lorg/mockito/exceptions/Reporter;.smartNullPointerException(Ljava/lang/String;Lorg/mockito/invocation/Location;)V#invocation#0#0').
name_ref(p_invocations_43, param, 'invocations', 'Lorg/mockito/exceptions/Reporter;.wantedButNotInvoked(Lorg/mockito/invocation/DescribedInvocation;Ljava/util/List<+Lorg/mockito/invocation/DescribedInvocation;>;)V#invocations#0#1').
name_ref(p_invocations_71, param, 'invocations', 'Lorg/mockito/exceptions/Reporter;.noMoreInteractionsWanted(Lorg/mockito/invocation/Invocation;Ljava/util/List<Lorg/mockito/internal/exceptions/VerificationAwareInvocation;>;)V#invocations#0#1').
name_ref(p_iterable_329, param, 'iterable', 'Lorg/mockito/internal/util/Checks;.checkItemsNotNull<T::Ljava/lang/Iterable;>(TT;Ljava/lang/String;)TT;#iterable#0#0').
name_ref(p_last_actual_invocation_63, param, 'lastActualInvocation', 'Lorg/mockito/exceptions/Reporter;.createTooLittleInvocationsMessage(Lorg/mockito/internal/reporting/Discrepancy;Lorg/mockito/invocation/DescribedInvocation;Lorg/mockito/invocation/Location;)Ljava/lang/String;#lastActualInvocation#0#2').
name_ref(p_last_actual_location_66, param, 'lastActualLocation', 'Lorg/mockito/exceptions/Reporter;.tooLittleActualInvocations(Lorg/mockito/internal/reporting/Discrepancy;Lorg/mockito/invocation/DescribedInvocation;Lorg/mockito/invocation/Location;)V#lastActualLocation#0#2').
name_ref(p_last_actual_location_69, param, 'lastActualLocation', 'Lorg/mockito/exceptions/Reporter;.tooLittleActualInvocationsInOrder(Lorg/mockito/internal/reporting/Discrepancy;Lorg/mockito/invocation/DescribedInvocation;Lorg/mockito/invocation/Location;)V#lastActualLocation#0#2').
name_ref(p_last_matchers_84, param, 'lastMatchers', 'Lorg/mockito/exceptions/Reporter;.misplacedArgumentMatcher(Ljava/util/List<Lorg/mockito/internal/matchers/LocalizedMatcher;>;)V#lastMatchers#0#0').
name_ref(p_list_414, param, 'list', 'Lorg/mockitoutil/TestBase;.assertContainsType(Ljava/util/Collection<*>;Ljava/lang/Class<*>;)V#list#0#0').
name_ref(p_listener_100, param, 'listener', 'Lorg/mockito/exceptions/Reporter;.invocationListenerThrewException(Lorg/mockito/listeners/InvocationListener;Ljava/lang/Throwable;)V#listener#0#0').
name_ref(p_listener_314, param, 'listener', 'Lorg/mockito/internal/progress/MockingProgressImpl;.setListener(Lorg/mockito/internal/listeners/MockingProgressListener;)V#listener#0#0').
name_ref(p_listener_321, param, 'listener', 'Lorg/mockito/internal/progress/ThreadSafeMockingProgress;.setListener(Lorg/mockito/internal/listeners/MockingProgressListener;)V#listener#0#0').
name_ref(p_listener_throwable_101, param, 'listenerThrowable', 'Lorg/mockito/exceptions/Reporter;.invocationListenerThrewException(Lorg/mockito/listeners/InvocationListener;Ljava/lang/Throwable;)V#listenerThrowable#0#1').
name_ref(p_location_28, param, 'location', 'Lorg/mockito/exceptions/Reporter;.unfinishedStubbing(Lorg/mockito/invocation/Location;)V#location#0#0').
name_ref(p_location_29, param, 'location', 'Lorg/mockito/exceptions/Reporter;.unfinishedVerificationException(Lorg/mockito/invocation/Location;)V#location#0#0').
name_ref(p_location_86, param, 'location', 'Lorg/mockito/exceptions/Reporter;.smartNullPointerException(Ljava/lang/String;Lorg/mockito/invocation/Location;)V#location#0#1').
name_ref(p_m_390, param, 'm', 'Lorg/mockitoutil/TestBase;.assertThat<T:Ljava/lang/Object;>(TT;Lorg/hamcrest/Matcher<TT;>;)V#m#0#1').
name_ref(p_m_393, param, 'm', 'Lorg/mockitoutil/TestBase;.assertThat<T:Ljava/lang/Object;>(Ljava/lang/String;TT;Lorg/hamcrest/Matcher<TT;>;)V#m#0#2').
name_ref(p_m_412, param, 'm', 'Lorg/mockitoutil/TestBase;.describe(Lorg/hamcrest/SelfDescribing;)Ljava/lang/String;#m#0#0').
name_ref(p_matcher_297, param, 'matcher', 'Lorg/mockito/internal/progress/ArgumentMatcherStorageImpl;.reportMatcher(Lorg/hamcrest/Matcher;)Lorg/mockito/internal/progress/HandyReturnValues;#matcher#0#0').
name_ref(p_matcher_stack_35, param, 'matcherStack', 'Lorg/mockito/exceptions/Reporter;.incorrectUseOfAdditionalMatchers(Ljava/lang/String;ILjava/util/Collection<Lorg/mockito/internal/matchers/LocalizedMatcher;>;)V#matcherStack#0#2').
name_ref(p_matchers_37, param, 'matchers', 'Lorg/mockito/exceptions/Reporter;.locationsOf(Ljava/util/Collection<Lorg/mockito/internal/matchers/LocalizedMatcher;>;)Ljava/lang/Object;#matchers#0#0').
name_ref(p_matching_mock_103, param, 'matchingMock', 'Lorg/mockito/exceptions/Reporter;.cannotInjectDependency(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Exception;)V#matchingMock#0#1').
name_ref(p_max_number_of_invocations_82, param, 'maxNumberOfInvocations', 'Lorg/mockito/exceptions/Reporter;.wantedAtMostX(II)V#maxNumberOfInvocations#0#0').
name_ref(p_message_391, param, 'message', 'Lorg/mockitoutil/TestBase;.assertThat<T:Ljava/lang/Object;>(Ljava/lang/String;TT;Lorg/hamcrest/Matcher<TT;>;)V#message#0#0').
name_ref(p_method_344, param, 'method', 'Lorg/mockito/internal/util/ObjectMethodsGuru;.isToString(Ljava/lang/reflect/Method;)Z#method#0#0').
name_ref(p_method_345, param, 'method', 'Lorg/mockito/internal/util/ObjectMethodsGuru;.isToString(Lorg/mockito/internal/invocation/MockitoMethod;)Z#method#0#0').
name_ref(p_method_346, param, 'method', 'Lorg/mockito/internal/util/ObjectMethodsGuru;.isEqualsMethod(Ljava/lang/reflect/Method;)Z#method#0#0').
name_ref(p_method_347, param, 'method', 'Lorg/mockito/internal/util/ObjectMethodsGuru;.isHashCodeMethod(Ljava/lang/reflect/Method;)Z#method#0#0').
name_ref(p_method_348, param, 'method', 'Lorg/mockito/internal/util/ObjectMethodsGuru;.isCompareToMethod(Ljava/lang/reflect/Method;)Z#method#0#0').
name_ref(p_method_name_407, param, 'methodName', 'Lorg/mockitoutil/TestBase;.invocationOf(Ljava/lang/Class<*>;Ljava/lang/String;[Ljava/lang/Object;)Lorg/mockito/invocation/Invocation;|Ljava/lang/NoSuchMethodException;#methodName#0#1').
name_ref(p_method_name_410, param, 'methodName', 'Lorg/mockitoutil/TestBase;.invocationOf(Ljava/lang/Class<*>;Ljava/lang/String;Lorg/mockito/internal/invocation/realmethod/RealMethod;)Lorg/mockito/invocation/Invocation;|Ljava/lang/NoSuchMethodException;#methodName#0#1').
name_ref(p_method_name_74, param, 'methodName', 'Lorg/mockito/exceptions/Reporter;.cannotStubVoidMethodWithAReturnValue(Ljava/lang/String;)V#methodName#0#0').
name_ref(p_method_name_77, param, 'methodName', 'Lorg/mockito/exceptions/Reporter;.wrongTypeOfReturnValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V#methodName#0#2').
name_ref(p_method_name_81, param, 'methodName', 'Lorg/mockito/exceptions/Reporter;.wrongTypeReturnedByDefaultAnswer(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V#methodName#0#3').
name_ref(p_mock_119, param, 'mock', 'Lorg/mockito/exceptions/Reporter;.delegatedMethodHasWrongReturnType(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;)V#mock#0#2').
name_ref(p_mock_122, param, 'mock', 'Lorg/mockito/exceptions/Reporter;.delegatedMethodDoesNotExistOnDelegate(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;)V#mock#0#1').
name_ref(p_mock_126, param, 'mock', 'Lorg/mockito/exceptions/Reporter;.safelyGetMockName(Ljava/lang/Object;)Lorg/mockito/mock/MockName;#mock#0#0').
name_ref(p_mock_312, param, 'mock', 'Lorg/mockito/internal/progress/MockingProgressImpl;.mockingStarted(Ljava/lang/Object;Ljava/lang/Class;)V#mock#0#0').
name_ref(p_mock_319, param, 'mock', 'Lorg/mockito/internal/progress/ThreadSafeMockingProgress;.mockingStarted(Ljava/lang/Object;Ljava/lang/Class;)V#mock#0#0').
name_ref(p_mock_335, param, 'mock', 'Lorg/mockito/internal/util/MockUtil;.resetMock<T:Ljava/lang/Object;>(TT;)V#mock#0#0').
name_ref(p_mock_336, param, 'mock', 'Lorg/mockito/internal/util/MockUtil;.getMockHandler<T:Ljava/lang/Object;>(TT;)Lorg/mockito/internal/InternalMockHandler<TT;>;#mock#0#0').
name_ref(p_mock_337, param, 'mock', 'Lorg/mockito/internal/util/MockUtil;.isMock(Ljava/lang/Object;)Z#mock#0#0').
name_ref(p_mock_338, param, 'mock', 'Lorg/mockito/internal/util/MockUtil;.isSpy(Ljava/lang/Object;)Z#mock#0#0').
name_ref(p_mock_339, param, 'mock', 'Lorg/mockito/internal/util/MockUtil;.isMockitoMock<T:Ljava/lang/Object;>(TT;)Z#mock#0#0').
name_ref(p_mock_340, param, 'mock', 'Lorg/mockito/internal/util/MockUtil;.getMockName(Ljava/lang/Object;)Lorg/mockito/mock/MockName;#mock#0#0').
name_ref(p_mock_341, param, 'mock', 'Lorg/mockito/internal/util/MockUtil;.maybeRedefineMockName(Ljava/lang/Object;Ljava/lang/String;)V#mock#0#0').
name_ref(p_mock_343, param, 'mock', 'Lorg/mockito/internal/util/MockUtil;.getMockSettings(Ljava/lang/Object;)Lorg/mockito/mock/MockCreationSettings;#mock#0#0').
name_ref(p_mock_356, param, 'mock', 'Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;.contains(Ljava/lang/Object;)Z#mock#0#0').
name_ref(p_mock_357, param, 'mock', 'Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;.add(Ljava/lang/Object;)Z#mock#0#0').
name_ref(p_mock_358, param, 'mock', 'Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;.remove(Ljava/lang/Object;)Z#mock#0#0').
name_ref(p_mock_78, param, 'mock', 'Lorg/mockito/exceptions/Reporter;.wrongTypeReturnedByDefaultAnswer(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V#mock#0#0').
name_ref(p_mock_candidates_189, param, 'mockCandidates', 'Lorg/mockito/internal/configuration/injection/ConstructorInjection;.processInjection(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/util/Set<Ljava/lang/Object;>;)Z#mockCandidates#0#2').
name_ref(p_mock_candidates_210, param, 'mockCandidates', 'Lorg/mockito/internal/configuration/injection/MockInjectionStrategy$465;.processInjection(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/util/Set<Ljava/lang/Object;>;)Z#mockCandidates#0#2').
name_ref(p_mock_candidates_215, param, 'mockCandidates', 'Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;.process(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/util/Set<Ljava/lang/Object;>;)Z#mockCandidates#0#2').
name_ref(p_mock_candidates_218, param, 'mockCandidates', 'Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;.processInjection(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/util/Set<Ljava/lang/Object;>;)Z#mockCandidates#0#2').
name_ref(p_mock_candidates_221, param, 'mockCandidates', 'Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;.relayProcessToNextStrategy(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/util/Set<Ljava/lang/Object;>;)Z#mockCandidates#0#2').
name_ref(p_mock_candidates_227, param, 'mockCandidates', 'Lorg/mockito/internal/configuration/injection/PropertyAndSetterInjection;.processInjection(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/util/Set<Ljava/lang/Object;>;)Z#mockCandidates#0#2').
name_ref(p_mock_candidates_240, param, 'mockCandidates', 'Lorg/mockito/internal/configuration/injection/SpyOnInjectedFieldsHandler;.processInjection(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/util/Set<Ljava/lang/Object;>;)Z#mockCandidates#0#2').
name_ref(p_mock_dependent_fields_257, param, 'mockDependentFields', 'Lorg/mockito/internal/configuration/injection/scanner/InjectMocksScanner;.addTo(Ljava/util/Set<Ljava/lang/reflect/Field;>;)V#mockDependentFields#0#0').
name_ref(p_mock_method_117, param, 'mockMethod', 'Lorg/mockito/exceptions/Reporter;.delegatedMethodHasWrongReturnType(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;)V#mockMethod#0#0').
name_ref(p_mock_method_121, param, 'mockMethod', 'Lorg/mockito/exceptions/Reporter;.delegatedMethodDoesNotExistOnDelegate(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;)V#mockMethod#0#0').
name_ref(p_mocked_type_106, param, 'mockedType', 'Lorg/mockito/exceptions/Reporter;.mockedTypeIsInconsistentWithDelegatedInstanceType(Ljava/lang/Class;Ljava/lang/Object;)V#mockedType#0#0').
name_ref(p_mocked_type_89, param, 'mockedType', 'Lorg/mockito/exceptions/Reporter;.mockedTypeIsInconsistentWithSpiedInstanceType(Ljava/lang/Class<*>;Ljava/lang/Object;)V#mockedType#0#0').
name_ref(p_mocks_148, param, 'mocks', 'Lorg/mockito/internal/configuration/DefaultInjectionEngine;.injectMocksOnFields(Ljava/util/Set<Ljava/lang/reflect/Field;>;Ljava/util/Set<Ljava/lang/Object;>;Ljava/lang/Object;)V#mocks#0#1').
name_ref(p_mocks_206, param, 'mocks', 'Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;.withMocks(Ljava/util/Set<Ljava/lang/Object;>;)Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;#mocks#0#0').
name_ref(p_mocks_231, param, 'mocks', 'Lorg/mockito/internal/configuration/injection/PropertyAndSetterInjection;.injectMockCandidates(Ljava/lang/Class<*>;Ljava/util/Set<Ljava/lang/Object;>;Ljava/lang/Object;)Z#mocks#0#1').
name_ref(p_mocks_233, param, 'mocks', 'Lorg/mockito/internal/configuration/injection/PropertyAndSetterInjection;.injectMockCandidatesOnFields(Ljava/util/Set<Ljava/lang/Object;>;Ljava/lang/Object;ZLjava/util/List<Ljava/lang/reflect/Field;>;)Z#mocks#0#0').
name_ref(p_mocks_241, param, 'mocks', 'Lorg/mockito/internal/configuration/injection/filter/FinalMockCandidateFilter;.filterCandidate(Ljava/util/Collection<Ljava/lang/Object;>;Ljava/lang/reflect/Field;Ljava/lang/Object;)Lorg/mockito/internal/configuration/injection/filter/OngoingInjecter;#mocks#0#0').
name_ref(p_mocks_247, param, 'mocks', 'Lorg/mockito/internal/configuration/injection/filter/NameBasedCandidateFilter;.filterCandidate(Ljava/util/Collection<Ljava/lang/Object;>;Ljava/lang/reflect/Field;Ljava/lang/Object;)Lorg/mockito/internal/configuration/injection/filter/OngoingInjecter;#mocks#0#0').
name_ref(p_mocks_252, param, 'mocks', 'Lorg/mockito/internal/configuration/injection/filter/TypeBasedCandidateFilter;.filterCandidate(Ljava/util/Collection<Ljava/lang/Object;>;Ljava/lang/reflect/Field;Ljava/lang/Object;)Lorg/mockito/internal/configuration/injection/filter/OngoingInjecter;#mocks#0#0').
name_ref(p_mocks_268, param, 'mocks', 'Lorg/mockito/internal/configuration/injection/scanner/MockScanner;.addPreparedMocks(Ljava/util/Set<Ljava/lang/Object;>;)V#mocks#0#0').
name_ref(p_mocks_362, param, 'mocks', 'Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;.removeAll(Ljava/util/Collection<*>;)Z#mocks#0#0').
name_ref(p_mocks_363, param, 'mocks', 'Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;.containsAll(Ljava/util/Collection<*>;)Z#mocks#0#0').
name_ref(p_mocks_364, param, 'mocks', 'Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;.addAll(Ljava/util/Collection<*>;)Z#mocks#0#0').
name_ref(p_mocks_365, param, 'mocks', 'Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;.retainAll(Ljava/util/Collection<*>;)Z#mocks#0#0').
name_ref(p_mocks_366, param, 'mocks', 'Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;.asWrappedMocks(Ljava/util/Collection<*>;)Ljava/util/HashSet<Lorg/mockito/internal/util/collections/HashCodeAndEqualsMockWrapper;>;#mocks#0#0').
name_ref(p_mocks_369, param, 'mocks', 'Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;.of([Ljava/lang/Object;)Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;#mocks#0#0').
name_ref(p_mocks_375, param, 'mocks', 'Lorg/mockito/internal/util/collections/Sets;.newMockSafeHashSet(Ljava/lang/Iterable<Ljava/lang/Object;>;)Ljava/util/Set<Ljava/lang/Object;>;#mocks#0#0').
name_ref(p_mocks_376, param, 'mocks', 'Lorg/mockito/internal/util/collections/Sets;.newMockSafeHashSet([Ljava/lang/Object;)Ljava/util/Set<Ljava/lang/Object;>;#mocks#0#0').
name_ref(p_mode_124, param, 'mode', 'Lorg/mockito/exceptions/Reporter;.usingConstructorWithFancySerializable(Lorg/mockito/mock/SerializableMode;)V#mode#0#0').
name_ref(p_needing_injection_147, param, 'needingInjection', 'Lorg/mockito/internal/configuration/DefaultInjectionEngine;.injectMocksOnFields(Ljava/util/Set<Ljava/lang/reflect/Field;>;Ljava/util/Set<Ljava/lang/Object;>;Ljava/lang/Object;)V#needingInjection#0#0').
name_ref(p_new_name_342, param, 'newName', 'Lorg/mockito/internal/util/MockUtil;.maybeRedefineMockName(Ljava/lang/Object;Ljava/lang/String;)V#newName#0#1').
name_ref(p_next_245, param, 'next', 'Lorg/mockito/internal/configuration/injection/filter/NameBasedCandidateFilter;.(Lorg/mockito/internal/configuration/injection/filter/MockCandidateFilter;)V#next#0#0').
name_ref(p_next_250, param, 'next', 'Lorg/mockito/internal/configuration/injection/filter/TypeBasedCandidateFilter;.(Lorg/mockito/internal/configuration/injection/filter/MockCandidateFilter;)V#next#0#0').
name_ref(p_o_359, param, 'o', 'Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;.equals(Ljava/lang/Object;)Z#o#0#0').
name_ref(p_o_387, param, 'o', 'Lorg/mockitoutil/TestBase;.assertThat<T:Ljava/lang/Object;>(TT;Lorg/mockitoutil/Assertor<TT;>;)V#o#0#0').
name_ref(p_o_413, param, 'o', 'Lorg/mockitoutil/TestBase;.isMock(Ljava/lang/Object;)Z#o#0#0').
name_ref(p_object_224, param, 'object', 'Lorg/mockito/internal/configuration/injection/PropertyAndSetterInjection$2653;.isOut(Ljava/lang/reflect/Field;)Z#object#0#0').
name_ref(p_objects_190, param, 'objects', 'Lorg/mockito/internal/configuration/injection/ConstructorInjection$SimpleArgumentResolver;.(Ljava/util/Set<Ljava/lang/Object;>;)V#objects#0#0').
name_ref(p_objects_370, param, 'objects', 'Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;.of(Ljava/lang/Iterable<Ljava/lang/Object;>;)Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;#objects#0#0').
name_ref(p_objects_416, param, 'objects', 'Lorg/mockitoutil/TestBase$5620;.matches(Ljava/util/Collection<*>;)Z#objects#0#0').
name_ref(p_of_instance_194, param, 'ofInstance', 'Lorg/mockito/internal/configuration/injection/MockInjection;.onField(Ljava/lang/reflect/Field;Ljava/lang/Object;)Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;#ofInstance#0#1').
name_ref(p_of_instance_196, param, 'ofInstance', 'Lorg/mockito/internal/configuration/injection/MockInjection;.onFields(Ljava/util/Set<Ljava/lang/reflect/Field;>;Ljava/lang/Object;)Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;#ofInstance#0#1').
name_ref(p_on_field_213, param, 'onField', 'Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;.process(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/util/Set<Ljava/lang/Object;>;)Z#onField#0#0').
name_ref(p_ordered_instance_fields_236, param, 'orderedInstanceFields', 'Lorg/mockito/internal/configuration/injection/PropertyAndSetterInjection;.injectMockCandidatesOnFields(Ljava/util/Set<Ljava/lang/Object;>;Ljava/lang/Object;ZLjava/util/List<Ljava/lang/reflect/Field;>;)Z#orderedInstanceFields#0#3').
name_ref(p_plugin_class_name_277, param, 'pluginClassName', 'Lorg/mockito/internal/configuration/plugins/DefaultPluginSwitch;.isEnabled(Ljava/lang/String;)Z#pluginClassName#0#0').
name_ref(p_plugin_switch_278, param, 'pluginSwitch', 'Lorg/mockito/internal/configuration/plugins/PluginFinder;.(Lorg/mockito/plugins/PluginSwitch;)V#pluginSwitch#0#0').
name_ref(p_plugin_switch_282, param, 'pluginSwitch', 'Lorg/mockito/internal/configuration/plugins/PluginLoader;.(Lorg/mockito/plugins/PluginSwitch;)V#pluginSwitch#0#0').
name_ref(p_plugin_type_284, param, 'pluginType', 'Lorg/mockito/internal/configuration/plugins/PluginLoader;.loadPlugin<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Ljava/lang/String;)TT;#pluginType#0#0').
name_ref(p_previous_46, param, 'previous', 'Lorg/mockito/exceptions/Reporter;.wantedButNotInvokedInOrder(Lorg/mockito/invocation/DescribedInvocation;Lorg/mockito/invocation/DescribedInvocation;)V#previous#0#1').
name_ref(p_primitive_or_wrapper_type_353, param, 'primitiveOrWrapperType', 'Lorg/mockito/internal/util/Primitives;.defaultValueForPrimitiveOrWrapper<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)TT;#primitiveOrWrapperType#0#0').
name_ref(p_real_method_411, param, 'realMethod', 'Lorg/mockitoutil/TestBase;.invocationOf(Ljava/lang/Class<*>;Ljava/lang/String;Lorg/mockito/internal/invocation/realmethod/RealMethod;)Lorg/mockito/invocation/Invocation;|Ljava/lang/NoSuchMethodException;#realMethod#0#2').
name_ref(p_recorded_matchers_32, param, 'recordedMatchers', 'Lorg/mockito/exceptions/Reporter;.invalidUseOfMatchers(ILjava/util/List<Lorg/mockito/internal/matchers/LocalizedMatcher;>;)V#recordedMatchers#0#1').
name_ref(p_resources_280, param, 'resources', 'Lorg/mockito/internal/configuration/plugins/PluginFinder;.findPluginClass(Ljava/lang/Iterable<Ljava/net/URL;>;)Ljava/lang/String;#resources#0#0').
name_ref(p_service_287, param, 'service', 'Lorg/mockito/internal/configuration/plugins/PluginLoader;.loadImpl<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)TT;#service#0#0').
name_ref(p_settings_334, param, 'settings', 'Lorg/mockito/internal/util/MockUtil;.createMock<T:Ljava/lang/Object;>(Lorg/mockito/mock/MockCreationSettings<TT;>;)TT;#settings#0#0').
name_ref(p_spied_instance_90, param, 'spiedInstance', 'Lorg/mockito/exceptions/Reporter;.mockedTypeIsInconsistentWithSpiedInstanceType(Ljava/lang/Class<*>;Ljava/lang/Object;)V#spiedInstance#0#1').
name_ref(p_strategy_211, param, 'strategy', 'Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;.thenTry(Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;)Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;#strategy#0#0').
name_ref(p_string_399, param, 'string', 'Lorg/mockitoutil/TestBase;.assertContains(Ljava/lang/String;Ljava/lang/String;)V#string#0#1').
name_ref(p_string_401, param, 'string', 'Lorg/mockitoutil/TestBase;.assertContainsIgnoringCase(Ljava/lang/String;Ljava/lang/String;)V#string#0#1').
name_ref(p_string_402, param, 'string', 'Lorg/mockitoutil/TestBase;.containsIgnoringCase(Ljava/lang/String;Ljava/lang/String;)Z#string#0#0').
name_ref(p_string_405, param, 'string', 'Lorg/mockitoutil/TestBase;.assertNotContains(Ljava/lang/String;Ljava/lang/String;)V#string#0#1').
name_ref(p_sub_398, param, 'sub', 'Lorg/mockitoutil/TestBase;.assertContains(Ljava/lang/String;Ljava/lang/String;)V#sub#0#0').
name_ref(p_sub_400, param, 'sub', 'Lorg/mockitoutil/TestBase;.assertContainsIgnoringCase(Ljava/lang/String;Ljava/lang/String;)V#sub#0#0').
name_ref(p_sub_403, param, 'sub', 'Lorg/mockitoutil/TestBase;.containsIgnoringCase(Ljava/lang/String;Ljava/lang/String;)Z#sub#0#1').
name_ref(p_sub_404, param, 'sub', 'Lorg/mockitoutil/TestBase;.assertNotContains(Ljava/lang/String;Ljava/lang/String;)V#sub#0#0').
name_ref(p_sub_matchers_count_299, param, 'subMatchersCount', 'Lorg/mockito/internal/progress/ArgumentMatcherStorageImpl;.assertStateFor(Ljava/lang/String;I)V#subMatchersCount#0#1').
name_ref(p_substring_394, param, 'substring', 'Lorg/mockitoutil/TestBase;.endsWith<T:Ljava/lang/Object;>(Ljava/lang/String;)Lorg/mockitoutil/Assertor<Ljava/lang/String;>;#substring#0#0').
name_ref(p_t_27, param, 't', 'Lorg/mockito/exceptions/Reporter;.checkedExceptionInvalid(Ljava/lang/Throwable;)V#t#0#0').
name_ref(p_target_382, param, 'target', 'Lorg/mockito/internal/util/reflection/FieldReader;.(Ljava/lang/Object;Ljava/lang/reflect/Field;)V#target#0#0').
name_ref(p_test_class_1, param, 'testClass', 'Lorg/mockito/MockitoAnnotations;.initMocks(Ljava/lang/Object;)V#testClass#0#0').
name_ref(p_test_class_10, param, 'testClass', 'Lorg/mockito/MockitoAnnotations;.processAnnotationDeprecatedWay(Lorg/mockito/configuration/AnnotationEngine;Ljava/lang/Object;Ljava/lang/reflect/Field;)V#testClass#0#1').
name_ref(p_test_class_5, param, 'testClass', 'Lorg/mockito/MockitoAnnotations;.scanDeprecatedWay(Lorg/mockito/configuration/AnnotationEngine;Ljava/lang/Object;Ljava/lang/Class<*>;)V#testClass#0#1').
name_ref(p_test_class_instance_149, param, 'testClassInstance', 'Lorg/mockito/internal/configuration/DefaultInjectionEngine;.injectMocksOnFields(Ljava/util/Set<Ljava/lang/reflect/Field;>;Ljava/util/Set<Ljava/lang/Object;>;Ljava/lang/Object;)V#testClassInstance#0#2').
name_ref(p_test_class_instance_165, param, 'testClassInstance', 'Lorg/mockito/internal/configuration/InjectingAnnotationEngine;.injectMocks(Ljava/lang/Object;)V#testClassInstance#0#0').
name_ref(p_test_instance_140, param, 'testInstance', 'Lorg/mockito/internal/configuration/DefaultAnnotationEngine;.process(Ljava/lang/Class<*>;Ljava/lang/Object;)V#testInstance#0#1').
name_ref(p_test_instance_158, param, 'testInstance', 'Lorg/mockito/internal/configuration/InjectingAnnotationEngine;.process(Ljava/lang/Class<*>;Ljava/lang/Object;)V#testInstance#0#1').
name_ref(p_test_instance_160, param, 'testInstance', 'Lorg/mockito/internal/configuration/InjectingAnnotationEngine;.processInjectMocks(Ljava/lang/Class<*>;Ljava/lang/Object;)V#testInstance#0#1').
name_ref(p_test_instance_163, param, 'testInstance', 'Lorg/mockito/internal/configuration/InjectingAnnotationEngine;.processIndependentAnnotations(Ljava/lang/Class<*>;Ljava/lang/Object;)V#testInstance#0#1').
name_ref(p_test_instance_176, param, 'testInstance', 'Lorg/mockito/internal/configuration/SpyAnnotationEngine;.process(Ljava/lang/Class<*>;Ljava/lang/Object;)V#testInstance#0#1').
name_ref(p_test_instance_179, param, 'testInstance', 'Lorg/mockito/internal/configuration/SpyAnnotationEngine;.assertNotInterface(Ljava/lang/Object;Ljava/lang/Class<*>;)V#testInstance#0#0').
name_ref(p_test_instance_181, param, 'testInstance', 'Lorg/mockito/internal/configuration/SpyAnnotationEngine;.newSpyInstance(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;|Ljava/lang/InstantiationException;|Ljava/lang/IllegalAccessException;|Ljava/lang/reflect/InvocationTargetException;#testInstance#0#0').
name_ref(p_type_180, param, 'type', 'Lorg/mockito/internal/configuration/SpyAnnotationEngine;.assertNotInterface(Ljava/lang/Object;Ljava/lang/Class<*>;)V#type#0#1').
name_ref(p_type_30, param, 'type', 'Lorg/mockito/exceptions/Reporter;.notAMockPassedToVerify(Ljava/lang/Class;)V#type#0#0').
name_ref(p_type_325, param, 'type', 'Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValues;.returnValueFor(Ljava/lang/Class<*>;)Ljava/lang/Object;#type#0#0').
name_ref(p_type_333, param, 'type', 'Lorg/mockito/internal/util/MockUtil;.isTypeMockable(Ljava/lang/Class<*>;)Z#type#0#0').
name_ref(p_type_352, param, 'type', 'Lorg/mockito/internal/util/Primitives;.isPrimitiveOrWrapper(Ljava/lang/Class<*>;)Z#type#0#0').
name_ref(p_type_406, param, 'type', 'Lorg/mockitoutil/TestBase;.invocationOf(Ljava/lang/Class<*>;Ljava/lang/String;[Ljava/lang/Object;)Lorg/mockito/invocation/Invocation;|Ljava/lang/NoSuchMethodException;#type#0#0').
name_ref(p_type_409, param, 'type', 'Lorg/mockitoutil/TestBase;.invocationOf(Ljava/lang/Class<*>;Ljava/lang/String;Lorg/mockito/internal/invocation/realmethod/RealMethod;)Lorg/mockito/invocation/Invocation;|Ljava/lang/NoSuchMethodException;#type#0#0').
name_ref(p_typed_array_361, param, 'typedArray', 'Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;.toArray<T:Ljava/lang/Object;>([TT;)[TT;#typedArray#0#0').
name_ref(p_undesired_70, param, 'undesired', 'Lorg/mockito/exceptions/Reporter;.noMoreInteractionsWanted(Lorg/mockito/invocation/Invocation;Ljava/util/List<Lorg/mockito/internal/exceptions/VerificationAwareInvocation;>;)V#undesired#0#0').
name_ref(p_undesired_72, param, 'undesired', 'Lorg/mockito/exceptions/Reporter;.noMoreInteractionsWantedInOrder(Lorg/mockito/invocation/Invocation;)V#undesired#0#0').
name_ref(p_undesired_annotation_one_92, param, 'undesiredAnnotationOne', 'Lorg/mockito/exceptions/Reporter;.unsupportedCombinationOfAnnotations(Ljava/lang/String;Ljava/lang/String;)V#undesiredAnnotationOne#0#0').
name_ref(p_undesired_annotation_two_93, param, 'undesiredAnnotationTwo', 'Lorg/mockito/exceptions/Reporter;.unsupportedCombinationOfAnnotations(Ljava/lang/String;Ljava/lang/String;)V#undesiredAnnotationTwo#0#1').
name_ref(p_undesired_annotations_185, param, 'undesiredAnnotations', 'Lorg/mockito/internal/configuration/SpyAnnotationEngine;.assertNoIncompatibleAnnotations(Ljava/lang/Class;Ljava/lang/reflect/Field;[Ljava/lang/Class;)V#undesiredAnnotations#0#2').
name_ref(p_value_327, param, 'value', 'Lorg/mockito/internal/util/Checks;.checkNotNull<T:Ljava/lang/Object;>(TT;Ljava/lang/String;)TT;#value#0#0').
name_ref(p_value_395, param, 'value', 'Lorg/mockitoutil/TestBase$2718;.assertValue(Ljava/lang/String;)V#value#0#0').
name_ref(p_verify_308, param, 'verify', 'Lorg/mockito/internal/progress/MockingProgressImpl;.verificationStarted(Lorg/mockito/verification/VerificationMode;)V#verify#0#0').
name_ref(p_verify_317, param, 'verify', 'Lorg/mockito/internal/progress/ThreadSafeMockingProgress;.verificationStarted(Lorg/mockito/verification/VerificationMode;)V#verify#0#0').
name_ref(p_wanted_38, param, 'wanted', 'Lorg/mockito/exceptions/Reporter;.argumentsAreDifferent(Ljava/lang/String;Ljava/lang/String;Lorg/mockito/invocation/Location;)V#wanted#0#0').
name_ref(p_wanted_41, param, 'wanted', 'Lorg/mockito/exceptions/Reporter;.wantedButNotInvoked(Lorg/mockito/invocation/DescribedInvocation;)V#wanted#0#0').
name_ref(p_wanted_42, param, 'wanted', 'Lorg/mockito/exceptions/Reporter;.wantedButNotInvoked(Lorg/mockito/invocation/DescribedInvocation;Ljava/util/List<+Lorg/mockito/invocation/DescribedInvocation;>;)V#wanted#0#0').
name_ref(p_wanted_44, param, 'wanted', 'Lorg/mockito/exceptions/Reporter;.createWantedButNotInvokedMessage(Lorg/mockito/invocation/DescribedInvocation;)Ljava/lang/String;#wanted#0#0').
name_ref(p_wanted_45, param, 'wanted', 'Lorg/mockito/exceptions/Reporter;.wantedButNotInvokedInOrder(Lorg/mockito/invocation/DescribedInvocation;Lorg/mockito/invocation/DescribedInvocation;)V#wanted#0#0').
name_ref(p_wanted_49, param, 'wanted', 'Lorg/mockito/exceptions/Reporter;.tooManyActualInvocations(IILorg/mockito/invocation/DescribedInvocation;Lorg/mockito/invocation/Location;)V#wanted#0#2').
name_ref(p_wanted_53, param, 'wanted', 'Lorg/mockito/exceptions/Reporter;.createTooManyInvocationsMessage(IILorg/mockito/invocation/DescribedInvocation;Lorg/mockito/invocation/Location;)Ljava/lang/String;#wanted#0#2').
name_ref(p_wanted_55, param, 'wanted', 'Lorg/mockito/exceptions/Reporter;.neverWantedButInvoked(Lorg/mockito/invocation/DescribedInvocation;Lorg/mockito/invocation/Location;)V#wanted#0#0').
name_ref(p_wanted_59, param, 'wanted', 'Lorg/mockito/exceptions/Reporter;.tooManyActualInvocationsInOrder(IILorg/mockito/invocation/DescribedInvocation;Lorg/mockito/invocation/Location;)V#wanted#0#2').
name_ref(p_wanted_62, param, 'wanted', 'Lorg/mockito/exceptions/Reporter;.createTooLittleInvocationsMessage(Lorg/mockito/internal/reporting/Discrepancy;Lorg/mockito/invocation/DescribedInvocation;Lorg/mockito/invocation/Location;)Ljava/lang/String;#wanted#0#1').
name_ref(p_wanted_65, param, 'wanted', 'Lorg/mockito/exceptions/Reporter;.tooLittleActualInvocations(Lorg/mockito/internal/reporting/Discrepancy;Lorg/mockito/invocation/DescribedInvocation;Lorg/mockito/invocation/Location;)V#wanted#0#1').
name_ref(p_wanted_68, param, 'wanted', 'Lorg/mockito/exceptions/Reporter;.tooLittleActualInvocationsInOrder(Lorg/mockito/internal/reporting/Discrepancy;Lorg/mockito/invocation/DescribedInvocation;Lorg/mockito/invocation/Location;)V#wanted#0#1').
name_ref(p_wanted_count_47, param, 'wantedCount', 'Lorg/mockito/exceptions/Reporter;.tooManyActualInvocations(IILorg/mockito/invocation/DescribedInvocation;Lorg/mockito/invocation/Location;)V#wantedCount#0#0').
name_ref(p_wanted_count_51, param, 'wantedCount', 'Lorg/mockito/exceptions/Reporter;.createTooManyInvocationsMessage(IILorg/mockito/invocation/DescribedInvocation;Lorg/mockito/invocation/Location;)Ljava/lang/String;#wantedCount#0#0').
name_ref(p_wanted_count_57, param, 'wantedCount', 'Lorg/mockito/exceptions/Reporter;.tooManyActualInvocationsInOrder(IILorg/mockito/invocation/DescribedInvocation;Lorg/mockito/invocation/Location;)V#wantedCount#0#0').
name_ref(p_will_return_last_parameter_109, param, 'willReturnLastParameter', 'Lorg/mockito/exceptions/Reporter;.invalidArgumentPositionRangeAtInvocationTime(Lorg/mockito/invocation/InvocationOnMock;ZI)I#willReturnLastParameter#0#1').
name_ref(p_wrong_type_87, param, 'wrongType', 'Lorg/mockito/exceptions/Reporter;.extraInterfacesAcceptsOnlyInterfaces(Ljava/lang/Class<*>;)V#wrongType#0#0').
name_ref(p_wrong_type_88, param, 'wrongType', 'Lorg/mockito/exceptions/Reporter;.extraInterfacesCannotContainMockedType(Ljava/lang/Class<*>;)V#wrongType#0#0').
name_ref(f_annotation_processor_map_131, field, 'annotationProcessorMap', 'Lorg/mockito/internal/configuration/DefaultAnnotationEngine;.annotationProcessorMap)Ljava/util/Map<Ljava/lang/Class<Ljava/lang/Class;{0}+Ljava/lang/annotation/Annotation;>;Lorg/mockito/internal/configuration/FieldAnnotationProcessor<Lorg/mockito/internal/configuration/FieldAnnotationProcessor;{0}*>;>;').
name_ref(f_argument_matcher_storage_305, field, 'argumentMatcherStorage', 'Lorg/mockito/internal/progress/MockingProgressImpl;.argumentMatcherStorage)Lorg/mockito/internal/progress/ArgumentMatcherStorage;').
name_ref(f_backing_hash_set_354, field, 'backingHashSet', 'Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;.backingHashSet)Ljava/util/HashSet<Lorg/mockito/internal/util/collections/HashCodeAndEqualsMockWrapper;>;').
name_ref(f_changer_381, field, 'changer', 'Lorg/mockito/internal/util/reflection/FieldReader;.changer)Lorg/mockito/internal/util/reflection/AccessibilityChanger;').
name_ref(f_clazz_256, field, 'clazz', 'Lorg/mockito/internal/configuration/injection/scanner/InjectMocksScanner;.clazz)Ljava/lang/Class<Ljava/lang/Class;{0}*>;').
name_ref(f_clazz_267, field, 'clazz', 'Lorg/mockito/internal/configuration/injection/scanner/MockScanner;.clazz)Ljava/lang/Class<Ljava/lang/Class;{0}*>;').
name_ref(f_cleans_stack_trace_21, field, 'cleansStackTrace', 'Lorg/mockito/configuration/MockitoConfiguration;.cleansStackTrace)Z').
name_ref(f_delegate_153, field, 'delegate', 'Lorg/mockito/internal/configuration/InjectingAnnotationEngine;.delegate)Lorg/mockito/configuration/AnnotationEngine;').
name_ref(f_enable_class_cache_18, field, 'enableClassCache', 'Lorg/mockito/configuration/MockitoConfiguration;.enableClassCache)Z').
name_ref(f_field_385, field, 'field', 'Lorg/mockito/internal/util/reflection/FieldReader;.field)Ljava/lang/reflect/Field;').
name_ref(f_field_owner_205, field, 'fieldOwner', 'Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;.fieldOwner)Ljava/lang/Object;').
name_ref(f_fields_197, field, 'fields', 'Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;.fields)Ljava/util/Set<Ljava/lang/reflect/Field;>;').
name_ref(f_global_configuration_150, field, 'GLOBAL_CONFIGURATION', 'Lorg/mockito/internal/configuration/GlobalConfiguration;.GLOBAL_CONFIGURATION)Ljava/lang/ThreadLocal<Lorg/mockito/configuration/IMockitoConfiguration;>;').
name_ref(f_i_ongoing_stubbing_309, field, 'iOngoingStubbing', 'Lorg/mockito/internal/progress/MockingProgressImpl;.iOngoingStubbing)Lorg/mockito/internal/progress/IOngoingStubbing;').
name_ref(f_injection_strategies_199, field, 'injectionStrategies', 'Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;.injectionStrategies)Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;').
name_ref(f_instance_266, field, 'instance', 'Lorg/mockito/internal/configuration/injection/scanner/MockScanner;.instance)Ljava/lang/Object;').
name_ref(f_iterator_355, field, 'iterator', 'Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet$1106;.iterator)Ljava/util/Iterator<Lorg/mockito/internal/util/collections/HashCodeAndEqualsMockWrapper;>;').
name_ref(f_matcher_stack_296, field, 'matcherStack', 'Lorg/mockito/internal/progress/ArgumentMatcherStorageImpl;.matcherStack)Ljava/util/Stack<Lorg/mockito/internal/matchers/LocalizedMatcher;>;').
name_ref(f_methods_guru_322, field, 'methodsGuru', 'Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValues;.methodsGuru)Lorg/mockito/internal/util/ObjectMethodsGuru;').
name_ref(f_mock_candidate_filter_222, field, 'mockCandidateFilter', 'Lorg/mockito/internal/configuration/injection/PropertyAndSetterInjection;.mockCandidateFilter)Lorg/mockito/internal/configuration/injection/filter/MockCandidateFilter;').
name_ref(f_mock_maker_292, field, 'mockMaker', 'Lorg/mockito/internal/configuration/plugins/PluginRegistry;.mockMaker)Lorg/mockito/plugins/MockMaker;').
name_ref(f_mock_maker_332, field, 'mockMaker', 'Lorg/mockito/internal/util/MockUtil;.mockMaker)Lorg/mockito/plugins/MockMaker;').
name_ref(f_mock_util_244, field, 'mockUtil', 'Lorg/mockito/internal/configuration/injection/filter/NameBasedCandidateFilter;.mockUtil)Lorg/mockito/internal/util/MockUtil;').
name_ref(f_mock_util_263, field, 'mockUtil', 'Lorg/mockito/internal/configuration/injection/scanner/MockScanner;.mockUtil)Lorg/mockito/internal/util/MockUtil;').
name_ref(f_mock_util_323, field, 'mockUtil', 'Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValues;.mockUtil)Lorg/mockito/internal/util/MockUtil;').
name_ref(f_mocking_progress_16, field, 'mockingProgress', 'Lorg/mockito/StateMaster;.mockingProgress)Lorg/mockito/internal/progress/ThreadSafeMockingProgress;').
name_ref(f_mocking_progress_315, field, 'mockingProgress', 'Lorg/mockito/internal/progress/ThreadSafeMockingProgress;.mockingProgress)Ljava/lang/ThreadLocal<Lorg/mockito/internal/progress/MockingProgress;>;').
name_ref(f_mockito_configuration_class_name_130, field, 'MOCKITO_CONFIGURATION_CLASS_NAME', 'Lorg/mockito/internal/configuration/ClassPathLoader;.MOCKITO_CONFIGURATION_CLASS_NAME)Ljava/lang/String;').
name_ref(f_mocks_198, field, 'mocks', 'Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;.mocks)Ljava/util/Set<Ljava/lang/Object;>;').
name_ref(f_next_246, field, 'next', 'Lorg/mockito/internal/configuration/injection/filter/NameBasedCandidateFilter;.next)Lorg/mockito/internal/configuration/injection/filter/MockCandidateFilter;').
name_ref(f_next_251, field, 'next', 'Lorg/mockito/internal/configuration/injection/filter/TypeBasedCandidateFilter;.next)Lorg/mockito/internal/configuration/injection/filter/MockCandidateFilter;').
name_ref(f_next_strategy_212, field, 'nextStrategy', 'Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;.nextStrategy)Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;').
name_ref(f_not_final_or_static_223, field, 'notFinalOrStatic', 'Lorg/mockito/internal/configuration/injection/PropertyAndSetterInjection;.notFinalOrStatic)Lorg/mockito/internal/util/collections/ListUtil$Filter<Ljava/lang/reflect/Field;>;').
name_ref(f_overridden_default_answer_17, field, 'overriddenDefaultAnswer', 'Lorg/mockito/configuration/MockitoConfiguration;.overriddenDefaultAnswer)Lorg/mockito/stubbing/Answer<Ljava/lang/Object;>;').
name_ref(f_overridden_engine_24, field, 'overriddenEngine', 'Lorg/mockito/configuration/MockitoConfiguration;.overriddenEngine)Lorg/mockito/configuration/AnnotationEngine;').
name_ref(f_plugin_switch_279, field, 'pluginSwitch', 'Lorg/mockito/internal/configuration/plugins/PluginFinder;.pluginSwitch)Lorg/mockito/plugins/PluginSwitch;').
name_ref(f_plugin_switch_283, field, 'pluginSwitch', 'Lorg/mockito/internal/configuration/plugins/PluginLoader;.pluginSwitch)Lorg/mockito/plugins/PluginSwitch;').
name_ref(f_plugin_switch_291, field, 'pluginSwitch', 'Lorg/mockito/internal/configuration/plugins/PluginRegistry;.pluginSwitch)Lorg/mockito/plugins/PluginSwitch;').
name_ref(f_post_injection_strategies_200, field, 'postInjectionStrategies', 'Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;.postInjectionStrategies)Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;').
name_ref(f_primitive_or_wrapper_default_values_350, field, 'PRIMITIVE_OR_WRAPPER_DEFAULT_VALUES', 'Lorg/mockito/internal/util/Primitives;.PRIMITIVE_OR_WRAPPER_DEFAULT_VALUES)Ljava/util/Map<Ljava/lang/Class<Ljava/lang/Class;{0}*>;Ljava/lang/Object;>;').
name_ref(f_primitive_types_349, field, 'PRIMITIVE_TYPES', 'Lorg/mockito/internal/util/Primitives;.PRIMITIVE_TYPES)Ljava/util/Map<Ljava/lang/Class<Ljava/lang/Class;{0}*>;Ljava/lang/Class<Ljava/lang/Class;{0}*>;>;').
name_ref(f_registry_294, field, 'registry', 'Lorg/mockito/internal/configuration/plugins/Plugins;.registry)Lorg/mockito/internal/configuration/plugins/PluginRegistry;').
name_ref(f_reporter_304, field, 'reporter', 'Lorg/mockito/internal/progress/MockingProgressImpl;.reporter)Lorg/mockito/exceptions/Reporter;').
name_ref(f_spy_annotation_engine_154, field, 'spyAnnotationEngine', 'Lorg/mockito/internal/configuration/InjectingAnnotationEngine;.spyAnnotationEngine)Lorg/mockito/configuration/AnnotationEngine;').
name_ref(f_stack_trace_cleaner_provider_293, field, 'stackTraceCleanerProvider', 'Lorg/mockito/internal/configuration/plugins/PluginRegistry;.stackTraceCleanerProvider)Lorg/mockito/plugins/StackTraceCleanerProvider;').
name_ref(f_stubbing_in_progress_306, field, 'stubbingInProgress', 'Lorg/mockito/internal/progress/MockingProgressImpl;.stubbingInProgress)Lorg/mockito/invocation/Location;').
name_ref(f_target_384, field, 'target', 'Lorg/mockito/internal/util/reflection/FieldReader;.target)Ljava/lang/Object;').
name_ref(f_values_326, field, 'values', 'Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValuesTest;.values)Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValues;').
name_ref(f_verification_mode_310, field, 'verificationMode', 'Lorg/mockito/internal/progress/MockingProgressImpl;.verificationMode)Lorg/mockito/internal/debugging/Localized<Lorg/mockito/verification/VerificationMode;>;').
name_ref(f_was_accessible_378, field, 'wasAccessible', 'Lorg/mockito/internal/util/reflection/AccessibilityChanger;.wasAccessible)Ljava/lang/Boolean;').
name_ref(m__184, method, '', 'Lorg/mockito/internal/configuration/injection/MockInjectionStrategy$465;.()V').
name_ref(m__192, method, '', 'Lorg/mockito/internal/configuration/injection/PropertyAndSetterInjection$2653;.()V').
name_ref(m__31, method, '', 'Lorg/mockito/configuration/MockitoConfiguration$1883;.()V').
name_ref(m__315, method, '', 'Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet$1106;.()V').
name_ref(m_accessibility_changer_352, method, 'AccessibilityChanger', 'Lorg/mockito/internal/util/reflection/AccessibilityChanger;.()V').
name_ref(m_add_323, method, 'add', 'Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;.add(Ljava/lang/Object;)Z').
name_ref(m_add_all_179, method, 'addAll', 'Ljava/util/Set;.addAll(Ljava/util/Collection<+TE;>;)Z').
name_ref(m_add_all_334, method, 'addAll', 'Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;.addAll(Ljava/util/Collection<*>;)Z').
name_ref(m_add_all_335, method, 'addAll', 'Ljava/util/AbstractCollection;.addAll(Ljava/util/Collection<+TE;>;)Z').
name_ref(m_add_prepared_mocks_157, method, 'addPreparedMocks', 'Lorg/mockito/internal/configuration/injection/scanner/MockScanner;.addPreparedMocks(Ljava/util/Set<Ljava/lang/Object;>;)V').
name_ref(m_add_to_155, method, 'addTo', 'Lorg/mockito/internal/configuration/injection/scanner/InjectMocksScanner;.addTo(Ljava/util/Set<Ljava/lang/reflect/Field;>;)V').
name_ref(m_answer_284, method, 'answer', 'Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValues;.answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;').
name_ref(m_apply_130, method, 'apply', 'Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;.apply()V').
name_ref(m_argument_matcher_storage_impl_251, method, 'ArgumentMatcherStorageImpl', 'Lorg/mockito/internal/progress/ArgumentMatcherStorageImpl;.()V').
name_ref(m_arguments_are_different_57, method, 'argumentsAreDifferent', 'Lorg/mockito/exceptions/Reporter;.argumentsAreDifferent(Ljava/lang/String;Ljava/lang/String;Lorg/mockito/invocation/Location;)V').
name_ref(m_as_list_341, method, 'asList', 'Ljava/util/Arrays;.asList<T:Ljava/lang/Object;>([TT;)Ljava/util/List<TT;>;').
name_ref(m_as_wrapped_mocks_336, method, 'asWrappedMocks', 'Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;.asWrappedMocks(Ljava/util/Collection<*>;)Ljava/util/HashSet<Lorg/mockito/internal/util/collections/HashCodeAndEqualsMockWrapper;>;').
name_ref(m_assert_contains_367, method, 'assertContains', 'Lorg/mockitoutil/TestBase;.assertContains(Ljava/lang/String;Ljava/lang/String;)V').
name_ref(m_assert_contains_ignoring_case_368, method, 'assertContainsIgnoringCase', 'Lorg/mockitoutil/TestBase;.assertContainsIgnoringCase(Ljava/lang/String;Ljava/lang/String;)V').
name_ref(m_assert_contains_type_375, method, 'assertContainsType', 'Lorg/mockitoutil/TestBase;.assertContainsType(Ljava/util/Collection<*>;Ljava/lang/Class<*>;)V').
name_ref(m_assert_false_290, method, 'assertFalse', 'Ljunit/framework/Assert;.assertFalse(Z)V').
name_ref(m_assert_incorrect_use_of_additional_matchers_245, method, 'assertIncorrectUseOfAdditionalMatchers', 'Lorg/mockito/internal/progress/ArgumentMatcherStorageImpl;.assertIncorrectUseOfAdditionalMatchers(Ljava/lang/String;I)V').
name_ref(m_assert_matchers_found_for_244, method, 'assertMatchersFoundFor', 'Lorg/mockito/internal/progress/ArgumentMatcherStorageImpl;.assertMatchersFoundFor(Ljava/lang/String;)V').
name_ref(m_assert_no_annotations_208, method, 'assertNoAnnotations', 'Lorg/mockito/internal/configuration/injection/scanner/InjectMocksScanner;.assertNoAnnotations(Ljava/lang/reflect/Field;[Ljava/lang/Class;)V').
name_ref(m_assert_no_incompatible_annotations_167, method, 'assertNoIncompatibleAnnotations', 'Lorg/mockito/internal/configuration/SpyAnnotationEngine;.assertNoIncompatibleAnnotations(Ljava/lang/Class;Ljava/lang/reflect/Field;[Ljava/lang/Class;)V').
name_ref(m_assert_not_contains_370, method, 'assertNotContains', 'Lorg/mockitoutil/TestBase;.assertNotContains(Ljava/lang/String;Ljava/lang/String;)V').
name_ref(m_assert_not_equals_366, method, 'assertNotEquals', 'Lorg/mockitoutil/TestBase;.assertNotEquals(Ljava/lang/Object;Ljava/lang/Object;)V').
name_ref(m_assert_not_interface_165, method, 'assertNotInterface', 'Lorg/mockito/internal/configuration/SpyAnnotationEngine;.assertNotInterface(Ljava/lang/Object;Ljava/lang/Class<*>;)V').
name_ref(m_assert_state_for_242, method, 'assertStateFor', 'Lorg/mockito/internal/progress/ArgumentMatcherStorageImpl;.assertStateFor(Ljava/lang/String;I)V').
name_ref(m_assert_that_361, method, 'assertThat', 'Lorg/mockitoutil/TestBase;.assertThat<T:Ljava/lang/Object;>(TT;Lorg/mockitoutil/Assertor<TT;>;)V').
name_ref(m_assert_that_362, method, 'assertThat', 'Lorg/mockitoutil/TestBase;.assertThat<T:Ljava/lang/Object;>(TT;Lorg/hamcrest/Matcher<TT;>;)V').
name_ref(m_assert_that_363, method, 'assertThat', 'Lorg/mockitoutil/TestBase;.assertThat<T:Ljava/lang/Object;>(Ljava/lang/String;TT;Lorg/hamcrest/Matcher<TT;>;)V').
name_ref(m_assert_value_365, method, 'assertValue', 'Lorg/mockitoutil/TestBase$2718;.assertValue(Ljava/lang/String;)V').
name_ref(m_at_most_and_never_should_not_be_used_with_timeout_91, method, 'atMostAndNeverShouldNotBeUsedWithTimeout', 'Lorg/mockito/exceptions/Reporter;.atMostAndNeverShouldNotBeUsedWithTimeout()V').
name_ref(m_cannot_call_abstract_real_method_85, method, 'cannotCallAbstractRealMethod', 'Lorg/mockito/exceptions/Reporter;.cannotCallAbstractRealMethod()V').
name_ref(m_cannot_create_timer_with_negative_duration_time_109, method, 'cannotCreateTimerWithNegativeDurationTime', 'Lorg/mockito/exceptions/Reporter;.cannotCreateTimerWithNegativeDurationTime(J)V').
name_ref(m_cannot_initialize_for_inject_mocks_annotation_90, method, 'cannotInitializeForInjectMocksAnnotation', 'Lorg/mockito/exceptions/Reporter;.cannotInitializeForInjectMocksAnnotation(Ljava/lang/String;Ljava/lang/Exception;)V').
name_ref(m_cannot_initialize_for_spy_annotation_89, method, 'cannotInitializeForSpyAnnotation', 'Lorg/mockito/exceptions/Reporter;.cannotInitializeForSpyAnnotation(Ljava/lang/String;Ljava/lang/Exception;)V').
name_ref(m_cannot_inject_dependency_96, method, 'cannotInjectDependency', 'Lorg/mockito/exceptions/Reporter;.cannotInjectDependency(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Exception;)V').
name_ref(m_cannot_mock_final_class_71, method, 'cannotMockFinalClass', 'Lorg/mockito/exceptions/Reporter;.cannotMockFinalClass(Ljava/lang/Class<*>;)V').
name_ref(m_cannot_stub_void_method_with_areturn_value_72, method, 'cannotStubVoidMethodWithAReturnValue', 'Lorg/mockito/exceptions/Reporter;.cannotStubVoidMethodWithAReturnValue(Ljava/lang/String;)V').
name_ref(m_cannot_stub_with_null_throwable_36, method, 'cannotStubWithNullThrowable', 'Lorg/mockito/exceptions/Reporter;.cannotStubWithNullThrowable()V').
name_ref(m_cannot_verify_to_string_86, method, 'cannotVerifyToString', 'Lorg/mockito/exceptions/Reporter;.cannotVerifyToString()V').
name_ref(m_captor_annotation_processor_122, method, 'CaptorAnnotationProcessor', 'Lorg/mockito/internal/configuration/CaptorAnnotationProcessor;.()V').
name_ref(m_cast_223, method, 'cast', 'Ljava/lang/Class;.cast(Ljava/lang/Object;)TT;').
name_ref(m_check_items_not_null_180, method, 'checkItemsNotNull', 'Lorg/mockito/internal/util/Checks;.checkItemsNotNull<T::Ljava/lang/Iterable;>(TT;Ljava/lang/String;)TT;').
name_ref(m_check_not_null_178, method, 'checkNotNull', 'Lorg/mockito/internal/util/Checks;.checkNotNull<T:Ljava/lang/Object;>(TT;Ljava/lang/String;)TT;').
name_ref(m_checked_exception_invalid_35, method, 'checkedExceptionInvalid', 'Lorg/mockito/exceptions/Reporter;.checkedExceptionInvalid(Ljava/lang/Throwable;)V').
name_ref(m_class_path_loader_140, method, 'ClassPathLoader', 'Lorg/mockito/internal/configuration/ClassPathLoader;.()V').
name_ref(m_clean_up_config_in_any_case_355, method, 'cleanUpConfigInAnyCase', 'Lorg/mockitoutil/TestBase;.cleanUpConfigInAnyCase()V').
name_ref(m_cleans_stack_trace_144, method, 'cleansStackTrace', 'Lorg/mockito/internal/configuration/GlobalConfiguration;.cleansStackTrace()Z').
name_ref(m_cleans_stack_trace_23, method, 'cleansStackTrace', 'Lorg/mockito/configuration/DefaultMockitoConfiguration;.cleansStackTrace()Z').
name_ref(m_cleans_stack_trace_33, method, 'cleansStackTrace', 'Lorg/mockito/configuration/MockitoConfiguration;.cleansStackTrace()Z').
name_ref(m_clear_249, method, 'clear', 'Ljava/util/Vector;.clear()V').
name_ref(m_clear_325, method, 'clear', 'Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;.clear()V').
name_ref(m_clone_326, method, 'clone', 'Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;.clone()Ljava/lang/Object;|Ljava/lang/CloneNotSupportedException;').
name_ref(m_constructor_injection_168, method, 'ConstructorInjection', 'Lorg/mockito/internal/configuration/injection/ConstructorInjection;.()V').
name_ref(m_constructor_injection_169, method, 'ConstructorInjection', 'Lorg/mockito/internal/configuration/injection/ConstructorInjection;.(Lorg/mockito/internal/util/reflection/FieldInitializer$ConstructorArgumentResolver;)V').
name_ref(m_contains_322, method, 'contains', 'Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;.contains(Ljava/lang/Object;)Z').
name_ref(m_contains_all_333, method, 'containsAll', 'Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;.containsAll(Ljava/util/Collection<*>;)Z').
name_ref(m_contains_ignoring_case_369, method, 'containsIgnoringCase', 'Lorg/mockitoutil/TestBase;.containsIgnoringCase(Ljava/lang/String;Ljava/lang/String;)Z').
name_ref(m_contains_key_312, method, 'containsKey', 'Ljava/util/Map;.containsKey(Ljava/lang/Object;)Z').
name_ref(m_create_config_139, method, 'createConfig', 'Lorg/mockito/internal/configuration/GlobalConfiguration;.createConfig()Lorg/mockito/configuration/IMockitoConfiguration;').
name_ref(m_create_mock_297, method, 'createMock', 'Lorg/mockito/internal/util/MockUtil;.createMock<T:Ljava/lang/Object;>(Lorg/mockito/mock/MockCreationSettings<TT;>;)TT;').
name_ref(m_create_mock_for_123, method, 'createMockFor', 'Lorg/mockito/internal/configuration/DefaultAnnotationEngine;.createMockFor(Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Field;)Ljava/lang/Object;').
name_ref(m_create_mock_for_148, method, 'createMockFor', 'Lorg/mockito/internal/configuration/InjectingAnnotationEngine;.createMockFor(Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Field;)Ljava/lang/Object;').
name_ref(m_create_mock_for_162, method, 'createMockFor', 'Lorg/mockito/internal/configuration/SpyAnnotationEngine;.createMockFor(Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Field;)Ljava/lang/Object;').
name_ref(m_create_mock_for_32, method, 'createMockFor', 'Lorg/mockito/configuration/MockitoConfiguration$1883;.createMockFor(Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Field;)Ljava/lang/Object;').
name_ref(m_create_too_little_invocations_message_66, method, 'createTooLittleInvocationsMessage', 'Lorg/mockito/exceptions/Reporter;.createTooLittleInvocationsMessage(Lorg/mockito/internal/reporting/Discrepancy;Lorg/mockito/invocation/DescribedInvocation;Lorg/mockito/invocation/Location;)Ljava/lang/String;').
name_ref(m_create_too_many_invocations_message_63, method, 'createTooManyInvocationsMessage', 'Lorg/mockito/exceptions/Reporter;.createTooManyInvocationsMessage(IILorg/mockito/invocation/DescribedInvocation;Lorg/mockito/invocation/Location;)Ljava/lang/String;').
name_ref(m_create_wanted_but_not_invoked_message_60, method, 'createWantedButNotInvokedMessage', 'Lorg/mockito/exceptions/Reporter;.createWantedButNotInvokedMessage(Lorg/mockito/invocation/DescribedInvocation;)Ljava/lang/String;').
name_ref(m_current_thread_225, method, 'currentThread', 'Ljava/lang/Thread;.currentThread()Ljava/lang/Thread;').
name_ref(m_default_annotation_engine_118, method, 'DefaultAnnotationEngine', 'Lorg/mockito/internal/configuration/DefaultAnnotationEngine;.()V').
name_ref(m_default_answer_does_not_accept_null_parameter_104, method, 'defaultAnswerDoesNotAcceptNullParameter', 'Lorg/mockito/exceptions/Reporter;.defaultAnswerDoesNotAcceptNullParameter()V').
name_ref(m_default_injection_engine_159, method, 'DefaultInjectionEngine', 'Lorg/mockito/internal/configuration/DefaultInjectionEngine;.()V').
name_ref(m_default_mockito_configuration_6, method, 'DefaultMockitoConfiguration', 'Lorg/mockito/configuration/DefaultMockitoConfiguration;.()V').
name_ref(m_default_plugin_switch_229, method, 'DefaultPluginSwitch', 'Lorg/mockito/internal/configuration/plugins/DefaultPluginSwitch;.()V').
name_ref(m_default_value_for_primitive_or_wrapper_313, method, 'defaultValueForPrimitiveOrWrapper', 'Lorg/mockito/internal/util/Primitives;.defaultValueForPrimitiveOrWrapper<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)TT;').
name_ref(m_delegated_method_does_not_exist_on_delegate_107, method, 'delegatedMethodDoesNotExistOnDelegate', 'Lorg/mockito/exceptions/Reporter;.delegatedMethodDoesNotExistOnDelegate(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;)V').
name_ref(m_delegated_method_has_wrong_return_type_106, method, 'delegatedMethodHasWrongReturnType', 'Lorg/mockito/exceptions/Reporter;.delegatedMethodHasWrongReturnType(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;)V').
name_ref(m_describe_373, method, 'describe', 'Lorg/mockitoutil/TestBase;.describe(Lorg/hamcrest/SelfDescribing;)Ljava/lang/String;').
name_ref(m_enable_access_349, method, 'enableAccess', 'Lorg/mockito/internal/util/reflection/AccessibilityChanger;.enableAccess(Ljava/lang/reflect/AccessibleObject;)V').
name_ref(m_enable_class_cache_145, method, 'enableClassCache', 'Lorg/mockito/internal/configuration/GlobalConfiguration;.enableClassCache()Z').
name_ref(m_enable_class_cache_24, method, 'enableClassCache', 'Lorg/mockito/configuration/DefaultMockitoConfiguration;.enableClassCache()Z').
name_ref(m_enable_class_cache_34, method, 'enableClassCache', 'Lorg/mockito/configuration/MockitoConfiguration;.enableClassCache()Z').
name_ref(m_ends_with_364, method, 'endsWith', 'Lorg/mockitoutil/TestBase;.endsWith<T:Ljava/lang/Object;>(Ljava/lang/String;)Lorg/mockitoutil/Assertor<Ljava/lang/String;>;').
name_ref(m_equals_327, method, 'equals', 'Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;.equals(Ljava/lang/Object;)Z').
name_ref(m_exception_cause_message_if_available_97, method, 'exceptionCauseMessageIfAvailable', 'Lorg/mockito/exceptions/Reporter;.exceptionCauseMessageIfAvailable(Ljava/lang/Exception;)Ljava/lang/String;').
name_ref(m_extra_interfaces_accepts_only_interfaces_81, method, 'extraInterfacesAcceptsOnlyInterfaces', 'Lorg/mockito/exceptions/Reporter;.extraInterfacesAcceptsOnlyInterfaces(Ljava/lang/Class<*>;)V').
name_ref(m_extra_interfaces_cannot_contain_mocked_type_82, method, 'extraInterfacesCannotContainMockedType', 'Lorg/mockito/exceptions/Reporter;.extraInterfacesCannotContainMockedType(Ljava/lang/Class<*>;)V').
name_ref(m_extra_interfaces_does_not_accept_null_parameters_80, method, 'extraInterfacesDoesNotAcceptNullParameters', 'Lorg/mockito/exceptions/Reporter;.extraInterfacesDoesNotAcceptNullParameters()V').
name_ref(m_extra_interfaces_requires_at_least_one_interface_83, method, 'extraInterfacesRequiresAtLeastOneInterface', 'Lorg/mockito/exceptions/Reporter;.extraInterfacesRequiresAtLeastOneInterface()V').
name_ref(m_field_initialisation_threw_exception_92, method, 'fieldInitialisationThrewException', 'Lorg/mockito/exceptions/Reporter;.fieldInitialisationThrewException(Ljava/lang/reflect/Field;Ljava/lang/Throwable;)V').
name_ref(m_field_reader_210, method, 'FieldReader', 'Lorg/mockito/internal/util/reflection/FieldReader;.(Ljava/lang/Object;Ljava/lang/reflect/Field;)V').
name_ref(m_filter_candidate_200, method, 'filterCandidate', 'Lorg/mockito/internal/configuration/injection/filter/FinalMockCandidateFilter;.filterCandidate(Ljava/util/Collection<Ljava/lang/Object;>;Ljava/lang/reflect/Field;Ljava/lang/Object;)Lorg/mockito/internal/configuration/injection/filter/OngoingInjecter;').
name_ref(m_filter_candidate_204, method, 'filterCandidate', 'Lorg/mockito/internal/configuration/injection/filter/NameBasedCandidateFilter;.filterCandidate(Ljava/util/Collection<Ljava/lang/Object;>;Ljava/lang/reflect/Field;Ljava/lang/Object;)Lorg/mockito/internal/configuration/injection/filter/OngoingInjecter;').
name_ref(m_filter_candidate_205, method, 'filterCandidate', 'Lorg/mockito/internal/configuration/injection/filter/TypeBasedCandidateFilter;.filterCandidate(Ljava/util/Collection<Ljava/lang/Object;>;Ljava/lang/reflect/Field;Ljava/lang/Object;)Lorg/mockito/internal/configuration/injection/filter/OngoingInjecter;').
name_ref(m_final_mock_candidate_filter_191, method, 'FinalMockCandidateFilter', 'Lorg/mockito/internal/configuration/injection/filter/FinalMockCandidateFilter;.()V').
name_ref(m_find_plugin_class_219, method, 'findPluginClass', 'Lorg/mockito/internal/configuration/plugins/PluginFinder;.findPluginClass(Ljava/lang/Iterable<Ljava/net/URL;>;)Ljava/lang/String;').
name_ref(m_for_annotation_124, method, 'forAnnotation', 'Lorg/mockito/internal/configuration/DefaultAnnotationEngine;.forAnnotation<A::Ljava/lang/annotation/Annotation;>(TA;)Lorg/mockito/internal/configuration/FieldAnnotationProcessor<TA;>;').
name_ref(m_for_name_113, method, 'forName', 'Ljava/lang/Class;.forName(Ljava/lang/String;)Ljava/lang/Class<*>;|Ljava/lang/ClassNotFoundException;').
name_ref(m_get_137, method, 'get', 'Ljava/lang/ThreadLocal;.get()TT;').
name_ref(m_get_354, method, 'get', 'Ljava/lang/reflect/Field;.get(Ljava/lang/Object;)Ljava/lang/Object;|Ljava/lang/IllegalArgumentException;|Ljava/lang/IllegalAccessException;').
name_ref(m_get_annotation_207, method, 'getAnnotation', 'Ljava/lang/reflect/Field;.getAnnotation<T::Ljava/lang/annotation/Annotation;>(Ljava/lang/Class<TT;>;)TT;').
name_ref(m_get_annotation_engine_143, method, 'getAnnotationEngine', 'Lorg/mockito/configuration/IMockitoConfiguration;.getAnnotationEngine()Lorg/mockito/configuration/AnnotationEngine;').
name_ref(m_get_annotation_engine_2, method, 'getAnnotationEngine', 'Lorg/mockito/internal/configuration/GlobalConfiguration;.getAnnotationEngine()Lorg/mockito/configuration/AnnotationEngine;').
name_ref(m_get_annotation_engine_30, method, 'getAnnotationEngine', 'Lorg/mockito/configuration/MockitoConfiguration;.getAnnotationEngine()Lorg/mockito/configuration/AnnotationEngine;').
name_ref(m_get_annotation_engine_5, method, 'getAnnotationEngine', 'Lorg/mockito/configuration/DefaultMockitoConfiguration;.getAnnotationEngine()Lorg/mockito/configuration/AnnotationEngine;').
name_ref(m_get_annotations_12, method, 'getAnnotations', 'Ljava/lang/reflect/AccessibleObject;.getAnnotations()[Ljava/lang/annotation/Annotation;').
name_ref(m_get_argument_matcher_storage_261, method, 'getArgumentMatcherStorage', 'Lorg/mockito/internal/progress/MockingProgressImpl;.getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;').
name_ref(m_get_argument_matcher_storage_280, method, 'getArgumentMatcherStorage', 'Lorg/mockito/internal/progress/ThreadSafeMockingProgress;.getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;').
name_ref(m_get_class_4, method, 'getClass', 'Ljava/lang/Object;.getClass()Ljava/lang/Class<*>;').
name_ref(m_get_config_115, method, 'getConfig', 'Lorg/mockito/internal/configuration/ConfigurationAccess;.getConfig()Lorg/mockito/configuration/MockitoConfiguration;').
name_ref(m_get_context_class_loader_224, method, 'getContextClassLoader', 'Ljava/lang/Thread;.getContextClassLoader()Ljava/lang/ClassLoader;').
name_ref(m_get_declared_fields_10, method, 'getDeclaredFields', 'Ljava/lang/Class;.getDeclaredFields()[Ljava/lang/reflect/Field;|Ljava/lang/SecurityException;').
name_ref(m_get_default_answer_146, method, 'getDefaultAnswer', 'Lorg/mockito/internal/configuration/GlobalConfiguration;.getDefaultAnswer()Lorg/mockito/stubbing/Answer<Ljava/lang/Object;>;').
name_ref(m_get_default_answer_21, method, 'getDefaultAnswer', 'Lorg/mockito/configuration/DefaultMockitoConfiguration;.getDefaultAnswer()Lorg/mockito/stubbing/Answer<Ljava/lang/Object;>;').
name_ref(m_get_default_answer_29, method, 'getDefaultAnswer', 'Lorg/mockito/configuration/MockitoConfiguration;.getDefaultAnswer()Lorg/mockito/stubbing/Answer<Ljava/lang/Object;>;').
name_ref(m_get_default_answer_301, method, 'getDefaultAnswer', 'Lorg/mockito/mock/MockCreationSettings;.getDefaultAnswer()Lorg/mockito/stubbing/Answer;').
name_ref(m_get_handler_303, method, 'getHandler', 'Lorg/mockito/plugins/MockMaker;.getHandler(Ljava/lang/Object;)Lorg/mockito/invocation/MockHandler;').
name_ref(m_get_it_116, method, 'getIt', 'Lorg/mockito/internal/configuration/GlobalConfiguration;.getIt()Lorg/mockito/configuration/IMockitoConfiguration;').
name_ref(m_get_last_invocation_360, method, 'getLastInvocation', 'Lorg/mockitoutil/TestBase;.getLastInvocation()Lorg/mockito/invocation/Invocation;').
name_ref(m_get_mock_handler_299, method, 'getMockHandler', 'Lorg/mockito/internal/util/MockUtil;.getMockHandler<T:Ljava/lang/Object;>(TT;)Lorg/mockito/internal/InternalMockHandler<TT;>;').
name_ref(m_get_mock_maker_231, method, 'getMockMaker', 'Lorg/mockito/internal/configuration/plugins/PluginRegistry;.getMockMaker()Lorg/mockito/plugins/MockMaker;').
name_ref(m_get_mock_maker_234, method, 'getMockMaker', 'Lorg/mockito/internal/configuration/plugins/Plugins;.getMockMaker()Lorg/mockito/plugins/MockMaker;').
name_ref(m_get_mock_name_304, method, 'getMockName', 'Lorg/mockito/internal/util/MockUtil;.getMockName(Ljava/lang/Object;)Lorg/mockito/mock/MockName;').
name_ref(m_get_mock_settings_302, method, 'getMockSettings', 'Lorg/mockito/internal/util/MockUtil;.getMockSettings(Ljava/lang/Object;)Lorg/mockito/mock/MockCreationSettings;').
name_ref(m_get_name_227, method, 'getName', 'Ljava/lang/Class;.getName()Ljava/lang/String;').
name_ref(m_get_resources_226, method, 'getResources', 'Ljava/lang/ClassLoader;.getResources(Ljava/lang/String;)Ljava/util/Enumeration<Ljava/net/URL;>;|Ljava/io/IOException;').
name_ref(m_get_return_values_142, method, 'getReturnValues', 'Lorg/mockito/internal/configuration/GlobalConfiguration;.getReturnValues()Lorg/mockito/ReturnValues;').
name_ref(m_get_return_values_20, method, 'getReturnValues', 'Lorg/mockito/configuration/DefaultMockitoConfiguration;.getReturnValues()Lorg/mockito/ReturnValues;').
name_ref(m_get_stack_trace_377, method, 'getStackTrace', 'Lorg/mockitoutil/TestBase;.getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;').
name_ref(m_get_stack_trace_cleaner_235, method, 'getStackTraceCleaner', 'Lorg/mockito/internal/exceptions/stacktrace/DefaultStackTraceCleanerProvider;.getStackTraceCleaner(Lorg/mockito/exceptions/stacktrace/StackTraceCleaner;)Lorg/mockito/exceptions/stacktrace/StackTraceCleaner;').
name_ref(m_get_stack_trace_cleaner_provider_230, method, 'getStackTraceCleanerProvider', 'Lorg/mockito/internal/configuration/plugins/PluginRegistry;.getStackTraceCleanerProvider()Lorg/mockito/plugins/StackTraceCleanerProvider;').
name_ref(m_get_stack_trace_cleaner_provider_233, method, 'getStackTraceCleanerProvider', 'Lorg/mockito/internal/configuration/plugins/Plugins;.getStackTraceCleanerProvider()Lorg/mockito/plugins/StackTraceCleanerProvider;').
name_ref(m_get_superclass_8, method, 'getSuperclass', 'Ljava/lang/Class;.getSuperclass()Ljava/lang/Class<-TT;>;').
name_ref(m_global_configuration_3, method, 'GlobalConfiguration', 'Lorg/mockito/internal/configuration/GlobalConfiguration;.()V').
name_ref(m_handle_spy_annotation_131, method, 'handleSpyAnnotation', 'Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;.handleSpyAnnotation()Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;').
name_ref(m_has_more_elements_344, method, 'hasMoreElements', 'Ljava/util/Enumeration;.hasMoreElements()Z').
name_ref(m_has_next_291, method, 'hasNext', 'Ljava/util/Iterator;.hasNext()Z').
name_ref(m_has_next_317, method, 'hasNext', 'Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet$1106;.hasNext()Z').
name_ref(m_hash_code_328, method, 'hashCode', 'Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;.hashCode()I').
name_ref(m_hash_code_and_equals_safe_set_342, method, 'HashCodeAndEqualsSafeSet', 'Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;.()V').
name_ref(m_hash_map_117, method, 'HashMap', 'Ljava/util/HashMap;.()V').
name_ref(m_hash_set_153, method, 'HashSet', 'Ljava/util/HashSet;.()V').
name_ref(m_in_order_requires_familiar_mock_51, method, 'inOrderRequiresFamiliarMock', 'Lorg/mockito/exceptions/Reporter;.inOrderRequiresFamiliarMock()V').
name_ref(m_incorrect_use_of_additional_matchers_53, method, 'incorrectUseOfAdditionalMatchers', 'Lorg/mockito/exceptions/Reporter;.incorrectUseOfAdditionalMatchers(Ljava/lang/String;ILjava/util/Collection<Lorg/mockito/internal/matchers/LocalizedMatcher;>;)V').
name_ref(m_incorrect_use_of_api_38, method, 'incorrectUseOfApi', 'Lorg/mockito/exceptions/Reporter;.incorrectUseOfApi()V').
name_ref(m_init_357, method, 'init', 'Lorg/mockitoutil/TestBase;.init()V').
name_ref(m_init_mocks_1, method, 'initMocks', 'Lorg/mockito/MockitoAnnotations;.initMocks(Ljava/lang/Object;)V').
name_ref(m_initialize_inject_mocks_field_195, method, 'initializeInjectMocksField', 'Lorg/mockito/internal/configuration/injection/PropertyAndSetterInjection;.initializeInjectMocksField(Ljava/lang/reflect/Field;Ljava/lang/Object;)Lorg/mockito/internal/util/reflection/FieldInitializationReport;').
name_ref(m_inject_mock_candidates_196, method, 'injectMockCandidates', 'Lorg/mockito/internal/configuration/injection/PropertyAndSetterInjection;.injectMockCandidates(Ljava/lang/Class<*>;Ljava/util/Set<Ljava/lang/Object;>;Ljava/lang/Object;)Z').
name_ref(m_inject_mock_candidates_on_fields_197, method, 'injectMockCandidatesOnFields', 'Lorg/mockito/internal/configuration/injection/PropertyAndSetterInjection;.injectMockCandidatesOnFields(Ljava/util/Set<Ljava/lang/Object;>;Ljava/lang/Object;ZLjava/util/List<Ljava/lang/reflect/Field;>;)Z').
name_ref(m_inject_mocks_152, method, 'injectMocks', 'Lorg/mockito/internal/configuration/InjectingAnnotationEngine;.injectMocks(Ljava/lang/Object;)V').
name_ref(m_inject_mocks_on_fields_129, method, 'injectMocksOnFields', 'Lorg/mockito/internal/configuration/DefaultInjectionEngine;.injectMocksOnFields(Ljava/util/Set<Ljava/lang/reflect/Field;>;Ljava/util/Set<Ljava/lang/Object;>;Ljava/lang/Object;)V').
name_ref(m_inject_mocks_scanner_156, method, 'InjectMocksScanner', 'Lorg/mockito/internal/configuration/injection/scanner/InjectMocksScanner;.(Ljava/lang/Class<*>;)V').
name_ref(m_injecting_annotation_engine_22, method, 'InjectingAnnotationEngine', 'Lorg/mockito/internal/configuration/InjectingAnnotationEngine;.()V').
name_ref(m_invalid_argument_position_range_at_invocation_time_101, method, 'invalidArgumentPositionRangeAtInvocationTime', 'Lorg/mockito/exceptions/Reporter;.invalidArgumentPositionRangeAtInvocationTime(Lorg/mockito/invocation/InvocationOnMock;ZI)I').
name_ref(m_invalid_argument_range_at_identity_answer_creation_time_100, method, 'invalidArgumentRangeAtIdentityAnswerCreationTime', 'Lorg/mockito/exceptions/Reporter;.invalidArgumentRangeAtIdentityAnswerCreationTime()V').
name_ref(m_invalid_use_of_matchers_52, method, 'invalidUseOfMatchers', 'Lorg/mockito/exceptions/Reporter;.invalidUseOfMatchers(ILjava/util/List<Lorg/mockito/internal/matchers/LocalizedMatcher;>;)V').
name_ref(m_invocation_listener_does_not_accept_null_parameters_93, method, 'invocationListenerDoesNotAcceptNullParameters', 'Lorg/mockito/exceptions/Reporter;.invocationListenerDoesNotAcceptNullParameters()V').
name_ref(m_invocation_listener_threw_exception_95, method, 'invocationListenerThrewException', 'Lorg/mockito/exceptions/Reporter;.invocationListenerThrewException(Lorg/mockito/listeners/InvocationListener;Ljava/lang/Throwable;)V').
name_ref(m_invocation_listeners_requires_at_least_one_listener_94, method, 'invocationListenersRequiresAtLeastOneListener', 'Lorg/mockito/exceptions/Reporter;.invocationListenersRequiresAtLeastOneListener()V').
name_ref(m_invocation_of_371, method, 'invocationOf', 'Lorg/mockitoutil/TestBase;.invocationOf(Ljava/lang/Class<*>;Ljava/lang/String;[Ljava/lang/Object;)Lorg/mockito/invocation/Invocation;|Ljava/lang/NoSuchMethodException;').
name_ref(m_invocation_of_372, method, 'invocationOf', 'Lorg/mockitoutil/TestBase;.invocationOf(Ljava/lang/Class<*>;Ljava/lang/String;Lorg/mockito/internal/invocation/realmethod/RealMethod;)Lorg/mockito/invocation/Invocation;|Ljava/lang/NoSuchMethodException;').
name_ref(m_is_accessible_350, method, 'isAccessible', 'Ljava/lang/reflect/AccessibleObject;.isAccessible()Z').
name_ref(m_is_annotated_by_mock_or_spy_213, method, 'isAnnotatedByMockOrSpy', 'Lorg/mockito/internal/configuration/injection/scanner/MockScanner;.isAnnotatedByMockOrSpy(Ljava/lang/reflect/Field;)Z').
name_ref(m_is_annotation_present_164, method, 'isAnnotationPresent', 'Ljava/lang/reflect/AccessibleObject;.isAnnotationPresent(Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;)Z').
name_ref(m_is_compare_to_method_310, method, 'isCompareToMethod', 'Lorg/mockito/internal/util/ObjectMethodsGuru;.isCompareToMethod(Ljava/lang/reflect/Method;)Z').
name_ref(m_is_empty_247, method, 'isEmpty', 'Ljava/util/Vector;.isEmpty()Z').
name_ref(m_is_empty_321, method, 'isEmpty', 'Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;.isEmpty()Z').
name_ref(m_is_enabled_217, method, 'isEnabled', 'Lorg/mockito/internal/configuration/plugins/DefaultPluginSwitch;.isEnabled(Ljava/lang/String;)Z').
name_ref(m_is_equals_method_308, method, 'isEqualsMethod', 'Lorg/mockito/internal/util/ObjectMethodsGuru;.isEqualsMethod(Ljava/lang/reflect/Method;)Z').
name_ref(m_is_hash_code_method_309, method, 'isHashCodeMethod', 'Lorg/mockito/internal/util/ObjectMethodsGuru;.isHashCodeMethod(Ljava/lang/reflect/Method;)Z').
name_ref(m_is_mock_215, method, 'isMock', 'Lorg/mockito/internal/util/MockUtil;.isMock(Ljava/lang/Object;)Z').
name_ref(m_is_mock_374, method, 'isMock', 'Lorg/mockitoutil/TestBase;.isMock(Ljava/lang/Object;)Z').
name_ref(m_is_mock_or_spy_214, method, 'isMockOrSpy', 'Lorg/mockito/internal/configuration/injection/scanner/MockScanner;.isMockOrSpy(Ljava/lang/Object;)Z').
name_ref(m_is_mockito_mock_300, method, 'isMockitoMock', 'Lorg/mockito/internal/util/MockUtil;.isMockitoMock<T:Ljava/lang/Object;>(TT;)Z').
name_ref(m_is_null_353, method, 'isNull', 'Lorg/mockito/internal/util/reflection/FieldReader;.isNull()Z').
name_ref(m_is_out_193, method, 'isOut', 'Lorg/mockito/internal/configuration/injection/PropertyAndSetterInjection$2653;.isOut(Ljava/lang/reflect/Field;)Z').
name_ref(m_is_primitive_or_wrapper_286, method, 'isPrimitiveOrWrapper', 'Lorg/mockito/internal/util/Primitives;.isPrimitiveOrWrapper(Ljava/lang/Class<*>;)Z').
name_ref(m_is_spy_216, method, 'isSpy', 'Lorg/mockito/internal/util/MockUtil;.isSpy(Ljava/lang/Object;)Z').
name_ref(m_is_to_string_306, method, 'isToString', 'Lorg/mockito/internal/util/ObjectMethodsGuru;.isToString(Ljava/lang/reflect/Method;)Z').
name_ref(m_is_to_string_307, method, 'isToString', 'Lorg/mockito/internal/util/ObjectMethodsGuru;.isToString(Lorg/mockito/internal/invocation/MockitoMethod;)Z').
name_ref(m_is_type_mockable_296, method, 'isTypeMockable', 'Lorg/mockito/internal/util/MockUtil;.isTypeMockable(Ljava/lang/Class<*>;)Z').
name_ref(m_iterator_292, method, 'iterator', 'Ljava/lang/Iterable;.iterator()Ljava/util/Iterator<TT;>;').
name_ref(m_iterator_314, method, 'iterator', 'Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;.iterator()Ljava/util/Iterator<Ljava/lang/Object;>;').
name_ref(m_iterator_316, method, 'iterator', 'Ljava/util/HashSet;.iterator()Ljava/util/Iterator<TE;>;').
name_ref(m_linked_list_343, method, 'LinkedList', 'Ljava/util/LinkedList;.()V').
name_ref(m_load_configuration_112, method, 'loadConfiguration', 'Lorg/mockito/internal/configuration/ClassPathLoader;.loadConfiguration()Lorg/mockito/configuration/IMockitoConfiguration;').
name_ref(m_load_impl_222, method, 'loadImpl', 'Lorg/mockito/internal/configuration/plugins/PluginLoader;.loadImpl<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)TT;').
name_ref(m_load_plugin_221, method, 'loadPlugin', 'Lorg/mockito/internal/configuration/plugins/PluginLoader;.loadPlugin<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Ljava/lang/String;)TT;').
name_ref(m_locations_of_56, method, 'locationsOf', 'Lorg/mockito/exceptions/Reporter;.locationsOf(Ljava/util/Collection<Lorg/mockito/internal/matchers/LocalizedMatcher;>;)Ljava/lang/Object;').
name_ref(m_make_stack_traces_clean_358, method, 'makeStackTracesClean', 'Lorg/mockitoutil/TestBase;.makeStackTracesClean()V').
name_ref(m_matches_376, method, 'matches', 'Lorg/mockitoutil/TestBase$5620;.matches(Ljava/util/Collection<*>;)Z').
name_ref(m_maybe_redefine_mock_name_305, method, 'maybeRedefineMockName', 'Lorg/mockito/internal/util/MockUtil;.maybeRedefineMockName(Ljava/lang/Object;Ljava/lang/String;)V').
name_ref(m_misplaced_argument_matcher_77, method, 'misplacedArgumentMatcher', 'Lorg/mockito/exceptions/Reporter;.misplacedArgumentMatcher(Ljava/util/List<Lorg/mockito/internal/matchers/LocalizedMatcher;>;)V').
name_ref(m_missing_method_invocation_39, method, 'missingMethodInvocation', 'Lorg/mockito/exceptions/Reporter;.missingMethodInvocation()V').
name_ref(m_mock_annotation_processor_120, method, 'MockAnnotationProcessor', 'Lorg/mockito/internal/configuration/MockAnnotationProcessor;.()V').
name_ref(m_mock_scanner_158, method, 'MockScanner', 'Lorg/mockito/internal/configuration/injection/scanner/MockScanner;.(Ljava/lang/Object;Ljava/lang/Class<*>;)V').
name_ref(m_mock_util_203, method, 'MockUtil', 'Lorg/mockito/internal/util/MockUtil;.()V').
name_ref(m_mocked_type_is_inconsistent_with_delegated_instance_type_98, method, 'mockedTypeIsInconsistentWithDelegatedInstanceType', 'Lorg/mockito/exceptions/Reporter;.mockedTypeIsInconsistentWithDelegatedInstanceType(Ljava/lang/Class;Ljava/lang/Object;)V').
name_ref(m_mocked_type_is_inconsistent_with_spied_instance_type_84, method, 'mockedTypeIsInconsistentWithSpiedInstanceType', 'Lorg/mockito/exceptions/Reporter;.mockedTypeIsInconsistentWithSpiedInstanceType(Ljava/lang/Class<*>;Ljava/lang/Object;)V').
name_ref(m_mocking_progress_impl_269, method, 'MockingProgressImpl', 'Lorg/mockito/internal/progress/MockingProgressImpl;.()V').
name_ref(m_mocking_started_266, method, 'mockingStarted', 'Lorg/mockito/internal/progress/MockingProgressImpl;.mockingStarted(Ljava/lang/Object;Ljava/lang/Class;)V').
name_ref(m_mocking_started_281, method, 'mockingStarted', 'Lorg/mockito/internal/progress/ThreadSafeMockingProgress;.mockingStarted(Ljava/lang/Object;Ljava/lang/Class;)V').
name_ref(m_mockito_annotations_mock_annotation_processor_121, method, 'MockitoAnnotationsMockAnnotationProcessor', 'Lorg/mockito/internal/configuration/MockitoAnnotationsMockAnnotationProcessor;.()V').
name_ref(m_mocks_have_to_be_passed_to_verify_no_more_interactions_45, method, 'mocksHaveToBePassedToVerifyNoMoreInteractions', 'Lorg/mockito/exceptions/Reporter;.mocksHaveToBePassedToVerifyNoMoreInteractions()V').
name_ref(m_mocks_have_to_be_passed_when_creating_in_order_50, method, 'mocksHaveToBePassedWhenCreatingInOrder', 'Lorg/mockito/exceptions/Reporter;.mocksHaveToBePassedWhenCreatingInOrder()V').
name_ref(m_more_than_one_annotation_not_allowed_87, method, 'moreThanOneAnnotationNotAllowed', 'Lorg/mockito/exceptions/Reporter;.moreThanOneAnnotationNotAllowed(Ljava/lang/String;)V').
name_ref(m_name_based_candidate_filter_190, method, 'NameBasedCandidateFilter', 'Lorg/mockito/internal/configuration/injection/filter/NameBasedCandidateFilter;.(Lorg/mockito/internal/configuration/injection/filter/MockCandidateFilter;)V').
name_ref(m_never_wanted_but_invoked_64, method, 'neverWantedButInvoked', 'Lorg/mockito/exceptions/Reporter;.neverWantedButInvoked(Lorg/mockito/invocation/DescribedInvocation;Lorg/mockito/invocation/Location;)V').
name_ref(m_new_identity_set_346, method, 'newIdentitySet', 'Lorg/mockito/internal/util/collections/Sets;.newIdentitySet()Lorg/mockito/internal/util/collections/IdentitySet;').
name_ref(m_new_instance_114, method, 'newInstance', 'Ljava/lang/Class;.newInstance()TT;|Ljava/lang/InstantiationException;|Ljava/lang/IllegalAccessException;').
name_ref(m_new_mock_safe_hash_set_154, method, 'newMockSafeHashSet', 'Lorg/mockito/internal/util/collections/Sets;.newMockSafeHashSet([Ljava/lang/Object;)Ljava/util/Set<Ljava/lang/Object;>;').
name_ref(m_new_mock_safe_hash_set_345, method, 'newMockSafeHashSet', 'Lorg/mockito/internal/util/collections/Sets;.newMockSafeHashSet(Ljava/lang/Iterable<Ljava/lang/Object;>;)Ljava/util/Set<Ljava/lang/Object;>;').
name_ref(m_new_set_347, method, 'newSet', 'Lorg/mockito/internal/util/collections/Sets;.newSet<T:Ljava/lang/Object;>([TT;)Ljava/util/Set<TT;>;').
name_ref(m_new_spy_instance_166, method, 'newSpyInstance', 'Lorg/mockito/internal/configuration/SpyAnnotationEngine;.newSpyInstance(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;|Ljava/lang/InstantiationException;|Ljava/lang/IllegalAccessException;|Ljava/lang/reflect/InvocationTargetException;').
name_ref(m_next_318, method, 'next', 'Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet$1106;.next()Ljava/lang/Object;').
name_ref(m_no_argument_value_was_captured_79, method, 'noArgumentValueWasCaptured', 'Lorg/mockito/exceptions/Reporter;.noArgumentValueWasCaptured()V').
name_ref(m_no_more_interactions_wanted_69, method, 'noMoreInteractionsWanted', 'Lorg/mockito/exceptions/Reporter;.noMoreInteractionsWanted(Lorg/mockito/invocation/Invocation;Ljava/util/List<Lorg/mockito/internal/exceptions/VerificationAwareInvocation;>;)V').
name_ref(m_no_more_interactions_wanted_in_order_70, method, 'noMoreInteractionsWantedInOrder', 'Lorg/mockito/exceptions/Reporter;.noMoreInteractionsWantedInOrder(Lorg/mockito/invocation/Invocation;)V').
name_ref(m_nop_176, method, 'nop', 'Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;.nop()Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;').
name_ref(m_not_amock_passed_to_verify_41, method, 'notAMockPassedToVerify', 'Lorg/mockito/exceptions/Reporter;.notAMockPassedToVerify(Ljava/lang/Class;)V').
name_ref(m_not_amock_passed_to_verify_no_more_interactions_46, method, 'notAMockPassedToVerifyNoMoreInteractions', 'Lorg/mockito/exceptions/Reporter;.notAMockPassedToVerifyNoMoreInteractions()V').
name_ref(m_not_amock_passed_to_when_method_43, method, 'notAMockPassedToWhenMethod', 'Lorg/mockito/exceptions/Reporter;.notAMockPassedToWhenMethod()V').
name_ref(m_not_amock_passed_when_creating_in_order_48, method, 'notAMockPassedWhenCreatingInOrder', 'Lorg/mockito/exceptions/Reporter;.notAMockPassedWhenCreatingInOrder()V').
name_ref(m_null_passed_to_verify_42, method, 'nullPassedToVerify', 'Lorg/mockito/exceptions/Reporter;.nullPassedToVerify()V').
name_ref(m_null_passed_to_verify_no_more_interactions_47, method, 'nullPassedToVerifyNoMoreInteractions', 'Lorg/mockito/exceptions/Reporter;.nullPassedToVerifyNoMoreInteractions()V').
name_ref(m_null_passed_to_when_method_44, method, 'nullPassedToWhenMethod', 'Lorg/mockito/exceptions/Reporter;.nullPassedToWhenMethod()V').
name_ref(m_null_passed_when_creating_in_order_49, method, 'nullPassedWhenCreatingInOrder', 'Lorg/mockito/exceptions/Reporter;.nullPassedWhenCreatingInOrder()V').
name_ref(m_object_methods_guru_283, method, 'ObjectMethodsGuru', 'Lorg/mockito/internal/util/ObjectMethodsGuru;.()V').
name_ref(m_object_that_is_assignable_from_173, method, 'objectThatIsAssignableFrom', 'Lorg/mockito/internal/configuration/injection/ConstructorInjection$SimpleArgumentResolver;.objectThatIsAssignableFrom(Ljava/lang/Class<*>;)Ljava/lang/Object;').
name_ref(m_of_339, method, 'of', 'Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;.of([Ljava/lang/Object;)Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;').
name_ref(m_of_340, method, 'of', 'Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;.of(Ljava/lang/Iterable<Ljava/lang/Object;>;)Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;').
name_ref(m_on_field_174, method, 'onField', 'Lorg/mockito/internal/configuration/injection/MockInjection;.onField(Ljava/lang/reflect/Field;Ljava/lang/Object;)Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;').
name_ref(m_on_fields_135, method, 'onFields', 'Lorg/mockito/internal/configuration/injection/MockInjection;.onFields(Ljava/util/Set<Ljava/lang/reflect/Field;>;Ljava/lang/Object;)Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;').
name_ref(m_ongoing_mock_injection_175, method, 'OngoingMockInjection', 'Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;.(Ljava/util/Set<Ljava/lang/reflect/Field;>;Ljava/lang/Object;)V').
name_ref(m_ongoing_mock_injection_177, method, 'OngoingMockInjection', 'Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;.(Ljava/lang/reflect/Field;Ljava/lang/Object;)V').
name_ref(m_only_void_methods_can_be_set_to_do_nothing_73, method, 'onlyVoidMethodsCanBeSetToDoNothing', 'Lorg/mockito/exceptions/Reporter;.onlyVoidMethodsCanBeSetToDoNothing()V').
name_ref(m_ordered_instance_fields_from_198, method, 'orderedInstanceFieldsFrom', 'Lorg/mockito/internal/configuration/injection/PropertyAndSetterInjection;.orderedInstanceFieldsFrom(Ljava/lang/Class<*>;)Ljava/util/List<Ljava/lang/reflect/Field;>;').
name_ref(m_override_annotation_engine_27, method, 'overrideAnnotationEngine', 'Lorg/mockito/configuration/MockitoConfiguration;.overrideAnnotationEngine(Lorg/mockito/configuration/AnnotationEngine;)V').
name_ref(m_override_cleans_stack_trace_26, method, 'overrideCleansStackTrace', 'Lorg/mockito/configuration/MockitoConfiguration;.overrideCleansStackTrace(Z)V').
name_ref(m_override_default_answer_25, method, 'overrideDefaultAnswer', 'Lorg/mockito/configuration/MockitoConfiguration;.overrideDefaultAnswer(Lorg/mockito/stubbing/Answer<Ljava/lang/Object;>;)V').
name_ref(m_override_enable_class_cache_28, method, 'overrideEnableClassCache', 'Lorg/mockito/configuration/MockitoConfiguration;.overrideEnableClassCache(Z)V').
name_ref(m_plugin_finder_218, method, 'PluginFinder', 'Lorg/mockito/internal/configuration/plugins/PluginFinder;.(Lorg/mockito/plugins/PluginSwitch;)V').
name_ref(m_plugin_loader_220, method, 'PluginLoader', 'Lorg/mockito/internal/configuration/plugins/PluginLoader;.(Lorg/mockito/plugins/PluginSwitch;)V').
name_ref(m_plugin_registry_232, method, 'PluginRegistry', 'Lorg/mockito/internal/configuration/plugins/PluginRegistry;.()V').
name_ref(m_pop_last_argument_matchers_243, method, 'popLastArgumentMatchers', 'Lorg/mockito/internal/progress/ArgumentMatcherStorageImpl;.popLastArgumentMatchers(I)Ljava/util/List<Lorg/hamcrest/Matcher;>;').
name_ref(m_possible_argument_types_of_102, method, 'possibleArgumentTypesOf', 'Lorg/mockito/exceptions/Reporter;.possibleArgumentTypesOf(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/StringBuilder;').
name_ref(m_prepared_mock_211, method, 'preparedMock', 'Lorg/mockito/internal/configuration/injection/scanner/MockScanner;.preparedMock(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;').
name_ref(m_primitive_type_of_311, method, 'primitiveTypeOf', 'Lorg/mockito/internal/util/Primitives;.primitiveTypeOf<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)Ljava/lang/Class<TT;>;').
name_ref(m_process_111, method, 'process', 'Lorg/mockito/internal/configuration/CaptorAnnotationProcessor;.process(Lorg/mockito/Captor;Ljava/lang/reflect/Field;)Ljava/lang/Object;').
name_ref(m_process_125, method, 'process', 'Lorg/mockito/internal/configuration/DefaultAnnotationEngine$2074;.process(TA;Ljava/lang/reflect/Field;)Ljava/lang/Object;').
name_ref(m_process_127, method, 'process', 'Lorg/mockito/internal/configuration/DefaultAnnotationEngine;.process(Ljava/lang/Class<*>;Ljava/lang/Object;)V').
name_ref(m_process_149, method, 'process', 'Lorg/mockito/internal/configuration/InjectingAnnotationEngine;.process(Ljava/lang/Class<*>;Ljava/lang/Object;)V').
name_ref(m_process_160, method, 'process', 'Lorg/mockito/internal/configuration/MockAnnotationProcessor;.process(Lorg/mockito/Mock;Ljava/lang/reflect/Field;)Ljava/lang/Object;').
name_ref(m_process_161, method, 'process', 'Lorg/mockito/internal/configuration/MockitoAnnotationsMockAnnotationProcessor;.process(Lorg/mockito/MockitoAnnotations$Mock;Ljava/lang/reflect/Field;)Ljava/lang/Object;').
name_ref(m_process_163, method, 'process', 'Lorg/mockito/internal/configuration/SpyAnnotationEngine;.process(Ljava/lang/Class<*>;Ljava/lang/Object;)V').
name_ref(m_process_186, method, 'process', 'Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;.process(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/util/Set<Ljava/lang/Object;>;)Z').
name_ref(m_process_9, method, 'process', 'Lorg/mockito/configuration/AnnotationEngine;.process(Ljava/lang/Class<*>;Ljava/lang/Object;)V').
name_ref(m_process_annotation_deprecated_way_11, method, 'processAnnotationDeprecatedWay', 'Lorg/mockito/MockitoAnnotations;.processAnnotationDeprecatedWay(Lorg/mockito/configuration/AnnotationEngine;Ljava/lang/Object;Ljava/lang/reflect/Field;)V').
name_ref(m_process_independent_annotations_150, method, 'processIndependentAnnotations', 'Lorg/mockito/internal/configuration/InjectingAnnotationEngine;.processIndependentAnnotations(Ljava/lang/Class<*>;Ljava/lang/Object;)V').
name_ref(m_process_inject_mocks_151, method, 'processInjectMocks', 'Lorg/mockito/internal/configuration/InjectingAnnotationEngine;.processInjectMocks(Ljava/lang/Class<*>;Ljava/lang/Object;)V').
name_ref(m_process_injection_170, method, 'processInjection', 'Lorg/mockito/internal/configuration/injection/ConstructorInjection;.processInjection(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/util/Set<Ljava/lang/Object;>;)Z').
name_ref(m_process_injection_185, method, 'processInjection', 'Lorg/mockito/internal/configuration/injection/MockInjectionStrategy$465;.processInjection(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/util/Set<Ljava/lang/Object;>;)Z').
name_ref(m_process_injection_187, method, 'processInjection', 'Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;.processInjection(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/util/Set<Ljava/lang/Object;>;)Z').
name_ref(m_process_injection_194, method, 'processInjection', 'Lorg/mockito/internal/configuration/injection/PropertyAndSetterInjection;.processInjection(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/util/Set<Ljava/lang/Object;>;)Z').
name_ref(m_process_injection_199, method, 'processInjection', 'Lorg/mockito/internal/configuration/injection/SpyOnInjectedFieldsHandler;.processInjection(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/util/Set<Ljava/lang/Object;>;)Z').
name_ref(m_property_and_setter_injection_182, method, 'PropertyAndSetterInjection', 'Lorg/mockito/internal/configuration/injection/PropertyAndSetterInjection;.()V').
name_ref(m_pull_localized_matchers_238, method, 'pullLocalizedMatchers', 'Lorg/mockito/internal/progress/ArgumentMatcherStorageImpl;.pullLocalizedMatchers()Ljava/util/List<Lorg/mockito/internal/matchers/LocalizedMatcher;>;').
name_ref(m_pull_ongoing_stubbing_253, method, 'pullOngoingStubbing', 'Lorg/mockito/internal/progress/MockingProgressImpl;.pullOngoingStubbing()Lorg/mockito/internal/progress/IOngoingStubbing;').
name_ref(m_pull_ongoing_stubbing_271, method, 'pullOngoingStubbing', 'Lorg/mockito/internal/progress/ThreadSafeMockingProgress;.pullOngoingStubbing()Lorg/mockito/internal/progress/IOngoingStubbing;').
name_ref(m_pull_verification_mode_256, method, 'pullVerificationMode', 'Lorg/mockito/internal/progress/MockingProgressImpl;.pullVerificationMode()Lorg/mockito/verification/VerificationMode;').
name_ref(m_pull_verification_mode_273, method, 'pullVerificationMode', 'Lorg/mockito/internal/progress/ThreadSafeMockingProgress;.pullVerificationMode()Lorg/mockito/verification/VerificationMode;').
name_ref(m_put_126, method, 'put', 'Ljava/util/Map;.put(TK;TV;)TV;').
name_ref(m_read_212, method, 'read', 'Lorg/mockito/internal/util/reflection/FieldReader;.read()Ljava/lang/Object;').
name_ref(m_register_annotation_processor_119, method, 'registerAnnotationProcessor', 'Lorg/mockito/internal/configuration/DefaultAnnotationEngine;.registerAnnotationProcessor<A::Ljava/lang/annotation/Annotation;>(Ljava/lang/Class<TA;>;Lorg/mockito/internal/configuration/FieldAnnotationProcessor<TA;>;)V').
name_ref(m_relay_process_to_next_strategy_188, method, 'relayProcessToNextStrategy', 'Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;.relayProcessToNextStrategy(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/util/Set<Ljava/lang/Object;>;)Z').
name_ref(m_remove_319, method, 'remove', 'Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet$1106;.remove()V').
name_ref(m_remove_324, method, 'remove', 'Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;.remove(Ljava/lang/Object;)Z').
name_ref(m_remove_all_332, method, 'removeAll', 'Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;.removeAll(Ljava/util/Collection<*>;)Z').
name_ref(m_report_and_239, method, 'reportAnd', 'Lorg/mockito/internal/progress/ArgumentMatcherStorageImpl;.reportAnd()Lorg/mockito/internal/progress/HandyReturnValues;').
name_ref(m_report_matcher_237, method, 'reportMatcher', 'Lorg/mockito/internal/progress/ArgumentMatcherStorageImpl;.reportMatcher(Lorg/hamcrest/Matcher;)Lorg/mockito/internal/progress/HandyReturnValues;').
name_ref(m_report_no_sub_matchers_found_55, method, 'reportNoSubMatchersFound', 'Lorg/mockito/exceptions/Reporter;.reportNoSubMatchersFound(Ljava/lang/String;)V').
name_ref(m_report_not_241, method, 'reportNot', 'Lorg/mockito/internal/progress/ArgumentMatcherStorageImpl;.reportNot()Lorg/mockito/internal/progress/HandyReturnValues;').
name_ref(m_report_ongoing_stubbing_252, method, 'reportOngoingStubbing', 'Lorg/mockito/internal/progress/MockingProgressImpl;.reportOngoingStubbing(Lorg/mockito/internal/progress/IOngoingStubbing;)V').
name_ref(m_report_ongoing_stubbing_270, method, 'reportOngoingStubbing', 'Lorg/mockito/internal/progress/ThreadSafeMockingProgress;.reportOngoingStubbing(Lorg/mockito/internal/progress/IOngoingStubbing;)V').
name_ref(m_report_or_240, method, 'reportOr', 'Lorg/mockito/internal/progress/ArgumentMatcherStorageImpl;.reportOr()Lorg/mockito/internal/progress/HandyReturnValues;').
name_ref(m_reporter_250, method, 'Reporter', 'Lorg/mockito/exceptions/Reporter;.()V').
name_ref(m_reset_15, method, 'reset', 'Lorg/mockito/StateMaster;.reset()V').
name_ref(m_reset_16, method, 'reset', 'Lorg/mockito/internal/progress/ThreadSafeMockingProgress;.reset()V').
name_ref(m_reset_248, method, 'reset', 'Lorg/mockito/internal/progress/ArgumentMatcherStorageImpl;.reset()V').
name_ref(m_reset_264, method, 'reset', 'Lorg/mockito/internal/progress/MockingProgressImpl;.reset()V').
name_ref(m_reset_265, method, 'reset', 'Lorg/mockito/internal/progress/ArgumentMatcherStorage;.reset()V').
name_ref(m_reset_278, method, 'reset', 'Lorg/mockito/internal/progress/MockingProgress;.reset()V').
name_ref(m_reset_mock_298, method, 'resetMock', 'Lorg/mockito/internal/util/MockUtil;.resetMock<T:Ljava/lang/Object;>(TT;)V').
name_ref(m_reset_ongoing_stubbing_17, method, 'resetOngoingStubbing', 'Lorg/mockito/internal/progress/ThreadSafeMockingProgress;.resetOngoingStubbing()V').
name_ref(m_reset_ongoing_stubbing_255, method, 'resetOngoingStubbing', 'Lorg/mockito/internal/progress/MockingProgressImpl;.resetOngoingStubbing()V').
name_ref(m_reset_ongoing_stubbing_279, method, 'resetOngoingStubbing', 'Lorg/mockito/internal/progress/MockingProgress;.resetOngoingStubbing()V').
name_ref(m_reset_state_359, method, 'resetState', 'Lorg/mockitoutil/TestBase;.resetState()V').
name_ref(m_resolve_type_instances_172, method, 'resolveTypeInstances', 'Lorg/mockito/internal/configuration/injection/ConstructorInjection$SimpleArgumentResolver;.resolveTypeInstances([Ljava/lang/Class<*>;)[Ljava/lang/Object;').
name_ref(m_retain_all_337, method, 'retainAll', 'Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;.retainAll(Ljava/util/Collection<*>;)Z').
name_ref(m_return_value_for_285, method, 'returnValueFor', 'Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValues;.returnValueFor(Ljava/lang/Class<*>;)Ljava/lang/Object;').
name_ref(m_returns_empty_values_287, method, 'ReturnsEmptyValues', 'Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValues;.()V').
name_ref(m_safely_disable_access_348, method, 'safelyDisableAccess', 'Lorg/mockito/internal/util/reflection/AccessibilityChanger;.safelyDisableAccess(Ljava/lang/reflect/AccessibleObject;)V').
name_ref(m_safely_get_mock_name_110, method, 'safelyGetMockName', 'Lorg/mockito/exceptions/Reporter;.safelyGetMockName(Ljava/lang/Object;)Lorg/mockito/mock/MockName;').
name_ref(m_scan_206, method, 'scan', 'Lorg/mockito/internal/configuration/injection/scanner/InjectMocksScanner;.scan()Ljava/util/Set<Ljava/lang/reflect/Field;>;').
name_ref(m_scan_209, method, 'scan', 'Lorg/mockito/internal/configuration/injection/scanner/MockScanner;.scan()Ljava/util/Set<Ljava/lang/Object;>;').
name_ref(m_scan_deprecated_way_7, method, 'scanDeprecatedWay', 'Lorg/mockito/MockitoAnnotations;.scanDeprecatedWay(Lorg/mockito/configuration/AnnotationEngine;Ljava/lang/Object;Ljava/lang/Class<*>;)V').
name_ref(m_serializable_wont_work_for_objects_that_dont_implement_serializable_105, method, 'serializableWontWorkForObjectsThatDontImplementSerializable', 'Lorg/mockito/exceptions/Reporter;.serializableWontWorkForObjectsThatDontImplementSerializable(Ljava/lang/Class;)V').
name_ref(m_set_138, method, 'set', 'Ljava/lang/ThreadLocal;.set(TT;)V').
name_ref(m_set_accessible_351, method, 'setAccessible', 'Ljava/lang/reflect/AccessibleObject;.setAccessible(Z)V').
name_ref(m_set_listener_267, method, 'setListener', 'Lorg/mockito/internal/progress/MockingProgressImpl;.setListener(Lorg/mockito/internal/listeners/MockingProgressListener;)V').
name_ref(m_set_listener_282, method, 'setListener', 'Lorg/mockito/internal/progress/ThreadSafeMockingProgress;.setListener(Lorg/mockito/internal/listeners/MockingProgressListener;)V').
name_ref(m_should_return__primitive_293, method, 'should_return_primitive', 'Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValuesTest;.should_return_primitive()V').
name_ref(m_should_return_empty__iterable_289, method, 'should_return_empty_iterable', 'Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValuesTest;.should_return_empty_iterable()V|Ljava/lang/Exception;').
name_ref(m_should_return_empty_collections_or_null_for_non__collections_288, method, 'should_return_empty_collections_or_null_for_non_collections', 'Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValuesTest;.should_return_empty_collections_or_null_for_non_collections()V').
name_ref(m_should_return_non_zero_for_compare_to_method_294, method, 'should_return_non_zero_for_compareTo_method', 'Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValuesTest;.should_return_non_zero_for_compareTo_method()V').
name_ref(m_should_return_zero_if_mock_is_compared_to__itself_295, method, 'should_return_zero_if_mock_is_compared_to_itself', 'Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValuesTest;.should_return_zero_if_mock_is_compared_to_itself()V').
name_ref(m_simple_argument_resolver_171, method, 'SimpleArgumentResolver', 'Lorg/mockito/internal/configuration/injection/ConstructorInjection$SimpleArgumentResolver;.(Ljava/util/Set<Ljava/lang/Object;>;)V').
name_ref(m_size_320, method, 'size', 'Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;.size()I').
name_ref(m_smart_null_pointer_exception_78, method, 'smartNullPointerException', 'Lorg/mockito/exceptions/Reporter;.smartNullPointerException(Ljava/lang/String;Lorg/mockito/invocation/Location;)V').
name_ref(m_spy_and_delegate_are_mutually_exclusive_99, method, 'spyAndDelegateAreMutuallyExclusive', 'Lorg/mockito/exceptions/Reporter;.spyAndDelegateAreMutuallyExclusive()V').
name_ref(m_spy_annotation_engine_147, method, 'SpyAnnotationEngine', 'Lorg/mockito/internal/configuration/SpyAnnotationEngine;.()V').
name_ref(m_spy_on_injected_fields_handler_183, method, 'SpyOnInjectedFieldsHandler', 'Lorg/mockito/internal/configuration/injection/SpyOnInjectedFieldsHandler;.()V').
name_ref(m_stack_236, method, 'Stack', 'Ljava/util/Stack;.()V').
name_ref(m_state_master_356, method, 'StateMaster', 'Lorg/mockito/StateMaster;.()V').
name_ref(m_stub_passed_to_verify_54, method, 'stubPassedToVerify', 'Lorg/mockito/exceptions/Reporter;.stubPassedToVerify()V').
name_ref(m_stubbing_completed_262, method, 'stubbingCompleted', 'Lorg/mockito/internal/progress/MockingProgressImpl;.stubbingCompleted(Lorg/mockito/invocation/Invocation;)V').
name_ref(m_stubbing_completed_276, method, 'stubbingCompleted', 'Lorg/mockito/internal/progress/ThreadSafeMockingProgress;.stubbingCompleted(Lorg/mockito/invocation/Invocation;)V').
name_ref(m_stubbing_started_257, method, 'stubbingStarted', 'Lorg/mockito/internal/progress/MockingProgressImpl;.stubbingStarted()V').
name_ref(m_stubbing_started_274, method, 'stubbingStarted', 'Lorg/mockito/internal/progress/ThreadSafeMockingProgress;.stubbingStarted()V').
name_ref(m_then_inject_201, method, 'thenInject', 'Lorg/mockito/internal/configuration/injection/filter/FinalMockCandidateFilter$1053;.thenInject()Ljava/lang/Object;').
name_ref(m_then_inject_202, method, 'thenInject', 'Lorg/mockito/internal/configuration/injection/filter/FinalMockCandidateFilter$1614;.thenInject()Ljava/lang/Object;').
name_ref(m_then_try_181, method, 'thenTry', 'Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;.thenTry(Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;)Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;').
name_ref(m_thread_local_136, method, 'ThreadLocal', 'Ljava/lang/ThreadLocal;.()V').
name_ref(m_thread_safe_mocking_progress_14, method, 'ThreadSafeMockingProgress', 'Lorg/mockito/internal/progress/ThreadSafeMockingProgress;.()V').
name_ref(m_thread_safely_268, method, 'threadSafely', 'Lorg/mockito/internal/progress/ThreadSafeMockingProgress;.threadSafely()Lorg/mockito/internal/progress/MockingProgress;').
name_ref(m_throw_if_already_assigned_128, method, 'throwIfAlreadyAssigned', 'Lorg/mockito/internal/configuration/DefaultAnnotationEngine;.throwIfAlreadyAssigned(Ljava/lang/reflect/Field;Z)V').
name_ref(m_throw_if_already_assigned_13, method, 'throwIfAlreadyAssigned', 'Lorg/mockito/MockitoAnnotations;.throwIfAlreadyAssigned(Ljava/lang/reflect/Field;Z)V').
name_ref(m_to_array_329, method, 'toArray', 'Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;.toArray()[Ljava/lang/Object;').
name_ref(m_to_array_331, method, 'toArray', 'Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;.toArray<T:Ljava/lang/Object;>([TT;)[TT;').
name_ref(m_to_iterable_228, method, 'toIterable', 'Lorg/mockito/internal/util/collections/Iterables;.toIterable<T:Ljava/lang/Object;>(Ljava/util/Enumeration<TT;>;)Ljava/lang/Iterable<TT;>;').
name_ref(m_to_string_263, method, 'toString', 'Lorg/mockito/internal/progress/MockingProgressImpl;.toString()Ljava/lang/String;').
name_ref(m_to_string_277, method, 'toString', 'Lorg/mockito/internal/progress/ThreadSafeMockingProgress;.toString()Ljava/lang/String;').
name_ref(m_to_string_338, method, 'toString', 'Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;.toString()Ljava/lang/String;').
name_ref(m_too_little_actual_invocations_67, method, 'tooLittleActualInvocations', 'Lorg/mockito/exceptions/Reporter;.tooLittleActualInvocations(Lorg/mockito/internal/reporting/Discrepancy;Lorg/mockito/invocation/DescribedInvocation;Lorg/mockito/invocation/Location;)V').
name_ref(m_too_little_actual_invocations_in_order_68, method, 'tooLittleActualInvocationsInOrder', 'Lorg/mockito/exceptions/Reporter;.tooLittleActualInvocationsInOrder(Lorg/mockito/internal/reporting/Discrepancy;Lorg/mockito/invocation/DescribedInvocation;Lorg/mockito/invocation/Location;)V').
name_ref(m_too_many_actual_invocations_62, method, 'tooManyActualInvocations', 'Lorg/mockito/exceptions/Reporter;.tooManyActualInvocations(IILorg/mockito/invocation/DescribedInvocation;Lorg/mockito/invocation/Location;)V').
name_ref(m_too_many_actual_invocations_in_order_65, method, 'tooManyActualInvocationsInOrder', 'Lorg/mockito/exceptions/Reporter;.tooManyActualInvocationsInOrder(IILorg/mockito/invocation/DescribedInvocation;Lorg/mockito/invocation/Location;)V').
name_ref(m_try_constructor_injection_133, method, 'tryConstructorInjection', 'Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;.tryConstructorInjection()Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;').
name_ref(m_try_property_or_field_injection_132, method, 'tryPropertyOrFieldInjection', 'Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;.tryPropertyOrFieldInjection()Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;').
name_ref(m_type_based_candidate_filter_189, method, 'TypeBasedCandidateFilter', 'Lorg/mockito/internal/configuration/injection/filter/TypeBasedCandidateFilter;.(Lorg/mockito/internal/configuration/injection/filter/MockCandidateFilter;)V').
name_ref(m_unfinished_stubbing_37, method, 'unfinishedStubbing', 'Lorg/mockito/exceptions/Reporter;.unfinishedStubbing(Lorg/mockito/invocation/Location;)V').
name_ref(m_unfinished_verification_exception_40, method, 'unfinishedVerificationException', 'Lorg/mockito/exceptions/Reporter;.unfinishedVerificationException(Lorg/mockito/invocation/Location;)V').
name_ref(m_unsupported_combination_of_annotations_88, method, 'unsupportedCombinationOfAnnotations', 'Lorg/mockito/exceptions/Reporter;.unsupportedCombinationOfAnnotations(Ljava/lang/String;Ljava/lang/String;)V').
name_ref(m_unwrap_to_330, method, 'unwrapTo', 'Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;.unwrapTo<T:Ljava/lang/Object;>([TT;)[TT;').
name_ref(m_using_constructor_with_fancy_serializable_108, method, 'usingConstructorWithFancySerializable', 'Lorg/mockito/exceptions/Reporter;.usingConstructorWithFancySerializable(Lorg/mockito/mock/SerializableMode;)V').
name_ref(m_validate_141, method, 'validate', 'Lorg/mockito/internal/configuration/GlobalConfiguration;.validate()V').
name_ref(m_validate_18, method, 'validate', 'Lorg/mockito/StateMaster;.validate()V').
name_ref(m_validate_most_stuff_259, method, 'validateMostStuff', 'Lorg/mockito/internal/progress/MockingProgressImpl;.validateMostStuff()V').
name_ref(m_validate_state_19, method, 'validateState', 'Lorg/mockito/internal/progress/ThreadSafeMockingProgress;.validateState()V').
name_ref(m_validate_state_246, method, 'validateState', 'Lorg/mockito/internal/progress/ArgumentMatcherStorageImpl;.validateState()V').
name_ref(m_validate_state_258, method, 'validateState', 'Lorg/mockito/internal/progress/MockingProgressImpl;.validateState()V').
name_ref(m_validate_state_260, method, 'validateState', 'Lorg/mockito/internal/progress/ArgumentMatcherStorage;.validateState()V').
name_ref(m_validate_state_275, method, 'validateState', 'Lorg/mockito/internal/progress/MockingProgress;.validateState()V').
name_ref(m_verification_started_254, method, 'verificationStarted', 'Lorg/mockito/internal/progress/MockingProgressImpl;.verificationStarted(Lorg/mockito/verification/VerificationMode;)V').
name_ref(m_verification_started_272, method, 'verificationStarted', 'Lorg/mockito/internal/progress/ThreadSafeMockingProgress;.verificationStarted(Lorg/mockito/verification/VerificationMode;)V').
name_ref(m_wanted_at_most_x_76, method, 'wantedAtMostX', 'Lorg/mockito/exceptions/Reporter;.wantedAtMostX(II)V').
name_ref(m_wanted_but_not_invoked_58, method, 'wantedButNotInvoked', 'Lorg/mockito/exceptions/Reporter;.wantedButNotInvoked(Lorg/mockito/invocation/DescribedInvocation;)V').
name_ref(m_wanted_but_not_invoked_59, method, 'wantedButNotInvoked', 'Lorg/mockito/exceptions/Reporter;.wantedButNotInvoked(Lorg/mockito/invocation/DescribedInvocation;Ljava/util/List<+Lorg/mockito/invocation/DescribedInvocation;>;)V').
name_ref(m_wanted_but_not_invoked_in_order_61, method, 'wantedButNotInvokedInOrder', 'Lorg/mockito/exceptions/Reporter;.wantedButNotInvokedInOrder(Lorg/mockito/invocation/DescribedInvocation;Lorg/mockito/invocation/DescribedInvocation;)V').
name_ref(m_with_mocks_134, method, 'withMocks', 'Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;.withMocks(Ljava/util/Set<Ljava/lang/Object;>;)Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;').
name_ref(m_wrong_type_of_argument_to_return_103, method, 'wrongTypeOfArgumentToReturn', 'Lorg/mockito/exceptions/Reporter;.wrongTypeOfArgumentToReturn(Lorg/mockito/invocation/InvocationOnMock;Ljava/lang/String;Ljava/lang/Class;I)V').
name_ref(m_wrong_type_of_return_value_74, method, 'wrongTypeOfReturnValue', 'Lorg/mockito/exceptions/Reporter;.wrongTypeOfReturnValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V').
name_ref(m_wrong_type_returned_by_default_answer_75, method, 'wrongTypeReturnedByDefaultAnswer', 'Lorg/mockito/exceptions/Reporter;.wrongTypeReturnedByDefaultAnswer(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V').
name_ref(q_calls_real_methods_1, q_name, 'Mockito.CALLS_REAL_METHODS', 'Lorg/mockito/Mockito;:Lorg/mockito/Mockito;.CALLS_REAL_METHODS)Lorg/mockito/stubbing/Answer<Ljava/lang/Object;>;').
name_ref(q_type_2, q_name, 'Boolean.TYPE', 'Ljava/lang/Boolean;:Ljava/lang/Boolean;.TYPE)Ljava/lang/Class<Ljava/lang/Boolean;>;').
name_ref(q_type_3, q_name, 'Character.TYPE', 'Ljava/lang/Character;:Ljava/lang/Character;.TYPE)Ljava/lang/Class<Ljava/lang/Character;>;').
name_ref(q_type_4, q_name, 'Byte.TYPE', 'Ljava/lang/Byte;:Ljava/lang/Byte;.TYPE)Ljava/lang/Class<Ljava/lang/Byte;>;').
name_ref(q_type_5, q_name, 'Short.TYPE', 'Ljava/lang/Short;:Ljava/lang/Short;.TYPE)Ljava/lang/Class<Ljava/lang/Short;>;').
name_ref(q_type_6, q_name, 'Integer.TYPE', 'Ljava/lang/Integer;:Ljava/lang/Integer;.TYPE)Ljava/lang/Class<Ljava/lang/Integer;>;').
name_ref(q_type_7, q_name, 'Long.TYPE', 'Ljava/lang/Long;:Ljava/lang/Long;.TYPE)Ljava/lang/Class<Ljava/lang/Long;>;').
name_ref(q_type_8, q_name, 'Float.TYPE', 'Ljava/lang/Float;:Ljava/lang/Float;.TYPE)Ljava/lang/Class<Ljava/lang/Float;>;').
name_ref(q_type_9, q_name, 'Double.TYPE', 'Ljava/lang/Double;:Ljava/lang/Double;.TYPE)Ljava/lang/Class<Ljava/lang/Double;>;').

%%% End of Code Facts

