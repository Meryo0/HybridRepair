%%% Logic-FL Facts
:- style_check(-discontiguous).

%returns_empty_values_test_1 - org.mockito.internal.stubbing.defaultanswers.ReturnsEmptyValuesTest
throw(m_should_return_empty__iterable_22, exception).

%iterables_1 - org.mockito.internal.util.collections.Iterables
param(p_in_25, 1, m_to_iterable_14).
assign(v_out_26, iterables_1_expr1, line(iterables_1, 16)).
method_invoc(iterables_1_expr1, m_linked_list_31, line(iterables_1, 16)).
method_invoc(iterables_1_expr2, m_has_more_elements_32, line(iterables_1, 17)).
ref(p_in_25, iterables_1_expr2, line(iterables_1, 17)).
return(v_out_26, m_to_iterable_14, line(iterables_1, 20)).

%returns_empty_values_1 - org.mockito.internal.stubbing.defaultanswers.ReturnsEmptyValues
assign(f_methods_guru_17, returns_empty_values_1_expr1, line(returns_empty_values_1, 56)).
method_invoc(returns_empty_values_1_expr1, m_object_methods_guru_18, line(returns_empty_values_1, 56)).
param(p_invocation_18, 1, m_answer_19).
param(p_type_19, 1, m_return_value_for_20).

%object_methods_guru_1 - org.mockito.internal.util.ObjectMethodsGuru
param(p_method_20, 1, m_is_to_string_26).
param(p_method_21, 1, m_is_to_string_27).
param(p_method_22, 1, m_is_equals_method_28).
param(p_method_23, 1, m_is_hash_code_method_29).
param(p_method_24, 1, m_is_compare_to_method_30).

%plugin_loader_1 - org.mockito.internal.configuration.plugins.PluginLoader
param(p_plugin_switch_6, 1, m_plugin_loader_4).
assign(f_plugin_switch_7, p_plugin_switch_6, line(plugin_loader_1, 17)).
param(p_plugin_type_8, 1, m_load_plugin_5).
param(p_default_plugin_class_name_9, 2, m_load_plugin_5).
assign(v_plugin_10, plugin_loader_1_expr4, line(plugin_loader_1, 24)).
method_invoc(plugin_loader_1_expr4, m_load_impl_6, line(plugin_loader_1, 24)).
argument(p_plugin_type_8, 1, plugin_loader_1_expr4).
return(plugin_loader_1_expr6, m_load_plugin_5, line(plugin_loader_1, 33)).
method_invoc(plugin_loader_1_expr6, m_cast_7, line(plugin_loader_1, 33)).
argument(plugin_loader_1_expr7, 1, plugin_loader_1_expr6).
ref(p_plugin_type_8, plugin_loader_1_expr6, line(plugin_loader_1, 33)).
method_invoc(plugin_loader_1_expr7, m_new_instance_8, line(plugin_loader_1, 33)).
throw(plugin_loader_1_expr7, instantiation_exception, line(plugin_loader_1, 33)).
throw(plugin_loader_1_expr7, illegal_access_exception, line(plugin_loader_1, 33)).
ref(plugin_loader_1_expr8, plugin_loader_1_expr7, line(plugin_loader_1, 33)).
method_invoc(plugin_loader_1_expr8, m_for_name_9, line(plugin_loader_1, 33)).
throw(plugin_loader_1_expr8, class_not_found_exception, line(plugin_loader_1, 33)).
argument(p_default_plugin_class_name_9, 1, plugin_loader_1_expr8).
ref(t_class_2, plugin_loader_1_expr8, line(plugin_loader_1, 33)).
param(p_service_11, 1, m_load_impl_6).
assign(v_loader_12, plugin_loader_1_expr9, line(plugin_loader_1, 46)).
method_invoc(plugin_loader_1_expr9, m_get_context_class_loader_10, line(plugin_loader_1, 46)).
ref(plugin_loader_1_expr10, plugin_loader_1_expr9, line(plugin_loader_1, 46)).
method_invoc(plugin_loader_1_expr10, m_current_thread_11, line(plugin_loader_1, 46)).
ref(t_thread_3, plugin_loader_1_expr10, line(plugin_loader_1, 46)).
assign(v_resources_13, plugin_loader_1_expr13, line(plugin_loader_1, 52)).
method_invoc(plugin_loader_1_expr13, m_get_resources_12, line(plugin_loader_1, 52)).
throw(plugin_loader_1_expr13, ioexception, line(plugin_loader_1, 52)).
argument(plugin_loader_1_expr14, 1, plugin_loader_1_expr13).
ref(v_loader_12, plugin_loader_1_expr13, line(plugin_loader_1, 52)).
method_invoc(plugin_loader_1_expr15, m_get_name_13, line(plugin_loader_1, 52)).
ref(p_service_11, plugin_loader_1_expr15, line(plugin_loader_1, 52)).
assign(v_found_plugin_class_14, plugin_loader_1_expr16, line(plugin_loader_1, 58)).
method_invoc(plugin_loader_1_expr16, m_find_plugin_class_3, line(plugin_loader_1, 58)).
argument(plugin_loader_1_expr17, 1, plugin_loader_1_expr16).
ref(plugin_loader_1_expr18, plugin_loader_1_expr16, line(plugin_loader_1, 58)).
method_invoc(plugin_loader_1_expr18, m_plugin_finder_2, line(plugin_loader_1, 58)).
argument(f_plugin_switch_7, 1, plugin_loader_1_expr18).
method_invoc(plugin_loader_1_expr17, m_to_iterable_14, line(plugin_loader_1, 58)).
argument(v_resources_13, 1, plugin_loader_1_expr17).
ref(t_iterables_4, plugin_loader_1_expr17, line(plugin_loader_1, 58)).
return(plugin_loader_1_literal5, m_load_impl_6, line(plugin_loader_1, 64)).

%default_plugin_switch_1 - org.mockito.internal.configuration.plugins.DefaultPluginSwitch
param(p_plugin_class_name_1, 1, m_is_enabled_1).

%test_base_1 - org.mockitoutil.TestBase
param(p_o_27, 1, m_assert_that_38).
param(p_a_28, 2, m_assert_that_38).
param(p_actual_29, 1, m_assert_that_39).
param(p_m_30, 2, m_assert_that_39).
param(p_message_31, 1, m_assert_that_40).
param(p_actual_32, 2, m_assert_that_40).
param(p_m_33, 3, m_assert_that_40).
param(p_substring_34, 1, m_ends_with_41).
param(p_value_35, 1, m_assert_value_42).
param(p_expected_36, 1, m_assert_not_equals_43).
param(p_got_37, 2, m_assert_not_equals_43).
param(p_sub_38, 1, m_assert_contains_44).
param(p_string_39, 2, m_assert_contains_44).
param(p_sub_40, 1, m_assert_contains_ignoring_case_45).
param(p_string_41, 2, m_assert_contains_ignoring_case_45).
param(p_string_42, 1, m_contains_ignoring_case_46).
param(p_sub_43, 2, m_contains_ignoring_case_46).
param(p_sub_44, 1, m_assert_not_contains_47).
param(p_string_45, 2, m_assert_not_contains_47).
param(p_type_46, 1, m_invocation_of_48).
param(p_method_name_47, 2, m_invocation_of_48).
param(p_args_48, 3, m_invocation_of_48).
throw(m_invocation_of_48, no_such_method_exception).
param(p_type_49, 1, m_invocation_of_49).
param(p_method_name_50, 2, m_invocation_of_49).
param(p_real_method_51, 3, m_invocation_of_49).
throw(m_invocation_of_49, no_such_method_exception).
param(p_m_52, 1, m_describe_50).
param(p_o_53, 1, m_is_mock_51).
param(p_list_54, 1, m_assert_contains_type_52).
param(p_clazz_55, 2, m_assert_contains_type_52).
param(p_objects_56, 1, m_matches_53).
param(p_e_57, 1, m_get_stack_trace_54).

%plugin_registry_1 - org.mockito.internal.configuration.plugins.PluginRegistry
assign(f_plugin_switch_15, plugin_registry_1_expr1, line(plugin_registry_1, 9)).
method_invoc(plugin_registry_1_expr1, m_load_plugin_5, line(plugin_registry_1, 10)).
argument(plugin_registry_1_expr2, 1, plugin_registry_1_expr1).
argument(plugin_registry_1_expr3, 2, plugin_registry_1_expr1).
ref(plugin_registry_1_expr4, plugin_registry_1_expr1, line(plugin_registry_1, 10)).
method_invoc(plugin_registry_1_expr4, m_plugin_loader_4, line(plugin_registry_1, 10)).
argument(plugin_registry_1_expr5, 1, plugin_registry_1_expr4).
method_invoc(plugin_registry_1_expr5, m_default_plugin_switch_15, line(plugin_registry_1, 10)).
method_invoc(plugin_registry_1_expr3, m_get_name_13, line(plugin_registry_1, 10)).
ref(plugin_registry_1_expr6, plugin_registry_1_expr3, line(plugin_registry_1, 10)).
assign(f_mock_maker_16, plugin_registry_1_expr7, line(plugin_registry_1, 12)).

%plugin_finder_1 - org.mockito.internal.configuration.plugins.PluginFinder
param(p_plugin_switch_2, 1, m_plugin_finder_2).
assign(f_plugin_switch_3, p_plugin_switch_2, line(plugin_finder_1, 15)).
param(p_resources_4, 1, m_find_plugin_class_3).
ref(p_resources_4, plugin_finder_1_stmt2, line(plugin_finder_1, 19)).
return(plugin_finder_1_literal1, m_find_plugin_class_3, line(plugin_finder_1, 39)).


% Stack Trace Info.
test_failure(failure_1, 'org.mockito.internal.stubbing.defaultanswers.ReturnsEmptyValuesTest', 'should_return_empty_iterable').



%%% End of Static Facts

%%% Values




%%% End of Facts