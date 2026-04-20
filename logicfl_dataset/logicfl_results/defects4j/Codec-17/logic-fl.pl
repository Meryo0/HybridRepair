%%% Logic-FL Facts
:- style_check(-discontiguous).

%string_utils_1 - org.apache.commons.codec.binary.StringUtils
param(p_cs_1_9, 1, m_equals_4).
param(p_cs_2_10, 2, m_equals_4).
param(p_string_11, 1, m_get_bytes_5).
param(p_charset_12, 2, m_get_bytes_5).
param(p_string_13, 1, m_get_byte_buffer_6).
param(p_charset_14, 2, m_get_byte_buffer_6).
param(p_string_15, 1, m_get_byte_buffer_utf8_7).
param(p_string_16, 1, m_get_bytes_iso8859_1_8).
param(p_string_17, 1, m_get_bytes_unchecked_9).
param(p_charset_name_18, 2, m_get_bytes_unchecked_9).
param(p_string_19, 1, m_get_bytes_us_ascii_10).
param(p_string_20, 1, m_get_bytes_utf16_11).
param(p_string_21, 1, m_get_bytes_utf16_be_12).
param(p_string_22, 1, m_get_bytes_utf16_le_13).
param(p_string_23, 1, m_get_bytes_utf8_14).
param(p_charset_name_24, 1, m_new_illegal_state_exception_15).
param(p_e_25, 2, m_new_illegal_state_exception_15).
param(p_bytes_26, 1, m_new_string_16).
param(p_charset_27, 2, m_new_string_16).
return(string_utils_1_expr1, m_new_string_16, line(string_utils_1, 293)).
cond_expr(string_utils_1_expr2, string_utils_1_literal1, string_utils_1_expr3, line(string_utils_1, 293)).
method_invoc(string_utils_1_expr3, m_string_17, line(string_utils_1, 293)).
argument(p_bytes_26, 1, string_utils_1_expr3).
argument(p_charset_27, 2, string_utils_1_expr3).
param(p_bytes_28, 1, m_new_string_18).
param(p_charset_name_29, 2, m_new_string_18).
param(p_bytes_30, 1, m_new_string_iso8859_1_19).
return(string_utils_1_expr4, m_new_string_iso8859_1_19, line(string_utils_1, 339)).
method_invoc(string_utils_1_expr4, m_string_17, line(string_utils_1, 339)).
throw(string_utils_1_expr4, null_pointer_exception, line(string_utils_1, 339)).
argument(p_bytes_30, 1, string_utils_1_expr4).
argument(q_iso_8859_1_7, 2, string_utils_1_expr4).
ref(t_charsets_3, q_iso_8859_1_7, line(string_utils_1, 339)).
param(p_bytes_31, 1, m_new_string_us_ascii_20).
param(p_bytes_32, 1, m_new_string_utf16_21).
param(p_bytes_33, 1, m_new_string_utf16_be_22).
param(p_bytes_34, 1, m_new_string_utf16_le_23).
param(p_bytes_35, 1, m_new_string_utf8_24).
return(string_utils_1_expr5, m_new_string_utf8_24, line(string_utils_1, 419)).
method_invoc(string_utils_1_expr5, m_new_string_16, line(string_utils_1, 419)).
argument(p_bytes_35, 1, string_utils_1_expr5).
argument(q_utf_8_8, 2, string_utils_1_expr5).
ref(t_charsets_3, q_utf_8_8, line(string_utils_1, 419)).

%charsets_1 - org.apache.commons.codec.Charsets
param(p_charset_1, 1, m_to_charset_1).
param(p_charset_2, 1, m_to_charset_2).
assign(f_iso_8859_1_3, charsets_1_expr1, line(charsets_1, 101)).
method_invoc(charsets_1_expr1, m_for_name_3, line(charsets_1, 101)).
argument(q_iso_8859_1_1, 1, charsets_1_expr1).
ref(t_charset_1, charsets_1_expr1, line(charsets_1, 101)).
ref(t_char_encoding_2, q_iso_8859_1_1, line(charsets_1, 101)).
assign(f_us_ascii_4, charsets_1_expr2, line(charsets_1, 114)).
method_invoc(charsets_1_expr2, m_for_name_3, line(charsets_1, 114)).
argument(q_us_ascii_2, 1, charsets_1_expr2).
ref(t_charset_1, charsets_1_expr2, line(charsets_1, 114)).
ref(t_char_encoding_2, q_us_ascii_2, line(charsets_1, 114)).
assign(f_utf_16_5, charsets_1_expr3, line(charsets_1, 128)).
method_invoc(charsets_1_expr3, m_for_name_3, line(charsets_1, 128)).
argument(q_utf_16_3, 1, charsets_1_expr3).
ref(t_charset_1, charsets_1_expr3, line(charsets_1, 128)).
ref(t_char_encoding_2, q_utf_16_3, line(charsets_1, 128)).
assign(f_utf_16be_6, charsets_1_expr4, line(charsets_1, 141)).
method_invoc(charsets_1_expr4, m_for_name_3, line(charsets_1, 141)).
argument(q_utf_16be_4, 1, charsets_1_expr4).
ref(t_charset_1, charsets_1_expr4, line(charsets_1, 141)).
ref(t_char_encoding_2, q_utf_16be_4, line(charsets_1, 141)).
assign(f_utf_16le_7, charsets_1_expr5, line(charsets_1, 154)).
method_invoc(charsets_1_expr5, m_for_name_3, line(charsets_1, 154)).
argument(q_utf_16le_5, 1, charsets_1_expr5).
ref(t_charset_1, charsets_1_expr5, line(charsets_1, 154)).
ref(t_char_encoding_2, q_utf_16le_5, line(charsets_1, 154)).
assign(f_utf_8_8, charsets_1_expr6, line(charsets_1, 167)).
method_invoc(charsets_1_expr6, m_for_name_3, line(charsets_1, 167)).
argument(q_utf_8_6, 1, charsets_1_expr6).
ref(t_charset_1, charsets_1_expr6, line(charsets_1, 167)).
ref(t_char_encoding_2, q_utf_8_6, line(charsets_1, 167)).

%string_utils_test_1 - org.apache.commons.codec.binary.StringUtilsTest
assign(f_bytes_fixture_36, string_utils_test_1_expr1, line(string_utils_test_1, 33)).
assign(f_bytes_fixture_16be_37, string_utils_test_1_expr2, line(string_utils_test_1, 36)).
assign(f_bytes_fixture_16le_38, string_utils_test_1_expr3, line(string_utils_test_1, 39)).
throw(m_test_get_bytes_iso8859_1_26, unsupported_encoding_exception).
param(p_charset_name_39, 1, m_test_get_bytes_unchecked_27).
throw(m_test_get_bytes_unchecked_27, unsupported_encoding_exception).
throw(m_test_get_bytes_us_ascii_28, unsupported_encoding_exception).
throw(m_test_get_bytes_utf16_29, unsupported_encoding_exception).
throw(m_test_get_bytes_utf16_be_30, unsupported_encoding_exception).
throw(m_test_get_bytes_utf16_le_31, unsupported_encoding_exception).
throw(m_test_get_bytes_utf8_32, unsupported_encoding_exception).
param(p_charset_name_40, 1, m_test_new_string_35).
throw(m_test_new_string_35, unsupported_encoding_exception).
method_invoc(string_utils_test_1_expr4, m_assert_null_39, line(string_utils_test_1, 150)).
argument(string_utils_test_1_expr5, 1, string_utils_test_1_expr4).
ref(t_assert_5, string_utils_test_1_expr4, line(string_utils_test_1, 150)).
method_invoc(string_utils_test_1_expr5, m_new_string_utf8_24, line(string_utils_test_1, 150)).
argument(string_utils_test_1_literal16, 1, string_utils_test_1_expr5).
ref(t_string_utils_6, string_utils_test_1_expr5, line(string_utils_test_1, 150)).
method_invoc(string_utils_test_1_expr6, m_assert_null_39, line(string_utils_test_1, 151)).
argument(string_utils_test_1_expr7, 1, string_utils_test_1_expr6).
ref(t_assert_5, string_utils_test_1_expr6, line(string_utils_test_1, 151)).
method_invoc(string_utils_test_1_expr7, m_new_string_iso8859_1_19, line(string_utils_test_1, 151)).
argument(string_utils_test_1_literal17, 1, string_utils_test_1_expr7).
ref(t_string_utils_6, string_utils_test_1_expr7, line(string_utils_test_1, 151)).
throw(m_test_new_string_iso8859_1_40, unsupported_encoding_exception).
throw(m_test_new_string_us_ascii_41, unsupported_encoding_exception).
throw(m_test_new_string_utf16_42, unsupported_encoding_exception).
throw(m_test_new_string_utf16_be_43, unsupported_encoding_exception).
throw(m_test_new_string_utf16_le_44, unsupported_encoding_exception).
throw(m_test_new_string_utf8_45, unsupported_encoding_exception).


% Stack Trace Info.
test_failure(failure_1, 'org.apache.commons.codec.binary.StringUtilsTest', 'testNewStringNullInput_CODEC229').
trace(trace_1, failure_1, 'String', line(java_lang_string, 1387), failure_1, non_target).
trace(trace_2, trace_1, m_new_string_iso8859_1_19, line(string_utils_1, 339), failure_1, target).
trace(trace_3, trace_2, m_test_new_string_null_input__codec229_38, line(string_utils_test_1, 151), failure_1, target).
trace(trace_4, trace_3, 'invoke0', line(jdk_internal_reflect_native_method_accessor_impl, -2), failure_1, non_target).
trace(trace_5, trace_4, 'invoke', line(jdk_internal_reflect_native_method_accessor_impl, 77), failure_1, non_target).
trace(trace_6, trace_5, 'invoke', line(jdk_internal_reflect_delegating_method_accessor_impl, 43), failure_1, non_target).
trace(trace_7, trace_6, 'invoke', line(java_lang_reflect_method, 569), failure_1, non_target).
trace(trace_8, trace_7, 'runReflectiveCall', line(org_junit_runners_model_framework_method_1, 59), failure_1, non_target).
trace(trace_9, trace_8, 'run', line(org_junit_internal_runners_model_reflective_callable, 12), failure_1, non_target).
trace(trace_10, trace_9, 'invokeExplosively', line(org_junit_runners_model_framework_method, 56), failure_1, non_target).
trace(trace_11, trace_10, 'evaluate', line(org_junit_internal_runners_statements_invoke_method, 17), failure_1, non_target).
trace(trace_12, trace_11, 'evaluate', line(org_junit_runners_parent_runner_3, 306), failure_1, non_target).
trace(trace_13, trace_12, 'evaluate', line(org_junit_runners_block_junit4_class_runner_1, 100), failure_1, non_target).
trace(trace_14, trace_13, 'runLeaf', line(org_junit_runners_parent_runner, 366), failure_1, non_target).
trace(trace_15, trace_14, 'runChild', line(org_junit_runners_block_junit4_class_runner, 103), failure_1, non_target).
trace(trace_16, trace_15, 'runChild', line(org_junit_runners_block_junit4_class_runner, 63), failure_1, non_target).
trace(trace_17, trace_16, 'run', line(org_junit_runners_parent_runner_4, 331), failure_1, non_target).
trace(trace_18, trace_17, 'schedule', line(org_junit_runners_parent_runner_1, 79), failure_1, non_target).
trace(trace_19, trace_18, 'runChildren', line(org_junit_runners_parent_runner, 329), failure_1, non_target).
trace(trace_20, trace_19, 'access$100', line(org_junit_runners_parent_runner, 66), failure_1, non_target).
trace(trace_21, trace_20, 'evaluate', line(org_junit_runners_parent_runner_2, 293), failure_1, non_target).
trace(trace_22, trace_21, 'evaluate', line(org_junit_runners_parent_runner_3, 306), failure_1, non_target).
trace(trace_23, trace_22, 'run', line(org_junit_runners_parent_runner, 413), failure_1, non_target).
trace(trace_24, trace_23, 'run', line(org_junit_runner_junit_core, 137), failure_1, non_target).
trace(trace_25, trace_24, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_1, non_target).



%%% End of Static Facts

%%% Values

val(p_bytes_30, null, line(string_utils_1, 339)).
val(string_utils_test_1_expr5, null, line(string_utils_test_1, 150)).



%%% End of Facts