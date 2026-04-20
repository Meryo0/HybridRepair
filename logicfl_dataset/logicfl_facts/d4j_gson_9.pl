%%% Logic-FL Facts
:- style_check(-discontiguous).

%json_writer_1 - com.google.gson.stream.JsonWriter
assign(f_replacement_chars_1, json_writer_1_expr2, line(json_writer_1, 145)).
assign(v_i_2, json_writer_1_literal2, line(json_writer_1, 146)).
assign(json_writer_1_expr7, json_writer_1_expr8, line(json_writer_1, 147)).
ref(f_replacement_chars_1, json_writer_1_expr7, line(json_writer_1, 147)).
method_invoc(json_writer_1_expr8, m_format_1, line(json_writer_1, 147)).
argument(json_writer_1_literal4, 1, json_writer_1_expr8).
argument(json_writer_1_expr9, 2, json_writer_1_expr8).
ref(t_string_1, json_writer_1_expr8, line(json_writer_1, 147)).
assign(json_writer_1_expr9, v_i_2, line(json_writer_1, 147)).
assign(json_writer_1_expr11, json_writer_1_literal5, line(json_writer_1, 149)).
ref(f_replacement_chars_1, json_writer_1_expr11, line(json_writer_1, 149)).
assign(json_writer_1_expr13, json_writer_1_literal7, line(json_writer_1, 150)).
ref(f_replacement_chars_1, json_writer_1_expr13, line(json_writer_1, 150)).
assign(json_writer_1_expr15, json_writer_1_literal9, line(json_writer_1, 151)).
ref(f_replacement_chars_1, json_writer_1_expr15, line(json_writer_1, 151)).
assign(json_writer_1_expr17, json_writer_1_literal11, line(json_writer_1, 152)).
ref(f_replacement_chars_1, json_writer_1_expr17, line(json_writer_1, 152)).
assign(json_writer_1_expr19, json_writer_1_literal13, line(json_writer_1, 153)).
ref(f_replacement_chars_1, json_writer_1_expr19, line(json_writer_1, 153)).
assign(json_writer_1_expr21, json_writer_1_literal15, line(json_writer_1, 154)).
ref(f_replacement_chars_1, json_writer_1_expr21, line(json_writer_1, 154)).
assign(json_writer_1_expr23, json_writer_1_literal17, line(json_writer_1, 155)).
ref(f_replacement_chars_1, json_writer_1_expr23, line(json_writer_1, 155)).
assign(f_html_safe_replacement_chars_3, json_writer_1_expr25, line(json_writer_1, 156)).
method_invoc(json_writer_1_expr25, m_clone_2, line(json_writer_1, 156)).
ref(f_replacement_chars_1, json_writer_1_expr25, line(json_writer_1, 156)).
assign(json_writer_1_expr27, json_writer_1_literal19, line(json_writer_1, 157)).
ref(f_html_safe_replacement_chars_3, json_writer_1_expr27, line(json_writer_1, 157)).
assign(json_writer_1_expr29, json_writer_1_literal21, line(json_writer_1, 158)).
ref(f_html_safe_replacement_chars_3, json_writer_1_expr29, line(json_writer_1, 158)).
assign(json_writer_1_expr31, json_writer_1_literal23, line(json_writer_1, 159)).
ref(f_html_safe_replacement_chars_3, json_writer_1_expr31, line(json_writer_1, 159)).
assign(json_writer_1_expr33, json_writer_1_literal25, line(json_writer_1, 160)).
ref(f_html_safe_replacement_chars_3, json_writer_1_expr33, line(json_writer_1, 160)).
assign(json_writer_1_expr35, json_writer_1_literal27, line(json_writer_1, 161)).
ref(f_html_safe_replacement_chars_3, json_writer_1_expr35, line(json_writer_1, 161)).
assign(f_stack_4, json_writer_1_expr36, line(json_writer_1, 167)).
assign(f_stack_size_5, json_writer_1_literal30, line(json_writer_1, 168)).
method_invoc(json_writer_1_expr37, m_push_3, line(json_writer_1, 170)).
argument(f_empty_document_6, 1, json_writer_1_expr37).
assign(f_separator_7, json_writer_1_literal31, line(json_writer_1, 182)).
assign(f_serialize_nulls_8, json_writer_1_literal32, line(json_writer_1, 190)).
param(p_out_9, 1, m_json_writer_4).
assign(f_out_10, p_out_9, line(json_writer_1, 201)).
param(p_indent_11, 1, m_set_indent_5).
param(p_lenient_12, 1, m_set_lenient_6).
param(p_html_safe_13, 1, m_set_html_safe_8).
param(p_serialize_nulls_14, 1, m_set_serialize_nulls_10).
throw(m_begin_array_12, ioexception).
method_invoc(json_writer_1_expr42, m_write_deferred_name_13, line(json_writer_1, 287)).
throw(json_writer_1_expr42, ioexception, line(json_writer_1, 287)).
return(json_writer_1_expr43, m_begin_array_12, line(json_writer_1, 288)).
method_invoc(json_writer_1_expr43, m_open_14, line(json_writer_1, 288)).
throw(json_writer_1_expr43, ioexception, line(json_writer_1, 288)).
argument(f_empty_array_15, 1, json_writer_1_expr43).
argument(json_writer_1_literal34, 2, json_writer_1_expr43).
throw(m_end_array_15, ioexception).
throw(m_begin_object_16, ioexception).
throw(m_end_object_17, ioexception).
param(p_empty_16, 1, m_open_14).
param(p_open_bracket_17, 2, m_open_14).
throw(m_open_14, ioexception).
method_invoc(json_writer_1_expr44, m_before_value_18, line(json_writer_1, 325)).
throw(json_writer_1_expr44, ioexception, line(json_writer_1, 325)).
method_invoc(json_writer_1_expr45, m_push_3, line(json_writer_1, 326)).
argument(p_empty_16, 1, json_writer_1_expr45).
method_invoc(json_writer_1_expr46, m_write_19, line(json_writer_1, 327)).
throw(json_writer_1_expr46, ioexception, line(json_writer_1, 327)).
argument(p_open_bracket_17, 1, json_writer_1_expr46).
ref(f_out_10, json_writer_1_expr46, line(json_writer_1, 327)).
return(json_writer_1_expr47, m_open_14, line(json_writer_1, 328)).
param(p_empty_18, 1, m_close_20).
param(p_nonempty_19, 2, m_close_20).
param(p_close_bracket_20, 3, m_close_20).
throw(m_close_20, ioexception).
param(p_new_top_21, 1, m_push_3).
ref(f_stack_4, q_length_1, line(json_writer_1, 354)).
assign(json_writer_1_expr50, p_new_top_21, line(json_writer_1, 359)).
ref(f_stack_4, json_writer_1_expr50, line(json_writer_1, 359)).
return(json_writer_1_expr53, m_peek_21, line(json_writer_1, 369)).
ref(f_stack_4, json_writer_1_expr53, line(json_writer_1, 369)).
param(p_top_of_stack_22, 1, m_replace_top_22).
assign(json_writer_1_expr56, p_top_of_stack_22, line(json_writer_1, 376)).
ref(f_stack_4, json_writer_1_expr56, line(json_writer_1, 376)).
param(p_name_23, 1, m_name_23).
throw(m_name_23, ioexception).
throw(m_write_deferred_name_13, ioexception).
param(p_value_25, 1, m_value_24).
throw(m_value_24, ioexception).
param(p_value_26, 1, m_json_value_25).
throw(m_json_value_25, ioexception).
throw(m_null_value_26, ioexception).
param(p_value_27, 1, m_value_27).
throw(m_value_27, ioexception).
method_invoc(json_writer_1_expr59, m_write_deferred_name_13, line(json_writer_1, 465)).
throw(json_writer_1_expr59, ioexception, line(json_writer_1, 465)).
method_invoc(json_writer_1_expr60, m_before_value_18, line(json_writer_1, 466)).
throw(json_writer_1_expr60, ioexception, line(json_writer_1, 466)).
method_invoc(json_writer_1_expr61, m_write_19, line(json_writer_1, 467)).
throw(json_writer_1_expr61, ioexception, line(json_writer_1, 467)).
argument(json_writer_1_expr62, 1, json_writer_1_expr61).
ref(f_out_10, json_writer_1_expr61, line(json_writer_1, 467)).
cond_expr(p_value_27, json_writer_1_literal39, json_writer_1_literal40, line(json_writer_1, 467)).
return(json_writer_1_expr63, m_value_27, line(json_writer_1, 468)).
param(p_value_28, 1, m_value_28).
throw(m_value_28, ioexception).
param(p_value_29, 1, m_value_29).
throw(m_value_29, ioexception).
param(p_value_30, 1, m_value_30).
throw(m_value_30, ioexception).
throw(m_flush_31, ioexception).
throw(m_close_32, ioexception).
param(p_value_31, 1, m_string_33).
throw(m_string_33, ioexception).
throw(m_newline_34, ioexception).
return(none, m_newline_34, line(json_writer_1, 589)).
throw(m_before_name_35, ioexception).
throw(m_before_value_18, ioexception).
method_invoc(json_writer_1_expr65, m_peek_21, line(json_writer_1, 620)).
method_invoc(json_writer_1_expr66, m_replace_top_22, line(json_writer_1, 628)).
argument(f_nonempty_document_33, 1, json_writer_1_expr66).
method_invoc(json_writer_1_expr67, m_replace_top_22, line(json_writer_1, 632)).
argument(f_nonempty_array_34, 1, json_writer_1_expr67).
method_invoc(json_writer_1_expr68, m_newline_34, line(json_writer_1, 633)).
throw(json_writer_1_expr68, ioexception, line(json_writer_1, 633)).
method_invoc(json_writer_1_expr69, m_append_36, line(json_writer_1, 637)).
throw(json_writer_1_expr69, ioexception, line(json_writer_1, 637)).
argument(json_writer_1_literal42, 1, json_writer_1_expr69).
ref(f_out_10, json_writer_1_expr69, line(json_writer_1, 637)).
method_invoc(json_writer_1_expr70, m_newline_34, line(json_writer_1, 638)).
throw(json_writer_1_expr70, ioexception, line(json_writer_1, 638)).

%json_writer_test_1 - com.google.gson.stream.JsonWriterTest
throw(m_test_top_level_value_types_37, ioexception).
throw(m_test_invalid_top_level_types_38, ioexception).
throw(m_test_two_names_39, ioexception).
throw(m_test_name_without_value_40, ioexception).
throw(m_test_value_without_name_41, ioexception).
throw(m_test_multiple_top_level_values_42, ioexception).
throw(m_test_bad_nesting_object_43, ioexception).
throw(m_test_bad_nesting_array_44, ioexception).
throw(m_test_null_name_45, ioexception).
throw(m_test_null_string_value_46, ioexception).
throw(m_test_json_value_47, ioexception).
throw(m_test_non_finite_doubles_48, ioexception).
throw(m_test_non_finite_boxed_doubles_49, ioexception).
throw(m_test_doubles_50, ioexception).
throw(m_test_longs_51, ioexception).
throw(m_test_numbers_52, ioexception).
throw(m_test_booleans_53, ioexception).
throw(m_test_boxed_booleans_54, ioexception).
assign(v_string_writer_35, json_writer_test_1_expr1, line(json_writer_test_1, 287)).
method_invoc(json_writer_test_1_expr1, m_string_writer_55, line(json_writer_test_1, 287)).
assign(v_json_writer_36, json_writer_test_1_expr2, line(json_writer_test_1, 288)).
method_invoc(json_writer_test_1_expr2, m_json_writer_4, line(json_writer_test_1, 288)).
argument(v_string_writer_35, 1, json_writer_test_1_expr2).
method_invoc(json_writer_test_1_expr3, m_begin_array_12, line(json_writer_test_1, 289)).
throw(json_writer_test_1_expr3, ioexception, line(json_writer_test_1, 289)).
ref(v_json_writer_36, json_writer_test_1_expr3, line(json_writer_test_1, 289)).
method_invoc(json_writer_test_1_expr4, m_value_27, line(json_writer_test_1, 290)).
throw(json_writer_test_1_expr4, ioexception, line(json_writer_test_1, 290)).
argument(json_writer_test_1_expr5, 1, json_writer_test_1_expr4).
ref(v_json_writer_36, json_writer_test_1_expr4, line(json_writer_test_1, 290)).
assign(json_writer_test_1_expr5, json_writer_test_1_literal1, line(json_writer_test_1, 290)).
method_invoc(json_writer_test_1_expr6, m_value_27, line(json_writer_test_1, 291)).
throw(json_writer_test_1_expr6, ioexception, line(json_writer_test_1, 291)).
argument(json_writer_test_1_expr7, 1, json_writer_test_1_expr6).
ref(v_json_writer_36, json_writer_test_1_expr6, line(json_writer_test_1, 291)).
assign(json_writer_test_1_expr7, json_writer_test_1_literal2, line(json_writer_test_1, 291)).
method_invoc(json_writer_test_1_expr8, m_value_27, line(json_writer_test_1, 292)).
throw(json_writer_test_1_expr8, ioexception, line(json_writer_test_1, 292)).
argument(json_writer_test_1_expr9, 1, json_writer_test_1_expr8).
ref(v_json_writer_36, json_writer_test_1_expr8, line(json_writer_test_1, 292)).
assign(json_writer_test_1_expr9, json_writer_test_1_literal3, line(json_writer_test_1, 292)).
throw(m_test_nulls_56, ioexception).
throw(m_test_strings_57, ioexception).
throw(m_test_unicode_line_breaks_escaped_58, ioexception).
throw(m_test_empty_array_59, ioexception).
throw(m_test_empty_object_60, ioexception).
throw(m_test_objects_in_arrays_61, ioexception).
throw(m_test_arrays_in_objects_62, ioexception).
throw(m_test_deep_nesting_arrays_63, ioexception).
throw(m_test_deep_nesting_objects_64, ioexception).
throw(m_test_repeated_name_65, ioexception).
throw(m_test_pretty_print_object_66, ioexception).
throw(m_test_pretty_print_array_67, ioexception).
throw(m_test_lenient_writer_permits_multiple_top_level_values_68, ioexception).
throw(m_test_strict_writer_does_not_permit_multiple_top_level_values_69, ioexception).
throw(m_test_closed_writer_throws_on_structure_70, ioexception).
throw(m_test_closed_writer_throws_on_name_71, ioexception).
throw(m_test_closed_writer_throws_on_value_72, ioexception).
throw(m_test_closed_writer_throws_on_flush_73, ioexception).
throw(m_test_writer_close_is_idempotent_74, ioexception).


% Stack Trace Info.
test_failure(failure_1, 'com.google.gson.stream.JsonWriterTest', 'testBoxedBooleans').
trace(trace_1, failure_1, m_test_boxed_booleans_54, line(json_writer_test_1, 292), failure_1, target).
trace(trace_2, trace_1, 'invoke', line(jdk_internal_reflect_direct_method_handle_accessor, 104), failure_1, non_target).
trace(trace_3, trace_2, 'invoke', line(java_lang_reflect_method, 578), failure_1, non_target).
trace(trace_4, trace_3, 'runTest', line(junit_framework_test_case, 177), failure_1, non_target).
trace(trace_5, trace_4, 'runBare', line(junit_framework_test_case, 142), failure_1, non_target).
trace(trace_6, trace_5, 'protect', line(junit_framework_test_result_1, 122), failure_1, non_target).
trace(trace_7, trace_6, 'runProtected', line(junit_framework_test_result, 142), failure_1, non_target).
trace(trace_8, trace_7, 'run', line(junit_framework_test_result, 125), failure_1, non_target).
trace(trace_9, trace_8, 'run', line(junit_framework_test_case, 130), failure_1, non_target).
trace(trace_10, trace_9, 'runTest', line(junit_framework_test_suite, 241), failure_1, non_target).
trace(trace_11, trace_10, 'run', line(junit_framework_test_suite, 236), failure_1, non_target).
trace(trace_12, trace_11, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_1, non_target).
trace(trace_13, trace_12, 'run', line(org_junit_runner_junit_core, 137), failure_1, non_target).
trace(trace_14, trace_13, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_1, non_target).



%%% End of Static Facts

%%% Values




%%% End of Facts
%%% Code Facts
:- style_check(-discontiguous).
%%% Classes
class(json_writer_1, 'com.google.gson.stream.JsonWriter').
class(json_writer_test_1, 'com.google.gson.stream.JsonWriterTest').

%%% Methods
%json_writer_1 - com.google.gson.stream.JsonWriter
method(m_json_writer_4, range(json_writer_1, 6799, 366, 192, 202)).
method(m_set_indent_5, range(json_writer_1, 7169, 527, 204, 220)).
method(m_set_lenient_6, range(json_writer_1, 7700, 594, 222, 236)).
method(m_is_lenient_7, range(json_writer_1, 8298, 123, 238, 243)).
method(m_set_html_safe_8, range(json_writer_1, 8425, 446, 245, 254)).
method(m_is_html_safe_9, range(json_writer_1, 8875, 175, 256, 262)).
method(m_set_serialize_nulls_10, range(json_writer_1, 9054, 257, 264, 270)).
method(m_get_serialize_nulls_11, range(json_writer_1, 9315, 226, 272, 278)).
method(m_begin_array_12, range(json_writer_1, 9545, 271, 280, 289)).
method(m_end_array_15, range(json_writer_1, 9820, 186, 291, 298)).
method(m_begin_object_16, range(json_writer_1, 10010, 275, 300, 309)).
method(m_end_object_17, range(json_writer_1, 10289, 190, 311, 318)).
method(m_open_14, range(json_writer_1, 10483, 262, 320, 329)).
method(m_close_20, range(json_writer_1, 10749, 580, 331, 351)).
method(m_push_3, range(json_writer_1, 11333, 240, 353, 360)).
method(m_peek_21, range(json_writer_1, 11577, 213, 362, 370)).
method(m_replace_top_22, range(json_writer_1, 11794, 165, 372, 377)).
method(m_name_23, range(json_writer_1, 11963, 505, 379, 397)).
method(m_write_deferred_name_13, range(json_writer_1, 12472, 170, 399, 405)).
method(m_value_24, range(json_writer_1, 12646, 348, 407, 421)).
method(m_json_value_25, range(json_writer_1, 12998, 411, 423, 438)).
method(m_null_value_26, range(json_writer_1, 13413, 382, 440, 457)).
method(m_value_27, range(json_writer_1, 13799, 236, 459, 469)).
method(m_value_28, range(json_writer_1, 14111, 517, 477, 492)).
method(m_value_29, range(json_writer_1, 14632, 229, 494, 504)).
method(m_value_30, range(json_writer_1, 14865, 651, 506, 527)).
method(m_flush_31, range(json_writer_1, 15520, 274, 529, 538)).
method(m_close_32, range(json_writer_1, 15798, 387, 540, 553)).
method(m_string_33, range(json_writer_1, 16189, 840, 555, 585)).
method(m_newline_34, range(json_writer_1, 17033, 201, 587, 596)).
method(m_before_name_35, range(json_writer_1, 17238, 465, 598, 611)).
method(m_before_value_18, range(json_writer_1, 17707, 994, 613, 649)).
%json_writer_test_1 - com.google.gson.stream.JsonWriterTest
method(m_test_top_level_value_types_37, range(json_writer_test_1, 869, 1010, 28, 58)).
method(m_test_invalid_top_level_types_38, range(json_writer_test_1, 1883, 313, 60, 69)).
method(m_test_two_names_39, range(json_writer_test_1, 2200, 322, 71, 81)).
method(m_test_name_without_value_40, range(json_writer_test_1, 2526, 332, 83, 93)).
method(m_test_value_without_name_41, range(json_writer_test_1, 2862, 306, 95, 104)).
method(m_test_multiple_top_level_values_42, range(json_writer_test_1, 3172, 323, 106, 115)).
method(m_test_bad_nesting_object_43, range(json_writer_test_1, 3499, 334, 117, 127)).
method(m_test_bad_nesting_array_44, range(json_writer_test_1, 3837, 333, 129, 139)).
method(m_test_null_name_45, range(json_writer_test_1, 4174, 296, 141, 150)).
method(m_test_null_string_value_46, range(json_writer_test_1, 4474, 348, 152, 160)).
method(m_test_json_value_47, range(json_writer_test_1, 4826, 414, 162, 172)).
method(m_test_non_finite_doubles_48, range(json_writer_test_1, 5244, 574, 174, 193)).
method(m_test_non_finite_boxed_doubles_49, range(json_writer_test_1, 5822, 615, 195, 214)).
method(m_test_doubles_50, range(json_writer_test_1, 6441, 800, 216, 240)).
method(m_test_longs_51, range(json_writer_test_1, 7245, 538, 242, 258)).
method(m_test_numbers_52, range(json_writer_test_1, 7787, 637, 260, 274)).
method(m_test_booleans_53, range(json_writer_test_1, 8428, 333, 276, 284)).
method(m_test_boxed_booleans_54, range(json_writer_test_1, 8765, 401, 286, 295)).
method(m_test_nulls_56, range(json_writer_test_1, 9170, 295, 297, 304)).
method(m_test_strings_57, range(json_writer_test_1, 9469, 1126, 306, 347)).
method(m_test_unicode_line_breaks_escaped_58, range(json_writer_test_1, 10599, 340, 349, 356)).
method(m_test_empty_array_59, range(json_writer_test_1, 10943, 268, 358, 364)).
method(m_test_empty_object_60, range(json_writer_test_1, 11215, 271, 366, 372)).
method(m_test_objects_in_arrays_61, range(json_writer_test_1, 11490, 591, 374, 389)).
method(m_test_arrays_in_objects_62, range(json_writer_test_1, 12085, 589, 391, 408)).
method(m_test_deep_nesting_arrays_63, range(json_writer_test_1, 12678, 399, 410, 420)).
method(m_test_deep_nesting_objects_64, range(json_writer_test_1, 13081, 636, 422, 437)).
method(m_test_repeated_name_65, range(json_writer_test_1, 13721, 431, 439, 448)).
method(m_test_pretty_print_object_66, range(json_writer_test_1, 14156, 1096, 450, 485)).
method(m_test_pretty_print_array_67, range(json_writer_test_1, 15256, 991, 487, 522)).
method(m_test_lenient_writer_permits_multiple_top_level_values_68, range(json_writer_test_1, 16251, 387, 524, 534)).
method(m_test_strict_writer_does_not_permit_multiple_top_level_values_69, range(json_writer_test_1, 16642, 348, 536, 546)).
method(m_test_closed_writer_throws_on_structure_70, range(json_writer_test_1, 16994, 660, 548, 574)).
method(m_test_closed_writer_throws_on_name_71, range(json_writer_test_1, 17658, 342, 576, 587)).
method(m_test_closed_writer_throws_on_value_72, range(json_writer_test_1, 18004, 344, 589, 600)).
method(m_test_closed_writer_throws_on_flush_73, range(json_writer_test_1, 18352, 341, 602, 613)).
method(m_test_writer_close_is_idempotent_74, range(json_writer_test_1, 18697, 260, 615, 622)).

%%% Blocks
%json_writer_1 - com.google.gson.stream.JsonWriter
block(json_writer_1_block1, block, json_writer_1_code3, body, range(json_writer_1, 5478, 726, 144, 162)).
block(json_writer_1_block2, block, json_writer_1_stmt2, body, range(json_writer_1, 5557, 71, 146, 148)).
block(json_writer_1_block3, block, json_writer_1_code23, body, range(json_writer_1, 6379, 31, 169, 171)).
block(json_writer_1_block4, block, json_writer_1_code32, body, range(json_writer_1, 7058, 107, 197, 202)).
block(json_writer_1_block5, block, json_writer_1_stmt18, then_statement, range(json_writer_1, 7081, 60, 198, 200)).
block(json_writer_1_block6, block, json_writer_1_code36, body, range(json_writer_1, 9751, 65, 286, 289)).
block(json_writer_1_block7, block, json_writer_1_code37, body, range(json_writer_1, 10659, 86, 324, 329)).
block(json_writer_1_block8, block, json_writer_1_code38, body, range(json_writer_1, 11363, 210, 353, 360)).
block(json_writer_1_block9, block, json_writer_1_stmt26, then_statement, range(json_writer_1, 11400, 136, 354, 358)).
block(json_writer_1_block10, block, json_writer_1_code39, body, range(json_writer_1, 11656, 134, 365, 370)).
block(json_writer_1_block11, block, json_writer_1_stmt28, then_statement, range(json_writer_1, 11682, 71, 366, 368)).
block(json_writer_1_block12, block, json_writer_1_code40, body, range(json_writer_1, 11915, 44, 375, 377)).
block(json_writer_1_block13, block, json_writer_1_code41, body, range(json_writer_1, 12524, 118, 399, 405)).
block(json_writer_1_block14, block, json_writer_1_stmt31, then_statement, range(json_writer_1, 12556, 82, 400, 404)).
block(json_writer_1_block15, block, json_writer_1_code42, body, range(json_writer_1, 13928, 107, 464, 469)).
block(json_writer_1_block16, block, json_writer_1_code43, body, range(json_writer_1, 17075, 159, 587, 596)).
block(json_writer_1_block17, block, json_writer_1_stmt36, then_statement, range(json_writer_1, 17101, 21, 588, 590)).
block(json_writer_1_block18, block, json_writer_1_code44, body, range(json_writer_1, 17997, 704, 619, 649)).
%json_writer_test_1 - com.google.gson.stream.JsonWriterTest
block(json_writer_test_1_block1, block, json_writer_test_1_code6, body, range(json_writer_test_1, 8816, 350, 286, 295)).

%%% Statements
%json_writer_1 - com.google.gson.stream.JsonWriter
stmt(json_writer_1_stmt1, expression_statement, json_writer_1_block1, (statements, 0), range(json_writer_1, 5484, 36, 145, 145)).
stmt(json_writer_1_stmt2, for_statement, json_writer_1_block1, (statements, 1), range(json_writer_1, 5525, 103, 146, 148)).
stmt(json_writer_1_stmt3, expression_statement, json_writer_1_block2, (statements, 0), range(json_writer_1, 5565, 57, 147, 147)).
stmt(json_writer_1_stmt4, expression_statement, json_writer_1_block1, (statements, 2), range(json_writer_1, 5633, 32, 149, 149)).
stmt(json_writer_1_stmt5, expression_statement, json_writer_1_block1, (statements, 3), range(json_writer_1, 5670, 33, 150, 150)).
stmt(json_writer_1_stmt6, expression_statement, json_writer_1_block1, (statements, 4), range(json_writer_1, 5708, 32, 151, 151)).
stmt(json_writer_1_stmt7, expression_statement, json_writer_1_block1, (statements, 5), range(json_writer_1, 5745, 32, 152, 152)).
stmt(json_writer_1_stmt8, expression_statement, json_writer_1_block1, (statements, 6), range(json_writer_1, 5782, 32, 153, 153)).
stmt(json_writer_1_stmt9, expression_statement, json_writer_1_block1, (statements, 7), range(json_writer_1, 5819, 32, 154, 154)).
stmt(json_writer_1_stmt10, expression_statement, json_writer_1_block1, (statements, 8), range(json_writer_1, 5856, 32, 155, 155)).
stmt(json_writer_1_stmt11, expression_statement, json_writer_1_block1, (statements, 9), range(json_writer_1, 5893, 56, 156, 156)).
stmt(json_writer_1_stmt12, expression_statement, json_writer_1_block1, (statements, 10), range(json_writer_1, 5954, 45, 157, 157)).
stmt(json_writer_1_stmt13, expression_statement, json_writer_1_block1, (statements, 11), range(json_writer_1, 6004, 45, 158, 158)).
stmt(json_writer_1_stmt14, expression_statement, json_writer_1_block1, (statements, 12), range(json_writer_1, 6054, 45, 159, 159)).
stmt(json_writer_1_stmt15, expression_statement, json_writer_1_block1, (statements, 13), range(json_writer_1, 6104, 45, 160, 160)).
stmt(json_writer_1_stmt16, expression_statement, json_writer_1_block1, (statements, 14), range(json_writer_1, 6154, 46, 161, 161)).
stmt(json_writer_1_stmt17, expression_statement, json_writer_1_block3, (statements, 0), range(json_writer_1, 6385, 21, 170, 170)).
stmt(json_writer_1_stmt18, if_statement, json_writer_1_block4, (statements, 0), range(json_writer_1, 7064, 77, 198, 200)).
stmt(json_writer_1_stmt19, expression_statement, json_writer_1_block4, (statements, 1), range(json_writer_1, 7146, 15, 201, 201)).
stmt(json_writer_1_stmt20, expression_statement, json_writer_1_block6, (statements, 0), range(json_writer_1, 9757, 20, 287, 287)).
stmt(json_writer_1_stmt21, return_statement, json_writer_1_block6, (statements, 1), range(json_writer_1, 9782, 30, 288, 288)).
stmt(json_writer_1_stmt22, expression_statement, json_writer_1_block7, (statements, 0), range(json_writer_1, 10665, 14, 325, 325)).
stmt(json_writer_1_stmt23, expression_statement, json_writer_1_block7, (statements, 1), range(json_writer_1, 10684, 12, 326, 326)).
stmt(json_writer_1_stmt24, expression_statement, json_writer_1_block7, (statements, 2), range(json_writer_1, 10701, 23, 327, 327)).
stmt(json_writer_1_stmt25, return_statement, json_writer_1_block7, (statements, 3), range(json_writer_1, 10729, 12, 328, 328)).
stmt(json_writer_1_stmt26, if_statement, json_writer_1_block8, (statements, 0), range(json_writer_1, 11369, 167, 354, 358)).
stmt(json_writer_1_stmt27, expression_statement, json_writer_1_block8, (statements, 1), range(json_writer_1, 11541, 28, 359, 359)).
stmt(json_writer_1_stmt28, if_statement, json_writer_1_block10, (statements, 0), range(json_writer_1, 11662, 91, 366, 368)).
stmt(json_writer_1_stmt29, return_statement, json_writer_1_block10, (statements, 1), range(json_writer_1, 11758, 28, 369, 369)).
stmt(json_writer_1_stmt30, expression_statement, json_writer_1_block12, (statements, 0), range(json_writer_1, 11921, 34, 376, 376)).
stmt(json_writer_1_stmt31, if_statement, json_writer_1_block13, (statements, 0), range(json_writer_1, 12530, 108, 400, 404)).
stmt(json_writer_1_stmt32, expression_statement, json_writer_1_block15, (statements, 0), range(json_writer_1, 13934, 20, 465, 465)).
stmt(json_writer_1_stmt33, expression_statement, json_writer_1_block15, (statements, 1), range(json_writer_1, 13959, 14, 466, 466)).
stmt(json_writer_1_stmt34, expression_statement, json_writer_1_block15, (statements, 2), range(json_writer_1, 13978, 36, 467, 467)).
stmt(json_writer_1_stmt35, return_statement, json_writer_1_block15, (statements, 3), range(json_writer_1, 14019, 12, 468, 468)).
stmt(json_writer_1_stmt36, if_statement, json_writer_1_block16, (statements, 0), range(json_writer_1, 17081, 41, 588, 590)).
stmt(json_writer_1_stmt37, return_statement, json_writer_1_block17, (statements, 0), range(json_writer_1, 17109, 7, 589, 589)).
stmt(json_writer_1_stmt38, switch_statement, json_writer_1_block18, (statements, 0), range(json_writer_1, 18003, 694, 620, 648)).
stmt(json_writer_1_stmt39, expression_statement, json_writer_1_stmt38, (statements, 3), range(json_writer_1, 18251, 30, 628, 628)).
stmt(json_writer_1_stmt40, break_statement, json_writer_1_stmt38, (statements, 4), range(json_writer_1, 18288, 6, 629, 629)).
stmt(json_writer_1_stmt41, expression_statement, json_writer_1_stmt38, (statements, 6), range(json_writer_1, 18342, 27, 632, 632)).
stmt(json_writer_1_stmt42, expression_statement, json_writer_1_stmt38, (statements, 7), range(json_writer_1, 18376, 10, 633, 633)).
stmt(json_writer_1_stmt43, break_statement, json_writer_1_stmt38, (statements, 8), range(json_writer_1, 18393, 6, 634, 634)).
stmt(json_writer_1_stmt44, expression_statement, json_writer_1_stmt38, (statements, 10), range(json_writer_1, 18452, 16, 637, 637)).
stmt(json_writer_1_stmt45, expression_statement, json_writer_1_stmt38, (statements, 11), range(json_writer_1, 18475, 10, 638, 638)).
stmt(json_writer_1_stmt46, break_statement, json_writer_1_stmt38, (statements, 12), range(json_writer_1, 18492, 6, 639, 639)).
%json_writer_test_1 - com.google.gson.stream.JsonWriterTest
stmt(json_writer_test_1_stmt1, variable_declaration_statement, json_writer_test_1_block1, (statements, 0), range(json_writer_test_1, 8822, 47, 287, 287)).
stmt(json_writer_test_1_stmt2, variable_declaration_statement, json_writer_test_1_block1, (statements, 1), range(json_writer_test_1, 8874, 53, 288, 288)).
stmt(json_writer_test_1_stmt3, expression_statement, json_writer_test_1_block1, (statements, 2), range(json_writer_test_1, 8932, 24, 289, 289)).
stmt(json_writer_test_1_stmt4, expression_statement, json_writer_test_1_block1, (statements, 3), range(json_writer_test_1, 8961, 33, 290, 290)).
stmt(json_writer_test_1_stmt5, expression_statement, json_writer_test_1_block1, (statements, 4), range(json_writer_test_1, 8999, 34, 291, 291)).
stmt(json_writer_test_1_stmt6, expression_statement, json_writer_test_1_block1, (statements, 5), range(json_writer_test_1, 9038, 33, 292, 292)).

%%% Expressions
%json_writer_1 - com.google.gson.stream.JsonWriter
expr(json_writer_1_expr1, assignment, json_writer_1_stmt1, expression, range(json_writer_1, 5484, 35, 145, 145), "REPLACEMENT_CHARS=new String[128]").
expr(json_writer_1_expr2, array_creation, json_writer_1_expr1, right_hand_side, range(json_writer_1, 5504, 15, 145, 145), "new String[128]").
expr(json_writer_1_expr3, variable_declaration_expression, json_writer_1_stmt2, (initializers, 0), range(json_writer_1, 5530, 9, 146, 146), "int i=0").
expr(json_writer_1_expr4, infix_expression, json_writer_1_stmt2, expression, range(json_writer_1, 5541, 9, 146, 146), "i <= 0x1f").
expr(json_writer_1_expr5, postfix_expression, json_writer_1_stmt2, (updaters, 0), range(json_writer_1, 5552, 3, 146, 146), "i++").
expr(json_writer_1_expr7, array_access, json_writer_1_expr6, left_hand_side, range(json_writer_1, 5565, 20, 147, 147), "REPLACEMENT_CHARS[i]").
expr(json_writer_1_expr6, assignment, json_writer_1_stmt3, expression, range(json_writer_1, 5565, 56, 147, 147), "REPLACEMENT_CHARS[i]=String.format(\"\\\\u%04x\",(int)i)").
expr(json_writer_1_expr8, method_invocation, json_writer_1_expr6, right_hand_side, range(json_writer_1, 5588, 33, 147, 147), "String.format(\"\\\\u%04x\",(int)i)").
expr(json_writer_1_expr9, cast_expression, json_writer_1_expr8, (arguments, 1), range(json_writer_1, 5613, 7, 147, 147), "(int)i").
expr(json_writer_1_expr10, assignment, json_writer_1_stmt4, expression, range(json_writer_1, 5633, 31, 149, 149), "REPLACEMENT_CHARS['\"']=\"\\\\\\\"\"").
expr(json_writer_1_expr11, array_access, json_writer_1_expr10, left_hand_side, range(json_writer_1, 5633, 22, 149, 149), "REPLACEMENT_CHARS['\"']").
expr(json_writer_1_expr12, assignment, json_writer_1_stmt5, expression, range(json_writer_1, 5670, 32, 150, 150), "REPLACEMENT_CHARS['\\\\']=\"\\\\\\\\\"").
expr(json_writer_1_expr13, array_access, json_writer_1_expr12, left_hand_side, range(json_writer_1, 5670, 23, 150, 150), "REPLACEMENT_CHARS['\\\\']").
expr(json_writer_1_expr14, assignment, json_writer_1_stmt6, expression, range(json_writer_1, 5708, 31, 151, 151), "REPLACEMENT_CHARS['\\t']=\"\\\\t\"").
expr(json_writer_1_expr15, array_access, json_writer_1_expr14, left_hand_side, range(json_writer_1, 5708, 23, 151, 151), "REPLACEMENT_CHARS['\\t']").
expr(json_writer_1_expr16, assignment, json_writer_1_stmt7, expression, range(json_writer_1, 5745, 31, 152, 152), "REPLACEMENT_CHARS['\\b']=\"\\\\b\"").
expr(json_writer_1_expr17, array_access, json_writer_1_expr16, left_hand_side, range(json_writer_1, 5745, 23, 152, 152), "REPLACEMENT_CHARS['\\b']").
expr(json_writer_1_expr19, array_access, json_writer_1_expr18, left_hand_side, range(json_writer_1, 5782, 23, 153, 153), "REPLACEMENT_CHARS['\\n']").
expr(json_writer_1_expr18, assignment, json_writer_1_stmt8, expression, range(json_writer_1, 5782, 31, 153, 153), "REPLACEMENT_CHARS['\\n']=\"\\\\n\"").
expr(json_writer_1_expr21, array_access, json_writer_1_expr20, left_hand_side, range(json_writer_1, 5819, 23, 154, 154), "REPLACEMENT_CHARS['\\r']").
expr(json_writer_1_expr20, assignment, json_writer_1_stmt9, expression, range(json_writer_1, 5819, 31, 154, 154), "REPLACEMENT_CHARS['\\r']=\"\\\\r\"").
expr(json_writer_1_expr23, array_access, json_writer_1_expr22, left_hand_side, range(json_writer_1, 5856, 23, 155, 155), "REPLACEMENT_CHARS['\\f']").
expr(json_writer_1_expr22, assignment, json_writer_1_stmt10, expression, range(json_writer_1, 5856, 31, 155, 155), "REPLACEMENT_CHARS['\\f']=\"\\\\f\"").
expr(json_writer_1_expr24, assignment, json_writer_1_stmt11, expression, range(json_writer_1, 5893, 55, 156, 156), "HTML_SAFE_REPLACEMENT_CHARS=REPLACEMENT_CHARS.clone()").
expr(json_writer_1_expr25, method_invocation, json_writer_1_expr24, right_hand_side, range(json_writer_1, 5923, 25, 156, 156), "REPLACEMENT_CHARS.clone()").
expr(json_writer_1_expr27, array_access, json_writer_1_expr26, left_hand_side, range(json_writer_1, 5954, 32, 157, 157), "HTML_SAFE_REPLACEMENT_CHARS['<']").
expr(json_writer_1_expr26, assignment, json_writer_1_stmt12, expression, range(json_writer_1, 5954, 44, 157, 157), "HTML_SAFE_REPLACEMENT_CHARS['<']=\"\\\\u003c\"").
expr(json_writer_1_expr29, array_access, json_writer_1_expr28, left_hand_side, range(json_writer_1, 6004, 32, 158, 158), "HTML_SAFE_REPLACEMENT_CHARS['>']").
expr(json_writer_1_expr28, assignment, json_writer_1_stmt13, expression, range(json_writer_1, 6004, 44, 158, 158), "HTML_SAFE_REPLACEMENT_CHARS['>']=\"\\\\u003e\"").
expr(json_writer_1_expr30, assignment, json_writer_1_stmt14, expression, range(json_writer_1, 6054, 44, 159, 159), "HTML_SAFE_REPLACEMENT_CHARS['&']=\"\\\\u0026\"").
expr(json_writer_1_expr31, array_access, json_writer_1_expr30, left_hand_side, range(json_writer_1, 6054, 32, 159, 159), "HTML_SAFE_REPLACEMENT_CHARS['&']").
expr(json_writer_1_expr32, assignment, json_writer_1_stmt15, expression, range(json_writer_1, 6104, 44, 160, 160), "HTML_SAFE_REPLACEMENT_CHARS['=']=\"\\\\u003d\"").
expr(json_writer_1_expr33, array_access, json_writer_1_expr32, left_hand_side, range(json_writer_1, 6104, 32, 160, 160), "HTML_SAFE_REPLACEMENT_CHARS['=']").
expr(json_writer_1_expr34, assignment, json_writer_1_stmt16, expression, range(json_writer_1, 6154, 45, 161, 161), "HTML_SAFE_REPLACEMENT_CHARS['\\'']=\"\\\\u0027\"").
expr(json_writer_1_expr35, array_access, json_writer_1_expr34, left_hand_side, range(json_writer_1, 6154, 33, 161, 161), "HTML_SAFE_REPLACEMENT_CHARS['\\'']").
expr(json_writer_1_expr36, array_creation, json_writer_1_code15, initializer, range(json_writer_1, 6335, 11, 167, 167), "new int[32]").
expr(json_writer_1_expr37, method_invocation, json_writer_1_stmt17, expression, range(json_writer_1, 6385, 20, 170, 170), "push(EMPTY_DOCUMENT)").
expr(json_writer_1_expr38, infix_expression, json_writer_1_stmt18, expression, range(json_writer_1, 7068, 11, 198, 198), "out == null").
expr(json_writer_1_expr41, this_expression, f_out_10, expression, range(json_writer_1, 7146, 4, 201, 201), "this").
expr(json_writer_1_expr40, field_access, json_writer_1_expr39, left_hand_side, range(json_writer_1, 7146, 8, 201, 201), "this.out").
expr(json_writer_1_expr39, assignment, json_writer_1_stmt19, expression, range(json_writer_1, 7146, 14, 201, 201), "this.out=out").
expr(json_writer_1_expr42, method_invocation, json_writer_1_stmt20, expression, range(json_writer_1, 9757, 19, 287, 287), "writeDeferredName()").
expr(json_writer_1_expr43, method_invocation, json_writer_1_stmt21, expression, range(json_writer_1, 9789, 22, 288, 288), "open(EMPTY_ARRAY,\"[\")").
expr(json_writer_1_expr44, method_invocation, json_writer_1_stmt22, expression, range(json_writer_1, 10665, 13, 325, 325), "beforeValue()").
expr(json_writer_1_expr45, method_invocation, json_writer_1_stmt23, expression, range(json_writer_1, 10684, 11, 326, 326), "push(empty)").
expr(json_writer_1_expr46, method_invocation, json_writer_1_stmt24, expression, range(json_writer_1, 10701, 22, 327, 327), "out.write(openBracket)").
expr(json_writer_1_expr47, this_expression, json_writer_1_stmt25, expression, range(json_writer_1, 10736, 4, 328, 328), "this").
expr(json_writer_1_expr48, infix_expression, json_writer_1_stmt26, expression, range(json_writer_1, 11373, 25, 354, 354), "stackSize == stack.length").
expr(json_writer_1_expr49, assignment, json_writer_1_stmt27, expression, range(json_writer_1, 11541, 27, 359, 359), "stack[stackSize++]=newTop").
expr(json_writer_1_expr50, array_access, json_writer_1_expr49, left_hand_side, range(json_writer_1, 11541, 18, 359, 359), "stack[stackSize++]").
expr(json_writer_1_expr51, postfix_expression, json_writer_1_expr50, index, range(json_writer_1, 11547, 11, 359, 359), "stackSize++").
expr(json_writer_1_expr52, infix_expression, json_writer_1_stmt28, expression, range(json_writer_1, 11666, 14, 366, 366), "stackSize == 0").
expr(json_writer_1_expr53, array_access, json_writer_1_stmt29, expression, range(json_writer_1, 11765, 20, 369, 369), "stack[stackSize - 1]").
expr(json_writer_1_expr54, infix_expression, json_writer_1_expr53, index, range(json_writer_1, 11771, 13, 369, 369), "stackSize - 1").
expr(json_writer_1_expr56, array_access, json_writer_1_expr55, left_hand_side, range(json_writer_1, 11921, 20, 376, 376), "stack[stackSize - 1]").
expr(json_writer_1_expr55, assignment, json_writer_1_stmt30, expression, range(json_writer_1, 11921, 33, 376, 376), "stack[stackSize - 1]=topOfStack").
expr(json_writer_1_expr57, infix_expression, json_writer_1_expr56, index, range(json_writer_1, 11927, 13, 376, 376), "stackSize - 1").
expr(json_writer_1_expr58, infix_expression, json_writer_1_stmt31, expression, range(json_writer_1, 12534, 20, 400, 400), "deferredName != null").
expr(json_writer_1_expr59, method_invocation, json_writer_1_stmt32, expression, range(json_writer_1, 13934, 19, 465, 465), "writeDeferredName()").
expr(json_writer_1_expr60, method_invocation, json_writer_1_stmt33, expression, range(json_writer_1, 13959, 13, 466, 466), "beforeValue()").
expr(json_writer_1_expr61, method_invocation, json_writer_1_stmt34, expression, range(json_writer_1, 13978, 35, 467, 467), "out.write(value ? \"true\" : \"false\")").
expr(json_writer_1_expr62, conditional_expression, json_writer_1_expr61, (arguments, 0), range(json_writer_1, 13988, 24, 467, 467), "value ? \"true\" : \"false\"").
expr(json_writer_1_expr63, this_expression, json_writer_1_stmt35, expression, range(json_writer_1, 14026, 4, 468, 468), "this").
expr(json_writer_1_expr64, infix_expression, json_writer_1_stmt36, expression, range(json_writer_1, 17085, 14, 588, 588), "indent == null").
expr(json_writer_1_expr65, method_invocation, json_writer_1_stmt38, expression, range(json_writer_1, 18011, 6, 620, 620), "peek()").
expr(json_writer_1_expr66, method_invocation, json_writer_1_stmt39, expression, range(json_writer_1, 18251, 29, 628, 628), "replaceTop(NONEMPTY_DOCUMENT)").
expr(json_writer_1_expr67, method_invocation, json_writer_1_stmt41, expression, range(json_writer_1, 18342, 26, 632, 632), "replaceTop(NONEMPTY_ARRAY)").
expr(json_writer_1_expr68, method_invocation, json_writer_1_stmt42, expression, range(json_writer_1, 18376, 9, 633, 633), "newline()").
expr(json_writer_1_expr69, method_invocation, json_writer_1_stmt44, expression, range(json_writer_1, 18452, 15, 637, 637), "out.append(',')").
expr(json_writer_1_expr70, method_invocation, json_writer_1_stmt45, expression, range(json_writer_1, 18475, 9, 638, 638), "newline()").
%json_writer_test_1 - com.google.gson.stream.JsonWriterTest
expr(json_writer_test_1_expr1, class_instance_creation, json_writer_test_1_code8, initializer, range(json_writer_test_1, 8850, 18, 287, 287), "new StringWriter()").
expr(json_writer_test_1_expr2, class_instance_creation, json_writer_test_1_code11, initializer, range(json_writer_test_1, 8898, 28, 288, 288), "new JsonWriter(stringWriter)").
expr(json_writer_test_1_expr3, method_invocation, json_writer_test_1_stmt3, expression, range(json_writer_test_1, 8932, 23, 289, 289), "jsonWriter.beginArray()").
expr(json_writer_test_1_expr4, method_invocation, json_writer_test_1_stmt4, expression, range(json_writer_test_1, 8961, 32, 290, 290), "jsonWriter.value((Boolean)true)").
expr(json_writer_test_1_expr5, cast_expression, json_writer_test_1_expr4, (arguments, 0), range(json_writer_test_1, 8978, 14, 290, 290), "(Boolean)true").
expr(json_writer_test_1_expr6, method_invocation, json_writer_test_1_stmt5, expression, range(json_writer_test_1, 8999, 33, 291, 291), "jsonWriter.value((Boolean)false)").
expr(json_writer_test_1_expr7, cast_expression, json_writer_test_1_expr6, (arguments, 0), range(json_writer_test_1, 9016, 15, 291, 291), "(Boolean)false").
expr(json_writer_test_1_expr8, method_invocation, json_writer_test_1_stmt6, expression, range(json_writer_test_1, 9038, 32, 292, 292), "jsonWriter.value((Boolean)null)").
expr(json_writer_test_1_expr9, cast_expression, json_writer_test_1_expr8, (arguments, 0), range(json_writer_test_1, 9055, 14, 292, 292), "(Boolean)null").

%%% Names
%json_writer_1 - com.google.gson.stream.JsonWriter
name(f_replacement_chars_1, simple_name, json_writer_1_expr1, left_hand_side, range(json_writer_1, 5484, 17, 145, 145), 'REPLACEMENT_CHARS').
name(v_i_2, simple_name, json_writer_1_code8, name, range(json_writer_1, 5534, 1, 146, 146), 'i').
name(v_i_2, simple_name, json_writer_1_expr4, left_operand, range(json_writer_1, 5541, 1, 146, 146), 'i').
name(v_i_2, simple_name, json_writer_1_expr5, operand, range(json_writer_1, 5552, 1, 146, 146), 'i').
name(f_replacement_chars_1, simple_name, json_writer_1_expr7, array, range(json_writer_1, 5565, 17, 147, 147), 'REPLACEMENT_CHARS').
name(v_i_2, simple_name, json_writer_1_expr7, index, range(json_writer_1, 5583, 1, 147, 147), 'i').
name(t_string_1, simple_name, json_writer_1_expr8, expression, range(json_writer_1, 5588, 6, 147, 147), 'String').
name(m_format_1, simple_name, json_writer_1_expr8, name, range(json_writer_1, 5595, 6, 147, 147), 'format').
name(v_i_2, simple_name, json_writer_1_expr9, expression, range(json_writer_1, 5619, 1, 147, 147), 'i').
name(f_replacement_chars_1, simple_name, json_writer_1_expr11, array, range(json_writer_1, 5633, 17, 149, 149), 'REPLACEMENT_CHARS').
name(f_replacement_chars_1, simple_name, json_writer_1_expr13, array, range(json_writer_1, 5670, 17, 150, 150), 'REPLACEMENT_CHARS').
name(f_replacement_chars_1, simple_name, json_writer_1_expr15, array, range(json_writer_1, 5708, 17, 151, 151), 'REPLACEMENT_CHARS').
name(f_replacement_chars_1, simple_name, json_writer_1_expr17, array, range(json_writer_1, 5745, 17, 152, 152), 'REPLACEMENT_CHARS').
name(f_replacement_chars_1, simple_name, json_writer_1_expr19, array, range(json_writer_1, 5782, 17, 153, 153), 'REPLACEMENT_CHARS').
name(f_replacement_chars_1, simple_name, json_writer_1_expr21, array, range(json_writer_1, 5819, 17, 154, 154), 'REPLACEMENT_CHARS').
name(f_replacement_chars_1, simple_name, json_writer_1_expr23, array, range(json_writer_1, 5856, 17, 155, 155), 'REPLACEMENT_CHARS').
name(f_html_safe_replacement_chars_3, simple_name, json_writer_1_expr24, left_hand_side, range(json_writer_1, 5893, 27, 156, 156), 'HTML_SAFE_REPLACEMENT_CHARS').
name(f_replacement_chars_1, simple_name, json_writer_1_expr25, expression, range(json_writer_1, 5923, 17, 156, 156), 'REPLACEMENT_CHARS').
name(m_clone_2, simple_name, json_writer_1_expr25, name, range(json_writer_1, 5941, 5, 156, 156), 'clone').
name(f_html_safe_replacement_chars_3, simple_name, json_writer_1_expr27, array, range(json_writer_1, 5954, 27, 157, 157), 'HTML_SAFE_REPLACEMENT_CHARS').
name(f_html_safe_replacement_chars_3, simple_name, json_writer_1_expr29, array, range(json_writer_1, 6004, 27, 158, 158), 'HTML_SAFE_REPLACEMENT_CHARS').
name(f_html_safe_replacement_chars_3, simple_name, json_writer_1_expr31, array, range(json_writer_1, 6054, 27, 159, 159), 'HTML_SAFE_REPLACEMENT_CHARS').
name(f_html_safe_replacement_chars_3, simple_name, json_writer_1_expr33, array, range(json_writer_1, 6104, 27, 160, 160), 'HTML_SAFE_REPLACEMENT_CHARS').
name(f_html_safe_replacement_chars_3, simple_name, json_writer_1_expr35, array, range(json_writer_1, 6154, 27, 161, 161), 'HTML_SAFE_REPLACEMENT_CHARS').
name(f_stack_4, simple_name, json_writer_1_code15, name, range(json_writer_1, 6327, 5, 167, 167), 'stack').
name(f_stack_size_5, simple_name, json_writer_1_code22, name, range(json_writer_1, 6362, 9, 168, 168), 'stackSize').
name(m_push_3, simple_name, json_writer_1_expr37, name, range(json_writer_1, 6385, 4, 170, 170), 'push').
name(f_empty_document_6, simple_name, json_writer_1_expr37, (arguments, 0), range(json_writer_1, 6390, 14, 170, 170), 'EMPTY_DOCUMENT').
name(f_separator_7, simple_name, json_writer_1_code27, name, range(json_writer_1, 6648, 9, 182, 182), 'separator').
name(f_serialize_nulls_8, simple_name, json_writer_1_code31, name, range(json_writer_1, 6773, 14, 190, 190), 'serializeNulls').
name(m_json_writer_4, simple_name, json_writer_1_code32, name, range(json_writer_1, 7035, 10, 197, 197), 'JsonWriter').
name(p_out_9, simple_name, json_writer_1_code34, name, range(json_writer_1, 7053, 3, 197, 197), 'out').
name(p_out_9, simple_name, json_writer_1_expr38, left_operand, range(json_writer_1, 7068, 3, 198, 198), 'out').
name(f_out_10, simple_name, json_writer_1_expr40, name, range(json_writer_1, 7151, 3, 201, 201), 'out').
name(p_out_9, simple_name, json_writer_1_expr39, right_hand_side, range(json_writer_1, 7157, 3, 201, 201), 'out').
name(m_write_deferred_name_13, simple_name, json_writer_1_expr42, name, range(json_writer_1, 9757, 17, 287, 287), 'writeDeferredName').
name(m_open_14, simple_name, json_writer_1_expr43, name, range(json_writer_1, 9789, 4, 288, 288), 'open').
name(f_empty_array_15, simple_name, json_writer_1_expr43, (arguments, 0), range(json_writer_1, 9794, 11, 288, 288), 'EMPTY_ARRAY').
name(m_before_value_18, simple_name, json_writer_1_expr44, name, range(json_writer_1, 10665, 11, 325, 325), 'beforeValue').
name(m_push_3, simple_name, json_writer_1_expr45, name, range(json_writer_1, 10684, 4, 326, 326), 'push').
name(p_empty_16, simple_name, json_writer_1_expr45, (arguments, 0), range(json_writer_1, 10689, 5, 326, 326), 'empty').
name(f_out_10, simple_name, json_writer_1_expr46, expression, range(json_writer_1, 10701, 3, 327, 327), 'out').
name(m_write_19, simple_name, json_writer_1_expr46, name, range(json_writer_1, 10705, 5, 327, 327), 'write').
name(p_open_bracket_17, simple_name, json_writer_1_expr46, (arguments, 0), range(json_writer_1, 10711, 11, 327, 327), 'openBracket').
name(f_stack_size_5, simple_name, json_writer_1_expr48, left_operand, range(json_writer_1, 11373, 9, 354, 354), 'stackSize').
name(f_stack_4, simple_name, q_length_1, qualifier, range(json_writer_1, 11386, 5, 354, 354), 'stack').
name(q_length_1, qualified_name, json_writer_1_expr48, right_operand, range(json_writer_1, 11386, 12, 354, 354), 'stack.length').
name(f_stack_4, simple_name, json_writer_1_expr50, array, range(json_writer_1, 11541, 5, 359, 359), 'stack').
name(f_stack_size_5, simple_name, json_writer_1_expr51, operand, range(json_writer_1, 11547, 9, 359, 359), 'stackSize').
name(p_new_top_21, simple_name, json_writer_1_expr49, right_hand_side, range(json_writer_1, 11562, 6, 359, 359), 'newTop').
name(f_stack_size_5, simple_name, json_writer_1_expr52, left_operand, range(json_writer_1, 11666, 9, 366, 366), 'stackSize').
name(f_stack_4, simple_name, json_writer_1_expr53, array, range(json_writer_1, 11765, 5, 369, 369), 'stack').
name(f_stack_size_5, simple_name, json_writer_1_expr54, left_operand, range(json_writer_1, 11771, 9, 369, 369), 'stackSize').
name(f_stack_4, simple_name, json_writer_1_expr56, array, range(json_writer_1, 11921, 5, 376, 376), 'stack').
name(f_stack_size_5, simple_name, json_writer_1_expr57, left_operand, range(json_writer_1, 11927, 9, 376, 376), 'stackSize').
name(p_top_of_stack_22, simple_name, json_writer_1_expr55, right_hand_side, range(json_writer_1, 11944, 10, 376, 376), 'topOfStack').
name(f_deferred_name_24, simple_name, json_writer_1_expr58, left_operand, range(json_writer_1, 12534, 12, 400, 400), 'deferredName').
name(m_write_deferred_name_13, simple_name, json_writer_1_expr59, name, range(json_writer_1, 13934, 17, 465, 465), 'writeDeferredName').
name(m_before_value_18, simple_name, json_writer_1_expr60, name, range(json_writer_1, 13959, 11, 466, 466), 'beforeValue').
name(f_out_10, simple_name, json_writer_1_expr61, expression, range(json_writer_1, 13978, 3, 467, 467), 'out').
name(m_write_19, simple_name, json_writer_1_expr61, name, range(json_writer_1, 13982, 5, 467, 467), 'write').
name(p_value_27, simple_name, json_writer_1_expr62, expression, range(json_writer_1, 13988, 5, 467, 467), 'value').
name(f_indent_32, simple_name, json_writer_1_expr64, left_operand, range(json_writer_1, 17085, 6, 588, 588), 'indent').
name(m_peek_21, simple_name, json_writer_1_expr65, name, range(json_writer_1, 18011, 4, 620, 620), 'peek').
name(m_replace_top_22, simple_name, json_writer_1_expr66, name, range(json_writer_1, 18251, 10, 628, 628), 'replaceTop').
name(f_nonempty_document_33, simple_name, json_writer_1_expr66, (arguments, 0), range(json_writer_1, 18262, 17, 628, 628), 'NONEMPTY_DOCUMENT').
name(m_replace_top_22, simple_name, json_writer_1_expr67, name, range(json_writer_1, 18342, 10, 632, 632), 'replaceTop').
name(f_nonempty_array_34, simple_name, json_writer_1_expr67, (arguments, 0), range(json_writer_1, 18353, 14, 632, 632), 'NONEMPTY_ARRAY').
name(m_newline_34, simple_name, json_writer_1_expr68, name, range(json_writer_1, 18376, 7, 633, 633), 'newline').
name(f_out_10, simple_name, json_writer_1_expr69, expression, range(json_writer_1, 18452, 3, 637, 637), 'out').
name(m_append_36, simple_name, json_writer_1_expr69, name, range(json_writer_1, 18456, 6, 637, 637), 'append').
name(m_newline_34, simple_name, json_writer_1_expr70, name, range(json_writer_1, 18475, 7, 638, 638), 'newline').
%json_writer_test_1 - com.google.gson.stream.JsonWriterTest
name(t_json_writer_test_2, simple_name, json_writer_test_1_code2, name, range(json_writer_test_1, 832, 14, 26, 26), 'JsonWriterTest').
name(v_string_writer_35, simple_name, json_writer_test_1_code8, name, range(json_writer_test_1, 8835, 12, 287, 287), 'stringWriter').
name(v_json_writer_36, simple_name, json_writer_test_1_code11, name, range(json_writer_test_1, 8885, 10, 288, 288), 'jsonWriter').
name(v_string_writer_35, simple_name, json_writer_test_1_expr2, (arguments, 0), range(json_writer_test_1, 8913, 12, 288, 288), 'stringWriter').
name(v_json_writer_36, simple_name, json_writer_test_1_expr3, expression, range(json_writer_test_1, 8932, 10, 289, 289), 'jsonWriter').
name(m_begin_array_12, simple_name, json_writer_test_1_expr3, name, range(json_writer_test_1, 8943, 10, 289, 289), 'beginArray').
name(v_json_writer_36, simple_name, json_writer_test_1_expr4, expression, range(json_writer_test_1, 8961, 10, 290, 290), 'jsonWriter').
name(m_value_27, simple_name, json_writer_test_1_expr4, name, range(json_writer_test_1, 8972, 5, 290, 290), 'value').
name(v_json_writer_36, simple_name, json_writer_test_1_expr6, expression, range(json_writer_test_1, 8999, 10, 291, 291), 'jsonWriter').
name(m_value_27, simple_name, json_writer_test_1_expr6, name, range(json_writer_test_1, 9010, 5, 291, 291), 'value').
name(v_json_writer_36, simple_name, json_writer_test_1_expr8, expression, range(json_writer_test_1, 9038, 10, 292, 292), 'jsonWriter').
name(m_value_27, simple_name, json_writer_test_1_expr8, name, range(json_writer_test_1, 9049, 5, 292, 292), 'value').

%%% Literals
%json_writer_1 - com.google.gson.stream.JsonWriter
literal(json_writer_1_literal1, number_literal, json_writer_1_expr2, (dimensions, 0), range(json_writer_1, 5515, 3, 145, 145), 128).
literal(json_writer_1_literal2, number_literal, json_writer_1_code8, initializer, range(json_writer_1, 5538, 1, 146, 146), 0).
literal(json_writer_1_literal3, number_literal, json_writer_1_expr4, right_operand, range(json_writer_1, 5546, 4, 146, 146), 0x1f).
literal(json_writer_1_literal4, string_literal, json_writer_1_expr8, (arguments, 0), range(json_writer_1, 5602, 9, 147, 147), "\\u%04x").
literal(json_writer_1_literal6, character_literal, json_writer_1_expr11, index, range(json_writer_1, 5651, 3, 149, 149), '"').
literal(json_writer_1_literal5, string_literal, json_writer_1_expr10, right_hand_side, range(json_writer_1, 5658, 6, 149, 149), "\\\"").
literal(json_writer_1_literal8, character_literal, json_writer_1_expr13, index, range(json_writer_1, 5688, 4, 150, 150), '\\').
literal(json_writer_1_literal7, string_literal, json_writer_1_expr12, right_hand_side, range(json_writer_1, 5696, 6, 150, 150), "\\\\").
literal(json_writer_1_literal10, character_literal, json_writer_1_expr15, index, range(json_writer_1, 5726, 4, 151, 151), '\t').
literal(json_writer_1_literal9, string_literal, json_writer_1_expr14, right_hand_side, range(json_writer_1, 5734, 5, 151, 151), "\\t").
literal(json_writer_1_literal12, character_literal, json_writer_1_expr17, index, range(json_writer_1, 5763, 4, 152, 152), '\b').
literal(json_writer_1_literal11, string_literal, json_writer_1_expr16, right_hand_side, range(json_writer_1, 5771, 5, 152, 152), "\\b").
literal(json_writer_1_literal14, character_literal, json_writer_1_expr19, index, range(json_writer_1, 5800, 4, 153, 153), '\n').
literal(json_writer_1_literal13, string_literal, json_writer_1_expr18, right_hand_side, range(json_writer_1, 5808, 5, 153, 153), "\\n").
literal(json_writer_1_literal16, character_literal, json_writer_1_expr21, index, range(json_writer_1, 5837, 4, 154, 154), '\r').
literal(json_writer_1_literal15, string_literal, json_writer_1_expr20, right_hand_side, range(json_writer_1, 5845, 5, 154, 154), "\\r").
literal(json_writer_1_literal18, character_literal, json_writer_1_expr23, index, range(json_writer_1, 5874, 4, 155, 155), '\f').
literal(json_writer_1_literal17, string_literal, json_writer_1_expr22, right_hand_side, range(json_writer_1, 5882, 5, 155, 155), "\\f").
literal(json_writer_1_literal20, character_literal, json_writer_1_expr27, index, range(json_writer_1, 5982, 3, 157, 157), '<').
literal(json_writer_1_literal19, string_literal, json_writer_1_expr26, right_hand_side, range(json_writer_1, 5989, 9, 157, 157), "\\u003c").
literal(json_writer_1_literal22, character_literal, json_writer_1_expr29, index, range(json_writer_1, 6032, 3, 158, 158), '>').
literal(json_writer_1_literal21, string_literal, json_writer_1_expr28, right_hand_side, range(json_writer_1, 6039, 9, 158, 158), "\\u003e").
literal(json_writer_1_literal24, character_literal, json_writer_1_expr31, index, range(json_writer_1, 6082, 3, 159, 159), '&').
literal(json_writer_1_literal23, string_literal, json_writer_1_expr30, right_hand_side, range(json_writer_1, 6089, 9, 159, 159), "\\u0026").
literal(json_writer_1_literal26, character_literal, json_writer_1_expr33, index, range(json_writer_1, 6132, 3, 160, 160), '=').
literal(json_writer_1_literal25, string_literal, json_writer_1_expr32, right_hand_side, range(json_writer_1, 6139, 9, 160, 160), "\\u003d").
literal(json_writer_1_literal28, character_literal, json_writer_1_expr35, index, range(json_writer_1, 6182, 4, 161, 161), '\'').
literal(json_writer_1_literal27, string_literal, json_writer_1_expr34, right_hand_side, range(json_writer_1, 6190, 9, 161, 161), "\\u0027").
literal(json_writer_1_literal29, number_literal, json_writer_1_expr36, (dimensions, 0), range(json_writer_1, 6343, 2, 167, 167), 32).
literal(json_writer_1_literal30, number_literal, json_writer_1_code22, initializer, range(json_writer_1, 6374, 1, 168, 168), 0).
literal(json_writer_1_literal31, string_literal, json_writer_1_code27, initializer, range(json_writer_1, 6660, 3, 182, 182), ":").
literal(json_writer_1_literal32, boolean_literal, json_writer_1_code31, initializer, range(json_writer_1, 6790, 4, 190, 190), true).
literal(json_writer_1_literal33, null_literal, json_writer_1_expr38, right_operand, range(json_writer_1, 7075, 4, 198, 198), null).
literal(json_writer_1_literal34, string_literal, json_writer_1_expr43, (arguments, 1), range(json_writer_1, 9807, 3, 288, 288), "[").
literal(json_writer_1_literal35, number_literal, json_writer_1_expr52, right_operand, range(json_writer_1, 11679, 1, 366, 366), 0).
literal(json_writer_1_literal36, number_literal, json_writer_1_expr54, right_operand, range(json_writer_1, 11783, 1, 369, 369), 1).
literal(json_writer_1_literal37, number_literal, json_writer_1_expr57, right_operand, range(json_writer_1, 11939, 1, 376, 376), 1).
literal(json_writer_1_literal38, null_literal, json_writer_1_expr58, right_operand, range(json_writer_1, 12550, 4, 400, 400), null).
literal(json_writer_1_literal39, string_literal, json_writer_1_expr62, then_expression, range(json_writer_1, 13996, 6, 467, 467), "true").
literal(json_writer_1_literal40, string_literal, json_writer_1_expr62, else_expression, range(json_writer_1, 14005, 7, 467, 467), "false").
literal(json_writer_1_literal41, null_literal, json_writer_1_expr64, right_operand, range(json_writer_1, 17095, 4, 588, 588), null).
literal(json_writer_1_literal42, character_literal, json_writer_1_expr69, (arguments, 0), range(json_writer_1, 18463, 3, 637, 637), ',').
%json_writer_test_1 - com.google.gson.stream.JsonWriterTest
literal(json_writer_test_1_literal1, boolean_literal, json_writer_test_1_expr5, expression, range(json_writer_test_1, 8988, 4, 290, 290), true).
literal(json_writer_test_1_literal2, boolean_literal, json_writer_test_1_expr7, expression, range(json_writer_test_1, 9026, 5, 291, 291), false).
literal(json_writer_test_1_literal3, null_literal, json_writer_test_1_expr9, expression, range(json_writer_test_1, 9065, 4, 292, 292), null).

%%% Other Code Entities
%json_writer_1 - com.google.gson.stream.JsonWriter
code(json_writer_1_code1, compilation_unit, range(json_writer_1, 0, 18704, 1, -1)).
code(json_writer_1_code2, type_declaration, json_writer_1_code1, (types, 0), range(json_writer_1, 1178, 17525, 32, 650)).
code(json_writer_1_code3, initializer, json_writer_1_code2, (body_declarations, 2), range(json_writer_1, 5471, 733, 144, 162)).
code(json_writer_1_code4, array_type, json_writer_1_expr2, type, range(json_writer_1, 5508, 11, 145, 145)).
code(json_writer_1_code5, simple_type, json_writer_1_code4, element_type, range(json_writer_1, 5508, 6, 145, 145)).
code(json_writer_1_code6, dimension, json_writer_1_code4, (dimensions, 0), range(json_writer_1, 5514, 5, 145, 145)).
code(json_writer_1_code7, primitive_type, json_writer_1_expr3, type, range(json_writer_1, 5530, 3, 146, 146)).
code(json_writer_1_code8, variable_declaration_fragment, json_writer_1_expr3, (fragments, 0), range(json_writer_1, 5534, 5, 146, 146)).
code(json_writer_1_code9, primitive_type, json_writer_1_expr9, type, range(json_writer_1, 5614, 3, 147, 147)).
code(json_writer_1_code10, field_declaration, json_writer_1_code2, (body_declarations, 4), range(json_writer_1, 6313, 34, 167, 167)).
code(json_writer_1_code11, modifier, json_writer_1_code10, (modifiers, 0), range(json_writer_1, 6313, 7, 167, 167)).
code(json_writer_1_code12, array_type, json_writer_1_code10, type, range(json_writer_1, 6321, 5, 167, 167)).
code(json_writer_1_code13, primitive_type, json_writer_1_code12, element_type, range(json_writer_1, 6321, 3, 167, 167)).
code(json_writer_1_code14, dimension, json_writer_1_code12, (dimensions, 0), range(json_writer_1, 6324, 2, 167, 167)).
code(json_writer_1_code15, variable_declaration_fragment, json_writer_1_code10, (fragments, 0), range(json_writer_1, 6327, 19, 167, 167)).
code(json_writer_1_code17, primitive_type, json_writer_1_code16, element_type, range(json_writer_1, 6339, 3, 167, 167)).
code(json_writer_1_code16, array_type, json_writer_1_expr36, type, range(json_writer_1, 6339, 7, 167, 167)).
code(json_writer_1_code18, dimension, json_writer_1_code16, (dimensions, 0), range(json_writer_1, 6342, 4, 167, 167)).
code(json_writer_1_code20, modifier, json_writer_1_code19, (modifiers, 0), range(json_writer_1, 6350, 7, 168, 168)).
code(json_writer_1_code19, field_declaration, json_writer_1_code2, (body_declarations, 5), range(json_writer_1, 6350, 26, 168, 168)).
code(json_writer_1_code21, primitive_type, json_writer_1_code19, type, range(json_writer_1, 6358, 3, 168, 168)).
code(json_writer_1_code22, variable_declaration_fragment, json_writer_1_code19, (fragments, 0), range(json_writer_1, 6362, 13, 168, 168)).
code(json_writer_1_code23, initializer, json_writer_1_code2, (body_declarations, 6), range(json_writer_1, 6379, 31, 169, 171)).
code(json_writer_1_code24, field_declaration, json_writer_1_code2, (body_declarations, 8), range(json_writer_1, 6570, 94, 179, 182)).
code(json_writer_1_code25, modifier, json_writer_1_code24, (modifiers, 0), range(json_writer_1, 6633, 7, 182, 182)).
code(json_writer_1_code26, simple_type, json_writer_1_code24, type, range(json_writer_1, 6641, 6, 182, 182)).
code(json_writer_1_code27, variable_declaration_fragment, json_writer_1_code24, (fragments, 0), range(json_writer_1, 6648, 15, 182, 182)).
code(json_writer_1_code28, field_declaration, json_writer_1_code2, (body_declarations, 12), range(json_writer_1, 6757, 38, 190, 190)).
code(json_writer_1_code29, modifier, json_writer_1_code28, (modifiers, 0), range(json_writer_1, 6757, 7, 190, 190)).
code(json_writer_1_code30, primitive_type, json_writer_1_code28, type, range(json_writer_1, 6765, 7, 190, 190)).
code(json_writer_1_code31, variable_declaration_fragment, json_writer_1_code28, (fragments, 0), range(json_writer_1, 6773, 21, 190, 190)).
code(json_writer_1_code32, method_declaration, json_writer_1_code2, (body_declarations, 13), range(json_writer_1, 6799, 366, 192, 202)).
code(json_writer_1_code33, modifier, json_writer_1_code32, (modifiers, 0), range(json_writer_1, 7028, 6, 197, 197)).
code(json_writer_1_code35, simple_type, json_writer_1_code34, type, range(json_writer_1, 7046, 6, 197, 197)).
code(json_writer_1_code34, single_variable_declaration, json_writer_1_code32, (parameters, 0), range(json_writer_1, 7046, 10, 197, 197)).
code(json_writer_1_code36, method_declaration, json_writer_1_code2, (body_declarations, 21), range(json_writer_1, 9545, 271, 280, 289)).
code(json_writer_1_code37, method_declaration, json_writer_1_code2, (body_declarations, 25), range(json_writer_1, 10483, 262, 320, 329)).
code(json_writer_1_code38, method_declaration, json_writer_1_code2, (body_declarations, 27), range(json_writer_1, 11333, 240, 353, 360)).
code(json_writer_1_code39, method_declaration, json_writer_1_code2, (body_declarations, 28), range(json_writer_1, 11577, 213, 362, 370)).
code(json_writer_1_code40, method_declaration, json_writer_1_code2, (body_declarations, 29), range(json_writer_1, 11794, 165, 372, 377)).
code(json_writer_1_code41, method_declaration, json_writer_1_code2, (body_declarations, 31), range(json_writer_1, 12472, 170, 399, 405)).
code(json_writer_1_code42, method_declaration, json_writer_1_code2, (body_declarations, 35), range(json_writer_1, 13799, 236, 459, 469)).
code(json_writer_1_code43, method_declaration, json_writer_1_code2, (body_declarations, 42), range(json_writer_1, 17033, 201, 587, 596)).
code(json_writer_1_code44, method_declaration, json_writer_1_code2, (body_declarations, 44), range(json_writer_1, 17707, 994, 613, 649)).
%json_writer_test_1 - com.google.gson.stream.JsonWriterTest
code(json_writer_test_1_code1, compilation_unit, range(json_writer_test_1, 0, 18960, 1, -1)).
code(json_writer_test_1_code2, type_declaration, json_writer_test_1_code1, (types, 0), range(json_writer_test_1, 783, 18176, 25, 623)).
code(json_writer_test_1_code3, modifier, json_writer_test_1_code2, (modifiers, 1), range(json_writer_test_1, 813, 6, 26, 26)).
code(json_writer_test_1_code4, modifier, json_writer_test_1_code2, (modifiers, 2), range(json_writer_test_1, 820, 5, 26, 26)).
code(json_writer_test_1_code5, simple_type, json_writer_test_1_code2, superclass_type, range(json_writer_test_1, 855, 8, 26, 26)).
code(json_writer_test_1_code6, method_declaration, json_writer_test_1_code2, (body_declarations, 17), range(json_writer_test_1, 8765, 401, 286, 295)).
code(json_writer_test_1_code7, simple_type, json_writer_test_1_stmt1, type, range(json_writer_test_1, 8822, 12, 287, 287)).
code(json_writer_test_1_code8, variable_declaration_fragment, json_writer_test_1_stmt1, (fragments, 0), range(json_writer_test_1, 8835, 33, 287, 287)).
code(json_writer_test_1_code9, simple_type, json_writer_test_1_expr1, type, range(json_writer_test_1, 8854, 12, 287, 287)).
code(json_writer_test_1_code10, simple_type, json_writer_test_1_stmt2, type, range(json_writer_test_1, 8874, 10, 288, 288)).
code(json_writer_test_1_code11, variable_declaration_fragment, json_writer_test_1_stmt2, (fragments, 0), range(json_writer_test_1, 8885, 41, 288, 288)).
code(json_writer_test_1_code12, simple_type, json_writer_test_1_expr2, type, range(json_writer_test_1, 8902, 10, 288, 288)).
code(json_writer_test_1_code13, simple_type, json_writer_test_1_expr5, type, range(json_writer_test_1, 8979, 7, 290, 290)).
code(json_writer_test_1_code14, simple_type, json_writer_test_1_expr7, type, range(json_writer_test_1, 9017, 7, 291, 291)).
code(json_writer_test_1_code15, simple_type, json_writer_test_1_expr9, type, range(json_writer_test_1, 9056, 7, 292, 292)).

%%% Name References

name_ref(t_json_writer_test_2, type, 'JsonWriterTest', 'Lcom/google/gson/stream/JsonWriterTest;').
name_ref(t_string_1, type, 'String', 'Ljava/lang/String;').
name_ref(v_i_2, var, 'i', 'Lcom/google/gson/stream/JsonWriter;#0#i').
name_ref(v_json_writer_36, var, 'jsonWriter', 'Lcom/google/gson/stream/JsonWriterTest;.testBoxedBooleans()V|Ljava/io/IOException;#jsonWriter').
name_ref(v_string_writer_35, var, 'stringWriter', 'Lcom/google/gson/stream/JsonWriterTest;.testBoxedBooleans()V|Ljava/io/IOException;#stringWriter').
name_ref(p_close_bracket_20, param, 'closeBracket', 'Lcom/google/gson/stream/JsonWriter;.close(IILjava/lang/String;)Lcom/google/gson/stream/JsonWriter;|Ljava/io/IOException;#closeBracket#0#2').
name_ref(p_empty_16, param, 'empty', 'Lcom/google/gson/stream/JsonWriter;.open(ILjava/lang/String;)Lcom/google/gson/stream/JsonWriter;|Ljava/io/IOException;#empty#0#0').
name_ref(p_empty_18, param, 'empty', 'Lcom/google/gson/stream/JsonWriter;.close(IILjava/lang/String;)Lcom/google/gson/stream/JsonWriter;|Ljava/io/IOException;#empty#0#0').
name_ref(p_html_safe_13, param, 'htmlSafe', 'Lcom/google/gson/stream/JsonWriter;.setHtmlSafe(Z)V#htmlSafe#0#0').
name_ref(p_indent_11, param, 'indent', 'Lcom/google/gson/stream/JsonWriter;.setIndent(Ljava/lang/String;)V#indent#0#0').
name_ref(p_lenient_12, param, 'lenient', 'Lcom/google/gson/stream/JsonWriter;.setLenient(Z)V#lenient#0#0').
name_ref(p_name_23, param, 'name', 'Lcom/google/gson/stream/JsonWriter;.name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;|Ljava/io/IOException;#name#0#0').
name_ref(p_new_top_21, param, 'newTop', 'Lcom/google/gson/stream/JsonWriter;.push(I)V#newTop#0#0').
name_ref(p_nonempty_19, param, 'nonempty', 'Lcom/google/gson/stream/JsonWriter;.close(IILjava/lang/String;)Lcom/google/gson/stream/JsonWriter;|Ljava/io/IOException;#nonempty#0#1').
name_ref(p_open_bracket_17, param, 'openBracket', 'Lcom/google/gson/stream/JsonWriter;.open(ILjava/lang/String;)Lcom/google/gson/stream/JsonWriter;|Ljava/io/IOException;#openBracket#0#1').
name_ref(p_out_9, param, 'out', 'Lcom/google/gson/stream/JsonWriter;.(Ljava/io/Writer;)V#out#0#0').
name_ref(p_serialize_nulls_14, param, 'serializeNulls', 'Lcom/google/gson/stream/JsonWriter;.setSerializeNulls(Z)V#serializeNulls#0#0').
name_ref(p_top_of_stack_22, param, 'topOfStack', 'Lcom/google/gson/stream/JsonWriter;.replaceTop(I)V#topOfStack#0#0').
name_ref(p_value_25, param, 'value', 'Lcom/google/gson/stream/JsonWriter;.value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;|Ljava/io/IOException;#value#0#0').
name_ref(p_value_26, param, 'value', 'Lcom/google/gson/stream/JsonWriter;.jsonValue(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;|Ljava/io/IOException;#value#0#0').
name_ref(p_value_27, param, 'value', 'Lcom/google/gson/stream/JsonWriter;.value(Z)Lcom/google/gson/stream/JsonWriter;|Ljava/io/IOException;#value#0#0').
name_ref(p_value_28, param, 'value', 'Lcom/google/gson/stream/JsonWriter;.value(D)Lcom/google/gson/stream/JsonWriter;|Ljava/io/IOException;#value#0#0').
name_ref(p_value_29, param, 'value', 'Lcom/google/gson/stream/JsonWriter;.value(J)Lcom/google/gson/stream/JsonWriter;|Ljava/io/IOException;#value#0#0').
name_ref(p_value_30, param, 'value', 'Lcom/google/gson/stream/JsonWriter;.value(Ljava/lang/Number;)Lcom/google/gson/stream/JsonWriter;|Ljava/io/IOException;#value#0#0').
name_ref(p_value_31, param, 'value', 'Lcom/google/gson/stream/JsonWriter;.string(Ljava/lang/String;)V|Ljava/io/IOException;#value#0#0').
name_ref(f_deferred_name_24, field, 'deferredName', 'Lcom/google/gson/stream/JsonWriter;.deferredName)Ljava/lang/String;').
name_ref(f_empty_array_15, field, 'EMPTY_ARRAY', 'Lcom/google/gson/stream/JsonScope;.EMPTY_ARRAY)I').
name_ref(f_empty_document_6, field, 'EMPTY_DOCUMENT', 'Lcom/google/gson/stream/JsonScope;.EMPTY_DOCUMENT)I').
name_ref(f_html_safe_replacement_chars_3, field, 'HTML_SAFE_REPLACEMENT_CHARS', 'Lcom/google/gson/stream/JsonWriter;.HTML_SAFE_REPLACEMENT_CHARS)[Ljava/lang/String;').
name_ref(f_indent_32, field, 'indent', 'Lcom/google/gson/stream/JsonWriter;.indent)Ljava/lang/String;').
name_ref(f_nonempty_array_34, field, 'NONEMPTY_ARRAY', 'Lcom/google/gson/stream/JsonScope;.NONEMPTY_ARRAY)I').
name_ref(f_nonempty_document_33, field, 'NONEMPTY_DOCUMENT', 'Lcom/google/gson/stream/JsonScope;.NONEMPTY_DOCUMENT)I').
name_ref(f_out_10, field, 'out', 'Lcom/google/gson/stream/JsonWriter;.out)Ljava/io/Writer;').
name_ref(f_replacement_chars_1, field, 'REPLACEMENT_CHARS', 'Lcom/google/gson/stream/JsonWriter;.REPLACEMENT_CHARS)[Ljava/lang/String;').
name_ref(f_separator_7, field, 'separator', 'Lcom/google/gson/stream/JsonWriter;.separator)Ljava/lang/String;').
name_ref(f_serialize_nulls_8, field, 'serializeNulls', 'Lcom/google/gson/stream/JsonWriter;.serializeNulls)Z').
name_ref(f_stack_4, field, 'stack', 'Lcom/google/gson/stream/JsonWriter;.stack)[I').
name_ref(f_stack_size_5, field, 'stackSize', 'Lcom/google/gson/stream/JsonWriter;.stackSize)I').
name_ref(m_append_36, method, 'append', 'Ljava/io/Writer;.append(C)Ljava/io/Writer;|Ljava/io/IOException;').
name_ref(m_before_name_35, method, 'beforeName', 'Lcom/google/gson/stream/JsonWriter;.beforeName()V|Ljava/io/IOException;').
name_ref(m_before_value_18, method, 'beforeValue', 'Lcom/google/gson/stream/JsonWriter;.beforeValue()V|Ljava/io/IOException;').
name_ref(m_begin_array_12, method, 'beginArray', 'Lcom/google/gson/stream/JsonWriter;.beginArray()Lcom/google/gson/stream/JsonWriter;|Ljava/io/IOException;').
name_ref(m_begin_object_16, method, 'beginObject', 'Lcom/google/gson/stream/JsonWriter;.beginObject()Lcom/google/gson/stream/JsonWriter;|Ljava/io/IOException;').
name_ref(m_clone_2, method, 'clone', 'Ljava/lang/Object;.clone()[Ljava/lang/String;').
name_ref(m_close_20, method, 'close', 'Lcom/google/gson/stream/JsonWriter;.close(IILjava/lang/String;)Lcom/google/gson/stream/JsonWriter;|Ljava/io/IOException;').
name_ref(m_close_32, method, 'close', 'Lcom/google/gson/stream/JsonWriter;.close()V|Ljava/io/IOException;').
name_ref(m_end_array_15, method, 'endArray', 'Lcom/google/gson/stream/JsonWriter;.endArray()Lcom/google/gson/stream/JsonWriter;|Ljava/io/IOException;').
name_ref(m_end_object_17, method, 'endObject', 'Lcom/google/gson/stream/JsonWriter;.endObject()Lcom/google/gson/stream/JsonWriter;|Ljava/io/IOException;').
name_ref(m_flush_31, method, 'flush', 'Lcom/google/gson/stream/JsonWriter;.flush()V|Ljava/io/IOException;').
name_ref(m_format_1, method, 'format', 'Ljava/lang/String;.format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;').
name_ref(m_get_serialize_nulls_11, method, 'getSerializeNulls', 'Lcom/google/gson/stream/JsonWriter;.getSerializeNulls()Z').
name_ref(m_is_html_safe_9, method, 'isHtmlSafe', 'Lcom/google/gson/stream/JsonWriter;.isHtmlSafe()Z').
name_ref(m_is_lenient_7, method, 'isLenient', 'Lcom/google/gson/stream/JsonWriter;.isLenient()Z').
name_ref(m_json_value_25, method, 'jsonValue', 'Lcom/google/gson/stream/JsonWriter;.jsonValue(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;|Ljava/io/IOException;').
name_ref(m_json_writer_4, method, 'JsonWriter', 'Lcom/google/gson/stream/JsonWriter;.(Ljava/io/Writer;)V').
name_ref(m_name_23, method, 'name', 'Lcom/google/gson/stream/JsonWriter;.name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;|Ljava/io/IOException;').
name_ref(m_newline_34, method, 'newline', 'Lcom/google/gson/stream/JsonWriter;.newline()V|Ljava/io/IOException;').
name_ref(m_null_value_26, method, 'nullValue', 'Lcom/google/gson/stream/JsonWriter;.nullValue()Lcom/google/gson/stream/JsonWriter;|Ljava/io/IOException;').
name_ref(m_open_14, method, 'open', 'Lcom/google/gson/stream/JsonWriter;.open(ILjava/lang/String;)Lcom/google/gson/stream/JsonWriter;|Ljava/io/IOException;').
name_ref(m_peek_21, method, 'peek', 'Lcom/google/gson/stream/JsonWriter;.peek()I').
name_ref(m_push_3, method, 'push', 'Lcom/google/gson/stream/JsonWriter;.push(I)V').
name_ref(m_replace_top_22, method, 'replaceTop', 'Lcom/google/gson/stream/JsonWriter;.replaceTop(I)V').
name_ref(m_set_html_safe_8, method, 'setHtmlSafe', 'Lcom/google/gson/stream/JsonWriter;.setHtmlSafe(Z)V').
name_ref(m_set_indent_5, method, 'setIndent', 'Lcom/google/gson/stream/JsonWriter;.setIndent(Ljava/lang/String;)V').
name_ref(m_set_lenient_6, method, 'setLenient', 'Lcom/google/gson/stream/JsonWriter;.setLenient(Z)V').
name_ref(m_set_serialize_nulls_10, method, 'setSerializeNulls', 'Lcom/google/gson/stream/JsonWriter;.setSerializeNulls(Z)V').
name_ref(m_string_33, method, 'string', 'Lcom/google/gson/stream/JsonWriter;.string(Ljava/lang/String;)V|Ljava/io/IOException;').
name_ref(m_string_writer_55, method, 'StringWriter', 'Ljava/io/StringWriter;.()V').
name_ref(m_test_arrays_in_objects_62, method, 'testArraysInObjects', 'Lcom/google/gson/stream/JsonWriterTest;.testArraysInObjects()V|Ljava/io/IOException;').
name_ref(m_test_bad_nesting_array_44, method, 'testBadNestingArray', 'Lcom/google/gson/stream/JsonWriterTest;.testBadNestingArray()V|Ljava/io/IOException;').
name_ref(m_test_bad_nesting_object_43, method, 'testBadNestingObject', 'Lcom/google/gson/stream/JsonWriterTest;.testBadNestingObject()V|Ljava/io/IOException;').
name_ref(m_test_booleans_53, method, 'testBooleans', 'Lcom/google/gson/stream/JsonWriterTest;.testBooleans()V|Ljava/io/IOException;').
name_ref(m_test_boxed_booleans_54, method, 'testBoxedBooleans', 'Lcom/google/gson/stream/JsonWriterTest;.testBoxedBooleans()V|Ljava/io/IOException;').
name_ref(m_test_closed_writer_throws_on_flush_73, method, 'testClosedWriterThrowsOnFlush', 'Lcom/google/gson/stream/JsonWriterTest;.testClosedWriterThrowsOnFlush()V|Ljava/io/IOException;').
name_ref(m_test_closed_writer_throws_on_name_71, method, 'testClosedWriterThrowsOnName', 'Lcom/google/gson/stream/JsonWriterTest;.testClosedWriterThrowsOnName()V|Ljava/io/IOException;').
name_ref(m_test_closed_writer_throws_on_structure_70, method, 'testClosedWriterThrowsOnStructure', 'Lcom/google/gson/stream/JsonWriterTest;.testClosedWriterThrowsOnStructure()V|Ljava/io/IOException;').
name_ref(m_test_closed_writer_throws_on_value_72, method, 'testClosedWriterThrowsOnValue', 'Lcom/google/gson/stream/JsonWriterTest;.testClosedWriterThrowsOnValue()V|Ljava/io/IOException;').
name_ref(m_test_deep_nesting_arrays_63, method, 'testDeepNestingArrays', 'Lcom/google/gson/stream/JsonWriterTest;.testDeepNestingArrays()V|Ljava/io/IOException;').
name_ref(m_test_deep_nesting_objects_64, method, 'testDeepNestingObjects', 'Lcom/google/gson/stream/JsonWriterTest;.testDeepNestingObjects()V|Ljava/io/IOException;').
name_ref(m_test_doubles_50, method, 'testDoubles', 'Lcom/google/gson/stream/JsonWriterTest;.testDoubles()V|Ljava/io/IOException;').
name_ref(m_test_empty_array_59, method, 'testEmptyArray', 'Lcom/google/gson/stream/JsonWriterTest;.testEmptyArray()V|Ljava/io/IOException;').
name_ref(m_test_empty_object_60, method, 'testEmptyObject', 'Lcom/google/gson/stream/JsonWriterTest;.testEmptyObject()V|Ljava/io/IOException;').
name_ref(m_test_invalid_top_level_types_38, method, 'testInvalidTopLevelTypes', 'Lcom/google/gson/stream/JsonWriterTest;.testInvalidTopLevelTypes()V|Ljava/io/IOException;').
name_ref(m_test_json_value_47, method, 'testJsonValue', 'Lcom/google/gson/stream/JsonWriterTest;.testJsonValue()V|Ljava/io/IOException;').
name_ref(m_test_lenient_writer_permits_multiple_top_level_values_68, method, 'testLenientWriterPermitsMultipleTopLevelValues', 'Lcom/google/gson/stream/JsonWriterTest;.testLenientWriterPermitsMultipleTopLevelValues()V|Ljava/io/IOException;').
name_ref(m_test_longs_51, method, 'testLongs', 'Lcom/google/gson/stream/JsonWriterTest;.testLongs()V|Ljava/io/IOException;').
name_ref(m_test_multiple_top_level_values_42, method, 'testMultipleTopLevelValues', 'Lcom/google/gson/stream/JsonWriterTest;.testMultipleTopLevelValues()V|Ljava/io/IOException;').
name_ref(m_test_name_without_value_40, method, 'testNameWithoutValue', 'Lcom/google/gson/stream/JsonWriterTest;.testNameWithoutValue()V|Ljava/io/IOException;').
name_ref(m_test_non_finite_boxed_doubles_49, method, 'testNonFiniteBoxedDoubles', 'Lcom/google/gson/stream/JsonWriterTest;.testNonFiniteBoxedDoubles()V|Ljava/io/IOException;').
name_ref(m_test_non_finite_doubles_48, method, 'testNonFiniteDoubles', 'Lcom/google/gson/stream/JsonWriterTest;.testNonFiniteDoubles()V|Ljava/io/IOException;').
name_ref(m_test_null_name_45, method, 'testNullName', 'Lcom/google/gson/stream/JsonWriterTest;.testNullName()V|Ljava/io/IOException;').
name_ref(m_test_null_string_value_46, method, 'testNullStringValue', 'Lcom/google/gson/stream/JsonWriterTest;.testNullStringValue()V|Ljava/io/IOException;').
name_ref(m_test_nulls_56, method, 'testNulls', 'Lcom/google/gson/stream/JsonWriterTest;.testNulls()V|Ljava/io/IOException;').
name_ref(m_test_numbers_52, method, 'testNumbers', 'Lcom/google/gson/stream/JsonWriterTest;.testNumbers()V|Ljava/io/IOException;').
name_ref(m_test_objects_in_arrays_61, method, 'testObjectsInArrays', 'Lcom/google/gson/stream/JsonWriterTest;.testObjectsInArrays()V|Ljava/io/IOException;').
name_ref(m_test_pretty_print_array_67, method, 'testPrettyPrintArray', 'Lcom/google/gson/stream/JsonWriterTest;.testPrettyPrintArray()V|Ljava/io/IOException;').
name_ref(m_test_pretty_print_object_66, method, 'testPrettyPrintObject', 'Lcom/google/gson/stream/JsonWriterTest;.testPrettyPrintObject()V|Ljava/io/IOException;').
name_ref(m_test_repeated_name_65, method, 'testRepeatedName', 'Lcom/google/gson/stream/JsonWriterTest;.testRepeatedName()V|Ljava/io/IOException;').
name_ref(m_test_strict_writer_does_not_permit_multiple_top_level_values_69, method, 'testStrictWriterDoesNotPermitMultipleTopLevelValues', 'Lcom/google/gson/stream/JsonWriterTest;.testStrictWriterDoesNotPermitMultipleTopLevelValues()V|Ljava/io/IOException;').
name_ref(m_test_strings_57, method, 'testStrings', 'Lcom/google/gson/stream/JsonWriterTest;.testStrings()V|Ljava/io/IOException;').
name_ref(m_test_top_level_value_types_37, method, 'testTopLevelValueTypes', 'Lcom/google/gson/stream/JsonWriterTest;.testTopLevelValueTypes()V|Ljava/io/IOException;').
name_ref(m_test_two_names_39, method, 'testTwoNames', 'Lcom/google/gson/stream/JsonWriterTest;.testTwoNames()V|Ljava/io/IOException;').
name_ref(m_test_unicode_line_breaks_escaped_58, method, 'testUnicodeLineBreaksEscaped', 'Lcom/google/gson/stream/JsonWriterTest;.testUnicodeLineBreaksEscaped()V|Ljava/io/IOException;').
name_ref(m_test_value_without_name_41, method, 'testValueWithoutName', 'Lcom/google/gson/stream/JsonWriterTest;.testValueWithoutName()V|Ljava/io/IOException;').
name_ref(m_test_writer_close_is_idempotent_74, method, 'testWriterCloseIsIdempotent', 'Lcom/google/gson/stream/JsonWriterTest;.testWriterCloseIsIdempotent()V|Ljava/io/IOException;').
name_ref(m_value_24, method, 'value', 'Lcom/google/gson/stream/JsonWriter;.value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;|Ljava/io/IOException;').
name_ref(m_value_27, method, 'value', 'Lcom/google/gson/stream/JsonWriter;.value(Z)Lcom/google/gson/stream/JsonWriter;|Ljava/io/IOException;').
name_ref(m_value_28, method, 'value', 'Lcom/google/gson/stream/JsonWriter;.value(D)Lcom/google/gson/stream/JsonWriter;|Ljava/io/IOException;').
name_ref(m_value_29, method, 'value', 'Lcom/google/gson/stream/JsonWriter;.value(J)Lcom/google/gson/stream/JsonWriter;|Ljava/io/IOException;').
name_ref(m_value_30, method, 'value', 'Lcom/google/gson/stream/JsonWriter;.value(Ljava/lang/Number;)Lcom/google/gson/stream/JsonWriter;|Ljava/io/IOException;').
name_ref(m_write_19, method, 'write', 'Ljava/io/Writer;.write(Ljava/lang/String;)V|Ljava/io/IOException;').
name_ref(m_write_deferred_name_13, method, 'writeDeferredName', 'Lcom/google/gson/stream/JsonWriter;.writeDeferredName()V|Ljava/io/IOException;').
name_ref(q_length_1, q_name, 'stack.length', 'Lcom/google/gson/stream/JsonWriter;.stack)[I:.length)I').

%%% End of Code Facts

