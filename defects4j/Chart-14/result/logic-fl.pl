%%% Logic-FL Facts
:- style_check(-discontiguous).

%category_marker_1 - org.jfree.chart.plot.CategoryMarker
assign(f_draw_as_line_62, category_marker_1_literal1, line(category_marker_1, 72)).
param(p_key_63, 1, m_category_marker_31).
method_invoc(category_marker_1_expr1, m_category_marker_32, line(category_marker_1, 80)).
argument(p_key_63, 1, category_marker_1_expr1).
argument(q_gray_2, 2, category_marker_1_expr1).
argument(category_marker_1_expr2, 3, category_marker_1_expr1).
ref(t_color_2, q_gray_2, line(category_marker_1, 80)).
method_invoc(category_marker_1_expr2, m_basic_stroke_33, line(category_marker_1, 80)).
argument(category_marker_1_literal2, 1, category_marker_1_expr2).
param(p_key_65, 1, m_category_marker_32).
param(p_paint_66, 2, m_category_marker_32).
param(p_stroke_67, 3, m_category_marker_32).
method_invoc(category_marker_1_expr3, m_category_marker_34, line(category_marker_1, 91)).
argument(p_key_65, 1, category_marker_1_expr3).
argument(p_paint_66, 2, category_marker_1_expr3).
argument(p_stroke_67, 3, category_marker_1_expr3).
argument(p_paint_66, 4, category_marker_1_expr3).
argument(p_stroke_67, 5, category_marker_1_expr3).
argument(category_marker_1_literal3, 6, category_marker_1_expr3).
param(p_key_68, 1, m_category_marker_34).
param(p_paint_69, 2, m_category_marker_34).
param(p_stroke_70, 3, m_category_marker_34).
param(p_outline_paint_71, 4, m_category_marker_34).
param(p_outline_stroke_72, 5, m_category_marker_34).
param(p_alpha_73, 6, m_category_marker_34).
method_invoc(category_marker_1_expr4, m_marker_35, line(category_marker_1, 107)).
argument(p_paint_69, 1, category_marker_1_expr4).
argument(p_stroke_70, 2, category_marker_1_expr4).
argument(p_outline_paint_71, 3, category_marker_1_expr4).
argument(p_outline_stroke_72, 4, category_marker_1_expr4).
argument(p_alpha_73, 5, category_marker_1_expr4).
assign(f_key_74, p_key_68, line(category_marker_1, 108)).
method_invoc(category_marker_1_expr8, m_set_label_offset_type_36, line(category_marker_1, 109)).
argument(q_expand_3, 1, category_marker_1_expr8).
ref(t_length_adjustment_type_3, q_expand_3, line(category_marker_1, 109)).
param(p_key_75, 1, m_set_key_38).
param(p_draw_as_line_76, 1, m_set_draw_as_line_40).
param(p_obj_77, 1, m_equals_41).

%category_plot_tests_1 - org.jfree.chart.plot.junit.CategoryPlotTests
return(category_plot_tests_1_expr1, m_suite_572, line(category_plot_tests_1, 107)).
method_invoc(category_plot_tests_1_expr1, m_test_suite_573, line(category_plot_tests_1, 107)).
argument(category_plot_tests_1_expr2, 1, category_plot_tests_1_expr1).
param(p_name_895, 1, m_category_plot_tests_574).
method_invoc(category_plot_tests_1_expr3, m_test_case_575, line(category_plot_tests_1, 116)).
argument(p_name_895, 1, category_plot_tests_1_expr3).
assign(v_plot_896, category_plot_tests_1_expr4, line(category_plot_tests_1, 770)).
method_invoc(category_plot_tests_1_expr4, m_category_plot_44, line(category_plot_tests_1, 770)).
method_invoc(category_plot_tests_1_expr5, m_assert_false_593, line(category_plot_tests_1, 771)).
argument(category_plot_tests_1_expr6, 1, category_plot_tests_1_expr5).
method_invoc(category_plot_tests_1_expr6, m_remove_domain_marker_155, line(category_plot_tests_1, 771)).
argument(category_plot_tests_1_expr7, 1, category_plot_tests_1_expr6).
ref(v_plot_896, category_plot_tests_1_expr6, line(category_plot_tests_1, 771)).
method_invoc(category_plot_tests_1_expr7, m_category_marker_31, line(category_plot_tests_1, 771)).
argument(category_plot_tests_1_literal1, 1, category_plot_tests_1_expr7).
assign(v_plot_897, category_plot_tests_1_expr8, line(category_plot_tests_1, 779)).
method_invoc(category_plot_tests_1_expr8, m_category_plot_44, line(category_plot_tests_1, 779)).
method_invoc(category_plot_tests_1_expr9, m_assert_false_593, line(category_plot_tests_1, 780)).
argument(category_plot_tests_1_expr10, 1, category_plot_tests_1_expr9).
method_invoc(category_plot_tests_1_expr10, m_remove_range_marker_172, line(category_plot_tests_1, 780)).
argument(category_plot_tests_1_expr11, 1, category_plot_tests_1_expr10).
ref(v_plot_897, category_plot_tests_1_expr10, line(category_plot_tests_1, 780)).
method_invoc(category_plot_tests_1_expr11, m_value_marker_365, line(category_plot_tests_1, 780)).
argument(category_plot_tests_1_literal2, 1, category_plot_tests_1_expr11).

%text_anchor_1 - org.jfree.chart.text.TextAnchor
assign(f_top_left_901, text_anchor_1_expr1, line(text_anchor_1, 58)).
method_invoc(text_anchor_1_expr1, m_text_anchor_622, line(text_anchor_1, 58)).
argument(text_anchor_1_literal1, 1, text_anchor_1_expr1).
assign(f_top_center_902, text_anchor_1_expr2, line(text_anchor_1, 62)).
method_invoc(text_anchor_1_expr2, m_text_anchor_622, line(text_anchor_1, 62)).
argument(text_anchor_1_literal2, 1, text_anchor_1_expr2).
assign(f_top_right_903, text_anchor_1_expr3, line(text_anchor_1, 66)).
method_invoc(text_anchor_1_expr3, m_text_anchor_622, line(text_anchor_1, 66)).
argument(text_anchor_1_literal3, 1, text_anchor_1_expr3).
assign(f_half_ascent_left_904, text_anchor_1_expr4, line(text_anchor_1, 70)).
method_invoc(text_anchor_1_expr4, m_text_anchor_622, line(text_anchor_1, 70)).
argument(text_anchor_1_literal4, 1, text_anchor_1_expr4).
assign(f_half_ascent_center_905, text_anchor_1_expr5, line(text_anchor_1, 74)).
method_invoc(text_anchor_1_expr5, m_text_anchor_622, line(text_anchor_1, 74)).
argument(text_anchor_1_literal5, 1, text_anchor_1_expr5).
assign(f_half_ascent_right_906, text_anchor_1_expr6, line(text_anchor_1, 78)).
method_invoc(text_anchor_1_expr6, m_text_anchor_622, line(text_anchor_1, 78)).
argument(text_anchor_1_literal6, 1, text_anchor_1_expr6).
assign(f_center_left_907, text_anchor_1_expr7, line(text_anchor_1, 82)).
method_invoc(text_anchor_1_expr7, m_text_anchor_622, line(text_anchor_1, 82)).
argument(text_anchor_1_literal7, 1, text_anchor_1_expr7).
assign(f_center_908, text_anchor_1_expr8, line(text_anchor_1, 86)).
method_invoc(text_anchor_1_expr8, m_text_anchor_622, line(text_anchor_1, 86)).
argument(text_anchor_1_literal8, 1, text_anchor_1_expr8).
assign(f_center_right_909, text_anchor_1_expr9, line(text_anchor_1, 89)).
method_invoc(text_anchor_1_expr9, m_text_anchor_622, line(text_anchor_1, 89)).
argument(text_anchor_1_literal9, 1, text_anchor_1_expr9).
assign(f_baseline_left_910, text_anchor_1_expr10, line(text_anchor_1, 93)).
method_invoc(text_anchor_1_expr10, m_text_anchor_622, line(text_anchor_1, 93)).
argument(text_anchor_1_literal10, 1, text_anchor_1_expr10).
assign(f_baseline_center_911, text_anchor_1_expr11, line(text_anchor_1, 97)).
method_invoc(text_anchor_1_expr11, m_text_anchor_622, line(text_anchor_1, 97)).
argument(text_anchor_1_literal11, 1, text_anchor_1_expr11).
assign(f_baseline_right_912, text_anchor_1_expr12, line(text_anchor_1, 101)).
method_invoc(text_anchor_1_expr12, m_text_anchor_622, line(text_anchor_1, 101)).
argument(text_anchor_1_literal12, 1, text_anchor_1_expr12).
assign(f_bottom_left_913, text_anchor_1_expr13, line(text_anchor_1, 105)).
method_invoc(text_anchor_1_expr13, m_text_anchor_622, line(text_anchor_1, 105)).
argument(text_anchor_1_literal13, 1, text_anchor_1_expr13).
assign(f_bottom_center_914, text_anchor_1_expr14, line(text_anchor_1, 109)).
method_invoc(text_anchor_1_expr14, m_text_anchor_622, line(text_anchor_1, 109)).
argument(text_anchor_1_literal14, 1, text_anchor_1_expr14).
assign(f_bottom_right_915, text_anchor_1_expr15, line(text_anchor_1, 113)).
method_invoc(text_anchor_1_expr15, m_text_anchor_622, line(text_anchor_1, 113)).
argument(text_anchor_1_literal15, 1, text_anchor_1_expr15).
param(p_name_916, 1, m_text_anchor_622).
assign(f_name_917, p_name_916, line(text_anchor_1, 125)).
param(p_obj_918, 1, m_equals_624).
throw(m_read_resolve_626, object_stream_exception).

%xyplot_tests_1 - org.jfree.chart.plot.junit.XYPlotTests
return(xyplot_tests_1_expr1, m_suite_595, line(xyplot_tests_1, 116)).
method_invoc(xyplot_tests_1_expr1, m_test_suite_573, line(xyplot_tests_1, 116)).
argument(xyplot_tests_1_expr2, 1, xyplot_tests_1_expr1).
param(p_name_898, 1, m_xyplot_tests_596).
method_invoc(xyplot_tests_1_expr3, m_test_case_575, line(xyplot_tests_1, 125)).
argument(p_name_898, 1, xyplot_tests_1_expr3).
assign(v_plot_899, xyplot_tests_1_expr4, line(xyplot_tests_1, 1027)).
method_invoc(xyplot_tests_1_expr4, m_xyplot_371, line(xyplot_tests_1, 1027)).
method_invoc(xyplot_tests_1_expr5, m_assert_false_593, line(xyplot_tests_1, 1028)).
argument(xyplot_tests_1_expr6, 1, xyplot_tests_1_expr5).
method_invoc(xyplot_tests_1_expr6, m_remove_domain_marker_474, line(xyplot_tests_1, 1028)).
argument(xyplot_tests_1_expr7, 1, xyplot_tests_1_expr6).
ref(v_plot_899, xyplot_tests_1_expr6, line(xyplot_tests_1, 1028)).
method_invoc(xyplot_tests_1_expr7, m_value_marker_365, line(xyplot_tests_1, 1028)).
argument(xyplot_tests_1_literal1, 1, xyplot_tests_1_expr7).
assign(v_plot_900, xyplot_tests_1_expr8, line(xyplot_tests_1, 1036)).
method_invoc(xyplot_tests_1_expr8, m_xyplot_371, line(xyplot_tests_1, 1036)).
method_invoc(xyplot_tests_1_expr9, m_assert_false_593, line(xyplot_tests_1, 1037)).
argument(xyplot_tests_1_expr10, 1, xyplot_tests_1_expr9).
method_invoc(xyplot_tests_1_expr10, m_remove_range_marker_484, line(xyplot_tests_1, 1037)).
argument(xyplot_tests_1_expr11, 1, xyplot_tests_1_expr10).
ref(v_plot_900, xyplot_tests_1_expr10, line(xyplot_tests_1, 1037)).
method_invoc(xyplot_tests_1_expr11, m_value_marker_365, line(xyplot_tests_1, 1037)).
argument(xyplot_tests_1_literal2, 1, xyplot_tests_1_expr11).

%marker_1 - org.jfree.chart.plot.Marker
assign(f_label_416, marker_1_literal1, line(marker_1, 115)).
method_invoc(marker_1_expr1, m_marker_263, line(marker_1, 144)).
argument(q_gray_18, 1, marker_1_expr1).
ref(t_color_2, q_gray_18, line(marker_1, 144)).
param(p_paint_417, 1, m_marker_263).
method_invoc(marker_1_expr2, m_marker_35, line(marker_1, 153)).
argument(p_paint_417, 1, marker_1_expr2).
argument(marker_1_expr3, 2, marker_1_expr2).
argument(q_gray_18, 3, marker_1_expr2).
argument(marker_1_expr4, 4, marker_1_expr2).
argument(marker_1_literal2, 5, marker_1_expr2).
method_invoc(marker_1_expr3, m_basic_stroke_33, line(marker_1, 153)).
argument(marker_1_literal3, 1, marker_1_expr3).
ref(t_color_2, q_gray_18, line(marker_1, 153)).
method_invoc(marker_1_expr4, m_basic_stroke_33, line(marker_1, 153)).
argument(marker_1_literal4, 1, marker_1_expr4).
param(p_paint_418, 1, m_marker_35).
param(p_stroke_419, 2, m_marker_35).
param(p_outline_paint_420, 3, m_marker_35).
param(p_outline_stroke_421, 4, m_marker_35).
param(p_alpha_422, 5, m_marker_35).
assign(f_paint_423, p_paint_418, line(marker_1, 185)).
assign(f_stroke_424, p_stroke_419, line(marker_1, 186)).
assign(f_outline_paint_425, p_outline_paint_420, line(marker_1, 187)).
assign(f_outline_stroke_426, p_outline_stroke_421, line(marker_1, 188)).
assign(f_alpha_427, p_alpha_422, line(marker_1, 189)).
assign(f_label_font_428, marker_1_expr27, line(marker_1, 191)).
method_invoc(marker_1_expr27, m_font_43, line(marker_1, 191)).
argument(marker_1_literal9, 1, marker_1_expr27).
argument(q_plain_18, 2, marker_1_expr27).
argument(marker_1_literal10, 3, marker_1_expr27).
ref(t_font_9, q_plain_18, line(marker_1, 191)).
assign(f_label_paint_429, q_black_18, line(marker_1, 192)).
ref(t_color_2, q_black_18, line(marker_1, 192)).
assign(f_label_anchor_430, q_top_left_19, line(marker_1, 193)).
ref(t_rectangle_anchor_10, q_top_left_19, line(marker_1, 193)).
assign(f_label_offset_431, marker_1_expr37, line(marker_1, 194)).
method_invoc(marker_1_expr37, m_rectangle_insets_49, line(marker_1, 194)).
argument(marker_1_literal11, 1, marker_1_expr37).
argument(marker_1_literal12, 2, marker_1_expr37).
argument(marker_1_literal13, 3, marker_1_expr37).
argument(marker_1_literal14, 4, marker_1_expr37).
assign(f_label_offset_type_432, q_contract_20, line(marker_1, 195)).
ref(t_length_adjustment_type_3, q_contract_20, line(marker_1, 195)).
assign(f_label_text_anchor_433, q_center_21, line(marker_1, 196)).
ref(t_text_anchor_11, q_center_21, line(marker_1, 196)).
assign(f_listener_list_434, marker_1_expr47, line(marker_1, 198)).
method_invoc(marker_1_expr47, m_event_listener_list_264, line(marker_1, 198)).
param(p_paint_435, 1, m_set_paint_266).
param(p_stroke_436, 1, m_set_stroke_268).
param(p_paint_437, 1, m_set_outline_paint_270).
param(p_stroke_438, 1, m_set_outline_stroke_272).
param(p_alpha_439, 1, m_set_alpha_274).
param(p_label_440, 1, m_set_label_276).
param(p_font_441, 1, m_set_label_font_278).
param(p_paint_442, 1, m_set_label_paint_280).
param(p_anchor_443, 1, m_set_label_anchor_282).
param(p_offset_444, 1, m_set_label_offset_284).
param(p_adj_445, 1, m_set_label_offset_type_36).
assign(f_label_offset_type_432, p_adj_445, line(marker_1, 493)).
method_invoc(marker_1_expr53, m_notify_listeners_286, line(marker_1, 494)).
argument(marker_1_expr54, 1, marker_1_expr53).
method_invoc(marker_1_expr54, m_marker_change_event_27, line(marker_1, 494)).
argument(marker_1_expr55, 1, marker_1_expr54).
param(p_anchor_446, 1, m_set_label_text_anchor_288).
param(p_listener_447, 1, m_add_change_listener_166).
method_invoc(marker_1_expr56, m_add_289, line(marker_1, 534)).
argument(marker_1_expr57, 1, marker_1_expr56).
argument(p_listener_447, 2, marker_1_expr56).
ref(f_listener_list_434, marker_1_expr56, line(marker_1, 534)).
param(p_listener_448, 1, m_remove_change_listener_290).
param(p_event_449, 1, m_notify_listeners_286).
assign(v_listeners_450, marker_1_expr60, line(marker_1, 559)).
method_invoc(marker_1_expr60, m_get_listener_list_291, line(marker_1, 559)).
ref(f_listener_list_434, marker_1_expr60, line(marker_1, 559)).
assign(v_i_451, marker_1_expr64, line(marker_1, 560)).
ref(v_listeners_450, q_length_22, line(marker_1, 560)).
assign(v_i_451, marker_1_literal18, line(marker_1, 560)).
param(p_listener_type_452, 1, m_get_listeners_292).
param(p_obj_453, 1, m_equals_293).
throw(m_clone_294, clone_not_supported_exception).
param(p_stream_454, 1, m_write_object_295).
throw(m_write_object_295, ioexception).
param(p_stream_455, 1, m_read_object_296).
throw(m_read_object_296, ioexception).
throw(m_read_object_296, class_not_found_exception).

%value_marker_1 - org.jfree.chart.plot.ValueMarker
param(p_value_554, 1, m_value_marker_365).
method_invoc(value_marker_1_expr1, m_marker_262, line(value_marker_1, 68)).
assign(f_value_555, p_value_554, line(value_marker_1, 69)).
param(p_value_556, 1, m_value_marker_366).
param(p_paint_557, 2, m_value_marker_366).
param(p_stroke_558, 3, m_value_marker_366).
param(p_value_559, 1, m_value_marker_57).
param(p_paint_560, 2, m_value_marker_57).
param(p_stroke_561, 3, m_value_marker_57).
param(p_outline_paint_562, 4, m_value_marker_57).
param(p_outline_stroke_563, 5, m_value_marker_57).
param(p_alpha_564, 6, m_value_marker_57).
method_invoc(value_marker_1_expr5, m_marker_35, line(value_marker_1, 95)).
argument(p_paint_560, 1, value_marker_1_expr5).
argument(p_stroke_561, 2, value_marker_1_expr5).
argument(p_outline_paint_562, 3, value_marker_1_expr5).
argument(p_outline_stroke_563, 4, value_marker_1_expr5).
argument(p_alpha_564, 5, value_marker_1_expr5).
assign(f_value_555, p_value_559, line(value_marker_1, 96)).
param(p_value_565, 1, m_set_value_368).
param(p_obj_566, 1, m_equals_369).

%sort_order_1 - org.jfree.chart.util.SortOrder
assign(f_ascending_1010, sort_order_1_expr1, line(sort_order_1, 59)).
method_invoc(sort_order_1_expr1, m_sort_order_687, line(sort_order_1, 59)).
argument(sort_order_1_literal1, 1, sort_order_1_expr1).
assign(f_descending_1011, sort_order_1_expr2, line(sort_order_1, 63)).
method_invoc(sort_order_1_expr2, m_sort_order_687, line(sort_order_1, 63)).
argument(sort_order_1_literal2, 1, sort_order_1_expr2).
param(p_name_1012, 1, m_sort_order_687).
assign(f_name_1013, p_name_1012, line(sort_order_1, 75)).
param(p_obj_1014, 1, m_equals_689).
throw(m_read_resolve_691, object_stream_exception).

%plot_1 - org.jfree.chart.plot.Plot
assign(f_zero_456, plot_1_expr1, line(plot_1, 191)).
method_invoc(plot_1_expr1, m_integer_106, line(plot_1, 191)).
argument(plot_1_literal1, 1, plot_1_expr1).
assign(f_default_insets_457, plot_1_expr2, line(plot_1, 194)).
assign(f_default_outline_stroke_458, plot_1_expr3, line(plot_1, 198)).
method_invoc(plot_1_expr3, m_basic_stroke_33, line(plot_1, 198)).
argument(plot_1_literal2, 1, plot_1_expr3).
assign(f_default_outline_paint_459, q_gray_23, line(plot_1, 201)).
ref(t_color_2, q_gray_23, line(plot_1, 201)).
assign(f_default_background_paint_460, q_light_gray_23, line(plot_1, 210)).
ref(t_color_2, q_light_gray_23, line(plot_1, 210)).
assign(f_default_legend_item_box_461, plot_1_expr4, line(plot_1, 219)).
assign(f_default_legend_item_circle_462, plot_1_expr5, line(plot_1, 223)).
assign(f_background_image_alignment_463, q_fit_24, line(plot_1, 264)).
ref(t_align_12, q_fit_24, line(plot_1, 264)).
assign(f_background_image_alpha_464, plot_1_literal3, line(plot_1, 267)).
assign(f_parent_465, plot_1_literal4, line(plot_1, 286)).
assign(f_insets_466, f_default_insets_457, line(plot_1, 287)).
assign(f_background_paint_467, f_default_background_paint_460, line(plot_1, 288)).
assign(f_background_alpha_468, f_default_background_alpha_469, line(plot_1, 289)).
assign(f_background_image_470, plot_1_literal5, line(plot_1, 290)).
assign(f_outline_visible_471, plot_1_literal6, line(plot_1, 291)).
assign(f_outline_stroke_472, f_default_outline_stroke_458, line(plot_1, 292)).
assign(f_outline_paint_473, f_default_outline_paint_459, line(plot_1, 293)).
assign(f_foreground_alpha_474, f_default_foreground_alpha_475, line(plot_1, 294)).
assign(f_no_data_message_476, plot_1_literal7, line(plot_1, 296)).
assign(f_no_data_message_font_477, plot_1_expr38, line(plot_1, 297)).
method_invoc(plot_1_expr38, m_font_43, line(plot_1, 297)).
argument(plot_1_literal8, 1, plot_1_expr38).
argument(q_plain_25, 2, plot_1_expr38).
argument(plot_1_literal9, 3, plot_1_expr38).
ref(t_font_9, q_plain_25, line(plot_1, 297)).
assign(f_no_data_message_paint_478, q_black_25, line(plot_1, 298)).
ref(t_color_2, q_black_25, line(plot_1, 298)).
assign(f_drawing_supplier_479, plot_1_expr45, line(plot_1, 300)).
method_invoc(plot_1_expr45, m_default_drawing_supplier_242, line(plot_1, 300)).
assign(f_listener_list_480, plot_1_expr49, line(plot_1, 302)).
method_invoc(plot_1_expr49, m_event_listener_list_264, line(plot_1, 302)).
param(p_group_481, 1, m_set_dataset_group_298).
param(p_message_482, 1, m_set_no_data_message_300).
param(p_font_483, 1, m_set_no_data_message_font_302).
param(p_paint_484, 1, m_set_no_data_message_paint_304).
return(f_parent_465, m_get_parent_86, line(plot_1, 433)).
param(p_parent_485, 1, m_set_parent_306).
param(p_insets_486, 1, m_set_insets_310).
param(p_insets_487, 1, m_set_insets_311).
param(p_notify_488, 2, m_set_insets_311).
param(p_paint_489, 1, m_set_background_paint_313).
param(p_alpha_490, 1, m_set_background_alpha_315).
param(p_supplier_491, 1, m_set_drawing_supplier_317).
param(p_image_492, 1, m_set_background_image_319).
param(p_alignment_493, 1, m_set_background_image_alignment_321).
param(p_alpha_494, 1, m_set_background_image_alpha_323).
param(p_visible_495, 1, m_set_outline_visible_325).
param(p_stroke_496, 1, m_set_outline_stroke_327).
param(p_paint_497, 1, m_set_outline_paint_329).
param(p_alpha_498, 1, m_set_foreground_alpha_331).
param(p_listener_499, 1, m_add_change_listener_333).
param(p_listener_500, 1, m_remove_change_listener_334).
param(p_event_501, 1, m_notify_listeners_145).
assign(v_listeners_502, plot_1_expr53, line(plot_1, 888)).
method_invoc(plot_1_expr53, m_get_listener_list_291, line(plot_1, 888)).
ref(f_listener_list_480, plot_1_expr53, line(plot_1, 888)).
assign(v_i_503, plot_1_expr57, line(plot_1, 889)).
ref(v_listeners_502, q_length_25, line(plot_1, 889)).
assign(v_i_503, plot_1_literal12, line(plot_1, 889)).
method_invoc(plot_1_expr60, m_notify_listeners_145, line(plot_1, 902)).
argument(plot_1_expr61, 1, plot_1_expr60).
method_invoc(plot_1_expr61, m_plot_change_event_29, line(plot_1, 902)).
argument(plot_1_expr62, 1, plot_1_expr61).
param(p_g_2_504, 1, m_draw_335).
param(p_area_505, 2, m_draw_335).
param(p_anchor_506, 3, m_draw_335).
param(p_parent_state_507, 4, m_draw_335).
param(p_info_508, 5, m_draw_335).
param(p_g_2_509, 1, m_draw_background_336).
param(p_area_510, 2, m_draw_background_336).
param(p_g_2_511, 1, m_fill_background_337).
param(p_area_512, 2, m_fill_background_337).
param(p_g_2_513, 1, m_fill_background_338).
param(p_area_514, 2, m_fill_background_338).
param(p_orientation_515, 3, m_fill_background_338).
param(p_g_2_516, 1, m_draw_background_image_339).
param(p_area_517, 2, m_draw_background_image_339).
param(p_g_2_518, 1, m_draw_outline_340).
param(p_area_519, 2, m_draw_outline_340).
param(p_g_2_520, 1, m_draw_no_data_message_341).
param(p_area_521, 2, m_draw_no_data_message_341).
param(p_x_522, 1, m_handle_click_342).
param(p_y_523, 2, m_handle_click_342).
param(p_info_524, 3, m_handle_click_342).
param(p_percent_525, 1, m_zoom_343).
param(p_event_526, 1, m_axis_changed_344).
param(p_event_527, 1, m_dataset_changed_345).
param(p_event_528, 1, m_marker_changed_346).
param(p_x_529, 1, m_get_rect_x_347).
param(p_w_1_530, 2, m_get_rect_x_347).
param(p_w_2_531, 3, m_get_rect_x_347).
param(p_edge_532, 4, m_get_rect_x_347).
param(p_y_533, 1, m_get_rect_y_348).
param(p_h_1_534, 2, m_get_rect_y_348).
param(p_h_2_535, 3, m_get_rect_y_348).
param(p_edge_536, 4, m_get_rect_y_348).
param(p_obj_537, 1, m_equals_349).
throw(m_clone_350, clone_not_supported_exception).
param(p_stream_538, 1, m_write_object_351).
throw(m_write_object_351, ioexception).
param(p_stream_539, 1, m_read_object_352).
throw(m_read_object_352, ioexception).
throw(m_read_object_352, class_not_found_exception).
param(p_location_540, 1, m_resolve_domain_axis_location_353).
param(p_orientation_541, 2, m_resolve_domain_axis_location_353).
param(p_location_542, 1, m_resolve_range_axis_location_354).
param(p_orientation_543, 2, m_resolve_range_axis_location_354).

%chart_change_event_1 - org.jfree.chart.event.ChartChangeEvent
param(p_source_42, 1, m_chart_change_event_14).
method_invoc(chart_change_event_1_expr1, m_chart_change_event_15, line(chart_change_event_1, 69)).
argument(p_source_42, 1, chart_change_event_1_expr1).
argument(chart_change_event_1_literal1, 2, chart_change_event_1_expr1).
argument(q_general_1, 3, chart_change_event_1_expr1).
ref(t_chart_change_event_type_1, q_general_1, line(chart_change_event_1, 69)).
param(p_source_44, 1, m_chart_change_event_16).
param(p_chart_45, 2, m_chart_change_event_16).
param(p_source_46, 1, m_chart_change_event_15).
param(p_chart_47, 2, m_chart_change_event_15).
param(p_type_48, 3, m_chart_change_event_15).
method_invoc(chart_change_event_1_expr2, m_event_object_17, line(chart_change_event_1, 93)).
argument(p_source_46, 1, chart_change_event_1_expr2).
assign(f_chart_49, p_chart_47, line(chart_change_event_1, 94)).
assign(f_type_50, p_type_48, line(chart_change_event_1, 95)).
param(p_chart_51, 1, m_set_chart_19).
param(p_type_52, 1, m_set_type_21).
assign(f_type_50, p_type_52, line(chart_change_event_1, 131)).

%rectangle_anchor_1 - org.jfree.chart.util.RectangleAnchor
assign(f_center_951, rectangle_anchor_1_expr1, line(rectangle_anchor_1, 63)).
assign(f_top_952, rectangle_anchor_1_expr2, line(rectangle_anchor_1, 67)).
assign(f_top_left_953, rectangle_anchor_1_expr3, line(rectangle_anchor_1, 71)).
assign(f_top_right_954, rectangle_anchor_1_expr4, line(rectangle_anchor_1, 75)).
assign(f_bottom_955, rectangle_anchor_1_expr5, line(rectangle_anchor_1, 79)).
assign(f_bottom_left_956, rectangle_anchor_1_expr6, line(rectangle_anchor_1, 83)).
assign(f_bottom_right_957, rectangle_anchor_1_expr7, line(rectangle_anchor_1, 87)).
assign(f_left_958, rectangle_anchor_1_expr8, line(rectangle_anchor_1, 91)).
assign(f_right_959, rectangle_anchor_1_expr9, line(rectangle_anchor_1, 95)).
param(p_name_960, 1, m_rectangle_anchor_652).
assign(f_name_961, p_name_960, line(rectangle_anchor_1, 107)).
param(p_obj_962, 1, m_equals_654).
param(p_rectangle_963, 1, m_coordinates_656).
param(p_anchor_964, 2, m_coordinates_656).
param(p_dimensions_965, 1, m_create_rectangle_657).
param(p_anchor_x_966, 2, m_create_rectangle_657).
param(p_anchor_y_967, 3, m_create_rectangle_657).
param(p_anchor_968, 4, m_create_rectangle_657).
throw(m_read_resolve_658, object_stream_exception).

%category_plot_1 - org.jfree.chart.plot.CategoryPlot
assign(f_default_gridline_stroke_78, category_plot_1_expr1, line(category_plot_1, 251)).
method_invoc(category_plot_1_expr1, m_basic_stroke_42, line(category_plot_1, 251)).
argument(category_plot_1_literal1, 1, category_plot_1_expr1).
argument(q_cap_butt_4, 2, category_plot_1_expr1).
argument(q_join_bevel_5, 3, category_plot_1_expr1).
argument(category_plot_1_literal2, 4, category_plot_1_expr1).
argument(category_plot_1_expr2, 5, category_plot_1_expr1).
argument(category_plot_1_literal3, 6, category_plot_1_expr1).
assign(f_default_gridline_paint_79, q_white_6, line(category_plot_1, 256)).
ref(t_color_2, q_white_6, line(category_plot_1, 256)).
assign(f_default_value_label_font_80, category_plot_1_expr3, line(category_plot_1, 259)).
method_invoc(category_plot_1_expr3, m_font_43, line(category_plot_1, 259)).
argument(category_plot_1_literal4, 1, category_plot_1_expr3).
argument(q_plain_7, 2, category_plot_1_expr3).
argument(category_plot_1_literal5, 3, category_plot_1_expr3).
assign(f_default_crosshair_stroke_81, f_default_gridline_stroke_78, line(category_plot_1, 274)).
assign(f_default_crosshair_paint_82, q_blue_8, line(category_plot_1, 282)).
ref(t_color_2, q_blue_8, line(category_plot_1, 282)).
assign(f_localization_resources_83, category_plot_1_expr4, line(category_plot_1, 285)).
assign(f_rendering_order_84, q_reverse_9, line(category_plot_1, 326)).
assign(f_column_rendering_order_85, q_ascending_10, line(category_plot_1, 333)).
ref(t_sort_order_4, q_ascending_10, line(category_plot_1, 333)).
assign(f_row_rendering_order_86, q_ascending_11, line(category_plot_1, 339)).
ref(t_sort_order_4, q_ascending_11, line(category_plot_1, 339)).
assign(f_range_crosshair_locked_on_data_87, category_plot_1_literal6, line(category_plot_1, 387)).
method_invoc(category_plot_1_expr5, m_category_plot_45, line(category_plot_1, 430)).
argument(category_plot_1_literal7, 1, category_plot_1_expr5).
argument(category_plot_1_literal8, 2, category_plot_1_expr5).
argument(category_plot_1_literal9, 3, category_plot_1_expr5).
argument(category_plot_1_literal10, 4, category_plot_1_expr5).
param(p_dataset_88, 1, m_category_plot_45).
param(p_domain_axis_89, 2, m_category_plot_45).
param(p_range_axis_90, 3, m_category_plot_45).
param(p_renderer_91, 4, m_category_plot_45).
method_invoc(category_plot_1_expr6, m_plot_46, line(category_plot_1, 447)).
assign(f_orientation_92, q_vertical_11, line(category_plot_1, 449)).
ref(t_plot_orientation_5, q_vertical_11, line(category_plot_1, 449)).
assign(f_domain_axes_93, category_plot_1_expr12, line(category_plot_1, 452)).
method_invoc(category_plot_1_expr12, m_object_list_47, line(category_plot_1, 452)).
assign(f_domain_axis_locations_94, category_plot_1_expr16, line(category_plot_1, 453)).
method_invoc(category_plot_1_expr16, m_object_list_47, line(category_plot_1, 453)).
assign(f_range_axes_95, category_plot_1_expr20, line(category_plot_1, 454)).
method_invoc(category_plot_1_expr20, m_object_list_47, line(category_plot_1, 454)).
assign(f_range_axis_locations_96, category_plot_1_expr24, line(category_plot_1, 455)).
method_invoc(category_plot_1_expr24, m_object_list_47, line(category_plot_1, 455)).
assign(f_dataset_to_domain_axis_map_97, category_plot_1_expr28, line(category_plot_1, 457)).
method_invoc(category_plot_1_expr28, m_object_list_47, line(category_plot_1, 457)).
assign(f_dataset_to_range_axis_map_98, category_plot_1_expr32, line(category_plot_1, 458)).
method_invoc(category_plot_1_expr32, m_object_list_47, line(category_plot_1, 458)).
assign(f_renderers_99, category_plot_1_expr36, line(category_plot_1, 460)).
method_invoc(category_plot_1_expr36, m_object_list_47, line(category_plot_1, 460)).
assign(f_datasets_100, category_plot_1_expr40, line(category_plot_1, 462)).
method_invoc(category_plot_1_expr40, m_object_list_47, line(category_plot_1, 462)).
method_invoc(category_plot_1_expr42, m_set_48, line(category_plot_1, 463)).
argument(category_plot_1_literal11, 1, category_plot_1_expr42).
argument(p_dataset_88, 2, category_plot_1_expr42).
ref(f_datasets_100, category_plot_1_expr42, line(category_plot_1, 463)).
assign(f_axis_offset_101, category_plot_1_expr48, line(category_plot_1, 468)).
method_invoc(category_plot_1_expr48, m_rectangle_insets_49, line(category_plot_1, 468)).
argument(category_plot_1_literal13, 1, category_plot_1_expr48).
argument(category_plot_1_literal14, 2, category_plot_1_expr48).
argument(category_plot_1_literal15, 3, category_plot_1_expr48).
argument(category_plot_1_literal16, 4, category_plot_1_expr48).
method_invoc(category_plot_1_expr50, m_set_domain_axis_location_50, line(category_plot_1, 470)).
argument(q_bottom_or_left_12, 1, category_plot_1_expr50).
argument(category_plot_1_literal17, 2, category_plot_1_expr50).
ref(t_axis_location_6, q_bottom_or_left_12, line(category_plot_1, 470)).
method_invoc(category_plot_1_expr51, m_set_range_axis_location_51, line(category_plot_1, 471)).
argument(q_top_or_left_13, 1, category_plot_1_expr51).
argument(category_plot_1_literal18, 2, category_plot_1_expr51).
ref(t_axis_location_6, q_top_or_left_13, line(category_plot_1, 471)).
method_invoc(category_plot_1_expr52, m_set_48, line(category_plot_1, 473)).
argument(category_plot_1_literal19, 1, category_plot_1_expr52).
argument(p_renderer_91, 2, category_plot_1_expr52).
ref(f_renderers_99, category_plot_1_expr52, line(category_plot_1, 473)).
method_invoc(category_plot_1_expr56, m_set_48, line(category_plot_1, 479)).
argument(category_plot_1_literal21, 1, category_plot_1_expr56).
argument(p_domain_axis_89, 2, category_plot_1_expr56).
ref(f_domain_axes_93, category_plot_1_expr56, line(category_plot_1, 479)).
method_invoc(category_plot_1_expr59, m_map_dataset_to_domain_axis_52, line(category_plot_1, 480)).
argument(category_plot_1_literal22, 1, category_plot_1_expr59).
argument(category_plot_1_literal23, 2, category_plot_1_expr59).
ref(category_plot_1_expr60, category_plot_1_expr59, line(category_plot_1, 480)).
assign(f_draw_shared_domain_axis_102, category_plot_1_literal25, line(category_plot_1, 485)).
method_invoc(category_plot_1_expr65, m_set_48, line(category_plot_1, 487)).
argument(category_plot_1_literal26, 1, category_plot_1_expr65).
argument(p_range_axis_90, 2, category_plot_1_expr65).
ref(f_range_axes_95, category_plot_1_expr65, line(category_plot_1, 487)).
method_invoc(category_plot_1_expr68, m_map_dataset_to_range_axis_53, line(category_plot_1, 488)).
argument(category_plot_1_literal27, 1, category_plot_1_expr68).
argument(category_plot_1_literal28, 2, category_plot_1_expr68).
ref(category_plot_1_expr69, category_plot_1_expr68, line(category_plot_1, 488)).
method_invoc(category_plot_1_expr71, m_configure_domain_axes_54, line(category_plot_1, 494)).
method_invoc(category_plot_1_expr72, m_configure_range_axes_55, line(category_plot_1, 495)).
assign(f_domain_gridlines_visible_103, f_default_domain_gridlines_visible_104, line(category_plot_1, 497)).
assign(f_domain_gridline_position_105, q_middle_14, line(category_plot_1, 498)).
ref(t_category_anchor_7, q_middle_14, line(category_plot_1, 498)).
assign(f_domain_gridline_stroke_106, f_default_gridline_stroke_78, line(category_plot_1, 499)).
assign(f_domain_gridline_paint_107, f_default_gridline_paint_79, line(category_plot_1, 500)).
assign(f_range_gridlines_visible_108, f_default_range_gridlines_visible_109, line(category_plot_1, 502)).
assign(f_range_gridline_stroke_110, f_default_gridline_stroke_78, line(category_plot_1, 503)).
assign(f_range_gridline_paint_111, f_default_gridline_paint_79, line(category_plot_1, 504)).
assign(f_foreground_domain_markers_112, category_plot_1_expr96, line(category_plot_1, 506)).
method_invoc(category_plot_1_expr96, m_hash_map_56, line(category_plot_1, 506)).
assign(f_background_domain_markers_113, category_plot_1_expr100, line(category_plot_1, 507)).
method_invoc(category_plot_1_expr100, m_hash_map_56, line(category_plot_1, 507)).
assign(f_foreground_range_markers_114, category_plot_1_expr104, line(category_plot_1, 508)).
method_invoc(category_plot_1_expr104, m_hash_map_56, line(category_plot_1, 508)).
assign(f_background_range_markers_115, category_plot_1_expr108, line(category_plot_1, 509)).
method_invoc(category_plot_1_expr108, m_hash_map_56, line(category_plot_1, 509)).
assign(v_baseline_116, category_plot_1_expr110, line(category_plot_1, 511)).
method_invoc(category_plot_1_expr110, m_value_marker_57, line(category_plot_1, 511)).
argument(category_plot_1_literal30, 1, category_plot_1_expr110).
argument(category_plot_1_expr111, 2, category_plot_1_expr110).
argument(category_plot_1_expr112, 3, category_plot_1_expr110).
argument(category_plot_1_expr113, 4, category_plot_1_expr110).
argument(category_plot_1_expr114, 5, category_plot_1_expr110).
argument(category_plot_1_literal31, 6, category_plot_1_expr110).
method_invoc(category_plot_1_expr111, m_color_58, line(category_plot_1, 511)).
argument(category_plot_1_literal32, 1, category_plot_1_expr111).
argument(category_plot_1_literal33, 2, category_plot_1_expr111).
argument(category_plot_1_literal34, 3, category_plot_1_expr111).
argument(category_plot_1_literal35, 4, category_plot_1_expr111).
method_invoc(category_plot_1_expr115, m_add_range_marker_59, line(category_plot_1, 514)).
argument(v_baseline_116, 1, category_plot_1_expr115).
argument(q_background_15, 2, category_plot_1_expr115).
ref(t_layer_8, q_background_15, line(category_plot_1, 514)).
assign(f_anchor_value_117, category_plot_1_literal36, line(category_plot_1, 516)).
assign(f_range_crosshair_visible_118, f_default_crosshair_visible_119, line(category_plot_1, 518)).
assign(f_range_crosshair_value_120, category_plot_1_literal37, line(category_plot_1, 519)).
assign(f_range_crosshair_stroke_121, f_default_crosshair_stroke_81, line(category_plot_1, 520)).
assign(f_range_crosshair_paint_122, f_default_crosshair_paint_82, line(category_plot_1, 521)).
assign(f_annotations_123, category_plot_1_expr133, line(category_plot_1, 523)).
method_invoc(category_plot_1_expr133, m_array_list_60, line(category_plot_1, 523)).
param(p_orientation_124, 1, m_set_orientation_63).
param(p_offset_125, 1, m_set_axis_offset_65).
param(p_index_126, 1, m_get_domain_axis_67).
param(p_axis_127, 1, m_set_domain_axis_68).
param(p_index_128, 1, m_set_domain_axis_69).
param(p_axis_129, 2, m_set_domain_axis_69).
param(p_index_130, 1, m_set_domain_axis_70).
param(p_axis_131, 2, m_set_domain_axis_70).
param(p_notify_132, 3, m_set_domain_axis_70).
param(p_axes_133, 1, m_set_domain_axes_71).
param(p_axis_134, 1, m_get_domain_axis_index_72).
param(p_index_135, 1, m_get_domain_axis_location_74).
param(p_location_136, 1, m_set_domain_axis_location_75).
param(p_location_137, 1, m_set_domain_axis_location_50).
param(p_notify_138, 2, m_set_domain_axis_location_50).
method_invoc(category_plot_1_expr135, m_set_domain_axis_location_76, line(category_plot_1, 767)).
argument(category_plot_1_literal38, 1, category_plot_1_expr135).
argument(p_location_137, 2, category_plot_1_expr135).
argument(p_notify_138, 3, category_plot_1_expr135).
param(p_index_139, 1, m_set_domain_axis_location_77).
param(p_location_140, 2, m_set_domain_axis_location_77).
param(p_index_141, 1, m_set_domain_axis_location_76).
param(p_location_142, 2, m_set_domain_axis_location_76).
param(p_notify_143, 3, m_set_domain_axis_location_76).
method_invoc(category_plot_1_expr139, m_set_48, line(category_plot_1, 804)).
argument(p_index_141, 1, category_plot_1_expr139).
argument(p_location_142, 2, category_plot_1_expr139).
ref(f_domain_axis_locations_94, category_plot_1_expr139, line(category_plot_1, 804)).
param(p_index_144, 1, m_get_domain_axis_edge_79).
assign(v_i_145, category_plot_1_literal41, line(category_plot_1, 867)).
method_invoc(category_plot_1_expr144, m_size_82, line(category_plot_1, 867)).
ref(f_domain_axes_93, category_plot_1_expr144, line(category_plot_1, 867)).
assign(v_axis_146, category_plot_1_expr148, line(category_plot_1, 868)).
assign(category_plot_1_expr148, category_plot_1_expr149, line(category_plot_1, 868)).
method_invoc(category_plot_1_expr149, m_get_83, line(category_plot_1, 868)).
argument(v_i_145, 1, category_plot_1_expr149).
ref(f_domain_axes_93, category_plot_1_expr149, line(category_plot_1, 868)).
param(p_index_147, 1, m_get_range_axis_85).
assign(v_result_148, category_plot_1_literal43, line(category_plot_1, 894)).
method_invoc(category_plot_1_expr154, m_size_82, line(category_plot_1, 895)).
ref(f_range_axes_95, category_plot_1_expr154, line(category_plot_1, 895)).
assign(v_result_148, category_plot_1_expr158, line(category_plot_1, 896)).
assign(category_plot_1_expr158, category_plot_1_expr159, line(category_plot_1, 896)).
method_invoc(category_plot_1_expr159, m_get_83, line(category_plot_1, 896)).
argument(p_index_147, 1, category_plot_1_expr159).
ref(f_range_axes_95, category_plot_1_expr159, line(category_plot_1, 896)).
assign(v_parent_149, category_plot_1_expr163, line(category_plot_1, 899)).
method_invoc(category_plot_1_expr163, m_get_parent_86, line(category_plot_1, 899)).
return(v_result_148, m_get_range_axis_85, line(category_plot_1, 905)).
param(p_axis_150, 1, m_set_range_axis_87).
param(p_index_151, 1, m_set_range_axis_88).
param(p_axis_152, 2, m_set_range_axis_88).
param(p_index_153, 1, m_set_range_axis_89).
param(p_axis_154, 2, m_set_range_axis_89).
param(p_notify_155, 3, m_set_range_axis_89).
param(p_axes_156, 1, m_set_range_axes_90).
param(p_axis_157, 1, m_get_range_axis_index_91).
param(p_index_158, 1, m_get_range_axis_location_93).
param(p_location_159, 1, m_set_range_axis_location_94).
param(p_location_160, 1, m_set_range_axis_location_51).
param(p_notify_161, 2, m_set_range_axis_location_51).
method_invoc(category_plot_1_expr165, m_set_range_axis_location_95, line(category_plot_1, 1051)).
argument(category_plot_1_literal45, 1, category_plot_1_expr165).
argument(p_location_160, 2, category_plot_1_expr165).
argument(p_notify_161, 3, category_plot_1_expr165).
param(p_index_162, 1, m_set_range_axis_location_96).
param(p_location_163, 2, m_set_range_axis_location_96).
param(p_index_164, 1, m_set_range_axis_location_95).
param(p_location_165, 2, m_set_range_axis_location_95).
param(p_notify_166, 3, m_set_range_axis_location_95).
method_invoc(category_plot_1_expr169, m_set_48, line(category_plot_1, 1085)).
argument(p_index_164, 1, category_plot_1_expr169).
argument(p_location_165, 2, category_plot_1_expr169).
ref(f_range_axis_locations_96, category_plot_1_expr169, line(category_plot_1, 1085)).
param(p_index_167, 1, m_get_range_axis_edge_98).
assign(v_i_168, category_plot_1_literal48, line(category_plot_1, 1145)).
method_invoc(category_plot_1_expr174, m_size_82, line(category_plot_1, 1145)).
ref(f_range_axes_95, category_plot_1_expr174, line(category_plot_1, 1145)).
assign(v_axis_169, category_plot_1_expr178, line(category_plot_1, 1146)).
assign(category_plot_1_expr178, category_plot_1_expr179, line(category_plot_1, 1146)).
method_invoc(category_plot_1_expr179, m_get_83, line(category_plot_1, 1146)).
argument(v_i_168, 1, category_plot_1_expr179).
ref(f_range_axes_95, category_plot_1_expr179, line(category_plot_1, 1146)).
param(p_index_170, 1, m_get_dataset_102).
assign(v_result_171, category_plot_1_literal50, line(category_plot_1, 1174)).
method_invoc(category_plot_1_expr184, m_size_82, line(category_plot_1, 1175)).
ref(f_datasets_100, category_plot_1_expr184, line(category_plot_1, 1175)).
assign(v_result_171, category_plot_1_expr188, line(category_plot_1, 1176)).
assign(category_plot_1_expr188, category_plot_1_expr189, line(category_plot_1, 1176)).
method_invoc(category_plot_1_expr189, m_get_83, line(category_plot_1, 1176)).
argument(p_index_170, 1, category_plot_1_expr189).
ref(f_datasets_100, category_plot_1_expr189, line(category_plot_1, 1176)).
return(v_result_171, m_get_dataset_102, line(category_plot_1, 1178)).
param(p_dataset_172, 1, m_set_dataset_103).
param(p_index_173, 1, m_set_dataset_104).
param(p_dataset_174, 2, m_set_dataset_104).
param(p_index_175, 1, m_map_dataset_to_domain_axis_52).
param(p_axis_index_176, 2, m_map_dataset_to_domain_axis_52).
method_invoc(category_plot_1_expr192, m_set_48, line(category_plot_1, 1241)).
argument(p_index_175, 1, category_plot_1_expr192).
argument(category_plot_1_expr193, 2, category_plot_1_expr192).
ref(f_dataset_to_domain_axis_map_97, category_plot_1_expr192, line(category_plot_1, 1241)).
method_invoc(category_plot_1_expr193, m_integer_106, line(category_plot_1, 1241)).
argument(p_axis_index_176, 1, category_plot_1_expr193).
method_invoc(category_plot_1_expr196, m_dataset_changed_107, line(category_plot_1, 1243)).
argument(category_plot_1_expr197, 1, category_plot_1_expr196).
method_invoc(category_plot_1_expr197, m_dataset_change_event_108, line(category_plot_1, 1243)).
argument(category_plot_1_expr198, 1, category_plot_1_expr197).
argument(category_plot_1_expr199, 2, category_plot_1_expr197).
method_invoc(category_plot_1_expr199, m_get_dataset_102, line(category_plot_1, 1243)).
argument(p_index_175, 1, category_plot_1_expr199).
param(p_index_177, 1, m_get_domain_axis_for_dataset_109).
param(p_index_178, 1, m_map_dataset_to_range_axis_53).
param(p_axis_index_179, 2, m_map_dataset_to_range_axis_53).
method_invoc(category_plot_1_expr200, m_set_48, line(category_plot_1, 1274)).
argument(p_index_178, 1, category_plot_1_expr200).
argument(category_plot_1_expr201, 2, category_plot_1_expr200).
ref(f_dataset_to_range_axis_map_98, category_plot_1_expr200, line(category_plot_1, 1274)).
method_invoc(category_plot_1_expr201, m_integer_106, line(category_plot_1, 1274)).
argument(p_axis_index_179, 1, category_plot_1_expr201).
method_invoc(category_plot_1_expr204, m_dataset_changed_107, line(category_plot_1, 1276)).
argument(category_plot_1_expr205, 1, category_plot_1_expr204).
method_invoc(category_plot_1_expr205, m_dataset_change_event_108, line(category_plot_1, 1276)).
argument(category_plot_1_expr206, 1, category_plot_1_expr205).
argument(category_plot_1_expr207, 2, category_plot_1_expr205).
method_invoc(category_plot_1_expr207, m_get_dataset_102, line(category_plot_1, 1276)).
argument(p_index_178, 1, category_plot_1_expr207).
param(p_index_180, 1, m_get_range_axis_for_dataset_110).
param(p_index_181, 1, m_get_renderer_112).
param(p_renderer_182, 1, m_set_renderer_113).
param(p_renderer_183, 1, m_set_renderer_114).
param(p_notify_184, 2, m_set_renderer_114).
param(p_index_185, 1, m_set_renderer_115).
param(p_renderer_186, 2, m_set_renderer_115).
param(p_index_187, 1, m_set_renderer_116).
param(p_renderer_188, 2, m_set_renderer_116).
param(p_notify_189, 3, m_set_renderer_116).
param(p_renderers_190, 1, m_set_renderers_117).
param(p_dataset_191, 1, m_get_renderer_for_dataset_118).
param(p_renderer_192, 1, m_get_index_of_119).
param(p_order_193, 1, m_set_dataset_rendering_order_121).
param(p_order_194, 1, m_set_column_rendering_order_123).
param(p_order_195, 1, m_set_row_rendering_order_125).
param(p_visible_196, 1, m_set_domain_gridlines_visible_127).
param(p_position_197, 1, m_set_domain_gridline_position_129).
param(p_stroke_198, 1, m_set_domain_gridline_stroke_131).
param(p_paint_199, 1, m_set_domain_gridline_paint_133).
param(p_visible_200, 1, m_set_range_gridlines_visible_135).
param(p_stroke_201, 1, m_set_range_gridline_stroke_137).
param(p_paint_202, 1, m_set_range_gridline_paint_139).
param(p_items_203, 1, m_set_fixed_legend_items_141).
param(p_x_204, 1, m_handle_click_143).
param(p_y_205, 2, m_handle_click_143).
param(p_info_206, 3, m_handle_click_143).
param(p_percent_207, 1, m_zoom_144).
param(p_event_208, 1, m_dataset_changed_107).
assign(v_count_209, category_plot_1_expr208, line(category_plot_1, 1855)).
method_invoc(category_plot_1_expr208, m_size_82, line(category_plot_1, 1855)).
ref(f_range_axes_95, category_plot_1_expr208, line(category_plot_1, 1855)).
assign(v_axis_index_210, category_plot_1_literal51, line(category_plot_1, 1856)).
assign(v_y_axis_211, category_plot_1_expr214, line(category_plot_1, 1857)).
method_invoc(category_plot_1_expr214, m_get_range_axis_85, line(category_plot_1, 1857)).
argument(v_axis_index_210, 1, category_plot_1_expr214).
method_invoc(category_plot_1_expr217, m_get_parent_86, line(category_plot_1, 1862)).
assign(v_e_212, category_plot_1_expr218, line(category_plot_1, 1866)).
method_invoc(category_plot_1_expr218, m_plot_change_event_29, line(category_plot_1, 1866)).
argument(category_plot_1_expr219, 1, category_plot_1_expr218).
method_invoc(category_plot_1_expr220, m_set_type_21, line(category_plot_1, 1867)).
argument(q_dataset_updated_16, 1, category_plot_1_expr220).
ref(v_e_212, category_plot_1_expr220, line(category_plot_1, 1867)).
ref(t_chart_change_event_type_1, q_dataset_updated_16, line(category_plot_1, 1867)).
method_invoc(category_plot_1_expr221, m_notify_listeners_145, line(category_plot_1, 1868)).
argument(v_e_212, 1, category_plot_1_expr221).
param(p_event_213, 1, m_renderer_changed_146).
param(p_marker_214, 1, m_add_domain_marker_147).
param(p_marker_215, 1, m_add_domain_marker_148).
param(p_layer_216, 2, m_add_domain_marker_148).
param(p_index_217, 1, m_add_domain_marker_149).
param(p_marker_218, 2, m_add_domain_marker_149).
param(p_layer_219, 3, m_add_domain_marker_149).
param(p_index_220, 1, m_add_domain_marker_150).
param(p_marker_221, 2, m_add_domain_marker_150).
param(p_layer_222, 3, m_add_domain_marker_150).
param(p_notify_223, 4, m_add_domain_marker_150).
param(p_layer_224, 1, m_get_domain_markers_152).
param(p_index_225, 1, m_get_domain_markers_153).
param(p_layer_226, 2, m_get_domain_markers_153).
param(p_index_227, 1, m_clear_domain_markers_154).
param(p_marker_228, 1, m_remove_domain_marker_155).
return(category_plot_1_expr222, m_remove_domain_marker_155, line(category_plot_1, 2106)).
method_invoc(category_plot_1_expr222, m_remove_domain_marker_156, line(category_plot_1, 2106)).
argument(p_marker_228, 1, category_plot_1_expr222).
argument(q_foreground_17, 2, category_plot_1_expr222).
ref(t_layer_8, q_foreground_17, line(category_plot_1, 2106)).
param(p_marker_229, 1, m_remove_domain_marker_156).
param(p_layer_230, 2, m_remove_domain_marker_156).
return(category_plot_1_expr223, m_remove_domain_marker_156, line(category_plot_1, 2122)).
method_invoc(category_plot_1_expr223, m_remove_domain_marker_157, line(category_plot_1, 2122)).
argument(category_plot_1_literal54, 1, category_plot_1_expr223).
argument(p_marker_229, 2, category_plot_1_expr223).
argument(p_layer_230, 3, category_plot_1_expr223).
param(p_index_231, 1, m_remove_domain_marker_157).
param(p_marker_232, 2, m_remove_domain_marker_157).
param(p_layer_233, 3, m_remove_domain_marker_157).
return(category_plot_1_expr224, m_remove_domain_marker_157, line(category_plot_1, 2139)).
method_invoc(category_plot_1_expr224, m_remove_domain_marker_158, line(category_plot_1, 2139)).
throw(category_plot_1_expr224, null_pointer_exception, line(category_plot_1, 2139)).
argument(p_index_231, 1, category_plot_1_expr224).
argument(p_marker_232, 2, category_plot_1_expr224).
argument(p_layer_233, 3, category_plot_1_expr224).
argument(category_plot_1_literal55, 4, category_plot_1_expr224).
param(p_index_234, 1, m_remove_domain_marker_158).
param(p_marker_235, 2, m_remove_domain_marker_158).
param(p_layer_236, 3, m_remove_domain_marker_158).
param(p_notify_237, 4, m_remove_domain_marker_158).
ref(t_layer_8, q_foreground_18, line(category_plot_1, 2158)).
assign(v_markers_238, category_plot_1_expr227, line(category_plot_1, 2159)).
assign(category_plot_1_expr227, category_plot_1_expr228, line(category_plot_1, 2159)).
method_invoc(category_plot_1_expr228, m_get_159, line(category_plot_1, 2159)).
argument(category_plot_1_expr229, 1, category_plot_1_expr228).
ref(f_foreground_domain_markers_112, category_plot_1_expr228, line(category_plot_1, 2159)).
method_invoc(category_plot_1_expr229, m_integer_106, line(category_plot_1, 2159)).
argument(p_index_234, 1, category_plot_1_expr229).
assign(v_removed_239, category_plot_1_expr232, line(category_plot_1, 2166)).
method_invoc(category_plot_1_expr232, m_remove_160, line(category_plot_1, 2166)).
argument(p_marker_235, 1, category_plot_1_expr232).
ref(v_markers_238, category_plot_1_expr232, line(category_plot_1, 2166)).
param(p_marker_240, 1, m_add_range_marker_161).
param(p_marker_241, 1, m_add_range_marker_59).
param(p_layer_242, 2, m_add_range_marker_59).
method_invoc(category_plot_1_expr233, m_add_range_marker_162, line(category_plot_1, 2200)).
argument(category_plot_1_literal56, 1, category_plot_1_expr233).
argument(p_marker_241, 2, category_plot_1_expr233).
argument(p_layer_242, 3, category_plot_1_expr233).
param(p_index_243, 1, m_add_range_marker_162).
param(p_marker_244, 2, m_add_range_marker_162).
param(p_layer_245, 3, m_add_range_marker_162).
method_invoc(category_plot_1_expr234, m_add_range_marker_163, line(category_plot_1, 2217)).
argument(p_index_243, 1, category_plot_1_expr234).
argument(p_marker_244, 2, category_plot_1_expr234).
argument(p_layer_245, 3, category_plot_1_expr234).
argument(category_plot_1_literal57, 4, category_plot_1_expr234).
param(p_index_246, 1, m_add_range_marker_163).
param(p_marker_247, 2, m_add_range_marker_163).
param(p_layer_248, 3, m_add_range_marker_163).
param(p_notify_249, 4, m_add_range_marker_163).
ref(t_layer_8, q_foreground_18, line(category_plot_1, 2239)).
ref(t_layer_8, q_background_18, line(category_plot_1, 2248)).
assign(v_markers_250, category_plot_1_expr238, line(category_plot_1, 2249)).
assign(category_plot_1_expr238, category_plot_1_expr239, line(category_plot_1, 2249)).
method_invoc(category_plot_1_expr239, m_get_159, line(category_plot_1, 2249)).
argument(category_plot_1_expr240, 1, category_plot_1_expr239).
ref(f_background_range_markers_115, category_plot_1_expr239, line(category_plot_1, 2249)).
assign(v_markers_250, category_plot_1_expr245, line(category_plot_1, 2252)).
method_invoc(category_plot_1_expr245, m_array_list_60, line(category_plot_1, 2252)).
method_invoc(category_plot_1_expr246, m_put_164, line(category_plot_1, 2253)).
argument(category_plot_1_expr247, 1, category_plot_1_expr246).
argument(v_markers_250, 2, category_plot_1_expr246).
ref(f_background_range_markers_115, category_plot_1_expr246, line(category_plot_1, 2253)).
method_invoc(category_plot_1_expr247, m_integer_106, line(category_plot_1, 2253)).
argument(p_index_246, 1, category_plot_1_expr247).
method_invoc(category_plot_1_expr250, m_add_165, line(category_plot_1, 2255)).
argument(p_marker_247, 1, category_plot_1_expr250).
ref(v_markers_250, category_plot_1_expr250, line(category_plot_1, 2255)).
method_invoc(category_plot_1_expr251, m_add_change_listener_166, line(category_plot_1, 2257)).
argument(category_plot_1_expr252, 1, category_plot_1_expr251).
ref(p_marker_247, category_plot_1_expr251, line(category_plot_1, 2257)).
method_invoc(category_plot_1_expr253, m_fire_change_event_167, line(category_plot_1, 2259)).
param(p_layer_251, 1, m_get_range_markers_169).
param(p_index_252, 1, m_get_range_markers_170).
param(p_layer_253, 2, m_get_range_markers_170).
param(p_index_254, 1, m_clear_range_markers_171).
param(p_marker_255, 1, m_remove_range_marker_172).
return(category_plot_1_expr254, m_remove_range_marker_172, line(category_plot_1, 2378)).
method_invoc(category_plot_1_expr254, m_remove_range_marker_173, line(category_plot_1, 2378)).
argument(p_marker_255, 1, category_plot_1_expr254).
argument(q_foreground_18, 2, category_plot_1_expr254).
ref(t_layer_8, q_foreground_18, line(category_plot_1, 2378)).
param(p_marker_256, 1, m_remove_range_marker_173).
param(p_layer_257, 2, m_remove_range_marker_173).
return(category_plot_1_expr255, m_remove_range_marker_173, line(category_plot_1, 2396)).
method_invoc(category_plot_1_expr255, m_remove_range_marker_174, line(category_plot_1, 2396)).
argument(category_plot_1_literal59, 1, category_plot_1_expr255).
argument(p_marker_256, 2, category_plot_1_expr255).
argument(p_layer_257, 3, category_plot_1_expr255).
param(p_index_258, 1, m_remove_range_marker_174).
param(p_marker_259, 2, m_remove_range_marker_174).
param(p_layer_260, 3, m_remove_range_marker_174).
return(category_plot_1_expr256, m_remove_range_marker_174, line(category_plot_1, 2415)).
method_invoc(category_plot_1_expr256, m_remove_range_marker_175, line(category_plot_1, 2415)).
throw(category_plot_1_expr256, null_pointer_exception, line(category_plot_1, 2415)).
argument(p_index_258, 1, category_plot_1_expr256).
argument(p_marker_259, 2, category_plot_1_expr256).
argument(p_layer_260, 3, category_plot_1_expr256).
argument(category_plot_1_literal60, 4, category_plot_1_expr256).
param(p_index_261, 1, m_remove_range_marker_175).
param(p_marker_262, 2, m_remove_range_marker_175).
param(p_layer_263, 3, m_remove_range_marker_175).
param(p_notify_264, 4, m_remove_range_marker_175).
ref(t_layer_8, q_foreground_18, line(category_plot_1, 2440)).
assign(v_markers_265, category_plot_1_expr260, line(category_plot_1, 2441)).
assign(category_plot_1_expr260, category_plot_1_expr261, line(category_plot_1, 2441)).
method_invoc(category_plot_1_expr261, m_get_159, line(category_plot_1, 2441)).
argument(category_plot_1_expr262, 1, category_plot_1_expr261).
ref(f_foreground_range_markers_114, category_plot_1_expr261, line(category_plot_1, 2441)).
method_invoc(category_plot_1_expr262, m_integer_106, line(category_plot_1, 2441)).
argument(p_index_261, 1, category_plot_1_expr262).
assign(v_removed_266, category_plot_1_expr265, line(category_plot_1, 2448)).
method_invoc(category_plot_1_expr265, m_remove_160, line(category_plot_1, 2448)).
argument(p_marker_262, 1, category_plot_1_expr265).
ref(v_markers_265, category_plot_1_expr265, line(category_plot_1, 2448)).
param(p_flag_267, 1, m_set_range_crosshair_visible_177).
param(p_flag_268, 1, m_set_range_crosshair_locked_on_data_179).
param(p_value_269, 1, m_set_range_crosshair_value_181).
param(p_value_270, 1, m_set_range_crosshair_value_182).
param(p_notify_271, 2, m_set_range_crosshair_value_182).
param(p_stroke_272, 1, m_set_range_crosshair_stroke_184).
param(p_paint_273, 1, m_set_range_crosshair_paint_186).
param(p_annotation_274, 1, m_add_annotation_188).
param(p_annotation_275, 1, m_add_annotation_189).
param(p_notify_276, 2, m_add_annotation_189).
param(p_annotation_277, 1, m_remove_annotation_190).
param(p_annotation_278, 1, m_remove_annotation_191).
param(p_notify_279, 2, m_remove_annotation_191).
param(p_g_2_280, 1, m_calculate_domain_axis_space_193).
param(p_plot_area_281, 2, m_calculate_domain_axis_space_193).
param(p_space_282, 3, m_calculate_domain_axis_space_193).
param(p_g_2_283, 1, m_calculate_range_axis_space_194).
param(p_plot_area_284, 2, m_calculate_range_axis_space_194).
param(p_space_285, 3, m_calculate_range_axis_space_194).
param(p_g_2_286, 1, m_calculate_axis_space_195).
param(p_plot_area_287, 2, m_calculate_axis_space_195).
param(p_g_2_288, 1, m_draw_196).
param(p_area_289, 2, m_draw_196).
param(p_anchor_290, 3, m_draw_196).
param(p_parent_state_291, 4, m_draw_196).
param(p_state_292, 5, m_draw_196).
param(p_g_2_293, 1, m_draw_background_197).
param(p_area_294, 2, m_draw_background_197).
param(p_g_2_295, 1, m_draw_axes_198).
param(p_plot_area_296, 2, m_draw_axes_198).
param(p_data_area_297, 3, m_draw_axes_198).
param(p_plot_state_298, 4, m_draw_axes_198).
param(p_g_2_299, 1, m_render_199).
param(p_data_area_300, 2, m_render_199).
param(p_index_301, 3, m_render_199).
param(p_info_302, 4, m_render_199).
param(p_g_2_303, 1, m_draw_domain_gridlines_200).
param(p_data_area_304, 2, m_draw_domain_gridlines_200).
param(p_g_2_305, 1, m_draw_range_gridlines_201).
param(p_data_area_306, 2, m_draw_range_gridlines_201).
param(p_ticks_307, 3, m_draw_range_gridlines_201).
param(p_g_2_308, 1, m_draw_annotations_202).
param(p_data_area_309, 2, m_draw_annotations_202).
param(p_info_310, 3, m_draw_annotations_202).
param(p_g_2_311, 1, m_draw_domain_markers_203).
param(p_data_area_312, 2, m_draw_domain_markers_203).
param(p_index_313, 3, m_draw_domain_markers_203).
param(p_layer_314, 4, m_draw_domain_markers_203).
param(p_g_2_315, 1, m_draw_range_markers_204).
param(p_data_area_316, 2, m_draw_range_markers_204).
param(p_index_317, 3, m_draw_range_markers_204).
param(p_layer_318, 4, m_draw_range_markers_204).
param(p_g_2_319, 1, m_draw_range_line_205).
param(p_data_area_320, 2, m_draw_range_line_205).
param(p_value_321, 3, m_draw_range_line_205).
param(p_stroke_322, 4, m_draw_range_line_205).
param(p_paint_323, 5, m_draw_range_line_205).
param(p_g_2_324, 1, m_draw_range_crosshair_206).
param(p_data_area_325, 2, m_draw_range_crosshair_206).
param(p_orientation_326, 3, m_draw_range_crosshair_206).
param(p_value_327, 4, m_draw_range_crosshair_206).
param(p_axis_328, 5, m_draw_range_crosshair_206).
param(p_stroke_329, 6, m_draw_range_crosshair_206).
param(p_paint_330, 7, m_draw_range_crosshair_206).
param(p_axis_331, 1, m_get_data_range_207).
param(p_axis_index_332, 1, m_datasets_mapped_to_domain_axis_208).
param(p_index_333, 1, m_datasets_mapped_to_range_axis_209).
param(p_weight_334, 1, m_set_weight_211).
param(p_space_335, 1, m_set_fixed_domain_axis_space_213).
param(p_space_336, 1, m_set_fixed_domain_axis_space_214).
param(p_notify_337, 2, m_set_fixed_domain_axis_space_214).
param(p_space_338, 1, m_set_fixed_range_axis_space_216).
param(p_space_339, 1, m_set_fixed_range_axis_space_217).
param(p_notify_340, 2, m_set_fixed_range_axis_space_217).
param(p_axis_341, 1, m_get_categories_for_axis_219).
param(p_draw_342, 1, m_set_draw_shared_domain_axis_221).
param(p_factor_343, 1, m_zoom_domain_axes_224).
param(p_state_344, 2, m_zoom_domain_axes_224).
param(p_source_345, 3, m_zoom_domain_axes_224).
param(p_lower_percent_346, 1, m_zoom_domain_axes_225).
param(p_upper_percent_347, 2, m_zoom_domain_axes_225).
param(p_state_348, 3, m_zoom_domain_axes_225).
param(p_source_349, 4, m_zoom_domain_axes_225).
param(p_factor_350, 1, m_zoom_domain_axes_226).
param(p_info_351, 2, m_zoom_domain_axes_226).
param(p_source_352, 3, m_zoom_domain_axes_226).
param(p_use_anchor_353, 4, m_zoom_domain_axes_226).
param(p_factor_354, 1, m_zoom_range_axes_227).
param(p_state_355, 2, m_zoom_range_axes_227).
param(p_source_356, 3, m_zoom_range_axes_227).
param(p_factor_357, 1, m_zoom_range_axes_228).
param(p_info_358, 2, m_zoom_range_axes_228).
param(p_source_359, 3, m_zoom_range_axes_228).
param(p_use_anchor_360, 4, m_zoom_range_axes_228).
param(p_lower_percent_361, 1, m_zoom_range_axes_229).
param(p_upper_percent_362, 2, m_zoom_range_axes_229).
param(p_state_363, 3, m_zoom_range_axes_229).
param(p_source_364, 4, m_zoom_range_axes_229).
param(p_value_365, 1, m_set_anchor_value_231).
param(p_value_366, 1, m_set_anchor_value_232).
param(p_notify_367, 2, m_set_anchor_value_232).
param(p_obj_368, 1, m_equals_233).
throw(m_clone_234, clone_not_supported_exception).
param(p_stream_369, 1, m_write_object_235).
throw(m_write_object_235, ioexception).
param(p_stream_370, 1, m_read_object_236).
throw(m_read_object_236, ioexception).
throw(m_read_object_236, class_not_found_exception).

%object_list_1 - org.jfree.chart.util.ObjectList
param(p_initial_capacity_946, 1, m_object_list_650).
param(p_index_947, 1, m_get_83).
return(object_list_1_expr1, m_get_83, line(object_list_1, 85)).
method_invoc(object_list_1_expr1, m_get_630, line(object_list_1, 85)).
argument(p_index_947, 1, object_list_1_expr1).
param(p_index_948, 1, m_set_48).
param(p_object_949, 2, m_set_48).
method_invoc(object_list_1_expr2, m_set_631, line(object_list_1, 95)).
argument(p_index_948, 1, object_list_1_expr2).
argument(p_object_949, 2, object_list_1_expr2).
param(p_object_950, 1, m_index_of_651).

%plot_orientation_1 - org.jfree.chart.plot.PlotOrientation
assign(f_horizontal_544, plot_orientation_1_expr1, line(plot_orientation_1, 57)).
assign(f_vertical_545, plot_orientation_1_expr2, line(plot_orientation_1, 61)).
param(p_name_546, 1, m_plot_orientation_355).
assign(f_name_547, p_name_546, line(plot_orientation_1, 73)).
param(p_obj_548, 1, m_equals_357).
throw(m_read_resolve_359, object_stream_exception).

%chart_color_1 - org.jfree.chart.ChartColor
assign(f_very_dark_red_1, chart_color_1_expr1, line(chart_color_1, 59)).
method_invoc(chart_color_1_expr1, m_color_1, line(chart_color_1, 59)).
argument(chart_color_1_literal1, 1, chart_color_1_expr1).
argument(chart_color_1_literal2, 2, chart_color_1_expr1).
argument(chart_color_1_literal3, 3, chart_color_1_expr1).
assign(f_dark_red_2, chart_color_1_expr2, line(chart_color_1, 62)).
method_invoc(chart_color_1_expr2, m_color_1, line(chart_color_1, 62)).
argument(chart_color_1_literal4, 1, chart_color_1_expr2).
argument(chart_color_1_literal5, 2, chart_color_1_expr2).
argument(chart_color_1_literal6, 3, chart_color_1_expr2).
assign(f_light_red_3, chart_color_1_expr3, line(chart_color_1, 65)).
method_invoc(chart_color_1_expr3, m_color_1, line(chart_color_1, 65)).
argument(chart_color_1_literal7, 1, chart_color_1_expr3).
argument(chart_color_1_literal8, 2, chart_color_1_expr3).
argument(chart_color_1_literal9, 3, chart_color_1_expr3).
assign(f_very_light_red_4, chart_color_1_expr4, line(chart_color_1, 68)).
method_invoc(chart_color_1_expr4, m_color_1, line(chart_color_1, 68)).
argument(chart_color_1_literal10, 1, chart_color_1_expr4).
argument(chart_color_1_literal11, 2, chart_color_1_expr4).
argument(chart_color_1_literal12, 3, chart_color_1_expr4).
assign(f_very_dark_yellow_5, chart_color_1_expr5, line(chart_color_1, 71)).
method_invoc(chart_color_1_expr5, m_color_1, line(chart_color_1, 71)).
argument(chart_color_1_literal13, 1, chart_color_1_expr5).
argument(chart_color_1_literal14, 2, chart_color_1_expr5).
argument(chart_color_1_literal15, 3, chart_color_1_expr5).
assign(f_dark_yellow_6, chart_color_1_expr6, line(chart_color_1, 74)).
method_invoc(chart_color_1_expr6, m_color_1, line(chart_color_1, 74)).
argument(chart_color_1_literal16, 1, chart_color_1_expr6).
argument(chart_color_1_literal17, 2, chart_color_1_expr6).
argument(chart_color_1_literal18, 3, chart_color_1_expr6).
assign(f_light_yellow_7, chart_color_1_expr7, line(chart_color_1, 77)).
method_invoc(chart_color_1_expr7, m_color_1, line(chart_color_1, 77)).
argument(chart_color_1_literal19, 1, chart_color_1_expr7).
argument(chart_color_1_literal20, 2, chart_color_1_expr7).
argument(chart_color_1_literal21, 3, chart_color_1_expr7).
assign(f_very_light_yellow_8, chart_color_1_expr8, line(chart_color_1, 80)).
method_invoc(chart_color_1_expr8, m_color_1, line(chart_color_1, 80)).
argument(chart_color_1_literal22, 1, chart_color_1_expr8).
argument(chart_color_1_literal23, 2, chart_color_1_expr8).
argument(chart_color_1_literal24, 3, chart_color_1_expr8).
assign(f_very_dark_green_9, chart_color_1_expr9, line(chart_color_1, 83)).
method_invoc(chart_color_1_expr9, m_color_1, line(chart_color_1, 83)).
argument(chart_color_1_literal25, 1, chart_color_1_expr9).
argument(chart_color_1_literal26, 2, chart_color_1_expr9).
argument(chart_color_1_literal27, 3, chart_color_1_expr9).
assign(f_dark_green_10, chart_color_1_expr10, line(chart_color_1, 86)).
method_invoc(chart_color_1_expr10, m_color_1, line(chart_color_1, 86)).
argument(chart_color_1_literal28, 1, chart_color_1_expr10).
argument(chart_color_1_literal29, 2, chart_color_1_expr10).
argument(chart_color_1_literal30, 3, chart_color_1_expr10).
assign(f_light_green_11, chart_color_1_expr11, line(chart_color_1, 89)).
method_invoc(chart_color_1_expr11, m_color_1, line(chart_color_1, 89)).
argument(chart_color_1_literal31, 1, chart_color_1_expr11).
argument(chart_color_1_literal32, 2, chart_color_1_expr11).
argument(chart_color_1_literal33, 3, chart_color_1_expr11).
assign(f_very_light_green_12, chart_color_1_expr12, line(chart_color_1, 92)).
method_invoc(chart_color_1_expr12, m_color_1, line(chart_color_1, 92)).
argument(chart_color_1_literal34, 1, chart_color_1_expr12).
argument(chart_color_1_literal35, 2, chart_color_1_expr12).
argument(chart_color_1_literal36, 3, chart_color_1_expr12).
assign(f_very_dark_cyan_13, chart_color_1_expr13, line(chart_color_1, 95)).
method_invoc(chart_color_1_expr13, m_color_1, line(chart_color_1, 95)).
argument(chart_color_1_literal37, 1, chart_color_1_expr13).
argument(chart_color_1_literal38, 2, chart_color_1_expr13).
argument(chart_color_1_literal39, 3, chart_color_1_expr13).
assign(f_dark_cyan_14, chart_color_1_expr14, line(chart_color_1, 98)).
method_invoc(chart_color_1_expr14, m_color_1, line(chart_color_1, 98)).
argument(chart_color_1_literal40, 1, chart_color_1_expr14).
argument(chart_color_1_literal41, 2, chart_color_1_expr14).
argument(chart_color_1_literal42, 3, chart_color_1_expr14).
assign(f_light_cyan_15, chart_color_1_expr15, line(chart_color_1, 101)).
method_invoc(chart_color_1_expr15, m_color_1, line(chart_color_1, 101)).
argument(chart_color_1_literal43, 1, chart_color_1_expr15).
argument(chart_color_1_literal44, 2, chart_color_1_expr15).
argument(chart_color_1_literal45, 3, chart_color_1_expr15).
assign(f_very_light_cyan_16, chart_color_1_expr16, line(chart_color_1, 104)).
method_invoc(chart_color_1_expr16, m_color_1, line(chart_color_1, 104)).
argument(chart_color_1_literal46, 1, chart_color_1_expr16).
argument(chart_color_1_literal47, 2, chart_color_1_expr16).
argument(chart_color_1_literal48, 3, chart_color_1_expr16).
assign(f_very_dark_blue_17, chart_color_1_expr17, line(chart_color_1, 107)).
method_invoc(chart_color_1_expr17, m_color_1, line(chart_color_1, 107)).
argument(chart_color_1_literal49, 1, chart_color_1_expr17).
argument(chart_color_1_literal50, 2, chart_color_1_expr17).
argument(chart_color_1_literal51, 3, chart_color_1_expr17).
assign(f_dark_blue_18, chart_color_1_expr18, line(chart_color_1, 110)).
method_invoc(chart_color_1_expr18, m_color_1, line(chart_color_1, 110)).
argument(chart_color_1_literal52, 1, chart_color_1_expr18).
argument(chart_color_1_literal53, 2, chart_color_1_expr18).
argument(chart_color_1_literal54, 3, chart_color_1_expr18).
assign(f_light_blue_19, chart_color_1_expr19, line(chart_color_1, 113)).
method_invoc(chart_color_1_expr19, m_color_1, line(chart_color_1, 113)).
argument(chart_color_1_literal55, 1, chart_color_1_expr19).
argument(chart_color_1_literal56, 2, chart_color_1_expr19).
argument(chart_color_1_literal57, 3, chart_color_1_expr19).
assign(f_very_light_blue_20, chart_color_1_expr20, line(chart_color_1, 116)).
method_invoc(chart_color_1_expr20, m_color_1, line(chart_color_1, 116)).
argument(chart_color_1_literal58, 1, chart_color_1_expr20).
argument(chart_color_1_literal59, 2, chart_color_1_expr20).
argument(chart_color_1_literal60, 3, chart_color_1_expr20).
assign(f_very_dark_magenta_21, chart_color_1_expr21, line(chart_color_1, 119)).
method_invoc(chart_color_1_expr21, m_color_1, line(chart_color_1, 119)).
argument(chart_color_1_literal61, 1, chart_color_1_expr21).
argument(chart_color_1_literal62, 2, chart_color_1_expr21).
argument(chart_color_1_literal63, 3, chart_color_1_expr21).
assign(f_dark_magenta_22, chart_color_1_expr22, line(chart_color_1, 122)).
method_invoc(chart_color_1_expr22, m_color_1, line(chart_color_1, 122)).
argument(chart_color_1_literal64, 1, chart_color_1_expr22).
argument(chart_color_1_literal65, 2, chart_color_1_expr22).
argument(chart_color_1_literal66, 3, chart_color_1_expr22).
assign(f_light_magenta_23, chart_color_1_expr23, line(chart_color_1, 125)).
method_invoc(chart_color_1_expr23, m_color_1, line(chart_color_1, 125)).
argument(chart_color_1_literal67, 1, chart_color_1_expr23).
argument(chart_color_1_literal68, 2, chart_color_1_expr23).
argument(chart_color_1_literal69, 3, chart_color_1_expr23).
assign(f_very_light_magenta_24, chart_color_1_expr24, line(chart_color_1, 128)).
method_invoc(chart_color_1_expr24, m_color_1, line(chart_color_1, 128)).
argument(chart_color_1_literal70, 1, chart_color_1_expr24).
argument(chart_color_1_literal71, 2, chart_color_1_expr24).
argument(chart_color_1_literal72, 3, chart_color_1_expr24).
param(p_r_25, 1, m_chart_color_2).
param(p_g_26, 2, m_chart_color_2).
param(p_b_27, 3, m_chart_color_2).
return(chart_color_1_expr25, m_create_default_paint_array_3, line(chart_color_1, 151)).

%default_drawing_supplier_1 - org.jfree.chart.plot.DefaultDrawingSupplier
assign(f_default_paint_sequence_376, default_drawing_supplier_1_expr1, line(default_drawing_supplier_1, 83)).
assign(f_default_outline_paint_sequence_377, default_drawing_supplier_1_expr2, line(default_drawing_supplier_1, 87)).
assign(f_default_fill_paint_sequence_378, default_drawing_supplier_1_expr4, line(default_drawing_supplier_1, 91)).
assign(f_default_stroke_sequence_379, default_drawing_supplier_1_expr6, line(default_drawing_supplier_1, 95)).
assign(f_default_outline_stroke_sequence_380, default_drawing_supplier_1_expr8, line(default_drawing_supplier_1, 100)).
assign(f_default_shape_sequence_381, default_drawing_supplier_1_expr9, line(default_drawing_supplier_1, 105)).
method_invoc(default_drawing_supplier_1_expr10, m_default_drawing_supplier_243, line(default_drawing_supplier_1, 150)).
argument(f_default_paint_sequence_376, 1, default_drawing_supplier_1_expr10).
argument(f_default_fill_paint_sequence_378, 2, default_drawing_supplier_1_expr10).
argument(f_default_outline_paint_sequence_377, 3, default_drawing_supplier_1_expr10).
argument(f_default_stroke_sequence_379, 4, default_drawing_supplier_1_expr10).
argument(f_default_outline_stroke_sequence_380, 5, default_drawing_supplier_1_expr10).
argument(f_default_shape_sequence_381, 6, default_drawing_supplier_1_expr10).
param(p_paint_sequence_382, 1, m_default_drawing_supplier_244).
param(p_outline_paint_sequence_383, 2, m_default_drawing_supplier_244).
param(p_stroke_sequence_384, 3, m_default_drawing_supplier_244).
param(p_outline_stroke_sequence_385, 4, m_default_drawing_supplier_244).
param(p_shape_sequence_386, 5, m_default_drawing_supplier_244).
param(p_paint_sequence_387, 1, m_default_drawing_supplier_243).
param(p_fill_paint_sequence_388, 2, m_default_drawing_supplier_243).
param(p_outline_paint_sequence_389, 3, m_default_drawing_supplier_243).
param(p_stroke_sequence_390, 4, m_default_drawing_supplier_243).
param(p_outline_stroke_sequence_391, 5, m_default_drawing_supplier_243).
param(p_shape_sequence_392, 6, m_default_drawing_supplier_243).
assign(f_paint_sequence_393, p_paint_sequence_387, line(default_drawing_supplier_1, 199)).
assign(f_fill_paint_sequence_394, p_fill_paint_sequence_388, line(default_drawing_supplier_1, 200)).
assign(f_outline_paint_sequence_395, p_outline_paint_sequence_389, line(default_drawing_supplier_1, 201)).
assign(f_stroke_sequence_396, p_stroke_sequence_390, line(default_drawing_supplier_1, 202)).
assign(f_outline_stroke_sequence_397, p_outline_stroke_sequence_391, line(default_drawing_supplier_1, 203)).
assign(f_shape_sequence_398, p_shape_sequence_392, line(default_drawing_supplier_1, 204)).
assign(v_result_399, default_drawing_supplier_1_expr29, line(default_drawing_supplier_1, 289)).
assign(v_size_400, default_drawing_supplier_1_literal2, line(default_drawing_supplier_1, 291)).
assign(v_delta_401, default_drawing_supplier_1_expr30, line(default_drawing_supplier_1, 292)).
assign(v_xpoints_402, default_drawing_supplier_1_literal4, line(default_drawing_supplier_1, 293)).
assign(v_ypoints_403, default_drawing_supplier_1_literal5, line(default_drawing_supplier_1, 294)).
assign(default_drawing_supplier_1_expr32, default_drawing_supplier_1_expr33, line(default_drawing_supplier_1, 297)).
ref(v_result_399, default_drawing_supplier_1_expr32, line(default_drawing_supplier_1, 297)).
method_invoc(default_drawing_supplier_1_expr33, m_double_252, line(default_drawing_supplier_1, 297)).
argument(default_drawing_supplier_1_expr34, 1, default_drawing_supplier_1_expr33).
argument(default_drawing_supplier_1_expr35, 2, default_drawing_supplier_1_expr33).
argument(v_size_400, 3, default_drawing_supplier_1_expr33).
argument(v_size_400, 4, default_drawing_supplier_1_expr33).
assign(default_drawing_supplier_1_expr37, default_drawing_supplier_1_expr38, line(default_drawing_supplier_1, 299)).
ref(v_result_399, default_drawing_supplier_1_expr37, line(default_drawing_supplier_1, 299)).
method_invoc(default_drawing_supplier_1_expr38, m_double_253, line(default_drawing_supplier_1, 299)).
argument(default_drawing_supplier_1_expr39, 1, default_drawing_supplier_1_expr38).
argument(default_drawing_supplier_1_expr40, 2, default_drawing_supplier_1_expr38).
argument(v_size_400, 3, default_drawing_supplier_1_expr38).
argument(v_size_400, 4, default_drawing_supplier_1_expr38).
assign(v_xpoints_402, default_drawing_supplier_1_expr42, line(default_drawing_supplier_1, 302)).
method_invoc(default_drawing_supplier_1_expr42, m_int_array_254, line(default_drawing_supplier_1, 302)).
argument(default_drawing_supplier_1_literal8, 1, default_drawing_supplier_1_expr42).
argument(v_delta_401, 2, default_drawing_supplier_1_expr42).
argument(default_drawing_supplier_1_expr43, 3, default_drawing_supplier_1_expr42).
assign(v_ypoints_403, default_drawing_supplier_1_expr45, line(default_drawing_supplier_1, 303)).
method_invoc(default_drawing_supplier_1_expr45, m_int_array_254, line(default_drawing_supplier_1, 303)).
argument(default_drawing_supplier_1_expr46, 1, default_drawing_supplier_1_expr45).
argument(v_delta_401, 2, default_drawing_supplier_1_expr45).
argument(v_delta_401, 3, default_drawing_supplier_1_expr45).
assign(default_drawing_supplier_1_expr48, default_drawing_supplier_1_expr49, line(default_drawing_supplier_1, 304)).
ref(v_result_399, default_drawing_supplier_1_expr48, line(default_drawing_supplier_1, 304)).
method_invoc(default_drawing_supplier_1_expr49, m_polygon_255, line(default_drawing_supplier_1, 304)).
argument(v_xpoints_402, 1, default_drawing_supplier_1_expr49).
argument(v_ypoints_403, 2, default_drawing_supplier_1_expr49).
argument(default_drawing_supplier_1_literal10, 3, default_drawing_supplier_1_expr49).
assign(v_xpoints_402, default_drawing_supplier_1_expr51, line(default_drawing_supplier_1, 307)).
method_invoc(default_drawing_supplier_1_expr51, m_int_array_256, line(default_drawing_supplier_1, 307)).
argument(default_drawing_supplier_1_literal11, 1, default_drawing_supplier_1_expr51).
argument(v_delta_401, 2, default_drawing_supplier_1_expr51).
argument(default_drawing_supplier_1_literal12, 3, default_drawing_supplier_1_expr51).
argument(default_drawing_supplier_1_expr52, 4, default_drawing_supplier_1_expr51).
assign(v_ypoints_403, default_drawing_supplier_1_expr54, line(default_drawing_supplier_1, 308)).
method_invoc(default_drawing_supplier_1_expr54, m_int_array_256, line(default_drawing_supplier_1, 308)).
argument(default_drawing_supplier_1_expr55, 1, default_drawing_supplier_1_expr54).
argument(default_drawing_supplier_1_literal13, 2, default_drawing_supplier_1_expr54).
argument(v_delta_401, 3, default_drawing_supplier_1_expr54).
argument(default_drawing_supplier_1_literal14, 4, default_drawing_supplier_1_expr54).
assign(default_drawing_supplier_1_expr57, default_drawing_supplier_1_expr58, line(default_drawing_supplier_1, 309)).
ref(v_result_399, default_drawing_supplier_1_expr57, line(default_drawing_supplier_1, 309)).
method_invoc(default_drawing_supplier_1_expr58, m_polygon_255, line(default_drawing_supplier_1, 309)).
argument(v_xpoints_402, 1, default_drawing_supplier_1_expr58).
argument(v_ypoints_403, 2, default_drawing_supplier_1_expr58).
argument(default_drawing_supplier_1_literal16, 3, default_drawing_supplier_1_expr58).
assign(default_drawing_supplier_1_expr60, default_drawing_supplier_1_expr61, line(default_drawing_supplier_1, 312)).
ref(v_result_399, default_drawing_supplier_1_expr60, line(default_drawing_supplier_1, 312)).
method_invoc(default_drawing_supplier_1_expr61, m_double_252, line(default_drawing_supplier_1, 312)).
argument(default_drawing_supplier_1_expr62, 1, default_drawing_supplier_1_expr61).
argument(default_drawing_supplier_1_expr63, 2, default_drawing_supplier_1_expr61).
argument(v_size_400, 3, default_drawing_supplier_1_expr61).
argument(default_drawing_supplier_1_expr64, 4, default_drawing_supplier_1_expr61).
assign(v_xpoints_402, default_drawing_supplier_1_expr67, line(default_drawing_supplier_1, 315)).
method_invoc(default_drawing_supplier_1_expr67, m_int_array_254, line(default_drawing_supplier_1, 315)).
argument(default_drawing_supplier_1_expr68, 1, default_drawing_supplier_1_expr67).
argument(default_drawing_supplier_1_expr69, 2, default_drawing_supplier_1_expr67).
argument(default_drawing_supplier_1_literal20, 3, default_drawing_supplier_1_expr67).
assign(v_ypoints_403, default_drawing_supplier_1_expr71, line(default_drawing_supplier_1, 316)).
method_invoc(default_drawing_supplier_1_expr71, m_int_array_254, line(default_drawing_supplier_1, 316)).
argument(default_drawing_supplier_1_expr72, 1, default_drawing_supplier_1_expr71).
argument(default_drawing_supplier_1_expr73, 2, default_drawing_supplier_1_expr71).
argument(v_delta_401, 3, default_drawing_supplier_1_expr71).
assign(default_drawing_supplier_1_expr75, default_drawing_supplier_1_expr76, line(default_drawing_supplier_1, 317)).
ref(v_result_399, default_drawing_supplier_1_expr75, line(default_drawing_supplier_1, 317)).
method_invoc(default_drawing_supplier_1_expr76, m_polygon_255, line(default_drawing_supplier_1, 317)).
argument(v_xpoints_402, 1, default_drawing_supplier_1_expr76).
argument(v_ypoints_403, 2, default_drawing_supplier_1_expr76).
argument(default_drawing_supplier_1_literal22, 3, default_drawing_supplier_1_expr76).
assign(default_drawing_supplier_1_expr78, default_drawing_supplier_1_expr79, line(default_drawing_supplier_1, 320)).
ref(v_result_399, default_drawing_supplier_1_expr78, line(default_drawing_supplier_1, 320)).
method_invoc(default_drawing_supplier_1_expr79, m_double_253, line(default_drawing_supplier_1, 320)).
argument(default_drawing_supplier_1_expr80, 1, default_drawing_supplier_1_expr79).
argument(default_drawing_supplier_1_expr81, 2, default_drawing_supplier_1_expr79).
argument(v_size_400, 3, default_drawing_supplier_1_expr79).
argument(default_drawing_supplier_1_expr82, 4, default_drawing_supplier_1_expr79).
assign(v_xpoints_402, default_drawing_supplier_1_expr85, line(default_drawing_supplier_1, 323)).
method_invoc(default_drawing_supplier_1_expr85, m_int_array_254, line(default_drawing_supplier_1, 323)).
argument(default_drawing_supplier_1_expr86, 1, default_drawing_supplier_1_expr85).
argument(v_delta_401, 2, default_drawing_supplier_1_expr85).
argument(default_drawing_supplier_1_expr87, 3, default_drawing_supplier_1_expr85).
assign(v_ypoints_403, default_drawing_supplier_1_expr89, line(default_drawing_supplier_1, 324)).
method_invoc(default_drawing_supplier_1_expr89, m_int_array_254, line(default_drawing_supplier_1, 324)).
argument(default_drawing_supplier_1_expr90, 1, default_drawing_supplier_1_expr89).
argument(default_drawing_supplier_1_literal26, 2, default_drawing_supplier_1_expr89).
argument(v_delta_401, 3, default_drawing_supplier_1_expr89).
assign(default_drawing_supplier_1_expr92, default_drawing_supplier_1_expr93, line(default_drawing_supplier_1, 325)).
ref(v_result_399, default_drawing_supplier_1_expr92, line(default_drawing_supplier_1, 325)).
method_invoc(default_drawing_supplier_1_expr93, m_polygon_255, line(default_drawing_supplier_1, 325)).
argument(v_xpoints_402, 1, default_drawing_supplier_1_expr93).
argument(v_ypoints_403, 2, default_drawing_supplier_1_expr93).
argument(default_drawing_supplier_1_literal28, 3, default_drawing_supplier_1_expr93).
assign(default_drawing_supplier_1_expr95, default_drawing_supplier_1_expr96, line(default_drawing_supplier_1, 328)).
ref(v_result_399, default_drawing_supplier_1_expr95, line(default_drawing_supplier_1, 328)).
method_invoc(default_drawing_supplier_1_expr96, m_double_252, line(default_drawing_supplier_1, 328)).
argument(default_drawing_supplier_1_expr97, 1, default_drawing_supplier_1_expr96).
argument(default_drawing_supplier_1_expr98, 2, default_drawing_supplier_1_expr96).
argument(default_drawing_supplier_1_expr99, 3, default_drawing_supplier_1_expr96).
argument(v_size_400, 4, default_drawing_supplier_1_expr96).
assign(v_xpoints_402, default_drawing_supplier_1_expr102, line(default_drawing_supplier_1, 331)).
method_invoc(default_drawing_supplier_1_expr102, m_int_array_254, line(default_drawing_supplier_1, 331)).
argument(default_drawing_supplier_1_expr103, 1, default_drawing_supplier_1_expr102).
argument(v_delta_401, 2, default_drawing_supplier_1_expr102).
argument(v_delta_401, 3, default_drawing_supplier_1_expr102).
assign(v_ypoints_403, default_drawing_supplier_1_expr105, line(default_drawing_supplier_1, 332)).
method_invoc(default_drawing_supplier_1_expr105, m_int_array_254, line(default_drawing_supplier_1, 332)).
argument(default_drawing_supplier_1_literal32, 1, default_drawing_supplier_1_expr105).
argument(default_drawing_supplier_1_expr106, 2, default_drawing_supplier_1_expr105).
argument(default_drawing_supplier_1_expr107, 3, default_drawing_supplier_1_expr105).
assign(default_drawing_supplier_1_expr109, default_drawing_supplier_1_expr110, line(default_drawing_supplier_1, 333)).
ref(v_result_399, default_drawing_supplier_1_expr109, line(default_drawing_supplier_1, 333)).
method_invoc(default_drawing_supplier_1_expr110, m_polygon_255, line(default_drawing_supplier_1, 333)).
argument(v_xpoints_402, 1, default_drawing_supplier_1_expr110).
argument(v_ypoints_403, 2, default_drawing_supplier_1_expr110).
argument(default_drawing_supplier_1_literal34, 3, default_drawing_supplier_1_expr110).
return(v_result_399, m_create_standard_series_shapes_251, line(default_drawing_supplier_1, 335)).
param(p_obj_404, 1, m_equals_257).
param(p_s_1_405, 1, m_equal_shapes_258).
param(p_s_2_406, 2, m_equal_shapes_258).
param(p_stream_407, 1, m_write_object_259).
throw(m_write_object_259, ioexception).
param(p_stream_408, 1, m_read_object_260).
throw(m_read_object_260, ioexception).
throw(m_read_object_260, class_not_found_exception).
param(p_a_409, 1, m_int_array_254).
param(p_b_410, 2, m_int_array_254).
param(p_c_411, 3, m_int_array_254).
return(default_drawing_supplier_1_expr111, m_int_array_254, line(default_drawing_supplier_1, 517)).
assign(default_drawing_supplier_1_expr113, p_a_409, line(default_drawing_supplier_1, 517)).
assign(default_drawing_supplier_1_expr114, p_b_410, line(default_drawing_supplier_1, 517)).
assign(default_drawing_supplier_1_expr115, p_c_411, line(default_drawing_supplier_1, 517)).
param(p_a_412, 1, m_int_array_256).
param(p_b_413, 2, m_int_array_256).
param(p_c_414, 3, m_int_array_256).
param(p_d_415, 4, m_int_array_256).
return(default_drawing_supplier_1_expr116, m_int_array_256, line(default_drawing_supplier_1, 532)).
assign(default_drawing_supplier_1_expr118, p_a_412, line(default_drawing_supplier_1, 532)).
assign(default_drawing_supplier_1_expr119, p_b_413, line(default_drawing_supplier_1, 532)).
assign(default_drawing_supplier_1_expr120, p_c_414, line(default_drawing_supplier_1, 532)).
assign(default_drawing_supplier_1_expr121, p_d_415, line(default_drawing_supplier_1, 532)).
throw(m_clone_261, clone_not_supported_exception).

%unit_type_1 - org.jfree.chart.util.UnitType
assign(f_absolute_974, unit_type_1_expr1, line(unit_type_1, 56)).
method_invoc(unit_type_1_expr1, m_unit_type_692, line(unit_type_1, 56)).
argument(unit_type_1_literal1, 1, unit_type_1_expr1).
assign(f_relative_1015, unit_type_1_expr2, line(unit_type_1, 59)).
method_invoc(unit_type_1_expr2, m_unit_type_692, line(unit_type_1, 59)).
argument(unit_type_1_literal2, 1, unit_type_1_expr2).
param(p_name_1016, 1, m_unit_type_692).
assign(f_name_1017, p_name_1016, line(unit_type_1, 70)).
param(p_obj_1018, 1, m_equals_694).
throw(m_read_resolve_696, object_stream_exception).

%axis_location_1 - org.jfree.chart.axis.AxisLocation
assign(f_top_or_left_28, axis_location_1_expr1, line(axis_location_1, 61)).
method_invoc(axis_location_1_expr1, m_axis_location_4, line(axis_location_1, 61)).
argument(axis_location_1_literal1, 1, axis_location_1_expr1).
assign(f_top_or_right_29, axis_location_1_expr2, line(axis_location_1, 65)).
method_invoc(axis_location_1_expr2, m_axis_location_4, line(axis_location_1, 65)).
argument(axis_location_1_literal2, 1, axis_location_1_expr2).
assign(f_bottom_or_left_30, axis_location_1_expr3, line(axis_location_1, 69)).
method_invoc(axis_location_1_expr3, m_axis_location_4, line(axis_location_1, 69)).
argument(axis_location_1_literal3, 1, axis_location_1_expr3).
assign(f_bottom_or_right_31, axis_location_1_expr4, line(axis_location_1, 73)).
method_invoc(axis_location_1_expr4, m_axis_location_4, line(axis_location_1, 73)).
argument(axis_location_1_literal4, 1, axis_location_1_expr4).
param(p_name_32, 1, m_axis_location_4).
assign(f_name_33, p_name_32, line(axis_location_1, 85)).
param(p_obj_34, 1, m_equals_7).
param(p_location_35, 1, m_get_opposite_8).
throw(m_read_resolve_9, object_stream_exception).

%dataset_rendering_order_1 - org.jfree.chart.plot.DatasetRenderingOrder
assign(f_forward_371, dataset_rendering_order_1_expr1, line(dataset_rendering_order_1, 62)).
assign(f_reverse_372, dataset_rendering_order_1_expr2, line(dataset_rendering_order_1, 69)).
param(p_name_373, 1, m_dataset_rendering_order_237).
assign(f_name_374, p_name_373, line(dataset_rendering_order_1, 81)).
param(p_obj_375, 1, m_equals_239).
throw(m_read_resolve_241, object_stream_exception).

%chart_change_event_type_1 - org.jfree.chart.event.ChartChangeEventType
assign(f_general_43, chart_change_event_type_1_expr1, line(chart_change_event_type_1, 55)).
assign(f_new_dataset_53, chart_change_event_type_1_expr2, line(chart_change_event_type_1, 59)).
assign(f_dataset_updated_54, chart_change_event_type_1_expr3, line(chart_change_event_type_1, 63)).
param(p_name_55, 1, m_chart_change_event_type_22).
assign(f_name_56, p_name_55, line(chart_change_event_type_1, 75)).
param(p_obj_57, 1, m_equals_24).
throw(m_read_resolve_26, object_stream_exception).

%marker_change_event_1 - org.jfree.chart.event.MarkerChangeEvent
param(p_marker_58, 1, m_marker_change_event_27).
method_invoc(marker_change_event_1_expr1, m_chart_change_event_14, line(marker_change_event_1, 65)).
argument(p_marker_58, 1, marker_change_event_1_expr1).
assign(f_marker_59, p_marker_58, line(marker_change_event_1, 66)).

%xyplot_1 - org.jfree.chart.plot.XYPlot
assign(f_default_gridline_stroke_567, xyplot_1_expr1, line(xyplot_1, 284)).
method_invoc(xyplot_1_expr1, m_basic_stroke_42, line(xyplot_1, 284)).
argument(xyplot_1_literal1, 1, xyplot_1_expr1).
argument(q_cap_butt_26, 2, xyplot_1_expr1).
argument(q_join_bevel_26, 3, xyplot_1_expr1).
argument(xyplot_1_literal2, 4, xyplot_1_expr1).
argument(xyplot_1_expr2, 5, xyplot_1_expr1).
argument(xyplot_1_literal3, 6, xyplot_1_expr1).
assign(f_default_gridline_paint_568, q_white_26, line(xyplot_1, 289)).
ref(t_color_2, q_white_26, line(xyplot_1, 289)).
assign(f_default_crosshair_stroke_569, f_default_gridline_stroke_567, line(xyplot_1, 295)).
assign(f_default_crosshair_paint_570, q_blue_26, line(xyplot_1, 299)).
ref(t_color_2, q_blue_26, line(xyplot_1, 299)).
assign(f_localization_resources_571, xyplot_1_expr3, line(xyplot_1, 302)).
assign(f_quadrant_origin_572, xyplot_1_expr4, line(xyplot_1, 345)).
method_invoc(xyplot_1_expr4, m_double_370, line(xyplot_1, 345)).
argument(xyplot_1_literal4, 1, xyplot_1_expr4).
argument(xyplot_1_literal5, 2, xyplot_1_expr4).
assign(f_quadrant_paint_573, xyplot_1_expr5, line(xyplot_1, 348)).
assign(f_domain_crosshair_locked_on_data_574, xyplot_1_literal6, line(xyplot_1, 419)).
assign(f_range_crosshair_locked_on_data_575, xyplot_1_literal7, line(xyplot_1, 437)).
assign(f_dataset_rendering_order_576, q_reverse_26, line(xyplot_1, 474)).
assign(f_series_rendering_order_577, q_reverse_26, line(xyplot_1, 481)).
method_invoc(xyplot_1_expr6, m_xyplot_372, line(xyplot_1, 501)).
argument(xyplot_1_literal8, 1, xyplot_1_expr6).
argument(xyplot_1_literal9, 2, xyplot_1_expr6).
argument(xyplot_1_literal10, 3, xyplot_1_expr6).
argument(xyplot_1_literal11, 4, xyplot_1_expr6).
param(p_dataset_578, 1, m_xyplot_372).
param(p_domain_axis_579, 2, m_xyplot_372).
param(p_range_axis_580, 3, m_xyplot_372).
param(p_renderer_581, 4, m_xyplot_372).
method_invoc(xyplot_1_expr7, m_plot_46, line(xyplot_1, 520)).
assign(f_orientation_582, q_vertical_27, line(xyplot_1, 522)).
ref(t_plot_orientation_5, q_vertical_27, line(xyplot_1, 522)).
assign(f_weight_583, xyplot_1_literal12, line(xyplot_1, 523)).
assign(f_axis_offset_584, xyplot_1_expr16, line(xyplot_1, 524)).
method_invoc(xyplot_1_expr16, m_rectangle_insets_49, line(xyplot_1, 524)).
argument(xyplot_1_literal13, 1, xyplot_1_expr16).
argument(xyplot_1_literal14, 2, xyplot_1_expr16).
argument(xyplot_1_literal15, 3, xyplot_1_expr16).
argument(xyplot_1_literal16, 4, xyplot_1_expr16).
assign(f_domain_axes_585, xyplot_1_expr20, line(xyplot_1, 527)).
method_invoc(xyplot_1_expr20, m_object_list_47, line(xyplot_1, 527)).
assign(f_domain_axis_locations_586, xyplot_1_expr24, line(xyplot_1, 528)).
method_invoc(xyplot_1_expr24, m_object_list_47, line(xyplot_1, 528)).
assign(f_foreground_domain_markers_587, xyplot_1_expr28, line(xyplot_1, 529)).
method_invoc(xyplot_1_expr28, m_hash_map_56, line(xyplot_1, 529)).
assign(f_background_domain_markers_588, xyplot_1_expr32, line(xyplot_1, 530)).
method_invoc(xyplot_1_expr32, m_hash_map_56, line(xyplot_1, 530)).
assign(f_range_axes_589, xyplot_1_expr36, line(xyplot_1, 532)).
method_invoc(xyplot_1_expr36, m_object_list_47, line(xyplot_1, 532)).
assign(f_range_axis_locations_590, xyplot_1_expr40, line(xyplot_1, 533)).
method_invoc(xyplot_1_expr40, m_object_list_47, line(xyplot_1, 533)).
assign(f_foreground_range_markers_591, xyplot_1_expr44, line(xyplot_1, 534)).
method_invoc(xyplot_1_expr44, m_hash_map_56, line(xyplot_1, 534)).
assign(f_background_range_markers_592, xyplot_1_expr48, line(xyplot_1, 535)).
method_invoc(xyplot_1_expr48, m_hash_map_56, line(xyplot_1, 535)).
assign(f_datasets_593, xyplot_1_expr52, line(xyplot_1, 537)).
method_invoc(xyplot_1_expr52, m_object_list_47, line(xyplot_1, 537)).
assign(f_renderers_594, xyplot_1_expr56, line(xyplot_1, 538)).
method_invoc(xyplot_1_expr56, m_object_list_47, line(xyplot_1, 538)).
assign(f_dataset_to_domain_axis_map_595, xyplot_1_expr60, line(xyplot_1, 540)).
method_invoc(xyplot_1_expr60, m_tree_map_373, line(xyplot_1, 540)).
assign(f_dataset_to_range_axis_map_596, xyplot_1_expr64, line(xyplot_1, 541)).
method_invoc(xyplot_1_expr64, m_tree_map_373, line(xyplot_1, 541)).
method_invoc(xyplot_1_expr66, m_set_48, line(xyplot_1, 543)).
argument(xyplot_1_literal17, 1, xyplot_1_expr66).
argument(p_dataset_578, 2, xyplot_1_expr66).
ref(f_datasets_593, xyplot_1_expr66, line(xyplot_1, 543)).
method_invoc(xyplot_1_expr70, m_set_48, line(xyplot_1, 548)).
argument(xyplot_1_literal19, 1, xyplot_1_expr70).
argument(p_renderer_581, 2, xyplot_1_expr70).
ref(f_renderers_594, xyplot_1_expr70, line(xyplot_1, 548)).
method_invoc(xyplot_1_expr74, m_set_48, line(xyplot_1, 554)).
argument(xyplot_1_literal21, 1, xyplot_1_expr74).
argument(p_domain_axis_579, 2, xyplot_1_expr74).
ref(f_domain_axes_585, xyplot_1_expr74, line(xyplot_1, 554)).
method_invoc(xyplot_1_expr77, m_map_dataset_to_domain_axis_374, line(xyplot_1, 555)).
argument(xyplot_1_literal22, 1, xyplot_1_expr77).
argument(xyplot_1_literal23, 2, xyplot_1_expr77).
ref(xyplot_1_expr78, xyplot_1_expr77, line(xyplot_1, 555)).
method_invoc(xyplot_1_expr80, m_set_48, line(xyplot_1, 560)).
argument(xyplot_1_literal25, 1, xyplot_1_expr80).
argument(q_bottom_or_left_27, 2, xyplot_1_expr80).
ref(f_domain_axis_locations_586, xyplot_1_expr80, line(xyplot_1, 560)).
ref(t_axis_location_6, q_bottom_or_left_27, line(xyplot_1, 560)).
method_invoc(xyplot_1_expr83, m_set_48, line(xyplot_1, 562)).
argument(xyplot_1_literal26, 1, xyplot_1_expr83).
argument(p_range_axis_580, 2, xyplot_1_expr83).
ref(f_range_axes_589, xyplot_1_expr83, line(xyplot_1, 562)).
method_invoc(xyplot_1_expr86, m_map_dataset_to_range_axis_375, line(xyplot_1, 563)).
argument(xyplot_1_literal27, 1, xyplot_1_expr86).
argument(xyplot_1_literal28, 2, xyplot_1_expr86).
ref(xyplot_1_expr87, xyplot_1_expr86, line(xyplot_1, 563)).
method_invoc(xyplot_1_expr89, m_set_48, line(xyplot_1, 568)).
argument(xyplot_1_literal30, 1, xyplot_1_expr89).
argument(q_bottom_or_left_27, 2, xyplot_1_expr89).
ref(f_range_axis_locations_590, xyplot_1_expr89, line(xyplot_1, 568)).
ref(t_axis_location_6, q_bottom_or_left_27, line(xyplot_1, 568)).
method_invoc(xyplot_1_expr92, m_configure_domain_axes_376, line(xyplot_1, 570)).
method_invoc(xyplot_1_expr93, m_configure_range_axes_377, line(xyplot_1, 571)).
assign(f_domain_gridlines_visible_597, xyplot_1_literal31, line(xyplot_1, 573)).
assign(f_domain_gridline_stroke_598, f_default_gridline_stroke_567, line(xyplot_1, 574)).
assign(f_domain_gridline_paint_599, f_default_gridline_paint_568, line(xyplot_1, 575)).
assign(f_domain_zero_baseline_visible_600, xyplot_1_literal32, line(xyplot_1, 577)).
assign(f_domain_zero_baseline_paint_601, q_black_27, line(xyplot_1, 578)).
ref(t_color_2, q_black_27, line(xyplot_1, 578)).
assign(f_domain_zero_baseline_stroke_602, xyplot_1_expr111, line(xyplot_1, 579)).
method_invoc(xyplot_1_expr111, m_basic_stroke_33, line(xyplot_1, 579)).
argument(xyplot_1_literal33, 1, xyplot_1_expr111).
assign(f_range_gridlines_visible_603, xyplot_1_literal34, line(xyplot_1, 581)).
assign(f_range_gridline_stroke_604, f_default_gridline_stroke_567, line(xyplot_1, 582)).
assign(f_range_gridline_paint_605, f_default_gridline_paint_568, line(xyplot_1, 583)).
assign(f_range_zero_baseline_visible_606, xyplot_1_literal35, line(xyplot_1, 585)).
assign(f_range_zero_baseline_paint_607, q_black_27, line(xyplot_1, 586)).
ref(t_color_2, q_black_27, line(xyplot_1, 586)).
assign(f_range_zero_baseline_stroke_608, xyplot_1_expr130, line(xyplot_1, 587)).
method_invoc(xyplot_1_expr130, m_basic_stroke_33, line(xyplot_1, 587)).
argument(xyplot_1_literal36, 1, xyplot_1_expr130).
assign(f_domain_crosshair_visible_609, xyplot_1_literal37, line(xyplot_1, 589)).
assign(f_domain_crosshair_value_610, xyplot_1_literal38, line(xyplot_1, 590)).
assign(f_domain_crosshair_stroke_611, f_default_crosshair_stroke_569, line(xyplot_1, 591)).
assign(f_domain_crosshair_paint_612, f_default_crosshair_paint_570, line(xyplot_1, 592)).
assign(f_range_crosshair_visible_613, xyplot_1_literal39, line(xyplot_1, 594)).
assign(f_range_crosshair_value_614, xyplot_1_literal40, line(xyplot_1, 595)).
assign(f_range_crosshair_stroke_615, f_default_crosshair_stroke_569, line(xyplot_1, 596)).
assign(f_range_crosshair_paint_616, f_default_crosshair_paint_570, line(xyplot_1, 597)).
assign(f_annotations_617, xyplot_1_expr158, line(xyplot_1, 599)).
method_invoc(xyplot_1_expr158, m_array_list_60, line(xyplot_1, 599)).
param(p_orientation_618, 1, m_set_orientation_380).
param(p_offset_619, 1, m_set_axis_offset_382).
param(p_index_620, 1, m_get_domain_axis_384).
param(p_axis_621, 1, m_set_domain_axis_385).
param(p_index_622, 1, m_set_domain_axis_386).
param(p_axis_623, 2, m_set_domain_axis_386).
param(p_index_624, 1, m_set_domain_axis_387).
param(p_axis_625, 2, m_set_domain_axis_387).
param(p_notify_626, 3, m_set_domain_axis_387).
param(p_axes_627, 1, m_set_domain_axes_388).
param(p_location_628, 1, m_set_domain_axis_location_390).
param(p_location_629, 1, m_set_domain_axis_location_391).
param(p_notify_630, 2, m_set_domain_axis_location_391).
assign(v_i_631, xyplot_1_literal41, line(xyplot_1, 860)).
method_invoc(xyplot_1_expr162, m_size_82, line(xyplot_1, 860)).
ref(f_domain_axes_585, xyplot_1_expr162, line(xyplot_1, 860)).
assign(v_axis_632, xyplot_1_expr166, line(xyplot_1, 861)).
assign(xyplot_1_expr166, xyplot_1_expr167, line(xyplot_1, 861)).
method_invoc(xyplot_1_expr167, m_get_83, line(xyplot_1, 861)).
argument(v_i_631, 1, xyplot_1_expr167).
ref(f_domain_axes_585, xyplot_1_expr167, line(xyplot_1, 861)).
param(p_index_633, 1, m_get_domain_axis_location_395).
param(p_index_634, 1, m_set_domain_axis_location_396).
param(p_location_635, 2, m_set_domain_axis_location_396).
param(p_index_636, 1, m_set_domain_axis_location_397).
param(p_location_637, 2, m_set_domain_axis_location_397).
param(p_notify_638, 3, m_set_domain_axis_location_397).
param(p_index_639, 1, m_get_domain_axis_edge_398).
param(p_axis_640, 1, m_set_range_axis_400).
param(p_location_641, 1, m_set_range_axis_location_402).
param(p_location_642, 1, m_set_range_axis_location_403).
param(p_notify_643, 2, m_set_range_axis_location_403).
param(p_index_644, 1, m_get_range_axis_405).
param(p_index_645, 1, m_set_range_axis_406).
param(p_axis_646, 2, m_set_range_axis_406).
param(p_index_647, 1, m_set_range_axis_407).
param(p_axis_648, 2, m_set_range_axis_407).
param(p_notify_649, 3, m_set_range_axis_407).
param(p_axes_650, 1, m_set_range_axes_408).
assign(v_i_651, xyplot_1_literal43, line(xyplot_1, 1160)).
method_invoc(xyplot_1_expr173, m_size_82, line(xyplot_1, 1160)).
ref(f_range_axes_589, xyplot_1_expr173, line(xyplot_1, 1160)).
assign(v_axis_652, xyplot_1_expr177, line(xyplot_1, 1161)).
assign(xyplot_1_expr177, xyplot_1_expr178, line(xyplot_1, 1161)).
method_invoc(xyplot_1_expr178, m_get_83, line(xyplot_1, 1161)).
argument(v_i_651, 1, xyplot_1_expr178).
ref(f_range_axes_589, xyplot_1_expr178, line(xyplot_1, 1161)).
param(p_index_653, 1, m_get_range_axis_location_411).
param(p_index_654, 1, m_set_range_axis_location_412).
param(p_location_655, 2, m_set_range_axis_location_412).
param(p_index_656, 1, m_set_range_axis_location_413).
param(p_location_657, 2, m_set_range_axis_location_413).
param(p_notify_658, 3, m_set_range_axis_location_413).
param(p_index_659, 1, m_get_range_axis_edge_414).
param(p_index_660, 1, m_get_dataset_416).
assign(v_result_661, xyplot_1_literal45, line(xyplot_1, 1273)).
method_invoc(xyplot_1_expr183, m_size_82, line(xyplot_1, 1274)).
ref(f_datasets_593, xyplot_1_expr183, line(xyplot_1, 1274)).
assign(v_result_661, xyplot_1_expr187, line(xyplot_1, 1275)).
assign(xyplot_1_expr187, xyplot_1_expr188, line(xyplot_1, 1275)).
method_invoc(xyplot_1_expr188, m_get_83, line(xyplot_1, 1275)).
argument(p_index_660, 1, xyplot_1_expr188).
ref(f_datasets_593, xyplot_1_expr188, line(xyplot_1, 1275)).
return(v_result_661, m_get_dataset_416, line(xyplot_1, 1277)).
param(p_dataset_662, 1, m_set_dataset_417).
param(p_index_663, 1, m_set_dataset_418).
param(p_dataset_664, 2, m_set_dataset_418).
param(p_dataset_665, 1, m_index_of_420).
param(p_index_666, 1, m_map_dataset_to_domain_axis_374).
param(p_axis_index_667, 2, m_map_dataset_to_domain_axis_374).
method_invoc(xyplot_1_expr191, m_put_164, line(xyplot_1, 1354)).
argument(xyplot_1_expr192, 1, xyplot_1_expr191).
argument(xyplot_1_expr193, 2, xyplot_1_expr191).
ref(f_dataset_to_domain_axis_map_595, xyplot_1_expr191, line(xyplot_1, 1354)).
method_invoc(xyplot_1_expr192, m_integer_106, line(xyplot_1, 1354)).
argument(p_index_666, 1, xyplot_1_expr192).
method_invoc(xyplot_1_expr196, m_dataset_changed_421, line(xyplot_1, 1357)).
argument(xyplot_1_expr197, 1, xyplot_1_expr196).
method_invoc(xyplot_1_expr197, m_dataset_change_event_108, line(xyplot_1, 1357)).
argument(xyplot_1_expr198, 1, xyplot_1_expr197).
argument(xyplot_1_expr199, 2, xyplot_1_expr197).
method_invoc(xyplot_1_expr199, m_get_dataset_416, line(xyplot_1, 1357)).
argument(p_index_666, 1, xyplot_1_expr199).
param(p_index_668, 1, m_map_dataset_to_range_axis_375).
param(p_axis_index_669, 2, m_map_dataset_to_range_axis_375).
method_invoc(xyplot_1_expr200, m_put_164, line(xyplot_1, 1370)).
argument(xyplot_1_expr201, 1, xyplot_1_expr200).
argument(xyplot_1_expr202, 2, xyplot_1_expr200).
ref(f_dataset_to_range_axis_map_596, xyplot_1_expr200, line(xyplot_1, 1370)).
method_invoc(xyplot_1_expr201, m_integer_106, line(xyplot_1, 1370)).
argument(p_index_668, 1, xyplot_1_expr201).
method_invoc(xyplot_1_expr205, m_dataset_changed_421, line(xyplot_1, 1373)).
argument(xyplot_1_expr206, 1, xyplot_1_expr205).
method_invoc(xyplot_1_expr206, m_dataset_change_event_108, line(xyplot_1, 1373)).
argument(xyplot_1_expr207, 1, xyplot_1_expr206).
argument(xyplot_1_expr208, 2, xyplot_1_expr206).
method_invoc(xyplot_1_expr208, m_get_dataset_416, line(xyplot_1, 1373)).
argument(p_index_668, 1, xyplot_1_expr208).
param(p_index_670, 1, m_get_renderer_423).
param(p_renderer_671, 1, m_set_renderer_424).
param(p_index_672, 1, m_set_renderer_425).
param(p_renderer_673, 2, m_set_renderer_425).
param(p_index_674, 1, m_set_renderer_426).
param(p_renderer_675, 2, m_set_renderer_426).
param(p_notify_676, 3, m_set_renderer_426).
param(p_renderers_677, 1, m_set_renderers_427).
param(p_order_678, 1, m_set_dataset_rendering_order_429).
param(p_order_679, 1, m_set_series_rendering_order_431).
param(p_renderer_680, 1, m_get_index_of_432).
param(p_dataset_681, 1, m_get_renderer_for_dataset_433).
param(p_weight_682, 1, m_set_weight_435).
param(p_visible_683, 1, m_set_domain_gridlines_visible_437).
param(p_stroke_684, 1, m_set_domain_gridline_stroke_439).
param(p_paint_685, 1, m_set_domain_gridline_paint_441).
param(p_visible_686, 1, m_set_range_gridlines_visible_443).
param(p_stroke_687, 1, m_set_range_gridline_stroke_445).
param(p_paint_688, 1, m_set_range_gridline_paint_447).
param(p_visible_689, 1, m_set_domain_zero_baseline_visible_449).
param(p_stroke_690, 1, m_set_domain_zero_baseline_stroke_451).
param(p_paint_691, 1, m_set_domain_zero_baseline_paint_453).
param(p_visible_692, 1, m_set_range_zero_baseline_visible_455).
param(p_stroke_693, 1, m_set_range_zero_baseline_stroke_457).
param(p_paint_694, 1, m_set_range_zero_baseline_paint_459).
param(p_paint_695, 1, m_set_domain_tick_band_paint_461).
param(p_paint_696, 1, m_set_range_tick_band_paint_463).
param(p_origin_697, 1, m_set_quadrant_origin_465).
param(p_index_698, 1, m_get_quadrant_paint_466).
param(p_index_699, 1, m_set_quadrant_paint_467).
param(p_paint_700, 2, m_set_quadrant_paint_467).
param(p_marker_701, 1, m_add_domain_marker_468).
param(p_marker_702, 1, m_add_domain_marker_469).
param(p_layer_703, 2, m_add_domain_marker_469).
param(p_index_704, 1, m_clear_domain_markers_471).
param(p_index_705, 1, m_add_domain_marker_472).
param(p_marker_706, 2, m_add_domain_marker_472).
param(p_layer_707, 3, m_add_domain_marker_472).
param(p_index_708, 1, m_add_domain_marker_473).
param(p_marker_709, 2, m_add_domain_marker_473).
param(p_layer_710, 3, m_add_domain_marker_473).
param(p_notify_711, 4, m_add_domain_marker_473).
param(p_marker_712, 1, m_remove_domain_marker_474).
return(xyplot_1_expr209, m_remove_domain_marker_474, line(xyplot_1, 2232)).
method_invoc(xyplot_1_expr209, m_remove_domain_marker_475, line(xyplot_1, 2232)).
argument(p_marker_712, 1, xyplot_1_expr209).
argument(q_foreground_27, 2, xyplot_1_expr209).
ref(t_layer_8, q_foreground_27, line(xyplot_1, 2232)).
param(p_marker_713, 1, m_remove_domain_marker_475).
param(p_layer_714, 2, m_remove_domain_marker_475).
return(xyplot_1_expr210, m_remove_domain_marker_475, line(xyplot_1, 2248)).
method_invoc(xyplot_1_expr210, m_remove_domain_marker_476, line(xyplot_1, 2248)).
argument(xyplot_1_literal46, 1, xyplot_1_expr210).
argument(p_marker_713, 2, xyplot_1_expr210).
argument(p_layer_714, 3, xyplot_1_expr210).
param(p_index_715, 1, m_remove_domain_marker_476).
param(p_marker_716, 2, m_remove_domain_marker_476).
param(p_layer_717, 3, m_remove_domain_marker_476).
return(xyplot_1_expr211, m_remove_domain_marker_476, line(xyplot_1, 2265)).
method_invoc(xyplot_1_expr211, m_remove_domain_marker_477, line(xyplot_1, 2265)).
throw(xyplot_1_expr211, null_pointer_exception, line(xyplot_1, 2265)).
argument(p_index_715, 1, xyplot_1_expr211).
argument(p_marker_716, 2, xyplot_1_expr211).
argument(p_layer_717, 3, xyplot_1_expr211).
argument(xyplot_1_literal47, 4, xyplot_1_expr211).
param(p_index_718, 1, m_remove_domain_marker_477).
param(p_marker_719, 2, m_remove_domain_marker_477).
param(p_layer_720, 3, m_remove_domain_marker_477).
param(p_notify_721, 4, m_remove_domain_marker_477).
ref(t_layer_8, q_foreground_27, line(xyplot_1, 2285)).
assign(v_markers_722, xyplot_1_expr214, line(xyplot_1, 2286)).
assign(xyplot_1_expr214, xyplot_1_expr215, line(xyplot_1, 2286)).
method_invoc(xyplot_1_expr215, m_get_159, line(xyplot_1, 2286)).
argument(xyplot_1_expr216, 1, xyplot_1_expr215).
ref(f_foreground_domain_markers_587, xyplot_1_expr215, line(xyplot_1, 2286)).
method_invoc(xyplot_1_expr216, m_integer_106, line(xyplot_1, 2286)).
argument(p_index_718, 1, xyplot_1_expr216).
assign(v_removed_723, xyplot_1_expr219, line(xyplot_1, 2293)).
method_invoc(xyplot_1_expr219, m_remove_160, line(xyplot_1, 2293)).
argument(p_marker_719, 1, xyplot_1_expr219).
ref(v_markers_722, xyplot_1_expr219, line(xyplot_1, 2293)).
param(p_marker_724, 1, m_add_range_marker_478).
param(p_marker_725, 1, m_add_range_marker_479).
param(p_layer_726, 2, m_add_range_marker_479).
param(p_index_727, 1, m_add_range_marker_481).
param(p_marker_728, 2, m_add_range_marker_481).
param(p_layer_729, 3, m_add_range_marker_481).
param(p_index_730, 1, m_add_range_marker_482).
param(p_marker_731, 2, m_add_range_marker_482).
param(p_layer_732, 3, m_add_range_marker_482).
param(p_notify_733, 4, m_add_range_marker_482).
param(p_index_734, 1, m_clear_range_markers_483).
param(p_marker_735, 1, m_remove_range_marker_484).
return(xyplot_1_expr220, m_remove_range_marker_484, line(xyplot_1, 2465)).
method_invoc(xyplot_1_expr220, m_remove_range_marker_485, line(xyplot_1, 2465)).
argument(p_marker_735, 1, xyplot_1_expr220).
argument(q_foreground_27, 2, xyplot_1_expr220).
ref(t_layer_8, q_foreground_27, line(xyplot_1, 2465)).
param(p_marker_736, 1, m_remove_range_marker_485).
param(p_layer_737, 2, m_remove_range_marker_485).
return(xyplot_1_expr221, m_remove_range_marker_485, line(xyplot_1, 2481)).
method_invoc(xyplot_1_expr221, m_remove_range_marker_486, line(xyplot_1, 2481)).
argument(xyplot_1_literal48, 1, xyplot_1_expr221).
argument(p_marker_736, 2, xyplot_1_expr221).
argument(p_layer_737, 3, xyplot_1_expr221).
param(p_index_738, 1, m_remove_range_marker_486).
param(p_marker_739, 2, m_remove_range_marker_486).
param(p_layer_740, 3, m_remove_range_marker_486).
return(xyplot_1_expr222, m_remove_range_marker_486, line(xyplot_1, 2498)).
method_invoc(xyplot_1_expr222, m_remove_range_marker_487, line(xyplot_1, 2498)).
throw(xyplot_1_expr222, null_pointer_exception, line(xyplot_1, 2498)).
argument(p_index_738, 1, xyplot_1_expr222).
argument(p_marker_739, 2, xyplot_1_expr222).
argument(p_layer_740, 3, xyplot_1_expr222).
argument(xyplot_1_literal49, 4, xyplot_1_expr222).
param(p_index_741, 1, m_remove_range_marker_487).
param(p_marker_742, 2, m_remove_range_marker_487).
param(p_layer_743, 3, m_remove_range_marker_487).
param(p_notify_744, 4, m_remove_range_marker_487).
ref(t_layer_8, q_foreground_27, line(xyplot_1, 2521)).
assign(v_markers_745, xyplot_1_expr226, line(xyplot_1, 2522)).
assign(xyplot_1_expr226, xyplot_1_expr227, line(xyplot_1, 2522)).
method_invoc(xyplot_1_expr227, m_get_159, line(xyplot_1, 2522)).
argument(xyplot_1_expr228, 1, xyplot_1_expr227).
ref(f_foreground_range_markers_591, xyplot_1_expr227, line(xyplot_1, 2522)).
method_invoc(xyplot_1_expr228, m_integer_106, line(xyplot_1, 2522)).
argument(p_index_741, 1, xyplot_1_expr228).
assign(v_removed_746, xyplot_1_expr231, line(xyplot_1, 2529)).
method_invoc(xyplot_1_expr231, m_remove_160, line(xyplot_1, 2529)).
argument(p_marker_742, 1, xyplot_1_expr231).
ref(v_markers_745, xyplot_1_expr231, line(xyplot_1, 2529)).
param(p_annotation_747, 1, m_add_annotation_488).
param(p_annotation_748, 1, m_add_annotation_489).
param(p_notify_749, 2, m_add_annotation_489).
param(p_annotation_750, 1, m_remove_annotation_490).
param(p_annotation_751, 1, m_remove_annotation_491).
param(p_notify_752, 2, m_remove_annotation_491).
param(p_g_2_753, 1, m_calculate_axis_space_494).
param(p_plot_area_754, 2, m_calculate_axis_space_494).
param(p_g_2_755, 1, m_calculate_domain_axis_space_495).
param(p_plot_area_756, 2, m_calculate_domain_axis_space_495).
param(p_space_757, 3, m_calculate_domain_axis_space_495).
param(p_g_2_758, 1, m_calculate_range_axis_space_496).
param(p_plot_area_759, 2, m_calculate_range_axis_space_496).
param(p_space_760, 3, m_calculate_range_axis_space_496).
param(p_g_2_761, 1, m_draw_497).
param(p_area_762, 2, m_draw_497).
param(p_anchor_763, 3, m_draw_497).
param(p_parent_state_764, 4, m_draw_497).
param(p_info_765, 5, m_draw_497).
param(p_g_2_766, 1, m_draw_background_498).
param(p_area_767, 2, m_draw_background_498).
param(p_g_2_768, 1, m_draw_quadrants_499).
param(p_area_769, 2, m_draw_quadrants_499).
param(p_g_2_770, 1, m_draw_domain_tick_bands_500).
param(p_data_area_771, 2, m_draw_domain_tick_bands_500).
param(p_ticks_772, 3, m_draw_domain_tick_bands_500).
param(p_g_2_773, 1, m_draw_range_tick_bands_501).
param(p_data_area_774, 2, m_draw_range_tick_bands_501).
param(p_ticks_775, 3, m_draw_range_tick_bands_501).
param(p_g_2_776, 1, m_draw_axes_502).
param(p_plot_area_777, 2, m_draw_axes_502).
param(p_data_area_778, 3, m_draw_axes_502).
param(p_plot_state_779, 4, m_draw_axes_502).
param(p_g_2_780, 1, m_render_503).
param(p_data_area_781, 2, m_render_503).
param(p_index_782, 3, m_render_503).
param(p_info_783, 4, m_render_503).
param(p_crosshair_state_784, 5, m_render_503).
param(p_index_785, 1, m_get_domain_axis_for_dataset_504).
param(p_index_786, 1, m_get_range_axis_for_dataset_505).
param(p_g_2_787, 1, m_draw_domain_gridlines_506).
param(p_data_area_788, 2, m_draw_domain_gridlines_506).
param(p_ticks_789, 3, m_draw_domain_gridlines_506).
param(p_g_2_790, 1, m_draw_range_gridlines_507).
param(p_area_791, 2, m_draw_range_gridlines_507).
param(p_ticks_792, 3, m_draw_range_gridlines_507).
param(p_g_2_793, 1, m_draw_zero_domain_baseline_508).
param(p_area_794, 2, m_draw_zero_domain_baseline_508).
param(p_g_2_795, 1, m_draw_zero_range_baseline_509).
param(p_area_796, 2, m_draw_zero_range_baseline_509).
param(p_g_2_797, 1, m_draw_annotations_510).
param(p_data_area_798, 2, m_draw_annotations_510).
param(p_info_799, 3, m_draw_annotations_510).
param(p_g_2_800, 1, m_draw_domain_markers_511).
param(p_data_area_801, 2, m_draw_domain_markers_511).
param(p_index_802, 3, m_draw_domain_markers_511).
param(p_layer_803, 4, m_draw_domain_markers_511).
param(p_g_2_804, 1, m_draw_range_markers_512).
param(p_data_area_805, 2, m_draw_range_markers_512).
param(p_index_806, 3, m_draw_range_markers_512).
param(p_layer_807, 4, m_draw_range_markers_512).
param(p_layer_808, 1, m_get_domain_markers_513).
param(p_layer_809, 1, m_get_range_markers_514).
param(p_index_810, 1, m_get_domain_markers_515).
param(p_layer_811, 2, m_get_domain_markers_515).
param(p_index_812, 1, m_get_range_markers_516).
param(p_layer_813, 2, m_get_range_markers_516).
param(p_g_2_814, 1, m_draw_horizontal_line_517).
param(p_data_area_815, 2, m_draw_horizontal_line_517).
param(p_value_816, 3, m_draw_horizontal_line_517).
param(p_stroke_817, 4, m_draw_horizontal_line_517).
param(p_paint_818, 5, m_draw_horizontal_line_517).
param(p_g_2_819, 1, m_draw_domain_crosshair_518).
param(p_data_area_820, 2, m_draw_domain_crosshair_518).
param(p_orientation_821, 3, m_draw_domain_crosshair_518).
param(p_value_822, 4, m_draw_domain_crosshair_518).
param(p_axis_823, 5, m_draw_domain_crosshair_518).
param(p_stroke_824, 6, m_draw_domain_crosshair_518).
param(p_paint_825, 7, m_draw_domain_crosshair_518).
param(p_g_2_826, 1, m_draw_vertical_line_519).
param(p_data_area_827, 2, m_draw_vertical_line_519).
param(p_value_828, 3, m_draw_vertical_line_519).
param(p_stroke_829, 4, m_draw_vertical_line_519).
param(p_paint_830, 5, m_draw_vertical_line_519).
param(p_g_2_831, 1, m_draw_range_crosshair_520).
param(p_data_area_832, 2, m_draw_range_crosshair_520).
param(p_orientation_833, 3, m_draw_range_crosshair_520).
param(p_value_834, 4, m_draw_range_crosshair_520).
param(p_axis_835, 5, m_draw_range_crosshair_520).
param(p_stroke_836, 6, m_draw_range_crosshair_520).
param(p_paint_837, 7, m_draw_range_crosshair_520).
param(p_x_838, 1, m_handle_click_521).
param(p_y_839, 2, m_handle_click_521).
param(p_info_840, 3, m_handle_click_521).
param(p_axis_index_841, 1, m_get_datasets_mapped_to_domain_axis_522).
param(p_axis_index_842, 1, m_get_datasets_mapped_to_range_axis_523).
param(p_axis_843, 1, m_get_domain_axis_index_524).
param(p_axis_844, 1, m_get_range_axis_index_525).
param(p_axis_845, 1, m_get_data_range_526).
param(p_event_846, 1, m_dataset_changed_421).
method_invoc(xyplot_1_expr232, m_configure_domain_axes_376, line(xyplot_1, 4033)).
method_invoc(xyplot_1_expr233, m_configure_range_axes_377, line(xyplot_1, 4034)).
method_invoc(xyplot_1_expr235, m_get_parent_86, line(xyplot_1, 4035)).
assign(v_e_847, xyplot_1_expr236, line(xyplot_1, 4039)).
method_invoc(xyplot_1_expr236, m_plot_change_event_29, line(xyplot_1, 4039)).
argument(xyplot_1_expr237, 1, xyplot_1_expr236).
method_invoc(xyplot_1_expr238, m_set_type_21, line(xyplot_1, 4040)).
argument(q_dataset_updated_27, 1, xyplot_1_expr238).
ref(v_e_847, xyplot_1_expr238, line(xyplot_1, 4040)).
ref(t_chart_change_event_type_1, q_dataset_updated_27, line(xyplot_1, 4040)).
method_invoc(xyplot_1_expr239, m_notify_listeners_145, line(xyplot_1, 4041)).
argument(v_e_847, 1, xyplot_1_expr239).
param(p_event_848, 1, m_renderer_changed_527).
param(p_flag_849, 1, m_set_domain_crosshair_visible_529).
param(p_flag_850, 1, m_set_domain_crosshair_locked_on_data_531).
param(p_value_851, 1, m_set_domain_crosshair_value_533).
param(p_value_852, 1, m_set_domain_crosshair_value_534).
param(p_notify_853, 2, m_set_domain_crosshair_value_534).
param(p_stroke_854, 1, m_set_domain_crosshair_stroke_536).
param(p_paint_855, 1, m_set_domain_crosshair_paint_538).
param(p_flag_856, 1, m_set_range_crosshair_visible_540).
param(p_flag_857, 1, m_set_range_crosshair_locked_on_data_542).
param(p_value_858, 1, m_set_range_crosshair_value_544).
param(p_value_859, 1, m_set_range_crosshair_value_545).
param(p_notify_860, 2, m_set_range_crosshair_value_545).
param(p_stroke_861, 1, m_set_range_crosshair_stroke_547).
param(p_paint_862, 1, m_set_range_crosshair_paint_549).
param(p_space_863, 1, m_set_fixed_domain_axis_space_551).
param(p_space_864, 1, m_set_fixed_domain_axis_space_552).
param(p_notify_865, 2, m_set_fixed_domain_axis_space_552).
param(p_space_866, 1, m_set_fixed_range_axis_space_554).
param(p_space_867, 1, m_set_fixed_range_axis_space_555).
param(p_notify_868, 2, m_set_fixed_range_axis_space_555).
param(p_factor_869, 1, m_zoom_domain_axes_556).
param(p_info_870, 2, m_zoom_domain_axes_556).
param(p_source_871, 3, m_zoom_domain_axes_556).
param(p_factor_872, 1, m_zoom_domain_axes_557).
param(p_info_873, 2, m_zoom_domain_axes_557).
param(p_source_874, 3, m_zoom_domain_axes_557).
param(p_use_anchor_875, 4, m_zoom_domain_axes_557).
param(p_lower_percent_876, 1, m_zoom_domain_axes_558).
param(p_upper_percent_877, 2, m_zoom_domain_axes_558).
param(p_info_878, 3, m_zoom_domain_axes_558).
param(p_source_879, 4, m_zoom_domain_axes_558).
param(p_factor_880, 1, m_zoom_range_axes_559).
param(p_info_881, 2, m_zoom_range_axes_559).
param(p_source_882, 3, m_zoom_range_axes_559).
param(p_factor_883, 1, m_zoom_range_axes_560).
param(p_info_884, 2, m_zoom_range_axes_560).
param(p_source_885, 3, m_zoom_range_axes_560).
param(p_use_anchor_886, 4, m_zoom_range_axes_560).
param(p_lower_percent_887, 1, m_zoom_range_axes_561).
param(p_upper_percent_888, 2, m_zoom_range_axes_561).
param(p_info_889, 3, m_zoom_range_axes_561).
param(p_source_890, 4, m_zoom_range_axes_561).
param(p_items_891, 1, m_set_fixed_legend_items_566).
param(p_obj_892, 1, m_equals_568).
throw(m_clone_569, clone_not_supported_exception).
param(p_stream_893, 1, m_write_object_570).
throw(m_write_object_570, ioexception).
param(p_stream_894, 1, m_read_object_571).
throw(m_read_object_571, ioexception).
throw(m_read_object_571, class_not_found_exception).

%length_adjustment_type_1 - org.jfree.chart.util.LengthAdjustmentType
assign(f_no_change_940, length_adjustment_type_1_expr1, line(length_adjustment_type_1, 57)).
assign(f_expand_941, length_adjustment_type_1_expr2, line(length_adjustment_type_1, 61)).
assign(f_contract_942, length_adjustment_type_1_expr3, line(length_adjustment_type_1, 65)).
param(p_name_943, 1, m_length_adjustment_type_645).
assign(f_name_944, p_name_943, line(length_adjustment_type_1, 77)).
param(p_obj_945, 1, m_equals_647).
throw(m_read_resolve_649, object_stream_exception).

%category_anchor_1 - org.jfree.chart.axis.CategoryAnchor
assign(f_start_36, category_anchor_1_expr1, line(category_anchor_1, 56)).
assign(f_middle_37, category_anchor_1_expr2, line(category_anchor_1, 60)).
assign(f_end_38, category_anchor_1_expr3, line(category_anchor_1, 64)).
param(p_name_39, 1, m_category_anchor_10).
assign(f_name_40, p_name_39, line(category_anchor_1, 76)).
param(p_obj_41, 1, m_equals_12).
throw(m_read_resolve_13, object_stream_exception).

%series_rendering_order_1 - org.jfree.chart.plot.SeriesRenderingOrder
assign(f_forward_549, series_rendering_order_1_expr1, line(series_rendering_order_1, 60)).
assign(f_reverse_550, series_rendering_order_1_expr2, line(series_rendering_order_1, 67)).
param(p_name_551, 1, m_series_rendering_order_360).
assign(f_name_552, p_name_551, line(series_rendering_order_1, 79)).
param(p_obj_553, 1, m_equals_362).
throw(m_read_resolve_364, object_stream_exception).

%layer_1 - org.jfree.chart.util.Layer
assign(f_foreground_935, layer_1_expr1, line(layer_1, 56)).
method_invoc(layer_1_expr1, m_layer_640, line(layer_1, 56)).
argument(layer_1_literal1, 1, layer_1_expr1).
assign(f_background_936, layer_1_expr2, line(layer_1, 59)).
method_invoc(layer_1_expr2, m_layer_640, line(layer_1, 59)).
argument(layer_1_literal2, 1, layer_1_expr2).
param(p_name_937, 1, m_layer_640).
assign(f_name_938, p_name_937, line(layer_1, 70)).
param(p_obj_939, 1, m_equals_642).
throw(m_read_resolve_644, object_stream_exception).

%plot_change_event_1 - org.jfree.chart.event.PlotChangeEvent
param(p_plot_60, 1, m_plot_change_event_29).
method_invoc(plot_change_event_1_expr1, m_chart_change_event_14, line(plot_change_event_1, 64)).
argument(p_plot_60, 1, plot_change_event_1_expr1).
assign(f_plot_61, p_plot_60, line(plot_change_event_1, 65)).

%rectangle_insets_1 - org.jfree.chart.util.RectangleInsets
assign(f_zero_insets_969, rectangle_insets_1_expr1, line(rectangle_insets_1, 65)).
method_invoc(rectangle_insets_1_expr1, m_rectangle_insets_659, line(rectangle_insets_1, 65)).
argument(q_absolute_27, 1, rectangle_insets_1_expr1).
argument(rectangle_insets_1_literal1, 2, rectangle_insets_1_expr1).
argument(rectangle_insets_1_literal2, 3, rectangle_insets_1_expr1).
argument(rectangle_insets_1_literal3, 4, rectangle_insets_1_expr1).
argument(rectangle_insets_1_literal4, 5, rectangle_insets_1_expr1).
param(p_top_970, 1, m_rectangle_insets_49).
param(p_left_971, 2, m_rectangle_insets_49).
param(p_bottom_972, 3, m_rectangle_insets_49).
param(p_right_973, 4, m_rectangle_insets_49).
method_invoc(rectangle_insets_1_expr2, m_rectangle_insets_659, line(rectangle_insets_1, 102)).
argument(q_absolute_28, 1, rectangle_insets_1_expr2).
argument(p_top_970, 2, rectangle_insets_1_expr2).
argument(p_left_971, 3, rectangle_insets_1_expr2).
argument(p_bottom_972, 4, rectangle_insets_1_expr2).
argument(p_right_973, 5, rectangle_insets_1_expr2).
ref(t_unit_type_14, q_absolute_28, line(rectangle_insets_1, 102)).
param(p_unit_type_975, 1, m_rectangle_insets_659).
param(p_top_976, 2, m_rectangle_insets_659).
param(p_left_977, 3, m_rectangle_insets_659).
param(p_bottom_978, 4, m_rectangle_insets_659).
param(p_right_979, 5, m_rectangle_insets_659).
assign(f_unit_type_980, p_unit_type_975, line(rectangle_insets_1, 120)).
assign(f_top_981, p_top_976, line(rectangle_insets_1, 121)).
assign(f_bottom_982, p_bottom_978, line(rectangle_insets_1, 122)).
assign(f_left_983, p_left_977, line(rectangle_insets_1, 123)).
assign(f_right_984, p_right_979, line(rectangle_insets_1, 124)).
param(p_obj_985, 1, m_equals_666).
param(p_base_986, 1, m_create_adjusted_rectangle_669).
param(p_horizontal_987, 2, m_create_adjusted_rectangle_669).
param(p_vertical_988, 3, m_create_adjusted_rectangle_669).
param(p_base_989, 1, m_create_inset_rectangle_670).
param(p_base_990, 1, m_create_inset_rectangle_671).
param(p_horizontal_991, 2, m_create_inset_rectangle_671).
param(p_vertical_992, 3, m_create_inset_rectangle_671).
param(p_base_993, 1, m_create_outset_rectangle_672).
param(p_base_994, 1, m_create_outset_rectangle_673).
param(p_horizontal_995, 2, m_create_outset_rectangle_673).
param(p_vertical_996, 3, m_create_outset_rectangle_673).
param(p_height_997, 1, m_calculate_top_inset_674).
param(p_height_998, 1, m_calculate_top_outset_675).
param(p_height_999, 1, m_calculate_bottom_inset_676).
param(p_height_1000, 1, m_calculate_bottom_outset_677).
param(p_width_1001, 1, m_calculate_left_inset_678).
param(p_width_1002, 1, m_calculate_left_outset_679).
param(p_width_1003, 1, m_calculate_right_inset_680).
param(p_width_1004, 1, m_calculate_right_outset_681).
param(p_width_1005, 1, m_trim_width_682).
param(p_width_1006, 1, m_extend_width_683).
param(p_height_1007, 1, m_trim_height_684).
param(p_height_1008, 1, m_extend_height_685).
param(p_area_1009, 1, m_trim_686).

%abstract_object_list_1 - org.jfree.chart.util.AbstractObjectList
assign(f_size_919, abstract_object_list_1_literal1, line(abstract_object_list_1, 68)).
assign(f_increment_920, f_default_initial_capacity_921, line(abstract_object_list_1, 71)).
method_invoc(abstract_object_list_1_expr1, m_abstract_object_list_628, line(abstract_object_list_1, 77)).
argument(f_default_initial_capacity_921, 1, abstract_object_list_1_expr1).
param(p_initial_capacity_922, 1, m_abstract_object_list_628).
method_invoc(abstract_object_list_1_expr2, m_abstract_object_list_629, line(abstract_object_list_1, 86)).
argument(p_initial_capacity_922, 1, abstract_object_list_1_expr2).
argument(p_initial_capacity_922, 2, abstract_object_list_1_expr2).
param(p_initial_capacity_923, 1, m_abstract_object_list_629).
param(p_increment_924, 2, m_abstract_object_list_629).
assign(f_objects_925, abstract_object_list_1_expr5, line(abstract_object_list_1, 96)).
assign(f_increment_920, p_increment_924, line(abstract_object_list_1, 97)).
param(p_index_926, 1, m_get_630).
assign(v_result_927, abstract_object_list_1_literal2, line(abstract_object_list_1, 109)).
assign(v_result_927, abstract_object_list_1_expr16, line(abstract_object_list_1, 111)).
ref(f_objects_925, abstract_object_list_1_expr16, line(abstract_object_list_1, 111)).
return(v_result_927, m_get_630, line(abstract_object_list_1, 113)).
param(p_index_928, 1, m_set_631).
param(p_object_929, 2, m_set_631).
ref(f_objects_925, abstract_object_list_1_expr21, line(abstract_object_list_1, 126)).
assign(abstract_object_list_1_expr25, p_object_929, line(abstract_object_list_1, 131)).
ref(f_objects_925, abstract_object_list_1_expr25, line(abstract_object_list_1, 131)).
assign(f_size_919, abstract_object_list_1_expr30, line(abstract_object_list_1, 132)).
method_invoc(abstract_object_list_1_expr30, m_max_632, line(abstract_object_list_1, 132)).
argument(f_size_919, 1, abstract_object_list_1_expr30).
argument(abstract_object_list_1_expr33, 2, abstract_object_list_1_expr30).
ref(t_math_13, abstract_object_list_1_expr30, line(abstract_object_list_1, 132)).
return(f_size_919, m_size_82, line(abstract_object_list_1, 149)).
param(p_object_931, 1, m_index_of_634).
param(p_obj_932, 1, m_equals_635).
throw(m_clone_637, clone_not_supported_exception).
param(p_stream_933, 1, m_write_object_638).
throw(m_write_object_638, ioexception).
param(p_stream_934, 1, m_read_object_639).
throw(m_read_object_639, ioexception).
throw(m_read_object_639, class_not_found_exception).


% Stack Trace Info.
test_failure(failure_1, 'org.jfree.chart.plot.junit.XYPlotTests', 'testRemoveRangeMarker').
trace(trace_1, failure_1, m_remove_range_marker_487, line(xyplot_1, 2529), failure_1, target).
trace(trace_2, trace_1, m_remove_range_marker_486, line(xyplot_1, 2498), failure_1, target).
trace(trace_3, trace_2, m_remove_range_marker_485, line(xyplot_1, 2481), failure_1, target).
trace(trace_4, trace_3, m_remove_range_marker_484, line(xyplot_1, 2465), failure_1, target).
trace(trace_5, trace_4, m_test_remove_range_marker_621, line(xyplot_tests_1, 1037), failure_1, target).
trace(trace_6, trace_5, 'invoke0', line(jdk_internal_reflect_native_method_accessor_impl, -2), failure_1, non_target).
trace(trace_7, trace_6, 'invoke', line(jdk_internal_reflect_native_method_accessor_impl, 77), failure_1, non_target).
trace(trace_8, trace_7, 'invoke', line(jdk_internal_reflect_delegating_method_accessor_impl, 43), failure_1, non_target).
trace(trace_9, trace_8, 'invoke', line(java_lang_reflect_method, 569), failure_1, non_target).
trace(trace_10, trace_9, 'runTest', line(junit_framework_test_case, 177), failure_1, non_target).
trace(trace_11, trace_10, 'runBare', line(junit_framework_test_case, 142), failure_1, non_target).
trace(trace_12, trace_11, 'protect', line(junit_framework_test_result_1, 122), failure_1, non_target).
trace(trace_13, trace_12, 'runProtected', line(junit_framework_test_result, 142), failure_1, non_target).
trace(trace_14, trace_13, 'run', line(junit_framework_test_result, 125), failure_1, non_target).
trace(trace_15, trace_14, 'run', line(junit_framework_test_case, 130), failure_1, non_target).
trace(trace_16, trace_15, 'runTest', line(junit_framework_test_suite, 241), failure_1, non_target).
trace(trace_17, trace_16, 'run', line(junit_framework_test_suite, 236), failure_1, non_target).
trace(trace_18, trace_17, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_1, non_target).
trace(trace_19, trace_18, 'run', line(org_junit_runner_junit_core, 137), failure_1, non_target).
trace(trace_20, trace_19, 'main', line(logicfl_coverage_junit4_test_runner, 36), failure_1, non_target).
test_failure(failure_2, 'org.jfree.chart.plot.junit.XYPlotTests', 'testRemoveDomainMarker').
trace(trace_21, failure_2, m_remove_domain_marker_477, line(xyplot_1, 2293), failure_2, target).
trace(trace_22, trace_21, m_remove_domain_marker_476, line(xyplot_1, 2265), failure_2, target).
trace(trace_23, trace_22, m_remove_domain_marker_475, line(xyplot_1, 2248), failure_2, target).
trace(trace_24, trace_23, m_remove_domain_marker_474, line(xyplot_1, 2232), failure_2, target).
trace(trace_25, trace_24, m_test_remove_domain_marker_620, line(xyplot_tests_1, 1028), failure_2, target).
trace(trace_26, trace_25, 'invoke0', line(jdk_internal_reflect_native_method_accessor_impl, -2), failure_2, non_target).
trace(trace_27, trace_26, 'invoke', line(jdk_internal_reflect_native_method_accessor_impl, 77), failure_2, non_target).
trace(trace_28, trace_27, 'invoke', line(jdk_internal_reflect_delegating_method_accessor_impl, 43), failure_2, non_target).
trace(trace_29, trace_28, 'invoke', line(java_lang_reflect_method, 569), failure_2, non_target).
trace(trace_30, trace_29, 'runTest', line(junit_framework_test_case, 177), failure_2, non_target).
trace(trace_31, trace_30, 'runBare', line(junit_framework_test_case, 142), failure_2, non_target).
trace(trace_32, trace_31, 'protect', line(junit_framework_test_result_1, 122), failure_2, non_target).
trace(trace_33, trace_32, 'runProtected', line(junit_framework_test_result, 142), failure_2, non_target).
trace(trace_34, trace_33, 'run', line(junit_framework_test_result, 125), failure_2, non_target).
trace(trace_35, trace_34, 'run', line(junit_framework_test_case, 130), failure_2, non_target).
trace(trace_36, trace_35, 'runTest', line(junit_framework_test_suite, 241), failure_2, non_target).
trace(trace_37, trace_36, 'run', line(junit_framework_test_suite, 236), failure_2, non_target).
trace(trace_38, trace_37, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_2, non_target).
trace(trace_39, trace_38, 'run', line(org_junit_runner_junit_core, 137), failure_2, non_target).
trace(trace_40, trace_39, 'main', line(logicfl_coverage_junit4_test_runner, 36), failure_2, non_target).
test_failure(failure_3, 'org.jfree.chart.plot.junit.CategoryPlotTests', 'testRemoveRangeMarker').
trace(trace_41, failure_3, m_remove_range_marker_175, line(category_plot_1, 2448), failure_3, target).
trace(trace_42, trace_41, m_remove_range_marker_174, line(category_plot_1, 2415), failure_3, target).
trace(trace_43, trace_42, m_remove_range_marker_173, line(category_plot_1, 2396), failure_3, target).
trace(trace_44, trace_43, m_remove_range_marker_172, line(category_plot_1, 2378), failure_3, target).
trace(trace_45, trace_44, m_test_remove_range_marker_594, line(category_plot_tests_1, 780), failure_3, target).
trace(trace_46, trace_45, 'invoke0', line(jdk_internal_reflect_native_method_accessor_impl, -2), failure_3, non_target).
trace(trace_47, trace_46, 'invoke', line(jdk_internal_reflect_native_method_accessor_impl, 77), failure_3, non_target).
trace(trace_48, trace_47, 'invoke', line(jdk_internal_reflect_delegating_method_accessor_impl, 43), failure_3, non_target).
trace(trace_49, trace_48, 'invoke', line(java_lang_reflect_method, 569), failure_3, non_target).
trace(trace_50, trace_49, 'runTest', line(junit_framework_test_case, 177), failure_3, non_target).
trace(trace_51, trace_50, 'runBare', line(junit_framework_test_case, 142), failure_3, non_target).
trace(trace_52, trace_51, 'protect', line(junit_framework_test_result_1, 122), failure_3, non_target).
trace(trace_53, trace_52, 'runProtected', line(junit_framework_test_result, 142), failure_3, non_target).
trace(trace_54, trace_53, 'run', line(junit_framework_test_result, 125), failure_3, non_target).
trace(trace_55, trace_54, 'run', line(junit_framework_test_case, 130), failure_3, non_target).
trace(trace_56, trace_55, 'runTest', line(junit_framework_test_suite, 241), failure_3, non_target).
trace(trace_57, trace_56, 'run', line(junit_framework_test_suite, 236), failure_3, non_target).
trace(trace_58, trace_57, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_3, non_target).
trace(trace_59, trace_58, 'run', line(org_junit_runner_junit_core, 137), failure_3, non_target).
trace(trace_60, trace_59, 'main', line(logicfl_coverage_junit4_test_runner, 36), failure_3, non_target).
test_failure(failure_4, 'org.jfree.chart.plot.junit.CategoryPlotTests', 'testRemoveDomainMarker').
trace(trace_61, failure_4, m_remove_domain_marker_158, line(category_plot_1, 2166), failure_4, target).
trace(trace_62, trace_61, m_remove_domain_marker_157, line(category_plot_1, 2139), failure_4, target).
trace(trace_63, trace_62, m_remove_domain_marker_156, line(category_plot_1, 2122), failure_4, target).
trace(trace_64, trace_63, m_remove_domain_marker_155, line(category_plot_1, 2106), failure_4, target).
trace(trace_65, trace_64, m_test_remove_domain_marker_592, line(category_plot_tests_1, 771), failure_4, target).
trace(trace_66, trace_65, 'invoke0', line(jdk_internal_reflect_native_method_accessor_impl, -2), failure_4, non_target).
trace(trace_67, trace_66, 'invoke', line(jdk_internal_reflect_native_method_accessor_impl, 77), failure_4, non_target).
trace(trace_68, trace_67, 'invoke', line(jdk_internal_reflect_delegating_method_accessor_impl, 43), failure_4, non_target).
trace(trace_69, trace_68, 'invoke', line(java_lang_reflect_method, 569), failure_4, non_target).
trace(trace_70, trace_69, 'runTest', line(junit_framework_test_case, 177), failure_4, non_target).
trace(trace_71, trace_70, 'runBare', line(junit_framework_test_case, 142), failure_4, non_target).
trace(trace_72, trace_71, 'protect', line(junit_framework_test_result_1, 122), failure_4, non_target).
trace(trace_73, trace_72, 'runProtected', line(junit_framework_test_result, 142), failure_4, non_target).
trace(trace_74, trace_73, 'run', line(junit_framework_test_result, 125), failure_4, non_target).
trace(trace_75, trace_74, 'run', line(junit_framework_test_case, 130), failure_4, non_target).
trace(trace_76, trace_75, 'runTest', line(junit_framework_test_suite, 241), failure_4, non_target).
trace(trace_77, trace_76, 'run', line(junit_framework_test_suite, 236), failure_4, non_target).
trace(trace_78, trace_77, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_4, non_target).
trace(trace_79, trace_78, 'run', line(org_junit_runner_junit_core, 137), failure_4, non_target).
trace(trace_80, trace_79, 'main', line(logicfl_coverage_junit4_test_runner, 36), failure_4, non_target).



%%% End of Static Facts

%%% Values

val(v_markers_238, null, line(category_plot_1, 2166)).
val(v_markers_265, null, line(category_plot_1, 2448)).
val(v_markers_722, null, line(xyplot_1, 2293)).
val(v_markers_745, null, line(xyplot_1, 2529)).



%%% End of Facts