%%% Logic-FL Facts
:- style_check(-discontiguous).

%method_interceptor_filter_1 - org.mockito.internal.creation.MethodInterceptorFilter
param(p_to_mock_167, 1, m_method_interceptor_filter_194).
param(p_delegate_168, 2, m_method_interceptor_filter_194).
method_invoc(method_interceptor_filter_1_expr1, m_is_interface_195, line(method_interceptor_filter_1, 24)).
ref(p_to_mock_167, method_interceptor_filter_1_expr1, line(method_interceptor_filter_1, 24)).
assign(p_to_mock_167, method_interceptor_filter_1_expr3, line(method_interceptor_filter_1, 25)).
assign(f_equals_method_169, method_interceptor_filter_1_expr5, line(method_interceptor_filter_1, 27)).
method_invoc(method_interceptor_filter_1_expr5, m_get_method_196, line(method_interceptor_filter_1, 27)).
throw(method_interceptor_filter_1_expr5, no_such_method_exception, line(method_interceptor_filter_1, 27)).
throw(method_interceptor_filter_1_expr5, security_exception, line(method_interceptor_filter_1, 27)).
argument(method_interceptor_filter_1_literal1, 1, method_interceptor_filter_1_expr5).
argument(method_interceptor_filter_1_expr6, 2, method_interceptor_filter_1_expr5).
ref(p_to_mock_167, method_interceptor_filter_1_expr5, line(method_interceptor_filter_1, 27)).
assign(f_hash_code_method_170, method_interceptor_filter_1_expr10, line(method_interceptor_filter_1, 28)).
method_invoc(method_interceptor_filter_1_expr10, m_get_method_196, line(method_interceptor_filter_1, 28)).
throw(method_interceptor_filter_1_expr10, no_such_method_exception, line(method_interceptor_filter_1, 28)).
throw(method_interceptor_filter_1_expr10, security_exception, line(method_interceptor_filter_1, 28)).
argument(method_interceptor_filter_1_literal2, 1, method_interceptor_filter_1_expr10).
argument(method_interceptor_filter_1_expr11, 2, method_interceptor_filter_1_expr10).
ref(p_to_mock_167, method_interceptor_filter_1_expr10, line(method_interceptor_filter_1, 28)).
assign(method_interceptor_filter_1_expr11, method_interceptor_filter_1_literal3, line(method_interceptor_filter_1, 28)).
assign(f_delegate_171, p_delegate_168, line(method_interceptor_filter_1, 33)).
param(p_proxy_172, 1, m_intercept_197).
param(p_method_173, 2, m_intercept_197).
param(p_args_174, 3, m_intercept_197).
param(p_method_proxy_175, 4, m_intercept_197).
throw(m_intercept_197, throwable).
param(p_mock_176, 1, m_hash_code_for_mock_198).

%creation_validator_1 - org.mockito.internal.util.CreationValidator
param(p_class_to_mock_280, 1, m_validate_type_316).
method_invoc(creation_validator_1_expr2, m_can_imposterise_215, line(creation_validator_1, 14)).
argument(p_class_to_mock_280, 1, creation_validator_1_expr2).
ref(f_instance_186, creation_validator_1_expr2, line(creation_validator_1, 14)).
ref(t_class_imposterizer_28, q_instance_1, line(creation_validator_1, 14)).
param(p_class_to_mock_281, 1, m_validate_extra_interfaces_317).
param(p_extra_interfaces_282, 2, m_validate_extra_interfaces_317).
return(none, m_validate_extra_interfaces_317, line(creation_validator_1, 21)).

%matchers_binder_1 - org.mockito.internal.invocation.MatchersBinder
param(p_argument_matcher_storage_216, 1, m_bind_matchers_235).
param(p_invocation_217, 2, m_bind_matchers_235).
param(p_invocation_218, 1, m_validate_matchers_236).
param(p_matchers_219, 2, m_validate_matchers_236).

%test_base_1 - org.mockitoutil.TestBase
method_invoc(test_base_1_expr1, m_override_cleans_stack_trace_102, line(test_base_1, 29)).
argument(test_base_1_literal1, 1, test_base_1_expr1).
ref(test_base_1_expr2, test_base_1_expr1, line(test_base_1, 29)).
method_invoc(test_base_1_expr2, m_get_config_180, line(test_base_1, 29)).
ref(t_configuration_access_39, test_base_1_expr2, line(test_base_1, 29)).
method_invoc(test_base_1_expr3, m_override_default_answer_101, line(test_base_1, 30)).
argument(test_base_1_literal2, 1, test_base_1_expr3).
ref(test_base_1_expr4, test_base_1_expr3, line(test_base_1, 30)).
method_invoc(test_base_1_expr4, m_get_config_180, line(test_base_1, 30)).
ref(t_configuration_access_39, test_base_1_expr4, line(test_base_1, 30)).
method_invoc(test_base_1_expr5, m_validate_95, line(test_base_1, 35)).
ref(test_base_1_expr6, test_base_1_expr5, line(test_base_1, 35)).
method_invoc(test_base_1_expr6, m_state_master_363, line(test_base_1, 35)).
method_invoc(test_base_1_expr7, m_init_mocks_86, line(test_base_1, 36)).
argument(test_base_1_expr8, 1, test_base_1_expr7).
ref(t_mockito_annotations_40, test_base_1_expr7, line(test_base_1, 36)).
param(p_o_325, 1, m_assert_that_367).
param(p_a_326, 2, m_assert_that_367).
param(p_actual_327, 1, m_assert_that_368).
param(p_m_328, 2, m_assert_that_368).
param(p_message_329, 1, m_assert_that_369).
param(p_actual_330, 2, m_assert_that_369).
param(p_m_331, 3, m_assert_that_369).
param(p_substring_332, 1, m_ends_with_370).
param(p_value_333, 1, m_assert_value_371).
param(p_expected_334, 1, m_assert_not_equals_372).
param(p_got_335, 2, m_assert_not_equals_372).
param(p_sub_336, 1, m_assert_contains_373).
param(p_string_337, 2, m_assert_contains_373).
param(p_sub_338, 1, m_assert_not_contains_374).
param(p_string_339, 2, m_assert_not_contains_374).
param(p_type_340, 1, m_invocation_of_375).
param(p_method_name_341, 2, m_invocation_of_375).
param(p_args_342, 3, m_invocation_of_375).
throw(m_invocation_of_375, no_such_method_exception).
param(p_type_343, 1, m_invocation_of_376).
param(p_method_name_344, 2, m_invocation_of_376).
param(p_real_method_345, 3, m_invocation_of_376).
throw(m_invocation_of_376, no_such_method_exception).
param(p_m_346, 1, m_describe_377).

%configuration_access_1 - org.mockito.internal.configuration.ConfigurationAccess
return(configuration_access_1_expr1, m_get_config_180, line(configuration_access_1, 12)).
assign(configuration_access_1_expr1, configuration_access_1_expr2, line(configuration_access_1, 12)).
method_invoc(configuration_access_1_expr2, m_get_it_181, line(configuration_access_1, 12)).
ref(configuration_access_1_expr3, configuration_access_1_expr2, line(configuration_access_1, 12)).
method_invoc(configuration_access_1_expr3, m_global_configuration_91, line(configuration_access_1, 12)).

%thread_safe_mocking_progress_1 - org.mockito.internal.progress.ThreadSafeMockingProgress
assign(f_mocking_progress_243, thread_safe_mocking_progress_1_expr1, line(thread_safe_mocking_progress_1, 13)).
method_invoc(thread_safe_mocking_progress_1_expr1, m_thread_local_183, line(thread_safe_mocking_progress_1, 13)).
method_invoc(thread_safe_mocking_progress_1_expr3, m_get_184, line(thread_safe_mocking_progress_1, 16)).
ref(f_mocking_progress_243, thread_safe_mocking_progress_1_expr3, line(thread_safe_mocking_progress_1, 16)).
method_invoc(thread_safe_mocking_progress_1_expr4, m_set_185, line(thread_safe_mocking_progress_1, 17)).
argument(thread_safe_mocking_progress_1_expr5, 1, thread_safe_mocking_progress_1_expr4).
ref(f_mocking_progress_243, thread_safe_mocking_progress_1_expr4, line(thread_safe_mocking_progress_1, 17)).
method_invoc(thread_safe_mocking_progress_1_expr5, m_mocking_progress_impl_278, line(thread_safe_mocking_progress_1, 17)).
return(thread_safe_mocking_progress_1_expr6, m_thread_safely_277, line(thread_safe_mocking_progress_1, 19)).
method_invoc(thread_safe_mocking_progress_1_expr6, m_get_184, line(thread_safe_mocking_progress_1, 19)).
ref(f_mocking_progress_243, thread_safe_mocking_progress_1_expr6, line(thread_safe_mocking_progress_1, 19)).
param(p_i_ongoing_stubbing_244, 1, m_report_ongoing_stubbing_279).
param(p_verify_245, 1, m_verification_started_281).
method_invoc(thread_safe_mocking_progress_1_expr7, m_validate_state_163, line(thread_safe_mocking_progress_1, 43)).
ref(thread_safe_mocking_progress_1_expr8, thread_safe_mocking_progress_1_expr7, line(thread_safe_mocking_progress_1, 43)).
method_invoc(thread_safe_mocking_progress_1_expr8, m_thread_safely_277, line(thread_safe_mocking_progress_1, 43)).
param(p_invocation_246, 1, m_stubbing_completed_284).
method_invoc(thread_safe_mocking_progress_1_expr9, m_reset_ongoing_stubbing_164, line(thread_safe_mocking_progress_1, 59)).
ref(thread_safe_mocking_progress_1_expr10, thread_safe_mocking_progress_1_expr9, line(thread_safe_mocking_progress_1, 59)).
method_invoc(thread_safe_mocking_progress_1_expr10, m_thread_safely_277, line(thread_safe_mocking_progress_1, 59)).

%returns_mocks_1 - org.mockito.internal.stubbing.defaultanswers.ReturnsMocks
assign(f_mockito_core_266, returns_mocks_1_expr1, line(returns_mocks_1, 15)).
method_invoc(returns_mocks_1_expr1, m_mockito_core_52, line(returns_mocks_1, 15)).
assign(f_delegate_267, returns_mocks_1_expr2, line(returns_mocks_1, 16)).
method_invoc(returns_mocks_1_expr2, m_returns_more_empty_values_307, line(returns_mocks_1, 16)).
param(p_invocation_268, 1, m_answer_308).
throw(m_answer_308, throwable).
param(p_clazz_269, 1, m_return_value_for_309).

%globally_configured_answer_1 - org.mockito.internal.stubbing.defaultanswers.GloballyConfiguredAnswer
param(p_invocation_262, 1, m_answer_303).
throw(m_answer_303, throwable).

%argument_matcher_storage_impl_1 - org.mockito.internal.progress.ArgumentMatcherStorageImpl
assign(f_matcher_stack_229, argument_matcher_storage_impl_1_expr1, line(argument_matcher_storage_impl_1, 24)).
method_invoc(argument_matcher_storage_impl_1_expr1, m_stack_251, line(argument_matcher_storage_impl_1, 24)).
param(p_matcher_230, 1, m_report_matcher_252).
param(p_count_231, 1, m_pop_last_argument_matchers_256).
param(p_to_assert_232, 1, m_assert_state_257).
param(p_message_233, 2, m_assert_state_257).
method_invoc(argument_matcher_storage_impl_1_expr3, m_is_empty_260, line(argument_matcher_storage_impl_1, 100)).
ref(f_matcher_stack_229, argument_matcher_storage_impl_1_expr3, line(argument_matcher_storage_impl_1, 100)).

%equals_1 - org.mockito.internal.matchers.Equals
param(p_wanted_220, 1, m_equals_237).
assign(f_wanted_221, p_wanted_220, line(equals_1, 16)).
param(p_actual_222, 1, m_matches_238).
return(equals_1_expr7, m_matches_238, line(equals_1, 23)).
method_invoc(equals_1_expr7, m_equals_239, line(equals_1, 23)).
argument(p_actual_222, 1, equals_1_expr7).
ref(f_wanted_221, equals_1_expr7, line(equals_1, 23)).
param(p_description_223, 1, m_describe_to_240).
method_invoc(equals_1_expr8, m_append_text_241, line(equals_1, 27)).
argument(equals_1_expr9, 1, equals_1_expr8).
ref(p_description_223, equals_1_expr8, line(equals_1, 27)).
method_invoc(equals_1_expr9, m_describe_242, line(equals_1, 27)).
argument(f_wanted_221, 1, equals_1_expr9).
param(p_object_224, 1, m_describe_242).
assign(v_text_225, equals_1_expr10, line(equals_1, 31)).
method_invoc(equals_1_expr10, m_quoting_243, line(equals_1, 31)).
assign(v_text_225, equals_1_expr13, line(equals_1, 35)).
method_invoc(equals_1_expr13, m_to_string_244, line(equals_1, 35)).
ref(p_object_224, equals_1_expr13, line(equals_1, 35)).
assign(v_text_225, equals_1_expr15, line(equals_1, 37)).
method_invoc(equals_1_expr15, m_quoting_243, line(equals_1, 37)).
return(v_text_225, m_describe_242, line(equals_1, 38)).
return(equals_1_literal3, m_quoting_243, line(equals_1, 47)).
param(p_o_226, 1, m_equals_246).
param(p_description_227, 1, m_describe_to_249).
param(p_object_228, 1, m_type_matches_250).

%mockito_configuration_1 - org.mockito.configuration.MockitoConfiguration
assign(f_overridden_default_answer_75, mockito_configuration_1_literal1, line(mockito_configuration_1, 17)).
param(p_default_answer_76, 1, m_override_default_answer_101).
assign(f_overridden_default_answer_75, p_default_answer_76, line(mockito_configuration_1, 22)).
param(p_cleans_stack_trace_77, 1, m_override_cleans_stack_trace_102).
assign(f_cleans_stack_trace_78, p_cleans_stack_trace_77, line(mockito_configuration_1, 27)).
return(mockito_configuration_1_expr7, m_get_annotation_engine_104, line(mockito_configuration_1, 41)).
method_invoc(mockito_configuration_1_expr7, m__105, line(mockito_configuration_1, 41)).
param(p_annotation_79, 1, m_create_mock_for_106).
param(p_field_80, 2, m_create_mock_for_106).

%mock_settings_impl_1 - org.mockito.internal.creation.MockSettingsImpl
param(p_extra_interfaces_177, 1, m_extra_interfaces_200).
return(f_name_178, m_get_mock_name_201, line(mock_settings_impl_1, 35)).
return(f_extra_interfaces_179, m_get_extra_interfaces_202, line(mock_settings_impl_1, 39)).
return(f_spied_instance_180, m_get_spied_instance_203, line(mock_settings_impl_1, 43)).
param(p_name_181, 1, m_name_204).
param(p_spied_instance_182, 1, m_spied_instance_205).
param(p_default_answer_183, 1, m_default_answer_84).
assign(f_default_answer_184, p_default_answer_183, line(mock_settings_impl_1, 58)).
return(mock_settings_impl_1_expr4, m_default_answer_84, line(mock_settings_impl_1, 59)).

%argument_matching_tool_1 - org.mockito.internal.verification.argumentmatching.ArgumentMatchingTool
param(p_matchers_310, 1, m_get_suspiciously_not_matching_args_indexes_341).
param(p_arguments_311, 2, m_get_suspiciously_not_matching_args_indexes_341).
method_invoc(argument_matching_tool_1_expr2, m_size_342, line(argument_matching_tool_1, 21)).
ref(p_matchers_310, argument_matching_tool_1_expr2, line(argument_matching_tool_1, 21)).
ref(p_arguments_311, q_length_2, line(argument_matching_tool_1, 21)).
assign(v_suspicious_312, argument_matching_tool_1_expr3, line(argument_matching_tool_1, 25)).
method_invoc(argument_matching_tool_1_expr3, m_linked_list_227, line(argument_matching_tool_1, 25)).
assign(v_i_313, argument_matching_tool_1_literal1, line(argument_matching_tool_1, 26)).
ref(p_matchers_310, argument_matching_tool_1_stmt4, line(argument_matching_tool_1, 27)).
param(p_m_315, 1, m_safely_matches_343).
param(p_arg_316, 2, m_safely_matches_343).
return(argument_matching_tool_1_expr6, m_safely_matches_343, line(argument_matching_tool_1, 41)).
method_invoc(argument_matching_tool_1_expr6, m_matches_344, line(argument_matching_tool_1, 41)).
argument(p_arg_316, 1, argument_matching_tool_1_expr6).
ref(p_m_315, argument_matching_tool_1_expr6, line(argument_matching_tool_1, 41)).
param(p_m_317, 1, m_to_string_equals_345).
param(p_arg_318, 2, m_to_string_equals_345).
return(argument_matching_tool_1_expr7, m_to_string_equals_345, line(argument_matching_tool_1, 48)).
method_invoc(argument_matching_tool_1_expr7, m_equals_346, line(argument_matching_tool_1, 48)).
argument(argument_matching_tool_1_expr8, 1, argument_matching_tool_1_expr7).
ref(argument_matching_tool_1_expr9, argument_matching_tool_1_expr7, line(argument_matching_tool_1, 48)).
method_invoc(argument_matching_tool_1_expr9, m_to_string_347, line(argument_matching_tool_1, 48)).
argument(p_m_317, 1, argument_matching_tool_1_expr9).
ref(t_string_description_33, argument_matching_tool_1_expr9, line(argument_matching_tool_1, 48)).
method_invoc(argument_matching_tool_1_expr8, m_to_string_244, line(argument_matching_tool_1, 48)).
ref(p_arg_318, argument_matching_tool_1_expr8, line(argument_matching_tool_1, 48)).

%default_mockito_configuration_1 - org.mockito.configuration.DefaultMockitoConfiguration

%mock_handler_1 - org.mockito.internal.MockHandler
param(p_mock_name_129, 1, m_mock_handler_150).
param(p_mocking_progress_130, 2, m_mock_handler_150).
param(p_matchers_binder_131, 3, m_mock_handler_150).
param(p_mock_settings_132, 4, m_mock_handler_150).
assign(f_mock_name_133, p_mock_name_129, line(mock_handler_1, 45)).
assign(f_mocking_progress_134, p_mocking_progress_130, line(mock_handler_1, 46)).
assign(f_matchers_binder_135, p_matchers_binder_131, line(mock_handler_1, 47)).
assign(f_mock_settings_136, p_mock_settings_132, line(mock_handler_1, 48)).
assign(f_mockito_stubber_137, mock_handler_1_expr15, line(mock_handler_1, 49)).
method_invoc(mock_handler_1_expr15, m_mockito_stubber_151, line(mock_handler_1, 49)).
argument(p_mocking_progress_130, 1, mock_handler_1_expr15).
assign(f_registered_invocations_138, mock_handler_1_expr19, line(mock_handler_1, 50)).
method_invoc(mock_handler_1_expr19, m_registered_invocations_152, line(mock_handler_1, 50)).
param(p_old_mock_handler_139, 1, m_mock_handler_153).
param(p_proxy_140, 1, m_intercept_154).
param(p_method_141, 2, m_intercept_154).
param(p_args_142, 3, m_intercept_154).
param(p_method_proxy_143, 4, m_intercept_154).
throw(m_intercept_154, throwable).
param(p_mock_144, 1, m_void_method_stubbable_156).
param(p_answers_145, 1, m_set_answers_for_stubbing_159).

%debugging_info_1 - org.mockito.internal.debugging.DebuggingInfo
assign(f_unused_stubs_210, debugging_info_1_expr1, line(debugging_info_1, 17)).
method_invoc(debugging_info_1_expr1, m_linked_list_227, line(debugging_info_1, 17)).
assign(f_unstubbed_invocations_211, debugging_info_1_expr2, line(debugging_info_1, 18)).
method_invoc(debugging_info_1_expr2, m_linked_list_227, line(debugging_info_1, 18)).
param(p_invocation_212, 1, m_add_stubbed_invocation_228).
param(p_invocation_matcher_213, 1, m_add_potentially_unstubbed_229).
param(p_invocation_matcher_214, 1, m_report_used_stub_230).
param(p_logger_215, 1, m_print_warnings_233).

%class_path_loader_1 - org.mockito.internal.configuration.ClassPathLoader
assign(v_config_class_161, class_path_loader_1_literal1, line(class_path_loader_1, 18)).
assign(v_config_class_161, class_path_loader_1_expr2, line(class_path_loader_1, 20)).
assign(class_path_loader_1_expr2, class_path_loader_1_expr3, line(class_path_loader_1, 20)).
method_invoc(class_path_loader_1_expr3, m_for_name_178, line(class_path_loader_1, 20)).
throw(class_path_loader_1_expr3, class_not_found_exception, line(class_path_loader_1, 20)).
argument(class_path_loader_1_literal2, 1, class_path_loader_1_expr3).
ref(t_class_9, class_path_loader_1_expr3, line(class_path_loader_1, 20)).
return(class_path_loader_1_expr4, m_load_configuration_177, line(class_path_loader_1, 27)).
assign(class_path_loader_1_expr4, class_path_loader_1_expr5, line(class_path_loader_1, 27)).
method_invoc(class_path_loader_1_expr5, m_new_instance_179, line(class_path_loader_1, 27)).
throw(class_path_loader_1_expr5, instantiation_exception, line(class_path_loader_1, 27)).
throw(class_path_loader_1_expr5, illegal_access_exception, line(class_path_loader_1, 27)).
ref(v_config_class_161, class_path_loader_1_expr5, line(class_path_loader_1, 27)).

%returns_smart_nulls_1 - org.mockito.internal.stubbing.defaultanswers.ReturnsSmartNulls
param(p_invocation_273, 1, m_throwing_interceptor_313).
param(p_obj_274, 1, m_intercept_314).
param(p_method_275, 2, m_intercept_314).
param(p_args_276, 3, m_intercept_314).
param(p_proxy_277, 4, m_intercept_314).
throw(m_intercept_314, throwable).
assign(f_delegate_278, returns_smart_nulls_1_expr1, line(returns_smart_nulls_1, 57)).
method_invoc(returns_smart_nulls_1_expr1, m_returns_more_empty_values_307, line(returns_smart_nulls_1, 57)).
param(p_invocation_279, 1, m_answer_315).
throw(m_answer_315, throwable).

%mockito_naming_policy_1 - org.mockito.internal.creation.cglib.MockitoNamingPolicy
assign(f_instance_185, mockito_naming_policy_1_expr1, line(mockito_naming_policy_1, 11)).
method_invoc(mockito_naming_policy_1_expr1, m_mockito_naming_policy_207, line(mockito_naming_policy_1, 11)).

%mock_name_1 - org.mockito.internal.util.MockName
param(p_mock_name_283, 1, m_mock_name_318).
param(p_class_to_mock_284, 2, m_mock_name_318).
assign(f_mock_name_285, mock_name_1_expr4, line(mock_name_1, 15)).
method_invoc(mock_name_1_expr4, m_to_instance_name_319, line(mock_name_1, 15)).
argument(p_class_to_mock_284, 1, mock_name_1_expr4).
assign(f_surrogate_286, mock_name_1_literal2, line(mock_name_1, 16)).
param(p_clazz_287, 1, m_to_instance_name_319).
assign(v_class_name_288, mock_name_1_expr9, line(mock_name_1, 23)).
method_invoc(mock_name_1_expr9, m_get_simple_name_320, line(mock_name_1, 23)).
ref(p_clazz_287, mock_name_1_expr9, line(mock_name_1, 23)).
return(mock_name_1_expr10, m_to_instance_name_319, line(mock_name_1, 25)).
method_invoc(mock_name_1_expr11, m_to_lower_case_321, line(mock_name_1, 25)).
ref(mock_name_1_expr12, mock_name_1_expr11, line(mock_name_1, 25)).
method_invoc(mock_name_1_expr12, m_substring_322, line(mock_name_1, 25)).
argument(mock_name_1_literal3, 1, mock_name_1_expr12).
argument(mock_name_1_literal4, 2, mock_name_1_expr12).
ref(v_class_name_288, mock_name_1_expr12, line(mock_name_1, 25)).
method_invoc(mock_name_1_expr13, m_substring_323, line(mock_name_1, 25)).
argument(mock_name_1_literal5, 1, mock_name_1_expr13).
ref(v_class_name_288, mock_name_1_expr13, line(mock_name_1, 25)).

%returns_more_empty_values_1 - org.mockito.internal.stubbing.defaultanswers.ReturnsMoreEmptyValues
assign(f_delegate_270, returns_more_empty_values_1_expr1, line(returns_more_empty_values_1, 45)).
method_invoc(returns_more_empty_values_1_expr1, m_returns_empty_values_310, line(returns_more_empty_values_1, 45)).
param(p_invocation_271, 1, m_answer_311).
throw(m_answer_311, throwable).
param(p_type_272, 1, m_return_value_for_312).

%mockito_annotations_1 - org.mockito.MockitoAnnotations
param(p_test_class_66, 1, m_init_mocks_86).
assign(v_clazz_67, mockito_annotations_1_expr2, line(mockito_annotations_1, 85)).
method_invoc(mockito_annotations_1_expr2, m_get_class_87, line(mockito_annotations_1, 85)).
ref(p_test_class_66, mockito_annotations_1_expr2, line(mockito_annotations_1, 85)).
method_invoc(mockito_annotations_1_expr5, m_scan_88, line(mockito_annotations_1, 87)).
argument(p_test_class_66, 1, mockito_annotations_1_expr5).
argument(v_clazz_67, 2, mockito_annotations_1_expr5).
assign(v_clazz_67, mockito_annotations_1_expr7, line(mockito_annotations_1, 88)).
method_invoc(mockito_annotations_1_expr7, m_get_superclass_89, line(mockito_annotations_1, 88)).
ref(v_clazz_67, mockito_annotations_1_expr7, line(mockito_annotations_1, 88)).
param(p_test_class_68, 1, m_scan_88).
param(p_clazz_69, 2, m_scan_88).
assign(v_annotation_engine_70, mockito_annotations_1_expr8, line(mockito_annotations_1, 93)).
method_invoc(mockito_annotations_1_expr8, m_get_annotation_engine_90, line(mockito_annotations_1, 93)).
ref(mockito_annotations_1_expr9, mockito_annotations_1_expr8, line(mockito_annotations_1, 93)).
method_invoc(mockito_annotations_1_expr9, m_global_configuration_91, line(mockito_annotations_1, 93)).
assign(v_fields_71, mockito_annotations_1_expr10, line(mockito_annotations_1, 94)).
method_invoc(mockito_annotations_1_expr10, m_get_declared_fields_92, line(mockito_annotations_1, 94)).
throw(mockito_annotations_1_expr10, security_exception, line(mockito_annotations_1, 94)).
ref(p_clazz_69, mockito_annotations_1_expr10, line(mockito_annotations_1, 94)).
ref(v_fields_71, mockito_annotations_1_stmt8, line(mockito_annotations_1, 95)).
ref(mockito_annotations_1_expr11, mockito_annotations_1_stmt9, line(mockito_annotations_1, 96)).
method_invoc(mockito_annotations_1_expr11, m_get_annotations_93, line(mockito_annotations_1, 96)).
ref(v_field_72, mockito_annotations_1_expr11, line(mockito_annotations_1, 96)).

%mockito_core_1 - org.mockito.internal.MockitoCore
assign(f_reporter_146, mockito_core_1_expr1, line(mockito_core_1, 32)).
method_invoc(mockito_core_1_expr1, m_reporter_160, line(mockito_core_1, 32)).
assign(f_mock_util_147, mockito_core_1_expr2, line(mockito_core_1, 33)).
method_invoc(mockito_core_1_expr2, m_mock_util_161, line(mockito_core_1, 33)).
assign(f_mocking_progress_148, mockito_core_1_expr3, line(mockito_core_1, 34)).
method_invoc(mockito_core_1_expr3, m_thread_safe_mocking_progress_3, line(mockito_core_1, 34)).
param(p_class_to_mock_149, 1, m_mock_162).
param(p_mock_settings_150, 2, m_mock_162).
method_invoc(mockito_core_1_expr4, m_validate_state_163, line(mockito_core_1, 37)).
ref(f_mocking_progress_148, mockito_core_1_expr4, line(mockito_core_1, 37)).
method_invoc(mockito_core_1_expr5, m_reset_ongoing_stubbing_164, line(mockito_core_1, 38)).
ref(f_mocking_progress_148, mockito_core_1_expr5, line(mockito_core_1, 38)).
param(p_method_call_151, 1, m_stub_166).
param(p_method_call_152, 1, m_when_167).
param(p_mock_153, 1, m_verify_168).
param(p_mode_154, 2, m_verify_168).
param(p_mocks_155, 1, m_reset_169).
param(p_mocks_156, 1, m_verify_no_more_interactions_170).
param(p_mocks_157, 1, m_assert_mocks_not_empty_171).
param(p_mocks_158, 1, m_in_order_172).
param(p_answer_159, 1, m_do_answer_173).
param(p_mock_160, 1, m_stub_void_174).

%actual_invocation_has_null_argument_npebug_test_1 - org.mockitousage.bugs.ActualInvocationHasNullArgumentNPEBugTest
param(p_something_324, 1, m_do_fun_359).

%mockito_1 - org.mockito.Mockito
assign(f_mockito_core_35, mockito_1_expr1, line(mockito_1, 570)).
method_invoc(mockito_1_expr1, m_mockito_core_52, line(mockito_1, 570)).
assign(f_returns_defaults_36, mockito_1_expr2, line(mockito_1, 581)).
method_invoc(mockito_1_expr2, m_globally_configured_answer_53, line(mockito_1, 581)).
assign(f_returns_smart_nulls_37, mockito_1_expr3, line(mockito_1, 613)).
method_invoc(mockito_1_expr3, m_returns_smart_nulls_54, line(mockito_1, 613)).
assign(f_returns_mocks_38, mockito_1_expr4, line(mockito_1, 626)).
method_invoc(mockito_1_expr4, m_returns_mocks_55, line(mockito_1, 626)).
assign(f_calls_real_methods_39, mockito_1_expr5, line(mockito_1, 660)).
method_invoc(mockito_1_expr5, m_calls_real_methods_56, line(mockito_1, 660)).
param(p_class_to_mock_40, 1, m_mock_57).
param(p_class_to_mock_41, 1, m_mock_58).
param(p_name_42, 2, m_mock_58).
param(p_class_to_mock_43, 1, m_mock_59).
param(p_return_values_44, 2, m_mock_59).
param(p_class_to_mock_45, 1, m_mock_60).
param(p_default_answer_46, 2, m_mock_60).
param(p_class_to_mock_47, 1, m_mock_61).
param(p_mock_settings_48, 2, m_mock_61).
param(p_object_49, 1, m_spy_62).
param(p_method_call_50, 1, m_stub_63).
param(p_method_call_51, 1, m_when_64).
param(p_mock_52, 1, m_verify_65).
param(p_mocks_53, 1, m_reset_66).
param(p_mock_54, 1, m_verify_67).
param(p_mode_55, 2, m_verify_67).
param(p_mocks_56, 1, m_verify_no_more_interactions_68).
param(p_mocks_57, 1, m_verify_zero_interactions_69).
param(p_mock_58, 1, m_stub_void_70).
param(p_to_be_thrown_59, 1, m_do_throw_71).
param(p_answer_60, 1, m_do_answer_73).
param(p_to_be_returned_61, 1, m_do_return_75).
param(p_mocks_62, 1, m_in_order_76).
param(p_wanted_number_of_invocations_63, 1, m_times_77).
param(p_min_number_of_invocations_64, 1, m_at_least_80).
param(p_max_number_of_invocations_65, 1, m_at_most_81).
return(mockito_1_expr6, m_with_settings_83, line(mockito_1, 1480)).
method_invoc(mockito_1_expr6, m_default_answer_84, line(mockito_1, 1480)).
argument(f_returns_defaults_36, 1, mockito_1_expr6).
ref(mockito_1_expr7, mockito_1_expr6, line(mockito_1, 1480)).
method_invoc(mockito_1_expr7, m_mock_settings_impl_85, line(mockito_1, 1480)).

%argument_matching_tool_test_1 - org.mockito.internal.verification.argumentmatching.ArgumentMatchingToolTest
assign(f_tool_319, argument_matching_tool_test_1_expr1, line(argument_matching_tool_test_1, 20)).
method_invoc(argument_matching_tool_test_1_expr1, m_argument_matching_tool_348, line(argument_matching_tool_test_1, 20)).
param(p_desc_320, 1, m_describe_to_353).
assign(v_suspicious_321, argument_matching_tool_test_1_expr2, line(argument_matching_tool_test_1, 82)).
method_invoc(argument_matching_tool_test_1_expr2, m_get_suspiciously_not_matching_args_indexes_341, line(argument_matching_tool_test_1, 82)).
argument(argument_matching_tool_test_1_expr3, 1, argument_matching_tool_test_1_expr2).
argument(argument_matching_tool_test_1_expr4, 2, argument_matching_tool_test_1_expr2).
ref(f_tool_319, argument_matching_tool_test_1_expr2, line(argument_matching_tool_test_1, 82)).
assign(argument_matching_tool_test_1_expr3, argument_matching_tool_test_1_expr5, line(argument_matching_tool_test_1, 82)).
method_invoc(argument_matching_tool_test_1_expr5, m_as_list_355, line(argument_matching_tool_test_1, 82)).
argument(argument_matching_tool_test_1_expr6, 1, argument_matching_tool_test_1_expr5).
ref(t_arrays_35, argument_matching_tool_test_1_expr5, line(argument_matching_tool_test_1, 82)).
method_invoc(argument_matching_tool_test_1_expr6, m_equals_237, line(argument_matching_tool_test_1, 82)).
argument(argument_matching_tool_test_1_literal1, 1, argument_matching_tool_test_1_expr6).
param(p_item_322, 1, m_matches_357).
param(p_description_323, 1, m_describe_to_358).

%returns_empty_values_1 - org.mockito.internal.stubbing.defaultanswers.ReturnsEmptyValues
param(p_invocation_263, 1, m_answer_304).
param(p_type_264, 1, m_return_value_for_305).
param(p_type_265, 1, m_primitive_of_306).

%matchers_1 - org.mockito.Matchers
assign(f_mocking_progress_3, matchers_1_expr1, line(matchers_1, 104)).
method_invoc(matchers_1_expr1, m_thread_safe_mocking_progress_3, line(matchers_1, 104)).
param(p_clazz_4, 1, m_any_13).
param(p_clazz_5, 1, m_any_list_of_17).
param(p_clazz_6, 1, m_any_set_of_19).
param(p_clazz_7, 1, m_any_collection_of_22).
param(p_clazz_8, 1, m_is_a_23).
param(p_value_9, 1, m_eq_24).
param(p_value_10, 1, m_eq_25).
param(p_value_11, 1, m_eq_26).
param(p_value_12, 1, m_eq_27).
param(p_value_13, 1, m_eq_28).
param(p_value_14, 1, m_eq_29).
param(p_value_15, 1, m_eq_30).
param(p_value_16, 1, m_eq_31).
param(p_value_17, 1, m_eq_32).
param(p_value_18, 1, m_ref_eq_33).
param(p_exclude_fields_19, 2, m_ref_eq_33).
param(p_value_20, 1, m_same_34).
param(p_substring_21, 1, m_contains_38).
param(p_regex_22, 1, m_matches_39).
param(p_suffix_23, 1, m_ends_with_40).
param(p_prefix_24, 1, m_starts_with_41).
param(p_matcher_25, 1, m_arg_that_42).
param(p_matcher_26, 1, m_char_that_43).
param(p_matcher_27, 1, m_boolean_that_44).
param(p_matcher_28, 1, m_byte_that_45).
param(p_matcher_29, 1, m_short_that_46).
param(p_matcher_30, 1, m_int_that_47).
param(p_matcher_31, 1, m_long_that_48).
param(p_matcher_32, 1, m_float_that_49).
param(p_matcher_33, 1, m_double_that_50).
param(p_matcher_34, 1, m_report_matcher_51).

%calls_real_methods_1 - org.mockito.internal.stubbing.answers.CallsRealMethods
param(p_invocation_261, 1, m_answer_302).
throw(m_answer_302, throwable).

%reporter_1 - org.mockito.exceptions.Reporter
param(p_t_81, 1, m_checked_exception_invalid_108).
param(p_location_82, 1, m_unfinished_stubbing_110).
param(p_location_83, 1, m_unfinished_verification_exception_112).
param(p_expected_matchers_count_84, 1, m_invalid_use_of_matchers_124).
param(p_recorded_matchers_count_85, 2, m_invalid_use_of_matchers_124).
param(p_wanted_86, 1, m_arguments_are_different_125).
param(p_actual_87, 2, m_arguments_are_different_125).
param(p_actual_location_88, 3, m_arguments_are_different_125).
param(p_wanted_89, 1, m_wanted_but_not_invoked_126).
param(p_wanted_90, 1, m_wanted_but_not_invoked_127).
param(p_invocations_91, 2, m_wanted_but_not_invoked_127).
param(p_wanted_92, 1, m_create_wanted_but_not_invoked_message_128).
param(p_wanted_93, 1, m_wanted_but_not_invoked_in_order_129).
param(p_previous_94, 2, m_wanted_but_not_invoked_in_order_129).
param(p_wanted_count_95, 1, m_too_many_actual_invocations_130).
param(p_actual_count_96, 2, m_too_many_actual_invocations_130).
param(p_wanted_97, 3, m_too_many_actual_invocations_130).
param(p_first_undesired_98, 4, m_too_many_actual_invocations_130).
param(p_wanted_count_99, 1, m_create_too_many_invocations_message_131).
param(p_actual_count_100, 2, m_create_too_many_invocations_message_131).
param(p_wanted_101, 3, m_create_too_many_invocations_message_131).
param(p_first_undesired_102, 4, m_create_too_many_invocations_message_131).
param(p_wanted_103, 1, m_never_wanted_but_invoked_132).
param(p_first_undesired_104, 2, m_never_wanted_but_invoked_132).
param(p_wanted_count_105, 1, m_too_many_actual_invocations_in_order_133).
param(p_actual_count_106, 2, m_too_many_actual_invocations_in_order_133).
param(p_wanted_107, 3, m_too_many_actual_invocations_in_order_133).
param(p_first_undesired_108, 4, m_too_many_actual_invocations_in_order_133).
param(p_discrepancy_109, 1, m_create_too_little_invocations_message_134).
param(p_wanted_110, 2, m_create_too_little_invocations_message_134).
param(p_last_actual_invocation_111, 3, m_create_too_little_invocations_message_134).
param(p_discrepancy_112, 1, m_too_little_actual_invocations_135).
param(p_wanted_113, 2, m_too_little_actual_invocations_135).
param(p_last_actual_location_114, 3, m_too_little_actual_invocations_135).
param(p_discrepancy_115, 1, m_too_little_actual_invocations_in_order_136).
param(p_wanted_116, 2, m_too_little_actual_invocations_in_order_136).
param(p_last_actual_location_117, 3, m_too_little_actual_invocations_in_order_136).
param(p_undesired_118, 1, m_no_more_interactions_wanted_137).
param(p_clazz_119, 1, m_cannot_mock_final_class_138).
param(p_expected_type_120, 1, m_wrong_type_of_return_value_141).
param(p_actual_type_121, 2, m_wrong_type_of_return_value_141).
param(p_method_name_122, 3, m_wrong_type_of_return_value_141).
param(p_max_number_of_invocations_123, 1, m_wanted_at_most_x_142).
param(p_found_size_124, 2, m_wanted_at_most_x_142).
param(p_location_125, 1, m_misplaced_argument_matcher_143).
param(p_location_126, 1, m_smart_null_pointer_exception_144).
param(p_wrong_type_127, 1, m_extra_interfaces_accepts_only_interfaces_147).
param(p_wrong_type_128, 1, m_extra_interfaces_cannot_contain_mocked_type_148).

%mockito_stubber_1 - org.mockito.internal.stubbing.MockitoStubber
assign(f_stubbed_247, mockito_stubber_1_expr2, line(mockito_stubber_1, 20)).
method_invoc(mockito_stubber_1_expr2, m_linked_list_227, line(mockito_stubber_1, 20)).
assign(f_answers_for_stubbing_248, mockito_stubber_1_expr3, line(mockito_stubber_1, 22)).
method_invoc(mockito_stubber_1_expr3, m_array_list_290, line(mockito_stubber_1, 22)).
param(p_mocking_progress_249, 1, m_mockito_stubber_151).
assign(f_mocking_progress_250, p_mocking_progress_249, line(mockito_stubber_1, 27)).
param(p_invocation_251, 1, m_set_invocation_for_potential_stubbing_291).
param(p_answer_252, 1, m_add_answer_292).
param(p_answer_253, 1, m_add_consecutive_answer_293).
param(p_answer_254, 1, m_add_answer_294).
param(p_is_consecutive_255, 2, m_add_answer_294).
param(p_invocation_256, 1, m_answer_to_295).
throw(m_answer_to_295, throwable).
param(p_invocation_257, 1, m_find_answer_for_296).
param(p_answer_258, 1, m_add_answer_for_void_method_297).
param(p_answers_259, 1, m_set_answers_for_stubbing_298).
param(p_invocation_260, 1, m_set_method_for_stubbing_300).

%argument_matcher_1 - org.mockito.ArgumentMatcher
param(p_argument_1, 1, m_matches_1).
param(p_description_2, 1, m_describe_to_2).

%global_configuration_1 - org.mockito.internal.configuration.GlobalConfiguration
assign(f_global_configuration_164, global_configuration_1_expr1, line(global_configuration_1, 19)).
method_invoc(global_configuration_1_expr1, m_thread_local_183, line(global_configuration_1, 19)).
return(global_configuration_1_expr2, m_get_it_181, line(global_configuration_1, 23)).
method_invoc(global_configuration_1_expr2, m_get_184, line(global_configuration_1, 23)).
ref(f_global_configuration_164, global_configuration_1_expr2, line(global_configuration_1, 23)).
method_invoc(global_configuration_1_expr4, m_get_184, line(global_configuration_1, 28)).
ref(f_global_configuration_164, global_configuration_1_expr4, line(global_configuration_1, 28)).
method_invoc(global_configuration_1_expr5, m_set_185, line(global_configuration_1, 29)).
argument(global_configuration_1_expr6, 1, global_configuration_1_expr5).
ref(f_global_configuration_164, global_configuration_1_expr5, line(global_configuration_1, 29)).
method_invoc(global_configuration_1_expr6, m_create_config_186, line(global_configuration_1, 29)).
assign(v_default_configuration_165, global_configuration_1_expr7, line(global_configuration_1, 35)).
method_invoc(global_configuration_1_expr7, m_default_mockito_configuration_187, line(global_configuration_1, 35)).
assign(v_config_166, global_configuration_1_expr8, line(global_configuration_1, 36)).
method_invoc(global_configuration_1_expr8, m_load_configuration_177, line(global_configuration_1, 36)).
ref(global_configuration_1_expr9, global_configuration_1_expr8, line(global_configuration_1, 36)).
method_invoc(global_configuration_1_expr9, m_class_path_loader_188, line(global_configuration_1, 36)).
return(v_config_166, m_create_config_186, line(global_configuration_1, 38)).
method_invoc(global_configuration_1_expr11, m_global_configuration_91, line(global_configuration_1, 45)).
return(global_configuration_1_expr12, m_get_annotation_engine_90, line(global_configuration_1, 53)).
method_invoc(global_configuration_1_expr12, m_get_annotation_engine_191, line(global_configuration_1, 53)).
ref(global_configuration_1_expr13, global_configuration_1_expr12, line(global_configuration_1, 53)).
method_invoc(global_configuration_1_expr13, m_get_184, line(global_configuration_1, 53)).
ref(f_global_configuration_164, global_configuration_1_expr13, line(global_configuration_1, 53)).

%default_annotation_engine_1 - org.mockito.internal.configuration.DefaultAnnotationEngine
param(p_annotation_162, 1, m_create_mock_for_182).
param(p_field_163, 2, m_create_mock_for_182).

%class_imposterizer_1 - org.mockito.internal.creation.jmock.ClassImposterizer
assign(f_instance_186, class_imposterizer_1_expr1, line(class_imposterizer_1, 30)).
method_invoc(class_imposterizer_1_expr1, m_class_imposterizer_209, line(class_imposterizer_1, 30)).
assign(f_objenesis_187, class_imposterizer_1_expr2, line(class_imposterizer_1, 37)).
method_invoc(class_imposterizer_1_expr2, m_objenesis_std_210, line(class_imposterizer_1, 37)).
assign(f_naming_policy_that_allows_imposterisation_of_classes_in_signed_packages_188, class_imposterizer_1_expr3, line(class_imposterizer_1, 39)).
method_invoc(class_imposterizer_1_expr3, m__211, line(class_imposterizer_1, 39)).
param(p_prefix_189, 1, m_get_class_name_212).
param(p_source_190, 2, m_get_class_name_212).
param(p_key_191, 3, m_get_class_name_212).
param(p_names_192, 4, m_get_class_name_212).
assign(f_ignore_bridge_methods_193, class_imposterizer_1_expr4, line(class_imposterizer_1, 46)).
method_invoc(class_imposterizer_1_expr4, m__213, line(class_imposterizer_1, 46)).
param(p_method_194, 1, m_accept_214).
param(p_type_195, 1, m_can_imposterise_215).
return(class_imposterizer_1_expr5, m_can_imposterise_215, line(class_imposterizer_1, 53)).
method_invoc(class_imposterizer_1_expr7, m_is_primitive_216, line(class_imposterizer_1, 53)).
ref(p_type_195, class_imposterizer_1_expr7, line(class_imposterizer_1, 53)).
method_invoc(class_imposterizer_1_expr9, m_is_final_217, line(class_imposterizer_1, 53)).
argument(class_imposterizer_1_expr10, 1, class_imposterizer_1_expr9).
ref(t_modifier_13, class_imposterizer_1_expr9, line(class_imposterizer_1, 53)).
method_invoc(class_imposterizer_1_expr10, m_get_modifiers_218, line(class_imposterizer_1, 53)).
ref(p_type_195, class_imposterizer_1_expr10, line(class_imposterizer_1, 53)).
method_invoc(class_imposterizer_1_expr12, m_is_anonymous_class_219, line(class_imposterizer_1, 53)).
ref(p_type_195, class_imposterizer_1_expr12, line(class_imposterizer_1, 53)).
param(p_interceptor_196, 1, m_imposterise_220).
param(p_mocked_type_197, 2, m_imposterise_220).
param(p_ancillary_types_198, 3, m_imposterise_220).
method_invoc(class_imposterizer_1_expr13, m_set_constructors_accessible_221, line(class_imposterizer_1, 58)).
argument(p_mocked_type_197, 1, class_imposterizer_1_expr13).
argument(class_imposterizer_1_literal1, 2, class_imposterizer_1_expr13).
method_invoc(class_imposterizer_1_expr14, m_set_constructors_accessible_221, line(class_imposterizer_1, 62)).
argument(p_mocked_type_197, 1, class_imposterizer_1_expr14).
argument(class_imposterizer_1_literal2, 2, class_imposterizer_1_expr14).
param(p_mocked_type_199, 1, m_set_constructors_accessible_221).
param(p_accessible_200, 2, m_set_constructors_accessible_221).
ref(class_imposterizer_1_expr15, class_imposterizer_1_stmt5, line(class_imposterizer_1, 67)).
method_invoc(class_imposterizer_1_expr15, m_get_declared_constructors_222, line(class_imposterizer_1, 67)).
throw(class_imposterizer_1_expr15, security_exception, line(class_imposterizer_1, 67)).
ref(p_mocked_type_199, class_imposterizer_1_expr15, line(class_imposterizer_1, 67)).
param(p_mocked_type_202, 1, m_create_proxy_class_223).
param(p_interfaces_203, 2, m_create_proxy_class_223).
param(p_sc_204, 1, m_filter_constructors_224).
param(p_constructors_205, 2, m_filter_constructors_224).
param(p_proxy_class_206, 1, m_create_proxy_225).
param(p_interceptor_207, 2, m_create_proxy_225).
param(p_first_208, 1, m_prepend_226).
param(p_rest_209, 2, m_prepend_226).

%state_master_1 - org.mockito.StateMaster
assign(f_mocking_progress_74, state_master_1_expr1, line(state_master_1, 11)).
method_invoc(state_master_1_expr1, m_thread_safe_mocking_progress_3, line(state_master_1, 11)).
method_invoc(state_master_1_expr2, m_validate_state_96, line(state_master_1, 18)).
ref(f_mocking_progress_74, state_master_1_expr2, line(state_master_1, 18)).

%mocking_progress_impl_1 - org.mockito.internal.progress.MockingProgressImpl
assign(f_reporter_234, mocking_progress_impl_1_expr1, line(mocking_progress_impl_1, 18)).
method_invoc(mocking_progress_impl_1_expr1, m_reporter_160, line(mocking_progress_impl_1, 18)).
assign(f_argument_matcher_storage_235, mocking_progress_impl_1_expr2, line(mocking_progress_impl_1, 19)).
method_invoc(mocking_progress_impl_1_expr2, m_argument_matcher_storage_impl_262, line(mocking_progress_impl_1, 19)).
assign(f_debugging_info_236, mocking_progress_impl_1_expr3, line(mocking_progress_impl_1, 21)).
method_invoc(mocking_progress_impl_1_expr3, m_debugging_info_263, line(mocking_progress_impl_1, 21)).
assign(f_stubbing_in_progress_237, mocking_progress_impl_1_literal1, line(mocking_progress_impl_1, 25)).
param(p_i_ongoing_stubbing_238, 1, m_report_ongoing_stubbing_264).
param(p_verify_239, 1, m_verification_started_266).
assign(f_i_ongoing_stubbing_240, mocking_progress_impl_1_literal2, line(mocking_progress_impl_1, 47)).
method_invoc(mocking_progress_impl_1_expr5, m_validate_189, line(mocking_progress_impl_1, 68)).
ref(t_global_configuration_18, mocking_progress_impl_1_expr5, line(mocking_progress_impl_1, 68)).
method_invoc(mocking_progress_impl_1_expr8, m_validate_state_271, line(mocking_progress_impl_1, 82)).
ref(mocking_progress_impl_1_expr9, mocking_progress_impl_1_expr8, line(mocking_progress_impl_1, 82)).
method_invoc(mocking_progress_impl_1_expr9, m_get_argument_matcher_storage_272, line(mocking_progress_impl_1, 82)).
param(p_invocation_242, 1, m_stubbing_completed_273).
return(f_argument_matcher_storage_235, m_get_argument_matcher_storage_272, line(mocking_progress_impl_1, 103)).

%mock_util_1 - org.mockito.internal.util.MockUtil
param(p_creation_validator_289, 1, m_mock_util_326).
assign(f_creation_validator_290, p_creation_validator_289, line(mock_util_1, 24)).
method_invoc(mock_util_1_expr4, m_mock_util_326, line(mock_util_1, 28)).
argument(mock_util_1_expr5, 1, mock_util_1_expr4).
method_invoc(mock_util_1_expr5, m_creation_validator_327, line(mock_util_1, 28)).
param(p_class_to_mock_291, 1, m_create_mock_328).
param(p_progress_292, 2, m_create_mock_328).
param(p_settings_293, 3, m_create_mock_328).
method_invoc(mock_util_1_expr6, m_validate_type_316, line(mock_util_1, 32)).
argument(p_class_to_mock_291, 1, mock_util_1_expr6).
ref(f_creation_validator_290, mock_util_1_expr6, line(mock_util_1, 32)).
method_invoc(mock_util_1_expr7, m_validate_extra_interfaces_317, line(mock_util_1, 33)).
argument(p_class_to_mock_291, 1, mock_util_1_expr7).
argument(mock_util_1_expr8, 2, mock_util_1_expr7).
ref(f_creation_validator_290, mock_util_1_expr7, line(mock_util_1, 33)).
method_invoc(mock_util_1_expr8, m_get_extra_interfaces_202, line(mock_util_1, 33)).
ref(p_settings_293, mock_util_1_expr8, line(mock_util_1, 33)).
assign(v_mock_name_294, mock_util_1_expr9, line(mock_util_1, 35)).
method_invoc(mock_util_1_expr9, m_mock_name_318, line(mock_util_1, 35)).
argument(mock_util_1_expr10, 1, mock_util_1_expr9).
argument(p_class_to_mock_291, 2, mock_util_1_expr9).
method_invoc(mock_util_1_expr10, m_get_mock_name_201, line(mock_util_1, 35)).
ref(p_settings_293, mock_util_1_expr10, line(mock_util_1, 35)).
assign(v_mock_handler_295, mock_util_1_expr11, line(mock_util_1, 36)).
method_invoc(mock_util_1_expr11, m_mock_handler_150, line(mock_util_1, 36)).
argument(v_mock_name_294, 1, mock_util_1_expr11).
argument(p_progress_292, 2, mock_util_1_expr11).
argument(mock_util_1_expr12, 3, mock_util_1_expr11).
argument(p_settings_293, 4, mock_util_1_expr11).
method_invoc(mock_util_1_expr12, m_matchers_binder_329, line(mock_util_1, 36)).
assign(v_filter_296, mock_util_1_expr13, line(mock_util_1, 37)).
method_invoc(mock_util_1_expr13, m_method_interceptor_filter_194, line(mock_util_1, 37)).
argument(p_class_to_mock_291, 1, mock_util_1_expr13).
argument(v_mock_handler_295, 2, mock_util_1_expr13).
assign(v_interfaces_297, mock_util_1_expr14, line(mock_util_1, 38)).
method_invoc(mock_util_1_expr14, m_get_extra_interfaces_202, line(mock_util_1, 38)).
ref(p_settings_293, mock_util_1_expr14, line(mock_util_1, 38)).
assign(v_ancillary_types_298, mock_util_1_expr15, line(mock_util_1, 39)).
cond_expr(mock_util_1_expr16, mock_util_1_expr17, v_interfaces_297, line(mock_util_1, 39)).
assign(v_spied_instance_299, mock_util_1_expr18, line(mock_util_1, 40)).
method_invoc(mock_util_1_expr18, m_get_spied_instance_203, line(mock_util_1, 40)).
ref(p_settings_293, mock_util_1_expr18, line(mock_util_1, 40)).
param(p_mock_300, 1, m_reset_mock_330).
param(p_progress_301, 2, m_reset_mock_330).
param(p_mock_302, 1, m_get_mock_handler_331).
param(p_mock_303, 1, m_is_mockito_mock_332).
param(p_mock_304, 1, m_is_mock_333).
param(p_mock_305, 1, m_get_interceptor_334).
param(p_mock_306, 1, m_get_mock_name_335).

%registered_invocations_1 - org.mockito.internal.verification.RegisteredInvocations
assign(f_invocations_307, registered_invocations_1_expr1, line(registered_invocations_1, 18)).
method_invoc(registered_invocations_1_expr1, m_synchronized_list_336, line(registered_invocations_1, 18)).
argument(registered_invocations_1_expr2, 1, registered_invocations_1_expr1).
ref(t_collections_30, registered_invocations_1_expr1, line(registered_invocations_1, 18)).
method_invoc(registered_invocations_1_expr2, m_linked_list_227, line(registered_invocations_1, 18)).
param(p_invocation_308, 1, m_add_337).
param(p_invocation_309, 1, m_is_out_340).


% Stack Trace Info.
test_failure(failure_1, 'org.mockito.internal.verification.argumentmatching.ArgumentMatchingToolTest', 'shouldWorkFineWhenGivenArgIsNull').
trace(trace_1, failure_1, m_to_string_equals_345, line(argument_matching_tool_1, 48), failure_1, target).
trace(trace_2, trace_1, m_get_suspiciously_not_matching_args_indexes_341, line(argument_matching_tool_1, 28), failure_1, target).
trace(trace_3, trace_2, m_should_work_fine_when_given_arg_is_null_354, line(argument_matching_tool_test_1, 82), failure_1, target).
trace(trace_4, trace_3, 'invoke0', line(jdk_internal_reflect_native_method_accessor_impl, -2), failure_1, non_target).
trace(trace_5, trace_4, 'invoke', line(jdk_internal_reflect_native_method_accessor_impl, 77), failure_1, non_target).
trace(trace_6, trace_5, 'invoke', line(jdk_internal_reflect_delegating_method_accessor_impl, 43), failure_1, non_target).
trace(trace_7, trace_6, 'invoke', line(java_lang_reflect_method, 569), failure_1, non_target).
trace(trace_8, trace_7, 'runReflectiveCall', line(org_junit_runners_model_framework_method_1, 59), failure_1, non_target).
trace(trace_9, trace_8, 'run', line(org_junit_internal_runners_model_reflective_callable, 12), failure_1, non_target).
trace(trace_10, trace_9, 'invokeExplosively', line(org_junit_runners_model_framework_method, 56), failure_1, non_target).
trace(trace_11, trace_10, 'evaluate', line(org_junit_internal_runners_statements_invoke_method, 17), failure_1, non_target).
trace(trace_12, trace_11, 'evaluate', line(org_junit_internal_runners_statements_run_befores, 26), failure_1, non_target).
trace(trace_13, trace_12, 'evaluate', line(org_junit_internal_runners_statements_run_afters, 27), failure_1, non_target).
trace(trace_14, trace_13, 'evaluate', line(org_junit_runners_parent_runner_3, 306), failure_1, non_target).
trace(trace_15, trace_14, 'evaluate', line(org_junit_runners_block_junit4_class_runner_1, 100), failure_1, non_target).
trace(trace_16, trace_15, 'runLeaf', line(org_junit_runners_parent_runner, 366), failure_1, non_target).
trace(trace_17, trace_16, 'runChild', line(org_junit_runners_block_junit4_class_runner, 103), failure_1, non_target).
trace(trace_18, trace_17, 'runChild', line(org_junit_runners_block_junit4_class_runner, 63), failure_1, non_target).
trace(trace_19, trace_18, 'run', line(org_junit_runners_parent_runner_4, 331), failure_1, non_target).
trace(trace_20, trace_19, 'schedule', line(org_junit_runners_parent_runner_1, 79), failure_1, non_target).
trace(trace_21, trace_20, 'runChildren', line(org_junit_runners_parent_runner, 329), failure_1, non_target).
trace(trace_22, trace_21, 'access$100', line(org_junit_runners_parent_runner, 66), failure_1, non_target).
trace(trace_23, trace_22, 'evaluate', line(org_junit_runners_parent_runner_2, 293), failure_1, non_target).
trace(trace_24, trace_23, 'evaluate', line(org_junit_runners_parent_runner_3, 306), failure_1, non_target).
trace(trace_25, trace_24, 'run', line(org_junit_runners_parent_runner, 413), failure_1, non_target).
trace(trace_26, trace_25, 'run', line(org_junit_runner_junit_core, 137), failure_1, non_target).
trace(trace_27, trace_26, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_1, non_target).
test_failure(failure_2, 'org.mockitousage.bugs.ActualInvocationHasNullArgumentNPEBugTest', 'shouldAllowPassingNullArgument').



%%% End of Static Facts

%%% Values

val(p_arg_318, null, line(argument_matching_tool_1, 48)).



%%% End of Facts