%%% Code Facts
:- style_check(-discontiguous).
%%% Classes
class(method_interceptor_filter_1, 'org.mockito.internal.creation.MethodInterceptorFilter').
class(creation_validator_1, 'org.mockito.internal.util.CreationValidator').
class(matchers_binder_1, 'org.mockito.internal.invocation.MatchersBinder').
class(test_base_1, 'org.mockitoutil.TestBase').
class(configuration_access_1, 'org.mockito.internal.configuration.ConfigurationAccess').
class(thread_safe_mocking_progress_1, 'org.mockito.internal.progress.ThreadSafeMockingProgress').
class(returns_mocks_1, 'org.mockito.internal.stubbing.defaultanswers.ReturnsMocks').
class(globally_configured_answer_1, 'org.mockito.internal.stubbing.defaultanswers.GloballyConfiguredAnswer').
class(argument_matcher_storage_impl_1, 'org.mockito.internal.progress.ArgumentMatcherStorageImpl').
class(equals_1, 'org.mockito.internal.matchers.Equals').
class(mockito_configuration_1, 'org.mockito.configuration.MockitoConfiguration').
class(mock_settings_impl_1, 'org.mockito.internal.creation.MockSettingsImpl').
class(argument_matching_tool_1, 'org.mockito.internal.verification.argumentmatching.ArgumentMatchingTool').
class(default_mockito_configuration_1, 'org.mockito.configuration.DefaultMockitoConfiguration').
class(mock_handler_1, 'org.mockito.internal.MockHandler').
class(debugging_info_1, 'org.mockito.internal.debugging.DebuggingInfo').
class(class_path_loader_1, 'org.mockito.internal.configuration.ClassPathLoader').
class(returns_smart_nulls_1, 'org.mockito.internal.stubbing.defaultanswers.ReturnsSmartNulls').
class(mockito_naming_policy_1, 'org.mockito.internal.creation.cglib.MockitoNamingPolicy').
class(mock_name_1, 'org.mockito.internal.util.MockName').
class(returns_more_empty_values_1, 'org.mockito.internal.stubbing.defaultanswers.ReturnsMoreEmptyValues').
class(mockito_annotations_1, 'org.mockito.MockitoAnnotations').
class(mockito_core_1, 'org.mockito.internal.MockitoCore').
class(actual_invocation_has_null_argument_npebug_test_1, 'org.mockitousage.bugs.ActualInvocationHasNullArgumentNPEBugTest').
class(mockito_1, 'org.mockito.Mockito').
class(argument_matching_tool_test_1, 'org.mockito.internal.verification.argumentmatching.ArgumentMatchingToolTest').
class(returns_empty_values_1, 'org.mockito.internal.stubbing.defaultanswers.ReturnsEmptyValues').
class(matchers_1, 'org.mockito.Matchers').
class(calls_real_methods_1, 'org.mockito.internal.stubbing.answers.CallsRealMethods').
class(reporter_1, 'org.mockito.exceptions.Reporter').
class(mockito_stubber_1, 'org.mockito.internal.stubbing.MockitoStubber').
class(argument_matcher_1, 'org.mockito.ArgumentMatcher').
class(global_configuration_1, 'org.mockito.internal.configuration.GlobalConfiguration').
class(default_annotation_engine_1, 'org.mockito.internal.configuration.DefaultAnnotationEngine').
class(class_imposterizer_1, 'org.mockito.internal.creation.jmock.ClassImposterizer').
class(state_master_1, 'org.mockito.StateMaster').
class(mocking_progress_impl_1, 'org.mockito.internal.progress.MockingProgressImpl').
class(mock_util_1, 'org.mockito.internal.util.MockUtil').
class(registered_invocations_1, 'org.mockito.internal.verification.RegisteredInvocations').

%%% Methods
%method_interceptor_filter_1 - org.mockito.internal.creation.MethodInterceptorFilter
method(m_method_interceptor_filter_194, range(method_interceptor_filter_1, 594, 652, 21, 34)).
method(m_intercept_197, range(method_interceptor_filter_1, 1252, 481, 36, 47)).
method(m_hash_code_for_mock_198, range(method_interceptor_filter_1, 1739, 107, 49, 51)).
method(m_get_delegate_199, range(method_interceptor_filter_1, 1852, 55, 53, 55)).
%creation_validator_1 - org.mockito.internal.util.CreationValidator
method(m_validate_type_316, range(creation_validator_1, 340, 198, 13, 17)).
method(m_validate_extra_interfaces_317, range(creation_validator_1, 550, 363, 19, 29)).
%matchers_binder_1 - org.mockito.internal.invocation.MatchersBinder
method(m_bind_matchers_235, range(matchers_binder_1, 383, 383, 16, 22)).
method(m_validate_matchers_236, range(matchers_binder_1, 772, 431, 24, 32)).
%test_base_1 - org.mockitoutil.TestBase
method(m_clean_up_config_in_any_case_361, range(test_base_1, 782, 197, 27, 31)).
method(m_init_362, range(test_base_1, 985, 120, 33, 37)).
method(m_make_stack_traces_clean_364, range(test_base_1, 1115, 121, 39, 41)).
method(m_reset_state_365, range(test_base_1, 1246, 67, 43, 45)).
method(m_get_last_invocation_366, range(test_base_1, 1323, 102, 47, 49)).
method(m_assert_that_367, range(test_base_1, 1487, 90, 52, 54)).
method(m_assert_that_368, range(test_base_1, 1587, 116, 56, 58)).
method(m_assert_that_369, range(test_base_1, 1713, 141, 60, 62)).
method(m_ends_with_370, range(test_base_1, 1864, 372, 64, 72)).
method(m_assert_value_371, range(test_base_1, 1986, 233, 66, 70)).
method(m_assert_not_equals_372, range(test_base_1, 2246, 114, 74, 76)).
method(m_assert_contains_373, range(test_base_1, 2366, 302, 78, 87)).
method(m_assert_not_contains_374, range(test_base_1, 2678, 310, 89, 98)).
method(m_invocation_of_375, range(test_base_1, 2994, 246, 100, 103)).
method(m_invocation_of_376, range(test_base_1, 3246, 267, 105, 108)).
method(m_describe_377, range(test_base_1, 3519, 104, 110, 112)).
%configuration_access_1 - org.mockito.internal.configuration.ConfigurationAccess
method(m_get_config_180, range(configuration_access_1, 271, 129, 11, 13)).
%thread_safe_mocking_progress_1 - org.mockito.internal.progress.ThreadSafeMockingProgress
method(m_thread_safely_277, range(thread_safe_mocking_progress_1, 508, 198, 15, 20)).
method(m_report_ongoing_stubbing_279, range(thread_safe_mocking_progress_1, 716, 140, 22, 24)).
method(m_pull_ongoing_stubbing_280, range(thread_safe_mocking_progress_1, 862, 106, 26, 28)).
method(m_verification_started_281, range(thread_safe_mocking_progress_1, 978, 116, 30, 32)).
method(m_pull_verification_mode_282, range(thread_safe_mocking_progress_1, 1100, 108, 34, 36)).
method(m_stubbing_started_283, range(thread_safe_mocking_progress_1, 1214, 79, 38, 40)).
method(m_validate_state_96, range(thread_safe_mocking_progress_1, 1299, 75, 42, 44)).
method(m_stubbing_completed_284, range(thread_safe_mocking_progress_1, 1380, 114, 46, 48)).
method(m_to_string_285, range(thread_safe_mocking_progress_1, 1504, 74, 50, 52)).
method(m_reset_286, range(thread_safe_mocking_progress_1, 1584, 59, 54, 56)).
method(m_reset_ongoing_stubbing_287, range(thread_safe_mocking_progress_1, 1649, 89, 58, 60)).
method(m_get_argument_matcher_storage_288, range(thread_safe_mocking_progress_1, 1744, 124, 62, 64)).
method(m_get_debugging_info_289, range(thread_safe_mocking_progress_1, 1874, 97, 66, 68)).
%returns_mocks_1 - org.mockito.internal.stubbing.defaultanswers.ReturnsMocks
method(m_answer_308, range(returns_mocks_1, 628, 276, 18, 25)).
method(m_return_value_for_309, range(returns_mocks_1, 912, 288, 27, 34)).
%globally_configured_answer_1 - org.mockito.internal.stubbing.defaultanswers.GloballyConfiguredAnswer
method(m_answer_303, range(globally_configured_answer_1, 567, 156, 19, 21)).
%argument_matcher_storage_impl_1 - org.mockito.internal.progress.ArgumentMatcherStorageImpl
method(m_report_matcher_252, range(argument_matcher_storage_impl_1, 948, 161, 29, 32)).
method(m_pull_matchers_253, range(argument_matcher_storage_impl_1, 1224, 295, 37, 45)).
method(m_report_and_254, range(argument_matcher_storage_impl_1, 1631, 272, 50, 55)).
method(m_report_not_255, range(argument_matcher_storage_impl_1, 2015, 279, 60, 65)).
method(m_pop_last_argument_matchers_256, range(argument_matcher_storage_impl_1, 2300, 533, 67, 77)).
method(m_assert_state_257, range(argument_matcher_storage_impl_1, 2839, 197, 79, 84)).
method(m_report_or_258, range(argument_matcher_storage_impl_1, 3147, 256, 89, 94)).
method(m_validate_state_259, range(argument_matcher_storage_impl_1, 3519, 269, 99, 105)).
method(m_reset_261, range(argument_matcher_storage_impl_1, 3896, 57, 110, 112)).
%equals_1 - org.mockito.internal.matchers.Equals
method(m_equals_237, range(equals_1, 399, 66, 15, 17)).
method(m_matches_238, range(equals_1, 471, 163, 19, 24)).
method(m_describe_to_240, range(equals_1, 640, 105, 26, 28)).
method(m_describe_242, range(equals_1, 751, 245, 30, 39)).
method(m_quoting_243, range(equals_1, 1002, 221, 41, 49)).
method(m_get_wanted_245, range(equals_1, 1229, 65, 51, 53)).
method(m_equals_246, range(equals_1, 1300, 309, 55, 62)).
method(m_hash_code_247, range(equals_1, 1615, 123, 64, 67)).
method(m_with_extra_type_info_248, range(equals_1, 1744, 270, 69, 74)).
method(m_describe_to_249, range(equals_1, 1838, 168, 71, 73)).
method(m_type_matches_250, range(equals_1, 2020, 140, 76, 78)).
%mockito_configuration_1 - org.mockito.configuration.MockitoConfiguration
method(m_override_default_answer_101, range(mockito_configuration_1, 702, 127, 21, 23)).
method(m_override_cleans_stack_trace_102, range(mockito_configuration_1, 902, 122, 26, 28)).
method(m_get_default_answer_103, range(mockito_configuration_1, 1032, 232, 30, 37)).
method(m_get_annotation_engine_104, range(mockito_configuration_1, 1276, 503, 39, 51)).
method(m_create_mock_for_106, range(mockito_configuration_1, 1400, 360, 42, 49)).
method(m_cleans_stack_trace_107, range(mockito_configuration_1, 1791, 91, 53, 56)).
%mock_settings_impl_1 - org.mockito.internal.creation.MockSettingsImpl
method(m_extra_interfaces_200, range(mock_settings_impl_1, 490, 611, 18, 32)).
method(m_get_mock_name_201, range(mock_settings_impl_1, 1109, 58, 34, 36)).
method(m_get_extra_interfaces_202, range(mock_settings_impl_1, 1175, 80, 38, 40)).
method(m_get_spied_instance_203, range(mock_settings_impl_1, 1263, 72, 42, 44)).
method(m_name_204, range(mock_settings_impl_1, 1343, 95, 46, 49)).
method(m_spied_instance_205, range(mock_settings_impl_1, 1446, 131, 51, 54)).
method(m_default_answer_84, range(mock_settings_impl_1, 1585, 167, 56, 60)).
method(m_get_default_answer_206, range(mock_settings_impl_1, 1760, 80, 62, 64)).
%argument_matching_tool_1 - org.mockito.internal.verification.argumentmatching.ArgumentMatchingTool
method(m_get_suspiciously_not_matching_args_indexes_341, range(argument_matching_tool_1, 458, 887, 17, 37)).
method(m_safely_matches_343, range(argument_matching_tool_1, 1353, 183, 39, 45)).
method(m_to_string_equals_345, range(argument_matching_tool_1, 1544, 132, 47, 49)).
%default_mockito_configuration_1 - org.mockito.configuration.DefaultMockitoConfiguration
method(m_get_return_values_97, range(default_mockito_configuration_1, 887, 266, 25, 29)).
method(m_get_default_answer_98, range(default_mockito_configuration_1, 1161, 91, 31, 33)).
method(m_get_annotation_engine_99, range(default_mockito_configuration_1, 1364, 101, 38, 40)).
method(m_cleans_stack_trace_100, range(default_mockito_configuration_1, 1584, 64, 45, 47)).
%mock_handler_1 - org.mockito.internal.MockHandler
method(m_mock_handler_150, range(mock_handler_1, 1770, 450, 44, 51)).
method(m_mock_handler_153, range(mock_handler_1, 2232, 190, 53, 55)).
method(m_intercept_154, range(mock_handler_1, 2430, 2636, 57, 101)).
method(m_verify_no_more_interactions_155, range(mock_handler_1, 5074, 216, 103, 106)).
method(m_void_method_stubbable_156, range(mock_handler_1, 5298, 136, 108, 110)).
method(m_get_registered_invocations_157, range(mock_handler_1, 5442, 107, 112, 114)).
method(m_get_mock_name_158, range(mock_handler_1, 5557, 64, 116, 118)).
method(m_set_answers_for_stubbing_159, range(mock_handler_1, 5629, 156, 120, 123)).
%debugging_info_1 - org.mockito.internal.debugging.DebuggingInfo
method(m_add_stubbed_invocation_228, range(debugging_info_1, 673, 527, 22, 36)).
method(m_add_potentially_unstubbed_229, range(debugging_info_1, 1208, 199, 38, 43)).
method(m_report_used_stub_230, range(debugging_info_1, 1419, 320, 45, 53)).
method(m_collect_data_231, range(debugging_info_1, 1747, 66, 55, 57)).
method(m_clear_data_232, range(debugging_info_1, 1821, 134, 59, 63)).
method(m_print_warnings_233, range(debugging_info_1, 1963, 240, 65, 70)).
method(m_has_data_234, range(debugging_info_1, 2211, 108, 72, 74)).
%class_path_loader_1 - org.mockito.internal.configuration.ClassPathLoader
method(m_load_configuration_177, range(class_path_loader_1, 343, 1113, 12, 35)).
%returns_smart_nulls_1 - org.mockito.internal.stubbing.defaultanswers.ReturnsSmartNulls
method(m_throwing_interceptor_313, range(returns_smart_nulls_1, 1765, 112, 43, 45)).
method(m_intercept_314, range(returns_smart_nulls_1, 1889, 401, 47, 54)).
method(m_answer_315, range(returns_smart_nulls_1, 2382, 506, 59, 69)).
%mockito_naming_policy_1 - org.mockito.internal.creation.cglib.MockitoNamingPolicy
method(m_get_tag_208, range(mockito_naming_policy_1, 390, 87, 13, 16)).
%mock_name_1 - org.mockito.internal.util.MockName
method(m_mock_name_318, range(mock_name_1, 267, 291, 12, 20)).
method(m_to_instance_name_319, range(mock_name_1, 566, 229, 22, 26)).
method(m_is_surrogate_324, range(mock_name_1, 807, 64, 28, 30)).
method(m_to_string_325, range(mock_name_1, 883, 74, 32, 35)).
%returns_more_empty_values_1 - org.mockito.internal.stubbing.defaultanswers.ReturnsMoreEmptyValues
method(m_answer_311, range(returns_more_empty_values_1, 1483, 299, 50, 58)).
method(m_return_value_for_312, range(returns_more_empty_values_1, 1792, 292, 60, 68)).
%mockito_annotations_1 - org.mockito.MockitoAnnotations
method(m_init_mocks_86, range(mockito_annotations_1, 2759, 612, 75, 90)).
method(m_scan_88, range(mockito_annotations_1, 3377, 952, 92, 111)).
%mockito_core_1 - org.mockito.internal.MockitoCore
method(m_mock_162, range(mockito_core_1, 1371, 266, 36, 40)).
method(m_stub_165, range(mockito_core_1, 1649, 272, 42, 49)).
method(m_stub_166, range(mockito_core_1, 1929, 180, 51, 55)).
method(m_when_167, range(mockito_core_1, 2117, 143, 57, 60)).
method(m_verify_168, range(mockito_core_1, 2278, 311, 63, 71)).
method(m_reset_169, range(mockito_core_1, 2601, 271, 73, 81)).
method(m_verify_no_more_interactions_170, range(mockito_core_1, 2884, 539, 83, 96)).
method(m_assert_mocks_not_empty_171, range(mockito_core_1, 3435, 190, 98, 102)).
method(m_in_order_172, range(mockito_core_1, 3637, 533, 104, 117)).
method(m_do_answer_173, range(mockito_core_1, 4182, 192, 119, 123)).
method(m_stub_void_174, range(mockito_core_1, 4386, 219, 125, 129)).
method(m_validate_mockito_usage_175, range(mockito_core_1, 4613, 85, 131, 133)).
method(m_get_last_invocation_176, range(mockito_core_1, 4706, 395, 135, 142)).
%actual_invocation_has_null_argument_npebug_test_1 - org.mockitousage.bugs.ActualInvocationHasNullArgumentNPEBugTest
method(m_do_fun_359, range(actual_invocation_has_null_argument_npebug_test_1, 399, 31, 16, 16)).
method(m_should_allow_passing_null_argument_360, range(actual_invocation_has_null_argument_npebug_test_1, 442, 410, 19, 34)).
%mockito_1 - org.mockito.Mockito
method(m_mock_57, range(mockito_1, 28746, 374, 662, 672)).
method(m_mock_58, range(mockito_1, 29132, 926, 674, 692)).
method(m_mock_59, range(mockito_1, 30070, 1447, 694, 726)).
method(m_mock_60, range(mockito_1, 31529, 926, 728, 749)).
method(m_mock_61, range(mockito_1, 32467, 1195, 751, 776)).
method(m_spy_62, range(mockito_1, 33674, 3098, 778, 848)).
method(m_stub_63, range(mockito_1, 36780, 1199, 850, 879)).
method(m_when_64, range(mockito_1, 37991, 2702, 881, 942)).
method(m_verify_65, range(mockito_1, 40701, 1064, 944, 971)).
method(m_reset_66, range(mockito_1, 41777, 1483, 973, 1002)).
method(m_verify_67, range(mockito_1, 43269, 836, 1004, 1026)).
method(m_verify_no_more_interactions_68, range(mockito_1, 44113, 1896, 1028, 1071)).
method(m_verify_zero_interactions_69, range(mockito_1, 46017, 751, 1073, 1090)).
method(m_stub_void_70, range(mockito_1, 46776, 1254, 1092, 1126)).
method(m_do_throw_71, range(mockito_1, 48042, 671, 1128, 1144)).
method(m_do_call_real_method_72, range(mockito_1, 48721, 1762, 1146, 1178)).
method(m_do_answer_73, range(mockito_1, 50495, 932, 1180, 1204)).
method(m_do_nothing_74, range(mockito_1, 51441, 1266, 1206, 1243)).
method(m_do_return_75, range(mockito_1, 52723, 1889, 1245, 1289)).
method(m_in_order_76, range(mockito_1, 54621, 917, 1291, 1314)).
method(m_times_77, range(mockito_1, 55548, 503, 1316, 1330)).
method(m_never_78, range(mockito_1, 56063, 628, 1332, 1351)).
method(m_at_least_once_79, range(mockito_1, 56703, 403, 1353, 1366)).
method(m_at_least_80, range(mockito_1, 57114, 487, 1368, 1382)).
method(m_at_most_81, range(mockito_1, 57613, 479, 1384, 1398)).
method(m_validate_mockito_usage_82, range(mockito_1, 58100, 3217, 1400, 1447)).
method(m_with_settings_83, range(mockito_1, 61325, 1494, 1449, 1481)).
%argument_matching_tool_test_1 - org.mockito.internal.verification.argumentmatching.ArgumentMatchingToolTest
method(m_should_not_find_any_suspicious_matchers_when_number_of_arguments_doesnt_match_349, range(argument_matching_tool_test_1, 610, 386, 22, 32)).
method(m_should_not_find_any_suspicious_matchers_when_arguments_match_350, range(argument_matching_tool_test_1, 1004, 397, 34, 44)).
method(m_should_find_suspicious_matchers_351, range(argument_matching_tool_test_1, 1413, 539, 46, 59)).
method(m_should_not_find_suspicious_matchers_when_types_are_the_same_352, range(argument_matching_tool_test_1, 1964, 660, 61, 77)).
method(m_describe_to_353, range(argument_matching_tool_test_1, 2133, 193, 65, 68)).
method(m_should_work_fine_when_given_arg_is_null_354, range(argument_matching_tool_test_1, 2636, 288, 79, 86)).
method(m_should_use_matchers_safely_356, range(argument_matching_tool_test_1, 2936, 564, 88, 104)).
method(m_matches_357, range(argument_matching_tool_test_1, 3092, 116, 92, 94)).
method(m_describe_to_358, range(argument_matching_tool_test_1, 3224, 64, 96, 97)).
%returns_empty_values_1 - org.mockito.internal.stubbing.defaultanswers.ReturnsEmptyValues
method(m_answer_304, range(returns_empty_values_1, 1626, 573, 55, 68)).
method(m_return_value_for_305, range(returns_empty_values_1, 2209, 1775, 70, 108)).
method(m_primitive_of_306, range(returns_empty_values_1, 3990, 235, 110, 118)).
%matchers_1 - org.mockito.Matchers
method(m_any_boolean_4, range(matchers_1, 4194, 269, 106, 115)).
method(m_any_byte_5, range(matchers_1, 4471, 251, 117, 126)).
method(m_any_char_6, range(matchers_1, 4730, 257, 128, 137)).
method(m_any_int_7, range(matchers_1, 4995, 252, 139, 148)).
method(m_any_long_8, range(matchers_1, 5255, 252, 150, 159)).
method(m_any_float_9, range(matchers_1, 5515, 256, 161, 170)).
method(m_any_double_10, range(matchers_1, 5779, 260, 172, 181)).
method(m_any_short_11, range(matchers_1, 6047, 256, 183, 192)).
method(m_any_object_12, range(matchers_1, 6311, 258, 194, 203)).
method(m_any_13, range(matchers_1, 6648, 419, 206, 219)).
method(m_any_14, range(matchers_1, 7079, 294, 221, 232)).
method(m_any_string_15, range(matchers_1, 7381, 256, 234, 243)).
method(m_any_list_16, range(matchers_1, 7649, 242, 245, 254)).
method(m_any_list_of_17, range(matchers_1, 7907, 454, 256, 268)).
method(m_any_set_18, range(matchers_1, 8377, 234, 270, 279)).
method(m_any_set_of_19, range(matchers_1, 8623, 444, 281, 293)).
method(m_any_map_20, range(matchers_1, 9075, 237, 295, 304)).
method(m_any_collection_21, range(matchers_1, 9328, 266, 306, 315)).
method(m_any_collection_of_22, range(matchers_1, 9610, 496, 317, 329)).
method(m_is_a_23, range(matchers_1, 10118, 438, 331, 344)).
method(m_eq_24, range(matchers_1, 10564, 358, 346, 357)).
method(m_eq_25, range(matchers_1, 10930, 348, 359, 370)).
method(m_eq_26, range(matchers_1, 11286, 348, 372, 383)).
method(m_eq_27, range(matchers_1, 11642, 354, 385, 396)).
method(m_eq_28, range(matchers_1, 12004, 351, 398, 409)).
method(m_eq_29, range(matchers_1, 12367, 345, 411, 422)).
method(m_eq_30, range(matchers_1, 12720, 348, 424, 435)).
method(m_eq_31, range(matchers_1, 13076, 351, 437, 448)).
method(m_eq_32, range(matchers_1, 13435, 354, 450, 461)).
method(m_ref_eq_33, range(matchers_1, 13799, 910, 463, 483)).
method(m_same_34, range(matchers_1, 14721, 458, 485, 498)).
method(m_is_null_35, range(matchers_1, 15187, 249, 500, 509)).
method(m_not_null_36, range(matchers_1, 15444, 319, 511, 522)).
method(m_is_not_null_37, range(matchers_1, 15775, 284, 524, 535)).
method(m_contains_38, range(matchers_1, 16067, 378, 537, 548)).
method(m_matches_39, range(matchers_1, 16453, 381, 550, 561)).
method(m_ends_with_40, range(matchers_1, 16842, 364, 563, 574)).
method(m_starts_with_41, range(matchers_1, 17214, 370, 576, 587)).
method(m_arg_that_42, range(matchers_1, 17592, 358, 589, 599)).
method(m_char_that_43, range(matchers_1, 17962, 353, 601, 611)).
method(m_boolean_that_44, range(matchers_1, 18327, 362, 613, 623)).
method(m_byte_that_45, range(matchers_1, 18701, 348, 625, 635)).
method(m_short_that_46, range(matchers_1, 19061, 351, 637, 647)).
method(m_int_that_47, range(matchers_1, 19424, 349, 649, 659)).
method(m_long_that_48, range(matchers_1, 19781, 348, 661, 671)).
method(m_float_that_49, range(matchers_1, 20141, 351, 673, 683)).
method(m_double_that_50, range(matchers_1, 20504, 354, 685, 695)).
method(m_report_matcher_51, range(matchers_1, 20866, 159, 697, 699)).
%calls_real_methods_1 - org.mockito.internal.stubbing.answers.CallsRealMethods
method(m_answer_302, range(calls_real_methods_1, 1489, 120, 31, 33)).
%reporter_1 - org.mockito.exceptions.Reporter
method(m_checked_exception_invalid_108, range(reporter_1, 1986, 214, 45, 50)).
method(m_cannot_stub_with_null_throwable_109, range(reporter_1, 2206, 162, 52, 57)).
method(m_unfinished_stubbing_110, range(reporter_1, 2378, 759, 59, 74)).
method(m_missing_method_invocation_111, range(reporter_1, 3143, 518, 76, 86)).
method(m_unfinished_verification_exception_112, range(reporter_1, 3667, 636, 88, 102)).
method(m_not_amock_passed_to_verify_113, range(reporter_1, 4313, 389, 104, 112)).
method(m_null_passed_to_verify_114, range(reporter_1, 4712, 464, 114, 123)).
method(m_not_amock_passed_to_when_method_115, range(reporter_1, 5190, 289, 125, 131)).
method(m_null_passed_to_when_method_116, range(reporter_1, 5489, 380, 133, 140)).
method(m_mocks_have_to_be_passed_to_verify_no_more_interactions_117, range(reporter_1, 5879, 367, 142, 149)).
method(m_not_amock_passed_to_verify_no_more_interactions_118, range(reporter_1, 6252, 338, 151, 158)).
method(m_null_passed_to_verify_no_more_interactions_119, range(reporter_1, 6600, 353, 160, 167)).
method(m_not_amock_passed_when_creating_in_order_120, range(reporter_1, 6959, 335, 169, 176)).
method(m_null_passed_when_creating_in_order_121, range(reporter_1, 7305, 334, 178, 185)).
method(m_mocks_have_to_be_passed_when_creating_in_order_122, range(reporter_1, 7649, 334, 187, 194)).
method(m_in_order_requires_familiar_mock_123, range(reporter_1, 7993, 355, 196, 203)).
method(m_invalid_use_of_matchers_124, range(reporter_1, 8358, 822, 205, 219)).
method(m_arguments_are_different_125, range(reporter_1, 9190, 594, 221, 236)).
method(m_wanted_but_not_invoked_126, range(reporter_1, 9794, 148, 238, 240)).
method(m_wanted_but_not_invoked_127, range(reporter_1, 9948, 746, 242, 257)).
method(m_create_wanted_but_not_invoked_message_128, range(reporter_1, 10700, 244, 259, 266)).
method(m_wanted_but_not_invoked_in_order_129, range(reporter_1, 10954, 518, 268, 279)).
method(m_too_many_actual_invocations_130, range(reporter_1, 11478, 292, 281, 284)).
method(m_create_too_many_invocations_message_131, range(reporter_1, 11776, 453, 286, 296)).
method(m_never_wanted_but_invoked_132, range(reporter_1, 12239, 345, 298, 307)).
method(m_too_many_actual_invocations_in_order_133, range(reporter_1, 12598, 376, 309, 314)).
method(m_create_too_little_invocations_message_134, range(reporter_1, 12980, 608, 316, 329)).
method(m_too_little_actual_invocations_135, range(reporter_1, 13597, 293, 331, 335)).
method(m_too_little_actual_invocations_in_order_136, range(reporter_1, 13900, 375, 337, 343)).
method(m_no_more_interactions_wanted_137, range(reporter_1, 14285, 327, 345, 353)).
method(m_cannot_mock_final_class_138, range(reporter_1, 14622, 334, 355, 363)).
method(m_cannot_stub_void_method_with_areturn_value_139, range(reporter_1, 14962, 314, 365, 371)).
method(m_only_void_methods_can_be_set_to_do_nothing_140, range(reporter_1, 15282, 510, 373, 383)).
method(m_wrong_type_of_return_value_141, range(reporter_1, 15798, 308, 385, 390)).
method(m_wanted_at_most_x_142, range(reporter_1, 16112, 204, 392, 394)).
method(m_misplaced_argument_matcher_143, range(reporter_1, 16322, 912, 396, 411)).
method(m_smart_null_pointer_exception_144, range(reporter_1, 17240, 336, 413, 421)).
method(m_no_argument_value_was_captured_145, range(reporter_1, 17582, 743, 423, 436)).
method(m_extra_interfaces_does_not_accept_null_parameters_146, range(reporter_1, 18331, 194, 438, 442)).
method(m_extra_interfaces_accepts_only_interfaces_147, range(reporter_1, 18531, 297, 444, 449)).
method(m_extra_interfaces_cannot_contain_mocked_type_148, range(reporter_1, 18834, 376, 451, 457)).
method(m_extra_interfaces_requires_at_least_one_interface_149, range(reporter_1, 19216, 186, 459, 463)).
%mockito_stubber_1 - org.mockito.internal.stubbing.MockitoStubber
method(m_mockito_stubber_151, range(mockito_stubber_1, 887, 112, 26, 28)).
method(m_set_invocation_for_potential_stubbing_291, range(mockito_stubber_1, 1007, 134, 30, 32)).
method(m_add_answer_292, range(mockito_stubber_1, 1149, 80, 34, 36)).
method(m_add_consecutive_answer_293, range(mockito_stubber_1, 1237, 90, 38, 40)).
method(m_add_answer_294, range(mockito_stubber_1, 1339, 534, 42, 53)).
method(m_answer_to_295, range(mockito_stubber_1, 1886, 126, 55, 57)).
method(m_find_answer_for_296, range(mockito_stubber_1, 2020, 243, 59, 67)).
method(m_add_answer_for_void_method_297, range(mockito_stubber_1, 2271, 99, 69, 71)).
method(m_set_answers_for_stubbing_298, range(mockito_stubber_1, 2382, 109, 73, 75)).
method(m_has_answers_for_stubbing_299, range(mockito_stubber_1, 2499, 94, 77, 79)).
method(m_set_method_for_stubbing_300, range(mockito_stubber_1, 2601, 327, 81, 88)).
method(m_to_string_301, range(mockito_stubber_1, 2940, 115, 90, 93)).
%argument_matcher_1 - org.mockito.ArgumentMatcher
method(m_matches_1, range(argument_matcher_1, 2318, 378, 62, 72)).
method(m_describe_to_2, range(argument_matcher_1, 3237, 184, 86, 89)).
%global_configuration_1 - org.mockito.internal.configuration.GlobalConfiguration
method(m_get_it_181, range(global_configuration_1, 833, 81, 22, 24)).
method(m_global_configuration_91, range(global_configuration_1, 926, 232, 26, 31)).
method(m_create_config_186, range(global_configuration_1, 1170, 393, 33, 42)).
method(m_validate_189, range(global_configuration_1, 1575, 74, 44, 46)).
method(m_get_return_values_190, range(global_configuration_1, 1661, 107, 48, 50)).
method(m_get_annotation_engine_90, range(global_configuration_1, 1776, 119, 52, 54)).
method(m_cleans_stack_trace_192, range(global_configuration_1, 1903, 104, 56, 58)).
method(m_get_default_answer_193, range(global_configuration_1, 2015, 111, 60, 62)).
%default_annotation_engine_1 - org.mockito.internal.configuration.DefaultAnnotationEngine
method(m_create_mock_for_182, range(default_annotation_engine_1, 721, 337, 25, 32)).
%class_imposterizer_1 - org.mockito.internal.creation.jmock.ClassImposterizer
method(m_class_imposterizer_209, range(class_imposterizer_1, 1084, 30, 32, 32)).
method(m_get_class_name_212, range(class_imposterizer_1, 1690, 198, 40, 43)).
method(m_accept_214, range(class_imposterizer_1, 2000, 92, 47, 49)).
method(m_can_imposterise_215, range(class_imposterizer_1, 2112, 160, 52, 54)).
method(m_imposterise_220, range(class_imposterizer_1, 2284, 439, 56, 64)).
method(m_set_constructors_accessible_221, range(class_imposterizer_1, 2735, 234, 66, 70)).
method(m_create_proxy_class_223, range(class_imposterizer_1, 2981, 1982, 72, 115)).
method(m_filter_constructors_224, range(class_imposterizer_1, 3261, 179, 78, 82)).
method(m_create_proxy_225, range(class_imposterizer_1, 4975, 260, 117, 121)).
method(m_prepend_226, range(class_imposterizer_1, 5247, 227, 123, 128)).
%state_master_1 - org.mockito.StateMaster
method(m_reset_94, range(state_master_1, 339, 60, 13, 15)).
method(m_validate_95, range(state_master_1, 409, 71, 17, 19)).
%mocking_progress_impl_1 - org.mockito.internal.progress.MockingProgressImpl
method(m_report_ongoing_stubbing_264, range(mocking_progress_impl_1, 1005, 126, 27, 29)).
method(m_pull_ongoing_stubbing_265, range(mocking_progress_impl_1, 1137, 157, 31, 35)).
method(m_verification_started_266, range(mocking_progress_impl_1, 1304, 171, 37, 41)).
method(m_reset_ongoing_stubbing_267, range(mocking_progress_impl_1, 1591, 75, 46, 48)).
method(m_pull_verification_mode_268, range(mocking_progress_impl_1, 1672, 254, 50, 58)).
method(m_stubbing_started_269, range(mocking_progress_impl_1, 1932, 107, 60, 63)).
method(m_validate_state_270, range(mocking_progress_impl_1, 2045, 764, 65, 83)).
method(m_stubbing_completed_273, range(mocking_progress_impl_1, 2815, 159, 85, 88)).
method(m_to_string_274, range(mocking_progress_impl_1, 2984, 198, 90, 94)).
method(m_reset_275, range(mocking_progress_impl_1, 3188, 140, 96, 100)).
method(m_get_argument_matcher_storage_272, range(mocking_progress_impl_1, 3334, 104, 102, 104)).
method(m_get_debugging_info_276, range(mocking_progress_impl_1, 3444, 77, 106, 108)).
%mock_util_1 - org.mockito.internal.util.MockUtil
method(m_mock_util_326, range(mock_util_1, 832, 114, 23, 25)).
method(m_mock_util_161, range(mock_util_1, 958, 66, 27, 29)).
method(m_create_mock_328, range(mock_util_1, 1032, 1063, 31, 49)).
method(m_reset_mock_330, range(mock_util_1, 2103, 414, 51, 56)).
method(m_get_mock_handler_331, range(mock_util_1, 2525, 404, 58, 68)).
method(m_is_mockito_mock_332, range(mock_util_1, 2937, 136, 70, 72)).
method(m_is_mock_333, range(mock_util_1, 3081, 96, 74, 76)).
method(m_get_interceptor_334, range(mock_util_1, 3185, 380, 78, 86)).
method(m_get_mock_name_335, range(mock_util_1, 3573, 101, 88, 90)).
%registered_invocations_1 - org.mockito.internal.verification.RegisteredInvocations
method(m_add_337, range(registered_invocations_1, 549, 83, 20, 22)).
method(m_remove_last_338, range(registered_invocations_1, 638, 82, 24, 26)).
method(m_get_all_339, range(registered_invocations_1, 726, 135, 28, 30)).
method(m_is_out_340, range(registered_invocations_1, 947, 109, 33, 35)).

%%% Blocks
%method_interceptor_filter_1 - org.mockito.internal.creation.MethodInterceptorFilter
block(method_interceptor_filter_1_block1, block, method_interceptor_filter_1_code3, body, range(method_interceptor_filter_1, 686, 560, 22, 34)).
block(method_interceptor_filter_1_block2, block, method_interceptor_filter_1_stmt1, body, range(method_interceptor_filter_1, 700, 264, 23, 29)).
block(method_interceptor_filter_1_block3, block, method_interceptor_filter_1_stmt2, then_statement, range(method_interceptor_filter_1, 740, 54, 24, 26)).
block(method_interceptor_filter_1_block4, block, method_interceptor_filter_1_code17, body, range(method_interceptor_filter_1, 997, 209, 29, 32)).
%creation_validator_1 - org.mockito.internal.util.CreationValidator
block(creation_validator_1_block1, block, creation_validator_1_code4, body, range(creation_validator_1, 384, 154, 13, 17)).
block(creation_validator_1_block2, block, creation_validator_1_stmt1, then_statement, range(creation_validator_1, 456, 75, 14, 16)).
block(creation_validator_1_block3, block, creation_validator_1_code5, body, range(creation_validator_1, 632, 281, 19, 29)).
block(creation_validator_1_block4, block, creation_validator_1_stmt2, then_statement, range(creation_validator_1, 672, 33, 20, 22)).
%matchers_binder_1 - org.mockito.internal.invocation.MatchersBinder
%test_base_1 - org.mockitoutil.TestBase
block(test_base_1_block1, block, test_base_1_code5, body, range(test_base_1, 830, 149, 28, 31)).
block(test_base_1_block2, block, test_base_1_code6, body, range(test_base_1, 1016, 89, 34, 37)).
%configuration_access_1 - org.mockito.internal.configuration.ConfigurationAccess
block(configuration_access_1_block1, block, configuration_access_1_code3, body, range(configuration_access_1, 318, 82, 11, 13)).
%thread_safe_mocking_progress_1 - org.mockito.internal.progress.ThreadSafeMockingProgress
block(thread_safe_mocking_progress_1_block1, block, thread_safe_mocking_progress_1_code15, body, range(thread_safe_mocking_progress_1, 546, 160, 15, 20)).
block(thread_safe_mocking_progress_1_block2, block, thread_safe_mocking_progress_1_stmt1, then_statement, range(thread_safe_mocking_progress_1, 591, 71, 16, 18)).
block(thread_safe_mocking_progress_1_block3, block, thread_safe_mocking_progress_1_code17, body, range(thread_safe_mocking_progress_1, 1327, 47, 42, 44)).
block(thread_safe_mocking_progress_1_block4, block, thread_safe_mocking_progress_1_code18, body, range(thread_safe_mocking_progress_1, 1684, 54, 58, 60)).
%returns_mocks_1 - org.mockito.internal.stubbing.defaultanswers.ReturnsMocks
%globally_configured_answer_1 - org.mockito.internal.stubbing.defaultanswers.GloballyConfiguredAnswer
%argument_matcher_storage_impl_1 - org.mockito.internal.progress.ArgumentMatcherStorageImpl
block(argument_matcher_storage_impl_1_block1, block, argument_matcher_storage_impl_1_code14, body, range(argument_matcher_storage_impl_1, 3547, 241, 99, 105)).
block(argument_matcher_storage_impl_1_block2, block, argument_matcher_storage_impl_1_stmt1, then_statement, range(argument_matcher_storage_impl_1, 3586, 196, 100, 104)).
%equals_1 - org.mockito.internal.matchers.Equals
block(equals_1_block1, block, equals_1_code3, body, range(equals_1, 428, 37, 15, 17)).
block(equals_1_block2, block, equals_1_code7, body, range(equals_1, 509, 125, 19, 24)).
block(equals_1_block3, block, equals_1_stmt2, then_statement, range(equals_1, 544, 46, 20, 22)).
block(equals_1_block4, block, equals_1_code8, body, range(equals_1, 688, 57, 26, 28)).
block(equals_1_block5, block, equals_1_code9, body, range(equals_1, 789, 207, 30, 39)).
block(equals_1_block6, block, equals_1_stmt6, then_statement, range(equals_1, 852, 37, 32, 34)).
block(equals_1_block7, block, equals_1_stmt6, else_statement, range(equals_1, 895, 48, 34, 36)).
block(equals_1_block8, block, equals_1_code12, body, range(equals_1, 1027, 196, 41, 49)).
block(equals_1_block9, block, equals_1_stmt10, then_statement, range(equals_1, 1067, 36, 42, 44)).
block(equals_1_block10, block, equals_1_stmt11, then_statement, range(equals_1, 1142, 35, 44, 46)).
block(equals_1_block11, block, equals_1_stmt11, else_statement, range(equals_1, 1183, 34, 46, 48)).
%mockito_configuration_1 - org.mockito.configuration.MockitoConfiguration
block(mockito_configuration_1_block1, block, mockito_configuration_1_code12, body, range(mockito_configuration_1, 766, 63, 21, 23)).
block(mockito_configuration_1_block2, block, mockito_configuration_1_code13, body, range(mockito_configuration_1, 965, 59, 26, 28)).
block(mockito_configuration_1_block3, block, mockito_configuration_1_code14, body, range(mockito_configuration_1, 1337, 442, 40, 51)).
%mock_settings_impl_1 - org.mockito.internal.creation.MockSettingsImpl
block(mock_settings_impl_1_block1, block, mock_settings_impl_1_code5, body, range(mock_settings_impl_1, 1137, 30, 34, 36)).
block(mock_settings_impl_1_block2, block, mock_settings_impl_1_code6, body, range(mock_settings_impl_1, 1214, 41, 38, 40)).
block(mock_settings_impl_1_block3, block, mock_settings_impl_1_code7, body, range(mock_settings_impl_1, 1296, 39, 42, 44)).
block(mock_settings_impl_1_block4, block, mock_settings_impl_1_code8, body, range(mock_settings_impl_1, 1677, 75, 57, 60)).
%argument_matching_tool_1 - org.mockito.internal.verification.argumentmatching.ArgumentMatchingTool
block(argument_matching_tool_1_block1, block, argument_matching_tool_1_code4, body, range(argument_matching_tool_1, 713, 632, 20, 37)).
block(argument_matching_tool_1_block2, block, argument_matching_tool_1_stmt1, then_statement, range(argument_matching_tool_1, 765, 48, 21, 23)).
block(argument_matching_tool_1_block3, block, argument_matching_tool_1_stmt4, body, range(argument_matching_tool_1, 943, 343, 27, 35)).
block(argument_matching_tool_1_block4, block, argument_matching_tool_1_code17, body, range(argument_matching_tool_1, 1406, 130, 39, 45)).
block(argument_matching_tool_1_block5, block, argument_matching_tool_1_stmt6, body, range(argument_matching_tool_1, 1421, 48, 40, 42)).
block(argument_matching_tool_1_block6, block, argument_matching_tool_1_code18, body, range(argument_matching_tool_1, 1598, 78, 47, 49)).
%default_mockito_configuration_1 - org.mockito.configuration.DefaultMockitoConfiguration
%mock_handler_1 - org.mockito.internal.MockHandler
block(mock_handler_1_block1, block, mock_handler_1_code3, body, range(mock_handler_1, 1903, 317, 44, 51)).
%debugging_info_1 - org.mockito.internal.debugging.DebuggingInfo
%class_path_loader_1 - org.mockito.internal.configuration.ClassPathLoader
block(class_path_loader_1_block1, block, class_path_loader_1_code4, body, range(class_path_loader_1, 508, 948, 16, 35)).
block(class_path_loader_1_block2, block, class_path_loader_1_stmt2, body, range(class_path_loader_1, 605, 112, 19, 21)).
block(class_path_loader_1_block3, block, class_path_loader_1_code8, body, range(class_path_loader_1, 751, 120, 21, 24)).
block(class_path_loader_1_block4, block, class_path_loader_1_stmt4, body, range(class_path_loader_1, 895, 83, 26, 28)).
%returns_smart_nulls_1 - org.mockito.internal.stubbing.defaultanswers.ReturnsSmartNulls
%mockito_naming_policy_1 - org.mockito.internal.creation.cglib.MockitoNamingPolicy
%mock_name_1 - org.mockito.internal.util.MockName
block(mock_name_1_block1, block, mock_name_1_code3, body, range(mock_name_1, 355, 203, 13, 20)).
block(mock_name_1_block2, block, mock_name_1_stmt1, then_statement, range(mock_name_1, 388, 106, 14, 17)).
block(mock_name_1_block3, block, mock_name_1_code9, body, range(mock_name_1, 619, 176, 22, 26)).
%returns_more_empty_values_1 - org.mockito.internal.stubbing.defaultanswers.ReturnsMoreEmptyValues
%mockito_annotations_1 - org.mockito.MockitoAnnotations
block(mockito_annotations_1_block1, block, mockito_annotations_1_code3, body, range(mockito_annotations_1, 2976, 395, 80, 90)).
block(mockito_annotations_1_block2, block, mockito_annotations_1_stmt1, then_statement, range(mockito_annotations_1, 3009, 171, 81, 83)).
block(mockito_annotations_1_block3, block, mockito_annotations_1_stmt3, body, range(mockito_annotations_1, 3275, 90, 86, 89)).
block(mockito_annotations_1_block4, block, mockito_annotations_1_code9, body, range(mockito_annotations_1, 3436, 893, 92, 111)).
block(mockito_annotations_1_block5, block, mockito_annotations_1_stmt8, body, range(mockito_annotations_1, 3618, 705, 95, 110)).
block(mockito_annotations_1_block6, block, mockito_annotations_1_stmt9, body, range(mockito_annotations_1, 3684, 629, 96, 109)).
%mockito_core_1 - org.mockito.internal.MockitoCore
block(mockito_core_1_block1, block, mockito_core_1_code22, body, range(mockito_core_1, 1438, 199, 36, 40)).
%actual_invocation_has_null_argument_npebug_test_1 - org.mockitousage.bugs.ActualInvocationHasNullArgumentNPEBugTest
%mockito_1 - org.mockito.Mockito
block(mockito_1_block1, block, mockito_1_code46, body, range(mockito_1, 62739, 80, 1479, 1481)).
%argument_matching_tool_test_1 - org.mockito.internal.verification.argumentmatching.ArgumentMatchingToolTest
block(argument_matching_tool_test_1_block1, block, argument_matching_tool_test_1_code10, body, range(argument_matching_tool_test_1, 2694, 230, 80, 86)).
%returns_empty_values_1 - org.mockito.internal.stubbing.defaultanswers.ReturnsEmptyValues
%matchers_1 - org.mockito.Matchers
%calls_real_methods_1 - org.mockito.internal.stubbing.answers.CallsRealMethods
%reporter_1 - org.mockito.exceptions.Reporter
%mockito_stubber_1 - org.mockito.internal.stubbing.MockitoStubber
block(mockito_stubber_1_block1, block, mockito_stubber_1_code23, body, range(mockito_stubber_1, 942, 57, 26, 28)).
%argument_matcher_1 - org.mockito.ArgumentMatcher
%global_configuration_1 - org.mockito.internal.configuration.GlobalConfiguration
block(global_configuration_1_block1, block, global_configuration_1_code13, body, range(global_configuration_1, 863, 51, 22, 24)).
block(global_configuration_1_block2, block, global_configuration_1_code14, body, range(global_configuration_1, 955, 203, 26, 31)).
block(global_configuration_1_block3, block, global_configuration_1_stmt2, then_statement, range(global_configuration_1, 1085, 66, 28, 30)).
block(global_configuration_1_block4, block, global_configuration_1_code16, body, range(global_configuration_1, 1253, 310, 34, 42)).
block(global_configuration_1_block5, block, global_configuration_1_stmt6, then_statement, range(global_configuration_1, 1456, 40, 37, 39)).
block(global_configuration_1_block6, block, global_configuration_1_code23, body, range(global_configuration_1, 1605, 44, 44, 46)).
block(global_configuration_1_block7, block, global_configuration_1_code25, body, range(global_configuration_1, 1822, 73, 52, 54)).
%default_annotation_engine_1 - org.mockito.internal.configuration.DefaultAnnotationEngine
%class_imposterizer_1 - org.mockito.internal.creation.jmock.ClassImposterizer
block(class_imposterizer_1_block1, block, class_imposterizer_1_code10, body, range(class_imposterizer_1, 1112, 2, 32, 32)).
block(class_imposterizer_1_block2, block, class_imposterizer_1_code33, body, range(class_imposterizer_1, 2157, 115, 52, 54)).
block(class_imposterizer_1_block3, block, class_imposterizer_1_code34, body, range(class_imposterizer_1, 2395, 328, 56, 64)).
block(class_imposterizer_1_block4, block, class_imposterizer_1_stmt2, body, range(class_imposterizer_1, 2410, 226, 57, 61)).
block(class_imposterizer_1_block5, block, class_imposterizer_1_stmt2, finally, range(class_imposterizer_1, 2645, 71, 61, 63)).
block(class_imposterizer_1_block6, block, class_imposterizer_1_code35, body, range(class_imposterizer_1, 2815, 154, 66, 70)).
block(class_imposterizer_1_block7, block, class_imposterizer_1_stmt5, body, range(class_imposterizer_1, 2898, 64, 67, 69)).
block(class_imposterizer_1_block8, block, class_imposterizer_1_code40, body, range(class_imposterizer_1, 3063, 1900, 72, 115)).
block(class_imposterizer_1_block9, block, class_imposterizer_1_stmt6, then_statement, range(class_imposterizer_1, 3106, 85, 73, 75)).
%state_master_1 - org.mockito.StateMaster
block(state_master_1_block1, block, state_master_1_code10, body, range(state_master_1, 432, 48, 17, 19)).
%mocking_progress_impl_1 - org.mockito.internal.progress.MockingProgressImpl
block(mocking_progress_impl_1_block1, block, mocking_progress_impl_1_code27, body, range(mocking_progress_impl_1, 1626, 40, 46, 48)).
block(mocking_progress_impl_1_block2, block, mocking_progress_impl_1_code28, body, range(mocking_progress_impl_1, 2073, 736, 65, 83)).
block(mocking_progress_impl_1_block3, block, mocking_progress_impl_1_stmt3, then_statement, range(mocking_progress_impl_1, 2372, 176, 70, 74)).
block(mocking_progress_impl_1_block4, block, mocking_progress_impl_1_stmt4, then_statement, range(mocking_progress_impl_1, 2598, 145, 76, 80)).
block(mocking_progress_impl_1_block5, block, mocking_progress_impl_1_code29, body, range(mocking_progress_impl_1, 3392, 46, 102, 104)).
%mock_util_1 - org.mockito.internal.util.MockUtil
block(mock_util_1_block1, block, mock_util_1_code3, body, range(mock_util_1, 885, 61, 23, 25)).
block(mock_util_1_block2, block, mock_util_1_code7, body, range(mock_util_1, 976, 48, 27, 29)).
block(mock_util_1_block3, block, mock_util_1_code9, body, range(mock_util_1, 1131, 964, 31, 49)).
%registered_invocations_1 - org.mockito.internal.verification.RegisteredInvocations

%%% Statements
%method_interceptor_filter_1 - org.mockito.internal.creation.MethodInterceptorFilter
stmt(method_interceptor_filter_1_stmt1, try_statement, method_interceptor_filter_1_block1, (statements, 0), range(method_interceptor_filter_1, 696, 510, 23, 32)).
stmt(method_interceptor_filter_1_stmt2, if_statement, method_interceptor_filter_1_block2, (statements, 0), range(method_interceptor_filter_1, 714, 80, 24, 26)).
stmt(method_interceptor_filter_1_stmt3, expression_statement, method_interceptor_filter_1_block3, (statements, 0), range(method_interceptor_filter_1, 758, 22, 25, 25)).
stmt(method_interceptor_filter_1_stmt4, expression_statement, method_interceptor_filter_1_block2, (statements, 1), range(method_interceptor_filter_1, 807, 72, 27, 27)).
stmt(method_interceptor_filter_1_stmt5, expression_statement, method_interceptor_filter_1_block2, (statements, 2), range(method_interceptor_filter_1, 892, 62, 28, 28)).
stmt(method_interceptor_filter_1_stmt6, expression_statement, method_interceptor_filter_1_block1, (statements, 1), range(method_interceptor_filter_1, 1215, 25, 33, 33)).
%creation_validator_1 - org.mockito.internal.util.CreationValidator
stmt(creation_validator_1_stmt1, if_statement, creation_validator_1_block1, (statements, 0), range(creation_validator_1, 395, 136, 14, 16)).
stmt(creation_validator_1_stmt2, if_statement, creation_validator_1_block3, (statements, 0), range(creation_validator_1, 643, 62, 20, 22)).
stmt(creation_validator_1_stmt3, return_statement, creation_validator_1_block4, (statements, 0), range(creation_validator_1, 687, 7, 21, 21)).
%matchers_binder_1 - org.mockito.internal.invocation.MatchersBinder
%test_base_1 - org.mockitoutil.TestBase
stmt(test_base_1_stmt1, expression_statement, test_base_1_block1, (statements, 0), range(test_base_1, 840, 64, 29, 29)).
stmt(test_base_1_stmt2, expression_statement, test_base_1_block1, (statements, 1), range(test_base_1, 913, 60, 30, 30)).
stmt(test_base_1_stmt3, expression_statement, test_base_1_block2, (statements, 0), range(test_base_1, 1026, 29, 35, 35)).
stmt(test_base_1_stmt4, expression_statement, test_base_1_block2, (statements, 1), range(test_base_1, 1064, 35, 36, 36)).
%configuration_access_1 - org.mockito.internal.configuration.ConfigurationAccess
stmt(configuration_access_1_stmt1, return_statement, configuration_access_1_block1, (statements, 0), range(configuration_access_1, 329, 64, 12, 12)).
%thread_safe_mocking_progress_1 - org.mockito.internal.progress.ThreadSafeMockingProgress
stmt(thread_safe_mocking_progress_1_stmt1, if_statement, thread_safe_mocking_progress_1_block1, (statements, 0), range(thread_safe_mocking_progress_1, 556, 106, 16, 18)).
stmt(thread_safe_mocking_progress_1_stmt2, expression_statement, thread_safe_mocking_progress_1_block2, (statements, 0), range(thread_safe_mocking_progress_1, 605, 47, 17, 17)).
stmt(thread_safe_mocking_progress_1_stmt3, return_statement, thread_safe_mocking_progress_1_block1, (statements, 1), range(thread_safe_mocking_progress_1, 671, 29, 19, 19)).
stmt(thread_safe_mocking_progress_1_stmt4, expression_statement, thread_safe_mocking_progress_1_block3, (statements, 0), range(thread_safe_mocking_progress_1, 1337, 31, 43, 43)).
stmt(thread_safe_mocking_progress_1_stmt5, expression_statement, thread_safe_mocking_progress_1_block4, (statements, 0), range(thread_safe_mocking_progress_1, 1694, 38, 59, 59)).
%returns_mocks_1 - org.mockito.internal.stubbing.defaultanswers.ReturnsMocks
%globally_configured_answer_1 - org.mockito.internal.stubbing.defaultanswers.GloballyConfiguredAnswer
%argument_matcher_storage_impl_1 - org.mockito.internal.progress.ArgumentMatcherStorageImpl
stmt(argument_matcher_storage_impl_1_stmt1, if_statement, argument_matcher_storage_impl_1_block1, (statements, 0), range(argument_matcher_storage_impl_1, 3557, 225, 100, 104)).
%equals_1 - org.mockito.internal.matchers.Equals
stmt(equals_1_stmt1, expression_statement, equals_1_block1, (statements, 0), range(equals_1, 438, 21, 16, 16)).
stmt(equals_1_stmt2, if_statement, equals_1_block2, (statements, 0), range(equals_1, 519, 71, 20, 22)).
stmt(equals_1_stmt3, return_statement, equals_1_block2, (statements, 1), range(equals_1, 599, 29, 23, 23)).
stmt(equals_1_stmt4, expression_statement, equals_1_block4, (statements, 0), range(equals_1, 698, 41, 27, 27)).
stmt(equals_1_stmt5, variable_declaration_statement, equals_1_block5, (statements, 0), range(equals_1, 799, 24, 31, 31)).
stmt(equals_1_stmt6, if_statement, equals_1_block5, (statements, 1), range(equals_1, 832, 111, 32, 36)).
stmt(equals_1_stmt7, expression_statement, equals_1_block7, (statements, 0), range(equals_1, 909, 24, 35, 35)).
stmt(equals_1_stmt8, expression_statement, equals_1_block5, (statements, 2), range(equals_1, 952, 17, 37, 37)).
stmt(equals_1_stmt9, return_statement, equals_1_block5, (statements, 3), range(equals_1, 978, 12, 38, 38)).
stmt(equals_1_stmt10, if_statement, equals_1_block8, (statements, 0), range(equals_1, 1037, 180, 42, 48)).
stmt(equals_1_stmt11, if_statement, equals_1_stmt10, elseStatement, range(equals_1, 1109, 108, 44, 48)).
stmt(equals_1_stmt12, return_statement, equals_1_block11, (statements, 0), range(equals_1, 1197, 10, 47, 47)).
%mockito_configuration_1 - org.mockito.configuration.MockitoConfiguration
stmt(mockito_configuration_1_stmt1, expression_statement, mockito_configuration_1_block1, (statements, 0), range(mockito_configuration_1, 777, 45, 22, 22)).
stmt(mockito_configuration_1_stmt2, expression_statement, mockito_configuration_1_block2, (statements, 0), range(mockito_configuration_1, 976, 41, 27, 27)).
stmt(mockito_configuration_1_stmt3, return_statement, mockito_configuration_1_block3, (statements, 0), range(mockito_configuration_1, 1348, 424, 41, 50)).
%mock_settings_impl_1 - org.mockito.internal.creation.MockSettingsImpl
stmt(mock_settings_impl_1_stmt1, return_statement, mock_settings_impl_1_block1, (statements, 0), range(mock_settings_impl_1, 1148, 12, 35, 35)).
stmt(mock_settings_impl_1_stmt2, return_statement, mock_settings_impl_1_block2, (statements, 0), range(mock_settings_impl_1, 1225, 23, 39, 39)).
stmt(mock_settings_impl_1_stmt3, return_statement, mock_settings_impl_1_block3, (statements, 0), range(mock_settings_impl_1, 1307, 21, 43, 43)).
stmt(mock_settings_impl_1_stmt4, expression_statement, mock_settings_impl_1_block4, (statements, 0), range(mock_settings_impl_1, 1688, 35, 58, 58)).
stmt(mock_settings_impl_1_stmt5, return_statement, mock_settings_impl_1_block4, (statements, 1), range(mock_settings_impl_1, 1733, 12, 59, 59)).
%argument_matching_tool_1 - org.mockito.internal.verification.argumentmatching.ArgumentMatchingTool
stmt(argument_matching_tool_1_stmt1, if_statement, argument_matching_tool_1_block1, (statements, 0), range(argument_matching_tool_1, 724, 89, 21, 23)).
stmt(argument_matching_tool_1_stmt2, variable_declaration_statement, argument_matching_tool_1_block1, (statements, 1), range(argument_matching_tool_1, 833, 53, 25, 25)).
stmt(argument_matching_tool_1_stmt3, variable_declaration_statement, argument_matching_tool_1_block1, (statements, 2), range(argument_matching_tool_1, 896, 10, 26, 26)).
stmt(argument_matching_tool_1_stmt4, enhanced_for_statement, argument_matching_tool_1_block1, (statements, 3), range(argument_matching_tool_1, 916, 370, 27, 35)).
stmt(argument_matching_tool_1_stmt5, if_statement, argument_matching_tool_1_block3, (statements, 0), range(argument_matching_tool_1, 958, 299, 28, 33)).
stmt(argument_matching_tool_1_stmt6, try_statement, argument_matching_tool_1_block4, (statements, 0), range(argument_matching_tool_1, 1417, 112, 40, 44)).
stmt(argument_matching_tool_1_stmt7, return_statement, argument_matching_tool_1_block5, (statements, 0), range(argument_matching_tool_1, 1436, 22, 41, 41)).
stmt(argument_matching_tool_1_stmt8, return_statement, argument_matching_tool_1_block6, (statements, 0), range(argument_matching_tool_1, 1609, 60, 48, 48)).
%default_mockito_configuration_1 - org.mockito.configuration.DefaultMockitoConfiguration
%mock_handler_1 - org.mockito.internal.MockHandler
stmt(mock_handler_1_stmt1, expression_statement, mock_handler_1_block1, (statements, 0), range(mock_handler_1, 1914, 25, 45, 45)).
stmt(mock_handler_1_stmt2, expression_statement, mock_handler_1_block1, (statements, 1), range(mock_handler_1, 1949, 39, 46, 46)).
stmt(mock_handler_1_stmt3, expression_statement, mock_handler_1_block1, (statements, 2), range(mock_handler_1, 1998, 37, 47, 47)).
stmt(mock_handler_1_stmt4, expression_statement, mock_handler_1_block1, (statements, 3), range(mock_handler_1, 2045, 33, 48, 48)).
stmt(mock_handler_1_stmt5, expression_statement, mock_handler_1_block1, (statements, 4), range(mock_handler_1, 2088, 58, 49, 49)).
stmt(mock_handler_1_stmt6, expression_statement, mock_handler_1_block1, (statements, 5), range(mock_handler_1, 2156, 57, 50, 50)).
%debugging_info_1 - org.mockito.internal.debugging.DebuggingInfo
%class_path_loader_1 - org.mockito.internal.configuration.ClassPathLoader
stmt(class_path_loader_1_stmt1, variable_declaration_statement, class_path_loader_1_block1, (statements, 0), range(class_path_loader_1, 566, 25, 18, 18)).
stmt(class_path_loader_1_stmt2, try_statement, class_path_loader_1_block1, (statements, 1), range(class_path_loader_1, 601, 270, 19, 24)).
stmt(class_path_loader_1_stmt3, expression_statement, class_path_loader_1_block2, (statements, 0), range(class_path_loader_1, 620, 86, 20, 20)).
stmt(class_path_loader_1_stmt4, try_statement, class_path_loader_1_block1, (statements, 2), range(class_path_loader_1, 891, 558, 26, 34)).
stmt(class_path_loader_1_stmt5, return_statement, class_path_loader_1_block4, (statements, 0), range(class_path_loader_1, 910, 57, 27, 27)).
%returns_smart_nulls_1 - org.mockito.internal.stubbing.defaultanswers.ReturnsSmartNulls
%mockito_naming_policy_1 - org.mockito.internal.creation.cglib.MockitoNamingPolicy
%mock_name_1 - org.mockito.internal.util.MockName
stmt(mock_name_1_stmt1, if_statement, mock_name_1_block1, (statements, 0), range(mock_name_1, 366, 185, 14, 19)).
stmt(mock_name_1_stmt2, expression_statement, mock_name_1_block2, (statements, 0), range(mock_name_1, 403, 44, 15, 15)).
stmt(mock_name_1_stmt3, expression_statement, mock_name_1_block2, (statements, 1), range(mock_name_1, 461, 22, 16, 16)).
stmt(mock_name_1_stmt4, variable_declaration_statement, mock_name_1_block3, (statements, 0), range(mock_name_1, 630, 41, 23, 23)).
stmt(mock_name_1_stmt5, return_statement, mock_name_1_block3, (statements, 1), range(mock_name_1, 716, 72, 25, 25)).
%returns_more_empty_values_1 - org.mockito.internal.stubbing.defaultanswers.ReturnsMoreEmptyValues
%mockito_annotations_1 - org.mockito.MockitoAnnotations
stmt(mockito_annotations_1_stmt1, if_statement, mockito_annotations_1_block1, (statements, 0), range(mockito_annotations_1, 2986, 194, 81, 83)).
stmt(mockito_annotations_1_stmt2, variable_declaration_statement, mockito_annotations_1_block1, (statements, 1), range(mockito_annotations_1, 3198, 38, 85, 85)).
stmt(mockito_annotations_1_stmt3, while_statement, mockito_annotations_1_block1, (statements, 2), range(mockito_annotations_1, 3245, 120, 86, 89)).
stmt(mockito_annotations_1_stmt4, expression_statement, mockito_annotations_1_block3, (statements, 0), range(mockito_annotations_1, 3289, 23, 87, 87)).
stmt(mockito_annotations_1_stmt5, expression_statement, mockito_annotations_1_block3, (statements, 1), range(mockito_annotations_1, 3325, 30, 88, 88)).
stmt(mockito_annotations_1_stmt6, variable_declaration_statement, mockito_annotations_1_block4, (statements, 0), range(mockito_annotations_1, 3446, 84, 93, 93)).
stmt(mockito_annotations_1_stmt7, variable_declaration_statement, mockito_annotations_1_block4, (statements, 1), range(mockito_annotations_1, 3539, 43, 94, 94)).
stmt(mockito_annotations_1_stmt8, enhanced_for_statement, mockito_annotations_1_block4, (statements, 2), range(mockito_annotations_1, 3591, 732, 95, 110)).
stmt(mockito_annotations_1_stmt9, enhanced_for_statement, mockito_annotations_1_block5, (statements, 0), range(mockito_annotations_1, 3632, 681, 96, 109)).
%mockito_core_1 - org.mockito.internal.MockitoCore
stmt(mockito_core_1_stmt1, expression_statement, mockito_core_1_block1, (statements, 0), range(mockito_core_1, 1449, 32, 37, 37)).
stmt(mockito_core_1_stmt2, expression_statement, mockito_core_1_block1, (statements, 1), range(mockito_core_1, 1491, 39, 38, 38)).
%actual_invocation_has_null_argument_npebug_test_1 - org.mockitousage.bugs.ActualInvocationHasNullArgumentNPEBugTest
%mockito_1 - org.mockito.Mockito
stmt(mockito_1_stmt1, return_statement, mockito_1_block1, (statements, 0), range(mockito_1, 62750, 62, 1480, 1480)).
%argument_matching_tool_test_1 - org.mockito.internal.verification.argumentmatching.ArgumentMatchingToolTest
stmt(argument_matching_tool_test_1_stmt1, variable_declaration_statement, argument_matching_tool_test_1_block1, (statements, 0), range(argument_matching_tool_test_1, 2721, 125, 82, 82)).
%returns_empty_values_1 - org.mockito.internal.stubbing.defaultanswers.ReturnsEmptyValues
%matchers_1 - org.mockito.Matchers
%calls_real_methods_1 - org.mockito.internal.stubbing.answers.CallsRealMethods
%reporter_1 - org.mockito.exceptions.Reporter
%mockito_stubber_1 - org.mockito.internal.stubbing.MockitoStubber
stmt(mockito_stubber_1_stmt1, expression_statement, mockito_stubber_1_block1, (statements, 0), range(mockito_stubber_1, 953, 39, 27, 27)).
%argument_matcher_1 - org.mockito.ArgumentMatcher
%global_configuration_1 - org.mockito.internal.configuration.GlobalConfiguration
stmt(global_configuration_1_stmt1, return_statement, global_configuration_1_block1, (statements, 0), range(global_configuration_1, 874, 33, 23, 23)).
stmt(global_configuration_1_stmt2, if_statement, global_configuration_1_block2, (statements, 0), range(global_configuration_1, 1046, 105, 28, 30)).
stmt(global_configuration_1_stmt3, expression_statement, global_configuration_1_block3, (statements, 0), range(global_configuration_1, 1100, 40, 29, 29)).
stmt(global_configuration_1_stmt4, variable_declaration_statement, global_configuration_1_block4, (statements, 0), range(global_configuration_1, 1264, 79, 35, 35)).
stmt(global_configuration_1_stmt5, variable_declaration_statement, global_configuration_1_block4, (statements, 1), range(global_configuration_1, 1353, 73, 36, 36)).
stmt(global_configuration_1_stmt6, if_statement, global_configuration_1_block4, (statements, 2), range(global_configuration_1, 1436, 120, 37, 41)).
stmt(global_configuration_1_stmt7, return_statement, global_configuration_1_block5, (statements, 0), range(global_configuration_1, 1471, 14, 38, 38)).
stmt(global_configuration_1_stmt8, expression_statement, global_configuration_1_block6, (statements, 0), range(global_configuration_1, 1616, 26, 45, 45)).
stmt(global_configuration_1_stmt9, return_statement, global_configuration_1_block7, (statements, 0), range(global_configuration_1, 1833, 55, 53, 53)).
%default_annotation_engine_1 - org.mockito.internal.configuration.DefaultAnnotationEngine
%class_imposterizer_1 - org.mockito.internal.creation.jmock.ClassImposterizer
stmt(class_imposterizer_1_stmt1, return_statement, class_imposterizer_1_block2, (statements, 0), range(class_imposterizer_1, 2168, 97, 53, 53)).
stmt(class_imposterizer_1_stmt2, try_statement, class_imposterizer_1_block3, (statements, 0), range(class_imposterizer_1, 2406, 310, 57, 63)).
stmt(class_imposterizer_1_stmt3, expression_statement, class_imposterizer_1_block4, (statements, 0), range(class_imposterizer_1, 2425, 44, 58, 58)).
stmt(class_imposterizer_1_stmt4, expression_statement, class_imposterizer_1_block5, (statements, 0), range(class_imposterizer_1, 2660, 45, 62, 62)).
stmt(class_imposterizer_1_stmt5, enhanced_for_statement, class_imposterizer_1_block6, (statements, 0), range(class_imposterizer_1, 2826, 136, 67, 69)).
stmt(class_imposterizer_1_stmt6, if_statement, class_imposterizer_1_block8, (statements, 0), range(class_imposterizer_1, 3074, 117, 73, 75)).
%state_master_1 - org.mockito.StateMaster
stmt(state_master_1_stmt1, expression_statement, state_master_1_block1, (statements, 0), range(state_master_1, 442, 32, 18, 18)).
%mocking_progress_impl_1 - org.mockito.internal.progress.MockingProgressImpl
stmt(mocking_progress_impl_1_stmt1, expression_statement, mocking_progress_impl_1_block1, (statements, 0), range(mocking_progress_impl_1, 1636, 24, 47, 47)).
stmt(mocking_progress_impl_1_stmt2, expression_statement, mocking_progress_impl_1_block2, (statements, 0), range(mocking_progress_impl_1, 2293, 31, 68, 68)).
stmt(mocking_progress_impl_1_stmt3, if_statement, mocking_progress_impl_1_block2, (statements, 1), range(mocking_progress_impl_1, 2342, 206, 70, 74)).
stmt(mocking_progress_impl_1_stmt4, if_statement, mocking_progress_impl_1_block2, (statements, 2), range(mocking_progress_impl_1, 2566, 177, 76, 80)).
stmt(mocking_progress_impl_1_stmt5, expression_statement, mocking_progress_impl_1_block2, (statements, 3), range(mocking_progress_impl_1, 2759, 44, 82, 82)).
stmt(mocking_progress_impl_1_stmt6, return_statement, mocking_progress_impl_1_block5, (statements, 0), range(mocking_progress_impl_1, 3402, 30, 103, 103)).
%mock_util_1 - org.mockito.internal.util.MockUtil
stmt(mock_util_1_stmt1, expression_statement, mock_util_1_block1, (statements, 0), range(mock_util_1, 896, 43, 24, 24)).
stmt(mock_util_1_stmt2, constructor_invocation, mock_util_1_block2, (statements, 0), range(mock_util_1, 987, 30, 28, 28)).
stmt(mock_util_1_stmt3, expression_statement, mock_util_1_block3, (statements, 0), range(mock_util_1, 1142, 44, 32, 32)).
stmt(mock_util_1_stmt4, expression_statement, mock_util_1_block3, (statements, 1), range(mock_util_1, 1196, 86, 33, 33)).
stmt(mock_util_1_stmt5, variable_declaration_statement, mock_util_1_block3, (statements, 2), range(mock_util_1, 1302, 70, 35, 35)).
stmt(mock_util_1_stmt6, variable_declaration_statement, mock_util_1_block3, (statements, 3), range(mock_util_1, 1382, 100, 36, 36)).
stmt(mock_util_1_stmt7, variable_declaration_statement, mock_util_1_block3, (statements, 4), range(mock_util_1, 1492, 119, 37, 37)).
stmt(mock_util_1_stmt8, variable_declaration_statement, mock_util_1_block3, (statements, 5), range(mock_util_1, 1621, 54, 38, 38)).
stmt(mock_util_1_stmt9, variable_declaration_statement, mock_util_1_block3, (statements, 6), range(mock_util_1, 1685, 78, 39, 39)).
stmt(mock_util_1_stmt10, variable_declaration_statement, mock_util_1_block3, (statements, 7), range(mock_util_1, 1773, 51, 40, 40)).
%registered_invocations_1 - org.mockito.internal.verification.RegisteredInvocations

%%% Expressions
%method_interceptor_filter_1 - org.mockito.internal.creation.MethodInterceptorFilter
expr(method_interceptor_filter_1_expr1, method_invocation, method_interceptor_filter_1_stmt2, expression, range(method_interceptor_filter_1, 718, 20, 24, 24), "toMock.isInterface()").
expr(method_interceptor_filter_1_expr2, assignment, method_interceptor_filter_1_stmt3, expression, range(method_interceptor_filter_1, 758, 21, 25, 25), "toMock=Object.class").
expr(method_interceptor_filter_1_expr3, type_literal, method_interceptor_filter_1_expr2, right_hand_side, range(method_interceptor_filter_1, 767, 12, 25, 25), "Object.class").
expr(method_interceptor_filter_1_expr4, assignment, method_interceptor_filter_1_stmt4, expression, range(method_interceptor_filter_1, 807, 71, 27, 27), "equalsMethod=toMock.getMethod(\"equals\",new Class[]{Object.class})").
expr(method_interceptor_filter_1_expr5, method_invocation, method_interceptor_filter_1_expr4, right_hand_side, range(method_interceptor_filter_1, 822, 56, 27, 27), "toMock.getMethod(\"equals\",new Class[]{Object.class})").
expr(method_interceptor_filter_1_expr6, array_creation, method_interceptor_filter_1_expr5, (arguments, 1), range(method_interceptor_filter_1, 849, 28, 27, 27), "new Class[]{Object.class}").
expr(method_interceptor_filter_1_expr7, array_initializer, method_interceptor_filter_1_expr6, initializer, range(method_interceptor_filter_1, 861, 16, 27, 27), "{Object.class}").
expr(method_interceptor_filter_1_expr8, type_literal, method_interceptor_filter_1_expr7, (expressions, 0), range(method_interceptor_filter_1, 863, 12, 27, 27), "Object.class").
expr(method_interceptor_filter_1_expr9, assignment, method_interceptor_filter_1_stmt5, expression, range(method_interceptor_filter_1, 892, 61, 28, 28), "hashCodeMethod=toMock.getMethod(\"hashCode\",(Class[])null)").
expr(method_interceptor_filter_1_expr10, method_invocation, method_interceptor_filter_1_expr9, right_hand_side, range(method_interceptor_filter_1, 909, 44, 28, 28), "toMock.getMethod(\"hashCode\",(Class[])null)").
expr(method_interceptor_filter_1_expr11, cast_expression, method_interceptor_filter_1_expr10, (arguments, 1), range(method_interceptor_filter_1, 938, 14, 28, 28), "(Class[])null").
expr(method_interceptor_filter_1_expr12, assignment, method_interceptor_filter_1_stmt6, expression, range(method_interceptor_filter_1, 1215, 24, 33, 33), "this.delegate=delegate").
expr(method_interceptor_filter_1_expr14, this_expression, f_delegate_171, expression, range(method_interceptor_filter_1, 1215, 4, 33, 33), "this").
expr(method_interceptor_filter_1_expr13, field_access, method_interceptor_filter_1_expr12, left_hand_side, range(method_interceptor_filter_1, 1215, 13, 33, 33), "this.delegate").
%creation_validator_1 - org.mockito.internal.util.CreationValidator
expr(creation_validator_1_expr1, prefix_expression, creation_validator_1_stmt1, expression, range(creation_validator_1, 399, 55, 14, 14), "!ClassImposterizer.INSTANCE.canImposterise(classToMock)").
expr(creation_validator_1_expr2, method_invocation, creation_validator_1_expr1, operand, range(creation_validator_1, 400, 54, 14, 14), "ClassImposterizer.INSTANCE.canImposterise(classToMock)").
expr(creation_validator_1_expr3, infix_expression, creation_validator_1_stmt2, expression, range(creation_validator_1, 647, 23, 20, 20), "extraInterfaces == null").
%matchers_binder_1 - org.mockito.internal.invocation.MatchersBinder
%test_base_1 - org.mockitoutil.TestBase
expr(test_base_1_expr1, method_invocation, test_base_1_stmt1, expression, range(test_base_1, 840, 63, 29, 29), "ConfigurationAccess.getConfig().overrideCleansStackTrace(false)").
expr(test_base_1_expr2, method_invocation, test_base_1_expr1, expression, range(test_base_1, 840, 31, 29, 29), "ConfigurationAccess.getConfig()").
expr(test_base_1_expr4, method_invocation, test_base_1_expr3, expression, range(test_base_1, 913, 31, 30, 30), "ConfigurationAccess.getConfig()").
expr(test_base_1_expr3, method_invocation, test_base_1_stmt2, expression, range(test_base_1, 913, 59, 30, 30), "ConfigurationAccess.getConfig().overrideDefaultAnswer(null)").
expr(test_base_1_expr5, method_invocation, test_base_1_stmt3, expression, range(test_base_1, 1026, 28, 35, 35), "new StateMaster().validate()").
expr(test_base_1_expr6, class_instance_creation, test_base_1_expr5, expression, range(test_base_1, 1026, 17, 35, 35), "new StateMaster()").
expr(test_base_1_expr7, method_invocation, test_base_1_stmt4, expression, range(test_base_1, 1064, 34, 36, 36), "MockitoAnnotations.initMocks(this)").
expr(test_base_1_expr8, this_expression, test_base_1_expr7, (arguments, 0), range(test_base_1, 1093, 4, 36, 36), "this").
%configuration_access_1 - org.mockito.internal.configuration.ConfigurationAccess
expr(configuration_access_1_expr1, cast_expression, configuration_access_1_stmt1, expression, range(configuration_access_1, 336, 56, 12, 12), "(MockitoConfiguration)new GlobalConfiguration().getIt()").
expr(configuration_access_1_expr2, method_invocation, configuration_access_1_expr1, expression, range(configuration_access_1, 359, 33, 12, 12), "new GlobalConfiguration().getIt()").
expr(configuration_access_1_expr3, class_instance_creation, configuration_access_1_expr2, expression, range(configuration_access_1, 359, 25, 12, 12), "new GlobalConfiguration()").
%thread_safe_mocking_progress_1 - org.mockito.internal.progress.ThreadSafeMockingProgress
expr(thread_safe_mocking_progress_1_expr1, class_instance_creation, thread_safe_mocking_progress_1_code11, initializer, range(thread_safe_mocking_progress_1, 467, 34, 13, 13), "new ThreadLocal<MockingProgress>()").
expr(thread_safe_mocking_progress_1_expr2, infix_expression, thread_safe_mocking_progress_1_stmt1, expression, range(thread_safe_mocking_progress_1, 560, 29, 16, 16), "mockingProgress.get() == null").
expr(thread_safe_mocking_progress_1_expr3, method_invocation, thread_safe_mocking_progress_1_expr2, left_operand, range(thread_safe_mocking_progress_1, 560, 21, 16, 16), "mockingProgress.get()").
expr(thread_safe_mocking_progress_1_expr4, method_invocation, thread_safe_mocking_progress_1_stmt2, expression, range(thread_safe_mocking_progress_1, 605, 46, 17, 17), "mockingProgress.set(new MockingProgressImpl())").
expr(thread_safe_mocking_progress_1_expr5, class_instance_creation, thread_safe_mocking_progress_1_expr4, (arguments, 0), range(thread_safe_mocking_progress_1, 625, 25, 17, 17), "new MockingProgressImpl()").
expr(thread_safe_mocking_progress_1_expr6, method_invocation, thread_safe_mocking_progress_1_stmt3, expression, range(thread_safe_mocking_progress_1, 678, 21, 19, 19), "mockingProgress.get()").
expr(thread_safe_mocking_progress_1_expr8, method_invocation, thread_safe_mocking_progress_1_expr7, expression, range(thread_safe_mocking_progress_1, 1337, 14, 43, 43), "threadSafely()").
expr(thread_safe_mocking_progress_1_expr7, method_invocation, thread_safe_mocking_progress_1_stmt4, expression, range(thread_safe_mocking_progress_1, 1337, 30, 43, 43), "threadSafely().validateState()").
expr(thread_safe_mocking_progress_1_expr10, method_invocation, thread_safe_mocking_progress_1_expr9, expression, range(thread_safe_mocking_progress_1, 1694, 14, 59, 59), "threadSafely()").
expr(thread_safe_mocking_progress_1_expr9, method_invocation, thread_safe_mocking_progress_1_stmt5, expression, range(thread_safe_mocking_progress_1, 1694, 37, 59, 59), "threadSafely().resetOngoingStubbing()").
%returns_mocks_1 - org.mockito.internal.stubbing.defaultanswers.ReturnsMocks
expr(returns_mocks_1_expr1, class_instance_creation, returns_mocks_1_code10, initializer, range(returns_mocks_1, 529, 17, 15, 15), "new MockitoCore()").
expr(returns_mocks_1_expr2, class_instance_creation, returns_mocks_1_code17, initializer, range(returns_mocks_1, 587, 28, 16, 16), "new ReturnsMoreEmptyValues()").
%globally_configured_answer_1 - org.mockito.internal.stubbing.defaultanswers.GloballyConfiguredAnswer
%argument_matcher_storage_impl_1 - org.mockito.internal.progress.ArgumentMatcherStorageImpl
expr(argument_matcher_storage_impl_1_expr1, class_instance_creation, argument_matcher_storage_impl_1_code10, initializer, range(argument_matcher_storage_impl_1, 778, 29, 24, 24), "new Stack<LocalizedMatcher>()").
expr(argument_matcher_storage_impl_1_expr2, prefix_expression, argument_matcher_storage_impl_1_stmt1, expression, range(argument_matcher_storage_impl_1, 3561, 23, 100, 100), "!matcherStack.isEmpty()").
expr(argument_matcher_storage_impl_1_expr3, method_invocation, argument_matcher_storage_impl_1_expr2, operand, range(argument_matcher_storage_impl_1, 3562, 22, 100, 100), "matcherStack.isEmpty()").
%equals_1 - org.mockito.internal.matchers.Equals
expr(equals_1_expr2, field_access, equals_1_expr1, left_hand_side, range(equals_1, 438, 11, 16, 16), "this.wanted").
expr(equals_1_expr1, assignment, equals_1_stmt1, expression, range(equals_1, 438, 20, 16, 16), "this.wanted=wanted").
expr(equals_1_expr3, this_expression, f_wanted_221, expression, range(equals_1, 438, 4, 16, 16), "this").
expr(equals_1_expr4, infix_expression, equals_1_stmt2, expression, range(equals_1, 523, 19, 20, 20), "this.wanted == null").
expr(equals_1_expr6, this_expression, f_wanted_221, expression, range(equals_1, 523, 4, 20, 20), "this").
expr(equals_1_expr5, field_access, equals_1_expr4, left_operand, range(equals_1, 523, 11, 20, 20), "this.wanted").
expr(equals_1_expr7, method_invocation, equals_1_stmt3, expression, range(equals_1, 606, 21, 23, 23), "wanted.equals(actual)").
expr(equals_1_expr8, method_invocation, equals_1_stmt4, expression, range(equals_1, 698, 40, 27, 27), "description.appendText(describe(wanted))").
expr(equals_1_expr9, method_invocation, equals_1_expr8, (arguments, 0), range(equals_1, 721, 16, 27, 27), "describe(wanted)").
expr(equals_1_expr10, method_invocation, equals_1_code11, initializer, range(equals_1, 813, 9, 31, 31), "quoting()").
expr(equals_1_expr11, infix_expression, equals_1_stmt6, expression, range(equals_1, 836, 14, 32, 32), "object == null").
expr(equals_1_expr12, assignment, equals_1_stmt7, expression, range(equals_1, 909, 23, 35, 35), "text+=object.toString()").
expr(equals_1_expr13, method_invocation, equals_1_expr12, right_hand_side, range(equals_1, 915, 17, 35, 35), "object.toString()").
expr(equals_1_expr14, assignment, equals_1_stmt8, expression, range(equals_1, 952, 16, 37, 37), "text+=quoting()").
expr(equals_1_expr15, method_invocation, equals_1_expr14, right_hand_side, range(equals_1, 959, 9, 37, 37), "quoting()").
expr(equals_1_expr16, instanceof_expression, equals_1_stmt10, expression, range(equals_1, 1041, 24, 42, 42), "wanted instanceof String").
expr(equals_1_expr17, instanceof_expression, equals_1_stmt11, expression, range(equals_1, 1113, 27, 44, 44), "wanted instanceof Character").
%mockito_configuration_1 - org.mockito.configuration.MockitoConfiguration
expr(mockito_configuration_1_expr3, this_expression, f_overridden_default_answer_75, expression, range(mockito_configuration_1, 777, 4, 22, 22), "this").
expr(mockito_configuration_1_expr1, assignment, mockito_configuration_1_stmt1, expression, range(mockito_configuration_1, 777, 44, 22, 22), "this.overriddenDefaultAnswer=defaultAnswer").
expr(mockito_configuration_1_expr2, field_access, mockito_configuration_1_expr1, left_hand_side, range(mockito_configuration_1, 777, 28, 22, 22), "this.overriddenDefaultAnswer").
expr(mockito_configuration_1_expr4, assignment, mockito_configuration_1_stmt2, expression, range(mockito_configuration_1, 976, 40, 27, 27), "this.cleansStackTrace=cleansStackTrace").
expr(mockito_configuration_1_expr5, field_access, mockito_configuration_1_expr4, left_hand_side, range(mockito_configuration_1, 976, 21, 27, 27), "this.cleansStackTrace").
expr(mockito_configuration_1_expr6, this_expression, f_cleans_stack_trace_78, expression, range(mockito_configuration_1, 976, 4, 27, 27), "this").
expr(mockito_configuration_1_expr7, class_instance_creation, mockito_configuration_1_stmt3, expression, range(mockito_configuration_1, 1355, 416, 41, 50), "new DefaultAnnotationEngine(){\n  @Override public Object createMockFor(  Annotation annotation,  Field field){\n    if (annotation instanceof SmartMock) {\n      return Mockito.mock(field.getType(),Mockito.RETURNS_SMART_NULLS);\n    }\n else {\n      return super.createMockFor(annotation,field);\n    }\n  }\n}").
%mock_settings_impl_1 - org.mockito.internal.creation.MockSettingsImpl
expr(mock_settings_impl_1_expr1, assignment, mock_settings_impl_1_stmt4, expression, range(mock_settings_impl_1, 1688, 34, 58, 58), "this.defaultAnswer=defaultAnswer").
expr(mock_settings_impl_1_expr2, field_access, mock_settings_impl_1_expr1, left_hand_side, range(mock_settings_impl_1, 1688, 18, 58, 58), "this.defaultAnswer").
expr(mock_settings_impl_1_expr3, this_expression, f_default_answer_184, expression, range(mock_settings_impl_1, 1688, 4, 58, 58), "this").
expr(mock_settings_impl_1_expr4, this_expression, mock_settings_impl_1_stmt5, expression, range(mock_settings_impl_1, 1740, 4, 59, 59), "this").
%argument_matching_tool_1 - org.mockito.internal.verification.argumentmatching.ArgumentMatchingTool
expr(argument_matching_tool_1_expr1, infix_expression, argument_matching_tool_1_stmt1, expression, range(argument_matching_tool_1, 728, 35, 21, 21), "matchers.size() != arguments.length").
expr(argument_matching_tool_1_expr2, method_invocation, argument_matching_tool_1_expr1, left_operand, range(argument_matching_tool_1, 728, 15, 21, 21), "matchers.size()").
expr(argument_matching_tool_1_expr3, class_instance_creation, argument_matching_tool_1_code8, initializer, range(argument_matching_tool_1, 860, 25, 25, 25), "new LinkedList<Integer>()").
expr(argument_matching_tool_1_expr4, infix_expression, argument_matching_tool_1_stmt5, expression, range(argument_matching_tool_1, 962, 241, 28, 31), "m instanceof ContainsExtraTypeInformation && !safelyMatches(m,arguments[i]) && toStringEquals(m,arguments[i])&& !((ContainsExtraTypeInformation)m).typeMatches(arguments[i])").
expr(argument_matching_tool_1_expr5, instanceof_expression, argument_matching_tool_1_expr4, left_operand, range(argument_matching_tool_1, 962, 41, 28, 28), "m instanceof ContainsExtraTypeInformation").
expr(argument_matching_tool_1_expr6, method_invocation, argument_matching_tool_1_stmt7, expression, range(argument_matching_tool_1, 1443, 14, 41, 41), "m.matches(arg)").
expr(argument_matching_tool_1_expr9, method_invocation, argument_matching_tool_1_expr7, expression, range(argument_matching_tool_1, 1616, 29, 48, 48), "StringDescription.toString(m)").
expr(argument_matching_tool_1_expr7, method_invocation, argument_matching_tool_1_stmt8, expression, range(argument_matching_tool_1, 1616, 52, 48, 48), "StringDescription.toString(m).equals(arg.toString())").
expr(argument_matching_tool_1_expr8, method_invocation, argument_matching_tool_1_expr7, (arguments, 0), range(argument_matching_tool_1, 1653, 14, 48, 48), "arg.toString()").
%default_mockito_configuration_1 - org.mockito.configuration.DefaultMockitoConfiguration
%mock_handler_1 - org.mockito.internal.MockHandler
expr(mock_handler_1_expr2, field_access, mock_handler_1_expr1, left_hand_side, range(mock_handler_1, 1914, 13, 45, 45), "this.mockName").
expr(mock_handler_1_expr1, assignment, mock_handler_1_stmt1, expression, range(mock_handler_1, 1914, 24, 45, 45), "this.mockName=mockName").
expr(mock_handler_1_expr3, this_expression, f_mock_name_133, expression, range(mock_handler_1, 1914, 4, 45, 45), "this").
expr(mock_handler_1_expr4, assignment, mock_handler_1_stmt2, expression, range(mock_handler_1, 1949, 38, 46, 46), "this.mockingProgress=mockingProgress").
expr(mock_handler_1_expr6, this_expression, f_mocking_progress_134, expression, range(mock_handler_1, 1949, 4, 46, 46), "this").
expr(mock_handler_1_expr5, field_access, mock_handler_1_expr4, left_hand_side, range(mock_handler_1, 1949, 20, 46, 46), "this.mockingProgress").
expr(mock_handler_1_expr9, this_expression, f_matchers_binder_135, expression, range(mock_handler_1, 1998, 4, 47, 47), "this").
expr(mock_handler_1_expr8, field_access, mock_handler_1_expr7, left_hand_side, range(mock_handler_1, 1998, 19, 47, 47), "this.matchersBinder").
expr(mock_handler_1_expr7, assignment, mock_handler_1_stmt3, expression, range(mock_handler_1, 1998, 36, 47, 47), "this.matchersBinder=matchersBinder").
expr(mock_handler_1_expr10, assignment, mock_handler_1_stmt4, expression, range(mock_handler_1, 2045, 32, 48, 48), "this.mockSettings=mockSettings").
expr(mock_handler_1_expr11, field_access, mock_handler_1_expr10, left_hand_side, range(mock_handler_1, 2045, 17, 48, 48), "this.mockSettings").
expr(mock_handler_1_expr12, this_expression, f_mock_settings_136, expression, range(mock_handler_1, 2045, 4, 48, 48), "this").
expr(mock_handler_1_expr13, assignment, mock_handler_1_stmt5, expression, range(mock_handler_1, 2088, 57, 49, 49), "this.mockitoStubber=new MockitoStubber(mockingProgress)").
expr(mock_handler_1_expr14, field_access, mock_handler_1_expr13, left_hand_side, range(mock_handler_1, 2088, 19, 49, 49), "this.mockitoStubber").
expr(mock_handler_1_expr16, this_expression, f_mockito_stubber_137, expression, range(mock_handler_1, 2088, 4, 49, 49), "this").
expr(mock_handler_1_expr15, class_instance_creation, mock_handler_1_expr13, right_hand_side, range(mock_handler_1, 2110, 35, 49, 49), "new MockitoStubber(mockingProgress)").
expr(mock_handler_1_expr20, this_expression, f_registered_invocations_138, expression, range(mock_handler_1, 2156, 4, 50, 50), "this").
expr(mock_handler_1_expr18, field_access, mock_handler_1_expr17, left_hand_side, range(mock_handler_1, 2156, 26, 50, 50), "this.registeredInvocations").
expr(mock_handler_1_expr17, assignment, mock_handler_1_stmt6, expression, range(mock_handler_1, 2156, 56, 50, 50), "this.registeredInvocations=new RegisteredInvocations()").
expr(mock_handler_1_expr19, class_instance_creation, mock_handler_1_expr17, right_hand_side, range(mock_handler_1, 2185, 27, 50, 50), "new RegisteredInvocations()").
%debugging_info_1 - org.mockito.internal.debugging.DebuggingInfo
expr(debugging_info_1_expr1, class_instance_creation, debugging_info_1_code10, initializer, range(debugging_info_1, 494, 28, 17, 17), "new LinkedList<Invocation>()").
expr(debugging_info_1_expr2, class_instance_creation, debugging_info_1_code20, initializer, range(debugging_info_1, 590, 35, 18, 18), "new LinkedList<InvocationMatcher>()").
%class_path_loader_1 - org.mockito.internal.configuration.ClassPathLoader
expr(class_path_loader_1_expr1, assignment, class_path_loader_1_stmt3, expression, range(class_path_loader_1, 620, 85, 20, 20), "configClass=(Class)Class.forName(\"org.mockito.configuration.MockitoConfiguration\")").
expr(class_path_loader_1_expr2, cast_expression, class_path_loader_1_expr1, right_hand_side, range(class_path_loader_1, 634, 71, 20, 20), "(Class)Class.forName(\"org.mockito.configuration.MockitoConfiguration\")").
expr(class_path_loader_1_expr3, method_invocation, class_path_loader_1_expr2, expression, range(class_path_loader_1, 642, 63, 20, 20), "Class.forName(\"org.mockito.configuration.MockitoConfiguration\")").
expr(class_path_loader_1_expr4, cast_expression, class_path_loader_1_stmt5, expression, range(class_path_loader_1, 917, 49, 27, 27), "(IMockitoConfiguration)configClass.newInstance()").
expr(class_path_loader_1_expr5, method_invocation, class_path_loader_1_expr4, expression, range(class_path_loader_1, 941, 25, 27, 27), "configClass.newInstance()").
%returns_smart_nulls_1 - org.mockito.internal.stubbing.defaultanswers.ReturnsSmartNulls
expr(returns_smart_nulls_1_expr1, class_instance_creation, returns_smart_nulls_1_code13, initializer, range(returns_smart_nulls_1, 2345, 28, 57, 57), "new ReturnsMoreEmptyValues()").
%mockito_naming_policy_1 - org.mockito.internal.creation.cglib.MockitoNamingPolicy
expr(mockito_naming_policy_1_expr1, class_instance_creation, mockito_naming_policy_1_code10, initializer, range(mockito_naming_policy_1, 351, 25, 11, 11), "new MockitoNamingPolicy()").
%mock_name_1 - org.mockito.internal.util.MockName
expr(mock_name_1_expr1, infix_expression, mock_name_1_stmt1, expression, range(mock_name_1, 370, 16, 14, 14), "mockName == null").
expr(mock_name_1_expr5, this_expression, f_mock_name_285, expression, range(mock_name_1, 403, 4, 15, 15), "this").
expr(mock_name_1_expr2, assignment, mock_name_1_stmt2, expression, range(mock_name_1, 403, 43, 15, 15), "this.mockName=toInstanceName(classToMock)").
expr(mock_name_1_expr3, field_access, mock_name_1_expr2, left_hand_side, range(mock_name_1, 403, 13, 15, 15), "this.mockName").
expr(mock_name_1_expr4, method_invocation, mock_name_1_expr2, right_hand_side, range(mock_name_1, 419, 27, 15, 15), "toInstanceName(classToMock)").
expr(mock_name_1_expr8, this_expression, f_surrogate_286, expression, range(mock_name_1, 461, 4, 16, 16), "this").
expr(mock_name_1_expr6, assignment, mock_name_1_stmt3, expression, range(mock_name_1, 461, 21, 16, 16), "this.surrogate=true").
expr(mock_name_1_expr7, field_access, mock_name_1_expr6, left_hand_side, range(mock_name_1, 461, 14, 16, 16), "this.surrogate").
expr(mock_name_1_expr9, method_invocation, mock_name_1_code11, initializer, range(mock_name_1, 649, 21, 23, 23), "clazz.getSimpleName()").
expr(mock_name_1_expr11, method_invocation, mock_name_1_expr10, left_operand, range(mock_name_1, 723, 39, 25, 25), "className.substring(0,1).toLowerCase()").
expr(mock_name_1_expr12, method_invocation, mock_name_1_expr11, expression, range(mock_name_1, 723, 25, 25, 25), "className.substring(0,1)").
expr(mock_name_1_expr10, infix_expression, mock_name_1_stmt5, expression, range(mock_name_1, 723, 64, 25, 25), "className.substring(0,1).toLowerCase() + className.substring(1)").
expr(mock_name_1_expr13, method_invocation, mock_name_1_expr10, right_operand, range(mock_name_1, 765, 22, 25, 25), "className.substring(1)").
%returns_more_empty_values_1 - org.mockito.internal.stubbing.defaultanswers.ReturnsMoreEmptyValues
expr(returns_more_empty_values_1_expr1, class_instance_creation, returns_more_empty_values_1_code12, initializer, range(returns_more_empty_values_1, 1331, 24, 45, 45), "new ReturnsEmptyValues()").
%mockito_annotations_1 - org.mockito.MockitoAnnotations
expr(mockito_annotations_1_expr1, infix_expression, mockito_annotations_1_stmt1, expression, range(mockito_annotations_1, 2990, 17, 81, 81), "testClass == null").
expr(mockito_annotations_1_expr2, method_invocation, mockito_annotations_1_code7, initializer, range(mockito_annotations_1, 3215, 20, 85, 85), "testClass.getClass()").
expr(mockito_annotations_1_expr3, infix_expression, mockito_annotations_1_stmt3, expression, range(mockito_annotations_1, 3252, 21, 86, 86), "clazz != Object.class").
expr(mockito_annotations_1_expr4, type_literal, mockito_annotations_1_expr3, right_operand, range(mockito_annotations_1, 3261, 12, 86, 86), "Object.class").
expr(mockito_annotations_1_expr5, method_invocation, mockito_annotations_1_stmt4, expression, range(mockito_annotations_1, 3289, 22, 87, 87), "scan(testClass,clazz)").
expr(mockito_annotations_1_expr6, assignment, mockito_annotations_1_stmt5, expression, range(mockito_annotations_1, 3325, 29, 88, 88), "clazz=clazz.getSuperclass()").
expr(mockito_annotations_1_expr7, method_invocation, mockito_annotations_1_expr6, right_hand_side, range(mockito_annotations_1, 3333, 21, 88, 88), "clazz.getSuperclass()").
expr(mockito_annotations_1_expr8, method_invocation, mockito_annotations_1_code11, initializer, range(mockito_annotations_1, 3482, 47, 93, 93), "new GlobalConfiguration().getAnnotationEngine()").
expr(mockito_annotations_1_expr9, class_instance_creation, mockito_annotations_1_expr8, expression, range(mockito_annotations_1, 3482, 25, 93, 93), "new GlobalConfiguration()").
expr(mockito_annotations_1_expr10, method_invocation, mockito_annotations_1_code16, initializer, range(mockito_annotations_1, 3556, 25, 94, 94), "clazz.getDeclaredFields()").
expr(mockito_annotations_1_expr11, method_invocation, mockito_annotations_1_stmt9, expression, range(mockito_annotations_1, 3660, 22, 96, 96), "field.getAnnotations()").
%mockito_core_1 - org.mockito.internal.MockitoCore
expr(mockito_core_1_expr1, class_instance_creation, mockito_core_1_code8, initializer, range(mockito_core_1, 1203, 14, 32, 32), "new Reporter()").
expr(mockito_core_1_expr2, class_instance_creation, mockito_core_1_code14, initializer, range(mockito_core_1, 1258, 14, 33, 33), "new MockUtil()").
expr(mockito_core_1_expr3, class_instance_creation, mockito_core_1_code20, initializer, range(mockito_core_1, 1327, 31, 34, 34), "new ThreadSafeMockingProgress()").
expr(mockito_core_1_expr4, method_invocation, mockito_core_1_stmt1, expression, range(mockito_core_1, 1449, 31, 37, 37), "mockingProgress.validateState()").
expr(mockito_core_1_expr5, method_invocation, mockito_core_1_stmt2, expression, range(mockito_core_1, 1491, 38, 38, 38), "mockingProgress.resetOngoingStubbing()").
%actual_invocation_has_null_argument_npebug_test_1 - org.mockitousage.bugs.ActualInvocationHasNullArgumentNPEBugTest
%mockito_1 - org.mockito.Mockito
expr(mockito_1_expr1, class_instance_creation, mockito_1_code8, initializer, range(mockito_1, 24218, 17, 570, 570), "new MockitoCore()").
expr(mockito_1_expr2, class_instance_creation, mockito_1_code17, initializer, range(mockito_1, 24764, 30, 581, 581), "new GloballyConfiguredAnswer()").
expr(mockito_1_expr3, class_instance_creation, mockito_1_code26, initializer, range(mockito_1, 26388, 23, 613, 613), "new ReturnsSmartNulls()").
expr(mockito_1_expr4, class_instance_creation, mockito_1_code35, initializer, range(mockito_1, 27004, 18, 626, 626), "new ReturnsMocks()").
expr(mockito_1_expr5, class_instance_creation, mockito_1_code44, initializer, range(mockito_1, 28711, 22, 660, 660), "new CallsRealMethods()").
expr(mockito_1_expr7, class_instance_creation, mockito_1_expr6, expression, range(mockito_1, 62757, 22, 1480, 1480), "new MockSettingsImpl()").
expr(mockito_1_expr6, method_invocation, mockito_1_stmt1, expression, range(mockito_1, 62757, 54, 1480, 1480), "new MockSettingsImpl().defaultAnswer(RETURNS_DEFAULTS)").
%argument_matching_tool_test_1 - org.mockito.internal.verification.argumentmatching.ArgumentMatchingToolTest
expr(argument_matching_tool_test_1_expr1, class_instance_creation, argument_matching_tool_test_1_code8, initializer, range(argument_matching_tool_test_1, 575, 26, 20, 20), "new ArgumentMatchingTool()").
expr(argument_matching_tool_test_1_expr2, method_invocation, argument_matching_tool_test_1_code14, initializer, range(argument_matching_tool_test_1, 2744, 101, 82, 82), "tool.getSuspiciouslyNotMatchingArgsIndexes((List)Arrays.asList(new Equals(20)),new Object[]{null})").
expr(argument_matching_tool_test_1_expr3, cast_expression, argument_matching_tool_test_1_expr2, (arguments, 0), range(argument_matching_tool_test_1, 2787, 36, 82, 82), "(List)Arrays.asList(new Equals(20))").
expr(argument_matching_tool_test_1_expr5, method_invocation, argument_matching_tool_test_1_expr3, expression, range(argument_matching_tool_test_1, 2794, 29, 82, 82), "Arrays.asList(new Equals(20))").
expr(argument_matching_tool_test_1_expr6, class_instance_creation, argument_matching_tool_test_1_expr5, (arguments, 0), range(argument_matching_tool_test_1, 2808, 14, 82, 82), "new Equals(20)").
expr(argument_matching_tool_test_1_expr4, array_creation, argument_matching_tool_test_1_expr2, (arguments, 1), range(argument_matching_tool_test_1, 2825, 19, 82, 82), "new Object[]{null}").
expr(argument_matching_tool_test_1_expr7, array_initializer, argument_matching_tool_test_1_expr4, initializer, range(argument_matching_tool_test_1, 2838, 6, 82, 82), "{null}").
%returns_empty_values_1 - org.mockito.internal.stubbing.defaultanswers.ReturnsEmptyValues
%matchers_1 - org.mockito.Matchers
expr(matchers_1_expr1, class_instance_creation, matchers_1_code7, initializer, range(matchers_1, 4154, 31, 104, 104), "new ThreadSafeMockingProgress()").
%calls_real_methods_1 - org.mockito.internal.stubbing.answers.CallsRealMethods
%reporter_1 - org.mockito.exceptions.Reporter
%mockito_stubber_1 - org.mockito.internal.stubbing.MockitoStubber
expr(mockito_stubber_1_expr1, single_member_annotation, mockito_stubber_1_code2, (modifiers, 0), range(mockito_stubber_1, 520, 30, 17, 17), "@SuppressWarnings(\"unchecked\")").
expr(mockito_stubber_1_expr2, class_instance_creation, mockito_stubber_1_code9, initializer, range(mockito_stubber_1, 650, 42, 20, 20), "new LinkedList<StubbedInvocationMatcher>()").
expr(mockito_stubber_1_expr3, class_instance_creation, mockito_stubber_1_code19, initializer, range(mockito_stubber_1, 799, 23, 22, 22), "new ArrayList<Answer>()").
expr(mockito_stubber_1_expr6, this_expression, f_mocking_progress_250, expression, range(mockito_stubber_1, 953, 4, 27, 27), "this").
expr(mockito_stubber_1_expr4, assignment, mockito_stubber_1_stmt1, expression, range(mockito_stubber_1, 953, 38, 27, 27), "this.mockingProgress=mockingProgress").
expr(mockito_stubber_1_expr5, field_access, mockito_stubber_1_expr4, left_hand_side, range(mockito_stubber_1, 953, 20, 27, 27), "this.mockingProgress").
%argument_matcher_1 - org.mockito.ArgumentMatcher
%global_configuration_1 - org.mockito.internal.configuration.GlobalConfiguration
expr(global_configuration_1_expr1, class_instance_creation, global_configuration_1_code9, initializer, range(global_configuration_1, 755, 40, 19, 19), "new ThreadLocal<IMockitoConfiguration>()").
expr(global_configuration_1_expr2, method_invocation, global_configuration_1_stmt1, expression, range(global_configuration_1, 881, 25, 23, 23), "globalConfiguration.get()").
expr(global_configuration_1_expr3, infix_expression, global_configuration_1_stmt2, expression, range(global_configuration_1, 1050, 33, 28, 28), "globalConfiguration.get() == null").
expr(global_configuration_1_expr4, method_invocation, global_configuration_1_expr3, left_operand, range(global_configuration_1, 1050, 25, 28, 28), "globalConfiguration.get()").
expr(global_configuration_1_expr5, method_invocation, global_configuration_1_stmt3, expression, range(global_configuration_1, 1100, 39, 29, 29), "globalConfiguration.set(createConfig())").
expr(global_configuration_1_expr6, method_invocation, global_configuration_1_expr5, (arguments, 0), range(global_configuration_1, 1124, 14, 29, 29), "createConfig()").
expr(global_configuration_1_expr7, class_instance_creation, global_configuration_1_code18, initializer, range(global_configuration_1, 1309, 33, 35, 35), "new DefaultMockitoConfiguration()").
expr(global_configuration_1_expr8, method_invocation, global_configuration_1_code21, initializer, range(global_configuration_1, 1384, 41, 36, 36), "new ClassPathLoader().loadConfiguration()").
expr(global_configuration_1_expr9, class_instance_creation, global_configuration_1_expr8, expression, range(global_configuration_1, 1384, 21, 36, 36), "new ClassPathLoader()").
expr(global_configuration_1_expr10, infix_expression, global_configuration_1_stmt6, expression, range(global_configuration_1, 1440, 14, 37, 37), "config != null").
expr(global_configuration_1_expr11, class_instance_creation, global_configuration_1_stmt8, expression, range(global_configuration_1, 1616, 25, 45, 45), "new GlobalConfiguration()").
expr(global_configuration_1_expr13, method_invocation, global_configuration_1_expr12, expression, range(global_configuration_1, 1840, 25, 53, 53), "globalConfiguration.get()").
expr(global_configuration_1_expr12, method_invocation, global_configuration_1_stmt9, expression, range(global_configuration_1, 1840, 47, 53, 53), "globalConfiguration.get().getAnnotationEngine()").
%default_annotation_engine_1 - org.mockito.internal.configuration.DefaultAnnotationEngine
%class_imposterizer_1 - org.mockito.internal.creation.jmock.ClassImposterizer
expr(class_imposterizer_1_expr1, class_instance_creation, class_imposterizer_1_code8, initializer, range(class_imposterizer_1, 1048, 23, 30, 30), "new ClassImposterizer()").
expr(class_imposterizer_1_expr2, class_instance_creation, class_imposterizer_1_code15, initializer, range(class_imposterizer_1, 1514, 18, 37, 37), "new ObjenesisStd()").
expr(class_imposterizer_1_expr3, class_instance_creation, class_imposterizer_1_code22, initializer, range(class_imposterizer_1, 1653, 242, 39, 44), "new MockitoNamingPolicy(){\n  @Override public String getClassName(  String prefix,  String source,  Object key,  Predicate names){\n    return \"codegen.\" + super.getClassName(prefix,source,key,names);\n  }\n}").
expr(class_imposterizer_1_expr4, class_instance_creation, class_imposterizer_1_code30, initializer, range(class_imposterizer_1, 1968, 131, 46, 50), "new CallbackFilter(){\n  public int accept(  Method method){\n    return method.isBridge() ? 1 : 0;\n  }\n}").
expr(class_imposterizer_1_expr5, infix_expression, class_imposterizer_1_stmt1, expression, range(class_imposterizer_1, 2175, 89, 53, 53), "!type.isPrimitive() && !Modifier.isFinal(type.getModifiers()) && !type.isAnonymousClass()").
expr(class_imposterizer_1_expr6, prefix_expression, class_imposterizer_1_expr5, left_operand, range(class_imposterizer_1, 2175, 19, 53, 53), "!type.isPrimitive()").
expr(class_imposterizer_1_expr7, method_invocation, class_imposterizer_1_expr6, operand, range(class_imposterizer_1, 2176, 18, 53, 53), "type.isPrimitive()").
expr(class_imposterizer_1_expr8, prefix_expression, class_imposterizer_1_expr5, right_operand, range(class_imposterizer_1, 2198, 38, 53, 53), "!Modifier.isFinal(type.getModifiers())").
expr(class_imposterizer_1_expr9, method_invocation, class_imposterizer_1_expr8, operand, range(class_imposterizer_1, 2199, 37, 53, 53), "Modifier.isFinal(type.getModifiers())").
expr(class_imposterizer_1_expr10, method_invocation, class_imposterizer_1_expr9, (arguments, 0), range(class_imposterizer_1, 2216, 19, 53, 53), "type.getModifiers()").
expr(class_imposterizer_1_expr11, prefix_expression, class_imposterizer_1_expr5, (extended_operands, 0), range(class_imposterizer_1, 2240, 24, 53, 53), "!type.isAnonymousClass()").
expr(class_imposterizer_1_expr12, method_invocation, class_imposterizer_1_expr11, operand, range(class_imposterizer_1, 2241, 23, 53, 53), "type.isAnonymousClass()").
expr(class_imposterizer_1_expr13, method_invocation, class_imposterizer_1_stmt3, expression, range(class_imposterizer_1, 2425, 43, 58, 58), "setConstructorsAccessible(mockedType,true)").
expr(class_imposterizer_1_expr14, method_invocation, class_imposterizer_1_stmt4, expression, range(class_imposterizer_1, 2660, 44, 62, 62), "setConstructorsAccessible(mockedType,false)").
expr(class_imposterizer_1_expr15, method_invocation, class_imposterizer_1_stmt5, expression, range(class_imposterizer_1, 2860, 36, 67, 67), "mockedType.getDeclaredConstructors()").
expr(class_imposterizer_1_expr16, infix_expression, class_imposterizer_1_stmt6, expression, range(class_imposterizer_1, 3078, 26, 73, 73), "mockedType == Object.class").
expr(class_imposterizer_1_expr17, type_literal, class_imposterizer_1_expr16, right_operand, range(class_imposterizer_1, 3092, 12, 73, 73), "Object.class").
%state_master_1 - org.mockito.StateMaster
expr(state_master_1_expr1, class_instance_creation, state_master_1_code8, initializer, range(state_master_1, 301, 31, 11, 11), "new ThreadSafeMockingProgress()").
expr(state_master_1_expr2, method_invocation, state_master_1_stmt1, expression, range(state_master_1, 442, 31, 18, 18), "mockingProgress.validateState()").
%mocking_progress_impl_1 - org.mockito.internal.progress.MockingProgressImpl
expr(mocking_progress_impl_1_expr1, class_instance_creation, mocking_progress_impl_1_code9, initializer, range(mocking_progress_impl_1, 664, 14, 18, 18), "new Reporter()").
expr(mocking_progress_impl_1_expr2, class_instance_creation, mocking_progress_impl_1_code15, initializer, range(mocking_progress_impl_1, 746, 32, 19, 19), "new ArgumentMatcherStorageImpl()").
expr(mocking_progress_impl_1_expr3, class_instance_creation, mocking_progress_impl_1_code21, initializer, range(mocking_progress_impl_1, 833, 19, 21, 21), "new DebuggingInfo()").
expr(mocking_progress_impl_1_expr4, assignment, mocking_progress_impl_1_stmt1, expression, range(mocking_progress_impl_1, 1636, 23, 47, 47), "iOngoingStubbing=null").
expr(mocking_progress_impl_1_expr5, method_invocation, mocking_progress_impl_1_stmt2, expression, range(mocking_progress_impl_1, 2293, 30, 68, 68), "GlobalConfiguration.validate()").
expr(mocking_progress_impl_1_expr6, infix_expression, mocking_progress_impl_1_stmt3, expression, range(mocking_progress_impl_1, 2346, 24, 70, 70), "verificationMode != null").
expr(mocking_progress_impl_1_expr7, infix_expression, mocking_progress_impl_1_stmt4, expression, range(mocking_progress_impl_1, 2570, 26, 76, 76), "stubbingInProgress != null").
expr(mocking_progress_impl_1_expr9, method_invocation, mocking_progress_impl_1_expr8, expression, range(mocking_progress_impl_1, 2759, 27, 82, 82), "getArgumentMatcherStorage()").
expr(mocking_progress_impl_1_expr8, method_invocation, mocking_progress_impl_1_stmt5, expression, range(mocking_progress_impl_1, 2759, 43, 82, 82), "getArgumentMatcherStorage().validateState()").
%mock_util_1 - org.mockito.internal.util.MockUtil
expr(mock_util_1_expr1, assignment, mock_util_1_stmt1, expression, range(mock_util_1, 896, 42, 24, 24), "this.creationValidator=creationValidator").
expr(mock_util_1_expr2, field_access, mock_util_1_expr1, left_hand_side, range(mock_util_1, 896, 22, 24, 24), "this.creationValidator").
expr(mock_util_1_expr3, this_expression, f_creation_validator_290, expression, range(mock_util_1, 896, 4, 24, 24), "this").
expr(mock_util_1_expr4, constructor_invocation, mock_util_1_block2, (statements, 0), range(mock_util_1, 987, 30, 28, 28), "this(new CreationValidator());").
expr(mock_util_1_expr5, class_instance_creation, mock_util_1_stmt2, (arguments, 0), range(mock_util_1, 992, 23, 28, 28), "new CreationValidator()").
expr(mock_util_1_expr6, method_invocation, mock_util_1_stmt3, expression, range(mock_util_1, 1142, 43, 32, 32), "creationValidator.validateType(classToMock)").
expr(mock_util_1_expr7, method_invocation, mock_util_1_stmt4, expression, range(mock_util_1, 1196, 85, 33, 33), "creationValidator.validateExtraInterfaces(classToMock,settings.getExtraInterfaces())").
expr(mock_util_1_expr8, method_invocation, mock_util_1_expr7, (arguments, 1), range(mock_util_1, 1251, 29, 33, 33), "settings.getExtraInterfaces()").
expr(mock_util_1_expr9, class_instance_creation, mock_util_1_code11, initializer, range(mock_util_1, 1322, 49, 35, 35), "new MockName(settings.getMockName(),classToMock)").
expr(mock_util_1_expr10, method_invocation, mock_util_1_expr9, (arguments, 0), range(mock_util_1, 1335, 22, 35, 35), "settings.getMockName()").
expr(mock_util_1_expr11, class_instance_creation, mock_util_1_code16, initializer, range(mock_util_1, 1411, 70, 36, 36), "new MockHandler<T>(mockName,progress,new MatchersBinder(),settings)").
expr(mock_util_1_expr12, class_instance_creation, mock_util_1_expr11, (arguments, 2), range(mock_util_1, 1450, 20, 36, 36), "new MatchersBinder()").
expr(mock_util_1_expr13, class_instance_creation, mock_util_1_code26, initializer, range(mock_util_1, 1541, 69, 37, 37), "new MethodInterceptorFilter<MockHandler<T>>(classToMock,mockHandler)").
expr(mock_util_1_expr14, method_invocation, mock_util_1_code37, initializer, range(mock_util_1, 1645, 29, 38, 38), "settings.getExtraInterfaces()").
expr(mock_util_1_expr16, infix_expression, mock_util_1_expr15, expression, range(mock_util_1, 1713, 18, 39, 39), "interfaces == null").
expr(mock_util_1_expr15, conditional_expression, mock_util_1_code43, initializer, range(mock_util_1, 1713, 49, 39, 39), "interfaces == null ? new Class<?>[0] : interfaces").
expr(mock_util_1_expr17, array_creation, mock_util_1_expr15, then_expression, range(mock_util_1, 1734, 15, 39, 39), "new Class<?>[0]").
expr(mock_util_1_expr18, method_invocation, mock_util_1_code50, initializer, range(mock_util_1, 1796, 27, 40, 40), "settings.getSpiedInstance()").
%registered_invocations_1 - org.mockito.internal.verification.RegisteredInvocations
expr(registered_invocations_1_expr1, method_invocation, registered_invocations_1_code10, initializer, range(registered_invocations_1, 480, 58, 18, 18), "Collections.synchronizedList(new LinkedList<Invocation>())").
expr(registered_invocations_1_expr2, class_instance_creation, registered_invocations_1_expr1, (arguments, 0), range(registered_invocations_1, 509, 28, 18, 18), "new LinkedList<Invocation>()").

%%% Names
%method_interceptor_filter_1 - org.mockito.internal.creation.MethodInterceptorFilter
name(m_method_interceptor_filter_194, simple_name, method_interceptor_filter_1_code3, name, range(method_interceptor_filter_1, 636, 23, 22, 22), 'MethodInterceptorFilter').
name(p_to_mock_167, simple_name, method_interceptor_filter_1_code5, name, range(method_interceptor_filter_1, 666, 6, 22, 22), 'toMock').
name(p_delegate_168, simple_name, method_interceptor_filter_1_code7, name, range(method_interceptor_filter_1, 676, 8, 22, 22), 'delegate').
name(p_to_mock_167, simple_name, method_interceptor_filter_1_expr1, expression, range(method_interceptor_filter_1, 718, 6, 24, 24), 'toMock').
name(m_is_interface_195, simple_name, method_interceptor_filter_1_expr1, name, range(method_interceptor_filter_1, 725, 11, 24, 24), 'isInterface').
name(p_to_mock_167, simple_name, method_interceptor_filter_1_expr2, left_hand_side, range(method_interceptor_filter_1, 758, 6, 25, 25), 'toMock').
name(f_equals_method_169, simple_name, method_interceptor_filter_1_expr4, left_hand_side, range(method_interceptor_filter_1, 807, 12, 27, 27), 'equalsMethod').
name(p_to_mock_167, simple_name, method_interceptor_filter_1_expr5, expression, range(method_interceptor_filter_1, 822, 6, 27, 27), 'toMock').
name(m_get_method_196, simple_name, method_interceptor_filter_1_expr5, name, range(method_interceptor_filter_1, 829, 9, 27, 27), 'getMethod').
name(f_hash_code_method_170, simple_name, method_interceptor_filter_1_expr9, left_hand_side, range(method_interceptor_filter_1, 892, 14, 28, 28), 'hashCodeMethod').
name(p_to_mock_167, simple_name, method_interceptor_filter_1_expr10, expression, range(method_interceptor_filter_1, 909, 6, 28, 28), 'toMock').
name(m_get_method_196, simple_name, method_interceptor_filter_1_expr10, name, range(method_interceptor_filter_1, 916, 9, 28, 28), 'getMethod').
name(f_delegate_171, simple_name, method_interceptor_filter_1_expr13, name, range(method_interceptor_filter_1, 1220, 8, 33, 33), 'delegate').
name(p_delegate_168, simple_name, method_interceptor_filter_1_expr12, right_hand_side, range(method_interceptor_filter_1, 1231, 8, 33, 33), 'delegate').
%creation_validator_1 - org.mockito.internal.util.CreationValidator
name(t_creation_validator_27, simple_name, creation_validator_1_code2, name, range(creation_validator_1, 313, 17, 11, 11), 'CreationValidator').
name(q_instance_1, qualified_name, creation_validator_1_expr2, expression, range(creation_validator_1, 400, 26, 14, 14), 'ClassImposterizer.INSTANCE').
name(t_class_imposterizer_28, simple_name, q_instance_1, qualifier, range(creation_validator_1, 400, 17, 14, 14), 'ClassImposterizer').
name(m_can_imposterise_215, simple_name, creation_validator_1_expr2, name, range(creation_validator_1, 427, 14, 14, 14), 'canImposterise').
name(p_class_to_mock_280, simple_name, creation_validator_1_expr2, (arguments, 0), range(creation_validator_1, 442, 11, 14, 14), 'classToMock').
name(p_extra_interfaces_282, simple_name, creation_validator_1_expr3, left_operand, range(creation_validator_1, 647, 15, 20, 20), 'extraInterfaces').
%matchers_binder_1 - org.mockito.internal.invocation.MatchersBinder
name(t_matchers_binder_15, simple_name, matchers_binder_1_code2, name, range(matchers_binder_1, 361, 14, 14, 14), 'MatchersBinder').
%test_base_1 - org.mockitoutil.TestBase
name(t_test_base_38, simple_name, test_base_1_code2, name, range(test_base_1, 751, 8, 25, 25), 'TestBase').
name(t_configuration_access_39, simple_name, test_base_1_expr2, expression, range(test_base_1, 840, 19, 29, 29), 'ConfigurationAccess').
name(m_get_config_180, simple_name, test_base_1_expr2, name, range(test_base_1, 860, 9, 29, 29), 'getConfig').
name(m_override_cleans_stack_trace_102, simple_name, test_base_1_expr1, name, range(test_base_1, 872, 24, 29, 29), 'overrideCleansStackTrace').
name(t_configuration_access_39, simple_name, test_base_1_expr4, expression, range(test_base_1, 913, 19, 30, 30), 'ConfigurationAccess').
name(m_get_config_180, simple_name, test_base_1_expr4, name, range(test_base_1, 933, 9, 30, 30), 'getConfig').
name(m_override_default_answer_101, simple_name, test_base_1_expr3, name, range(test_base_1, 945, 21, 30, 30), 'overrideDefaultAnswer').
name(m_validate_95, simple_name, test_base_1_expr5, name, range(test_base_1, 1044, 8, 35, 35), 'validate').
name(t_mockito_annotations_40, simple_name, test_base_1_expr7, expression, range(test_base_1, 1064, 18, 36, 36), 'MockitoAnnotations').
name(m_init_mocks_86, simple_name, test_base_1_expr7, name, range(test_base_1, 1083, 9, 36, 36), 'initMocks').
%configuration_access_1 - org.mockito.internal.configuration.ConfigurationAccess
name(m_get_it_181, simple_name, configuration_access_1_expr2, name, range(configuration_access_1, 385, 5, 12, 12), 'getIt').
%thread_safe_mocking_progress_1 - org.mockito.internal.progress.ThreadSafeMockingProgress
name(t_thread_safe_mocking_progress_19, simple_name, thread_safe_mocking_progress_1_code2, name, range(thread_safe_mocking_progress_1, 341, 25, 11, 11), 'ThreadSafeMockingProgress').
name(f_mocking_progress_243, simple_name, thread_safe_mocking_progress_1_code11, name, range(thread_safe_mocking_progress_1, 449, 15, 13, 13), 'mockingProgress').
name(f_mocking_progress_243, simple_name, thread_safe_mocking_progress_1_expr3, expression, range(thread_safe_mocking_progress_1, 560, 15, 16, 16), 'mockingProgress').
name(m_get_184, simple_name, thread_safe_mocking_progress_1_expr3, name, range(thread_safe_mocking_progress_1, 576, 3, 16, 16), 'get').
name(f_mocking_progress_243, simple_name, thread_safe_mocking_progress_1_expr4, expression, range(thread_safe_mocking_progress_1, 605, 15, 17, 17), 'mockingProgress').
name(m_set_185, simple_name, thread_safe_mocking_progress_1_expr4, name, range(thread_safe_mocking_progress_1, 621, 3, 17, 17), 'set').
name(f_mocking_progress_243, simple_name, thread_safe_mocking_progress_1_expr6, expression, range(thread_safe_mocking_progress_1, 678, 15, 19, 19), 'mockingProgress').
name(m_get_184, simple_name, thread_safe_mocking_progress_1_expr6, name, range(thread_safe_mocking_progress_1, 694, 3, 19, 19), 'get').
name(m_thread_safely_277, simple_name, thread_safe_mocking_progress_1_expr8, name, range(thread_safe_mocking_progress_1, 1337, 12, 43, 43), 'threadSafely').
name(m_validate_state_163, simple_name, thread_safe_mocking_progress_1_expr7, name, range(thread_safe_mocking_progress_1, 1352, 13, 43, 43), 'validateState').
name(m_thread_safely_277, simple_name, thread_safe_mocking_progress_1_expr10, name, range(thread_safe_mocking_progress_1, 1694, 12, 59, 59), 'threadSafely').
name(m_reset_ongoing_stubbing_164, simple_name, thread_safe_mocking_progress_1_expr9, name, range(thread_safe_mocking_progress_1, 1709, 20, 59, 59), 'resetOngoingStubbing').
%returns_mocks_1 - org.mockito.internal.stubbing.defaultanswers.ReturnsMocks
name(t_returns_mocks_24, simple_name, returns_mocks_1_code2, name, range(returns_mocks_1, 443, 12, 13, 13), 'ReturnsMocks').
name(f_mockito_core_266, simple_name, returns_mocks_1_code10, name, range(returns_mocks_1, 515, 11, 15, 15), 'mockitoCore').
name(f_delegate_267, simple_name, returns_mocks_1_code17, name, range(returns_mocks_1, 576, 8, 16, 16), 'delegate').
%globally_configured_answer_1 - org.mockito.internal.stubbing.defaultanswers.GloballyConfiguredAnswer
name(t_globally_configured_answer_22, simple_name, globally_configured_answer_1_code2, name, range(globally_configured_answer_1, 503, 24, 17, 17), 'GloballyConfiguredAnswer').
%argument_matcher_storage_impl_1 - org.mockito.internal.progress.ArgumentMatcherStorageImpl
name(t_argument_matcher_storage_impl_16, simple_name, argument_matcher_storage_impl_1_code2, name, range(argument_matcher_storage_impl_1, 659, 26, 22, 22), 'ArgumentMatcherStorageImpl').
name(f_matcher_stack_229, simple_name, argument_matcher_storage_impl_1_code10, name, range(argument_matcher_storage_impl_1, 763, 12, 24, 24), 'matcherStack').
name(f_matcher_stack_229, simple_name, argument_matcher_storage_impl_1_expr3, expression, range(argument_matcher_storage_impl_1, 3562, 12, 100, 100), 'matcherStack').
name(m_is_empty_260, simple_name, argument_matcher_storage_impl_1_expr3, name, range(argument_matcher_storage_impl_1, 3575, 7, 100, 100), 'isEmpty').
%equals_1 - org.mockito.internal.matchers.Equals
name(m_equals_237, simple_name, equals_1_code3, name, range(equals_1, 406, 6, 15, 15), 'Equals').
name(p_wanted_220, simple_name, equals_1_code5, name, range(equals_1, 420, 6, 15, 15), 'wanted').
name(f_wanted_221, simple_name, equals_1_expr2, name, range(equals_1, 443, 6, 16, 16), 'wanted').
name(p_wanted_220, simple_name, equals_1_expr1, right_hand_side, range(equals_1, 452, 6, 16, 16), 'wanted').
name(f_wanted_221, simple_name, equals_1_expr5, name, range(equals_1, 528, 6, 20, 20), 'wanted').
name(f_wanted_221, simple_name, equals_1_expr7, expression, range(equals_1, 606, 6, 23, 23), 'wanted').
name(m_equals_239, simple_name, equals_1_expr7, name, range(equals_1, 613, 6, 23, 23), 'equals').
name(p_actual_222, simple_name, equals_1_expr7, (arguments, 0), range(equals_1, 620, 6, 23, 23), 'actual').
name(p_description_223, simple_name, equals_1_expr8, expression, range(equals_1, 698, 11, 27, 27), 'description').
name(m_append_text_241, simple_name, equals_1_expr8, name, range(equals_1, 710, 10, 27, 27), 'appendText').
name(m_describe_242, simple_name, equals_1_expr9, name, range(equals_1, 721, 8, 27, 27), 'describe').
name(f_wanted_221, simple_name, equals_1_expr9, (arguments, 0), range(equals_1, 730, 6, 27, 27), 'wanted').
name(v_text_225, simple_name, equals_1_code11, name, range(equals_1, 806, 4, 31, 31), 'text').
name(m_quoting_243, simple_name, equals_1_expr10, name, range(equals_1, 813, 7, 31, 31), 'quoting').
name(p_object_224, simple_name, equals_1_expr11, left_operand, range(equals_1, 836, 6, 32, 32), 'object').
name(v_text_225, simple_name, equals_1_expr12, left_hand_side, range(equals_1, 909, 4, 35, 35), 'text').
name(p_object_224, simple_name, equals_1_expr13, expression, range(equals_1, 915, 6, 35, 35), 'object').
name(m_to_string_244, simple_name, equals_1_expr13, name, range(equals_1, 922, 8, 35, 35), 'toString').
name(v_text_225, simple_name, equals_1_expr14, left_hand_side, range(equals_1, 952, 4, 37, 37), 'text').
name(m_quoting_243, simple_name, equals_1_expr15, name, range(equals_1, 959, 7, 37, 37), 'quoting').
name(v_text_225, simple_name, equals_1_stmt9, expression, range(equals_1, 985, 4, 38, 38), 'text').
name(f_wanted_221, simple_name, equals_1_expr16, left_operand, range(equals_1, 1041, 6, 42, 42), 'wanted').
name(f_wanted_221, simple_name, equals_1_expr17, left_operand, range(equals_1, 1113, 6, 44, 44), 'wanted').
%mockito_configuration_1 - org.mockito.configuration.MockitoConfiguration
name(t_mockito_configuration_5, simple_name, mockito_configuration_1_code2, name, range(mockito_configuration_1, 437, 20, 15, 15), 'MockitoConfiguration').
name(f_overridden_default_answer_75, simple_name, mockito_configuration_1_code11, name, range(mockito_configuration_1, 559, 23, 17, 17), 'overriddenDefaultAnswer').
name(f_overridden_default_answer_75, simple_name, mockito_configuration_1_expr2, name, range(mockito_configuration_1, 782, 23, 22, 22), 'overriddenDefaultAnswer').
name(p_default_answer_76, simple_name, mockito_configuration_1_expr1, right_hand_side, range(mockito_configuration_1, 808, 13, 22, 22), 'defaultAnswer').
name(f_cleans_stack_trace_78, simple_name, mockito_configuration_1_expr5, name, range(mockito_configuration_1, 981, 16, 27, 27), 'cleansStackTrace').
name(p_cleans_stack_trace_77, simple_name, mockito_configuration_1_expr4, right_hand_side, range(mockito_configuration_1, 1000, 16, 27, 27), 'cleansStackTrace').
%mock_settings_impl_1 - org.mockito.internal.creation.MockSettingsImpl
name(t_mock_settings_impl_11, simple_name, mock_settings_impl_1_code2, name, range(mock_settings_impl_1, 293, 16, 11, 11), 'MockSettingsImpl').
name(f_name_178, simple_name, mock_settings_impl_1_stmt1, expression, range(mock_settings_impl_1, 1155, 4, 35, 35), 'name').
name(f_extra_interfaces_179, simple_name, mock_settings_impl_1_stmt2, expression, range(mock_settings_impl_1, 1232, 15, 39, 39), 'extraInterfaces').
name(f_spied_instance_180, simple_name, mock_settings_impl_1_stmt3, expression, range(mock_settings_impl_1, 1314, 13, 43, 43), 'spiedInstance').
name(f_default_answer_184, simple_name, mock_settings_impl_1_expr2, name, range(mock_settings_impl_1, 1693, 13, 58, 58), 'defaultAnswer').
name(p_default_answer_183, simple_name, mock_settings_impl_1_expr1, right_hand_side, range(mock_settings_impl_1, 1709, 13, 58, 58), 'defaultAnswer').
%argument_matching_tool_1 - org.mockito.internal.verification.argumentmatching.ArgumentMatchingTool
name(t_argument_matching_tool_32, simple_name, argument_matching_tool_1_code2, name, range(argument_matching_tool_1, 428, 20, 15, 15), 'ArgumentMatchingTool').
name(p_matchers_310, simple_name, argument_matching_tool_1_expr2, expression, range(argument_matching_tool_1, 728, 8, 21, 21), 'matchers').
name(m_size_342, simple_name, argument_matching_tool_1_expr2, name, range(argument_matching_tool_1, 737, 4, 21, 21), 'size').
name(q_length_2, qualified_name, argument_matching_tool_1_expr1, right_operand, range(argument_matching_tool_1, 747, 16, 21, 21), 'arguments.length').
name(p_arguments_311, simple_name, q_length_2, qualifier, range(argument_matching_tool_1, 747, 9, 21, 21), 'arguments').
name(v_suspicious_312, simple_name, argument_matching_tool_1_code8, name, range(argument_matching_tool_1, 847, 10, 25, 25), 'suspicious').
name(v_i_313, simple_name, argument_matching_tool_1_code13, name, range(argument_matching_tool_1, 900, 1, 26, 26), 'i').
name(v_m_314, simple_name, argument_matching_tool_1_code14, name, range(argument_matching_tool_1, 929, 1, 27, 27), 'm').
name(p_matchers_310, simple_name, argument_matching_tool_1_stmt4, expression, range(argument_matching_tool_1, 933, 8, 27, 27), 'matchers').
name(v_m_314, simple_name, argument_matching_tool_1_expr5, left_operand, range(argument_matching_tool_1, 962, 1, 28, 28), 'm').
name(p_m_315, simple_name, argument_matching_tool_1_expr6, expression, range(argument_matching_tool_1, 1443, 1, 41, 41), 'm').
name(m_matches_344, simple_name, argument_matching_tool_1_expr6, name, range(argument_matching_tool_1, 1445, 7, 41, 41), 'matches').
name(p_arg_316, simple_name, argument_matching_tool_1_expr6, (arguments, 0), range(argument_matching_tool_1, 1453, 3, 41, 41), 'arg').
name(t_string_description_33, simple_name, argument_matching_tool_1_expr9, expression, range(argument_matching_tool_1, 1616, 17, 48, 48), 'StringDescription').
name(m_to_string_347, simple_name, argument_matching_tool_1_expr9, name, range(argument_matching_tool_1, 1634, 8, 48, 48), 'toString').
name(p_m_317, simple_name, argument_matching_tool_1_expr9, (arguments, 0), range(argument_matching_tool_1, 1643, 1, 48, 48), 'm').
name(m_equals_346, simple_name, argument_matching_tool_1_expr7, name, range(argument_matching_tool_1, 1646, 6, 48, 48), 'equals').
name(p_arg_318, simple_name, argument_matching_tool_1_expr8, expression, range(argument_matching_tool_1, 1653, 3, 48, 48), 'arg').
name(m_to_string_244, simple_name, argument_matching_tool_1_expr8, name, range(argument_matching_tool_1, 1657, 8, 48, 48), 'toString').
%default_mockito_configuration_1 - org.mockito.configuration.DefaultMockitoConfiguration
name(t_default_mockito_configuration_4, simple_name, default_mockito_configuration_1_code2, name, range(default_mockito_configuration_1, 717, 27, 20, 20), 'DefaultMockitoConfiguration').
%mock_handler_1 - org.mockito.internal.MockHandler
name(m_mock_handler_150, simple_name, mock_handler_1_code3, name, range(mock_handler_1, 1777, 11, 44, 44), 'MockHandler').
name(p_mock_name_129, simple_name, mock_handler_1_code5, name, range(mock_handler_1, 1798, 8, 44, 44), 'mockName').
name(p_mocking_progress_130, simple_name, mock_handler_1_code7, name, range(mock_handler_1, 1824, 15, 44, 44), 'mockingProgress').
name(p_matchers_binder_131, simple_name, mock_handler_1_code9, name, range(mock_handler_1, 1856, 14, 44, 44), 'matchersBinder').
name(p_mock_settings_132, simple_name, mock_handler_1_code11, name, range(mock_handler_1, 1889, 12, 44, 44), 'mockSettings').
name(f_mock_name_133, simple_name, mock_handler_1_expr2, name, range(mock_handler_1, 1919, 8, 45, 45), 'mockName').
name(p_mock_name_129, simple_name, mock_handler_1_expr1, right_hand_side, range(mock_handler_1, 1930, 8, 45, 45), 'mockName').
name(f_mocking_progress_134, simple_name, mock_handler_1_expr5, name, range(mock_handler_1, 1954, 15, 46, 46), 'mockingProgress').
name(p_mocking_progress_130, simple_name, mock_handler_1_expr4, right_hand_side, range(mock_handler_1, 1972, 15, 46, 46), 'mockingProgress').
name(f_matchers_binder_135, simple_name, mock_handler_1_expr8, name, range(mock_handler_1, 2003, 14, 47, 47), 'matchersBinder').
name(p_matchers_binder_131, simple_name, mock_handler_1_expr7, right_hand_side, range(mock_handler_1, 2020, 14, 47, 47), 'matchersBinder').
name(f_mock_settings_136, simple_name, mock_handler_1_expr11, name, range(mock_handler_1, 2050, 12, 48, 48), 'mockSettings').
name(p_mock_settings_132, simple_name, mock_handler_1_expr10, right_hand_side, range(mock_handler_1, 2065, 12, 48, 48), 'mockSettings').
name(f_mockito_stubber_137, simple_name, mock_handler_1_expr14, name, range(mock_handler_1, 2093, 14, 49, 49), 'mockitoStubber').
name(p_mocking_progress_130, simple_name, mock_handler_1_expr15, (arguments, 0), range(mock_handler_1, 2129, 15, 49, 49), 'mockingProgress').
name(f_registered_invocations_138, simple_name, mock_handler_1_expr18, name, range(mock_handler_1, 2161, 21, 50, 50), 'registeredInvocations').
%debugging_info_1 - org.mockito.internal.debugging.DebuggingInfo
name(t_debugging_info_14, simple_name, debugging_info_1_code2, name, range(debugging_info_1, 426, 13, 15, 15), 'DebuggingInfo').
name(f_unused_stubs_210, simple_name, debugging_info_1_code10, name, range(debugging_info_1, 480, 11, 17, 17), 'unusedStubs').
name(f_unstubbed_invocations_211, simple_name, debugging_info_1_code20, name, range(debugging_info_1, 567, 20, 18, 18), 'unstubbedInvocations').
%class_path_loader_1 - org.mockito.internal.configuration.ClassPathLoader
name(t_class_path_loader_8, simple_name, class_path_loader_1_code2, name, range(class_path_loader_1, 314, 15, 10, 10), 'ClassPathLoader').
name(v_config_class_161, simple_name, class_path_loader_1_code6, name, range(class_path_loader_1, 572, 11, 18, 18), 'configClass').
name(v_config_class_161, simple_name, class_path_loader_1_expr1, left_hand_side, range(class_path_loader_1, 620, 11, 20, 20), 'configClass').
name(t_class_9, simple_name, class_path_loader_1_expr3, expression, range(class_path_loader_1, 642, 5, 20, 20), 'Class').
name(m_for_name_178, simple_name, class_path_loader_1_expr3, name, range(class_path_loader_1, 648, 7, 20, 20), 'forName').
name(v_config_class_161, simple_name, class_path_loader_1_expr5, expression, range(class_path_loader_1, 941, 11, 27, 27), 'configClass').
name(m_new_instance_179, simple_name, class_path_loader_1_expr5, name, range(class_path_loader_1, 953, 11, 27, 27), 'newInstance').
%returns_smart_nulls_1 - org.mockito.internal.stubbing.defaultanswers.ReturnsSmartNulls
name(t_returns_smart_nulls_26, simple_name, returns_smart_nulls_1_code2, name, range(returns_smart_nulls_1, 1519, 17, 37, 37), 'ReturnsSmartNulls').
name(f_delegate_278, simple_name, returns_smart_nulls_1_code13, name, range(returns_smart_nulls_1, 2334, 8, 57, 57), 'delegate').
%mockito_naming_policy_1 - org.mockito.internal.creation.cglib.MockitoNamingPolicy
name(t_mockito_naming_policy_12, simple_name, mockito_naming_policy_1_code2, name, range(mockito_naming_policy_1, 239, 19, 9, 9), 'MockitoNamingPolicy').
name(f_instance_185, simple_name, mockito_naming_policy_1_code10, name, range(mockito_naming_policy_1, 340, 8, 11, 11), 'INSTANCE').
%mock_name_1 - org.mockito.internal.util.MockName
name(m_mock_name_318, simple_name, mock_name_1_code3, name, range(mock_name_1, 310, 8, 13, 13), 'MockName').
name(p_mock_name_283, simple_name, mock_name_1_code5, name, range(mock_name_1, 326, 8, 13, 13), 'mockName').
name(p_class_to_mock_284, simple_name, mock_name_1_code7, name, range(mock_name_1, 342, 11, 13, 13), 'classToMock').
name(p_mock_name_283, simple_name, mock_name_1_expr1, left_operand, range(mock_name_1, 370, 8, 14, 14), 'mockName').
name(f_mock_name_285, simple_name, mock_name_1_expr3, name, range(mock_name_1, 408, 8, 15, 15), 'mockName').
name(m_to_instance_name_319, simple_name, mock_name_1_expr4, name, range(mock_name_1, 419, 14, 15, 15), 'toInstanceName').
name(p_class_to_mock_284, simple_name, mock_name_1_expr4, (arguments, 0), range(mock_name_1, 434, 11, 15, 15), 'classToMock').
name(f_surrogate_286, simple_name, mock_name_1_expr7, name, range(mock_name_1, 466, 9, 16, 16), 'surrogate').
name(v_class_name_288, simple_name, mock_name_1_code11, name, range(mock_name_1, 637, 9, 23, 23), 'className').
name(p_clazz_287, simple_name, mock_name_1_expr9, expression, range(mock_name_1, 649, 5, 23, 23), 'clazz').
name(m_get_simple_name_320, simple_name, mock_name_1_expr9, name, range(mock_name_1, 655, 13, 23, 23), 'getSimpleName').
name(v_class_name_288, simple_name, mock_name_1_expr12, expression, range(mock_name_1, 723, 9, 25, 25), 'className').
name(m_substring_322, simple_name, mock_name_1_expr12, name, range(mock_name_1, 733, 9, 25, 25), 'substring').
name(m_to_lower_case_321, simple_name, mock_name_1_expr11, name, range(mock_name_1, 749, 11, 25, 25), 'toLowerCase').
name(v_class_name_288, simple_name, mock_name_1_expr13, expression, range(mock_name_1, 765, 9, 25, 25), 'className').
name(m_substring_323, simple_name, mock_name_1_expr13, name, range(mock_name_1, 775, 9, 25, 25), 'substring').
%returns_more_empty_values_1 - org.mockito.internal.stubbing.defaultanswers.ReturnsMoreEmptyValues
name(t_returns_more_empty_values_25, simple_name, returns_more_empty_values_1_code2, name, range(returns_more_empty_values_1, 1237, 22, 43, 43), 'ReturnsMoreEmptyValues').
name(f_delegate_270, simple_name, returns_more_empty_values_1_code12, name, range(returns_more_empty_values_1, 1320, 8, 45, 45), 'delegate').
%mockito_annotations_1 - org.mockito.MockitoAnnotations
name(p_test_class_66, simple_name, mockito_annotations_1_expr1, left_operand, range(mockito_annotations_1, 2990, 9, 81, 81), 'testClass').
name(v_clazz_67, simple_name, mockito_annotations_1_code7, name, range(mockito_annotations_1, 3207, 5, 85, 85), 'clazz').
name(p_test_class_66, simple_name, mockito_annotations_1_expr2, expression, range(mockito_annotations_1, 3215, 9, 85, 85), 'testClass').
name(m_get_class_87, simple_name, mockito_annotations_1_expr2, name, range(mockito_annotations_1, 3225, 8, 85, 85), 'getClass').
name(v_clazz_67, simple_name, mockito_annotations_1_expr3, left_operand, range(mockito_annotations_1, 3252, 5, 86, 86), 'clazz').
name(m_scan_88, simple_name, mockito_annotations_1_expr5, name, range(mockito_annotations_1, 3289, 4, 87, 87), 'scan').
name(p_test_class_66, simple_name, mockito_annotations_1_expr5, (arguments, 0), range(mockito_annotations_1, 3294, 9, 87, 87), 'testClass').
name(v_clazz_67, simple_name, mockito_annotations_1_expr5, (arguments, 1), range(mockito_annotations_1, 3305, 5, 87, 87), 'clazz').
name(v_clazz_67, simple_name, mockito_annotations_1_expr6, left_hand_side, range(mockito_annotations_1, 3325, 5, 88, 88), 'clazz').
name(v_clazz_67, simple_name, mockito_annotations_1_expr7, expression, range(mockito_annotations_1, 3333, 5, 88, 88), 'clazz').
name(m_get_superclass_89, simple_name, mockito_annotations_1_expr7, name, range(mockito_annotations_1, 3339, 13, 88, 88), 'getSuperclass').
name(v_annotation_engine_70, simple_name, mockito_annotations_1_code11, name, range(mockito_annotations_1, 3463, 16, 93, 93), 'annotationEngine').
name(m_get_annotation_engine_90, simple_name, mockito_annotations_1_expr8, name, range(mockito_annotations_1, 3508, 19, 93, 93), 'getAnnotationEngine').
name(v_fields_71, simple_name, mockito_annotations_1_code16, name, range(mockito_annotations_1, 3547, 6, 94, 94), 'fields').
name(p_clazz_69, simple_name, mockito_annotations_1_expr10, expression, range(mockito_annotations_1, 3556, 5, 94, 94), 'clazz').
name(m_get_declared_fields_92, simple_name, mockito_annotations_1_expr10, name, range(mockito_annotations_1, 3562, 17, 94, 94), 'getDeclaredFields').
name(v_field_72, simple_name, mockito_annotations_1_code17, name, range(mockito_annotations_1, 3602, 5, 95, 95), 'field').
name(v_fields_71, simple_name, mockito_annotations_1_stmt8, expression, range(mockito_annotations_1, 3610, 6, 95, 95), 'fields').
name(v_annotation_73, simple_name, mockito_annotations_1_code19, name, range(mockito_annotations_1, 3647, 10, 96, 96), 'annotation').
name(v_field_72, simple_name, mockito_annotations_1_expr11, expression, range(mockito_annotations_1, 3660, 5, 96, 96), 'field').
name(m_get_annotations_93, simple_name, mockito_annotations_1_expr11, name, range(mockito_annotations_1, 3666, 14, 96, 96), 'getAnnotations').
%mockito_core_1 - org.mockito.internal.MockitoCore
name(t_mockito_core_7, simple_name, mockito_core_1_code2, name, range(mockito_core_1, 1148, 11, 30, 30), 'MockitoCore').
name(f_reporter_146, simple_name, mockito_core_1_code8, name, range(mockito_core_1, 1192, 8, 32, 32), 'reporter').
name(f_mock_util_147, simple_name, mockito_core_1_code14, name, range(mockito_core_1, 1247, 8, 33, 33), 'mockUtil').
name(f_mocking_progress_148, simple_name, mockito_core_1_code20, name, range(mockito_core_1, 1309, 15, 34, 34), 'mockingProgress').
name(f_mocking_progress_148, simple_name, mockito_core_1_expr4, expression, range(mockito_core_1, 1449, 15, 37, 37), 'mockingProgress').
name(m_validate_state_163, simple_name, mockito_core_1_expr4, name, range(mockito_core_1, 1465, 13, 37, 37), 'validateState').
name(f_mocking_progress_148, simple_name, mockito_core_1_expr5, expression, range(mockito_core_1, 1491, 15, 38, 38), 'mockingProgress').
name(m_reset_ongoing_stubbing_164, simple_name, mockito_core_1_expr5, name, range(mockito_core_1, 1507, 20, 38, 38), 'resetOngoingStubbing').
%actual_invocation_has_null_argument_npebug_test_1 - org.mockitousage.bugs.ActualInvocationHasNullArgumentNPEBugTest
name(t_actual_invocation_has_null_argument_npebug_test_36, simple_name, actual_invocation_has_null_argument_npebug_test_1_code2, name, range(actual_invocation_has_null_argument_npebug_test_1, 298, 41, 13, 13), 'ActualInvocationHasNullArgumentNPEBugTest').
name(t_fun_37, simple_name, actual_invocation_has_null_argument_npebug_test_1_code5, name, range(actual_invocation_has_null_argument_npebug_test_1, 385, 3, 15, 15), 'Fun').
%mockito_1 - org.mockito.Mockito
name(f_mockito_core_35, simple_name, mockito_1_code8, name, range(mockito_1, 24203, 12, 570, 570), 'MOCKITO_CORE').
name(f_returns_defaults_36, simple_name, mockito_1_code17, name, range(mockito_1, 24745, 16, 581, 581), 'RETURNS_DEFAULTS').
name(f_returns_smart_nulls_37, simple_name, mockito_1_code26, name, range(mockito_1, 26366, 19, 613, 613), 'RETURNS_SMART_NULLS').
name(f_returns_mocks_38, simple_name, mockito_1_code35, name, range(mockito_1, 26988, 13, 626, 626), 'RETURNS_MOCKS').
name(f_calls_real_methods_39, simple_name, mockito_1_code44, name, range(mockito_1, 28690, 18, 660, 660), 'CALLS_REAL_METHODS').
name(m_default_answer_84, simple_name, mockito_1_expr6, name, range(mockito_1, 62780, 13, 1480, 1480), 'defaultAnswer').
name(f_returns_defaults_36, simple_name, mockito_1_expr6, (arguments, 0), range(mockito_1, 62794, 16, 1480, 1480), 'RETURNS_DEFAULTS').
%argument_matching_tool_test_1 - org.mockito.internal.verification.argumentmatching.ArgumentMatchingToolTest
name(t_argument_matching_tool_test_34, simple_name, argument_matching_tool_test_1_code2, name, range(argument_matching_tool_test_1, 488, 24, 18, 18), 'ArgumentMatchingToolTest').
name(f_tool_319, simple_name, argument_matching_tool_test_1_code8, name, range(argument_matching_tool_test_1, 568, 4, 20, 20), 'tool').
name(v_suspicious_321, simple_name, argument_matching_tool_test_1_code14, name, range(argument_matching_tool_test_1, 2731, 10, 82, 82), 'suspicious').
name(f_tool_319, simple_name, argument_matching_tool_test_1_expr2, expression, range(argument_matching_tool_test_1, 2744, 4, 82, 82), 'tool').
name(m_get_suspiciously_not_matching_args_indexes_341, simple_name, argument_matching_tool_test_1_expr2, name, range(argument_matching_tool_test_1, 2749, 37, 82, 82), 'getSuspiciouslyNotMatchingArgsIndexes').
name(t_arrays_35, simple_name, argument_matching_tool_test_1_expr5, expression, range(argument_matching_tool_test_1, 2794, 6, 82, 82), 'Arrays').
name(m_as_list_355, simple_name, argument_matching_tool_test_1_expr5, name, range(argument_matching_tool_test_1, 2801, 6, 82, 82), 'asList').
%returns_empty_values_1 - org.mockito.internal.stubbing.defaultanswers.ReturnsEmptyValues
name(t_returns_empty_values_23, simple_name, returns_empty_values_1_code2, name, range(returns_empty_values_1, 1453, 18, 50, 50), 'ReturnsEmptyValues').
%matchers_1 - org.mockito.Matchers
name(f_mocking_progress_3, simple_name, matchers_1_code7, name, range(matchers_1, 4136, 15, 104, 104), 'mockingProgress').
%calls_real_methods_1 - org.mockito.internal.stubbing.answers.CallsRealMethods
name(t_calls_real_methods_21, simple_name, calls_real_methods_1_code2, name, range(calls_real_methods_1, 1439, 16, 30, 30), 'CallsRealMethods').
%reporter_1 - org.mockito.exceptions.Reporter
name(t_reporter_6, simple_name, reporter_1_code2, name, range(reporter_1, 1970, 8, 43, 43), 'Reporter').
%mockito_stubber_1 - org.mockito.internal.stubbing.MockitoStubber
name(t_suppress_warnings_20, simple_name, mockito_stubber_1_expr1, type_name, range(mockito_stubber_1, 521, 16, 17, 17), 'SuppressWarnings').
name(f_stubbed_247, simple_name, mockito_stubber_1_code9, name, range(mockito_stubber_1, 640, 7, 20, 20), 'stubbed').
name(f_answers_for_stubbing_248, simple_name, mockito_stubber_1_code19, name, range(mockito_stubber_1, 778, 18, 22, 22), 'answersForStubbing').
name(m_mockito_stubber_151, simple_name, mockito_stubber_1_code23, name, range(mockito_stubber_1, 894, 14, 26, 26), 'MockitoStubber').
name(p_mocking_progress_249, simple_name, mockito_stubber_1_code25, name, range(mockito_stubber_1, 925, 15, 26, 26), 'mockingProgress').
name(f_mocking_progress_250, simple_name, mockito_stubber_1_expr5, name, range(mockito_stubber_1, 958, 15, 27, 27), 'mockingProgress').
name(p_mocking_progress_249, simple_name, mockito_stubber_1_expr4, right_hand_side, range(mockito_stubber_1, 976, 15, 27, 27), 'mockingProgress').
%argument_matcher_1 - org.mockito.ArgumentMatcher
name(t_argument_matcher_1, simple_name, argument_matcher_1_code2, name, range(argument_matcher_1, 2269, 15, 60, 60), 'ArgumentMatcher').
name(t_t_2, simple_name, argument_matcher_1_code5, name, range(argument_matcher_1, 2285, 1, 60, 60), 'T').
%global_configuration_1 - org.mockito.internal.configuration.GlobalConfiguration
name(f_global_configuration_164, simple_name, global_configuration_1_code9, name, range(global_configuration_1, 733, 19, 19, 19), 'globalConfiguration').
name(f_global_configuration_164, simple_name, global_configuration_1_expr2, expression, range(global_configuration_1, 881, 19, 23, 23), 'globalConfiguration').
name(m_get_184, simple_name, global_configuration_1_expr2, name, range(global_configuration_1, 901, 3, 23, 23), 'get').
name(m_global_configuration_91, simple_name, global_configuration_1_code14, name, range(global_configuration_1, 933, 19, 26, 26), 'GlobalConfiguration').
name(f_global_configuration_164, simple_name, global_configuration_1_expr4, expression, range(global_configuration_1, 1050, 19, 28, 28), 'globalConfiguration').
name(m_get_184, simple_name, global_configuration_1_expr4, name, range(global_configuration_1, 1070, 3, 28, 28), 'get').
name(f_global_configuration_164, simple_name, global_configuration_1_expr5, expression, range(global_configuration_1, 1100, 19, 29, 29), 'globalConfiguration').
name(m_set_185, simple_name, global_configuration_1_expr5, name, range(global_configuration_1, 1120, 3, 29, 29), 'set').
name(m_create_config_186, simple_name, global_configuration_1_expr6, name, range(global_configuration_1, 1124, 12, 29, 29), 'createConfig').
name(v_default_configuration_165, simple_name, global_configuration_1_code18, name, range(global_configuration_1, 1286, 20, 35, 35), 'defaultConfiguration').
name(v_config_166, simple_name, global_configuration_1_code21, name, range(global_configuration_1, 1375, 6, 36, 36), 'config').
name(m_load_configuration_177, simple_name, global_configuration_1_expr8, name, range(global_configuration_1, 1406, 17, 36, 36), 'loadConfiguration').
name(v_config_166, simple_name, global_configuration_1_expr10, left_operand, range(global_configuration_1, 1440, 6, 37, 37), 'config').
name(v_config_166, simple_name, global_configuration_1_stmt7, expression, range(global_configuration_1, 1478, 6, 38, 38), 'config').
name(f_global_configuration_164, simple_name, global_configuration_1_expr13, expression, range(global_configuration_1, 1840, 19, 53, 53), 'globalConfiguration').
name(m_get_184, simple_name, global_configuration_1_expr13, name, range(global_configuration_1, 1860, 3, 53, 53), 'get').
name(m_get_annotation_engine_191, simple_name, global_configuration_1_expr12, name, range(global_configuration_1, 1866, 19, 53, 53), 'getAnnotationEngine').
%default_annotation_engine_1 - org.mockito.internal.configuration.DefaultAnnotationEngine
name(t_default_annotation_engine_10, simple_name, default_annotation_engine_1_code2, name, range(default_annotation_engine_1, 511, 23, 20, 20), 'DefaultAnnotationEngine').
%class_imposterizer_1 - org.mockito.internal.creation.jmock.ClassImposterizer
name(f_instance_186, simple_name, class_imposterizer_1_code8, name, range(class_imposterizer_1, 1037, 8, 30, 30), 'INSTANCE').
name(m_class_imposterizer_209, simple_name, class_imposterizer_1_code10, name, range(class_imposterizer_1, 1092, 17, 32, 32), 'ClassImposterizer').
name(f_objenesis_187, simple_name, class_imposterizer_1_code15, name, range(class_imposterizer_1, 1502, 9, 37, 37), 'objenesis').
name(f_naming_policy_that_allows_imposterisation_of_classes_in_signed_packages_188, simple_name, class_imposterizer_1_code22, name, range(class_imposterizer_1, 1579, 71, 39, 39), 'NAMING_POLICY_THAT_ALLOWS_IMPOSTERISATION_OF_CLASSES_IN_SIGNED_PACKAGES').
name(f_ignore_bridge_methods_193, simple_name, class_imposterizer_1_code30, name, range(class_imposterizer_1, 1944, 21, 46, 46), 'IGNORE_BRIDGE_METHODS').
name(p_type_195, simple_name, class_imposterizer_1_expr7, expression, range(class_imposterizer_1, 2176, 4, 53, 53), 'type').
name(m_is_primitive_216, simple_name, class_imposterizer_1_expr7, name, range(class_imposterizer_1, 2181, 11, 53, 53), 'isPrimitive').
name(t_modifier_13, simple_name, class_imposterizer_1_expr9, expression, range(class_imposterizer_1, 2199, 8, 53, 53), 'Modifier').
name(m_is_final_217, simple_name, class_imposterizer_1_expr9, name, range(class_imposterizer_1, 2208, 7, 53, 53), 'isFinal').
name(p_type_195, simple_name, class_imposterizer_1_expr10, expression, range(class_imposterizer_1, 2216, 4, 53, 53), 'type').
name(m_get_modifiers_218, simple_name, class_imposterizer_1_expr10, name, range(class_imposterizer_1, 2221, 12, 53, 53), 'getModifiers').
name(p_type_195, simple_name, class_imposterizer_1_expr12, expression, range(class_imposterizer_1, 2241, 4, 53, 53), 'type').
name(m_is_anonymous_class_219, simple_name, class_imposterizer_1_expr12, name, range(class_imposterizer_1, 2246, 16, 53, 53), 'isAnonymousClass').
name(m_set_constructors_accessible_221, simple_name, class_imposterizer_1_expr13, name, range(class_imposterizer_1, 2425, 25, 58, 58), 'setConstructorsAccessible').
name(p_mocked_type_197, simple_name, class_imposterizer_1_expr13, (arguments, 0), range(class_imposterizer_1, 2451, 10, 58, 58), 'mockedType').
name(m_set_constructors_accessible_221, simple_name, class_imposterizer_1_expr14, name, range(class_imposterizer_1, 2660, 25, 62, 62), 'setConstructorsAccessible').
name(p_mocked_type_197, simple_name, class_imposterizer_1_expr14, (arguments, 0), range(class_imposterizer_1, 2686, 10, 62, 62), 'mockedType').
name(v_constructor_201, simple_name, class_imposterizer_1_code36, name, range(class_imposterizer_1, 2846, 11, 67, 67), 'constructor').
name(p_mocked_type_199, simple_name, class_imposterizer_1_expr15, expression, range(class_imposterizer_1, 2860, 10, 67, 67), 'mockedType').
name(m_get_declared_constructors_222, simple_name, class_imposterizer_1_expr15, name, range(class_imposterizer_1, 2871, 23, 67, 67), 'getDeclaredConstructors').
name(p_mocked_type_202, simple_name, class_imposterizer_1_expr16, left_operand, range(class_imposterizer_1, 3078, 10, 73, 73), 'mockedType').
%state_master_1 - org.mockito.StateMaster
name(t_state_master_3, simple_name, state_master_1_code2, name, range(state_master_1, 220, 11, 9, 9), 'StateMaster').
name(f_mocking_progress_74, simple_name, state_master_1_code8, name, range(state_master_1, 283, 15, 11, 11), 'mockingProgress').
name(f_mocking_progress_74, simple_name, state_master_1_expr2, expression, range(state_master_1, 442, 15, 18, 18), 'mockingProgress').
name(m_validate_state_96, simple_name, state_master_1_expr2, name, range(state_master_1, 458, 13, 18, 18), 'validateState').
%mocking_progress_impl_1 - org.mockito.internal.progress.MockingProgressImpl
name(t_mocking_progress_impl_17, simple_name, mocking_progress_impl_1_code2, name, range(mocking_progress_impl_1, 572, 19, 16, 16), 'MockingProgressImpl').
name(f_reporter_234, simple_name, mocking_progress_impl_1_code9, name, range(mocking_progress_impl_1, 653, 8, 18, 18), 'reporter').
name(f_argument_matcher_storage_235, simple_name, mocking_progress_impl_1_code15, name, range(mocking_progress_impl_1, 721, 22, 19, 19), 'argumentMatcherStorage').
name(f_debugging_info_236, simple_name, mocking_progress_impl_1_code21, name, range(mocking_progress_impl_1, 817, 13, 21, 21), 'debuggingInfo').
name(f_stubbing_in_progress_237, simple_name, mocking_progress_impl_1_code26, name, range(mocking_progress_impl_1, 973, 18, 25, 25), 'stubbingInProgress').
name(f_i_ongoing_stubbing_240, simple_name, mocking_progress_impl_1_expr4, left_hand_side, range(mocking_progress_impl_1, 1636, 16, 47, 47), 'iOngoingStubbing').
name(t_global_configuration_18, simple_name, mocking_progress_impl_1_expr5, expression, range(mocking_progress_impl_1, 2293, 19, 68, 68), 'GlobalConfiguration').
name(m_validate_189, simple_name, mocking_progress_impl_1_expr5, name, range(mocking_progress_impl_1, 2313, 8, 68, 68), 'validate').
name(f_verification_mode_241, simple_name, mocking_progress_impl_1_expr6, left_operand, range(mocking_progress_impl_1, 2346, 16, 70, 70), 'verificationMode').
name(f_stubbing_in_progress_237, simple_name, mocking_progress_impl_1_expr7, left_operand, range(mocking_progress_impl_1, 2570, 18, 76, 76), 'stubbingInProgress').
name(m_get_argument_matcher_storage_272, simple_name, mocking_progress_impl_1_expr9, name, range(mocking_progress_impl_1, 2759, 25, 82, 82), 'getArgumentMatcherStorage').
name(m_validate_state_271, simple_name, mocking_progress_impl_1_expr8, name, range(mocking_progress_impl_1, 2787, 13, 82, 82), 'validateState').
name(f_argument_matcher_storage_235, simple_name, mocking_progress_impl_1_stmt6, expression, range(mocking_progress_impl_1, 3409, 22, 103, 103), 'argumentMatcherStorage').
%mock_util_1 - org.mockito.internal.util.MockUtil
name(m_mock_util_326, simple_name, mock_util_1_code3, name, range(mock_util_1, 839, 8, 23, 23), 'MockUtil').
name(p_creation_validator_289, simple_name, mock_util_1_code5, name, range(mock_util_1, 866, 17, 23, 23), 'creationValidator').
name(f_creation_validator_290, simple_name, mock_util_1_expr2, name, range(mock_util_1, 901, 17, 24, 24), 'creationValidator').
name(p_creation_validator_289, simple_name, mock_util_1_expr1, right_hand_side, range(mock_util_1, 921, 17, 24, 24), 'creationValidator').
name(f_creation_validator_290, simple_name, mock_util_1_expr6, expression, range(mock_util_1, 1142, 17, 32, 32), 'creationValidator').
name(m_validate_type_316, simple_name, mock_util_1_expr6, name, range(mock_util_1, 1160, 12, 32, 32), 'validateType').
name(p_class_to_mock_291, simple_name, mock_util_1_expr6, (arguments, 0), range(mock_util_1, 1173, 11, 32, 32), 'classToMock').
name(f_creation_validator_290, simple_name, mock_util_1_expr7, expression, range(mock_util_1, 1196, 17, 33, 33), 'creationValidator').
name(m_validate_extra_interfaces_317, simple_name, mock_util_1_expr7, name, range(mock_util_1, 1214, 23, 33, 33), 'validateExtraInterfaces').
name(p_class_to_mock_291, simple_name, mock_util_1_expr7, (arguments, 0), range(mock_util_1, 1238, 11, 33, 33), 'classToMock').
name(p_settings_293, simple_name, mock_util_1_expr8, expression, range(mock_util_1, 1251, 8, 33, 33), 'settings').
name(m_get_extra_interfaces_202, simple_name, mock_util_1_expr8, name, range(mock_util_1, 1260, 18, 33, 33), 'getExtraInterfaces').
name(v_mock_name_294, simple_name, mock_util_1_code11, name, range(mock_util_1, 1311, 8, 35, 35), 'mockName').
name(p_settings_293, simple_name, mock_util_1_expr10, expression, range(mock_util_1, 1335, 8, 35, 35), 'settings').
name(m_get_mock_name_201, simple_name, mock_util_1_expr10, name, range(mock_util_1, 1344, 11, 35, 35), 'getMockName').
name(p_class_to_mock_291, simple_name, mock_util_1_expr9, (arguments, 1), range(mock_util_1, 1359, 11, 35, 35), 'classToMock').
name(v_mock_handler_295, simple_name, mock_util_1_code16, name, range(mock_util_1, 1397, 11, 36, 36), 'mockHandler').
name(v_mock_name_294, simple_name, mock_util_1_expr11, (arguments, 0), range(mock_util_1, 1430, 8, 36, 36), 'mockName').
name(p_progress_292, simple_name, mock_util_1_expr11, (arguments, 1), range(mock_util_1, 1440, 8, 36, 36), 'progress').
name(p_settings_293, simple_name, mock_util_1_expr11, (arguments, 3), range(mock_util_1, 1472, 8, 36, 36), 'settings').
name(v_filter_296, simple_name, mock_util_1_code26, name, range(mock_util_1, 1532, 6, 37, 37), 'filter').
name(p_class_to_mock_291, simple_name, mock_util_1_expr13, (arguments, 0), range(mock_util_1, 1585, 11, 37, 37), 'classToMock').
name(v_mock_handler_295, simple_name, mock_util_1_expr13, (arguments, 1), range(mock_util_1, 1598, 11, 37, 37), 'mockHandler').
name(v_interfaces_297, simple_name, mock_util_1_code37, name, range(mock_util_1, 1632, 10, 38, 38), 'interfaces').
name(p_settings_293, simple_name, mock_util_1_expr14, expression, range(mock_util_1, 1645, 8, 38, 38), 'settings').
name(m_get_extra_interfaces_202, simple_name, mock_util_1_expr14, name, range(mock_util_1, 1654, 18, 38, 38), 'getExtraInterfaces').
name(v_ancillary_types_298, simple_name, mock_util_1_code43, name, range(mock_util_1, 1696, 14, 39, 39), 'ancillaryTypes').
name(v_interfaces_297, simple_name, mock_util_1_expr16, left_operand, range(mock_util_1, 1713, 10, 39, 39), 'interfaces').
name(v_interfaces_297, simple_name, mock_util_1_expr15, else_expression, range(mock_util_1, 1752, 10, 39, 39), 'interfaces').
name(v_spied_instance_299, simple_name, mock_util_1_code50, name, range(mock_util_1, 1780, 13, 40, 40), 'spiedInstance').
name(p_settings_293, simple_name, mock_util_1_expr18, expression, range(mock_util_1, 1796, 8, 40, 40), 'settings').
name(m_get_spied_instance_203, simple_name, mock_util_1_expr18, name, range(mock_util_1, 1805, 16, 40, 40), 'getSpiedInstance').
%registered_invocations_1 - org.mockito.internal.verification.RegisteredInvocations
name(t_registered_invocations_29, simple_name, registered_invocations_1_code2, name, range(registered_invocations_1, 406, 21, 16, 16), 'RegisteredInvocations').
name(f_invocations_307, simple_name, registered_invocations_1_code10, name, range(registered_invocations_1, 466, 11, 18, 18), 'invocations').
name(t_collections_30, simple_name, registered_invocations_1_expr1, expression, range(registered_invocations_1, 480, 11, 18, 18), 'Collections').
name(m_synchronized_list_336, simple_name, registered_invocations_1_expr1, name, range(registered_invocations_1, 492, 16, 18, 18), 'synchronizedList').
name(t_remove_to_string_31, simple_name, registered_invocations_1_code14, name, range(registered_invocations_1, 892, 14, 32, 32), 'RemoveToString').

%%% Literals
%method_interceptor_filter_1 - org.mockito.internal.creation.MethodInterceptorFilter
literal(method_interceptor_filter_1_literal1, string_literal, method_interceptor_filter_1_expr5, (arguments, 0), range(method_interceptor_filter_1, 839, 8, 27, 27), "equals").
literal(method_interceptor_filter_1_literal2, string_literal, method_interceptor_filter_1_expr10, (arguments, 0), range(method_interceptor_filter_1, 926, 10, 28, 28), "hashCode").
literal(method_interceptor_filter_1_literal3, null_literal, method_interceptor_filter_1_expr11, expression, range(method_interceptor_filter_1, 948, 4, 28, 28), null).
%creation_validator_1 - org.mockito.internal.util.CreationValidator
literal(creation_validator_1_literal1, null_literal, creation_validator_1_expr3, right_operand, range(creation_validator_1, 666, 4, 20, 20), null).
%matchers_binder_1 - org.mockito.internal.invocation.MatchersBinder
%test_base_1 - org.mockitoutil.TestBase
literal(test_base_1_literal1, boolean_literal, test_base_1_expr1, (arguments, 0), range(test_base_1, 897, 5, 29, 29), false).
literal(test_base_1_literal2, null_literal, test_base_1_expr3, (arguments, 0), range(test_base_1, 967, 4, 30, 30), null).
%configuration_access_1 - org.mockito.internal.configuration.ConfigurationAccess
%thread_safe_mocking_progress_1 - org.mockito.internal.progress.ThreadSafeMockingProgress
literal(thread_safe_mocking_progress_1_literal1, null_literal, thread_safe_mocking_progress_1_expr2, right_operand, range(thread_safe_mocking_progress_1, 585, 4, 16, 16), null).
%returns_mocks_1 - org.mockito.internal.stubbing.defaultanswers.ReturnsMocks
%globally_configured_answer_1 - org.mockito.internal.stubbing.defaultanswers.GloballyConfiguredAnswer
%argument_matcher_storage_impl_1 - org.mockito.internal.progress.ArgumentMatcherStorageImpl
%equals_1 - org.mockito.internal.matchers.Equals
literal(equals_1_literal1, null_literal, equals_1_expr4, right_operand, range(equals_1, 538, 4, 20, 20), null).
literal(equals_1_literal2, null_literal, equals_1_expr11, right_operand, range(equals_1, 846, 4, 32, 32), null).
literal(equals_1_literal3, string_literal, equals_1_stmt12, expression, range(equals_1, 1204, 2, 47, 47), "").
%mockito_configuration_1 - org.mockito.configuration.MockitoConfiguration
literal(mockito_configuration_1_literal1, null_literal, mockito_configuration_1_code11, initializer, range(mockito_configuration_1, 585, 4, 17, 17), null).
%mock_settings_impl_1 - org.mockito.internal.creation.MockSettingsImpl
%argument_matching_tool_1 - org.mockito.internal.verification.argumentmatching.ArgumentMatchingTool
literal(argument_matching_tool_1_literal1, number_literal, argument_matching_tool_1_code13, initializer, range(argument_matching_tool_1, 904, 1, 26, 26), 0).
%default_mockito_configuration_1 - org.mockito.configuration.DefaultMockitoConfiguration
%mock_handler_1 - org.mockito.internal.MockHandler
%debugging_info_1 - org.mockito.internal.debugging.DebuggingInfo
%class_path_loader_1 - org.mockito.internal.configuration.ClassPathLoader
literal(class_path_loader_1_literal1, null_literal, class_path_loader_1_code6, initializer, range(class_path_loader_1, 586, 4, 18, 18), null).
literal(class_path_loader_1_literal2, string_literal, class_path_loader_1_expr3, (arguments, 0), range(class_path_loader_1, 656, 48, 20, 20), "org.mockito.configuration.MockitoConfiguration").
%returns_smart_nulls_1 - org.mockito.internal.stubbing.defaultanswers.ReturnsSmartNulls
%mockito_naming_policy_1 - org.mockito.internal.creation.cglib.MockitoNamingPolicy
%mock_name_1 - org.mockito.internal.util.MockName
literal(mock_name_1_literal1, null_literal, mock_name_1_expr1, right_operand, range(mock_name_1, 382, 4, 14, 14), null).
literal(mock_name_1_literal2, boolean_literal, mock_name_1_expr6, right_hand_side, range(mock_name_1, 478, 4, 16, 16), true).
literal(mock_name_1_literal3, number_literal, mock_name_1_expr12, (arguments, 0), range(mock_name_1, 743, 1, 25, 25), 0).
literal(mock_name_1_literal4, number_literal, mock_name_1_expr12, (arguments, 1), range(mock_name_1, 746, 1, 25, 25), 1).
literal(mock_name_1_literal5, number_literal, mock_name_1_expr13, (arguments, 0), range(mock_name_1, 785, 1, 25, 25), 1).
%returns_more_empty_values_1 - org.mockito.internal.stubbing.defaultanswers.ReturnsMoreEmptyValues
%mockito_annotations_1 - org.mockito.MockitoAnnotations
literal(mockito_annotations_1_literal1, null_literal, mockito_annotations_1_expr1, right_operand, range(mockito_annotations_1, 3003, 4, 81, 81), null).
%mockito_core_1 - org.mockito.internal.MockitoCore
%actual_invocation_has_null_argument_npebug_test_1 - org.mockitousage.bugs.ActualInvocationHasNullArgumentNPEBugTest
%mockito_1 - org.mockito.Mockito
%argument_matching_tool_test_1 - org.mockito.internal.verification.argumentmatching.ArgumentMatchingToolTest
literal(argument_matching_tool_test_1_literal1, number_literal, argument_matching_tool_test_1_expr6, (arguments, 0), range(argument_matching_tool_test_1, 2819, 2, 82, 82), 20).
literal(argument_matching_tool_test_1_literal2, null_literal, argument_matching_tool_test_1_expr7, (expressions, 0), range(argument_matching_tool_test_1, 2839, 4, 82, 82), null).
%returns_empty_values_1 - org.mockito.internal.stubbing.defaultanswers.ReturnsEmptyValues
%matchers_1 - org.mockito.Matchers
%calls_real_methods_1 - org.mockito.internal.stubbing.answers.CallsRealMethods
%reporter_1 - org.mockito.exceptions.Reporter
%mockito_stubber_1 - org.mockito.internal.stubbing.MockitoStubber
literal(mockito_stubber_1_literal1, string_literal, mockito_stubber_1_expr1, value, range(mockito_stubber_1, 538, 11, 17, 17), "unchecked").
%argument_matcher_1 - org.mockito.ArgumentMatcher
%global_configuration_1 - org.mockito.internal.configuration.GlobalConfiguration
literal(global_configuration_1_literal1, null_literal, global_configuration_1_expr3, right_operand, range(global_configuration_1, 1079, 4, 28, 28), null).
literal(global_configuration_1_literal2, null_literal, global_configuration_1_expr10, right_operand, range(global_configuration_1, 1450, 4, 37, 37), null).
%default_annotation_engine_1 - org.mockito.internal.configuration.DefaultAnnotationEngine
%class_imposterizer_1 - org.mockito.internal.creation.jmock.ClassImposterizer
literal(class_imposterizer_1_literal1, boolean_literal, class_imposterizer_1_expr13, (arguments, 1), range(class_imposterizer_1, 2463, 4, 58, 58), true).
literal(class_imposterizer_1_literal2, boolean_literal, class_imposterizer_1_expr14, (arguments, 1), range(class_imposterizer_1, 2698, 5, 62, 62), false).
%state_master_1 - org.mockito.StateMaster
%mocking_progress_impl_1 - org.mockito.internal.progress.MockingProgressImpl
literal(mocking_progress_impl_1_literal1, null_literal, mocking_progress_impl_1_code26, initializer, range(mocking_progress_impl_1, 994, 4, 25, 25), null).
literal(mocking_progress_impl_1_literal2, null_literal, mocking_progress_impl_1_expr4, right_hand_side, range(mocking_progress_impl_1, 1655, 4, 47, 47), null).
literal(mocking_progress_impl_1_literal3, null_literal, mocking_progress_impl_1_expr6, right_operand, range(mocking_progress_impl_1, 2366, 4, 70, 70), null).
literal(mocking_progress_impl_1_literal4, null_literal, mocking_progress_impl_1_expr7, right_operand, range(mocking_progress_impl_1, 2592, 4, 76, 76), null).
%mock_util_1 - org.mockito.internal.util.MockUtil
literal(mock_util_1_literal1, null_literal, mock_util_1_expr16, right_operand, range(mock_util_1, 1727, 4, 39, 39), null).
literal(mock_util_1_literal2, number_literal, mock_util_1_expr17, (dimensions, 0), range(mock_util_1, 1747, 1, 39, 39), 0).
%registered_invocations_1 - org.mockito.internal.verification.RegisteredInvocations

%%% Other Code Entities
%method_interceptor_filter_1 - org.mockito.internal.creation.MethodInterceptorFilter
code(method_interceptor_filter_1_code1, compilation_unit, range(method_interceptor_filter_1, 0, 1909, 1, -1)).
code(method_interceptor_filter_1_code2, type_declaration, method_interceptor_filter_1_code1, (types, 0), range(method_interceptor_filter_1, 345, 1564, 13, -1)).
code(method_interceptor_filter_1_code3, method_declaration, method_interceptor_filter_1_code2, (body_declarations, 3), range(method_interceptor_filter_1, 594, 652, 21, 34)).
code(method_interceptor_filter_1_code4, modifier, method_interceptor_filter_1_code3, (modifiers, 1), range(method_interceptor_filter_1, 629, 6, 22, 22)).
code(method_interceptor_filter_1_code5, single_variable_declaration, method_interceptor_filter_1_code3, (parameters, 0), range(method_interceptor_filter_1, 660, 12, 22, 22)).
code(method_interceptor_filter_1_code6, simple_type, method_interceptor_filter_1_code5, type, range(method_interceptor_filter_1, 660, 5, 22, 22)).
code(method_interceptor_filter_1_code7, single_variable_declaration, method_interceptor_filter_1_code3, (parameters, 1), range(method_interceptor_filter_1, 674, 10, 22, 22)).
code(method_interceptor_filter_1_code8, simple_type, method_interceptor_filter_1_code7, type, range(method_interceptor_filter_1, 674, 1, 22, 22)).
code(method_interceptor_filter_1_code9, simple_type, method_interceptor_filter_1_expr3, type, range(method_interceptor_filter_1, 767, 6, 25, 25)).
code(method_interceptor_filter_1_code11, simple_type, method_interceptor_filter_1_code10, element_type, range(method_interceptor_filter_1, 853, 5, 27, 27)).
code(method_interceptor_filter_1_code10, array_type, method_interceptor_filter_1_expr6, type, range(method_interceptor_filter_1, 853, 7, 27, 27)).
code(method_interceptor_filter_1_code12, dimension, method_interceptor_filter_1_code10, (dimensions, 0), range(method_interceptor_filter_1, 858, 2, 27, 27)).
code(method_interceptor_filter_1_code13, simple_type, method_interceptor_filter_1_expr8, type, range(method_interceptor_filter_1, 863, 6, 27, 27)).
code(method_interceptor_filter_1_code15, simple_type, method_interceptor_filter_1_code14, element_type, range(method_interceptor_filter_1, 939, 5, 28, 28)).
code(method_interceptor_filter_1_code14, array_type, method_interceptor_filter_1_expr11, type, range(method_interceptor_filter_1, 939, 7, 28, 28)).
code(method_interceptor_filter_1_code16, dimension, method_interceptor_filter_1_code14, (dimensions, 0), range(method_interceptor_filter_1, 944, 2, 28, 28)).
code(method_interceptor_filter_1_code17, catch_clause, method_interceptor_filter_1_stmt1, (catch_clauses, 0), range(method_interceptor_filter_1, 965, 241, 29, 32)).
%creation_validator_1 - org.mockito.internal.util.CreationValidator
code(creation_validator_1_code1, compilation_unit, range(creation_validator_1, 0, 916, 1, -1)).
code(creation_validator_1_code2, type_declaration, creation_validator_1_code1, (types, 0), range(creation_validator_1, 268, 648, 10, -1)).
code(creation_validator_1_code3, modifier, creation_validator_1_code2, (modifiers, 1), range(creation_validator_1, 300, 6, 11, 11)).
code(creation_validator_1_code4, method_declaration, creation_validator_1_code2, (body_declarations, 0), range(creation_validator_1, 340, 198, 13, 17)).
code(creation_validator_1_code5, method_declaration, creation_validator_1_code2, (body_declarations, 1), range(creation_validator_1, 550, 363, 19, 29)).
%matchers_binder_1 - org.mockito.internal.invocation.MatchersBinder
code(matchers_binder_1_code1, compilation_unit, range(matchers_binder_1, 0, 1205, 1, -1)).
code(matchers_binder_1_code2, type_declaration, matchers_binder_1_code1, (types, 0), range(matchers_binder_1, 317, 888, 13, -1)).
code(matchers_binder_1_code3, modifier, matchers_binder_1_code2, (modifiers, 1), range(matchers_binder_1, 348, 6, 14, 14)).
%test_base_1 - org.mockitoutil.TestBase
code(test_base_1_code1, compilation_unit, range(test_base_1, 0, 3625, 1, -1)).
code(test_base_1_code2, type_declaration, test_base_1_code1, (types, 0), range(test_base_1, 620, 3005, 21, -1)).
code(test_base_1_code3, modifier, test_base_1_code2, (modifiers, 0), range(test_base_1, 738, 6, 25, 25)).
code(test_base_1_code4, simple_type, test_base_1_code2, superclass_type, range(test_base_1, 768, 6, 25, 25)).
code(test_base_1_code5, method_declaration, test_base_1_code2, (body_declarations, 0), range(test_base_1, 782, 197, 27, 31)).
code(test_base_1_code6, method_declaration, test_base_1_code2, (body_declarations, 1), range(test_base_1, 985, 120, 33, 37)).
code(test_base_1_code7, simple_type, test_base_1_expr6, type, range(test_base_1, 1030, 11, 35, 35)).
%configuration_access_1 - org.mockito.internal.configuration.ConfigurationAccess
code(configuration_access_1_code1, compilation_unit, range(configuration_access_1, 0, 403, 1, -1)).
code(configuration_access_1_code2, type_declaration, configuration_access_1_code1, (types, 0), range(configuration_access_1, 229, 174, 9, -1)).
code(configuration_access_1_code3, method_declaration, configuration_access_1_code2, (body_declarations, 0), range(configuration_access_1, 271, 129, 11, 13)).
code(configuration_access_1_code4, simple_type, configuration_access_1_expr1, type, range(configuration_access_1, 337, 20, 12, 12)).
code(configuration_access_1_code5, simple_type, configuration_access_1_expr3, type, range(configuration_access_1, 363, 19, 12, 12)).
%thread_safe_mocking_progress_1 - org.mockito.internal.progress.ThreadSafeMockingProgress
code(thread_safe_mocking_progress_1_code1, compilation_unit, range(thread_safe_mocking_progress_1, 0, 1973, 1, -1)).
code(thread_safe_mocking_progress_1_code3, modifier, thread_safe_mocking_progress_1_code2, (modifiers, 0), range(thread_safe_mocking_progress_1, 328, 6, 11, 11)).
code(thread_safe_mocking_progress_1_code2, type_declaration, thread_safe_mocking_progress_1_code1, (types, 0), range(thread_safe_mocking_progress_1, 328, 1645, 11, -1)).
code(thread_safe_mocking_progress_1_code4, simple_type, thread_safe_mocking_progress_1_code2, (super_interface_types, 0), range(thread_safe_mocking_progress_1, 378, 15, 11, 11)).
code(thread_safe_mocking_progress_1_code5, field_declaration, thread_safe_mocking_progress_1_code2, (body_declarations, 0), range(thread_safe_mocking_progress_1, 405, 97, 13, 13)).
code(thread_safe_mocking_progress_1_code6, modifier, thread_safe_mocking_progress_1_code5, (modifiers, 0), range(thread_safe_mocking_progress_1, 405, 7, 13, 13)).
code(thread_safe_mocking_progress_1_code7, modifier, thread_safe_mocking_progress_1_code5, (modifiers, 1), range(thread_safe_mocking_progress_1, 413, 6, 13, 13)).
code(thread_safe_mocking_progress_1_code8, parameterized_type, thread_safe_mocking_progress_1_code5, type, range(thread_safe_mocking_progress_1, 420, 28, 13, 13)).
code(thread_safe_mocking_progress_1_code9, simple_type, thread_safe_mocking_progress_1_code8, type, range(thread_safe_mocking_progress_1, 420, 11, 13, 13)).
code(thread_safe_mocking_progress_1_code10, simple_type, thread_safe_mocking_progress_1_code8, (type_arguments, 0), range(thread_safe_mocking_progress_1, 432, 15, 13, 13)).
code(thread_safe_mocking_progress_1_code11, variable_declaration_fragment, thread_safe_mocking_progress_1_code5, (fragments, 0), range(thread_safe_mocking_progress_1, 449, 52, 13, 13)).
code(thread_safe_mocking_progress_1_code12, parameterized_type, thread_safe_mocking_progress_1_expr1, type, range(thread_safe_mocking_progress_1, 471, 28, 13, 13)).
code(thread_safe_mocking_progress_1_code13, simple_type, thread_safe_mocking_progress_1_code12, type, range(thread_safe_mocking_progress_1, 471, 11, 13, 13)).
code(thread_safe_mocking_progress_1_code14, simple_type, thread_safe_mocking_progress_1_code12, (type_arguments, 0), range(thread_safe_mocking_progress_1, 483, 15, 13, 13)).
code(thread_safe_mocking_progress_1_code15, method_declaration, thread_safe_mocking_progress_1_code2, (body_declarations, 1), range(thread_safe_mocking_progress_1, 508, 198, 15, 20)).
code(thread_safe_mocking_progress_1_code16, simple_type, thread_safe_mocking_progress_1_expr5, type, range(thread_safe_mocking_progress_1, 629, 19, 17, 17)).
code(thread_safe_mocking_progress_1_code17, method_declaration, thread_safe_mocking_progress_1_code2, (body_declarations, 7), range(thread_safe_mocking_progress_1, 1299, 75, 42, 44)).
code(thread_safe_mocking_progress_1_code18, method_declaration, thread_safe_mocking_progress_1_code2, (body_declarations, 11), range(thread_safe_mocking_progress_1, 1649, 89, 58, 60)).
%returns_mocks_1 - org.mockito.internal.stubbing.defaultanswers.ReturnsMocks
code(returns_mocks_1_code1, compilation_unit, range(returns_mocks_1, 0, 1203, 1, -1)).
code(returns_mocks_1_code2, type_declaration, returns_mocks_1_code1, (types, 0), range(returns_mocks_1, 430, 773, 13, -1)).
code(returns_mocks_1_code3, modifier, returns_mocks_1_code2, (modifiers, 0), range(returns_mocks_1, 430, 6, 13, 13)).
code(returns_mocks_1_code4, parameterized_type, returns_mocks_1_code2, (super_interface_types, 0), range(returns_mocks_1, 467, 14, 13, 13)).
code(returns_mocks_1_code5, simple_type, returns_mocks_1_code4, type, range(returns_mocks_1, 467, 6, 13, 13)).
code(returns_mocks_1_code6, simple_type, returns_mocks_1_code4, (type_arguments, 0), range(returns_mocks_1, 474, 6, 13, 13)).
code(returns_mocks_1_code7, field_declaration, returns_mocks_1_code2, (body_declarations, 0), range(returns_mocks_1, 495, 52, 15, 15)).
code(returns_mocks_1_code8, modifier, returns_mocks_1_code7, (modifiers, 0), range(returns_mocks_1, 495, 7, 15, 15)).
code(returns_mocks_1_code9, simple_type, returns_mocks_1_code7, type, range(returns_mocks_1, 503, 11, 15, 15)).
code(returns_mocks_1_code10, variable_declaration_fragment, returns_mocks_1_code7, (fragments, 0), range(returns_mocks_1, 515, 31, 15, 15)).
code(returns_mocks_1_code11, simple_type, returns_mocks_1_expr1, type, range(returns_mocks_1, 533, 11, 15, 15)).
code(returns_mocks_1_code13, modifier, returns_mocks_1_code12, (modifiers, 0), range(returns_mocks_1, 553, 7, 16, 16)).
code(returns_mocks_1_code12, field_declaration, returns_mocks_1_code2, (body_declarations, 1), range(returns_mocks_1, 553, 63, 16, 16)).
code(returns_mocks_1_code15, simple_type, returns_mocks_1_code14, type, range(returns_mocks_1, 561, 6, 16, 16)).
code(returns_mocks_1_code14, parameterized_type, returns_mocks_1_code12, type, range(returns_mocks_1, 561, 14, 16, 16)).
code(returns_mocks_1_code16, simple_type, returns_mocks_1_code14, (type_arguments, 0), range(returns_mocks_1, 568, 6, 16, 16)).
code(returns_mocks_1_code17, variable_declaration_fragment, returns_mocks_1_code12, (fragments, 0), range(returns_mocks_1, 576, 39, 16, 16)).
code(returns_mocks_1_code18, simple_type, returns_mocks_1_expr2, type, range(returns_mocks_1, 591, 22, 16, 16)).
%globally_configured_answer_1 - org.mockito.internal.stubbing.defaultanswers.GloballyConfiguredAnswer
code(globally_configured_answer_1_code1, compilation_unit, range(globally_configured_answer_1, 0, 728, 1, -1)).
code(globally_configured_answer_1_code2, type_declaration, globally_configured_answer_1_code1, (types, 0), range(globally_configured_answer_1, 390, 336, 12, 22)).
code(globally_configured_answer_1_code3, modifier, globally_configured_answer_1_code2, (modifiers, 0), range(globally_configured_answer_1, 490, 6, 17, 17)).
code(globally_configured_answer_1_code4, parameterized_type, globally_configured_answer_1_code2, (super_interface_types, 0), range(globally_configured_answer_1, 539, 14, 17, 17)).
code(globally_configured_answer_1_code5, simple_type, globally_configured_answer_1_code4, type, range(globally_configured_answer_1, 539, 6, 17, 17)).
code(globally_configured_answer_1_code6, simple_type, globally_configured_answer_1_code4, (type_arguments, 0), range(globally_configured_answer_1, 546, 6, 17, 17)).
%argument_matcher_storage_impl_1 - org.mockito.internal.progress.ArgumentMatcherStorageImpl
code(argument_matcher_storage_impl_1_code1, compilation_unit, range(argument_matcher_storage_impl_1, 0, 3955, 1, -1)).
code(argument_matcher_storage_impl_1_code2, type_declaration, argument_matcher_storage_impl_1_code1, (types, 0), range(argument_matcher_storage_impl_1, 615, 3340, 21, -1)).
code(argument_matcher_storage_impl_1_code3, modifier, argument_matcher_storage_impl_1_code2, (modifiers, 1), range(argument_matcher_storage_impl_1, 646, 6, 22, 22)).
code(argument_matcher_storage_impl_1_code4, simple_type, argument_matcher_storage_impl_1_code2, (super_interface_types, 0), range(argument_matcher_storage_impl_1, 697, 22, 22, 22)).
code(argument_matcher_storage_impl_1_code6, modifier, argument_matcher_storage_impl_1_code5, (modifiers, 0), range(argument_matcher_storage_impl_1, 731, 7, 24, 24)).
code(argument_matcher_storage_impl_1_code5, field_declaration, argument_matcher_storage_impl_1_code2, (body_declarations, 0), range(argument_matcher_storage_impl_1, 731, 77, 24, 24)).
code(argument_matcher_storage_impl_1_code7, parameterized_type, argument_matcher_storage_impl_1_code5, type, range(argument_matcher_storage_impl_1, 739, 23, 24, 24)).
code(argument_matcher_storage_impl_1_code8, simple_type, argument_matcher_storage_impl_1_code7, type, range(argument_matcher_storage_impl_1, 739, 5, 24, 24)).
code(argument_matcher_storage_impl_1_code9, simple_type, argument_matcher_storage_impl_1_code7, (type_arguments, 0), range(argument_matcher_storage_impl_1, 745, 16, 24, 24)).
code(argument_matcher_storage_impl_1_code10, variable_declaration_fragment, argument_matcher_storage_impl_1_code5, (fragments, 0), range(argument_matcher_storage_impl_1, 763, 44, 24, 24)).
code(argument_matcher_storage_impl_1_code12, simple_type, argument_matcher_storage_impl_1_code11, type, range(argument_matcher_storage_impl_1, 782, 5, 24, 24)).
code(argument_matcher_storage_impl_1_code11, parameterized_type, argument_matcher_storage_impl_1_expr1, type, range(argument_matcher_storage_impl_1, 782, 23, 24, 24)).
code(argument_matcher_storage_impl_1_code13, simple_type, argument_matcher_storage_impl_1_code11, (type_arguments, 0), range(argument_matcher_storage_impl_1, 788, 16, 24, 24)).
code(argument_matcher_storage_impl_1_code14, method_declaration, argument_matcher_storage_impl_1_code2, (body_declarations, 8), range(argument_matcher_storage_impl_1, 3519, 269, 99, 105)).
%equals_1 - org.mockito.internal.matchers.Equals
code(equals_1_code1, compilation_unit, range(equals_1, 0, 2162, 1, -1)).
code(equals_1_code2, type_declaration, equals_1_code1, (types, 0), range(equals_1, 266, 1896, 11, -1)).
code(equals_1_code4, modifier, equals_1_code3, (modifiers, 0), range(equals_1, 399, 6, 15, 15)).
code(equals_1_code3, method_declaration, equals_1_code2, (body_declarations, 1), range(equals_1, 399, 66, 15, 17)).
code(equals_1_code6, simple_type, equals_1_code5, type, range(equals_1, 413, 6, 15, 15)).
code(equals_1_code5, single_variable_declaration, equals_1_code3, (parameters, 0), range(equals_1, 413, 13, 15, 15)).
code(equals_1_code7, method_declaration, equals_1_code2, (body_declarations, 2), range(equals_1, 471, 163, 19, 24)).
code(equals_1_code8, method_declaration, equals_1_code2, (body_declarations, 3), range(equals_1, 640, 105, 26, 28)).
code(equals_1_code9, method_declaration, equals_1_code2, (body_declarations, 4), range(equals_1, 751, 245, 30, 39)).
code(equals_1_code10, simple_type, equals_1_stmt5, type, range(equals_1, 799, 6, 31, 31)).
code(equals_1_code11, variable_declaration_fragment, equals_1_stmt5, (fragments, 0), range(equals_1, 806, 16, 31, 31)).
code(equals_1_code12, method_declaration, equals_1_code2, (body_declarations, 5), range(equals_1, 1002, 221, 41, 49)).
code(equals_1_code13, simple_type, equals_1_expr16, right_operand, range(equals_1, 1059, 6, 42, 42)).
code(equals_1_code14, simple_type, equals_1_expr17, right_operand, range(equals_1, 1131, 9, 44, 44)).
%mockito_configuration_1 - org.mockito.configuration.MockitoConfiguration
code(mockito_configuration_1_code1, compilation_unit, range(mockito_configuration_1, 0, 1885, 1, -1)).
code(mockito_configuration_1_code3, modifier, mockito_configuration_1_code2, (modifiers, 0), range(mockito_configuration_1, 424, 6, 15, 15)).
code(mockito_configuration_1_code2, type_declaration, mockito_configuration_1_code1, (types, 0), range(mockito_configuration_1, 424, 1461, 15, -1)).
code(mockito_configuration_1_code4, simple_type, mockito_configuration_1_code2, superclass_type, range(mockito_configuration_1, 466, 27, 15, 15)).
code(mockito_configuration_1_code5, simple_type, mockito_configuration_1_code2, (super_interface_types, 0), range(mockito_configuration_1, 505, 21, 15, 15)).
code(mockito_configuration_1_code6, field_declaration, mockito_configuration_1_code2, (body_declarations, 0), range(mockito_configuration_1, 536, 54, 17, 17)).
code(mockito_configuration_1_code7, modifier, mockito_configuration_1_code6, (modifiers, 0), range(mockito_configuration_1, 536, 7, 17, 17)).
code(mockito_configuration_1_code8, parameterized_type, mockito_configuration_1_code6, type, range(mockito_configuration_1, 544, 14, 17, 17)).
code(mockito_configuration_1_code9, simple_type, mockito_configuration_1_code8, type, range(mockito_configuration_1, 544, 6, 17, 17)).
code(mockito_configuration_1_code10, simple_type, mockito_configuration_1_code8, (type_arguments, 0), range(mockito_configuration_1, 551, 6, 17, 17)).
code(mockito_configuration_1_code11, variable_declaration_fragment, mockito_configuration_1_code6, (fragments, 0), range(mockito_configuration_1, 559, 30, 17, 17)).
code(mockito_configuration_1_code12, method_declaration, mockito_configuration_1_code2, (body_declarations, 2), range(mockito_configuration_1, 702, 127, 21, 23)).
code(mockito_configuration_1_code13, method_declaration, mockito_configuration_1_code2, (body_declarations, 3), range(mockito_configuration_1, 902, 122, 26, 28)).
code(mockito_configuration_1_code14, method_declaration, mockito_configuration_1_code2, (body_declarations, 5), range(mockito_configuration_1, 1276, 503, 39, 51)).
code(mockito_configuration_1_code15, simple_type, mockito_configuration_1_expr7, type, range(mockito_configuration_1, 1359, 23, 41, 41)).
code(mockito_configuration_1_code16, anonymous_class_declaration, mockito_configuration_1_expr7, anonymous_class_declaration, range(mockito_configuration_1, 1385, 386, 41, 50)).
%mock_settings_impl_1 - org.mockito.internal.creation.MockSettingsImpl
code(mock_settings_impl_1_code1, compilation_unit, range(mock_settings_impl_1, 0, 1843, 1, -1)).
code(mock_settings_impl_1_code2, type_declaration, mock_settings_impl_1_code1, (types, 0), range(mock_settings_impl_1, 280, 1563, 11, -1)).
code(mock_settings_impl_1_code3, modifier, mock_settings_impl_1_code2, (modifiers, 0), range(mock_settings_impl_1, 280, 6, 11, 11)).
code(mock_settings_impl_1_code4, simple_type, mock_settings_impl_1_code2, (super_interface_types, 0), range(mock_settings_impl_1, 321, 12, 11, 11)).
code(mock_settings_impl_1_code5, method_declaration, mock_settings_impl_1_code2, (body_declarations, 5), range(mock_settings_impl_1, 1109, 58, 34, 36)).
code(mock_settings_impl_1_code6, method_declaration, mock_settings_impl_1_code2, (body_declarations, 6), range(mock_settings_impl_1, 1175, 80, 38, 40)).
code(mock_settings_impl_1_code7, method_declaration, mock_settings_impl_1_code2, (body_declarations, 7), range(mock_settings_impl_1, 1263, 72, 42, 44)).
code(mock_settings_impl_1_code8, method_declaration, mock_settings_impl_1_code2, (body_declarations, 10), range(mock_settings_impl_1, 1585, 167, 56, 60)).
%argument_matching_tool_1 - org.mockito.internal.verification.argumentmatching.ArgumentMatchingTool
code(argument_matching_tool_1_code1, compilation_unit, range(argument_matching_tool_1, 0, 1681, 1, -1)).
code(argument_matching_tool_1_code2, type_declaration, argument_matching_tool_1_code1, (types, 0), range(argument_matching_tool_1, 383, 1296, 14, 50)).
code(argument_matching_tool_1_code3, modifier, argument_matching_tool_1_code2, (modifiers, 1), range(argument_matching_tool_1, 415, 6, 15, 15)).
code(argument_matching_tool_1_code4, method_declaration, argument_matching_tool_1_code2, (body_declarations, 0), range(argument_matching_tool_1, 458, 887, 17, 37)).
code(argument_matching_tool_1_code6, simple_type, argument_matching_tool_1_code5, type, range(argument_matching_tool_1, 833, 4, 25, 25)).
code(argument_matching_tool_1_code5, parameterized_type, argument_matching_tool_1_stmt2, type, range(argument_matching_tool_1, 833, 13, 25, 25)).
code(argument_matching_tool_1_code7, simple_type, argument_matching_tool_1_code5, (type_arguments, 0), range(argument_matching_tool_1, 838, 7, 25, 25)).
code(argument_matching_tool_1_code8, variable_declaration_fragment, argument_matching_tool_1_stmt2, (fragments, 0), range(argument_matching_tool_1, 847, 38, 25, 25)).
code(argument_matching_tool_1_code9, parameterized_type, argument_matching_tool_1_expr3, type, range(argument_matching_tool_1, 864, 19, 25, 25)).
code(argument_matching_tool_1_code10, simple_type, argument_matching_tool_1_code9, type, range(argument_matching_tool_1, 864, 10, 25, 25)).
code(argument_matching_tool_1_code11, simple_type, argument_matching_tool_1_code9, (type_arguments, 0), range(argument_matching_tool_1, 875, 7, 25, 25)).
code(argument_matching_tool_1_code12, primitive_type, argument_matching_tool_1_stmt3, type, range(argument_matching_tool_1, 896, 3, 26, 26)).
code(argument_matching_tool_1_code13, variable_declaration_fragment, argument_matching_tool_1_stmt3, (fragments, 0), range(argument_matching_tool_1, 900, 5, 26, 26)).
code(argument_matching_tool_1_code14, single_variable_declaration, argument_matching_tool_1_stmt4, parameter, range(argument_matching_tool_1, 921, 9, 27, 27)).
code(argument_matching_tool_1_code15, simple_type, argument_matching_tool_1_code14, type, range(argument_matching_tool_1, 921, 7, 27, 27)).
code(argument_matching_tool_1_code16, simple_type, argument_matching_tool_1_expr5, right_operand, range(argument_matching_tool_1, 975, 28, 28, 28)).
code(argument_matching_tool_1_code17, method_declaration, argument_matching_tool_1_code2, (body_declarations, 1), range(argument_matching_tool_1, 1353, 183, 39, 45)).
code(argument_matching_tool_1_code18, method_declaration, argument_matching_tool_1_code2, (body_declarations, 2), range(argument_matching_tool_1, 1544, 132, 47, 49)).
%default_mockito_configuration_1 - org.mockito.configuration.DefaultMockitoConfiguration
code(default_mockito_configuration_1_code1, compilation_unit, range(default_mockito_configuration_1, 0, 1651, 1, -1)).
code(default_mockito_configuration_1_code2, type_declaration, default_mockito_configuration_1_code1, (types, 0), range(default_mockito_configuration_1, 376, 1275, 12, -1)).
code(default_mockito_configuration_1_code3, modifier, default_mockito_configuration_1_code2, (modifiers, 1), range(default_mockito_configuration_1, 704, 6, 20, 20)).
code(default_mockito_configuration_1_code4, simple_type, default_mockito_configuration_1_code2, (super_interface_types, 0), range(default_mockito_configuration_1, 756, 21, 20, 20)).
%mock_handler_1 - org.mockito.internal.MockHandler
code(mock_handler_1_code1, compilation_unit, range(mock_handler_1, 0, 5788, 1, -1)).
code(mock_handler_1_code2, type_declaration, mock_handler_1_code1, (types, 0), range(mock_handler_1, 1295, 4493, 30, -1)).
code(mock_handler_1_code3, method_declaration, mock_handler_1_code2, (body_declarations, 6), range(mock_handler_1, 1770, 450, 44, 51)).
code(mock_handler_1_code4, modifier, mock_handler_1_code3, (modifiers, 0), range(mock_handler_1, 1770, 6, 44, 44)).
code(mock_handler_1_code5, single_variable_declaration, mock_handler_1_code3, (parameters, 0), range(mock_handler_1, 1789, 17, 44, 44)).
code(mock_handler_1_code6, simple_type, mock_handler_1_code5, type, range(mock_handler_1, 1789, 8, 44, 44)).
code(mock_handler_1_code8, simple_type, mock_handler_1_code7, type, range(mock_handler_1, 1808, 15, 44, 44)).
code(mock_handler_1_code7, single_variable_declaration, mock_handler_1_code3, (parameters, 1), range(mock_handler_1, 1808, 31, 44, 44)).
code(mock_handler_1_code9, single_variable_declaration, mock_handler_1_code3, (parameters, 2), range(mock_handler_1, 1841, 29, 44, 44)).
code(mock_handler_1_code10, simple_type, mock_handler_1_code9, type, range(mock_handler_1, 1841, 14, 44, 44)).
code(mock_handler_1_code11, single_variable_declaration, mock_handler_1_code3, (parameters, 3), range(mock_handler_1, 1872, 29, 44, 44)).
code(mock_handler_1_code12, simple_type, mock_handler_1_code11, type, range(mock_handler_1, 1872, 16, 44, 44)).
code(mock_handler_1_code13, simple_type, mock_handler_1_expr15, type, range(mock_handler_1, 2114, 14, 49, 49)).
code(mock_handler_1_code14, simple_type, mock_handler_1_expr19, type, range(mock_handler_1, 2189, 21, 50, 50)).
%debugging_info_1 - org.mockito.internal.debugging.DebuggingInfo
code(debugging_info_1_code1, compilation_unit, range(debugging_info_1, 0, 2322, 1, -1)).
code(debugging_info_1_code2, type_declaration, debugging_info_1_code1, (types, 0), range(debugging_info_1, 413, 1909, 15, -1)).
code(debugging_info_1_code3, modifier, debugging_info_1_code2, (modifiers, 0), range(debugging_info_1, 413, 6, 15, 15)).
code(debugging_info_1_code5, modifier, debugging_info_1_code4, (modifiers, 0), range(debugging_info_1, 449, 7, 17, 17)).
code(debugging_info_1_code4, field_declaration, debugging_info_1_code2, (body_declarations, 0), range(debugging_info_1, 449, 74, 17, 17)).
code(debugging_info_1_code6, modifier, debugging_info_1_code4, (modifiers, 1), range(debugging_info_1, 457, 5, 17, 17)).
code(debugging_info_1_code8, simple_type, debugging_info_1_code7, type, range(debugging_info_1, 463, 4, 17, 17)).
code(debugging_info_1_code7, parameterized_type, debugging_info_1_code4, type, range(debugging_info_1, 463, 16, 17, 17)).
code(debugging_info_1_code9, simple_type, debugging_info_1_code7, (type_arguments, 0), range(debugging_info_1, 468, 10, 17, 17)).
code(debugging_info_1_code10, variable_declaration_fragment, debugging_info_1_code4, (fragments, 0), range(debugging_info_1, 480, 42, 17, 17)).
code(debugging_info_1_code11, parameterized_type, debugging_info_1_expr1, type, range(debugging_info_1, 498, 22, 17, 17)).
code(debugging_info_1_code12, simple_type, debugging_info_1_code11, type, range(debugging_info_1, 498, 10, 17, 17)).
code(debugging_info_1_code13, simple_type, debugging_info_1_code11, (type_arguments, 0), range(debugging_info_1, 509, 10, 17, 17)).
code(debugging_info_1_code14, field_declaration, debugging_info_1_code2, (body_declarations, 1), range(debugging_info_1, 529, 97, 18, 18)).
code(debugging_info_1_code15, modifier, debugging_info_1_code14, (modifiers, 0), range(debugging_info_1, 529, 7, 18, 18)).
code(debugging_info_1_code16, modifier, debugging_info_1_code14, (modifiers, 1), range(debugging_info_1, 537, 5, 18, 18)).
code(debugging_info_1_code18, simple_type, debugging_info_1_code17, type, range(debugging_info_1, 543, 4, 18, 18)).
code(debugging_info_1_code17, parameterized_type, debugging_info_1_code14, type, range(debugging_info_1, 543, 23, 18, 18)).
code(debugging_info_1_code19, simple_type, debugging_info_1_code17, (type_arguments, 0), range(debugging_info_1, 548, 17, 18, 18)).
code(debugging_info_1_code20, variable_declaration_fragment, debugging_info_1_code14, (fragments, 0), range(debugging_info_1, 567, 58, 18, 18)).
code(debugging_info_1_code21, parameterized_type, debugging_info_1_expr2, type, range(debugging_info_1, 594, 29, 18, 18)).
code(debugging_info_1_code22, simple_type, debugging_info_1_code21, type, range(debugging_info_1, 594, 10, 18, 18)).
code(debugging_info_1_code23, simple_type, debugging_info_1_code21, (type_arguments, 0), range(debugging_info_1, 605, 17, 18, 18)).
%class_path_loader_1 - org.mockito.internal.configuration.ClassPathLoader
code(class_path_loader_1_code1, compilation_unit, range(class_path_loader_1, 0, 1459, 1, -1)).
code(class_path_loader_1_code3, modifier, class_path_loader_1_code2, (modifiers, 0), range(class_path_loader_1, 301, 6, 10, 10)).
code(class_path_loader_1_code2, type_declaration, class_path_loader_1_code1, (types, 0), range(class_path_loader_1, 301, 1158, 10, -1)).
code(class_path_loader_1_code4, method_declaration, class_path_loader_1_code2, (body_declarations, 0), range(class_path_loader_1, 343, 1113, 12, 35)).
code(class_path_loader_1_code5, simple_type, class_path_loader_1_stmt1, type, range(class_path_loader_1, 566, 5, 18, 18)).
code(class_path_loader_1_code6, variable_declaration_fragment, class_path_loader_1_stmt1, (fragments, 0), range(class_path_loader_1, 572, 18, 18, 18)).
code(class_path_loader_1_code7, simple_type, class_path_loader_1_expr2, type, range(class_path_loader_1, 635, 5, 20, 20)).
code(class_path_loader_1_code8, catch_clause, class_path_loader_1_stmt2, (catch_clauses, 0), range(class_path_loader_1, 718, 153, 21, 24)).
code(class_path_loader_1_code9, simple_type, class_path_loader_1_expr4, type, range(class_path_loader_1, 918, 21, 27, 27)).
%returns_smart_nulls_1 - org.mockito.internal.stubbing.defaultanswers.ReturnsSmartNulls
code(returns_smart_nulls_1_code1, compilation_unit, range(returns_smart_nulls_1, 0, 2893, 1, -1)).
code(returns_smart_nulls_1_code2, type_declaration, returns_smart_nulls_1_code1, (types, 0), range(returns_smart_nulls_1, 635, 2256, 19, 70)).
code(returns_smart_nulls_1_code3, modifier, returns_smart_nulls_1_code2, (modifiers, 0), range(returns_smart_nulls_1, 1506, 6, 37, 37)).
code(returns_smart_nulls_1_code4, parameterized_type, returns_smart_nulls_1_code2, (super_interface_types, 0), range(returns_smart_nulls_1, 1548, 14, 37, 37)).
code(returns_smart_nulls_1_code5, simple_type, returns_smart_nulls_1_code4, type, range(returns_smart_nulls_1, 1548, 6, 37, 37)).
code(returns_smart_nulls_1_code6, simple_type, returns_smart_nulls_1_code4, (type_arguments, 0), range(returns_smart_nulls_1, 1555, 6, 37, 37)).
code(returns_smart_nulls_1_code8, modifier, returns_smart_nulls_1_code7, (modifiers, 0), range(returns_smart_nulls_1, 2305, 7, 57, 57)).
code(returns_smart_nulls_1_code7, field_declaration, returns_smart_nulls_1_code2, (body_declarations, 1), range(returns_smart_nulls_1, 2305, 69, 57, 57)).
code(returns_smart_nulls_1_code9, modifier, returns_smart_nulls_1_code7, (modifiers, 1), range(returns_smart_nulls_1, 2313, 5, 57, 57)).
code(returns_smart_nulls_1_code10, parameterized_type, returns_smart_nulls_1_code7, type, range(returns_smart_nulls_1, 2319, 14, 57, 57)).
code(returns_smart_nulls_1_code11, simple_type, returns_smart_nulls_1_code10, type, range(returns_smart_nulls_1, 2319, 6, 57, 57)).
code(returns_smart_nulls_1_code12, simple_type, returns_smart_nulls_1_code10, (type_arguments, 0), range(returns_smart_nulls_1, 2326, 6, 57, 57)).
code(returns_smart_nulls_1_code13, variable_declaration_fragment, returns_smart_nulls_1_code7, (fragments, 0), range(returns_smart_nulls_1, 2334, 39, 57, 57)).
code(returns_smart_nulls_1_code14, simple_type, returns_smart_nulls_1_expr1, type, range(returns_smart_nulls_1, 2349, 22, 57, 57)).
%mockito_naming_policy_1 - org.mockito.internal.creation.cglib.MockitoNamingPolicy
code(mockito_naming_policy_1_code1, compilation_unit, range(mockito_naming_policy_1, 0, 480, 1, -1)).
code(mockito_naming_policy_1_code3, modifier, mockito_naming_policy_1_code2, (modifiers, 0), range(mockito_naming_policy_1, 226, 6, 9, 9)).
code(mockito_naming_policy_1_code2, type_declaration, mockito_naming_policy_1_code1, (types, 0), range(mockito_naming_policy_1, 226, 254, 9, -1)).
code(mockito_naming_policy_1_code4, simple_type, mockito_naming_policy_1_code2, superclass_type, range(mockito_naming_policy_1, 267, 19, 9, 9)).
code(mockito_naming_policy_1_code6, modifier, mockito_naming_policy_1_code5, (modifiers, 0), range(mockito_naming_policy_1, 300, 6, 11, 11)).
code(mockito_naming_policy_1_code5, field_declaration, mockito_naming_policy_1_code2, (body_declarations, 0), range(mockito_naming_policy_1, 300, 77, 11, 11)).
code(mockito_naming_policy_1_code7, modifier, mockito_naming_policy_1_code5, (modifiers, 1), range(mockito_naming_policy_1, 307, 6, 11, 11)).
code(mockito_naming_policy_1_code8, modifier, mockito_naming_policy_1_code5, (modifiers, 2), range(mockito_naming_policy_1, 314, 5, 11, 11)).
code(mockito_naming_policy_1_code9, simple_type, mockito_naming_policy_1_code5, type, range(mockito_naming_policy_1, 320, 19, 11, 11)).
code(mockito_naming_policy_1_code10, variable_declaration_fragment, mockito_naming_policy_1_code5, (fragments, 0), range(mockito_naming_policy_1, 340, 36, 11, 11)).
code(mockito_naming_policy_1_code11, simple_type, mockito_naming_policy_1_expr1, type, range(mockito_naming_policy_1, 355, 19, 11, 11)).
%mock_name_1 - org.mockito.internal.util.MockName
code(mock_name_1_code1, compilation_unit, range(mock_name_1, 0, 962, 1, -1)).
code(mock_name_1_code2, type_declaration, mock_name_1_code1, (types, 0), range(mock_name_1, 162, 798, 7, 36)).
code(mock_name_1_code3, method_declaration, mock_name_1_code2, (body_declarations, 2), range(mock_name_1, 267, 291, 12, 20)).
code(mock_name_1_code4, modifier, mock_name_1_code3, (modifiers, 1), range(mock_name_1, 303, 6, 13, 13)).
code(mock_name_1_code5, single_variable_declaration, mock_name_1_code3, (parameters, 0), range(mock_name_1, 319, 15, 13, 13)).
code(mock_name_1_code6, simple_type, mock_name_1_code5, type, range(mock_name_1, 319, 6, 13, 13)).
code(mock_name_1_code8, simple_type, mock_name_1_code7, type, range(mock_name_1, 336, 5, 13, 13)).
code(mock_name_1_code7, single_variable_declaration, mock_name_1_code3, (parameters, 1), range(mock_name_1, 336, 17, 13, 13)).
code(mock_name_1_code9, method_declaration, mock_name_1_code2, (body_declarations, 3), range(mock_name_1, 566, 229, 22, 26)).
code(mock_name_1_code10, simple_type, mock_name_1_stmt4, type, range(mock_name_1, 630, 6, 23, 23)).
code(mock_name_1_code11, variable_declaration_fragment, mock_name_1_stmt4, (fragments, 0), range(mock_name_1, 637, 33, 23, 23)).
%returns_more_empty_values_1 - org.mockito.internal.stubbing.defaultanswers.ReturnsMoreEmptyValues
code(returns_more_empty_values_1_code1, compilation_unit, range(returns_more_empty_values_1, 0, 2086, 1, -1)).
code(returns_more_empty_values_1_code2, type_declaration, returns_more_empty_values_1_code1, (types, 0), range(returns_more_empty_values_1, 321, 1765, 13, -1)).
code(returns_more_empty_values_1_code3, modifier, returns_more_empty_values_1_code2, (modifiers, 0), range(returns_more_empty_values_1, 1224, 6, 43, 43)).
code(returns_more_empty_values_1_code4, parameterized_type, returns_more_empty_values_1_code2, (super_interface_types, 0), range(returns_more_empty_values_1, 1271, 14, 43, 43)).
code(returns_more_empty_values_1_code5, simple_type, returns_more_empty_values_1_code4, type, range(returns_more_empty_values_1, 1271, 6, 43, 43)).
code(returns_more_empty_values_1_code6, simple_type, returns_more_empty_values_1_code4, (type_arguments, 0), range(returns_more_empty_values_1, 1278, 6, 43, 43)).
code(returns_more_empty_values_1_code7, field_declaration, returns_more_empty_values_1_code2, (body_declarations, 0), range(returns_more_empty_values_1, 1297, 59, 45, 45)).
code(returns_more_empty_values_1_code8, modifier, returns_more_empty_values_1_code7, (modifiers, 0), range(returns_more_empty_values_1, 1297, 7, 45, 45)).
code(returns_more_empty_values_1_code9, parameterized_type, returns_more_empty_values_1_code7, type, range(returns_more_empty_values_1, 1305, 14, 45, 45)).
code(returns_more_empty_values_1_code10, simple_type, returns_more_empty_values_1_code9, type, range(returns_more_empty_values_1, 1305, 6, 45, 45)).
code(returns_more_empty_values_1_code11, simple_type, returns_more_empty_values_1_code9, (type_arguments, 0), range(returns_more_empty_values_1, 1312, 6, 45, 45)).
code(returns_more_empty_values_1_code12, variable_declaration_fragment, returns_more_empty_values_1_code7, (fragments, 0), range(returns_more_empty_values_1, 1320, 35, 45, 45)).
code(returns_more_empty_values_1_code13, simple_type, returns_more_empty_values_1_expr1, type, range(returns_more_empty_values_1, 1335, 18, 45, 45)).
%mockito_annotations_1 - org.mockito.MockitoAnnotations
code(mockito_annotations_1_code1, compilation_unit, range(mockito_annotations_1, 0, 4331, 1, -1)).
code(mockito_annotations_1_code2, type_declaration, mockito_annotations_1_code1, (types, 0), range(mockito_annotations_1, 601, 3730, 20, -1)).
code(mockito_annotations_1_code3, method_declaration, mockito_annotations_1_code2, (body_declarations, 1), range(mockito_annotations_1, 2759, 612, 75, 90)).
code(mockito_annotations_1_code4, parameterized_type, mockito_annotations_1_stmt2, type, range(mockito_annotations_1, 3198, 8, 85, 85)).
code(mockito_annotations_1_code5, simple_type, mockito_annotations_1_code4, type, range(mockito_annotations_1, 3198, 5, 85, 85)).
code(mockito_annotations_1_code6, wildcard_type, mockito_annotations_1_code4, (type_arguments, 0), range(mockito_annotations_1, 3204, 1, 85, 85)).
code(mockito_annotations_1_code7, variable_declaration_fragment, mockito_annotations_1_stmt2, (fragments, 0), range(mockito_annotations_1, 3207, 28, 85, 85)).
code(mockito_annotations_1_code8, simple_type, mockito_annotations_1_expr4, type, range(mockito_annotations_1, 3261, 6, 86, 86)).
code(mockito_annotations_1_code9, method_declaration, mockito_annotations_1_code2, (body_declarations, 2), range(mockito_annotations_1, 3377, 952, 92, 111)).
code(mockito_annotations_1_code10, simple_type, mockito_annotations_1_stmt6, type, range(mockito_annotations_1, 3446, 16, 93, 93)).
code(mockito_annotations_1_code11, variable_declaration_fragment, mockito_annotations_1_stmt6, (fragments, 0), range(mockito_annotations_1, 3463, 66, 93, 93)).
code(mockito_annotations_1_code12, simple_type, mockito_annotations_1_expr9, type, range(mockito_annotations_1, 3486, 19, 93, 93)).
code(mockito_annotations_1_code13, array_type, mockito_annotations_1_stmt7, type, range(mockito_annotations_1, 3539, 7, 94, 94)).
code(mockito_annotations_1_code14, simple_type, mockito_annotations_1_code13, element_type, range(mockito_annotations_1, 3539, 5, 94, 94)).
code(mockito_annotations_1_code15, dimension, mockito_annotations_1_code13, (dimensions, 0), range(mockito_annotations_1, 3544, 2, 94, 94)).
code(mockito_annotations_1_code16, variable_declaration_fragment, mockito_annotations_1_stmt7, (fragments, 0), range(mockito_annotations_1, 3547, 34, 94, 94)).
code(mockito_annotations_1_code18, simple_type, mockito_annotations_1_code17, type, range(mockito_annotations_1, 3596, 5, 95, 95)).
code(mockito_annotations_1_code17, single_variable_declaration, mockito_annotations_1_stmt8, parameter, range(mockito_annotations_1, 3596, 11, 95, 95)).
code(mockito_annotations_1_code20, simple_type, mockito_annotations_1_code19, type, range(mockito_annotations_1, 3636, 10, 96, 96)).
code(mockito_annotations_1_code19, single_variable_declaration, mockito_annotations_1_stmt9, parameter, range(mockito_annotations_1, 3636, 21, 96, 96)).
%mockito_core_1 - org.mockito.internal.MockitoCore
code(mockito_core_1_code1, compilation_unit, range(mockito_core_1, 0, 5104, 1, -1)).
code(mockito_core_1_code2, type_declaration, mockito_core_1_code1, (types, 0), range(mockito_core_1, 1103, 4001, 29, -1)).
code(mockito_core_1_code3, modifier, mockito_core_1_code2, (modifiers, 1), range(mockito_core_1, 1135, 6, 30, 30)).
code(mockito_core_1_code5, modifier, mockito_core_1_code4, (modifiers, 0), range(mockito_core_1, 1169, 7, 32, 32)).
code(mockito_core_1_code4, field_declaration, mockito_core_1_code2, (body_declarations, 0), range(mockito_core_1, 1169, 49, 32, 32)).
code(mockito_core_1_code6, modifier, mockito_core_1_code4, (modifiers, 1), range(mockito_core_1, 1177, 5, 32, 32)).
code(mockito_core_1_code7, simple_type, mockito_core_1_code4, type, range(mockito_core_1, 1183, 8, 32, 32)).
code(mockito_core_1_code8, variable_declaration_fragment, mockito_core_1_code4, (fragments, 0), range(mockito_core_1, 1192, 25, 32, 32)).
code(mockito_core_1_code9, simple_type, mockito_core_1_expr1, type, range(mockito_core_1, 1207, 8, 32, 32)).
code(mockito_core_1_code11, modifier, mockito_core_1_code10, (modifiers, 0), range(mockito_core_1, 1224, 7, 33, 33)).
code(mockito_core_1_code10, field_declaration, mockito_core_1_code2, (body_declarations, 1), range(mockito_core_1, 1224, 49, 33, 33)).
code(mockito_core_1_code12, modifier, mockito_core_1_code10, (modifiers, 1), range(mockito_core_1, 1232, 5, 33, 33)).
code(mockito_core_1_code13, simple_type, mockito_core_1_code10, type, range(mockito_core_1, 1238, 8, 33, 33)).
code(mockito_core_1_code14, variable_declaration_fragment, mockito_core_1_code10, (fragments, 0), range(mockito_core_1, 1247, 25, 33, 33)).
code(mockito_core_1_code15, simple_type, mockito_core_1_expr2, type, range(mockito_core_1, 1262, 8, 33, 33)).
code(mockito_core_1_code16, field_declaration, mockito_core_1_code2, (body_declarations, 2), range(mockito_core_1, 1279, 80, 34, 34)).
code(mockito_core_1_code17, modifier, mockito_core_1_code16, (modifiers, 0), range(mockito_core_1, 1279, 7, 34, 34)).
code(mockito_core_1_code18, modifier, mockito_core_1_code16, (modifiers, 1), range(mockito_core_1, 1287, 5, 34, 34)).
code(mockito_core_1_code19, simple_type, mockito_core_1_code16, type, range(mockito_core_1, 1293, 15, 34, 34)).
code(mockito_core_1_code20, variable_declaration_fragment, mockito_core_1_code16, (fragments, 0), range(mockito_core_1, 1309, 49, 34, 34)).
code(mockito_core_1_code21, simple_type, mockito_core_1_expr3, type, range(mockito_core_1, 1331, 25, 34, 34)).
code(mockito_core_1_code22, method_declaration, mockito_core_1_code2, (body_declarations, 3), range(mockito_core_1, 1371, 266, 36, 40)).
%actual_invocation_has_null_argument_npebug_test_1 - org.mockitousage.bugs.ActualInvocationHasNullArgumentNPEBugTest
code(actual_invocation_has_null_argument_npebug_test_1_code1, compilation_unit, range(actual_invocation_has_null_argument_npebug_test_1, 0, 854, 1, -1)).
code(actual_invocation_has_null_argument_npebug_test_1_code3, modifier, actual_invocation_has_null_argument_npebug_test_1_code2, (modifiers, 0), range(actual_invocation_has_null_argument_npebug_test_1, 285, 6, 13, 13)).
code(actual_invocation_has_null_argument_npebug_test_1_code2, type_declaration, actual_invocation_has_null_argument_npebug_test_1_code1, (types, 0), range(actual_invocation_has_null_argument_npebug_test_1, 285, 569, 13, -1)).
code(actual_invocation_has_null_argument_npebug_test_1_code4, simple_type, actual_invocation_has_null_argument_npebug_test_1_code2, superclass_type, range(actual_invocation_has_null_argument_npebug_test_1, 348, 8, 13, 13)).
code(actual_invocation_has_null_argument_npebug_test_1_code6, modifier, actual_invocation_has_null_argument_npebug_test_1_code5, (modifiers, 0), range(actual_invocation_has_null_argument_npebug_test_1, 368, 6, 15, 15)).
code(actual_invocation_has_null_argument_npebug_test_1_code5, type_declaration, actual_invocation_has_null_argument_npebug_test_1_code2, (body_declarations, 0), range(actual_invocation_has_null_argument_npebug_test_1, 368, 68, 15, 17)).
%mockito_1 - org.mockito.Mockito
code(mockito_1_code1, compilation_unit, range(mockito_1, 0, 62822, 1, -1)).
code(mockito_1_code2, type_declaration, mockito_1_code1, (types, 0), range(mockito_1, 1336, 61486, 28, -1)).
code(mockito_1_code4, modifier, mockito_1_code3, (modifiers, 0), range(mockito_1, 24170, 7, 570, 570)).
code(mockito_1_code3, field_declaration, mockito_1_code2, (body_declarations, 0), range(mockito_1, 24170, 66, 570, 570)).
code(mockito_1_code5, modifier, mockito_1_code3, (modifiers, 1), range(mockito_1, 24178, 6, 570, 570)).
code(mockito_1_code6, modifier, mockito_1_code3, (modifiers, 2), range(mockito_1, 24185, 5, 570, 570)).
code(mockito_1_code7, simple_type, mockito_1_code3, type, range(mockito_1, 24191, 11, 570, 570)).
code(mockito_1_code8, variable_declaration_fragment, mockito_1_code3, (fragments, 0), range(mockito_1, 24203, 32, 570, 570)).
code(mockito_1_code9, simple_type, mockito_1_expr1, type, range(mockito_1, 24222, 11, 570, 570)).
code(mockito_1_code10, field_declaration, mockito_1_code2, (body_declarations, 1), range(mockito_1, 24248, 547, 572, 581)).
code(mockito_1_code11, modifier, mockito_1_code10, (modifiers, 0), range(mockito_1, 24710, 6, 581, 581)).
code(mockito_1_code12, modifier, mockito_1_code10, (modifiers, 1), range(mockito_1, 24717, 6, 581, 581)).
code(mockito_1_code13, modifier, mockito_1_code10, (modifiers, 2), range(mockito_1, 24724, 5, 581, 581)).
code(mockito_1_code14, parameterized_type, mockito_1_code10, type, range(mockito_1, 24730, 14, 581, 581)).
code(mockito_1_code15, simple_type, mockito_1_code14, type, range(mockito_1, 24730, 6, 581, 581)).
code(mockito_1_code16, simple_type, mockito_1_code14, (type_arguments, 0), range(mockito_1, 24737, 6, 581, 581)).
code(mockito_1_code17, variable_declaration_fragment, mockito_1_code10, (fragments, 0), range(mockito_1, 24745, 49, 581, 581)).
code(mockito_1_code18, simple_type, mockito_1_expr2, type, range(mockito_1, 24768, 24, 581, 581)).
code(mockito_1_code19, field_declaration, mockito_1_code2, (body_declarations, 2), range(mockito_1, 24807, 1605, 583, 613)).
code(mockito_1_code20, modifier, mockito_1_code19, (modifiers, 0), range(mockito_1, 26331, 6, 613, 613)).
code(mockito_1_code21, modifier, mockito_1_code19, (modifiers, 1), range(mockito_1, 26338, 6, 613, 613)).
code(mockito_1_code22, modifier, mockito_1_code19, (modifiers, 2), range(mockito_1, 26345, 5, 613, 613)).
code(mockito_1_code24, simple_type, mockito_1_code23, type, range(mockito_1, 26351, 6, 613, 613)).
code(mockito_1_code23, parameterized_type, mockito_1_code19, type, range(mockito_1, 26351, 14, 613, 613)).
code(mockito_1_code25, simple_type, mockito_1_code23, (type_arguments, 0), range(mockito_1, 26358, 6, 613, 613)).
code(mockito_1_code26, variable_declaration_fragment, mockito_1_code19, (fragments, 0), range(mockito_1, 26366, 45, 613, 613)).
code(mockito_1_code27, simple_type, mockito_1_expr3, type, range(mockito_1, 26392, 17, 613, 613)).
code(mockito_1_code28, field_declaration, mockito_1_code2, (body_declarations, 3), range(mockito_1, 26424, 599, 615, 626)).
code(mockito_1_code29, modifier, mockito_1_code28, (modifiers, 0), range(mockito_1, 26953, 6, 626, 626)).
code(mockito_1_code30, modifier, mockito_1_code28, (modifiers, 1), range(mockito_1, 26960, 6, 626, 626)).
code(mockito_1_code31, modifier, mockito_1_code28, (modifiers, 2), range(mockito_1, 26967, 5, 626, 626)).
code(mockito_1_code33, simple_type, mockito_1_code32, type, range(mockito_1, 26973, 6, 626, 626)).
code(mockito_1_code32, parameterized_type, mockito_1_code28, type, range(mockito_1, 26973, 14, 626, 626)).
code(mockito_1_code34, simple_type, mockito_1_code32, (type_arguments, 0), range(mockito_1, 26980, 6, 626, 626)).
code(mockito_1_code35, variable_declaration_fragment, mockito_1_code28, (fragments, 0), range(mockito_1, 26988, 34, 626, 626)).
code(mockito_1_code36, simple_type, mockito_1_expr4, type, range(mockito_1, 27008, 12, 626, 626)).
code(mockito_1_code37, field_declaration, mockito_1_code2, (body_declarations, 4), range(mockito_1, 27031, 1703, 628, 660)).
code(mockito_1_code38, modifier, mockito_1_code37, (modifiers, 0), range(mockito_1, 28655, 6, 660, 660)).
code(mockito_1_code39, modifier, mockito_1_code37, (modifiers, 1), range(mockito_1, 28662, 6, 660, 660)).
code(mockito_1_code40, modifier, mockito_1_code37, (modifiers, 2), range(mockito_1, 28669, 5, 660, 660)).
code(mockito_1_code41, parameterized_type, mockito_1_code37, type, range(mockito_1, 28675, 14, 660, 660)).
code(mockito_1_code42, simple_type, mockito_1_code41, type, range(mockito_1, 28675, 6, 660, 660)).
code(mockito_1_code43, simple_type, mockito_1_code41, (type_arguments, 0), range(mockito_1, 28682, 6, 660, 660)).
code(mockito_1_code44, variable_declaration_fragment, mockito_1_code37, (fragments, 0), range(mockito_1, 28690, 43, 660, 660)).
code(mockito_1_code45, simple_type, mockito_1_expr5, type, range(mockito_1, 28715, 16, 660, 660)).
code(mockito_1_code46, method_declaration, mockito_1_code2, (body_declarations, 31), range(mockito_1, 61325, 1494, 1449, 1481)).
code(mockito_1_code47, simple_type, mockito_1_expr7, type, range(mockito_1, 62761, 16, 1480, 1480)).
%argument_matching_tool_test_1 - org.mockito.internal.verification.argumentmatching.ArgumentMatchingToolTest
code(argument_matching_tool_test_1_code1, compilation_unit, range(argument_matching_tool_test_1, 0, 3503, 1, -1)).
code(argument_matching_tool_test_1_code2, type_declaration, argument_matching_tool_test_1_code1, (types, 0), range(argument_matching_tool_test_1, 443, 3060, 17, -1)).
code(argument_matching_tool_test_1_code3, modifier, argument_matching_tool_test_1_code2, (modifiers, 1), range(argument_matching_tool_test_1, 475, 6, 18, 18)).
code(argument_matching_tool_test_1_code4, simple_type, argument_matching_tool_test_1_code2, superclass_type, range(argument_matching_tool_test_1, 521, 8, 18, 18)).
code(argument_matching_tool_test_1_code5, field_declaration, argument_matching_tool_test_1_code2, (body_declarations, 0), range(argument_matching_tool_test_1, 539, 63, 20, 20)).
code(argument_matching_tool_test_1_code6, modifier, argument_matching_tool_test_1_code5, (modifiers, 0), range(argument_matching_tool_test_1, 539, 7, 20, 20)).
code(argument_matching_tool_test_1_code7, simple_type, argument_matching_tool_test_1_code5, type, range(argument_matching_tool_test_1, 547, 20, 20, 20)).
code(argument_matching_tool_test_1_code8, variable_declaration_fragment, argument_matching_tool_test_1_code5, (fragments, 0), range(argument_matching_tool_test_1, 568, 33, 20, 20)).
code(argument_matching_tool_test_1_code9, simple_type, argument_matching_tool_test_1_expr1, type, range(argument_matching_tool_test_1, 579, 20, 20, 20)).
code(argument_matching_tool_test_1_code10, method_declaration, argument_matching_tool_test_1_code2, (body_declarations, 5), range(argument_matching_tool_test_1, 2636, 288, 79, 86)).
code(argument_matching_tool_test_1_code11, array_type, argument_matching_tool_test_1_stmt1, type, range(argument_matching_tool_test_1, 2721, 9, 82, 82)).
code(argument_matching_tool_test_1_code12, simple_type, argument_matching_tool_test_1_code11, element_type, range(argument_matching_tool_test_1, 2721, 7, 82, 82)).
code(argument_matching_tool_test_1_code13, dimension, argument_matching_tool_test_1_code11, (dimensions, 0), range(argument_matching_tool_test_1, 2728, 2, 82, 82)).
code(argument_matching_tool_test_1_code14, variable_declaration_fragment, argument_matching_tool_test_1_stmt1, (fragments, 0), range(argument_matching_tool_test_1, 2731, 114, 82, 82)).
code(argument_matching_tool_test_1_code15, simple_type, argument_matching_tool_test_1_expr3, type, range(argument_matching_tool_test_1, 2788, 4, 82, 82)).
code(argument_matching_tool_test_1_code16, simple_type, argument_matching_tool_test_1_expr6, type, range(argument_matching_tool_test_1, 2812, 6, 82, 82)).
code(argument_matching_tool_test_1_code18, simple_type, argument_matching_tool_test_1_code17, element_type, range(argument_matching_tool_test_1, 2829, 6, 82, 82)).
code(argument_matching_tool_test_1_code17, array_type, argument_matching_tool_test_1_expr4, type, range(argument_matching_tool_test_1, 2829, 8, 82, 82)).
code(argument_matching_tool_test_1_code19, dimension, argument_matching_tool_test_1_code17, (dimensions, 0), range(argument_matching_tool_test_1, 2835, 2, 82, 82)).
%returns_empty_values_1 - org.mockito.internal.stubbing.defaultanswers.ReturnsEmptyValues
code(returns_empty_values_1_code1, compilation_unit, range(returns_empty_values_1, 0, 4227, 1, -1)).
code(returns_empty_values_1_code2, type_declaration, returns_empty_values_1_code1, (types, 0), range(returns_empty_values_1, 874, 3353, 30, -1)).
code(returns_empty_values_1_code3, modifier, returns_empty_values_1_code2, (modifiers, 0), range(returns_empty_values_1, 1440, 6, 50, 50)).
code(returns_empty_values_1_code5, simple_type, returns_empty_values_1_code4, type, range(returns_empty_values_1, 1483, 6, 50, 50)).
code(returns_empty_values_1_code4, parameterized_type, returns_empty_values_1_code2, (super_interface_types, 0), range(returns_empty_values_1, 1483, 14, 50, 50)).
code(returns_empty_values_1_code6, simple_type, returns_empty_values_1_code4, (type_arguments, 0), range(returns_empty_values_1, 1490, 6, 50, 50)).
%matchers_1 - org.mockito.Matchers
code(matchers_1_code1, compilation_unit, range(matchers_1, 0, 21028, 1, -1)).
code(matchers_1_code2, type_declaration, matchers_1_code1, (types, 0), range(matchers_1, 996, 20032, 28, -1)).
code(matchers_1_code4, modifier, matchers_1_code3, (modifiers, 0), range(matchers_1, 4105, 7, 104, 104)).
code(matchers_1_code3, field_declaration, matchers_1_code2, (body_declarations, 0), range(matchers_1, 4105, 81, 104, 104)).
code(matchers_1_code5, modifier, matchers_1_code3, (modifiers, 1), range(matchers_1, 4113, 6, 104, 104)).
code(matchers_1_code6, simple_type, matchers_1_code3, type, range(matchers_1, 4120, 15, 104, 104)).
code(matchers_1_code7, variable_declaration_fragment, matchers_1_code3, (fragments, 0), range(matchers_1, 4136, 49, 104, 104)).
code(matchers_1_code8, simple_type, matchers_1_expr1, type, range(matchers_1, 4158, 25, 104, 104)).
%calls_real_methods_1 - org.mockito.internal.stubbing.answers.CallsRealMethods
code(calls_real_methods_1_code1, compilation_unit, range(calls_real_methods_1, 0, 1612, 1, -1)).
code(calls_real_methods_1_code2, type_declaration, calls_real_methods_1_code1, (types, 0), range(calls_real_methods_1, 262, 1350, 10, -1)).
code(calls_real_methods_1_code3, modifier, calls_real_methods_1_code2, (modifiers, 0), range(calls_real_methods_1, 1426, 6, 30, 30)).
code(calls_real_methods_1_code5, simple_type, calls_real_methods_1_code4, type, range(calls_real_methods_1, 1467, 6, 30, 30)).
code(calls_real_methods_1_code4, parameterized_type, calls_real_methods_1_code2, (super_interface_types, 0), range(calls_real_methods_1, 1467, 14, 30, 30)).
code(calls_real_methods_1_code6, simple_type, calls_real_methods_1_code4, (type_arguments, 0), range(calls_real_methods_1, 1474, 6, 30, 30)).
%reporter_1 - org.mockito.exceptions.Reporter
code(reporter_1_code1, compilation_unit, range(reporter_1, 0, 19404, 1, -1)).
code(reporter_1_code2, type_declaration, reporter_1_code1, (types, 0), range(reporter_1, 1518, 17886, 32, -1)).
code(reporter_1_code3, modifier, reporter_1_code2, (modifiers, 0), range(reporter_1, 1957, 6, 43, 43)).
%mockito_stubber_1 - org.mockito.internal.stubbing.MockitoStubber
code(mockito_stubber_1_code1, compilation_unit, range(mockito_stubber_1, 0, 3058, 1, -1)).
code(mockito_stubber_1_code2, type_declaration, mockito_stubber_1_code1, (types, 0), range(mockito_stubber_1, 520, 2538, 17, -1)).
code(mockito_stubber_1_code3, field_declaration, mockito_stubber_1_code2, (body_declarations, 0), range(mockito_stubber_1, 589, 104, 20, 20)).
code(mockito_stubber_1_code4, modifier, mockito_stubber_1_code3, (modifiers, 0), range(mockito_stubber_1, 589, 7, 20, 20)).
code(mockito_stubber_1_code5, modifier, mockito_stubber_1_code3, (modifiers, 1), range(mockito_stubber_1, 597, 5, 20, 20)).
code(mockito_stubber_1_code6, parameterized_type, mockito_stubber_1_code3, type, range(mockito_stubber_1, 603, 36, 20, 20)).
code(mockito_stubber_1_code7, simple_type, mockito_stubber_1_code6, type, range(mockito_stubber_1, 603, 10, 20, 20)).
code(mockito_stubber_1_code8, simple_type, mockito_stubber_1_code6, (type_arguments, 0), range(mockito_stubber_1, 614, 24, 20, 20)).
code(mockito_stubber_1_code9, variable_declaration_fragment, mockito_stubber_1_code3, (fragments, 0), range(mockito_stubber_1, 640, 52, 20, 20)).
code(mockito_stubber_1_code10, parameterized_type, mockito_stubber_1_expr2, type, range(mockito_stubber_1, 654, 36, 20, 20)).
code(mockito_stubber_1_code11, simple_type, mockito_stubber_1_code10, type, range(mockito_stubber_1, 654, 10, 20, 20)).
code(mockito_stubber_1_code12, simple_type, mockito_stubber_1_code10, (type_arguments, 0), range(mockito_stubber_1, 665, 24, 20, 20)).
code(mockito_stubber_1_code14, modifier, mockito_stubber_1_code13, (modifiers, 0), range(mockito_stubber_1, 751, 7, 22, 22)).
code(mockito_stubber_1_code13, field_declaration, mockito_stubber_1_code2, (body_declarations, 2), range(mockito_stubber_1, 751, 72, 22, 22)).
code(mockito_stubber_1_code15, modifier, mockito_stubber_1_code13, (modifiers, 1), range(mockito_stubber_1, 759, 5, 22, 22)).
code(mockito_stubber_1_code16, parameterized_type, mockito_stubber_1_code13, type, range(mockito_stubber_1, 765, 12, 22, 22)).
code(mockito_stubber_1_code17, simple_type, mockito_stubber_1_code16, type, range(mockito_stubber_1, 765, 4, 22, 22)).
code(mockito_stubber_1_code18, simple_type, mockito_stubber_1_code16, (type_arguments, 0), range(mockito_stubber_1, 770, 6, 22, 22)).
code(mockito_stubber_1_code19, variable_declaration_fragment, mockito_stubber_1_code13, (fragments, 0), range(mockito_stubber_1, 778, 44, 22, 22)).
code(mockito_stubber_1_code21, simple_type, mockito_stubber_1_code20, type, range(mockito_stubber_1, 803, 9, 22, 22)).
code(mockito_stubber_1_code20, parameterized_type, mockito_stubber_1_expr3, type, range(mockito_stubber_1, 803, 17, 22, 22)).
code(mockito_stubber_1_code22, simple_type, mockito_stubber_1_code20, (type_arguments, 0), range(mockito_stubber_1, 813, 6, 22, 22)).
code(mockito_stubber_1_code24, modifier, mockito_stubber_1_code23, (modifiers, 0), range(mockito_stubber_1, 887, 6, 26, 26)).
code(mockito_stubber_1_code23, method_declaration, mockito_stubber_1_code2, (body_declarations, 4), range(mockito_stubber_1, 887, 112, 26, 28)).
code(mockito_stubber_1_code25, single_variable_declaration, mockito_stubber_1_code23, (parameters, 0), range(mockito_stubber_1, 909, 31, 26, 26)).
code(mockito_stubber_1_code26, simple_type, mockito_stubber_1_code25, type, range(mockito_stubber_1, 909, 15, 26, 26)).
%argument_matcher_1 - org.mockito.ArgumentMatcher
code(argument_matcher_1_code1, compilation_unit, range(argument_matcher_1, 0, 3423, 1, -1)).
code(argument_matcher_1_code2, type_declaration, argument_matcher_1_code1, (types, 0), range(argument_matcher_1, 285, 3138, 13, -1)).
code(argument_matcher_1_code3, modifier, argument_matcher_1_code2, (modifiers, 0), range(argument_matcher_1, 2247, 6, 60, 60)).
code(argument_matcher_1_code4, modifier, argument_matcher_1_code2, (modifiers, 1), range(argument_matcher_1, 2254, 8, 60, 60)).
code(argument_matcher_1_code5, type_parameter, argument_matcher_1_code2, (type_parameters, 0), range(argument_matcher_1, 2285, 1, 60, 60)).
code(argument_matcher_1_code6, parameterized_type, argument_matcher_1_code2, superclass_type, range(argument_matcher_1, 2296, 14, 60, 60)).
code(argument_matcher_1_code7, simple_type, argument_matcher_1_code6, type, range(argument_matcher_1, 2296, 11, 60, 60)).
code(argument_matcher_1_code8, simple_type, argument_matcher_1_code6, (type_arguments, 0), range(argument_matcher_1, 2308, 1, 60, 60)).
%global_configuration_1 - org.mockito.internal.configuration.GlobalConfiguration
code(global_configuration_1_code1, compilation_unit, range(global_configuration_1, 0, 2129, 1, -1)).
code(global_configuration_1_code2, type_declaration, global_configuration_1_code1, (types, 0), range(global_configuration_1, 416, 1713, 13, -1)).
code(global_configuration_1_code3, field_declaration, global_configuration_1_code2, (body_declarations, 0), range(global_configuration_1, 683, 113, 19, 19)).
code(global_configuration_1_code4, modifier, global_configuration_1_code3, (modifiers, 0), range(global_configuration_1, 683, 7, 19, 19)).
code(global_configuration_1_code5, modifier, global_configuration_1_code3, (modifiers, 1), range(global_configuration_1, 691, 6, 19, 19)).
code(global_configuration_1_code6, parameterized_type, global_configuration_1_code3, type, range(global_configuration_1, 698, 34, 19, 19)).
code(global_configuration_1_code7, simple_type, global_configuration_1_code6, type, range(global_configuration_1, 698, 11, 19, 19)).
code(global_configuration_1_code8, simple_type, global_configuration_1_code6, (type_arguments, 0), range(global_configuration_1, 710, 21, 19, 19)).
code(global_configuration_1_code9, variable_declaration_fragment, global_configuration_1_code3, (fragments, 0), range(global_configuration_1, 733, 62, 19, 19)).
code(global_configuration_1_code10, parameterized_type, global_configuration_1_expr1, type, range(global_configuration_1, 759, 34, 19, 19)).
code(global_configuration_1_code11, simple_type, global_configuration_1_code10, type, range(global_configuration_1, 759, 11, 19, 19)).
code(global_configuration_1_code12, simple_type, global_configuration_1_code10, (type_arguments, 0), range(global_configuration_1, 771, 21, 19, 19)).
code(global_configuration_1_code13, method_declaration, global_configuration_1_code2, (body_declarations, 1), range(global_configuration_1, 833, 81, 22, 24)).
code(global_configuration_1_code14, method_declaration, global_configuration_1_code2, (body_declarations, 2), range(global_configuration_1, 926, 232, 26, 31)).
code(global_configuration_1_code15, modifier, global_configuration_1_code14, (modifiers, 0), range(global_configuration_1, 926, 6, 26, 26)).
code(global_configuration_1_code16, method_declaration, global_configuration_1_code2, (body_declarations, 3), range(global_configuration_1, 1170, 393, 33, 42)).
code(global_configuration_1_code17, simple_type, global_configuration_1_stmt4, type, range(global_configuration_1, 1264, 21, 35, 35)).
code(global_configuration_1_code18, variable_declaration_fragment, global_configuration_1_stmt4, (fragments, 0), range(global_configuration_1, 1286, 56, 35, 35)).
code(global_configuration_1_code19, simple_type, global_configuration_1_expr7, type, range(global_configuration_1, 1313, 27, 35, 35)).
code(global_configuration_1_code20, simple_type, global_configuration_1_stmt5, type, range(global_configuration_1, 1353, 21, 36, 36)).
code(global_configuration_1_code21, variable_declaration_fragment, global_configuration_1_stmt5, (fragments, 0), range(global_configuration_1, 1375, 50, 36, 36)).
code(global_configuration_1_code22, simple_type, global_configuration_1_expr9, type, range(global_configuration_1, 1388, 15, 36, 36)).
code(global_configuration_1_code23, method_declaration, global_configuration_1_code2, (body_declarations, 4), range(global_configuration_1, 1575, 74, 44, 46)).
code(global_configuration_1_code24, simple_type, global_configuration_1_expr11, type, range(global_configuration_1, 1620, 19, 45, 45)).
code(global_configuration_1_code25, method_declaration, global_configuration_1_code2, (body_declarations, 6), range(global_configuration_1, 1776, 119, 52, 54)).
%default_annotation_engine_1 - org.mockito.internal.configuration.DefaultAnnotationEngine
code(default_annotation_engine_1_code1, compilation_unit, range(default_annotation_engine_1, 0, 1061, 1, -1)).
code(default_annotation_engine_1_code2, type_declaration, default_annotation_engine_1_code1, (types, 0), range(default_annotation_engine_1, 396, 665, 15, -1)).
code(default_annotation_engine_1_code3, modifier, default_annotation_engine_1_code2, (modifiers, 0), range(default_annotation_engine_1, 498, 6, 20, 20)).
code(default_annotation_engine_1_code4, simple_type, default_annotation_engine_1_code2, (super_interface_types, 0), range(default_annotation_engine_1, 546, 16, 20, 20)).
%class_imposterizer_1 - org.mockito.internal.creation.jmock.ClassImposterizer
code(class_imposterizer_1_code1, compilation_unit, range(class_imposterizer_1, 0, 5551, 1, -1)).
code(class_imposterizer_1_code2, type_declaration, class_imposterizer_1_code1, (types, 0), range(class_imposterizer_1, 869, 4682, 25, -1)).
code(class_imposterizer_1_code3, field_declaration, class_imposterizer_1_code2, (body_declarations, 0), range(class_imposterizer_1, 999, 73, 30, 30)).
code(class_imposterizer_1_code4, modifier, class_imposterizer_1_code3, (modifiers, 0), range(class_imposterizer_1, 999, 6, 30, 30)).
code(class_imposterizer_1_code5, modifier, class_imposterizer_1_code3, (modifiers, 1), range(class_imposterizer_1, 1006, 6, 30, 30)).
code(class_imposterizer_1_code6, modifier, class_imposterizer_1_code3, (modifiers, 2), range(class_imposterizer_1, 1013, 5, 30, 30)).
code(class_imposterizer_1_code7, simple_type, class_imposterizer_1_code3, type, range(class_imposterizer_1, 1019, 17, 30, 30)).
code(class_imposterizer_1_code8, variable_declaration_fragment, class_imposterizer_1_code3, (fragments, 0), range(class_imposterizer_1, 1037, 34, 30, 30)).
code(class_imposterizer_1_code9, simple_type, class_imposterizer_1_expr1, type, range(class_imposterizer_1, 1052, 17, 30, 30)).
code(class_imposterizer_1_code10, method_declaration, class_imposterizer_1_code2, (body_declarations, 1), range(class_imposterizer_1, 1084, 30, 32, 32)).
code(class_imposterizer_1_code11, modifier, class_imposterizer_1_code10, (modifiers, 0), range(class_imposterizer_1, 1084, 7, 32, 32)).
code(class_imposterizer_1_code13, modifier, class_imposterizer_1_code12, (modifiers, 0), range(class_imposterizer_1, 1481, 7, 37, 37)).
code(class_imposterizer_1_code12, field_declaration, class_imposterizer_1_code2, (body_declarations, 2), range(class_imposterizer_1, 1481, 52, 37, 37)).
code(class_imposterizer_1_code14, simple_type, class_imposterizer_1_code12, type, range(class_imposterizer_1, 1489, 12, 37, 37)).
code(class_imposterizer_1_code15, variable_declaration_fragment, class_imposterizer_1_code12, (fragments, 0), range(class_imposterizer_1, 1502, 30, 37, 37)).
code(class_imposterizer_1_code16, simple_type, class_imposterizer_1_expr2, type, range(class_imposterizer_1, 1518, 12, 37, 37)).
code(class_imposterizer_1_code18, modifier, class_imposterizer_1_code17, (modifiers, 0), range(class_imposterizer_1, 1545, 7, 39, 39)).
code(class_imposterizer_1_code17, field_declaration, class_imposterizer_1_code2, (body_declarations, 3), range(class_imposterizer_1, 1545, 351, 39, 44)).
code(class_imposterizer_1_code19, modifier, class_imposterizer_1_code17, (modifiers, 1), range(class_imposterizer_1, 1553, 6, 39, 39)).
code(class_imposterizer_1_code20, modifier, class_imposterizer_1_code17, (modifiers, 2), range(class_imposterizer_1, 1560, 5, 39, 39)).
code(class_imposterizer_1_code21, simple_type, class_imposterizer_1_code17, type, range(class_imposterizer_1, 1566, 12, 39, 39)).
code(class_imposterizer_1_code22, variable_declaration_fragment, class_imposterizer_1_code17, (fragments, 0), range(class_imposterizer_1, 1579, 316, 39, 44)).
code(class_imposterizer_1_code23, simple_type, class_imposterizer_1_expr3, type, range(class_imposterizer_1, 1657, 19, 39, 39)).
code(class_imposterizer_1_code24, anonymous_class_declaration, class_imposterizer_1_expr3, anonymous_class_declaration, range(class_imposterizer_1, 1679, 216, 39, 44)).
code(class_imposterizer_1_code25, field_declaration, class_imposterizer_1_code2, (body_declarations, 4), range(class_imposterizer_1, 1908, 192, 46, 50)).
code(class_imposterizer_1_code26, modifier, class_imposterizer_1_code25, (modifiers, 0), range(class_imposterizer_1, 1908, 7, 46, 46)).
code(class_imposterizer_1_code27, modifier, class_imposterizer_1_code25, (modifiers, 1), range(class_imposterizer_1, 1916, 6, 46, 46)).
code(class_imposterizer_1_code28, modifier, class_imposterizer_1_code25, (modifiers, 2), range(class_imposterizer_1, 1923, 5, 46, 46)).
code(class_imposterizer_1_code29, simple_type, class_imposterizer_1_code25, type, range(class_imposterizer_1, 1929, 14, 46, 46)).
code(class_imposterizer_1_code30, variable_declaration_fragment, class_imposterizer_1_code25, (fragments, 0), range(class_imposterizer_1, 1944, 155, 46, 50)).
code(class_imposterizer_1_code31, simple_type, class_imposterizer_1_expr4, type, range(class_imposterizer_1, 1972, 14, 46, 46)).
code(class_imposterizer_1_code32, anonymous_class_declaration, class_imposterizer_1_expr4, anonymous_class_declaration, range(class_imposterizer_1, 1989, 110, 46, 50)).
code(class_imposterizer_1_code33, method_declaration, class_imposterizer_1_code2, (body_declarations, 5), range(class_imposterizer_1, 2112, 160, 52, 54)).
code(class_imposterizer_1_code34, method_declaration, class_imposterizer_1_code2, (body_declarations, 6), range(class_imposterizer_1, 2284, 439, 56, 64)).
code(class_imposterizer_1_code35, method_declaration, class_imposterizer_1_code2, (body_declarations, 7), range(class_imposterizer_1, 2735, 234, 66, 70)).
code(class_imposterizer_1_code36, single_variable_declaration, class_imposterizer_1_stmt5, parameter, range(class_imposterizer_1, 2831, 26, 67, 67)).
code(class_imposterizer_1_code38, simple_type, class_imposterizer_1_code37, type, range(class_imposterizer_1, 2831, 11, 67, 67)).
code(class_imposterizer_1_code37, parameterized_type, class_imposterizer_1_code36, type, range(class_imposterizer_1, 2831, 14, 67, 67)).
code(class_imposterizer_1_code39, wildcard_type, class_imposterizer_1_code37, (type_arguments, 0), range(class_imposterizer_1, 2843, 1, 67, 67)).
code(class_imposterizer_1_code40, method_declaration, class_imposterizer_1_code2, (body_declarations, 8), range(class_imposterizer_1, 2981, 1982, 72, 115)).
code(class_imposterizer_1_code41, simple_type, class_imposterizer_1_expr17, type, range(class_imposterizer_1, 3092, 6, 73, 73)).
%state_master_1 - org.mockito.StateMaster
code(state_master_1_code1, compilation_unit, range(state_master_1, 0, 482, 1, -1)).
code(state_master_1_code2, type_declaration, state_master_1_code1, (types, 0), range(state_master_1, 207, 275, 9, -1)).
code(state_master_1_code3, modifier, state_master_1_code2, (modifiers, 0), range(state_master_1, 207, 6, 9, 9)).
code(state_master_1_code4, field_declaration, state_master_1_code2, (body_declarations, 0), range(state_master_1, 243, 90, 11, 11)).
code(state_master_1_code5, modifier, state_master_1_code4, (modifiers, 0), range(state_master_1, 243, 7, 11, 11)).
code(state_master_1_code6, modifier, state_master_1_code4, (modifiers, 1), range(state_master_1, 251, 5, 11, 11)).
code(state_master_1_code7, simple_type, state_master_1_code4, type, range(state_master_1, 257, 25, 11, 11)).
code(state_master_1_code8, variable_declaration_fragment, state_master_1_code4, (fragments, 0), range(state_master_1, 283, 49, 11, 11)).
code(state_master_1_code9, simple_type, state_master_1_expr1, type, range(state_master_1, 305, 25, 11, 11)).
code(state_master_1_code10, method_declaration, state_master_1_code2, (body_declarations, 2), range(state_master_1, 409, 71, 17, 19)).
%mocking_progress_impl_1 - org.mockito.internal.progress.MockingProgressImpl
code(mocking_progress_impl_1_code1, compilation_unit, range(mocking_progress_impl_1, 0, 3523, 1, -1)).
code(mocking_progress_impl_1_code2, type_declaration, mocking_progress_impl_1_code1, (types, 0), range(mocking_progress_impl_1, 528, 2995, 15, -1)).
code(mocking_progress_impl_1_code3, modifier, mocking_progress_impl_1_code2, (modifiers, 1), range(mocking_progress_impl_1, 559, 6, 16, 16)).
code(mocking_progress_impl_1_code4, simple_type, mocking_progress_impl_1_code2, (super_interface_types, 0), range(mocking_progress_impl_1, 603, 15, 16, 16)).
code(mocking_progress_impl_1_code6, modifier, mocking_progress_impl_1_code5, (modifiers, 0), range(mocking_progress_impl_1, 630, 7, 18, 18)).
code(mocking_progress_impl_1_code5, field_declaration, mocking_progress_impl_1_code2, (body_declarations, 0), range(mocking_progress_impl_1, 630, 49, 18, 18)).
code(mocking_progress_impl_1_code7, modifier, mocking_progress_impl_1_code5, (modifiers, 1), range(mocking_progress_impl_1, 638, 5, 18, 18)).
code(mocking_progress_impl_1_code8, simple_type, mocking_progress_impl_1_code5, type, range(mocking_progress_impl_1, 644, 8, 18, 18)).
code(mocking_progress_impl_1_code9, variable_declaration_fragment, mocking_progress_impl_1_code5, (fragments, 0), range(mocking_progress_impl_1, 653, 25, 18, 18)).
code(mocking_progress_impl_1_code10, simple_type, mocking_progress_impl_1_expr1, type, range(mocking_progress_impl_1, 668, 8, 18, 18)).
code(mocking_progress_impl_1_code12, modifier, mocking_progress_impl_1_code11, (modifiers, 0), range(mocking_progress_impl_1, 684, 7, 19, 19)).
code(mocking_progress_impl_1_code11, field_declaration, mocking_progress_impl_1_code2, (body_declarations, 1), range(mocking_progress_impl_1, 684, 95, 19, 19)).
code(mocking_progress_impl_1_code13, modifier, mocking_progress_impl_1_code11, (modifiers, 1), range(mocking_progress_impl_1, 692, 5, 19, 19)).
code(mocking_progress_impl_1_code14, simple_type, mocking_progress_impl_1_code11, type, range(mocking_progress_impl_1, 698, 22, 19, 19)).
code(mocking_progress_impl_1_code15, variable_declaration_fragment, mocking_progress_impl_1_code11, (fragments, 0), range(mocking_progress_impl_1, 721, 57, 19, 19)).
code(mocking_progress_impl_1_code16, simple_type, mocking_progress_impl_1_expr2, type, range(mocking_progress_impl_1, 750, 26, 19, 19)).
code(mocking_progress_impl_1_code17, field_declaration, mocking_progress_impl_1_code2, (body_declarations, 2), range(mocking_progress_impl_1, 789, 64, 21, 21)).
code(mocking_progress_impl_1_code18, modifier, mocking_progress_impl_1_code17, (modifiers, 0), range(mocking_progress_impl_1, 789, 7, 21, 21)).
code(mocking_progress_impl_1_code19, modifier, mocking_progress_impl_1_code17, (modifiers, 1), range(mocking_progress_impl_1, 797, 5, 21, 21)).
code(mocking_progress_impl_1_code20, simple_type, mocking_progress_impl_1_code17, type, range(mocking_progress_impl_1, 803, 13, 21, 21)).
code(mocking_progress_impl_1_code21, variable_declaration_fragment, mocking_progress_impl_1_code17, (fragments, 0), range(mocking_progress_impl_1, 817, 35, 21, 21)).
code(mocking_progress_impl_1_code22, simple_type, mocking_progress_impl_1_expr3, type, range(mocking_progress_impl_1, 837, 13, 21, 21)).
code(mocking_progress_impl_1_code24, modifier, mocking_progress_impl_1_code23, (modifiers, 0), range(mocking_progress_impl_1, 956, 7, 25, 25)).
code(mocking_progress_impl_1_code23, field_declaration, mocking_progress_impl_1_code2, (body_declarations, 5), range(mocking_progress_impl_1, 956, 43, 25, 25)).
code(mocking_progress_impl_1_code25, simple_type, mocking_progress_impl_1_code23, type, range(mocking_progress_impl_1, 964, 8, 25, 25)).
code(mocking_progress_impl_1_code26, variable_declaration_fragment, mocking_progress_impl_1_code23, (fragments, 0), range(mocking_progress_impl_1, 973, 25, 25, 25)).
code(mocking_progress_impl_1_code27, method_declaration, mocking_progress_impl_1_code2, (body_declarations, 9), range(mocking_progress_impl_1, 1591, 75, 46, 48)).
code(mocking_progress_impl_1_code28, method_declaration, mocking_progress_impl_1_code2, (body_declarations, 12), range(mocking_progress_impl_1, 2045, 764, 65, 83)).
code(mocking_progress_impl_1_code29, method_declaration, mocking_progress_impl_1_code2, (body_declarations, 16), range(mocking_progress_impl_1, 3334, 104, 102, 104)).
%mock_util_1 - org.mockito.internal.util.MockUtil
code(mock_util_1_code1, compilation_unit, range(mock_util_1, 0, 3677, 1, -1)).
code(mock_util_1_code2, type_declaration, mock_util_1_code1, (types, 0), range(mock_util_1, 739, 2938, 19, -1)).
code(mock_util_1_code4, modifier, mock_util_1_code3, (modifiers, 0), range(mock_util_1, 832, 6, 23, 23)).
code(mock_util_1_code3, method_declaration, mock_util_1_code2, (body_declarations, 1), range(mock_util_1, 832, 114, 23, 25)).
code(mock_util_1_code5, single_variable_declaration, mock_util_1_code3, (parameters, 0), range(mock_util_1, 848, 35, 23, 23)).
code(mock_util_1_code6, simple_type, mock_util_1_code5, type, range(mock_util_1, 848, 17, 23, 23)).
code(mock_util_1_code7, method_declaration, mock_util_1_code2, (body_declarations, 2), range(mock_util_1, 958, 66, 27, 29)).
code(mock_util_1_code8, simple_type, mock_util_1_expr5, type, range(mock_util_1, 996, 17, 28, 28)).
code(mock_util_1_code9, method_declaration, mock_util_1_code2, (body_declarations, 3), range(mock_util_1, 1032, 1063, 31, 49)).
code(mock_util_1_code10, simple_type, mock_util_1_stmt5, type, range(mock_util_1, 1302, 8, 35, 35)).
code(mock_util_1_code11, variable_declaration_fragment, mock_util_1_stmt5, (fragments, 0), range(mock_util_1, 1311, 60, 35, 35)).
code(mock_util_1_code12, simple_type, mock_util_1_expr9, type, range(mock_util_1, 1326, 8, 35, 35)).
code(mock_util_1_code13, parameterized_type, mock_util_1_stmt6, type, range(mock_util_1, 1382, 14, 36, 36)).
code(mock_util_1_code14, simple_type, mock_util_1_code13, type, range(mock_util_1, 1382, 11, 36, 36)).
code(mock_util_1_code15, simple_type, mock_util_1_code13, (type_arguments, 0), range(mock_util_1, 1394, 1, 36, 36)).
code(mock_util_1_code16, variable_declaration_fragment, mock_util_1_stmt6, (fragments, 0), range(mock_util_1, 1397, 84, 36, 36)).
code(mock_util_1_code17, parameterized_type, mock_util_1_expr11, type, range(mock_util_1, 1415, 14, 36, 36)).
code(mock_util_1_code18, simple_type, mock_util_1_code17, type, range(mock_util_1, 1415, 11, 36, 36)).
code(mock_util_1_code19, simple_type, mock_util_1_code17, (type_arguments, 0), range(mock_util_1, 1427, 1, 36, 36)).
code(mock_util_1_code20, simple_type, mock_util_1_expr12, type, range(mock_util_1, 1454, 14, 36, 36)).
code(mock_util_1_code22, simple_type, mock_util_1_code21, type, range(mock_util_1, 1492, 23, 37, 37)).
code(mock_util_1_code21, parameterized_type, mock_util_1_stmt7, type, range(mock_util_1, 1492, 39, 37, 37)).
code(mock_util_1_code23, parameterized_type, mock_util_1_code21, (type_arguments, 0), range(mock_util_1, 1516, 14, 37, 37)).
code(mock_util_1_code24, simple_type, mock_util_1_code23, type, range(mock_util_1, 1516, 11, 37, 37)).
code(mock_util_1_code25, simple_type, mock_util_1_code23, (type_arguments, 0), range(mock_util_1, 1528, 1, 37, 37)).
code(mock_util_1_code26, variable_declaration_fragment, mock_util_1_stmt7, (fragments, 0), range(mock_util_1, 1532, 78, 37, 37)).
code(mock_util_1_code28, simple_type, mock_util_1_code27, type, range(mock_util_1, 1545, 23, 37, 37)).
code(mock_util_1_code27, parameterized_type, mock_util_1_expr13, type, range(mock_util_1, 1545, 39, 37, 37)).
code(mock_util_1_code29, parameterized_type, mock_util_1_code27, (type_arguments, 0), range(mock_util_1, 1569, 14, 37, 37)).
code(mock_util_1_code30, simple_type, mock_util_1_code29, type, range(mock_util_1, 1569, 11, 37, 37)).
code(mock_util_1_code31, simple_type, mock_util_1_code29, (type_arguments, 0), range(mock_util_1, 1581, 1, 37, 37)).
code(mock_util_1_code34, simple_type, mock_util_1_code33, type, range(mock_util_1, 1621, 5, 38, 38)).
code(mock_util_1_code33, parameterized_type, mock_util_1_code32, element_type, range(mock_util_1, 1621, 8, 38, 38)).
code(mock_util_1_code32, array_type, mock_util_1_stmt8, type, range(mock_util_1, 1621, 10, 38, 38)).
code(mock_util_1_code35, wildcard_type, mock_util_1_code33, (type_arguments, 0), range(mock_util_1, 1627, 1, 38, 38)).
code(mock_util_1_code36, dimension, mock_util_1_code32, (dimensions, 0), range(mock_util_1, 1629, 2, 38, 38)).
code(mock_util_1_code37, variable_declaration_fragment, mock_util_1_stmt8, (fragments, 0), range(mock_util_1, 1632, 42, 38, 38)).
code(mock_util_1_code40, simple_type, mock_util_1_code39, type, range(mock_util_1, 1685, 5, 39, 39)).
code(mock_util_1_code39, parameterized_type, mock_util_1_code38, element_type, range(mock_util_1, 1685, 8, 39, 39)).
code(mock_util_1_code38, array_type, mock_util_1_stmt9, type, range(mock_util_1, 1685, 10, 39, 39)).
code(mock_util_1_code41, wildcard_type, mock_util_1_code39, (type_arguments, 0), range(mock_util_1, 1691, 1, 39, 39)).
code(mock_util_1_code42, dimension, mock_util_1_code38, (dimensions, 0), range(mock_util_1, 1693, 2, 39, 39)).
code(mock_util_1_code43, variable_declaration_fragment, mock_util_1_stmt9, (fragments, 0), range(mock_util_1, 1696, 66, 39, 39)).
code(mock_util_1_code46, simple_type, mock_util_1_code45, type, range(mock_util_1, 1738, 5, 39, 39)).
code(mock_util_1_code44, array_type, mock_util_1_expr17, type, range(mock_util_1, 1738, 11, 39, 39)).
code(mock_util_1_code45, parameterized_type, mock_util_1_code44, element_type, range(mock_util_1, 1738, 8, 39, 39)).
code(mock_util_1_code47, wildcard_type, mock_util_1_code45, (type_arguments, 0), range(mock_util_1, 1744, 1, 39, 39)).
code(mock_util_1_code48, dimension, mock_util_1_code44, (dimensions, 0), range(mock_util_1, 1746, 3, 39, 39)).
code(mock_util_1_code49, simple_type, mock_util_1_stmt10, type, range(mock_util_1, 1773, 6, 40, 40)).
code(mock_util_1_code50, variable_declaration_fragment, mock_util_1_stmt10, (fragments, 0), range(mock_util_1, 1780, 43, 40, 40)).
%registered_invocations_1 - org.mockito.internal.verification.RegisteredInvocations
code(registered_invocations_1_code1, compilation_unit, range(registered_invocations_1, 0, 1064, 1, -1)).
code(registered_invocations_1_code3, modifier, registered_invocations_1_code2, (modifiers, 0), range(registered_invocations_1, 393, 6, 16, 16)).
code(registered_invocations_1_code2, type_declaration, registered_invocations_1_code1, (types, 0), range(registered_invocations_1, 393, 671, 16, -1)).
code(registered_invocations_1_code4, field_declaration, registered_invocations_1_code2, (body_declarations, 0), range(registered_invocations_1, 435, 104, 18, 18)).
code(registered_invocations_1_code5, modifier, registered_invocations_1_code4, (modifiers, 0), range(registered_invocations_1, 435, 7, 18, 18)).
code(registered_invocations_1_code6, modifier, registered_invocations_1_code4, (modifiers, 1), range(registered_invocations_1, 443, 5, 18, 18)).
code(registered_invocations_1_code8, simple_type, registered_invocations_1_code7, type, range(registered_invocations_1, 449, 4, 18, 18)).
code(registered_invocations_1_code7, parameterized_type, registered_invocations_1_code4, type, range(registered_invocations_1, 449, 16, 18, 18)).
code(registered_invocations_1_code9, simple_type, registered_invocations_1_code7, (type_arguments, 0), range(registered_invocations_1, 454, 10, 18, 18)).
code(registered_invocations_1_code10, variable_declaration_fragment, registered_invocations_1_code4, (fragments, 0), range(registered_invocations_1, 466, 72, 18, 18)).
code(registered_invocations_1_code11, parameterized_type, registered_invocations_1_expr2, type, range(registered_invocations_1, 513, 22, 18, 18)).
code(registered_invocations_1_code12, simple_type, registered_invocations_1_code11, type, range(registered_invocations_1, 513, 10, 18, 18)).
code(registered_invocations_1_code13, simple_type, registered_invocations_1_code11, (type_arguments, 0), range(registered_invocations_1, 524, 10, 18, 18)).
code(registered_invocations_1_code14, type_declaration, registered_invocations_1_code2, (body_declarations, 4), range(registered_invocations_1, 871, 191, 32, 36)).
code(registered_invocations_1_code15, modifier, registered_invocations_1_code14, (modifiers, 0), range(registered_invocations_1, 871, 7, 32, 32)).
code(registered_invocations_1_code16, modifier, registered_invocations_1_code14, (modifiers, 1), range(registered_invocations_1, 879, 6, 32, 32)).
code(registered_invocations_1_code18, simple_type, registered_invocations_1_code17, type, range(registered_invocations_1, 918, 6, 32, 32)).
code(registered_invocations_1_code17, parameterized_type, registered_invocations_1_code14, (super_interface_types, 0), range(registered_invocations_1, 918, 18, 32, 32)).
code(registered_invocations_1_code19, simple_type, registered_invocations_1_code17, (type_arguments, 0), range(registered_invocations_1, 925, 10, 32, 32)).

%%% Name References

name_ref(t_actual_invocation_has_null_argument_npebug_test_36, type, 'ActualInvocationHasNullArgumentNPEBugTest', 'Lorg/mockitousage/bugs/ActualInvocationHasNullArgumentNPEBugTest;').
name_ref(t_argument_matcher_1, type, 'ArgumentMatcher', 'Lorg/mockito/ArgumentMatcher<TT;>;').
name_ref(t_argument_matcher_storage_impl_16, type, 'ArgumentMatcherStorageImpl', 'Lorg/mockito/internal/progress/ArgumentMatcherStorageImpl;').
name_ref(t_argument_matching_tool_32, type, 'ArgumentMatchingTool', 'Lorg/mockito/internal/verification/argumentmatching/ArgumentMatchingTool;').
name_ref(t_argument_matching_tool_test_34, type, 'ArgumentMatchingToolTest', 'Lorg/mockito/internal/verification/argumentmatching/ArgumentMatchingToolTest;').
name_ref(t_arrays_35, type, 'Arrays', 'Ljava/util/Arrays;').
name_ref(t_calls_real_methods_21, type, 'CallsRealMethods', 'Lorg/mockito/internal/stubbing/answers/CallsRealMethods;').
name_ref(t_class_9, type, 'Class', 'Ljava/lang/Class<>;').
name_ref(t_class_imposterizer_28, type, 'ClassImposterizer', 'Lorg/mockito/internal/creation/jmock/ClassImposterizer;').
name_ref(t_class_path_loader_8, type, 'ClassPathLoader', 'Lorg/mockito/internal/configuration/ClassPathLoader;').
name_ref(t_collections_30, type, 'Collections', 'Ljava/util/Collections;').
name_ref(t_configuration_access_39, type, 'ConfigurationAccess', 'Lorg/mockito/internal/configuration/ConfigurationAccess;').
name_ref(t_creation_validator_27, type, 'CreationValidator', 'Lorg/mockito/internal/util/CreationValidator;').
name_ref(t_debugging_info_14, type, 'DebuggingInfo', 'Lorg/mockito/internal/debugging/DebuggingInfo;').
name_ref(t_default_annotation_engine_10, type, 'DefaultAnnotationEngine', 'Lorg/mockito/internal/configuration/DefaultAnnotationEngine;').
name_ref(t_default_mockito_configuration_4, type, 'DefaultMockitoConfiguration', 'Lorg/mockito/configuration/DefaultMockitoConfiguration;').
name_ref(t_fun_37, type, 'Fun', 'Lorg/mockitousage/bugs/ActualInvocationHasNullArgumentNPEBugTest$Fun;').
name_ref(t_global_configuration_18, type, 'GlobalConfiguration', 'Lorg/mockito/internal/configuration/GlobalConfiguration;').
name_ref(t_globally_configured_answer_22, type, 'GloballyConfiguredAnswer', 'Lorg/mockito/internal/stubbing/defaultanswers/GloballyConfiguredAnswer;').
name_ref(t_matchers_binder_15, type, 'MatchersBinder', 'Lorg/mockito/internal/invocation/MatchersBinder;').
name_ref(t_mock_settings_impl_11, type, 'MockSettingsImpl', 'Lorg/mockito/internal/creation/MockSettingsImpl;').
name_ref(t_mocking_progress_impl_17, type, 'MockingProgressImpl', 'Lorg/mockito/internal/progress/MockingProgressImpl;').
name_ref(t_mockito_annotations_40, type, 'MockitoAnnotations', 'Lorg/mockito/MockitoAnnotations;').
name_ref(t_mockito_configuration_5, type, 'MockitoConfiguration', 'Lorg/mockito/configuration/MockitoConfiguration;').
name_ref(t_mockito_core_7, type, 'MockitoCore', 'Lorg/mockito/internal/MockitoCore;').
name_ref(t_mockito_naming_policy_12, type, 'MockitoNamingPolicy', 'Lorg/mockito/internal/creation/cglib/MockitoNamingPolicy;').
name_ref(t_modifier_13, type, 'Modifier', 'Ljava/lang/reflect/Modifier;').
name_ref(t_registered_invocations_29, type, 'RegisteredInvocations', 'Lorg/mockito/internal/verification/RegisteredInvocations;').
name_ref(t_remove_to_string_31, type, 'RemoveToString', 'Lorg/mockito/internal/verification/RegisteredInvocations$RemoveToString;').
name_ref(t_reporter_6, type, 'Reporter', 'Lorg/mockito/exceptions/Reporter;').
name_ref(t_returns_empty_values_23, type, 'ReturnsEmptyValues', 'Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValues;').
name_ref(t_returns_mocks_24, type, 'ReturnsMocks', 'Lorg/mockito/internal/stubbing/defaultanswers/ReturnsMocks;').
name_ref(t_returns_more_empty_values_25, type, 'ReturnsMoreEmptyValues', 'Lorg/mockito/internal/stubbing/defaultanswers/ReturnsMoreEmptyValues;').
name_ref(t_returns_smart_nulls_26, type, 'ReturnsSmartNulls', 'Lorg/mockito/internal/stubbing/defaultanswers/ReturnsSmartNulls;').
name_ref(t_state_master_3, type, 'StateMaster', 'Lorg/mockito/StateMaster;').
name_ref(t_string_description_33, type, 'StringDescription', 'Lorg/hamcrest/StringDescription;').
name_ref(t_suppress_warnings_20, type, 'SuppressWarnings', 'Ljava/lang/SuppressWarnings;').
name_ref(t_t_2, type, 'T', 'Lorg/mockito/ArgumentMatcher;:TT;').
name_ref(t_test_base_38, type, 'TestBase', 'Lorg/mockitoutil/TestBase;').
name_ref(t_thread_safe_mocking_progress_19, type, 'ThreadSafeMockingProgress', 'Lorg/mockito/internal/progress/ThreadSafeMockingProgress;').
name_ref(v_ancillary_types_298, var, 'ancillaryTypes', 'Lorg/mockito/internal/util/MockUtil;.createMock<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Lorg/mockito/internal/progress/MockingProgress;Lorg/mockito/internal/creation/MockSettingsImpl;)TT;#ancillaryTypes').
name_ref(v_annotation_73, var, 'annotation', 'Lorg/mockito/MockitoAnnotations;.scan(Ljava/lang/Object;Ljava/lang/Class<*>;)V#0#0#annotation').
name_ref(v_annotation_engine_70, var, 'annotationEngine', 'Lorg/mockito/MockitoAnnotations;.scan(Ljava/lang/Object;Ljava/lang/Class<*>;)V#annotationEngine').
name_ref(v_class_name_288, var, 'className', 'Lorg/mockito/internal/util/MockName;.toInstanceName(Ljava/lang/Class<*>;)Ljava/lang/String;#className').
name_ref(v_clazz_67, var, 'clazz', 'Lorg/mockito/MockitoAnnotations;.initMocks(Ljava/lang/Object;)V#clazz').
name_ref(v_config_166, var, 'config', 'Lorg/mockito/internal/configuration/GlobalConfiguration;.createConfig()Lorg/mockito/configuration/IMockitoConfiguration;#config').
name_ref(v_config_class_161, var, 'configClass', 'Lorg/mockito/internal/configuration/ClassPathLoader;.loadConfiguration()Lorg/mockito/configuration/IMockitoConfiguration;#configClass').
name_ref(v_constructor_201, var, 'constructor', 'Lorg/mockito/internal/creation/jmock/ClassImposterizer;.setConstructorsAccessible(Ljava/lang/Class<*>;Z)V#0#constructor').
name_ref(v_default_configuration_165, var, 'defaultConfiguration', 'Lorg/mockito/internal/configuration/GlobalConfiguration;.createConfig()Lorg/mockito/configuration/IMockitoConfiguration;#defaultConfiguration').
name_ref(v_field_72, var, 'field', 'Lorg/mockito/MockitoAnnotations;.scan(Ljava/lang/Object;Ljava/lang/Class<*>;)V#0#field').
name_ref(v_fields_71, var, 'fields', 'Lorg/mockito/MockitoAnnotations;.scan(Ljava/lang/Object;Ljava/lang/Class<*>;)V#fields').
name_ref(v_filter_296, var, 'filter', 'Lorg/mockito/internal/util/MockUtil;.createMock<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Lorg/mockito/internal/progress/MockingProgress;Lorg/mockito/internal/creation/MockSettingsImpl;)TT;#filter').
name_ref(v_i_313, var, 'i', 'Lorg/mockito/internal/verification/argumentmatching/ArgumentMatchingTool;.getSuspiciouslyNotMatchingArgsIndexes(Ljava/util/List<Lorg/hamcrest/Matcher;>;[Ljava/lang/Object;)[Ljava/lang/Integer;#i').
name_ref(v_interfaces_297, var, 'interfaces', 'Lorg/mockito/internal/util/MockUtil;.createMock<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Lorg/mockito/internal/progress/MockingProgress;Lorg/mockito/internal/creation/MockSettingsImpl;)TT;#interfaces').
name_ref(v_m_314, var, 'm', 'Lorg/mockito/internal/verification/argumentmatching/ArgumentMatchingTool;.getSuspiciouslyNotMatchingArgsIndexes(Ljava/util/List<Lorg/hamcrest/Matcher;>;[Ljava/lang/Object;)[Ljava/lang/Integer;#0#m').
name_ref(v_mock_handler_295, var, 'mockHandler', 'Lorg/mockito/internal/util/MockUtil;.createMock<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Lorg/mockito/internal/progress/MockingProgress;Lorg/mockito/internal/creation/MockSettingsImpl;)TT;#mockHandler').
name_ref(v_mock_name_294, var, 'mockName', 'Lorg/mockito/internal/util/MockUtil;.createMock<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Lorg/mockito/internal/progress/MockingProgress;Lorg/mockito/internal/creation/MockSettingsImpl;)TT;#mockName').
name_ref(v_spied_instance_299, var, 'spiedInstance', 'Lorg/mockito/internal/util/MockUtil;.createMock<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Lorg/mockito/internal/progress/MockingProgress;Lorg/mockito/internal/creation/MockSettingsImpl;)TT;#spiedInstance').
name_ref(v_suspicious_312, var, 'suspicious', 'Lorg/mockito/internal/verification/argumentmatching/ArgumentMatchingTool;.getSuspiciouslyNotMatchingArgsIndexes(Ljava/util/List<Lorg/hamcrest/Matcher;>;[Ljava/lang/Object;)[Ljava/lang/Integer;#suspicious').
name_ref(v_suspicious_321, var, 'suspicious', 'Lorg/mockito/internal/verification/argumentmatching/ArgumentMatchingToolTest;.shouldWorkFineWhenGivenArgIsNull()V#suspicious').
name_ref(v_text_225, var, 'text', 'Lorg/mockito/internal/matchers/Equals;.describe(Ljava/lang/Object;)Ljava/lang/String;#text').
name_ref(p_a_326, param, 'a', 'Lorg/mockitoutil/TestBase;.assertThat<T:Ljava/lang/Object;>(TT;Lorg/mockitoutil/Assertor<TT;>;)V#a#0#1').
name_ref(p_accessible_200, param, 'accessible', 'Lorg/mockito/internal/creation/jmock/ClassImposterizer;.setConstructorsAccessible(Ljava/lang/Class<*>;Z)V#accessible#0#1').
name_ref(p_actual_222, param, 'actual', 'Lorg/mockito/internal/matchers/Equals;.matches(Ljava/lang/Object;)Z#actual#0#0').
name_ref(p_actual_327, param, 'actual', 'Lorg/mockitoutil/TestBase;.assertThat<T:Ljava/lang/Object;>(TT;Lorg/hamcrest/Matcher<TT;>;)V#actual#0#0').
name_ref(p_actual_330, param, 'actual', 'Lorg/mockitoutil/TestBase;.assertThat<T:Ljava/lang/Object;>(Ljava/lang/String;TT;Lorg/hamcrest/Matcher<TT;>;)V#actual#0#1').
name_ref(p_actual_87, param, 'actual', 'Lorg/mockito/exceptions/Reporter;.argumentsAreDifferent(Ljava/lang/String;Ljava/lang/String;Lorg/mockito/internal/debugging/Location;)V#actual#0#1').
name_ref(p_actual_count_100, param, 'actualCount', 'Lorg/mockito/exceptions/Reporter;.createTooManyInvocationsMessage(IILorg/mockito/exceptions/PrintableInvocation;Lorg/mockito/internal/debugging/Location;)Ljava/lang/String;#actualCount#0#1').
name_ref(p_actual_count_106, param, 'actualCount', 'Lorg/mockito/exceptions/Reporter;.tooManyActualInvocationsInOrder(IILorg/mockito/exceptions/PrintableInvocation;Lorg/mockito/internal/debugging/Location;)V#actualCount#0#1').
name_ref(p_actual_count_96, param, 'actualCount', 'Lorg/mockito/exceptions/Reporter;.tooManyActualInvocations(IILorg/mockito/exceptions/PrintableInvocation;Lorg/mockito/internal/debugging/Location;)V#actualCount#0#1').
name_ref(p_actual_location_88, param, 'actualLocation', 'Lorg/mockito/exceptions/Reporter;.argumentsAreDifferent(Ljava/lang/String;Ljava/lang/String;Lorg/mockito/internal/debugging/Location;)V#actualLocation#0#2').
name_ref(p_actual_type_121, param, 'actualType', 'Lorg/mockito/exceptions/Reporter;.wrongTypeOfReturnValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V#actualType#0#1').
name_ref(p_ancillary_types_198, param, 'ancillaryTypes', 'Lorg/mockito/internal/creation/jmock/ClassImposterizer;.imposterise<T:Ljava/lang/Object;>(Lorg/mockito/cglib/proxy/MethodInterceptor;Ljava/lang/Class<TT;>;[Ljava/lang/Class<*>;)TT;#ancillaryTypes#0#2').
name_ref(p_annotation_162, param, 'annotation', 'Lorg/mockito/internal/configuration/DefaultAnnotationEngine;.createMockFor(Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Field;)Ljava/lang/Object;#annotation#0#0').
name_ref(p_annotation_79, param, 'annotation', 'Lorg/mockito/configuration/MockitoConfiguration$1359;.createMockFor(Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Field;)Ljava/lang/Object;#annotation#0#0').
name_ref(p_answer_159, param, 'answer', 'Lorg/mockito/internal/MockitoCore;.doAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/stubbing/Stubber;#answer#0#0').
name_ref(p_answer_252, param, 'answer', 'Lorg/mockito/internal/stubbing/MockitoStubber;.addAnswer(Lorg/mockito/stubbing/Answer;)V#answer#0#0').
name_ref(p_answer_253, param, 'answer', 'Lorg/mockito/internal/stubbing/MockitoStubber;.addConsecutiveAnswer(Lorg/mockito/stubbing/Answer;)V#answer#0#0').
name_ref(p_answer_254, param, 'answer', 'Lorg/mockito/internal/stubbing/MockitoStubber;.addAnswer(Lorg/mockito/stubbing/Answer;Z)V#answer#0#0').
name_ref(p_answer_258, param, 'answer', 'Lorg/mockito/internal/stubbing/MockitoStubber;.addAnswerForVoidMethod(Lorg/mockito/stubbing/Answer;)V#answer#0#0').
name_ref(p_answer_60, param, 'answer', 'Lorg/mockito/Mockito;.doAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/stubbing/Stubber;#answer#0#0').
name_ref(p_answers_145, param, 'answers', 'Lorg/mockito/internal/MockHandler;.setAnswersForStubbing(Ljava/util/List<Lorg/mockito/stubbing/Answer;>;)V#answers#0#0').
name_ref(p_answers_259, param, 'answers', 'Lorg/mockito/internal/stubbing/MockitoStubber;.setAnswersForStubbing(Ljava/util/List<Lorg/mockito/stubbing/Answer;>;)V#answers#0#0').
name_ref(p_arg_316, param, 'arg', 'Lorg/mockito/internal/verification/argumentmatching/ArgumentMatchingTool;.safelyMatches(Lorg/hamcrest/Matcher;Ljava/lang/Object;)Z#arg#0#1').
name_ref(p_arg_318, param, 'arg', 'Lorg/mockito/internal/verification/argumentmatching/ArgumentMatchingTool;.toStringEquals(Lorg/hamcrest/Matcher;Ljava/lang/Object;)Z#arg#0#1').
name_ref(p_args_142, param, 'args', 'Lorg/mockito/internal/MockHandler;.intercept(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lorg/mockito/cglib/proxy/MethodProxy;)Ljava/lang/Object;|Ljava/lang/Throwable;#args#0#2').
name_ref(p_args_174, param, 'args', 'Lorg/mockito/internal/creation/MethodInterceptorFilter;.intercept(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lorg/mockito/cglib/proxy/MethodProxy;)Ljava/lang/Object;|Ljava/lang/Throwable;#args#0#2').
name_ref(p_args_276, param, 'args', 'Lorg/mockito/internal/stubbing/defaultanswers/ReturnsSmartNulls$ThrowingInterceptor;.intercept(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lorg/mockito/cglib/proxy/MethodProxy;)Ljava/lang/Object;|Ljava/lang/Throwable;#args#0#2').
name_ref(p_args_342, param, 'args', 'Lorg/mockitoutil/TestBase;.invocationOf(Ljava/lang/Class<*>;Ljava/lang/String;[Ljava/lang/Object;)Lorg/mockito/internal/invocation/Invocation;|Ljava/lang/NoSuchMethodException;#args#0#2').
name_ref(p_argument_1, param, 'argument', 'Lorg/mockito/ArgumentMatcher;.matches(Ljava/lang/Object;)Z#argument#0#0').
name_ref(p_argument_matcher_storage_216, param, 'argumentMatcherStorage', 'Lorg/mockito/internal/invocation/MatchersBinder;.bindMatchers(Lorg/mockito/internal/progress/ArgumentMatcherStorage;Lorg/mockito/internal/invocation/Invocation;)Lorg/mockito/internal/invocation/InvocationMatcher;#argumentMatcherStorage#0#0').
name_ref(p_arguments_311, param, 'arguments', 'Lorg/mockito/internal/verification/argumentmatching/ArgumentMatchingTool;.getSuspiciouslyNotMatchingArgsIndexes(Ljava/util/List<Lorg/hamcrest/Matcher;>;[Ljava/lang/Object;)[Ljava/lang/Integer;#arguments#0#1').
name_ref(p_class_to_mock_149, param, 'classToMock', 'Lorg/mockito/internal/MockitoCore;.mock<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Lorg/mockito/MockSettings;)TT;#classToMock#0#0').
name_ref(p_class_to_mock_280, param, 'classToMock', 'Lorg/mockito/internal/util/CreationValidator;.validateType(Ljava/lang/Class;)V#classToMock#0#0').
name_ref(p_class_to_mock_281, param, 'classToMock', 'Lorg/mockito/internal/util/CreationValidator;.validateExtraInterfaces(Ljava/lang/Class;[Ljava/lang/Class;)V#classToMock#0#0').
name_ref(p_class_to_mock_284, param, 'classToMock', 'Lorg/mockito/internal/util/MockName;.(Ljava/lang/String;Ljava/lang/Class;)V#classToMock#0#1').
name_ref(p_class_to_mock_291, param, 'classToMock', 'Lorg/mockito/internal/util/MockUtil;.createMock<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Lorg/mockito/internal/progress/MockingProgress;Lorg/mockito/internal/creation/MockSettingsImpl;)TT;#classToMock#0#0').
name_ref(p_class_to_mock_40, param, 'classToMock', 'Lorg/mockito/Mockito;.mock<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)TT;#classToMock#0#0').
name_ref(p_class_to_mock_41, param, 'classToMock', 'Lorg/mockito/Mockito;.mock<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Ljava/lang/String;)TT;#classToMock#0#0').
name_ref(p_class_to_mock_43, param, 'classToMock', 'Lorg/mockito/Mockito;.mock<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Lorg/mockito/ReturnValues;)TT;#classToMock#0#0').
name_ref(p_class_to_mock_45, param, 'classToMock', 'Lorg/mockito/Mockito;.mock<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Lorg/mockito/stubbing/Answer;)TT;#classToMock#0#0').
name_ref(p_class_to_mock_47, param, 'classToMock', 'Lorg/mockito/Mockito;.mock<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Lorg/mockito/MockSettings;)TT;#classToMock#0#0').
name_ref(p_clazz_119, param, 'clazz', 'Lorg/mockito/exceptions/Reporter;.cannotMockFinalClass(Ljava/lang/Class<*>;)V#clazz#0#0').
name_ref(p_clazz_269, param, 'clazz', 'Lorg/mockito/internal/stubbing/defaultanswers/ReturnsMocks;.returnValueFor(Ljava/lang/Class<*>;)Ljava/lang/Object;#clazz#0#0').
name_ref(p_clazz_287, param, 'clazz', 'Lorg/mockito/internal/util/MockName;.toInstanceName(Ljava/lang/Class<*>;)Ljava/lang/String;#clazz#0#0').
name_ref(p_clazz_4, param, 'clazz', 'Lorg/mockito/Matchers;.any<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)TT;#clazz#0#0').
name_ref(p_clazz_5, param, 'clazz', 'Lorg/mockito/Matchers;.anyListOf<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)Ljava/util/List<TT;>;#clazz#0#0').
name_ref(p_clazz_6, param, 'clazz', 'Lorg/mockito/Matchers;.anySetOf<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)Ljava/util/Set<TT;>;#clazz#0#0').
name_ref(p_clazz_69, param, 'clazz', 'Lorg/mockito/MockitoAnnotations;.scan(Ljava/lang/Object;Ljava/lang/Class<*>;)V#clazz#0#1').
name_ref(p_clazz_7, param, 'clazz', 'Lorg/mockito/Matchers;.anyCollectionOf<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)Ljava/util/Collection<TT;>;#clazz#0#0').
name_ref(p_clazz_8, param, 'clazz', 'Lorg/mockito/Matchers;.isA<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)TT;#clazz#0#0').
name_ref(p_cleans_stack_trace_77, param, 'cleansStackTrace', 'Lorg/mockito/configuration/MockitoConfiguration;.overrideCleansStackTrace(Z)V#cleansStackTrace#0#0').
name_ref(p_constructors_205, param, 'constructors', 'Lorg/mockito/internal/creation/jmock/ClassImposterizer$3235;.filterConstructors(Ljava/lang/Class;Ljava/util/List;)V#constructors#0#1').
name_ref(p_count_231, param, 'count', 'Lorg/mockito/internal/progress/ArgumentMatcherStorageImpl;.popLastArgumentMatchers(I)Ljava/util/List<Lorg/hamcrest/Matcher;>;#count#0#0').
name_ref(p_creation_validator_289, param, 'creationValidator', 'Lorg/mockito/internal/util/MockUtil;.(Lorg/mockito/internal/util/CreationValidator;)V#creationValidator#0#0').
name_ref(p_default_answer_183, param, 'defaultAnswer', 'Lorg/mockito/internal/creation/MockSettingsImpl;.defaultAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/MockSettings;#defaultAnswer#0#0').
name_ref(p_default_answer_46, param, 'defaultAnswer', 'Lorg/mockito/Mockito;.mock<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Lorg/mockito/stubbing/Answer;)TT;#defaultAnswer#0#1').
name_ref(p_default_answer_76, param, 'defaultAnswer', 'Lorg/mockito/configuration/MockitoConfiguration;.overrideDefaultAnswer(Lorg/mockito/stubbing/Answer<Ljava/lang/Object;>;)V#defaultAnswer#0#0').
name_ref(p_delegate_168, param, 'delegate', 'Lorg/mockito/internal/creation/MethodInterceptorFilter;.(Ljava/lang/Class;TT;)V#delegate#0#1').
name_ref(p_desc_320, param, 'desc', 'Lorg/mockito/internal/verification/argumentmatching/ArgumentMatchingToolTest$2107;.describeTo(Lorg/hamcrest/Description;)V#desc#0#0').
name_ref(p_description_2, param, 'description', 'Lorg/mockito/ArgumentMatcher;.describeTo(Lorg/hamcrest/Description;)V#description#0#0').
name_ref(p_description_223, param, 'description', 'Lorg/mockito/internal/matchers/Equals;.describeTo(Lorg/hamcrest/Description;)V#description#0#0').
name_ref(p_description_227, param, 'description', 'Lorg/mockito/internal/matchers/Equals$1807;.describeTo(Lorg/hamcrest/Description;)V#description#0#0').
name_ref(p_description_323, param, 'description', 'Lorg/mockito/internal/verification/argumentmatching/ArgumentMatchingToolTest$3063;.describeTo(Lorg/hamcrest/Description;)V#description#0#0').
name_ref(p_discrepancy_109, param, 'discrepancy', 'Lorg/mockito/exceptions/Reporter;.createTooLittleInvocationsMessage(Lorg/mockito/exceptions/Discrepancy;Lorg/mockito/exceptions/PrintableInvocation;Lorg/mockito/internal/debugging/Location;)Ljava/lang/String;#discrepancy#0#0').
name_ref(p_discrepancy_112, param, 'discrepancy', 'Lorg/mockito/exceptions/Reporter;.tooLittleActualInvocations(Lorg/mockito/exceptions/Discrepancy;Lorg/mockito/exceptions/PrintableInvocation;Lorg/mockito/internal/debugging/Location;)V#discrepancy#0#0').
name_ref(p_discrepancy_115, param, 'discrepancy', 'Lorg/mockito/exceptions/Reporter;.tooLittleActualInvocationsInOrder(Lorg/mockito/exceptions/Discrepancy;Lorg/mockito/exceptions/PrintableInvocation;Lorg/mockito/internal/debugging/Location;)V#discrepancy#0#0').
name_ref(p_exclude_fields_19, param, 'excludeFields', 'Lorg/mockito/Matchers;.refEq<T:Ljava/lang/Object;>(TT;[Ljava/lang/String;)TT;#excludeFields#0#1').
name_ref(p_expected_334, param, 'expected', 'Lorg/mockitoutil/TestBase;.assertNotEquals(Ljava/lang/Object;Ljava/lang/Object;)V#expected#0#0').
name_ref(p_expected_matchers_count_84, param, 'expectedMatchersCount', 'Lorg/mockito/exceptions/Reporter;.invalidUseOfMatchers(II)V#expectedMatchersCount#0#0').
name_ref(p_expected_type_120, param, 'expectedType', 'Lorg/mockito/exceptions/Reporter;.wrongTypeOfReturnValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V#expectedType#0#0').
name_ref(p_extra_interfaces_177, param, 'extraInterfaces', 'Lorg/mockito/internal/creation/MockSettingsImpl;.extraInterfaces([Ljava/lang/Class<*>;)Lorg/mockito/MockSettings;#extraInterfaces#0#0').
name_ref(p_extra_interfaces_282, param, 'extraInterfaces', 'Lorg/mockito/internal/util/CreationValidator;.validateExtraInterfaces(Ljava/lang/Class;[Ljava/lang/Class;)V#extraInterfaces#0#1').
name_ref(p_field_163, param, 'field', 'Lorg/mockito/internal/configuration/DefaultAnnotationEngine;.createMockFor(Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Field;)Ljava/lang/Object;#field#0#1').
name_ref(p_field_80, param, 'field', 'Lorg/mockito/configuration/MockitoConfiguration$1359;.createMockFor(Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Field;)Ljava/lang/Object;#field#0#1').
name_ref(p_first_208, param, 'first', 'Lorg/mockito/internal/creation/jmock/ClassImposterizer;.prepend(Ljava/lang/Class<*>;[Ljava/lang/Class<*>;)[Ljava/lang/Class<*>;#first#0#0').
name_ref(p_first_undesired_102, param, 'firstUndesired', 'Lorg/mockito/exceptions/Reporter;.createTooManyInvocationsMessage(IILorg/mockito/exceptions/PrintableInvocation;Lorg/mockito/internal/debugging/Location;)Ljava/lang/String;#firstUndesired#0#3').
name_ref(p_first_undesired_104, param, 'firstUndesired', 'Lorg/mockito/exceptions/Reporter;.neverWantedButInvoked(Lorg/mockito/exceptions/PrintableInvocation;Lorg/mockito/internal/debugging/Location;)V#firstUndesired#0#1').
name_ref(p_first_undesired_108, param, 'firstUndesired', 'Lorg/mockito/exceptions/Reporter;.tooManyActualInvocationsInOrder(IILorg/mockito/exceptions/PrintableInvocation;Lorg/mockito/internal/debugging/Location;)V#firstUndesired#0#3').
name_ref(p_first_undesired_98, param, 'firstUndesired', 'Lorg/mockito/exceptions/Reporter;.tooManyActualInvocations(IILorg/mockito/exceptions/PrintableInvocation;Lorg/mockito/internal/debugging/Location;)V#firstUndesired#0#3').
name_ref(p_found_size_124, param, 'foundSize', 'Lorg/mockito/exceptions/Reporter;.wantedAtMostX(II)V#foundSize#0#1').
name_ref(p_got_335, param, 'got', 'Lorg/mockitoutil/TestBase;.assertNotEquals(Ljava/lang/Object;Ljava/lang/Object;)V#got#0#1').
name_ref(p_i_ongoing_stubbing_238, param, 'iOngoingStubbing', 'Lorg/mockito/internal/progress/MockingProgressImpl;.reportOngoingStubbing(Lorg/mockito/internal/progress/IOngoingStubbing;)V#iOngoingStubbing#0#0').
name_ref(p_i_ongoing_stubbing_244, param, 'iOngoingStubbing', 'Lorg/mockito/internal/progress/ThreadSafeMockingProgress;.reportOngoingStubbing(Lorg/mockito/internal/progress/IOngoingStubbing;)V#iOngoingStubbing#0#0').
name_ref(p_interceptor_196, param, 'interceptor', 'Lorg/mockito/internal/creation/jmock/ClassImposterizer;.imposterise<T:Ljava/lang/Object;>(Lorg/mockito/cglib/proxy/MethodInterceptor;Ljava/lang/Class<TT;>;[Ljava/lang/Class<*>;)TT;#interceptor#0#0').
name_ref(p_interceptor_207, param, 'interceptor', 'Lorg/mockito/internal/creation/jmock/ClassImposterizer;.createProxy(Ljava/lang/Class<*>;Lorg/mockito/cglib/proxy/MethodInterceptor;)Ljava/lang/Object;#interceptor#0#1').
name_ref(p_interfaces_203, param, 'interfaces', 'Lorg/mockito/internal/creation/jmock/ClassImposterizer;.createProxyClass<T:Ljava/lang/Object;>(Ljava/lang/Class<*>;[Ljava/lang/Class<*>;)Ljava/lang/Class<*>;#interfaces#0#1').
name_ref(p_invocation_212, param, 'invocation', 'Lorg/mockito/internal/debugging/DebuggingInfo;.addStubbedInvocation(Lorg/mockito/internal/invocation/Invocation;)V#invocation#0#0').
name_ref(p_invocation_217, param, 'invocation', 'Lorg/mockito/internal/invocation/MatchersBinder;.bindMatchers(Lorg/mockito/internal/progress/ArgumentMatcherStorage;Lorg/mockito/internal/invocation/Invocation;)Lorg/mockito/internal/invocation/InvocationMatcher;#invocation#0#1').
name_ref(p_invocation_218, param, 'invocation', 'Lorg/mockito/internal/invocation/MatchersBinder;.validateMatchers(Lorg/mockito/internal/invocation/Invocation;Ljava/util/List<Lorg/hamcrest/Matcher;>;)V#invocation#0#0').
name_ref(p_invocation_242, param, 'invocation', 'Lorg/mockito/internal/progress/MockingProgressImpl;.stubbingCompleted(Lorg/mockito/internal/invocation/Invocation;)V#invocation#0#0').
name_ref(p_invocation_246, param, 'invocation', 'Lorg/mockito/internal/progress/ThreadSafeMockingProgress;.stubbingCompleted(Lorg/mockito/internal/invocation/Invocation;)V#invocation#0#0').
name_ref(p_invocation_251, param, 'invocation', 'Lorg/mockito/internal/stubbing/MockitoStubber;.setInvocationForPotentialStubbing(Lorg/mockito/internal/invocation/InvocationMatcher;)V#invocation#0#0').
name_ref(p_invocation_256, param, 'invocation', 'Lorg/mockito/internal/stubbing/MockitoStubber;.answerTo(Lorg/mockito/internal/invocation/Invocation;)Ljava/lang/Object;|Ljava/lang/Throwable;#invocation#0#0').
name_ref(p_invocation_257, param, 'invocation', 'Lorg/mockito/internal/stubbing/MockitoStubber;.findAnswerFor(Lorg/mockito/internal/invocation/Invocation;)Lorg/mockito/stubbing/Answer<*>;#invocation#0#0').
name_ref(p_invocation_260, param, 'invocation', 'Lorg/mockito/internal/stubbing/MockitoStubber;.setMethodForStubbing(Lorg/mockito/internal/invocation/InvocationMatcher;)V#invocation#0#0').
name_ref(p_invocation_261, param, 'invocation', 'Lorg/mockito/internal/stubbing/answers/CallsRealMethods;.answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;|Ljava/lang/Throwable;#invocation#0#0').
name_ref(p_invocation_262, param, 'invocation', 'Lorg/mockito/internal/stubbing/defaultanswers/GloballyConfiguredAnswer;.answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;|Ljava/lang/Throwable;#invocation#0#0').
name_ref(p_invocation_263, param, 'invocation', 'Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValues;.answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;#invocation#0#0').
name_ref(p_invocation_268, param, 'invocation', 'Lorg/mockito/internal/stubbing/defaultanswers/ReturnsMocks;.answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;|Ljava/lang/Throwable;#invocation#0#0').
name_ref(p_invocation_271, param, 'invocation', 'Lorg/mockito/internal/stubbing/defaultanswers/ReturnsMoreEmptyValues;.answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;|Ljava/lang/Throwable;#invocation#0#0').
name_ref(p_invocation_273, param, 'invocation', 'Lorg/mockito/internal/stubbing/defaultanswers/ReturnsSmartNulls$ThrowingInterceptor;.(Lorg/mockito/internal/stubbing/defaultanswers/ReturnsSmartNulls;Lorg/mockito/invocation/InvocationOnMock;)V#invocation#0#0').
name_ref(p_invocation_279, param, 'invocation', 'Lorg/mockito/internal/stubbing/defaultanswers/ReturnsSmartNulls;.answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;|Ljava/lang/Throwable;#invocation#0#0').
name_ref(p_invocation_308, param, 'invocation', 'Lorg/mockito/internal/verification/RegisteredInvocations;.add(Lorg/mockito/internal/invocation/Invocation;)V#invocation#0#0').
name_ref(p_invocation_309, param, 'invocation', 'Lorg/mockito/internal/verification/RegisteredInvocations$RemoveToString;.isOut(Lorg/mockito/internal/invocation/Invocation;)Z#invocation#0#0').
name_ref(p_invocation_matcher_213, param, 'invocationMatcher', 'Lorg/mockito/internal/debugging/DebuggingInfo;.addPotentiallyUnstubbed(Lorg/mockito/internal/invocation/InvocationMatcher;)V#invocationMatcher#0#0').
name_ref(p_invocation_matcher_214, param, 'invocationMatcher', 'Lorg/mockito/internal/debugging/DebuggingInfo;.reportUsedStub(Lorg/mockito/internal/invocation/InvocationMatcher;)V#invocationMatcher#0#0').
name_ref(p_invocations_91, param, 'invocations', 'Lorg/mockito/exceptions/Reporter;.wantedButNotInvoked(Lorg/mockito/exceptions/PrintableInvocation;Ljava/util/List<+Lorg/mockito/exceptions/PrintableInvocation;>;)V#invocations#0#1').
name_ref(p_is_consecutive_255, param, 'isConsecutive', 'Lorg/mockito/internal/stubbing/MockitoStubber;.addAnswer(Lorg/mockito/stubbing/Answer;Z)V#isConsecutive#0#1').
name_ref(p_item_322, param, 'item', 'Lorg/mockito/internal/verification/argumentmatching/ArgumentMatchingToolTest$3063;.matches(Ljava/lang/Object;)Z#item#0#0').
name_ref(p_key_191, param, 'key', 'Lorg/mockito/internal/creation/jmock/ClassImposterizer$1657;.getClassName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lorg/mockito/cglib/core/Predicate;)Ljava/lang/String;#key#0#2').
name_ref(p_last_actual_invocation_111, param, 'lastActualInvocation', 'Lorg/mockito/exceptions/Reporter;.createTooLittleInvocationsMessage(Lorg/mockito/exceptions/Discrepancy;Lorg/mockito/exceptions/PrintableInvocation;Lorg/mockito/internal/debugging/Location;)Ljava/lang/String;#lastActualInvocation#0#2').
name_ref(p_last_actual_location_114, param, 'lastActualLocation', 'Lorg/mockito/exceptions/Reporter;.tooLittleActualInvocations(Lorg/mockito/exceptions/Discrepancy;Lorg/mockito/exceptions/PrintableInvocation;Lorg/mockito/internal/debugging/Location;)V#lastActualLocation#0#2').
name_ref(p_last_actual_location_117, param, 'lastActualLocation', 'Lorg/mockito/exceptions/Reporter;.tooLittleActualInvocationsInOrder(Lorg/mockito/exceptions/Discrepancy;Lorg/mockito/exceptions/PrintableInvocation;Lorg/mockito/internal/debugging/Location;)V#lastActualLocation#0#2').
name_ref(p_location_125, param, 'location', 'Lorg/mockito/exceptions/Reporter;.misplacedArgumentMatcher(Lorg/mockito/internal/debugging/Location;)V#location#0#0').
name_ref(p_location_126, param, 'location', 'Lorg/mockito/exceptions/Reporter;.smartNullPointerException(Lorg/mockito/internal/debugging/Location;)V#location#0#0').
name_ref(p_location_82, param, 'location', 'Lorg/mockito/exceptions/Reporter;.unfinishedStubbing(Lorg/mockito/internal/debugging/Location;)V#location#0#0').
name_ref(p_location_83, param, 'location', 'Lorg/mockito/exceptions/Reporter;.unfinishedVerificationException(Lorg/mockito/internal/debugging/Location;)V#location#0#0').
name_ref(p_logger_215, param, 'logger', 'Lorg/mockito/internal/debugging/DebuggingInfo;.printWarnings(Lorg/mockito/internal/util/MockitoLogger;)V#logger#0#0').
name_ref(p_m_315, param, 'm', 'Lorg/mockito/internal/verification/argumentmatching/ArgumentMatchingTool;.safelyMatches(Lorg/hamcrest/Matcher;Ljava/lang/Object;)Z#m#0#0').
name_ref(p_m_317, param, 'm', 'Lorg/mockito/internal/verification/argumentmatching/ArgumentMatchingTool;.toStringEquals(Lorg/hamcrest/Matcher;Ljava/lang/Object;)Z#m#0#0').
name_ref(p_m_328, param, 'm', 'Lorg/mockitoutil/TestBase;.assertThat<T:Ljava/lang/Object;>(TT;Lorg/hamcrest/Matcher<TT;>;)V#m#0#1').
name_ref(p_m_331, param, 'm', 'Lorg/mockitoutil/TestBase;.assertThat<T:Ljava/lang/Object;>(Ljava/lang/String;TT;Lorg/hamcrest/Matcher<TT;>;)V#m#0#2').
name_ref(p_m_346, param, 'm', 'Lorg/mockitoutil/TestBase;.describe(Lorg/hamcrest/SelfDescribing;)Ljava/lang/String;#m#0#0').
name_ref(p_matcher_230, param, 'matcher', 'Lorg/mockito/internal/progress/ArgumentMatcherStorageImpl;.reportMatcher(Lorg/hamcrest/Matcher;)Lorg/mockito/internal/progress/HandyReturnValues;#matcher#0#0').
name_ref(p_matcher_25, param, 'matcher', 'Lorg/mockito/Matchers;.argThat<T:Ljava/lang/Object;>(Lorg/hamcrest/Matcher<TT;>;)TT;#matcher#0#0').
name_ref(p_matcher_26, param, 'matcher', 'Lorg/mockito/Matchers;.charThat(Lorg/hamcrest/Matcher<Ljava/lang/Character;>;)C#matcher#0#0').
name_ref(p_matcher_27, param, 'matcher', 'Lorg/mockito/Matchers;.booleanThat(Lorg/hamcrest/Matcher<Ljava/lang/Boolean;>;)Z#matcher#0#0').
name_ref(p_matcher_28, param, 'matcher', 'Lorg/mockito/Matchers;.byteThat(Lorg/hamcrest/Matcher<Ljava/lang/Byte;>;)B#matcher#0#0').
name_ref(p_matcher_29, param, 'matcher', 'Lorg/mockito/Matchers;.shortThat(Lorg/hamcrest/Matcher<Ljava/lang/Short;>;)S#matcher#0#0').
name_ref(p_matcher_30, param, 'matcher', 'Lorg/mockito/Matchers;.intThat(Lorg/hamcrest/Matcher<Ljava/lang/Integer;>;)I#matcher#0#0').
name_ref(p_matcher_31, param, 'matcher', 'Lorg/mockito/Matchers;.longThat(Lorg/hamcrest/Matcher<Ljava/lang/Long;>;)J#matcher#0#0').
name_ref(p_matcher_32, param, 'matcher', 'Lorg/mockito/Matchers;.floatThat(Lorg/hamcrest/Matcher<Ljava/lang/Float;>;)F#matcher#0#0').
name_ref(p_matcher_33, param, 'matcher', 'Lorg/mockito/Matchers;.doubleThat(Lorg/hamcrest/Matcher<Ljava/lang/Double;>;)D#matcher#0#0').
name_ref(p_matcher_34, param, 'matcher', 'Lorg/mockito/Matchers;.reportMatcher(Lorg/hamcrest/Matcher<*>;)Lorg/mockito/internal/progress/HandyReturnValues;#matcher#0#0').
name_ref(p_matchers_219, param, 'matchers', 'Lorg/mockito/internal/invocation/MatchersBinder;.validateMatchers(Lorg/mockito/internal/invocation/Invocation;Ljava/util/List<Lorg/hamcrest/Matcher;>;)V#matchers#0#1').
name_ref(p_matchers_310, param, 'matchers', 'Lorg/mockito/internal/verification/argumentmatching/ArgumentMatchingTool;.getSuspiciouslyNotMatchingArgsIndexes(Ljava/util/List<Lorg/hamcrest/Matcher;>;[Ljava/lang/Object;)[Ljava/lang/Integer;#matchers#0#0').
name_ref(p_matchers_binder_131, param, 'matchersBinder', 'Lorg/mockito/internal/MockHandler;.(Lorg/mockito/internal/util/MockName;Lorg/mockito/internal/progress/MockingProgress;Lorg/mockito/internal/invocation/MatchersBinder;Lorg/mockito/internal/creation/MockSettingsImpl;)V#matchersBinder#0#2').
name_ref(p_max_number_of_invocations_123, param, 'maxNumberOfInvocations', 'Lorg/mockito/exceptions/Reporter;.wantedAtMostX(II)V#maxNumberOfInvocations#0#0').
name_ref(p_max_number_of_invocations_65, param, 'maxNumberOfInvocations', 'Lorg/mockito/Mockito;.atMost(I)Lorg/mockito/internal/verification/api/VerificationMode;#maxNumberOfInvocations#0#0').
name_ref(p_message_233, param, 'message', 'Lorg/mockito/internal/progress/ArgumentMatcherStorageImpl;.assertState(ZLjava/lang/String;)V#message#0#1').
name_ref(p_message_329, param, 'message', 'Lorg/mockitoutil/TestBase;.assertThat<T:Ljava/lang/Object;>(Ljava/lang/String;TT;Lorg/hamcrest/Matcher<TT;>;)V#message#0#0').
name_ref(p_method_141, param, 'method', 'Lorg/mockito/internal/MockHandler;.intercept(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lorg/mockito/cglib/proxy/MethodProxy;)Ljava/lang/Object;|Ljava/lang/Throwable;#method#0#1').
name_ref(p_method_173, param, 'method', 'Lorg/mockito/internal/creation/MethodInterceptorFilter;.intercept(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lorg/mockito/cglib/proxy/MethodProxy;)Ljava/lang/Object;|Ljava/lang/Throwable;#method#0#1').
name_ref(p_method_194, param, 'method', 'Lorg/mockito/internal/creation/jmock/ClassImposterizer$1972;.accept(Ljava/lang/reflect/Method;)I#method#0#0').
name_ref(p_method_275, param, 'method', 'Lorg/mockito/internal/stubbing/defaultanswers/ReturnsSmartNulls$ThrowingInterceptor;.intercept(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lorg/mockito/cglib/proxy/MethodProxy;)Ljava/lang/Object;|Ljava/lang/Throwable;#method#0#1').
name_ref(p_method_call_151, param, 'methodCall', 'Lorg/mockito/internal/MockitoCore;.stub<T:Ljava/lang/Object;>(TT;)Lorg/mockito/stubbing/DeprecatedOngoingStubbing<TT;>;#methodCall#0#0').
name_ref(p_method_call_152, param, 'methodCall', 'Lorg/mockito/internal/MockitoCore;.when<T:Ljava/lang/Object;>(TT;)Lorg/mockito/stubbing/OngoingStubbing<TT;>;#methodCall#0#0').
name_ref(p_method_call_50, param, 'methodCall', 'Lorg/mockito/Mockito;.stub<T:Ljava/lang/Object;>(TT;)Lorg/mockito/stubbing/DeprecatedOngoingStubbing<TT;>;#methodCall#0#0').
name_ref(p_method_call_51, param, 'methodCall', 'Lorg/mockito/Mockito;.when<T:Ljava/lang/Object;>(TT;)Lorg/mockito/stubbing/OngoingStubbing<TT;>;#methodCall#0#0').
name_ref(p_method_name_122, param, 'methodName', 'Lorg/mockito/exceptions/Reporter;.wrongTypeOfReturnValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V#methodName#0#2').
name_ref(p_method_name_341, param, 'methodName', 'Lorg/mockitoutil/TestBase;.invocationOf(Ljava/lang/Class<*>;Ljava/lang/String;[Ljava/lang/Object;)Lorg/mockito/internal/invocation/Invocation;|Ljava/lang/NoSuchMethodException;#methodName#0#1').
name_ref(p_method_name_344, param, 'methodName', 'Lorg/mockitoutil/TestBase;.invocationOf(Ljava/lang/Class<*>;Ljava/lang/String;Lorg/mockito/internal/invocation/realmethod/RealMethod;)Lorg/mockito/internal/invocation/Invocation;|Ljava/lang/NoSuchMethodException;#methodName#0#1').
name_ref(p_method_proxy_143, param, 'methodProxy', 'Lorg/mockito/internal/MockHandler;.intercept(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lorg/mockito/cglib/proxy/MethodProxy;)Ljava/lang/Object;|Ljava/lang/Throwable;#methodProxy#0#3').
name_ref(p_method_proxy_175, param, 'methodProxy', 'Lorg/mockito/internal/creation/MethodInterceptorFilter;.intercept(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lorg/mockito/cglib/proxy/MethodProxy;)Ljava/lang/Object;|Ljava/lang/Throwable;#methodProxy#0#3').
name_ref(p_min_number_of_invocations_64, param, 'minNumberOfInvocations', 'Lorg/mockito/Mockito;.atLeast(I)Lorg/mockito/internal/verification/api/VerificationMode;#minNumberOfInvocations#0#0').
name_ref(p_mock_144, param, 'mock', 'Lorg/mockito/internal/MockHandler;.voidMethodStubbable(TT;)Lorg/mockito/stubbing/VoidMethodStubbable<TT;>;#mock#0#0').
name_ref(p_mock_153, param, 'mock', 'Lorg/mockito/internal/MockitoCore;.verify<T:Ljava/lang/Object;>(TT;Lorg/mockito/internal/verification/api/VerificationMode;)TT;#mock#0#0').
name_ref(p_mock_160, param, 'mock', 'Lorg/mockito/internal/MockitoCore;.stubVoid<T:Ljava/lang/Object;>(TT;)Lorg/mockito/stubbing/VoidMethodStubbable<TT;>;#mock#0#0').
name_ref(p_mock_176, param, 'mock', 'Lorg/mockito/internal/creation/MethodInterceptorFilter;.hashCodeForMock(Ljava/lang/Object;)I#mock#0#0').
name_ref(p_mock_300, param, 'mock', 'Lorg/mockito/internal/util/MockUtil;.resetMock<T:Ljava/lang/Object;>(TT;Lorg/mockito/internal/progress/MockingProgress;)V#mock#0#0').
name_ref(p_mock_302, param, 'mock', 'Lorg/mockito/internal/util/MockUtil;.getMockHandler<T:Ljava/lang/Object;>(TT;)Lorg/mockito/internal/MockHandler<TT;>;#mock#0#0').
name_ref(p_mock_303, param, 'mock', 'Lorg/mockito/internal/util/MockUtil;.isMockitoMock<T:Ljava/lang/Object;>(TT;)Z#mock#0#0').
name_ref(p_mock_304, param, 'mock', 'Lorg/mockito/internal/util/MockUtil;.isMock(Ljava/lang/Object;)Z#mock#0#0').
name_ref(p_mock_305, param, 'mock', 'Lorg/mockito/internal/util/MockUtil;.getInterceptor<T:Ljava/lang/Object;>(TT;)Lorg/mockito/internal/creation/MethodInterceptorFilter<Lorg/mockito/internal/MockHandler<TT;>;>;#mock#0#0').
name_ref(p_mock_306, param, 'mock', 'Lorg/mockito/internal/util/MockUtil;.getMockName(Ljava/lang/Object;)Lorg/mockito/internal/util/MockName;#mock#0#0').
name_ref(p_mock_52, param, 'mock', 'Lorg/mockito/Mockito;.verify<T:Ljava/lang/Object;>(TT;)TT;#mock#0#0').
name_ref(p_mock_54, param, 'mock', 'Lorg/mockito/Mockito;.verify<T:Ljava/lang/Object;>(TT;Lorg/mockito/internal/verification/api/VerificationMode;)TT;#mock#0#0').
name_ref(p_mock_58, param, 'mock', 'Lorg/mockito/Mockito;.stubVoid<T:Ljava/lang/Object;>(TT;)Lorg/mockito/stubbing/VoidMethodStubbable<TT;>;#mock#0#0').
name_ref(p_mock_name_129, param, 'mockName', 'Lorg/mockito/internal/MockHandler;.(Lorg/mockito/internal/util/MockName;Lorg/mockito/internal/progress/MockingProgress;Lorg/mockito/internal/invocation/MatchersBinder;Lorg/mockito/internal/creation/MockSettingsImpl;)V#mockName#0#0').
name_ref(p_mock_name_283, param, 'mockName', 'Lorg/mockito/internal/util/MockName;.(Ljava/lang/String;Ljava/lang/Class;)V#mockName#0#0').
name_ref(p_mock_settings_132, param, 'mockSettings', 'Lorg/mockito/internal/MockHandler;.(Lorg/mockito/internal/util/MockName;Lorg/mockito/internal/progress/MockingProgress;Lorg/mockito/internal/invocation/MatchersBinder;Lorg/mockito/internal/creation/MockSettingsImpl;)V#mockSettings#0#3').
name_ref(p_mock_settings_150, param, 'mockSettings', 'Lorg/mockito/internal/MockitoCore;.mock<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Lorg/mockito/MockSettings;)TT;#mockSettings#0#1').
name_ref(p_mock_settings_48, param, 'mockSettings', 'Lorg/mockito/Mockito;.mock<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Lorg/mockito/MockSettings;)TT;#mockSettings#0#1').
name_ref(p_mocked_type_197, param, 'mockedType', 'Lorg/mockito/internal/creation/jmock/ClassImposterizer;.imposterise<T:Ljava/lang/Object;>(Lorg/mockito/cglib/proxy/MethodInterceptor;Ljava/lang/Class<TT;>;[Ljava/lang/Class<*>;)TT;#mockedType#0#1').
name_ref(p_mocked_type_199, param, 'mockedType', 'Lorg/mockito/internal/creation/jmock/ClassImposterizer;.setConstructorsAccessible(Ljava/lang/Class<*>;Z)V#mockedType#0#0').
name_ref(p_mocked_type_202, param, 'mockedType', 'Lorg/mockito/internal/creation/jmock/ClassImposterizer;.createProxyClass<T:Ljava/lang/Object;>(Ljava/lang/Class<*>;[Ljava/lang/Class<*>;)Ljava/lang/Class<*>;#mockedType#0#0').
name_ref(p_mocking_progress_130, param, 'mockingProgress', 'Lorg/mockito/internal/MockHandler;.(Lorg/mockito/internal/util/MockName;Lorg/mockito/internal/progress/MockingProgress;Lorg/mockito/internal/invocation/MatchersBinder;Lorg/mockito/internal/creation/MockSettingsImpl;)V#mockingProgress#0#1').
name_ref(p_mocking_progress_249, param, 'mockingProgress', 'Lorg/mockito/internal/stubbing/MockitoStubber;.(Lorg/mockito/internal/progress/MockingProgress;)V#mockingProgress#0#0').
name_ref(p_mocks_155, param, 'mocks', 'Lorg/mockito/internal/MockitoCore;.reset<T:Ljava/lang/Object;>([TT;)V#mocks#0#0').
name_ref(p_mocks_156, param, 'mocks', 'Lorg/mockito/internal/MockitoCore;.verifyNoMoreInteractions([Ljava/lang/Object;)V#mocks#0#0').
name_ref(p_mocks_157, param, 'mocks', 'Lorg/mockito/internal/MockitoCore;.assertMocksNotEmpty([Ljava/lang/Object;)V#mocks#0#0').
name_ref(p_mocks_158, param, 'mocks', 'Lorg/mockito/internal/MockitoCore;.inOrder([Ljava/lang/Object;)Lorg/mockito/InOrder;#mocks#0#0').
name_ref(p_mocks_53, param, 'mocks', 'Lorg/mockito/Mockito;.reset<T:Ljava/lang/Object;>([TT;)V#mocks#0#0').
name_ref(p_mocks_56, param, 'mocks', 'Lorg/mockito/Mockito;.verifyNoMoreInteractions([Ljava/lang/Object;)V#mocks#0#0').
name_ref(p_mocks_57, param, 'mocks', 'Lorg/mockito/Mockito;.verifyZeroInteractions([Ljava/lang/Object;)V#mocks#0#0').
name_ref(p_mocks_62, param, 'mocks', 'Lorg/mockito/Mockito;.inOrder([Ljava/lang/Object;)Lorg/mockito/InOrder;#mocks#0#0').
name_ref(p_mode_154, param, 'mode', 'Lorg/mockito/internal/MockitoCore;.verify<T:Ljava/lang/Object;>(TT;Lorg/mockito/internal/verification/api/VerificationMode;)TT;#mode#0#1').
name_ref(p_mode_55, param, 'mode', 'Lorg/mockito/Mockito;.verify<T:Ljava/lang/Object;>(TT;Lorg/mockito/internal/verification/api/VerificationMode;)TT;#mode#0#1').
name_ref(p_name_181, param, 'name', 'Lorg/mockito/internal/creation/MockSettingsImpl;.name(Ljava/lang/String;)Lorg/mockito/MockSettings;#name#0#0').
name_ref(p_name_42, param, 'name', 'Lorg/mockito/Mockito;.mock<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Ljava/lang/String;)TT;#name#0#1').
name_ref(p_names_192, param, 'names', 'Lorg/mockito/internal/creation/jmock/ClassImposterizer$1657;.getClassName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lorg/mockito/cglib/core/Predicate;)Ljava/lang/String;#names#0#3').
name_ref(p_o_226, param, 'o', 'Lorg/mockito/internal/matchers/Equals;.equals(Ljava/lang/Object;)Z#o#0#0').
name_ref(p_o_325, param, 'o', 'Lorg/mockitoutil/TestBase;.assertThat<T:Ljava/lang/Object;>(TT;Lorg/mockitoutil/Assertor<TT;>;)V#o#0#0').
name_ref(p_obj_274, param, 'obj', 'Lorg/mockito/internal/stubbing/defaultanswers/ReturnsSmartNulls$ThrowingInterceptor;.intercept(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lorg/mockito/cglib/proxy/MethodProxy;)Ljava/lang/Object;|Ljava/lang/Throwable;#obj#0#0').
name_ref(p_object_224, param, 'object', 'Lorg/mockito/internal/matchers/Equals;.describe(Ljava/lang/Object;)Ljava/lang/String;#object#0#0').
name_ref(p_object_228, param, 'object', 'Lorg/mockito/internal/matchers/Equals;.typeMatches(Ljava/lang/Object;)Z#object#0#0').
name_ref(p_object_49, param, 'object', 'Lorg/mockito/Mockito;.spy<T:Ljava/lang/Object;>(TT;)TT;#object#0#0').
name_ref(p_old_mock_handler_139, param, 'oldMockHandler', 'Lorg/mockito/internal/MockHandler;.(Lorg/mockito/internal/MockHandler<TT;>;)V#oldMockHandler#0#0').
name_ref(p_prefix_189, param, 'prefix', 'Lorg/mockito/internal/creation/jmock/ClassImposterizer$1657;.getClassName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lorg/mockito/cglib/core/Predicate;)Ljava/lang/String;#prefix#0#0').
name_ref(p_prefix_24, param, 'prefix', 'Lorg/mockito/Matchers;.startsWith(Ljava/lang/String;)Ljava/lang/String;#prefix#0#0').
name_ref(p_previous_94, param, 'previous', 'Lorg/mockito/exceptions/Reporter;.wantedButNotInvokedInOrder(Lorg/mockito/exceptions/PrintableInvocation;Lorg/mockito/exceptions/PrintableInvocation;)V#previous#0#1').
name_ref(p_progress_292, param, 'progress', 'Lorg/mockito/internal/util/MockUtil;.createMock<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Lorg/mockito/internal/progress/MockingProgress;Lorg/mockito/internal/creation/MockSettingsImpl;)TT;#progress#0#1').
name_ref(p_progress_301, param, 'progress', 'Lorg/mockito/internal/util/MockUtil;.resetMock<T:Ljava/lang/Object;>(TT;Lorg/mockito/internal/progress/MockingProgress;)V#progress#0#1').
name_ref(p_proxy_140, param, 'proxy', 'Lorg/mockito/internal/MockHandler;.intercept(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lorg/mockito/cglib/proxy/MethodProxy;)Ljava/lang/Object;|Ljava/lang/Throwable;#proxy#0#0').
name_ref(p_proxy_172, param, 'proxy', 'Lorg/mockito/internal/creation/MethodInterceptorFilter;.intercept(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lorg/mockito/cglib/proxy/MethodProxy;)Ljava/lang/Object;|Ljava/lang/Throwable;#proxy#0#0').
name_ref(p_proxy_277, param, 'proxy', 'Lorg/mockito/internal/stubbing/defaultanswers/ReturnsSmartNulls$ThrowingInterceptor;.intercept(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lorg/mockito/cglib/proxy/MethodProxy;)Ljava/lang/Object;|Ljava/lang/Throwable;#proxy#0#3').
name_ref(p_proxy_class_206, param, 'proxyClass', 'Lorg/mockito/internal/creation/jmock/ClassImposterizer;.createProxy(Ljava/lang/Class<*>;Lorg/mockito/cglib/proxy/MethodInterceptor;)Ljava/lang/Object;#proxyClass#0#0').
name_ref(p_real_method_345, param, 'realMethod', 'Lorg/mockitoutil/TestBase;.invocationOf(Ljava/lang/Class<*>;Ljava/lang/String;Lorg/mockito/internal/invocation/realmethod/RealMethod;)Lorg/mockito/internal/invocation/Invocation;|Ljava/lang/NoSuchMethodException;#realMethod#0#2').
name_ref(p_recorded_matchers_count_85, param, 'recordedMatchersCount', 'Lorg/mockito/exceptions/Reporter;.invalidUseOfMatchers(II)V#recordedMatchersCount#0#1').
name_ref(p_regex_22, param, 'regex', 'Lorg/mockito/Matchers;.matches(Ljava/lang/String;)Ljava/lang/String;#regex#0#0').
name_ref(p_rest_209, param, 'rest', 'Lorg/mockito/internal/creation/jmock/ClassImposterizer;.prepend(Ljava/lang/Class<*>;[Ljava/lang/Class<*>;)[Ljava/lang/Class<*>;#rest#0#1').
name_ref(p_return_values_44, param, 'returnValues', 'Lorg/mockito/Mockito;.mock<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Lorg/mockito/ReturnValues;)TT;#returnValues#0#1').
name_ref(p_sc_204, param, 'sc', 'Lorg/mockito/internal/creation/jmock/ClassImposterizer$3235;.filterConstructors(Ljava/lang/Class;Ljava/util/List;)V#sc#0#0').
name_ref(p_settings_293, param, 'settings', 'Lorg/mockito/internal/util/MockUtil;.createMock<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Lorg/mockito/internal/progress/MockingProgress;Lorg/mockito/internal/creation/MockSettingsImpl;)TT;#settings#0#2').
name_ref(p_something_324, param, 'something', 'Lorg/mockitousage/bugs/ActualInvocationHasNullArgumentNPEBugTest$Fun;.doFun(Ljava/lang/String;)Ljava/lang/String;#something#0#0').
name_ref(p_source_190, param, 'source', 'Lorg/mockito/internal/creation/jmock/ClassImposterizer$1657;.getClassName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lorg/mockito/cglib/core/Predicate;)Ljava/lang/String;#source#0#1').
name_ref(p_spied_instance_182, param, 'spiedInstance', 'Lorg/mockito/internal/creation/MockSettingsImpl;.spiedInstance(Ljava/lang/Object;)Lorg/mockito/MockSettings;#spiedInstance#0#0').
name_ref(p_string_337, param, 'string', 'Lorg/mockitoutil/TestBase;.assertContains(Ljava/lang/String;Ljava/lang/String;)V#string#0#1').
name_ref(p_string_339, param, 'string', 'Lorg/mockitoutil/TestBase;.assertNotContains(Ljava/lang/String;Ljava/lang/String;)V#string#0#1').
name_ref(p_sub_336, param, 'sub', 'Lorg/mockitoutil/TestBase;.assertContains(Ljava/lang/String;Ljava/lang/String;)V#sub#0#0').
name_ref(p_sub_338, param, 'sub', 'Lorg/mockitoutil/TestBase;.assertNotContains(Ljava/lang/String;Ljava/lang/String;)V#sub#0#0').
name_ref(p_substring_21, param, 'substring', 'Lorg/mockito/Matchers;.contains(Ljava/lang/String;)Ljava/lang/String;#substring#0#0').
name_ref(p_substring_332, param, 'substring', 'Lorg/mockitoutil/TestBase;.endsWith<T:Ljava/lang/Object;>(Ljava/lang/String;)Lorg/mockitoutil/Assertor<Ljava/lang/String;>;#substring#0#0').
name_ref(p_suffix_23, param, 'suffix', 'Lorg/mockito/Matchers;.endsWith(Ljava/lang/String;)Ljava/lang/String;#suffix#0#0').
name_ref(p_t_81, param, 't', 'Lorg/mockito/exceptions/Reporter;.checkedExceptionInvalid(Ljava/lang/Throwable;)V#t#0#0').
name_ref(p_test_class_66, param, 'testClass', 'Lorg/mockito/MockitoAnnotations;.initMocks(Ljava/lang/Object;)V#testClass#0#0').
name_ref(p_test_class_68, param, 'testClass', 'Lorg/mockito/MockitoAnnotations;.scan(Ljava/lang/Object;Ljava/lang/Class<*>;)V#testClass#0#0').
name_ref(p_to_assert_232, param, 'toAssert', 'Lorg/mockito/internal/progress/ArgumentMatcherStorageImpl;.assertState(ZLjava/lang/String;)V#toAssert#0#0').
name_ref(p_to_be_returned_61, param, 'toBeReturned', 'Lorg/mockito/Mockito;.doReturn(Ljava/lang/Object;)Lorg/mockito/stubbing/Stubber;#toBeReturned#0#0').
name_ref(p_to_be_thrown_59, param, 'toBeThrown', 'Lorg/mockito/Mockito;.doThrow(Ljava/lang/Throwable;)Lorg/mockito/stubbing/Stubber;#toBeThrown#0#0').
name_ref(p_to_mock_167, param, 'toMock', 'Lorg/mockito/internal/creation/MethodInterceptorFilter;.(Ljava/lang/Class;TT;)V#toMock#0#0').
name_ref(p_type_195, param, 'type', 'Lorg/mockito/internal/creation/jmock/ClassImposterizer;.canImposterise(Ljava/lang/Class<*>;)Z#type#0#0').
name_ref(p_type_264, param, 'type', 'Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValues;.returnValueFor(Ljava/lang/Class<*>;)Ljava/lang/Object;#type#0#0').
name_ref(p_type_265, param, 'type', 'Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValues;.primitiveOf(Ljava/lang/Class<*>;)Ljava/lang/Object;#type#0#0').
name_ref(p_type_272, param, 'type', 'Lorg/mockito/internal/stubbing/defaultanswers/ReturnsMoreEmptyValues;.returnValueFor(Ljava/lang/Class<*>;)Ljava/lang/Object;#type#0#0').
name_ref(p_type_340, param, 'type', 'Lorg/mockitoutil/TestBase;.invocationOf(Ljava/lang/Class<*>;Ljava/lang/String;[Ljava/lang/Object;)Lorg/mockito/internal/invocation/Invocation;|Ljava/lang/NoSuchMethodException;#type#0#0').
name_ref(p_type_343, param, 'type', 'Lorg/mockitoutil/TestBase;.invocationOf(Ljava/lang/Class<*>;Ljava/lang/String;Lorg/mockito/internal/invocation/realmethod/RealMethod;)Lorg/mockito/internal/invocation/Invocation;|Ljava/lang/NoSuchMethodException;#type#0#0').
name_ref(p_undesired_118, param, 'undesired', 'Lorg/mockito/exceptions/Reporter;.noMoreInteractionsWanted(Lorg/mockito/exceptions/PrintableInvocation;)V#undesired#0#0').
name_ref(p_value_10, param, 'value', 'Lorg/mockito/Matchers;.eq(B)B#value#0#0').
name_ref(p_value_11, param, 'value', 'Lorg/mockito/Matchers;.eq(C)C#value#0#0').
name_ref(p_value_12, param, 'value', 'Lorg/mockito/Matchers;.eq(D)D#value#0#0').
name_ref(p_value_13, param, 'value', 'Lorg/mockito/Matchers;.eq(F)F#value#0#0').
name_ref(p_value_14, param, 'value', 'Lorg/mockito/Matchers;.eq(I)I#value#0#0').
name_ref(p_value_15, param, 'value', 'Lorg/mockito/Matchers;.eq(J)J#value#0#0').
name_ref(p_value_16, param, 'value', 'Lorg/mockito/Matchers;.eq(S)S#value#0#0').
name_ref(p_value_17, param, 'value', 'Lorg/mockito/Matchers;.eq<T:Ljava/lang/Object;>(TT;)TT;#value#0#0').
name_ref(p_value_18, param, 'value', 'Lorg/mockito/Matchers;.refEq<T:Ljava/lang/Object;>(TT;[Ljava/lang/String;)TT;#value#0#0').
name_ref(p_value_20, param, 'value', 'Lorg/mockito/Matchers;.same<T:Ljava/lang/Object;>(TT;)TT;#value#0#0').
name_ref(p_value_333, param, 'value', 'Lorg/mockitoutil/TestBase$1953;.assertValue(Ljava/lang/String;)V#value#0#0').
name_ref(p_value_9, param, 'value', 'Lorg/mockito/Matchers;.eq(Z)Z#value#0#0').
name_ref(p_verify_239, param, 'verify', 'Lorg/mockito/internal/progress/MockingProgressImpl;.verificationStarted(Lorg/mockito/internal/verification/api/VerificationMode;)V#verify#0#0').
name_ref(p_verify_245, param, 'verify', 'Lorg/mockito/internal/progress/ThreadSafeMockingProgress;.verificationStarted(Lorg/mockito/internal/verification/api/VerificationMode;)V#verify#0#0').
name_ref(p_wanted_101, param, 'wanted', 'Lorg/mockito/exceptions/Reporter;.createTooManyInvocationsMessage(IILorg/mockito/exceptions/PrintableInvocation;Lorg/mockito/internal/debugging/Location;)Ljava/lang/String;#wanted#0#2').
name_ref(p_wanted_103, param, 'wanted', 'Lorg/mockito/exceptions/Reporter;.neverWantedButInvoked(Lorg/mockito/exceptions/PrintableInvocation;Lorg/mockito/internal/debugging/Location;)V#wanted#0#0').
name_ref(p_wanted_107, param, 'wanted', 'Lorg/mockito/exceptions/Reporter;.tooManyActualInvocationsInOrder(IILorg/mockito/exceptions/PrintableInvocation;Lorg/mockito/internal/debugging/Location;)V#wanted#0#2').
name_ref(p_wanted_110, param, 'wanted', 'Lorg/mockito/exceptions/Reporter;.createTooLittleInvocationsMessage(Lorg/mockito/exceptions/Discrepancy;Lorg/mockito/exceptions/PrintableInvocation;Lorg/mockito/internal/debugging/Location;)Ljava/lang/String;#wanted#0#1').
name_ref(p_wanted_113, param, 'wanted', 'Lorg/mockito/exceptions/Reporter;.tooLittleActualInvocations(Lorg/mockito/exceptions/Discrepancy;Lorg/mockito/exceptions/PrintableInvocation;Lorg/mockito/internal/debugging/Location;)V#wanted#0#1').
name_ref(p_wanted_116, param, 'wanted', 'Lorg/mockito/exceptions/Reporter;.tooLittleActualInvocationsInOrder(Lorg/mockito/exceptions/Discrepancy;Lorg/mockito/exceptions/PrintableInvocation;Lorg/mockito/internal/debugging/Location;)V#wanted#0#1').
name_ref(p_wanted_220, param, 'wanted', 'Lorg/mockito/internal/matchers/Equals;.(Ljava/lang/Object;)V#wanted#0#0').
name_ref(p_wanted_86, param, 'wanted', 'Lorg/mockito/exceptions/Reporter;.argumentsAreDifferent(Ljava/lang/String;Ljava/lang/String;Lorg/mockito/internal/debugging/Location;)V#wanted#0#0').
name_ref(p_wanted_89, param, 'wanted', 'Lorg/mockito/exceptions/Reporter;.wantedButNotInvoked(Lorg/mockito/exceptions/PrintableInvocation;)V#wanted#0#0').
name_ref(p_wanted_90, param, 'wanted', 'Lorg/mockito/exceptions/Reporter;.wantedButNotInvoked(Lorg/mockito/exceptions/PrintableInvocation;Ljava/util/List<+Lorg/mockito/exceptions/PrintableInvocation;>;)V#wanted#0#0').
name_ref(p_wanted_92, param, 'wanted', 'Lorg/mockito/exceptions/Reporter;.createWantedButNotInvokedMessage(Lorg/mockito/exceptions/PrintableInvocation;)Ljava/lang/String;#wanted#0#0').
name_ref(p_wanted_93, param, 'wanted', 'Lorg/mockito/exceptions/Reporter;.wantedButNotInvokedInOrder(Lorg/mockito/exceptions/PrintableInvocation;Lorg/mockito/exceptions/PrintableInvocation;)V#wanted#0#0').
name_ref(p_wanted_97, param, 'wanted', 'Lorg/mockito/exceptions/Reporter;.tooManyActualInvocations(IILorg/mockito/exceptions/PrintableInvocation;Lorg/mockito/internal/debugging/Location;)V#wanted#0#2').
name_ref(p_wanted_count_105, param, 'wantedCount', 'Lorg/mockito/exceptions/Reporter;.tooManyActualInvocationsInOrder(IILorg/mockito/exceptions/PrintableInvocation;Lorg/mockito/internal/debugging/Location;)V#wantedCount#0#0').
name_ref(p_wanted_count_95, param, 'wantedCount', 'Lorg/mockito/exceptions/Reporter;.tooManyActualInvocations(IILorg/mockito/exceptions/PrintableInvocation;Lorg/mockito/internal/debugging/Location;)V#wantedCount#0#0').
name_ref(p_wanted_count_99, param, 'wantedCount', 'Lorg/mockito/exceptions/Reporter;.createTooManyInvocationsMessage(IILorg/mockito/exceptions/PrintableInvocation;Lorg/mockito/internal/debugging/Location;)Ljava/lang/String;#wantedCount#0#0').
name_ref(p_wanted_number_of_invocations_63, param, 'wantedNumberOfInvocations', 'Lorg/mockito/Mockito;.times(I)Lorg/mockito/internal/verification/api/VerificationMode;#wantedNumberOfInvocations#0#0').
name_ref(p_wrong_type_127, param, 'wrongType', 'Lorg/mockito/exceptions/Reporter;.extraInterfacesAcceptsOnlyInterfaces(Ljava/lang/Class<*>;)V#wrongType#0#0').
name_ref(p_wrong_type_128, param, 'wrongType', 'Lorg/mockito/exceptions/Reporter;.extraInterfacesCannotContainMockedType(Ljava/lang/Class<*>;)V#wrongType#0#0').
name_ref(f_answers_for_stubbing_248, field, 'answersForStubbing', 'Lorg/mockito/internal/stubbing/MockitoStubber;.answersForStubbing)Ljava/util/List<Lorg/mockito/stubbing/Answer<>;>;').
name_ref(f_argument_matcher_storage_235, field, 'argumentMatcherStorage', 'Lorg/mockito/internal/progress/MockingProgressImpl;.argumentMatcherStorage)Lorg/mockito/internal/progress/ArgumentMatcherStorage;').
name_ref(f_calls_real_methods_39, field, 'CALLS_REAL_METHODS', 'Lorg/mockito/Mockito;.CALLS_REAL_METHODS)Lorg/mockito/stubbing/Answer<Ljava/lang/Object;>;').
name_ref(f_cleans_stack_trace_78, field, 'cleansStackTrace', 'Lorg/mockito/configuration/MockitoConfiguration;.cleansStackTrace)Z').
name_ref(f_creation_validator_290, field, 'creationValidator', 'Lorg/mockito/internal/util/MockUtil;.creationValidator)Lorg/mockito/internal/util/CreationValidator;').
name_ref(f_debugging_info_236, field, 'debuggingInfo', 'Lorg/mockito/internal/progress/MockingProgressImpl;.debuggingInfo)Lorg/mockito/internal/debugging/DebuggingInfo;').
name_ref(f_default_answer_184, field, 'defaultAnswer', 'Lorg/mockito/internal/creation/MockSettingsImpl;.defaultAnswer)Lorg/mockito/stubbing/Answer<Ljava/lang/Object;>;').
name_ref(f_delegate_171, field, 'delegate', 'Lorg/mockito/internal/creation/MethodInterceptorFilter<Lorg/mockito/internal/creation/MethodInterceptorFilter;:TT;>;.delegate)Lorg/mockito/internal/creation/MethodInterceptorFilter;:TT;').
name_ref(f_delegate_267, field, 'delegate', 'Lorg/mockito/internal/stubbing/defaultanswers/ReturnsMocks;.delegate)Lorg/mockito/stubbing/Answer<Ljava/lang/Object;>;').
name_ref(f_delegate_270, field, 'delegate', 'Lorg/mockito/internal/stubbing/defaultanswers/ReturnsMoreEmptyValues;.delegate)Lorg/mockito/stubbing/Answer<Ljava/lang/Object;>;').
name_ref(f_delegate_278, field, 'delegate', 'Lorg/mockito/internal/stubbing/defaultanswers/ReturnsSmartNulls;.delegate)Lorg/mockito/stubbing/Answer<Ljava/lang/Object;>;').
name_ref(f_equals_method_169, field, 'equalsMethod', 'Lorg/mockito/internal/creation/MethodInterceptorFilter<Lorg/mockito/internal/creation/MethodInterceptorFilter;:TT;>;.equalsMethod)Ljava/lang/reflect/Method;').
name_ref(f_extra_interfaces_179, field, 'extraInterfaces', 'Lorg/mockito/internal/creation/MockSettingsImpl;.extraInterfaces)[Ljava/lang/Class<Ljava/lang/Class;{0}*>;').
name_ref(f_global_configuration_164, field, 'globalConfiguration', 'Lorg/mockito/internal/configuration/GlobalConfiguration;.globalConfiguration)Ljava/lang/ThreadLocal<Lorg/mockito/configuration/IMockitoConfiguration;>;').
name_ref(f_hash_code_method_170, field, 'hashCodeMethod', 'Lorg/mockito/internal/creation/MethodInterceptorFilter<Lorg/mockito/internal/creation/MethodInterceptorFilter;:TT;>;.hashCodeMethod)Ljava/lang/reflect/Method;').
name_ref(f_i_ongoing_stubbing_240, field, 'iOngoingStubbing', 'Lorg/mockito/internal/progress/MockingProgressImpl;.iOngoingStubbing)Lorg/mockito/internal/progress/IOngoingStubbing;').
name_ref(f_ignore_bridge_methods_193, field, 'IGNORE_BRIDGE_METHODS', 'Lorg/mockito/internal/creation/jmock/ClassImposterizer;.IGNORE_BRIDGE_METHODS)Lorg/mockito/cglib/proxy/CallbackFilter;').
name_ref(f_instance_185, field, 'INSTANCE', 'Lorg/mockito/internal/creation/cglib/MockitoNamingPolicy;.INSTANCE)Lorg/mockito/internal/creation/cglib/MockitoNamingPolicy;').
name_ref(f_instance_186, field, 'INSTANCE', 'Lorg/mockito/internal/creation/jmock/ClassImposterizer;.INSTANCE)Lorg/mockito/internal/creation/jmock/ClassImposterizer;').
name_ref(f_invocations_307, field, 'invocations', 'Lorg/mockito/internal/verification/RegisteredInvocations;.invocations)Ljava/util/List<Lorg/mockito/internal/invocation/Invocation;>;').
name_ref(f_matcher_stack_229, field, 'matcherStack', 'Lorg/mockito/internal/progress/ArgumentMatcherStorageImpl;.matcherStack)Ljava/util/Stack<Lorg/mockito/internal/matchers/LocalizedMatcher;>;').
name_ref(f_matchers_binder_135, field, 'matchersBinder', 'Lorg/mockito/internal/MockHandler<Lorg/mockito/internal/MockHandler;:TT;>;.matchersBinder)Lorg/mockito/internal/invocation/MatchersBinder;').
name_ref(f_mock_name_133, field, 'mockName', 'Lorg/mockito/internal/MockHandler<Lorg/mockito/internal/MockHandler;:TT;>;.mockName)Lorg/mockito/internal/util/MockName;').
name_ref(f_mock_name_285, field, 'mockName', 'Lorg/mockito/internal/util/MockName;.mockName)Ljava/lang/String;').
name_ref(f_mock_settings_136, field, 'mockSettings', 'Lorg/mockito/internal/MockHandler<Lorg/mockito/internal/MockHandler;:TT;>;.mockSettings)Lorg/mockito/internal/creation/MockSettingsImpl;').
name_ref(f_mock_util_147, field, 'mockUtil', 'Lorg/mockito/internal/MockitoCore;.mockUtil)Lorg/mockito/internal/util/MockUtil;').
name_ref(f_mocking_progress_134, field, 'mockingProgress', 'Lorg/mockito/internal/MockHandler<Lorg/mockito/internal/MockHandler;:TT;>;.mockingProgress)Lorg/mockito/internal/progress/MockingProgress;').
name_ref(f_mocking_progress_148, field, 'mockingProgress', 'Lorg/mockito/internal/MockitoCore;.mockingProgress)Lorg/mockito/internal/progress/MockingProgress;').
name_ref(f_mocking_progress_243, field, 'mockingProgress', 'Lorg/mockito/internal/progress/ThreadSafeMockingProgress;.mockingProgress)Ljava/lang/ThreadLocal<Lorg/mockito/internal/progress/MockingProgress;>;').
name_ref(f_mocking_progress_250, field, 'mockingProgress', 'Lorg/mockito/internal/stubbing/MockitoStubber;.mockingProgress)Lorg/mockito/internal/progress/MockingProgress;').
name_ref(f_mocking_progress_3, field, 'mockingProgress', 'Lorg/mockito/Matchers;.mockingProgress)Lorg/mockito/internal/progress/MockingProgress;').
name_ref(f_mocking_progress_74, field, 'mockingProgress', 'Lorg/mockito/StateMaster;.mockingProgress)Lorg/mockito/internal/progress/ThreadSafeMockingProgress;').
name_ref(f_mockito_core_266, field, 'mockitoCore', 'Lorg/mockito/internal/stubbing/defaultanswers/ReturnsMocks;.mockitoCore)Lorg/mockito/internal/MockitoCore;').
name_ref(f_mockito_core_35, field, 'MOCKITO_CORE', 'Lorg/mockito/Mockito;.MOCKITO_CORE)Lorg/mockito/internal/MockitoCore;').
name_ref(f_mockito_stubber_137, field, 'mockitoStubber', 'Lorg/mockito/internal/MockHandler<Lorg/mockito/internal/MockHandler;:TT;>;.mockitoStubber)Lorg/mockito/internal/stubbing/MockitoStubber;').
name_ref(f_name_178, field, 'name', 'Lorg/mockito/internal/creation/MockSettingsImpl;.name)Ljava/lang/String;').
name_ref(f_naming_policy_that_allows_imposterisation_of_classes_in_signed_packages_188, field, 'NAMING_POLICY_THAT_ALLOWS_IMPOSTERISATION_OF_CLASSES_IN_SIGNED_PACKAGES', 'Lorg/mockito/internal/creation/jmock/ClassImposterizer;.NAMING_POLICY_THAT_ALLOWS_IMPOSTERISATION_OF_CLASSES_IN_SIGNED_PACKAGES)Lorg/mockito/cglib/core/NamingPolicy;').
name_ref(f_objenesis_187, field, 'objenesis', 'Lorg/mockito/internal/creation/jmock/ClassImposterizer;.objenesis)Lorg/objenesis/ObjenesisStd;').
name_ref(f_overridden_default_answer_75, field, 'overriddenDefaultAnswer', 'Lorg/mockito/configuration/MockitoConfiguration;.overriddenDefaultAnswer)Lorg/mockito/stubbing/Answer<Ljava/lang/Object;>;').
name_ref(f_registered_invocations_138, field, 'registeredInvocations', 'Lorg/mockito/internal/MockHandler<Lorg/mockito/internal/MockHandler;:TT;>;.registeredInvocations)Lorg/mockito/internal/verification/RegisteredInvocations;').
name_ref(f_reporter_146, field, 'reporter', 'Lorg/mockito/internal/MockitoCore;.reporter)Lorg/mockito/exceptions/Reporter;').
name_ref(f_reporter_234, field, 'reporter', 'Lorg/mockito/internal/progress/MockingProgressImpl;.reporter)Lorg/mockito/exceptions/Reporter;').
name_ref(f_returns_defaults_36, field, 'RETURNS_DEFAULTS', 'Lorg/mockito/Mockito;.RETURNS_DEFAULTS)Lorg/mockito/stubbing/Answer<Ljava/lang/Object;>;').
name_ref(f_returns_mocks_38, field, 'RETURNS_MOCKS', 'Lorg/mockito/Mockito;.RETURNS_MOCKS)Lorg/mockito/stubbing/Answer<Ljava/lang/Object;>;').
name_ref(f_returns_smart_nulls_37, field, 'RETURNS_SMART_NULLS', 'Lorg/mockito/Mockito;.RETURNS_SMART_NULLS)Lorg/mockito/stubbing/Answer<Ljava/lang/Object;>;').
name_ref(f_spied_instance_180, field, 'spiedInstance', 'Lorg/mockito/internal/creation/MockSettingsImpl;.spiedInstance)Ljava/lang/Object;').
name_ref(f_stubbed_247, field, 'stubbed', 'Lorg/mockito/internal/stubbing/MockitoStubber;.stubbed)Ljava/util/LinkedList<Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;>;').
name_ref(f_stubbing_in_progress_237, field, 'stubbingInProgress', 'Lorg/mockito/internal/progress/MockingProgressImpl;.stubbingInProgress)Lorg/mockito/internal/debugging/Location;').
name_ref(f_surrogate_286, field, 'surrogate', 'Lorg/mockito/internal/util/MockName;.surrogate)Z').
name_ref(f_tool_319, field, 'tool', 'Lorg/mockito/internal/verification/argumentmatching/ArgumentMatchingToolTest;.tool)Lorg/mockito/internal/verification/argumentmatching/ArgumentMatchingTool;').
name_ref(f_unstubbed_invocations_211, field, 'unstubbedInvocations', 'Lorg/mockito/internal/debugging/DebuggingInfo;.unstubbedInvocations)Ljava/util/List<Lorg/mockito/internal/invocation/InvocationMatcher;>;').
name_ref(f_unused_stubs_210, field, 'unusedStubs', 'Lorg/mockito/internal/debugging/DebuggingInfo;.unusedStubs)Ljava/util/List<Lorg/mockito/internal/invocation/Invocation;>;').
name_ref(f_verification_mode_241, field, 'verificationMode', 'Lorg/mockito/internal/progress/MockingProgressImpl;.verificationMode)Lorg/mockito/internal/debugging/Localized<Lorg/mockito/internal/verification/api/VerificationMode;>;').
name_ref(f_wanted_221, field, 'wanted', 'Lorg/mockito/internal/matchers/Equals;.wanted)Ljava/lang/Object;').
name_ref(m__105, method, '', 'Lorg/mockito/configuration/MockitoConfiguration$1359;.()V').
name_ref(m__211, method, '', 'Lorg/mockito/internal/creation/jmock/ClassImposterizer$1657;.()V').
name_ref(m__213, method, '', 'Lorg/mockito/internal/creation/jmock/ClassImposterizer$1972;.()V').
name_ref(m_accept_214, method, 'accept', 'Lorg/mockito/internal/creation/jmock/ClassImposterizer$1972;.accept(Ljava/lang/reflect/Method;)I').
name_ref(m_add_337, method, 'add', 'Lorg/mockito/internal/verification/RegisteredInvocations;.add(Lorg/mockito/internal/invocation/Invocation;)V').
name_ref(m_add_answer_292, method, 'addAnswer', 'Lorg/mockito/internal/stubbing/MockitoStubber;.addAnswer(Lorg/mockito/stubbing/Answer;)V').
name_ref(m_add_answer_294, method, 'addAnswer', 'Lorg/mockito/internal/stubbing/MockitoStubber;.addAnswer(Lorg/mockito/stubbing/Answer;Z)V').
name_ref(m_add_answer_for_void_method_297, method, 'addAnswerForVoidMethod', 'Lorg/mockito/internal/stubbing/MockitoStubber;.addAnswerForVoidMethod(Lorg/mockito/stubbing/Answer;)V').
name_ref(m_add_consecutive_answer_293, method, 'addConsecutiveAnswer', 'Lorg/mockito/internal/stubbing/MockitoStubber;.addConsecutiveAnswer(Lorg/mockito/stubbing/Answer;)V').
name_ref(m_add_potentially_unstubbed_229, method, 'addPotentiallyUnstubbed', 'Lorg/mockito/internal/debugging/DebuggingInfo;.addPotentiallyUnstubbed(Lorg/mockito/internal/invocation/InvocationMatcher;)V').
name_ref(m_add_stubbed_invocation_228, method, 'addStubbedInvocation', 'Lorg/mockito/internal/debugging/DebuggingInfo;.addStubbedInvocation(Lorg/mockito/internal/invocation/Invocation;)V').
name_ref(m_answer_302, method, 'answer', 'Lorg/mockito/internal/stubbing/answers/CallsRealMethods;.answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;|Ljava/lang/Throwable;').
name_ref(m_answer_303, method, 'answer', 'Lorg/mockito/internal/stubbing/defaultanswers/GloballyConfiguredAnswer;.answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;|Ljava/lang/Throwable;').
name_ref(m_answer_304, method, 'answer', 'Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValues;.answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;').
name_ref(m_answer_308, method, 'answer', 'Lorg/mockito/internal/stubbing/defaultanswers/ReturnsMocks;.answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;|Ljava/lang/Throwable;').
name_ref(m_answer_311, method, 'answer', 'Lorg/mockito/internal/stubbing/defaultanswers/ReturnsMoreEmptyValues;.answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;|Ljava/lang/Throwable;').
name_ref(m_answer_315, method, 'answer', 'Lorg/mockito/internal/stubbing/defaultanswers/ReturnsSmartNulls;.answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;|Ljava/lang/Throwable;').
name_ref(m_answer_to_295, method, 'answerTo', 'Lorg/mockito/internal/stubbing/MockitoStubber;.answerTo(Lorg/mockito/internal/invocation/Invocation;)Ljava/lang/Object;|Ljava/lang/Throwable;').
name_ref(m_any_13, method, 'any', 'Lorg/mockito/Matchers;.any<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)TT;').
name_ref(m_any_14, method, 'any', 'Lorg/mockito/Matchers;.any<T:Ljava/lang/Object;>()TT;').
name_ref(m_any_boolean_4, method, 'anyBoolean', 'Lorg/mockito/Matchers;.anyBoolean()Z').
name_ref(m_any_byte_5, method, 'anyByte', 'Lorg/mockito/Matchers;.anyByte()B').
name_ref(m_any_char_6, method, 'anyChar', 'Lorg/mockito/Matchers;.anyChar()C').
name_ref(m_any_collection_21, method, 'anyCollection', 'Lorg/mockito/Matchers;.anyCollection()Ljava/util/Collection;').
name_ref(m_any_collection_of_22, method, 'anyCollectionOf', 'Lorg/mockito/Matchers;.anyCollectionOf<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)Ljava/util/Collection<TT;>;').
name_ref(m_any_double_10, method, 'anyDouble', 'Lorg/mockito/Matchers;.anyDouble()D').
name_ref(m_any_float_9, method, 'anyFloat', 'Lorg/mockito/Matchers;.anyFloat()F').
name_ref(m_any_int_7, method, 'anyInt', 'Lorg/mockito/Matchers;.anyInt()I').
name_ref(m_any_list_16, method, 'anyList', 'Lorg/mockito/Matchers;.anyList()Ljava/util/List;').
name_ref(m_any_list_of_17, method, 'anyListOf', 'Lorg/mockito/Matchers;.anyListOf<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)Ljava/util/List<TT;>;').
name_ref(m_any_long_8, method, 'anyLong', 'Lorg/mockito/Matchers;.anyLong()J').
name_ref(m_any_map_20, method, 'anyMap', 'Lorg/mockito/Matchers;.anyMap()Ljava/util/Map;').
name_ref(m_any_object_12, method, 'anyObject', 'Lorg/mockito/Matchers;.anyObject<T:Ljava/lang/Object;>()TT;').
name_ref(m_any_set_18, method, 'anySet', 'Lorg/mockito/Matchers;.anySet()Ljava/util/Set;').
name_ref(m_any_set_of_19, method, 'anySetOf', 'Lorg/mockito/Matchers;.anySetOf<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)Ljava/util/Set<TT;>;').
name_ref(m_any_short_11, method, 'anyShort', 'Lorg/mockito/Matchers;.anyShort()S').
name_ref(m_any_string_15, method, 'anyString', 'Lorg/mockito/Matchers;.anyString()Ljava/lang/String;').
name_ref(m_append_text_241, method, 'appendText', 'Lorg/hamcrest/Description;.appendText(Ljava/lang/String;)Lorg/hamcrest/Description;').
name_ref(m_arg_that_42, method, 'argThat', 'Lorg/mockito/Matchers;.argThat<T:Ljava/lang/Object;>(Lorg/hamcrest/Matcher<TT;>;)TT;').
name_ref(m_argument_matcher_storage_impl_262, method, 'ArgumentMatcherStorageImpl', 'Lorg/mockito/internal/progress/ArgumentMatcherStorageImpl;.()V').
name_ref(m_argument_matching_tool_348, method, 'ArgumentMatchingTool', 'Lorg/mockito/internal/verification/argumentmatching/ArgumentMatchingTool;.()V').
name_ref(m_arguments_are_different_125, method, 'argumentsAreDifferent', 'Lorg/mockito/exceptions/Reporter;.argumentsAreDifferent(Ljava/lang/String;Ljava/lang/String;Lorg/mockito/internal/debugging/Location;)V').
name_ref(m_array_list_290, method, 'ArrayList', 'Ljava/util/ArrayList;.()V').
name_ref(m_as_list_355, method, 'asList', 'Ljava/util/Arrays;.asList<T:Ljava/lang/Object;>([TT;)Ljava/util/List<TT;>;').
name_ref(m_assert_contains_373, method, 'assertContains', 'Lorg/mockitoutil/TestBase;.assertContains(Ljava/lang/String;Ljava/lang/String;)V').
name_ref(m_assert_mocks_not_empty_171, method, 'assertMocksNotEmpty', 'Lorg/mockito/internal/MockitoCore;.assertMocksNotEmpty([Ljava/lang/Object;)V').
name_ref(m_assert_not_contains_374, method, 'assertNotContains', 'Lorg/mockitoutil/TestBase;.assertNotContains(Ljava/lang/String;Ljava/lang/String;)V').
name_ref(m_assert_not_equals_372, method, 'assertNotEquals', 'Lorg/mockitoutil/TestBase;.assertNotEquals(Ljava/lang/Object;Ljava/lang/Object;)V').
name_ref(m_assert_state_257, method, 'assertState', 'Lorg/mockito/internal/progress/ArgumentMatcherStorageImpl;.assertState(ZLjava/lang/String;)V').
name_ref(m_assert_that_367, method, 'assertThat', 'Lorg/mockitoutil/TestBase;.assertThat<T:Ljava/lang/Object;>(TT;Lorg/mockitoutil/Assertor<TT;>;)V').
name_ref(m_assert_that_368, method, 'assertThat', 'Lorg/mockitoutil/TestBase;.assertThat<T:Ljava/lang/Object;>(TT;Lorg/hamcrest/Matcher<TT;>;)V').
name_ref(m_assert_that_369, method, 'assertThat', 'Lorg/mockitoutil/TestBase;.assertThat<T:Ljava/lang/Object;>(Ljava/lang/String;TT;Lorg/hamcrest/Matcher<TT;>;)V').
name_ref(m_assert_value_371, method, 'assertValue', 'Lorg/mockitoutil/TestBase$1953;.assertValue(Ljava/lang/String;)V').
name_ref(m_at_least_80, method, 'atLeast', 'Lorg/mockito/Mockito;.atLeast(I)Lorg/mockito/internal/verification/api/VerificationMode;').
name_ref(m_at_least_once_79, method, 'atLeastOnce', 'Lorg/mockito/Mockito;.atLeastOnce()Lorg/mockito/internal/verification/api/VerificationMode;').
name_ref(m_at_most_81, method, 'atMost', 'Lorg/mockito/Mockito;.atMost(I)Lorg/mockito/internal/verification/api/VerificationMode;').
name_ref(m_bind_matchers_235, method, 'bindMatchers', 'Lorg/mockito/internal/invocation/MatchersBinder;.bindMatchers(Lorg/mockito/internal/progress/ArgumentMatcherStorage;Lorg/mockito/internal/invocation/Invocation;)Lorg/mockito/internal/invocation/InvocationMatcher;').
name_ref(m_boolean_that_44, method, 'booleanThat', 'Lorg/mockito/Matchers;.booleanThat(Lorg/hamcrest/Matcher<Ljava/lang/Boolean;>;)Z').
name_ref(m_byte_that_45, method, 'byteThat', 'Lorg/mockito/Matchers;.byteThat(Lorg/hamcrest/Matcher<Ljava/lang/Byte;>;)B').
name_ref(m_calls_real_methods_56, method, 'CallsRealMethods', 'Lorg/mockito/internal/stubbing/answers/CallsRealMethods;.()V').
name_ref(m_can_imposterise_215, method, 'canImposterise', 'Lorg/mockito/internal/creation/jmock/ClassImposterizer;.canImposterise(Ljava/lang/Class<*>;)Z').
name_ref(m_cannot_mock_final_class_138, method, 'cannotMockFinalClass', 'Lorg/mockito/exceptions/Reporter;.cannotMockFinalClass(Ljava/lang/Class<*>;)V').
name_ref(m_cannot_stub_void_method_with_areturn_value_139, method, 'cannotStubVoidMethodWithAReturnValue', 'Lorg/mockito/exceptions/Reporter;.cannotStubVoidMethodWithAReturnValue()V').
name_ref(m_cannot_stub_with_null_throwable_109, method, 'cannotStubWithNullThrowable', 'Lorg/mockito/exceptions/Reporter;.cannotStubWithNullThrowable()V').
name_ref(m_char_that_43, method, 'charThat', 'Lorg/mockito/Matchers;.charThat(Lorg/hamcrest/Matcher<Ljava/lang/Character;>;)C').
name_ref(m_checked_exception_invalid_108, method, 'checkedExceptionInvalid', 'Lorg/mockito/exceptions/Reporter;.checkedExceptionInvalid(Ljava/lang/Throwable;)V').
name_ref(m_class_imposterizer_209, method, 'ClassImposterizer', 'Lorg/mockito/internal/creation/jmock/ClassImposterizer;.()V').
name_ref(m_class_path_loader_188, method, 'ClassPathLoader', 'Lorg/mockito/internal/configuration/ClassPathLoader;.()V').
name_ref(m_clean_up_config_in_any_case_361, method, 'cleanUpConfigInAnyCase', 'Lorg/mockitoutil/TestBase;.cleanUpConfigInAnyCase()V').
name_ref(m_cleans_stack_trace_100, method, 'cleansStackTrace', 'Lorg/mockito/configuration/DefaultMockitoConfiguration;.cleansStackTrace()Z').
name_ref(m_cleans_stack_trace_107, method, 'cleansStackTrace', 'Lorg/mockito/configuration/MockitoConfiguration;.cleansStackTrace()Z').
name_ref(m_cleans_stack_trace_192, method, 'cleansStackTrace', 'Lorg/mockito/internal/configuration/GlobalConfiguration;.cleansStackTrace()Z').
name_ref(m_clear_data_232, method, 'clearData', 'Lorg/mockito/internal/debugging/DebuggingInfo;.clearData()V').
name_ref(m_collect_data_231, method, 'collectData', 'Lorg/mockito/internal/debugging/DebuggingInfo;.collectData()V').
name_ref(m_contains_38, method, 'contains', 'Lorg/mockito/Matchers;.contains(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_create_config_186, method, 'createConfig', 'Lorg/mockito/internal/configuration/GlobalConfiguration;.createConfig()Lorg/mockito/configuration/IMockitoConfiguration;').
name_ref(m_create_mock_328, method, 'createMock', 'Lorg/mockito/internal/util/MockUtil;.createMock<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Lorg/mockito/internal/progress/MockingProgress;Lorg/mockito/internal/creation/MockSettingsImpl;)TT;').
name_ref(m_create_mock_for_106, method, 'createMockFor', 'Lorg/mockito/configuration/MockitoConfiguration$1359;.createMockFor(Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Field;)Ljava/lang/Object;').
name_ref(m_create_mock_for_182, method, 'createMockFor', 'Lorg/mockito/internal/configuration/DefaultAnnotationEngine;.createMockFor(Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Field;)Ljava/lang/Object;').
name_ref(m_create_proxy_225, method, 'createProxy', 'Lorg/mockito/internal/creation/jmock/ClassImposterizer;.createProxy(Ljava/lang/Class<*>;Lorg/mockito/cglib/proxy/MethodInterceptor;)Ljava/lang/Object;').
name_ref(m_create_proxy_class_223, method, 'createProxyClass', 'Lorg/mockito/internal/creation/jmock/ClassImposterizer;.createProxyClass<T:Ljava/lang/Object;>(Ljava/lang/Class<*>;[Ljava/lang/Class<*>;)Ljava/lang/Class<*>;').
name_ref(m_create_too_little_invocations_message_134, method, 'createTooLittleInvocationsMessage', 'Lorg/mockito/exceptions/Reporter;.createTooLittleInvocationsMessage(Lorg/mockito/exceptions/Discrepancy;Lorg/mockito/exceptions/PrintableInvocation;Lorg/mockito/internal/debugging/Location;)Ljava/lang/String;').
name_ref(m_create_too_many_invocations_message_131, method, 'createTooManyInvocationsMessage', 'Lorg/mockito/exceptions/Reporter;.createTooManyInvocationsMessage(IILorg/mockito/exceptions/PrintableInvocation;Lorg/mockito/internal/debugging/Location;)Ljava/lang/String;').
name_ref(m_create_wanted_but_not_invoked_message_128, method, 'createWantedButNotInvokedMessage', 'Lorg/mockito/exceptions/Reporter;.createWantedButNotInvokedMessage(Lorg/mockito/exceptions/PrintableInvocation;)Ljava/lang/String;').
name_ref(m_creation_validator_327, method, 'CreationValidator', 'Lorg/mockito/internal/util/CreationValidator;.()V').
name_ref(m_debugging_info_263, method, 'DebuggingInfo', 'Lorg/mockito/internal/debugging/DebuggingInfo;.()V').
name_ref(m_default_answer_84, method, 'defaultAnswer', 'Lorg/mockito/internal/creation/MockSettingsImpl;.defaultAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/MockSettings;').
name_ref(m_default_mockito_configuration_187, method, 'DefaultMockitoConfiguration', 'Lorg/mockito/configuration/DefaultMockitoConfiguration;.()V').
name_ref(m_describe_242, method, 'describe', 'Lorg/mockito/internal/matchers/Equals;.describe(Ljava/lang/Object;)Ljava/lang/String;').
name_ref(m_describe_377, method, 'describe', 'Lorg/mockitoutil/TestBase;.describe(Lorg/hamcrest/SelfDescribing;)Ljava/lang/String;').
name_ref(m_describe_to_2, method, 'describeTo', 'Lorg/mockito/ArgumentMatcher;.describeTo(Lorg/hamcrest/Description;)V').
name_ref(m_describe_to_240, method, 'describeTo', 'Lorg/mockito/internal/matchers/Equals;.describeTo(Lorg/hamcrest/Description;)V').
name_ref(m_describe_to_249, method, 'describeTo', 'Lorg/mockito/internal/matchers/Equals$1807;.describeTo(Lorg/hamcrest/Description;)V').
name_ref(m_describe_to_353, method, 'describeTo', 'Lorg/mockito/internal/verification/argumentmatching/ArgumentMatchingToolTest$2107;.describeTo(Lorg/hamcrest/Description;)V').
name_ref(m_describe_to_358, method, 'describeTo', 'Lorg/mockito/internal/verification/argumentmatching/ArgumentMatchingToolTest$3063;.describeTo(Lorg/hamcrest/Description;)V').
name_ref(m_do_answer_173, method, 'doAnswer', 'Lorg/mockito/internal/MockitoCore;.doAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/stubbing/Stubber;').
name_ref(m_do_answer_73, method, 'doAnswer', 'Lorg/mockito/Mockito;.doAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/stubbing/Stubber;').
name_ref(m_do_call_real_method_72, method, 'doCallRealMethod', 'Lorg/mockito/Mockito;.doCallRealMethod()Lorg/mockito/stubbing/Stubber;').
name_ref(m_do_fun_359, method, 'doFun', 'Lorg/mockitousage/bugs/ActualInvocationHasNullArgumentNPEBugTest$Fun;.doFun(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_do_nothing_74, method, 'doNothing', 'Lorg/mockito/Mockito;.doNothing()Lorg/mockito/stubbing/Stubber;').
name_ref(m_do_return_75, method, 'doReturn', 'Lorg/mockito/Mockito;.doReturn(Ljava/lang/Object;)Lorg/mockito/stubbing/Stubber;').
name_ref(m_do_throw_71, method, 'doThrow', 'Lorg/mockito/Mockito;.doThrow(Ljava/lang/Throwable;)Lorg/mockito/stubbing/Stubber;').
name_ref(m_double_that_50, method, 'doubleThat', 'Lorg/mockito/Matchers;.doubleThat(Lorg/hamcrest/Matcher<Ljava/lang/Double;>;)D').
name_ref(m_ends_with_370, method, 'endsWith', 'Lorg/mockitoutil/TestBase;.endsWith<T:Ljava/lang/Object;>(Ljava/lang/String;)Lorg/mockitoutil/Assertor<Ljava/lang/String;>;').
name_ref(m_ends_with_40, method, 'endsWith', 'Lorg/mockito/Matchers;.endsWith(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_eq_24, method, 'eq', 'Lorg/mockito/Matchers;.eq(Z)Z').
name_ref(m_eq_25, method, 'eq', 'Lorg/mockito/Matchers;.eq(B)B').
name_ref(m_eq_26, method, 'eq', 'Lorg/mockito/Matchers;.eq(C)C').
name_ref(m_eq_27, method, 'eq', 'Lorg/mockito/Matchers;.eq(D)D').
name_ref(m_eq_28, method, 'eq', 'Lorg/mockito/Matchers;.eq(F)F').
name_ref(m_eq_29, method, 'eq', 'Lorg/mockito/Matchers;.eq(I)I').
name_ref(m_eq_30, method, 'eq', 'Lorg/mockito/Matchers;.eq(J)J').
name_ref(m_eq_31, method, 'eq', 'Lorg/mockito/Matchers;.eq(S)S').
name_ref(m_eq_32, method, 'eq', 'Lorg/mockito/Matchers;.eq<T:Ljava/lang/Object;>(TT;)TT;').
name_ref(m_equals_237, method, 'Equals', 'Lorg/mockito/internal/matchers/Equals;.(Ljava/lang/Object;)V').
name_ref(m_equals_239, method, 'equals', 'Ljava/lang/Object;.equals(Ljava/lang/Object;)Z').
name_ref(m_equals_246, method, 'equals', 'Lorg/mockito/internal/matchers/Equals;.equals(Ljava/lang/Object;)Z').
name_ref(m_equals_346, method, 'equals', 'Ljava/lang/String;.equals(Ljava/lang/Object;)Z').
name_ref(m_extra_interfaces_200, method, 'extraInterfaces', 'Lorg/mockito/internal/creation/MockSettingsImpl;.extraInterfaces([Ljava/lang/Class<*>;)Lorg/mockito/MockSettings;').
name_ref(m_extra_interfaces_accepts_only_interfaces_147, method, 'extraInterfacesAcceptsOnlyInterfaces', 'Lorg/mockito/exceptions/Reporter;.extraInterfacesAcceptsOnlyInterfaces(Ljava/lang/Class<*>;)V').
name_ref(m_extra_interfaces_cannot_contain_mocked_type_148, method, 'extraInterfacesCannotContainMockedType', 'Lorg/mockito/exceptions/Reporter;.extraInterfacesCannotContainMockedType(Ljava/lang/Class<*>;)V').
name_ref(m_extra_interfaces_does_not_accept_null_parameters_146, method, 'extraInterfacesDoesNotAcceptNullParameters', 'Lorg/mockito/exceptions/Reporter;.extraInterfacesDoesNotAcceptNullParameters()V').
name_ref(m_extra_interfaces_requires_at_least_one_interface_149, method, 'extraInterfacesRequiresAtLeastOneInterface', 'Lorg/mockito/exceptions/Reporter;.extraInterfacesRequiresAtLeastOneInterface()V').
name_ref(m_filter_constructors_224, method, 'filterConstructors', 'Lorg/mockito/internal/creation/jmock/ClassImposterizer$3235;.filterConstructors(Ljava/lang/Class;Ljava/util/List;)V').
name_ref(m_find_answer_for_296, method, 'findAnswerFor', 'Lorg/mockito/internal/stubbing/MockitoStubber;.findAnswerFor(Lorg/mockito/internal/invocation/Invocation;)Lorg/mockito/stubbing/Answer<*>;').
name_ref(m_float_that_49, method, 'floatThat', 'Lorg/mockito/Matchers;.floatThat(Lorg/hamcrest/Matcher<Ljava/lang/Float;>;)F').
name_ref(m_for_name_178, method, 'forName', 'Ljava/lang/Class;.forName(Ljava/lang/String;)Ljava/lang/Class<*>;|Ljava/lang/ClassNotFoundException;').
name_ref(m_get_184, method, 'get', 'Ljava/lang/ThreadLocal;.get()TT;').
name_ref(m_get_all_339, method, 'getAll', 'Lorg/mockito/internal/verification/RegisteredInvocations;.getAll()Ljava/util/List<Lorg/mockito/internal/invocation/Invocation;>;').
name_ref(m_get_annotation_engine_104, method, 'getAnnotationEngine', 'Lorg/mockito/configuration/MockitoConfiguration;.getAnnotationEngine()Lorg/mockito/configuration/AnnotationEngine;').
name_ref(m_get_annotation_engine_191, method, 'getAnnotationEngine', 'Lorg/mockito/configuration/IMockitoConfiguration;.getAnnotationEngine()Lorg/mockito/configuration/AnnotationEngine;').
name_ref(m_get_annotation_engine_90, method, 'getAnnotationEngine', 'Lorg/mockito/internal/configuration/GlobalConfiguration;.getAnnotationEngine()Lorg/mockito/configuration/AnnotationEngine;').
name_ref(m_get_annotation_engine_99, method, 'getAnnotationEngine', 'Lorg/mockito/configuration/DefaultMockitoConfiguration;.getAnnotationEngine()Lorg/mockito/configuration/AnnotationEngine;').
name_ref(m_get_annotations_93, method, 'getAnnotations', 'Ljava/lang/reflect/AccessibleObject;.getAnnotations()[Ljava/lang/annotation/Annotation;').
name_ref(m_get_argument_matcher_storage_272, method, 'getArgumentMatcherStorage', 'Lorg/mockito/internal/progress/MockingProgressImpl;.getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;').
name_ref(m_get_argument_matcher_storage_288, method, 'getArgumentMatcherStorage', 'Lorg/mockito/internal/progress/ThreadSafeMockingProgress;.getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;').
name_ref(m_get_class_87, method, 'getClass', 'Ljava/lang/Object;.getClass()Ljava/lang/Class<*>;').
name_ref(m_get_class_name_212, method, 'getClassName', 'Lorg/mockito/internal/creation/jmock/ClassImposterizer$1657;.getClassName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lorg/mockito/cglib/core/Predicate;)Ljava/lang/String;').
name_ref(m_get_config_180, method, 'getConfig', 'Lorg/mockito/internal/configuration/ConfigurationAccess;.getConfig()Lorg/mockito/configuration/MockitoConfiguration;').
name_ref(m_get_debugging_info_276, method, 'getDebuggingInfo', 'Lorg/mockito/internal/progress/MockingProgressImpl;.getDebuggingInfo()Lorg/mockito/internal/debugging/DebuggingInfo;').
name_ref(m_get_debugging_info_289, method, 'getDebuggingInfo', 'Lorg/mockito/internal/progress/ThreadSafeMockingProgress;.getDebuggingInfo()Lorg/mockito/internal/debugging/DebuggingInfo;').
name_ref(m_get_declared_constructors_222, method, 'getDeclaredConstructors', 'Ljava/lang/Class;.getDeclaredConstructors()[Ljava/lang/reflect/Constructor<*>;|Ljava/lang/SecurityException;').
name_ref(m_get_declared_fields_92, method, 'getDeclaredFields', 'Ljava/lang/Class;.getDeclaredFields()[Ljava/lang/reflect/Field;|Ljava/lang/SecurityException;').
name_ref(m_get_default_answer_103, method, 'getDefaultAnswer', 'Lorg/mockito/configuration/MockitoConfiguration;.getDefaultAnswer()Lorg/mockito/stubbing/Answer<Ljava/lang/Object;>;').
name_ref(m_get_default_answer_193, method, 'getDefaultAnswer', 'Lorg/mockito/internal/configuration/GlobalConfiguration;.getDefaultAnswer()Lorg/mockito/stubbing/Answer<Ljava/lang/Object;>;').
name_ref(m_get_default_answer_206, method, 'getDefaultAnswer', 'Lorg/mockito/internal/creation/MockSettingsImpl;.getDefaultAnswer()Lorg/mockito/stubbing/Answer<Ljava/lang/Object;>;').
name_ref(m_get_default_answer_98, method, 'getDefaultAnswer', 'Lorg/mockito/configuration/DefaultMockitoConfiguration;.getDefaultAnswer()Lorg/mockito/stubbing/Answer<Ljava/lang/Object;>;').
name_ref(m_get_delegate_199, method, 'getDelegate', 'Lorg/mockito/internal/creation/MethodInterceptorFilter;.getDelegate()TT;').
name_ref(m_get_extra_interfaces_202, method, 'getExtraInterfaces', 'Lorg/mockito/internal/creation/MockSettingsImpl;.getExtraInterfaces()[Ljava/lang/Class<*>;').
name_ref(m_get_interceptor_334, method, 'getInterceptor', 'Lorg/mockito/internal/util/MockUtil;.getInterceptor<T:Ljava/lang/Object;>(TT;)Lorg/mockito/internal/creation/MethodInterceptorFilter<Lorg/mockito/internal/MockHandler<TT;>;>;').
name_ref(m_get_it_181, method, 'getIt', 'Lorg/mockito/internal/configuration/GlobalConfiguration;.getIt()Lorg/mockito/configuration/IMockitoConfiguration;').
name_ref(m_get_last_invocation_176, method, 'getLastInvocation', 'Lorg/mockito/internal/MockitoCore;.getLastInvocation()Lorg/mockito/internal/invocation/Invocation;').
name_ref(m_get_last_invocation_366, method, 'getLastInvocation', 'Lorg/mockitoutil/TestBase;.getLastInvocation()Lorg/mockito/internal/invocation/Invocation;').
name_ref(m_get_method_196, method, 'getMethod', 'Ljava/lang/Class;.getMethod(Ljava/lang/String;[Ljava/lang/Class<*>;)Ljava/lang/reflect/Method;|Ljava/lang/NoSuchMethodException;|Ljava/lang/SecurityException;').
name_ref(m_get_mock_handler_331, method, 'getMockHandler', 'Lorg/mockito/internal/util/MockUtil;.getMockHandler<T:Ljava/lang/Object;>(TT;)Lorg/mockito/internal/MockHandler<TT;>;').
name_ref(m_get_mock_name_158, method, 'getMockName', 'Lorg/mockito/internal/MockHandler;.getMockName()Lorg/mockito/internal/util/MockName;').
name_ref(m_get_mock_name_201, method, 'getMockName', 'Lorg/mockito/internal/creation/MockSettingsImpl;.getMockName()Ljava/lang/String;').
name_ref(m_get_mock_name_335, method, 'getMockName', 'Lorg/mockito/internal/util/MockUtil;.getMockName(Ljava/lang/Object;)Lorg/mockito/internal/util/MockName;').
name_ref(m_get_modifiers_218, method, 'getModifiers', 'Ljava/lang/Class;.getModifiers()I').
name_ref(m_get_registered_invocations_157, method, 'getRegisteredInvocations', 'Lorg/mockito/internal/MockHandler;.getRegisteredInvocations()Ljava/util/List<Lorg/mockito/internal/invocation/Invocation;>;').
name_ref(m_get_return_values_190, method, 'getReturnValues', 'Lorg/mockito/internal/configuration/GlobalConfiguration;.getReturnValues()Lorg/mockito/ReturnValues;').
name_ref(m_get_return_values_97, method, 'getReturnValues', 'Lorg/mockito/configuration/DefaultMockitoConfiguration;.getReturnValues()Lorg/mockito/ReturnValues;').
name_ref(m_get_simple_name_320, method, 'getSimpleName', 'Ljava/lang/Class;.getSimpleName()Ljava/lang/String;').
name_ref(m_get_spied_instance_203, method, 'getSpiedInstance', 'Lorg/mockito/internal/creation/MockSettingsImpl;.getSpiedInstance()Ljava/lang/Object;').
name_ref(m_get_superclass_89, method, 'getSuperclass', 'Ljava/lang/Class;.getSuperclass()Ljava/lang/Class<-TT;>;').
name_ref(m_get_suspiciously_not_matching_args_indexes_341, method, 'getSuspiciouslyNotMatchingArgsIndexes', 'Lorg/mockito/internal/verification/argumentmatching/ArgumentMatchingTool;.getSuspiciouslyNotMatchingArgsIndexes(Ljava/util/List<Lorg/hamcrest/Matcher;>;[Ljava/lang/Object;)[Ljava/lang/Integer;').
name_ref(m_get_tag_208, method, 'getTag', 'Lorg/mockito/internal/creation/cglib/MockitoNamingPolicy;.getTag()Ljava/lang/String;').
name_ref(m_get_wanted_245, method, 'getWanted', 'Lorg/mockito/internal/matchers/Equals;.getWanted()Ljava/lang/Object;').
name_ref(m_global_configuration_91, method, 'GlobalConfiguration', 'Lorg/mockito/internal/configuration/GlobalConfiguration;.()V').
name_ref(m_globally_configured_answer_53, method, 'GloballyConfiguredAnswer', 'Lorg/mockito/internal/stubbing/defaultanswers/GloballyConfiguredAnswer;.()V').
name_ref(m_has_answers_for_stubbing_299, method, 'hasAnswersForStubbing', 'Lorg/mockito/internal/stubbing/MockitoStubber;.hasAnswersForStubbing()Z').
name_ref(m_has_data_234, method, 'hasData', 'Lorg/mockito/internal/debugging/DebuggingInfo;.hasData()Z').
name_ref(m_hash_code_247, method, 'hashCode', 'Lorg/mockito/internal/matchers/Equals;.hashCode()I').
name_ref(m_hash_code_for_mock_198, method, 'hashCodeForMock', 'Lorg/mockito/internal/creation/MethodInterceptorFilter;.hashCodeForMock(Ljava/lang/Object;)I').
name_ref(m_imposterise_220, method, 'imposterise', 'Lorg/mockito/internal/creation/jmock/ClassImposterizer;.imposterise<T:Ljava/lang/Object;>(Lorg/mockito/cglib/proxy/MethodInterceptor;Ljava/lang/Class<TT;>;[Ljava/lang/Class<*>;)TT;').
name_ref(m_in_order_172, method, 'inOrder', 'Lorg/mockito/internal/MockitoCore;.inOrder([Ljava/lang/Object;)Lorg/mockito/InOrder;').
name_ref(m_in_order_76, method, 'inOrder', 'Lorg/mockito/Mockito;.inOrder([Ljava/lang/Object;)Lorg/mockito/InOrder;').
name_ref(m_in_order_requires_familiar_mock_123, method, 'inOrderRequiresFamiliarMock', 'Lorg/mockito/exceptions/Reporter;.inOrderRequiresFamiliarMock()V').
name_ref(m_init_362, method, 'init', 'Lorg/mockitoutil/TestBase;.init()V').
name_ref(m_init_mocks_86, method, 'initMocks', 'Lorg/mockito/MockitoAnnotations;.initMocks(Ljava/lang/Object;)V').
name_ref(m_int_that_47, method, 'intThat', 'Lorg/mockito/Matchers;.intThat(Lorg/hamcrest/Matcher<Ljava/lang/Integer;>;)I').
name_ref(m_intercept_154, method, 'intercept', 'Lorg/mockito/internal/MockHandler;.intercept(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lorg/mockito/cglib/proxy/MethodProxy;)Ljava/lang/Object;|Ljava/lang/Throwable;').
name_ref(m_intercept_197, method, 'intercept', 'Lorg/mockito/internal/creation/MethodInterceptorFilter;.intercept(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lorg/mockito/cglib/proxy/MethodProxy;)Ljava/lang/Object;|Ljava/lang/Throwable;').
name_ref(m_intercept_314, method, 'intercept', 'Lorg/mockito/internal/stubbing/defaultanswers/ReturnsSmartNulls$ThrowingInterceptor;.intercept(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lorg/mockito/cglib/proxy/MethodProxy;)Ljava/lang/Object;|Ljava/lang/Throwable;').
name_ref(m_invalid_use_of_matchers_124, method, 'invalidUseOfMatchers', 'Lorg/mockito/exceptions/Reporter;.invalidUseOfMatchers(II)V').
name_ref(m_invocation_of_375, method, 'invocationOf', 'Lorg/mockitoutil/TestBase;.invocationOf(Ljava/lang/Class<*>;Ljava/lang/String;[Ljava/lang/Object;)Lorg/mockito/internal/invocation/Invocation;|Ljava/lang/NoSuchMethodException;').
name_ref(m_invocation_of_376, method, 'invocationOf', 'Lorg/mockitoutil/TestBase;.invocationOf(Ljava/lang/Class<*>;Ljava/lang/String;Lorg/mockito/internal/invocation/realmethod/RealMethod;)Lorg/mockito/internal/invocation/Invocation;|Ljava/lang/NoSuchMethodException;').
name_ref(m_is_a_23, method, 'isA', 'Lorg/mockito/Matchers;.isA<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)TT;').
name_ref(m_is_anonymous_class_219, method, 'isAnonymousClass', 'Ljava/lang/Class;.isAnonymousClass()Z').
name_ref(m_is_empty_260, method, 'isEmpty', 'Ljava/util/Vector;.isEmpty()Z').
name_ref(m_is_final_217, method, 'isFinal', 'Ljava/lang/reflect/Modifier;.isFinal(I)Z').
name_ref(m_is_interface_195, method, 'isInterface', 'Ljava/lang/Class;.isInterface()Z').
name_ref(m_is_mock_333, method, 'isMock', 'Lorg/mockito/internal/util/MockUtil;.isMock(Ljava/lang/Object;)Z').
name_ref(m_is_mockito_mock_332, method, 'isMockitoMock', 'Lorg/mockito/internal/util/MockUtil;.isMockitoMock<T:Ljava/lang/Object;>(TT;)Z').
name_ref(m_is_not_null_37, method, 'isNotNull', 'Lorg/mockito/Matchers;.isNotNull()Ljava/lang/Object;').
name_ref(m_is_null_35, method, 'isNull', 'Lorg/mockito/Matchers;.isNull()Ljava/lang/Object;').
name_ref(m_is_out_340, method, 'isOut', 'Lorg/mockito/internal/verification/RegisteredInvocations$RemoveToString;.isOut(Lorg/mockito/internal/invocation/Invocation;)Z').
name_ref(m_is_primitive_216, method, 'isPrimitive', 'Ljava/lang/Class;.isPrimitive()Z').
name_ref(m_is_surrogate_324, method, 'isSurrogate', 'Lorg/mockito/internal/util/MockName;.isSurrogate()Z').
name_ref(m_linked_list_227, method, 'LinkedList', 'Ljava/util/LinkedList;.()V').
name_ref(m_load_configuration_177, method, 'loadConfiguration', 'Lorg/mockito/internal/configuration/ClassPathLoader;.loadConfiguration()Lorg/mockito/configuration/IMockitoConfiguration;').
name_ref(m_long_that_48, method, 'longThat', 'Lorg/mockito/Matchers;.longThat(Lorg/hamcrest/Matcher<Ljava/lang/Long;>;)J').
name_ref(m_make_stack_traces_clean_364, method, 'makeStackTracesClean', 'Lorg/mockitoutil/TestBase;.makeStackTracesClean()V').
name_ref(m_matchers_binder_329, method, 'MatchersBinder', 'Lorg/mockito/internal/invocation/MatchersBinder;.()V').
name_ref(m_matches_1, method, 'matches', 'Lorg/mockito/ArgumentMatcher;.matches(Ljava/lang/Object;)Z').
name_ref(m_matches_238, method, 'matches', 'Lorg/mockito/internal/matchers/Equals;.matches(Ljava/lang/Object;)Z').
name_ref(m_matches_344, method, 'matches', 'Lorg/hamcrest/Matcher;.matches(Ljava/lang/Object;)Z').
name_ref(m_matches_357, method, 'matches', 'Lorg/mockito/internal/verification/argumentmatching/ArgumentMatchingToolTest$3063;.matches(Ljava/lang/Object;)Z').
name_ref(m_matches_39, method, 'matches', 'Lorg/mockito/Matchers;.matches(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_method_interceptor_filter_194, method, 'MethodInterceptorFilter', 'Lorg/mockito/internal/creation/MethodInterceptorFilter;.(Ljava/lang/Class;TT;)V').
name_ref(m_misplaced_argument_matcher_143, method, 'misplacedArgumentMatcher', 'Lorg/mockito/exceptions/Reporter;.misplacedArgumentMatcher(Lorg/mockito/internal/debugging/Location;)V').
name_ref(m_missing_method_invocation_111, method, 'missingMethodInvocation', 'Lorg/mockito/exceptions/Reporter;.missingMethodInvocation()V').
name_ref(m_mock_162, method, 'mock', 'Lorg/mockito/internal/MockitoCore;.mock<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Lorg/mockito/MockSettings;)TT;').
name_ref(m_mock_57, method, 'mock', 'Lorg/mockito/Mockito;.mock<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)TT;').
name_ref(m_mock_58, method, 'mock', 'Lorg/mockito/Mockito;.mock<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Ljava/lang/String;)TT;').
name_ref(m_mock_59, method, 'mock', 'Lorg/mockito/Mockito;.mock<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Lorg/mockito/ReturnValues;)TT;').
name_ref(m_mock_60, method, 'mock', 'Lorg/mockito/Mockito;.mock<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Lorg/mockito/stubbing/Answer;)TT;').
name_ref(m_mock_61, method, 'mock', 'Lorg/mockito/Mockito;.mock<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Lorg/mockito/MockSettings;)TT;').
name_ref(m_mock_handler_150, method, 'MockHandler', 'Lorg/mockito/internal/MockHandler;.(Lorg/mockito/internal/util/MockName;Lorg/mockito/internal/progress/MockingProgress;Lorg/mockito/internal/invocation/MatchersBinder;Lorg/mockito/internal/creation/MockSettingsImpl;)V').
name_ref(m_mock_handler_153, method, 'MockHandler', 'Lorg/mockito/internal/MockHandler;.(Lorg/mockito/internal/MockHandler<TT;>;)V').
name_ref(m_mock_name_318, method, 'MockName', 'Lorg/mockito/internal/util/MockName;.(Ljava/lang/String;Ljava/lang/Class;)V').
name_ref(m_mock_settings_impl_85, method, 'MockSettingsImpl', 'Lorg/mockito/internal/creation/MockSettingsImpl;.()V').
name_ref(m_mock_util_161, method, 'MockUtil', 'Lorg/mockito/internal/util/MockUtil;.()V').
name_ref(m_mock_util_326, method, 'MockUtil', 'Lorg/mockito/internal/util/MockUtil;.(Lorg/mockito/internal/util/CreationValidator;)V').
name_ref(m_mocking_progress_impl_278, method, 'MockingProgressImpl', 'Lorg/mockito/internal/progress/MockingProgressImpl;.()V').
name_ref(m_mockito_core_52, method, 'MockitoCore', 'Lorg/mockito/internal/MockitoCore;.()V').
name_ref(m_mockito_naming_policy_207, method, 'MockitoNamingPolicy', 'Lorg/mockito/internal/creation/cglib/MockitoNamingPolicy;.()V').
name_ref(m_mockito_stubber_151, method, 'MockitoStubber', 'Lorg/mockito/internal/stubbing/MockitoStubber;.(Lorg/mockito/internal/progress/MockingProgress;)V').
name_ref(m_mocks_have_to_be_passed_to_verify_no_more_interactions_117, method, 'mocksHaveToBePassedToVerifyNoMoreInteractions', 'Lorg/mockito/exceptions/Reporter;.mocksHaveToBePassedToVerifyNoMoreInteractions()V').
name_ref(m_mocks_have_to_be_passed_when_creating_in_order_122, method, 'mocksHaveToBePassedWhenCreatingInOrder', 'Lorg/mockito/exceptions/Reporter;.mocksHaveToBePassedWhenCreatingInOrder()V').
name_ref(m_name_204, method, 'name', 'Lorg/mockito/internal/creation/MockSettingsImpl;.name(Ljava/lang/String;)Lorg/mockito/MockSettings;').
name_ref(m_never_78, method, 'never', 'Lorg/mockito/Mockito;.never()Lorg/mockito/internal/verification/api/VerificationMode;').
name_ref(m_never_wanted_but_invoked_132, method, 'neverWantedButInvoked', 'Lorg/mockito/exceptions/Reporter;.neverWantedButInvoked(Lorg/mockito/exceptions/PrintableInvocation;Lorg/mockito/internal/debugging/Location;)V').
name_ref(m_new_instance_179, method, 'newInstance', 'Ljava/lang/Class;.newInstance()TT;|Ljava/lang/InstantiationException;|Ljava/lang/IllegalAccessException;').
name_ref(m_no_argument_value_was_captured_145, method, 'noArgumentValueWasCaptured', 'Lorg/mockito/exceptions/Reporter;.noArgumentValueWasCaptured()V').
name_ref(m_no_more_interactions_wanted_137, method, 'noMoreInteractionsWanted', 'Lorg/mockito/exceptions/Reporter;.noMoreInteractionsWanted(Lorg/mockito/exceptions/PrintableInvocation;)V').
name_ref(m_not_amock_passed_to_verify_113, method, 'notAMockPassedToVerify', 'Lorg/mockito/exceptions/Reporter;.notAMockPassedToVerify()V').
name_ref(m_not_amock_passed_to_verify_no_more_interactions_118, method, 'notAMockPassedToVerifyNoMoreInteractions', 'Lorg/mockito/exceptions/Reporter;.notAMockPassedToVerifyNoMoreInteractions()V').
name_ref(m_not_amock_passed_to_when_method_115, method, 'notAMockPassedToWhenMethod', 'Lorg/mockito/exceptions/Reporter;.notAMockPassedToWhenMethod()V').
name_ref(m_not_amock_passed_when_creating_in_order_120, method, 'notAMockPassedWhenCreatingInOrder', 'Lorg/mockito/exceptions/Reporter;.notAMockPassedWhenCreatingInOrder()V').
name_ref(m_not_null_36, method, 'notNull', 'Lorg/mockito/Matchers;.notNull()Ljava/lang/Object;').
name_ref(m_null_passed_to_verify_114, method, 'nullPassedToVerify', 'Lorg/mockito/exceptions/Reporter;.nullPassedToVerify()V').
name_ref(m_null_passed_to_verify_no_more_interactions_119, method, 'nullPassedToVerifyNoMoreInteractions', 'Lorg/mockito/exceptions/Reporter;.nullPassedToVerifyNoMoreInteractions()V').
name_ref(m_null_passed_to_when_method_116, method, 'nullPassedToWhenMethod', 'Lorg/mockito/exceptions/Reporter;.nullPassedToWhenMethod()V').
name_ref(m_null_passed_when_creating_in_order_121, method, 'nullPassedWhenCreatingInOrder', 'Lorg/mockito/exceptions/Reporter;.nullPassedWhenCreatingInOrder()V').
name_ref(m_objenesis_std_210, method, 'ObjenesisStd', 'Lorg/objenesis/ObjenesisStd;.()V').
name_ref(m_only_void_methods_can_be_set_to_do_nothing_140, method, 'onlyVoidMethodsCanBeSetToDoNothing', 'Lorg/mockito/exceptions/Reporter;.onlyVoidMethodsCanBeSetToDoNothing()V').
name_ref(m_override_cleans_stack_trace_102, method, 'overrideCleansStackTrace', 'Lorg/mockito/configuration/MockitoConfiguration;.overrideCleansStackTrace(Z)V').
name_ref(m_override_default_answer_101, method, 'overrideDefaultAnswer', 'Lorg/mockito/configuration/MockitoConfiguration;.overrideDefaultAnswer(Lorg/mockito/stubbing/Answer<Ljava/lang/Object;>;)V').
name_ref(m_pop_last_argument_matchers_256, method, 'popLastArgumentMatchers', 'Lorg/mockito/internal/progress/ArgumentMatcherStorageImpl;.popLastArgumentMatchers(I)Ljava/util/List<Lorg/hamcrest/Matcher;>;').
name_ref(m_prepend_226, method, 'prepend', 'Lorg/mockito/internal/creation/jmock/ClassImposterizer;.prepend(Ljava/lang/Class<*>;[Ljava/lang/Class<*>;)[Ljava/lang/Class<*>;').
name_ref(m_primitive_of_306, method, 'primitiveOf', 'Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValues;.primitiveOf(Ljava/lang/Class<*>;)Ljava/lang/Object;').
name_ref(m_print_warnings_233, method, 'printWarnings', 'Lorg/mockito/internal/debugging/DebuggingInfo;.printWarnings(Lorg/mockito/internal/util/MockitoLogger;)V').
name_ref(m_pull_matchers_253, method, 'pullMatchers', 'Lorg/mockito/internal/progress/ArgumentMatcherStorageImpl;.pullMatchers()Ljava/util/List<Lorg/hamcrest/Matcher;>;').
name_ref(m_pull_ongoing_stubbing_265, method, 'pullOngoingStubbing', 'Lorg/mockito/internal/progress/MockingProgressImpl;.pullOngoingStubbing()Lorg/mockito/internal/progress/IOngoingStubbing;').
name_ref(m_pull_ongoing_stubbing_280, method, 'pullOngoingStubbing', 'Lorg/mockito/internal/progress/ThreadSafeMockingProgress;.pullOngoingStubbing()Lorg/mockito/internal/progress/IOngoingStubbing;').
name_ref(m_pull_verification_mode_268, method, 'pullVerificationMode', 'Lorg/mockito/internal/progress/MockingProgressImpl;.pullVerificationMode()Lorg/mockito/internal/verification/api/VerificationMode;').
name_ref(m_pull_verification_mode_282, method, 'pullVerificationMode', 'Lorg/mockito/internal/progress/ThreadSafeMockingProgress;.pullVerificationMode()Lorg/mockito/internal/verification/api/VerificationMode;').
name_ref(m_quoting_243, method, 'quoting', 'Lorg/mockito/internal/matchers/Equals;.quoting()Ljava/lang/String;').
name_ref(m_ref_eq_33, method, 'refEq', 'Lorg/mockito/Matchers;.refEq<T:Ljava/lang/Object;>(TT;[Ljava/lang/String;)TT;').
name_ref(m_registered_invocations_152, method, 'RegisteredInvocations', 'Lorg/mockito/internal/verification/RegisteredInvocations;.()V').
name_ref(m_remove_last_338, method, 'removeLast', 'Lorg/mockito/internal/verification/RegisteredInvocations;.removeLast()V').
name_ref(m_report_and_254, method, 'reportAnd', 'Lorg/mockito/internal/progress/ArgumentMatcherStorageImpl;.reportAnd()Lorg/mockito/internal/progress/HandyReturnValues;').
name_ref(m_report_matcher_252, method, 'reportMatcher', 'Lorg/mockito/internal/progress/ArgumentMatcherStorageImpl;.reportMatcher(Lorg/hamcrest/Matcher;)Lorg/mockito/internal/progress/HandyReturnValues;').
name_ref(m_report_matcher_51, method, 'reportMatcher', 'Lorg/mockito/Matchers;.reportMatcher(Lorg/hamcrest/Matcher<*>;)Lorg/mockito/internal/progress/HandyReturnValues;').
name_ref(m_report_not_255, method, 'reportNot', 'Lorg/mockito/internal/progress/ArgumentMatcherStorageImpl;.reportNot()Lorg/mockito/internal/progress/HandyReturnValues;').
name_ref(m_report_ongoing_stubbing_264, method, 'reportOngoingStubbing', 'Lorg/mockito/internal/progress/MockingProgressImpl;.reportOngoingStubbing(Lorg/mockito/internal/progress/IOngoingStubbing;)V').
name_ref(m_report_ongoing_stubbing_279, method, 'reportOngoingStubbing', 'Lorg/mockito/internal/progress/ThreadSafeMockingProgress;.reportOngoingStubbing(Lorg/mockito/internal/progress/IOngoingStubbing;)V').
name_ref(m_report_or_258, method, 'reportOr', 'Lorg/mockito/internal/progress/ArgumentMatcherStorageImpl;.reportOr()Lorg/mockito/internal/progress/HandyReturnValues;').
name_ref(m_report_used_stub_230, method, 'reportUsedStub', 'Lorg/mockito/internal/debugging/DebuggingInfo;.reportUsedStub(Lorg/mockito/internal/invocation/InvocationMatcher;)V').
name_ref(m_reporter_160, method, 'Reporter', 'Lorg/mockito/exceptions/Reporter;.()V').
name_ref(m_reset_169, method, 'reset', 'Lorg/mockito/internal/MockitoCore;.reset<T:Ljava/lang/Object;>([TT;)V').
name_ref(m_reset_261, method, 'reset', 'Lorg/mockito/internal/progress/ArgumentMatcherStorageImpl;.reset()V').
name_ref(m_reset_275, method, 'reset', 'Lorg/mockito/internal/progress/MockingProgressImpl;.reset()V').
name_ref(m_reset_286, method, 'reset', 'Lorg/mockito/internal/progress/ThreadSafeMockingProgress;.reset()V').
name_ref(m_reset_66, method, 'reset', 'Lorg/mockito/Mockito;.reset<T:Ljava/lang/Object;>([TT;)V').
name_ref(m_reset_94, method, 'reset', 'Lorg/mockito/StateMaster;.reset()V').
name_ref(m_reset_mock_330, method, 'resetMock', 'Lorg/mockito/internal/util/MockUtil;.resetMock<T:Ljava/lang/Object;>(TT;Lorg/mockito/internal/progress/MockingProgress;)V').
name_ref(m_reset_ongoing_stubbing_164, method, 'resetOngoingStubbing', 'Lorg/mockito/internal/progress/MockingProgress;.resetOngoingStubbing()V').
name_ref(m_reset_ongoing_stubbing_267, method, 'resetOngoingStubbing', 'Lorg/mockito/internal/progress/MockingProgressImpl;.resetOngoingStubbing()V').
name_ref(m_reset_ongoing_stubbing_287, method, 'resetOngoingStubbing', 'Lorg/mockito/internal/progress/ThreadSafeMockingProgress;.resetOngoingStubbing()V').
name_ref(m_reset_state_365, method, 'resetState', 'Lorg/mockitoutil/TestBase;.resetState()V').
name_ref(m_return_value_for_305, method, 'returnValueFor', 'Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValues;.returnValueFor(Ljava/lang/Class<*>;)Ljava/lang/Object;').
name_ref(m_return_value_for_309, method, 'returnValueFor', 'Lorg/mockito/internal/stubbing/defaultanswers/ReturnsMocks;.returnValueFor(Ljava/lang/Class<*>;)Ljava/lang/Object;').
name_ref(m_return_value_for_312, method, 'returnValueFor', 'Lorg/mockito/internal/stubbing/defaultanswers/ReturnsMoreEmptyValues;.returnValueFor(Ljava/lang/Class<*>;)Ljava/lang/Object;').
name_ref(m_returns_empty_values_310, method, 'ReturnsEmptyValues', 'Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValues;.()V').
name_ref(m_returns_mocks_55, method, 'ReturnsMocks', 'Lorg/mockito/internal/stubbing/defaultanswers/ReturnsMocks;.()V').
name_ref(m_returns_more_empty_values_307, method, 'ReturnsMoreEmptyValues', 'Lorg/mockito/internal/stubbing/defaultanswers/ReturnsMoreEmptyValues;.()V').
name_ref(m_returns_smart_nulls_54, method, 'ReturnsSmartNulls', 'Lorg/mockito/internal/stubbing/defaultanswers/ReturnsSmartNulls;.()V').
name_ref(m_safely_matches_343, method, 'safelyMatches', 'Lorg/mockito/internal/verification/argumentmatching/ArgumentMatchingTool;.safelyMatches(Lorg/hamcrest/Matcher;Ljava/lang/Object;)Z').
name_ref(m_same_34, method, 'same', 'Lorg/mockito/Matchers;.same<T:Ljava/lang/Object;>(TT;)TT;').
name_ref(m_scan_88, method, 'scan', 'Lorg/mockito/MockitoAnnotations;.scan(Ljava/lang/Object;Ljava/lang/Class<*>;)V').
name_ref(m_set_185, method, 'set', 'Ljava/lang/ThreadLocal;.set(TT;)V').
name_ref(m_set_answers_for_stubbing_159, method, 'setAnswersForStubbing', 'Lorg/mockito/internal/MockHandler;.setAnswersForStubbing(Ljava/util/List<Lorg/mockito/stubbing/Answer;>;)V').
name_ref(m_set_answers_for_stubbing_298, method, 'setAnswersForStubbing', 'Lorg/mockito/internal/stubbing/MockitoStubber;.setAnswersForStubbing(Ljava/util/List<Lorg/mockito/stubbing/Answer;>;)V').
name_ref(m_set_constructors_accessible_221, method, 'setConstructorsAccessible', 'Lorg/mockito/internal/creation/jmock/ClassImposterizer;.setConstructorsAccessible(Ljava/lang/Class<*>;Z)V').
name_ref(m_set_invocation_for_potential_stubbing_291, method, 'setInvocationForPotentialStubbing', 'Lorg/mockito/internal/stubbing/MockitoStubber;.setInvocationForPotentialStubbing(Lorg/mockito/internal/invocation/InvocationMatcher;)V').
name_ref(m_set_method_for_stubbing_300, method, 'setMethodForStubbing', 'Lorg/mockito/internal/stubbing/MockitoStubber;.setMethodForStubbing(Lorg/mockito/internal/invocation/InvocationMatcher;)V').
name_ref(m_short_that_46, method, 'shortThat', 'Lorg/mockito/Matchers;.shortThat(Lorg/hamcrest/Matcher<Ljava/lang/Short;>;)S').
name_ref(m_should_allow_passing_null_argument_360, method, 'shouldAllowPassingNullArgument', 'Lorg/mockitousage/bugs/ActualInvocationHasNullArgumentNPEBugTest;.shouldAllowPassingNullArgument()V').
name_ref(m_should_find_suspicious_matchers_351, method, 'shouldFindSuspiciousMatchers', 'Lorg/mockito/internal/verification/argumentmatching/ArgumentMatchingToolTest;.shouldFindSuspiciousMatchers()V').
name_ref(m_should_not_find_any_suspicious_matchers_when_arguments_match_350, method, 'shouldNotFindAnySuspiciousMatchersWhenArgumentsMatch', 'Lorg/mockito/internal/verification/argumentmatching/ArgumentMatchingToolTest;.shouldNotFindAnySuspiciousMatchersWhenArgumentsMatch()V').
name_ref(m_should_not_find_any_suspicious_matchers_when_number_of_arguments_doesnt_match_349, method, 'shouldNotFindAnySuspiciousMatchersWhenNumberOfArgumentsDoesntMatch', 'Lorg/mockito/internal/verification/argumentmatching/ArgumentMatchingToolTest;.shouldNotFindAnySuspiciousMatchersWhenNumberOfArgumentsDoesntMatch()V').
name_ref(m_should_not_find_suspicious_matchers_when_types_are_the_same_352, method, 'shouldNotFindSuspiciousMatchersWhenTypesAreTheSame', 'Lorg/mockito/internal/verification/argumentmatching/ArgumentMatchingToolTest;.shouldNotFindSuspiciousMatchersWhenTypesAreTheSame()V').
name_ref(m_should_use_matchers_safely_356, method, 'shouldUseMatchersSafely', 'Lorg/mockito/internal/verification/argumentmatching/ArgumentMatchingToolTest;.shouldUseMatchersSafely()V').
name_ref(m_should_work_fine_when_given_arg_is_null_354, method, 'shouldWorkFineWhenGivenArgIsNull', 'Lorg/mockito/internal/verification/argumentmatching/ArgumentMatchingToolTest;.shouldWorkFineWhenGivenArgIsNull()V').
name_ref(m_size_342, method, 'size', 'Ljava/util/List;.size()I').
name_ref(m_smart_null_pointer_exception_144, method, 'smartNullPointerException', 'Lorg/mockito/exceptions/Reporter;.smartNullPointerException(Lorg/mockito/internal/debugging/Location;)V').
name_ref(m_spied_instance_205, method, 'spiedInstance', 'Lorg/mockito/internal/creation/MockSettingsImpl;.spiedInstance(Ljava/lang/Object;)Lorg/mockito/MockSettings;').
name_ref(m_spy_62, method, 'spy', 'Lorg/mockito/Mockito;.spy<T:Ljava/lang/Object;>(TT;)TT;').
name_ref(m_stack_251, method, 'Stack', 'Ljava/util/Stack;.()V').
name_ref(m_starts_with_41, method, 'startsWith', 'Lorg/mockito/Matchers;.startsWith(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_state_master_363, method, 'StateMaster', 'Lorg/mockito/StateMaster;.()V').
name_ref(m_stub_165, method, 'stub', 'Lorg/mockito/internal/MockitoCore;.stub()Lorg/mockito/internal/progress/IOngoingStubbing;').
name_ref(m_stub_166, method, 'stub', 'Lorg/mockito/internal/MockitoCore;.stub<T:Ljava/lang/Object;>(TT;)Lorg/mockito/stubbing/DeprecatedOngoingStubbing<TT;>;').
name_ref(m_stub_63, method, 'stub', 'Lorg/mockito/Mockito;.stub<T:Ljava/lang/Object;>(TT;)Lorg/mockito/stubbing/DeprecatedOngoingStubbing<TT;>;').
name_ref(m_stub_void_174, method, 'stubVoid', 'Lorg/mockito/internal/MockitoCore;.stubVoid<T:Ljava/lang/Object;>(TT;)Lorg/mockito/stubbing/VoidMethodStubbable<TT;>;').
name_ref(m_stub_void_70, method, 'stubVoid', 'Lorg/mockito/Mockito;.stubVoid<T:Ljava/lang/Object;>(TT;)Lorg/mockito/stubbing/VoidMethodStubbable<TT;>;').
name_ref(m_stubbing_completed_273, method, 'stubbingCompleted', 'Lorg/mockito/internal/progress/MockingProgressImpl;.stubbingCompleted(Lorg/mockito/internal/invocation/Invocation;)V').
name_ref(m_stubbing_completed_284, method, 'stubbingCompleted', 'Lorg/mockito/internal/progress/ThreadSafeMockingProgress;.stubbingCompleted(Lorg/mockito/internal/invocation/Invocation;)V').
name_ref(m_stubbing_started_269, method, 'stubbingStarted', 'Lorg/mockito/internal/progress/MockingProgressImpl;.stubbingStarted()V').
name_ref(m_stubbing_started_283, method, 'stubbingStarted', 'Lorg/mockito/internal/progress/ThreadSafeMockingProgress;.stubbingStarted()V').
name_ref(m_substring_322, method, 'substring', 'Ljava/lang/String;.substring(II)Ljava/lang/String;').
name_ref(m_substring_323, method, 'substring', 'Ljava/lang/String;.substring(I)Ljava/lang/String;').
name_ref(m_synchronized_list_336, method, 'synchronizedList', 'Ljava/util/Collections;.synchronizedList<T:Ljava/lang/Object;>(Ljava/util/List<TT;>;)Ljava/util/List<TT;>;').
name_ref(m_thread_local_183, method, 'ThreadLocal', 'Ljava/lang/ThreadLocal;.()V').
name_ref(m_thread_safe_mocking_progress_3, method, 'ThreadSafeMockingProgress', 'Lorg/mockito/internal/progress/ThreadSafeMockingProgress;.()V').
name_ref(m_thread_safely_277, method, 'threadSafely', 'Lorg/mockito/internal/progress/ThreadSafeMockingProgress;.threadSafely()Lorg/mockito/internal/progress/MockingProgress;').
name_ref(m_throwing_interceptor_313, method, 'ThrowingInterceptor', 'Lorg/mockito/internal/stubbing/defaultanswers/ReturnsSmartNulls$ThrowingInterceptor;.(Lorg/mockito/internal/stubbing/defaultanswers/ReturnsSmartNulls;Lorg/mockito/invocation/InvocationOnMock;)V').
name_ref(m_times_77, method, 'times', 'Lorg/mockito/Mockito;.times(I)Lorg/mockito/internal/verification/api/VerificationMode;').
name_ref(m_to_instance_name_319, method, 'toInstanceName', 'Lorg/mockito/internal/util/MockName;.toInstanceName(Ljava/lang/Class<*>;)Ljava/lang/String;').
name_ref(m_to_lower_case_321, method, 'toLowerCase', 'Ljava/lang/String;.toLowerCase()Ljava/lang/String;').
name_ref(m_to_string_244, method, 'toString', 'Ljava/lang/Object;.toString()Ljava/lang/String;').
name_ref(m_to_string_274, method, 'toString', 'Lorg/mockito/internal/progress/MockingProgressImpl;.toString()Ljava/lang/String;').
name_ref(m_to_string_285, method, 'toString', 'Lorg/mockito/internal/progress/ThreadSafeMockingProgress;.toString()Ljava/lang/String;').
name_ref(m_to_string_301, method, 'toString', 'Lorg/mockito/internal/stubbing/MockitoStubber;.toString()Ljava/lang/String;').
name_ref(m_to_string_325, method, 'toString', 'Lorg/mockito/internal/util/MockName;.toString()Ljava/lang/String;').
name_ref(m_to_string_347, method, 'toString', 'Lorg/hamcrest/StringDescription;.toString(Lorg/hamcrest/SelfDescribing;)Ljava/lang/String;').
name_ref(m_to_string_equals_345, method, 'toStringEquals', 'Lorg/mockito/internal/verification/argumentmatching/ArgumentMatchingTool;.toStringEquals(Lorg/hamcrest/Matcher;Ljava/lang/Object;)Z').
name_ref(m_too_little_actual_invocations_135, method, 'tooLittleActualInvocations', 'Lorg/mockito/exceptions/Reporter;.tooLittleActualInvocations(Lorg/mockito/exceptions/Discrepancy;Lorg/mockito/exceptions/PrintableInvocation;Lorg/mockito/internal/debugging/Location;)V').
name_ref(m_too_little_actual_invocations_in_order_136, method, 'tooLittleActualInvocationsInOrder', 'Lorg/mockito/exceptions/Reporter;.tooLittleActualInvocationsInOrder(Lorg/mockito/exceptions/Discrepancy;Lorg/mockito/exceptions/PrintableInvocation;Lorg/mockito/internal/debugging/Location;)V').
name_ref(m_too_many_actual_invocations_130, method, 'tooManyActualInvocations', 'Lorg/mockito/exceptions/Reporter;.tooManyActualInvocations(IILorg/mockito/exceptions/PrintableInvocation;Lorg/mockito/internal/debugging/Location;)V').
name_ref(m_too_many_actual_invocations_in_order_133, method, 'tooManyActualInvocationsInOrder', 'Lorg/mockito/exceptions/Reporter;.tooManyActualInvocationsInOrder(IILorg/mockito/exceptions/PrintableInvocation;Lorg/mockito/internal/debugging/Location;)V').
name_ref(m_type_matches_250, method, 'typeMatches', 'Lorg/mockito/internal/matchers/Equals;.typeMatches(Ljava/lang/Object;)Z').
name_ref(m_unfinished_stubbing_110, method, 'unfinishedStubbing', 'Lorg/mockito/exceptions/Reporter;.unfinishedStubbing(Lorg/mockito/internal/debugging/Location;)V').
name_ref(m_unfinished_verification_exception_112, method, 'unfinishedVerificationException', 'Lorg/mockito/exceptions/Reporter;.unfinishedVerificationException(Lorg/mockito/internal/debugging/Location;)V').
name_ref(m_validate_189, method, 'validate', 'Lorg/mockito/internal/configuration/GlobalConfiguration;.validate()V').
name_ref(m_validate_95, method, 'validate', 'Lorg/mockito/StateMaster;.validate()V').
name_ref(m_validate_extra_interfaces_317, method, 'validateExtraInterfaces', 'Lorg/mockito/internal/util/CreationValidator;.validateExtraInterfaces(Ljava/lang/Class;[Ljava/lang/Class;)V').
name_ref(m_validate_matchers_236, method, 'validateMatchers', 'Lorg/mockito/internal/invocation/MatchersBinder;.validateMatchers(Lorg/mockito/internal/invocation/Invocation;Ljava/util/List<Lorg/hamcrest/Matcher;>;)V').
name_ref(m_validate_mockito_usage_175, method, 'validateMockitoUsage', 'Lorg/mockito/internal/MockitoCore;.validateMockitoUsage()V').
name_ref(m_validate_mockito_usage_82, method, 'validateMockitoUsage', 'Lorg/mockito/Mockito;.validateMockitoUsage()V').
name_ref(m_validate_state_163, method, 'validateState', 'Lorg/mockito/internal/progress/MockingProgress;.validateState()V').
name_ref(m_validate_state_259, method, 'validateState', 'Lorg/mockito/internal/progress/ArgumentMatcherStorageImpl;.validateState()V').
name_ref(m_validate_state_270, method, 'validateState', 'Lorg/mockito/internal/progress/MockingProgressImpl;.validateState()V').
name_ref(m_validate_state_271, method, 'validateState', 'Lorg/mockito/internal/progress/ArgumentMatcherStorage;.validateState()V').
name_ref(m_validate_state_96, method, 'validateState', 'Lorg/mockito/internal/progress/ThreadSafeMockingProgress;.validateState()V').
name_ref(m_validate_type_316, method, 'validateType', 'Lorg/mockito/internal/util/CreationValidator;.validateType(Ljava/lang/Class;)V').
name_ref(m_verification_started_266, method, 'verificationStarted', 'Lorg/mockito/internal/progress/MockingProgressImpl;.verificationStarted(Lorg/mockito/internal/verification/api/VerificationMode;)V').
name_ref(m_verification_started_281, method, 'verificationStarted', 'Lorg/mockito/internal/progress/ThreadSafeMockingProgress;.verificationStarted(Lorg/mockito/internal/verification/api/VerificationMode;)V').
name_ref(m_verify_168, method, 'verify', 'Lorg/mockito/internal/MockitoCore;.verify<T:Ljava/lang/Object;>(TT;Lorg/mockito/internal/verification/api/VerificationMode;)TT;').
name_ref(m_verify_65, method, 'verify', 'Lorg/mockito/Mockito;.verify<T:Ljava/lang/Object;>(TT;)TT;').
name_ref(m_verify_67, method, 'verify', 'Lorg/mockito/Mockito;.verify<T:Ljava/lang/Object;>(TT;Lorg/mockito/internal/verification/api/VerificationMode;)TT;').
name_ref(m_verify_no_more_interactions_155, method, 'verifyNoMoreInteractions', 'Lorg/mockito/internal/MockHandler;.verifyNoMoreInteractions()V').
name_ref(m_verify_no_more_interactions_170, method, 'verifyNoMoreInteractions', 'Lorg/mockito/internal/MockitoCore;.verifyNoMoreInteractions([Ljava/lang/Object;)V').
name_ref(m_verify_no_more_interactions_68, method, 'verifyNoMoreInteractions', 'Lorg/mockito/Mockito;.verifyNoMoreInteractions([Ljava/lang/Object;)V').
name_ref(m_verify_zero_interactions_69, method, 'verifyZeroInteractions', 'Lorg/mockito/Mockito;.verifyZeroInteractions([Ljava/lang/Object;)V').
name_ref(m_void_method_stubbable_156, method, 'voidMethodStubbable', 'Lorg/mockito/internal/MockHandler;.voidMethodStubbable(TT;)Lorg/mockito/stubbing/VoidMethodStubbable<TT;>;').
name_ref(m_wanted_at_most_x_142, method, 'wantedAtMostX', 'Lorg/mockito/exceptions/Reporter;.wantedAtMostX(II)V').
name_ref(m_wanted_but_not_invoked_126, method, 'wantedButNotInvoked', 'Lorg/mockito/exceptions/Reporter;.wantedButNotInvoked(Lorg/mockito/exceptions/PrintableInvocation;)V').
name_ref(m_wanted_but_not_invoked_127, method, 'wantedButNotInvoked', 'Lorg/mockito/exceptions/Reporter;.wantedButNotInvoked(Lorg/mockito/exceptions/PrintableInvocation;Ljava/util/List<+Lorg/mockito/exceptions/PrintableInvocation;>;)V').
name_ref(m_wanted_but_not_invoked_in_order_129, method, 'wantedButNotInvokedInOrder', 'Lorg/mockito/exceptions/Reporter;.wantedButNotInvokedInOrder(Lorg/mockito/exceptions/PrintableInvocation;Lorg/mockito/exceptions/PrintableInvocation;)V').
name_ref(m_when_167, method, 'when', 'Lorg/mockito/internal/MockitoCore;.when<T:Ljava/lang/Object;>(TT;)Lorg/mockito/stubbing/OngoingStubbing<TT;>;').
name_ref(m_when_64, method, 'when', 'Lorg/mockito/Mockito;.when<T:Ljava/lang/Object;>(TT;)Lorg/mockito/stubbing/OngoingStubbing<TT;>;').
name_ref(m_with_extra_type_info_248, method, 'withExtraTypeInfo', 'Lorg/mockito/internal/matchers/Equals;.withExtraTypeInfo()Lorg/hamcrest/SelfDescribing;').
name_ref(m_with_settings_83, method, 'withSettings', 'Lorg/mockito/Mockito;.withSettings()Lorg/mockito/MockSettings;').
name_ref(m_wrong_type_of_return_value_141, method, 'wrongTypeOfReturnValue', 'Lorg/mockito/exceptions/Reporter;.wrongTypeOfReturnValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V').
name_ref(q_instance_1, q_name, 'ClassImposterizer.INSTANCE', 'Lorg/mockito/internal/creation/jmock/ClassImposterizer;:Lorg/mockito/internal/creation/jmock/ClassImposterizer;.INSTANCE)Lorg/mockito/internal/creation/jmock/ClassImposterizer;').
name_ref(q_length_2, q_name, 'arguments.length', 'Lorg/mockito/internal/verification/argumentmatching/ArgumentMatchingTool;.getSuspiciouslyNotMatchingArgsIndexes(Ljava/util/List<Lorg/hamcrest/Matcher;>;[Ljava/lang/Object;)[Ljava/lang/Integer;#arguments#0#1:.length)I').

%%% End of Code Facts