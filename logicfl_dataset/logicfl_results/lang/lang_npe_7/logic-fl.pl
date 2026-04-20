%%% Logic-FL Facts
:- style_check(-discontiguous).

%streams_1 - org.apache.commons.lang3.stream.Streams
param(p_element_type_1, 1, m_array_collector_1).
param(p_stream_2, 1, m_failable_stream_7).
param(p_predicate_3, 1, m_all_match_8).
param(p_predicate_4, 1, m_any_match_9).
param(p_collector_5, 1, m_collect_11).
param(p_pupplier_6, 1, m_collect_12).
param(p_accumulator_7, 2, m_collect_12).
param(p_combiner_8, 3, m_collect_12).
param(p_predicate_9, 1, m_filter_13).
param(p_action_10, 1, m_for_each_14).
param(p_mapper_11, 1, m_map_16).
param(p_identity_12, 1, m_reduce_17).
param(p_accumulator_13, 2, m_reduce_17).
param(p_values_14, 1, m_of_19).
param(p_stream_15, 1, m_stream_20).
return(streams_1_expr1, m_stream_20, line(streams_1, 479)).
method_invoc(streams_1_expr1, m_stream_21, line(streams_1, 479)).
argument(streams_1_expr2, 1, streams_1_expr1).
method_invoc(streams_1_expr2, m_stream_22, line(streams_1, 479)).
ref(p_stream_15, streams_1_expr2, line(streams_1, 479)).
param(p_stream_16, 1, m_stream_21).
param(p_p_element_type_17, 1, m_to_array_23).

%streams_test_1 - org.apache.commons.lang3.stream.StreamsTest
param(p_p_throwable_18, 1, m_as_int_consumer_24).
param(p_p_throwable_19, 1, m_as_int_predicate_25).
param(p_output_20, 1, m_assert_even_numbers_26).
assign(v_input_21, streams_test_1_literal1, line(streams_test_1, 153)).
method_invoc(streams_test_1_expr1, m_assert_equals_32, line(streams_test_1, 154)).
argument(streams_test_1_literal2, 1, streams_test_1_expr1).
argument(streams_test_1_expr2, 2, streams_test_1_expr1).
method_invoc(streams_test_1_expr2, m_size_33, line(streams_test_1, 154)).
ref(streams_test_1_expr3, streams_test_1_expr2, line(streams_test_1, 154)).
method_invoc(streams_test_1_expr3, m_collect_11, line(streams_test_1, 154)).
argument(streams_test_1_expr4, 1, streams_test_1_expr3).
ref(streams_test_1_expr5, streams_test_1_expr3, line(streams_test_1, 154)).
method_invoc(streams_test_1_expr5, m_stream_20, line(streams_test_1, 154)).
throw(streams_test_1_expr5, null_pointer_exception, line(streams_test_1, 154)).
argument(v_input_21, 1, streams_test_1_expr5).
ref(t_streams_2, streams_test_1_expr5, line(streams_test_1, 154)).
method_invoc(streams_test_1_expr4, m_to_list_34, line(streams_test_1, 154)).
ref(t_collectors_3, streams_test_1_expr4, line(streams_test_1, 154)).


% Stack Trace Info.
test_failure(failure_1, 'org.apache.commons.lang3.stream.StreamsTest', 'testStreamCollectionNull').
trace(trace_1, failure_1, m_stream_20, line(streams_1, 479), failure_1, target).
trace(trace_2, trace_1, m_test_stream_collection_null_31, line(streams_test_1, 154), failure_1, target).
trace(trace_3, trace_2, 'invoke', line(java_lang_reflect_method, 569), failure_1, non_target).
trace(trace_4, trace_3, 'forEach', line(java_util_array_list, 1511), failure_1, non_target).
trace(trace_5, trace_4, 'forEach', line(java_util_array_list, 1511), failure_1, non_target).



%%% End of Static Facts

%%% Values

val(p_stream_15, null, line(streams_1, 479)).
val(v_input_21, null, line(streams_test_1, 154)).



%%% End of Facts