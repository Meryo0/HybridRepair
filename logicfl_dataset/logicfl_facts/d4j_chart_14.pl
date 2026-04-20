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
trace(trace_6, trace_5, 'invoke', line(jdk_internal_reflect_direct_method_handle_accessor, 104), failure_1, non_target).
trace(trace_7, trace_6, 'invoke', line(java_lang_reflect_method, 578), failure_1, non_target).
trace(trace_8, trace_7, 'runTest', line(junit_framework_test_case, 177), failure_1, non_target).
trace(trace_9, trace_8, 'runBare', line(junit_framework_test_case, 142), failure_1, non_target).
trace(trace_10, trace_9, 'protect', line(junit_framework_test_result_1, 122), failure_1, non_target).
trace(trace_11, trace_10, 'runProtected', line(junit_framework_test_result, 142), failure_1, non_target).
trace(trace_12, trace_11, 'run', line(junit_framework_test_result, 125), failure_1, non_target).
trace(trace_13, trace_12, 'run', line(junit_framework_test_case, 130), failure_1, non_target).
trace(trace_14, trace_13, 'runTest', line(junit_framework_test_suite, 241), failure_1, non_target).
trace(trace_15, trace_14, 'run', line(junit_framework_test_suite, 236), failure_1, non_target).
trace(trace_16, trace_15, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_1, non_target).
trace(trace_17, trace_16, 'run', line(org_junit_runner_junit_core, 137), failure_1, non_target).
trace(trace_18, trace_17, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_1, non_target).
test_failure(failure_2, 'org.jfree.chart.plot.junit.XYPlotTests', 'testRemoveDomainMarker').
trace(trace_19, failure_2, m_remove_domain_marker_477, line(xyplot_1, 2293), failure_2, target).
trace(trace_20, trace_19, m_remove_domain_marker_476, line(xyplot_1, 2265), failure_2, target).
trace(trace_21, trace_20, m_remove_domain_marker_475, line(xyplot_1, 2248), failure_2, target).
trace(trace_22, trace_21, m_remove_domain_marker_474, line(xyplot_1, 2232), failure_2, target).
trace(trace_23, trace_22, m_test_remove_domain_marker_620, line(xyplot_tests_1, 1028), failure_2, target).
trace(trace_24, trace_23, 'invoke', line(jdk_internal_reflect_direct_method_handle_accessor, 104), failure_2, non_target).
trace(trace_25, trace_24, 'invoke', line(java_lang_reflect_method, 578), failure_2, non_target).
trace(trace_26, trace_25, 'runTest', line(junit_framework_test_case, 177), failure_2, non_target).
trace(trace_27, trace_26, 'runBare', line(junit_framework_test_case, 142), failure_2, non_target).
trace(trace_28, trace_27, 'protect', line(junit_framework_test_result_1, 122), failure_2, non_target).
trace(trace_29, trace_28, 'runProtected', line(junit_framework_test_result, 142), failure_2, non_target).
trace(trace_30, trace_29, 'run', line(junit_framework_test_result, 125), failure_2, non_target).
trace(trace_31, trace_30, 'run', line(junit_framework_test_case, 130), failure_2, non_target).
trace(trace_32, trace_31, 'runTest', line(junit_framework_test_suite, 241), failure_2, non_target).
trace(trace_33, trace_32, 'run', line(junit_framework_test_suite, 236), failure_2, non_target).
trace(trace_34, trace_33, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_2, non_target).
trace(trace_35, trace_34, 'run', line(org_junit_runner_junit_core, 137), failure_2, non_target).
trace(trace_36, trace_35, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_2, non_target).
test_failure(failure_3, 'org.jfree.chart.plot.junit.CategoryPlotTests', 'testRemoveRangeMarker').
trace(trace_37, failure_3, m_remove_range_marker_175, line(category_plot_1, 2448), failure_3, target).
trace(trace_38, trace_37, m_remove_range_marker_174, line(category_plot_1, 2415), failure_3, target).
trace(trace_39, trace_38, m_remove_range_marker_173, line(category_plot_1, 2396), failure_3, target).
trace(trace_40, trace_39, m_remove_range_marker_172, line(category_plot_1, 2378), failure_3, target).
trace(trace_41, trace_40, m_test_remove_range_marker_594, line(category_plot_tests_1, 780), failure_3, target).
trace(trace_42, trace_41, 'invoke', line(jdk_internal_reflect_direct_method_handle_accessor, 104), failure_3, non_target).
trace(trace_43, trace_42, 'invoke', line(java_lang_reflect_method, 578), failure_3, non_target).
trace(trace_44, trace_43, 'runTest', line(junit_framework_test_case, 177), failure_3, non_target).
trace(trace_45, trace_44, 'runBare', line(junit_framework_test_case, 142), failure_3, non_target).
trace(trace_46, trace_45, 'protect', line(junit_framework_test_result_1, 122), failure_3, non_target).
trace(trace_47, trace_46, 'runProtected', line(junit_framework_test_result, 142), failure_3, non_target).
trace(trace_48, trace_47, 'run', line(junit_framework_test_result, 125), failure_3, non_target).
trace(trace_49, trace_48, 'run', line(junit_framework_test_case, 130), failure_3, non_target).
trace(trace_50, trace_49, 'runTest', line(junit_framework_test_suite, 241), failure_3, non_target).
trace(trace_51, trace_50, 'run', line(junit_framework_test_suite, 236), failure_3, non_target).
trace(trace_52, trace_51, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_3, non_target).
trace(trace_53, trace_52, 'run', line(org_junit_runner_junit_core, 137), failure_3, non_target).
trace(trace_54, trace_53, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_3, non_target).
test_failure(failure_4, 'org.jfree.chart.plot.junit.CategoryPlotTests', 'testRemoveDomainMarker').
trace(trace_55, failure_4, m_remove_domain_marker_158, line(category_plot_1, 2166), failure_4, target).
trace(trace_56, trace_55, m_remove_domain_marker_157, line(category_plot_1, 2139), failure_4, target).
trace(trace_57, trace_56, m_remove_domain_marker_156, line(category_plot_1, 2122), failure_4, target).
trace(trace_58, trace_57, m_remove_domain_marker_155, line(category_plot_1, 2106), failure_4, target).
trace(trace_59, trace_58, m_test_remove_domain_marker_592, line(category_plot_tests_1, 771), failure_4, target).
trace(trace_60, trace_59, 'invoke', line(jdk_internal_reflect_direct_method_handle_accessor, 104), failure_4, non_target).
trace(trace_61, trace_60, 'invoke', line(java_lang_reflect_method, 578), failure_4, non_target).
trace(trace_62, trace_61, 'runTest', line(junit_framework_test_case, 177), failure_4, non_target).
trace(trace_63, trace_62, 'runBare', line(junit_framework_test_case, 142), failure_4, non_target).
trace(trace_64, trace_63, 'protect', line(junit_framework_test_result_1, 122), failure_4, non_target).
trace(trace_65, trace_64, 'runProtected', line(junit_framework_test_result, 142), failure_4, non_target).
trace(trace_66, trace_65, 'run', line(junit_framework_test_result, 125), failure_4, non_target).
trace(trace_67, trace_66, 'run', line(junit_framework_test_case, 130), failure_4, non_target).
trace(trace_68, trace_67, 'runTest', line(junit_framework_test_suite, 241), failure_4, non_target).
trace(trace_69, trace_68, 'run', line(junit_framework_test_suite, 236), failure_4, non_target).
trace(trace_70, trace_69, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_4, non_target).
trace(trace_71, trace_70, 'run', line(org_junit_runner_junit_core, 137), failure_4, non_target).
trace(trace_72, trace_71, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_4, non_target).



%%% End of Static Facts

%%% Values

val(v_markers_238, null, line(category_plot_1, 2166)).
val(v_markers_265, null, line(category_plot_1, 2448)).
val(v_markers_722, null, line(xyplot_1, 2293)).
val(v_markers_745, null, line(xyplot_1, 2529)).



%%% End of Facts
%%% Code Facts
:- style_check(-discontiguous).
%%% Classes
class(category_marker_1, 'org.jfree.chart.plot.CategoryMarker').
class(category_plot_tests_1, 'org.jfree.chart.plot.junit.CategoryPlotTests').
class(text_anchor_1, 'org.jfree.chart.text.TextAnchor').
class(xyplot_tests_1, 'org.jfree.chart.plot.junit.XYPlotTests').
class(marker_1, 'org.jfree.chart.plot.Marker').
class(value_marker_1, 'org.jfree.chart.plot.ValueMarker').
class(sort_order_1, 'org.jfree.chart.util.SortOrder').
class(plot_1, 'org.jfree.chart.plot.Plot').
class(chart_change_event_1, 'org.jfree.chart.event.ChartChangeEvent').
class(rectangle_anchor_1, 'org.jfree.chart.util.RectangleAnchor').
class(category_plot_1, 'org.jfree.chart.plot.CategoryPlot').
class(object_list_1, 'org.jfree.chart.util.ObjectList').
class(plot_orientation_1, 'org.jfree.chart.plot.PlotOrientation').
class(chart_color_1, 'org.jfree.chart.ChartColor').
class(default_drawing_supplier_1, 'org.jfree.chart.plot.DefaultDrawingSupplier').
class(unit_type_1, 'org.jfree.chart.util.UnitType').
class(axis_location_1, 'org.jfree.chart.axis.AxisLocation').
class(dataset_rendering_order_1, 'org.jfree.chart.plot.DatasetRenderingOrder').
class(chart_change_event_type_1, 'org.jfree.chart.event.ChartChangeEventType').
class(marker_change_event_1, 'org.jfree.chart.event.MarkerChangeEvent').
class(xyplot_1, 'org.jfree.chart.plot.XYPlot').
class(length_adjustment_type_1, 'org.jfree.chart.util.LengthAdjustmentType').
class(category_anchor_1, 'org.jfree.chart.axis.CategoryAnchor').
class(series_rendering_order_1, 'org.jfree.chart.plot.SeriesRenderingOrder').
class(layer_1, 'org.jfree.chart.util.Layer').
class(plot_change_event_1, 'org.jfree.chart.event.PlotChangeEvent').
class(rectangle_insets_1, 'org.jfree.chart.util.RectangleInsets').
class(abstract_object_list_1, 'org.jfree.chart.util.AbstractObjectList').

%%% Methods
%category_marker_1 - org.jfree.chart.plot.CategoryMarker
method(m_category_marker_31, range(category_marker_1, 2608, 236, 74, 81)).
method(m_category_marker_32, range(category_marker_1, 2856, 361, 83, 92)).
method(m_category_marker_34, range(category_marker_1, 3229, 770, 94, 110)).
method(m_get_key_37, range(category_marker_1, 4011, 141, 112, 119)).
method(m_set_key_38, range(category_marker_1, 4164, 451, 121, 135)).
method(m_get_draw_as_line_39, range(category_marker_1, 4627, 225, 137, 145)).
method(m_set_draw_as_line_40, range(category_marker_1, 4864, 385, 147, 157)).
method(m_equals_41, range(category_marker_1, 5261, 702, 159, 184)).
%category_plot_tests_1 - org.jfree.chart.plot.junit.CategoryPlotTests
method(m_suite_572, range(category_plot_tests_1, 3729, 185, 101, 108)).
method(m_category_plot_tests_574, range(category_plot_tests_1, 3920, 170, 110, 117)).
method(m_test_constructor_576, range(category_plot_tests_1, 4100, 237, 119, 126)).
method(m_test_axis_range_577, range(category_plot_tests_1, 4343, 680, 128, 142)).
method(m_test_equals_578, range(category_plot_tests_1, 5033, 10251, 144, 397)).
method(m_test_cloning_579, range(category_plot_tests_1, 15290, 611, 399, 417)).
method(m_test_serialization_580, range(category_plot_tests_1, 15907, 1071, 419, 447)).
method(m_test_serialization2_581, range(category_plot_tests_1, 16984, 1060, 449, 479)).
method(m_test_serialization3_582, range(category_plot_tests_1, 18050, 1335, 481, 524)).
method(m_test_serialization4_583, range(category_plot_tests_1, 19395, 1595, 526, 573)).
method(m_test_serialization5_584, range(category_plot_tests_1, 21000, 2594, 575, 631)).
method(m_test_set_renderer_585, range(category_plot_tests_1, 23600, 628, 633, 647)).
method(m_test_1169972_586, range(category_plot_tests_1, 24238, 390, 649, 659)).
method(m_test_add_domain_marker_587, range(category_plot_tests_1, 24638, 554, 661, 674)).
method(m_test_add_range_marker_588, range(category_plot_tests_1, 25206, 538, 676, 689)).
method(m_test_1654215_589, range(category_plot_tests_1, 25754, 1024, 691, 715)).
method(m_test_get_domain_axis_index_590, range(category_plot_tests_1, 26788, 900, 717, 739)).
method(m_test_get_range_axis_index_591, range(category_plot_tests_1, 27694, 881, 741, 763)).
method(m_test_remove_domain_marker_592, range(category_plot_tests_1, 28585, 273, 765, 772)).
method(m_test_remove_range_marker_594, range(category_plot_tests_1, 28864, 259, 774, 781)).
%text_anchor_1 - org.jfree.chart.text.TextAnchor
method(m_text_anchor_622, range(text_anchor_1, 4048, 146, 119, 126)).
method(m_to_string_623, range(text_anchor_1, 4200, 157, 128, 135)).
method(m_equals_624, range(text_anchor_1, 4363, 550, 137, 160)).
method(m_hash_code_625, range(text_anchor_1, 4919, 166, 162, 169)).
method(m_read_resolve_626, range(text_anchor_1, 5091, 2005, 171, 226)).
%xyplot_tests_1 - org.jfree.chart.plot.junit.XYPlotTests
method(m_suite_595, range(xyplot_tests_1, 4127, 179, 110, 117)).
method(m_xyplot_tests_596, range(xyplot_tests_1, 4312, 164, 119, 126)).
method(m_test_equals_597, range(xyplot_tests_1, 4903, 10179, 139, 390)).
method(m_test_cloning_598, range(xyplot_tests_1, 15088, 419, 392, 407)).
method(m_test_cloning2_599, range(xyplot_tests_1, 15517, 645, 409, 427)).
method(m_test_cloning__quadrant_origin_600, range(xyplot_tests_1, 16172, 588, 429, 447)).
method(m_test_cloning__quadrant_paint_601, range(xyplot_tests_1, 16770, 770, 449, 472)).
method(m_test_clone_independence_602, range(xyplot_tests_1, 17550, 2617, 474, 545)).
method(m_test_set_null_renderer_603, range(xyplot_tests_1, 20177, 469, 547, 562)).
method(m_test_serialization1_604, range(xyplot_tests_1, 20652, 976, 564, 593)).
method(m_test_serialization2_605, range(xyplot_tests_1, 21634, 1046, 595, 624)).
method(m_test_serialization3_606, range(xyplot_tests_1, 22686, 1838, 626, 678)).
method(m_test_serialization4_607, range(xyplot_tests_1, 24534, 1737, 680, 731)).
method(m_test_serialization5_608, range(xyplot_tests_1, 26281, 2623, 733, 789)).
method(m_test_get_renderer_for_dataset_609, range(xyplot_tests_1, 28910, 974, 791, 813)).
method(m_test_get_legend_items_610, range(xyplot_tests_1, 29890, 622, 815, 830)).
method(m_create_dataset1_611, range(xyplot_tests_1, 30522, 1393, 832, 860)).
method(m_create_dataset2_612, range(xyplot_tests_1, 31921, 314, 862, 873)).
method(m_test_set_renderer_613, range(xyplot_tests_1, 32245, 612, 875, 889)).
method(m_test_remove_annotation_614, range(xyplot_tests_1, 32867, 875, 891, 912)).
method(m_test_add_domain_marker_615, range(xyplot_tests_1, 33752, 530, 914, 927)).
method(m_test_add_range_marker_616, range(xyplot_tests_1, 34296, 526, 929, 942)).
method(m_test_1654215_617, range(xyplot_tests_1, 34832, 1004, 944, 968)).
method(m_test_draw_range_gridlines_618, range(xyplot_tests_1, 35842, 971, 970, 994)).
method(m_test_draw_series_with_zero_items_619, range(xyplot_tests_1, 36819, 1047, 996, 1020)).
method(m_test_remove_domain_marker_620, range(xyplot_tests_1, 37876, 249, 1022, 1029)).
method(m_test_remove_range_marker_621, range(xyplot_tests_1, 38131, 247, 1031, 1038)).
%marker_1 - org.jfree.chart.plot.Marker
method(m_marker_262, range(marker_1, 5132, 126, 140, 145)).
method(m_marker_263, range(marker_1, 5266, 269, 147, 155)).
method(m_marker_35, range(marker_1, 5543, 1809, 157, 199)).
method(m_get_paint_265, range(marker_1, 7360, 205, 201, 210)).
method(m_set_paint_266, range(marker_1, 7577, 468, 212, 226)).
method(m_get_stroke_267, range(marker_1, 8053, 212, 228, 237)).
method(m_set_stroke_268, range(marker_1, 8277, 479, 239, 253)).
method(m_get_outline_paint_269, range(marker_1, 8764, 245, 255, 264)).
method(m_set_outline_paint_270, range(marker_1, 9021, 378, 266, 277)).
method(m_get_outline_stroke_271, range(marker_1, 9407, 252, 279, 288)).
method(m_set_outline_stroke_272, range(marker_1, 9671, 387, 290, 301)).
method(m_get_alpha_273, range(marker_1, 10066, 205, 303, 312)).
method(m_set_alpha_274, range(marker_1, 10283, 856, 314, 334)).
method(m_get_label_275, range(marker_1, 11147, 255, 336, 345)).
method(m_set_label_276, range(marker_1, 11410, 393, 347, 358)).
method(m_get_label_font_277, range(marker_1, 11811, 225, 360, 369)).
method(m_set_label_font_278, range(marker_1, 12044, 478, 371, 385)).
method(m_get_label_paint_279, range(marker_1, 12530, 233, 387, 396)).
method(m_set_label_paint_280, range(marker_1, 12771, 488, 398, 412)).
method(m_get_label_anchor_281, range(marker_1, 13267, 352, 414, 424)).
method(m_set_label_anchor_282, range(marker_1, 13627, 610, 426, 441)).
method(m_get_label_offset_283, range(marker_1, 14245, 258, 443, 452)).
method(m_set_label_offset_284, range(marker_1, 14515, 515, 454, 468)).
method(m_get_label_offset_type_285, range(marker_1, 15042, 280, 470, 479)).
method(m_set_label_offset_type_36, range(marker_1, 15334, 518, 481, 495)).
method(m_get_label_text_anchor_287, range(marker_1, 15868, 270, 497, 506)).
method(m_set_label_text_anchor_288, range(marker_1, 16150, 534, 508, 522)).
method(m_add_change_listener_166, range(marker_1, 16696, 386, 524, 535)).
method(m_remove_change_listener_290, range(marker_1, 17090, 393, 537, 548)).
method(m_notify_listeners_286, range(marker_1, 17491, 555, 550, 566)).
method(m_get_listeners_292, range(marker_1, 18054, 361, 568, 579)).
method(m_equals_293, range(marker_1, 18427, 1684, 581, 633)).
method(m_clone_294, range(marker_1, 20123, 245, 635, 644)).
method(m_write_object_295, range(marker_1, 20380, 596, 646, 660)).
method(m_read_object_296, range(marker_1, 20984, 753, 662, 679)).
%value_marker_1 - org.jfree.chart.plot.ValueMarker
method(m_value_marker_365, range(value_marker_1, 2172, 178, 62, 70)).
method(m_value_marker_366, range(value_marker_1, 2362, 353, 72, 81)).
method(m_value_marker_57, range(value_marker_1, 2727, 709, 83, 97)).
method(m_get_value_367, range(value_marker_1, 3448, 181, 99, 108)).
method(m_set_value_368, range(value_marker_1, 3641, 366, 110, 123)).
method(m_equals_369, range(value_marker_1, 4015, 971, 125, 155)).
%sort_order_1 - org.jfree.chart.util.SortOrder
method(m_sort_order_687, range(sort_order_1, 2344, 145, 69, 76)).
method(m_to_string_688, range(sort_order_1, 2495, 157, 78, 85)).
method(m_equals_689, range(sort_order_1, 2658, 557, 87, 110)).
method(m_hash_code_690, range(sort_order_1, 3225, 166, 112, 119)).
method(m_read_resolve_691, range(sort_order_1, 3397, 472, 121, 136)).
%plot_1 - org.jfree.chart.plot.Plot
method(m_plot_46, range(plot_1, 12472, 777, 281, 304)).
method(m_get_dataset_group_297, range(plot_1, 13257, 264, 306, 315)).
method(m_set_dataset_group_298, range(plot_1, 13529, 286, 317, 326)).
method(m_get_no_data_message_299, range(plot_1, 13823, 396, 328, 340)).
method(m_set_no_data_message_300, range(plot_1, 14227, 428, 342, 354)).
method(m_get_no_data_message_font_301, range(plot_1, 14663, 308, 356, 366)).
method(m_set_no_data_message_font_302, range(plot_1, 14979, 505, 368, 382)).
method(m_get_no_data_message_paint_303, range(plot_1, 15492, 315, 384, 394)).
method(m_set_no_data_message_paint_304, range(plot_1, 15815, 516, 396, 410)).
method(m_get_plot_type_305, range(plot_1, 16339, 383, 412, 421)).
method(m_get_parent_86, range(plot_1, 16730, 296, 423, 434)).
method(m_set_parent_306, range(plot_1, 17034, 327, 436, 446)).
method(m_get_root_plot_307, range(plot_1, 17369, 319, 448, 465)).
method(m_is_subplot_308, range(plot_1, 17696, 451, 467, 479)).
method(m_get_insets_309, range(plot_1, 18155, 248, 481, 490)).
method(m_set_insets_310, range(plot_1, 18411, 383, 492, 503)).
method(m_set_insets_311, range(plot_1, 18802, 793, 505, 527)).
method(m_get_background_paint_312, range(plot_1, 19603, 266, 529, 538)).
method(m_set_background_paint_313, range(plot_1, 19877, 792, 540, 566)).
method(m_get_background_alpha_314, range(plot_1, 20677, 263, 568, 577)).
method(m_set_background_alpha_315, range(plot_1, 20948, 464, 579, 592)).
method(m_get_drawing_supplier_316, range(plot_1, 21420, 504, 594, 611)).
method(m_set_drawing_supplier_317, range(plot_1, 21932, 558, 613, 626)).
method(m_get_background_image_318, range(plot_1, 22498, 306, 628, 638)).
method(m_set_background_image_319, range(plot_1, 22812, 373, 640, 651)).
method(m_get_background_image_alignment_320, range(plot_1, 23193, 326, 653, 663)).
method(m_set_background_image_alignment_321, range(plot_1, 23527, 535, 665, 679)).
method(m_get_background_image_alpha_322, range(plot_1, 24070, 403, 681, 692)).
method(m_set_background_image_alpha_323, range(plot_1, 24485, 793, 694, 713)).
method(m_is_outline_visible_324, range(plot_1, 25290, 590, 715, 730)).
method(m_set_outline_visible_325, range(plot_1, 25892, 419, 732, 745)).
method(m_get_outline_stroke_326, range(plot_1, 26323, 266, 747, 756)).
method(m_set_outline_stroke_327, range(plot_1, 26597, 867, 758, 783)).
method(m_get_outline_paint_328, range(plot_1, 27472, 270, 785, 794)).
method(m_set_outline_paint_329, range(plot_1, 27750, 865, 796, 821)).
method(m_get_foreground_alpha_330, range(plot_1, 28623, 259, 823, 832)).
method(m_set_foreground_alpha_331, range(plot_1, 28890, 427, 834, 847)).
method(m_get_legend_items_332, range(plot_1, 29325, 364, 849, 858)).
method(m_add_change_listener_333, range(plot_1, 29697, 348, 860, 869)).
method(m_remove_change_listener_334, range(plot_1, 30053, 355, 871, 880)).
method(m_notify_listeners_145, range(plot_1, 30416, 511, 882, 894)).
method(m_fire_change_event_167, range(plot_1, 30939, 212, 896, 903)).
method(m_draw_335, range(plot_1, 31159, 908, 905, 923)).
method(m_draw_background_336, range(plot_1, 32105, 713, 925, 940)).
method(m_fill_background_337, range(plot_1, 32826, 440, 942, 954)).
method(m_fill_background_338, range(plot_1, 33278, 1873, 956, 998)).
method(m_draw_background_image_339, range(plot_1, 35163, 1140, 1000, 1025)).
method(m_draw_outline_340, range(plot_1, 36315, 740, 1027, 1045)).
method(m_draw_no_data_message_341, range(plot_1, 37063, 941, 1047, 1068)).
method(m_handle_click_342, range(plot_1, 38012, 546, 1070, 1082)).
method(m_zoom_343, range(plot_1, 38566, 269, 1084, 1092)).
method(m_axis_changed_344, range(plot_1, 38843, 245, 1094, 1101)).
method(m_dataset_changed_345, range(plot_1, 39096, 491, 1103, 1115)).
method(m_marker_changed_346, range(plot_1, 39599, 269, 1117, 1127)).
method(m_get_rect_x_347, range(plot_1, 39876, 602, 1129, 1151)).
method(m_get_rect_y_348, range(plot_1, 40486, 604, 1153, 1175)).
method(m_equals_349, range(plot_1, 41098, 2082, 1177, 1239)).
method(m_clone_350, range(plot_1, 43188, 798, 1241, 1263)).
method(m_write_object_351, range(plot_1, 43994, 583, 1265, 1279)).
method(m_read_object_352, range(plot_1, 44585, 744, 1281, 1300)).
method(m_resolve_domain_axis_location_353, range(plot_1, 45337, 2235, 1302, 1360)).
method(m_resolve_range_axis_location_354, range(plot_1, 47580, 2226, 1362, 1421)).
%chart_change_event_1 - org.jfree.chart.event.ChartChangeEvent
method(m_chart_change_event_14, range(chart_change_event_1, 2252, 289, 62, 70)).
method(m_chart_change_event_16, range(chart_change_event_1, 2549, 366, 72, 81)).
method(m_chart_change_event_15, range(chart_change_event_1, 2923, 482, 83, 96)).
method(m_get_chart_18, range(chart_change_event_1, 3413, 209, 98, 105)).
method(m_set_chart_19, range(chart_change_event_1, 3630, 216, 107, 114)).
method(m_get_type_20, range(chart_change_event_1, 3854, 163, 116, 123)).
method(m_set_type_21, range(chart_change_event_1, 4025, 174, 125, 132)).
%rectangle_anchor_1 - org.jfree.chart.util.RectangleAnchor
method(m_rectangle_anchor_652, range(rectangle_anchor_1, 3391, 157, 101, 108)).
method(m_to_string_653, range(rectangle_anchor_1, 3554, 157, 110, 117)).
method(m_equals_654, range(rectangle_anchor_1, 3717, 607, 119, 142)).
method(m_hash_code_655, range(rectangle_anchor_1, 4330, 166, 144, 151)).
method(m_coordinates_656, range(rectangle_anchor_1, 4502, 1673, 153, 192)).
method(m_create_rectangle_657, range(rectangle_anchor_1, 6185, 2489, 194, 258)).
method(m_read_resolve_658, range(rectangle_anchor_1, 8684, 1324, 260, 297)).
%category_plot_1 - org.jfree.chart.plot.CategoryPlot
method(m_category_plot_44, range(category_plot_1, 18087, 116, 426, 431)).
method(m_category_plot_45, range(category_plot_1, 18211, 3440, 433, 525)).
method(m_get_plot_type_61, range(category_plot_1, 21663, 208, 527, 534)).
method(m_get_orientation_62, range(category_plot_1, 21879, 279, 536, 545)).
method(m_set_orientation_63, range(category_plot_1, 22166, 521, 547, 561)).
method(m_get_axis_offset_64, range(category_plot_1, 22695, 252, 563, 572)).
method(m_set_axis_offset_65, range(category_plot_1, 22955, 520, 574, 588)).
method(m_get_domain_axis_66, range(category_plot_1, 23483, 424, 590, 601)).
method(m_get_domain_axis_67, range(category_plot_1, 23915, 708, 603, 625)).
method(m_set_domain_axis_68, range(category_plot_1, 24631, 327, 627, 637)).
method(m_set_domain_axis_69, range(category_plot_1, 24966, 375, 639, 650)).
method(m_set_domain_axis_70, range(category_plot_1, 25350, 828, 652, 676)).
method(m_set_domain_axes_71, range(category_plot_1, 26186, 450, 678, 691)).
method(m_get_domain_axis_index_72, range(category_plot_1, 26648, 583, 693, 711)).
method(m_get_domain_axis_location_73, range(category_plot_1, 27243, 292, 713, 722)).
method(m_get_domain_axis_location_74, range(category_plot_1, 27543, 593, 724, 742)).
method(m_set_domain_axis_location_75, range(category_plot_1, 28144, 464, 744, 756)).
method(m_set_domain_axis_location_50, range(category_plot_1, 28616, 472, 758, 768)).
method(m_set_domain_axis_location_77, range(category_plot_1, 29096, 479, 770, 783)).
method(m_set_domain_axis_location_76, range(category_plot_1, 29587, 809, 785, 808)).
method(m_get_domain_axis_edge_78, range(category_plot_1, 30404, 277, 810, 818)).
method(m_get_domain_axis_edge_79, range(category_plot_1, 30689, 572, 820, 837)).
method(m_get_domain_axis_count_80, range(category_plot_1, 31269, 181, 839, 846)).
method(m_clear_domain_axes_81, range(category_plot_1, 31458, 477, 848, 861)).
method(m_configure_domain_axes_54, range(category_plot_1, 31943, 322, 863, 873)).
method(m_get_range_axis_84, range(category_plot_1, 32273, 349, 875, 884)).
method(m_get_range_axis_85, range(category_plot_1, 32630, 638, 886, 906)).
method(m_set_range_axis_87, range(category_plot_1, 33276, 282, 908, 916)).
method(m_set_range_axis_88, range(category_plot_1, 33566, 296, 918, 927)).
method(m_set_range_axis_89, range(category_plot_1, 33878, 785, 929, 953)).
method(m_set_range_axes_90, range(category_plot_1, 34671, 448, 955, 968)).
method(m_get_range_axis_index_91, range(category_plot_1, 35127, 886, 970, 996)).
method(m_get_range_axis_location_92, range(category_plot_1, 36021, 215, 998, 1005)).
method(m_get_range_axis_location_93, range(category_plot_1, 36244, 587, 1007, 1025)).
method(m_set_range_axis_location_94, range(category_plot_1, 36839, 483, 1027, 1039)).
method(m_set_range_axis_location_51, range(category_plot_1, 37330, 473, 1041, 1052)).
method(m_set_range_axis_location_96, range(category_plot_1, 37811, 461, 1054, 1066)).
method(m_set_range_axis_location_95, range(category_plot_1, 38280, 800, 1068, 1089)).
method(m_get_range_axis_edge_97, range(category_plot_1, 39088, 229, 1091, 1098)).
method(m_get_range_axis_edge_98, range(category_plot_1, 39325, 502, 1100, 1115)).
method(m_get_range_axis_count_99, range(category_plot_1, 39835, 178, 1117, 1124)).
method(m_clear_range_axes_100, range(category_plot_1, 40021, 467, 1126, 1139)).
method(m_configure_range_axes_55, range(category_plot_1, 40496, 312, 1141, 1151)).
method(m_get_dataset_101, range(category_plot_1, 40816, 268, 1153, 1162)).
method(m_get_dataset_102, range(category_plot_1, 41092, 476, 1164, 1179)).
method(m_set_dataset_103, range(category_plot_1, 41576, 530, 1181, 1194)).
method(m_set_dataset_104, range(category_plot_1, 42114, 772, 1196, 1219)).
method(m_get_dataset_count_105, range(category_plot_1, 42894, 211, 1221, 1230)).
method(m_map_dataset_to_domain_axis_52, range(category_plot_1, 43113, 518, 1232, 1244)).
method(m_get_domain_axis_for_dataset_109, range(category_plot_1, 43639, 643, 1246, 1263)).
method(m_map_dataset_to_range_axis_53, range(category_plot_1, 44294, 512, 1265, 1277)).
method(m_get_range_axis_for_dataset_110, range(category_plot_1, 44814, 629, 1279, 1296)).
method(m_get_renderer_111, range(category_plot_1, 45455, 253, 1298, 1307)).
method(m_get_renderer_112, range(category_plot_1, 45716, 503, 1309, 1324)).
method(m_set_renderer_113, range(category_plot_1, 46231, 405, 1326, 1337)).
method(m_set_renderer_114, range(category_plot_1, 46644, 726, 1339, 1358)).
method(m_set_renderer_115, range(category_plot_1, 47378, 475, 1360, 1372)).
method(m_set_renderer_116, range(category_plot_1, 47861, 1065, 1374, 1407)).
method(m_set_renderers_117, range(category_plot_1, 48934, 395, 1409, 1420)).
method(m_get_renderer_for_dataset_118, range(category_plot_1, 49341, 700, 1422, 1439)).
method(m_get_index_of_119, range(category_plot_1, 50053, 378, 1441, 1451)).
method(m_get_dataset_rendering_order_120, range(category_plot_1, 50439, 296, 1453, 1462)).
method(m_set_dataset_rendering_order_121, range(category_plot_1, 50743, 693, 1464, 1480)).
method(m_get_column_rendering_order_122, range(category_plot_1, 51444, 377, 1482, 1492)).
method(m_set_column_rendering_order_123, range(category_plot_1, 51833, 707, 1494, 1511)).
method(m_get_row_rendering_order_124, range(category_plot_1, 52552, 352, 1513, 1523)).
method(m_set_row_rendering_order_125, range(category_plot_1, 52912, 698, 1525, 1542)).
method(m_is_domain_gridlines_visible_126, range(category_plot_1, 53622, 322, 1544, 1553)).
method(m_set_domain_gridlines_visible_127, range(category_plot_1, 53952, 565, 1555, 1571)).
method(m_get_domain_gridline_position_128, range(category_plot_1, 54525, 320, 1573, 1582)).
method(m_set_domain_gridline_position_129, range(category_plot_1, 54853, 554, 1584, 1598)).
method(m_get_domain_gridline_stroke_130, range(category_plot_1, 55415, 302, 1600, 1609)).
method(m_set_domain_gridline_stroke_131, range(category_plot_1, 55725, 544, 1611, 1625)).
method(m_get_domain_gridline_paint_132, range(category_plot_1, 56277, 295, 1627, 1636)).
method(m_set_domain_gridline_paint_133, range(category_plot_1, 56580, 545, 1638, 1652)).
method(m_is_range_gridlines_visible_134, range(category_plot_1, 57133, 283, 1654, 1663)).
method(m_set_range_gridlines_visible_135, range(category_plot_1, 57424, 541, 1665, 1679)).
method(m_get_range_gridline_stroke_136, range(category_plot_1, 57973, 302, 1681, 1690)).
method(m_set_range_gridline_stroke_137, range(category_plot_1, 58283, 543, 1692, 1706)).
method(m_get_range_gridline_paint_138, range(category_plot_1, 58834, 295, 1708, 1717)).
method(m_set_range_gridline_paint_139, range(category_plot_1, 59137, 532, 1719, 1733)).
method(m_get_fixed_legend_items_140, range(category_plot_1, 59681, 303, 1735, 1744)).
method(m_set_fixed_legend_items_141, range(category_plot_1, 59992, 443, 1746, 1758)).
method(m_get_legend_items_142, range(category_plot_1, 60447, 1392, 1760, 1791)).
method(m_handle_click_143, range(category_plot_1, 61847, 1108, 1793, 1821)).
method(m_zoom_144, range(category_plot_1, 62963, 773, 1823, 1844)).
method(m_dataset_changed_107, range(category_plot_1, 63744, 840, 1846, 1871)).
method(m_renderer_changed_146, range(category_plot_1, 64592, 928, 1873, 1897)).
method(m_add_domain_marker_147, range(category_plot_1, 65532, 564, 1899, 1911)).
method(m_add_domain_marker_148, range(category_plot_1, 66112, 688, 1913, 1927)).
method(m_add_domain_marker_149, range(category_plot_1, 66808, 699, 1929, 1944)).
method(m_add_domain_marker_150, range(category_plot_1, 67520, 1929, 1946, 1993)).
method(m_clear_domain_markers_151, range(category_plot_1, 69457, 1047, 1995, 2021)).
method(m_get_domain_markers_152, range(category_plot_1, 70512, 319, 2023, 2032)).
method(m_get_domain_markers_153, range(category_plot_1, 70839, 814, 2034, 2056)).
method(m_clear_domain_markers_154, range(category_plot_1, 71665, 1270, 2058, 2092)).
method(m_remove_domain_marker_155, range(category_plot_1, 72947, 438, 2094, 2107)).
method(m_remove_domain_marker_156, range(category_plot_1, 73393, 557, 2109, 2123)).
method(m_remove_domain_marker_157, range(category_plot_1, 73958, 579, 2125, 2140)).
method(m_remove_domain_marker_158, range(category_plot_1, 74545, 1041, 2142, 2171)).
method(m_add_range_marker_161, range(category_plot_1, 75598, 551, 2173, 2185)).
method(m_add_range_marker_59, range(category_plot_1, 76165, 675, 2187, 2201)).
method(m_add_range_marker_162, range(category_plot_1, 76848, 617, 2203, 2218)).
method(m_add_range_marker_163, range(category_plot_1, 77473, 1588, 2220, 2261)).
method(m_clear_range_markers_168, range(category_plot_1, 79069, 1038, 2263, 2289)).
method(m_get_range_markers_169, range(category_plot_1, 80115, 366, 2291, 2302)).
method(m_get_range_markers_170, range(category_plot_1, 80489, 810, 2304, 2326)).
method(m_clear_range_markers_171, range(category_plot_1, 81311, 1265, 2328, 2362)).
method(m_remove_range_marker_172, range(category_plot_1, 82584, 480, 2364, 2379)).
method(m_remove_range_marker_173, range(category_plot_1, 83072, 607, 2381, 2397)).
method(m_remove_range_marker_174, range(category_plot_1, 83687, 635, 2399, 2416)).
method(m_remove_range_marker_175, range(category_plot_1, 84330, 1251, 2418, 2453)).
method(m_is_range_crosshair_visible_176, range(category_plot_1, 85589, 283, 2455, 2464)).
method(m_set_range_crosshair_visible_177, range(category_plot_1, 85880, 404, 2466, 2478)).
method(m_is_range_crosshair_locked_on_data_178, range(category_plot_1, 86292, 328, 2480, 2490)).
method(m_set_range_crosshair_locked_on_data_179, range(category_plot_1, 86628, 444, 2492, 2505)).
method(m_get_range_crosshair_value_180, range(category_plot_1, 87080, 239, 2507, 2516)).
method(m_set_range_crosshair_value_181, range(category_plot_1, 87327, 388, 2518, 2530)).
method(m_set_range_crosshair_value_182, range(category_plot_1, 87723, 620, 2532, 2548)).
method(m_get_range_crosshair_stroke_183, range(category_plot_1, 88351, 417, 2550, 2562)).
method(m_set_range_crosshair_stroke_184, range(category_plot_1, 88776, 604, 2564, 2580)).
method(m_get_range_crosshair_paint_185, range(category_plot_1, 89388, 360, 2582, 2593)).
method(m_set_range_crosshair_paint_186, range(category_plot_1, 89756, 527, 2595, 2609)).
method(m_get_annotations_187, range(category_plot_1, 90291, 205, 2611, 2618)).
method(m_add_annotation_188, range(category_plot_1, 90504, 379, 2620, 2630)).
method(m_add_annotation_189, range(category_plot_1, 90895, 619, 2632, 2649)).
method(m_remove_annotation_190, range(category_plot_1, 91522, 486, 2651, 2663)).
method(m_remove_annotation_191, range(category_plot_1, 92016, 784, 2665, 2686)).
method(m_clear_annotations_192, range(category_plot_1, 92808, 228, 2688, 2695)).
method(m_calculate_domain_axis_space_193, range(category_plot_1, 93044, 2309, 2697, 2750)).
method(m_calculate_range_axis_space_194, range(category_plot_1, 95365, 1910, 2752, 2796)).
method(m_calculate_axis_space_195, range(category_plot_1, 97283, 538, 2798, 2812)).
method(m_draw_196, range(category_plot_1, 97833, 7419, 2814, 3000)).
method(m_draw_background_197, range(category_plot_1, 105260, 610, 3002, 3015)).
method(m_draw_axes_198, range(category_plot_1, 105878, 3799, 3017, 3111)).
method(m_render_199, range(category_plot_1, 109685, 3502, 3113, 3182)).
method(m_draw_domain_gridlines_200, range(category_plot_1, 113195, 1675, 3184, 3221)).
method(m_draw_range_gridlines_201, range(category_plot_1, 114879, 1295, 3223, 3253)).
method(m_draw_annotations_202, range(category_plot_1, 116182, 656, 3255, 3273)).
method(m_draw_domain_markers_203, range(category_plot_1, 116846, 1185, 3275, 3304)).
method(m_draw_range_markers_204, range(category_plot_1, 118039, 1161, 3306, 3335)).
method(m_draw_range_line_205, range(category_plot_1, 119208, 1151, 3337, 3365)).
method(m_draw_range_crosshair_206, range(category_plot_1, 120367, 1393, 3367, 3404)).
method(m_get_data_range_207, range(category_plot_1, 121772, 1202, 3406, 3440)).
method(m_datasets_mapped_to_domain_axis_208, range(category_plot_1, 122982, 1176, 3442, 3474)).
method(m_datasets_mapped_to_range_axis_209, range(category_plot_1, 124170, 1002, 3476, 3504)).
method(m_get_weight_210, range(category_plot_1, 125180, 255, 3506, 3516)).
method(m_set_weight_211, range(category_plot_1, 125443, 307, 3518, 3529)).
method(m_get_fixed_domain_axis_space_212, range(category_plot_1, 125762, 297, 3531, 3540)).
method(m_set_fixed_domain_axis_space_213, range(category_plot_1, 126067, 360, 3542, 3552)).
method(m_set_fixed_domain_axis_space_214, range(category_plot_1, 126435, 510, 3554, 3570)).
method(m_get_fixed_range_axis_space_215, range(category_plot_1, 126953, 292, 3572, 3581)).
method(m_set_fixed_range_axis_space_216, range(category_plot_1, 127253, 357, 3583, 3593)).
method(m_set_fixed_range_axis_space_217, range(category_plot_1, 127618, 506, 3595, 3611)).
method(m_get_categories_218, range(category_plot_1, 128132, 448, 3613, 3626)).
method(m_get_categories_for_axis_219, range(category_plot_1, 128592, 995, 3628, 3654)).
method(m_get_draw_shared_domain_axis_220, range(category_plot_1, 129595, 315, 3656, 3666)).
method(m_set_draw_shared_domain_axis_221, range(category_plot_1, 129922, 364, 3668, 3679)).
method(m_is_domain_zoomable_222, range(category_plot_1, 130294, 254, 3681, 3691)).
method(m_is_range_zoomable_223, range(category_plot_1, 130560, 239, 3693, 3702)).
method(m_zoom_domain_axes_224, range(category_plot_1, 130807, 451, 3704, 3715)).
method(m_zoom_domain_axes_225, range(category_plot_1, 131266, 531, 3717, 3729)).
method(m_zoom_domain_axes_226, range(category_plot_1, 131809, 634, 3731, 3747)).
method(m_zoom_range_axes_227, range(category_plot_1, 132451, 470, 3749, 3760)).
method(m_zoom_range_axes_228, range(category_plot_1, 132929, 1528, 3762, 3798)).
method(m_zoom_range_axes_229, range(category_plot_1, 134465, 673, 3800, 3816)).
method(m_get_anchor_value_230, range(category_plot_1, 135150, 214, 3818, 3827)).
method(m_set_anchor_value_231, range(category_plot_1, 135372, 298, 3829, 3839)).
method(m_set_anchor_value_232, range(category_plot_1, 135678, 425, 3841, 3855)).
method(m_equals_233, range(category_plot_1, 136115, 4503, 3857, 3990)).
method(m_clone_234, range(category_plot_1, 140630, 2199, 3992, 4047)).
method(m_write_object_235, range(category_plot_1, 142841, 718, 4049, 4064)).
method(m_read_object_236, range(category_plot_1, 143567, 1982, 4066, 4115)).
%object_list_1 - org.jfree.chart.util.ObjectList
method(m_object_list_47, range(object_list_1, 1988, 71, 55, 59)).
method(m_object_list_650, range(object_list_1, 2069, 182, 61, 68)).
method(m_get_83, range(object_list_1, 2634, 349, 76, 86)).
method(m_set_48, range(object_list_1, 3002, 333, 88, 96)).
method(m_index_of_651, range(object_list_1, 3354, 333, 98, 108)).
%plot_orientation_1 - org.jfree.chart.plot.PlotOrientation
method(m_plot_orientation_355, range(plot_orientation_1, 2409, 158, 67, 74)).
method(m_to_string_356, range(plot_orientation_1, 2575, 164, 76, 83)).
method(m_equals_357, range(plot_orientation_1, 2747, 624, 85, 105)).
method(m_hash_code_358, range(plot_orientation_1, 3383, 171, 107, 114)).
method(m_read_resolve_359, range(plot_orientation_1, 3566, 546, 116, 132)).
%chart_color_1 - org.jfree.chart.ChartColor
method(m_chart_color_2, range(chart_color_1, 4921, 370, 130, 140)).
method(m_create_default_paint_array_3, range(chart_color_1, 5299, 1686, 142, 187)).
%default_drawing_supplier_1 - org.jfree.chart.plot.DefaultDrawingSupplier
method(m_default_drawing_supplier_242, range(default_drawing_supplier_1, 5165, 414, 144, 156)).
method(m_default_drawing_supplier_244, range(default_drawing_supplier_1, 5587, 982, 158, 180)).
method(m_default_drawing_supplier_243, range(default_drawing_supplier_1, 6577, 981, 182, 205)).
method(m_get_next_paint_245, range(default_drawing_supplier_1, 7566, 292, 207, 217)).
method(m_get_next_outline_paint_246, range(default_drawing_supplier_1, 7866, 339, 219, 229)).
method(m_get_next_fill_paint_247, range(default_drawing_supplier_1, 8213, 351, 231, 243)).
method(m_get_next_stroke_248, range(default_drawing_supplier_1, 8572, 305, 245, 255)).
method(m_get_next_outline_stroke_249, range(default_drawing_supplier_1, 8885, 348, 257, 267)).
method(m_get_next_shape_250, range(default_drawing_supplier_1, 9241, 296, 269, 279)).
method(m_create_standard_series_shapes_251, range(default_drawing_supplier_1, 9545, 1902, 281, 337)).
method(m_equals_257, range(default_drawing_supplier_1, 11455, 1583, 339, 392)).
method(m_equal_shapes_258, range(default_drawing_supplier_1, 13050, 737, 394, 418)).
method(m_write_object_259, range(default_drawing_supplier_1, 13795, 1484, 420, 460)).
method(m_read_object_260, range(default_drawing_supplier_1, 15287, 1631, 462, 504)).
method(m_int_array_254, range(default_drawing_supplier_1, 16926, 404, 506, 518)).
method(m_int_array_256, range(default_drawing_supplier_1, 17338, 443, 520, 533)).
method(m_clone_261, range(default_drawing_supplier_1, 17789, 398, 535, 546)).
%unit_type_1 - org.jfree.chart.util.UnitType
method(m_unit_type_692, range(unit_type_1, 2098, 144, 64, 71)).
method(m_to_string_693, range(unit_type_1, 2248, 157, 73, 80)).
method(m_equals_694, range(unit_type_1, 2411, 539, 82, 102)).
method(m_hash_code_695, range(unit_type_1, 2956, 166, 104, 111)).
method(m_read_resolve_696, range(unit_type_1, 3128, 462, 113, 128)).
%axis_location_1 - org.jfree.chart.axis.AxisLocation
method(m_axis_location_4, range(axis_location_1, 3006, 155, 79, 86)).
method(m_get_opposite_5, range(axis_location_1, 3169, 236, 88, 97)).
method(m_to_string_6, range(axis_location_1, 3417, 164, 99, 106)).
method(m_equals_7, range(axis_location_1, 3589, 619, 108, 130)).
method(m_get_opposite_8, range(axis_location_1, 4220, 1075, 132, 160)).
method(m_read_resolve_9, range(axis_location_1, 5311, 761, 162, 183)).
%dataset_rendering_order_1 - org.jfree.chart.plot.DatasetRenderingOrder
method(m_dataset_rendering_order_237, range(dataset_rendering_order_1, 2689, 164, 75, 82)).
method(m_to_string_238, range(dataset_rendering_order_1, 2861, 190, 84, 91)).
method(m_equals_239, range(dataset_rendering_order_1, 3059, 630, 93, 113)).
method(m_hash_code_240, range(dataset_rendering_order_1, 3701, 171, 115, 122)).
method(m_read_resolve_241, range(dataset_rendering_order_1, 3884, 531, 124, 139)).
%chart_change_event_type_1 - org.jfree.chart.event.ChartChangeEventType
method(m_chart_change_event_type_22, range(chart_change_event_type_1, 2432, 163, 69, 76)).
method(m_to_string_23, range(chart_change_event_type_1, 2603, 164, 78, 85)).
method(m_equals_24, range(chart_change_event_type_1, 2775, 625, 87, 107)).
method(m_hash_code_25, range(chart_change_event_type_1, 3412, 173, 109, 116)).
method(m_read_resolve_26, range(chart_change_event_type_1, 3593, 669, 118, 136)).
%marker_change_event_1 - org.jfree.chart.event.MarkerChangeEvent
method(m_marker_change_event_27, range(marker_change_event_1, 1909, 329, 56, 67)).
method(m_get_marker_28, range(marker_change_event_1, 2246, 251, 69, 78)).
%xyplot_1 - org.jfree.chart.plot.XYPlot
method(m_xyplot_371, range(xyplot_1, 21825, 237, 496, 502)).
method(m_xyplot_372, range(xyplot_1, 22070, 3776, 504, 601)).
method(m_get_plot_type_378, range(xyplot_1, 25854, 225, 603, 610)).
method(m_get_orientation_379, range(xyplot_1, 26087, 267, 612, 621)).
method(m_set_orientation_380, range(xyplot_1, 26362, 586, 623, 639)).
method(m_get_axis_offset_381, range(xyplot_1, 26956, 252, 641, 650)).
method(m_set_axis_offset_382, range(xyplot_1, 27216, 517, 652, 666)).
method(m_get_domain_axis_383, range(xyplot_1, 27741, 450, 668, 680)).
method(m_get_domain_axis_384, range(xyplot_1, 28199, 727, 682, 704)).
method(m_set_domain_axis_385, range(xyplot_1, 28934, 372, 706, 717)).
method(m_set_domain_axis_386, range(xyplot_1, 29314, 414, 719, 731)).
method(m_set_domain_axis_387, range(xyplot_1, 29740, 812, 733, 759)).
method(m_set_domain_axes_388, range(xyplot_1, 30560, 447, 761, 774)).
method(m_get_domain_axis_location_389, range(xyplot_1, 31019, 314, 776, 785)).
method(m_set_domain_axis_location_390, range(xyplot_1, 31341, 413, 787, 798)).
method(m_set_domain_axis_location_391, range(xyplot_1, 31762, 478, 800, 812)).
method(m_get_domain_axis_edge_392, range(xyplot_1, 32248, 395, 814, 826)).
method(m_get_domain_axis_count_393, range(xyplot_1, 32651, 224, 828, 837)).
method(m_clear_domain_axes_394, range(xyplot_1, 32883, 511, 839, 854)).
method(m_configure_domain_axes_376, range(xyplot_1, 33402, 317, 856, 866)).
method(m_get_domain_axis_location_395, range(xyplot_1, 33727, 757, 868, 888)).
method(m_set_domain_axis_location_396, range(xyplot_1, 34492, 483, 890, 903)).
method(m_set_domain_axis_location_397, range(xyplot_1, 34983, 905, 905, 930)).
method(m_get_domain_axis_edge_398, range(xyplot_1, 35896, 551, 932, 949)).
method(m_get_range_axis_399, range(xyplot_1, 36455, 413, 951, 963)).
method(m_set_range_axis_400, range(xyplot_1, 36876, 810, 965, 993)).
method(m_get_range_axis_location_401, range(xyplot_1, 37694, 310, 995, 1004)).
method(m_set_range_axis_location_402, range(xyplot_1, 38012, 408, 1006, 1017)).
method(m_set_range_axis_location_403, range(xyplot_1, 38428, 482, 1019, 1031)).
method(m_get_range_axis_edge_404, range(xyplot_1, 38918, 348, 1033, 1044)).
method(m_get_range_axis_405, range(xyplot_1, 39274, 672, 1046, 1068)).
method(m_set_range_axis_406, range(xyplot_1, 39954, 367, 1070, 1081)).
method(m_set_range_axis_407, range(xyplot_1, 40334, 838, 1083, 1109)).
method(m_set_range_axes_408, range(xyplot_1, 41180, 445, 1111, 1124)).
method(m_get_range_axis_count_409, range(xyplot_1, 41637, 222, 1126, 1135)).
method(m_clear_range_axes_410, range(xyplot_1, 41867, 507, 1137, 1152)).
method(m_configure_range_axes_377, range(xyplot_1, 42382, 357, 1154, 1166)).
method(m_get_range_axis_location_411, range(xyplot_1, 42747, 750, 1168, 1188)).
method(m_set_range_axis_location_412, range(xyplot_1, 43505, 451, 1190, 1202)).
method(m_set_range_axis_location_413, range(xyplot_1, 43968, 898, 1204, 1229)).
method(m_get_range_axis_edge_414, range(xyplot_1, 44874, 581, 1231, 1249)).
method(m_get_dataset_415, range(xyplot_1, 45463, 286, 1251, 1261)).
method(m_get_dataset_416, range(xyplot_1, 45757, 431, 1263, 1278)).
method(m_set_dataset_417, range(xyplot_1, 46196, 356, 1280, 1291)).
method(m_set_dataset_418, range(xyplot_1, 46560, 707, 1293, 1314)).
method(m_get_dataset_count_419, range(xyplot_1, 47275, 181, 1316, 1323)).
method(m_index_of_420, range(xyplot_1, 47464, 540, 1325, 1342)).
method(m_map_dataset_to_domain_axis_374, range(xyplot_1, 48012, 636, 1344, 1358)).
method(m_map_dataset_to_range_axis_375, range(xyplot_1, 48656, 634, 1360, 1374)).
method(m_get_renderer_422, range(xyplot_1, 49298, 271, 1376, 1385)).
method(m_get_renderer_423, range(xyplot_1, 49577, 498, 1387, 1403)).
method(m_set_renderer_424, range(xyplot_1, 50083, 428, 1405, 1416)).
method(m_set_renderer_425, range(xyplot_1, 50519, 348, 1418, 1429)).
method(m_set_renderer_426, range(xyplot_1, 50875, 842, 1431, 1457)).
method(m_set_renderers_427, range(xyplot_1, 51725, 423, 1459, 1470)).
method(m_get_dataset_rendering_order_428, range(xyplot_1, 52160, 303, 1472, 1481)).
method(m_set_dataset_rendering_order_429, range(xyplot_1, 52471, 693, 1483, 1499)).
method(m_get_series_rendering_order_430, range(xyplot_1, 53172, 297, 1501, 1510)).
method(m_set_series_rendering_order_431, range(xyplot_1, 53477, 673, 1512, 1528)).
method(m_get_index_of_432, range(xyplot_1, 54158, 370, 1530, 1540)).
method(m_get_renderer_for_dataset_433, range(xyplot_1, 54536, 844, 1542, 1563)).
method(m_get_weight_434, range(xyplot_1, 55388, 254, 1565, 1575)).
method(m_set_weight_435, range(xyplot_1, 55650, 307, 1577, 1588)).
method(m_is_domain_gridlines_visible_436, range(xyplot_1, 55965, 348, 1590, 1600)).
method(m_set_domain_gridlines_visible_437, range(xyplot_1, 56321, 555, 1602, 1618)).
method(m_get_domain_gridline_stroke_438, range(xyplot_1, 56884, 322, 1620, 1630)).
method(m_set_domain_gridline_stroke_439, range(xyplot_1, 57214, 737, 1632, 1651)).
method(m_get_domain_gridline_paint_440, range(xyplot_1, 57959, 315, 1653, 1663)).
method(m_set_domain_gridline_paint_441, range(xyplot_1, 58282, 639, 1665, 1682)).
method(m_is_range_gridlines_visible_442, range(xyplot_1, 58929, 313, 1684, 1694)).
method(m_set_range_gridlines_visible_443, range(xyplot_1, 59250, 555, 1696, 1712)).
method(m_get_range_gridline_stroke_444, range(xyplot_1, 59813, 318, 1714, 1724)).
method(m_set_range_gridline_stroke_445, range(xyplot_1, 60139, 539, 1726, 1740)).
method(m_get_range_gridline_paint_446, range(xyplot_1, 60686, 311, 1742, 1752)).
method(m_set_range_gridline_paint_447, range(xyplot_1, 61005, 527, 1754, 1768)).
method(m_is_domain_zero_baseline_visible_448, range(xyplot_1, 61540, 355, 1770, 1782)).
method(m_set_domain_zero_baseline_visible_449, range(xyplot_1, 61903, 472, 1784, 1798)).
method(m_get_domain_zero_baseline_stroke_450, range(xyplot_1, 62383, 347, 1800, 1811)).
method(m_set_domain_zero_baseline_stroke_451, range(xyplot_1, 62738, 575, 1813, 1829)).
method(m_get_domain_zero_baseline_paint_452, range(xyplot_1, 63321, 360, 1831, 1843)).
method(m_set_domain_zero_baseline_paint_453, range(xyplot_1, 63689, 576, 1845, 1861)).
method(m_is_range_zero_baseline_visible_454, range(xyplot_1, 64277, 321, 1863, 1873)).
method(m_set_range_zero_baseline_visible_455, range(xyplot_1, 64606, 438, 1875, 1887)).
method(m_get_range_zero_baseline_stroke_456, range(xyplot_1, 65052, 313, 1889, 1898)).
method(m_set_range_zero_baseline_stroke_457, range(xyplot_1, 65373, 542, 1900, 1914)).
method(m_get_range_zero_baseline_paint_458, range(xyplot_1, 65923, 326, 1916, 1926)).
method(m_set_range_zero_baseline_paint_459, range(xyplot_1, 66257, 542, 1928, 1942)).
method(m_get_domain_tick_band_paint_460, range(xyplot_1, 66807, 349, 1944, 1954)).
method(m_set_domain_tick_band_paint_461, range(xyplot_1, 67164, 314, 1956, 1966)).
method(m_get_range_tick_band_paint_462, range(xyplot_1, 67486, 345, 1968, 1978)).
method(m_set_range_tick_band_paint_463, range(xyplot_1, 67839, 310, 1980, 1990)).
method(m_get_quadrant_origin_464, range(xyplot_1, 68157, 329, 1992, 2002)).
method(m_set_quadrant_origin_465, range(xyplot_1, 68494, 483, 2004, 2018)).
method(m_get_quadrant_paint_466, range(xyplot_1, 68985, 528, 2020, 2035)).
method(m_set_quadrant_paint_467, range(xyplot_1, 69521, 630, 2037, 2053)).
method(m_add_domain_marker_468, range(xyplot_1, 70159, 606, 2055, 2070)).
method(m_add_domain_marker_469, range(xyplot_1, 70773, 625, 2072, 2086)).
method(m_clear_domain_markers_470, range(xyplot_1, 71406, 1077, 2088, 2114)).
method(m_clear_domain_markers_471, range(xyplot_1, 72491, 1297, 2116, 2151)).
method(m_add_domain_marker_472, range(xyplot_1, 73796, 728, 2153, 2170)).
method(m_add_domain_marker_473, range(xyplot_1, 74532, 1845, 2172, 2218)).
method(m_remove_domain_marker_474, range(xyplot_1, 76385, 438, 2220, 2233)).
method(m_remove_domain_marker_475, range(xyplot_1, 76831, 557, 2235, 2249)).
method(m_remove_domain_marker_476, range(xyplot_1, 77396, 579, 2251, 2266)).
method(m_remove_domain_marker_477, range(xyplot_1, 77983, 1085, 2268, 2298)).
method(m_add_range_marker_478, range(xyplot_1, 79080, 528, 2300, 2313)).
method(m_add_range_marker_479, range(xyplot_1, 79616, 621, 2315, 2329)).
method(m_clear_range_markers_480, range(xyplot_1, 80245, 1023, 2331, 2357)).
method(m_add_range_marker_481, range(xyplot_1, 81276, 684, 2359, 2375)).
method(m_add_range_marker_482, range(xyplot_1, 81972, 1553, 2377, 2416)).
method(m_clear_range_markers_483, range(xyplot_1, 83533, 1246, 2418, 2451)).
method(m_remove_range_marker_484, range(xyplot_1, 84787, 434, 2453, 2466)).
method(m_remove_range_marker_485, range(xyplot_1, 85229, 554, 2468, 2482)).
method(m_remove_range_marker_486, range(xyplot_1, 85791, 577, 2484, 2499)).
method(m_remove_range_marker_487, range(xyplot_1, 86380, 1184, 2501, 2534)).
method(m_add_annotation_488, range(xyplot_1, 87572, 403, 2536, 2547)).
method(m_add_annotation_489, range(xyplot_1, 87987, 613, 2549, 2566)).
method(m_remove_annotation_490, range(xyplot_1, 88608, 505, 2568, 2581)).
method(m_remove_annotation_491, range(xyplot_1, 89121, 755, 2583, 2603)).
method(m_get_annotations_492, range(xyplot_1, 89884, 275, 2605, 2616)).
method(m_clear_annotations_493, range(xyplot_1, 90167, 279, 2618, 2627)).
method(m_calculate_axis_space_494, range(xyplot_1, 90458, 540, 2629, 2643)).
method(m_calculate_domain_axis_space_495, range(xyplot_1, 91006, 1799, 2645, 2690)).
method(m_calculate_range_axis_space_496, range(xyplot_1, 92813, 1783, 2692, 2736)).
method(m_draw_497, range(xyplot_1, 94604, 11094, 2738, 3006)).
method(m_draw_background_498, range(xyplot_1, 105706, 335, 3008, 3018)).
method(m_draw_quadrants_499, range(xyplot_1, 106049, 4739, 3020, 3129)).
method(m_draw_domain_tick_bands_500, range(xyplot_1, 110796, 1294, 3131, 3164)).
method(m_draw_range_tick_bands_501, range(xyplot_1, 112098, 1282, 3166, 3199)).
method(m_draw_axes_502, range(xyplot_1, 113388, 3592, 3201, 3286)).
method(m_render_503, range(xyplot_1, 116988, 4359, 3288, 3378)).
method(m_get_domain_axis_for_dataset_504, range(xyplot_1, 121355, 741, 3380, 3405)).
method(m_get_range_axis_for_dataset_505, range(xyplot_1, 122104, 731, 3407, 3432)).
method(m_draw_domain_gridlines_506, range(xyplot_1, 122843, 1063, 3434, 3462)).
method(m_draw_range_gridlines_507, range(xyplot_1, 123914, 1336, 3464, 3499)).
method(m_draw_zero_domain_baseline_508, range(xyplot_1, 125258, 627, 3501, 3518)).
method(m_draw_zero_range_baseline_509, range(xyplot_1, 125893, 532, 3520, 3533)).
method(m_draw_annotations_510, range(xyplot_1, 126433, 710, 3535, 3554)).
method(m_draw_domain_markers_511, range(xyplot_1, 127151, 1212, 3556, 3587)).
method(m_draw_range_markers_512, range(xyplot_1, 128371, 1203, 3589, 3619)).
method(m_get_domain_markers_513, range(xyplot_1, 129582, 364, 3621, 3632)).
method(m_get_range_markers_514, range(xyplot_1, 129954, 361, 3634, 3645)).
method(m_get_domain_markers_515, range(xyplot_1, 130323, 858, 3647, 3671)).
method(m_get_range_markers_516, range(xyplot_1, 131189, 855, 3673, 3697)).
method(m_draw_horizontal_line_517, range(xyplot_1, 132052, 1054, 3699, 3726)).
method(m_draw_domain_crosshair_518, range(xyplot_1, 133118, 1436, 3728, 3764)).
method(m_draw_vertical_line_519, range(xyplot_1, 134562, 1021, 3766, 3792)).
method(m_draw_range_crosshair_520, range(xyplot_1, 135591, 1436, 3794, 3830)).
method(m_handle_click_521, range(xyplot_1, 137035, 1155, 3832, 3859)).
method(m_get_datasets_mapped_to_domain_axis_522, range(xyplot_1, 138198, 1028, 3861, 3889)).
method(m_get_datasets_mapped_to_range_axis_523, range(xyplot_1, 139234, 1026, 3891, 3919)).
method(m_get_domain_axis_index_524, range(xyplot_1, 140268, 605, 3921, 3941)).
method(m_get_range_axis_index_525, range(xyplot_1, 140881, 602, 3943, 3963)).
method(m_get_data_range_526, range(xyplot_1, 141491, 2012, 3965, 4023)).
method(m_dataset_changed_421, range(xyplot_1, 143511, 621, 4025, 4043)).
method(m_renderer_changed_527, range(xyplot_1, 144140, 208, 4045, 4052)).
method(m_is_domain_crosshair_visible_528, range(xyplot_1, 144356, 287, 4054, 4063)).
method(m_set_domain_crosshair_visible_529, range(xyplot_1, 144651, 513, 4065, 4079)).
method(m_is_domain_crosshair_locked_on_data_530, range(xyplot_1, 145172, 331, 4081, 4091)).
method(m_set_domain_crosshair_locked_on_data_531, range(xyplot_1, 145511, 557, 4093, 4107)).
method(m_get_domain_crosshair_value_532, range(xyplot_1, 146076, 243, 4109, 4118)).
method(m_set_domain_crosshair_value_533, range(xyplot_1, 146327, 374, 4120, 4130)).
method(m_set_domain_crosshair_value_534, range(xyplot_1, 146709, 551, 4132, 4147)).
method(m_get_domain_crosshair_stroke_535, range(xyplot_1, 147268, 396, 4149, 4160)).
method(m_set_domain_crosshair_stroke_536, range(xyplot_1, 147672, 569, 4162, 4177)).
method(m_get_domain_crosshair_paint_537, range(xyplot_1, 148249, 359, 4179, 4190)).
method(m_set_domain_crosshair_paint_538, range(xyplot_1, 148616, 538, 4192, 4206)).
method(m_is_range_crosshair_visible_539, range(xyplot_1, 149162, 324, 4208, 4218)).
method(m_set_range_crosshair_visible_540, range(xyplot_1, 149494, 520, 4220, 4234)).
method(m_is_range_crosshair_locked_on_data_541, range(xyplot_1, 150022, 328, 4236, 4246)).
method(m_set_range_crosshair_locked_on_data_542, range(xyplot_1, 150358, 552, 4248, 4262)).
method(m_get_range_crosshair_value_543, range(xyplot_1, 150918, 239, 4264, 4273)).
method(m_set_range_crosshair_value_544, range(xyplot_1, 151165, 387, 4275, 4287)).
method(m_set_range_crosshair_value_545, range(xyplot_1, 151560, 593, 4289, 4304)).
method(m_get_range_crosshair_stroke_546, range(xyplot_1, 152161, 383, 4306, 4317)).
method(m_set_range_crosshair_stroke_547, range(xyplot_1, 152552, 564, 4319, 4334)).
method(m_get_range_crosshair_paint_548, range(xyplot_1, 153124, 353, 4336, 4347)).
method(m_set_range_crosshair_paint_549, range(xyplot_1, 153485, 536, 4349, 4363)).
method(m_get_fixed_domain_axis_space_550, range(xyplot_1, 154029, 297, 4365, 4374)).
method(m_set_fixed_domain_axis_space_551, range(xyplot_1, 154334, 360, 4376, 4386)).
method(m_set_fixed_domain_axis_space_552, range(xyplot_1, 154702, 526, 4388, 4404)).
method(m_get_fixed_range_axis_space_553, range(xyplot_1, 155236, 292, 4406, 4415)).
method(m_set_fixed_range_axis_space_554, range(xyplot_1, 155536, 356, 4417, 4427)).
method(m_set_fixed_range_axis_space_555, range(xyplot_1, 155900, 522, 4429, 4445)).
method(m_zoom_domain_axes_556, range(xyplot_1, 156430, 535, 4447, 4460)).
method(m_zoom_domain_axes_557, range(xyplot_1, 156973, 1492, 4462, 4497)).
method(m_zoom_domain_axes_558, range(xyplot_1, 158473, 1152, 4499, 4521)).
method(m_zoom_range_axes_559, range(xyplot_1, 159633, 527, 4523, 4536)).
method(m_zoom_range_axes_560, range(xyplot_1, 160172, 1528, 4538, 4574)).
method(m_zoom_range_axes_561, range(xyplot_1, 161708, 729, 4576, 4594)).
method(m_is_domain_zoomable_562, range(xyplot_1, 162445, 266, 4596, 4606)).
method(m_is_range_zoomable_563, range(xyplot_1, 162719, 265, 4608, 4618)).
method(m_get_series_count_564, range(xyplot_1, 162992, 422, 4620, 4633)).
method(m_get_fixed_legend_items_565, range(xyplot_1, 163422, 299, 4635, 4644)).
method(m_set_fixed_legend_items_566, range(xyplot_1, 163729, 440, 4646, 4658)).
method(m_get_legend_items_567, range(xyplot_1, 164177, 1542, 4660, 4696)).
method(m_equals_568, range(xyplot_1, 165727, 6517, 4698, 4880)).
method(m_clone_569, range(xyplot_1, 172252, 3673, 4882, 4964)).
method(m_write_object_570, range(xyplot_1, 175933, 1497, 4966, 4993)).
method(m_read_object_571, range(xyplot_1, 177438, 2935, 4995, 5061)).
%length_adjustment_type_1 - org.jfree.chart.util.LengthAdjustmentType
method(m_length_adjustment_type_645, range(length_adjustment_type_1, 2371, 156, 71, 78)).
method(m_to_string_646, range(length_adjustment_type_1, 2533, 157, 80, 87)).
method(m_equals_647, range(length_adjustment_type_1, 2696, 611, 89, 109)).
method(m_hash_code_648, range(length_adjustment_type_1, 3313, 166, 111, 118)).
method(m_read_resolve_649, range(length_adjustment_type_1, 3485, 631, 120, 138)).
%category_anchor_1 - org.jfree.chart.axis.CategoryAnchor
method(m_category_anchor_10, range(category_anchor_1, 2405, 157, 70, 77)).
method(m_to_string_11, range(category_anchor_1, 2570, 164, 79, 86)).
method(m_equals_12, range(category_anchor_1, 2742, 595, 88, 110)).
method(m_read_resolve_13, range(category_anchor_1, 3349, 603, 112, 130)).
%series_rendering_order_1 - org.jfree.chart.plot.SeriesRenderingOrder
method(m_series_rendering_order_360, range(series_rendering_order_1, 2599, 163, 73, 80)).
method(m_to_string_361, range(series_rendering_order_1, 2770, 190, 82, 89)).
method(m_equals_362, range(series_rendering_order_1, 2968, 626, 91, 111)).
method(m_hash_code_363, range(series_rendering_order_1, 3602, 171, 113, 120)).
method(m_read_resolve_364, range(series_rendering_order_1, 3785, 519, 122, 137)).
%layer_1 - org.jfree.chart.util.Layer
method(m_layer_640, range(layer_1, 2092, 141, 64, 71)).
method(m_to_string_641, range(layer_1, 2239, 157, 73, 80)).
method(m_equals_642, range(layer_1, 2402, 536, 82, 106)).
method(m_hash_code_643, range(layer_1, 2944, 166, 108, 115)).
method(m_read_resolve_644, range(layer_1, 3116, 493, 117, 133)).
%plot_change_event_1 - org.jfree.chart.event.PlotChangeEvent
method(m_plot_change_event_29, range(plot_change_event_1, 2136, 212, 58, 66)).
method(m_get_plot_30, range(plot_change_event_1, 2356, 185, 68, 75)).
%rectangle_insets_1 - org.jfree.chart.util.RectangleInsets
method(m_rectangle_insets_660, range(rectangle_insets_1, 2788, 189, 83, 90)).
method(m_rectangle_insets_49, range(rectangle_insets_1, 2987, 414, 92, 103)).
method(m_rectangle_insets_659, range(rectangle_insets_1, 3411, 710, 105, 125)).
method(m_get_unit_type_661, range(rectangle_insets_1, 4131, 288, 127, 135)).
method(m_get_top_662, range(rectangle_insets_1, 4427, 141, 137, 144)).
method(m_get_bottom_663, range(rectangle_insets_1, 4578, 153, 146, 153)).
method(m_get_left_664, range(rectangle_insets_1, 4741, 145, 155, 162)).
method(m_get_right_665, range(rectangle_insets_1, 4896, 149, 164, 171)).
method(m_equals_666, range(rectangle_insets_1, 5055, 861, 173, 204)).
method(m_hash_code_667, range(rectangle_insets_1, 5922, 815, 206, 224)).
method(m_to_string_668, range(rectangle_insets_1, 6743, 337, 226, 235)).
method(m_create_adjusted_rectangle_669, range(rectangle_insets_1, 7090, 1839, 237, 280)).
method(m_create_inset_rectangle_670, range(rectangle_insets_1, 8939, 299, 282, 291)).
method(m_create_inset_rectangle_671, range(rectangle_insets_1, 9248, 1199, 293, 325)).
method(m_create_outset_rectangle_672, range(rectangle_insets_1, 10457, 300, 327, 336)).
method(m_create_outset_rectangle_673, range(rectangle_insets_1, 10767, 1283, 338, 371)).
method(m_calculate_top_inset_674, range(rectangle_insets_1, 12060, 381, 373, 386)).
method(m_calculate_top_outset_675, range(rectangle_insets_1, 12451, 413, 388, 401)).
method(m_calculate_bottom_inset_676, range(rectangle_insets_1, 12874, 396, 403, 416)).
method(m_calculate_bottom_outset_677, range(rectangle_insets_1, 13276, 428, 418, 431)).
method(m_calculate_left_inset_678, range(rectangle_insets_1, 13710, 382, 433, 446)).
method(m_calculate_left_outset_679, range(rectangle_insets_1, 14102, 414, 448, 461)).
method(m_calculate_right_inset_680, range(rectangle_insets_1, 14526, 387, 463, 476)).
method(m_calculate_right_outset_681, range(rectangle_insets_1, 14923, 419, 478, 491)).
method(m_trim_width_682, range(rectangle_insets_1, 15352, 279, 493, 502)).
method(m_extend_width_683, range(rectangle_insets_1, 15641, 286, 504, 513)).
method(m_trim_height_684, range(rectangle_insets_1, 15933, 304, 515, 525)).
method(m_extend_height_685, range(rectangle_insets_1, 16247, 311, 527, 537)).
method(m_trim_686, range(rectangle_insets_1, 16564, 521, 539, 552)).
%abstract_object_list_1 - org.jfree.chart.util.AbstractObjectList
method(m_abstract_object_list_627, range(abstract_object_list_1, 2516, 155, 73, 78)).
method(m_abstract_object_list_628, range(abstract_object_list_1, 2677, 209, 80, 87)).
method(m_abstract_object_list_629, range(abstract_object_list_1, 2892, 304, 89, 98)).
method(m_get_630, range(abstract_object_list_1, 3202, 405, 100, 114)).
method(m_set_631, range(abstract_object_list_1, 3613, 682, 116, 133)).
method(m_clear_633, range(abstract_object_list_1, 4301, 131, 135, 141)).
method(m_size_82, range(abstract_object_list_1, 4438, 148, 143, 150)).
method(m_index_of_634, range(abstract_object_list_1, 4592, 419, 152, 167)).
method(m_equals_635, range(abstract_object_list_1, 5017, 684, 169, 198)).
method(m_hash_code_636, range(abstract_object_list_1, 5707, 747, 200, 222)).
method(m_clone_637, range(abstract_object_list_1, 6460, 672, 224, 243)).
method(m_write_object_638, range(abstract_object_list_1, 7138, 680, 245, 269)).
method(m_read_object_639, range(abstract_object_list_1, 7828, 666, 271, 292)).

%%% Blocks
%category_marker_1 - org.jfree.chart.plot.CategoryMarker
block(category_marker_1_block1, block, category_marker_1_code7, body, range(category_marker_1, 2777, 67, 79, 81)).
block(category_marker_1_block2, block, category_marker_1_code9, body, range(category_marker_1, 3153, 64, 90, 92)).
block(category_marker_1_block3, block, category_marker_1_code10, body, range(category_marker_1, 3841, 158, 106, 110)).
%category_plot_tests_1 - org.jfree.chart.plot.junit.CategoryPlotTests
block(category_plot_tests_1_block1, block, category_plot_tests_1_code3, body, range(category_plot_tests_1, 3852, 62, 106, 108)).
block(category_plot_tests_1_block2, block, category_plot_tests_1_code6, body, range(category_plot_tests_1, 4062, 28, 115, 117)).
block(category_plot_tests_1_block3, block, category_plot_tests_1_code7, body, range(category_plot_tests_1, 28729, 129, 769, 772)).
block(category_plot_tests_1_block4, block, category_plot_tests_1_code12, body, range(category_plot_tests_1, 29007, 116, 778, 781)).
%text_anchor_1 - org.jfree.chart.text.TextAnchor
block(text_anchor_1_block1, block, text_anchor_1_code108, body, range(text_anchor_1, 4161, 33, 124, 126)).
%xyplot_tests_1 - org.jfree.chart.plot.junit.XYPlotTests
block(xyplot_tests_1_block1, block, xyplot_tests_1_code3, body, range(xyplot_tests_1, 4250, 56, 115, 117)).
block(xyplot_tests_1_block2, block, xyplot_tests_1_code6, body, range(xyplot_tests_1, 4448, 28, 124, 126)).
block(xyplot_tests_1_block3, block, xyplot_tests_1_code7, body, range(xyplot_tests_1, 38020, 105, 1026, 1029)).
block(xyplot_tests_1_block4, block, xyplot_tests_1_code12, body, range(xyplot_tests_1, 38274, 104, 1035, 1038)).
%marker_1 - org.jfree.chart.plot.Marker
block(marker_1_block1, block, marker_1_code7, body, range(marker_1, 5223, 35, 143, 145)).
block(marker_1_block2, block, marker_1_code8, body, range(marker_1, 5422, 113, 152, 155)).
block(marker_1_block3, block, marker_1_code11, body, range(marker_1, 6337, 1015, 173, 199)).
block(marker_1_block4, block, marker_1_stmt3, then_statement, range(marker_1, 6369, 87, 175, 177)).
block(marker_1_block5, block, marker_1_stmt4, then_statement, range(marker_1, 6486, 88, 178, 180)).
block(marker_1_block6, block, marker_1_code17, body, range(marker_1, 15636, 216, 489, 495)).
block(marker_1_block7, block, marker_1_stmt18, then_statement, range(marker_1, 15664, 85, 490, 492)).
block(marker_1_block8, block, marker_1_code19, body, range(marker_1, 17004, 78, 533, 535)).
block(marker_1_block9, block, marker_1_code21, body, range(marker_1, 17735, 311, 557, 566)).
block(marker_1_block10, block, marker_1_stmt23, body, range(marker_1, 17866, 171, 560, 564)).
%value_marker_1 - org.jfree.chart.plot.ValueMarker
block(value_marker_1_block1, block, value_marker_1_code3, body, range(value_marker_1, 2295, 55, 67, 70)).
block(value_marker_1_block2, block, value_marker_1_code4, body, range(value_marker_1, 3332, 104, 94, 97)).
%sort_order_1 - org.jfree.chart.util.SortOrder
block(sort_order_1_block1, block, sort_order_1_code17, body, range(sort_order_1, 2456, 33, 74, 76)).
%plot_1 - org.jfree.chart.plot.Plot
block(plot_1_block1, block, plot_1_code55, body, range(plot_1, 12535, 714, 284, 304)).
block(plot_1_block2, block, plot_1_code60, body, range(plot_1, 16989, 37, 432, 434)).
block(plot_1_block3, block, plot_1_code61, body, range(plot_1, 30626, 301, 887, 894)).
block(plot_1_block4, block, plot_1_stmt17, body, range(plot_1, 30755, 165, 889, 893)).
block(plot_1_block5, block, plot_1_code68, body, range(plot_1, 31090, 61, 901, 903)).
%chart_change_event_1 - org.jfree.chart.event.ChartChangeEvent
block(chart_change_event_1_block1, block, chart_change_event_1_code3, body, range(chart_change_event_1, 2474, 67, 68, 70)).
block(chart_change_event_1_block2, block, chart_change_event_1_code4, body, range(chart_change_event_1, 3317, 88, 92, 96)).
block(chart_change_event_1_block3, block, chart_change_event_1_code5, body, range(chart_change_event_1, 4164, 35, 130, 132)).
%rectangle_anchor_1 - org.jfree.chart.util.RectangleAnchor
block(rectangle_anchor_1_block1, block, rectangle_anchor_1_code57, body, range(rectangle_anchor_1, 3515, 33, 106, 108)).
%category_plot_1 - org.jfree.chart.plot.CategoryPlot
block(category_plot_1_block1, block, category_plot_1_code56, body, range(category_plot_1, 18156, 47, 429, 431)).
block(category_plot_1_block2, block, category_plot_1_code57, body, range(category_plot_1, 18757, 2894, 445, 525)).
block(category_plot_1_block3, block, category_plot_1_stmt13, then_statement, range(category_plot_1, 19378, 58, 464, 466)).
block(category_plot_1_block4, block, category_plot_1_stmt18, then_statement, range(category_plot_1, 19716, 96, 474, 477)).
block(category_plot_1_block5, block, category_plot_1_stmt21, then_statement, range(category_plot_1, 19937, 100, 481, 484)).
block(category_plot_1_block6, block, category_plot_1_stmt25, then_statement, range(category_plot_1, 20202, 98, 489, 492)).
block(category_plot_1_block7, block, category_plot_1_code76, body, range(category_plot_1, 29003, 85, 765, 768)).
block(category_plot_1_block8, block, category_plot_1_code77, body, range(category_plot_1, 30091, 305, 799, 808)).
block(category_plot_1_block9, block, category_plot_1_stmt48, then_statement, range(category_plot_1, 30138, 129, 800, 803)).
block(category_plot_1_block10, block, category_plot_1_stmt50, then_statement, range(category_plot_1, 30345, 44, 805, 807)).
block(category_plot_1_block11, block, category_plot_1_code78, body, range(category_plot_1, 32031, 234, 866, 873)).
block(category_plot_1_block12, block, category_plot_1_stmt51, body, range(category_plot_1, 32091, 167, 867, 872)).
block(category_plot_1_block13, block, category_plot_1_stmt53, then_statement, range(category_plot_1, 32196, 51, 869, 871)).
block(category_plot_1_block14, block, category_plot_1_code84, body, range(category_plot_1, 32828, 440, 893, 906)).
block(category_plot_1_block15, block, category_plot_1_stmt55, then_statement, range(category_plot_1, 32908, 73, 895, 897)).
block(category_plot_1_block16, block, category_plot_1_stmt57, then_statement, range(category_plot_1, 33011, 226, 898, 904)).
block(category_plot_1_block17, block, category_plot_1_stmt59, then_statement, range(category_plot_1, 33102, 124, 900, 903)).
block(category_plot_1_block18, block, category_plot_1_code91, body, range(category_plot_1, 37743, 60, 1050, 1052)).
block(category_plot_1_block19, block, category_plot_1_code92, body, range(category_plot_1, 38776, 304, 1080, 1089)).
block(category_plot_1_block20, block, category_plot_1_stmt62, then_statement, range(category_plot_1, 38823, 129, 1081, 1084)).
block(category_plot_1_block21, block, category_plot_1_stmt64, then_statement, range(category_plot_1, 39029, 44, 1086, 1088)).
block(category_plot_1_block22, block, category_plot_1_code93, body, range(category_plot_1, 40582, 226, 1144, 1151)).
block(category_plot_1_block23, block, category_plot_1_stmt65, body, range(category_plot_1, 40641, 160, 1145, 1150)).
block(category_plot_1_block24, block, category_plot_1_stmt67, then_statement, range(category_plot_1, 40739, 51, 1147, 1149)).
block(category_plot_1_block25, block, category_plot_1_code99, body, range(category_plot_1, 41374, 194, 1173, 1179)).
block(category_plot_1_block26, block, category_plot_1_stmt69, then_statement, range(category_plot_1, 41459, 78, 1175, 1177)).
block(category_plot_1_block27, block, category_plot_1_code103, body, range(category_plot_1, 43414, 217, 1240, 1244)).
block(category_plot_1_block28, block, category_plot_1_code106, body, range(category_plot_1, 44592, 214, 1273, 1277)).
block(category_plot_1_block29, block, category_plot_1_code109, body, range(category_plot_1, 64032, 552, 1853, 1871)).
block(category_plot_1_block30, block, category_plot_1_stmt77, body, range(category_plot_1, 64145, 153, 1856, 1861)).
block(category_plot_1_block31, block, category_plot_1_stmt79, then_statement, range(category_plot_1, 64235, 52, 1858, 1860)).
block(category_plot_1_block32, block, category_plot_1_stmt80, then_statement, range(category_plot_1, 64333, 60, 1862, 1864)).
block(category_plot_1_block33, block, category_plot_1_stmt80, else_statement, range(category_plot_1, 64408, 167, 1865, 1869)).
block(category_plot_1_block34, block, category_plot_1_code119, body, range(category_plot_1, 73315, 70, 2105, 2107)).
block(category_plot_1_block35, block, category_plot_1_code120, body, range(category_plot_1, 73888, 62, 2121, 2123)).
block(category_plot_1_block36, block, category_plot_1_code121, body, range(category_plot_1, 74468, 69, 2138, 2140)).
block(category_plot_1_block37, block, category_plot_1_code122, body, range(category_plot_1, 75095, 491, 2156, 2171)).
block(category_plot_1_block38, block, category_plot_1_stmt87, then_statement, range(category_plot_1, 75165, 123, 2158, 2161)).
block(category_plot_1_block39, block, category_plot_1_code127, body, range(category_plot_1, 76789, 51, 2199, 2201)).
block(category_plot_1_block40, block, category_plot_1_code128, body, range(category_plot_1, 77407, 58, 2216, 2218)).
block(category_plot_1_block41, block, category_plot_1_code129, body, range(category_plot_1, 78136, 925, 2237, 2261)).
block(category_plot_1_block42, block, category_plot_1_stmt92, then_statement, range(category_plot_1, 78207, 341, 2239, 2247)).
block(category_plot_1_block43, block, category_plot_1_stmt93, then_statement, range(category_plot_1, 78594, 353, 2248, 2256)).
block(category_plot_1_block44, block, category_plot_1_stmt95, then_statement, range(category_plot_1, 78741, 149, 2251, 2254)).
block(category_plot_1_block45, block, category_plot_1_stmt100, then_statement, range(category_plot_1, 79010, 44, 2258, 2260)).
block(category_plot_1_block46, block, category_plot_1_code133, body, range(category_plot_1, 82995, 69, 2377, 2379)).
block(category_plot_1_block47, block, category_plot_1_code134, body, range(category_plot_1, 83618, 61, 2395, 2397)).
block(category_plot_1_block48, block, category_plot_1_code135, body, range(category_plot_1, 84254, 68, 2414, 2416)).
block(category_plot_1_block49, block, category_plot_1_code136, body, range(category_plot_1, 84974, 607, 2435, 2453)).
block(category_plot_1_block50, block, category_plot_1_stmt105, then_statement, range(category_plot_1, 85005, 88, 2436, 2438)).
block(category_plot_1_block51, block, category_plot_1_stmt106, then_statement, range(category_plot_1, 85162, 122, 2440, 2443)).
%object_list_1 - org.jfree.chart.util.ObjectList
block(object_list_1_block1, block, object_list_1_code3, body, range(object_list_1, 2052, 7, 58, 59)).
block(object_list_1_block2, block, object_list_1_code5, body, range(object_list_1, 2925, 58, 84, 86)).
block(object_list_1_block3, block, object_list_1_code6, body, range(object_list_1, 3280, 55, 94, 96)).
%plot_orientation_1 - org.jfree.chart.plot.PlotOrientation
block(plot_orientation_1_block1, block, plot_orientation_1_code15, body, range(plot_orientation_1, 2532, 35, 72, 74)).
%chart_color_1 - org.jfree.chart.ChartColor
block(chart_color_1_block1, block, chart_color_1_code171, body, range(chart_color_1, 5641, 1344, 149, 187)).
%default_drawing_supplier_1 - org.jfree.chart.plot.DefaultDrawingSupplier
block(default_drawing_supplier_1_block1, block, default_drawing_supplier_1_code60, body, range(default_drawing_supplier_1, 5329, 250, 148, 156)).
block(default_drawing_supplier_1_block2, block, default_drawing_supplier_1_code61, body, range(default_drawing_supplier_1, 7238, 320, 197, 205)).
block(default_drawing_supplier_1_block3, block, default_drawing_supplier_1_code66, body, range(default_drawing_supplier_1, 9758, 1689, 287, 337)).
block(default_drawing_supplier_1_block4, block, default_drawing_supplier_1_code96, body, range(default_drawing_supplier_1, 17267, 63, 516, 518)).
block(default_drawing_supplier_1_block5, block, default_drawing_supplier_1_code103, body, range(default_drawing_supplier_1, 17709, 72, 531, 533)).
%unit_type_1 - org.jfree.chart.util.UnitType
block(unit_type_1_block1, block, unit_type_1_code17, body, range(unit_type_1, 2209, 33, 69, 71)).
%axis_location_1 - org.jfree.chart.axis.AxisLocation
block(axis_location_1_block1, block, axis_location_1_code31, body, range(axis_location_1, 3126, 35, 84, 86)).
%dataset_rendering_order_1 - org.jfree.chart.plot.DatasetRenderingOrder
block(dataset_rendering_order_1_block1, block, dataset_rendering_order_1_code15, body, range(dataset_rendering_order_1, 2818, 35, 80, 82)).
%chart_change_event_type_1 - org.jfree.chart.event.ChartChangeEventType
block(chart_change_event_type_1_block1, block, chart_change_event_type_1_code21, body, range(chart_change_event_type_1, 2560, 35, 74, 76)).
%marker_change_event_1 - org.jfree.chart.event.MarkerChangeEvent
block(marker_change_event_1_block1, block, marker_change_event_1_code3, body, range(marker_change_event_1, 2175, 63, 64, 67)).
%xyplot_1 - org.jfree.chart.plot.XYPlot
block(xyplot_1_block1, block, xyplot_1_code62, body, range(xyplot_1, 22015, 47, 500, 502)).
block(xyplot_1_block2, block, xyplot_1_code63, body, range(xyplot_1, 22826, 3020, 518, 601)).
block(xyplot_1_block3, block, xyplot_1_stmt19, then_statement, range(xyplot_1, 23804, 58, 544, 546)).
block(xyplot_1_block4, block, xyplot_1_stmt21, then_statement, range(xyplot_1, 23938, 96, 549, 552)).
block(xyplot_1_block5, block, xyplot_1_stmt24, then_statement, range(xyplot_1, 24159, 100, 556, 559)).
block(xyplot_1_block6, block, xyplot_1_stmt28, then_statement, range(xyplot_1, 24451, 98, 564, 567)).
block(xyplot_1_block7, block, xyplot_1_code80, body, range(xyplot_1, 33491, 228, 859, 866)).
block(xyplot_1_block8, block, xyplot_1_stmt53, body, range(xyplot_1, 33551, 161, 860, 865)).
block(xyplot_1_block9, block, xyplot_1_stmt55, then_statement, range(xyplot_1, 33650, 51, 862, 864)).
block(xyplot_1_block10, block, xyplot_1_code86, body, range(xyplot_1, 42513, 226, 1159, 1166)).
block(xyplot_1_block11, block, xyplot_1_stmt56, body, range(xyplot_1, 42572, 160, 1160, 1165)).
block(xyplot_1_block12, block, xyplot_1_stmt58, then_statement, range(xyplot_1, 42670, 51, 1162, 1164)).
block(xyplot_1_block13, block, xyplot_1_code92, body, range(xyplot_1, 46006, 182, 1272, 1278)).
block(xyplot_1_block14, block, xyplot_1_stmt60, then_statement, range(xyplot_1, 46085, 72, 1274, 1276)).
block(xyplot_1_block15, block, xyplot_1_code96, body, range(xyplot_1, 48404, 244, 1353, 1358)).
block(xyplot_1_block16, block, xyplot_1_code99, body, range(xyplot_1, 49047, 243, 1369, 1374)).
block(xyplot_1_block17, block, xyplot_1_code102, body, range(xyplot_1, 76753, 70, 2231, 2233)).
block(xyplot_1_block18, block, xyplot_1_code103, body, range(xyplot_1, 77326, 62, 2247, 2249)).
block(xyplot_1_block19, block, xyplot_1_code104, body, range(xyplot_1, 77906, 69, 2264, 2266)).
block(xyplot_1_block20, block, xyplot_1_code105, body, range(xyplot_1, 78577, 491, 2283, 2298)).
block(xyplot_1_block21, block, xyplot_1_stmt70, then_statement, range(xyplot_1, 78647, 123, 2285, 2288)).
block(xyplot_1_block22, block, xyplot_1_code110, body, range(xyplot_1, 85152, 69, 2464, 2466)).
block(xyplot_1_block23, block, xyplot_1_code111, body, range(xyplot_1, 85722, 61, 2480, 2482)).
block(xyplot_1_block24, block, xyplot_1_code112, body, range(xyplot_1, 86300, 68, 2497, 2499)).
block(xyplot_1_block25, block, xyplot_1_code113, body, range(xyplot_1, 86957, 607, 2516, 2534)).
block(xyplot_1_block26, block, xyplot_1_stmt76, then_statement, range(xyplot_1, 86988, 88, 2517, 2519)).
block(xyplot_1_block27, block, xyplot_1_stmt77, then_statement, range(xyplot_1, 87145, 122, 2521, 2524)).
block(xyplot_1_block28, block, xyplot_1_code118, body, range(xyplot_1, 143784, 348, 4032, 4043)).
block(xyplot_1_block29, block, xyplot_1_stmt82, then_statement, range(xyplot_1, 143883, 60, 4035, 4037)).
block(xyplot_1_block30, block, xyplot_1_stmt82, else_statement, range(xyplot_1, 143958, 167, 4038, 4042)).
%length_adjustment_type_1 - org.jfree.chart.util.LengthAdjustmentType
block(length_adjustment_type_1_block1, block, length_adjustment_type_1_code21, body, range(length_adjustment_type_1, 2494, 33, 76, 78)).
%category_anchor_1 - org.jfree.chart.axis.CategoryAnchor
block(category_anchor_1_block1, block, category_anchor_1_code21, body, range(category_anchor_1, 2527, 35, 75, 77)).
%series_rendering_order_1 - org.jfree.chart.plot.SeriesRenderingOrder
block(series_rendering_order_1_block1, block, series_rendering_order_1_code15, body, range(series_rendering_order_1, 2727, 35, 78, 80)).
%layer_1 - org.jfree.chart.util.Layer
block(layer_1_block1, block, layer_1_code17, body, range(layer_1, 2200, 33, 69, 71)).
%plot_change_event_1 - org.jfree.chart.event.PlotChangeEvent
block(plot_change_event_1_block1, block, plot_change_event_1_code3, body, range(plot_change_event_1, 2291, 57, 63, 66)).
%rectangle_insets_1 - org.jfree.chart.util.RectangleInsets
block(rectangle_insets_1_block1, block, rectangle_insets_1_code10, body, range(rectangle_insets_1, 3332, 69, 101, 103)).
block(rectangle_insets_1_block2, block, rectangle_insets_1_code11, body, range(rectangle_insets_1, 3853, 268, 116, 125)).
block(rectangle_insets_1_block3, block, rectangle_insets_1_stmt2, then_statement, range(rectangle_insets_1, 3885, 88, 117, 119)).
%abstract_object_list_1 - org.jfree.chart.util.AbstractObjectList
block(abstract_object_list_1_block1, block, abstract_object_list_1_code11, body, range(abstract_object_list_1, 2624, 47, 76, 78)).
block(abstract_object_list_1_block2, block, abstract_object_list_1_code12, body, range(abstract_object_list_1, 2830, 56, 85, 87)).
block(abstract_object_list_1_block3, block, abstract_object_list_1_code13, body, range(abstract_object_list_1, 3101, 95, 95, 98)).
block(abstract_object_list_1_block4, block, abstract_object_list_1_code22, body, range(abstract_object_list_1, 3448, 159, 108, 114)).
block(abstract_object_list_1_block5, block, abstract_object_list_1_stmt6, then_statement, range(abstract_object_list_1, 3525, 53, 110, 112)).
block(abstract_object_list_1_block6, block, abstract_object_list_1_code25, body, range(abstract_object_list_1, 3851, 444, 122, 133)).
block(abstract_object_list_1_block7, block, abstract_object_list_1_stmt9, then_statement, range(abstract_object_list_1, 3876, 83, 123, 125)).
block(abstract_object_list_1_block8, block, abstract_object_list_1_stmt10, then_statement, range(abstract_object_list_1, 4002, 197, 126, 130)).
block(abstract_object_list_1_block9, block, abstract_object_list_1_code26, body, range(abstract_object_list_1, 4553, 33, 148, 150)).

%%% Statements
%category_marker_1 - org.jfree.chart.plot.CategoryMarker
stmt(category_marker_1_stmt1, constructor_invocation, category_marker_1_block1, (statements, 0), range(category_marker_1, 2788, 45, 80, 80)).
stmt(category_marker_1_stmt2, constructor_invocation, category_marker_1_block2, (statements, 0), range(category_marker_1, 3164, 46, 91, 91)).
stmt(category_marker_1_stmt3, super_constructor_invocation, category_marker_1_block3, (statements, 0), range(category_marker_1, 3852, 57, 107, 107)).
stmt(category_marker_1_stmt4, expression_statement, category_marker_1_block3, (statements, 1), range(category_marker_1, 3919, 15, 108, 108)).
stmt(category_marker_1_stmt5, expression_statement, category_marker_1_block3, (statements, 2), range(category_marker_1, 3944, 48, 109, 109)).
%category_plot_tests_1 - org.jfree.chart.plot.junit.CategoryPlotTests
stmt(category_plot_tests_1_stmt1, return_statement, category_plot_tests_1_block1, (statements, 0), range(category_plot_tests_1, 3862, 46, 107, 107)).
stmt(category_plot_tests_1_stmt2, super_constructor_invocation, category_plot_tests_1_block2, (statements, 0), range(category_plot_tests_1, 4072, 12, 116, 116)).
stmt(category_plot_tests_1_stmt3, variable_declaration_statement, category_plot_tests_1_block3, (statements, 0), range(category_plot_tests_1, 28736, 39, 770, 770)).
stmt(category_plot_tests_1_stmt4, expression_statement, category_plot_tests_1_block3, (statements, 1), range(category_plot_tests_1, 28781, 71, 771, 771)).
stmt(category_plot_tests_1_stmt5, variable_declaration_statement, category_plot_tests_1_block4, (statements, 0), range(category_plot_tests_1, 29014, 39, 779, 779)).
stmt(category_plot_tests_1_stmt6, expression_statement, category_plot_tests_1_block4, (statements, 1), range(category_plot_tests_1, 29059, 58, 780, 780)).
%text_anchor_1 - org.jfree.chart.text.TextAnchor
stmt(text_anchor_1_stmt1, expression_statement, text_anchor_1_block1, (statements, 0), range(text_anchor_1, 4171, 17, 125, 125)).
%xyplot_tests_1 - org.jfree.chart.plot.junit.XYPlotTests
stmt(xyplot_tests_1_stmt1, return_statement, xyplot_tests_1_block1, (statements, 0), range(xyplot_tests_1, 4260, 40, 116, 116)).
stmt(xyplot_tests_1_stmt2, super_constructor_invocation, xyplot_tests_1_block2, (statements, 0), range(xyplot_tests_1, 4458, 12, 125, 125)).
stmt(xyplot_tests_1_stmt3, variable_declaration_statement, xyplot_tests_1_block3, (statements, 0), range(xyplot_tests_1, 38027, 27, 1027, 1027)).
stmt(xyplot_tests_1_stmt4, expression_statement, xyplot_tests_1_block3, (statements, 1), range(xyplot_tests_1, 38060, 59, 1028, 1028)).
stmt(xyplot_tests_1_stmt5, variable_declaration_statement, xyplot_tests_1_block4, (statements, 0), range(xyplot_tests_1, 38281, 27, 1036, 1036)).
stmt(xyplot_tests_1_stmt6, expression_statement, xyplot_tests_1_block4, (statements, 1), range(xyplot_tests_1, 38314, 58, 1037, 1037)).
%marker_1 - org.jfree.chart.plot.Marker
stmt(marker_1_stmt1, constructor_invocation, marker_1_block1, (statements, 0), range(marker_1, 5234, 17, 144, 144)).
stmt(marker_1_stmt2, constructor_invocation, marker_1_block2, (statements, 0), range(marker_1, 5433, 95, 153, 154)).
stmt(marker_1_stmt3, if_statement, marker_1_block3, (statements, 0), range(marker_1, 6350, 106, 175, 177)).
stmt(marker_1_stmt4, if_statement, marker_1_block3, (statements, 1), range(marker_1, 6466, 108, 178, 180)).
stmt(marker_1_stmt5, if_statement, marker_1_block3, (statements, 2), range(marker_1, 6584, 159, 181, 183)).
stmt(marker_1_stmt6, expression_statement, marker_1_block3, (statements, 3), range(marker_1, 6763, 19, 185, 185)).
stmt(marker_1_stmt7, expression_statement, marker_1_block3, (statements, 4), range(marker_1, 6792, 21, 186, 186)).
stmt(marker_1_stmt8, expression_statement, marker_1_block3, (statements, 5), range(marker_1, 6823, 33, 187, 187)).
stmt(marker_1_stmt9, expression_statement, marker_1_block3, (statements, 6), range(marker_1, 6866, 35, 188, 188)).
stmt(marker_1_stmt10, expression_statement, marker_1_block3, (statements, 7), range(marker_1, 6911, 19, 189, 189)).
stmt(marker_1_stmt11, expression_statement, marker_1_block3, (statements, 8), range(marker_1, 6950, 54, 191, 191)).
stmt(marker_1_stmt12, expression_statement, marker_1_block3, (statements, 9), range(marker_1, 7014, 30, 192, 192)).
stmt(marker_1_stmt13, expression_statement, marker_1_block3, (statements, 10), range(marker_1, 7054, 44, 193, 193)).
stmt(marker_1_stmt14, expression_statement, marker_1_block3, (statements, 11), range(marker_1, 7108, 59, 194, 194)).
stmt(marker_1_stmt15, expression_statement, marker_1_block3, (statements, 12), range(marker_1, 7177, 53, 195, 195)).
stmt(marker_1_stmt16, expression_statement, marker_1_block3, (statements, 13), range(marker_1, 7240, 41, 196, 196)).
stmt(marker_1_stmt17, expression_statement, marker_1_block3, (statements, 14), range(marker_1, 7301, 44, 198, 198)).
stmt(marker_1_stmt18, if_statement, marker_1_block6, (statements, 0), range(marker_1, 15647, 102, 490, 492)).
stmt(marker_1_stmt19, expression_statement, marker_1_block6, (statements, 1), range(marker_1, 15759, 27, 493, 493)).
stmt(marker_1_stmt20, expression_statement, marker_1_block6, (statements, 2), range(marker_1, 15800, 45, 494, 494)).
stmt(marker_1_stmt21, expression_statement, marker_1_block8, (statements, 0), range(marker_1, 17015, 60, 534, 534)).
stmt(marker_1_stmt22, variable_declaration_statement, marker_1_block9, (statements, 0), range(marker_1, 17748, 57, 559, 559)).
stmt(marker_1_stmt23, for_statement, marker_1_block9, (statements, 1), range(marker_1, 17815, 222, 560, 564)).
%value_marker_1 - org.jfree.chart.plot.ValueMarker
stmt(value_marker_1_stmt1, super_constructor_invocation, value_marker_1_block1, (statements, 0), range(value_marker_1, 2306, 8, 68, 68)).
stmt(value_marker_1_stmt2, expression_statement, value_marker_1_block1, (statements, 1), range(value_marker_1, 2324, 19, 69, 69)).
stmt(value_marker_1_stmt3, super_constructor_invocation, value_marker_1_block2, (statements, 0), range(value_marker_1, 3343, 57, 95, 95)).
stmt(value_marker_1_stmt4, expression_statement, value_marker_1_block2, (statements, 1), range(value_marker_1, 3410, 19, 96, 96)).
%sort_order_1 - org.jfree.chart.util.SortOrder
stmt(sort_order_1_stmt1, expression_statement, sort_order_1_block1, (statements, 0), range(sort_order_1, 2466, 17, 75, 75)).
%plot_1 - org.jfree.chart.plot.Plot
stmt(plot_1_stmt1, expression_statement, plot_1_block1, (statements, 0), range(plot_1, 12548, 19, 286, 286)).
stmt(plot_1_stmt2, expression_statement, plot_1_block1, (statements, 1), range(plot_1, 12577, 29, 287, 287)).
stmt(plot_1_stmt3, expression_statement, plot_1_block1, (statements, 2), range(plot_1, 12616, 48, 288, 288)).
stmt(plot_1_stmt4, expression_statement, plot_1_block1, (statements, 3), range(plot_1, 12674, 48, 289, 289)).
stmt(plot_1_stmt5, expression_statement, plot_1_block1, (statements, 4), range(plot_1, 12732, 28, 290, 290)).
stmt(plot_1_stmt6, expression_statement, plot_1_block1, (statements, 5), range(plot_1, 12770, 27, 291, 291)).
stmt(plot_1_stmt7, expression_statement, plot_1_block1, (statements, 6), range(plot_1, 12807, 44, 292, 292)).
stmt(plot_1_stmt8, expression_statement, plot_1_block1, (statements, 7), range(plot_1, 12861, 42, 293, 293)).
stmt(plot_1_stmt9, expression_statement, plot_1_block1, (statements, 8), range(plot_1, 12913, 48, 294, 294)).
stmt(plot_1_stmt10, expression_statement, plot_1_block1, (statements, 9), range(plot_1, 12973, 26, 296, 296)).
stmt(plot_1_stmt11, expression_statement, plot_1_block1, (statements, 10), range(plot_1, 13009, 63, 297, 297)).
stmt(plot_1_stmt12, expression_statement, plot_1_block1, (statements, 11), range(plot_1, 13082, 38, 298, 298)).
stmt(plot_1_stmt13, expression_statement, plot_1_block1, (statements, 12), range(plot_1, 13132, 52, 300, 300)).
stmt(plot_1_stmt14, expression_statement, plot_1_block1, (statements, 13), range(plot_1, 13196, 44, 302, 302)).
stmt(plot_1_stmt15, return_statement, plot_1_block2, (statements, 0), range(plot_1, 17000, 19, 433, 433)).
stmt(plot_1_stmt16, variable_declaration_statement, plot_1_block3, (statements, 0), range(plot_1, 30637, 57, 888, 888)).
stmt(plot_1_stmt17, for_statement, plot_1_block3, (statements, 1), range(plot_1, 30704, 216, 889, 893)).
stmt(plot_1_stmt18, expression_statement, plot_1_block5, (statements, 0), range(plot_1, 31101, 43, 902, 902)).
%chart_change_event_1 - org.jfree.chart.event.ChartChangeEvent
stmt(chart_change_event_1_stmt1, constructor_invocation, chart_change_event_1_block1, (statements, 0), range(chart_change_event_1, 2485, 49, 69, 69)).
stmt(chart_change_event_1_stmt2, super_constructor_invocation, chart_change_event_1_block2, (statements, 0), range(chart_change_event_1, 3328, 14, 93, 93)).
stmt(chart_change_event_1_stmt3, expression_statement, chart_change_event_1_block2, (statements, 1), range(chart_change_event_1, 3352, 19, 94, 94)).
stmt(chart_change_event_1_stmt4, expression_statement, chart_change_event_1_block2, (statements, 2), range(chart_change_event_1, 3381, 17, 95, 95)).
stmt(chart_change_event_1_stmt5, expression_statement, chart_change_event_1_block3, (statements, 0), range(chart_change_event_1, 4175, 17, 131, 131)).
%rectangle_anchor_1 - org.jfree.chart.util.RectangleAnchor
stmt(rectangle_anchor_1_stmt1, expression_statement, rectangle_anchor_1_block1, (statements, 0), range(rectangle_anchor_1, 3525, 17, 107, 107)).
%category_plot_1 - org.jfree.chart.plot.CategoryPlot
stmt(category_plot_1_stmt1, constructor_invocation, category_plot_1_block1, (statements, 0), range(category_plot_1, 18167, 29, 430, 430)).
stmt(category_plot_1_stmt2, super_constructor_invocation, category_plot_1_block2, (statements, 0), range(category_plot_1, 18770, 8, 447, 447)).
stmt(category_plot_1_stmt3, expression_statement, category_plot_1_block2, (statements, 1), range(category_plot_1, 18790, 44, 449, 449)).
stmt(category_plot_1_stmt4, expression_statement, category_plot_1_block2, (statements, 2), range(category_plot_1, 18907, 35, 452, 452)).
stmt(category_plot_1_stmt5, expression_statement, category_plot_1_block2, (statements, 3), range(category_plot_1, 18952, 44, 453, 453)).
stmt(category_plot_1_stmt6, expression_statement, category_plot_1_block2, (statements, 4), range(category_plot_1, 19006, 34, 454, 454)).
stmt(category_plot_1_stmt7, expression_statement, category_plot_1_block2, (statements, 5), range(category_plot_1, 19050, 43, 455, 455)).
stmt(category_plot_1_stmt8, expression_statement, category_plot_1_block2, (statements, 6), range(category_plot_1, 19113, 47, 457, 457)).
stmt(category_plot_1_stmt9, expression_statement, category_plot_1_block2, (statements, 7), range(category_plot_1, 19170, 46, 458, 458)).
stmt(category_plot_1_stmt10, expression_statement, category_plot_1_block2, (statements, 8), range(category_plot_1, 19228, 34, 460, 460)).
stmt(category_plot_1_stmt11, expression_statement, category_plot_1_block2, (statements, 9), range(category_plot_1, 19274, 33, 462, 462)).
stmt(category_plot_1_stmt12, expression_statement, category_plot_1_block2, (statements, 10), range(category_plot_1, 19317, 30, 463, 463)).
stmt(category_plot_1_stmt13, if_statement, category_plot_1_block2, (statements, 11), range(category_plot_1, 19357, 79, 464, 466)).
stmt(category_plot_1_stmt14, expression_statement, category_plot_1_block2, (statements, 12), range(category_plot_1, 19448, 58, 468, 468)).
stmt(category_plot_1_stmt15, expression_statement, category_plot_1_block2, (statements, 13), range(category_plot_1, 19518, 58, 470, 470)).
stmt(category_plot_1_stmt16, expression_statement, category_plot_1_block2, (statements, 14), range(category_plot_1, 19586, 54, 471, 471)).
stmt(category_plot_1_stmt17, expression_statement, category_plot_1_block2, (statements, 15), range(category_plot_1, 19652, 32, 473, 473)).
stmt(category_plot_1_stmt18, if_statement, category_plot_1_block2, (statements, 16), range(category_plot_1, 19694, 118, 474, 477)).
stmt(category_plot_1_stmt19, expression_statement, category_plot_1_block2, (statements, 17), range(category_plot_1, 19824, 35, 479, 479)).
stmt(category_plot_1_stmt20, expression_statement, category_plot_1_block2, (statements, 18), range(category_plot_1, 19869, 34, 480, 480)).
stmt(category_plot_1_stmt21, if_statement, category_plot_1_block2, (statements, 19), range(category_plot_1, 19913, 124, 481, 484)).
stmt(category_plot_1_stmt22, expression_statement, category_plot_1_block2, (statements, 20), range(category_plot_1, 20047, 34, 485, 485)).
stmt(category_plot_1_stmt23, expression_statement, category_plot_1_block2, (statements, 21), range(category_plot_1, 20093, 33, 487, 487)).
stmt(category_plot_1_stmt24, expression_statement, category_plot_1_block2, (statements, 22), range(category_plot_1, 20136, 33, 488, 488)).
stmt(category_plot_1_stmt25, if_statement, category_plot_1_block2, (statements, 23), range(category_plot_1, 20179, 121, 489, 492)).
stmt(category_plot_1_stmt26, expression_statement, category_plot_1_block2, (statements, 24), range(category_plot_1, 20320, 22, 494, 494)).
stmt(category_plot_1_stmt27, expression_statement, category_plot_1_block2, (statements, 25), range(category_plot_1, 20352, 21, 495, 495)).
stmt(category_plot_1_stmt28, expression_statement, category_plot_1_block2, (statements, 26), range(category_plot_1, 20385, 63, 497, 497)).
stmt(category_plot_1_stmt29, expression_statement, category_plot_1_block2, (statements, 27), range(category_plot_1, 20458, 52, 498, 498)).
stmt(category_plot_1_stmt30, expression_statement, category_plot_1_block2, (statements, 28), range(category_plot_1, 20520, 52, 499, 499)).
stmt(category_plot_1_stmt31, expression_statement, category_plot_1_block2, (statements, 29), range(category_plot_1, 20582, 50, 500, 500)).
stmt(category_plot_1_stmt32, expression_statement, category_plot_1_block2, (statements, 30), range(category_plot_1, 20644, 61, 502, 502)).
stmt(category_plot_1_stmt33, expression_statement, category_plot_1_block2, (statements, 31), range(category_plot_1, 20715, 51, 503, 503)).
stmt(category_plot_1_stmt34, expression_statement, category_plot_1_block2, (statements, 32), range(category_plot_1, 20776, 49, 504, 504)).
stmt(category_plot_1_stmt35, expression_statement, category_plot_1_block2, (statements, 33), range(category_plot_1, 20837, 45, 506, 506)).
stmt(category_plot_1_stmt36, expression_statement, category_plot_1_block2, (statements, 34), range(category_plot_1, 20892, 45, 507, 507)).
stmt(category_plot_1_stmt37, expression_statement, category_plot_1_block2, (statements, 35), range(category_plot_1, 20947, 44, 508, 508)).
stmt(category_plot_1_stmt38, expression_statement, category_plot_1_block2, (statements, 36), range(category_plot_1, 21001, 44, 509, 509)).
stmt(category_plot_1_stmt39, variable_declaration_statement, category_plot_1_block2, (statements, 37), range(category_plot_1, 21057, 200, 511, 513)).
stmt(category_plot_1_stmt40, expression_statement, category_plot_1_block2, (statements, 38), range(category_plot_1, 21267, 43, 514, 514)).
stmt(category_plot_1_stmt41, expression_statement, category_plot_1_block2, (statements, 39), range(category_plot_1, 21322, 23, 516, 516)).
stmt(category_plot_1_stmt42, expression_statement, category_plot_1_block2, (statements, 40), range(category_plot_1, 21357, 55, 518, 518)).
stmt(category_plot_1_stmt43, expression_statement, category_plot_1_block2, (statements, 41), range(category_plot_1, 21422, 31, 519, 519)).
stmt(category_plot_1_stmt44, expression_statement, category_plot_1_block2, (statements, 42), range(category_plot_1, 21463, 53, 520, 520)).
stmt(category_plot_1_stmt45, expression_statement, category_plot_1_block2, (statements, 43), range(category_plot_1, 21526, 51, 521, 521)).
stmt(category_plot_1_stmt46, expression_statement, category_plot_1_block2, (statements, 44), range(category_plot_1, 21597, 45, 523, 523)).
stmt(category_plot_1_stmt47, expression_statement, category_plot_1_block7, (statements, 0), range(category_plot_1, 29038, 43, 767, 767)).
stmt(category_plot_1_stmt48, if_statement, category_plot_1_block8, (statements, 0), range(category_plot_1, 30102, 165, 800, 803)).
stmt(category_plot_1_stmt49, expression_statement, category_plot_1_block8, (statements, 1), range(category_plot_1, 30277, 46, 804, 804)).
stmt(category_plot_1_stmt50, if_statement, category_plot_1_block8, (statements, 2), range(category_plot_1, 30333, 56, 805, 807)).
stmt(category_plot_1_stmt51, for_statement, category_plot_1_block11, (statements, 0), range(category_plot_1, 32042, 216, 867, 872)).
stmt(category_plot_1_stmt52, variable_declaration_statement, category_plot_1_block12, (statements, 0), range(category_plot_1, 32106, 58, 868, 868)).
stmt(category_plot_1_stmt53, if_statement, category_plot_1_block12, (statements, 1), range(category_plot_1, 32178, 69, 869, 871)).
stmt(category_plot_1_stmt54, variable_declaration_statement, category_plot_1_block14, (statements, 0), range(category_plot_1, 32839, 24, 894, 894)).
stmt(category_plot_1_stmt55, if_statement, category_plot_1_block14, (statements, 1), range(category_plot_1, 32873, 108, 895, 897)).
stmt(category_plot_1_stmt56, expression_statement, category_plot_1_block15, (statements, 0), range(category_plot_1, 32923, 47, 896, 896)).
stmt(category_plot_1_stmt57, if_statement, category_plot_1_block14, (statements, 2), range(category_plot_1, 32991, 246, 898, 904)).
stmt(category_plot_1_stmt58, variable_declaration_statement, category_plot_1_block16, (statements, 0), range(category_plot_1, 33026, 26, 899, 899)).
stmt(category_plot_1_stmt59, if_statement, category_plot_1_block16, (statements, 1), range(category_plot_1, 33066, 160, 900, 903)).
stmt(category_plot_1_stmt60, return_statement, category_plot_1_block14, (statements, 3), range(category_plot_1, 33247, 14, 905, 905)).
stmt(category_plot_1_stmt61, expression_statement, category_plot_1_block18, (statements, 0), range(category_plot_1, 37754, 42, 1051, 1051)).
stmt(category_plot_1_stmt62, if_statement, category_plot_1_block19, (statements, 0), range(category_plot_1, 38787, 165, 1081, 1084)).
stmt(category_plot_1_stmt63, expression_statement, category_plot_1_block19, (statements, 1), range(category_plot_1, 38962, 45, 1085, 1085)).
stmt(category_plot_1_stmt64, if_statement, category_plot_1_block19, (statements, 2), range(category_plot_1, 39017, 56, 1086, 1088)).
stmt(category_plot_1_stmt65, for_statement, category_plot_1_block22, (statements, 0), range(category_plot_1, 40593, 208, 1145, 1150)).
stmt(category_plot_1_stmt66, variable_declaration_statement, category_plot_1_block23, (statements, 0), range(category_plot_1, 40656, 51, 1146, 1146)).
stmt(category_plot_1_stmt67, if_statement, category_plot_1_block23, (statements, 1), range(category_plot_1, 40721, 69, 1147, 1149)).
stmt(category_plot_1_stmt68, variable_declaration_statement, category_plot_1_block25, (statements, 0), range(category_plot_1, 41385, 30, 1174, 1174)).
stmt(category_plot_1_stmt69, if_statement, category_plot_1_block25, (statements, 1), range(category_plot_1, 41425, 112, 1175, 1177)).
stmt(category_plot_1_stmt70, expression_statement, category_plot_1_block26, (statements, 0), range(category_plot_1, 41474, 52, 1176, 1176)).
stmt(category_plot_1_stmt71, return_statement, category_plot_1_block25, (statements, 2), range(category_plot_1, 41547, 14, 1178, 1178)).
stmt(category_plot_1_stmt72, expression_statement, category_plot_1_block27, (statements, 0), range(category_plot_1, 43425, 63, 1241, 1241)).
stmt(category_plot_1_stmt73, expression_statement, category_plot_1_block27, (statements, 1), range(category_plot_1, 43558, 64, 1243, 1243)).
stmt(category_plot_1_stmt74, expression_statement, category_plot_1_block28, (statements, 0), range(category_plot_1, 44603, 62, 1274, 1274)).
stmt(category_plot_1_stmt75, expression_statement, category_plot_1_block28, (statements, 1), range(category_plot_1, 44733, 64, 1276, 1276)).
stmt(category_plot_1_stmt76, variable_declaration_statement, category_plot_1_block29, (statements, 0), range(category_plot_1, 64045, 34, 1855, 1855)).
stmt(category_plot_1_stmt77, for_statement, category_plot_1_block29, (statements, 1), range(category_plot_1, 64089, 209, 1856, 1861)).
stmt(category_plot_1_stmt78, variable_declaration_statement, category_plot_1_block30, (statements, 0), range(category_plot_1, 64160, 42, 1857, 1857)).
stmt(category_plot_1_stmt79, if_statement, category_plot_1_block30, (statements, 1), range(category_plot_1, 64216, 71, 1858, 1860)).
stmt(category_plot_1_stmt80, if_statement, category_plot_1_block29, (statements, 2), range(category_plot_1, 64308, 267, 1862, 1869)).
stmt(category_plot_1_stmt81, variable_declaration_statement, category_plot_1_block33, (statements, 0), range(category_plot_1, 64423, 46, 1866, 1866)).
stmt(category_plot_1_stmt82, expression_statement, category_plot_1_block33, (statements, 1), range(category_plot_1, 64483, 48, 1867, 1867)).
stmt(category_plot_1_stmt83, expression_statement, category_plot_1_block33, (statements, 2), range(category_plot_1, 64545, 19, 1868, 1868)).
stmt(category_plot_1_stmt84, return_statement, category_plot_1_block34, (statements, 0), range(category_plot_1, 73326, 52, 2106, 2106)).
stmt(category_plot_1_stmt85, return_statement, category_plot_1_block35, (statements, 0), range(category_plot_1, 73899, 44, 2122, 2122)).
stmt(category_plot_1_stmt86, return_statement, category_plot_1_block36, (statements, 0), range(category_plot_1, 74476, 54, 2139, 2139)).
stmt(category_plot_1_stmt87, if_statement, category_plot_1_block37, (statements, 1), range(category_plot_1, 75134, 292, 2158, 2165)).
stmt(category_plot_1_stmt88, expression_statement, category_plot_1_block38, (statements, 0), range(category_plot_1, 75180, 97, 2159, 2160)).
stmt(category_plot_1_stmt89, variable_declaration_statement, category_plot_1_block37, (statements, 2), range(category_plot_1, 75436, 41, 2166, 2166)).
stmt(category_plot_1_stmt90, expression_statement, category_plot_1_block39, (statements, 0), range(category_plot_1, 76800, 33, 2200, 2200)).
stmt(category_plot_1_stmt91, expression_statement, category_plot_1_block40, (statements, 0), range(category_plot_1, 77415, 43, 2217, 2217)).
stmt(category_plot_1_stmt92, if_statement, category_plot_1_block41, (statements, 1), range(category_plot_1, 78176, 771, 2239, 2256)).
stmt(category_plot_1_stmt93, if_statement, category_plot_1_stmt92, elseStatement, range(category_plot_1, 78563, 384, 2248, 2256)).
stmt(category_plot_1_stmt94, expression_statement, category_plot_1_block43, (statements, 0), range(category_plot_1, 78609, 97, 2249, 2250)).
stmt(category_plot_1_stmt95, if_statement, category_plot_1_block43, (statements, 1), range(category_plot_1, 78720, 170, 2251, 2254)).
stmt(category_plot_1_stmt96, expression_statement, category_plot_1_block44, (statements, 0), range(category_plot_1, 78760, 36, 2252, 2252)).
stmt(category_plot_1_stmt97, expression_statement, category_plot_1_block44, (statements, 1), range(category_plot_1, 78814, 61, 2253, 2253)).
stmt(category_plot_1_stmt98, expression_statement, category_plot_1_block43, (statements, 2), range(category_plot_1, 78904, 20, 2255, 2255)).
stmt(category_plot_1_stmt99, expression_statement, category_plot_1_block41, (statements, 2), range(category_plot_1, 78957, 31, 2257, 2257)).
stmt(category_plot_1_stmt100, if_statement, category_plot_1_block41, (statements, 3), range(category_plot_1, 78998, 56, 2258, 2260)).
stmt(category_plot_1_stmt101, expression_statement, category_plot_1_block45, (statements, 0), range(category_plot_1, 79025, 18, 2259, 2259)).
stmt(category_plot_1_stmt102, return_statement, category_plot_1_block46, (statements, 0), range(category_plot_1, 83006, 51, 2378, 2378)).
stmt(category_plot_1_stmt103, return_statement, category_plot_1_block47, (statements, 0), range(category_plot_1, 83629, 43, 2396, 2396)).
stmt(category_plot_1_stmt104, return_statement, category_plot_1_block48, (statements, 0), range(category_plot_1, 84262, 53, 2415, 2415)).
stmt(category_plot_1_stmt105, if_statement, category_plot_1_block49, (statements, 0), range(category_plot_1, 84985, 108, 2436, 2438)).
stmt(category_plot_1_stmt106, if_statement, category_plot_1_block49, (statements, 2), range(category_plot_1, 85131, 290, 2440, 2447)).
stmt(category_plot_1_stmt107, expression_statement, category_plot_1_block51, (statements, 0), range(category_plot_1, 85177, 96, 2441, 2442)).
stmt(category_plot_1_stmt108, variable_declaration_statement, category_plot_1_block49, (statements, 3), range(category_plot_1, 85431, 41, 2448, 2448)).
%object_list_1 - org.jfree.chart.util.ObjectList
stmt(object_list_1_stmt1, return_statement, object_list_1_block2, (statements, 0), range(object_list_1, 2944, 24, 85, 85)).
stmt(object_list_1_stmt2, expression_statement, object_list_1_block3, (statements, 0), range(object_list_1, 3296, 25, 95, 95)).
%plot_orientation_1 - org.jfree.chart.plot.PlotOrientation
stmt(plot_orientation_1_stmt1, expression_statement, plot_orientation_1_block1, (statements, 0), range(plot_orientation_1, 2543, 17, 73, 73)).
%chart_color_1 - org.jfree.chart.ChartColor
stmt(chart_color_1_stmt1, return_statement, chart_color_1_block1, (statements, 0), range(chart_color_1, 5654, 1324, 151, 186)).
%default_drawing_supplier_1 - org.jfree.chart.plot.DefaultDrawingSupplier
stmt(default_drawing_supplier_1_stmt1, constructor_invocation, default_drawing_supplier_1_block1, (statements, 0), range(default_drawing_supplier_1, 5342, 228, 150, 154)).
stmt(default_drawing_supplier_1_stmt2, expression_statement, default_drawing_supplier_1_block2, (statements, 0), range(default_drawing_supplier_1, 7251, 35, 199, 199)).
stmt(default_drawing_supplier_1_stmt3, expression_statement, default_drawing_supplier_1_block2, (statements, 1), range(default_drawing_supplier_1, 7296, 43, 200, 200)).
stmt(default_drawing_supplier_1_stmt4, expression_statement, default_drawing_supplier_1_block2, (statements, 2), range(default_drawing_supplier_1, 7349, 49, 201, 201)).
stmt(default_drawing_supplier_1_stmt5, expression_statement, default_drawing_supplier_1_block2, (statements, 3), range(default_drawing_supplier_1, 7408, 37, 202, 202)).
stmt(default_drawing_supplier_1_stmt6, expression_statement, default_drawing_supplier_1_block2, (statements, 4), range(default_drawing_supplier_1, 7455, 51, 203, 203)).
stmt(default_drawing_supplier_1_stmt7, expression_statement, default_drawing_supplier_1_block2, (statements, 5), range(default_drawing_supplier_1, 7516, 35, 204, 204)).
stmt(default_drawing_supplier_1_stmt8, variable_declaration_statement, default_drawing_supplier_1_block3, (statements, 0), range(default_drawing_supplier_1, 9771, 31, 289, 289)).
stmt(default_drawing_supplier_1_stmt9, variable_declaration_statement, default_drawing_supplier_1_block3, (statements, 1), range(default_drawing_supplier_1, 9814, 18, 291, 291)).
stmt(default_drawing_supplier_1_stmt10, variable_declaration_statement, default_drawing_supplier_1_block3, (statements, 2), range(default_drawing_supplier_1, 9842, 26, 292, 292)).
stmt(default_drawing_supplier_1_stmt11, variable_declaration_statement, default_drawing_supplier_1_block3, (statements, 3), range(default_drawing_supplier_1, 9878, 21, 293, 293)).
stmt(default_drawing_supplier_1_stmt12, variable_declaration_statement, default_drawing_supplier_1_block3, (statements, 4), range(default_drawing_supplier_1, 9909, 21, 294, 294)).
stmt(default_drawing_supplier_1_stmt13, expression_statement, default_drawing_supplier_1_block3, (statements, 5), range(default_drawing_supplier_1, 9961, 63, 297, 297)).
stmt(default_drawing_supplier_1_stmt14, expression_statement, default_drawing_supplier_1_block3, (statements, 6), range(default_drawing_supplier_1, 10053, 61, 299, 299)).
stmt(default_drawing_supplier_1_stmt15, expression_statement, default_drawing_supplier_1_block3, (statements, 7), range(default_drawing_supplier_1, 10159, 39, 302, 302)).
stmt(default_drawing_supplier_1_stmt16, expression_statement, default_drawing_supplier_1_block3, (statements, 8), range(default_drawing_supplier_1, 10208, 41, 303, 303)).
stmt(default_drawing_supplier_1_stmt17, expression_statement, default_drawing_supplier_1_block3, (statements, 9), range(default_drawing_supplier_1, 10259, 45, 304, 304)).
stmt(default_drawing_supplier_1_stmt18, expression_statement, default_drawing_supplier_1_block3, (statements, 10), range(default_drawing_supplier_1, 10336, 44, 307, 307)).
stmt(default_drawing_supplier_1_stmt19, expression_statement, default_drawing_supplier_1_block3, (statements, 11), range(default_drawing_supplier_1, 10390, 44, 308, 308)).
stmt(default_drawing_supplier_1_stmt20, expression_statement, default_drawing_supplier_1_block3, (statements, 12), range(default_drawing_supplier_1, 10444, 45, 309, 309)).
stmt(default_drawing_supplier_1_stmt21, expression_statement, default_drawing_supplier_1_block3, (statements, 13), range(default_drawing_supplier_1, 10534, 71, 312, 312)).
stmt(default_drawing_supplier_1_stmt22, expression_statement, default_drawing_supplier_1_block3, (statements, 14), range(default_drawing_supplier_1, 10652, 40, 315, 315)).
stmt(default_drawing_supplier_1_stmt23, expression_statement, default_drawing_supplier_1_block3, (statements, 15), range(default_drawing_supplier_1, 10702, 42, 316, 316)).
stmt(default_drawing_supplier_1_stmt24, expression_statement, default_drawing_supplier_1_block3, (statements, 16), range(default_drawing_supplier_1, 10754, 45, 317, 317)).
stmt(default_drawing_supplier_1_stmt25, expression_statement, default_drawing_supplier_1_block3, (statements, 17), range(default_drawing_supplier_1, 10842, 69, 320, 320)).
stmt(default_drawing_supplier_1_stmt26, expression_statement, default_drawing_supplier_1_block3, (statements, 18), range(default_drawing_supplier_1, 10959, 42, 323, 323)).
stmt(default_drawing_supplier_1_stmt27, expression_statement, default_drawing_supplier_1_block3, (statements, 19), range(default_drawing_supplier_1, 11011, 39, 324, 324)).
stmt(default_drawing_supplier_1_stmt28, expression_statement, default_drawing_supplier_1_block3, (statements, 20), range(default_drawing_supplier_1, 11060, 45, 325, 325)).
stmt(default_drawing_supplier_1_stmt29, expression_statement, default_drawing_supplier_1_block3, (statements, 21), range(default_drawing_supplier_1, 11148, 71, 328, 328)).
stmt(default_drawing_supplier_1_stmt30, expression_statement, default_drawing_supplier_1_block3, (statements, 22), range(default_drawing_supplier_1, 11266, 41, 331, 331)).
stmt(default_drawing_supplier_1_stmt31, expression_statement, default_drawing_supplier_1_block3, (statements, 23), range(default_drawing_supplier_1, 11317, 40, 332, 332)).
stmt(default_drawing_supplier_1_stmt32, expression_statement, default_drawing_supplier_1_block3, (statements, 24), range(default_drawing_supplier_1, 11367, 45, 333, 333)).
stmt(default_drawing_supplier_1_stmt33, return_statement, default_drawing_supplier_1_block3, (statements, 25), range(default_drawing_supplier_1, 11424, 14, 335, 335)).
stmt(default_drawing_supplier_1_stmt34, return_statement, default_drawing_supplier_1_block4, (statements, 0), range(default_drawing_supplier_1, 17278, 45, 517, 517)).
stmt(default_drawing_supplier_1_stmt35, return_statement, default_drawing_supplier_1_block5, (statements, 0), range(default_drawing_supplier_1, 17720, 54, 532, 532)).
%unit_type_1 - org.jfree.chart.util.UnitType
stmt(unit_type_1_stmt1, expression_statement, unit_type_1_block1, (statements, 0), range(unit_type_1, 2219, 17, 70, 70)).
%axis_location_1 - org.jfree.chart.axis.AxisLocation
stmt(axis_location_1_stmt1, expression_statement, axis_location_1_block1, (statements, 0), range(axis_location_1, 3137, 17, 85, 85)).
%dataset_rendering_order_1 - org.jfree.chart.plot.DatasetRenderingOrder
stmt(dataset_rendering_order_1_stmt1, expression_statement, dataset_rendering_order_1_block1, (statements, 0), range(dataset_rendering_order_1, 2829, 17, 81, 81)).
%chart_change_event_type_1 - org.jfree.chart.event.ChartChangeEventType
stmt(chart_change_event_type_1_stmt1, expression_statement, chart_change_event_type_1_block1, (statements, 0), range(chart_change_event_type_1, 2571, 17, 75, 75)).
%marker_change_event_1 - org.jfree.chart.event.MarkerChangeEvent
stmt(marker_change_event_1_stmt1, super_constructor_invocation, marker_change_event_1_block1, (statements, 0), range(marker_change_event_1, 2186, 14, 65, 65)).
stmt(marker_change_event_1_stmt2, expression_statement, marker_change_event_1_block1, (statements, 1), range(marker_change_event_1, 2210, 21, 66, 66)).
%xyplot_1 - org.jfree.chart.plot.XYPlot
stmt(xyplot_1_stmt1, constructor_invocation, xyplot_1_block1, (statements, 0), range(xyplot_1, 22026, 29, 501, 501)).
stmt(xyplot_1_stmt2, super_constructor_invocation, xyplot_1_block2, (statements, 0), range(xyplot_1, 22839, 8, 520, 520)).
stmt(xyplot_1_stmt3, expression_statement, xyplot_1_block2, (statements, 1), range(xyplot_1, 22859, 44, 522, 522)).
stmt(xyplot_1_stmt4, expression_statement, xyplot_1_block2, (statements, 2), range(xyplot_1, 22913, 16, 523, 523)).
stmt(xyplot_1_stmt5, expression_statement, xyplot_1_block2, (statements, 3), range(xyplot_1, 22980, 58, 524, 524)).
stmt(xyplot_1_stmt6, expression_statement, xyplot_1_block2, (statements, 4), range(xyplot_1, 23127, 35, 527, 527)).
stmt(xyplot_1_stmt7, expression_statement, xyplot_1_block2, (statements, 5), range(xyplot_1, 23172, 44, 528, 528)).
stmt(xyplot_1_stmt8, expression_statement, xyplot_1_block2, (statements, 6), range(xyplot_1, 23226, 45, 529, 529)).
stmt(xyplot_1_stmt9, expression_statement, xyplot_1_block2, (statements, 7), range(xyplot_1, 23281, 45, 530, 530)).
stmt(xyplot_1_stmt10, expression_statement, xyplot_1_block2, (statements, 8), range(xyplot_1, 23338, 34, 532, 532)).
stmt(xyplot_1_stmt11, expression_statement, xyplot_1_block2, (statements, 9), range(xyplot_1, 23382, 43, 533, 533)).
stmt(xyplot_1_stmt12, expression_statement, xyplot_1_block2, (statements, 10), range(xyplot_1, 23435, 44, 534, 534)).
stmt(xyplot_1_stmt13, expression_statement, xyplot_1_block2, (statements, 11), range(xyplot_1, 23489, 44, 535, 535)).
stmt(xyplot_1_stmt14, expression_statement, xyplot_1_block2, (statements, 12), range(xyplot_1, 23545, 33, 537, 537)).
stmt(xyplot_1_stmt15, expression_statement, xyplot_1_block2, (statements, 13), range(xyplot_1, 23588, 34, 538, 538)).
stmt(xyplot_1_stmt16, expression_statement, xyplot_1_block2, (statements, 14), range(xyplot_1, 23634, 44, 540, 540)).
stmt(xyplot_1_stmt17, expression_statement, xyplot_1_block2, (statements, 15), range(xyplot_1, 23688, 43, 541, 541)).
stmt(xyplot_1_stmt18, expression_statement, xyplot_1_block2, (statements, 16), range(xyplot_1, 23743, 30, 543, 543)).
stmt(xyplot_1_stmt19, if_statement, xyplot_1_block2, (statements, 17), range(xyplot_1, 23783, 79, 544, 546)).
stmt(xyplot_1_stmt20, expression_statement, xyplot_1_block2, (statements, 18), range(xyplot_1, 23874, 32, 548, 548)).
stmt(xyplot_1_stmt21, if_statement, xyplot_1_block2, (statements, 19), range(xyplot_1, 23916, 118, 549, 552)).
stmt(xyplot_1_stmt22, expression_statement, xyplot_1_block2, (statements, 20), range(xyplot_1, 24046, 35, 554, 554)).
stmt(xyplot_1_stmt23, expression_statement, xyplot_1_block2, (statements, 21), range(xyplot_1, 24091, 34, 555, 555)).
stmt(xyplot_1_stmt24, if_statement, xyplot_1_block2, (statements, 22), range(xyplot_1, 24135, 124, 556, 559)).
stmt(xyplot_1_stmt25, expression_statement, xyplot_1_block2, (statements, 23), range(xyplot_1, 24269, 61, 560, 560)).
stmt(xyplot_1_stmt26, expression_statement, xyplot_1_block2, (statements, 24), range(xyplot_1, 24342, 33, 562, 562)).
stmt(xyplot_1_stmt27, expression_statement, xyplot_1_block2, (statements, 25), range(xyplot_1, 24385, 33, 563, 563)).
stmt(xyplot_1_stmt28, if_statement, xyplot_1_block2, (statements, 26), range(xyplot_1, 24428, 121, 564, 567)).
stmt(xyplot_1_stmt29, expression_statement, xyplot_1_block2, (statements, 27), range(xyplot_1, 24559, 60, 568, 568)).
stmt(xyplot_1_stmt30, expression_statement, xyplot_1_block2, (statements, 28), range(xyplot_1, 24631, 22, 570, 570)).
stmt(xyplot_1_stmt31, expression_statement, xyplot_1_block2, (statements, 29), range(xyplot_1, 24663, 21, 571, 571)).
stmt(xyplot_1_stmt32, expression_statement, xyplot_1_block2, (statements, 30), range(xyplot_1, 24696, 35, 573, 573)).
stmt(xyplot_1_stmt33, expression_statement, xyplot_1_block2, (statements, 31), range(xyplot_1, 24741, 52, 574, 574)).
stmt(xyplot_1_stmt34, expression_statement, xyplot_1_block2, (statements, 32), range(xyplot_1, 24803, 50, 575, 575)).
stmt(xyplot_1_stmt35, expression_statement, xyplot_1_block2, (statements, 33), range(xyplot_1, 24865, 39, 577, 577)).
stmt(xyplot_1_stmt36, expression_statement, xyplot_1_block2, (statements, 34), range(xyplot_1, 24914, 43, 578, 578)).
stmt(xyplot_1_stmt37, expression_statement, xyplot_1_block2, (statements, 35), range(xyplot_1, 24967, 54, 579, 579)).
stmt(xyplot_1_stmt38, expression_statement, xyplot_1_block2, (statements, 36), range(xyplot_1, 25033, 34, 581, 581)).
stmt(xyplot_1_stmt39, expression_statement, xyplot_1_block2, (statements, 37), range(xyplot_1, 25077, 51, 582, 582)).
stmt(xyplot_1_stmt40, expression_statement, xyplot_1_block2, (statements, 38), range(xyplot_1, 25138, 49, 583, 583)).
stmt(xyplot_1_stmt41, expression_statement, xyplot_1_block2, (statements, 39), range(xyplot_1, 25199, 38, 585, 585)).
stmt(xyplot_1_stmt42, expression_statement, xyplot_1_block2, (statements, 40), range(xyplot_1, 25247, 42, 586, 586)).
stmt(xyplot_1_stmt43, expression_statement, xyplot_1_block2, (statements, 41), range(xyplot_1, 25299, 53, 587, 587)).
stmt(xyplot_1_stmt44, expression_statement, xyplot_1_block2, (statements, 42), range(xyplot_1, 25364, 36, 589, 589)).
stmt(xyplot_1_stmt45, expression_statement, xyplot_1_block2, (statements, 43), range(xyplot_1, 25410, 32, 590, 590)).
stmt(xyplot_1_stmt46, expression_statement, xyplot_1_block2, (statements, 44), range(xyplot_1, 25452, 54, 591, 591)).
stmt(xyplot_1_stmt47, expression_statement, xyplot_1_block2, (statements, 45), range(xyplot_1, 25516, 52, 592, 592)).
stmt(xyplot_1_stmt48, expression_statement, xyplot_1_block2, (statements, 46), range(xyplot_1, 25580, 35, 594, 594)).
stmt(xyplot_1_stmt49, expression_statement, xyplot_1_block2, (statements, 47), range(xyplot_1, 25625, 31, 595, 595)).
stmt(xyplot_1_stmt50, expression_statement, xyplot_1_block2, (statements, 48), range(xyplot_1, 25666, 53, 596, 596)).
stmt(xyplot_1_stmt51, expression_statement, xyplot_1_block2, (statements, 49), range(xyplot_1, 25729, 51, 597, 597)).
stmt(xyplot_1_stmt52, expression_statement, xyplot_1_block2, (statements, 50), range(xyplot_1, 25792, 45, 599, 599)).
stmt(xyplot_1_stmt53, for_statement, xyplot_1_block7, (statements, 0), range(xyplot_1, 33502, 210, 860, 865)).
stmt(xyplot_1_stmt54, variable_declaration_statement, xyplot_1_block8, (statements, 0), range(xyplot_1, 33566, 52, 861, 861)).
stmt(xyplot_1_stmt55, if_statement, xyplot_1_block8, (statements, 1), range(xyplot_1, 33632, 69, 862, 864)).
stmt(xyplot_1_stmt56, for_statement, xyplot_1_block10, (statements, 0), range(xyplot_1, 42524, 208, 1160, 1165)).
stmt(xyplot_1_stmt57, variable_declaration_statement, xyplot_1_block11, (statements, 0), range(xyplot_1, 42587, 51, 1161, 1161)).
stmt(xyplot_1_stmt58, if_statement, xyplot_1_block11, (statements, 1), range(xyplot_1, 42652, 69, 1162, 1164)).
stmt(xyplot_1_stmt59, variable_declaration_statement, xyplot_1_block13, (statements, 0), range(xyplot_1, 46017, 24, 1273, 1273)).
stmt(xyplot_1_stmt60, if_statement, xyplot_1_block13, (statements, 1), range(xyplot_1, 46051, 106, 1274, 1276)).
stmt(xyplot_1_stmt61, expression_statement, xyplot_1_block14, (statements, 0), range(xyplot_1, 46100, 46, 1275, 1275)).
stmt(xyplot_1_stmt62, return_statement, xyplot_1_block13, (statements, 2), range(xyplot_1, 46167, 14, 1277, 1277)).
stmt(xyplot_1_stmt63, expression_statement, xyplot_1_block15, (statements, 0), range(xyplot_1, 48415, 94, 1354, 1355)).
stmt(xyplot_1_stmt64, expression_statement, xyplot_1_block15, (statements, 1), range(xyplot_1, 48577, 64, 1357, 1357)).
stmt(xyplot_1_stmt65, expression_statement, xyplot_1_block16, (statements, 0), range(xyplot_1, 49058, 93, 1370, 1371)).
stmt(xyplot_1_stmt66, expression_statement, xyplot_1_block16, (statements, 1), range(xyplot_1, 49219, 64, 1373, 1373)).
stmt(xyplot_1_stmt67, return_statement, xyplot_1_block17, (statements, 0), range(xyplot_1, 76764, 52, 2232, 2232)).
stmt(xyplot_1_stmt68, return_statement, xyplot_1_block18, (statements, 0), range(xyplot_1, 77337, 44, 2248, 2248)).
stmt(xyplot_1_stmt69, return_statement, xyplot_1_block19, (statements, 0), range(xyplot_1, 77914, 54, 2265, 2265)).
stmt(xyplot_1_stmt70, if_statement, xyplot_1_block20, (statements, 1), range(xyplot_1, 78616, 292, 2285, 2292)).
stmt(xyplot_1_stmt71, expression_statement, xyplot_1_block21, (statements, 0), range(xyplot_1, 78662, 97, 2286, 2287)).
stmt(xyplot_1_stmt72, variable_declaration_statement, xyplot_1_block20, (statements, 2), range(xyplot_1, 78918, 41, 2293, 2293)).
stmt(xyplot_1_stmt73, return_statement, xyplot_1_block22, (statements, 0), range(xyplot_1, 85163, 51, 2465, 2465)).
stmt(xyplot_1_stmt74, return_statement, xyplot_1_block23, (statements, 0), range(xyplot_1, 85733, 43, 2481, 2481)).
stmt(xyplot_1_stmt75, return_statement, xyplot_1_block24, (statements, 0), range(xyplot_1, 86308, 53, 2498, 2498)).
stmt(xyplot_1_stmt76, if_statement, xyplot_1_block25, (statements, 0), range(xyplot_1, 86968, 108, 2517, 2519)).
stmt(xyplot_1_stmt77, if_statement, xyplot_1_block25, (statements, 2), range(xyplot_1, 87114, 290, 2521, 2528)).
stmt(xyplot_1_stmt78, expression_statement, xyplot_1_block27, (statements, 0), range(xyplot_1, 87160, 96, 2522, 2523)).
stmt(xyplot_1_stmt79, variable_declaration_statement, xyplot_1_block25, (statements, 3), range(xyplot_1, 87414, 41, 2529, 2529)).
stmt(xyplot_1_stmt80, expression_statement, xyplot_1_block28, (statements, 0), range(xyplot_1, 143795, 22, 4033, 4033)).
stmt(xyplot_1_stmt81, expression_statement, xyplot_1_block28, (statements, 1), range(xyplot_1, 143827, 21, 4034, 4034)).
stmt(xyplot_1_stmt82, if_statement, xyplot_1_block28, (statements, 2), range(xyplot_1, 143858, 267, 4035, 4042)).
stmt(xyplot_1_stmt83, variable_declaration_statement, xyplot_1_block30, (statements, 0), range(xyplot_1, 143973, 46, 4039, 4039)).
stmt(xyplot_1_stmt84, expression_statement, xyplot_1_block30, (statements, 1), range(xyplot_1, 144033, 48, 4040, 4040)).
stmt(xyplot_1_stmt85, expression_statement, xyplot_1_block30, (statements, 2), range(xyplot_1, 144095, 19, 4041, 4041)).
%length_adjustment_type_1 - org.jfree.chart.util.LengthAdjustmentType
stmt(length_adjustment_type_1_stmt1, expression_statement, length_adjustment_type_1_block1, (statements, 0), range(length_adjustment_type_1, 2504, 17, 77, 77)).
%category_anchor_1 - org.jfree.chart.axis.CategoryAnchor
stmt(category_anchor_1_stmt1, expression_statement, category_anchor_1_block1, (statements, 0), range(category_anchor_1, 2538, 17, 76, 76)).
%series_rendering_order_1 - org.jfree.chart.plot.SeriesRenderingOrder
stmt(series_rendering_order_1_stmt1, expression_statement, series_rendering_order_1_block1, (statements, 0), range(series_rendering_order_1, 2738, 17, 79, 79)).
%layer_1 - org.jfree.chart.util.Layer
stmt(layer_1_stmt1, expression_statement, layer_1_block1, (statements, 0), range(layer_1, 2210, 17, 70, 70)).
%plot_change_event_1 - org.jfree.chart.event.PlotChangeEvent
stmt(plot_change_event_1_stmt1, super_constructor_invocation, plot_change_event_1_block1, (statements, 0), range(plot_change_event_1, 2302, 12, 64, 64)).
stmt(plot_change_event_1_stmt2, expression_statement, plot_change_event_1_block1, (statements, 1), range(plot_change_event_1, 2324, 17, 65, 65)).
%rectangle_insets_1 - org.jfree.chart.util.RectangleInsets
stmt(rectangle_insets_1_stmt1, constructor_invocation, rectangle_insets_1_block1, (statements, 0), range(rectangle_insets_1, 3342, 50, 102, 102)).
stmt(rectangle_insets_1_stmt2, if_statement, rectangle_insets_1_block2, (statements, 0), range(rectangle_insets_1, 3863, 110, 117, 119)).
stmt(rectangle_insets_1_stmt3, expression_statement, rectangle_insets_1_block2, (statements, 1), range(rectangle_insets_1, 3982, 25, 120, 120)).
stmt(rectangle_insets_1_stmt4, expression_statement, rectangle_insets_1_block2, (statements, 2), range(rectangle_insets_1, 4016, 15, 121, 121)).
stmt(rectangle_insets_1_stmt5, expression_statement, rectangle_insets_1_block2, (statements, 3), range(rectangle_insets_1, 4040, 21, 122, 122)).
stmt(rectangle_insets_1_stmt6, expression_statement, rectangle_insets_1_block2, (statements, 4), range(rectangle_insets_1, 4070, 17, 123, 123)).
stmt(rectangle_insets_1_stmt7, expression_statement, rectangle_insets_1_block2, (statements, 5), range(rectangle_insets_1, 4096, 19, 124, 124)).
%abstract_object_list_1 - org.jfree.chart.util.AbstractObjectList
stmt(abstract_object_list_1_stmt1, constructor_invocation, abstract_object_list_1_block1, (statements, 0), range(abstract_object_list_1, 2634, 31, 77, 77)).
stmt(abstract_object_list_1_stmt2, constructor_invocation, abstract_object_list_1_block2, (statements, 0), range(abstract_object_list_1, 2840, 40, 86, 86)).
stmt(abstract_object_list_1_stmt3, expression_statement, abstract_object_list_1_block3, (statements, 0), range(abstract_object_list_1, 3111, 43, 96, 96)).
stmt(abstract_object_list_1_stmt4, expression_statement, abstract_object_list_1_block3, (statements, 1), range(abstract_object_list_1, 3163, 27, 97, 97)).
stmt(abstract_object_list_1_stmt5, variable_declaration_statement, abstract_object_list_1_block4, (statements, 0), range(abstract_object_list_1, 3458, 21, 109, 109)).
stmt(abstract_object_list_1_stmt6, if_statement, abstract_object_list_1_block4, (statements, 1), range(abstract_object_list_1, 3488, 90, 110, 112)).
stmt(abstract_object_list_1_stmt7, expression_statement, abstract_object_list_1_block5, (statements, 0), range(abstract_object_list_1, 3539, 29, 111, 111)).
stmt(abstract_object_list_1_stmt8, return_statement, abstract_object_list_1_block4, (statements, 2), range(abstract_object_list_1, 3587, 14, 113, 113)).
stmt(abstract_object_list_1_stmt9, if_statement, abstract_object_list_1_block6, (statements, 0), range(abstract_object_list_1, 3861, 98, 123, 125)).
stmt(abstract_object_list_1_stmt10, if_statement, abstract_object_list_1_block6, (statements, 1), range(abstract_object_list_1, 3968, 231, 126, 130)).
stmt(abstract_object_list_1_stmt11, expression_statement, abstract_object_list_1_block6, (statements, 2), range(abstract_object_list_1, 4208, 29, 131, 131)).
stmt(abstract_object_list_1_stmt12, expression_statement, abstract_object_list_1_block6, (statements, 3), range(abstract_object_list_1, 4246, 43, 132, 132)).
stmt(abstract_object_list_1_stmt13, return_statement, abstract_object_list_1_block9, (statements, 0), range(abstract_object_list_1, 4563, 17, 149, 149)).

%%% Expressions
%category_marker_1 - org.jfree.chart.plot.CategoryMarker
expr(category_marker_1_expr1, constructor_invocation, category_marker_1_block1, (statements, 0), range(category_marker_1, 2788, 45, 80, 80), "this(key,Color.gray,new BasicStroke(1.0f));").
expr(category_marker_1_expr2, class_instance_creation, category_marker_1_stmt1, (arguments, 2), range(category_marker_1, 2810, 21, 80, 80), "new BasicStroke(1.0f)").
expr(category_marker_1_expr3, constructor_invocation, category_marker_1_block2, (statements, 0), range(category_marker_1, 3164, 46, 91, 91), "this(key,paint,stroke,paint,stroke,1.0f);").
expr(category_marker_1_expr4, super_constructor_invocation, category_marker_1_block3, (statements, 0), range(category_marker_1, 3852, 57, 107, 107), "super(paint,stroke,outlinePaint,outlineStroke,alpha);").
expr(category_marker_1_expr7, this_expression, f_key_74, expression, range(category_marker_1, 3919, 4, 108, 108), "this").
expr(category_marker_1_expr5, assignment, category_marker_1_stmt4, expression, range(category_marker_1, 3919, 14, 108, 108), "this.key=key").
expr(category_marker_1_expr6, field_access, category_marker_1_expr5, left_hand_side, range(category_marker_1, 3919, 8, 108, 108), "this.key").
expr(category_marker_1_expr8, method_invocation, category_marker_1_stmt5, expression, range(category_marker_1, 3944, 47, 109, 109), "setLabelOffsetType(LengthAdjustmentType.EXPAND)").
%category_plot_tests_1 - org.jfree.chart.plot.junit.CategoryPlotTests
expr(category_plot_tests_1_expr1, class_instance_creation, category_plot_tests_1_stmt1, expression, range(category_plot_tests_1, 3869, 38, 107, 107), "new TestSuite(CategoryPlotTests.class)").
expr(category_plot_tests_1_expr2, type_literal, category_plot_tests_1_expr1, (arguments, 0), range(category_plot_tests_1, 3883, 23, 107, 107), "CategoryPlotTests.class").
expr(category_plot_tests_1_expr3, super_constructor_invocation, category_plot_tests_1_block2, (statements, 0), range(category_plot_tests_1, 4072, 12, 116, 116), "super(name);").
expr(category_plot_tests_1_expr4, class_instance_creation, category_plot_tests_1_code9, initializer, range(category_plot_tests_1, 28756, 18, 770, 770), "new CategoryPlot()").
expr(category_plot_tests_1_expr5, method_invocation, category_plot_tests_1_stmt4, expression, range(category_plot_tests_1, 28781, 70, 771, 771), "assertFalse(plot.removeDomainMarker(new CategoryMarker(\"Category 1\")))").
expr(category_plot_tests_1_expr6, method_invocation, category_plot_tests_1_expr5, (arguments, 0), range(category_plot_tests_1, 28793, 57, 771, 771), "plot.removeDomainMarker(new CategoryMarker(\"Category 1\"))").
expr(category_plot_tests_1_expr7, class_instance_creation, category_plot_tests_1_expr6, (arguments, 0), range(category_plot_tests_1, 28817, 32, 771, 771), "new CategoryMarker(\"Category 1\")").
expr(category_plot_tests_1_expr8, class_instance_creation, category_plot_tests_1_code14, initializer, range(category_plot_tests_1, 29034, 18, 779, 779), "new CategoryPlot()").
expr(category_plot_tests_1_expr9, method_invocation, category_plot_tests_1_stmt6, expression, range(category_plot_tests_1, 29059, 57, 780, 780), "assertFalse(plot.removeRangeMarker(new ValueMarker(0.5)))").
expr(category_plot_tests_1_expr10, method_invocation, category_plot_tests_1_expr9, (arguments, 0), range(category_plot_tests_1, 29071, 44, 780, 780), "plot.removeRangeMarker(new ValueMarker(0.5))").
expr(category_plot_tests_1_expr11, class_instance_creation, category_plot_tests_1_expr10, (arguments, 0), range(category_plot_tests_1, 29094, 20, 780, 780), "new ValueMarker(0.5)").
%text_anchor_1 - org.jfree.chart.text.TextAnchor
expr(text_anchor_1_expr1, class_instance_creation, text_anchor_1_code8, initializer, range(text_anchor_1, 2075, 50, 58, 59), "new TextAnchor(\"TextAnchor.TOP_LEFT\")").
expr(text_anchor_1_expr2, class_instance_creation, text_anchor_1_code15, initializer, range(text_anchor_1, 2199, 52, 62, 63), "new TextAnchor(\"TextAnchor.TOP_CENTER\")").
expr(text_anchor_1_expr3, class_instance_creation, text_anchor_1_code22, initializer, range(text_anchor_1, 2323, 51, 66, 67), "new TextAnchor(\"TextAnchor.TOP_RIGHT\")").
expr(text_anchor_1_expr4, class_instance_creation, text_anchor_1_code29, initializer, range(text_anchor_1, 2460, 58, 70, 71), "new TextAnchor(\"TextAnchor.HALF_ASCENT_LEFT\")").
expr(text_anchor_1_expr5, class_instance_creation, text_anchor_1_code36, initializer, range(text_anchor_1, 2608, 60, 74, 75), "new TextAnchor(\"TextAnchor.HALF_ASCENT_CENTER\")").
expr(text_anchor_1_expr6, class_instance_creation, text_anchor_1_code43, initializer, range(text_anchor_1, 2756, 59, 78, 79), "new TextAnchor(\"TextAnchor.HALF_ASCENT_RIGHT\")").
expr(text_anchor_1_expr7, class_instance_creation, text_anchor_1_code50, initializer, range(text_anchor_1, 2891, 53, 82, 83), "new TextAnchor(\"TextAnchor.CENTER_LEFT\")").
expr(text_anchor_1_expr8, class_instance_creation, text_anchor_1_code57, initializer, range(text_anchor_1, 3017, 35, 86, 86), "new TextAnchor(\"TextAnchor.CENTER\")").
expr(text_anchor_1_expr9, class_instance_creation, text_anchor_1_code64, initializer, range(text_anchor_1, 3130, 54, 89, 90), "new TextAnchor(\"TextAnchor.CENTER_RIGHT\")").
expr(text_anchor_1_expr10, class_instance_creation, text_anchor_1_code71, initializer, range(text_anchor_1, 3264, 55, 93, 94), "new TextAnchor(\"TextAnchor.BASELINE_LEFT\")").
expr(text_anchor_1_expr11, class_instance_creation, text_anchor_1_code78, initializer, range(text_anchor_1, 3403, 57, 97, 98), "new TextAnchor(\"TextAnchor.BASELINE_CENTER\")").
expr(text_anchor_1_expr12, class_instance_creation, text_anchor_1_code85, initializer, range(text_anchor_1, 3542, 56, 101, 102), "new TextAnchor(\"TextAnchor.BASELINE_RIGHT\")").
expr(text_anchor_1_expr13, class_instance_creation, text_anchor_1_code92, initializer, range(text_anchor_1, 3674, 53, 105, 106), "new TextAnchor(\"TextAnchor.BOTTOM_LEFT\")").
expr(text_anchor_1_expr14, class_instance_creation, text_anchor_1_code99, initializer, range(text_anchor_1, 3807, 55, 109, 110), "new TextAnchor(\"TextAnchor.BOTTOM_CENTER\")").
expr(text_anchor_1_expr15, class_instance_creation, text_anchor_1_code106, initializer, range(text_anchor_1, 3940, 54, 113, 114), "new TextAnchor(\"TextAnchor.BOTTOM_RIGHT\")").
expr(text_anchor_1_expr17, field_access, text_anchor_1_expr16, left_hand_side, range(text_anchor_1, 4171, 9, 125, 125), "this.name").
expr(text_anchor_1_expr16, assignment, text_anchor_1_stmt1, expression, range(text_anchor_1, 4171, 16, 125, 125), "this.name=name").
expr(text_anchor_1_expr18, this_expression, f_name_917, expression, range(text_anchor_1, 4171, 4, 125, 125), "this").
%xyplot_tests_1 - org.jfree.chart.plot.junit.XYPlotTests
expr(xyplot_tests_1_expr1, class_instance_creation, xyplot_tests_1_stmt1, expression, range(xyplot_tests_1, 4267, 32, 116, 116), "new TestSuite(XYPlotTests.class)").
expr(xyplot_tests_1_expr2, type_literal, xyplot_tests_1_expr1, (arguments, 0), range(xyplot_tests_1, 4281, 17, 116, 116), "XYPlotTests.class").
expr(xyplot_tests_1_expr3, super_constructor_invocation, xyplot_tests_1_block2, (statements, 0), range(xyplot_tests_1, 4458, 12, 125, 125), "super(name);").
expr(xyplot_tests_1_expr4, class_instance_creation, xyplot_tests_1_code9, initializer, range(xyplot_tests_1, 38041, 12, 1027, 1027), "new XYPlot()").
expr(xyplot_tests_1_expr5, method_invocation, xyplot_tests_1_stmt4, expression, range(xyplot_tests_1, 38060, 58, 1028, 1028), "assertFalse(plot.removeDomainMarker(new ValueMarker(0.5)))").
expr(xyplot_tests_1_expr6, method_invocation, xyplot_tests_1_expr5, (arguments, 0), range(xyplot_tests_1, 38072, 45, 1028, 1028), "plot.removeDomainMarker(new ValueMarker(0.5))").
expr(xyplot_tests_1_expr7, class_instance_creation, xyplot_tests_1_expr6, (arguments, 0), range(xyplot_tests_1, 38096, 20, 1028, 1028), "new ValueMarker(0.5)").
expr(xyplot_tests_1_expr8, class_instance_creation, xyplot_tests_1_code14, initializer, range(xyplot_tests_1, 38295, 12, 1036, 1036), "new XYPlot()").
expr(xyplot_tests_1_expr9, method_invocation, xyplot_tests_1_stmt6, expression, range(xyplot_tests_1, 38314, 57, 1037, 1037), "assertFalse(plot.removeRangeMarker(new ValueMarker(0.5)))").
expr(xyplot_tests_1_expr10, method_invocation, xyplot_tests_1_expr9, (arguments, 0), range(xyplot_tests_1, 38326, 44, 1037, 1037), "plot.removeRangeMarker(new ValueMarker(0.5))").
expr(xyplot_tests_1_expr11, class_instance_creation, xyplot_tests_1_expr10, (arguments, 0), range(xyplot_tests_1, 38349, 20, 1037, 1037), "new ValueMarker(0.5)").
%marker_1 - org.jfree.chart.plot.Marker
expr(marker_1_expr1, constructor_invocation, marker_1_block1, (statements, 0), range(marker_1, 5234, 17, 144, 144), "this(Color.gray);").
expr(marker_1_expr2, constructor_invocation, marker_1_block2, (statements, 0), range(marker_1, 5433, 95, 153, 154), "this(paint,new BasicStroke(0.5f),Color.gray,new BasicStroke(0.5f),0.80f);").
expr(marker_1_expr3, class_instance_creation, marker_1_stmt2, (arguments, 1), range(marker_1, 5445, 21, 153, 153), "new BasicStroke(0.5f)").
expr(marker_1_expr4, class_instance_creation, marker_1_stmt2, (arguments, 3), range(marker_1, 5480, 21, 153, 153), "new BasicStroke(0.5f)").
expr(marker_1_expr5, infix_expression, marker_1_stmt3, expression, range(marker_1, 6354, 13, 175, 175), "paint == null").
expr(marker_1_expr6, infix_expression, marker_1_stmt4, expression, range(marker_1, 6470, 14, 178, 178), "stroke == null").
expr(marker_1_expr8, infix_expression, marker_1_expr7, left_operand, range(marker_1, 6588, 12, 181, 181), "alpha < 0.0f").
expr(marker_1_expr7, infix_expression, marker_1_stmt5, expression, range(marker_1, 6588, 28, 181, 181), "alpha < 0.0f || alpha > 1.0f").
expr(marker_1_expr9, infix_expression, marker_1_expr7, right_operand, range(marker_1, 6604, 12, 181, 181), "alpha > 1.0f").
expr(marker_1_expr10, assignment, marker_1_stmt6, expression, range(marker_1, 6763, 18, 185, 185), "this.paint=paint").
expr(marker_1_expr12, this_expression, f_paint_423, expression, range(marker_1, 6763, 4, 185, 185), "this").
expr(marker_1_expr11, field_access, marker_1_expr10, left_hand_side, range(marker_1, 6763, 10, 185, 185), "this.paint").
expr(marker_1_expr15, this_expression, f_stroke_424, expression, range(marker_1, 6792, 4, 186, 186), "this").
expr(marker_1_expr14, field_access, marker_1_expr13, left_hand_side, range(marker_1, 6792, 11, 186, 186), "this.stroke").
expr(marker_1_expr13, assignment, marker_1_stmt7, expression, range(marker_1, 6792, 20, 186, 186), "this.stroke=stroke").
expr(marker_1_expr16, assignment, marker_1_stmt8, expression, range(marker_1, 6823, 32, 187, 187), "this.outlinePaint=outlinePaint").
expr(marker_1_expr18, this_expression, f_outline_paint_425, expression, range(marker_1, 6823, 4, 187, 187), "this").
expr(marker_1_expr17, field_access, marker_1_expr16, left_hand_side, range(marker_1, 6823, 17, 187, 187), "this.outlinePaint").
expr(marker_1_expr19, assignment, marker_1_stmt9, expression, range(marker_1, 6866, 34, 188, 188), "this.outlineStroke=outlineStroke").
expr(marker_1_expr21, this_expression, f_outline_stroke_426, expression, range(marker_1, 6866, 4, 188, 188), "this").
expr(marker_1_expr20, field_access, marker_1_expr19, left_hand_side, range(marker_1, 6866, 18, 188, 188), "this.outlineStroke").
expr(marker_1_expr23, field_access, marker_1_expr22, left_hand_side, range(marker_1, 6911, 10, 189, 189), "this.alpha").
expr(marker_1_expr22, assignment, marker_1_stmt10, expression, range(marker_1, 6911, 18, 189, 189), "this.alpha=alpha").
expr(marker_1_expr24, this_expression, f_alpha_427, expression, range(marker_1, 6911, 4, 189, 189), "this").
expr(marker_1_expr26, field_access, marker_1_expr25, left_hand_side, range(marker_1, 6950, 14, 191, 191), "this.labelFont").
expr(marker_1_expr28, this_expression, f_label_font_428, expression, range(marker_1, 6950, 4, 191, 191), "this").
expr(marker_1_expr25, assignment, marker_1_stmt11, expression, range(marker_1, 6950, 53, 191, 191), "this.labelFont=new Font(\"SansSerif\",Font.PLAIN,9)").
expr(marker_1_expr27, class_instance_creation, marker_1_expr25, right_hand_side, range(marker_1, 6967, 36, 191, 191), "new Font(\"SansSerif\",Font.PLAIN,9)").
expr(marker_1_expr29, assignment, marker_1_stmt12, expression, range(marker_1, 7014, 29, 192, 192), "this.labelPaint=Color.black").
expr(marker_1_expr30, field_access, marker_1_expr29, left_hand_side, range(marker_1, 7014, 15, 192, 192), "this.labelPaint").
expr(marker_1_expr31, this_expression, f_label_paint_429, expression, range(marker_1, 7014, 4, 192, 192), "this").
expr(marker_1_expr32, assignment, marker_1_stmt13, expression, range(marker_1, 7054, 43, 193, 193), "this.labelAnchor=RectangleAnchor.TOP_LEFT").
expr(marker_1_expr34, this_expression, f_label_anchor_430, expression, range(marker_1, 7054, 4, 193, 193), "this").
expr(marker_1_expr33, field_access, marker_1_expr32, left_hand_side, range(marker_1, 7054, 16, 193, 193), "this.labelAnchor").
expr(marker_1_expr38, this_expression, f_label_offset_431, expression, range(marker_1, 7108, 4, 194, 194), "this").
expr(marker_1_expr36, field_access, marker_1_expr35, left_hand_side, range(marker_1, 7108, 16, 194, 194), "this.labelOffset").
expr(marker_1_expr35, assignment, marker_1_stmt14, expression, range(marker_1, 7108, 58, 194, 194), "this.labelOffset=new RectangleInsets(3.0,3.0,3.0,3.0)").
expr(marker_1_expr37, class_instance_creation, marker_1_expr35, right_hand_side, range(marker_1, 7127, 39, 194, 194), "new RectangleInsets(3.0,3.0,3.0,3.0)").
expr(marker_1_expr39, assignment, marker_1_stmt15, expression, range(marker_1, 7177, 52, 195, 195), "this.labelOffsetType=LengthAdjustmentType.CONTRACT").
expr(marker_1_expr41, this_expression, f_label_offset_type_432, expression, range(marker_1, 7177, 4, 195, 195), "this").
expr(marker_1_expr40, field_access, marker_1_expr39, left_hand_side, range(marker_1, 7177, 20, 195, 195), "this.labelOffsetType").
expr(marker_1_expr43, field_access, marker_1_expr42, left_hand_side, range(marker_1, 7240, 20, 196, 196), "this.labelTextAnchor").
expr(marker_1_expr42, assignment, marker_1_stmt16, expression, range(marker_1, 7240, 40, 196, 196), "this.labelTextAnchor=TextAnchor.CENTER").
expr(marker_1_expr44, this_expression, f_label_text_anchor_433, expression, range(marker_1, 7240, 4, 196, 196), "this").
expr(marker_1_expr48, this_expression, f_listener_list_434, expression, range(marker_1, 7301, 4, 198, 198), "this").
expr(marker_1_expr45, assignment, marker_1_stmt17, expression, range(marker_1, 7301, 43, 198, 198), "this.listenerList=new EventListenerList()").
expr(marker_1_expr46, field_access, marker_1_expr45, left_hand_side, range(marker_1, 7301, 17, 198, 198), "this.listenerList").
expr(marker_1_expr47, class_instance_creation, marker_1_expr45, right_hand_side, range(marker_1, 7321, 23, 198, 198), "new EventListenerList()").
expr(marker_1_expr49, infix_expression, marker_1_stmt18, expression, range(marker_1, 15651, 11, 490, 490), "adj == null").
expr(marker_1_expr52, this_expression, f_label_offset_type_432, expression, range(marker_1, 15759, 4, 493, 493), "this").
expr(marker_1_expr51, field_access, marker_1_expr50, left_hand_side, range(marker_1, 15759, 20, 493, 493), "this.labelOffsetType").
expr(marker_1_expr50, assignment, marker_1_stmt19, expression, range(marker_1, 15759, 26, 493, 493), "this.labelOffsetType=adj").
expr(marker_1_expr53, method_invocation, marker_1_stmt20, expression, range(marker_1, 15800, 44, 494, 494), "notifyListeners(new MarkerChangeEvent(this))").
expr(marker_1_expr54, class_instance_creation, marker_1_expr53, (arguments, 0), range(marker_1, 15816, 27, 494, 494), "new MarkerChangeEvent(this)").
expr(marker_1_expr55, this_expression, marker_1_expr54, (arguments, 0), range(marker_1, 15838, 4, 494, 494), "this").
expr(marker_1_expr59, this_expression, f_listener_list_434, expression, range(marker_1, 17015, 4, 534, 534), "this").
expr(marker_1_expr56, method_invocation, marker_1_stmt21, expression, range(marker_1, 17015, 59, 534, 534), "this.listenerList.add(MarkerChangeListener.class,listener)").
expr(marker_1_expr58, field_access, marker_1_expr56, expression, range(marker_1, 17015, 17, 534, 534), "this.listenerList").
expr(marker_1_expr57, type_literal, marker_1_expr56, (arguments, 0), range(marker_1, 17037, 26, 534, 534), "MarkerChangeListener.class").
expr(marker_1_expr62, this_expression, f_listener_list_434, expression, range(marker_1, 17769, 4, 559, 559), "this").
expr(marker_1_expr61, field_access, marker_1_expr60, expression, range(marker_1, 17769, 17, 559, 559), "this.listenerList").
expr(marker_1_expr60, method_invocation, marker_1_code25, initializer, range(marker_1, 17769, 35, 559, 559), "this.listenerList.getListenerList()").
expr(marker_1_expr63, variable_declaration_expression, marker_1_stmt23, (initializers, 0), range(marker_1, 17820, 28, 560, 560), "int i=listeners.length - 2").
expr(marker_1_expr64, infix_expression, marker_1_code27, initializer, range(marker_1, 17828, 20, 560, 560), "listeners.length - 2").
expr(marker_1_expr65, infix_expression, marker_1_stmt23, expression, range(marker_1, 17850, 6, 560, 560), "i >= 0").
expr(marker_1_expr66, assignment, marker_1_stmt23, (updaters, 0), range(marker_1, 17858, 6, 560, 560), "i-=2").
%value_marker_1 - org.jfree.chart.plot.ValueMarker
expr(value_marker_1_expr1, super_constructor_invocation, value_marker_1_block1, (statements, 0), range(value_marker_1, 2306, 8, 68, 68), "super();").
expr(value_marker_1_expr3, field_access, value_marker_1_expr2, left_hand_side, range(value_marker_1, 2324, 10, 69, 69), "this.value").
expr(value_marker_1_expr2, assignment, value_marker_1_stmt2, expression, range(value_marker_1, 2324, 18, 69, 69), "this.value=value").
expr(value_marker_1_expr4, this_expression, f_value_555, expression, range(value_marker_1, 2324, 4, 69, 69), "this").
expr(value_marker_1_expr5, super_constructor_invocation, value_marker_1_block2, (statements, 0), range(value_marker_1, 3343, 57, 95, 95), "super(paint,stroke,outlinePaint,outlineStroke,alpha);").
expr(value_marker_1_expr7, field_access, value_marker_1_expr6, left_hand_side, range(value_marker_1, 3410, 10, 96, 96), "this.value").
expr(value_marker_1_expr6, assignment, value_marker_1_stmt4, expression, range(value_marker_1, 3410, 18, 96, 96), "this.value=value").
expr(value_marker_1_expr8, this_expression, f_value_555, expression, range(value_marker_1, 3410, 4, 96, 96), "this").
%sort_order_1 - org.jfree.chart.util.SortOrder
expr(sort_order_1_expr1, class_instance_creation, sort_order_1_code8, initializer, range(sort_order_1, 2112, 49, 59, 60), "new SortOrder(\"SortOrder.ASCENDING\")").
expr(sort_order_1_expr2, class_instance_creation, sort_order_1_code15, initializer, range(sort_order_1, 2240, 50, 63, 64), "new SortOrder(\"SortOrder.DESCENDING\")").
expr(sort_order_1_expr5, this_expression, f_name_1013, expression, range(sort_order_1, 2466, 4, 75, 75), "this").
expr(sort_order_1_expr4, field_access, sort_order_1_expr3, left_hand_side, range(sort_order_1, 2466, 9, 75, 75), "this.name").
expr(sort_order_1_expr3, assignment, sort_order_1_stmt1, expression, range(sort_order_1, 2466, 16, 75, 75), "this.name=name").
%plot_1 - org.jfree.chart.plot.Plot
expr(plot_1_expr1, class_instance_creation, plot_1_code8, initializer, range(plot_1, 9265, 14, 191, 191), "new Integer(0)").
expr(plot_1_expr2, class_instance_creation, plot_1_code15, initializer, range(plot_1, 9387, 39, 195, 195), "new RectangleInsets(4.0,8.0,4.0,8.0)").
expr(plot_1_expr3, class_instance_creation, plot_1_code21, initializer, range(plot_1, 9527, 21, 198, 198), "new BasicStroke(0.5f)").
expr(plot_1_expr4, class_instance_creation, plot_1_code40, initializer, range(plot_1, 10397, 44, 220, 220), "new Rectangle2D.Double(-4.0,-4.0,8.0,8.0)").
expr(plot_1_expr5, class_instance_creation, plot_1_code46, initializer, range(plot_1, 10576, 42, 224, 224), "new Ellipse2D.Double(-4.0,-4.0,8.0,8.0)").
expr(plot_1_expr8, this_expression, f_parent_465, expression, range(plot_1, 12548, 4, 286, 286), "this").
expr(plot_1_expr7, field_access, plot_1_expr6, left_hand_side, range(plot_1, 12548, 11, 286, 286), "this.parent").
expr(plot_1_expr6, assignment, plot_1_stmt1, expression, range(plot_1, 12548, 18, 286, 286), "this.parent=null").
expr(plot_1_expr11, this_expression, f_insets_466, expression, range(plot_1, 12577, 4, 287, 287), "this").
expr(plot_1_expr10, field_access, plot_1_expr9, left_hand_side, range(plot_1, 12577, 11, 287, 287), "this.insets").
expr(plot_1_expr9, assignment, plot_1_stmt2, expression, range(plot_1, 12577, 28, 287, 287), "this.insets=DEFAULT_INSETS").
expr(plot_1_expr14, this_expression, f_background_paint_467, expression, range(plot_1, 12616, 4, 288, 288), "this").
expr(plot_1_expr13, field_access, plot_1_expr12, left_hand_side, range(plot_1, 12616, 20, 288, 288), "this.backgroundPaint").
expr(plot_1_expr12, assignment, plot_1_stmt3, expression, range(plot_1, 12616, 47, 288, 288), "this.backgroundPaint=DEFAULT_BACKGROUND_PAINT").
expr(plot_1_expr15, assignment, plot_1_stmt4, expression, range(plot_1, 12674, 47, 289, 289), "this.backgroundAlpha=DEFAULT_BACKGROUND_ALPHA").
expr(plot_1_expr17, this_expression, f_background_alpha_468, expression, range(plot_1, 12674, 4, 289, 289), "this").
expr(plot_1_expr16, field_access, plot_1_expr15, left_hand_side, range(plot_1, 12674, 20, 289, 289), "this.backgroundAlpha").
expr(plot_1_expr19, field_access, plot_1_expr18, left_hand_side, range(plot_1, 12732, 20, 290, 290), "this.backgroundImage").
expr(plot_1_expr18, assignment, plot_1_stmt5, expression, range(plot_1, 12732, 27, 290, 290), "this.backgroundImage=null").
expr(plot_1_expr20, this_expression, f_background_image_470, expression, range(plot_1, 12732, 4, 290, 290), "this").
expr(plot_1_expr22, field_access, plot_1_expr21, left_hand_side, range(plot_1, 12770, 19, 291, 291), "this.outlineVisible").
expr(plot_1_expr21, assignment, plot_1_stmt6, expression, range(plot_1, 12770, 26, 291, 291), "this.outlineVisible=true").
expr(plot_1_expr23, this_expression, f_outline_visible_471, expression, range(plot_1, 12770, 4, 291, 291), "this").
expr(plot_1_expr26, this_expression, f_outline_stroke_472, expression, range(plot_1, 12807, 4, 292, 292), "this").
expr(plot_1_expr25, field_access, plot_1_expr24, left_hand_side, range(plot_1, 12807, 18, 292, 292), "this.outlineStroke").
expr(plot_1_expr24, assignment, plot_1_stmt7, expression, range(plot_1, 12807, 43, 292, 292), "this.outlineStroke=DEFAULT_OUTLINE_STROKE").
expr(plot_1_expr29, this_expression, f_outline_paint_473, expression, range(plot_1, 12861, 4, 293, 293), "this").
expr(plot_1_expr28, field_access, plot_1_expr27, left_hand_side, range(plot_1, 12861, 17, 293, 293), "this.outlinePaint").
expr(plot_1_expr27, assignment, plot_1_stmt8, expression, range(plot_1, 12861, 41, 293, 293), "this.outlinePaint=DEFAULT_OUTLINE_PAINT").
expr(plot_1_expr31, field_access, plot_1_expr30, left_hand_side, range(plot_1, 12913, 20, 294, 294), "this.foregroundAlpha").
expr(plot_1_expr30, assignment, plot_1_stmt9, expression, range(plot_1, 12913, 47, 294, 294), "this.foregroundAlpha=DEFAULT_FOREGROUND_ALPHA").
expr(plot_1_expr32, this_expression, f_foreground_alpha_474, expression, range(plot_1, 12913, 4, 294, 294), "this").
expr(plot_1_expr33, assignment, plot_1_stmt10, expression, range(plot_1, 12973, 25, 296, 296), "this.noDataMessage=null").
expr(plot_1_expr35, this_expression, f_no_data_message_476, expression, range(plot_1, 12973, 4, 296, 296), "this").
expr(plot_1_expr34, field_access, plot_1_expr33, left_hand_side, range(plot_1, 12973, 18, 296, 296), "this.noDataMessage").
expr(plot_1_expr37, field_access, plot_1_expr36, left_hand_side, range(plot_1, 13009, 22, 297, 297), "this.noDataMessageFont").
expr(plot_1_expr36, assignment, plot_1_stmt11, expression, range(plot_1, 13009, 62, 297, 297), "this.noDataMessageFont=new Font(\"SansSerif\",Font.PLAIN,12)").
expr(plot_1_expr39, this_expression, f_no_data_message_font_477, expression, range(plot_1, 13009, 4, 297, 297), "this").
expr(plot_1_expr38, class_instance_creation, plot_1_expr36, right_hand_side, range(plot_1, 13034, 37, 297, 297), "new Font(\"SansSerif\",Font.PLAIN,12)").
expr(plot_1_expr40, assignment, plot_1_stmt12, expression, range(plot_1, 13082, 37, 298, 298), "this.noDataMessagePaint=Color.black").
expr(plot_1_expr42, this_expression, f_no_data_message_paint_478, expression, range(plot_1, 13082, 4, 298, 298), "this").
expr(plot_1_expr41, field_access, plot_1_expr40, left_hand_side, range(plot_1, 13082, 23, 298, 298), "this.noDataMessagePaint").
expr(plot_1_expr44, field_access, plot_1_expr43, left_hand_side, range(plot_1, 13132, 20, 300, 300), "this.drawingSupplier").
expr(plot_1_expr43, assignment, plot_1_stmt13, expression, range(plot_1, 13132, 51, 300, 300), "this.drawingSupplier=new DefaultDrawingSupplier()").
expr(plot_1_expr46, this_expression, f_drawing_supplier_479, expression, range(plot_1, 13132, 4, 300, 300), "this").
expr(plot_1_expr45, class_instance_creation, plot_1_expr43, right_hand_side, range(plot_1, 13155, 28, 300, 300), "new DefaultDrawingSupplier()").
expr(plot_1_expr48, field_access, plot_1_expr47, left_hand_side, range(plot_1, 13196, 17, 302, 302), "this.listenerList").
expr(plot_1_expr47, assignment, plot_1_stmt14, expression, range(plot_1, 13196, 43, 302, 302), "this.listenerList=new EventListenerList()").
expr(plot_1_expr50, this_expression, f_listener_list_480, expression, range(plot_1, 13196, 4, 302, 302), "this").
expr(plot_1_expr49, class_instance_creation, plot_1_expr47, right_hand_side, range(plot_1, 13216, 23, 302, 302), "new EventListenerList()").
expr(plot_1_expr51, field_access, plot_1_stmt15, expression, range(plot_1, 17007, 11, 433, 433), "this.parent").
expr(plot_1_expr52, this_expression, f_parent_465, expression, range(plot_1, 17007, 4, 433, 433), "this").
expr(plot_1_expr55, this_expression, f_listener_list_480, expression, range(plot_1, 30658, 4, 888, 888), "this").
expr(plot_1_expr54, field_access, plot_1_expr53, expression, range(plot_1, 30658, 17, 888, 888), "this.listenerList").
expr(plot_1_expr53, method_invocation, plot_1_code65, initializer, range(plot_1, 30658, 35, 888, 888), "this.listenerList.getListenerList()").
expr(plot_1_expr56, variable_declaration_expression, plot_1_stmt17, (initializers, 0), range(plot_1, 30709, 28, 889, 889), "int i=listeners.length - 2").
expr(plot_1_expr57, infix_expression, plot_1_code67, initializer, range(plot_1, 30717, 20, 889, 889), "listeners.length - 2").
expr(plot_1_expr58, infix_expression, plot_1_stmt17, expression, range(plot_1, 30739, 6, 889, 889), "i >= 0").
expr(plot_1_expr59, assignment, plot_1_stmt17, (updaters, 0), range(plot_1, 30747, 6, 889, 889), "i-=2").
expr(plot_1_expr60, method_invocation, plot_1_stmt18, expression, range(plot_1, 31101, 42, 902, 902), "notifyListeners(new PlotChangeEvent(this))").
expr(plot_1_expr61, class_instance_creation, plot_1_expr60, (arguments, 0), range(plot_1, 31117, 25, 902, 902), "new PlotChangeEvent(this)").
expr(plot_1_expr62, this_expression, plot_1_expr61, (arguments, 0), range(plot_1, 31137, 4, 902, 902), "this").
%chart_change_event_1 - org.jfree.chart.event.ChartChangeEvent
expr(chart_change_event_1_expr1, constructor_invocation, chart_change_event_1_block1, (statements, 0), range(chart_change_event_1, 2485, 49, 69, 69), "this(source,null,ChartChangeEventType.GENERAL);").
expr(chart_change_event_1_expr2, super_constructor_invocation, chart_change_event_1_block2, (statements, 0), range(chart_change_event_1, 3328, 14, 93, 93), "super(source);").
expr(chart_change_event_1_expr3, assignment, chart_change_event_1_stmt3, expression, range(chart_change_event_1, 3352, 18, 94, 94), "this.chart=chart").
expr(chart_change_event_1_expr4, field_access, chart_change_event_1_expr3, left_hand_side, range(chart_change_event_1, 3352, 10, 94, 94), "this.chart").
expr(chart_change_event_1_expr5, this_expression, f_chart_49, expression, range(chart_change_event_1, 3352, 4, 94, 94), "this").
expr(chart_change_event_1_expr6, assignment, chart_change_event_1_stmt4, expression, range(chart_change_event_1, 3381, 16, 95, 95), "this.type=type").
expr(chart_change_event_1_expr7, field_access, chart_change_event_1_expr6, left_hand_side, range(chart_change_event_1, 3381, 9, 95, 95), "this.type").
expr(chart_change_event_1_expr8, this_expression, f_type_50, expression, range(chart_change_event_1, 3381, 4, 95, 95), "this").
expr(chart_change_event_1_expr10, field_access, chart_change_event_1_expr9, left_hand_side, range(chart_change_event_1, 4175, 9, 131, 131), "this.type").
expr(chart_change_event_1_expr11, this_expression, f_type_50, expression, range(chart_change_event_1, 4175, 4, 131, 131), "this").
expr(chart_change_event_1_expr9, assignment, chart_change_event_1_stmt5, expression, range(chart_change_event_1, 4175, 16, 131, 131), "this.type=type").
%rectangle_anchor_1 - org.jfree.chart.util.RectangleAnchor
expr(rectangle_anchor_1_expr1, class_instance_creation, rectangle_anchor_1_code8, initializer, range(rectangle_anchor_1, 2262, 45, 64, 64), "new RectangleAnchor(\"RectangleAnchor.CENTER\")").
expr(rectangle_anchor_1_expr2, class_instance_creation, rectangle_anchor_1_code14, initializer, range(rectangle_anchor_1, 2381, 42, 68, 68), "new RectangleAnchor(\"RectangleAnchor.TOP\")").
expr(rectangle_anchor_1_expr3, class_instance_creation, rectangle_anchor_1_code20, initializer, range(rectangle_anchor_1, 2507, 47, 72, 72), "new RectangleAnchor(\"RectangleAnchor.TOP_LEFT\")").
expr(rectangle_anchor_1_expr4, class_instance_creation, rectangle_anchor_1_code26, initializer, range(rectangle_anchor_1, 2640, 48, 76, 76), "new RectangleAnchor(\"RectangleAnchor.TOP_RIGHT\")").
expr(rectangle_anchor_1_expr5, class_instance_creation, rectangle_anchor_1_code32, initializer, range(rectangle_anchor_1, 2768, 45, 80, 80), "new RectangleAnchor(\"RectangleAnchor.BOTTOM\")").
expr(rectangle_anchor_1_expr6, class_instance_creation, rectangle_anchor_1_code38, initializer, range(rectangle_anchor_1, 2903, 50, 84, 84), "new RectangleAnchor(\"RectangleAnchor.BOTTOM_LEFT\")").
expr(rectangle_anchor_1_expr7, class_instance_creation, rectangle_anchor_1_code44, initializer, range(rectangle_anchor_1, 3045, 51, 88, 88), "new RectangleAnchor(\"RectangleAnchor.BOTTOM_RIGHT\")").
expr(rectangle_anchor_1_expr8, class_instance_creation, rectangle_anchor_1_code50, initializer, range(rectangle_anchor_1, 3172, 43, 92, 92), "new RectangleAnchor(\"RectangleAnchor.LEFT\")").
expr(rectangle_anchor_1_expr9, class_instance_creation, rectangle_anchor_1_code56, initializer, range(rectangle_anchor_1, 3293, 44, 96, 96), "new RectangleAnchor(\"RectangleAnchor.RIGHT\")").
expr(rectangle_anchor_1_expr10, assignment, rectangle_anchor_1_stmt1, expression, range(rectangle_anchor_1, 3525, 16, 107, 107), "this.name=name").
expr(rectangle_anchor_1_expr11, field_access, rectangle_anchor_1_expr10, left_hand_side, range(rectangle_anchor_1, 3525, 9, 107, 107), "this.name").
expr(rectangle_anchor_1_expr12, this_expression, f_name_961, expression, range(rectangle_anchor_1, 3525, 4, 107, 107), "this").
%category_plot_1 - org.jfree.chart.plot.CategoryPlot
expr(category_plot_1_expr1, class_instance_creation, category_plot_1_code8, initializer, range(category_plot_1, 12546, 132, 251, 253), "new BasicStroke(0.5f,BasicStroke.CAP_BUTT,BasicStroke.JOIN_BEVEL,0.0f,new float[]{2.0f,2.0f},0.0f)").
expr(category_plot_1_expr2, array_creation, category_plot_1_expr1, (arguments, 4), range(category_plot_1, 12633, 38, 252, 253), "new float[]{2.0f,2.0f}").
expr(category_plot_1_expr3, class_instance_creation, category_plot_1_code21, initializer, range(category_plot_1, 12893, 51, 259, 260), "new Font(\"SansSerif\",Font.PLAIN,10)").
expr(category_plot_1_expr4, method_invocation, category_plot_1_code39, initializer, range(category_plot_1, 13583, 81, 286, 287), "ResourceBundle.getBundle(\"org.jfree.chart.plot.LocalizationBundle\")").
expr(category_plot_1_expr5, constructor_invocation, category_plot_1_block1, (statements, 0), range(category_plot_1, 18167, 29, 430, 430), "this(null,null,null,null);").
expr(category_plot_1_expr6, super_constructor_invocation, category_plot_1_block2, (statements, 0), range(category_plot_1, 18770, 8, 447, 447), "super();").
expr(category_plot_1_expr9, this_expression, f_orientation_92, expression, range(category_plot_1, 18790, 4, 449, 449), "this").
expr(category_plot_1_expr8, field_access, category_plot_1_expr7, left_hand_side, range(category_plot_1, 18790, 16, 449, 449), "this.orientation").
expr(category_plot_1_expr7, assignment, category_plot_1_stmt3, expression, range(category_plot_1, 18790, 43, 449, 449), "this.orientation=PlotOrientation.VERTICAL").
expr(category_plot_1_expr11, field_access, category_plot_1_expr10, left_hand_side, range(category_plot_1, 18907, 15, 452, 452), "this.domainAxes").
expr(category_plot_1_expr13, this_expression, f_domain_axes_93, expression, range(category_plot_1, 18907, 4, 452, 452), "this").
expr(category_plot_1_expr10, assignment, category_plot_1_stmt4, expression, range(category_plot_1, 18907, 34, 452, 452), "this.domainAxes=new ObjectList()").
expr(category_plot_1_expr12, class_instance_creation, category_plot_1_expr10, right_hand_side, range(category_plot_1, 18925, 16, 452, 452), "new ObjectList()").
expr(category_plot_1_expr14, assignment, category_plot_1_stmt5, expression, range(category_plot_1, 18952, 43, 453, 453), "this.domainAxisLocations=new ObjectList()").
expr(category_plot_1_expr15, field_access, category_plot_1_expr14, left_hand_side, range(category_plot_1, 18952, 24, 453, 453), "this.domainAxisLocations").
expr(category_plot_1_expr17, this_expression, f_domain_axis_locations_94, expression, range(category_plot_1, 18952, 4, 453, 453), "this").
expr(category_plot_1_expr16, class_instance_creation, category_plot_1_expr14, right_hand_side, range(category_plot_1, 18979, 16, 453, 453), "new ObjectList()").
expr(category_plot_1_expr21, this_expression, f_range_axes_95, expression, range(category_plot_1, 19006, 4, 454, 454), "this").
expr(category_plot_1_expr19, field_access, category_plot_1_expr18, left_hand_side, range(category_plot_1, 19006, 14, 454, 454), "this.rangeAxes").
expr(category_plot_1_expr18, assignment, category_plot_1_stmt6, expression, range(category_plot_1, 19006, 33, 454, 454), "this.rangeAxes=new ObjectList()").
expr(category_plot_1_expr20, class_instance_creation, category_plot_1_expr18, right_hand_side, range(category_plot_1, 19023, 16, 454, 454), "new ObjectList()").
expr(category_plot_1_expr22, assignment, category_plot_1_stmt7, expression, range(category_plot_1, 19050, 42, 455, 455), "this.rangeAxisLocations=new ObjectList()").
expr(category_plot_1_expr23, field_access, category_plot_1_expr22, left_hand_side, range(category_plot_1, 19050, 23, 455, 455), "this.rangeAxisLocations").
expr(category_plot_1_expr25, this_expression, f_range_axis_locations_96, expression, range(category_plot_1, 19050, 4, 455, 455), "this").
expr(category_plot_1_expr24, class_instance_creation, category_plot_1_expr22, right_hand_side, range(category_plot_1, 19076, 16, 455, 455), "new ObjectList()").
expr(category_plot_1_expr26, assignment, category_plot_1_stmt8, expression, range(category_plot_1, 19113, 46, 457, 457), "this.datasetToDomainAxisMap=new ObjectList()").
expr(category_plot_1_expr27, field_access, category_plot_1_expr26, left_hand_side, range(category_plot_1, 19113, 27, 457, 457), "this.datasetToDomainAxisMap").
expr(category_plot_1_expr29, this_expression, f_dataset_to_domain_axis_map_97, expression, range(category_plot_1, 19113, 4, 457, 457), "this").
expr(category_plot_1_expr28, class_instance_creation, category_plot_1_expr26, right_hand_side, range(category_plot_1, 19143, 16, 457, 457), "new ObjectList()").
expr(category_plot_1_expr33, this_expression, f_dataset_to_range_axis_map_98, expression, range(category_plot_1, 19170, 4, 458, 458), "this").
expr(category_plot_1_expr30, assignment, category_plot_1_stmt9, expression, range(category_plot_1, 19170, 45, 458, 458), "this.datasetToRangeAxisMap=new ObjectList()").
expr(category_plot_1_expr31, field_access, category_plot_1_expr30, left_hand_side, range(category_plot_1, 19170, 26, 458, 458), "this.datasetToRangeAxisMap").
expr(category_plot_1_expr32, class_instance_creation, category_plot_1_expr30, right_hand_side, range(category_plot_1, 19199, 16, 458, 458), "new ObjectList()").
expr(category_plot_1_expr34, assignment, category_plot_1_stmt10, expression, range(category_plot_1, 19228, 33, 460, 460), "this.renderers=new ObjectList()").
expr(category_plot_1_expr35, field_access, category_plot_1_expr34, left_hand_side, range(category_plot_1, 19228, 14, 460, 460), "this.renderers").
expr(category_plot_1_expr37, this_expression, f_renderers_99, expression, range(category_plot_1, 19228, 4, 460, 460), "this").
expr(category_plot_1_expr36, class_instance_creation, category_plot_1_expr34, right_hand_side, range(category_plot_1, 19245, 16, 460, 460), "new ObjectList()").
expr(category_plot_1_expr41, this_expression, f_datasets_100, expression, range(category_plot_1, 19274, 4, 462, 462), "this").
expr(category_plot_1_expr38, assignment, category_plot_1_stmt11, expression, range(category_plot_1, 19274, 32, 462, 462), "this.datasets=new ObjectList()").
expr(category_plot_1_expr39, field_access, category_plot_1_expr38, left_hand_side, range(category_plot_1, 19274, 13, 462, 462), "this.datasets").
expr(category_plot_1_expr40, class_instance_creation, category_plot_1_expr38, right_hand_side, range(category_plot_1, 19290, 16, 462, 462), "new ObjectList()").
expr(category_plot_1_expr42, method_invocation, category_plot_1_stmt12, expression, range(category_plot_1, 19317, 29, 463, 463), "this.datasets.set(0,dataset)").
expr(category_plot_1_expr43, field_access, category_plot_1_expr42, expression, range(category_plot_1, 19317, 13, 463, 463), "this.datasets").
expr(category_plot_1_expr44, this_expression, f_datasets_100, expression, range(category_plot_1, 19317, 4, 463, 463), "this").
expr(category_plot_1_expr45, infix_expression, category_plot_1_stmt13, expression, range(category_plot_1, 19361, 15, 464, 464), "dataset != null").
expr(category_plot_1_expr46, assignment, category_plot_1_stmt14, expression, range(category_plot_1, 19448, 57, 468, 468), "this.axisOffset=new RectangleInsets(4.0,4.0,4.0,4.0)").
expr(category_plot_1_expr47, field_access, category_plot_1_expr46, left_hand_side, range(category_plot_1, 19448, 15, 468, 468), "this.axisOffset").
expr(category_plot_1_expr49, this_expression, f_axis_offset_101, expression, range(category_plot_1, 19448, 4, 468, 468), "this").
expr(category_plot_1_expr48, class_instance_creation, category_plot_1_expr46, right_hand_side, range(category_plot_1, 19466, 39, 468, 468), "new RectangleInsets(4.0,4.0,4.0,4.0)").
expr(category_plot_1_expr50, method_invocation, category_plot_1_stmt15, expression, range(category_plot_1, 19518, 57, 470, 470), "setDomainAxisLocation(AxisLocation.BOTTOM_OR_LEFT,false)").
expr(category_plot_1_expr51, method_invocation, category_plot_1_stmt16, expression, range(category_plot_1, 19586, 53, 471, 471), "setRangeAxisLocation(AxisLocation.TOP_OR_LEFT,false)").
expr(category_plot_1_expr52, method_invocation, category_plot_1_stmt17, expression, range(category_plot_1, 19652, 31, 473, 473), "this.renderers.set(0,renderer)").
expr(category_plot_1_expr53, field_access, category_plot_1_expr52, expression, range(category_plot_1, 19652, 14, 473, 473), "this.renderers").
expr(category_plot_1_expr54, this_expression, f_renderers_99, expression, range(category_plot_1, 19652, 4, 473, 473), "this").
expr(category_plot_1_expr55, infix_expression, category_plot_1_stmt18, expression, range(category_plot_1, 19698, 16, 474, 474), "renderer != null").
expr(category_plot_1_expr56, method_invocation, category_plot_1_stmt19, expression, range(category_plot_1, 19824, 34, 479, 479), "this.domainAxes.set(0,domainAxis)").
expr(category_plot_1_expr57, field_access, category_plot_1_expr56, expression, range(category_plot_1, 19824, 15, 479, 479), "this.domainAxes").
expr(category_plot_1_expr58, this_expression, f_domain_axes_93, expression, range(category_plot_1, 19824, 4, 479, 479), "this").
expr(category_plot_1_expr60, this_expression, category_plot_1_expr59, expression, range(category_plot_1, 19869, 4, 480, 480), "this").
expr(category_plot_1_expr59, method_invocation, category_plot_1_stmt20, expression, range(category_plot_1, 19869, 33, 480, 480), "this.mapDatasetToDomainAxis(0,0)").
expr(category_plot_1_expr61, infix_expression, category_plot_1_stmt21, expression, range(category_plot_1, 19917, 18, 481, 481), "domainAxis != null").
expr(category_plot_1_expr62, assignment, category_plot_1_stmt22, expression, range(category_plot_1, 20047, 33, 485, 485), "this.drawSharedDomainAxis=false").
expr(category_plot_1_expr63, field_access, category_plot_1_expr62, left_hand_side, range(category_plot_1, 20047, 25, 485, 485), "this.drawSharedDomainAxis").
expr(category_plot_1_expr64, this_expression, f_draw_shared_domain_axis_102, expression, range(category_plot_1, 20047, 4, 485, 485), "this").
expr(category_plot_1_expr65, method_invocation, category_plot_1_stmt23, expression, range(category_plot_1, 20093, 32, 487, 487), "this.rangeAxes.set(0,rangeAxis)").
expr(category_plot_1_expr66, field_access, category_plot_1_expr65, expression, range(category_plot_1, 20093, 14, 487, 487), "this.rangeAxes").
expr(category_plot_1_expr67, this_expression, f_range_axes_95, expression, range(category_plot_1, 20093, 4, 487, 487), "this").
expr(category_plot_1_expr68, method_invocation, category_plot_1_stmt24, expression, range(category_plot_1, 20136, 32, 488, 488), "this.mapDatasetToRangeAxis(0,0)").
expr(category_plot_1_expr69, this_expression, category_plot_1_expr68, expression, range(category_plot_1, 20136, 4, 488, 488), "this").
expr(category_plot_1_expr70, infix_expression, category_plot_1_stmt25, expression, range(category_plot_1, 20183, 17, 489, 489), "rangeAxis != null").
expr(category_plot_1_expr71, method_invocation, category_plot_1_stmt26, expression, range(category_plot_1, 20320, 21, 494, 494), "configureDomainAxes()").
expr(category_plot_1_expr72, method_invocation, category_plot_1_stmt27, expression, range(category_plot_1, 20352, 20, 495, 495), "configureRangeAxes()").
expr(category_plot_1_expr73, assignment, category_plot_1_stmt28, expression, range(category_plot_1, 20385, 62, 497, 497), "this.domainGridlinesVisible=DEFAULT_DOMAIN_GRIDLINES_VISIBLE").
expr(category_plot_1_expr74, field_access, category_plot_1_expr73, left_hand_side, range(category_plot_1, 20385, 27, 497, 497), "this.domainGridlinesVisible").
expr(category_plot_1_expr75, this_expression, f_domain_gridlines_visible_103, expression, range(category_plot_1, 20385, 4, 497, 497), "this").
expr(category_plot_1_expr76, assignment, category_plot_1_stmt29, expression, range(category_plot_1, 20458, 51, 498, 498), "this.domainGridlinePosition=CategoryAnchor.MIDDLE").
expr(category_plot_1_expr77, field_access, category_plot_1_expr76, left_hand_side, range(category_plot_1, 20458, 27, 498, 498), "this.domainGridlinePosition").
expr(category_plot_1_expr78, this_expression, f_domain_gridline_position_105, expression, range(category_plot_1, 20458, 4, 498, 498), "this").
expr(category_plot_1_expr80, field_access, category_plot_1_expr79, left_hand_side, range(category_plot_1, 20520, 25, 499, 499), "this.domainGridlineStroke").
expr(category_plot_1_expr81, this_expression, f_domain_gridline_stroke_106, expression, range(category_plot_1, 20520, 4, 499, 499), "this").
expr(category_plot_1_expr79, assignment, category_plot_1_stmt30, expression, range(category_plot_1, 20520, 51, 499, 499), "this.domainGridlineStroke=DEFAULT_GRIDLINE_STROKE").
expr(category_plot_1_expr82, assignment, category_plot_1_stmt31, expression, range(category_plot_1, 20582, 49, 500, 500), "this.domainGridlinePaint=DEFAULT_GRIDLINE_PAINT").
expr(category_plot_1_expr83, field_access, category_plot_1_expr82, left_hand_side, range(category_plot_1, 20582, 24, 500, 500), "this.domainGridlinePaint").
expr(category_plot_1_expr84, this_expression, f_domain_gridline_paint_107, expression, range(category_plot_1, 20582, 4, 500, 500), "this").
expr(category_plot_1_expr85, assignment, category_plot_1_stmt32, expression, range(category_plot_1, 20644, 60, 502, 502), "this.rangeGridlinesVisible=DEFAULT_RANGE_GRIDLINES_VISIBLE").
expr(category_plot_1_expr86, field_access, category_plot_1_expr85, left_hand_side, range(category_plot_1, 20644, 26, 502, 502), "this.rangeGridlinesVisible").
expr(category_plot_1_expr87, this_expression, f_range_gridlines_visible_108, expression, range(category_plot_1, 20644, 4, 502, 502), "this").
expr(category_plot_1_expr90, this_expression, f_range_gridline_stroke_110, expression, range(category_plot_1, 20715, 4, 503, 503), "this").
expr(category_plot_1_expr88, assignment, category_plot_1_stmt33, expression, range(category_plot_1, 20715, 50, 503, 503), "this.rangeGridlineStroke=DEFAULT_GRIDLINE_STROKE").
expr(category_plot_1_expr89, field_access, category_plot_1_expr88, left_hand_side, range(category_plot_1, 20715, 24, 503, 503), "this.rangeGridlineStroke").
expr(category_plot_1_expr91, assignment, category_plot_1_stmt34, expression, range(category_plot_1, 20776, 48, 504, 504), "this.rangeGridlinePaint=DEFAULT_GRIDLINE_PAINT").
expr(category_plot_1_expr92, field_access, category_plot_1_expr91, left_hand_side, range(category_plot_1, 20776, 23, 504, 504), "this.rangeGridlinePaint").
expr(category_plot_1_expr93, this_expression, f_range_gridline_paint_111, expression, range(category_plot_1, 20776, 4, 504, 504), "this").
expr(category_plot_1_expr94, assignment, category_plot_1_stmt35, expression, range(category_plot_1, 20837, 44, 506, 506), "this.foregroundDomainMarkers=new HashMap()").
expr(category_plot_1_expr95, field_access, category_plot_1_expr94, left_hand_side, range(category_plot_1, 20837, 28, 506, 506), "this.foregroundDomainMarkers").
expr(category_plot_1_expr97, this_expression, f_foreground_domain_markers_112, expression, range(category_plot_1, 20837, 4, 506, 506), "this").
expr(category_plot_1_expr96, class_instance_creation, category_plot_1_expr94, right_hand_side, range(category_plot_1, 20868, 13, 506, 506), "new HashMap()").
expr(category_plot_1_expr99, field_access, category_plot_1_expr98, left_hand_side, range(category_plot_1, 20892, 28, 507, 507), "this.backgroundDomainMarkers").
expr(category_plot_1_expr98, assignment, category_plot_1_stmt36, expression, range(category_plot_1, 20892, 44, 507, 507), "this.backgroundDomainMarkers=new HashMap()").
expr(category_plot_1_expr101, this_expression, f_background_domain_markers_113, expression, range(category_plot_1, 20892, 4, 507, 507), "this").
expr(category_plot_1_expr100, class_instance_creation, category_plot_1_expr98, right_hand_side, range(category_plot_1, 20923, 13, 507, 507), "new HashMap()").
expr(category_plot_1_expr105, this_expression, f_foreground_range_markers_114, expression, range(category_plot_1, 20947, 4, 508, 508), "this").
expr(category_plot_1_expr103, field_access, category_plot_1_expr102, left_hand_side, range(category_plot_1, 20947, 27, 508, 508), "this.foregroundRangeMarkers").
expr(category_plot_1_expr102, assignment, category_plot_1_stmt37, expression, range(category_plot_1, 20947, 43, 508, 508), "this.foregroundRangeMarkers=new HashMap()").
expr(category_plot_1_expr104, class_instance_creation, category_plot_1_expr102, right_hand_side, range(category_plot_1, 20977, 13, 508, 508), "new HashMap()").
expr(category_plot_1_expr109, this_expression, f_background_range_markers_115, expression, range(category_plot_1, 21001, 4, 509, 509), "this").
expr(category_plot_1_expr107, field_access, category_plot_1_expr106, left_hand_side, range(category_plot_1, 21001, 27, 509, 509), "this.backgroundRangeMarkers").
expr(category_plot_1_expr106, assignment, category_plot_1_stmt38, expression, range(category_plot_1, 21001, 43, 509, 509), "this.backgroundRangeMarkers=new HashMap()").
expr(category_plot_1_expr108, class_instance_creation, category_plot_1_expr106, right_hand_side, range(category_plot_1, 21031, 13, 509, 509), "new HashMap()").
expr(category_plot_1_expr110, class_instance_creation, category_plot_1_code72, initializer, range(category_plot_1, 21075, 181, 511, 513), "new ValueMarker(0.0,new Color(0.8f,0.8f,0.8f,0.5f),new BasicStroke(1.0f),new Color(0.85f,0.85f,0.95f,0.5f),new BasicStroke(1.0f),0.6f)").
expr(category_plot_1_expr111, class_instance_creation, category_plot_1_expr110, (arguments, 1), range(category_plot_1, 21096, 51, 511, 512), "new Color(0.8f,0.8f,0.8f,0.5f)").
expr(category_plot_1_expr112, class_instance_creation, category_plot_1_expr110, (arguments, 2), range(category_plot_1, 21149, 21, 512, 512), "new BasicStroke(1.0f)").
expr(category_plot_1_expr113, class_instance_creation, category_plot_1_expr110, (arguments, 3), range(category_plot_1, 21172, 54, 512, 513), "new Color(0.85f,0.85f,0.95f,0.5f)").
expr(category_plot_1_expr114, class_instance_creation, category_plot_1_expr110, (arguments, 4), range(category_plot_1, 21228, 21, 513, 513), "new BasicStroke(1.0f)").
expr(category_plot_1_expr115, method_invocation, category_plot_1_stmt40, expression, range(category_plot_1, 21267, 42, 514, 514), "addRangeMarker(baseline,Layer.BACKGROUND)").
expr(category_plot_1_expr118, this_expression, f_anchor_value_117, expression, range(category_plot_1, 21322, 4, 516, 516), "this").
expr(category_plot_1_expr116, assignment, category_plot_1_stmt41, expression, range(category_plot_1, 21322, 22, 516, 516), "this.anchorValue=0.0").
expr(category_plot_1_expr117, field_access, category_plot_1_expr116, left_hand_side, range(category_plot_1, 21322, 16, 516, 516), "this.anchorValue").
expr(category_plot_1_expr120, field_access, category_plot_1_expr119, left_hand_side, range(category_plot_1, 21357, 26, 518, 518), "this.rangeCrosshairVisible").
expr(category_plot_1_expr121, this_expression, f_range_crosshair_visible_118, expression, range(category_plot_1, 21357, 4, 518, 518), "this").
expr(category_plot_1_expr119, assignment, category_plot_1_stmt42, expression, range(category_plot_1, 21357, 54, 518, 518), "this.rangeCrosshairVisible=DEFAULT_CROSSHAIR_VISIBLE").
expr(category_plot_1_expr123, field_access, category_plot_1_expr122, left_hand_side, range(category_plot_1, 21422, 24, 519, 519), "this.rangeCrosshairValue").
expr(category_plot_1_expr124, this_expression, f_range_crosshair_value_120, expression, range(category_plot_1, 21422, 4, 519, 519), "this").
expr(category_plot_1_expr122, assignment, category_plot_1_stmt43, expression, range(category_plot_1, 21422, 30, 519, 519), "this.rangeCrosshairValue=0.0").
expr(category_plot_1_expr127, this_expression, f_range_crosshair_stroke_121, expression, range(category_plot_1, 21463, 4, 520, 520), "this").
expr(category_plot_1_expr125, assignment, category_plot_1_stmt44, expression, range(category_plot_1, 21463, 52, 520, 520), "this.rangeCrosshairStroke=DEFAULT_CROSSHAIR_STROKE").
expr(category_plot_1_expr126, field_access, category_plot_1_expr125, left_hand_side, range(category_plot_1, 21463, 25, 520, 520), "this.rangeCrosshairStroke").
expr(category_plot_1_expr130, this_expression, f_range_crosshair_paint_122, expression, range(category_plot_1, 21526, 4, 521, 521), "this").
expr(category_plot_1_expr129, field_access, category_plot_1_expr128, left_hand_side, range(category_plot_1, 21526, 24, 521, 521), "this.rangeCrosshairPaint").
expr(category_plot_1_expr128, assignment, category_plot_1_stmt45, expression, range(category_plot_1, 21526, 50, 521, 521), "this.rangeCrosshairPaint=DEFAULT_CROSSHAIR_PAINT").
expr(category_plot_1_expr131, assignment, category_plot_1_stmt46, expression, range(category_plot_1, 21597, 44, 523, 523), "this.annotations=new java.util.ArrayList()").
expr(category_plot_1_expr134, this_expression, f_annotations_123, expression, range(category_plot_1, 21597, 4, 523, 523), "this").
expr(category_plot_1_expr132, field_access, category_plot_1_expr131, left_hand_side, range(category_plot_1, 21597, 16, 523, 523), "this.annotations").
expr(category_plot_1_expr133, class_instance_creation, category_plot_1_expr131, right_hand_side, range(category_plot_1, 21616, 25, 523, 523), "new java.util.ArrayList()").
expr(category_plot_1_expr135, method_invocation, category_plot_1_stmt47, expression, range(category_plot_1, 29038, 42, 767, 767), "setDomainAxisLocation(0,location,notify)").
expr(category_plot_1_expr136, infix_expression, category_plot_1_stmt48, expression, range(category_plot_1, 30106, 30, 800, 800), "index == 0 && location == null").
expr(category_plot_1_expr137, infix_expression, category_plot_1_expr136, left_operand, range(category_plot_1, 30106, 10, 800, 800), "index == 0").
expr(category_plot_1_expr138, infix_expression, category_plot_1_expr136, right_operand, range(category_plot_1, 30120, 16, 800, 800), "location == null").
expr(category_plot_1_expr139, method_invocation, category_plot_1_stmt49, expression, range(category_plot_1, 30277, 45, 804, 804), "this.domainAxisLocations.set(index,location)").
expr(category_plot_1_expr141, this_expression, f_domain_axis_locations_94, expression, range(category_plot_1, 30277, 4, 804, 804), "this").
expr(category_plot_1_expr140, field_access, category_plot_1_expr139, expression, range(category_plot_1, 30277, 24, 804, 804), "this.domainAxisLocations").
expr(category_plot_1_expr142, variable_declaration_expression, category_plot_1_stmt51, (initializers, 0), range(category_plot_1, 32047, 9, 867, 867), "int i=0").
expr(category_plot_1_expr143, infix_expression, category_plot_1_stmt51, expression, range(category_plot_1, 32058, 26, 867, 867), "i < this.domainAxes.size()").
expr(category_plot_1_expr145, field_access, category_plot_1_expr144, expression, range(category_plot_1, 32062, 15, 867, 867), "this.domainAxes").
expr(category_plot_1_expr146, this_expression, f_domain_axes_93, expression, range(category_plot_1, 32062, 4, 867, 867), "this").
expr(category_plot_1_expr144, method_invocation, category_plot_1_expr143, right_operand, range(category_plot_1, 32062, 22, 867, 867), "this.domainAxes.size()").
expr(category_plot_1_expr147, postfix_expression, category_plot_1_stmt51, (updaters, 0), range(category_plot_1, 32086, 3, 867, 867), "i++").
expr(category_plot_1_expr148, cast_expression, category_plot_1_code82, initializer, range(category_plot_1, 32126, 37, 868, 868), "(CategoryAxis)this.domainAxes.get(i)").
expr(category_plot_1_expr150, field_access, category_plot_1_expr149, expression, range(category_plot_1, 32141, 15, 868, 868), "this.domainAxes").
expr(category_plot_1_expr151, this_expression, f_domain_axes_93, expression, range(category_plot_1, 32141, 4, 868, 868), "this").
expr(category_plot_1_expr149, method_invocation, category_plot_1_expr148, expression, range(category_plot_1, 32141, 22, 868, 868), "this.domainAxes.get(i)").
expr(category_plot_1_expr152, infix_expression, category_plot_1_stmt53, expression, range(category_plot_1, 32182, 12, 869, 869), "axis != null").
expr(category_plot_1_expr153, infix_expression, category_plot_1_stmt55, expression, range(category_plot_1, 32877, 29, 895, 895), "index < this.rangeAxes.size()").
expr(category_plot_1_expr156, this_expression, f_range_axes_95, expression, range(category_plot_1, 32885, 4, 895, 895), "this").
expr(category_plot_1_expr154, method_invocation, category_plot_1_expr153, right_operand, range(category_plot_1, 32885, 21, 895, 895), "this.rangeAxes.size()").
expr(category_plot_1_expr155, field_access, category_plot_1_expr154, expression, range(category_plot_1, 32885, 14, 895, 895), "this.rangeAxes").
expr(category_plot_1_expr157, assignment, category_plot_1_stmt56, expression, range(category_plot_1, 32923, 46, 896, 896), "result=(ValueAxis)this.rangeAxes.get(index)").
expr(category_plot_1_expr158, cast_expression, category_plot_1_expr157, right_hand_side, range(category_plot_1, 32932, 37, 896, 896), "(ValueAxis)this.rangeAxes.get(index)").
expr(category_plot_1_expr159, method_invocation, category_plot_1_expr158, expression, range(category_plot_1, 32944, 25, 896, 896), "this.rangeAxes.get(index)").
expr(category_plot_1_expr161, this_expression, f_range_axes_95, expression, range(category_plot_1, 32944, 4, 896, 896), "this").
expr(category_plot_1_expr160, field_access, category_plot_1_expr159, expression, range(category_plot_1, 32944, 14, 896, 896), "this.rangeAxes").
expr(category_plot_1_expr162, infix_expression, category_plot_1_stmt57, expression, range(category_plot_1, 32995, 14, 898, 898), "result == null").
expr(category_plot_1_expr163, method_invocation, category_plot_1_code89, initializer, range(category_plot_1, 33040, 11, 899, 899), "getParent()").
expr(category_plot_1_expr164, instanceof_expression, category_plot_1_stmt59, expression, range(category_plot_1, 33070, 30, 900, 900), "parent instanceof CategoryPlot").
expr(category_plot_1_expr165, method_invocation, category_plot_1_stmt61, expression, range(category_plot_1, 37754, 41, 1051, 1051), "setRangeAxisLocation(0,location,notify)").
expr(category_plot_1_expr167, infix_expression, category_plot_1_expr166, left_operand, range(category_plot_1, 38791, 10, 1081, 1081), "index == 0").
expr(category_plot_1_expr166, infix_expression, category_plot_1_stmt62, expression, range(category_plot_1, 38791, 30, 1081, 1081), "index == 0 && location == null").
expr(category_plot_1_expr168, infix_expression, category_plot_1_expr166, right_operand, range(category_plot_1, 38805, 16, 1081, 1081), "location == null").
expr(category_plot_1_expr170, field_access, category_plot_1_expr169, expression, range(category_plot_1, 38962, 23, 1085, 1085), "this.rangeAxisLocations").
expr(category_plot_1_expr171, this_expression, f_range_axis_locations_96, expression, range(category_plot_1, 38962, 4, 1085, 1085), "this").
expr(category_plot_1_expr169, method_invocation, category_plot_1_stmt63, expression, range(category_plot_1, 38962, 44, 1085, 1085), "this.rangeAxisLocations.set(index,location)").
expr(category_plot_1_expr172, variable_declaration_expression, category_plot_1_stmt65, (initializers, 0), range(category_plot_1, 40598, 9, 1145, 1145), "int i=0").
expr(category_plot_1_expr173, infix_expression, category_plot_1_stmt65, expression, range(category_plot_1, 40609, 25, 1145, 1145), "i < this.rangeAxes.size()").
expr(category_plot_1_expr174, method_invocation, category_plot_1_expr173, right_operand, range(category_plot_1, 40613, 21, 1145, 1145), "this.rangeAxes.size()").
expr(category_plot_1_expr175, field_access, category_plot_1_expr174, expression, range(category_plot_1, 40613, 14, 1145, 1145), "this.rangeAxes").
expr(category_plot_1_expr176, this_expression, f_range_axes_95, expression, range(category_plot_1, 40613, 4, 1145, 1145), "this").
expr(category_plot_1_expr177, postfix_expression, category_plot_1_stmt65, (updaters, 0), range(category_plot_1, 40636, 3, 1145, 1145), "i++").
expr(category_plot_1_expr178, cast_expression, category_plot_1_code97, initializer, range(category_plot_1, 40673, 33, 1146, 1146), "(ValueAxis)this.rangeAxes.get(i)").
expr(category_plot_1_expr179, method_invocation, category_plot_1_expr178, expression, range(category_plot_1, 40685, 21, 1146, 1146), "this.rangeAxes.get(i)").
expr(category_plot_1_expr181, this_expression, f_range_axes_95, expression, range(category_plot_1, 40685, 4, 1146, 1146), "this").
expr(category_plot_1_expr180, field_access, category_plot_1_expr179, expression, range(category_plot_1, 40685, 14, 1146, 1146), "this.rangeAxes").
expr(category_plot_1_expr182, infix_expression, category_plot_1_stmt67, expression, range(category_plot_1, 40725, 12, 1147, 1147), "axis != null").
expr(category_plot_1_expr185, field_access, category_plot_1_expr184, expression, range(category_plot_1, 41429, 13, 1175, 1175), "this.datasets").
expr(category_plot_1_expr186, this_expression, f_datasets_100, expression, range(category_plot_1, 41429, 4, 1175, 1175), "this").
expr(category_plot_1_expr183, infix_expression, category_plot_1_stmt69, expression, range(category_plot_1, 41429, 28, 1175, 1175), "this.datasets.size() > index").
expr(category_plot_1_expr184, method_invocation, category_plot_1_expr183, left_operand, range(category_plot_1, 41429, 20, 1175, 1175), "this.datasets.size()").
expr(category_plot_1_expr187, assignment, category_plot_1_stmt70, expression, range(category_plot_1, 41474, 51, 1176, 1176), "result=(CategoryDataset)this.datasets.get(index)").
expr(category_plot_1_expr188, cast_expression, category_plot_1_expr187, right_hand_side, range(category_plot_1, 41483, 42, 1176, 1176), "(CategoryDataset)this.datasets.get(index)").
expr(category_plot_1_expr190, field_access, category_plot_1_expr189, expression, range(category_plot_1, 41501, 13, 1176, 1176), "this.datasets").
expr(category_plot_1_expr191, this_expression, f_datasets_100, expression, range(category_plot_1, 41501, 4, 1176, 1176), "this").
expr(category_plot_1_expr189, method_invocation, category_plot_1_expr188, expression, range(category_plot_1, 41501, 24, 1176, 1176), "this.datasets.get(index)").
expr(category_plot_1_expr194, field_access, category_plot_1_expr192, expression, range(category_plot_1, 43425, 27, 1241, 1241), "this.datasetToDomainAxisMap").
expr(category_plot_1_expr195, this_expression, f_dataset_to_domain_axis_map_97, expression, range(category_plot_1, 43425, 4, 1241, 1241), "this").
expr(category_plot_1_expr192, method_invocation, category_plot_1_stmt72, expression, range(category_plot_1, 43425, 62, 1241, 1241), "this.datasetToDomainAxisMap.set(index,new Integer(axisIndex))").
expr(category_plot_1_expr193, class_instance_creation, category_plot_1_expr192, (arguments, 1), range(category_plot_1, 43464, 22, 1241, 1241), "new Integer(axisIndex)").
expr(category_plot_1_expr196, method_invocation, category_plot_1_stmt73, expression, range(category_plot_1, 43558, 63, 1243, 1243), "datasetChanged(new DatasetChangeEvent(this,getDataset(index)))").
expr(category_plot_1_expr197, class_instance_creation, category_plot_1_expr196, (arguments, 0), range(category_plot_1, 43573, 47, 1243, 1243), "new DatasetChangeEvent(this,getDataset(index))").
expr(category_plot_1_expr198, this_expression, category_plot_1_expr197, (arguments, 0), range(category_plot_1, 43596, 4, 1243, 1243), "this").
expr(category_plot_1_expr199, method_invocation, category_plot_1_expr197, (arguments, 1), range(category_plot_1, 43602, 17, 1243, 1243), "getDataset(index)").
expr(category_plot_1_expr202, field_access, category_plot_1_expr200, expression, range(category_plot_1, 44603, 26, 1274, 1274), "this.datasetToRangeAxisMap").
expr(category_plot_1_expr203, this_expression, f_dataset_to_range_axis_map_98, expression, range(category_plot_1, 44603, 4, 1274, 1274), "this").
expr(category_plot_1_expr200, method_invocation, category_plot_1_stmt74, expression, range(category_plot_1, 44603, 61, 1274, 1274), "this.datasetToRangeAxisMap.set(index,new Integer(axisIndex))").
expr(category_plot_1_expr201, class_instance_creation, category_plot_1_expr200, (arguments, 1), range(category_plot_1, 44641, 22, 1274, 1274), "new Integer(axisIndex)").
expr(category_plot_1_expr204, method_invocation, category_plot_1_stmt75, expression, range(category_plot_1, 44733, 63, 1276, 1276), "datasetChanged(new DatasetChangeEvent(this,getDataset(index)))").
expr(category_plot_1_expr205, class_instance_creation, category_plot_1_expr204, (arguments, 0), range(category_plot_1, 44748, 47, 1276, 1276), "new DatasetChangeEvent(this,getDataset(index))").
expr(category_plot_1_expr206, this_expression, category_plot_1_expr205, (arguments, 0), range(category_plot_1, 44771, 4, 1276, 1276), "this").
expr(category_plot_1_expr207, method_invocation, category_plot_1_expr205, (arguments, 1), range(category_plot_1, 44777, 17, 1276, 1276), "getDataset(index)").
expr(category_plot_1_expr210, this_expression, f_range_axes_95, expression, range(category_plot_1, 64057, 4, 1855, 1855), "this").
expr(category_plot_1_expr208, method_invocation, category_plot_1_code111, initializer, range(category_plot_1, 64057, 21, 1855, 1855), "this.rangeAxes.size()").
expr(category_plot_1_expr209, field_access, category_plot_1_expr208, expression, range(category_plot_1, 64057, 14, 1855, 1855), "this.rangeAxes").
expr(category_plot_1_expr211, variable_declaration_expression, category_plot_1_stmt77, (initializers, 0), range(category_plot_1, 64094, 17, 1856, 1856), "int axisIndex=0").
expr(category_plot_1_expr212, infix_expression, category_plot_1_stmt77, expression, range(category_plot_1, 64113, 17, 1856, 1856), "axisIndex < count").
expr(category_plot_1_expr213, postfix_expression, category_plot_1_stmt77, (updaters, 0), range(category_plot_1, 64132, 11, 1856, 1856), "axisIndex++").
expr(category_plot_1_expr214, method_invocation, category_plot_1_code115, initializer, range(category_plot_1, 64178, 23, 1857, 1857), "getRangeAxis(axisIndex)").
expr(category_plot_1_expr215, infix_expression, category_plot_1_stmt79, expression, range(category_plot_1, 64220, 13, 1858, 1858), "yAxis != null").
expr(category_plot_1_expr217, method_invocation, category_plot_1_expr216, left_operand, range(category_plot_1, 64312, 11, 1862, 1862), "getParent()").
expr(category_plot_1_expr216, infix_expression, category_plot_1_stmt80, expression, range(category_plot_1, 64312, 19, 1862, 1862), "getParent() != null").
expr(category_plot_1_expr218, class_instance_creation, category_plot_1_code117, initializer, range(category_plot_1, 64443, 25, 1866, 1866), "new PlotChangeEvent(this)").
expr(category_plot_1_expr219, this_expression, category_plot_1_expr218, (arguments, 0), range(category_plot_1, 64463, 4, 1866, 1866), "this").
expr(category_plot_1_expr220, method_invocation, category_plot_1_stmt82, expression, range(category_plot_1, 64483, 47, 1867, 1867), "e.setType(ChartChangeEventType.DATASET_UPDATED)").
expr(category_plot_1_expr221, method_invocation, category_plot_1_stmt83, expression, range(category_plot_1, 64545, 18, 1868, 1868), "notifyListeners(e)").
expr(category_plot_1_expr222, method_invocation, category_plot_1_stmt84, expression, range(category_plot_1, 73333, 44, 2106, 2106), "removeDomainMarker(marker,Layer.FOREGROUND)").
expr(category_plot_1_expr223, method_invocation, category_plot_1_stmt85, expression, range(category_plot_1, 73906, 36, 2122, 2122), "removeDomainMarker(0,marker,layer)").
expr(category_plot_1_expr224, method_invocation, category_plot_1_stmt86, expression, range(category_plot_1, 74483, 46, 2139, 2139), "removeDomainMarker(index,marker,layer,true)").
expr(category_plot_1_expr225, infix_expression, category_plot_1_stmt87, expression, range(category_plot_1, 75138, 25, 2158, 2158), "layer == Layer.FOREGROUND").
expr(category_plot_1_expr226, assignment, category_plot_1_stmt88, expression, range(category_plot_1, 75180, 96, 2159, 2160), "markers=(ArrayList)this.foregroundDomainMarkers.get(new Integer(index))").
expr(category_plot_1_expr227, cast_expression, category_plot_1_expr226, right_hand_side, range(category_plot_1, 75190, 86, 2159, 2160), "(ArrayList)this.foregroundDomainMarkers.get(new Integer(index))").
expr(category_plot_1_expr230, field_access, category_plot_1_expr228, expression, range(category_plot_1, 75202, 28, 2159, 2159), "this.foregroundDomainMarkers").
expr(category_plot_1_expr231, this_expression, f_foreground_domain_markers_112, expression, range(category_plot_1, 75202, 4, 2159, 2159), "this").
expr(category_plot_1_expr228, method_invocation, category_plot_1_expr227, expression, range(category_plot_1, 75202, 74, 2159, 2160), "this.foregroundDomainMarkers.get(new Integer(index))").
expr(category_plot_1_expr229, class_instance_creation, category_plot_1_expr228, (arguments, 0), range(category_plot_1, 75235, 40, 2159, 2160), "new Integer(index)").
expr(category_plot_1_expr232, method_invocation, category_plot_1_code126, initializer, range(category_plot_1, 75454, 22, 2166, 2166), "markers.remove(marker)").
expr(category_plot_1_expr233, method_invocation, category_plot_1_stmt90, expression, range(category_plot_1, 76800, 32, 2200, 2200), "addRangeMarker(0,marker,layer)").
expr(category_plot_1_expr234, method_invocation, category_plot_1_stmt91, expression, range(category_plot_1, 77415, 42, 2217, 2217), "addRangeMarker(index,marker,layer,true)").
expr(category_plot_1_expr235, infix_expression, category_plot_1_stmt92, expression, range(category_plot_1, 78180, 25, 2239, 2239), "layer == Layer.FOREGROUND").
expr(category_plot_1_expr236, infix_expression, category_plot_1_stmt93, expression, range(category_plot_1, 78567, 25, 2248, 2248), "layer == Layer.BACKGROUND").
expr(category_plot_1_expr237, assignment, category_plot_1_stmt94, expression, range(category_plot_1, 78609, 96, 2249, 2250), "markers=(Collection)this.backgroundRangeMarkers.get(new Integer(index))").
expr(category_plot_1_expr238, cast_expression, category_plot_1_expr237, right_hand_side, range(category_plot_1, 78619, 86, 2249, 2250), "(Collection)this.backgroundRangeMarkers.get(new Integer(index))").
expr(category_plot_1_expr241, field_access, category_plot_1_expr239, expression, range(category_plot_1, 78632, 27, 2249, 2249), "this.backgroundRangeMarkers").
expr(category_plot_1_expr242, this_expression, f_background_range_markers_115, expression, range(category_plot_1, 78632, 4, 2249, 2249), "this").
expr(category_plot_1_expr239, method_invocation, category_plot_1_expr238, expression, range(category_plot_1, 78632, 73, 2249, 2250), "this.backgroundRangeMarkers.get(new Integer(index))").
expr(category_plot_1_expr240, class_instance_creation, category_plot_1_expr239, (arguments, 0), range(category_plot_1, 78686, 18, 2250, 2250), "new Integer(index)").
expr(category_plot_1_expr243, infix_expression, category_plot_1_stmt95, expression, range(category_plot_1, 78724, 15, 2251, 2251), "markers == null").
expr(category_plot_1_expr244, assignment, category_plot_1_stmt96, expression, range(category_plot_1, 78760, 35, 2252, 2252), "markers=new java.util.ArrayList()").
expr(category_plot_1_expr245, class_instance_creation, category_plot_1_expr244, right_hand_side, range(category_plot_1, 78770, 25, 2252, 2252), "new java.util.ArrayList()").
expr(category_plot_1_expr248, field_access, category_plot_1_expr246, expression, range(category_plot_1, 78814, 27, 2253, 2253), "this.backgroundRangeMarkers").
expr(category_plot_1_expr249, this_expression, f_background_range_markers_115, expression, range(category_plot_1, 78814, 4, 2253, 2253), "this").
expr(category_plot_1_expr246, method_invocation, category_plot_1_stmt97, expression, range(category_plot_1, 78814, 60, 2253, 2253), "this.backgroundRangeMarkers.put(new Integer(index),markers)").
expr(category_plot_1_expr247, class_instance_creation, category_plot_1_expr246, (arguments, 0), range(category_plot_1, 78846, 18, 2253, 2253), "new Integer(index)").
expr(category_plot_1_expr250, method_invocation, category_plot_1_stmt98, expression, range(category_plot_1, 78904, 19, 2255, 2255), "markers.add(marker)").
expr(category_plot_1_expr251, method_invocation, category_plot_1_stmt99, expression, range(category_plot_1, 78957, 30, 2257, 2257), "marker.addChangeListener(this)").
expr(category_plot_1_expr252, this_expression, category_plot_1_expr251, (arguments, 0), range(category_plot_1, 78982, 4, 2257, 2257), "this").
expr(category_plot_1_expr253, method_invocation, category_plot_1_stmt101, expression, range(category_plot_1, 79025, 17, 2259, 2259), "fireChangeEvent()").
expr(category_plot_1_expr254, method_invocation, category_plot_1_stmt102, expression, range(category_plot_1, 83013, 43, 2378, 2378), "removeRangeMarker(marker,Layer.FOREGROUND)").
expr(category_plot_1_expr255, method_invocation, category_plot_1_stmt103, expression, range(category_plot_1, 83636, 35, 2396, 2396), "removeRangeMarker(0,marker,layer)").
expr(category_plot_1_expr256, method_invocation, category_plot_1_stmt104, expression, range(category_plot_1, 84269, 45, 2415, 2415), "removeRangeMarker(index,marker,layer,true)").
expr(category_plot_1_expr257, infix_expression, category_plot_1_stmt105, expression, range(category_plot_1, 84989, 14, 2436, 2436), "marker == null").
expr(category_plot_1_expr258, infix_expression, category_plot_1_stmt106, expression, range(category_plot_1, 85135, 25, 2440, 2440), "layer == Layer.FOREGROUND").
expr(category_plot_1_expr259, assignment, category_plot_1_stmt107, expression, range(category_plot_1, 85177, 95, 2441, 2442), "markers=(ArrayList)this.foregroundRangeMarkers.get(new Integer(index))").
expr(category_plot_1_expr260, cast_expression, category_plot_1_expr259, right_hand_side, range(category_plot_1, 85187, 85, 2441, 2442), "(ArrayList)this.foregroundRangeMarkers.get(new Integer(index))").
expr(category_plot_1_expr263, field_access, category_plot_1_expr261, expression, range(category_plot_1, 85199, 27, 2441, 2441), "this.foregroundRangeMarkers").
expr(category_plot_1_expr261, method_invocation, category_plot_1_expr260, expression, range(category_plot_1, 85199, 73, 2441, 2442), "this.foregroundRangeMarkers.get(new Integer(index))").
expr(category_plot_1_expr264, this_expression, f_foreground_range_markers_114, expression, range(category_plot_1, 85199, 4, 2441, 2441), "this").
expr(category_plot_1_expr262, class_instance_creation, category_plot_1_expr261, (arguments, 0), range(category_plot_1, 85231, 40, 2441, 2442), "new Integer(index)").
expr(category_plot_1_expr265, method_invocation, category_plot_1_code140, initializer, range(category_plot_1, 85449, 22, 2448, 2448), "markers.remove(marker)").
%object_list_1 - org.jfree.chart.util.ObjectList
expr(object_list_1_expr1, super_method_invocation, object_list_1_stmt1, expression, range(object_list_1, 2951, 16, 85, 85), "super.get(index)").
expr(object_list_1_expr2, super_method_invocation, object_list_1_stmt2, expression, range(object_list_1, 3296, 24, 95, 95), "super.set(index,object)").
%plot_orientation_1 - org.jfree.chart.plot.PlotOrientation
expr(plot_orientation_1_expr1, class_instance_creation, plot_orientation_1_code8, initializer, range(plot_orientation_1, 2128, 49, 58, 58), "new PlotOrientation(\"PlotOrientation.HORIZONTAL\")").
expr(plot_orientation_1_expr2, class_instance_creation, plot_orientation_1_code14, initializer, range(plot_orientation_1, 2303, 47, 62, 62), "new PlotOrientation(\"PlotOrientation.VERTICAL\")").
expr(plot_orientation_1_expr3, assignment, plot_orientation_1_stmt1, expression, range(plot_orientation_1, 2543, 16, 73, 73), "this.name=name").
expr(plot_orientation_1_expr5, this_expression, f_name_547, expression, range(plot_orientation_1, 2543, 4, 73, 73), "this").
expr(plot_orientation_1_expr4, field_access, plot_orientation_1_expr3, left_hand_side, range(plot_orientation_1, 2543, 9, 73, 73), "this.name").
%chart_color_1 - org.jfree.chart.ChartColor
expr(chart_color_1_expr1, class_instance_creation, chart_color_1_code8, initializer, range(chart_color_1, 2286, 27, 59, 59), "new Color(0x80,0x00,0x00)").
expr(chart_color_1_expr2, class_instance_creation, chart_color_1_code15, initializer, range(chart_color_1, 2389, 27, 62, 62), "new Color(0xc0,0x00,0x00)").
expr(chart_color_1_expr3, class_instance_creation, chart_color_1_code22, initializer, range(chart_color_1, 2494, 27, 65, 65), "new Color(0xFF,0x40,0x40)").
expr(chart_color_1_expr4, class_instance_creation, chart_color_1_code29, initializer, range(chart_color_1, 2609, 27, 68, 68), "new Color(0xFF,0x80,0x80)").
expr(chart_color_1_expr5, class_instance_creation, chart_color_1_code36, initializer, range(chart_color_1, 2728, 27, 71, 71), "new Color(0x80,0x80,0x00)").
expr(chart_color_1_expr6, class_instance_creation, chart_color_1_code43, initializer, range(chart_color_1, 2837, 27, 74, 74), "new Color(0xC0,0xC0,0x00)").
expr(chart_color_1_expr7, class_instance_creation, chart_color_1_code50, initializer, range(chart_color_1, 2948, 27, 77, 77), "new Color(0xFF,0xFF,0x40)").
expr(chart_color_1_expr8, class_instance_creation, chart_color_1_code57, initializer, range(chart_color_1, 3069, 27, 80, 80), "new Color(0xFF,0xFF,0x80)").
expr(chart_color_1_expr9, class_instance_creation, chart_color_1_code64, initializer, range(chart_color_1, 3186, 27, 83, 83), "new Color(0x00,0x80,0x00)").
expr(chart_color_1_expr10, class_instance_creation, chart_color_1_code71, initializer, range(chart_color_1, 3293, 27, 86, 86), "new Color(0x00,0xC0,0x00)").
expr(chart_color_1_expr11, class_instance_creation, chart_color_1_code78, initializer, range(chart_color_1, 3402, 27, 89, 89), "new Color(0x40,0xFF,0x40)").
expr(chart_color_1_expr12, class_instance_creation, chart_color_1_code85, initializer, range(chart_color_1, 3521, 27, 92, 92), "new Color(0x80,0xFF,0x80)").
expr(chart_color_1_expr13, class_instance_creation, chart_color_1_code92, initializer, range(chart_color_1, 3636, 27, 95, 95), "new Color(0x00,0x80,0x80)").
expr(chart_color_1_expr14, class_instance_creation, chart_color_1_code99, initializer, range(chart_color_1, 3741, 27, 98, 98), "new Color(0x00,0xC0,0xC0)").
expr(chart_color_1_expr15, class_instance_creation, chart_color_1_code106, initializer, range(chart_color_1, 3848, 27, 101, 101), "new Color(0x40,0xFF,0xFF)").
expr(chart_color_1_expr16, class_instance_creation, chart_color_1_code113, initializer, range(chart_color_1, 3966, 27, 104, 104), "new Color(0x80,0xFF,0xFF)").
expr(chart_color_1_expr17, class_instance_creation, chart_color_1_code120, initializer, range(chart_color_1, 4081, 27, 107, 107), "new Color(0x00,0x00,0x80)").
expr(chart_color_1_expr18, class_instance_creation, chart_color_1_code127, initializer, range(chart_color_1, 4186, 27, 110, 110), "new Color(0x00,0x00,0xC0)").
expr(chart_color_1_expr19, class_instance_creation, chart_color_1_code134, initializer, range(chart_color_1, 4293, 27, 113, 113), "new Color(0x40,0x40,0xFF)").
expr(chart_color_1_expr20, class_instance_creation, chart_color_1_code141, initializer, range(chart_color_1, 4410, 27, 116, 116), "new Color(0x80,0x80,0xFF)").
expr(chart_color_1_expr21, class_instance_creation, chart_color_1_code148, initializer, range(chart_color_1, 4538, 27, 119, 119), "new Color(0x80,0x00,0x80)").
expr(chart_color_1_expr22, class_instance_creation, chart_color_1_code155, initializer, range(chart_color_1, 4649, 27, 122, 122), "new Color(0xC0,0x00,0xC0)").
expr(chart_color_1_expr23, class_instance_creation, chart_color_1_code162, initializer, range(chart_color_1, 4762, 27, 125, 125), "new Color(0xFF,0x40,0xFF)").
expr(chart_color_1_expr24, class_instance_creation, chart_color_1_code169, initializer, range(chart_color_1, 4885, 27, 128, 128), "new Color(0xFF,0x80,0xFF)").
expr(chart_color_1_expr25, array_creation, chart_color_1_stmt1, expression, range(chart_color_1, 5661, 1316, 151, 186), "new Paint[]{new Color(0xFF,0x55,0x55),new Color(0x55,0x55,0xFF),new Color(0x55,0xFF,0x55),new Color(0xFF,0xFF,0x55),new Color(0xFF,0x55,0xFF),new Color(0x55,0xFF,0xFF),Color.pink,Color.gray,ChartColor.DARK_RED,ChartColor.DARK_BLUE,ChartColor.DARK_GREEN,ChartColor.DARK_YELLOW,ChartColor.DARK_MAGENTA,ChartColor.DARK_CYAN,Color.darkGray,ChartColor.LIGHT_RED,ChartColor.LIGHT_BLUE,ChartColor.LIGHT_GREEN,ChartColor.LIGHT_YELLOW,ChartColor.LIGHT_MAGENTA,ChartColor.LIGHT_CYAN,Color.lightGray,ChartColor.VERY_DARK_RED,ChartColor.VERY_DARK_BLUE,ChartColor.VERY_DARK_GREEN,ChartColor.VERY_DARK_YELLOW,ChartColor.VERY_DARK_MAGENTA,ChartColor.VERY_DARK_CYAN,ChartColor.VERY_LIGHT_RED,ChartColor.VERY_LIGHT_BLUE,ChartColor.VERY_LIGHT_GREEN,ChartColor.VERY_LIGHT_YELLOW,ChartColor.VERY_LIGHT_MAGENTA,ChartColor.VERY_LIGHT_CYAN}").
expr(chart_color_1_expr26, array_initializer, chart_color_1_expr25, initializer, range(chart_color_1, 5673, 1304, 151, 186), "{new Color(0xFF,0x55,0x55),new Color(0x55,0x55,0xFF),new Color(0x55,0xFF,0x55),new Color(0xFF,0xFF,0x55),new Color(0xFF,0x55,0xFF),new Color(0x55,0xFF,0xFF),Color.pink,Color.gray,ChartColor.DARK_RED,ChartColor.DARK_BLUE,ChartColor.DARK_GREEN,ChartColor.DARK_YELLOW,ChartColor.DARK_MAGENTA,ChartColor.DARK_CYAN,Color.darkGray,ChartColor.LIGHT_RED,ChartColor.LIGHT_BLUE,ChartColor.LIGHT_GREEN,ChartColor.LIGHT_YELLOW,ChartColor.LIGHT_MAGENTA,ChartColor.LIGHT_CYAN,Color.lightGray,ChartColor.VERY_DARK_RED,ChartColor.VERY_DARK_BLUE,ChartColor.VERY_DARK_GREEN,ChartColor.VERY_DARK_YELLOW,ChartColor.VERY_DARK_MAGENTA,ChartColor.VERY_DARK_CYAN,ChartColor.VERY_LIGHT_RED,ChartColor.VERY_LIGHT_BLUE,ChartColor.VERY_LIGHT_GREEN,ChartColor.VERY_LIGHT_YELLOW,ChartColor.VERY_LIGHT_MAGENTA,ChartColor.VERY_LIGHT_CYAN}").
%default_drawing_supplier_1 - org.jfree.chart.plot.DefaultDrawingSupplier
expr(default_drawing_supplier_1_expr1, method_invocation, default_drawing_supplier_1_code10, initializer, range(default_drawing_supplier_1, 3222, 36, 84, 84), "ChartColor.createDefaultPaintArray()").
expr(default_drawing_supplier_1_expr2, array_creation, default_drawing_supplier_1_code18, initializer, range(default_drawing_supplier_1, 3376, 43, 87, 88), "new Paint[]{Color.lightGray}").
expr(default_drawing_supplier_1_expr3, array_initializer, default_drawing_supplier_1_expr2, initializer, range(default_drawing_supplier_1, 3388, 31, 87, 88), "{Color.lightGray}").
expr(default_drawing_supplier_1_expr4, array_creation, default_drawing_supplier_1_code29, initializer, range(default_drawing_supplier_1, 3531, 39, 91, 92), "new Paint[]{Color.white}").
expr(default_drawing_supplier_1_expr5, array_initializer, default_drawing_supplier_1_expr4, initializer, range(default_drawing_supplier_1, 3543, 27, 91, 92), "{Color.white}").
expr(default_drawing_supplier_1_expr6, array_creation, default_drawing_supplier_1_code40, initializer, range(default_drawing_supplier_1, 3675, 120, 95, 97), "new Stroke[]{new BasicStroke(1.0f,BasicStroke.CAP_SQUARE,BasicStroke.JOIN_BEVEL)}").
expr(default_drawing_supplier_1_expr7, array_initializer, default_drawing_supplier_1_expr6, initializer, range(default_drawing_supplier_1, 3688, 107, 95, 97), "{new BasicStroke(1.0f,BasicStroke.CAP_SQUARE,BasicStroke.JOIN_BEVEL)}").
expr(default_drawing_supplier_1_expr8, array_creation, default_drawing_supplier_1_code51, initializer, range(default_drawing_supplier_1, 3930, 106, 101, 102), "new Stroke[]{new BasicStroke(1.0f,BasicStroke.CAP_SQUARE,BasicStroke.JOIN_BEVEL)}").
expr(default_drawing_supplier_1_expr9, method_invocation, default_drawing_supplier_1_code59, initializer, range(default_drawing_supplier_1, 4152, 28, 106, 106), "createStandardSeriesShapes()").
expr(default_drawing_supplier_1_expr10, constructor_invocation, default_drawing_supplier_1_block1, (statements, 0), range(default_drawing_supplier_1, 5342, 228, 150, 154), "this(DEFAULT_PAINT_SEQUENCE,DEFAULT_FILL_PAINT_SEQUENCE,DEFAULT_OUTLINE_PAINT_SEQUENCE,DEFAULT_STROKE_SEQUENCE,DEFAULT_OUTLINE_STROKE_SEQUENCE,DEFAULT_SHAPE_SEQUENCE);").
expr(default_drawing_supplier_1_expr11, assignment, default_drawing_supplier_1_stmt2, expression, range(default_drawing_supplier_1, 7251, 34, 199, 199), "this.paintSequence=paintSequence").
expr(default_drawing_supplier_1_expr13, this_expression, f_paint_sequence_393, expression, range(default_drawing_supplier_1, 7251, 4, 199, 199), "this").
expr(default_drawing_supplier_1_expr12, field_access, default_drawing_supplier_1_expr11, left_hand_side, range(default_drawing_supplier_1, 7251, 18, 199, 199), "this.paintSequence").
expr(default_drawing_supplier_1_expr16, this_expression, f_fill_paint_sequence_394, expression, range(default_drawing_supplier_1, 7296, 4, 200, 200), "this").
expr(default_drawing_supplier_1_expr15, field_access, default_drawing_supplier_1_expr14, left_hand_side, range(default_drawing_supplier_1, 7296, 22, 200, 200), "this.fillPaintSequence").
expr(default_drawing_supplier_1_expr14, assignment, default_drawing_supplier_1_stmt3, expression, range(default_drawing_supplier_1, 7296, 42, 200, 200), "this.fillPaintSequence=fillPaintSequence").
expr(default_drawing_supplier_1_expr17, assignment, default_drawing_supplier_1_stmt4, expression, range(default_drawing_supplier_1, 7349, 48, 201, 201), "this.outlinePaintSequence=outlinePaintSequence").
expr(default_drawing_supplier_1_expr19, this_expression, f_outline_paint_sequence_395, expression, range(default_drawing_supplier_1, 7349, 4, 201, 201), "this").
expr(default_drawing_supplier_1_expr18, field_access, default_drawing_supplier_1_expr17, left_hand_side, range(default_drawing_supplier_1, 7349, 25, 201, 201), "this.outlinePaintSequence").
expr(default_drawing_supplier_1_expr20, assignment, default_drawing_supplier_1_stmt5, expression, range(default_drawing_supplier_1, 7408, 36, 202, 202), "this.strokeSequence=strokeSequence").
expr(default_drawing_supplier_1_expr22, this_expression, f_stroke_sequence_396, expression, range(default_drawing_supplier_1, 7408, 4, 202, 202), "this").
expr(default_drawing_supplier_1_expr21, field_access, default_drawing_supplier_1_expr20, left_hand_side, range(default_drawing_supplier_1, 7408, 19, 202, 202), "this.strokeSequence").
expr(default_drawing_supplier_1_expr24, field_access, default_drawing_supplier_1_expr23, left_hand_side, range(default_drawing_supplier_1, 7455, 26, 203, 203), "this.outlineStrokeSequence").
expr(default_drawing_supplier_1_expr23, assignment, default_drawing_supplier_1_stmt6, expression, range(default_drawing_supplier_1, 7455, 50, 203, 203), "this.outlineStrokeSequence=outlineStrokeSequence").
expr(default_drawing_supplier_1_expr25, this_expression, f_outline_stroke_sequence_397, expression, range(default_drawing_supplier_1, 7455, 4, 203, 203), "this").
expr(default_drawing_supplier_1_expr28, this_expression, f_shape_sequence_398, expression, range(default_drawing_supplier_1, 7516, 4, 204, 204), "this").
expr(default_drawing_supplier_1_expr27, field_access, default_drawing_supplier_1_expr26, left_hand_side, range(default_drawing_supplier_1, 7516, 18, 204, 204), "this.shapeSequence").
expr(default_drawing_supplier_1_expr26, assignment, default_drawing_supplier_1_stmt7, expression, range(default_drawing_supplier_1, 7516, 34, 204, 204), "this.shapeSequence=shapeSequence").
expr(default_drawing_supplier_1_expr29, array_creation, default_drawing_supplier_1_code70, initializer, range(default_drawing_supplier_1, 9788, 13, 289, 289), "new Shape[10]").
expr(default_drawing_supplier_1_expr30, infix_expression, default_drawing_supplier_1_code77, initializer, range(default_drawing_supplier_1, 9857, 10, 292, 292), "size / 2.0").
expr(default_drawing_supplier_1_expr31, assignment, default_drawing_supplier_1_stmt13, expression, range(default_drawing_supplier_1, 9961, 62, 297, 297), "result[0]=new Rectangle2D.Double(-delta,-delta,size,size)").
expr(default_drawing_supplier_1_expr32, array_access, default_drawing_supplier_1_expr31, left_hand_side, range(default_drawing_supplier_1, 9961, 9, 297, 297), "result[0]").
expr(default_drawing_supplier_1_expr33, class_instance_creation, default_drawing_supplier_1_expr31, right_hand_side, range(default_drawing_supplier_1, 9973, 50, 297, 297), "new Rectangle2D.Double(-delta,-delta,size,size)").
expr(default_drawing_supplier_1_expr34, prefix_expression, default_drawing_supplier_1_expr33, (arguments, 0), range(default_drawing_supplier_1, 9996, 6, 297, 297), "-delta").
expr(default_drawing_supplier_1_expr35, prefix_expression, default_drawing_supplier_1_expr33, (arguments, 1), range(default_drawing_supplier_1, 10004, 6, 297, 297), "-delta").
expr(default_drawing_supplier_1_expr37, array_access, default_drawing_supplier_1_expr36, left_hand_side, range(default_drawing_supplier_1, 10053, 9, 299, 299), "result[1]").
expr(default_drawing_supplier_1_expr36, assignment, default_drawing_supplier_1_stmt14, expression, range(default_drawing_supplier_1, 10053, 60, 299, 299), "result[1]=new Ellipse2D.Double(-delta,-delta,size,size)").
expr(default_drawing_supplier_1_expr38, class_instance_creation, default_drawing_supplier_1_expr36, right_hand_side, range(default_drawing_supplier_1, 10065, 48, 299, 299), "new Ellipse2D.Double(-delta,-delta,size,size)").
expr(default_drawing_supplier_1_expr39, prefix_expression, default_drawing_supplier_1_expr38, (arguments, 0), range(default_drawing_supplier_1, 10086, 6, 299, 299), "-delta").
expr(default_drawing_supplier_1_expr40, prefix_expression, default_drawing_supplier_1_expr38, (arguments, 1), range(default_drawing_supplier_1, 10094, 6, 299, 299), "-delta").
expr(default_drawing_supplier_1_expr41, assignment, default_drawing_supplier_1_stmt15, expression, range(default_drawing_supplier_1, 10159, 38, 302, 302), "xpoints=intArray(0.0,delta,-delta)").
expr(default_drawing_supplier_1_expr42, method_invocation, default_drawing_supplier_1_expr41, right_hand_side, range(default_drawing_supplier_1, 10169, 28, 302, 302), "intArray(0.0,delta,-delta)").
expr(default_drawing_supplier_1_expr43, prefix_expression, default_drawing_supplier_1_expr42, (arguments, 2), range(default_drawing_supplier_1, 10190, 6, 302, 302), "-delta").
expr(default_drawing_supplier_1_expr44, assignment, default_drawing_supplier_1_stmt16, expression, range(default_drawing_supplier_1, 10208, 40, 303, 303), "ypoints=intArray(-delta,delta,delta)").
expr(default_drawing_supplier_1_expr45, method_invocation, default_drawing_supplier_1_expr44, right_hand_side, range(default_drawing_supplier_1, 10218, 30, 303, 303), "intArray(-delta,delta,delta)").
expr(default_drawing_supplier_1_expr46, prefix_expression, default_drawing_supplier_1_expr45, (arguments, 0), range(default_drawing_supplier_1, 10227, 6, 303, 303), "-delta").
expr(default_drawing_supplier_1_expr48, array_access, default_drawing_supplier_1_expr47, left_hand_side, range(default_drawing_supplier_1, 10259, 9, 304, 304), "result[2]").
expr(default_drawing_supplier_1_expr47, assignment, default_drawing_supplier_1_stmt17, expression, range(default_drawing_supplier_1, 10259, 44, 304, 304), "result[2]=new Polygon(xpoints,ypoints,3)").
expr(default_drawing_supplier_1_expr49, class_instance_creation, default_drawing_supplier_1_expr47, right_hand_side, range(default_drawing_supplier_1, 10271, 32, 304, 304), "new Polygon(xpoints,ypoints,3)").
expr(default_drawing_supplier_1_expr50, assignment, default_drawing_supplier_1_stmt18, expression, range(default_drawing_supplier_1, 10336, 43, 307, 307), "xpoints=intArray(0.0,delta,0.0,-delta)").
expr(default_drawing_supplier_1_expr51, method_invocation, default_drawing_supplier_1_expr50, right_hand_side, range(default_drawing_supplier_1, 10346, 33, 307, 307), "intArray(0.0,delta,0.0,-delta)").
expr(default_drawing_supplier_1_expr52, prefix_expression, default_drawing_supplier_1_expr51, (arguments, 3), range(default_drawing_supplier_1, 10372, 6, 307, 307), "-delta").
expr(default_drawing_supplier_1_expr53, assignment, default_drawing_supplier_1_stmt19, expression, range(default_drawing_supplier_1, 10390, 43, 308, 308), "ypoints=intArray(-delta,0.0,delta,0.0)").
expr(default_drawing_supplier_1_expr54, method_invocation, default_drawing_supplier_1_expr53, right_hand_side, range(default_drawing_supplier_1, 10400, 33, 308, 308), "intArray(-delta,0.0,delta,0.0)").
expr(default_drawing_supplier_1_expr55, prefix_expression, default_drawing_supplier_1_expr54, (arguments, 0), range(default_drawing_supplier_1, 10409, 6, 308, 308), "-delta").
expr(default_drawing_supplier_1_expr57, array_access, default_drawing_supplier_1_expr56, left_hand_side, range(default_drawing_supplier_1, 10444, 9, 309, 309), "result[3]").
expr(default_drawing_supplier_1_expr56, assignment, default_drawing_supplier_1_stmt20, expression, range(default_drawing_supplier_1, 10444, 44, 309, 309), "result[3]=new Polygon(xpoints,ypoints,4)").
expr(default_drawing_supplier_1_expr58, class_instance_creation, default_drawing_supplier_1_expr56, right_hand_side, range(default_drawing_supplier_1, 10456, 32, 309, 309), "new Polygon(xpoints,ypoints,4)").
expr(default_drawing_supplier_1_expr60, array_access, default_drawing_supplier_1_expr59, left_hand_side, range(default_drawing_supplier_1, 10534, 9, 312, 312), "result[4]").
expr(default_drawing_supplier_1_expr59, assignment, default_drawing_supplier_1_stmt21, expression, range(default_drawing_supplier_1, 10534, 70, 312, 312), "result[4]=new Rectangle2D.Double(-delta,-delta / 2,size,size / 2)").
expr(default_drawing_supplier_1_expr61, class_instance_creation, default_drawing_supplier_1_expr59, right_hand_side, range(default_drawing_supplier_1, 10546, 58, 312, 312), "new Rectangle2D.Double(-delta,-delta / 2,size,size / 2)").
expr(default_drawing_supplier_1_expr62, prefix_expression, default_drawing_supplier_1_expr61, (arguments, 0), range(default_drawing_supplier_1, 10569, 6, 312, 312), "-delta").
expr(default_drawing_supplier_1_expr63, infix_expression, default_drawing_supplier_1_expr61, (arguments, 1), range(default_drawing_supplier_1, 10577, 10, 312, 312), "-delta / 2").
expr(default_drawing_supplier_1_expr65, prefix_expression, default_drawing_supplier_1_expr63, left_operand, range(default_drawing_supplier_1, 10577, 6, 312, 312), "-delta").
expr(default_drawing_supplier_1_expr64, infix_expression, default_drawing_supplier_1_expr61, (arguments, 3), range(default_drawing_supplier_1, 10595, 8, 312, 312), "size / 2").
expr(default_drawing_supplier_1_expr66, assignment, default_drawing_supplier_1_stmt22, expression, range(default_drawing_supplier_1, 10652, 39, 315, 315), "xpoints=intArray(-delta,+delta,0.0)").
expr(default_drawing_supplier_1_expr67, method_invocation, default_drawing_supplier_1_expr66, right_hand_side, range(default_drawing_supplier_1, 10662, 29, 315, 315), "intArray(-delta,+delta,0.0)").
expr(default_drawing_supplier_1_expr68, prefix_expression, default_drawing_supplier_1_expr67, (arguments, 0), range(default_drawing_supplier_1, 10671, 6, 315, 315), "-delta").
expr(default_drawing_supplier_1_expr69, prefix_expression, default_drawing_supplier_1_expr67, (arguments, 1), range(default_drawing_supplier_1, 10679, 6, 315, 315), "+delta").
expr(default_drawing_supplier_1_expr70, assignment, default_drawing_supplier_1_stmt23, expression, range(default_drawing_supplier_1, 10702, 41, 316, 316), "ypoints=intArray(-delta,-delta,delta)").
expr(default_drawing_supplier_1_expr71, method_invocation, default_drawing_supplier_1_expr70, right_hand_side, range(default_drawing_supplier_1, 10712, 31, 316, 316), "intArray(-delta,-delta,delta)").
expr(default_drawing_supplier_1_expr72, prefix_expression, default_drawing_supplier_1_expr71, (arguments, 0), range(default_drawing_supplier_1, 10721, 6, 316, 316), "-delta").
expr(default_drawing_supplier_1_expr73, prefix_expression, default_drawing_supplier_1_expr71, (arguments, 1), range(default_drawing_supplier_1, 10729, 6, 316, 316), "-delta").
expr(default_drawing_supplier_1_expr75, array_access, default_drawing_supplier_1_expr74, left_hand_side, range(default_drawing_supplier_1, 10754, 9, 317, 317), "result[5]").
expr(default_drawing_supplier_1_expr74, assignment, default_drawing_supplier_1_stmt24, expression, range(default_drawing_supplier_1, 10754, 44, 317, 317), "result[5]=new Polygon(xpoints,ypoints,3)").
expr(default_drawing_supplier_1_expr76, class_instance_creation, default_drawing_supplier_1_expr74, right_hand_side, range(default_drawing_supplier_1, 10766, 32, 317, 317), "new Polygon(xpoints,ypoints,3)").
expr(default_drawing_supplier_1_expr77, assignment, default_drawing_supplier_1_stmt25, expression, range(default_drawing_supplier_1, 10842, 68, 320, 320), "result[6]=new Ellipse2D.Double(-delta,-delta / 2,size,size / 2)").
expr(default_drawing_supplier_1_expr78, array_access, default_drawing_supplier_1_expr77, left_hand_side, range(default_drawing_supplier_1, 10842, 9, 320, 320), "result[6]").
expr(default_drawing_supplier_1_expr79, class_instance_creation, default_drawing_supplier_1_expr77, right_hand_side, range(default_drawing_supplier_1, 10854, 56, 320, 320), "new Ellipse2D.Double(-delta,-delta / 2,size,size / 2)").
expr(default_drawing_supplier_1_expr80, prefix_expression, default_drawing_supplier_1_expr79, (arguments, 0), range(default_drawing_supplier_1, 10875, 6, 320, 320), "-delta").
expr(default_drawing_supplier_1_expr81, infix_expression, default_drawing_supplier_1_expr79, (arguments, 1), range(default_drawing_supplier_1, 10883, 10, 320, 320), "-delta / 2").
expr(default_drawing_supplier_1_expr83, prefix_expression, default_drawing_supplier_1_expr81, left_operand, range(default_drawing_supplier_1, 10883, 6, 320, 320), "-delta").
expr(default_drawing_supplier_1_expr82, infix_expression, default_drawing_supplier_1_expr79, (arguments, 3), range(default_drawing_supplier_1, 10901, 8, 320, 320), "size / 2").
expr(default_drawing_supplier_1_expr84, assignment, default_drawing_supplier_1_stmt26, expression, range(default_drawing_supplier_1, 10959, 41, 323, 323), "xpoints=intArray(-delta,delta,-delta)").
expr(default_drawing_supplier_1_expr85, method_invocation, default_drawing_supplier_1_expr84, right_hand_side, range(default_drawing_supplier_1, 10969, 31, 323, 323), "intArray(-delta,delta,-delta)").
expr(default_drawing_supplier_1_expr86, prefix_expression, default_drawing_supplier_1_expr85, (arguments, 0), range(default_drawing_supplier_1, 10978, 6, 323, 323), "-delta").
expr(default_drawing_supplier_1_expr87, prefix_expression, default_drawing_supplier_1_expr85, (arguments, 2), range(default_drawing_supplier_1, 10993, 6, 323, 323), "-delta").
expr(default_drawing_supplier_1_expr88, assignment, default_drawing_supplier_1_stmt27, expression, range(default_drawing_supplier_1, 11011, 38, 324, 324), "ypoints=intArray(-delta,0.0,delta)").
expr(default_drawing_supplier_1_expr89, method_invocation, default_drawing_supplier_1_expr88, right_hand_side, range(default_drawing_supplier_1, 11021, 28, 324, 324), "intArray(-delta,0.0,delta)").
expr(default_drawing_supplier_1_expr90, prefix_expression, default_drawing_supplier_1_expr89, (arguments, 0), range(default_drawing_supplier_1, 11030, 6, 324, 324), "-delta").
expr(default_drawing_supplier_1_expr92, array_access, default_drawing_supplier_1_expr91, left_hand_side, range(default_drawing_supplier_1, 11060, 9, 325, 325), "result[7]").
expr(default_drawing_supplier_1_expr91, assignment, default_drawing_supplier_1_stmt28, expression, range(default_drawing_supplier_1, 11060, 44, 325, 325), "result[7]=new Polygon(xpoints,ypoints,3)").
expr(default_drawing_supplier_1_expr93, class_instance_creation, default_drawing_supplier_1_expr91, right_hand_side, range(default_drawing_supplier_1, 11072, 32, 325, 325), "new Polygon(xpoints,ypoints,3)").
expr(default_drawing_supplier_1_expr95, array_access, default_drawing_supplier_1_expr94, left_hand_side, range(default_drawing_supplier_1, 11148, 9, 328, 328), "result[8]").
expr(default_drawing_supplier_1_expr94, assignment, default_drawing_supplier_1_stmt29, expression, range(default_drawing_supplier_1, 11148, 70, 328, 328), "result[8]=new Rectangle2D.Double(-delta / 2,-delta,size / 2,size)").
expr(default_drawing_supplier_1_expr96, class_instance_creation, default_drawing_supplier_1_expr94, right_hand_side, range(default_drawing_supplier_1, 11160, 58, 328, 328), "new Rectangle2D.Double(-delta / 2,-delta,size / 2,size)").
expr(default_drawing_supplier_1_expr97, infix_expression, default_drawing_supplier_1_expr96, (arguments, 0), range(default_drawing_supplier_1, 11183, 10, 328, 328), "-delta / 2").
expr(default_drawing_supplier_1_expr100, prefix_expression, default_drawing_supplier_1_expr97, left_operand, range(default_drawing_supplier_1, 11183, 6, 328, 328), "-delta").
expr(default_drawing_supplier_1_expr98, prefix_expression, default_drawing_supplier_1_expr96, (arguments, 1), range(default_drawing_supplier_1, 11195, 6, 328, 328), "-delta").
expr(default_drawing_supplier_1_expr99, infix_expression, default_drawing_supplier_1_expr96, (arguments, 2), range(default_drawing_supplier_1, 11203, 8, 328, 328), "size / 2").
expr(default_drawing_supplier_1_expr101, assignment, default_drawing_supplier_1_stmt30, expression, range(default_drawing_supplier_1, 11266, 40, 331, 331), "xpoints=intArray(-delta,delta,delta)").
expr(default_drawing_supplier_1_expr102, method_invocation, default_drawing_supplier_1_expr101, right_hand_side, range(default_drawing_supplier_1, 11276, 30, 331, 331), "intArray(-delta,delta,delta)").
expr(default_drawing_supplier_1_expr103, prefix_expression, default_drawing_supplier_1_expr102, (arguments, 0), range(default_drawing_supplier_1, 11285, 6, 331, 331), "-delta").
expr(default_drawing_supplier_1_expr104, assignment, default_drawing_supplier_1_stmt31, expression, range(default_drawing_supplier_1, 11317, 39, 332, 332), "ypoints=intArray(0.0,-delta,+delta)").
expr(default_drawing_supplier_1_expr105, method_invocation, default_drawing_supplier_1_expr104, right_hand_side, range(default_drawing_supplier_1, 11327, 29, 332, 332), "intArray(0.0,-delta,+delta)").
expr(default_drawing_supplier_1_expr106, prefix_expression, default_drawing_supplier_1_expr105, (arguments, 1), range(default_drawing_supplier_1, 11341, 6, 332, 332), "-delta").
expr(default_drawing_supplier_1_expr107, prefix_expression, default_drawing_supplier_1_expr105, (arguments, 2), range(default_drawing_supplier_1, 11349, 6, 332, 332), "+delta").
expr(default_drawing_supplier_1_expr108, assignment, default_drawing_supplier_1_stmt32, expression, range(default_drawing_supplier_1, 11367, 44, 333, 333), "result[9]=new Polygon(xpoints,ypoints,3)").
expr(default_drawing_supplier_1_expr109, array_access, default_drawing_supplier_1_expr108, left_hand_side, range(default_drawing_supplier_1, 11367, 9, 333, 333), "result[9]").
expr(default_drawing_supplier_1_expr110, class_instance_creation, default_drawing_supplier_1_expr108, right_hand_side, range(default_drawing_supplier_1, 11379, 32, 333, 333), "new Polygon(xpoints,ypoints,3)").
expr(default_drawing_supplier_1_expr111, array_creation, default_drawing_supplier_1_stmt34, expression, range(default_drawing_supplier_1, 17285, 37, 517, 517), "new int[]{(int)a,(int)b,(int)c}").
expr(default_drawing_supplier_1_expr112, array_initializer, default_drawing_supplier_1_expr111, initializer, range(default_drawing_supplier_1, 17295, 27, 517, 517), "{(int)a,(int)b,(int)c}").
expr(default_drawing_supplier_1_expr113, cast_expression, default_drawing_supplier_1_expr112, (expressions, 0), range(default_drawing_supplier_1, 17296, 7, 517, 517), "(int)a").
expr(default_drawing_supplier_1_expr114, cast_expression, default_drawing_supplier_1_expr112, (expressions, 1), range(default_drawing_supplier_1, 17305, 7, 517, 517), "(int)b").
expr(default_drawing_supplier_1_expr115, cast_expression, default_drawing_supplier_1_expr112, (expressions, 2), range(default_drawing_supplier_1, 17314, 7, 517, 517), "(int)c").
expr(default_drawing_supplier_1_expr116, array_creation, default_drawing_supplier_1_stmt35, expression, range(default_drawing_supplier_1, 17727, 46, 532, 532), "new int[]{(int)a,(int)b,(int)c,(int)d}").
expr(default_drawing_supplier_1_expr117, array_initializer, default_drawing_supplier_1_expr116, initializer, range(default_drawing_supplier_1, 17737, 36, 532, 532), "{(int)a,(int)b,(int)c,(int)d}").
expr(default_drawing_supplier_1_expr118, cast_expression, default_drawing_supplier_1_expr117, (expressions, 0), range(default_drawing_supplier_1, 17738, 7, 532, 532), "(int)a").
expr(default_drawing_supplier_1_expr119, cast_expression, default_drawing_supplier_1_expr117, (expressions, 1), range(default_drawing_supplier_1, 17747, 7, 532, 532), "(int)b").
expr(default_drawing_supplier_1_expr120, cast_expression, default_drawing_supplier_1_expr117, (expressions, 2), range(default_drawing_supplier_1, 17756, 7, 532, 532), "(int)c").
expr(default_drawing_supplier_1_expr121, cast_expression, default_drawing_supplier_1_expr117, (expressions, 3), range(default_drawing_supplier_1, 17765, 7, 532, 532), "(int)d").
%unit_type_1 - org.jfree.chart.util.UnitType
expr(unit_type_1_expr1, class_instance_creation, unit_type_1_code8, initializer, range(unit_type_1, 1910, 33, 56, 56), "new UnitType(\"UnitType.ABSOLUTE\")").
expr(unit_type_1_expr2, class_instance_creation, unit_type_1_code15, initializer, range(unit_type_1, 2011, 33, 59, 59), "new UnitType(\"UnitType.RELATIVE\")").
expr(unit_type_1_expr5, this_expression, f_name_1017, expression, range(unit_type_1, 2219, 4, 70, 70), "this").
expr(unit_type_1_expr3, assignment, unit_type_1_stmt1, expression, range(unit_type_1, 2219, 16, 70, 70), "this.name=name").
expr(unit_type_1_expr4, field_access, unit_type_1_expr3, left_hand_side, range(unit_type_1, 2219, 9, 70, 70), "this.name").
%axis_location_1 - org.jfree.chart.axis.AxisLocation
expr(axis_location_1_expr1, class_instance_creation, axis_location_1_code8, initializer, range(axis_location_1, 2396, 58, 61, 62), "new AxisLocation(\"AxisLocation.TOP_OR_LEFT\")").
expr(axis_location_1_expr2, class_instance_creation, axis_location_1_code15, initializer, range(axis_location_1, 2549, 59, 65, 66), "new AxisLocation(\"AxisLocation.TOP_OR_RIGHT\")").
expr(axis_location_1_expr3, class_instance_creation, axis_location_1_code22, initializer, range(axis_location_1, 2711, 61, 69, 70), "new AxisLocation(\"AxisLocation.BOTTOM_OR_LEFT\")").
expr(axis_location_1_expr4, class_instance_creation, axis_location_1_code29, initializer, range(axis_location_1, 2881, 62, 73, 74), "new AxisLocation(\"AxisLocation.BOTTOM_OR_RIGHT\")").
expr(axis_location_1_expr7, this_expression, f_name_33, expression, range(axis_location_1, 3137, 4, 85, 85), "this").
expr(axis_location_1_expr6, field_access, axis_location_1_expr5, left_hand_side, range(axis_location_1, 3137, 9, 85, 85), "this.name").
expr(axis_location_1_expr5, assignment, axis_location_1_stmt1, expression, range(axis_location_1, 3137, 16, 85, 85), "this.name=name").
%dataset_rendering_order_1 - org.jfree.chart.plot.DatasetRenderingOrder
expr(dataset_rendering_order_1_expr1, class_instance_creation, dataset_rendering_order_1_code8, initializer, range(dataset_rendering_order_1, 2315, 58, 63, 63), "new DatasetRenderingOrder(\"DatasetRenderingOrder.FORWARD\")").
expr(dataset_rendering_order_1_expr2, class_instance_creation, dataset_rendering_order_1_code14, initializer, range(dataset_rendering_order_1, 2572, 58, 70, 70), "new DatasetRenderingOrder(\"DatasetRenderingOrder.REVERSE\")").
expr(dataset_rendering_order_1_expr5, this_expression, f_name_374, expression, range(dataset_rendering_order_1, 2829, 4, 81, 81), "this").
expr(dataset_rendering_order_1_expr4, field_access, dataset_rendering_order_1_expr3, left_hand_side, range(dataset_rendering_order_1, 2829, 9, 81, 81), "this.name").
expr(dataset_rendering_order_1_expr3, assignment, dataset_rendering_order_1_stmt1, expression, range(dataset_rendering_order_1, 2829, 16, 81, 81), "this.name=name").
%chart_change_event_type_1 - org.jfree.chart.event.ChartChangeEventType
expr(chart_change_event_type_1_expr1, class_instance_creation, chart_change_event_type_1_code8, initializer, range(chart_change_event_type_1, 1988, 56, 56, 56), "new ChartChangeEventType(\"ChartChangeEventType.GENERAL\")").
expr(chart_change_event_type_1_expr2, class_instance_creation, chart_change_event_type_1_code14, initializer, range(chart_change_event_type_1, 2143, 60, 60, 60), "new ChartChangeEventType(\"ChartChangeEventType.NEW_DATASET\")").
expr(chart_change_event_type_1_expr3, class_instance_creation, chart_change_event_type_1_code20, initializer, range(chart_change_event_type_1, 2309, 64, 64, 64), "new ChartChangeEventType(\"ChartChangeEventType.DATASET_UPDATED\")").
expr(chart_change_event_type_1_expr5, field_access, chart_change_event_type_1_expr4, left_hand_side, range(chart_change_event_type_1, 2571, 9, 75, 75), "this.name").
expr(chart_change_event_type_1_expr6, this_expression, f_name_56, expression, range(chart_change_event_type_1, 2571, 4, 75, 75), "this").
expr(chart_change_event_type_1_expr4, assignment, chart_change_event_type_1_stmt1, expression, range(chart_change_event_type_1, 2571, 16, 75, 75), "this.name=name").
%marker_change_event_1 - org.jfree.chart.event.MarkerChangeEvent
expr(marker_change_event_1_expr1, super_constructor_invocation, marker_change_event_1_block1, (statements, 0), range(marker_change_event_1, 2186, 14, 65, 65), "super(marker);").
expr(marker_change_event_1_expr2, assignment, marker_change_event_1_stmt2, expression, range(marker_change_event_1, 2210, 20, 66, 66), "this.marker=marker").
expr(marker_change_event_1_expr3, field_access, marker_change_event_1_expr2, left_hand_side, range(marker_change_event_1, 2210, 11, 66, 66), "this.marker").
expr(marker_change_event_1_expr4, this_expression, f_marker_59, expression, range(marker_change_event_1, 2210, 4, 66, 66), "this").
%xyplot_1 - org.jfree.chart.plot.XYPlot
expr(xyplot_1_expr1, class_instance_creation, xyplot_1_code8, initializer, range(xyplot_1, 14679, 132, 284, 286), "new BasicStroke(0.5f,BasicStroke.CAP_BUTT,BasicStroke.JOIN_BEVEL,0.0f,new float[]{2.0f,2.0f},0.0f)").
expr(xyplot_1_expr2, array_creation, xyplot_1_expr1, (arguments, 4), range(xyplot_1, 14780, 24, 286, 286), "new float[]{2.0f,2.0f}").
expr(xyplot_1_expr3, method_invocation, xyplot_1_code32, initializer, range(xyplot_1, 15424, 89, 303, 304), "ResourceBundle.getBundle(\"org.jfree.chart.plot.LocalizationBundle\")").
expr(xyplot_1_expr4, class_instance_creation, xyplot_1_code37, initializer, range(xyplot_1, 16811, 28, 345, 345), "new Point2D.Double(0.0,0.0)").
expr(xyplot_1_expr5, array_creation, xyplot_1_code45, initializer, range(xyplot_1, 16949, 36, 349, 349), "new Paint[]{null,null,null,null}").
expr(xyplot_1_expr6, constructor_invocation, xyplot_1_block1, (statements, 0), range(xyplot_1, 22026, 29, 501, 501), "this(null,null,null,null);").
expr(xyplot_1_expr7, super_constructor_invocation, xyplot_1_block2, (statements, 0), range(xyplot_1, 22839, 8, 520, 520), "super();").
expr(xyplot_1_expr9, field_access, xyplot_1_expr8, left_hand_side, range(xyplot_1, 22859, 16, 522, 522), "this.orientation").
expr(xyplot_1_expr8, assignment, xyplot_1_stmt3, expression, range(xyplot_1, 22859, 43, 522, 522), "this.orientation=PlotOrientation.VERTICAL").
expr(xyplot_1_expr10, this_expression, f_orientation_582, expression, range(xyplot_1, 22859, 4, 522, 522), "this").
expr(xyplot_1_expr13, this_expression, f_weight_583, expression, range(xyplot_1, 22913, 4, 523, 523), "this").
expr(xyplot_1_expr12, field_access, xyplot_1_expr11, left_hand_side, range(xyplot_1, 22913, 11, 523, 523), "this.weight").
expr(xyplot_1_expr11, assignment, xyplot_1_stmt4, expression, range(xyplot_1, 22913, 15, 523, 523), "this.weight=1").
expr(xyplot_1_expr14, assignment, xyplot_1_stmt5, expression, range(xyplot_1, 22980, 57, 524, 524), "this.axisOffset=new RectangleInsets(4.0,4.0,4.0,4.0)").
expr(xyplot_1_expr17, this_expression, f_axis_offset_584, expression, range(xyplot_1, 22980, 4, 524, 524), "this").
expr(xyplot_1_expr15, field_access, xyplot_1_expr14, left_hand_side, range(xyplot_1, 22980, 15, 524, 524), "this.axisOffset").
expr(xyplot_1_expr16, class_instance_creation, xyplot_1_expr14, right_hand_side, range(xyplot_1, 22998, 39, 524, 524), "new RectangleInsets(4.0,4.0,4.0,4.0)").
expr(xyplot_1_expr21, this_expression, f_domain_axes_585, expression, range(xyplot_1, 23127, 4, 527, 527), "this").
expr(xyplot_1_expr19, field_access, xyplot_1_expr18, left_hand_side, range(xyplot_1, 23127, 15, 527, 527), "this.domainAxes").
expr(xyplot_1_expr18, assignment, xyplot_1_stmt6, expression, range(xyplot_1, 23127, 34, 527, 527), "this.domainAxes=new ObjectList()").
expr(xyplot_1_expr20, class_instance_creation, xyplot_1_expr18, right_hand_side, range(xyplot_1, 23145, 16, 527, 527), "new ObjectList()").
expr(xyplot_1_expr25, this_expression, f_domain_axis_locations_586, expression, range(xyplot_1, 23172, 4, 528, 528), "this").
expr(xyplot_1_expr23, field_access, xyplot_1_expr22, left_hand_side, range(xyplot_1, 23172, 24, 528, 528), "this.domainAxisLocations").
expr(xyplot_1_expr22, assignment, xyplot_1_stmt7, expression, range(xyplot_1, 23172, 43, 528, 528), "this.domainAxisLocations=new ObjectList()").
expr(xyplot_1_expr24, class_instance_creation, xyplot_1_expr22, right_hand_side, range(xyplot_1, 23199, 16, 528, 528), "new ObjectList()").
expr(xyplot_1_expr29, this_expression, f_foreground_domain_markers_587, expression, range(xyplot_1, 23226, 4, 529, 529), "this").
expr(xyplot_1_expr27, field_access, xyplot_1_expr26, left_hand_side, range(xyplot_1, 23226, 28, 529, 529), "this.foregroundDomainMarkers").
expr(xyplot_1_expr26, assignment, xyplot_1_stmt8, expression, range(xyplot_1, 23226, 44, 529, 529), "this.foregroundDomainMarkers=new HashMap()").
expr(xyplot_1_expr28, class_instance_creation, xyplot_1_expr26, right_hand_side, range(xyplot_1, 23257, 13, 529, 529), "new HashMap()").
expr(xyplot_1_expr33, this_expression, f_background_domain_markers_588, expression, range(xyplot_1, 23281, 4, 530, 530), "this").
expr(xyplot_1_expr31, field_access, xyplot_1_expr30, left_hand_side, range(xyplot_1, 23281, 28, 530, 530), "this.backgroundDomainMarkers").
expr(xyplot_1_expr30, assignment, xyplot_1_stmt9, expression, range(xyplot_1, 23281, 44, 530, 530), "this.backgroundDomainMarkers=new HashMap()").
expr(xyplot_1_expr32, class_instance_creation, xyplot_1_expr30, right_hand_side, range(xyplot_1, 23312, 13, 530, 530), "new HashMap()").
expr(xyplot_1_expr35, field_access, xyplot_1_expr34, left_hand_side, range(xyplot_1, 23338, 14, 532, 532), "this.rangeAxes").
expr(xyplot_1_expr34, assignment, xyplot_1_stmt10, expression, range(xyplot_1, 23338, 33, 532, 532), "this.rangeAxes=new ObjectList()").
expr(xyplot_1_expr37, this_expression, f_range_axes_589, expression, range(xyplot_1, 23338, 4, 532, 532), "this").
expr(xyplot_1_expr36, class_instance_creation, xyplot_1_expr34, right_hand_side, range(xyplot_1, 23355, 16, 532, 532), "new ObjectList()").
expr(xyplot_1_expr41, this_expression, f_range_axis_locations_590, expression, range(xyplot_1, 23382, 4, 533, 533), "this").
expr(xyplot_1_expr39, field_access, xyplot_1_expr38, left_hand_side, range(xyplot_1, 23382, 23, 533, 533), "this.rangeAxisLocations").
expr(xyplot_1_expr38, assignment, xyplot_1_stmt11, expression, range(xyplot_1, 23382, 42, 533, 533), "this.rangeAxisLocations=new ObjectList()").
expr(xyplot_1_expr40, class_instance_creation, xyplot_1_expr38, right_hand_side, range(xyplot_1, 23408, 16, 533, 533), "new ObjectList()").
expr(xyplot_1_expr45, this_expression, f_foreground_range_markers_591, expression, range(xyplot_1, 23435, 4, 534, 534), "this").
expr(xyplot_1_expr43, field_access, xyplot_1_expr42, left_hand_side, range(xyplot_1, 23435, 27, 534, 534), "this.foregroundRangeMarkers").
expr(xyplot_1_expr42, assignment, xyplot_1_stmt12, expression, range(xyplot_1, 23435, 43, 534, 534), "this.foregroundRangeMarkers=new HashMap()").
expr(xyplot_1_expr44, class_instance_creation, xyplot_1_expr42, right_hand_side, range(xyplot_1, 23465, 13, 534, 534), "new HashMap()").
expr(xyplot_1_expr47, field_access, xyplot_1_expr46, left_hand_side, range(xyplot_1, 23489, 27, 535, 535), "this.backgroundRangeMarkers").
expr(xyplot_1_expr46, assignment, xyplot_1_stmt13, expression, range(xyplot_1, 23489, 43, 535, 535), "this.backgroundRangeMarkers=new HashMap()").
expr(xyplot_1_expr49, this_expression, f_background_range_markers_592, expression, range(xyplot_1, 23489, 4, 535, 535), "this").
expr(xyplot_1_expr48, class_instance_creation, xyplot_1_expr46, right_hand_side, range(xyplot_1, 23519, 13, 535, 535), "new HashMap()").
expr(xyplot_1_expr50, assignment, xyplot_1_stmt14, expression, range(xyplot_1, 23545, 32, 537, 537), "this.datasets=new ObjectList()").
expr(xyplot_1_expr53, this_expression, f_datasets_593, expression, range(xyplot_1, 23545, 4, 537, 537), "this").
expr(xyplot_1_expr51, field_access, xyplot_1_expr50, left_hand_side, range(xyplot_1, 23545, 13, 537, 537), "this.datasets").
expr(xyplot_1_expr52, class_instance_creation, xyplot_1_expr50, right_hand_side, range(xyplot_1, 23561, 16, 537, 537), "new ObjectList()").
expr(xyplot_1_expr57, this_expression, f_renderers_594, expression, range(xyplot_1, 23588, 4, 538, 538), "this").
expr(xyplot_1_expr55, field_access, xyplot_1_expr54, left_hand_side, range(xyplot_1, 23588, 14, 538, 538), "this.renderers").
expr(xyplot_1_expr54, assignment, xyplot_1_stmt15, expression, range(xyplot_1, 23588, 33, 538, 538), "this.renderers=new ObjectList()").
expr(xyplot_1_expr56, class_instance_creation, xyplot_1_expr54, right_hand_side, range(xyplot_1, 23605, 16, 538, 538), "new ObjectList()").
expr(xyplot_1_expr61, this_expression, f_dataset_to_domain_axis_map_595, expression, range(xyplot_1, 23634, 4, 540, 540), "this").
expr(xyplot_1_expr58, assignment, xyplot_1_stmt16, expression, range(xyplot_1, 23634, 43, 540, 540), "this.datasetToDomainAxisMap=new TreeMap()").
expr(xyplot_1_expr59, field_access, xyplot_1_expr58, left_hand_side, range(xyplot_1, 23634, 27, 540, 540), "this.datasetToDomainAxisMap").
expr(xyplot_1_expr60, class_instance_creation, xyplot_1_expr58, right_hand_side, range(xyplot_1, 23664, 13, 540, 540), "new TreeMap()").
expr(xyplot_1_expr65, this_expression, f_dataset_to_range_axis_map_596, expression, range(xyplot_1, 23688, 4, 541, 541), "this").
expr(xyplot_1_expr63, field_access, xyplot_1_expr62, left_hand_side, range(xyplot_1, 23688, 26, 541, 541), "this.datasetToRangeAxisMap").
expr(xyplot_1_expr62, assignment, xyplot_1_stmt17, expression, range(xyplot_1, 23688, 42, 541, 541), "this.datasetToRangeAxisMap=new TreeMap()").
expr(xyplot_1_expr64, class_instance_creation, xyplot_1_expr62, right_hand_side, range(xyplot_1, 23717, 13, 541, 541), "new TreeMap()").
expr(xyplot_1_expr68, this_expression, f_datasets_593, expression, range(xyplot_1, 23743, 4, 543, 543), "this").
expr(xyplot_1_expr67, field_access, xyplot_1_expr66, expression, range(xyplot_1, 23743, 13, 543, 543), "this.datasets").
expr(xyplot_1_expr66, method_invocation, xyplot_1_stmt18, expression, range(xyplot_1, 23743, 29, 543, 543), "this.datasets.set(0,dataset)").
expr(xyplot_1_expr69, infix_expression, xyplot_1_stmt19, expression, range(xyplot_1, 23787, 15, 544, 544), "dataset != null").
expr(xyplot_1_expr72, this_expression, f_renderers_594, expression, range(xyplot_1, 23874, 4, 548, 548), "this").
expr(xyplot_1_expr71, field_access, xyplot_1_expr70, expression, range(xyplot_1, 23874, 14, 548, 548), "this.renderers").
expr(xyplot_1_expr70, method_invocation, xyplot_1_stmt20, expression, range(xyplot_1, 23874, 31, 548, 548), "this.renderers.set(0,renderer)").
expr(xyplot_1_expr73, infix_expression, xyplot_1_stmt21, expression, range(xyplot_1, 23920, 16, 549, 549), "renderer != null").
expr(xyplot_1_expr76, this_expression, f_domain_axes_585, expression, range(xyplot_1, 24046, 4, 554, 554), "this").
expr(xyplot_1_expr75, field_access, xyplot_1_expr74, expression, range(xyplot_1, 24046, 15, 554, 554), "this.domainAxes").
expr(xyplot_1_expr74, method_invocation, xyplot_1_stmt22, expression, range(xyplot_1, 24046, 34, 554, 554), "this.domainAxes.set(0,domainAxis)").
expr(xyplot_1_expr78, this_expression, xyplot_1_expr77, expression, range(xyplot_1, 24091, 4, 555, 555), "this").
expr(xyplot_1_expr77, method_invocation, xyplot_1_stmt23, expression, range(xyplot_1, 24091, 33, 555, 555), "this.mapDatasetToDomainAxis(0,0)").
expr(xyplot_1_expr79, infix_expression, xyplot_1_stmt24, expression, range(xyplot_1, 24139, 18, 556, 556), "domainAxis != null").
expr(xyplot_1_expr82, this_expression, f_domain_axis_locations_586, expression, range(xyplot_1, 24269, 4, 560, 560), "this").
expr(xyplot_1_expr81, field_access, xyplot_1_expr80, expression, range(xyplot_1, 24269, 24, 560, 560), "this.domainAxisLocations").
expr(xyplot_1_expr80, method_invocation, xyplot_1_stmt25, expression, range(xyplot_1, 24269, 60, 560, 560), "this.domainAxisLocations.set(0,AxisLocation.BOTTOM_OR_LEFT)").
expr(xyplot_1_expr83, method_invocation, xyplot_1_stmt26, expression, range(xyplot_1, 24342, 32, 562, 562), "this.rangeAxes.set(0,rangeAxis)").
expr(xyplot_1_expr85, this_expression, f_range_axes_589, expression, range(xyplot_1, 24342, 4, 562, 562), "this").
expr(xyplot_1_expr84, field_access, xyplot_1_expr83, expression, range(xyplot_1, 24342, 14, 562, 562), "this.rangeAxes").
expr(xyplot_1_expr87, this_expression, xyplot_1_expr86, expression, range(xyplot_1, 24385, 4, 563, 563), "this").
expr(xyplot_1_expr86, method_invocation, xyplot_1_stmt27, expression, range(xyplot_1, 24385, 32, 563, 563), "this.mapDatasetToRangeAxis(0,0)").
expr(xyplot_1_expr88, infix_expression, xyplot_1_stmt28, expression, range(xyplot_1, 24432, 17, 564, 564), "rangeAxis != null").
expr(xyplot_1_expr91, this_expression, f_range_axis_locations_590, expression, range(xyplot_1, 24559, 4, 568, 568), "this").
expr(xyplot_1_expr90, field_access, xyplot_1_expr89, expression, range(xyplot_1, 24559, 23, 568, 568), "this.rangeAxisLocations").
expr(xyplot_1_expr89, method_invocation, xyplot_1_stmt29, expression, range(xyplot_1, 24559, 59, 568, 568), "this.rangeAxisLocations.set(0,AxisLocation.BOTTOM_OR_LEFT)").
expr(xyplot_1_expr92, method_invocation, xyplot_1_stmt30, expression, range(xyplot_1, 24631, 21, 570, 570), "configureDomainAxes()").
expr(xyplot_1_expr93, method_invocation, xyplot_1_stmt31, expression, range(xyplot_1, 24663, 20, 571, 571), "configureRangeAxes()").
expr(xyplot_1_expr94, assignment, xyplot_1_stmt32, expression, range(xyplot_1, 24696, 34, 573, 573), "this.domainGridlinesVisible=true").
expr(xyplot_1_expr96, this_expression, f_domain_gridlines_visible_597, expression, range(xyplot_1, 24696, 4, 573, 573), "this").
expr(xyplot_1_expr95, field_access, xyplot_1_expr94, left_hand_side, range(xyplot_1, 24696, 27, 573, 573), "this.domainGridlinesVisible").
expr(xyplot_1_expr99, this_expression, f_domain_gridline_stroke_598, expression, range(xyplot_1, 24741, 4, 574, 574), "this").
expr(xyplot_1_expr98, field_access, xyplot_1_expr97, left_hand_side, range(xyplot_1, 24741, 25, 574, 574), "this.domainGridlineStroke").
expr(xyplot_1_expr97, assignment, xyplot_1_stmt33, expression, range(xyplot_1, 24741, 51, 574, 574), "this.domainGridlineStroke=DEFAULT_GRIDLINE_STROKE").
expr(xyplot_1_expr102, this_expression, f_domain_gridline_paint_599, expression, range(xyplot_1, 24803, 4, 575, 575), "this").
expr(xyplot_1_expr101, field_access, xyplot_1_expr100, left_hand_side, range(xyplot_1, 24803, 24, 575, 575), "this.domainGridlinePaint").
expr(xyplot_1_expr100, assignment, xyplot_1_stmt34, expression, range(xyplot_1, 24803, 49, 575, 575), "this.domainGridlinePaint=DEFAULT_GRIDLINE_PAINT").
expr(xyplot_1_expr105, this_expression, f_domain_zero_baseline_visible_600, expression, range(xyplot_1, 24865, 4, 577, 577), "this").
expr(xyplot_1_expr104, field_access, xyplot_1_expr103, left_hand_side, range(xyplot_1, 24865, 30, 577, 577), "this.domainZeroBaselineVisible").
expr(xyplot_1_expr103, assignment, xyplot_1_stmt35, expression, range(xyplot_1, 24865, 38, 577, 577), "this.domainZeroBaselineVisible=false").
expr(xyplot_1_expr108, this_expression, f_domain_zero_baseline_paint_601, expression, range(xyplot_1, 24914, 4, 578, 578), "this").
expr(xyplot_1_expr107, field_access, xyplot_1_expr106, left_hand_side, range(xyplot_1, 24914, 28, 578, 578), "this.domainZeroBaselinePaint").
expr(xyplot_1_expr106, assignment, xyplot_1_stmt36, expression, range(xyplot_1, 24914, 42, 578, 578), "this.domainZeroBaselinePaint=Color.black").
expr(xyplot_1_expr112, this_expression, f_domain_zero_baseline_stroke_602, expression, range(xyplot_1, 24967, 4, 579, 579), "this").
expr(xyplot_1_expr110, field_access, xyplot_1_expr109, left_hand_side, range(xyplot_1, 24967, 29, 579, 579), "this.domainZeroBaselineStroke").
expr(xyplot_1_expr109, assignment, xyplot_1_stmt37, expression, range(xyplot_1, 24967, 53, 579, 579), "this.domainZeroBaselineStroke=new BasicStroke(0.5f)").
expr(xyplot_1_expr111, class_instance_creation, xyplot_1_expr109, right_hand_side, range(xyplot_1, 24999, 21, 579, 579), "new BasicStroke(0.5f)").
expr(xyplot_1_expr115, this_expression, f_range_gridlines_visible_603, expression, range(xyplot_1, 25033, 4, 581, 581), "this").
expr(xyplot_1_expr114, field_access, xyplot_1_expr113, left_hand_side, range(xyplot_1, 25033, 26, 581, 581), "this.rangeGridlinesVisible").
expr(xyplot_1_expr113, assignment, xyplot_1_stmt38, expression, range(xyplot_1, 25033, 33, 581, 581), "this.rangeGridlinesVisible=true").
expr(xyplot_1_expr118, this_expression, f_range_gridline_stroke_604, expression, range(xyplot_1, 25077, 4, 582, 582), "this").
expr(xyplot_1_expr117, field_access, xyplot_1_expr116, left_hand_side, range(xyplot_1, 25077, 24, 582, 582), "this.rangeGridlineStroke").
expr(xyplot_1_expr116, assignment, xyplot_1_stmt39, expression, range(xyplot_1, 25077, 50, 582, 582), "this.rangeGridlineStroke=DEFAULT_GRIDLINE_STROKE").
expr(xyplot_1_expr120, field_access, xyplot_1_expr119, left_hand_side, range(xyplot_1, 25138, 23, 583, 583), "this.rangeGridlinePaint").
expr(xyplot_1_expr121, this_expression, f_range_gridline_paint_605, expression, range(xyplot_1, 25138, 4, 583, 583), "this").
expr(xyplot_1_expr119, assignment, xyplot_1_stmt40, expression, range(xyplot_1, 25138, 48, 583, 583), "this.rangeGridlinePaint=DEFAULT_GRIDLINE_PAINT").
expr(xyplot_1_expr124, this_expression, f_range_zero_baseline_visible_606, expression, range(xyplot_1, 25199, 4, 585, 585), "this").
expr(xyplot_1_expr123, field_access, xyplot_1_expr122, left_hand_side, range(xyplot_1, 25199, 29, 585, 585), "this.rangeZeroBaselineVisible").
expr(xyplot_1_expr122, assignment, xyplot_1_stmt41, expression, range(xyplot_1, 25199, 37, 585, 585), "this.rangeZeroBaselineVisible=false").
expr(xyplot_1_expr127, this_expression, f_range_zero_baseline_paint_607, expression, range(xyplot_1, 25247, 4, 586, 586), "this").
expr(xyplot_1_expr126, field_access, xyplot_1_expr125, left_hand_side, range(xyplot_1, 25247, 27, 586, 586), "this.rangeZeroBaselinePaint").
expr(xyplot_1_expr125, assignment, xyplot_1_stmt42, expression, range(xyplot_1, 25247, 41, 586, 586), "this.rangeZeroBaselinePaint=Color.black").
expr(xyplot_1_expr131, this_expression, f_range_zero_baseline_stroke_608, expression, range(xyplot_1, 25299, 4, 587, 587), "this").
expr(xyplot_1_expr129, field_access, xyplot_1_expr128, left_hand_side, range(xyplot_1, 25299, 28, 587, 587), "this.rangeZeroBaselineStroke").
expr(xyplot_1_expr128, assignment, xyplot_1_stmt43, expression, range(xyplot_1, 25299, 52, 587, 587), "this.rangeZeroBaselineStroke=new BasicStroke(0.5f)").
expr(xyplot_1_expr130, class_instance_creation, xyplot_1_expr128, right_hand_side, range(xyplot_1, 25330, 21, 587, 587), "new BasicStroke(0.5f)").
expr(xyplot_1_expr134, this_expression, f_domain_crosshair_visible_609, expression, range(xyplot_1, 25364, 4, 589, 589), "this").
expr(xyplot_1_expr133, field_access, xyplot_1_expr132, left_hand_side, range(xyplot_1, 25364, 27, 589, 589), "this.domainCrosshairVisible").
expr(xyplot_1_expr132, assignment, xyplot_1_stmt44, expression, range(xyplot_1, 25364, 35, 589, 589), "this.domainCrosshairVisible=false").
expr(xyplot_1_expr137, this_expression, f_domain_crosshair_value_610, expression, range(xyplot_1, 25410, 4, 590, 590), "this").
expr(xyplot_1_expr136, field_access, xyplot_1_expr135, left_hand_side, range(xyplot_1, 25410, 25, 590, 590), "this.domainCrosshairValue").
expr(xyplot_1_expr135, assignment, xyplot_1_stmt45, expression, range(xyplot_1, 25410, 31, 590, 590), "this.domainCrosshairValue=0.0").
expr(xyplot_1_expr140, this_expression, f_domain_crosshair_stroke_611, expression, range(xyplot_1, 25452, 4, 591, 591), "this").
expr(xyplot_1_expr139, field_access, xyplot_1_expr138, left_hand_side, range(xyplot_1, 25452, 26, 591, 591), "this.domainCrosshairStroke").
expr(xyplot_1_expr138, assignment, xyplot_1_stmt46, expression, range(xyplot_1, 25452, 53, 591, 591), "this.domainCrosshairStroke=DEFAULT_CROSSHAIR_STROKE").
expr(xyplot_1_expr142, field_access, xyplot_1_expr141, left_hand_side, range(xyplot_1, 25516, 25, 592, 592), "this.domainCrosshairPaint").
expr(xyplot_1_expr141, assignment, xyplot_1_stmt47, expression, range(xyplot_1, 25516, 51, 592, 592), "this.domainCrosshairPaint=DEFAULT_CROSSHAIR_PAINT").
expr(xyplot_1_expr143, this_expression, f_domain_crosshair_paint_612, expression, range(xyplot_1, 25516, 4, 592, 592), "this").
expr(xyplot_1_expr146, this_expression, f_range_crosshair_visible_613, expression, range(xyplot_1, 25580, 4, 594, 594), "this").
expr(xyplot_1_expr145, field_access, xyplot_1_expr144, left_hand_side, range(xyplot_1, 25580, 26, 594, 594), "this.rangeCrosshairVisible").
expr(xyplot_1_expr144, assignment, xyplot_1_stmt48, expression, range(xyplot_1, 25580, 34, 594, 594), "this.rangeCrosshairVisible=false").
expr(xyplot_1_expr149, this_expression, f_range_crosshair_value_614, expression, range(xyplot_1, 25625, 4, 595, 595), "this").
expr(xyplot_1_expr148, field_access, xyplot_1_expr147, left_hand_side, range(xyplot_1, 25625, 24, 595, 595), "this.rangeCrosshairValue").
expr(xyplot_1_expr147, assignment, xyplot_1_stmt49, expression, range(xyplot_1, 25625, 30, 595, 595), "this.rangeCrosshairValue=0.0").
expr(xyplot_1_expr152, this_expression, f_range_crosshair_stroke_615, expression, range(xyplot_1, 25666, 4, 596, 596), "this").
expr(xyplot_1_expr151, field_access, xyplot_1_expr150, left_hand_side, range(xyplot_1, 25666, 25, 596, 596), "this.rangeCrosshairStroke").
expr(xyplot_1_expr150, assignment, xyplot_1_stmt50, expression, range(xyplot_1, 25666, 52, 596, 596), "this.rangeCrosshairStroke=DEFAULT_CROSSHAIR_STROKE").
expr(xyplot_1_expr153, assignment, xyplot_1_stmt51, expression, range(xyplot_1, 25729, 50, 597, 597), "this.rangeCrosshairPaint=DEFAULT_CROSSHAIR_PAINT").
expr(xyplot_1_expr155, this_expression, f_range_crosshair_paint_616, expression, range(xyplot_1, 25729, 4, 597, 597), "this").
expr(xyplot_1_expr154, field_access, xyplot_1_expr153, left_hand_side, range(xyplot_1, 25729, 24, 597, 597), "this.rangeCrosshairPaint").
expr(xyplot_1_expr159, this_expression, f_annotations_617, expression, range(xyplot_1, 25792, 4, 599, 599), "this").
expr(xyplot_1_expr157, field_access, xyplot_1_expr156, left_hand_side, range(xyplot_1, 25792, 16, 599, 599), "this.annotations").
expr(xyplot_1_expr156, assignment, xyplot_1_stmt52, expression, range(xyplot_1, 25792, 44, 599, 599), "this.annotations=new java.util.ArrayList()").
expr(xyplot_1_expr158, class_instance_creation, xyplot_1_expr156, right_hand_side, range(xyplot_1, 25811, 25, 599, 599), "new java.util.ArrayList()").
expr(xyplot_1_expr160, variable_declaration_expression, xyplot_1_stmt53, (initializers, 0), range(xyplot_1, 33507, 9, 860, 860), "int i=0").
expr(xyplot_1_expr161, infix_expression, xyplot_1_stmt53, expression, range(xyplot_1, 33518, 26, 860, 860), "i < this.domainAxes.size()").
expr(xyplot_1_expr164, this_expression, f_domain_axes_585, expression, range(xyplot_1, 33522, 4, 860, 860), "this").
expr(xyplot_1_expr163, field_access, xyplot_1_expr162, expression, range(xyplot_1, 33522, 15, 860, 860), "this.domainAxes").
expr(xyplot_1_expr162, method_invocation, xyplot_1_expr161, right_operand, range(xyplot_1, 33522, 22, 860, 860), "this.domainAxes.size()").
expr(xyplot_1_expr165, postfix_expression, xyplot_1_stmt53, (updaters, 0), range(xyplot_1, 33546, 3, 860, 860), "i++").
expr(xyplot_1_expr166, cast_expression, xyplot_1_code84, initializer, range(xyplot_1, 33583, 34, 861, 861), "(ValueAxis)this.domainAxes.get(i)").
expr(xyplot_1_expr169, this_expression, f_domain_axes_585, expression, range(xyplot_1, 33595, 4, 861, 861), "this").
expr(xyplot_1_expr168, field_access, xyplot_1_expr167, expression, range(xyplot_1, 33595, 15, 861, 861), "this.domainAxes").
expr(xyplot_1_expr167, method_invocation, xyplot_1_expr166, expression, range(xyplot_1, 33595, 22, 861, 861), "this.domainAxes.get(i)").
expr(xyplot_1_expr170, infix_expression, xyplot_1_stmt55, expression, range(xyplot_1, 33636, 12, 862, 862), "axis != null").
expr(xyplot_1_expr171, variable_declaration_expression, xyplot_1_stmt56, (initializers, 0), range(xyplot_1, 42529, 9, 1160, 1160), "int i=0").
expr(xyplot_1_expr172, infix_expression, xyplot_1_stmt56, expression, range(xyplot_1, 42540, 25, 1160, 1160), "i < this.rangeAxes.size()").
expr(xyplot_1_expr175, this_expression, f_range_axes_589, expression, range(xyplot_1, 42544, 4, 1160, 1160), "this").
expr(xyplot_1_expr174, field_access, xyplot_1_expr173, expression, range(xyplot_1, 42544, 14, 1160, 1160), "this.rangeAxes").
expr(xyplot_1_expr173, method_invocation, xyplot_1_expr172, right_operand, range(xyplot_1, 42544, 21, 1160, 1160), "this.rangeAxes.size()").
expr(xyplot_1_expr176, postfix_expression, xyplot_1_stmt56, (updaters, 0), range(xyplot_1, 42567, 3, 1160, 1160), "i++").
expr(xyplot_1_expr177, cast_expression, xyplot_1_code90, initializer, range(xyplot_1, 42604, 33, 1161, 1161), "(ValueAxis)this.rangeAxes.get(i)").
expr(xyplot_1_expr180, this_expression, f_range_axes_589, expression, range(xyplot_1, 42616, 4, 1161, 1161), "this").
expr(xyplot_1_expr179, field_access, xyplot_1_expr178, expression, range(xyplot_1, 42616, 14, 1161, 1161), "this.rangeAxes").
expr(xyplot_1_expr178, method_invocation, xyplot_1_expr177, expression, range(xyplot_1, 42616, 21, 1161, 1161), "this.rangeAxes.get(i)").
expr(xyplot_1_expr181, infix_expression, xyplot_1_stmt58, expression, range(xyplot_1, 42656, 12, 1162, 1162), "axis != null").
expr(xyplot_1_expr185, this_expression, f_datasets_593, expression, range(xyplot_1, 46055, 4, 1274, 1274), "this").
expr(xyplot_1_expr184, field_access, xyplot_1_expr183, expression, range(xyplot_1, 46055, 13, 1274, 1274), "this.datasets").
expr(xyplot_1_expr183, method_invocation, xyplot_1_expr182, left_operand, range(xyplot_1, 46055, 20, 1274, 1274), "this.datasets.size()").
expr(xyplot_1_expr182, infix_expression, xyplot_1_stmt60, expression, range(xyplot_1, 46055, 28, 1274, 1274), "this.datasets.size() > index").
expr(xyplot_1_expr186, assignment, xyplot_1_stmt61, expression, range(xyplot_1, 46100, 45, 1275, 1275), "result=(XYDataset)this.datasets.get(index)").
expr(xyplot_1_expr187, cast_expression, xyplot_1_expr186, right_hand_side, range(xyplot_1, 46109, 36, 1275, 1275), "(XYDataset)this.datasets.get(index)").
expr(xyplot_1_expr190, this_expression, f_datasets_593, expression, range(xyplot_1, 46121, 4, 1275, 1275), "this").
expr(xyplot_1_expr189, field_access, xyplot_1_expr188, expression, range(xyplot_1, 46121, 13, 1275, 1275), "this.datasets").
expr(xyplot_1_expr188, method_invocation, xyplot_1_expr187, expression, range(xyplot_1, 46121, 24, 1275, 1275), "this.datasets.get(index)").
expr(xyplot_1_expr195, this_expression, f_dataset_to_domain_axis_map_595, expression, range(xyplot_1, 48415, 4, 1354, 1354), "this").
expr(xyplot_1_expr194, field_access, xyplot_1_expr191, expression, range(xyplot_1, 48415, 27, 1354, 1354), "this.datasetToDomainAxisMap").
expr(xyplot_1_expr191, method_invocation, xyplot_1_stmt63, expression, range(xyplot_1, 48415, 93, 1354, 1355), "this.datasetToDomainAxisMap.put(new Integer(index),new Integer(axisIndex))").
expr(xyplot_1_expr192, class_instance_creation, xyplot_1_expr191, (arguments, 0), range(xyplot_1, 48447, 18, 1354, 1354), "new Integer(index)").
expr(xyplot_1_expr193, class_instance_creation, xyplot_1_expr191, (arguments, 1), range(xyplot_1, 48485, 22, 1355, 1355), "new Integer(axisIndex)").
expr(xyplot_1_expr196, method_invocation, xyplot_1_stmt64, expression, range(xyplot_1, 48577, 63, 1357, 1357), "datasetChanged(new DatasetChangeEvent(this,getDataset(index)))").
expr(xyplot_1_expr197, class_instance_creation, xyplot_1_expr196, (arguments, 0), range(xyplot_1, 48592, 47, 1357, 1357), "new DatasetChangeEvent(this,getDataset(index))").
expr(xyplot_1_expr198, this_expression, xyplot_1_expr197, (arguments, 0), range(xyplot_1, 48615, 4, 1357, 1357), "this").
expr(xyplot_1_expr199, method_invocation, xyplot_1_expr197, (arguments, 1), range(xyplot_1, 48621, 17, 1357, 1357), "getDataset(index)").
expr(xyplot_1_expr204, this_expression, f_dataset_to_range_axis_map_596, expression, range(xyplot_1, 49058, 4, 1370, 1370), "this").
expr(xyplot_1_expr203, field_access, xyplot_1_expr200, expression, range(xyplot_1, 49058, 26, 1370, 1370), "this.datasetToRangeAxisMap").
expr(xyplot_1_expr200, method_invocation, xyplot_1_stmt65, expression, range(xyplot_1, 49058, 92, 1370, 1371), "this.datasetToRangeAxisMap.put(new Integer(index),new Integer(axisIndex))").
expr(xyplot_1_expr201, class_instance_creation, xyplot_1_expr200, (arguments, 0), range(xyplot_1, 49089, 18, 1370, 1370), "new Integer(index)").
expr(xyplot_1_expr202, class_instance_creation, xyplot_1_expr200, (arguments, 1), range(xyplot_1, 49127, 22, 1371, 1371), "new Integer(axisIndex)").
expr(xyplot_1_expr205, method_invocation, xyplot_1_stmt66, expression, range(xyplot_1, 49219, 63, 1373, 1373), "datasetChanged(new DatasetChangeEvent(this,getDataset(index)))").
expr(xyplot_1_expr206, class_instance_creation, xyplot_1_expr205, (arguments, 0), range(xyplot_1, 49234, 47, 1373, 1373), "new DatasetChangeEvent(this,getDataset(index))").
expr(xyplot_1_expr207, this_expression, xyplot_1_expr206, (arguments, 0), range(xyplot_1, 49257, 4, 1373, 1373), "this").
expr(xyplot_1_expr208, method_invocation, xyplot_1_expr206, (arguments, 1), range(xyplot_1, 49263, 17, 1373, 1373), "getDataset(index)").
expr(xyplot_1_expr209, method_invocation, xyplot_1_stmt67, expression, range(xyplot_1, 76771, 44, 2232, 2232), "removeDomainMarker(marker,Layer.FOREGROUND)").
expr(xyplot_1_expr210, method_invocation, xyplot_1_stmt68, expression, range(xyplot_1, 77344, 36, 2248, 2248), "removeDomainMarker(0,marker,layer)").
expr(xyplot_1_expr211, method_invocation, xyplot_1_stmt69, expression, range(xyplot_1, 77921, 46, 2265, 2265), "removeDomainMarker(index,marker,layer,true)").
expr(xyplot_1_expr212, infix_expression, xyplot_1_stmt70, expression, range(xyplot_1, 78620, 25, 2285, 2285), "layer == Layer.FOREGROUND").
expr(xyplot_1_expr213, assignment, xyplot_1_stmt71, expression, range(xyplot_1, 78662, 96, 2286, 2287), "markers=(ArrayList)this.foregroundDomainMarkers.get(new Integer(index))").
expr(xyplot_1_expr214, cast_expression, xyplot_1_expr213, right_hand_side, range(xyplot_1, 78672, 86, 2286, 2287), "(ArrayList)this.foregroundDomainMarkers.get(new Integer(index))").
expr(xyplot_1_expr218, this_expression, f_foreground_domain_markers_587, expression, range(xyplot_1, 78684, 4, 2286, 2286), "this").
expr(xyplot_1_expr217, field_access, xyplot_1_expr215, expression, range(xyplot_1, 78684, 28, 2286, 2286), "this.foregroundDomainMarkers").
expr(xyplot_1_expr215, method_invocation, xyplot_1_expr214, expression, range(xyplot_1, 78684, 74, 2286, 2287), "this.foregroundDomainMarkers.get(new Integer(index))").
expr(xyplot_1_expr216, class_instance_creation, xyplot_1_expr215, (arguments, 0), range(xyplot_1, 78717, 40, 2286, 2287), "new Integer(index)").
expr(xyplot_1_expr219, method_invocation, xyplot_1_code109, initializer, range(xyplot_1, 78936, 22, 2293, 2293), "markers.remove(marker)").
expr(xyplot_1_expr220, method_invocation, xyplot_1_stmt73, expression, range(xyplot_1, 85170, 43, 2465, 2465), "removeRangeMarker(marker,Layer.FOREGROUND)").
expr(xyplot_1_expr221, method_invocation, xyplot_1_stmt74, expression, range(xyplot_1, 85740, 35, 2481, 2481), "removeRangeMarker(0,marker,layer)").
expr(xyplot_1_expr222, method_invocation, xyplot_1_stmt75, expression, range(xyplot_1, 86315, 45, 2498, 2498), "removeRangeMarker(index,marker,layer,true)").
expr(xyplot_1_expr223, infix_expression, xyplot_1_stmt76, expression, range(xyplot_1, 86972, 14, 2517, 2517), "marker == null").
expr(xyplot_1_expr224, infix_expression, xyplot_1_stmt77, expression, range(xyplot_1, 87118, 25, 2521, 2521), "layer == Layer.FOREGROUND").
expr(xyplot_1_expr225, assignment, xyplot_1_stmt78, expression, range(xyplot_1, 87160, 95, 2522, 2523), "markers=(ArrayList)this.foregroundRangeMarkers.get(new Integer(index))").
expr(xyplot_1_expr226, cast_expression, xyplot_1_expr225, right_hand_side, range(xyplot_1, 87170, 85, 2522, 2523), "(ArrayList)this.foregroundRangeMarkers.get(new Integer(index))").
expr(xyplot_1_expr230, this_expression, f_foreground_range_markers_591, expression, range(xyplot_1, 87182, 4, 2522, 2522), "this").
expr(xyplot_1_expr229, field_access, xyplot_1_expr227, expression, range(xyplot_1, 87182, 27, 2522, 2522), "this.foregroundRangeMarkers").
expr(xyplot_1_expr227, method_invocation, xyplot_1_expr226, expression, range(xyplot_1, 87182, 73, 2522, 2523), "this.foregroundRangeMarkers.get(new Integer(index))").
expr(xyplot_1_expr228, class_instance_creation, xyplot_1_expr227, (arguments, 0), range(xyplot_1, 87214, 40, 2522, 2523), "new Integer(index)").
expr(xyplot_1_expr231, method_invocation, xyplot_1_code117, initializer, range(xyplot_1, 87432, 22, 2529, 2529), "markers.remove(marker)").
expr(xyplot_1_expr232, method_invocation, xyplot_1_stmt80, expression, range(xyplot_1, 143795, 21, 4033, 4033), "configureDomainAxes()").
expr(xyplot_1_expr233, method_invocation, xyplot_1_stmt81, expression, range(xyplot_1, 143827, 20, 4034, 4034), "configureRangeAxes()").
expr(xyplot_1_expr235, method_invocation, xyplot_1_expr234, left_operand, range(xyplot_1, 143862, 11, 4035, 4035), "getParent()").
expr(xyplot_1_expr234, infix_expression, xyplot_1_stmt82, expression, range(xyplot_1, 143862, 19, 4035, 4035), "getParent() != null").
expr(xyplot_1_expr236, class_instance_creation, xyplot_1_code120, initializer, range(xyplot_1, 143993, 25, 4039, 4039), "new PlotChangeEvent(this)").
expr(xyplot_1_expr237, this_expression, xyplot_1_expr236, (arguments, 0), range(xyplot_1, 144013, 4, 4039, 4039), "this").
expr(xyplot_1_expr238, method_invocation, xyplot_1_stmt84, expression, range(xyplot_1, 144033, 47, 4040, 4040), "e.setType(ChartChangeEventType.DATASET_UPDATED)").
expr(xyplot_1_expr239, method_invocation, xyplot_1_stmt85, expression, range(xyplot_1, 144095, 18, 4041, 4041), "notifyListeners(e)").
%length_adjustment_type_1 - org.jfree.chart.util.LengthAdjustmentType
expr(length_adjustment_type_1_expr1, class_instance_creation, length_adjustment_type_1_code8, initializer, range(length_adjustment_type_1, 2028, 37, 58, 58), "new LengthAdjustmentType(\"NO_CHANGE\")").
expr(length_adjustment_type_1_expr2, class_instance_creation, length_adjustment_type_1_code14, initializer, range(length_adjustment_type_1, 2154, 34, 62, 62), "new LengthAdjustmentType(\"EXPAND\")").
expr(length_adjustment_type_1_expr3, class_instance_creation, length_adjustment_type_1_code20, initializer, range(length_adjustment_type_1, 2281, 36, 66, 66), "new LengthAdjustmentType(\"CONTRACT\")").
expr(length_adjustment_type_1_expr5, field_access, length_adjustment_type_1_expr4, left_hand_side, range(length_adjustment_type_1, 2504, 9, 77, 77), "this.name").
expr(length_adjustment_type_1_expr6, this_expression, f_name_944, expression, range(length_adjustment_type_1, 2504, 4, 77, 77), "this").
expr(length_adjustment_type_1_expr4, assignment, length_adjustment_type_1_stmt1, expression, range(length_adjustment_type_1, 2504, 16, 77, 77), "this.name=name").
%category_anchor_1 - org.jfree.chart.axis.CategoryAnchor
expr(category_anchor_1_expr1, class_instance_creation, category_anchor_1_code8, initializer, range(category_anchor_1, 2041, 42, 57, 57), "new CategoryAnchor(\"CategoryAnchor.START\")").
expr(category_anchor_1_expr2, class_instance_creation, category_anchor_1_code14, initializer, range(category_anchor_1, 2176, 43, 61, 61), "new CategoryAnchor(\"CategoryAnchor.MIDDLE\")").
expr(category_anchor_1_expr3, class_instance_creation, category_anchor_1_code20, initializer, range(category_anchor_1, 2306, 40, 65, 65), "new CategoryAnchor(\"CategoryAnchor.END\")").
expr(category_anchor_1_expr4, assignment, category_anchor_1_stmt1, expression, range(category_anchor_1, 2538, 16, 76, 76), "this.name=name").
expr(category_anchor_1_expr5, field_access, category_anchor_1_expr4, left_hand_side, range(category_anchor_1, 2538, 9, 76, 76), "this.name").
expr(category_anchor_1_expr6, this_expression, f_name_40, expression, range(category_anchor_1, 2538, 4, 76, 76), "this").
%series_rendering_order_1 - org.jfree.chart.plot.SeriesRenderingOrder
expr(series_rendering_order_1_expr1, class_instance_creation, series_rendering_order_1_code8, initializer, range(series_rendering_order_1, 2237, 56, 61, 61), "new SeriesRenderingOrder(\"SeriesRenderingOrder.FORWARD\")").
expr(series_rendering_order_1_expr2, class_instance_creation, series_rendering_order_1_code14, initializer, range(series_rendering_order_1, 2484, 56, 68, 68), "new SeriesRenderingOrder(\"SeriesRenderingOrder.REVERSE\")").
expr(series_rendering_order_1_expr4, field_access, series_rendering_order_1_expr3, left_hand_side, range(series_rendering_order_1, 2738, 9, 79, 79), "this.name").
expr(series_rendering_order_1_expr3, assignment, series_rendering_order_1_stmt1, expression, range(series_rendering_order_1, 2738, 16, 79, 79), "this.name=name").
expr(series_rendering_order_1_expr5, this_expression, f_name_552, expression, range(series_rendering_order_1, 2738, 4, 79, 79), "this").
%layer_1 - org.jfree.chart.util.Layer
expr(layer_1_expr1, class_instance_creation, layer_1_code8, initializer, range(layer_1, 1911, 29, 56, 56), "new Layer(\"Layer.FOREGROUND\")").
expr(layer_1_expr2, class_instance_creation, layer_1_code15, initializer, range(layer_1, 2009, 29, 59, 59), "new Layer(\"Layer.BACKGROUND\")").
expr(layer_1_expr5, this_expression, f_name_938, expression, range(layer_1, 2210, 4, 70, 70), "this").
expr(layer_1_expr3, assignment, layer_1_stmt1, expression, range(layer_1, 2210, 16, 70, 70), "this.name=name").
expr(layer_1_expr4, field_access, layer_1_expr3, left_hand_side, range(layer_1, 2210, 9, 70, 70), "this.name").
%plot_change_event_1 - org.jfree.chart.event.PlotChangeEvent
expr(plot_change_event_1_expr1, super_constructor_invocation, plot_change_event_1_block1, (statements, 0), range(plot_change_event_1, 2302, 12, 64, 64), "super(plot);").
expr(plot_change_event_1_expr4, this_expression, f_plot_61, expression, range(plot_change_event_1, 2324, 4, 65, 65), "this").
expr(plot_change_event_1_expr3, field_access, plot_change_event_1_expr2, left_hand_side, range(plot_change_event_1, 2324, 9, 65, 65), "this.plot").
expr(plot_change_event_1_expr2, assignment, plot_change_event_1_stmt2, expression, range(plot_change_event_1, 2324, 16, 65, 65), "this.plot=plot").
%rectangle_insets_1 - org.jfree.chart.util.RectangleInsets
expr(rectangle_insets_1_expr1, class_instance_creation, rectangle_insets_1_code8, initializer, range(rectangle_insets_1, 2395, 71, 65, 66), "new RectangleInsets(UnitType.ABSOLUTE,0.0,0.0,0.0,0.0)").
expr(rectangle_insets_1_expr2, constructor_invocation, rectangle_insets_1_block1, (statements, 0), range(rectangle_insets_1, 3342, 50, 102, 102), "this(UnitType.ABSOLUTE,top,left,bottom,right);").
expr(rectangle_insets_1_expr3, infix_expression, rectangle_insets_1_stmt2, expression, range(rectangle_insets_1, 3867, 16, 117, 117), "unitType == null").
expr(rectangle_insets_1_expr4, assignment, rectangle_insets_1_stmt3, expression, range(rectangle_insets_1, 3982, 24, 120, 120), "this.unitType=unitType").
expr(rectangle_insets_1_expr5, field_access, rectangle_insets_1_expr4, left_hand_side, range(rectangle_insets_1, 3982, 13, 120, 120), "this.unitType").
expr(rectangle_insets_1_expr6, this_expression, f_unit_type_980, expression, range(rectangle_insets_1, 3982, 4, 120, 120), "this").
expr(rectangle_insets_1_expr8, field_access, rectangle_insets_1_expr7, left_hand_side, range(rectangle_insets_1, 4016, 8, 121, 121), "this.top").
expr(rectangle_insets_1_expr9, this_expression, f_top_981, expression, range(rectangle_insets_1, 4016, 4, 121, 121), "this").
expr(rectangle_insets_1_expr7, assignment, rectangle_insets_1_stmt4, expression, range(rectangle_insets_1, 4016, 14, 121, 121), "this.top=top").
expr(rectangle_insets_1_expr10, assignment, rectangle_insets_1_stmt5, expression, range(rectangle_insets_1, 4040, 20, 122, 122), "this.bottom=bottom").
expr(rectangle_insets_1_expr11, field_access, rectangle_insets_1_expr10, left_hand_side, range(rectangle_insets_1, 4040, 11, 122, 122), "this.bottom").
expr(rectangle_insets_1_expr12, this_expression, f_bottom_982, expression, range(rectangle_insets_1, 4040, 4, 122, 122), "this").
expr(rectangle_insets_1_expr13, assignment, rectangle_insets_1_stmt6, expression, range(rectangle_insets_1, 4070, 16, 123, 123), "this.left=left").
expr(rectangle_insets_1_expr14, field_access, rectangle_insets_1_expr13, left_hand_side, range(rectangle_insets_1, 4070, 9, 123, 123), "this.left").
expr(rectangle_insets_1_expr15, this_expression, f_left_983, expression, range(rectangle_insets_1, 4070, 4, 123, 123), "this").
expr(rectangle_insets_1_expr16, assignment, rectangle_insets_1_stmt7, expression, range(rectangle_insets_1, 4096, 18, 124, 124), "this.right=right").
expr(rectangle_insets_1_expr17, field_access, rectangle_insets_1_expr16, left_hand_side, range(rectangle_insets_1, 4096, 10, 124, 124), "this.right").
expr(rectangle_insets_1_expr18, this_expression, f_right_984, expression, range(rectangle_insets_1, 4096, 4, 124, 124), "this").
%abstract_object_list_1 - org.jfree.chart.util.AbstractObjectList
expr(abstract_object_list_1_expr1, constructor_invocation, abstract_object_list_1_block1, (statements, 0), range(abstract_object_list_1, 2634, 31, 77, 77), "this(DEFAULT_INITIAL_CAPACITY);").
expr(abstract_object_list_1_expr2, constructor_invocation, abstract_object_list_1_block2, (statements, 0), range(abstract_object_list_1, 2840, 40, 86, 86), "this(initialCapacity,initialCapacity);").
expr(abstract_object_list_1_expr4, field_access, abstract_object_list_1_expr3, left_hand_side, range(abstract_object_list_1, 3111, 12, 96, 96), "this.objects").
expr(abstract_object_list_1_expr3, assignment, abstract_object_list_1_stmt3, expression, range(abstract_object_list_1, 3111, 42, 96, 96), "this.objects=new Object[initialCapacity]").
expr(abstract_object_list_1_expr6, this_expression, f_objects_925, expression, range(abstract_object_list_1, 3111, 4, 96, 96), "this").
expr(abstract_object_list_1_expr5, array_creation, abstract_object_list_1_expr3, right_hand_side, range(abstract_object_list_1, 3126, 27, 96, 96), "new Object[initialCapacity]").
expr(abstract_object_list_1_expr9, this_expression, f_increment_920, expression, range(abstract_object_list_1, 3163, 4, 97, 97), "this").
expr(abstract_object_list_1_expr8, field_access, abstract_object_list_1_expr7, left_hand_side, range(abstract_object_list_1, 3163, 14, 97, 97), "this.increment").
expr(abstract_object_list_1_expr7, assignment, abstract_object_list_1_stmt4, expression, range(abstract_object_list_1, 3163, 26, 97, 97), "this.increment=increment").
expr(abstract_object_list_1_expr11, infix_expression, abstract_object_list_1_expr10, left_operand, range(abstract_object_list_1, 3492, 10, 110, 110), "index >= 0").
expr(abstract_object_list_1_expr10, infix_expression, abstract_object_list_1_stmt6, expression, range(abstract_object_list_1, 3492, 31, 110, 110), "index >= 0 && index < this.size").
expr(abstract_object_list_1_expr12, infix_expression, abstract_object_list_1_expr10, right_operand, range(abstract_object_list_1, 3506, 17, 110, 110), "index < this.size").
expr(abstract_object_list_1_expr14, this_expression, f_size_919, expression, range(abstract_object_list_1, 3514, 4, 110, 110), "this").
expr(abstract_object_list_1_expr13, field_access, abstract_object_list_1_expr12, right_operand, range(abstract_object_list_1, 3514, 9, 110, 110), "this.size").
expr(abstract_object_list_1_expr15, assignment, abstract_object_list_1_stmt7, expression, range(abstract_object_list_1, 3539, 28, 111, 111), "result=this.objects[index]").
expr(abstract_object_list_1_expr17, field_access, abstract_object_list_1_expr16, array, range(abstract_object_list_1, 3548, 12, 111, 111), "this.objects").
expr(abstract_object_list_1_expr16, array_access, abstract_object_list_1_expr15, right_hand_side, range(abstract_object_list_1, 3548, 19, 111, 111), "this.objects[index]").
expr(abstract_object_list_1_expr18, this_expression, f_objects_925, expression, range(abstract_object_list_1, 3548, 4, 111, 111), "this").
expr(abstract_object_list_1_expr19, infix_expression, abstract_object_list_1_stmt9, expression, range(abstract_object_list_1, 3865, 9, 123, 123), "index < 0").
expr(abstract_object_list_1_expr20, infix_expression, abstract_object_list_1_stmt10, expression, range(abstract_object_list_1, 3972, 28, 126, 126), "index >= this.objects.length").
expr(abstract_object_list_1_expr22, field_access, abstract_object_list_1_expr21, expression, range(abstract_object_list_1, 3981, 12, 126, 126), "this.objects").
expr(abstract_object_list_1_expr21, field_access, abstract_object_list_1_expr20, right_operand, range(abstract_object_list_1, 3981, 19, 126, 126), "this.objects.length").
expr(abstract_object_list_1_expr23, this_expression, f_objects_925, expression, range(abstract_object_list_1, 3981, 4, 126, 126), "this").
expr(abstract_object_list_1_expr26, field_access, abstract_object_list_1_expr25, array, range(abstract_object_list_1, 4208, 12, 131, 131), "this.objects").
expr(abstract_object_list_1_expr25, array_access, abstract_object_list_1_expr24, left_hand_side, range(abstract_object_list_1, 4208, 19, 131, 131), "this.objects[index]").
expr(abstract_object_list_1_expr27, this_expression, f_objects_925, expression, range(abstract_object_list_1, 4208, 4, 131, 131), "this").
expr(abstract_object_list_1_expr24, assignment, abstract_object_list_1_stmt11, expression, range(abstract_object_list_1, 4208, 28, 131, 131), "this.objects[index]=object").
expr(abstract_object_list_1_expr28, assignment, abstract_object_list_1_stmt12, expression, range(abstract_object_list_1, 4246, 42, 132, 132), "this.size=Math.max(this.size,index + 1)").
expr(abstract_object_list_1_expr29, field_access, abstract_object_list_1_expr28, left_hand_side, range(abstract_object_list_1, 4246, 9, 132, 132), "this.size").
expr(abstract_object_list_1_expr31, this_expression, f_size_919, expression, range(abstract_object_list_1, 4246, 4, 132, 132), "this").
expr(abstract_object_list_1_expr30, method_invocation, abstract_object_list_1_expr28, right_hand_side, range(abstract_object_list_1, 4258, 30, 132, 132), "Math.max(this.size,index + 1)").
expr(abstract_object_list_1_expr32, field_access, abstract_object_list_1_expr30, (arguments, 0), range(abstract_object_list_1, 4267, 9, 132, 132), "this.size").
expr(abstract_object_list_1_expr34, this_expression, f_size_919, expression, range(abstract_object_list_1, 4267, 4, 132, 132), "this").
expr(abstract_object_list_1_expr33, infix_expression, abstract_object_list_1_expr30, (arguments, 1), range(abstract_object_list_1, 4278, 9, 132, 132), "index + 1").
expr(abstract_object_list_1_expr36, this_expression, f_size_919, expression, range(abstract_object_list_1, 4570, 4, 149, 149), "this").
expr(abstract_object_list_1_expr35, field_access, abstract_object_list_1_stmt13, expression, range(abstract_object_list_1, 4570, 9, 149, 149), "this.size").

%%% Names
%category_marker_1 - org.jfree.chart.plot.CategoryMarker
name(f_draw_as_line_62, simple_name, category_marker_1_code6, name, range(category_marker_1, 2577, 10, 72, 72), 'drawAsLine').
name(p_key_63, simple_name, category_marker_1_stmt1, (arguments, 0), range(category_marker_1, 2793, 3, 80, 80), 'key').
name(t_color_2, simple_name, q_gray_2, qualifier, range(category_marker_1, 2798, 5, 80, 80), 'Color').
name(q_gray_2, qualified_name, category_marker_1_stmt1, (arguments, 1), range(category_marker_1, 2798, 10, 80, 80), 'Color.gray').
name(p_key_65, simple_name, category_marker_1_stmt2, (arguments, 0), range(category_marker_1, 3169, 3, 91, 91), 'key').
name(p_paint_66, simple_name, category_marker_1_stmt2, (arguments, 1), range(category_marker_1, 3174, 5, 91, 91), 'paint').
name(p_stroke_67, simple_name, category_marker_1_stmt2, (arguments, 2), range(category_marker_1, 3181, 6, 91, 91), 'stroke').
name(p_paint_66, simple_name, category_marker_1_stmt2, (arguments, 3), range(category_marker_1, 3189, 5, 91, 91), 'paint').
name(p_stroke_67, simple_name, category_marker_1_stmt2, (arguments, 4), range(category_marker_1, 3196, 6, 91, 91), 'stroke').
name(p_paint_69, simple_name, category_marker_1_stmt3, (arguments, 0), range(category_marker_1, 3858, 5, 107, 107), 'paint').
name(p_stroke_70, simple_name, category_marker_1_stmt3, (arguments, 1), range(category_marker_1, 3865, 6, 107, 107), 'stroke').
name(p_outline_paint_71, simple_name, category_marker_1_stmt3, (arguments, 2), range(category_marker_1, 3873, 12, 107, 107), 'outlinePaint').
name(p_outline_stroke_72, simple_name, category_marker_1_stmt3, (arguments, 3), range(category_marker_1, 3887, 13, 107, 107), 'outlineStroke').
name(p_alpha_73, simple_name, category_marker_1_stmt3, (arguments, 4), range(category_marker_1, 3902, 5, 107, 107), 'alpha').
name(f_key_74, simple_name, category_marker_1_expr6, name, range(category_marker_1, 3924, 3, 108, 108), 'key').
name(p_key_68, simple_name, category_marker_1_expr5, right_hand_side, range(category_marker_1, 3930, 3, 108, 108), 'key').
name(m_set_label_offset_type_36, simple_name, category_marker_1_expr8, name, range(category_marker_1, 3944, 18, 109, 109), 'setLabelOffsetType').
name(t_length_adjustment_type_3, simple_name, q_expand_3, qualifier, range(category_marker_1, 3963, 20, 109, 109), 'LengthAdjustmentType').
name(q_expand_3, qualified_name, category_marker_1_expr8, (arguments, 0), range(category_marker_1, 3963, 27, 109, 109), 'LengthAdjustmentType.EXPAND').
%category_plot_tests_1 - org.jfree.chart.plot.junit.CategoryPlotTests
name(p_name_895, simple_name, category_plot_tests_1_stmt2, (arguments, 0), range(category_plot_tests_1, 4078, 4, 116, 116), 'name').
name(v_plot_896, simple_name, category_plot_tests_1_code9, name, range(category_plot_tests_1, 28749, 4, 770, 770), 'plot').
name(m_assert_false_593, simple_name, category_plot_tests_1_expr5, name, range(category_plot_tests_1, 28781, 11, 771, 771), 'assertFalse').
name(v_plot_896, simple_name, category_plot_tests_1_expr6, expression, range(category_plot_tests_1, 28793, 4, 771, 771), 'plot').
name(m_remove_domain_marker_155, simple_name, category_plot_tests_1_expr6, name, range(category_plot_tests_1, 28798, 18, 771, 771), 'removeDomainMarker').
name(v_plot_897, simple_name, category_plot_tests_1_code14, name, range(category_plot_tests_1, 29027, 4, 779, 779), 'plot').
name(m_assert_false_593, simple_name, category_plot_tests_1_expr9, name, range(category_plot_tests_1, 29059, 11, 780, 780), 'assertFalse').
name(v_plot_897, simple_name, category_plot_tests_1_expr10, expression, range(category_plot_tests_1, 29071, 4, 780, 780), 'plot').
name(m_remove_range_marker_172, simple_name, category_plot_tests_1_expr10, name, range(category_plot_tests_1, 29076, 17, 780, 780), 'removeRangeMarker').
%text_anchor_1 - org.jfree.chart.text.TextAnchor
name(f_top_left_901, simple_name, text_anchor_1_code8, name, range(text_anchor_1, 2064, 8, 58, 58), 'TOP_LEFT').
name(f_top_center_902, simple_name, text_anchor_1_code15, name, range(text_anchor_1, 2186, 10, 62, 62), 'TOP_CENTER').
name(f_top_right_903, simple_name, text_anchor_1_code22, name, range(text_anchor_1, 2311, 9, 66, 66), 'TOP_RIGHT').
name(f_half_ascent_left_904, simple_name, text_anchor_1_code29, name, range(text_anchor_1, 2441, 16, 70, 70), 'HALF_ASCENT_LEFT').
name(f_half_ascent_center_905, simple_name, text_anchor_1_code36, name, range(text_anchor_1, 2587, 18, 74, 74), 'HALF_ASCENT_CENTER').
name(f_half_ascent_right_906, simple_name, text_anchor_1_code43, name, range(text_anchor_1, 2736, 17, 78, 78), 'HALF_ASCENT_RIGHT').
name(f_center_left_907, simple_name, text_anchor_1_code50, name, range(text_anchor_1, 2877, 11, 82, 82), 'CENTER_LEFT').
name(f_center_908, simple_name, text_anchor_1_code57, name, range(text_anchor_1, 3008, 6, 86, 86), 'CENTER').
name(f_center_right_909, simple_name, text_anchor_1_code64, name, range(text_anchor_1, 3115, 12, 89, 89), 'CENTER_RIGHT').
name(f_baseline_left_910, simple_name, text_anchor_1_code71, name, range(text_anchor_1, 3248, 13, 93, 93), 'BASELINE_LEFT').
name(f_baseline_center_911, simple_name, text_anchor_1_code78, name, range(text_anchor_1, 3385, 15, 97, 97), 'BASELINE_CENTER').
name(f_baseline_right_912, simple_name, text_anchor_1_code85, name, range(text_anchor_1, 3525, 14, 101, 101), 'BASELINE_RIGHT').
name(f_bottom_left_913, simple_name, text_anchor_1_code92, name, range(text_anchor_1, 3660, 11, 105, 105), 'BOTTOM_LEFT').
name(f_bottom_center_914, simple_name, text_anchor_1_code99, name, range(text_anchor_1, 3791, 13, 109, 109), 'BOTTOM_CENTER').
name(f_bottom_right_915, simple_name, text_anchor_1_code106, name, range(text_anchor_1, 3925, 12, 113, 113), 'BOTTOM_RIGHT').
name(m_text_anchor_622, simple_name, text_anchor_1_code108, name, range(text_anchor_1, 4137, 10, 124, 124), 'TextAnchor').
name(p_name_916, simple_name, text_anchor_1_code110, name, range(text_anchor_1, 4155, 4, 124, 124), 'name').
name(f_name_917, simple_name, text_anchor_1_expr17, name, range(text_anchor_1, 4176, 4, 125, 125), 'name').
name(p_name_916, simple_name, text_anchor_1_expr16, right_hand_side, range(text_anchor_1, 4183, 4, 125, 125), 'name').
%xyplot_tests_1 - org.jfree.chart.plot.junit.XYPlotTests
name(p_name_898, simple_name, xyplot_tests_1_stmt2, (arguments, 0), range(xyplot_tests_1, 4464, 4, 125, 125), 'name').
name(v_plot_899, simple_name, xyplot_tests_1_code9, name, range(xyplot_tests_1, 38034, 4, 1027, 1027), 'plot').
name(m_assert_false_593, simple_name, xyplot_tests_1_expr5, name, range(xyplot_tests_1, 38060, 11, 1028, 1028), 'assertFalse').
name(v_plot_899, simple_name, xyplot_tests_1_expr6, expression, range(xyplot_tests_1, 38072, 4, 1028, 1028), 'plot').
name(m_remove_domain_marker_474, simple_name, xyplot_tests_1_expr6, name, range(xyplot_tests_1, 38077, 18, 1028, 1028), 'removeDomainMarker').
name(v_plot_900, simple_name, xyplot_tests_1_code14, name, range(xyplot_tests_1, 38288, 4, 1036, 1036), 'plot').
name(m_assert_false_593, simple_name, xyplot_tests_1_expr9, name, range(xyplot_tests_1, 38314, 11, 1037, 1037), 'assertFalse').
name(v_plot_900, simple_name, xyplot_tests_1_expr10, expression, range(xyplot_tests_1, 38326, 4, 1037, 1037), 'plot').
name(m_remove_range_marker_484, simple_name, xyplot_tests_1_expr10, name, range(xyplot_tests_1, 38331, 17, 1037, 1037), 'removeRangeMarker').
%marker_1 - org.jfree.chart.plot.Marker
name(f_label_416, simple_name, marker_1_code6, name, range(marker_1, 4443, 5, 115, 115), 'label').
name(q_gray_18, qualified_name, marker_1_stmt1, (arguments, 0), range(marker_1, 5239, 10, 144, 144), 'Color.gray').
name(t_color_2, simple_name, q_gray_18, qualifier, range(marker_1, 5239, 5, 144, 144), 'Color').
name(p_paint_417, simple_name, marker_1_stmt2, (arguments, 0), range(marker_1, 5438, 5, 153, 153), 'paint').
name(q_gray_18, qualified_name, marker_1_stmt2, (arguments, 2), range(marker_1, 5468, 10, 153, 153), 'Color.gray').
name(t_color_2, simple_name, q_gray_18, qualifier, range(marker_1, 5468, 5, 153, 153), 'Color').
name(p_alpha_422, simple_name, marker_1_code12, name, range(marker_1, 6330, 5, 173, 173), 'alpha').
name(p_paint_418, simple_name, marker_1_expr5, left_operand, range(marker_1, 6354, 5, 175, 175), 'paint').
name(p_stroke_419, simple_name, marker_1_expr6, left_operand, range(marker_1, 6470, 6, 178, 178), 'stroke').
name(p_alpha_422, simple_name, marker_1_expr8, left_operand, range(marker_1, 6588, 5, 181, 181), 'alpha').
name(p_alpha_422, simple_name, marker_1_expr9, left_operand, range(marker_1, 6604, 5, 181, 181), 'alpha').
name(f_paint_423, simple_name, marker_1_expr11, name, range(marker_1, 6768, 5, 185, 185), 'paint').
name(p_paint_418, simple_name, marker_1_expr10, right_hand_side, range(marker_1, 6776, 5, 185, 185), 'paint').
name(f_stroke_424, simple_name, marker_1_expr14, name, range(marker_1, 6797, 6, 186, 186), 'stroke').
name(p_stroke_419, simple_name, marker_1_expr13, right_hand_side, range(marker_1, 6806, 6, 186, 186), 'stroke').
name(f_outline_paint_425, simple_name, marker_1_expr17, name, range(marker_1, 6828, 12, 187, 187), 'outlinePaint').
name(p_outline_paint_420, simple_name, marker_1_expr16, right_hand_side, range(marker_1, 6843, 12, 187, 187), 'outlinePaint').
name(f_outline_stroke_426, simple_name, marker_1_expr20, name, range(marker_1, 6871, 13, 188, 188), 'outlineStroke').
name(p_outline_stroke_421, simple_name, marker_1_expr19, right_hand_side, range(marker_1, 6887, 13, 188, 188), 'outlineStroke').
name(f_alpha_427, simple_name, marker_1_expr23, name, range(marker_1, 6916, 5, 189, 189), 'alpha').
name(p_alpha_422, simple_name, marker_1_expr22, right_hand_side, range(marker_1, 6924, 5, 189, 189), 'alpha').
name(f_label_font_428, simple_name, marker_1_expr26, name, range(marker_1, 6955, 9, 191, 191), 'labelFont').
name(t_font_9, simple_name, q_plain_18, qualifier, range(marker_1, 6989, 4, 191, 191), 'Font').
name(q_plain_18, qualified_name, marker_1_expr27, (arguments, 1), range(marker_1, 6989, 10, 191, 191), 'Font.PLAIN').
name(f_label_paint_429, simple_name, marker_1_expr30, name, range(marker_1, 7019, 10, 192, 192), 'labelPaint').
name(t_color_2, simple_name, q_black_18, qualifier, range(marker_1, 7032, 5, 192, 192), 'Color').
name(q_black_18, qualified_name, marker_1_expr29, right_hand_side, range(marker_1, 7032, 11, 192, 192), 'Color.black').
name(f_label_anchor_430, simple_name, marker_1_expr33, name, range(marker_1, 7059, 11, 193, 193), 'labelAnchor').
name(t_rectangle_anchor_10, simple_name, q_top_left_19, qualifier, range(marker_1, 7073, 15, 193, 193), 'RectangleAnchor').
name(q_top_left_19, qualified_name, marker_1_expr32, right_hand_side, range(marker_1, 7073, 24, 193, 193), 'RectangleAnchor.TOP_LEFT').
name(f_label_offset_431, simple_name, marker_1_expr36, name, range(marker_1, 7113, 11, 194, 194), 'labelOffset').
name(f_label_offset_type_432, simple_name, marker_1_expr40, name, range(marker_1, 7182, 15, 195, 195), 'labelOffsetType').
name(q_contract_20, qualified_name, marker_1_expr39, right_hand_side, range(marker_1, 7200, 29, 195, 195), 'LengthAdjustmentType.CONTRACT').
name(t_length_adjustment_type_3, simple_name, q_contract_20, qualifier, range(marker_1, 7200, 20, 195, 195), 'LengthAdjustmentType').
name(f_label_text_anchor_433, simple_name, marker_1_expr43, name, range(marker_1, 7245, 15, 196, 196), 'labelTextAnchor').
name(t_text_anchor_11, simple_name, q_center_21, qualifier, range(marker_1, 7263, 10, 196, 196), 'TextAnchor').
name(q_center_21, qualified_name, marker_1_expr42, right_hand_side, range(marker_1, 7263, 17, 196, 196), 'TextAnchor.CENTER').
name(f_listener_list_434, simple_name, marker_1_expr46, name, range(marker_1, 7306, 12, 198, 198), 'listenerList').
name(p_adj_445, simple_name, marker_1_expr49, left_operand, range(marker_1, 15651, 3, 490, 490), 'adj').
name(f_label_offset_type_432, simple_name, marker_1_expr51, name, range(marker_1, 15764, 15, 493, 493), 'labelOffsetType').
name(p_adj_445, simple_name, marker_1_expr50, right_hand_side, range(marker_1, 15782, 3, 493, 493), 'adj').
name(m_notify_listeners_286, simple_name, marker_1_expr53, name, range(marker_1, 15800, 15, 494, 494), 'notifyListeners').
name(f_listener_list_434, simple_name, marker_1_expr58, name, range(marker_1, 17020, 12, 534, 534), 'listenerList').
name(m_add_289, simple_name, marker_1_expr56, name, range(marker_1, 17033, 3, 534, 534), 'add').
name(p_listener_447, simple_name, marker_1_expr56, (arguments, 1), range(marker_1, 17065, 8, 534, 534), 'listener').
name(v_listeners_450, simple_name, marker_1_code25, name, range(marker_1, 17757, 9, 559, 559), 'listeners').
name(f_listener_list_434, simple_name, marker_1_expr61, name, range(marker_1, 17774, 12, 559, 559), 'listenerList').
name(m_get_listener_list_291, simple_name, marker_1_expr60, name, range(marker_1, 17787, 15, 559, 559), 'getListenerList').
name(v_i_451, simple_name, marker_1_code27, name, range(marker_1, 17824, 1, 560, 560), 'i').
name(q_length_22, qualified_name, marker_1_expr64, left_operand, range(marker_1, 17828, 16, 560, 560), 'listeners.length').
name(v_listeners_450, simple_name, q_length_22, qualifier, range(marker_1, 17828, 9, 560, 560), 'listeners').
name(v_i_451, simple_name, marker_1_expr65, left_operand, range(marker_1, 17850, 1, 560, 560), 'i').
name(v_i_451, simple_name, marker_1_expr66, left_hand_side, range(marker_1, 17858, 1, 560, 560), 'i').
%value_marker_1 - org.jfree.chart.plot.ValueMarker
name(f_value_555, simple_name, value_marker_1_expr3, name, range(value_marker_1, 2329, 5, 69, 69), 'value').
name(p_value_554, simple_name, value_marker_1_expr2, right_hand_side, range(value_marker_1, 2337, 5, 69, 69), 'value').
name(p_paint_560, simple_name, value_marker_1_stmt3, (arguments, 0), range(value_marker_1, 3349, 5, 95, 95), 'paint').
name(p_stroke_561, simple_name, value_marker_1_stmt3, (arguments, 1), range(value_marker_1, 3356, 6, 95, 95), 'stroke').
name(p_outline_paint_562, simple_name, value_marker_1_stmt3, (arguments, 2), range(value_marker_1, 3364, 12, 95, 95), 'outlinePaint').
name(p_outline_stroke_563, simple_name, value_marker_1_stmt3, (arguments, 3), range(value_marker_1, 3378, 13, 95, 95), 'outlineStroke').
name(p_alpha_564, simple_name, value_marker_1_stmt3, (arguments, 4), range(value_marker_1, 3393, 5, 95, 95), 'alpha').
name(f_value_555, simple_name, value_marker_1_expr7, name, range(value_marker_1, 3415, 5, 96, 96), 'value').
name(p_value_559, simple_name, value_marker_1_expr6, right_hand_side, range(value_marker_1, 3423, 5, 96, 96), 'value').
%sort_order_1 - org.jfree.chart.util.SortOrder
name(f_ascending_1010, simple_name, sort_order_1_code8, name, range(sort_order_1, 2100, 9, 59, 59), 'ASCENDING').
name(f_descending_1011, simple_name, sort_order_1_code15, name, range(sort_order_1, 2227, 10, 63, 63), 'DESCENDING').
name(m_sort_order_687, simple_name, sort_order_1_code17, name, range(sort_order_1, 2433, 9, 74, 74), 'SortOrder').
name(p_name_1012, simple_name, sort_order_1_code19, name, range(sort_order_1, 2450, 4, 74, 74), 'name').
name(f_name_1013, simple_name, sort_order_1_expr4, name, range(sort_order_1, 2471, 4, 75, 75), 'name').
name(p_name_1012, simple_name, sort_order_1_expr3, right_hand_side, range(sort_order_1, 2478, 4, 75, 75), 'name').
%plot_1 - org.jfree.chart.plot.Plot
name(f_zero_456, simple_name, plot_1_code8, name, range(plot_1, 9258, 4, 191, 191), 'ZERO').
name(f_default_insets_457, simple_name, plot_1_code15, name, range(plot_1, 9356, 14, 194, 194), 'DEFAULT_INSETS').
name(f_default_outline_stroke_458, simple_name, plot_1_code21, name, range(plot_1, 9502, 22, 198, 198), 'DEFAULT_OUTLINE_STROKE').
name(f_default_outline_paint_459, simple_name, plot_1_code28, name, range(plot_1, 9622, 21, 201, 201), 'DEFAULT_OUTLINE_PAINT').
name(q_gray_23, qualified_name, plot_1_code28, initializer, range(plot_1, 9646, 10, 201, 201), 'Color.gray').
name(t_color_2, simple_name, q_gray_23, qualifier, range(plot_1, 9646, 5, 201, 201), 'Color').
name(f_default_background_paint_460, simple_name, plot_1_code34, name, range(plot_1, 9975, 24, 210, 210), 'DEFAULT_BACKGROUND_PAINT').
name(q_light_gray_23, qualified_name, plot_1_code34, initializer, range(plot_1, 10002, 16, 210, 210), 'Color.LIGHT_GRAY').
name(t_color_2, simple_name, q_light_gray_23, qualifier, range(plot_1, 10002, 5, 210, 210), 'Color').
name(f_default_legend_item_box_461, simple_name, plot_1_code40, name, range(plot_1, 10357, 23, 219, 219), 'DEFAULT_LEGEND_ITEM_BOX').
name(f_default_legend_item_circle_462, simple_name, plot_1_code46, name, range(plot_1, 10533, 26, 223, 223), 'DEFAULT_LEGEND_ITEM_CIRCLE').
name(f_background_image_alignment_463, simple_name, plot_1_code50, name, range(plot_1, 11932, 24, 264, 264), 'backgroundImageAlignment').
name(q_fit_24, qualified_name, plot_1_code50, initializer, range(plot_1, 11959, 9, 264, 264), 'Align.FIT').
name(t_align_12, simple_name, q_fit_24, qualifier, range(plot_1, 11959, 5, 264, 264), 'Align').
name(f_background_image_alpha_464, simple_name, plot_1_code54, name, range(plot_1, 12054, 20, 267, 267), 'backgroundImageAlpha').
name(m_plot_46, simple_name, plot_1_code55, name, range(plot_1, 12528, 4, 284, 284), 'Plot').
name(f_parent_465, simple_name, plot_1_expr7, name, range(plot_1, 12553, 6, 286, 286), 'parent').
name(f_insets_466, simple_name, plot_1_expr10, name, range(plot_1, 12582, 6, 287, 287), 'insets').
name(f_default_insets_457, simple_name, plot_1_expr9, right_hand_side, range(plot_1, 12591, 14, 287, 287), 'DEFAULT_INSETS').
name(f_background_paint_467, simple_name, plot_1_expr13, name, range(plot_1, 12621, 15, 288, 288), 'backgroundPaint').
name(f_default_background_paint_460, simple_name, plot_1_expr12, right_hand_side, range(plot_1, 12639, 24, 288, 288), 'DEFAULT_BACKGROUND_PAINT').
name(f_background_alpha_468, simple_name, plot_1_expr16, name, range(plot_1, 12679, 15, 289, 289), 'backgroundAlpha').
name(f_default_background_alpha_469, simple_name, plot_1_expr15, right_hand_side, range(plot_1, 12697, 24, 289, 289), 'DEFAULT_BACKGROUND_ALPHA').
name(f_background_image_470, simple_name, plot_1_expr19, name, range(plot_1, 12737, 15, 290, 290), 'backgroundImage').
name(f_outline_visible_471, simple_name, plot_1_expr22, name, range(plot_1, 12775, 14, 291, 291), 'outlineVisible').
name(f_outline_stroke_472, simple_name, plot_1_expr25, name, range(plot_1, 12812, 13, 292, 292), 'outlineStroke').
name(f_default_outline_stroke_458, simple_name, plot_1_expr24, right_hand_side, range(plot_1, 12828, 22, 292, 292), 'DEFAULT_OUTLINE_STROKE').
name(f_outline_paint_473, simple_name, plot_1_expr28, name, range(plot_1, 12866, 12, 293, 293), 'outlinePaint').
name(f_default_outline_paint_459, simple_name, plot_1_expr27, right_hand_side, range(plot_1, 12881, 21, 293, 293), 'DEFAULT_OUTLINE_PAINT').
name(f_foreground_alpha_474, simple_name, plot_1_expr31, name, range(plot_1, 12918, 15, 294, 294), 'foregroundAlpha').
name(f_default_foreground_alpha_475, simple_name, plot_1_expr30, right_hand_side, range(plot_1, 12936, 24, 294, 294), 'DEFAULT_FOREGROUND_ALPHA').
name(f_no_data_message_476, simple_name, plot_1_expr34, name, range(plot_1, 12978, 13, 296, 296), 'noDataMessage').
name(f_no_data_message_font_477, simple_name, plot_1_expr37, name, range(plot_1, 13014, 17, 297, 297), 'noDataMessageFont').
name(q_plain_25, qualified_name, plot_1_expr38, (arguments, 1), range(plot_1, 13056, 10, 297, 297), 'Font.PLAIN').
name(t_font_9, simple_name, q_plain_25, qualifier, range(plot_1, 13056, 4, 297, 297), 'Font').
name(f_no_data_message_paint_478, simple_name, plot_1_expr41, name, range(plot_1, 13087, 18, 298, 298), 'noDataMessagePaint').
name(t_color_2, simple_name, q_black_25, qualifier, range(plot_1, 13108, 5, 298, 298), 'Color').
name(q_black_25, qualified_name, plot_1_expr40, right_hand_side, range(plot_1, 13108, 11, 298, 298), 'Color.black').
name(f_drawing_supplier_479, simple_name, plot_1_expr44, name, range(plot_1, 13137, 15, 300, 300), 'drawingSupplier').
name(f_listener_list_480, simple_name, plot_1_expr48, name, range(plot_1, 13201, 12, 302, 302), 'listenerList').
name(f_parent_465, simple_name, plot_1_expr51, name, range(plot_1, 17012, 6, 433, 433), 'parent').
name(v_listeners_502, simple_name, plot_1_code65, name, range(plot_1, 30646, 9, 888, 888), 'listeners').
name(f_listener_list_480, simple_name, plot_1_expr54, name, range(plot_1, 30663, 12, 888, 888), 'listenerList').
name(m_get_listener_list_291, simple_name, plot_1_expr53, name, range(plot_1, 30676, 15, 888, 888), 'getListenerList').
name(v_i_503, simple_name, plot_1_code67, name, range(plot_1, 30713, 1, 889, 889), 'i').
name(q_length_25, qualified_name, plot_1_expr57, left_operand, range(plot_1, 30717, 16, 889, 889), 'listeners.length').
name(v_listeners_502, simple_name, q_length_25, qualifier, range(plot_1, 30717, 9, 889, 889), 'listeners').
name(v_i_503, simple_name, plot_1_expr58, left_operand, range(plot_1, 30739, 1, 889, 889), 'i').
name(v_i_503, simple_name, plot_1_expr59, left_hand_side, range(plot_1, 30747, 1, 889, 889), 'i').
name(m_notify_listeners_145, simple_name, plot_1_expr60, name, range(plot_1, 31101, 15, 902, 902), 'notifyListeners').
%chart_change_event_1 - org.jfree.chart.event.ChartChangeEvent
name(p_source_42, simple_name, chart_change_event_1_stmt1, (arguments, 0), range(chart_change_event_1, 2490, 6, 69, 69), 'source').
name(q_general_1, qualified_name, chart_change_event_1_stmt1, (arguments, 2), range(chart_change_event_1, 2504, 28, 69, 69), 'ChartChangeEventType.GENERAL').
name(t_chart_change_event_type_1, simple_name, q_general_1, qualifier, range(chart_change_event_1, 2504, 20, 69, 69), 'ChartChangeEventType').
name(p_source_46, simple_name, chart_change_event_1_stmt2, (arguments, 0), range(chart_change_event_1, 3334, 6, 93, 93), 'source').
name(f_chart_49, simple_name, chart_change_event_1_expr4, name, range(chart_change_event_1, 3357, 5, 94, 94), 'chart').
name(p_chart_47, simple_name, chart_change_event_1_expr3, right_hand_side, range(chart_change_event_1, 3365, 5, 94, 94), 'chart').
name(f_type_50, simple_name, chart_change_event_1_expr7, name, range(chart_change_event_1, 3386, 4, 95, 95), 'type').
name(p_type_48, simple_name, chart_change_event_1_expr6, right_hand_side, range(chart_change_event_1, 3393, 4, 95, 95), 'type').
name(f_type_50, simple_name, chart_change_event_1_expr10, name, range(chart_change_event_1, 4180, 4, 131, 131), 'type').
name(p_type_52, simple_name, chart_change_event_1_expr9, right_hand_side, range(chart_change_event_1, 4187, 4, 131, 131), 'type').
%rectangle_anchor_1 - org.jfree.chart.util.RectangleAnchor
name(f_center_951, simple_name, rectangle_anchor_1_code8, name, range(rectangle_anchor_1, 2244, 6, 63, 63), 'CENTER').
name(f_top_952, simple_name, rectangle_anchor_1_code14, name, range(rectangle_anchor_1, 2366, 3, 67, 67), 'TOP').
name(f_top_left_953, simple_name, rectangle_anchor_1_code20, name, range(rectangle_anchor_1, 2487, 8, 71, 71), 'TOP_LEFT').
name(f_top_right_954, simple_name, rectangle_anchor_1_code26, name, range(rectangle_anchor_1, 2619, 9, 75, 75), 'TOP_RIGHT').
name(f_bottom_955, simple_name, rectangle_anchor_1_code32, name, range(rectangle_anchor_1, 2750, 6, 79, 79), 'BOTTOM').
name(f_bottom_left_956, simple_name, rectangle_anchor_1_code38, name, range(rectangle_anchor_1, 2880, 11, 83, 83), 'BOTTOM_LEFT').
name(f_bottom_right_957, simple_name, rectangle_anchor_1_code44, name, range(rectangle_anchor_1, 3021, 12, 87, 87), 'BOTTOM_RIGHT').
name(f_left_958, simple_name, rectangle_anchor_1_code50, name, range(rectangle_anchor_1, 3156, 4, 91, 91), 'LEFT').
name(f_right_959, simple_name, rectangle_anchor_1_code56, name, range(rectangle_anchor_1, 3276, 5, 95, 95), 'RIGHT').
name(m_rectangle_anchor_652, simple_name, rectangle_anchor_1_code57, name, range(rectangle_anchor_1, 3480, 15, 106, 106), 'RectangleAnchor').
name(p_name_960, simple_name, rectangle_anchor_1_code59, name, range(rectangle_anchor_1, 3509, 4, 106, 106), 'name').
name(f_name_961, simple_name, rectangle_anchor_1_expr11, name, range(rectangle_anchor_1, 3530, 4, 107, 107), 'name').
name(p_name_960, simple_name, rectangle_anchor_1_expr10, right_hand_side, range(rectangle_anchor_1, 3537, 4, 107, 107), 'name').
%category_plot_1 - org.jfree.chart.plot.CategoryPlot
name(f_default_gridline_stroke_78, simple_name, category_plot_1_code8, name, range(category_plot_1, 12520, 23, 251, 251), 'DEFAULT_GRIDLINE_STROKE').
name(q_cap_butt_4, qualified_name, category_plot_1_expr1, (arguments, 1), range(category_plot_1, 12581, 20, 252, 252), 'BasicStroke.CAP_BUTT').
name(q_join_bevel_5, qualified_name, category_plot_1_expr1, (arguments, 2), range(category_plot_1, 12603, 22, 252, 252), 'BasicStroke.JOIN_BEVEL').
name(f_default_gridline_paint_79, simple_name, category_plot_1_code15, name, range(category_plot_1, 12754, 22, 256, 256), 'DEFAULT_GRIDLINE_PAINT').
name(q_white_6, qualified_name, category_plot_1_code15, initializer, range(category_plot_1, 12779, 11, 256, 256), 'Color.WHITE').
name(t_color_2, simple_name, q_white_6, qualifier, range(category_plot_1, 12779, 5, 256, 256), 'Color').
name(f_default_value_label_font_80, simple_name, category_plot_1_code21, name, range(category_plot_1, 12866, 24, 259, 259), 'DEFAULT_VALUE_LABEL_FONT').
name(q_plain_7, qualified_name, category_plot_1_expr3, (arguments, 1), range(category_plot_1, 12929, 10, 260, 260), 'Font.PLAIN').
name(f_default_crosshair_stroke_81, simple_name, category_plot_1_code28, name, range(category_plot_1, 13230, 24, 274, 274), 'DEFAULT_CROSSHAIR_STROKE').
name(f_default_gridline_stroke_78, simple_name, category_plot_1_code28, initializer, range(category_plot_1, 13270, 23, 275, 275), 'DEFAULT_GRIDLINE_STROKE').
name(f_default_crosshair_paint_82, simple_name, category_plot_1_code34, name, range(category_plot_1, 13415, 23, 282, 282), 'DEFAULT_CROSSHAIR_PAINT').
name(q_blue_8, qualified_name, category_plot_1_code34, initializer, range(category_plot_1, 13441, 10, 282, 282), 'Color.blue').
name(t_color_2, simple_name, q_blue_8, qualifier, range(category_plot_1, 13441, 5, 282, 282), 'Color').
name(f_localization_resources_83, simple_name, category_plot_1_code39, name, range(category_plot_1, 13545, 21, 285, 285), 'localizationResources').
name(f_rendering_order_84, simple_name, category_plot_1_code43, name, range(category_plot_1, 14858, 14, 326, 326), 'renderingOrder').
name(q_reverse_9, qualified_name, category_plot_1_code43, initializer, range(category_plot_1, 14889, 29, 327, 327), 'DatasetRenderingOrder.REVERSE').
name(f_column_rendering_order_85, simple_name, category_plot_1_code47, name, range(category_plot_1, 15067, 20, 333, 333), 'columnRenderingOrder').
name(q_ascending_10, qualified_name, category_plot_1_code47, initializer, range(category_plot_1, 15090, 19, 333, 333), 'SortOrder.ASCENDING').
name(t_sort_order_4, simple_name, q_ascending_10, qualifier, range(category_plot_1, 15090, 9, 333, 333), 'SortOrder').
name(f_row_rendering_order_86, simple_name, category_plot_1_code51, name, range(category_plot_1, 15259, 17, 339, 339), 'rowRenderingOrder').
name(t_sort_order_4, simple_name, q_ascending_11, qualifier, range(category_plot_1, 15279, 9, 339, 339), 'SortOrder').
name(q_ascending_11, qualified_name, category_plot_1_code51, initializer, range(category_plot_1, 15279, 19, 339, 339), 'SortOrder.ASCENDING').
name(f_range_crosshair_locked_on_data_87, simple_name, category_plot_1_code55, name, range(category_plot_1, 16844, 26, 387, 387), 'rangeCrosshairLockedOnData').
name(f_orientation_92, simple_name, category_plot_1_expr8, name, range(category_plot_1, 18795, 11, 449, 449), 'orientation').
name(t_plot_orientation_5, simple_name, q_vertical_11, qualifier, range(category_plot_1, 18809, 15, 449, 449), 'PlotOrientation').
name(q_vertical_11, qualified_name, category_plot_1_expr7, right_hand_side, range(category_plot_1, 18809, 24, 449, 449), 'PlotOrientation.VERTICAL').
name(f_domain_axes_93, simple_name, category_plot_1_expr11, name, range(category_plot_1, 18912, 10, 452, 452), 'domainAxes').
name(f_domain_axis_locations_94, simple_name, category_plot_1_expr15, name, range(category_plot_1, 18957, 19, 453, 453), 'domainAxisLocations').
name(f_range_axes_95, simple_name, category_plot_1_expr19, name, range(category_plot_1, 19011, 9, 454, 454), 'rangeAxes').
name(f_range_axis_locations_96, simple_name, category_plot_1_expr23, name, range(category_plot_1, 19055, 18, 455, 455), 'rangeAxisLocations').
name(f_dataset_to_domain_axis_map_97, simple_name, category_plot_1_expr27, name, range(category_plot_1, 19118, 22, 457, 457), 'datasetToDomainAxisMap').
name(f_dataset_to_range_axis_map_98, simple_name, category_plot_1_expr31, name, range(category_plot_1, 19175, 21, 458, 458), 'datasetToRangeAxisMap').
name(f_renderers_99, simple_name, category_plot_1_expr35, name, range(category_plot_1, 19233, 9, 460, 460), 'renderers').
name(f_datasets_100, simple_name, category_plot_1_expr39, name, range(category_plot_1, 19279, 8, 462, 462), 'datasets').
name(f_datasets_100, simple_name, category_plot_1_expr43, name, range(category_plot_1, 19322, 8, 463, 463), 'datasets').
name(m_set_48, simple_name, category_plot_1_expr42, name, range(category_plot_1, 19331, 3, 463, 463), 'set').
name(p_dataset_88, simple_name, category_plot_1_expr42, (arguments, 1), range(category_plot_1, 19338, 7, 463, 463), 'dataset').
name(p_dataset_88, simple_name, category_plot_1_expr45, left_operand, range(category_plot_1, 19361, 7, 464, 464), 'dataset').
name(f_axis_offset_101, simple_name, category_plot_1_expr47, name, range(category_plot_1, 19453, 10, 468, 468), 'axisOffset').
name(m_set_domain_axis_location_50, simple_name, category_plot_1_expr50, name, range(category_plot_1, 19518, 21, 470, 470), 'setDomainAxisLocation').
name(q_bottom_or_left_12, qualified_name, category_plot_1_expr50, (arguments, 0), range(category_plot_1, 19540, 27, 470, 470), 'AxisLocation.BOTTOM_OR_LEFT').
name(t_axis_location_6, simple_name, q_bottom_or_left_12, qualifier, range(category_plot_1, 19540, 12, 470, 470), 'AxisLocation').
name(m_set_range_axis_location_51, simple_name, category_plot_1_expr51, name, range(category_plot_1, 19586, 20, 471, 471), 'setRangeAxisLocation').
name(t_axis_location_6, simple_name, q_top_or_left_13, qualifier, range(category_plot_1, 19607, 12, 471, 471), 'AxisLocation').
name(q_top_or_left_13, qualified_name, category_plot_1_expr51, (arguments, 0), range(category_plot_1, 19607, 24, 471, 471), 'AxisLocation.TOP_OR_LEFT').
name(f_renderers_99, simple_name, category_plot_1_expr53, name, range(category_plot_1, 19657, 9, 473, 473), 'renderers').
name(m_set_48, simple_name, category_plot_1_expr52, name, range(category_plot_1, 19667, 3, 473, 473), 'set').
name(p_renderer_91, simple_name, category_plot_1_expr52, (arguments, 1), range(category_plot_1, 19674, 8, 473, 473), 'renderer').
name(p_renderer_91, simple_name, category_plot_1_expr55, left_operand, range(category_plot_1, 19698, 8, 474, 474), 'renderer').
name(f_domain_axes_93, simple_name, category_plot_1_expr57, name, range(category_plot_1, 19829, 10, 479, 479), 'domainAxes').
name(m_set_48, simple_name, category_plot_1_expr56, name, range(category_plot_1, 19840, 3, 479, 479), 'set').
name(p_domain_axis_89, simple_name, category_plot_1_expr56, (arguments, 1), range(category_plot_1, 19847, 10, 479, 479), 'domainAxis').
name(m_map_dataset_to_domain_axis_52, simple_name, category_plot_1_expr59, name, range(category_plot_1, 19874, 22, 480, 480), 'mapDatasetToDomainAxis').
name(p_domain_axis_89, simple_name, category_plot_1_expr61, left_operand, range(category_plot_1, 19917, 10, 481, 481), 'domainAxis').
name(f_draw_shared_domain_axis_102, simple_name, category_plot_1_expr63, name, range(category_plot_1, 20052, 20, 485, 485), 'drawSharedDomainAxis').
name(f_range_axes_95, simple_name, category_plot_1_expr66, name, range(category_plot_1, 20098, 9, 487, 487), 'rangeAxes').
name(m_set_48, simple_name, category_plot_1_expr65, name, range(category_plot_1, 20108, 3, 487, 487), 'set').
name(p_range_axis_90, simple_name, category_plot_1_expr65, (arguments, 1), range(category_plot_1, 20115, 9, 487, 487), 'rangeAxis').
name(m_map_dataset_to_range_axis_53, simple_name, category_plot_1_expr68, name, range(category_plot_1, 20141, 21, 488, 488), 'mapDatasetToRangeAxis').
name(p_range_axis_90, simple_name, category_plot_1_expr70, left_operand, range(category_plot_1, 20183, 9, 489, 489), 'rangeAxis').
name(m_configure_domain_axes_54, simple_name, category_plot_1_expr71, name, range(category_plot_1, 20320, 19, 494, 494), 'configureDomainAxes').
name(m_configure_range_axes_55, simple_name, category_plot_1_expr72, name, range(category_plot_1, 20352, 18, 495, 495), 'configureRangeAxes').
name(f_domain_gridlines_visible_103, simple_name, category_plot_1_expr74, name, range(category_plot_1, 20390, 22, 497, 497), 'domainGridlinesVisible').
name(f_default_domain_gridlines_visible_104, simple_name, category_plot_1_expr73, right_hand_side, range(category_plot_1, 20415, 32, 497, 497), 'DEFAULT_DOMAIN_GRIDLINES_VISIBLE').
name(f_domain_gridline_position_105, simple_name, category_plot_1_expr77, name, range(category_plot_1, 20463, 22, 498, 498), 'domainGridlinePosition').
name(t_category_anchor_7, simple_name, q_middle_14, qualifier, range(category_plot_1, 20488, 14, 498, 498), 'CategoryAnchor').
name(q_middle_14, qualified_name, category_plot_1_expr76, right_hand_side, range(category_plot_1, 20488, 21, 498, 498), 'CategoryAnchor.MIDDLE').
name(f_domain_gridline_stroke_106, simple_name, category_plot_1_expr80, name, range(category_plot_1, 20525, 20, 499, 499), 'domainGridlineStroke').
name(f_default_gridline_stroke_78, simple_name, category_plot_1_expr79, right_hand_side, range(category_plot_1, 20548, 23, 499, 499), 'DEFAULT_GRIDLINE_STROKE').
name(f_domain_gridline_paint_107, simple_name, category_plot_1_expr83, name, range(category_plot_1, 20587, 19, 500, 500), 'domainGridlinePaint').
name(f_default_gridline_paint_79, simple_name, category_plot_1_expr82, right_hand_side, range(category_plot_1, 20609, 22, 500, 500), 'DEFAULT_GRIDLINE_PAINT').
name(f_range_gridlines_visible_108, simple_name, category_plot_1_expr86, name, range(category_plot_1, 20649, 21, 502, 502), 'rangeGridlinesVisible').
name(f_default_range_gridlines_visible_109, simple_name, category_plot_1_expr85, right_hand_side, range(category_plot_1, 20673, 31, 502, 502), 'DEFAULT_RANGE_GRIDLINES_VISIBLE').
name(f_range_gridline_stroke_110, simple_name, category_plot_1_expr89, name, range(category_plot_1, 20720, 19, 503, 503), 'rangeGridlineStroke').
name(f_default_gridline_stroke_78, simple_name, category_plot_1_expr88, right_hand_side, range(category_plot_1, 20742, 23, 503, 503), 'DEFAULT_GRIDLINE_STROKE').
name(f_range_gridline_paint_111, simple_name, category_plot_1_expr92, name, range(category_plot_1, 20781, 18, 504, 504), 'rangeGridlinePaint').
name(f_default_gridline_paint_79, simple_name, category_plot_1_expr91, right_hand_side, range(category_plot_1, 20802, 22, 504, 504), 'DEFAULT_GRIDLINE_PAINT').
name(f_foreground_domain_markers_112, simple_name, category_plot_1_expr95, name, range(category_plot_1, 20842, 23, 506, 506), 'foregroundDomainMarkers').
name(f_background_domain_markers_113, simple_name, category_plot_1_expr99, name, range(category_plot_1, 20897, 23, 507, 507), 'backgroundDomainMarkers').
name(f_foreground_range_markers_114, simple_name, category_plot_1_expr103, name, range(category_plot_1, 20952, 22, 508, 508), 'foregroundRangeMarkers').
name(f_background_range_markers_115, simple_name, category_plot_1_expr107, name, range(category_plot_1, 21006, 22, 509, 509), 'backgroundRangeMarkers').
name(v_baseline_116, simple_name, category_plot_1_code72, name, range(category_plot_1, 21064, 8, 511, 511), 'baseline').
name(m_add_range_marker_59, simple_name, category_plot_1_expr115, name, range(category_plot_1, 21267, 14, 514, 514), 'addRangeMarker').
name(v_baseline_116, simple_name, category_plot_1_expr115, (arguments, 0), range(category_plot_1, 21282, 8, 514, 514), 'baseline').
name(q_background_15, qualified_name, category_plot_1_expr115, (arguments, 1), range(category_plot_1, 21292, 16, 514, 514), 'Layer.BACKGROUND').
name(t_layer_8, simple_name, q_background_15, qualifier, range(category_plot_1, 21292, 5, 514, 514), 'Layer').
name(f_anchor_value_117, simple_name, category_plot_1_expr117, name, range(category_plot_1, 21327, 11, 516, 516), 'anchorValue').
name(f_range_crosshair_visible_118, simple_name, category_plot_1_expr120, name, range(category_plot_1, 21362, 21, 518, 518), 'rangeCrosshairVisible').
name(f_default_crosshair_visible_119, simple_name, category_plot_1_expr119, right_hand_side, range(category_plot_1, 21386, 25, 518, 518), 'DEFAULT_CROSSHAIR_VISIBLE').
name(f_range_crosshair_value_120, simple_name, category_plot_1_expr123, name, range(category_plot_1, 21427, 19, 519, 519), 'rangeCrosshairValue').
name(f_range_crosshair_stroke_121, simple_name, category_plot_1_expr126, name, range(category_plot_1, 21468, 20, 520, 520), 'rangeCrosshairStroke').
name(f_default_crosshair_stroke_81, simple_name, category_plot_1_expr125, right_hand_side, range(category_plot_1, 21491, 24, 520, 520), 'DEFAULT_CROSSHAIR_STROKE').
name(f_range_crosshair_paint_122, simple_name, category_plot_1_expr129, name, range(category_plot_1, 21531, 19, 521, 521), 'rangeCrosshairPaint').
name(f_default_crosshair_paint_82, simple_name, category_plot_1_expr128, right_hand_side, range(category_plot_1, 21553, 23, 521, 521), 'DEFAULT_CROSSHAIR_PAINT').
name(f_annotations_123, simple_name, category_plot_1_expr132, name, range(category_plot_1, 21602, 11, 523, 523), 'annotations').
name(m_set_domain_axis_location_76, simple_name, category_plot_1_expr135, name, range(category_plot_1, 29038, 21, 767, 767), 'setDomainAxisLocation').
name(p_location_137, simple_name, category_plot_1_expr135, (arguments, 1), range(category_plot_1, 29063, 8, 767, 767), 'location').
name(p_notify_138, simple_name, category_plot_1_expr135, (arguments, 2), range(category_plot_1, 29073, 6, 767, 767), 'notify').
name(p_index_141, simple_name, category_plot_1_expr137, left_operand, range(category_plot_1, 30106, 5, 800, 800), 'index').
name(p_location_142, simple_name, category_plot_1_expr138, left_operand, range(category_plot_1, 30120, 8, 800, 800), 'location').
name(f_domain_axis_locations_94, simple_name, category_plot_1_expr140, name, range(category_plot_1, 30282, 19, 804, 804), 'domainAxisLocations').
name(m_set_48, simple_name, category_plot_1_expr139, name, range(category_plot_1, 30302, 3, 804, 804), 'set').
name(p_index_141, simple_name, category_plot_1_expr139, (arguments, 0), range(category_plot_1, 30306, 5, 804, 804), 'index').
name(p_location_142, simple_name, category_plot_1_expr139, (arguments, 1), range(category_plot_1, 30313, 8, 804, 804), 'location').
name(p_notify_143, simple_name, category_plot_1_stmt50, expression, range(category_plot_1, 30337, 6, 805, 805), 'notify').
name(v_i_145, simple_name, category_plot_1_code80, name, range(category_plot_1, 32051, 1, 867, 867), 'i').
name(v_i_145, simple_name, category_plot_1_expr143, left_operand, range(category_plot_1, 32058, 1, 867, 867), 'i').
name(f_domain_axes_93, simple_name, category_plot_1_expr145, name, range(category_plot_1, 32067, 10, 867, 867), 'domainAxes').
name(m_size_82, simple_name, category_plot_1_expr144, name, range(category_plot_1, 32078, 4, 867, 867), 'size').
name(v_i_145, simple_name, category_plot_1_expr147, operand, range(category_plot_1, 32086, 1, 867, 867), 'i').
name(v_axis_146, simple_name, category_plot_1_code82, name, range(category_plot_1, 32119, 4, 868, 868), 'axis').
name(f_domain_axes_93, simple_name, category_plot_1_expr150, name, range(category_plot_1, 32146, 10, 868, 868), 'domainAxes').
name(m_get_83, simple_name, category_plot_1_expr149, name, range(category_plot_1, 32157, 3, 868, 868), 'get').
name(v_i_145, simple_name, category_plot_1_expr149, (arguments, 0), range(category_plot_1, 32161, 1, 868, 868), 'i').
name(v_axis_146, simple_name, category_plot_1_expr152, left_operand, range(category_plot_1, 32182, 4, 869, 869), 'axis').
name(v_result_148, simple_name, category_plot_1_code86, name, range(category_plot_1, 32849, 6, 894, 894), 'result').
name(p_index_147, simple_name, category_plot_1_expr153, left_operand, range(category_plot_1, 32877, 5, 895, 895), 'index').
name(f_range_axes_95, simple_name, category_plot_1_expr155, name, range(category_plot_1, 32890, 9, 895, 895), 'rangeAxes').
name(m_size_82, simple_name, category_plot_1_expr154, name, range(category_plot_1, 32900, 4, 895, 895), 'size').
name(v_result_148, simple_name, category_plot_1_expr157, left_hand_side, range(category_plot_1, 32923, 6, 896, 896), 'result').
name(f_range_axes_95, simple_name, category_plot_1_expr160, name, range(category_plot_1, 32949, 9, 896, 896), 'rangeAxes').
name(m_get_83, simple_name, category_plot_1_expr159, name, range(category_plot_1, 32959, 3, 896, 896), 'get').
name(p_index_147, simple_name, category_plot_1_expr159, (arguments, 0), range(category_plot_1, 32963, 5, 896, 896), 'index').
name(v_result_148, simple_name, category_plot_1_expr162, left_operand, range(category_plot_1, 32995, 6, 898, 898), 'result').
name(v_parent_149, simple_name, category_plot_1_code89, name, range(category_plot_1, 33031, 6, 899, 899), 'parent').
name(m_get_parent_86, simple_name, category_plot_1_expr163, name, range(category_plot_1, 33040, 9, 899, 899), 'getParent').
name(v_parent_149, simple_name, category_plot_1_expr164, left_operand, range(category_plot_1, 33070, 6, 900, 900), 'parent').
name(v_result_148, simple_name, category_plot_1_stmt60, expression, range(category_plot_1, 33254, 6, 905, 905), 'result').
name(m_set_range_axis_location_95, simple_name, category_plot_1_expr165, name, range(category_plot_1, 37754, 20, 1051, 1051), 'setRangeAxisLocation').
name(p_location_160, simple_name, category_plot_1_expr165, (arguments, 1), range(category_plot_1, 37778, 8, 1051, 1051), 'location').
name(p_notify_161, simple_name, category_plot_1_expr165, (arguments, 2), range(category_plot_1, 37788, 6, 1051, 1051), 'notify').
name(p_index_164, simple_name, category_plot_1_expr167, left_operand, range(category_plot_1, 38791, 5, 1081, 1081), 'index').
name(p_location_165, simple_name, category_plot_1_expr168, left_operand, range(category_plot_1, 38805, 8, 1081, 1081), 'location').
name(f_range_axis_locations_96, simple_name, category_plot_1_expr170, name, range(category_plot_1, 38967, 18, 1085, 1085), 'rangeAxisLocations').
name(m_set_48, simple_name, category_plot_1_expr169, name, range(category_plot_1, 38986, 3, 1085, 1085), 'set').
name(p_index_164, simple_name, category_plot_1_expr169, (arguments, 0), range(category_plot_1, 38990, 5, 1085, 1085), 'index').
name(p_location_165, simple_name, category_plot_1_expr169, (arguments, 1), range(category_plot_1, 38997, 8, 1085, 1085), 'location').
name(p_notify_166, simple_name, category_plot_1_stmt64, expression, range(category_plot_1, 39021, 6, 1086, 1086), 'notify').
name(v_i_168, simple_name, category_plot_1_code95, name, range(category_plot_1, 40602, 1, 1145, 1145), 'i').
name(v_i_168, simple_name, category_plot_1_expr173, left_operand, range(category_plot_1, 40609, 1, 1145, 1145), 'i').
name(f_range_axes_95, simple_name, category_plot_1_expr175, name, range(category_plot_1, 40618, 9, 1145, 1145), 'rangeAxes').
name(m_size_82, simple_name, category_plot_1_expr174, name, range(category_plot_1, 40628, 4, 1145, 1145), 'size').
name(v_i_168, simple_name, category_plot_1_expr177, operand, range(category_plot_1, 40636, 1, 1145, 1145), 'i').
name(v_axis_169, simple_name, category_plot_1_code97, name, range(category_plot_1, 40666, 4, 1146, 1146), 'axis').
name(f_range_axes_95, simple_name, category_plot_1_expr180, name, range(category_plot_1, 40690, 9, 1146, 1146), 'rangeAxes').
name(m_get_83, simple_name, category_plot_1_expr179, name, range(category_plot_1, 40700, 3, 1146, 1146), 'get').
name(v_i_168, simple_name, category_plot_1_expr179, (arguments, 0), range(category_plot_1, 40704, 1, 1146, 1146), 'i').
name(v_axis_169, simple_name, category_plot_1_expr182, left_operand, range(category_plot_1, 40725, 4, 1147, 1147), 'axis').
name(v_result_171, simple_name, category_plot_1_code101, name, range(category_plot_1, 41401, 6, 1174, 1174), 'result').
name(f_datasets_100, simple_name, category_plot_1_expr185, name, range(category_plot_1, 41434, 8, 1175, 1175), 'datasets').
name(m_size_82, simple_name, category_plot_1_expr184, name, range(category_plot_1, 41443, 4, 1175, 1175), 'size').
name(p_index_170, simple_name, category_plot_1_expr183, right_operand, range(category_plot_1, 41452, 5, 1175, 1175), 'index').
name(v_result_171, simple_name, category_plot_1_expr187, left_hand_side, range(category_plot_1, 41474, 6, 1176, 1176), 'result').
name(f_datasets_100, simple_name, category_plot_1_expr190, name, range(category_plot_1, 41506, 8, 1176, 1176), 'datasets').
name(m_get_83, simple_name, category_plot_1_expr189, name, range(category_plot_1, 41515, 3, 1176, 1176), 'get').
name(p_index_170, simple_name, category_plot_1_expr189, (arguments, 0), range(category_plot_1, 41519, 5, 1176, 1176), 'index').
name(v_result_171, simple_name, category_plot_1_stmt71, expression, range(category_plot_1, 41554, 6, 1178, 1178), 'result').
name(f_dataset_to_domain_axis_map_97, simple_name, category_plot_1_expr194, name, range(category_plot_1, 43430, 22, 1241, 1241), 'datasetToDomainAxisMap').
name(m_set_48, simple_name, category_plot_1_expr192, name, range(category_plot_1, 43453, 3, 1241, 1241), 'set').
name(p_index_175, simple_name, category_plot_1_expr192, (arguments, 0), range(category_plot_1, 43457, 5, 1241, 1241), 'index').
name(p_axis_index_176, simple_name, category_plot_1_expr193, (arguments, 0), range(category_plot_1, 43476, 9, 1241, 1241), 'axisIndex').
name(m_dataset_changed_107, simple_name, category_plot_1_expr196, name, range(category_plot_1, 43558, 14, 1243, 1243), 'datasetChanged').
name(m_get_dataset_102, simple_name, category_plot_1_expr199, name, range(category_plot_1, 43602, 10, 1243, 1243), 'getDataset').
name(p_index_175, simple_name, category_plot_1_expr199, (arguments, 0), range(category_plot_1, 43613, 5, 1243, 1243), 'index').
name(f_dataset_to_range_axis_map_98, simple_name, category_plot_1_expr202, name, range(category_plot_1, 44608, 21, 1274, 1274), 'datasetToRangeAxisMap').
name(m_set_48, simple_name, category_plot_1_expr200, name, range(category_plot_1, 44630, 3, 1274, 1274), 'set').
name(p_index_178, simple_name, category_plot_1_expr200, (arguments, 0), range(category_plot_1, 44634, 5, 1274, 1274), 'index').
name(p_axis_index_179, simple_name, category_plot_1_expr201, (arguments, 0), range(category_plot_1, 44653, 9, 1274, 1274), 'axisIndex').
name(m_dataset_changed_107, simple_name, category_plot_1_expr204, name, range(category_plot_1, 44733, 14, 1276, 1276), 'datasetChanged').
name(m_get_dataset_102, simple_name, category_plot_1_expr207, name, range(category_plot_1, 44777, 10, 1276, 1276), 'getDataset').
name(p_index_178, simple_name, category_plot_1_expr207, (arguments, 0), range(category_plot_1, 44788, 5, 1276, 1276), 'index').
name(v_count_209, simple_name, category_plot_1_code111, name, range(category_plot_1, 64049, 5, 1855, 1855), 'count').
name(f_range_axes_95, simple_name, category_plot_1_expr209, name, range(category_plot_1, 64062, 9, 1855, 1855), 'rangeAxes').
name(m_size_82, simple_name, category_plot_1_expr208, name, range(category_plot_1, 64072, 4, 1855, 1855), 'size').
name(v_axis_index_210, simple_name, category_plot_1_code113, name, range(category_plot_1, 64098, 9, 1856, 1856), 'axisIndex').
name(v_axis_index_210, simple_name, category_plot_1_expr212, left_operand, range(category_plot_1, 64113, 9, 1856, 1856), 'axisIndex').
name(v_count_209, simple_name, category_plot_1_expr212, right_operand, range(category_plot_1, 64125, 5, 1856, 1856), 'count').
name(v_axis_index_210, simple_name, category_plot_1_expr213, operand, range(category_plot_1, 64132, 9, 1856, 1856), 'axisIndex').
name(v_y_axis_211, simple_name, category_plot_1_code115, name, range(category_plot_1, 64170, 5, 1857, 1857), 'yAxis').
name(m_get_range_axis_85, simple_name, category_plot_1_expr214, name, range(category_plot_1, 64178, 12, 1857, 1857), 'getRangeAxis').
name(v_axis_index_210, simple_name, category_plot_1_expr214, (arguments, 0), range(category_plot_1, 64191, 9, 1857, 1857), 'axisIndex').
name(v_y_axis_211, simple_name, category_plot_1_expr215, left_operand, range(category_plot_1, 64220, 5, 1858, 1858), 'yAxis').
name(m_get_parent_86, simple_name, category_plot_1_expr217, name, range(category_plot_1, 64312, 9, 1862, 1862), 'getParent').
name(v_e_212, simple_name, category_plot_1_code117, name, range(category_plot_1, 64439, 1, 1866, 1866), 'e').
name(v_e_212, simple_name, category_plot_1_expr220, expression, range(category_plot_1, 64483, 1, 1867, 1867), 'e').
name(m_set_type_21, simple_name, category_plot_1_expr220, name, range(category_plot_1, 64485, 7, 1867, 1867), 'setType').
name(t_chart_change_event_type_1, simple_name, q_dataset_updated_16, qualifier, range(category_plot_1, 64493, 20, 1867, 1867), 'ChartChangeEventType').
name(q_dataset_updated_16, qualified_name, category_plot_1_expr220, (arguments, 0), range(category_plot_1, 64493, 36, 1867, 1867), 'ChartChangeEventType.DATASET_UPDATED').
name(m_notify_listeners_145, simple_name, category_plot_1_expr221, name, range(category_plot_1, 64545, 15, 1868, 1868), 'notifyListeners').
name(v_e_212, simple_name, category_plot_1_expr221, (arguments, 0), range(category_plot_1, 64561, 1, 1868, 1868), 'e').
name(m_remove_domain_marker_156, simple_name, category_plot_1_expr222, name, range(category_plot_1, 73333, 18, 2106, 2106), 'removeDomainMarker').
name(p_marker_228, simple_name, category_plot_1_expr222, (arguments, 0), range(category_plot_1, 73352, 6, 2106, 2106), 'marker').
name(t_layer_8, simple_name, q_foreground_17, qualifier, range(category_plot_1, 73360, 5, 2106, 2106), 'Layer').
name(q_foreground_17, qualified_name, category_plot_1_expr222, (arguments, 1), range(category_plot_1, 73360, 16, 2106, 2106), 'Layer.FOREGROUND').
name(m_remove_domain_marker_157, simple_name, category_plot_1_expr223, name, range(category_plot_1, 73906, 18, 2122, 2122), 'removeDomainMarker').
name(p_marker_229, simple_name, category_plot_1_expr223, (arguments, 1), range(category_plot_1, 73928, 6, 2122, 2122), 'marker').
name(p_layer_230, simple_name, category_plot_1_expr223, (arguments, 2), range(category_plot_1, 73936, 5, 2122, 2122), 'layer').
name(m_remove_domain_marker_158, simple_name, category_plot_1_expr224, name, range(category_plot_1, 74483, 18, 2139, 2139), 'removeDomainMarker').
name(p_index_231, simple_name, category_plot_1_expr224, (arguments, 0), range(category_plot_1, 74502, 5, 2139, 2139), 'index').
name(p_marker_232, simple_name, category_plot_1_expr224, (arguments, 1), range(category_plot_1, 74509, 6, 2139, 2139), 'marker').
name(p_layer_233, simple_name, category_plot_1_expr224, (arguments, 2), range(category_plot_1, 74517, 5, 2139, 2139), 'layer').
name(p_layer_236, simple_name, category_plot_1_expr225, left_operand, range(category_plot_1, 75138, 5, 2158, 2158), 'layer').
name(q_foreground_18, qualified_name, category_plot_1_expr225, right_operand, range(category_plot_1, 75147, 16, 2158, 2158), 'Layer.FOREGROUND').
name(t_layer_8, simple_name, q_foreground_18, qualifier, range(category_plot_1, 75147, 5, 2158, 2158), 'Layer').
name(v_markers_238, simple_name, category_plot_1_expr226, left_hand_side, range(category_plot_1, 75180, 7, 2159, 2159), 'markers').
name(f_foreground_domain_markers_112, simple_name, category_plot_1_expr230, name, range(category_plot_1, 75207, 23, 2159, 2159), 'foregroundDomainMarkers').
name(m_get_159, simple_name, category_plot_1_expr228, name, range(category_plot_1, 75231, 3, 2159, 2159), 'get').
name(p_index_234, simple_name, category_plot_1_expr229, (arguments, 0), range(category_plot_1, 75269, 5, 2160, 2160), 'index').
name(v_removed_239, simple_name, category_plot_1_code126, name, range(category_plot_1, 75444, 7, 2166, 2166), 'removed').
name(v_markers_238, simple_name, category_plot_1_expr232, expression, range(category_plot_1, 75454, 7, 2166, 2166), 'markers').
name(m_remove_160, simple_name, category_plot_1_expr232, name, range(category_plot_1, 75462, 6, 2166, 2166), 'remove').
name(p_marker_235, simple_name, category_plot_1_expr232, (arguments, 0), range(category_plot_1, 75469, 6, 2166, 2166), 'marker').
name(m_add_range_marker_162, simple_name, category_plot_1_expr233, name, range(category_plot_1, 76800, 14, 2200, 2200), 'addRangeMarker').
name(p_marker_241, simple_name, category_plot_1_expr233, (arguments, 1), range(category_plot_1, 76818, 6, 2200, 2200), 'marker').
name(p_layer_242, simple_name, category_plot_1_expr233, (arguments, 2), range(category_plot_1, 76826, 5, 2200, 2200), 'layer').
name(m_add_range_marker_163, simple_name, category_plot_1_expr234, name, range(category_plot_1, 77415, 14, 2217, 2217), 'addRangeMarker').
name(p_index_243, simple_name, category_plot_1_expr234, (arguments, 0), range(category_plot_1, 77430, 5, 2217, 2217), 'index').
name(p_marker_244, simple_name, category_plot_1_expr234, (arguments, 1), range(category_plot_1, 77437, 6, 2217, 2217), 'marker').
name(p_layer_245, simple_name, category_plot_1_expr234, (arguments, 2), range(category_plot_1, 77445, 5, 2217, 2217), 'layer').
name(p_layer_248, simple_name, category_plot_1_expr235, left_operand, range(category_plot_1, 78180, 5, 2239, 2239), 'layer').
name(q_foreground_18, qualified_name, category_plot_1_expr235, right_operand, range(category_plot_1, 78189, 16, 2239, 2239), 'Layer.FOREGROUND').
name(t_layer_8, simple_name, q_foreground_18, qualifier, range(category_plot_1, 78189, 5, 2239, 2239), 'Layer').
name(p_layer_248, simple_name, category_plot_1_expr236, left_operand, range(category_plot_1, 78567, 5, 2248, 2248), 'layer').
name(q_background_18, qualified_name, category_plot_1_expr236, right_operand, range(category_plot_1, 78576, 16, 2248, 2248), 'Layer.BACKGROUND').
name(t_layer_8, simple_name, q_background_18, qualifier, range(category_plot_1, 78576, 5, 2248, 2248), 'Layer').
name(v_markers_250, simple_name, category_plot_1_expr237, left_hand_side, range(category_plot_1, 78609, 7, 2249, 2249), 'markers').
name(f_background_range_markers_115, simple_name, category_plot_1_expr241, name, range(category_plot_1, 78637, 22, 2249, 2249), 'backgroundRangeMarkers').
name(m_get_159, simple_name, category_plot_1_expr239, name, range(category_plot_1, 78660, 3, 2249, 2249), 'get').
name(v_markers_250, simple_name, category_plot_1_expr243, left_operand, range(category_plot_1, 78724, 7, 2251, 2251), 'markers').
name(v_markers_250, simple_name, category_plot_1_expr244, left_hand_side, range(category_plot_1, 78760, 7, 2252, 2252), 'markers').
name(f_background_range_markers_115, simple_name, category_plot_1_expr248, name, range(category_plot_1, 78819, 22, 2253, 2253), 'backgroundRangeMarkers').
name(m_put_164, simple_name, category_plot_1_expr246, name, range(category_plot_1, 78842, 3, 2253, 2253), 'put').
name(p_index_246, simple_name, category_plot_1_expr247, (arguments, 0), range(category_plot_1, 78858, 5, 2253, 2253), 'index').
name(v_markers_250, simple_name, category_plot_1_expr246, (arguments, 1), range(category_plot_1, 78866, 7, 2253, 2253), 'markers').
name(v_markers_250, simple_name, category_plot_1_expr250, expression, range(category_plot_1, 78904, 7, 2255, 2255), 'markers').
name(m_add_165, simple_name, category_plot_1_expr250, name, range(category_plot_1, 78912, 3, 2255, 2255), 'add').
name(p_marker_247, simple_name, category_plot_1_expr250, (arguments, 0), range(category_plot_1, 78916, 6, 2255, 2255), 'marker').
name(p_marker_247, simple_name, category_plot_1_expr251, expression, range(category_plot_1, 78957, 6, 2257, 2257), 'marker').
name(m_add_change_listener_166, simple_name, category_plot_1_expr251, name, range(category_plot_1, 78964, 17, 2257, 2257), 'addChangeListener').
name(p_notify_249, simple_name, category_plot_1_stmt100, expression, range(category_plot_1, 79002, 6, 2258, 2258), 'notify').
name(m_fire_change_event_167, simple_name, category_plot_1_expr253, name, range(category_plot_1, 79025, 15, 2259, 2259), 'fireChangeEvent').
name(m_remove_range_marker_173, simple_name, category_plot_1_expr254, name, range(category_plot_1, 83013, 17, 2378, 2378), 'removeRangeMarker').
name(p_marker_255, simple_name, category_plot_1_expr254, (arguments, 0), range(category_plot_1, 83031, 6, 2378, 2378), 'marker').
name(t_layer_8, simple_name, q_foreground_18, qualifier, range(category_plot_1, 83039, 5, 2378, 2378), 'Layer').
name(q_foreground_18, qualified_name, category_plot_1_expr254, (arguments, 1), range(category_plot_1, 83039, 16, 2378, 2378), 'Layer.FOREGROUND').
name(m_remove_range_marker_174, simple_name, category_plot_1_expr255, name, range(category_plot_1, 83636, 17, 2396, 2396), 'removeRangeMarker').
name(p_marker_256, simple_name, category_plot_1_expr255, (arguments, 1), range(category_plot_1, 83657, 6, 2396, 2396), 'marker').
name(p_layer_257, simple_name, category_plot_1_expr255, (arguments, 2), range(category_plot_1, 83665, 5, 2396, 2396), 'layer').
name(m_remove_range_marker_175, simple_name, category_plot_1_expr256, name, range(category_plot_1, 84269, 17, 2415, 2415), 'removeRangeMarker').
name(p_index_258, simple_name, category_plot_1_expr256, (arguments, 0), range(category_plot_1, 84287, 5, 2415, 2415), 'index').
name(p_marker_259, simple_name, category_plot_1_expr256, (arguments, 1), range(category_plot_1, 84294, 6, 2415, 2415), 'marker').
name(p_layer_260, simple_name, category_plot_1_expr256, (arguments, 2), range(category_plot_1, 84302, 5, 2415, 2415), 'layer').
name(p_marker_262, simple_name, category_plot_1_expr257, left_operand, range(category_plot_1, 84989, 6, 2436, 2436), 'marker').
name(p_layer_263, simple_name, category_plot_1_expr258, left_operand, range(category_plot_1, 85135, 5, 2440, 2440), 'layer').
name(t_layer_8, simple_name, q_foreground_18, qualifier, range(category_plot_1, 85144, 5, 2440, 2440), 'Layer').
name(q_foreground_18, qualified_name, category_plot_1_expr258, right_operand, range(category_plot_1, 85144, 16, 2440, 2440), 'Layer.FOREGROUND').
name(v_markers_265, simple_name, category_plot_1_expr259, left_hand_side, range(category_plot_1, 85177, 7, 2441, 2441), 'markers').
name(f_foreground_range_markers_114, simple_name, category_plot_1_expr263, name, range(category_plot_1, 85204, 22, 2441, 2441), 'foregroundRangeMarkers').
name(m_get_159, simple_name, category_plot_1_expr261, name, range(category_plot_1, 85227, 3, 2441, 2441), 'get').
name(p_index_261, simple_name, category_plot_1_expr262, (arguments, 0), range(category_plot_1, 85265, 5, 2442, 2442), 'index').
name(v_removed_266, simple_name, category_plot_1_code140, name, range(category_plot_1, 85439, 7, 2448, 2448), 'removed').
name(v_markers_265, simple_name, category_plot_1_expr265, expression, range(category_plot_1, 85449, 7, 2448, 2448), 'markers').
name(m_remove_160, simple_name, category_plot_1_expr265, name, range(category_plot_1, 85457, 6, 2448, 2448), 'remove').
name(p_marker_262, simple_name, category_plot_1_expr265, (arguments, 0), range(category_plot_1, 85464, 6, 2448, 2448), 'marker').
%object_list_1 - org.jfree.chart.util.ObjectList
name(m_object_list_47, simple_name, object_list_1_code3, name, range(object_list_1, 2039, 10, 58, 58), 'ObjectList').
name(m_get_630, simple_name, object_list_1_expr1, name, range(object_list_1, 2957, 3, 85, 85), 'get').
name(p_index_947, simple_name, object_list_1_expr1, (arguments, 0), range(object_list_1, 2961, 5, 85, 85), 'index').
name(m_set_631, simple_name, object_list_1_expr2, name, range(object_list_1, 3302, 3, 95, 95), 'set').
name(p_index_948, simple_name, object_list_1_expr2, (arguments, 0), range(object_list_1, 3306, 5, 95, 95), 'index').
name(p_object_949, simple_name, object_list_1_expr2, (arguments, 1), range(object_list_1, 3313, 6, 95, 95), 'object').
%plot_orientation_1 - org.jfree.chart.plot.PlotOrientation
name(f_horizontal_544, simple_name, plot_orientation_1_code8, name, range(plot_orientation_1, 2102, 10, 57, 57), 'HORIZONTAL').
name(f_vertical_545, simple_name, plot_orientation_1_code14, name, range(plot_orientation_1, 2279, 8, 61, 61), 'VERTICAL').
name(m_plot_orientation_355, simple_name, plot_orientation_1_code15, name, range(plot_orientation_1, 2503, 15, 72, 72), 'PlotOrientation').
name(p_name_546, simple_name, plot_orientation_1_code17, name, range(plot_orientation_1, 2526, 4, 72, 72), 'name').
name(f_name_547, simple_name, plot_orientation_1_expr4, name, range(plot_orientation_1, 2548, 4, 73, 73), 'name').
name(p_name_546, simple_name, plot_orientation_1_expr3, right_hand_side, range(plot_orientation_1, 2555, 4, 73, 73), 'name').
%chart_color_1 - org.jfree.chart.ChartColor
name(f_very_dark_red_1, simple_name, chart_color_1_code8, name, range(chart_color_1, 2270, 13, 59, 59), 'VERY_DARK_RED').
name(f_dark_red_2, simple_name, chart_color_1_code15, name, range(chart_color_1, 2378, 8, 62, 62), 'DARK_RED').
name(f_light_red_3, simple_name, chart_color_1_code22, name, range(chart_color_1, 2482, 9, 65, 65), 'LIGHT_RED').
name(f_very_light_red_4, simple_name, chart_color_1_code29, name, range(chart_color_1, 2592, 14, 68, 68), 'VERY_LIGHT_RED').
name(f_very_dark_yellow_5, simple_name, chart_color_1_code36, name, range(chart_color_1, 2709, 16, 71, 71), 'VERY_DARK_YELLOW').
name(f_dark_yellow_6, simple_name, chart_color_1_code43, name, range(chart_color_1, 2823, 11, 74, 74), 'DARK_YELLOW').
name(f_light_yellow_7, simple_name, chart_color_1_code50, name, range(chart_color_1, 2933, 12, 77, 77), 'LIGHT_YELLOW').
name(f_very_light_yellow_8, simple_name, chart_color_1_code57, name, range(chart_color_1, 3049, 17, 80, 80), 'VERY_LIGHT_YELLOW').
name(f_very_dark_green_9, simple_name, chart_color_1_code64, name, range(chart_color_1, 3168, 15, 83, 83), 'VERY_DARK_GREEN').
name(f_dark_green_10, simple_name, chart_color_1_code71, name, range(chart_color_1, 3280, 10, 86, 86), 'DARK_GREEN').
name(f_light_green_11, simple_name, chart_color_1_code78, name, range(chart_color_1, 3388, 11, 89, 89), 'LIGHT_GREEN').
name(f_very_light_green_12, simple_name, chart_color_1_code85, name, range(chart_color_1, 3502, 16, 92, 92), 'VERY_LIGHT_GREEN').
name(f_very_dark_cyan_13, simple_name, chart_color_1_code92, name, range(chart_color_1, 3619, 14, 95, 95), 'VERY_DARK_CYAN').
name(f_dark_cyan_14, simple_name, chart_color_1_code99, name, range(chart_color_1, 3729, 9, 98, 98), 'DARK_CYAN').
name(f_light_cyan_15, simple_name, chart_color_1_code106, name, range(chart_color_1, 3835, 10, 101, 101), 'LIGHT_CYAN').
name(f_very_light_cyan_16, simple_name, chart_color_1_code113, name, range(chart_color_1, 3948, 15, 104, 104), 'VERY_LIGHT_CYAN').
name(f_very_dark_blue_17, simple_name, chart_color_1_code120, name, range(chart_color_1, 4064, 14, 107, 107), 'VERY_DARK_BLUE').
name(f_dark_blue_18, simple_name, chart_color_1_code127, name, range(chart_color_1, 4174, 9, 110, 110), 'DARK_BLUE').
name(f_light_blue_19, simple_name, chart_color_1_code134, name, range(chart_color_1, 4280, 10, 113, 113), 'LIGHT_BLUE').
name(f_very_light_blue_20, simple_name, chart_color_1_code141, name, range(chart_color_1, 4392, 15, 116, 116), 'VERY_LIGHT_BLUE').
name(f_very_dark_magenta_21, simple_name, chart_color_1_code148, name, range(chart_color_1, 4518, 17, 119, 119), 'VERY_DARK_MAGENTA').
name(f_dark_magenta_22, simple_name, chart_color_1_code155, name, range(chart_color_1, 4634, 12, 122, 122), 'DARK_MAGENTA').
name(f_light_magenta_23, simple_name, chart_color_1_code162, name, range(chart_color_1, 4746, 13, 125, 125), 'LIGHT_MAGENTA').
name(f_very_light_magenta_24, simple_name, chart_color_1_code169, name, range(chart_color_1, 4864, 18, 128, 128), 'VERY_LIGHT_MAGENTA').
%default_drawing_supplier_1 - org.jfree.chart.plot.DefaultDrawingSupplier
name(f_default_paint_sequence_376, simple_name, default_drawing_supplier_1_code10, name, range(default_drawing_supplier_1, 3183, 22, 83, 83), 'DEFAULT_PAINT_SEQUENCE').
name(f_default_outline_paint_sequence_377, simple_name, default_drawing_supplier_1_code18, name, range(default_drawing_supplier_1, 3343, 30, 87, 87), 'DEFAULT_OUTLINE_PAINT_SEQUENCE').
name(f_default_fill_paint_sequence_378, simple_name, default_drawing_supplier_1_code29, name, range(default_drawing_supplier_1, 3501, 27, 91, 91), 'DEFAULT_FILL_PAINT_SEQUENCE').
name(f_default_stroke_sequence_379, simple_name, default_drawing_supplier_1_code40, name, range(default_drawing_supplier_1, 3649, 23, 95, 95), 'DEFAULT_STROKE_SEQUENCE').
name(f_default_outline_stroke_sequence_380, simple_name, default_drawing_supplier_1_code51, name, range(default_drawing_supplier_1, 3882, 31, 100, 100), 'DEFAULT_OUTLINE_STROKE_SEQUENCE').
name(f_default_shape_sequence_381, simple_name, default_drawing_supplier_1_code59, name, range(default_drawing_supplier_1, 4113, 22, 105, 105), 'DEFAULT_SHAPE_SEQUENCE').
name(f_default_paint_sequence_376, simple_name, default_drawing_supplier_1_stmt1, (arguments, 0), range(default_drawing_supplier_1, 5347, 22, 150, 150), 'DEFAULT_PAINT_SEQUENCE').
name(f_default_fill_paint_sequence_378, simple_name, default_drawing_supplier_1_stmt1, (arguments, 1), range(default_drawing_supplier_1, 5371, 27, 150, 150), 'DEFAULT_FILL_PAINT_SEQUENCE').
name(f_default_outline_paint_sequence_377, simple_name, default_drawing_supplier_1_stmt1, (arguments, 2), range(default_drawing_supplier_1, 5414, 30, 151, 151), 'DEFAULT_OUTLINE_PAINT_SEQUENCE').
name(f_default_stroke_sequence_379, simple_name, default_drawing_supplier_1_stmt1, (arguments, 3), range(default_drawing_supplier_1, 5460, 23, 152, 152), 'DEFAULT_STROKE_SEQUENCE').
name(f_default_outline_stroke_sequence_380, simple_name, default_drawing_supplier_1_stmt1, (arguments, 4), range(default_drawing_supplier_1, 5499, 31, 153, 153), 'DEFAULT_OUTLINE_STROKE_SEQUENCE').
name(f_default_shape_sequence_381, simple_name, default_drawing_supplier_1_stmt1, (arguments, 5), range(default_drawing_supplier_1, 5546, 22, 154, 154), 'DEFAULT_SHAPE_SEQUENCE').
name(p_shape_sequence_392, simple_name, default_drawing_supplier_1_code62, name, range(default_drawing_supplier_1, 7223, 13, 197, 197), 'shapeSequence').
name(f_paint_sequence_393, simple_name, default_drawing_supplier_1_expr12, name, range(default_drawing_supplier_1, 7256, 13, 199, 199), 'paintSequence').
name(p_paint_sequence_387, simple_name, default_drawing_supplier_1_expr11, right_hand_side, range(default_drawing_supplier_1, 7272, 13, 199, 199), 'paintSequence').
name(f_fill_paint_sequence_394, simple_name, default_drawing_supplier_1_expr15, name, range(default_drawing_supplier_1, 7301, 17, 200, 200), 'fillPaintSequence').
name(p_fill_paint_sequence_388, simple_name, default_drawing_supplier_1_expr14, right_hand_side, range(default_drawing_supplier_1, 7321, 17, 200, 200), 'fillPaintSequence').
name(f_outline_paint_sequence_395, simple_name, default_drawing_supplier_1_expr18, name, range(default_drawing_supplier_1, 7354, 20, 201, 201), 'outlinePaintSequence').
name(p_outline_paint_sequence_389, simple_name, default_drawing_supplier_1_expr17, right_hand_side, range(default_drawing_supplier_1, 7377, 20, 201, 201), 'outlinePaintSequence').
name(f_stroke_sequence_396, simple_name, default_drawing_supplier_1_expr21, name, range(default_drawing_supplier_1, 7413, 14, 202, 202), 'strokeSequence').
name(p_stroke_sequence_390, simple_name, default_drawing_supplier_1_expr20, right_hand_side, range(default_drawing_supplier_1, 7430, 14, 202, 202), 'strokeSequence').
name(f_outline_stroke_sequence_397, simple_name, default_drawing_supplier_1_expr24, name, range(default_drawing_supplier_1, 7460, 21, 203, 203), 'outlineStrokeSequence').
name(p_outline_stroke_sequence_391, simple_name, default_drawing_supplier_1_expr23, right_hand_side, range(default_drawing_supplier_1, 7484, 21, 203, 203), 'outlineStrokeSequence').
name(f_shape_sequence_398, simple_name, default_drawing_supplier_1_expr27, name, range(default_drawing_supplier_1, 7521, 13, 204, 204), 'shapeSequence').
name(p_shape_sequence_392, simple_name, default_drawing_supplier_1_expr26, right_hand_side, range(default_drawing_supplier_1, 7537, 13, 204, 204), 'shapeSequence').
name(v_result_399, simple_name, default_drawing_supplier_1_code70, name, range(default_drawing_supplier_1, 9779, 6, 289, 289), 'result').
name(v_size_400, simple_name, default_drawing_supplier_1_code75, name, range(default_drawing_supplier_1, 9821, 4, 291, 291), 'size').
name(v_delta_401, simple_name, default_drawing_supplier_1_code77, name, range(default_drawing_supplier_1, 9849, 5, 292, 292), 'delta').
name(v_size_400, simple_name, default_drawing_supplier_1_expr30, left_operand, range(default_drawing_supplier_1, 9857, 4, 292, 292), 'size').
name(v_xpoints_402, simple_name, default_drawing_supplier_1_code81, name, range(default_drawing_supplier_1, 9884, 7, 293, 293), 'xpoints').
name(v_ypoints_403, simple_name, default_drawing_supplier_1_code85, name, range(default_drawing_supplier_1, 9915, 7, 294, 294), 'ypoints').
name(v_result_399, simple_name, default_drawing_supplier_1_expr32, array, range(default_drawing_supplier_1, 9961, 6, 297, 297), 'result').
name(v_delta_401, simple_name, default_drawing_supplier_1_expr34, operand, range(default_drawing_supplier_1, 9997, 5, 297, 297), 'delta').
name(v_delta_401, simple_name, default_drawing_supplier_1_expr35, operand, range(default_drawing_supplier_1, 10005, 5, 297, 297), 'delta').
name(v_size_400, simple_name, default_drawing_supplier_1_expr33, (arguments, 2), range(default_drawing_supplier_1, 10012, 4, 297, 297), 'size').
name(v_size_400, simple_name, default_drawing_supplier_1_expr33, (arguments, 3), range(default_drawing_supplier_1, 10018, 4, 297, 297), 'size').
name(v_result_399, simple_name, default_drawing_supplier_1_expr37, array, range(default_drawing_supplier_1, 10053, 6, 299, 299), 'result').
name(v_delta_401, simple_name, default_drawing_supplier_1_expr39, operand, range(default_drawing_supplier_1, 10087, 5, 299, 299), 'delta').
name(v_delta_401, simple_name, default_drawing_supplier_1_expr40, operand, range(default_drawing_supplier_1, 10095, 5, 299, 299), 'delta').
name(v_size_400, simple_name, default_drawing_supplier_1_expr38, (arguments, 2), range(default_drawing_supplier_1, 10102, 4, 299, 299), 'size').
name(v_size_400, simple_name, default_drawing_supplier_1_expr38, (arguments, 3), range(default_drawing_supplier_1, 10108, 4, 299, 299), 'size').
name(v_xpoints_402, simple_name, default_drawing_supplier_1_expr41, left_hand_side, range(default_drawing_supplier_1, 10159, 7, 302, 302), 'xpoints').
name(m_int_array_254, simple_name, default_drawing_supplier_1_expr42, name, range(default_drawing_supplier_1, 10169, 8, 302, 302), 'intArray').
name(v_delta_401, simple_name, default_drawing_supplier_1_expr42, (arguments, 1), range(default_drawing_supplier_1, 10183, 5, 302, 302), 'delta').
name(v_delta_401, simple_name, default_drawing_supplier_1_expr43, operand, range(default_drawing_supplier_1, 10191, 5, 302, 302), 'delta').
name(v_ypoints_403, simple_name, default_drawing_supplier_1_expr44, left_hand_side, range(default_drawing_supplier_1, 10208, 7, 303, 303), 'ypoints').
name(m_int_array_254, simple_name, default_drawing_supplier_1_expr45, name, range(default_drawing_supplier_1, 10218, 8, 303, 303), 'intArray').
name(v_delta_401, simple_name, default_drawing_supplier_1_expr46, operand, range(default_drawing_supplier_1, 10228, 5, 303, 303), 'delta').
name(v_delta_401, simple_name, default_drawing_supplier_1_expr45, (arguments, 1), range(default_drawing_supplier_1, 10235, 5, 303, 303), 'delta').
name(v_delta_401, simple_name, default_drawing_supplier_1_expr45, (arguments, 2), range(default_drawing_supplier_1, 10242, 5, 303, 303), 'delta').
name(v_result_399, simple_name, default_drawing_supplier_1_expr48, array, range(default_drawing_supplier_1, 10259, 6, 304, 304), 'result').
name(v_xpoints_402, simple_name, default_drawing_supplier_1_expr49, (arguments, 0), range(default_drawing_supplier_1, 10283, 7, 304, 304), 'xpoints').
name(v_ypoints_403, simple_name, default_drawing_supplier_1_expr49, (arguments, 1), range(default_drawing_supplier_1, 10292, 7, 304, 304), 'ypoints').
name(v_xpoints_402, simple_name, default_drawing_supplier_1_expr50, left_hand_side, range(default_drawing_supplier_1, 10336, 7, 307, 307), 'xpoints').
name(m_int_array_256, simple_name, default_drawing_supplier_1_expr51, name, range(default_drawing_supplier_1, 10346, 8, 307, 307), 'intArray').
name(v_delta_401, simple_name, default_drawing_supplier_1_expr51, (arguments, 1), range(default_drawing_supplier_1, 10360, 5, 307, 307), 'delta').
name(v_delta_401, simple_name, default_drawing_supplier_1_expr52, operand, range(default_drawing_supplier_1, 10373, 5, 307, 307), 'delta').
name(v_ypoints_403, simple_name, default_drawing_supplier_1_expr53, left_hand_side, range(default_drawing_supplier_1, 10390, 7, 308, 308), 'ypoints').
name(m_int_array_256, simple_name, default_drawing_supplier_1_expr54, name, range(default_drawing_supplier_1, 10400, 8, 308, 308), 'intArray').
name(v_delta_401, simple_name, default_drawing_supplier_1_expr55, operand, range(default_drawing_supplier_1, 10410, 5, 308, 308), 'delta').
name(v_delta_401, simple_name, default_drawing_supplier_1_expr54, (arguments, 2), range(default_drawing_supplier_1, 10422, 5, 308, 308), 'delta').
name(v_result_399, simple_name, default_drawing_supplier_1_expr57, array, range(default_drawing_supplier_1, 10444, 6, 309, 309), 'result').
name(v_xpoints_402, simple_name, default_drawing_supplier_1_expr58, (arguments, 0), range(default_drawing_supplier_1, 10468, 7, 309, 309), 'xpoints').
name(v_ypoints_403, simple_name, default_drawing_supplier_1_expr58, (arguments, 1), range(default_drawing_supplier_1, 10477, 7, 309, 309), 'ypoints').
name(v_result_399, simple_name, default_drawing_supplier_1_expr60, array, range(default_drawing_supplier_1, 10534, 6, 312, 312), 'result').
name(v_delta_401, simple_name, default_drawing_supplier_1_expr62, operand, range(default_drawing_supplier_1, 10570, 5, 312, 312), 'delta').
name(v_delta_401, simple_name, default_drawing_supplier_1_expr65, operand, range(default_drawing_supplier_1, 10578, 5, 312, 312), 'delta').
name(v_size_400, simple_name, default_drawing_supplier_1_expr61, (arguments, 2), range(default_drawing_supplier_1, 10589, 4, 312, 312), 'size').
name(v_size_400, simple_name, default_drawing_supplier_1_expr64, left_operand, range(default_drawing_supplier_1, 10595, 4, 312, 312), 'size').
name(v_xpoints_402, simple_name, default_drawing_supplier_1_expr66, left_hand_side, range(default_drawing_supplier_1, 10652, 7, 315, 315), 'xpoints').
name(m_int_array_254, simple_name, default_drawing_supplier_1_expr67, name, range(default_drawing_supplier_1, 10662, 8, 315, 315), 'intArray').
name(v_delta_401, simple_name, default_drawing_supplier_1_expr68, operand, range(default_drawing_supplier_1, 10672, 5, 315, 315), 'delta').
name(v_delta_401, simple_name, default_drawing_supplier_1_expr69, operand, range(default_drawing_supplier_1, 10680, 5, 315, 315), 'delta').
name(v_ypoints_403, simple_name, default_drawing_supplier_1_expr70, left_hand_side, range(default_drawing_supplier_1, 10702, 7, 316, 316), 'ypoints').
name(m_int_array_254, simple_name, default_drawing_supplier_1_expr71, name, range(default_drawing_supplier_1, 10712, 8, 316, 316), 'intArray').
name(v_delta_401, simple_name, default_drawing_supplier_1_expr72, operand, range(default_drawing_supplier_1, 10722, 5, 316, 316), 'delta').
name(v_delta_401, simple_name, default_drawing_supplier_1_expr73, operand, range(default_drawing_supplier_1, 10730, 5, 316, 316), 'delta').
name(v_delta_401, simple_name, default_drawing_supplier_1_expr71, (arguments, 2), range(default_drawing_supplier_1, 10737, 5, 316, 316), 'delta').
name(v_result_399, simple_name, default_drawing_supplier_1_expr75, array, range(default_drawing_supplier_1, 10754, 6, 317, 317), 'result').
name(v_xpoints_402, simple_name, default_drawing_supplier_1_expr76, (arguments, 0), range(default_drawing_supplier_1, 10778, 7, 317, 317), 'xpoints').
name(v_ypoints_403, simple_name, default_drawing_supplier_1_expr76, (arguments, 1), range(default_drawing_supplier_1, 10787, 7, 317, 317), 'ypoints').
name(v_result_399, simple_name, default_drawing_supplier_1_expr78, array, range(default_drawing_supplier_1, 10842, 6, 320, 320), 'result').
name(v_delta_401, simple_name, default_drawing_supplier_1_expr80, operand, range(default_drawing_supplier_1, 10876, 5, 320, 320), 'delta').
name(v_delta_401, simple_name, default_drawing_supplier_1_expr83, operand, range(default_drawing_supplier_1, 10884, 5, 320, 320), 'delta').
name(v_size_400, simple_name, default_drawing_supplier_1_expr79, (arguments, 2), range(default_drawing_supplier_1, 10895, 4, 320, 320), 'size').
name(v_size_400, simple_name, default_drawing_supplier_1_expr82, left_operand, range(default_drawing_supplier_1, 10901, 4, 320, 320), 'size').
name(v_xpoints_402, simple_name, default_drawing_supplier_1_expr84, left_hand_side, range(default_drawing_supplier_1, 10959, 7, 323, 323), 'xpoints').
name(m_int_array_254, simple_name, default_drawing_supplier_1_expr85, name, range(default_drawing_supplier_1, 10969, 8, 323, 323), 'intArray').
name(v_delta_401, simple_name, default_drawing_supplier_1_expr86, operand, range(default_drawing_supplier_1, 10979, 5, 323, 323), 'delta').
name(v_delta_401, simple_name, default_drawing_supplier_1_expr85, (arguments, 1), range(default_drawing_supplier_1, 10986, 5, 323, 323), 'delta').
name(v_delta_401, simple_name, default_drawing_supplier_1_expr87, operand, range(default_drawing_supplier_1, 10994, 5, 323, 323), 'delta').
name(v_ypoints_403, simple_name, default_drawing_supplier_1_expr88, left_hand_side, range(default_drawing_supplier_1, 11011, 7, 324, 324), 'ypoints').
name(m_int_array_254, simple_name, default_drawing_supplier_1_expr89, name, range(default_drawing_supplier_1, 11021, 8, 324, 324), 'intArray').
name(v_delta_401, simple_name, default_drawing_supplier_1_expr90, operand, range(default_drawing_supplier_1, 11031, 5, 324, 324), 'delta').
name(v_delta_401, simple_name, default_drawing_supplier_1_expr89, (arguments, 2), range(default_drawing_supplier_1, 11043, 5, 324, 324), 'delta').
name(v_result_399, simple_name, default_drawing_supplier_1_expr92, array, range(default_drawing_supplier_1, 11060, 6, 325, 325), 'result').
name(v_xpoints_402, simple_name, default_drawing_supplier_1_expr93, (arguments, 0), range(default_drawing_supplier_1, 11084, 7, 325, 325), 'xpoints').
name(v_ypoints_403, simple_name, default_drawing_supplier_1_expr93, (arguments, 1), range(default_drawing_supplier_1, 11093, 7, 325, 325), 'ypoints').
name(v_result_399, simple_name, default_drawing_supplier_1_expr95, array, range(default_drawing_supplier_1, 11148, 6, 328, 328), 'result').
name(v_delta_401, simple_name, default_drawing_supplier_1_expr100, operand, range(default_drawing_supplier_1, 11184, 5, 328, 328), 'delta').
name(v_delta_401, simple_name, default_drawing_supplier_1_expr98, operand, range(default_drawing_supplier_1, 11196, 5, 328, 328), 'delta').
name(v_size_400, simple_name, default_drawing_supplier_1_expr99, left_operand, range(default_drawing_supplier_1, 11203, 4, 328, 328), 'size').
name(v_size_400, simple_name, default_drawing_supplier_1_expr96, (arguments, 3), range(default_drawing_supplier_1, 11213, 4, 328, 328), 'size').
name(v_xpoints_402, simple_name, default_drawing_supplier_1_expr101, left_hand_side, range(default_drawing_supplier_1, 11266, 7, 331, 331), 'xpoints').
name(m_int_array_254, simple_name, default_drawing_supplier_1_expr102, name, range(default_drawing_supplier_1, 11276, 8, 331, 331), 'intArray').
name(v_delta_401, simple_name, default_drawing_supplier_1_expr103, operand, range(default_drawing_supplier_1, 11286, 5, 331, 331), 'delta').
name(v_delta_401, simple_name, default_drawing_supplier_1_expr102, (arguments, 1), range(default_drawing_supplier_1, 11293, 5, 331, 331), 'delta').
name(v_delta_401, simple_name, default_drawing_supplier_1_expr102, (arguments, 2), range(default_drawing_supplier_1, 11300, 5, 331, 331), 'delta').
name(v_ypoints_403, simple_name, default_drawing_supplier_1_expr104, left_hand_side, range(default_drawing_supplier_1, 11317, 7, 332, 332), 'ypoints').
name(m_int_array_254, simple_name, default_drawing_supplier_1_expr105, name, range(default_drawing_supplier_1, 11327, 8, 332, 332), 'intArray').
name(v_delta_401, simple_name, default_drawing_supplier_1_expr106, operand, range(default_drawing_supplier_1, 11342, 5, 332, 332), 'delta').
name(v_delta_401, simple_name, default_drawing_supplier_1_expr107, operand, range(default_drawing_supplier_1, 11350, 5, 332, 332), 'delta').
name(v_result_399, simple_name, default_drawing_supplier_1_expr109, array, range(default_drawing_supplier_1, 11367, 6, 333, 333), 'result').
name(v_xpoints_402, simple_name, default_drawing_supplier_1_expr110, (arguments, 0), range(default_drawing_supplier_1, 11391, 7, 333, 333), 'xpoints').
name(v_ypoints_403, simple_name, default_drawing_supplier_1_expr110, (arguments, 1), range(default_drawing_supplier_1, 11400, 7, 333, 333), 'ypoints').
name(v_result_399, simple_name, default_drawing_supplier_1_stmt33, expression, range(default_drawing_supplier_1, 11431, 6, 335, 335), 'result').
name(p_a_409, simple_name, default_drawing_supplier_1_expr113, expression, range(default_drawing_supplier_1, 17302, 1, 517, 517), 'a').
name(p_b_410, simple_name, default_drawing_supplier_1_expr114, expression, range(default_drawing_supplier_1, 17311, 1, 517, 517), 'b').
name(p_c_411, simple_name, default_drawing_supplier_1_expr115, expression, range(default_drawing_supplier_1, 17320, 1, 517, 517), 'c').
name(p_a_412, simple_name, default_drawing_supplier_1_expr118, expression, range(default_drawing_supplier_1, 17744, 1, 532, 532), 'a').
name(p_b_413, simple_name, default_drawing_supplier_1_expr119, expression, range(default_drawing_supplier_1, 17753, 1, 532, 532), 'b').
name(p_c_414, simple_name, default_drawing_supplier_1_expr120, expression, range(default_drawing_supplier_1, 17762, 1, 532, 532), 'c').
name(p_d_415, simple_name, default_drawing_supplier_1_expr121, expression, range(default_drawing_supplier_1, 17771, 1, 532, 532), 'd').
%unit_type_1 - org.jfree.chart.util.UnitType
name(f_absolute_974, simple_name, unit_type_1_code8, name, range(unit_type_1, 1899, 8, 56, 56), 'ABSOLUTE').
name(f_relative_1015, simple_name, unit_type_1_code15, name, range(unit_type_1, 2000, 8, 59, 59), 'RELATIVE').
name(m_unit_type_692, simple_name, unit_type_1_code17, name, range(unit_type_1, 2187, 8, 69, 69), 'UnitType').
name(p_name_1016, simple_name, unit_type_1_code19, name, range(unit_type_1, 2203, 4, 69, 69), 'name').
name(f_name_1017, simple_name, unit_type_1_expr4, name, range(unit_type_1, 2224, 4, 70, 70), 'name').
name(p_name_1016, simple_name, unit_type_1_expr3, right_hand_side, range(unit_type_1, 2231, 4, 70, 70), 'name').
%axis_location_1 - org.jfree.chart.axis.AxisLocation
name(f_top_or_left_28, simple_name, axis_location_1_code8, name, range(axis_location_1, 2382, 11, 61, 61), 'TOP_OR_LEFT').
name(f_top_or_right_29, simple_name, axis_location_1_code15, name, range(axis_location_1, 2534, 12, 65, 65), 'TOP_OR_RIGHT').
name(f_bottom_or_left_30, simple_name, axis_location_1_code22, name, range(axis_location_1, 2694, 14, 69, 69), 'BOTTOM_OR_LEFT').
name(f_bottom_or_right_31, simple_name, axis_location_1_code29, name, range(axis_location_1, 2863, 15, 73, 73), 'BOTTOM_OR_RIGHT').
name(m_axis_location_4, simple_name, axis_location_1_code31, name, range(axis_location_1, 3100, 12, 84, 84), 'AxisLocation').
name(p_name_32, simple_name, axis_location_1_code33, name, range(axis_location_1, 3120, 4, 84, 84), 'name').
name(f_name_33, simple_name, axis_location_1_expr6, name, range(axis_location_1, 3142, 4, 85, 85), 'name').
name(p_name_32, simple_name, axis_location_1_expr5, right_hand_side, range(axis_location_1, 3149, 4, 85, 85), 'name').
%dataset_rendering_order_1 - org.jfree.chart.plot.DatasetRenderingOrder
name(f_forward_371, simple_name, dataset_rendering_order_1_code8, name, range(dataset_rendering_order_1, 2292, 7, 62, 62), 'FORWARD').
name(f_reverse_372, simple_name, dataset_rendering_order_1_code14, name, range(dataset_rendering_order_1, 2549, 7, 69, 69), 'REVERSE').
name(m_dataset_rendering_order_237, simple_name, dataset_rendering_order_1_code15, name, range(dataset_rendering_order_1, 2783, 21, 80, 80), 'DatasetRenderingOrder').
name(p_name_373, simple_name, dataset_rendering_order_1_code17, name, range(dataset_rendering_order_1, 2812, 4, 80, 80), 'name').
name(f_name_374, simple_name, dataset_rendering_order_1_expr4, name, range(dataset_rendering_order_1, 2834, 4, 81, 81), 'name').
name(p_name_373, simple_name, dataset_rendering_order_1_expr3, right_hand_side, range(dataset_rendering_order_1, 2841, 4, 81, 81), 'name').
%chart_change_event_type_1 - org.jfree.chart.event.ChartChangeEventType
name(f_general_43, simple_name, chart_change_event_type_1_code8, name, range(chart_change_event_type_1, 1968, 7, 55, 55), 'GENERAL').
name(f_new_dataset_53, simple_name, chart_change_event_type_1_code14, name, range(chart_change_event_type_1, 2119, 11, 59, 59), 'NEW_DATASET').
name(f_dataset_updated_54, simple_name, chart_change_event_type_1_code20, name, range(chart_change_event_type_1, 2282, 15, 63, 63), 'DATASET_UPDATED').
name(m_chart_change_event_type_22, simple_name, chart_change_event_type_1_code21, name, range(chart_change_event_type_1, 2526, 20, 74, 74), 'ChartChangeEventType').
name(p_name_55, simple_name, chart_change_event_type_1_code23, name, range(chart_change_event_type_1, 2554, 4, 74, 74), 'name').
name(f_name_56, simple_name, chart_change_event_type_1_expr5, name, range(chart_change_event_type_1, 2576, 4, 75, 75), 'name').
name(p_name_55, simple_name, chart_change_event_type_1_expr4, right_hand_side, range(chart_change_event_type_1, 2583, 4, 75, 75), 'name').
%marker_change_event_1 - org.jfree.chart.event.MarkerChangeEvent
name(p_marker_58, simple_name, marker_change_event_1_stmt1, (arguments, 0), range(marker_change_event_1, 2192, 6, 65, 65), 'marker').
name(f_marker_59, simple_name, marker_change_event_1_expr3, name, range(marker_change_event_1, 2215, 6, 66, 66), 'marker').
name(p_marker_58, simple_name, marker_change_event_1_expr2, right_hand_side, range(marker_change_event_1, 2224, 6, 66, 66), 'marker').
%xyplot_1 - org.jfree.chart.plot.XYPlot
name(f_default_gridline_stroke_567, simple_name, xyplot_1_code8, name, range(xyplot_1, 14653, 23, 284, 284), 'DEFAULT_GRIDLINE_STROKE').
name(q_cap_butt_26, qualified_name, xyplot_1_expr1, (arguments, 1), range(xyplot_1, 14714, 20, 285, 285), 'BasicStroke.CAP_BUTT').
name(q_join_bevel_26, qualified_name, xyplot_1_expr1, (arguments, 2), range(xyplot_1, 14736, 22, 285, 285), 'BasicStroke.JOIN_BEVEL').
name(f_default_gridline_paint_568, simple_name, xyplot_1_code15, name, range(xyplot_1, 14887, 22, 289, 289), 'DEFAULT_GRIDLINE_PAINT').
name(t_color_2, simple_name, q_white_26, qualifier, range(xyplot_1, 14912, 5, 289, 289), 'Color').
name(q_white_26, qualified_name, xyplot_1_code15, initializer, range(xyplot_1, 14912, 11, 289, 289), 'Color.WHITE').
name(f_default_crosshair_stroke_569, simple_name, xyplot_1_code21, name, range(xyplot_1, 15117, 24, 295, 295), 'DEFAULT_CROSSHAIR_STROKE').
name(f_default_gridline_stroke_567, simple_name, xyplot_1_code21, initializer, range(xyplot_1, 15157, 23, 296, 296), 'DEFAULT_GRIDLINE_STROKE').
name(f_default_crosshair_paint_570, simple_name, xyplot_1_code27, name, range(xyplot_1, 15256, 23, 299, 299), 'DEFAULT_CROSSHAIR_PAINT').
name(t_color_2, simple_name, q_blue_26, qualifier, range(xyplot_1, 15282, 5, 299, 299), 'Color').
name(q_blue_26, qualified_name, xyplot_1_code27, initializer, range(xyplot_1, 15282, 10, 299, 299), 'Color.blue').
name(f_localization_resources_571, simple_name, xyplot_1_code32, name, range(xyplot_1, 15386, 21, 302, 302), 'localizationResources').
name(f_quadrant_origin_572, simple_name, xyplot_1_code37, name, range(xyplot_1, 16794, 14, 345, 345), 'quadrantOrigin').
name(f_quadrant_paint_573, simple_name, xyplot_1_code45, name, range(xyplot_1, 16920, 13, 348, 348), 'quadrantPaint').
name(f_domain_crosshair_locked_on_data_574, simple_name, xyplot_1_code49, name, range(xyplot_1, 19241, 27, 419, 419), 'domainCrosshairLockedOnData').
name(f_range_crosshair_locked_on_data_575, simple_name, xyplot_1_code53, name, range(xyplot_1, 19847, 26, 437, 437), 'rangeCrosshairLockedOnData').
name(f_dataset_rendering_order_576, simple_name, xyplot_1_code57, name, range(xyplot_1, 21184, 21, 474, 474), 'datasetRenderingOrder').
name(q_reverse_26, qualified_name, xyplot_1_code57, initializer, range(xyplot_1, 21221, 29, 475, 475), 'DatasetRenderingOrder.REVERSE').
name(f_series_rendering_order_577, simple_name, xyplot_1_code61, name, range(xyplot_1, 21429, 20, 481, 481), 'seriesRenderingOrder').
name(q_reverse_26, qualified_name, xyplot_1_code61, initializer, range(xyplot_1, 21465, 28, 482, 482), 'SeriesRenderingOrder.REVERSE').
name(f_orientation_582, simple_name, xyplot_1_expr9, name, range(xyplot_1, 22864, 11, 522, 522), 'orientation').
name(q_vertical_27, qualified_name, xyplot_1_expr8, right_hand_side, range(xyplot_1, 22878, 24, 522, 522), 'PlotOrientation.VERTICAL').
name(t_plot_orientation_5, simple_name, q_vertical_27, qualifier, range(xyplot_1, 22878, 15, 522, 522), 'PlotOrientation').
name(f_weight_583, simple_name, xyplot_1_expr12, name, range(xyplot_1, 22918, 6, 523, 523), 'weight').
name(f_axis_offset_584, simple_name, xyplot_1_expr15, name, range(xyplot_1, 22985, 10, 524, 524), 'axisOffset').
name(f_domain_axes_585, simple_name, xyplot_1_expr19, name, range(xyplot_1, 23132, 10, 527, 527), 'domainAxes').
name(f_domain_axis_locations_586, simple_name, xyplot_1_expr23, name, range(xyplot_1, 23177, 19, 528, 528), 'domainAxisLocations').
name(f_foreground_domain_markers_587, simple_name, xyplot_1_expr27, name, range(xyplot_1, 23231, 23, 529, 529), 'foregroundDomainMarkers').
name(f_background_domain_markers_588, simple_name, xyplot_1_expr31, name, range(xyplot_1, 23286, 23, 530, 530), 'backgroundDomainMarkers').
name(f_range_axes_589, simple_name, xyplot_1_expr35, name, range(xyplot_1, 23343, 9, 532, 532), 'rangeAxes').
name(f_range_axis_locations_590, simple_name, xyplot_1_expr39, name, range(xyplot_1, 23387, 18, 533, 533), 'rangeAxisLocations').
name(f_foreground_range_markers_591, simple_name, xyplot_1_expr43, name, range(xyplot_1, 23440, 22, 534, 534), 'foregroundRangeMarkers').
name(f_background_range_markers_592, simple_name, xyplot_1_expr47, name, range(xyplot_1, 23494, 22, 535, 535), 'backgroundRangeMarkers').
name(f_datasets_593, simple_name, xyplot_1_expr51, name, range(xyplot_1, 23550, 8, 537, 537), 'datasets').
name(f_renderers_594, simple_name, xyplot_1_expr55, name, range(xyplot_1, 23593, 9, 538, 538), 'renderers').
name(f_dataset_to_domain_axis_map_595, simple_name, xyplot_1_expr59, name, range(xyplot_1, 23639, 22, 540, 540), 'datasetToDomainAxisMap').
name(f_dataset_to_range_axis_map_596, simple_name, xyplot_1_expr63, name, range(xyplot_1, 23693, 21, 541, 541), 'datasetToRangeAxisMap').
name(f_datasets_593, simple_name, xyplot_1_expr67, name, range(xyplot_1, 23748, 8, 543, 543), 'datasets').
name(m_set_48, simple_name, xyplot_1_expr66, name, range(xyplot_1, 23757, 3, 543, 543), 'set').
name(p_dataset_578, simple_name, xyplot_1_expr66, (arguments, 1), range(xyplot_1, 23764, 7, 543, 543), 'dataset').
name(p_dataset_578, simple_name, xyplot_1_expr69, left_operand, range(xyplot_1, 23787, 7, 544, 544), 'dataset').
name(f_renderers_594, simple_name, xyplot_1_expr71, name, range(xyplot_1, 23879, 9, 548, 548), 'renderers').
name(m_set_48, simple_name, xyplot_1_expr70, name, range(xyplot_1, 23889, 3, 548, 548), 'set').
name(p_renderer_581, simple_name, xyplot_1_expr70, (arguments, 1), range(xyplot_1, 23896, 8, 548, 548), 'renderer').
name(p_renderer_581, simple_name, xyplot_1_expr73, left_operand, range(xyplot_1, 23920, 8, 549, 549), 'renderer').
name(f_domain_axes_585, simple_name, xyplot_1_expr75, name, range(xyplot_1, 24051, 10, 554, 554), 'domainAxes').
name(m_set_48, simple_name, xyplot_1_expr74, name, range(xyplot_1, 24062, 3, 554, 554), 'set').
name(p_domain_axis_579, simple_name, xyplot_1_expr74, (arguments, 1), range(xyplot_1, 24069, 10, 554, 554), 'domainAxis').
name(m_map_dataset_to_domain_axis_374, simple_name, xyplot_1_expr77, name, range(xyplot_1, 24096, 22, 555, 555), 'mapDatasetToDomainAxis').
name(p_domain_axis_579, simple_name, xyplot_1_expr79, left_operand, range(xyplot_1, 24139, 10, 556, 556), 'domainAxis').
name(f_domain_axis_locations_586, simple_name, xyplot_1_expr81, name, range(xyplot_1, 24274, 19, 560, 560), 'domainAxisLocations').
name(m_set_48, simple_name, xyplot_1_expr80, name, range(xyplot_1, 24294, 3, 560, 560), 'set').
name(t_axis_location_6, simple_name, q_bottom_or_left_27, qualifier, range(xyplot_1, 24301, 12, 560, 560), 'AxisLocation').
name(q_bottom_or_left_27, qualified_name, xyplot_1_expr80, (arguments, 1), range(xyplot_1, 24301, 27, 560, 560), 'AxisLocation.BOTTOM_OR_LEFT').
name(f_range_axes_589, simple_name, xyplot_1_expr84, name, range(xyplot_1, 24347, 9, 562, 562), 'rangeAxes').
name(m_set_48, simple_name, xyplot_1_expr83, name, range(xyplot_1, 24357, 3, 562, 562), 'set').
name(p_range_axis_580, simple_name, xyplot_1_expr83, (arguments, 1), range(xyplot_1, 24364, 9, 562, 562), 'rangeAxis').
name(m_map_dataset_to_range_axis_375, simple_name, xyplot_1_expr86, name, range(xyplot_1, 24390, 21, 563, 563), 'mapDatasetToRangeAxis').
name(p_range_axis_580, simple_name, xyplot_1_expr88, left_operand, range(xyplot_1, 24432, 9, 564, 564), 'rangeAxis').
name(f_range_axis_locations_590, simple_name, xyplot_1_expr90, name, range(xyplot_1, 24564, 18, 568, 568), 'rangeAxisLocations').
name(m_set_48, simple_name, xyplot_1_expr89, name, range(xyplot_1, 24583, 3, 568, 568), 'set').
name(t_axis_location_6, simple_name, q_bottom_or_left_27, qualifier, range(xyplot_1, 24590, 12, 568, 568), 'AxisLocation').
name(q_bottom_or_left_27, qualified_name, xyplot_1_expr89, (arguments, 1), range(xyplot_1, 24590, 27, 568, 568), 'AxisLocation.BOTTOM_OR_LEFT').
name(m_configure_domain_axes_376, simple_name, xyplot_1_expr92, name, range(xyplot_1, 24631, 19, 570, 570), 'configureDomainAxes').
name(m_configure_range_axes_377, simple_name, xyplot_1_expr93, name, range(xyplot_1, 24663, 18, 571, 571), 'configureRangeAxes').
name(f_domain_gridlines_visible_597, simple_name, xyplot_1_expr95, name, range(xyplot_1, 24701, 22, 573, 573), 'domainGridlinesVisible').
name(f_domain_gridline_stroke_598, simple_name, xyplot_1_expr98, name, range(xyplot_1, 24746, 20, 574, 574), 'domainGridlineStroke').
name(f_default_gridline_stroke_567, simple_name, xyplot_1_expr97, right_hand_side, range(xyplot_1, 24769, 23, 574, 574), 'DEFAULT_GRIDLINE_STROKE').
name(f_domain_gridline_paint_599, simple_name, xyplot_1_expr101, name, range(xyplot_1, 24808, 19, 575, 575), 'domainGridlinePaint').
name(f_default_gridline_paint_568, simple_name, xyplot_1_expr100, right_hand_side, range(xyplot_1, 24830, 22, 575, 575), 'DEFAULT_GRIDLINE_PAINT').
name(f_domain_zero_baseline_visible_600, simple_name, xyplot_1_expr104, name, range(xyplot_1, 24870, 25, 577, 577), 'domainZeroBaselineVisible').
name(f_domain_zero_baseline_paint_601, simple_name, xyplot_1_expr107, name, range(xyplot_1, 24919, 23, 578, 578), 'domainZeroBaselinePaint').
name(q_black_27, qualified_name, xyplot_1_expr106, right_hand_side, range(xyplot_1, 24945, 11, 578, 578), 'Color.black').
name(t_color_2, simple_name, q_black_27, qualifier, range(xyplot_1, 24945, 5, 578, 578), 'Color').
name(f_domain_zero_baseline_stroke_602, simple_name, xyplot_1_expr110, name, range(xyplot_1, 24972, 24, 579, 579), 'domainZeroBaselineStroke').
name(f_range_gridlines_visible_603, simple_name, xyplot_1_expr114, name, range(xyplot_1, 25038, 21, 581, 581), 'rangeGridlinesVisible').
name(f_range_gridline_stroke_604, simple_name, xyplot_1_expr117, name, range(xyplot_1, 25082, 19, 582, 582), 'rangeGridlineStroke').
name(f_default_gridline_stroke_567, simple_name, xyplot_1_expr116, right_hand_side, range(xyplot_1, 25104, 23, 582, 582), 'DEFAULT_GRIDLINE_STROKE').
name(f_range_gridline_paint_605, simple_name, xyplot_1_expr120, name, range(xyplot_1, 25143, 18, 583, 583), 'rangeGridlinePaint').
name(f_default_gridline_paint_568, simple_name, xyplot_1_expr119, right_hand_side, range(xyplot_1, 25164, 22, 583, 583), 'DEFAULT_GRIDLINE_PAINT').
name(f_range_zero_baseline_visible_606, simple_name, xyplot_1_expr123, name, range(xyplot_1, 25204, 24, 585, 585), 'rangeZeroBaselineVisible').
name(f_range_zero_baseline_paint_607, simple_name, xyplot_1_expr126, name, range(xyplot_1, 25252, 22, 586, 586), 'rangeZeroBaselinePaint').
name(q_black_27, qualified_name, xyplot_1_expr125, right_hand_side, range(xyplot_1, 25277, 11, 586, 586), 'Color.black').
name(t_color_2, simple_name, q_black_27, qualifier, range(xyplot_1, 25277, 5, 586, 586), 'Color').
name(f_range_zero_baseline_stroke_608, simple_name, xyplot_1_expr129, name, range(xyplot_1, 25304, 23, 587, 587), 'rangeZeroBaselineStroke').
name(f_domain_crosshair_visible_609, simple_name, xyplot_1_expr133, name, range(xyplot_1, 25369, 22, 589, 589), 'domainCrosshairVisible').
name(f_domain_crosshair_value_610, simple_name, xyplot_1_expr136, name, range(xyplot_1, 25415, 20, 590, 590), 'domainCrosshairValue').
name(f_domain_crosshair_stroke_611, simple_name, xyplot_1_expr139, name, range(xyplot_1, 25457, 21, 591, 591), 'domainCrosshairStroke').
name(f_default_crosshair_stroke_569, simple_name, xyplot_1_expr138, right_hand_side, range(xyplot_1, 25481, 24, 591, 591), 'DEFAULT_CROSSHAIR_STROKE').
name(f_domain_crosshair_paint_612, simple_name, xyplot_1_expr142, name, range(xyplot_1, 25521, 20, 592, 592), 'domainCrosshairPaint').
name(f_default_crosshair_paint_570, simple_name, xyplot_1_expr141, right_hand_side, range(xyplot_1, 25544, 23, 592, 592), 'DEFAULT_CROSSHAIR_PAINT').
name(f_range_crosshair_visible_613, simple_name, xyplot_1_expr145, name, range(xyplot_1, 25585, 21, 594, 594), 'rangeCrosshairVisible').
name(f_range_crosshair_value_614, simple_name, xyplot_1_expr148, name, range(xyplot_1, 25630, 19, 595, 595), 'rangeCrosshairValue').
name(f_range_crosshair_stroke_615, simple_name, xyplot_1_expr151, name, range(xyplot_1, 25671, 20, 596, 596), 'rangeCrosshairStroke').
name(f_default_crosshair_stroke_569, simple_name, xyplot_1_expr150, right_hand_side, range(xyplot_1, 25694, 24, 596, 596), 'DEFAULT_CROSSHAIR_STROKE').
name(f_range_crosshair_paint_616, simple_name, xyplot_1_expr154, name, range(xyplot_1, 25734, 19, 597, 597), 'rangeCrosshairPaint').
name(f_default_crosshair_paint_570, simple_name, xyplot_1_expr153, right_hand_side, range(xyplot_1, 25756, 23, 597, 597), 'DEFAULT_CROSSHAIR_PAINT').
name(f_annotations_617, simple_name, xyplot_1_expr157, name, range(xyplot_1, 25797, 11, 599, 599), 'annotations').
name(v_i_631, simple_name, xyplot_1_code82, name, range(xyplot_1, 33511, 1, 860, 860), 'i').
name(v_i_631, simple_name, xyplot_1_expr161, left_operand, range(xyplot_1, 33518, 1, 860, 860), 'i').
name(f_domain_axes_585, simple_name, xyplot_1_expr163, name, range(xyplot_1, 33527, 10, 860, 860), 'domainAxes').
name(m_size_82, simple_name, xyplot_1_expr162, name, range(xyplot_1, 33538, 4, 860, 860), 'size').
name(v_i_631, simple_name, xyplot_1_expr165, operand, range(xyplot_1, 33546, 1, 860, 860), 'i').
name(v_axis_632, simple_name, xyplot_1_code84, name, range(xyplot_1, 33576, 4, 861, 861), 'axis').
name(f_domain_axes_585, simple_name, xyplot_1_expr168, name, range(xyplot_1, 33600, 10, 861, 861), 'domainAxes').
name(m_get_83, simple_name, xyplot_1_expr167, name, range(xyplot_1, 33611, 3, 861, 861), 'get').
name(v_i_631, simple_name, xyplot_1_expr167, (arguments, 0), range(xyplot_1, 33615, 1, 861, 861), 'i').
name(v_axis_632, simple_name, xyplot_1_expr170, left_operand, range(xyplot_1, 33636, 4, 862, 862), 'axis').
name(v_i_651, simple_name, xyplot_1_code88, name, range(xyplot_1, 42533, 1, 1160, 1160), 'i').
name(v_i_651, simple_name, xyplot_1_expr172, left_operand, range(xyplot_1, 42540, 1, 1160, 1160), 'i').
name(f_range_axes_589, simple_name, xyplot_1_expr174, name, range(xyplot_1, 42549, 9, 1160, 1160), 'rangeAxes').
name(m_size_82, simple_name, xyplot_1_expr173, name, range(xyplot_1, 42559, 4, 1160, 1160), 'size').
name(v_i_651, simple_name, xyplot_1_expr176, operand, range(xyplot_1, 42567, 1, 1160, 1160), 'i').
name(v_axis_652, simple_name, xyplot_1_code90, name, range(xyplot_1, 42597, 4, 1161, 1161), 'axis').
name(f_range_axes_589, simple_name, xyplot_1_expr179, name, range(xyplot_1, 42621, 9, 1161, 1161), 'rangeAxes').
name(m_get_83, simple_name, xyplot_1_expr178, name, range(xyplot_1, 42631, 3, 1161, 1161), 'get').
name(v_i_651, simple_name, xyplot_1_expr178, (arguments, 0), range(xyplot_1, 42635, 1, 1161, 1161), 'i').
name(v_axis_652, simple_name, xyplot_1_expr181, left_operand, range(xyplot_1, 42656, 4, 1162, 1162), 'axis').
name(v_result_661, simple_name, xyplot_1_code94, name, range(xyplot_1, 46027, 6, 1273, 1273), 'result').
name(f_datasets_593, simple_name, xyplot_1_expr184, name, range(xyplot_1, 46060, 8, 1274, 1274), 'datasets').
name(m_size_82, simple_name, xyplot_1_expr183, name, range(xyplot_1, 46069, 4, 1274, 1274), 'size').
name(p_index_660, simple_name, xyplot_1_expr182, right_operand, range(xyplot_1, 46078, 5, 1274, 1274), 'index').
name(v_result_661, simple_name, xyplot_1_expr186, left_hand_side, range(xyplot_1, 46100, 6, 1275, 1275), 'result').
name(f_datasets_593, simple_name, xyplot_1_expr189, name, range(xyplot_1, 46126, 8, 1275, 1275), 'datasets').
name(m_get_83, simple_name, xyplot_1_expr188, name, range(xyplot_1, 46135, 3, 1275, 1275), 'get').
name(p_index_660, simple_name, xyplot_1_expr188, (arguments, 0), range(xyplot_1, 46139, 5, 1275, 1275), 'index').
name(v_result_661, simple_name, xyplot_1_stmt62, expression, range(xyplot_1, 46174, 6, 1277, 1277), 'result').
name(f_dataset_to_domain_axis_map_595, simple_name, xyplot_1_expr194, name, range(xyplot_1, 48420, 22, 1354, 1354), 'datasetToDomainAxisMap').
name(m_put_164, simple_name, xyplot_1_expr191, name, range(xyplot_1, 48443, 3, 1354, 1354), 'put').
name(p_index_666, simple_name, xyplot_1_expr192, (arguments, 0), range(xyplot_1, 48459, 5, 1354, 1354), 'index').
name(m_dataset_changed_421, simple_name, xyplot_1_expr196, name, range(xyplot_1, 48577, 14, 1357, 1357), 'datasetChanged').
name(m_get_dataset_416, simple_name, xyplot_1_expr199, name, range(xyplot_1, 48621, 10, 1357, 1357), 'getDataset').
name(p_index_666, simple_name, xyplot_1_expr199, (arguments, 0), range(xyplot_1, 48632, 5, 1357, 1357), 'index').
name(f_dataset_to_range_axis_map_596, simple_name, xyplot_1_expr203, name, range(xyplot_1, 49063, 21, 1370, 1370), 'datasetToRangeAxisMap').
name(m_put_164, simple_name, xyplot_1_expr200, name, range(xyplot_1, 49085, 3, 1370, 1370), 'put').
name(p_index_668, simple_name, xyplot_1_expr201, (arguments, 0), range(xyplot_1, 49101, 5, 1370, 1370), 'index').
name(m_dataset_changed_421, simple_name, xyplot_1_expr205, name, range(xyplot_1, 49219, 14, 1373, 1373), 'datasetChanged').
name(m_get_dataset_416, simple_name, xyplot_1_expr208, name, range(xyplot_1, 49263, 10, 1373, 1373), 'getDataset').
name(p_index_668, simple_name, xyplot_1_expr208, (arguments, 0), range(xyplot_1, 49274, 5, 1373, 1373), 'index').
name(m_remove_domain_marker_475, simple_name, xyplot_1_expr209, name, range(xyplot_1, 76771, 18, 2232, 2232), 'removeDomainMarker').
name(p_marker_712, simple_name, xyplot_1_expr209, (arguments, 0), range(xyplot_1, 76790, 6, 2232, 2232), 'marker').
name(q_foreground_27, qualified_name, xyplot_1_expr209, (arguments, 1), range(xyplot_1, 76798, 16, 2232, 2232), 'Layer.FOREGROUND').
name(t_layer_8, simple_name, q_foreground_27, qualifier, range(xyplot_1, 76798, 5, 2232, 2232), 'Layer').
name(m_remove_domain_marker_476, simple_name, xyplot_1_expr210, name, range(xyplot_1, 77344, 18, 2248, 2248), 'removeDomainMarker').
name(p_marker_713, simple_name, xyplot_1_expr210, (arguments, 1), range(xyplot_1, 77366, 6, 2248, 2248), 'marker').
name(p_layer_714, simple_name, xyplot_1_expr210, (arguments, 2), range(xyplot_1, 77374, 5, 2248, 2248), 'layer').
name(m_remove_domain_marker_477, simple_name, xyplot_1_expr211, name, range(xyplot_1, 77921, 18, 2265, 2265), 'removeDomainMarker').
name(p_index_715, simple_name, xyplot_1_expr211, (arguments, 0), range(xyplot_1, 77940, 5, 2265, 2265), 'index').
name(p_marker_716, simple_name, xyplot_1_expr211, (arguments, 1), range(xyplot_1, 77947, 6, 2265, 2265), 'marker').
name(p_layer_717, simple_name, xyplot_1_expr211, (arguments, 2), range(xyplot_1, 77955, 5, 2265, 2265), 'layer').
name(p_layer_720, simple_name, xyplot_1_expr212, left_operand, range(xyplot_1, 78620, 5, 2285, 2285), 'layer').
name(q_foreground_27, qualified_name, xyplot_1_expr212, right_operand, range(xyplot_1, 78629, 16, 2285, 2285), 'Layer.FOREGROUND').
name(t_layer_8, simple_name, q_foreground_27, qualifier, range(xyplot_1, 78629, 5, 2285, 2285), 'Layer').
name(v_markers_722, simple_name, xyplot_1_expr213, left_hand_side, range(xyplot_1, 78662, 7, 2286, 2286), 'markers').
name(f_foreground_domain_markers_587, simple_name, xyplot_1_expr217, name, range(xyplot_1, 78689, 23, 2286, 2286), 'foregroundDomainMarkers').
name(m_get_159, simple_name, xyplot_1_expr215, name, range(xyplot_1, 78713, 3, 2286, 2286), 'get').
name(p_index_718, simple_name, xyplot_1_expr216, (arguments, 0), range(xyplot_1, 78751, 5, 2287, 2287), 'index').
name(v_removed_723, simple_name, xyplot_1_code109, name, range(xyplot_1, 78926, 7, 2293, 2293), 'removed').
name(v_markers_722, simple_name, xyplot_1_expr219, expression, range(xyplot_1, 78936, 7, 2293, 2293), 'markers').
name(m_remove_160, simple_name, xyplot_1_expr219, name, range(xyplot_1, 78944, 6, 2293, 2293), 'remove').
name(p_marker_719, simple_name, xyplot_1_expr219, (arguments, 0), range(xyplot_1, 78951, 6, 2293, 2293), 'marker').
name(m_remove_range_marker_485, simple_name, xyplot_1_expr220, name, range(xyplot_1, 85170, 17, 2465, 2465), 'removeRangeMarker').
name(p_marker_735, simple_name, xyplot_1_expr220, (arguments, 0), range(xyplot_1, 85188, 6, 2465, 2465), 'marker').
name(t_layer_8, simple_name, q_foreground_27, qualifier, range(xyplot_1, 85196, 5, 2465, 2465), 'Layer').
name(q_foreground_27, qualified_name, xyplot_1_expr220, (arguments, 1), range(xyplot_1, 85196, 16, 2465, 2465), 'Layer.FOREGROUND').
name(m_remove_range_marker_486, simple_name, xyplot_1_expr221, name, range(xyplot_1, 85740, 17, 2481, 2481), 'removeRangeMarker').
name(p_marker_736, simple_name, xyplot_1_expr221, (arguments, 1), range(xyplot_1, 85761, 6, 2481, 2481), 'marker').
name(p_layer_737, simple_name, xyplot_1_expr221, (arguments, 2), range(xyplot_1, 85769, 5, 2481, 2481), 'layer').
name(m_remove_range_marker_487, simple_name, xyplot_1_expr222, name, range(xyplot_1, 86315, 17, 2498, 2498), 'removeRangeMarker').
name(p_index_738, simple_name, xyplot_1_expr222, (arguments, 0), range(xyplot_1, 86333, 5, 2498, 2498), 'index').
name(p_marker_739, simple_name, xyplot_1_expr222, (arguments, 1), range(xyplot_1, 86340, 6, 2498, 2498), 'marker').
name(p_layer_740, simple_name, xyplot_1_expr222, (arguments, 2), range(xyplot_1, 86348, 5, 2498, 2498), 'layer').
name(p_marker_742, simple_name, xyplot_1_expr223, left_operand, range(xyplot_1, 86972, 6, 2517, 2517), 'marker').
name(p_layer_743, simple_name, xyplot_1_expr224, left_operand, range(xyplot_1, 87118, 5, 2521, 2521), 'layer').
name(q_foreground_27, qualified_name, xyplot_1_expr224, right_operand, range(xyplot_1, 87127, 16, 2521, 2521), 'Layer.FOREGROUND').
name(t_layer_8, simple_name, q_foreground_27, qualifier, range(xyplot_1, 87127, 5, 2521, 2521), 'Layer').
name(v_markers_745, simple_name, xyplot_1_expr225, left_hand_side, range(xyplot_1, 87160, 7, 2522, 2522), 'markers').
name(f_foreground_range_markers_591, simple_name, xyplot_1_expr229, name, range(xyplot_1, 87187, 22, 2522, 2522), 'foregroundRangeMarkers').
name(m_get_159, simple_name, xyplot_1_expr227, name, range(xyplot_1, 87210, 3, 2522, 2522), 'get').
name(p_index_741, simple_name, xyplot_1_expr228, (arguments, 0), range(xyplot_1, 87248, 5, 2523, 2523), 'index').
name(v_removed_746, simple_name, xyplot_1_code117, name, range(xyplot_1, 87422, 7, 2529, 2529), 'removed').
name(v_markers_745, simple_name, xyplot_1_expr231, expression, range(xyplot_1, 87432, 7, 2529, 2529), 'markers').
name(m_remove_160, simple_name, xyplot_1_expr231, name, range(xyplot_1, 87440, 6, 2529, 2529), 'remove').
name(p_marker_742, simple_name, xyplot_1_expr231, (arguments, 0), range(xyplot_1, 87447, 6, 2529, 2529), 'marker').
name(m_configure_domain_axes_376, simple_name, xyplot_1_expr232, name, range(xyplot_1, 143795, 19, 4033, 4033), 'configureDomainAxes').
name(m_configure_range_axes_377, simple_name, xyplot_1_expr233, name, range(xyplot_1, 143827, 18, 4034, 4034), 'configureRangeAxes').
name(m_get_parent_86, simple_name, xyplot_1_expr235, name, range(xyplot_1, 143862, 9, 4035, 4035), 'getParent').
name(v_e_847, simple_name, xyplot_1_code120, name, range(xyplot_1, 143989, 1, 4039, 4039), 'e').
name(v_e_847, simple_name, xyplot_1_expr238, expression, range(xyplot_1, 144033, 1, 4040, 4040), 'e').
name(m_set_type_21, simple_name, xyplot_1_expr238, name, range(xyplot_1, 144035, 7, 4040, 4040), 'setType').
name(t_chart_change_event_type_1, simple_name, q_dataset_updated_27, qualifier, range(xyplot_1, 144043, 20, 4040, 4040), 'ChartChangeEventType').
name(q_dataset_updated_27, qualified_name, xyplot_1_expr238, (arguments, 0), range(xyplot_1, 144043, 36, 4040, 4040), 'ChartChangeEventType.DATASET_UPDATED').
name(m_notify_listeners_145, simple_name, xyplot_1_expr239, name, range(xyplot_1, 144095, 15, 4041, 4041), 'notifyListeners').
name(v_e_847, simple_name, xyplot_1_expr239, (arguments, 0), range(xyplot_1, 144111, 1, 4041, 4041), 'e').
%length_adjustment_type_1 - org.jfree.chart.util.LengthAdjustmentType
name(f_no_change_940, simple_name, length_adjustment_type_1_code8, name, range(length_adjustment_type_1, 2003, 9, 57, 57), 'NO_CHANGE').
name(f_expand_941, simple_name, length_adjustment_type_1_code14, name, range(length_adjustment_type_1, 2132, 6, 61, 61), 'EXPAND').
name(f_contract_942, simple_name, length_adjustment_type_1_code20, name, range(length_adjustment_type_1, 2257, 8, 65, 65), 'CONTRACT').
name(m_length_adjustment_type_645, simple_name, length_adjustment_type_1_code21, name, range(length_adjustment_type_1, 2460, 20, 76, 76), 'LengthAdjustmentType').
name(p_name_943, simple_name, length_adjustment_type_1_code23, name, range(length_adjustment_type_1, 2488, 4, 76, 76), 'name').
name(f_name_944, simple_name, length_adjustment_type_1_expr5, name, range(length_adjustment_type_1, 2509, 4, 77, 77), 'name').
name(p_name_943, simple_name, length_adjustment_type_1_expr4, right_hand_side, range(length_adjustment_type_1, 2516, 4, 77, 77), 'name').
%category_anchor_1 - org.jfree.chart.axis.CategoryAnchor
name(f_start_36, simple_name, category_anchor_1_code8, name, range(category_anchor_1, 2023, 5, 56, 56), 'START').
name(f_middle_37, simple_name, category_anchor_1_code14, name, range(category_anchor_1, 2157, 6, 60, 60), 'MIDDLE').
name(f_end_38, simple_name, category_anchor_1_code20, name, range(category_anchor_1, 2290, 3, 64, 64), 'END').
name(m_category_anchor_10, simple_name, category_anchor_1_code21, name, range(category_anchor_1, 2499, 14, 75, 75), 'CategoryAnchor').
name(p_name_39, simple_name, category_anchor_1_code23, name, range(category_anchor_1, 2521, 4, 75, 75), 'name').
name(f_name_40, simple_name, category_anchor_1_expr5, name, range(category_anchor_1, 2543, 4, 76, 76), 'name').
name(p_name_39, simple_name, category_anchor_1_expr4, right_hand_side, range(category_anchor_1, 2550, 4, 76, 76), 'name').
%series_rendering_order_1 - org.jfree.chart.plot.SeriesRenderingOrder
name(f_forward_549, simple_name, series_rendering_order_1_code8, name, range(series_rendering_order_1, 2214, 7, 60, 60), 'FORWARD').
name(f_reverse_550, simple_name, series_rendering_order_1_code14, name, range(series_rendering_order_1, 2461, 7, 67, 67), 'REVERSE').
name(m_series_rendering_order_360, simple_name, series_rendering_order_1_code15, name, range(series_rendering_order_1, 2693, 20, 78, 78), 'SeriesRenderingOrder').
name(p_name_551, simple_name, series_rendering_order_1_code17, name, range(series_rendering_order_1, 2721, 4, 78, 78), 'name').
name(f_name_552, simple_name, series_rendering_order_1_expr4, name, range(series_rendering_order_1, 2743, 4, 79, 79), 'name').
name(p_name_551, simple_name, series_rendering_order_1_expr3, right_hand_side, range(series_rendering_order_1, 2750, 4, 79, 79), 'name').
%layer_1 - org.jfree.chart.util.Layer
name(f_foreground_935, simple_name, layer_1_code8, name, range(layer_1, 1898, 10, 56, 56), 'FOREGROUND').
name(f_background_936, simple_name, layer_1_code15, name, range(layer_1, 1996, 10, 59, 59), 'BACKGROUND').
name(m_layer_640, simple_name, layer_1_code17, name, range(layer_1, 2181, 5, 69, 69), 'Layer').
name(p_name_937, simple_name, layer_1_code19, name, range(layer_1, 2194, 4, 69, 69), 'name').
name(f_name_938, simple_name, layer_1_expr4, name, range(layer_1, 2215, 4, 70, 70), 'name').
name(p_name_937, simple_name, layer_1_expr3, right_hand_side, range(layer_1, 2222, 4, 70, 70), 'name').
%plot_change_event_1 - org.jfree.chart.event.PlotChangeEvent
name(p_plot_60, simple_name, plot_change_event_1_stmt1, (arguments, 0), range(plot_change_event_1, 2308, 4, 64, 64), 'plot').
name(f_plot_61, simple_name, plot_change_event_1_expr3, name, range(plot_change_event_1, 2329, 4, 65, 65), 'plot').
name(p_plot_60, simple_name, plot_change_event_1_expr2, right_hand_side, range(plot_change_event_1, 2336, 4, 65, 65), 'plot').
%rectangle_insets_1 - org.jfree.chart.util.RectangleInsets
name(f_zero_insets_969, simple_name, rectangle_insets_1_code8, name, range(rectangle_insets_1, 2381, 11, 65, 65), 'ZERO_INSETS').
name(q_absolute_27, qualified_name, rectangle_insets_1_expr1, (arguments, 0), range(rectangle_insets_1, 2428, 17, 66, 66), 'UnitType.ABSOLUTE').
name(t_unit_type_14, simple_name, q_absolute_28, qualifier, range(rectangle_insets_1, 3347, 8, 102, 102), 'UnitType').
name(q_absolute_28, qualified_name, rectangle_insets_1_stmt1, (arguments, 0), range(rectangle_insets_1, 3347, 17, 102, 102), 'UnitType.ABSOLUTE').
name(p_top_970, simple_name, rectangle_insets_1_stmt1, (arguments, 1), range(rectangle_insets_1, 3366, 3, 102, 102), 'top').
name(p_left_971, simple_name, rectangle_insets_1_stmt1, (arguments, 2), range(rectangle_insets_1, 3371, 4, 102, 102), 'left').
name(p_bottom_972, simple_name, rectangle_insets_1_stmt1, (arguments, 3), range(rectangle_insets_1, 3377, 6, 102, 102), 'bottom').
name(p_right_973, simple_name, rectangle_insets_1_stmt1, (arguments, 4), range(rectangle_insets_1, 3385, 5, 102, 102), 'right').
name(p_bottom_978, simple_name, rectangle_insets_1_code12, name, range(rectangle_insets_1, 3831, 6, 116, 116), 'bottom').
name(p_right_979, simple_name, rectangle_insets_1_code14, name, range(rectangle_insets_1, 3846, 5, 116, 116), 'right').
name(p_unit_type_975, simple_name, rectangle_insets_1_expr3, left_operand, range(rectangle_insets_1, 3867, 8, 117, 117), 'unitType').
name(f_unit_type_980, simple_name, rectangle_insets_1_expr5, name, range(rectangle_insets_1, 3987, 8, 120, 120), 'unitType').
name(p_unit_type_975, simple_name, rectangle_insets_1_expr4, right_hand_side, range(rectangle_insets_1, 3998, 8, 120, 120), 'unitType').
name(f_top_981, simple_name, rectangle_insets_1_expr8, name, range(rectangle_insets_1, 4021, 3, 121, 121), 'top').
name(p_top_976, simple_name, rectangle_insets_1_expr7, right_hand_side, range(rectangle_insets_1, 4027, 3, 121, 121), 'top').
name(f_bottom_982, simple_name, rectangle_insets_1_expr11, name, range(rectangle_insets_1, 4045, 6, 122, 122), 'bottom').
name(p_bottom_978, simple_name, rectangle_insets_1_expr10, right_hand_side, range(rectangle_insets_1, 4054, 6, 122, 122), 'bottom').
name(f_left_983, simple_name, rectangle_insets_1_expr14, name, range(rectangle_insets_1, 4075, 4, 123, 123), 'left').
name(p_left_977, simple_name, rectangle_insets_1_expr13, right_hand_side, range(rectangle_insets_1, 4082, 4, 123, 123), 'left').
name(f_right_984, simple_name, rectangle_insets_1_expr17, name, range(rectangle_insets_1, 4101, 5, 124, 124), 'right').
name(p_right_979, simple_name, rectangle_insets_1_expr16, right_hand_side, range(rectangle_insets_1, 4109, 5, 124, 124), 'right').
%abstract_object_list_1 - org.jfree.chart.util.AbstractObjectList
name(f_size_919, simple_name, abstract_object_list_1_code6, name, range(abstract_object_list_1, 2412, 4, 68, 68), 'size').
name(f_increment_920, simple_name, abstract_object_list_1_code10, name, range(abstract_object_list_1, 2473, 9, 71, 71), 'increment').
name(f_default_initial_capacity_921, simple_name, abstract_object_list_1_code10, initializer, range(abstract_object_list_1, 2485, 24, 71, 71), 'DEFAULT_INITIAL_CAPACITY').
name(f_default_initial_capacity_921, simple_name, abstract_object_list_1_stmt1, (arguments, 0), range(abstract_object_list_1, 2639, 24, 77, 77), 'DEFAULT_INITIAL_CAPACITY').
name(p_initial_capacity_922, simple_name, abstract_object_list_1_stmt2, (arguments, 0), range(abstract_object_list_1, 2846, 15, 86, 86), 'initialCapacity').
name(p_initial_capacity_922, simple_name, abstract_object_list_1_stmt2, (arguments, 1), range(abstract_object_list_1, 2863, 15, 86, 86), 'initialCapacity').
name(m_abstract_object_list_629, simple_name, abstract_object_list_1_code13, name, range(abstract_object_list_1, 3046, 18, 95, 95), 'AbstractObjectList').
name(p_initial_capacity_923, simple_name, abstract_object_list_1_code15, name, range(abstract_object_list_1, 3069, 15, 95, 95), 'initialCapacity').
name(p_increment_924, simple_name, abstract_object_list_1_code17, name, range(abstract_object_list_1, 3090, 9, 95, 95), 'increment').
name(f_objects_925, simple_name, abstract_object_list_1_expr4, name, range(abstract_object_list_1, 3116, 7, 96, 96), 'objects').
name(p_initial_capacity_923, simple_name, abstract_object_list_1_expr5, (dimensions, 0), range(abstract_object_list_1, 3137, 15, 96, 96), 'initialCapacity').
name(f_increment_920, simple_name, abstract_object_list_1_expr8, name, range(abstract_object_list_1, 3168, 9, 97, 97), 'increment').
name(p_increment_924, simple_name, abstract_object_list_1_expr7, right_hand_side, range(abstract_object_list_1, 3180, 9, 97, 97), 'increment').
name(v_result_927, simple_name, abstract_object_list_1_code24, name, range(abstract_object_list_1, 3465, 6, 109, 109), 'result').
name(p_index_926, simple_name, abstract_object_list_1_expr11, left_operand, range(abstract_object_list_1, 3492, 5, 110, 110), 'index').
name(p_index_926, simple_name, abstract_object_list_1_expr12, left_operand, range(abstract_object_list_1, 3506, 5, 110, 110), 'index').
name(f_size_919, simple_name, abstract_object_list_1_expr13, name, range(abstract_object_list_1, 3519, 4, 110, 110), 'size').
name(v_result_927, simple_name, abstract_object_list_1_expr15, left_hand_side, range(abstract_object_list_1, 3539, 6, 111, 111), 'result').
name(f_objects_925, simple_name, abstract_object_list_1_expr17, name, range(abstract_object_list_1, 3553, 7, 111, 111), 'objects').
name(p_index_926, simple_name, abstract_object_list_1_expr16, index, range(abstract_object_list_1, 3561, 5, 111, 111), 'index').
name(v_result_927, simple_name, abstract_object_list_1_stmt8, expression, range(abstract_object_list_1, 3594, 6, 113, 113), 'result').
name(p_index_928, simple_name, abstract_object_list_1_expr19, left_operand, range(abstract_object_list_1, 3865, 5, 123, 123), 'index').
name(p_index_928, simple_name, abstract_object_list_1_expr20, left_operand, range(abstract_object_list_1, 3972, 5, 126, 126), 'index').
name(f_objects_925, simple_name, abstract_object_list_1_expr22, name, range(abstract_object_list_1, 3986, 7, 126, 126), 'objects').
name(f_length_930, simple_name, abstract_object_list_1_expr21, name, range(abstract_object_list_1, 3994, 6, 126, 126), 'length').
name(f_objects_925, simple_name, abstract_object_list_1_expr26, name, range(abstract_object_list_1, 4213, 7, 131, 131), 'objects').
name(p_index_928, simple_name, abstract_object_list_1_expr25, index, range(abstract_object_list_1, 4221, 5, 131, 131), 'index').
name(p_object_929, simple_name, abstract_object_list_1_expr24, right_hand_side, range(abstract_object_list_1, 4230, 6, 131, 131), 'object').
name(f_size_919, simple_name, abstract_object_list_1_expr29, name, range(abstract_object_list_1, 4251, 4, 132, 132), 'size').
name(t_math_13, simple_name, abstract_object_list_1_expr30, expression, range(abstract_object_list_1, 4258, 4, 132, 132), 'Math').
name(m_max_632, simple_name, abstract_object_list_1_expr30, name, range(abstract_object_list_1, 4263, 3, 132, 132), 'max').
name(f_size_919, simple_name, abstract_object_list_1_expr32, name, range(abstract_object_list_1, 4272, 4, 132, 132), 'size').
name(p_index_928, simple_name, abstract_object_list_1_expr33, left_operand, range(abstract_object_list_1, 4278, 5, 132, 132), 'index').
name(f_size_919, simple_name, abstract_object_list_1_expr35, name, range(abstract_object_list_1, 4575, 4, 149, 149), 'size').

%%% Literals
%category_marker_1 - org.jfree.chart.plot.CategoryMarker
literal(category_marker_1_literal1, boolean_literal, category_marker_1_code6, initializer, range(category_marker_1, 2590, 5, 72, 72), false).
literal(category_marker_1_literal2, number_literal, category_marker_1_expr2, (arguments, 0), range(category_marker_1, 2826, 4, 80, 80), 1.0).
literal(category_marker_1_literal3, number_literal, category_marker_1_stmt2, (arguments, 5), range(category_marker_1, 3204, 4, 91, 91), 1.0).
%category_plot_tests_1 - org.jfree.chart.plot.junit.CategoryPlotTests
literal(category_plot_tests_1_literal1, string_literal, category_plot_tests_1_expr7, (arguments, 0), range(category_plot_tests_1, 28836, 12, 771, 771), "Category 1").
literal(category_plot_tests_1_literal2, number_literal, category_plot_tests_1_expr11, (arguments, 0), range(category_plot_tests_1, 29110, 3, 780, 780), 0.5).
%text_anchor_1 - org.jfree.chart.text.TextAnchor
literal(text_anchor_1_literal1, string_literal, text_anchor_1_expr1, (arguments, 0), range(text_anchor_1, 2103, 21, 59, 59), "TextAnchor.TOP_LEFT").
literal(text_anchor_1_literal2, string_literal, text_anchor_1_expr2, (arguments, 0), range(text_anchor_1, 2227, 23, 63, 63), "TextAnchor.TOP_CENTER").
literal(text_anchor_1_literal3, string_literal, text_anchor_1_expr3, (arguments, 0), range(text_anchor_1, 2351, 22, 67, 67), "TextAnchor.TOP_RIGHT").
literal(text_anchor_1_literal4, string_literal, text_anchor_1_expr4, (arguments, 0), range(text_anchor_1, 2488, 29, 71, 71), "TextAnchor.HALF_ASCENT_LEFT").
literal(text_anchor_1_literal5, string_literal, text_anchor_1_expr5, (arguments, 0), range(text_anchor_1, 2636, 31, 75, 75), "TextAnchor.HALF_ASCENT_CENTER").
literal(text_anchor_1_literal6, string_literal, text_anchor_1_expr6, (arguments, 0), range(text_anchor_1, 2784, 30, 79, 79), "TextAnchor.HALF_ASCENT_RIGHT").
literal(text_anchor_1_literal7, string_literal, text_anchor_1_expr7, (arguments, 0), range(text_anchor_1, 2919, 24, 83, 83), "TextAnchor.CENTER_LEFT").
literal(text_anchor_1_literal8, string_literal, text_anchor_1_expr8, (arguments, 0), range(text_anchor_1, 3032, 19, 86, 86), "TextAnchor.CENTER").
literal(text_anchor_1_literal9, string_literal, text_anchor_1_expr9, (arguments, 0), range(text_anchor_1, 3158, 25, 90, 90), "TextAnchor.CENTER_RIGHT").
literal(text_anchor_1_literal10, string_literal, text_anchor_1_expr10, (arguments, 0), range(text_anchor_1, 3292, 26, 94, 94), "TextAnchor.BASELINE_LEFT").
literal(text_anchor_1_literal11, string_literal, text_anchor_1_expr11, (arguments, 0), range(text_anchor_1, 3431, 28, 98, 98), "TextAnchor.BASELINE_CENTER").
literal(text_anchor_1_literal12, string_literal, text_anchor_1_expr12, (arguments, 0), range(text_anchor_1, 3570, 27, 102, 102), "TextAnchor.BASELINE_RIGHT").
literal(text_anchor_1_literal13, string_literal, text_anchor_1_expr13, (arguments, 0), range(text_anchor_1, 3702, 24, 106, 106), "TextAnchor.BOTTOM_LEFT").
literal(text_anchor_1_literal14, string_literal, text_anchor_1_expr14, (arguments, 0), range(text_anchor_1, 3835, 26, 110, 110), "TextAnchor.BOTTOM_CENTER").
literal(text_anchor_1_literal15, string_literal, text_anchor_1_expr15, (arguments, 0), range(text_anchor_1, 3968, 25, 114, 114), "TextAnchor.BOTTOM_RIGHT").
%xyplot_tests_1 - org.jfree.chart.plot.junit.XYPlotTests
literal(xyplot_tests_1_literal1, number_literal, xyplot_tests_1_expr7, (arguments, 0), range(xyplot_tests_1, 38112, 3, 1028, 1028), 0.5).
literal(xyplot_tests_1_literal2, number_literal, xyplot_tests_1_expr11, (arguments, 0), range(xyplot_tests_1, 38365, 3, 1037, 1037), 0.5).
%marker_1 - org.jfree.chart.plot.Marker
literal(marker_1_literal1, null_literal, marker_1_code6, initializer, range(marker_1, 4451, 4, 115, 115), null).
literal(marker_1_literal3, number_literal, marker_1_expr3, (arguments, 0), range(marker_1, 5461, 4, 153, 153), 0.5).
literal(marker_1_literal4, number_literal, marker_1_expr4, (arguments, 0), range(marker_1, 5496, 4, 153, 153), 0.5).
literal(marker_1_literal2, number_literal, marker_1_stmt2, (arguments, 4), range(marker_1, 5521, 5, 154, 154), 0.8).
literal(marker_1_literal5, null_literal, marker_1_expr5, right_operand, range(marker_1, 6363, 4, 175, 175), null).
literal(marker_1_literal6, null_literal, marker_1_expr6, right_operand, range(marker_1, 6480, 4, 178, 178), null).
literal(marker_1_literal7, number_literal, marker_1_expr8, right_operand, range(marker_1, 6596, 4, 181, 181), 0.0).
literal(marker_1_literal8, number_literal, marker_1_expr9, right_operand, range(marker_1, 6612, 4, 181, 181), 1.0).
literal(marker_1_literal9, string_literal, marker_1_expr27, (arguments, 0), range(marker_1, 6976, 11, 191, 191), "SansSerif").
literal(marker_1_literal10, number_literal, marker_1_expr27, (arguments, 2), range(marker_1, 7001, 1, 191, 191), 9).
literal(marker_1_literal11, number_literal, marker_1_expr37, (arguments, 0), range(marker_1, 7147, 3, 194, 194), 3.0).
literal(marker_1_literal12, number_literal, marker_1_expr37, (arguments, 1), range(marker_1, 7152, 3, 194, 194), 3.0).
literal(marker_1_literal13, number_literal, marker_1_expr37, (arguments, 2), range(marker_1, 7157, 3, 194, 194), 3.0).
literal(marker_1_literal14, number_literal, marker_1_expr37, (arguments, 3), range(marker_1, 7162, 3, 194, 194), 3.0).
literal(marker_1_literal15, null_literal, marker_1_expr49, right_operand, range(marker_1, 15658, 4, 490, 490), null).
literal(marker_1_literal16, number_literal, marker_1_expr64, right_operand, range(marker_1, 17847, 1, 560, 560), 2).
literal(marker_1_literal17, number_literal, marker_1_expr65, right_operand, range(marker_1, 17855, 1, 560, 560), 0).
literal(marker_1_literal18, number_literal, marker_1_expr66, right_hand_side, range(marker_1, 17863, 1, 560, 560), 2).
%value_marker_1 - org.jfree.chart.plot.ValueMarker
%sort_order_1 - org.jfree.chart.util.SortOrder
literal(sort_order_1_literal1, string_literal, sort_order_1_expr1, (arguments, 0), range(sort_order_1, 2139, 21, 60, 60), "SortOrder.ASCENDING").
literal(sort_order_1_literal2, string_literal, sort_order_1_expr2, (arguments, 0), range(sort_order_1, 2267, 22, 64, 64), "SortOrder.DESCENDING").
%plot_1 - org.jfree.chart.plot.Plot
literal(plot_1_literal1, number_literal, plot_1_expr1, (arguments, 0), range(plot_1, 9277, 1, 191, 191), 0).
literal(plot_1_literal2, number_literal, plot_1_expr3, (arguments, 0), range(plot_1, 9543, 4, 198, 198), 0.5).
literal(plot_1_literal3, number_literal, plot_1_code54, initializer, range(plot_1, 12077, 4, 267, 267), 0.5).
literal(plot_1_literal4, null_literal, plot_1_expr6, right_hand_side, range(plot_1, 12562, 4, 286, 286), null).
literal(plot_1_literal5, null_literal, plot_1_expr18, right_hand_side, range(plot_1, 12755, 4, 290, 290), null).
literal(plot_1_literal6, boolean_literal, plot_1_expr21, right_hand_side, range(plot_1, 12792, 4, 291, 291), true).
literal(plot_1_literal7, null_literal, plot_1_expr33, right_hand_side, range(plot_1, 12994, 4, 296, 296), null).
literal(plot_1_literal8, string_literal, plot_1_expr38, (arguments, 0), range(plot_1, 13043, 11, 297, 297), "SansSerif").
literal(plot_1_literal9, number_literal, plot_1_expr38, (arguments, 2), range(plot_1, 13068, 2, 297, 297), 12).
literal(plot_1_literal10, number_literal, plot_1_expr57, right_operand, range(plot_1, 30736, 1, 889, 889), 2).
literal(plot_1_literal11, number_literal, plot_1_expr58, right_operand, range(plot_1, 30744, 1, 889, 889), 0).
literal(plot_1_literal12, number_literal, plot_1_expr59, right_hand_side, range(plot_1, 30752, 1, 889, 889), 2).
%chart_change_event_1 - org.jfree.chart.event.ChartChangeEvent
literal(chart_change_event_1_literal1, null_literal, chart_change_event_1_stmt1, (arguments, 1), range(chart_change_event_1, 2498, 4, 69, 69), null).
%rectangle_anchor_1 - org.jfree.chart.util.RectangleAnchor
%category_plot_1 - org.jfree.chart.plot.CategoryPlot
literal(category_plot_1_literal1, number_literal, category_plot_1_expr1, (arguments, 0), range(category_plot_1, 12562, 4, 251, 251), 0.5).
literal(category_plot_1_literal2, number_literal, category_plot_1_expr1, (arguments, 3), range(category_plot_1, 12627, 4, 252, 252), 0.0).
literal(category_plot_1_literal3, number_literal, category_plot_1_expr1, (arguments, 5), range(category_plot_1, 12673, 4, 253, 253), 0.0).
literal(category_plot_1_literal4, string_literal, category_plot_1_expr3, (arguments, 0), range(category_plot_1, 12902, 11, 259, 259), "SansSerif").
literal(category_plot_1_literal5, number_literal, category_plot_1_expr3, (arguments, 2), range(category_plot_1, 12941, 2, 260, 260), 10).
literal(category_plot_1_literal6, boolean_literal, category_plot_1_code55, initializer, range(category_plot_1, 16873, 4, 387, 387), true).
literal(category_plot_1_literal7, null_literal, category_plot_1_stmt1, (arguments, 0), range(category_plot_1, 18172, 4, 430, 430), null).
literal(category_plot_1_literal8, null_literal, category_plot_1_stmt1, (arguments, 1), range(category_plot_1, 18178, 4, 430, 430), null).
literal(category_plot_1_literal9, null_literal, category_plot_1_stmt1, (arguments, 2), range(category_plot_1, 18184, 4, 430, 430), null).
literal(category_plot_1_literal10, null_literal, category_plot_1_stmt1, (arguments, 3), range(category_plot_1, 18190, 4, 430, 430), null).
literal(category_plot_1_literal11, number_literal, category_plot_1_expr42, (arguments, 0), range(category_plot_1, 19335, 1, 463, 463), 0).
literal(category_plot_1_literal12, null_literal, category_plot_1_expr45, right_operand, range(category_plot_1, 19372, 4, 464, 464), null).
literal(category_plot_1_literal13, number_literal, category_plot_1_expr48, (arguments, 0), range(category_plot_1, 19486, 3, 468, 468), 4.0).
literal(category_plot_1_literal14, number_literal, category_plot_1_expr48, (arguments, 1), range(category_plot_1, 19491, 3, 468, 468), 4.0).
literal(category_plot_1_literal15, number_literal, category_plot_1_expr48, (arguments, 2), range(category_plot_1, 19496, 3, 468, 468), 4.0).
literal(category_plot_1_literal16, number_literal, category_plot_1_expr48, (arguments, 3), range(category_plot_1, 19501, 3, 468, 468), 4.0).
literal(category_plot_1_literal17, boolean_literal, category_plot_1_expr50, (arguments, 1), range(category_plot_1, 19569, 5, 470, 470), false).
literal(category_plot_1_literal18, boolean_literal, category_plot_1_expr51, (arguments, 1), range(category_plot_1, 19633, 5, 471, 471), false).
literal(category_plot_1_literal19, number_literal, category_plot_1_expr52, (arguments, 0), range(category_plot_1, 19671, 1, 473, 473), 0).
literal(category_plot_1_literal20, null_literal, category_plot_1_expr55, right_operand, range(category_plot_1, 19710, 4, 474, 474), null).
literal(category_plot_1_literal21, number_literal, category_plot_1_expr56, (arguments, 0), range(category_plot_1, 19844, 1, 479, 479), 0).
literal(category_plot_1_literal22, number_literal, category_plot_1_expr59, (arguments, 0), range(category_plot_1, 19897, 1, 480, 480), 0).
literal(category_plot_1_literal23, number_literal, category_plot_1_expr59, (arguments, 1), range(category_plot_1, 19900, 1, 480, 480), 0).
literal(category_plot_1_literal24, null_literal, category_plot_1_expr61, right_operand, range(category_plot_1, 19931, 4, 481, 481), null).
literal(category_plot_1_literal25, boolean_literal, category_plot_1_expr62, right_hand_side, range(category_plot_1, 20075, 5, 485, 485), false).
literal(category_plot_1_literal26, number_literal, category_plot_1_expr65, (arguments, 0), range(category_plot_1, 20112, 1, 487, 487), 0).
literal(category_plot_1_literal27, number_literal, category_plot_1_expr68, (arguments, 0), range(category_plot_1, 20163, 1, 488, 488), 0).
literal(category_plot_1_literal28, number_literal, category_plot_1_expr68, (arguments, 1), range(category_plot_1, 20166, 1, 488, 488), 0).
literal(category_plot_1_literal29, null_literal, category_plot_1_expr70, right_operand, range(category_plot_1, 20196, 4, 489, 489), null).
literal(category_plot_1_literal30, number_literal, category_plot_1_expr110, (arguments, 0), range(category_plot_1, 21091, 3, 511, 511), 0.0).
literal(category_plot_1_literal32, number_literal, category_plot_1_expr111, (arguments, 0), range(category_plot_1, 21106, 4, 511, 511), 0.8).
literal(category_plot_1_literal33, number_literal, category_plot_1_expr111, (arguments, 1), range(category_plot_1, 21112, 4, 511, 511), 0.8).
literal(category_plot_1_literal34, number_literal, category_plot_1_expr111, (arguments, 2), range(category_plot_1, 21118, 4, 511, 511), 0.8).
literal(category_plot_1_literal35, number_literal, category_plot_1_expr111, (arguments, 3), range(category_plot_1, 21142, 4, 512, 512), 0.5).
literal(category_plot_1_literal31, number_literal, category_plot_1_expr110, (arguments, 5), range(category_plot_1, 21251, 4, 513, 513), 0.6).
literal(category_plot_1_literal36, number_literal, category_plot_1_expr116, right_hand_side, range(category_plot_1, 21341, 3, 516, 516), 0.0).
literal(category_plot_1_literal37, number_literal, category_plot_1_expr122, right_hand_side, range(category_plot_1, 21449, 3, 519, 519), 0.0).
literal(category_plot_1_literal38, number_literal, category_plot_1_expr135, (arguments, 0), range(category_plot_1, 29060, 1, 767, 767), 0).
literal(category_plot_1_literal39, number_literal, category_plot_1_expr137, right_operand, range(category_plot_1, 30115, 1, 800, 800), 0).
literal(category_plot_1_literal40, null_literal, category_plot_1_expr138, right_operand, range(category_plot_1, 30132, 4, 800, 800), null).
literal(category_plot_1_literal41, number_literal, category_plot_1_code80, initializer, range(category_plot_1, 32055, 1, 867, 867), 0).
literal(category_plot_1_literal42, null_literal, category_plot_1_expr152, right_operand, range(category_plot_1, 32190, 4, 869, 869), null).
literal(category_plot_1_literal43, null_literal, category_plot_1_code86, initializer, range(category_plot_1, 32858, 4, 894, 894), null).
literal(category_plot_1_literal44, null_literal, category_plot_1_expr162, right_operand, range(category_plot_1, 33005, 4, 898, 898), null).
literal(category_plot_1_literal45, number_literal, category_plot_1_expr165, (arguments, 0), range(category_plot_1, 37775, 1, 1051, 1051), 0).
literal(category_plot_1_literal46, number_literal, category_plot_1_expr167, right_operand, range(category_plot_1, 38800, 1, 1081, 1081), 0).
literal(category_plot_1_literal47, null_literal, category_plot_1_expr168, right_operand, range(category_plot_1, 38817, 4, 1081, 1081), null).
literal(category_plot_1_literal48, number_literal, category_plot_1_code95, initializer, range(category_plot_1, 40606, 1, 1145, 1145), 0).
literal(category_plot_1_literal49, null_literal, category_plot_1_expr182, right_operand, range(category_plot_1, 40733, 4, 1147, 1147), null).
literal(category_plot_1_literal50, null_literal, category_plot_1_code101, initializer, range(category_plot_1, 41410, 4, 1174, 1174), null).
literal(category_plot_1_literal51, number_literal, category_plot_1_code113, initializer, range(category_plot_1, 64110, 1, 1856, 1856), 0).
literal(category_plot_1_literal52, null_literal, category_plot_1_expr215, right_operand, range(category_plot_1, 64229, 4, 1858, 1858), null).
literal(category_plot_1_literal53, null_literal, category_plot_1_expr216, right_operand, range(category_plot_1, 64327, 4, 1862, 1862), null).
literal(category_plot_1_literal54, number_literal, category_plot_1_expr223, (arguments, 0), range(category_plot_1, 73925, 1, 2122, 2122), 0).
literal(category_plot_1_literal55, boolean_literal, category_plot_1_expr224, (arguments, 3), range(category_plot_1, 74524, 4, 2139, 2139), true).
literal(category_plot_1_literal56, number_literal, category_plot_1_expr233, (arguments, 0), range(category_plot_1, 76815, 1, 2200, 2200), 0).
literal(category_plot_1_literal57, boolean_literal, category_plot_1_expr234, (arguments, 3), range(category_plot_1, 77452, 4, 2217, 2217), true).
literal(category_plot_1_literal58, null_literal, category_plot_1_expr243, right_operand, range(category_plot_1, 78735, 4, 2251, 2251), null).
literal(category_plot_1_literal59, number_literal, category_plot_1_expr255, (arguments, 0), range(category_plot_1, 83654, 1, 2396, 2396), 0).
literal(category_plot_1_literal60, boolean_literal, category_plot_1_expr256, (arguments, 3), range(category_plot_1, 84309, 4, 2415, 2415), true).
literal(category_plot_1_literal61, null_literal, category_plot_1_expr257, right_operand, range(category_plot_1, 84999, 4, 2436, 2436), null).
%object_list_1 - org.jfree.chart.util.ObjectList
%plot_orientation_1 - org.jfree.chart.plot.PlotOrientation
%chart_color_1 - org.jfree.chart.ChartColor
literal(chart_color_1_literal1, number_literal, chart_color_1_expr1, (arguments, 0), range(chart_color_1, 2296, 4, 59, 59), 0x80).
literal(chart_color_1_literal2, number_literal, chart_color_1_expr1, (arguments, 1), range(chart_color_1, 2302, 4, 59, 59), 0x00).
literal(chart_color_1_literal3, number_literal, chart_color_1_expr1, (arguments, 2), range(chart_color_1, 2308, 4, 59, 59), 0x00).
literal(chart_color_1_literal4, number_literal, chart_color_1_expr2, (arguments, 0), range(chart_color_1, 2399, 4, 62, 62), 0xc0).
literal(chart_color_1_literal5, number_literal, chart_color_1_expr2, (arguments, 1), range(chart_color_1, 2405, 4, 62, 62), 0x00).
literal(chart_color_1_literal6, number_literal, chart_color_1_expr2, (arguments, 2), range(chart_color_1, 2411, 4, 62, 62), 0x00).
literal(chart_color_1_literal7, number_literal, chart_color_1_expr3, (arguments, 0), range(chart_color_1, 2504, 4, 65, 65), 0xFF).
literal(chart_color_1_literal8, number_literal, chart_color_1_expr3, (arguments, 1), range(chart_color_1, 2510, 4, 65, 65), 0x40).
literal(chart_color_1_literal9, number_literal, chart_color_1_expr3, (arguments, 2), range(chart_color_1, 2516, 4, 65, 65), 0x40).
literal(chart_color_1_literal10, number_literal, chart_color_1_expr4, (arguments, 0), range(chart_color_1, 2619, 4, 68, 68), 0xFF).
literal(chart_color_1_literal11, number_literal, chart_color_1_expr4, (arguments, 1), range(chart_color_1, 2625, 4, 68, 68), 0x80).
literal(chart_color_1_literal12, number_literal, chart_color_1_expr4, (arguments, 2), range(chart_color_1, 2631, 4, 68, 68), 0x80).
literal(chart_color_1_literal13, number_literal, chart_color_1_expr5, (arguments, 0), range(chart_color_1, 2738, 4, 71, 71), 0x80).
literal(chart_color_1_literal14, number_literal, chart_color_1_expr5, (arguments, 1), range(chart_color_1, 2744, 4, 71, 71), 0x80).
literal(chart_color_1_literal15, number_literal, chart_color_1_expr5, (arguments, 2), range(chart_color_1, 2750, 4, 71, 71), 0x00).
literal(chart_color_1_literal16, number_literal, chart_color_1_expr6, (arguments, 0), range(chart_color_1, 2847, 4, 74, 74), 0xC0).
literal(chart_color_1_literal17, number_literal, chart_color_1_expr6, (arguments, 1), range(chart_color_1, 2853, 4, 74, 74), 0xC0).
literal(chart_color_1_literal18, number_literal, chart_color_1_expr6, (arguments, 2), range(chart_color_1, 2859, 4, 74, 74), 0x00).
literal(chart_color_1_literal19, number_literal, chart_color_1_expr7, (arguments, 0), range(chart_color_1, 2958, 4, 77, 77), 0xFF).
literal(chart_color_1_literal20, number_literal, chart_color_1_expr7, (arguments, 1), range(chart_color_1, 2964, 4, 77, 77), 0xFF).
literal(chart_color_1_literal21, number_literal, chart_color_1_expr7, (arguments, 2), range(chart_color_1, 2970, 4, 77, 77), 0x40).
literal(chart_color_1_literal22, number_literal, chart_color_1_expr8, (arguments, 0), range(chart_color_1, 3079, 4, 80, 80), 0xFF).
literal(chart_color_1_literal23, number_literal, chart_color_1_expr8, (arguments, 1), range(chart_color_1, 3085, 4, 80, 80), 0xFF).
literal(chart_color_1_literal24, number_literal, chart_color_1_expr8, (arguments, 2), range(chart_color_1, 3091, 4, 80, 80), 0x80).
literal(chart_color_1_literal25, number_literal, chart_color_1_expr9, (arguments, 0), range(chart_color_1, 3196, 4, 83, 83), 0x00).
literal(chart_color_1_literal26, number_literal, chart_color_1_expr9, (arguments, 1), range(chart_color_1, 3202, 4, 83, 83), 0x80).
literal(chart_color_1_literal27, number_literal, chart_color_1_expr9, (arguments, 2), range(chart_color_1, 3208, 4, 83, 83), 0x00).
literal(chart_color_1_literal28, number_literal, chart_color_1_expr10, (arguments, 0), range(chart_color_1, 3303, 4, 86, 86), 0x00).
literal(chart_color_1_literal29, number_literal, chart_color_1_expr10, (arguments, 1), range(chart_color_1, 3309, 4, 86, 86), 0xC0).
literal(chart_color_1_literal30, number_literal, chart_color_1_expr10, (arguments, 2), range(chart_color_1, 3315, 4, 86, 86), 0x00).
literal(chart_color_1_literal31, number_literal, chart_color_1_expr11, (arguments, 0), range(chart_color_1, 3412, 4, 89, 89), 0x40).
literal(chart_color_1_literal32, number_literal, chart_color_1_expr11, (arguments, 1), range(chart_color_1, 3418, 4, 89, 89), 0xFF).
literal(chart_color_1_literal33, number_literal, chart_color_1_expr11, (arguments, 2), range(chart_color_1, 3424, 4, 89, 89), 0x40).
literal(chart_color_1_literal34, number_literal, chart_color_1_expr12, (arguments, 0), range(chart_color_1, 3531, 4, 92, 92), 0x80).
literal(chart_color_1_literal35, number_literal, chart_color_1_expr12, (arguments, 1), range(chart_color_1, 3537, 4, 92, 92), 0xFF).
literal(chart_color_1_literal36, number_literal, chart_color_1_expr12, (arguments, 2), range(chart_color_1, 3543, 4, 92, 92), 0x80).
literal(chart_color_1_literal37, number_literal, chart_color_1_expr13, (arguments, 0), range(chart_color_1, 3646, 4, 95, 95), 0x00).
literal(chart_color_1_literal38, number_literal, chart_color_1_expr13, (arguments, 1), range(chart_color_1, 3652, 4, 95, 95), 0x80).
literal(chart_color_1_literal39, number_literal, chart_color_1_expr13, (arguments, 2), range(chart_color_1, 3658, 4, 95, 95), 0x80).
literal(chart_color_1_literal40, number_literal, chart_color_1_expr14, (arguments, 0), range(chart_color_1, 3751, 4, 98, 98), 0x00).
literal(chart_color_1_literal41, number_literal, chart_color_1_expr14, (arguments, 1), range(chart_color_1, 3757, 4, 98, 98), 0xC0).
literal(chart_color_1_literal42, number_literal, chart_color_1_expr14, (arguments, 2), range(chart_color_1, 3763, 4, 98, 98), 0xC0).
literal(chart_color_1_literal43, number_literal, chart_color_1_expr15, (arguments, 0), range(chart_color_1, 3858, 4, 101, 101), 0x40).
literal(chart_color_1_literal44, number_literal, chart_color_1_expr15, (arguments, 1), range(chart_color_1, 3864, 4, 101, 101), 0xFF).
literal(chart_color_1_literal45, number_literal, chart_color_1_expr15, (arguments, 2), range(chart_color_1, 3870, 4, 101, 101), 0xFF).
literal(chart_color_1_literal46, number_literal, chart_color_1_expr16, (arguments, 0), range(chart_color_1, 3976, 4, 104, 104), 0x80).
literal(chart_color_1_literal47, number_literal, chart_color_1_expr16, (arguments, 1), range(chart_color_1, 3982, 4, 104, 104), 0xFF).
literal(chart_color_1_literal48, number_literal, chart_color_1_expr16, (arguments, 2), range(chart_color_1, 3988, 4, 104, 104), 0xFF).
literal(chart_color_1_literal49, number_literal, chart_color_1_expr17, (arguments, 0), range(chart_color_1, 4091, 4, 107, 107), 0x00).
literal(chart_color_1_literal50, number_literal, chart_color_1_expr17, (arguments, 1), range(chart_color_1, 4097, 4, 107, 107), 0x00).
literal(chart_color_1_literal51, number_literal, chart_color_1_expr17, (arguments, 2), range(chart_color_1, 4103, 4, 107, 107), 0x80).
literal(chart_color_1_literal52, number_literal, chart_color_1_expr18, (arguments, 0), range(chart_color_1, 4196, 4, 110, 110), 0x00).
literal(chart_color_1_literal53, number_literal, chart_color_1_expr18, (arguments, 1), range(chart_color_1, 4202, 4, 110, 110), 0x00).
literal(chart_color_1_literal54, number_literal, chart_color_1_expr18, (arguments, 2), range(chart_color_1, 4208, 4, 110, 110), 0xC0).
literal(chart_color_1_literal55, number_literal, chart_color_1_expr19, (arguments, 0), range(chart_color_1, 4303, 4, 113, 113), 0x40).
literal(chart_color_1_literal56, number_literal, chart_color_1_expr19, (arguments, 1), range(chart_color_1, 4309, 4, 113, 113), 0x40).
literal(chart_color_1_literal57, number_literal, chart_color_1_expr19, (arguments, 2), range(chart_color_1, 4315, 4, 113, 113), 0xFF).
literal(chart_color_1_literal58, number_literal, chart_color_1_expr20, (arguments, 0), range(chart_color_1, 4420, 4, 116, 116), 0x80).
literal(chart_color_1_literal59, number_literal, chart_color_1_expr20, (arguments, 1), range(chart_color_1, 4426, 4, 116, 116), 0x80).
literal(chart_color_1_literal60, number_literal, chart_color_1_expr20, (arguments, 2), range(chart_color_1, 4432, 4, 116, 116), 0xFF).
literal(chart_color_1_literal61, number_literal, chart_color_1_expr21, (arguments, 0), range(chart_color_1, 4548, 4, 119, 119), 0x80).
literal(chart_color_1_literal62, number_literal, chart_color_1_expr21, (arguments, 1), range(chart_color_1, 4554, 4, 119, 119), 0x00).
literal(chart_color_1_literal63, number_literal, chart_color_1_expr21, (arguments, 2), range(chart_color_1, 4560, 4, 119, 119), 0x80).
literal(chart_color_1_literal64, number_literal, chart_color_1_expr22, (arguments, 0), range(chart_color_1, 4659, 4, 122, 122), 0xC0).
literal(chart_color_1_literal65, number_literal, chart_color_1_expr22, (arguments, 1), range(chart_color_1, 4665, 4, 122, 122), 0x00).
literal(chart_color_1_literal66, number_literal, chart_color_1_expr22, (arguments, 2), range(chart_color_1, 4671, 4, 122, 122), 0xC0).
literal(chart_color_1_literal67, number_literal, chart_color_1_expr23, (arguments, 0), range(chart_color_1, 4772, 4, 125, 125), 0xFF).
literal(chart_color_1_literal68, number_literal, chart_color_1_expr23, (arguments, 1), range(chart_color_1, 4778, 4, 125, 125), 0x40).
literal(chart_color_1_literal69, number_literal, chart_color_1_expr23, (arguments, 2), range(chart_color_1, 4784, 4, 125, 125), 0xFF).
literal(chart_color_1_literal70, number_literal, chart_color_1_expr24, (arguments, 0), range(chart_color_1, 4895, 4, 128, 128), 0xFF).
literal(chart_color_1_literal71, number_literal, chart_color_1_expr24, (arguments, 1), range(chart_color_1, 4901, 4, 128, 128), 0x80).
literal(chart_color_1_literal72, number_literal, chart_color_1_expr24, (arguments, 2), range(chart_color_1, 4907, 4, 128, 128), 0xFF).
%default_drawing_supplier_1 - org.jfree.chart.plot.DefaultDrawingSupplier
literal(default_drawing_supplier_1_literal1, number_literal, default_drawing_supplier_1_expr29, (dimensions, 0), range(default_drawing_supplier_1, 9798, 2, 289, 289), 10).
literal(default_drawing_supplier_1_literal2, number_literal, default_drawing_supplier_1_code75, initializer, range(default_drawing_supplier_1, 9828, 3, 291, 291), 6.0).
literal(default_drawing_supplier_1_literal3, number_literal, default_drawing_supplier_1_expr30, right_operand, range(default_drawing_supplier_1, 9864, 3, 292, 292), 2.0).
literal(default_drawing_supplier_1_literal4, null_literal, default_drawing_supplier_1_code81, initializer, range(default_drawing_supplier_1, 9894, 4, 293, 293), null).
literal(default_drawing_supplier_1_literal5, null_literal, default_drawing_supplier_1_code85, initializer, range(default_drawing_supplier_1, 9925, 4, 294, 294), null).
literal(default_drawing_supplier_1_literal6, number_literal, default_drawing_supplier_1_expr32, index, range(default_drawing_supplier_1, 9968, 1, 297, 297), 0).
literal(default_drawing_supplier_1_literal7, number_literal, default_drawing_supplier_1_expr37, index, range(default_drawing_supplier_1, 10060, 1, 299, 299), 1).
literal(default_drawing_supplier_1_literal8, number_literal, default_drawing_supplier_1_expr42, (arguments, 0), range(default_drawing_supplier_1, 10178, 3, 302, 302), 0.0).
literal(default_drawing_supplier_1_literal9, number_literal, default_drawing_supplier_1_expr48, index, range(default_drawing_supplier_1, 10266, 1, 304, 304), 2).
literal(default_drawing_supplier_1_literal10, number_literal, default_drawing_supplier_1_expr49, (arguments, 2), range(default_drawing_supplier_1, 10301, 1, 304, 304), 3).
literal(default_drawing_supplier_1_literal11, number_literal, default_drawing_supplier_1_expr51, (arguments, 0), range(default_drawing_supplier_1, 10355, 3, 307, 307), 0.0).
literal(default_drawing_supplier_1_literal12, number_literal, default_drawing_supplier_1_expr51, (arguments, 2), range(default_drawing_supplier_1, 10367, 3, 307, 307), 0.0).
literal(default_drawing_supplier_1_literal13, number_literal, default_drawing_supplier_1_expr54, (arguments, 1), range(default_drawing_supplier_1, 10417, 3, 308, 308), 0.0).
literal(default_drawing_supplier_1_literal14, number_literal, default_drawing_supplier_1_expr54, (arguments, 3), range(default_drawing_supplier_1, 10429, 3, 308, 308), 0.0).
literal(default_drawing_supplier_1_literal15, number_literal, default_drawing_supplier_1_expr57, index, range(default_drawing_supplier_1, 10451, 1, 309, 309), 3).
literal(default_drawing_supplier_1_literal16, number_literal, default_drawing_supplier_1_expr58, (arguments, 2), range(default_drawing_supplier_1, 10486, 1, 309, 309), 4).
literal(default_drawing_supplier_1_literal17, number_literal, default_drawing_supplier_1_expr60, index, range(default_drawing_supplier_1, 10541, 1, 312, 312), 4).
literal(default_drawing_supplier_1_literal18, number_literal, default_drawing_supplier_1_expr63, right_operand, range(default_drawing_supplier_1, 10586, 1, 312, 312), 2).
literal(default_drawing_supplier_1_literal19, number_literal, default_drawing_supplier_1_expr64, right_operand, range(default_drawing_supplier_1, 10602, 1, 312, 312), 2).
literal(default_drawing_supplier_1_literal20, number_literal, default_drawing_supplier_1_expr67, (arguments, 2), range(default_drawing_supplier_1, 10687, 3, 315, 315), 0.0).
literal(default_drawing_supplier_1_literal21, number_literal, default_drawing_supplier_1_expr75, index, range(default_drawing_supplier_1, 10761, 1, 317, 317), 5).
literal(default_drawing_supplier_1_literal22, number_literal, default_drawing_supplier_1_expr76, (arguments, 2), range(default_drawing_supplier_1, 10796, 1, 317, 317), 3).
literal(default_drawing_supplier_1_literal23, number_literal, default_drawing_supplier_1_expr78, index, range(default_drawing_supplier_1, 10849, 1, 320, 320), 6).
literal(default_drawing_supplier_1_literal24, number_literal, default_drawing_supplier_1_expr81, right_operand, range(default_drawing_supplier_1, 10892, 1, 320, 320), 2).
literal(default_drawing_supplier_1_literal25, number_literal, default_drawing_supplier_1_expr82, right_operand, range(default_drawing_supplier_1, 10908, 1, 320, 320), 2).
literal(default_drawing_supplier_1_literal26, number_literal, default_drawing_supplier_1_expr89, (arguments, 1), range(default_drawing_supplier_1, 11038, 3, 324, 324), 0.0).
literal(default_drawing_supplier_1_literal27, number_literal, default_drawing_supplier_1_expr92, index, range(default_drawing_supplier_1, 11067, 1, 325, 325), 7).
literal(default_drawing_supplier_1_literal28, number_literal, default_drawing_supplier_1_expr93, (arguments, 2), range(default_drawing_supplier_1, 11102, 1, 325, 325), 3).
literal(default_drawing_supplier_1_literal29, number_literal, default_drawing_supplier_1_expr95, index, range(default_drawing_supplier_1, 11155, 1, 328, 328), 8).
literal(default_drawing_supplier_1_literal30, number_literal, default_drawing_supplier_1_expr97, right_operand, range(default_drawing_supplier_1, 11192, 1, 328, 328), 2).
literal(default_drawing_supplier_1_literal31, number_literal, default_drawing_supplier_1_expr99, right_operand, range(default_drawing_supplier_1, 11210, 1, 328, 328), 2).
literal(default_drawing_supplier_1_literal32, number_literal, default_drawing_supplier_1_expr105, (arguments, 0), range(default_drawing_supplier_1, 11336, 3, 332, 332), 0.0).
literal(default_drawing_supplier_1_literal33, number_literal, default_drawing_supplier_1_expr109, index, range(default_drawing_supplier_1, 11374, 1, 333, 333), 9).
literal(default_drawing_supplier_1_literal34, number_literal, default_drawing_supplier_1_expr110, (arguments, 2), range(default_drawing_supplier_1, 11409, 1, 333, 333), 3).
%unit_type_1 - org.jfree.chart.util.UnitType
literal(unit_type_1_literal1, string_literal, unit_type_1_expr1, (arguments, 0), range(unit_type_1, 1923, 19, 56, 56), "UnitType.ABSOLUTE").
literal(unit_type_1_literal2, string_literal, unit_type_1_expr2, (arguments, 0), range(unit_type_1, 2024, 19, 59, 59), "UnitType.RELATIVE").
%axis_location_1 - org.jfree.chart.axis.AxisLocation
literal(axis_location_1_literal1, string_literal, axis_location_1_expr1, (arguments, 0), range(axis_location_1, 2427, 26, 62, 62), "AxisLocation.TOP_OR_LEFT").
literal(axis_location_1_literal2, string_literal, axis_location_1_expr2, (arguments, 0), range(axis_location_1, 2580, 27, 66, 66), "AxisLocation.TOP_OR_RIGHT").
literal(axis_location_1_literal3, string_literal, axis_location_1_expr3, (arguments, 0), range(axis_location_1, 2742, 29, 70, 70), "AxisLocation.BOTTOM_OR_LEFT").
literal(axis_location_1_literal4, string_literal, axis_location_1_expr4, (arguments, 0), range(axis_location_1, 2912, 30, 74, 74), "AxisLocation.BOTTOM_OR_RIGHT").
%dataset_rendering_order_1 - org.jfree.chart.plot.DatasetRenderingOrder
%chart_change_event_type_1 - org.jfree.chart.event.ChartChangeEventType
%marker_change_event_1 - org.jfree.chart.event.MarkerChangeEvent
%xyplot_1 - org.jfree.chart.plot.XYPlot
literal(xyplot_1_literal1, number_literal, xyplot_1_expr1, (arguments, 0), range(xyplot_1, 14695, 4, 284, 284), 0.5).
literal(xyplot_1_literal2, number_literal, xyplot_1_expr1, (arguments, 3), range(xyplot_1, 14760, 4, 285, 285), 0.0).
literal(xyplot_1_literal3, number_literal, xyplot_1_expr1, (arguments, 5), range(xyplot_1, 14806, 4, 286, 286), 0.0).
literal(xyplot_1_literal4, number_literal, xyplot_1_expr4, (arguments, 0), range(xyplot_1, 16830, 3, 345, 345), 0.0).
literal(xyplot_1_literal5, number_literal, xyplot_1_expr4, (arguments, 1), range(xyplot_1, 16835, 3, 345, 345), 0.0).
literal(xyplot_1_literal6, boolean_literal, xyplot_1_code49, initializer, range(xyplot_1, 19271, 4, 419, 419), true).
literal(xyplot_1_literal7, boolean_literal, xyplot_1_code53, initializer, range(xyplot_1, 19876, 4, 437, 437), true).
literal(xyplot_1_literal8, null_literal, xyplot_1_stmt1, (arguments, 0), range(xyplot_1, 22031, 4, 501, 501), null).
literal(xyplot_1_literal9, null_literal, xyplot_1_stmt1, (arguments, 1), range(xyplot_1, 22037, 4, 501, 501), null).
literal(xyplot_1_literal10, null_literal, xyplot_1_stmt1, (arguments, 2), range(xyplot_1, 22043, 4, 501, 501), null).
literal(xyplot_1_literal11, null_literal, xyplot_1_stmt1, (arguments, 3), range(xyplot_1, 22049, 4, 501, 501), null).
literal(xyplot_1_literal12, number_literal, xyplot_1_expr11, right_hand_side, range(xyplot_1, 22927, 1, 523, 523), 1).
literal(xyplot_1_literal13, number_literal, xyplot_1_expr16, (arguments, 0), range(xyplot_1, 23018, 3, 524, 524), 4.0).
literal(xyplot_1_literal14, number_literal, xyplot_1_expr16, (arguments, 1), range(xyplot_1, 23023, 3, 524, 524), 4.0).
literal(xyplot_1_literal15, number_literal, xyplot_1_expr16, (arguments, 2), range(xyplot_1, 23028, 3, 524, 524), 4.0).
literal(xyplot_1_literal16, number_literal, xyplot_1_expr16, (arguments, 3), range(xyplot_1, 23033, 3, 524, 524), 4.0).
literal(xyplot_1_literal17, number_literal, xyplot_1_expr66, (arguments, 0), range(xyplot_1, 23761, 1, 543, 543), 0).
literal(xyplot_1_literal18, null_literal, xyplot_1_expr69, right_operand, range(xyplot_1, 23798, 4, 544, 544), null).
literal(xyplot_1_literal19, number_literal, xyplot_1_expr70, (arguments, 0), range(xyplot_1, 23893, 1, 548, 548), 0).
literal(xyplot_1_literal20, null_literal, xyplot_1_expr73, right_operand, range(xyplot_1, 23932, 4, 549, 549), null).
literal(xyplot_1_literal21, number_literal, xyplot_1_expr74, (arguments, 0), range(xyplot_1, 24066, 1, 554, 554), 0).
literal(xyplot_1_literal22, number_literal, xyplot_1_expr77, (arguments, 0), range(xyplot_1, 24119, 1, 555, 555), 0).
literal(xyplot_1_literal23, number_literal, xyplot_1_expr77, (arguments, 1), range(xyplot_1, 24122, 1, 555, 555), 0).
literal(xyplot_1_literal24, null_literal, xyplot_1_expr79, right_operand, range(xyplot_1, 24153, 4, 556, 556), null).
literal(xyplot_1_literal25, number_literal, xyplot_1_expr80, (arguments, 0), range(xyplot_1, 24298, 1, 560, 560), 0).
literal(xyplot_1_literal26, number_literal, xyplot_1_expr83, (arguments, 0), range(xyplot_1, 24361, 1, 562, 562), 0).
literal(xyplot_1_literal27, number_literal, xyplot_1_expr86, (arguments, 0), range(xyplot_1, 24412, 1, 563, 563), 0).
literal(xyplot_1_literal28, number_literal, xyplot_1_expr86, (arguments, 1), range(xyplot_1, 24415, 1, 563, 563), 0).
literal(xyplot_1_literal29, null_literal, xyplot_1_expr88, right_operand, range(xyplot_1, 24445, 4, 564, 564), null).
literal(xyplot_1_literal30, number_literal, xyplot_1_expr89, (arguments, 0), range(xyplot_1, 24587, 1, 568, 568), 0).
literal(xyplot_1_literal31, boolean_literal, xyplot_1_expr94, right_hand_side, range(xyplot_1, 24726, 4, 573, 573), true).
literal(xyplot_1_literal32, boolean_literal, xyplot_1_expr103, right_hand_side, range(xyplot_1, 24898, 5, 577, 577), false).
literal(xyplot_1_literal33, number_literal, xyplot_1_expr111, (arguments, 0), range(xyplot_1, 25015, 4, 579, 579), 0.5).
literal(xyplot_1_literal34, boolean_literal, xyplot_1_expr113, right_hand_side, range(xyplot_1, 25062, 4, 581, 581), true).
literal(xyplot_1_literal35, boolean_literal, xyplot_1_expr122, right_hand_side, range(xyplot_1, 25231, 5, 585, 585), false).
literal(xyplot_1_literal36, number_literal, xyplot_1_expr130, (arguments, 0), range(xyplot_1, 25346, 4, 587, 587), 0.5).
literal(xyplot_1_literal37, boolean_literal, xyplot_1_expr132, right_hand_side, range(xyplot_1, 25394, 5, 589, 589), false).
literal(xyplot_1_literal38, number_literal, xyplot_1_expr135, right_hand_side, range(xyplot_1, 25438, 3, 590, 590), 0.0).
literal(xyplot_1_literal39, boolean_literal, xyplot_1_expr144, right_hand_side, range(xyplot_1, 25609, 5, 594, 594), false).
literal(xyplot_1_literal40, number_literal, xyplot_1_expr147, right_hand_side, range(xyplot_1, 25652, 3, 595, 595), 0.0).
literal(xyplot_1_literal41, number_literal, xyplot_1_code82, initializer, range(xyplot_1, 33515, 1, 860, 860), 0).
literal(xyplot_1_literal42, null_literal, xyplot_1_expr170, right_operand, range(xyplot_1, 33644, 4, 862, 862), null).
literal(xyplot_1_literal43, number_literal, xyplot_1_code88, initializer, range(xyplot_1, 42537, 1, 1160, 1160), 0).
literal(xyplot_1_literal44, null_literal, xyplot_1_expr181, right_operand, range(xyplot_1, 42664, 4, 1162, 1162), null).
literal(xyplot_1_literal45, null_literal, xyplot_1_code94, initializer, range(xyplot_1, 46036, 4, 1273, 1273), null).
literal(xyplot_1_literal46, number_literal, xyplot_1_expr210, (arguments, 0), range(xyplot_1, 77363, 1, 2248, 2248), 0).
literal(xyplot_1_literal47, boolean_literal, xyplot_1_expr211, (arguments, 3), range(xyplot_1, 77962, 4, 2265, 2265), true).
literal(xyplot_1_literal48, number_literal, xyplot_1_expr221, (arguments, 0), range(xyplot_1, 85758, 1, 2481, 2481), 0).
literal(xyplot_1_literal49, boolean_literal, xyplot_1_expr222, (arguments, 3), range(xyplot_1, 86355, 4, 2498, 2498), true).
literal(xyplot_1_literal50, null_literal, xyplot_1_expr223, right_operand, range(xyplot_1, 86982, 4, 2517, 2517), null).
literal(xyplot_1_literal51, null_literal, xyplot_1_expr234, right_operand, range(xyplot_1, 143877, 4, 4035, 4035), null).
%length_adjustment_type_1 - org.jfree.chart.util.LengthAdjustmentType
%category_anchor_1 - org.jfree.chart.axis.CategoryAnchor
%series_rendering_order_1 - org.jfree.chart.plot.SeriesRenderingOrder
%layer_1 - org.jfree.chart.util.Layer
literal(layer_1_literal1, string_literal, layer_1_expr1, (arguments, 0), range(layer_1, 1921, 18, 56, 56), "Layer.FOREGROUND").
literal(layer_1_literal2, string_literal, layer_1_expr2, (arguments, 0), range(layer_1, 2019, 18, 59, 59), "Layer.BACKGROUND").
%plot_change_event_1 - org.jfree.chart.event.PlotChangeEvent
%rectangle_insets_1 - org.jfree.chart.util.RectangleInsets
literal(rectangle_insets_1_literal1, number_literal, rectangle_insets_1_expr1, (arguments, 1), range(rectangle_insets_1, 2447, 3, 66, 66), 0.0).
literal(rectangle_insets_1_literal2, number_literal, rectangle_insets_1_expr1, (arguments, 2), range(rectangle_insets_1, 2452, 3, 66, 66), 0.0).
literal(rectangle_insets_1_literal3, number_literal, rectangle_insets_1_expr1, (arguments, 3), range(rectangle_insets_1, 2457, 3, 66, 66), 0.0).
literal(rectangle_insets_1_literal4, number_literal, rectangle_insets_1_expr1, (arguments, 4), range(rectangle_insets_1, 2462, 3, 66, 66), 0.0).
literal(rectangle_insets_1_literal5, null_literal, rectangle_insets_1_expr3, right_operand, range(rectangle_insets_1, 3879, 4, 117, 117), null).
%abstract_object_list_1 - org.jfree.chart.util.AbstractObjectList
literal(abstract_object_list_1_literal1, number_literal, abstract_object_list_1_code6, initializer, range(abstract_object_list_1, 2419, 1, 68, 68), 0).
literal(abstract_object_list_1_literal2, null_literal, abstract_object_list_1_code24, initializer, range(abstract_object_list_1, 3474, 4, 109, 109), null).
literal(abstract_object_list_1_literal3, number_literal, abstract_object_list_1_expr11, right_operand, range(abstract_object_list_1, 3501, 1, 110, 110), 0).
literal(abstract_object_list_1_literal4, number_literal, abstract_object_list_1_expr19, right_operand, range(abstract_object_list_1, 3873, 1, 123, 123), 0).
literal(abstract_object_list_1_literal5, number_literal, abstract_object_list_1_expr33, right_operand, range(abstract_object_list_1, 4286, 1, 132, 132), 1).

%%% Other Code Entities
%category_marker_1 - org.jfree.chart.plot.CategoryMarker
code(category_marker_1_code1, compilation_unit, range(category_marker_1, 0, 5974, 1, -1)).
code(category_marker_1_code2, type_declaration, category_marker_1_code1, (types, 0), range(category_marker_1, 2082, 3890, 56, 186)).
code(category_marker_1_code3, field_declaration, category_marker_1_code2, (body_declarations, 1), range(category_marker_1, 2462, 134, 69, 72)).
code(category_marker_1_code4, modifier, category_marker_1_code3, (modifiers, 0), range(category_marker_1, 2561, 7, 72, 72)).
code(category_marker_1_code5, primitive_type, category_marker_1_code3, type, range(category_marker_1, 2569, 7, 72, 72)).
code(category_marker_1_code6, variable_declaration_fragment, category_marker_1_code3, (fragments, 0), range(category_marker_1, 2577, 18, 72, 72)).
code(category_marker_1_code7, method_declaration, category_marker_1_code2, (body_declarations, 2), range(category_marker_1, 2608, 236, 74, 81)).
code(category_marker_1_code8, simple_type, category_marker_1_expr2, type, range(category_marker_1, 2814, 11, 80, 80)).
code(category_marker_1_code9, method_declaration, category_marker_1_code2, (body_declarations, 3), range(category_marker_1, 2856, 361, 83, 92)).
code(category_marker_1_code10, method_declaration, category_marker_1_code2, (body_declarations, 4), range(category_marker_1, 3229, 770, 94, 110)).
%category_plot_tests_1 - org.jfree.chart.plot.junit.CategoryPlotTests
code(category_plot_tests_1_code1, compilation_unit, range(category_plot_tests_1, 0, 29127, 1, -1)).
code(category_plot_tests_1_code2, type_declaration, category_plot_tests_1_code1, (types, 0), range(category_plot_tests_1, 3621, 25505, 96, 783)).
code(category_plot_tests_1_code3, method_declaration, category_plot_tests_1_code2, (body_declarations, 0), range(category_plot_tests_1, 3729, 185, 101, 108)).
code(category_plot_tests_1_code4, simple_type, category_plot_tests_1_expr1, type, range(category_plot_tests_1, 3873, 9, 107, 107)).
code(category_plot_tests_1_code5, simple_type, category_plot_tests_1_expr2, type, range(category_plot_tests_1, 3883, 17, 107, 107)).
code(category_plot_tests_1_code6, method_declaration, category_plot_tests_1_code2, (body_declarations, 1), range(category_plot_tests_1, 3920, 170, 110, 117)).
code(category_plot_tests_1_code7, method_declaration, category_plot_tests_1_code2, (body_declarations, 18), range(category_plot_tests_1, 28585, 273, 765, 772)).
code(category_plot_tests_1_code8, simple_type, category_plot_tests_1_stmt3, type, range(category_plot_tests_1, 28736, 12, 770, 770)).
code(category_plot_tests_1_code9, variable_declaration_fragment, category_plot_tests_1_stmt3, (fragments, 0), range(category_plot_tests_1, 28749, 25, 770, 770)).
code(category_plot_tests_1_code10, simple_type, category_plot_tests_1_expr4, type, range(category_plot_tests_1, 28760, 12, 770, 770)).
code(category_plot_tests_1_code11, simple_type, category_plot_tests_1_expr7, type, range(category_plot_tests_1, 28821, 14, 771, 771)).
code(category_plot_tests_1_code12, method_declaration, category_plot_tests_1_code2, (body_declarations, 19), range(category_plot_tests_1, 28864, 259, 774, 781)).
code(category_plot_tests_1_code13, simple_type, category_plot_tests_1_stmt5, type, range(category_plot_tests_1, 29014, 12, 779, 779)).
code(category_plot_tests_1_code14, variable_declaration_fragment, category_plot_tests_1_stmt5, (fragments, 0), range(category_plot_tests_1, 29027, 25, 779, 779)).
code(category_plot_tests_1_code15, simple_type, category_plot_tests_1_expr8, type, range(category_plot_tests_1, 29038, 12, 779, 779)).
code(category_plot_tests_1_code16, simple_type, category_plot_tests_1_expr11, type, range(category_plot_tests_1, 29098, 11, 780, 780)).
%text_anchor_1 - org.jfree.chart.text.TextAnchor
code(text_anchor_1_code1, compilation_unit, range(text_anchor_1, 0, 7100, 1, -1)).
code(text_anchor_1_code2, type_declaration, text_anchor_1_code1, (types, 0), range(text_anchor_1, 1677, 5422, 48, 228)).
code(text_anchor_1_code3, field_declaration, text_anchor_1_code2, (body_declarations, 1), range(text_anchor_1, 2012, 114, 57, 59)).
code(text_anchor_1_code4, modifier, text_anchor_1_code3, (modifiers, 0), range(text_anchor_1, 2033, 6, 58, 58)).
code(text_anchor_1_code5, modifier, text_anchor_1_code3, (modifiers, 1), range(text_anchor_1, 2040, 6, 58, 58)).
code(text_anchor_1_code6, modifier, text_anchor_1_code3, (modifiers, 2), range(text_anchor_1, 2047, 5, 58, 58)).
code(text_anchor_1_code7, simple_type, text_anchor_1_code3, type, range(text_anchor_1, 2053, 10, 58, 58)).
code(text_anchor_1_code8, variable_declaration_fragment, text_anchor_1_code3, (fragments, 0), range(text_anchor_1, 2064, 61, 58, 59)).
code(text_anchor_1_code9, simple_type, text_anchor_1_expr1, type, range(text_anchor_1, 2079, 10, 58, 58)).
code(text_anchor_1_code10, field_declaration, text_anchor_1_code2, (body_declarations, 2), range(text_anchor_1, 2132, 120, 61, 63)).
code(text_anchor_1_code11, modifier, text_anchor_1_code10, (modifiers, 0), range(text_anchor_1, 2155, 6, 62, 62)).
code(text_anchor_1_code12, modifier, text_anchor_1_code10, (modifiers, 1), range(text_anchor_1, 2162, 6, 62, 62)).
code(text_anchor_1_code13, modifier, text_anchor_1_code10, (modifiers, 2), range(text_anchor_1, 2169, 5, 62, 62)).
code(text_anchor_1_code14, simple_type, text_anchor_1_code10, type, range(text_anchor_1, 2175, 10, 62, 62)).
code(text_anchor_1_code15, variable_declaration_fragment, text_anchor_1_code10, (fragments, 0), range(text_anchor_1, 2186, 65, 62, 63)).
code(text_anchor_1_code16, simple_type, text_anchor_1_expr2, type, range(text_anchor_1, 2203, 10, 62, 62)).
code(text_anchor_1_code17, field_declaration, text_anchor_1_code2, (body_declarations, 3), range(text_anchor_1, 2258, 117, 65, 67)).
code(text_anchor_1_code18, modifier, text_anchor_1_code17, (modifiers, 0), range(text_anchor_1, 2280, 6, 66, 66)).
code(text_anchor_1_code19, modifier, text_anchor_1_code17, (modifiers, 1), range(text_anchor_1, 2287, 6, 66, 66)).
code(text_anchor_1_code20, modifier, text_anchor_1_code17, (modifiers, 2), range(text_anchor_1, 2294, 5, 66, 66)).
code(text_anchor_1_code21, simple_type, text_anchor_1_code17, type, range(text_anchor_1, 2300, 10, 66, 66)).
code(text_anchor_1_code22, variable_declaration_fragment, text_anchor_1_code17, (fragments, 0), range(text_anchor_1, 2311, 63, 66, 67)).
code(text_anchor_1_code23, simple_type, text_anchor_1_expr3, type, range(text_anchor_1, 2327, 10, 66, 66)).
code(text_anchor_1_code24, field_declaration, text_anchor_1_code2, (body_declarations, 4), range(text_anchor_1, 2381, 138, 69, 71)).
code(text_anchor_1_code25, modifier, text_anchor_1_code24, (modifiers, 0), range(text_anchor_1, 2410, 6, 70, 70)).
code(text_anchor_1_code26, modifier, text_anchor_1_code24, (modifiers, 1), range(text_anchor_1, 2417, 6, 70, 70)).
code(text_anchor_1_code27, modifier, text_anchor_1_code24, (modifiers, 2), range(text_anchor_1, 2424, 5, 70, 70)).
code(text_anchor_1_code28, simple_type, text_anchor_1_code24, type, range(text_anchor_1, 2430, 10, 70, 70)).
code(text_anchor_1_code29, variable_declaration_fragment, text_anchor_1_code24, (fragments, 0), range(text_anchor_1, 2441, 77, 70, 71)).
code(text_anchor_1_code30, simple_type, text_anchor_1_expr4, type, range(text_anchor_1, 2464, 10, 70, 70)).
code(text_anchor_1_code31, field_declaration, text_anchor_1_code2, (body_declarations, 5), range(text_anchor_1, 2525, 144, 73, 75)).
code(text_anchor_1_code32, modifier, text_anchor_1_code31, (modifiers, 0), range(text_anchor_1, 2556, 6, 74, 74)).
code(text_anchor_1_code33, modifier, text_anchor_1_code31, (modifiers, 1), range(text_anchor_1, 2563, 6, 74, 74)).
code(text_anchor_1_code34, modifier, text_anchor_1_code31, (modifiers, 2), range(text_anchor_1, 2570, 5, 74, 74)).
code(text_anchor_1_code35, simple_type, text_anchor_1_code31, type, range(text_anchor_1, 2576, 10, 74, 74)).
code(text_anchor_1_code36, variable_declaration_fragment, text_anchor_1_code31, (fragments, 0), range(text_anchor_1, 2587, 81, 74, 75)).
code(text_anchor_1_code37, simple_type, text_anchor_1_expr5, type, range(text_anchor_1, 2612, 10, 74, 74)).
code(text_anchor_1_code38, field_declaration, text_anchor_1_code2, (body_declarations, 6), range(text_anchor_1, 2675, 141, 77, 79)).
code(text_anchor_1_code39, modifier, text_anchor_1_code38, (modifiers, 0), range(text_anchor_1, 2705, 6, 78, 78)).
code(text_anchor_1_code40, modifier, text_anchor_1_code38, (modifiers, 1), range(text_anchor_1, 2712, 6, 78, 78)).
code(text_anchor_1_code41, modifier, text_anchor_1_code38, (modifiers, 2), range(text_anchor_1, 2719, 5, 78, 78)).
code(text_anchor_1_code42, simple_type, text_anchor_1_code38, type, range(text_anchor_1, 2725, 10, 78, 78)).
code(text_anchor_1_code43, variable_declaration_fragment, text_anchor_1_code38, (fragments, 0), range(text_anchor_1, 2736, 79, 78, 79)).
code(text_anchor_1_code44, simple_type, text_anchor_1_expr6, type, range(text_anchor_1, 2760, 10, 78, 78)).
code(text_anchor_1_code45, field_declaration, text_anchor_1_code2, (body_declarations, 7), range(text_anchor_1, 2822, 123, 81, 83)).
code(text_anchor_1_code46, modifier, text_anchor_1_code45, (modifiers, 0), range(text_anchor_1, 2846, 6, 82, 82)).
code(text_anchor_1_code47, modifier, text_anchor_1_code45, (modifiers, 1), range(text_anchor_1, 2853, 6, 82, 82)).
code(text_anchor_1_code48, modifier, text_anchor_1_code45, (modifiers, 2), range(text_anchor_1, 2860, 5, 82, 82)).
code(text_anchor_1_code49, simple_type, text_anchor_1_code45, type, range(text_anchor_1, 2866, 10, 82, 82)).
code(text_anchor_1_code50, variable_declaration_fragment, text_anchor_1_code45, (fragments, 0), range(text_anchor_1, 2877, 67, 82, 83)).
code(text_anchor_1_code51, simple_type, text_anchor_1_expr7, type, range(text_anchor_1, 2895, 10, 82, 82)).
code(text_anchor_1_code52, field_declaration, text_anchor_1_code2, (body_declarations, 8), range(text_anchor_1, 2951, 102, 85, 86)).
code(text_anchor_1_code53, modifier, text_anchor_1_code52, (modifiers, 0), range(text_anchor_1, 2977, 6, 86, 86)).
code(text_anchor_1_code54, modifier, text_anchor_1_code52, (modifiers, 1), range(text_anchor_1, 2984, 6, 86, 86)).
code(text_anchor_1_code55, modifier, text_anchor_1_code52, (modifiers, 2), range(text_anchor_1, 2991, 5, 86, 86)).
code(text_anchor_1_code56, simple_type, text_anchor_1_code52, type, range(text_anchor_1, 2997, 10, 86, 86)).
code(text_anchor_1_code57, variable_declaration_fragment, text_anchor_1_code52, (fragments, 0), range(text_anchor_1, 3008, 44, 86, 86)).
code(text_anchor_1_code58, simple_type, text_anchor_1_expr8, type, range(text_anchor_1, 3021, 10, 86, 86)).
code(text_anchor_1_code59, field_declaration, text_anchor_1_code2, (body_declarations, 9), range(text_anchor_1, 3059, 126, 88, 90)).
code(text_anchor_1_code60, modifier, text_anchor_1_code59, (modifiers, 0), range(text_anchor_1, 3084, 6, 89, 89)).
code(text_anchor_1_code61, modifier, text_anchor_1_code59, (modifiers, 1), range(text_anchor_1, 3091, 6, 89, 89)).
code(text_anchor_1_code62, modifier, text_anchor_1_code59, (modifiers, 2), range(text_anchor_1, 3098, 5, 89, 89)).
code(text_anchor_1_code63, simple_type, text_anchor_1_code59, type, range(text_anchor_1, 3104, 10, 89, 89)).
code(text_anchor_1_code64, variable_declaration_fragment, text_anchor_1_code59, (fragments, 0), range(text_anchor_1, 3115, 69, 89, 90)).
code(text_anchor_1_code65, simple_type, text_anchor_1_expr9, type, range(text_anchor_1, 3134, 10, 89, 89)).
code(text_anchor_1_code66, field_declaration, text_anchor_1_code2, (body_declarations, 10), range(text_anchor_1, 3191, 129, 92, 94)).
code(text_anchor_1_code67, modifier, text_anchor_1_code66, (modifiers, 0), range(text_anchor_1, 3217, 6, 93, 93)).
code(text_anchor_1_code68, modifier, text_anchor_1_code66, (modifiers, 1), range(text_anchor_1, 3224, 6, 93, 93)).
code(text_anchor_1_code69, modifier, text_anchor_1_code66, (modifiers, 2), range(text_anchor_1, 3231, 5, 93, 93)).
code(text_anchor_1_code70, simple_type, text_anchor_1_code66, type, range(text_anchor_1, 3237, 10, 93, 93)).
code(text_anchor_1_code71, variable_declaration_fragment, text_anchor_1_code66, (fragments, 0), range(text_anchor_1, 3248, 71, 93, 94)).
code(text_anchor_1_code72, simple_type, text_anchor_1_expr10, type, range(text_anchor_1, 3268, 10, 93, 93)).
code(text_anchor_1_code73, field_declaration, text_anchor_1_code2, (body_declarations, 11), range(text_anchor_1, 3326, 135, 96, 98)).
code(text_anchor_1_code74, modifier, text_anchor_1_code73, (modifiers, 0), range(text_anchor_1, 3354, 6, 97, 97)).
code(text_anchor_1_code75, modifier, text_anchor_1_code73, (modifiers, 1), range(text_anchor_1, 3361, 6, 97, 97)).
code(text_anchor_1_code76, modifier, text_anchor_1_code73, (modifiers, 2), range(text_anchor_1, 3368, 5, 97, 97)).
code(text_anchor_1_code77, simple_type, text_anchor_1_code73, type, range(text_anchor_1, 3374, 10, 97, 97)).
code(text_anchor_1_code78, variable_declaration_fragment, text_anchor_1_code73, (fragments, 0), range(text_anchor_1, 3385, 75, 97, 98)).
code(text_anchor_1_code79, simple_type, text_anchor_1_expr11, type, range(text_anchor_1, 3407, 10, 97, 97)).
code(text_anchor_1_code80, field_declaration, text_anchor_1_code2, (body_declarations, 12), range(text_anchor_1, 3467, 132, 100, 102)).
code(text_anchor_1_code81, modifier, text_anchor_1_code80, (modifiers, 0), range(text_anchor_1, 3494, 6, 101, 101)).
code(text_anchor_1_code82, modifier, text_anchor_1_code80, (modifiers, 1), range(text_anchor_1, 3501, 6, 101, 101)).
code(text_anchor_1_code83, modifier, text_anchor_1_code80, (modifiers, 2), range(text_anchor_1, 3508, 5, 101, 101)).
code(text_anchor_1_code84, simple_type, text_anchor_1_code80, type, range(text_anchor_1, 3514, 10, 101, 101)).
code(text_anchor_1_code85, variable_declaration_fragment, text_anchor_1_code80, (fragments, 0), range(text_anchor_1, 3525, 73, 101, 102)).
code(text_anchor_1_code86, simple_type, text_anchor_1_expr12, type, range(text_anchor_1, 3546, 10, 101, 101)).
code(text_anchor_1_code87, field_declaration, text_anchor_1_code2, (body_declarations, 13), range(text_anchor_1, 3605, 123, 104, 106)).
code(text_anchor_1_code88, modifier, text_anchor_1_code87, (modifiers, 0), range(text_anchor_1, 3629, 6, 105, 105)).
code(text_anchor_1_code89, modifier, text_anchor_1_code87, (modifiers, 1), range(text_anchor_1, 3636, 6, 105, 105)).
code(text_anchor_1_code90, modifier, text_anchor_1_code87, (modifiers, 2), range(text_anchor_1, 3643, 5, 105, 105)).
code(text_anchor_1_code91, simple_type, text_anchor_1_code87, type, range(text_anchor_1, 3649, 10, 105, 105)).
code(text_anchor_1_code92, variable_declaration_fragment, text_anchor_1_code87, (fragments, 0), range(text_anchor_1, 3660, 67, 105, 106)).
code(text_anchor_1_code93, simple_type, text_anchor_1_expr13, type, range(text_anchor_1, 3678, 10, 105, 105)).
code(text_anchor_1_code94, field_declaration, text_anchor_1_code2, (body_declarations, 14), range(text_anchor_1, 3734, 129, 108, 110)).
code(text_anchor_1_code95, modifier, text_anchor_1_code94, (modifiers, 0), range(text_anchor_1, 3760, 6, 109, 109)).
code(text_anchor_1_code96, modifier, text_anchor_1_code94, (modifiers, 1), range(text_anchor_1, 3767, 6, 109, 109)).
code(text_anchor_1_code97, modifier, text_anchor_1_code94, (modifiers, 2), range(text_anchor_1, 3774, 5, 109, 109)).
code(text_anchor_1_code98, simple_type, text_anchor_1_code94, type, range(text_anchor_1, 3780, 10, 109, 109)).
code(text_anchor_1_code99, variable_declaration_fragment, text_anchor_1_code94, (fragments, 0), range(text_anchor_1, 3791, 71, 109, 110)).
code(text_anchor_1_code100, simple_type, text_anchor_1_expr14, type, range(text_anchor_1, 3811, 10, 109, 109)).
code(text_anchor_1_code101, field_declaration, text_anchor_1_code2, (body_declarations, 15), range(text_anchor_1, 3869, 126, 112, 114)).
code(text_anchor_1_code102, modifier, text_anchor_1_code101, (modifiers, 0), range(text_anchor_1, 3894, 6, 113, 113)).
code(text_anchor_1_code103, modifier, text_anchor_1_code101, (modifiers, 1), range(text_anchor_1, 3901, 6, 113, 113)).
code(text_anchor_1_code104, modifier, text_anchor_1_code101, (modifiers, 2), range(text_anchor_1, 3908, 5, 113, 113)).
code(text_anchor_1_code105, simple_type, text_anchor_1_code101, type, range(text_anchor_1, 3914, 10, 113, 113)).
code(text_anchor_1_code106, variable_declaration_fragment, text_anchor_1_code101, (fragments, 0), range(text_anchor_1, 3925, 69, 113, 114)).
code(text_anchor_1_code107, simple_type, text_anchor_1_expr15, type, range(text_anchor_1, 3944, 10, 113, 113)).
code(text_anchor_1_code108, method_declaration, text_anchor_1_code2, (body_declarations, 17), range(text_anchor_1, 4048, 146, 119, 126)).
code(text_anchor_1_code109, modifier, text_anchor_1_code108, (modifiers, 0), range(text_anchor_1, 4129, 7, 124, 124)).
code(text_anchor_1_code111, simple_type, text_anchor_1_code110, type, range(text_anchor_1, 4148, 6, 124, 124)).
code(text_anchor_1_code110, single_variable_declaration, text_anchor_1_code108, (parameters, 0), range(text_anchor_1, 4148, 11, 124, 124)).
%xyplot_tests_1 - org.jfree.chart.plot.junit.XYPlotTests
code(xyplot_tests_1_code1, compilation_unit, range(xyplot_tests_1, 0, 38382, 1, -1)).
code(xyplot_tests_1_code2, type_declaration, xyplot_tests_1_code1, (types, 0), range(xyplot_tests_1, 4031, 34350, 105, 1040)).
code(xyplot_tests_1_code3, method_declaration, xyplot_tests_1_code2, (body_declarations, 0), range(xyplot_tests_1, 4127, 179, 110, 117)).
code(xyplot_tests_1_code4, simple_type, xyplot_tests_1_expr1, type, range(xyplot_tests_1, 4271, 9, 116, 116)).
code(xyplot_tests_1_code5, simple_type, xyplot_tests_1_expr2, type, range(xyplot_tests_1, 4281, 11, 116, 116)).
code(xyplot_tests_1_code6, method_declaration, xyplot_tests_1_code2, (body_declarations, 1), range(xyplot_tests_1, 4312, 164, 119, 126)).
code(xyplot_tests_1_code7, method_declaration, xyplot_tests_1_code2, (body_declarations, 25), range(xyplot_tests_1, 37876, 249, 1022, 1029)).
code(xyplot_tests_1_code8, simple_type, xyplot_tests_1_stmt3, type, range(xyplot_tests_1, 38027, 6, 1027, 1027)).
code(xyplot_tests_1_code9, variable_declaration_fragment, xyplot_tests_1_stmt3, (fragments, 0), range(xyplot_tests_1, 38034, 19, 1027, 1027)).
code(xyplot_tests_1_code10, simple_type, xyplot_tests_1_expr4, type, range(xyplot_tests_1, 38045, 6, 1027, 1027)).
code(xyplot_tests_1_code11, simple_type, xyplot_tests_1_expr7, type, range(xyplot_tests_1, 38100, 11, 1028, 1028)).
code(xyplot_tests_1_code12, method_declaration, xyplot_tests_1_code2, (body_declarations, 26), range(xyplot_tests_1, 38131, 247, 1031, 1038)).
code(xyplot_tests_1_code13, simple_type, xyplot_tests_1_stmt5, type, range(xyplot_tests_1, 38281, 6, 1036, 1036)).
code(xyplot_tests_1_code14, variable_declaration_fragment, xyplot_tests_1_stmt5, (fragments, 0), range(xyplot_tests_1, 38288, 19, 1036, 1036)).
code(xyplot_tests_1_code15, simple_type, xyplot_tests_1_expr8, type, range(xyplot_tests_1, 38299, 6, 1036, 1036)).
code(xyplot_tests_1_code16, simple_type, xyplot_tests_1_expr11, type, range(xyplot_tests_1, 38353, 11, 1037, 1037)).
%marker_1 - org.jfree.chart.plot.Marker
code(marker_1_code1, compilation_unit, range(marker_1, 0, 21744, 1, -1)).
code(marker_1_code2, type_declaration, marker_1_code1, (types, 0), range(marker_1, 3658, 18084, 87, 681)).
code(marker_1_code3, field_declaration, marker_1_code2, (body_declarations, 6), range(marker_1, 4405, 51, 114, 115)).
code(marker_1_code4, modifier, marker_1_code3, (modifiers, 0), range(marker_1, 4428, 7, 115, 115)).
code(marker_1_code5, simple_type, marker_1_code3, type, range(marker_1, 4436, 6, 115, 115)).
code(marker_1_code6, variable_declaration_fragment, marker_1_code3, (fragments, 0), range(marker_1, 4443, 12, 115, 115)).
code(marker_1_code7, method_declaration, marker_1_code2, (body_declarations, 14), range(marker_1, 5132, 126, 140, 145)).
code(marker_1_code8, method_declaration, marker_1_code2, (body_declarations, 15), range(marker_1, 5266, 269, 147, 155)).
code(marker_1_code9, simple_type, marker_1_expr3, type, range(marker_1, 5449, 11, 153, 153)).
code(marker_1_code10, simple_type, marker_1_expr4, type, range(marker_1, 5484, 11, 153, 153)).
code(marker_1_code11, method_declaration, marker_1_code2, (body_declarations, 16), range(marker_1, 5543, 1809, 157, 199)).
code(marker_1_code12, single_variable_declaration, marker_1_code11, (parameters, 4), range(marker_1, 6324, 11, 173, 173)).
code(marker_1_code13, primitive_type, marker_1_code12, type, range(marker_1, 6324, 5, 173, 173)).
code(marker_1_code14, simple_type, marker_1_expr27, type, range(marker_1, 6971, 4, 191, 191)).
code(marker_1_code15, simple_type, marker_1_expr37, type, range(marker_1, 7131, 15, 194, 194)).
code(marker_1_code16, simple_type, marker_1_expr47, type, range(marker_1, 7325, 17, 198, 198)).
code(marker_1_code17, method_declaration, marker_1_code2, (body_declarations, 38), range(marker_1, 15334, 518, 481, 495)).
code(marker_1_code18, simple_type, marker_1_expr54, type, range(marker_1, 15820, 17, 494, 494)).
code(marker_1_code19, method_declaration, marker_1_code2, (body_declarations, 41), range(marker_1, 16696, 386, 524, 535)).
code(marker_1_code20, simple_type, marker_1_expr57, type, range(marker_1, 17037, 20, 534, 534)).
code(marker_1_code21, method_declaration, marker_1_code2, (body_declarations, 43), range(marker_1, 17491, 555, 550, 566)).
code(marker_1_code22, array_type, marker_1_stmt22, type, range(marker_1, 17748, 8, 559, 559)).
code(marker_1_code23, simple_type, marker_1_code22, element_type, range(marker_1, 17748, 6, 559, 559)).
code(marker_1_code24, dimension, marker_1_code22, (dimensions, 0), range(marker_1, 17754, 2, 559, 559)).
code(marker_1_code25, variable_declaration_fragment, marker_1_stmt22, (fragments, 0), range(marker_1, 17757, 47, 559, 559)).
code(marker_1_code26, primitive_type, marker_1_expr63, type, range(marker_1, 17820, 3, 560, 560)).
code(marker_1_code27, variable_declaration_fragment, marker_1_expr63, (fragments, 0), range(marker_1, 17824, 24, 560, 560)).
%value_marker_1 - org.jfree.chart.plot.ValueMarker
code(value_marker_1_code1, compilation_unit, range(value_marker_1, 0, 4991, 1, -1)).
code(value_marker_1_code2, type_declaration, value_marker_1_code1, (types, 0), range(value_marker_1, 1947, 3042, 53, 156)).
code(value_marker_1_code3, method_declaration, value_marker_1_code2, (body_declarations, 1), range(value_marker_1, 2172, 178, 62, 70)).
code(value_marker_1_code4, method_declaration, value_marker_1_code2, (body_declarations, 3), range(value_marker_1, 2727, 709, 83, 97)).
%sort_order_1 - org.jfree.chart.util.SortOrder
code(sort_order_1_code1, compilation_unit, range(sort_order_1, 0, 3871, 1, -1)).
code(sort_order_1_code2, type_declaration, sort_order_1_code1, (types, 0), range(sort_order_1, 1791, 2080, 50, -1)).
code(sort_order_1_code3, field_declaration, sort_order_1_code2, (body_declarations, 1), range(sort_order_1, 2042, 120, 58, 60)).
code(sort_order_1_code4, modifier, sort_order_1_code3, (modifiers, 0), range(sort_order_1, 2070, 6, 59, 59)).
code(sort_order_1_code5, modifier, sort_order_1_code3, (modifiers, 1), range(sort_order_1, 2077, 6, 59, 59)).
code(sort_order_1_code6, modifier, sort_order_1_code3, (modifiers, 2), range(sort_order_1, 2084, 5, 59, 59)).
code(sort_order_1_code7, simple_type, sort_order_1_code3, type, range(sort_order_1, 2090, 9, 59, 59)).
code(sort_order_1_code8, variable_declaration_fragment, sort_order_1_code3, (fragments, 0), range(sort_order_1, 2100, 61, 59, 60)).
code(sort_order_1_code9, simple_type, sort_order_1_expr1, type, range(sort_order_1, 2116, 9, 59, 59)).
code(sort_order_1_code10, field_declaration, sort_order_1_code2, (body_declarations, 2), range(sort_order_1, 2168, 123, 62, 64)).
code(sort_order_1_code11, modifier, sort_order_1_code10, (modifiers, 0), range(sort_order_1, 2197, 6, 63, 63)).
code(sort_order_1_code12, modifier, sort_order_1_code10, (modifiers, 1), range(sort_order_1, 2204, 6, 63, 63)).
code(sort_order_1_code13, modifier, sort_order_1_code10, (modifiers, 2), range(sort_order_1, 2211, 5, 63, 63)).
code(sort_order_1_code14, simple_type, sort_order_1_code10, type, range(sort_order_1, 2217, 9, 63, 63)).
code(sort_order_1_code15, variable_declaration_fragment, sort_order_1_code10, (fragments, 0), range(sort_order_1, 2227, 63, 63, 64)).
code(sort_order_1_code16, simple_type, sort_order_1_expr2, type, range(sort_order_1, 2244, 9, 63, 63)).
code(sort_order_1_code17, method_declaration, sort_order_1_code2, (body_declarations, 4), range(sort_order_1, 2344, 145, 69, 76)).
code(sort_order_1_code18, modifier, sort_order_1_code17, (modifiers, 0), range(sort_order_1, 2425, 7, 74, 74)).
code(sort_order_1_code20, simple_type, sort_order_1_code19, type, range(sort_order_1, 2443, 6, 74, 74)).
code(sort_order_1_code19, single_variable_declaration, sort_order_1_code17, (parameters, 0), range(sort_order_1, 2443, 11, 74, 74)).
%plot_1 - org.jfree.chart.plot.Plot
code(plot_1_code1, compilation_unit, range(plot_1, 0, 49813, 1, -1)).
code(plot_1_code2, type_declaration, plot_1_code1, (types, 0), range(plot_1, 8649, 41162, 177, 1423)).
code(plot_1_code3, field_declaration, plot_1_code2, (body_declarations, 1), range(plot_1, 9184, 96, 190, 191)).
code(plot_1_code4, modifier, plot_1_code3, (modifiers, 0), range(plot_1, 9231, 6, 191, 191)).
code(plot_1_code5, modifier, plot_1_code3, (modifiers, 1), range(plot_1, 9238, 6, 191, 191)).
code(plot_1_code6, modifier, plot_1_code3, (modifiers, 2), range(plot_1, 9245, 5, 191, 191)).
code(plot_1_code7, simple_type, plot_1_code3, type, range(plot_1, 9251, 6, 191, 191)).
code(plot_1_code8, variable_declaration_fragment, plot_1_code3, (fragments, 0), range(plot_1, 9258, 21, 191, 191)).
code(plot_1_code9, simple_type, plot_1_expr1, type, range(plot_1, 9269, 7, 191, 191)).
code(plot_1_code10, field_declaration, plot_1_code2, (body_declarations, 2), range(plot_1, 9288, 139, 193, 195)).
code(plot_1_code11, modifier, plot_1_code10, (modifiers, 0), range(plot_1, 9320, 6, 194, 194)).
code(plot_1_code12, modifier, plot_1_code10, (modifiers, 1), range(plot_1, 9327, 6, 194, 194)).
code(plot_1_code13, modifier, plot_1_code10, (modifiers, 2), range(plot_1, 9334, 5, 194, 194)).
code(plot_1_code14, simple_type, plot_1_code10, type, range(plot_1, 9340, 15, 194, 194)).
code(plot_1_code15, variable_declaration_fragment, plot_1_code10, (fragments, 0), range(plot_1, 9356, 70, 194, 195)).
code(plot_1_code16, field_declaration, plot_1_code2, (body_declarations, 3), range(plot_1, 9435, 114, 197, 198)).
code(plot_1_code17, modifier, plot_1_code16, (modifiers, 0), range(plot_1, 9475, 6, 198, 198)).
code(plot_1_code18, modifier, plot_1_code16, (modifiers, 1), range(plot_1, 9482, 6, 198, 198)).
code(plot_1_code19, modifier, plot_1_code16, (modifiers, 2), range(plot_1, 9489, 5, 198, 198)).
code(plot_1_code20, simple_type, plot_1_code16, type, range(plot_1, 9495, 6, 198, 198)).
code(plot_1_code21, variable_declaration_fragment, plot_1_code16, (fragments, 0), range(plot_1, 9502, 46, 198, 198)).
code(plot_1_code22, simple_type, plot_1_expr3, type, range(plot_1, 9531, 11, 198, 198)).
code(plot_1_code23, field_declaration, plot_1_code2, (body_declarations, 4), range(plot_1, 9557, 100, 200, 201)).
code(plot_1_code24, modifier, plot_1_code23, (modifiers, 0), range(plot_1, 9596, 6, 201, 201)).
code(plot_1_code25, modifier, plot_1_code23, (modifiers, 1), range(plot_1, 9603, 6, 201, 201)).
code(plot_1_code26, modifier, plot_1_code23, (modifiers, 2), range(plot_1, 9610, 5, 201, 201)).
code(plot_1_code27, simple_type, plot_1_code23, type, range(plot_1, 9616, 5, 201, 201)).
code(plot_1_code28, variable_declaration_fragment, plot_1_code23, (fragments, 0), range(plot_1, 9622, 34, 201, 201)).
code(plot_1_code29, field_declaration, plot_1_code2, (body_declarations, 7), range(plot_1, 9907, 112, 209, 210)).
code(plot_1_code30, modifier, plot_1_code29, (modifiers, 0), range(plot_1, 9949, 6, 210, 210)).
code(plot_1_code31, modifier, plot_1_code29, (modifiers, 1), range(plot_1, 9956, 6, 210, 210)).
code(plot_1_code32, modifier, plot_1_code29, (modifiers, 2), range(plot_1, 9963, 5, 210, 210)).
code(plot_1_code33, simple_type, plot_1_code29, type, range(plot_1, 9969, 5, 210, 210)).
code(plot_1_code34, variable_declaration_fragment, plot_1_code29, (fragments, 0), range(plot_1, 9975, 43, 210, 210)).
code(plot_1_code35, field_declaration, plot_1_code2, (body_declarations, 10), range(plot_1, 10281, 161, 218, 220)).
code(plot_1_code36, modifier, plot_1_code35, (modifiers, 0), range(plot_1, 10331, 6, 219, 219)).
code(plot_1_code37, modifier, plot_1_code35, (modifiers, 1), range(plot_1, 10338, 6, 219, 219)).
code(plot_1_code38, modifier, plot_1_code35, (modifiers, 2), range(plot_1, 10345, 5, 219, 219)).
code(plot_1_code39, simple_type, plot_1_code35, type, range(plot_1, 10351, 5, 219, 219)).
code(plot_1_code40, variable_declaration_fragment, plot_1_code35, (fragments, 0), range(plot_1, 10357, 84, 219, 220)).
code(plot_1_code41, field_declaration, plot_1_code2, (body_declarations, 11), range(plot_1, 10454, 165, 222, 224)).
code(plot_1_code42, modifier, plot_1_code41, (modifiers, 0), range(plot_1, 10507, 6, 223, 223)).
code(plot_1_code43, modifier, plot_1_code41, (modifiers, 1), range(plot_1, 10514, 6, 223, 223)).
code(plot_1_code44, modifier, plot_1_code41, (modifiers, 2), range(plot_1, 10521, 5, 223, 223)).
code(plot_1_code45, simple_type, plot_1_code41, type, range(plot_1, 10527, 5, 223, 223)).
code(plot_1_code46, variable_declaration_fragment, plot_1_code41, (fragments, 0), range(plot_1, 10533, 85, 223, 224)).
code(plot_1_code47, field_declaration, plot_1_code2, (body_declarations, 23), range(plot_1, 11868, 101, 263, 264)).
code(plot_1_code48, modifier, plot_1_code47, (modifiers, 0), range(plot_1, 11920, 7, 264, 264)).
code(plot_1_code49, primitive_type, plot_1_code47, type, range(plot_1, 11928, 3, 264, 264)).
code(plot_1_code50, variable_declaration_fragment, plot_1_code47, (fragments, 0), range(plot_1, 11932, 36, 264, 264)).
code(plot_1_code51, field_declaration, plot_1_code2, (body_declarations, 24), range(plot_1, 11977, 105, 266, 267)).
code(plot_1_code52, modifier, plot_1_code51, (modifiers, 0), range(plot_1, 12040, 7, 267, 267)).
code(plot_1_code53, primitive_type, plot_1_code51, type, range(plot_1, 12048, 5, 267, 267)).
code(plot_1_code54, variable_declaration_fragment, plot_1_code51, (fragments, 0), range(plot_1, 12054, 27, 267, 267)).
code(plot_1_code55, method_declaration, plot_1_code2, (body_declarations, 29), range(plot_1, 12472, 777, 281, 304)).
code(plot_1_code56, modifier, plot_1_code55, (modifiers, 0), range(plot_1, 12518, 9, 284, 284)).
code(plot_1_code57, simple_type, plot_1_expr38, type, range(plot_1, 13038, 4, 297, 297)).
code(plot_1_code58, simple_type, plot_1_expr45, type, range(plot_1, 13159, 22, 300, 300)).
code(plot_1_code59, simple_type, plot_1_expr49, type, range(plot_1, 13220, 17, 302, 302)).
code(plot_1_code60, method_declaration, plot_1_code2, (body_declarations, 39), range(plot_1, 16730, 296, 423, 434)).
code(plot_1_code61, method_declaration, plot_1_code2, (body_declarations, 69), range(plot_1, 30416, 511, 882, 894)).
code(plot_1_code63, simple_type, plot_1_code62, element_type, range(plot_1, 30637, 6, 888, 888)).
code(plot_1_code62, array_type, plot_1_stmt16, type, range(plot_1, 30637, 8, 888, 888)).
code(plot_1_code64, dimension, plot_1_code62, (dimensions, 0), range(plot_1, 30643, 2, 888, 888)).
code(plot_1_code65, variable_declaration_fragment, plot_1_stmt16, (fragments, 0), range(plot_1, 30646, 47, 888, 888)).
code(plot_1_code66, primitive_type, plot_1_expr56, type, range(plot_1, 30709, 3, 889, 889)).
code(plot_1_code67, variable_declaration_fragment, plot_1_expr56, (fragments, 0), range(plot_1, 30713, 24, 889, 889)).
code(plot_1_code68, method_declaration, plot_1_code2, (body_declarations, 70), range(plot_1, 30939, 212, 896, 903)).
code(plot_1_code69, simple_type, plot_1_expr61, type, range(plot_1, 31121, 15, 902, 902)).
%chart_change_event_1 - org.jfree.chart.event.ChartChangeEvent
code(chart_change_event_1_code1, compilation_unit, range(chart_change_event_1, 0, 4206, 1, -1)).
code(chart_change_event_1_code2, type_declaration, chart_change_event_1_code1, (types, 0), range(chart_change_event_1, 1953, 2251, 51, 134)).
code(chart_change_event_1_code3, method_declaration, chart_change_event_1_code2, (body_declarations, 2), range(chart_change_event_1, 2252, 289, 62, 70)).
code(chart_change_event_1_code4, method_declaration, chart_change_event_1_code2, (body_declarations, 4), range(chart_change_event_1, 2923, 482, 83, 96)).
code(chart_change_event_1_code5, method_declaration, chart_change_event_1_code2, (body_declarations, 8), range(chart_change_event_1, 4025, 174, 125, 132)).
%rectangle_anchor_1 - org.jfree.chart.util.RectangleAnchor
code(rectangle_anchor_1_code1, compilation_unit, range(rectangle_anchor_1, 0, 10015, 1, -1)).
code(rectangle_anchor_1_code2, type_declaration, rectangle_anchor_1_code1, (types, 0), range(rectangle_anchor_1, 1927, 8088, 52, -1)).
code(rectangle_anchor_1_code3, field_declaration, rectangle_anchor_1_code2, (body_declarations, 1), range(rectangle_anchor_1, 2189, 119, 62, 64)).
code(rectangle_anchor_1_code4, modifier, rectangle_anchor_1_code3, (modifiers, 0), range(rectangle_anchor_1, 2208, 6, 63, 63)).
code(rectangle_anchor_1_code5, modifier, rectangle_anchor_1_code3, (modifiers, 1), range(rectangle_anchor_1, 2215, 6, 63, 63)).
code(rectangle_anchor_1_code6, modifier, rectangle_anchor_1_code3, (modifiers, 2), range(rectangle_anchor_1, 2222, 5, 63, 63)).
code(rectangle_anchor_1_code7, simple_type, rectangle_anchor_1_code3, type, range(rectangle_anchor_1, 2228, 15, 63, 63)).
code(rectangle_anchor_1_code8, variable_declaration_fragment, rectangle_anchor_1_code3, (fragments, 0), range(rectangle_anchor_1, 2244, 63, 63, 64)).
code(rectangle_anchor_1_code9, field_declaration, rectangle_anchor_1_code2, (body_declarations, 2), range(rectangle_anchor_1, 2314, 110, 66, 68)).
code(rectangle_anchor_1_code10, modifier, rectangle_anchor_1_code9, (modifiers, 0), range(rectangle_anchor_1, 2330, 6, 67, 67)).
code(rectangle_anchor_1_code11, modifier, rectangle_anchor_1_code9, (modifiers, 1), range(rectangle_anchor_1, 2337, 6, 67, 67)).
code(rectangle_anchor_1_code12, modifier, rectangle_anchor_1_code9, (modifiers, 2), range(rectangle_anchor_1, 2344, 5, 67, 67)).
code(rectangle_anchor_1_code13, simple_type, rectangle_anchor_1_code9, type, range(rectangle_anchor_1, 2350, 15, 67, 67)).
code(rectangle_anchor_1_code14, variable_declaration_fragment, rectangle_anchor_1_code9, (fragments, 0), range(rectangle_anchor_1, 2366, 57, 67, 68)).
code(rectangle_anchor_1_code15, field_declaration, rectangle_anchor_1_code2, (body_declarations, 3), range(rectangle_anchor_1, 2430, 125, 70, 72)).
code(rectangle_anchor_1_code16, modifier, rectangle_anchor_1_code15, (modifiers, 0), range(rectangle_anchor_1, 2451, 6, 71, 71)).
code(rectangle_anchor_1_code17, modifier, rectangle_anchor_1_code15, (modifiers, 1), range(rectangle_anchor_1, 2458, 6, 71, 71)).
code(rectangle_anchor_1_code18, modifier, rectangle_anchor_1_code15, (modifiers, 2), range(rectangle_anchor_1, 2465, 5, 71, 71)).
code(rectangle_anchor_1_code19, simple_type, rectangle_anchor_1_code15, type, range(rectangle_anchor_1, 2471, 15, 71, 71)).
code(rectangle_anchor_1_code20, variable_declaration_fragment, rectangle_anchor_1_code15, (fragments, 0), range(rectangle_anchor_1, 2487, 67, 71, 72)).
code(rectangle_anchor_1_code21, field_declaration, rectangle_anchor_1_code2, (body_declarations, 4), range(rectangle_anchor_1, 2561, 128, 74, 76)).
code(rectangle_anchor_1_code22, modifier, rectangle_anchor_1_code21, (modifiers, 0), range(rectangle_anchor_1, 2583, 6, 75, 75)).
code(rectangle_anchor_1_code23, modifier, rectangle_anchor_1_code21, (modifiers, 1), range(rectangle_anchor_1, 2590, 6, 75, 75)).
code(rectangle_anchor_1_code24, modifier, rectangle_anchor_1_code21, (modifiers, 2), range(rectangle_anchor_1, 2597, 5, 75, 75)).
code(rectangle_anchor_1_code25, simple_type, rectangle_anchor_1_code21, type, range(rectangle_anchor_1, 2603, 15, 75, 75)).
code(rectangle_anchor_1_code26, variable_declaration_fragment, rectangle_anchor_1_code21, (fragments, 0), range(rectangle_anchor_1, 2619, 69, 75, 76)).
code(rectangle_anchor_1_code27, field_declaration, rectangle_anchor_1_code2, (body_declarations, 5), range(rectangle_anchor_1, 2695, 119, 78, 80)).
code(rectangle_anchor_1_code28, modifier, rectangle_anchor_1_code27, (modifiers, 0), range(rectangle_anchor_1, 2714, 6, 79, 79)).
code(rectangle_anchor_1_code29, modifier, rectangle_anchor_1_code27, (modifiers, 1), range(rectangle_anchor_1, 2721, 6, 79, 79)).
code(rectangle_anchor_1_code30, modifier, rectangle_anchor_1_code27, (modifiers, 2), range(rectangle_anchor_1, 2728, 5, 79, 79)).
code(rectangle_anchor_1_code31, simple_type, rectangle_anchor_1_code27, type, range(rectangle_anchor_1, 2734, 15, 79, 79)).
code(rectangle_anchor_1_code32, variable_declaration_fragment, rectangle_anchor_1_code27, (fragments, 0), range(rectangle_anchor_1, 2750, 63, 79, 80)).
code(rectangle_anchor_1_code33, field_declaration, rectangle_anchor_1_code2, (body_declarations, 6), range(rectangle_anchor_1, 2820, 134, 82, 84)).
code(rectangle_anchor_1_code34, modifier, rectangle_anchor_1_code33, (modifiers, 0), range(rectangle_anchor_1, 2844, 6, 83, 83)).
code(rectangle_anchor_1_code35, modifier, rectangle_anchor_1_code33, (modifiers, 1), range(rectangle_anchor_1, 2851, 6, 83, 83)).
code(rectangle_anchor_1_code36, modifier, rectangle_anchor_1_code33, (modifiers, 2), range(rectangle_anchor_1, 2858, 5, 83, 83)).
code(rectangle_anchor_1_code37, simple_type, rectangle_anchor_1_code33, type, range(rectangle_anchor_1, 2864, 15, 83, 83)).
code(rectangle_anchor_1_code38, variable_declaration_fragment, rectangle_anchor_1_code33, (fragments, 0), range(rectangle_anchor_1, 2880, 73, 83, 84)).
code(rectangle_anchor_1_code39, field_declaration, rectangle_anchor_1_code2, (body_declarations, 7), range(rectangle_anchor_1, 2960, 137, 86, 88)).
code(rectangle_anchor_1_code40, modifier, rectangle_anchor_1_code39, (modifiers, 0), range(rectangle_anchor_1, 2985, 6, 87, 87)).
code(rectangle_anchor_1_code41, modifier, rectangle_anchor_1_code39, (modifiers, 1), range(rectangle_anchor_1, 2992, 6, 87, 87)).
code(rectangle_anchor_1_code42, modifier, rectangle_anchor_1_code39, (modifiers, 2), range(rectangle_anchor_1, 2999, 5, 87, 87)).
code(rectangle_anchor_1_code43, simple_type, rectangle_anchor_1_code39, type, range(rectangle_anchor_1, 3005, 15, 87, 87)).
code(rectangle_anchor_1_code44, variable_declaration_fragment, rectangle_anchor_1_code39, (fragments, 0), range(rectangle_anchor_1, 3021, 75, 87, 88)).
code(rectangle_anchor_1_code45, field_declaration, rectangle_anchor_1_code2, (body_declarations, 8), range(rectangle_anchor_1, 3103, 113, 90, 92)).
code(rectangle_anchor_1_code46, modifier, rectangle_anchor_1_code45, (modifiers, 0), range(rectangle_anchor_1, 3120, 6, 91, 91)).
code(rectangle_anchor_1_code47, modifier, rectangle_anchor_1_code45, (modifiers, 1), range(rectangle_anchor_1, 3127, 6, 91, 91)).
code(rectangle_anchor_1_code48, modifier, rectangle_anchor_1_code45, (modifiers, 2), range(rectangle_anchor_1, 3134, 5, 91, 91)).
code(rectangle_anchor_1_code49, simple_type, rectangle_anchor_1_code45, type, range(rectangle_anchor_1, 3140, 15, 91, 91)).
code(rectangle_anchor_1_code50, variable_declaration_fragment, rectangle_anchor_1_code45, (fragments, 0), range(rectangle_anchor_1, 3156, 59, 91, 92)).
code(rectangle_anchor_1_code51, field_declaration, rectangle_anchor_1_code2, (body_declarations, 9), range(rectangle_anchor_1, 3222, 116, 94, 96)).
code(rectangle_anchor_1_code52, modifier, rectangle_anchor_1_code51, (modifiers, 0), range(rectangle_anchor_1, 3240, 6, 95, 95)).
code(rectangle_anchor_1_code53, modifier, rectangle_anchor_1_code51, (modifiers, 1), range(rectangle_anchor_1, 3247, 6, 95, 95)).
code(rectangle_anchor_1_code54, modifier, rectangle_anchor_1_code51, (modifiers, 2), range(rectangle_anchor_1, 3254, 5, 95, 95)).
code(rectangle_anchor_1_code55, simple_type, rectangle_anchor_1_code51, type, range(rectangle_anchor_1, 3260, 15, 95, 95)).
code(rectangle_anchor_1_code56, variable_declaration_fragment, rectangle_anchor_1_code51, (fragments, 0), range(rectangle_anchor_1, 3276, 61, 95, 96)).
code(rectangle_anchor_1_code57, method_declaration, rectangle_anchor_1_code2, (body_declarations, 11), range(rectangle_anchor_1, 3391, 157, 101, 108)).
code(rectangle_anchor_1_code58, modifier, rectangle_anchor_1_code57, (modifiers, 0), range(rectangle_anchor_1, 3472, 7, 106, 106)).
code(rectangle_anchor_1_code59, single_variable_declaration, rectangle_anchor_1_code57, (parameters, 0), range(rectangle_anchor_1, 3496, 17, 106, 106)).
code(rectangle_anchor_1_code60, modifier, rectangle_anchor_1_code59, (modifiers, 0), range(rectangle_anchor_1, 3496, 5, 106, 106)).
code(rectangle_anchor_1_code61, simple_type, rectangle_anchor_1_code59, type, range(rectangle_anchor_1, 3502, 6, 106, 106)).
%category_plot_1 - org.jfree.chart.plot.CategoryPlot
code(category_plot_1_code1, compilation_unit, range(category_plot_1, 0, 145556, 1, -1)).
code(category_plot_1_code2, type_declaration, category_plot_1_code1, (types, 0), range(category_plot_1, 11644, 133910, 227, 4117)).
code(category_plot_1_code3, field_declaration, category_plot_1_code2, (body_declarations, 3), range(category_plot_1, 12451, 228, 250, 253)).
code(category_plot_1_code4, modifier, category_plot_1_code3, (modifiers, 0), range(category_plot_1, 12493, 6, 251, 251)).
code(category_plot_1_code5, modifier, category_plot_1_code3, (modifiers, 1), range(category_plot_1, 12500, 6, 251, 251)).
code(category_plot_1_code6, modifier, category_plot_1_code3, (modifiers, 2), range(category_plot_1, 12507, 5, 251, 251)).
code(category_plot_1_code7, simple_type, category_plot_1_code3, type, range(category_plot_1, 12513, 6, 251, 251)).
code(category_plot_1_code8, variable_declaration_fragment, category_plot_1_code3, (fragments, 0), range(category_plot_1, 12520, 158, 251, 253)).
code(category_plot_1_code9, simple_type, category_plot_1_expr1, type, range(category_plot_1, 12550, 11, 251, 251)).
code(category_plot_1_code10, field_declaration, category_plot_1_code2, (body_declarations, 4), range(category_plot_1, 12687, 104, 255, 256)).
code(category_plot_1_code11, modifier, category_plot_1_code10, (modifiers, 0), range(category_plot_1, 12728, 6, 256, 256)).
code(category_plot_1_code12, modifier, category_plot_1_code10, (modifiers, 1), range(category_plot_1, 12735, 6, 256, 256)).
code(category_plot_1_code13, modifier, category_plot_1_code10, (modifiers, 2), range(category_plot_1, 12742, 5, 256, 256)).
code(category_plot_1_code14, simple_type, category_plot_1_code10, type, range(category_plot_1, 12748, 5, 256, 256)).
code(category_plot_1_code15, variable_declaration_fragment, category_plot_1_code10, (fragments, 0), range(category_plot_1, 12754, 36, 256, 256)).
code(category_plot_1_code16, field_declaration, category_plot_1_code2, (body_declarations, 5), range(category_plot_1, 12799, 146, 258, 260)).
code(category_plot_1_code17, modifier, category_plot_1_code16, (modifiers, 0), range(category_plot_1, 12841, 6, 259, 259)).
code(category_plot_1_code18, modifier, category_plot_1_code16, (modifiers, 1), range(category_plot_1, 12848, 6, 259, 259)).
code(category_plot_1_code19, modifier, category_plot_1_code16, (modifiers, 2), range(category_plot_1, 12855, 5, 259, 259)).
code(category_plot_1_code20, simple_type, category_plot_1_code16, type, range(category_plot_1, 12861, 4, 259, 259)).
code(category_plot_1_code21, variable_declaration_fragment, category_plot_1_code16, (fragments, 0), range(category_plot_1, 12866, 78, 259, 260)).
code(category_plot_1_code22, simple_type, category_plot_1_expr3, type, range(category_plot_1, 12897, 4, 259, 259)).
code(category_plot_1_code23, field_declaration, category_plot_1_code2, (body_declarations, 7), range(category_plot_1, 13115, 179, 269, 275)).
code(category_plot_1_code24, modifier, category_plot_1_code23, (modifiers, 0), range(category_plot_1, 13203, 6, 274, 274)).
code(category_plot_1_code25, modifier, category_plot_1_code23, (modifiers, 1), range(category_plot_1, 13210, 6, 274, 274)).
code(category_plot_1_code26, modifier, category_plot_1_code23, (modifiers, 2), range(category_plot_1, 13217, 5, 274, 274)).
code(category_plot_1_code27, simple_type, category_plot_1_code23, type, range(category_plot_1, 13223, 6, 274, 274)).
code(category_plot_1_code28, variable_declaration_fragment, category_plot_1_code23, (fragments, 0), range(category_plot_1, 13230, 63, 274, 275)).
code(category_plot_1_code29, field_declaration, category_plot_1_code2, (body_declarations, 8), range(category_plot_1, 13302, 150, 277, 282)).
code(category_plot_1_code30, modifier, category_plot_1_code29, (modifiers, 0), range(category_plot_1, 13389, 6, 282, 282)).
code(category_plot_1_code31, modifier, category_plot_1_code29, (modifiers, 1), range(category_plot_1, 13396, 6, 282, 282)).
code(category_plot_1_code32, modifier, category_plot_1_code29, (modifiers, 2), range(category_plot_1, 13403, 5, 282, 282)).
code(category_plot_1_code33, simple_type, category_plot_1_code29, type, range(category_plot_1, 13409, 5, 282, 282)).
code(category_plot_1_code34, variable_declaration_fragment, category_plot_1_code29, (fragments, 0), range(category_plot_1, 13415, 36, 282, 282)).
code(category_plot_1_code35, field_declaration, category_plot_1_code2, (body_declarations, 9), range(category_plot_1, 13460, 205, 284, 287)).
code(category_plot_1_code36, modifier, category_plot_1_code35, (modifiers, 0), range(category_plot_1, 13513, 9, 285, 285)).
code(category_plot_1_code37, modifier, category_plot_1_code35, (modifiers, 1), range(category_plot_1, 13523, 6, 285, 285)).
code(category_plot_1_code38, simple_type, category_plot_1_code35, type, range(category_plot_1, 13530, 14, 285, 285)).
code(category_plot_1_code39, variable_declaration_fragment, category_plot_1_code35, (fragments, 0), range(category_plot_1, 13545, 119, 285, 287)).
code(category_plot_1_code40, field_declaration, category_plot_1_code2, (body_declarations, 21), range(category_plot_1, 14787, 132, 325, 327)).
code(category_plot_1_code41, modifier, category_plot_1_code40, (modifiers, 0), range(category_plot_1, 14828, 7, 326, 326)).
code(category_plot_1_code42, simple_type, category_plot_1_code40, type, range(category_plot_1, 14836, 21, 326, 326)).
code(category_plot_1_code43, variable_declaration_fragment, category_plot_1_code40, (fragments, 0), range(category_plot_1, 14858, 60, 326, 327)).
code(category_plot_1_code44, field_declaration, category_plot_1_code2, (body_declarations, 22), range(category_plot_1, 14927, 183, 329, 333)).
code(category_plot_1_code45, modifier, category_plot_1_code44, (modifiers, 0), range(category_plot_1, 15049, 7, 333, 333)).
code(category_plot_1_code46, simple_type, category_plot_1_code44, type, range(category_plot_1, 15057, 9, 333, 333)).
code(category_plot_1_code47, variable_declaration_fragment, category_plot_1_code44, (fragments, 0), range(category_plot_1, 15067, 42, 333, 333)).
code(category_plot_1_code48, field_declaration, category_plot_1_code2, (body_declarations, 23), range(category_plot_1, 15122, 177, 335, 339)).
code(category_plot_1_code49, modifier, category_plot_1_code48, (modifiers, 0), range(category_plot_1, 15241, 7, 339, 339)).
code(category_plot_1_code50, simple_type, category_plot_1_code48, type, range(category_plot_1, 15249, 9, 339, 339)).
code(category_plot_1_code51, variable_declaration_fragment, category_plot_1_code48, (fragments, 0), range(category_plot_1, 15259, 39, 339, 339)).
code(category_plot_1_code52, field_declaration, category_plot_1_code2, (body_declarations, 36), range(category_plot_1, 16710, 168, 383, 387)).
code(category_plot_1_code53, modifier, category_plot_1_code52, (modifiers, 0), range(category_plot_1, 16828, 7, 387, 387)).
code(category_plot_1_code54, primitive_type, category_plot_1_code52, type, range(category_plot_1, 16836, 7, 387, 387)).
code(category_plot_1_code55, variable_declaration_fragment, category_plot_1_code52, (fragments, 0), range(category_plot_1, 16844, 33, 387, 387)).
code(category_plot_1_code56, method_declaration, category_plot_1_code2, (body_declarations, 46), range(category_plot_1, 18087, 116, 426, 431)).
code(category_plot_1_code57, method_declaration, category_plot_1_code2, (body_declarations, 47), range(category_plot_1, 18211, 3440, 433, 525)).
code(category_plot_1_code58, simple_type, category_plot_1_expr12, type, range(category_plot_1, 18929, 10, 452, 452)).
code(category_plot_1_code59, simple_type, category_plot_1_expr16, type, range(category_plot_1, 18983, 10, 453, 453)).
code(category_plot_1_code60, simple_type, category_plot_1_expr20, type, range(category_plot_1, 19027, 10, 454, 454)).
code(category_plot_1_code61, simple_type, category_plot_1_expr24, type, range(category_plot_1, 19080, 10, 455, 455)).
code(category_plot_1_code62, simple_type, category_plot_1_expr28, type, range(category_plot_1, 19147, 10, 457, 457)).
code(category_plot_1_code63, simple_type, category_plot_1_expr32, type, range(category_plot_1, 19203, 10, 458, 458)).
code(category_plot_1_code64, simple_type, category_plot_1_expr36, type, range(category_plot_1, 19249, 10, 460, 460)).
code(category_plot_1_code65, simple_type, category_plot_1_expr40, type, range(category_plot_1, 19294, 10, 462, 462)).
code(category_plot_1_code66, simple_type, category_plot_1_expr48, type, range(category_plot_1, 19470, 15, 468, 468)).
code(category_plot_1_code67, simple_type, category_plot_1_expr96, type, range(category_plot_1, 20872, 7, 506, 506)).
code(category_plot_1_code68, simple_type, category_plot_1_expr100, type, range(category_plot_1, 20927, 7, 507, 507)).
code(category_plot_1_code69, simple_type, category_plot_1_expr104, type, range(category_plot_1, 20981, 7, 508, 508)).
code(category_plot_1_code70, simple_type, category_plot_1_expr108, type, range(category_plot_1, 21035, 7, 509, 509)).
code(category_plot_1_code71, simple_type, category_plot_1_stmt39, type, range(category_plot_1, 21057, 6, 511, 511)).
code(category_plot_1_code72, variable_declaration_fragment, category_plot_1_stmt39, (fragments, 0), range(category_plot_1, 21064, 192, 511, 513)).
code(category_plot_1_code73, simple_type, category_plot_1_expr110, type, range(category_plot_1, 21079, 11, 511, 511)).
code(category_plot_1_code74, simple_type, category_plot_1_expr111, type, range(category_plot_1, 21100, 5, 511, 511)).
code(category_plot_1_code75, simple_type, category_plot_1_expr133, type, range(category_plot_1, 21620, 19, 523, 523)).
code(category_plot_1_code76, method_declaration, category_plot_1_code2, (body_declarations, 63), range(category_plot_1, 28616, 472, 758, 768)).
code(category_plot_1_code77, method_declaration, category_plot_1_code2, (body_declarations, 65), range(category_plot_1, 29587, 809, 785, 808)).
code(category_plot_1_code78, method_declaration, category_plot_1_code2, (body_declarations, 70), range(category_plot_1, 31943, 322, 863, 873)).
code(category_plot_1_code79, primitive_type, category_plot_1_expr142, type, range(category_plot_1, 32047, 3, 867, 867)).
code(category_plot_1_code80, variable_declaration_fragment, category_plot_1_expr142, (fragments, 0), range(category_plot_1, 32051, 5, 867, 867)).
code(category_plot_1_code81, simple_type, category_plot_1_stmt52, type, range(category_plot_1, 32106, 12, 868, 868)).
code(category_plot_1_code82, variable_declaration_fragment, category_plot_1_stmt52, (fragments, 0), range(category_plot_1, 32119, 44, 868, 868)).
code(category_plot_1_code83, simple_type, category_plot_1_expr148, type, range(category_plot_1, 32127, 12, 868, 868)).
code(category_plot_1_code84, method_declaration, category_plot_1_code2, (body_declarations, 72), range(category_plot_1, 32630, 638, 886, 906)).
code(category_plot_1_code85, simple_type, category_plot_1_stmt54, type, range(category_plot_1, 32839, 9, 894, 894)).
code(category_plot_1_code86, variable_declaration_fragment, category_plot_1_stmt54, (fragments, 0), range(category_plot_1, 32849, 13, 894, 894)).
code(category_plot_1_code87, simple_type, category_plot_1_expr158, type, range(category_plot_1, 32933, 9, 896, 896)).
code(category_plot_1_code88, simple_type, category_plot_1_stmt58, type, range(category_plot_1, 33026, 4, 899, 899)).
code(category_plot_1_code89, variable_declaration_fragment, category_plot_1_stmt58, (fragments, 0), range(category_plot_1, 33031, 20, 899, 899)).
code(category_plot_1_code90, simple_type, category_plot_1_expr164, right_operand, range(category_plot_1, 33088, 12, 900, 900)).
code(category_plot_1_code91, method_declaration, category_plot_1_code2, (body_declarations, 81), range(category_plot_1, 37330, 473, 1041, 1052)).
code(category_plot_1_code92, method_declaration, category_plot_1_code2, (body_declarations, 83), range(category_plot_1, 38280, 800, 1068, 1089)).
code(category_plot_1_code93, method_declaration, category_plot_1_code2, (body_declarations, 88), range(category_plot_1, 40496, 312, 1141, 1151)).
code(category_plot_1_code94, primitive_type, category_plot_1_expr172, type, range(category_plot_1, 40598, 3, 1145, 1145)).
code(category_plot_1_code95, variable_declaration_fragment, category_plot_1_expr172, (fragments, 0), range(category_plot_1, 40602, 5, 1145, 1145)).
code(category_plot_1_code96, simple_type, category_plot_1_stmt66, type, range(category_plot_1, 40656, 9, 1146, 1146)).
code(category_plot_1_code97, variable_declaration_fragment, category_plot_1_stmt66, (fragments, 0), range(category_plot_1, 40666, 40, 1146, 1146)).
code(category_plot_1_code98, simple_type, category_plot_1_expr178, type, range(category_plot_1, 40674, 9, 1146, 1146)).
code(category_plot_1_code99, method_declaration, category_plot_1_code2, (body_declarations, 90), range(category_plot_1, 41092, 476, 1164, 1179)).
code(category_plot_1_code100, simple_type, category_plot_1_stmt68, type, range(category_plot_1, 41385, 15, 1174, 1174)).
code(category_plot_1_code101, variable_declaration_fragment, category_plot_1_stmt68, (fragments, 0), range(category_plot_1, 41401, 13, 1174, 1174)).
code(category_plot_1_code102, simple_type, category_plot_1_expr188, type, range(category_plot_1, 41484, 15, 1176, 1176)).
code(category_plot_1_code103, method_declaration, category_plot_1_code2, (body_declarations, 94), range(category_plot_1, 43113, 518, 1232, 1244)).
code(category_plot_1_code104, simple_type, category_plot_1_expr193, type, range(category_plot_1, 43468, 7, 1241, 1241)).
code(category_plot_1_code105, simple_type, category_plot_1_expr197, type, range(category_plot_1, 43577, 18, 1243, 1243)).
code(category_plot_1_code106, method_declaration, category_plot_1_code2, (body_declarations, 96), range(category_plot_1, 44294, 512, 1265, 1277)).
code(category_plot_1_code107, simple_type, category_plot_1_expr201, type, range(category_plot_1, 44645, 7, 1274, 1274)).
code(category_plot_1_code108, simple_type, category_plot_1_expr205, type, range(category_plot_1, 44752, 18, 1276, 1276)).
code(category_plot_1_code109, method_declaration, category_plot_1_code2, (body_declarations, 132), range(category_plot_1, 63744, 840, 1846, 1871)).
code(category_plot_1_code110, primitive_type, category_plot_1_stmt76, type, range(category_plot_1, 64045, 3, 1855, 1855)).
code(category_plot_1_code111, variable_declaration_fragment, category_plot_1_stmt76, (fragments, 0), range(category_plot_1, 64049, 29, 1855, 1855)).
code(category_plot_1_code112, primitive_type, category_plot_1_expr211, type, range(category_plot_1, 64094, 3, 1856, 1856)).
code(category_plot_1_code113, variable_declaration_fragment, category_plot_1_expr211, (fragments, 0), range(category_plot_1, 64098, 13, 1856, 1856)).
code(category_plot_1_code114, simple_type, category_plot_1_stmt78, type, range(category_plot_1, 64160, 9, 1857, 1857)).
code(category_plot_1_code115, variable_declaration_fragment, category_plot_1_stmt78, (fragments, 0), range(category_plot_1, 64170, 31, 1857, 1857)).
code(category_plot_1_code116, simple_type, category_plot_1_stmt81, type, range(category_plot_1, 64423, 15, 1866, 1866)).
code(category_plot_1_code117, variable_declaration_fragment, category_plot_1_stmt81, (fragments, 0), range(category_plot_1, 64439, 29, 1866, 1866)).
code(category_plot_1_code118, simple_type, category_plot_1_expr218, type, range(category_plot_1, 64447, 15, 1866, 1866)).
code(category_plot_1_code119, method_declaration, category_plot_1_code2, (body_declarations, 142), range(category_plot_1, 72947, 438, 2094, 2107)).
code(category_plot_1_code120, method_declaration, category_plot_1_code2, (body_declarations, 143), range(category_plot_1, 73393, 557, 2109, 2123)).
code(category_plot_1_code121, method_declaration, category_plot_1_code2, (body_declarations, 144), range(category_plot_1, 73958, 579, 2125, 2140)).
code(category_plot_1_code122, method_declaration, category_plot_1_code2, (body_declarations, 145), range(category_plot_1, 74545, 1041, 2142, 2171)).
code(category_plot_1_code123, simple_type, category_plot_1_expr227, type, range(category_plot_1, 75191, 9, 2159, 2159)).
code(category_plot_1_code124, simple_type, category_plot_1_expr229, type, range(category_plot_1, 75239, 7, 2159, 2159)).
code(category_plot_1_code125, primitive_type, category_plot_1_stmt89, type, range(category_plot_1, 75436, 7, 2166, 2166)).
code(category_plot_1_code126, variable_declaration_fragment, category_plot_1_stmt89, (fragments, 0), range(category_plot_1, 75444, 32, 2166, 2166)).
code(category_plot_1_code127, method_declaration, category_plot_1_code2, (body_declarations, 147), range(category_plot_1, 76165, 675, 2187, 2201)).
code(category_plot_1_code128, method_declaration, category_plot_1_code2, (body_declarations, 148), range(category_plot_1, 76848, 617, 2203, 2218)).
code(category_plot_1_code129, method_declaration, category_plot_1_code2, (body_declarations, 149), range(category_plot_1, 77473, 1588, 2220, 2261)).
code(category_plot_1_code130, simple_type, category_plot_1_expr238, type, range(category_plot_1, 78620, 10, 2249, 2249)).
code(category_plot_1_code131, simple_type, category_plot_1_expr245, type, range(category_plot_1, 78774, 19, 2252, 2252)).
code(category_plot_1_code132, simple_type, category_plot_1_expr247, type, range(category_plot_1, 78850, 7, 2253, 2253)).
code(category_plot_1_code133, method_declaration, category_plot_1_code2, (body_declarations, 154), range(category_plot_1, 82584, 480, 2364, 2379)).
code(category_plot_1_code134, method_declaration, category_plot_1_code2, (body_declarations, 155), range(category_plot_1, 83072, 607, 2381, 2397)).
code(category_plot_1_code135, method_declaration, category_plot_1_code2, (body_declarations, 156), range(category_plot_1, 83687, 635, 2399, 2416)).
code(category_plot_1_code136, method_declaration, category_plot_1_code2, (body_declarations, 157), range(category_plot_1, 84330, 1251, 2418, 2453)).
code(category_plot_1_code137, simple_type, category_plot_1_expr260, type, range(category_plot_1, 85188, 9, 2441, 2441)).
code(category_plot_1_code138, simple_type, category_plot_1_expr262, type, range(category_plot_1, 85235, 7, 2441, 2441)).
code(category_plot_1_code139, primitive_type, category_plot_1_stmt108, type, range(category_plot_1, 85431, 7, 2448, 2448)).
code(category_plot_1_code140, variable_declaration_fragment, category_plot_1_stmt108, (fragments, 0), range(category_plot_1, 85439, 32, 2448, 2448)).
%object_list_1 - org.jfree.chart.util.ObjectList
code(object_list_1_code1, compilation_unit, range(object_list_1, 0, 3704, 1, -1)).
code(object_list_1_code2, type_declaration, object_list_1_code1, (types, 0), range(object_list_1, 1784, 1919, 48, 110)).
code(object_list_1_code3, method_declaration, object_list_1_code2, (body_declarations, 0), range(object_list_1, 1988, 71, 55, 59)).
code(object_list_1_code4, modifier, object_list_1_code3, (modifiers, 0), range(object_list_1, 2032, 6, 58, 58)).
code(object_list_1_code5, method_declaration, object_list_1_code2, (body_declarations, 2), range(object_list_1, 2634, 349, 76, 86)).
code(object_list_1_code6, method_declaration, object_list_1_code2, (body_declarations, 3), range(object_list_1, 3002, 333, 88, 96)).
%plot_orientation_1 - org.jfree.chart.plot.PlotOrientation
code(plot_orientation_1_code1, compilation_unit, range(plot_orientation_1, 0, 4119, 1, -1)).
code(plot_orientation_1_code2, type_declaration, plot_orientation_1_code1, (types, 0), range(plot_orientation_1, 1743, 2374, 48, 134)).
code(plot_orientation_1_code3, field_declaration, plot_orientation_1_code2, (body_declarations, 1), range(plot_orientation_1, 2007, 171, 56, 58)).
code(plot_orientation_1_code4, modifier, plot_orientation_1_code3, (modifiers, 0), range(plot_orientation_1, 2066, 6, 57, 57)).
code(plot_orientation_1_code5, modifier, plot_orientation_1_code3, (modifiers, 1), range(plot_orientation_1, 2073, 6, 57, 57)).
code(plot_orientation_1_code6, modifier, plot_orientation_1_code3, (modifiers, 2), range(plot_orientation_1, 2080, 5, 57, 57)).
code(plot_orientation_1_code7, simple_type, plot_orientation_1_code3, type, range(plot_orientation_1, 2086, 15, 57, 57)).
code(plot_orientation_1_code8, variable_declaration_fragment, plot_orientation_1_code3, (fragments, 0), range(plot_orientation_1, 2102, 75, 57, 58)).
code(plot_orientation_1_code9, field_declaration, plot_orientation_1_code2, (body_declarations, 2), range(plot_orientation_1, 2186, 165, 60, 62)).
code(plot_orientation_1_code10, modifier, plot_orientation_1_code9, (modifiers, 0), range(plot_orientation_1, 2243, 6, 61, 61)).
code(plot_orientation_1_code11, modifier, plot_orientation_1_code9, (modifiers, 1), range(plot_orientation_1, 2250, 6, 61, 61)).
code(plot_orientation_1_code12, modifier, plot_orientation_1_code9, (modifiers, 2), range(plot_orientation_1, 2257, 5, 61, 61)).
code(plot_orientation_1_code13, simple_type, plot_orientation_1_code9, type, range(plot_orientation_1, 2263, 15, 61, 61)).
code(plot_orientation_1_code14, variable_declaration_fragment, plot_orientation_1_code9, (fragments, 0), range(plot_orientation_1, 2279, 71, 61, 62)).
code(plot_orientation_1_code15, method_declaration, plot_orientation_1_code2, (body_declarations, 4), range(plot_orientation_1, 2409, 158, 67, 74)).
code(plot_orientation_1_code16, modifier, plot_orientation_1_code15, (modifiers, 0), range(plot_orientation_1, 2495, 7, 72, 72)).
code(plot_orientation_1_code18, simple_type, plot_orientation_1_code17, type, range(plot_orientation_1, 2519, 6, 72, 72)).
code(plot_orientation_1_code17, single_variable_declaration, plot_orientation_1_code15, (parameters, 0), range(plot_orientation_1, 2519, 11, 72, 72)).
%chart_color_1 - org.jfree.chart.ChartColor
code(chart_color_1_code1, compilation_unit, range(chart_color_1, 0, 6992, 1, -1)).
code(chart_color_1_code2, type_declaration, chart_color_1_code1, (types, 0), range(chart_color_1, 1977, 5013, 51, 189)).
code(chart_color_1_code3, field_declaration, chart_color_1_code2, (body_declarations, 0), range(chart_color_1, 2209, 105, 58, 59)).
code(chart_color_1_code4, modifier, chart_color_1_code3, (modifiers, 0), range(chart_color_1, 2244, 6, 59, 59)).
code(chart_color_1_code5, modifier, chart_color_1_code3, (modifiers, 1), range(chart_color_1, 2251, 6, 59, 59)).
code(chart_color_1_code6, modifier, chart_color_1_code3, (modifiers, 2), range(chart_color_1, 2258, 5, 59, 59)).
code(chart_color_1_code7, simple_type, chart_color_1_code3, type, range(chart_color_1, 2264, 5, 59, 59)).
code(chart_color_1_code8, variable_declaration_fragment, chart_color_1_code3, (fragments, 0), range(chart_color_1, 2270, 43, 59, 59)).
code(chart_color_1_code9, simple_type, chart_color_1_expr1, type, range(chart_color_1, 2290, 5, 59, 59)).
code(chart_color_1_code10, field_declaration, chart_color_1_code2, (body_declarations, 1), range(chart_color_1, 2322, 95, 61, 62)).
code(chart_color_1_code11, modifier, chart_color_1_code10, (modifiers, 0), range(chart_color_1, 2352, 6, 62, 62)).
code(chart_color_1_code12, modifier, chart_color_1_code10, (modifiers, 1), range(chart_color_1, 2359, 6, 62, 62)).
code(chart_color_1_code13, modifier, chart_color_1_code10, (modifiers, 2), range(chart_color_1, 2366, 5, 62, 62)).
code(chart_color_1_code14, simple_type, chart_color_1_code10, type, range(chart_color_1, 2372, 5, 62, 62)).
code(chart_color_1_code15, variable_declaration_fragment, chart_color_1_code10, (fragments, 0), range(chart_color_1, 2378, 38, 62, 62)).
code(chart_color_1_code16, simple_type, chart_color_1_expr2, type, range(chart_color_1, 2393, 5, 62, 62)).
code(chart_color_1_code17, field_declaration, chart_color_1_code2, (body_declarations, 2), range(chart_color_1, 2425, 97, 64, 65)).
code(chart_color_1_code18, modifier, chart_color_1_code17, (modifiers, 0), range(chart_color_1, 2456, 6, 65, 65)).
code(chart_color_1_code19, modifier, chart_color_1_code17, (modifiers, 1), range(chart_color_1, 2463, 6, 65, 65)).
code(chart_color_1_code20, modifier, chart_color_1_code17, (modifiers, 2), range(chart_color_1, 2470, 5, 65, 65)).
code(chart_color_1_code21, simple_type, chart_color_1_code17, type, range(chart_color_1, 2476, 5, 65, 65)).
code(chart_color_1_code22, variable_declaration_fragment, chart_color_1_code17, (fragments, 0), range(chart_color_1, 2482, 39, 65, 65)).
code(chart_color_1_code23, simple_type, chart_color_1_expr3, type, range(chart_color_1, 2498, 5, 65, 65)).
code(chart_color_1_code24, field_declaration, chart_color_1_code2, (body_declarations, 3), range(chart_color_1, 2530, 107, 67, 68)).
code(chart_color_1_code25, modifier, chart_color_1_code24, (modifiers, 0), range(chart_color_1, 2566, 6, 68, 68)).
code(chart_color_1_code26, modifier, chart_color_1_code24, (modifiers, 1), range(chart_color_1, 2573, 6, 68, 68)).
code(chart_color_1_code27, modifier, chart_color_1_code24, (modifiers, 2), range(chart_color_1, 2580, 5, 68, 68)).
code(chart_color_1_code28, simple_type, chart_color_1_code24, type, range(chart_color_1, 2586, 5, 68, 68)).
code(chart_color_1_code29, variable_declaration_fragment, chart_color_1_code24, (fragments, 0), range(chart_color_1, 2592, 44, 68, 68)).
code(chart_color_1_code30, simple_type, chart_color_1_expr4, type, range(chart_color_1, 2613, 5, 68, 68)).
code(chart_color_1_code31, field_declaration, chart_color_1_code2, (body_declarations, 4), range(chart_color_1, 2645, 111, 70, 71)).
code(chart_color_1_code32, modifier, chart_color_1_code31, (modifiers, 0), range(chart_color_1, 2683, 6, 71, 71)).
code(chart_color_1_code33, modifier, chart_color_1_code31, (modifiers, 1), range(chart_color_1, 2690, 6, 71, 71)).
code(chart_color_1_code34, modifier, chart_color_1_code31, (modifiers, 2), range(chart_color_1, 2697, 5, 71, 71)).
code(chart_color_1_code35, simple_type, chart_color_1_code31, type, range(chart_color_1, 2703, 5, 71, 71)).
code(chart_color_1_code36, variable_declaration_fragment, chart_color_1_code31, (fragments, 0), range(chart_color_1, 2709, 46, 71, 71)).
code(chart_color_1_code37, simple_type, chart_color_1_expr5, type, range(chart_color_1, 2732, 5, 71, 71)).
code(chart_color_1_code38, field_declaration, chart_color_1_code2, (body_declarations, 5), range(chart_color_1, 2764, 101, 73, 74)).
code(chart_color_1_code39, modifier, chart_color_1_code38, (modifiers, 0), range(chart_color_1, 2797, 6, 74, 74)).
code(chart_color_1_code40, modifier, chart_color_1_code38, (modifiers, 1), range(chart_color_1, 2804, 6, 74, 74)).
code(chart_color_1_code41, modifier, chart_color_1_code38, (modifiers, 2), range(chart_color_1, 2811, 5, 74, 74)).
code(chart_color_1_code42, simple_type, chart_color_1_code38, type, range(chart_color_1, 2817, 5, 74, 74)).
code(chart_color_1_code43, variable_declaration_fragment, chart_color_1_code38, (fragments, 0), range(chart_color_1, 2823, 41, 74, 74)).
code(chart_color_1_code44, simple_type, chart_color_1_expr6, type, range(chart_color_1, 2841, 5, 74, 74)).
code(chart_color_1_code45, field_declaration, chart_color_1_code2, (body_declarations, 6), range(chart_color_1, 2873, 103, 76, 77)).
code(chart_color_1_code46, modifier, chart_color_1_code45, (modifiers, 0), range(chart_color_1, 2907, 6, 77, 77)).
code(chart_color_1_code47, modifier, chart_color_1_code45, (modifiers, 1), range(chart_color_1, 2914, 6, 77, 77)).
code(chart_color_1_code48, modifier, chart_color_1_code45, (modifiers, 2), range(chart_color_1, 2921, 5, 77, 77)).
code(chart_color_1_code49, simple_type, chart_color_1_code45, type, range(chart_color_1, 2927, 5, 77, 77)).
code(chart_color_1_code50, variable_declaration_fragment, chart_color_1_code45, (fragments, 0), range(chart_color_1, 2933, 42, 77, 77)).
code(chart_color_1_code51, simple_type, chart_color_1_expr7, type, range(chart_color_1, 2952, 5, 77, 77)).
code(chart_color_1_code52, field_declaration, chart_color_1_code2, (body_declarations, 7), range(chart_color_1, 2984, 113, 79, 80)).
code(chart_color_1_code53, modifier, chart_color_1_code52, (modifiers, 0), range(chart_color_1, 3023, 6, 80, 80)).
code(chart_color_1_code54, modifier, chart_color_1_code52, (modifiers, 1), range(chart_color_1, 3030, 6, 80, 80)).
code(chart_color_1_code55, modifier, chart_color_1_code52, (modifiers, 2), range(chart_color_1, 3037, 5, 80, 80)).
code(chart_color_1_code56, simple_type, chart_color_1_code52, type, range(chart_color_1, 3043, 5, 80, 80)).
code(chart_color_1_code57, variable_declaration_fragment, chart_color_1_code52, (fragments, 0), range(chart_color_1, 3049, 47, 80, 80)).
code(chart_color_1_code58, simple_type, chart_color_1_expr8, type, range(chart_color_1, 3073, 5, 80, 80)).
code(chart_color_1_code59, field_declaration, chart_color_1_code2, (body_declarations, 8), range(chart_color_1, 3105, 109, 82, 83)).
code(chart_color_1_code60, modifier, chart_color_1_code59, (modifiers, 0), range(chart_color_1, 3142, 6, 83, 83)).
code(chart_color_1_code61, modifier, chart_color_1_code59, (modifiers, 1), range(chart_color_1, 3149, 6, 83, 83)).
code(chart_color_1_code62, modifier, chart_color_1_code59, (modifiers, 2), range(chart_color_1, 3156, 5, 83, 83)).
code(chart_color_1_code63, simple_type, chart_color_1_code59, type, range(chart_color_1, 3162, 5, 83, 83)).
code(chart_color_1_code64, variable_declaration_fragment, chart_color_1_code59, (fragments, 0), range(chart_color_1, 3168, 45, 83, 83)).
code(chart_color_1_code65, simple_type, chart_color_1_expr9, type, range(chart_color_1, 3190, 5, 83, 83)).
code(chart_color_1_code66, field_declaration, chart_color_1_code2, (body_declarations, 9), range(chart_color_1, 3222, 99, 85, 86)).
code(chart_color_1_code67, modifier, chart_color_1_code66, (modifiers, 0), range(chart_color_1, 3254, 6, 86, 86)).
code(chart_color_1_code68, modifier, chart_color_1_code66, (modifiers, 1), range(chart_color_1, 3261, 6, 86, 86)).
code(chart_color_1_code69, modifier, chart_color_1_code66, (modifiers, 2), range(chart_color_1, 3268, 5, 86, 86)).
code(chart_color_1_code70, simple_type, chart_color_1_code66, type, range(chart_color_1, 3274, 5, 86, 86)).
code(chart_color_1_code71, variable_declaration_fragment, chart_color_1_code66, (fragments, 0), range(chart_color_1, 3280, 40, 86, 86)).
code(chart_color_1_code72, simple_type, chart_color_1_expr10, type, range(chart_color_1, 3297, 5, 86, 86)).
code(chart_color_1_code73, field_declaration, chart_color_1_code2, (body_declarations, 10), range(chart_color_1, 3329, 101, 88, 89)).
code(chart_color_1_code74, modifier, chart_color_1_code73, (modifiers, 0), range(chart_color_1, 3362, 6, 89, 89)).
code(chart_color_1_code75, modifier, chart_color_1_code73, (modifiers, 1), range(chart_color_1, 3369, 6, 89, 89)).
code(chart_color_1_code76, modifier, chart_color_1_code73, (modifiers, 2), range(chart_color_1, 3376, 5, 89, 89)).
code(chart_color_1_code77, simple_type, chart_color_1_code73, type, range(chart_color_1, 3382, 5, 89, 89)).
code(chart_color_1_code78, variable_declaration_fragment, chart_color_1_code73, (fragments, 0), range(chart_color_1, 3388, 41, 89, 89)).
code(chart_color_1_code79, simple_type, chart_color_1_expr11, type, range(chart_color_1, 3406, 5, 89, 89)).
code(chart_color_1_code80, field_declaration, chart_color_1_code2, (body_declarations, 11), range(chart_color_1, 3438, 111, 91, 92)).
code(chart_color_1_code81, modifier, chart_color_1_code80, (modifiers, 0), range(chart_color_1, 3476, 6, 92, 92)).
code(chart_color_1_code82, modifier, chart_color_1_code80, (modifiers, 1), range(chart_color_1, 3483, 6, 92, 92)).
code(chart_color_1_code83, modifier, chart_color_1_code80, (modifiers, 2), range(chart_color_1, 3490, 5, 92, 92)).
code(chart_color_1_code84, simple_type, chart_color_1_code80, type, range(chart_color_1, 3496, 5, 92, 92)).
code(chart_color_1_code85, variable_declaration_fragment, chart_color_1_code80, (fragments, 0), range(chart_color_1, 3502, 46, 92, 92)).
code(chart_color_1_code86, simple_type, chart_color_1_expr12, type, range(chart_color_1, 3525, 5, 92, 92)).
code(chart_color_1_code87, field_declaration, chart_color_1_code2, (body_declarations, 12), range(chart_color_1, 3557, 107, 94, 95)).
code(chart_color_1_code88, modifier, chart_color_1_code87, (modifiers, 0), range(chart_color_1, 3593, 6, 95, 95)).
code(chart_color_1_code89, modifier, chart_color_1_code87, (modifiers, 1), range(chart_color_1, 3600, 6, 95, 95)).
code(chart_color_1_code90, modifier, chart_color_1_code87, (modifiers, 2), range(chart_color_1, 3607, 5, 95, 95)).
code(chart_color_1_code91, simple_type, chart_color_1_code87, type, range(chart_color_1, 3613, 5, 95, 95)).
code(chart_color_1_code92, variable_declaration_fragment, chart_color_1_code87, (fragments, 0), range(chart_color_1, 3619, 44, 95, 95)).
code(chart_color_1_code93, simple_type, chart_color_1_expr13, type, range(chart_color_1, 3640, 5, 95, 95)).
code(chart_color_1_code94, field_declaration, chart_color_1_code2, (body_declarations, 13), range(chart_color_1, 3672, 97, 97, 98)).
code(chart_color_1_code95, modifier, chart_color_1_code94, (modifiers, 0), range(chart_color_1, 3703, 6, 98, 98)).
code(chart_color_1_code96, modifier, chart_color_1_code94, (modifiers, 1), range(chart_color_1, 3710, 6, 98, 98)).
code(chart_color_1_code97, modifier, chart_color_1_code94, (modifiers, 2), range(chart_color_1, 3717, 5, 98, 98)).
code(chart_color_1_code98, simple_type, chart_color_1_code94, type, range(chart_color_1, 3723, 5, 98, 98)).
code(chart_color_1_code99, variable_declaration_fragment, chart_color_1_code94, (fragments, 0), range(chart_color_1, 3729, 39, 98, 98)).
code(chart_color_1_code100, simple_type, chart_color_1_expr14, type, range(chart_color_1, 3745, 5, 98, 98)).
code(chart_color_1_code101, field_declaration, chart_color_1_code2, (body_declarations, 14), range(chart_color_1, 3777, 99, 100, 101)).
code(chart_color_1_code102, modifier, chart_color_1_code101, (modifiers, 0), range(chart_color_1, 3809, 6, 101, 101)).
code(chart_color_1_code103, modifier, chart_color_1_code101, (modifiers, 1), range(chart_color_1, 3816, 6, 101, 101)).
code(chart_color_1_code104, modifier, chart_color_1_code101, (modifiers, 2), range(chart_color_1, 3823, 5, 101, 101)).
code(chart_color_1_code105, simple_type, chart_color_1_code101, type, range(chart_color_1, 3829, 5, 101, 101)).
code(chart_color_1_code106, variable_declaration_fragment, chart_color_1_code101, (fragments, 0), range(chart_color_1, 3835, 40, 101, 101)).
code(chart_color_1_code107, simple_type, chart_color_1_expr15, type, range(chart_color_1, 3852, 5, 101, 101)).
code(chart_color_1_code108, field_declaration, chart_color_1_code2, (body_declarations, 15), range(chart_color_1, 3884, 110, 103, 104)).
code(chart_color_1_code109, modifier, chart_color_1_code108, (modifiers, 0), range(chart_color_1, 3922, 6, 104, 104)).
code(chart_color_1_code110, modifier, chart_color_1_code108, (modifiers, 1), range(chart_color_1, 3929, 6, 104, 104)).
code(chart_color_1_code111, modifier, chart_color_1_code108, (modifiers, 2), range(chart_color_1, 3936, 5, 104, 104)).
code(chart_color_1_code112, simple_type, chart_color_1_code108, type, range(chart_color_1, 3942, 5, 104, 104)).
code(chart_color_1_code113, variable_declaration_fragment, chart_color_1_code108, (fragments, 0), range(chart_color_1, 3948, 45, 104, 104)).
code(chart_color_1_code114, simple_type, chart_color_1_expr16, type, range(chart_color_1, 3970, 5, 104, 104)).
code(chart_color_1_code115, field_declaration, chart_color_1_code2, (body_declarations, 16), range(chart_color_1, 4002, 107, 106, 107)).
code(chart_color_1_code116, modifier, chart_color_1_code115, (modifiers, 0), range(chart_color_1, 4038, 6, 107, 107)).
code(chart_color_1_code117, modifier, chart_color_1_code115, (modifiers, 1), range(chart_color_1, 4045, 6, 107, 107)).
code(chart_color_1_code118, modifier, chart_color_1_code115, (modifiers, 2), range(chart_color_1, 4052, 5, 107, 107)).
code(chart_color_1_code119, simple_type, chart_color_1_code115, type, range(chart_color_1, 4058, 5, 107, 107)).
code(chart_color_1_code120, variable_declaration_fragment, chart_color_1_code115, (fragments, 0), range(chart_color_1, 4064, 44, 107, 107)).
code(chart_color_1_code121, simple_type, chart_color_1_expr17, type, range(chart_color_1, 4085, 5, 107, 107)).
code(chart_color_1_code122, field_declaration, chart_color_1_code2, (body_declarations, 17), range(chart_color_1, 4117, 97, 109, 110)).
code(chart_color_1_code123, modifier, chart_color_1_code122, (modifiers, 0), range(chart_color_1, 4148, 6, 110, 110)).
code(chart_color_1_code124, modifier, chart_color_1_code122, (modifiers, 1), range(chart_color_1, 4155, 6, 110, 110)).
code(chart_color_1_code125, modifier, chart_color_1_code122, (modifiers, 2), range(chart_color_1, 4162, 5, 110, 110)).
code(chart_color_1_code126, simple_type, chart_color_1_code122, type, range(chart_color_1, 4168, 5, 110, 110)).
code(chart_color_1_code127, variable_declaration_fragment, chart_color_1_code122, (fragments, 0), range(chart_color_1, 4174, 39, 110, 110)).
code(chart_color_1_code128, simple_type, chart_color_1_expr18, type, range(chart_color_1, 4190, 5, 110, 110)).
code(chart_color_1_code129, field_declaration, chart_color_1_code2, (body_declarations, 18), range(chart_color_1, 4222, 99, 112, 113)).
code(chart_color_1_code130, modifier, chart_color_1_code129, (modifiers, 0), range(chart_color_1, 4254, 6, 113, 113)).
code(chart_color_1_code131, modifier, chart_color_1_code129, (modifiers, 1), range(chart_color_1, 4261, 6, 113, 113)).
code(chart_color_1_code132, modifier, chart_color_1_code129, (modifiers, 2), range(chart_color_1, 4268, 5, 113, 113)).
code(chart_color_1_code133, simple_type, chart_color_1_code129, type, range(chart_color_1, 4274, 5, 113, 113)).
code(chart_color_1_code134, variable_declaration_fragment, chart_color_1_code129, (fragments, 0), range(chart_color_1, 4280, 40, 113, 113)).
code(chart_color_1_code135, simple_type, chart_color_1_expr19, type, range(chart_color_1, 4297, 5, 113, 113)).
code(chart_color_1_code136, field_declaration, chart_color_1_code2, (body_declarations, 19), range(chart_color_1, 4329, 109, 115, 116)).
code(chart_color_1_code137, modifier, chart_color_1_code136, (modifiers, 0), range(chart_color_1, 4366, 6, 116, 116)).
code(chart_color_1_code138, modifier, chart_color_1_code136, (modifiers, 1), range(chart_color_1, 4373, 6, 116, 116)).
code(chart_color_1_code139, modifier, chart_color_1_code136, (modifiers, 2), range(chart_color_1, 4380, 5, 116, 116)).
code(chart_color_1_code140, simple_type, chart_color_1_code136, type, range(chart_color_1, 4386, 5, 116, 116)).
code(chart_color_1_code141, variable_declaration_fragment, chart_color_1_code136, (fragments, 0), range(chart_color_1, 4392, 45, 116, 116)).
code(chart_color_1_code142, simple_type, chart_color_1_expr20, type, range(chart_color_1, 4414, 5, 116, 116)).
code(chart_color_1_code143, field_declaration, chart_color_1_code2, (body_declarations, 20), range(chart_color_1, 4446, 120, 118, 119)).
code(chart_color_1_code144, modifier, chart_color_1_code143, (modifiers, 0), range(chart_color_1, 4492, 6, 119, 119)).
code(chart_color_1_code145, modifier, chart_color_1_code143, (modifiers, 1), range(chart_color_1, 4499, 6, 119, 119)).
code(chart_color_1_code146, modifier, chart_color_1_code143, (modifiers, 2), range(chart_color_1, 4506, 5, 119, 119)).
code(chart_color_1_code147, simple_type, chart_color_1_code143, type, range(chart_color_1, 4512, 5, 119, 119)).
code(chart_color_1_code148, variable_declaration_fragment, chart_color_1_code143, (fragments, 0), range(chart_color_1, 4518, 47, 119, 119)).
code(chart_color_1_code149, simple_type, chart_color_1_expr21, type, range(chart_color_1, 4542, 5, 119, 119)).
code(chart_color_1_code150, field_declaration, chart_color_1_code2, (body_declarations, 21), range(chart_color_1, 4574, 103, 121, 122)).
code(chart_color_1_code151, modifier, chart_color_1_code150, (modifiers, 0), range(chart_color_1, 4608, 6, 122, 122)).
code(chart_color_1_code152, modifier, chart_color_1_code150, (modifiers, 1), range(chart_color_1, 4615, 6, 122, 122)).
code(chart_color_1_code153, modifier, chart_color_1_code150, (modifiers, 2), range(chart_color_1, 4622, 5, 122, 122)).
code(chart_color_1_code154, simple_type, chart_color_1_code150, type, range(chart_color_1, 4628, 5, 122, 122)).
code(chart_color_1_code155, variable_declaration_fragment, chart_color_1_code150, (fragments, 0), range(chart_color_1, 4634, 42, 122, 122)).
code(chart_color_1_code156, simple_type, chart_color_1_expr22, type, range(chart_color_1, 4653, 5, 122, 122)).
code(chart_color_1_code157, field_declaration, chart_color_1_code2, (body_declarations, 22), range(chart_color_1, 4685, 105, 124, 125)).
code(chart_color_1_code158, modifier, chart_color_1_code157, (modifiers, 0), range(chart_color_1, 4720, 6, 125, 125)).
code(chart_color_1_code159, modifier, chart_color_1_code157, (modifiers, 1), range(chart_color_1, 4727, 6, 125, 125)).
code(chart_color_1_code160, modifier, chart_color_1_code157, (modifiers, 2), range(chart_color_1, 4734, 5, 125, 125)).
code(chart_color_1_code161, simple_type, chart_color_1_code157, type, range(chart_color_1, 4740, 5, 125, 125)).
code(chart_color_1_code162, variable_declaration_fragment, chart_color_1_code157, (fragments, 0), range(chart_color_1, 4746, 43, 125, 125)).
code(chart_color_1_code163, simple_type, chart_color_1_expr23, type, range(chart_color_1, 4766, 5, 125, 125)).
code(chart_color_1_code164, field_declaration, chart_color_1_code2, (body_declarations, 23), range(chart_color_1, 4798, 115, 127, 128)).
code(chart_color_1_code165, modifier, chart_color_1_code164, (modifiers, 0), range(chart_color_1, 4838, 6, 128, 128)).
code(chart_color_1_code166, modifier, chart_color_1_code164, (modifiers, 1), range(chart_color_1, 4845, 6, 128, 128)).
code(chart_color_1_code167, modifier, chart_color_1_code164, (modifiers, 2), range(chart_color_1, 4852, 5, 128, 128)).
code(chart_color_1_code168, simple_type, chart_color_1_code164, type, range(chart_color_1, 4858, 5, 128, 128)).
code(chart_color_1_code169, variable_declaration_fragment, chart_color_1_code164, (fragments, 0), range(chart_color_1, 4864, 48, 128, 128)).
code(chart_color_1_code170, simple_type, chart_color_1_expr24, type, range(chart_color_1, 4889, 5, 128, 128)).
code(chart_color_1_code171, method_declaration, chart_color_1_code2, (body_declarations, 25), range(chart_color_1, 5299, 1686, 142, 187)).
code(chart_color_1_code173, simple_type, chart_color_1_code172, element_type, range(chart_color_1, 5665, 5, 151, 151)).
code(chart_color_1_code172, array_type, chart_color_1_expr25, type, range(chart_color_1, 5665, 7, 151, 151)).
code(chart_color_1_code174, dimension, chart_color_1_code172, (dimensions, 0), range(chart_color_1, 5670, 2, 151, 151)).
%default_drawing_supplier_1 - org.jfree.chart.plot.DefaultDrawingSupplier
code(default_drawing_supplier_1_code1, compilation_unit, range(default_drawing_supplier_1, 0, 18192, 1, -1)).
code(default_drawing_supplier_1_code2, type_declaration, default_drawing_supplier_1_code1, (types, 0), range(default_drawing_supplier_1, 2702, 15488, 71, 547)).
code(default_drawing_supplier_1_code3, field_declaration, default_drawing_supplier_1_code2, (body_declarations, 1), range(default_drawing_supplier_1, 3110, 149, 82, 84)).
code(default_drawing_supplier_1_code4, modifier, default_drawing_supplier_1_code3, (modifiers, 0), range(default_drawing_supplier_1, 3155, 6, 83, 83)).
code(default_drawing_supplier_1_code5, modifier, default_drawing_supplier_1_code3, (modifiers, 1), range(default_drawing_supplier_1, 3162, 6, 83, 83)).
code(default_drawing_supplier_1_code6, modifier, default_drawing_supplier_1_code3, (modifiers, 2), range(default_drawing_supplier_1, 3169, 5, 83, 83)).
code(default_drawing_supplier_1_code8, simple_type, default_drawing_supplier_1_code7, element_type, range(default_drawing_supplier_1, 3175, 5, 83, 83)).
code(default_drawing_supplier_1_code7, array_type, default_drawing_supplier_1_code3, type, range(default_drawing_supplier_1, 3175, 7, 83, 83)).
code(default_drawing_supplier_1_code9, dimension, default_drawing_supplier_1_code7, (dimensions, 0), range(default_drawing_supplier_1, 3180, 2, 83, 83)).
code(default_drawing_supplier_1_code10, variable_declaration_fragment, default_drawing_supplier_1_code3, (fragments, 0), range(default_drawing_supplier_1, 3183, 75, 83, 84)).
code(default_drawing_supplier_1_code11, field_declaration, default_drawing_supplier_1_code2, (body_declarations, 2), range(default_drawing_supplier_1, 3267, 153, 86, 88)).
code(default_drawing_supplier_1_code12, modifier, default_drawing_supplier_1_code11, (modifiers, 0), range(default_drawing_supplier_1, 3315, 6, 87, 87)).
code(default_drawing_supplier_1_code13, modifier, default_drawing_supplier_1_code11, (modifiers, 1), range(default_drawing_supplier_1, 3322, 6, 87, 87)).
code(default_drawing_supplier_1_code14, modifier, default_drawing_supplier_1_code11, (modifiers, 2), range(default_drawing_supplier_1, 3329, 5, 87, 87)).
code(default_drawing_supplier_1_code15, array_type, default_drawing_supplier_1_code11, type, range(default_drawing_supplier_1, 3335, 7, 87, 87)).
code(default_drawing_supplier_1_code16, simple_type, default_drawing_supplier_1_code15, element_type, range(default_drawing_supplier_1, 3335, 5, 87, 87)).
code(default_drawing_supplier_1_code17, dimension, default_drawing_supplier_1_code15, (dimensions, 0), range(default_drawing_supplier_1, 3340, 2, 87, 87)).
code(default_drawing_supplier_1_code18, variable_declaration_fragment, default_drawing_supplier_1_code11, (fragments, 0), range(default_drawing_supplier_1, 3343, 76, 87, 88)).
code(default_drawing_supplier_1_code19, array_type, default_drawing_supplier_1_expr2, type, range(default_drawing_supplier_1, 3380, 7, 87, 87)).
code(default_drawing_supplier_1_code20, simple_type, default_drawing_supplier_1_code19, element_type, range(default_drawing_supplier_1, 3380, 5, 87, 87)).
code(default_drawing_supplier_1_code21, dimension, default_drawing_supplier_1_code19, (dimensions, 0), range(default_drawing_supplier_1, 3385, 2, 87, 87)).
code(default_drawing_supplier_1_code22, field_declaration, default_drawing_supplier_1_code2, (body_declarations, 3), range(default_drawing_supplier_1, 3428, 143, 90, 92)).
code(default_drawing_supplier_1_code23, modifier, default_drawing_supplier_1_code22, (modifiers, 0), range(default_drawing_supplier_1, 3473, 6, 91, 91)).
code(default_drawing_supplier_1_code24, modifier, default_drawing_supplier_1_code22, (modifiers, 1), range(default_drawing_supplier_1, 3480, 6, 91, 91)).
code(default_drawing_supplier_1_code25, modifier, default_drawing_supplier_1_code22, (modifiers, 2), range(default_drawing_supplier_1, 3487, 5, 91, 91)).
code(default_drawing_supplier_1_code27, simple_type, default_drawing_supplier_1_code26, element_type, range(default_drawing_supplier_1, 3493, 5, 91, 91)).
code(default_drawing_supplier_1_code26, array_type, default_drawing_supplier_1_code22, type, range(default_drawing_supplier_1, 3493, 7, 91, 91)).
code(default_drawing_supplier_1_code28, dimension, default_drawing_supplier_1_code26, (dimensions, 0), range(default_drawing_supplier_1, 3498, 2, 91, 91)).
code(default_drawing_supplier_1_code29, variable_declaration_fragment, default_drawing_supplier_1_code22, (fragments, 0), range(default_drawing_supplier_1, 3501, 69, 91, 92)).
code(default_drawing_supplier_1_code31, simple_type, default_drawing_supplier_1_code30, element_type, range(default_drawing_supplier_1, 3535, 5, 91, 91)).
code(default_drawing_supplier_1_code30, array_type, default_drawing_supplier_1_expr4, type, range(default_drawing_supplier_1, 3535, 7, 91, 91)).
code(default_drawing_supplier_1_code32, dimension, default_drawing_supplier_1_code30, (dimensions, 0), range(default_drawing_supplier_1, 3540, 2, 91, 91)).
code(default_drawing_supplier_1_code33, field_declaration, default_drawing_supplier_1_code2, (body_declarations, 4), range(default_drawing_supplier_1, 3579, 217, 94, 97)).
code(default_drawing_supplier_1_code34, modifier, default_drawing_supplier_1_code33, (modifiers, 0), range(default_drawing_supplier_1, 3620, 6, 95, 95)).
code(default_drawing_supplier_1_code35, modifier, default_drawing_supplier_1_code33, (modifiers, 1), range(default_drawing_supplier_1, 3627, 6, 95, 95)).
code(default_drawing_supplier_1_code36, modifier, default_drawing_supplier_1_code33, (modifiers, 2), range(default_drawing_supplier_1, 3634, 5, 95, 95)).
code(default_drawing_supplier_1_code38, simple_type, default_drawing_supplier_1_code37, element_type, range(default_drawing_supplier_1, 3640, 6, 95, 95)).
code(default_drawing_supplier_1_code37, array_type, default_drawing_supplier_1_code33, type, range(default_drawing_supplier_1, 3640, 8, 95, 95)).
code(default_drawing_supplier_1_code39, dimension, default_drawing_supplier_1_code37, (dimensions, 0), range(default_drawing_supplier_1, 3646, 2, 95, 95)).
code(default_drawing_supplier_1_code40, variable_declaration_fragment, default_drawing_supplier_1_code33, (fragments, 0), range(default_drawing_supplier_1, 3649, 146, 95, 97)).
code(default_drawing_supplier_1_code42, simple_type, default_drawing_supplier_1_code41, element_type, range(default_drawing_supplier_1, 3679, 6, 95, 95)).
code(default_drawing_supplier_1_code41, array_type, default_drawing_supplier_1_expr6, type, range(default_drawing_supplier_1, 3679, 8, 95, 95)).
code(default_drawing_supplier_1_code43, dimension, default_drawing_supplier_1_code41, (dimensions, 0), range(default_drawing_supplier_1, 3685, 2, 95, 95)).
code(default_drawing_supplier_1_code44, field_declaration, default_drawing_supplier_1_code2, (body_declarations, 5), range(default_drawing_supplier_1, 3804, 233, 99, 102)).
code(default_drawing_supplier_1_code45, modifier, default_drawing_supplier_1_code44, (modifiers, 0), range(default_drawing_supplier_1, 3853, 6, 100, 100)).
code(default_drawing_supplier_1_code46, modifier, default_drawing_supplier_1_code44, (modifiers, 1), range(default_drawing_supplier_1, 3860, 6, 100, 100)).
code(default_drawing_supplier_1_code47, modifier, default_drawing_supplier_1_code44, (modifiers, 2), range(default_drawing_supplier_1, 3867, 5, 100, 100)).
code(default_drawing_supplier_1_code48, array_type, default_drawing_supplier_1_code44, type, range(default_drawing_supplier_1, 3873, 8, 100, 100)).
code(default_drawing_supplier_1_code49, simple_type, default_drawing_supplier_1_code48, element_type, range(default_drawing_supplier_1, 3873, 6, 100, 100)).
code(default_drawing_supplier_1_code50, dimension, default_drawing_supplier_1_code48, (dimensions, 0), range(default_drawing_supplier_1, 3879, 2, 100, 100)).
code(default_drawing_supplier_1_code51, variable_declaration_fragment, default_drawing_supplier_1_code44, (fragments, 0), range(default_drawing_supplier_1, 3882, 154, 100, 102)).
code(default_drawing_supplier_1_code52, field_declaration, default_drawing_supplier_1_code2, (body_declarations, 6), range(default_drawing_supplier_1, 4045, 136, 104, 106)).
code(default_drawing_supplier_1_code53, modifier, default_drawing_supplier_1_code52, (modifiers, 0), range(default_drawing_supplier_1, 4085, 6, 105, 105)).
code(default_drawing_supplier_1_code54, modifier, default_drawing_supplier_1_code52, (modifiers, 1), range(default_drawing_supplier_1, 4092, 6, 105, 105)).
code(default_drawing_supplier_1_code55, modifier, default_drawing_supplier_1_code52, (modifiers, 2), range(default_drawing_supplier_1, 4099, 5, 105, 105)).
code(default_drawing_supplier_1_code56, array_type, default_drawing_supplier_1_code52, type, range(default_drawing_supplier_1, 4105, 7, 105, 105)).
code(default_drawing_supplier_1_code57, simple_type, default_drawing_supplier_1_code56, element_type, range(default_drawing_supplier_1, 4105, 5, 105, 105)).
code(default_drawing_supplier_1_code58, dimension, default_drawing_supplier_1_code56, (dimensions, 0), range(default_drawing_supplier_1, 4110, 2, 105, 105)).
code(default_drawing_supplier_1_code59, variable_declaration_fragment, default_drawing_supplier_1_code52, (fragments, 0), range(default_drawing_supplier_1, 4113, 67, 105, 106)).
code(default_drawing_supplier_1_code60, method_declaration, default_drawing_supplier_1_code2, (body_declarations, 19), range(default_drawing_supplier_1, 5165, 414, 144, 156)).
code(default_drawing_supplier_1_code61, method_declaration, default_drawing_supplier_1_code2, (body_declarations, 21), range(default_drawing_supplier_1, 6577, 981, 182, 205)).
code(default_drawing_supplier_1_code64, simple_type, default_drawing_supplier_1_code63, element_type, range(default_drawing_supplier_1, 7215, 5, 197, 197)).
code(default_drawing_supplier_1_code62, single_variable_declaration, default_drawing_supplier_1_code61, (parameters, 5), range(default_drawing_supplier_1, 7215, 21, 197, 197)).
code(default_drawing_supplier_1_code63, array_type, default_drawing_supplier_1_code62, type, range(default_drawing_supplier_1, 7215, 7, 197, 197)).
code(default_drawing_supplier_1_code65, dimension, default_drawing_supplier_1_code63, (dimensions, 0), range(default_drawing_supplier_1, 7220, 2, 197, 197)).
code(default_drawing_supplier_1_code66, method_declaration, default_drawing_supplier_1_code2, (body_declarations, 28), range(default_drawing_supplier_1, 9545, 1902, 281, 337)).
code(default_drawing_supplier_1_code68, simple_type, default_drawing_supplier_1_code67, element_type, range(default_drawing_supplier_1, 9771, 5, 289, 289)).
code(default_drawing_supplier_1_code67, array_type, default_drawing_supplier_1_stmt8, type, range(default_drawing_supplier_1, 9771, 7, 289, 289)).
code(default_drawing_supplier_1_code69, dimension, default_drawing_supplier_1_code67, (dimensions, 0), range(default_drawing_supplier_1, 9776, 2, 289, 289)).
code(default_drawing_supplier_1_code70, variable_declaration_fragment, default_drawing_supplier_1_stmt8, (fragments, 0), range(default_drawing_supplier_1, 9779, 22, 289, 289)).
code(default_drawing_supplier_1_code71, array_type, default_drawing_supplier_1_expr29, type, range(default_drawing_supplier_1, 9792, 9, 289, 289)).
code(default_drawing_supplier_1_code72, simple_type, default_drawing_supplier_1_code71, element_type, range(default_drawing_supplier_1, 9792, 5, 289, 289)).
code(default_drawing_supplier_1_code73, dimension, default_drawing_supplier_1_code71, (dimensions, 0), range(default_drawing_supplier_1, 9797, 4, 289, 289)).
code(default_drawing_supplier_1_code74, primitive_type, default_drawing_supplier_1_stmt9, type, range(default_drawing_supplier_1, 9814, 6, 291, 291)).
code(default_drawing_supplier_1_code75, variable_declaration_fragment, default_drawing_supplier_1_stmt9, (fragments, 0), range(default_drawing_supplier_1, 9821, 10, 291, 291)).
code(default_drawing_supplier_1_code76, primitive_type, default_drawing_supplier_1_stmt10, type, range(default_drawing_supplier_1, 9842, 6, 292, 292)).
code(default_drawing_supplier_1_code77, variable_declaration_fragment, default_drawing_supplier_1_stmt10, (fragments, 0), range(default_drawing_supplier_1, 9849, 18, 292, 292)).
code(default_drawing_supplier_1_code79, primitive_type, default_drawing_supplier_1_code78, element_type, range(default_drawing_supplier_1, 9878, 3, 293, 293)).
code(default_drawing_supplier_1_code78, array_type, default_drawing_supplier_1_stmt11, type, range(default_drawing_supplier_1, 9878, 5, 293, 293)).
code(default_drawing_supplier_1_code80, dimension, default_drawing_supplier_1_code78, (dimensions, 0), range(default_drawing_supplier_1, 9881, 2, 293, 293)).
code(default_drawing_supplier_1_code81, variable_declaration_fragment, default_drawing_supplier_1_stmt11, (fragments, 0), range(default_drawing_supplier_1, 9884, 14, 293, 293)).
code(default_drawing_supplier_1_code83, primitive_type, default_drawing_supplier_1_code82, element_type, range(default_drawing_supplier_1, 9909, 3, 294, 294)).
code(default_drawing_supplier_1_code82, array_type, default_drawing_supplier_1_stmt12, type, range(default_drawing_supplier_1, 9909, 5, 294, 294)).
code(default_drawing_supplier_1_code84, dimension, default_drawing_supplier_1_code82, (dimensions, 0), range(default_drawing_supplier_1, 9912, 2, 294, 294)).
code(default_drawing_supplier_1_code85, variable_declaration_fragment, default_drawing_supplier_1_stmt12, (fragments, 0), range(default_drawing_supplier_1, 9915, 14, 294, 294)).
code(default_drawing_supplier_1_code86, simple_type, default_drawing_supplier_1_expr33, type, range(default_drawing_supplier_1, 9977, 18, 297, 297)).
code(default_drawing_supplier_1_code87, simple_type, default_drawing_supplier_1_expr38, type, range(default_drawing_supplier_1, 10069, 16, 299, 299)).
code(default_drawing_supplier_1_code88, simple_type, default_drawing_supplier_1_expr49, type, range(default_drawing_supplier_1, 10275, 7, 304, 304)).
code(default_drawing_supplier_1_code89, simple_type, default_drawing_supplier_1_expr58, type, range(default_drawing_supplier_1, 10460, 7, 309, 309)).
code(default_drawing_supplier_1_code90, simple_type, default_drawing_supplier_1_expr61, type, range(default_drawing_supplier_1, 10550, 18, 312, 312)).
code(default_drawing_supplier_1_code91, simple_type, default_drawing_supplier_1_expr76, type, range(default_drawing_supplier_1, 10770, 7, 317, 317)).
code(default_drawing_supplier_1_code92, simple_type, default_drawing_supplier_1_expr79, type, range(default_drawing_supplier_1, 10858, 16, 320, 320)).
code(default_drawing_supplier_1_code93, simple_type, default_drawing_supplier_1_expr93, type, range(default_drawing_supplier_1, 11076, 7, 325, 325)).
code(default_drawing_supplier_1_code94, simple_type, default_drawing_supplier_1_expr96, type, range(default_drawing_supplier_1, 11164, 18, 328, 328)).
code(default_drawing_supplier_1_code95, simple_type, default_drawing_supplier_1_expr110, type, range(default_drawing_supplier_1, 11383, 7, 333, 333)).
code(default_drawing_supplier_1_code96, method_declaration, default_drawing_supplier_1_code2, (body_declarations, 33), range(default_drawing_supplier_1, 16926, 404, 506, 518)).
code(default_drawing_supplier_1_code97, array_type, default_drawing_supplier_1_expr111, type, range(default_drawing_supplier_1, 17289, 5, 517, 517)).
code(default_drawing_supplier_1_code98, primitive_type, default_drawing_supplier_1_code97, element_type, range(default_drawing_supplier_1, 17289, 3, 517, 517)).
code(default_drawing_supplier_1_code99, dimension, default_drawing_supplier_1_code97, (dimensions, 0), range(default_drawing_supplier_1, 17292, 2, 517, 517)).
code(default_drawing_supplier_1_code100, primitive_type, default_drawing_supplier_1_expr113, type, range(default_drawing_supplier_1, 17297, 3, 517, 517)).
code(default_drawing_supplier_1_code101, primitive_type, default_drawing_supplier_1_expr114, type, range(default_drawing_supplier_1, 17306, 3, 517, 517)).
code(default_drawing_supplier_1_code102, primitive_type, default_drawing_supplier_1_expr115, type, range(default_drawing_supplier_1, 17315, 3, 517, 517)).
code(default_drawing_supplier_1_code103, method_declaration, default_drawing_supplier_1_code2, (body_declarations, 34), range(default_drawing_supplier_1, 17338, 443, 520, 533)).
code(default_drawing_supplier_1_code104, array_type, default_drawing_supplier_1_expr116, type, range(default_drawing_supplier_1, 17731, 5, 532, 532)).
code(default_drawing_supplier_1_code105, primitive_type, default_drawing_supplier_1_code104, element_type, range(default_drawing_supplier_1, 17731, 3, 532, 532)).
code(default_drawing_supplier_1_code106, dimension, default_drawing_supplier_1_code104, (dimensions, 0), range(default_drawing_supplier_1, 17734, 2, 532, 532)).
code(default_drawing_supplier_1_code107, primitive_type, default_drawing_supplier_1_expr118, type, range(default_drawing_supplier_1, 17739, 3, 532, 532)).
code(default_drawing_supplier_1_code108, primitive_type, default_drawing_supplier_1_expr119, type, range(default_drawing_supplier_1, 17748, 3, 532, 532)).
code(default_drawing_supplier_1_code109, primitive_type, default_drawing_supplier_1_expr120, type, range(default_drawing_supplier_1, 17757, 3, 532, 532)).
code(default_drawing_supplier_1_code110, primitive_type, default_drawing_supplier_1_expr121, type, range(default_drawing_supplier_1, 17766, 3, 532, 532)).
%unit_type_1 - org.jfree.chart.util.UnitType
code(unit_type_1_code1, compilation_unit, range(unit_type_1, 0, 3598, 1, -1)).
code(unit_type_1_code2, type_declaration, unit_type_1_code1, (types, 0), range(unit_type_1, 1624, 1973, 47, 130)).
code(unit_type_1_code3, field_declaration, unit_type_1_code2, (body_declarations, 1), range(unit_type_1, 1849, 95, 55, 56)).
code(unit_type_1_code4, modifier, unit_type_1_code3, (modifiers, 0), range(unit_type_1, 1870, 6, 56, 56)).
code(unit_type_1_code5, modifier, unit_type_1_code3, (modifiers, 1), range(unit_type_1, 1877, 6, 56, 56)).
code(unit_type_1_code6, modifier, unit_type_1_code3, (modifiers, 2), range(unit_type_1, 1884, 5, 56, 56)).
code(unit_type_1_code7, simple_type, unit_type_1_code3, type, range(unit_type_1, 1890, 8, 56, 56)).
code(unit_type_1_code8, variable_declaration_fragment, unit_type_1_code3, (fragments, 0), range(unit_type_1, 1899, 44, 56, 56)).
code(unit_type_1_code9, simple_type, unit_type_1_expr1, type, range(unit_type_1, 1914, 8, 56, 56)).
code(unit_type_1_code10, field_declaration, unit_type_1_code2, (body_declarations, 2), range(unit_type_1, 1950, 95, 58, 59)).
code(unit_type_1_code11, modifier, unit_type_1_code10, (modifiers, 0), range(unit_type_1, 1971, 6, 59, 59)).
code(unit_type_1_code12, modifier, unit_type_1_code10, (modifiers, 1), range(unit_type_1, 1978, 6, 59, 59)).
code(unit_type_1_code13, modifier, unit_type_1_code10, (modifiers, 2), range(unit_type_1, 1985, 5, 59, 59)).
code(unit_type_1_code14, simple_type, unit_type_1_code10, type, range(unit_type_1, 1991, 8, 59, 59)).
code(unit_type_1_code15, variable_declaration_fragment, unit_type_1_code10, (fragments, 0), range(unit_type_1, 2000, 44, 59, 59)).
code(unit_type_1_code16, simple_type, unit_type_1_expr2, type, range(unit_type_1, 2015, 8, 59, 59)).
code(unit_type_1_code17, method_declaration, unit_type_1_code2, (body_declarations, 4), range(unit_type_1, 2098, 144, 64, 71)).
code(unit_type_1_code18, modifier, unit_type_1_code17, (modifiers, 0), range(unit_type_1, 2179, 7, 69, 69)).
code(unit_type_1_code19, single_variable_declaration, unit_type_1_code17, (parameters, 0), range(unit_type_1, 2196, 11, 69, 69)).
code(unit_type_1_code20, simple_type, unit_type_1_code19, type, range(unit_type_1, 2196, 6, 69, 69)).
%axis_location_1 - org.jfree.chart.axis.AxisLocation
code(axis_location_1_code1, compilation_unit, range(axis_location_1, 0, 6083, 1, -1)).
code(axis_location_1_code2, type_declaration, axis_location_1_code1, (types, 0), range(axis_location_1, 2017, 4064, 51, 185)).
code(axis_location_1_code3, field_declaration, axis_location_1_code2, (body_declarations, 1), range(axis_location_1, 2312, 143, 60, 62)).
code(axis_location_1_code4, modifier, axis_location_1_code3, (modifiers, 0), range(axis_location_1, 2349, 6, 61, 61)).
code(axis_location_1_code5, modifier, axis_location_1_code3, (modifiers, 1), range(axis_location_1, 2356, 6, 61, 61)).
code(axis_location_1_code6, modifier, axis_location_1_code3, (modifiers, 2), range(axis_location_1, 2363, 5, 61, 61)).
code(axis_location_1_code7, simple_type, axis_location_1_code3, type, range(axis_location_1, 2369, 12, 61, 61)).
code(axis_location_1_code8, variable_declaration_fragment, axis_location_1_code3, (fragments, 0), range(axis_location_1, 2382, 72, 61, 62)).
code(axis_location_1_code9, simple_type, axis_location_1_expr1, type, range(axis_location_1, 2400, 12, 61, 61)).
code(axis_location_1_code10, field_declaration, axis_location_1_code2, (body_declarations, 2), range(axis_location_1, 2463, 146, 64, 66)).
code(axis_location_1_code11, modifier, axis_location_1_code10, (modifiers, 0), range(axis_location_1, 2501, 6, 65, 65)).
code(axis_location_1_code12, modifier, axis_location_1_code10, (modifiers, 1), range(axis_location_1, 2508, 6, 65, 65)).
code(axis_location_1_code13, modifier, axis_location_1_code10, (modifiers, 2), range(axis_location_1, 2515, 5, 65, 65)).
code(axis_location_1_code14, simple_type, axis_location_1_code10, type, range(axis_location_1, 2521, 12, 65, 65)).
code(axis_location_1_code15, variable_declaration_fragment, axis_location_1_code10, (fragments, 0), range(axis_location_1, 2534, 74, 65, 66)).
code(axis_location_1_code16, simple_type, axis_location_1_expr2, type, range(axis_location_1, 2553, 12, 65, 65)).
code(axis_location_1_code17, field_declaration, axis_location_1_code2, (body_declarations, 3), range(axis_location_1, 2621, 152, 68, 70)).
code(axis_location_1_code18, modifier, axis_location_1_code17, (modifiers, 0), range(axis_location_1, 2661, 6, 69, 69)).
code(axis_location_1_code19, modifier, axis_location_1_code17, (modifiers, 1), range(axis_location_1, 2668, 6, 69, 69)).
code(axis_location_1_code20, modifier, axis_location_1_code17, (modifiers, 2), range(axis_location_1, 2675, 5, 69, 69)).
code(axis_location_1_code21, simple_type, axis_location_1_code17, type, range(axis_location_1, 2681, 12, 69, 69)).
code(axis_location_1_code22, variable_declaration_fragment, axis_location_1_code17, (fragments, 0), range(axis_location_1, 2694, 78, 69, 70)).
code(axis_location_1_code23, simple_type, axis_location_1_expr3, type, range(axis_location_1, 2715, 12, 69, 69)).
code(axis_location_1_code24, field_declaration, axis_location_1_code2, (body_declarations, 4), range(axis_location_1, 2789, 155, 72, 74)).
code(axis_location_1_code25, modifier, axis_location_1_code24, (modifiers, 0), range(axis_location_1, 2830, 6, 73, 73)).
code(axis_location_1_code26, modifier, axis_location_1_code24, (modifiers, 1), range(axis_location_1, 2837, 6, 73, 73)).
code(axis_location_1_code27, modifier, axis_location_1_code24, (modifiers, 2), range(axis_location_1, 2844, 5, 73, 73)).
code(axis_location_1_code28, simple_type, axis_location_1_code24, type, range(axis_location_1, 2850, 12, 73, 73)).
code(axis_location_1_code29, variable_declaration_fragment, axis_location_1_code24, (fragments, 0), range(axis_location_1, 2863, 80, 73, 74)).
code(axis_location_1_code30, simple_type, axis_location_1_expr4, type, range(axis_location_1, 2885, 12, 73, 73)).
code(axis_location_1_code31, method_declaration, axis_location_1_code2, (body_declarations, 6), range(axis_location_1, 3006, 155, 79, 86)).
code(axis_location_1_code32, modifier, axis_location_1_code31, (modifiers, 0), range(axis_location_1, 3092, 7, 84, 84)).
code(axis_location_1_code34, simple_type, axis_location_1_code33, type, range(axis_location_1, 3113, 6, 84, 84)).
code(axis_location_1_code33, single_variable_declaration, axis_location_1_code31, (parameters, 0), range(axis_location_1, 3113, 11, 84, 84)).
%dataset_rendering_order_1 - org.jfree.chart.plot.DatasetRenderingOrder
code(dataset_rendering_order_1_code1, compilation_unit, range(dataset_rendering_order_1, 0, 4422, 1, -1)).
code(dataset_rendering_order_1_code2, type_declaration, dataset_rendering_order_1_code1, (types, 0), range(dataset_rendering_order_1, 1767, 2653, 48, 141)).
code(dataset_rendering_order_1_code3, field_declaration, dataset_rendering_order_1_code2, (body_declarations, 1), range(dataset_rendering_order_1, 2130, 244, 58, 63)).
code(dataset_rendering_order_1_code4, modifier, dataset_rendering_order_1_code3, (modifiers, 0), range(dataset_rendering_order_1, 2250, 6, 62, 62)).
code(dataset_rendering_order_1_code5, modifier, dataset_rendering_order_1_code3, (modifiers, 1), range(dataset_rendering_order_1, 2257, 6, 62, 62)).
code(dataset_rendering_order_1_code6, modifier, dataset_rendering_order_1_code3, (modifiers, 2), range(dataset_rendering_order_1, 2264, 5, 62, 62)).
code(dataset_rendering_order_1_code7, simple_type, dataset_rendering_order_1_code3, type, range(dataset_rendering_order_1, 2270, 21, 62, 62)).
code(dataset_rendering_order_1_code8, variable_declaration_fragment, dataset_rendering_order_1_code3, (fragments, 0), range(dataset_rendering_order_1, 2292, 81, 62, 63)).
code(dataset_rendering_order_1_code9, field_declaration, dataset_rendering_order_1_code2, (body_declarations, 2), range(dataset_rendering_order_1, 2382, 249, 65, 70)).
code(dataset_rendering_order_1_code10, modifier, dataset_rendering_order_1_code9, (modifiers, 0), range(dataset_rendering_order_1, 2507, 6, 69, 69)).
code(dataset_rendering_order_1_code11, modifier, dataset_rendering_order_1_code9, (modifiers, 1), range(dataset_rendering_order_1, 2514, 6, 69, 69)).
code(dataset_rendering_order_1_code12, modifier, dataset_rendering_order_1_code9, (modifiers, 2), range(dataset_rendering_order_1, 2521, 5, 69, 69)).
code(dataset_rendering_order_1_code13, simple_type, dataset_rendering_order_1_code9, type, range(dataset_rendering_order_1, 2527, 21, 69, 69)).
code(dataset_rendering_order_1_code14, variable_declaration_fragment, dataset_rendering_order_1_code9, (fragments, 0), range(dataset_rendering_order_1, 2549, 81, 69, 70)).
code(dataset_rendering_order_1_code15, method_declaration, dataset_rendering_order_1_code2, (body_declarations, 4), range(dataset_rendering_order_1, 2689, 164, 75, 82)).
code(dataset_rendering_order_1_code16, modifier, dataset_rendering_order_1_code15, (modifiers, 0), range(dataset_rendering_order_1, 2775, 7, 80, 80)).
code(dataset_rendering_order_1_code18, simple_type, dataset_rendering_order_1_code17, type, range(dataset_rendering_order_1, 2805, 6, 80, 80)).
code(dataset_rendering_order_1_code17, single_variable_declaration, dataset_rendering_order_1_code15, (parameters, 0), range(dataset_rendering_order_1, 2805, 11, 80, 80)).
%chart_change_event_type_1 - org.jfree.chart.event.ChartChangeEventType
code(chart_change_event_type_1_code1, compilation_unit, range(chart_change_event_type_1, 0, 4273, 1, -1)).
code(chart_change_event_type_1_code2, type_declaration, chart_change_event_type_1_code1, (types, 0), range(chart_change_event_type_1, 1663, 2608, 46, 138)).
code(chart_change_event_type_1_code3, field_declaration, chart_change_event_type_1_code2, (body_declarations, 1), range(chart_change_event_type_1, 1906, 139, 54, 56)).
code(chart_change_event_type_1_code4, modifier, chart_change_event_type_1_code3, (modifiers, 0), range(chart_change_event_type_1, 1927, 6, 55, 55)).
code(chart_change_event_type_1_code5, modifier, chart_change_event_type_1_code3, (modifiers, 1), range(chart_change_event_type_1, 1934, 6, 55, 55)).
code(chart_change_event_type_1_code6, modifier, chart_change_event_type_1_code3, (modifiers, 2), range(chart_change_event_type_1, 1941, 5, 55, 55)).
code(chart_change_event_type_1_code7, simple_type, chart_change_event_type_1_code3, type, range(chart_change_event_type_1, 1947, 20, 55, 55)).
code(chart_change_event_type_1_code8, variable_declaration_fragment, chart_change_event_type_1_code3, (fragments, 0), range(chart_change_event_type_1, 1968, 76, 55, 56)).
code(chart_change_event_type_1_code9, field_declaration, chart_change_event_type_1_code2, (body_declarations, 2), range(chart_change_event_type_1, 2053, 151, 58, 60)).
code(chart_change_event_type_1_code10, modifier, chart_change_event_type_1_code9, (modifiers, 0), range(chart_change_event_type_1, 2078, 6, 59, 59)).
code(chart_change_event_type_1_code11, modifier, chart_change_event_type_1_code9, (modifiers, 1), range(chart_change_event_type_1, 2085, 6, 59, 59)).
code(chart_change_event_type_1_code12, modifier, chart_change_event_type_1_code9, (modifiers, 2), range(chart_change_event_type_1, 2092, 5, 59, 59)).
code(chart_change_event_type_1_code13, simple_type, chart_change_event_type_1_code9, type, range(chart_change_event_type_1, 2098, 20, 59, 59)).
code(chart_change_event_type_1_code14, variable_declaration_fragment, chart_change_event_type_1_code9, (fragments, 0), range(chart_change_event_type_1, 2119, 84, 59, 60)).
code(chart_change_event_type_1_code15, field_declaration, chart_change_event_type_1_code2, (body_declarations, 3), range(chart_change_event_type_1, 2212, 162, 62, 64)).
code(chart_change_event_type_1_code16, modifier, chart_change_event_type_1_code15, (modifiers, 0), range(chart_change_event_type_1, 2241, 6, 63, 63)).
code(chart_change_event_type_1_code17, modifier, chart_change_event_type_1_code15, (modifiers, 1), range(chart_change_event_type_1, 2248, 6, 63, 63)).
code(chart_change_event_type_1_code18, modifier, chart_change_event_type_1_code15, (modifiers, 2), range(chart_change_event_type_1, 2255, 5, 63, 63)).
code(chart_change_event_type_1_code19, simple_type, chart_change_event_type_1_code15, type, range(chart_change_event_type_1, 2261, 20, 63, 63)).
code(chart_change_event_type_1_code20, variable_declaration_fragment, chart_change_event_type_1_code15, (fragments, 0), range(chart_change_event_type_1, 2282, 91, 63, 64)).
code(chart_change_event_type_1_code21, method_declaration, chart_change_event_type_1_code2, (body_declarations, 5), range(chart_change_event_type_1, 2432, 163, 69, 76)).
code(chart_change_event_type_1_code22, modifier, chart_change_event_type_1_code21, (modifiers, 0), range(chart_change_event_type_1, 2518, 7, 74, 74)).
code(chart_change_event_type_1_code24, simple_type, chart_change_event_type_1_code23, type, range(chart_change_event_type_1, 2547, 6, 74, 74)).
code(chart_change_event_type_1_code23, single_variable_declaration, chart_change_event_type_1_code21, (parameters, 0), range(chart_change_event_type_1, 2547, 11, 74, 74)).
%marker_change_event_1 - org.jfree.chart.event.MarkerChangeEvent
code(marker_change_event_1_code1, compilation_unit, range(marker_change_event_1, 0, 2504, 1, -1)).
code(marker_change_event_1_code2, type_declaration, marker_change_event_1_code1, (types, 0), range(marker_change_event_1, 1619, 883, 45, 80)).
code(marker_change_event_1_code3, method_declaration, marker_change_event_1_code2, (body_declarations, 1), range(marker_change_event_1, 1909, 329, 56, 67)).
%xyplot_1 - org.jfree.chart.plot.XYPlot
code(xyplot_1_code1, compilation_unit, range(xyplot_1, 0, 180380, 1, -1)).
code(xyplot_1_code2, type_declaration, xyplot_1_code1, (types, 0), range(xyplot_1, 13852, 166526, 266, 5063)).
code(xyplot_1_code3, field_declaration, xyplot_1_code2, (body_declarations, 1), range(xyplot_1, 14584, 228, 283, 286)).
code(xyplot_1_code4, modifier, xyplot_1_code3, (modifiers, 0), range(xyplot_1, 14626, 6, 284, 284)).
code(xyplot_1_code5, modifier, xyplot_1_code3, (modifiers, 1), range(xyplot_1, 14633, 6, 284, 284)).
code(xyplot_1_code6, modifier, xyplot_1_code3, (modifiers, 2), range(xyplot_1, 14640, 5, 284, 284)).
code(xyplot_1_code7, simple_type, xyplot_1_code3, type, range(xyplot_1, 14646, 6, 284, 284)).
code(xyplot_1_code8, variable_declaration_fragment, xyplot_1_code3, (fragments, 0), range(xyplot_1, 14653, 158, 284, 286)).
code(xyplot_1_code9, simple_type, xyplot_1_expr1, type, range(xyplot_1, 14683, 11, 284, 284)).
code(xyplot_1_code10, field_declaration, xyplot_1_code2, (body_declarations, 2), range(xyplot_1, 14820, 104, 288, 289)).
code(xyplot_1_code11, modifier, xyplot_1_code10, (modifiers, 0), range(xyplot_1, 14861, 6, 289, 289)).
code(xyplot_1_code12, modifier, xyplot_1_code10, (modifiers, 1), range(xyplot_1, 14868, 6, 289, 289)).
code(xyplot_1_code13, modifier, xyplot_1_code10, (modifiers, 2), range(xyplot_1, 14875, 5, 289, 289)).
code(xyplot_1_code14, simple_type, xyplot_1_code10, type, range(xyplot_1, 14881, 5, 289, 289)).
code(xyplot_1_code15, variable_declaration_fragment, xyplot_1_code10, (fragments, 0), range(xyplot_1, 14887, 36, 289, 289)).
code(xyplot_1_code16, field_declaration, xyplot_1_code2, (body_declarations, 4), range(xyplot_1, 15048, 133, 294, 296)).
code(xyplot_1_code17, modifier, xyplot_1_code16, (modifiers, 0), range(xyplot_1, 15090, 6, 295, 295)).
code(xyplot_1_code18, modifier, xyplot_1_code16, (modifiers, 1), range(xyplot_1, 15097, 6, 295, 295)).
code(xyplot_1_code19, modifier, xyplot_1_code16, (modifiers, 2), range(xyplot_1, 15104, 5, 295, 295)).
code(xyplot_1_code20, simple_type, xyplot_1_code16, type, range(xyplot_1, 15110, 6, 295, 295)).
code(xyplot_1_code21, variable_declaration_fragment, xyplot_1_code16, (fragments, 0), range(xyplot_1, 15117, 63, 295, 296)).
code(xyplot_1_code22, field_declaration, xyplot_1_code2, (body_declarations, 5), range(xyplot_1, 15189, 104, 298, 299)).
code(xyplot_1_code23, modifier, xyplot_1_code22, (modifiers, 0), range(xyplot_1, 15230, 6, 299, 299)).
code(xyplot_1_code24, modifier, xyplot_1_code22, (modifiers, 1), range(xyplot_1, 15237, 6, 299, 299)).
code(xyplot_1_code25, modifier, xyplot_1_code22, (modifiers, 2), range(xyplot_1, 15244, 5, 299, 299)).
code(xyplot_1_code26, simple_type, xyplot_1_code22, type, range(xyplot_1, 15250, 5, 299, 299)).
code(xyplot_1_code27, variable_declaration_fragment, xyplot_1_code22, (fragments, 0), range(xyplot_1, 15256, 36, 299, 299)).
code(xyplot_1_code28, field_declaration, xyplot_1_code2, (body_declarations, 6), range(xyplot_1, 15301, 213, 301, 304)).
code(xyplot_1_code29, modifier, xyplot_1_code28, (modifiers, 0), range(xyplot_1, 15354, 9, 302, 302)).
code(xyplot_1_code30, modifier, xyplot_1_code28, (modifiers, 1), range(xyplot_1, 15364, 6, 302, 302)).
code(xyplot_1_code31, simple_type, xyplot_1_code28, type, range(xyplot_1, 15371, 14, 302, 302)).
code(xyplot_1_code32, variable_declaration_fragment, xyplot_1_code28, (fragments, 0), range(xyplot_1, 15386, 127, 302, 304)).
code(xyplot_1_code33, field_declaration, xyplot_1_code2, (body_declarations, 17), range(xyplot_1, 16709, 131, 344, 345)).
code(xyplot_1_code34, modifier, xyplot_1_code33, (modifiers, 0), range(xyplot_1, 16768, 7, 345, 345)).
code(xyplot_1_code35, modifier, xyplot_1_code33, (modifiers, 1), range(xyplot_1, 16776, 9, 345, 345)).
code(xyplot_1_code36, simple_type, xyplot_1_code33, type, range(xyplot_1, 16786, 7, 345, 345)).
code(xyplot_1_code37, variable_declaration_fragment, xyplot_1_code33, (fragments, 0), range(xyplot_1, 16794, 45, 345, 345)).
code(xyplot_1_code38, simple_type, xyplot_1_expr4, type, range(xyplot_1, 16815, 14, 345, 345)).
code(xyplot_1_code39, field_declaration, xyplot_1_code2, (body_declarations, 18), range(xyplot_1, 16848, 138, 347, 349)).
code(xyplot_1_code40, modifier, xyplot_1_code39, (modifiers, 0), range(xyplot_1, 16894, 7, 348, 348)).
code(xyplot_1_code41, modifier, xyplot_1_code39, (modifiers, 1), range(xyplot_1, 16902, 9, 348, 348)).
code(xyplot_1_code42, array_type, xyplot_1_code39, type, range(xyplot_1, 16912, 7, 348, 348)).
code(xyplot_1_code43, simple_type, xyplot_1_code42, element_type, range(xyplot_1, 16912, 5, 348, 348)).
code(xyplot_1_code44, dimension, xyplot_1_code42, (dimensions, 0), range(xyplot_1, 16917, 2, 348, 348)).
code(xyplot_1_code45, variable_declaration_fragment, xyplot_1_code39, (fragments, 0), range(xyplot_1, 16920, 65, 348, 349)).
code(xyplot_1_code46, field_declaration, xyplot_1_code2, (body_declarations, 35), range(xyplot_1, 19110, 166, 415, 419)).
code(xyplot_1_code47, modifier, xyplot_1_code46, (modifiers, 0), range(xyplot_1, 19225, 7, 419, 419)).
code(xyplot_1_code48, primitive_type, xyplot_1_code46, type, range(xyplot_1, 19233, 7, 419, 419)).
code(xyplot_1_code49, variable_declaration_fragment, xyplot_1_code46, (fragments, 0), range(xyplot_1, 19241, 34, 419, 419)).
code(xyplot_1_code50, field_declaration, xyplot_1_code2, (body_declarations, 40), range(xyplot_1, 19716, 165, 433, 437)).
code(xyplot_1_code51, modifier, xyplot_1_code50, (modifiers, 0), range(xyplot_1, 19831, 7, 437, 437)).
code(xyplot_1_code52, primitive_type, xyplot_1_code50, type, range(xyplot_1, 19839, 7, 437, 437)).
code(xyplot_1_code53, variable_declaration_fragment, xyplot_1_code50, (fragments, 0), range(xyplot_1, 19847, 33, 437, 437)).
code(xyplot_1_code54, field_declaration, xyplot_1_code2, (body_declarations, 50), range(xyplot_1, 21011, 240, 470, 475)).
code(xyplot_1_code55, modifier, xyplot_1_code54, (modifiers, 0), range(xyplot_1, 21154, 7, 474, 474)).
code(xyplot_1_code56, simple_type, xyplot_1_code54, type, range(xyplot_1, 21162, 21, 474, 474)).
code(xyplot_1_code57, variable_declaration_fragment, xyplot_1_code54, (fragments, 0), range(xyplot_1, 21184, 66, 474, 475)).
code(xyplot_1_code58, field_declaration, xyplot_1_code2, (body_declarations, 51), range(xyplot_1, 21259, 235, 477, 482)).
code(xyplot_1_code59, modifier, xyplot_1_code58, (modifiers, 0), range(xyplot_1, 21400, 7, 481, 481)).
code(xyplot_1_code60, simple_type, xyplot_1_code58, type, range(xyplot_1, 21408, 20, 481, 481)).
code(xyplot_1_code61, variable_declaration_fragment, xyplot_1_code58, (fragments, 0), range(xyplot_1, 21429, 64, 481, 482)).
code(xyplot_1_code62, method_declaration, xyplot_1_code2, (body_declarations, 54), range(xyplot_1, 21825, 237, 496, 502)).
code(xyplot_1_code63, method_declaration, xyplot_1_code2, (body_declarations, 55), range(xyplot_1, 22070, 3776, 504, 601)).
code(xyplot_1_code64, simple_type, xyplot_1_expr16, type, range(xyplot_1, 23002, 15, 524, 524)).
code(xyplot_1_code65, simple_type, xyplot_1_expr20, type, range(xyplot_1, 23149, 10, 527, 527)).
code(xyplot_1_code66, simple_type, xyplot_1_expr24, type, range(xyplot_1, 23203, 10, 528, 528)).
code(xyplot_1_code67, simple_type, xyplot_1_expr28, type, range(xyplot_1, 23261, 7, 529, 529)).
code(xyplot_1_code68, simple_type, xyplot_1_expr32, type, range(xyplot_1, 23316, 7, 530, 530)).
code(xyplot_1_code69, simple_type, xyplot_1_expr36, type, range(xyplot_1, 23359, 10, 532, 532)).
code(xyplot_1_code70, simple_type, xyplot_1_expr40, type, range(xyplot_1, 23412, 10, 533, 533)).
code(xyplot_1_code71, simple_type, xyplot_1_expr44, type, range(xyplot_1, 23469, 7, 534, 534)).
code(xyplot_1_code72, simple_type, xyplot_1_expr48, type, range(xyplot_1, 23523, 7, 535, 535)).
code(xyplot_1_code73, simple_type, xyplot_1_expr52, type, range(xyplot_1, 23565, 10, 537, 537)).
code(xyplot_1_code74, simple_type, xyplot_1_expr56, type, range(xyplot_1, 23609, 10, 538, 538)).
code(xyplot_1_code75, simple_type, xyplot_1_expr60, type, range(xyplot_1, 23668, 7, 540, 540)).
code(xyplot_1_code76, simple_type, xyplot_1_expr64, type, range(xyplot_1, 23721, 7, 541, 541)).
code(xyplot_1_code77, simple_type, xyplot_1_expr111, type, range(xyplot_1, 25003, 11, 579, 579)).
code(xyplot_1_code78, simple_type, xyplot_1_expr130, type, range(xyplot_1, 25334, 11, 587, 587)).
code(xyplot_1_code79, simple_type, xyplot_1_expr158, type, range(xyplot_1, 25815, 19, 599, 599)).
code(xyplot_1_code80, method_declaration, xyplot_1_code2, (body_declarations, 73), range(xyplot_1, 33402, 317, 856, 866)).
code(xyplot_1_code81, primitive_type, xyplot_1_expr160, type, range(xyplot_1, 33507, 3, 860, 860)).
code(xyplot_1_code82, variable_declaration_fragment, xyplot_1_expr160, (fragments, 0), range(xyplot_1, 33511, 5, 860, 860)).
code(xyplot_1_code83, simple_type, xyplot_1_stmt54, type, range(xyplot_1, 33566, 9, 861, 861)).
code(xyplot_1_code84, variable_declaration_fragment, xyplot_1_stmt54, (fragments, 0), range(xyplot_1, 33576, 41, 861, 861)).
code(xyplot_1_code85, simple_type, xyplot_1_expr166, type, range(xyplot_1, 33584, 9, 861, 861)).
code(xyplot_1_code86, method_declaration, xyplot_1_code2, (body_declarations, 90), range(xyplot_1, 42382, 357, 1154, 1166)).
code(xyplot_1_code87, primitive_type, xyplot_1_expr171, type, range(xyplot_1, 42529, 3, 1160, 1160)).
code(xyplot_1_code88, variable_declaration_fragment, xyplot_1_expr171, (fragments, 0), range(xyplot_1, 42533, 5, 1160, 1160)).
code(xyplot_1_code89, simple_type, xyplot_1_stmt57, type, range(xyplot_1, 42587, 9, 1161, 1161)).
code(xyplot_1_code90, variable_declaration_fragment, xyplot_1_stmt57, (fragments, 0), range(xyplot_1, 42597, 40, 1161, 1161)).
code(xyplot_1_code91, simple_type, xyplot_1_expr177, type, range(xyplot_1, 42605, 9, 1161, 1161)).
code(xyplot_1_code92, method_declaration, xyplot_1_code2, (body_declarations, 96), range(xyplot_1, 45757, 431, 1263, 1278)).
code(xyplot_1_code93, simple_type, xyplot_1_stmt59, type, range(xyplot_1, 46017, 9, 1273, 1273)).
code(xyplot_1_code94, variable_declaration_fragment, xyplot_1_stmt59, (fragments, 0), range(xyplot_1, 46027, 13, 1273, 1273)).
code(xyplot_1_code95, simple_type, xyplot_1_expr187, type, range(xyplot_1, 46110, 9, 1275, 1275)).
code(xyplot_1_code96, method_declaration, xyplot_1_code2, (body_declarations, 101), range(xyplot_1, 48012, 636, 1344, 1358)).
code(xyplot_1_code97, simple_type, xyplot_1_expr192, type, range(xyplot_1, 48451, 7, 1354, 1354)).
code(xyplot_1_code98, simple_type, xyplot_1_expr197, type, range(xyplot_1, 48596, 18, 1357, 1357)).
code(xyplot_1_code99, method_declaration, xyplot_1_code2, (body_declarations, 102), range(xyplot_1, 48656, 634, 1360, 1374)).
code(xyplot_1_code100, simple_type, xyplot_1_expr201, type, range(xyplot_1, 49093, 7, 1370, 1370)).
code(xyplot_1_code101, simple_type, xyplot_1_expr206, type, range(xyplot_1, 49238, 18, 1373, 1373)).
code(xyplot_1_code102, method_declaration, xyplot_1_code2, (body_declarations, 155), range(xyplot_1, 76385, 438, 2220, 2233)).
code(xyplot_1_code103, method_declaration, xyplot_1_code2, (body_declarations, 156), range(xyplot_1, 76831, 557, 2235, 2249)).
code(xyplot_1_code104, method_declaration, xyplot_1_code2, (body_declarations, 157), range(xyplot_1, 77396, 579, 2251, 2266)).
code(xyplot_1_code105, method_declaration, xyplot_1_code2, (body_declarations, 158), range(xyplot_1, 77983, 1085, 2268, 2298)).
code(xyplot_1_code106, simple_type, xyplot_1_expr214, type, range(xyplot_1, 78673, 9, 2286, 2286)).
code(xyplot_1_code107, simple_type, xyplot_1_expr216, type, range(xyplot_1, 78721, 7, 2286, 2286)).
code(xyplot_1_code108, primitive_type, xyplot_1_stmt72, type, range(xyplot_1, 78918, 7, 2293, 2293)).
code(xyplot_1_code109, variable_declaration_fragment, xyplot_1_stmt72, (fragments, 0), range(xyplot_1, 78926, 32, 2293, 2293)).
code(xyplot_1_code110, method_declaration, xyplot_1_code2, (body_declarations, 165), range(xyplot_1, 84787, 434, 2453, 2466)).
code(xyplot_1_code111, method_declaration, xyplot_1_code2, (body_declarations, 166), range(xyplot_1, 85229, 554, 2468, 2482)).
code(xyplot_1_code112, method_declaration, xyplot_1_code2, (body_declarations, 167), range(xyplot_1, 85791, 577, 2484, 2499)).
code(xyplot_1_code113, method_declaration, xyplot_1_code2, (body_declarations, 168), range(xyplot_1, 86380, 1184, 2501, 2534)).
code(xyplot_1_code114, simple_type, xyplot_1_expr226, type, range(xyplot_1, 87171, 9, 2522, 2522)).
code(xyplot_1_code115, simple_type, xyplot_1_expr228, type, range(xyplot_1, 87218, 7, 2522, 2522)).
code(xyplot_1_code116, primitive_type, xyplot_1_stmt79, type, range(xyplot_1, 87414, 7, 2529, 2529)).
code(xyplot_1_code117, variable_declaration_fragment, xyplot_1_stmt79, (fragments, 0), range(xyplot_1, 87422, 32, 2529, 2529)).
code(xyplot_1_code118, method_declaration, xyplot_1_code2, (body_declarations, 208), range(xyplot_1, 143511, 621, 4025, 4043)).
code(xyplot_1_code119, simple_type, xyplot_1_stmt83, type, range(xyplot_1, 143973, 15, 4039, 4039)).
code(xyplot_1_code120, variable_declaration_fragment, xyplot_1_stmt83, (fragments, 0), range(xyplot_1, 143989, 29, 4039, 4039)).
code(xyplot_1_code121, simple_type, xyplot_1_expr236, type, range(xyplot_1, 143997, 15, 4039, 4039)).
%length_adjustment_type_1 - org.jfree.chart.util.LengthAdjustmentType
code(length_adjustment_type_1_code1, compilation_unit, range(length_adjustment_type_1, 0, 4124, 1, -1)).
code(length_adjustment_type_1_code2, type_declaration, length_adjustment_type_1_code1, (types, 0), range(length_adjustment_type_1, 1661, 2462, 47, 140)).
code(length_adjustment_type_1_code3, field_declaration, length_adjustment_type_1_code2, (body_declarations, 1), range(length_adjustment_type_1, 1940, 126, 56, 58)).
code(length_adjustment_type_1_code4, modifier, length_adjustment_type_1_code3, (modifiers, 0), range(length_adjustment_type_1, 1962, 6, 57, 57)).
code(length_adjustment_type_1_code5, modifier, length_adjustment_type_1_code3, (modifiers, 1), range(length_adjustment_type_1, 1969, 6, 57, 57)).
code(length_adjustment_type_1_code6, modifier, length_adjustment_type_1_code3, (modifiers, 2), range(length_adjustment_type_1, 1976, 5, 57, 57)).
code(length_adjustment_type_1_code7, simple_type, length_adjustment_type_1_code3, type, range(length_adjustment_type_1, 1982, 20, 57, 57)).
code(length_adjustment_type_1_code8, variable_declaration_fragment, length_adjustment_type_1_code3, (fragments, 0), range(length_adjustment_type_1, 2003, 62, 57, 58)).
code(length_adjustment_type_1_code9, field_declaration, length_adjustment_type_1_code2, (body_declarations, 2), range(length_adjustment_type_1, 2072, 117, 60, 62)).
code(length_adjustment_type_1_code10, modifier, length_adjustment_type_1_code9, (modifiers, 0), range(length_adjustment_type_1, 2091, 6, 61, 61)).
code(length_adjustment_type_1_code11, modifier, length_adjustment_type_1_code9, (modifiers, 1), range(length_adjustment_type_1, 2098, 6, 61, 61)).
code(length_adjustment_type_1_code12, modifier, length_adjustment_type_1_code9, (modifiers, 2), range(length_adjustment_type_1, 2105, 5, 61, 61)).
code(length_adjustment_type_1_code13, simple_type, length_adjustment_type_1_code9, type, range(length_adjustment_type_1, 2111, 20, 61, 61)).
code(length_adjustment_type_1_code14, variable_declaration_fragment, length_adjustment_type_1_code9, (fragments, 0), range(length_adjustment_type_1, 2132, 56, 61, 62)).
code(length_adjustment_type_1_code15, field_declaration, length_adjustment_type_1_code2, (body_declarations, 3), range(length_adjustment_type_1, 2195, 123, 64, 66)).
code(length_adjustment_type_1_code16, modifier, length_adjustment_type_1_code15, (modifiers, 0), range(length_adjustment_type_1, 2216, 6, 65, 65)).
code(length_adjustment_type_1_code17, modifier, length_adjustment_type_1_code15, (modifiers, 1), range(length_adjustment_type_1, 2223, 6, 65, 65)).
code(length_adjustment_type_1_code18, modifier, length_adjustment_type_1_code15, (modifiers, 2), range(length_adjustment_type_1, 2230, 5, 65, 65)).
code(length_adjustment_type_1_code19, simple_type, length_adjustment_type_1_code15, type, range(length_adjustment_type_1, 2236, 20, 65, 65)).
code(length_adjustment_type_1_code20, variable_declaration_fragment, length_adjustment_type_1_code15, (fragments, 0), range(length_adjustment_type_1, 2257, 60, 65, 66)).
code(length_adjustment_type_1_code21, method_declaration, length_adjustment_type_1_code2, (body_declarations, 5), range(length_adjustment_type_1, 2371, 156, 71, 78)).
code(length_adjustment_type_1_code22, modifier, length_adjustment_type_1_code21, (modifiers, 0), range(length_adjustment_type_1, 2452, 7, 76, 76)).
code(length_adjustment_type_1_code23, single_variable_declaration, length_adjustment_type_1_code21, (parameters, 0), range(length_adjustment_type_1, 2481, 11, 76, 76)).
code(length_adjustment_type_1_code24, simple_type, length_adjustment_type_1_code23, type, range(length_adjustment_type_1, 2481, 6, 76, 76)).
%category_anchor_1 - org.jfree.chart.axis.CategoryAnchor
code(category_anchor_1_code1, compilation_unit, range(category_anchor_1, 0, 3959, 1, -1)).
code(category_anchor_1_code2, type_declaration, category_anchor_1_code1, (types, 0), range(category_anchor_1, 1642, 2315, 46, 132)).
code(category_anchor_1_code3, field_declaration, category_anchor_1_code2, (body_declarations, 1), range(category_anchor_1, 1959, 125, 55, 57)).
code(category_anchor_1_code4, modifier, category_anchor_1_code3, (modifiers, 0), range(category_anchor_1, 1988, 6, 56, 56)).
code(category_anchor_1_code5, modifier, category_anchor_1_code3, (modifiers, 1), range(category_anchor_1, 1995, 6, 56, 56)).
code(category_anchor_1_code6, modifier, category_anchor_1_code3, (modifiers, 2), range(category_anchor_1, 2002, 5, 56, 56)).
code(category_anchor_1_code7, simple_type, category_anchor_1_code3, type, range(category_anchor_1, 2008, 14, 56, 56)).
code(category_anchor_1_code8, variable_declaration_fragment, category_anchor_1_code3, (fragments, 0), range(category_anchor_1, 2023, 60, 56, 57)).
code(category_anchor_1_code9, field_declaration, category_anchor_1_code2, (body_declarations, 2), range(category_anchor_1, 2092, 128, 59, 61)).
code(category_anchor_1_code10, modifier, category_anchor_1_code9, (modifiers, 0), range(category_anchor_1, 2122, 6, 60, 60)).
code(category_anchor_1_code11, modifier, category_anchor_1_code9, (modifiers, 1), range(category_anchor_1, 2129, 6, 60, 60)).
code(category_anchor_1_code12, modifier, category_anchor_1_code9, (modifiers, 2), range(category_anchor_1, 2136, 5, 60, 60)).
code(category_anchor_1_code13, simple_type, category_anchor_1_code9, type, range(category_anchor_1, 2142, 14, 60, 60)).
code(category_anchor_1_code14, variable_declaration_fragment, category_anchor_1_code9, (fragments, 0), range(category_anchor_1, 2157, 62, 60, 61)).
code(category_anchor_1_code15, field_declaration, category_anchor_1_code2, (body_declarations, 3), range(category_anchor_1, 2228, 119, 63, 65)).
code(category_anchor_1_code16, modifier, category_anchor_1_code15, (modifiers, 0), range(category_anchor_1, 2255, 6, 64, 64)).
code(category_anchor_1_code17, modifier, category_anchor_1_code15, (modifiers, 1), range(category_anchor_1, 2262, 6, 64, 64)).
code(category_anchor_1_code18, modifier, category_anchor_1_code15, (modifiers, 2), range(category_anchor_1, 2269, 5, 64, 64)).
code(category_anchor_1_code19, simple_type, category_anchor_1_code15, type, range(category_anchor_1, 2275, 14, 64, 64)).
code(category_anchor_1_code20, variable_declaration_fragment, category_anchor_1_code15, (fragments, 0), range(category_anchor_1, 2290, 56, 64, 65)).
code(category_anchor_1_code21, method_declaration, category_anchor_1_code2, (body_declarations, 5), range(category_anchor_1, 2405, 157, 70, 77)).
code(category_anchor_1_code22, modifier, category_anchor_1_code21, (modifiers, 0), range(category_anchor_1, 2491, 7, 75, 75)).
code(category_anchor_1_code24, simple_type, category_anchor_1_code23, type, range(category_anchor_1, 2514, 6, 75, 75)).
code(category_anchor_1_code23, single_variable_declaration, category_anchor_1_code21, (parameters, 0), range(category_anchor_1, 2514, 11, 75, 75)).
%series_rendering_order_1 - org.jfree.chart.plot.SeriesRenderingOrder
code(series_rendering_order_1_code1, compilation_unit, range(series_rendering_order_1, 0, 4311, 1, -1)).
code(series_rendering_order_1_code2, type_declaration, series_rendering_order_1_code1, (types, 0), range(series_rendering_order_1, 1755, 2554, 47, 139)).
code(series_rendering_order_1_code3, field_declaration, series_rendering_order_1_code2, (body_declarations, 1), range(series_rendering_order_1, 2060, 234, 56, 61)).
code(series_rendering_order_1_code4, modifier, series_rendering_order_1_code3, (modifiers, 0), range(series_rendering_order_1, 2173, 6, 60, 60)).
code(series_rendering_order_1_code5, modifier, series_rendering_order_1_code3, (modifiers, 1), range(series_rendering_order_1, 2180, 6, 60, 60)).
code(series_rendering_order_1_code6, modifier, series_rendering_order_1_code3, (modifiers, 2), range(series_rendering_order_1, 2187, 5, 60, 60)).
code(series_rendering_order_1_code7, simple_type, series_rendering_order_1_code3, type, range(series_rendering_order_1, 2193, 20, 60, 60)).
code(series_rendering_order_1_code8, variable_declaration_fragment, series_rendering_order_1_code3, (fragments, 0), range(series_rendering_order_1, 2214, 79, 60, 61)).
code(series_rendering_order_1_code9, field_declaration, series_rendering_order_1_code2, (body_declarations, 2), range(series_rendering_order_1, 2302, 239, 63, 68)).
code(series_rendering_order_1_code10, modifier, series_rendering_order_1_code9, (modifiers, 0), range(series_rendering_order_1, 2420, 6, 67, 67)).
code(series_rendering_order_1_code11, modifier, series_rendering_order_1_code9, (modifiers, 1), range(series_rendering_order_1, 2427, 6, 67, 67)).
code(series_rendering_order_1_code12, modifier, series_rendering_order_1_code9, (modifiers, 2), range(series_rendering_order_1, 2434, 5, 67, 67)).
code(series_rendering_order_1_code13, simple_type, series_rendering_order_1_code9, type, range(series_rendering_order_1, 2440, 20, 67, 67)).
code(series_rendering_order_1_code14, variable_declaration_fragment, series_rendering_order_1_code9, (fragments, 0), range(series_rendering_order_1, 2461, 79, 67, 68)).
code(series_rendering_order_1_code15, method_declaration, series_rendering_order_1_code2, (body_declarations, 4), range(series_rendering_order_1, 2599, 163, 73, 80)).
code(series_rendering_order_1_code16, modifier, series_rendering_order_1_code15, (modifiers, 0), range(series_rendering_order_1, 2685, 7, 78, 78)).
code(series_rendering_order_1_code17, single_variable_declaration, series_rendering_order_1_code15, (parameters, 0), range(series_rendering_order_1, 2714, 11, 78, 78)).
code(series_rendering_order_1_code18, simple_type, series_rendering_order_1_code17, type, range(series_rendering_order_1, 2714, 6, 78, 78)).
%layer_1 - org.jfree.chart.util.Layer
code(layer_1_code1, compilation_unit, range(layer_1, 0, 3618, 1, -1)).
code(layer_1_code2, type_declaration, layer_1_code1, (types, 0), range(layer_1, 1615, 2001, 47, 135)).
code(layer_1_code3, field_declaration, layer_1_code2, (body_declarations, 1), range(layer_1, 1849, 92, 55, 56)).
code(layer_1_code4, modifier, layer_1_code3, (modifiers, 0), range(layer_1, 1872, 6, 56, 56)).
code(layer_1_code5, modifier, layer_1_code3, (modifiers, 1), range(layer_1, 1879, 6, 56, 56)).
code(layer_1_code6, modifier, layer_1_code3, (modifiers, 2), range(layer_1, 1886, 5, 56, 56)).
code(layer_1_code7, simple_type, layer_1_code3, type, range(layer_1, 1892, 5, 56, 56)).
code(layer_1_code8, variable_declaration_fragment, layer_1_code3, (fragments, 0), range(layer_1, 1898, 42, 56, 56)).
code(layer_1_code9, simple_type, layer_1_expr1, type, range(layer_1, 1915, 5, 56, 56)).
code(layer_1_code10, field_declaration, layer_1_code2, (body_declarations, 2), range(layer_1, 1947, 92, 58, 59)).
code(layer_1_code11, modifier, layer_1_code10, (modifiers, 0), range(layer_1, 1970, 6, 59, 59)).
code(layer_1_code12, modifier, layer_1_code10, (modifiers, 1), range(layer_1, 1977, 6, 59, 59)).
code(layer_1_code13, modifier, layer_1_code10, (modifiers, 2), range(layer_1, 1984, 5, 59, 59)).
code(layer_1_code14, simple_type, layer_1_code10, type, range(layer_1, 1990, 5, 59, 59)).
code(layer_1_code15, variable_declaration_fragment, layer_1_code10, (fragments, 0), range(layer_1, 1996, 42, 59, 59)).
code(layer_1_code16, simple_type, layer_1_expr2, type, range(layer_1, 2013, 5, 59, 59)).
code(layer_1_code17, method_declaration, layer_1_code2, (body_declarations, 4), range(layer_1, 2092, 141, 64, 71)).
code(layer_1_code18, modifier, layer_1_code17, (modifiers, 0), range(layer_1, 2173, 7, 69, 69)).
code(layer_1_code20, simple_type, layer_1_code19, type, range(layer_1, 2187, 6, 69, 69)).
code(layer_1_code19, single_variable_declaration, layer_1_code17, (parameters, 0), range(layer_1, 2187, 11, 69, 69)).
%plot_change_event_1 - org.jfree.chart.event.PlotChangeEvent
code(plot_change_event_1_code1, compilation_unit, range(plot_change_event_1, 0, 2548, 1, -1)).
code(plot_change_event_1_code2, type_declaration, plot_change_event_1_code1, (types, 0), range(plot_change_event_1, 1859, 687, 48, 77)).
code(plot_change_event_1_code3, method_declaration, plot_change_event_1_code2, (body_declarations, 1), range(plot_change_event_1, 2136, 212, 58, 66)).
%rectangle_insets_1 - org.jfree.chart.util.RectangleInsets
code(rectangle_insets_1_code1, compilation_unit, range(rectangle_insets_1, 0, 17093, 1, -1)).
code(rectangle_insets_1_code2, type_declaration, rectangle_insets_1_code1, (types, 0), range(rectangle_insets_1, 1992, 15100, 53, 554)).
code(rectangle_insets_1_code3, field_declaration, rectangle_insets_1_code2, (body_declarations, 1), range(rectangle_insets_1, 2278, 189, 62, 66)).
code(rectangle_insets_1_code4, modifier, rectangle_insets_1_code3, (modifiers, 0), range(rectangle_insets_1, 2345, 6, 65, 65)).
code(rectangle_insets_1_code5, modifier, rectangle_insets_1_code3, (modifiers, 1), range(rectangle_insets_1, 2352, 6, 65, 65)).
code(rectangle_insets_1_code6, modifier, rectangle_insets_1_code3, (modifiers, 2), range(rectangle_insets_1, 2359, 5, 65, 65)).
code(rectangle_insets_1_code7, simple_type, rectangle_insets_1_code3, type, range(rectangle_insets_1, 2365, 15, 65, 65)).
code(rectangle_insets_1_code8, variable_declaration_fragment, rectangle_insets_1_code3, (fragments, 0), range(rectangle_insets_1, 2381, 85, 65, 66)).
code(rectangle_insets_1_code9, simple_type, rectangle_insets_1_expr1, type, range(rectangle_insets_1, 2399, 15, 65, 65)).
code(rectangle_insets_1_code10, method_declaration, rectangle_insets_1_code2, (body_declarations, 8), range(rectangle_insets_1, 2987, 414, 92, 103)).
code(rectangle_insets_1_code11, method_declaration, rectangle_insets_1_code2, (body_declarations, 9), range(rectangle_insets_1, 3411, 710, 105, 125)).
code(rectangle_insets_1_code13, primitive_type, rectangle_insets_1_code12, type, range(rectangle_insets_1, 3824, 6, 116, 116)).
code(rectangle_insets_1_code12, single_variable_declaration, rectangle_insets_1_code11, (parameters, 3), range(rectangle_insets_1, 3824, 13, 116, 116)).
code(rectangle_insets_1_code14, single_variable_declaration, rectangle_insets_1_code11, (parameters, 4), range(rectangle_insets_1, 3839, 12, 116, 116)).
code(rectangle_insets_1_code15, primitive_type, rectangle_insets_1_code14, type, range(rectangle_insets_1, 3839, 6, 116, 116)).
%abstract_object_list_1 - org.jfree.chart.util.AbstractObjectList
code(abstract_object_list_1_code1, compilation_unit, range(abstract_object_list_1, 0, 8500, 1, -1)).
code(abstract_object_list_1_code2, type_declaration, abstract_object_list_1_code1, (types, 0), range(abstract_object_list_1, 1941, 6558, 53, 294)).
code(abstract_object_list_1_code3, field_declaration, abstract_object_list_1_code2, (body_declarations, 3), range(abstract_object_list_1, 2366, 55, 67, 68)).
code(abstract_object_list_1_code4, modifier, abstract_object_list_1_code3, (modifiers, 0), range(abstract_object_list_1, 2400, 7, 68, 68)).
code(abstract_object_list_1_code5, primitive_type, abstract_object_list_1_code3, type, range(abstract_object_list_1, 2408, 3, 68, 68)).
code(abstract_object_list_1_code6, variable_declaration_fragment, abstract_object_list_1_code3, (fragments, 0), range(abstract_object_list_1, 2412, 8, 68, 68)).
code(abstract_object_list_1_code7, field_declaration, abstract_object_list_1_code2, (body_declarations, 4), range(abstract_object_list_1, 2427, 83, 70, 71)).
code(abstract_object_list_1_code8, modifier, abstract_object_list_1_code7, (modifiers, 0), range(abstract_object_list_1, 2461, 7, 71, 71)).
code(abstract_object_list_1_code9, primitive_type, abstract_object_list_1_code7, type, range(abstract_object_list_1, 2469, 3, 71, 71)).
code(abstract_object_list_1_code10, variable_declaration_fragment, abstract_object_list_1_code7, (fragments, 0), range(abstract_object_list_1, 2473, 36, 71, 71)).
code(abstract_object_list_1_code11, method_declaration, abstract_object_list_1_code2, (body_declarations, 5), range(abstract_object_list_1, 2516, 155, 73, 78)).
code(abstract_object_list_1_code12, method_declaration, abstract_object_list_1_code2, (body_declarations, 6), range(abstract_object_list_1, 2677, 209, 80, 87)).
code(abstract_object_list_1_code13, method_declaration, abstract_object_list_1_code2, (body_declarations, 7), range(abstract_object_list_1, 2892, 304, 89, 98)).
code(abstract_object_list_1_code14, modifier, abstract_object_list_1_code13, (modifiers, 0), range(abstract_object_list_1, 3036, 9, 95, 95)).
code(abstract_object_list_1_code15, single_variable_declaration, abstract_object_list_1_code13, (parameters, 0), range(abstract_object_list_1, 3065, 19, 95, 95)).
code(abstract_object_list_1_code16, primitive_type, abstract_object_list_1_code15, type, range(abstract_object_list_1, 3065, 3, 95, 95)).
code(abstract_object_list_1_code18, primitive_type, abstract_object_list_1_code17, type, range(abstract_object_list_1, 3086, 3, 95, 95)).
code(abstract_object_list_1_code17, single_variable_declaration, abstract_object_list_1_code13, (parameters, 1), range(abstract_object_list_1, 3086, 13, 95, 95)).
code(abstract_object_list_1_code20, simple_type, abstract_object_list_1_code19, element_type, range(abstract_object_list_1, 3130, 6, 96, 96)).
code(abstract_object_list_1_code19, array_type, abstract_object_list_1_expr5, type, range(abstract_object_list_1, 3130, 23, 96, 96)).
code(abstract_object_list_1_code21, dimension, abstract_object_list_1_code19, (dimensions, 0), range(abstract_object_list_1, 3136, 17, 96, 96)).
code(abstract_object_list_1_code22, method_declaration, abstract_object_list_1_code2, (body_declarations, 8), range(abstract_object_list_1, 3202, 405, 100, 114)).
code(abstract_object_list_1_code23, simple_type, abstract_object_list_1_stmt5, type, range(abstract_object_list_1, 3458, 6, 109, 109)).
code(abstract_object_list_1_code24, variable_declaration_fragment, abstract_object_list_1_stmt5, (fragments, 0), range(abstract_object_list_1, 3465, 13, 109, 109)).
code(abstract_object_list_1_code25, method_declaration, abstract_object_list_1_code2, (body_declarations, 9), range(abstract_object_list_1, 3613, 682, 116, 133)).
code(abstract_object_list_1_code26, method_declaration, abstract_object_list_1_code2, (body_declarations, 11), range(abstract_object_list_1, 4438, 148, 143, 150)).

%%% Name References

name_ref(t_align_12, type, 'Align', 'Lorg/jfree/chart/util/Align;').
name_ref(t_axis_location_6, type, 'AxisLocation', 'Lorg/jfree/chart/axis/AxisLocation;').
name_ref(t_category_anchor_7, type, 'CategoryAnchor', 'Lorg/jfree/chart/axis/CategoryAnchor;').
name_ref(t_chart_change_event_type_1, type, 'ChartChangeEventType', 'Lorg/jfree/chart/event/ChartChangeEventType;').
name_ref(t_color_2, type, 'Color', 'Ljava/awt/Color;').
name_ref(t_font_9, type, 'Font', 'Ljava/awt/Font;').
name_ref(t_layer_8, type, 'Layer', 'Lorg/jfree/chart/util/Layer;').
name_ref(t_length_adjustment_type_3, type, 'LengthAdjustmentType', 'Lorg/jfree/chart/util/LengthAdjustmentType;').
name_ref(t_math_13, type, 'Math', 'Ljava/lang/Math;').
name_ref(t_plot_orientation_5, type, 'PlotOrientation', 'Lorg/jfree/chart/plot/PlotOrientation;').
name_ref(t_rectangle_anchor_10, type, 'RectangleAnchor', 'Lorg/jfree/chart/util/RectangleAnchor;').
name_ref(t_sort_order_4, type, 'SortOrder', 'Lorg/jfree/chart/util/SortOrder;').
name_ref(t_text_anchor_11, type, 'TextAnchor', 'Lorg/jfree/chart/text/TextAnchor;').
name_ref(t_unit_type_14, type, 'UnitType', 'Lorg/jfree/chart/util/UnitType;').
name_ref(p_alpha_564, param, 'alpha', 'value_marker_1;alpha_line_95').
name_ref(p_alpha_73, param, 'alpha', 'category_marker_1;alpha_line_107').
name_ref(p_bottom_972, param, 'bottom', 'rectangle_insets_1;bottom_line_102').
name_ref(p_initial_capacity_922, param, 'initialCapacity', 'abstract_object_list_1;initialCapacity_line_86').
name_ref(p_key_63, param, 'key', 'category_marker_1;key_line_80').
name_ref(p_key_65, param, 'key', 'category_marker_1;key_line_91').
name_ref(p_left_971, param, 'left', 'rectangle_insets_1;left_line_102').
name_ref(p_marker_58, param, 'marker', 'marker_change_event_1;marker_line_65').
name_ref(p_name_895, param, 'name', 'category_plot_tests_1;name_line_116').
name_ref(p_name_898, param, 'name', 'xyplot_tests_1;name_line_125').
name_ref(p_outline_paint_562, param, 'outlinePaint', 'value_marker_1;outlinePaint_line_95').
name_ref(p_outline_paint_71, param, 'outlinePaint', 'category_marker_1;outlinePaint_line_107').
name_ref(p_outline_stroke_563, param, 'outlineStroke', 'value_marker_1;outlineStroke_line_95').
name_ref(p_outline_stroke_72, param, 'outlineStroke', 'category_marker_1;outlineStroke_line_107').
name_ref(p_paint_417, param, 'paint', 'marker_1;paint_line_153').
name_ref(p_paint_560, param, 'paint', 'value_marker_1;paint_line_95').
name_ref(p_paint_66, param, 'paint', 'category_marker_1;paint_line_91').
name_ref(p_paint_69, param, 'paint', 'category_marker_1;paint_line_107').
name_ref(p_plot_60, param, 'plot', 'plot_change_event_1;plot_line_64').
name_ref(p_right_973, param, 'right', 'rectangle_insets_1;right_line_102').
name_ref(p_source_42, param, 'source', 'chart_change_event_1;source_line_69').
name_ref(p_source_46, param, 'source', 'chart_change_event_1;source_line_93').
name_ref(p_stroke_561, param, 'stroke', 'value_marker_1;stroke_line_95').
name_ref(p_stroke_67, param, 'stroke', 'category_marker_1;stroke_line_91').
name_ref(p_stroke_70, param, 'stroke', 'category_marker_1;stroke_line_107').
name_ref(p_top_970, param, 'top', 'rectangle_insets_1;top_line_102').
name_ref(f_absolute_974, field, 'ABSOLUTE', 'rectangle_insets_1;ABSOLUTE_line_102').
name_ref(f_default_fill_paint_sequence_378, field, 'DEFAULT_FILL_PAINT_SEQUENCE', 'default_drawing_supplier_1;DEFAULT_FILL_PAINT_SEQUENCE_line_150').
name_ref(f_default_initial_capacity_921, field, 'DEFAULT_INITIAL_CAPACITY', 'abstract_object_list_1;DEFAULT_INITIAL_CAPACITY_line_77').
name_ref(f_default_paint_sequence_376, field, 'DEFAULT_PAINT_SEQUENCE', 'default_drawing_supplier_1;DEFAULT_PAINT_SEQUENCE_line_150').
name_ref(f_general_43, field, 'GENERAL', 'chart_change_event_1;GENERAL_line_69').
name_ref(f_gray_64, field, 'gray', 'category_marker_1;gray_line_80').
name_ref(v_axis_146, var, 'axis', 'Lorg/jfree/chart/plot/CategoryPlot;.configureDomainAxes()V#0#0#axis').
name_ref(v_axis_169, var, 'axis', 'Lorg/jfree/chart/plot/CategoryPlot;.configureRangeAxes()V#0#0#axis').
name_ref(v_axis_632, var, 'axis', 'Lorg/jfree/chart/plot/XYPlot;.configureDomainAxes()V#0#0#axis').
name_ref(v_axis_652, var, 'axis', 'Lorg/jfree/chart/plot/XYPlot;.configureRangeAxes()V#0#0#axis').
name_ref(v_axis_index_210, var, 'axisIndex', 'Lorg/jfree/chart/plot/CategoryPlot;.datasetChanged(Lorg/jfree/data/general/DatasetChangeEvent;)V#0#axisIndex').
name_ref(v_baseline_116, var, 'baseline', 'Lorg/jfree/chart/plot/CategoryPlot;.(Lorg/jfree/data/category/CategoryDataset;Lorg/jfree/chart/axis/CategoryAxis;Lorg/jfree/chart/axis/ValueAxis;Lorg/jfree/chart/renderer/category/CategoryItemRenderer;)V#baseline').
name_ref(v_count_209, var, 'count', 'Lorg/jfree/chart/plot/CategoryPlot;.datasetChanged(Lorg/jfree/data/general/DatasetChangeEvent;)V#count').
name_ref(v_delta_401, var, 'delta', 'Lorg/jfree/chart/plot/DefaultDrawingSupplier;.createStandardSeriesShapes()[Ljava/awt/Shape;#delta').
name_ref(v_e_212, var, 'e', 'Lorg/jfree/chart/plot/CategoryPlot;.datasetChanged(Lorg/jfree/data/general/DatasetChangeEvent;)V#1#e').
name_ref(v_e_847, var, 'e', 'Lorg/jfree/chart/plot/XYPlot;.datasetChanged(Lorg/jfree/data/general/DatasetChangeEvent;)V#0#e').
name_ref(v_i_145, var, 'i', 'Lorg/jfree/chart/plot/CategoryPlot;.configureDomainAxes()V#0#i').
name_ref(v_i_168, var, 'i', 'Lorg/jfree/chart/plot/CategoryPlot;.configureRangeAxes()V#0#i').
name_ref(v_i_451, var, 'i', 'Lorg/jfree/chart/plot/Marker;.notifyListeners(Lorg/jfree/chart/event/MarkerChangeEvent;)V#0#i').
name_ref(v_i_503, var, 'i', 'Lorg/jfree/chart/plot/Plot;.notifyListeners(Lorg/jfree/chart/event/PlotChangeEvent;)V#0#i').
name_ref(v_i_631, var, 'i', 'Lorg/jfree/chart/plot/XYPlot;.configureDomainAxes()V#0#i').
name_ref(v_i_651, var, 'i', 'Lorg/jfree/chart/plot/XYPlot;.configureRangeAxes()V#0#i').
name_ref(v_listeners_450, var, 'listeners', 'Lorg/jfree/chart/plot/Marker;.notifyListeners(Lorg/jfree/chart/event/MarkerChangeEvent;)V#listeners').
name_ref(v_listeners_502, var, 'listeners', 'Lorg/jfree/chart/plot/Plot;.notifyListeners(Lorg/jfree/chart/event/PlotChangeEvent;)V#listeners').
name_ref(v_markers_238, var, 'markers', 'Lorg/jfree/chart/plot/CategoryPlot;.removeDomainMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;Z)Z#markers').
name_ref(v_markers_250, var, 'markers', 'Lorg/jfree/chart/plot/CategoryPlot;.addRangeMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;Z)V#markers').
name_ref(v_markers_265, var, 'markers', 'Lorg/jfree/chart/plot/CategoryPlot;.removeRangeMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;Z)Z#markers').
name_ref(v_markers_722, var, 'markers', 'Lorg/jfree/chart/plot/XYPlot;.removeDomainMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;Z)Z#markers').
name_ref(v_markers_745, var, 'markers', 'Lorg/jfree/chart/plot/XYPlot;.removeRangeMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;Z)Z#markers').
name_ref(v_parent_149, var, 'parent', 'Lorg/jfree/chart/plot/CategoryPlot;.getRangeAxis(I)Lorg/jfree/chart/axis/ValueAxis;#0#parent').
name_ref(v_plot_896, var, 'plot', 'Lorg/jfree/chart/plot/junit/CategoryPlotTests;.testRemoveDomainMarker()V#plot').
name_ref(v_plot_897, var, 'plot', 'Lorg/jfree/chart/plot/junit/CategoryPlotTests;.testRemoveRangeMarker()V#plot').
name_ref(v_plot_899, var, 'plot', 'Lorg/jfree/chart/plot/junit/XYPlotTests;.testRemoveDomainMarker()V#plot').
name_ref(v_plot_900, var, 'plot', 'Lorg/jfree/chart/plot/junit/XYPlotTests;.testRemoveRangeMarker()V#plot').
name_ref(v_removed_239, var, 'removed', 'Lorg/jfree/chart/plot/CategoryPlot;.removeDomainMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;Z)Z#removed').
name_ref(v_removed_266, var, 'removed', 'Lorg/jfree/chart/plot/CategoryPlot;.removeRangeMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;Z)Z#removed').
name_ref(v_removed_723, var, 'removed', 'Lorg/jfree/chart/plot/XYPlot;.removeDomainMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;Z)Z#removed').
name_ref(v_removed_746, var, 'removed', 'Lorg/jfree/chart/plot/XYPlot;.removeRangeMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;Z)Z#removed').
name_ref(v_result_148, var, 'result', 'Lorg/jfree/chart/plot/CategoryPlot;.getRangeAxis(I)Lorg/jfree/chart/axis/ValueAxis;#result').
name_ref(v_result_171, var, 'result', 'Lorg/jfree/chart/plot/CategoryPlot;.getDataset(I)Lorg/jfree/data/category/CategoryDataset;#result').
name_ref(v_result_399, var, 'result', 'Lorg/jfree/chart/plot/DefaultDrawingSupplier;.createStandardSeriesShapes()[Ljava/awt/Shape;#result').
name_ref(v_result_661, var, 'result', 'Lorg/jfree/chart/plot/XYPlot;.getDataset(I)Lorg/jfree/data/xy/XYDataset;#result').
name_ref(v_result_927, var, 'result', 'Lorg/jfree/chart/util/AbstractObjectList;.get(I)Ljava/lang/Object;#result').
name_ref(v_size_400, var, 'size', 'Lorg/jfree/chart/plot/DefaultDrawingSupplier;.createStandardSeriesShapes()[Ljava/awt/Shape;#size').
name_ref(v_xpoints_402, var, 'xpoints', 'Lorg/jfree/chart/plot/DefaultDrawingSupplier;.createStandardSeriesShapes()[Ljava/awt/Shape;#xpoints').
name_ref(v_y_axis_211, var, 'yAxis', 'Lorg/jfree/chart/plot/CategoryPlot;.datasetChanged(Lorg/jfree/data/general/DatasetChangeEvent;)V#0#0#yAxis').
name_ref(v_ypoints_403, var, 'ypoints', 'Lorg/jfree/chart/plot/DefaultDrawingSupplier;.createStandardSeriesShapes()[Ljava/awt/Shape;#ypoints').
name_ref(p_a_409, param, 'a', 'Lorg/jfree/chart/plot/DefaultDrawingSupplier;.intArray(DDD)[I#a#0#0').
name_ref(p_a_412, param, 'a', 'Lorg/jfree/chart/plot/DefaultDrawingSupplier;.intArray(DDDD)[I#a#0#0').
name_ref(p_adj_445, param, 'adj', 'Lorg/jfree/chart/plot/Marker;.setLabelOffsetType(Lorg/jfree/chart/util/LengthAdjustmentType;)V#adj#0#0').
name_ref(p_alignment_493, param, 'alignment', 'Lorg/jfree/chart/plot/Plot;.setBackgroundImageAlignment(I)V#alignment#0#0').
name_ref(p_alpha_422, param, 'alpha', 'Lorg/jfree/chart/plot/Marker;.(Ljava/awt/Paint;Ljava/awt/Stroke;Ljava/awt/Paint;Ljava/awt/Stroke;F)V#alpha#0#4').
name_ref(p_alpha_439, param, 'alpha', 'Lorg/jfree/chart/plot/Marker;.setAlpha(F)V#alpha#0#0').
name_ref(p_alpha_490, param, 'alpha', 'Lorg/jfree/chart/plot/Plot;.setBackgroundAlpha(F)V#alpha#0#0').
name_ref(p_alpha_494, param, 'alpha', 'Lorg/jfree/chart/plot/Plot;.setBackgroundImageAlpha(F)V#alpha#0#0').
name_ref(p_alpha_498, param, 'alpha', 'Lorg/jfree/chart/plot/Plot;.setForegroundAlpha(F)V#alpha#0#0').
name_ref(p_alpha_564, param, 'alpha', 'Lorg/jfree/chart/plot/ValueMarker;.(DLjava/awt/Paint;Ljava/awt/Stroke;Ljava/awt/Paint;Ljava/awt/Stroke;F)V#alpha#0#5').
name_ref(p_alpha_73, param, 'alpha', 'Lorg/jfree/chart/plot/CategoryMarker;.(Ljava/lang/Comparable;Ljava/awt/Paint;Ljava/awt/Stroke;Ljava/awt/Paint;Ljava/awt/Stroke;F)V#alpha#0#5').
name_ref(p_anchor_290, param, 'anchor', 'Lorg/jfree/chart/plot/CategoryPlot;.draw(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Point2D;Lorg/jfree/chart/plot/PlotState;Lorg/jfree/chart/plot/PlotRenderingInfo;)V#anchor#0#2').
name_ref(p_anchor_443, param, 'anchor', 'Lorg/jfree/chart/plot/Marker;.setLabelAnchor(Lorg/jfree/chart/util/RectangleAnchor;)V#anchor#0#0').
name_ref(p_anchor_446, param, 'anchor', 'Lorg/jfree/chart/plot/Marker;.setLabelTextAnchor(Lorg/jfree/chart/text/TextAnchor;)V#anchor#0#0').
name_ref(p_anchor_506, param, 'anchor', 'Lorg/jfree/chart/plot/Plot;.draw(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Point2D;Lorg/jfree/chart/plot/PlotState;Lorg/jfree/chart/plot/PlotRenderingInfo;)V#anchor#0#2').
name_ref(p_anchor_763, param, 'anchor', 'Lorg/jfree/chart/plot/XYPlot;.draw(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Point2D;Lorg/jfree/chart/plot/PlotState;Lorg/jfree/chart/plot/PlotRenderingInfo;)V#anchor#0#2').
name_ref(p_anchor_964, param, 'anchor', 'Lorg/jfree/chart/util/RectangleAnchor;.coordinates(Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/util/RectangleAnchor;)Ljava/awt/geom/Point2D;#anchor#0#1').
name_ref(p_anchor_968, param, 'anchor', 'Lorg/jfree/chart/util/RectangleAnchor;.createRectangle(Lorg/jfree/chart/util/Size2D;DDLorg/jfree/chart/util/RectangleAnchor;)Ljava/awt/geom/Rectangle2D;#anchor#0#3').
name_ref(p_anchor_x_966, param, 'anchorX', 'Lorg/jfree/chart/util/RectangleAnchor;.createRectangle(Lorg/jfree/chart/util/Size2D;DDLorg/jfree/chart/util/RectangleAnchor;)Ljava/awt/geom/Rectangle2D;#anchorX#0#1').
name_ref(p_anchor_y_967, param, 'anchorY', 'Lorg/jfree/chart/util/RectangleAnchor;.createRectangle(Lorg/jfree/chart/util/Size2D;DDLorg/jfree/chart/util/RectangleAnchor;)Ljava/awt/geom/Rectangle2D;#anchorY#0#2').
name_ref(p_annotation_274, param, 'annotation', 'Lorg/jfree/chart/plot/CategoryPlot;.addAnnotation(Lorg/jfree/chart/annotations/CategoryAnnotation;)V#annotation#0#0').
name_ref(p_annotation_275, param, 'annotation', 'Lorg/jfree/chart/plot/CategoryPlot;.addAnnotation(Lorg/jfree/chart/annotations/CategoryAnnotation;Z)V#annotation#0#0').
name_ref(p_annotation_277, param, 'annotation', 'Lorg/jfree/chart/plot/CategoryPlot;.removeAnnotation(Lorg/jfree/chart/annotations/CategoryAnnotation;)Z#annotation#0#0').
name_ref(p_annotation_278, param, 'annotation', 'Lorg/jfree/chart/plot/CategoryPlot;.removeAnnotation(Lorg/jfree/chart/annotations/CategoryAnnotation;Z)Z#annotation#0#0').
name_ref(p_annotation_747, param, 'annotation', 'Lorg/jfree/chart/plot/XYPlot;.addAnnotation(Lorg/jfree/chart/annotations/XYAnnotation;)V#annotation#0#0').
name_ref(p_annotation_748, param, 'annotation', 'Lorg/jfree/chart/plot/XYPlot;.addAnnotation(Lorg/jfree/chart/annotations/XYAnnotation;Z)V#annotation#0#0').
name_ref(p_annotation_750, param, 'annotation', 'Lorg/jfree/chart/plot/XYPlot;.removeAnnotation(Lorg/jfree/chart/annotations/XYAnnotation;)Z#annotation#0#0').
name_ref(p_annotation_751, param, 'annotation', 'Lorg/jfree/chart/plot/XYPlot;.removeAnnotation(Lorg/jfree/chart/annotations/XYAnnotation;Z)Z#annotation#0#0').
name_ref(p_area_1009, param, 'area', 'Lorg/jfree/chart/util/RectangleInsets;.trim(Ljava/awt/geom/Rectangle2D;)V#area#0#0').
name_ref(p_area_289, param, 'area', 'Lorg/jfree/chart/plot/CategoryPlot;.draw(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Point2D;Lorg/jfree/chart/plot/PlotState;Lorg/jfree/chart/plot/PlotRenderingInfo;)V#area#0#1').
name_ref(p_area_294, param, 'area', 'Lorg/jfree/chart/plot/CategoryPlot;.drawBackground(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V#area#0#1').
name_ref(p_area_505, param, 'area', 'Lorg/jfree/chart/plot/Plot;.draw(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Point2D;Lorg/jfree/chart/plot/PlotState;Lorg/jfree/chart/plot/PlotRenderingInfo;)V#area#0#1').
name_ref(p_area_510, param, 'area', 'Lorg/jfree/chart/plot/Plot;.drawBackground(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V#area#0#1').
name_ref(p_area_512, param, 'area', 'Lorg/jfree/chart/plot/Plot;.fillBackground(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V#area#0#1').
name_ref(p_area_514, param, 'area', 'Lorg/jfree/chart/plot/Plot;.fillBackground(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/plot/PlotOrientation;)V#area#0#1').
name_ref(p_area_517, param, 'area', 'Lorg/jfree/chart/plot/Plot;.drawBackgroundImage(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V#area#0#1').
name_ref(p_area_519, param, 'area', 'Lorg/jfree/chart/plot/Plot;.drawOutline(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V#area#0#1').
name_ref(p_area_521, param, 'area', 'Lorg/jfree/chart/plot/Plot;.drawNoDataMessage(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V#area#0#1').
name_ref(p_area_762, param, 'area', 'Lorg/jfree/chart/plot/XYPlot;.draw(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Point2D;Lorg/jfree/chart/plot/PlotState;Lorg/jfree/chart/plot/PlotRenderingInfo;)V#area#0#1').
name_ref(p_area_767, param, 'area', 'Lorg/jfree/chart/plot/XYPlot;.drawBackground(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V#area#0#1').
name_ref(p_area_769, param, 'area', 'Lorg/jfree/chart/plot/XYPlot;.drawQuadrants(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V#area#0#1').
name_ref(p_area_791, param, 'area', 'Lorg/jfree/chart/plot/XYPlot;.drawRangeGridlines(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/util/List;)V#area#0#1').
name_ref(p_area_794, param, 'area', 'Lorg/jfree/chart/plot/XYPlot;.drawZeroDomainBaseline(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V#area#0#1').
name_ref(p_area_796, param, 'area', 'Lorg/jfree/chart/plot/XYPlot;.drawZeroRangeBaseline(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V#area#0#1').
name_ref(p_axes_133, param, 'axes', 'Lorg/jfree/chart/plot/CategoryPlot;.setDomainAxes([Lorg/jfree/chart/axis/CategoryAxis;)V#axes#0#0').
name_ref(p_axes_156, param, 'axes', 'Lorg/jfree/chart/plot/CategoryPlot;.setRangeAxes([Lorg/jfree/chart/axis/ValueAxis;)V#axes#0#0').
name_ref(p_axes_627, param, 'axes', 'Lorg/jfree/chart/plot/XYPlot;.setDomainAxes([Lorg/jfree/chart/axis/ValueAxis;)V#axes#0#0').
name_ref(p_axes_650, param, 'axes', 'Lorg/jfree/chart/plot/XYPlot;.setRangeAxes([Lorg/jfree/chart/axis/ValueAxis;)V#axes#0#0').
name_ref(p_axis_127, param, 'axis', 'Lorg/jfree/chart/plot/CategoryPlot;.setDomainAxis(Lorg/jfree/chart/axis/CategoryAxis;)V#axis#0#0').
name_ref(p_axis_129, param, 'axis', 'Lorg/jfree/chart/plot/CategoryPlot;.setDomainAxis(ILorg/jfree/chart/axis/CategoryAxis;)V#axis#0#1').
name_ref(p_axis_131, param, 'axis', 'Lorg/jfree/chart/plot/CategoryPlot;.setDomainAxis(ILorg/jfree/chart/axis/CategoryAxis;Z)V#axis#0#1').
name_ref(p_axis_134, param, 'axis', 'Lorg/jfree/chart/plot/CategoryPlot;.getDomainAxisIndex(Lorg/jfree/chart/axis/CategoryAxis;)I#axis#0#0').
name_ref(p_axis_150, param, 'axis', 'Lorg/jfree/chart/plot/CategoryPlot;.setRangeAxis(Lorg/jfree/chart/axis/ValueAxis;)V#axis#0#0').
name_ref(p_axis_152, param, 'axis', 'Lorg/jfree/chart/plot/CategoryPlot;.setRangeAxis(ILorg/jfree/chart/axis/ValueAxis;)V#axis#0#1').
name_ref(p_axis_154, param, 'axis', 'Lorg/jfree/chart/plot/CategoryPlot;.setRangeAxis(ILorg/jfree/chart/axis/ValueAxis;Z)V#axis#0#1').
name_ref(p_axis_157, param, 'axis', 'Lorg/jfree/chart/plot/CategoryPlot;.getRangeAxisIndex(Lorg/jfree/chart/axis/ValueAxis;)I#axis#0#0').
name_ref(p_axis_328, param, 'axis', 'Lorg/jfree/chart/plot/CategoryPlot;.drawRangeCrosshair(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/plot/PlotOrientation;DLorg/jfree/chart/axis/ValueAxis;Ljava/awt/Stroke;Ljava/awt/Paint;)V#axis#0#4').
name_ref(p_axis_331, param, 'axis', 'Lorg/jfree/chart/plot/CategoryPlot;.getDataRange(Lorg/jfree/chart/axis/ValueAxis;)Lorg/jfree/data/Range;#axis#0#0').
name_ref(p_axis_341, param, 'axis', 'Lorg/jfree/chart/plot/CategoryPlot;.getCategoriesForAxis(Lorg/jfree/chart/axis/CategoryAxis;)Ljava/util/List;#axis#0#0').
name_ref(p_axis_621, param, 'axis', 'Lorg/jfree/chart/plot/XYPlot;.setDomainAxis(Lorg/jfree/chart/axis/ValueAxis;)V#axis#0#0').
name_ref(p_axis_623, param, 'axis', 'Lorg/jfree/chart/plot/XYPlot;.setDomainAxis(ILorg/jfree/chart/axis/ValueAxis;)V#axis#0#1').
name_ref(p_axis_625, param, 'axis', 'Lorg/jfree/chart/plot/XYPlot;.setDomainAxis(ILorg/jfree/chart/axis/ValueAxis;Z)V#axis#0#1').
name_ref(p_axis_640, param, 'axis', 'Lorg/jfree/chart/plot/XYPlot;.setRangeAxis(Lorg/jfree/chart/axis/ValueAxis;)V#axis#0#0').
name_ref(p_axis_646, param, 'axis', 'Lorg/jfree/chart/plot/XYPlot;.setRangeAxis(ILorg/jfree/chart/axis/ValueAxis;)V#axis#0#1').
name_ref(p_axis_648, param, 'axis', 'Lorg/jfree/chart/plot/XYPlot;.setRangeAxis(ILorg/jfree/chart/axis/ValueAxis;Z)V#axis#0#1').
name_ref(p_axis_823, param, 'axis', 'Lorg/jfree/chart/plot/XYPlot;.drawDomainCrosshair(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/plot/PlotOrientation;DLorg/jfree/chart/axis/ValueAxis;Ljava/awt/Stroke;Ljava/awt/Paint;)V#axis#0#4').
name_ref(p_axis_835, param, 'axis', 'Lorg/jfree/chart/plot/XYPlot;.drawRangeCrosshair(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/plot/PlotOrientation;DLorg/jfree/chart/axis/ValueAxis;Ljava/awt/Stroke;Ljava/awt/Paint;)V#axis#0#4').
name_ref(p_axis_843, param, 'axis', 'Lorg/jfree/chart/plot/XYPlot;.getDomainAxisIndex(Lorg/jfree/chart/axis/ValueAxis;)I#axis#0#0').
name_ref(p_axis_844, param, 'axis', 'Lorg/jfree/chart/plot/XYPlot;.getRangeAxisIndex(Lorg/jfree/chart/axis/ValueAxis;)I#axis#0#0').
name_ref(p_axis_845, param, 'axis', 'Lorg/jfree/chart/plot/XYPlot;.getDataRange(Lorg/jfree/chart/axis/ValueAxis;)Lorg/jfree/data/Range;#axis#0#0').
name_ref(p_axis_index_176, param, 'axisIndex', 'Lorg/jfree/chart/plot/CategoryPlot;.mapDatasetToDomainAxis(II)V#axisIndex#0#1').
name_ref(p_axis_index_179, param, 'axisIndex', 'Lorg/jfree/chart/plot/CategoryPlot;.mapDatasetToRangeAxis(II)V#axisIndex#0#1').
name_ref(p_axis_index_332, param, 'axisIndex', 'Lorg/jfree/chart/plot/CategoryPlot;.datasetsMappedToDomainAxis(I)Ljava/util/List;#axisIndex#0#0').
name_ref(p_axis_index_667, param, 'axisIndex', 'Lorg/jfree/chart/plot/XYPlot;.mapDatasetToDomainAxis(II)V#axisIndex#0#1').
name_ref(p_axis_index_669, param, 'axisIndex', 'Lorg/jfree/chart/plot/XYPlot;.mapDatasetToRangeAxis(II)V#axisIndex#0#1').
name_ref(p_axis_index_841, param, 'axisIndex', 'Lorg/jfree/chart/plot/XYPlot;.getDatasetsMappedToDomainAxis(Ljava/lang/Integer;)Ljava/util/List;#axisIndex#0#0').
name_ref(p_axis_index_842, param, 'axisIndex', 'Lorg/jfree/chart/plot/XYPlot;.getDatasetsMappedToRangeAxis(Ljava/lang/Integer;)Ljava/util/List;#axisIndex#0#0').
name_ref(p_b_27, param, 'b', 'Lorg/jfree/chart/ChartColor;.(III)V#b#0#2').
name_ref(p_b_410, param, 'b', 'Lorg/jfree/chart/plot/DefaultDrawingSupplier;.intArray(DDD)[I#b#0#1').
name_ref(p_b_413, param, 'b', 'Lorg/jfree/chart/plot/DefaultDrawingSupplier;.intArray(DDDD)[I#b#0#1').
name_ref(p_base_986, param, 'base', 'Lorg/jfree/chart/util/RectangleInsets;.createAdjustedRectangle(Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/util/LengthAdjustmentType;Lorg/jfree/chart/util/LengthAdjustmentType;)Ljava/awt/geom/Rectangle2D;#base#0#0').
name_ref(p_base_989, param, 'base', 'Lorg/jfree/chart/util/RectangleInsets;.createInsetRectangle(Ljava/awt/geom/Rectangle2D;)Ljava/awt/geom/Rectangle2D;#base#0#0').
name_ref(p_base_990, param, 'base', 'Lorg/jfree/chart/util/RectangleInsets;.createInsetRectangle(Ljava/awt/geom/Rectangle2D;ZZ)Ljava/awt/geom/Rectangle2D;#base#0#0').
name_ref(p_base_993, param, 'base', 'Lorg/jfree/chart/util/RectangleInsets;.createOutsetRectangle(Ljava/awt/geom/Rectangle2D;)Ljava/awt/geom/Rectangle2D;#base#0#0').
name_ref(p_base_994, param, 'base', 'Lorg/jfree/chart/util/RectangleInsets;.createOutsetRectangle(Ljava/awt/geom/Rectangle2D;ZZ)Ljava/awt/geom/Rectangle2D;#base#0#0').
name_ref(p_bottom_972, param, 'bottom', 'Lorg/jfree/chart/util/RectangleInsets;.(DDDD)V#bottom#0#2').
name_ref(p_bottom_978, param, 'bottom', 'Lorg/jfree/chart/util/RectangleInsets;.(Lorg/jfree/chart/util/UnitType;DDDD)V#bottom#0#3').
name_ref(p_c_411, param, 'c', 'Lorg/jfree/chart/plot/DefaultDrawingSupplier;.intArray(DDD)[I#c#0#2').
name_ref(p_c_414, param, 'c', 'Lorg/jfree/chart/plot/DefaultDrawingSupplier;.intArray(DDDD)[I#c#0#2').
name_ref(p_chart_45, param, 'chart', 'Lorg/jfree/chart/event/ChartChangeEvent;.(Ljava/lang/Object;Lorg/jfree/chart/JFreeChart;)V#chart#0#1').
name_ref(p_chart_47, param, 'chart', 'Lorg/jfree/chart/event/ChartChangeEvent;.(Ljava/lang/Object;Lorg/jfree/chart/JFreeChart;Lorg/jfree/chart/event/ChartChangeEventType;)V#chart#0#1').
name_ref(p_chart_51, param, 'chart', 'Lorg/jfree/chart/event/ChartChangeEvent;.setChart(Lorg/jfree/chart/JFreeChart;)V#chart#0#0').
name_ref(p_crosshair_state_784, param, 'crosshairState', 'Lorg/jfree/chart/plot/XYPlot;.render(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;ILorg/jfree/chart/plot/PlotRenderingInfo;Lorg/jfree/chart/plot/CrosshairState;)Z#crosshairState#0#4').
name_ref(p_d_415, param, 'd', 'Lorg/jfree/chart/plot/DefaultDrawingSupplier;.intArray(DDDD)[I#d#0#3').
name_ref(p_data_area_297, param, 'dataArea', 'Lorg/jfree/chart/plot/CategoryPlot;.drawAxes(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/plot/PlotRenderingInfo;)Ljava/util/Map;#dataArea#0#2').
name_ref(p_data_area_300, param, 'dataArea', 'Lorg/jfree/chart/plot/CategoryPlot;.render(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;ILorg/jfree/chart/plot/PlotRenderingInfo;)Z#dataArea#0#1').
name_ref(p_data_area_304, param, 'dataArea', 'Lorg/jfree/chart/plot/CategoryPlot;.drawDomainGridlines(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V#dataArea#0#1').
name_ref(p_data_area_306, param, 'dataArea', 'Lorg/jfree/chart/plot/CategoryPlot;.drawRangeGridlines(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/util/List;)V#dataArea#0#1').
name_ref(p_data_area_309, param, 'dataArea', 'Lorg/jfree/chart/plot/CategoryPlot;.drawAnnotations(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/plot/PlotRenderingInfo;)V#dataArea#0#1').
name_ref(p_data_area_312, param, 'dataArea', 'Lorg/jfree/chart/plot/CategoryPlot;.drawDomainMarkers(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;ILorg/jfree/chart/util/Layer;)V#dataArea#0#1').
name_ref(p_data_area_316, param, 'dataArea', 'Lorg/jfree/chart/plot/CategoryPlot;.drawRangeMarkers(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;ILorg/jfree/chart/util/Layer;)V#dataArea#0#1').
name_ref(p_data_area_320, param, 'dataArea', 'Lorg/jfree/chart/plot/CategoryPlot;.drawRangeLine(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;DLjava/awt/Stroke;Ljava/awt/Paint;)V#dataArea#0#1').
name_ref(p_data_area_325, param, 'dataArea', 'Lorg/jfree/chart/plot/CategoryPlot;.drawRangeCrosshair(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/plot/PlotOrientation;DLorg/jfree/chart/axis/ValueAxis;Ljava/awt/Stroke;Ljava/awt/Paint;)V#dataArea#0#1').
name_ref(p_data_area_771, param, 'dataArea', 'Lorg/jfree/chart/plot/XYPlot;.drawDomainTickBands(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/util/List;)V#dataArea#0#1').
name_ref(p_data_area_774, param, 'dataArea', 'Lorg/jfree/chart/plot/XYPlot;.drawRangeTickBands(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/util/List;)V#dataArea#0#1').
name_ref(p_data_area_778, param, 'dataArea', 'Lorg/jfree/chart/plot/XYPlot;.drawAxes(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/plot/PlotRenderingInfo;)Ljava/util/Map;#dataArea#0#2').
name_ref(p_data_area_781, param, 'dataArea', 'Lorg/jfree/chart/plot/XYPlot;.render(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;ILorg/jfree/chart/plot/PlotRenderingInfo;Lorg/jfree/chart/plot/CrosshairState;)Z#dataArea#0#1').
name_ref(p_data_area_788, param, 'dataArea', 'Lorg/jfree/chart/plot/XYPlot;.drawDomainGridlines(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/util/List;)V#dataArea#0#1').
name_ref(p_data_area_798, param, 'dataArea', 'Lorg/jfree/chart/plot/XYPlot;.drawAnnotations(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/plot/PlotRenderingInfo;)V#dataArea#0#1').
name_ref(p_data_area_801, param, 'dataArea', 'Lorg/jfree/chart/plot/XYPlot;.drawDomainMarkers(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;ILorg/jfree/chart/util/Layer;)V#dataArea#0#1').
name_ref(p_data_area_805, param, 'dataArea', 'Lorg/jfree/chart/plot/XYPlot;.drawRangeMarkers(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;ILorg/jfree/chart/util/Layer;)V#dataArea#0#1').
name_ref(p_data_area_815, param, 'dataArea', 'Lorg/jfree/chart/plot/XYPlot;.drawHorizontalLine(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;DLjava/awt/Stroke;Ljava/awt/Paint;)V#dataArea#0#1').
name_ref(p_data_area_820, param, 'dataArea', 'Lorg/jfree/chart/plot/XYPlot;.drawDomainCrosshair(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/plot/PlotOrientation;DLorg/jfree/chart/axis/ValueAxis;Ljava/awt/Stroke;Ljava/awt/Paint;)V#dataArea#0#1').
name_ref(p_data_area_827, param, 'dataArea', 'Lorg/jfree/chart/plot/XYPlot;.drawVerticalLine(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;DLjava/awt/Stroke;Ljava/awt/Paint;)V#dataArea#0#1').
name_ref(p_data_area_832, param, 'dataArea', 'Lorg/jfree/chart/plot/XYPlot;.drawRangeCrosshair(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/plot/PlotOrientation;DLorg/jfree/chart/axis/ValueAxis;Ljava/awt/Stroke;Ljava/awt/Paint;)V#dataArea#0#1').
name_ref(p_dataset_172, param, 'dataset', 'Lorg/jfree/chart/plot/CategoryPlot;.setDataset(Lorg/jfree/data/category/CategoryDataset;)V#dataset#0#0').
name_ref(p_dataset_174, param, 'dataset', 'Lorg/jfree/chart/plot/CategoryPlot;.setDataset(ILorg/jfree/data/category/CategoryDataset;)V#dataset#0#1').
name_ref(p_dataset_191, param, 'dataset', 'Lorg/jfree/chart/plot/CategoryPlot;.getRendererForDataset(Lorg/jfree/data/category/CategoryDataset;)Lorg/jfree/chart/renderer/category/CategoryItemRenderer;#dataset#0#0').
name_ref(p_dataset_578, param, 'dataset', 'Lorg/jfree/chart/plot/XYPlot;.(Lorg/jfree/data/xy/XYDataset;Lorg/jfree/chart/axis/ValueAxis;Lorg/jfree/chart/axis/ValueAxis;Lorg/jfree/chart/renderer/xy/XYItemRenderer;)V#dataset#0#0').
name_ref(p_dataset_662, param, 'dataset', 'Lorg/jfree/chart/plot/XYPlot;.setDataset(Lorg/jfree/data/xy/XYDataset;)V#dataset#0#0').
name_ref(p_dataset_664, param, 'dataset', 'Lorg/jfree/chart/plot/XYPlot;.setDataset(ILorg/jfree/data/xy/XYDataset;)V#dataset#0#1').
name_ref(p_dataset_665, param, 'dataset', 'Lorg/jfree/chart/plot/XYPlot;.indexOf(Lorg/jfree/data/xy/XYDataset;)I#dataset#0#0').
name_ref(p_dataset_681, param, 'dataset', 'Lorg/jfree/chart/plot/XYPlot;.getRendererForDataset(Lorg/jfree/data/xy/XYDataset;)Lorg/jfree/chart/renderer/xy/XYItemRenderer;#dataset#0#0').
name_ref(p_dataset_88, param, 'dataset', 'Lorg/jfree/chart/plot/CategoryPlot;.(Lorg/jfree/data/category/CategoryDataset;Lorg/jfree/chart/axis/CategoryAxis;Lorg/jfree/chart/axis/ValueAxis;Lorg/jfree/chart/renderer/category/CategoryItemRenderer;)V#dataset#0#0').
name_ref(p_dimensions_965, param, 'dimensions', 'Lorg/jfree/chart/util/RectangleAnchor;.createRectangle(Lorg/jfree/chart/util/Size2D;DDLorg/jfree/chart/util/RectangleAnchor;)Ljava/awt/geom/Rectangle2D;#dimensions#0#0').
name_ref(p_domain_axis_579, param, 'domainAxis', 'Lorg/jfree/chart/plot/XYPlot;.(Lorg/jfree/data/xy/XYDataset;Lorg/jfree/chart/axis/ValueAxis;Lorg/jfree/chart/axis/ValueAxis;Lorg/jfree/chart/renderer/xy/XYItemRenderer;)V#domainAxis#0#1').
name_ref(p_domain_axis_89, param, 'domainAxis', 'Lorg/jfree/chart/plot/CategoryPlot;.(Lorg/jfree/data/category/CategoryDataset;Lorg/jfree/chart/axis/CategoryAxis;Lorg/jfree/chart/axis/ValueAxis;Lorg/jfree/chart/renderer/category/CategoryItemRenderer;)V#domainAxis#0#1').
name_ref(p_draw_342, param, 'draw', 'Lorg/jfree/chart/plot/CategoryPlot;.setDrawSharedDomainAxis(Z)V#draw#0#0').
name_ref(p_draw_as_line_76, param, 'drawAsLine', 'Lorg/jfree/chart/plot/CategoryMarker;.setDrawAsLine(Z)V#drawAsLine#0#0').
name_ref(p_edge_532, param, 'edge', 'Lorg/jfree/chart/plot/Plot;.getRectX(DDDLorg/jfree/chart/util/RectangleEdge;)D#edge#0#3').
name_ref(p_edge_536, param, 'edge', 'Lorg/jfree/chart/plot/Plot;.getRectY(DDDLorg/jfree/chart/util/RectangleEdge;)D#edge#0#3').
name_ref(p_event_208, param, 'event', 'Lorg/jfree/chart/plot/CategoryPlot;.datasetChanged(Lorg/jfree/data/general/DatasetChangeEvent;)V#event#0#0').
name_ref(p_event_213, param, 'event', 'Lorg/jfree/chart/plot/CategoryPlot;.rendererChanged(Lorg/jfree/chart/event/RendererChangeEvent;)V#event#0#0').
name_ref(p_event_449, param, 'event', 'Lorg/jfree/chart/plot/Marker;.notifyListeners(Lorg/jfree/chart/event/MarkerChangeEvent;)V#event#0#0').
name_ref(p_event_501, param, 'event', 'Lorg/jfree/chart/plot/Plot;.notifyListeners(Lorg/jfree/chart/event/PlotChangeEvent;)V#event#0#0').
name_ref(p_event_526, param, 'event', 'Lorg/jfree/chart/plot/Plot;.axisChanged(Lorg/jfree/chart/event/AxisChangeEvent;)V#event#0#0').
name_ref(p_event_527, param, 'event', 'Lorg/jfree/chart/plot/Plot;.datasetChanged(Lorg/jfree/data/general/DatasetChangeEvent;)V#event#0#0').
name_ref(p_event_528, param, 'event', 'Lorg/jfree/chart/plot/Plot;.markerChanged(Lorg/jfree/chart/event/MarkerChangeEvent;)V#event#0#0').
name_ref(p_event_846, param, 'event', 'Lorg/jfree/chart/plot/XYPlot;.datasetChanged(Lorg/jfree/data/general/DatasetChangeEvent;)V#event#0#0').
name_ref(p_event_848, param, 'event', 'Lorg/jfree/chart/plot/XYPlot;.rendererChanged(Lorg/jfree/chart/event/RendererChangeEvent;)V#event#0#0').
name_ref(p_factor_343, param, 'factor', 'Lorg/jfree/chart/plot/CategoryPlot;.zoomDomainAxes(DLorg/jfree/chart/plot/PlotRenderingInfo;Ljava/awt/geom/Point2D;)V#factor#0#0').
name_ref(p_factor_350, param, 'factor', 'Lorg/jfree/chart/plot/CategoryPlot;.zoomDomainAxes(DLorg/jfree/chart/plot/PlotRenderingInfo;Ljava/awt/geom/Point2D;Z)V#factor#0#0').
name_ref(p_factor_354, param, 'factor', 'Lorg/jfree/chart/plot/CategoryPlot;.zoomRangeAxes(DLorg/jfree/chart/plot/PlotRenderingInfo;Ljava/awt/geom/Point2D;)V#factor#0#0').
name_ref(p_factor_357, param, 'factor', 'Lorg/jfree/chart/plot/CategoryPlot;.zoomRangeAxes(DLorg/jfree/chart/plot/PlotRenderingInfo;Ljava/awt/geom/Point2D;Z)V#factor#0#0').
name_ref(p_factor_869, param, 'factor', 'Lorg/jfree/chart/plot/XYPlot;.zoomDomainAxes(DLorg/jfree/chart/plot/PlotRenderingInfo;Ljava/awt/geom/Point2D;)V#factor#0#0').
name_ref(p_factor_872, param, 'factor', 'Lorg/jfree/chart/plot/XYPlot;.zoomDomainAxes(DLorg/jfree/chart/plot/PlotRenderingInfo;Ljava/awt/geom/Point2D;Z)V#factor#0#0').
name_ref(p_factor_880, param, 'factor', 'Lorg/jfree/chart/plot/XYPlot;.zoomRangeAxes(DLorg/jfree/chart/plot/PlotRenderingInfo;Ljava/awt/geom/Point2D;)V#factor#0#0').
name_ref(p_factor_883, param, 'factor', 'Lorg/jfree/chart/plot/XYPlot;.zoomRangeAxes(DLorg/jfree/chart/plot/PlotRenderingInfo;Ljava/awt/geom/Point2D;Z)V#factor#0#0').
name_ref(p_fill_paint_sequence_388, param, 'fillPaintSequence', 'Lorg/jfree/chart/plot/DefaultDrawingSupplier;.([Ljava/awt/Paint;[Ljava/awt/Paint;[Ljava/awt/Paint;[Ljava/awt/Stroke;[Ljava/awt/Stroke;[Ljava/awt/Shape;)V#fillPaintSequence#0#1').
name_ref(p_flag_267, param, 'flag', 'Lorg/jfree/chart/plot/CategoryPlot;.setRangeCrosshairVisible(Z)V#flag#0#0').
name_ref(p_flag_268, param, 'flag', 'Lorg/jfree/chart/plot/CategoryPlot;.setRangeCrosshairLockedOnData(Z)V#flag#0#0').
name_ref(p_flag_849, param, 'flag', 'Lorg/jfree/chart/plot/XYPlot;.setDomainCrosshairVisible(Z)V#flag#0#0').
name_ref(p_flag_850, param, 'flag', 'Lorg/jfree/chart/plot/XYPlot;.setDomainCrosshairLockedOnData(Z)V#flag#0#0').
name_ref(p_flag_856, param, 'flag', 'Lorg/jfree/chart/plot/XYPlot;.setRangeCrosshairVisible(Z)V#flag#0#0').
name_ref(p_flag_857, param, 'flag', 'Lorg/jfree/chart/plot/XYPlot;.setRangeCrosshairLockedOnData(Z)V#flag#0#0').
name_ref(p_font_441, param, 'font', 'Lorg/jfree/chart/plot/Marker;.setLabelFont(Ljava/awt/Font;)V#font#0#0').
name_ref(p_font_483, param, 'font', 'Lorg/jfree/chart/plot/Plot;.setNoDataMessageFont(Ljava/awt/Font;)V#font#0#0').
name_ref(p_g_26, param, 'g', 'Lorg/jfree/chart/ChartColor;.(III)V#g#0#1').
name_ref(p_g_2_280, param, 'g2', 'Lorg/jfree/chart/plot/CategoryPlot;.calculateDomainAxisSpace(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/axis/AxisSpace;)Lorg/jfree/chart/axis/AxisSpace;#g2#0#0').
name_ref(p_g_2_283, param, 'g2', 'Lorg/jfree/chart/plot/CategoryPlot;.calculateRangeAxisSpace(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/axis/AxisSpace;)Lorg/jfree/chart/axis/AxisSpace;#g2#0#0').
name_ref(p_g_2_286, param, 'g2', 'Lorg/jfree/chart/plot/CategoryPlot;.calculateAxisSpace(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)Lorg/jfree/chart/axis/AxisSpace;#g2#0#0').
name_ref(p_g_2_288, param, 'g2', 'Lorg/jfree/chart/plot/CategoryPlot;.draw(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Point2D;Lorg/jfree/chart/plot/PlotState;Lorg/jfree/chart/plot/PlotRenderingInfo;)V#g2#0#0').
name_ref(p_g_2_293, param, 'g2', 'Lorg/jfree/chart/plot/CategoryPlot;.drawBackground(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V#g2#0#0').
name_ref(p_g_2_295, param, 'g2', 'Lorg/jfree/chart/plot/CategoryPlot;.drawAxes(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/plot/PlotRenderingInfo;)Ljava/util/Map;#g2#0#0').
name_ref(p_g_2_299, param, 'g2', 'Lorg/jfree/chart/plot/CategoryPlot;.render(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;ILorg/jfree/chart/plot/PlotRenderingInfo;)Z#g2#0#0').
name_ref(p_g_2_303, param, 'g2', 'Lorg/jfree/chart/plot/CategoryPlot;.drawDomainGridlines(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V#g2#0#0').
name_ref(p_g_2_305, param, 'g2', 'Lorg/jfree/chart/plot/CategoryPlot;.drawRangeGridlines(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/util/List;)V#g2#0#0').
name_ref(p_g_2_308, param, 'g2', 'Lorg/jfree/chart/plot/CategoryPlot;.drawAnnotations(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/plot/PlotRenderingInfo;)V#g2#0#0').
name_ref(p_g_2_311, param, 'g2', 'Lorg/jfree/chart/plot/CategoryPlot;.drawDomainMarkers(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;ILorg/jfree/chart/util/Layer;)V#g2#0#0').
name_ref(p_g_2_315, param, 'g2', 'Lorg/jfree/chart/plot/CategoryPlot;.drawRangeMarkers(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;ILorg/jfree/chart/util/Layer;)V#g2#0#0').
name_ref(p_g_2_319, param, 'g2', 'Lorg/jfree/chart/plot/CategoryPlot;.drawRangeLine(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;DLjava/awt/Stroke;Ljava/awt/Paint;)V#g2#0#0').
name_ref(p_g_2_324, param, 'g2', 'Lorg/jfree/chart/plot/CategoryPlot;.drawRangeCrosshair(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/plot/PlotOrientation;DLorg/jfree/chart/axis/ValueAxis;Ljava/awt/Stroke;Ljava/awt/Paint;)V#g2#0#0').
name_ref(p_g_2_504, param, 'g2', 'Lorg/jfree/chart/plot/Plot;.draw(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Point2D;Lorg/jfree/chart/plot/PlotState;Lorg/jfree/chart/plot/PlotRenderingInfo;)V#g2#0#0').
name_ref(p_g_2_509, param, 'g2', 'Lorg/jfree/chart/plot/Plot;.drawBackground(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V#g2#0#0').
name_ref(p_g_2_511, param, 'g2', 'Lorg/jfree/chart/plot/Plot;.fillBackground(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V#g2#0#0').
name_ref(p_g_2_513, param, 'g2', 'Lorg/jfree/chart/plot/Plot;.fillBackground(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/plot/PlotOrientation;)V#g2#0#0').
name_ref(p_g_2_516, param, 'g2', 'Lorg/jfree/chart/plot/Plot;.drawBackgroundImage(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V#g2#0#0').
name_ref(p_g_2_518, param, 'g2', 'Lorg/jfree/chart/plot/Plot;.drawOutline(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V#g2#0#0').
name_ref(p_g_2_520, param, 'g2', 'Lorg/jfree/chart/plot/Plot;.drawNoDataMessage(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V#g2#0#0').
name_ref(p_g_2_753, param, 'g2', 'Lorg/jfree/chart/plot/XYPlot;.calculateAxisSpace(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)Lorg/jfree/chart/axis/AxisSpace;#g2#0#0').
name_ref(p_g_2_755, param, 'g2', 'Lorg/jfree/chart/plot/XYPlot;.calculateDomainAxisSpace(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/axis/AxisSpace;)Lorg/jfree/chart/axis/AxisSpace;#g2#0#0').
name_ref(p_g_2_758, param, 'g2', 'Lorg/jfree/chart/plot/XYPlot;.calculateRangeAxisSpace(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/axis/AxisSpace;)Lorg/jfree/chart/axis/AxisSpace;#g2#0#0').
name_ref(p_g_2_761, param, 'g2', 'Lorg/jfree/chart/plot/XYPlot;.draw(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Point2D;Lorg/jfree/chart/plot/PlotState;Lorg/jfree/chart/plot/PlotRenderingInfo;)V#g2#0#0').
name_ref(p_g_2_766, param, 'g2', 'Lorg/jfree/chart/plot/XYPlot;.drawBackground(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V#g2#0#0').
name_ref(p_g_2_768, param, 'g2', 'Lorg/jfree/chart/plot/XYPlot;.drawQuadrants(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V#g2#0#0').
name_ref(p_g_2_770, param, 'g2', 'Lorg/jfree/chart/plot/XYPlot;.drawDomainTickBands(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/util/List;)V#g2#0#0').
name_ref(p_g_2_773, param, 'g2', 'Lorg/jfree/chart/plot/XYPlot;.drawRangeTickBands(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/util/List;)V#g2#0#0').
name_ref(p_g_2_776, param, 'g2', 'Lorg/jfree/chart/plot/XYPlot;.drawAxes(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/plot/PlotRenderingInfo;)Ljava/util/Map;#g2#0#0').
name_ref(p_g_2_780, param, 'g2', 'Lorg/jfree/chart/plot/XYPlot;.render(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;ILorg/jfree/chart/plot/PlotRenderingInfo;Lorg/jfree/chart/plot/CrosshairState;)Z#g2#0#0').
name_ref(p_g_2_787, param, 'g2', 'Lorg/jfree/chart/plot/XYPlot;.drawDomainGridlines(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/util/List;)V#g2#0#0').
name_ref(p_g_2_790, param, 'g2', 'Lorg/jfree/chart/plot/XYPlot;.drawRangeGridlines(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/util/List;)V#g2#0#0').
name_ref(p_g_2_793, param, 'g2', 'Lorg/jfree/chart/plot/XYPlot;.drawZeroDomainBaseline(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V#g2#0#0').
name_ref(p_g_2_795, param, 'g2', 'Lorg/jfree/chart/plot/XYPlot;.drawZeroRangeBaseline(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V#g2#0#0').
name_ref(p_g_2_797, param, 'g2', 'Lorg/jfree/chart/plot/XYPlot;.drawAnnotations(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/plot/PlotRenderingInfo;)V#g2#0#0').
name_ref(p_g_2_800, param, 'g2', 'Lorg/jfree/chart/plot/XYPlot;.drawDomainMarkers(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;ILorg/jfree/chart/util/Layer;)V#g2#0#0').
name_ref(p_g_2_804, param, 'g2', 'Lorg/jfree/chart/plot/XYPlot;.drawRangeMarkers(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;ILorg/jfree/chart/util/Layer;)V#g2#0#0').
name_ref(p_g_2_814, param, 'g2', 'Lorg/jfree/chart/plot/XYPlot;.drawHorizontalLine(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;DLjava/awt/Stroke;Ljava/awt/Paint;)V#g2#0#0').
name_ref(p_g_2_819, param, 'g2', 'Lorg/jfree/chart/plot/XYPlot;.drawDomainCrosshair(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/plot/PlotOrientation;DLorg/jfree/chart/axis/ValueAxis;Ljava/awt/Stroke;Ljava/awt/Paint;)V#g2#0#0').
name_ref(p_g_2_826, param, 'g2', 'Lorg/jfree/chart/plot/XYPlot;.drawVerticalLine(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;DLjava/awt/Stroke;Ljava/awt/Paint;)V#g2#0#0').
name_ref(p_g_2_831, param, 'g2', 'Lorg/jfree/chart/plot/XYPlot;.drawRangeCrosshair(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/plot/PlotOrientation;DLorg/jfree/chart/axis/ValueAxis;Ljava/awt/Stroke;Ljava/awt/Paint;)V#g2#0#0').
name_ref(p_group_481, param, 'group', 'Lorg/jfree/chart/plot/Plot;.setDatasetGroup(Lorg/jfree/data/general/DatasetGroup;)V#group#0#0').
name_ref(p_h_1_534, param, 'h1', 'Lorg/jfree/chart/plot/Plot;.getRectY(DDDLorg/jfree/chart/util/RectangleEdge;)D#h1#0#1').
name_ref(p_h_2_535, param, 'h2', 'Lorg/jfree/chart/plot/Plot;.getRectY(DDDLorg/jfree/chart/util/RectangleEdge;)D#h2#0#2').
name_ref(p_height_1000, param, 'height', 'Lorg/jfree/chart/util/RectangleInsets;.calculateBottomOutset(D)D#height#0#0').
name_ref(p_height_1007, param, 'height', 'Lorg/jfree/chart/util/RectangleInsets;.trimHeight(D)D#height#0#0').
name_ref(p_height_1008, param, 'height', 'Lorg/jfree/chart/util/RectangleInsets;.extendHeight(D)D#height#0#0').
name_ref(p_height_997, param, 'height', 'Lorg/jfree/chart/util/RectangleInsets;.calculateTopInset(D)D#height#0#0').
name_ref(p_height_998, param, 'height', 'Lorg/jfree/chart/util/RectangleInsets;.calculateTopOutset(D)D#height#0#0').
name_ref(p_height_999, param, 'height', 'Lorg/jfree/chart/util/RectangleInsets;.calculateBottomInset(D)D#height#0#0').
name_ref(p_horizontal_987, param, 'horizontal', 'Lorg/jfree/chart/util/RectangleInsets;.createAdjustedRectangle(Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/util/LengthAdjustmentType;Lorg/jfree/chart/util/LengthAdjustmentType;)Ljava/awt/geom/Rectangle2D;#horizontal#0#1').
name_ref(p_horizontal_991, param, 'horizontal', 'Lorg/jfree/chart/util/RectangleInsets;.createInsetRectangle(Ljava/awt/geom/Rectangle2D;ZZ)Ljava/awt/geom/Rectangle2D;#horizontal#0#1').
name_ref(p_horizontal_995, param, 'horizontal', 'Lorg/jfree/chart/util/RectangleInsets;.createOutsetRectangle(Ljava/awt/geom/Rectangle2D;ZZ)Ljava/awt/geom/Rectangle2D;#horizontal#0#1').
name_ref(p_image_492, param, 'image', 'Lorg/jfree/chart/plot/Plot;.setBackgroundImage(Ljava/awt/Image;)V#image#0#0').
name_ref(p_increment_924, param, 'increment', 'Lorg/jfree/chart/util/AbstractObjectList;.(II)V#increment#0#1').
name_ref(p_index_126, param, 'index', 'Lorg/jfree/chart/plot/CategoryPlot;.getDomainAxis(I)Lorg/jfree/chart/axis/CategoryAxis;#index#0#0').
name_ref(p_index_128, param, 'index', 'Lorg/jfree/chart/plot/CategoryPlot;.setDomainAxis(ILorg/jfree/chart/axis/CategoryAxis;)V#index#0#0').
name_ref(p_index_130, param, 'index', 'Lorg/jfree/chart/plot/CategoryPlot;.setDomainAxis(ILorg/jfree/chart/axis/CategoryAxis;Z)V#index#0#0').
name_ref(p_index_135, param, 'index', 'Lorg/jfree/chart/plot/CategoryPlot;.getDomainAxisLocation(I)Lorg/jfree/chart/axis/AxisLocation;#index#0#0').
name_ref(p_index_139, param, 'index', 'Lorg/jfree/chart/plot/CategoryPlot;.setDomainAxisLocation(ILorg/jfree/chart/axis/AxisLocation;)V#index#0#0').
name_ref(p_index_141, param, 'index', 'Lorg/jfree/chart/plot/CategoryPlot;.setDomainAxisLocation(ILorg/jfree/chart/axis/AxisLocation;Z)V#index#0#0').
name_ref(p_index_144, param, 'index', 'Lorg/jfree/chart/plot/CategoryPlot;.getDomainAxisEdge(I)Lorg/jfree/chart/util/RectangleEdge;#index#0#0').
name_ref(p_index_147, param, 'index', 'Lorg/jfree/chart/plot/CategoryPlot;.getRangeAxis(I)Lorg/jfree/chart/axis/ValueAxis;#index#0#0').
name_ref(p_index_151, param, 'index', 'Lorg/jfree/chart/plot/CategoryPlot;.setRangeAxis(ILorg/jfree/chart/axis/ValueAxis;)V#index#0#0').
name_ref(p_index_153, param, 'index', 'Lorg/jfree/chart/plot/CategoryPlot;.setRangeAxis(ILorg/jfree/chart/axis/ValueAxis;Z)V#index#0#0').
name_ref(p_index_158, param, 'index', 'Lorg/jfree/chart/plot/CategoryPlot;.getRangeAxisLocation(I)Lorg/jfree/chart/axis/AxisLocation;#index#0#0').
name_ref(p_index_162, param, 'index', 'Lorg/jfree/chart/plot/CategoryPlot;.setRangeAxisLocation(ILorg/jfree/chart/axis/AxisLocation;)V#index#0#0').
name_ref(p_index_164, param, 'index', 'Lorg/jfree/chart/plot/CategoryPlot;.setRangeAxisLocation(ILorg/jfree/chart/axis/AxisLocation;Z)V#index#0#0').
name_ref(p_index_167, param, 'index', 'Lorg/jfree/chart/plot/CategoryPlot;.getRangeAxisEdge(I)Lorg/jfree/chart/util/RectangleEdge;#index#0#0').
name_ref(p_index_170, param, 'index', 'Lorg/jfree/chart/plot/CategoryPlot;.getDataset(I)Lorg/jfree/data/category/CategoryDataset;#index#0#0').
name_ref(p_index_173, param, 'index', 'Lorg/jfree/chart/plot/CategoryPlot;.setDataset(ILorg/jfree/data/category/CategoryDataset;)V#index#0#0').
name_ref(p_index_175, param, 'index', 'Lorg/jfree/chart/plot/CategoryPlot;.mapDatasetToDomainAxis(II)V#index#0#0').
name_ref(p_index_177, param, 'index', 'Lorg/jfree/chart/plot/CategoryPlot;.getDomainAxisForDataset(I)Lorg/jfree/chart/axis/CategoryAxis;#index#0#0').
name_ref(p_index_178, param, 'index', 'Lorg/jfree/chart/plot/CategoryPlot;.mapDatasetToRangeAxis(II)V#index#0#0').
name_ref(p_index_180, param, 'index', 'Lorg/jfree/chart/plot/CategoryPlot;.getRangeAxisForDataset(I)Lorg/jfree/chart/axis/ValueAxis;#index#0#0').
name_ref(p_index_181, param, 'index', 'Lorg/jfree/chart/plot/CategoryPlot;.getRenderer(I)Lorg/jfree/chart/renderer/category/CategoryItemRenderer;#index#0#0').
name_ref(p_index_185, param, 'index', 'Lorg/jfree/chart/plot/CategoryPlot;.setRenderer(ILorg/jfree/chart/renderer/category/CategoryItemRenderer;)V#index#0#0').
name_ref(p_index_187, param, 'index', 'Lorg/jfree/chart/plot/CategoryPlot;.setRenderer(ILorg/jfree/chart/renderer/category/CategoryItemRenderer;Z)V#index#0#0').
name_ref(p_index_217, param, 'index', 'Lorg/jfree/chart/plot/CategoryPlot;.addDomainMarker(ILorg/jfree/chart/plot/CategoryMarker;Lorg/jfree/chart/util/Layer;)V#index#0#0').
name_ref(p_index_220, param, 'index', 'Lorg/jfree/chart/plot/CategoryPlot;.addDomainMarker(ILorg/jfree/chart/plot/CategoryMarker;Lorg/jfree/chart/util/Layer;Z)V#index#0#0').
name_ref(p_index_225, param, 'index', 'Lorg/jfree/chart/plot/CategoryPlot;.getDomainMarkers(ILorg/jfree/chart/util/Layer;)Ljava/util/Collection;#index#0#0').
name_ref(p_index_227, param, 'index', 'Lorg/jfree/chart/plot/CategoryPlot;.clearDomainMarkers(I)V#index#0#0').
name_ref(p_index_231, param, 'index', 'Lorg/jfree/chart/plot/CategoryPlot;.removeDomainMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;)Z#index#0#0').
name_ref(p_index_234, param, 'index', 'Lorg/jfree/chart/plot/CategoryPlot;.removeDomainMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;Z)Z#index#0#0').
name_ref(p_index_243, param, 'index', 'Lorg/jfree/chart/plot/CategoryPlot;.addRangeMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;)V#index#0#0').
name_ref(p_index_246, param, 'index', 'Lorg/jfree/chart/plot/CategoryPlot;.addRangeMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;Z)V#index#0#0').
name_ref(p_index_252, param, 'index', 'Lorg/jfree/chart/plot/CategoryPlot;.getRangeMarkers(ILorg/jfree/chart/util/Layer;)Ljava/util/Collection;#index#0#0').
name_ref(p_index_254, param, 'index', 'Lorg/jfree/chart/plot/CategoryPlot;.clearRangeMarkers(I)V#index#0#0').
name_ref(p_index_258, param, 'index', 'Lorg/jfree/chart/plot/CategoryPlot;.removeRangeMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;)Z#index#0#0').
name_ref(p_index_261, param, 'index', 'Lorg/jfree/chart/plot/CategoryPlot;.removeRangeMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;Z)Z#index#0#0').
name_ref(p_index_301, param, 'index', 'Lorg/jfree/chart/plot/CategoryPlot;.render(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;ILorg/jfree/chart/plot/PlotRenderingInfo;)Z#index#0#2').
name_ref(p_index_313, param, 'index', 'Lorg/jfree/chart/plot/CategoryPlot;.drawDomainMarkers(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;ILorg/jfree/chart/util/Layer;)V#index#0#2').
name_ref(p_index_317, param, 'index', 'Lorg/jfree/chart/plot/CategoryPlot;.drawRangeMarkers(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;ILorg/jfree/chart/util/Layer;)V#index#0#2').
name_ref(p_index_333, param, 'index', 'Lorg/jfree/chart/plot/CategoryPlot;.datasetsMappedToRangeAxis(I)Ljava/util/List;#index#0#0').
name_ref(p_index_620, param, 'index', 'Lorg/jfree/chart/plot/XYPlot;.getDomainAxis(I)Lorg/jfree/chart/axis/ValueAxis;#index#0#0').
name_ref(p_index_622, param, 'index', 'Lorg/jfree/chart/plot/XYPlot;.setDomainAxis(ILorg/jfree/chart/axis/ValueAxis;)V#index#0#0').
name_ref(p_index_624, param, 'index', 'Lorg/jfree/chart/plot/XYPlot;.setDomainAxis(ILorg/jfree/chart/axis/ValueAxis;Z)V#index#0#0').
name_ref(p_index_633, param, 'index', 'Lorg/jfree/chart/plot/XYPlot;.getDomainAxisLocation(I)Lorg/jfree/chart/axis/AxisLocation;#index#0#0').
name_ref(p_index_634, param, 'index', 'Lorg/jfree/chart/plot/XYPlot;.setDomainAxisLocation(ILorg/jfree/chart/axis/AxisLocation;)V#index#0#0').
name_ref(p_index_636, param, 'index', 'Lorg/jfree/chart/plot/XYPlot;.setDomainAxisLocation(ILorg/jfree/chart/axis/AxisLocation;Z)V#index#0#0').
name_ref(p_index_639, param, 'index', 'Lorg/jfree/chart/plot/XYPlot;.getDomainAxisEdge(I)Lorg/jfree/chart/util/RectangleEdge;#index#0#0').
name_ref(p_index_644, param, 'index', 'Lorg/jfree/chart/plot/XYPlot;.getRangeAxis(I)Lorg/jfree/chart/axis/ValueAxis;#index#0#0').
name_ref(p_index_645, param, 'index', 'Lorg/jfree/chart/plot/XYPlot;.setRangeAxis(ILorg/jfree/chart/axis/ValueAxis;)V#index#0#0').
name_ref(p_index_647, param, 'index', 'Lorg/jfree/chart/plot/XYPlot;.setRangeAxis(ILorg/jfree/chart/axis/ValueAxis;Z)V#index#0#0').
name_ref(p_index_653, param, 'index', 'Lorg/jfree/chart/plot/XYPlot;.getRangeAxisLocation(I)Lorg/jfree/chart/axis/AxisLocation;#index#0#0').
name_ref(p_index_654, param, 'index', 'Lorg/jfree/chart/plot/XYPlot;.setRangeAxisLocation(ILorg/jfree/chart/axis/AxisLocation;)V#index#0#0').
name_ref(p_index_656, param, 'index', 'Lorg/jfree/chart/plot/XYPlot;.setRangeAxisLocation(ILorg/jfree/chart/axis/AxisLocation;Z)V#index#0#0').
name_ref(p_index_659, param, 'index', 'Lorg/jfree/chart/plot/XYPlot;.getRangeAxisEdge(I)Lorg/jfree/chart/util/RectangleEdge;#index#0#0').
name_ref(p_index_660, param, 'index', 'Lorg/jfree/chart/plot/XYPlot;.getDataset(I)Lorg/jfree/data/xy/XYDataset;#index#0#0').
name_ref(p_index_663, param, 'index', 'Lorg/jfree/chart/plot/XYPlot;.setDataset(ILorg/jfree/data/xy/XYDataset;)V#index#0#0').
name_ref(p_index_666, param, 'index', 'Lorg/jfree/chart/plot/XYPlot;.mapDatasetToDomainAxis(II)V#index#0#0').
name_ref(p_index_668, param, 'index', 'Lorg/jfree/chart/plot/XYPlot;.mapDatasetToRangeAxis(II)V#index#0#0').
name_ref(p_index_670, param, 'index', 'Lorg/jfree/chart/plot/XYPlot;.getRenderer(I)Lorg/jfree/chart/renderer/xy/XYItemRenderer;#index#0#0').
name_ref(p_index_672, param, 'index', 'Lorg/jfree/chart/plot/XYPlot;.setRenderer(ILorg/jfree/chart/renderer/xy/XYItemRenderer;)V#index#0#0').
name_ref(p_index_674, param, 'index', 'Lorg/jfree/chart/plot/XYPlot;.setRenderer(ILorg/jfree/chart/renderer/xy/XYItemRenderer;Z)V#index#0#0').
name_ref(p_index_698, param, 'index', 'Lorg/jfree/chart/plot/XYPlot;.getQuadrantPaint(I)Ljava/awt/Paint;#index#0#0').
name_ref(p_index_699, param, 'index', 'Lorg/jfree/chart/plot/XYPlot;.setQuadrantPaint(ILjava/awt/Paint;)V#index#0#0').
name_ref(p_index_704, param, 'index', 'Lorg/jfree/chart/plot/XYPlot;.clearDomainMarkers(I)V#index#0#0').
name_ref(p_index_705, param, 'index', 'Lorg/jfree/chart/plot/XYPlot;.addDomainMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;)V#index#0#0').
name_ref(p_index_708, param, 'index', 'Lorg/jfree/chart/plot/XYPlot;.addDomainMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;Z)V#index#0#0').
name_ref(p_index_715, param, 'index', 'Lorg/jfree/chart/plot/XYPlot;.removeDomainMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;)Z#index#0#0').
name_ref(p_index_718, param, 'index', 'Lorg/jfree/chart/plot/XYPlot;.removeDomainMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;Z)Z#index#0#0').
name_ref(p_index_727, param, 'index', 'Lorg/jfree/chart/plot/XYPlot;.addRangeMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;)V#index#0#0').
name_ref(p_index_730, param, 'index', 'Lorg/jfree/chart/plot/XYPlot;.addRangeMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;Z)V#index#0#0').
name_ref(p_index_734, param, 'index', 'Lorg/jfree/chart/plot/XYPlot;.clearRangeMarkers(I)V#index#0#0').
name_ref(p_index_738, param, 'index', 'Lorg/jfree/chart/plot/XYPlot;.removeRangeMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;)Z#index#0#0').
name_ref(p_index_741, param, 'index', 'Lorg/jfree/chart/plot/XYPlot;.removeRangeMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;Z)Z#index#0#0').
name_ref(p_index_782, param, 'index', 'Lorg/jfree/chart/plot/XYPlot;.render(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;ILorg/jfree/chart/plot/PlotRenderingInfo;Lorg/jfree/chart/plot/CrosshairState;)Z#index#0#2').
name_ref(p_index_785, param, 'index', 'Lorg/jfree/chart/plot/XYPlot;.getDomainAxisForDataset(I)Lorg/jfree/chart/axis/ValueAxis;#index#0#0').
name_ref(p_index_786, param, 'index', 'Lorg/jfree/chart/plot/XYPlot;.getRangeAxisForDataset(I)Lorg/jfree/chart/axis/ValueAxis;#index#0#0').
name_ref(p_index_802, param, 'index', 'Lorg/jfree/chart/plot/XYPlot;.drawDomainMarkers(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;ILorg/jfree/chart/util/Layer;)V#index#0#2').
name_ref(p_index_806, param, 'index', 'Lorg/jfree/chart/plot/XYPlot;.drawRangeMarkers(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;ILorg/jfree/chart/util/Layer;)V#index#0#2').
name_ref(p_index_810, param, 'index', 'Lorg/jfree/chart/plot/XYPlot;.getDomainMarkers(ILorg/jfree/chart/util/Layer;)Ljava/util/Collection;#index#0#0').
name_ref(p_index_812, param, 'index', 'Lorg/jfree/chart/plot/XYPlot;.getRangeMarkers(ILorg/jfree/chart/util/Layer;)Ljava/util/Collection;#index#0#0').
name_ref(p_index_926, param, 'index', 'Lorg/jfree/chart/util/AbstractObjectList;.get(I)Ljava/lang/Object;#index#0#0').
name_ref(p_index_928, param, 'index', 'Lorg/jfree/chart/util/AbstractObjectList;.set(ILjava/lang/Object;)V#index#0#0').
name_ref(p_index_947, param, 'index', 'Lorg/jfree/chart/util/ObjectList;.get(I)Ljava/lang/Object;#index#0#0').
name_ref(p_index_948, param, 'index', 'Lorg/jfree/chart/util/ObjectList;.set(ILjava/lang/Object;)V#index#0#0').
name_ref(p_info_206, param, 'info', 'Lorg/jfree/chart/plot/CategoryPlot;.handleClick(IILorg/jfree/chart/plot/PlotRenderingInfo;)V#info#0#2').
name_ref(p_info_302, param, 'info', 'Lorg/jfree/chart/plot/CategoryPlot;.render(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;ILorg/jfree/chart/plot/PlotRenderingInfo;)Z#info#0#3').
name_ref(p_info_310, param, 'info', 'Lorg/jfree/chart/plot/CategoryPlot;.drawAnnotations(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/plot/PlotRenderingInfo;)V#info#0#2').
name_ref(p_info_351, param, 'info', 'Lorg/jfree/chart/plot/CategoryPlot;.zoomDomainAxes(DLorg/jfree/chart/plot/PlotRenderingInfo;Ljava/awt/geom/Point2D;Z)V#info#0#1').
name_ref(p_info_358, param, 'info', 'Lorg/jfree/chart/plot/CategoryPlot;.zoomRangeAxes(DLorg/jfree/chart/plot/PlotRenderingInfo;Ljava/awt/geom/Point2D;Z)V#info#0#1').
name_ref(p_info_508, param, 'info', 'Lorg/jfree/chart/plot/Plot;.draw(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Point2D;Lorg/jfree/chart/plot/PlotState;Lorg/jfree/chart/plot/PlotRenderingInfo;)V#info#0#4').
name_ref(p_info_524, param, 'info', 'Lorg/jfree/chart/plot/Plot;.handleClick(IILorg/jfree/chart/plot/PlotRenderingInfo;)V#info#0#2').
name_ref(p_info_765, param, 'info', 'Lorg/jfree/chart/plot/XYPlot;.draw(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Point2D;Lorg/jfree/chart/plot/PlotState;Lorg/jfree/chart/plot/PlotRenderingInfo;)V#info#0#4').
name_ref(p_info_783, param, 'info', 'Lorg/jfree/chart/plot/XYPlot;.render(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;ILorg/jfree/chart/plot/PlotRenderingInfo;Lorg/jfree/chart/plot/CrosshairState;)Z#info#0#3').
name_ref(p_info_799, param, 'info', 'Lorg/jfree/chart/plot/XYPlot;.drawAnnotations(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/plot/PlotRenderingInfo;)V#info#0#2').
name_ref(p_info_840, param, 'info', 'Lorg/jfree/chart/plot/XYPlot;.handleClick(IILorg/jfree/chart/plot/PlotRenderingInfo;)V#info#0#2').
name_ref(p_info_870, param, 'info', 'Lorg/jfree/chart/plot/XYPlot;.zoomDomainAxes(DLorg/jfree/chart/plot/PlotRenderingInfo;Ljava/awt/geom/Point2D;)V#info#0#1').
name_ref(p_info_873, param, 'info', 'Lorg/jfree/chart/plot/XYPlot;.zoomDomainAxes(DLorg/jfree/chart/plot/PlotRenderingInfo;Ljava/awt/geom/Point2D;Z)V#info#0#1').
name_ref(p_info_878, param, 'info', 'Lorg/jfree/chart/plot/XYPlot;.zoomDomainAxes(DDLorg/jfree/chart/plot/PlotRenderingInfo;Ljava/awt/geom/Point2D;)V#info#0#2').
name_ref(p_info_881, param, 'info', 'Lorg/jfree/chart/plot/XYPlot;.zoomRangeAxes(DLorg/jfree/chart/plot/PlotRenderingInfo;Ljava/awt/geom/Point2D;)V#info#0#1').
name_ref(p_info_884, param, 'info', 'Lorg/jfree/chart/plot/XYPlot;.zoomRangeAxes(DLorg/jfree/chart/plot/PlotRenderingInfo;Ljava/awt/geom/Point2D;Z)V#info#0#1').
name_ref(p_info_889, param, 'info', 'Lorg/jfree/chart/plot/XYPlot;.zoomRangeAxes(DDLorg/jfree/chart/plot/PlotRenderingInfo;Ljava/awt/geom/Point2D;)V#info#0#2').
name_ref(p_initial_capacity_922, param, 'initialCapacity', 'Lorg/jfree/chart/util/AbstractObjectList;.(I)V#initialCapacity#0#0').
name_ref(p_initial_capacity_923, param, 'initialCapacity', 'Lorg/jfree/chart/util/AbstractObjectList;.(II)V#initialCapacity#0#0').
name_ref(p_initial_capacity_946, param, 'initialCapacity', 'Lorg/jfree/chart/util/ObjectList;.(I)V#initialCapacity#0#0').
name_ref(p_insets_486, param, 'insets', 'Lorg/jfree/chart/plot/Plot;.setInsets(Lorg/jfree/chart/util/RectangleInsets;)V#insets#0#0').
name_ref(p_insets_487, param, 'insets', 'Lorg/jfree/chart/plot/Plot;.setInsets(Lorg/jfree/chart/util/RectangleInsets;Z)V#insets#0#0').
name_ref(p_items_203, param, 'items', 'Lorg/jfree/chart/plot/CategoryPlot;.setFixedLegendItems(Lorg/jfree/chart/LegendItemCollection;)V#items#0#0').
name_ref(p_items_891, param, 'items', 'Lorg/jfree/chart/plot/XYPlot;.setFixedLegendItems(Lorg/jfree/chart/LegendItemCollection;)V#items#0#0').
name_ref(p_key_63, param, 'key', 'Lorg/jfree/chart/plot/CategoryMarker;.(Ljava/lang/Comparable;)V#key#0#0').
name_ref(p_key_65, param, 'key', 'Lorg/jfree/chart/plot/CategoryMarker;.(Ljava/lang/Comparable;Ljava/awt/Paint;Ljava/awt/Stroke;)V#key#0#0').
name_ref(p_key_68, param, 'key', 'Lorg/jfree/chart/plot/CategoryMarker;.(Ljava/lang/Comparable;Ljava/awt/Paint;Ljava/awt/Stroke;Ljava/awt/Paint;Ljava/awt/Stroke;F)V#key#0#0').
name_ref(p_key_75, param, 'key', 'Lorg/jfree/chart/plot/CategoryMarker;.setKey(Ljava/lang/Comparable;)V#key#0#0').
name_ref(p_label_440, param, 'label', 'Lorg/jfree/chart/plot/Marker;.setLabel(Ljava/lang/String;)V#label#0#0').
name_ref(p_layer_216, param, 'layer', 'Lorg/jfree/chart/plot/CategoryPlot;.addDomainMarker(Lorg/jfree/chart/plot/CategoryMarker;Lorg/jfree/chart/util/Layer;)V#layer#0#1').
name_ref(p_layer_219, param, 'layer', 'Lorg/jfree/chart/plot/CategoryPlot;.addDomainMarker(ILorg/jfree/chart/plot/CategoryMarker;Lorg/jfree/chart/util/Layer;)V#layer#0#2').
name_ref(p_layer_222, param, 'layer', 'Lorg/jfree/chart/plot/CategoryPlot;.addDomainMarker(ILorg/jfree/chart/plot/CategoryMarker;Lorg/jfree/chart/util/Layer;Z)V#layer#0#2').
name_ref(p_layer_224, param, 'layer', 'Lorg/jfree/chart/plot/CategoryPlot;.getDomainMarkers(Lorg/jfree/chart/util/Layer;)Ljava/util/Collection;#layer#0#0').
name_ref(p_layer_226, param, 'layer', 'Lorg/jfree/chart/plot/CategoryPlot;.getDomainMarkers(ILorg/jfree/chart/util/Layer;)Ljava/util/Collection;#layer#0#1').
name_ref(p_layer_230, param, 'layer', 'Lorg/jfree/chart/plot/CategoryPlot;.removeDomainMarker(Lorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;)Z#layer#0#1').
name_ref(p_layer_233, param, 'layer', 'Lorg/jfree/chart/plot/CategoryPlot;.removeDomainMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;)Z#layer#0#2').
name_ref(p_layer_236, param, 'layer', 'Lorg/jfree/chart/plot/CategoryPlot;.removeDomainMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;Z)Z#layer#0#2').
name_ref(p_layer_242, param, 'layer', 'Lorg/jfree/chart/plot/CategoryPlot;.addRangeMarker(Lorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;)V#layer#0#1').
name_ref(p_layer_245, param, 'layer', 'Lorg/jfree/chart/plot/CategoryPlot;.addRangeMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;)V#layer#0#2').
name_ref(p_layer_248, param, 'layer', 'Lorg/jfree/chart/plot/CategoryPlot;.addRangeMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;Z)V#layer#0#2').
name_ref(p_layer_251, param, 'layer', 'Lorg/jfree/chart/plot/CategoryPlot;.getRangeMarkers(Lorg/jfree/chart/util/Layer;)Ljava/util/Collection;#layer#0#0').
name_ref(p_layer_253, param, 'layer', 'Lorg/jfree/chart/plot/CategoryPlot;.getRangeMarkers(ILorg/jfree/chart/util/Layer;)Ljava/util/Collection;#layer#0#1').
name_ref(p_layer_257, param, 'layer', 'Lorg/jfree/chart/plot/CategoryPlot;.removeRangeMarker(Lorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;)Z#layer#0#1').
name_ref(p_layer_260, param, 'layer', 'Lorg/jfree/chart/plot/CategoryPlot;.removeRangeMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;)Z#layer#0#2').
name_ref(p_layer_263, param, 'layer', 'Lorg/jfree/chart/plot/CategoryPlot;.removeRangeMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;Z)Z#layer#0#2').
name_ref(p_layer_314, param, 'layer', 'Lorg/jfree/chart/plot/CategoryPlot;.drawDomainMarkers(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;ILorg/jfree/chart/util/Layer;)V#layer#0#3').
name_ref(p_layer_318, param, 'layer', 'Lorg/jfree/chart/plot/CategoryPlot;.drawRangeMarkers(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;ILorg/jfree/chart/util/Layer;)V#layer#0#3').
name_ref(p_layer_703, param, 'layer', 'Lorg/jfree/chart/plot/XYPlot;.addDomainMarker(Lorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;)V#layer#0#1').
name_ref(p_layer_707, param, 'layer', 'Lorg/jfree/chart/plot/XYPlot;.addDomainMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;)V#layer#0#2').
name_ref(p_layer_710, param, 'layer', 'Lorg/jfree/chart/plot/XYPlot;.addDomainMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;Z)V#layer#0#2').
name_ref(p_layer_714, param, 'layer', 'Lorg/jfree/chart/plot/XYPlot;.removeDomainMarker(Lorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;)Z#layer#0#1').
name_ref(p_layer_717, param, 'layer', 'Lorg/jfree/chart/plot/XYPlot;.removeDomainMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;)Z#layer#0#2').
name_ref(p_layer_720, param, 'layer', 'Lorg/jfree/chart/plot/XYPlot;.removeDomainMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;Z)Z#layer#0#2').
name_ref(p_layer_726, param, 'layer', 'Lorg/jfree/chart/plot/XYPlot;.addRangeMarker(Lorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;)V#layer#0#1').
name_ref(p_layer_729, param, 'layer', 'Lorg/jfree/chart/plot/XYPlot;.addRangeMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;)V#layer#0#2').
name_ref(p_layer_732, param, 'layer', 'Lorg/jfree/chart/plot/XYPlot;.addRangeMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;Z)V#layer#0#2').
name_ref(p_layer_737, param, 'layer', 'Lorg/jfree/chart/plot/XYPlot;.removeRangeMarker(Lorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;)Z#layer#0#1').
name_ref(p_layer_740, param, 'layer', 'Lorg/jfree/chart/plot/XYPlot;.removeRangeMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;)Z#layer#0#2').
name_ref(p_layer_743, param, 'layer', 'Lorg/jfree/chart/plot/XYPlot;.removeRangeMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;Z)Z#layer#0#2').
name_ref(p_layer_803, param, 'layer', 'Lorg/jfree/chart/plot/XYPlot;.drawDomainMarkers(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;ILorg/jfree/chart/util/Layer;)V#layer#0#3').
name_ref(p_layer_807, param, 'layer', 'Lorg/jfree/chart/plot/XYPlot;.drawRangeMarkers(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;ILorg/jfree/chart/util/Layer;)V#layer#0#3').
name_ref(p_layer_808, param, 'layer', 'Lorg/jfree/chart/plot/XYPlot;.getDomainMarkers(Lorg/jfree/chart/util/Layer;)Ljava/util/Collection;#layer#0#0').
name_ref(p_layer_809, param, 'layer', 'Lorg/jfree/chart/plot/XYPlot;.getRangeMarkers(Lorg/jfree/chart/util/Layer;)Ljava/util/Collection;#layer#0#0').
name_ref(p_layer_811, param, 'layer', 'Lorg/jfree/chart/plot/XYPlot;.getDomainMarkers(ILorg/jfree/chart/util/Layer;)Ljava/util/Collection;#layer#0#1').
name_ref(p_layer_813, param, 'layer', 'Lorg/jfree/chart/plot/XYPlot;.getRangeMarkers(ILorg/jfree/chart/util/Layer;)Ljava/util/Collection;#layer#0#1').
name_ref(p_left_971, param, 'left', 'Lorg/jfree/chart/util/RectangleInsets;.(DDDD)V#left#0#1').
name_ref(p_left_977, param, 'left', 'Lorg/jfree/chart/util/RectangleInsets;.(Lorg/jfree/chart/util/UnitType;DDDD)V#left#0#2').
name_ref(p_listener_447, param, 'listener', 'Lorg/jfree/chart/plot/Marker;.addChangeListener(Lorg/jfree/chart/event/MarkerChangeListener;)V#listener#0#0').
name_ref(p_listener_448, param, 'listener', 'Lorg/jfree/chart/plot/Marker;.removeChangeListener(Lorg/jfree/chart/event/MarkerChangeListener;)V#listener#0#0').
name_ref(p_listener_499, param, 'listener', 'Lorg/jfree/chart/plot/Plot;.addChangeListener(Lorg/jfree/chart/event/PlotChangeListener;)V#listener#0#0').
name_ref(p_listener_500, param, 'listener', 'Lorg/jfree/chart/plot/Plot;.removeChangeListener(Lorg/jfree/chart/event/PlotChangeListener;)V#listener#0#0').
name_ref(p_listener_type_452, param, 'listenerType', 'Lorg/jfree/chart/plot/Marker;.getListeners(Ljava/lang/Class;)[Ljava/util/EventListener;#listenerType#0#0').
name_ref(p_location_136, param, 'location', 'Lorg/jfree/chart/plot/CategoryPlot;.setDomainAxisLocation(Lorg/jfree/chart/axis/AxisLocation;)V#location#0#0').
name_ref(p_location_137, param, 'location', 'Lorg/jfree/chart/plot/CategoryPlot;.setDomainAxisLocation(Lorg/jfree/chart/axis/AxisLocation;Z)V#location#0#0').
name_ref(p_location_140, param, 'location', 'Lorg/jfree/chart/plot/CategoryPlot;.setDomainAxisLocation(ILorg/jfree/chart/axis/AxisLocation;)V#location#0#1').
name_ref(p_location_142, param, 'location', 'Lorg/jfree/chart/plot/CategoryPlot;.setDomainAxisLocation(ILorg/jfree/chart/axis/AxisLocation;Z)V#location#0#1').
name_ref(p_location_159, param, 'location', 'Lorg/jfree/chart/plot/CategoryPlot;.setRangeAxisLocation(Lorg/jfree/chart/axis/AxisLocation;)V#location#0#0').
name_ref(p_location_160, param, 'location', 'Lorg/jfree/chart/plot/CategoryPlot;.setRangeAxisLocation(Lorg/jfree/chart/axis/AxisLocation;Z)V#location#0#0').
name_ref(p_location_163, param, 'location', 'Lorg/jfree/chart/plot/CategoryPlot;.setRangeAxisLocation(ILorg/jfree/chart/axis/AxisLocation;)V#location#0#1').
name_ref(p_location_165, param, 'location', 'Lorg/jfree/chart/plot/CategoryPlot;.setRangeAxisLocation(ILorg/jfree/chart/axis/AxisLocation;Z)V#location#0#1').
name_ref(p_location_35, param, 'location', 'Lorg/jfree/chart/axis/AxisLocation;.getOpposite(Lorg/jfree/chart/axis/AxisLocation;)Lorg/jfree/chart/axis/AxisLocation;#location#0#0').
name_ref(p_location_540, param, 'location', 'Lorg/jfree/chart/plot/Plot;.resolveDomainAxisLocation(Lorg/jfree/chart/axis/AxisLocation;Lorg/jfree/chart/plot/PlotOrientation;)Lorg/jfree/chart/util/RectangleEdge;#location#0#0').
name_ref(p_location_542, param, 'location', 'Lorg/jfree/chart/plot/Plot;.resolveRangeAxisLocation(Lorg/jfree/chart/axis/AxisLocation;Lorg/jfree/chart/plot/PlotOrientation;)Lorg/jfree/chart/util/RectangleEdge;#location#0#0').
name_ref(p_location_628, param, 'location', 'Lorg/jfree/chart/plot/XYPlot;.setDomainAxisLocation(Lorg/jfree/chart/axis/AxisLocation;)V#location#0#0').
name_ref(p_location_629, param, 'location', 'Lorg/jfree/chart/plot/XYPlot;.setDomainAxisLocation(Lorg/jfree/chart/axis/AxisLocation;Z)V#location#0#0').
name_ref(p_location_635, param, 'location', 'Lorg/jfree/chart/plot/XYPlot;.setDomainAxisLocation(ILorg/jfree/chart/axis/AxisLocation;)V#location#0#1').
name_ref(p_location_637, param, 'location', 'Lorg/jfree/chart/plot/XYPlot;.setDomainAxisLocation(ILorg/jfree/chart/axis/AxisLocation;Z)V#location#0#1').
name_ref(p_location_641, param, 'location', 'Lorg/jfree/chart/plot/XYPlot;.setRangeAxisLocation(Lorg/jfree/chart/axis/AxisLocation;)V#location#0#0').
name_ref(p_location_642, param, 'location', 'Lorg/jfree/chart/plot/XYPlot;.setRangeAxisLocation(Lorg/jfree/chart/axis/AxisLocation;Z)V#location#0#0').
name_ref(p_location_655, param, 'location', 'Lorg/jfree/chart/plot/XYPlot;.setRangeAxisLocation(ILorg/jfree/chart/axis/AxisLocation;)V#location#0#1').
name_ref(p_location_657, param, 'location', 'Lorg/jfree/chart/plot/XYPlot;.setRangeAxisLocation(ILorg/jfree/chart/axis/AxisLocation;Z)V#location#0#1').
name_ref(p_lower_percent_346, param, 'lowerPercent', 'Lorg/jfree/chart/plot/CategoryPlot;.zoomDomainAxes(DDLorg/jfree/chart/plot/PlotRenderingInfo;Ljava/awt/geom/Point2D;)V#lowerPercent#0#0').
name_ref(p_lower_percent_361, param, 'lowerPercent', 'Lorg/jfree/chart/plot/CategoryPlot;.zoomRangeAxes(DDLorg/jfree/chart/plot/PlotRenderingInfo;Ljava/awt/geom/Point2D;)V#lowerPercent#0#0').
name_ref(p_lower_percent_876, param, 'lowerPercent', 'Lorg/jfree/chart/plot/XYPlot;.zoomDomainAxes(DDLorg/jfree/chart/plot/PlotRenderingInfo;Ljava/awt/geom/Point2D;)V#lowerPercent#0#0').
name_ref(p_lower_percent_887, param, 'lowerPercent', 'Lorg/jfree/chart/plot/XYPlot;.zoomRangeAxes(DDLorg/jfree/chart/plot/PlotRenderingInfo;Ljava/awt/geom/Point2D;)V#lowerPercent#0#0').
name_ref(p_marker_214, param, 'marker', 'Lorg/jfree/chart/plot/CategoryPlot;.addDomainMarker(Lorg/jfree/chart/plot/CategoryMarker;)V#marker#0#0').
name_ref(p_marker_215, param, 'marker', 'Lorg/jfree/chart/plot/CategoryPlot;.addDomainMarker(Lorg/jfree/chart/plot/CategoryMarker;Lorg/jfree/chart/util/Layer;)V#marker#0#0').
name_ref(p_marker_218, param, 'marker', 'Lorg/jfree/chart/plot/CategoryPlot;.addDomainMarker(ILorg/jfree/chart/plot/CategoryMarker;Lorg/jfree/chart/util/Layer;)V#marker#0#1').
name_ref(p_marker_221, param, 'marker', 'Lorg/jfree/chart/plot/CategoryPlot;.addDomainMarker(ILorg/jfree/chart/plot/CategoryMarker;Lorg/jfree/chart/util/Layer;Z)V#marker#0#1').
name_ref(p_marker_228, param, 'marker', 'Lorg/jfree/chart/plot/CategoryPlot;.removeDomainMarker(Lorg/jfree/chart/plot/Marker;)Z#marker#0#0').
name_ref(p_marker_229, param, 'marker', 'Lorg/jfree/chart/plot/CategoryPlot;.removeDomainMarker(Lorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;)Z#marker#0#0').
name_ref(p_marker_232, param, 'marker', 'Lorg/jfree/chart/plot/CategoryPlot;.removeDomainMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;)Z#marker#0#1').
name_ref(p_marker_235, param, 'marker', 'Lorg/jfree/chart/plot/CategoryPlot;.removeDomainMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;Z)Z#marker#0#1').
name_ref(p_marker_240, param, 'marker', 'Lorg/jfree/chart/plot/CategoryPlot;.addRangeMarker(Lorg/jfree/chart/plot/Marker;)V#marker#0#0').
name_ref(p_marker_241, param, 'marker', 'Lorg/jfree/chart/plot/CategoryPlot;.addRangeMarker(Lorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;)V#marker#0#0').
name_ref(p_marker_244, param, 'marker', 'Lorg/jfree/chart/plot/CategoryPlot;.addRangeMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;)V#marker#0#1').
name_ref(p_marker_247, param, 'marker', 'Lorg/jfree/chart/plot/CategoryPlot;.addRangeMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;Z)V#marker#0#1').
name_ref(p_marker_255, param, 'marker', 'Lorg/jfree/chart/plot/CategoryPlot;.removeRangeMarker(Lorg/jfree/chart/plot/Marker;)Z#marker#0#0').
name_ref(p_marker_256, param, 'marker', 'Lorg/jfree/chart/plot/CategoryPlot;.removeRangeMarker(Lorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;)Z#marker#0#0').
name_ref(p_marker_259, param, 'marker', 'Lorg/jfree/chart/plot/CategoryPlot;.removeRangeMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;)Z#marker#0#1').
name_ref(p_marker_262, param, 'marker', 'Lorg/jfree/chart/plot/CategoryPlot;.removeRangeMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;Z)Z#marker#0#1').
name_ref(p_marker_58, param, 'marker', 'Lorg/jfree/chart/event/MarkerChangeEvent;.(Lorg/jfree/chart/plot/Marker;)V#marker#0#0').
name_ref(p_marker_701, param, 'marker', 'Lorg/jfree/chart/plot/XYPlot;.addDomainMarker(Lorg/jfree/chart/plot/Marker;)V#marker#0#0').
name_ref(p_marker_702, param, 'marker', 'Lorg/jfree/chart/plot/XYPlot;.addDomainMarker(Lorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;)V#marker#0#0').
name_ref(p_marker_706, param, 'marker', 'Lorg/jfree/chart/plot/XYPlot;.addDomainMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;)V#marker#0#1').
name_ref(p_marker_709, param, 'marker', 'Lorg/jfree/chart/plot/XYPlot;.addDomainMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;Z)V#marker#0#1').
name_ref(p_marker_712, param, 'marker', 'Lorg/jfree/chart/plot/XYPlot;.removeDomainMarker(Lorg/jfree/chart/plot/Marker;)Z#marker#0#0').
name_ref(p_marker_713, param, 'marker', 'Lorg/jfree/chart/plot/XYPlot;.removeDomainMarker(Lorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;)Z#marker#0#0').
name_ref(p_marker_716, param, 'marker', 'Lorg/jfree/chart/plot/XYPlot;.removeDomainMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;)Z#marker#0#1').
name_ref(p_marker_719, param, 'marker', 'Lorg/jfree/chart/plot/XYPlot;.removeDomainMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;Z)Z#marker#0#1').
name_ref(p_marker_724, param, 'marker', 'Lorg/jfree/chart/plot/XYPlot;.addRangeMarker(Lorg/jfree/chart/plot/Marker;)V#marker#0#0').
name_ref(p_marker_725, param, 'marker', 'Lorg/jfree/chart/plot/XYPlot;.addRangeMarker(Lorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;)V#marker#0#0').
name_ref(p_marker_728, param, 'marker', 'Lorg/jfree/chart/plot/XYPlot;.addRangeMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;)V#marker#0#1').
name_ref(p_marker_731, param, 'marker', 'Lorg/jfree/chart/plot/XYPlot;.addRangeMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;Z)V#marker#0#1').
name_ref(p_marker_735, param, 'marker', 'Lorg/jfree/chart/plot/XYPlot;.removeRangeMarker(Lorg/jfree/chart/plot/Marker;)Z#marker#0#0').
name_ref(p_marker_736, param, 'marker', 'Lorg/jfree/chart/plot/XYPlot;.removeRangeMarker(Lorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;)Z#marker#0#0').
name_ref(p_marker_739, param, 'marker', 'Lorg/jfree/chart/plot/XYPlot;.removeRangeMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;)Z#marker#0#1').
name_ref(p_marker_742, param, 'marker', 'Lorg/jfree/chart/plot/XYPlot;.removeRangeMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;Z)Z#marker#0#1').
name_ref(p_message_482, param, 'message', 'Lorg/jfree/chart/plot/Plot;.setNoDataMessage(Ljava/lang/String;)V#message#0#0').
name_ref(p_name_1012, param, 'name', 'Lorg/jfree/chart/util/SortOrder;.(Ljava/lang/String;)V#name#0#0').
name_ref(p_name_1016, param, 'name', 'Lorg/jfree/chart/util/UnitType;.(Ljava/lang/String;)V#name#0#0').
name_ref(p_name_32, param, 'name', 'Lorg/jfree/chart/axis/AxisLocation;.(Ljava/lang/String;)V#name#0#0').
name_ref(p_name_373, param, 'name', 'Lorg/jfree/chart/plot/DatasetRenderingOrder;.(Ljava/lang/String;)V#name#0#0').
name_ref(p_name_39, param, 'name', 'Lorg/jfree/chart/axis/CategoryAnchor;.(Ljava/lang/String;)V#name#0#0').
name_ref(p_name_546, param, 'name', 'Lorg/jfree/chart/plot/PlotOrientation;.(Ljava/lang/String;)V#name#0#0').
name_ref(p_name_55, param, 'name', 'Lorg/jfree/chart/event/ChartChangeEventType;.(Ljava/lang/String;)V#name#0#0').
name_ref(p_name_551, param, 'name', 'Lorg/jfree/chart/plot/SeriesRenderingOrder;.(Ljava/lang/String;)V#name#0#0').
name_ref(p_name_895, param, 'name', 'Lorg/jfree/chart/plot/junit/CategoryPlotTests;.(Ljava/lang/String;)V#name#0#0').
name_ref(p_name_898, param, 'name', 'Lorg/jfree/chart/plot/junit/XYPlotTests;.(Ljava/lang/String;)V#name#0#0').
name_ref(p_name_916, param, 'name', 'Lorg/jfree/chart/text/TextAnchor;.(Ljava/lang/String;)V#name#0#0').
name_ref(p_name_937, param, 'name', 'Lorg/jfree/chart/util/Layer;.(Ljava/lang/String;)V#name#0#0').
name_ref(p_name_943, param, 'name', 'Lorg/jfree/chart/util/LengthAdjustmentType;.(Ljava/lang/String;)V#name#0#0').
name_ref(p_name_960, param, 'name', 'Lorg/jfree/chart/util/RectangleAnchor;.(Ljava/lang/String;)V#name#0#0').
name_ref(p_notify_132, param, 'notify', 'Lorg/jfree/chart/plot/CategoryPlot;.setDomainAxis(ILorg/jfree/chart/axis/CategoryAxis;Z)V#notify#0#2').
name_ref(p_notify_138, param, 'notify', 'Lorg/jfree/chart/plot/CategoryPlot;.setDomainAxisLocation(Lorg/jfree/chart/axis/AxisLocation;Z)V#notify#0#1').
name_ref(p_notify_143, param, 'notify', 'Lorg/jfree/chart/plot/CategoryPlot;.setDomainAxisLocation(ILorg/jfree/chart/axis/AxisLocation;Z)V#notify#0#2').
name_ref(p_notify_155, param, 'notify', 'Lorg/jfree/chart/plot/CategoryPlot;.setRangeAxis(ILorg/jfree/chart/axis/ValueAxis;Z)V#notify#0#2').
name_ref(p_notify_161, param, 'notify', 'Lorg/jfree/chart/plot/CategoryPlot;.setRangeAxisLocation(Lorg/jfree/chart/axis/AxisLocation;Z)V#notify#0#1').
name_ref(p_notify_166, param, 'notify', 'Lorg/jfree/chart/plot/CategoryPlot;.setRangeAxisLocation(ILorg/jfree/chart/axis/AxisLocation;Z)V#notify#0#2').
name_ref(p_notify_184, param, 'notify', 'Lorg/jfree/chart/plot/CategoryPlot;.setRenderer(Lorg/jfree/chart/renderer/category/CategoryItemRenderer;Z)V#notify#0#1').
name_ref(p_notify_189, param, 'notify', 'Lorg/jfree/chart/plot/CategoryPlot;.setRenderer(ILorg/jfree/chart/renderer/category/CategoryItemRenderer;Z)V#notify#0#2').
name_ref(p_notify_223, param, 'notify', 'Lorg/jfree/chart/plot/CategoryPlot;.addDomainMarker(ILorg/jfree/chart/plot/CategoryMarker;Lorg/jfree/chart/util/Layer;Z)V#notify#0#3').
name_ref(p_notify_237, param, 'notify', 'Lorg/jfree/chart/plot/CategoryPlot;.removeDomainMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;Z)Z#notify#0#3').
name_ref(p_notify_249, param, 'notify', 'Lorg/jfree/chart/plot/CategoryPlot;.addRangeMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;Z)V#notify#0#3').
name_ref(p_notify_264, param, 'notify', 'Lorg/jfree/chart/plot/CategoryPlot;.removeRangeMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;Z)Z#notify#0#3').
name_ref(p_notify_271, param, 'notify', 'Lorg/jfree/chart/plot/CategoryPlot;.setRangeCrosshairValue(DZ)V#notify#0#1').
name_ref(p_notify_276, param, 'notify', 'Lorg/jfree/chart/plot/CategoryPlot;.addAnnotation(Lorg/jfree/chart/annotations/CategoryAnnotation;Z)V#notify#0#1').
name_ref(p_notify_279, param, 'notify', 'Lorg/jfree/chart/plot/CategoryPlot;.removeAnnotation(Lorg/jfree/chart/annotations/CategoryAnnotation;Z)Z#notify#0#1').
name_ref(p_notify_337, param, 'notify', 'Lorg/jfree/chart/plot/CategoryPlot;.setFixedDomainAxisSpace(Lorg/jfree/chart/axis/AxisSpace;Z)V#notify#0#1').
name_ref(p_notify_340, param, 'notify', 'Lorg/jfree/chart/plot/CategoryPlot;.setFixedRangeAxisSpace(Lorg/jfree/chart/axis/AxisSpace;Z)V#notify#0#1').
name_ref(p_notify_367, param, 'notify', 'Lorg/jfree/chart/plot/CategoryPlot;.setAnchorValue(DZ)V#notify#0#1').
name_ref(p_notify_488, param, 'notify', 'Lorg/jfree/chart/plot/Plot;.setInsets(Lorg/jfree/chart/util/RectangleInsets;Z)V#notify#0#1').
name_ref(p_notify_626, param, 'notify', 'Lorg/jfree/chart/plot/XYPlot;.setDomainAxis(ILorg/jfree/chart/axis/ValueAxis;Z)V#notify#0#2').
name_ref(p_notify_630, param, 'notify', 'Lorg/jfree/chart/plot/XYPlot;.setDomainAxisLocation(Lorg/jfree/chart/axis/AxisLocation;Z)V#notify#0#1').
name_ref(p_notify_638, param, 'notify', 'Lorg/jfree/chart/plot/XYPlot;.setDomainAxisLocation(ILorg/jfree/chart/axis/AxisLocation;Z)V#notify#0#2').
name_ref(p_notify_643, param, 'notify', 'Lorg/jfree/chart/plot/XYPlot;.setRangeAxisLocation(Lorg/jfree/chart/axis/AxisLocation;Z)V#notify#0#1').
name_ref(p_notify_649, param, 'notify', 'Lorg/jfree/chart/plot/XYPlot;.setRangeAxis(ILorg/jfree/chart/axis/ValueAxis;Z)V#notify#0#2').
name_ref(p_notify_658, param, 'notify', 'Lorg/jfree/chart/plot/XYPlot;.setRangeAxisLocation(ILorg/jfree/chart/axis/AxisLocation;Z)V#notify#0#2').
name_ref(p_notify_676, param, 'notify', 'Lorg/jfree/chart/plot/XYPlot;.setRenderer(ILorg/jfree/chart/renderer/xy/XYItemRenderer;Z)V#notify#0#2').
name_ref(p_notify_711, param, 'notify', 'Lorg/jfree/chart/plot/XYPlot;.addDomainMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;Z)V#notify#0#3').
name_ref(p_notify_721, param, 'notify', 'Lorg/jfree/chart/plot/XYPlot;.removeDomainMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;Z)Z#notify#0#3').
name_ref(p_notify_733, param, 'notify', 'Lorg/jfree/chart/plot/XYPlot;.addRangeMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;Z)V#notify#0#3').
name_ref(p_notify_744, param, 'notify', 'Lorg/jfree/chart/plot/XYPlot;.removeRangeMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;Z)Z#notify#0#3').
name_ref(p_notify_749, param, 'notify', 'Lorg/jfree/chart/plot/XYPlot;.addAnnotation(Lorg/jfree/chart/annotations/XYAnnotation;Z)V#notify#0#1').
name_ref(p_notify_752, param, 'notify', 'Lorg/jfree/chart/plot/XYPlot;.removeAnnotation(Lorg/jfree/chart/annotations/XYAnnotation;Z)Z#notify#0#1').
name_ref(p_notify_853, param, 'notify', 'Lorg/jfree/chart/plot/XYPlot;.setDomainCrosshairValue(DZ)V#notify#0#1').
name_ref(p_notify_860, param, 'notify', 'Lorg/jfree/chart/plot/XYPlot;.setRangeCrosshairValue(DZ)V#notify#0#1').
name_ref(p_notify_865, param, 'notify', 'Lorg/jfree/chart/plot/XYPlot;.setFixedDomainAxisSpace(Lorg/jfree/chart/axis/AxisSpace;Z)V#notify#0#1').
name_ref(p_notify_868, param, 'notify', 'Lorg/jfree/chart/plot/XYPlot;.setFixedRangeAxisSpace(Lorg/jfree/chart/axis/AxisSpace;Z)V#notify#0#1').
name_ref(p_obj_1014, param, 'obj', 'Lorg/jfree/chart/util/SortOrder;.equals(Ljava/lang/Object;)Z#obj#0#0').
name_ref(p_obj_1018, param, 'obj', 'Lorg/jfree/chart/util/UnitType;.equals(Ljava/lang/Object;)Z#obj#0#0').
name_ref(p_obj_34, param, 'obj', 'Lorg/jfree/chart/axis/AxisLocation;.equals(Ljava/lang/Object;)Z#obj#0#0').
name_ref(p_obj_368, param, 'obj', 'Lorg/jfree/chart/plot/CategoryPlot;.equals(Ljava/lang/Object;)Z#obj#0#0').
name_ref(p_obj_375, param, 'obj', 'Lorg/jfree/chart/plot/DatasetRenderingOrder;.equals(Ljava/lang/Object;)Z#obj#0#0').
name_ref(p_obj_404, param, 'obj', 'Lorg/jfree/chart/plot/DefaultDrawingSupplier;.equals(Ljava/lang/Object;)Z#obj#0#0').
name_ref(p_obj_41, param, 'obj', 'Lorg/jfree/chart/axis/CategoryAnchor;.equals(Ljava/lang/Object;)Z#obj#0#0').
name_ref(p_obj_453, param, 'obj', 'Lorg/jfree/chart/plot/Marker;.equals(Ljava/lang/Object;)Z#obj#0#0').
name_ref(p_obj_537, param, 'obj', 'Lorg/jfree/chart/plot/Plot;.equals(Ljava/lang/Object;)Z#obj#0#0').
name_ref(p_obj_548, param, 'obj', 'Lorg/jfree/chart/plot/PlotOrientation;.equals(Ljava/lang/Object;)Z#obj#0#0').
name_ref(p_obj_553, param, 'obj', 'Lorg/jfree/chart/plot/SeriesRenderingOrder;.equals(Ljava/lang/Object;)Z#obj#0#0').
name_ref(p_obj_566, param, 'obj', 'Lorg/jfree/chart/plot/ValueMarker;.equals(Ljava/lang/Object;)Z#obj#0#0').
name_ref(p_obj_57, param, 'obj', 'Lorg/jfree/chart/event/ChartChangeEventType;.equals(Ljava/lang/Object;)Z#obj#0#0').
name_ref(p_obj_77, param, 'obj', 'Lorg/jfree/chart/plot/CategoryMarker;.equals(Ljava/lang/Object;)Z#obj#0#0').
name_ref(p_obj_892, param, 'obj', 'Lorg/jfree/chart/plot/XYPlot;.equals(Ljava/lang/Object;)Z#obj#0#0').
name_ref(p_obj_918, param, 'obj', 'Lorg/jfree/chart/text/TextAnchor;.equals(Ljava/lang/Object;)Z#obj#0#0').
name_ref(p_obj_932, param, 'obj', 'Lorg/jfree/chart/util/AbstractObjectList;.equals(Ljava/lang/Object;)Z#obj#0#0').
name_ref(p_obj_939, param, 'obj', 'Lorg/jfree/chart/util/Layer;.equals(Ljava/lang/Object;)Z#obj#0#0').
name_ref(p_obj_945, param, 'obj', 'Lorg/jfree/chart/util/LengthAdjustmentType;.equals(Ljava/lang/Object;)Z#obj#0#0').
name_ref(p_obj_962, param, 'obj', 'Lorg/jfree/chart/util/RectangleAnchor;.equals(Ljava/lang/Object;)Z#obj#0#0').
name_ref(p_obj_985, param, 'obj', 'Lorg/jfree/chart/util/RectangleInsets;.equals(Ljava/lang/Object;)Z#obj#0#0').
name_ref(p_object_929, param, 'object', 'Lorg/jfree/chart/util/AbstractObjectList;.set(ILjava/lang/Object;)V#object#0#1').
name_ref(p_object_931, param, 'object', 'Lorg/jfree/chart/util/AbstractObjectList;.indexOf(Ljava/lang/Object;)I#object#0#0').
name_ref(p_object_949, param, 'object', 'Lorg/jfree/chart/util/ObjectList;.set(ILjava/lang/Object;)V#object#0#1').
name_ref(p_object_950, param, 'object', 'Lorg/jfree/chart/util/ObjectList;.indexOf(Ljava/lang/Object;)I#object#0#0').
name_ref(p_offset_125, param, 'offset', 'Lorg/jfree/chart/plot/CategoryPlot;.setAxisOffset(Lorg/jfree/chart/util/RectangleInsets;)V#offset#0#0').
name_ref(p_offset_444, param, 'offset', 'Lorg/jfree/chart/plot/Marker;.setLabelOffset(Lorg/jfree/chart/util/RectangleInsets;)V#offset#0#0').
name_ref(p_offset_619, param, 'offset', 'Lorg/jfree/chart/plot/XYPlot;.setAxisOffset(Lorg/jfree/chart/util/RectangleInsets;)V#offset#0#0').
name_ref(p_order_193, param, 'order', 'Lorg/jfree/chart/plot/CategoryPlot;.setDatasetRenderingOrder(Lorg/jfree/chart/plot/DatasetRenderingOrder;)V#order#0#0').
name_ref(p_order_194, param, 'order', 'Lorg/jfree/chart/plot/CategoryPlot;.setColumnRenderingOrder(Lorg/jfree/chart/util/SortOrder;)V#order#0#0').
name_ref(p_order_195, param, 'order', 'Lorg/jfree/chart/plot/CategoryPlot;.setRowRenderingOrder(Lorg/jfree/chart/util/SortOrder;)V#order#0#0').
name_ref(p_order_678, param, 'order', 'Lorg/jfree/chart/plot/XYPlot;.setDatasetRenderingOrder(Lorg/jfree/chart/plot/DatasetRenderingOrder;)V#order#0#0').
name_ref(p_order_679, param, 'order', 'Lorg/jfree/chart/plot/XYPlot;.setSeriesRenderingOrder(Lorg/jfree/chart/plot/SeriesRenderingOrder;)V#order#0#0').
name_ref(p_orientation_124, param, 'orientation', 'Lorg/jfree/chart/plot/CategoryPlot;.setOrientation(Lorg/jfree/chart/plot/PlotOrientation;)V#orientation#0#0').
name_ref(p_orientation_326, param, 'orientation', 'Lorg/jfree/chart/plot/CategoryPlot;.drawRangeCrosshair(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/plot/PlotOrientation;DLorg/jfree/chart/axis/ValueAxis;Ljava/awt/Stroke;Ljava/awt/Paint;)V#orientation#0#2').
name_ref(p_orientation_515, param, 'orientation', 'Lorg/jfree/chart/plot/Plot;.fillBackground(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/plot/PlotOrientation;)V#orientation#0#2').
name_ref(p_orientation_541, param, 'orientation', 'Lorg/jfree/chart/plot/Plot;.resolveDomainAxisLocation(Lorg/jfree/chart/axis/AxisLocation;Lorg/jfree/chart/plot/PlotOrientation;)Lorg/jfree/chart/util/RectangleEdge;#orientation#0#1').
name_ref(p_orientation_543, param, 'orientation', 'Lorg/jfree/chart/plot/Plot;.resolveRangeAxisLocation(Lorg/jfree/chart/axis/AxisLocation;Lorg/jfree/chart/plot/PlotOrientation;)Lorg/jfree/chart/util/RectangleEdge;#orientation#0#1').
name_ref(p_orientation_618, param, 'orientation', 'Lorg/jfree/chart/plot/XYPlot;.setOrientation(Lorg/jfree/chart/plot/PlotOrientation;)V#orientation#0#0').
name_ref(p_orientation_821, param, 'orientation', 'Lorg/jfree/chart/plot/XYPlot;.drawDomainCrosshair(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/plot/PlotOrientation;DLorg/jfree/chart/axis/ValueAxis;Ljava/awt/Stroke;Ljava/awt/Paint;)V#orientation#0#2').
name_ref(p_orientation_833, param, 'orientation', 'Lorg/jfree/chart/plot/XYPlot;.drawRangeCrosshair(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/plot/PlotOrientation;DLorg/jfree/chart/axis/ValueAxis;Ljava/awt/Stroke;Ljava/awt/Paint;)V#orientation#0#2').
name_ref(p_origin_697, param, 'origin', 'Lorg/jfree/chart/plot/XYPlot;.setQuadrantOrigin(Ljava/awt/geom/Point2D;)V#origin#0#0').
name_ref(p_outline_paint_420, param, 'outlinePaint', 'Lorg/jfree/chart/plot/Marker;.(Ljava/awt/Paint;Ljava/awt/Stroke;Ljava/awt/Paint;Ljava/awt/Stroke;F)V#outlinePaint#0#2').
name_ref(p_outline_paint_562, param, 'outlinePaint', 'Lorg/jfree/chart/plot/ValueMarker;.(DLjava/awt/Paint;Ljava/awt/Stroke;Ljava/awt/Paint;Ljava/awt/Stroke;F)V#outlinePaint#0#3').
name_ref(p_outline_paint_71, param, 'outlinePaint', 'Lorg/jfree/chart/plot/CategoryMarker;.(Ljava/lang/Comparable;Ljava/awt/Paint;Ljava/awt/Stroke;Ljava/awt/Paint;Ljava/awt/Stroke;F)V#outlinePaint#0#3').
name_ref(p_outline_paint_sequence_383, param, 'outlinePaintSequence', 'Lorg/jfree/chart/plot/DefaultDrawingSupplier;.([Ljava/awt/Paint;[Ljava/awt/Paint;[Ljava/awt/Stroke;[Ljava/awt/Stroke;[Ljava/awt/Shape;)V#outlinePaintSequence#0#1').
name_ref(p_outline_paint_sequence_389, param, 'outlinePaintSequence', 'Lorg/jfree/chart/plot/DefaultDrawingSupplier;.([Ljava/awt/Paint;[Ljava/awt/Paint;[Ljava/awt/Paint;[Ljava/awt/Stroke;[Ljava/awt/Stroke;[Ljava/awt/Shape;)V#outlinePaintSequence#0#2').
name_ref(p_outline_stroke_421, param, 'outlineStroke', 'Lorg/jfree/chart/plot/Marker;.(Ljava/awt/Paint;Ljava/awt/Stroke;Ljava/awt/Paint;Ljava/awt/Stroke;F)V#outlineStroke#0#3').
name_ref(p_outline_stroke_563, param, 'outlineStroke', 'Lorg/jfree/chart/plot/ValueMarker;.(DLjava/awt/Paint;Ljava/awt/Stroke;Ljava/awt/Paint;Ljava/awt/Stroke;F)V#outlineStroke#0#4').
name_ref(p_outline_stroke_72, param, 'outlineStroke', 'Lorg/jfree/chart/plot/CategoryMarker;.(Ljava/lang/Comparable;Ljava/awt/Paint;Ljava/awt/Stroke;Ljava/awt/Paint;Ljava/awt/Stroke;F)V#outlineStroke#0#4').
name_ref(p_outline_stroke_sequence_385, param, 'outlineStrokeSequence', 'Lorg/jfree/chart/plot/DefaultDrawingSupplier;.([Ljava/awt/Paint;[Ljava/awt/Paint;[Ljava/awt/Stroke;[Ljava/awt/Stroke;[Ljava/awt/Shape;)V#outlineStrokeSequence#0#3').
name_ref(p_outline_stroke_sequence_391, param, 'outlineStrokeSequence', 'Lorg/jfree/chart/plot/DefaultDrawingSupplier;.([Ljava/awt/Paint;[Ljava/awt/Paint;[Ljava/awt/Paint;[Ljava/awt/Stroke;[Ljava/awt/Stroke;[Ljava/awt/Shape;)V#outlineStrokeSequence#0#4').
name_ref(p_paint_199, param, 'paint', 'Lorg/jfree/chart/plot/CategoryPlot;.setDomainGridlinePaint(Ljava/awt/Paint;)V#paint#0#0').
name_ref(p_paint_202, param, 'paint', 'Lorg/jfree/chart/plot/CategoryPlot;.setRangeGridlinePaint(Ljava/awt/Paint;)V#paint#0#0').
name_ref(p_paint_273, param, 'paint', 'Lorg/jfree/chart/plot/CategoryPlot;.setRangeCrosshairPaint(Ljava/awt/Paint;)V#paint#0#0').
name_ref(p_paint_323, param, 'paint', 'Lorg/jfree/chart/plot/CategoryPlot;.drawRangeLine(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;DLjava/awt/Stroke;Ljava/awt/Paint;)V#paint#0#4').
name_ref(p_paint_330, param, 'paint', 'Lorg/jfree/chart/plot/CategoryPlot;.drawRangeCrosshair(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/plot/PlotOrientation;DLorg/jfree/chart/axis/ValueAxis;Ljava/awt/Stroke;Ljava/awt/Paint;)V#paint#0#6').
name_ref(p_paint_417, param, 'paint', 'Lorg/jfree/chart/plot/Marker;.(Ljava/awt/Paint;)V#paint#0#0').
name_ref(p_paint_418, param, 'paint', 'Lorg/jfree/chart/plot/Marker;.(Ljava/awt/Paint;Ljava/awt/Stroke;Ljava/awt/Paint;Ljava/awt/Stroke;F)V#paint#0#0').
name_ref(p_paint_435, param, 'paint', 'Lorg/jfree/chart/plot/Marker;.setPaint(Ljava/awt/Paint;)V#paint#0#0').
name_ref(p_paint_437, param, 'paint', 'Lorg/jfree/chart/plot/Marker;.setOutlinePaint(Ljava/awt/Paint;)V#paint#0#0').
name_ref(p_paint_442, param, 'paint', 'Lorg/jfree/chart/plot/Marker;.setLabelPaint(Ljava/awt/Paint;)V#paint#0#0').
name_ref(p_paint_484, param, 'paint', 'Lorg/jfree/chart/plot/Plot;.setNoDataMessagePaint(Ljava/awt/Paint;)V#paint#0#0').
name_ref(p_paint_489, param, 'paint', 'Lorg/jfree/chart/plot/Plot;.setBackgroundPaint(Ljava/awt/Paint;)V#paint#0#0').
name_ref(p_paint_497, param, 'paint', 'Lorg/jfree/chart/plot/Plot;.setOutlinePaint(Ljava/awt/Paint;)V#paint#0#0').
name_ref(p_paint_557, param, 'paint', 'Lorg/jfree/chart/plot/ValueMarker;.(DLjava/awt/Paint;Ljava/awt/Stroke;)V#paint#0#1').
name_ref(p_paint_560, param, 'paint', 'Lorg/jfree/chart/plot/ValueMarker;.(DLjava/awt/Paint;Ljava/awt/Stroke;Ljava/awt/Paint;Ljava/awt/Stroke;F)V#paint#0#1').
name_ref(p_paint_66, param, 'paint', 'Lorg/jfree/chart/plot/CategoryMarker;.(Ljava/lang/Comparable;Ljava/awt/Paint;Ljava/awt/Stroke;)V#paint#0#1').
name_ref(p_paint_685, param, 'paint', 'Lorg/jfree/chart/plot/XYPlot;.setDomainGridlinePaint(Ljava/awt/Paint;)V#paint#0#0').
name_ref(p_paint_688, param, 'paint', 'Lorg/jfree/chart/plot/XYPlot;.setRangeGridlinePaint(Ljava/awt/Paint;)V#paint#0#0').
name_ref(p_paint_69, param, 'paint', 'Lorg/jfree/chart/plot/CategoryMarker;.(Ljava/lang/Comparable;Ljava/awt/Paint;Ljava/awt/Stroke;Ljava/awt/Paint;Ljava/awt/Stroke;F)V#paint#0#1').
name_ref(p_paint_691, param, 'paint', 'Lorg/jfree/chart/plot/XYPlot;.setDomainZeroBaselinePaint(Ljava/awt/Paint;)V#paint#0#0').
name_ref(p_paint_694, param, 'paint', 'Lorg/jfree/chart/plot/XYPlot;.setRangeZeroBaselinePaint(Ljava/awt/Paint;)V#paint#0#0').
name_ref(p_paint_695, param, 'paint', 'Lorg/jfree/chart/plot/XYPlot;.setDomainTickBandPaint(Ljava/awt/Paint;)V#paint#0#0').
name_ref(p_paint_696, param, 'paint', 'Lorg/jfree/chart/plot/XYPlot;.setRangeTickBandPaint(Ljava/awt/Paint;)V#paint#0#0').
name_ref(p_paint_700, param, 'paint', 'Lorg/jfree/chart/plot/XYPlot;.setQuadrantPaint(ILjava/awt/Paint;)V#paint#0#1').
name_ref(p_paint_818, param, 'paint', 'Lorg/jfree/chart/plot/XYPlot;.drawHorizontalLine(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;DLjava/awt/Stroke;Ljava/awt/Paint;)V#paint#0#4').
name_ref(p_paint_825, param, 'paint', 'Lorg/jfree/chart/plot/XYPlot;.drawDomainCrosshair(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/plot/PlotOrientation;DLorg/jfree/chart/axis/ValueAxis;Ljava/awt/Stroke;Ljava/awt/Paint;)V#paint#0#6').
name_ref(p_paint_830, param, 'paint', 'Lorg/jfree/chart/plot/XYPlot;.drawVerticalLine(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;DLjava/awt/Stroke;Ljava/awt/Paint;)V#paint#0#4').
name_ref(p_paint_837, param, 'paint', 'Lorg/jfree/chart/plot/XYPlot;.drawRangeCrosshair(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/plot/PlotOrientation;DLorg/jfree/chart/axis/ValueAxis;Ljava/awt/Stroke;Ljava/awt/Paint;)V#paint#0#6').
name_ref(p_paint_855, param, 'paint', 'Lorg/jfree/chart/plot/XYPlot;.setDomainCrosshairPaint(Ljava/awt/Paint;)V#paint#0#0').
name_ref(p_paint_862, param, 'paint', 'Lorg/jfree/chart/plot/XYPlot;.setRangeCrosshairPaint(Ljava/awt/Paint;)V#paint#0#0').
name_ref(p_paint_sequence_382, param, 'paintSequence', 'Lorg/jfree/chart/plot/DefaultDrawingSupplier;.([Ljava/awt/Paint;[Ljava/awt/Paint;[Ljava/awt/Stroke;[Ljava/awt/Stroke;[Ljava/awt/Shape;)V#paintSequence#0#0').
name_ref(p_paint_sequence_387, param, 'paintSequence', 'Lorg/jfree/chart/plot/DefaultDrawingSupplier;.([Ljava/awt/Paint;[Ljava/awt/Paint;[Ljava/awt/Paint;[Ljava/awt/Stroke;[Ljava/awt/Stroke;[Ljava/awt/Shape;)V#paintSequence#0#0').
name_ref(p_parent_485, param, 'parent', 'Lorg/jfree/chart/plot/Plot;.setParent(Lorg/jfree/chart/plot/Plot;)V#parent#0#0').
name_ref(p_parent_state_291, param, 'parentState', 'Lorg/jfree/chart/plot/CategoryPlot;.draw(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Point2D;Lorg/jfree/chart/plot/PlotState;Lorg/jfree/chart/plot/PlotRenderingInfo;)V#parentState#0#3').
name_ref(p_parent_state_507, param, 'parentState', 'Lorg/jfree/chart/plot/Plot;.draw(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Point2D;Lorg/jfree/chart/plot/PlotState;Lorg/jfree/chart/plot/PlotRenderingInfo;)V#parentState#0#3').
name_ref(p_parent_state_764, param, 'parentState', 'Lorg/jfree/chart/plot/XYPlot;.draw(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Point2D;Lorg/jfree/chart/plot/PlotState;Lorg/jfree/chart/plot/PlotRenderingInfo;)V#parentState#0#3').
name_ref(p_percent_207, param, 'percent', 'Lorg/jfree/chart/plot/CategoryPlot;.zoom(D)V#percent#0#0').
name_ref(p_percent_525, param, 'percent', 'Lorg/jfree/chart/plot/Plot;.zoom(D)V#percent#0#0').
name_ref(p_plot_60, param, 'plot', 'Lorg/jfree/chart/event/PlotChangeEvent;.(Lorg/jfree/chart/plot/Plot;)V#plot#0#0').
name_ref(p_plot_area_281, param, 'plotArea', 'Lorg/jfree/chart/plot/CategoryPlot;.calculateDomainAxisSpace(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/axis/AxisSpace;)Lorg/jfree/chart/axis/AxisSpace;#plotArea#0#1').
name_ref(p_plot_area_284, param, 'plotArea', 'Lorg/jfree/chart/plot/CategoryPlot;.calculateRangeAxisSpace(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/axis/AxisSpace;)Lorg/jfree/chart/axis/AxisSpace;#plotArea#0#1').
name_ref(p_plot_area_287, param, 'plotArea', 'Lorg/jfree/chart/plot/CategoryPlot;.calculateAxisSpace(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)Lorg/jfree/chart/axis/AxisSpace;#plotArea#0#1').
name_ref(p_plot_area_296, param, 'plotArea', 'Lorg/jfree/chart/plot/CategoryPlot;.drawAxes(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/plot/PlotRenderingInfo;)Ljava/util/Map;#plotArea#0#1').
name_ref(p_plot_area_754, param, 'plotArea', 'Lorg/jfree/chart/plot/XYPlot;.calculateAxisSpace(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)Lorg/jfree/chart/axis/AxisSpace;#plotArea#0#1').
name_ref(p_plot_area_756, param, 'plotArea', 'Lorg/jfree/chart/plot/XYPlot;.calculateDomainAxisSpace(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/axis/AxisSpace;)Lorg/jfree/chart/axis/AxisSpace;#plotArea#0#1').
name_ref(p_plot_area_759, param, 'plotArea', 'Lorg/jfree/chart/plot/XYPlot;.calculateRangeAxisSpace(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/axis/AxisSpace;)Lorg/jfree/chart/axis/AxisSpace;#plotArea#0#1').
name_ref(p_plot_area_777, param, 'plotArea', 'Lorg/jfree/chart/plot/XYPlot;.drawAxes(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/plot/PlotRenderingInfo;)Ljava/util/Map;#plotArea#0#1').
name_ref(p_plot_state_298, param, 'plotState', 'Lorg/jfree/chart/plot/CategoryPlot;.drawAxes(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/plot/PlotRenderingInfo;)Ljava/util/Map;#plotState#0#3').
name_ref(p_plot_state_779, param, 'plotState', 'Lorg/jfree/chart/plot/XYPlot;.drawAxes(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/plot/PlotRenderingInfo;)Ljava/util/Map;#plotState#0#3').
name_ref(p_position_197, param, 'position', 'Lorg/jfree/chart/plot/CategoryPlot;.setDomainGridlinePosition(Lorg/jfree/chart/axis/CategoryAnchor;)V#position#0#0').
name_ref(p_r_25, param, 'r', 'Lorg/jfree/chart/ChartColor;.(III)V#r#0#0').
name_ref(p_range_axis_580, param, 'rangeAxis', 'Lorg/jfree/chart/plot/XYPlot;.(Lorg/jfree/data/xy/XYDataset;Lorg/jfree/chart/axis/ValueAxis;Lorg/jfree/chart/axis/ValueAxis;Lorg/jfree/chart/renderer/xy/XYItemRenderer;)V#rangeAxis#0#2').
name_ref(p_range_axis_90, param, 'rangeAxis', 'Lorg/jfree/chart/plot/CategoryPlot;.(Lorg/jfree/data/category/CategoryDataset;Lorg/jfree/chart/axis/CategoryAxis;Lorg/jfree/chart/axis/ValueAxis;Lorg/jfree/chart/renderer/category/CategoryItemRenderer;)V#rangeAxis#0#2').
name_ref(p_rectangle_963, param, 'rectangle', 'Lorg/jfree/chart/util/RectangleAnchor;.coordinates(Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/util/RectangleAnchor;)Ljava/awt/geom/Point2D;#rectangle#0#0').
name_ref(p_renderer_182, param, 'renderer', 'Lorg/jfree/chart/plot/CategoryPlot;.setRenderer(Lorg/jfree/chart/renderer/category/CategoryItemRenderer;)V#renderer#0#0').
name_ref(p_renderer_183, param, 'renderer', 'Lorg/jfree/chart/plot/CategoryPlot;.setRenderer(Lorg/jfree/chart/renderer/category/CategoryItemRenderer;Z)V#renderer#0#0').
name_ref(p_renderer_186, param, 'renderer', 'Lorg/jfree/chart/plot/CategoryPlot;.setRenderer(ILorg/jfree/chart/renderer/category/CategoryItemRenderer;)V#renderer#0#1').
name_ref(p_renderer_188, param, 'renderer', 'Lorg/jfree/chart/plot/CategoryPlot;.setRenderer(ILorg/jfree/chart/renderer/category/CategoryItemRenderer;Z)V#renderer#0#1').
name_ref(p_renderer_192, param, 'renderer', 'Lorg/jfree/chart/plot/CategoryPlot;.getIndexOf(Lorg/jfree/chart/renderer/category/CategoryItemRenderer;)I#renderer#0#0').
name_ref(p_renderer_581, param, 'renderer', 'Lorg/jfree/chart/plot/XYPlot;.(Lorg/jfree/data/xy/XYDataset;Lorg/jfree/chart/axis/ValueAxis;Lorg/jfree/chart/axis/ValueAxis;Lorg/jfree/chart/renderer/xy/XYItemRenderer;)V#renderer#0#3').
name_ref(p_renderer_671, param, 'renderer', 'Lorg/jfree/chart/plot/XYPlot;.setRenderer(Lorg/jfree/chart/renderer/xy/XYItemRenderer;)V#renderer#0#0').
name_ref(p_renderer_673, param, 'renderer', 'Lorg/jfree/chart/plot/XYPlot;.setRenderer(ILorg/jfree/chart/renderer/xy/XYItemRenderer;)V#renderer#0#1').
name_ref(p_renderer_675, param, 'renderer', 'Lorg/jfree/chart/plot/XYPlot;.setRenderer(ILorg/jfree/chart/renderer/xy/XYItemRenderer;Z)V#renderer#0#1').
name_ref(p_renderer_680, param, 'renderer', 'Lorg/jfree/chart/plot/XYPlot;.getIndexOf(Lorg/jfree/chart/renderer/xy/XYItemRenderer;)I#renderer#0#0').
name_ref(p_renderer_91, param, 'renderer', 'Lorg/jfree/chart/plot/CategoryPlot;.(Lorg/jfree/data/category/CategoryDataset;Lorg/jfree/chart/axis/CategoryAxis;Lorg/jfree/chart/axis/ValueAxis;Lorg/jfree/chart/renderer/category/CategoryItemRenderer;)V#renderer#0#3').
name_ref(p_renderers_190, param, 'renderers', 'Lorg/jfree/chart/plot/CategoryPlot;.setRenderers([Lorg/jfree/chart/renderer/category/CategoryItemRenderer;)V#renderers#0#0').
name_ref(p_renderers_677, param, 'renderers', 'Lorg/jfree/chart/plot/XYPlot;.setRenderers([Lorg/jfree/chart/renderer/xy/XYItemRenderer;)V#renderers#0#0').
name_ref(p_right_973, param, 'right', 'Lorg/jfree/chart/util/RectangleInsets;.(DDDD)V#right#0#3').
name_ref(p_right_979, param, 'right', 'Lorg/jfree/chart/util/RectangleInsets;.(Lorg/jfree/chart/util/UnitType;DDDD)V#right#0#4').
name_ref(p_s_1_405, param, 's1', 'Lorg/jfree/chart/plot/DefaultDrawingSupplier;.equalShapes([Ljava/awt/Shape;[Ljava/awt/Shape;)Z#s1#0#0').
name_ref(p_s_2_406, param, 's2', 'Lorg/jfree/chart/plot/DefaultDrawingSupplier;.equalShapes([Ljava/awt/Shape;[Ljava/awt/Shape;)Z#s2#0#1').
name_ref(p_shape_sequence_386, param, 'shapeSequence', 'Lorg/jfree/chart/plot/DefaultDrawingSupplier;.([Ljava/awt/Paint;[Ljava/awt/Paint;[Ljava/awt/Stroke;[Ljava/awt/Stroke;[Ljava/awt/Shape;)V#shapeSequence#0#4').
name_ref(p_shape_sequence_392, param, 'shapeSequence', 'Lorg/jfree/chart/plot/DefaultDrawingSupplier;.([Ljava/awt/Paint;[Ljava/awt/Paint;[Ljava/awt/Paint;[Ljava/awt/Stroke;[Ljava/awt/Stroke;[Ljava/awt/Shape;)V#shapeSequence#0#5').
name_ref(p_source_345, param, 'source', 'Lorg/jfree/chart/plot/CategoryPlot;.zoomDomainAxes(DLorg/jfree/chart/plot/PlotRenderingInfo;Ljava/awt/geom/Point2D;)V#source#0#2').
name_ref(p_source_349, param, 'source', 'Lorg/jfree/chart/plot/CategoryPlot;.zoomDomainAxes(DDLorg/jfree/chart/plot/PlotRenderingInfo;Ljava/awt/geom/Point2D;)V#source#0#3').
name_ref(p_source_352, param, 'source', 'Lorg/jfree/chart/plot/CategoryPlot;.zoomDomainAxes(DLorg/jfree/chart/plot/PlotRenderingInfo;Ljava/awt/geom/Point2D;Z)V#source#0#2').
name_ref(p_source_356, param, 'source', 'Lorg/jfree/chart/plot/CategoryPlot;.zoomRangeAxes(DLorg/jfree/chart/plot/PlotRenderingInfo;Ljava/awt/geom/Point2D;)V#source#0#2').
name_ref(p_source_359, param, 'source', 'Lorg/jfree/chart/plot/CategoryPlot;.zoomRangeAxes(DLorg/jfree/chart/plot/PlotRenderingInfo;Ljava/awt/geom/Point2D;Z)V#source#0#2').
name_ref(p_source_364, param, 'source', 'Lorg/jfree/chart/plot/CategoryPlot;.zoomRangeAxes(DDLorg/jfree/chart/plot/PlotRenderingInfo;Ljava/awt/geom/Point2D;)V#source#0#3').
name_ref(p_source_42, param, 'source', 'Lorg/jfree/chart/event/ChartChangeEvent;.(Ljava/lang/Object;)V#source#0#0').
name_ref(p_source_44, param, 'source', 'Lorg/jfree/chart/event/ChartChangeEvent;.(Ljava/lang/Object;Lorg/jfree/chart/JFreeChart;)V#source#0#0').
name_ref(p_source_46, param, 'source', 'Lorg/jfree/chart/event/ChartChangeEvent;.(Ljava/lang/Object;Lorg/jfree/chart/JFreeChart;Lorg/jfree/chart/event/ChartChangeEventType;)V#source#0#0').
name_ref(p_source_871, param, 'source', 'Lorg/jfree/chart/plot/XYPlot;.zoomDomainAxes(DLorg/jfree/chart/plot/PlotRenderingInfo;Ljava/awt/geom/Point2D;)V#source#0#2').
name_ref(p_source_874, param, 'source', 'Lorg/jfree/chart/plot/XYPlot;.zoomDomainAxes(DLorg/jfree/chart/plot/PlotRenderingInfo;Ljava/awt/geom/Point2D;Z)V#source#0#2').
name_ref(p_source_879, param, 'source', 'Lorg/jfree/chart/plot/XYPlot;.zoomDomainAxes(DDLorg/jfree/chart/plot/PlotRenderingInfo;Ljava/awt/geom/Point2D;)V#source#0#3').
name_ref(p_source_882, param, 'source', 'Lorg/jfree/chart/plot/XYPlot;.zoomRangeAxes(DLorg/jfree/chart/plot/PlotRenderingInfo;Ljava/awt/geom/Point2D;)V#source#0#2').
name_ref(p_source_885, param, 'source', 'Lorg/jfree/chart/plot/XYPlot;.zoomRangeAxes(DLorg/jfree/chart/plot/PlotRenderingInfo;Ljava/awt/geom/Point2D;Z)V#source#0#2').
name_ref(p_source_890, param, 'source', 'Lorg/jfree/chart/plot/XYPlot;.zoomRangeAxes(DDLorg/jfree/chart/plot/PlotRenderingInfo;Ljava/awt/geom/Point2D;)V#source#0#3').
name_ref(p_space_282, param, 'space', 'Lorg/jfree/chart/plot/CategoryPlot;.calculateDomainAxisSpace(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/axis/AxisSpace;)Lorg/jfree/chart/axis/AxisSpace;#space#0#2').
name_ref(p_space_285, param, 'space', 'Lorg/jfree/chart/plot/CategoryPlot;.calculateRangeAxisSpace(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/axis/AxisSpace;)Lorg/jfree/chart/axis/AxisSpace;#space#0#2').
name_ref(p_space_335, param, 'space', 'Lorg/jfree/chart/plot/CategoryPlot;.setFixedDomainAxisSpace(Lorg/jfree/chart/axis/AxisSpace;)V#space#0#0').
name_ref(p_space_336, param, 'space', 'Lorg/jfree/chart/plot/CategoryPlot;.setFixedDomainAxisSpace(Lorg/jfree/chart/axis/AxisSpace;Z)V#space#0#0').
name_ref(p_space_338, param, 'space', 'Lorg/jfree/chart/plot/CategoryPlot;.setFixedRangeAxisSpace(Lorg/jfree/chart/axis/AxisSpace;)V#space#0#0').
name_ref(p_space_339, param, 'space', 'Lorg/jfree/chart/plot/CategoryPlot;.setFixedRangeAxisSpace(Lorg/jfree/chart/axis/AxisSpace;Z)V#space#0#0').
name_ref(p_space_757, param, 'space', 'Lorg/jfree/chart/plot/XYPlot;.calculateDomainAxisSpace(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/axis/AxisSpace;)Lorg/jfree/chart/axis/AxisSpace;#space#0#2').
name_ref(p_space_760, param, 'space', 'Lorg/jfree/chart/plot/XYPlot;.calculateRangeAxisSpace(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/axis/AxisSpace;)Lorg/jfree/chart/axis/AxisSpace;#space#0#2').
name_ref(p_space_863, param, 'space', 'Lorg/jfree/chart/plot/XYPlot;.setFixedDomainAxisSpace(Lorg/jfree/chart/axis/AxisSpace;)V#space#0#0').
name_ref(p_space_864, param, 'space', 'Lorg/jfree/chart/plot/XYPlot;.setFixedDomainAxisSpace(Lorg/jfree/chart/axis/AxisSpace;Z)V#space#0#0').
name_ref(p_space_866, param, 'space', 'Lorg/jfree/chart/plot/XYPlot;.setFixedRangeAxisSpace(Lorg/jfree/chart/axis/AxisSpace;)V#space#0#0').
name_ref(p_space_867, param, 'space', 'Lorg/jfree/chart/plot/XYPlot;.setFixedRangeAxisSpace(Lorg/jfree/chart/axis/AxisSpace;Z)V#space#0#0').
name_ref(p_state_292, param, 'state', 'Lorg/jfree/chart/plot/CategoryPlot;.draw(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Point2D;Lorg/jfree/chart/plot/PlotState;Lorg/jfree/chart/plot/PlotRenderingInfo;)V#state#0#4').
name_ref(p_state_344, param, 'state', 'Lorg/jfree/chart/plot/CategoryPlot;.zoomDomainAxes(DLorg/jfree/chart/plot/PlotRenderingInfo;Ljava/awt/geom/Point2D;)V#state#0#1').
name_ref(p_state_348, param, 'state', 'Lorg/jfree/chart/plot/CategoryPlot;.zoomDomainAxes(DDLorg/jfree/chart/plot/PlotRenderingInfo;Ljava/awt/geom/Point2D;)V#state#0#2').
name_ref(p_state_355, param, 'state', 'Lorg/jfree/chart/plot/CategoryPlot;.zoomRangeAxes(DLorg/jfree/chart/plot/PlotRenderingInfo;Ljava/awt/geom/Point2D;)V#state#0#1').
name_ref(p_state_363, param, 'state', 'Lorg/jfree/chart/plot/CategoryPlot;.zoomRangeAxes(DDLorg/jfree/chart/plot/PlotRenderingInfo;Ljava/awt/geom/Point2D;)V#state#0#2').
name_ref(p_stream_369, param, 'stream', 'Lorg/jfree/chart/plot/CategoryPlot;.writeObject(Ljava/io/ObjectOutputStream;)V|Ljava/io/IOException;#stream#0#0').
name_ref(p_stream_370, param, 'stream', 'Lorg/jfree/chart/plot/CategoryPlot;.readObject(Ljava/io/ObjectInputStream;)V|Ljava/io/IOException;|Ljava/lang/ClassNotFoundException;#stream#0#0').
name_ref(p_stream_407, param, 'stream', 'Lorg/jfree/chart/plot/DefaultDrawingSupplier;.writeObject(Ljava/io/ObjectOutputStream;)V|Ljava/io/IOException;#stream#0#0').
name_ref(p_stream_408, param, 'stream', 'Lorg/jfree/chart/plot/DefaultDrawingSupplier;.readObject(Ljava/io/ObjectInputStream;)V|Ljava/io/IOException;|Ljava/lang/ClassNotFoundException;#stream#0#0').
name_ref(p_stream_454, param, 'stream', 'Lorg/jfree/chart/plot/Marker;.writeObject(Ljava/io/ObjectOutputStream;)V|Ljava/io/IOException;#stream#0#0').
name_ref(p_stream_455, param, 'stream', 'Lorg/jfree/chart/plot/Marker;.readObject(Ljava/io/ObjectInputStream;)V|Ljava/io/IOException;|Ljava/lang/ClassNotFoundException;#stream#0#0').
name_ref(p_stream_538, param, 'stream', 'Lorg/jfree/chart/plot/Plot;.writeObject(Ljava/io/ObjectOutputStream;)V|Ljava/io/IOException;#stream#0#0').
name_ref(p_stream_539, param, 'stream', 'Lorg/jfree/chart/plot/Plot;.readObject(Ljava/io/ObjectInputStream;)V|Ljava/io/IOException;|Ljava/lang/ClassNotFoundException;#stream#0#0').
name_ref(p_stream_893, param, 'stream', 'Lorg/jfree/chart/plot/XYPlot;.writeObject(Ljava/io/ObjectOutputStream;)V|Ljava/io/IOException;#stream#0#0').
name_ref(p_stream_894, param, 'stream', 'Lorg/jfree/chart/plot/XYPlot;.readObject(Ljava/io/ObjectInputStream;)V|Ljava/io/IOException;|Ljava/lang/ClassNotFoundException;#stream#0#0').
name_ref(p_stream_933, param, 'stream', 'Lorg/jfree/chart/util/AbstractObjectList;.writeObject(Ljava/io/ObjectOutputStream;)V|Ljava/io/IOException;#stream#0#0').
name_ref(p_stream_934, param, 'stream', 'Lorg/jfree/chart/util/AbstractObjectList;.readObject(Ljava/io/ObjectInputStream;)V|Ljava/io/IOException;|Ljava/lang/ClassNotFoundException;#stream#0#0').
name_ref(p_stroke_198, param, 'stroke', 'Lorg/jfree/chart/plot/CategoryPlot;.setDomainGridlineStroke(Ljava/awt/Stroke;)V#stroke#0#0').
name_ref(p_stroke_201, param, 'stroke', 'Lorg/jfree/chart/plot/CategoryPlot;.setRangeGridlineStroke(Ljava/awt/Stroke;)V#stroke#0#0').
name_ref(p_stroke_272, param, 'stroke', 'Lorg/jfree/chart/plot/CategoryPlot;.setRangeCrosshairStroke(Ljava/awt/Stroke;)V#stroke#0#0').
name_ref(p_stroke_322, param, 'stroke', 'Lorg/jfree/chart/plot/CategoryPlot;.drawRangeLine(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;DLjava/awt/Stroke;Ljava/awt/Paint;)V#stroke#0#3').
name_ref(p_stroke_329, param, 'stroke', 'Lorg/jfree/chart/plot/CategoryPlot;.drawRangeCrosshair(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/plot/PlotOrientation;DLorg/jfree/chart/axis/ValueAxis;Ljava/awt/Stroke;Ljava/awt/Paint;)V#stroke#0#5').
name_ref(p_stroke_419, param, 'stroke', 'Lorg/jfree/chart/plot/Marker;.(Ljava/awt/Paint;Ljava/awt/Stroke;Ljava/awt/Paint;Ljava/awt/Stroke;F)V#stroke#0#1').
name_ref(p_stroke_436, param, 'stroke', 'Lorg/jfree/chart/plot/Marker;.setStroke(Ljava/awt/Stroke;)V#stroke#0#0').
name_ref(p_stroke_438, param, 'stroke', 'Lorg/jfree/chart/plot/Marker;.setOutlineStroke(Ljava/awt/Stroke;)V#stroke#0#0').
name_ref(p_stroke_496, param, 'stroke', 'Lorg/jfree/chart/plot/Plot;.setOutlineStroke(Ljava/awt/Stroke;)V#stroke#0#0').
name_ref(p_stroke_558, param, 'stroke', 'Lorg/jfree/chart/plot/ValueMarker;.(DLjava/awt/Paint;Ljava/awt/Stroke;)V#stroke#0#2').
name_ref(p_stroke_561, param, 'stroke', 'Lorg/jfree/chart/plot/ValueMarker;.(DLjava/awt/Paint;Ljava/awt/Stroke;Ljava/awt/Paint;Ljava/awt/Stroke;F)V#stroke#0#2').
name_ref(p_stroke_67, param, 'stroke', 'Lorg/jfree/chart/plot/CategoryMarker;.(Ljava/lang/Comparable;Ljava/awt/Paint;Ljava/awt/Stroke;)V#stroke#0#2').
name_ref(p_stroke_684, param, 'stroke', 'Lorg/jfree/chart/plot/XYPlot;.setDomainGridlineStroke(Ljava/awt/Stroke;)V#stroke#0#0').
name_ref(p_stroke_687, param, 'stroke', 'Lorg/jfree/chart/plot/XYPlot;.setRangeGridlineStroke(Ljava/awt/Stroke;)V#stroke#0#0').
name_ref(p_stroke_690, param, 'stroke', 'Lorg/jfree/chart/plot/XYPlot;.setDomainZeroBaselineStroke(Ljava/awt/Stroke;)V#stroke#0#0').
name_ref(p_stroke_693, param, 'stroke', 'Lorg/jfree/chart/plot/XYPlot;.setRangeZeroBaselineStroke(Ljava/awt/Stroke;)V#stroke#0#0').
name_ref(p_stroke_70, param, 'stroke', 'Lorg/jfree/chart/plot/CategoryMarker;.(Ljava/lang/Comparable;Ljava/awt/Paint;Ljava/awt/Stroke;Ljava/awt/Paint;Ljava/awt/Stroke;F)V#stroke#0#2').
name_ref(p_stroke_817, param, 'stroke', 'Lorg/jfree/chart/plot/XYPlot;.drawHorizontalLine(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;DLjava/awt/Stroke;Ljava/awt/Paint;)V#stroke#0#3').
name_ref(p_stroke_824, param, 'stroke', 'Lorg/jfree/chart/plot/XYPlot;.drawDomainCrosshair(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/plot/PlotOrientation;DLorg/jfree/chart/axis/ValueAxis;Ljava/awt/Stroke;Ljava/awt/Paint;)V#stroke#0#5').
name_ref(p_stroke_829, param, 'stroke', 'Lorg/jfree/chart/plot/XYPlot;.drawVerticalLine(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;DLjava/awt/Stroke;Ljava/awt/Paint;)V#stroke#0#3').
name_ref(p_stroke_836, param, 'stroke', 'Lorg/jfree/chart/plot/XYPlot;.drawRangeCrosshair(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/plot/PlotOrientation;DLorg/jfree/chart/axis/ValueAxis;Ljava/awt/Stroke;Ljava/awt/Paint;)V#stroke#0#5').
name_ref(p_stroke_854, param, 'stroke', 'Lorg/jfree/chart/plot/XYPlot;.setDomainCrosshairStroke(Ljava/awt/Stroke;)V#stroke#0#0').
name_ref(p_stroke_861, param, 'stroke', 'Lorg/jfree/chart/plot/XYPlot;.setRangeCrosshairStroke(Ljava/awt/Stroke;)V#stroke#0#0').
name_ref(p_stroke_sequence_384, param, 'strokeSequence', 'Lorg/jfree/chart/plot/DefaultDrawingSupplier;.([Ljava/awt/Paint;[Ljava/awt/Paint;[Ljava/awt/Stroke;[Ljava/awt/Stroke;[Ljava/awt/Shape;)V#strokeSequence#0#2').
name_ref(p_stroke_sequence_390, param, 'strokeSequence', 'Lorg/jfree/chart/plot/DefaultDrawingSupplier;.([Ljava/awt/Paint;[Ljava/awt/Paint;[Ljava/awt/Paint;[Ljava/awt/Stroke;[Ljava/awt/Stroke;[Ljava/awt/Shape;)V#strokeSequence#0#3').
name_ref(p_supplier_491, param, 'supplier', 'Lorg/jfree/chart/plot/Plot;.setDrawingSupplier(Lorg/jfree/chart/plot/DrawingSupplier;)V#supplier#0#0').
name_ref(p_ticks_307, param, 'ticks', 'Lorg/jfree/chart/plot/CategoryPlot;.drawRangeGridlines(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/util/List;)V#ticks#0#2').
name_ref(p_ticks_772, param, 'ticks', 'Lorg/jfree/chart/plot/XYPlot;.drawDomainTickBands(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/util/List;)V#ticks#0#2').
name_ref(p_ticks_775, param, 'ticks', 'Lorg/jfree/chart/plot/XYPlot;.drawRangeTickBands(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/util/List;)V#ticks#0#2').
name_ref(p_ticks_789, param, 'ticks', 'Lorg/jfree/chart/plot/XYPlot;.drawDomainGridlines(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/util/List;)V#ticks#0#2').
name_ref(p_ticks_792, param, 'ticks', 'Lorg/jfree/chart/plot/XYPlot;.drawRangeGridlines(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/util/List;)V#ticks#0#2').
name_ref(p_top_970, param, 'top', 'Lorg/jfree/chart/util/RectangleInsets;.(DDDD)V#top#0#0').
name_ref(p_top_976, param, 'top', 'Lorg/jfree/chart/util/RectangleInsets;.(Lorg/jfree/chart/util/UnitType;DDDD)V#top#0#1').
name_ref(p_type_48, param, 'type', 'Lorg/jfree/chart/event/ChartChangeEvent;.(Ljava/lang/Object;Lorg/jfree/chart/JFreeChart;Lorg/jfree/chart/event/ChartChangeEventType;)V#type#0#2').
name_ref(p_type_52, param, 'type', 'Lorg/jfree/chart/event/ChartChangeEvent;.setType(Lorg/jfree/chart/event/ChartChangeEventType;)V#type#0#0').
name_ref(p_unit_type_975, param, 'unitType', 'Lorg/jfree/chart/util/RectangleInsets;.(Lorg/jfree/chart/util/UnitType;DDDD)V#unitType#0#0').
name_ref(p_upper_percent_347, param, 'upperPercent', 'Lorg/jfree/chart/plot/CategoryPlot;.zoomDomainAxes(DDLorg/jfree/chart/plot/PlotRenderingInfo;Ljava/awt/geom/Point2D;)V#upperPercent#0#1').
name_ref(p_upper_percent_362, param, 'upperPercent', 'Lorg/jfree/chart/plot/CategoryPlot;.zoomRangeAxes(DDLorg/jfree/chart/plot/PlotRenderingInfo;Ljava/awt/geom/Point2D;)V#upperPercent#0#1').
name_ref(p_upper_percent_877, param, 'upperPercent', 'Lorg/jfree/chart/plot/XYPlot;.zoomDomainAxes(DDLorg/jfree/chart/plot/PlotRenderingInfo;Ljava/awt/geom/Point2D;)V#upperPercent#0#1').
name_ref(p_upper_percent_888, param, 'upperPercent', 'Lorg/jfree/chart/plot/XYPlot;.zoomRangeAxes(DDLorg/jfree/chart/plot/PlotRenderingInfo;Ljava/awt/geom/Point2D;)V#upperPercent#0#1').
name_ref(p_use_anchor_353, param, 'useAnchor', 'Lorg/jfree/chart/plot/CategoryPlot;.zoomDomainAxes(DLorg/jfree/chart/plot/PlotRenderingInfo;Ljava/awt/geom/Point2D;Z)V#useAnchor#0#3').
name_ref(p_use_anchor_360, param, 'useAnchor', 'Lorg/jfree/chart/plot/CategoryPlot;.zoomRangeAxes(DLorg/jfree/chart/plot/PlotRenderingInfo;Ljava/awt/geom/Point2D;Z)V#useAnchor#0#3').
name_ref(p_use_anchor_875, param, 'useAnchor', 'Lorg/jfree/chart/plot/XYPlot;.zoomDomainAxes(DLorg/jfree/chart/plot/PlotRenderingInfo;Ljava/awt/geom/Point2D;Z)V#useAnchor#0#3').
name_ref(p_use_anchor_886, param, 'useAnchor', 'Lorg/jfree/chart/plot/XYPlot;.zoomRangeAxes(DLorg/jfree/chart/plot/PlotRenderingInfo;Ljava/awt/geom/Point2D;Z)V#useAnchor#0#3').
name_ref(p_value_269, param, 'value', 'Lorg/jfree/chart/plot/CategoryPlot;.setRangeCrosshairValue(D)V#value#0#0').
name_ref(p_value_270, param, 'value', 'Lorg/jfree/chart/plot/CategoryPlot;.setRangeCrosshairValue(DZ)V#value#0#0').
name_ref(p_value_321, param, 'value', 'Lorg/jfree/chart/plot/CategoryPlot;.drawRangeLine(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;DLjava/awt/Stroke;Ljava/awt/Paint;)V#value#0#2').
name_ref(p_value_327, param, 'value', 'Lorg/jfree/chart/plot/CategoryPlot;.drawRangeCrosshair(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/plot/PlotOrientation;DLorg/jfree/chart/axis/ValueAxis;Ljava/awt/Stroke;Ljava/awt/Paint;)V#value#0#3').
name_ref(p_value_365, param, 'value', 'Lorg/jfree/chart/plot/CategoryPlot;.setAnchorValue(D)V#value#0#0').
name_ref(p_value_366, param, 'value', 'Lorg/jfree/chart/plot/CategoryPlot;.setAnchorValue(DZ)V#value#0#0').
name_ref(p_value_554, param, 'value', 'Lorg/jfree/chart/plot/ValueMarker;.(D)V#value#0#0').
name_ref(p_value_556, param, 'value', 'Lorg/jfree/chart/plot/ValueMarker;.(DLjava/awt/Paint;Ljava/awt/Stroke;)V#value#0#0').
name_ref(p_value_559, param, 'value', 'Lorg/jfree/chart/plot/ValueMarker;.(DLjava/awt/Paint;Ljava/awt/Stroke;Ljava/awt/Paint;Ljava/awt/Stroke;F)V#value#0#0').
name_ref(p_value_565, param, 'value', 'Lorg/jfree/chart/plot/ValueMarker;.setValue(D)V#value#0#0').
name_ref(p_value_816, param, 'value', 'Lorg/jfree/chart/plot/XYPlot;.drawHorizontalLine(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;DLjava/awt/Stroke;Ljava/awt/Paint;)V#value#0#2').
name_ref(p_value_822, param, 'value', 'Lorg/jfree/chart/plot/XYPlot;.drawDomainCrosshair(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/plot/PlotOrientation;DLorg/jfree/chart/axis/ValueAxis;Ljava/awt/Stroke;Ljava/awt/Paint;)V#value#0#3').
name_ref(p_value_828, param, 'value', 'Lorg/jfree/chart/plot/XYPlot;.drawVerticalLine(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;DLjava/awt/Stroke;Ljava/awt/Paint;)V#value#0#2').
name_ref(p_value_834, param, 'value', 'Lorg/jfree/chart/plot/XYPlot;.drawRangeCrosshair(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/plot/PlotOrientation;DLorg/jfree/chart/axis/ValueAxis;Ljava/awt/Stroke;Ljava/awt/Paint;)V#value#0#3').
name_ref(p_value_851, param, 'value', 'Lorg/jfree/chart/plot/XYPlot;.setDomainCrosshairValue(D)V#value#0#0').
name_ref(p_value_852, param, 'value', 'Lorg/jfree/chart/plot/XYPlot;.setDomainCrosshairValue(DZ)V#value#0#0').
name_ref(p_value_858, param, 'value', 'Lorg/jfree/chart/plot/XYPlot;.setRangeCrosshairValue(D)V#value#0#0').
name_ref(p_value_859, param, 'value', 'Lorg/jfree/chart/plot/XYPlot;.setRangeCrosshairValue(DZ)V#value#0#0').
name_ref(p_vertical_988, param, 'vertical', 'Lorg/jfree/chart/util/RectangleInsets;.createAdjustedRectangle(Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/util/LengthAdjustmentType;Lorg/jfree/chart/util/LengthAdjustmentType;)Ljava/awt/geom/Rectangle2D;#vertical#0#2').
name_ref(p_vertical_992, param, 'vertical', 'Lorg/jfree/chart/util/RectangleInsets;.createInsetRectangle(Ljava/awt/geom/Rectangle2D;ZZ)Ljava/awt/geom/Rectangle2D;#vertical#0#2').
name_ref(p_vertical_996, param, 'vertical', 'Lorg/jfree/chart/util/RectangleInsets;.createOutsetRectangle(Ljava/awt/geom/Rectangle2D;ZZ)Ljava/awt/geom/Rectangle2D;#vertical#0#2').
name_ref(p_visible_196, param, 'visible', 'Lorg/jfree/chart/plot/CategoryPlot;.setDomainGridlinesVisible(Z)V#visible#0#0').
name_ref(p_visible_200, param, 'visible', 'Lorg/jfree/chart/plot/CategoryPlot;.setRangeGridlinesVisible(Z)V#visible#0#0').
name_ref(p_visible_495, param, 'visible', 'Lorg/jfree/chart/plot/Plot;.setOutlineVisible(Z)V#visible#0#0').
name_ref(p_visible_683, param, 'visible', 'Lorg/jfree/chart/plot/XYPlot;.setDomainGridlinesVisible(Z)V#visible#0#0').
name_ref(p_visible_686, param, 'visible', 'Lorg/jfree/chart/plot/XYPlot;.setRangeGridlinesVisible(Z)V#visible#0#0').
name_ref(p_visible_689, param, 'visible', 'Lorg/jfree/chart/plot/XYPlot;.setDomainZeroBaselineVisible(Z)V#visible#0#0').
name_ref(p_visible_692, param, 'visible', 'Lorg/jfree/chart/plot/XYPlot;.setRangeZeroBaselineVisible(Z)V#visible#0#0').
name_ref(p_w_1_530, param, 'w1', 'Lorg/jfree/chart/plot/Plot;.getRectX(DDDLorg/jfree/chart/util/RectangleEdge;)D#w1#0#1').
name_ref(p_w_2_531, param, 'w2', 'Lorg/jfree/chart/plot/Plot;.getRectX(DDDLorg/jfree/chart/util/RectangleEdge;)D#w2#0#2').
name_ref(p_weight_334, param, 'weight', 'Lorg/jfree/chart/plot/CategoryPlot;.setWeight(I)V#weight#0#0').
name_ref(p_weight_682, param, 'weight', 'Lorg/jfree/chart/plot/XYPlot;.setWeight(I)V#weight#0#0').
name_ref(p_width_1001, param, 'width', 'Lorg/jfree/chart/util/RectangleInsets;.calculateLeftInset(D)D#width#0#0').
name_ref(p_width_1002, param, 'width', 'Lorg/jfree/chart/util/RectangleInsets;.calculateLeftOutset(D)D#width#0#0').
name_ref(p_width_1003, param, 'width', 'Lorg/jfree/chart/util/RectangleInsets;.calculateRightInset(D)D#width#0#0').
name_ref(p_width_1004, param, 'width', 'Lorg/jfree/chart/util/RectangleInsets;.calculateRightOutset(D)D#width#0#0').
name_ref(p_width_1005, param, 'width', 'Lorg/jfree/chart/util/RectangleInsets;.trimWidth(D)D#width#0#0').
name_ref(p_width_1006, param, 'width', 'Lorg/jfree/chart/util/RectangleInsets;.extendWidth(D)D#width#0#0').
name_ref(p_x_204, param, 'x', 'Lorg/jfree/chart/plot/CategoryPlot;.handleClick(IILorg/jfree/chart/plot/PlotRenderingInfo;)V#x#0#0').
name_ref(p_x_522, param, 'x', 'Lorg/jfree/chart/plot/Plot;.handleClick(IILorg/jfree/chart/plot/PlotRenderingInfo;)V#x#0#0').
name_ref(p_x_529, param, 'x', 'Lorg/jfree/chart/plot/Plot;.getRectX(DDDLorg/jfree/chart/util/RectangleEdge;)D#x#0#0').
name_ref(p_x_838, param, 'x', 'Lorg/jfree/chart/plot/XYPlot;.handleClick(IILorg/jfree/chart/plot/PlotRenderingInfo;)V#x#0#0').
name_ref(p_y_205, param, 'y', 'Lorg/jfree/chart/plot/CategoryPlot;.handleClick(IILorg/jfree/chart/plot/PlotRenderingInfo;)V#y#0#1').
name_ref(p_y_523, param, 'y', 'Lorg/jfree/chart/plot/Plot;.handleClick(IILorg/jfree/chart/plot/PlotRenderingInfo;)V#y#0#1').
name_ref(p_y_533, param, 'y', 'Lorg/jfree/chart/plot/Plot;.getRectY(DDDLorg/jfree/chart/util/RectangleEdge;)D#y#0#0').
name_ref(p_y_839, param, 'y', 'Lorg/jfree/chart/plot/XYPlot;.handleClick(IILorg/jfree/chart/plot/PlotRenderingInfo;)V#y#0#1').
name_ref(f_absolute_974, field, 'ABSOLUTE', 'Lorg/jfree/chart/util/UnitType;.ABSOLUTE)Lorg/jfree/chart/util/UnitType;').
name_ref(f_alpha_427, field, 'alpha', 'Lorg/jfree/chart/plot/Marker;.alpha)F').
name_ref(f_anchor_value_117, field, 'anchorValue', 'Lorg/jfree/chart/plot/CategoryPlot;.anchorValue)D').
name_ref(f_annotations_123, field, 'annotations', 'Lorg/jfree/chart/plot/CategoryPlot;.annotations)Ljava/util/List<>;').
name_ref(f_annotations_617, field, 'annotations', 'Lorg/jfree/chart/plot/XYPlot;.annotations)Ljava/util/List<>;').
name_ref(f_ascending_1010, field, 'ASCENDING', 'Lorg/jfree/chart/util/SortOrder;.ASCENDING)Lorg/jfree/chart/util/SortOrder;').
name_ref(f_axis_offset_101, field, 'axisOffset', 'Lorg/jfree/chart/plot/CategoryPlot;.axisOffset)Lorg/jfree/chart/util/RectangleInsets;').
name_ref(f_axis_offset_584, field, 'axisOffset', 'Lorg/jfree/chart/plot/XYPlot;.axisOffset)Lorg/jfree/chart/util/RectangleInsets;').
name_ref(f_background_936, field, 'BACKGROUND', 'Lorg/jfree/chart/util/Layer;.BACKGROUND)Lorg/jfree/chart/util/Layer;').
name_ref(f_background_alpha_468, field, 'backgroundAlpha', 'Lorg/jfree/chart/plot/Plot;.backgroundAlpha)F').
name_ref(f_background_domain_markers_113, field, 'backgroundDomainMarkers', 'Lorg/jfree/chart/plot/CategoryPlot;.backgroundDomainMarkers)Ljava/util/Map<>;').
name_ref(f_background_domain_markers_588, field, 'backgroundDomainMarkers', 'Lorg/jfree/chart/plot/XYPlot;.backgroundDomainMarkers)Ljava/util/Map<>;').
name_ref(f_background_image_470, field, 'backgroundImage', 'Lorg/jfree/chart/plot/Plot;.backgroundImage)Ljava/awt/Image;').
name_ref(f_background_image_alignment_463, field, 'backgroundImageAlignment', 'Lorg/jfree/chart/plot/Plot;.backgroundImageAlignment)I').
name_ref(f_background_image_alpha_464, field, 'backgroundImageAlpha', 'Lorg/jfree/chart/plot/Plot;.backgroundImageAlpha)F').
name_ref(f_background_paint_467, field, 'backgroundPaint', 'Lorg/jfree/chart/plot/Plot;.backgroundPaint)Ljava/awt/Paint;').
name_ref(f_background_range_markers_115, field, 'backgroundRangeMarkers', 'Lorg/jfree/chart/plot/CategoryPlot;.backgroundRangeMarkers)Ljava/util/Map<>;').
name_ref(f_background_range_markers_592, field, 'backgroundRangeMarkers', 'Lorg/jfree/chart/plot/XYPlot;.backgroundRangeMarkers)Ljava/util/Map<>;').
name_ref(f_baseline_center_911, field, 'BASELINE_CENTER', 'Lorg/jfree/chart/text/TextAnchor;.BASELINE_CENTER)Lorg/jfree/chart/text/TextAnchor;').
name_ref(f_baseline_left_910, field, 'BASELINE_LEFT', 'Lorg/jfree/chart/text/TextAnchor;.BASELINE_LEFT)Lorg/jfree/chart/text/TextAnchor;').
name_ref(f_baseline_right_912, field, 'BASELINE_RIGHT', 'Lorg/jfree/chart/text/TextAnchor;.BASELINE_RIGHT)Lorg/jfree/chart/text/TextAnchor;').
name_ref(f_bottom_955, field, 'BOTTOM', 'Lorg/jfree/chart/util/RectangleAnchor;.BOTTOM)Lorg/jfree/chart/util/RectangleAnchor;').
name_ref(f_bottom_982, field, 'bottom', 'Lorg/jfree/chart/util/RectangleInsets;.bottom)D').
name_ref(f_bottom_center_914, field, 'BOTTOM_CENTER', 'Lorg/jfree/chart/text/TextAnchor;.BOTTOM_CENTER)Lorg/jfree/chart/text/TextAnchor;').
name_ref(f_bottom_left_913, field, 'BOTTOM_LEFT', 'Lorg/jfree/chart/text/TextAnchor;.BOTTOM_LEFT)Lorg/jfree/chart/text/TextAnchor;').
name_ref(f_bottom_left_956, field, 'BOTTOM_LEFT', 'Lorg/jfree/chart/util/RectangleAnchor;.BOTTOM_LEFT)Lorg/jfree/chart/util/RectangleAnchor;').
name_ref(f_bottom_or_left_30, field, 'BOTTOM_OR_LEFT', 'Lorg/jfree/chart/axis/AxisLocation;.BOTTOM_OR_LEFT)Lorg/jfree/chart/axis/AxisLocation;').
name_ref(f_bottom_or_right_31, field, 'BOTTOM_OR_RIGHT', 'Lorg/jfree/chart/axis/AxisLocation;.BOTTOM_OR_RIGHT)Lorg/jfree/chart/axis/AxisLocation;').
name_ref(f_bottom_right_915, field, 'BOTTOM_RIGHT', 'Lorg/jfree/chart/text/TextAnchor;.BOTTOM_RIGHT)Lorg/jfree/chart/text/TextAnchor;').
name_ref(f_bottom_right_957, field, 'BOTTOM_RIGHT', 'Lorg/jfree/chart/util/RectangleAnchor;.BOTTOM_RIGHT)Lorg/jfree/chart/util/RectangleAnchor;').
name_ref(f_center_908, field, 'CENTER', 'Lorg/jfree/chart/text/TextAnchor;.CENTER)Lorg/jfree/chart/text/TextAnchor;').
name_ref(f_center_951, field, 'CENTER', 'Lorg/jfree/chart/util/RectangleAnchor;.CENTER)Lorg/jfree/chart/util/RectangleAnchor;').
name_ref(f_center_left_907, field, 'CENTER_LEFT', 'Lorg/jfree/chart/text/TextAnchor;.CENTER_LEFT)Lorg/jfree/chart/text/TextAnchor;').
name_ref(f_center_right_909, field, 'CENTER_RIGHT', 'Lorg/jfree/chart/text/TextAnchor;.CENTER_RIGHT)Lorg/jfree/chart/text/TextAnchor;').
name_ref(f_chart_49, field, 'chart', 'Lorg/jfree/chart/event/ChartChangeEvent;.chart)Lorg/jfree/chart/JFreeChart;').
name_ref(f_column_rendering_order_85, field, 'columnRenderingOrder', 'Lorg/jfree/chart/plot/CategoryPlot;.columnRenderingOrder)Lorg/jfree/chart/util/SortOrder;').
name_ref(f_contract_942, field, 'CONTRACT', 'Lorg/jfree/chart/util/LengthAdjustmentType;.CONTRACT)Lorg/jfree/chart/util/LengthAdjustmentType;').
name_ref(f_dark_blue_18, field, 'DARK_BLUE', 'Lorg/jfree/chart/ChartColor;.DARK_BLUE)Ljava/awt/Color;').
name_ref(f_dark_cyan_14, field, 'DARK_CYAN', 'Lorg/jfree/chart/ChartColor;.DARK_CYAN)Ljava/awt/Color;').
name_ref(f_dark_green_10, field, 'DARK_GREEN', 'Lorg/jfree/chart/ChartColor;.DARK_GREEN)Ljava/awt/Color;').
name_ref(f_dark_magenta_22, field, 'DARK_MAGENTA', 'Lorg/jfree/chart/ChartColor;.DARK_MAGENTA)Ljava/awt/Color;').
name_ref(f_dark_red_2, field, 'DARK_RED', 'Lorg/jfree/chart/ChartColor;.DARK_RED)Ljava/awt/Color;').
name_ref(f_dark_yellow_6, field, 'DARK_YELLOW', 'Lorg/jfree/chart/ChartColor;.DARK_YELLOW)Ljava/awt/Color;').
name_ref(f_dataset_rendering_order_576, field, 'datasetRenderingOrder', 'Lorg/jfree/chart/plot/XYPlot;.datasetRenderingOrder)Lorg/jfree/chart/plot/DatasetRenderingOrder;').
name_ref(f_dataset_to_domain_axis_map_595, field, 'datasetToDomainAxisMap', 'Lorg/jfree/chart/plot/XYPlot;.datasetToDomainAxisMap)Ljava/util/Map<>;').
name_ref(f_dataset_to_domain_axis_map_97, field, 'datasetToDomainAxisMap', 'Lorg/jfree/chart/plot/CategoryPlot;.datasetToDomainAxisMap)Lorg/jfree/chart/util/ObjectList;').
name_ref(f_dataset_to_range_axis_map_596, field, 'datasetToRangeAxisMap', 'Lorg/jfree/chart/plot/XYPlot;.datasetToRangeAxisMap)Ljava/util/Map<>;').
name_ref(f_dataset_to_range_axis_map_98, field, 'datasetToRangeAxisMap', 'Lorg/jfree/chart/plot/CategoryPlot;.datasetToRangeAxisMap)Lorg/jfree/chart/util/ObjectList;').
name_ref(f_dataset_updated_54, field, 'DATASET_UPDATED', 'Lorg/jfree/chart/event/ChartChangeEventType;.DATASET_UPDATED)Lorg/jfree/chart/event/ChartChangeEventType;').
name_ref(f_datasets_100, field, 'datasets', 'Lorg/jfree/chart/plot/CategoryPlot;.datasets)Lorg/jfree/chart/util/ObjectList;').
name_ref(f_datasets_593, field, 'datasets', 'Lorg/jfree/chart/plot/XYPlot;.datasets)Lorg/jfree/chart/util/ObjectList;').
name_ref(f_default_background_alpha_469, field, 'DEFAULT_BACKGROUND_ALPHA', 'Lorg/jfree/chart/plot/Plot;.DEFAULT_BACKGROUND_ALPHA)F').
name_ref(f_default_background_paint_460, field, 'DEFAULT_BACKGROUND_PAINT', 'Lorg/jfree/chart/plot/Plot;.DEFAULT_BACKGROUND_PAINT)Ljava/awt/Paint;').
name_ref(f_default_crosshair_paint_570, field, 'DEFAULT_CROSSHAIR_PAINT', 'Lorg/jfree/chart/plot/XYPlot;.DEFAULT_CROSSHAIR_PAINT)Ljava/awt/Paint;').
name_ref(f_default_crosshair_paint_82, field, 'DEFAULT_CROSSHAIR_PAINT', 'Lorg/jfree/chart/plot/CategoryPlot;.DEFAULT_CROSSHAIR_PAINT)Ljava/awt/Paint;').
name_ref(f_default_crosshair_stroke_569, field, 'DEFAULT_CROSSHAIR_STROKE', 'Lorg/jfree/chart/plot/XYPlot;.DEFAULT_CROSSHAIR_STROKE)Ljava/awt/Stroke;').
name_ref(f_default_crosshair_stroke_81, field, 'DEFAULT_CROSSHAIR_STROKE', 'Lorg/jfree/chart/plot/CategoryPlot;.DEFAULT_CROSSHAIR_STROKE)Ljava/awt/Stroke;').
name_ref(f_default_crosshair_visible_119, field, 'DEFAULT_CROSSHAIR_VISIBLE', 'Lorg/jfree/chart/plot/CategoryPlot;.DEFAULT_CROSSHAIR_VISIBLE)Z').
name_ref(f_default_domain_gridlines_visible_104, field, 'DEFAULT_DOMAIN_GRIDLINES_VISIBLE', 'Lorg/jfree/chart/plot/CategoryPlot;.DEFAULT_DOMAIN_GRIDLINES_VISIBLE)Z').
name_ref(f_default_fill_paint_sequence_378, field, 'DEFAULT_FILL_PAINT_SEQUENCE', 'Lorg/jfree/chart/plot/DefaultDrawingSupplier;.DEFAULT_FILL_PAINT_SEQUENCE)[Ljava/awt/Paint;').
name_ref(f_default_foreground_alpha_475, field, 'DEFAULT_FOREGROUND_ALPHA', 'Lorg/jfree/chart/plot/Plot;.DEFAULT_FOREGROUND_ALPHA)F').
name_ref(f_default_gridline_paint_568, field, 'DEFAULT_GRIDLINE_PAINT', 'Lorg/jfree/chart/plot/XYPlot;.DEFAULT_GRIDLINE_PAINT)Ljava/awt/Paint;').
name_ref(f_default_gridline_paint_79, field, 'DEFAULT_GRIDLINE_PAINT', 'Lorg/jfree/chart/plot/CategoryPlot;.DEFAULT_GRIDLINE_PAINT)Ljava/awt/Paint;').
name_ref(f_default_gridline_stroke_567, field, 'DEFAULT_GRIDLINE_STROKE', 'Lorg/jfree/chart/plot/XYPlot;.DEFAULT_GRIDLINE_STROKE)Ljava/awt/Stroke;').
name_ref(f_default_gridline_stroke_78, field, 'DEFAULT_GRIDLINE_STROKE', 'Lorg/jfree/chart/plot/CategoryPlot;.DEFAULT_GRIDLINE_STROKE)Ljava/awt/Stroke;').
name_ref(f_default_initial_capacity_921, field, 'DEFAULT_INITIAL_CAPACITY', 'Lorg/jfree/chart/util/AbstractObjectList;.DEFAULT_INITIAL_CAPACITY)I').
name_ref(f_default_insets_457, field, 'DEFAULT_INSETS', 'Lorg/jfree/chart/plot/Plot;.DEFAULT_INSETS)Lorg/jfree/chart/util/RectangleInsets;').
name_ref(f_default_legend_item_box_461, field, 'DEFAULT_LEGEND_ITEM_BOX', 'Lorg/jfree/chart/plot/Plot;.DEFAULT_LEGEND_ITEM_BOX)Ljava/awt/Shape;').
name_ref(f_default_legend_item_circle_462, field, 'DEFAULT_LEGEND_ITEM_CIRCLE', 'Lorg/jfree/chart/plot/Plot;.DEFAULT_LEGEND_ITEM_CIRCLE)Ljava/awt/Shape;').
name_ref(f_default_outline_paint_459, field, 'DEFAULT_OUTLINE_PAINT', 'Lorg/jfree/chart/plot/Plot;.DEFAULT_OUTLINE_PAINT)Ljava/awt/Paint;').
name_ref(f_default_outline_paint_sequence_377, field, 'DEFAULT_OUTLINE_PAINT_SEQUENCE', 'Lorg/jfree/chart/plot/DefaultDrawingSupplier;.DEFAULT_OUTLINE_PAINT_SEQUENCE)[Ljava/awt/Paint;').
name_ref(f_default_outline_stroke_458, field, 'DEFAULT_OUTLINE_STROKE', 'Lorg/jfree/chart/plot/Plot;.DEFAULT_OUTLINE_STROKE)Ljava/awt/Stroke;').
name_ref(f_default_outline_stroke_sequence_380, field, 'DEFAULT_OUTLINE_STROKE_SEQUENCE', 'Lorg/jfree/chart/plot/DefaultDrawingSupplier;.DEFAULT_OUTLINE_STROKE_SEQUENCE)[Ljava/awt/Stroke;').
name_ref(f_default_paint_sequence_376, field, 'DEFAULT_PAINT_SEQUENCE', 'Lorg/jfree/chart/plot/DefaultDrawingSupplier;.DEFAULT_PAINT_SEQUENCE)[Ljava/awt/Paint;').
name_ref(f_default_range_gridlines_visible_109, field, 'DEFAULT_RANGE_GRIDLINES_VISIBLE', 'Lorg/jfree/chart/plot/CategoryPlot;.DEFAULT_RANGE_GRIDLINES_VISIBLE)Z').
name_ref(f_default_shape_sequence_381, field, 'DEFAULT_SHAPE_SEQUENCE', 'Lorg/jfree/chart/plot/DefaultDrawingSupplier;.DEFAULT_SHAPE_SEQUENCE)[Ljava/awt/Shape;').
name_ref(f_default_stroke_sequence_379, field, 'DEFAULT_STROKE_SEQUENCE', 'Lorg/jfree/chart/plot/DefaultDrawingSupplier;.DEFAULT_STROKE_SEQUENCE)[Ljava/awt/Stroke;').
name_ref(f_default_value_label_font_80, field, 'DEFAULT_VALUE_LABEL_FONT', 'Lorg/jfree/chart/plot/CategoryPlot;.DEFAULT_VALUE_LABEL_FONT)Ljava/awt/Font;').
name_ref(f_descending_1011, field, 'DESCENDING', 'Lorg/jfree/chart/util/SortOrder;.DESCENDING)Lorg/jfree/chart/util/SortOrder;').
name_ref(f_domain_axes_585, field, 'domainAxes', 'Lorg/jfree/chart/plot/XYPlot;.domainAxes)Lorg/jfree/chart/util/ObjectList;').
name_ref(f_domain_axes_93, field, 'domainAxes', 'Lorg/jfree/chart/plot/CategoryPlot;.domainAxes)Lorg/jfree/chart/util/ObjectList;').
name_ref(f_domain_axis_locations_586, field, 'domainAxisLocations', 'Lorg/jfree/chart/plot/XYPlot;.domainAxisLocations)Lorg/jfree/chart/util/ObjectList;').
name_ref(f_domain_axis_locations_94, field, 'domainAxisLocations', 'Lorg/jfree/chart/plot/CategoryPlot;.domainAxisLocations)Lorg/jfree/chart/util/ObjectList;').
name_ref(f_domain_crosshair_locked_on_data_574, field, 'domainCrosshairLockedOnData', 'Lorg/jfree/chart/plot/XYPlot;.domainCrosshairLockedOnData)Z').
name_ref(f_domain_crosshair_paint_612, field, 'domainCrosshairPaint', 'Lorg/jfree/chart/plot/XYPlot;.domainCrosshairPaint)Ljava/awt/Paint;').
name_ref(f_domain_crosshair_stroke_611, field, 'domainCrosshairStroke', 'Lorg/jfree/chart/plot/XYPlot;.domainCrosshairStroke)Ljava/awt/Stroke;').
name_ref(f_domain_crosshair_value_610, field, 'domainCrosshairValue', 'Lorg/jfree/chart/plot/XYPlot;.domainCrosshairValue)D').
name_ref(f_domain_crosshair_visible_609, field, 'domainCrosshairVisible', 'Lorg/jfree/chart/plot/XYPlot;.domainCrosshairVisible)Z').
name_ref(f_domain_gridline_paint_107, field, 'domainGridlinePaint', 'Lorg/jfree/chart/plot/CategoryPlot;.domainGridlinePaint)Ljava/awt/Paint;').
name_ref(f_domain_gridline_paint_599, field, 'domainGridlinePaint', 'Lorg/jfree/chart/plot/XYPlot;.domainGridlinePaint)Ljava/awt/Paint;').
name_ref(f_domain_gridline_position_105, field, 'domainGridlinePosition', 'Lorg/jfree/chart/plot/CategoryPlot;.domainGridlinePosition)Lorg/jfree/chart/axis/CategoryAnchor;').
name_ref(f_domain_gridline_stroke_106, field, 'domainGridlineStroke', 'Lorg/jfree/chart/plot/CategoryPlot;.domainGridlineStroke)Ljava/awt/Stroke;').
name_ref(f_domain_gridline_stroke_598, field, 'domainGridlineStroke', 'Lorg/jfree/chart/plot/XYPlot;.domainGridlineStroke)Ljava/awt/Stroke;').
name_ref(f_domain_gridlines_visible_103, field, 'domainGridlinesVisible', 'Lorg/jfree/chart/plot/CategoryPlot;.domainGridlinesVisible)Z').
name_ref(f_domain_gridlines_visible_597, field, 'domainGridlinesVisible', 'Lorg/jfree/chart/plot/XYPlot;.domainGridlinesVisible)Z').
name_ref(f_domain_zero_baseline_paint_601, field, 'domainZeroBaselinePaint', 'Lorg/jfree/chart/plot/XYPlot;.domainZeroBaselinePaint)Ljava/awt/Paint;').
name_ref(f_domain_zero_baseline_stroke_602, field, 'domainZeroBaselineStroke', 'Lorg/jfree/chart/plot/XYPlot;.domainZeroBaselineStroke)Ljava/awt/Stroke;').
name_ref(f_domain_zero_baseline_visible_600, field, 'domainZeroBaselineVisible', 'Lorg/jfree/chart/plot/XYPlot;.domainZeroBaselineVisible)Z').
name_ref(f_draw_as_line_62, field, 'drawAsLine', 'Lorg/jfree/chart/plot/CategoryMarker;.drawAsLine)Z').
name_ref(f_draw_shared_domain_axis_102, field, 'drawSharedDomainAxis', 'Lorg/jfree/chart/plot/CategoryPlot;.drawSharedDomainAxis)Z').
name_ref(f_drawing_supplier_479, field, 'drawingSupplier', 'Lorg/jfree/chart/plot/Plot;.drawingSupplier)Lorg/jfree/chart/plot/DrawingSupplier;').
name_ref(f_end_38, field, 'END', 'Lorg/jfree/chart/axis/CategoryAnchor;.END)Lorg/jfree/chart/axis/CategoryAnchor;').
name_ref(f_expand_941, field, 'EXPAND', 'Lorg/jfree/chart/util/LengthAdjustmentType;.EXPAND)Lorg/jfree/chart/util/LengthAdjustmentType;').
name_ref(f_fill_paint_sequence_394, field, 'fillPaintSequence', 'Lorg/jfree/chart/plot/DefaultDrawingSupplier;.fillPaintSequence)[Ljava/awt/Paint;').
name_ref(f_foreground_935, field, 'FOREGROUND', 'Lorg/jfree/chart/util/Layer;.FOREGROUND)Lorg/jfree/chart/util/Layer;').
name_ref(f_foreground_alpha_474, field, 'foregroundAlpha', 'Lorg/jfree/chart/plot/Plot;.foregroundAlpha)F').
name_ref(f_foreground_domain_markers_112, field, 'foregroundDomainMarkers', 'Lorg/jfree/chart/plot/CategoryPlot;.foregroundDomainMarkers)Ljava/util/Map<>;').
name_ref(f_foreground_domain_markers_587, field, 'foregroundDomainMarkers', 'Lorg/jfree/chart/plot/XYPlot;.foregroundDomainMarkers)Ljava/util/Map<>;').
name_ref(f_foreground_range_markers_114, field, 'foregroundRangeMarkers', 'Lorg/jfree/chart/plot/CategoryPlot;.foregroundRangeMarkers)Ljava/util/Map<>;').
name_ref(f_foreground_range_markers_591, field, 'foregroundRangeMarkers', 'Lorg/jfree/chart/plot/XYPlot;.foregroundRangeMarkers)Ljava/util/Map<>;').
name_ref(f_forward_371, field, 'FORWARD', 'Lorg/jfree/chart/plot/DatasetRenderingOrder;.FORWARD)Lorg/jfree/chart/plot/DatasetRenderingOrder;').
name_ref(f_forward_549, field, 'FORWARD', 'Lorg/jfree/chart/plot/SeriesRenderingOrder;.FORWARD)Lorg/jfree/chart/plot/SeriesRenderingOrder;').
name_ref(f_general_43, field, 'GENERAL', 'Lorg/jfree/chart/event/ChartChangeEventType;.GENERAL)Lorg/jfree/chart/event/ChartChangeEventType;').
name_ref(f_gray_64, field, 'gray', 'Ljava/awt/Color;.gray)Ljava/awt/Color;').
name_ref(f_half_ascent_center_905, field, 'HALF_ASCENT_CENTER', 'Lorg/jfree/chart/text/TextAnchor;.HALF_ASCENT_CENTER)Lorg/jfree/chart/text/TextAnchor;').
name_ref(f_half_ascent_left_904, field, 'HALF_ASCENT_LEFT', 'Lorg/jfree/chart/text/TextAnchor;.HALF_ASCENT_LEFT)Lorg/jfree/chart/text/TextAnchor;').
name_ref(f_half_ascent_right_906, field, 'HALF_ASCENT_RIGHT', 'Lorg/jfree/chart/text/TextAnchor;.HALF_ASCENT_RIGHT)Lorg/jfree/chart/text/TextAnchor;').
name_ref(f_horizontal_544, field, 'HORIZONTAL', 'Lorg/jfree/chart/plot/PlotOrientation;.HORIZONTAL)Lorg/jfree/chart/plot/PlotOrientation;').
name_ref(f_increment_920, field, 'increment', 'Lorg/jfree/chart/util/AbstractObjectList;.increment)I').
name_ref(f_insets_466, field, 'insets', 'Lorg/jfree/chart/plot/Plot;.insets)Lorg/jfree/chart/util/RectangleInsets;').
name_ref(f_key_74, field, 'key', 'Lorg/jfree/chart/plot/CategoryMarker;.key)Ljava/lang/Comparable<>;').
name_ref(f_label_416, field, 'label', 'Lorg/jfree/chart/plot/Marker;.label)Ljava/lang/String;').
name_ref(f_label_anchor_430, field, 'labelAnchor', 'Lorg/jfree/chart/plot/Marker;.labelAnchor)Lorg/jfree/chart/util/RectangleAnchor;').
name_ref(f_label_font_428, field, 'labelFont', 'Lorg/jfree/chart/plot/Marker;.labelFont)Ljava/awt/Font;').
name_ref(f_label_offset_431, field, 'labelOffset', 'Lorg/jfree/chart/plot/Marker;.labelOffset)Lorg/jfree/chart/util/RectangleInsets;').
name_ref(f_label_offset_type_432, field, 'labelOffsetType', 'Lorg/jfree/chart/plot/Marker;.labelOffsetType)Lorg/jfree/chart/util/LengthAdjustmentType;').
name_ref(f_label_paint_429, field, 'labelPaint', 'Lorg/jfree/chart/plot/Marker;.labelPaint)Ljava/awt/Paint;').
name_ref(f_label_text_anchor_433, field, 'labelTextAnchor', 'Lorg/jfree/chart/plot/Marker;.labelTextAnchor)Lorg/jfree/chart/text/TextAnchor;').
name_ref(f_left_958, field, 'LEFT', 'Lorg/jfree/chart/util/RectangleAnchor;.LEFT)Lorg/jfree/chart/util/RectangleAnchor;').
name_ref(f_left_983, field, 'left', 'Lorg/jfree/chart/util/RectangleInsets;.left)D').
name_ref(f_length_930, field, 'length', '.length)I').
name_ref(f_light_blue_19, field, 'LIGHT_BLUE', 'Lorg/jfree/chart/ChartColor;.LIGHT_BLUE)Ljava/awt/Color;').
name_ref(f_light_cyan_15, field, 'LIGHT_CYAN', 'Lorg/jfree/chart/ChartColor;.LIGHT_CYAN)Ljava/awt/Color;').
name_ref(f_light_green_11, field, 'LIGHT_GREEN', 'Lorg/jfree/chart/ChartColor;.LIGHT_GREEN)Ljava/awt/Color;').
name_ref(f_light_magenta_23, field, 'LIGHT_MAGENTA', 'Lorg/jfree/chart/ChartColor;.LIGHT_MAGENTA)Ljava/awt/Color;').
name_ref(f_light_red_3, field, 'LIGHT_RED', 'Lorg/jfree/chart/ChartColor;.LIGHT_RED)Ljava/awt/Color;').
name_ref(f_light_yellow_7, field, 'LIGHT_YELLOW', 'Lorg/jfree/chart/ChartColor;.LIGHT_YELLOW)Ljava/awt/Color;').
name_ref(f_listener_list_434, field, 'listenerList', 'Lorg/jfree/chart/plot/Marker;.listenerList)Ljavax/swing/event/EventListenerList;').
name_ref(f_listener_list_480, field, 'listenerList', 'Lorg/jfree/chart/plot/Plot;.listenerList)Ljavax/swing/event/EventListenerList;').
name_ref(f_localization_resources_571, field, 'localizationResources', 'Lorg/jfree/chart/plot/XYPlot;.localizationResources)Ljava/util/ResourceBundle;').
name_ref(f_localization_resources_83, field, 'localizationResources', 'Lorg/jfree/chart/plot/CategoryPlot;.localizationResources)Ljava/util/ResourceBundle;').
name_ref(f_marker_59, field, 'marker', 'Lorg/jfree/chart/event/MarkerChangeEvent;.marker)Lorg/jfree/chart/plot/Marker;').
name_ref(f_middle_37, field, 'MIDDLE', 'Lorg/jfree/chart/axis/CategoryAnchor;.MIDDLE)Lorg/jfree/chart/axis/CategoryAnchor;').
name_ref(f_name_1013, field, 'name', 'Lorg/jfree/chart/util/SortOrder;.name)Ljava/lang/String;').
name_ref(f_name_1017, field, 'name', 'Lorg/jfree/chart/util/UnitType;.name)Ljava/lang/String;').
name_ref(f_name_33, field, 'name', 'Lorg/jfree/chart/axis/AxisLocation;.name)Ljava/lang/String;').
name_ref(f_name_374, field, 'name', 'Lorg/jfree/chart/plot/DatasetRenderingOrder;.name)Ljava/lang/String;').
name_ref(f_name_40, field, 'name', 'Lorg/jfree/chart/axis/CategoryAnchor;.name)Ljava/lang/String;').
name_ref(f_name_547, field, 'name', 'Lorg/jfree/chart/plot/PlotOrientation;.name)Ljava/lang/String;').
name_ref(f_name_552, field, 'name', 'Lorg/jfree/chart/plot/SeriesRenderingOrder;.name)Ljava/lang/String;').
name_ref(f_name_56, field, 'name', 'Lorg/jfree/chart/event/ChartChangeEventType;.name)Ljava/lang/String;').
name_ref(f_name_917, field, 'name', 'Lorg/jfree/chart/text/TextAnchor;.name)Ljava/lang/String;').
name_ref(f_name_938, field, 'name', 'Lorg/jfree/chart/util/Layer;.name)Ljava/lang/String;').
name_ref(f_name_944, field, 'name', 'Lorg/jfree/chart/util/LengthAdjustmentType;.name)Ljava/lang/String;').
name_ref(f_name_961, field, 'name', 'Lorg/jfree/chart/util/RectangleAnchor;.name)Ljava/lang/String;').
name_ref(f_new_dataset_53, field, 'NEW_DATASET', 'Lorg/jfree/chart/event/ChartChangeEventType;.NEW_DATASET)Lorg/jfree/chart/event/ChartChangeEventType;').
name_ref(f_no_change_940, field, 'NO_CHANGE', 'Lorg/jfree/chart/util/LengthAdjustmentType;.NO_CHANGE)Lorg/jfree/chart/util/LengthAdjustmentType;').
name_ref(f_no_data_message_476, field, 'noDataMessage', 'Lorg/jfree/chart/plot/Plot;.noDataMessage)Ljava/lang/String;').
name_ref(f_no_data_message_font_477, field, 'noDataMessageFont', 'Lorg/jfree/chart/plot/Plot;.noDataMessageFont)Ljava/awt/Font;').
name_ref(f_no_data_message_paint_478, field, 'noDataMessagePaint', 'Lorg/jfree/chart/plot/Plot;.noDataMessagePaint)Ljava/awt/Paint;').
name_ref(f_objects_925, field, 'objects', 'Lorg/jfree/chart/util/AbstractObjectList;.objects)[Ljava/lang/Object;').
name_ref(f_orientation_582, field, 'orientation', 'Lorg/jfree/chart/plot/XYPlot;.orientation)Lorg/jfree/chart/plot/PlotOrientation;').
name_ref(f_orientation_92, field, 'orientation', 'Lorg/jfree/chart/plot/CategoryPlot;.orientation)Lorg/jfree/chart/plot/PlotOrientation;').
name_ref(f_outline_paint_425, field, 'outlinePaint', 'Lorg/jfree/chart/plot/Marker;.outlinePaint)Ljava/awt/Paint;').
name_ref(f_outline_paint_473, field, 'outlinePaint', 'Lorg/jfree/chart/plot/Plot;.outlinePaint)Ljava/awt/Paint;').
name_ref(f_outline_paint_sequence_395, field, 'outlinePaintSequence', 'Lorg/jfree/chart/plot/DefaultDrawingSupplier;.outlinePaintSequence)[Ljava/awt/Paint;').
name_ref(f_outline_stroke_426, field, 'outlineStroke', 'Lorg/jfree/chart/plot/Marker;.outlineStroke)Ljava/awt/Stroke;').
name_ref(f_outline_stroke_472, field, 'outlineStroke', 'Lorg/jfree/chart/plot/Plot;.outlineStroke)Ljava/awt/Stroke;').
name_ref(f_outline_stroke_sequence_397, field, 'outlineStrokeSequence', 'Lorg/jfree/chart/plot/DefaultDrawingSupplier;.outlineStrokeSequence)[Ljava/awt/Stroke;').
name_ref(f_outline_visible_471, field, 'outlineVisible', 'Lorg/jfree/chart/plot/Plot;.outlineVisible)Z').
name_ref(f_paint_423, field, 'paint', 'Lorg/jfree/chart/plot/Marker;.paint)Ljava/awt/Paint;').
name_ref(f_paint_sequence_393, field, 'paintSequence', 'Lorg/jfree/chart/plot/DefaultDrawingSupplier;.paintSequence)[Ljava/awt/Paint;').
name_ref(f_parent_465, field, 'parent', 'Lorg/jfree/chart/plot/Plot;.parent)Lorg/jfree/chart/plot/Plot;').
name_ref(f_plot_61, field, 'plot', 'Lorg/jfree/chart/event/PlotChangeEvent;.plot)Lorg/jfree/chart/plot/Plot;').
name_ref(f_quadrant_origin_572, field, 'quadrantOrigin', 'Lorg/jfree/chart/plot/XYPlot;.quadrantOrigin)Ljava/awt/geom/Point2D;').
name_ref(f_quadrant_paint_573, field, 'quadrantPaint', 'Lorg/jfree/chart/plot/XYPlot;.quadrantPaint)[Ljava/awt/Paint;').
name_ref(f_range_axes_589, field, 'rangeAxes', 'Lorg/jfree/chart/plot/XYPlot;.rangeAxes)Lorg/jfree/chart/util/ObjectList;').
name_ref(f_range_axes_95, field, 'rangeAxes', 'Lorg/jfree/chart/plot/CategoryPlot;.rangeAxes)Lorg/jfree/chart/util/ObjectList;').
name_ref(f_range_axis_locations_590, field, 'rangeAxisLocations', 'Lorg/jfree/chart/plot/XYPlot;.rangeAxisLocations)Lorg/jfree/chart/util/ObjectList;').
name_ref(f_range_axis_locations_96, field, 'rangeAxisLocations', 'Lorg/jfree/chart/plot/CategoryPlot;.rangeAxisLocations)Lorg/jfree/chart/util/ObjectList;').
name_ref(f_range_crosshair_locked_on_data_575, field, 'rangeCrosshairLockedOnData', 'Lorg/jfree/chart/plot/XYPlot;.rangeCrosshairLockedOnData)Z').
name_ref(f_range_crosshair_locked_on_data_87, field, 'rangeCrosshairLockedOnData', 'Lorg/jfree/chart/plot/CategoryPlot;.rangeCrosshairLockedOnData)Z').
name_ref(f_range_crosshair_paint_122, field, 'rangeCrosshairPaint', 'Lorg/jfree/chart/plot/CategoryPlot;.rangeCrosshairPaint)Ljava/awt/Paint;').
name_ref(f_range_crosshair_paint_616, field, 'rangeCrosshairPaint', 'Lorg/jfree/chart/plot/XYPlot;.rangeCrosshairPaint)Ljava/awt/Paint;').
name_ref(f_range_crosshair_stroke_121, field, 'rangeCrosshairStroke', 'Lorg/jfree/chart/plot/CategoryPlot;.rangeCrosshairStroke)Ljava/awt/Stroke;').
name_ref(f_range_crosshair_stroke_615, field, 'rangeCrosshairStroke', 'Lorg/jfree/chart/plot/XYPlot;.rangeCrosshairStroke)Ljava/awt/Stroke;').
name_ref(f_range_crosshair_value_120, field, 'rangeCrosshairValue', 'Lorg/jfree/chart/plot/CategoryPlot;.rangeCrosshairValue)D').
name_ref(f_range_crosshair_value_614, field, 'rangeCrosshairValue', 'Lorg/jfree/chart/plot/XYPlot;.rangeCrosshairValue)D').
name_ref(f_range_crosshair_visible_118, field, 'rangeCrosshairVisible', 'Lorg/jfree/chart/plot/CategoryPlot;.rangeCrosshairVisible)Z').
name_ref(f_range_crosshair_visible_613, field, 'rangeCrosshairVisible', 'Lorg/jfree/chart/plot/XYPlot;.rangeCrosshairVisible)Z').
name_ref(f_range_gridline_paint_111, field, 'rangeGridlinePaint', 'Lorg/jfree/chart/plot/CategoryPlot;.rangeGridlinePaint)Ljava/awt/Paint;').
name_ref(f_range_gridline_paint_605, field, 'rangeGridlinePaint', 'Lorg/jfree/chart/plot/XYPlot;.rangeGridlinePaint)Ljava/awt/Paint;').
name_ref(f_range_gridline_stroke_110, field, 'rangeGridlineStroke', 'Lorg/jfree/chart/plot/CategoryPlot;.rangeGridlineStroke)Ljava/awt/Stroke;').
name_ref(f_range_gridline_stroke_604, field, 'rangeGridlineStroke', 'Lorg/jfree/chart/plot/XYPlot;.rangeGridlineStroke)Ljava/awt/Stroke;').
name_ref(f_range_gridlines_visible_108, field, 'rangeGridlinesVisible', 'Lorg/jfree/chart/plot/CategoryPlot;.rangeGridlinesVisible)Z').
name_ref(f_range_gridlines_visible_603, field, 'rangeGridlinesVisible', 'Lorg/jfree/chart/plot/XYPlot;.rangeGridlinesVisible)Z').
name_ref(f_range_zero_baseline_paint_607, field, 'rangeZeroBaselinePaint', 'Lorg/jfree/chart/plot/XYPlot;.rangeZeroBaselinePaint)Ljava/awt/Paint;').
name_ref(f_range_zero_baseline_stroke_608, field, 'rangeZeroBaselineStroke', 'Lorg/jfree/chart/plot/XYPlot;.rangeZeroBaselineStroke)Ljava/awt/Stroke;').
name_ref(f_range_zero_baseline_visible_606, field, 'rangeZeroBaselineVisible', 'Lorg/jfree/chart/plot/XYPlot;.rangeZeroBaselineVisible)Z').
name_ref(f_relative_1015, field, 'RELATIVE', 'Lorg/jfree/chart/util/UnitType;.RELATIVE)Lorg/jfree/chart/util/UnitType;').
name_ref(f_renderers_594, field, 'renderers', 'Lorg/jfree/chart/plot/XYPlot;.renderers)Lorg/jfree/chart/util/ObjectList;').
name_ref(f_renderers_99, field, 'renderers', 'Lorg/jfree/chart/plot/CategoryPlot;.renderers)Lorg/jfree/chart/util/ObjectList;').
name_ref(f_rendering_order_84, field, 'renderingOrder', 'Lorg/jfree/chart/plot/CategoryPlot;.renderingOrder)Lorg/jfree/chart/plot/DatasetRenderingOrder;').
name_ref(f_reverse_372, field, 'REVERSE', 'Lorg/jfree/chart/plot/DatasetRenderingOrder;.REVERSE)Lorg/jfree/chart/plot/DatasetRenderingOrder;').
name_ref(f_reverse_550, field, 'REVERSE', 'Lorg/jfree/chart/plot/SeriesRenderingOrder;.REVERSE)Lorg/jfree/chart/plot/SeriesRenderingOrder;').
name_ref(f_right_959, field, 'RIGHT', 'Lorg/jfree/chart/util/RectangleAnchor;.RIGHT)Lorg/jfree/chart/util/RectangleAnchor;').
name_ref(f_right_984, field, 'right', 'Lorg/jfree/chart/util/RectangleInsets;.right)D').
name_ref(f_row_rendering_order_86, field, 'rowRenderingOrder', 'Lorg/jfree/chart/plot/CategoryPlot;.rowRenderingOrder)Lorg/jfree/chart/util/SortOrder;').
name_ref(f_series_rendering_order_577, field, 'seriesRenderingOrder', 'Lorg/jfree/chart/plot/XYPlot;.seriesRenderingOrder)Lorg/jfree/chart/plot/SeriesRenderingOrder;').
name_ref(f_shape_sequence_398, field, 'shapeSequence', 'Lorg/jfree/chart/plot/DefaultDrawingSupplier;.shapeSequence)[Ljava/awt/Shape;').
name_ref(f_size_919, field, 'size', 'Lorg/jfree/chart/util/AbstractObjectList;.size)I').
name_ref(f_start_36, field, 'START', 'Lorg/jfree/chart/axis/CategoryAnchor;.START)Lorg/jfree/chart/axis/CategoryAnchor;').
name_ref(f_stroke_424, field, 'stroke', 'Lorg/jfree/chart/plot/Marker;.stroke)Ljava/awt/Stroke;').
name_ref(f_stroke_sequence_396, field, 'strokeSequence', 'Lorg/jfree/chart/plot/DefaultDrawingSupplier;.strokeSequence)[Ljava/awt/Stroke;').
name_ref(f_top_952, field, 'TOP', 'Lorg/jfree/chart/util/RectangleAnchor;.TOP)Lorg/jfree/chart/util/RectangleAnchor;').
name_ref(f_top_981, field, 'top', 'Lorg/jfree/chart/util/RectangleInsets;.top)D').
name_ref(f_top_center_902, field, 'TOP_CENTER', 'Lorg/jfree/chart/text/TextAnchor;.TOP_CENTER)Lorg/jfree/chart/text/TextAnchor;').
name_ref(f_top_left_901, field, 'TOP_LEFT', 'Lorg/jfree/chart/text/TextAnchor;.TOP_LEFT)Lorg/jfree/chart/text/TextAnchor;').
name_ref(f_top_left_953, field, 'TOP_LEFT', 'Lorg/jfree/chart/util/RectangleAnchor;.TOP_LEFT)Lorg/jfree/chart/util/RectangleAnchor;').
name_ref(f_top_or_left_28, field, 'TOP_OR_LEFT', 'Lorg/jfree/chart/axis/AxisLocation;.TOP_OR_LEFT)Lorg/jfree/chart/axis/AxisLocation;').
name_ref(f_top_or_right_29, field, 'TOP_OR_RIGHT', 'Lorg/jfree/chart/axis/AxisLocation;.TOP_OR_RIGHT)Lorg/jfree/chart/axis/AxisLocation;').
name_ref(f_top_right_903, field, 'TOP_RIGHT', 'Lorg/jfree/chart/text/TextAnchor;.TOP_RIGHT)Lorg/jfree/chart/text/TextAnchor;').
name_ref(f_top_right_954, field, 'TOP_RIGHT', 'Lorg/jfree/chart/util/RectangleAnchor;.TOP_RIGHT)Lorg/jfree/chart/util/RectangleAnchor;').
name_ref(f_type_50, field, 'type', 'Lorg/jfree/chart/event/ChartChangeEvent;.type)Lorg/jfree/chart/event/ChartChangeEventType;').
name_ref(f_unit_type_980, field, 'unitType', 'Lorg/jfree/chart/util/RectangleInsets;.unitType)Lorg/jfree/chart/util/UnitType;').
name_ref(f_value_555, field, 'value', 'Lorg/jfree/chart/plot/ValueMarker;.value)D').
name_ref(f_vertical_545, field, 'VERTICAL', 'Lorg/jfree/chart/plot/PlotOrientation;.VERTICAL)Lorg/jfree/chart/plot/PlotOrientation;').
name_ref(f_very_dark_blue_17, field, 'VERY_DARK_BLUE', 'Lorg/jfree/chart/ChartColor;.VERY_DARK_BLUE)Ljava/awt/Color;').
name_ref(f_very_dark_cyan_13, field, 'VERY_DARK_CYAN', 'Lorg/jfree/chart/ChartColor;.VERY_DARK_CYAN)Ljava/awt/Color;').
name_ref(f_very_dark_green_9, field, 'VERY_DARK_GREEN', 'Lorg/jfree/chart/ChartColor;.VERY_DARK_GREEN)Ljava/awt/Color;').
name_ref(f_very_dark_magenta_21, field, 'VERY_DARK_MAGENTA', 'Lorg/jfree/chart/ChartColor;.VERY_DARK_MAGENTA)Ljava/awt/Color;').
name_ref(f_very_dark_red_1, field, 'VERY_DARK_RED', 'Lorg/jfree/chart/ChartColor;.VERY_DARK_RED)Ljava/awt/Color;').
name_ref(f_very_dark_yellow_5, field, 'VERY_DARK_YELLOW', 'Lorg/jfree/chart/ChartColor;.VERY_DARK_YELLOW)Ljava/awt/Color;').
name_ref(f_very_light_blue_20, field, 'VERY_LIGHT_BLUE', 'Lorg/jfree/chart/ChartColor;.VERY_LIGHT_BLUE)Ljava/awt/Color;').
name_ref(f_very_light_cyan_16, field, 'VERY_LIGHT_CYAN', 'Lorg/jfree/chart/ChartColor;.VERY_LIGHT_CYAN)Ljava/awt/Color;').
name_ref(f_very_light_green_12, field, 'VERY_LIGHT_GREEN', 'Lorg/jfree/chart/ChartColor;.VERY_LIGHT_GREEN)Ljava/awt/Color;').
name_ref(f_very_light_magenta_24, field, 'VERY_LIGHT_MAGENTA', 'Lorg/jfree/chart/ChartColor;.VERY_LIGHT_MAGENTA)Ljava/awt/Color;').
name_ref(f_very_light_red_4, field, 'VERY_LIGHT_RED', 'Lorg/jfree/chart/ChartColor;.VERY_LIGHT_RED)Ljava/awt/Color;').
name_ref(f_very_light_yellow_8, field, 'VERY_LIGHT_YELLOW', 'Lorg/jfree/chart/ChartColor;.VERY_LIGHT_YELLOW)Ljava/awt/Color;').
name_ref(f_weight_583, field, 'weight', 'Lorg/jfree/chart/plot/XYPlot;.weight)I').
name_ref(f_zero_456, field, 'ZERO', 'Lorg/jfree/chart/plot/Plot;.ZERO)Ljava/lang/Number;').
name_ref(f_zero_insets_969, field, 'ZERO_INSETS', 'Lorg/jfree/chart/util/RectangleInsets;.ZERO_INSETS)Lorg/jfree/chart/util/RectangleInsets;').
name_ref(m_abstract_object_list_627, method, 'AbstractObjectList', 'Lorg/jfree/chart/util/AbstractObjectList;.()V').
name_ref(m_abstract_object_list_628, method, 'AbstractObjectList', 'Lorg/jfree/chart/util/AbstractObjectList;.(I)V').
name_ref(m_abstract_object_list_629, method, 'AbstractObjectList', 'Lorg/jfree/chart/util/AbstractObjectList;.(II)V').
name_ref(m_add_165, method, 'add', 'Ljava/util/Collection;.add(TE;)Z').
name_ref(m_add_289, method, 'add', 'Ljavax/swing/event/EventListenerList;.add<T::Ljava/util/EventListener;>(Ljava/lang/Class<TT;>;TT;)V').
name_ref(m_add_annotation_188, method, 'addAnnotation', 'Lorg/jfree/chart/plot/CategoryPlot;.addAnnotation(Lorg/jfree/chart/annotations/CategoryAnnotation;)V').
name_ref(m_add_annotation_189, method, 'addAnnotation', 'Lorg/jfree/chart/plot/CategoryPlot;.addAnnotation(Lorg/jfree/chart/annotations/CategoryAnnotation;Z)V').
name_ref(m_add_annotation_488, method, 'addAnnotation', 'Lorg/jfree/chart/plot/XYPlot;.addAnnotation(Lorg/jfree/chart/annotations/XYAnnotation;)V').
name_ref(m_add_annotation_489, method, 'addAnnotation', 'Lorg/jfree/chart/plot/XYPlot;.addAnnotation(Lorg/jfree/chart/annotations/XYAnnotation;Z)V').
name_ref(m_add_change_listener_166, method, 'addChangeListener', 'Lorg/jfree/chart/plot/Marker;.addChangeListener(Lorg/jfree/chart/event/MarkerChangeListener;)V').
name_ref(m_add_change_listener_333, method, 'addChangeListener', 'Lorg/jfree/chart/plot/Plot;.addChangeListener(Lorg/jfree/chart/event/PlotChangeListener;)V').
name_ref(m_add_domain_marker_147, method, 'addDomainMarker', 'Lorg/jfree/chart/plot/CategoryPlot;.addDomainMarker(Lorg/jfree/chart/plot/CategoryMarker;)V').
name_ref(m_add_domain_marker_148, method, 'addDomainMarker', 'Lorg/jfree/chart/plot/CategoryPlot;.addDomainMarker(Lorg/jfree/chart/plot/CategoryMarker;Lorg/jfree/chart/util/Layer;)V').
name_ref(m_add_domain_marker_149, method, 'addDomainMarker', 'Lorg/jfree/chart/plot/CategoryPlot;.addDomainMarker(ILorg/jfree/chart/plot/CategoryMarker;Lorg/jfree/chart/util/Layer;)V').
name_ref(m_add_domain_marker_150, method, 'addDomainMarker', 'Lorg/jfree/chart/plot/CategoryPlot;.addDomainMarker(ILorg/jfree/chart/plot/CategoryMarker;Lorg/jfree/chart/util/Layer;Z)V').
name_ref(m_add_domain_marker_468, method, 'addDomainMarker', 'Lorg/jfree/chart/plot/XYPlot;.addDomainMarker(Lorg/jfree/chart/plot/Marker;)V').
name_ref(m_add_domain_marker_469, method, 'addDomainMarker', 'Lorg/jfree/chart/plot/XYPlot;.addDomainMarker(Lorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;)V').
name_ref(m_add_domain_marker_472, method, 'addDomainMarker', 'Lorg/jfree/chart/plot/XYPlot;.addDomainMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;)V').
name_ref(m_add_domain_marker_473, method, 'addDomainMarker', 'Lorg/jfree/chart/plot/XYPlot;.addDomainMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;Z)V').
name_ref(m_add_range_marker_161, method, 'addRangeMarker', 'Lorg/jfree/chart/plot/CategoryPlot;.addRangeMarker(Lorg/jfree/chart/plot/Marker;)V').
name_ref(m_add_range_marker_162, method, 'addRangeMarker', 'Lorg/jfree/chart/plot/CategoryPlot;.addRangeMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;)V').
name_ref(m_add_range_marker_163, method, 'addRangeMarker', 'Lorg/jfree/chart/plot/CategoryPlot;.addRangeMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;Z)V').
name_ref(m_add_range_marker_478, method, 'addRangeMarker', 'Lorg/jfree/chart/plot/XYPlot;.addRangeMarker(Lorg/jfree/chart/plot/Marker;)V').
name_ref(m_add_range_marker_479, method, 'addRangeMarker', 'Lorg/jfree/chart/plot/XYPlot;.addRangeMarker(Lorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;)V').
name_ref(m_add_range_marker_481, method, 'addRangeMarker', 'Lorg/jfree/chart/plot/XYPlot;.addRangeMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;)V').
name_ref(m_add_range_marker_482, method, 'addRangeMarker', 'Lorg/jfree/chart/plot/XYPlot;.addRangeMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;Z)V').
name_ref(m_add_range_marker_59, method, 'addRangeMarker', 'Lorg/jfree/chart/plot/CategoryPlot;.addRangeMarker(Lorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;)V').
name_ref(m_array_list_60, method, 'ArrayList', 'Ljava/util/ArrayList;.()V').
name_ref(m_assert_false_593, method, 'assertFalse', 'Ljunit/framework/TestCase;.assertFalse(Z)V').
name_ref(m_axis_changed_344, method, 'axisChanged', 'Lorg/jfree/chart/plot/Plot;.axisChanged(Lorg/jfree/chart/event/AxisChangeEvent;)V').
name_ref(m_axis_location_4, method, 'AxisLocation', 'Lorg/jfree/chart/axis/AxisLocation;.(Ljava/lang/String;)V').
name_ref(m_basic_stroke_33, method, 'BasicStroke', 'Ljava/awt/BasicStroke;.(F)V').
name_ref(m_basic_stroke_42, method, 'BasicStroke', 'Ljava/awt/BasicStroke;.(FIIF[FF)V').
name_ref(m_calculate_axis_space_195, method, 'calculateAxisSpace', 'Lorg/jfree/chart/plot/CategoryPlot;.calculateAxisSpace(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)Lorg/jfree/chart/axis/AxisSpace;').
name_ref(m_calculate_axis_space_494, method, 'calculateAxisSpace', 'Lorg/jfree/chart/plot/XYPlot;.calculateAxisSpace(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)Lorg/jfree/chart/axis/AxisSpace;').
name_ref(m_calculate_bottom_inset_676, method, 'calculateBottomInset', 'Lorg/jfree/chart/util/RectangleInsets;.calculateBottomInset(D)D').
name_ref(m_calculate_bottom_outset_677, method, 'calculateBottomOutset', 'Lorg/jfree/chart/util/RectangleInsets;.calculateBottomOutset(D)D').
name_ref(m_calculate_domain_axis_space_193, method, 'calculateDomainAxisSpace', 'Lorg/jfree/chart/plot/CategoryPlot;.calculateDomainAxisSpace(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/axis/AxisSpace;)Lorg/jfree/chart/axis/AxisSpace;').
name_ref(m_calculate_domain_axis_space_495, method, 'calculateDomainAxisSpace', 'Lorg/jfree/chart/plot/XYPlot;.calculateDomainAxisSpace(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/axis/AxisSpace;)Lorg/jfree/chart/axis/AxisSpace;').
name_ref(m_calculate_left_inset_678, method, 'calculateLeftInset', 'Lorg/jfree/chart/util/RectangleInsets;.calculateLeftInset(D)D').
name_ref(m_calculate_left_outset_679, method, 'calculateLeftOutset', 'Lorg/jfree/chart/util/RectangleInsets;.calculateLeftOutset(D)D').
name_ref(m_calculate_range_axis_space_194, method, 'calculateRangeAxisSpace', 'Lorg/jfree/chart/plot/CategoryPlot;.calculateRangeAxisSpace(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/axis/AxisSpace;)Lorg/jfree/chart/axis/AxisSpace;').
name_ref(m_calculate_range_axis_space_496, method, 'calculateRangeAxisSpace', 'Lorg/jfree/chart/plot/XYPlot;.calculateRangeAxisSpace(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/axis/AxisSpace;)Lorg/jfree/chart/axis/AxisSpace;').
name_ref(m_calculate_right_inset_680, method, 'calculateRightInset', 'Lorg/jfree/chart/util/RectangleInsets;.calculateRightInset(D)D').
name_ref(m_calculate_right_outset_681, method, 'calculateRightOutset', 'Lorg/jfree/chart/util/RectangleInsets;.calculateRightOutset(D)D').
name_ref(m_calculate_top_inset_674, method, 'calculateTopInset', 'Lorg/jfree/chart/util/RectangleInsets;.calculateTopInset(D)D').
name_ref(m_calculate_top_outset_675, method, 'calculateTopOutset', 'Lorg/jfree/chart/util/RectangleInsets;.calculateTopOutset(D)D').
name_ref(m_category_anchor_10, method, 'CategoryAnchor', 'Lorg/jfree/chart/axis/CategoryAnchor;.(Ljava/lang/String;)V').
name_ref(m_category_marker_31, method, 'CategoryMarker', 'Lorg/jfree/chart/plot/CategoryMarker;.(Ljava/lang/Comparable;)V').
name_ref(m_category_marker_32, method, 'CategoryMarker', 'Lorg/jfree/chart/plot/CategoryMarker;.(Ljava/lang/Comparable;Ljava/awt/Paint;Ljava/awt/Stroke;)V').
name_ref(m_category_marker_34, method, 'CategoryMarker', 'Lorg/jfree/chart/plot/CategoryMarker;.(Ljava/lang/Comparable;Ljava/awt/Paint;Ljava/awt/Stroke;Ljava/awt/Paint;Ljava/awt/Stroke;F)V').
name_ref(m_category_plot_44, method, 'CategoryPlot', 'Lorg/jfree/chart/plot/CategoryPlot;.()V').
name_ref(m_category_plot_45, method, 'CategoryPlot', 'Lorg/jfree/chart/plot/CategoryPlot;.(Lorg/jfree/data/category/CategoryDataset;Lorg/jfree/chart/axis/CategoryAxis;Lorg/jfree/chart/axis/ValueAxis;Lorg/jfree/chart/renderer/category/CategoryItemRenderer;)V').
name_ref(m_category_plot_tests_574, method, 'CategoryPlotTests', 'Lorg/jfree/chart/plot/junit/CategoryPlotTests;.(Ljava/lang/String;)V').
name_ref(m_chart_change_event_14, method, 'ChartChangeEvent', 'Lorg/jfree/chart/event/ChartChangeEvent;.(Ljava/lang/Object;)V').
name_ref(m_chart_change_event_15, method, 'ChartChangeEvent', 'Lorg/jfree/chart/event/ChartChangeEvent;.(Ljava/lang/Object;Lorg/jfree/chart/JFreeChart;Lorg/jfree/chart/event/ChartChangeEventType;)V').
name_ref(m_chart_change_event_16, method, 'ChartChangeEvent', 'Lorg/jfree/chart/event/ChartChangeEvent;.(Ljava/lang/Object;Lorg/jfree/chart/JFreeChart;)V').
name_ref(m_chart_change_event_type_22, method, 'ChartChangeEventType', 'Lorg/jfree/chart/event/ChartChangeEventType;.(Ljava/lang/String;)V').
name_ref(m_chart_color_2, method, 'ChartColor', 'Lorg/jfree/chart/ChartColor;.(III)V').
name_ref(m_clear_633, method, 'clear', 'Lorg/jfree/chart/util/AbstractObjectList;.clear()V').
name_ref(m_clear_annotations_192, method, 'clearAnnotations', 'Lorg/jfree/chart/plot/CategoryPlot;.clearAnnotations()V').
name_ref(m_clear_annotations_493, method, 'clearAnnotations', 'Lorg/jfree/chart/plot/XYPlot;.clearAnnotations()V').
name_ref(m_clear_domain_axes_394, method, 'clearDomainAxes', 'Lorg/jfree/chart/plot/XYPlot;.clearDomainAxes()V').
name_ref(m_clear_domain_axes_81, method, 'clearDomainAxes', 'Lorg/jfree/chart/plot/CategoryPlot;.clearDomainAxes()V').
name_ref(m_clear_domain_markers_151, method, 'clearDomainMarkers', 'Lorg/jfree/chart/plot/CategoryPlot;.clearDomainMarkers()V').
name_ref(m_clear_domain_markers_154, method, 'clearDomainMarkers', 'Lorg/jfree/chart/plot/CategoryPlot;.clearDomainMarkers(I)V').
name_ref(m_clear_domain_markers_470, method, 'clearDomainMarkers', 'Lorg/jfree/chart/plot/XYPlot;.clearDomainMarkers()V').
name_ref(m_clear_domain_markers_471, method, 'clearDomainMarkers', 'Lorg/jfree/chart/plot/XYPlot;.clearDomainMarkers(I)V').
name_ref(m_clear_range_axes_100, method, 'clearRangeAxes', 'Lorg/jfree/chart/plot/CategoryPlot;.clearRangeAxes()V').
name_ref(m_clear_range_axes_410, method, 'clearRangeAxes', 'Lorg/jfree/chart/plot/XYPlot;.clearRangeAxes()V').
name_ref(m_clear_range_markers_168, method, 'clearRangeMarkers', 'Lorg/jfree/chart/plot/CategoryPlot;.clearRangeMarkers()V').
name_ref(m_clear_range_markers_171, method, 'clearRangeMarkers', 'Lorg/jfree/chart/plot/CategoryPlot;.clearRangeMarkers(I)V').
name_ref(m_clear_range_markers_480, method, 'clearRangeMarkers', 'Lorg/jfree/chart/plot/XYPlot;.clearRangeMarkers()V').
name_ref(m_clear_range_markers_483, method, 'clearRangeMarkers', 'Lorg/jfree/chart/plot/XYPlot;.clearRangeMarkers(I)V').
name_ref(m_clone_234, method, 'clone', 'Lorg/jfree/chart/plot/CategoryPlot;.clone()Ljava/lang/Object;|Ljava/lang/CloneNotSupportedException;').
name_ref(m_clone_261, method, 'clone', 'Lorg/jfree/chart/plot/DefaultDrawingSupplier;.clone()Ljava/lang/Object;|Ljava/lang/CloneNotSupportedException;').
name_ref(m_clone_294, method, 'clone', 'Lorg/jfree/chart/plot/Marker;.clone()Ljava/lang/Object;|Ljava/lang/CloneNotSupportedException;').
name_ref(m_clone_350, method, 'clone', 'Lorg/jfree/chart/plot/Plot;.clone()Ljava/lang/Object;|Ljava/lang/CloneNotSupportedException;').
name_ref(m_clone_569, method, 'clone', 'Lorg/jfree/chart/plot/XYPlot;.clone()Ljava/lang/Object;|Ljava/lang/CloneNotSupportedException;').
name_ref(m_clone_637, method, 'clone', 'Lorg/jfree/chart/util/AbstractObjectList;.clone()Ljava/lang/Object;|Ljava/lang/CloneNotSupportedException;').
name_ref(m_color_1, method, 'Color', 'Ljava/awt/Color;.(III)V').
name_ref(m_color_58, method, 'Color', 'Ljava/awt/Color;.(FFFF)V').
name_ref(m_configure_domain_axes_376, method, 'configureDomainAxes', 'Lorg/jfree/chart/plot/XYPlot;.configureDomainAxes()V').
name_ref(m_configure_domain_axes_54, method, 'configureDomainAxes', 'Lorg/jfree/chart/plot/CategoryPlot;.configureDomainAxes()V').
name_ref(m_configure_range_axes_377, method, 'configureRangeAxes', 'Lorg/jfree/chart/plot/XYPlot;.configureRangeAxes()V').
name_ref(m_configure_range_axes_55, method, 'configureRangeAxes', 'Lorg/jfree/chart/plot/CategoryPlot;.configureRangeAxes()V').
name_ref(m_coordinates_656, method, 'coordinates', 'Lorg/jfree/chart/util/RectangleAnchor;.coordinates(Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/util/RectangleAnchor;)Ljava/awt/geom/Point2D;').
name_ref(m_create_adjusted_rectangle_669, method, 'createAdjustedRectangle', 'Lorg/jfree/chart/util/RectangleInsets;.createAdjustedRectangle(Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/util/LengthAdjustmentType;Lorg/jfree/chart/util/LengthAdjustmentType;)Ljava/awt/geom/Rectangle2D;').
name_ref(m_create_dataset1_611, method, 'createDataset1', 'Lorg/jfree/chart/plot/junit/XYPlotTests;.createDataset1()Lorg/jfree/data/xy/IntervalXYDataset;').
name_ref(m_create_dataset2_612, method, 'createDataset2', 'Lorg/jfree/chart/plot/junit/XYPlotTests;.createDataset2()Lorg/jfree/data/xy/XYDataset;').
name_ref(m_create_default_paint_array_3, method, 'createDefaultPaintArray', 'Lorg/jfree/chart/ChartColor;.createDefaultPaintArray()[Ljava/awt/Paint;').
name_ref(m_create_inset_rectangle_670, method, 'createInsetRectangle', 'Lorg/jfree/chart/util/RectangleInsets;.createInsetRectangle(Ljava/awt/geom/Rectangle2D;)Ljava/awt/geom/Rectangle2D;').
name_ref(m_create_inset_rectangle_671, method, 'createInsetRectangle', 'Lorg/jfree/chart/util/RectangleInsets;.createInsetRectangle(Ljava/awt/geom/Rectangle2D;ZZ)Ljava/awt/geom/Rectangle2D;').
name_ref(m_create_outset_rectangle_672, method, 'createOutsetRectangle', 'Lorg/jfree/chart/util/RectangleInsets;.createOutsetRectangle(Ljava/awt/geom/Rectangle2D;)Ljava/awt/geom/Rectangle2D;').
name_ref(m_create_outset_rectangle_673, method, 'createOutsetRectangle', 'Lorg/jfree/chart/util/RectangleInsets;.createOutsetRectangle(Ljava/awt/geom/Rectangle2D;ZZ)Ljava/awt/geom/Rectangle2D;').
name_ref(m_create_rectangle_657, method, 'createRectangle', 'Lorg/jfree/chart/util/RectangleAnchor;.createRectangle(Lorg/jfree/chart/util/Size2D;DDLorg/jfree/chart/util/RectangleAnchor;)Ljava/awt/geom/Rectangle2D;').
name_ref(m_create_standard_series_shapes_251, method, 'createStandardSeriesShapes', 'Lorg/jfree/chart/plot/DefaultDrawingSupplier;.createStandardSeriesShapes()[Ljava/awt/Shape;').
name_ref(m_dataset_change_event_108, method, 'DatasetChangeEvent', 'Lorg/jfree/data/general/DatasetChangeEvent;.(Ljava/lang/Object;Lorg/jfree/data/general/Dataset;)V').
name_ref(m_dataset_changed_107, method, 'datasetChanged', 'Lorg/jfree/chart/plot/CategoryPlot;.datasetChanged(Lorg/jfree/data/general/DatasetChangeEvent;)V').
name_ref(m_dataset_changed_345, method, 'datasetChanged', 'Lorg/jfree/chart/plot/Plot;.datasetChanged(Lorg/jfree/data/general/DatasetChangeEvent;)V').
name_ref(m_dataset_changed_421, method, 'datasetChanged', 'Lorg/jfree/chart/plot/XYPlot;.datasetChanged(Lorg/jfree/data/general/DatasetChangeEvent;)V').
name_ref(m_dataset_rendering_order_237, method, 'DatasetRenderingOrder', 'Lorg/jfree/chart/plot/DatasetRenderingOrder;.(Ljava/lang/String;)V').
name_ref(m_datasets_mapped_to_domain_axis_208, method, 'datasetsMappedToDomainAxis', 'Lorg/jfree/chart/plot/CategoryPlot;.datasetsMappedToDomainAxis(I)Ljava/util/List;').
name_ref(m_datasets_mapped_to_range_axis_209, method, 'datasetsMappedToRangeAxis', 'Lorg/jfree/chart/plot/CategoryPlot;.datasetsMappedToRangeAxis(I)Ljava/util/List;').
name_ref(m_default_drawing_supplier_242, method, 'DefaultDrawingSupplier', 'Lorg/jfree/chart/plot/DefaultDrawingSupplier;.()V').
name_ref(m_default_drawing_supplier_243, method, 'DefaultDrawingSupplier', 'Lorg/jfree/chart/plot/DefaultDrawingSupplier;.([Ljava/awt/Paint;[Ljava/awt/Paint;[Ljava/awt/Paint;[Ljava/awt/Stroke;[Ljava/awt/Stroke;[Ljava/awt/Shape;)V').
name_ref(m_default_drawing_supplier_244, method, 'DefaultDrawingSupplier', 'Lorg/jfree/chart/plot/DefaultDrawingSupplier;.([Ljava/awt/Paint;[Ljava/awt/Paint;[Ljava/awt/Stroke;[Ljava/awt/Stroke;[Ljava/awt/Shape;)V').
name_ref(m_double_252, method, 'Double', 'Ljava/awt/geom/Rectangle2D$Double;.(DDDD)V').
name_ref(m_double_253, method, 'Double', 'Ljava/awt/geom/Ellipse2D$Double;.(DDDD)V').
name_ref(m_double_370, method, 'Double', 'Ljava/awt/geom/Point2D$Double;.(DD)V').
name_ref(m_draw_196, method, 'draw', 'Lorg/jfree/chart/plot/CategoryPlot;.draw(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Point2D;Lorg/jfree/chart/plot/PlotState;Lorg/jfree/chart/plot/PlotRenderingInfo;)V').
name_ref(m_draw_335, method, 'draw', 'Lorg/jfree/chart/plot/Plot;.draw(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Point2D;Lorg/jfree/chart/plot/PlotState;Lorg/jfree/chart/plot/PlotRenderingInfo;)V').
name_ref(m_draw_497, method, 'draw', 'Lorg/jfree/chart/plot/XYPlot;.draw(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Point2D;Lorg/jfree/chart/plot/PlotState;Lorg/jfree/chart/plot/PlotRenderingInfo;)V').
name_ref(m_draw_annotations_202, method, 'drawAnnotations', 'Lorg/jfree/chart/plot/CategoryPlot;.drawAnnotations(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/plot/PlotRenderingInfo;)V').
name_ref(m_draw_annotations_510, method, 'drawAnnotations', 'Lorg/jfree/chart/plot/XYPlot;.drawAnnotations(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/plot/PlotRenderingInfo;)V').
name_ref(m_draw_axes_198, method, 'drawAxes', 'Lorg/jfree/chart/plot/CategoryPlot;.drawAxes(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/plot/PlotRenderingInfo;)Ljava/util/Map;').
name_ref(m_draw_axes_502, method, 'drawAxes', 'Lorg/jfree/chart/plot/XYPlot;.drawAxes(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/plot/PlotRenderingInfo;)Ljava/util/Map;').
name_ref(m_draw_background_197, method, 'drawBackground', 'Lorg/jfree/chart/plot/CategoryPlot;.drawBackground(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V').
name_ref(m_draw_background_336, method, 'drawBackground', 'Lorg/jfree/chart/plot/Plot;.drawBackground(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V').
name_ref(m_draw_background_498, method, 'drawBackground', 'Lorg/jfree/chart/plot/XYPlot;.drawBackground(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V').
name_ref(m_draw_background_image_339, method, 'drawBackgroundImage', 'Lorg/jfree/chart/plot/Plot;.drawBackgroundImage(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V').
name_ref(m_draw_domain_crosshair_518, method, 'drawDomainCrosshair', 'Lorg/jfree/chart/plot/XYPlot;.drawDomainCrosshair(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/plot/PlotOrientation;DLorg/jfree/chart/axis/ValueAxis;Ljava/awt/Stroke;Ljava/awt/Paint;)V').
name_ref(m_draw_domain_gridlines_200, method, 'drawDomainGridlines', 'Lorg/jfree/chart/plot/CategoryPlot;.drawDomainGridlines(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V').
name_ref(m_draw_domain_gridlines_506, method, 'drawDomainGridlines', 'Lorg/jfree/chart/plot/XYPlot;.drawDomainGridlines(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/util/List;)V').
name_ref(m_draw_domain_markers_203, method, 'drawDomainMarkers', 'Lorg/jfree/chart/plot/CategoryPlot;.drawDomainMarkers(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;ILorg/jfree/chart/util/Layer;)V').
name_ref(m_draw_domain_markers_511, method, 'drawDomainMarkers', 'Lorg/jfree/chart/plot/XYPlot;.drawDomainMarkers(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;ILorg/jfree/chart/util/Layer;)V').
name_ref(m_draw_domain_tick_bands_500, method, 'drawDomainTickBands', 'Lorg/jfree/chart/plot/XYPlot;.drawDomainTickBands(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/util/List;)V').
name_ref(m_draw_horizontal_line_517, method, 'drawHorizontalLine', 'Lorg/jfree/chart/plot/XYPlot;.drawHorizontalLine(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;DLjava/awt/Stroke;Ljava/awt/Paint;)V').
name_ref(m_draw_no_data_message_341, method, 'drawNoDataMessage', 'Lorg/jfree/chart/plot/Plot;.drawNoDataMessage(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V').
name_ref(m_draw_outline_340, method, 'drawOutline', 'Lorg/jfree/chart/plot/Plot;.drawOutline(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V').
name_ref(m_draw_quadrants_499, method, 'drawQuadrants', 'Lorg/jfree/chart/plot/XYPlot;.drawQuadrants(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V').
name_ref(m_draw_range_crosshair_206, method, 'drawRangeCrosshair', 'Lorg/jfree/chart/plot/CategoryPlot;.drawRangeCrosshair(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/plot/PlotOrientation;DLorg/jfree/chart/axis/ValueAxis;Ljava/awt/Stroke;Ljava/awt/Paint;)V').
name_ref(m_draw_range_crosshair_520, method, 'drawRangeCrosshair', 'Lorg/jfree/chart/plot/XYPlot;.drawRangeCrosshair(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/plot/PlotOrientation;DLorg/jfree/chart/axis/ValueAxis;Ljava/awt/Stroke;Ljava/awt/Paint;)V').
name_ref(m_draw_range_gridlines_201, method, 'drawRangeGridlines', 'Lorg/jfree/chart/plot/CategoryPlot;.drawRangeGridlines(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/util/List;)V').
name_ref(m_draw_range_gridlines_507, method, 'drawRangeGridlines', 'Lorg/jfree/chart/plot/XYPlot;.drawRangeGridlines(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/util/List;)V').
name_ref(m_draw_range_line_205, method, 'drawRangeLine', 'Lorg/jfree/chart/plot/CategoryPlot;.drawRangeLine(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;DLjava/awt/Stroke;Ljava/awt/Paint;)V').
name_ref(m_draw_range_markers_204, method, 'drawRangeMarkers', 'Lorg/jfree/chart/plot/CategoryPlot;.drawRangeMarkers(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;ILorg/jfree/chart/util/Layer;)V').
name_ref(m_draw_range_markers_512, method, 'drawRangeMarkers', 'Lorg/jfree/chart/plot/XYPlot;.drawRangeMarkers(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;ILorg/jfree/chart/util/Layer;)V').
name_ref(m_draw_range_tick_bands_501, method, 'drawRangeTickBands', 'Lorg/jfree/chart/plot/XYPlot;.drawRangeTickBands(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/util/List;)V').
name_ref(m_draw_vertical_line_519, method, 'drawVerticalLine', 'Lorg/jfree/chart/plot/XYPlot;.drawVerticalLine(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;DLjava/awt/Stroke;Ljava/awt/Paint;)V').
name_ref(m_draw_zero_domain_baseline_508, method, 'drawZeroDomainBaseline', 'Lorg/jfree/chart/plot/XYPlot;.drawZeroDomainBaseline(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V').
name_ref(m_draw_zero_range_baseline_509, method, 'drawZeroRangeBaseline', 'Lorg/jfree/chart/plot/XYPlot;.drawZeroRangeBaseline(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V').
name_ref(m_equal_shapes_258, method, 'equalShapes', 'Lorg/jfree/chart/plot/DefaultDrawingSupplier;.equalShapes([Ljava/awt/Shape;[Ljava/awt/Shape;)Z').
name_ref(m_equals_12, method, 'equals', 'Lorg/jfree/chart/axis/CategoryAnchor;.equals(Ljava/lang/Object;)Z').
name_ref(m_equals_233, method, 'equals', 'Lorg/jfree/chart/plot/CategoryPlot;.equals(Ljava/lang/Object;)Z').
name_ref(m_equals_239, method, 'equals', 'Lorg/jfree/chart/plot/DatasetRenderingOrder;.equals(Ljava/lang/Object;)Z').
name_ref(m_equals_24, method, 'equals', 'Lorg/jfree/chart/event/ChartChangeEventType;.equals(Ljava/lang/Object;)Z').
name_ref(m_equals_257, method, 'equals', 'Lorg/jfree/chart/plot/DefaultDrawingSupplier;.equals(Ljava/lang/Object;)Z').
name_ref(m_equals_293, method, 'equals', 'Lorg/jfree/chart/plot/Marker;.equals(Ljava/lang/Object;)Z').
name_ref(m_equals_349, method, 'equals', 'Lorg/jfree/chart/plot/Plot;.equals(Ljava/lang/Object;)Z').
name_ref(m_equals_357, method, 'equals', 'Lorg/jfree/chart/plot/PlotOrientation;.equals(Ljava/lang/Object;)Z').
name_ref(m_equals_362, method, 'equals', 'Lorg/jfree/chart/plot/SeriesRenderingOrder;.equals(Ljava/lang/Object;)Z').
name_ref(m_equals_369, method, 'equals', 'Lorg/jfree/chart/plot/ValueMarker;.equals(Ljava/lang/Object;)Z').
name_ref(m_equals_41, method, 'equals', 'Lorg/jfree/chart/plot/CategoryMarker;.equals(Ljava/lang/Object;)Z').
name_ref(m_equals_568, method, 'equals', 'Lorg/jfree/chart/plot/XYPlot;.equals(Ljava/lang/Object;)Z').
name_ref(m_equals_624, method, 'equals', 'Lorg/jfree/chart/text/TextAnchor;.equals(Ljava/lang/Object;)Z').
name_ref(m_equals_635, method, 'equals', 'Lorg/jfree/chart/util/AbstractObjectList;.equals(Ljava/lang/Object;)Z').
name_ref(m_equals_642, method, 'equals', 'Lorg/jfree/chart/util/Layer;.equals(Ljava/lang/Object;)Z').
name_ref(m_equals_647, method, 'equals', 'Lorg/jfree/chart/util/LengthAdjustmentType;.equals(Ljava/lang/Object;)Z').
name_ref(m_equals_654, method, 'equals', 'Lorg/jfree/chart/util/RectangleAnchor;.equals(Ljava/lang/Object;)Z').
name_ref(m_equals_666, method, 'equals', 'Lorg/jfree/chart/util/RectangleInsets;.equals(Ljava/lang/Object;)Z').
name_ref(m_equals_689, method, 'equals', 'Lorg/jfree/chart/util/SortOrder;.equals(Ljava/lang/Object;)Z').
name_ref(m_equals_694, method, 'equals', 'Lorg/jfree/chart/util/UnitType;.equals(Ljava/lang/Object;)Z').
name_ref(m_equals_7, method, 'equals', 'Lorg/jfree/chart/axis/AxisLocation;.equals(Ljava/lang/Object;)Z').
name_ref(m_event_listener_list_264, method, 'EventListenerList', 'Ljavax/swing/event/EventListenerList;.()V').
name_ref(m_event_object_17, method, 'EventObject', 'Ljava/util/EventObject;.(Ljava/lang/Object;)V').
name_ref(m_extend_height_685, method, 'extendHeight', 'Lorg/jfree/chart/util/RectangleInsets;.extendHeight(D)D').
name_ref(m_extend_width_683, method, 'extendWidth', 'Lorg/jfree/chart/util/RectangleInsets;.extendWidth(D)D').
name_ref(m_fill_background_337, method, 'fillBackground', 'Lorg/jfree/chart/plot/Plot;.fillBackground(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V').
name_ref(m_fill_background_338, method, 'fillBackground', 'Lorg/jfree/chart/plot/Plot;.fillBackground(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Lorg/jfree/chart/plot/PlotOrientation;)V').
name_ref(m_fire_change_event_167, method, 'fireChangeEvent', 'Lorg/jfree/chart/plot/Plot;.fireChangeEvent()V').
name_ref(m_font_43, method, 'Font', 'Ljava/awt/Font;.(Ljava/lang/String;II)V').
name_ref(m_get_159, method, 'get', 'Ljava/util/Map;.get(Ljava/lang/Object;)TV;').
name_ref(m_get_630, method, 'get', 'Lorg/jfree/chart/util/AbstractObjectList;.get(I)Ljava/lang/Object;').
name_ref(m_get_83, method, 'get', 'Lorg/jfree/chart/util/ObjectList;.get(I)Ljava/lang/Object;').
name_ref(m_get_alpha_273, method, 'getAlpha', 'Lorg/jfree/chart/plot/Marker;.getAlpha()F').
name_ref(m_get_anchor_value_230, method, 'getAnchorValue', 'Lorg/jfree/chart/plot/CategoryPlot;.getAnchorValue()D').
name_ref(m_get_annotations_187, method, 'getAnnotations', 'Lorg/jfree/chart/plot/CategoryPlot;.getAnnotations()Ljava/util/List;').
name_ref(m_get_annotations_492, method, 'getAnnotations', 'Lorg/jfree/chart/plot/XYPlot;.getAnnotations()Ljava/util/List;').
name_ref(m_get_axis_offset_381, method, 'getAxisOffset', 'Lorg/jfree/chart/plot/XYPlot;.getAxisOffset()Lorg/jfree/chart/util/RectangleInsets;').
name_ref(m_get_axis_offset_64, method, 'getAxisOffset', 'Lorg/jfree/chart/plot/CategoryPlot;.getAxisOffset()Lorg/jfree/chart/util/RectangleInsets;').
name_ref(m_get_background_alpha_314, method, 'getBackgroundAlpha', 'Lorg/jfree/chart/plot/Plot;.getBackgroundAlpha()F').
name_ref(m_get_background_image_318, method, 'getBackgroundImage', 'Lorg/jfree/chart/plot/Plot;.getBackgroundImage()Ljava/awt/Image;').
name_ref(m_get_background_image_alignment_320, method, 'getBackgroundImageAlignment', 'Lorg/jfree/chart/plot/Plot;.getBackgroundImageAlignment()I').
name_ref(m_get_background_image_alpha_322, method, 'getBackgroundImageAlpha', 'Lorg/jfree/chart/plot/Plot;.getBackgroundImageAlpha()F').
name_ref(m_get_background_paint_312, method, 'getBackgroundPaint', 'Lorg/jfree/chart/plot/Plot;.getBackgroundPaint()Ljava/awt/Paint;').
name_ref(m_get_bottom_663, method, 'getBottom', 'Lorg/jfree/chart/util/RectangleInsets;.getBottom()D').
name_ref(m_get_categories_218, method, 'getCategories', 'Lorg/jfree/chart/plot/CategoryPlot;.getCategories()Ljava/util/List;').
name_ref(m_get_categories_for_axis_219, method, 'getCategoriesForAxis', 'Lorg/jfree/chart/plot/CategoryPlot;.getCategoriesForAxis(Lorg/jfree/chart/axis/CategoryAxis;)Ljava/util/List;').
name_ref(m_get_chart_18, method, 'getChart', 'Lorg/jfree/chart/event/ChartChangeEvent;.getChart()Lorg/jfree/chart/JFreeChart;').
name_ref(m_get_column_rendering_order_122, method, 'getColumnRenderingOrder', 'Lorg/jfree/chart/plot/CategoryPlot;.getColumnRenderingOrder()Lorg/jfree/chart/util/SortOrder;').
name_ref(m_get_data_range_207, method, 'getDataRange', 'Lorg/jfree/chart/plot/CategoryPlot;.getDataRange(Lorg/jfree/chart/axis/ValueAxis;)Lorg/jfree/data/Range;').
name_ref(m_get_data_range_526, method, 'getDataRange', 'Lorg/jfree/chart/plot/XYPlot;.getDataRange(Lorg/jfree/chart/axis/ValueAxis;)Lorg/jfree/data/Range;').
name_ref(m_get_dataset_101, method, 'getDataset', 'Lorg/jfree/chart/plot/CategoryPlot;.getDataset()Lorg/jfree/data/category/CategoryDataset;').
name_ref(m_get_dataset_102, method, 'getDataset', 'Lorg/jfree/chart/plot/CategoryPlot;.getDataset(I)Lorg/jfree/data/category/CategoryDataset;').
name_ref(m_get_dataset_415, method, 'getDataset', 'Lorg/jfree/chart/plot/XYPlot;.getDataset()Lorg/jfree/data/xy/XYDataset;').
name_ref(m_get_dataset_416, method, 'getDataset', 'Lorg/jfree/chart/plot/XYPlot;.getDataset(I)Lorg/jfree/data/xy/XYDataset;').
name_ref(m_get_dataset_count_105, method, 'getDatasetCount', 'Lorg/jfree/chart/plot/CategoryPlot;.getDatasetCount()I').
name_ref(m_get_dataset_count_419, method, 'getDatasetCount', 'Lorg/jfree/chart/plot/XYPlot;.getDatasetCount()I').
name_ref(m_get_dataset_group_297, method, 'getDatasetGroup', 'Lorg/jfree/chart/plot/Plot;.getDatasetGroup()Lorg/jfree/data/general/DatasetGroup;').
name_ref(m_get_dataset_rendering_order_120, method, 'getDatasetRenderingOrder', 'Lorg/jfree/chart/plot/CategoryPlot;.getDatasetRenderingOrder()Lorg/jfree/chart/plot/DatasetRenderingOrder;').
name_ref(m_get_dataset_rendering_order_428, method, 'getDatasetRenderingOrder', 'Lorg/jfree/chart/plot/XYPlot;.getDatasetRenderingOrder()Lorg/jfree/chart/plot/DatasetRenderingOrder;').
name_ref(m_get_datasets_mapped_to_domain_axis_522, method, 'getDatasetsMappedToDomainAxis', 'Lorg/jfree/chart/plot/XYPlot;.getDatasetsMappedToDomainAxis(Ljava/lang/Integer;)Ljava/util/List;').
name_ref(m_get_datasets_mapped_to_range_axis_523, method, 'getDatasetsMappedToRangeAxis', 'Lorg/jfree/chart/plot/XYPlot;.getDatasetsMappedToRangeAxis(Ljava/lang/Integer;)Ljava/util/List;').
name_ref(m_get_domain_axis_383, method, 'getDomainAxis', 'Lorg/jfree/chart/plot/XYPlot;.getDomainAxis()Lorg/jfree/chart/axis/ValueAxis;').
name_ref(m_get_domain_axis_384, method, 'getDomainAxis', 'Lorg/jfree/chart/plot/XYPlot;.getDomainAxis(I)Lorg/jfree/chart/axis/ValueAxis;').
name_ref(m_get_domain_axis_66, method, 'getDomainAxis', 'Lorg/jfree/chart/plot/CategoryPlot;.getDomainAxis()Lorg/jfree/chart/axis/CategoryAxis;').
name_ref(m_get_domain_axis_67, method, 'getDomainAxis', 'Lorg/jfree/chart/plot/CategoryPlot;.getDomainAxis(I)Lorg/jfree/chart/axis/CategoryAxis;').
name_ref(m_get_domain_axis_count_393, method, 'getDomainAxisCount', 'Lorg/jfree/chart/plot/XYPlot;.getDomainAxisCount()I').
name_ref(m_get_domain_axis_count_80, method, 'getDomainAxisCount', 'Lorg/jfree/chart/plot/CategoryPlot;.getDomainAxisCount()I').
name_ref(m_get_domain_axis_edge_392, method, 'getDomainAxisEdge', 'Lorg/jfree/chart/plot/XYPlot;.getDomainAxisEdge()Lorg/jfree/chart/util/RectangleEdge;').
name_ref(m_get_domain_axis_edge_398, method, 'getDomainAxisEdge', 'Lorg/jfree/chart/plot/XYPlot;.getDomainAxisEdge(I)Lorg/jfree/chart/util/RectangleEdge;').
name_ref(m_get_domain_axis_edge_78, method, 'getDomainAxisEdge', 'Lorg/jfree/chart/plot/CategoryPlot;.getDomainAxisEdge()Lorg/jfree/chart/util/RectangleEdge;').
name_ref(m_get_domain_axis_edge_79, method, 'getDomainAxisEdge', 'Lorg/jfree/chart/plot/CategoryPlot;.getDomainAxisEdge(I)Lorg/jfree/chart/util/RectangleEdge;').
name_ref(m_get_domain_axis_for_dataset_109, method, 'getDomainAxisForDataset', 'Lorg/jfree/chart/plot/CategoryPlot;.getDomainAxisForDataset(I)Lorg/jfree/chart/axis/CategoryAxis;').
name_ref(m_get_domain_axis_for_dataset_504, method, 'getDomainAxisForDataset', 'Lorg/jfree/chart/plot/XYPlot;.getDomainAxisForDataset(I)Lorg/jfree/chart/axis/ValueAxis;').
name_ref(m_get_domain_axis_index_524, method, 'getDomainAxisIndex', 'Lorg/jfree/chart/plot/XYPlot;.getDomainAxisIndex(Lorg/jfree/chart/axis/ValueAxis;)I').
name_ref(m_get_domain_axis_index_72, method, 'getDomainAxisIndex', 'Lorg/jfree/chart/plot/CategoryPlot;.getDomainAxisIndex(Lorg/jfree/chart/axis/CategoryAxis;)I').
name_ref(m_get_domain_axis_location_389, method, 'getDomainAxisLocation', 'Lorg/jfree/chart/plot/XYPlot;.getDomainAxisLocation()Lorg/jfree/chart/axis/AxisLocation;').
name_ref(m_get_domain_axis_location_395, method, 'getDomainAxisLocation', 'Lorg/jfree/chart/plot/XYPlot;.getDomainAxisLocation(I)Lorg/jfree/chart/axis/AxisLocation;').
name_ref(m_get_domain_axis_location_73, method, 'getDomainAxisLocation', 'Lorg/jfree/chart/plot/CategoryPlot;.getDomainAxisLocation()Lorg/jfree/chart/axis/AxisLocation;').
name_ref(m_get_domain_axis_location_74, method, 'getDomainAxisLocation', 'Lorg/jfree/chart/plot/CategoryPlot;.getDomainAxisLocation(I)Lorg/jfree/chart/axis/AxisLocation;').
name_ref(m_get_domain_crosshair_paint_537, method, 'getDomainCrosshairPaint', 'Lorg/jfree/chart/plot/XYPlot;.getDomainCrosshairPaint()Ljava/awt/Paint;').
name_ref(m_get_domain_crosshair_stroke_535, method, 'getDomainCrosshairStroke', 'Lorg/jfree/chart/plot/XYPlot;.getDomainCrosshairStroke()Ljava/awt/Stroke;').
name_ref(m_get_domain_crosshair_value_532, method, 'getDomainCrosshairValue', 'Lorg/jfree/chart/plot/XYPlot;.getDomainCrosshairValue()D').
name_ref(m_get_domain_gridline_paint_132, method, 'getDomainGridlinePaint', 'Lorg/jfree/chart/plot/CategoryPlot;.getDomainGridlinePaint()Ljava/awt/Paint;').
name_ref(m_get_domain_gridline_paint_440, method, 'getDomainGridlinePaint', 'Lorg/jfree/chart/plot/XYPlot;.getDomainGridlinePaint()Ljava/awt/Paint;').
name_ref(m_get_domain_gridline_position_128, method, 'getDomainGridlinePosition', 'Lorg/jfree/chart/plot/CategoryPlot;.getDomainGridlinePosition()Lorg/jfree/chart/axis/CategoryAnchor;').
name_ref(m_get_domain_gridline_stroke_130, method, 'getDomainGridlineStroke', 'Lorg/jfree/chart/plot/CategoryPlot;.getDomainGridlineStroke()Ljava/awt/Stroke;').
name_ref(m_get_domain_gridline_stroke_438, method, 'getDomainGridlineStroke', 'Lorg/jfree/chart/plot/XYPlot;.getDomainGridlineStroke()Ljava/awt/Stroke;').
name_ref(m_get_domain_markers_152, method, 'getDomainMarkers', 'Lorg/jfree/chart/plot/CategoryPlot;.getDomainMarkers(Lorg/jfree/chart/util/Layer;)Ljava/util/Collection;').
name_ref(m_get_domain_markers_153, method, 'getDomainMarkers', 'Lorg/jfree/chart/plot/CategoryPlot;.getDomainMarkers(ILorg/jfree/chart/util/Layer;)Ljava/util/Collection;').
name_ref(m_get_domain_markers_513, method, 'getDomainMarkers', 'Lorg/jfree/chart/plot/XYPlot;.getDomainMarkers(Lorg/jfree/chart/util/Layer;)Ljava/util/Collection;').
name_ref(m_get_domain_markers_515, method, 'getDomainMarkers', 'Lorg/jfree/chart/plot/XYPlot;.getDomainMarkers(ILorg/jfree/chart/util/Layer;)Ljava/util/Collection;').
name_ref(m_get_domain_tick_band_paint_460, method, 'getDomainTickBandPaint', 'Lorg/jfree/chart/plot/XYPlot;.getDomainTickBandPaint()Ljava/awt/Paint;').
name_ref(m_get_domain_zero_baseline_paint_452, method, 'getDomainZeroBaselinePaint', 'Lorg/jfree/chart/plot/XYPlot;.getDomainZeroBaselinePaint()Ljava/awt/Paint;').
name_ref(m_get_domain_zero_baseline_stroke_450, method, 'getDomainZeroBaselineStroke', 'Lorg/jfree/chart/plot/XYPlot;.getDomainZeroBaselineStroke()Ljava/awt/Stroke;').
name_ref(m_get_draw_as_line_39, method, 'getDrawAsLine', 'Lorg/jfree/chart/plot/CategoryMarker;.getDrawAsLine()Z').
name_ref(m_get_draw_shared_domain_axis_220, method, 'getDrawSharedDomainAxis', 'Lorg/jfree/chart/plot/CategoryPlot;.getDrawSharedDomainAxis()Z').
name_ref(m_get_drawing_supplier_316, method, 'getDrawingSupplier', 'Lorg/jfree/chart/plot/Plot;.getDrawingSupplier()Lorg/jfree/chart/plot/DrawingSupplier;').
name_ref(m_get_fixed_domain_axis_space_212, method, 'getFixedDomainAxisSpace', 'Lorg/jfree/chart/plot/CategoryPlot;.getFixedDomainAxisSpace()Lorg/jfree/chart/axis/AxisSpace;').
name_ref(m_get_fixed_domain_axis_space_550, method, 'getFixedDomainAxisSpace', 'Lorg/jfree/chart/plot/XYPlot;.getFixedDomainAxisSpace()Lorg/jfree/chart/axis/AxisSpace;').
name_ref(m_get_fixed_legend_items_140, method, 'getFixedLegendItems', 'Lorg/jfree/chart/plot/CategoryPlot;.getFixedLegendItems()Lorg/jfree/chart/LegendItemCollection;').
name_ref(m_get_fixed_legend_items_565, method, 'getFixedLegendItems', 'Lorg/jfree/chart/plot/XYPlot;.getFixedLegendItems()Lorg/jfree/chart/LegendItemCollection;').
name_ref(m_get_fixed_range_axis_space_215, method, 'getFixedRangeAxisSpace', 'Lorg/jfree/chart/plot/CategoryPlot;.getFixedRangeAxisSpace()Lorg/jfree/chart/axis/AxisSpace;').
name_ref(m_get_fixed_range_axis_space_553, method, 'getFixedRangeAxisSpace', 'Lorg/jfree/chart/plot/XYPlot;.getFixedRangeAxisSpace()Lorg/jfree/chart/axis/AxisSpace;').
name_ref(m_get_foreground_alpha_330, method, 'getForegroundAlpha', 'Lorg/jfree/chart/plot/Plot;.getForegroundAlpha()F').
name_ref(m_get_index_of_119, method, 'getIndexOf', 'Lorg/jfree/chart/plot/CategoryPlot;.getIndexOf(Lorg/jfree/chart/renderer/category/CategoryItemRenderer;)I').
name_ref(m_get_index_of_432, method, 'getIndexOf', 'Lorg/jfree/chart/plot/XYPlot;.getIndexOf(Lorg/jfree/chart/renderer/xy/XYItemRenderer;)I').
name_ref(m_get_insets_309, method, 'getInsets', 'Lorg/jfree/chart/plot/Plot;.getInsets()Lorg/jfree/chart/util/RectangleInsets;').
name_ref(m_get_key_37, method, 'getKey', 'Lorg/jfree/chart/plot/CategoryMarker;.getKey()Ljava/lang/Comparable;').
name_ref(m_get_label_275, method, 'getLabel', 'Lorg/jfree/chart/plot/Marker;.getLabel()Ljava/lang/String;').
name_ref(m_get_label_anchor_281, method, 'getLabelAnchor', 'Lorg/jfree/chart/plot/Marker;.getLabelAnchor()Lorg/jfree/chart/util/RectangleAnchor;').
name_ref(m_get_label_font_277, method, 'getLabelFont', 'Lorg/jfree/chart/plot/Marker;.getLabelFont()Ljava/awt/Font;').
name_ref(m_get_label_offset_283, method, 'getLabelOffset', 'Lorg/jfree/chart/plot/Marker;.getLabelOffset()Lorg/jfree/chart/util/RectangleInsets;').
name_ref(m_get_label_offset_type_285, method, 'getLabelOffsetType', 'Lorg/jfree/chart/plot/Marker;.getLabelOffsetType()Lorg/jfree/chart/util/LengthAdjustmentType;').
name_ref(m_get_label_paint_279, method, 'getLabelPaint', 'Lorg/jfree/chart/plot/Marker;.getLabelPaint()Ljava/awt/Paint;').
name_ref(m_get_label_text_anchor_287, method, 'getLabelTextAnchor', 'Lorg/jfree/chart/plot/Marker;.getLabelTextAnchor()Lorg/jfree/chart/text/TextAnchor;').
name_ref(m_get_left_664, method, 'getLeft', 'Lorg/jfree/chart/util/RectangleInsets;.getLeft()D').
name_ref(m_get_legend_items_142, method, 'getLegendItems', 'Lorg/jfree/chart/plot/CategoryPlot;.getLegendItems()Lorg/jfree/chart/LegendItemCollection;').
name_ref(m_get_legend_items_332, method, 'getLegendItems', 'Lorg/jfree/chart/plot/Plot;.getLegendItems()Lorg/jfree/chart/LegendItemCollection;').
name_ref(m_get_legend_items_567, method, 'getLegendItems', 'Lorg/jfree/chart/plot/XYPlot;.getLegendItems()Lorg/jfree/chart/LegendItemCollection;').
name_ref(m_get_listener_list_291, method, 'getListenerList', 'Ljavax/swing/event/EventListenerList;.getListenerList()[Ljava/lang/Object;').
name_ref(m_get_listeners_292, method, 'getListeners', 'Lorg/jfree/chart/plot/Marker;.getListeners(Ljava/lang/Class;)[Ljava/util/EventListener;').
name_ref(m_get_marker_28, method, 'getMarker', 'Lorg/jfree/chart/event/MarkerChangeEvent;.getMarker()Lorg/jfree/chart/plot/Marker;').
name_ref(m_get_next_fill_paint_247, method, 'getNextFillPaint', 'Lorg/jfree/chart/plot/DefaultDrawingSupplier;.getNextFillPaint()Ljava/awt/Paint;').
name_ref(m_get_next_outline_paint_246, method, 'getNextOutlinePaint', 'Lorg/jfree/chart/plot/DefaultDrawingSupplier;.getNextOutlinePaint()Ljava/awt/Paint;').
name_ref(m_get_next_outline_stroke_249, method, 'getNextOutlineStroke', 'Lorg/jfree/chart/plot/DefaultDrawingSupplier;.getNextOutlineStroke()Ljava/awt/Stroke;').
name_ref(m_get_next_paint_245, method, 'getNextPaint', 'Lorg/jfree/chart/plot/DefaultDrawingSupplier;.getNextPaint()Ljava/awt/Paint;').
name_ref(m_get_next_shape_250, method, 'getNextShape', 'Lorg/jfree/chart/plot/DefaultDrawingSupplier;.getNextShape()Ljava/awt/Shape;').
name_ref(m_get_next_stroke_248, method, 'getNextStroke', 'Lorg/jfree/chart/plot/DefaultDrawingSupplier;.getNextStroke()Ljava/awt/Stroke;').
name_ref(m_get_no_data_message_299, method, 'getNoDataMessage', 'Lorg/jfree/chart/plot/Plot;.getNoDataMessage()Ljava/lang/String;').
name_ref(m_get_no_data_message_font_301, method, 'getNoDataMessageFont', 'Lorg/jfree/chart/plot/Plot;.getNoDataMessageFont()Ljava/awt/Font;').
name_ref(m_get_no_data_message_paint_303, method, 'getNoDataMessagePaint', 'Lorg/jfree/chart/plot/Plot;.getNoDataMessagePaint()Ljava/awt/Paint;').
name_ref(m_get_opposite_5, method, 'getOpposite', 'Lorg/jfree/chart/axis/AxisLocation;.getOpposite()Lorg/jfree/chart/axis/AxisLocation;').
name_ref(m_get_opposite_8, method, 'getOpposite', 'Lorg/jfree/chart/axis/AxisLocation;.getOpposite(Lorg/jfree/chart/axis/AxisLocation;)Lorg/jfree/chart/axis/AxisLocation;').
name_ref(m_get_orientation_379, method, 'getOrientation', 'Lorg/jfree/chart/plot/XYPlot;.getOrientation()Lorg/jfree/chart/plot/PlotOrientation;').
name_ref(m_get_orientation_62, method, 'getOrientation', 'Lorg/jfree/chart/plot/CategoryPlot;.getOrientation()Lorg/jfree/chart/plot/PlotOrientation;').
name_ref(m_get_outline_paint_269, method, 'getOutlinePaint', 'Lorg/jfree/chart/plot/Marker;.getOutlinePaint()Ljava/awt/Paint;').
name_ref(m_get_outline_paint_328, method, 'getOutlinePaint', 'Lorg/jfree/chart/plot/Plot;.getOutlinePaint()Ljava/awt/Paint;').
name_ref(m_get_outline_stroke_271, method, 'getOutlineStroke', 'Lorg/jfree/chart/plot/Marker;.getOutlineStroke()Ljava/awt/Stroke;').
name_ref(m_get_outline_stroke_326, method, 'getOutlineStroke', 'Lorg/jfree/chart/plot/Plot;.getOutlineStroke()Ljava/awt/Stroke;').
name_ref(m_get_paint_265, method, 'getPaint', 'Lorg/jfree/chart/plot/Marker;.getPaint()Ljava/awt/Paint;').
name_ref(m_get_parent_86, method, 'getParent', 'Lorg/jfree/chart/plot/Plot;.getParent()Lorg/jfree/chart/plot/Plot;').
name_ref(m_get_plot_30, method, 'getPlot', 'Lorg/jfree/chart/event/PlotChangeEvent;.getPlot()Lorg/jfree/chart/plot/Plot;').
name_ref(m_get_plot_type_305, method, 'getPlotType', 'Lorg/jfree/chart/plot/Plot;.getPlotType()Ljava/lang/String;').
name_ref(m_get_plot_type_378, method, 'getPlotType', 'Lorg/jfree/chart/plot/XYPlot;.getPlotType()Ljava/lang/String;').
name_ref(m_get_plot_type_61, method, 'getPlotType', 'Lorg/jfree/chart/plot/CategoryPlot;.getPlotType()Ljava/lang/String;').
name_ref(m_get_quadrant_origin_464, method, 'getQuadrantOrigin', 'Lorg/jfree/chart/plot/XYPlot;.getQuadrantOrigin()Ljava/awt/geom/Point2D;').
name_ref(m_get_quadrant_paint_466, method, 'getQuadrantPaint', 'Lorg/jfree/chart/plot/XYPlot;.getQuadrantPaint(I)Ljava/awt/Paint;').
name_ref(m_get_range_axis_399, method, 'getRangeAxis', 'Lorg/jfree/chart/plot/XYPlot;.getRangeAxis()Lorg/jfree/chart/axis/ValueAxis;').
name_ref(m_get_range_axis_405, method, 'getRangeAxis', 'Lorg/jfree/chart/plot/XYPlot;.getRangeAxis(I)Lorg/jfree/chart/axis/ValueAxis;').
name_ref(m_get_range_axis_84, method, 'getRangeAxis', 'Lorg/jfree/chart/plot/CategoryPlot;.getRangeAxis()Lorg/jfree/chart/axis/ValueAxis;').
name_ref(m_get_range_axis_85, method, 'getRangeAxis', 'Lorg/jfree/chart/plot/CategoryPlot;.getRangeAxis(I)Lorg/jfree/chart/axis/ValueAxis;').
name_ref(m_get_range_axis_count_409, method, 'getRangeAxisCount', 'Lorg/jfree/chart/plot/XYPlot;.getRangeAxisCount()I').
name_ref(m_get_range_axis_count_99, method, 'getRangeAxisCount', 'Lorg/jfree/chart/plot/CategoryPlot;.getRangeAxisCount()I').
name_ref(m_get_range_axis_edge_404, method, 'getRangeAxisEdge', 'Lorg/jfree/chart/plot/XYPlot;.getRangeAxisEdge()Lorg/jfree/chart/util/RectangleEdge;').
name_ref(m_get_range_axis_edge_414, method, 'getRangeAxisEdge', 'Lorg/jfree/chart/plot/XYPlot;.getRangeAxisEdge(I)Lorg/jfree/chart/util/RectangleEdge;').
name_ref(m_get_range_axis_edge_97, method, 'getRangeAxisEdge', 'Lorg/jfree/chart/plot/CategoryPlot;.getRangeAxisEdge()Lorg/jfree/chart/util/RectangleEdge;').
name_ref(m_get_range_axis_edge_98, method, 'getRangeAxisEdge', 'Lorg/jfree/chart/plot/CategoryPlot;.getRangeAxisEdge(I)Lorg/jfree/chart/util/RectangleEdge;').
name_ref(m_get_range_axis_for_dataset_110, method, 'getRangeAxisForDataset', 'Lorg/jfree/chart/plot/CategoryPlot;.getRangeAxisForDataset(I)Lorg/jfree/chart/axis/ValueAxis;').
name_ref(m_get_range_axis_for_dataset_505, method, 'getRangeAxisForDataset', 'Lorg/jfree/chart/plot/XYPlot;.getRangeAxisForDataset(I)Lorg/jfree/chart/axis/ValueAxis;').
name_ref(m_get_range_axis_index_525, method, 'getRangeAxisIndex', 'Lorg/jfree/chart/plot/XYPlot;.getRangeAxisIndex(Lorg/jfree/chart/axis/ValueAxis;)I').
name_ref(m_get_range_axis_index_91, method, 'getRangeAxisIndex', 'Lorg/jfree/chart/plot/CategoryPlot;.getRangeAxisIndex(Lorg/jfree/chart/axis/ValueAxis;)I').
name_ref(m_get_range_axis_location_401, method, 'getRangeAxisLocation', 'Lorg/jfree/chart/plot/XYPlot;.getRangeAxisLocation()Lorg/jfree/chart/axis/AxisLocation;').
name_ref(m_get_range_axis_location_411, method, 'getRangeAxisLocation', 'Lorg/jfree/chart/plot/XYPlot;.getRangeAxisLocation(I)Lorg/jfree/chart/axis/AxisLocation;').
name_ref(m_get_range_axis_location_92, method, 'getRangeAxisLocation', 'Lorg/jfree/chart/plot/CategoryPlot;.getRangeAxisLocation()Lorg/jfree/chart/axis/AxisLocation;').
name_ref(m_get_range_axis_location_93, method, 'getRangeAxisLocation', 'Lorg/jfree/chart/plot/CategoryPlot;.getRangeAxisLocation(I)Lorg/jfree/chart/axis/AxisLocation;').
name_ref(m_get_range_crosshair_paint_185, method, 'getRangeCrosshairPaint', 'Lorg/jfree/chart/plot/CategoryPlot;.getRangeCrosshairPaint()Ljava/awt/Paint;').
name_ref(m_get_range_crosshair_paint_548, method, 'getRangeCrosshairPaint', 'Lorg/jfree/chart/plot/XYPlot;.getRangeCrosshairPaint()Ljava/awt/Paint;').
name_ref(m_get_range_crosshair_stroke_183, method, 'getRangeCrosshairStroke', 'Lorg/jfree/chart/plot/CategoryPlot;.getRangeCrosshairStroke()Ljava/awt/Stroke;').
name_ref(m_get_range_crosshair_stroke_546, method, 'getRangeCrosshairStroke', 'Lorg/jfree/chart/plot/XYPlot;.getRangeCrosshairStroke()Ljava/awt/Stroke;').
name_ref(m_get_range_crosshair_value_180, method, 'getRangeCrosshairValue', 'Lorg/jfree/chart/plot/CategoryPlot;.getRangeCrosshairValue()D').
name_ref(m_get_range_crosshair_value_543, method, 'getRangeCrosshairValue', 'Lorg/jfree/chart/plot/XYPlot;.getRangeCrosshairValue()D').
name_ref(m_get_range_gridline_paint_138, method, 'getRangeGridlinePaint', 'Lorg/jfree/chart/plot/CategoryPlot;.getRangeGridlinePaint()Ljava/awt/Paint;').
name_ref(m_get_range_gridline_paint_446, method, 'getRangeGridlinePaint', 'Lorg/jfree/chart/plot/XYPlot;.getRangeGridlinePaint()Ljava/awt/Paint;').
name_ref(m_get_range_gridline_stroke_136, method, 'getRangeGridlineStroke', 'Lorg/jfree/chart/plot/CategoryPlot;.getRangeGridlineStroke()Ljava/awt/Stroke;').
name_ref(m_get_range_gridline_stroke_444, method, 'getRangeGridlineStroke', 'Lorg/jfree/chart/plot/XYPlot;.getRangeGridlineStroke()Ljava/awt/Stroke;').
name_ref(m_get_range_markers_169, method, 'getRangeMarkers', 'Lorg/jfree/chart/plot/CategoryPlot;.getRangeMarkers(Lorg/jfree/chart/util/Layer;)Ljava/util/Collection;').
name_ref(m_get_range_markers_170, method, 'getRangeMarkers', 'Lorg/jfree/chart/plot/CategoryPlot;.getRangeMarkers(ILorg/jfree/chart/util/Layer;)Ljava/util/Collection;').
name_ref(m_get_range_markers_514, method, 'getRangeMarkers', 'Lorg/jfree/chart/plot/XYPlot;.getRangeMarkers(Lorg/jfree/chart/util/Layer;)Ljava/util/Collection;').
name_ref(m_get_range_markers_516, method, 'getRangeMarkers', 'Lorg/jfree/chart/plot/XYPlot;.getRangeMarkers(ILorg/jfree/chart/util/Layer;)Ljava/util/Collection;').
name_ref(m_get_range_tick_band_paint_462, method, 'getRangeTickBandPaint', 'Lorg/jfree/chart/plot/XYPlot;.getRangeTickBandPaint()Ljava/awt/Paint;').
name_ref(m_get_range_zero_baseline_paint_458, method, 'getRangeZeroBaselinePaint', 'Lorg/jfree/chart/plot/XYPlot;.getRangeZeroBaselinePaint()Ljava/awt/Paint;').
name_ref(m_get_range_zero_baseline_stroke_456, method, 'getRangeZeroBaselineStroke', 'Lorg/jfree/chart/plot/XYPlot;.getRangeZeroBaselineStroke()Ljava/awt/Stroke;').
name_ref(m_get_rect_x_347, method, 'getRectX', 'Lorg/jfree/chart/plot/Plot;.getRectX(DDDLorg/jfree/chart/util/RectangleEdge;)D').
name_ref(m_get_rect_y_348, method, 'getRectY', 'Lorg/jfree/chart/plot/Plot;.getRectY(DDDLorg/jfree/chart/util/RectangleEdge;)D').
name_ref(m_get_renderer_111, method, 'getRenderer', 'Lorg/jfree/chart/plot/CategoryPlot;.getRenderer()Lorg/jfree/chart/renderer/category/CategoryItemRenderer;').
name_ref(m_get_renderer_112, method, 'getRenderer', 'Lorg/jfree/chart/plot/CategoryPlot;.getRenderer(I)Lorg/jfree/chart/renderer/category/CategoryItemRenderer;').
name_ref(m_get_renderer_422, method, 'getRenderer', 'Lorg/jfree/chart/plot/XYPlot;.getRenderer()Lorg/jfree/chart/renderer/xy/XYItemRenderer;').
name_ref(m_get_renderer_423, method, 'getRenderer', 'Lorg/jfree/chart/plot/XYPlot;.getRenderer(I)Lorg/jfree/chart/renderer/xy/XYItemRenderer;').
name_ref(m_get_renderer_for_dataset_118, method, 'getRendererForDataset', 'Lorg/jfree/chart/plot/CategoryPlot;.getRendererForDataset(Lorg/jfree/data/category/CategoryDataset;)Lorg/jfree/chart/renderer/category/CategoryItemRenderer;').
name_ref(m_get_renderer_for_dataset_433, method, 'getRendererForDataset', 'Lorg/jfree/chart/plot/XYPlot;.getRendererForDataset(Lorg/jfree/data/xy/XYDataset;)Lorg/jfree/chart/renderer/xy/XYItemRenderer;').
name_ref(m_get_right_665, method, 'getRight', 'Lorg/jfree/chart/util/RectangleInsets;.getRight()D').
name_ref(m_get_root_plot_307, method, 'getRootPlot', 'Lorg/jfree/chart/plot/Plot;.getRootPlot()Lorg/jfree/chart/plot/Plot;').
name_ref(m_get_row_rendering_order_124, method, 'getRowRenderingOrder', 'Lorg/jfree/chart/plot/CategoryPlot;.getRowRenderingOrder()Lorg/jfree/chart/util/SortOrder;').
name_ref(m_get_series_count_564, method, 'getSeriesCount', 'Lorg/jfree/chart/plot/XYPlot;.getSeriesCount()I').
name_ref(m_get_series_rendering_order_430, method, 'getSeriesRenderingOrder', 'Lorg/jfree/chart/plot/XYPlot;.getSeriesRenderingOrder()Lorg/jfree/chart/plot/SeriesRenderingOrder;').
name_ref(m_get_stroke_267, method, 'getStroke', 'Lorg/jfree/chart/plot/Marker;.getStroke()Ljava/awt/Stroke;').
name_ref(m_get_top_662, method, 'getTop', 'Lorg/jfree/chart/util/RectangleInsets;.getTop()D').
name_ref(m_get_type_20, method, 'getType', 'Lorg/jfree/chart/event/ChartChangeEvent;.getType()Lorg/jfree/chart/event/ChartChangeEventType;').
name_ref(m_get_unit_type_661, method, 'getUnitType', 'Lorg/jfree/chart/util/RectangleInsets;.getUnitType()Lorg/jfree/chart/util/UnitType;').
name_ref(m_get_value_367, method, 'getValue', 'Lorg/jfree/chart/plot/ValueMarker;.getValue()D').
name_ref(m_get_weight_210, method, 'getWeight', 'Lorg/jfree/chart/plot/CategoryPlot;.getWeight()I').
name_ref(m_get_weight_434, method, 'getWeight', 'Lorg/jfree/chart/plot/XYPlot;.getWeight()I').
name_ref(m_handle_click_143, method, 'handleClick', 'Lorg/jfree/chart/plot/CategoryPlot;.handleClick(IILorg/jfree/chart/plot/PlotRenderingInfo;)V').
name_ref(m_handle_click_342, method, 'handleClick', 'Lorg/jfree/chart/plot/Plot;.handleClick(IILorg/jfree/chart/plot/PlotRenderingInfo;)V').
name_ref(m_handle_click_521, method, 'handleClick', 'Lorg/jfree/chart/plot/XYPlot;.handleClick(IILorg/jfree/chart/plot/PlotRenderingInfo;)V').
name_ref(m_hash_code_240, method, 'hashCode', 'Lorg/jfree/chart/plot/DatasetRenderingOrder;.hashCode()I').
name_ref(m_hash_code_25, method, 'hashCode', 'Lorg/jfree/chart/event/ChartChangeEventType;.hashCode()I').
name_ref(m_hash_code_358, method, 'hashCode', 'Lorg/jfree/chart/plot/PlotOrientation;.hashCode()I').
name_ref(m_hash_code_363, method, 'hashCode', 'Lorg/jfree/chart/plot/SeriesRenderingOrder;.hashCode()I').
name_ref(m_hash_code_625, method, 'hashCode', 'Lorg/jfree/chart/text/TextAnchor;.hashCode()I').
name_ref(m_hash_code_636, method, 'hashCode', 'Lorg/jfree/chart/util/AbstractObjectList;.hashCode()I').
name_ref(m_hash_code_643, method, 'hashCode', 'Lorg/jfree/chart/util/Layer;.hashCode()I').
name_ref(m_hash_code_648, method, 'hashCode', 'Lorg/jfree/chart/util/LengthAdjustmentType;.hashCode()I').
name_ref(m_hash_code_655, method, 'hashCode', 'Lorg/jfree/chart/util/RectangleAnchor;.hashCode()I').
name_ref(m_hash_code_667, method, 'hashCode', 'Lorg/jfree/chart/util/RectangleInsets;.hashCode()I').
name_ref(m_hash_code_690, method, 'hashCode', 'Lorg/jfree/chart/util/SortOrder;.hashCode()I').
name_ref(m_hash_code_695, method, 'hashCode', 'Lorg/jfree/chart/util/UnitType;.hashCode()I').
name_ref(m_hash_map_56, method, 'HashMap', 'Ljava/util/HashMap;.()V').
name_ref(m_index_of_420, method, 'indexOf', 'Lorg/jfree/chart/plot/XYPlot;.indexOf(Lorg/jfree/data/xy/XYDataset;)I').
name_ref(m_index_of_634, method, 'indexOf', 'Lorg/jfree/chart/util/AbstractObjectList;.indexOf(Ljava/lang/Object;)I').
name_ref(m_index_of_651, method, 'indexOf', 'Lorg/jfree/chart/util/ObjectList;.indexOf(Ljava/lang/Object;)I').
name_ref(m_int_array_254, method, 'intArray', 'Lorg/jfree/chart/plot/DefaultDrawingSupplier;.intArray(DDD)[I').
name_ref(m_int_array_256, method, 'intArray', 'Lorg/jfree/chart/plot/DefaultDrawingSupplier;.intArray(DDDD)[I').
name_ref(m_integer_106, method, 'Integer', 'Ljava/lang/Integer;.(I)V').
name_ref(m_is_domain_crosshair_locked_on_data_530, method, 'isDomainCrosshairLockedOnData', 'Lorg/jfree/chart/plot/XYPlot;.isDomainCrosshairLockedOnData()Z').
name_ref(m_is_domain_crosshair_visible_528, method, 'isDomainCrosshairVisible', 'Lorg/jfree/chart/plot/XYPlot;.isDomainCrosshairVisible()Z').
name_ref(m_is_domain_gridlines_visible_126, method, 'isDomainGridlinesVisible', 'Lorg/jfree/chart/plot/CategoryPlot;.isDomainGridlinesVisible()Z').
name_ref(m_is_domain_gridlines_visible_436, method, 'isDomainGridlinesVisible', 'Lorg/jfree/chart/plot/XYPlot;.isDomainGridlinesVisible()Z').
name_ref(m_is_domain_zero_baseline_visible_448, method, 'isDomainZeroBaselineVisible', 'Lorg/jfree/chart/plot/XYPlot;.isDomainZeroBaselineVisible()Z').
name_ref(m_is_domain_zoomable_222, method, 'isDomainZoomable', 'Lorg/jfree/chart/plot/CategoryPlot;.isDomainZoomable()Z').
name_ref(m_is_domain_zoomable_562, method, 'isDomainZoomable', 'Lorg/jfree/chart/plot/XYPlot;.isDomainZoomable()Z').
name_ref(m_is_outline_visible_324, method, 'isOutlineVisible', 'Lorg/jfree/chart/plot/Plot;.isOutlineVisible()Z').
name_ref(m_is_range_crosshair_locked_on_data_178, method, 'isRangeCrosshairLockedOnData', 'Lorg/jfree/chart/plot/CategoryPlot;.isRangeCrosshairLockedOnData()Z').
name_ref(m_is_range_crosshair_locked_on_data_541, method, 'isRangeCrosshairLockedOnData', 'Lorg/jfree/chart/plot/XYPlot;.isRangeCrosshairLockedOnData()Z').
name_ref(m_is_range_crosshair_visible_176, method, 'isRangeCrosshairVisible', 'Lorg/jfree/chart/plot/CategoryPlot;.isRangeCrosshairVisible()Z').
name_ref(m_is_range_crosshair_visible_539, method, 'isRangeCrosshairVisible', 'Lorg/jfree/chart/plot/XYPlot;.isRangeCrosshairVisible()Z').
name_ref(m_is_range_gridlines_visible_134, method, 'isRangeGridlinesVisible', 'Lorg/jfree/chart/plot/CategoryPlot;.isRangeGridlinesVisible()Z').
name_ref(m_is_range_gridlines_visible_442, method, 'isRangeGridlinesVisible', 'Lorg/jfree/chart/plot/XYPlot;.isRangeGridlinesVisible()Z').
name_ref(m_is_range_zero_baseline_visible_454, method, 'isRangeZeroBaselineVisible', 'Lorg/jfree/chart/plot/XYPlot;.isRangeZeroBaselineVisible()Z').
name_ref(m_is_range_zoomable_223, method, 'isRangeZoomable', 'Lorg/jfree/chart/plot/CategoryPlot;.isRangeZoomable()Z').
name_ref(m_is_range_zoomable_563, method, 'isRangeZoomable', 'Lorg/jfree/chart/plot/XYPlot;.isRangeZoomable()Z').
name_ref(m_is_subplot_308, method, 'isSubplot', 'Lorg/jfree/chart/plot/Plot;.isSubplot()Z').
name_ref(m_layer_640, method, 'Layer', 'Lorg/jfree/chart/util/Layer;.(Ljava/lang/String;)V').
name_ref(m_length_adjustment_type_645, method, 'LengthAdjustmentType', 'Lorg/jfree/chart/util/LengthAdjustmentType;.(Ljava/lang/String;)V').
name_ref(m_map_dataset_to_domain_axis_374, method, 'mapDatasetToDomainAxis', 'Lorg/jfree/chart/plot/XYPlot;.mapDatasetToDomainAxis(II)V').
name_ref(m_map_dataset_to_domain_axis_52, method, 'mapDatasetToDomainAxis', 'Lorg/jfree/chart/plot/CategoryPlot;.mapDatasetToDomainAxis(II)V').
name_ref(m_map_dataset_to_range_axis_375, method, 'mapDatasetToRangeAxis', 'Lorg/jfree/chart/plot/XYPlot;.mapDatasetToRangeAxis(II)V').
name_ref(m_map_dataset_to_range_axis_53, method, 'mapDatasetToRangeAxis', 'Lorg/jfree/chart/plot/CategoryPlot;.mapDatasetToRangeAxis(II)V').
name_ref(m_marker_262, method, 'Marker', 'Lorg/jfree/chart/plot/Marker;.()V').
name_ref(m_marker_263, method, 'Marker', 'Lorg/jfree/chart/plot/Marker;.(Ljava/awt/Paint;)V').
name_ref(m_marker_35, method, 'Marker', 'Lorg/jfree/chart/plot/Marker;.(Ljava/awt/Paint;Ljava/awt/Stroke;Ljava/awt/Paint;Ljava/awt/Stroke;F)V').
name_ref(m_marker_change_event_27, method, 'MarkerChangeEvent', 'Lorg/jfree/chart/event/MarkerChangeEvent;.(Lorg/jfree/chart/plot/Marker;)V').
name_ref(m_marker_changed_346, method, 'markerChanged', 'Lorg/jfree/chart/plot/Plot;.markerChanged(Lorg/jfree/chart/event/MarkerChangeEvent;)V').
name_ref(m_max_632, method, 'max', 'Ljava/lang/Math;.max(II)I').
name_ref(m_notify_listeners_145, method, 'notifyListeners', 'Lorg/jfree/chart/plot/Plot;.notifyListeners(Lorg/jfree/chart/event/PlotChangeEvent;)V').
name_ref(m_notify_listeners_286, method, 'notifyListeners', 'Lorg/jfree/chart/plot/Marker;.notifyListeners(Lorg/jfree/chart/event/MarkerChangeEvent;)V').
name_ref(m_object_list_47, method, 'ObjectList', 'Lorg/jfree/chart/util/ObjectList;.()V').
name_ref(m_object_list_650, method, 'ObjectList', 'Lorg/jfree/chart/util/ObjectList;.(I)V').
name_ref(m_plot_46, method, 'Plot', 'Lorg/jfree/chart/plot/Plot;.()V').
name_ref(m_plot_change_event_29, method, 'PlotChangeEvent', 'Lorg/jfree/chart/event/PlotChangeEvent;.(Lorg/jfree/chart/plot/Plot;)V').
name_ref(m_plot_orientation_355, method, 'PlotOrientation', 'Lorg/jfree/chart/plot/PlotOrientation;.(Ljava/lang/String;)V').
name_ref(m_polygon_255, method, 'Polygon', 'Ljava/awt/Polygon;.([I[II)V').
name_ref(m_put_164, method, 'put', 'Ljava/util/Map;.put(TK;TV;)TV;').
name_ref(m_read_object_236, method, 'readObject', 'Lorg/jfree/chart/plot/CategoryPlot;.readObject(Ljava/io/ObjectInputStream;)V|Ljava/io/IOException;|Ljava/lang/ClassNotFoundException;').
name_ref(m_read_object_260, method, 'readObject', 'Lorg/jfree/chart/plot/DefaultDrawingSupplier;.readObject(Ljava/io/ObjectInputStream;)V|Ljava/io/IOException;|Ljava/lang/ClassNotFoundException;').
name_ref(m_read_object_296, method, 'readObject', 'Lorg/jfree/chart/plot/Marker;.readObject(Ljava/io/ObjectInputStream;)V|Ljava/io/IOException;|Ljava/lang/ClassNotFoundException;').
name_ref(m_read_object_352, method, 'readObject', 'Lorg/jfree/chart/plot/Plot;.readObject(Ljava/io/ObjectInputStream;)V|Ljava/io/IOException;|Ljava/lang/ClassNotFoundException;').
name_ref(m_read_object_571, method, 'readObject', 'Lorg/jfree/chart/plot/XYPlot;.readObject(Ljava/io/ObjectInputStream;)V|Ljava/io/IOException;|Ljava/lang/ClassNotFoundException;').
name_ref(m_read_object_639, method, 'readObject', 'Lorg/jfree/chart/util/AbstractObjectList;.readObject(Ljava/io/ObjectInputStream;)V|Ljava/io/IOException;|Ljava/lang/ClassNotFoundException;').
name_ref(m_read_resolve_13, method, 'readResolve', 'Lorg/jfree/chart/axis/CategoryAnchor;.readResolve()Ljava/lang/Object;|Ljava/io/ObjectStreamException;').
name_ref(m_read_resolve_241, method, 'readResolve', 'Lorg/jfree/chart/plot/DatasetRenderingOrder;.readResolve()Ljava/lang/Object;|Ljava/io/ObjectStreamException;').
name_ref(m_read_resolve_26, method, 'readResolve', 'Lorg/jfree/chart/event/ChartChangeEventType;.readResolve()Ljava/lang/Object;|Ljava/io/ObjectStreamException;').
name_ref(m_read_resolve_359, method, 'readResolve', 'Lorg/jfree/chart/plot/PlotOrientation;.readResolve()Ljava/lang/Object;|Ljava/io/ObjectStreamException;').
name_ref(m_read_resolve_364, method, 'readResolve', 'Lorg/jfree/chart/plot/SeriesRenderingOrder;.readResolve()Ljava/lang/Object;|Ljava/io/ObjectStreamException;').
name_ref(m_read_resolve_626, method, 'readResolve', 'Lorg/jfree/chart/text/TextAnchor;.readResolve()Ljava/lang/Object;|Ljava/io/ObjectStreamException;').
name_ref(m_read_resolve_644, method, 'readResolve', 'Lorg/jfree/chart/util/Layer;.readResolve()Ljava/lang/Object;|Ljava/io/ObjectStreamException;').
name_ref(m_read_resolve_649, method, 'readResolve', 'Lorg/jfree/chart/util/LengthAdjustmentType;.readResolve()Ljava/lang/Object;|Ljava/io/ObjectStreamException;').
name_ref(m_read_resolve_658, method, 'readResolve', 'Lorg/jfree/chart/util/RectangleAnchor;.readResolve()Ljava/lang/Object;|Ljava/io/ObjectStreamException;').
name_ref(m_read_resolve_691, method, 'readResolve', 'Lorg/jfree/chart/util/SortOrder;.readResolve()Ljava/lang/Object;|Ljava/io/ObjectStreamException;').
name_ref(m_read_resolve_696, method, 'readResolve', 'Lorg/jfree/chart/util/UnitType;.readResolve()Ljava/lang/Object;|Ljava/io/ObjectStreamException;').
name_ref(m_read_resolve_9, method, 'readResolve', 'Lorg/jfree/chart/axis/AxisLocation;.readResolve()Ljava/lang/Object;|Ljava/io/ObjectStreamException;').
name_ref(m_rectangle_anchor_652, method, 'RectangleAnchor', 'Lorg/jfree/chart/util/RectangleAnchor;.(Ljava/lang/String;)V').
name_ref(m_rectangle_insets_49, method, 'RectangleInsets', 'Lorg/jfree/chart/util/RectangleInsets;.(DDDD)V').
name_ref(m_rectangle_insets_659, method, 'RectangleInsets', 'Lorg/jfree/chart/util/RectangleInsets;.(Lorg/jfree/chart/util/UnitType;DDDD)V').
name_ref(m_rectangle_insets_660, method, 'RectangleInsets', 'Lorg/jfree/chart/util/RectangleInsets;.()V').
name_ref(m_remove_160, method, 'remove', 'Ljava/util/ArrayList;.remove(Ljava/lang/Object;)Z').
name_ref(m_remove_annotation_190, method, 'removeAnnotation', 'Lorg/jfree/chart/plot/CategoryPlot;.removeAnnotation(Lorg/jfree/chart/annotations/CategoryAnnotation;)Z').
name_ref(m_remove_annotation_191, method, 'removeAnnotation', 'Lorg/jfree/chart/plot/CategoryPlot;.removeAnnotation(Lorg/jfree/chart/annotations/CategoryAnnotation;Z)Z').
name_ref(m_remove_annotation_490, method, 'removeAnnotation', 'Lorg/jfree/chart/plot/XYPlot;.removeAnnotation(Lorg/jfree/chart/annotations/XYAnnotation;)Z').
name_ref(m_remove_annotation_491, method, 'removeAnnotation', 'Lorg/jfree/chart/plot/XYPlot;.removeAnnotation(Lorg/jfree/chart/annotations/XYAnnotation;Z)Z').
name_ref(m_remove_change_listener_290, method, 'removeChangeListener', 'Lorg/jfree/chart/plot/Marker;.removeChangeListener(Lorg/jfree/chart/event/MarkerChangeListener;)V').
name_ref(m_remove_change_listener_334, method, 'removeChangeListener', 'Lorg/jfree/chart/plot/Plot;.removeChangeListener(Lorg/jfree/chart/event/PlotChangeListener;)V').
name_ref(m_remove_domain_marker_155, method, 'removeDomainMarker', 'Lorg/jfree/chart/plot/CategoryPlot;.removeDomainMarker(Lorg/jfree/chart/plot/Marker;)Z').
name_ref(m_remove_domain_marker_156, method, 'removeDomainMarker', 'Lorg/jfree/chart/plot/CategoryPlot;.removeDomainMarker(Lorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;)Z').
name_ref(m_remove_domain_marker_157, method, 'removeDomainMarker', 'Lorg/jfree/chart/plot/CategoryPlot;.removeDomainMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;)Z').
name_ref(m_remove_domain_marker_158, method, 'removeDomainMarker', 'Lorg/jfree/chart/plot/CategoryPlot;.removeDomainMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;Z)Z').
name_ref(m_remove_domain_marker_474, method, 'removeDomainMarker', 'Lorg/jfree/chart/plot/XYPlot;.removeDomainMarker(Lorg/jfree/chart/plot/Marker;)Z').
name_ref(m_remove_domain_marker_475, method, 'removeDomainMarker', 'Lorg/jfree/chart/plot/XYPlot;.removeDomainMarker(Lorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;)Z').
name_ref(m_remove_domain_marker_476, method, 'removeDomainMarker', 'Lorg/jfree/chart/plot/XYPlot;.removeDomainMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;)Z').
name_ref(m_remove_domain_marker_477, method, 'removeDomainMarker', 'Lorg/jfree/chart/plot/XYPlot;.removeDomainMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;Z)Z').
name_ref(m_remove_range_marker_172, method, 'removeRangeMarker', 'Lorg/jfree/chart/plot/CategoryPlot;.removeRangeMarker(Lorg/jfree/chart/plot/Marker;)Z').
name_ref(m_remove_range_marker_173, method, 'removeRangeMarker', 'Lorg/jfree/chart/plot/CategoryPlot;.removeRangeMarker(Lorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;)Z').
name_ref(m_remove_range_marker_174, method, 'removeRangeMarker', 'Lorg/jfree/chart/plot/CategoryPlot;.removeRangeMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;)Z').
name_ref(m_remove_range_marker_175, method, 'removeRangeMarker', 'Lorg/jfree/chart/plot/CategoryPlot;.removeRangeMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;Z)Z').
name_ref(m_remove_range_marker_484, method, 'removeRangeMarker', 'Lorg/jfree/chart/plot/XYPlot;.removeRangeMarker(Lorg/jfree/chart/plot/Marker;)Z').
name_ref(m_remove_range_marker_485, method, 'removeRangeMarker', 'Lorg/jfree/chart/plot/XYPlot;.removeRangeMarker(Lorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;)Z').
name_ref(m_remove_range_marker_486, method, 'removeRangeMarker', 'Lorg/jfree/chart/plot/XYPlot;.removeRangeMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;)Z').
name_ref(m_remove_range_marker_487, method, 'removeRangeMarker', 'Lorg/jfree/chart/plot/XYPlot;.removeRangeMarker(ILorg/jfree/chart/plot/Marker;Lorg/jfree/chart/util/Layer;Z)Z').
name_ref(m_render_199, method, 'render', 'Lorg/jfree/chart/plot/CategoryPlot;.render(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;ILorg/jfree/chart/plot/PlotRenderingInfo;)Z').
name_ref(m_render_503, method, 'render', 'Lorg/jfree/chart/plot/XYPlot;.render(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;ILorg/jfree/chart/plot/PlotRenderingInfo;Lorg/jfree/chart/plot/CrosshairState;)Z').
name_ref(m_renderer_changed_146, method, 'rendererChanged', 'Lorg/jfree/chart/plot/CategoryPlot;.rendererChanged(Lorg/jfree/chart/event/RendererChangeEvent;)V').
name_ref(m_renderer_changed_527, method, 'rendererChanged', 'Lorg/jfree/chart/plot/XYPlot;.rendererChanged(Lorg/jfree/chart/event/RendererChangeEvent;)V').
name_ref(m_resolve_domain_axis_location_353, method, 'resolveDomainAxisLocation', 'Lorg/jfree/chart/plot/Plot;.resolveDomainAxisLocation(Lorg/jfree/chart/axis/AxisLocation;Lorg/jfree/chart/plot/PlotOrientation;)Lorg/jfree/chart/util/RectangleEdge;').
name_ref(m_resolve_range_axis_location_354, method, 'resolveRangeAxisLocation', 'Lorg/jfree/chart/plot/Plot;.resolveRangeAxisLocation(Lorg/jfree/chart/axis/AxisLocation;Lorg/jfree/chart/plot/PlotOrientation;)Lorg/jfree/chart/util/RectangleEdge;').
name_ref(m_series_rendering_order_360, method, 'SeriesRenderingOrder', 'Lorg/jfree/chart/plot/SeriesRenderingOrder;.(Ljava/lang/String;)V').
name_ref(m_set_48, method, 'set', 'Lorg/jfree/chart/util/ObjectList;.set(ILjava/lang/Object;)V').
name_ref(m_set_631, method, 'set', 'Lorg/jfree/chart/util/AbstractObjectList;.set(ILjava/lang/Object;)V').
name_ref(m_set_alpha_274, method, 'setAlpha', 'Lorg/jfree/chart/plot/Marker;.setAlpha(F)V').
name_ref(m_set_anchor_value_231, method, 'setAnchorValue', 'Lorg/jfree/chart/plot/CategoryPlot;.setAnchorValue(D)V').
name_ref(m_set_anchor_value_232, method, 'setAnchorValue', 'Lorg/jfree/chart/plot/CategoryPlot;.setAnchorValue(DZ)V').
name_ref(m_set_axis_offset_382, method, 'setAxisOffset', 'Lorg/jfree/chart/plot/XYPlot;.setAxisOffset(Lorg/jfree/chart/util/RectangleInsets;)V').
name_ref(m_set_axis_offset_65, method, 'setAxisOffset', 'Lorg/jfree/chart/plot/CategoryPlot;.setAxisOffset(Lorg/jfree/chart/util/RectangleInsets;)V').
name_ref(m_set_background_alpha_315, method, 'setBackgroundAlpha', 'Lorg/jfree/chart/plot/Plot;.setBackgroundAlpha(F)V').
name_ref(m_set_background_image_319, method, 'setBackgroundImage', 'Lorg/jfree/chart/plot/Plot;.setBackgroundImage(Ljava/awt/Image;)V').
name_ref(m_set_background_image_alignment_321, method, 'setBackgroundImageAlignment', 'Lorg/jfree/chart/plot/Plot;.setBackgroundImageAlignment(I)V').
name_ref(m_set_background_image_alpha_323, method, 'setBackgroundImageAlpha', 'Lorg/jfree/chart/plot/Plot;.setBackgroundImageAlpha(F)V').
name_ref(m_set_background_paint_313, method, 'setBackgroundPaint', 'Lorg/jfree/chart/plot/Plot;.setBackgroundPaint(Ljava/awt/Paint;)V').
name_ref(m_set_chart_19, method, 'setChart', 'Lorg/jfree/chart/event/ChartChangeEvent;.setChart(Lorg/jfree/chart/JFreeChart;)V').
name_ref(m_set_column_rendering_order_123, method, 'setColumnRenderingOrder', 'Lorg/jfree/chart/plot/CategoryPlot;.setColumnRenderingOrder(Lorg/jfree/chart/util/SortOrder;)V').
name_ref(m_set_dataset_103, method, 'setDataset', 'Lorg/jfree/chart/plot/CategoryPlot;.setDataset(Lorg/jfree/data/category/CategoryDataset;)V').
name_ref(m_set_dataset_104, method, 'setDataset', 'Lorg/jfree/chart/plot/CategoryPlot;.setDataset(ILorg/jfree/data/category/CategoryDataset;)V').
name_ref(m_set_dataset_417, method, 'setDataset', 'Lorg/jfree/chart/plot/XYPlot;.setDataset(Lorg/jfree/data/xy/XYDataset;)V').
name_ref(m_set_dataset_418, method, 'setDataset', 'Lorg/jfree/chart/plot/XYPlot;.setDataset(ILorg/jfree/data/xy/XYDataset;)V').
name_ref(m_set_dataset_group_298, method, 'setDatasetGroup', 'Lorg/jfree/chart/plot/Plot;.setDatasetGroup(Lorg/jfree/data/general/DatasetGroup;)V').
name_ref(m_set_dataset_rendering_order_121, method, 'setDatasetRenderingOrder', 'Lorg/jfree/chart/plot/CategoryPlot;.setDatasetRenderingOrder(Lorg/jfree/chart/plot/DatasetRenderingOrder;)V').
name_ref(m_set_dataset_rendering_order_429, method, 'setDatasetRenderingOrder', 'Lorg/jfree/chart/plot/XYPlot;.setDatasetRenderingOrder(Lorg/jfree/chart/plot/DatasetRenderingOrder;)V').
name_ref(m_set_domain_axes_388, method, 'setDomainAxes', 'Lorg/jfree/chart/plot/XYPlot;.setDomainAxes([Lorg/jfree/chart/axis/ValueAxis;)V').
name_ref(m_set_domain_axes_71, method, 'setDomainAxes', 'Lorg/jfree/chart/plot/CategoryPlot;.setDomainAxes([Lorg/jfree/chart/axis/CategoryAxis;)V').
name_ref(m_set_domain_axis_385, method, 'setDomainAxis', 'Lorg/jfree/chart/plot/XYPlot;.setDomainAxis(Lorg/jfree/chart/axis/ValueAxis;)V').
name_ref(m_set_domain_axis_386, method, 'setDomainAxis', 'Lorg/jfree/chart/plot/XYPlot;.setDomainAxis(ILorg/jfree/chart/axis/ValueAxis;)V').
name_ref(m_set_domain_axis_387, method, 'setDomainAxis', 'Lorg/jfree/chart/plot/XYPlot;.setDomainAxis(ILorg/jfree/chart/axis/ValueAxis;Z)V').
name_ref(m_set_domain_axis_68, method, 'setDomainAxis', 'Lorg/jfree/chart/plot/CategoryPlot;.setDomainAxis(Lorg/jfree/chart/axis/CategoryAxis;)V').
name_ref(m_set_domain_axis_69, method, 'setDomainAxis', 'Lorg/jfree/chart/plot/CategoryPlot;.setDomainAxis(ILorg/jfree/chart/axis/CategoryAxis;)V').
name_ref(m_set_domain_axis_70, method, 'setDomainAxis', 'Lorg/jfree/chart/plot/CategoryPlot;.setDomainAxis(ILorg/jfree/chart/axis/CategoryAxis;Z)V').
name_ref(m_set_domain_axis_location_390, method, 'setDomainAxisLocation', 'Lorg/jfree/chart/plot/XYPlot;.setDomainAxisLocation(Lorg/jfree/chart/axis/AxisLocation;)V').
name_ref(m_set_domain_axis_location_391, method, 'setDomainAxisLocation', 'Lorg/jfree/chart/plot/XYPlot;.setDomainAxisLocation(Lorg/jfree/chart/axis/AxisLocation;Z)V').
name_ref(m_set_domain_axis_location_396, method, 'setDomainAxisLocation', 'Lorg/jfree/chart/plot/XYPlot;.setDomainAxisLocation(ILorg/jfree/chart/axis/AxisLocation;)V').
name_ref(m_set_domain_axis_location_397, method, 'setDomainAxisLocation', 'Lorg/jfree/chart/plot/XYPlot;.setDomainAxisLocation(ILorg/jfree/chart/axis/AxisLocation;Z)V').
name_ref(m_set_domain_axis_location_50, method, 'setDomainAxisLocation', 'Lorg/jfree/chart/plot/CategoryPlot;.setDomainAxisLocation(Lorg/jfree/chart/axis/AxisLocation;Z)V').
name_ref(m_set_domain_axis_location_75, method, 'setDomainAxisLocation', 'Lorg/jfree/chart/plot/CategoryPlot;.setDomainAxisLocation(Lorg/jfree/chart/axis/AxisLocation;)V').
name_ref(m_set_domain_axis_location_76, method, 'setDomainAxisLocation', 'Lorg/jfree/chart/plot/CategoryPlot;.setDomainAxisLocation(ILorg/jfree/chart/axis/AxisLocation;Z)V').
name_ref(m_set_domain_axis_location_77, method, 'setDomainAxisLocation', 'Lorg/jfree/chart/plot/CategoryPlot;.setDomainAxisLocation(ILorg/jfree/chart/axis/AxisLocation;)V').
name_ref(m_set_domain_crosshair_locked_on_data_531, method, 'setDomainCrosshairLockedOnData', 'Lorg/jfree/chart/plot/XYPlot;.setDomainCrosshairLockedOnData(Z)V').
name_ref(m_set_domain_crosshair_paint_538, method, 'setDomainCrosshairPaint', 'Lorg/jfree/chart/plot/XYPlot;.setDomainCrosshairPaint(Ljava/awt/Paint;)V').
name_ref(m_set_domain_crosshair_stroke_536, method, 'setDomainCrosshairStroke', 'Lorg/jfree/chart/plot/XYPlot;.setDomainCrosshairStroke(Ljava/awt/Stroke;)V').
name_ref(m_set_domain_crosshair_value_533, method, 'setDomainCrosshairValue', 'Lorg/jfree/chart/plot/XYPlot;.setDomainCrosshairValue(D)V').
name_ref(m_set_domain_crosshair_value_534, method, 'setDomainCrosshairValue', 'Lorg/jfree/chart/plot/XYPlot;.setDomainCrosshairValue(DZ)V').
name_ref(m_set_domain_crosshair_visible_529, method, 'setDomainCrosshairVisible', 'Lorg/jfree/chart/plot/XYPlot;.setDomainCrosshairVisible(Z)V').
name_ref(m_set_domain_gridline_paint_133, method, 'setDomainGridlinePaint', 'Lorg/jfree/chart/plot/CategoryPlot;.setDomainGridlinePaint(Ljava/awt/Paint;)V').
name_ref(m_set_domain_gridline_paint_441, method, 'setDomainGridlinePaint', 'Lorg/jfree/chart/plot/XYPlot;.setDomainGridlinePaint(Ljava/awt/Paint;)V').
name_ref(m_set_domain_gridline_position_129, method, 'setDomainGridlinePosition', 'Lorg/jfree/chart/plot/CategoryPlot;.setDomainGridlinePosition(Lorg/jfree/chart/axis/CategoryAnchor;)V').
name_ref(m_set_domain_gridline_stroke_131, method, 'setDomainGridlineStroke', 'Lorg/jfree/chart/plot/CategoryPlot;.setDomainGridlineStroke(Ljava/awt/Stroke;)V').
name_ref(m_set_domain_gridline_stroke_439, method, 'setDomainGridlineStroke', 'Lorg/jfree/chart/plot/XYPlot;.setDomainGridlineStroke(Ljava/awt/Stroke;)V').
name_ref(m_set_domain_gridlines_visible_127, method, 'setDomainGridlinesVisible', 'Lorg/jfree/chart/plot/CategoryPlot;.setDomainGridlinesVisible(Z)V').
name_ref(m_set_domain_gridlines_visible_437, method, 'setDomainGridlinesVisible', 'Lorg/jfree/chart/plot/XYPlot;.setDomainGridlinesVisible(Z)V').
name_ref(m_set_domain_tick_band_paint_461, method, 'setDomainTickBandPaint', 'Lorg/jfree/chart/plot/XYPlot;.setDomainTickBandPaint(Ljava/awt/Paint;)V').
name_ref(m_set_domain_zero_baseline_paint_453, method, 'setDomainZeroBaselinePaint', 'Lorg/jfree/chart/plot/XYPlot;.setDomainZeroBaselinePaint(Ljava/awt/Paint;)V').
name_ref(m_set_domain_zero_baseline_stroke_451, method, 'setDomainZeroBaselineStroke', 'Lorg/jfree/chart/plot/XYPlot;.setDomainZeroBaselineStroke(Ljava/awt/Stroke;)V').
name_ref(m_set_domain_zero_baseline_visible_449, method, 'setDomainZeroBaselineVisible', 'Lorg/jfree/chart/plot/XYPlot;.setDomainZeroBaselineVisible(Z)V').
name_ref(m_set_draw_as_line_40, method, 'setDrawAsLine', 'Lorg/jfree/chart/plot/CategoryMarker;.setDrawAsLine(Z)V').
name_ref(m_set_draw_shared_domain_axis_221, method, 'setDrawSharedDomainAxis', 'Lorg/jfree/chart/plot/CategoryPlot;.setDrawSharedDomainAxis(Z)V').
name_ref(m_set_drawing_supplier_317, method, 'setDrawingSupplier', 'Lorg/jfree/chart/plot/Plot;.setDrawingSupplier(Lorg/jfree/chart/plot/DrawingSupplier;)V').
name_ref(m_set_fixed_domain_axis_space_213, method, 'setFixedDomainAxisSpace', 'Lorg/jfree/chart/plot/CategoryPlot;.setFixedDomainAxisSpace(Lorg/jfree/chart/axis/AxisSpace;)V').
name_ref(m_set_fixed_domain_axis_space_214, method, 'setFixedDomainAxisSpace', 'Lorg/jfree/chart/plot/CategoryPlot;.setFixedDomainAxisSpace(Lorg/jfree/chart/axis/AxisSpace;Z)V').
name_ref(m_set_fixed_domain_axis_space_551, method, 'setFixedDomainAxisSpace', 'Lorg/jfree/chart/plot/XYPlot;.setFixedDomainAxisSpace(Lorg/jfree/chart/axis/AxisSpace;)V').
name_ref(m_set_fixed_domain_axis_space_552, method, 'setFixedDomainAxisSpace', 'Lorg/jfree/chart/plot/XYPlot;.setFixedDomainAxisSpace(Lorg/jfree/chart/axis/AxisSpace;Z)V').
name_ref(m_set_fixed_legend_items_141, method, 'setFixedLegendItems', 'Lorg/jfree/chart/plot/CategoryPlot;.setFixedLegendItems(Lorg/jfree/chart/LegendItemCollection;)V').
name_ref(m_set_fixed_legend_items_566, method, 'setFixedLegendItems', 'Lorg/jfree/chart/plot/XYPlot;.setFixedLegendItems(Lorg/jfree/chart/LegendItemCollection;)V').
name_ref(m_set_fixed_range_axis_space_216, method, 'setFixedRangeAxisSpace', 'Lorg/jfree/chart/plot/CategoryPlot;.setFixedRangeAxisSpace(Lorg/jfree/chart/axis/AxisSpace;)V').
name_ref(m_set_fixed_range_axis_space_217, method, 'setFixedRangeAxisSpace', 'Lorg/jfree/chart/plot/CategoryPlot;.setFixedRangeAxisSpace(Lorg/jfree/chart/axis/AxisSpace;Z)V').
name_ref(m_set_fixed_range_axis_space_554, method, 'setFixedRangeAxisSpace', 'Lorg/jfree/chart/plot/XYPlot;.setFixedRangeAxisSpace(Lorg/jfree/chart/axis/AxisSpace;)V').
name_ref(m_set_fixed_range_axis_space_555, method, 'setFixedRangeAxisSpace', 'Lorg/jfree/chart/plot/XYPlot;.setFixedRangeAxisSpace(Lorg/jfree/chart/axis/AxisSpace;Z)V').
name_ref(m_set_foreground_alpha_331, method, 'setForegroundAlpha', 'Lorg/jfree/chart/plot/Plot;.setForegroundAlpha(F)V').
name_ref(m_set_insets_310, method, 'setInsets', 'Lorg/jfree/chart/plot/Plot;.setInsets(Lorg/jfree/chart/util/RectangleInsets;)V').
name_ref(m_set_insets_311, method, 'setInsets', 'Lorg/jfree/chart/plot/Plot;.setInsets(Lorg/jfree/chart/util/RectangleInsets;Z)V').
name_ref(m_set_key_38, method, 'setKey', 'Lorg/jfree/chart/plot/CategoryMarker;.setKey(Ljava/lang/Comparable;)V').
name_ref(m_set_label_276, method, 'setLabel', 'Lorg/jfree/chart/plot/Marker;.setLabel(Ljava/lang/String;)V').
name_ref(m_set_label_anchor_282, method, 'setLabelAnchor', 'Lorg/jfree/chart/plot/Marker;.setLabelAnchor(Lorg/jfree/chart/util/RectangleAnchor;)V').
name_ref(m_set_label_font_278, method, 'setLabelFont', 'Lorg/jfree/chart/plot/Marker;.setLabelFont(Ljava/awt/Font;)V').
name_ref(m_set_label_offset_284, method, 'setLabelOffset', 'Lorg/jfree/chart/plot/Marker;.setLabelOffset(Lorg/jfree/chart/util/RectangleInsets;)V').
name_ref(m_set_label_offset_type_36, method, 'setLabelOffsetType', 'Lorg/jfree/chart/plot/Marker;.setLabelOffsetType(Lorg/jfree/chart/util/LengthAdjustmentType;)V').
name_ref(m_set_label_paint_280, method, 'setLabelPaint', 'Lorg/jfree/chart/plot/Marker;.setLabelPaint(Ljava/awt/Paint;)V').
name_ref(m_set_label_text_anchor_288, method, 'setLabelTextAnchor', 'Lorg/jfree/chart/plot/Marker;.setLabelTextAnchor(Lorg/jfree/chart/text/TextAnchor;)V').
name_ref(m_set_no_data_message_300, method, 'setNoDataMessage', 'Lorg/jfree/chart/plot/Plot;.setNoDataMessage(Ljava/lang/String;)V').
name_ref(m_set_no_data_message_font_302, method, 'setNoDataMessageFont', 'Lorg/jfree/chart/plot/Plot;.setNoDataMessageFont(Ljava/awt/Font;)V').
name_ref(m_set_no_data_message_paint_304, method, 'setNoDataMessagePaint', 'Lorg/jfree/chart/plot/Plot;.setNoDataMessagePaint(Ljava/awt/Paint;)V').
name_ref(m_set_orientation_380, method, 'setOrientation', 'Lorg/jfree/chart/plot/XYPlot;.setOrientation(Lorg/jfree/chart/plot/PlotOrientation;)V').
name_ref(m_set_orientation_63, method, 'setOrientation', 'Lorg/jfree/chart/plot/CategoryPlot;.setOrientation(Lorg/jfree/chart/plot/PlotOrientation;)V').
name_ref(m_set_outline_paint_270, method, 'setOutlinePaint', 'Lorg/jfree/chart/plot/Marker;.setOutlinePaint(Ljava/awt/Paint;)V').
name_ref(m_set_outline_paint_329, method, 'setOutlinePaint', 'Lorg/jfree/chart/plot/Plot;.setOutlinePaint(Ljava/awt/Paint;)V').
name_ref(m_set_outline_stroke_272, method, 'setOutlineStroke', 'Lorg/jfree/chart/plot/Marker;.setOutlineStroke(Ljava/awt/Stroke;)V').
name_ref(m_set_outline_stroke_327, method, 'setOutlineStroke', 'Lorg/jfree/chart/plot/Plot;.setOutlineStroke(Ljava/awt/Stroke;)V').
name_ref(m_set_outline_visible_325, method, 'setOutlineVisible', 'Lorg/jfree/chart/plot/Plot;.setOutlineVisible(Z)V').
name_ref(m_set_paint_266, method, 'setPaint', 'Lorg/jfree/chart/plot/Marker;.setPaint(Ljava/awt/Paint;)V').
name_ref(m_set_parent_306, method, 'setParent', 'Lorg/jfree/chart/plot/Plot;.setParent(Lorg/jfree/chart/plot/Plot;)V').
name_ref(m_set_quadrant_origin_465, method, 'setQuadrantOrigin', 'Lorg/jfree/chart/plot/XYPlot;.setQuadrantOrigin(Ljava/awt/geom/Point2D;)V').
name_ref(m_set_quadrant_paint_467, method, 'setQuadrantPaint', 'Lorg/jfree/chart/plot/XYPlot;.setQuadrantPaint(ILjava/awt/Paint;)V').
name_ref(m_set_range_axes_408, method, 'setRangeAxes', 'Lorg/jfree/chart/plot/XYPlot;.setRangeAxes([Lorg/jfree/chart/axis/ValueAxis;)V').
name_ref(m_set_range_axes_90, method, 'setRangeAxes', 'Lorg/jfree/chart/plot/CategoryPlot;.setRangeAxes([Lorg/jfree/chart/axis/ValueAxis;)V').
name_ref(m_set_range_axis_400, method, 'setRangeAxis', 'Lorg/jfree/chart/plot/XYPlot;.setRangeAxis(Lorg/jfree/chart/axis/ValueAxis;)V').
name_ref(m_set_range_axis_406, method, 'setRangeAxis', 'Lorg/jfree/chart/plot/XYPlot;.setRangeAxis(ILorg/jfree/chart/axis/ValueAxis;)V').
name_ref(m_set_range_axis_407, method, 'setRangeAxis', 'Lorg/jfree/chart/plot/XYPlot;.setRangeAxis(ILorg/jfree/chart/axis/ValueAxis;Z)V').
name_ref(m_set_range_axis_87, method, 'setRangeAxis', 'Lorg/jfree/chart/plot/CategoryPlot;.setRangeAxis(Lorg/jfree/chart/axis/ValueAxis;)V').
name_ref(m_set_range_axis_88, method, 'setRangeAxis', 'Lorg/jfree/chart/plot/CategoryPlot;.setRangeAxis(ILorg/jfree/chart/axis/ValueAxis;)V').
name_ref(m_set_range_axis_89, method, 'setRangeAxis', 'Lorg/jfree/chart/plot/CategoryPlot;.setRangeAxis(ILorg/jfree/chart/axis/ValueAxis;Z)V').
name_ref(m_set_range_axis_location_402, method, 'setRangeAxisLocation', 'Lorg/jfree/chart/plot/XYPlot;.setRangeAxisLocation(Lorg/jfree/chart/axis/AxisLocation;)V').
name_ref(m_set_range_axis_location_403, method, 'setRangeAxisLocation', 'Lorg/jfree/chart/plot/XYPlot;.setRangeAxisLocation(Lorg/jfree/chart/axis/AxisLocation;Z)V').
name_ref(m_set_range_axis_location_412, method, 'setRangeAxisLocation', 'Lorg/jfree/chart/plot/XYPlot;.setRangeAxisLocation(ILorg/jfree/chart/axis/AxisLocation;)V').
name_ref(m_set_range_axis_location_413, method, 'setRangeAxisLocation', 'Lorg/jfree/chart/plot/XYPlot;.setRangeAxisLocation(ILorg/jfree/chart/axis/AxisLocation;Z)V').
name_ref(m_set_range_axis_location_51, method, 'setRangeAxisLocation', 'Lorg/jfree/chart/plot/CategoryPlot;.setRangeAxisLocation(Lorg/jfree/chart/axis/AxisLocation;Z)V').
name_ref(m_set_range_axis_location_94, method, 'setRangeAxisLocation', 'Lorg/jfree/chart/plot/CategoryPlot;.setRangeAxisLocation(Lorg/jfree/chart/axis/AxisLocation;)V').
name_ref(m_set_range_axis_location_95, method, 'setRangeAxisLocation', 'Lorg/jfree/chart/plot/CategoryPlot;.setRangeAxisLocation(ILorg/jfree/chart/axis/AxisLocation;Z)V').
name_ref(m_set_range_axis_location_96, method, 'setRangeAxisLocation', 'Lorg/jfree/chart/plot/CategoryPlot;.setRangeAxisLocation(ILorg/jfree/chart/axis/AxisLocation;)V').
name_ref(m_set_range_crosshair_locked_on_data_179, method, 'setRangeCrosshairLockedOnData', 'Lorg/jfree/chart/plot/CategoryPlot;.setRangeCrosshairLockedOnData(Z)V').
name_ref(m_set_range_crosshair_locked_on_data_542, method, 'setRangeCrosshairLockedOnData', 'Lorg/jfree/chart/plot/XYPlot;.setRangeCrosshairLockedOnData(Z)V').
name_ref(m_set_range_crosshair_paint_186, method, 'setRangeCrosshairPaint', 'Lorg/jfree/chart/plot/CategoryPlot;.setRangeCrosshairPaint(Ljava/awt/Paint;)V').
name_ref(m_set_range_crosshair_paint_549, method, 'setRangeCrosshairPaint', 'Lorg/jfree/chart/plot/XYPlot;.setRangeCrosshairPaint(Ljava/awt/Paint;)V').
name_ref(m_set_range_crosshair_stroke_184, method, 'setRangeCrosshairStroke', 'Lorg/jfree/chart/plot/CategoryPlot;.setRangeCrosshairStroke(Ljava/awt/Stroke;)V').
name_ref(m_set_range_crosshair_stroke_547, method, 'setRangeCrosshairStroke', 'Lorg/jfree/chart/plot/XYPlot;.setRangeCrosshairStroke(Ljava/awt/Stroke;)V').
name_ref(m_set_range_crosshair_value_181, method, 'setRangeCrosshairValue', 'Lorg/jfree/chart/plot/CategoryPlot;.setRangeCrosshairValue(D)V').
name_ref(m_set_range_crosshair_value_182, method, 'setRangeCrosshairValue', 'Lorg/jfree/chart/plot/CategoryPlot;.setRangeCrosshairValue(DZ)V').
name_ref(m_set_range_crosshair_value_544, method, 'setRangeCrosshairValue', 'Lorg/jfree/chart/plot/XYPlot;.setRangeCrosshairValue(D)V').
name_ref(m_set_range_crosshair_value_545, method, 'setRangeCrosshairValue', 'Lorg/jfree/chart/plot/XYPlot;.setRangeCrosshairValue(DZ)V').
name_ref(m_set_range_crosshair_visible_177, method, 'setRangeCrosshairVisible', 'Lorg/jfree/chart/plot/CategoryPlot;.setRangeCrosshairVisible(Z)V').
name_ref(m_set_range_crosshair_visible_540, method, 'setRangeCrosshairVisible', 'Lorg/jfree/chart/plot/XYPlot;.setRangeCrosshairVisible(Z)V').
name_ref(m_set_range_gridline_paint_139, method, 'setRangeGridlinePaint', 'Lorg/jfree/chart/plot/CategoryPlot;.setRangeGridlinePaint(Ljava/awt/Paint;)V').
name_ref(m_set_range_gridline_paint_447, method, 'setRangeGridlinePaint', 'Lorg/jfree/chart/plot/XYPlot;.setRangeGridlinePaint(Ljava/awt/Paint;)V').
name_ref(m_set_range_gridline_stroke_137, method, 'setRangeGridlineStroke', 'Lorg/jfree/chart/plot/CategoryPlot;.setRangeGridlineStroke(Ljava/awt/Stroke;)V').
name_ref(m_set_range_gridline_stroke_445, method, 'setRangeGridlineStroke', 'Lorg/jfree/chart/plot/XYPlot;.setRangeGridlineStroke(Ljava/awt/Stroke;)V').
name_ref(m_set_range_gridlines_visible_135, method, 'setRangeGridlinesVisible', 'Lorg/jfree/chart/plot/CategoryPlot;.setRangeGridlinesVisible(Z)V').
name_ref(m_set_range_gridlines_visible_443, method, 'setRangeGridlinesVisible', 'Lorg/jfree/chart/plot/XYPlot;.setRangeGridlinesVisible(Z)V').
name_ref(m_set_range_tick_band_paint_463, method, 'setRangeTickBandPaint', 'Lorg/jfree/chart/plot/XYPlot;.setRangeTickBandPaint(Ljava/awt/Paint;)V').
name_ref(m_set_range_zero_baseline_paint_459, method, 'setRangeZeroBaselinePaint', 'Lorg/jfree/chart/plot/XYPlot;.setRangeZeroBaselinePaint(Ljava/awt/Paint;)V').
name_ref(m_set_range_zero_baseline_stroke_457, method, 'setRangeZeroBaselineStroke', 'Lorg/jfree/chart/plot/XYPlot;.setRangeZeroBaselineStroke(Ljava/awt/Stroke;)V').
name_ref(m_set_range_zero_baseline_visible_455, method, 'setRangeZeroBaselineVisible', 'Lorg/jfree/chart/plot/XYPlot;.setRangeZeroBaselineVisible(Z)V').
name_ref(m_set_renderer_113, method, 'setRenderer', 'Lorg/jfree/chart/plot/CategoryPlot;.setRenderer(Lorg/jfree/chart/renderer/category/CategoryItemRenderer;)V').
name_ref(m_set_renderer_114, method, 'setRenderer', 'Lorg/jfree/chart/plot/CategoryPlot;.setRenderer(Lorg/jfree/chart/renderer/category/CategoryItemRenderer;Z)V').
name_ref(m_set_renderer_115, method, 'setRenderer', 'Lorg/jfree/chart/plot/CategoryPlot;.setRenderer(ILorg/jfree/chart/renderer/category/CategoryItemRenderer;)V').
name_ref(m_set_renderer_116, method, 'setRenderer', 'Lorg/jfree/chart/plot/CategoryPlot;.setRenderer(ILorg/jfree/chart/renderer/category/CategoryItemRenderer;Z)V').
name_ref(m_set_renderer_424, method, 'setRenderer', 'Lorg/jfree/chart/plot/XYPlot;.setRenderer(Lorg/jfree/chart/renderer/xy/XYItemRenderer;)V').
name_ref(m_set_renderer_425, method, 'setRenderer', 'Lorg/jfree/chart/plot/XYPlot;.setRenderer(ILorg/jfree/chart/renderer/xy/XYItemRenderer;)V').
name_ref(m_set_renderer_426, method, 'setRenderer', 'Lorg/jfree/chart/plot/XYPlot;.setRenderer(ILorg/jfree/chart/renderer/xy/XYItemRenderer;Z)V').
name_ref(m_set_renderers_117, method, 'setRenderers', 'Lorg/jfree/chart/plot/CategoryPlot;.setRenderers([Lorg/jfree/chart/renderer/category/CategoryItemRenderer;)V').
name_ref(m_set_renderers_427, method, 'setRenderers', 'Lorg/jfree/chart/plot/XYPlot;.setRenderers([Lorg/jfree/chart/renderer/xy/XYItemRenderer;)V').
name_ref(m_set_row_rendering_order_125, method, 'setRowRenderingOrder', 'Lorg/jfree/chart/plot/CategoryPlot;.setRowRenderingOrder(Lorg/jfree/chart/util/SortOrder;)V').
name_ref(m_set_series_rendering_order_431, method, 'setSeriesRenderingOrder', 'Lorg/jfree/chart/plot/XYPlot;.setSeriesRenderingOrder(Lorg/jfree/chart/plot/SeriesRenderingOrder;)V').
name_ref(m_set_stroke_268, method, 'setStroke', 'Lorg/jfree/chart/plot/Marker;.setStroke(Ljava/awt/Stroke;)V').
name_ref(m_set_type_21, method, 'setType', 'Lorg/jfree/chart/event/ChartChangeEvent;.setType(Lorg/jfree/chart/event/ChartChangeEventType;)V').
name_ref(m_set_value_368, method, 'setValue', 'Lorg/jfree/chart/plot/ValueMarker;.setValue(D)V').
name_ref(m_set_weight_211, method, 'setWeight', 'Lorg/jfree/chart/plot/CategoryPlot;.setWeight(I)V').
name_ref(m_set_weight_435, method, 'setWeight', 'Lorg/jfree/chart/plot/XYPlot;.setWeight(I)V').
name_ref(m_size_82, method, 'size', 'Lorg/jfree/chart/util/AbstractObjectList;.size()I').
name_ref(m_sort_order_687, method, 'SortOrder', 'Lorg/jfree/chart/util/SortOrder;.(Ljava/lang/String;)V').
name_ref(m_suite_572, method, 'suite', 'Lorg/jfree/chart/plot/junit/CategoryPlotTests;.suite()Ljunit/framework/Test;').
name_ref(m_suite_595, method, 'suite', 'Lorg/jfree/chart/plot/junit/XYPlotTests;.suite()Ljunit/framework/Test;').
name_ref(m_test_1169972_586, method, 'test1169972', 'Lorg/jfree/chart/plot/junit/CategoryPlotTests;.test1169972()V').
name_ref(m_test_1654215_589, method, 'test1654215', 'Lorg/jfree/chart/plot/junit/CategoryPlotTests;.test1654215()V').
name_ref(m_test_1654215_617, method, 'test1654215', 'Lorg/jfree/chart/plot/junit/XYPlotTests;.test1654215()V').
name_ref(m_test_add_domain_marker_587, method, 'testAddDomainMarker', 'Lorg/jfree/chart/plot/junit/CategoryPlotTests;.testAddDomainMarker()V').
name_ref(m_test_add_domain_marker_615, method, 'testAddDomainMarker', 'Lorg/jfree/chart/plot/junit/XYPlotTests;.testAddDomainMarker()V').
name_ref(m_test_add_range_marker_588, method, 'testAddRangeMarker', 'Lorg/jfree/chart/plot/junit/CategoryPlotTests;.testAddRangeMarker()V').
name_ref(m_test_add_range_marker_616, method, 'testAddRangeMarker', 'Lorg/jfree/chart/plot/junit/XYPlotTests;.testAddRangeMarker()V').
name_ref(m_test_axis_range_577, method, 'testAxisRange', 'Lorg/jfree/chart/plot/junit/CategoryPlotTests;.testAxisRange()V').
name_ref(m_test_case_575, method, 'TestCase', 'Ljunit/framework/TestCase;.(Ljava/lang/String;)V').
name_ref(m_test_clone_independence_602, method, 'testCloneIndependence', 'Lorg/jfree/chart/plot/junit/XYPlotTests;.testCloneIndependence()V').
name_ref(m_test_cloning2_599, method, 'testCloning2', 'Lorg/jfree/chart/plot/junit/XYPlotTests;.testCloning2()V').
name_ref(m_test_cloning_579, method, 'testCloning', 'Lorg/jfree/chart/plot/junit/CategoryPlotTests;.testCloning()V').
name_ref(m_test_cloning_598, method, 'testCloning', 'Lorg/jfree/chart/plot/junit/XYPlotTests;.testCloning()V').
name_ref(m_test_cloning__quadrant_origin_600, method, 'testCloning_QuadrantOrigin', 'Lorg/jfree/chart/plot/junit/XYPlotTests;.testCloning_QuadrantOrigin()V').
name_ref(m_test_cloning__quadrant_paint_601, method, 'testCloning_QuadrantPaint', 'Lorg/jfree/chart/plot/junit/XYPlotTests;.testCloning_QuadrantPaint()V').
name_ref(m_test_constructor_576, method, 'testConstructor', 'Lorg/jfree/chart/plot/junit/CategoryPlotTests;.testConstructor()V').
name_ref(m_test_draw_range_gridlines_618, method, 'testDrawRangeGridlines', 'Lorg/jfree/chart/plot/junit/XYPlotTests;.testDrawRangeGridlines()V').
name_ref(m_test_draw_series_with_zero_items_619, method, 'testDrawSeriesWithZeroItems', 'Lorg/jfree/chart/plot/junit/XYPlotTests;.testDrawSeriesWithZeroItems()V').
name_ref(m_test_equals_578, method, 'testEquals', 'Lorg/jfree/chart/plot/junit/CategoryPlotTests;.testEquals()V').
name_ref(m_test_equals_597, method, 'testEquals', 'Lorg/jfree/chart/plot/junit/XYPlotTests;.testEquals()V').
name_ref(m_test_get_domain_axis_index_590, method, 'testGetDomainAxisIndex', 'Lorg/jfree/chart/plot/junit/CategoryPlotTests;.testGetDomainAxisIndex()V').
name_ref(m_test_get_legend_items_610, method, 'testGetLegendItems', 'Lorg/jfree/chart/plot/junit/XYPlotTests;.testGetLegendItems()V').
name_ref(m_test_get_range_axis_index_591, method, 'testGetRangeAxisIndex', 'Lorg/jfree/chart/plot/junit/CategoryPlotTests;.testGetRangeAxisIndex()V').
name_ref(m_test_get_renderer_for_dataset_609, method, 'testGetRendererForDataset', 'Lorg/jfree/chart/plot/junit/XYPlotTests;.testGetRendererForDataset()V').
name_ref(m_test_remove_annotation_614, method, 'testRemoveAnnotation', 'Lorg/jfree/chart/plot/junit/XYPlotTests;.testRemoveAnnotation()V').
name_ref(m_test_remove_domain_marker_592, method, 'testRemoveDomainMarker', 'Lorg/jfree/chart/plot/junit/CategoryPlotTests;.testRemoveDomainMarker()V').
name_ref(m_test_remove_domain_marker_620, method, 'testRemoveDomainMarker', 'Lorg/jfree/chart/plot/junit/XYPlotTests;.testRemoveDomainMarker()V').
name_ref(m_test_remove_range_marker_594, method, 'testRemoveRangeMarker', 'Lorg/jfree/chart/plot/junit/CategoryPlotTests;.testRemoveRangeMarker()V').
name_ref(m_test_remove_range_marker_621, method, 'testRemoveRangeMarker', 'Lorg/jfree/chart/plot/junit/XYPlotTests;.testRemoveRangeMarker()V').
name_ref(m_test_serialization1_604, method, 'testSerialization1', 'Lorg/jfree/chart/plot/junit/XYPlotTests;.testSerialization1()V').
name_ref(m_test_serialization2_581, method, 'testSerialization2', 'Lorg/jfree/chart/plot/junit/CategoryPlotTests;.testSerialization2()V').
name_ref(m_test_serialization2_605, method, 'testSerialization2', 'Lorg/jfree/chart/plot/junit/XYPlotTests;.testSerialization2()V').
name_ref(m_test_serialization3_582, method, 'testSerialization3', 'Lorg/jfree/chart/plot/junit/CategoryPlotTests;.testSerialization3()V').
name_ref(m_test_serialization3_606, method, 'testSerialization3', 'Lorg/jfree/chart/plot/junit/XYPlotTests;.testSerialization3()V').
name_ref(m_test_serialization4_583, method, 'testSerialization4', 'Lorg/jfree/chart/plot/junit/CategoryPlotTests;.testSerialization4()V').
name_ref(m_test_serialization4_607, method, 'testSerialization4', 'Lorg/jfree/chart/plot/junit/XYPlotTests;.testSerialization4()V').
name_ref(m_test_serialization5_584, method, 'testSerialization5', 'Lorg/jfree/chart/plot/junit/CategoryPlotTests;.testSerialization5()V').
name_ref(m_test_serialization5_608, method, 'testSerialization5', 'Lorg/jfree/chart/plot/junit/XYPlotTests;.testSerialization5()V').
name_ref(m_test_serialization_580, method, 'testSerialization', 'Lorg/jfree/chart/plot/junit/CategoryPlotTests;.testSerialization()V').
name_ref(m_test_set_null_renderer_603, method, 'testSetNullRenderer', 'Lorg/jfree/chart/plot/junit/XYPlotTests;.testSetNullRenderer()V').
name_ref(m_test_set_renderer_585, method, 'testSetRenderer', 'Lorg/jfree/chart/plot/junit/CategoryPlotTests;.testSetRenderer()V').
name_ref(m_test_set_renderer_613, method, 'testSetRenderer', 'Lorg/jfree/chart/plot/junit/XYPlotTests;.testSetRenderer()V').
name_ref(m_test_suite_573, method, 'TestSuite', 'Ljunit/framework/TestSuite;.(Ljava/lang/Class<*>;)V').
name_ref(m_text_anchor_622, method, 'TextAnchor', 'Lorg/jfree/chart/text/TextAnchor;.(Ljava/lang/String;)V').
name_ref(m_to_string_11, method, 'toString', 'Lorg/jfree/chart/axis/CategoryAnchor;.toString()Ljava/lang/String;').
name_ref(m_to_string_23, method, 'toString', 'Lorg/jfree/chart/event/ChartChangeEventType;.toString()Ljava/lang/String;').
name_ref(m_to_string_238, method, 'toString', 'Lorg/jfree/chart/plot/DatasetRenderingOrder;.toString()Ljava/lang/String;').
name_ref(m_to_string_356, method, 'toString', 'Lorg/jfree/chart/plot/PlotOrientation;.toString()Ljava/lang/String;').
name_ref(m_to_string_361, method, 'toString', 'Lorg/jfree/chart/plot/SeriesRenderingOrder;.toString()Ljava/lang/String;').
name_ref(m_to_string_6, method, 'toString', 'Lorg/jfree/chart/axis/AxisLocation;.toString()Ljava/lang/String;').
name_ref(m_to_string_623, method, 'toString', 'Lorg/jfree/chart/text/TextAnchor;.toString()Ljava/lang/String;').
name_ref(m_to_string_641, method, 'toString', 'Lorg/jfree/chart/util/Layer;.toString()Ljava/lang/String;').
name_ref(m_to_string_646, method, 'toString', 'Lorg/jfree/chart/util/LengthAdjustmentType;.toString()Ljava/lang/String;').
name_ref(m_to_string_653, method, 'toString', 'Lorg/jfree/chart/util/RectangleAnchor;.toString()Ljava/lang/String;').
name_ref(m_to_string_668, method, 'toString', 'Lorg/jfree/chart/util/RectangleInsets;.toString()Ljava/lang/String;').
name_ref(m_to_string_688, method, 'toString', 'Lorg/jfree/chart/util/SortOrder;.toString()Ljava/lang/String;').
name_ref(m_to_string_693, method, 'toString', 'Lorg/jfree/chart/util/UnitType;.toString()Ljava/lang/String;').
name_ref(m_tree_map_373, method, 'TreeMap', 'Ljava/util/TreeMap;.()V').
name_ref(m_trim_686, method, 'trim', 'Lorg/jfree/chart/util/RectangleInsets;.trim(Ljava/awt/geom/Rectangle2D;)V').
name_ref(m_trim_height_684, method, 'trimHeight', 'Lorg/jfree/chart/util/RectangleInsets;.trimHeight(D)D').
name_ref(m_trim_width_682, method, 'trimWidth', 'Lorg/jfree/chart/util/RectangleInsets;.trimWidth(D)D').
name_ref(m_unit_type_692, method, 'UnitType', 'Lorg/jfree/chart/util/UnitType;.(Ljava/lang/String;)V').
name_ref(m_value_marker_365, method, 'ValueMarker', 'Lorg/jfree/chart/plot/ValueMarker;.(D)V').
name_ref(m_value_marker_366, method, 'ValueMarker', 'Lorg/jfree/chart/plot/ValueMarker;.(DLjava/awt/Paint;Ljava/awt/Stroke;)V').
name_ref(m_value_marker_57, method, 'ValueMarker', 'Lorg/jfree/chart/plot/ValueMarker;.(DLjava/awt/Paint;Ljava/awt/Stroke;Ljava/awt/Paint;Ljava/awt/Stroke;F)V').
name_ref(m_write_object_235, method, 'writeObject', 'Lorg/jfree/chart/plot/CategoryPlot;.writeObject(Ljava/io/ObjectOutputStream;)V|Ljava/io/IOException;').
name_ref(m_write_object_259, method, 'writeObject', 'Lorg/jfree/chart/plot/DefaultDrawingSupplier;.writeObject(Ljava/io/ObjectOutputStream;)V|Ljava/io/IOException;').
name_ref(m_write_object_295, method, 'writeObject', 'Lorg/jfree/chart/plot/Marker;.writeObject(Ljava/io/ObjectOutputStream;)V|Ljava/io/IOException;').
name_ref(m_write_object_351, method, 'writeObject', 'Lorg/jfree/chart/plot/Plot;.writeObject(Ljava/io/ObjectOutputStream;)V|Ljava/io/IOException;').
name_ref(m_write_object_570, method, 'writeObject', 'Lorg/jfree/chart/plot/XYPlot;.writeObject(Ljava/io/ObjectOutputStream;)V|Ljava/io/IOException;').
name_ref(m_write_object_638, method, 'writeObject', 'Lorg/jfree/chart/util/AbstractObjectList;.writeObject(Ljava/io/ObjectOutputStream;)V|Ljava/io/IOException;').
name_ref(m_xyplot_371, method, 'XYPlot', 'Lorg/jfree/chart/plot/XYPlot;.()V').
name_ref(m_xyplot_372, method, 'XYPlot', 'Lorg/jfree/chart/plot/XYPlot;.(Lorg/jfree/data/xy/XYDataset;Lorg/jfree/chart/axis/ValueAxis;Lorg/jfree/chart/axis/ValueAxis;Lorg/jfree/chart/renderer/xy/XYItemRenderer;)V').
name_ref(m_xyplot_tests_596, method, 'XYPlotTests', 'Lorg/jfree/chart/plot/junit/XYPlotTests;.(Ljava/lang/String;)V').
name_ref(m_zoom_144, method, 'zoom', 'Lorg/jfree/chart/plot/CategoryPlot;.zoom(D)V').
name_ref(m_zoom_343, method, 'zoom', 'Lorg/jfree/chart/plot/Plot;.zoom(D)V').
name_ref(m_zoom_domain_axes_224, method, 'zoomDomainAxes', 'Lorg/jfree/chart/plot/CategoryPlot;.zoomDomainAxes(DLorg/jfree/chart/plot/PlotRenderingInfo;Ljava/awt/geom/Point2D;)V').
name_ref(m_zoom_domain_axes_225, method, 'zoomDomainAxes', 'Lorg/jfree/chart/plot/CategoryPlot;.zoomDomainAxes(DDLorg/jfree/chart/plot/PlotRenderingInfo;Ljava/awt/geom/Point2D;)V').
name_ref(m_zoom_domain_axes_226, method, 'zoomDomainAxes', 'Lorg/jfree/chart/plot/CategoryPlot;.zoomDomainAxes(DLorg/jfree/chart/plot/PlotRenderingInfo;Ljava/awt/geom/Point2D;Z)V').
name_ref(m_zoom_domain_axes_556, method, 'zoomDomainAxes', 'Lorg/jfree/chart/plot/XYPlot;.zoomDomainAxes(DLorg/jfree/chart/plot/PlotRenderingInfo;Ljava/awt/geom/Point2D;)V').
name_ref(m_zoom_domain_axes_557, method, 'zoomDomainAxes', 'Lorg/jfree/chart/plot/XYPlot;.zoomDomainAxes(DLorg/jfree/chart/plot/PlotRenderingInfo;Ljava/awt/geom/Point2D;Z)V').
name_ref(m_zoom_domain_axes_558, method, 'zoomDomainAxes', 'Lorg/jfree/chart/plot/XYPlot;.zoomDomainAxes(DDLorg/jfree/chart/plot/PlotRenderingInfo;Ljava/awt/geom/Point2D;)V').
name_ref(m_zoom_range_axes_227, method, 'zoomRangeAxes', 'Lorg/jfree/chart/plot/CategoryPlot;.zoomRangeAxes(DLorg/jfree/chart/plot/PlotRenderingInfo;Ljava/awt/geom/Point2D;)V').
name_ref(m_zoom_range_axes_228, method, 'zoomRangeAxes', 'Lorg/jfree/chart/plot/CategoryPlot;.zoomRangeAxes(DLorg/jfree/chart/plot/PlotRenderingInfo;Ljava/awt/geom/Point2D;Z)V').
name_ref(m_zoom_range_axes_229, method, 'zoomRangeAxes', 'Lorg/jfree/chart/plot/CategoryPlot;.zoomRangeAxes(DDLorg/jfree/chart/plot/PlotRenderingInfo;Ljava/awt/geom/Point2D;)V').
name_ref(m_zoom_range_axes_559, method, 'zoomRangeAxes', 'Lorg/jfree/chart/plot/XYPlot;.zoomRangeAxes(DLorg/jfree/chart/plot/PlotRenderingInfo;Ljava/awt/geom/Point2D;)V').
name_ref(m_zoom_range_axes_560, method, 'zoomRangeAxes', 'Lorg/jfree/chart/plot/XYPlot;.zoomRangeAxes(DLorg/jfree/chart/plot/PlotRenderingInfo;Ljava/awt/geom/Point2D;Z)V').
name_ref(m_zoom_range_axes_561, method, 'zoomRangeAxes', 'Lorg/jfree/chart/plot/XYPlot;.zoomRangeAxes(DDLorg/jfree/chart/plot/PlotRenderingInfo;Ljava/awt/geom/Point2D;)V').
name_ref(q_absolute_27, q_name, 'UnitType.ABSOLUTE', 'Lorg/jfree/chart/util/UnitType;:Lorg/jfree/chart/util/UnitType;.ABSOLUTE)Lorg/jfree/chart/util/UnitType;').
name_ref(q_ascending_10, q_name, 'SortOrder.ASCENDING', 'Lorg/jfree/chart/util/SortOrder;:Lorg/jfree/chart/util/SortOrder;.ASCENDING)Lorg/jfree/chart/util/SortOrder;').
name_ref(q_background_15, q_name, 'Layer.BACKGROUND', 'Lorg/jfree/chart/util/Layer;:Lorg/jfree/chart/util/Layer;.BACKGROUND)Lorg/jfree/chart/util/Layer;').
name_ref(q_black_18, q_name, 'Color.black', 'Ljava/awt/Color;:Ljava/awt/Color;.black)Ljava/awt/Color;').
name_ref(q_blue_8, q_name, 'Color.blue', 'Ljava/awt/Color;:Ljava/awt/Color;.blue)Ljava/awt/Color;').
name_ref(q_bottom_or_left_12, q_name, 'AxisLocation.BOTTOM_OR_LEFT', 'Lorg/jfree/chart/axis/AxisLocation;:Lorg/jfree/chart/axis/AxisLocation;.BOTTOM_OR_LEFT)Lorg/jfree/chart/axis/AxisLocation;').
name_ref(q_cap_butt_4, q_name, 'BasicStroke.CAP_BUTT', 'Ljava/awt/BasicStroke;:Ljava/awt/BasicStroke;.CAP_BUTT)I').
name_ref(q_center_21, q_name, 'TextAnchor.CENTER', 'Lorg/jfree/chart/text/TextAnchor;:Lorg/jfree/chart/text/TextAnchor;.CENTER)Lorg/jfree/chart/text/TextAnchor;').
name_ref(q_contract_20, q_name, 'LengthAdjustmentType.CONTRACT', 'Lorg/jfree/chart/util/LengthAdjustmentType;:Lorg/jfree/chart/util/LengthAdjustmentType;.CONTRACT)Lorg/jfree/chart/util/LengthAdjustmentType;').
name_ref(q_dataset_updated_16, q_name, 'ChartChangeEventType.DATASET_UPDATED', 'Lorg/jfree/chart/event/ChartChangeEventType;:Lorg/jfree/chart/event/ChartChangeEventType;.DATASET_UPDATED)Lorg/jfree/chart/event/ChartChangeEventType;').
name_ref(q_expand_3, q_name, 'LengthAdjustmentType.EXPAND', 'Lorg/jfree/chart/util/LengthAdjustmentType;:Lorg/jfree/chart/util/LengthAdjustmentType;.EXPAND)Lorg/jfree/chart/util/LengthAdjustmentType;').
name_ref(q_fit_24, q_name, 'Align.FIT', 'Lorg/jfree/chart/util/Align;:Lorg/jfree/chart/util/Align;.FIT)I').
name_ref(q_foreground_17, q_name, 'Layer.FOREGROUND', 'Lorg/jfree/chart/util/Layer;:Lorg/jfree/chart/util/Layer;.FOREGROUND)Lorg/jfree/chart/util/Layer;').
name_ref(q_general_1, q_name, 'ChartChangeEventType.GENERAL', 'Lorg/jfree/chart/event/ChartChangeEventType;:Lorg/jfree/chart/event/ChartChangeEventType;.GENERAL)Lorg/jfree/chart/event/ChartChangeEventType;').
name_ref(q_gray_2, q_name, 'Color.gray', 'Ljava/awt/Color;:Ljava/awt/Color;.gray)Ljava/awt/Color;').
name_ref(q_join_bevel_5, q_name, 'BasicStroke.JOIN_BEVEL', 'Ljava/awt/BasicStroke;:Ljava/awt/BasicStroke;.JOIN_BEVEL)I').
name_ref(q_length_22, q_name, 'listeners.length', 'Lorg/jfree/chart/plot/Marker;.notifyListeners(Lorg/jfree/chart/event/MarkerChangeEvent;)V#listeners:.length)I').
name_ref(q_length_25, q_name, 'listeners.length', 'Lorg/jfree/chart/plot/Plot;.notifyListeners(Lorg/jfree/chart/event/PlotChangeEvent;)V#listeners:.length)I').
name_ref(q_light_gray_23, q_name, 'Color.LIGHT_GRAY', 'Ljava/awt/Color;:Ljava/awt/Color;.LIGHT_GRAY)Ljava/awt/Color;').
name_ref(q_middle_14, q_name, 'CategoryAnchor.MIDDLE', 'Lorg/jfree/chart/axis/CategoryAnchor;:Lorg/jfree/chart/axis/CategoryAnchor;.MIDDLE)Lorg/jfree/chart/axis/CategoryAnchor;').
name_ref(q_plain_7, q_name, 'Font.PLAIN', 'Ljava/awt/Font;:Ljava/awt/Font;.PLAIN)I').
name_ref(q_reverse_26, q_name, 'SeriesRenderingOrder.REVERSE', 'Lorg/jfree/chart/plot/SeriesRenderingOrder;:Lorg/jfree/chart/plot/SeriesRenderingOrder;.REVERSE)Lorg/jfree/chart/plot/SeriesRenderingOrder;').
name_ref(q_reverse_9, q_name, 'DatasetRenderingOrder.REVERSE', 'Lorg/jfree/chart/plot/DatasetRenderingOrder;:Lorg/jfree/chart/plot/DatasetRenderingOrder;.REVERSE)Lorg/jfree/chart/plot/DatasetRenderingOrder;').
name_ref(q_top_left_19, q_name, 'RectangleAnchor.TOP_LEFT', 'Lorg/jfree/chart/util/RectangleAnchor;:Lorg/jfree/chart/util/RectangleAnchor;.TOP_LEFT)Lorg/jfree/chart/util/RectangleAnchor;').
name_ref(q_top_or_left_13, q_name, 'AxisLocation.TOP_OR_LEFT', 'Lorg/jfree/chart/axis/AxisLocation;:Lorg/jfree/chart/axis/AxisLocation;.TOP_OR_LEFT)Lorg/jfree/chart/axis/AxisLocation;').
name_ref(q_vertical_11, q_name, 'PlotOrientation.VERTICAL', 'Lorg/jfree/chart/plot/PlotOrientation;:Lorg/jfree/chart/plot/PlotOrientation;.VERTICAL)Lorg/jfree/chart/plot/PlotOrientation;').
name_ref(q_white_6, q_name, 'Color.WHITE', 'Ljava/awt/Color;:Ljava/awt/Color;.WHITE)Ljava/awt/Color;').

%%% End of Code Facts

