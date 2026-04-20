%%% Logic-FL Facts
:- style_check(-discontiguous).

%date_axis_1 - org.jfree.chart.axis.DateAxis
assign(f_default_date_range_648, date_axis_1_expr1, line(date_axis_1, 184)).
method_invoc(date_axis_1_expr1, m_date_range_374, line(date_axis_1, 184)).
assign(f_default_date_tick_unit_649, date_axis_1_expr2, line(date_axis_1, 191)).
assign(f_default_anchor_date_650, date_axis_1_expr3, line(date_axis_1, 195)).
method_invoc(date_axis_1_expr3, m_date_375, line(date_axis_1, 195)).
assign(f_tick_mark_position_651, q_start_23, line(date_axis_1, 207)).
ref(t_date_tick_mark_position_11, q_start_23, line(date_axis_1, 207)).
param(p_millisecond_652, 1, m_to_timeline_value_376).
param(p_date_653, 1, m_to_timeline_value_377).
param(p_value_654, 1, m_to_millisecond_378).
param(p_millisecond_655, 1, m_contains_domain_value_379).
param(p_date_656, 1, m_contains_domain_value_380).
param(p_from_657, 1, m_contains_domain_range_381).
param(p_to_658, 2, m_contains_domain_range_381).
param(p_from_659, 1, m_contains_domain_range_382).
param(p_to_660, 2, m_contains_domain_range_382).
param(p_object_661, 1, m_equals_383).
assign(f_default_timeline_662, date_axis_1_expr4, line(date_axis_1, 321)).
method_invoc(date_axis_1_expr4, m_default_timeline_384, line(date_axis_1, 321)).
param(p_label_663, 1, m_date_axis_48).
method_invoc(date_axis_1_expr5, m_date_axis_386, line(date_axis_1, 349)).
argument(p_label_663, 1, date_axis_1_expr5).
argument(date_axis_1_expr6, 2, date_axis_1_expr5).
method_invoc(date_axis_1_expr6, m_get_default_387, line(date_axis_1, 349)).
ref(t_time_zone_12, date_axis_1_expr6, line(date_axis_1, 349)).
param(p_label_664, 1, m_date_axis_386).
param(p_zone_665, 2, m_date_axis_386).
method_invoc(date_axis_1_expr7, m_date_axis_388, line(date_axis_1, 366)).
argument(p_label_664, 1, date_axis_1_expr7).
argument(p_zone_665, 2, date_axis_1_expr7).
argument(date_axis_1_expr8, 3, date_axis_1_expr7).
method_invoc(date_axis_1_expr8, m_get_default_389, line(date_axis_1, 366)).
ref(t_locale_13, date_axis_1_expr8, line(date_axis_1, 366)).
param(p_label_666, 1, m_date_axis_388).
param(p_zone_667, 2, m_date_axis_388).
param(p_locale_668, 3, m_date_axis_388).
method_invoc(date_axis_1_expr9, m_value_axis_390, line(date_axis_1, 383)).
argument(p_label_666, 1, date_axis_1_expr9).
argument(date_axis_1_expr10, 2, date_axis_1_expr9).
method_invoc(date_axis_1_expr10, m_create_standard_date_tick_units_391, line(date_axis_1, 383)).
argument(p_zone_667, 1, date_axis_1_expr10).
argument(p_locale_668, 2, date_axis_1_expr10).
ref(t_date_axis_14, date_axis_1_expr10, line(date_axis_1, 383)).
method_invoc(date_axis_1_expr11, m_set_tick_unit_392, line(date_axis_1, 384)).
argument(q_default_date_tick_unit_24, 1, date_axis_1_expr11).
argument(date_axis_1_literal1, 2, date_axis_1_expr11).
argument(date_axis_1_literal2, 3, date_axis_1_expr11).
ref(t_date_axis_14, q_default_date_tick_unit_24, line(date_axis_1, 384)).
method_invoc(date_axis_1_expr12, m_set_auto_range_minimum_size_393, line(date_axis_1, 385)).
argument(f_default_auto_range_minimum_size_in_milliseconds_669, 1, date_axis_1_expr12).
method_invoc(date_axis_1_expr13, m_set_range_394, line(date_axis_1, 387)).
argument(f_default_date_range_648, 1, date_axis_1_expr13).
argument(date_axis_1_literal3, 2, date_axis_1_expr13).
argument(date_axis_1_literal4, 3, date_axis_1_expr13).
assign(f_date_format_override_670, date_axis_1_literal5, line(date_axis_1, 388)).
assign(f_time_zone_671, p_zone_667, line(date_axis_1, 389)).
assign(f_locale_672, p_locale_668, line(date_axis_1, 390)).
assign(f_timeline_673, f_default_timeline_662, line(date_axis_1, 391)).
param(p_zone_674, 1, m_set_time_zone_396).
param(p_timeline_675, 1, m_set_timeline_398).
param(p_unit_676, 1, m_set_tick_unit_400).
param(p_unit_677, 1, m_set_tick_unit_392).
param(p_notify_678, 2, m_set_tick_unit_392).
param(p_turn_off_auto_selection_679, 3, m_set_tick_unit_392).
assign(f_tick_unit_680, p_unit_677, line(date_axis_1, 496)).
param(p_formatter_681, 1, m_set_date_format_override_402).
param(p_range_682, 1, m_set_range_403).
param(p_range_683, 1, m_set_range_394).
param(p_turn_off_auto_range_684, 2, m_set_range_394).
param(p_notify_685, 3, m_set_range_394).
assign(date_axis_1_expr31, date_axis_1_expr32, line(date_axis_1, 556)).
method_invoc(date_axis_1_expr33, m_set_range_404, line(date_axis_1, 559)).
argument(p_range_683, 1, date_axis_1_expr33).
argument(p_turn_off_auto_range_684, 2, date_axis_1_expr33).
argument(p_notify_685, 3, date_axis_1_expr33).
param(p_lower_686, 1, m_set_range_405).
param(p_upper_687, 2, m_set_range_405).
param(p_lower_688, 1, m_set_range_406).
param(p_upper_689, 2, m_set_range_406).
param(p_date_690, 1, m_set_minimum_date_408).
param(p_maximum_date_691, 1, m_set_maximum_date_410).
param(p_position_692, 1, m_set_tick_mark_position_412).
method_invoc(date_axis_1_expr34, m_is_auto_range_414, line(date_axis_1, 718)).
method_invoc(date_axis_1_expr35, m_auto_adjust_range_415, line(date_axis_1, 719)).
param(p_millis_693, 1, m_is_hidden_value_416).
param(p_value_694, 1, m_value_to_java2_d_417).
param(p_area_695, 2, m_value_to_java2_d_417).
param(p_edge_696, 3, m_value_to_java2_d_417).
param(p_date_697, 1, m_date_to_java2_d_418).
param(p_area_698, 2, m_date_to_java2_d_418).
param(p_edge_699, 3, m_date_to_java2_d_418).
param(p_java_2dvalue_700, 1, m_java_2dto_value_419).
param(p_area_701, 2, m_java_2dto_value_419).
param(p_edge_702, 3, m_java_2dto_value_419).
param(p_unit_703, 1, m_calculate_lowest_visible_tick_value_420).
param(p_unit_704, 1, m_calculate_highest_visible_tick_value_421).
param(p_date_705, 1, m_previous_standard_date_422).
param(p_unit_706, 2, m_previous_standard_date_422).
param(p_period_707, 1, m_calculate_date_for_position_423).
param(p_position_708, 2, m_calculate_date_for_position_423).
param(p_date_709, 1, m_next_standard_date_424).
param(p_unit_710, 2, m_next_standard_date_424).
param(p_zone_711, 1, m_create_standard_date_tick_units_426).
param(p_zone_712, 1, m_create_standard_date_tick_units_391).
param(p_locale_713, 2, m_create_standard_date_tick_units_391).
assign(v_units_714, date_axis_1_expr38, line(date_axis_1, 1156)).
method_invoc(date_axis_1_expr38, m_tick_units_427, line(date_axis_1, 1156)).
assign(v_f_1_715, date_axis_1_expr39, line(date_axis_1, 1159)).
method_invoc(date_axis_1_expr39, m_simple_date_format_428, line(date_axis_1, 1159)).
argument(date_axis_1_literal9, 1, date_axis_1_expr39).
argument(p_locale_713, 2, date_axis_1_expr39).
assign(v_f_2_716, date_axis_1_expr40, line(date_axis_1, 1160)).
method_invoc(date_axis_1_expr40, m_simple_date_format_428, line(date_axis_1, 1160)).
argument(date_axis_1_literal10, 1, date_axis_1_expr40).
argument(p_locale_713, 2, date_axis_1_expr40).
assign(v_f_3_717, date_axis_1_expr41, line(date_axis_1, 1161)).
method_invoc(date_axis_1_expr41, m_simple_date_format_428, line(date_axis_1, 1161)).
argument(date_axis_1_literal11, 1, date_axis_1_expr41).
argument(p_locale_713, 2, date_axis_1_expr41).
assign(v_f_4_718, date_axis_1_expr42, line(date_axis_1, 1162)).
method_invoc(date_axis_1_expr42, m_simple_date_format_428, line(date_axis_1, 1162)).
argument(date_axis_1_literal12, 1, date_axis_1_expr42).
argument(p_locale_713, 2, date_axis_1_expr42).
assign(v_f_5_719, date_axis_1_expr43, line(date_axis_1, 1163)).
method_invoc(date_axis_1_expr43, m_simple_date_format_428, line(date_axis_1, 1163)).
argument(date_axis_1_literal13, 1, date_axis_1_expr43).
argument(p_locale_713, 2, date_axis_1_expr43).
assign(v_f_6_720, date_axis_1_expr44, line(date_axis_1, 1164)).
method_invoc(date_axis_1_expr44, m_simple_date_format_428, line(date_axis_1, 1164)).
argument(date_axis_1_literal14, 1, date_axis_1_expr44).
argument(p_locale_713, 2, date_axis_1_expr44).
assign(v_f_7_721, date_axis_1_expr45, line(date_axis_1, 1165)).
method_invoc(date_axis_1_expr45, m_simple_date_format_428, line(date_axis_1, 1165)).
argument(date_axis_1_literal15, 1, date_axis_1_expr45).
argument(p_locale_713, 2, date_axis_1_expr45).
method_invoc(date_axis_1_expr46, m_set_time_zone_429, line(date_axis_1, 1167)).
argument(p_zone_712, 1, date_axis_1_expr46).
ref(v_f_1_715, date_axis_1_expr46, line(date_axis_1, 1167)).
method_invoc(date_axis_1_expr47, m_set_time_zone_429, line(date_axis_1, 1168)).
argument(p_zone_712, 1, date_axis_1_expr47).
ref(v_f_2_716, date_axis_1_expr47, line(date_axis_1, 1168)).
method_invoc(date_axis_1_expr48, m_set_time_zone_429, line(date_axis_1, 1169)).
argument(p_zone_712, 1, date_axis_1_expr48).
ref(v_f_3_717, date_axis_1_expr48, line(date_axis_1, 1169)).
method_invoc(date_axis_1_expr49, m_set_time_zone_429, line(date_axis_1, 1170)).
argument(p_zone_712, 1, date_axis_1_expr49).
ref(v_f_4_718, date_axis_1_expr49, line(date_axis_1, 1170)).
method_invoc(date_axis_1_expr50, m_set_time_zone_429, line(date_axis_1, 1171)).
argument(p_zone_712, 1, date_axis_1_expr50).
ref(v_f_5_719, date_axis_1_expr50, line(date_axis_1, 1171)).
method_invoc(date_axis_1_expr51, m_set_time_zone_429, line(date_axis_1, 1172)).
argument(p_zone_712, 1, date_axis_1_expr51).
ref(v_f_6_720, date_axis_1_expr51, line(date_axis_1, 1172)).
method_invoc(date_axis_1_expr52, m_set_time_zone_429, line(date_axis_1, 1173)).
argument(p_zone_712, 1, date_axis_1_expr52).
ref(v_f_7_721, date_axis_1_expr52, line(date_axis_1, 1173)).
method_invoc(date_axis_1_expr53, m_add_430, line(date_axis_1, 1176)).
argument(date_axis_1_expr54, 1, date_axis_1_expr53).
ref(v_units_714, date_axis_1_expr53, line(date_axis_1, 1176)).
method_invoc(date_axis_1_expr54, m_date_tick_unit_431, line(date_axis_1, 1176)).
argument(q_millisecond_25, 1, date_axis_1_expr54).
argument(date_axis_1_literal16, 2, date_axis_1_expr54).
argument(v_f_1_715, 3, date_axis_1_expr54).
ref(t_date_tick_unit_type_15, q_millisecond_25, line(date_axis_1, 1176)).
method_invoc(date_axis_1_expr55, m_add_430, line(date_axis_1, 1177)).
argument(date_axis_1_expr56, 1, date_axis_1_expr55).
ref(v_units_714, date_axis_1_expr55, line(date_axis_1, 1177)).
method_invoc(date_axis_1_expr56, m_date_tick_unit_432, line(date_axis_1, 1177)).
argument(q_millisecond_26, 1, date_axis_1_expr56).
argument(date_axis_1_literal17, 2, date_axis_1_expr56).
argument(q_millisecond_26, 3, date_axis_1_expr56).
argument(date_axis_1_literal18, 4, date_axis_1_expr56).
argument(v_f_1_715, 5, date_axis_1_expr56).
ref(t_date_tick_unit_type_15, q_millisecond_26, line(date_axis_1, 1177)).
method_invoc(date_axis_1_expr57, m_add_430, line(date_axis_1, 1179)).
argument(date_axis_1_expr58, 1, date_axis_1_expr57).
ref(v_units_714, date_axis_1_expr57, line(date_axis_1, 1179)).
method_invoc(date_axis_1_expr58, m_date_tick_unit_432, line(date_axis_1, 1179)).
argument(q_millisecond_26, 1, date_axis_1_expr58).
argument(date_axis_1_literal19, 2, date_axis_1_expr58).
argument(q_millisecond_26, 3, date_axis_1_expr58).
argument(date_axis_1_literal20, 4, date_axis_1_expr58).
argument(v_f_1_715, 5, date_axis_1_expr58).
ref(t_date_tick_unit_type_15, q_millisecond_26, line(date_axis_1, 1179)).
method_invoc(date_axis_1_expr59, m_add_430, line(date_axis_1, 1181)).
argument(date_axis_1_expr60, 1, date_axis_1_expr59).
ref(v_units_714, date_axis_1_expr59, line(date_axis_1, 1181)).
method_invoc(date_axis_1_expr60, m_date_tick_unit_432, line(date_axis_1, 1181)).
argument(q_millisecond_26, 1, date_axis_1_expr60).
argument(date_axis_1_literal21, 2, date_axis_1_expr60).
argument(q_millisecond_26, 3, date_axis_1_expr60).
argument(date_axis_1_literal22, 4, date_axis_1_expr60).
argument(v_f_1_715, 5, date_axis_1_expr60).
ref(t_date_tick_unit_type_15, q_millisecond_26, line(date_axis_1, 1181)).
method_invoc(date_axis_1_expr61, m_add_430, line(date_axis_1, 1183)).
argument(date_axis_1_expr62, 1, date_axis_1_expr61).
ref(v_units_714, date_axis_1_expr61, line(date_axis_1, 1183)).
method_invoc(date_axis_1_expr62, m_date_tick_unit_432, line(date_axis_1, 1183)).
argument(q_millisecond_26, 1, date_axis_1_expr62).
argument(date_axis_1_literal23, 2, date_axis_1_expr62).
argument(q_millisecond_26, 3, date_axis_1_expr62).
argument(date_axis_1_literal24, 4, date_axis_1_expr62).
argument(v_f_1_715, 5, date_axis_1_expr62).
ref(t_date_tick_unit_type_15, q_millisecond_26, line(date_axis_1, 1183)).
method_invoc(date_axis_1_expr63, m_add_430, line(date_axis_1, 1185)).
argument(date_axis_1_expr64, 1, date_axis_1_expr63).
ref(v_units_714, date_axis_1_expr63, line(date_axis_1, 1185)).
method_invoc(date_axis_1_expr64, m_date_tick_unit_432, line(date_axis_1, 1185)).
argument(q_millisecond_26, 1, date_axis_1_expr64).
argument(date_axis_1_literal25, 2, date_axis_1_expr64).
argument(q_millisecond_26, 3, date_axis_1_expr64).
argument(date_axis_1_literal26, 4, date_axis_1_expr64).
argument(v_f_1_715, 5, date_axis_1_expr64).
ref(t_date_tick_unit_type_15, q_millisecond_26, line(date_axis_1, 1185)).
method_invoc(date_axis_1_expr65, m_add_430, line(date_axis_1, 1187)).
argument(date_axis_1_expr66, 1, date_axis_1_expr65).
ref(v_units_714, date_axis_1_expr65, line(date_axis_1, 1187)).
method_invoc(date_axis_1_expr66, m_date_tick_unit_432, line(date_axis_1, 1187)).
argument(q_millisecond_26, 1, date_axis_1_expr66).
argument(date_axis_1_literal27, 2, date_axis_1_expr66).
argument(q_millisecond_26, 3, date_axis_1_expr66).
argument(date_axis_1_literal28, 4, date_axis_1_expr66).
argument(v_f_1_715, 5, date_axis_1_expr66).
ref(t_date_tick_unit_type_15, q_millisecond_26, line(date_axis_1, 1187)).
method_invoc(date_axis_1_expr67, m_add_430, line(date_axis_1, 1189)).
argument(date_axis_1_expr68, 1, date_axis_1_expr67).
ref(v_units_714, date_axis_1_expr67, line(date_axis_1, 1189)).
method_invoc(date_axis_1_expr68, m_date_tick_unit_432, line(date_axis_1, 1189)).
argument(q_millisecond_26, 1, date_axis_1_expr68).
argument(date_axis_1_literal29, 2, date_axis_1_expr68).
argument(q_millisecond_26, 3, date_axis_1_expr68).
argument(date_axis_1_literal30, 4, date_axis_1_expr68).
argument(v_f_1_715, 5, date_axis_1_expr68).
ref(t_date_tick_unit_type_15, q_millisecond_26, line(date_axis_1, 1189)).
method_invoc(date_axis_1_expr69, m_add_430, line(date_axis_1, 1193)).
argument(date_axis_1_expr70, 1, date_axis_1_expr69).
ref(v_units_714, date_axis_1_expr69, line(date_axis_1, 1193)).
method_invoc(date_axis_1_expr70, m_date_tick_unit_432, line(date_axis_1, 1193)).
argument(q_second_26, 1, date_axis_1_expr70).
argument(date_axis_1_literal31, 2, date_axis_1_expr70).
argument(q_millisecond_27, 3, date_axis_1_expr70).
argument(date_axis_1_literal32, 4, date_axis_1_expr70).
argument(v_f_2_716, 5, date_axis_1_expr70).
ref(t_date_tick_unit_type_15, q_second_26, line(date_axis_1, 1193)).
method_invoc(date_axis_1_expr71, m_add_430, line(date_axis_1, 1195)).
argument(date_axis_1_expr72, 1, date_axis_1_expr71).
ref(v_units_714, date_axis_1_expr71, line(date_axis_1, 1195)).
method_invoc(date_axis_1_expr72, m_date_tick_unit_432, line(date_axis_1, 1195)).
argument(q_second_27, 1, date_axis_1_expr72).
argument(date_axis_1_literal33, 2, date_axis_1_expr72).
argument(q_second_27, 3, date_axis_1_expr72).
argument(date_axis_1_literal34, 4, date_axis_1_expr72).
argument(v_f_2_716, 5, date_axis_1_expr72).
ref(t_date_tick_unit_type_15, q_second_27, line(date_axis_1, 1195)).
method_invoc(date_axis_1_expr73, m_add_430, line(date_axis_1, 1197)).
argument(date_axis_1_expr74, 1, date_axis_1_expr73).
ref(v_units_714, date_axis_1_expr73, line(date_axis_1, 1197)).
method_invoc(date_axis_1_expr74, m_date_tick_unit_432, line(date_axis_1, 1197)).
argument(q_second_27, 1, date_axis_1_expr74).
argument(date_axis_1_literal35, 2, date_axis_1_expr74).
argument(q_second_27, 3, date_axis_1_expr74).
argument(date_axis_1_literal36, 4, date_axis_1_expr74).
argument(v_f_2_716, 5, date_axis_1_expr74).
ref(t_date_tick_unit_type_15, q_second_27, line(date_axis_1, 1197)).
method_invoc(date_axis_1_expr75, m_add_430, line(date_axis_1, 1199)).
argument(date_axis_1_expr76, 1, date_axis_1_expr75).
ref(v_units_714, date_axis_1_expr75, line(date_axis_1, 1199)).
method_invoc(date_axis_1_expr76, m_date_tick_unit_432, line(date_axis_1, 1199)).
argument(q_second_27, 1, date_axis_1_expr76).
argument(date_axis_1_literal37, 2, date_axis_1_expr76).
argument(q_second_27, 3, date_axis_1_expr76).
argument(date_axis_1_literal38, 4, date_axis_1_expr76).
argument(v_f_2_716, 5, date_axis_1_expr76).
ref(t_date_tick_unit_type_15, q_second_27, line(date_axis_1, 1199)).
method_invoc(date_axis_1_expr77, m_add_430, line(date_axis_1, 1203)).
argument(date_axis_1_expr78, 1, date_axis_1_expr77).
ref(v_units_714, date_axis_1_expr77, line(date_axis_1, 1203)).
method_invoc(date_axis_1_expr78, m_date_tick_unit_432, line(date_axis_1, 1203)).
argument(q_minute_27, 1, date_axis_1_expr78).
argument(date_axis_1_literal39, 2, date_axis_1_expr78).
argument(q_second_28, 3, date_axis_1_expr78).
argument(date_axis_1_literal40, 4, date_axis_1_expr78).
argument(v_f_3_717, 5, date_axis_1_expr78).
ref(t_date_tick_unit_type_15, q_minute_27, line(date_axis_1, 1203)).
method_invoc(date_axis_1_expr79, m_add_430, line(date_axis_1, 1205)).
argument(date_axis_1_expr80, 1, date_axis_1_expr79).
ref(v_units_714, date_axis_1_expr79, line(date_axis_1, 1205)).
method_invoc(date_axis_1_expr80, m_date_tick_unit_432, line(date_axis_1, 1205)).
argument(q_minute_28, 1, date_axis_1_expr80).
argument(date_axis_1_literal41, 2, date_axis_1_expr80).
argument(q_second_28, 3, date_axis_1_expr80).
argument(date_axis_1_literal42, 4, date_axis_1_expr80).
argument(v_f_3_717, 5, date_axis_1_expr80).
ref(t_date_tick_unit_type_15, q_minute_28, line(date_axis_1, 1205)).
method_invoc(date_axis_1_expr81, m_add_430, line(date_axis_1, 1207)).
argument(date_axis_1_expr82, 1, date_axis_1_expr81).
ref(v_units_714, date_axis_1_expr81, line(date_axis_1, 1207)).
method_invoc(date_axis_1_expr82, m_date_tick_unit_432, line(date_axis_1, 1207)).
argument(q_minute_28, 1, date_axis_1_expr82).
argument(date_axis_1_literal43, 2, date_axis_1_expr82).
argument(q_minute_28, 3, date_axis_1_expr82).
argument(date_axis_1_literal44, 4, date_axis_1_expr82).
argument(v_f_3_717, 5, date_axis_1_expr82).
ref(t_date_tick_unit_type_15, q_minute_28, line(date_axis_1, 1207)).
method_invoc(date_axis_1_expr83, m_add_430, line(date_axis_1, 1209)).
argument(date_axis_1_expr84, 1, date_axis_1_expr83).
ref(v_units_714, date_axis_1_expr83, line(date_axis_1, 1209)).
method_invoc(date_axis_1_expr84, m_date_tick_unit_432, line(date_axis_1, 1209)).
argument(q_minute_28, 1, date_axis_1_expr84).
argument(date_axis_1_literal45, 2, date_axis_1_expr84).
argument(q_minute_28, 3, date_axis_1_expr84).
argument(date_axis_1_literal46, 4, date_axis_1_expr84).
argument(v_f_3_717, 5, date_axis_1_expr84).
ref(t_date_tick_unit_type_15, q_minute_28, line(date_axis_1, 1209)).
method_invoc(date_axis_1_expr85, m_add_430, line(date_axis_1, 1211)).
argument(date_axis_1_expr86, 1, date_axis_1_expr85).
ref(v_units_714, date_axis_1_expr85, line(date_axis_1, 1211)).
method_invoc(date_axis_1_expr86, m_date_tick_unit_432, line(date_axis_1, 1211)).
argument(q_minute_28, 1, date_axis_1_expr86).
argument(date_axis_1_literal47, 2, date_axis_1_expr86).
argument(q_minute_28, 3, date_axis_1_expr86).
argument(date_axis_1_literal48, 4, date_axis_1_expr86).
argument(v_f_3_717, 5, date_axis_1_expr86).
ref(t_date_tick_unit_type_15, q_minute_28, line(date_axis_1, 1211)).
method_invoc(date_axis_1_expr87, m_add_430, line(date_axis_1, 1213)).
argument(date_axis_1_expr88, 1, date_axis_1_expr87).
ref(v_units_714, date_axis_1_expr87, line(date_axis_1, 1213)).
method_invoc(date_axis_1_expr88, m_date_tick_unit_432, line(date_axis_1, 1213)).
argument(q_minute_28, 1, date_axis_1_expr88).
argument(date_axis_1_literal49, 2, date_axis_1_expr88).
argument(q_minute_28, 3, date_axis_1_expr88).
argument(date_axis_1_literal50, 4, date_axis_1_expr88).
argument(v_f_3_717, 5, date_axis_1_expr88).
ref(t_date_tick_unit_type_15, q_minute_28, line(date_axis_1, 1213)).
method_invoc(date_axis_1_expr89, m_add_430, line(date_axis_1, 1215)).
argument(date_axis_1_expr90, 1, date_axis_1_expr89).
ref(v_units_714, date_axis_1_expr89, line(date_axis_1, 1215)).
method_invoc(date_axis_1_expr90, m_date_tick_unit_432, line(date_axis_1, 1215)).
argument(q_minute_28, 1, date_axis_1_expr90).
argument(date_axis_1_literal51, 2, date_axis_1_expr90).
argument(q_minute_28, 3, date_axis_1_expr90).
argument(date_axis_1_literal52, 4, date_axis_1_expr90).
argument(v_f_3_717, 5, date_axis_1_expr90).
ref(t_date_tick_unit_type_15, q_minute_28, line(date_axis_1, 1215)).
method_invoc(date_axis_1_expr91, m_add_430, line(date_axis_1, 1219)).
argument(date_axis_1_expr92, 1, date_axis_1_expr91).
ref(v_units_714, date_axis_1_expr91, line(date_axis_1, 1219)).
method_invoc(date_axis_1_expr92, m_date_tick_unit_432, line(date_axis_1, 1219)).
argument(q_hour_28, 1, date_axis_1_expr92).
argument(date_axis_1_literal53, 2, date_axis_1_expr92).
argument(q_minute_29, 3, date_axis_1_expr92).
argument(date_axis_1_literal54, 4, date_axis_1_expr92).
argument(v_f_3_717, 5, date_axis_1_expr92).
ref(t_date_tick_unit_type_15, q_hour_28, line(date_axis_1, 1219)).
method_invoc(date_axis_1_expr93, m_add_430, line(date_axis_1, 1221)).
argument(date_axis_1_expr94, 1, date_axis_1_expr93).
ref(v_units_714, date_axis_1_expr93, line(date_axis_1, 1221)).
method_invoc(date_axis_1_expr94, m_date_tick_unit_432, line(date_axis_1, 1221)).
argument(q_hour_29, 1, date_axis_1_expr94).
argument(date_axis_1_literal55, 2, date_axis_1_expr94).
argument(q_minute_29, 3, date_axis_1_expr94).
argument(date_axis_1_literal56, 4, date_axis_1_expr94).
argument(v_f_3_717, 5, date_axis_1_expr94).
ref(t_date_tick_unit_type_15, q_hour_29, line(date_axis_1, 1221)).
method_invoc(date_axis_1_expr95, m_add_430, line(date_axis_1, 1223)).
argument(date_axis_1_expr96, 1, date_axis_1_expr95).
ref(v_units_714, date_axis_1_expr95, line(date_axis_1, 1223)).
method_invoc(date_axis_1_expr96, m_date_tick_unit_432, line(date_axis_1, 1223)).
argument(q_hour_29, 1, date_axis_1_expr96).
argument(date_axis_1_literal57, 2, date_axis_1_expr96).
argument(q_minute_29, 3, date_axis_1_expr96).
argument(date_axis_1_literal58, 4, date_axis_1_expr96).
argument(v_f_3_717, 5, date_axis_1_expr96).
ref(t_date_tick_unit_type_15, q_hour_29, line(date_axis_1, 1223)).
method_invoc(date_axis_1_expr97, m_add_430, line(date_axis_1, 1225)).
argument(date_axis_1_expr98, 1, date_axis_1_expr97).
ref(v_units_714, date_axis_1_expr97, line(date_axis_1, 1225)).
method_invoc(date_axis_1_expr98, m_date_tick_unit_432, line(date_axis_1, 1225)).
argument(q_hour_29, 1, date_axis_1_expr98).
argument(date_axis_1_literal59, 2, date_axis_1_expr98).
argument(q_hour_29, 3, date_axis_1_expr98).
argument(date_axis_1_literal60, 4, date_axis_1_expr98).
argument(v_f_3_717, 5, date_axis_1_expr98).
ref(t_date_tick_unit_type_15, q_hour_29, line(date_axis_1, 1225)).
method_invoc(date_axis_1_expr99, m_add_430, line(date_axis_1, 1227)).
argument(date_axis_1_expr100, 1, date_axis_1_expr99).
ref(v_units_714, date_axis_1_expr99, line(date_axis_1, 1227)).
method_invoc(date_axis_1_expr100, m_date_tick_unit_432, line(date_axis_1, 1227)).
argument(q_hour_29, 1, date_axis_1_expr100).
argument(date_axis_1_literal61, 2, date_axis_1_expr100).
argument(q_hour_29, 3, date_axis_1_expr100).
argument(date_axis_1_literal62, 4, date_axis_1_expr100).
argument(v_f_4_718, 5, date_axis_1_expr100).
ref(t_date_tick_unit_type_15, q_hour_29, line(date_axis_1, 1227)).
method_invoc(date_axis_1_expr101, m_add_430, line(date_axis_1, 1231)).
argument(date_axis_1_expr102, 1, date_axis_1_expr101).
ref(v_units_714, date_axis_1_expr101, line(date_axis_1, 1231)).
method_invoc(date_axis_1_expr102, m_date_tick_unit_432, line(date_axis_1, 1231)).
argument(q_day_29, 1, date_axis_1_expr102).
argument(date_axis_1_literal63, 2, date_axis_1_expr102).
argument(q_hour_30, 3, date_axis_1_expr102).
argument(date_axis_1_literal64, 4, date_axis_1_expr102).
argument(v_f_5_719, 5, date_axis_1_expr102).
ref(t_date_tick_unit_type_15, q_day_29, line(date_axis_1, 1231)).
method_invoc(date_axis_1_expr103, m_add_430, line(date_axis_1, 1233)).
argument(date_axis_1_expr104, 1, date_axis_1_expr103).
ref(v_units_714, date_axis_1_expr103, line(date_axis_1, 1233)).
method_invoc(date_axis_1_expr104, m_date_tick_unit_432, line(date_axis_1, 1233)).
argument(q_day_30, 1, date_axis_1_expr104).
argument(date_axis_1_literal65, 2, date_axis_1_expr104).
argument(q_hour_30, 3, date_axis_1_expr104).
argument(date_axis_1_literal66, 4, date_axis_1_expr104).
argument(v_f_5_719, 5, date_axis_1_expr104).
ref(t_date_tick_unit_type_15, q_day_30, line(date_axis_1, 1233)).
method_invoc(date_axis_1_expr105, m_add_430, line(date_axis_1, 1235)).
argument(date_axis_1_expr106, 1, date_axis_1_expr105).
ref(v_units_714, date_axis_1_expr105, line(date_axis_1, 1235)).
method_invoc(date_axis_1_expr106, m_date_tick_unit_432, line(date_axis_1, 1235)).
argument(q_day_30, 1, date_axis_1_expr106).
argument(date_axis_1_literal67, 2, date_axis_1_expr106).
argument(q_day_30, 3, date_axis_1_expr106).
argument(date_axis_1_literal68, 4, date_axis_1_expr106).
argument(v_f_5_719, 5, date_axis_1_expr106).
ref(t_date_tick_unit_type_15, q_day_30, line(date_axis_1, 1235)).
method_invoc(date_axis_1_expr107, m_add_430, line(date_axis_1, 1237)).
argument(date_axis_1_expr108, 1, date_axis_1_expr107).
ref(v_units_714, date_axis_1_expr107, line(date_axis_1, 1237)).
method_invoc(date_axis_1_expr108, m_date_tick_unit_432, line(date_axis_1, 1237)).
argument(q_day_30, 1, date_axis_1_expr108).
argument(date_axis_1_literal69, 2, date_axis_1_expr108).
argument(q_day_30, 3, date_axis_1_expr108).
argument(date_axis_1_literal70, 4, date_axis_1_expr108).
argument(v_f_5_719, 5, date_axis_1_expr108).
ref(t_date_tick_unit_type_15, q_day_30, line(date_axis_1, 1237)).
method_invoc(date_axis_1_expr109, m_add_430, line(date_axis_1, 1241)).
argument(date_axis_1_expr110, 1, date_axis_1_expr109).
ref(v_units_714, date_axis_1_expr109, line(date_axis_1, 1241)).
method_invoc(date_axis_1_expr110, m_date_tick_unit_432, line(date_axis_1, 1241)).
argument(q_month_30, 1, date_axis_1_expr110).
argument(date_axis_1_literal71, 2, date_axis_1_expr110).
argument(q_day_31, 3, date_axis_1_expr110).
argument(date_axis_1_literal72, 4, date_axis_1_expr110).
argument(v_f_6_720, 5, date_axis_1_expr110).
ref(t_date_tick_unit_type_15, q_month_30, line(date_axis_1, 1241)).
method_invoc(date_axis_1_expr111, m_add_430, line(date_axis_1, 1243)).
argument(date_axis_1_expr112, 1, date_axis_1_expr111).
ref(v_units_714, date_axis_1_expr111, line(date_axis_1, 1243)).
method_invoc(date_axis_1_expr112, m_date_tick_unit_432, line(date_axis_1, 1243)).
argument(q_month_31, 1, date_axis_1_expr112).
argument(date_axis_1_literal73, 2, date_axis_1_expr112).
argument(q_day_31, 3, date_axis_1_expr112).
argument(date_axis_1_literal74, 4, date_axis_1_expr112).
argument(v_f_6_720, 5, date_axis_1_expr112).
ref(t_date_tick_unit_type_15, q_month_31, line(date_axis_1, 1243)).
method_invoc(date_axis_1_expr113, m_add_430, line(date_axis_1, 1245)).
argument(date_axis_1_expr114, 1, date_axis_1_expr113).
ref(v_units_714, date_axis_1_expr113, line(date_axis_1, 1245)).
method_invoc(date_axis_1_expr114, m_date_tick_unit_432, line(date_axis_1, 1245)).
argument(q_month_31, 1, date_axis_1_expr114).
argument(date_axis_1_literal75, 2, date_axis_1_expr114).
argument(q_month_31, 3, date_axis_1_expr114).
argument(date_axis_1_literal76, 4, date_axis_1_expr114).
argument(v_f_6_720, 5, date_axis_1_expr114).
ref(t_date_tick_unit_type_15, q_month_31, line(date_axis_1, 1245)).
method_invoc(date_axis_1_expr115, m_add_430, line(date_axis_1, 1247)).
argument(date_axis_1_expr116, 1, date_axis_1_expr115).
ref(v_units_714, date_axis_1_expr115, line(date_axis_1, 1247)).
method_invoc(date_axis_1_expr116, m_date_tick_unit_432, line(date_axis_1, 1247)).
argument(q_month_31, 1, date_axis_1_expr116).
argument(date_axis_1_literal77, 2, date_axis_1_expr116).
argument(q_month_31, 3, date_axis_1_expr116).
argument(date_axis_1_literal78, 4, date_axis_1_expr116).
argument(v_f_6_720, 5, date_axis_1_expr116).
ref(t_date_tick_unit_type_15, q_month_31, line(date_axis_1, 1247)).
method_invoc(date_axis_1_expr117, m_add_430, line(date_axis_1, 1249)).
argument(date_axis_1_expr118, 1, date_axis_1_expr117).
ref(v_units_714, date_axis_1_expr117, line(date_axis_1, 1249)).
method_invoc(date_axis_1_expr118, m_date_tick_unit_432, line(date_axis_1, 1249)).
argument(q_month_31, 1, date_axis_1_expr118).
argument(date_axis_1_literal79, 2, date_axis_1_expr118).
argument(q_month_31, 3, date_axis_1_expr118).
argument(date_axis_1_literal80, 4, date_axis_1_expr118).
argument(v_f_6_720, 5, date_axis_1_expr118).
ref(t_date_tick_unit_type_15, q_month_31, line(date_axis_1, 1249)).
method_invoc(date_axis_1_expr119, m_add_430, line(date_axis_1, 1253)).
argument(date_axis_1_expr120, 1, date_axis_1_expr119).
ref(v_units_714, date_axis_1_expr119, line(date_axis_1, 1253)).
method_invoc(date_axis_1_expr120, m_date_tick_unit_432, line(date_axis_1, 1253)).
argument(q_year_31, 1, date_axis_1_expr120).
argument(date_axis_1_literal81, 2, date_axis_1_expr120).
argument(q_month_32, 3, date_axis_1_expr120).
argument(date_axis_1_literal82, 4, date_axis_1_expr120).
argument(v_f_7_721, 5, date_axis_1_expr120).
ref(t_date_tick_unit_type_15, q_year_31, line(date_axis_1, 1253)).
method_invoc(date_axis_1_expr121, m_add_430, line(date_axis_1, 1255)).
argument(date_axis_1_expr122, 1, date_axis_1_expr121).
ref(v_units_714, date_axis_1_expr121, line(date_axis_1, 1255)).
method_invoc(date_axis_1_expr122, m_date_tick_unit_432, line(date_axis_1, 1255)).
argument(q_year_32, 1, date_axis_1_expr122).
argument(date_axis_1_literal83, 2, date_axis_1_expr122).
argument(q_month_32, 3, date_axis_1_expr122).
argument(date_axis_1_literal84, 4, date_axis_1_expr122).
argument(v_f_7_721, 5, date_axis_1_expr122).
ref(t_date_tick_unit_type_15, q_year_32, line(date_axis_1, 1255)).
method_invoc(date_axis_1_expr123, m_add_430, line(date_axis_1, 1257)).
argument(date_axis_1_expr124, 1, date_axis_1_expr123).
ref(v_units_714, date_axis_1_expr123, line(date_axis_1, 1257)).
method_invoc(date_axis_1_expr124, m_date_tick_unit_432, line(date_axis_1, 1257)).
argument(q_year_32, 1, date_axis_1_expr124).
argument(date_axis_1_literal85, 2, date_axis_1_expr124).
argument(q_year_32, 3, date_axis_1_expr124).
argument(date_axis_1_literal86, 4, date_axis_1_expr124).
argument(v_f_7_721, 5, date_axis_1_expr124).
ref(t_date_tick_unit_type_15, q_year_32, line(date_axis_1, 1257)).
method_invoc(date_axis_1_expr125, m_add_430, line(date_axis_1, 1259)).
argument(date_axis_1_expr126, 1, date_axis_1_expr125).
ref(v_units_714, date_axis_1_expr125, line(date_axis_1, 1259)).
method_invoc(date_axis_1_expr126, m_date_tick_unit_432, line(date_axis_1, 1259)).
argument(q_year_32, 1, date_axis_1_expr126).
argument(date_axis_1_literal87, 2, date_axis_1_expr126).
argument(q_year_32, 3, date_axis_1_expr126).
argument(date_axis_1_literal88, 4, date_axis_1_expr126).
argument(v_f_7_721, 5, date_axis_1_expr126).
ref(t_date_tick_unit_type_15, q_year_32, line(date_axis_1, 1259)).
method_invoc(date_axis_1_expr127, m_add_430, line(date_axis_1, 1261)).
argument(date_axis_1_expr128, 1, date_axis_1_expr127).
ref(v_units_714, date_axis_1_expr127, line(date_axis_1, 1261)).
method_invoc(date_axis_1_expr128, m_date_tick_unit_432, line(date_axis_1, 1261)).
argument(q_year_32, 1, date_axis_1_expr128).
argument(date_axis_1_literal89, 2, date_axis_1_expr128).
argument(q_year_32, 3, date_axis_1_expr128).
argument(date_axis_1_literal90, 4, date_axis_1_expr128).
argument(v_f_7_721, 5, date_axis_1_expr128).
ref(t_date_tick_unit_type_15, q_year_32, line(date_axis_1, 1261)).
method_invoc(date_axis_1_expr129, m_add_430, line(date_axis_1, 1263)).
argument(date_axis_1_expr130, 1, date_axis_1_expr129).
ref(v_units_714, date_axis_1_expr129, line(date_axis_1, 1263)).
method_invoc(date_axis_1_expr130, m_date_tick_unit_432, line(date_axis_1, 1263)).
argument(q_year_32, 1, date_axis_1_expr130).
argument(date_axis_1_literal91, 2, date_axis_1_expr130).
argument(q_year_32, 3, date_axis_1_expr130).
argument(date_axis_1_literal92, 4, date_axis_1_expr130).
argument(v_f_7_721, 5, date_axis_1_expr130).
ref(t_date_tick_unit_type_15, q_year_32, line(date_axis_1, 1263)).
method_invoc(date_axis_1_expr131, m_add_430, line(date_axis_1, 1265)).
argument(date_axis_1_expr132, 1, date_axis_1_expr131).
ref(v_units_714, date_axis_1_expr131, line(date_axis_1, 1265)).
method_invoc(date_axis_1_expr132, m_date_tick_unit_432, line(date_axis_1, 1265)).
argument(q_year_32, 1, date_axis_1_expr132).
argument(date_axis_1_literal93, 2, date_axis_1_expr132).
argument(q_year_32, 3, date_axis_1_expr132).
argument(date_axis_1_literal94, 4, date_axis_1_expr132).
argument(v_f_7_721, 5, date_axis_1_expr132).
ref(t_date_tick_unit_type_15, q_year_32, line(date_axis_1, 1265)).
return(v_units_714, m_create_standard_date_tick_units_391, line(date_axis_1, 1268)).
assign(v_plot_722, date_axis_1_expr133, line(date_axis_1, 1277)).
method_invoc(date_axis_1_expr133, m_get_plot_345, line(date_axis_1, 1277)).
return(none, m_auto_adjust_range_415, line(date_axis_1, 1280)).
assign(v_vap_723, date_axis_1_expr136, line(date_axis_1, 1284)).
assign(date_axis_1_expr136, v_plot_722, line(date_axis_1, 1284)).
assign(v_r_724, date_axis_1_expr137, line(date_axis_1, 1286)).
method_invoc(date_axis_1_expr137, m_get_data_range_433, line(date_axis_1, 1286)).
argument(date_axis_1_expr138, 1, date_axis_1_expr137).
ref(v_vap_723, date_axis_1_expr137, line(date_axis_1, 1286)).
param(p_g_2_725, 1, m_select_auto_tick_unit_434).
param(p_data_area_726, 2, m_select_auto_tick_unit_434).
param(p_edge_727, 3, m_select_auto_tick_unit_434).
param(p_g_2_728, 1, m_select_horizontal_auto_tick_unit_435).
param(p_data_area_729, 2, m_select_horizontal_auto_tick_unit_435).
param(p_edge_730, 3, m_select_horizontal_auto_tick_unit_435).
param(p_g_2_731, 1, m_select_vertical_auto_tick_unit_436).
param(p_data_area_732, 2, m_select_vertical_auto_tick_unit_436).
param(p_edge_733, 3, m_select_vertical_auto_tick_unit_436).
param(p_g_2_734, 1, m_estimate_maximum_tick_label_width_437).
param(p_unit_735, 2, m_estimate_maximum_tick_label_width_437).
param(p_g_2_736, 1, m_estimate_maximum_tick_label_height_438).
param(p_unit_737, 2, m_estimate_maximum_tick_label_height_438).
param(p_g_2_738, 1, m_refresh_ticks_439).
param(p_state_739, 2, m_refresh_ticks_439).
param(p_data_area_740, 3, m_refresh_ticks_439).
param(p_edge_741, 4, m_refresh_ticks_439).
param(p_time_742, 1, m_correct_tick_date_for_position_440).
param(p_unit_743, 2, m_correct_tick_date_for_position_440).
param(p_position_744, 3, m_correct_tick_date_for_position_440).
param(p_g_2_745, 1, m_refresh_ticks_horizontal_441).
param(p_data_area_746, 2, m_refresh_ticks_horizontal_441).
param(p_edge_747, 3, m_refresh_ticks_horizontal_441).
param(p_g_2_748, 1, m_refresh_ticks_vertical_442).
param(p_data_area_749, 2, m_refresh_ticks_vertical_442).
param(p_edge_750, 3, m_refresh_ticks_vertical_442).
param(p_g_2_751, 1, m_draw_443).
param(p_cursor_752, 2, m_draw_443).
param(p_plot_area_753, 3, m_draw_443).
param(p_data_area_754, 4, m_draw_443).
param(p_edge_755, 5, m_draw_443).
param(p_plot_state_756, 6, m_draw_443).
param(p_lower_percent_757, 1, m_zoom_range_444).
param(p_upper_percent_758, 2, m_zoom_range_444).
param(p_obj_759, 1, m_equals_445).
throw(m_clone_447, clone_not_supported_exception).
throw(date_axis_1_expr137, null_pointer_exception, line(date_axis_1, 1286)).

%number_axis_tests_1 - org.jfree.chart.axis.junit.NumberAxisTests
return(number_axis_tests_1_expr1, m_suite_645, line(number_axis_tests_1, 89)).
method_invoc(number_axis_tests_1_expr1, m_test_suite_627, line(number_axis_tests_1, 89)).
argument(number_axis_tests_1_expr2, 1, number_axis_tests_1_expr1).
param(p_name_1080, 1, m_number_axis_tests_646).
method_invoc(number_axis_tests_1_expr3, m_test_case_629, line(number_axis_tests_1, 98)).
argument(p_name_1080, 1, number_axis_tests_1_expr3).
assign(v_series_1081, number_axis_tests_1_expr4, line(number_axis_tests_1, 348)).
method_invoc(number_axis_tests_1_expr4, m_xyseries_638, line(number_axis_tests_1, 348)).
argument(number_axis_tests_1_literal1, 1, number_axis_tests_1_expr4).
method_invoc(number_axis_tests_1_expr5, m_add_639, line(number_axis_tests_1, 349)).
argument(number_axis_tests_1_literal2, 1, number_axis_tests_1_expr5).
argument(number_axis_tests_1_literal3, 2, number_axis_tests_1_expr5).
ref(v_series_1081, number_axis_tests_1_expr5, line(number_axis_tests_1, 349)).
method_invoc(number_axis_tests_1_expr6, m_add_639, line(number_axis_tests_1, 350)).
argument(number_axis_tests_1_literal4, 1, number_axis_tests_1_expr6).
argument(number_axis_tests_1_literal5, 2, number_axis_tests_1_expr6).
ref(v_series_1081, number_axis_tests_1_expr6, line(number_axis_tests_1, 350)).
method_invoc(number_axis_tests_1_expr7, m_add_639, line(number_axis_tests_1, 351)).
argument(number_axis_tests_1_literal6, 1, number_axis_tests_1_expr7).
argument(number_axis_tests_1_literal7, 2, number_axis_tests_1_expr7).
ref(v_series_1081, number_axis_tests_1_expr7, line(number_axis_tests_1, 351)).
assign(v_dataset_1082, number_axis_tests_1_expr8, line(number_axis_tests_1, 352)).
method_invoc(number_axis_tests_1_expr8, m_xyseries_collection_640, line(number_axis_tests_1, 352)).
method_invoc(number_axis_tests_1_expr9, m_add_series_641, line(number_axis_tests_1, 353)).
argument(v_series_1081, 1, number_axis_tests_1_expr9).
ref(v_dataset_1082, number_axis_tests_1_expr9, line(number_axis_tests_1, 353)).
assign(v_chart_1083, number_axis_tests_1_expr10, line(number_axis_tests_1, 354)).
method_invoc(number_axis_tests_1_expr10, m_create_scatter_plot_37, line(number_axis_tests_1, 354)).
argument(number_axis_tests_1_literal8, 1, number_axis_tests_1_expr10).
argument(number_axis_tests_1_literal9, 2, number_axis_tests_1_expr10).
argument(number_axis_tests_1_literal10, 3, number_axis_tests_1_expr10).
argument(v_dataset_1082, 4, number_axis_tests_1_expr10).
argument(q_vertical_36, 5, number_axis_tests_1_expr10).
argument(number_axis_tests_1_literal11, 6, number_axis_tests_1_expr10).
argument(number_axis_tests_1_literal12, 7, number_axis_tests_1_expr10).
argument(number_axis_tests_1_literal13, 8, number_axis_tests_1_expr10).
ref(t_chart_factory_20, number_axis_tests_1_expr10, line(number_axis_tests_1, 354)).
assign(v_series_1084, number_axis_tests_1_expr11, line(number_axis_tests_1, 376)).
method_invoc(number_axis_tests_1_expr11, m_xyseries_638, line(number_axis_tests_1, 376)).
argument(number_axis_tests_1_literal14, 1, number_axis_tests_1_expr11).
method_invoc(number_axis_tests_1_expr12, m_add_639, line(number_axis_tests_1, 377)).
argument(number_axis_tests_1_literal15, 1, number_axis_tests_1_expr12).
argument(number_axis_tests_1_literal16, 2, number_axis_tests_1_expr12).
ref(v_series_1084, number_axis_tests_1_expr12, line(number_axis_tests_1, 377)).
method_invoc(number_axis_tests_1_expr13, m_add_639, line(number_axis_tests_1, 378)).
argument(number_axis_tests_1_literal17, 1, number_axis_tests_1_expr13).
argument(number_axis_tests_1_literal18, 2, number_axis_tests_1_expr13).
ref(v_series_1084, number_axis_tests_1_expr13, line(number_axis_tests_1, 378)).
method_invoc(number_axis_tests_1_expr14, m_add_639, line(number_axis_tests_1, 379)).
argument(number_axis_tests_1_literal19, 1, number_axis_tests_1_expr14).
argument(number_axis_tests_1_literal20, 2, number_axis_tests_1_expr14).
ref(v_series_1084, number_axis_tests_1_expr14, line(number_axis_tests_1, 379)).
assign(v_dataset_1085, number_axis_tests_1_expr15, line(number_axis_tests_1, 380)).
method_invoc(number_axis_tests_1_expr15, m_xyseries_collection_640, line(number_axis_tests_1, 380)).
method_invoc(number_axis_tests_1_expr16, m_add_series_641, line(number_axis_tests_1, 381)).
argument(v_series_1084, 1, number_axis_tests_1_expr16).
ref(v_dataset_1085, number_axis_tests_1_expr16, line(number_axis_tests_1, 381)).
assign(v_chart_1086, number_axis_tests_1_expr17, line(number_axis_tests_1, 382)).
method_invoc(number_axis_tests_1_expr17, m_create_scatter_plot_37, line(number_axis_tests_1, 382)).
argument(number_axis_tests_1_literal21, 1, number_axis_tests_1_expr17).
argument(number_axis_tests_1_literal22, 2, number_axis_tests_1_expr17).
argument(number_axis_tests_1_literal23, 3, number_axis_tests_1_expr17).
argument(v_dataset_1085, 4, number_axis_tests_1_expr17).
argument(q_vertical_36, 5, number_axis_tests_1_expr17).
argument(number_axis_tests_1_literal24, 6, number_axis_tests_1_expr17).
argument(number_axis_tests_1_literal25, 7, number_axis_tests_1_expr17).
argument(number_axis_tests_1_literal26, 8, number_axis_tests_1_expr17).
ref(t_chart_factory_20, number_axis_tests_1_expr17, line(number_axis_tests_1, 382)).

%rectangle_edge_1 - org.jfree.chart.util.RectangleEdge
assign(f_top_3262, rectangle_edge_1_expr1, line(rectangle_edge_1, 57)).
method_invoc(rectangle_edge_1_expr1, m_rectangle_edge_1987, line(rectangle_edge_1, 57)).
argument(rectangle_edge_1_literal1, 1, rectangle_edge_1_expr1).
assign(f_bottom_3263, rectangle_edge_1_expr2, line(rectangle_edge_1, 61)).
method_invoc(rectangle_edge_1_expr2, m_rectangle_edge_1987, line(rectangle_edge_1, 61)).
argument(rectangle_edge_1_literal2, 1, rectangle_edge_1_expr2).
assign(f_left_3264, rectangle_edge_1_expr3, line(rectangle_edge_1, 65)).
method_invoc(rectangle_edge_1_expr3, m_rectangle_edge_1987, line(rectangle_edge_1, 65)).
argument(rectangle_edge_1_literal3, 1, rectangle_edge_1_expr3).
assign(f_right_3265, rectangle_edge_1_expr4, line(rectangle_edge_1, 69)).
method_invoc(rectangle_edge_1_expr4, m_rectangle_edge_1987, line(rectangle_edge_1, 69)).
argument(rectangle_edge_1_literal4, 1, rectangle_edge_1_expr4).
param(p_name_3266, 1, m_rectangle_edge_1987).
assign(f_name_3267, p_name_3266, line(rectangle_edge_1, 81)).
param(p_obj_3268, 1, m_equals_1989).
param(p_edge_3269, 1, m_is_top_or_bottom_1991).
param(p_edge_3270, 1, m_is_left_or_right_1992).
param(p_edge_3271, 1, m_opposite_1993).
param(p_rectangle_3272, 1, m_coordinate_1994).
param(p_edge_3273, 2, m_coordinate_1994).
throw(m_read_resolve_1995, object_stream_exception).

%default_pie_dataset_1 - org.jfree.data.general.DefaultPieDataset
assign(f_data_3555, default_pie_dataset_1_expr3, line(default_pie_dataset_1, 86)).
method_invoc(default_pie_dataset_1_expr3, m_default_keyed_values_2066, line(default_pie_dataset_1, 86)).
param(p_data_3556, 1, m_default_pie_dataset_2188).
param(p_item_3557, 1, m_get_key_2191).
param(p_key_3558, 1, m_get_index_2192).
param(p_item_3559, 1, m_get_value_2193).
param(p_key_3560, 1, m_get_value_2194).
param(p_key_3561, 1, m_set_value_784).
param(p_value_3562, 2, m_set_value_784).
method_invoc(default_pie_dataset_1_expr5, m_set_value_2077, line(default_pie_dataset_1, 197)).
argument(p_key_3561, 1, default_pie_dataset_1_expr5).
argument(p_value_3562, 2, default_pie_dataset_1_expr5).
ref(f_data_3555, default_pie_dataset_1_expr5, line(default_pie_dataset_1, 197)).
method_invoc(default_pie_dataset_1_expr8, m_fire_dataset_changed_2119, line(default_pie_dataset_1, 198)).
param(p_key_3563, 1, m_set_value_2195).
param(p_value_3564, 2, m_set_value_2195).
param(p_position_3565, 1, m_insert_value_2196).
param(p_key_3566, 2, m_insert_value_2196).
param(p_value_3567, 3, m_insert_value_2196).
param(p_position_3568, 1, m_insert_value_2197).
param(p_key_3569, 2, m_insert_value_2197).
param(p_value_3570, 3, m_insert_value_2197).
param(p_key_3571, 1, m_remove_2198).
param(p_order_3572, 1, m_sort_by_keys_2200).
param(p_order_3573, 1, m_sort_by_values_2201).
param(p_obj_3574, 1, m_equals_2202).
throw(m_clone_2204, clone_not_supported_exception).

%basic_project_info_1 - org.jfree.chart.ui.BasicProjectInfo
param(p_library_class_3130, 1, m_optional_library_holder_1893).
param(p_library_3131, 1, m_optional_library_holder_1894).
param(p_classname_3132, 1, m_load_library_1897).
assign(f_libraries_3133, basic_project_info_1_expr3, line(basic_project_info_1, 146)).
method_invoc(basic_project_info_1_expr3, m_array_list_75, line(basic_project_info_1, 146)).
assign(f_optional_libraries_3134, basic_project_info_1_expr7, line(basic_project_info_1, 147)).
method_invoc(basic_project_info_1_expr7, m_array_list_75, line(basic_project_info_1, 147)).
param(p_name_3135, 1, m_basic_project_info_1899).
param(p_version_3136, 2, m_basic_project_info_1899).
param(p_licence_3137, 3, m_basic_project_info_1899).
param(p_info_3138, 4, m_basic_project_info_1899).
param(p_name_3139, 1, m_basic_project_info_1900).
param(p_version_3140, 2, m_basic_project_info_1900).
param(p_info_3141, 3, m_basic_project_info_1900).
param(p_copyright_3142, 4, m_basic_project_info_1900).
param(p_licence_name_3143, 5, m_basic_project_info_1900).
param(p_copyright_3144, 1, m_set_copyright_1902).
assign(f_copyright_3145, p_copyright_3144, line(basic_project_info_1, 198)).
param(p_info_3146, 1, m_set_info_1903).
method_invoc(basic_project_info_1_expr12, m_set_info_1904, line(basic_project_info_1, 207)).
argument(p_info_3146, 1, basic_project_info_1_expr12).
param(p_licence_3147, 1, m_set_licence_name_1905).
method_invoc(basic_project_info_1_expr13, m_set_licence_name_1906, line(basic_project_info_1, 216)).
argument(p_licence_3147, 1, basic_project_info_1_expr13).
param(p_name_3148, 1, m_set_name_1907).
method_invoc(basic_project_info_1_expr14, m_set_name_1908, line(basic_project_info_1, 225)).
argument(p_name_3148, 1, basic_project_info_1_expr14).
param(p_version_3149, 1, m_set_version_1909).
method_invoc(basic_project_info_1_expr15, m_set_version_1910, line(basic_project_info_1, 234)).
argument(p_version_3149, 1, basic_project_info_1_expr15).
param(p_library_3150, 1, m_add_library_1912).
param(p_library_class_3151, 1, m_add_optional_library_1914).
param(p_library_3152, 1, m_add_optional_library_1915).

%xyplot_tests_1 - org.jfree.chart.plot.junit.XYPlotTests
return(xyplot_tests_1_expr1, m_suite_1397, line(xyplot_tests_1, 118)).
method_invoc(xyplot_tests_1_expr1, m_test_suite_627, line(xyplot_tests_1, 118)).
argument(xyplot_tests_1_expr2, 1, xyplot_tests_1_expr1).
param(p_name_2188, 1, m_xyplot_tests_1398).
method_invoc(xyplot_tests_1_expr3, m_test_case_629, line(xyplot_tests_1, 127)).
argument(p_name_2188, 1, xyplot_tests_1_expr3).
assign(v_dataset_2189, xyplot_tests_1_expr4, line(xyplot_tests_1, 1052)).
method_invoc(xyplot_tests_1_expr4, m_default_xydataset_1422, line(xyplot_tests_1, 1052)).
assign(v_chart_2190, xyplot_tests_1_expr5, line(xyplot_tests_1, 1053)).
method_invoc(xyplot_tests_1_expr5, m_create_xyline_chart_44, line(xyplot_tests_1, 1053)).
argument(xyplot_tests_1_literal1, 1, xyplot_tests_1_expr5).
argument(xyplot_tests_1_literal2, 2, xyplot_tests_1_expr5).
argument(xyplot_tests_1_literal3, 3, xyplot_tests_1_expr5).
argument(v_dataset_2189, 4, xyplot_tests_1_expr5).
argument(q_vertical_53, 5, xyplot_tests_1_expr5).
argument(xyplot_tests_1_literal4, 6, xyplot_tests_1_expr5).
argument(xyplot_tests_1_literal5, 7, xyplot_tests_1_expr5).
argument(xyplot_tests_1_literal6, 8, xyplot_tests_1_expr5).
ref(t_chart_factory_20, xyplot_tests_1_expr5, line(xyplot_tests_1, 1053)).
assign(v_plot_2191, xyplot_tests_1_expr6, line(xyplot_tests_1, 1055)).
assign(xyplot_tests_1_expr6, xyplot_tests_1_expr7, line(xyplot_tests_1, 1055)).
method_invoc(xyplot_tests_1_expr7, m_get_plot_112, line(xyplot_tests_1, 1055)).
ref(v_chart_2190, xyplot_tests_1_expr7, line(xyplot_tests_1, 1055)).
method_invoc(xyplot_tests_1_expr8, m_set_renderer_1218, line(xyplot_tests_1, 1056)).
argument(xyplot_tests_1_literal7, 1, xyplot_tests_1_expr8).
ref(v_plot_2191, xyplot_tests_1_expr8, line(xyplot_tests_1, 1056)).

%gradient_bar_painter_1 - org.jfree.chart.renderer.category.GradientBarPainter
method_invoc(gradient_bar_painter_1_expr1, m_gradient_bar_painter_1656, line(gradient_bar_painter_1, 78)).
argument(gradient_bar_painter_1_literal1, 1, gradient_bar_painter_1_expr1).
argument(gradient_bar_painter_1_literal2, 2, gradient_bar_painter_1_expr1).
argument(gradient_bar_painter_1_literal3, 3, gradient_bar_painter_1_expr1).
param(p_g_1_2582, 1, m_gradient_bar_painter_1656).
param(p_g_2_2583, 2, m_gradient_bar_painter_1656).
param(p_g_3_2584, 3, m_gradient_bar_painter_1656).
assign(f_g_1_2585, p_g_1_2582, line(gradient_bar_painter_1, 89)).
assign(f_g_2_2586, p_g_2_2583, line(gradient_bar_painter_1, 90)).
assign(f_g_3_2587, p_g_3_2584, line(gradient_bar_painter_1, 91)).
param(p_g_2_2588, 1, m_paint_bar_1657).
param(p_renderer_2589, 2, m_paint_bar_1657).
param(p_row_2590, 3, m_paint_bar_1657).
param(p_column_2591, 4, m_paint_bar_1657).
param(p_selected_2592, 5, m_paint_bar_1657).
param(p_bar_2593, 6, m_paint_bar_1657).
param(p_base_2594, 7, m_paint_bar_1657).
param(p_g_2_2595, 1, m_paint_bar_shadow_1658).
param(p_renderer_2596, 2, m_paint_bar_shadow_1658).
param(p_row_2597, 3, m_paint_bar_shadow_1658).
param(p_column_2598, 4, m_paint_bar_shadow_1658).
param(p_selected_2599, 5, m_paint_bar_shadow_1658).
param(p_bar_2600, 6, m_paint_bar_shadow_1658).
param(p_base_2601, 7, m_paint_bar_shadow_1658).
param(p_peg_shadow_2602, 8, m_paint_bar_shadow_1658).
param(p_bar_2603, 1, m_create_shadow_1659).
param(p_x_offset_2604, 2, m_create_shadow_1659).
param(p_y_offset_2605, 3, m_create_shadow_1659).
param(p_base_2606, 4, m_create_shadow_1659).
param(p_peg_shadow_2607, 5, m_create_shadow_1659).
param(p_bar_2608, 1, m_split_vertical_bar_1660).
param(p_a_2609, 2, m_split_vertical_bar_1660).
param(p_b_2610, 3, m_split_vertical_bar_1660).
param(p_c_2611, 4, m_split_vertical_bar_1660).
param(p_bar_2612, 1, m_split_horizontal_bar_1661).
param(p_a_2613, 2, m_split_horizontal_bar_1661).
param(p_b_2614, 3, m_split_horizontal_bar_1661).
param(p_c_2615, 4, m_split_horizontal_bar_1661).
param(p_obj_2616, 1, m_equals_1662).

%series_1 - org.jfree.data.general.Series
param(p_key_3575, 1, m_series_2205).
method_invoc(series_1_expr1, m_series_2206, line(series_1, 102)).
argument(p_key_3575, 1, series_1_expr1).
argument(series_1_literal1, 2, series_1_expr1).
param(p_key_3576, 1, m_series_2206).
param(p_description_3577, 2, m_series_2206).
assign(f_key_3578, p_key_3576, line(series_1, 115)).
assign(f_description_3579, p_description_3577, line(series_1, 116)).
assign(f_listeners_3580, series_1_expr11, line(series_1, 117)).
method_invoc(series_1_expr11, m_event_listener_list_71, line(series_1, 117)).
assign(f_property_change_support_3581, series_1_expr15, line(series_1, 118)).
method_invoc(series_1_expr15, m_property_change_support_2207, line(series_1, 118)).
argument(series_1_expr17, 1, series_1_expr15).
assign(f_notify_3582, series_1_literal3, line(series_1, 119)).
param(p_key_3583, 1, m_set_key_2209).
param(p_description_3584, 1, m_set_description_2211).
param(p_notify_3585, 1, m_set_notify_2213).
throw(m_clone_2216, clone_not_supported_exception).
param(p_obj_3586, 1, m_equals_2217).
param(p_listener_3587, 1, m_add_change_listener_2219).
method_invoc(series_1_expr21, m_add_355, line(series_1, 295)).
argument(series_1_expr22, 1, series_1_expr21).
argument(p_listener_3587, 2, series_1_expr21).
ref(f_listeners_3580, series_1_expr21, line(series_1, 295)).
param(p_listener_3588, 1, m_remove_change_listener_2220).
method_invoc(series_1_expr27, m_notify_listeners_2222, line(series_1, 314)).
argument(series_1_expr28, 1, series_1_expr27).
method_invoc(series_1_expr28, m_series_change_event_2223, line(series_1, 314)).
argument(series_1_expr29, 1, series_1_expr28).
param(p_event_3589, 1, m_notify_listeners_2222).
assign(v_listener_list_3590, series_1_expr30, line(series_1, 326)).
method_invoc(series_1_expr30, m_get_listener_list_145, line(series_1, 326)).
ref(f_listeners_3580, series_1_expr30, line(series_1, 326)).
assign(v_i_3591, series_1_expr34, line(series_1, 327)).
ref(v_listener_list_3590, q_length_75, line(series_1, 327)).
assign(v_i_3591, series_1_literal6, line(series_1, 327)).
param(p_listener_3592, 1, m_add_property_change_listener_2224).
param(p_listener_3593, 1, m_remove_property_change_listener_2225).
param(p_property_3594, 1, m_fire_property_change_2226).
param(p_old_value_3595, 2, m_fire_property_change_2226).
param(p_new_value_3596, 3, m_fire_property_change_2226).

%plot_1 - org.jfree.chart.plot.Plot
assign(f_zero_1679, plot_1_expr1, line(plot_1, 197)).
method_invoc(plot_1_expr1, m_integer_1086, line(plot_1, 197)).
argument(plot_1_literal1, 1, plot_1_expr1).
assign(f_default_insets_1680, plot_1_expr2, line(plot_1, 200)).
assign(f_default_outline_stroke_1531, plot_1_expr3, line(plot_1, 204)).
method_invoc(plot_1_expr3, m_basic_stroke_73, line(plot_1, 204)).
argument(plot_1_literal2, 1, plot_1_expr3).
assign(f_default_outline_paint_1527, q_gray_45, line(plot_1, 207)).
ref(t_color_4, q_gray_45, line(plot_1, 207)).
assign(f_default_background_paint_1681, q_light_gray_45, line(plot_1, 216)).
ref(t_color_4, q_light_gray_45, line(plot_1, 216)).
assign(f_default_legend_item_box_1682, plot_1_expr4, line(plot_1, 225)).
assign(f_default_legend_item_circle_1683, plot_1_expr5, line(plot_1, 229)).
assign(f_background_image_alignment_1684, q_fit_46, line(plot_1, 270)).
ref(t_align_5, q_fit_46, line(plot_1, 270)).
assign(f_background_image_alpha_1685, plot_1_literal3, line(plot_1, 273)).
assign(f_parent_1686, plot_1_literal4, line(plot_1, 301)).
assign(f_insets_1687, f_default_insets_1680, line(plot_1, 302)).
assign(f_background_paint_1688, f_default_background_paint_1681, line(plot_1, 303)).
assign(f_background_alpha_1689, f_default_background_alpha_1690, line(plot_1, 304)).
assign(f_background_image_1691, plot_1_literal5, line(plot_1, 305)).
assign(f_outline_visible_1692, plot_1_literal6, line(plot_1, 306)).
assign(f_outline_stroke_1693, f_default_outline_stroke_1531, line(plot_1, 307)).
assign(f_outline_paint_1694, f_default_outline_paint_1527, line(plot_1, 308)).
assign(f_foreground_alpha_1695, f_default_foreground_alpha_1696, line(plot_1, 309)).
assign(f_no_data_message_1697, plot_1_literal7, line(plot_1, 311)).
assign(f_no_data_message_font_1698, plot_1_expr38, line(plot_1, 312)).
method_invoc(plot_1_expr38, m_font_68, line(plot_1, 312)).
argument(plot_1_literal8, 1, plot_1_expr38).
argument(q_plain_46, 2, plot_1_expr38).
argument(plot_1_literal9, 3, plot_1_expr38).
ref(t_font_3, q_plain_46, line(plot_1, 312)).
assign(f_no_data_message_paint_1699, q_black_46, line(plot_1, 313)).
ref(t_color_4, q_black_46, line(plot_1, 313)).
assign(f_drawing_supplier_1700, plot_1_expr45, line(plot_1, 315)).
method_invoc(plot_1_expr45, m_default_drawing_supplier_162, line(plot_1, 315)).
assign(f_notify_1701, plot_1_literal10, line(plot_1, 317)).
assign(f_listener_list_1702, plot_1_expr52, line(plot_1, 318)).
method_invoc(plot_1_expr52, m_event_listener_list_71, line(plot_1, 318)).
param(p_group_1703, 1, m_set_dataset_group_1088).
param(p_message_1704, 1, m_set_no_data_message_1090).
param(p_font_1705, 1, m_set_no_data_message_font_1092).
param(p_paint_1706, 1, m_set_no_data_message_paint_1094).
return(f_parent_1686, m_get_parent_1096, line(plot_1, 449)).
param(p_parent_1707, 1, m_set_parent_1097).
param(p_insets_1708, 1, m_set_insets_12).
method_invoc(plot_1_expr56, m_set_insets_1101, line(plot_1, 518)).
argument(p_insets_1708, 1, plot_1_expr56).
argument(plot_1_literal11, 2, plot_1_expr56).
param(p_insets_1709, 1, m_set_insets_1101).
param(p_notify_1710, 2, m_set_insets_1101).
method_invoc(plot_1_expr59, m_equals_1102, line(plot_1, 536)).
argument(p_insets_1709, 1, plot_1_expr59).
ref(f_insets_1687, plot_1_expr59, line(plot_1, 536)).
assign(f_insets_1687, p_insets_1709, line(plot_1, 537)).
method_invoc(plot_1_expr65, m_fire_change_event_1023, line(plot_1, 539)).
return(f_background_paint_1688, m_get_background_paint_242, line(plot_1, 553)).
param(p_paint_1711, 1, m_set_background_paint_243).
method_invoc(plot_1_expr72, m_equals_122, line(plot_1, 574)).
argument(p_paint_1711, 1, plot_1_expr72).
ref(f_background_paint_1688, plot_1_expr72, line(plot_1, 574)).
return(none, m_set_background_paint_243, line(plot_1, 575)).
param(p_alpha_1712, 1, m_set_background_alpha_1104).
assign(v_result_1713, plot_1_literal15, line(plot_1, 618)).
assign(v_p_1714, plot_1_expr75, line(plot_1, 619)).
method_invoc(plot_1_expr75, m_get_parent_1096, line(plot_1, 619)).
assign(v_result_1713, f_drawing_supplier_1700, line(plot_1, 624)).
return(v_result_1713, m_get_drawing_supplier_240, line(plot_1, 626)).
param(p_supplier_1715, 1, m_set_drawing_supplier_241).
assign(f_drawing_supplier_1700, p_supplier_1715, line(plot_1, 642)).
method_invoc(plot_1_expr83, m_fire_change_event_1023, line(plot_1, 643)).
param(p_supplier_1716, 1, m_set_drawing_supplier_1105).
param(p_notify_1717, 2, m_set_drawing_supplier_1105).
param(p_image_1718, 1, m_set_background_image_1107).
param(p_alignment_1719, 1, m_set_background_image_alignment_1109).
param(p_alpha_1720, 1, m_set_background_image_alpha_1111).
param(p_visible_1721, 1, m_set_outline_visible_1113).
param(p_stroke_1722, 1, m_set_outline_stroke_1115).
param(p_paint_1723, 1, m_set_outline_paint_244).
method_invoc(plot_1_expr88, m_equals_122, line(plot_1, 854)).
argument(p_paint_1723, 1, plot_1_expr88).
ref(f_outline_paint_1694, plot_1_expr88, line(plot_1, 854)).
assign(f_outline_paint_1694, p_paint_1723, line(plot_1, 858)).
method_invoc(plot_1_expr94, m_fire_change_event_1023, line(plot_1, 859)).
param(p_alpha_1724, 1, m_set_foreground_alpha_1118).
param(p_notify_1725, 1, m_set_notify_1121).
param(p_listener_1726, 1, m_add_change_listener_74).
method_invoc(plot_1_expr95, m_add_355, line(plot_1, 940)).
argument(plot_1_expr96, 1, plot_1_expr95).
argument(p_listener_1726, 2, plot_1_expr95).
ref(f_listener_list_1702, plot_1_expr95, line(plot_1, 940)).
param(p_listener_1727, 1, m_remove_change_listener_1122).
param(p_event_1728, 1, m_notify_listeners_1123).
assign(v_listeners_1729, plot_1_expr102, line(plot_1, 965)).
method_invoc(plot_1_expr102, m_get_listener_list_145, line(plot_1, 965)).
ref(f_listener_list_1702, plot_1_expr102, line(plot_1, 965)).
assign(v_i_1730, plot_1_expr106, line(plot_1, 966)).
ref(v_listeners_1729, q_length_46, line(plot_1, 966)).
assign(v_i_1730, plot_1_literal21, line(plot_1, 966)).
ref(v_listeners_1729, plot_1_expr110, line(plot_1, 967)).
method_invoc(plot_1_expr112, m_plot_changed_1124, line(plot_1, 968)).
argument(p_event_1728, 1, plot_1_expr112).
ref(plot_1_expr113, plot_1_expr112, line(plot_1, 968)).
assign(plot_1_expr113, plot_1_expr114, line(plot_1, 968)).
assign(plot_1_expr114, plot_1_expr115, line(plot_1, 968)).
ref(v_listeners_1729, plot_1_expr115, line(plot_1, 968)).
method_invoc(plot_1_expr117, m_notify_listeners_1123, line(plot_1, 979)).
argument(plot_1_expr118, 1, plot_1_expr117).
method_invoc(plot_1_expr118, m_plot_change_event_772, line(plot_1, 979)).
argument(plot_1_expr119, 1, plot_1_expr118).
param(p_g_2_1731, 1, m_draw_1125).
param(p_area_1732, 2, m_draw_1125).
param(p_anchor_1733, 3, m_draw_1125).
param(p_parent_state_1734, 4, m_draw_1125).
param(p_info_1735, 5, m_draw_1125).
param(p_g_2_1736, 1, m_draw_background_1126).
param(p_area_1737, 2, m_draw_background_1126).
param(p_g_2_1738, 1, m_fill_background_1127).
param(p_area_1739, 2, m_fill_background_1127).
param(p_g_2_1740, 1, m_fill_background_1128).
param(p_area_1741, 2, m_fill_background_1128).
param(p_orientation_1742, 3, m_fill_background_1128).
param(p_g_2_1743, 1, m_draw_background_image_1129).
param(p_area_1744, 2, m_draw_background_image_1129).
param(p_g_2_1745, 1, m_draw_outline_1130).
param(p_area_1746, 2, m_draw_outline_1130).
param(p_g_2_1747, 1, m_draw_no_data_message_1131).
param(p_area_1748, 2, m_draw_no_data_message_1131).
param(p_data_area_1749, 1, m_create_and_add_entity_1132).
param(p_plot_state_1750, 2, m_create_and_add_entity_1132).
param(p_tool_tip_1751, 3, m_create_and_add_entity_1132).
param(p_url_text_1752, 4, m_create_and_add_entity_1132).
param(p_x_1753, 1, m_handle_click_1133).
param(p_y_1754, 2, m_handle_click_1133).
param(p_info_1755, 3, m_handle_click_1133).
param(p_percent_1756, 1, m_zoom_1134).
param(p_event_1757, 1, m_axis_changed_1135).
method_invoc(plot_1_expr120, m_fire_change_event_1023, line(plot_1, 1201)).
param(p_event_1758, 1, m_dataset_changed_1136).
param(p_event_1759, 1, m_marker_changed_1137).
param(p_x_1760, 1, m_get_rect_x_1138).
param(p_w_1_1761, 2, m_get_rect_x_1138).
param(p_w_2_1762, 3, m_get_rect_x_1138).
param(p_edge_1763, 4, m_get_rect_x_1138).
param(p_y_1764, 1, m_get_rect_y_1139).
param(p_h_1_1765, 2, m_get_rect_y_1139).
param(p_h_2_1766, 3, m_get_rect_y_1139).
param(p_edge_1767, 4, m_get_rect_y_1139).
param(p_obj_1768, 1, m_equals_1140).
throw(m_clone_1141, clone_not_supported_exception).
param(p_stream_1769, 1, m_write_object_1142).
throw(m_write_object_1142, ioexception).
param(p_stream_1770, 1, m_read_object_1143).
throw(m_read_object_1143, ioexception).
throw(m_read_object_1143, class_not_found_exception).
param(p_location_1771, 1, m_resolve_domain_axis_location_1144).
param(p_orientation_1772, 2, m_resolve_domain_axis_location_1144).
param(p_location_1773, 1, m_resolve_range_axis_location_1145).
param(p_orientation_1774, 2, m_resolve_range_axis_location_1145).

%title_1 - org.jfree.chart.title.Title
assign(f_default_position_3052, q_top_67, line(title_1, 97)).
ref(t_rectangle_edge_7, q_top_67, line(title_1, 97)).
assign(f_default_horizontal_alignment_3099, q_center_68, line(title_1, 101)).
ref(t_horizontal_alignment_22, q_center_68, line(title_1, 101)).
assign(f_default_vertical_alignment_3100, q_center_68, line(title_1, 105)).
ref(t_vertical_alignment_23, q_center_68, line(title_1, 105)).
assign(f_default_padding_3101, title_1_expr1, line(title_1, 108)).
method_invoc(title_1_expr1, m_rectangle_insets_13, line(title_1, 108)).
argument(title_1_literal1, 1, title_1_expr1).
argument(title_1_literal2, 2, title_1_expr1).
argument(title_1_literal3, 3, title_1_expr1).
argument(title_1_literal4, 4, title_1_expr1).
method_invoc(title_1_expr2, m_title_1843, line(title_1, 139)).
argument(q_default_position_68, 1, title_1_expr2).
argument(q_default_horizontal_alignment_68, 2, title_1_expr2).
argument(q_default_vertical_alignment_68, 3, title_1_expr2).
argument(q_default_padding_68, 4, title_1_expr2).
ref(t_title_38, q_default_position_68, line(title_1, 139)).
param(p_position_3102, 1, m_title_1875).
param(p_horizontal_alignment_3103, 2, m_title_1875).
param(p_vertical_alignment_3104, 3, m_title_1875).
param(p_position_3105, 1, m_title_1843).
param(p_horizontal_alignment_3106, 2, m_title_1843).
param(p_vertical_alignment_3107, 3, m_title_1843).
param(p_padding_3108, 4, m_title_1843).
assign(f_visible_3109, title_1_literal9, line(title_1, 199)).
assign(f_position_3110, p_position_3105, line(title_1, 200)).
assign(f_horizontal_alignment_3111, p_horizontal_alignment_3106, line(title_1, 201)).
assign(f_vertical_alignment_3112, p_vertical_alignment_3107, line(title_1, 202)).
method_invoc(title_1_expr19, m_set_padding_678, line(title_1, 203)).
argument(p_padding_3108, 1, title_1_expr19).
assign(f_listener_list_3113, title_1_expr22, line(title_1, 204)).
method_invoc(title_1_expr22, m_event_listener_list_71, line(title_1, 204)).
assign(f_notify_3114, title_1_literal10, line(title_1, 205)).
param(p_visible_3115, 1, m_set_visible_1877).
param(p_position_3116, 1, m_set_position_81).
assign(f_position_3110, p_position_3116, line(title_1, 258)).
method_invoc(title_1_expr34, m_notify_listeners_1817, line(title_1, 259)).
argument(title_1_expr35, 1, title_1_expr34).
method_invoc(title_1_expr35, m_title_change_event_778, line(title_1, 259)).
argument(title_1_expr36, 1, title_1_expr35).
param(p_alignment_3117, 1, m_set_horizontal_alignment_1880).
param(p_alignment_3118, 1, m_set_vertical_alignment_1882).
param(p_flag_3119, 1, m_set_notify_1884).
param(p_g_2_3120, 1, m_draw_1885).
param(p_area_3121, 2, m_draw_1885).
throw(m_clone_1886, clone_not_supported_exception).
param(p_listener_3122, 1, m_add_change_listener_83).
method_invoc(title_1_expr37, m_add_355, line(title_1, 374)).
argument(title_1_expr38, 1, title_1_expr37).
argument(p_listener_3122, 2, title_1_expr37).
ref(f_listener_list_3113, title_1_expr37, line(title_1, 374)).
param(p_listener_3123, 1, m_remove_change_listener_1887).
param(p_event_3124, 1, m_notify_listeners_1817).
assign(v_listeners_3125, title_1_expr43, line(title_1, 395)).
method_invoc(title_1_expr43, m_get_listener_list_145, line(title_1, 395)).
ref(f_listener_list_3113, title_1_expr43, line(title_1, 395)).
assign(v_i_3126, title_1_expr47, line(title_1, 396)).
ref(v_listeners_3125, q_length_68, line(title_1, 396)).
assign(v_i_3126, title_1_literal14, line(title_1, 396)).
ref(v_listeners_3125, title_1_expr51, line(title_1, 397)).
method_invoc(title_1_expr53, m_title_changed_1888, line(title_1, 398)).
argument(p_event_3124, 1, title_1_expr53).
ref(title_1_expr54, title_1_expr53, line(title_1, 398)).
assign(title_1_expr54, title_1_expr55, line(title_1, 398)).
assign(title_1_expr55, title_1_expr56, line(title_1, 398)).
ref(v_listeners_3125, title_1_expr56, line(title_1, 398)).
param(p_obj_3127, 1, m_equals_1889).
param(p_stream_3128, 1, m_write_object_1891).
throw(m_write_object_1891, ioexception).
param(p_stream_3129, 1, m_read_object_1892).
throw(m_read_object_1892, ioexception).
throw(m_read_object_1892, class_not_found_exception).

%horizontal_alignment_1 - org.jfree.chart.util.HorizontalAlignment
assign(f_left_3220, horizontal_alignment_1_expr1, line(horizontal_alignment_1, 57)).
assign(f_right_3221, horizontal_alignment_1_expr2, line(horizontal_alignment_1, 61)).
assign(f_center_1190, horizontal_alignment_1_expr3, line(horizontal_alignment_1, 65)).
param(p_name_3222, 1, m_horizontal_alignment_1960).
assign(f_name_3223, p_name_3222, line(horizontal_alignment_1, 77)).
param(p_obj_3224, 1, m_equals_1962).
throw(m_read_resolve_1964, object_stream_exception).

%rotation_1 - org.jfree.chart.util.Rotation
assign(f_clockwise_3325, rotation_1_expr1, line(rotation_1, 59)).
assign(f_anticlockwise_3326, rotation_1_expr2, line(rotation_1, 63)).
param(p_name_3327, 1, m_rotation_2028).
param(p_factor_3328, 2, m_rotation_2028).
assign(f_name_3329, p_name_3327, line(rotation_1, 82)).
assign(f_factor_3330, p_factor_3328, line(rotation_1, 83)).
param(p_o_3331, 1, m_equals_2031).
throw(m_read_resolve_2033, object_stream_exception).

%symbol_axis_1 - org.jfree.chart.axis.SymbolAxis
assign(f_default_grid_band_paint_893, symbol_axis_1_expr1, line(symbol_axis_1, 121)).
assign(f_default_grid_band_alternate_paint_894, symbol_axis_1_expr2, line(symbol_axis_1, 129)).
param(p_label_895, 1, m_symbol_axis_529).
param(p_sv_896, 2, m_symbol_axis_529).
param(p_flag_897, 1, m_set_grid_bands_visible_532).
param(p_paint_898, 1, m_set_grid_band_paint_534).
param(p_paint_899, 1, m_set_grid_band_alternate_paint_536).
param(p_g_2_900, 1, m_select_auto_tick_unit_537).
param(p_data_area_901, 2, m_select_auto_tick_unit_537).
param(p_edge_902, 3, m_select_auto_tick_unit_537).
param(p_g_2_903, 1, m_draw_538).
param(p_cursor_904, 2, m_draw_538).
param(p_plot_area_905, 3, m_draw_538).
param(p_data_area_906, 4, m_draw_538).
param(p_edge_907, 5, m_draw_538).
param(p_plot_state_908, 6, m_draw_538).
param(p_g_2_909, 1, m_draw_grid_bands_539).
param(p_plot_area_910, 2, m_draw_grid_bands_539).
param(p_data_area_911, 3, m_draw_grid_bands_539).
param(p_edge_912, 4, m_draw_grid_bands_539).
param(p_ticks_913, 5, m_draw_grid_bands_539).
param(p_g_2_914, 1, m_draw_grid_bands_horizontal_540).
param(p_plot_area_915, 2, m_draw_grid_bands_horizontal_540).
param(p_data_area_916, 3, m_draw_grid_bands_horizontal_540).
param(p_first_grid_band_is_dark_917, 4, m_draw_grid_bands_horizontal_540).
param(p_ticks_918, 5, m_draw_grid_bands_horizontal_540).
param(p_g_2_919, 1, m_draw_grid_bands_vertical_541).
param(p_draw_area_920, 2, m_draw_grid_bands_vertical_541).
param(p_plot_area_921, 3, m_draw_grid_bands_vertical_541).
param(p_first_grid_band_is_dark_922, 4, m_draw_grid_bands_vertical_541).
param(p_ticks_923, 5, m_draw_grid_bands_vertical_541).
param(p_g_2_924, 1, m_refresh_ticks_543).
param(p_state_925, 2, m_refresh_ticks_543).
param(p_data_area_926, 3, m_refresh_ticks_543).
param(p_edge_927, 4, m_refresh_ticks_543).
param(p_g_2_928, 1, m_refresh_ticks_horizontal_544).
param(p_data_area_929, 2, m_refresh_ticks_horizontal_544).
param(p_edge_930, 3, m_refresh_ticks_horizontal_544).
param(p_g_2_931, 1, m_refresh_ticks_vertical_545).
param(p_data_area_932, 2, m_refresh_ticks_vertical_545).
param(p_edge_933, 3, m_refresh_ticks_vertical_545).
param(p_value_934, 1, m_value_to_string_546).
param(p_obj_935, 1, m_equals_547).
param(p_stream_936, 1, m_write_object_548).
throw(m_write_object_548, ioexception).
param(p_stream_937, 1, m_read_object_549).
throw(m_read_object_549, ioexception).
throw(m_read_object_549, class_not_found_exception).

%shape_list_1 - org.jfree.chart.util.ShapeList
method_invoc(shape_list_1_expr1, m_abstract_object_list_1944, line(shape_list_1, 59)).
param(p_index_3332, 1, m_get_shape_2034).
param(p_index_3333, 1, m_set_shape_2035).
param(p_shape_3334, 2, m_set_shape_2035).
throw(m_clone_2036, clone_not_supported_exception).
param(p_obj_3335, 1, m_equals_2037).
param(p_stream_3336, 1, m_write_object_2039).
throw(m_write_object_2039, ioexception).
param(p_stream_3337, 1, m_read_object_2040).
throw(m_read_object_2040, ioexception).
throw(m_read_object_2040, class_not_found_exception).

%standard_pie_section_label_generator_1 - org.jfree.chart.labels.StandardPieSectionLabelGenerator
method_invoc(standard_pie_section_label_generator_1_expr1, m_standard_pie_section_label_generator_882, line(standard_pie_section_label_generator_1, 93)).
argument(f_default_section_label_format_1375, 1, standard_pie_section_label_generator_1_expr1).
argument(standard_pie_section_label_generator_1_expr2, 2, standard_pie_section_label_generator_1_expr1).
argument(standard_pie_section_label_generator_1_expr3, 3, standard_pie_section_label_generator_1_expr1).
method_invoc(standard_pie_section_label_generator_1_expr2, m_get_number_instance_883, line(standard_pie_section_label_generator_1, 93)).
ref(t_number_format_26, standard_pie_section_label_generator_1_expr2, line(standard_pie_section_label_generator_1, 93)).
param(p_locale_1376, 1, m_standard_pie_section_label_generator_884).
param(p_label_format_1377, 1, m_standard_pie_section_label_generator_885).
param(p_label_format_1378, 1, m_standard_pie_section_label_generator_886).
param(p_locale_1379, 2, m_standard_pie_section_label_generator_886).
param(p_label_format_1380, 1, m_standard_pie_section_label_generator_882).
param(p_number_format_1381, 2, m_standard_pie_section_label_generator_882).
param(p_percent_format_1382, 3, m_standard_pie_section_label_generator_882).
method_invoc(standard_pie_section_label_generator_1_expr4, m_abstract_pie_item_label_generator_845, line(standard_pie_section_label_generator_1, 144)).
argument(p_label_format_1380, 1, standard_pie_section_label_generator_1_expr4).
argument(p_number_format_1381, 2, standard_pie_section_label_generator_1_expr4).
argument(p_percent_format_1382, 3, standard_pie_section_label_generator_1_expr4).
assign(f_attributed_labels_1383, standard_pie_section_label_generator_1_expr7, line(standard_pie_section_label_generator_1, 145)).
method_invoc(standard_pie_section_label_generator_1_expr7, m_object_list_887, line(standard_pie_section_label_generator_1, 145)).
param(p_section_1384, 1, m_get_attributed_label_888).
param(p_section_1385, 1, m_set_attributed_label_889).
param(p_label_1386, 2, m_set_attributed_label_889).
param(p_dataset_1387, 1, m_generate_section_label_890).
param(p_key_1388, 2, m_generate_section_label_890).
param(p_dataset_1389, 1, m_generate_attributed_section_label_891).
param(p_key_1390, 2, m_generate_attributed_section_label_891).
param(p_obj_1391, 1, m_equals_892).
throw(m_clone_893, clone_not_supported_exception).

%abstract_xydataset_1 - org.jfree.data.xy.AbstractXYDataset
param(p_series_3913, 1, m_get_xvalue_2469).
param(p_item_3914, 2, m_get_xvalue_2469).
param(p_series_3915, 1, m_get_yvalue_2470).
param(p_item_3916, 2, m_get_yvalue_2470).
param(p_state_3917, 1, m_set_selection_state_2422).
assign(f_selection_state_3918, p_state_3917, line(abstract_xydataset_1, 127)).
method_invoc(abstract_xydataset_1_expr4, m_fire_dataset_changed_2119, line(abstract_xydataset_1, 128)).

%vertical_alignment_1 - org.jfree.chart.util.VerticalAlignment
assign(f_top_3356, vertical_alignment_1_expr1, line(vertical_alignment_1, 57)).
assign(f_bottom_3357, vertical_alignment_1_expr2, line(vertical_alignment_1, 61)).
assign(f_center_1191, vertical_alignment_1_expr3, line(vertical_alignment_1, 65)).
param(p_name_3358, 1, m_vertical_alignment_2061).
assign(f_name_3359, p_name_3358, line(vertical_alignment_1, 77)).
param(p_obj_3360, 1, m_equals_2063).
throw(m_read_resolve_2065, object_stream_exception).

%dataset_change_event_1 - org.jfree.data.general.DatasetChangeEvent
param(p_source_3435, 1, m_dataset_change_event_1212).
param(p_dataset_3436, 2, m_dataset_change_event_1212).
method_invoc(dataset_change_event_1_expr1, m_event_object_763, line(dataset_change_event_1, 71)).
argument(p_source_3435, 1, dataset_change_event_1_expr1).
assign(f_dataset_3437, p_dataset_3436, line(dataset_change_event_1, 72)).

%default_drawing_supplier_1 - org.jfree.chart.plot.DefaultDrawingSupplier
assign(f_default_paint_sequence_1436, default_drawing_supplier_1_expr1, line(default_drawing_supplier_1, 83)).
assign(f_default_outline_paint_sequence_1437, default_drawing_supplier_1_expr2, line(default_drawing_supplier_1, 87)).
assign(f_default_fill_paint_sequence_1438, default_drawing_supplier_1_expr4, line(default_drawing_supplier_1, 91)).
assign(f_default_stroke_sequence_1439, default_drawing_supplier_1_expr6, line(default_drawing_supplier_1, 95)).
assign(f_default_outline_stroke_sequence_1440, default_drawing_supplier_1_expr8, line(default_drawing_supplier_1, 100)).
assign(f_default_shape_sequence_1441, default_drawing_supplier_1_expr9, line(default_drawing_supplier_1, 105)).
method_invoc(default_drawing_supplier_1_expr10, m_default_drawing_supplier_927, line(default_drawing_supplier_1, 150)).
argument(f_default_paint_sequence_1436, 1, default_drawing_supplier_1_expr10).
argument(f_default_fill_paint_sequence_1438, 2, default_drawing_supplier_1_expr10).
argument(f_default_outline_paint_sequence_1437, 3, default_drawing_supplier_1_expr10).
argument(f_default_stroke_sequence_1439, 4, default_drawing_supplier_1_expr10).
argument(f_default_outline_stroke_sequence_1440, 5, default_drawing_supplier_1_expr10).
argument(f_default_shape_sequence_1441, 6, default_drawing_supplier_1_expr10).
param(p_paint_sequence_1442, 1, m_default_drawing_supplier_928).
param(p_outline_paint_sequence_1443, 2, m_default_drawing_supplier_928).
param(p_stroke_sequence_1444, 3, m_default_drawing_supplier_928).
param(p_outline_stroke_sequence_1445, 4, m_default_drawing_supplier_928).
param(p_shape_sequence_1446, 5, m_default_drawing_supplier_928).
param(p_paint_sequence_1447, 1, m_default_drawing_supplier_927).
param(p_fill_paint_sequence_1448, 2, m_default_drawing_supplier_927).
param(p_outline_paint_sequence_1449, 3, m_default_drawing_supplier_927).
param(p_stroke_sequence_1450, 4, m_default_drawing_supplier_927).
param(p_outline_stroke_sequence_1451, 5, m_default_drawing_supplier_927).
param(p_shape_sequence_1452, 6, m_default_drawing_supplier_927).
assign(f_paint_sequence_1453, p_paint_sequence_1447, line(default_drawing_supplier_1, 199)).
assign(f_fill_paint_sequence_1454, p_fill_paint_sequence_1448, line(default_drawing_supplier_1, 200)).
assign(f_outline_paint_sequence_1455, p_outline_paint_sequence_1449, line(default_drawing_supplier_1, 201)).
assign(f_stroke_sequence_1456, p_stroke_sequence_1450, line(default_drawing_supplier_1, 202)).
assign(f_outline_stroke_sequence_1457, p_outline_stroke_sequence_1451, line(default_drawing_supplier_1, 203)).
assign(f_shape_sequence_1458, p_shape_sequence_1452, line(default_drawing_supplier_1, 204)).
assign(v_result_1459, default_drawing_supplier_1_expr29, line(default_drawing_supplier_1, 289)).
assign(v_size_1460, default_drawing_supplier_1_literal2, line(default_drawing_supplier_1, 291)).
assign(v_delta_1461, default_drawing_supplier_1_expr30, line(default_drawing_supplier_1, 292)).
assign(v_xpoints_1462, default_drawing_supplier_1_literal4, line(default_drawing_supplier_1, 293)).
assign(v_ypoints_1463, default_drawing_supplier_1_literal5, line(default_drawing_supplier_1, 294)).
assign(default_drawing_supplier_1_expr32, default_drawing_supplier_1_expr33, line(default_drawing_supplier_1, 297)).
ref(v_result_1459, default_drawing_supplier_1_expr32, line(default_drawing_supplier_1, 297)).
method_invoc(default_drawing_supplier_1_expr33, m_double_936, line(default_drawing_supplier_1, 297)).
argument(default_drawing_supplier_1_expr34, 1, default_drawing_supplier_1_expr33).
argument(default_drawing_supplier_1_expr35, 2, default_drawing_supplier_1_expr33).
argument(v_size_1460, 3, default_drawing_supplier_1_expr33).
argument(v_size_1460, 4, default_drawing_supplier_1_expr33).
assign(default_drawing_supplier_1_expr37, default_drawing_supplier_1_expr38, line(default_drawing_supplier_1, 299)).
ref(v_result_1459, default_drawing_supplier_1_expr37, line(default_drawing_supplier_1, 299)).
method_invoc(default_drawing_supplier_1_expr38, m_double_937, line(default_drawing_supplier_1, 299)).
argument(default_drawing_supplier_1_expr39, 1, default_drawing_supplier_1_expr38).
argument(default_drawing_supplier_1_expr40, 2, default_drawing_supplier_1_expr38).
argument(v_size_1460, 3, default_drawing_supplier_1_expr38).
argument(v_size_1460, 4, default_drawing_supplier_1_expr38).
assign(v_xpoints_1462, default_drawing_supplier_1_expr42, line(default_drawing_supplier_1, 302)).
method_invoc(default_drawing_supplier_1_expr42, m_int_array_938, line(default_drawing_supplier_1, 302)).
argument(default_drawing_supplier_1_literal8, 1, default_drawing_supplier_1_expr42).
argument(v_delta_1461, 2, default_drawing_supplier_1_expr42).
argument(default_drawing_supplier_1_expr43, 3, default_drawing_supplier_1_expr42).
assign(v_ypoints_1463, default_drawing_supplier_1_expr45, line(default_drawing_supplier_1, 303)).
method_invoc(default_drawing_supplier_1_expr45, m_int_array_938, line(default_drawing_supplier_1, 303)).
argument(default_drawing_supplier_1_expr46, 1, default_drawing_supplier_1_expr45).
argument(v_delta_1461, 2, default_drawing_supplier_1_expr45).
argument(v_delta_1461, 3, default_drawing_supplier_1_expr45).
assign(default_drawing_supplier_1_expr48, default_drawing_supplier_1_expr49, line(default_drawing_supplier_1, 304)).
ref(v_result_1459, default_drawing_supplier_1_expr48, line(default_drawing_supplier_1, 304)).
method_invoc(default_drawing_supplier_1_expr49, m_polygon_939, line(default_drawing_supplier_1, 304)).
argument(v_xpoints_1462, 1, default_drawing_supplier_1_expr49).
argument(v_ypoints_1463, 2, default_drawing_supplier_1_expr49).
argument(default_drawing_supplier_1_literal10, 3, default_drawing_supplier_1_expr49).
assign(v_xpoints_1462, default_drawing_supplier_1_expr51, line(default_drawing_supplier_1, 307)).
method_invoc(default_drawing_supplier_1_expr51, m_int_array_940, line(default_drawing_supplier_1, 307)).
argument(default_drawing_supplier_1_literal11, 1, default_drawing_supplier_1_expr51).
argument(v_delta_1461, 2, default_drawing_supplier_1_expr51).
argument(default_drawing_supplier_1_literal12, 3, default_drawing_supplier_1_expr51).
argument(default_drawing_supplier_1_expr52, 4, default_drawing_supplier_1_expr51).
assign(v_ypoints_1463, default_drawing_supplier_1_expr54, line(default_drawing_supplier_1, 308)).
method_invoc(default_drawing_supplier_1_expr54, m_int_array_940, line(default_drawing_supplier_1, 308)).
argument(default_drawing_supplier_1_expr55, 1, default_drawing_supplier_1_expr54).
argument(default_drawing_supplier_1_literal13, 2, default_drawing_supplier_1_expr54).
argument(v_delta_1461, 3, default_drawing_supplier_1_expr54).
argument(default_drawing_supplier_1_literal14, 4, default_drawing_supplier_1_expr54).
assign(default_drawing_supplier_1_expr57, default_drawing_supplier_1_expr58, line(default_drawing_supplier_1, 309)).
ref(v_result_1459, default_drawing_supplier_1_expr57, line(default_drawing_supplier_1, 309)).
method_invoc(default_drawing_supplier_1_expr58, m_polygon_939, line(default_drawing_supplier_1, 309)).
argument(v_xpoints_1462, 1, default_drawing_supplier_1_expr58).
argument(v_ypoints_1463, 2, default_drawing_supplier_1_expr58).
argument(default_drawing_supplier_1_literal16, 3, default_drawing_supplier_1_expr58).
assign(default_drawing_supplier_1_expr60, default_drawing_supplier_1_expr61, line(default_drawing_supplier_1, 312)).
ref(v_result_1459, default_drawing_supplier_1_expr60, line(default_drawing_supplier_1, 312)).
method_invoc(default_drawing_supplier_1_expr61, m_double_936, line(default_drawing_supplier_1, 312)).
argument(default_drawing_supplier_1_expr62, 1, default_drawing_supplier_1_expr61).
argument(default_drawing_supplier_1_expr63, 2, default_drawing_supplier_1_expr61).
argument(v_size_1460, 3, default_drawing_supplier_1_expr61).
argument(default_drawing_supplier_1_expr64, 4, default_drawing_supplier_1_expr61).
assign(v_xpoints_1462, default_drawing_supplier_1_expr67, line(default_drawing_supplier_1, 315)).
method_invoc(default_drawing_supplier_1_expr67, m_int_array_938, line(default_drawing_supplier_1, 315)).
argument(default_drawing_supplier_1_expr68, 1, default_drawing_supplier_1_expr67).
argument(default_drawing_supplier_1_expr69, 2, default_drawing_supplier_1_expr67).
argument(default_drawing_supplier_1_literal20, 3, default_drawing_supplier_1_expr67).
assign(v_ypoints_1463, default_drawing_supplier_1_expr71, line(default_drawing_supplier_1, 316)).
method_invoc(default_drawing_supplier_1_expr71, m_int_array_938, line(default_drawing_supplier_1, 316)).
argument(default_drawing_supplier_1_expr72, 1, default_drawing_supplier_1_expr71).
argument(default_drawing_supplier_1_expr73, 2, default_drawing_supplier_1_expr71).
argument(v_delta_1461, 3, default_drawing_supplier_1_expr71).
assign(default_drawing_supplier_1_expr75, default_drawing_supplier_1_expr76, line(default_drawing_supplier_1, 317)).
ref(v_result_1459, default_drawing_supplier_1_expr75, line(default_drawing_supplier_1, 317)).
method_invoc(default_drawing_supplier_1_expr76, m_polygon_939, line(default_drawing_supplier_1, 317)).
argument(v_xpoints_1462, 1, default_drawing_supplier_1_expr76).
argument(v_ypoints_1463, 2, default_drawing_supplier_1_expr76).
argument(default_drawing_supplier_1_literal22, 3, default_drawing_supplier_1_expr76).
assign(default_drawing_supplier_1_expr78, default_drawing_supplier_1_expr79, line(default_drawing_supplier_1, 320)).
ref(v_result_1459, default_drawing_supplier_1_expr78, line(default_drawing_supplier_1, 320)).
method_invoc(default_drawing_supplier_1_expr79, m_double_937, line(default_drawing_supplier_1, 320)).
argument(default_drawing_supplier_1_expr80, 1, default_drawing_supplier_1_expr79).
argument(default_drawing_supplier_1_expr81, 2, default_drawing_supplier_1_expr79).
argument(v_size_1460, 3, default_drawing_supplier_1_expr79).
argument(default_drawing_supplier_1_expr82, 4, default_drawing_supplier_1_expr79).
assign(v_xpoints_1462, default_drawing_supplier_1_expr85, line(default_drawing_supplier_1, 323)).
method_invoc(default_drawing_supplier_1_expr85, m_int_array_938, line(default_drawing_supplier_1, 323)).
argument(default_drawing_supplier_1_expr86, 1, default_drawing_supplier_1_expr85).
argument(v_delta_1461, 2, default_drawing_supplier_1_expr85).
argument(default_drawing_supplier_1_expr87, 3, default_drawing_supplier_1_expr85).
assign(v_ypoints_1463, default_drawing_supplier_1_expr89, line(default_drawing_supplier_1, 324)).
method_invoc(default_drawing_supplier_1_expr89, m_int_array_938, line(default_drawing_supplier_1, 324)).
argument(default_drawing_supplier_1_expr90, 1, default_drawing_supplier_1_expr89).
argument(default_drawing_supplier_1_literal26, 2, default_drawing_supplier_1_expr89).
argument(v_delta_1461, 3, default_drawing_supplier_1_expr89).
assign(default_drawing_supplier_1_expr92, default_drawing_supplier_1_expr93, line(default_drawing_supplier_1, 325)).
ref(v_result_1459, default_drawing_supplier_1_expr92, line(default_drawing_supplier_1, 325)).
method_invoc(default_drawing_supplier_1_expr93, m_polygon_939, line(default_drawing_supplier_1, 325)).
argument(v_xpoints_1462, 1, default_drawing_supplier_1_expr93).
argument(v_ypoints_1463, 2, default_drawing_supplier_1_expr93).
argument(default_drawing_supplier_1_literal28, 3, default_drawing_supplier_1_expr93).
assign(default_drawing_supplier_1_expr95, default_drawing_supplier_1_expr96, line(default_drawing_supplier_1, 328)).
ref(v_result_1459, default_drawing_supplier_1_expr95, line(default_drawing_supplier_1, 328)).
method_invoc(default_drawing_supplier_1_expr96, m_double_936, line(default_drawing_supplier_1, 328)).
argument(default_drawing_supplier_1_expr97, 1, default_drawing_supplier_1_expr96).
argument(default_drawing_supplier_1_expr98, 2, default_drawing_supplier_1_expr96).
argument(default_drawing_supplier_1_expr99, 3, default_drawing_supplier_1_expr96).
argument(v_size_1460, 4, default_drawing_supplier_1_expr96).
assign(v_xpoints_1462, default_drawing_supplier_1_expr102, line(default_drawing_supplier_1, 331)).
method_invoc(default_drawing_supplier_1_expr102, m_int_array_938, line(default_drawing_supplier_1, 331)).
argument(default_drawing_supplier_1_expr103, 1, default_drawing_supplier_1_expr102).
argument(v_delta_1461, 2, default_drawing_supplier_1_expr102).
argument(v_delta_1461, 3, default_drawing_supplier_1_expr102).
assign(v_ypoints_1463, default_drawing_supplier_1_expr105, line(default_drawing_supplier_1, 332)).
method_invoc(default_drawing_supplier_1_expr105, m_int_array_938, line(default_drawing_supplier_1, 332)).
argument(default_drawing_supplier_1_literal32, 1, default_drawing_supplier_1_expr105).
argument(default_drawing_supplier_1_expr106, 2, default_drawing_supplier_1_expr105).
argument(default_drawing_supplier_1_expr107, 3, default_drawing_supplier_1_expr105).
assign(default_drawing_supplier_1_expr109, default_drawing_supplier_1_expr110, line(default_drawing_supplier_1, 333)).
ref(v_result_1459, default_drawing_supplier_1_expr109, line(default_drawing_supplier_1, 333)).
method_invoc(default_drawing_supplier_1_expr110, m_polygon_939, line(default_drawing_supplier_1, 333)).
argument(v_xpoints_1462, 1, default_drawing_supplier_1_expr110).
argument(v_ypoints_1463, 2, default_drawing_supplier_1_expr110).
argument(default_drawing_supplier_1_literal34, 3, default_drawing_supplier_1_expr110).
return(v_result_1459, m_create_standard_series_shapes_935, line(default_drawing_supplier_1, 335)).
param(p_obj_1464, 1, m_equals_941).
param(p_s_1_1465, 1, m_equal_shapes_942).
param(p_s_2_1466, 2, m_equal_shapes_942).
param(p_stream_1467, 1, m_write_object_943).
throw(m_write_object_943, ioexception).
param(p_stream_1468, 1, m_read_object_944).
throw(m_read_object_944, ioexception).
throw(m_read_object_944, class_not_found_exception).
param(p_a_1469, 1, m_int_array_938).
param(p_b_1470, 2, m_int_array_938).
param(p_c_1471, 3, m_int_array_938).
return(default_drawing_supplier_1_expr111, m_int_array_938, line(default_drawing_supplier_1, 517)).
assign(default_drawing_supplier_1_expr113, p_a_1469, line(default_drawing_supplier_1, 517)).
assign(default_drawing_supplier_1_expr114, p_b_1470, line(default_drawing_supplier_1, 517)).
assign(default_drawing_supplier_1_expr115, p_c_1471, line(default_drawing_supplier_1, 517)).
param(p_a_1472, 1, m_int_array_940).
param(p_b_1473, 2, m_int_array_940).
param(p_c_1474, 3, m_int_array_940).
param(p_d_1475, 4, m_int_array_940).
return(default_drawing_supplier_1_expr116, m_int_array_940, line(default_drawing_supplier_1, 532)).
assign(default_drawing_supplier_1_expr118, p_a_1472, line(default_drawing_supplier_1, 532)).
assign(default_drawing_supplier_1_expr119, p_b_1473, line(default_drawing_supplier_1, 532)).
assign(default_drawing_supplier_1_expr120, p_c_1474, line(default_drawing_supplier_1, 532)).
assign(default_drawing_supplier_1_expr121, p_d_1475, line(default_drawing_supplier_1, 532)).
throw(m_clone_945, clone_not_supported_exception).
assign(v_clone_1476, default_drawing_supplier_1_expr122, line(default_drawing_supplier_1, 544)).
assign(default_drawing_supplier_1_expr122, default_drawing_supplier_1_expr123, line(default_drawing_supplier_1, 544)).
method_invoc(default_drawing_supplier_1_expr123, m_clone_946, line(default_drawing_supplier_1, 544)).
throw(default_drawing_supplier_1_expr123, clone_not_supported_exception, line(default_drawing_supplier_1, 544)).
return(v_clone_1476, m_clone_945, line(default_drawing_supplier_1, 545)).

%xyseries_1 - org.jfree.data.xy.XYSeries
assign(f_maximum_item_count_3981, q_max_value_90, line(xyseries_1, 112)).
ref(t_integer_36, q_max_value_90, line(xyseries_1, 112)).
param(p_key_3982, 1, m_xyseries_638).
method_invoc(xyseries_1_expr1, m_xyseries_2524, line(xyseries_1, 143)).
argument(p_key_3982, 1, xyseries_1_expr1).
argument(xyseries_1_literal1, 2, xyseries_1_expr1).
argument(xyseries_1_literal2, 3, xyseries_1_expr1).
param(p_key_3983, 1, m_xyseries_2525).
param(p_auto_sort_3984, 2, m_xyseries_2525).
param(p_key_3985, 1, m_xyseries_2524).
param(p_auto_sort_3986, 2, m_xyseries_2524).
param(p_allow_duplicate_xvalues_3987, 3, m_xyseries_2524).
method_invoc(xyseries_1_expr2, m_series_2205, line(xyseries_1, 170)).
argument(p_key_3985, 1, xyseries_1_expr2).
assign(f_data_3988, xyseries_1_expr5, line(xyseries_1, 171)).
method_invoc(xyseries_1_expr5, m_array_list_75, line(xyseries_1, 171)).
assign(f_auto_sort_3989, p_auto_sort_3986, line(xyseries_1, 172)).
assign(f_allow_duplicate_xvalues_3990, p_allow_duplicate_xvalues_3987, line(xyseries_1, 173)).
assign(f_min_x_3991, q_na_n_90, line(xyseries_1, 174)).
ref(t_double_42, q_na_n_90, line(xyseries_1, 174)).
assign(f_max_x_3992, q_na_n_90, line(xyseries_1, 175)).
ref(t_double_42, q_na_n_90, line(xyseries_1, 175)).
assign(f_min_y_3993, q_na_n_90, line(xyseries_1, 176)).
ref(t_double_42, q_na_n_90, line(xyseries_1, 176)).
assign(f_max_y_3994, q_na_n_90, line(xyseries_1, 177)).
ref(t_double_42, q_na_n_90, line(xyseries_1, 177)).
return(f_min_x_3991, m_get_min_x_2526, line(xyseries_1, 192)).
return(f_max_x_3992, m_get_max_x_2527, line(xyseries_1, 207)).
param(p_item_3995, 1, m_update_bounds_for_added_item_2530).
assign(v_x_3996, xyseries_1_expr29, line(xyseries_1, 248)).
method_invoc(xyseries_1_expr29, m_get_xvalue_2512, line(xyseries_1, 248)).
ref(p_item_3995, xyseries_1_expr29, line(xyseries_1, 248)).
assign(f_min_x_3991, xyseries_1_expr32, line(xyseries_1, 249)).
method_invoc(xyseries_1_expr32, m_min_ignore_na_n_2531, line(xyseries_1, 249)).
argument(f_min_x_3991, 1, xyseries_1_expr32).
argument(v_x_3996, 2, xyseries_1_expr32).
assign(f_max_x_3992, xyseries_1_expr38, line(xyseries_1, 250)).
method_invoc(xyseries_1_expr38, m_max_ignore_na_n_2532, line(xyseries_1, 250)).
argument(f_max_x_3992, 1, xyseries_1_expr38).
argument(v_x_3996, 2, xyseries_1_expr38).
method_invoc(xyseries_1_expr43, m_get_y_2513, line(xyseries_1, 251)).
ref(p_item_3995, xyseries_1_expr43, line(xyseries_1, 251)).
assign(v_y_3997, xyseries_1_expr44, line(xyseries_1, 252)).
method_invoc(xyseries_1_expr44, m_get_yvalue_2514, line(xyseries_1, 252)).
ref(p_item_3995, xyseries_1_expr44, line(xyseries_1, 252)).
assign(f_min_y_3993, xyseries_1_expr47, line(xyseries_1, 253)).
method_invoc(xyseries_1_expr47, m_min_ignore_na_n_2531, line(xyseries_1, 253)).
argument(f_min_y_3993, 1, xyseries_1_expr47).
argument(v_y_3997, 2, xyseries_1_expr47).
assign(f_max_y_3994, xyseries_1_expr53, line(xyseries_1, 254)).
method_invoc(xyseries_1_expr53, m_max_ignore_na_n_2532, line(xyseries_1, 254)).
argument(f_max_y_3994, 1, xyseries_1_expr53).
argument(v_y_3997, 2, xyseries_1_expr53).
param(p_item_3998, 1, m_update_bounds_for_removed_item_2533).
return(xyseries_1_expr57, m_get_item_count_2537, line(xyseries_1, 344)).
method_invoc(xyseries_1_expr57, m_size_105, line(xyseries_1, 344)).
ref(f_data_3988, xyseries_1_expr57, line(xyseries_1, 344)).
param(p_maximum_3999, 1, m_set_maximum_item_count_2540).
param(p_item_4000, 1, m_add_2541).
param(p_x_4001, 1, m_add_639).
param(p_y_4002, 2, m_add_639).
method_invoc(xyseries_1_expr60, m_add_2542, line(xyseries_1, 412)).
argument(xyseries_1_expr61, 1, xyseries_1_expr60).
argument(xyseries_1_expr62, 2, xyseries_1_expr60).
argument(xyseries_1_literal4, 3, xyseries_1_expr60).
method_invoc(xyseries_1_expr61, m_double_785, line(xyseries_1, 412)).
argument(p_x_4001, 1, xyseries_1_expr61).
method_invoc(xyseries_1_expr62, m_double_785, line(xyseries_1, 412)).
argument(p_y_4002, 1, xyseries_1_expr62).
param(p_x_4003, 1, m_add_2543).
param(p_y_4004, 2, m_add_2543).
param(p_notify_4005, 3, m_add_2543).
param(p_x_4006, 1, m_add_2544).
param(p_y_4007, 2, m_add_2544).
param(p_x_4008, 1, m_add_2545).
param(p_y_4009, 2, m_add_2545).
param(p_notify_4010, 3, m_add_2545).
param(p_x_4011, 1, m_add_2546).
param(p_y_4012, 2, m_add_2546).
param(p_x_4013, 1, m_add_2542).
param(p_y_4014, 2, m_add_2542).
param(p_notify_4015, 3, m_add_2542).
assign(v_item_4016, xyseries_1_expr63, line(xyseries_1, 490)).
method_invoc(xyseries_1_expr63, m_xydata_item_2509, line(xyseries_1, 490)).
argument(p_x_4013, 1, xyseries_1_expr63).
argument(p_y_4014, 2, xyseries_1_expr63).
method_invoc(xyseries_1_expr64, m_add_2547, line(xyseries_1, 491)).
argument(v_item_4016, 1, xyseries_1_expr64).
argument(p_notify_4015, 2, xyseries_1_expr64).
param(p_item_4017, 1, m_add_2547).
param(p_notify_4018, 2, m_add_2547).
assign(p_item_4017, xyseries_1_expr67, line(xyseries_1, 507)).
assign(xyseries_1_expr67, xyseries_1_expr68, line(xyseries_1, 507)).
method_invoc(xyseries_1_expr68, m_clone_2520, line(xyseries_1, 507)).
ref(p_item_4017, xyseries_1_expr68, line(xyseries_1, 507)).
assign(v_index_4019, xyseries_1_expr71, line(xyseries_1, 509)).
method_invoc(xyseries_1_expr71, m_binary_search_2548, line(xyseries_1, 509)).
argument(f_data_3988, 1, xyseries_1_expr71).
argument(p_item_4017, 2, xyseries_1_expr71).
ref(t_collections_19, xyseries_1_expr71, line(xyseries_1, 509)).
method_invoc(xyseries_1_expr75, m_add_2549, line(xyseries_1, 511)).
argument(xyseries_1_expr76, 1, xyseries_1_expr75).
argument(p_item_4017, 2, xyseries_1_expr75).
ref(f_data_3988, xyseries_1_expr75, line(xyseries_1, 511)).
method_invoc(xyseries_1_expr80, m_update_bounds_for_added_item_2530, line(xyseries_1, 544)).
argument(p_item_4017, 1, xyseries_1_expr80).
method_invoc(xyseries_1_expr82, m_get_item_count_2537, line(xyseries_1, 545)).
method_invoc(xyseries_1_expr85, m_fire_series_changed_2221, line(xyseries_1, 550)).
param(p_start_4020, 1, m_delete_2550).
param(p_end_4021, 2, m_delete_2550).
param(p_index_4022, 1, m_remove_2551).
param(p_x_4023, 1, m_remove_2552).
param(p_index_4024, 1, m_get_data_item_2554).
param(p_index_4025, 1, m_get_raw_data_item_2555).
param(p_index_4026, 1, m_get_x_2556).
param(p_index_4027, 1, m_get_y_2557).
param(p_index_4028, 1, m_update_by_index_2558).
param(p_y_4029, 2, m_update_by_index_2558).
param(p_a_4030, 1, m_min_ignore_na_n_2531).
param(p_b_4031, 2, m_min_ignore_na_n_2531).
method_invoc(xyseries_1_expr86, m_is_na_n_2417, line(xyseries_1, 699)).
argument(p_a_4030, 1, xyseries_1_expr86).
ref(t_double_42, xyseries_1_expr86, line(xyseries_1, 699)).
return(p_b_4031, m_min_ignore_na_n_2531, line(xyseries_1, 700)).
method_invoc(xyseries_1_expr87, m_is_na_n_2417, line(xyseries_1, 703)).
argument(p_b_4031, 1, xyseries_1_expr87).
ref(t_double_42, xyseries_1_expr87, line(xyseries_1, 703)).
return(xyseries_1_expr88, m_min_ignore_na_n_2531, line(xyseries_1, 707)).
method_invoc(xyseries_1_expr88, m_min_495, line(xyseries_1, 707)).
argument(p_a_4030, 1, xyseries_1_expr88).
argument(p_b_4031, 2, xyseries_1_expr88).
ref(t_math_18, xyseries_1_expr88, line(xyseries_1, 707)).
param(p_a_4032, 1, m_max_ignore_na_n_2532).
param(p_b_4033, 2, m_max_ignore_na_n_2532).
method_invoc(xyseries_1_expr89, m_is_na_n_2417, line(xyseries_1, 722)).
argument(p_a_4032, 1, xyseries_1_expr89).
ref(t_double_42, xyseries_1_expr89, line(xyseries_1, 722)).
return(p_b_4033, m_max_ignore_na_n_2532, line(xyseries_1, 723)).
method_invoc(xyseries_1_expr90, m_is_na_n_2417, line(xyseries_1, 726)).
argument(p_b_4033, 1, xyseries_1_expr90).
ref(t_double_42, xyseries_1_expr90, line(xyseries_1, 726)).
return(xyseries_1_expr91, m_max_ignore_na_n_2532, line(xyseries_1, 730)).
method_invoc(xyseries_1_expr91, m_max_496, line(xyseries_1, 730)).
argument(p_a_4032, 1, xyseries_1_expr91).
argument(p_b_4033, 2, xyseries_1_expr91).
ref(t_math_18, xyseries_1_expr91, line(xyseries_1, 730)).
param(p_x_4034, 1, m_update_2559).
param(p_y_4035, 2, m_update_2559).
param(p_x_4036, 1, m_add_or_update_2560).
param(p_y_4037, 2, m_add_or_update_2560).
param(p_x_4038, 1, m_add_or_update_2561).
param(p_y_4039, 2, m_add_or_update_2561).
param(p_item_4040, 1, m_add_or_update_2562).
param(p_x_4041, 1, m_index_of_2563).
throw(m_clone_2565, clone_not_supported_exception).
param(p_start_4042, 1, m_create_copy_2566).
param(p_end_4043, 2, m_create_copy_2566).
throw(m_create_copy_2566, clone_not_supported_exception).
param(p_obj_4044, 1, m_equals_2567).

%dataset_rendering_order_1 - org.jfree.chart.plot.DatasetRenderingOrder
assign(f_forward_1431, dataset_rendering_order_1_expr1, line(dataset_rendering_order_1, 62)).
assign(f_reverse_1432, dataset_rendering_order_1_expr2, line(dataset_rendering_order_1, 69)).
param(p_name_1433, 1, m_dataset_rendering_order_922).
assign(f_name_1434, p_name_1433, line(dataset_rendering_order_1, 81)).
param(p_obj_1435, 1, m_equals_924).
throw(m_read_resolve_926, object_stream_exception).

%jfree_chart_tests_1 - org.jfree.chart.junit.JFreeChartTests
return(jfree_chart_tests_1_expr1, m_suite_780, line(jfree_chart_tests_1, 100)).
method_invoc(jfree_chart_tests_1_expr1, m_test_suite_627, line(jfree_chart_tests_1, 100)).
argument(jfree_chart_tests_1_expr2, 1, jfree_chart_tests_1_expr1).
param(p_name_1268, 1, m_jfree_chart_tests_781).
method_invoc(jfree_chart_tests_1_expr3, m_test_case_629, line(jfree_chart_tests_1, 109)).
argument(p_name_1268, 1, jfree_chart_tests_1_expr3).
assign(v_data_1269, jfree_chart_tests_1_expr4, line(jfree_chart_tests_1, 118)).
method_invoc(jfree_chart_tests_1_expr4, m_default_pie_dataset_783, line(jfree_chart_tests_1, 118)).
method_invoc(jfree_chart_tests_1_expr5, m_set_value_784, line(jfree_chart_tests_1, 119)).
argument(jfree_chart_tests_1_literal1, 1, jfree_chart_tests_1_expr5).
argument(jfree_chart_tests_1_expr6, 2, jfree_chart_tests_1_expr5).
ref(v_data_1269, jfree_chart_tests_1_expr5, line(jfree_chart_tests_1, 119)).
method_invoc(jfree_chart_tests_1_expr6, m_double_785, line(jfree_chart_tests_1, 119)).
argument(jfree_chart_tests_1_literal2, 1, jfree_chart_tests_1_expr6).
method_invoc(jfree_chart_tests_1_expr7, m_set_value_784, line(jfree_chart_tests_1, 120)).
argument(jfree_chart_tests_1_literal3, 1, jfree_chart_tests_1_expr7).
argument(jfree_chart_tests_1_expr8, 2, jfree_chart_tests_1_expr7).
ref(v_data_1269, jfree_chart_tests_1_expr7, line(jfree_chart_tests_1, 120)).
method_invoc(jfree_chart_tests_1_expr8, m_double_785, line(jfree_chart_tests_1, 120)).
argument(jfree_chart_tests_1_literal4, 1, jfree_chart_tests_1_expr8).
method_invoc(jfree_chart_tests_1_expr9, m_set_value_784, line(jfree_chart_tests_1, 121)).
argument(jfree_chart_tests_1_literal5, 1, jfree_chart_tests_1_expr9).
argument(jfree_chart_tests_1_expr10, 2, jfree_chart_tests_1_expr9).
ref(v_data_1269, jfree_chart_tests_1_expr9, line(jfree_chart_tests_1, 121)).
method_invoc(jfree_chart_tests_1_expr10, m_double_785, line(jfree_chart_tests_1, 121)).
argument(jfree_chart_tests_1_literal6, 1, jfree_chart_tests_1_expr10).
assign(f_pie_chart_1270, jfree_chart_tests_1_expr13, line(jfree_chart_tests_1, 124)).
method_invoc(jfree_chart_tests_1_expr13, m_create_pie_chart_8, line(jfree_chart_tests_1, 124)).
argument(jfree_chart_tests_1_literal7, 1, jfree_chart_tests_1_expr13).
argument(v_data_1269, 2, jfree_chart_tests_1_expr13).
argument(jfree_chart_tests_1_literal8, 3, jfree_chart_tests_1_expr13).
argument(jfree_chart_tests_1_literal9, 4, jfree_chart_tests_1_expr13).
argument(jfree_chart_tests_1_literal10, 5, jfree_chart_tests_1_expr13).
ref(t_chart_factory_20, jfree_chart_tests_1_expr13, line(jfree_chart_tests_1, 124)).
assign(v_t_1271, jfree_chart_tests_1_expr15, line(jfree_chart_tests_1, 440)).
method_invoc(jfree_chart_tests_1_expr15, m_day_794, line(jfree_chart_tests_1, 440)).
assign(v_series_1272, jfree_chart_tests_1_expr16, line(jfree_chart_tests_1, 441)).
method_invoc(jfree_chart_tests_1_expr16, m_time_series_795, line(jfree_chart_tests_1, 441)).
argument(jfree_chart_tests_1_literal11, 1, jfree_chart_tests_1_expr16).
method_invoc(jfree_chart_tests_1_expr17, m_add_796, line(jfree_chart_tests_1, 442)).
argument(v_t_1271, 1, jfree_chart_tests_1_expr17).
argument(jfree_chart_tests_1_literal12, 2, jfree_chart_tests_1_expr17).
ref(v_series_1272, jfree_chart_tests_1_expr17, line(jfree_chart_tests_1, 442)).
assign(v_t_1271, jfree_chart_tests_1_expr19, line(jfree_chart_tests_1, 443)).
method_invoc(jfree_chart_tests_1_expr19, m_next_797, line(jfree_chart_tests_1, 443)).
ref(v_t_1271, jfree_chart_tests_1_expr19, line(jfree_chart_tests_1, 443)).
method_invoc(jfree_chart_tests_1_expr20, m_add_796, line(jfree_chart_tests_1, 444)).
argument(v_t_1271, 1, jfree_chart_tests_1_expr20).
argument(jfree_chart_tests_1_literal13, 2, jfree_chart_tests_1_expr20).
ref(v_series_1272, jfree_chart_tests_1_expr20, line(jfree_chart_tests_1, 444)).
assign(v_dataset_1273, jfree_chart_tests_1_expr21, line(jfree_chart_tests_1, 445)).
method_invoc(jfree_chart_tests_1_expr21, m_time_series_collection_798, line(jfree_chart_tests_1, 445)).
method_invoc(jfree_chart_tests_1_expr22, m_add_series_799, line(jfree_chart_tests_1, 446)).
argument(v_series_1272, 1, jfree_chart_tests_1_expr22).
ref(v_dataset_1273, jfree_chart_tests_1_expr22, line(jfree_chart_tests_1, 446)).
assign(v_c_1_1274, jfree_chart_tests_1_expr23, line(jfree_chart_tests_1, 448)).
method_invoc(jfree_chart_tests_1_expr23, m_create_time_series_chart_55, line(jfree_chart_tests_1, 448)).
argument(jfree_chart_tests_1_literal14, 1, jfree_chart_tests_1_expr23).
argument(jfree_chart_tests_1_literal15, 2, jfree_chart_tests_1_expr23).
argument(jfree_chart_tests_1_literal16, 3, jfree_chart_tests_1_expr23).
argument(v_dataset_1273, 4, jfree_chart_tests_1_expr23).
argument(jfree_chart_tests_1_literal17, 5, jfree_chart_tests_1_expr23).
argument(jfree_chart_tests_1_literal18, 6, jfree_chart_tests_1_expr23).
argument(jfree_chart_tests_1_literal19, 7, jfree_chart_tests_1_expr23).
ref(t_chart_factory_20, jfree_chart_tests_1_expr23, line(jfree_chart_tests_1, 448)).
param(p_event_1275, 1, m_chart_changed_804).

%date_range_1 - org.jfree.data.time.DateRange
method_invoc(date_range_1_expr1, m_date_range_2230, line(date_range_1, 72)).
argument(date_range_1_expr2, 1, date_range_1_expr1).
argument(date_range_1_expr3, 2, date_range_1_expr1).
method_invoc(date_range_1_expr2, m_date_2231, line(date_range_1, 72)).
argument(date_range_1_literal1, 1, date_range_1_expr2).
method_invoc(date_range_1_expr3, m_date_2231, line(date_range_1, 72)).
argument(date_range_1_literal2, 1, date_range_1_expr3).
param(p_lower_3602, 1, m_date_range_2230).
param(p_upper_3603, 2, m_date_range_2230).
method_invoc(date_range_1_expr4, m_range_501, line(date_range_1, 82)).
argument(date_range_1_expr5, 1, date_range_1_expr4).
argument(date_range_1_expr6, 2, date_range_1_expr4).
method_invoc(date_range_1_expr5, m_get_time_2232, line(date_range_1, 82)).
ref(p_lower_3602, date_range_1_expr5, line(date_range_1, 82)).
method_invoc(date_range_1_expr6, m_get_time_2232, line(date_range_1, 82)).
ref(p_upper_3603, date_range_1_expr6, line(date_range_1, 82)).
assign(f_lower_date_3604, date_range_1_expr9, line(date_range_1, 83)).
method_invoc(date_range_1_expr9, m_get_time_2232, line(date_range_1, 83)).
ref(p_lower_3602, date_range_1_expr9, line(date_range_1, 83)).
assign(f_upper_date_3605, date_range_1_expr13, line(date_range_1, 84)).
method_invoc(date_range_1_expr13, m_get_time_2232, line(date_range_1, 84)).
ref(p_upper_3603, date_range_1_expr13, line(date_range_1, 84)).
param(p_lower_3606, 1, m_date_range_2233).
param(p_upper_3607, 2, m_date_range_2233).
param(p_other_3608, 1, m_date_range_2234).

%abstract_pie_label_distributor_1 - org.jfree.chart.plot.AbstractPieLabelDistributor
assign(f_labels_1426, abstract_pie_label_distributor_1_expr3, line(abstract_pie_label_distributor_1, 61)).
method_invoc(abstract_pie_label_distributor_1_expr3, m_array_list_75, line(abstract_pie_label_distributor_1, 61)).
param(p_index_1427, 1, m_get_pie_label_record_917).
param(p_record_1428, 1, m_add_pie_label_record_918).
param(p_min_y_1429, 1, m_distribute_labels_921).
param(p_height_1430, 2, m_distribute_labels_921).

%text_title_1 - org.jfree.chart.title.TextTitle
assign(f_default_font_3045, text_title_1_expr1, line(text_title_1, 133)).
method_invoc(text_title_1_expr1, m_font_68, line(text_title_1, 133)).
argument(text_title_1_literal1, 1, text_title_1_expr1).
argument(q_bold_61, 2, text_title_1_expr1).
argument(text_title_1_literal2, 3, text_title_1_expr1).
ref(t_font_3, q_bold_61, line(text_title_1, 133)).
assign(f_default_text_paint_3046, q_black_61, line(text_title_1, 137)).
ref(t_color_4, q_black_61, line(text_title_1, 137)).
assign(f_expand_to_fit_space_3047, text_title_1_literal3, line(text_title_1, 167)).
assign(f_maximum_lines_to_display_3048, q_max_value_61, line(text_title_1, 174)).
ref(t_integer_36, q_max_value_61, line(text_title_1, 174)).
param(p_text_3049, 1, m_text_title_1841).
param(p_text_3050, 1, m_text_title_84).
param(p_font_3051, 2, m_text_title_84).
method_invoc(text_title_1_expr2, m_text_title_1842, line(text_title_1, 201)).
argument(p_text_3050, 1, text_title_1_expr2).
argument(p_font_3051, 2, text_title_1_expr2).
argument(q_default_text_paint_62, 3, text_title_1_expr2).
argument(q_default_position_63, 4, text_title_1_expr2).
argument(q_default_horizontal_alignment_64, 5, text_title_1_expr2).
argument(q_default_vertical_alignment_65, 6, text_title_1_expr2).
argument(q_default_padding_66, 7, text_title_1_expr2).
ref(t_text_title_37, q_default_text_paint_62, line(text_title_1, 201)).
ref(t_title_38, q_default_position_63, line(text_title_1, 201)).
param(p_text_3053, 1, m_text_title_1842).
param(p_font_3054, 2, m_text_title_1842).
param(p_paint_3055, 3, m_text_title_1842).
param(p_position_3056, 4, m_text_title_1842).
param(p_horizontal_alignment_3057, 5, m_text_title_1842).
param(p_vertical_alignment_3058, 6, m_text_title_1842).
param(p_padding_3059, 7, m_text_title_1842).
method_invoc(text_title_1_expr3, m_title_1843, line(text_title_1, 225)).
argument(p_position_3056, 1, text_title_1_expr3).
argument(p_horizontal_alignment_3057, 2, text_title_1_expr3).
argument(p_vertical_alignment_3058, 3, text_title_1_expr3).
argument(p_padding_3059, 4, text_title_1_expr3).
assign(f_text_3060, p_text_3053, line(text_title_1, 236)).
assign(f_font_3061, p_font_3054, line(text_title_1, 237)).
assign(f_paint_3062, p_paint_3055, line(text_title_1, 238)).
assign(f_text_alignment_3063, p_horizontal_alignment_3057, line(text_title_1, 242)).
assign(f_background_paint_3064, text_title_1_literal7, line(text_title_1, 243)).
assign(f_content_3065, text_title_1_literal8, line(text_title_1, 244)).
assign(f_tool_tip_text_3066, text_title_1_literal9, line(text_title_1, 245)).
assign(f_url_text_3067, text_title_1_literal10, line(text_title_1, 246)).
param(p_text_3068, 1, m_set_text_1845).
param(p_alignment_3069, 1, m_set_text_alignment_1847).
param(p_font_3070, 1, m_set_font_230).
method_invoc(text_title_1_expr33, m_equals_305, line(text_title_1, 326)).
argument(p_font_3070, 1, text_title_1_expr33).
ref(f_font_3061, text_title_1_expr33, line(text_title_1, 326)).
assign(f_font_3061, p_font_3070, line(text_title_1, 327)).
method_invoc(text_title_1_expr39, m_notify_listeners_1817, line(text_title_1, 328)).
argument(text_title_1_expr40, 1, text_title_1_expr39).
method_invoc(text_title_1_expr40, m_title_change_event_778, line(text_title_1, 328)).
argument(text_title_1_expr41, 1, text_title_1_expr40).
param(p_paint_3071, 1, m_set_paint_231).
method_invoc(text_title_1_expr44, m_equals_122, line(text_title_1, 355)).
argument(p_paint_3071, 1, text_title_1_expr44).
ref(f_paint_3062, text_title_1_expr44, line(text_title_1, 355)).
param(p_paint_3072, 1, m_set_background_paint_1851).
param(p_text_3073, 1, m_set_tool_tip_text_1853).
param(p_text_3074, 1, m_set_urltext_1855).
param(p_expand_3075, 1, m_set_expand_to_fit_space_1857).
param(p_max_3076, 1, m_set_maximum_lines_to_display_1859).
param(p_g_2_3077, 1, m_arrange_1860).
param(p_constraint_3078, 2, m_arrange_1860).
param(p_g_2_3079, 1, m_arrange_nn_1861).
param(p_g_2_3080, 1, m_arrange_fn_1862).
param(p_w_3081, 2, m_arrange_fn_1862).
param(p_g_2_3082, 1, m_arrange_rn_1863).
param(p_width_range_3083, 2, m_arrange_rn_1863).
param(p_g_2_3084, 1, m_arrange_rr_1864).
param(p_width_range_3085, 2, m_arrange_rr_1864).
param(p_height_range_3086, 3, m_arrange_rr_1864).
param(p_g_2_3087, 1, m_draw_1865).
param(p_area_3088, 2, m_draw_1865).
param(p_g_2_3089, 1, m_draw_1866).
param(p_area_3090, 2, m_draw_1866).
param(p_params_3091, 3, m_draw_1866).
param(p_g_2_3092, 1, m_draw_horizontal_1867).
param(p_area_3093, 2, m_draw_horizontal_1867).
param(p_g_2_3094, 1, m_draw_vertical_1868).
param(p_area_3095, 2, m_draw_vertical_1868).
param(p_obj_3096, 1, m_equals_1869).
throw(m_clone_1871, clone_not_supported_exception).
param(p_stream_3097, 1, m_write_object_1872).
throw(m_write_object_1872, ioexception).
param(p_stream_3098, 1, m_read_object_1873).
throw(m_read_object_1873, ioexception).
throw(m_read_object_1873, class_not_found_exception).

%chart_change_event_type_1 - org.jfree.chart.event.ChartChangeEventType
assign(f_general_1244, chart_change_event_type_1_expr1, line(chart_change_event_type_1, 55)).
assign(f_new_dataset_1254, chart_change_event_type_1_expr2, line(chart_change_event_type_1, 59)).
assign(f_dataset_updated_1255, chart_change_event_type_1_expr3, line(chart_change_event_type_1, 63)).
param(p_name_1256, 1, m_chart_change_event_type_767).
assign(f_name_1257, p_name_1256, line(chart_change_event_type_1, 75)).
param(p_obj_1258, 1, m_equals_769).
throw(m_read_resolve_771, object_stream_exception).

%xyplot_1 - org.jfree.chart.plot.XYPlot
assign(f_default_gridline_stroke_1785, xyplot_1_expr1, line(xyplot_1, 321)).
method_invoc(xyplot_1_expr1, m_basic_stroke_1156, line(xyplot_1, 321)).
argument(xyplot_1_literal1, 1, xyplot_1_expr1).
argument(q_cap_butt_47, 2, xyplot_1_expr1).
argument(q_join_bevel_48, 3, xyplot_1_expr1).
argument(xyplot_1_literal2, 4, xyplot_1_expr1).
argument(xyplot_1_expr2, 5, xyplot_1_expr1).
argument(xyplot_1_literal3, 6, xyplot_1_expr1).
assign(f_default_gridline_paint_1786, q_white_49, line(xyplot_1, 326)).
ref(t_color_4, q_white_49, line(xyplot_1, 326)).
assign(f_default_crosshair_stroke_1787, f_default_gridline_stroke_1785, line(xyplot_1, 332)).
assign(f_default_crosshair_paint_1788, q_blue_49, line(xyplot_1, 336)).
ref(t_color_4, q_blue_49, line(xyplot_1, 336)).
assign(f_localization_resources_1789, xyplot_1_expr3, line(xyplot_1, 339)).
assign(f_quadrant_origin_1790, xyplot_1_expr4, line(xyplot_1, 388)).
method_invoc(xyplot_1_expr4, m_double_1157, line(xyplot_1, 388)).
argument(xyplot_1_literal4, 1, xyplot_1_expr4).
argument(xyplot_1_literal5, 2, xyplot_1_expr4).
assign(f_quadrant_paint_1791, xyplot_1_expr5, line(xyplot_1, 391)).
assign(f_domain_crosshair_locked_on_data_1792, xyplot_1_literal6, line(xyplot_1, 504)).
assign(f_range_crosshair_locked_on_data_1793, xyplot_1_literal7, line(xyplot_1, 522)).
assign(f_dataset_rendering_order_1794, q_reverse_49, line(xyplot_1, 559)).
assign(f_series_rendering_order_1795, q_reverse_50, line(xyplot_1, 566)).
param(p_dataset_1796, 1, m_xyplot_40).
param(p_domain_axis_1797, 2, m_xyplot_40).
param(p_range_axis_1798, 3, m_xyplot_40).
param(p_renderer_1799, 4, m_xyplot_40).
method_invoc(xyplot_1_expr6, m_plot_963, line(xyplot_1, 621)).
assign(f_orientation_1800, q_vertical_51, line(xyplot_1, 623)).
ref(t_plot_orientation_30, q_vertical_51, line(xyplot_1, 623)).
assign(f_weight_1801, xyplot_1_literal8, line(xyplot_1, 624)).
assign(f_axis_offset_1802, xyplot_1_expr15, line(xyplot_1, 625)).
method_invoc(xyplot_1_expr15, m_rectangle_insets_13, line(xyplot_1, 625)).
argument(xyplot_1_literal9, 1, xyplot_1_expr15).
argument(xyplot_1_literal10, 2, xyplot_1_expr15).
argument(xyplot_1_literal11, 3, xyplot_1_expr15).
argument(xyplot_1_literal12, 4, xyplot_1_expr15).
assign(f_domain_axes_1803, xyplot_1_expr19, line(xyplot_1, 628)).
method_invoc(xyplot_1_expr19, m_object_list_887, line(xyplot_1, 628)).
assign(f_domain_axis_locations_1804, xyplot_1_expr23, line(xyplot_1, 629)).
method_invoc(xyplot_1_expr23, m_object_list_887, line(xyplot_1, 629)).
assign(f_foreground_domain_markers_1805, xyplot_1_expr27, line(xyplot_1, 630)).
method_invoc(xyplot_1_expr27, m_hash_map_1159, line(xyplot_1, 630)).
assign(f_background_domain_markers_1806, xyplot_1_expr31, line(xyplot_1, 631)).
method_invoc(xyplot_1_expr31, m_hash_map_1159, line(xyplot_1, 631)).
assign(f_range_axes_1807, xyplot_1_expr35, line(xyplot_1, 633)).
method_invoc(xyplot_1_expr35, m_object_list_887, line(xyplot_1, 633)).
assign(f_range_axis_locations_1808, xyplot_1_expr39, line(xyplot_1, 634)).
method_invoc(xyplot_1_expr39, m_object_list_887, line(xyplot_1, 634)).
assign(f_foreground_range_markers_1809, xyplot_1_expr43, line(xyplot_1, 635)).
method_invoc(xyplot_1_expr43, m_hash_map_1159, line(xyplot_1, 635)).
assign(f_background_range_markers_1810, xyplot_1_expr47, line(xyplot_1, 636)).
method_invoc(xyplot_1_expr47, m_hash_map_1159, line(xyplot_1, 636)).
assign(f_datasets_1811, xyplot_1_expr51, line(xyplot_1, 638)).
method_invoc(xyplot_1_expr51, m_object_list_887, line(xyplot_1, 638)).
assign(f_renderers_1812, xyplot_1_expr55, line(xyplot_1, 639)).
method_invoc(xyplot_1_expr55, m_object_list_887, line(xyplot_1, 639)).
assign(f_dataset_to_domain_axes_map_1813, xyplot_1_expr59, line(xyplot_1, 641)).
method_invoc(xyplot_1_expr59, m_tree_map_967, line(xyplot_1, 641)).
assign(f_dataset_to_range_axes_map_1814, xyplot_1_expr63, line(xyplot_1, 642)).
method_invoc(xyplot_1_expr63, m_tree_map_967, line(xyplot_1, 642)).
assign(f_annotations_1815, xyplot_1_expr67, line(xyplot_1, 644)).
method_invoc(xyplot_1_expr67, m_array_list_75, line(xyplot_1, 644)).
method_invoc(xyplot_1_expr69, m_set_1160, line(xyplot_1, 646)).
argument(xyplot_1_literal13, 1, xyplot_1_expr69).
argument(p_dataset_1796, 2, xyplot_1_expr69).
ref(f_datasets_1811, xyplot_1_expr69, line(xyplot_1, 646)).
method_invoc(xyplot_1_expr73, m_add_change_listener_964, line(xyplot_1, 648)).
argument(xyplot_1_expr74, 1, xyplot_1_expr73).
ref(p_dataset_1796, xyplot_1_expr73, line(xyplot_1, 648)).
method_invoc(xyplot_1_expr75, m_set_1160, line(xyplot_1, 651)).
argument(xyplot_1_literal15, 1, xyplot_1_expr75).
argument(p_renderer_1799, 2, xyplot_1_expr75).
ref(f_renderers_1812, xyplot_1_expr75, line(xyplot_1, 651)).
method_invoc(xyplot_1_expr79, m_set_plot_1161, line(xyplot_1, 653)).
argument(xyplot_1_expr80, 1, xyplot_1_expr79).
ref(p_renderer_1799, xyplot_1_expr79, line(xyplot_1, 653)).
method_invoc(xyplot_1_expr81, m_add_change_listener_1162, line(xyplot_1, 654)).
argument(xyplot_1_expr82, 1, xyplot_1_expr81).
ref(p_renderer_1799, xyplot_1_expr81, line(xyplot_1, 654)).
method_invoc(xyplot_1_expr83, m_set_1160, line(xyplot_1, 657)).
argument(xyplot_1_literal17, 1, xyplot_1_expr83).
argument(p_domain_axis_1797, 2, xyplot_1_expr83).
ref(f_domain_axes_1803, xyplot_1_expr83, line(xyplot_1, 657)).
method_invoc(xyplot_1_expr86, m_map_dataset_to_domain_axis_1163, line(xyplot_1, 658)).
argument(xyplot_1_literal18, 1, xyplot_1_expr86).
argument(xyplot_1_literal19, 2, xyplot_1_expr86).
ref(xyplot_1_expr87, xyplot_1_expr86, line(xyplot_1, 658)).
method_invoc(xyplot_1_expr89, m_set_plot_346, line(xyplot_1, 660)).
argument(xyplot_1_expr90, 1, xyplot_1_expr89).
ref(p_domain_axis_1797, xyplot_1_expr89, line(xyplot_1, 660)).
method_invoc(xyplot_1_expr91, m_add_change_listener_354, line(xyplot_1, 661)).
argument(xyplot_1_expr92, 1, xyplot_1_expr91).
ref(p_domain_axis_1797, xyplot_1_expr91, line(xyplot_1, 661)).
method_invoc(xyplot_1_expr93, m_set_1160, line(xyplot_1, 663)).
argument(xyplot_1_literal21, 1, xyplot_1_expr93).
argument(q_bottom_or_left_51, 2, xyplot_1_expr93).
ref(f_domain_axis_locations_1804, xyplot_1_expr93, line(xyplot_1, 663)).
ref(t_axis_location_31, q_bottom_or_left_51, line(xyplot_1, 663)).
method_invoc(xyplot_1_expr96, m_set_1160, line(xyplot_1, 665)).
argument(xyplot_1_literal22, 1, xyplot_1_expr96).
argument(p_range_axis_1798, 2, xyplot_1_expr96).
ref(f_range_axes_1807, xyplot_1_expr96, line(xyplot_1, 665)).
method_invoc(xyplot_1_expr99, m_map_dataset_to_range_axis_1164, line(xyplot_1, 666)).
argument(xyplot_1_literal23, 1, xyplot_1_expr99).
argument(xyplot_1_literal24, 2, xyplot_1_expr99).
ref(xyplot_1_expr100, xyplot_1_expr99, line(xyplot_1, 666)).
method_invoc(xyplot_1_expr102, m_set_plot_346, line(xyplot_1, 668)).
argument(xyplot_1_expr103, 1, xyplot_1_expr102).
ref(p_range_axis_1798, xyplot_1_expr102, line(xyplot_1, 668)).
method_invoc(xyplot_1_expr104, m_add_change_listener_354, line(xyplot_1, 669)).
argument(xyplot_1_expr105, 1, xyplot_1_expr104).
ref(p_range_axis_1798, xyplot_1_expr104, line(xyplot_1, 669)).
method_invoc(xyplot_1_expr106, m_set_1160, line(xyplot_1, 671)).
argument(xyplot_1_literal26, 1, xyplot_1_expr106).
argument(q_bottom_or_left_52, 2, xyplot_1_expr106).
ref(f_range_axis_locations_1808, xyplot_1_expr106, line(xyplot_1, 671)).
ref(t_axis_location_31, q_bottom_or_left_52, line(xyplot_1, 671)).
method_invoc(xyplot_1_expr109, m_configure_domain_axes_1165, line(xyplot_1, 673)).
method_invoc(xyplot_1_expr110, m_configure_range_axes_1166, line(xyplot_1, 674)).
assign(f_domain_gridlines_visible_1816, xyplot_1_literal27, line(xyplot_1, 676)).
assign(f_domain_gridline_stroke_1817, f_default_gridline_stroke_1785, line(xyplot_1, 677)).
assign(f_domain_gridline_paint_1818, f_default_gridline_paint_1786, line(xyplot_1, 678)).
assign(f_domain_minor_gridlines_visible_1819, xyplot_1_literal28, line(xyplot_1, 680)).
assign(f_domain_minor_gridline_stroke_1820, f_default_gridline_stroke_1785, line(xyplot_1, 681)).
assign(f_domain_minor_gridline_paint_1821, q_white_52, line(xyplot_1, 682)).
ref(t_color_4, q_white_52, line(xyplot_1, 682)).
assign(f_domain_zero_baseline_visible_1822, xyplot_1_literal29, line(xyplot_1, 684)).
assign(f_domain_zero_baseline_paint_1823, q_black_52, line(xyplot_1, 685)).
ref(t_color_4, q_black_52, line(xyplot_1, 685)).
assign(f_domain_zero_baseline_stroke_1824, xyplot_1_expr137, line(xyplot_1, 686)).
method_invoc(xyplot_1_expr137, m_basic_stroke_73, line(xyplot_1, 686)).
argument(xyplot_1_literal30, 1, xyplot_1_expr137).
assign(f_range_gridlines_visible_1825, xyplot_1_literal31, line(xyplot_1, 688)).
assign(f_range_gridline_stroke_1826, f_default_gridline_stroke_1785, line(xyplot_1, 689)).
assign(f_range_gridline_paint_1827, f_default_gridline_paint_1786, line(xyplot_1, 690)).
assign(f_range_minor_gridlines_visible_1828, xyplot_1_literal32, line(xyplot_1, 692)).
assign(f_range_minor_gridline_stroke_1829, f_default_gridline_stroke_1785, line(xyplot_1, 693)).
assign(f_range_minor_gridline_paint_1830, q_white_52, line(xyplot_1, 694)).
ref(t_color_4, q_white_52, line(xyplot_1, 694)).
assign(f_range_zero_baseline_visible_1831, xyplot_1_literal33, line(xyplot_1, 696)).
assign(f_range_zero_baseline_paint_1832, q_black_52, line(xyplot_1, 697)).
ref(t_color_4, q_black_52, line(xyplot_1, 697)).
assign(f_range_zero_baseline_stroke_1833, xyplot_1_expr165, line(xyplot_1, 698)).
method_invoc(xyplot_1_expr165, m_basic_stroke_73, line(xyplot_1, 698)).
argument(xyplot_1_literal34, 1, xyplot_1_expr165).
assign(f_domain_crosshair_visible_1834, xyplot_1_literal35, line(xyplot_1, 700)).
assign(f_domain_crosshair_value_1835, xyplot_1_literal36, line(xyplot_1, 701)).
assign(f_domain_crosshair_stroke_1836, f_default_crosshair_stroke_1787, line(xyplot_1, 702)).
assign(f_domain_crosshair_paint_1837, f_default_crosshair_paint_1788, line(xyplot_1, 703)).
assign(f_range_crosshair_visible_1838, xyplot_1_literal37, line(xyplot_1, 705)).
assign(f_range_crosshair_value_1839, xyplot_1_literal38, line(xyplot_1, 706)).
assign(f_range_crosshair_stroke_1840, f_default_crosshair_stroke_1787, line(xyplot_1, 707)).
assign(f_range_crosshair_paint_1841, f_default_crosshair_paint_1788, line(xyplot_1, 708)).
param(p_orientation_1842, 1, m_set_orientation_46).
param(p_offset_1843, 1, m_set_axis_offset_256).
assign(f_axis_offset_1802, p_offset_1843, line(xyplot_1, 773)).
method_invoc(xyplot_1_expr199, m_fire_change_event_1023, line(xyplot_1, 774)).
param(p_index_1844, 1, m_get_domain_axis_264).
assign(v_result_1845, xyplot_1_literal41, line(xyplot_1, 801)).
method_invoc(xyplot_1_expr201, m_size_1171, line(xyplot_1, 802)).
ref(f_domain_axes_1803, xyplot_1_expr201, line(xyplot_1, 802)).
assign(v_result_1845, xyplot_1_expr205, line(xyplot_1, 803)).
assign(xyplot_1_expr205, xyplot_1_expr206, line(xyplot_1, 803)).
method_invoc(xyplot_1_expr206, m_get_1172, line(xyplot_1, 803)).
argument(p_index_1844, 1, xyplot_1_expr206).
ref(f_domain_axes_1803, xyplot_1_expr206, line(xyplot_1, 803)).
return(v_result_1845, m_get_domain_axis_264, line(xyplot_1, 812)).
param(p_axis_1846, 1, m_set_domain_axis_1173).
param(p_index_1847, 1, m_set_domain_axis_1174).
param(p_axis_1848, 2, m_set_domain_axis_1174).
param(p_index_1849, 1, m_set_domain_axis_1175).
param(p_axis_1850, 2, m_set_domain_axis_1175).
param(p_notify_1851, 3, m_set_domain_axis_1175).
param(p_axes_1852, 1, m_set_domain_axes_1176).
param(p_location_1853, 1, m_set_domain_axis_location_1178).
param(p_location_1854, 1, m_set_domain_axis_location_1179).
param(p_notify_1855, 2, m_set_domain_axis_location_1179).
return(xyplot_1_expr210, m_get_domain_axis_count_263, line(xyplot_1, 945)).
method_invoc(xyplot_1_expr210, m_size_1171, line(xyplot_1, 945)).
ref(f_domain_axes_1803, xyplot_1_expr210, line(xyplot_1, 945)).
assign(v_i_1856, xyplot_1_literal43, line(xyplot_1, 969)).
method_invoc(xyplot_1_expr215, m_size_1171, line(xyplot_1, 969)).
ref(f_domain_axes_1803, xyplot_1_expr215, line(xyplot_1, 969)).
assign(v_axis_1857, xyplot_1_expr219, line(xyplot_1, 970)).
assign(xyplot_1_expr219, xyplot_1_expr220, line(xyplot_1, 970)).
method_invoc(xyplot_1_expr220, m_get_1172, line(xyplot_1, 970)).
argument(v_i_1856, 1, xyplot_1_expr220).
ref(f_domain_axes_1803, xyplot_1_expr220, line(xyplot_1, 970)).
method_invoc(xyplot_1_expr224, m_configure_347, line(xyplot_1, 972)).
ref(v_axis_1857, xyplot_1_expr224, line(xyplot_1, 972)).
param(p_index_1858, 1, m_get_domain_axis_location_1182).
param(p_index_1859, 1, m_set_domain_axis_location_1183).
param(p_location_1860, 2, m_set_domain_axis_location_1183).
param(p_index_1861, 1, m_set_domain_axis_location_1184).
param(p_location_1862, 2, m_set_domain_axis_location_1184).
param(p_notify_1863, 3, m_set_domain_axis_location_1184).
param(p_index_1864, 1, m_get_domain_axis_edge_1185).
param(p_axis_1865, 1, m_set_range_axis_1187).
param(p_location_1866, 1, m_set_range_axis_location_1189).
param(p_location_1867, 1, m_set_range_axis_location_1190).
param(p_notify_1868, 2, m_set_range_axis_location_1190).
param(p_index_1869, 1, m_get_range_axis_267).
assign(v_result_1870, xyplot_1_literal45, line(xyplot_1, 1165)).
method_invoc(xyplot_1_expr226, m_size_1171, line(xyplot_1, 1166)).
ref(f_range_axes_1807, xyplot_1_expr226, line(xyplot_1, 1166)).
assign(v_result_1870, xyplot_1_expr230, line(xyplot_1, 1167)).
assign(xyplot_1_expr230, xyplot_1_expr231, line(xyplot_1, 1167)).
method_invoc(xyplot_1_expr231, m_get_1172, line(xyplot_1, 1167)).
argument(p_index_1869, 1, xyplot_1_expr231).
ref(f_range_axes_1807, xyplot_1_expr231, line(xyplot_1, 1167)).
return(v_result_1870, m_get_range_axis_267, line(xyplot_1, 1176)).
param(p_index_1871, 1, m_set_range_axis_1192).
param(p_axis_1872, 2, m_set_range_axis_1192).
param(p_index_1873, 1, m_set_range_axis_1193).
param(p_axis_1874, 2, m_set_range_axis_1193).
param(p_notify_1875, 3, m_set_range_axis_1193).
param(p_axes_1876, 1, m_set_range_axes_1194).
return(xyplot_1_expr235, m_get_range_axis_count_266, line(xyplot_1, 1243)).
method_invoc(xyplot_1_expr235, m_size_1171, line(xyplot_1, 1243)).
ref(f_range_axes_1807, xyplot_1_expr235, line(xyplot_1, 1243)).
assign(v_i_1877, xyplot_1_literal47, line(xyplot_1, 1269)).
method_invoc(xyplot_1_expr240, m_size_1171, line(xyplot_1, 1269)).
ref(f_range_axes_1807, xyplot_1_expr240, line(xyplot_1, 1269)).
assign(v_axis_1878, xyplot_1_expr244, line(xyplot_1, 1270)).
assign(xyplot_1_expr244, xyplot_1_expr245, line(xyplot_1, 1270)).
method_invoc(xyplot_1_expr245, m_get_1172, line(xyplot_1, 1270)).
argument(v_i_1877, 1, xyplot_1_expr245).
ref(f_range_axes_1807, xyplot_1_expr245, line(xyplot_1, 1270)).
method_invoc(xyplot_1_expr249, m_configure_347, line(xyplot_1, 1272)).
ref(v_axis_1878, xyplot_1_expr249, line(xyplot_1, 1272)).
param(p_index_1879, 1, m_get_range_axis_location_1196).
param(p_index_1880, 1, m_set_range_axis_location_1197).
param(p_location_1881, 2, m_set_range_axis_location_1197).
param(p_index_1882, 1, m_set_range_axis_location_1198).
param(p_location_1883, 2, m_set_range_axis_location_1198).
param(p_notify_1884, 3, m_set_range_axis_location_1198).
param(p_index_1885, 1, m_get_range_axis_edge_1199).
param(p_index_1886, 1, m_get_dataset_1201).
assign(v_result_1887, xyplot_1_literal49, line(xyplot_1, 1382)).
method_invoc(xyplot_1_expr251, m_size_1171, line(xyplot_1, 1383)).
ref(f_datasets_1811, xyplot_1_expr251, line(xyplot_1, 1383)).
assign(v_result_1887, xyplot_1_expr255, line(xyplot_1, 1384)).
assign(xyplot_1_expr255, xyplot_1_expr256, line(xyplot_1, 1384)).
method_invoc(xyplot_1_expr256, m_get_1172, line(xyplot_1, 1384)).
argument(p_index_1886, 1, xyplot_1_expr256).
ref(f_datasets_1811, xyplot_1_expr256, line(xyplot_1, 1384)).
return(v_result_1887, m_get_dataset_1201, line(xyplot_1, 1386)).
param(p_dataset_1888, 1, m_set_dataset_1202).
param(p_index_1889, 1, m_set_dataset_1203).
param(p_dataset_1890, 2, m_set_dataset_1203).
return(xyplot_1_expr259, m_get_dataset_count_1204, line(xyplot_1, 1431)).
method_invoc(xyplot_1_expr259, m_size_1171, line(xyplot_1, 1431)).
ref(f_datasets_1811, xyplot_1_expr259, line(xyplot_1, 1431)).
param(p_dataset_1891, 1, m_index_of_1205).
param(p_index_1892, 1, m_map_dataset_to_domain_axis_1163).
param(p_axis_index_1893, 2, m_map_dataset_to_domain_axis_1163).
assign(v_axis_indices_1894, xyplot_1_expr262, line(xyplot_1, 1463)).
method_invoc(xyplot_1_expr262, m_array_list_1206, line(xyplot_1, 1463)).
argument(xyplot_1_literal50, 1, xyplot_1_expr262).
method_invoc(xyplot_1_expr263, m_add_82, line(xyplot_1, 1464)).
argument(xyplot_1_expr264, 1, xyplot_1_expr263).
ref(v_axis_indices_1894, xyplot_1_expr263, line(xyplot_1, 1464)).
method_invoc(xyplot_1_expr264, m_integer_1086, line(xyplot_1, 1464)).
argument(p_axis_index_1893, 1, xyplot_1_expr264).
method_invoc(xyplot_1_expr265, m_map_dataset_to_domain_axes_1207, line(xyplot_1, 1465)).
argument(p_index_1892, 1, xyplot_1_expr265).
argument(v_axis_indices_1894, 2, xyplot_1_expr265).
param(p_index_1895, 1, m_map_dataset_to_domain_axes_1207).
param(p_axis_indices_1896, 2, m_map_dataset_to_domain_axes_1207).
method_invoc(xyplot_1_expr267, m_check_axis_indices_1208, line(xyplot_1, 1482)).
argument(p_axis_indices_1896, 1, xyplot_1_expr267).
assign(v_key_1897, xyplot_1_expr268, line(xyplot_1, 1483)).
method_invoc(xyplot_1_expr268, m_integer_1086, line(xyplot_1, 1483)).
argument(p_index_1895, 1, xyplot_1_expr268).
method_invoc(xyplot_1_expr269, m_put_1209, line(xyplot_1, 1484)).
argument(v_key_1897, 1, xyplot_1_expr269).
argument(xyplot_1_expr270, 2, xyplot_1_expr269).
ref(f_dataset_to_domain_axes_map_1813, xyplot_1_expr269, line(xyplot_1, 1484)).
method_invoc(xyplot_1_expr270, m_array_list_1210, line(xyplot_1, 1484)).
argument(p_axis_indices_1896, 1, xyplot_1_expr270).
method_invoc(xyplot_1_expr273, m_dataset_changed_1211, line(xyplot_1, 1486)).
argument(xyplot_1_expr274, 1, xyplot_1_expr273).
method_invoc(xyplot_1_expr274, m_dataset_change_event_1212, line(xyplot_1, 1486)).
argument(xyplot_1_expr275, 1, xyplot_1_expr274).
argument(xyplot_1_expr276, 2, xyplot_1_expr274).
method_invoc(xyplot_1_expr276, m_get_dataset_1201, line(xyplot_1, 1486)).
argument(p_index_1895, 1, xyplot_1_expr276).
param(p_index_1898, 1, m_map_dataset_to_range_axis_1164).
param(p_axis_index_1899, 2, m_map_dataset_to_range_axis_1164).
assign(v_axis_indices_1900, xyplot_1_expr277, line(xyplot_1, 1499)).
method_invoc(xyplot_1_expr277, m_array_list_1206, line(xyplot_1, 1499)).
argument(xyplot_1_literal52, 1, xyplot_1_expr277).
method_invoc(xyplot_1_expr278, m_add_82, line(xyplot_1, 1500)).
argument(xyplot_1_expr279, 1, xyplot_1_expr278).
ref(v_axis_indices_1900, xyplot_1_expr278, line(xyplot_1, 1500)).
method_invoc(xyplot_1_expr279, m_integer_1086, line(xyplot_1, 1500)).
argument(p_axis_index_1899, 1, xyplot_1_expr279).
method_invoc(xyplot_1_expr280, m_map_dataset_to_range_axes_1213, line(xyplot_1, 1501)).
argument(p_index_1898, 1, xyplot_1_expr280).
argument(v_axis_indices_1900, 2, xyplot_1_expr280).
param(p_index_1901, 1, m_map_dataset_to_range_axes_1213).
param(p_axis_indices_1902, 2, m_map_dataset_to_range_axes_1213).
method_invoc(xyplot_1_expr282, m_check_axis_indices_1208, line(xyplot_1, 1518)).
argument(p_axis_indices_1902, 1, xyplot_1_expr282).
assign(v_key_1903, xyplot_1_expr283, line(xyplot_1, 1519)).
method_invoc(xyplot_1_expr283, m_integer_1086, line(xyplot_1, 1519)).
argument(p_index_1901, 1, xyplot_1_expr283).
method_invoc(xyplot_1_expr284, m_put_1209, line(xyplot_1, 1520)).
argument(v_key_1903, 1, xyplot_1_expr284).
argument(xyplot_1_expr285, 2, xyplot_1_expr284).
ref(f_dataset_to_range_axes_map_1814, xyplot_1_expr284, line(xyplot_1, 1520)).
method_invoc(xyplot_1_expr285, m_array_list_1210, line(xyplot_1, 1520)).
argument(p_axis_indices_1902, 1, xyplot_1_expr285).
method_invoc(xyplot_1_expr288, m_dataset_changed_1211, line(xyplot_1, 1522)).
argument(xyplot_1_expr289, 1, xyplot_1_expr288).
method_invoc(xyplot_1_expr289, m_dataset_change_event_1212, line(xyplot_1, 1522)).
argument(xyplot_1_expr290, 1, xyplot_1_expr289).
argument(xyplot_1_expr291, 2, xyplot_1_expr289).
method_invoc(xyplot_1_expr291, m_get_dataset_1201, line(xyplot_1, 1522)).
argument(p_index_1901, 1, xyplot_1_expr291).
param(p_indices_1904, 1, m_check_axis_indices_1208).
assign(v_count_1905, xyplot_1_expr293, line(xyplot_1, 1539)).
method_invoc(xyplot_1_expr293, m_size_105, line(xyplot_1, 1539)).
ref(p_indices_1904, xyplot_1_expr293, line(xyplot_1, 1539)).
assign(v_set_1906, xyplot_1_expr295, line(xyplot_1, 1543)).
method_invoc(xyplot_1_expr295, m_hash_set_1214, line(xyplot_1, 1543)).
assign(v_i_1907, xyplot_1_literal56, line(xyplot_1, 1544)).
assign(v_item_1908, xyplot_1_expr299, line(xyplot_1, 1545)).
method_invoc(xyplot_1_expr299, m_get_107, line(xyplot_1, 1545)).
argument(v_i_1907, 1, xyplot_1_expr299).
ref(p_indices_1904, xyplot_1_expr299, line(xyplot_1, 1545)).
assign(xyplot_1_expr301, xyplot_1_expr302, line(xyplot_1, 1546)).
method_invoc(xyplot_1_expr303, m_contains_1215, line(xyplot_1, 1550)).
argument(v_item_1908, 1, xyplot_1_expr303).
ref(v_set_1906, xyplot_1_expr303, line(xyplot_1, 1550)).
method_invoc(xyplot_1_expr304, m_add_1216, line(xyplot_1, 1553)).
argument(v_item_1908, 1, xyplot_1_expr304).
ref(v_set_1906, xyplot_1_expr304, line(xyplot_1, 1553)).
return(xyplot_1_expr305, m_get_renderer_count_268, line(xyplot_1, 1565)).
method_invoc(xyplot_1_expr305, m_size_1171, line(xyplot_1, 1565)).
ref(f_renderers_1812, xyplot_1_expr305, line(xyplot_1, 1565)).
return(xyplot_1_expr308, m_get_renderer_1217, line(xyplot_1, 1576)).
method_invoc(xyplot_1_expr308, m_get_renderer_269, line(xyplot_1, 1576)).
argument(xyplot_1_literal57, 1, xyplot_1_expr308).
param(p_index_1909, 1, m_get_renderer_269).
assign(v_result_1910, xyplot_1_literal58, line(xyplot_1, 1589)).
method_invoc(xyplot_1_expr310, m_size_1171, line(xyplot_1, 1590)).
ref(f_renderers_1812, xyplot_1_expr310, line(xyplot_1, 1590)).
assign(v_result_1910, xyplot_1_expr314, line(xyplot_1, 1591)).
assign(xyplot_1_expr314, xyplot_1_expr315, line(xyplot_1, 1591)).
method_invoc(xyplot_1_expr315, m_get_1172, line(xyplot_1, 1591)).
argument(p_index_1909, 1, xyplot_1_expr315).
ref(f_renderers_1812, xyplot_1_expr315, line(xyplot_1, 1591)).
return(v_result_1910, m_get_renderer_269, line(xyplot_1, 1593)).
param(p_renderer_1911, 1, m_set_renderer_1218).
method_invoc(xyplot_1_expr318, m_set_renderer_1219, line(xyplot_1, 1607)).
argument(xyplot_1_literal59, 1, xyplot_1_expr318).
argument(p_renderer_1911, 2, xyplot_1_expr318).
param(p_index_1912, 1, m_set_renderer_1219).
param(p_renderer_1913, 2, m_set_renderer_1219).
method_invoc(xyplot_1_expr319, m_set_renderer_1220, line(xyplot_1, 1620)).
argument(p_index_1912, 1, xyplot_1_expr319).
argument(p_renderer_1913, 2, xyplot_1_expr319).
argument(xyplot_1_literal60, 3, xyplot_1_expr319).
param(p_index_1914, 1, m_set_renderer_1220).
param(p_renderer_1915, 2, m_set_renderer_1220).
param(p_notify_1916, 3, m_set_renderer_1220).
assign(v_existing_1917, xyplot_1_expr320, line(xyplot_1, 1635)).
method_invoc(xyplot_1_expr320, m_get_renderer_269, line(xyplot_1, 1635)).
argument(p_index_1914, 1, xyplot_1_expr320).
method_invoc(xyplot_1_expr322, m_remove_change_listener_1221, line(xyplot_1, 1637)).
argument(xyplot_1_expr323, 1, xyplot_1_expr322).
ref(v_existing_1917, xyplot_1_expr322, line(xyplot_1, 1637)).
method_invoc(xyplot_1_expr324, m_set_1160, line(xyplot_1, 1639)).
argument(p_index_1914, 1, xyplot_1_expr324).
argument(p_renderer_1915, 2, xyplot_1_expr324).
ref(f_renderers_1812, xyplot_1_expr324, line(xyplot_1, 1639)).
method_invoc(xyplot_1_expr328, m_configure_domain_axes_1165, line(xyplot_1, 1644)).
param(p_renderers_1918, 1, m_set_renderers_1222).
param(p_order_1919, 1, m_set_dataset_rendering_order_1224).
param(p_order_1920, 1, m_set_series_rendering_order_1226).
param(p_renderer_1921, 1, m_get_index_of_1227).
return(xyplot_1_expr329, m_get_index_of_1227, line(xyplot_1, 1731)).
method_invoc(xyplot_1_expr329, m_index_of_1228, line(xyplot_1, 1731)).
argument(p_renderer_1921, 1, xyplot_1_expr329).
ref(f_renderers_1812, xyplot_1_expr329, line(xyplot_1, 1731)).
param(p_dataset_1922, 1, m_get_renderer_for_dataset_1229).
assign(v_result_1923, xyplot_1_literal63, line(xyplot_1, 1744)).
assign(v_i_1924, xyplot_1_literal64, line(xyplot_1, 1745)).
method_invoc(xyplot_1_expr334, m_size_1171, line(xyplot_1, 1745)).
ref(f_datasets_1811, xyplot_1_expr334, line(xyplot_1, 1745)).
method_invoc(xyplot_1_expr339, m_get_1172, line(xyplot_1, 1746)).
argument(v_i_1924, 1, xyplot_1_expr339).
ref(f_datasets_1811, xyplot_1_expr339, line(xyplot_1, 1746)).
assign(v_result_1923, xyplot_1_expr343, line(xyplot_1, 1747)).
assign(xyplot_1_expr343, xyplot_1_expr344, line(xyplot_1, 1747)).
method_invoc(xyplot_1_expr344, m_get_1172, line(xyplot_1, 1747)).
argument(v_i_1924, 1, xyplot_1_expr344).
ref(f_renderers_1812, xyplot_1_expr344, line(xyplot_1, 1747)).
assign(v_result_1923, xyplot_1_expr349, line(xyplot_1, 1749)).
method_invoc(xyplot_1_expr349, m_get_renderer_1217, line(xyplot_1, 1749)).
return(v_result_1923, m_get_renderer_for_dataset_1229, line(xyplot_1, 1754)).
param(p_weight_1925, 1, m_set_weight_1231).
param(p_visible_1926, 1, m_set_domain_gridlines_visible_1233).
param(p_visible_1927, 1, m_set_domain_minor_gridlines_visible_1235).
param(p_stroke_1928, 1, m_set_domain_gridline_stroke_1237).
param(p_stroke_1929, 1, m_set_domain_minor_gridline_stroke_1239).
param(p_paint_1930, 1, m_set_domain_gridline_paint_259).
assign(f_domain_gridline_paint_1818, p_paint_1930, line(xyplot_1, 1940)).
method_invoc(xyplot_1_expr354, m_fire_change_event_1023, line(xyplot_1, 1941)).
param(p_paint_1931, 1, m_set_domain_minor_gridline_paint_1242).
param(p_visible_1932, 1, m_set_range_gridlines_visible_1244).
param(p_stroke_1933, 1, m_set_range_gridline_stroke_1246).
param(p_paint_1934, 1, m_set_range_gridline_paint_260).
assign(f_range_gridline_paint_1827, p_paint_1934, line(xyplot_1, 2061)).
method_invoc(xyplot_1_expr359, m_fire_change_event_1023, line(xyplot_1, 2062)).
param(p_visible_1935, 1, m_set_range_minor_gridlines_visible_1249).
param(p_stroke_1936, 1, m_set_range_minor_gridline_stroke_1251).
param(p_paint_1937, 1, m_set_range_minor_gridline_paint_1253).
param(p_visible_1938, 1, m_set_domain_zero_baseline_visible_1255).
param(p_stroke_1939, 1, m_set_domain_zero_baseline_stroke_1257).
param(p_paint_1940, 1, m_set_domain_zero_baseline_paint_257).
assign(f_domain_zero_baseline_paint_1823, p_paint_1940, line(xyplot_1, 2252)).
method_invoc(xyplot_1_expr364, m_fire_change_event_1023, line(xyplot_1, 2253)).
param(p_visible_1941, 1, m_set_range_zero_baseline_visible_1260).
param(p_stroke_1942, 1, m_set_range_zero_baseline_stroke_1262).
param(p_paint_1943, 1, m_set_range_zero_baseline_paint_258).
assign(f_range_zero_baseline_paint_1832, p_paint_1943, line(xyplot_1, 2333)).
method_invoc(xyplot_1_expr369, m_fire_change_event_1023, line(xyplot_1, 2334)).
param(p_paint_1944, 1, m_set_domain_tick_band_paint_1265).
param(p_paint_1945, 1, m_set_range_tick_band_paint_1267).
param(p_origin_1946, 1, m_set_quadrant_origin_1269).
param(p_index_1947, 1, m_get_quadrant_paint_1270).
param(p_index_1948, 1, m_set_quadrant_paint_1271).
param(p_paint_1949, 2, m_set_quadrant_paint_1271).
param(p_marker_1950, 1, m_add_domain_marker_1272).
param(p_marker_1951, 1, m_add_domain_marker_1273).
param(p_layer_1952, 2, m_add_domain_marker_1273).
param(p_index_1953, 1, m_clear_domain_markers_1275).
param(p_index_1954, 1, m_add_domain_marker_1276).
param(p_marker_1955, 2, m_add_domain_marker_1276).
param(p_layer_1956, 3, m_add_domain_marker_1276).
param(p_index_1957, 1, m_add_domain_marker_1277).
param(p_marker_1958, 2, m_add_domain_marker_1277).
param(p_layer_1959, 3, m_add_domain_marker_1277).
param(p_notify_1960, 4, m_add_domain_marker_1277).
param(p_marker_1961, 1, m_remove_domain_marker_1278).
param(p_marker_1962, 1, m_remove_domain_marker_1279).
param(p_layer_1963, 2, m_remove_domain_marker_1279).
param(p_index_1964, 1, m_remove_domain_marker_1280).
param(p_marker_1965, 2, m_remove_domain_marker_1280).
param(p_layer_1966, 3, m_remove_domain_marker_1280).
param(p_index_1967, 1, m_remove_domain_marker_1281).
param(p_marker_1968, 2, m_remove_domain_marker_1281).
param(p_layer_1969, 3, m_remove_domain_marker_1281).
param(p_notify_1970, 4, m_remove_domain_marker_1281).
param(p_marker_1971, 1, m_add_range_marker_1282).
param(p_marker_1972, 1, m_add_range_marker_1283).
param(p_layer_1973, 2, m_add_range_marker_1283).
param(p_index_1974, 1, m_add_range_marker_1285).
param(p_marker_1975, 2, m_add_range_marker_1285).
param(p_layer_1976, 3, m_add_range_marker_1285).
param(p_index_1977, 1, m_add_range_marker_1286).
param(p_marker_1978, 2, m_add_range_marker_1286).
param(p_layer_1979, 3, m_add_range_marker_1286).
param(p_notify_1980, 4, m_add_range_marker_1286).
param(p_index_1981, 1, m_clear_range_markers_1287).
param(p_marker_1982, 1, m_remove_range_marker_1288).
param(p_marker_1983, 1, m_remove_range_marker_1289).
param(p_layer_1984, 2, m_remove_range_marker_1289).
param(p_index_1985, 1, m_remove_range_marker_1290).
param(p_marker_1986, 2, m_remove_range_marker_1290).
param(p_layer_1987, 3, m_remove_range_marker_1290).
param(p_index_1988, 1, m_remove_range_marker_1291).
param(p_marker_1989, 2, m_remove_range_marker_1291).
param(p_layer_1990, 3, m_remove_range_marker_1291).
param(p_notify_1991, 4, m_remove_range_marker_1291).
param(p_annotation_1992, 1, m_add_annotation_1292).
param(p_annotation_1993, 1, m_add_annotation_1293).
param(p_notify_1994, 2, m_add_annotation_1293).
param(p_annotation_1995, 1, m_remove_annotation_1294).
param(p_annotation_1996, 1, m_remove_annotation_1295).
param(p_notify_1997, 2, m_remove_annotation_1295).
return(xyplot_1_expr370, m_get_annotations_272, line(xyplot_1, 3014)).
method_invoc(xyplot_1_expr370, m_array_list_1210, line(xyplot_1, 3014)).
argument(f_annotations_1815, 1, xyplot_1_expr370).
param(p_g_2_1998, 1, m_calculate_axis_space_1297).
param(p_plot_area_1999, 2, m_calculate_axis_space_1297).
param(p_g_2_2000, 1, m_calculate_domain_axis_space_1298).
param(p_plot_area_2001, 2, m_calculate_domain_axis_space_1298).
param(p_space_2002, 3, m_calculate_domain_axis_space_1298).
param(p_g_2_2003, 1, m_calculate_range_axis_space_1299).
param(p_plot_area_2004, 2, m_calculate_range_axis_space_1299).
param(p_space_2005, 3, m_calculate_range_axis_space_1299).
param(p_g_2_2006, 1, m_draw_1300).
param(p_area_2007, 2, m_draw_1300).
param(p_anchor_2008, 3, m_draw_1300).
param(p_parent_state_2009, 4, m_draw_1300).
param(p_info_2010, 5, m_draw_1300).
param(p_g_2_2011, 1, m_draw_background_1301).
param(p_area_2012, 2, m_draw_background_1301).
param(p_g_2_2013, 1, m_draw_quadrants_1302).
param(p_area_2014, 2, m_draw_quadrants_1302).
param(p_g_2_2015, 1, m_draw_domain_tick_bands_1303).
param(p_data_area_2016, 2, m_draw_domain_tick_bands_1303).
param(p_ticks_2017, 3, m_draw_domain_tick_bands_1303).
param(p_g_2_2018, 1, m_draw_range_tick_bands_1304).
param(p_data_area_2019, 2, m_draw_range_tick_bands_1304).
param(p_ticks_2020, 3, m_draw_range_tick_bands_1304).
param(p_g_2_2021, 1, m_draw_axes_1305).
param(p_plot_area_2022, 2, m_draw_axes_1305).
param(p_data_area_2023, 3, m_draw_axes_1305).
param(p_plot_state_2024, 4, m_draw_axes_1305).
param(p_g_2_2025, 1, m_render_1306).
param(p_data_area_2026, 2, m_render_1306).
param(p_index_2027, 3, m_render_1306).
param(p_info_2028, 4, m_render_1306).
param(p_crosshair_state_2029, 5, m_render_1306).
param(p_index_2030, 1, m_get_domain_axis_for_dataset_1307).
assign(v_upper_2031, xyplot_1_expr373, line(xyplot_1, 3809)).
method_invoc(xyplot_1_expr373, m_max_1308, line(xyplot_1, 3809)).
argument(xyplot_1_expr374, 1, xyplot_1_expr373).
argument(xyplot_1_expr375, 2, xyplot_1_expr373).
ref(t_math_18, xyplot_1_expr373, line(xyplot_1, 3809)).
method_invoc(xyplot_1_expr374, m_get_dataset_count_1204, line(xyplot_1, 3809)).
method_invoc(xyplot_1_expr375, m_get_renderer_count_268, line(xyplot_1, 3809)).
assign(v_value_axis_2032, xyplot_1_literal71, line(xyplot_1, 3814)).
assign(v_axis_indices_2033, xyplot_1_expr379, line(xyplot_1, 3815)).
assign(xyplot_1_expr379, xyplot_1_expr380, line(xyplot_1, 3815)).
method_invoc(xyplot_1_expr380, m_get_1309, line(xyplot_1, 3815)).
argument(xyplot_1_expr381, 1, xyplot_1_expr380).
ref(f_dataset_to_domain_axes_map_1813, xyplot_1_expr380, line(xyplot_1, 3815)).
assign(v_axis_index_2034, xyplot_1_expr385, line(xyplot_1, 3819)).
assign(xyplot_1_expr385, xyplot_1_expr386, line(xyplot_1, 3819)).
method_invoc(xyplot_1_expr386, m_get_107, line(xyplot_1, 3819)).
argument(xyplot_1_literal73, 1, xyplot_1_expr386).
ref(v_axis_indices_2033, xyplot_1_expr386, line(xyplot_1, 3819)).
assign(v_value_axis_2032, xyplot_1_expr388, line(xyplot_1, 3820)).
method_invoc(xyplot_1_expr388, m_get_domain_axis_264, line(xyplot_1, 3820)).
argument(xyplot_1_expr389, 1, xyplot_1_expr388).
method_invoc(xyplot_1_expr389, m_int_value_1310, line(xyplot_1, 3820)).
ref(v_axis_index_2034, xyplot_1_expr389, line(xyplot_1, 3820)).
return(v_value_axis_2032, m_get_domain_axis_for_dataset_1307, line(xyplot_1, 3825)).
param(p_index_2035, 1, m_get_range_axis_for_dataset_1311).
param(p_g_2_2036, 1, m_draw_domain_gridlines_1312).
param(p_data_area_2037, 2, m_draw_domain_gridlines_1312).
param(p_ticks_2038, 3, m_draw_domain_gridlines_1312).
param(p_g_2_2039, 1, m_draw_range_gridlines_1313).
param(p_area_2040, 2, m_draw_range_gridlines_1313).
param(p_ticks_2041, 3, m_draw_range_gridlines_1313).
param(p_g_2_2042, 1, m_draw_zero_domain_baseline_1314).
param(p_area_2043, 2, m_draw_zero_domain_baseline_1314).
param(p_g_2_2044, 1, m_draw_zero_range_baseline_1315).
param(p_area_2045, 2, m_draw_zero_range_baseline_1315).
param(p_g_2_2046, 1, m_draw_annotations_1316).
param(p_data_area_2047, 2, m_draw_annotations_1316).
param(p_info_2048, 3, m_draw_annotations_1316).
param(p_g_2_2049, 1, m_draw_domain_markers_1317).
param(p_data_area_2050, 2, m_draw_domain_markers_1317).
param(p_index_2051, 3, m_draw_domain_markers_1317).
param(p_layer_2052, 4, m_draw_domain_markers_1317).
param(p_g_2_2053, 1, m_draw_range_markers_1318).
param(p_data_area_2054, 2, m_draw_range_markers_1318).
param(p_index_2055, 3, m_draw_range_markers_1318).
param(p_layer_2056, 4, m_draw_range_markers_1318).
param(p_layer_2057, 1, m_get_domain_markers_1319).
param(p_layer_2058, 1, m_get_range_markers_1320).
param(p_index_2059, 1, m_get_domain_markers_1321).
param(p_layer_2060, 2, m_get_domain_markers_1321).
param(p_index_2061, 1, m_get_range_markers_1322).
param(p_layer_2062, 2, m_get_range_markers_1322).
param(p_g_2_2063, 1, m_draw_horizontal_line_1323).
param(p_data_area_2064, 2, m_draw_horizontal_line_1323).
param(p_value_2065, 3, m_draw_horizontal_line_1323).
param(p_stroke_2066, 4, m_draw_horizontal_line_1323).
param(p_paint_2067, 5, m_draw_horizontal_line_1323).
param(p_g_2_2068, 1, m_draw_domain_crosshair_1324).
param(p_data_area_2069, 2, m_draw_domain_crosshair_1324).
param(p_orientation_2070, 3, m_draw_domain_crosshair_1324).
param(p_value_2071, 4, m_draw_domain_crosshair_1324).
param(p_axis_2072, 5, m_draw_domain_crosshair_1324).
param(p_stroke_2073, 6, m_draw_domain_crosshair_1324).
param(p_paint_2074, 7, m_draw_domain_crosshair_1324).
param(p_g_2_2075, 1, m_draw_vertical_line_1325).
param(p_data_area_2076, 2, m_draw_vertical_line_1325).
param(p_value_2077, 3, m_draw_vertical_line_1325).
param(p_stroke_2078, 4, m_draw_vertical_line_1325).
param(p_paint_2079, 5, m_draw_vertical_line_1325).
param(p_g_2_2080, 1, m_draw_range_crosshair_1326).
param(p_data_area_2081, 2, m_draw_range_crosshair_1326).
param(p_orientation_2082, 3, m_draw_range_crosshair_1326).
param(p_value_2083, 4, m_draw_range_crosshair_1326).
param(p_axis_2084, 5, m_draw_range_crosshair_1326).
param(p_stroke_2085, 6, m_draw_range_crosshair_1326).
param(p_paint_2086, 7, m_draw_range_crosshair_1326).
param(p_x_2087, 1, m_handle_click_1327).
param(p_y_2088, 2, m_handle_click_1327).
param(p_info_2089, 3, m_handle_click_1327).
param(p_axis_index_2090, 1, m_get_datasets_mapped_to_domain_axis_1328).
assign(v_result_2091, xyplot_1_expr391, line(xyplot_1, 4326)).
method_invoc(xyplot_1_expr391, m_array_list_75, line(xyplot_1, 4326)).
assign(v_i_2092, xyplot_1_literal75, line(xyplot_1, 4327)).
method_invoc(xyplot_1_expr394, m_size_1171, line(xyplot_1, 4327)).
ref(f_datasets_1811, xyplot_1_expr394, line(xyplot_1, 4327)).
assign(v_mapped_axes_2093, xyplot_1_expr398, line(xyplot_1, 4328)).
assign(xyplot_1_expr398, xyplot_1_expr399, line(xyplot_1, 4328)).
method_invoc(xyplot_1_expr399, m_get_1309, line(xyplot_1, 4328)).
argument(xyplot_1_expr400, 1, xyplot_1_expr399).
ref(f_dataset_to_domain_axes_map_1813, xyplot_1_expr399, line(xyplot_1, 4328)).
method_invoc(xyplot_1_expr404, m_contains_1329, line(xyplot_1, 4336)).
argument(p_axis_index_2090, 1, xyplot_1_expr404).
ref(v_mapped_axes_2093, xyplot_1_expr404, line(xyplot_1, 4336)).
method_invoc(xyplot_1_expr405, m_add_82, line(xyplot_1, 4337)).
argument(xyplot_1_expr406, 1, xyplot_1_expr405).
ref(v_result_2091, xyplot_1_expr405, line(xyplot_1, 4337)).
method_invoc(xyplot_1_expr406, m_get_1172, line(xyplot_1, 4337)).
argument(v_i_2092, 1, xyplot_1_expr406).
ref(f_datasets_1811, xyplot_1_expr406, line(xyplot_1, 4337)).
return(v_result_2091, m_get_datasets_mapped_to_domain_axis_1328, line(xyplot_1, 4341)).
param(p_axis_index_2094, 1, m_get_datasets_mapped_to_range_axis_1330).
assign(v_result_2095, xyplot_1_expr410, line(xyplot_1, 4356)).
method_invoc(xyplot_1_expr410, m_array_list_75, line(xyplot_1, 4356)).
assign(v_i_2096, xyplot_1_literal78, line(xyplot_1, 4357)).
method_invoc(xyplot_1_expr413, m_size_1171, line(xyplot_1, 4357)).
ref(f_datasets_1811, xyplot_1_expr413, line(xyplot_1, 4357)).
assign(v_mapped_axes_2097, xyplot_1_expr417, line(xyplot_1, 4358)).
assign(xyplot_1_expr417, xyplot_1_expr418, line(xyplot_1, 4358)).
method_invoc(xyplot_1_expr418, m_get_1309, line(xyplot_1, 4358)).
argument(xyplot_1_expr419, 1, xyplot_1_expr418).
ref(f_dataset_to_range_axes_map_1814, xyplot_1_expr418, line(xyplot_1, 4358)).
method_invoc(xyplot_1_expr423, m_contains_1329, line(xyplot_1, 4366)).
argument(p_axis_index_2094, 1, xyplot_1_expr423).
ref(v_mapped_axes_2097, xyplot_1_expr423, line(xyplot_1, 4366)).
method_invoc(xyplot_1_expr424, m_add_82, line(xyplot_1, 4367)).
argument(xyplot_1_expr425, 1, xyplot_1_expr424).
ref(v_result_2095, xyplot_1_expr424, line(xyplot_1, 4367)).
method_invoc(xyplot_1_expr425, m_get_1172, line(xyplot_1, 4367)).
argument(v_i_2096, 1, xyplot_1_expr425).
ref(f_datasets_1811, xyplot_1_expr425, line(xyplot_1, 4367)).
return(v_result_2095, m_get_datasets_mapped_to_range_axis_1330, line(xyplot_1, 4371)).
param(p_axis_2098, 1, m_get_domain_axis_index_1331).
assign(v_result_2099, xyplot_1_expr428, line(xyplot_1, 4384)).
method_invoc(xyplot_1_expr428, m_index_of_1228, line(xyplot_1, 4384)).
argument(p_axis_2098, 1, xyplot_1_expr428).
ref(f_domain_axes_1803, xyplot_1_expr428, line(xyplot_1, 4384)).
assign(v_parent_2100, xyplot_1_expr432, line(xyplot_1, 4387)).
method_invoc(xyplot_1_expr432, m_get_parent_1096, line(xyplot_1, 4387)).
return(v_result_2099, m_get_domain_axis_index_1331, line(xyplot_1, 4393)).
param(p_axis_2101, 1, m_get_range_axis_index_1332).
assign(v_result_2102, xyplot_1_expr434, line(xyplot_1, 4406)).
method_invoc(xyplot_1_expr434, m_index_of_1228, line(xyplot_1, 4406)).
argument(p_axis_2101, 1, xyplot_1_expr434).
ref(f_range_axes_1807, xyplot_1_expr434, line(xyplot_1, 4406)).
assign(v_parent_2103, xyplot_1_expr438, line(xyplot_1, 4409)).
method_invoc(xyplot_1_expr438, m_get_parent_1096, line(xyplot_1, 4409)).
return(v_result_2102, m_get_range_axis_index_1332, line(xyplot_1, 4415)).
param(p_axis_2104, 1, m_get_data_range_1333).
assign(v_result_2105, xyplot_1_literal82, line(xyplot_1, 4427)).
assign(v_mapped_datasets_2106, xyplot_1_expr440, line(xyplot_1, 4428)).
method_invoc(xyplot_1_expr440, m_array_list_75, line(xyplot_1, 4428)).
assign(v_included_annotations_2107, xyplot_1_expr441, line(xyplot_1, 4429)).
method_invoc(xyplot_1_expr441, m_array_list_75, line(xyplot_1, 4429)).
assign(v_is_domain_axis_2108, xyplot_1_literal83, line(xyplot_1, 4430)).
assign(v_domain_index_2109, xyplot_1_expr442, line(xyplot_1, 4433)).
method_invoc(xyplot_1_expr442, m_get_domain_axis_index_1331, line(xyplot_1, 4433)).
argument(p_axis_2104, 1, xyplot_1_expr442).
assign(v_is_domain_axis_2108, xyplot_1_literal85, line(xyplot_1, 4435)).
method_invoc(xyplot_1_expr445, m_add_all_1334, line(xyplot_1, 4436)).
argument(xyplot_1_expr446, 1, xyplot_1_expr445).
ref(v_mapped_datasets_2106, xyplot_1_expr445, line(xyplot_1, 4436)).
method_invoc(xyplot_1_expr446, m_get_datasets_mapped_to_domain_axis_1328, line(xyplot_1, 4436)).
argument(xyplot_1_expr447, 1, xyplot_1_expr446).
assign(v_iterator_2110, xyplot_1_expr449, line(xyplot_1, 4440)).
method_invoc(xyplot_1_expr449, m_iterator_271, line(xyplot_1, 4440)).
ref(f_annotations_1815, xyplot_1_expr449, line(xyplot_1, 4440)).
method_invoc(xyplot_1_expr452, m_has_next_273, line(xyplot_1, 4441)).
ref(v_iterator_2110, xyplot_1_expr452, line(xyplot_1, 4441)).
assign(v_range_index_2111, xyplot_1_expr453, line(xyplot_1, 4451)).
method_invoc(xyplot_1_expr453, m_get_range_axis_index_1332, line(xyplot_1, 4451)).
argument(p_axis_2104, 1, xyplot_1_expr453).
assign(v_is_domain_axis_2108, xyplot_1_literal88, line(xyplot_1, 4453)).
method_invoc(xyplot_1_expr456, m_add_all_1334, line(xyplot_1, 4454)).
argument(xyplot_1_expr457, 1, xyplot_1_expr456).
ref(v_mapped_datasets_2106, xyplot_1_expr456, line(xyplot_1, 4454)).
method_invoc(xyplot_1_expr457, m_get_datasets_mapped_to_range_axis_1330, line(xyplot_1, 4454)).
argument(xyplot_1_expr458, 1, xyplot_1_expr457).
assign(v_iterator_2112, xyplot_1_expr460, line(xyplot_1, 4457)).
method_invoc(xyplot_1_expr460, m_iterator_271, line(xyplot_1, 4457)).
ref(f_annotations_1815, xyplot_1_expr460, line(xyplot_1, 4457)).
method_invoc(xyplot_1_expr463, m_has_next_273, line(xyplot_1, 4458)).
ref(v_iterator_2112, xyplot_1_expr463, line(xyplot_1, 4458)).
assign(v_iterator_2113, xyplot_1_expr464, line(xyplot_1, 4469)).
method_invoc(xyplot_1_expr464, m_iterator_271, line(xyplot_1, 4469)).
ref(v_mapped_datasets_2106, xyplot_1_expr464, line(xyplot_1, 4469)).
method_invoc(xyplot_1_expr465, m_has_next_273, line(xyplot_1, 4470)).
ref(v_iterator_2113, xyplot_1_expr465, line(xyplot_1, 4470)).
assign(v_d_2114, xyplot_1_expr466, line(xyplot_1, 4471)).
assign(xyplot_1_expr466, xyplot_1_expr467, line(xyplot_1, 4471)).
method_invoc(xyplot_1_expr467, m_next_1335, line(xyplot_1, 4471)).
ref(v_iterator_2113, xyplot_1_expr467, line(xyplot_1, 4471)).
assign(v_r_2115, xyplot_1_expr469, line(xyplot_1, 4473)).
method_invoc(xyplot_1_expr469, m_get_renderer_for_dataset_1229, line(xyplot_1, 4473)).
argument(v_d_2114, 1, xyplot_1_expr469).
assign(v_result_2105, xyplot_1_expr472, line(xyplot_1, 4476)).
method_invoc(xyplot_1_expr472, m_combine_1336, line(xyplot_1, 4476)).
argument(v_result_2105, 1, xyplot_1_expr472).
argument(xyplot_1_expr473, 2, xyplot_1_expr472).
ref(t_range_32, xyplot_1_expr472, line(xyplot_1, 4476)).
method_invoc(xyplot_1_expr473, m_find_domain_bounds_1337, line(xyplot_1, 4476)).
argument(v_d_2114, 1, xyplot_1_expr473).
ref(v_r_2115, xyplot_1_expr473, line(xyplot_1, 4476)).
assign(v_result_2105, xyplot_1_expr475, line(xyplot_1, 4479)).
method_invoc(xyplot_1_expr475, m_combine_1336, line(xyplot_1, 4479)).
argument(v_result_2105, 1, xyplot_1_expr475).
argument(xyplot_1_expr476, 2, xyplot_1_expr475).
ref(t_range_32, xyplot_1_expr475, line(xyplot_1, 4479)).
assign(v_result_2105, xyplot_1_expr479, line(xyplot_1, 4485)).
method_invoc(xyplot_1_expr479, m_combine_1336, line(xyplot_1, 4485)).
argument(v_result_2105, 1, xyplot_1_expr479).
argument(xyplot_1_expr480, 2, xyplot_1_expr479).
ref(t_range_32, xyplot_1_expr479, line(xyplot_1, 4485)).
method_invoc(xyplot_1_expr480, m_find_range_bounds_1338, line(xyplot_1, 4485)).
argument(v_d_2114, 1, xyplot_1_expr480).
ref(v_r_2115, xyplot_1_expr480, line(xyplot_1, 4485)).
assign(v_c_2116, xyplot_1_expr481, line(xyplot_1, 4493)).
method_invoc(xyplot_1_expr481, m_get_annotations_1339, line(xyplot_1, 4493)).
ref(v_r_2115, xyplot_1_expr481, line(xyplot_1, 4493)).
assign(v_i_2117, xyplot_1_expr482, line(xyplot_1, 4494)).
method_invoc(xyplot_1_expr482, m_iterator_1340, line(xyplot_1, 4494)).
ref(v_c_2116, xyplot_1_expr482, line(xyplot_1, 4494)).
method_invoc(xyplot_1_expr483, m_has_next_273, line(xyplot_1, 4495)).
ref(v_i_2117, xyplot_1_expr483, line(xyplot_1, 4495)).
assign(v_it_2118, xyplot_1_expr484, line(xyplot_1, 4504)).
method_invoc(xyplot_1_expr484, m_iterator_271, line(xyplot_1, 4504)).
ref(v_included_annotations_2107, xyplot_1_expr484, line(xyplot_1, 4504)).
method_invoc(xyplot_1_expr485, m_has_next_273, line(xyplot_1, 4505)).
ref(v_it_2118, xyplot_1_expr485, line(xyplot_1, 4505)).
return(v_result_2105, m_get_data_range_1333, line(xyplot_1, 4517)).
param(p_event_2119, 1, m_dataset_changed_1211).
method_invoc(xyplot_1_expr486, m_configure_domain_axes_1165, line(xyplot_1, 4529)).
method_invoc(xyplot_1_expr487, m_configure_range_axes_1166, line(xyplot_1, 4530)).
method_invoc(xyplot_1_expr489, m_get_parent_1096, line(xyplot_1, 4531)).
assign(v_e_2120, xyplot_1_expr490, line(xyplot_1, 4535)).
method_invoc(xyplot_1_expr490, m_plot_change_event_772, line(xyplot_1, 4535)).
argument(xyplot_1_expr491, 1, xyplot_1_expr490).
method_invoc(xyplot_1_expr492, m_set_type_766, line(xyplot_1, 4536)).
argument(q_dataset_updated_52, 1, xyplot_1_expr492).
ref(v_e_2120, xyplot_1_expr492, line(xyplot_1, 4536)).
ref(t_chart_change_event_type_24, q_dataset_updated_52, line(xyplot_1, 4536)).
method_invoc(xyplot_1_expr493, m_notify_listeners_1123, line(xyplot_1, 4537)).
argument(v_e_2120, 1, xyplot_1_expr493).
param(p_event_2121, 1, m_renderer_changed_1341).
method_invoc(xyplot_1_expr494, m_get_series_visibility_changed_777, line(xyplot_1, 4549)).
ref(p_event_2121, xyplot_1_expr494, line(xyplot_1, 4549)).
method_invoc(xyplot_1_expr495, m_fire_change_event_1023, line(xyplot_1, 4553)).
param(p_flag_2122, 1, m_set_domain_crosshair_visible_1343).
param(p_flag_2123, 1, m_set_domain_crosshair_locked_on_data_1345).
param(p_value_2124, 1, m_set_domain_crosshair_value_1347).
param(p_value_2125, 1, m_set_domain_crosshair_value_1348).
param(p_notify_2126, 2, m_set_domain_crosshair_value_1348).
param(p_stroke_2127, 1, m_set_domain_crosshair_stroke_1350).
param(p_paint_2128, 1, m_set_domain_crosshair_paint_261).
assign(f_domain_crosshair_paint_1837, p_paint_2128, line(xyplot_1, 4706)).
method_invoc(xyplot_1_expr500, m_fire_change_event_1023, line(xyplot_1, 4707)).
param(p_flag_2129, 1, m_set_range_crosshair_visible_1353).
param(p_flag_2130, 1, m_set_range_crosshair_locked_on_data_1355).
param(p_value_2131, 1, m_set_range_crosshair_value_1357).
param(p_value_2132, 1, m_set_range_crosshair_value_1358).
param(p_notify_2133, 2, m_set_range_crosshair_value_1358).
param(p_stroke_2134, 1, m_set_range_crosshair_stroke_1360).
param(p_paint_2135, 1, m_set_range_crosshair_paint_262).
assign(f_range_crosshair_paint_1841, p_paint_2135, line(xyplot_1, 4863)).
method_invoc(xyplot_1_expr505, m_fire_change_event_1023, line(xyplot_1, 4864)).
param(p_space_2136, 1, m_set_fixed_domain_axis_space_1363).
param(p_space_2137, 1, m_set_fixed_domain_axis_space_1364).
param(p_notify_2138, 2, m_set_fixed_domain_axis_space_1364).
param(p_space_2139, 1, m_set_fixed_range_axis_space_1366).
param(p_space_2140, 1, m_set_fixed_range_axis_space_1367).
param(p_notify_2141, 2, m_set_fixed_range_axis_space_1367).
param(p_pannable_2142, 1, m_set_domain_pannable_1369).
param(p_pannable_2143, 1, m_set_range_pannable_1371).
param(p_percent_2144, 1, m_pan_domain_axes_1372).
param(p_info_2145, 2, m_pan_domain_axes_1372).
param(p_source_2146, 3, m_pan_domain_axes_1372).
param(p_percent_2147, 1, m_pan_range_axes_1373).
param(p_info_2148, 2, m_pan_range_axes_1373).
param(p_source_2149, 3, m_pan_range_axes_1373).
param(p_factor_2150, 1, m_zoom_domain_axes_1374).
param(p_info_2151, 2, m_zoom_domain_axes_1374).
param(p_source_2152, 3, m_zoom_domain_axes_1374).
param(p_factor_2153, 1, m_zoom_domain_axes_1375).
param(p_info_2154, 2, m_zoom_domain_axes_1375).
param(p_source_2155, 3, m_zoom_domain_axes_1375).
param(p_use_anchor_2156, 4, m_zoom_domain_axes_1375).
param(p_lower_percent_2157, 1, m_zoom_domain_axes_1376).
param(p_upper_percent_2158, 2, m_zoom_domain_axes_1376).
param(p_info_2159, 3, m_zoom_domain_axes_1376).
param(p_source_2160, 4, m_zoom_domain_axes_1376).
param(p_factor_2161, 1, m_zoom_range_axes_1377).
param(p_info_2162, 2, m_zoom_range_axes_1377).
param(p_source_2163, 3, m_zoom_range_axes_1377).
param(p_factor_2164, 1, m_zoom_range_axes_1378).
param(p_info_2165, 2, m_zoom_range_axes_1378).
param(p_source_2166, 3, m_zoom_range_axes_1378).
param(p_use_anchor_2167, 4, m_zoom_range_axes_1378).
param(p_lower_percent_2168, 1, m_zoom_range_axes_1379).
param(p_upper_percent_2169, 2, m_zoom_range_axes_1379).
param(p_info_2170, 3, m_zoom_range_axes_1379).
param(p_source_2171, 4, m_zoom_range_axes_1379).
param(p_items_2172, 1, m_set_fixed_legend_items_1384).
param(p_obj_2173, 1, m_equals_1386).
return(xyplot_1_literal96, m_equals_1386, line(xyplot_1, 5311)).
throw(m_clone_1387, clone_not_supported_exception).
param(p_stream_2174, 1, m_write_object_1388).
throw(m_write_object_1388, ioexception).
param(p_stream_2175, 1, m_read_object_1389).
throw(m_read_object_1389, ioexception).
throw(m_read_object_1389, class_not_found_exception).
param(p_x_2176, 1, m_select_1392).
param(p_y_2177, 2, m_select_1392).
param(p_data_area_2178, 3, m_select_1392).
param(p_source_2179, 4, m_select_1392).
param(p_region_2180, 1, m_select_1393).
param(p_data_area_2181, 2, m_select_1393).
param(p_source_2182, 3, m_select_1393).
param(p_dataset_2183, 1, m_find_selection_state_for_dataset_1394).
param(p_source_2184, 2, m_find_selection_state_for_dataset_1394).
param(p_path_2185, 1, m_convert_to_data_space_1395).
param(p_data_area_2186, 2, m_convert_to_data_space_1395).
param(p_dataset_2187, 3, m_convert_to_data_space_1395).

%abstract_renderer_1 - org.jfree.chart.renderer.AbstractRenderer
assign(f_zero_2192, abstract_renderer_1_expr1, line(abstract_renderer_1, 149)).
method_invoc(abstract_renderer_1_expr1, m_double_785, line(abstract_renderer_1, 149)).
argument(abstract_renderer_1_literal1, 1, abstract_renderer_1_expr1).
assign(f_default_paint_2193, q_blue_53, line(abstract_renderer_1, 152)).
ref(t_color_4, q_blue_53, line(abstract_renderer_1, 152)).
assign(f_default_outline_paint_2194, q_gray_53, line(abstract_renderer_1, 155)).
ref(t_color_4, q_gray_53, line(abstract_renderer_1, 155)).
assign(f_default_stroke_2195, abstract_renderer_1_expr2, line(abstract_renderer_1, 158)).
method_invoc(abstract_renderer_1_expr2, m_basic_stroke_73, line(abstract_renderer_1, 158)).
argument(abstract_renderer_1_literal2, 1, abstract_renderer_1_expr2).
assign(f_default_outline_stroke_2196, abstract_renderer_1_expr3, line(abstract_renderer_1, 161)).
method_invoc(abstract_renderer_1_expr3, m_basic_stroke_73, line(abstract_renderer_1, 161)).
argument(abstract_renderer_1_literal3, 1, abstract_renderer_1_expr3).
assign(f_default_shape_2197, abstract_renderer_1_expr4, line(abstract_renderer_1, 164)).
assign(f_default_value_label_font_2198, abstract_renderer_1_expr5, line(abstract_renderer_1, 168)).
method_invoc(abstract_renderer_1_expr5, m_font_68, line(abstract_renderer_1, 168)).
argument(abstract_renderer_1_literal4, 1, abstract_renderer_1_expr5).
argument(q_plain_53, 2, abstract_renderer_1_expr5).
argument(abstract_renderer_1_literal5, 3, abstract_renderer_1_expr5).
assign(f_default_value_label_paint_2199, q_black_53, line(abstract_renderer_1, 172)).
ref(t_color_4, q_black_53, line(abstract_renderer_1, 172)).
assign(f_item_label_anchor_offset_2200, abstract_renderer_1_literal6, line(abstract_renderer_1, 304)).
assign(f_data_bounds_includes_visible_series_only_2201, abstract_renderer_1_literal7, line(abstract_renderer_1, 377)).
assign(f_series_visible_list_2202, abstract_renderer_1_expr8, line(abstract_renderer_1, 393)).
method_invoc(abstract_renderer_1_expr8, m_boolean_list_1429, line(abstract_renderer_1, 393)).
assign(f_base_series_visible_2203, abstract_renderer_1_literal8, line(abstract_renderer_1, 394)).
assign(f_series_visible_in_legend_list_2204, abstract_renderer_1_expr15, line(abstract_renderer_1, 396)).
method_invoc(abstract_renderer_1_expr15, m_boolean_list_1429, line(abstract_renderer_1, 396)).
assign(f_base_series_visible_in_legend_2205, abstract_renderer_1_literal9, line(abstract_renderer_1, 397)).
assign(f_paint_list_2206, abstract_renderer_1_expr22, line(abstract_renderer_1, 399)).
method_invoc(abstract_renderer_1_expr22, m_paint_list_1430, line(abstract_renderer_1, 399)).
assign(f_base_paint_2207, f_default_paint_2193, line(abstract_renderer_1, 400)).
assign(f_auto_populate_series_paint_2208, abstract_renderer_1_literal10, line(abstract_renderer_1, 401)).
assign(f_fill_paint_list_2209, abstract_renderer_1_expr32, line(abstract_renderer_1, 403)).
method_invoc(abstract_renderer_1_expr32, m_paint_list_1430, line(abstract_renderer_1, 403)).
assign(f_base_fill_paint_2210, q_white_53, line(abstract_renderer_1, 404)).
ref(t_color_4, q_white_53, line(abstract_renderer_1, 404)).
assign(f_auto_populate_series_fill_paint_2211, abstract_renderer_1_literal11, line(abstract_renderer_1, 405)).
assign(f_outline_paint_list_2212, abstract_renderer_1_expr42, line(abstract_renderer_1, 407)).
method_invoc(abstract_renderer_1_expr42, m_paint_list_1430, line(abstract_renderer_1, 407)).
assign(f_base_outline_paint_2213, f_default_outline_paint_2194, line(abstract_renderer_1, 408)).
assign(f_auto_populate_series_outline_paint_2214, abstract_renderer_1_literal12, line(abstract_renderer_1, 409)).
assign(f_stroke_list_2215, abstract_renderer_1_expr52, line(abstract_renderer_1, 411)).
method_invoc(abstract_renderer_1_expr52, m_stroke_list_1431, line(abstract_renderer_1, 411)).
assign(f_base_stroke_2216, f_default_stroke_2195, line(abstract_renderer_1, 412)).
assign(f_auto_populate_series_stroke_2217, abstract_renderer_1_literal13, line(abstract_renderer_1, 413)).
assign(f_outline_stroke_list_2218, abstract_renderer_1_expr62, line(abstract_renderer_1, 415)).
method_invoc(abstract_renderer_1_expr62, m_stroke_list_1431, line(abstract_renderer_1, 415)).
assign(f_base_outline_stroke_2219, f_default_outline_stroke_2196, line(abstract_renderer_1, 416)).
assign(f_auto_populate_series_outline_stroke_2220, abstract_renderer_1_literal14, line(abstract_renderer_1, 417)).
assign(f_shape_list_2221, abstract_renderer_1_expr72, line(abstract_renderer_1, 419)).
method_invoc(abstract_renderer_1_expr72, m_shape_list_1432, line(abstract_renderer_1, 419)).
assign(f_base_shape_2222, f_default_shape_2197, line(abstract_renderer_1, 420)).
assign(f_auto_populate_series_shape_2223, abstract_renderer_1_literal15, line(abstract_renderer_1, 421)).
assign(f_item_labels_visible_list_2224, abstract_renderer_1_expr82, line(abstract_renderer_1, 423)).
method_invoc(abstract_renderer_1_expr82, m_boolean_list_1429, line(abstract_renderer_1, 423)).
assign(f_base_item_labels_visible_2225, abstract_renderer_1_literal16, line(abstract_renderer_1, 424)).
assign(f_item_label_font_list_2226, abstract_renderer_1_expr89, line(abstract_renderer_1, 426)).
method_invoc(abstract_renderer_1_expr89, m_object_list_887, line(abstract_renderer_1, 426)).
assign(f_base_item_label_font_2227, abstract_renderer_1_expr93, line(abstract_renderer_1, 427)).
method_invoc(abstract_renderer_1_expr93, m_font_68, line(abstract_renderer_1, 427)).
argument(abstract_renderer_1_literal17, 1, abstract_renderer_1_expr93).
argument(q_plain_53, 2, abstract_renderer_1_expr93).
argument(abstract_renderer_1_literal18, 3, abstract_renderer_1_expr93).
ref(t_font_3, q_plain_53, line(abstract_renderer_1, 427)).
assign(f_item_label_paint_list_2228, abstract_renderer_1_expr97, line(abstract_renderer_1, 429)).
method_invoc(abstract_renderer_1_expr97, m_paint_list_1430, line(abstract_renderer_1, 429)).
assign(f_base_item_label_paint_2229, q_black_53, line(abstract_renderer_1, 430)).
ref(t_color_4, q_black_53, line(abstract_renderer_1, 430)).
assign(f_positive_item_label_position_list_2230, abstract_renderer_1_expr104, line(abstract_renderer_1, 432)).
method_invoc(abstract_renderer_1_expr104, m_object_list_887, line(abstract_renderer_1, 432)).
assign(f_base_positive_item_label_position_2231, abstract_renderer_1_expr108, line(abstract_renderer_1, 433)).
method_invoc(abstract_renderer_1_expr108, m_item_label_position_875, line(abstract_renderer_1, 433)).
argument(q_outside12_53, 1, abstract_renderer_1_expr108).
argument(q_bottom_center_54, 2, abstract_renderer_1_expr108).
assign(f_negative_item_label_position_list_2232, abstract_renderer_1_expr112, line(abstract_renderer_1, 436)).
method_invoc(abstract_renderer_1_expr112, m_object_list_887, line(abstract_renderer_1, 436)).
assign(f_base_negative_item_label_position_2233, abstract_renderer_1_expr116, line(abstract_renderer_1, 437)).
method_invoc(abstract_renderer_1_expr116, m_item_label_position_875, line(abstract_renderer_1, 437)).
argument(q_outside6_55, 1, abstract_renderer_1_expr116).
argument(q_top_center_56, 2, abstract_renderer_1_expr116).
assign(f_create_entities_list_2234, abstract_renderer_1_expr120, line(abstract_renderer_1, 440)).
method_invoc(abstract_renderer_1_expr120, m_boolean_list_1429, line(abstract_renderer_1, 440)).
assign(f_base_create_entities_2235, abstract_renderer_1_literal19, line(abstract_renderer_1, 441)).
assign(f_default_entity_radius_2236, abstract_renderer_1_literal20, line(abstract_renderer_1, 443)).
assign(f_legend_shape_list_2237, abstract_renderer_1_expr130, line(abstract_renderer_1, 445)).
method_invoc(abstract_renderer_1_expr130, m_shape_list_1432, line(abstract_renderer_1, 445)).
assign(f_base_legend_shape_2238, abstract_renderer_1_literal21, line(abstract_renderer_1, 446)).
assign(f_treat_legend_shape_as_line_2239, abstract_renderer_1_literal22, line(abstract_renderer_1, 448)).
assign(f_legend_text_font_2240, abstract_renderer_1_expr140, line(abstract_renderer_1, 450)).
method_invoc(abstract_renderer_1_expr140, m_object_list_887, line(abstract_renderer_1, 450)).
assign(f_base_legend_text_font_2241, abstract_renderer_1_literal23, line(abstract_renderer_1, 451)).
assign(f_legend_text_paint_2242, abstract_renderer_1_expr147, line(abstract_renderer_1, 453)).
method_invoc(abstract_renderer_1_expr147, m_paint_list_1430, line(abstract_renderer_1, 453)).
assign(f_base_legend_text_paint_2243, abstract_renderer_1_literal24, line(abstract_renderer_1, 454)).
assign(f_listener_list_2244, abstract_renderer_1_expr154, line(abstract_renderer_1, 456)).
method_invoc(abstract_renderer_1_expr154, m_event_listener_list_71, line(abstract_renderer_1, 456)).
param(p_series_2245, 1, m_get_item_visible_1434).
param(p_item_2246, 2, m_get_item_visible_1434).
param(p_series_2247, 1, m_is_series_visible_1435).
param(p_series_2248, 1, m_get_series_visible_1436).
param(p_series_2249, 1, m_set_series_visible_1437).
param(p_visible_2250, 2, m_set_series_visible_1437).
param(p_series_2251, 1, m_set_series_visible_1438).
param(p_visible_2252, 2, m_set_series_visible_1438).
param(p_notify_2253, 3, m_set_series_visible_1438).
param(p_visible_2254, 1, m_set_base_series_visible_1440).
param(p_visible_2255, 1, m_set_base_series_visible_1441).
param(p_notify_2256, 2, m_set_base_series_visible_1441).
param(p_series_2257, 1, m_is_series_visible_in_legend_1442).
param(p_series_2258, 1, m_get_series_visible_in_legend_1443).
param(p_series_2259, 1, m_set_series_visible_in_legend_1444).
param(p_visible_2260, 2, m_set_series_visible_in_legend_1444).
param(p_series_2261, 1, m_set_series_visible_in_legend_1445).
param(p_visible_2262, 2, m_set_series_visible_in_legend_1445).
param(p_notify_2263, 3, m_set_series_visible_in_legend_1445).
param(p_visible_2264, 1, m_set_base_series_visible_in_legend_1447).
param(p_visible_2265, 1, m_set_base_series_visible_in_legend_1448).
param(p_notify_2266, 2, m_set_base_series_visible_in_legend_1448).
param(p_row_2267, 1, m_get_item_paint_1449).
param(p_column_2268, 2, m_get_item_paint_1449).
param(p_selected_2269, 3, m_get_item_paint_1449).
param(p_series_2270, 1, m_lookup_series_paint_1450).
param(p_series_2271, 1, m_get_series_paint_1451).
param(p_series_2272, 1, m_set_series_paint_1452).
param(p_paint_2273, 2, m_set_series_paint_1452).
param(p_series_2274, 1, m_set_series_paint_1453).
param(p_paint_2275, 2, m_set_series_paint_1453).
param(p_notify_2276, 3, m_set_series_paint_1453).
param(p_notify_2277, 1, m_clear_series_paints_288).
method_invoc(abstract_renderer_1_expr156, m_clear_1454, line(abstract_renderer_1, 799)).
ref(f_paint_list_2206, abstract_renderer_1_expr156, line(abstract_renderer_1, 799)).
param(p_paint_2278, 1, m_set_base_paint_1456).
param(p_paint_2279, 1, m_set_base_paint_1457).
param(p_notify_2280, 2, m_set_base_paint_1457).
return(f_auto_populate_series_paint_2208, m_get_auto_populate_series_paint_287, line(abstract_renderer_1, 856)).
param(p_auto_2281, 1, m_set_auto_populate_series_paint_1458).
param(p_row_2282, 1, m_get_item_fill_paint_1459).
param(p_column_2283, 2, m_get_item_fill_paint_1459).
param(p_selected_2284, 3, m_get_item_fill_paint_1459).
param(p_series_2285, 1, m_lookup_series_fill_paint_1460).
param(p_series_2286, 1, m_get_series_fill_paint_1461).
param(p_series_2287, 1, m_set_series_fill_paint_1462).
param(p_paint_2288, 2, m_set_series_fill_paint_1462).
param(p_series_2289, 1, m_set_series_fill_paint_1463).
param(p_paint_2290, 2, m_set_series_fill_paint_1463).
param(p_notify_2291, 3, m_set_series_fill_paint_1463).
param(p_paint_2292, 1, m_set_base_fill_paint_1465).
param(p_paint_2293, 1, m_set_base_fill_paint_1466).
param(p_notify_2294, 2, m_set_base_fill_paint_1466).
param(p_auto_2295, 1, m_set_auto_populate_series_fill_paint_1468).
param(p_row_2296, 1, m_get_item_outline_paint_1469).
param(p_column_2297, 2, m_get_item_outline_paint_1469).
param(p_selected_2298, 3, m_get_item_outline_paint_1469).
param(p_series_2299, 1, m_lookup_series_outline_paint_1470).
param(p_series_2300, 1, m_get_series_outline_paint_1471).
param(p_series_2301, 1, m_set_series_outline_paint_1472).
param(p_paint_2302, 2, m_set_series_outline_paint_1472).
param(p_series_2303, 1, m_set_series_outline_paint_1473).
param(p_paint_2304, 2, m_set_series_outline_paint_1473).
param(p_notify_2305, 3, m_set_series_outline_paint_1473).
param(p_paint_2306, 1, m_set_base_outline_paint_1475).
param(p_paint_2307, 1, m_set_base_outline_paint_1476).
param(p_notify_2308, 2, m_set_base_outline_paint_1476).
param(p_auto_2309, 1, m_set_auto_populate_series_outline_paint_1478).
param(p_row_2310, 1, m_get_item_stroke_1479).
param(p_column_2311, 2, m_get_item_stroke_1479).
param(p_selected_2312, 3, m_get_item_stroke_1479).
param(p_series_2313, 1, m_lookup_series_stroke_1480).
param(p_series_2314, 1, m_get_series_stroke_1481).
param(p_series_2315, 1, m_set_series_stroke_1482).
param(p_stroke_2316, 2, m_set_series_stroke_1482).
param(p_series_2317, 1, m_set_series_stroke_1483).
param(p_stroke_2318, 2, m_set_series_stroke_1483).
param(p_notify_2319, 3, m_set_series_stroke_1483).
param(p_notify_2320, 1, m_clear_series_strokes_290).
method_invoc(abstract_renderer_1_expr161, m_clear_1454, line(abstract_renderer_1, 1297)).
ref(f_stroke_list_2215, abstract_renderer_1_expr161, line(abstract_renderer_1, 1297)).
param(p_stroke_2321, 1, m_set_base_stroke_1485).
param(p_stroke_2322, 1, m_set_base_stroke_1486).
param(p_notify_2323, 2, m_set_base_stroke_1486).
return(f_auto_populate_series_stroke_2217, m_get_auto_populate_series_stroke_289, line(abstract_renderer_1, 1357)).
param(p_auto_2324, 1, m_set_auto_populate_series_stroke_1487).
param(p_row_2325, 1, m_get_item_outline_stroke_1488).
param(p_column_2326, 2, m_get_item_outline_stroke_1488).
param(p_selected_2327, 3, m_get_item_outline_stroke_1488).
param(p_series_2328, 1, m_lookup_series_outline_stroke_1489).
param(p_series_2329, 1, m_get_series_outline_stroke_1490).
param(p_series_2330, 1, m_set_series_outline_stroke_1491).
param(p_stroke_2331, 2, m_set_series_outline_stroke_1491).
param(p_series_2332, 1, m_set_series_outline_stroke_1492).
param(p_stroke_2333, 2, m_set_series_outline_stroke_1492).
param(p_notify_2334, 3, m_set_series_outline_stroke_1492).
param(p_stroke_2335, 1, m_set_base_outline_stroke_1494).
param(p_stroke_2336, 1, m_set_base_outline_stroke_1495).
param(p_notify_2337, 2, m_set_base_outline_stroke_1495).
param(p_auto_2338, 1, m_set_auto_populate_series_outline_stroke_1497).
param(p_row_2339, 1, m_get_item_shape_1498).
param(p_column_2340, 2, m_get_item_shape_1498).
param(p_selected_2341, 3, m_get_item_shape_1498).
param(p_series_2342, 1, m_lookup_series_shape_1499).
param(p_series_2343, 1, m_get_series_shape_1500).
param(p_series_2344, 1, m_set_series_shape_1501).
param(p_shape_2345, 2, m_set_series_shape_1501).
param(p_series_2346, 1, m_set_series_shape_1502).
param(p_shape_2347, 2, m_set_series_shape_1502).
param(p_notify_2348, 3, m_set_series_shape_1502).
param(p_shape_2349, 1, m_set_base_shape_1504).
param(p_shape_2350, 1, m_set_base_shape_1505).
param(p_notify_2351, 2, m_set_base_shape_1505).
param(p_auto_2352, 1, m_set_auto_populate_series_shape_1507).
param(p_row_2353, 1, m_is_item_label_visible_1508).
param(p_column_2354, 2, m_is_item_label_visible_1508).
param(p_selected_2355, 3, m_is_item_label_visible_1508).
param(p_series_2356, 1, m_is_series_item_labels_visible_1509).
param(p_series_2357, 1, m_get_series_item_labels_visible_1510).
param(p_series_2358, 1, m_set_series_item_labels_visible_1511).
param(p_visible_2359, 2, m_set_series_item_labels_visible_1511).
param(p_series_2360, 1, m_set_series_item_labels_visible_1512).
param(p_visible_2361, 2, m_set_series_item_labels_visible_1512).
param(p_series_2362, 1, m_set_series_item_labels_visible_1513).
param(p_visible_2363, 2, m_set_series_item_labels_visible_1513).
param(p_notify_2364, 3, m_set_series_item_labels_visible_1513).
param(p_visible_2365, 1, m_set_base_item_labels_visible_1515).
param(p_visible_2366, 1, m_set_base_item_labels_visible_1516).
param(p_notify_2367, 2, m_set_base_item_labels_visible_1516).
param(p_row_2368, 1, m_get_item_label_font_1517).
param(p_column_2369, 2, m_get_item_label_font_1517).
param(p_selected_2370, 3, m_get_item_label_font_1517).
param(p_series_2371, 1, m_get_series_item_label_font_1518).
param(p_series_2372, 1, m_set_series_item_label_font_1519).
param(p_font_2373, 2, m_set_series_item_label_font_1519).
param(p_series_2374, 1, m_set_series_item_label_font_1520).
param(p_font_2375, 2, m_set_series_item_label_font_1520).
param(p_notify_2376, 3, m_set_series_item_label_font_1520).
param(p_font_2377, 1, m_set_base_item_label_font_1522).
method_invoc(abstract_renderer_1_expr167, m_set_base_item_label_font_1523, line(abstract_renderer_1, 1917)).
argument(p_font_2377, 1, abstract_renderer_1_expr167).
argument(abstract_renderer_1_literal26, 2, abstract_renderer_1_expr167).
param(p_font_2378, 1, m_set_base_item_label_font_1523).
param(p_notify_2379, 2, m_set_base_item_label_font_1523).
assign(f_base_item_label_font_2227, p_font_2378, line(abstract_renderer_1, 1931)).
method_invoc(abstract_renderer_1_expr171, m_fire_change_event_1524, line(abstract_renderer_1, 1933)).
param(p_row_2380, 1, m_get_item_label_paint_1525).
param(p_column_2381, 2, m_get_item_label_paint_1525).
param(p_selected_2382, 3, m_get_item_label_paint_1525).
param(p_series_2383, 1, m_get_series_item_label_paint_1526).
param(p_series_2384, 1, m_set_series_item_label_paint_1527).
param(p_paint_2385, 2, m_set_series_item_label_paint_1527).
param(p_series_2386, 1, m_set_series_item_label_paint_1528).
param(p_paint_2387, 2, m_set_series_item_label_paint_1528).
param(p_notify_2388, 3, m_set_series_item_label_paint_1528).
param(p_paint_2389, 1, m_set_base_item_label_paint_1530).
method_invoc(abstract_renderer_1_expr172, m_set_base_item_label_paint_1531, line(abstract_renderer_1, 2024)).
argument(p_paint_2389, 1, abstract_renderer_1_expr172).
argument(abstract_renderer_1_literal27, 2, abstract_renderer_1_expr172).
param(p_paint_2390, 1, m_set_base_item_label_paint_1531).
param(p_notify_2391, 2, m_set_base_item_label_paint_1531).
assign(f_base_item_label_paint_2229, p_paint_2390, line(abstract_renderer_1, 2041)).
method_invoc(abstract_renderer_1_expr177, m_fire_change_event_1524, line(abstract_renderer_1, 2043)).
param(p_row_2392, 1, m_get_positive_item_label_position_1532).
param(p_column_2393, 2, m_get_positive_item_label_position_1532).
param(p_selected_2394, 3, m_get_positive_item_label_position_1532).
param(p_series_2395, 1, m_get_series_positive_item_label_position_1533).
param(p_series_2396, 1, m_set_series_positive_item_label_position_1534).
param(p_position_2397, 2, m_set_series_positive_item_label_position_1534).
param(p_series_2398, 1, m_set_series_positive_item_label_position_1535).
param(p_position_2399, 2, m_set_series_positive_item_label_position_1535).
param(p_notify_2400, 3, m_set_series_positive_item_label_position_1535).
param(p_position_2401, 1, m_set_base_positive_item_label_position_1537).
param(p_position_2402, 1, m_set_base_positive_item_label_position_1538).
param(p_notify_2403, 2, m_set_base_positive_item_label_position_1538).
param(p_row_2404, 1, m_get_negative_item_label_position_1539).
param(p_column_2405, 2, m_get_negative_item_label_position_1539).
param(p_selected_2406, 3, m_get_negative_item_label_position_1539).
param(p_series_2407, 1, m_get_series_negative_item_label_position_1540).
param(p_series_2408, 1, m_set_series_negative_item_label_position_1541).
param(p_position_2409, 2, m_set_series_negative_item_label_position_1541).
param(p_series_2410, 1, m_set_series_negative_item_label_position_1542).
param(p_position_2411, 2, m_set_series_negative_item_label_position_1542).
param(p_notify_2412, 3, m_set_series_negative_item_label_position_1542).
param(p_position_2413, 1, m_set_base_negative_item_label_position_1544).
param(p_position_2414, 1, m_set_base_negative_item_label_position_1545).
param(p_notify_2415, 2, m_set_base_negative_item_label_position_1545).
param(p_offset_2416, 1, m_set_item_label_anchor_offset_1547).
param(p_series_2417, 1, m_get_item_create_entity_1548).
param(p_item_2418, 2, m_get_item_create_entity_1548).
param(p_selected_2419, 3, m_get_item_create_entity_1548).
param(p_series_2420, 1, m_get_series_create_entities_1549).
param(p_series_2421, 1, m_set_series_create_entities_1550).
param(p_create_2422, 2, m_set_series_create_entities_1550).
param(p_series_2423, 1, m_set_series_create_entities_1551).
param(p_create_2424, 2, m_set_series_create_entities_1551).
param(p_notify_2425, 3, m_set_series_create_entities_1551).
param(p_create_2426, 1, m_set_base_create_entities_1553).
param(p_create_2427, 1, m_set_base_create_entities_1554).
param(p_notify_2428, 2, m_set_base_create_entities_1554).
param(p_radius_2429, 1, m_set_default_entity_radius_1556).
param(p_series_2430, 1, m_lookup_legend_shape_1557).
param(p_series_2431, 1, m_get_legend_shape_1558).
param(p_series_2432, 1, m_set_legend_shape_1559).
param(p_shape_2433, 2, m_set_legend_shape_1559).
param(p_shape_2434, 1, m_set_base_legend_shape_1561).
param(p_treat_as_line_2435, 1, m_set_treat_legend_shape_as_line_1563).
param(p_series_2436, 1, m_lookup_legend_text_font_1564).
param(p_series_2437, 1, m_get_legend_text_font_1565).
param(p_series_2438, 1, m_set_legend_text_font_1566).
param(p_font_2439, 2, m_set_legend_text_font_1566).
param(p_font_2440, 1, m_set_base_legend_text_font_1568).
param(p_series_2441, 1, m_lookup_legend_text_paint_1569).
param(p_series_2442, 1, m_get_legend_text_paint_1570).
param(p_series_2443, 1, m_set_legend_text_paint_1571).
param(p_paint_2444, 2, m_set_legend_text_paint_1571).
param(p_paint_2445, 1, m_set_base_legend_text_paint_1573).
return(f_data_bounds_includes_visible_series_only_2201, m_get_data_bounds_includes_visible_series_only_1574, line(abstract_renderer_1, 2694)).
param(p_visible_only_2446, 1, m_set_data_bounds_includes_visible_series_only_1575).
assign(f_adj_2447, abstract_renderer_1_expr180, line(abstract_renderer_1, 2712)).
method_invoc(abstract_renderer_1_expr180, m_cos_1576, line(abstract_renderer_1, 2712)).
argument(abstract_renderer_1_expr181, 1, abstract_renderer_1_expr180).
ref(t_math_18, abstract_renderer_1_expr180, line(abstract_renderer_1, 2712)).
ref(t_math_18, q_pi_57, line(abstract_renderer_1, 2712)).
assign(f_opp_2448, abstract_renderer_1_expr182, line(abstract_renderer_1, 2715)).
method_invoc(abstract_renderer_1_expr182, m_sin_1577, line(abstract_renderer_1, 2715)).
argument(abstract_renderer_1_expr183, 1, abstract_renderer_1_expr182).
ref(t_math_18, abstract_renderer_1_expr182, line(abstract_renderer_1, 2715)).
ref(t_math_18, q_pi_58, line(abstract_renderer_1, 2715)).
param(p_anchor_2449, 1, m_calculate_label_anchor_point_1578).
param(p_x_2450, 2, m_calculate_label_anchor_point_1578).
param(p_y_2451, 3, m_calculate_label_anchor_point_1578).
param(p_orientation_2452, 4, m_calculate_label_anchor_point_1578).
param(p_listener_2453, 1, m_add_change_listener_1579).
method_invoc(abstract_renderer_1_expr185, m_add_355, line(abstract_renderer_1, 2847)).
argument(abstract_renderer_1_expr186, 1, abstract_renderer_1_expr185).
argument(p_listener_2453, 2, abstract_renderer_1_expr185).
ref(f_listener_list_2244, abstract_renderer_1_expr185, line(abstract_renderer_1, 2847)).
param(p_listener_2454, 1, m_remove_change_listener_1580).
method_invoc(abstract_renderer_1_expr190, m_remove_1581, line(abstract_renderer_1, 2862)).
argument(abstract_renderer_1_expr191, 1, abstract_renderer_1_expr190).
argument(p_listener_2454, 2, abstract_renderer_1_expr190).
ref(f_listener_list_2244, abstract_renderer_1_expr190, line(abstract_renderer_1, 2862)).
param(p_listener_2455, 1, m_has_listener_1582).
method_invoc(abstract_renderer_1_expr194, m_notify_listeners_1583, line(abstract_renderer_1, 2895)).
argument(abstract_renderer_1_expr195, 1, abstract_renderer_1_expr194).
method_invoc(abstract_renderer_1_expr195, m_renderer_change_event_774, line(abstract_renderer_1, 2895)).
argument(abstract_renderer_1_expr196, 1, abstract_renderer_1_expr195).
param(p_event_2456, 1, m_notify_listeners_1583).
assign(v_ls_2457, abstract_renderer_1_expr197, line(abstract_renderer_1, 2904)).
method_invoc(abstract_renderer_1_expr197, m_get_listener_list_145, line(abstract_renderer_1, 2904)).
ref(f_listener_list_2244, abstract_renderer_1_expr197, line(abstract_renderer_1, 2904)).
assign(v_i_2458, abstract_renderer_1_expr201, line(abstract_renderer_1, 2905)).
ref(v_ls_2457, q_length_58, line(abstract_renderer_1, 2905)).
assign(v_i_2458, abstract_renderer_1_literal35, line(abstract_renderer_1, 2905)).
ref(v_ls_2457, abstract_renderer_1_expr205, line(abstract_renderer_1, 2906)).
method_invoc(abstract_renderer_1_expr207, m_renderer_changed_1584, line(abstract_renderer_1, 2907)).
argument(p_event_2456, 1, abstract_renderer_1_expr207).
ref(abstract_renderer_1_expr208, abstract_renderer_1_expr207, line(abstract_renderer_1, 2907)).
assign(abstract_renderer_1_expr208, abstract_renderer_1_expr209, line(abstract_renderer_1, 2907)).
assign(abstract_renderer_1_expr209, abstract_renderer_1_expr210, line(abstract_renderer_1, 2907)).
ref(v_ls_2457, abstract_renderer_1_expr210, line(abstract_renderer_1, 2907)).
param(p_obj_2459, 1, m_equals_1585).
throw(m_clone_1587, clone_not_supported_exception).
param(p_stream_2460, 1, m_write_object_1588).
throw(m_write_object_1588, ioexception).
param(p_stream_2461, 1, m_read_object_1589).
throw(m_read_object_1589, ioexception).
throw(m_read_object_1589, class_not_found_exception).

%renderer_change_event_1 - org.jfree.chart.event.RendererChangeEvent
param(p_renderer_1261, 1, m_renderer_change_event_774).
method_invoc(renderer_change_event_1_expr1, m_renderer_change_event_775, line(renderer_change_event_1, 70)).
argument(p_renderer_1261, 1, renderer_change_event_1_expr1).
argument(renderer_change_event_1_literal1, 2, renderer_change_event_1_expr1).
param(p_renderer_1262, 1, m_renderer_change_event_775).
param(p_series_visibility_changed_1263, 2, m_renderer_change_event_775).
method_invoc(renderer_change_event_1_expr2, m_chart_change_event_759, line(renderer_change_event_1, 82)).
argument(p_renderer_1262, 1, renderer_change_event_1_expr2).
assign(f_renderer_1264, p_renderer_1262, line(renderer_change_event_1, 83)).
assign(f_series_visibility_changed_1265, p_series_visibility_changed_1263, line(renderer_change_event_1, 84)).
return(f_series_visibility_changed_1265, m_get_series_visibility_changed_777, line(renderer_change_event_1, 105)).

%licences_1 - org.jfree.chart.ui.Licences
assign(f_singleton_3170, licences_1_expr3, line(licences_1, 800)).
method_invoc(licences_1_expr3, m_licences_1928, line(licences_1, 800)).
return(f_singleton_3170, m_get_instance_1927, line(licences_1, 802)).
return(f_lgpl_3171, m_get_lgpl_1930, line(licences_1, 822)).

%legend_title_1 - org.jfree.chart.title.LegendTitle
assign(f_default_item_font_3005, legend_title_1_expr1, line(legend_title_1, 115)).
method_invoc(legend_title_1_expr1, m_font_68, line(legend_title_1, 115)).
argument(legend_title_1_literal1, 1, legend_title_1_expr1).
argument(q_plain_59, 2, legend_title_1_expr1).
argument(legend_title_1_literal2, 3, legend_title_1_expr1).
ref(t_font_3, q_plain_59, line(legend_title_1, 115)).
assign(f_default_item_paint_3006, q_black_59, line(legend_title_1, 119)).
ref(t_color_4, q_black_59, line(legend_title_1, 119)).
param(p_source_3007, 1, m_legend_title_76).
method_invoc(legend_title_1_expr2, m_legend_title_1814, line(legend_title_1, 177)).
argument(p_source_3007, 1, legend_title_1_expr2).
argument(legend_title_1_expr3, 2, legend_title_1_expr2).
argument(legend_title_1_expr4, 3, legend_title_1_expr2).
method_invoc(legend_title_1_expr3, m_flow_arrangement_737, line(legend_title_1, 177)).
method_invoc(legend_title_1_expr4, m_column_arrangement_726, line(legend_title_1, 177)).
param(p_source_3008, 1, m_legend_title_1814).
param(p_h_layout_3009, 2, m_legend_title_1814).
param(p_v_layout_3010, 3, m_legend_title_1814).
assign(f_sources_3011, legend_title_1_expr7, line(legend_title_1, 191)).
assign(f_items_3012, legend_title_1_expr12, line(legend_title_1, 192)).
method_invoc(legend_title_1_expr12, m_block_container_713, line(legend_title_1, 192)).
argument(p_h_layout_3009, 1, legend_title_1_expr12).
assign(f_h_layout_3013, p_h_layout_3009, line(legend_title_1, 193)).
assign(f_v_layout_3014, p_v_layout_3010, line(legend_title_1, 194)).
assign(f_background_paint_3015, legend_title_1_literal3, line(legend_title_1, 195)).
assign(f_legend_item_graphic_edge_3016, q_left_59, line(legend_title_1, 196)).
ref(t_rectangle_edge_7, q_left_59, line(legend_title_1, 196)).
assign(f_legend_item_graphic_anchor_3017, q_center_60, line(legend_title_1, 197)).
ref(t_rectangle_anchor_35, q_center_60, line(legend_title_1, 197)).
assign(f_legend_item_graphic_location_3018, q_center_61, line(legend_title_1, 198)).
ref(t_rectangle_anchor_35, q_center_61, line(legend_title_1, 198)).
assign(f_legend_item_graphic_padding_3019, legend_title_1_expr34, line(legend_title_1, 199)).
method_invoc(legend_title_1_expr34, m_rectangle_insets_13, line(legend_title_1, 199)).
argument(legend_title_1_literal4, 1, legend_title_1_expr34).
argument(legend_title_1_literal5, 2, legend_title_1_expr34).
argument(legend_title_1_literal6, 3, legend_title_1_expr34).
argument(legend_title_1_literal7, 4, legend_title_1_expr34).
assign(f_item_font_3020, f_default_item_font_3005, line(legend_title_1, 200)).
assign(f_item_paint_3021, f_default_item_paint_3006, line(legend_title_1, 201)).
assign(f_item_label_padding_3022, legend_title_1_expr44, line(legend_title_1, 202)).
method_invoc(legend_title_1_expr44, m_rectangle_insets_13, line(legend_title_1, 202)).
argument(legend_title_1_literal8, 1, legend_title_1_expr44).
argument(legend_title_1_literal9, 2, legend_title_1_expr44).
argument(legend_title_1_literal10, 3, legend_title_1_expr44).
argument(legend_title_1_literal11, 4, legend_title_1_expr44).
param(p_sources_3023, 1, m_set_sources_1816).
return(f_background_paint_3015, m_get_background_paint_234, line(legend_title_1, 234)).
param(p_paint_3024, 1, m_set_background_paint_80).
assign(f_background_paint_3015, p_paint_3024, line(legend_title_1, 244)).
method_invoc(legend_title_1_expr51, m_notify_listeners_1817, line(legend_title_1, 245)).
argument(legend_title_1_expr52, 1, legend_title_1_expr51).
method_invoc(legend_title_1_expr52, m_title_change_event_778, line(legend_title_1, 245)).
argument(legend_title_1_expr53, 1, legend_title_1_expr52).
param(p_edge_3025, 1, m_set_legend_item_graphic_edge_1819).
param(p_anchor_3026, 1, m_set_legend_item_graphic_anchor_1821).
param(p_anchor_3027, 1, m_set_legend_item_graphic_location_1823).
param(p_padding_3028, 1, m_set_legend_item_graphic_padding_1825).
param(p_font_3029, 1, m_set_item_font_235).
assign(f_item_font_3020, p_font_3029, line(legend_title_1, 351)).
method_invoc(legend_title_1_expr58, m_notify_listeners_1817, line(legend_title_1, 352)).
argument(legend_title_1_expr59, 1, legend_title_1_expr58).
method_invoc(legend_title_1_expr59, m_title_change_event_778, line(legend_title_1, 352)).
argument(legend_title_1_expr60, 1, legend_title_1_expr59).
param(p_paint_3030, 1, m_set_item_paint_236).
assign(f_item_paint_3021, p_paint_3030, line(legend_title_1, 373)).
method_invoc(legend_title_1_expr65, m_notify_listeners_1817, line(legend_title_1, 374)).
argument(legend_title_1_expr66, 1, legend_title_1_expr65).
method_invoc(legend_title_1_expr66, m_title_change_event_778, line(legend_title_1, 374)).
argument(legend_title_1_expr67, 1, legend_title_1_expr66).
param(p_padding_3031, 1, m_set_item_label_padding_1829).
param(p_item_3032, 1, m_create_legend_item_block_1831).
param(p_g_2_3033, 1, m_arrange_1833).
param(p_constraint_3034, 2, m_arrange_1833).
param(p_g_2_3035, 1, m_draw_1834).
param(p_area_3036, 2, m_draw_1834).
param(p_g_2_3037, 1, m_draw_1835).
param(p_area_3038, 2, m_draw_1835).
param(p_params_3039, 3, m_draw_1835).
return(f_wrapper_3040, m_get_wrapper_237, line(legend_title_1, 570)).
param(p_wrapper_3041, 1, m_set_wrapper_1836).
param(p_obj_3042, 1, m_equals_1837).
param(p_stream_3043, 1, m_write_object_1838).
throw(m_write_object_1838, ioexception).
param(p_stream_3044, 1, m_read_object_1839).
throw(m_read_object_1839, ioexception).
throw(m_read_object_1839, class_not_found_exception).

%rectangle_insets_1 - org.jfree.chart.util.RectangleInsets
assign(f_zero_insets_3274, rectangle_insets_1_expr1, line(rectangle_insets_1, 65)).
method_invoc(rectangle_insets_1_expr1, m_rectangle_insets_968, line(rectangle_insets_1, 65)).
argument(q_absolute_69, 1, rectangle_insets_1_expr1).
argument(rectangle_insets_1_literal1, 2, rectangle_insets_1_expr1).
argument(rectangle_insets_1_literal2, 3, rectangle_insets_1_expr1).
argument(rectangle_insets_1_literal3, 4, rectangle_insets_1_expr1).
argument(rectangle_insets_1_literal4, 5, rectangle_insets_1_expr1).
param(p_top_3275, 1, m_rectangle_insets_13).
param(p_left_3276, 2, m_rectangle_insets_13).
param(p_bottom_3277, 3, m_rectangle_insets_13).
param(p_right_3278, 4, m_rectangle_insets_13).
method_invoc(rectangle_insets_1_expr2, m_rectangle_insets_968, line(rectangle_insets_1, 102)).
argument(q_absolute_70, 1, rectangle_insets_1_expr2).
argument(p_top_3275, 2, rectangle_insets_1_expr2).
argument(p_left_3276, 3, rectangle_insets_1_expr2).
argument(p_bottom_3277, 4, rectangle_insets_1_expr2).
argument(p_right_3278, 5, rectangle_insets_1_expr2).
ref(t_unit_type_28, q_absolute_70, line(rectangle_insets_1, 102)).
param(p_unit_type_3280, 1, m_rectangle_insets_968).
param(p_top_3281, 2, m_rectangle_insets_968).
param(p_left_3282, 3, m_rectangle_insets_968).
param(p_bottom_3283, 4, m_rectangle_insets_968).
param(p_right_3284, 5, m_rectangle_insets_968).
assign(f_unit_type_3285, p_unit_type_3280, line(rectangle_insets_1, 120)).
assign(f_top_3286, p_top_3281, line(rectangle_insets_1, 121)).
assign(f_bottom_3287, p_bottom_3283, line(rectangle_insets_1, 122)).
assign(f_left_3288, p_left_3282, line(rectangle_insets_1, 123)).
assign(f_right_3289, p_right_3284, line(rectangle_insets_1, 124)).
param(p_obj_3290, 1, m_equals_1102).
assign(rectangle_insets_1_expr22, rectangle_insets_1_expr23, line(rectangle_insets_1, 184)).
assign(v_that_3291, rectangle_insets_1_expr24, line(rectangle_insets_1, 187)).
assign(rectangle_insets_1_expr24, p_obj_3290, line(rectangle_insets_1, 187)).
ref(v_that_3291, q_unit_type_70, line(rectangle_insets_1, 188)).
ref(v_that_3291, q_left_71, line(rectangle_insets_1, 191)).
return(rectangle_insets_1_literal6, m_equals_1102, line(rectangle_insets_1, 192)).
param(p_base_3292, 1, m_create_adjusted_rectangle_2004).
param(p_horizontal_3293, 2, m_create_adjusted_rectangle_2004).
param(p_vertical_3294, 3, m_create_adjusted_rectangle_2004).
param(p_base_3295, 1, m_create_inset_rectangle_2005).
param(p_base_3296, 1, m_create_inset_rectangle_2006).
param(p_horizontal_3297, 2, m_create_inset_rectangle_2006).
param(p_vertical_3298, 3, m_create_inset_rectangle_2006).
param(p_base_3299, 1, m_create_outset_rectangle_2007).
param(p_base_3300, 1, m_create_outset_rectangle_2008).
param(p_horizontal_3301, 2, m_create_outset_rectangle_2008).
param(p_vertical_3302, 3, m_create_outset_rectangle_2008).
param(p_height_3303, 1, m_calculate_top_inset_2009).
param(p_height_3304, 1, m_calculate_top_outset_2010).
param(p_height_3305, 1, m_calculate_bottom_inset_2011).
param(p_height_3306, 1, m_calculate_bottom_outset_2012).
param(p_width_3307, 1, m_calculate_left_inset_2013).
param(p_width_3308, 1, m_calculate_left_outset_2014).
param(p_width_3309, 1, m_calculate_right_inset_2015).
param(p_width_3310, 1, m_calculate_right_outset_2016).
param(p_width_3311, 1, m_trim_width_2017).
param(p_width_3312, 1, m_extend_width_2018).
param(p_height_3313, 1, m_trim_height_2019).
param(p_height_3314, 1, m_extend_height_2020).
param(p_area_3315, 1, m_trim_2021).

%abstract_object_list_1 - org.jfree.chart.util.AbstractObjectList
assign(f_size_3199, abstract_object_list_1_literal1, line(abstract_object_list_1, 68)).
assign(f_increment_3200, f_default_initial_capacity_3201, line(abstract_object_list_1, 71)).
method_invoc(abstract_object_list_1_expr1, m_abstract_object_list_1945, line(abstract_object_list_1, 77)).
argument(f_default_initial_capacity_3201, 1, abstract_object_list_1_expr1).
param(p_initial_capacity_3202, 1, m_abstract_object_list_1945).
method_invoc(abstract_object_list_1_expr2, m_abstract_object_list_1946, line(abstract_object_list_1, 86)).
argument(p_initial_capacity_3202, 1, abstract_object_list_1_expr2).
argument(p_initial_capacity_3202, 2, abstract_object_list_1_expr2).
param(p_initial_capacity_3203, 1, m_abstract_object_list_1946).
param(p_increment_3204, 2, m_abstract_object_list_1946).
assign(f_objects_3205, abstract_object_list_1_expr5, line(abstract_object_list_1, 96)).
assign(f_increment_3200, p_increment_3204, line(abstract_object_list_1, 97)).
param(p_index_3206, 1, m_get_1947).
assign(v_result_3207, abstract_object_list_1_literal2, line(abstract_object_list_1, 109)).
assign(v_result_3207, abstract_object_list_1_expr16, line(abstract_object_list_1, 111)).
ref(f_objects_3205, abstract_object_list_1_expr16, line(abstract_object_list_1, 111)).
return(v_result_3207, m_get_1947, line(abstract_object_list_1, 113)).
param(p_index_3208, 1, m_set_1948).
param(p_object_3209, 2, m_set_1948).
ref(f_objects_3205, abstract_object_list_1_expr21, line(abstract_object_list_1, 126)).
assign(abstract_object_list_1_expr25, p_object_3209, line(abstract_object_list_1, 131)).
ref(f_objects_3205, abstract_object_list_1_expr25, line(abstract_object_list_1, 131)).
assign(f_size_3199, abstract_object_list_1_expr30, line(abstract_object_list_1, 132)).
method_invoc(abstract_object_list_1_expr30, m_max_1308, line(abstract_object_list_1, 132)).
argument(f_size_3199, 1, abstract_object_list_1_expr30).
argument(abstract_object_list_1_expr33, 2, abstract_object_list_1_expr30).
ref(t_math_18, abstract_object_list_1_expr30, line(abstract_object_list_1, 132)).
method_invoc(abstract_object_list_1_expr35, m_fill_1949, line(abstract_object_list_1, 139)).
argument(f_objects_3205, 1, abstract_object_list_1_expr35).
argument(abstract_object_list_1_literal6, 2, abstract_object_list_1_expr35).
ref(t_arrays_40, abstract_object_list_1_expr35, line(abstract_object_list_1, 139)).
assign(f_size_3199, abstract_object_list_1_literal7, line(abstract_object_list_1, 140)).
return(f_size_3199, m_size_1171, line(abstract_object_list_1, 149)).
param(p_object_3211, 1, m_index_of_1950).
assign(v_index_3212, abstract_object_list_1_literal8, line(abstract_object_list_1, 161)).
ref(f_objects_3205, abstract_object_list_1_expr49, line(abstract_object_list_1, 162)).
return(abstract_object_list_1_expr52, m_index_of_1950, line(abstract_object_list_1, 163)).
assign(abstract_object_list_1_expr52, v_index_3212, line(abstract_object_list_1, 163)).
return(abstract_object_list_1_expr53, m_index_of_1950, line(abstract_object_list_1, 166)).
param(p_obj_3213, 1, m_equals_1951).
throw(m_clone_1953, clone_not_supported_exception).
param(p_stream_3214, 1, m_write_object_1954).
throw(m_write_object_1954, ioexception).
param(p_stream_3215, 1, m_read_object_1955).
throw(m_read_object_1955, ioexception).
throw(m_read_object_1955, class_not_found_exception).

%standard_pie_tool_tip_generator_1 - org.jfree.chart.labels.StandardPieToolTipGenerator
method_invoc(standard_pie_tool_tip_generator_1_expr1, m_standard_pie_tool_tip_generator_894, line(standard_pie_tool_tip_generator_1, 91)).
argument(f_default_tooltip_format_1392, 1, standard_pie_tool_tip_generator_1_expr1).
param(p_locale_1393, 1, m_standard_pie_tool_tip_generator_895).
param(p_label_format_1394, 1, m_standard_pie_tool_tip_generator_894).
method_invoc(standard_pie_tool_tip_generator_1_expr2, m_standard_pie_tool_tip_generator_896, line(standard_pie_tool_tip_generator_1, 112)).
argument(p_label_format_1394, 1, standard_pie_tool_tip_generator_1_expr2).
argument(standard_pie_tool_tip_generator_1_expr3, 2, standard_pie_tool_tip_generator_1_expr2).
method_invoc(standard_pie_tool_tip_generator_1_expr3, m_get_default_389, line(standard_pie_tool_tip_generator_1, 112)).
ref(t_locale_13, standard_pie_tool_tip_generator_1_expr3, line(standard_pie_tool_tip_generator_1, 112)).
param(p_label_format_1395, 1, m_standard_pie_tool_tip_generator_896).
param(p_locale_1396, 2, m_standard_pie_tool_tip_generator_896).
method_invoc(standard_pie_tool_tip_generator_1_expr4, m_standard_pie_tool_tip_generator_897, line(standard_pie_tool_tip_generator_1, 124)).
argument(p_label_format_1395, 1, standard_pie_tool_tip_generator_1_expr4).
argument(standard_pie_tool_tip_generator_1_expr5, 2, standard_pie_tool_tip_generator_1_expr4).
argument(standard_pie_tool_tip_generator_1_expr6, 3, standard_pie_tool_tip_generator_1_expr4).
method_invoc(standard_pie_tool_tip_generator_1_expr5, m_get_number_instance_898, line(standard_pie_tool_tip_generator_1, 124)).
argument(p_locale_1396, 1, standard_pie_tool_tip_generator_1_expr5).
ref(t_number_format_26, standard_pie_tool_tip_generator_1_expr5, line(standard_pie_tool_tip_generator_1, 124)).
param(p_label_format_1397, 1, m_standard_pie_tool_tip_generator_897).
param(p_number_format_1398, 2, m_standard_pie_tool_tip_generator_897).
param(p_percent_format_1399, 3, m_standard_pie_tool_tip_generator_897).
method_invoc(standard_pie_tool_tip_generator_1_expr7, m_abstract_pie_item_label_generator_845, line(standard_pie_tool_tip_generator_1, 140)).
argument(p_label_format_1397, 1, standard_pie_tool_tip_generator_1_expr7).
argument(p_number_format_1398, 2, standard_pie_tool_tip_generator_1_expr7).
argument(p_percent_format_1399, 3, standard_pie_tool_tip_generator_1_expr7).
param(p_dataset_1400, 1, m_generate_tool_tip_899).
param(p_key_1401, 2, m_generate_tool_tip_899).
throw(m_clone_900, clone_not_supported_exception).

%axis_1 - org.jfree.chart.axis.Axis
assign(f_default_axis_label_font_530, axis_1_expr1, line(axis_1, 143)).
method_invoc(axis_1_expr1, m_font_68, line(axis_1, 143)).
argument(axis_1_literal1, 1, axis_1_expr1).
argument(q_plain_22, 2, axis_1_expr1).
argument(axis_1_literal2, 3, axis_1_expr1).
assign(f_default_axis_label_paint_531, q_black_22, line(axis_1, 147)).
ref(t_color_4, q_black_22, line(axis_1, 147)).
assign(f_default_axis_label_insets_532, axis_1_expr2, line(axis_1, 150)).
assign(f_default_axis_line_paint_533, q_gray_22, line(axis_1, 154)).
ref(t_color_4, q_gray_22, line(axis_1, 154)).
assign(f_default_axis_line_stroke_534, axis_1_expr3, line(axis_1, 157)).
method_invoc(axis_1_expr3, m_basic_stroke_73, line(axis_1, 157)).
argument(axis_1_literal3, 1, axis_1_expr3).
assign(f_default_tick_label_font_535, axis_1_expr4, line(axis_1, 163)).
method_invoc(axis_1_expr4, m_font_68, line(axis_1, 163)).
argument(axis_1_literal4, 1, axis_1_expr4).
argument(q_plain_22, 2, axis_1_expr4).
argument(axis_1_literal5, 3, axis_1_expr4).
assign(f_default_tick_label_paint_536, q_black_22, line(axis_1, 167)).
ref(t_color_4, q_black_22, line(axis_1, 167)).
assign(f_default_tick_label_insets_537, axis_1_expr5, line(axis_1, 170)).
assign(f_default_tick_mark_stroke_538, axis_1_expr6, line(axis_1, 177)).
method_invoc(axis_1_expr6, m_basic_stroke_73, line(axis_1, 177)).
argument(axis_1_literal6, 1, axis_1_expr6).
assign(f_default_tick_mark_paint_539, q_gray_22, line(axis_1, 180)).
ref(t_color_4, q_gray_22, line(axis_1, 180)).
param(p_label_540, 1, m_axis_299).
assign(f_label_541, p_label_540, line(axis_1, 309)).
assign(f_visible_542, f_default_axis_visible_543, line(axis_1, 310)).
assign(f_label_font_544, f_default_axis_label_font_530, line(axis_1, 311)).
assign(f_label_paint_545, f_default_axis_label_paint_531, line(axis_1, 312)).
assign(f_label_insets_546, f_default_axis_label_insets_532, line(axis_1, 313)).
assign(f_label_angle_547, axis_1_literal7, line(axis_1, 314)).
assign(f_label_tool_tip_548, axis_1_literal8, line(axis_1, 315)).
assign(f_label_url_549, axis_1_literal9, line(axis_1, 316)).
assign(f_axis_line_visible_550, axis_1_literal10, line(axis_1, 318)).
assign(f_axis_line_paint_551, f_default_axis_line_paint_533, line(axis_1, 319)).
assign(f_axis_line_stroke_552, f_default_axis_line_stroke_534, line(axis_1, 320)).
assign(f_tick_labels_visible_553, f_default_tick_labels_visible_554, line(axis_1, 322)).
assign(f_tick_label_font_555, f_default_tick_label_font_535, line(axis_1, 323)).
assign(f_tick_label_paint_556, f_default_tick_label_paint_536, line(axis_1, 324)).
assign(f_tick_label_insets_557, f_default_tick_label_insets_537, line(axis_1, 325)).
assign(f_tick_marks_visible_558, f_default_tick_marks_visible_559, line(axis_1, 327)).
assign(f_tick_mark_stroke_560, f_default_tick_mark_stroke_538, line(axis_1, 328)).
assign(f_tick_mark_paint_561, f_default_tick_mark_paint_539, line(axis_1, 329)).
assign(f_tick_mark_inside_length_562, f_default_tick_mark_inside_length_563, line(axis_1, 330)).
assign(f_tick_mark_outside_length_564, f_default_tick_mark_outside_length_565, line(axis_1, 331)).
assign(f_minor_tick_marks_visible_566, axis_1_literal11, line(axis_1, 333)).
assign(f_minor_tick_mark_inside_length_567, axis_1_literal12, line(axis_1, 334)).
assign(f_minor_tick_mark_outside_length_568, axis_1_literal13, line(axis_1, 335)).
assign(f_plot_569, axis_1_literal14, line(axis_1, 337)).
assign(f_listener_list_570, axis_1_expr81, line(axis_1, 339)).
method_invoc(axis_1_expr81, m_event_listener_list_71, line(axis_1, 339)).
param(p_flag_571, 1, m_set_visible_301).
param(p_label_572, 1, m_set_label_303).
param(p_font_573, 1, m_set_label_font_280).
method_invoc(axis_1_expr85, m_equals_305, line(axis_1, 434)).
argument(p_font_573, 1, axis_1_expr85).
ref(f_label_font_544, axis_1_expr85, line(axis_1, 434)).
assign(f_label_font_544, p_font_573, line(axis_1, 435)).
method_invoc(axis_1_expr91, m_fire_change_event_306, line(axis_1, 436)).
param(p_paint_574, 1, m_set_label_paint_281).
assign(f_label_paint_545, p_paint_574, line(axis_1, 463)).
method_invoc(axis_1_expr96, m_fire_change_event_306, line(axis_1, 464)).
param(p_insets_575, 1, m_set_label_insets_309).
param(p_insets_576, 1, m_set_label_insets_310).
param(p_notify_577, 2, m_set_label_insets_310).
param(p_angle_578, 1, m_set_label_angle_312).
param(p_text_579, 1, m_set_label_tool_tip_314).
param(p_url_580, 1, m_set_label_url_316).
param(p_visible_581, 1, m_set_axis_line_visible_318).
param(p_paint_582, 1, m_set_axis_line_paint_320).
param(p_stroke_583, 1, m_set_axis_line_stroke_322).
param(p_flag_584, 1, m_set_tick_labels_visible_324).
param(p_flag_585, 1, m_set_minor_tick_marks_visible_326).
param(p_font_586, 1, m_set_tick_label_font_282).
method_invoc(axis_1_expr99, m_equals_305, line(axis_1, 765)).
argument(p_font_586, 1, axis_1_expr99).
ref(f_tick_label_font_555, axis_1_expr99, line(axis_1, 765)).
param(p_paint_587, 1, m_set_tick_label_paint_283).
assign(f_tick_label_paint_556, p_paint_587, line(axis_1, 795)).
method_invoc(axis_1_expr106, m_fire_change_event_306, line(axis_1, 796)).
param(p_insets_588, 1, m_set_tick_label_insets_330).
param(p_flag_589, 1, m_set_tick_marks_visible_332).
param(p_length_590, 1, m_set_tick_mark_inside_length_334).
param(p_length_591, 1, m_set_tick_mark_outside_length_336).
param(p_stroke_592, 1, m_set_tick_mark_stroke_338).
param(p_paint_593, 1, m_set_tick_mark_paint_340).
param(p_length_594, 1, m_set_minor_tick_mark_inside_length_342).
param(p_length_595, 1, m_set_minor_tick_mark_outside_length_344).
return(f_plot_569, m_get_plot_345, line(axis_1, 1030)).
param(p_plot_596, 1, m_set_plot_346).
assign(f_plot_569, p_plot_596, line(axis_1, 1043)).
method_invoc(axis_1_expr112, m_configure_347, line(axis_1, 1044)).
param(p_dimension_597, 1, m_set_fixed_dimension_349).
param(p_g_2_598, 1, m_reserve_space_350).
param(p_plot_599, 2, m_reserve_space_350).
param(p_plot_area_600, 3, m_reserve_space_350).
param(p_edge_601, 4, m_reserve_space_350).
param(p_space_602, 5, m_reserve_space_350).
param(p_g_2_603, 1, m_draw_351).
param(p_cursor_604, 2, m_draw_351).
param(p_plot_area_605, 3, m_draw_351).
param(p_data_area_606, 4, m_draw_351).
param(p_edge_607, 5, m_draw_351).
param(p_plot_state_608, 6, m_draw_351).
param(p_g_2_609, 1, m_refresh_ticks_352).
param(p_state_610, 2, m_refresh_ticks_352).
param(p_data_area_611, 3, m_refresh_ticks_352).
param(p_edge_612, 4, m_refresh_ticks_352).
param(p_cursor_613, 1, m_create_and_add_entity_353).
param(p_state_614, 2, m_create_and_add_entity_353).
param(p_data_area_615, 3, m_create_and_add_entity_353).
param(p_edge_616, 4, m_create_and_add_entity_353).
param(p_plot_state_617, 5, m_create_and_add_entity_353).
param(p_listener_618, 1, m_add_change_listener_354).
method_invoc(axis_1_expr113, m_add_355, line(axis_1, 1187)).
argument(axis_1_expr114, 1, axis_1_expr113).
argument(p_listener_618, 2, axis_1_expr113).
ref(f_listener_list_570, axis_1_expr113, line(axis_1, 1187)).
param(p_listener_619, 1, m_remove_change_listener_356).
param(p_listener_620, 1, m_has_listener_357).
param(p_event_621, 1, m_notify_listeners_358).
assign(v_listeners_622, axis_1_expr117, line(axis_1, 1222)).
method_invoc(axis_1_expr117, m_get_listener_list_145, line(axis_1, 1222)).
ref(f_listener_list_570, axis_1_expr117, line(axis_1, 1222)).
assign(v_i_623, axis_1_expr121, line(axis_1, 1223)).
ref(v_listeners_622, q_length_22, line(axis_1, 1223)).
assign(v_i_623, axis_1_literal21, line(axis_1, 1223)).
ref(v_listeners_622, axis_1_expr125, line(axis_1, 1224)).
method_invoc(axis_1_expr127, m_axis_changed_359, line(axis_1, 1225)).
argument(p_event_621, 1, axis_1_expr127).
ref(axis_1_expr128, axis_1_expr127, line(axis_1, 1225)).
assign(axis_1_expr128, axis_1_expr129, line(axis_1, 1225)).
assign(axis_1_expr129, axis_1_expr130, line(axis_1, 1225)).
ref(v_listeners_622, axis_1_expr130, line(axis_1, 1225)).
method_invoc(axis_1_expr132, m_notify_listeners_358, line(axis_1, 1236)).
argument(axis_1_expr133, 1, axis_1_expr132).
method_invoc(axis_1_expr133, m_axis_change_event_360, line(axis_1, 1236)).
argument(axis_1_expr134, 1, axis_1_expr133).
param(p_g_2_624, 1, m_get_label_enclosure_361).
param(p_edge_625, 2, m_get_label_enclosure_361).
param(p_label_626, 1, m_draw_label_362).
param(p_g_2_627, 2, m_draw_label_362).
param(p_plot_area_628, 3, m_draw_label_362).
param(p_data_area_629, 4, m_draw_label_362).
param(p_edge_630, 5, m_draw_label_362).
param(p_state_631, 6, m_draw_label_362).
param(p_plot_state_632, 7, m_draw_label_362).
param(p_g_2_633, 1, m_draw_axis_line_363).
param(p_cursor_634, 2, m_draw_axis_line_363).
param(p_data_area_635, 3, m_draw_axis_line_363).
param(p_edge_636, 4, m_draw_axis_line_363).
throw(m_clone_364, clone_not_supported_exception).
param(p_obj_637, 1, m_equals_365).
param(p_stream_638, 1, m_write_object_366).
throw(m_write_object_366, ioexception).
param(p_stream_639, 1, m_read_object_367).
throw(m_read_object_367, ioexception).
throw(m_read_object_367, class_not_found_exception).

%spreadsheet_date_1 - org.jfree.data.time.SpreadsheetDate
param(p_day_3712, 1, m_spreadsheet_date_2317).
param(p_month_3713, 2, m_spreadsheet_date_2317).
param(p_year_3714, 3, m_spreadsheet_date_2317).
assign(spreadsheet_date_1_expr2, spreadsheet_date_1_expr3, line(spreadsheet_date_1, 109)).
assign(spreadsheet_date_1_expr4, spreadsheet_date_1_expr5, line(spreadsheet_date_1, 109)).
assign(f_year_3715, p_year_3714, line(spreadsheet_date_1, 110)).
assign(spreadsheet_date_1_expr10, spreadsheet_date_1_expr11, line(spreadsheet_date_1, 118)).
ref(t_month_constants_47, q_january_84, line(spreadsheet_date_1, 118)).
assign(f_month_3716, p_month_3713, line(spreadsheet_date_1, 120)).
assign(spreadsheet_date_1_expr16, spreadsheet_date_1_expr17, line(spreadsheet_date_1, 128)).
assign(spreadsheet_date_1_expr18, spreadsheet_date_1_expr19, line(spreadsheet_date_1, 128)).
method_invoc(spreadsheet_date_1_expr20, m_last_day_of_month_2307, line(spreadsheet_date_1, 128)).
argument(p_month_3713, 1, spreadsheet_date_1_expr20).
argument(p_year_3714, 2, spreadsheet_date_1_expr20).
ref(t_serial_date_45, spreadsheet_date_1_expr20, line(spreadsheet_date_1, 128)).
assign(f_day_3717, p_day_3712, line(spreadsheet_date_1, 129)).
assign(f_serial_3718, spreadsheet_date_1_expr26, line(spreadsheet_date_1, 136)).
method_invoc(spreadsheet_date_1_expr26, m_calc_serial_2335, line(spreadsheet_date_1, 136)).
argument(p_day_3712, 1, spreadsheet_date_1_expr26).
argument(p_month_3713, 2, spreadsheet_date_1_expr26).
argument(p_year_3714, 3, spreadsheet_date_1_expr26).
param(p_serial_3719, 1, m_spreadsheet_date_2318).
assign(spreadsheet_date_1_expr29, spreadsheet_date_1_expr30, line(spreadsheet_date_1, 148)).
assign(spreadsheet_date_1_expr31, spreadsheet_date_1_expr32, line(spreadsheet_date_1, 148)).
assign(f_serial_3718, p_serial_3719, line(spreadsheet_date_1, 149)).
assign(v_days_3722, spreadsheet_date_1_expr36, line(spreadsheet_date_1, 158)).
assign(v_overestimated_yyyy_3723, spreadsheet_date_1_expr39, line(spreadsheet_date_1, 160)).
assign(spreadsheet_date_1_expr40, spreadsheet_date_1_expr41, line(spreadsheet_date_1, 160)).
assign(v_leaps_3724, spreadsheet_date_1_expr42, line(spreadsheet_date_1, 161)).
method_invoc(spreadsheet_date_1_expr42, m_leap_year_count_2306, line(spreadsheet_date_1, 161)).
argument(v_overestimated_yyyy_3723, 1, spreadsheet_date_1_expr42).
ref(t_serial_date_45, spreadsheet_date_1_expr42, line(spreadsheet_date_1, 161)).
assign(v_nonleapdays_3725, spreadsheet_date_1_expr43, line(spreadsheet_date_1, 162)).
assign(v_underestimated_yyyy_3726, spreadsheet_date_1_expr44, line(spreadsheet_date_1, 164)).
assign(spreadsheet_date_1_expr45, spreadsheet_date_1_expr46, line(spreadsheet_date_1, 164)).
assign(f_year_3715, v_underestimated_yyyy_3726, line(spreadsheet_date_1, 167)).
assign(v_ss_2_3727, spreadsheet_date_1_expr51, line(spreadsheet_date_1, 178)).
method_invoc(spreadsheet_date_1_expr51, m_calc_serial_2335, line(spreadsheet_date_1, 178)).
argument(spreadsheet_date_1_literal8, 1, spreadsheet_date_1_expr51).
argument(spreadsheet_date_1_literal9, 2, spreadsheet_date_1_expr51).
argument(f_year_3715, 3, spreadsheet_date_1_expr51).
assign(v_days_to_end_of_preceding_month_3728, f_aggregate_days_to_end_of_preceding_month_3654, line(spreadsheet_date_1, 180)).
method_invoc(spreadsheet_date_1_expr54, m_is_leap_year_2305, line(spreadsheet_date_1, 183)).
argument(f_year_3715, 1, spreadsheet_date_1_expr54).
assign(v_days_to_end_of_preceding_month_3728, f_leap_year_aggregate_days_to_end_of_preceding_month_3656, line(spreadsheet_date_1, 184)).
assign(v_mm_3729, spreadsheet_date_1_literal10, line(spreadsheet_date_1, 189)).
assign(v_sss_3730, spreadsheet_date_1_expr58, line(spreadsheet_date_1, 190)).
ref(v_days_to_end_of_preceding_month_3728, spreadsheet_date_1_expr60, line(spreadsheet_date_1, 190)).
assign(v_mm_3729, spreadsheet_date_1_expr65, line(spreadsheet_date_1, 192)).
assign(v_sss_3730, spreadsheet_date_1_expr67, line(spreadsheet_date_1, 193)).
ref(v_days_to_end_of_preceding_month_3728, spreadsheet_date_1_expr69, line(spreadsheet_date_1, 193)).
assign(f_month_3716, spreadsheet_date_1_expr72, line(spreadsheet_date_1, 195)).
assign(f_day_3717, spreadsheet_date_1_expr76, line(spreadsheet_date_1, 198)).
return(f_serial_3718, m_to_serial_2336, line(spreadsheet_date_1, 211)).
return(f_year_3715, m_get_yyyy_2338, line(spreadsheet_date_1, 231)).
return(f_month_3716, m_get_month_2339, line(spreadsheet_date_1, 240)).
return(f_day_3717, m_get_day_of_month_2340, line(spreadsheet_date_1, 249)).
param(p_object_3731, 1, m_equals_2342).
param(p_other_3732, 1, m_compare_2344).
return(spreadsheet_date_1_expr89, m_compare_2344, line(spreadsheet_date_1, 308)).
method_invoc(spreadsheet_date_1_expr92, m_to_serial_2261, line(spreadsheet_date_1, 308)).
ref(p_other_3732, spreadsheet_date_1_expr92, line(spreadsheet_date_1, 308)).
param(p_other_3733, 1, m_compare_to_2345).
param(p_other_3734, 1, m_is_on_2346).
param(p_other_3735, 1, m_is_before_2347).
param(p_other_3736, 1, m_is_on_or_before_2348).
param(p_other_3737, 1, m_is_after_2349).
param(p_other_3738, 1, m_is_on_or_after_2350).
param(p_d_1_3739, 1, m_is_in_range_2351).
param(p_d_2_3740, 2, m_is_in_range_2351).
param(p_d_1_3741, 1, m_is_in_range_2352).
param(p_d_2_3742, 2, m_is_in_range_2352).
param(p_include_3743, 3, m_is_in_range_2352).
param(p_d_3744, 1, m_calc_serial_2335).
param(p_m_3745, 2, m_calc_serial_2335).
param(p_y_3746, 3, m_calc_serial_2335).
assign(v_yy_3747, spreadsheet_date_1_expr93, line(spreadsheet_date_1, 449)).
assign(spreadsheet_date_1_expr94, spreadsheet_date_1_expr95, line(spreadsheet_date_1, 449)).
assign(spreadsheet_date_1_expr96, spreadsheet_date_1_expr97, line(spreadsheet_date_1, 449)).
method_invoc(spreadsheet_date_1_expr98, m_leap_year_count_2306, line(spreadsheet_date_1, 449)).
argument(spreadsheet_date_1_expr99, 1, spreadsheet_date_1_expr98).
ref(t_serial_date_45, spreadsheet_date_1_expr98, line(spreadsheet_date_1, 449)).
assign(v_mm_3748, spreadsheet_date_1_expr100, line(spreadsheet_date_1, 450)).
ref(q_aggregate_days_to_end_of_preceding_month_85, spreadsheet_date_1_expr100, line(spreadsheet_date_1, 450)).
ref(t_serial_date_45, q_aggregate_days_to_end_of_preceding_month_85, line(spreadsheet_date_1, 450)).
ref(t_month_constants_47, q_february_86, line(spreadsheet_date_1, 451)).
method_invoc(spreadsheet_date_1_expr102, m_is_leap_year_2305, line(spreadsheet_date_1, 452)).
argument(p_y_3746, 1, spreadsheet_date_1_expr102).
ref(t_serial_date_45, spreadsheet_date_1_expr102, line(spreadsheet_date_1, 452)).
assign(v_mm_3748, spreadsheet_date_1_expr104, line(spreadsheet_date_1, 453)).
assign(v_dd_3749, p_d_3744, line(spreadsheet_date_1, 456)).
return(spreadsheet_date_1_expr105, m_calc_serial_2335, line(spreadsheet_date_1, 457)).

%standard_xyurlgenerator_1 - org.jfree.chart.urls.StandardXYURLGenerator
method_invoc(standard_xyurlgenerator_1_expr1, m_standard_xyurlgenerator_1940, line(standard_xyurlgenerator_1, 89)).
argument(f_default_prefix_3185, 1, standard_xyurlgenerator_1_expr1).
argument(f_default_series_parameter_3186, 2, standard_xyurlgenerator_1_expr1).
argument(f_default_item_parameter_3187, 3, standard_xyurlgenerator_1_expr1).
param(p_prefix_3188, 1, m_standard_xyurlgenerator_1941).
param(p_prefix_3189, 1, m_standard_xyurlgenerator_1940).
param(p_series_parameter_name_3190, 2, m_standard_xyurlgenerator_1940).
param(p_item_parameter_name_3191, 3, m_standard_xyurlgenerator_1940).
assign(f_prefix_3192, p_prefix_3189, line(standard_xyurlgenerator_1, 126)).
assign(f_series_parameter_name_3193, p_series_parameter_name_3190, line(standard_xyurlgenerator_1, 127)).
assign(f_item_parameter_name_3194, p_item_parameter_name_3191, line(standard_xyurlgenerator_1, 128)).
param(p_dataset_3195, 1, m_generate_url_1942).
param(p_series_3196, 2, m_generate_url_1942).
param(p_item_3197, 3, m_generate_url_1942).
param(p_obj_3198, 1, m_equals_1943).

%column_arrangement_1 - org.jfree.chart.block.ColumnArrangement
param(p_h_align_1166, 1, m_column_arrangement_727).
param(p_v_align_1167, 2, m_column_arrangement_727).
param(p_h_gap_1168, 3, m_column_arrangement_727).
param(p_v_gap_1169, 4, m_column_arrangement_727).
param(p_block_1170, 1, m_add_728).
param(p_key_1171, 2, m_add_728).
param(p_container_1172, 1, m_arrange_729).
param(p_g_2_1173, 2, m_arrange_729).
param(p_constraint_1174, 3, m_arrange_729).
param(p_container_1175, 1, m_arrange_ff_730).
param(p_g_2_1176, 2, m_arrange_ff_730).
param(p_constraint_1177, 3, m_arrange_ff_730).
param(p_container_1178, 1, m_arrange_nf_731).
param(p_g_2_1179, 2, m_arrange_nf_731).
param(p_constraint_1180, 3, m_arrange_nf_731).
param(p_container_1181, 1, m_arrange_rr_732).
param(p_g_2_1182, 2, m_arrange_rr_732).
param(p_constraint_1183, 3, m_arrange_rr_732).
param(p_container_1184, 1, m_arrange_rf_733).
param(p_g_2_1185, 2, m_arrange_rf_733).
param(p_constraint_1186, 3, m_arrange_rf_733).
param(p_container_1187, 1, m_arrange_nn_734).
param(p_g_2_1188, 2, m_arrange_nn_734).
param(p_obj_1189, 1, m_equals_736).

%pie_label_distributor_1 - org.jfree.chart.plot.PieLabelDistributor
assign(f_min_gap_1477, pie_label_distributor_1_literal1, line(pie_label_distributor_1, 55)).
param(p_label_count_1478, 1, m_pie_label_distributor_947).
method_invoc(pie_label_distributor_1_expr1, m_abstract_pie_label_distributor_916, line(pie_label_distributor_1, 63)).
param(p_min_y_1479, 1, m_distribute_labels_948).
param(p_height_1480, 2, m_distribute_labels_948).
param(p_min_y_1481, 1, m_adjust_downwards_951).
param(p_height_1482, 2, m_adjust_downwards_951).
param(p_min_y_1483, 1, m_adjust_upwards_952).
param(p_height_1484, 2, m_adjust_upwards_952).
param(p_min_y_1485, 1, m_spread_evenly_953).
param(p_height_1486, 2, m_spread_evenly_953).

%xyline_and_shape_renderer_1 - org.jfree.chart.renderer.xy.XYLineAndShapeRenderer
method_invoc(xyline_and_shape_renderer_1_expr1, m_xyline_and_shape_renderer_45, line(xyline_and_shape_renderer_1, 175)).
argument(xyline_and_shape_renderer_1_literal1, 1, xyline_and_shape_renderer_1_expr1).
argument(xyline_and_shape_renderer_1_literal2, 2, xyline_and_shape_renderer_1_expr1).
param(p_lines_2816, 1, m_xyline_and_shape_renderer_45).
param(p_shapes_2817, 2, m_xyline_and_shape_renderer_45).
assign(f_series_lines_visible_2818, xyline_and_shape_renderer_1_expr4, line(xyline_and_shape_renderer_1, 185)).
method_invoc(xyline_and_shape_renderer_1_expr4, m_boolean_list_1429, line(xyline_and_shape_renderer_1, 185)).
assign(f_base_lines_visible_2819, p_lines_2816, line(xyline_and_shape_renderer_1, 186)).
assign(f_legend_line_2820, xyline_and_shape_renderer_1_expr11, line(xyline_and_shape_renderer_1, 187)).
method_invoc(xyline_and_shape_renderer_1_expr11, m_double_1735, line(xyline_and_shape_renderer_1, 187)).
argument(xyline_and_shape_renderer_1_expr13, 1, xyline_and_shape_renderer_1_expr11).
argument(xyline_and_shape_renderer_1_literal3, 2, xyline_and_shape_renderer_1_expr11).
argument(xyline_and_shape_renderer_1_literal4, 3, xyline_and_shape_renderer_1_expr11).
argument(xyline_and_shape_renderer_1_literal5, 4, xyline_and_shape_renderer_1_expr11).
assign(f_series_shapes_visible_2821, xyline_and_shape_renderer_1_expr16, line(xyline_and_shape_renderer_1, 189)).
method_invoc(xyline_and_shape_renderer_1_expr16, m_boolean_list_1429, line(xyline_and_shape_renderer_1, 189)).
assign(f_base_shapes_visible_2822, p_shapes_2817, line(xyline_and_shape_renderer_1, 190)).
assign(f_use_fill_paint_2823, xyline_and_shape_renderer_1_literal7, line(xyline_and_shape_renderer_1, 192)).
assign(f_series_shapes_filled_2824, xyline_and_shape_renderer_1_expr26, line(xyline_and_shape_renderer_1, 193)).
method_invoc(xyline_and_shape_renderer_1_expr26, m_boolean_list_1429, line(xyline_and_shape_renderer_1, 193)).
assign(f_base_shapes_filled_2825, xyline_and_shape_renderer_1_literal8, line(xyline_and_shape_renderer_1, 194)).
assign(f_draw_outlines_2826, xyline_and_shape_renderer_1_literal9, line(xyline_and_shape_renderer_1, 196)).
assign(f_use_outline_paint_2827, xyline_and_shape_renderer_1_literal10, line(xyline_and_shape_renderer_1, 197)).
assign(f_draw_series_line_as_path_2828, xyline_and_shape_renderer_1_literal11, line(xyline_and_shape_renderer_1, 200)).
param(p_flag_2829, 1, m_set_draw_series_line_as_path_1737).
param(p_series_2830, 1, m_get_item_line_visible_1739).
param(p_item_2831, 2, m_get_item_line_visible_1739).
param(p_series_2832, 1, m_get_series_lines_visible_1740).
param(p_series_2833, 1, m_set_series_lines_visible_1741).
param(p_flag_2834, 2, m_set_series_lines_visible_1741).
param(p_series_2835, 1, m_set_series_lines_visible_1742).
param(p_visible_2836, 2, m_set_series_lines_visible_1742).
param(p_flag_2837, 1, m_set_base_lines_visible_1744).
param(p_line_2838, 1, m_set_legend_line_1746).
param(p_series_2839, 1, m_get_item_shape_visible_1747).
param(p_item_2840, 2, m_get_item_shape_visible_1747).
param(p_series_2841, 1, m_get_series_shapes_visible_1748).
param(p_series_2842, 1, m_set_series_shapes_visible_1749).
param(p_visible_2843, 2, m_set_series_shapes_visible_1749).
param(p_series_2844, 1, m_set_series_shapes_visible_1750).
param(p_flag_2845, 2, m_set_series_shapes_visible_1750).
param(p_flag_2846, 1, m_set_base_shapes_visible_1752).
assign(f_base_shapes_visible_2822, p_flag_2846, line(xyline_and_shape_renderer_1, 441)).
method_invoc(xyline_and_shape_renderer_1_expr43, m_fire_change_event_1524, line(xyline_and_shape_renderer_1, 442)).
param(p_series_2847, 1, m_get_item_shape_filled_1753).
param(p_item_2848, 2, m_get_item_shape_filled_1753).
param(p_series_2849, 1, m_get_series_shapes_filled_1754).
param(p_series_2850, 1, m_set_series_shapes_filled_1755).
param(p_flag_2851, 2, m_set_series_shapes_filled_1755).
param(p_series_2852, 1, m_set_series_shapes_filled_1756).
param(p_flag_2853, 2, m_set_series_shapes_filled_1756).
param(p_flag_2854, 1, m_set_base_shapes_filled_1758).
param(p_flag_2855, 1, m_set_draw_outlines_1760).
param(p_flag_2856, 1, m_set_use_fill_paint_1762).
param(p_flag_2857, 1, m_set_use_outline_paint_1764).
param(p_info_2858, 1, m_state_1765).
param(p_good_2859, 1, m_set_last_point_good_1767).
param(p_dataset_2860, 1, m_start_series_pass_1768).
param(p_series_2861, 2, m_start_series_pass_1768).
param(p_first_item_2862, 3, m_start_series_pass_1768).
param(p_last_item_2863, 4, m_start_series_pass_1768).
param(p_pass_2864, 5, m_start_series_pass_1768).
param(p_pass_count_2865, 6, m_start_series_pass_1768).
param(p_g_2_2866, 1, m_initialise_1769).
param(p_data_area_2867, 2, m_initialise_1769).
param(p_plot_2868, 3, m_initialise_1769).
param(p_data_2869, 4, m_initialise_1769).
param(p_info_2870, 5, m_initialise_1769).
param(p_g_2_2871, 1, m_draw_item_1770).
param(p_state_2872, 2, m_draw_item_1770).
param(p_data_area_2873, 3, m_draw_item_1770).
param(p_plot_2874, 4, m_draw_item_1770).
param(p_domain_axis_2875, 5, m_draw_item_1770).
param(p_range_axis_2876, 6, m_draw_item_1770).
param(p_dataset_2877, 7, m_draw_item_1770).
param(p_series_2878, 8, m_draw_item_1770).
param(p_item_2879, 9, m_draw_item_1770).
param(p_selected_2880, 10, m_draw_item_1770).
param(p_pass_2881, 11, m_draw_item_1770).
param(p_pass_2882, 1, m_is_line_pass_1771).
param(p_pass_2883, 1, m_is_item_pass_1772).
param(p_state_2884, 1, m_draw_primary_line_1773).
param(p_g_2_2885, 2, m_draw_primary_line_1773).
param(p_plot_2886, 3, m_draw_primary_line_1773).
param(p_dataset_2887, 4, m_draw_primary_line_1773).
param(p_pass_2888, 5, m_draw_primary_line_1773).
param(p_series_2889, 6, m_draw_primary_line_1773).
param(p_item_2890, 7, m_draw_primary_line_1773).
param(p_selected_2891, 8, m_draw_primary_line_1773).
param(p_domain_axis_2892, 9, m_draw_primary_line_1773).
param(p_range_axis_2893, 10, m_draw_primary_line_1773).
param(p_data_area_2894, 11, m_draw_primary_line_1773).
param(p_g_2_2895, 1, m_draw_shape1_1774).
param(p_pass_2896, 2, m_draw_shape1_1774).
param(p_series_2897, 3, m_draw_shape1_1774).
param(p_item_2898, 4, m_draw_shape1_1774).
param(p_selected_2899, 5, m_draw_shape1_1774).
param(p_shape_2900, 6, m_draw_shape1_1774).
param(p_state_2901, 1, m_draw_primary_line_as_path_1775).
param(p_g_2_2902, 2, m_draw_primary_line_as_path_1775).
param(p_plot_2903, 3, m_draw_primary_line_as_path_1775).
param(p_dataset_2904, 4, m_draw_primary_line_as_path_1775).
param(p_pass_2905, 5, m_draw_primary_line_as_path_1775).
param(p_series_2906, 6, m_draw_primary_line_as_path_1775).
param(p_item_2907, 7, m_draw_primary_line_as_path_1775).
param(p_selected_2908, 8, m_draw_primary_line_as_path_1775).
param(p_domain_axis_2909, 9, m_draw_primary_line_as_path_1775).
param(p_range_axis_2910, 10, m_draw_primary_line_as_path_1775).
param(p_data_area_2911, 11, m_draw_primary_line_as_path_1775).
param(p_g_2_2912, 1, m_draw_shape2_1776).
param(p_data_area_2913, 2, m_draw_shape2_1776).
param(p_plot_2914, 3, m_draw_shape2_1776).
param(p_dataset_2915, 4, m_draw_shape2_1776).
param(p_pass_2916, 5, m_draw_shape2_1776).
param(p_series_2917, 6, m_draw_shape2_1776).
param(p_item_2918, 7, m_draw_shape2_1776).
param(p_selected_2919, 8, m_draw_shape2_1776).
param(p_domain_axis_2920, 9, m_draw_shape2_1776).
param(p_range_axis_2921, 10, m_draw_shape2_1776).
param(p_crosshair_state_2922, 11, m_draw_shape2_1776).
param(p_entities_2923, 12, m_draw_shape2_1776).
param(p_dataset_index_2924, 1, m_get_legend_item_1777).
param(p_series_2925, 2, m_get_legend_item_1777).
throw(m_clone_1778, clone_not_supported_exception).
param(p_obj_2926, 1, m_equals_1779).
param(p_stream_2927, 1, m_read_object_1780).
throw(m_read_object_1780, ioexception).
throw(m_read_object_1780, class_not_found_exception).
param(p_stream_2928, 1, m_write_object_1781).
throw(m_write_object_1781, ioexception).

%stroke_map_1 - org.jfree.chart.util.StrokeMap
assign(f_store_3344, stroke_map_1_expr3, line(stroke_map_1, 77)).
method_invoc(stroke_map_1_expr3, m_tree_map_967, line(stroke_map_1, 77)).
param(p_key_3345, 1, m_get_stroke_2048).
param(p_key_3346, 1, m_contains_key_2049).
param(p_key_3347, 1, m_put_2050).
param(p_stroke_3348, 2, m_put_2050).
param(p_obj_3349, 1, m_equals_2052).
throw(m_clone_2053, clone_not_supported_exception).
param(p_stream_3350, 1, m_write_object_2054).
throw(m_write_object_2054, ioexception).
param(p_stream_3351, 1, m_read_object_2055).
throw(m_read_object_2055, ioexception).
throw(m_read_object_2055, class_not_found_exception).

%dataset_utilities_1 - org.jfree.data.general.DatasetUtilities
param(p_dataset_3441, 1, m_calculate_pie_dataset_total_2138).
param(p_dataset_3442, 1, m_create_pie_dataset_for_row_2139).
param(p_row_key_3443, 2, m_create_pie_dataset_for_row_2139).
param(p_dataset_3444, 1, m_create_pie_dataset_for_row_2140).
param(p_row_3445, 2, m_create_pie_dataset_for_row_2140).
param(p_dataset_3446, 1, m_create_pie_dataset_for_column_2141).
param(p_column_key_3447, 2, m_create_pie_dataset_for_column_2141).
param(p_dataset_3448, 1, m_create_pie_dataset_for_column_2142).
param(p_column_3449, 2, m_create_pie_dataset_for_column_2142).
param(p_source_3450, 1, m_create_consolidated_pie_dataset_2143).
param(p_key_3451, 2, m_create_consolidated_pie_dataset_2143).
param(p_minimum_percent_3452, 3, m_create_consolidated_pie_dataset_2143).
param(p_source_3453, 1, m_create_consolidated_pie_dataset_2144).
param(p_key_3454, 2, m_create_consolidated_pie_dataset_2144).
param(p_minimum_percent_3455, 3, m_create_consolidated_pie_dataset_2144).
param(p_min_items_3456, 4, m_create_consolidated_pie_dataset_2144).
param(p_row_key_prefix_3457, 1, m_create_category_dataset_2145).
param(p_column_key_prefix_3458, 2, m_create_category_dataset_2145).
param(p_data_3459, 3, m_create_category_dataset_2145).
param(p_row_key_prefix_3460, 1, m_create_category_dataset_2146).
param(p_column_key_prefix_3461, 2, m_create_category_dataset_2146).
param(p_data_3462, 3, m_create_category_dataset_2146).
param(p_row_keys_3463, 1, m_create_category_dataset_2147).
param(p_column_keys_3464, 2, m_create_category_dataset_2147).
param(p_data_3465, 3, m_create_category_dataset_2147).
param(p_row_key_3466, 1, m_create_category_dataset_2148).
param(p_row_data_3467, 2, m_create_category_dataset_2148).
param(p_f_3468, 1, m_sample_function2_d_2149).
param(p_start_3469, 2, m_sample_function2_d_2149).
param(p_end_3470, 3, m_sample_function2_d_2149).
param(p_samples_3471, 4, m_sample_function2_d_2149).
param(p_series_key_3472, 5, m_sample_function2_d_2149).
param(p_f_3473, 1, m_sample_function2_dto_series_2150).
param(p_start_3474, 2, m_sample_function2_dto_series_2150).
param(p_end_3475, 3, m_sample_function2_dto_series_2150).
param(p_samples_3476, 4, m_sample_function2_dto_series_2150).
param(p_series_key_3477, 5, m_sample_function2_dto_series_2150).
param(p_dataset_3478, 1, m_is_empty_or_null_2151).
param(p_dataset_3479, 1, m_is_empty_or_null_2152).
param(p_dataset_3480, 1, m_is_empty_or_null_2153).
param(p_dataset_3481, 1, m_find_domain_bounds_2154).
return(dataset_utilities_1_expr1, m_find_domain_bounds_2154, line(dataset_utilities_1, 647)).
method_invoc(dataset_utilities_1_expr1, m_find_domain_bounds_2155, line(dataset_utilities_1, 647)).
argument(p_dataset_3481, 1, dataset_utilities_1_expr1).
argument(dataset_utilities_1_literal1, 2, dataset_utilities_1_expr1).
param(p_dataset_3482, 1, m_find_domain_bounds_2155).
param(p_include_interval_3483, 2, m_find_domain_bounds_2155).
assign(v_result_3484, dataset_utilities_1_literal3, line(dataset_utilities_1, 667)).
assign(v_info_3485, dataset_utilities_1_expr4, line(dataset_utilities_1, 670)).
assign(dataset_utilities_1_expr4, p_dataset_3482, line(dataset_utilities_1, 670)).
assign(v_result_3484, dataset_utilities_1_expr6, line(dataset_utilities_1, 671)).
method_invoc(dataset_utilities_1_expr6, m_get_domain_bounds_2156, line(dataset_utilities_1, 671)).
argument(p_include_interval_3483, 1, dataset_utilities_1_expr6).
ref(v_info_3485, dataset_utilities_1_expr6, line(dataset_utilities_1, 671)).
assign(v_result_3484, dataset_utilities_1_expr8, line(dataset_utilities_1, 674)).
method_invoc(dataset_utilities_1_expr8, m_iterate_domain_bounds_2157, line(dataset_utilities_1, 674)).
argument(p_dataset_3482, 1, dataset_utilities_1_expr8).
argument(p_include_interval_3483, 2, dataset_utilities_1_expr8).
return(v_result_3484, m_find_domain_bounds_2155, line(dataset_utilities_1, 676)).
param(p_dataset_3486, 1, m_find_domain_bounds_1704).
param(p_visible_series_keys_3487, 2, m_find_domain_bounds_1704).
param(p_include_interval_3488, 3, m_find_domain_bounds_1704).
assign(v_result_3489, dataset_utilities_1_literal5, line(dataset_utilities_1, 700)).
assign(v_result_3489, dataset_utilities_1_expr12, line(dataset_utilities_1, 706)).
method_invoc(dataset_utilities_1_expr12, m_iterate_to_find_domain_bounds_2158, line(dataset_utilities_1, 706)).
argument(p_dataset_3486, 1, dataset_utilities_1_expr12).
argument(p_visible_series_keys_3487, 2, dataset_utilities_1_expr12).
argument(p_include_interval_3488, 3, dataset_utilities_1_expr12).
return(v_result_3489, m_find_domain_bounds_1704, line(dataset_utilities_1, 709)).
param(p_dataset_3490, 1, m_iterate_domain_bounds_2159).
param(p_dataset_3491, 1, m_iterate_domain_bounds_2157).
param(p_include_interval_3492, 2, m_iterate_domain_bounds_2157).
assign(v_minimum_3493, q_positive_infinity_73, line(dataset_utilities_1, 742)).
ref(t_double_42, q_positive_infinity_73, line(dataset_utilities_1, 742)).
assign(v_maximum_3494, q_negative_infinity_74, line(dataset_utilities_1, 743)).
ref(t_double_42, q_negative_infinity_74, line(dataset_utilities_1, 743)).
assign(v_series_count_3495, dataset_utilities_1_expr14, line(dataset_utilities_1, 744)).
method_invoc(dataset_utilities_1_expr14, m_get_series_count_1703, line(dataset_utilities_1, 744)).
ref(p_dataset_3491, dataset_utilities_1_expr14, line(dataset_utilities_1, 744)).
assign(v_series_3496, dataset_utilities_1_literal7, line(dataset_utilities_1, 764)).
return(dataset_utilities_1_literal8, m_iterate_domain_bounds_2157, line(dataset_utilities_1, 777)).
param(p_dataset_3497, 1, m_find_range_bounds_2160).
param(p_dataset_3498, 1, m_find_range_bounds_2161).
param(p_include_interval_3499, 2, m_find_range_bounds_2161).
param(p_dataset_3500, 1, m_find_range_bounds_2162).
param(p_visible_series_keys_3501, 2, m_find_range_bounds_2162).
param(p_include_interval_3502, 3, m_find_range_bounds_2162).
param(p_dataset_3503, 1, m_find_range_bounds_2163).
param(p_dataset_3504, 1, m_find_range_bounds_2164).
param(p_include_interval_3505, 2, m_find_range_bounds_2164).
param(p_dataset_3506, 1, m_find_range_bounds_1707).
param(p_visible_series_keys_3507, 2, m_find_range_bounds_1707).
param(p_x_range_3508, 3, m_find_range_bounds_1707).
param(p_include_interval_3509, 4, m_find_range_bounds_1707).
assign(v_result_3510, dataset_utilities_1_literal10, line(dataset_utilities_1, 911)).
assign(v_result_3510, dataset_utilities_1_expr24, line(dataset_utilities_1, 918)).
method_invoc(dataset_utilities_1_expr24, m_iterate_to_find_range_bounds_2165, line(dataset_utilities_1, 918)).
argument(p_dataset_3506, 1, dataset_utilities_1_expr24).
argument(p_visible_series_keys_3507, 2, dataset_utilities_1_expr24).
argument(p_x_range_3508, 3, dataset_utilities_1_expr24).
argument(p_include_interval_3509, 4, dataset_utilities_1_expr24).
return(v_result_3510, m_find_range_bounds_1707, line(dataset_utilities_1, 921)).
param(p_dataset_3511, 1, m_iterate_category_range_bounds_2166).
param(p_include_interval_3512, 2, m_iterate_category_range_bounds_2166).
param(p_dataset_3513, 1, m_iterate_range_bounds_2167).
param(p_dataset_3514, 1, m_iterate_range_bounds_2168).
param(p_include_interval_3515, 2, m_iterate_range_bounds_2168).
param(p_dataset_3516, 1, m_iterate_to_find_range_bounds_2169).
param(p_visible_series_keys_3517, 2, m_iterate_to_find_range_bounds_2169).
param(p_include_interval_3518, 3, m_iterate_to_find_range_bounds_2169).
param(p_dataset_3519, 1, m_iterate_xyrange_bounds_2170).
param(p_dataset_3520, 1, m_iterate_range_bounds_2171).
param(p_dataset_3521, 1, m_iterate_range_bounds_2172).
param(p_include_interval_3522, 2, m_iterate_range_bounds_2172).
param(p_dataset_3523, 1, m_iterate_to_find_domain_bounds_2158).
param(p_visible_series_keys_3524, 2, m_iterate_to_find_domain_bounds_2158).
param(p_include_interval_3525, 3, m_iterate_to_find_domain_bounds_2158).
assign(v_minimum_3526, q_positive_infinity_75, line(dataset_utilities_1, 1303)).
ref(t_double_42, q_positive_infinity_75, line(dataset_utilities_1, 1303)).
assign(v_maximum_3527, q_negative_infinity_75, line(dataset_utilities_1, 1304)).
ref(t_double_42, q_negative_infinity_75, line(dataset_utilities_1, 1304)).
assign(v_iterator_3528, dataset_utilities_1_expr29, line(dataset_utilities_1, 1328)).
method_invoc(dataset_utilities_1_expr29, m_iterator_271, line(dataset_utilities_1, 1328)).
ref(p_visible_series_keys_3524, dataset_utilities_1_expr29, line(dataset_utilities_1, 1328)).
method_invoc(dataset_utilities_1_expr30, m_has_next_273, line(dataset_utilities_1, 1329)).
ref(v_iterator_3528, dataset_utilities_1_expr30, line(dataset_utilities_1, 1329)).
ref(t_double_42, q_positive_infinity_75, line(dataset_utilities_1, 1343)).
return(dataset_utilities_1_literal13, m_iterate_to_find_domain_bounds_2158, line(dataset_utilities_1, 1344)).
param(p_dataset_3529, 1, m_iterate_to_find_range_bounds_2165).
param(p_visible_series_keys_3530, 2, m_iterate_to_find_range_bounds_2165).
param(p_x_range_3531, 3, m_iterate_to_find_range_bounds_2165).
param(p_include_interval_3532, 4, m_iterate_to_find_range_bounds_2165).
assign(v_minimum_3533, q_positive_infinity_75, line(dataset_utilities_1, 1382)).
ref(t_double_42, q_positive_infinity_75, line(dataset_utilities_1, 1382)).
assign(v_maximum_3534, q_negative_infinity_75, line(dataset_utilities_1, 1383)).
ref(t_double_42, q_negative_infinity_75, line(dataset_utilities_1, 1383)).
assign(v_iterator_3535, dataset_utilities_1_expr41, line(dataset_utilities_1, 1457)).
method_invoc(dataset_utilities_1_expr41, m_iterator_271, line(dataset_utilities_1, 1457)).
ref(p_visible_series_keys_3530, dataset_utilities_1_expr41, line(dataset_utilities_1, 1457)).
method_invoc(dataset_utilities_1_expr42, m_has_next_273, line(dataset_utilities_1, 1458)).
ref(v_iterator_3535, dataset_utilities_1_expr42, line(dataset_utilities_1, 1458)).
ref(t_double_42, q_positive_infinity_75, line(dataset_utilities_1, 1474)).
return(dataset_utilities_1_literal17, m_iterate_to_find_range_bounds_2165, line(dataset_utilities_1, 1475)).
param(p_dataset_3536, 1, m_find_minimum_domain_value_2173).
param(p_dataset_3537, 1, m_find_maximum_domain_value_2174).
param(p_dataset_3538, 1, m_find_minimum_range_value_2175).
param(p_dataset_3539, 1, m_find_minimum_range_value_2176).
param(p_dataset_3540, 1, m_find_maximum_range_value_2177).
param(p_dataset_3541, 1, m_find_maximum_range_value_2178).
param(p_dataset_3542, 1, m_find_stacked_range_bounds_2179).
param(p_dataset_3543, 1, m_find_stacked_range_bounds_2180).
param(p_base_3544, 2, m_find_stacked_range_bounds_2180).
param(p_dataset_3545, 1, m_find_stacked_range_bounds_2181).
param(p_map_3546, 2, m_find_stacked_range_bounds_2181).
param(p_dataset_3547, 1, m_find_minimum_stacked_range_value_2182).
param(p_dataset_3548, 1, m_find_maximum_stacked_range_value_2183).
param(p_dataset_3549, 1, m_find_stacked_range_bounds_2184).
param(p_dataset_3550, 1, m_find_stacked_range_bounds_2185).
param(p_base_3551, 2, m_find_stacked_range_bounds_2185).
param(p_dataset_3552, 1, m_calculate_stack_total_2186).
param(p_item_3553, 2, m_calculate_stack_total_2186).
param(p_dataset_3554, 1, m_find_cumulative_range_bounds_2187).

%jfree_chart_resources_1 - org.jfree.chart.resources.JFreeChartResources
return(f_contents_2987, m_get_contents_1808, line(jfree_chart_resources_1, 52)).
assign(f_contents_2987, jfree_chart_resources_1_expr1, line(jfree_chart_resources_1, 56)).

%standard_chart_theme_1 - org.jfree.chart.StandardChartTheme
assign(f_grid_band_paint_423, q_default_grid_band_paint_13, line(standard_chart_theme_1, 227)).
ref(t_symbol_axis_8, q_default_grid_band_paint_13, line(standard_chart_theme_1, 227)).
assign(f_grid_band_alternate_paint_424, q_default_grid_band_alternate_paint_14, line(standard_chart_theme_1, 230)).
param(p_chart_425, 1, m_apply_161).
param(p_name_426, 1, m_standard_chart_theme_4).
assign(f_name_427, p_name_426, line(standard_chart_theme_1, 307)).
assign(f_extra_large_font_428, standard_chart_theme_1_expr7, line(standard_chart_theme_1, 308)).
method_invoc(standard_chart_theme_1_expr7, m_font_68, line(standard_chart_theme_1, 308)).
argument(standard_chart_theme_1_literal2, 1, standard_chart_theme_1_expr7).
argument(q_bold_15, 2, standard_chart_theme_1_expr7).
argument(standard_chart_theme_1_literal3, 3, standard_chart_theme_1_expr7).
ref(t_font_3, q_bold_15, line(standard_chart_theme_1, 308)).
assign(f_large_font_429, standard_chart_theme_1_expr11, line(standard_chart_theme_1, 309)).
method_invoc(standard_chart_theme_1_expr11, m_font_68, line(standard_chart_theme_1, 309)).
argument(standard_chart_theme_1_literal4, 1, standard_chart_theme_1_expr11).
argument(q_bold_15, 2, standard_chart_theme_1_expr11).
argument(standard_chart_theme_1_literal5, 3, standard_chart_theme_1_expr11).
ref(t_font_3, q_bold_15, line(standard_chart_theme_1, 309)).
assign(f_regular_font_430, standard_chart_theme_1_expr15, line(standard_chart_theme_1, 310)).
method_invoc(standard_chart_theme_1_expr15, m_font_68, line(standard_chart_theme_1, 310)).
argument(standard_chart_theme_1_literal6, 1, standard_chart_theme_1_expr15).
argument(q_plain_15, 2, standard_chart_theme_1_expr15).
argument(standard_chart_theme_1_literal7, 3, standard_chart_theme_1_expr15).
ref(t_font_3, q_plain_15, line(standard_chart_theme_1, 310)).
assign(f_small_font_431, standard_chart_theme_1_expr19, line(standard_chart_theme_1, 311)).
method_invoc(standard_chart_theme_1_expr19, m_font_68, line(standard_chart_theme_1, 311)).
argument(standard_chart_theme_1_literal8, 1, standard_chart_theme_1_expr19).
argument(q_plain_16, 2, standard_chart_theme_1_expr19).
argument(standard_chart_theme_1_literal9, 3, standard_chart_theme_1_expr19).
ref(t_font_3, q_plain_16, line(standard_chart_theme_1, 311)).
assign(f_title_paint_432, q_black_16, line(standard_chart_theme_1, 312)).
ref(t_color_4, q_black_16, line(standard_chart_theme_1, 312)).
assign(f_subtitle_paint_433, q_black_16, line(standard_chart_theme_1, 313)).
ref(t_color_4, q_black_16, line(standard_chart_theme_1, 313)).
assign(f_legend_background_paint_434, q_white_16, line(standard_chart_theme_1, 314)).
ref(t_color_4, q_white_16, line(standard_chart_theme_1, 314)).
assign(f_legend_item_paint_435, q_dark_gray_16, line(standard_chart_theme_1, 315)).
ref(t_color_4, q_dark_gray_16, line(standard_chart_theme_1, 315)).
assign(f_chart_background_paint_436, q_white_17, line(standard_chart_theme_1, 316)).
ref(t_color_4, q_white_17, line(standard_chart_theme_1, 316)).
assign(f_drawing_supplier_437, standard_chart_theme_1_expr38, line(standard_chart_theme_1, 317)).
method_invoc(standard_chart_theme_1_expr38, m_default_drawing_supplier_162, line(standard_chart_theme_1, 317)).
assign(f_plot_background_paint_438, q_light_gray_17, line(standard_chart_theme_1, 318)).
ref(t_color_4, q_light_gray_17, line(standard_chart_theme_1, 318)).
assign(f_plot_outline_paint_439, q_black_18, line(standard_chart_theme_1, 319)).
ref(t_color_4, q_black_18, line(standard_chart_theme_1, 319)).
assign(f_label_link_paint_440, q_black_18, line(standard_chart_theme_1, 320)).
ref(t_color_4, q_black_18, line(standard_chart_theme_1, 320)).
assign(f_label_link_style_441, q_cubic_curve_18, line(standard_chart_theme_1, 321)).
ref(t_pie_label_link_style_9, q_cubic_curve_18, line(standard_chart_theme_1, 321)).
assign(f_axis_offset_442, standard_chart_theme_1_expr54, line(standard_chart_theme_1, 322)).
method_invoc(standard_chart_theme_1_expr54, m_rectangle_insets_13, line(standard_chart_theme_1, 322)).
argument(standard_chart_theme_1_literal10, 1, standard_chart_theme_1_expr54).
argument(standard_chart_theme_1_literal11, 2, standard_chart_theme_1_expr54).
argument(standard_chart_theme_1_literal12, 3, standard_chart_theme_1_expr54).
argument(standard_chart_theme_1_literal13, 4, standard_chart_theme_1_expr54).
assign(f_domain_gridline_paint_443, q_white_19, line(standard_chart_theme_1, 323)).
ref(t_color_4, q_white_19, line(standard_chart_theme_1, 323)).
assign(f_range_gridline_paint_444, q_white_19, line(standard_chart_theme_1, 324)).
ref(t_color_4, q_white_19, line(standard_chart_theme_1, 324)).
assign(f_baseline_paint_445, q_black_19, line(standard_chart_theme_1, 325)).
ref(t_color_4, q_black_19, line(standard_chart_theme_1, 325)).
assign(f_crosshair_paint_446, q_blue_19, line(standard_chart_theme_1, 326)).
ref(t_color_4, q_blue_19, line(standard_chart_theme_1, 326)).
assign(f_axis_label_paint_447, q_dark_gray_20, line(standard_chart_theme_1, 327)).
ref(t_color_4, q_dark_gray_20, line(standard_chart_theme_1, 327)).
assign(f_tick_label_paint_448, q_dark_gray_20, line(standard_chart_theme_1, 328)).
ref(t_color_4, q_dark_gray_20, line(standard_chart_theme_1, 328)).
assign(f_bar_painter_449, standard_chart_theme_1_expr76, line(standard_chart_theme_1, 329)).
method_invoc(standard_chart_theme_1_expr76, m_gradient_bar_painter_163, line(standard_chart_theme_1, 329)).
assign(f_xy_bar_painter_450, standard_chart_theme_1_expr80, line(standard_chart_theme_1, 330)).
method_invoc(standard_chart_theme_1_expr80, m_gradient_xybar_painter_164, line(standard_chart_theme_1, 330)).
assign(f_shadow_visible_451, standard_chart_theme_1_literal14, line(standard_chart_theme_1, 331)).
assign(f_shadow_paint_452, q_gray_20, line(standard_chart_theme_1, 332)).
ref(t_color_4, q_gray_20, line(standard_chart_theme_1, 332)).
assign(f_item_label_paint_453, q_black_21, line(standard_chart_theme_1, 333)).
ref(t_color_4, q_black_21, line(standard_chart_theme_1, 333)).
assign(f_thermometer_paint_454, q_white_21, line(standard_chart_theme_1, 334)).
ref(t_color_4, q_white_21, line(standard_chart_theme_1, 334)).
assign(f_wall_paint_455, q_default_wall_paint_21, line(standard_chart_theme_1, 335)).
ref(t_bar_renderer3_d_10, q_default_wall_paint_21, line(standard_chart_theme_1, 335)).
assign(f_error_indicator_paint_456, q_black_22, line(standard_chart_theme_1, 336)).
ref(t_color_4, q_black_22, line(standard_chart_theme_1, 336)).
param(p_font_457, 1, m_set_extra_large_font_166).
param(p_font_458, 1, m_set_large_font_168).
param(p_font_459, 1, m_set_regular_font_170).
param(p_font_460, 1, m_set_small_font_172).
param(p_paint_461, 1, m_set_title_paint_174).
param(p_paint_462, 1, m_set_subtitle_paint_176).
param(p_paint_463, 1, m_set_chart_background_paint_178).
param(p_paint_464, 1, m_set_legend_background_paint_180).
param(p_paint_465, 1, m_set_legend_item_paint_182).
param(p_paint_466, 1, m_set_plot_background_paint_184).
param(p_paint_467, 1, m_set_plot_outline_paint_186).
param(p_style_468, 1, m_set_label_link_style_188).
param(p_paint_469, 1, m_set_label_link_paint_190).
param(p_paint_470, 1, m_set_domain_gridline_paint_192).
param(p_paint_471, 1, m_set_range_gridline_paint_194).
param(p_paint_472, 1, m_set_baseline_paint_196).
param(p_paint_473, 1, m_set_crosshair_paint_198).
param(p_offset_474, 1, m_set_axis_offset_200).
param(p_paint_475, 1, m_set_axis_label_paint_202).
param(p_paint_476, 1, m_set_tick_label_paint_204).
param(p_paint_477, 1, m_set_item_label_paint_206).
param(p_visible_478, 1, m_set_shadow_visible_208).
param(p_paint_479, 1, m_set_shadow_paint_210).
param(p_painter_480, 1, m_set_bar_painter_212).
param(p_painter_481, 1, m_set_xybar_painter_214).
param(p_paint_482, 1, m_set_thermometer_paint_216).
param(p_paint_483, 1, m_set_wall_paint_218).
param(p_paint_484, 1, m_set_error_indicator_paint_220).
param(p_paint_485, 1, m_set_grid_band_paint_222).
param(p_paint_486, 1, m_set_grid_band_alternate_paint_224).
assign(v_result_487, standard_chart_theme_1_literal15, line(standard_chart_theme_1, 1101)).
assign(v_pc_488, standard_chart_theme_1_expr103, line(standard_chart_theme_1, 1103)).
assign(standard_chart_theme_1_expr103, f_drawing_supplier_437, line(standard_chart_theme_1, 1103)).
assign(v_result_487, standard_chart_theme_1_expr107, line(standard_chart_theme_1, 1105)).
assign(standard_chart_theme_1_expr107, standard_chart_theme_1_expr108, line(standard_chart_theme_1, 1105)).
method_invoc(standard_chart_theme_1_expr108, m_clone_227, line(standard_chart_theme_1, 1105)).
throw(standard_chart_theme_1_expr108, clone_not_supported_exception, line(standard_chart_theme_1, 1105)).
ref(v_pc_488, standard_chart_theme_1_expr108, line(standard_chart_theme_1, 1105)).
return(v_result_487, m_get_drawing_supplier_226, line(standard_chart_theme_1, 1111)).
param(p_supplier_489, 1, m_set_drawing_supplier_228).
param(p_chart_490, 1, m_apply_229).
assign(v_title_491, standard_chart_theme_1_expr110, line(standard_chart_theme_1, 1137)).
method_invoc(standard_chart_theme_1_expr110, m_get_title_95, line(standard_chart_theme_1, 1137)).
ref(p_chart_490, standard_chart_theme_1_expr110, line(standard_chart_theme_1, 1137)).
method_invoc(standard_chart_theme_1_expr112, m_set_font_230, line(standard_chart_theme_1, 1139)).
argument(f_extra_large_font_428, 1, standard_chart_theme_1_expr112).
ref(v_title_491, standard_chart_theme_1_expr112, line(standard_chart_theme_1, 1139)).
method_invoc(standard_chart_theme_1_expr115, m_set_paint_231, line(standard_chart_theme_1, 1140)).
argument(f_title_paint_432, 1, standard_chart_theme_1_expr115).
ref(v_title_491, standard_chart_theme_1_expr115, line(standard_chart_theme_1, 1140)).
assign(v_subtitle_count_492, standard_chart_theme_1_expr118, line(standard_chart_theme_1, 1143)).
method_invoc(standard_chart_theme_1_expr118, m_get_subtitle_count_104, line(standard_chart_theme_1, 1143)).
ref(p_chart_490, standard_chart_theme_1_expr118, line(standard_chart_theme_1, 1143)).
assign(v_i_493, standard_chart_theme_1_literal18, line(standard_chart_theme_1, 1144)).
method_invoc(standard_chart_theme_1_expr122, m_apply_to_title_232, line(standard_chart_theme_1, 1145)).
argument(standard_chart_theme_1_expr123, 1, standard_chart_theme_1_expr122).
method_invoc(standard_chart_theme_1_expr123, m_get_subtitle_106, line(standard_chart_theme_1, 1145)).
argument(v_i_493, 1, standard_chart_theme_1_expr123).
ref(p_chart_490, standard_chart_theme_1_expr123, line(standard_chart_theme_1, 1145)).
method_invoc(standard_chart_theme_1_expr124, m_set_background_paint_121, line(standard_chart_theme_1, 1148)).
argument(f_chart_background_paint_436, 1, standard_chart_theme_1_expr124).
ref(p_chart_490, standard_chart_theme_1_expr124, line(standard_chart_theme_1, 1148)).
assign(v_plot_494, standard_chart_theme_1_expr127, line(standard_chart_theme_1, 1151)).
method_invoc(standard_chart_theme_1_expr127, m_get_plot_112, line(standard_chart_theme_1, 1151)).
ref(p_chart_490, standard_chart_theme_1_expr127, line(standard_chart_theme_1, 1151)).
method_invoc(standard_chart_theme_1_expr129, m_apply_to_plot_233, line(standard_chart_theme_1, 1153)).
argument(v_plot_494, 1, standard_chart_theme_1_expr129).
param(p_title_495, 1, m_apply_to_title_232).
assign(v_lt_496, standard_chart_theme_1_expr132, line(standard_chart_theme_1, 1169)).
assign(standard_chart_theme_1_expr132, p_title_495, line(standard_chart_theme_1, 1169)).
method_invoc(standard_chart_theme_1_expr134, m_get_background_paint_234, line(standard_chart_theme_1, 1170)).
ref(v_lt_496, standard_chart_theme_1_expr134, line(standard_chart_theme_1, 1170)).
method_invoc(standard_chart_theme_1_expr135, m_set_background_paint_80, line(standard_chart_theme_1, 1171)).
argument(f_legend_background_paint_434, 1, standard_chart_theme_1_expr135).
ref(v_lt_496, standard_chart_theme_1_expr135, line(standard_chart_theme_1, 1171)).
method_invoc(standard_chart_theme_1_expr138, m_set_item_font_235, line(standard_chart_theme_1, 1173)).
argument(f_regular_font_430, 1, standard_chart_theme_1_expr138).
ref(v_lt_496, standard_chart_theme_1_expr138, line(standard_chart_theme_1, 1173)).
method_invoc(standard_chart_theme_1_expr141, m_set_item_paint_236, line(standard_chart_theme_1, 1174)).
argument(f_legend_item_paint_435, 1, standard_chart_theme_1_expr141).
ref(v_lt_496, standard_chart_theme_1_expr141, line(standard_chart_theme_1, 1174)).
method_invoc(standard_chart_theme_1_expr145, m_get_wrapper_237, line(standard_chart_theme_1, 1175)).
ref(v_lt_496, standard_chart_theme_1_expr145, line(standard_chart_theme_1, 1175)).
param(p_bc_497, 1, m_apply_to_block_container_238).
param(p_b_498, 1, m_apply_to_block_239).
param(p_plot_499, 1, m_apply_to_plot_233).
method_invoc(standard_chart_theme_1_expr148, m_get_drawing_supplier_240, line(standard_chart_theme_1, 1239)).
ref(p_plot_499, standard_chart_theme_1_expr148, line(standard_chart_theme_1, 1239)).
method_invoc(standard_chart_theme_1_expr149, m_set_drawing_supplier_241, line(standard_chart_theme_1, 1240)).
argument(standard_chart_theme_1_expr150, 1, standard_chart_theme_1_expr149).
ref(p_plot_499, standard_chart_theme_1_expr149, line(standard_chart_theme_1, 1240)).
method_invoc(standard_chart_theme_1_expr150, m_get_drawing_supplier_226, line(standard_chart_theme_1, 1240)).
method_invoc(standard_chart_theme_1_expr152, m_get_background_paint_242, line(standard_chart_theme_1, 1242)).
ref(p_plot_499, standard_chart_theme_1_expr152, line(standard_chart_theme_1, 1242)).
method_invoc(standard_chart_theme_1_expr153, m_set_background_paint_243, line(standard_chart_theme_1, 1243)).
argument(f_plot_background_paint_438, 1, standard_chart_theme_1_expr153).
ref(p_plot_499, standard_chart_theme_1_expr153, line(standard_chart_theme_1, 1243)).
method_invoc(standard_chart_theme_1_expr156, m_set_outline_paint_244, line(standard_chart_theme_1, 1245)).
argument(f_plot_outline_paint_439, 1, standard_chart_theme_1_expr156).
ref(p_plot_499, standard_chart_theme_1_expr156, line(standard_chart_theme_1, 1245)).
method_invoc(standard_chart_theme_1_expr160, m_apply_to_pie_plot_245, line(standard_chart_theme_1, 1252)).
argument(standard_chart_theme_1_expr161, 1, standard_chart_theme_1_expr160).
assign(standard_chart_theme_1_expr161, p_plot_499, line(standard_chart_theme_1, 1252)).
method_invoc(standard_chart_theme_1_expr165, m_apply_to_xyplot_246, line(standard_chart_theme_1, 1261)).
argument(standard_chart_theme_1_expr166, 1, standard_chart_theme_1_expr165).
assign(standard_chart_theme_1_expr166, p_plot_499, line(standard_chart_theme_1, 1261)).
param(p_plot_500, 1, m_apply_to_pie_plot_245).
method_invoc(standard_chart_theme_1_expr167, m_set_label_link_paint_247, line(standard_chart_theme_1, 1288)).
argument(f_label_link_paint_440, 1, standard_chart_theme_1_expr167).
ref(p_plot_500, standard_chart_theme_1_expr167, line(standard_chart_theme_1, 1288)).
method_invoc(standard_chart_theme_1_expr170, m_set_label_link_style_248, line(standard_chart_theme_1, 1289)).
argument(f_label_link_style_441, 1, standard_chart_theme_1_expr170).
ref(p_plot_500, standard_chart_theme_1_expr170, line(standard_chart_theme_1, 1289)).
method_invoc(standard_chart_theme_1_expr173, m_set_label_font_249, line(standard_chart_theme_1, 1290)).
argument(f_regular_font_430, 1, standard_chart_theme_1_expr173).
ref(p_plot_500, standard_chart_theme_1_expr173, line(standard_chart_theme_1, 1290)).
method_invoc(standard_chart_theme_1_expr176, m_get_auto_populate_section_paint_250, line(standard_chart_theme_1, 1294)).
ref(p_plot_500, standard_chart_theme_1_expr176, line(standard_chart_theme_1, 1294)).
method_invoc(standard_chart_theme_1_expr177, m_clear_section_paints_251, line(standard_chart_theme_1, 1295)).
argument(standard_chart_theme_1_literal25, 1, standard_chart_theme_1_expr177).
ref(p_plot_500, standard_chart_theme_1_expr177, line(standard_chart_theme_1, 1295)).
method_invoc(standard_chart_theme_1_expr178, m_get_auto_populate_section_outline_paint_252, line(standard_chart_theme_1, 1297)).
ref(p_plot_500, standard_chart_theme_1_expr178, line(standard_chart_theme_1, 1297)).
method_invoc(standard_chart_theme_1_expr179, m_get_auto_populate_section_outline_stroke_253, line(standard_chart_theme_1, 1300)).
ref(p_plot_500, standard_chart_theme_1_expr179, line(standard_chart_theme_1, 1300)).
param(p_plot_501, 1, m_apply_to_multiple_pie_plot_254).
param(p_plot_502, 1, m_apply_to_category_plot_255).
param(p_plot_503, 1, m_apply_to_xyplot_246).
method_invoc(standard_chart_theme_1_expr180, m_set_axis_offset_256, line(standard_chart_theme_1, 1380)).
argument(f_axis_offset_442, 1, standard_chart_theme_1_expr180).
ref(p_plot_503, standard_chart_theme_1_expr180, line(standard_chart_theme_1, 1380)).
method_invoc(standard_chart_theme_1_expr183, m_set_domain_zero_baseline_paint_257, line(standard_chart_theme_1, 1381)).
argument(f_baseline_paint_445, 1, standard_chart_theme_1_expr183).
ref(p_plot_503, standard_chart_theme_1_expr183, line(standard_chart_theme_1, 1381)).
method_invoc(standard_chart_theme_1_expr186, m_set_range_zero_baseline_paint_258, line(standard_chart_theme_1, 1382)).
argument(f_baseline_paint_445, 1, standard_chart_theme_1_expr186).
ref(p_plot_503, standard_chart_theme_1_expr186, line(standard_chart_theme_1, 1382)).
method_invoc(standard_chart_theme_1_expr189, m_set_domain_gridline_paint_259, line(standard_chart_theme_1, 1383)).
argument(f_domain_gridline_paint_443, 1, standard_chart_theme_1_expr189).
ref(p_plot_503, standard_chart_theme_1_expr189, line(standard_chart_theme_1, 1383)).
method_invoc(standard_chart_theme_1_expr192, m_set_range_gridline_paint_260, line(standard_chart_theme_1, 1384)).
argument(f_range_gridline_paint_444, 1, standard_chart_theme_1_expr192).
ref(p_plot_503, standard_chart_theme_1_expr192, line(standard_chart_theme_1, 1384)).
method_invoc(standard_chart_theme_1_expr195, m_set_domain_crosshair_paint_261, line(standard_chart_theme_1, 1385)).
argument(f_crosshair_paint_446, 1, standard_chart_theme_1_expr195).
ref(p_plot_503, standard_chart_theme_1_expr195, line(standard_chart_theme_1, 1385)).
method_invoc(standard_chart_theme_1_expr198, m_set_range_crosshair_paint_262, line(standard_chart_theme_1, 1386)).
argument(f_crosshair_paint_446, 1, standard_chart_theme_1_expr198).
ref(p_plot_503, standard_chart_theme_1_expr198, line(standard_chart_theme_1, 1386)).
assign(v_domain_axis_count_504, standard_chart_theme_1_expr201, line(standard_chart_theme_1, 1388)).
method_invoc(standard_chart_theme_1_expr201, m_get_domain_axis_count_263, line(standard_chart_theme_1, 1388)).
ref(p_plot_503, standard_chart_theme_1_expr201, line(standard_chart_theme_1, 1388)).
assign(v_i_505, standard_chart_theme_1_literal26, line(standard_chart_theme_1, 1389)).
assign(v_axis_506, standard_chart_theme_1_expr205, line(standard_chart_theme_1, 1390)).
method_invoc(standard_chart_theme_1_expr205, m_get_domain_axis_264, line(standard_chart_theme_1, 1390)).
argument(v_i_505, 1, standard_chart_theme_1_expr205).
ref(p_plot_503, standard_chart_theme_1_expr205, line(standard_chart_theme_1, 1390)).
method_invoc(standard_chart_theme_1_expr207, m_apply_to_value_axis_265, line(standard_chart_theme_1, 1392)).
argument(v_axis_506, 1, standard_chart_theme_1_expr207).
assign(v_range_axis_count_507, standard_chart_theme_1_expr208, line(standard_chart_theme_1, 1397)).
method_invoc(standard_chart_theme_1_expr208, m_get_range_axis_count_266, line(standard_chart_theme_1, 1397)).
ref(p_plot_503, standard_chart_theme_1_expr208, line(standard_chart_theme_1, 1397)).
assign(v_i_508, standard_chart_theme_1_literal28, line(standard_chart_theme_1, 1398)).
assign(v_axis_509, standard_chart_theme_1_expr212, line(standard_chart_theme_1, 1399)).
assign(standard_chart_theme_1_expr212, standard_chart_theme_1_expr213, line(standard_chart_theme_1, 1399)).
method_invoc(standard_chart_theme_1_expr213, m_get_range_axis_267, line(standard_chart_theme_1, 1399)).
argument(v_i_508, 1, standard_chart_theme_1_expr213).
ref(p_plot_503, standard_chart_theme_1_expr213, line(standard_chart_theme_1, 1399)).
method_invoc(standard_chart_theme_1_expr215, m_apply_to_value_axis_265, line(standard_chart_theme_1, 1401)).
argument(v_axis_509, 1, standard_chart_theme_1_expr215).
assign(v_renderer_count_510, standard_chart_theme_1_expr216, line(standard_chart_theme_1, 1406)).
method_invoc(standard_chart_theme_1_expr216, m_get_renderer_count_268, line(standard_chart_theme_1, 1406)).
ref(p_plot_503, standard_chart_theme_1_expr216, line(standard_chart_theme_1, 1406)).
assign(v_i_511, standard_chart_theme_1_literal30, line(standard_chart_theme_1, 1407)).
assign(v_r_512, standard_chart_theme_1_expr220, line(standard_chart_theme_1, 1408)).
method_invoc(standard_chart_theme_1_expr220, m_get_renderer_269, line(standard_chart_theme_1, 1408)).
argument(v_i_511, 1, standard_chart_theme_1_expr220).
ref(p_plot_503, standard_chart_theme_1_expr220, line(standard_chart_theme_1, 1408)).
method_invoc(standard_chart_theme_1_expr222, m_apply_to_xyitem_renderer_270, line(standard_chart_theme_1, 1410)).
argument(v_r_512, 1, standard_chart_theme_1_expr222).
assign(v_iter_513, standard_chart_theme_1_expr223, line(standard_chart_theme_1, 1415)).
method_invoc(standard_chart_theme_1_expr223, m_iterator_271, line(standard_chart_theme_1, 1415)).
ref(standard_chart_theme_1_expr224, standard_chart_theme_1_expr223, line(standard_chart_theme_1, 1415)).
method_invoc(standard_chart_theme_1_expr224, m_get_annotations_272, line(standard_chart_theme_1, 1415)).
ref(p_plot_503, standard_chart_theme_1_expr224, line(standard_chart_theme_1, 1415)).
method_invoc(standard_chart_theme_1_expr225, m_has_next_273, line(standard_chart_theme_1, 1416)).
ref(v_iter_513, standard_chart_theme_1_expr225, line(standard_chart_theme_1, 1416)).
param(p_plot_514, 1, m_apply_to_fast_scatter_plot_274).
param(p_plot_515, 1, m_apply_to_polar_plot_275).
param(p_plot_516, 1, m_apply_to_spider_web_plot_276).
param(p_plot_517, 1, m_apply_to_meter_plot_277).
param(p_plot_518, 1, m_apply_to_thermometer_plot_278).
param(p_axis_519, 1, m_apply_to_category_axis_279).
param(p_axis_520, 1, m_apply_to_value_axis_265).
method_invoc(standard_chart_theme_1_expr228, m_set_label_font_280, line(standard_chart_theme_1, 1542)).
argument(f_large_font_429, 1, standard_chart_theme_1_expr228).
ref(p_axis_520, standard_chart_theme_1_expr228, line(standard_chart_theme_1, 1542)).
method_invoc(standard_chart_theme_1_expr231, m_set_label_paint_281, line(standard_chart_theme_1, 1543)).
argument(f_axis_label_paint_447, 1, standard_chart_theme_1_expr231).
ref(p_axis_520, standard_chart_theme_1_expr231, line(standard_chart_theme_1, 1543)).
method_invoc(standard_chart_theme_1_expr234, m_set_tick_label_font_282, line(standard_chart_theme_1, 1544)).
argument(f_regular_font_430, 1, standard_chart_theme_1_expr234).
ref(p_axis_520, standard_chart_theme_1_expr234, line(standard_chart_theme_1, 1544)).
method_invoc(standard_chart_theme_1_expr237, m_set_tick_label_paint_283, line(standard_chart_theme_1, 1545)).
argument(f_tick_label_paint_448, 1, standard_chart_theme_1_expr237).
ref(p_axis_520, standard_chart_theme_1_expr237, line(standard_chart_theme_1, 1545)).
param(p_axis_521, 1, m_apply_to_symbol_axis_284).
param(p_axis_522, 1, m_apply_to_period_axis_285).
param(p_renderer_523, 1, m_apply_to_abstract_renderer_286).
method_invoc(standard_chart_theme_1_expr242, m_get_auto_populate_series_paint_287, line(standard_chart_theme_1, 1588)).
ref(p_renderer_523, standard_chart_theme_1_expr242, line(standard_chart_theme_1, 1588)).
method_invoc(standard_chart_theme_1_expr243, m_clear_series_paints_288, line(standard_chart_theme_1, 1589)).
argument(standard_chart_theme_1_literal32, 1, standard_chart_theme_1_expr243).
ref(p_renderer_523, standard_chart_theme_1_expr243, line(standard_chart_theme_1, 1589)).
method_invoc(standard_chart_theme_1_expr244, m_get_auto_populate_series_stroke_289, line(standard_chart_theme_1, 1591)).
ref(p_renderer_523, standard_chart_theme_1_expr244, line(standard_chart_theme_1, 1591)).
method_invoc(standard_chart_theme_1_expr245, m_clear_series_strokes_290, line(standard_chart_theme_1, 1592)).
argument(standard_chart_theme_1_literal33, 1, standard_chart_theme_1_expr245).
ref(p_renderer_523, standard_chart_theme_1_expr245, line(standard_chart_theme_1, 1592)).
param(p_renderer_524, 1, m_apply_to_category_item_renderer_291).
param(p_renderer_525, 1, m_apply_to_xyitem_renderer_270).
method_invoc(standard_chart_theme_1_expr248, m_apply_to_abstract_renderer_286, line(standard_chart_theme_1, 1658)).
argument(standard_chart_theme_1_expr249, 1, standard_chart_theme_1_expr248).
assign(standard_chart_theme_1_expr249, p_renderer_525, line(standard_chart_theme_1, 1658)).
method_invoc(standard_chart_theme_1_expr250, m_set_base_item_label_font_292, line(standard_chart_theme_1, 1660)).
argument(f_regular_font_430, 1, standard_chart_theme_1_expr250).
ref(p_renderer_525, standard_chart_theme_1_expr250, line(standard_chart_theme_1, 1660)).
method_invoc(standard_chart_theme_1_expr253, m_set_base_item_label_paint_293, line(standard_chart_theme_1, 1661)).
argument(f_item_label_paint_453, 1, standard_chart_theme_1_expr253).
ref(p_renderer_525, standard_chart_theme_1_expr253, line(standard_chart_theme_1, 1661)).
param(p_annotation_526, 1, m_apply_to_xyannotation_294).
param(p_obj_527, 1, m_equals_295).
throw(m_clone_296, clone_not_supported_exception).
param(p_stream_528, 1, m_write_object_297).
throw(m_write_object_297, ioexception).
param(p_stream_529, 1, m_read_object_298).
throw(m_read_object_298, ioexception).
throw(m_read_object_298, class_not_found_exception).

%pie_label_link_style_1 - org.jfree.chart.plot.PieLabelLinkStyle
assign(f_standard_1487, pie_label_link_style_1_expr1, line(pie_label_link_style_1, 55)).
assign(f_quad_curve_1488, pie_label_link_style_1_expr2, line(pie_label_link_style_1, 59)).
assign(f_cubic_curve_1489, pie_label_link_style_1_expr3, line(pie_label_link_style_1, 63)).
param(p_name_1490, 1, m_pie_label_link_style_956).
assign(f_name_1491, p_name_1490, line(pie_label_link_style_1, 75)).
param(p_obj_1492, 1, m_equals_958).
throw(m_read_resolve_960, object_stream_exception).

%gradient_xybar_painter_1 - org.jfree.chart.renderer.xy.GradientXYBarPainter
method_invoc(gradient_xybar_painter_1_expr1, m_gradient_xybar_painter_1726, line(gradient_xybar_painter_1, 77)).
argument(gradient_xybar_painter_1_literal1, 1, gradient_xybar_painter_1_expr1).
argument(gradient_xybar_painter_1_literal2, 2, gradient_xybar_painter_1_expr1).
argument(gradient_xybar_painter_1_literal3, 3, gradient_xybar_painter_1_expr1).
param(p_g_1_2781, 1, m_gradient_xybar_painter_1726).
param(p_g_2_2782, 2, m_gradient_xybar_painter_1726).
param(p_g_3_2783, 3, m_gradient_xybar_painter_1726).
assign(f_g_1_2784, p_g_1_2781, line(gradient_xybar_painter_1, 88)).
assign(f_g_2_2785, p_g_2_2782, line(gradient_xybar_painter_1, 89)).
assign(f_g_3_2786, p_g_3_2783, line(gradient_xybar_painter_1, 90)).
param(p_g_2_2787, 1, m_paint_bar_1727).
param(p_renderer_2788, 2, m_paint_bar_1727).
param(p_row_2789, 3, m_paint_bar_1727).
param(p_column_2790, 4, m_paint_bar_1727).
param(p_selected_2791, 5, m_paint_bar_1727).
param(p_bar_2792, 6, m_paint_bar_1727).
param(p_base_2793, 7, m_paint_bar_1727).
param(p_g_2_2794, 1, m_paint_bar_shadow_1728).
param(p_renderer_2795, 2, m_paint_bar_shadow_1728).
param(p_row_2796, 3, m_paint_bar_shadow_1728).
param(p_column_2797, 4, m_paint_bar_shadow_1728).
param(p_selected_2798, 5, m_paint_bar_shadow_1728).
param(p_bar_2799, 6, m_paint_bar_shadow_1728).
param(p_base_2800, 7, m_paint_bar_shadow_1728).
param(p_peg_shadow_2801, 8, m_paint_bar_shadow_1728).
param(p_bar_2802, 1, m_create_shadow_1729).
param(p_x_offset_2803, 2, m_create_shadow_1729).
param(p_y_offset_2804, 3, m_create_shadow_1729).
param(p_base_2805, 4, m_create_shadow_1729).
param(p_peg_shadow_2806, 5, m_create_shadow_1729).
param(p_bar_2807, 1, m_split_vertical_bar_1730).
param(p_a_2808, 2, m_split_vertical_bar_1730).
param(p_b_2809, 3, m_split_vertical_bar_1730).
param(p_c_2810, 4, m_split_vertical_bar_1730).
param(p_bar_2811, 1, m_split_horizontal_bar_1731).
param(p_a_2812, 2, m_split_horizontal_bar_1731).
param(p_b_2813, 3, m_split_horizontal_bar_1731).
param(p_c_2814, 4, m_split_horizontal_bar_1731).
param(p_obj_2815, 1, m_equals_1732).

%abstract_block_1 - org.jfree.chart.block.AbstractBlock
assign(f_id_1091, abstract_block_1_literal1, line(abstract_block_1, 110)).
assign(f_width_1092, abstract_block_1_literal2, line(abstract_block_1, 111)).
assign(f_height_1093, abstract_block_1_literal3, line(abstract_block_1, 112)).
assign(f_bounds_1094, abstract_block_1_expr12, line(abstract_block_1, 113)).
method_invoc(abstract_block_1_expr12, m_float_667, line(abstract_block_1, 113)).
assign(f_margin_1095, q_zero_insets_36, line(abstract_block_1, 114)).
ref(t_rectangle_insets_6, q_zero_insets_36, line(abstract_block_1, 114)).
assign(f_frame_1096, q_none_36, line(abstract_block_1, 115)).
ref(t_block_border_21, q_none_36, line(abstract_block_1, 115)).
assign(f_padding_1097, q_zero_insets_37, line(abstract_block_1, 116)).
ref(t_rectangle_insets_6, q_zero_insets_37, line(abstract_block_1, 116)).
param(p_id_1098, 1, m_set_id_669).
param(p_width_1099, 1, m_set_width_671).
param(p_height_1100, 1, m_set_height_673).
param(p_margin_1101, 1, m_set_margin_77).
assign(f_margin_1095, p_margin_1101, line(abstract_block_1, 212)).
param(p_top_1102, 1, m_set_margin_675).
param(p_left_1103, 2, m_set_margin_675).
param(p_bottom_1104, 3, m_set_margin_675).
param(p_right_1105, 4, m_set_margin_675).
param(p_frame_1106, 1, m_set_frame_78).
assign(f_frame_1096, p_frame_1106, line(abstract_block_1, 254)).
param(p_padding_1107, 1, m_set_padding_678).
assign(f_padding_1097, p_padding_1107, line(abstract_block_1, 280)).
param(p_top_1108, 1, m_set_padding_679).
param(p_left_1109, 2, m_set_padding_679).
param(p_bottom_1110, 3, m_set_padding_679).
param(p_right_1111, 4, m_set_padding_679).
param(p_g_2_1112, 1, m_arrange_682).
param(p_g_2_1113, 1, m_arrange_683).
param(p_constraint_1114, 2, m_arrange_683).
param(p_bounds_1115, 1, m_set_bounds_685).
param(p_fixed_width_1116, 1, m_trim_to_content_width_686).
param(p_fixed_height_1117, 1, m_trim_to_content_height_687).
param(p_c_1118, 1, m_to_content_constraint_688).
param(p_r_1119, 1, m_trim_to_content_width_689).
param(p_r_1120, 1, m_trim_to_content_height_690).
param(p_content_width_1121, 1, m_calculate_total_width_691).
param(p_content_height_1122, 1, m_calculate_total_height_692).
param(p_area_1123, 1, m_trim_margin_693).
param(p_area_1124, 1, m_trim_border_694).
param(p_area_1125, 1, m_trim_padding_695).
param(p_g_2_1126, 1, m_draw_border_696).
param(p_area_1127, 2, m_draw_border_696).
param(p_obj_1128, 1, m_equals_697).
throw(m_clone_698, clone_not_supported_exception).
param(p_stream_1129, 1, m_write_object_699).
throw(m_write_object_699, ioexception).
param(p_stream_1130, 1, m_read_object_700).
throw(m_read_object_700, ioexception).
throw(m_read_object_700, class_not_found_exception).

%chart_change_event_1 - org.jfree.chart.event.ChartChangeEvent
param(p_source_1243, 1, m_chart_change_event_759).
method_invoc(chart_change_event_1_expr1, m_chart_change_event_761, line(chart_change_event_1, 69)).
argument(p_source_1243, 1, chart_change_event_1_expr1).
argument(chart_change_event_1_literal1, 2, chart_change_event_1_expr1).
argument(q_general_39, 3, chart_change_event_1_expr1).
ref(t_chart_change_event_type_24, q_general_39, line(chart_change_event_1, 69)).
param(p_source_1245, 1, m_chart_change_event_762).
param(p_chart_1246, 2, m_chart_change_event_762).
param(p_source_1247, 1, m_chart_change_event_761).
param(p_chart_1248, 2, m_chart_change_event_761).
param(p_type_1249, 3, m_chart_change_event_761).
method_invoc(chart_change_event_1_expr2, m_event_object_763, line(chart_change_event_1, 93)).
argument(p_source_1247, 1, chart_change_event_1_expr2).
assign(f_chart_1250, p_chart_1248, line(chart_change_event_1, 94)).
assign(f_type_1251, p_type_1249, line(chart_change_event_1, 95)).
param(p_chart_1252, 1, m_set_chart_150).
assign(f_chart_1250, p_chart_1252, line(chart_change_event_1, 113)).
param(p_type_1253, 1, m_set_type_766).
assign(f_type_1251, p_type_1253, line(chart_change_event_1, 131)).

%boolean_list_1 - org.jfree.chart.util.BooleanList
param(p_index_3216, 1, m_get_boolean_1956).
param(p_index_3217, 1, m_set_boolean_1957).
param(p_b_3218, 2, m_set_boolean_1957).
param(p_obj_3219, 1, m_equals_1958).

%range_type_1 - org.jfree.data.RangeType
assign(f_full_3415, range_type_1_expr1, line(range_type_1, 56)).
method_invoc(range_type_1_expr1, m_range_type_2107, line(range_type_1, 56)).
argument(range_type_1_literal1, 1, range_type_1_expr1).
assign(f_positive_3416, range_type_1_expr2, line(range_type_1, 59)).
assign(f_negative_3417, range_type_1_expr3, line(range_type_1, 63)).
param(p_name_3418, 1, m_range_type_2107).
assign(f_name_3419, p_name_3418, line(range_type_1, 75)).
param(p_obj_3420, 1, m_equals_2109).
throw(m_read_resolve_2111, object_stream_exception).

%rectangle_anchor_1 - org.jfree.chart.util.RectangleAnchor
assign(f_center_3244, rectangle_anchor_1_expr1, line(rectangle_anchor_1, 63)).
assign(f_top_3245, rectangle_anchor_1_expr2, line(rectangle_anchor_1, 67)).
assign(f_top_left_3246, rectangle_anchor_1_expr3, line(rectangle_anchor_1, 71)).
assign(f_top_right_3247, rectangle_anchor_1_expr4, line(rectangle_anchor_1, 75)).
assign(f_bottom_3248, rectangle_anchor_1_expr5, line(rectangle_anchor_1, 79)).
assign(f_bottom_left_3249, rectangle_anchor_1_expr6, line(rectangle_anchor_1, 83)).
assign(f_bottom_right_3250, rectangle_anchor_1_expr7, line(rectangle_anchor_1, 87)).
assign(f_left_3251, rectangle_anchor_1_expr8, line(rectangle_anchor_1, 91)).
assign(f_right_3252, rectangle_anchor_1_expr9, line(rectangle_anchor_1, 95)).
param(p_name_3253, 1, m_rectangle_anchor_1980).
assign(f_name_3254, p_name_3253, line(rectangle_anchor_1, 107)).
param(p_obj_3255, 1, m_equals_1982).
param(p_rectangle_3256, 1, m_coordinates_1984).
param(p_anchor_3257, 2, m_coordinates_1984).
param(p_dimensions_3258, 1, m_create_rectangle_1985).
param(p_anchor_x_3259, 2, m_create_rectangle_1985).
param(p_anchor_y_3260, 3, m_create_rectangle_1985).
param(p_anchor_3261, 4, m_create_rectangle_1985).
throw(m_read_resolve_1986, object_stream_exception).

%chart_factory_1 - org.jfree.chart.ChartFactory
assign(f_current_theme_28, chart_factory_1_expr1, line(chart_factory_1, 233)).
method_invoc(chart_factory_1_expr1, m_standard_chart_theme_4, line(chart_factory_1, 233)).
argument(chart_factory_1_literal1, 1, chart_factory_1_expr1).
param(p_theme_29, 1, m_set_chart_theme_6).
param(p_title_30, 1, m_create_pie_chart_7).
param(p_dataset_31, 2, m_create_pie_chart_7).
param(p_legend_32, 3, m_create_pie_chart_7).
param(p_tooltips_33, 4, m_create_pie_chart_7).
param(p_locale_34, 5, m_create_pie_chart_7).
param(p_title_35, 1, m_create_pie_chart_8).
param(p_dataset_36, 2, m_create_pie_chart_8).
param(p_legend_37, 3, m_create_pie_chart_8).
param(p_tooltips_38, 4, m_create_pie_chart_8).
param(p_urls_39, 5, m_create_pie_chart_8).
assign(v_plot_40, chart_factory_1_expr2, line(chart_factory_1, 333)).
method_invoc(chart_factory_1_expr2, m_pie_plot_9, line(chart_factory_1, 333)).
argument(p_dataset_36, 1, chart_factory_1_expr2).
method_invoc(chart_factory_1_expr3, m_set_label_generator_10, line(chart_factory_1, 334)).
argument(chart_factory_1_expr4, 1, chart_factory_1_expr3).
ref(v_plot_40, chart_factory_1_expr3, line(chart_factory_1, 334)).
method_invoc(chart_factory_1_expr4, m_standard_pie_section_label_generator_11, line(chart_factory_1, 334)).
method_invoc(chart_factory_1_expr5, m_set_insets_12, line(chart_factory_1, 335)).
argument(chart_factory_1_expr6, 1, chart_factory_1_expr5).
ref(v_plot_40, chart_factory_1_expr5, line(chart_factory_1, 335)).
method_invoc(chart_factory_1_expr6, m_rectangle_insets_13, line(chart_factory_1, 335)).
argument(chart_factory_1_literal2, 1, chart_factory_1_expr6).
argument(chart_factory_1_literal3, 2, chart_factory_1_expr6).
argument(chart_factory_1_literal4, 3, chart_factory_1_expr6).
argument(chart_factory_1_literal5, 4, chart_factory_1_expr6).
method_invoc(chart_factory_1_expr7, m_set_tool_tip_generator_14, line(chart_factory_1, 337)).
argument(chart_factory_1_expr8, 1, chart_factory_1_expr7).
ref(v_plot_40, chart_factory_1_expr7, line(chart_factory_1, 337)).
method_invoc(chart_factory_1_expr8, m_standard_pie_tool_tip_generator_15, line(chart_factory_1, 337)).
assign(v_chart_41, chart_factory_1_expr9, line(chart_factory_1, 342)).
method_invoc(chart_factory_1_expr9, m_jfree_chart_16, line(chart_factory_1, 342)).
argument(p_title_35, 1, chart_factory_1_expr9).
argument(q_default_title_font_1, 2, chart_factory_1_expr9).
argument(v_plot_40, 3, chart_factory_1_expr9).
argument(p_legend_37, 4, chart_factory_1_expr9).
ref(t_jfree_chart_1, q_default_title_font_1, line(chart_factory_1, 342)).
method_invoc(chart_factory_1_expr10, m_apply_17, line(chart_factory_1, 344)).
argument(v_chart_41, 1, chart_factory_1_expr10).
ref(f_current_theme_28, chart_factory_1_expr10, line(chart_factory_1, 344)).
return(v_chart_41, m_create_pie_chart_8, line(chart_factory_1, 345)).
param(p_title_42, 1, m_create_pie_chart_18).
param(p_dataset_43, 2, m_create_pie_chart_18).
param(p_previous_dataset_44, 3, m_create_pie_chart_18).
param(p_percent_diff_for_max_scale_45, 4, m_create_pie_chart_18).
param(p_green_for_increase_46, 5, m_create_pie_chart_18).
param(p_legend_47, 6, m_create_pie_chart_18).
param(p_tooltips_48, 7, m_create_pie_chart_18).
param(p_locale_49, 8, m_create_pie_chart_18).
param(p_sub_title_50, 9, m_create_pie_chart_18).
param(p_show_difference_51, 10, m_create_pie_chart_18).
param(p_title_52, 1, m_create_pie_chart_19).
param(p_dataset_53, 2, m_create_pie_chart_19).
param(p_previous_dataset_54, 3, m_create_pie_chart_19).
param(p_percent_diff_for_max_scale_55, 4, m_create_pie_chart_19).
param(p_green_for_increase_56, 5, m_create_pie_chart_19).
param(p_legend_57, 6, m_create_pie_chart_19).
param(p_tooltips_58, 7, m_create_pie_chart_19).
param(p_urls_59, 8, m_create_pie_chart_19).
param(p_sub_title_60, 9, m_create_pie_chart_19).
param(p_show_difference_61, 10, m_create_pie_chart_19).
param(p_title_62, 1, m_create_ring_chart_20).
param(p_dataset_63, 2, m_create_ring_chart_20).
param(p_legend_64, 3, m_create_ring_chart_20).
param(p_tooltips_65, 4, m_create_ring_chart_20).
param(p_locale_66, 5, m_create_ring_chart_20).
param(p_title_67, 1, m_create_ring_chart_21).
param(p_dataset_68, 2, m_create_ring_chart_21).
param(p_legend_69, 3, m_create_ring_chart_21).
param(p_tooltips_70, 4, m_create_ring_chart_21).
param(p_urls_71, 5, m_create_ring_chart_21).
param(p_title_72, 1, m_create_multiple_pie_chart_22).
param(p_dataset_73, 2, m_create_multiple_pie_chart_22).
param(p_order_74, 3, m_create_multiple_pie_chart_22).
param(p_legend_75, 4, m_create_multiple_pie_chart_22).
param(p_tooltips_76, 5, m_create_multiple_pie_chart_22).
param(p_urls_77, 6, m_create_multiple_pie_chart_22).
param(p_title_78, 1, m_create_pie_chart3_d_23).
param(p_dataset_79, 2, m_create_pie_chart3_d_23).
param(p_legend_80, 3, m_create_pie_chart3_d_23).
param(p_tooltips_81, 4, m_create_pie_chart3_d_23).
param(p_locale_82, 5, m_create_pie_chart3_d_23).
param(p_title_83, 1, m_create_pie_chart3_d_24).
param(p_dataset_84, 2, m_create_pie_chart3_d_24).
param(p_legend_85, 3, m_create_pie_chart3_d_24).
param(p_tooltips_86, 4, m_create_pie_chart3_d_24).
param(p_urls_87, 5, m_create_pie_chart3_d_24).
param(p_title_88, 1, m_create_multiple_pie_chart3_d_25).
param(p_dataset_89, 2, m_create_multiple_pie_chart3_d_25).
param(p_order_90, 3, m_create_multiple_pie_chart3_d_25).
param(p_legend_91, 4, m_create_multiple_pie_chart3_d_25).
param(p_tooltips_92, 5, m_create_multiple_pie_chart3_d_25).
param(p_urls_93, 6, m_create_multiple_pie_chart3_d_25).
param(p_title_94, 1, m_create_bar_chart_26).
param(p_category_axis_label_95, 2, m_create_bar_chart_26).
param(p_value_axis_label_96, 3, m_create_bar_chart_26).
param(p_dataset_97, 4, m_create_bar_chart_26).
param(p_orientation_98, 5, m_create_bar_chart_26).
param(p_legend_99, 6, m_create_bar_chart_26).
param(p_tooltips_100, 7, m_create_bar_chart_26).
param(p_urls_101, 8, m_create_bar_chart_26).
param(p_title_102, 1, m_create_stacked_bar_chart_27).
param(p_domain_axis_label_103, 2, m_create_stacked_bar_chart_27).
param(p_range_axis_label_104, 3, m_create_stacked_bar_chart_27).
param(p_dataset_105, 4, m_create_stacked_bar_chart_27).
param(p_orientation_106, 5, m_create_stacked_bar_chart_27).
param(p_legend_107, 6, m_create_stacked_bar_chart_27).
param(p_tooltips_108, 7, m_create_stacked_bar_chart_27).
param(p_urls_109, 8, m_create_stacked_bar_chart_27).
param(p_title_110, 1, m_create_bar_chart3_d_28).
param(p_category_axis_label_111, 2, m_create_bar_chart3_d_28).
param(p_value_axis_label_112, 3, m_create_bar_chart3_d_28).
param(p_dataset_113, 4, m_create_bar_chart3_d_28).
param(p_orientation_114, 5, m_create_bar_chart3_d_28).
param(p_legend_115, 6, m_create_bar_chart3_d_28).
param(p_tooltips_116, 7, m_create_bar_chart3_d_28).
param(p_urls_117, 8, m_create_bar_chart3_d_28).
param(p_title_118, 1, m_create_stacked_bar_chart3_d_29).
param(p_category_axis_label_119, 2, m_create_stacked_bar_chart3_d_29).
param(p_value_axis_label_120, 3, m_create_stacked_bar_chart3_d_29).
param(p_dataset_121, 4, m_create_stacked_bar_chart3_d_29).
param(p_orientation_122, 5, m_create_stacked_bar_chart3_d_29).
param(p_legend_123, 6, m_create_stacked_bar_chart3_d_29).
param(p_tooltips_124, 7, m_create_stacked_bar_chart3_d_29).
param(p_urls_125, 8, m_create_stacked_bar_chart3_d_29).
param(p_title_126, 1, m_create_area_chart_30).
param(p_category_axis_label_127, 2, m_create_area_chart_30).
param(p_value_axis_label_128, 3, m_create_area_chart_30).
param(p_dataset_129, 4, m_create_area_chart_30).
param(p_orientation_130, 5, m_create_area_chart_30).
param(p_legend_131, 6, m_create_area_chart_30).
param(p_tooltips_132, 7, m_create_area_chart_30).
param(p_urls_133, 8, m_create_area_chart_30).
param(p_title_134, 1, m_create_stacked_area_chart_31).
param(p_category_axis_label_135, 2, m_create_stacked_area_chart_31).
param(p_value_axis_label_136, 3, m_create_stacked_area_chart_31).
param(p_dataset_137, 4, m_create_stacked_area_chart_31).
param(p_orientation_138, 5, m_create_stacked_area_chart_31).
param(p_legend_139, 6, m_create_stacked_area_chart_31).
param(p_tooltips_140, 7, m_create_stacked_area_chart_31).
param(p_urls_141, 8, m_create_stacked_area_chart_31).
param(p_title_142, 1, m_create_line_chart_32).
param(p_category_axis_label_143, 2, m_create_line_chart_32).
param(p_value_axis_label_144, 3, m_create_line_chart_32).
param(p_dataset_145, 4, m_create_line_chart_32).
param(p_orientation_146, 5, m_create_line_chart_32).
param(p_legend_147, 6, m_create_line_chart_32).
param(p_tooltips_148, 7, m_create_line_chart_32).
param(p_urls_149, 8, m_create_line_chart_32).
param(p_title_150, 1, m_create_line_chart3_d_33).
param(p_category_axis_label_151, 2, m_create_line_chart3_d_33).
param(p_value_axis_label_152, 3, m_create_line_chart3_d_33).
param(p_dataset_153, 4, m_create_line_chart3_d_33).
param(p_orientation_154, 5, m_create_line_chart3_d_33).
param(p_legend_155, 6, m_create_line_chart3_d_33).
param(p_tooltips_156, 7, m_create_line_chart3_d_33).
param(p_urls_157, 8, m_create_line_chart3_d_33).
param(p_title_158, 1, m_create_gantt_chart_34).
param(p_category_axis_label_159, 2, m_create_gantt_chart_34).
param(p_date_axis_label_160, 3, m_create_gantt_chart_34).
param(p_dataset_161, 4, m_create_gantt_chart_34).
param(p_legend_162, 5, m_create_gantt_chart_34).
param(p_tooltips_163, 6, m_create_gantt_chart_34).
param(p_urls_164, 7, m_create_gantt_chart_34).
param(p_title_165, 1, m_create_waterfall_chart_35).
param(p_category_axis_label_166, 2, m_create_waterfall_chart_35).
param(p_value_axis_label_167, 3, m_create_waterfall_chart_35).
param(p_dataset_168, 4, m_create_waterfall_chart_35).
param(p_orientation_169, 5, m_create_waterfall_chart_35).
param(p_legend_170, 6, m_create_waterfall_chart_35).
param(p_tooltips_171, 7, m_create_waterfall_chart_35).
param(p_urls_172, 8, m_create_waterfall_chart_35).
param(p_title_173, 1, m_create_polar_chart_36).
param(p_dataset_174, 2, m_create_polar_chart_36).
param(p_legend_175, 3, m_create_polar_chart_36).
param(p_tooltips_176, 4, m_create_polar_chart_36).
param(p_urls_177, 5, m_create_polar_chart_36).
param(p_title_178, 1, m_create_scatter_plot_37).
param(p_x_axis_label_179, 2, m_create_scatter_plot_37).
param(p_y_axis_label_180, 3, m_create_scatter_plot_37).
param(p_dataset_181, 4, m_create_scatter_plot_37).
param(p_orientation_182, 5, m_create_scatter_plot_37).
param(p_legend_183, 6, m_create_scatter_plot_37).
param(p_tooltips_184, 7, m_create_scatter_plot_37).
param(p_urls_185, 8, m_create_scatter_plot_37).
assign(v_x_axis_186, chart_factory_1_expr12, line(chart_factory_1, 1485)).
method_invoc(chart_factory_1_expr12, m_number_axis_38, line(chart_factory_1, 1485)).
argument(p_x_axis_label_179, 1, chart_factory_1_expr12).
method_invoc(chart_factory_1_expr13, m_set_auto_range_includes_zero_39, line(chart_factory_1, 1486)).
argument(chart_factory_1_literal7, 1, chart_factory_1_expr13).
ref(v_x_axis_186, chart_factory_1_expr13, line(chart_factory_1, 1486)).
assign(v_y_axis_187, chart_factory_1_expr14, line(chart_factory_1, 1487)).
method_invoc(chart_factory_1_expr14, m_number_axis_38, line(chart_factory_1, 1487)).
argument(p_y_axis_label_180, 1, chart_factory_1_expr14).
method_invoc(chart_factory_1_expr15, m_set_auto_range_includes_zero_39, line(chart_factory_1, 1488)).
argument(chart_factory_1_literal8, 1, chart_factory_1_expr15).
ref(v_y_axis_187, chart_factory_1_expr15, line(chart_factory_1, 1488)).
assign(v_plot_188, chart_factory_1_expr16, line(chart_factory_1, 1490)).
method_invoc(chart_factory_1_expr16, m_xyplot_40, line(chart_factory_1, 1490)).
argument(p_dataset_181, 1, chart_factory_1_expr16).
argument(v_x_axis_186, 2, chart_factory_1_expr16).
argument(v_y_axis_187, 3, chart_factory_1_expr16).
argument(chart_factory_1_literal9, 4, chart_factory_1_expr16).
param(p_title_189, 1, m_create_xybar_chart_41).
param(p_x_axis_label_190, 2, m_create_xybar_chart_41).
param(p_date_axis_191, 3, m_create_xybar_chart_41).
param(p_y_axis_label_192, 4, m_create_xybar_chart_41).
param(p_dataset_193, 5, m_create_xybar_chart_41).
param(p_orientation_194, 6, m_create_xybar_chart_41).
param(p_legend_195, 7, m_create_xybar_chart_41).
param(p_tooltips_196, 8, m_create_xybar_chart_41).
param(p_urls_197, 9, m_create_xybar_chart_41).
param(p_title_198, 1, m_create_xyarea_chart_42).
param(p_x_axis_label_199, 2, m_create_xyarea_chart_42).
param(p_y_axis_label_200, 3, m_create_xyarea_chart_42).
param(p_dataset_201, 4, m_create_xyarea_chart_42).
param(p_orientation_202, 5, m_create_xyarea_chart_42).
param(p_legend_203, 6, m_create_xyarea_chart_42).
param(p_tooltips_204, 7, m_create_xyarea_chart_42).
param(p_urls_205, 8, m_create_xyarea_chart_42).
assign(v_x_axis_206, chart_factory_1_expr18, line(chart_factory_1, 1616)).
method_invoc(chart_factory_1_expr18, m_number_axis_38, line(chart_factory_1, 1616)).
argument(p_x_axis_label_199, 1, chart_factory_1_expr18).
method_invoc(chart_factory_1_expr19, m_set_auto_range_includes_zero_39, line(chart_factory_1, 1617)).
argument(chart_factory_1_literal11, 1, chart_factory_1_expr19).
ref(v_x_axis_206, chart_factory_1_expr19, line(chart_factory_1, 1617)).
assign(v_y_axis_207, chart_factory_1_expr20, line(chart_factory_1, 1618)).
method_invoc(chart_factory_1_expr20, m_number_axis_38, line(chart_factory_1, 1618)).
argument(p_y_axis_label_200, 1, chart_factory_1_expr20).
assign(v_plot_208, chart_factory_1_expr21, line(chart_factory_1, 1619)).
method_invoc(chart_factory_1_expr21, m_xyplot_40, line(chart_factory_1, 1619)).
argument(p_dataset_201, 1, chart_factory_1_expr21).
argument(v_x_axis_206, 2, chart_factory_1_expr21).
argument(v_y_axis_207, 3, chart_factory_1_expr21).
argument(chart_factory_1_literal12, 4, chart_factory_1_expr21).
param(p_title_209, 1, m_create_stacked_xyarea_chart_43).
param(p_x_axis_label_210, 2, m_create_stacked_xyarea_chart_43).
param(p_y_axis_label_211, 3, m_create_stacked_xyarea_chart_43).
param(p_dataset_212, 4, m_create_stacked_xyarea_chart_43).
param(p_orientation_213, 5, m_create_stacked_xyarea_chart_43).
param(p_legend_214, 6, m_create_stacked_xyarea_chart_43).
param(p_tooltips_215, 7, m_create_stacked_xyarea_chart_43).
param(p_urls_216, 8, m_create_stacked_xyarea_chart_43).
param(p_title_217, 1, m_create_xyline_chart_44).
param(p_x_axis_label_218, 2, m_create_xyline_chart_44).
param(p_y_axis_label_219, 3, m_create_xyline_chart_44).
param(p_dataset_220, 4, m_create_xyline_chart_44).
param(p_orientation_221, 5, m_create_xyline_chart_44).
param(p_legend_222, 6, m_create_xyline_chart_44).
param(p_tooltips_223, 7, m_create_xyline_chart_44).
param(p_urls_224, 8, m_create_xyline_chart_44).
assign(v_x_axis_225, chart_factory_1_expr23, line(chart_factory_1, 1729)).
method_invoc(chart_factory_1_expr23, m_number_axis_38, line(chart_factory_1, 1729)).
argument(p_x_axis_label_218, 1, chart_factory_1_expr23).
method_invoc(chart_factory_1_expr24, m_set_auto_range_includes_zero_39, line(chart_factory_1, 1730)).
argument(chart_factory_1_literal14, 1, chart_factory_1_expr24).
ref(v_x_axis_225, chart_factory_1_expr24, line(chart_factory_1, 1730)).
assign(v_y_axis_226, chart_factory_1_expr25, line(chart_factory_1, 1731)).
method_invoc(chart_factory_1_expr25, m_number_axis_38, line(chart_factory_1, 1731)).
argument(p_y_axis_label_219, 1, chart_factory_1_expr25).
assign(v_renderer_227, chart_factory_1_expr26, line(chart_factory_1, 1732)).
method_invoc(chart_factory_1_expr26, m_xyline_and_shape_renderer_45, line(chart_factory_1, 1732)).
argument(chart_factory_1_literal15, 1, chart_factory_1_expr26).
argument(chart_factory_1_literal16, 2, chart_factory_1_expr26).
assign(v_plot_228, chart_factory_1_expr27, line(chart_factory_1, 1733)).
method_invoc(chart_factory_1_expr27, m_xyplot_40, line(chart_factory_1, 1733)).
argument(p_dataset_220, 1, chart_factory_1_expr27).
argument(v_x_axis_225, 2, chart_factory_1_expr27).
argument(v_y_axis_226, 3, chart_factory_1_expr27).
argument(v_renderer_227, 4, chart_factory_1_expr27).
method_invoc(chart_factory_1_expr28, m_set_orientation_46, line(chart_factory_1, 1734)).
argument(p_orientation_221, 1, chart_factory_1_expr28).
ref(v_plot_228, chart_factory_1_expr28, line(chart_factory_1, 1734)).
assign(v_chart_229, chart_factory_1_expr29, line(chart_factory_1, 1742)).
method_invoc(chart_factory_1_expr29, m_jfree_chart_16, line(chart_factory_1, 1742)).
argument(p_title_217, 1, chart_factory_1_expr29).
argument(q_default_title_font_2, 2, chart_factory_1_expr29).
argument(v_plot_228, 3, chart_factory_1_expr29).
argument(p_legend_222, 4, chart_factory_1_expr29).
ref(t_jfree_chart_1, q_default_title_font_2, line(chart_factory_1, 1742)).
method_invoc(chart_factory_1_expr30, m_apply_17, line(chart_factory_1, 1744)).
argument(v_chart_229, 1, chart_factory_1_expr30).
ref(f_current_theme_28, chart_factory_1_expr30, line(chart_factory_1, 1744)).
return(v_chart_229, m_create_xyline_chart_44, line(chart_factory_1, 1745)).
param(p_title_230, 1, m_create_xystep_chart_47).
param(p_x_axis_label_231, 2, m_create_xystep_chart_47).
param(p_y_axis_label_232, 3, m_create_xystep_chart_47).
param(p_dataset_233, 4, m_create_xystep_chart_47).
param(p_orientation_234, 5, m_create_xystep_chart_47).
param(p_legend_235, 6, m_create_xystep_chart_47).
param(p_tooltips_236, 7, m_create_xystep_chart_47).
param(p_urls_237, 8, m_create_xystep_chart_47).
assign(v_x_axis_238, chart_factory_1_expr32, line(chart_factory_1, 1776)).
method_invoc(chart_factory_1_expr32, m_date_axis_48, line(chart_factory_1, 1776)).
argument(p_x_axis_label_231, 1, chart_factory_1_expr32).
assign(v_y_axis_239, chart_factory_1_expr33, line(chart_factory_1, 1777)).
method_invoc(chart_factory_1_expr33, m_number_axis_38, line(chart_factory_1, 1777)).
argument(p_y_axis_label_232, 1, chart_factory_1_expr33).
method_invoc(chart_factory_1_expr34, m_set_standard_tick_units_49, line(chart_factory_1, 1778)).
argument(chart_factory_1_expr35, 1, chart_factory_1_expr34).
ref(v_y_axis_239, chart_factory_1_expr34, line(chart_factory_1, 1778)).
method_invoc(chart_factory_1_expr35, m_create_integer_tick_units_50, line(chart_factory_1, 1778)).
ref(t_number_axis_2, chart_factory_1_expr35, line(chart_factory_1, 1778)).
assign(v_tool_tip_generator_240, chart_factory_1_literal18, line(chart_factory_1, 1780)).
assign(v_tool_tip_generator_240, chart_factory_1_expr37, line(chart_factory_1, 1782)).
method_invoc(chart_factory_1_expr37, m_standard_xytool_tip_generator_51, line(chart_factory_1, 1782)).
assign(v_url_generator_241, chart_factory_1_literal19, line(chart_factory_1, 1785)).
assign(v_url_generator_241, chart_factory_1_expr39, line(chart_factory_1, 1787)).
method_invoc(chart_factory_1_expr39, m_standard_xyurlgenerator_52, line(chart_factory_1, 1787)).
assign(v_renderer_242, chart_factory_1_expr40, line(chart_factory_1, 1789)).
assign(v_plot_243, chart_factory_1_expr41, line(chart_factory_1, 1792)).
method_invoc(chart_factory_1_expr41, m_xyplot_40, line(chart_factory_1, 1792)).
argument(p_dataset_233, 1, chart_factory_1_expr41).
argument(v_x_axis_238, 2, chart_factory_1_expr41).
argument(v_y_axis_239, 3, chart_factory_1_expr41).
argument(chart_factory_1_literal20, 4, chart_factory_1_expr41).
param(p_title_244, 1, m_create_xystep_area_chart_53).
param(p_x_axis_label_245, 2, m_create_xystep_area_chart_53).
param(p_y_axis_label_246, 3, m_create_xystep_area_chart_53).
param(p_dataset_247, 4, m_create_xystep_area_chart_53).
param(p_orientation_248, 5, m_create_xystep_area_chart_53).
param(p_legend_249, 6, m_create_xystep_area_chart_53).
param(p_tooltips_250, 7, m_create_xystep_area_chart_53).
param(p_urls_251, 8, m_create_xystep_area_chart_53).
assign(v_x_axis_252, chart_factory_1_expr43, line(chart_factory_1, 1831)).
method_invoc(chart_factory_1_expr43, m_number_axis_38, line(chart_factory_1, 1831)).
argument(p_x_axis_label_245, 1, chart_factory_1_expr43).
method_invoc(chart_factory_1_expr44, m_set_auto_range_includes_zero_39, line(chart_factory_1, 1832)).
argument(chart_factory_1_literal22, 1, chart_factory_1_expr44).
ref(v_x_axis_252, chart_factory_1_expr44, line(chart_factory_1, 1832)).
assign(v_y_axis_253, chart_factory_1_expr45, line(chart_factory_1, 1833)).
method_invoc(chart_factory_1_expr45, m_number_axis_38, line(chart_factory_1, 1833)).
argument(p_y_axis_label_246, 1, chart_factory_1_expr45).
assign(v_tool_tip_generator_254, chart_factory_1_literal23, line(chart_factory_1, 1835)).
assign(v_tool_tip_generator_254, chart_factory_1_expr47, line(chart_factory_1, 1837)).
method_invoc(chart_factory_1_expr47, m_standard_xytool_tip_generator_51, line(chart_factory_1, 1837)).
assign(v_url_generator_255, chart_factory_1_literal24, line(chart_factory_1, 1840)).
assign(v_url_generator_255, chart_factory_1_expr49, line(chart_factory_1, 1842)).
method_invoc(chart_factory_1_expr49, m_standard_xyurlgenerator_52, line(chart_factory_1, 1842)).
assign(v_renderer_256, chart_factory_1_expr50, line(chart_factory_1, 1844)).
method_invoc(chart_factory_1_expr50, m_xystep_area_renderer_54, line(chart_factory_1, 1844)).
argument(q_area_and_shapes_2, 1, chart_factory_1_expr50).
argument(v_tool_tip_generator_254, 2, chart_factory_1_expr50).
argument(v_url_generator_255, 3, chart_factory_1_expr50).
assign(v_plot_257, chart_factory_1_expr51, line(chart_factory_1, 1848)).
method_invoc(chart_factory_1_expr51, m_xyplot_40, line(chart_factory_1, 1848)).
argument(p_dataset_247, 1, chart_factory_1_expr51).
argument(v_x_axis_252, 2, chart_factory_1_expr51).
argument(v_y_axis_253, 3, chart_factory_1_expr51).
argument(chart_factory_1_literal25, 4, chart_factory_1_expr51).
param(p_title_258, 1, m_create_time_series_chart_55).
param(p_time_axis_label_259, 2, m_create_time_series_chart_55).
param(p_value_axis_label_260, 3, m_create_time_series_chart_55).
param(p_dataset_261, 4, m_create_time_series_chart_55).
param(p_legend_262, 5, m_create_time_series_chart_55).
param(p_tooltips_263, 6, m_create_time_series_chart_55).
param(p_urls_264, 7, m_create_time_series_chart_55).
assign(v_time_axis_265, chart_factory_1_expr52, line(chart_factory_1, 1888)).
method_invoc(chart_factory_1_expr52, m_date_axis_48, line(chart_factory_1, 1888)).
argument(p_time_axis_label_259, 1, chart_factory_1_expr52).
method_invoc(chart_factory_1_expr53, m_set_lower_margin_56, line(chart_factory_1, 1889)).
argument(chart_factory_1_literal26, 1, chart_factory_1_expr53).
ref(v_time_axis_265, chart_factory_1_expr53, line(chart_factory_1, 1889)).
method_invoc(chart_factory_1_expr54, m_set_upper_margin_57, line(chart_factory_1, 1890)).
argument(chart_factory_1_literal27, 1, chart_factory_1_expr54).
ref(v_time_axis_265, chart_factory_1_expr54, line(chart_factory_1, 1890)).
assign(v_value_axis_266, chart_factory_1_expr55, line(chart_factory_1, 1891)).
method_invoc(chart_factory_1_expr55, m_number_axis_38, line(chart_factory_1, 1891)).
argument(p_value_axis_label_260, 1, chart_factory_1_expr55).
method_invoc(chart_factory_1_expr56, m_set_auto_range_includes_zero_39, line(chart_factory_1, 1892)).
argument(chart_factory_1_literal28, 1, chart_factory_1_expr56).
ref(v_value_axis_266, chart_factory_1_expr56, line(chart_factory_1, 1892)).
assign(v_plot_267, chart_factory_1_expr57, line(chart_factory_1, 1893)).
method_invoc(chart_factory_1_expr57, m_xyplot_40, line(chart_factory_1, 1893)).
argument(p_dataset_261, 1, chart_factory_1_expr57).
argument(v_time_axis_265, 2, chart_factory_1_expr57).
argument(v_value_axis_266, 3, chart_factory_1_expr57).
argument(chart_factory_1_literal29, 4, chart_factory_1_expr57).
param(p_title_268, 1, m_create_candlestick_chart_58).
param(p_time_axis_label_269, 2, m_create_candlestick_chart_58).
param(p_value_axis_label_270, 3, m_create_candlestick_chart_58).
param(p_dataset_271, 4, m_create_candlestick_chart_58).
param(p_legend_272, 5, m_create_candlestick_chart_58).
param(p_title_273, 1, m_create_high_low_chart_59).
param(p_time_axis_label_274, 2, m_create_high_low_chart_59).
param(p_value_axis_label_275, 3, m_create_high_low_chart_59).
param(p_dataset_276, 4, m_create_high_low_chart_59).
param(p_legend_277, 5, m_create_high_low_chart_59).
param(p_title_278, 1, m_create_high_low_chart_60).
param(p_time_axis_label_279, 2, m_create_high_low_chart_60).
param(p_value_axis_label_280, 3, m_create_high_low_chart_60).
param(p_dataset_281, 4, m_create_high_low_chart_60).
param(p_timeline_282, 5, m_create_high_low_chart_60).
param(p_legend_283, 6, m_create_high_low_chart_60).
param(p_title_284, 1, m_create_bubble_chart_61).
param(p_x_axis_label_285, 2, m_create_bubble_chart_61).
param(p_y_axis_label_286, 3, m_create_bubble_chart_61).
param(p_dataset_287, 4, m_create_bubble_chart_61).
param(p_orientation_288, 5, m_create_bubble_chart_61).
param(p_legend_289, 6, m_create_bubble_chart_61).
param(p_tooltips_290, 7, m_create_bubble_chart_61).
param(p_urls_291, 8, m_create_bubble_chart_61).
param(p_title_292, 1, m_create_histogram_62).
param(p_x_axis_label_293, 2, m_create_histogram_62).
param(p_y_axis_label_294, 3, m_create_histogram_62).
param(p_dataset_295, 4, m_create_histogram_62).
param(p_orientation_296, 5, m_create_histogram_62).
param(p_legend_297, 6, m_create_histogram_62).
param(p_tooltips_298, 7, m_create_histogram_62).
param(p_urls_299, 8, m_create_histogram_62).
param(p_title_300, 1, m_create_box_and_whisker_chart_63).
param(p_category_axis_label_301, 2, m_create_box_and_whisker_chart_63).
param(p_value_axis_label_302, 3, m_create_box_and_whisker_chart_63).
param(p_dataset_303, 4, m_create_box_and_whisker_chart_63).
param(p_legend_304, 5, m_create_box_and_whisker_chart_63).
param(p_title_305, 1, m_create_box_and_whisker_chart_64).
param(p_time_axis_label_306, 2, m_create_box_and_whisker_chart_64).
param(p_value_axis_label_307, 3, m_create_box_and_whisker_chart_64).
param(p_dataset_308, 4, m_create_box_and_whisker_chart_64).
param(p_legend_309, 5, m_create_box_and_whisker_chart_64).
param(p_title_310, 1, m_create_wind_plot_65).
param(p_x_axis_label_311, 2, m_create_wind_plot_65).
param(p_y_axis_label_312, 3, m_create_wind_plot_65).
param(p_dataset_313, 4, m_create_wind_plot_65).
param(p_legend_314, 5, m_create_wind_plot_65).
param(p_tooltips_315, 6, m_create_wind_plot_65).
param(p_urls_316, 7, m_create_wind_plot_65).
param(p_title_317, 1, m_create_wafer_map_chart_66).
param(p_dataset_318, 2, m_create_wafer_map_chart_66).
param(p_orientation_319, 3, m_create_wafer_map_chart_66).
param(p_legend_320, 4, m_create_wafer_map_chart_66).
param(p_tooltips_321, 5, m_create_wafer_map_chart_66).
param(p_urls_322, 6, m_create_wafer_map_chart_66).

%object_list_1 - org.jfree.chart.util.ObjectList
param(p_initial_capacity_3225, 1, m_object_list_1965).
param(p_index_3226, 1, m_get_1172).
return(object_list_1_expr1, m_get_1172, line(object_list_1, 85)).
method_invoc(object_list_1_expr1, m_get_1947, line(object_list_1, 85)).
argument(p_index_3226, 1, object_list_1_expr1).
param(p_index_3227, 1, m_set_1160).
param(p_object_3228, 2, m_set_1160).
method_invoc(object_list_1_expr2, m_set_1948, line(object_list_1, 95)).
argument(p_index_3227, 1, object_list_1_expr2).
argument(p_object_3228, 2, object_list_1_expr2).
param(p_object_3229, 1, m_index_of_1228).
return(object_list_1_expr3, m_index_of_1228, line(object_list_1, 107)).
method_invoc(object_list_1_expr3, m_index_of_1950, line(object_list_1, 107)).
argument(p_object_3229, 1, object_list_1_expr3).

%plot_orientation_1 - org.jfree.chart.plot.PlotOrientation
assign(f_horizontal_1775, plot_orientation_1_expr1, line(plot_orientation_1, 57)).
assign(f_vertical_1776, plot_orientation_1_expr2, line(plot_orientation_1, 61)).
param(p_name_1777, 1, m_plot_orientation_1146).
assign(f_name_1778, p_name_1777, line(plot_orientation_1, 73)).
param(p_obj_1779, 1, m_equals_1148).
throw(m_read_resolve_1150, object_stream_exception).

%abstract_xyitem_label_generator_1 - org.jfree.chart.labels.AbstractXYItemLabelGenerator
assign(f_null_ystring_1312, abstract_xyitem_label_generator_1_literal1, line(abstract_xyitem_label_generator_1, 91)).
param(p_format_string_1313, 1, m_abstract_xyitem_label_generator_855).
param(p_x_format_1314, 2, m_abstract_xyitem_label_generator_855).
param(p_y_format_1315, 3, m_abstract_xyitem_label_generator_855).
assign(f_format_string_1316, p_format_string_1313, line(abstract_xyitem_label_generator_1, 124)).
assign(f_x_format_1317, p_x_format_1314, line(abstract_xyitem_label_generator_1, 125)).
assign(f_y_format_1318, p_y_format_1315, line(abstract_xyitem_label_generator_1, 126)).
param(p_format_string_1319, 1, m_abstract_xyitem_label_generator_856).
param(p_x_format_1320, 2, m_abstract_xyitem_label_generator_856).
param(p_y_format_1321, 3, m_abstract_xyitem_label_generator_856).
param(p_format_string_1322, 1, m_abstract_xyitem_label_generator_857).
param(p_x_format_1323, 2, m_abstract_xyitem_label_generator_857).
param(p_y_format_1324, 3, m_abstract_xyitem_label_generator_857).
param(p_format_string_1325, 1, m_abstract_xyitem_label_generator_858).
param(p_x_format_1326, 2, m_abstract_xyitem_label_generator_858).
param(p_y_format_1327, 3, m_abstract_xyitem_label_generator_858).
param(p_dataset_1328, 1, m_generate_label_string_864).
param(p_series_1329, 2, m_generate_label_string_864).
param(p_item_1330, 3, m_generate_label_string_864).
param(p_dataset_1331, 1, m_create_item_array_866).
param(p_series_1332, 2, m_create_item_array_866).
param(p_item_1333, 3, m_create_item_array_866).
param(p_obj_1334, 1, m_equals_867).
throw(m_clone_869, clone_not_supported_exception).

%xystep_area_renderer_1 - org.jfree.chart.renderer.xy.XYStepAreaRenderer
assign(f_p_area_2929, xystep_area_renderer_1_literal1, line(xystep_area_renderer_1, 118)).
param(p_type_2930, 1, m_xystep_area_renderer_1783).
param(p_type_2931, 1, m_xystep_area_renderer_54).
param(p_tool_tip_generator_2932, 2, m_xystep_area_renderer_54).
param(p_url_generator_2933, 3, m_xystep_area_renderer_54).
method_invoc(xystep_area_renderer_1_expr1, m_abstract_xyitem_renderer_1664, line(xystep_area_renderer_1, 157)).
method_invoc(xystep_area_renderer_1_expr2, m_set_base_tool_tip_generator_1681, line(xystep_area_renderer_1, 158)).
argument(p_tool_tip_generator_2932, 1, xystep_area_renderer_1_expr2).
method_invoc(xystep_area_renderer_1_expr3, m_set_base_urlgenerator_1688, line(xystep_area_renderer_1, 159)).
argument(p_url_generator_2933, 1, xystep_area_renderer_1_expr3).
assign(f_plot_area_2937, xystep_area_renderer_1_literal2, line(xystep_area_renderer_1, 168)).
assign(f_shapes_visible_2938, xystep_area_renderer_1_literal3, line(xystep_area_renderer_1, 169)).
assign(f_show_outline_2939, xystep_area_renderer_1_literal4, line(xystep_area_renderer_1, 171)).
param(p_show_2940, 1, m_set_outline_1785).
param(p_flag_2941, 1, m_set_shapes_visible_1787).
param(p_filled_2942, 1, m_set_shapes_filled_1789).
param(p_flag_2943, 1, m_set_plot_area_1791).
param(p_val_2944, 1, m_set_range_base_1793).
param(p_g_2_2945, 1, m_initialise_1794).
param(p_data_area_2946, 2, m_initialise_1794).
param(p_plot_2947, 3, m_initialise_1794).
param(p_data_2948, 4, m_initialise_1794).
param(p_info_2949, 5, m_initialise_1794).
param(p_g_2_2950, 1, m_draw_item_1795).
param(p_state_2951, 2, m_draw_item_1795).
param(p_data_area_2952, 3, m_draw_item_1795).
param(p_plot_2953, 4, m_draw_item_1795).
param(p_domain_axis_2954, 5, m_draw_item_1795).
param(p_range_axis_2955, 6, m_draw_item_1795).
param(p_dataset_2956, 7, m_draw_item_1795).
param(p_series_2957, 8, m_draw_item_1795).
param(p_item_2958, 9, m_draw_item_1795).
param(p_selected_2959, 10, m_draw_item_1795).
param(p_pass_2960, 11, m_draw_item_1795).
param(p_obj_2961, 1, m_equals_1796).
throw(m_clone_1797, clone_not_supported_exception).
param(p_value_2962, 1, m_restrict_value_to_data_area_1798).
param(p_plot_2963, 2, m_restrict_value_to_data_area_1798).
param(p_data_area_2964, 3, m_restrict_value_to_data_area_1798).

%time_series_collection_1 - org.jfree.data.time.TimeSeriesCollection
method_invoc(time_series_collection_1_expr1, m_time_series_collection_2418, line(time_series_collection_1, 144)).
argument(time_series_collection_1_literal1, 1, time_series_collection_1_expr1).
argument(time_series_collection_1_expr2, 2, time_series_collection_1_expr1).
method_invoc(time_series_collection_1_expr2, m_get_default_387, line(time_series_collection_1, 144)).
ref(t_time_zone_12, time_series_collection_1_expr2, line(time_series_collection_1, 144)).
param(p_zone_3835, 1, m_time_series_collection_2419).
param(p_series_3836, 1, m_time_series_collection_2420).
param(p_series_3837, 1, m_time_series_collection_2418).
param(p_zone_3838, 2, m_time_series_collection_2418).
method_invoc(time_series_collection_1_expr3, m_abstract_interval_xydataset_2421, line(time_series_collection_1, 178)).
assign(f_working_calendar_3839, time_series_collection_1_expr7, line(time_series_collection_1, 183)).
method_invoc(time_series_collection_1_expr7, m_get_instance_2247, line(time_series_collection_1, 183)).
argument(p_zone_3838, 1, time_series_collection_1_expr7).
ref(t_calendar_44, time_series_collection_1_expr7, line(time_series_collection_1, 183)).
assign(f_data_3840, time_series_collection_1_expr11, line(time_series_collection_1, 184)).
method_invoc(time_series_collection_1_expr11, m_array_list_75, line(time_series_collection_1, 184)).
assign(f_x_position_3841, q_start_89, line(time_series_collection_1, 189)).
ref(t_time_period_anchor_49, q_start_89, line(time_series_collection_1, 189)).
method_invoc(time_series_collection_1_expr17, m_set_selection_state_2422, line(time_series_collection_1, 190)).
argument(time_series_collection_1_expr18, 1, time_series_collection_1_expr17).
param(p_anchor_3842, 1, m_set_xposition_2425).
param(p_series_3843, 1, m_index_of_2428).
param(p_series_3844, 1, m_get_series_2429).
param(p_key_3845, 1, m_get_series_2430).
param(p_series_3846, 1, m_get_series_key_2431).
param(p_series_3847, 1, m_add_series_799).
method_invoc(time_series_collection_1_expr20, m_add_82, line(time_series_collection_1, 322)).
argument(p_series_3847, 1, time_series_collection_1_expr20).
ref(f_data_3840, time_series_collection_1_expr20, line(time_series_collection_1, 322)).
method_invoc(time_series_collection_1_expr23, m_add_change_listener_2219, line(time_series_collection_1, 323)).
argument(time_series_collection_1_expr24, 1, time_series_collection_1_expr23).
ref(p_series_3847, time_series_collection_1_expr23, line(time_series_collection_1, 323)).
method_invoc(time_series_collection_1_expr25, m_fire_dataset_changed_2119, line(time_series_collection_1, 324)).
param(p_series_3848, 1, m_remove_series_2432).
param(p_index_3849, 1, m_remove_series_2433).
param(p_series_3850, 1, m_get_item_count_2435).
param(p_series_3851, 1, m_get_xvalue_2436).
param(p_item_3852, 2, m_get_xvalue_2436).
param(p_series_3853, 1, m_get_x_2437).
param(p_item_3854, 2, m_get_x_2437).
param(p_period_3855, 1, m_get_x_2438).
param(p_series_3856, 1, m_get_start_x_2439).
param(p_item_3857, 2, m_get_start_x_2439).
param(p_series_3858, 1, m_get_end_x_2440).
param(p_item_3859, 2, m_get_end_x_2440).
param(p_series_3860, 1, m_get_y_2441).
param(p_item_3861, 2, m_get_y_2441).
param(p_series_3862, 1, m_get_start_y_2442).
param(p_item_3863, 2, m_get_start_y_2442).
param(p_series_3864, 1, m_get_end_y_2443).
param(p_item_3865, 2, m_get_end_y_2443).
param(p_series_3866, 1, m_is_selected_2444).
param(p_item_3867, 2, m_is_selected_2444).
param(p_series_3868, 1, m_set_selected_2445).
param(p_item_3869, 2, m_set_selected_2445).
param(p_selected_3870, 3, m_set_selected_2445).
param(p_series_3871, 1, m_set_selected_2446).
param(p_item_3872, 2, m_set_selected_2446).
param(p_selected_3873, 3, m_set_selected_2446).
param(p_notify_3874, 4, m_set_selected_2446).
param(p_series_3875, 1, m_get_surrounding_items_2448).
param(p_milliseconds_3876, 2, m_get_surrounding_items_2448).
param(p_include_interval_3877, 1, m_get_domain_lower_bound_2449).
param(p_include_interval_3878, 1, m_get_domain_upper_bound_2450).
param(p_include_interval_3879, 1, m_get_domain_bounds_2451).
assign(v_result_3880, time_series_collection_1_literal5, line(time_series_collection_1, 636)).
assign(v_iterator_3881, time_series_collection_1_expr26, line(time_series_collection_1, 637)).
method_invoc(time_series_collection_1_expr26, m_iterator_271, line(time_series_collection_1, 637)).
ref(f_data_3840, time_series_collection_1_expr26, line(time_series_collection_1, 637)).
method_invoc(time_series_collection_1_expr29, m_has_next_273, line(time_series_collection_1, 638)).
ref(v_iterator_3881, time_series_collection_1_expr29, line(time_series_collection_1, 638)).
assign(v_series_3882, time_series_collection_1_expr30, line(time_series_collection_1, 639)).
assign(time_series_collection_1_expr30, time_series_collection_1_expr31, line(time_series_collection_1, 639)).
method_invoc(time_series_collection_1_expr31, m_next_1335, line(time_series_collection_1, 639)).
ref(v_iterator_3881, time_series_collection_1_expr31, line(time_series_collection_1, 639)).
assign(v_count_3883, time_series_collection_1_expr32, line(time_series_collection_1, 640)).
method_invoc(time_series_collection_1_expr32, m_get_item_count_2363, line(time_series_collection_1, 640)).
ref(v_series_3882, time_series_collection_1_expr32, line(time_series_collection_1, 640)).
assign(v_start_3884, time_series_collection_1_expr34, line(time_series_collection_1, 642)).
method_invoc(time_series_collection_1_expr34, m_get_time_period_2376, line(time_series_collection_1, 642)).
argument(time_series_collection_1_literal7, 1, time_series_collection_1_expr34).
ref(v_series_3882, time_series_collection_1_expr34, line(time_series_collection_1, 642)).
assign(v_end_3885, time_series_collection_1_expr35, line(time_series_collection_1, 643)).
method_invoc(time_series_collection_1_expr35, m_get_time_period_2376, line(time_series_collection_1, 643)).
argument(time_series_collection_1_expr36, 1, time_series_collection_1_expr35).
ref(v_series_3882, time_series_collection_1_expr35, line(time_series_collection_1, 643)).
assign(v_temp_3886, time_series_collection_1_expr39, line(time_series_collection_1, 649)).
method_invoc(time_series_collection_1_expr39, m_range_501, line(time_series_collection_1, 649)).
argument(time_series_collection_1_expr40, 1, time_series_collection_1_expr39).
argument(time_series_collection_1_expr41, 2, time_series_collection_1_expr39).
assign(v_result_3880, time_series_collection_1_expr43, line(time_series_collection_1, 653)).
method_invoc(time_series_collection_1_expr43, m_combine_1336, line(time_series_collection_1, 653)).
argument(v_result_3880, 1, time_series_collection_1_expr43).
argument(v_temp_3886, 2, time_series_collection_1_expr43).
ref(t_range_32, time_series_collection_1_expr43, line(time_series_collection_1, 653)).
return(v_result_3880, m_get_domain_bounds_2451, line(time_series_collection_1, 656)).
param(p_visible_series_keys_3887, 1, m_get_domain_bounds_2452).
param(p_include_interval_3888, 2, m_get_domain_bounds_2452).
param(p_visible_series_keys_3889, 1, m_get_range_bounds_2453).
param(p_x_range_3890, 2, m_get_range_bounds_2453).
param(p_include_interval_3891, 3, m_get_range_bounds_2453).
param(p_obj_3892, 1, m_equals_2454).
throw(m_clone_2456, clone_not_supported_exception).

%tick_units_1 - org.jfree.chart.axis.TickUnits
assign(f_tick_units_947, tick_units_1_expr3, line(tick_units_1, 80)).
method_invoc(tick_units_1_expr3, m_array_list_75, line(tick_units_1, 80)).
param(p_unit_948, 1, m_add_430).
method_invoc(tick_units_1_expr6, m_add_82, line(tick_units_1, 93)).
argument(p_unit_948, 1, tick_units_1_expr6).
ref(f_tick_units_947, tick_units_1_expr6, line(tick_units_1, 93)).
method_invoc(tick_units_1_expr9, m_sort_556, line(tick_units_1, 94)).
argument(f_tick_units_947, 1, tick_units_1_expr9).
ref(t_collections_19, tick_units_1_expr9, line(tick_units_1, 94)).
param(p_pos_949, 1, m_get_558).
param(p_unit_950, 1, m_get_larger_tick_unit_559).
param(p_unit_951, 1, m_get_ceiling_tick_unit_560).
param(p_size_952, 1, m_get_ceiling_tick_unit_561).
throw(m_clone_562, clone_not_supported_exception).
param(p_obj_953, 1, m_equals_563).

%paint_list_1 - org.jfree.chart.util.PaintList
method_invoc(paint_list_1_expr1, m_abstract_object_list_1944, line(paint_list_1, 59)).
param(p_index_3230, 1, m_get_paint_1966).
param(p_index_3231, 1, m_set_paint_1967).
param(p_paint_3232, 2, m_set_paint_1967).
param(p_obj_3233, 1, m_equals_1968).
param(p_stream_3234, 1, m_write_object_1970).
throw(m_write_object_1970, ioexception).
param(p_stream_3235, 1, m_read_object_1971).
throw(m_read_object_1971, ioexception).
throw(m_read_object_1971, class_not_found_exception).

%xystep_chart_tests_1 - org.jfree.chart.junit.XYStepChartTests
return(xystep_chart_tests_1_expr1, m_suite_837, line(xystep_chart_tests_1, 80)).
method_invoc(xystep_chart_tests_1_expr1, m_test_suite_627, line(xystep_chart_tests_1, 80)).
argument(xystep_chart_tests_1_expr2, 1, xystep_chart_tests_1_expr1).
param(p_name_1296, 1, m_xystep_chart_tests_838).
method_invoc(xystep_chart_tests_1_expr3, m_test_case_629, line(xystep_chart_tests_1, 89)).
argument(p_name_1296, 1, xystep_chart_tests_1_expr3).
assign(f_chart_1297, xystep_chart_tests_1_expr6, line(xystep_chart_tests_1, 96)).
method_invoc(xystep_chart_tests_1_expr6, m_create_chart_840, line(xystep_chart_tests_1, 96)).
assign(v_series_1_1298, xystep_chart_tests_1_expr8, line(xystep_chart_tests_1, 170)).
method_invoc(xystep_chart_tests_1_expr8, m_xyseries_638, line(xystep_chart_tests_1, 170)).
argument(xystep_chart_tests_1_literal1, 1, xystep_chart_tests_1_expr8).
method_invoc(xystep_chart_tests_1_expr9, m_add_639, line(xystep_chart_tests_1, 171)).
argument(xystep_chart_tests_1_literal2, 1, xystep_chart_tests_1_expr9).
argument(xystep_chart_tests_1_literal3, 2, xystep_chart_tests_1_expr9).
ref(v_series_1_1298, xystep_chart_tests_1_expr9, line(xystep_chart_tests_1, 171)).
method_invoc(xystep_chart_tests_1_expr10, m_add_639, line(xystep_chart_tests_1, 172)).
argument(xystep_chart_tests_1_literal4, 1, xystep_chart_tests_1_expr10).
argument(xystep_chart_tests_1_literal5, 2, xystep_chart_tests_1_expr10).
ref(v_series_1_1298, xystep_chart_tests_1_expr10, line(xystep_chart_tests_1, 172)).
method_invoc(xystep_chart_tests_1_expr11, m_add_639, line(xystep_chart_tests_1, 173)).
argument(xystep_chart_tests_1_literal6, 1, xystep_chart_tests_1_expr11).
argument(xystep_chart_tests_1_literal7, 2, xystep_chart_tests_1_expr11).
ref(v_series_1_1298, xystep_chart_tests_1_expr11, line(xystep_chart_tests_1, 173)).
assign(v_dataset_1299, xystep_chart_tests_1_expr12, line(xystep_chart_tests_1, 174)).
method_invoc(xystep_chart_tests_1_expr12, m_xyseries_collection_664, line(xystep_chart_tests_1, 174)).
argument(v_series_1_1298, 1, xystep_chart_tests_1_expr12).
return(xystep_chart_tests_1_expr13, m_create_chart_840, line(xystep_chart_tests_1, 177)).
method_invoc(xystep_chart_tests_1_expr13, m_create_xystep_chart_47, line(xystep_chart_tests_1, 177)).
argument(xystep_chart_tests_1_literal8, 1, xystep_chart_tests_1_expr13).
argument(xystep_chart_tests_1_literal9, 2, xystep_chart_tests_1_expr13).
argument(xystep_chart_tests_1_literal10, 3, xystep_chart_tests_1_expr13).
argument(v_dataset_1299, 4, xystep_chart_tests_1_expr13).
argument(q_vertical_40, 5, xystep_chart_tests_1_expr13).
argument(xystep_chart_tests_1_literal11, 6, xystep_chart_tests_1_expr13).
argument(xystep_chart_tests_1_literal12, 7, xystep_chart_tests_1_expr13).
argument(xystep_chart_tests_1_literal13, 8, xystep_chart_tests_1_expr13).
ref(t_chart_factory_20, xystep_chart_tests_1_expr13, line(xystep_chart_tests_1, 177)).
param(p_event_1300, 1, m_chart_changed_844).

%series_rendering_order_1 - org.jfree.chart.plot.SeriesRenderingOrder
assign(f_forward_1780, series_rendering_order_1_expr1, line(series_rendering_order_1, 60)).
assign(f_reverse_1781, series_rendering_order_1_expr2, line(series_rendering_order_1, 67)).
param(p_name_1782, 1, m_series_rendering_order_1151).
assign(f_name_1783, p_name_1782, line(series_rendering_order_1, 79)).
param(p_obj_1784, 1, m_equals_1153).
throw(m_read_resolve_1155, object_stream_exception).

%interval_xydelegate_1 - org.jfree.data.xy.IntervalXYDelegate
param(p_dataset_3936, 1, m_interval_xydelegate_2486).
param(p_dataset_3937, 1, m_interval_xydelegate_2487).
param(p_auto_width_3938, 2, m_interval_xydelegate_2487).
assign(f_dataset_3939, p_dataset_3937, line(interval_xydelegate_1, 136)).
assign(f_auto_width_3940, p_auto_width_3938, line(interval_xydelegate_1, 137)).
assign(f_interval_position_factor_3941, interval_xydelegate_1_literal2, line(interval_xydelegate_1, 138)).
assign(f_auto_interval_width_3942, q_positive_infinity_90, line(interval_xydelegate_1, 139)).
ref(t_double_42, q_positive_infinity_90, line(interval_xydelegate_1, 139)).
assign(f_fixed_interval_width_3943, interval_xydelegate_1_literal3, line(interval_xydelegate_1, 140)).
return(f_auto_width_3940, m_is_auto_width_2488, line(interval_xydelegate_1, 150)).
param(p_b_3944, 1, m_set_auto_width_2489).
return(f_interval_position_factor_3941, m_get_interval_position_factor_2490, line(interval_xydelegate_1, 177)).
param(p_d_3945, 1, m_set_interval_position_factor_2491).
param(p_w_3946, 1, m_set_fixed_interval_width_2493).
assign(f_fixed_interval_width_3943, p_w_3946, line(interval_xydelegate_1, 228)).
assign(f_auto_width_3940, interval_xydelegate_1_literal5, line(interval_xydelegate_1, 229)).
method_invoc(interval_xydelegate_1_expr29, m_is_auto_width_2488, line(interval_xydelegate_1, 240)).
method_invoc(interval_xydelegate_1_expr31, m_is_infinite_2495, line(interval_xydelegate_1, 240)).
argument(f_auto_interval_width_3942, 1, interval_xydelegate_1_expr31).
ref(t_double_42, interval_xydelegate_1_expr31, line(interval_xydelegate_1, 240)).
return(f_fixed_interval_width_3943, m_get_interval_width_2494, line(interval_xydelegate_1, 247)).
param(p_series_3947, 1, m_get_start_x_2496).
param(p_item_3948, 2, m_get_start_x_2496).
param(p_series_3949, 1, m_get_start_xvalue_2497).
param(p_item_3950, 2, m_get_start_xvalue_2497).
param(p_series_3951, 1, m_get_end_x_2498).
param(p_item_3952, 2, m_get_end_x_2498).
param(p_series_3953, 1, m_get_end_xvalue_2499).
param(p_item_3954, 2, m_get_end_xvalue_2499).
param(p_include_interval_3955, 1, m_get_domain_lower_bound_2500).
param(p_include_interval_3956, 1, m_get_domain_upper_bound_2501).
param(p_include_interval_3957, 1, m_get_domain_bounds_2502).
assign(v_range_3958, interval_xydelegate_1_expr36, line(interval_xydelegate_1, 367)).
method_invoc(interval_xydelegate_1_expr36, m_find_domain_bounds_2155, line(interval_xydelegate_1, 367)).
argument(f_dataset_3939, 1, interval_xydelegate_1_expr36).
argument(interval_xydelegate_1_literal6, 2, interval_xydelegate_1_expr36).
ref(t_dataset_utilities_33, interval_xydelegate_1_expr36, line(interval_xydelegate_1, 367)).
assign(v_lower_adj_3959, interval_xydelegate_1_expr41, line(interval_xydelegate_1, 369)).
method_invoc(interval_xydelegate_1_expr42, m_get_interval_width_2494, line(interval_xydelegate_1, 369)).
method_invoc(interval_xydelegate_1_expr43, m_get_interval_position_factor_2490, line(interval_xydelegate_1, 369)).
assign(v_upper_adj_3960, interval_xydelegate_1_expr44, line(interval_xydelegate_1, 370)).
method_invoc(interval_xydelegate_1_expr45, m_get_interval_width_2494, line(interval_xydelegate_1, 370)).
assign(v_range_3958, interval_xydelegate_1_expr47, line(interval_xydelegate_1, 371)).
method_invoc(interval_xydelegate_1_expr47, m_range_501, line(interval_xydelegate_1, 371)).
argument(interval_xydelegate_1_expr48, 1, interval_xydelegate_1_expr47).
argument(interval_xydelegate_1_expr49, 2, interval_xydelegate_1_expr47).
method_invoc(interval_xydelegate_1_expr50, m_get_lower_bound_494, line(interval_xydelegate_1, 371)).
ref(v_range_3958, interval_xydelegate_1_expr50, line(interval_xydelegate_1, 371)).
return(v_range_3958, m_get_domain_bounds_2502, line(interval_xydelegate_1, 374)).
param(p_e_3961, 1, m_dataset_changed_2503).
param(p_series_3962, 1, m_calculate_interval_for_series_2505).
param(p_obj_3963, 1, m_equals_2506).
throw(m_clone_2507, clone_not_supported_exception).

%stroke_list_1 - org.jfree.chart.util.StrokeList
method_invoc(stroke_list_1_expr1, m_abstract_object_list_1944, line(stroke_list_1, 58)).
param(p_index_3338, 1, m_get_stroke_2041).
param(p_index_3339, 1, m_set_stroke_2042).
param(p_stroke_3340, 2, m_set_stroke_2042).
throw(m_clone_2043, clone_not_supported_exception).
param(p_obj_3341, 1, m_equals_2044).
param(p_stream_3342, 1, m_write_object_2046).
throw(m_write_object_2046, ioexception).
param(p_stream_3343, 1, m_read_object_2047).
throw(m_read_object_2047, ioexception).
throw(m_read_object_2047, class_not_found_exception).

%xyarea_chart_tests_1 - org.jfree.chart.junit.XYAreaChartTests
return(xyarea_chart_tests_1_expr1, m_suite_821, line(xyarea_chart_tests_1, 80)).
method_invoc(xyarea_chart_tests_1_expr1, m_test_suite_627, line(xyarea_chart_tests_1, 80)).
argument(xyarea_chart_tests_1_expr2, 1, xyarea_chart_tests_1_expr1).
param(p_name_1286, 1, m_xyarea_chart_tests_822).
method_invoc(xyarea_chart_tests_1_expr3, m_test_case_629, line(xyarea_chart_tests_1, 89)).
argument(p_name_1286, 1, xyarea_chart_tests_1_expr3).
assign(f_chart_1287, xyarea_chart_tests_1_expr6, line(xyarea_chart_tests_1, 96)).
method_invoc(xyarea_chart_tests_1_expr6, m_create_chart_824, line(xyarea_chart_tests_1, 96)).
assign(v_series_1_1288, xyarea_chart_tests_1_expr8, line(xyarea_chart_tests_1, 171)).
method_invoc(xyarea_chart_tests_1_expr8, m_xyseries_638, line(xyarea_chart_tests_1, 171)).
argument(xyarea_chart_tests_1_literal1, 1, xyarea_chart_tests_1_expr8).
method_invoc(xyarea_chart_tests_1_expr9, m_add_639, line(xyarea_chart_tests_1, 172)).
argument(xyarea_chart_tests_1_literal2, 1, xyarea_chart_tests_1_expr9).
argument(xyarea_chart_tests_1_literal3, 2, xyarea_chart_tests_1_expr9).
ref(v_series_1_1288, xyarea_chart_tests_1_expr9, line(xyarea_chart_tests_1, 172)).
method_invoc(xyarea_chart_tests_1_expr10, m_add_639, line(xyarea_chart_tests_1, 173)).
argument(xyarea_chart_tests_1_literal4, 1, xyarea_chart_tests_1_expr10).
argument(xyarea_chart_tests_1_literal5, 2, xyarea_chart_tests_1_expr10).
ref(v_series_1_1288, xyarea_chart_tests_1_expr10, line(xyarea_chart_tests_1, 173)).
method_invoc(xyarea_chart_tests_1_expr11, m_add_639, line(xyarea_chart_tests_1, 174)).
argument(xyarea_chart_tests_1_literal6, 1, xyarea_chart_tests_1_expr11).
argument(xyarea_chart_tests_1_literal7, 2, xyarea_chart_tests_1_expr11).
ref(v_series_1_1288, xyarea_chart_tests_1_expr11, line(xyarea_chart_tests_1, 174)).
assign(v_dataset_1289, xyarea_chart_tests_1_expr12, line(xyarea_chart_tests_1, 175)).
method_invoc(xyarea_chart_tests_1_expr12, m_xyseries_collection_664, line(xyarea_chart_tests_1, 175)).
argument(v_series_1_1288, 1, xyarea_chart_tests_1_expr12).
return(xyarea_chart_tests_1_expr13, m_create_chart_824, line(xyarea_chart_tests_1, 178)).
method_invoc(xyarea_chart_tests_1_expr13, m_create_xyarea_chart_42, line(xyarea_chart_tests_1, 178)).
argument(xyarea_chart_tests_1_literal8, 1, xyarea_chart_tests_1_expr13).
argument(xyarea_chart_tests_1_literal9, 2, xyarea_chart_tests_1_expr13).
argument(xyarea_chart_tests_1_literal10, 3, xyarea_chart_tests_1_expr13).
argument(v_dataset_1289, 4, xyarea_chart_tests_1_expr13).
argument(q_vertical_40, 5, xyarea_chart_tests_1_expr13).
argument(xyarea_chart_tests_1_literal11, 6, xyarea_chart_tests_1_expr13).
argument(xyarea_chart_tests_1_literal12, 7, xyarea_chart_tests_1_expr13).
argument(xyarea_chart_tests_1_literal13, 8, xyarea_chart_tests_1_expr13).
ref(t_chart_factory_20, xyarea_chart_tests_1_expr13, line(xyarea_chart_tests_1, 178)).
param(p_event_1290, 1, m_chart_changed_828).

%abstract_xyitem_renderer_1 - org.jfree.chart.renderer.xy.AbstractXYItemRenderer
method_invoc(abstract_xyitem_renderer_1_expr1, m_abstract_renderer_1428, line(abstract_xyitem_renderer_1, 232)).
assign(f_item_label_generator_list_2617, abstract_xyitem_renderer_1_expr4, line(abstract_xyitem_renderer_1, 233)).
method_invoc(abstract_xyitem_renderer_1_expr4, m_object_list_887, line(abstract_xyitem_renderer_1, 233)).
assign(f_tool_tip_generator_list_2618, abstract_xyitem_renderer_1_expr8, line(abstract_xyitem_renderer_1, 234)).
method_invoc(abstract_xyitem_renderer_1_expr8, m_object_list_887, line(abstract_xyitem_renderer_1, 234)).
assign(f_url_generator_list_2619, abstract_xyitem_renderer_1_expr12, line(abstract_xyitem_renderer_1, 235)).
method_invoc(abstract_xyitem_renderer_1_expr12, m_object_list_887, line(abstract_xyitem_renderer_1, 235)).
assign(f_base_urlgenerator_2620, abstract_xyitem_renderer_1_literal1, line(abstract_xyitem_renderer_1, 236)).
assign(f_background_annotations_2621, abstract_xyitem_renderer_1_expr19, line(abstract_xyitem_renderer_1, 237)).
method_invoc(abstract_xyitem_renderer_1_expr19, m_array_list_75, line(abstract_xyitem_renderer_1, 237)).
assign(f_foreground_annotations_2622, abstract_xyitem_renderer_1_expr23, line(abstract_xyitem_renderer_1, 238)).
method_invoc(abstract_xyitem_renderer_1_expr23, m_array_list_75, line(abstract_xyitem_renderer_1, 238)).
assign(f_legend_item_label_generator_2623, abstract_xyitem_renderer_1_expr27, line(abstract_xyitem_renderer_1, 239)).
method_invoc(abstract_xyitem_renderer_1_expr27, m_standard_xyseries_label_generator_902, line(abstract_xyitem_renderer_1, 239)).
argument(abstract_xyitem_renderer_1_literal2, 1, abstract_xyitem_renderer_1_expr27).
return(f_plot_2624, m_get_plot_1666, line(abstract_xyitem_renderer_1, 260)).
param(p_plot_2625, 1, m_set_plot_1667).
assign(f_plot_2624, p_plot_2625, line(abstract_xyitem_renderer_1, 269)).
param(p_g_2_2626, 1, m_initialise_1668).
param(p_data_area_2627, 2, m_initialise_1668).
param(p_plot_2628, 3, m_initialise_1668).
param(p_data_2629, 4, m_initialise_1668).
param(p_info_2630, 5, m_initialise_1668).
param(p_series_2631, 1, m_get_item_label_generator_1669).
param(p_item_2632, 2, m_get_item_label_generator_1669).
param(p_selected_2633, 3, m_get_item_label_generator_1669).
param(p_series_2634, 1, m_get_series_item_label_generator_1670).
param(p_series_2635, 1, m_set_series_item_label_generator_1671).
param(p_generator_2636, 2, m_set_series_item_label_generator_1671).
param(p_series_2637, 1, m_set_series_item_label_generator_1672).
param(p_generator_2638, 2, m_set_series_item_label_generator_1672).
param(p_notify_2639, 3, m_set_series_item_label_generator_1672).
param(p_generator_2640, 1, m_set_base_item_label_generator_1674).
param(p_generator_2641, 1, m_set_base_item_label_generator_1675).
param(p_notify_2642, 2, m_set_base_item_label_generator_1675).
param(p_series_2643, 1, m_get_tool_tip_generator_1676).
param(p_item_2644, 2, m_get_tool_tip_generator_1676).
param(p_selected_2645, 3, m_get_tool_tip_generator_1676).
param(p_series_2646, 1, m_get_series_tool_tip_generator_1677).
param(p_series_2647, 1, m_set_series_tool_tip_generator_1678).
param(p_generator_2648, 2, m_set_series_tool_tip_generator_1678).
param(p_series_2649, 1, m_set_series_tool_tip_generator_1679).
param(p_generator_2650, 2, m_set_series_tool_tip_generator_1679).
param(p_notify_2651, 3, m_set_series_tool_tip_generator_1679).
param(p_generator_2652, 1, m_set_base_tool_tip_generator_1681).
method_invoc(abstract_xyitem_renderer_1_expr34, m_set_base_tool_tip_generator_1682, line(abstract_xyitem_renderer_1, 501)).
argument(p_generator_2652, 1, abstract_xyitem_renderer_1_expr34).
argument(abstract_xyitem_renderer_1_literal3, 2, abstract_xyitem_renderer_1_expr34).
param(p_generator_2653, 1, m_set_base_tool_tip_generator_1682).
param(p_notify_2654, 2, m_set_base_tool_tip_generator_1682).
assign(f_base_tool_tip_generator_2655, p_generator_2653, line(abstract_xyitem_renderer_1, 517)).
method_invoc(abstract_xyitem_renderer_1_expr38, m_fire_change_event_1524, line(abstract_xyitem_renderer_1, 519)).
param(p_series_2656, 1, m_get_urlgenerator_1683).
param(p_item_2657, 2, m_get_urlgenerator_1683).
param(p_selected_2658, 3, m_get_urlgenerator_1683).
param(p_series_2659, 1, m_get_series_urlgenerator_1684).
param(p_series_2660, 1, m_set_series_urlgenerator_1685).
param(p_generator_2661, 2, m_set_series_urlgenerator_1685).
param(p_series_2662, 1, m_set_series_urlgenerator_1686).
param(p_generator_2663, 2, m_set_series_urlgenerator_1686).
param(p_notify_2664, 3, m_set_series_urlgenerator_1686).
param(p_generator_2665, 1, m_set_base_urlgenerator_1688).
method_invoc(abstract_xyitem_renderer_1_expr39, m_set_base_urlgenerator_1689, line(abstract_xyitem_renderer_1, 620)).
argument(p_generator_2665, 1, abstract_xyitem_renderer_1_expr39).
argument(abstract_xyitem_renderer_1_literal4, 2, abstract_xyitem_renderer_1_expr39).
param(p_generator_2666, 1, m_set_base_urlgenerator_1689).
param(p_notify_2667, 2, m_set_base_urlgenerator_1689).
assign(f_base_urlgenerator_2620, p_generator_2666, line(abstract_xyitem_renderer_1, 635)).
method_invoc(abstract_xyitem_renderer_1_expr43, m_fire_change_event_1524, line(abstract_xyitem_renderer_1, 637)).
param(p_annotation_2668, 1, m_add_annotation_1690).
param(p_annotation_2669, 1, m_add_annotation_1691).
param(p_layer_2670, 2, m_add_annotation_1691).
param(p_annotation_2671, 1, m_remove_annotation_1692).
assign(v_result_2672, abstract_xyitem_renderer_1_expr44, line(abstract_xyitem_renderer_1, 716)).
method_invoc(abstract_xyitem_renderer_1_expr44, m_array_list_1210, line(abstract_xyitem_renderer_1, 716)).
argument(f_foreground_annotations_2622, 1, abstract_xyitem_renderer_1_expr44).
method_invoc(abstract_xyitem_renderer_1_expr47, m_add_all_1334, line(abstract_xyitem_renderer_1, 717)).
argument(f_background_annotations_2621, 1, abstract_xyitem_renderer_1_expr47).
ref(v_result_2672, abstract_xyitem_renderer_1_expr47, line(abstract_xyitem_renderer_1, 717)).
return(v_result_2672, m_get_annotations_1694, line(abstract_xyitem_renderer_1, 718)).
param(p_generator_2673, 1, m_set_legend_item_label_generator_1696).
param(p_generator_2674, 1, m_set_legend_item_tool_tip_generator_1698).
param(p_generator_2675, 1, m_set_legend_item_urlgenerator_1700).
param(p_dataset_2676, 1, m_find_domain_bounds_1701).
return(abstract_xyitem_renderer_1_expr50, m_find_domain_bounds_1701, line(abstract_xyitem_renderer_1, 809)).
method_invoc(abstract_xyitem_renderer_1_expr50, m_find_domain_bounds_1702, line(abstract_xyitem_renderer_1, 809)).
argument(p_dataset_2676, 1, abstract_xyitem_renderer_1_expr50).
argument(abstract_xyitem_renderer_1_literal5, 2, abstract_xyitem_renderer_1_expr50).
param(p_dataset_2677, 1, m_find_domain_bounds_1702).
param(p_include_interval_2678, 2, m_find_domain_bounds_1702).
method_invoc(abstract_xyitem_renderer_1_expr52, m_get_data_bounds_includes_visible_series_only_1574, line(abstract_xyitem_renderer_1, 829)).
assign(v_visible_series_keys_2679, abstract_xyitem_renderer_1_expr53, line(abstract_xyitem_renderer_1, 830)).
method_invoc(abstract_xyitem_renderer_1_expr53, m_array_list_75, line(abstract_xyitem_renderer_1, 830)).
assign(v_series_count_2680, abstract_xyitem_renderer_1_expr54, line(abstract_xyitem_renderer_1, 831)).
method_invoc(abstract_xyitem_renderer_1_expr54, m_get_series_count_1703, line(abstract_xyitem_renderer_1, 831)).
ref(p_dataset_2677, abstract_xyitem_renderer_1_expr54, line(abstract_xyitem_renderer_1, 831)).
assign(v_s_2681, abstract_xyitem_renderer_1_literal7, line(abstract_xyitem_renderer_1, 832)).
return(abstract_xyitem_renderer_1_expr58, m_find_domain_bounds_1702, line(abstract_xyitem_renderer_1, 837)).
method_invoc(abstract_xyitem_renderer_1_expr58, m_find_domain_bounds_1704, line(abstract_xyitem_renderer_1, 837)).
argument(p_dataset_2677, 1, abstract_xyitem_renderer_1_expr58).
argument(v_visible_series_keys_2679, 2, abstract_xyitem_renderer_1_expr58).
argument(p_include_interval_2678, 3, abstract_xyitem_renderer_1_expr58).
ref(t_dataset_utilities_33, abstract_xyitem_renderer_1_expr58, line(abstract_xyitem_renderer_1, 837)).
param(p_dataset_2682, 1, m_find_range_bounds_1705).
return(abstract_xyitem_renderer_1_expr59, m_find_range_bounds_1705, line(abstract_xyitem_renderer_1, 857)).
method_invoc(abstract_xyitem_renderer_1_expr59, m_find_range_bounds_1706, line(abstract_xyitem_renderer_1, 857)).
argument(p_dataset_2682, 1, abstract_xyitem_renderer_1_expr59).
argument(abstract_xyitem_renderer_1_literal8, 2, abstract_xyitem_renderer_1_expr59).
param(p_dataset_2683, 1, m_find_range_bounds_1706).
param(p_include_interval_2684, 2, m_find_range_bounds_1706).
method_invoc(abstract_xyitem_renderer_1_expr61, m_get_data_bounds_includes_visible_series_only_1574, line(abstract_xyitem_renderer_1, 877)).
assign(v_visible_series_keys_2685, abstract_xyitem_renderer_1_expr62, line(abstract_xyitem_renderer_1, 878)).
method_invoc(abstract_xyitem_renderer_1_expr62, m_array_list_75, line(abstract_xyitem_renderer_1, 878)).
assign(v_series_count_2686, abstract_xyitem_renderer_1_expr63, line(abstract_xyitem_renderer_1, 879)).
method_invoc(abstract_xyitem_renderer_1_expr63, m_get_series_count_1703, line(abstract_xyitem_renderer_1, 879)).
ref(p_dataset_2683, abstract_xyitem_renderer_1_expr63, line(abstract_xyitem_renderer_1, 879)).
assign(v_s_2687, abstract_xyitem_renderer_1_literal10, line(abstract_xyitem_renderer_1, 880)).
assign(v_x_range_2688, abstract_xyitem_renderer_1_literal11, line(abstract_xyitem_renderer_1, 887)).
assign(v_p_2689, abstract_xyitem_renderer_1_expr67, line(abstract_xyitem_renderer_1, 888)).
method_invoc(abstract_xyitem_renderer_1_expr67, m_get_plot_1666, line(abstract_xyitem_renderer_1, 888)).
assign(v_x_axis_2690, abstract_xyitem_renderer_1_literal13, line(abstract_xyitem_renderer_1, 890)).
assign(v_index_2691, abstract_xyitem_renderer_1_expr69, line(abstract_xyitem_renderer_1, 891)).
method_invoc(abstract_xyitem_renderer_1_expr69, m_get_index_of_1227, line(abstract_xyitem_renderer_1, 891)).
argument(abstract_xyitem_renderer_1_expr70, 1, abstract_xyitem_renderer_1_expr69).
ref(v_p_2689, abstract_xyitem_renderer_1_expr69, line(abstract_xyitem_renderer_1, 891)).
assign(v_x_axis_2690, abstract_xyitem_renderer_1_expr73, line(abstract_xyitem_renderer_1, 893)).
method_invoc(abstract_xyitem_renderer_1_expr73, m_get_domain_axis_for_dataset_1307, line(abstract_xyitem_renderer_1, 893)).
argument(v_index_2691, 1, abstract_xyitem_renderer_1_expr73).
ref(f_plot_2624, abstract_xyitem_renderer_1_expr73, line(abstract_xyitem_renderer_1, 893)).
assign(v_x_range_2688, abstract_xyitem_renderer_1_expr76, line(abstract_xyitem_renderer_1, 896)).
method_invoc(abstract_xyitem_renderer_1_expr76, m_get_range_598, line(abstract_xyitem_renderer_1, 896)).
ref(v_x_axis_2690, abstract_xyitem_renderer_1_expr76, line(abstract_xyitem_renderer_1, 896)).
return(abstract_xyitem_renderer_1_expr78, m_find_range_bounds_1706, line(abstract_xyitem_renderer_1, 903)).
method_invoc(abstract_xyitem_renderer_1_expr78, m_find_range_bounds_1707, line(abstract_xyitem_renderer_1, 903)).
argument(p_dataset_2683, 1, abstract_xyitem_renderer_1_expr78).
argument(v_visible_series_keys_2685, 2, abstract_xyitem_renderer_1_expr78).
argument(v_x_range_2688, 3, abstract_xyitem_renderer_1_expr78).
argument(p_include_interval_2684, 4, abstract_xyitem_renderer_1_expr78).
ref(t_dataset_utilities_33, abstract_xyitem_renderer_1_expr78, line(abstract_xyitem_renderer_1, 903)).
param(p_dataset_index_2692, 1, m_get_legend_item_1709).
param(p_series_2693, 2, m_get_legend_item_1709).
param(p_g_2_2694, 1, m_fill_domain_grid_band_1710).
param(p_plot_2695, 2, m_fill_domain_grid_band_1710).
param(p_axis_2696, 3, m_fill_domain_grid_band_1710).
param(p_data_area_2697, 4, m_fill_domain_grid_band_1710).
param(p_start_2698, 5, m_fill_domain_grid_band_1710).
param(p_end_2699, 6, m_fill_domain_grid_band_1710).
param(p_g_2_2700, 1, m_fill_range_grid_band_1711).
param(p_plot_2701, 2, m_fill_range_grid_band_1711).
param(p_axis_2702, 3, m_fill_range_grid_band_1711).
param(p_data_area_2703, 4, m_fill_range_grid_band_1711).
param(p_start_2704, 5, m_fill_range_grid_band_1711).
param(p_end_2705, 6, m_fill_range_grid_band_1711).
param(p_g_2_2706, 1, m_draw_domain_grid_line_1712).
param(p_plot_2707, 2, m_draw_domain_grid_line_1712).
param(p_axis_2708, 3, m_draw_domain_grid_line_1712).
param(p_data_area_2709, 4, m_draw_domain_grid_line_1712).
param(p_value_2710, 5, m_draw_domain_grid_line_1712).
param(p_g_2_2711, 1, m_draw_domain_line_1713).
param(p_plot_2712, 2, m_draw_domain_line_1713).
param(p_axis_2713, 3, m_draw_domain_line_1713).
param(p_data_area_2714, 4, m_draw_domain_line_1713).
param(p_value_2715, 5, m_draw_domain_line_1713).
param(p_paint_2716, 6, m_draw_domain_line_1713).
param(p_stroke_2717, 7, m_draw_domain_line_1713).
param(p_g_2_2718, 1, m_draw_range_line_1714).
param(p_plot_2719, 2, m_draw_range_line_1714).
param(p_axis_2720, 3, m_draw_range_line_1714).
param(p_data_area_2721, 4, m_draw_range_line_1714).
param(p_value_2722, 5, m_draw_range_line_1714).
param(p_paint_2723, 6, m_draw_range_line_1714).
param(p_stroke_2724, 7, m_draw_range_line_1714).
param(p_g_2_2725, 1, m_draw_domain_marker_1715).
param(p_plot_2726, 2, m_draw_domain_marker_1715).
param(p_domain_axis_2727, 3, m_draw_domain_marker_1715).
param(p_marker_2728, 4, m_draw_domain_marker_1715).
param(p_data_area_2729, 5, m_draw_domain_marker_1715).
param(p_g_2_2730, 1, m_calculate_domain_marker_text_anchor_point_1716).
param(p_orientation_2731, 2, m_calculate_domain_marker_text_anchor_point_1716).
param(p_data_area_2732, 3, m_calculate_domain_marker_text_anchor_point_1716).
param(p_marker_area_2733, 4, m_calculate_domain_marker_text_anchor_point_1716).
param(p_marker_offset_2734, 5, m_calculate_domain_marker_text_anchor_point_1716).
param(p_label_offset_type_2735, 6, m_calculate_domain_marker_text_anchor_point_1716).
param(p_anchor_2736, 7, m_calculate_domain_marker_text_anchor_point_1716).
param(p_g_2_2737, 1, m_draw_range_marker_1717).
param(p_plot_2738, 2, m_draw_range_marker_1717).
param(p_range_axis_2739, 3, m_draw_range_marker_1717).
param(p_marker_2740, 4, m_draw_range_marker_1717).
param(p_data_area_2741, 5, m_draw_range_marker_1717).
param(p_g_2_2742, 1, m_calculate_range_marker_text_anchor_point_1718).
param(p_orientation_2743, 2, m_calculate_range_marker_text_anchor_point_1718).
param(p_data_area_2744, 3, m_calculate_range_marker_text_anchor_point_1718).
param(p_marker_area_2745, 4, m_calculate_range_marker_text_anchor_point_1718).
param(p_marker_offset_2746, 5, m_calculate_range_marker_text_anchor_point_1718).
param(p_label_offset_for_range_2747, 6, m_calculate_range_marker_text_anchor_point_1718).
param(p_anchor_2748, 7, m_calculate_range_marker_text_anchor_point_1718).
throw(m_clone_1719, clone_not_supported_exception).
param(p_obj_2749, 1, m_equals_1720).
param(p_crosshair_state_2750, 1, m_update_crosshair_values_1722).
param(p_x_2751, 2, m_update_crosshair_values_1722).
param(p_y_2752, 3, m_update_crosshair_values_1722).
param(p_domain_axis_index_2753, 4, m_update_crosshair_values_1722).
param(p_range_axis_index_2754, 5, m_update_crosshair_values_1722).
param(p_trans_x_2755, 6, m_update_crosshair_values_1722).
param(p_trans_y_2756, 7, m_update_crosshair_values_1722).
param(p_orientation_2757, 8, m_update_crosshair_values_1722).
param(p_g_2_2758, 1, m_draw_item_label_1723).
param(p_orientation_2759, 2, m_draw_item_label_1723).
param(p_dataset_2760, 3, m_draw_item_label_1723).
param(p_series_2761, 4, m_draw_item_label_1723).
param(p_item_2762, 5, m_draw_item_label_1723).
param(p_selected_2763, 6, m_draw_item_label_1723).
param(p_x_2764, 7, m_draw_item_label_1723).
param(p_y_2765, 8, m_draw_item_label_1723).
param(p_negative_2766, 9, m_draw_item_label_1723).
param(p_g_2_2767, 1, m_draw_annotations_1724).
param(p_data_area_2768, 2, m_draw_annotations_1724).
param(p_domain_axis_2769, 3, m_draw_annotations_1724).
param(p_range_axis_2770, 4, m_draw_annotations_1724).
param(p_layer_2771, 5, m_draw_annotations_1724).
param(p_info_2772, 6, m_draw_annotations_1724).
param(p_entities_2773, 1, m_add_entity_1725).
param(p_area_2774, 2, m_add_entity_1725).
param(p_dataset_2775, 3, m_add_entity_1725).
param(p_series_2776, 4, m_add_entity_1725).
param(p_item_2777, 5, m_add_entity_1725).
param(p_selected_2778, 6, m_add_entity_1725).
param(p_entity_x_2779, 7, m_add_entity_1725).
param(p_entity_y_2780, 8, m_add_entity_1725).

%text_anchor_1 - org.jfree.chart.text.TextAnchor
assign(f_top_left_2988, text_anchor_1_expr1, line(text_anchor_1, 58)).
method_invoc(text_anchor_1_expr1, m_text_anchor_1809, line(text_anchor_1, 58)).
argument(text_anchor_1_literal1, 1, text_anchor_1_expr1).
assign(f_top_center_2989, text_anchor_1_expr2, line(text_anchor_1, 62)).
method_invoc(text_anchor_1_expr2, m_text_anchor_1809, line(text_anchor_1, 62)).
argument(text_anchor_1_literal2, 1, text_anchor_1_expr2).
assign(f_top_right_2990, text_anchor_1_expr3, line(text_anchor_1, 66)).
method_invoc(text_anchor_1_expr3, m_text_anchor_1809, line(text_anchor_1, 66)).
argument(text_anchor_1_literal3, 1, text_anchor_1_expr3).
assign(f_half_ascent_left_2991, text_anchor_1_expr4, line(text_anchor_1, 70)).
method_invoc(text_anchor_1_expr4, m_text_anchor_1809, line(text_anchor_1, 70)).
argument(text_anchor_1_literal4, 1, text_anchor_1_expr4).
assign(f_half_ascent_center_2992, text_anchor_1_expr5, line(text_anchor_1, 74)).
method_invoc(text_anchor_1_expr5, m_text_anchor_1809, line(text_anchor_1, 74)).
argument(text_anchor_1_literal5, 1, text_anchor_1_expr5).
assign(f_half_ascent_right_2993, text_anchor_1_expr6, line(text_anchor_1, 78)).
method_invoc(text_anchor_1_expr6, m_text_anchor_1809, line(text_anchor_1, 78)).
argument(text_anchor_1_literal6, 1, text_anchor_1_expr6).
assign(f_center_left_2994, text_anchor_1_expr7, line(text_anchor_1, 82)).
method_invoc(text_anchor_1_expr7, m_text_anchor_1809, line(text_anchor_1, 82)).
argument(text_anchor_1_literal7, 1, text_anchor_1_expr7).
assign(f_center_1365, text_anchor_1_expr8, line(text_anchor_1, 86)).
method_invoc(text_anchor_1_expr8, m_text_anchor_1809, line(text_anchor_1, 86)).
argument(text_anchor_1_literal8, 1, text_anchor_1_expr8).
assign(f_center_right_2995, text_anchor_1_expr9, line(text_anchor_1, 89)).
method_invoc(text_anchor_1_expr9, m_text_anchor_1809, line(text_anchor_1, 89)).
argument(text_anchor_1_literal9, 1, text_anchor_1_expr9).
assign(f_baseline_left_2996, text_anchor_1_expr10, line(text_anchor_1, 93)).
method_invoc(text_anchor_1_expr10, m_text_anchor_1809, line(text_anchor_1, 93)).
argument(text_anchor_1_literal10, 1, text_anchor_1_expr10).
assign(f_baseline_center_2997, text_anchor_1_expr11, line(text_anchor_1, 97)).
method_invoc(text_anchor_1_expr11, m_text_anchor_1809, line(text_anchor_1, 97)).
argument(text_anchor_1_literal11, 1, text_anchor_1_expr11).
assign(f_baseline_right_2998, text_anchor_1_expr12, line(text_anchor_1, 101)).
method_invoc(text_anchor_1_expr12, m_text_anchor_1809, line(text_anchor_1, 101)).
argument(text_anchor_1_literal12, 1, text_anchor_1_expr12).
assign(f_bottom_left_2999, text_anchor_1_expr13, line(text_anchor_1, 105)).
method_invoc(text_anchor_1_expr13, m_text_anchor_1809, line(text_anchor_1, 105)).
argument(text_anchor_1_literal13, 1, text_anchor_1_expr13).
assign(f_bottom_center_3000, text_anchor_1_expr14, line(text_anchor_1, 109)).
method_invoc(text_anchor_1_expr14, m_text_anchor_1809, line(text_anchor_1, 109)).
argument(text_anchor_1_literal14, 1, text_anchor_1_expr14).
assign(f_bottom_right_3001, text_anchor_1_expr15, line(text_anchor_1, 113)).
method_invoc(text_anchor_1_expr15, m_text_anchor_1809, line(text_anchor_1, 113)).
argument(text_anchor_1_literal15, 1, text_anchor_1_expr15).
param(p_name_3002, 1, m_text_anchor_1809).
assign(f_name_3003, p_name_3002, line(text_anchor_1, 125)).
param(p_obj_3004, 1, m_equals_1811).
throw(m_read_resolve_1813, object_stream_exception).

%abstract_series_dataset_1 - org.jfree.data.general.AbstractSeriesDataset
method_invoc(abstract_series_dataset_1_expr1, m_abstract_dataset_2112, line(abstract_series_dataset_1, 63)).
param(p_series_3432, 1, m_get_series_key_2128).
param(p_series_key_3433, 1, m_index_of_2129).
param(p_event_3434, 1, m_series_changed_2130).

%date_tick_unit_type_1 - org.jfree.chart.axis.DateTickUnitType
assign(f_year_792, date_tick_unit_type_1_expr1, line(date_tick_unit_type_1, 55)).
assign(f_month_793, date_tick_unit_type_1_expr2, line(date_tick_unit_type_1, 59)).
assign(f_day_794, date_tick_unit_type_1_expr3, line(date_tick_unit_type_1, 63)).
assign(f_hour_795, date_tick_unit_type_1_expr4, line(date_tick_unit_type_1, 68)).
assign(f_minute_796, date_tick_unit_type_1_expr5, line(date_tick_unit_type_1, 73)).
assign(f_second_797, date_tick_unit_type_1_expr6, line(date_tick_unit_type_1, 77)).
assign(f_millisecond_798, date_tick_unit_type_1_expr7, line(date_tick_unit_type_1, 81)).
param(p_name_799, 1, m_date_tick_unit_type_470).
param(p_calendar_field_800, 2, m_date_tick_unit_type_470).
assign(f_name_801, p_name_799, line(date_tick_unit_type_1, 98)).
assign(f_calendar_field_802, p_calendar_field_800, line(date_tick_unit_type_1, 99)).
return(f_name_801, m_to_string_472, line(date_tick_unit_type_1, 117)).
param(p_obj_803, 1, m_equals_465).
return(date_tick_unit_type_1_literal1, m_equals_465, line(date_tick_unit_type_1, 130)).
assign(date_tick_unit_type_1_expr19, date_tick_unit_type_1_expr20, line(date_tick_unit_type_1, 132)).
assign(v_t_804, date_tick_unit_type_1_expr21, line(date_tick_unit_type_1, 135)).
assign(date_tick_unit_type_1_expr21, p_obj_803, line(date_tick_unit_type_1, 135)).
method_invoc(date_tick_unit_type_1_expr23, m_equals_473, line(date_tick_unit_type_1, 136)).
argument(date_tick_unit_type_1_expr24, 1, date_tick_unit_type_1_expr23).
ref(f_name_801, date_tick_unit_type_1_expr23, line(date_tick_unit_type_1, 136)).
method_invoc(date_tick_unit_type_1_expr24, m_to_string_472, line(date_tick_unit_type_1, 136)).
ref(v_t_804, date_tick_unit_type_1_expr24, line(date_tick_unit_type_1, 136)).
return(date_tick_unit_type_1_literal2, m_equals_465, line(date_tick_unit_type_1, 137)).
throw(m_read_resolve_474, object_stream_exception).

%standard_xytool_tip_generator_1 - org.jfree.chart.labels.StandardXYToolTipGenerator
method_invoc(standard_xytool_tip_generator_1_expr1, m_standard_xytool_tip_generator_909, line(standard_xytool_tip_generator_1, 82)).
argument(f_default_tool_tip_format_1409, 1, standard_xytool_tip_generator_1_expr1).
argument(standard_xytool_tip_generator_1_expr2, 2, standard_xytool_tip_generator_1_expr1).
argument(standard_xytool_tip_generator_1_expr3, 3, standard_xytool_tip_generator_1_expr1).
method_invoc(standard_xytool_tip_generator_1_expr2, m_get_number_instance_883, line(standard_xytool_tip_generator_1, 82)).
ref(t_number_format_26, standard_xytool_tip_generator_1_expr2, line(standard_xytool_tip_generator_1, 82)).
param(p_format_string_1410, 1, m_standard_xytool_tip_generator_909).
param(p_x_format_1411, 2, m_standard_xytool_tip_generator_909).
param(p_y_format_1412, 3, m_standard_xytool_tip_generator_909).
method_invoc(standard_xytool_tip_generator_1_expr4, m_abstract_xyitem_label_generator_855, line(standard_xytool_tip_generator_1, 99)).
argument(p_format_string_1410, 1, standard_xytool_tip_generator_1_expr4).
argument(p_x_format_1411, 2, standard_xytool_tip_generator_1_expr4).
argument(p_y_format_1412, 3, standard_xytool_tip_generator_1_expr4).
param(p_format_string_1413, 1, m_standard_xytool_tip_generator_910).
param(p_x_format_1414, 2, m_standard_xytool_tip_generator_910).
param(p_y_format_1415, 3, m_standard_xytool_tip_generator_910).
param(p_format_string_1416, 1, m_standard_xytool_tip_generator_911).
param(p_x_format_1417, 2, m_standard_xytool_tip_generator_911).
param(p_y_format_1418, 3, m_standard_xytool_tip_generator_911).
param(p_format_string_1419, 1, m_standard_xytool_tip_generator_912).
param(p_x_format_1420, 2, m_standard_xytool_tip_generator_912).
param(p_y_format_1421, 3, m_standard_xytool_tip_generator_912).
param(p_dataset_1422, 1, m_generate_tool_tip_913).
param(p_series_1423, 2, m_generate_tool_tip_913).
param(p_item_1424, 3, m_generate_tool_tip_913).
param(p_obj_1425, 1, m_equals_914).
throw(m_clone_915, clone_not_supported_exception).

%xydata_item_1 - org.jfree.data.xy.XYDataItem
param(p_x_3964, 1, m_xydata_item_2509).
param(p_y_3965, 2, m_xydata_item_2509).
assign(f_x_3966, p_x_3964, line(xydata_item_1, 87)).
assign(f_y_3967, p_y_3965, line(xydata_item_1, 88)).
assign(f_selected_3968, xydata_item_1_literal2, line(xydata_item_1, 89)).
param(p_x_3969, 1, m_xydata_item_2510).
param(p_y_3970, 2, m_xydata_item_2510).
return(f_x_3966, m_get_x_2511, line(xydata_item_1, 108)).
return(xydata_item_1_expr13, m_get_xvalue_2512, line(xydata_item_1, 123)).
method_invoc(xydata_item_1_expr13, m_double_value_2412, line(xydata_item_1, 123)).
ref(f_x_3966, xydata_item_1_expr13, line(xydata_item_1, 123)).
return(f_y_3967, m_get_y_2513, line(xydata_item_1, 132)).
assign(v_result_3971, q_na_n_90, line(xydata_item_1, 146)).
ref(t_double_42, q_na_n_90, line(xydata_item_1, 146)).
assign(v_result_3971, xydata_item_1_expr22, line(xydata_item_1, 148)).
method_invoc(xydata_item_1_expr22, m_double_value_2412, line(xydata_item_1, 148)).
ref(f_y_3967, xydata_item_1_expr22, line(xydata_item_1, 148)).
return(v_result_3971, m_get_yvalue_2514, line(xydata_item_1, 150)).
param(p_y_3972, 1, m_set_y_2515).
param(p_y_3973, 1, m_set_y_2516).
param(p_selected_3974, 1, m_set_selected_2518).
param(p_o_1_3975, 1, m_compare_to_2519).
assign(v_data_item_3976, xydata_item_1_expr26, line(xydata_item_1, 219)).
assign(xydata_item_1_expr26, p_o_1_3975, line(xydata_item_1, 219)).
assign(v_compare_3977, xydata_item_1_expr27, line(xydata_item_1, 220)).
method_invoc(xydata_item_1_expr28, m_double_value_2412, line(xydata_item_1, 220)).
ref(f_x_3966, xydata_item_1_expr28, line(xydata_item_1, 220)).
assign(v_result_3978, xydata_item_1_expr34, line(xydata_item_1, 227)).
return(v_result_3978, m_compare_to_2519, line(xydata_item_1, 242)).
assign(v_clone_3979, xydata_item_1_literal7, line(xydata_item_1, 252)).
assign(v_clone_3979, xydata_item_1_expr36, line(xydata_item_1, 254)).
method_invoc(xydata_item_1_expr36, m_clone_946, line(xydata_item_1, 254)).
throw(xydata_item_1_expr36, clone_not_supported_exception, line(xydata_item_1, 254)).
return(v_clone_3979, m_clone_2520, line(xydata_item_1, 259)).
param(p_obj_3980, 1, m_equals_2521).

%dataset_group_1 - org.jfree.data.general.DatasetGroup
method_invoc(dataset_group_1_expr1, m_object_2132, line(dataset_group_1, 63)).
assign(f_id_3438, dataset_group_1_literal1, line(dataset_group_1, 64)).
param(p_id_3439, 1, m_dataset_group_2133).
throw(m_clone_2135, clone_not_supported_exception).
param(p_obj_3440, 1, m_equals_2136).

%title_change_event_1 - org.jfree.chart.event.TitleChangeEvent
param(p_title_1266, 1, m_title_change_event_778).
method_invoc(title_change_event_1_expr1, m_chart_change_event_759, line(title_change_event_1, 64)).
argument(p_title_1266, 1, title_change_event_1_expr1).
assign(f_title_1267, p_title_1266, line(title_change_event_1, 65)).

%item_label_position_1 - org.jfree.chart.labels.ItemLabelPosition
param(p_item_label_anchor_1363, 1, m_item_label_position_875).
param(p_text_anchor_1364, 2, m_item_label_position_875).
method_invoc(item_label_position_1_expr1, m_item_label_position_876, line(item_label_position_1, 90)).
argument(p_item_label_anchor_1363, 1, item_label_position_1_expr1).
argument(p_text_anchor_1364, 2, item_label_position_1_expr1).
argument(q_center_40, 3, item_label_position_1_expr1).
argument(item_label_position_1_literal1, 4, item_label_position_1_expr1).
ref(t_text_anchor_25, q_center_40, line(item_label_position_1, 90)).
param(p_item_label_anchor_1366, 1, m_item_label_position_876).
param(p_text_anchor_1367, 2, m_item_label_position_876).
param(p_rotation_anchor_1368, 3, m_item_label_position_876).
param(p_angle_1369, 4, m_item_label_position_876).
assign(f_item_label_anchor_1370, p_item_label_anchor_1366, line(item_label_position_1, 123)).
assign(f_text_anchor_1371, p_text_anchor_1367, line(item_label_position_1, 124)).
assign(f_rotation_anchor_1372, p_rotation_anchor_1368, line(item_label_position_1, 125)).
assign(f_angle_1373, p_angle_1369, line(item_label_position_1, 126)).
param(p_obj_1374, 1, m_equals_881).

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

%bar_renderer3_d_1 - org.jfree.chart.renderer.category.BarRenderer3D
assign(f_default_wall_paint_2532, bar_renderer3_d_1_expr1, line(bar_renderer3_d_1, 164)).
method_invoc(bar_renderer3_d_1_expr1, m_color_1, line(bar_renderer3_d_1, 164)).
argument(bar_renderer3_d_1_literal1, 1, bar_renderer3_d_1_expr1).
argument(bar_renderer3_d_1_literal2, 2, bar_renderer3_d_1_expr1).
argument(bar_renderer3_d_1_literal3, 3, bar_renderer3_d_1_expr1).
param(p_x_offset_2533, 1, m_bar_renderer3_d_1640).
param(p_y_offset_2534, 2, m_bar_renderer3_d_1640).
param(p_paint_2535, 1, m_set_wall_paint_1644).
param(p_g_2_2536, 1, m_initialise_1645).
param(p_data_area_2537, 2, m_initialise_1645).
param(p_plot_2538, 3, m_initialise_1645).
param(p_renderer_index_2539, 4, m_initialise_1645).
param(p_info_2540, 5, m_initialise_1645).
param(p_g_2_2541, 1, m_draw_background_1646).
param(p_plot_2542, 2, m_draw_background_1646).
param(p_data_area_2543, 3, m_draw_background_1646).
param(p_g_2_2544, 1, m_draw_outline_1647).
param(p_plot_2545, 2, m_draw_outline_1647).
param(p_data_area_2546, 3, m_draw_outline_1647).
param(p_g_2_2547, 1, m_draw_domain_gridline_1648).
param(p_plot_2548, 2, m_draw_domain_gridline_1648).
param(p_data_area_2549, 3, m_draw_domain_gridline_1648).
param(p_value_2550, 4, m_draw_domain_gridline_1648).
param(p_g_2_2551, 1, m_draw_range_gridline_1649).
param(p_plot_2552, 2, m_draw_range_gridline_1649).
param(p_axis_2553, 3, m_draw_range_gridline_1649).
param(p_data_area_2554, 4, m_draw_range_gridline_1649).
param(p_value_2555, 5, m_draw_range_gridline_1649).
param(p_g_2_2556, 1, m_draw_range_line_1650).
param(p_plot_2557, 2, m_draw_range_line_1650).
param(p_axis_2558, 3, m_draw_range_line_1650).
param(p_data_area_2559, 4, m_draw_range_line_1650).
param(p_value_2560, 5, m_draw_range_line_1650).
param(p_paint_2561, 6, m_draw_range_line_1650).
param(p_stroke_2562, 7, m_draw_range_line_1650).
param(p_g_2_2563, 1, m_draw_range_marker_1651).
param(p_plot_2564, 2, m_draw_range_marker_1651).
param(p_axis_2565, 3, m_draw_range_marker_1651).
param(p_marker_2566, 4, m_draw_range_marker_1651).
param(p_data_area_2567, 5, m_draw_range_marker_1651).
param(p_g_2_2568, 1, m_draw_item_1652).
param(p_state_2569, 2, m_draw_item_1652).
param(p_data_area_2570, 3, m_draw_item_1652).
param(p_plot_2571, 4, m_draw_item_1652).
param(p_domain_axis_2572, 5, m_draw_item_1652).
param(p_range_axis_2573, 6, m_draw_item_1652).
param(p_dataset_2574, 7, m_draw_item_1652).
param(p_row_2575, 8, m_draw_item_1652).
param(p_column_2576, 9, m_draw_item_1652).
param(p_selected_2577, 10, m_draw_item_1652).
param(p_pass_2578, 11, m_draw_item_1652).
param(p_obj_2579, 1, m_equals_1653).
param(p_stream_2580, 1, m_write_object_1654).
throw(m_write_object_1654, ioexception).
param(p_stream_2581, 1, m_read_object_1655).
throw(m_read_object_1655, ioexception).
throw(m_read_object_1655, class_not_found_exception).

%project_info_1 - org.jfree.chart.ui.ProjectInfo
param(p_name_3172, 1, m_project_info_1932).
param(p_version_3173, 2, m_project_info_1932).
param(p_info_3174, 3, m_project_info_1932).
param(p_logo_3175, 4, m_project_info_1932).
param(p_copyright_3176, 5, m_project_info_1932).
param(p_licence_name_3177, 6, m_project_info_1932).
param(p_licence_text_3178, 7, m_project_info_1932).
param(p_logo_3179, 1, m_set_logo_1934).
assign(f_logo_3180, p_logo_3179, line(project_info_1, 111)).
param(p_licence_text_3181, 1, m_set_licence_text_1936).
assign(f_licence_text_3182, p_licence_text_3181, line(project_info_1, 129)).
param(p_contributors_3183, 1, m_set_contributors_1938).
assign(f_contributors_3184, p_contributors_3183, line(project_info_1, 147)).

%block_border_1 - org.jfree.chart.block.BlockBorder
assign(f_none_1131, block_border_1_expr1, line(block_border_1, 71)).
method_invoc(block_border_1_expr1, m_block_border_701, line(block_border_1, 71)).
argument(q_zero_insets_37, 1, block_border_1_expr1).
argument(q_white_37, 2, block_border_1_expr1).
param(p_paint_1132, 1, m_block_border_703).
param(p_top_1133, 1, m_block_border_704).
param(p_left_1134, 2, m_block_border_704).
param(p_bottom_1135, 3, m_block_border_704).
param(p_right_1136, 4, m_block_border_704).
param(p_top_1137, 1, m_block_border_705).
param(p_left_1138, 2, m_block_border_705).
param(p_bottom_1139, 3, m_block_border_705).
param(p_right_1140, 4, m_block_border_705).
param(p_paint_1141, 5, m_block_border_705).
param(p_insets_1142, 1, m_block_border_701).
param(p_paint_1143, 2, m_block_border_701).
assign(f_insets_1144, p_insets_1142, line(block_border_1, 135)).
assign(f_paint_1145, p_paint_1143, line(block_border_1, 136)).
param(p_g_2_1146, 1, m_draw_708).
param(p_area_1147, 2, m_draw_708).
param(p_obj_1148, 1, m_equals_709).
param(p_stream_1149, 1, m_write_object_710).
throw(m_write_object_710, ioexception).
param(p_stream_1150, 1, m_read_object_711).
throw(m_read_object_711, ioexception).
throw(m_read_object_711, class_not_found_exception).

%scatter_plot_tests_1 - org.jfree.chart.junit.ScatterPlotTests
return(scatter_plot_tests_1_expr1, m_suite_805, line(scatter_plot_tests_1, 82)).
method_invoc(scatter_plot_tests_1_expr1, m_test_suite_627, line(scatter_plot_tests_1, 82)).
argument(scatter_plot_tests_1_expr2, 1, scatter_plot_tests_1_expr1).
param(p_name_1276, 1, m_scatter_plot_tests_806).
method_invoc(scatter_plot_tests_1_expr3, m_test_case_629, line(scatter_plot_tests_1, 91)).
argument(p_name_1276, 1, scatter_plot_tests_1_expr3).
assign(f_chart_1277, scatter_plot_tests_1_expr6, line(scatter_plot_tests_1, 98)).
method_invoc(scatter_plot_tests_1_expr6, m_create_chart_808, line(scatter_plot_tests_1, 98)).
assign(v_series_1_1278, scatter_plot_tests_1_expr8, line(scatter_plot_tests_1, 174)).
method_invoc(scatter_plot_tests_1_expr8, m_xyseries_638, line(scatter_plot_tests_1, 174)).
argument(scatter_plot_tests_1_literal1, 1, scatter_plot_tests_1_expr8).
method_invoc(scatter_plot_tests_1_expr9, m_add_639, line(scatter_plot_tests_1, 175)).
argument(scatter_plot_tests_1_literal2, 1, scatter_plot_tests_1_expr9).
argument(scatter_plot_tests_1_literal3, 2, scatter_plot_tests_1_expr9).
ref(v_series_1_1278, scatter_plot_tests_1_expr9, line(scatter_plot_tests_1, 175)).
method_invoc(scatter_plot_tests_1_expr10, m_add_639, line(scatter_plot_tests_1, 176)).
argument(scatter_plot_tests_1_literal4, 1, scatter_plot_tests_1_expr10).
argument(scatter_plot_tests_1_literal5, 2, scatter_plot_tests_1_expr10).
ref(v_series_1_1278, scatter_plot_tests_1_expr10, line(scatter_plot_tests_1, 176)).
method_invoc(scatter_plot_tests_1_expr11, m_add_639, line(scatter_plot_tests_1, 177)).
argument(scatter_plot_tests_1_literal6, 1, scatter_plot_tests_1_expr11).
argument(scatter_plot_tests_1_literal7, 2, scatter_plot_tests_1_expr11).
ref(v_series_1_1278, scatter_plot_tests_1_expr11, line(scatter_plot_tests_1, 177)).
assign(v_dataset_1279, scatter_plot_tests_1_expr12, line(scatter_plot_tests_1, 178)).
method_invoc(scatter_plot_tests_1_expr12, m_xyseries_collection_664, line(scatter_plot_tests_1, 178)).
argument(v_series_1_1278, 1, scatter_plot_tests_1_expr12).
return(scatter_plot_tests_1_expr13, m_create_chart_808, line(scatter_plot_tests_1, 181)).
method_invoc(scatter_plot_tests_1_expr13, m_create_scatter_plot_37, line(scatter_plot_tests_1, 181)).
argument(scatter_plot_tests_1_literal8, 1, scatter_plot_tests_1_expr13).
argument(scatter_plot_tests_1_literal9, 2, scatter_plot_tests_1_expr13).
argument(scatter_plot_tests_1_literal10, 3, scatter_plot_tests_1_expr13).
argument(v_dataset_1279, 4, scatter_plot_tests_1_expr13).
argument(q_vertical_40, 5, scatter_plot_tests_1_expr13).
argument(scatter_plot_tests_1_literal11, 6, scatter_plot_tests_1_expr13).
argument(scatter_plot_tests_1_literal12, 7, scatter_plot_tests_1_expr13).
argument(scatter_plot_tests_1_literal13, 8, scatter_plot_tests_1_expr13).
ref(t_chart_factory_20, scatter_plot_tests_1_expr13, line(scatter_plot_tests_1, 181)).
param(p_event_1280, 1, m_chart_changed_812).

%axis_change_event_1 - org.jfree.chart.event.AxisChangeEvent
param(p_axis_1241, 1, m_axis_change_event_360).
method_invoc(axis_change_event_1_expr1, m_chart_change_event_759, line(axis_change_event_1, 61)).
argument(p_axis_1241, 1, axis_change_event_1_expr1).
assign(f_axis_1242, p_axis_1241, line(axis_change_event_1, 62)).

%flow_arrangement_1 - org.jfree.chart.block.FlowArrangement
method_invoc(flow_arrangement_1_expr1, m_flow_arrangement_738, line(flow_arrangement_1, 80)).
argument(q_center_37, 1, flow_arrangement_1_expr1).
argument(q_center_38, 2, flow_arrangement_1_expr1).
argument(flow_arrangement_1_literal1, 3, flow_arrangement_1_expr1).
argument(flow_arrangement_1_literal2, 4, flow_arrangement_1_expr1).
ref(t_horizontal_alignment_22, q_center_37, line(flow_arrangement_1, 80)).
ref(t_vertical_alignment_23, q_center_38, line(flow_arrangement_1, 80)).
param(p_h_align_1192, 1, m_flow_arrangement_738).
param(p_v_align_1193, 2, m_flow_arrangement_738).
param(p_h_gap_1194, 3, m_flow_arrangement_738).
param(p_v_gap_1195, 4, m_flow_arrangement_738).
assign(f_horizontal_alignment_1196, p_h_align_1192, line(flow_arrangement_1, 93)).
assign(f_vertical_alignment_1197, p_v_align_1193, line(flow_arrangement_1, 94)).
assign(f_horizontal_gap_1198, p_h_gap_1194, line(flow_arrangement_1, 95)).
assign(f_vertical_gap_1199, p_v_gap_1195, line(flow_arrangement_1, 96)).
param(p_block_1200, 1, m_add_739).
param(p_key_1201, 2, m_add_739).
param(p_container_1202, 1, m_arrange_740).
param(p_g_2_1203, 2, m_arrange_740).
param(p_constraint_1204, 3, m_arrange_740).
param(p_container_1205, 1, m_arrange_fn_741).
param(p_g_2_1206, 2, m_arrange_fn_741).
param(p_constraint_1207, 3, m_arrange_fn_741).
param(p_container_1208, 1, m_arrange_fr_742).
param(p_g_2_1209, 2, m_arrange_fr_742).
param(p_constraint_1210, 3, m_arrange_fr_742).
param(p_container_1211, 1, m_arrange_ff_743).
param(p_g_2_1212, 2, m_arrange_ff_743).
param(p_constraint_1213, 3, m_arrange_ff_743).
param(p_container_1214, 1, m_arrange_rr_744).
param(p_g_2_1215, 2, m_arrange_rr_744).
param(p_constraint_1216, 3, m_arrange_rr_744).
param(p_container_1217, 1, m_arrange_rf_745).
param(p_g_2_1218, 2, m_arrange_rf_745).
param(p_constraint_1219, 3, m_arrange_rf_745).
param(p_container_1220, 1, m_arrange_rn_746).
param(p_g_2_1221, 2, m_arrange_rn_746).
param(p_constraint_1222, 3, m_arrange_rn_746).
param(p_container_1223, 1, m_arrange_nn_747).
param(p_g_2_1224, 2, m_arrange_nn_747).
param(p_container_1225, 1, m_arrange_nf_748).
param(p_g_2_1226, 2, m_arrange_nf_748).
param(p_constraint_1227, 3, m_arrange_nf_748).
param(p_obj_1228, 1, m_equals_750).

%tick_unit_1 - org.jfree.chart.axis.TickUnit
param(p_size_938, 1, m_tick_unit_453).
assign(f_size_939, p_size_938, line(tick_unit_1, 84)).
param(p_size_940, 1, m_tick_unit_524).
param(p_minor_tick_count_941, 2, m_tick_unit_524).
assign(f_size_939, p_size_940, line(tick_unit_1, 96)).
assign(f_minor_tick_count_942, p_minor_tick_count_941, line(tick_unit_1, 97)).
return(f_size_939, m_get_size_550, line(tick_unit_1, 106)).
param(p_value_943, 1, m_value_to_string_552).
param(p_object_944, 1, m_compare_to_553).
assign(v_other_945, tick_unit_1_expr13, line(tick_unit_1, 145)).
assign(tick_unit_1_expr13, p_object_944, line(tick_unit_1, 145)).
method_invoc(tick_unit_1_expr17, m_get_size_550, line(tick_unit_1, 146)).
ref(v_other_945, tick_unit_1_expr17, line(tick_unit_1, 146)).
return(tick_unit_1_literal1, m_compare_to_553, line(tick_unit_1, 147)).
method_invoc(tick_unit_1_expr21, m_get_size_550, line(tick_unit_1, 149)).
ref(v_other_945, tick_unit_1_expr21, line(tick_unit_1, 149)).
return(tick_unit_1_expr22, m_compare_to_553, line(tick_unit_1, 150)).
param(p_obj_946, 1, m_equals_554).

%resource_bundle_wrapper_1 - org.jfree.chart.util.ResourceBundleWrapper
param(p_code_base_3316, 1, m_remove_code_base_2023).
param(p_url_class_loader_3317, 2, m_remove_code_base_2023).
param(p_base_name_3318, 1, m_get_bundle_2024).
return(resource_bundle_wrapper_1_expr2, m_get_bundle_2024, line(resource_bundle_wrapper_1, 128)).
method_invoc(resource_bundle_wrapper_1_expr2, m_get_bundle_2025, line(resource_bundle_wrapper_1, 128)).
argument(p_base_name_3318, 1, resource_bundle_wrapper_1_expr2).
ref(t_resource_bundle_41, resource_bundle_wrapper_1_expr2, line(resource_bundle_wrapper_1, 128)).
param(p_base_name_3320, 1, m_get_bundle_2026).
param(p_locale_3321, 2, m_get_bundle_2026).
param(p_base_name_3322, 1, m_get_bundle_2027).
param(p_locale_3323, 2, m_get_bundle_2027).
param(p_loader_3324, 3, m_get_bundle_2027).

%xystep_area_chart_tests_1 - org.jfree.chart.junit.XYStepAreaChartTests
return(xystep_area_chart_tests_1_expr1, m_suite_829, line(xystep_area_chart_tests_1, 80)).
method_invoc(xystep_area_chart_tests_1_expr1, m_test_suite_627, line(xystep_area_chart_tests_1, 80)).
argument(xystep_area_chart_tests_1_expr2, 1, xystep_area_chart_tests_1_expr1).
param(p_name_1291, 1, m_xystep_area_chart_tests_830).
method_invoc(xystep_area_chart_tests_1_expr3, m_test_case_629, line(xystep_area_chart_tests_1, 89)).
argument(p_name_1291, 1, xystep_area_chart_tests_1_expr3).
assign(f_chart_1292, xystep_area_chart_tests_1_expr6, line(xystep_area_chart_tests_1, 96)).
method_invoc(xystep_area_chart_tests_1_expr6, m_create_chart_832, line(xystep_area_chart_tests_1, 96)).
assign(v_series_1_1293, xystep_area_chart_tests_1_expr8, line(xystep_area_chart_tests_1, 170)).
method_invoc(xystep_area_chart_tests_1_expr8, m_xyseries_638, line(xystep_area_chart_tests_1, 170)).
argument(xystep_area_chart_tests_1_literal1, 1, xystep_area_chart_tests_1_expr8).
method_invoc(xystep_area_chart_tests_1_expr9, m_add_639, line(xystep_area_chart_tests_1, 171)).
argument(xystep_area_chart_tests_1_literal2, 1, xystep_area_chart_tests_1_expr9).
argument(xystep_area_chart_tests_1_literal3, 2, xystep_area_chart_tests_1_expr9).
ref(v_series_1_1293, xystep_area_chart_tests_1_expr9, line(xystep_area_chart_tests_1, 171)).
method_invoc(xystep_area_chart_tests_1_expr10, m_add_639, line(xystep_area_chart_tests_1, 172)).
argument(xystep_area_chart_tests_1_literal4, 1, xystep_area_chart_tests_1_expr10).
argument(xystep_area_chart_tests_1_literal5, 2, xystep_area_chart_tests_1_expr10).
ref(v_series_1_1293, xystep_area_chart_tests_1_expr10, line(xystep_area_chart_tests_1, 172)).
method_invoc(xystep_area_chart_tests_1_expr11, m_add_639, line(xystep_area_chart_tests_1, 173)).
argument(xystep_area_chart_tests_1_literal6, 1, xystep_area_chart_tests_1_expr11).
argument(xystep_area_chart_tests_1_literal7, 2, xystep_area_chart_tests_1_expr11).
ref(v_series_1_1293, xystep_area_chart_tests_1_expr11, line(xystep_area_chart_tests_1, 173)).
assign(v_dataset_1294, xystep_area_chart_tests_1_expr12, line(xystep_area_chart_tests_1, 174)).
method_invoc(xystep_area_chart_tests_1_expr12, m_xyseries_collection_664, line(xystep_area_chart_tests_1, 174)).
argument(v_series_1_1293, 1, xystep_area_chart_tests_1_expr12).
return(xystep_area_chart_tests_1_expr13, m_create_chart_832, line(xystep_area_chart_tests_1, 177)).
method_invoc(xystep_area_chart_tests_1_expr13, m_create_xystep_area_chart_53, line(xystep_area_chart_tests_1, 177)).
argument(xystep_area_chart_tests_1_literal8, 1, xystep_area_chart_tests_1_expr13).
argument(xystep_area_chart_tests_1_literal9, 2, xystep_area_chart_tests_1_expr13).
argument(xystep_area_chart_tests_1_literal10, 3, xystep_area_chart_tests_1_expr13).
argument(v_dataset_1294, 4, xystep_area_chart_tests_1_expr13).
argument(q_vertical_40, 5, xystep_area_chart_tests_1_expr13).
argument(xystep_area_chart_tests_1_literal11, 6, xystep_area_chart_tests_1_expr13).
argument(xystep_area_chart_tests_1_literal12, 7, xystep_area_chart_tests_1_expr13).
argument(xystep_area_chart_tests_1_literal13, 8, xystep_area_chart_tests_1_expr13).
ref(t_chart_factory_20, xystep_area_chart_tests_1_expr13, line(xystep_area_chart_tests_1, 177)).
param(p_event_1295, 1, m_chart_changed_836).

%value_axis_tests_1 - org.jfree.chart.axis.junit.ValueAxisTests
return(value_axis_tests_1_expr1, m_suite_659, line(value_axis_tests_1, 75)).
method_invoc(value_axis_tests_1_expr1, m_test_suite_627, line(value_axis_tests_1, 75)).
argument(value_axis_tests_1_expr2, 1, value_axis_tests_1_expr1).
param(p_name_1087, 1, m_value_axis_tests_660).
method_invoc(value_axis_tests_1_expr3, m_test_case_629, line(value_axis_tests_1, 84)).
argument(p_name_1087, 1, value_axis_tests_1_expr3).
assign(v_series_1088, value_axis_tests_1_expr4, line(value_axis_tests_1, 229)).
method_invoc(value_axis_tests_1_expr4, m_xyseries_638, line(value_axis_tests_1, 229)).
argument(value_axis_tests_1_literal1, 1, value_axis_tests_1_expr4).
method_invoc(value_axis_tests_1_expr5, m_add_639, line(value_axis_tests_1, 230)).
argument(value_axis_tests_1_literal2, 1, value_axis_tests_1_expr5).
argument(value_axis_tests_1_literal3, 2, value_axis_tests_1_expr5).
ref(v_series_1088, value_axis_tests_1_expr5, line(value_axis_tests_1, 230)).
method_invoc(value_axis_tests_1_expr6, m_add_639, line(value_axis_tests_1, 231)).
argument(value_axis_tests_1_literal4, 1, value_axis_tests_1_expr6).
argument(value_axis_tests_1_literal5, 2, value_axis_tests_1_expr6).
ref(v_series_1088, value_axis_tests_1_expr6, line(value_axis_tests_1, 231)).
assign(v_dataset_1089, value_axis_tests_1_expr7, line(value_axis_tests_1, 232)).
method_invoc(value_axis_tests_1_expr7, m_xyseries_collection_664, line(value_axis_tests_1, 232)).
argument(v_series_1088, 1, value_axis_tests_1_expr7).
method_invoc(value_axis_tests_1_expr8, m_set_interval_width_665, line(value_axis_tests_1, 233)).
argument(value_axis_tests_1_literal6, 1, value_axis_tests_1_expr8).
ref(v_dataset_1089, value_axis_tests_1_expr8, line(value_axis_tests_1, 233)).
assign(v_chart_1090, value_axis_tests_1_expr9, line(value_axis_tests_1, 234)).
method_invoc(value_axis_tests_1_expr9, m_create_scatter_plot_37, line(value_axis_tests_1, 234)).
argument(value_axis_tests_1_literal7, 1, value_axis_tests_1_expr9).
argument(value_axis_tests_1_literal8, 2, value_axis_tests_1_expr9).
argument(value_axis_tests_1_literal9, 3, value_axis_tests_1_expr9).
argument(v_dataset_1089, 4, value_axis_tests_1_expr9).
argument(q_vertical_36, 5, value_axis_tests_1_expr9).
argument(value_axis_tests_1_literal10, 6, value_axis_tests_1_expr9).
argument(value_axis_tests_1_literal11, 7, value_axis_tests_1_expr9).
argument(value_axis_tests_1_literal12, 8, value_axis_tests_1_expr9).
ref(t_chart_factory_20, value_axis_tests_1_expr9, line(value_axis_tests_1, 234)).

%time_series_chart_tests_1 - org.jfree.chart.junit.TimeSeriesChartTests
return(time_series_chart_tests_1_expr1, m_suite_813, line(time_series_chart_tests_1, 79)).
method_invoc(time_series_chart_tests_1_expr1, m_test_suite_627, line(time_series_chart_tests_1, 79)).
argument(time_series_chart_tests_1_expr2, 1, time_series_chart_tests_1_expr1).
param(p_name_1281, 1, m_time_series_chart_tests_814).
method_invoc(time_series_chart_tests_1_expr3, m_test_case_629, line(time_series_chart_tests_1, 88)).
argument(p_name_1281, 1, time_series_chart_tests_1_expr3).
assign(f_chart_1282, time_series_chart_tests_1_expr6, line(time_series_chart_tests_1, 95)).
method_invoc(time_series_chart_tests_1_expr6, m_create_chart_816, line(time_series_chart_tests_1, 95)).
assign(v_series_1_1283, time_series_chart_tests_1_expr8, line(time_series_chart_tests_1, 169)).
method_invoc(time_series_chart_tests_1_expr8, m_xyseries_638, line(time_series_chart_tests_1, 169)).
argument(time_series_chart_tests_1_literal1, 1, time_series_chart_tests_1_expr8).
method_invoc(time_series_chart_tests_1_expr9, m_add_639, line(time_series_chart_tests_1, 170)).
argument(time_series_chart_tests_1_literal2, 1, time_series_chart_tests_1_expr9).
argument(time_series_chart_tests_1_literal3, 2, time_series_chart_tests_1_expr9).
ref(v_series_1_1283, time_series_chart_tests_1_expr9, line(time_series_chart_tests_1, 170)).
method_invoc(time_series_chart_tests_1_expr10, m_add_639, line(time_series_chart_tests_1, 171)).
argument(time_series_chart_tests_1_literal4, 1, time_series_chart_tests_1_expr10).
argument(time_series_chart_tests_1_literal5, 2, time_series_chart_tests_1_expr10).
ref(v_series_1_1283, time_series_chart_tests_1_expr10, line(time_series_chart_tests_1, 171)).
method_invoc(time_series_chart_tests_1_expr11, m_add_639, line(time_series_chart_tests_1, 172)).
argument(time_series_chart_tests_1_literal6, 1, time_series_chart_tests_1_expr11).
argument(time_series_chart_tests_1_literal7, 2, time_series_chart_tests_1_expr11).
ref(v_series_1_1283, time_series_chart_tests_1_expr11, line(time_series_chart_tests_1, 172)).
assign(v_dataset_1284, time_series_chart_tests_1_expr12, line(time_series_chart_tests_1, 173)).
method_invoc(time_series_chart_tests_1_expr12, m_xyseries_collection_664, line(time_series_chart_tests_1, 173)).
argument(v_series_1_1283, 1, time_series_chart_tests_1_expr12).
return(time_series_chart_tests_1_expr13, m_create_chart_816, line(time_series_chart_tests_1, 176)).
method_invoc(time_series_chart_tests_1_expr13, m_create_time_series_chart_55, line(time_series_chart_tests_1, 176)).
argument(time_series_chart_tests_1_literal8, 1, time_series_chart_tests_1_expr13).
argument(time_series_chart_tests_1_literal9, 2, time_series_chart_tests_1_expr13).
argument(time_series_chart_tests_1_literal10, 3, time_series_chart_tests_1_expr13).
argument(v_dataset_1284, 4, time_series_chart_tests_1_expr13).
argument(time_series_chart_tests_1_literal11, 5, time_series_chart_tests_1_expr13).
argument(time_series_chart_tests_1_literal12, 6, time_series_chart_tests_1_expr13).
argument(time_series_chart_tests_1_literal13, 7, time_series_chart_tests_1_expr13).
ref(t_chart_factory_20, time_series_chart_tests_1_expr13, line(time_series_chart_tests_1, 176)).
param(p_event_1285, 1, m_chart_changed_820).

%paint_map_1 - org.jfree.chart.util.PaintMap
assign(f_store_3236, paint_map_1_expr3, line(paint_map_1, 79)).
method_invoc(paint_map_1_expr3, m_hash_map_1159, line(paint_map_1, 79)).
param(p_key_3237, 1, m_get_paint_1972).
param(p_key_3238, 1, m_contains_key_1973).
param(p_key_3239, 1, m_put_1974).
param(p_paint_3240, 2, m_put_1974).
method_invoc(paint_map_1_expr5, m_clear_1975, line(paint_map_1, 134)).
ref(f_store_3236, paint_map_1_expr5, line(paint_map_1, 134)).
param(p_obj_3241, 1, m_equals_1976).
throw(m_clone_1977, clone_not_supported_exception).
param(p_stream_3242, 1, m_write_object_1978).
throw(m_write_object_1978, ioexception).
param(p_stream_3243, 1, m_read_object_1979).
throw(m_read_object_1979, ioexception).
throw(m_read_object_1979, class_not_found_exception).

%plot_change_event_1 - org.jfree.chart.event.PlotChangeEvent
param(p_plot_1259, 1, m_plot_change_event_772).
method_invoc(plot_change_event_1_expr1, m_chart_change_event_759, line(plot_change_event_1, 64)).
argument(p_plot_1259, 1, plot_change_event_1_expr1).
assign(f_plot_1260, p_plot_1259, line(plot_change_event_1, 65)).

%contributor_1 - org.jfree.chart.ui.Contributor
param(p_name_3153, 1, m_contributor_1916).
param(p_email_3154, 2, m_contributor_1916).
assign(f_name_3155, p_name_3153, line(contributor_1, 64)).
assign(f_email_3156, p_email_3154, line(contributor_1, 65)).

%log_axis_tests_1 - org.jfree.chart.axis.junit.LogAxisTests
return(log_axis_tests_1_expr1, m_suite_626, line(log_axis_tests_1, 78)).
method_invoc(log_axis_tests_1_expr1, m_test_suite_627, line(log_axis_tests_1, 78)).
argument(log_axis_tests_1_expr2, 1, log_axis_tests_1_expr1).
param(p_name_1073, 1, m_log_axis_tests_628).
method_invoc(log_axis_tests_1_expr3, m_test_case_629, line(log_axis_tests_1, 87)).
argument(p_name_1073, 1, log_axis_tests_1_expr3).
assign(v_series_1074, log_axis_tests_1_expr4, line(log_axis_tests_1, 254)).
method_invoc(log_axis_tests_1_expr4, m_xyseries_638, line(log_axis_tests_1, 254)).
argument(log_axis_tests_1_literal1, 1, log_axis_tests_1_expr4).
method_invoc(log_axis_tests_1_expr5, m_add_639, line(log_axis_tests_1, 255)).
argument(log_axis_tests_1_literal2, 1, log_axis_tests_1_expr5).
argument(log_axis_tests_1_literal3, 2, log_axis_tests_1_expr5).
ref(v_series_1074, log_axis_tests_1_expr5, line(log_axis_tests_1, 255)).
method_invoc(log_axis_tests_1_expr6, m_add_639, line(log_axis_tests_1, 256)).
argument(log_axis_tests_1_literal4, 1, log_axis_tests_1_expr6).
argument(log_axis_tests_1_literal5, 2, log_axis_tests_1_expr6).
ref(v_series_1074, log_axis_tests_1_expr6, line(log_axis_tests_1, 256)).
method_invoc(log_axis_tests_1_expr7, m_add_639, line(log_axis_tests_1, 257)).
argument(log_axis_tests_1_literal6, 1, log_axis_tests_1_expr7).
argument(log_axis_tests_1_literal7, 2, log_axis_tests_1_expr7).
ref(v_series_1074, log_axis_tests_1_expr7, line(log_axis_tests_1, 257)).
assign(v_dataset_1075, log_axis_tests_1_expr8, line(log_axis_tests_1, 258)).
method_invoc(log_axis_tests_1_expr8, m_xyseries_collection_640, line(log_axis_tests_1, 258)).
method_invoc(log_axis_tests_1_expr9, m_add_series_641, line(log_axis_tests_1, 259)).
argument(v_series_1074, 1, log_axis_tests_1_expr9).
ref(v_dataset_1075, log_axis_tests_1_expr9, line(log_axis_tests_1, 259)).
assign(v_chart_1076, log_axis_tests_1_expr10, line(log_axis_tests_1, 260)).
method_invoc(log_axis_tests_1_expr10, m_create_scatter_plot_37, line(log_axis_tests_1, 260)).
argument(log_axis_tests_1_literal8, 1, log_axis_tests_1_expr10).
argument(log_axis_tests_1_literal9, 2, log_axis_tests_1_expr10).
argument(log_axis_tests_1_literal10, 3, log_axis_tests_1_expr10).
argument(v_dataset_1075, 4, log_axis_tests_1_expr10).
argument(q_vertical_35, 5, log_axis_tests_1_expr10).
argument(log_axis_tests_1_literal11, 6, log_axis_tests_1_expr10).
argument(log_axis_tests_1_literal12, 7, log_axis_tests_1_expr10).
argument(log_axis_tests_1_literal13, 8, log_axis_tests_1_expr10).
ref(t_chart_factory_20, log_axis_tests_1_expr10, line(log_axis_tests_1, 260)).
assign(v_series_1077, log_axis_tests_1_expr11, line(log_axis_tests_1, 282)).
method_invoc(log_axis_tests_1_expr11, m_xyseries_638, line(log_axis_tests_1, 282)).
argument(log_axis_tests_1_literal14, 1, log_axis_tests_1_expr11).
method_invoc(log_axis_tests_1_expr12, m_add_639, line(log_axis_tests_1, 283)).
argument(log_axis_tests_1_literal15, 1, log_axis_tests_1_expr12).
argument(log_axis_tests_1_literal16, 2, log_axis_tests_1_expr12).
ref(v_series_1077, log_axis_tests_1_expr12, line(log_axis_tests_1, 283)).
method_invoc(log_axis_tests_1_expr13, m_add_639, line(log_axis_tests_1, 284)).
argument(log_axis_tests_1_literal17, 1, log_axis_tests_1_expr13).
argument(log_axis_tests_1_literal18, 2, log_axis_tests_1_expr13).
ref(v_series_1077, log_axis_tests_1_expr13, line(log_axis_tests_1, 284)).
method_invoc(log_axis_tests_1_expr14, m_add_639, line(log_axis_tests_1, 285)).
argument(log_axis_tests_1_literal19, 1, log_axis_tests_1_expr14).
argument(log_axis_tests_1_literal20, 2, log_axis_tests_1_expr14).
ref(v_series_1077, log_axis_tests_1_expr14, line(log_axis_tests_1, 285)).
assign(v_dataset_1078, log_axis_tests_1_expr15, line(log_axis_tests_1, 286)).
method_invoc(log_axis_tests_1_expr15, m_xyseries_collection_640, line(log_axis_tests_1, 286)).
method_invoc(log_axis_tests_1_expr16, m_add_series_641, line(log_axis_tests_1, 287)).
argument(v_series_1077, 1, log_axis_tests_1_expr16).
ref(v_dataset_1078, log_axis_tests_1_expr16, line(log_axis_tests_1, 287)).
assign(v_chart_1079, log_axis_tests_1_expr17, line(log_axis_tests_1, 288)).
method_invoc(log_axis_tests_1_expr17, m_create_scatter_plot_37, line(log_axis_tests_1, 288)).
argument(log_axis_tests_1_literal21, 1, log_axis_tests_1_expr17).
argument(log_axis_tests_1_literal22, 2, log_axis_tests_1_expr17).
argument(log_axis_tests_1_literal23, 3, log_axis_tests_1_expr17).
argument(v_dataset_1078, 4, log_axis_tests_1_expr17).
argument(q_vertical_36, 5, log_axis_tests_1_expr17).
argument(log_axis_tests_1_literal24, 6, log_axis_tests_1_expr17).
argument(log_axis_tests_1_literal25, 7, log_axis_tests_1_expr17).
argument(log_axis_tests_1_literal26, 8, log_axis_tests_1_expr17).
ref(t_chart_factory_20, log_axis_tests_1_expr17, line(log_axis_tests_1, 288)).

%default_xydataset_1 - org.jfree.data.xy.DefaultXYDataset
assign(f_series_keys_3919, default_xydataset_1_expr3, line(default_xydataset_1, 82)).
method_invoc(default_xydataset_1_expr3, m_array_list_75, line(default_xydataset_1, 82)).
assign(f_series_list_3920, default_xydataset_1_expr7, line(default_xydataset_1, 83)).
method_invoc(default_xydataset_1_expr7, m_array_list_75, line(default_xydataset_1, 83)).
return(default_xydataset_1_expr9, m_get_series_count_2472, line(default_xydataset_1, 92)).
method_invoc(default_xydataset_1_expr9, m_size_105, line(default_xydataset_1, 92)).
ref(f_series_list_3920, default_xydataset_1_expr9, line(default_xydataset_1, 92)).
param(p_series_3921, 1, m_get_series_key_2473).
param(p_series_key_3922, 1, m_index_of_2474).
param(p_series_3923, 1, m_get_item_count_2476).
param(p_series_3924, 1, m_get_xvalue_2477).
param(p_item_3925, 2, m_get_xvalue_2477).
param(p_series_3926, 1, m_get_x_2478).
param(p_item_3927, 2, m_get_x_2478).
param(p_series_3928, 1, m_get_yvalue_2479).
param(p_item_3929, 2, m_get_yvalue_2479).
param(p_series_3930, 1, m_get_y_2480).
param(p_item_3931, 2, m_get_y_2480).
param(p_series_key_3932, 1, m_add_series_2481).
param(p_data_3933, 2, m_add_series_2481).
param(p_series_key_3934, 1, m_remove_series_2482).
param(p_obj_3935, 1, m_equals_2483).
throw(m_clone_2485, clone_not_supported_exception).

%value_axis_1 - org.jfree.chart.axis.ValueAxis
assign(f_default_range_954, value_axis_1_expr1, line(value_axis_1, 155)).
method_invoc(value_axis_1_expr1, m_range_501, line(value_axis_1, 155)).
argument(value_axis_1_literal1, 1, value_axis_1_expr1).
argument(value_axis_1_literal2, 2, value_axis_1_expr1).
param(p_label_955, 1, m_value_axis_390).
param(p_standard_tick_units_956, 2, m_value_axis_390).
method_invoc(value_axis_1_expr2, m_axis_299, line(value_axis_1, 277)).
argument(p_label_955, 1, value_axis_1_expr2).
assign(f_positive_arrow_visible_957, value_axis_1_literal3, line(value_axis_1, 279)).
assign(f_negative_arrow_visible_958, value_axis_1_literal4, line(value_axis_1, 280)).
assign(f_range_959, f_default_range_954, line(value_axis_1, 282)).
assign(f_auto_range_960, f_default_auto_range_961, line(value_axis_1, 283)).
assign(f_default_auto_range_962, f_default_range_954, line(value_axis_1, 284)).
assign(f_inverted_963, f_default_inverted_964, line(value_axis_1, 286)).
assign(f_auto_range_minimum_size_965, f_default_auto_range_minimum_size_966, line(value_axis_1, 287)).
assign(f_lower_margin_967, f_default_lower_margin_968, line(value_axis_1, 289)).
assign(f_upper_margin_969, f_default_upper_margin_970, line(value_axis_1, 290)).
assign(f_fixed_auto_range_971, value_axis_1_literal5, line(value_axis_1, 292)).
assign(f_auto_tick_unit_selection_972, f_default_auto_tick_unit_selection_973, line(value_axis_1, 294)).
assign(f_standard_tick_units_974, p_standard_tick_units_956, line(value_axis_1, 295)).
assign(v_p_1_975, value_axis_1_expr39, line(value_axis_1, 297)).
method_invoc(value_axis_1_expr39, m_polygon_564, line(value_axis_1, 297)).
method_invoc(value_axis_1_expr40, m_add_point_565, line(value_axis_1, 298)).
argument(value_axis_1_literal6, 1, value_axis_1_expr40).
argument(value_axis_1_literal7, 2, value_axis_1_expr40).
ref(v_p_1_975, value_axis_1_expr40, line(value_axis_1, 298)).
method_invoc(value_axis_1_expr41, m_add_point_565, line(value_axis_1, 299)).
argument(value_axis_1_expr42, 1, value_axis_1_expr41).
argument(value_axis_1_literal8, 2, value_axis_1_expr41).
ref(v_p_1_975, value_axis_1_expr41, line(value_axis_1, 299)).
method_invoc(value_axis_1_expr43, m_add_point_565, line(value_axis_1, 300)).
argument(value_axis_1_literal10, 1, value_axis_1_expr43).
argument(value_axis_1_literal11, 2, value_axis_1_expr43).
ref(v_p_1_975, value_axis_1_expr43, line(value_axis_1, 300)).
assign(f_up_arrow_976, v_p_1_975, line(value_axis_1, 302)).
assign(v_p_2_977, value_axis_1_expr47, line(value_axis_1, 304)).
method_invoc(value_axis_1_expr47, m_polygon_564, line(value_axis_1, 304)).
method_invoc(value_axis_1_expr48, m_add_point_565, line(value_axis_1, 305)).
argument(value_axis_1_literal12, 1, value_axis_1_expr48).
argument(value_axis_1_literal13, 2, value_axis_1_expr48).
ref(v_p_2_977, value_axis_1_expr48, line(value_axis_1, 305)).
method_invoc(value_axis_1_expr49, m_add_point_565, line(value_axis_1, 306)).
argument(value_axis_1_expr50, 1, value_axis_1_expr49).
argument(value_axis_1_expr51, 2, value_axis_1_expr49).
ref(v_p_2_977, value_axis_1_expr49, line(value_axis_1, 306)).
method_invoc(value_axis_1_expr52, m_add_point_565, line(value_axis_1, 307)).
argument(value_axis_1_literal16, 1, value_axis_1_expr52).
argument(value_axis_1_expr53, 2, value_axis_1_expr52).
ref(v_p_2_977, value_axis_1_expr52, line(value_axis_1, 307)).
assign(f_down_arrow_978, v_p_2_977, line(value_axis_1, 309)).
assign(v_p_3_979, value_axis_1_expr57, line(value_axis_1, 311)).
method_invoc(value_axis_1_expr57, m_polygon_564, line(value_axis_1, 311)).
method_invoc(value_axis_1_expr58, m_add_point_565, line(value_axis_1, 312)).
argument(value_axis_1_literal18, 1, value_axis_1_expr58).
argument(value_axis_1_literal19, 2, value_axis_1_expr58).
ref(v_p_3_979, value_axis_1_expr58, line(value_axis_1, 312)).
method_invoc(value_axis_1_expr59, m_add_point_565, line(value_axis_1, 313)).
argument(value_axis_1_expr60, 1, value_axis_1_expr59).
argument(value_axis_1_expr61, 2, value_axis_1_expr59).
ref(v_p_3_979, value_axis_1_expr59, line(value_axis_1, 313)).
method_invoc(value_axis_1_expr62, m_add_point_565, line(value_axis_1, 314)).
argument(value_axis_1_expr63, 1, value_axis_1_expr62).
argument(value_axis_1_literal22, 2, value_axis_1_expr62).
ref(v_p_3_979, value_axis_1_expr62, line(value_axis_1, 314)).
assign(f_right_arrow_980, v_p_3_979, line(value_axis_1, 316)).
assign(v_p_4_981, value_axis_1_expr67, line(value_axis_1, 318)).
method_invoc(value_axis_1_expr67, m_polygon_564, line(value_axis_1, 318)).
method_invoc(value_axis_1_expr68, m_add_point_565, line(value_axis_1, 319)).
argument(value_axis_1_literal24, 1, value_axis_1_expr68).
argument(value_axis_1_literal25, 2, value_axis_1_expr68).
ref(v_p_4_981, value_axis_1_expr68, line(value_axis_1, 319)).
method_invoc(value_axis_1_expr69, m_add_point_565, line(value_axis_1, 320)).
argument(value_axis_1_literal26, 1, value_axis_1_expr69).
argument(value_axis_1_expr70, 2, value_axis_1_expr69).
ref(v_p_4_981, value_axis_1_expr69, line(value_axis_1, 320)).
method_invoc(value_axis_1_expr71, m_add_point_565, line(value_axis_1, 321)).
argument(value_axis_1_literal28, 1, value_axis_1_expr71).
argument(value_axis_1_literal29, 2, value_axis_1_expr71).
ref(v_p_4_981, value_axis_1_expr71, line(value_axis_1, 321)).
assign(f_left_arrow_982, v_p_4_981, line(value_axis_1, 323)).
assign(f_vertical_tick_labels_983, value_axis_1_literal30, line(value_axis_1, 325)).
assign(f_minor_tick_count_984, value_axis_1_literal31, line(value_axis_1, 326)).
param(p_flag_985, 1, m_set_vertical_tick_labels_567).
param(p_visible_986, 1, m_set_positive_arrow_visible_569).
param(p_visible_987, 1, m_set_negative_arrow_visible_571).
param(p_arrow_988, 1, m_set_up_arrow_573).
param(p_arrow_989, 1, m_set_down_arrow_575).
param(p_arrow_990, 1, m_set_left_arrow_577).
param(p_arrow_991, 1, m_set_right_arrow_579).
param(p_g_2_992, 1, m_draw_axis_line_580).
param(p_cursor_993, 2, m_draw_axis_line_580).
param(p_data_area_994, 3, m_draw_axis_line_580).
param(p_edge_995, 4, m_draw_axis_line_580).
param(p_tick_996, 1, m_calculate_anchor_point_581).
param(p_cursor_997, 2, m_calculate_anchor_point_581).
param(p_data_area_998, 3, m_calculate_anchor_point_581).
param(p_edge_999, 4, m_calculate_anchor_point_581).
param(p_g_2_1000, 1, m_draw_tick_marks_and_labels_582).
param(p_cursor_1001, 2, m_draw_tick_marks_and_labels_582).
param(p_plot_area_1002, 3, m_draw_tick_marks_and_labels_582).
param(p_data_area_1003, 4, m_draw_tick_marks_and_labels_582).
param(p_edge_1004, 5, m_draw_tick_marks_and_labels_582).
param(p_info_1005, 6, m_draw_tick_marks_and_labels_582).
param(p_g_2_1006, 1, m_reserve_space_583).
param(p_plot_1007, 2, m_reserve_space_583).
param(p_plot_area_1008, 3, m_reserve_space_583).
param(p_edge_1009, 4, m_reserve_space_583).
param(p_space_1010, 5, m_reserve_space_583).
param(p_ticks_1011, 1, m_find_maximum_tick_label_height_584).
param(p_g_2_1012, 2, m_find_maximum_tick_label_height_584).
param(p_draw_area_1013, 3, m_find_maximum_tick_label_height_584).
param(p_vertical_1014, 4, m_find_maximum_tick_label_height_584).
param(p_ticks_1015, 1, m_find_maximum_tick_label_width_585).
param(p_g_2_1016, 2, m_find_maximum_tick_label_width_585).
param(p_draw_area_1017, 3, m_find_maximum_tick_label_width_585).
param(p_vertical_1018, 4, m_find_maximum_tick_label_width_585).
param(p_flag_1019, 1, m_set_inverted_587).
return(f_auto_range_960, m_is_auto_range_414, line(value_axis_1, 951)).
param(p_auto_1020, 1, m_set_auto_range_588).
param(p_auto_1021, 1, m_set_auto_range_589).
param(p_notify_1022, 2, m_set_auto_range_589).
return(f_auto_range_minimum_size_965, m_get_auto_range_minimum_size_498, line(value_axis_1, 997)).
param(p_size_1023, 1, m_set_auto_range_minimum_size_393).
method_invoc(value_axis_1_expr85, m_set_auto_range_minimum_size_590, line(value_axis_1, 1009)).
argument(p_size_1023, 1, value_axis_1_expr85).
argument(value_axis_1_literal32, 2, value_axis_1_expr85).
param(p_size_1024, 1, m_set_auto_range_minimum_size_590).
param(p_notify_1025, 2, m_set_auto_range_minimum_size_590).
assign(f_auto_range_minimum_size_965, p_size_1024, line(value_axis_1, 1028)).
method_invoc(value_axis_1_expr95, m_auto_adjust_range_591, line(value_axis_1, 1030)).
method_invoc(value_axis_1_expr96, m_notify_listeners_358, line(value_axis_1, 1033)).
argument(value_axis_1_expr97, 1, value_axis_1_expr96).
method_invoc(value_axis_1_expr97, m_axis_change_event_360, line(value_axis_1, 1033)).
argument(value_axis_1_expr98, 1, value_axis_1_expr97).
return(f_default_auto_range_962, m_get_default_auto_range_492, line(value_axis_1, 1049)).
param(p_range_1026, 1, m_set_default_auto_range_592).
return(f_lower_margin_967, m_get_lower_margin_500, line(value_axis_1, 1081)).
param(p_margin_1027, 1, m_set_lower_margin_56).
assign(f_lower_margin_967, p_margin_1027, line(value_axis_1, 1096)).
method_invoc(value_axis_1_expr106, m_is_auto_range_414, line(value_axis_1, 1097)).
method_invoc(value_axis_1_expr107, m_auto_adjust_range_591, line(value_axis_1, 1098)).
method_invoc(value_axis_1_expr108, m_notify_listeners_358, line(value_axis_1, 1100)).
argument(value_axis_1_expr109, 1, value_axis_1_expr108).
method_invoc(value_axis_1_expr109, m_axis_change_event_360, line(value_axis_1, 1100)).
argument(value_axis_1_expr110, 1, value_axis_1_expr109).
return(f_upper_margin_969, m_get_upper_margin_499, line(value_axis_1, 1114)).
param(p_margin_1028, 1, m_set_upper_margin_57).
assign(f_upper_margin_969, p_margin_1028, line(value_axis_1, 1129)).
method_invoc(value_axis_1_expr116, m_is_auto_range_414, line(value_axis_1, 1130)).
method_invoc(value_axis_1_expr117, m_auto_adjust_range_591, line(value_axis_1, 1131)).
method_invoc(value_axis_1_expr118, m_notify_listeners_358, line(value_axis_1, 1133)).
argument(value_axis_1_expr119, 1, value_axis_1_expr118).
method_invoc(value_axis_1_expr119, m_axis_change_event_360, line(value_axis_1, 1133)).
argument(value_axis_1_expr120, 1, value_axis_1_expr119).
return(f_fixed_auto_range_971, m_get_fixed_auto_range_497, line(value_axis_1, 1144)).
param(p_length_1029, 1, m_set_fixed_auto_range_593).
param(p_min_1030, 1, m_set_lower_bound_595).
param(p_max_1031, 1, m_set_upper_bound_597).
return(f_range_959, m_get_range_598, line(value_axis_1, 1226)).
param(p_range_1032, 1, m_set_range_599).
param(p_range_1033, 1, m_set_range_404).
param(p_turn_off_auto_range_1034, 2, m_set_range_404).
param(p_notify_1035, 3, m_set_range_404).
assign(f_range_959, p_range_1033, line(value_axis_1, 1264)).
param(p_lower_1036, 1, m_set_range_600).
param(p_upper_1037, 2, m_set_range_600).
param(p_range_1038, 1, m_set_range_with_margins_601).
param(p_range_1039, 1, m_set_range_with_margins_602).
param(p_turn_off_auto_range_1040, 2, m_set_range_with_margins_602).
param(p_notify_1041, 3, m_set_range_with_margins_602).
param(p_lower_1042, 1, m_set_range_with_margins_603).
param(p_upper_1043, 2, m_set_range_with_margins_603).
param(p_value_1044, 1, m_set_range_about_value_604).
param(p_length_1045, 2, m_set_range_about_value_604).
param(p_flag_1046, 1, m_set_auto_tick_unit_selection_606).
param(p_flag_1047, 1, m_set_auto_tick_unit_selection_607).
param(p_notify_1048, 2, m_set_auto_tick_unit_selection_607).
param(p_source_1049, 1, m_set_standard_tick_units_49).
assign(f_standard_tick_units_974, p_source_1049, line(value_axis_1, 1410)).
method_invoc(value_axis_1_expr132, m_notify_listeners_358, line(value_axis_1, 1411)).
argument(value_axis_1_expr133, 1, value_axis_1_expr132).
method_invoc(value_axis_1_expr133, m_axis_change_event_360, line(value_axis_1, 1411)).
argument(value_axis_1_expr134, 1, value_axis_1_expr133).
param(p_count_1050, 1, m_set_minor_tick_count_610).
param(p_value_1051, 1, m_value_to_java2_d_611).
param(p_area_1052, 2, m_value_to_java2_d_611).
param(p_edge_1053, 3, m_value_to_java2_d_611).
param(p_length_1054, 1, m_length_to_java2_d_612).
param(p_area_1055, 2, m_length_to_java2_d_612).
param(p_edge_1056, 3, m_length_to_java2_d_612).
param(p_java_2dvalue_1057, 1, m_java_2dto_value_613).
param(p_area_1058, 2, m_java_2dto_value_613).
param(p_edge_1059, 3, m_java_2dto_value_613).
param(p_value_1060, 1, m_center_range_614).
param(p_percent_1061, 1, m_resize_range_615).
param(p_percent_1062, 1, m_resize_range_616).
param(p_anchor_value_1063, 2, m_resize_range_616).
param(p_percent_1064, 1, m_resize_range2_617).
param(p_anchor_value_1065, 2, m_resize_range2_617).
param(p_lower_percent_1066, 1, m_zoom_range_618).
param(p_upper_percent_1067, 2, m_zoom_range_618).
param(p_percent_1068, 1, m_pan_619).
param(p_index_1069, 1, m_set_auto_tick_index_621).
param(p_obj_1070, 1, m_equals_622).
throw(m_clone_623, clone_not_supported_exception).
param(p_stream_1071, 1, m_write_object_624).
throw(m_write_object_624, ioexception).
param(p_stream_1072, 1, m_read_object_625).
throw(m_read_object_625, ioexception).
throw(m_read_object_625, class_not_found_exception).

%standard_xyseries_label_generator_1 - org.jfree.chart.labels.StandardXYSeriesLabelGenerator
param(p_format_1402, 1, m_standard_xyseries_label_generator_902).
assign(f_format_pattern_1403, p_format_1402, line(standard_xyseries_label_generator_1, 90)).
param(p_dataset_1404, 1, m_generate_label_903).
param(p_series_1405, 2, m_generate_label_903).
param(p_dataset_1406, 1, m_create_item_array_904).
param(p_series_1407, 2, m_create_item_array_904).
throw(m_clone_905, clone_not_supported_exception).
param(p_obj_1408, 1, m_equals_906).

%item_label_anchor_1 - org.jfree.chart.labels.ItemLabelAnchor
assign(f_center_1335, item_label_anchor_1_expr1, line(item_label_anchor_1, 60)).
assign(f_inside1_1336, item_label_anchor_1_expr2, line(item_label_anchor_1, 64)).
assign(f_inside2_1337, item_label_anchor_1_expr3, line(item_label_anchor_1, 68)).
assign(f_inside3_1338, item_label_anchor_1_expr4, line(item_label_anchor_1, 72)).
assign(f_inside4_1339, item_label_anchor_1_expr5, line(item_label_anchor_1, 76)).
assign(f_inside5_1340, item_label_anchor_1_expr6, line(item_label_anchor_1, 80)).
assign(f_inside6_1341, item_label_anchor_1_expr7, line(item_label_anchor_1, 84)).
assign(f_inside7_1342, item_label_anchor_1_expr8, line(item_label_anchor_1, 88)).
assign(f_inside8_1343, item_label_anchor_1_expr9, line(item_label_anchor_1, 92)).
assign(f_inside9_1344, item_label_anchor_1_expr10, line(item_label_anchor_1, 96)).
assign(f_inside10_1345, item_label_anchor_1_expr11, line(item_label_anchor_1, 100)).
assign(f_inside11_1346, item_label_anchor_1_expr12, line(item_label_anchor_1, 104)).
assign(f_inside12_1347, item_label_anchor_1_expr13, line(item_label_anchor_1, 108)).
assign(f_outside1_1348, item_label_anchor_1_expr14, line(item_label_anchor_1, 112)).
assign(f_outside2_1349, item_label_anchor_1_expr15, line(item_label_anchor_1, 116)).
assign(f_outside3_1350, item_label_anchor_1_expr16, line(item_label_anchor_1, 120)).
assign(f_outside4_1351, item_label_anchor_1_expr17, line(item_label_anchor_1, 124)).
assign(f_outside5_1352, item_label_anchor_1_expr18, line(item_label_anchor_1, 128)).
assign(f_outside6_1353, item_label_anchor_1_expr19, line(item_label_anchor_1, 132)).
assign(f_outside7_1354, item_label_anchor_1_expr20, line(item_label_anchor_1, 136)).
assign(f_outside8_1355, item_label_anchor_1_expr21, line(item_label_anchor_1, 140)).
assign(f_outside9_1356, item_label_anchor_1_expr22, line(item_label_anchor_1, 144)).
assign(f_outside10_1357, item_label_anchor_1_expr23, line(item_label_anchor_1, 148)).
assign(f_outside11_1358, item_label_anchor_1_expr24, line(item_label_anchor_1, 152)).
assign(f_outside12_1359, item_label_anchor_1_expr25, line(item_label_anchor_1, 156)).
param(p_name_1360, 1, m_item_label_anchor_870).
assign(f_name_1361, p_name_1360, line(item_label_anchor_1, 168)).
param(p_o_1362, 1, m_equals_872).
throw(m_read_resolve_873, object_stream_exception).

%block_container_1 - org.jfree.chart.block.BlockContainer
param(p_arrangement_1151, 1, m_block_container_713).
assign(f_arrangement_1152, p_arrangement_1151, line(block_container_1, 97)).
assign(f_blocks_1153, block_container_1_expr7, line(block_container_1, 98)).
method_invoc(block_container_1_expr7, m_array_list_75, line(block_container_1, 98)).
param(p_arrangement_1154, 1, m_set_arrangement_715).
param(p_block_1155, 1, m_add_718).
param(p_block_1156, 1, m_add_719).
param(p_key_1157, 2, m_add_719).
param(p_g_2_1158, 1, m_arrange_721).
param(p_constraint_1159, 2, m_arrange_721).
param(p_g_2_1160, 1, m_draw_722).
param(p_area_1161, 2, m_draw_722).
param(p_g_2_1162, 1, m_draw_723).
param(p_area_1163, 2, m_draw_723).
param(p_params_1164, 3, m_draw_723).
param(p_obj_1165, 1, m_equals_724).
throw(m_clone_725, clone_not_supported_exception).

%number_axis_1 - org.jfree.chart.axis.NumberAxis
assign(f_default_tick_unit_805, number_axis_1_expr1, line(number_axis_1, 153)).
method_invoc(number_axis_1_expr1, m_number_tick_unit_475, line(number_axis_1, 153)).
argument(number_axis_1_literal1, 1, number_axis_1_expr1).
argument(number_axis_1_expr2, 2, number_axis_1_expr1).
param(p_label_806, 1, m_number_axis_38).
method_invoc(number_axis_1_expr3, m_value_axis_390, line(number_axis_1, 201)).
argument(p_label_806, 1, number_axis_1_expr3).
argument(number_axis_1_expr4, 2, number_axis_1_expr3).
method_invoc(number_axis_1_expr4, m_create_standard_tick_units_477, line(number_axis_1, 201)).
ref(t_number_axis_2, number_axis_1_expr4, line(number_axis_1, 201)).
assign(f_range_type_807, q_full_32, line(number_axis_1, 202)).
ref(t_range_type_17, q_full_32, line(number_axis_1, 202)).
assign(f_auto_range_includes_zero_808, f_default_auto_range_includes_zero_809, line(number_axis_1, 203)).
assign(f_auto_range_sticky_zero_810, f_default_auto_range_sticky_zero_811, line(number_axis_1, 204)).
assign(f_tick_unit_812, f_default_tick_unit_805, line(number_axis_1, 205)).
assign(f_number_format_override_813, number_axis_1_literal2, line(number_axis_1, 206)).
assign(f_marker_band_814, number_axis_1_literal3, line(number_axis_1, 207)).
param(p_range_type_815, 1, m_set_range_type_479).
return(f_auto_range_includes_zero_808, m_get_auto_range_includes_zero_480, line(number_axis_1, 243)).
param(p_flag_816, 1, m_set_auto_range_includes_zero_39).
assign(f_auto_range_includes_zero_808, p_flag_816, line(number_axis_1, 261)).
method_invoc(number_axis_1_expr31, m_is_auto_range_414, line(number_axis_1, 262)).
method_invoc(number_axis_1_expr32, m_auto_adjust_range_481, line(number_axis_1, 263)).
method_invoc(number_axis_1_expr33, m_notify_listeners_358, line(number_axis_1, 265)).
argument(number_axis_1_expr34, 1, number_axis_1_expr33).
method_invoc(number_axis_1_expr34, m_axis_change_event_360, line(number_axis_1, 265)).
argument(number_axis_1_expr35, 1, number_axis_1_expr34).
return(f_auto_range_sticky_zero_810, m_get_auto_range_sticky_zero_482, line(number_axis_1, 278)).
param(p_flag_817, 1, m_set_auto_range_sticky_zero_483).
param(p_unit_818, 1, m_set_tick_unit_485).
param(p_unit_819, 1, m_set_tick_unit_486).
param(p_notify_820, 2, m_set_tick_unit_486).
param(p_turn_off_auto_select_821, 3, m_set_tick_unit_486).
param(p_formatter_822, 1, m_set_number_format_override_488).
param(p_band_823, 1, m_set_marker_band_490).
method_invoc(number_axis_1_expr38, m_is_auto_range_414, line(number_axis_1, 416)).
method_invoc(number_axis_1_expr39, m_auto_adjust_range_481, line(number_axis_1, 417)).
assign(v_plot_824, number_axis_1_expr40, line(number_axis_1, 426)).
method_invoc(number_axis_1_expr40, m_get_plot_345, line(number_axis_1, 426)).
return(none, m_auto_adjust_range_481, line(number_axis_1, 428)).
assign(v_vap_825, number_axis_1_expr43, line(number_axis_1, 432)).
assign(number_axis_1_expr43, v_plot_824, line(number_axis_1, 432)).
assign(v_r_826, number_axis_1_expr44, line(number_axis_1, 434)).
method_invoc(number_axis_1_expr44, m_get_data_range_433, line(number_axis_1, 434)).
argument(number_axis_1_expr45, 1, number_axis_1_expr44).
ref(v_vap_825, number_axis_1_expr44, line(number_axis_1, 434)).
assign(v_r_826, number_axis_1_expr48, line(number_axis_1, 436)).
method_invoc(number_axis_1_expr48, m_get_default_auto_range_492, line(number_axis_1, 436)).
assign(v_upper_827, number_axis_1_expr49, line(number_axis_1, 439)).
method_invoc(number_axis_1_expr49, m_get_upper_bound_493, line(number_axis_1, 439)).
ref(v_r_826, number_axis_1_expr49, line(number_axis_1, 439)).
assign(v_lower_828, number_axis_1_expr50, line(number_axis_1, 440)).
method_invoc(number_axis_1_expr50, m_get_lower_bound_494, line(number_axis_1, 440)).
ref(v_r_826, number_axis_1_expr50, line(number_axis_1, 440)).
ref(t_range_type_17, q_positive_33, line(number_axis_1, 441)).
ref(t_range_type_17, q_negative_34, line(number_axis_1, 445)).
method_invoc(number_axis_1_expr57, m_get_auto_range_includes_zero_480, line(number_axis_1, 450)).
assign(v_lower_828, number_axis_1_expr59, line(number_axis_1, 451)).
method_invoc(number_axis_1_expr59, m_min_495, line(number_axis_1, 451)).
argument(v_lower_828, 1, number_axis_1_expr59).
argument(number_axis_1_literal6, 2, number_axis_1_expr59).
ref(t_math_18, number_axis_1_expr59, line(number_axis_1, 451)).
assign(v_upper_827, number_axis_1_expr61, line(number_axis_1, 452)).
method_invoc(number_axis_1_expr61, m_max_496, line(number_axis_1, 452)).
argument(v_upper_827, 1, number_axis_1_expr61).
argument(number_axis_1_literal7, 2, number_axis_1_expr61).
ref(t_math_18, number_axis_1_expr61, line(number_axis_1, 452)).
assign(v_range_829, number_axis_1_expr62, line(number_axis_1, 454)).
assign(v_fixed_auto_range_830, number_axis_1_expr63, line(number_axis_1, 457)).
method_invoc(number_axis_1_expr63, m_get_fixed_auto_range_497, line(number_axis_1, 457)).
assign(v_min_range_831, number_axis_1_expr65, line(number_axis_1, 463)).
method_invoc(number_axis_1_expr65, m_get_auto_range_minimum_size_498, line(number_axis_1, 463)).
method_invoc(number_axis_1_expr67, m_get_auto_range_sticky_zero_482, line(number_axis_1, 487)).
assign(v_upper_827, number_axis_1_expr70, line(number_axis_1, 492)).
method_invoc(number_axis_1_expr72, m_get_upper_margin_499, line(number_axis_1, 492)).
assign(v_lower_828, number_axis_1_expr75, line(number_axis_1, 495)).
method_invoc(number_axis_1_expr75, m_max_496, line(number_axis_1, 495)).
argument(number_axis_1_literal11, 1, number_axis_1_expr75).
argument(number_axis_1_expr76, 2, number_axis_1_expr75).
ref(t_math_18, number_axis_1_expr75, line(number_axis_1, 495)).
method_invoc(number_axis_1_expr78, m_get_lower_margin_500, line(number_axis_1, 495)).
method_invoc(number_axis_1_expr79, m_set_range_404, line(number_axis_1, 507)).
argument(number_axis_1_expr80, 1, number_axis_1_expr79).
argument(number_axis_1_literal12, 2, number_axis_1_expr79).
argument(number_axis_1_literal13, 3, number_axis_1_expr79).
method_invoc(number_axis_1_expr80, m_range_501, line(number_axis_1, 507)).
argument(v_lower_828, 1, number_axis_1_expr80).
argument(v_upper_827, 2, number_axis_1_expr80).
param(p_value_832, 1, m_value_to_java2_d_502).
param(p_area_833, 2, m_value_to_java2_d_502).
param(p_edge_834, 3, m_value_to_java2_d_502).
param(p_java_2dvalue_835, 1, m_java_2dto_value_503).
param(p_area_836, 2, m_java_2dto_value_503).
param(p_edge_837, 3, m_java_2dto_value_503).
param(p_g_2_838, 1, m_draw_507).
param(p_cursor_839, 2, m_draw_507).
param(p_plot_area_840, 3, m_draw_507).
param(p_data_area_841, 4, m_draw_507).
param(p_edge_842, 5, m_draw_507).
param(p_plot_state_843, 6, m_draw_507).
assign(v_units_844, number_axis_1_expr81, line(number_axis_1, 703)).
method_invoc(number_axis_1_expr81, m_tick_units_427, line(number_axis_1, 703)).
assign(v_df_0_845, number_axis_1_expr82, line(number_axis_1, 704)).
method_invoc(number_axis_1_expr82, m_decimal_format_508, line(number_axis_1, 704)).
argument(number_axis_1_literal14, 1, number_axis_1_expr82).
assign(v_df_1_846, number_axis_1_expr83, line(number_axis_1, 705)).
method_invoc(number_axis_1_expr83, m_decimal_format_508, line(number_axis_1, 705)).
argument(number_axis_1_literal15, 1, number_axis_1_expr83).
assign(v_df_2_847, number_axis_1_expr84, line(number_axis_1, 706)).
method_invoc(number_axis_1_expr84, m_decimal_format_508, line(number_axis_1, 706)).
argument(number_axis_1_literal16, 1, number_axis_1_expr84).
assign(v_df_3_848, number_axis_1_expr85, line(number_axis_1, 707)).
method_invoc(number_axis_1_expr85, m_decimal_format_508, line(number_axis_1, 707)).
argument(number_axis_1_literal17, 1, number_axis_1_expr85).
assign(v_df_4_849, number_axis_1_expr86, line(number_axis_1, 708)).
method_invoc(number_axis_1_expr86, m_decimal_format_508, line(number_axis_1, 708)).
argument(number_axis_1_literal18, 1, number_axis_1_expr86).
assign(v_df_5_850, number_axis_1_expr87, line(number_axis_1, 709)).
method_invoc(number_axis_1_expr87, m_decimal_format_508, line(number_axis_1, 709)).
argument(number_axis_1_literal19, 1, number_axis_1_expr87).
assign(v_df_6_851, number_axis_1_expr88, line(number_axis_1, 710)).
method_invoc(number_axis_1_expr88, m_decimal_format_508, line(number_axis_1, 710)).
argument(number_axis_1_literal20, 1, number_axis_1_expr88).
assign(v_df_7_852, number_axis_1_expr89, line(number_axis_1, 711)).
method_invoc(number_axis_1_expr89, m_decimal_format_508, line(number_axis_1, 711)).
argument(number_axis_1_literal21, 1, number_axis_1_expr89).
assign(v_df_8_853, number_axis_1_expr90, line(number_axis_1, 712)).
method_invoc(number_axis_1_expr90, m_decimal_format_508, line(number_axis_1, 712)).
argument(number_axis_1_literal22, 1, number_axis_1_expr90).
assign(v_df_9_854, number_axis_1_expr91, line(number_axis_1, 713)).
method_invoc(number_axis_1_expr91, m_decimal_format_508, line(number_axis_1, 713)).
argument(number_axis_1_literal23, 1, number_axis_1_expr91).
assign(v_df_10_855, number_axis_1_expr92, line(number_axis_1, 714)).
method_invoc(number_axis_1_expr92, m_decimal_format_508, line(number_axis_1, 714)).
argument(number_axis_1_literal24, 1, number_axis_1_expr92).
method_invoc(number_axis_1_expr93, m_add_430, line(number_axis_1, 718)).
argument(number_axis_1_expr94, 1, number_axis_1_expr93).
ref(v_units_844, number_axis_1_expr93, line(number_axis_1, 718)).
method_invoc(number_axis_1_expr94, m_number_tick_unit_509, line(number_axis_1, 718)).
argument(number_axis_1_literal25, 1, number_axis_1_expr94).
argument(v_df_1_846, 2, number_axis_1_expr94).
argument(number_axis_1_literal26, 3, number_axis_1_expr94).
method_invoc(number_axis_1_expr95, m_add_430, line(number_axis_1, 719)).
argument(number_axis_1_expr96, 1, number_axis_1_expr95).
ref(v_units_844, number_axis_1_expr95, line(number_axis_1, 719)).
method_invoc(number_axis_1_expr96, m_number_tick_unit_509, line(number_axis_1, 719)).
argument(number_axis_1_literal27, 1, number_axis_1_expr96).
argument(v_df_2_847, 2, number_axis_1_expr96).
argument(number_axis_1_literal28, 3, number_axis_1_expr96).
method_invoc(number_axis_1_expr97, m_add_430, line(number_axis_1, 720)).
argument(number_axis_1_expr98, 1, number_axis_1_expr97).
ref(v_units_844, number_axis_1_expr97, line(number_axis_1, 720)).
method_invoc(number_axis_1_expr98, m_number_tick_unit_509, line(number_axis_1, 720)).
argument(number_axis_1_literal29, 1, number_axis_1_expr98).
argument(v_df_3_848, 2, number_axis_1_expr98).
argument(number_axis_1_literal30, 3, number_axis_1_expr98).
method_invoc(number_axis_1_expr99, m_add_430, line(number_axis_1, 721)).
argument(number_axis_1_expr100, 1, number_axis_1_expr99).
ref(v_units_844, number_axis_1_expr99, line(number_axis_1, 721)).
method_invoc(number_axis_1_expr100, m_number_tick_unit_509, line(number_axis_1, 721)).
argument(number_axis_1_literal31, 1, number_axis_1_expr100).
argument(v_df_4_849, 2, number_axis_1_expr100).
argument(number_axis_1_literal32, 3, number_axis_1_expr100).
method_invoc(number_axis_1_expr101, m_add_430, line(number_axis_1, 722)).
argument(number_axis_1_expr102, 1, number_axis_1_expr101).
ref(v_units_844, number_axis_1_expr101, line(number_axis_1, 722)).
method_invoc(number_axis_1_expr102, m_number_tick_unit_509, line(number_axis_1, 722)).
argument(number_axis_1_literal33, 1, number_axis_1_expr102).
argument(v_df_5_850, 2, number_axis_1_expr102).
argument(number_axis_1_literal34, 3, number_axis_1_expr102).
method_invoc(number_axis_1_expr103, m_add_430, line(number_axis_1, 723)).
argument(number_axis_1_expr104, 1, number_axis_1_expr103).
ref(v_units_844, number_axis_1_expr103, line(number_axis_1, 723)).
method_invoc(number_axis_1_expr104, m_number_tick_unit_509, line(number_axis_1, 723)).
argument(number_axis_1_literal35, 1, number_axis_1_expr104).
argument(v_df_6_851, 2, number_axis_1_expr104).
argument(number_axis_1_literal36, 3, number_axis_1_expr104).
method_invoc(number_axis_1_expr105, m_add_430, line(number_axis_1, 724)).
argument(number_axis_1_expr106, 1, number_axis_1_expr105).
ref(v_units_844, number_axis_1_expr105, line(number_axis_1, 724)).
method_invoc(number_axis_1_expr106, m_number_tick_unit_509, line(number_axis_1, 724)).
argument(number_axis_1_literal37, 1, number_axis_1_expr106).
argument(v_df_7_852, 2, number_axis_1_expr106).
argument(number_axis_1_literal38, 3, number_axis_1_expr106).
method_invoc(number_axis_1_expr107, m_add_430, line(number_axis_1, 725)).
argument(number_axis_1_expr108, 1, number_axis_1_expr107).
ref(v_units_844, number_axis_1_expr107, line(number_axis_1, 725)).
method_invoc(number_axis_1_expr108, m_number_tick_unit_509, line(number_axis_1, 725)).
argument(number_axis_1_literal39, 1, number_axis_1_expr108).
argument(v_df_8_853, 2, number_axis_1_expr108).
argument(number_axis_1_literal40, 3, number_axis_1_expr108).
method_invoc(number_axis_1_expr109, m_add_430, line(number_axis_1, 726)).
argument(number_axis_1_expr110, 1, number_axis_1_expr109).
ref(v_units_844, number_axis_1_expr109, line(number_axis_1, 726)).
method_invoc(number_axis_1_expr110, m_number_tick_unit_509, line(number_axis_1, 726)).
argument(number_axis_1_literal41, 1, number_axis_1_expr110).
argument(v_df_8_853, 2, number_axis_1_expr110).
argument(number_axis_1_literal42, 3, number_axis_1_expr110).
method_invoc(number_axis_1_expr111, m_add_430, line(number_axis_1, 727)).
argument(number_axis_1_expr112, 1, number_axis_1_expr111).
ref(v_units_844, number_axis_1_expr111, line(number_axis_1, 727)).
method_invoc(number_axis_1_expr112, m_number_tick_unit_509, line(number_axis_1, 727)).
argument(number_axis_1_literal43, 1, number_axis_1_expr112).
argument(v_df_8_853, 2, number_axis_1_expr112).
argument(number_axis_1_literal44, 3, number_axis_1_expr112).
method_invoc(number_axis_1_expr113, m_add_430, line(number_axis_1, 728)).
argument(number_axis_1_expr114, 1, number_axis_1_expr113).
ref(v_units_844, number_axis_1_expr113, line(number_axis_1, 728)).
method_invoc(number_axis_1_expr114, m_number_tick_unit_509, line(number_axis_1, 728)).
argument(number_axis_1_literal45, 1, number_axis_1_expr114).
argument(v_df_8_853, 2, number_axis_1_expr114).
argument(number_axis_1_literal46, 3, number_axis_1_expr114).
method_invoc(number_axis_1_expr115, m_add_430, line(number_axis_1, 729)).
argument(number_axis_1_expr116, 1, number_axis_1_expr115).
ref(v_units_844, number_axis_1_expr115, line(number_axis_1, 729)).
method_invoc(number_axis_1_expr116, m_number_tick_unit_509, line(number_axis_1, 729)).
argument(number_axis_1_literal47, 1, number_axis_1_expr116).
argument(v_df_8_853, 2, number_axis_1_expr116).
argument(number_axis_1_literal48, 3, number_axis_1_expr116).
method_invoc(number_axis_1_expr117, m_add_430, line(number_axis_1, 730)).
argument(number_axis_1_expr118, 1, number_axis_1_expr117).
ref(v_units_844, number_axis_1_expr117, line(number_axis_1, 730)).
method_invoc(number_axis_1_expr118, m_number_tick_unit_509, line(number_axis_1, 730)).
argument(number_axis_1_literal49, 1, number_axis_1_expr118).
argument(v_df_8_853, 2, number_axis_1_expr118).
argument(number_axis_1_literal50, 3, number_axis_1_expr118).
method_invoc(number_axis_1_expr119, m_add_430, line(number_axis_1, 731)).
argument(number_axis_1_expr120, 1, number_axis_1_expr119).
ref(v_units_844, number_axis_1_expr119, line(number_axis_1, 731)).
method_invoc(number_axis_1_expr120, m_number_tick_unit_509, line(number_axis_1, 731)).
argument(number_axis_1_literal51, 1, number_axis_1_expr120).
argument(v_df_9_854, 2, number_axis_1_expr120).
argument(number_axis_1_literal52, 3, number_axis_1_expr120).
method_invoc(number_axis_1_expr121, m_add_430, line(number_axis_1, 732)).
argument(number_axis_1_expr122, 1, number_axis_1_expr121).
ref(v_units_844, number_axis_1_expr121, line(number_axis_1, 732)).
method_invoc(number_axis_1_expr122, m_number_tick_unit_509, line(number_axis_1, 732)).
argument(number_axis_1_literal53, 1, number_axis_1_expr122).
argument(v_df_9_854, 2, number_axis_1_expr122).
argument(number_axis_1_literal54, 3, number_axis_1_expr122).
method_invoc(number_axis_1_expr123, m_add_430, line(number_axis_1, 733)).
argument(number_axis_1_expr124, 1, number_axis_1_expr123).
ref(v_units_844, number_axis_1_expr123, line(number_axis_1, 733)).
method_invoc(number_axis_1_expr124, m_number_tick_unit_509, line(number_axis_1, 733)).
argument(number_axis_1_literal55, 1, number_axis_1_expr124).
argument(v_df_9_854, 2, number_axis_1_expr124).
argument(number_axis_1_literal56, 3, number_axis_1_expr124).
method_invoc(number_axis_1_expr125, m_add_430, line(number_axis_1, 734)).
argument(number_axis_1_expr126, 1, number_axis_1_expr125).
ref(v_units_844, number_axis_1_expr125, line(number_axis_1, 734)).
method_invoc(number_axis_1_expr126, m_number_tick_unit_509, line(number_axis_1, 734)).
argument(number_axis_1_literal57, 1, number_axis_1_expr126).
argument(v_df_10_855, 2, number_axis_1_expr126).
argument(number_axis_1_literal58, 3, number_axis_1_expr126).
method_invoc(number_axis_1_expr127, m_add_430, line(number_axis_1, 735)).
argument(number_axis_1_expr128, 1, number_axis_1_expr127).
ref(v_units_844, number_axis_1_expr127, line(number_axis_1, 735)).
method_invoc(number_axis_1_expr128, m_number_tick_unit_509, line(number_axis_1, 735)).
argument(number_axis_1_literal59, 1, number_axis_1_expr128).
argument(v_df_10_855, 2, number_axis_1_expr128).
argument(number_axis_1_literal60, 3, number_axis_1_expr128).
method_invoc(number_axis_1_expr129, m_add_430, line(number_axis_1, 736)).
argument(number_axis_1_expr130, 1, number_axis_1_expr129).
ref(v_units_844, number_axis_1_expr129, line(number_axis_1, 736)).
method_invoc(number_axis_1_expr130, m_number_tick_unit_509, line(number_axis_1, 736)).
argument(number_axis_1_literal61, 1, number_axis_1_expr130).
argument(v_df_10_855, 2, number_axis_1_expr130).
argument(number_axis_1_literal62, 3, number_axis_1_expr130).
method_invoc(number_axis_1_expr131, m_add_430, line(number_axis_1, 738)).
argument(number_axis_1_expr132, 1, number_axis_1_expr131).
ref(v_units_844, number_axis_1_expr131, line(number_axis_1, 738)).
method_invoc(number_axis_1_expr132, m_number_tick_unit_509, line(number_axis_1, 738)).
argument(number_axis_1_literal63, 1, number_axis_1_expr132).
argument(v_df_0_845, 2, number_axis_1_expr132).
argument(number_axis_1_literal64, 3, number_axis_1_expr132).
method_invoc(number_axis_1_expr133, m_add_430, line(number_axis_1, 739)).
argument(number_axis_1_expr134, 1, number_axis_1_expr133).
ref(v_units_844, number_axis_1_expr133, line(number_axis_1, 739)).
method_invoc(number_axis_1_expr134, m_number_tick_unit_509, line(number_axis_1, 739)).
argument(number_axis_1_literal65, 1, number_axis_1_expr134).
argument(v_df_1_846, 2, number_axis_1_expr134).
argument(number_axis_1_literal66, 3, number_axis_1_expr134).
method_invoc(number_axis_1_expr135, m_add_430, line(number_axis_1, 740)).
argument(number_axis_1_expr136, 1, number_axis_1_expr135).
ref(v_units_844, number_axis_1_expr135, line(number_axis_1, 740)).
method_invoc(number_axis_1_expr136, m_number_tick_unit_509, line(number_axis_1, 740)).
argument(number_axis_1_literal67, 1, number_axis_1_expr136).
argument(v_df_2_847, 2, number_axis_1_expr136).
argument(number_axis_1_literal68, 3, number_axis_1_expr136).
method_invoc(number_axis_1_expr137, m_add_430, line(number_axis_1, 741)).
argument(number_axis_1_expr138, 1, number_axis_1_expr137).
ref(v_units_844, number_axis_1_expr137, line(number_axis_1, 741)).
method_invoc(number_axis_1_expr138, m_number_tick_unit_509, line(number_axis_1, 741)).
argument(number_axis_1_literal69, 1, number_axis_1_expr138).
argument(v_df_3_848, 2, number_axis_1_expr138).
argument(number_axis_1_literal70, 3, number_axis_1_expr138).
method_invoc(number_axis_1_expr139, m_add_430, line(number_axis_1, 742)).
argument(number_axis_1_expr140, 1, number_axis_1_expr139).
ref(v_units_844, number_axis_1_expr139, line(number_axis_1, 742)).
method_invoc(number_axis_1_expr140, m_number_tick_unit_509, line(number_axis_1, 742)).
argument(number_axis_1_literal71, 1, number_axis_1_expr140).
argument(v_df_4_849, 2, number_axis_1_expr140).
argument(number_axis_1_literal72, 3, number_axis_1_expr140).
method_invoc(number_axis_1_expr141, m_add_430, line(number_axis_1, 743)).
argument(number_axis_1_expr142, 1, number_axis_1_expr141).
ref(v_units_844, number_axis_1_expr141, line(number_axis_1, 743)).
method_invoc(number_axis_1_expr142, m_number_tick_unit_509, line(number_axis_1, 743)).
argument(number_axis_1_literal73, 1, number_axis_1_expr142).
argument(v_df_5_850, 2, number_axis_1_expr142).
argument(number_axis_1_literal74, 3, number_axis_1_expr142).
method_invoc(number_axis_1_expr143, m_add_430, line(number_axis_1, 744)).
argument(number_axis_1_expr144, 1, number_axis_1_expr143).
ref(v_units_844, number_axis_1_expr143, line(number_axis_1, 744)).
method_invoc(number_axis_1_expr144, m_number_tick_unit_509, line(number_axis_1, 744)).
argument(number_axis_1_literal75, 1, number_axis_1_expr144).
argument(v_df_6_851, 2, number_axis_1_expr144).
argument(number_axis_1_literal76, 3, number_axis_1_expr144).
method_invoc(number_axis_1_expr145, m_add_430, line(number_axis_1, 745)).
argument(number_axis_1_expr146, 1, number_axis_1_expr145).
ref(v_units_844, number_axis_1_expr145, line(number_axis_1, 745)).
method_invoc(number_axis_1_expr146, m_number_tick_unit_509, line(number_axis_1, 745)).
argument(number_axis_1_literal77, 1, number_axis_1_expr146).
argument(v_df_7_852, 2, number_axis_1_expr146).
argument(number_axis_1_literal78, 3, number_axis_1_expr146).
method_invoc(number_axis_1_expr147, m_add_430, line(number_axis_1, 746)).
argument(number_axis_1_expr148, 1, number_axis_1_expr147).
ref(v_units_844, number_axis_1_expr147, line(number_axis_1, 746)).
method_invoc(number_axis_1_expr148, m_number_tick_unit_509, line(number_axis_1, 746)).
argument(number_axis_1_literal79, 1, number_axis_1_expr148).
argument(v_df_8_853, 2, number_axis_1_expr148).
argument(number_axis_1_literal80, 3, number_axis_1_expr148).
method_invoc(number_axis_1_expr149, m_add_430, line(number_axis_1, 747)).
argument(number_axis_1_expr150, 1, number_axis_1_expr149).
ref(v_units_844, number_axis_1_expr149, line(number_axis_1, 747)).
method_invoc(number_axis_1_expr150, m_number_tick_unit_509, line(number_axis_1, 747)).
argument(number_axis_1_literal81, 1, number_axis_1_expr150).
argument(v_df_8_853, 2, number_axis_1_expr150).
argument(number_axis_1_literal82, 3, number_axis_1_expr150).
method_invoc(number_axis_1_expr151, m_add_430, line(number_axis_1, 748)).
argument(number_axis_1_expr152, 1, number_axis_1_expr151).
ref(v_units_844, number_axis_1_expr151, line(number_axis_1, 748)).
method_invoc(number_axis_1_expr152, m_number_tick_unit_509, line(number_axis_1, 748)).
argument(number_axis_1_literal83, 1, number_axis_1_expr152).
argument(v_df_8_853, 2, number_axis_1_expr152).
argument(number_axis_1_literal84, 3, number_axis_1_expr152).
method_invoc(number_axis_1_expr153, m_add_430, line(number_axis_1, 749)).
argument(number_axis_1_expr154, 1, number_axis_1_expr153).
ref(v_units_844, number_axis_1_expr153, line(number_axis_1, 749)).
method_invoc(number_axis_1_expr154, m_number_tick_unit_509, line(number_axis_1, 749)).
argument(number_axis_1_literal85, 1, number_axis_1_expr154).
argument(v_df_8_853, 2, number_axis_1_expr154).
argument(number_axis_1_literal86, 3, number_axis_1_expr154).
method_invoc(number_axis_1_expr155, m_add_430, line(number_axis_1, 750)).
argument(number_axis_1_expr156, 1, number_axis_1_expr155).
ref(v_units_844, number_axis_1_expr155, line(number_axis_1, 750)).
method_invoc(number_axis_1_expr156, m_number_tick_unit_509, line(number_axis_1, 750)).
argument(number_axis_1_literal87, 1, number_axis_1_expr156).
argument(v_df_8_853, 2, number_axis_1_expr156).
argument(number_axis_1_literal88, 3, number_axis_1_expr156).
method_invoc(number_axis_1_expr157, m_add_430, line(number_axis_1, 751)).
argument(number_axis_1_expr158, 1, number_axis_1_expr157).
ref(v_units_844, number_axis_1_expr157, line(number_axis_1, 751)).
method_invoc(number_axis_1_expr158, m_number_tick_unit_509, line(number_axis_1, 751)).
argument(number_axis_1_literal89, 1, number_axis_1_expr158).
argument(v_df_9_854, 2, number_axis_1_expr158).
argument(number_axis_1_literal90, 3, number_axis_1_expr158).
method_invoc(number_axis_1_expr159, m_add_430, line(number_axis_1, 752)).
argument(number_axis_1_expr160, 1, number_axis_1_expr159).
ref(v_units_844, number_axis_1_expr159, line(number_axis_1, 752)).
method_invoc(number_axis_1_expr160, m_number_tick_unit_509, line(number_axis_1, 752)).
argument(number_axis_1_literal91, 1, number_axis_1_expr160).
argument(v_df_9_854, 2, number_axis_1_expr160).
argument(number_axis_1_literal92, 3, number_axis_1_expr160).
method_invoc(number_axis_1_expr161, m_add_430, line(number_axis_1, 753)).
argument(number_axis_1_expr162, 1, number_axis_1_expr161).
ref(v_units_844, number_axis_1_expr161, line(number_axis_1, 753)).
method_invoc(number_axis_1_expr162, m_number_tick_unit_509, line(number_axis_1, 753)).
argument(number_axis_1_literal93, 1, number_axis_1_expr162).
argument(v_df_9_854, 2, number_axis_1_expr162).
argument(number_axis_1_literal94, 3, number_axis_1_expr162).
method_invoc(number_axis_1_expr163, m_add_430, line(number_axis_1, 754)).
argument(number_axis_1_expr164, 1, number_axis_1_expr163).
ref(v_units_844, number_axis_1_expr163, line(number_axis_1, 754)).
method_invoc(number_axis_1_expr164, m_number_tick_unit_509, line(number_axis_1, 754)).
argument(number_axis_1_literal95, 1, number_axis_1_expr164).
argument(v_df_10_855, 2, number_axis_1_expr164).
argument(number_axis_1_literal96, 3, number_axis_1_expr164).
method_invoc(number_axis_1_expr165, m_add_430, line(number_axis_1, 755)).
argument(number_axis_1_expr166, 1, number_axis_1_expr165).
ref(v_units_844, number_axis_1_expr165, line(number_axis_1, 755)).
method_invoc(number_axis_1_expr166, m_number_tick_unit_509, line(number_axis_1, 755)).
argument(number_axis_1_literal97, 1, number_axis_1_expr166).
argument(v_df_10_855, 2, number_axis_1_expr166).
argument(number_axis_1_literal98, 3, number_axis_1_expr166).
method_invoc(number_axis_1_expr167, m_add_430, line(number_axis_1, 756)).
argument(number_axis_1_expr168, 1, number_axis_1_expr167).
ref(v_units_844, number_axis_1_expr167, line(number_axis_1, 756)).
method_invoc(number_axis_1_expr168, m_number_tick_unit_509, line(number_axis_1, 756)).
argument(number_axis_1_literal99, 1, number_axis_1_expr168).
argument(v_df_10_855, 2, number_axis_1_expr168).
argument(number_axis_1_literal100, 3, number_axis_1_expr168).
method_invoc(number_axis_1_expr169, m_add_430, line(number_axis_1, 758)).
argument(number_axis_1_expr170, 1, number_axis_1_expr169).
ref(v_units_844, number_axis_1_expr169, line(number_axis_1, 758)).
method_invoc(number_axis_1_expr170, m_number_tick_unit_509, line(number_axis_1, 758)).
argument(number_axis_1_literal101, 1, number_axis_1_expr170).
argument(v_df_1_846, 2, number_axis_1_expr170).
argument(number_axis_1_literal102, 3, number_axis_1_expr170).
method_invoc(number_axis_1_expr171, m_add_430, line(number_axis_1, 759)).
argument(number_axis_1_expr172, 1, number_axis_1_expr171).
ref(v_units_844, number_axis_1_expr171, line(number_axis_1, 759)).
method_invoc(number_axis_1_expr172, m_number_tick_unit_509, line(number_axis_1, 759)).
argument(number_axis_1_literal103, 1, number_axis_1_expr172).
argument(v_df_2_847, 2, number_axis_1_expr172).
argument(number_axis_1_literal104, 3, number_axis_1_expr172).
method_invoc(number_axis_1_expr173, m_add_430, line(number_axis_1, 760)).
argument(number_axis_1_expr174, 1, number_axis_1_expr173).
ref(v_units_844, number_axis_1_expr173, line(number_axis_1, 760)).
method_invoc(number_axis_1_expr174, m_number_tick_unit_509, line(number_axis_1, 760)).
argument(number_axis_1_literal105, 1, number_axis_1_expr174).
argument(v_df_3_848, 2, number_axis_1_expr174).
argument(number_axis_1_literal106, 3, number_axis_1_expr174).
method_invoc(number_axis_1_expr175, m_add_430, line(number_axis_1, 761)).
argument(number_axis_1_expr176, 1, number_axis_1_expr175).
ref(v_units_844, number_axis_1_expr175, line(number_axis_1, 761)).
method_invoc(number_axis_1_expr176, m_number_tick_unit_509, line(number_axis_1, 761)).
argument(number_axis_1_literal107, 1, number_axis_1_expr176).
argument(v_df_4_849, 2, number_axis_1_expr176).
argument(number_axis_1_literal108, 3, number_axis_1_expr176).
method_invoc(number_axis_1_expr177, m_add_430, line(number_axis_1, 762)).
argument(number_axis_1_expr178, 1, number_axis_1_expr177).
ref(v_units_844, number_axis_1_expr177, line(number_axis_1, 762)).
method_invoc(number_axis_1_expr178, m_number_tick_unit_509, line(number_axis_1, 762)).
argument(number_axis_1_literal109, 1, number_axis_1_expr178).
argument(v_df_5_850, 2, number_axis_1_expr178).
argument(number_axis_1_literal110, 3, number_axis_1_expr178).
method_invoc(number_axis_1_expr179, m_add_430, line(number_axis_1, 763)).
argument(number_axis_1_expr180, 1, number_axis_1_expr179).
ref(v_units_844, number_axis_1_expr179, line(number_axis_1, 763)).
method_invoc(number_axis_1_expr180, m_number_tick_unit_509, line(number_axis_1, 763)).
argument(number_axis_1_literal111, 1, number_axis_1_expr180).
argument(v_df_6_851, 2, number_axis_1_expr180).
argument(number_axis_1_literal112, 3, number_axis_1_expr180).
method_invoc(number_axis_1_expr181, m_add_430, line(number_axis_1, 764)).
argument(number_axis_1_expr182, 1, number_axis_1_expr181).
ref(v_units_844, number_axis_1_expr181, line(number_axis_1, 764)).
method_invoc(number_axis_1_expr182, m_number_tick_unit_509, line(number_axis_1, 764)).
argument(number_axis_1_literal113, 1, number_axis_1_expr182).
argument(v_df_7_852, 2, number_axis_1_expr182).
argument(number_axis_1_literal114, 3, number_axis_1_expr182).
method_invoc(number_axis_1_expr183, m_add_430, line(number_axis_1, 765)).
argument(number_axis_1_expr184, 1, number_axis_1_expr183).
ref(v_units_844, number_axis_1_expr183, line(number_axis_1, 765)).
method_invoc(number_axis_1_expr184, m_number_tick_unit_509, line(number_axis_1, 765)).
argument(number_axis_1_literal115, 1, number_axis_1_expr184).
argument(v_df_8_853, 2, number_axis_1_expr184).
argument(number_axis_1_literal116, 3, number_axis_1_expr184).
method_invoc(number_axis_1_expr185, m_add_430, line(number_axis_1, 766)).
argument(number_axis_1_expr186, 1, number_axis_1_expr185).
ref(v_units_844, number_axis_1_expr185, line(number_axis_1, 766)).
method_invoc(number_axis_1_expr186, m_number_tick_unit_509, line(number_axis_1, 766)).
argument(number_axis_1_literal117, 1, number_axis_1_expr186).
argument(v_df_8_853, 2, number_axis_1_expr186).
argument(number_axis_1_literal118, 3, number_axis_1_expr186).
method_invoc(number_axis_1_expr187, m_add_430, line(number_axis_1, 767)).
argument(number_axis_1_expr188, 1, number_axis_1_expr187).
ref(v_units_844, number_axis_1_expr187, line(number_axis_1, 767)).
method_invoc(number_axis_1_expr188, m_number_tick_unit_509, line(number_axis_1, 767)).
argument(number_axis_1_literal119, 1, number_axis_1_expr188).
argument(v_df_8_853, 2, number_axis_1_expr188).
argument(number_axis_1_literal120, 3, number_axis_1_expr188).
method_invoc(number_axis_1_expr189, m_add_430, line(number_axis_1, 768)).
argument(number_axis_1_expr190, 1, number_axis_1_expr189).
ref(v_units_844, number_axis_1_expr189, line(number_axis_1, 768)).
method_invoc(number_axis_1_expr190, m_number_tick_unit_509, line(number_axis_1, 768)).
argument(number_axis_1_literal121, 1, number_axis_1_expr190).
argument(v_df_8_853, 2, number_axis_1_expr190).
argument(number_axis_1_literal122, 3, number_axis_1_expr190).
method_invoc(number_axis_1_expr191, m_add_430, line(number_axis_1, 769)).
argument(number_axis_1_expr192, 1, number_axis_1_expr191).
ref(v_units_844, number_axis_1_expr191, line(number_axis_1, 769)).
method_invoc(number_axis_1_expr192, m_number_tick_unit_509, line(number_axis_1, 769)).
argument(number_axis_1_literal123, 1, number_axis_1_expr192).
argument(v_df_8_853, 2, number_axis_1_expr192).
argument(number_axis_1_literal124, 3, number_axis_1_expr192).
method_invoc(number_axis_1_expr193, m_add_430, line(number_axis_1, 770)).
argument(number_axis_1_expr194, 1, number_axis_1_expr193).
ref(v_units_844, number_axis_1_expr193, line(number_axis_1, 770)).
method_invoc(number_axis_1_expr194, m_number_tick_unit_509, line(number_axis_1, 770)).
argument(number_axis_1_literal125, 1, number_axis_1_expr194).
argument(v_df_8_853, 2, number_axis_1_expr194).
argument(number_axis_1_literal126, 3, number_axis_1_expr194).
method_invoc(number_axis_1_expr195, m_add_430, line(number_axis_1, 771)).
argument(number_axis_1_expr196, 1, number_axis_1_expr195).
ref(v_units_844, number_axis_1_expr195, line(number_axis_1, 771)).
method_invoc(number_axis_1_expr196, m_number_tick_unit_509, line(number_axis_1, 771)).
argument(number_axis_1_literal127, 1, number_axis_1_expr196).
argument(v_df_9_854, 2, number_axis_1_expr196).
argument(number_axis_1_literal128, 3, number_axis_1_expr196).
method_invoc(number_axis_1_expr197, m_add_430, line(number_axis_1, 772)).
argument(number_axis_1_expr198, 1, number_axis_1_expr197).
ref(v_units_844, number_axis_1_expr197, line(number_axis_1, 772)).
method_invoc(number_axis_1_expr198, m_number_tick_unit_509, line(number_axis_1, 772)).
argument(number_axis_1_literal129, 1, number_axis_1_expr198).
argument(v_df_9_854, 2, number_axis_1_expr198).
argument(number_axis_1_literal130, 3, number_axis_1_expr198).
method_invoc(number_axis_1_expr199, m_add_430, line(number_axis_1, 773)).
argument(number_axis_1_expr200, 1, number_axis_1_expr199).
ref(v_units_844, number_axis_1_expr199, line(number_axis_1, 773)).
method_invoc(number_axis_1_expr200, m_number_tick_unit_509, line(number_axis_1, 773)).
argument(number_axis_1_literal131, 1, number_axis_1_expr200).
argument(v_df_9_854, 2, number_axis_1_expr200).
argument(number_axis_1_literal132, 3, number_axis_1_expr200).
method_invoc(number_axis_1_expr201, m_add_430, line(number_axis_1, 774)).
argument(number_axis_1_expr202, 1, number_axis_1_expr201).
ref(v_units_844, number_axis_1_expr201, line(number_axis_1, 774)).
method_invoc(number_axis_1_expr202, m_number_tick_unit_509, line(number_axis_1, 774)).
argument(number_axis_1_literal133, 1, number_axis_1_expr202).
argument(v_df_10_855, 2, number_axis_1_expr202).
argument(number_axis_1_literal134, 3, number_axis_1_expr202).
method_invoc(number_axis_1_expr203, m_add_430, line(number_axis_1, 775)).
argument(number_axis_1_expr204, 1, number_axis_1_expr203).
ref(v_units_844, number_axis_1_expr203, line(number_axis_1, 775)).
method_invoc(number_axis_1_expr204, m_number_tick_unit_509, line(number_axis_1, 775)).
argument(number_axis_1_literal135, 1, number_axis_1_expr204).
argument(v_df_10_855, 2, number_axis_1_expr204).
argument(number_axis_1_literal136, 3, number_axis_1_expr204).
method_invoc(number_axis_1_expr205, m_add_430, line(number_axis_1, 776)).
argument(number_axis_1_expr206, 1, number_axis_1_expr205).
ref(v_units_844, number_axis_1_expr205, line(number_axis_1, 776)).
method_invoc(number_axis_1_expr206, m_number_tick_unit_509, line(number_axis_1, 776)).
argument(number_axis_1_literal137, 1, number_axis_1_expr206).
argument(v_df_10_855, 2, number_axis_1_expr206).
argument(number_axis_1_literal138, 3, number_axis_1_expr206).
return(v_units_844, m_create_standard_tick_units_477, line(number_axis_1, 778)).
assign(v_units_856, number_axis_1_expr207, line(number_axis_1, 791)).
method_invoc(number_axis_1_expr207, m_tick_units_427, line(number_axis_1, 791)).
assign(v_df_0_857, number_axis_1_expr208, line(number_axis_1, 792)).
method_invoc(number_axis_1_expr208, m_decimal_format_508, line(number_axis_1, 792)).
argument(number_axis_1_literal139, 1, number_axis_1_expr208).
assign(v_df_1_858, number_axis_1_expr209, line(number_axis_1, 793)).
method_invoc(number_axis_1_expr209, m_decimal_format_508, line(number_axis_1, 793)).
argument(number_axis_1_literal140, 1, number_axis_1_expr209).
method_invoc(number_axis_1_expr210, m_add_430, line(number_axis_1, 794)).
argument(number_axis_1_expr211, 1, number_axis_1_expr210).
ref(v_units_856, number_axis_1_expr210, line(number_axis_1, 794)).
method_invoc(number_axis_1_expr211, m_number_tick_unit_509, line(number_axis_1, 794)).
argument(number_axis_1_literal141, 1, number_axis_1_expr211).
argument(v_df_0_857, 2, number_axis_1_expr211).
argument(number_axis_1_literal142, 3, number_axis_1_expr211).
method_invoc(number_axis_1_expr212, m_add_430, line(number_axis_1, 795)).
argument(number_axis_1_expr213, 1, number_axis_1_expr212).
ref(v_units_856, number_axis_1_expr212, line(number_axis_1, 795)).
method_invoc(number_axis_1_expr213, m_number_tick_unit_509, line(number_axis_1, 795)).
argument(number_axis_1_literal143, 1, number_axis_1_expr213).
argument(v_df_0_857, 2, number_axis_1_expr213).
argument(number_axis_1_literal144, 3, number_axis_1_expr213).
method_invoc(number_axis_1_expr214, m_add_430, line(number_axis_1, 796)).
argument(number_axis_1_expr215, 1, number_axis_1_expr214).
ref(v_units_856, number_axis_1_expr214, line(number_axis_1, 796)).
method_invoc(number_axis_1_expr215, m_number_tick_unit_509, line(number_axis_1, 796)).
argument(number_axis_1_literal145, 1, number_axis_1_expr215).
argument(v_df_0_857, 2, number_axis_1_expr215).
argument(number_axis_1_literal146, 3, number_axis_1_expr215).
method_invoc(number_axis_1_expr216, m_add_430, line(number_axis_1, 797)).
argument(number_axis_1_expr217, 1, number_axis_1_expr216).
ref(v_units_856, number_axis_1_expr216, line(number_axis_1, 797)).
method_invoc(number_axis_1_expr217, m_number_tick_unit_509, line(number_axis_1, 797)).
argument(number_axis_1_literal147, 1, number_axis_1_expr217).
argument(v_df_0_857, 2, number_axis_1_expr217).
argument(number_axis_1_literal148, 3, number_axis_1_expr217).
method_invoc(number_axis_1_expr218, m_add_430, line(number_axis_1, 798)).
argument(number_axis_1_expr219, 1, number_axis_1_expr218).
ref(v_units_856, number_axis_1_expr218, line(number_axis_1, 798)).
method_invoc(number_axis_1_expr219, m_number_tick_unit_509, line(number_axis_1, 798)).
argument(number_axis_1_literal149, 1, number_axis_1_expr219).
argument(v_df_0_857, 2, number_axis_1_expr219).
argument(number_axis_1_literal150, 3, number_axis_1_expr219).
method_invoc(number_axis_1_expr220, m_add_430, line(number_axis_1, 799)).
argument(number_axis_1_expr221, 1, number_axis_1_expr220).
ref(v_units_856, number_axis_1_expr220, line(number_axis_1, 799)).
method_invoc(number_axis_1_expr221, m_number_tick_unit_509, line(number_axis_1, 799)).
argument(number_axis_1_literal151, 1, number_axis_1_expr221).
argument(v_df_0_857, 2, number_axis_1_expr221).
argument(number_axis_1_literal152, 3, number_axis_1_expr221).
method_invoc(number_axis_1_expr222, m_add_430, line(number_axis_1, 800)).
argument(number_axis_1_expr223, 1, number_axis_1_expr222).
ref(v_units_856, number_axis_1_expr222, line(number_axis_1, 800)).
method_invoc(number_axis_1_expr223, m_number_tick_unit_509, line(number_axis_1, 800)).
argument(number_axis_1_literal153, 1, number_axis_1_expr223).
argument(v_df_0_857, 2, number_axis_1_expr223).
argument(number_axis_1_literal154, 3, number_axis_1_expr223).
method_invoc(number_axis_1_expr224, m_add_430, line(number_axis_1, 801)).
argument(number_axis_1_expr225, 1, number_axis_1_expr224).
ref(v_units_856, number_axis_1_expr224, line(number_axis_1, 801)).
method_invoc(number_axis_1_expr225, m_number_tick_unit_509, line(number_axis_1, 801)).
argument(number_axis_1_literal155, 1, number_axis_1_expr225).
argument(v_df_0_857, 2, number_axis_1_expr225).
argument(number_axis_1_literal156, 3, number_axis_1_expr225).
method_invoc(number_axis_1_expr226, m_add_430, line(number_axis_1, 802)).
argument(number_axis_1_expr227, 1, number_axis_1_expr226).
ref(v_units_856, number_axis_1_expr226, line(number_axis_1, 802)).
method_invoc(number_axis_1_expr227, m_number_tick_unit_509, line(number_axis_1, 802)).
argument(number_axis_1_literal157, 1, number_axis_1_expr227).
argument(v_df_0_857, 2, number_axis_1_expr227).
argument(number_axis_1_literal158, 3, number_axis_1_expr227).
method_invoc(number_axis_1_expr228, m_add_430, line(number_axis_1, 803)).
argument(number_axis_1_expr229, 1, number_axis_1_expr228).
ref(v_units_856, number_axis_1_expr228, line(number_axis_1, 803)).
method_invoc(number_axis_1_expr229, m_number_tick_unit_509, line(number_axis_1, 803)).
argument(number_axis_1_literal159, 1, number_axis_1_expr229).
argument(v_df_1_858, 2, number_axis_1_expr229).
argument(number_axis_1_literal160, 3, number_axis_1_expr229).
method_invoc(number_axis_1_expr230, m_add_430, line(number_axis_1, 804)).
argument(number_axis_1_expr231, 1, number_axis_1_expr230).
ref(v_units_856, number_axis_1_expr230, line(number_axis_1, 804)).
method_invoc(number_axis_1_expr231, m_number_tick_unit_509, line(number_axis_1, 804)).
argument(number_axis_1_literal161, 1, number_axis_1_expr231).
argument(v_df_1_858, 2, number_axis_1_expr231).
argument(number_axis_1_literal162, 3, number_axis_1_expr231).
method_invoc(number_axis_1_expr232, m_add_430, line(number_axis_1, 805)).
argument(number_axis_1_expr233, 1, number_axis_1_expr232).
ref(v_units_856, number_axis_1_expr232, line(number_axis_1, 805)).
method_invoc(number_axis_1_expr233, m_number_tick_unit_509, line(number_axis_1, 805)).
argument(number_axis_1_literal163, 1, number_axis_1_expr233).
argument(v_df_1_858, 2, number_axis_1_expr233).
argument(number_axis_1_literal164, 3, number_axis_1_expr233).
method_invoc(number_axis_1_expr234, m_add_430, line(number_axis_1, 806)).
argument(number_axis_1_expr235, 1, number_axis_1_expr234).
ref(v_units_856, number_axis_1_expr234, line(number_axis_1, 806)).
method_invoc(number_axis_1_expr235, m_number_tick_unit_509, line(number_axis_1, 806)).
argument(number_axis_1_literal165, 1, number_axis_1_expr235).
argument(v_df_1_858, 2, number_axis_1_expr235).
argument(number_axis_1_literal166, 3, number_axis_1_expr235).
method_invoc(number_axis_1_expr236, m_add_430, line(number_axis_1, 807)).
argument(number_axis_1_expr237, 1, number_axis_1_expr236).
ref(v_units_856, number_axis_1_expr236, line(number_axis_1, 807)).
method_invoc(number_axis_1_expr237, m_number_tick_unit_509, line(number_axis_1, 807)).
argument(number_axis_1_literal167, 1, number_axis_1_expr237).
argument(v_df_1_858, 2, number_axis_1_expr237).
argument(number_axis_1_literal168, 3, number_axis_1_expr237).
method_invoc(number_axis_1_expr238, m_add_430, line(number_axis_1, 808)).
argument(number_axis_1_expr239, 1, number_axis_1_expr238).
ref(v_units_856, number_axis_1_expr238, line(number_axis_1, 808)).
method_invoc(number_axis_1_expr239, m_number_tick_unit_509, line(number_axis_1, 808)).
argument(number_axis_1_literal169, 1, number_axis_1_expr239).
argument(v_df_1_858, 2, number_axis_1_expr239).
argument(number_axis_1_literal170, 3, number_axis_1_expr239).
method_invoc(number_axis_1_expr240, m_add_430, line(number_axis_1, 809)).
argument(number_axis_1_expr241, 1, number_axis_1_expr240).
ref(v_units_856, number_axis_1_expr240, line(number_axis_1, 809)).
method_invoc(number_axis_1_expr241, m_number_tick_unit_509, line(number_axis_1, 809)).
argument(number_axis_1_literal171, 1, number_axis_1_expr241).
argument(v_df_1_858, 2, number_axis_1_expr241).
argument(number_axis_1_literal172, 3, number_axis_1_expr241).
method_invoc(number_axis_1_expr242, m_add_430, line(number_axis_1, 810)).
argument(number_axis_1_expr243, 1, number_axis_1_expr242).
ref(v_units_856, number_axis_1_expr242, line(number_axis_1, 810)).
method_invoc(number_axis_1_expr243, m_number_tick_unit_509, line(number_axis_1, 810)).
argument(number_axis_1_literal173, 1, number_axis_1_expr243).
argument(v_df_1_858, 2, number_axis_1_expr243).
argument(number_axis_1_literal174, 3, number_axis_1_expr243).
method_invoc(number_axis_1_expr244, m_add_430, line(number_axis_1, 811)).
argument(number_axis_1_expr245, 1, number_axis_1_expr244).
ref(v_units_856, number_axis_1_expr244, line(number_axis_1, 811)).
method_invoc(number_axis_1_expr245, m_number_tick_unit_509, line(number_axis_1, 811)).
argument(number_axis_1_literal175, 1, number_axis_1_expr245).
argument(v_df_1_858, 2, number_axis_1_expr245).
argument(number_axis_1_literal176, 3, number_axis_1_expr245).
method_invoc(number_axis_1_expr246, m_add_430, line(number_axis_1, 812)).
argument(number_axis_1_expr247, 1, number_axis_1_expr246).
ref(v_units_856, number_axis_1_expr246, line(number_axis_1, 812)).
method_invoc(number_axis_1_expr247, m_number_tick_unit_509, line(number_axis_1, 812)).
argument(number_axis_1_literal177, 1, number_axis_1_expr247).
argument(v_df_1_858, 2, number_axis_1_expr247).
argument(number_axis_1_literal178, 3, number_axis_1_expr247).
method_invoc(number_axis_1_expr248, m_add_430, line(number_axis_1, 813)).
argument(number_axis_1_expr249, 1, number_axis_1_expr248).
ref(v_units_856, number_axis_1_expr248, line(number_axis_1, 813)).
method_invoc(number_axis_1_expr249, m_number_tick_unit_509, line(number_axis_1, 813)).
argument(number_axis_1_literal179, 1, number_axis_1_expr249).
argument(v_df_1_858, 2, number_axis_1_expr249).
argument(number_axis_1_literal180, 3, number_axis_1_expr249).
method_invoc(number_axis_1_expr250, m_add_430, line(number_axis_1, 814)).
argument(number_axis_1_expr251, 1, number_axis_1_expr250).
ref(v_units_856, number_axis_1_expr250, line(number_axis_1, 814)).
method_invoc(number_axis_1_expr251, m_number_tick_unit_509, line(number_axis_1, 814)).
argument(number_axis_1_literal181, 1, number_axis_1_expr251).
argument(v_df_1_858, 2, number_axis_1_expr251).
argument(number_axis_1_literal182, 3, number_axis_1_expr251).
method_invoc(number_axis_1_expr252, m_add_430, line(number_axis_1, 815)).
argument(number_axis_1_expr253, 1, number_axis_1_expr252).
ref(v_units_856, number_axis_1_expr252, line(number_axis_1, 815)).
method_invoc(number_axis_1_expr253, m_number_tick_unit_509, line(number_axis_1, 815)).
argument(number_axis_1_literal183, 1, number_axis_1_expr253).
argument(v_df_1_858, 2, number_axis_1_expr253).
argument(number_axis_1_literal184, 3, number_axis_1_expr253).
method_invoc(number_axis_1_expr254, m_add_430, line(number_axis_1, 816)).
argument(number_axis_1_expr255, 1, number_axis_1_expr254).
ref(v_units_856, number_axis_1_expr254, line(number_axis_1, 816)).
method_invoc(number_axis_1_expr255, m_number_tick_unit_509, line(number_axis_1, 816)).
argument(number_axis_1_literal185, 1, number_axis_1_expr255).
argument(v_df_1_858, 2, number_axis_1_expr255).
argument(number_axis_1_literal186, 3, number_axis_1_expr255).
method_invoc(number_axis_1_expr256, m_add_430, line(number_axis_1, 817)).
argument(number_axis_1_expr257, 1, number_axis_1_expr256).
ref(v_units_856, number_axis_1_expr256, line(number_axis_1, 817)).
method_invoc(number_axis_1_expr257, m_number_tick_unit_509, line(number_axis_1, 817)).
argument(number_axis_1_literal187, 1, number_axis_1_expr257).
argument(v_df_1_858, 2, number_axis_1_expr257).
argument(number_axis_1_literal188, 3, number_axis_1_expr257).
method_invoc(number_axis_1_expr258, m_add_430, line(number_axis_1, 818)).
argument(number_axis_1_expr259, 1, number_axis_1_expr258).
ref(v_units_856, number_axis_1_expr258, line(number_axis_1, 818)).
method_invoc(number_axis_1_expr259, m_number_tick_unit_509, line(number_axis_1, 818)).
argument(number_axis_1_literal189, 1, number_axis_1_expr259).
argument(v_df_1_858, 2, number_axis_1_expr259).
argument(number_axis_1_literal190, 3, number_axis_1_expr259).
method_invoc(number_axis_1_expr260, m_add_430, line(number_axis_1, 819)).
argument(number_axis_1_expr261, 1, number_axis_1_expr260).
ref(v_units_856, number_axis_1_expr260, line(number_axis_1, 819)).
method_invoc(number_axis_1_expr261, m_number_tick_unit_509, line(number_axis_1, 819)).
argument(number_axis_1_literal191, 1, number_axis_1_expr261).
argument(v_df_1_858, 2, number_axis_1_expr261).
argument(number_axis_1_literal192, 3, number_axis_1_expr261).
method_invoc(number_axis_1_expr262, m_add_430, line(number_axis_1, 820)).
argument(number_axis_1_expr263, 1, number_axis_1_expr262).
ref(v_units_856, number_axis_1_expr262, line(number_axis_1, 820)).
method_invoc(number_axis_1_expr263, m_number_tick_unit_509, line(number_axis_1, 820)).
argument(number_axis_1_literal193, 1, number_axis_1_expr263).
argument(v_df_1_858, 2, number_axis_1_expr263).
argument(number_axis_1_literal194, 3, number_axis_1_expr263).
method_invoc(number_axis_1_expr264, m_add_430, line(number_axis_1, 821)).
argument(number_axis_1_expr265, 1, number_axis_1_expr264).
ref(v_units_856, number_axis_1_expr264, line(number_axis_1, 821)).
method_invoc(number_axis_1_expr265, m_number_tick_unit_509, line(number_axis_1, 821)).
argument(number_axis_1_literal195, 1, number_axis_1_expr265).
argument(v_df_1_858, 2, number_axis_1_expr265).
argument(number_axis_1_literal196, 3, number_axis_1_expr265).
method_invoc(number_axis_1_expr266, m_add_430, line(number_axis_1, 822)).
argument(number_axis_1_expr267, 1, number_axis_1_expr266).
ref(v_units_856, number_axis_1_expr266, line(number_axis_1, 822)).
method_invoc(number_axis_1_expr267, m_number_tick_unit_509, line(number_axis_1, 822)).
argument(number_axis_1_literal197, 1, number_axis_1_expr267).
argument(v_df_1_858, 2, number_axis_1_expr267).
argument(number_axis_1_literal198, 3, number_axis_1_expr267).
method_invoc(number_axis_1_expr268, m_add_430, line(number_axis_1, 823)).
argument(number_axis_1_expr269, 1, number_axis_1_expr268).
ref(v_units_856, number_axis_1_expr268, line(number_axis_1, 823)).
method_invoc(number_axis_1_expr269, m_number_tick_unit_509, line(number_axis_1, 823)).
argument(number_axis_1_literal199, 1, number_axis_1_expr269).
argument(v_df_1_858, 2, number_axis_1_expr269).
argument(number_axis_1_literal200, 3, number_axis_1_expr269).
method_invoc(number_axis_1_expr270, m_add_430, line(number_axis_1, 824)).
argument(number_axis_1_expr271, 1, number_axis_1_expr270).
ref(v_units_856, number_axis_1_expr270, line(number_axis_1, 824)).
method_invoc(number_axis_1_expr271, m_number_tick_unit_509, line(number_axis_1, 824)).
argument(number_axis_1_literal201, 1, number_axis_1_expr271).
argument(v_df_1_858, 2, number_axis_1_expr271).
argument(number_axis_1_literal202, 3, number_axis_1_expr271).
return(v_units_856, m_create_integer_tick_units_50, line(number_axis_1, 825)).
param(p_locale_859, 1, m_create_standard_tick_units_510).
param(p_locale_860, 1, m_create_integer_tick_units_511).
param(p_g_2_861, 1, m_estimate_maximum_tick_label_height_512).
param(p_g_2_862, 1, m_estimate_maximum_tick_label_width_513).
param(p_unit_863, 2, m_estimate_maximum_tick_label_width_513).
param(p_g_2_864, 1, m_select_auto_tick_unit_514).
param(p_data_area_865, 2, m_select_auto_tick_unit_514).
param(p_edge_866, 3, m_select_auto_tick_unit_514).
param(p_g_2_867, 1, m_select_horizontal_auto_tick_unit_515).
param(p_data_area_868, 2, m_select_horizontal_auto_tick_unit_515).
param(p_edge_869, 3, m_select_horizontal_auto_tick_unit_515).
param(p_g_2_870, 1, m_select_vertical_auto_tick_unit_516).
param(p_data_area_871, 2, m_select_vertical_auto_tick_unit_516).
param(p_edge_872, 3, m_select_vertical_auto_tick_unit_516).
param(p_g_2_873, 1, m_refresh_ticks_517).
param(p_state_874, 2, m_refresh_ticks_517).
param(p_data_area_875, 3, m_refresh_ticks_517).
param(p_edge_876, 4, m_refresh_ticks_517).
param(p_g_2_877, 1, m_refresh_ticks_horizontal_518).
param(p_data_area_878, 2, m_refresh_ticks_horizontal_518).
param(p_edge_879, 3, m_refresh_ticks_horizontal_518).
param(p_g_2_880, 1, m_refresh_ticks_vertical_519).
param(p_data_area_881, 2, m_refresh_ticks_vertical_519).
param(p_edge_882, 3, m_refresh_ticks_vertical_519).
throw(m_clone_520, clone_not_supported_exception).
param(p_obj_883, 1, m_equals_521).
throw(number_axis_1_expr44, null_pointer_exception, line(number_axis_1, 434)).

%line_border_1 - org.jfree.chart.block.LineBorder
method_invoc(line_border_1_expr1, m_line_border_751, line(line_border_1, 85)).
argument(q_black_39, 1, line_border_1_expr1).
argument(line_border_1_expr2, 2, line_border_1_expr1).
argument(line_border_1_expr3, 3, line_border_1_expr1).
ref(t_color_4, q_black_39, line(line_border_1, 85)).
method_invoc(line_border_1_expr2, m_basic_stroke_73, line(line_border_1, 85)).
argument(line_border_1_literal1, 1, line_border_1_expr2).
method_invoc(line_border_1_expr3, m_rectangle_insets_13, line(line_border_1, 85)).
argument(line_border_1_literal2, 1, line_border_1_expr3).
argument(line_border_1_literal3, 2, line_border_1_expr3).
argument(line_border_1_literal4, 3, line_border_1_expr3).
argument(line_border_1_literal5, 4, line_border_1_expr3).
param(p_paint_1230, 1, m_line_border_751).
param(p_stroke_1231, 2, m_line_border_751).
param(p_insets_1232, 3, m_line_border_751).
assign(f_paint_1233, p_paint_1230, line(line_border_1, 106)).
assign(f_stroke_1234, p_stroke_1231, line(line_border_1, 107)).
assign(f_insets_1235, p_insets_1232, line(line_border_1, 108)).
param(p_g_2_1236, 1, m_draw_755).
param(p_area_1237, 2, m_draw_755).
param(p_obj_1238, 1, m_equals_756).
param(p_stream_1239, 1, m_write_object_757).
throw(m_write_object_757, ioexception).
param(p_stream_1240, 1, m_read_object_758).
throw(m_read_object_758, ioexception).
throw(m_read_object_758, class_not_found_exception).

%jfree_chart_1 - org.jfree.chart.JFreeChart
assign(f_info_323, jfree_chart_1_expr1, line(jfree_chart_1, 256)).
method_invoc(jfree_chart_1_expr1, m_jfree_chart_info_67, line(jfree_chart_1, 256)).
assign(f_default_title_font_324, jfree_chart_1_expr2, line(jfree_chart_1, 259)).
method_invoc(jfree_chart_1_expr2, m_font_68, line(jfree_chart_1, 259)).
argument(jfree_chart_1_literal1, 1, jfree_chart_1_expr2).
argument(q_bold_3, 2, jfree_chart_1_expr2).
argument(jfree_chart_1_literal2, 3, jfree_chart_1_expr2).
ref(t_font_3, q_bold_3, line(jfree_chart_1, 259)).
assign(f_default_background_paint_325, q_white_4, line(jfree_chart_1, 263)).
ref(t_color_4, q_white_4, line(jfree_chart_1, 263)).
assign(f_default_background_image_326, jfree_chart_1_literal3, line(jfree_chart_1, 266)).
assign(f_background_image_alignment_327, q_fit_5, line(jfree_chart_1, 311)).
ref(t_align_5, q_fit_5, line(jfree_chart_1, 311)).
assign(f_background_image_alpha_328, jfree_chart_1_literal4, line(jfree_chart_1, 314)).
param(p_plot_329, 1, m_jfree_chart_69).
param(p_title_330, 1, m_jfree_chart_70).
param(p_plot_331, 2, m_jfree_chart_70).
param(p_title_332, 1, m_jfree_chart_16).
param(p_title_font_333, 2, m_jfree_chart_16).
param(p_plot_334, 3, m_jfree_chart_16).
param(p_create_legend_335, 4, m_jfree_chart_16).
assign(f_progress_listeners_336, jfree_chart_1_expr6, line(jfree_chart_1, 384)).
method_invoc(jfree_chart_1_expr6, m_event_listener_list_71, line(jfree_chart_1, 384)).
assign(f_change_listeners_337, jfree_chart_1_expr10, line(jfree_chart_1, 385)).
method_invoc(jfree_chart_1_expr10, m_event_listener_list_71, line(jfree_chart_1, 385)).
assign(f_notify_338, jfree_chart_1_literal6, line(jfree_chart_1, 386)).
assign(f_rendering_hints_339, jfree_chart_1_expr17, line(jfree_chart_1, 389)).
method_invoc(jfree_chart_1_expr17, m_rendering_hints_72, line(jfree_chart_1, 389)).
argument(q_key_antialiasing_6, 1, jfree_chart_1_expr17).
argument(q_value_antialias_on_7, 2, jfree_chart_1_expr17).
assign(f_border_visible_340, jfree_chart_1_literal7, line(jfree_chart_1, 393)).
assign(f_border_stroke_341, jfree_chart_1_expr24, line(jfree_chart_1, 394)).
method_invoc(jfree_chart_1_expr24, m_basic_stroke_73, line(jfree_chart_1, 394)).
argument(jfree_chart_1_literal8, 1, jfree_chart_1_expr24).
assign(f_border_paint_342, q_black_8, line(jfree_chart_1, 395)).
ref(t_color_4, q_black_8, line(jfree_chart_1, 395)).
assign(f_padding_343, q_zero_insets_9, line(jfree_chart_1, 397)).
ref(t_rectangle_insets_6, q_zero_insets_9, line(jfree_chart_1, 397)).
assign(f_plot_344, p_plot_334, line(jfree_chart_1, 399)).
method_invoc(jfree_chart_1_expr35, m_add_change_listener_74, line(jfree_chart_1, 400)).
argument(jfree_chart_1_expr36, 1, jfree_chart_1_expr35).
ref(p_plot_334, jfree_chart_1_expr35, line(jfree_chart_1, 400)).
assign(f_subtitles_345, jfree_chart_1_expr39, line(jfree_chart_1, 402)).
method_invoc(jfree_chart_1_expr39, m_array_list_75, line(jfree_chart_1, 402)).
assign(v_legend_346, jfree_chart_1_expr41, line(jfree_chart_1, 406)).
method_invoc(jfree_chart_1_expr41, m_legend_title_76, line(jfree_chart_1, 406)).
argument(f_plot_344, 1, jfree_chart_1_expr41).
method_invoc(jfree_chart_1_expr44, m_set_margin_77, line(jfree_chart_1, 407)).
argument(jfree_chart_1_expr45, 1, jfree_chart_1_expr44).
ref(v_legend_346, jfree_chart_1_expr44, line(jfree_chart_1, 407)).
method_invoc(jfree_chart_1_expr45, m_rectangle_insets_13, line(jfree_chart_1, 407)).
argument(jfree_chart_1_literal9, 1, jfree_chart_1_expr45).
argument(jfree_chart_1_literal10, 2, jfree_chart_1_expr45).
argument(jfree_chart_1_literal11, 3, jfree_chart_1_expr45).
argument(jfree_chart_1_literal12, 4, jfree_chart_1_expr45).
method_invoc(jfree_chart_1_expr46, m_set_frame_78, line(jfree_chart_1, 408)).
argument(jfree_chart_1_expr47, 1, jfree_chart_1_expr46).
ref(v_legend_346, jfree_chart_1_expr46, line(jfree_chart_1, 408)).
method_invoc(jfree_chart_1_expr47, m_line_border_79, line(jfree_chart_1, 408)).
method_invoc(jfree_chart_1_expr48, m_set_background_paint_80, line(jfree_chart_1, 409)).
argument(q_white_10, 1, jfree_chart_1_expr48).
ref(v_legend_346, jfree_chart_1_expr48, line(jfree_chart_1, 409)).
ref(t_color_4, q_white_10, line(jfree_chart_1, 409)).
method_invoc(jfree_chart_1_expr49, m_set_position_81, line(jfree_chart_1, 410)).
argument(q_bottom_11, 1, jfree_chart_1_expr49).
ref(v_legend_346, jfree_chart_1_expr49, line(jfree_chart_1, 410)).
ref(t_rectangle_edge_7, q_bottom_11, line(jfree_chart_1, 410)).
method_invoc(jfree_chart_1_expr50, m_add_82, line(jfree_chart_1, 411)).
argument(v_legend_346, 1, jfree_chart_1_expr50).
ref(f_subtitles_345, jfree_chart_1_expr50, line(jfree_chart_1, 411)).
method_invoc(jfree_chart_1_expr53, m_add_change_listener_83, line(jfree_chart_1, 412)).
argument(jfree_chart_1_expr54, 1, jfree_chart_1_expr53).
ref(v_legend_346, jfree_chart_1_expr53, line(jfree_chart_1, 412)).
assign(f_title_347, jfree_chart_1_expr59, line(jfree_chart_1, 420)).
method_invoc(jfree_chart_1_expr59, m_text_title_84, line(jfree_chart_1, 420)).
argument(p_title_332, 1, jfree_chart_1_expr59).
argument(p_title_font_333, 2, jfree_chart_1_expr59).
method_invoc(jfree_chart_1_expr61, m_add_change_listener_83, line(jfree_chart_1, 421)).
argument(jfree_chart_1_expr62, 1, jfree_chart_1_expr61).
ref(f_title_347, jfree_chart_1_expr61, line(jfree_chart_1, 421)).
assign(f_background_paint_348, f_default_background_paint_325, line(jfree_chart_1, 424)).
assign(f_background_image_349, f_default_background_image_326, line(jfree_chart_1, 426)).
assign(f_background_image_alignment_327, f_default_background_image_alignment_350, line(jfree_chart_1, 427)).
assign(f_background_image_alpha_328, f_default_background_image_alpha_351, line(jfree_chart_1, 428)).
param(p_rendering_hints_352, 1, m_set_rendering_hints_86).
param(p_visible_353, 1, m_set_border_visible_88).
param(p_stroke_354, 1, m_set_border_stroke_90).
param(p_paint_355, 1, m_set_border_paint_92).
param(p_padding_356, 1, m_set_padding_94).
return(f_title_347, m_get_title_95, line(jfree_chart_1, 570)).
param(p_title_357, 1, m_set_title_96).
param(p_text_358, 1, m_set_title_97).
param(p_legend_359, 1, m_add_legend_98).
param(p_index_360, 1, m_get_legend_100).
param(p_subtitles_361, 1, m_set_subtitles_103).
return(jfree_chart_1_expr79, m_get_subtitle_count_104, line(jfree_chart_1, 725)).
method_invoc(jfree_chart_1_expr79, m_size_105, line(jfree_chart_1, 725)).
ref(f_subtitles_345, jfree_chart_1_expr79, line(jfree_chart_1, 725)).
param(p_index_362, 1, m_get_subtitle_106).
assign(jfree_chart_1_expr83, jfree_chart_1_expr84, line(jfree_chart_1, 738)).
assign(jfree_chart_1_expr85, jfree_chart_1_expr86, line(jfree_chart_1, 738)).
method_invoc(jfree_chart_1_expr87, m_get_subtitle_count_104, line(jfree_chart_1, 738)).
return(jfree_chart_1_expr88, m_get_subtitle_106, line(jfree_chart_1, 741)).
assign(jfree_chart_1_expr88, jfree_chart_1_expr89, line(jfree_chart_1, 741)).
method_invoc(jfree_chart_1_expr89, m_get_107, line(jfree_chart_1, 741)).
argument(p_index_362, 1, jfree_chart_1_expr89).
ref(f_subtitles_345, jfree_chart_1_expr89, line(jfree_chart_1, 741)).
param(p_subtitle_363, 1, m_add_subtitle_108).
param(p_index_364, 1, m_add_subtitle_109).
param(p_subtitle_365, 2, m_add_subtitle_109).
param(p_title_366, 1, m_remove_subtitle_111).
return(f_plot_344, m_get_plot_112, line(jfree_chart_1, 820)).
param(p_flag_367, 1, m_set_anti_alias_116).
param(p_flag_368, 1, m_set_text_anti_alias_118).
param(p_val_369, 1, m_set_text_anti_alias_119).
param(p_paint_370, 1, m_set_background_paint_121).
method_invoc(jfree_chart_1_expr98, m_equals_122, line(jfree_chart_1, 973)).
argument(p_paint_370, 1, jfree_chart_1_expr98).
ref(f_background_paint_348, jfree_chart_1_expr98, line(jfree_chart_1, 973)).
param(p_image_371, 1, m_set_background_image_124).
param(p_alignment_372, 1, m_set_background_image_alignment_126).
param(p_alpha_373, 1, m_set_background_image_alpha_128).
param(p_notify_374, 1, m_set_notify_130).
param(p_g_2_375, 1, m_draw_131).
param(p_area_376, 2, m_draw_131).
param(p_g_2_377, 1, m_draw_132).
param(p_area_378, 2, m_draw_132).
param(p_info_379, 3, m_draw_132).
param(p_g_2_380, 1, m_draw_133).
param(p_chart_area_381, 2, m_draw_133).
param(p_anchor_382, 3, m_draw_133).
param(p_info_383, 4, m_draw_133).
param(p_dimensions_384, 1, m_create_aligned_rectangle2_d_134).
param(p_frame_385, 2, m_create_aligned_rectangle2_d_134).
param(p_h_align_386, 3, m_create_aligned_rectangle2_d_134).
param(p_v_align_387, 4, m_create_aligned_rectangle2_d_134).
param(p_t_388, 1, m_draw_title_135).
param(p_g_2_389, 2, m_draw_title_135).
param(p_area_390, 3, m_draw_title_135).
param(p_entities_391, 4, m_draw_title_135).
param(p_width_392, 1, m_create_buffered_image_136).
param(p_height_393, 2, m_create_buffered_image_136).
param(p_width_394, 1, m_create_buffered_image_137).
param(p_height_395, 2, m_create_buffered_image_137).
param(p_info_396, 3, m_create_buffered_image_137).
param(p_width_397, 1, m_create_buffered_image_138).
param(p_height_398, 2, m_create_buffered_image_138).
param(p_image_type_399, 3, m_create_buffered_image_138).
param(p_info_400, 4, m_create_buffered_image_138).
param(p_image_width_401, 1, m_create_buffered_image_139).
param(p_image_height_402, 2, m_create_buffered_image_139).
param(p_draw_width_403, 3, m_create_buffered_image_139).
param(p_draw_height_404, 4, m_create_buffered_image_139).
param(p_info_405, 5, m_create_buffered_image_139).
param(p_x_406, 1, m_handle_click_140).
param(p_y_407, 2, m_handle_click_140).
param(p_info_408, 3, m_handle_click_140).
param(p_listener_409, 1, m_add_change_listener_141).
param(p_listener_410, 1, m_remove_change_listener_142).
param(p_event_411, 1, m_notify_listeners_144).
assign(v_listeners_412, jfree_chart_1_expr103, line(jfree_chart_1, 1515)).
method_invoc(jfree_chart_1_expr103, m_get_listener_list_145, line(jfree_chart_1, 1515)).
ref(f_change_listeners_337, jfree_chart_1_expr103, line(jfree_chart_1, 1515)).
assign(v_i_413, jfree_chart_1_expr107, line(jfree_chart_1, 1516)).
ref(v_listeners_412, q_length_12, line(jfree_chart_1, 1516)).
assign(v_i_413, jfree_chart_1_literal19, line(jfree_chart_1, 1516)).
param(p_listener_414, 1, m_add_progress_listener_146).
param(p_listener_415, 1, m_remove_progress_listener_147).
param(p_event_416, 1, m_notify_listeners_148).
param(p_event_417, 1, m_title_changed_149).
method_invoc(jfree_chart_1_expr110, m_set_chart_150, line(jfree_chart_1, 1572)).
argument(jfree_chart_1_expr111, 1, jfree_chart_1_expr110).
ref(p_event_417, jfree_chart_1_expr110, line(jfree_chart_1, 1572)).
method_invoc(jfree_chart_1_expr112, m_notify_listeners_144, line(jfree_chart_1, 1573)).
argument(p_event_417, 1, jfree_chart_1_expr112).
param(p_event_418, 1, m_plot_changed_151).
method_invoc(jfree_chart_1_expr113, m_set_chart_150, line(jfree_chart_1, 1583)).
argument(jfree_chart_1_expr114, 1, jfree_chart_1_expr113).
ref(p_event_418, jfree_chart_1_expr113, line(jfree_chart_1, 1583)).
method_invoc(jfree_chart_1_expr115, m_notify_listeners_144, line(jfree_chart_1, 1584)).
argument(p_event_418, 1, jfree_chart_1_expr115).
param(p_obj_419, 1, m_equals_152).
param(p_stream_420, 1, m_write_object_153).
throw(m_write_object_153, ioexception).
param(p_stream_421, 1, m_read_object_154).
throw(m_read_object_154, ioexception).
throw(m_read_object_154, class_not_found_exception).
param(p_args_422, 1, m_main_155).
throw(m_clone_156, clone_not_supported_exception).

%pie_plot_1 - org.jfree.chart.plot.PiePlot
assign(f_default_label_font_1493, pie_plot_1_expr1, line(pie_plot_1, 261)).
method_invoc(pie_plot_1_expr1, m_font_68, line(pie_plot_1, 261)).
argument(pie_plot_1_literal1, 1, pie_plot_1_expr1).
argument(q_plain_41, 2, pie_plot_1_expr1).
argument(pie_plot_1_literal2, 3, pie_plot_1_expr1).
assign(f_default_label_paint_1494, q_black_41, line(pie_plot_1, 265)).
ref(t_color_4, q_black_41, line(pie_plot_1, 265)).
assign(f_default_label_background_paint_1495, pie_plot_1_expr2, line(pie_plot_1, 268)).
method_invoc(pie_plot_1_expr2, m_color_1, line(pie_plot_1, 268)).
argument(pie_plot_1_literal3, 1, pie_plot_1_expr2).
argument(pie_plot_1_literal4, 2, pie_plot_1_expr2).
argument(pie_plot_1_literal5, 3, pie_plot_1_expr2).
assign(f_default_label_outline_paint_1496, q_black_41, line(pie_plot_1, 272)).
ref(t_color_4, q_black_41, line(pie_plot_1, 272)).
assign(f_default_label_outline_stroke_1497, pie_plot_1_expr3, line(pie_plot_1, 275)).
method_invoc(pie_plot_1_expr3, m_basic_stroke_73, line(pie_plot_1, 275)).
argument(pie_plot_1_literal6, 1, pie_plot_1_expr3).
assign(f_default_label_shadow_paint_1498, pie_plot_1_expr4, line(pie_plot_1, 279)).
method_invoc(pie_plot_1_expr4, m_color_961, line(pie_plot_1, 279)).
argument(pie_plot_1_literal7, 1, pie_plot_1_expr4).
argument(pie_plot_1_literal8, 2, pie_plot_1_expr4).
argument(pie_plot_1_literal9, 3, pie_plot_1_expr4).
argument(pie_plot_1_literal10, 4, pie_plot_1_expr4).
assign(f_shadow_paint_1499, q_gray_41, line(pie_plot_1, 355)).
ref(t_color_4, q_gray_41, line(pie_plot_1, 355)).
assign(f_shadow_xoffset_1500, pie_plot_1_literal11, line(pie_plot_1, 358)).
assign(f_shadow_yoffset_1501, pie_plot_1_literal12, line(pie_plot_1, 361)).
assign(f_simple_labels_1502, pie_plot_1_literal13, line(pie_plot_1, 404)).
assign(f_maximum_label_width_1503, pie_plot_1_literal14, line(pie_plot_1, 422)).
assign(f_label_gap_1504, pie_plot_1_literal15, line(pie_plot_1, 428)).
assign(f_label_link_style_1505, q_standard_41, line(pie_plot_1, 438)).
ref(t_pie_label_link_style_9, q_standard_41, line(pie_plot_1, 438)).
assign(f_label_link_margin_1506, pie_plot_1_literal16, line(pie_plot_1, 441)).
assign(f_label_link_paint_1507, q_black_42, line(pie_plot_1, 444)).
ref(t_color_4, q_black_42, line(pie_plot_1, 444)).
assign(f_label_link_stroke_1508, pie_plot_1_expr5, line(pie_plot_1, 447)).
method_invoc(pie_plot_1_expr5, m_basic_stroke_73, line(pie_plot_1, 447)).
argument(pie_plot_1_literal17, 1, pie_plot_1_expr5).
assign(f_localization_resources_1509, pie_plot_1_expr6, line(pie_plot_1, 502)).
param(p_dataset_1510, 1, m_pie_plot_9).
method_invoc(pie_plot_1_expr7, m_plot_963, line(pie_plot_1, 539)).
assign(f_dataset_1511, p_dataset_1510, line(pie_plot_1, 540)).
method_invoc(pie_plot_1_expr12, m_add_change_listener_964, line(pie_plot_1, 542)).
argument(pie_plot_1_expr13, 1, pie_plot_1_expr12).
ref(p_dataset_1510, pie_plot_1_expr12, line(pie_plot_1, 542)).
assign(f_pie_index_1512, pie_plot_1_literal19, line(pie_plot_1, 544)).
assign(f_interior_gap_1513, f_default_interior_gap_1514, line(pie_plot_1, 546)).
assign(f_circular_1515, pie_plot_1_literal20, line(pie_plot_1, 547)).
assign(f_start_angle_1516, f_default_start_angle_1517, line(pie_plot_1, 548)).
assign(f_direction_1518, q_clockwise_42, line(pie_plot_1, 549)).
ref(t_rotation_27, q_clockwise_42, line(pie_plot_1, 549)).
assign(f_minimum_arc_angle_to_draw_1519, f_default_minimum_arc_angle_to_draw_1520, line(pie_plot_1, 550)).
assign(f_section_paint_map_1521, pie_plot_1_expr34, line(pie_plot_1, 552)).
method_invoc(pie_plot_1_expr34, m_paint_map_965, line(pie_plot_1, 552)).
assign(f_base_section_paint_1522, q_gray_43, line(pie_plot_1, 553)).
ref(t_color_4, q_gray_43, line(pie_plot_1, 553)).
assign(f_auto_populate_section_paint_1523, pie_plot_1_literal21, line(pie_plot_1, 554)).
assign(f_section_outlines_visible_1524, pie_plot_1_literal22, line(pie_plot_1, 556)).
assign(f_section_outline_paint_map_1525, pie_plot_1_expr47, line(pie_plot_1, 557)).
method_invoc(pie_plot_1_expr47, m_paint_map_965, line(pie_plot_1, 557)).
assign(f_base_section_outline_paint_1526, f_default_outline_paint_1527, line(pie_plot_1, 558)).
assign(f_auto_populate_section_outline_paint_1528, pie_plot_1_literal23, line(pie_plot_1, 559)).
assign(f_section_outline_stroke_map_1529, pie_plot_1_expr57, line(pie_plot_1, 561)).
method_invoc(pie_plot_1_expr57, m_stroke_map_966, line(pie_plot_1, 561)).
assign(f_base_section_outline_stroke_1530, f_default_outline_stroke_1531, line(pie_plot_1, 562)).
assign(f_auto_populate_section_outline_stroke_1532, pie_plot_1_literal24, line(pie_plot_1, 563)).
assign(f_explode_percentages_1533, pie_plot_1_expr67, line(pie_plot_1, 565)).
method_invoc(pie_plot_1_expr67, m_tree_map_967, line(pie_plot_1, 565)).
assign(f_label_generator_1534, pie_plot_1_expr71, line(pie_plot_1, 567)).
method_invoc(pie_plot_1_expr71, m_standard_pie_section_label_generator_11, line(pie_plot_1, 567)).
assign(f_label_font_1535, f_default_label_font_1493, line(pie_plot_1, 568)).
assign(f_label_paint_1536, f_default_label_paint_1494, line(pie_plot_1, 569)).
assign(f_label_background_paint_1537, f_default_label_background_paint_1495, line(pie_plot_1, 570)).
assign(f_label_outline_paint_1538, f_default_label_outline_paint_1496, line(pie_plot_1, 571)).
assign(f_label_outline_stroke_1539, f_default_label_outline_stroke_1497, line(pie_plot_1, 572)).
assign(f_label_shadow_paint_1540, f_default_label_shadow_paint_1498, line(pie_plot_1, 573)).
assign(f_label_links_visible_1541, pie_plot_1_literal25, line(pie_plot_1, 574)).
assign(f_label_distributor_1542, pie_plot_1_expr96, line(pie_plot_1, 575)).
method_invoc(pie_plot_1_expr96, m_pie_label_distributor_947, line(pie_plot_1, 575)).
argument(pie_plot_1_literal26, 1, pie_plot_1_expr96).
assign(f_simple_labels_1502, pie_plot_1_literal27, line(pie_plot_1, 577)).
assign(f_simple_label_offset_1543, pie_plot_1_expr103, line(pie_plot_1, 578)).
method_invoc(pie_plot_1_expr103, m_rectangle_insets_968, line(pie_plot_1, 578)).
argument(q_relative_43, 1, pie_plot_1_expr103).
argument(pie_plot_1_literal28, 2, pie_plot_1_expr103).
argument(pie_plot_1_literal29, 3, pie_plot_1_expr103).
argument(pie_plot_1_literal30, 4, pie_plot_1_expr103).
argument(pie_plot_1_literal31, 5, pie_plot_1_expr103).
ref(t_unit_type_28, q_relative_43, line(pie_plot_1, 578)).
assign(f_label_padding_1544, pie_plot_1_expr107, line(pie_plot_1, 580)).
method_invoc(pie_plot_1_expr107, m_rectangle_insets_13, line(pie_plot_1, 580)).
argument(pie_plot_1_literal32, 1, pie_plot_1_expr107).
argument(pie_plot_1_literal33, 2, pie_plot_1_expr107).
argument(pie_plot_1_literal34, 3, pie_plot_1_expr107).
argument(pie_plot_1_literal35, 4, pie_plot_1_expr107).
assign(f_tool_tip_generator_1545, pie_plot_1_literal36, line(pie_plot_1, 582)).
assign(f_url_generator_1546, pie_plot_1_literal37, line(pie_plot_1, 583)).
assign(f_legend_label_generator_1547, pie_plot_1_expr117, line(pie_plot_1, 584)).
method_invoc(pie_plot_1_expr117, m_standard_pie_section_label_generator_11, line(pie_plot_1, 584)).
assign(f_legend_label_tool_tip_generator_1548, pie_plot_1_literal38, line(pie_plot_1, 585)).
assign(f_legend_label_urlgenerator_1549, pie_plot_1_literal39, line(pie_plot_1, 586)).
assign(f_legend_item_shape_1550, q_default_legend_item_circle_44, line(pie_plot_1, 587)).
ref(t_plot_29, q_default_legend_item_circle_44, line(pie_plot_1, 587)).
assign(f_ignore_null_values_1551, pie_plot_1_literal40, line(pie_plot_1, 589)).
assign(f_ignore_zero_values_1552, pie_plot_1_literal41, line(pie_plot_1, 590)).
param(p_dataset_1553, 1, m_set_dataset_970).
param(p_index_1554, 1, m_set_pie_index_972).
param(p_angle_1555, 1, m_set_start_angle_974).
param(p_direction_1556, 1, m_set_direction_976).
param(p_percent_1557, 1, m_set_interior_gap_978).
param(p_flag_1558, 1, m_set_circular_980).
param(p_circular_1559, 1, m_set_circular_981).
param(p_notify_1560, 2, m_set_circular_981).
param(p_flag_1561, 1, m_set_ignore_null_values_983).
param(p_flag_1562, 1, m_set_ignore_zero_values_985).
param(p_key_1563, 1, m_lookup_section_paint_986).
param(p_key_1564, 1, m_lookup_section_paint_987).
param(p_auto_populate_1565, 2, m_lookup_section_paint_987).
param(p_section_1566, 1, m_get_section_key_988).
param(p_key_1567, 1, m_get_section_paint_989).
param(p_key_1568, 1, m_set_section_paint_990).
param(p_paint_1569, 2, m_set_section_paint_990).
param(p_notify_1570, 1, m_clear_section_paints_251).
method_invoc(pie_plot_1_expr134, m_clear_991, line(pie_plot_1, 989)).
ref(f_section_paint_map_1521, pie_plot_1_expr134, line(pie_plot_1, 989)).
param(p_paint_1571, 1, m_set_base_section_paint_993).
return(f_auto_populate_section_paint_1523, m_get_auto_populate_section_paint_250, line(pie_plot_1, 1032)).
param(p_auto_1572, 1, m_set_auto_populate_section_paint_994).
param(p_visible_1573, 1, m_set_section_outlines_visible_996).
param(p_key_1574, 1, m_lookup_section_outline_paint_997).
param(p_key_1575, 1, m_lookup_section_outline_paint_998).
param(p_auto_populate_1576, 2, m_lookup_section_outline_paint_998).
param(p_key_1577, 1, m_get_section_outline_paint_999).
param(p_key_1578, 1, m_set_section_outline_paint_1000).
param(p_paint_1579, 2, m_set_section_outline_paint_1000).
param(p_notify_1580, 1, m_clear_section_outline_paints_1001).
param(p_paint_1581, 1, m_set_base_section_outline_paint_1003).
return(f_auto_populate_section_outline_paint_1528, m_get_auto_populate_section_outline_paint_252, line(pie_plot_1, 1242)).
param(p_auto_1582, 1, m_set_auto_populate_section_outline_paint_1004).
param(p_key_1583, 1, m_lookup_section_outline_stroke_1005).
param(p_key_1584, 1, m_lookup_section_outline_stroke_1006).
param(p_auto_populate_1585, 2, m_lookup_section_outline_stroke_1006).
param(p_key_1586, 1, m_get_section_outline_stroke_1007).
param(p_key_1587, 1, m_set_section_outline_stroke_1008).
param(p_stroke_1588, 2, m_set_section_outline_stroke_1008).
param(p_notify_1589, 1, m_clear_section_outline_strokes_1009).
param(p_stroke_1590, 1, m_set_base_section_outline_stroke_1011).
return(f_auto_populate_section_outline_stroke_1532, m_get_auto_populate_section_outline_stroke_253, line(pie_plot_1, 1425)).
param(p_auto_1591, 1, m_set_auto_populate_section_outline_stroke_1012).
param(p_paint_1592, 1, m_set_shadow_paint_1014).
param(p_offset_1593, 1, m_set_shadow_xoffset_1016).
param(p_offset_1594, 1, m_set_shadow_yoffset_1018).
param(p_key_1595, 1, m_get_explode_percent_1019).
param(p_key_1596, 1, m_set_explode_percent_1020).
param(p_percent_1597, 2, m_set_explode_percent_1020).
param(p_generator_1598, 1, m_set_label_generator_10).
assign(f_label_generator_1534, p_generator_1598, line(pie_plot_1, 1604)).
method_invoc(pie_plot_1_expr146, m_fire_change_event_1023, line(pie_plot_1, 1605)).
param(p_gap_1599, 1, m_set_label_gap_1025).
param(p_width_1600, 1, m_set_maximum_label_width_1027).
param(p_visible_1601, 1, m_set_label_links_visible_1029).
param(p_style_1602, 1, m_set_label_link_style_248).
assign(f_label_link_style_1505, p_style_1602, line(pie_plot_1, 1713)).
method_invoc(pie_plot_1_expr151, m_fire_change_event_1023, line(pie_plot_1, 1714)).
param(p_margin_1603, 1, m_set_label_link_margin_1032).
param(p_paint_1604, 1, m_set_label_link_paint_247).
assign(f_label_link_paint_1507, p_paint_1604, line(pie_plot_1, 1767)).
method_invoc(pie_plot_1_expr156, m_fire_change_event_1023, line(pie_plot_1, 1768)).
param(p_stroke_1605, 1, m_set_label_link_stroke_1035).
param(p_font_1606, 1, m_set_label_font_249).
assign(f_label_font_1535, p_font_1606, line(pie_plot_1, 1836)).
method_invoc(pie_plot_1_expr161, m_fire_change_event_1023, line(pie_plot_1, 1837)).
param(p_paint_1607, 1, m_set_label_paint_1039).
param(p_paint_1608, 1, m_set_label_background_paint_1041).
param(p_paint_1609, 1, m_set_label_outline_paint_1043).
param(p_stroke_1610, 1, m_set_label_outline_stroke_1045).
param(p_paint_1611, 1, m_set_label_shadow_paint_1047).
param(p_padding_1612, 1, m_set_label_padding_1049).
param(p_simple_1613, 1, m_set_simple_labels_1051).
param(p_offset_1614, 1, m_set_simple_label_offset_1053).
param(p_distributor_1615, 1, m_set_label_distributor_1055).
param(p_generator_1616, 1, m_set_tool_tip_generator_14).
assign(f_tool_tip_generator_1545, p_generator_1616, line(pie_plot_1, 2102)).
method_invoc(pie_plot_1_expr165, m_fire_change_event_1023, line(pie_plot_1, 2103)).
param(p_generator_1617, 1, m_set_urlgenerator_1058).
param(p_angle_1618, 1, m_set_minimum_arc_angle_to_draw_1060).
param(p_shape_1619, 1, m_set_legend_item_shape_1062).
param(p_generator_1620, 1, m_set_legend_label_generator_1064).
param(p_generator_1621, 1, m_set_legend_label_tool_tip_generator_1066).
param(p_generator_1622, 1, m_set_legend_label_urlgenerator_1068).
param(p_g_2_1623, 1, m_initialise_1069).
param(p_plot_area_1624, 2, m_initialise_1069).
param(p_plot_1625, 3, m_initialise_1069).
param(p_index_1626, 4, m_initialise_1069).
param(p_info_1627, 5, m_initialise_1069).
param(p_g_2_1628, 1, m_draw_1070).
param(p_area_1629, 2, m_draw_1070).
param(p_anchor_1630, 3, m_draw_1070).
param(p_parent_state_1631, 4, m_draw_1070).
param(p_info_1632, 5, m_draw_1070).
param(p_g_2_1633, 1, m_draw_pie_1071).
param(p_plot_area_1634, 2, m_draw_pie_1071).
param(p_info_1635, 3, m_draw_pie_1071).
param(p_g_2_1636, 1, m_draw_item_1072).
param(p_section_1637, 2, m_draw_item_1072).
param(p_data_area_1638, 3, m_draw_item_1072).
param(p_state_1639, 4, m_draw_item_1072).
param(p_current_pass_1640, 5, m_draw_item_1072).
param(p_g_2_1641, 1, m_draw_simple_labels_1073).
param(p_keys_1642, 2, m_draw_simple_labels_1073).
param(p_total_value_1643, 3, m_draw_simple_labels_1073).
param(p_plot_area_1644, 4, m_draw_simple_labels_1073).
param(p_pie_area_1645, 5, m_draw_simple_labels_1073).
param(p_state_1646, 6, m_draw_simple_labels_1073).
param(p_g_2_1647, 1, m_draw_labels_1074).
param(p_keys_1648, 2, m_draw_labels_1074).
param(p_total_value_1649, 3, m_draw_labels_1074).
param(p_plot_area_1650, 4, m_draw_labels_1074).
param(p_link_area_1651, 5, m_draw_labels_1074).
param(p_state_1652, 6, m_draw_labels_1074).
param(p_left_keys_1653, 1, m_draw_left_labels_1075).
param(p_g_2_1654, 2, m_draw_left_labels_1075).
param(p_plot_area_1655, 3, m_draw_left_labels_1075).
param(p_link_area_1656, 4, m_draw_left_labels_1075).
param(p_max_label_width_1657, 5, m_draw_left_labels_1075).
param(p_state_1658, 6, m_draw_left_labels_1075).
param(p_keys_1659, 1, m_draw_right_labels_1076).
param(p_g_2_1660, 2, m_draw_right_labels_1076).
param(p_plot_area_1661, 3, m_draw_right_labels_1076).
param(p_link_area_1662, 4, m_draw_right_labels_1076).
param(p_max_label_width_1663, 5, m_draw_right_labels_1076).
param(p_state_1664, 6, m_draw_right_labels_1076).
param(p_unexploded_1665, 1, m_get_arc_bounds_1079).
param(p_exploded_1666, 2, m_get_arc_bounds_1079).
param(p_angle_1667, 3, m_get_arc_bounds_1079).
param(p_extent_1668, 4, m_get_arc_bounds_1079).
param(p_explode_percent_1669, 5, m_get_arc_bounds_1079).
param(p_g_2_1670, 1, m_draw_left_label_1080).
param(p_state_1671, 2, m_draw_left_label_1080).
param(p_record_1672, 3, m_draw_left_label_1080).
param(p_g_2_1673, 1, m_draw_right_label_1081).
param(p_state_1674, 2, m_draw_right_label_1081).
param(p_record_1675, 3, m_draw_right_label_1081).
param(p_obj_1676, 1, m_equals_1082).
throw(m_clone_1083, clone_not_supported_exception).
param(p_stream_1677, 1, m_write_object_1084).
throw(m_write_object_1084, ioexception).
param(p_stream_1678, 1, m_read_object_1085).
throw(m_read_object_1085, ioexception).
throw(m_read_object_1085, class_not_found_exception).

%time_series_data_item_1 - org.jfree.data.time.TimeSeriesDataItem
param(p_period_3893, 1, m_time_series_data_item_2457).
param(p_value_3894, 2, m_time_series_data_item_2457).
assign(f_period_3895, p_period_3893, line(time_series_data_item_1, 109)).
assign(f_value_3896, p_value_3894, line(time_series_data_item_1, 110)).
assign(f_selected_3897, time_series_data_item_1_literal2, line(time_series_data_item_1, 111)).
param(p_period_3898, 1, m_time_series_data_item_2392).
param(p_value_3899, 2, m_time_series_data_item_2392).
method_invoc(time_series_data_item_1_expr11, m_time_series_data_item_2457, line(time_series_data_item_1, 121)).
argument(p_period_3898, 1, time_series_data_item_1_expr11).
argument(time_series_data_item_1_expr12, 2, time_series_data_item_1_expr11).
method_invoc(time_series_data_item_1_expr12, m_double_785, line(time_series_data_item_1, 121)).
argument(p_value_3899, 1, time_series_data_item_1_expr12).
return(f_period_3895, m_get_period_2377, line(time_series_data_item_1, 130)).
return(f_value_3896, m_get_value_2411, line(time_series_data_item_1, 141)).
param(p_value_3900, 1, m_set_value_2458).
param(p_selected_3901, 1, m_set_selected_2460).
param(p_obj_3902, 1, m_equals_2461).
param(p_o_1_3903, 1, m_compare_to_2463).
assign(v_clone_3904, time_series_data_item_1_literal3, line(time_series_data_item_1, 266)).
assign(v_clone_3904, time_series_data_item_1_expr18, line(time_series_data_item_1, 268)).
method_invoc(time_series_data_item_1_expr18, m_clone_946, line(time_series_data_item_1, 268)).
throw(time_series_data_item_1_expr18, clone_not_supported_exception, line(time_series_data_item_1, 268)).
return(v_clone_3904, m_clone_2386, line(time_series_data_item_1, 273)).

%bar_renderer_1 - org.jfree.chart.renderer.category.BarRenderer
assign(f_default_bar_painter_2462, bar_renderer_1_expr1, line(bar_renderer_1, 164)).
method_invoc(bar_renderer_1_expr1, m_gradient_bar_painter_163, line(bar_renderer_1, 164)).
param(p_painter_2463, 1, m_set_default_bar_painter_1591).
assign(f_default_shadows_visible_2464, bar_renderer_1_literal1, line(bar_renderer_1, 194)).
param(p_visible_2465, 1, m_set_default_shadows_visible_1593).
param(p_base_2466, 1, m_set_base_1596).
param(p_percent_2467, 1, m_set_item_margin_1598).
param(p_draw_2468, 1, m_set_draw_bar_outline_1600).
param(p_percent_2469, 1, m_set_maximum_bar_width_1602).
param(p_min_2470, 1, m_set_minimum_bar_length_1604).
param(p_transformer_2471, 1, m_set_gradient_paint_transformer_1606).
param(p_position_2472, 1, m_set_positive_item_label_position_fallback_1608).
param(p_position_2473, 1, m_set_negative_item_label_position_fallback_1610).
param(p_include_2474, 1, m_set_include_base_in_range_1612).
param(p_painter_2475, 1, m_set_bar_painter_1614).
param(p_visible_2476, 1, m_set_shadow_visible_1616).
param(p_paint_2477, 1, m_set_shadow_paint_1618).
param(p_offset_2478, 1, m_set_shadow_xoffset_1620).
param(p_offset_2479, 1, m_set_shadow_yoffset_1622).
param(p_g_2_2480, 1, m_initialise_1625).
param(p_data_area_2481, 2, m_initialise_1625).
param(p_plot_2482, 3, m_initialise_1625).
param(p_renderer_index_2483, 4, m_initialise_1625).
param(p_info_2484, 5, m_initialise_1625).
param(p_plot_2485, 1, m_calculate_bar_width_1626).
param(p_data_area_2486, 2, m_calculate_bar_width_1626).
param(p_renderer_index_2487, 3, m_calculate_bar_width_1626).
param(p_state_2488, 4, m_calculate_bar_width_1626).
param(p_plot_2489, 1, m_calculate_bar_w0_1627).
param(p_orientation_2490, 2, m_calculate_bar_w0_1627).
param(p_data_area_2491, 3, m_calculate_bar_w0_1627).
param(p_domain_axis_2492, 4, m_calculate_bar_w0_1627).
param(p_state_2493, 5, m_calculate_bar_w0_1627).
param(p_row_2494, 6, m_calculate_bar_w0_1627).
param(p_column_2495, 7, m_calculate_bar_w0_1627).
param(p_value_2496, 1, m_calculate_bar_l0l1_1628).
param(p_dataset_2497, 1, m_find_range_bounds_1629).
param(p_include_interval_2498, 2, m_find_range_bounds_1629).
param(p_dataset_index_2499, 1, m_get_legend_item_1630).
param(p_series_2500, 2, m_get_legend_item_1630).
param(p_g_2_2501, 1, m_draw_item_1631).
param(p_state_2502, 2, m_draw_item_1631).
param(p_data_area_2503, 3, m_draw_item_1631).
param(p_plot_2504, 4, m_draw_item_1631).
param(p_domain_axis_2505, 5, m_draw_item_1631).
param(p_range_axis_2506, 6, m_draw_item_1631).
param(p_dataset_2507, 7, m_draw_item_1631).
param(p_row_2508, 8, m_draw_item_1631).
param(p_column_2509, 9, m_draw_item_1631).
param(p_selected_2510, 10, m_draw_item_1631).
param(p_pass_2511, 11, m_draw_item_1631).
param(p_space_2512, 1, m_calculate_series_width_1632).
param(p_axis_2513, 2, m_calculate_series_width_1632).
param(p_categories_2514, 3, m_calculate_series_width_1632).
param(p_series_2515, 4, m_calculate_series_width_1632).
param(p_g_2_2516, 1, m_draw_item_label_for_bar_1633).
param(p_plot_2517, 2, m_draw_item_label_for_bar_1633).
param(p_dataset_2518, 3, m_draw_item_label_for_bar_1633).
param(p_row_2519, 4, m_draw_item_label_for_bar_1633).
param(p_column_2520, 5, m_draw_item_label_for_bar_1633).
param(p_selected_2521, 6, m_draw_item_label_for_bar_1633).
param(p_generator_2522, 7, m_draw_item_label_for_bar_1633).
param(p_bar_2523, 8, m_draw_item_label_for_bar_1633).
param(p_negative_2524, 9, m_draw_item_label_for_bar_1633).
param(p_anchor_2525, 1, m_calculate_label_anchor_point_1634).
param(p_bar_2526, 2, m_calculate_label_anchor_point_1634).
param(p_orientation_2527, 3, m_calculate_label_anchor_point_1634).
param(p_anchor_2528, 1, m_is_internal_anchor_1635).
param(p_obj_2529, 1, m_equals_1636).
param(p_stream_2530, 1, m_write_object_1637).
throw(m_write_object_1637, ioexception).
param(p_stream_2531, 1, m_read_object_1638).
throw(m_read_object_1638, ioexception).
throw(m_read_object_1638, class_not_found_exception).

%library_1 - org.jfree.chart.ui.Library
param(p_name_3157, 1, m_library_1919).
param(p_version_3158, 2, m_library_1919).
param(p_licence_3159, 3, m_library_1919).
param(p_info_3160, 4, m_library_1919).
param(p_info_3161, 1, m_set_info_1904).
assign(f_info_3162, p_info_3161, line(library_1, 128)).
param(p_licence_name_3163, 1, m_set_licence_name_1906).
assign(f_licence_name_3164, p_licence_name_3163, line(library_1, 137)).
param(p_name_3165, 1, m_set_name_1908).
assign(f_name_3166, p_name_3165, line(library_1, 146)).
param(p_version_3167, 1, m_set_version_1910).
assign(f_version_3168, p_version_3167, line(library_1, 155)).
param(p_obj_3169, 1, m_equals_1925).

%date_tick_unit_1 - org.jfree.chart.axis.DateTickUnit
param(p_unit_type_766, 1, m_date_tick_unit_452).
param(p_multiple_767, 2, m_date_tick_unit_452).
param(p_unit_type_768, 1, m_date_tick_unit_431).
param(p_multiple_769, 2, m_date_tick_unit_431).
param(p_formatter_770, 3, m_date_tick_unit_431).
method_invoc(date_tick_unit_1_expr1, m_date_tick_unit_432, line(date_tick_unit_1, 122)).
argument(p_unit_type_768, 1, date_tick_unit_1_expr1).
argument(p_multiple_769, 2, date_tick_unit_1_expr1).
argument(p_unit_type_768, 3, date_tick_unit_1_expr1).
argument(p_multiple_769, 4, date_tick_unit_1_expr1).
argument(p_formatter_770, 5, date_tick_unit_1_expr1).
param(p_unit_type_771, 1, m_date_tick_unit_432).
param(p_multiple_772, 2, m_date_tick_unit_432).
param(p_roll_unit_type_773, 3, m_date_tick_unit_432).
param(p_roll_multiple_774, 4, m_date_tick_unit_432).
param(p_formatter_775, 5, m_date_tick_unit_432).
method_invoc(date_tick_unit_1_expr2, m_tick_unit_453, line(date_tick_unit_1, 139)).
argument(date_tick_unit_1_expr3, 1, date_tick_unit_1_expr2).
method_invoc(date_tick_unit_1_expr3, m_get_millisecond_count_454, line(date_tick_unit_1, 139)).
argument(p_unit_type_771, 1, date_tick_unit_1_expr3).
argument(p_multiple_772, 2, date_tick_unit_1_expr3).
ref(t_date_tick_unit_16, date_tick_unit_1_expr3, line(date_tick_unit_1, 139)).
assign(f_unit_type_776, p_unit_type_771, line(date_tick_unit_1, 149)).
assign(f_count_777, p_multiple_772, line(date_tick_unit_1, 150)).
assign(f_roll_unit_type_778, p_roll_unit_type_773, line(date_tick_unit_1, 151)).
assign(f_roll_count_779, p_roll_multiple_774, line(date_tick_unit_1, 152)).
assign(f_formatter_780, p_formatter_775, line(date_tick_unit_1, 153)).
param(p_milliseconds_781, 1, m_value_to_string_459).
param(p_date_782, 1, m_date_to_string_460).
param(p_base_783, 1, m_add_to_date_461).
param(p_zone_784, 2, m_add_to_date_461).
param(p_base_785, 1, m_roll_date_462).
param(p_base_786, 1, m_roll_date_463).
param(p_zone_787, 2, m_roll_date_463).
param(p_unit_788, 1, m_get_millisecond_count_454).
param(p_count_789, 2, m_get_millisecond_count_454).
method_invoc(date_tick_unit_1_expr22, m_equals_465, line(date_tick_unit_1, 303)).
argument(q_year_32, 1, date_tick_unit_1_expr22).
ref(p_unit_788, date_tick_unit_1_expr22, line(date_tick_unit_1, 303)).
ref(t_date_tick_unit_type_15, q_year_32, line(date_tick_unit_1, 303)).
return(date_tick_unit_1_expr23, m_get_millisecond_count_454, line(date_tick_unit_1, 304)).
assign(date_tick_unit_1_expr24, date_tick_unit_1_expr25, line(date_tick_unit_1, 304)).
method_invoc(date_tick_unit_1_expr26, m_equals_465, line(date_tick_unit_1, 306)).
argument(q_month_32, 1, date_tick_unit_1_expr26).
ref(p_unit_788, date_tick_unit_1_expr26, line(date_tick_unit_1, 306)).
ref(t_date_tick_unit_type_15, q_month_32, line(date_tick_unit_1, 306)).
return(date_tick_unit_1_expr27, m_get_millisecond_count_454, line(date_tick_unit_1, 307)).
assign(date_tick_unit_1_expr28, date_tick_unit_1_expr29, line(date_tick_unit_1, 307)).
method_invoc(date_tick_unit_1_expr30, m_equals_465, line(date_tick_unit_1, 309)).
argument(q_day_32, 1, date_tick_unit_1_expr30).
ref(p_unit_788, date_tick_unit_1_expr30, line(date_tick_unit_1, 309)).
ref(t_date_tick_unit_type_15, q_day_32, line(date_tick_unit_1, 309)).
return(date_tick_unit_1_expr31, m_get_millisecond_count_454, line(date_tick_unit_1, 310)).
assign(date_tick_unit_1_expr32, date_tick_unit_1_expr33, line(date_tick_unit_1, 310)).
method_invoc(date_tick_unit_1_expr34, m_equals_465, line(date_tick_unit_1, 312)).
argument(q_hour_32, 1, date_tick_unit_1_expr34).
ref(p_unit_788, date_tick_unit_1_expr34, line(date_tick_unit_1, 312)).
ref(t_date_tick_unit_type_15, q_hour_32, line(date_tick_unit_1, 312)).
return(date_tick_unit_1_expr35, m_get_millisecond_count_454, line(date_tick_unit_1, 313)).
assign(date_tick_unit_1_expr36, date_tick_unit_1_expr37, line(date_tick_unit_1, 313)).
method_invoc(date_tick_unit_1_expr38, m_equals_465, line(date_tick_unit_1, 315)).
argument(q_minute_32, 1, date_tick_unit_1_expr38).
ref(p_unit_788, date_tick_unit_1_expr38, line(date_tick_unit_1, 315)).
ref(t_date_tick_unit_type_15, q_minute_32, line(date_tick_unit_1, 315)).
return(date_tick_unit_1_expr39, m_get_millisecond_count_454, line(date_tick_unit_1, 316)).
assign(date_tick_unit_1_expr40, date_tick_unit_1_expr41, line(date_tick_unit_1, 316)).
method_invoc(date_tick_unit_1_expr42, m_equals_465, line(date_tick_unit_1, 318)).
argument(q_second_32, 1, date_tick_unit_1_expr42).
ref(p_unit_788, date_tick_unit_1_expr42, line(date_tick_unit_1, 318)).
ref(t_date_tick_unit_type_15, q_second_32, line(date_tick_unit_1, 318)).
return(date_tick_unit_1_expr43, m_get_millisecond_count_454, line(date_tick_unit_1, 319)).
method_invoc(date_tick_unit_1_expr44, m_equals_465, line(date_tick_unit_1, 321)).
argument(q_millisecond_32, 1, date_tick_unit_1_expr44).
ref(p_unit_788, date_tick_unit_1_expr44, line(date_tick_unit_1, 321)).
ref(t_date_tick_unit_type_15, q_millisecond_32, line(date_tick_unit_1, 321)).
return(p_count_789, m_get_millisecond_count_454, line(date_tick_unit_1, 322)).
param(p_formatter_790, 1, m_not_null_466).
param(p_obj_791, 1, m_equals_467).

%day_1 - org.jfree.data.time.Day
assign(f_date_format_3609, day_1_expr1, line(day_1, 84)).
assign(f_date_format_short_3610, day_1_expr2, line(day_1, 89)).
method_invoc(day_1_expr2, m_get_date_instance_2240, line(day_1, 89)).
argument(q_short_76, 1, day_1_expr2).
ref(t_date_format_43, day_1_expr2, line(day_1, 89)).
ref(t_date_format_43, q_short_76, line(day_1, 89)).
assign(f_date_format_medium_3611, day_1_expr3, line(day_1, 93)).
method_invoc(day_1_expr3, m_get_date_instance_2240, line(day_1, 93)).
argument(q_medium_77, 1, day_1_expr3).
ref(t_date_format_43, day_1_expr3, line(day_1, 93)).
ref(t_date_format_43, q_medium_77, line(day_1, 93)).
assign(f_date_format_long_3612, day_1_expr4, line(day_1, 97)).
method_invoc(day_1_expr4, m_get_date_instance_2240, line(day_1, 97)).
argument(q_long_78, 1, day_1_expr4).
ref(t_date_format_43, day_1_expr4, line(day_1, 97)).
ref(t_date_format_43, q_long_78, line(day_1, 97)).
method_invoc(day_1_expr5, m_day_2241, line(day_1, 113)).
argument(day_1_expr6, 1, day_1_expr5).
method_invoc(day_1_expr6, m_date_375, line(day_1, 113)).
param(p_day_3613, 1, m_day_2242).
param(p_month_3614, 2, m_day_2242).
param(p_year_3615, 3, m_day_2242).
param(p_serial_date_3616, 1, m_day_2243).
assign(f_serial_date_3617, p_serial_date_3616, line(day_1, 137)).
method_invoc(day_1_expr11, m_peg_2244, line(day_1, 138)).
argument(day_1_expr12, 1, day_1_expr11).
method_invoc(day_1_expr12, m_get_instance_2245, line(day_1, 138)).
ref(t_calendar_44, day_1_expr12, line(day_1, 138)).
param(p_time_3618, 1, m_day_2241).
method_invoc(day_1_expr13, m_day_2246, line(day_1, 151)).
argument(p_time_3618, 1, day_1_expr13).
argument(day_1_expr14, 2, day_1_expr13).
method_invoc(day_1_expr14, m_get_default_387, line(day_1, 151)).
ref(t_time_zone_12, day_1_expr14, line(day_1, 151)).
param(p_time_3619, 1, m_day_2246).
param(p_zone_3620, 2, m_day_2246).
assign(v_calendar_3621, day_1_expr17, line(day_1, 168)).
method_invoc(day_1_expr17, m_get_instance_2247, line(day_1, 168)).
argument(p_zone_3620, 1, day_1_expr17).
ref(t_calendar_44, day_1_expr17, line(day_1, 168)).
method_invoc(day_1_expr18, m_set_time_2248, line(day_1, 169)).
argument(p_time_3619, 1, day_1_expr18).
ref(v_calendar_3621, day_1_expr18, line(day_1, 169)).
assign(v_d_3622, day_1_expr19, line(day_1, 170)).
method_invoc(day_1_expr19, m_get_2249, line(day_1, 170)).
argument(q_day_of_month_79, 1, day_1_expr19).
ref(v_calendar_3621, day_1_expr19, line(day_1, 170)).
ref(t_calendar_44, q_day_of_month_79, line(day_1, 170)).
assign(v_m_3623, day_1_expr20, line(day_1, 171)).
method_invoc(day_1_expr21, m_get_2249, line(day_1, 171)).
argument(q_month_80, 1, day_1_expr21).
ref(v_calendar_3621, day_1_expr21, line(day_1, 171)).
ref(t_calendar_44, q_month_80, line(day_1, 171)).
assign(v_y_3624, day_1_expr22, line(day_1, 172)).
method_invoc(day_1_expr22, m_get_2249, line(day_1, 172)).
argument(q_year_81, 1, day_1_expr22).
ref(v_calendar_3621, day_1_expr22, line(day_1, 172)).
ref(t_calendar_44, q_year_81, line(day_1, 172)).
assign(f_serial_date_3617, day_1_expr25, line(day_1, 173)).
method_invoc(day_1_expr25, m_create_instance_2250, line(day_1, 173)).
argument(v_d_3622, 1, day_1_expr25).
argument(v_m_3623, 2, day_1_expr25).
argument(v_y_3624, 3, day_1_expr25).
ref(t_serial_date_45, day_1_expr25, line(day_1, 173)).
method_invoc(day_1_expr27, m_peg_2244, line(day_1, 174)).
argument(v_calendar_3621, 1, day_1_expr27).
return(f_serial_date_3617, m_get_serial_date_2251, line(day_1, 187)).
param(p_calendar_3625, 1, m_peg_2244).
assign(f_first_millisecond_3626, day_1_expr32, line(day_1, 254)).
method_invoc(day_1_expr32, m_get_first_millisecond_2257, line(day_1, 254)).
argument(p_calendar_3625, 1, day_1_expr32).
assign(f_last_millisecond_3627, day_1_expr36, line(day_1, 255)).
method_invoc(day_1_expr36, m_get_last_millisecond_2258, line(day_1, 255)).
argument(p_calendar_3625, 1, day_1_expr36).
assign(v_serial_3628, day_1_expr38, line(day_1, 288)).
method_invoc(day_1_expr38, m_to_serial_2261, line(day_1, 288)).
ref(f_serial_date_3617, day_1_expr38, line(day_1, 288)).
ref(t_serial_date_45, q_serial_upper_bound_82, line(day_1, 289)).
assign(v_tomorrow_3629, day_1_expr42, line(day_1, 290)).
method_invoc(day_1_expr42, m_create_instance_2262, line(day_1, 290)).
argument(day_1_expr43, 1, day_1_expr42).
ref(t_serial_date_45, day_1_expr42, line(day_1, 290)).
return(day_1_expr44, m_next_2260, line(day_1, 291)).
method_invoc(day_1_expr44, m_day_2243, line(day_1, 291)).
argument(v_tomorrow_3629, 1, day_1_expr44).
return(day_1_expr45, m_get_serial_index_2263, line(day_1, 306)).
method_invoc(day_1_expr45, m_to_serial_2261, line(day_1, 306)).
ref(f_serial_date_3617, day_1_expr45, line(day_1, 306)).
param(p_calendar_3630, 1, m_get_first_millisecond_2257).
assign(v_year_3631, day_1_expr48, line(day_1, 321)).
method_invoc(day_1_expr48, m_get_yyyy_2264, line(day_1, 321)).
ref(f_serial_date_3617, day_1_expr48, line(day_1, 321)).
assign(v_month_3632, day_1_expr51, line(day_1, 322)).
method_invoc(day_1_expr51, m_get_month_2265, line(day_1, 322)).
ref(f_serial_date_3617, day_1_expr51, line(day_1, 322)).
assign(v_day_3633, day_1_expr54, line(day_1, 323)).
method_invoc(day_1_expr54, m_get_day_of_month_2266, line(day_1, 323)).
ref(f_serial_date_3617, day_1_expr54, line(day_1, 323)).
method_invoc(day_1_expr57, m_clear_2267, line(day_1, 324)).
ref(p_calendar_3630, day_1_expr57, line(day_1, 324)).
method_invoc(day_1_expr58, m_set_2268, line(day_1, 325)).
argument(v_year_3631, 1, day_1_expr58).
argument(day_1_expr59, 2, day_1_expr58).
argument(v_day_3633, 3, day_1_expr58).
argument(day_1_literal6, 4, day_1_expr58).
argument(day_1_literal7, 5, day_1_expr58).
argument(day_1_literal8, 6, day_1_expr58).
ref(p_calendar_3630, day_1_expr58, line(day_1, 325)).
method_invoc(day_1_expr60, m_set_2269, line(day_1, 326)).
argument(q_millisecond_83, 1, day_1_expr60).
argument(day_1_literal10, 2, day_1_expr60).
ref(p_calendar_3630, day_1_expr60, line(day_1, 326)).
ref(t_calendar_44, q_millisecond_83, line(day_1, 326)).
return(day_1_expr61, m_get_first_millisecond_2257, line(day_1, 328)).
method_invoc(day_1_expr61, m_get_time_2232, line(day_1, 328)).
ref(day_1_expr62, day_1_expr61, line(day_1, 328)).
method_invoc(day_1_expr62, m_get_time_2270, line(day_1, 328)).
ref(p_calendar_3630, day_1_expr62, line(day_1, 328)).
param(p_calendar_3634, 1, m_get_last_millisecond_2258).
assign(v_year_3635, day_1_expr63, line(day_1, 343)).
method_invoc(day_1_expr63, m_get_yyyy_2264, line(day_1, 343)).
ref(f_serial_date_3617, day_1_expr63, line(day_1, 343)).
assign(v_month_3636, day_1_expr66, line(day_1, 344)).
method_invoc(day_1_expr66, m_get_month_2265, line(day_1, 344)).
ref(f_serial_date_3617, day_1_expr66, line(day_1, 344)).
assign(v_day_3637, day_1_expr69, line(day_1, 345)).
method_invoc(day_1_expr69, m_get_day_of_month_2266, line(day_1, 345)).
ref(f_serial_date_3617, day_1_expr69, line(day_1, 345)).
method_invoc(day_1_expr72, m_clear_2267, line(day_1, 346)).
ref(p_calendar_3634, day_1_expr72, line(day_1, 346)).
method_invoc(day_1_expr73, m_set_2268, line(day_1, 347)).
argument(v_year_3635, 1, day_1_expr73).
argument(day_1_expr74, 2, day_1_expr73).
argument(v_day_3637, 3, day_1_expr73).
argument(day_1_literal11, 4, day_1_expr73).
argument(day_1_literal12, 5, day_1_expr73).
argument(day_1_literal13, 6, day_1_expr73).
ref(p_calendar_3634, day_1_expr73, line(day_1, 347)).
method_invoc(day_1_expr75, m_set_2269, line(day_1, 348)).
argument(q_millisecond_84, 1, day_1_expr75).
argument(day_1_literal15, 2, day_1_expr75).
ref(p_calendar_3634, day_1_expr75, line(day_1, 348)).
ref(t_calendar_44, q_millisecond_84, line(day_1, 348)).
return(day_1_expr76, m_get_last_millisecond_2258, line(day_1, 350)).
method_invoc(day_1_expr76, m_get_time_2232, line(day_1, 350)).
ref(day_1_expr77, day_1_expr76, line(day_1, 350)).
method_invoc(day_1_expr77, m_get_time_2270, line(day_1, 350)).
ref(p_calendar_3634, day_1_expr77, line(day_1, 350)).
param(p_obj_3638, 1, m_equals_2271).
param(p_o_1_3639, 1, m_compare_to_2273).
assign(v_d_3640, day_1_expr79, line(day_1, 409)).
assign(day_1_expr79, p_o_1_3639, line(day_1, 409)).
assign(v_result_3641, day_1_expr81, line(day_1, 410)).
method_invoc(day_1_expr82, m_compare_2274, line(day_1, 410)).
argument(f_serial_date_3617, 1, day_1_expr82).
ref(day_1_expr84, day_1_expr82, line(day_1, 410)).
method_invoc(day_1_expr84, m_get_serial_date_2251, line(day_1, 410)).
ref(v_d_3640, day_1_expr84, line(day_1, 410)).
return(v_result_3641, m_compare_to_2273, line(day_1, 427)).
param(p_s_3642, 1, m_parse_day_2276).

%abstract_dataset_1 - org.jfree.data.general.AbstractDataset
assign(f_group_3421, abstract_dataset_1_expr3, line(abstract_dataset_1, 93)).
method_invoc(abstract_dataset_1_expr3, m_dataset_group_2113, line(abstract_dataset_1, 93)).
assign(f_listener_list_3422, abstract_dataset_1_expr7, line(abstract_dataset_1, 94)).
method_invoc(abstract_dataset_1_expr7, m_event_listener_list_71, line(abstract_dataset_1, 94)).
param(p_group_3423, 1, m_set_group_2115).
param(p_listener_3424, 1, m_add_change_listener_2116).
method_invoc(abstract_dataset_1_expr9, m_add_355, line(abstract_dataset_1, 130)).
argument(abstract_dataset_1_expr10, 1, abstract_dataset_1_expr9).
argument(p_listener_3424, 2, abstract_dataset_1_expr9).
ref(f_listener_list_3422, abstract_dataset_1_expr9, line(abstract_dataset_1, 130)).
param(p_listener_3425, 1, m_remove_change_listener_2117).
param(p_listener_3426, 1, m_has_listener_2118).
method_invoc(abstract_dataset_1_expr13, m_notify_listeners_2120, line(abstract_dataset_1, 168)).
argument(abstract_dataset_1_expr14, 1, abstract_dataset_1_expr13).
method_invoc(abstract_dataset_1_expr14, m_dataset_change_event_1212, line(abstract_dataset_1, 168)).
argument(abstract_dataset_1_expr15, 1, abstract_dataset_1_expr14).
argument(abstract_dataset_1_expr16, 2, abstract_dataset_1_expr14).
param(p_event_3427, 1, m_notify_listeners_2120).
assign(v_listeners_3428, abstract_dataset_1_expr17, line(abstract_dataset_1, 182)).
method_invoc(abstract_dataset_1_expr17, m_get_listener_list_145, line(abstract_dataset_1, 182)).
ref(f_listener_list_3422, abstract_dataset_1_expr17, line(abstract_dataset_1, 182)).
assign(v_i_3429, abstract_dataset_1_expr21, line(abstract_dataset_1, 183)).
ref(v_listeners_3428, q_length_72, line(abstract_dataset_1, 183)).
assign(v_i_3429, abstract_dataset_1_literal3, line(abstract_dataset_1, 183)).
ref(v_listeners_3428, abstract_dataset_1_expr25, line(abstract_dataset_1, 184)).
method_invoc(abstract_dataset_1_expr27, m_dataset_changed_2121, line(abstract_dataset_1, 185)).
argument(p_event_3427, 1, abstract_dataset_1_expr27).
ref(abstract_dataset_1_expr28, abstract_dataset_1_expr27, line(abstract_dataset_1, 185)).
assign(abstract_dataset_1_expr28, abstract_dataset_1_expr29, line(abstract_dataset_1, 185)).
assign(abstract_dataset_1_expr29, abstract_dataset_1_expr30, line(abstract_dataset_1, 185)).
ref(v_listeners_3428, abstract_dataset_1_expr30, line(abstract_dataset_1, 185)).
throw(m_clone_2122, clone_not_supported_exception).
param(p_stream_3430, 1, m_write_object_2123).
throw(m_write_object_2123, ioexception).
param(p_stream_3431, 1, m_read_object_2124).
throw(m_read_object_2124, ioexception).
throw(m_read_object_2124, class_not_found_exception).
throw(m_validate_object_2125, invalid_object_exception).

%series_change_event_1 - org.jfree.data.general.SeriesChangeEvent
param(p_source_3597, 1, m_series_change_event_2223).
method_invoc(series_change_event_1_expr1, m_series_change_event_2227, line(series_change_event_1, 69)).
argument(p_source_3597, 1, series_change_event_1_expr1).
argument(series_change_event_1_literal1, 2, series_change_event_1_expr1).
param(p_source_3598, 1, m_series_change_event_2227).
param(p_summary_3599, 2, m_series_change_event_2227).
method_invoc(series_change_event_1_expr2, m_event_object_763, line(series_change_event_1, 81)).
argument(p_source_3598, 1, series_change_event_1_expr2).
assign(f_summary_3600, p_summary_3599, line(series_change_event_1, 82)).
param(p_summary_3601, 1, m_set_summary_2229).

%range_1 - org.jfree.data.Range
param(p_lower_3389, 1, m_range_501).
param(p_upper_3390, 2, m_range_501).
assign(f_lower_3391, p_lower_3389, line(range_1, 92)).
assign(f_upper_3392, p_upper_3390, line(range_1, 93)).
return(f_lower_3391, m_get_lower_bound_494, line(range_1, 102)).
return(f_upper_3392, m_get_upper_bound_493, line(range_1, 111)).
param(p_value_3393, 1, m_contains_2094).
param(p_b_0_3394, 1, m_intersects_2095).
param(p_b_1_3395, 2, m_intersects_2095).
param(p_range_3396, 1, m_intersects_2096).
param(p_value_3397, 1, m_constrain_2097).
param(p_range_1_3398, 1, m_combine_1336).
param(p_range_2_3399, 2, m_combine_1336).
return(p_range_2_3399, m_combine_1336, line(range_1, 215)).
param(p_range_3400, 1, m_expand_to_include_2098).
param(p_value_3401, 2, m_expand_to_include_2098).
param(p_range_3402, 1, m_expand_2099).
param(p_lower_margin_3403, 2, m_expand_2099).
param(p_upper_margin_3404, 3, m_expand_2099).
param(p_base_3405, 1, m_shift_2100).
param(p_delta_3406, 2, m_shift_2100).
param(p_base_3407, 1, m_shift_2101).
param(p_delta_3408, 2, m_shift_2101).
param(p_allow_zero_crossing_3409, 3, m_shift_2101).
param(p_value_3410, 1, m_shift_with_no_zero_crossing_2102).
param(p_delta_3411, 2, m_shift_with_no_zero_crossing_2102).
param(p_base_3412, 1, m_scale_2103).
param(p_factor_3413, 2, m_scale_2103).
param(p_obj_3414, 1, m_equals_2104).

%date_tick_mark_position_1 - org.jfree.chart.axis.DateTickMarkPosition
assign(f_start_760, date_tick_mark_position_1_expr1, line(date_tick_mark_position_1, 56)).
assign(f_middle_761, date_tick_mark_position_1_expr2, line(date_tick_mark_position_1, 60)).
assign(f_end_762, date_tick_mark_position_1_expr3, line(date_tick_mark_position_1, 64)).
param(p_name_763, 1, m_date_tick_mark_position_448).
assign(f_name_764, p_name_763, line(date_tick_mark_position_1, 76)).
param(p_obj_765, 1, m_equals_450).
throw(m_read_resolve_451, object_stream_exception).

%unit_type_1 - org.jfree.chart.util.UnitType
assign(f_absolute_3279, unit_type_1_expr1, line(unit_type_1, 56)).
method_invoc(unit_type_1_expr1, m_unit_type_2056, line(unit_type_1, 56)).
argument(unit_type_1_literal1, 1, unit_type_1_expr1).
assign(f_relative_3352, unit_type_1_expr2, line(unit_type_1, 59)).
method_invoc(unit_type_1_expr2, m_unit_type_2056, line(unit_type_1, 59)).
argument(unit_type_1_literal2, 1, unit_type_1_expr2).
param(p_name_3353, 1, m_unit_type_2056).
assign(f_name_3354, p_name_3353, line(unit_type_1, 70)).
param(p_obj_3355, 1, m_equals_2058).
throw(m_read_resolve_2060, object_stream_exception).

%default_keyed_values_1 - org.jfree.data.DefaultKeyedValues
assign(f_keys_3361, default_keyed_values_1_expr3, line(default_keyed_values_1, 98)).
method_invoc(default_keyed_values_1_expr3, m_array_list_75, line(default_keyed_values_1, 98)).
assign(f_values_3362, default_keyed_values_1_expr7, line(default_keyed_values_1, 99)).
method_invoc(default_keyed_values_1_expr7, m_array_list_75, line(default_keyed_values_1, 99)).
assign(f_index_map_3363, default_keyed_values_1_expr11, line(default_keyed_values_1, 100)).
method_invoc(default_keyed_values_1_expr11, m_hash_map_1159, line(default_keyed_values_1, 100)).
param(p_item_3364, 1, m_get_value_2068).
param(p_index_3365, 1, m_get_key_2069).
param(p_key_3366, 1, m_get_index_2070).
assign(v_i_3367, default_keyed_values_1_expr14, line(default_keyed_values_1, 152)).
assign(default_keyed_values_1_expr14, default_keyed_values_1_expr15, line(default_keyed_values_1, 152)).
method_invoc(default_keyed_values_1_expr15, m_get_2071, line(default_keyed_values_1, 152)).
argument(p_key_3366, 1, default_keyed_values_1_expr15).
ref(f_index_map_3363, default_keyed_values_1_expr15, line(default_keyed_values_1, 152)).
return(default_keyed_values_1_expr19, m_get_index_2070, line(default_keyed_values_1, 154)).
param(p_key_3368, 1, m_get_value_2073).
param(p_key_3369, 1, m_add_value_2074).
param(p_value_3370, 2, m_add_value_2074).
param(p_key_3371, 1, m_add_value_2075).
param(p_value_3372, 2, m_add_value_2075).
param(p_key_3373, 1, m_set_value_2076).
param(p_value_3374, 2, m_set_value_2076).
param(p_key_3375, 1, m_set_value_2077).
param(p_value_3376, 2, m_set_value_2077).
assign(v_key_index_3377, default_keyed_values_1_expr21, line(default_keyed_values_1, 231)).
method_invoc(default_keyed_values_1_expr21, m_get_index_2070, line(default_keyed_values_1, 231)).
argument(p_key_3375, 1, default_keyed_values_1_expr21).
method_invoc(default_keyed_values_1_expr23, m_add_2078, line(default_keyed_values_1, 237)).
argument(p_key_3375, 1, default_keyed_values_1_expr23).
ref(f_keys_3361, default_keyed_values_1_expr23, line(default_keyed_values_1, 237)).
method_invoc(default_keyed_values_1_expr26, m_add_2078, line(default_keyed_values_1, 238)).
argument(p_value_3376, 1, default_keyed_values_1_expr26).
ref(f_values_3362, default_keyed_values_1_expr26, line(default_keyed_values_1, 238)).
method_invoc(default_keyed_values_1_expr29, m_put_2079, line(default_keyed_values_1, 239)).
argument(p_key_3375, 1, default_keyed_values_1_expr29).
argument(default_keyed_values_1_expr30, 2, default_keyed_values_1_expr29).
ref(f_index_map_3363, default_keyed_values_1_expr29, line(default_keyed_values_1, 239)).
method_invoc(default_keyed_values_1_expr30, m_integer_1086, line(default_keyed_values_1, 239)).
argument(default_keyed_values_1_expr33, 1, default_keyed_values_1_expr30).
method_invoc(default_keyed_values_1_expr34, m_size_2080, line(default_keyed_values_1, 239)).
ref(f_keys_3361, default_keyed_values_1_expr34, line(default_keyed_values_1, 239)).
param(p_position_3378, 1, m_insert_value_2081).
param(p_key_3379, 2, m_insert_value_2081).
param(p_value_3380, 3, m_insert_value_2081).
param(p_position_3381, 1, m_insert_value_2082).
param(p_key_3382, 2, m_insert_value_2082).
param(p_value_3383, 3, m_insert_value_2082).
param(p_index_3384, 1, m_remove_value_2084).
param(p_key_3385, 1, m_remove_value_2085).
param(p_order_3386, 1, m_sort_by_keys_2087).
param(p_order_3387, 1, m_sort_by_values_2088).
param(p_obj_3388, 1, m_equals_2089).
throw(m_clone_2091, clone_not_supported_exception).

%axis_location_1 - org.jfree.chart.axis.AxisLocation
assign(f_top_or_left_640, axis_location_1_expr1, line(axis_location_1, 61)).
method_invoc(axis_location_1_expr1, m_axis_location_368, line(axis_location_1, 61)).
argument(axis_location_1_literal1, 1, axis_location_1_expr1).
assign(f_top_or_right_641, axis_location_1_expr2, line(axis_location_1, 65)).
method_invoc(axis_location_1_expr2, m_axis_location_368, line(axis_location_1, 65)).
argument(axis_location_1_literal2, 1, axis_location_1_expr2).
assign(f_bottom_or_left_642, axis_location_1_expr3, line(axis_location_1, 69)).
method_invoc(axis_location_1_expr3, m_axis_location_368, line(axis_location_1, 69)).
argument(axis_location_1_literal3, 1, axis_location_1_expr3).
assign(f_bottom_or_right_643, axis_location_1_expr4, line(axis_location_1, 73)).
method_invoc(axis_location_1_expr4, m_axis_location_368, line(axis_location_1, 73)).
argument(axis_location_1_literal4, 1, axis_location_1_expr4).
param(p_name_644, 1, m_axis_location_368).
assign(f_name_645, p_name_644, line(axis_location_1, 85)).
param(p_obj_646, 1, m_equals_371).
param(p_location_647, 1, m_get_opposite_372).
throw(m_read_resolve_373, object_stream_exception).

%abstract_pie_item_label_generator_1 - org.jfree.chart.labels.AbstractPieItemLabelGenerator
param(p_label_format_1301, 1, m_abstract_pie_item_label_generator_845).
param(p_number_format_1302, 2, m_abstract_pie_item_label_generator_845).
param(p_percent_format_1303, 3, m_abstract_pie_item_label_generator_845).
assign(f_label_format_1304, p_label_format_1301, line(abstract_pie_item_label_generator_1, 96)).
assign(f_number_format_1305, p_number_format_1302, line(abstract_pie_item_label_generator_1, 97)).
assign(f_percent_format_1306, p_percent_format_1303, line(abstract_pie_item_label_generator_1, 98)).
param(p_dataset_1307, 1, m_create_item_array_849).
param(p_key_1308, 2, m_create_item_array_849).
param(p_dataset_1309, 1, m_generate_section_label_850).
param(p_key_1310, 2, m_generate_section_label_850).
param(p_obj_1311, 1, m_equals_851).
throw(m_clone_853, clone_not_supported_exception).

%time_series_1 - org.jfree.data.time.TimeSeries
param(p_name_3756, 1, m_time_series_795).
method_invoc(time_series_1_expr1, m_time_series_2358, line(time_series_1, 168)).
argument(p_name_3756, 1, time_series_1_expr1).
argument(f_default_domain_description_3757, 2, time_series_1_expr1).
argument(f_default_range_description_3758, 3, time_series_1_expr1).
param(p_name_3759, 1, m_time_series_2358).
param(p_domain_3760, 2, m_time_series_2358).
param(p_range_3761, 3, m_time_series_2358).
method_invoc(time_series_1_expr2, m_series_2205, line(time_series_1, 185)).
argument(p_name_3759, 1, time_series_1_expr2).
assign(f_domain_3762, p_domain_3760, line(time_series_1, 186)).
assign(f_range_3763, p_range_3761, line(time_series_1, 187)).
assign(f_time_period_class_3764, time_series_1_literal1, line(time_series_1, 188)).
assign(f_data_3765, time_series_1_expr14, line(time_series_1, 189)).
method_invoc(time_series_1_expr14, m_array_list_75, line(time_series_1, 189)).
assign(f_maximum_item_count_3766, q_max_value_87, line(time_series_1, 190)).
ref(t_integer_36, q_max_value_87, line(time_series_1, 190)).
assign(f_maximum_item_age_3767, q_max_value_87, line(time_series_1, 191)).
ref(t_long_48, q_max_value_87, line(time_series_1, 191)).
assign(f_min_y_3768, q_na_n_88, line(time_series_1, 192)).
ref(t_double_42, q_na_n_88, line(time_series_1, 192)).
assign(f_max_y_3769, q_na_n_89, line(time_series_1, 193)).
ref(t_double_42, q_na_n_89, line(time_series_1, 193)).
param(p_description_3770, 1, m_set_domain_description_2360).
param(p_description_3771, 1, m_set_range_description_2362).
return(time_series_1_expr28, m_get_item_count_2363, line(time_series_1, 253)).
method_invoc(time_series_1_expr28, m_size_105, line(time_series_1, 253)).
ref(f_data_3765, time_series_1_expr28, line(time_series_1, 253)).
param(p_maximum_3772, 1, m_set_maximum_item_count_2366).
param(p_periods_3773, 1, m_set_maximum_item_age_2368).
param(p_index_3774, 1, m_get_data_item_2372).
param(p_period_3775, 1, m_get_data_item_2373).
param(p_index_3776, 1, m_get_raw_data_item_2374).
return(time_series_1_expr31, m_get_raw_data_item_2374, line(time_series_1, 428)).
assign(time_series_1_expr31, time_series_1_expr32, line(time_series_1, 428)).
method_invoc(time_series_1_expr32, m_get_107, line(time_series_1, 428)).
argument(p_index_3776, 1, time_series_1_expr32).
ref(f_data_3765, time_series_1_expr32, line(time_series_1, 428)).
param(p_period_3777, 1, m_get_raw_data_item_2375).
param(p_index_3778, 1, m_get_time_period_2376).
return(time_series_1_expr35, m_get_time_period_2376, line(time_series_1, 462)).
method_invoc(time_series_1_expr35, m_get_period_2377, line(time_series_1, 462)).
ref(time_series_1_expr36, time_series_1_expr35, line(time_series_1, 462)).
method_invoc(time_series_1_expr36, m_get_raw_data_item_2374, line(time_series_1, 462)).
argument(p_index_3778, 1, time_series_1_expr36).
param(p_series_3779, 1, m_get_time_periods_unique_to_other_series_2380).
param(p_period_3780, 1, m_get_index_2381).
param(p_index_3781, 1, m_get_value_2382).
param(p_period_3782, 1, m_get_value_2383).
param(p_item_3783, 1, m_add_2384).
param(p_item_3784, 1, m_add_2385).
param(p_notify_3785, 2, m_add_2385).
assign(p_item_3784, time_series_1_expr39, line(time_series_1, 578)).
assign(time_series_1_expr39, time_series_1_expr40, line(time_series_1, 578)).
method_invoc(time_series_1_expr40, m_clone_2386, line(time_series_1, 578)).
ref(p_item_3784, time_series_1_expr40, line(time_series_1, 578)).
assign(v_c_3786, time_series_1_expr41, line(time_series_1, 579)).
method_invoc(time_series_1_expr41, m_get_class_2387, line(time_series_1, 579)).
ref(time_series_1_expr42, time_series_1_expr41, line(time_series_1, 579)).
method_invoc(time_series_1_expr42, m_get_period_2377, line(time_series_1, 579)).
ref(p_item_3784, time_series_1_expr42, line(time_series_1, 579)).
assign(f_time_period_class_3764, v_c_3786, line(time_series_1, 581)).
method_invoc(time_series_1_expr50, m_equals_122, line(time_series_1, 583)).
argument(v_c_3786, 1, time_series_1_expr50).
ref(f_time_period_class_3764, time_series_1_expr50, line(time_series_1, 583)).
assign(v_added_3787, time_series_1_literal4, line(time_series_1, 595)).
assign(v_count_3788, time_series_1_expr53, line(time_series_1, 596)).
method_invoc(time_series_1_expr53, m_get_item_count_2363, line(time_series_1, 596)).
method_invoc(time_series_1_expr55, m_add_82, line(time_series_1, 598)).
argument(p_item_3784, 1, time_series_1_expr55).
ref(f_data_3765, time_series_1_expr55, line(time_series_1, 598)).
assign(v_added_3787, time_series_1_literal6, line(time_series_1, 599)).
assign(v_last_3789, time_series_1_expr59, line(time_series_1, 602)).
method_invoc(time_series_1_expr59, m_get_time_period_2376, line(time_series_1, 602)).
argument(time_series_1_expr60, 1, time_series_1_expr59).
method_invoc(time_series_1_expr61, m_get_item_count_2363, line(time_series_1, 602)).
method_invoc(time_series_1_expr63, m_compare_to_2388, line(time_series_1, 603)).
argument(v_last_3789, 1, time_series_1_expr63).
ref(time_series_1_expr64, time_series_1_expr63, line(time_series_1, 603)).
method_invoc(time_series_1_expr64, m_get_period_2377, line(time_series_1, 603)).
ref(p_item_3784, time_series_1_expr64, line(time_series_1, 603)).
method_invoc(time_series_1_expr65, m_add_82, line(time_series_1, 604)).
argument(p_item_3784, 1, time_series_1_expr65).
ref(f_data_3765, time_series_1_expr65, line(time_series_1, 604)).
assign(v_added_3787, time_series_1_literal9, line(time_series_1, 605)).
method_invoc(time_series_1_expr69, m_update_bounds_for_added_item_2389, line(time_series_1, 626)).
argument(p_item_3784, 1, time_series_1_expr69).
method_invoc(time_series_1_expr71, m_get_item_count_2363, line(time_series_1, 628)).
method_invoc(time_series_1_expr74, m_remove_aged_items_2390, line(time_series_1, 633)).
argument(time_series_1_literal10, 1, time_series_1_expr74).
method_invoc(time_series_1_expr75, m_fire_series_changed_2221, line(time_series_1, 637)).
param(p_period_3790, 1, m_add_796).
param(p_value_3791, 2, m_add_796).
method_invoc(time_series_1_expr76, m_add_2391, line(time_series_1, 652)).
argument(p_period_3790, 1, time_series_1_expr76).
argument(p_value_3791, 2, time_series_1_expr76).
argument(time_series_1_literal11, 3, time_series_1_expr76).
param(p_period_3792, 1, m_add_2391).
param(p_value_3793, 2, m_add_2391).
param(p_notify_3794, 3, m_add_2391).
assign(v_item_3795, time_series_1_expr77, line(time_series_1, 665)).
method_invoc(time_series_1_expr77, m_time_series_data_item_2392, line(time_series_1, 665)).
argument(p_period_3792, 1, time_series_1_expr77).
argument(p_value_3793, 2, time_series_1_expr77).
method_invoc(time_series_1_expr78, m_add_2385, line(time_series_1, 666)).
argument(v_item_3795, 1, time_series_1_expr78).
argument(p_notify_3794, 2, time_series_1_expr78).
param(p_period_3796, 1, m_add_2393).
param(p_value_3797, 2, m_add_2393).
param(p_period_3798, 1, m_add_2394).
param(p_value_3799, 2, m_add_2394).
param(p_notify_3800, 3, m_add_2394).
param(p_period_3801, 1, m_update_2395).
param(p_value_3802, 2, m_update_2395).
param(p_index_3803, 1, m_update_2396).
param(p_value_3804, 2, m_update_2396).
param(p_series_3805, 1, m_add_and_or_update_2397).
param(p_period_3806, 1, m_add_or_update_2398).
param(p_value_3807, 2, m_add_or_update_2398).
param(p_period_3808, 1, m_add_or_update_2399).
param(p_value_3809, 2, m_add_or_update_2399).
param(p_item_3810, 1, m_add_or_update_2400).
param(p_notify_3811, 1, m_remove_aged_items_2390).
method_invoc(time_series_1_expr80, m_get_item_count_2363, line(time_series_1, 876)).
assign(v_latest_3812, time_series_1_expr81, line(time_series_1, 877)).
method_invoc(time_series_1_expr81, m_get_serial_index_2280, line(time_series_1, 877)).
ref(time_series_1_expr82, time_series_1_expr81, line(time_series_1, 877)).
method_invoc(time_series_1_expr82, m_get_time_period_2376, line(time_series_1, 877)).
argument(time_series_1_expr83, 1, time_series_1_expr82).
method_invoc(time_series_1_expr84, m_get_item_count_2363, line(time_series_1, 877)).
assign(v_removed_3813, time_series_1_literal14, line(time_series_1, 878)).
param(p_latest_3814, 1, m_remove_aged_items_2401).
param(p_notify_3815, 2, m_remove_aged_items_2401).
param(p_period_3816, 1, m_delete_2403).
param(p_start_3817, 1, m_delete_2404).
param(p_end_3818, 2, m_delete_2404).
param(p_start_3819, 1, m_delete_2405).
param(p_end_3820, 2, m_delete_2405).
param(p_notify_3821, 3, m_delete_2405).
throw(m_clone_2406, clone_not_supported_exception).
param(p_start_3822, 1, m_create_copy_2407).
param(p_end_3823, 2, m_create_copy_2407).
throw(m_create_copy_2407, clone_not_supported_exception).
param(p_start_3824, 1, m_create_copy_2408).
param(p_end_3825, 2, m_create_copy_2408).
throw(m_create_copy_2408, clone_not_supported_exception).
param(p_obj_3826, 1, m_equals_2409).
param(p_item_3827, 1, m_update_bounds_for_added_item_2389).
assign(v_y_n_3828, time_series_1_expr88, line(time_series_1, 1212)).
method_invoc(time_series_1_expr88, m_get_value_2411, line(time_series_1, 1212)).
ref(p_item_3827, time_series_1_expr88, line(time_series_1, 1212)).
method_invoc(time_series_1_expr90, m_get_value_2411, line(time_series_1, 1213)).
ref(p_item_3827, time_series_1_expr90, line(time_series_1, 1213)).
assign(v_y_3829, time_series_1_expr91, line(time_series_1, 1214)).
method_invoc(time_series_1_expr91, m_double_value_2412, line(time_series_1, 1214)).
ref(v_y_n_3828, time_series_1_expr91, line(time_series_1, 1214)).
assign(f_min_y_3768, time_series_1_expr94, line(time_series_1, 1215)).
method_invoc(time_series_1_expr94, m_min_ignore_na_n_2413, line(time_series_1, 1215)).
argument(f_min_y_3768, 1, time_series_1_expr94).
argument(v_y_3829, 2, time_series_1_expr94).
assign(f_max_y_3769, time_series_1_expr100, line(time_series_1, 1216)).
method_invoc(time_series_1_expr100, m_max_ignore_na_n_2414, line(time_series_1, 1216)).
argument(f_max_y_3769, 1, time_series_1_expr100).
argument(v_y_3829, 2, time_series_1_expr100).
param(p_item_3830, 1, m_update_bounds_for_removed_item_2415).
param(p_a_3831, 1, m_min_ignore_na_n_2413).
param(p_b_3832, 2, m_min_ignore_na_n_2413).
method_invoc(time_series_1_expr104, m_is_na_n_2417, line(time_series_1, 1266)).
argument(p_a_3831, 1, time_series_1_expr104).
ref(t_double_42, time_series_1_expr104, line(time_series_1, 1266)).
return(p_b_3832, m_min_ignore_na_n_2413, line(time_series_1, 1267)).
method_invoc(time_series_1_expr105, m_is_na_n_2417, line(time_series_1, 1270)).
argument(p_b_3832, 1, time_series_1_expr105).
ref(t_double_42, time_series_1_expr105, line(time_series_1, 1270)).
return(time_series_1_expr106, m_min_ignore_na_n_2413, line(time_series_1, 1274)).
method_invoc(time_series_1_expr106, m_min_495, line(time_series_1, 1274)).
argument(p_a_3831, 1, time_series_1_expr106).
argument(p_b_3832, 2, time_series_1_expr106).
ref(t_math_18, time_series_1_expr106, line(time_series_1, 1274)).
param(p_a_3833, 1, m_max_ignore_na_n_2414).
param(p_b_3834, 2, m_max_ignore_na_n_2414).
method_invoc(time_series_1_expr107, m_is_na_n_2417, line(time_series_1, 1289)).
argument(p_a_3833, 1, time_series_1_expr107).
ref(t_double_42, time_series_1_expr107, line(time_series_1, 1289)).
return(p_b_3834, m_max_ignore_na_n_2414, line(time_series_1, 1290)).
method_invoc(time_series_1_expr108, m_is_na_n_2417, line(time_series_1, 1293)).
argument(p_b_3834, 1, time_series_1_expr108).
ref(t_double_42, time_series_1_expr108, line(time_series_1, 1293)).
return(time_series_1_expr109, m_max_ignore_na_n_2414, line(time_series_1, 1297)).
method_invoc(time_series_1_expr109, m_max_496, line(time_series_1, 1297)).
argument(p_a_3833, 1, time_series_1_expr109).
argument(p_b_3834, 2, time_series_1_expr109).
ref(t_math_18, time_series_1_expr109, line(time_series_1, 1297)).

%xyseries_collection_1 - org.jfree.data.xy.XYSeriesCollection
method_invoc(xyseries_collection_1_expr1, m_xyseries_collection_664, line(xyseries_collection_1, 105)).
argument(xyseries_collection_1_literal1, 1, xyseries_collection_1_expr1).
param(p_series_4045, 1, m_xyseries_collection_664).
assign(f_data_4046, xyseries_collection_1_expr4, line(xyseries_collection_1, 114)).
method_invoc(xyseries_collection_1_expr4, m_array_list_75, line(xyseries_collection_1, 114)).
assign(f_interval_delegate_4047, xyseries_collection_1_expr8, line(xyseries_collection_1, 115)).
method_invoc(xyseries_collection_1_expr8, m_interval_xydelegate_2487, line(xyseries_collection_1, 115)).
argument(xyseries_collection_1_expr10, 1, xyseries_collection_1_expr8).
argument(xyseries_collection_1_literal2, 2, xyseries_collection_1_expr8).
method_invoc(xyseries_collection_1_expr11, m_add_change_listener_2116, line(xyseries_collection_1, 116)).
argument(f_interval_delegate_4047, 1, xyseries_collection_1_expr11).
method_invoc(xyseries_collection_1_expr15, m_add_82, line(xyseries_collection_1, 118)).
argument(p_series_4045, 1, xyseries_collection_1_expr15).
ref(f_data_4046, xyseries_collection_1_expr15, line(xyseries_collection_1, 118)).
method_invoc(xyseries_collection_1_expr18, m_add_change_listener_2219, line(xyseries_collection_1, 119)).
argument(xyseries_collection_1_expr19, 1, xyseries_collection_1_expr18).
ref(p_series_4045, xyseries_collection_1_expr18, line(xyseries_collection_1, 119)).
method_invoc(xyseries_collection_1_expr20, m_set_selection_state_2422, line(xyseries_collection_1, 121)).
argument(xyseries_collection_1_expr21, 1, xyseries_collection_1_expr20).
param(p_series_4048, 1, m_add_series_641).
method_invoc(xyseries_collection_1_expr23, m_add_82, line(xyseries_collection_1, 150)).
argument(p_series_4048, 1, xyseries_collection_1_expr23).
ref(f_data_4046, xyseries_collection_1_expr23, line(xyseries_collection_1, 150)).
method_invoc(xyseries_collection_1_expr26, m_add_change_listener_2219, line(xyseries_collection_1, 151)).
argument(xyseries_collection_1_expr27, 1, xyseries_collection_1_expr26).
ref(p_series_4048, xyseries_collection_1_expr26, line(xyseries_collection_1, 151)).
method_invoc(xyseries_collection_1_expr28, m_fire_dataset_changed_2119, line(xyseries_collection_1, 152)).
param(p_series_4049, 1, m_remove_series_2570).
param(p_series_4050, 1, m_remove_series_2571).
return(xyseries_collection_1_expr29, m_get_series_count_2573, line(xyseries_collection_1, 213)).
method_invoc(xyseries_collection_1_expr29, m_size_105, line(xyseries_collection_1, 213)).
ref(f_data_4046, xyseries_collection_1_expr29, line(xyseries_collection_1, 213)).
param(p_series_4051, 1, m_index_of_2575).
param(p_series_4052, 1, m_get_series_2576).
assign(xyseries_collection_1_expr33, xyseries_collection_1_expr34, line(xyseries_collection_1, 253)).
assign(xyseries_collection_1_expr35, xyseries_collection_1_expr36, line(xyseries_collection_1, 253)).
method_invoc(xyseries_collection_1_expr37, m_get_series_count_2573, line(xyseries_collection_1, 253)).
return(xyseries_collection_1_expr38, m_get_series_2576, line(xyseries_collection_1, 256)).
assign(xyseries_collection_1_expr38, xyseries_collection_1_expr39, line(xyseries_collection_1, 256)).
method_invoc(xyseries_collection_1_expr39, m_get_107, line(xyseries_collection_1, 256)).
argument(p_series_4052, 1, xyseries_collection_1_expr39).
ref(f_data_4046, xyseries_collection_1_expr39, line(xyseries_collection_1, 256)).
param(p_key_4053, 1, m_get_series_2577).
param(p_series_4054, 1, m_get_series_key_2578).
param(p_series_4055, 1, m_get_item_count_2579).
param(p_series_4056, 1, m_get_x_2580).
param(p_item_4057, 2, m_get_x_2580).
param(p_series_4058, 1, m_get_start_x_2581).
param(p_item_4059, 2, m_get_start_x_2581).
param(p_series_4060, 1, m_get_end_x_2582).
param(p_item_4061, 2, m_get_end_x_2582).
param(p_series_4062, 1, m_get_y_2583).
param(p_index_4063, 2, m_get_y_2583).
param(p_series_4064, 1, m_get_start_y_2584).
param(p_item_4065, 2, m_get_start_y_2584).
param(p_series_4066, 1, m_get_end_y_2585).
param(p_item_4067, 2, m_get_end_y_2585).
param(p_series_4068, 1, m_is_selected_2586).
param(p_item_4069, 2, m_is_selected_2586).
param(p_series_4070, 1, m_set_selected_2587).
param(p_item_4071, 2, m_set_selected_2587).
param(p_selected_4072, 3, m_set_selected_2587).
param(p_series_4073, 1, m_set_selected_2588).
param(p_item_4074, 2, m_set_selected_2588).
param(p_selected_4075, 3, m_set_selected_2588).
param(p_notify_4076, 4, m_set_selected_2588).
param(p_obj_4077, 1, m_equals_2590).
throw(m_clone_2591, clone_not_supported_exception).
param(p_include_interval_4078, 1, m_get_domain_lower_bound_2593).
param(p_include_interval_4079, 1, m_get_domain_upper_bound_2594).
param(p_include_interval_4080, 1, m_get_domain_bounds_2595).
return(xyseries_collection_1_expr42, m_get_domain_bounds_2595, line(xyseries_collection_1, 578)).
method_invoc(xyseries_collection_1_expr42, m_get_domain_bounds_2502, line(xyseries_collection_1, 578)).
argument(p_include_interval_4080, 1, xyseries_collection_1_expr42).
ref(f_interval_delegate_4047, xyseries_collection_1_expr42, line(xyseries_collection_1, 578)).
assign(v_lower_4081, q_positive_infinity_90, line(xyseries_collection_1, 581)).
ref(t_double_42, q_positive_infinity_90, line(xyseries_collection_1, 581)).
assign(v_upper_4082, q_negative_infinity_90, line(xyseries_collection_1, 582)).
ref(t_double_42, q_negative_infinity_90, line(xyseries_collection_1, 582)).
assign(v_series_count_4083, xyseries_collection_1_expr45, line(xyseries_collection_1, 583)).
method_invoc(xyseries_collection_1_expr45, m_get_series_count_2573, line(xyseries_collection_1, 583)).
assign(v_s_4084, xyseries_collection_1_literal6, line(xyseries_collection_1, 584)).
assign(v_series_4085, xyseries_collection_1_expr49, line(xyseries_collection_1, 585)).
method_invoc(xyseries_collection_1_expr49, m_get_series_2576, line(xyseries_collection_1, 585)).
argument(v_s_4084, 1, xyseries_collection_1_expr49).
assign(v_min_x_4086, xyseries_collection_1_expr50, line(xyseries_collection_1, 586)).
method_invoc(xyseries_collection_1_expr50, m_get_min_x_2526, line(xyseries_collection_1, 586)).
ref(v_series_4085, xyseries_collection_1_expr50, line(xyseries_collection_1, 586)).
method_invoc(xyseries_collection_1_expr52, m_is_na_n_2417, line(xyseries_collection_1, 587)).
argument(v_min_x_4086, 1, xyseries_collection_1_expr52).
ref(t_double_42, xyseries_collection_1_expr52, line(xyseries_collection_1, 587)).
assign(v_lower_4081, xyseries_collection_1_expr54, line(xyseries_collection_1, 588)).
method_invoc(xyseries_collection_1_expr54, m_min_495, line(xyseries_collection_1, 588)).
argument(v_lower_4081, 1, xyseries_collection_1_expr54).
argument(v_min_x_4086, 2, xyseries_collection_1_expr54).
ref(t_math_18, xyseries_collection_1_expr54, line(xyseries_collection_1, 588)).
assign(v_max_x_4087, xyseries_collection_1_expr55, line(xyseries_collection_1, 590)).
method_invoc(xyseries_collection_1_expr55, m_get_max_x_2527, line(xyseries_collection_1, 590)).
ref(v_series_4085, xyseries_collection_1_expr55, line(xyseries_collection_1, 590)).
method_invoc(xyseries_collection_1_expr57, m_is_na_n_2417, line(xyseries_collection_1, 591)).
argument(v_max_x_4087, 1, xyseries_collection_1_expr57).
ref(t_double_42, xyseries_collection_1_expr57, line(xyseries_collection_1, 591)).
assign(v_upper_4082, xyseries_collection_1_expr59, line(xyseries_collection_1, 592)).
method_invoc(xyseries_collection_1_expr59, m_max_496, line(xyseries_collection_1, 592)).
argument(v_upper_4082, 1, xyseries_collection_1_expr59).
argument(v_max_x_4087, 2, xyseries_collection_1_expr59).
ref(t_math_18, xyseries_collection_1_expr59, line(xyseries_collection_1, 592)).
return(xyseries_collection_1_expr61, m_get_domain_bounds_2595, line(xyseries_collection_1, 599)).
method_invoc(xyseries_collection_1_expr61, m_range_501, line(xyseries_collection_1, 599)).
argument(v_lower_4081, 1, xyseries_collection_1_expr61).
argument(v_upper_4082, 2, xyseries_collection_1_expr61).
param(p_width_4088, 1, m_set_interval_width_665).
method_invoc(xyseries_collection_1_expr63, m_set_fixed_interval_width_2493, line(xyseries_collection_1, 624)).
argument(p_width_4088, 1, xyseries_collection_1_expr63).
ref(f_interval_delegate_4047, xyseries_collection_1_expr63, line(xyseries_collection_1, 624)).
method_invoc(xyseries_collection_1_expr66, m_fire_dataset_changed_2119, line(xyseries_collection_1, 625)).
param(p_factor_4089, 1, m_set_interval_position_factor_2598).
param(p_b_4090, 1, m_set_auto_width_2600).
param(p_include_interval_4091, 1, m_get_range_bounds_2601).
param(p_include_interval_4092, 1, m_get_range_lower_bound_2602).
param(p_include_interval_4093, 1, m_get_range_upper_bound_2603).

%regular_time_period_1 - org.jfree.data.time.RegularTimePeriod
param(p_c_3643, 1, m_create_instance_2277).
param(p_millisecond_3644, 2, m_create_instance_2277).
param(p_zone_3645, 3, m_create_instance_2277).
param(p_c_3646, 1, m_downsize_2278).
param(p_calendar_3647, 1, m_peg_2281).
param(p_calendar_3648, 1, m_get_first_millisecond_2285).
param(p_calendar_3649, 1, m_get_last_millisecond_2287).
param(p_calendar_3650, 1, m_get_middle_millisecond_2289).

%time_period_anchor_1 - org.jfree.data.time.TimePeriodAnchor
assign(f_start_3750, time_period_anchor_1_expr1, line(time_period_anchor_1, 57)).
assign(f_middle_3751, time_period_anchor_1_expr2, line(time_period_anchor_1, 61)).
assign(f_end_3752, time_period_anchor_1_expr3, line(time_period_anchor_1, 65)).
param(p_name_3753, 1, m_time_period_anchor_2353).
assign(f_name_3754, p_name_3753, line(time_period_anchor_1, 77)).
param(p_obj_3755, 1, m_equals_2355).
throw(m_read_resolve_2357, object_stream_exception).

%xystep_renderer_1 - org.jfree.chart.renderer.xy.XYStepRenderer
assign(f_step_point_2965, xystep_renderer_1_literal1, line(xystep_renderer_1, 118)).
param(p_tool_tip_generator_2966, 1, m_xystep_renderer_1800).
param(p_url_generator_2967, 2, m_xystep_renderer_1800).
method_invoc(xystep_renderer_1_expr1, m_xyline_and_shape_renderer_1734, line(xystep_renderer_1, 137)).
method_invoc(xystep_renderer_1_expr2, m_set_base_tool_tip_generator_1681, line(xystep_renderer_1, 138)).
argument(p_tool_tip_generator_2966, 1, xystep_renderer_1_expr2).
method_invoc(xystep_renderer_1_expr3, m_set_base_urlgenerator_1688, line(xystep_renderer_1, 139)).
argument(p_url_generator_2967, 1, xystep_renderer_1_expr3).
method_invoc(xystep_renderer_1_expr4, m_set_base_shapes_visible_1752, line(xystep_renderer_1, 140)).
argument(xystep_renderer_1_literal2, 1, xystep_renderer_1_expr4).
param(p_step_point_2968, 1, m_set_step_point_1802).
param(p_g_2_2969, 1, m_draw_item_1803).
param(p_state_2970, 2, m_draw_item_1803).
param(p_data_area_2971, 3, m_draw_item_1803).
param(p_plot_2972, 4, m_draw_item_1803).
param(p_domain_axis_2973, 5, m_draw_item_1803).
param(p_range_axis_2974, 6, m_draw_item_1803).
param(p_dataset_2975, 7, m_draw_item_1803).
param(p_series_2976, 8, m_draw_item_1803).
param(p_item_2977, 9, m_draw_item_1803).
param(p_selected_2978, 10, m_draw_item_1803).
param(p_pass_2979, 11, m_draw_item_1803).
param(p_g_2_2980, 1, m_draw_line_1804).
param(p_line_2981, 2, m_draw_line_1804).
param(p_x_0_2982, 3, m_draw_line_1804).
param(p_y_0_2983, 4, m_draw_line_1804).
param(p_x_1_2984, 5, m_draw_line_1804).
param(p_y_1_2985, 6, m_draw_line_1804).
param(p_obj_2986, 1, m_equals_1805).
throw(m_clone_1807, clone_not_supported_exception).

%serial_date_1 - org.jfree.data.time.SerialDate
assign(f_date_format_symbols_3651, serial_date_1_expr1, line(serial_date_1, 92)).
method_invoc(serial_date_1_expr1, m_get_date_format_symbols_2291, line(serial_date_1, 92)).
ref(serial_date_1_expr2, serial_date_1_expr1, line(serial_date_1, 92)).
method_invoc(serial_date_1_expr2, m_simple_date_format_2292, line(serial_date_1, 92)).
assign(f_last_day_of_month_3652, serial_date_1_expr3, line(serial_date_1, 137)).
assign(f_aggregate_days_to_end_of_month_3653, serial_date_1_expr4, line(serial_date_1, 141)).
assign(f_aggregate_days_to_end_of_preceding_month_3654, serial_date_1_expr5, line(serial_date_1, 145)).
assign(f_leap_year_aggregate_days_to_end_of_month_3655, serial_date_1_expr6, line(serial_date_1, 149)).
assign(f_leap_year_aggregate_days_to_end_of_preceding_month_3656, serial_date_1_expr7, line(serial_date_1, 156)).
param(p_code_3657, 1, m_is_valid_weekday_code_2294).
param(p_s_3658, 1, m_string_to_weekday_code_2295).
param(p_weekday_3659, 1, m_weekday_code_to_string_2296).
param(p_shortened_3660, 1, m_get_months_2298).
param(p_code_3661, 1, m_is_valid_month_code_2299).
param(p_code_3662, 1, m_month_code_to_quarter_2300).
param(p_month_3663, 1, m_month_code_to_string_2301).
param(p_month_3664, 1, m_month_code_to_string_2302).
param(p_shortened_3665, 2, m_month_code_to_string_2302).
param(p_s_3666, 1, m_string_to_month_code_2303).
param(p_code_3667, 1, m_is_valid_week_in_month_code_2304).
param(p_yyyy_3668, 1, m_is_leap_year_2305).
assign(serial_date_1_expr9, serial_date_1_expr10, line(serial_date_1, 499)).
assign(serial_date_1_expr12, serial_date_1_expr13, line(serial_date_1, 502)).
assign(serial_date_1_expr15, serial_date_1_expr16, line(serial_date_1, 505)).
return(serial_date_1_literal7, m_is_leap_year_2305, line(serial_date_1, 509)).
param(p_yyyy_3669, 1, m_leap_year_count_2306).
assign(v_leap_4_3670, serial_date_1_expr17, line(serial_date_1, 526)).
assign(serial_date_1_expr18, serial_date_1_expr19, line(serial_date_1, 526)).
assign(v_leap_100_3671, serial_date_1_expr20, line(serial_date_1, 527)).
assign(serial_date_1_expr21, serial_date_1_expr22, line(serial_date_1, 527)).
assign(v_leap_400_3672, serial_date_1_expr23, line(serial_date_1, 528)).
assign(serial_date_1_expr24, serial_date_1_expr25, line(serial_date_1, 528)).
return(serial_date_1_expr26, m_leap_year_count_2306, line(serial_date_1, 529)).
param(p_month_3673, 1, m_last_day_of_month_2307).
param(p_yyyy_3674, 2, m_last_day_of_month_2307).
assign(v_result_3675, serial_date_1_expr28, line(serial_date_1, 544)).
ref(f_last_day_of_month_3652, serial_date_1_expr28, line(serial_date_1, 544)).
return(v_result_3675, m_last_day_of_month_2307, line(serial_date_1, 546)).
param(p_days_3677, 1, m_add_days_2308).
param(p_base_3678, 2, m_add_days_2308).
param(p_months_3679, 1, m_add_months_2309).
param(p_base_3680, 2, m_add_months_2309).
param(p_years_3681, 1, m_add_years_2310).
param(p_base_3682, 2, m_add_years_2310).
param(p_target_weekday_3683, 1, m_get_previous_day_of_week_2311).
param(p_base_3684, 2, m_get_previous_day_of_week_2311).
param(p_target_weekday_3685, 1, m_get_following_day_of_week_2312).
param(p_base_3686, 2, m_get_following_day_of_week_2312).
param(p_target_dow_3687, 1, m_get_nearest_day_of_week_2313).
param(p_base_3688, 2, m_get_nearest_day_of_week_2313).
param(p_base_3689, 1, m_get_end_of_current_month_2314).
param(p_count_3690, 1, m_week_in_month_to_string_2315).
param(p_relative_3691, 1, m_relative_to_string_2316).
param(p_day_3692, 1, m_create_instance_2250).
param(p_month_3693, 2, m_create_instance_2250).
param(p_yyyy_3694, 3, m_create_instance_2250).
return(serial_date_1_expr30, m_create_instance_2250, line(serial_date_1, 792)).
method_invoc(serial_date_1_expr30, m_spreadsheet_date_2317, line(serial_date_1, 792)).
argument(p_day_3692, 1, serial_date_1_expr30).
argument(p_month_3693, 2, serial_date_1_expr30).
argument(p_yyyy_3694, 3, serial_date_1_expr30).
param(p_serial_3695, 1, m_create_instance_2262).
return(serial_date_1_expr31, m_create_instance_2262, line(serial_date_1, 804)).
method_invoc(serial_date_1_expr31, m_spreadsheet_date_2318, line(serial_date_1, 804)).
argument(p_serial_3695, 1, serial_date_1_expr31).
param(p_date_3696, 1, m_create_instance_2319).
param(p_description_3697, 1, m_set_description_2322).
param(p_other_3698, 1, m_compare_2274).
param(p_other_3699, 1, m_is_on_2325).
param(p_other_3700, 1, m_is_before_2326).
param(p_other_3701, 1, m_is_on_or_before_2327).
param(p_other_3702, 1, m_is_after_2328).
param(p_other_3703, 1, m_is_on_or_after_2329).
param(p_d_1_3704, 1, m_is_in_range_2330).
param(p_d_2_3705, 2, m_is_in_range_2330).
param(p_d_1_3706, 1, m_is_in_range_2331).
param(p_d_2_3707, 2, m_is_in_range_2331).
param(p_include_3708, 3, m_is_in_range_2331).
param(p_target_dow_3709, 1, m_get_previous_day_of_week_2332).
param(p_target_dow_3710, 1, m_get_following_day_of_week_2333).
param(p_target_dow_3711, 1, m_get_nearest_day_of_week_2334).

%abstract_interval_xydataset_1 - org.jfree.data.xy.AbstractIntervalXYDataset
param(p_series_3905, 1, m_get_start_xvalue_2464).
param(p_item_3906, 2, m_get_start_xvalue_2464).
param(p_series_3907, 1, m_get_end_xvalue_2465).
param(p_item_3908, 2, m_get_end_xvalue_2465).
param(p_series_3909, 1, m_get_start_yvalue_2466).
param(p_item_3910, 2, m_get_start_yvalue_2466).
param(p_series_3911, 1, m_get_end_yvalue_2467).
param(p_item_3912, 2, m_get_end_yvalue_2467).

%number_tick_unit_1 - org.jfree.chart.axis.NumberTickUnit
param(p_size_884, 1, m_number_tick_unit_523).
param(p_size_885, 1, m_number_tick_unit_475).
param(p_formatter_886, 2, m_number_tick_unit_475).
method_invoc(number_tick_unit_1_expr1, m_tick_unit_453, line(number_tick_unit_1, 82)).
argument(p_size_885, 1, number_tick_unit_1_expr1).
assign(f_formatter_887, p_formatter_886, line(number_tick_unit_1, 86)).
param(p_size_888, 1, m_number_tick_unit_509).
param(p_formatter_889, 2, m_number_tick_unit_509).
param(p_minor_tick_count_890, 3, m_number_tick_unit_509).
method_invoc(number_tick_unit_1_expr6, m_tick_unit_524, line(number_tick_unit_1, 101)).
argument(p_size_888, 1, number_tick_unit_1_expr6).
argument(p_minor_tick_count_890, 2, number_tick_unit_1_expr6).
assign(f_formatter_887, p_formatter_889, line(number_tick_unit_1, 105)).
param(p_value_891, 1, m_value_to_string_525).
param(p_obj_892, 1, m_equals_526).


% Stack Trace Info.
test_failure(failure_1, 'org.jfree.chart.junit.XYStepChartTests', 'testDrawWithNullInfo').
trace(trace_1, failure_1, m_get_data_range_1333, line(xyplot_1, 4493), failure_1, target).
trace(trace_2, trace_1, m_auto_adjust_range_415, line(date_axis_1, 1286), failure_1, target).
trace(trace_3, trace_2, m_configure_413, line(date_axis_1, 719), failure_1, target).
trace(trace_4, trace_3, m_set_plot_346, line(axis_1, 1044), failure_1, target).
trace(trace_5, trace_4, m_xyplot_40, line(xyplot_1, 660), failure_1, target).
trace(trace_6, trace_5, m_create_xystep_chart_47, line(chart_factory_1, 1792), failure_1, target).
trace(trace_7, trace_6, m_create_chart_840, line(xystep_chart_tests_1, 177), failure_1, target).
trace(trace_8, trace_7, m_set_up_839, line(xystep_chart_tests_1, 96), failure_1, target).
trace(trace_9, trace_8, 'runBare', line(junit_framework_test_case, 140), failure_1, non_target).
trace(trace_10, trace_9, 'protect', line(junit_framework_test_result_1, 122), failure_1, non_target).
trace(trace_11, trace_10, 'runProtected', line(junit_framework_test_result, 142), failure_1, non_target).
trace(trace_12, trace_11, 'run', line(junit_framework_test_result, 125), failure_1, non_target).
trace(trace_13, trace_12, 'run', line(junit_framework_test_case, 130), failure_1, non_target).
trace(trace_14, trace_13, 'runTest', line(junit_framework_test_suite, 241), failure_1, non_target).
trace(trace_15, trace_14, 'run', line(junit_framework_test_suite, 236), failure_1, non_target).
trace(trace_16, trace_15, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_1, non_target).
trace(trace_17, trace_16, 'run', line(org_junit_runner_junit_core, 137), failure_1, non_target).
trace(trace_18, trace_17, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_1, non_target).
test_failure(failure_2, 'org.jfree.chart.junit.XYStepChartTests', 'testSetSeriesToolTipGenerator').
trace(trace_19, failure_2, m_get_data_range_1333, line(xyplot_1, 4493), failure_2, target).
trace(trace_20, trace_19, m_auto_adjust_range_415, line(date_axis_1, 1286), failure_2, target).
trace(trace_21, trace_20, m_configure_413, line(date_axis_1, 719), failure_2, target).
trace(trace_22, trace_21, m_set_plot_346, line(axis_1, 1044), failure_2, target).
trace(trace_23, trace_22, m_xyplot_40, line(xyplot_1, 660), failure_2, target).
trace(trace_24, trace_23, m_create_xystep_chart_47, line(chart_factory_1, 1792), failure_2, target).
trace(trace_25, trace_24, m_create_chart_840, line(xystep_chart_tests_1, 177), failure_2, target).
trace(trace_26, trace_25, m_set_up_839, line(xystep_chart_tests_1, 96), failure_2, target).
trace(trace_27, trace_26, 'runBare', line(junit_framework_test_case, 140), failure_2, non_target).
trace(trace_28, trace_27, 'protect', line(junit_framework_test_result_1, 122), failure_2, non_target).
trace(trace_29, trace_28, 'runProtected', line(junit_framework_test_result, 142), failure_2, non_target).
trace(trace_30, trace_29, 'run', line(junit_framework_test_result, 125), failure_2, non_target).
trace(trace_31, trace_30, 'run', line(junit_framework_test_case, 130), failure_2, non_target).
trace(trace_32, trace_31, 'runTest', line(junit_framework_test_suite, 241), failure_2, non_target).
trace(trace_33, trace_32, 'run', line(junit_framework_test_suite, 236), failure_2, non_target).
trace(trace_34, trace_33, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_2, non_target).
trace(trace_35, trace_34, 'run', line(org_junit_runner_junit_core, 137), failure_2, non_target).
trace(trace_36, trace_35, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_2, non_target).
test_failure(failure_3, 'org.jfree.chart.junit.XYStepChartTests', 'testReplaceDataset').
trace(trace_37, failure_3, m_get_data_range_1333, line(xyplot_1, 4493), failure_3, target).
trace(trace_38, trace_37, m_auto_adjust_range_415, line(date_axis_1, 1286), failure_3, target).
trace(trace_39, trace_38, m_configure_413, line(date_axis_1, 719), failure_3, target).
trace(trace_40, trace_39, m_set_plot_346, line(axis_1, 1044), failure_3, target).
trace(trace_41, trace_40, m_xyplot_40, line(xyplot_1, 660), failure_3, target).
trace(trace_42, trace_41, m_create_xystep_chart_47, line(chart_factory_1, 1792), failure_3, target).
trace(trace_43, trace_42, m_create_chart_840, line(xystep_chart_tests_1, 177), failure_3, target).
trace(trace_44, trace_43, m_set_up_839, line(xystep_chart_tests_1, 96), failure_3, target).
trace(trace_45, trace_44, 'runBare', line(junit_framework_test_case, 140), failure_3, non_target).
trace(trace_46, trace_45, 'protect', line(junit_framework_test_result_1, 122), failure_3, non_target).
trace(trace_47, trace_46, 'runProtected', line(junit_framework_test_result, 142), failure_3, non_target).
trace(trace_48, trace_47, 'run', line(junit_framework_test_result, 125), failure_3, non_target).
trace(trace_49, trace_48, 'run', line(junit_framework_test_case, 130), failure_3, non_target).
trace(trace_50, trace_49, 'runTest', line(junit_framework_test_suite, 241), failure_3, non_target).
trace(trace_51, trace_50, 'run', line(junit_framework_test_suite, 236), failure_3, non_target).
trace(trace_52, trace_51, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_3, non_target).
trace(trace_53, trace_52, 'run', line(org_junit_runner_junit_core, 137), failure_3, non_target).
trace(trace_54, trace_53, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_3, non_target).
test_failure(failure_4, 'org.jfree.chart.axis.junit.ValueAxisTests', 'testAxisMargins').
trace(trace_55, failure_4, m_get_data_range_1333, line(xyplot_1, 4493), failure_4, target).
trace(trace_56, trace_55, m_auto_adjust_range_481, line(number_axis_1, 434), failure_4, target).
trace(trace_57, trace_56, m_configure_491, line(number_axis_1, 417), failure_4, target).
trace(trace_58, trace_57, m_set_plot_346, line(axis_1, 1044), failure_4, target).
trace(trace_59, trace_58, m_xyplot_40, line(xyplot_1, 660), failure_4, target).
trace(trace_60, trace_59, m_create_scatter_plot_37, line(chart_factory_1, 1490), failure_4, target).
trace(trace_61, trace_60, m_test_axis_margins_663, line(value_axis_tests_1, 234), failure_4, target).
trace(trace_62, trace_61, 'invoke0', line(jdk_internal_reflect_native_method_accessor_impl, -2), failure_4, non_target).
trace(trace_63, trace_62, 'invoke', line(jdk_internal_reflect_native_method_accessor_impl, 77), failure_4, non_target).
trace(trace_64, trace_63, 'invoke', line(jdk_internal_reflect_delegating_method_accessor_impl, 43), failure_4, non_target).
trace(trace_65, trace_64, 'invoke', line(java_lang_reflect_method, 569), failure_4, non_target).
trace(trace_66, trace_65, 'runTest', line(junit_framework_test_case, 177), failure_4, non_target).
trace(trace_67, trace_66, 'runBare', line(junit_framework_test_case, 142), failure_4, non_target).
trace(trace_68, trace_67, 'protect', line(junit_framework_test_result_1, 122), failure_4, non_target).
trace(trace_69, trace_68, 'runProtected', line(junit_framework_test_result, 142), failure_4, non_target).
trace(trace_70, trace_69, 'run', line(junit_framework_test_result, 125), failure_4, non_target).
trace(trace_71, trace_70, 'run', line(junit_framework_test_case, 130), failure_4, non_target).
trace(trace_72, trace_71, 'runTest', line(junit_framework_test_suite, 241), failure_4, non_target).
trace(trace_73, trace_72, 'run', line(junit_framework_test_suite, 236), failure_4, non_target).
trace(trace_74, trace_73, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_4, non_target).
trace(trace_75, trace_74, 'run', line(org_junit_runner_junit_core, 137), failure_4, non_target).
trace(trace_76, trace_75, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_4, non_target).
test_failure(failure_5, 'org.jfree.chart.junit.JFreeChartTests', 'testSerialization4').
trace(trace_77, failure_5, m_get_data_range_1333, line(xyplot_1, 4493), failure_5, target).
trace(trace_78, trace_77, m_auto_adjust_range_415, line(date_axis_1, 1286), failure_5, target).
trace(trace_79, trace_78, m_configure_413, line(date_axis_1, 719), failure_5, target).
trace(trace_80, trace_79, m_set_plot_346, line(axis_1, 1044), failure_5, target).
trace(trace_81, trace_80, m_xyplot_40, line(xyplot_1, 660), failure_5, target).
trace(trace_82, trace_81, m_create_time_series_chart_55, line(chart_factory_1, 1893), failure_5, target).
trace(trace_83, trace_82, m_test_serialization4_793, line(jfree_chart_tests_1, 448), failure_5, target).
trace(trace_84, trace_83, 'invoke0', line(jdk_internal_reflect_native_method_accessor_impl, -2), failure_5, non_target).
trace(trace_85, trace_84, 'invoke', line(jdk_internal_reflect_native_method_accessor_impl, 77), failure_5, non_target).
trace(trace_86, trace_85, 'invoke', line(jdk_internal_reflect_delegating_method_accessor_impl, 43), failure_5, non_target).
trace(trace_87, trace_86, 'invoke', line(java_lang_reflect_method, 569), failure_5, non_target).
trace(trace_88, trace_87, 'runTest', line(junit_framework_test_case, 177), failure_5, non_target).
trace(trace_89, trace_88, 'runBare', line(junit_framework_test_case, 142), failure_5, non_target).
trace(trace_90, trace_89, 'protect', line(junit_framework_test_result_1, 122), failure_5, non_target).
trace(trace_91, trace_90, 'runProtected', line(junit_framework_test_result, 142), failure_5, non_target).
trace(trace_92, trace_91, 'run', line(junit_framework_test_result, 125), failure_5, non_target).
trace(trace_93, trace_92, 'run', line(junit_framework_test_case, 130), failure_5, non_target).
trace(trace_94, trace_93, 'runTest', line(junit_framework_test_suite, 241), failure_5, non_target).
trace(trace_95, trace_94, 'run', line(junit_framework_test_suite, 236), failure_5, non_target).
trace(trace_96, trace_95, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_5, non_target).
trace(trace_97, trace_96, 'run', line(org_junit_runner_junit_core, 137), failure_5, non_target).
trace(trace_98, trace_97, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_5, non_target).
test_failure(failure_6, 'org.jfree.chart.axis.junit.LogAxisTests', 'testXYAutoRange1').
trace(trace_99, failure_6, m_get_data_range_1333, line(xyplot_1, 4493), failure_6, target).
trace(trace_100, trace_99, m_auto_adjust_range_481, line(number_axis_1, 434), failure_6, target).
trace(trace_101, trace_100, m_configure_491, line(number_axis_1, 417), failure_6, target).
trace(trace_102, trace_101, m_set_plot_346, line(axis_1, 1044), failure_6, target).
trace(trace_103, trace_102, m_xyplot_40, line(xyplot_1, 660), failure_6, target).
trace(trace_104, trace_103, m_create_scatter_plot_37, line(chart_factory_1, 1490), failure_6, target).
trace(trace_105, trace_104, m_test_xyauto_range1_637, line(log_axis_tests_1, 260), failure_6, target).
trace(trace_106, trace_105, 'invoke0', line(jdk_internal_reflect_native_method_accessor_impl, -2), failure_6, non_target).
trace(trace_107, trace_106, 'invoke', line(jdk_internal_reflect_native_method_accessor_impl, 77), failure_6, non_target).
trace(trace_108, trace_107, 'invoke', line(jdk_internal_reflect_delegating_method_accessor_impl, 43), failure_6, non_target).
trace(trace_109, trace_108, 'invoke', line(java_lang_reflect_method, 569), failure_6, non_target).
trace(trace_110, trace_109, 'runTest', line(junit_framework_test_case, 177), failure_6, non_target).
trace(trace_111, trace_110, 'runBare', line(junit_framework_test_case, 142), failure_6, non_target).
trace(trace_112, trace_111, 'protect', line(junit_framework_test_result_1, 122), failure_6, non_target).
trace(trace_113, trace_112, 'runProtected', line(junit_framework_test_result, 142), failure_6, non_target).
trace(trace_114, trace_113, 'run', line(junit_framework_test_result, 125), failure_6, non_target).
trace(trace_115, trace_114, 'run', line(junit_framework_test_case, 130), failure_6, non_target).
trace(trace_116, trace_115, 'runTest', line(junit_framework_test_suite, 241), failure_6, non_target).
trace(trace_117, trace_116, 'run', line(junit_framework_test_suite, 236), failure_6, non_target).
trace(trace_118, trace_117, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_6, non_target).
trace(trace_119, trace_118, 'run', line(org_junit_runner_junit_core, 137), failure_6, non_target).
trace(trace_120, trace_119, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_6, non_target).
test_failure(failure_7, 'org.jfree.chart.axis.junit.LogAxisTests', 'testXYAutoRange2').
trace(trace_121, failure_7, m_get_data_range_1333, line(xyplot_1, 4493), failure_7, target).
trace(trace_122, trace_121, m_auto_adjust_range_481, line(number_axis_1, 434), failure_7, target).
trace(trace_123, trace_122, m_configure_491, line(number_axis_1, 417), failure_7, target).
trace(trace_124, trace_123, m_set_plot_346, line(axis_1, 1044), failure_7, target).
trace(trace_125, trace_124, m_xyplot_40, line(xyplot_1, 660), failure_7, target).
trace(trace_126, trace_125, m_create_scatter_plot_37, line(chart_factory_1, 1490), failure_7, target).
trace(trace_127, trace_126, m_test_xyauto_range2_642, line(log_axis_tests_1, 288), failure_7, target).
trace(trace_128, trace_127, 'invoke0', line(jdk_internal_reflect_native_method_accessor_impl, -2), failure_7, non_target).
trace(trace_129, trace_128, 'invoke', line(jdk_internal_reflect_native_method_accessor_impl, 77), failure_7, non_target).
trace(trace_130, trace_129, 'invoke', line(jdk_internal_reflect_delegating_method_accessor_impl, 43), failure_7, non_target).
trace(trace_131, trace_130, 'invoke', line(java_lang_reflect_method, 569), failure_7, non_target).
trace(trace_132, trace_131, 'runTest', line(junit_framework_test_case, 177), failure_7, non_target).
trace(trace_133, trace_132, 'runBare', line(junit_framework_test_case, 142), failure_7, non_target).
trace(trace_134, trace_133, 'protect', line(junit_framework_test_result_1, 122), failure_7, non_target).
trace(trace_135, trace_134, 'runProtected', line(junit_framework_test_result, 142), failure_7, non_target).
trace(trace_136, trace_135, 'run', line(junit_framework_test_result, 125), failure_7, non_target).
trace(trace_137, trace_136, 'run', line(junit_framework_test_case, 130), failure_7, non_target).
trace(trace_138, trace_137, 'runTest', line(junit_framework_test_suite, 241), failure_7, non_target).
trace(trace_139, trace_138, 'run', line(junit_framework_test_suite, 236), failure_7, non_target).
trace(trace_140, trace_139, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_7, non_target).
trace(trace_141, trace_140, 'run', line(org_junit_runner_junit_core, 137), failure_7, non_target).
trace(trace_142, trace_141, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_7, non_target).
test_failure(failure_8, 'org.jfree.chart.axis.junit.NumberAxisTests', 'testXYAutoRange1').
trace(trace_143, failure_8, m_get_data_range_1333, line(xyplot_1, 4493), failure_8, target).
trace(trace_144, trace_143, m_auto_adjust_range_481, line(number_axis_1, 434), failure_8, target).
trace(trace_145, trace_144, m_configure_491, line(number_axis_1, 417), failure_8, target).
trace(trace_146, trace_145, m_set_plot_346, line(axis_1, 1044), failure_8, target).
trace(trace_147, trace_146, m_xyplot_40, line(xyplot_1, 660), failure_8, target).
trace(trace_148, trace_147, m_create_scatter_plot_37, line(chart_factory_1, 1490), failure_8, target).
trace(trace_149, trace_148, m_test_xyauto_range1_656, line(number_axis_tests_1, 354), failure_8, target).
trace(trace_150, trace_149, 'invoke0', line(jdk_internal_reflect_native_method_accessor_impl, -2), failure_8, non_target).
trace(trace_151, trace_150, 'invoke', line(jdk_internal_reflect_native_method_accessor_impl, 77), failure_8, non_target).
trace(trace_152, trace_151, 'invoke', line(jdk_internal_reflect_delegating_method_accessor_impl, 43), failure_8, non_target).
trace(trace_153, trace_152, 'invoke', line(java_lang_reflect_method, 569), failure_8, non_target).
trace(trace_154, trace_153, 'runTest', line(junit_framework_test_case, 177), failure_8, non_target).
trace(trace_155, trace_154, 'runBare', line(junit_framework_test_case, 142), failure_8, non_target).
trace(trace_156, trace_155, 'protect', line(junit_framework_test_result_1, 122), failure_8, non_target).
trace(trace_157, trace_156, 'runProtected', line(junit_framework_test_result, 142), failure_8, non_target).
trace(trace_158, trace_157, 'run', line(junit_framework_test_result, 125), failure_8, non_target).
trace(trace_159, trace_158, 'run', line(junit_framework_test_case, 130), failure_8, non_target).
trace(trace_160, trace_159, 'runTest', line(junit_framework_test_suite, 241), failure_8, non_target).
trace(trace_161, trace_160, 'run', line(junit_framework_test_suite, 236), failure_8, non_target).
trace(trace_162, trace_161, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_8, non_target).
trace(trace_163, trace_162, 'run', line(org_junit_runner_junit_core, 137), failure_8, non_target).
trace(trace_164, trace_163, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_8, non_target).
test_failure(failure_9, 'org.jfree.chart.axis.junit.NumberAxisTests', 'testXYAutoRange2').
trace(trace_165, failure_9, m_get_data_range_1333, line(xyplot_1, 4493), failure_9, target).
trace(trace_166, trace_165, m_auto_adjust_range_481, line(number_axis_1, 434), failure_9, target).
trace(trace_167, trace_166, m_configure_491, line(number_axis_1, 417), failure_9, target).
trace(trace_168, trace_167, m_set_plot_346, line(axis_1, 1044), failure_9, target).
trace(trace_169, trace_168, m_xyplot_40, line(xyplot_1, 660), failure_9, target).
trace(trace_170, trace_169, m_create_scatter_plot_37, line(chart_factory_1, 1490), failure_9, target).
trace(trace_171, trace_170, m_test_xyauto_range2_657, line(number_axis_tests_1, 382), failure_9, target).
trace(trace_172, trace_171, 'invoke0', line(jdk_internal_reflect_native_method_accessor_impl, -2), failure_9, non_target).
trace(trace_173, trace_172, 'invoke', line(jdk_internal_reflect_native_method_accessor_impl, 77), failure_9, non_target).
trace(trace_174, trace_173, 'invoke', line(jdk_internal_reflect_delegating_method_accessor_impl, 43), failure_9, non_target).
trace(trace_175, trace_174, 'invoke', line(java_lang_reflect_method, 569), failure_9, non_target).
trace(trace_176, trace_175, 'runTest', line(junit_framework_test_case, 177), failure_9, non_target).
trace(trace_177, trace_176, 'runBare', line(junit_framework_test_case, 142), failure_9, non_target).
trace(trace_178, trace_177, 'protect', line(junit_framework_test_result_1, 122), failure_9, non_target).
trace(trace_179, trace_178, 'runProtected', line(junit_framework_test_result, 142), failure_9, non_target).
trace(trace_180, trace_179, 'run', line(junit_framework_test_result, 125), failure_9, non_target).
trace(trace_181, trace_180, 'run', line(junit_framework_test_case, 130), failure_9, non_target).
trace(trace_182, trace_181, 'runTest', line(junit_framework_test_suite, 241), failure_9, non_target).
trace(trace_183, trace_182, 'run', line(junit_framework_test_suite, 236), failure_9, non_target).
trace(trace_184, trace_183, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_9, non_target).
trace(trace_185, trace_184, 'run', line(org_junit_runner_junit_core, 137), failure_9, non_target).
trace(trace_186, trace_185, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_9, non_target).
test_failure(failure_10, 'org.jfree.chart.junit.TimeSeriesChartTests', 'testDrawWithNullInfo').
trace(trace_187, failure_10, m_get_data_range_1333, line(xyplot_1, 4493), failure_10, target).
trace(trace_188, trace_187, m_auto_adjust_range_415, line(date_axis_1, 1286), failure_10, target).
trace(trace_189, trace_188, m_configure_413, line(date_axis_1, 719), failure_10, target).
trace(trace_190, trace_189, m_set_plot_346, line(axis_1, 1044), failure_10, target).
trace(trace_191, trace_190, m_xyplot_40, line(xyplot_1, 660), failure_10, target).
trace(trace_192, trace_191, m_create_time_series_chart_55, line(chart_factory_1, 1893), failure_10, target).
trace(trace_193, trace_192, m_create_chart_816, line(time_series_chart_tests_1, 176), failure_10, target).
trace(trace_194, trace_193, m_set_up_815, line(time_series_chart_tests_1, 95), failure_10, target).
trace(trace_195, trace_194, 'runBare', line(junit_framework_test_case, 140), failure_10, non_target).
trace(trace_196, trace_195, 'protect', line(junit_framework_test_result_1, 122), failure_10, non_target).
trace(trace_197, trace_196, 'runProtected', line(junit_framework_test_result, 142), failure_10, non_target).
trace(trace_198, trace_197, 'run', line(junit_framework_test_result, 125), failure_10, non_target).
trace(trace_199, trace_198, 'run', line(junit_framework_test_case, 130), failure_10, non_target).
trace(trace_200, trace_199, 'runTest', line(junit_framework_test_suite, 241), failure_10, non_target).
trace(trace_201, trace_200, 'run', line(junit_framework_test_suite, 236), failure_10, non_target).
trace(trace_202, trace_201, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_10, non_target).
trace(trace_203, trace_202, 'run', line(org_junit_runner_junit_core, 137), failure_10, non_target).
trace(trace_204, trace_203, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_10, non_target).
test_failure(failure_11, 'org.jfree.chart.junit.TimeSeriesChartTests', 'testSetSeriesToolTipGenerator').
trace(trace_205, failure_11, m_get_data_range_1333, line(xyplot_1, 4493), failure_11, target).
trace(trace_206, trace_205, m_auto_adjust_range_415, line(date_axis_1, 1286), failure_11, target).
trace(trace_207, trace_206, m_configure_413, line(date_axis_1, 719), failure_11, target).
trace(trace_208, trace_207, m_set_plot_346, line(axis_1, 1044), failure_11, target).
trace(trace_209, trace_208, m_xyplot_40, line(xyplot_1, 660), failure_11, target).
trace(trace_210, trace_209, m_create_time_series_chart_55, line(chart_factory_1, 1893), failure_11, target).
trace(trace_211, trace_210, m_create_chart_816, line(time_series_chart_tests_1, 176), failure_11, target).
trace(trace_212, trace_211, m_set_up_815, line(time_series_chart_tests_1, 95), failure_11, target).
trace(trace_213, trace_212, 'runBare', line(junit_framework_test_case, 140), failure_11, non_target).
trace(trace_214, trace_213, 'protect', line(junit_framework_test_result_1, 122), failure_11, non_target).
trace(trace_215, trace_214, 'runProtected', line(junit_framework_test_result, 142), failure_11, non_target).
trace(trace_216, trace_215, 'run', line(junit_framework_test_result, 125), failure_11, non_target).
trace(trace_217, trace_216, 'run', line(junit_framework_test_case, 130), failure_11, non_target).
trace(trace_218, trace_217, 'runTest', line(junit_framework_test_suite, 241), failure_11, non_target).
trace(trace_219, trace_218, 'run', line(junit_framework_test_suite, 236), failure_11, non_target).
trace(trace_220, trace_219, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_11, non_target).
trace(trace_221, trace_220, 'run', line(org_junit_runner_junit_core, 137), failure_11, non_target).
trace(trace_222, trace_221, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_11, non_target).
test_failure(failure_12, 'org.jfree.chart.junit.TimeSeriesChartTests', 'testReplaceDataset').
trace(trace_223, failure_12, m_get_data_range_1333, line(xyplot_1, 4493), failure_12, target).
trace(trace_224, trace_223, m_auto_adjust_range_415, line(date_axis_1, 1286), failure_12, target).
trace(trace_225, trace_224, m_configure_413, line(date_axis_1, 719), failure_12, target).
trace(trace_226, trace_225, m_set_plot_346, line(axis_1, 1044), failure_12, target).
trace(trace_227, trace_226, m_xyplot_40, line(xyplot_1, 660), failure_12, target).
trace(trace_228, trace_227, m_create_time_series_chart_55, line(chart_factory_1, 1893), failure_12, target).
trace(trace_229, trace_228, m_create_chart_816, line(time_series_chart_tests_1, 176), failure_12, target).
trace(trace_230, trace_229, m_set_up_815, line(time_series_chart_tests_1, 95), failure_12, target).
trace(trace_231, trace_230, 'runBare', line(junit_framework_test_case, 140), failure_12, non_target).
trace(trace_232, trace_231, 'protect', line(junit_framework_test_result_1, 122), failure_12, non_target).
trace(trace_233, trace_232, 'runProtected', line(junit_framework_test_result, 142), failure_12, non_target).
trace(trace_234, trace_233, 'run', line(junit_framework_test_result, 125), failure_12, non_target).
trace(trace_235, trace_234, 'run', line(junit_framework_test_case, 130), failure_12, non_target).
trace(trace_236, trace_235, 'runTest', line(junit_framework_test_suite, 241), failure_12, non_target).
trace(trace_237, trace_236, 'run', line(junit_framework_test_suite, 236), failure_12, non_target).
trace(trace_238, trace_237, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_12, non_target).
trace(trace_239, trace_238, 'run', line(org_junit_runner_junit_core, 137), failure_12, non_target).
trace(trace_240, trace_239, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_12, non_target).
test_failure(failure_13, 'org.jfree.chart.junit.XYStepAreaChartTests', 'testDrawWithNullInfo').
trace(trace_241, failure_13, m_get_data_range_1333, line(xyplot_1, 4493), failure_13, target).
trace(trace_242, trace_241, m_auto_adjust_range_481, line(number_axis_1, 434), failure_13, target).
trace(trace_243, trace_242, m_configure_491, line(number_axis_1, 417), failure_13, target).
trace(trace_244, trace_243, m_set_plot_346, line(axis_1, 1044), failure_13, target).
trace(trace_245, trace_244, m_xyplot_40, line(xyplot_1, 660), failure_13, target).
trace(trace_246, trace_245, m_create_xystep_area_chart_53, line(chart_factory_1, 1848), failure_13, target).
trace(trace_247, trace_246, m_create_chart_832, line(xystep_area_chart_tests_1, 177), failure_13, target).
trace(trace_248, trace_247, m_set_up_831, line(xystep_area_chart_tests_1, 96), failure_13, target).
trace(trace_249, trace_248, 'runBare', line(junit_framework_test_case, 140), failure_13, non_target).
trace(trace_250, trace_249, 'protect', line(junit_framework_test_result_1, 122), failure_13, non_target).
trace(trace_251, trace_250, 'runProtected', line(junit_framework_test_result, 142), failure_13, non_target).
trace(trace_252, trace_251, 'run', line(junit_framework_test_result, 125), failure_13, non_target).
trace(trace_253, trace_252, 'run', line(junit_framework_test_case, 130), failure_13, non_target).
trace(trace_254, trace_253, 'runTest', line(junit_framework_test_suite, 241), failure_13, non_target).
trace(trace_255, trace_254, 'run', line(junit_framework_test_suite, 236), failure_13, non_target).
trace(trace_256, trace_255, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_13, non_target).
trace(trace_257, trace_256, 'run', line(org_junit_runner_junit_core, 137), failure_13, non_target).
trace(trace_258, trace_257, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_13, non_target).
test_failure(failure_14, 'org.jfree.chart.junit.XYStepAreaChartTests', 'testSetSeriesToolTipGenerator').
trace(trace_259, failure_14, m_get_data_range_1333, line(xyplot_1, 4493), failure_14, target).
trace(trace_260, trace_259, m_auto_adjust_range_481, line(number_axis_1, 434), failure_14, target).
trace(trace_261, trace_260, m_configure_491, line(number_axis_1, 417), failure_14, target).
trace(trace_262, trace_261, m_set_plot_346, line(axis_1, 1044), failure_14, target).
trace(trace_263, trace_262, m_xyplot_40, line(xyplot_1, 660), failure_14, target).
trace(trace_264, trace_263, m_create_xystep_area_chart_53, line(chart_factory_1, 1848), failure_14, target).
trace(trace_265, trace_264, m_create_chart_832, line(xystep_area_chart_tests_1, 177), failure_14, target).
trace(trace_266, trace_265, m_set_up_831, line(xystep_area_chart_tests_1, 96), failure_14, target).
trace(trace_267, trace_266, 'runBare', line(junit_framework_test_case, 140), failure_14, non_target).
trace(trace_268, trace_267, 'protect', line(junit_framework_test_result_1, 122), failure_14, non_target).
trace(trace_269, trace_268, 'runProtected', line(junit_framework_test_result, 142), failure_14, non_target).
trace(trace_270, trace_269, 'run', line(junit_framework_test_result, 125), failure_14, non_target).
trace(trace_271, trace_270, 'run', line(junit_framework_test_case, 130), failure_14, non_target).
trace(trace_272, trace_271, 'runTest', line(junit_framework_test_suite, 241), failure_14, non_target).
trace(trace_273, trace_272, 'run', line(junit_framework_test_suite, 236), failure_14, non_target).
trace(trace_274, trace_273, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_14, non_target).
trace(trace_275, trace_274, 'run', line(org_junit_runner_junit_core, 137), failure_14, non_target).
trace(trace_276, trace_275, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_14, non_target).
test_failure(failure_15, 'org.jfree.chart.junit.XYStepAreaChartTests', 'testReplaceDataset').
trace(trace_277, failure_15, m_get_data_range_1333, line(xyplot_1, 4493), failure_15, target).
trace(trace_278, trace_277, m_auto_adjust_range_481, line(number_axis_1, 434), failure_15, target).
trace(trace_279, trace_278, m_configure_491, line(number_axis_1, 417), failure_15, target).
trace(trace_280, trace_279, m_set_plot_346, line(axis_1, 1044), failure_15, target).
trace(trace_281, trace_280, m_xyplot_40, line(xyplot_1, 660), failure_15, target).
trace(trace_282, trace_281, m_create_xystep_area_chart_53, line(chart_factory_1, 1848), failure_15, target).
trace(trace_283, trace_282, m_create_chart_832, line(xystep_area_chart_tests_1, 177), failure_15, target).
trace(trace_284, trace_283, m_set_up_831, line(xystep_area_chart_tests_1, 96), failure_15, target).
trace(trace_285, trace_284, 'runBare', line(junit_framework_test_case, 140), failure_15, non_target).
trace(trace_286, trace_285, 'protect', line(junit_framework_test_result_1, 122), failure_15, non_target).
trace(trace_287, trace_286, 'runProtected', line(junit_framework_test_result, 142), failure_15, non_target).
trace(trace_288, trace_287, 'run', line(junit_framework_test_result, 125), failure_15, non_target).
trace(trace_289, trace_288, 'run', line(junit_framework_test_case, 130), failure_15, non_target).
trace(trace_290, trace_289, 'runTest', line(junit_framework_test_suite, 241), failure_15, non_target).
trace(trace_291, trace_290, 'run', line(junit_framework_test_suite, 236), failure_15, non_target).
trace(trace_292, trace_291, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_15, non_target).
trace(trace_293, trace_292, 'run', line(org_junit_runner_junit_core, 137), failure_15, non_target).
trace(trace_294, trace_293, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_15, non_target).
test_failure(failure_16, 'org.jfree.chart.junit.ScatterPlotTests', 'testDrawWithNullInfo').
trace(trace_295, failure_16, m_get_data_range_1333, line(xyplot_1, 4493), failure_16, target).
trace(trace_296, trace_295, m_auto_adjust_range_481, line(number_axis_1, 434), failure_16, target).
trace(trace_297, trace_296, m_configure_491, line(number_axis_1, 417), failure_16, target).
trace(trace_298, trace_297, m_set_plot_346, line(axis_1, 1044), failure_16, target).
trace(trace_299, trace_298, m_xyplot_40, line(xyplot_1, 660), failure_16, target).
trace(trace_300, trace_299, m_create_scatter_plot_37, line(chart_factory_1, 1490), failure_16, target).
trace(trace_301, trace_300, m_create_chart_808, line(scatter_plot_tests_1, 181), failure_16, target).
trace(trace_302, trace_301, m_set_up_807, line(scatter_plot_tests_1, 98), failure_16, target).
trace(trace_303, trace_302, 'runBare', line(junit_framework_test_case, 140), failure_16, non_target).
trace(trace_304, trace_303, 'protect', line(junit_framework_test_result_1, 122), failure_16, non_target).
trace(trace_305, trace_304, 'runProtected', line(junit_framework_test_result, 142), failure_16, non_target).
trace(trace_306, trace_305, 'run', line(junit_framework_test_result, 125), failure_16, non_target).
trace(trace_307, trace_306, 'run', line(junit_framework_test_case, 130), failure_16, non_target).
trace(trace_308, trace_307, 'runTest', line(junit_framework_test_suite, 241), failure_16, non_target).
trace(trace_309, trace_308, 'run', line(junit_framework_test_suite, 236), failure_16, non_target).
trace(trace_310, trace_309, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_16, non_target).
trace(trace_311, trace_310, 'run', line(org_junit_runner_junit_core, 137), failure_16, non_target).
trace(trace_312, trace_311, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_16, non_target).
test_failure(failure_17, 'org.jfree.chart.junit.ScatterPlotTests', 'testSetSeriesToolTipGenerator').
trace(trace_313, failure_17, m_get_data_range_1333, line(xyplot_1, 4493), failure_17, target).
trace(trace_314, trace_313, m_auto_adjust_range_481, line(number_axis_1, 434), failure_17, target).
trace(trace_315, trace_314, m_configure_491, line(number_axis_1, 417), failure_17, target).
trace(trace_316, trace_315, m_set_plot_346, line(axis_1, 1044), failure_17, target).
trace(trace_317, trace_316, m_xyplot_40, line(xyplot_1, 660), failure_17, target).
trace(trace_318, trace_317, m_create_scatter_plot_37, line(chart_factory_1, 1490), failure_17, target).
trace(trace_319, trace_318, m_create_chart_808, line(scatter_plot_tests_1, 181), failure_17, target).
trace(trace_320, trace_319, m_set_up_807, line(scatter_plot_tests_1, 98), failure_17, target).
trace(trace_321, trace_320, 'runBare', line(junit_framework_test_case, 140), failure_17, non_target).
trace(trace_322, trace_321, 'protect', line(junit_framework_test_result_1, 122), failure_17, non_target).
trace(trace_323, trace_322, 'runProtected', line(junit_framework_test_result, 142), failure_17, non_target).
trace(trace_324, trace_323, 'run', line(junit_framework_test_result, 125), failure_17, non_target).
trace(trace_325, trace_324, 'run', line(junit_framework_test_case, 130), failure_17, non_target).
trace(trace_326, trace_325, 'runTest', line(junit_framework_test_suite, 241), failure_17, non_target).
trace(trace_327, trace_326, 'run', line(junit_framework_test_suite, 236), failure_17, non_target).
trace(trace_328, trace_327, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_17, non_target).
trace(trace_329, trace_328, 'run', line(org_junit_runner_junit_core, 137), failure_17, non_target).
trace(trace_330, trace_329, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_17, non_target).
test_failure(failure_18, 'org.jfree.chart.junit.ScatterPlotTests', 'testReplaceDataset').
trace(trace_331, failure_18, m_get_data_range_1333, line(xyplot_1, 4493), failure_18, target).
trace(trace_332, trace_331, m_auto_adjust_range_481, line(number_axis_1, 434), failure_18, target).
trace(trace_333, trace_332, m_configure_491, line(number_axis_1, 417), failure_18, target).
trace(trace_334, trace_333, m_set_plot_346, line(axis_1, 1044), failure_18, target).
trace(trace_335, trace_334, m_xyplot_40, line(xyplot_1, 660), failure_18, target).
trace(trace_336, trace_335, m_create_scatter_plot_37, line(chart_factory_1, 1490), failure_18, target).
trace(trace_337, trace_336, m_create_chart_808, line(scatter_plot_tests_1, 181), failure_18, target).
trace(trace_338, trace_337, m_set_up_807, line(scatter_plot_tests_1, 98), failure_18, target).
trace(trace_339, trace_338, 'runBare', line(junit_framework_test_case, 140), failure_18, non_target).
trace(trace_340, trace_339, 'protect', line(junit_framework_test_result_1, 122), failure_18, non_target).
trace(trace_341, trace_340, 'runProtected', line(junit_framework_test_result, 142), failure_18, non_target).
trace(trace_342, trace_341, 'run', line(junit_framework_test_result, 125), failure_18, non_target).
trace(trace_343, trace_342, 'run', line(junit_framework_test_case, 130), failure_18, non_target).
trace(trace_344, trace_343, 'runTest', line(junit_framework_test_suite, 241), failure_18, non_target).
trace(trace_345, trace_344, 'run', line(junit_framework_test_suite, 236), failure_18, non_target).
trace(trace_346, trace_345, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_18, non_target).
trace(trace_347, trace_346, 'run', line(org_junit_runner_junit_core, 137), failure_18, non_target).
trace(trace_348, trace_347, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_18, non_target).
test_failure(failure_19, 'org.jfree.chart.plot.junit.XYPlotTests', 'testDrawRangeGridlines').
trace(trace_349, failure_19, m_get_data_range_1333, line(xyplot_1, 4493), failure_19, target).
trace(trace_350, trace_349, m_auto_adjust_range_481, line(number_axis_1, 434), failure_19, target).
trace(trace_351, trace_350, m_configure_491, line(number_axis_1, 417), failure_19, target).
trace(trace_352, trace_351, m_configure_domain_axes_1165, line(xyplot_1, 972), failure_19, target).
trace(trace_353, trace_352, m_set_renderer_1220, line(xyplot_1, 1644), failure_19, target).
trace(trace_354, trace_353, m_set_renderer_1219, line(xyplot_1, 1620), failure_19, target).
trace(trace_355, trace_354, m_set_renderer_1218, line(xyplot_1, 1607), failure_19, target).
trace(trace_356, trace_355, m_test_draw_range_gridlines_1421, line(xyplot_tests_1, 1056), failure_19, target).
trace(trace_357, trace_356, 'invoke0', line(jdk_internal_reflect_native_method_accessor_impl, -2), failure_19, non_target).
trace(trace_358, trace_357, 'invoke', line(jdk_internal_reflect_native_method_accessor_impl, 77), failure_19, non_target).
trace(trace_359, trace_358, 'invoke', line(jdk_internal_reflect_delegating_method_accessor_impl, 43), failure_19, non_target).
trace(trace_360, trace_359, 'invoke', line(java_lang_reflect_method, 569), failure_19, non_target).
trace(trace_361, trace_360, 'runTest', line(junit_framework_test_case, 177), failure_19, non_target).
trace(trace_362, trace_361, 'runBare', line(junit_framework_test_case, 142), failure_19, non_target).
trace(trace_363, trace_362, 'protect', line(junit_framework_test_result_1, 122), failure_19, non_target).
trace(trace_364, trace_363, 'runProtected', line(junit_framework_test_result, 142), failure_19, non_target).
trace(trace_365, trace_364, 'run', line(junit_framework_test_result, 125), failure_19, non_target).
trace(trace_366, trace_365, 'run', line(junit_framework_test_case, 130), failure_19, non_target).
trace(trace_367, trace_366, 'runTest', line(junit_framework_test_suite, 241), failure_19, non_target).
trace(trace_368, trace_367, 'run', line(junit_framework_test_suite, 236), failure_19, non_target).
trace(trace_369, trace_368, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_19, non_target).
trace(trace_370, trace_369, 'run', line(org_junit_runner_junit_core, 137), failure_19, non_target).
trace(trace_371, trace_370, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_19, non_target).
test_failure(failure_20, 'org.jfree.chart.junit.XYAreaChartTests', 'testDrawWithNullInfo').
trace(trace_372, failure_20, m_get_data_range_1333, line(xyplot_1, 4493), failure_20, target).
trace(trace_373, trace_372, m_auto_adjust_range_481, line(number_axis_1, 434), failure_20, target).
trace(trace_374, trace_373, m_configure_491, line(number_axis_1, 417), failure_20, target).
trace(trace_375, trace_374, m_set_plot_346, line(axis_1, 1044), failure_20, target).
trace(trace_376, trace_375, m_xyplot_40, line(xyplot_1, 660), failure_20, target).
trace(trace_377, trace_376, m_create_xyarea_chart_42, line(chart_factory_1, 1619), failure_20, target).
trace(trace_378, trace_377, m_create_chart_824, line(xyarea_chart_tests_1, 178), failure_20, target).
trace(trace_379, trace_378, m_set_up_823, line(xyarea_chart_tests_1, 96), failure_20, target).
trace(trace_380, trace_379, 'runBare', line(junit_framework_test_case, 140), failure_20, non_target).
trace(trace_381, trace_380, 'protect', line(junit_framework_test_result_1, 122), failure_20, non_target).
trace(trace_382, trace_381, 'runProtected', line(junit_framework_test_result, 142), failure_20, non_target).
trace(trace_383, trace_382, 'run', line(junit_framework_test_result, 125), failure_20, non_target).
trace(trace_384, trace_383, 'run', line(junit_framework_test_case, 130), failure_20, non_target).
trace(trace_385, trace_384, 'runTest', line(junit_framework_test_suite, 241), failure_20, non_target).
trace(trace_386, trace_385, 'run', line(junit_framework_test_suite, 236), failure_20, non_target).
trace(trace_387, trace_386, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_20, non_target).
trace(trace_388, trace_387, 'run', line(org_junit_runner_junit_core, 137), failure_20, non_target).
trace(trace_389, trace_388, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_20, non_target).
test_failure(failure_21, 'org.jfree.chart.junit.XYAreaChartTests', 'testSetSeriesToolTipGenerator').
trace(trace_390, failure_21, m_get_data_range_1333, line(xyplot_1, 4493), failure_21, target).
trace(trace_391, trace_390, m_auto_adjust_range_481, line(number_axis_1, 434), failure_21, target).
trace(trace_392, trace_391, m_configure_491, line(number_axis_1, 417), failure_21, target).
trace(trace_393, trace_392, m_set_plot_346, line(axis_1, 1044), failure_21, target).
trace(trace_394, trace_393, m_xyplot_40, line(xyplot_1, 660), failure_21, target).
trace(trace_395, trace_394, m_create_xyarea_chart_42, line(chart_factory_1, 1619), failure_21, target).
trace(trace_396, trace_395, m_create_chart_824, line(xyarea_chart_tests_1, 178), failure_21, target).
trace(trace_397, trace_396, m_set_up_823, line(xyarea_chart_tests_1, 96), failure_21, target).
trace(trace_398, trace_397, 'runBare', line(junit_framework_test_case, 140), failure_21, non_target).
trace(trace_399, trace_398, 'protect', line(junit_framework_test_result_1, 122), failure_21, non_target).
trace(trace_400, trace_399, 'runProtected', line(junit_framework_test_result, 142), failure_21, non_target).
trace(trace_401, trace_400, 'run', line(junit_framework_test_result, 125), failure_21, non_target).
trace(trace_402, trace_401, 'run', line(junit_framework_test_case, 130), failure_21, non_target).
trace(trace_403, trace_402, 'runTest', line(junit_framework_test_suite, 241), failure_21, non_target).
trace(trace_404, trace_403, 'run', line(junit_framework_test_suite, 236), failure_21, non_target).
trace(trace_405, trace_404, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_21, non_target).
trace(trace_406, trace_405, 'run', line(org_junit_runner_junit_core, 137), failure_21, non_target).
trace(trace_407, trace_406, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_21, non_target).
test_failure(failure_22, 'org.jfree.chart.junit.XYAreaChartTests', 'testReplaceDataset').
trace(trace_408, failure_22, m_get_data_range_1333, line(xyplot_1, 4493), failure_22, target).
trace(trace_409, trace_408, m_auto_adjust_range_481, line(number_axis_1, 434), failure_22, target).
trace(trace_410, trace_409, m_configure_491, line(number_axis_1, 417), failure_22, target).
trace(trace_411, trace_410, m_set_plot_346, line(axis_1, 1044), failure_22, target).
trace(trace_412, trace_411, m_xyplot_40, line(xyplot_1, 660), failure_22, target).
trace(trace_413, trace_412, m_create_xyarea_chart_42, line(chart_factory_1, 1619), failure_22, target).
trace(trace_414, trace_413, m_create_chart_824, line(xyarea_chart_tests_1, 178), failure_22, target).
trace(trace_415, trace_414, m_set_up_823, line(xyarea_chart_tests_1, 96), failure_22, target).
trace(trace_416, trace_415, 'runBare', line(junit_framework_test_case, 140), failure_22, non_target).
trace(trace_417, trace_416, 'protect', line(junit_framework_test_result_1, 122), failure_22, non_target).
trace(trace_418, trace_417, 'runProtected', line(junit_framework_test_result, 142), failure_22, non_target).
trace(trace_419, trace_418, 'run', line(junit_framework_test_result, 125), failure_22, non_target).
trace(trace_420, trace_419, 'run', line(junit_framework_test_case, 130), failure_22, non_target).
trace(trace_421, trace_420, 'runTest', line(junit_framework_test_suite, 241), failure_22, non_target).
trace(trace_422, trace_421, 'run', line(junit_framework_test_suite, 236), failure_22, non_target).
trace(trace_423, trace_422, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_22, non_target).
trace(trace_424, trace_423, 'run', line(org_junit_runner_junit_core, 137), failure_22, non_target).
trace(trace_425, trace_424, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_22, non_target).



%%% End of Static Facts

%%% Values

val(p_renderer_1799, null, line(xyplot_1, 651)).
val(p_renderer_1799, null, line(xyplot_1, 652)).
val(p_renderer_1911, null, line(xyplot_1, 1607)).
val(p_renderer_1913, null, line(xyplot_1, 1620)).
val(p_renderer_1915, null, line(xyplot_1, 1639)).
val(p_renderer_1915, null, line(xyplot_1, 1640)).
val(xyplot_1_expr469, null, line(xyplot_1, 4473)).
val(v_r_2115, null, line(xyplot_1, 4493)).



%%% End of Facts