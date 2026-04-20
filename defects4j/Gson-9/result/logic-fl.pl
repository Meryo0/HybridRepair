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
throw(m_before_name_35, ioexception).
throw(m_before_value_18, ioexception).
method_invoc(json_writer_1_expr59, m_peek_21, line(json_writer_1, 620)).
method_invoc(json_writer_1_expr60, m_replace_top_22, line(json_writer_1, 628)).
argument(f_nonempty_document_32, 1, json_writer_1_expr60).

%json_writer_test_1 - com.google.gson.stream.JsonWriterTest
throw(m_test_top_level_value_types_36, ioexception).
throw(m_test_invalid_top_level_types_37, ioexception).
throw(m_test_two_names_38, ioexception).
throw(m_test_name_without_value_39, ioexception).
throw(m_test_value_without_name_40, ioexception).
throw(m_test_multiple_top_level_values_41, ioexception).
throw(m_test_bad_nesting_object_42, ioexception).
throw(m_test_bad_nesting_array_43, ioexception).
throw(m_test_null_name_44, ioexception).
throw(m_test_null_string_value_45, ioexception).
throw(m_test_json_value_46, ioexception).
throw(m_test_non_finite_doubles_47, ioexception).
throw(m_test_non_finite_boxed_doubles_48, ioexception).
throw(m_test_doubles_49, ioexception).
throw(m_test_longs_50, ioexception).
throw(m_test_numbers_51, ioexception).
throw(m_test_booleans_52, ioexception).
throw(m_test_boxed_booleans_53, ioexception).
assign(v_string_writer_33, json_writer_test_1_expr1, line(json_writer_test_1, 287)).
method_invoc(json_writer_test_1_expr1, m_string_writer_54, line(json_writer_test_1, 287)).
assign(v_json_writer_34, json_writer_test_1_expr2, line(json_writer_test_1, 288)).
method_invoc(json_writer_test_1_expr2, m_json_writer_4, line(json_writer_test_1, 288)).
argument(v_string_writer_33, 1, json_writer_test_1_expr2).
method_invoc(json_writer_test_1_expr3, m_begin_array_12, line(json_writer_test_1, 289)).
throw(json_writer_test_1_expr3, ioexception, line(json_writer_test_1, 289)).
ref(v_json_writer_34, json_writer_test_1_expr3, line(json_writer_test_1, 289)).
throw(m_test_nulls_55, ioexception).
throw(m_test_strings_56, ioexception).
throw(m_test_unicode_line_breaks_escaped_57, ioexception).
throw(m_test_empty_array_58, ioexception).
throw(m_test_empty_object_59, ioexception).
throw(m_test_objects_in_arrays_60, ioexception).
throw(m_test_arrays_in_objects_61, ioexception).
throw(m_test_deep_nesting_arrays_62, ioexception).
throw(m_test_deep_nesting_objects_63, ioexception).
throw(m_test_repeated_name_64, ioexception).
throw(m_test_pretty_print_object_65, ioexception).
throw(m_test_pretty_print_array_66, ioexception).
throw(m_test_lenient_writer_permits_multiple_top_level_values_67, ioexception).
throw(m_test_strict_writer_does_not_permit_multiple_top_level_values_68, ioexception).
throw(m_test_closed_writer_throws_on_structure_69, ioexception).
throw(m_test_closed_writer_throws_on_name_70, ioexception).
throw(m_test_closed_writer_throws_on_value_71, ioexception).
throw(m_test_closed_writer_throws_on_flush_72, ioexception).
throw(m_test_writer_close_is_idempotent_73, ioexception).


% Stack Trace Info.
test_failure(failure_1, 'com.google.gson.stream.JsonWriterTest', 'testBoxedBooleans').



%%% End of Static Facts

%%% Values




%%% End of Facts