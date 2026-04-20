%%% Logic-FL Facts
:- style_check(-discontiguous).

%locale_utils_test_1 - org.apache.commons.lang.LocaleUtilsTest
assign(f_locale_en_13, locale_utils_test_1_expr1, line(locale_utils_test_1, 43)).
method_invoc(locale_utils_test_1_expr1, m_locale_16, line(locale_utils_test_1, 43)).
argument(locale_utils_test_1_literal1, 1, locale_utils_test_1_expr1).
argument(locale_utils_test_1_literal2, 2, locale_utils_test_1_expr1).
assign(f_locale_en_us_14, locale_utils_test_1_expr2, line(locale_utils_test_1, 44)).
method_invoc(locale_utils_test_1_expr2, m_locale_16, line(locale_utils_test_1, 44)).
argument(locale_utils_test_1_literal3, 1, locale_utils_test_1_expr2).
argument(locale_utils_test_1_literal4, 2, locale_utils_test_1_expr2).
assign(f_locale_en_us_zzzz_15, locale_utils_test_1_expr3, line(locale_utils_test_1, 45)).
method_invoc(locale_utils_test_1_expr3, m_locale_17, line(locale_utils_test_1, 45)).
argument(locale_utils_test_1_literal5, 1, locale_utils_test_1_expr3).
argument(locale_utils_test_1_literal6, 2, locale_utils_test_1_expr3).
argument(locale_utils_test_1_literal7, 3, locale_utils_test_1_expr3).
assign(f_locale_fr_16, locale_utils_test_1_expr4, line(locale_utils_test_1, 46)).
method_invoc(locale_utils_test_1_expr4, m_locale_16, line(locale_utils_test_1, 46)).
argument(locale_utils_test_1_literal8, 1, locale_utils_test_1_expr4).
argument(locale_utils_test_1_literal9, 2, locale_utils_test_1_expr4).
assign(f_locale_fr_ca_17, locale_utils_test_1_expr5, line(locale_utils_test_1, 47)).
method_invoc(locale_utils_test_1_expr5, m_locale_16, line(locale_utils_test_1, 47)).
argument(locale_utils_test_1_literal10, 1, locale_utils_test_1_expr5).
argument(locale_utils_test_1_literal11, 2, locale_utils_test_1_expr5).
assign(f_locale_qq_18, locale_utils_test_1_expr6, line(locale_utils_test_1, 48)).
method_invoc(locale_utils_test_1_expr6, m_locale_16, line(locale_utils_test_1, 48)).
argument(locale_utils_test_1_literal12, 1, locale_utils_test_1_expr6).
argument(locale_utils_test_1_literal13, 2, locale_utils_test_1_expr6).
assign(f_locale_qq_zz_19, locale_utils_test_1_expr7, line(locale_utils_test_1, 49)).
method_invoc(locale_utils_test_1_expr7, m_locale_16, line(locale_utils_test_1, 49)).
argument(locale_utils_test_1_literal14, 1, locale_utils_test_1_expr7).
argument(locale_utils_test_1_literal15, 2, locale_utils_test_1_expr7).
param(p_name_20, 1, m_locale_utils_test_18).
method_invoc(locale_utils_test_1_expr8, m_test_case_19, line(locale_utils_test_1, 57)).
argument(p_name_20, 1, locale_utils_test_1_expr8).
param(p_args_21, 1, m_main_20).
assign(v_suite_22, locale_utils_test_1_expr9, line(locale_utils_test_1, 73)).
method_invoc(locale_utils_test_1_expr9, m_test_suite_22, line(locale_utils_test_1, 73)).
argument(locale_utils_test_1_expr10, 1, locale_utils_test_1_expr9).
method_invoc(locale_utils_test_1_expr11, m_set_name_23, line(locale_utils_test_1, 74)).
argument(locale_utils_test_1_literal16, 1, locale_utils_test_1_expr11).
ref(v_suite_22, locale_utils_test_1_expr11, line(locale_utils_test_1, 74)).
return(v_suite_22, m_suite_21, line(locale_utils_test_1, 75)).
throw(m_set_up_24, exception).
method_invoc(locale_utils_test_1_expr12, m_set_up_25, line(locale_utils_test_1, 79)).
throw(locale_utils_test_1_expr12, exception, line(locale_utils_test_1, 79)).
method_invoc(locale_utils_test_1_expr13, m_is_available_locale_12, line(locale_utils_test_1, 82)).
throw(locale_utils_test_1_expr13, null_pointer_exception, line(locale_utils_test_1, 82)).
argument(locale_utils_test_1_expr14, 1, locale_utils_test_1_expr13).
ref(t_locale_utils_4, locale_utils_test_1_expr13, line(locale_utils_test_1, 82)).
method_invoc(locale_utils_test_1_expr14, m_get_default_26, line(locale_utils_test_1, 82)).
ref(t_locale_3, locale_utils_test_1_expr14, line(locale_utils_test_1, 82)).
param(p_language_23, 1, m_assert_valid_to_locale_28).
param(p_locale_string_24, 1, m_assert_valid_to_locale_29).
param(p_language_25, 2, m_assert_valid_to_locale_29).
param(p_country_26, 3, m_assert_valid_to_locale_29).
param(p_locale_string_27, 1, m_assert_valid_to_locale_30).
param(p_language_28, 2, m_assert_valid_to_locale_30).
param(p_country_29, 3, m_assert_valid_to_locale_30).
param(p_variant_30, 4, m_assert_valid_to_locale_30).
param(p_locale_31, 1, m_assert_locale_lookup_list_34).
param(p_default_locale_32, 2, m_assert_locale_lookup_list_34).
param(p_expected_33, 3, m_assert_locale_lookup_list_34).
param(p_country_34, 1, m_assert_language_by_country_40).
param(p_languages_35, 2, m_assert_language_by_country_40).
param(p_language_36, 1, m_assert_countries_by_language_42).
param(p_countries_37, 2, m_assert_countries_by_language_42).
param(p_coll_38, 1, m_assert_unmodifiable_collection_44).
throw(locale_utils_test_1_expr14, null_pointer_exception, line(locale_utils_test_1, 82)).

%locale_utils_1 - org.apache.commons.lang.LocaleUtils
assign(f_c_languages_by_country_1, locale_utils_1_expr1, line(locale_utils_1, 47)).
method_invoc(locale_utils_1_expr1, m_synchronized_map_1, line(locale_utils_1, 47)).
argument(locale_utils_1_expr2, 1, locale_utils_1_expr1).
ref(t_collections_1, locale_utils_1_expr1, line(locale_utils_1, 47)).
method_invoc(locale_utils_1_expr2, m_hash_map_2, line(locale_utils_1, 47)).
assign(f_c_countries_by_language_2, locale_utils_1_expr3, line(locale_utils_1, 49)).
method_invoc(locale_utils_1_expr3, m_synchronized_map_1, line(locale_utils_1, 49)).
argument(locale_utils_1_expr4, 1, locale_utils_1_expr3).
ref(t_collections_1, locale_utils_1_expr3, line(locale_utils_1, 49)).
method_invoc(locale_utils_1_expr4, m_hash_map_2, line(locale_utils_1, 49)).
assign(v_list_3, locale_utils_1_expr5, line(locale_utils_1, 51)).
method_invoc(locale_utils_1_expr5, m_as_list_3, line(locale_utils_1, 51)).
argument(locale_utils_1_expr6, 1, locale_utils_1_expr5).
ref(t_arrays_2, locale_utils_1_expr5, line(locale_utils_1, 51)).
method_invoc(locale_utils_1_expr6, m_get_available_locales_4, line(locale_utils_1, 51)).
ref(t_locale_3, locale_utils_1_expr6, line(locale_utils_1, 51)).
assign(f_c_available_locale_list_4, locale_utils_1_expr8, line(locale_utils_1, 52)).
method_invoc(locale_utils_1_expr8, m_unmodifiable_list_5, line(locale_utils_1, 52)).
argument(v_list_3, 1, locale_utils_1_expr8).
ref(t_collections_1, locale_utils_1_expr8, line(locale_utils_1, 52)).
param(p_str_5, 1, m_to_locale_7).
param(p_locale_6, 1, m_locale_lookup_list_8).
param(p_locale_7, 1, m_locale_lookup_list_9).
param(p_default_locale_8, 2, m_locale_lookup_list_9).
param(p_locale_9, 1, m_is_available_locale_12).
return(locale_utils_1_expr9, m_is_available_locale_12, line(locale_utils_1, 223)).
method_invoc(locale_utils_1_expr9, m_contains_13, line(locale_utils_1, 223)).
argument(p_locale_9, 1, locale_utils_1_expr9).
ref(f_c_available_locale_set_10, locale_utils_1_expr9, line(locale_utils_1, 223)).
param(p_country_code_11, 1, m_languages_by_country_14).
param(p_language_code_12, 1, m_countries_by_language_15).


% Stack Trace Info.
test_failure(failure_1, 'org.apache.commons.lang.LocaleUtilsTest', 'testAvailableLocaleSet').
trace(trace_1, failure_1, m_is_available_locale_12, line(locale_utils_1, 223), failure_1, target).
trace(trace_2, trace_1, m_set_up_24, line(locale_utils_test_1, 82), failure_1, target).
trace(trace_3, trace_2, 'runBare', line(junit_framework_test_case, 140), failure_1, non_target).
trace(trace_4, trace_3, 'protect', line(junit_framework_test_result_1, 122), failure_1, non_target).
trace(trace_5, trace_4, 'runProtected', line(junit_framework_test_result, 142), failure_1, non_target).
trace(trace_6, trace_5, 'run', line(junit_framework_test_result, 125), failure_1, non_target).
trace(trace_7, trace_6, 'run', line(junit_framework_test_case, 130), failure_1, non_target).
trace(trace_8, trace_7, 'runTest', line(junit_framework_test_suite, 241), failure_1, non_target).
trace(trace_9, trace_8, 'run', line(junit_framework_test_suite, 236), failure_1, non_target).
trace(trace_10, trace_9, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_1, non_target).
trace(trace_11, trace_10, 'run', line(org_junit_runner_junit_core, 137), failure_1, non_target).
trace(trace_12, trace_11, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_1, non_target).
test_failure(failure_2, 'org.apache.commons.lang.LocaleUtilsTest', 'testIsAvailableLocale').
trace(trace_13, failure_2, m_is_available_locale_12, line(locale_utils_1, 223), failure_2, target).
trace(trace_14, trace_13, m_set_up_24, line(locale_utils_test_1, 82), failure_2, target).
trace(trace_15, trace_14, 'runBare', line(junit_framework_test_case, 140), failure_2, non_target).
trace(trace_16, trace_15, 'protect', line(junit_framework_test_result_1, 122), failure_2, non_target).
trace(trace_17, trace_16, 'runProtected', line(junit_framework_test_result, 142), failure_2, non_target).
trace(trace_18, trace_17, 'run', line(junit_framework_test_result, 125), failure_2, non_target).
trace(trace_19, trace_18, 'run', line(junit_framework_test_case, 130), failure_2, non_target).
trace(trace_20, trace_19, 'runTest', line(junit_framework_test_suite, 241), failure_2, non_target).
trace(trace_21, trace_20, 'run', line(junit_framework_test_suite, 236), failure_2, non_target).
trace(trace_22, trace_21, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_2, non_target).
trace(trace_23, trace_22, 'run', line(org_junit_runner_junit_core, 137), failure_2, non_target).
trace(trace_24, trace_23, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_2, non_target).
test_failure(failure_3, 'org.apache.commons.lang.LocaleUtilsTest', 'testAvailableLocaleList').
trace(trace_25, failure_3, m_is_available_locale_12, line(locale_utils_1, 223), failure_3, target).
trace(trace_26, trace_25, m_set_up_24, line(locale_utils_test_1, 82), failure_3, target).
trace(trace_27, trace_26, 'runBare', line(junit_framework_test_case, 140), failure_3, non_target).
trace(trace_28, trace_27, 'protect', line(junit_framework_test_result_1, 122), failure_3, non_target).
trace(trace_29, trace_28, 'runProtected', line(junit_framework_test_result, 142), failure_3, non_target).
trace(trace_30, trace_29, 'run', line(junit_framework_test_result, 125), failure_3, non_target).
trace(trace_31, trace_30, 'run', line(junit_framework_test_case, 130), failure_3, non_target).
trace(trace_32, trace_31, 'runTest', line(junit_framework_test_suite, 241), failure_3, non_target).
trace(trace_33, trace_32, 'run', line(junit_framework_test_suite, 236), failure_3, non_target).
trace(trace_34, trace_33, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_3, non_target).
trace(trace_35, trace_34, 'run', line(org_junit_runner_junit_core, 137), failure_3, non_target).
trace(trace_36, trace_35, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_3, non_target).
test_failure(failure_4, 'org.apache.commons.lang.LocaleUtilsTest', 'testCountriesByLanguage').
trace(trace_37, failure_4, m_is_available_locale_12, line(locale_utils_1, 223), failure_4, target).
trace(trace_38, trace_37, m_set_up_24, line(locale_utils_test_1, 82), failure_4, target).
trace(trace_39, trace_38, 'runBare', line(junit_framework_test_case, 140), failure_4, non_target).
trace(trace_40, trace_39, 'protect', line(junit_framework_test_result_1, 122), failure_4, non_target).
trace(trace_41, trace_40, 'runProtected', line(junit_framework_test_result, 142), failure_4, non_target).
trace(trace_42, trace_41, 'run', line(junit_framework_test_result, 125), failure_4, non_target).
trace(trace_43, trace_42, 'run', line(junit_framework_test_case, 130), failure_4, non_target).
trace(trace_44, trace_43, 'runTest', line(junit_framework_test_suite, 241), failure_4, non_target).
trace(trace_45, trace_44, 'run', line(junit_framework_test_suite, 236), failure_4, non_target).
trace(trace_46, trace_45, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_4, non_target).
trace(trace_47, trace_46, 'run', line(org_junit_runner_junit_core, 137), failure_4, non_target).
trace(trace_48, trace_47, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_4, non_target).
test_failure(failure_5, 'org.apache.commons.lang.LocaleUtilsTest', 'testLocaleLookupList_LocaleLocale').
trace(trace_49, failure_5, m_is_available_locale_12, line(locale_utils_1, 223), failure_5, target).
trace(trace_50, trace_49, m_set_up_24, line(locale_utils_test_1, 82), failure_5, target).
trace(trace_51, trace_50, 'runBare', line(junit_framework_test_case, 140), failure_5, non_target).
trace(trace_52, trace_51, 'protect', line(junit_framework_test_result_1, 122), failure_5, non_target).
trace(trace_53, trace_52, 'runProtected', line(junit_framework_test_result, 142), failure_5, non_target).
trace(trace_54, trace_53, 'run', line(junit_framework_test_result, 125), failure_5, non_target).
trace(trace_55, trace_54, 'run', line(junit_framework_test_case, 130), failure_5, non_target).
trace(trace_56, trace_55, 'runTest', line(junit_framework_test_suite, 241), failure_5, non_target).
trace(trace_57, trace_56, 'run', line(junit_framework_test_suite, 236), failure_5, non_target).
trace(trace_58, trace_57, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_5, non_target).
trace(trace_59, trace_58, 'run', line(org_junit_runner_junit_core, 137), failure_5, non_target).
trace(trace_60, trace_59, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_5, non_target).
test_failure(failure_6, 'org.apache.commons.lang.LocaleUtilsTest', 'testLanguagesByCountry').
trace(trace_61, failure_6, m_is_available_locale_12, line(locale_utils_1, 223), failure_6, target).
trace(trace_62, trace_61, m_set_up_24, line(locale_utils_test_1, 82), failure_6, target).
trace(trace_63, trace_62, 'runBare', line(junit_framework_test_case, 140), failure_6, non_target).
trace(trace_64, trace_63, 'protect', line(junit_framework_test_result_1, 122), failure_6, non_target).
trace(trace_65, trace_64, 'runProtected', line(junit_framework_test_result, 142), failure_6, non_target).
trace(trace_66, trace_65, 'run', line(junit_framework_test_result, 125), failure_6, non_target).
trace(trace_67, trace_66, 'run', line(junit_framework_test_case, 130), failure_6, non_target).
trace(trace_68, trace_67, 'runTest', line(junit_framework_test_suite, 241), failure_6, non_target).
trace(trace_69, trace_68, 'run', line(junit_framework_test_suite, 236), failure_6, non_target).
trace(trace_70, trace_69, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_6, non_target).
trace(trace_71, trace_70, 'run', line(org_junit_runner_junit_core, 137), failure_6, non_target).
trace(trace_72, trace_71, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_6, non_target).
test_failure(failure_7, 'org.apache.commons.lang.LocaleUtilsTest', 'testToLocale_1Part').
trace(trace_73, failure_7, m_is_available_locale_12, line(locale_utils_1, 223), failure_7, target).
trace(trace_74, trace_73, m_set_up_24, line(locale_utils_test_1, 82), failure_7, target).
trace(trace_75, trace_74, 'runBare', line(junit_framework_test_case, 140), failure_7, non_target).
trace(trace_76, trace_75, 'protect', line(junit_framework_test_result_1, 122), failure_7, non_target).
trace(trace_77, trace_76, 'runProtected', line(junit_framework_test_result, 142), failure_7, non_target).
trace(trace_78, trace_77, 'run', line(junit_framework_test_result, 125), failure_7, non_target).
trace(trace_79, trace_78, 'run', line(junit_framework_test_case, 130), failure_7, non_target).
trace(trace_80, trace_79, 'runTest', line(junit_framework_test_suite, 241), failure_7, non_target).
trace(trace_81, trace_80, 'run', line(junit_framework_test_suite, 236), failure_7, non_target).
trace(trace_82, trace_81, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_7, non_target).
trace(trace_83, trace_82, 'run', line(org_junit_runner_junit_core, 137), failure_7, non_target).
trace(trace_84, trace_83, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_7, non_target).
test_failure(failure_8, 'org.apache.commons.lang.LocaleUtilsTest', 'testToLocale_2Part').
trace(trace_85, failure_8, m_is_available_locale_12, line(locale_utils_1, 223), failure_8, target).
trace(trace_86, trace_85, m_set_up_24, line(locale_utils_test_1, 82), failure_8, target).
trace(trace_87, trace_86, 'runBare', line(junit_framework_test_case, 140), failure_8, non_target).
trace(trace_88, trace_87, 'protect', line(junit_framework_test_result_1, 122), failure_8, non_target).
trace(trace_89, trace_88, 'runProtected', line(junit_framework_test_result, 142), failure_8, non_target).
trace(trace_90, trace_89, 'run', line(junit_framework_test_result, 125), failure_8, non_target).
trace(trace_91, trace_90, 'run', line(junit_framework_test_case, 130), failure_8, non_target).
trace(trace_92, trace_91, 'runTest', line(junit_framework_test_suite, 241), failure_8, non_target).
trace(trace_93, trace_92, 'run', line(junit_framework_test_suite, 236), failure_8, non_target).
trace(trace_94, trace_93, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_8, non_target).
trace(trace_95, trace_94, 'run', line(org_junit_runner_junit_core, 137), failure_8, non_target).
trace(trace_96, trace_95, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_8, non_target).
test_failure(failure_9, 'org.apache.commons.lang.LocaleUtilsTest', 'testToLocale_3Part').
trace(trace_97, failure_9, m_is_available_locale_12, line(locale_utils_1, 223), failure_9, target).
trace(trace_98, trace_97, m_set_up_24, line(locale_utils_test_1, 82), failure_9, target).
trace(trace_99, trace_98, 'runBare', line(junit_framework_test_case, 140), failure_9, non_target).
trace(trace_100, trace_99, 'protect', line(junit_framework_test_result_1, 122), failure_9, non_target).
trace(trace_101, trace_100, 'runProtected', line(junit_framework_test_result, 142), failure_9, non_target).
trace(trace_102, trace_101, 'run', line(junit_framework_test_result, 125), failure_9, non_target).
trace(trace_103, trace_102, 'run', line(junit_framework_test_case, 130), failure_9, non_target).
trace(trace_104, trace_103, 'runTest', line(junit_framework_test_suite, 241), failure_9, non_target).
trace(trace_105, trace_104, 'run', line(junit_framework_test_suite, 236), failure_9, non_target).
trace(trace_106, trace_105, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_9, non_target).
trace(trace_107, trace_106, 'run', line(org_junit_runner_junit_core, 137), failure_9, non_target).
trace(trace_108, trace_107, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_9, non_target).
test_failure(failure_10, 'org.apache.commons.lang.LocaleUtilsTest', 'testLocaleLookupList_Locale').
trace(trace_109, failure_10, m_is_available_locale_12, line(locale_utils_1, 223), failure_10, target).
trace(trace_110, trace_109, m_set_up_24, line(locale_utils_test_1, 82), failure_10, target).
trace(trace_111, trace_110, 'runBare', line(junit_framework_test_case, 140), failure_10, non_target).
trace(trace_112, trace_111, 'protect', line(junit_framework_test_result_1, 122), failure_10, non_target).
trace(trace_113, trace_112, 'runProtected', line(junit_framework_test_result, 142), failure_10, non_target).
trace(trace_114, trace_113, 'run', line(junit_framework_test_result, 125), failure_10, non_target).
trace(trace_115, trace_114, 'run', line(junit_framework_test_case, 130), failure_10, non_target).
trace(trace_116, trace_115, 'runTest', line(junit_framework_test_suite, 241), failure_10, non_target).
trace(trace_117, trace_116, 'run', line(junit_framework_test_suite, 236), failure_10, non_target).
trace(trace_118, trace_117, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_10, non_target).
trace(trace_119, trace_118, 'run', line(org_junit_runner_junit_core, 137), failure_10, non_target).
trace(trace_120, trace_119, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_10, non_target).
test_failure(failure_11, 'org.apache.commons.lang.LocaleUtilsTest', 'testConstructor').
trace(trace_121, failure_11, m_is_available_locale_12, line(locale_utils_1, 223), failure_11, target).
trace(trace_122, trace_121, m_set_up_24, line(locale_utils_test_1, 82), failure_11, target).
trace(trace_123, trace_122, 'runBare', line(junit_framework_test_case, 140), failure_11, non_target).
trace(trace_124, trace_123, 'protect', line(junit_framework_test_result_1, 122), failure_11, non_target).
trace(trace_125, trace_124, 'runProtected', line(junit_framework_test_result, 142), failure_11, non_target).
trace(trace_126, trace_125, 'run', line(junit_framework_test_result, 125), failure_11, non_target).
trace(trace_127, trace_126, 'run', line(junit_framework_test_case, 130), failure_11, non_target).
trace(trace_128, trace_127, 'runTest', line(junit_framework_test_suite, 241), failure_11, non_target).
trace(trace_129, trace_128, 'run', line(junit_framework_test_suite, 236), failure_11, non_target).
trace(trace_130, trace_129, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_11, non_target).
trace(trace_131, trace_130, 'run', line(org_junit_runner_junit_core, 137), failure_11, non_target).
trace(trace_132, trace_131, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_11, non_target).



%%% End of Static Facts

%%% Values

val(f_c_available_locale_set_10, null, line(locale_utils_1, 223)).



%%% End of Facts