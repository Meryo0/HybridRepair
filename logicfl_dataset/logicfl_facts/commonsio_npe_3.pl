%%% Logic-FL Facts
:- style_check(-discontiguous).

%standard_line_separator_1 - org.apache.commons.io.StandardLineSeparator
param(p_line_separator_483, 1, m_standard_line_separator_294).
assign(f_line_separator_484, standard_line_separator_1_expr3, line(standard_line_separator_1, 53)).
method_invoc(standard_line_separator_1_expr3, m_require_non_null_12, line(standard_line_separator_1, 53)).
argument(p_line_separator_483, 1, standard_line_separator_1_expr3).
argument(standard_line_separator_1_literal4, 2, standard_line_separator_1_expr3).
ref(t_objects_5, standard_line_separator_1_expr3, line(standard_line_separator_1, 53)).
param(p_charset_485, 1, m_get_bytes_295).
return(f_line_separator_484, m_get_string_123, line(standard_line_separator_1, 72)).

%path_utils_1 - org.apache.commons.io.file.PathUtils
param(p_dir_1_486, 1, m_relative_sorted_paths_296).
param(p_dir_2_487, 2, m_relative_sorted_paths_296).
param(p_max_depth_488, 3, m_relative_sorted_paths_296).
param(p_link_options_489, 4, m_relative_sorted_paths_296).
param(p_file_visit_options_490, 5, m_relative_sorted_paths_296).
throw(m_relative_sorted_paths_296, ioexception).
assign(f_open_options_truncate_491, path_utils_1_expr1, line(path_utils_1, 152)).
ref(t_standard_open_option_15, q_create_8, line(path_utils_1, 152)).
ref(t_standard_open_option_15, q_truncate_existing_9, line(path_utils_1, 152)).
assign(f_open_options_append_492, path_utils_1_expr2, line(path_utils_1, 154)).
ref(t_standard_open_option_15, q_create_10, line(path_utils_1, 154)).
ref(t_standard_open_option_15, q_append_10, line(path_utils_1, 154)).
assign(f_empty_copy_options_493, path_utils_1_expr3, line(path_utils_1, 161)).
assign(f_empty_delete_option_array_494, path_utils_1_expr4, line(path_utils_1, 168)).
assign(f_empty_file_attribute_array_495, path_utils_1_expr5, line(path_utils_1, 175)).
assign(f_empty_file_visit_option_array_496, path_utils_1_expr6, line(path_utils_1, 180)).
assign(f_empty_link_option_array_497, path_utils_1_expr7, line(path_utils_1, 185)).
assign(f_nofollow_link_option_array_498, path_utils_1_expr8, line(path_utils_1, 194)).
ref(t_link_option_16, q_nofollow_links_11, line(path_utils_1, 194)).
assign(f_null_link_option_499, path_utils_1_literal1, line(path_utils_1, 201)).
assign(f_empty_open_option_array_500, path_utils_1_expr9, line(path_utils_1, 206)).
assign(f_empty_path_array_501, path_utils_1_expr10, line(path_utils_1, 213)).
param(p_directory_502, 1, m_accumulate_297).
param(p_max_depth_503, 2, m_accumulate_297).
param(p_file_visit_options_504, 3, m_accumulate_297).
throw(m_accumulate_297, ioexception).
param(p_directory_505, 1, m_clean_directory_298).
throw(m_clean_directory_298, ioexception).
param(p_directory_506, 1, m_clean_directory_299).
param(p_delete_options_507, 2, m_clean_directory_299).
throw(m_clean_directory_299, ioexception).
param(p_file_508, 1, m_compare_last_modified_time_to_300).
param(p_file_time_509, 2, m_compare_last_modified_time_to_300).
param(p_options_510, 3, m_compare_last_modified_time_to_300).
throw(m_compare_last_modified_time_to_300, ioexception).
param(p_in_511, 1, m_copy_301).
param(p_target_512, 2, m_copy_301).
param(p_copy_options_513, 3, m_copy_301).
throw(m_copy_301, ioexception).
param(p_source_directory_514, 1, m_copy_directory_302).
param(p_target_directory_515, 2, m_copy_directory_302).
param(p_copy_options_516, 3, m_copy_directory_302).
throw(m_copy_directory_302, ioexception).
param(p_source_file_517, 1, m_copy_file_303).
param(p_target_file_518, 2, m_copy_file_303).
param(p_copy_options_519, 3, m_copy_file_303).
throw(m_copy_file_303, ioexception).
param(p_source_file_520, 1, m_copy_file_to_directory_304).
param(p_target_directory_521, 2, m_copy_file_to_directory_304).
param(p_copy_options_522, 3, m_copy_file_to_directory_304).
throw(m_copy_file_to_directory_304, ioexception).
param(p_source_file_523, 1, m_copy_file_to_directory_305).
param(p_target_directory_524, 2, m_copy_file_to_directory_305).
param(p_copy_options_525, 3, m_copy_file_to_directory_305).
throw(m_copy_file_to_directory_305, ioexception).
param(p_directory_526, 1, m_count_directory_306).
throw(m_count_directory_306, ioexception).
param(p_directory_527, 1, m_count_directory_as_big_integer_307).
throw(m_count_directory_as_big_integer_307, ioexception).
param(p_path_528, 1, m_create_parent_directories_308).
param(p_attrs_529, 2, m_create_parent_directories_308).
throw(m_create_parent_directories_308, ioexception).
param(p_path_530, 1, m_create_parent_directories_309).
param(p_link_option_531, 2, m_create_parent_directories_309).
param(p_attrs_532, 3, m_create_parent_directories_309).
throw(m_create_parent_directories_309, ioexception).
param(p_path_533, 1, m_delete_311).
throw(m_delete_311, ioexception).
param(p_path_534, 1, m_delete_312).
param(p_delete_options_535, 2, m_delete_312).
throw(m_delete_312, ioexception).
param(p_path_536, 1, m_delete_313).
param(p_link_options_537, 2, m_delete_313).
param(p_delete_options_538, 3, m_delete_313).
throw(m_delete_313, ioexception).
param(p_directory_539, 1, m_delete_directory_314).
throw(m_delete_directory_314, ioexception).
param(p_directory_540, 1, m_delete_directory_315).
param(p_delete_options_541, 2, m_delete_directory_315).
throw(m_delete_directory_315, ioexception).
param(p_directory_542, 1, m_delete_directory_316).
param(p_link_options_543, 2, m_delete_directory_316).
param(p_delete_options_544, 3, m_delete_directory_316).
throw(m_delete_directory_316, ioexception).
param(p_file_545, 1, m_delete_file_317).
throw(m_delete_file_317, ioexception).
param(p_file_546, 1, m_delete_file_318).
param(p_delete_options_547, 2, m_delete_file_318).
throw(m_delete_file_318, ioexception).
param(p_file_548, 1, m_delete_file_319).
param(p_link_options_549, 2, m_delete_file_319).
param(p_delete_options_550, 3, m_delete_file_319).
throw(m_delete_file_319, no_such_file_exception).
throw(m_delete_file_319, ioexception).
param(p_path_551, 1, m_delete_on_exit_320).
param(p_path_1_552, 1, m_directory_and_file_content_equals_321).
param(p_path_2_553, 2, m_directory_and_file_content_equals_321).
throw(m_directory_and_file_content_equals_321, ioexception).
param(p_path_1_554, 1, m_directory_and_file_content_equals_322).
param(p_path_2_555, 2, m_directory_and_file_content_equals_322).
param(p_link_options_556, 3, m_directory_and_file_content_equals_322).
param(p_open_options_557, 4, m_directory_and_file_content_equals_322).
param(p_file_visit_option_558, 5, m_directory_and_file_content_equals_322).
throw(m_directory_and_file_content_equals_322, ioexception).
param(p_path_1_559, 1, m_directory_content_equals_323).
param(p_path_2_560, 2, m_directory_content_equals_323).
throw(m_directory_content_equals_323, ioexception).
param(p_path_1_561, 1, m_directory_content_equals_324).
param(p_path_2_562, 2, m_directory_content_equals_324).
param(p_max_depth_563, 3, m_directory_content_equals_324).
param(p_link_options_564, 4, m_directory_content_equals_324).
param(p_file_visit_options_565, 5, m_directory_content_equals_324).
throw(m_directory_content_equals_324, ioexception).
param(p_path_566, 1, m_exists_325).
param(p_options_567, 2, m_exists_325).
param(p_path_1_568, 1, m_file_content_equals_326).
param(p_path_2_569, 2, m_file_content_equals_326).
throw(m_file_content_equals_326, ioexception).
param(p_path_1_570, 1, m_file_content_equals_327).
param(p_path_2_571, 2, m_file_content_equals_327).
param(p_link_options_572, 3, m_file_content_equals_327).
param(p_open_options_573, 4, m_file_content_equals_327).
throw(m_file_content_equals_327, ioexception).
param(p_filter_574, 1, m_filter_328).
param(p_paths_575, 2, m_filter_328).
param(p_filter_576, 1, m_filter_paths_329).
param(p_stream_577, 2, m_filter_paths_329).
param(p_collector_578, 3, m_filter_paths_329).
param(p_source_path_579, 1, m_get_acl_entry_list_330).
throw(m_get_acl_entry_list_330, ioexception).
param(p_path_580, 1, m_get_acl_file_attribute_view_331).
param(p_options_581, 2, m_get_acl_file_attribute_view_331).
param(p_path_582, 1, m_get_dos_file_attribute_view_332).
param(p_options_583, 2, m_get_dos_file_attribute_view_332).
param(p_path_584, 1, m_get_file_name_333).
param(p_function_585, 2, m_get_file_name_333).
assign(v_file_name_586, path_utils_1_expr11, line(path_utils_1, 881)).
cond_expr(path_utils_1_expr12, path_utils_1_expr13, path_utils_1_literal2, line(path_utils_1, 881)).
method_invoc(path_utils_1_expr13, m_get_file_name_334, line(path_utils_1, 881)).
ref(p_path_584, path_utils_1_expr13, line(path_utils_1, 881)).
return(path_utils_1_expr14, m_get_file_name_333, line(path_utils_1, 882)).
cond_expr(path_utils_1_expr15, path_utils_1_expr16, path_utils_1_literal4, line(path_utils_1, 882)).
method_invoc(path_utils_1_expr16, m_apply_335, line(path_utils_1, 882)).
argument(v_file_name_586, 1, path_utils_1_expr16).
ref(p_function_585, path_utils_1_expr16, line(path_utils_1, 882)).
param(p_path_587, 1, m_get_file_name_string_336).
return(path_utils_1_expr17, m_get_file_name_string_336, line(path_utils_1, 894)).
method_invoc(path_utils_1_expr17, m_get_file_name_333, line(path_utils_1, 894)).
argument(p_path_587, 1, path_utils_1_expr17).
argument(path_utils_1_expr18, 2, path_utils_1_expr17).
param(p_file_588, 1, m_get_last_modified_file_time_338).
throw(m_get_last_modified_file_time_338, ioexception).
param(p_path_589, 1, m_get_last_modified_file_time_339).
param(p_default_if_absent_590, 2, m_get_last_modified_file_time_339).
param(p_options_591, 3, m_get_last_modified_file_time_339).
throw(m_get_last_modified_file_time_339, ioexception).
param(p_path_592, 1, m_get_last_modified_file_time_340).
param(p_options_593, 2, m_get_last_modified_file_time_340).
throw(m_get_last_modified_file_time_340, ioexception).
param(p_uri_594, 1, m_get_last_modified_file_time_341).
throw(m_get_last_modified_file_time_341, ioexception).
param(p_url_595, 1, m_get_last_modified_file_time_342).
throw(m_get_last_modified_file_time_342, ioexception).
throw(m_get_last_modified_file_time_342, urisyntax_exception).
param(p_path_596, 1, m_get_last_modified_time_343).
param(p_options_597, 2, m_get_last_modified_time_343).
throw(m_get_last_modified_time_343, ioexception).
param(p_path_598, 1, m_get_parent_344).
param(p_path_599, 1, m_get_posix_file_attribute_view_345).
param(p_options_600, 2, m_get_posix_file_attribute_view_345).
param(p_path_601, 1, m_is_directory_347).
param(p_options_602, 2, m_is_directory_347).
param(p_path_603, 1, m_is_empty_348).
throw(m_is_empty_348, ioexception).
param(p_directory_604, 1, m_is_empty_directory_349).
throw(m_is_empty_directory_349, ioexception).
param(p_file_605, 1, m_is_empty_file_350).
throw(m_is_empty_file_350, ioexception).
param(p_file_606, 1, m_is_newer_351).
param(p_czdt_607, 2, m_is_newer_351).
param(p_options_608, 3, m_is_newer_351).
throw(m_is_newer_351, ioexception).
param(p_file_609, 1, m_is_newer_352).
param(p_file_time_610, 2, m_is_newer_352).
param(p_options_611, 3, m_is_newer_352).
throw(m_is_newer_352, ioexception).
param(p_file_612, 1, m_is_newer_353).
param(p_instant_613, 2, m_is_newer_353).
param(p_options_614, 3, m_is_newer_353).
throw(m_is_newer_353, ioexception).
param(p_file_615, 1, m_is_newer_354).
param(p_time_millis_616, 2, m_is_newer_354).
param(p_options_617, 3, m_is_newer_354).
throw(m_is_newer_354, ioexception).
param(p_file_618, 1, m_is_newer_355).
param(p_reference_619, 2, m_is_newer_355).
throw(m_is_newer_355, ioexception).
param(p_file_620, 1, m_is_older_356).
param(p_file_time_621, 2, m_is_older_356).
param(p_options_622, 3, m_is_older_356).
throw(m_is_older_356, ioexception).
param(p_file_623, 1, m_is_older_357).
param(p_instant_624, 2, m_is_older_357).
param(p_options_625, 3, m_is_older_357).
throw(m_is_older_357, ioexception).
param(p_file_626, 1, m_is_older_358).
param(p_time_millis_627, 2, m_is_older_358).
param(p_options_628, 3, m_is_older_358).
throw(m_is_older_358, ioexception).
param(p_file_629, 1, m_is_older_359).
param(p_reference_630, 2, m_is_older_359).
throw(m_is_older_359, ioexception).
param(p_test_631, 1, m_is_posix_360).
param(p_options_632, 2, m_is_posix_360).
param(p_path_633, 1, m_is_regular_file_361).
param(p_options_634, 2, m_is_regular_file_361).
param(p_dir_635, 1, m_new_directory_stream_362).
param(p_path_filter_636, 2, m_new_directory_stream_362).
throw(m_new_directory_stream_362, ioexception).
param(p_path_637, 1, m_new_output_stream_363).
param(p_append_638, 2, m_new_output_stream_363).
throw(m_new_output_stream_363, ioexception).
param(p_path_639, 1, m_new_output_stream_364).
param(p_link_options_640, 2, m_new_output_stream_364).
param(p_open_options_641, 3, m_new_output_stream_364).
throw(m_new_output_stream_364, ioexception).
param(p_path_642, 1, m_not_exists_366).
param(p_options_643, 2, m_not_exists_366).
param(p_delete_options_644, 1, m_override_read_only_367).
param(p_path_645, 1, m_read_attributes_368).
param(p_type_646, 2, m_read_attributes_368).
param(p_options_647, 3, m_read_attributes_368).
param(p_path_648, 1, m_read_basic_file_attributes_369).
throw(m_read_basic_file_attributes_369, ioexception).
param(p_path_649, 1, m_read_basic_file_attributes_370).
param(p_options_650, 2, m_read_basic_file_attributes_370).
param(p_path_651, 1, m_read_basic_file_attributes_unchecked_371).
param(p_path_652, 1, m_read_dos_file_attributes_372).
param(p_options_653, 2, m_read_dos_file_attributes_372).
param(p_path_654, 1, m_read_if_symbolic_link_373).
throw(m_read_if_symbolic_link_373, ioexception).
param(p_path_655, 1, m_read_os_file_attributes_374).
param(p_options_656, 2, m_read_os_file_attributes_374).
param(p_path_657, 1, m_read_posix_file_attributes_375).
param(p_options_658, 2, m_read_posix_file_attributes_375).
param(p_path_659, 1, m_read_string_376).
param(p_charset_660, 2, m_read_string_376).
throw(m_read_string_376, ioexception).
param(p_collection_661, 1, m_relativize_377).
param(p_parent_662, 2, m_relativize_377).
param(p_sort_663, 3, m_relativize_377).
param(p_comparator_664, 4, m_relativize_377).
param(p_file_665, 1, m_require_exists_378).
param(p_file_param_name_666, 2, m_require_exists_378).
param(p_options_667, 3, m_require_exists_378).
param(p_path_668, 1, m_set_dos_read_only_379).
param(p_read_only_669, 2, m_set_dos_read_only_379).
param(p_link_options_670, 3, m_set_dos_read_only_379).
throw(m_set_dos_read_only_379, ioexception).
param(p_source_file_671, 1, m_set_last_modified_time_380).
param(p_target_file_672, 2, m_set_last_modified_time_380).
throw(m_set_last_modified_time_380, ioexception).
param(p_parent_673, 1, m_set_posix_delete_permissions_381).
param(p_enable_delete_children_674, 2, m_set_posix_delete_permissions_381).
param(p_link_options_675, 3, m_set_posix_delete_permissions_381).
throw(m_set_posix_delete_permissions_381, ioexception).
param(p_path_676, 1, m_set_posix_permissions_382).
param(p_add_permissions_677, 2, m_set_posix_permissions_382).
param(p_update_permissions_678, 3, m_set_posix_permissions_382).
param(p_link_options_679, 4, m_set_posix_permissions_382).
throw(m_set_posix_permissions_382, ioexception).
param(p_path_680, 1, m_set_posix_read_only_file_383).
param(p_read_only_681, 2, m_set_posix_read_only_file_383).
param(p_link_options_682, 3, m_set_posix_read_only_file_383).
throw(m_set_posix_read_only_file_383, ioexception).
param(p_path_683, 1, m_set_read_only_384).
param(p_read_only_684, 2, m_set_read_only_384).
param(p_link_options_685, 3, m_set_read_only_384).
throw(m_set_read_only_384, ioexception).
param(p_path_686, 1, m_size_of_385).
throw(m_size_of_385, ioexception).
param(p_path_687, 1, m_size_of_as_big_integer_386).
throw(m_size_of_as_big_integer_386, ioexception).
param(p_directory_688, 1, m_size_of_directory_387).
throw(m_size_of_directory_387, ioexception).
param(p_directory_689, 1, m_size_of_directory_as_big_integer_388).
throw(m_size_of_directory_as_big_integer_388, ioexception).
param(p_file_visit_options_690, 1, m_to_file_visit_option_set_389).
param(p_file_691, 1, m_touch_390).
throw(m_touch_390, ioexception).
param(p_visitor_692, 1, m_visit_file_tree_391).
param(p_directory_693, 2, m_visit_file_tree_391).
throw(m_visit_file_tree_391, ioexception).
param(p_visitor_694, 1, m_visit_file_tree_392).
param(p_start_695, 2, m_visit_file_tree_392).
param(p_options_696, 3, m_visit_file_tree_392).
param(p_max_depth_697, 4, m_visit_file_tree_392).
throw(m_visit_file_tree_392, ioexception).
param(p_visitor_698, 1, m_visit_file_tree_393).
param(p_first_699, 2, m_visit_file_tree_393).
param(p_more_700, 3, m_visit_file_tree_393).
throw(m_visit_file_tree_393, ioexception).
param(p_visitor_701, 1, m_visit_file_tree_394).
param(p_uri_702, 2, m_visit_file_tree_394).
throw(m_visit_file_tree_394, ioexception).
param(p_file_703, 1, m_wait_for_395).
param(p_timeout_704, 2, m_wait_for_395).
param(p_options_705, 3, m_wait_for_395).
param(p_start_706, 1, m_walk_396).
param(p_path_filter_707, 2, m_walk_396).
param(p_max_depth_708, 3, m_walk_396).
param(p_read_attributes_709, 4, m_walk_396).
param(p_options_710, 5, m_walk_396).
throw(m_walk_396, ioexception).
param(p_path_711, 1, m_with_posix_file_attributes_397).
param(p_link_options_712, 2, m_with_posix_file_attributes_397).
param(p_override_read_only_713, 3, m_with_posix_file_attributes_397).
param(p_function_714, 4, m_with_posix_file_attributes_397).
throw(m_with_posix_file_attributes_397, ioexception).
param(p_path_715, 1, m_write_string_398).
param(p_char_sequence_716, 2, m_write_string_398).
param(p_charset_717, 3, m_write_string_398).
param(p_open_options_718, 4, m_write_string_398).
throw(m_write_string_398, ioexception).

%can_write_file_filter_1 - org.apache.commons.io.filefilter.CanWriteFileFilter
assign(f_can_write_777, can_write_file_filter_1_expr1, line(can_write_file_filter_1, 62)).
method_invoc(can_write_file_filter_1_expr1, m_can_write_file_filter_455, line(can_write_file_filter_1, 62)).
assign(f_cannot_write_778, can_write_file_filter_1_expr2, line(can_write_file_filter_1, 65)).
method_invoc(can_write_file_filter_1_expr2, m_negate_449, line(can_write_file_filter_1, 65)).
ref(f_can_write_777, can_write_file_filter_1_expr2, line(can_write_file_filter_1, 65)).
param(p_file_779, 1, m_accept_456).
return(can_write_file_filter_1_expr3, m_accept_456, line(can_write_file_filter_1, 83)).
method_invoc(can_write_file_filter_1_expr3, m_can_write_457, line(can_write_file_filter_1, 83)).
ref(p_file_779, can_write_file_filter_1_expr3, line(can_write_file_filter_1, 83)).
param(p_file_780, 1, m_accept_458).
param(p_attributes_781, 2, m_accept_458).
return(can_write_file_filter_1_expr4, m_accept_458, line(can_write_file_filter_1, 95)).
method_invoc(can_write_file_filter_1_expr4, m_to_file_visit_result_415, line(can_write_file_filter_1, 95)).
argument(can_write_file_filter_1_expr5, 1, can_write_file_filter_1_expr4).
method_invoc(can_write_file_filter_1_expr5, m_is_writable_459, line(can_write_file_filter_1, 95)).
argument(p_file_780, 1, can_write_file_filter_1_expr5).
ref(t_files_20, can_write_file_filter_1_expr5, line(can_write_file_filter_1, 95)).

%iocase_1 - org.apache.commons.io.IOCase
method_invoc(iocase_1_expr1, m_is_case_sensitive_22, line(iocase_1, 66)).
ref(iocase_1_expr2, iocase_1_expr1, line(iocase_1, 66)).
method_invoc(iocase_1_expr2, m_get_current_3, line(iocase_1, 66)).
ref(t_file_system_1, iocase_1_expr2, line(iocase_1, 66)).
param(p_name_128, 1, m_for_name_79).
param(p_io_case_129, 1, m_is_case_sensitive_80).
param(p_value_130, 1, m_value_81).
param(p_default_value_131, 2, m_value_81).
return(iocase_1_expr3, m_value_81, line(iocase_1, 103)).
cond_expr(iocase_1_expr4, p_value_130, p_default_value_131, line(iocase_1, 103)).
param(p_name_132, 1, m_iocase_82).
param(p_sensitive_133, 2, m_iocase_82).
assign(f_name_134, p_name_132, line(iocase_1, 119)).
assign(f_sensitive_135, p_sensitive_133, line(iocase_1, 120)).
param(p_str_1_136, 1, m_check_compare_to_83).
param(p_str_2_137, 2, m_check_compare_to_83).
param(p_str_138, 1, m_check_ends_with_84).
param(p_end_139, 2, m_check_ends_with_84).
param(p_str_1_140, 1, m_check_equals_85).
param(p_str_2_141, 2, m_check_equals_85).
method_invoc(iocase_1_expr11, m_require_non_null_12, line(iocase_1, 173)).
argument(p_str_1_140, 1, iocase_1_expr11).
argument(iocase_1_literal7, 2, iocase_1_expr11).
ref(t_objects_5, iocase_1_expr11, line(iocase_1, 173)).
method_invoc(iocase_1_expr12, m_require_non_null_12, line(iocase_1, 174)).
throw(iocase_1_expr12, null_pointer_exception, line(iocase_1, 174)).
argument(p_str_2_141, 1, iocase_1_expr12).
argument(iocase_1_literal8, 2, iocase_1_expr12).
ref(t_objects_5, iocase_1_expr12, line(iocase_1, 174)).
return(iocase_1_expr13, m_check_equals_85, line(iocase_1, 175)).
cond_expr(f_sensitive_135, iocase_1_expr14, iocase_1_expr15, line(iocase_1, 175)).
method_invoc(iocase_1_expr14, m_equals_86, line(iocase_1, 175)).
argument(p_str_2_141, 1, iocase_1_expr14).
ref(p_str_1_140, iocase_1_expr14, line(iocase_1, 175)).
method_invoc(iocase_1_expr15, m_equals_ignore_case_87, line(iocase_1, 175)).
argument(p_str_2_141, 1, iocase_1_expr15).
ref(p_str_1_140, iocase_1_expr15, line(iocase_1, 175)).
param(p_str_142, 1, m_check_index_of_88).
param(p_str_start_index_143, 2, m_check_index_of_88).
param(p_search_144, 3, m_check_index_of_88).
param(p_str_145, 1, m_check_region_matches_89).
param(p_str_start_index_146, 2, m_check_region_matches_89).
param(p_search_147, 3, m_check_region_matches_89).
param(p_str_148, 1, m_check_starts_with_90).
param(p_start_149, 2, m_check_starts_with_90).

%ioutils_1 - org.apache.commons.io.IOUtils
assign(f_dir_separator_154, q_separator_char_5, line(ioutils_1, 145)).
ref(t_file_8, q_separator_char_5, line(ioutils_1, 145)).
assign(f_empty_byte_array_155, ioutils_1_expr1, line(ioutils_1, 162)).
assign(f_line_separator_156, ioutils_1_expr2, line(ioutils_1, 183)).
method_invoc(ioutils_1_expr2, m_line_separator_122, line(ioutils_1, 183)).
ref(t_system_3, ioutils_1_expr2, line(ioutils_1, 183)).
assign(f_line_separator_unix_157, ioutils_1_expr3, line(ioutils_1, 190)).
method_invoc(ioutils_1_expr3, m_get_string_123, line(ioutils_1, 190)).
ref(f_lf_158, ioutils_1_expr3, line(ioutils_1, 190)).
ref(t_standard_line_separator_12, q_lf_5, line(ioutils_1, 190)).
assign(f_line_separator_windows_159, ioutils_1_expr4, line(ioutils_1, 197)).
method_invoc(ioutils_1_expr4, m_get_string_123, line(ioutils_1, 197)).
ref(f_crlf_160, ioutils_1_expr4, line(ioutils_1, 197)).
ref(t_standard_line_separator_12, q_crlf_6, line(ioutils_1, 197)).
assign(f_scratch_byte_buffer_rw_161, ioutils_1_expr5, line(ioutils_1, 202)).
method_invoc(ioutils_1_expr5, m_with_initial_124, line(ioutils_1, 202)).
argument(ioutils_1_expr6, 1, ioutils_1_expr5).
ref(t_thread_local_13, ioutils_1_expr5, line(ioutils_1, 202)).
assign(f_scratch_byte_buffer_wo_162, ioutils_1_expr7, line(ioutils_1, 207)).
method_invoc(ioutils_1_expr7, m_byte_array_125, line(ioutils_1, 207)).
assign(f_scratch_char_buffer_rw_163, ioutils_1_expr8, line(ioutils_1, 212)).
method_invoc(ioutils_1_expr8, m_with_initial_124, line(ioutils_1, 212)).
argument(ioutils_1_expr9, 1, ioutils_1_expr8).
ref(t_thread_local_13, ioutils_1_expr8, line(ioutils_1, 212)).
assign(f_scratch_char_buffer_wo_164, ioutils_1_expr10, line(ioutils_1, 217)).
method_invoc(ioutils_1_expr10, m_char_array_126, line(ioutils_1, 217)).
param(p_input_stream_165, 1, m_buffer_127).
param(p_input_stream_166, 1, m_buffer_128).
param(p_size_167, 2, m_buffer_128).
param(p_output_stream_168, 1, m_buffer_129).
param(p_output_stream_169, 1, m_buffer_130).
param(p_size_170, 2, m_buffer_130).
param(p_reader_171, 1, m_buffer_131).
param(p_reader_172, 1, m_buffer_132).
param(p_size_173, 2, m_buffer_132).
param(p_writer_174, 1, m_buffer_133).
param(p_writer_175, 1, m_buffer_134).
param(p_size_176, 2, m_buffer_134).
return(ioutils_1_expr11, m_byte_array_125, line(ioutils_1, 354)).
method_invoc(ioutils_1_expr11, m_byte_array_135, line(ioutils_1, 354)).
argument(f_default_buffer_size_177, 1, ioutils_1_expr11).
param(p_size_178, 1, m_byte_array_135).
return(ioutils_1_expr12, m_byte_array_135, line(ioutils_1, 368)).
return(ioutils_1_expr13, m_char_array_126, line(ioutils_1, 378)).
method_invoc(ioutils_1_expr13, m_char_array_136, line(ioutils_1, 378)).
argument(f_default_buffer_size_177, 1, ioutils_1_expr13).
param(p_size_179, 1, m_char_array_136).
return(ioutils_1_expr14, m_char_array_136, line(ioutils_1, 391)).
param(p_closeable_180, 1, m_close_138).
throw(m_close_138, ioexception).
param(p_closeables_181, 1, m_close_139).
throw(m_close_139, ioexception_list).
param(p_closeable_182, 1, m_close_140).
param(p_consumer_183, 2, m_close_140).
throw(m_close_140, ioexception).
param(p_conn_184, 1, m_close_141).
param(p_closeable_185, 1, m_close_q_142).
param(p_closeable_186, 1, m_close_quietly_143).
param(p_closeables_187, 1, m_close_quietly_144).
param(p_closeable_188, 1, m_close_quietly_145).
param(p_consumer_189, 2, m_close_quietly_145).
param(p_input_190, 1, m_close_quietly_146).
param(p_closeables_191, 1, m_close_quietly_147).
param(p_output_192, 1, m_close_quietly_148).
param(p_reader_193, 1, m_close_quietly_149).
param(p_selector_194, 1, m_close_quietly_150).
param(p_server_socket_195, 1, m_close_quietly_151).
param(p_socket_196, 1, m_close_quietly_152).
param(p_closeables_197, 1, m_close_quietly_153).
param(p_writer_198, 1, m_close_quietly_154).
param(p_input_199, 1, m_consume_155).
throw(m_consume_155, ioexception).
param(p_input_200, 1, m_consume_156).
throw(m_consume_156, ioexception).
param(p_input_1_201, 1, m_content_equals_157).
param(p_input_2_202, 2, m_content_equals_157).
throw(m_content_equals_157, ioexception).
param(p_iterator_1_203, 1, m_content_equals_158).
param(p_iterator_2_204, 2, m_content_equals_158).
param(p_input_1_205, 1, m_content_equals_159).
param(p_input_2_206, 2, m_content_equals_159).
throw(m_content_equals_159, ioexception).
param(p_stream_1_207, 1, m_content_equals_160).
param(p_stream_2_208, 2, m_content_equals_160).
param(p_reader_1_209, 1, m_content_equals_ignore_eol_161).
param(p_reader_2_210, 2, m_content_equals_ignore_eol_161).
param(p_reader_1_211, 1, m_content_equals_ignore_eol_162).
param(p_reader_2_212, 2, m_content_equals_ignore_eol_162).
throw(m_content_equals_ignore_eol_162, unchecked_ioexception).
param(p_input_stream_213, 1, m_copy_163).
param(p_output_stream_214, 2, m_copy_163).
throw(m_copy_163, ioexception).
param(p_input_stream_215, 1, m_copy_164).
param(p_output_stream_216, 2, m_copy_164).
param(p_buffer_size_217, 3, m_copy_164).
throw(m_copy_164, ioexception).
param(p_input_218, 1, m_copy_165).
param(p_writer_219, 2, m_copy_165).
throw(m_copy_165, ioexception).
param(p_input_220, 1, m_copy_166).
param(p_writer_221, 2, m_copy_166).
param(p_input_charset_222, 3, m_copy_166).
throw(m_copy_166, ioexception).
param(p_input_223, 1, m_copy_167).
param(p_writer_224, 2, m_copy_167).
param(p_input_charset_name_225, 3, m_copy_167).
throw(m_copy_167, ioexception).
param(p_output_stream_226, 1, m_copy_168).
throw(m_copy_168, ioexception).
param(p_reader_227, 1, m_copy_169).
param(p_output_228, 2, m_copy_169).
throw(m_copy_169, ioexception).
param(p_reader_229, 1, m_copy_170).
param(p_output_230, 2, m_copy_170).
param(p_buffer_231, 3, m_copy_170).
throw(m_copy_170, ioexception).
param(p_reader_232, 1, m_copy_171).
param(p_output_233, 2, m_copy_171).
throw(m_copy_171, ioexception).
param(p_reader_234, 1, m_copy_172).
param(p_output_235, 2, m_copy_172).
param(p_output_charset_236, 3, m_copy_172).
throw(m_copy_172, ioexception).
param(p_reader_237, 1, m_copy_173).
param(p_output_238, 2, m_copy_173).
param(p_output_charset_name_239, 3, m_copy_173).
throw(m_copy_173, ioexception).
param(p_reader_240, 1, m_copy_174).
param(p_writer_241, 2, m_copy_174).
throw(m_copy_174, ioexception).
param(p_url_242, 1, m_copy_175).
param(p_file_243, 2, m_copy_175).
throw(m_copy_175, ioexception).
param(p_url_244, 1, m_copy_176).
param(p_output_stream_245, 2, m_copy_176).
throw(m_copy_176, ioexception).
param(p_input_stream_246, 1, m_copy_large_177).
param(p_output_stream_247, 2, m_copy_large_177).
throw(m_copy_large_177, ioexception).
param(p_input_stream_248, 1, m_copy_large_178).
param(p_output_stream_249, 2, m_copy_large_178).
param(p_buffer_250, 3, m_copy_large_178).
throw(m_copy_large_178, ioexception).
param(p_input_251, 1, m_copy_large_179).
param(p_output_252, 2, m_copy_large_179).
param(p_input_offset_253, 3, m_copy_large_179).
param(p_length_254, 4, m_copy_large_179).
throw(m_copy_large_179, ioexception).
param(p_input_255, 1, m_copy_large_180).
param(p_output_256, 2, m_copy_large_180).
param(p_input_offset_257, 3, m_copy_large_180).
param(p_length_258, 4, m_copy_large_180).
param(p_buffer_259, 5, m_copy_large_180).
throw(m_copy_large_180, ioexception).
param(p_reader_260, 1, m_copy_large_181).
param(p_writer_261, 2, m_copy_large_181).
throw(m_copy_large_181, ioexception).
param(p_reader_262, 1, m_copy_large_182).
param(p_writer_263, 2, m_copy_large_182).
param(p_buffer_264, 3, m_copy_large_182).
throw(m_copy_large_182, ioexception).
param(p_reader_265, 1, m_copy_large_183).
param(p_writer_266, 2, m_copy_large_183).
param(p_input_offset_267, 3, m_copy_large_183).
param(p_length_268, 4, m_copy_large_183).
throw(m_copy_large_183, ioexception).
param(p_reader_269, 1, m_copy_large_184).
param(p_writer_270, 2, m_copy_large_184).
param(p_input_offset_271, 3, m_copy_large_184).
param(p_length_272, 4, m_copy_large_184).
param(p_buffer_273, 5, m_copy_large_184).
throw(m_copy_large_184, ioexception).
param(p_arr_274, 1, m_fill_0_185).
param(p_arr_275, 1, m_fill_0_186).
param(p_array_276, 1, m_length_191).
param(p_array_277, 1, m_length_192).
param(p_csq_278, 1, m_length_193).
param(p_array_279, 1, m_length_194).
return(ioutils_1_expr15, m_length_194, line(ioutils_1, 1789)).
cond_expr(ioutils_1_expr16, ioutils_1_literal1, q_length_7, line(ioutils_1, 1789)).
ref(p_array_279, q_length_7, line(ioutils_1, 1789)).
param(p_input_280, 1, m_line_iterator_195).
param(p_charset_281, 2, m_line_iterator_195).
param(p_input_282, 1, m_line_iterator_196).
param(p_charset_name_283, 2, m_line_iterator_196).
param(p_reader_284, 1, m_line_iterator_197).
param(p_input_285, 1, m_read_198).
param(p_buffer_286, 2, m_read_198).
throw(m_read_198, ioexception).
param(p_input_287, 1, m_read_199).
param(p_buffer_288, 2, m_read_199).
param(p_offset_289, 3, m_read_199).
param(p_length_290, 4, m_read_199).
throw(m_read_199, ioexception).
param(p_input_291, 1, m_read_200).
param(p_buffer_292, 2, m_read_200).
param(p_offset_293, 3, m_read_200).
param(p_length_294, 4, m_read_200).
throw(m_read_200, ioexception).
param(p_input_295, 1, m_read_201).
param(p_buffer_296, 2, m_read_201).
throw(m_read_201, ioexception).
param(p_reader_297, 1, m_read_202).
param(p_buffer_298, 2, m_read_202).
throw(m_read_202, ioexception).
param(p_reader_299, 1, m_read_203).
param(p_buffer_300, 2, m_read_203).
param(p_offset_301, 3, m_read_203).
param(p_length_302, 4, m_read_203).
throw(m_read_203, ioexception).
param(p_input_303, 1, m_read_fully_204).
param(p_buffer_304, 2, m_read_fully_204).
throw(m_read_fully_204, ioexception).
param(p_input_305, 1, m_read_fully_205).
param(p_buffer_306, 2, m_read_fully_205).
param(p_offset_307, 3, m_read_fully_205).
param(p_length_308, 4, m_read_fully_205).
throw(m_read_fully_205, ioexception).
param(p_input_309, 1, m_read_fully_206).
param(p_length_310, 2, m_read_fully_206).
throw(m_read_fully_206, ioexception).
param(p_input_311, 1, m_read_fully_207).
param(p_buffer_312, 2, m_read_fully_207).
throw(m_read_fully_207, ioexception).
param(p_reader_313, 1, m_read_fully_208).
param(p_buffer_314, 2, m_read_fully_208).
throw(m_read_fully_208, ioexception).
param(p_reader_315, 1, m_read_fully_209).
param(p_buffer_316, 2, m_read_fully_209).
param(p_offset_317, 3, m_read_fully_209).
param(p_length_318, 4, m_read_fully_209).
throw(m_read_fully_209, ioexception).
param(p_input_319, 1, m_read_lines_210).
throw(m_read_lines_210, unchecked_ioexception).
param(p_input_320, 1, m_read_lines_211).
param(p_charset_321, 2, m_read_lines_211).
throw(m_read_lines_211, unchecked_ioexception).
param(p_input_322, 1, m_read_lines_212).
param(p_charset_name_323, 2, m_read_lines_212).
throw(m_read_lines_212, unchecked_ioexception).
param(p_reader_324, 1, m_read_lines_213).
throw(m_read_lines_213, unchecked_ioexception).
param(p_name_325, 1, m_resource_to_byte_array_214).
throw(m_resource_to_byte_array_214, ioexception).
param(p_name_326, 1, m_resource_to_byte_array_215).
param(p_class_loader_327, 2, m_resource_to_byte_array_215).
throw(m_resource_to_byte_array_215, ioexception).
param(p_name_328, 1, m_resource_to_string_216).
param(p_charset_329, 2, m_resource_to_string_216).
throw(m_resource_to_string_216, ioexception).
param(p_name_330, 1, m_resource_to_string_217).
param(p_charset_331, 2, m_resource_to_string_217).
param(p_class_loader_332, 3, m_resource_to_string_217).
throw(m_resource_to_string_217, ioexception).
param(p_name_333, 1, m_resource_to_url_218).
throw(m_resource_to_url_218, ioexception).
param(p_name_334, 1, m_resource_to_url_219).
param(p_class_loader_335, 2, m_resource_to_url_219).
throw(m_resource_to_url_219, ioexception).
param(p_input_336, 1, m_skip_220).
param(p_to_skip_337, 2, m_skip_220).
throw(m_skip_220, ioexception).
param(p_input_338, 1, m_skip_221).
param(p_to_skip_339, 2, m_skip_221).
param(p_skip_buffer_supplier_340, 3, m_skip_221).
throw(m_skip_221, ioexception).
param(p_input_341, 1, m_skip_222).
param(p_to_skip_342, 2, m_skip_222).
throw(m_skip_222, ioexception).
param(p_reader_343, 1, m_skip_223).
param(p_to_skip_344, 2, m_skip_223).
throw(m_skip_223, ioexception).
param(p_input_345, 1, m_skip_fully_224).
param(p_to_skip_346, 2, m_skip_fully_224).
throw(m_skip_fully_224, ioexception).
param(p_input_347, 1, m_skip_fully_225).
param(p_to_skip_348, 2, m_skip_fully_225).
param(p_skip_buffer_supplier_349, 3, m_skip_fully_225).
throw(m_skip_fully_225, ioexception).
param(p_input_350, 1, m_skip_fully_226).
param(p_to_skip_351, 2, m_skip_fully_226).
throw(m_skip_fully_226, ioexception).
param(p_reader_352, 1, m_skip_fully_227).
param(p_to_skip_353, 2, m_skip_fully_227).
throw(m_skip_fully_227, ioexception).
param(p_input_354, 1, m_to_buffered_input_stream_228).
throw(m_to_buffered_input_stream_228, ioexception).
param(p_input_355, 1, m_to_buffered_input_stream_229).
param(p_size_356, 2, m_to_buffered_input_stream_229).
throw(m_to_buffered_input_stream_229, ioexception).
param(p_reader_357, 1, m_to_buffered_reader_230).
param(p_reader_358, 1, m_to_buffered_reader_231).
param(p_size_359, 2, m_to_buffered_reader_231).
param(p_input_stream_360, 1, m_to_byte_array_232).
throw(m_to_byte_array_232, ioexception).
param(p_input_361, 1, m_to_byte_array_233).
param(p_size_362, 2, m_to_byte_array_233).
throw(m_to_byte_array_233, ioexception).
param(p_input_363, 1, m_to_byte_array_234).
param(p_size_364, 2, m_to_byte_array_234).
throw(m_to_byte_array_234, ioexception).
param(p_input_365, 1, m_to_byte_array_235).
param(p_size_366, 2, m_to_byte_array_235).
throw(m_to_byte_array_235, ioexception).
param(p_reader_367, 1, m_to_byte_array_236).
throw(m_to_byte_array_236, ioexception).
param(p_reader_368, 1, m_to_byte_array_237).
param(p_charset_369, 2, m_to_byte_array_237).
throw(m_to_byte_array_237, ioexception).
param(p_reader_370, 1, m_to_byte_array_238).
param(p_charset_name_371, 2, m_to_byte_array_238).
throw(m_to_byte_array_238, ioexception).
param(p_input_372, 1, m_to_byte_array_239).
param(p_uri_373, 1, m_to_byte_array_240).
throw(m_to_byte_array_240, ioexception).
param(p_url_374, 1, m_to_byte_array_241).
throw(m_to_byte_array_241, ioexception).
param(p_url_connection_375, 1, m_to_byte_array_242).
throw(m_to_byte_array_242, ioexception).
param(p_input_stream_376, 1, m_to_char_array_243).
throw(m_to_char_array_243, ioexception).
param(p_input_stream_377, 1, m_to_char_array_244).
param(p_charset_378, 2, m_to_char_array_244).
throw(m_to_char_array_244, ioexception).
param(p_input_stream_379, 1, m_to_char_array_245).
param(p_charset_name_380, 2, m_to_char_array_245).
throw(m_to_char_array_245, ioexception).
param(p_reader_381, 1, m_to_char_array_246).
throw(m_to_char_array_246, ioexception).
param(p_input_382, 1, m_to_input_stream_247).
param(p_input_383, 1, m_to_input_stream_248).
param(p_charset_384, 2, m_to_input_stream_248).
param(p_input_385, 1, m_to_input_stream_249).
param(p_charset_name_386, 2, m_to_input_stream_249).
param(p_input_387, 1, m_to_input_stream_250).
param(p_input_388, 1, m_to_input_stream_251).
param(p_charset_389, 2, m_to_input_stream_251).
param(p_input_390, 1, m_to_input_stream_252).
param(p_charset_name_391, 2, m_to_input_stream_252).
param(p_input_392, 1, m_to_string_253).
param(p_input_393, 1, m_to_string_254).
param(p_charset_name_394, 2, m_to_string_254).
param(p_input_395, 1, m_to_string_255).
throw(m_to_string_255, ioexception).
param(p_input_396, 1, m_to_string_256).
param(p_charset_397, 2, m_to_string_256).
throw(m_to_string_256, ioexception).
param(p_input_398, 1, m_to_string_257).
param(p_charset_name_399, 2, m_to_string_257).
throw(m_to_string_257, ioexception).
param(p_input_400, 1, m_to_string_258).
param(p_charset_401, 2, m_to_string_258).
throw(m_to_string_258, ioexception).
param(p_input_402, 1, m_to_string_259).
param(p_charset_403, 2, m_to_string_259).
param(p_default_string_404, 3, m_to_string_259).
throw(m_to_string_259, ioexception).
param(p_reader_405, 1, m_to_string_260).
throw(m_to_string_260, ioexception).
param(p_uri_406, 1, m_to_string_261).
throw(m_to_string_261, ioexception).
param(p_uri_407, 1, m_to_string_262).
param(p_encoding_408, 2, m_to_string_262).
throw(m_to_string_262, ioexception).
param(p_uri_409, 1, m_to_string_263).
param(p_charset_name_410, 2, m_to_string_263).
throw(m_to_string_263, ioexception).
param(p_url_411, 1, m_to_string_264).
throw(m_to_string_264, ioexception).
param(p_url_412, 1, m_to_string_265).
param(p_encoding_413, 2, m_to_string_265).
throw(m_to_string_265, ioexception).
param(p_url_414, 1, m_to_string_266).
param(p_charset_name_415, 2, m_to_string_266).
throw(m_to_string_266, ioexception).
param(p_data_416, 1, m_write_267).
param(p_output_417, 2, m_write_267).
throw(m_write_267, ioexception).
param(p_data_418, 1, m_write_268).
param(p_writer_419, 2, m_write_268).
throw(m_write_268, ioexception).
param(p_data_420, 1, m_write_269).
param(p_writer_421, 2, m_write_269).
param(p_charset_422, 3, m_write_269).
throw(m_write_269, ioexception).
param(p_data_423, 1, m_write_270).
param(p_writer_424, 2, m_write_270).
param(p_charset_name_425, 3, m_write_270).
throw(m_write_270, ioexception).
param(p_data_426, 1, m_write_271).
param(p_output_427, 2, m_write_271).
throw(m_write_271, ioexception).
param(p_data_428, 1, m_write_272).
param(p_output_429, 2, m_write_272).
param(p_charset_430, 3, m_write_272).
throw(m_write_272, ioexception).
param(p_data_431, 1, m_write_273).
param(p_output_432, 2, m_write_273).
param(p_charset_name_433, 3, m_write_273).
throw(m_write_273, ioexception).
param(p_data_434, 1, m_write_274).
param(p_writer_435, 2, m_write_274).
throw(m_write_274, ioexception).
param(p_data_436, 1, m_write_275).
param(p_output_437, 2, m_write_275).
throw(m_write_275, ioexception).
param(p_data_438, 1, m_write_276).
param(p_output_439, 2, m_write_276).
param(p_charset_440, 3, m_write_276).
throw(m_write_276, ioexception).
param(p_data_441, 1, m_write_277).
param(p_output_442, 2, m_write_277).
param(p_charset_name_443, 3, m_write_277).
throw(m_write_277, ioexception).
param(p_data_444, 1, m_write_278).
param(p_writer_445, 2, m_write_278).
throw(m_write_278, ioexception).
param(p_data_446, 1, m_write_279).
param(p_output_447, 2, m_write_279).
throw(m_write_279, ioexception).
param(p_data_448, 1, m_write_280).
param(p_output_449, 2, m_write_280).
param(p_charset_450, 3, m_write_280).
throw(m_write_280, ioexception).
param(p_data_451, 1, m_write_281).
param(p_output_452, 2, m_write_281).
param(p_charset_name_453, 3, m_write_281).
throw(m_write_281, ioexception).
param(p_data_454, 1, m_write_282).
param(p_writer_455, 2, m_write_282).
throw(m_write_282, ioexception).
param(p_data_456, 1, m_write_283).
param(p_output_457, 2, m_write_283).
throw(m_write_283, ioexception).
param(p_data_458, 1, m_write_284).
param(p_output_459, 2, m_write_284).
param(p_charset_name_460, 3, m_write_284).
throw(m_write_284, ioexception).
param(p_data_461, 1, m_write_285).
param(p_writer_462, 2, m_write_285).
throw(m_write_285, ioexception).
param(p_data_463, 1, m_write_chunked_286).
param(p_output_464, 2, m_write_chunked_286).
throw(m_write_chunked_286, ioexception).
param(p_data_465, 1, m_write_chunked_287).
param(p_writer_466, 2, m_write_chunked_287).
throw(m_write_chunked_287, ioexception).
param(p_lines_467, 1, m_write_lines_288).
param(p_line_ending_468, 2, m_write_lines_288).
param(p_output_469, 3, m_write_lines_288).
throw(m_write_lines_288, ioexception).
param(p_lines_470, 1, m_write_lines_289).
param(p_line_ending_471, 2, m_write_lines_289).
param(p_output_472, 3, m_write_lines_289).
param(p_charset_473, 4, m_write_lines_289).
throw(m_write_lines_289, ioexception).
param(p_lines_474, 1, m_write_lines_290).
param(p_line_ending_475, 2, m_write_lines_290).
param(p_output_476, 3, m_write_lines_290).
param(p_charset_name_477, 4, m_write_lines_290).
throw(m_write_lines_290, ioexception).
param(p_lines_478, 1, m_write_lines_291).
param(p_line_ending_479, 2, m_write_lines_291).
param(p_writer_480, 3, m_write_lines_291).
throw(m_write_lines_291, ioexception).
param(p_appendable_481, 1, m_writer_292).

%directory_file_filter_1 - org.apache.commons.io.filefilter.DirectoryFileFilter
assign(f_directory_782, directory_file_filter_1_expr1, line(directory_file_filter_1, 75)).
method_invoc(directory_file_filter_1_expr1, m_directory_file_filter_460, line(directory_file_filter_1, 75)).
assign(f_instance_783, f_directory_782, line(directory_file_filter_1, 81)).
param(p_file_784, 1, m_accept_461).
param(p_file_785, 1, m_accept_462).
param(p_attributes_786, 2, m_accept_462).

%not_file_filter_1 - org.apache.commons.io.filefilter.NotFileFilter
param(p_filter_908, 1, m_not_file_filter_598).
method_invoc(not_file_filter_1_expr1, m_require_non_null_12, line(not_file_filter_1, 50)).
argument(p_filter_908, 1, not_file_filter_1_expr1).
argument(not_file_filter_1_literal1, 2, not_file_filter_1_expr1).
ref(t_objects_5, not_file_filter_1_expr1, line(not_file_filter_1, 50)).
assign(f_filter_909, p_filter_908, line(not_file_filter_1, 51)).
param(p_file_910, 1, m_accept_615).
param(p_file_911, 1, m_accept_616).
param(p_name_912, 2, m_accept_616).
param(p_file_913, 1, m_accept_617).
param(p_attributes_914, 2, m_accept_617).
param(p_accept_915, 1, m_not_618).

%iocase_test_1 - org.apache.commons.io.IOCaseTest
assign(f_windows_150, iocase_test_1_expr1, line(iocase_test_1, 39)).
ref(t_file_8, q_separator_char_4, line(iocase_test_1, 39)).
param(p_arr_151, 1, m_assert_0_95).
param(p_arr_152, 1, m_assert_0_96).
param(p_value_153, 1, m_serialize_97).
throw(m_serialize_97, exception).
method_invoc(iocase_test_1_expr2, m_assert_false_104, line(iocase_test_1, 136)).
argument(iocase_test_1_expr3, 1, iocase_test_1_expr2).
method_invoc(iocase_test_1_expr3, m_check_equals_85, line(iocase_test_1, 136)).
argument(iocase_test_1_literal2, 1, iocase_test_1_expr3).
argument(iocase_test_1_literal3, 2, iocase_test_1_expr3).
ref(f_sensitive_125, iocase_test_1_expr3, line(iocase_test_1, 136)).
ref(t_iocase_10, q_sensitive_4, line(iocase_test_1, 136)).
method_invoc(iocase_test_1_expr4, m_assert_false_104, line(iocase_test_1, 137)).
argument(iocase_test_1_expr5, 1, iocase_test_1_expr4).
method_invoc(iocase_test_1_expr5, m_check_equals_85, line(iocase_test_1, 137)).
argument(iocase_test_1_literal4, 1, iocase_test_1_expr5).
argument(iocase_test_1_literal5, 2, iocase_test_1_expr5).
ref(f_sensitive_125, iocase_test_1_expr5, line(iocase_test_1, 137)).
ref(t_iocase_10, q_sensitive_5, line(iocase_test_1, 137)).
method_invoc(iocase_test_1_expr6, m_assert_false_104, line(iocase_test_1, 138)).
argument(iocase_test_1_expr7, 1, iocase_test_1_expr6).
method_invoc(iocase_test_1_expr7, m_check_equals_85, line(iocase_test_1, 138)).
argument(iocase_test_1_literal6, 1, iocase_test_1_expr7).
argument(iocase_test_1_literal7, 2, iocase_test_1_expr7).
ref(f_sensitive_125, iocase_test_1_expr7, line(iocase_test_1, 138)).
ref(t_iocase_10, q_sensitive_5, line(iocase_test_1, 138)).
method_invoc(iocase_test_1_expr8, m_assert_true_105, line(iocase_test_1, 139)).
argument(iocase_test_1_expr9, 1, iocase_test_1_expr8).
method_invoc(iocase_test_1_expr9, m_check_equals_85, line(iocase_test_1, 139)).
argument(iocase_test_1_literal8, 1, iocase_test_1_expr9).
argument(iocase_test_1_literal9, 2, iocase_test_1_expr9).
ref(f_sensitive_125, iocase_test_1_expr9, line(iocase_test_1, 139)).
ref(t_iocase_10, q_sensitive_5, line(iocase_test_1, 139)).
method_invoc(iocase_test_1_expr10, m_assert_false_104, line(iocase_test_1, 140)).
argument(iocase_test_1_expr11, 1, iocase_test_1_expr10).
method_invoc(iocase_test_1_expr11, m_check_equals_85, line(iocase_test_1, 140)).
argument(iocase_test_1_literal10, 1, iocase_test_1_expr11).
argument(iocase_test_1_literal11, 2, iocase_test_1_expr11).
ref(f_sensitive_125, iocase_test_1_expr11, line(iocase_test_1, 140)).
ref(t_iocase_10, q_sensitive_5, line(iocase_test_1, 140)).
method_invoc(iocase_test_1_expr12, m_assert_false_104, line(iocase_test_1, 141)).
argument(iocase_test_1_expr13, 1, iocase_test_1_expr12).
method_invoc(iocase_test_1_expr13, m_check_equals_85, line(iocase_test_1, 141)).
argument(iocase_test_1_literal12, 1, iocase_test_1_expr13).
argument(iocase_test_1_literal13, 2, iocase_test_1_expr13).
ref(f_sensitive_125, iocase_test_1_expr13, line(iocase_test_1, 141)).
ref(t_iocase_10, q_sensitive_5, line(iocase_test_1, 141)).
method_invoc(iocase_test_1_expr14, m_assert_false_104, line(iocase_test_1, 142)).
argument(iocase_test_1_expr15, 1, iocase_test_1_expr14).
method_invoc(iocase_test_1_expr15, m_check_equals_85, line(iocase_test_1, 142)).
argument(iocase_test_1_literal14, 1, iocase_test_1_expr15).
argument(iocase_test_1_literal15, 2, iocase_test_1_expr15).
ref(f_sensitive_125, iocase_test_1_expr15, line(iocase_test_1, 142)).
ref(t_iocase_10, q_sensitive_5, line(iocase_test_1, 142)).
method_invoc(iocase_test_1_expr16, m_assert_false_104, line(iocase_test_1, 143)).
argument(iocase_test_1_expr17, 1, iocase_test_1_expr16).
method_invoc(iocase_test_1_expr17, m_check_equals_85, line(iocase_test_1, 143)).
argument(iocase_test_1_literal16, 1, iocase_test_1_expr17).
argument(iocase_test_1_literal17, 2, iocase_test_1_expr17).
ref(f_sensitive_125, iocase_test_1_expr17, line(iocase_test_1, 143)).
ref(t_iocase_10, q_sensitive_5, line(iocase_test_1, 143)).
method_invoc(iocase_test_1_expr18, m_assert_true_105, line(iocase_test_1, 144)).
argument(iocase_test_1_expr19, 1, iocase_test_1_expr18).
method_invoc(iocase_test_1_expr19, m_check_equals_85, line(iocase_test_1, 144)).
argument(iocase_test_1_literal18, 1, iocase_test_1_expr19).
argument(iocase_test_1_literal19, 2, iocase_test_1_expr19).
ref(f_sensitive_125, iocase_test_1_expr19, line(iocase_test_1, 144)).
ref(t_iocase_10, q_sensitive_5, line(iocase_test_1, 144)).
method_invoc(iocase_test_1_expr20, m_assert_false_104, line(iocase_test_1, 146)).
argument(iocase_test_1_expr21, 1, iocase_test_1_expr20).
method_invoc(iocase_test_1_expr21, m_check_equals_85, line(iocase_test_1, 146)).
argument(iocase_test_1_literal20, 1, iocase_test_1_expr21).
argument(iocase_test_1_literal21, 2, iocase_test_1_expr21).
ref(f_sensitive_125, iocase_test_1_expr21, line(iocase_test_1, 146)).
ref(t_iocase_10, q_sensitive_5, line(iocase_test_1, 146)).
throw(m_test__serialization_120, exception).

%empty_file_filter_1 - org.apache.commons.io.filefilter.EmptyFileFilter
assign(f_empty_787, empty_file_filter_1_expr1, line(empty_file_filter_1, 86)).
method_invoc(empty_file_filter_1_expr1, m_empty_file_filter_463, line(empty_file_filter_1, 86)).
assign(f_not_empty_788, empty_file_filter_1_expr2, line(empty_file_filter_1, 89)).
method_invoc(empty_file_filter_1_expr2, m_negate_449, line(empty_file_filter_1, 89)).
ref(f_empty_787, empty_file_filter_1_expr2, line(empty_file_filter_1, 89)).
param(p_file_789, 1, m_accept_464).
method_invoc(empty_file_filter_1_expr3, m_is_directory_465, line(empty_file_filter_1, 107)).
ref(p_file_789, empty_file_filter_1_expr3, line(empty_file_filter_1, 107)).
assign(v_files_790, empty_file_filter_1_expr4, line(empty_file_filter_1, 108)).
method_invoc(empty_file_filter_1_expr4, m_list_files_466, line(empty_file_filter_1, 108)).
ref(p_file_789, empty_file_filter_1_expr4, line(empty_file_filter_1, 108)).
return(empty_file_filter_1_expr5, m_accept_464, line(empty_file_filter_1, 109)).
method_invoc(empty_file_filter_1_expr6, m_length_194, line(empty_file_filter_1, 109)).
argument(v_files_790, 1, empty_file_filter_1_expr6).
ref(t_ioutils_14, empty_file_filter_1_expr6, line(empty_file_filter_1, 109)).
param(p_file_791, 1, m_accept_467).
param(p_attributes_792, 2, m_accept_467).
return(empty_file_filter_1_expr7, m_accept_467, line(empty_file_filter_1, 123)).
method_invoc(empty_file_filter_1_expr7, m_get_410, line(empty_file_filter_1, 123)).
argument(empty_file_filter_1_expr8, 1, empty_file_filter_1_expr7).
method_invoc(empty_file_filter_1_expr9, m_is_directory_468, line(empty_file_filter_1, 124)).
argument(p_file_791, 1, empty_file_filter_1_expr9).
ref(t_files_20, empty_file_filter_1_expr9, line(empty_file_filter_1, 124)).
assign(v_stream_793, empty_file_filter_1_expr11, line(empty_file_filter_1, 125)).
method_invoc(empty_file_filter_1_expr11, m_list_469, line(empty_file_filter_1, 125)).
throw(empty_file_filter_1_expr11, ioexception, line(empty_file_filter_1, 125)).
argument(p_file_791, 1, empty_file_filter_1_expr11).
ref(t_files_20, empty_file_filter_1_expr11, line(empty_file_filter_1, 125)).
return(empty_file_filter_1_expr12, m_accept_467, line(empty_file_filter_1, 126)).
method_invoc(empty_file_filter_1_expr12, m_to_file_visit_result_415, line(empty_file_filter_1, 126)).
argument(empty_file_filter_1_expr13, 1, empty_file_filter_1_expr12).
method_invoc(empty_file_filter_1_expr14, m_is_present_470, line(empty_file_filter_1, 126)).
ref(empty_file_filter_1_expr15, empty_file_filter_1_expr14, line(empty_file_filter_1, 126)).
method_invoc(empty_file_filter_1_expr15, m_find_first_471, line(empty_file_filter_1, 126)).
ref(v_stream_793, empty_file_filter_1_expr15, line(empty_file_filter_1, 126)).

%file_file_filter_1 - org.apache.commons.io.filefilter.FileFileFilter
assign(f_instance_794, file_file_filter_1_expr1, line(file_file_filter_1, 74)).
method_invoc(file_file_filter_1_expr1, m_file_file_filter_472, line(file_file_filter_1, 74)).
assign(f_file_795, f_instance_794, line(file_file_filter_1, 82)).
param(p_file_796, 1, m_accept_473).
return(file_file_filter_1_expr2, m_accept_473, line(file_file_filter_1, 100)).
method_invoc(file_file_filter_1_expr2, m_is_file_474, line(file_file_filter_1, 100)).
ref(p_file_796, file_file_filter_1_expr2, line(file_file_filter_1, 100)).
param(p_file_797, 1, m_accept_475).
param(p_attributes_798, 2, m_accept_475).

%name_file_filter_1 - org.apache.commons.io.filefilter.NameFileFilter
param(p_names_888, 1, m_name_file_filter_600).
method_invoc(name_file_filter_1_expr1, m_name_file_filter_601, line(name_file_filter_1, 91)).
argument(p_names_888, 1, name_file_filter_1_expr1).
argument(name_file_filter_1_literal1, 2, name_file_filter_1_expr1).
param(p_names_889, 1, m_name_file_filter_601).
param(p_io_case_890, 2, m_name_file_filter_601).
method_invoc(name_file_filter_1_expr2, m_require_non_null_12, line(name_file_filter_1, 103)).
argument(p_names_889, 1, name_file_filter_1_expr2).
argument(name_file_filter_1_literal2, 2, name_file_filter_1_expr2).
ref(t_objects_5, name_file_filter_1_expr2, line(name_file_filter_1, 103)).
assign(f_names_891, name_file_filter_1_expr5, line(name_file_filter_1, 104)).
method_invoc(name_file_filter_1_expr5, m_to_array_602, line(name_file_filter_1, 104)).
argument(f_empty_string_array_879, 1, name_file_filter_1_expr5).
ref(p_names_889, name_file_filter_1_expr5, line(name_file_filter_1, 104)).
assign(f_io_case_892, name_file_filter_1_expr9, line(name_file_filter_1, 105)).
method_invoc(name_file_filter_1_expr9, m_to_iocase_603, line(name_file_filter_1, 105)).
argument(p_io_case_890, 1, name_file_filter_1_expr9).
param(p_name_893, 1, m_name_file_filter_572).
method_invoc(name_file_filter_1_expr11, m_name_file_filter_574, line(name_file_filter_1, 115)).
argument(p_name_893, 1, name_file_filter_1_expr11).
argument(q_sensitive_22, 2, name_file_filter_1_expr11).
ref(t_iocase_10, q_sensitive_22, line(name_file_filter_1, 115)).
param(p_names_894, 1, m_name_file_filter_526).
method_invoc(name_file_filter_1_expr12, m_name_file_filter_604, line(name_file_filter_1, 129)).
argument(p_names_894, 1, name_file_filter_1_expr12).
argument(q_sensitive_22, 2, name_file_filter_1_expr12).
ref(t_iocase_10, q_sensitive_22, line(name_file_filter_1, 129)).
param(p_name_895, 1, m_name_file_filter_574).
param(p_io_case_896, 2, m_name_file_filter_574).
method_invoc(name_file_filter_1_expr13, m_require_non_null_12, line(name_file_filter_1, 140)).
argument(p_name_895, 1, name_file_filter_1_expr13).
argument(name_file_filter_1_literal3, 2, name_file_filter_1_expr13).
ref(t_objects_5, name_file_filter_1_expr13, line(name_file_filter_1, 140)).
assign(f_names_891, name_file_filter_1_expr16, line(name_file_filter_1, 141)).
assign(f_io_case_892, name_file_filter_1_expr21, line(name_file_filter_1, 142)).
method_invoc(name_file_filter_1_expr21, m_to_iocase_603, line(name_file_filter_1, 142)).
argument(p_io_case_896, 1, name_file_filter_1_expr21).
param(p_names_897, 1, m_name_file_filter_604).
param(p_io_case_898, 2, m_name_file_filter_604).
method_invoc(name_file_filter_1_expr23, m_require_non_null_12, line(name_file_filter_1, 153)).
argument(p_names_897, 1, name_file_filter_1_expr23).
argument(name_file_filter_1_literal4, 2, name_file_filter_1_expr23).
ref(t_objects_5, name_file_filter_1_expr23, line(name_file_filter_1, 153)).
assign(f_names_891, name_file_filter_1_expr26, line(name_file_filter_1, 154)).
method_invoc(name_file_filter_1_expr26, m_clone_605, line(name_file_filter_1, 154)).
ref(p_names_897, name_file_filter_1_expr26, line(name_file_filter_1, 154)).
assign(f_io_case_892, name_file_filter_1_expr30, line(name_file_filter_1, 155)).
method_invoc(name_file_filter_1_expr30, m_to_iocase_603, line(name_file_filter_1, 155)).
argument(p_io_case_898, 1, name_file_filter_1_expr30).
param(p_file_899, 1, m_accept_606).
return(name_file_filter_1_expr32, m_accept_606, line(name_file_filter_1, 166)).
method_invoc(name_file_filter_1_expr32, m_accept_base_name_607, line(name_file_filter_1, 166)).
argument(name_file_filter_1_expr33, 1, name_file_filter_1_expr32).
method_invoc(name_file_filter_1_expr33, m_get_name_608, line(name_file_filter_1, 166)).
ref(p_file_899, name_file_filter_1_expr33, line(name_file_filter_1, 166)).
param(p_dir_900, 1, m_accept_609).
param(p_name_901, 2, m_accept_609).
param(p_path_902, 1, m_accept_610).
param(p_attributes_903, 2, m_accept_610).
return(name_file_filter_1_expr34, m_accept_610, line(name_file_filter_1, 190)).
method_invoc(name_file_filter_1_expr34, m_to_file_visit_result_415, line(name_file_filter_1, 190)).
argument(name_file_filter_1_expr35, 1, name_file_filter_1_expr34).
method_invoc(name_file_filter_1_expr35, m_accept_base_name_607, line(name_file_filter_1, 190)).
argument(name_file_filter_1_expr36, 1, name_file_filter_1_expr35).
method_invoc(name_file_filter_1_expr36, m_get_file_name_string_336, line(name_file_filter_1, 190)).
argument(p_path_902, 1, name_file_filter_1_expr36).
ref(t_path_utils_30, name_file_filter_1_expr36, line(name_file_filter_1, 190)).
param(p_base_name_904, 1, m_accept_base_name_607).
return(name_file_filter_1_expr37, m_accept_base_name_607, line(name_file_filter_1, 194)).
method_invoc(name_file_filter_1_expr37, m_any_match_611, line(name_file_filter_1, 194)).
argument(name_file_filter_1_expr38, 1, name_file_filter_1_expr37).
ref(name_file_filter_1_expr39, name_file_filter_1_expr37, line(name_file_filter_1, 194)).
method_invoc(name_file_filter_1_expr39, m_of_586, line(name_file_filter_1, 194)).
argument(f_names_891, 1, name_file_filter_1_expr39).
ref(t_stream_28, name_file_filter_1_expr39, line(name_file_filter_1, 194)).
method_invoc(name_file_filter_1_expr40, m_check_equals_85, line(name_file_filter_1, 194)).
argument(p_base_name_904, 1, name_file_filter_1_expr40).
argument(p_test_name_905, 2, name_file_filter_1_expr40).
ref(f_io_case_892, name_file_filter_1_expr40, line(name_file_filter_1, 194)).
param(p_io_case_906, 1, m_to_iocase_603).
return(name_file_filter_1_expr41, m_to_iocase_603, line(name_file_filter_1, 198)).
method_invoc(name_file_filter_1_expr41, m_value_81, line(name_file_filter_1, 198)).
argument(p_io_case_906, 1, name_file_filter_1_expr41).
argument(q_sensitive_22, 2, name_file_filter_1_expr41).
ref(t_iocase_10, name_file_filter_1_expr41, line(name_file_filter_1, 198)).
ref(t_iocase_10, q_sensitive_22, line(name_file_filter_1, 198)).
assign(v_buffer_907, name_file_filter_1_expr42, line(name_file_filter_1, 208)).
method_invoc(name_file_filter_1_expr42, m_string_builder_613, line(name_file_filter_1, 208)).
method_invoc(name_file_filter_1_expr43, m_append_408, line(name_file_filter_1, 209)).
argument(name_file_filter_1_expr44, 1, name_file_filter_1_expr43).
ref(v_buffer_907, name_file_filter_1_expr43, line(name_file_filter_1, 209)).
method_invoc(name_file_filter_1_expr44, m_to_string_416, line(name_file_filter_1, 209)).
method_invoc(name_file_filter_1_expr45, m_append_408, line(name_file_filter_1, 210)).
argument(name_file_filter_1_literal5, 1, name_file_filter_1_expr45).
ref(v_buffer_907, name_file_filter_1_expr45, line(name_file_filter_1, 210)).
method_invoc(name_file_filter_1_expr46, m_append_407, line(name_file_filter_1, 211)).
argument(f_names_891, 1, name_file_filter_1_expr46).
argument(v_buffer_907, 2, name_file_filter_1_expr46).
method_invoc(name_file_filter_1_expr47, m_append_408, line(name_file_filter_1, 212)).
argument(name_file_filter_1_literal6, 1, name_file_filter_1_expr47).
ref(v_buffer_907, name_file_filter_1_expr47, line(name_file_filter_1, 212)).
return(name_file_filter_1_expr48, m_to_string_612, line(name_file_filter_1, 213)).
method_invoc(name_file_filter_1_expr48, m_to_string_614, line(name_file_filter_1, 213)).
ref(v_buffer_907, name_file_filter_1_expr48, line(name_file_filter_1, 213)).

%file_filter_utils_1 - org.apache.commons.io.filefilter.FileFilterUtils
assign(f_cvs_filter_814, file_filter_utils_1_expr1, line(file_filter_utils_1, 47)).
method_invoc(file_filter_utils_1_expr1, m_not_file_filter_541, line(file_filter_utils_1, 47)).
argument(file_filter_utils_1_expr2, 1, file_filter_utils_1_expr1).
method_invoc(file_filter_utils_1_expr2, m_and_542, line(file_filter_utils_1, 48)).
argument(file_filter_utils_1_expr3, 1, file_filter_utils_1_expr2).
argument(file_filter_utils_1_expr4, 2, file_filter_utils_1_expr2).
method_invoc(file_filter_utils_1_expr3, m_directory_file_filter_543, line(file_filter_utils_1, 48)).
method_invoc(file_filter_utils_1_expr4, m_name_file_filter_544, line(file_filter_utils_1, 48)).
argument(file_filter_utils_1_literal1, 1, file_filter_utils_1_expr4).
assign(f_svn_filter_815, file_filter_utils_1_expr5, line(file_filter_utils_1, 51)).
method_invoc(file_filter_utils_1_expr5, m_not_file_filter_541, line(file_filter_utils_1, 51)).
argument(file_filter_utils_1_expr6, 1, file_filter_utils_1_expr5).
method_invoc(file_filter_utils_1_expr6, m_and_542, line(file_filter_utils_1, 52)).
argument(file_filter_utils_1_expr7, 1, file_filter_utils_1_expr6).
argument(file_filter_utils_1_expr8, 2, file_filter_utils_1_expr6).
method_invoc(file_filter_utils_1_expr7, m_directory_file_filter_543, line(file_filter_utils_1, 52)).
method_invoc(file_filter_utils_1_expr8, m_name_file_filter_544, line(file_filter_utils_1, 52)).
argument(file_filter_utils_1_literal2, 1, file_filter_utils_1_expr8).
param(p_cutoff_date_816, 1, m_age_file_filter_545).
param(p_cutoff_date_817, 1, m_age_file_filter_546).
param(p_accept_older_818, 2, m_age_file_filter_546).
param(p_cutoff_reference_819, 1, m_age_file_filter_547).
param(p_cutoff_reference_820, 1, m_age_file_filter_548).
param(p_accept_older_821, 2, m_age_file_filter_548).
param(p_cutoff_millis_822, 1, m_age_file_filter_549).
param(p_cutoff_millis_823, 1, m_age_file_filter_550).
param(p_accept_older_824, 2, m_age_file_filter_550).
param(p_filters_825, 1, m_and_542).
return(file_filter_utils_1_expr9, m_and_542, line(file_filter_utils_1, 146)).
method_invoc(file_filter_utils_1_expr9, m_and_file_filter_436, line(file_filter_utils_1, 146)).
argument(file_filter_utils_1_expr10, 1, file_filter_utils_1_expr9).
method_invoc(file_filter_utils_1_expr10, m_to_list_551, line(file_filter_utils_1, 146)).
argument(p_filters_825, 1, file_filter_utils_1_expr10).
param(p_filter_1_826, 1, m_and_file_filter_552).
param(p_filter_2_827, 2, m_and_file_filter_552).
param(p_filter_828, 1, m_as_file_filter_553).
param(p_filter_829, 1, m_as_file_filter_554).
return(q_directory_21, m_directory_file_filter_543, line(file_filter_utils_1, 195)).
ref(t_directory_file_filter_27, q_directory_21, line(file_filter_utils_1, 195)).
param(p_filter_830, 1, m_filter_557).
param(p_files_831, 2, m_filter_557).
param(p_filter_832, 1, m_filter_558).
param(p_files_833, 2, m_filter_558).
param(p_filter_834, 1, m_filter_files_559).
param(p_stream_835, 2, m_filter_files_559).
param(p_collector_836, 3, m_filter_files_559).
param(p_filter_837, 1, m_filter_list_560).
param(p_files_838, 2, m_filter_list_560).
param(p_filter_839, 1, m_filter_list_561).
param(p_files_840, 2, m_filter_list_561).
param(p_filter_841, 1, m_filter_set_562).
param(p_files_842, 2, m_filter_set_562).
param(p_filter_843, 1, m_filter_set_563).
param(p_files_844, 2, m_filter_set_563).
param(p_magic_number_845, 1, m_magic_number_file_filter_564).
param(p_magic_number_846, 1, m_magic_number_file_filter_565).
param(p_offset_847, 2, m_magic_number_file_filter_565).
param(p_magic_number_848, 1, m_magic_number_file_filter_566).
param(p_magic_number_849, 1, m_magic_number_file_filter_567).
param(p_offset_850, 2, m_magic_number_file_filter_567).
param(p_filter_851, 1, m_make_cvsaware_568).
param(p_filter_852, 1, m_make_directory_only_569).
param(p_filter_853, 1, m_make_file_only_570).
param(p_filter_854, 1, m_make_svnaware_571).
param(p_name_855, 1, m_name_file_filter_544).
return(file_filter_utils_1_expr11, m_name_file_filter_544, line(file_filter_utils_1, 568)).
method_invoc(file_filter_utils_1_expr11, m_name_file_filter_572, line(file_filter_utils_1, 568)).
argument(p_name_855, 1, file_filter_utils_1_expr11).
param(p_name_856, 1, m_name_file_filter_573).
param(p_io_case_857, 2, m_name_file_filter_573).
return(file_filter_utils_1_expr12, m_name_file_filter_573, line(file_filter_utils_1, 581)).
method_invoc(file_filter_utils_1_expr12, m_name_file_filter_574, line(file_filter_utils_1, 581)).
argument(p_name_856, 1, file_filter_utils_1_expr12).
argument(p_io_case_857, 2, file_filter_utils_1_expr12).
param(p_filter_858, 1, m_not_file_filter_541).
return(file_filter_utils_1_expr13, m_not_file_filter_541, line(file_filter_utils_1, 592)).
method_invoc(file_filter_utils_1_expr13, m_negate_449, line(file_filter_utils_1, 592)).
ref(p_filter_858, file_filter_utils_1_expr13, line(file_filter_utils_1, 592)).
param(p_filters_859, 1, m_or_575).
param(p_filter_1_860, 1, m_or_file_filter_576).
param(p_filter_2_861, 2, m_or_file_filter_576).
param(p_prefix_862, 1, m_prefix_file_filter_577).
param(p_prefix_863, 1, m_prefix_file_filter_578).
param(p_io_case_864, 2, m_prefix_file_filter_578).
param(p_threshold_865, 1, m_size_file_filter_579).
param(p_threshold_866, 1, m_size_file_filter_580).
param(p_accept_larger_867, 2, m_size_file_filter_580).
param(p_min_size_inclusive_868, 1, m_size_range_file_filter_581).
param(p_max_size_inclusive_869, 2, m_size_range_file_filter_581).
param(p_suffix_870, 1, m_suffix_file_filter_582).
param(p_suffix_871, 1, m_suffix_file_filter_583).
param(p_io_case_872, 2, m_suffix_file_filter_583).
param(p_filters_873, 1, m_to_list_551).
return(file_filter_utils_1_expr14, m_to_list_551, line(file_filter_utils_1, 724)).
method_invoc(file_filter_utils_1_expr14, m_collect_584, line(file_filter_utils_1, 724)).
argument(file_filter_utils_1_expr15, 1, file_filter_utils_1_expr14).
ref(file_filter_utils_1_expr16, file_filter_utils_1_expr14, line(file_filter_utils_1, 724)).
method_invoc(file_filter_utils_1_expr16, m_map_585, line(file_filter_utils_1, 724)).
argument(file_filter_utils_1_expr17, 1, file_filter_utils_1_expr16).
ref(file_filter_utils_1_expr18, file_filter_utils_1_expr16, line(file_filter_utils_1, 724)).
method_invoc(file_filter_utils_1_expr18, m_of_586, line(file_filter_utils_1, 724)).
argument(file_filter_utils_1_expr19, 1, file_filter_utils_1_expr18).
ref(t_stream_28, file_filter_utils_1_expr18, line(file_filter_utils_1, 724)).
method_invoc(file_filter_utils_1_expr19, m_require_non_null_12, line(file_filter_utils_1, 724)).
argument(p_filters_873, 1, file_filter_utils_1_expr19).
argument(file_filter_utils_1_literal3, 2, file_filter_utils_1_expr19).
ref(t_objects_5, file_filter_utils_1_expr19, line(file_filter_utils_1, 724)).
method_invoc(file_filter_utils_1_expr15, m_to_list_588, line(file_filter_utils_1, 724)).
ref(t_collectors_29, file_filter_utils_1_expr15, line(file_filter_utils_1, 724)).

%file_system_1 - org.apache.commons.io.FileSystem
ref(t_integer_2, q_max_value_1, line(file_system_1, 39)).
ref(t_integer_2, q_max_value_2, line(file_system_1, 39)).
assign(f_is_os_linux_5, file_system_1_expr9, line(file_system_1, 102)).
method_invoc(file_system_1_expr9, m_get_os_matches_name_1, line(file_system_1, 102)).
argument(file_system_1_literal21, 1, file_system_1_expr9).
assign(f_is_os_mac_6, file_system_1_expr10, line(file_system_1, 112)).
method_invoc(file_system_1_expr10, m_get_os_matches_name_1, line(file_system_1, 112)).
argument(file_system_1_literal22, 1, file_system_1_expr10).
assign(f_is_os_windows_7, file_system_1_expr11, line(file_system_1, 127)).
method_invoc(file_system_1_expr11, m_get_os_matches_name_1, line(file_system_1, 127)).
argument(f_os_name_windows_prefix_8, 1, file_system_1_expr11).
assign(f_current_9, file_system_1_expr12, line(file_system_1, 132)).
method_invoc(file_system_1_expr12, m_current_2, line(file_system_1, 132)).
return(f_linux_2, m_current_2, line(file_system_1, 141)).
return(f_current_9, m_get_current_3, line(file_system_1, 158)).
param(p_os_name_prefix_10, 1, m_get_os_matches_name_1).
return(file_system_1_expr13, m_get_os_matches_name_1, line(file_system_1, 169)).
method_invoc(file_system_1_expr13, m_is_os_name_match_4, line(file_system_1, 169)).
argument(file_system_1_expr14, 1, file_system_1_expr13).
argument(p_os_name_prefix_10, 2, file_system_1_expr13).
method_invoc(file_system_1_expr14, m_get_system_property_5, line(file_system_1, 169)).
argument(file_system_1_literal23, 1, file_system_1_expr14).
param(p_property_11, 1, m_get_system_property_5).
return(file_system_1_expr15, m_get_system_property_5, line(file_system_1, 187)).
method_invoc(file_system_1_expr15, m_get_property_6, line(file_system_1, 187)).
argument(p_property_11, 1, file_system_1_expr15).
ref(t_system_3, file_system_1_expr15, line(file_system_1, 187)).
param(p_cs_12, 1, m_index_of_7).
param(p_search_char_13, 2, m_index_of_7).
param(p_start_14, 3, m_index_of_7).
param(p_os_name_15, 1, m_is_os_name_match_4).
param(p_os_name_prefix_16, 2, m_is_os_name_match_4).
return(file_system_1_expr17, m_is_os_name_match_4, line(file_system_1, 285)).
method_invoc(file_system_1_expr17, m_starts_with_8, line(file_system_1, 285)).
argument(file_system_1_expr18, 1, file_system_1_expr17).
ref(file_system_1_expr19, file_system_1_expr17, line(file_system_1, 285)).
method_invoc(file_system_1_expr19, m_to_upper_case_9, line(file_system_1, 285)).
argument(q_root_2, 1, file_system_1_expr19).
ref(p_os_name_15, file_system_1_expr19, line(file_system_1, 285)).
ref(t_locale_4, q_root_2, line(file_system_1, 285)).
method_invoc(file_system_1_expr18, m_to_upper_case_9, line(file_system_1, 285)).
argument(q_root_3, 1, file_system_1_expr18).
ref(p_os_name_prefix_16, file_system_1_expr18, line(file_system_1, 285)).
ref(t_locale_4, q_root_3, line(file_system_1, 285)).
param(p_path_17, 1, m_replace_10).
param(p_old_char_18, 2, m_replace_10).
param(p_new_char_19, 3, m_replace_10).
param(p_block_size_20, 1, m_file_system_11).
param(p_case_sensitive_21, 2, m_file_system_11).
param(p_case_preserving_22, 3, m_file_system_11).
param(p_max_file_length_23, 4, m_file_system_11).
param(p_max_path_length_24, 5, m_file_system_11).
param(p_illegal_file_name_chars_25, 6, m_file_system_11).
param(p_reserved_file_names_26, 7, m_file_system_11).
param(p_reserved_file_names_extensions_27, 8, m_file_system_11).
param(p_supports_drive_letter_28, 9, m_file_system_11).
param(p_name_separator_29, 10, m_file_system_11).
assign(f_block_size_30, p_block_size_20, line(file_system_1, 329)).
assign(f_max_file_name_length_31, p_max_file_length_23, line(file_system_1, 330)).
assign(f_max_path_length_32, p_max_path_length_24, line(file_system_1, 331)).
assign(f_illegal_file_name_chars_33, file_system_1_expr31, line(file_system_1, 332)).
method_invoc(file_system_1_expr31, m_require_non_null_12, line(file_system_1, 332)).
argument(p_illegal_file_name_chars_25, 1, file_system_1_expr31).
argument(file_system_1_literal25, 2, file_system_1_expr31).
ref(t_objects_5, file_system_1_expr31, line(file_system_1, 332)).
assign(f_reserved_file_names_34, file_system_1_expr35, line(file_system_1, 333)).
method_invoc(file_system_1_expr35, m_require_non_null_12, line(file_system_1, 333)).
argument(p_reserved_file_names_26, 1, file_system_1_expr35).
argument(file_system_1_literal26, 2, file_system_1_expr35).
ref(t_objects_5, file_system_1_expr35, line(file_system_1, 333)).
assign(f_reserved_file_names_extensions_35, p_reserved_file_names_extensions_27, line(file_system_1, 334)).
assign(f_case_sensitive_36, p_case_sensitive_21, line(file_system_1, 335)).
assign(f_case_preserving_37, p_case_preserving_22, line(file_system_1, 336)).
assign(f_supports_drive_letter_38, p_supports_drive_letter_28, line(file_system_1, 337)).
assign(f_name_separator_39, p_name_separator_29, line(file_system_1, 338)).
assign(f_name_separator_other_40, file_system_1_expr54, line(file_system_1, 339)).
method_invoc(file_system_1_expr54, m_flip_separator_13, line(file_system_1, 339)).
argument(p_name_separator_29, 1, file_system_1_expr54).
ref(t_filename_utils_6, file_system_1_expr54, line(file_system_1, 339)).
return(f_case_sensitive_36, m_is_case_sensitive_22, line(file_system_1, 428)).
param(p_c_41, 1, m_is_illegal_file_name_char_23).
param(p_candidate_42, 1, m_is_legal_file_name_24).
param(p_candidate_43, 1, m_is_reserved_file_name_25).
param(p_path_44, 1, m_normalize_separators_26).
param(p_candidate_45, 1, m_to_legal_file_name_28).
param(p_replacement_46, 2, m_to_legal_file_name_28).
param(p_cs_47, 1, m_trim_extension_29).

%can_read_file_filter_1 - org.apache.commons.io.filefilter.CanReadFileFilter
assign(f_can_read_771, can_read_file_filter_1_expr1, line(can_read_file_filter_1, 71)).
method_invoc(can_read_file_filter_1_expr1, m_can_read_file_filter_448, line(can_read_file_filter_1, 71)).
assign(f_cannot_read_772, can_read_file_filter_1_expr2, line(can_read_file_filter_1, 74)).
method_invoc(can_read_file_filter_1_expr2, m_negate_449, line(can_read_file_filter_1, 74)).
ref(f_can_read_771, can_read_file_filter_1_expr2, line(can_read_file_filter_1, 74)).
assign(f_read_only_773, can_read_file_filter_1_expr3, line(can_read_file_filter_1, 77)).
method_invoc(can_read_file_filter_1_expr3, m_and_450, line(can_read_file_filter_1, 77)).
argument(q_cannot_write_15, 1, can_read_file_filter_1_expr3).
ref(f_can_read_771, can_read_file_filter_1_expr3, line(can_read_file_filter_1, 77)).
ref(t_can_write_file_filter_19, q_cannot_write_15, line(can_read_file_filter_1, 77)).
param(p_file_774, 1, m_accept_451).
return(can_read_file_filter_1_expr4, m_accept_451, line(can_read_file_filter_1, 95)).
method_invoc(can_read_file_filter_1_expr4, m_can_read_452, line(can_read_file_filter_1, 95)).
ref(p_file_774, can_read_file_filter_1_expr4, line(can_read_file_filter_1, 95)).
param(p_file_775, 1, m_accept_453).
param(p_attributes_776, 2, m_accept_453).
return(can_read_file_filter_1_expr5, m_accept_453, line(can_read_file_filter_1, 107)).
method_invoc(can_read_file_filter_1_expr5, m_to_file_visit_result_415, line(can_read_file_filter_1, 107)).
argument(can_read_file_filter_1_expr6, 1, can_read_file_filter_1_expr5).
method_invoc(can_read_file_filter_1_expr6, m_is_readable_454, line(can_read_file_filter_1, 107)).
argument(p_file_775, 1, can_read_file_filter_1_expr6).
ref(t_files_20, can_read_file_filter_1_expr6, line(can_read_file_filter_1, 107)).

%hidden_file_filter_1 - org.apache.commons.io.filefilter.HiddenFileFilter
assign(f_hidden_874, hidden_file_filter_1_expr1, line(hidden_file_filter_1, 82)).
method_invoc(hidden_file_filter_1_expr1, m_hidden_file_filter_591, line(hidden_file_filter_1, 82)).
assign(f_visible_875, hidden_file_filter_1_expr2, line(hidden_file_filter_1, 87)).
method_invoc(hidden_file_filter_1_expr2, m_negate_449, line(hidden_file_filter_1, 87)).
ref(f_hidden_874, hidden_file_filter_1_expr2, line(hidden_file_filter_1, 87)).
param(p_file_876, 1, m_accept_592).
return(hidden_file_filter_1_expr3, m_accept_592, line(hidden_file_filter_1, 104)).
method_invoc(hidden_file_filter_1_expr3, m_is_hidden_593, line(hidden_file_filter_1, 104)).
ref(p_file_876, hidden_file_filter_1_expr3, line(hidden_file_filter_1, 104)).
param(p_file_877, 1, m_accept_594).
param(p_attributes_878, 2, m_accept_594).
return(hidden_file_filter_1_expr4, m_accept_594, line(hidden_file_filter_1, 117)).
method_invoc(hidden_file_filter_1_expr4, m_get_410, line(hidden_file_filter_1, 117)).
argument(hidden_file_filter_1_expr5, 1, hidden_file_filter_1_expr4).
method_invoc(hidden_file_filter_1_expr6, m_to_file_visit_result_415, line(hidden_file_filter_1, 117)).
argument(hidden_file_filter_1_expr7, 1, hidden_file_filter_1_expr6).
method_invoc(hidden_file_filter_1_expr7, m_is_hidden_595, line(hidden_file_filter_1, 117)).
throw(hidden_file_filter_1_expr7, ioexception, line(hidden_file_filter_1, 117)).
throw(hidden_file_filter_1_expr7, null_pointer_exception, line(hidden_file_filter_1, 117)).
argument(p_file_877, 1, hidden_file_filter_1_expr7).
ref(t_files_20, hidden_file_filter_1_expr7, line(hidden_file_filter_1, 117)).

%abstract_file_filter_1 - org.apache.commons.io.filefilter.AbstractFileFilter
param(p_accept_719, 1, m_to_default_file_visit_result_400).
return(abstract_file_filter_1_expr1, m_to_default_file_visit_result_400, line(abstract_file_filter_1, 45)).
cond_expr(p_accept_719, q_continue_12, q_terminate_13, line(abstract_file_filter_1, 45)).
ref(t_file_visit_result_18, q_continue_12, line(abstract_file_filter_1, 45)).
ref(t_file_visit_result_18, q_terminate_13, line(abstract_file_filter_1, 45)).
method_invoc(abstract_file_filter_1_expr2, m_abstract_file_filter_402, line(abstract_file_filter_1, 62)).
argument(q_continue_14, 1, abstract_file_filter_1_expr2).
argument(q_terminate_14, 2, abstract_file_filter_1_expr2).
ref(t_file_visit_result_18, q_continue_14, line(abstract_file_filter_1, 62)).
ref(t_file_visit_result_18, q_terminate_14, line(abstract_file_filter_1, 62)).
param(p_on_accept_722, 1, m_abstract_file_filter_402).
param(p_on_reject_723, 2, m_abstract_file_filter_402).
assign(f_on_accept_724, p_on_accept_722, line(abstract_file_filter_1, 73)).
assign(f_on_reject_725, p_on_reject_723, line(abstract_file_filter_1, 74)).
param(p_file_726, 1, m_accept_403).
param(p_dir_727, 1, m_accept_404).
param(p_name_728, 2, m_accept_404).
method_invoc(abstract_file_filter_1_expr9, m_require_non_null_12, line(abstract_file_filter_1, 98)).
argument(p_name_728, 1, abstract_file_filter_1_expr9).
argument(abstract_file_filter_1_literal1, 2, abstract_file_filter_1_expr9).
ref(t_objects_5, abstract_file_filter_1_expr9, line(abstract_file_filter_1, 98)).
return(abstract_file_filter_1_expr10, m_accept_404, line(abstract_file_filter_1, 99)).
method_invoc(abstract_file_filter_1_expr10, m_accept_403, line(abstract_file_filter_1, 99)).
argument(abstract_file_filter_1_expr11, 1, abstract_file_filter_1_expr10).
method_invoc(abstract_file_filter_1_expr11, m_file_405, line(abstract_file_filter_1, 99)).
argument(p_dir_727, 1, abstract_file_filter_1_expr11).
argument(p_name_728, 2, abstract_file_filter_1_expr11).
param(p_list_729, 1, m_append_406).
param(p_buffer_730, 2, m_append_406).
param(p_array_731, 1, m_append_407).
param(p_buffer_732, 2, m_append_407).
assign(v_i_733, abstract_file_filter_1_literal2, line(abstract_file_filter_1, 112)).
ref(p_array_731, q_length_14, line(abstract_file_filter_1, 112)).
method_invoc(abstract_file_filter_1_expr16, m_append_408, line(abstract_file_filter_1, 114)).
argument(abstract_file_filter_1_literal4, 1, abstract_file_filter_1_expr16).
ref(p_buffer_732, abstract_file_filter_1_expr16, line(abstract_file_filter_1, 114)).
method_invoc(abstract_file_filter_1_expr17, m_append_409, line(abstract_file_filter_1, 116)).
argument(abstract_file_filter_1_expr18, 1, abstract_file_filter_1_expr17).
ref(p_buffer_732, abstract_file_filter_1_expr17, line(abstract_file_filter_1, 116)).
ref(p_array_731, abstract_file_filter_1_expr18, line(abstract_file_filter_1, 116)).
param(p_supplier_734, 1, m_get_410).
return(abstract_file_filter_1_expr19, m_get_410, line(abstract_file_filter_1, 122)).
method_invoc(abstract_file_filter_1_expr19, m_get_411, line(abstract_file_filter_1, 122)).
throw(abstract_file_filter_1_expr19, ioexception, line(abstract_file_filter_1, 122)).
ref(p_supplier_734, abstract_file_filter_1_expr19, line(abstract_file_filter_1, 122)).
param(p_t_735, 1, m_handle_412).
param(p_dir_736, 1, m_post_visit_directory_413).
param(p_exc_737, 2, m_post_visit_directory_413).
throw(m_post_visit_directory_413, ioexception).
param(p_dir_738, 1, m_pre_visit_directory_414).
param(p_attributes_739, 2, m_pre_visit_directory_414).
throw(m_pre_visit_directory_414, ioexception).
param(p_accept_740, 1, m_to_file_visit_result_415).
return(abstract_file_filter_1_expr20, m_to_file_visit_result_415, line(abstract_file_filter_1, 156)).
cond_expr(p_accept_740, f_on_accept_724, f_on_reject_725, line(abstract_file_filter_1, 156)).
return(abstract_file_filter_1_expr21, m_to_string_416, line(abstract_file_filter_1, 166)).
method_invoc(abstract_file_filter_1_expr21, m_get_simple_name_417, line(abstract_file_filter_1, 166)).
ref(abstract_file_filter_1_expr22, abstract_file_filter_1_expr21, line(abstract_file_filter_1, 166)).
method_invoc(abstract_file_filter_1_expr22, m_get_class_418, line(abstract_file_filter_1, 166)).
param(p_file_741, 1, m_visit_file_419).
param(p_attributes_742, 2, m_visit_file_419).
throw(m_visit_file_419, ioexception).
param(p_file_743, 1, m_visit_file_failed_420).
param(p_exc_744, 2, m_visit_file_failed_420).
throw(m_visit_file_failed_420, ioexception).

%abstract_filter_test_1 - org.apache.commons.io.filefilter.AbstractFilterTest
param(p_filter_745, 1, m_assert_filtering_421).
param(p_file_746, 2, m_assert_filtering_421).
param(p_expected_747, 3, m_assert_filtering_421).
throw(m_assert_filtering_421, ioexception).
method_invoc(abstract_filter_test_1_expr1, m_assert_equals_422, line(abstract_filter_test_1, 50)).
argument(p_expected_747, 1, abstract_filter_test_1_expr1).
argument(abstract_filter_test_1_expr2, 2, abstract_filter_test_1_expr1).
argument(abstract_filter_test_1_expr3, 3, abstract_filter_test_1_expr1).
method_invoc(abstract_filter_test_1_expr2, m_accept_423, line(abstract_filter_test_1, 50)).
argument(p_file_746, 1, abstract_filter_test_1_expr2).
ref(p_filter_745, abstract_filter_test_1_expr2, line(abstract_filter_test_1, 50)).
method_invoc(abstract_filter_test_1_expr4, m_get_name_424, line(abstract_filter_test_1, 50)).
ref(abstract_filter_test_1_expr5, abstract_filter_test_1_expr4, line(abstract_filter_test_1, 50)).
method_invoc(abstract_filter_test_1_expr5, m_get_class_418, line(abstract_filter_test_1, 50)).
ref(p_filter_745, abstract_filter_test_1_expr5, line(abstract_filter_test_1, 50)).
param(p_filter_748, 1, m_assert_filtering_425).
param(p_path_749, 2, m_assert_filtering_425).
param(p_expected_750, 3, m_assert_filtering_425).
method_invoc(abstract_filter_test_1_expr6, m_assert_equals_422, line(abstract_filter_test_1, 73)).
argument(v_expected_file_visit_result_751, 1, abstract_filter_test_1_expr6).
argument(abstract_filter_test_1_expr7, 2, abstract_filter_test_1_expr6).
argument(abstract_filter_test_1_expr8, 3, abstract_filter_test_1_expr6).
method_invoc(abstract_filter_test_1_expr7, m_accept_426, line(abstract_filter_test_1, 73)).
argument(p_path_749, 1, abstract_filter_test_1_expr7).
argument(abstract_filter_test_1_literal4, 2, abstract_filter_test_1_expr7).
ref(p_filter_748, abstract_filter_test_1_expr7, line(abstract_filter_test_1, 73)).
param(p_filter_752, 1, m_assert_foo_bar_file_filtering_427).
throw(m_assert_foo_bar_file_filtering_427, ioexception).
param(p_left_753, 1, m_equals_last_modified_428).
param(p_right_754, 2, m_equals_last_modified_428).
throw(m_equals_last_modified_428, ioexception).

%and_file_filter_1 - org.apache.commons.io.filefilter.AndFileFilter
param(p_initial_list_755, 1, m_and_file_filter_430).
assign(f_file_filters_756, and_file_filter_1_expr3, line(and_file_filter_1, 68)).
method_invoc(and_file_filter_1_expr3, m_require_non_null_12, line(and_file_filter_1, 68)).
argument(p_initial_list_755, 1, and_file_filter_1_expr3).
argument(and_file_filter_1_literal1, 2, and_file_filter_1_expr3).
ref(t_objects_5, and_file_filter_1_expr3, line(and_file_filter_1, 68)).
param(p_initial_capacity_757, 1, m_and_file_filter_431).
method_invoc(and_file_filter_1_expr5, m_and_file_filter_430, line(and_file_filter_1, 77)).
argument(and_file_filter_1_expr6, 1, and_file_filter_1_expr5).
method_invoc(and_file_filter_1_expr6, m_array_list_432, line(and_file_filter_1, 77)).
argument(p_initial_capacity_757, 1, and_file_filter_1_expr6).
param(p_file_filters_758, 1, m_and_file_filter_433).
param(p_filter_1_759, 1, m_and_file_filter_434).
param(p_filter_2_760, 2, m_and_file_filter_434).
method_invoc(and_file_filter_1_expr7, m_and_file_filter_431, line(and_file_filter_1, 99)).
argument(and_file_filter_1_literal2, 1, and_file_filter_1_expr7).
method_invoc(and_file_filter_1_expr8, m_add_file_filter_435, line(and_file_filter_1, 100)).
argument(p_filter_1_759, 1, and_file_filter_1_expr8).
method_invoc(and_file_filter_1_expr9, m_add_file_filter_435, line(and_file_filter_1, 101)).
argument(p_filter_2_760, 1, and_file_filter_1_expr9).
param(p_file_filters_761, 1, m_and_file_filter_436).
method_invoc(and_file_filter_1_expr10, m_and_file_filter_430, line(and_file_filter_1, 112)).
argument(and_file_filter_1_expr11, 1, and_file_filter_1_expr10).
method_invoc(and_file_filter_1_expr11, m_array_list_437, line(and_file_filter_1, 112)).
argument(and_file_filter_1_expr12, 1, and_file_filter_1_expr11).
method_invoc(and_file_filter_1_expr12, m_require_non_null_12, line(and_file_filter_1, 112)).
argument(p_file_filters_761, 1, and_file_filter_1_expr12).
argument(and_file_filter_1_literal3, 2, and_file_filter_1_expr12).
ref(t_objects_5, and_file_filter_1_expr12, line(and_file_filter_1, 112)).
param(p_file_762, 1, m_accept_438).
param(p_file_763, 1, m_accept_439).
param(p_name_764, 2, m_accept_439).
param(p_file_765, 1, m_accept_440).
param(p_attributes_766, 2, m_accept_440).
param(p_file_filter_767, 1, m_add_file_filter_435).
method_invoc(and_file_filter_1_expr13, m_add_441, line(and_file_filter_1, 146)).
argument(and_file_filter_1_expr14, 1, and_file_filter_1_expr13).
ref(f_file_filters_756, and_file_filter_1_expr13, line(and_file_filter_1, 146)).
method_invoc(and_file_filter_1_expr14, m_require_non_null_12, line(and_file_filter_1, 146)).
argument(p_file_filter_767, 1, and_file_filter_1_expr14).
argument(and_file_filter_1_literal4, 2, and_file_filter_1_expr14).
ref(t_objects_5, and_file_filter_1_expr14, line(and_file_filter_1, 146)).
param(p_file_filters_768, 1, m_add_file_filter_442).
param(p_io_file_filter_769, 1, m_remove_file_filter_445).
param(p_file_filters_770, 1, m_set_file_filters_446).

%test_utils_1 - org.apache.commons.io.test.TestUtils
param(p_b_0_916, 1, m_assert_equal_content_620).
param(p_file_917, 2, m_assert_equal_content_620).
throw(m_assert_equal_content_620, ioexception).
param(p_b_0_918, 1, m_assert_equal_content_621).
param(p_file_919, 2, m_assert_equal_content_621).
throw(m_assert_equal_content_621, ioexception).
param(p_c_0_920, 1, m_assert_equal_content_622).
param(p_file_921, 2, m_assert_equal_content_622).
throw(m_assert_equal_content_622, ioexception).
param(p_c_0_922, 1, m_assert_equal_content_623).
param(p_file_923, 2, m_assert_equal_content_623).
throw(m_assert_equal_content_623, ioexception).
param(p_f_0_924, 1, m_assert_equal_content_624).
param(p_f_1_925, 2, m_assert_equal_content_624).
throw(m_assert_equal_content_624, ioexception).
param(p_file_926, 1, m_check_file_625).
param(p_reference_file_927, 2, m_check_file_625).
throw(m_check_file_625, exception).
param(p_output_928, 1, m_check_write_626).
param(p_output_929, 1, m_check_write_627).
param(p_file_930, 1, m_create_file_628).
param(p_size_931, 2, m_create_file_628).
throw(m_create_file_628, ioexception).
param(p_file_932, 1, m_create_file_629).
param(p_size_933, 2, m_create_file_629).
throw(m_create_file_629, ioexception).
param(p_file_934, 1, m_create_line_based_file_630).
param(p_data_935, 2, m_create_line_based_file_630).
throw(m_create_line_based_file_630, ioexception).
param(p_file_936, 1, m_delete_file_631).
param(p_file_937, 1, m_generate_test_data_632).
param(p_size_938, 2, m_generate_test_data_632).
throw(m_generate_test_data_632, ioexception).
throw(m_generate_test_data_632, file_not_found_exception).
param(p_size_939, 1, m_generate_test_data_633).
param(p_out_940, 1, m_generate_test_data_487).
param(p_size_941, 2, m_generate_test_data_487).
throw(m_generate_test_data_487, ioexception).
assign(v_i_942, test_utils_1_literal1, line(test_utils_1, 220)).
method_invoc(test_utils_1_expr4, m_write_634, line(test_utils_1, 223)).
throw(test_utils_1_expr4, ioexception, line(test_utils_1, 223)).
argument(test_utils_1_expr5, 1, test_utils_1_expr4).
ref(p_out_940, test_utils_1_expr4, line(test_utils_1, 223)).
assign(test_utils_1_expr5, test_utils_1_expr6, line(test_utils_1, 223)).
assign(test_utils_1_expr6, test_utils_1_expr7, line(test_utils_1, 223)).
param(p_test_directory_943, 1, m_new_file_635).
param(p_file_name_944, 2, m_new_file_635).
throw(m_new_file_635, ioexception).
param(p_millis_945, 1, m_sleep_636).
throw(m_sleep_636, interrupted_exception).
param(p_millis_946, 1, m_sleep_quietly_637).

%filename_utils_1 - org.apache.commons.io.FilenameUtils
assign(f_empty_string_array_48, filename_utils_1_expr1, line(filename_utils_1, 100)).
assign(f_extension_separator_str_49, filename_utils_1_expr2, line(filename_utils_1, 116)).
method_invoc(filename_utils_1_expr2, m_to_string_30, line(filename_utils_1, 116)).
argument(f_extension_separator_50, 1, filename_utils_1_expr2).
ref(t_character_7, filename_utils_1_expr2, line(filename_utils_1, 116)).
assign(f_system_name_separator_51, q_separator_char_3, line(filename_utils_1, 131)).
ref(t_file_8, q_separator_char_3, line(filename_utils_1, 131)).
assign(f_other_separator_52, filename_utils_1_expr3, line(filename_utils_1, 136)).
method_invoc(filename_utils_1_expr3, m_flip_separator_13, line(filename_utils_1, 136)).
argument(f_system_name_separator_51, 1, filename_utils_1_expr3).
assign(f_ipv4_pattern_53, filename_utils_1_expr4, line(filename_utils_1, 138)).
method_invoc(filename_utils_1_expr4, m_compile_31, line(filename_utils_1, 138)).
argument(filename_utils_1_literal1, 1, filename_utils_1_expr4).
ref(t_pattern_9, filename_utils_1_expr4, line(filename_utils_1, 138)).
assign(f_reg_name_part_pattern_54, filename_utils_1_expr5, line(filename_utils_1, 150)).
method_invoc(filename_utils_1_expr5, m_compile_31, line(filename_utils_1, 150)).
argument(filename_utils_1_literal2, 1, filename_utils_1_expr5).
ref(t_pattern_9, filename_utils_1_expr5, line(filename_utils_1, 150)).
param(p_base_path_55, 1, m_concat_32).
param(p_full_file_name_to_add_56, 2, m_concat_32).
param(p_canonical_parent_57, 1, m_directory_contains_33).
param(p_canonical_child_58, 2, m_directory_contains_33).
param(p_file_name_59, 1, m_do_get_full_path_34).
param(p_include_separator_60, 2, m_do_get_full_path_34).
param(p_file_name_61, 1, m_do_get_path_35).
param(p_separator_add_62, 2, m_do_get_path_35).
param(p_file_name_63, 1, m_do_normalize_36).
param(p_separator_64, 2, m_do_normalize_36).
param(p_keep_separator_65, 3, m_do_normalize_36).
param(p_file_name1_66, 1, m_equals_37).
param(p_file_name2_67, 2, m_equals_37).
param(p_file_name1_68, 1, m_equals_38).
param(p_file_name2_69, 2, m_equals_38).
param(p_normalize_70, 3, m_equals_38).
param(p_io_case_71, 4, m_equals_38).
param(p_file_name1_72, 1, m_equals_normalized_39).
param(p_file_name2_73, 2, m_equals_normalized_39).
param(p_file_name1_74, 1, m_equals_normalized_on_system_40).
param(p_file_name2_75, 2, m_equals_normalized_on_system_40).
param(p_file_name1_76, 1, m_equals_on_system_41).
param(p_file_name2_77, 2, m_equals_on_system_41).
param(p_ch_78, 1, m_flip_separator_13).
return(f_windows_name_separator_80, m_flip_separator_13, line(filename_utils_1, 526)).
return(f_unix_name_separator_79, m_flip_separator_13, line(filename_utils_1, 529)).
param(p_file_name_81, 1, m_get_ads_critical_offset_42).
param(p_file_name_82, 1, m_get_base_name_43).
param(p_file_name_83, 1, m_get_extension_44).
throw(m_get_extension_44, illegal_argument_exception).
param(p_file_name_84, 1, m_get_full_path_45).
param(p_file_name_85, 1, m_get_full_path_no_end_separator_46).
param(p_file_name_86, 1, m_get_name_47).
param(p_file_name_87, 1, m_get_path_48).
param(p_file_name_88, 1, m_get_path_no_end_separator_49).
param(p_file_name_89, 1, m_get_prefix_50).
param(p_file_name_90, 1, m_get_prefix_length_51).
param(p_file_name_91, 1, m_index_of_extension_52).
throw(m_index_of_extension_52, illegal_argument_exception).
param(p_file_name_92, 1, m_index_of_last_separator_53).
param(p_string_93, 1, m_is_empty_54).
param(p_file_name_94, 1, m_is_extension_55).
param(p_extensions_95, 2, m_is_extension_55).
param(p_file_name_96, 1, m_is_extension_56).
param(p_extension_97, 2, m_is_extension_56).
param(p_file_name_98, 1, m_is_extension_57).
param(p_extensions_99, 2, m_is_extension_57).
param(p_name_100, 1, m_is_ipv4_address_58).
param(p_inet_6address_101, 1, m_is_ipv6_address_59).
param(p_name_102, 1, m_is_rfc3986host_name_60).
param(p_ch_103, 1, m_is_separator_61).
param(p_name_104, 1, m_is_valid_host_name_63).
param(p_file_name_105, 1, m_normalize_64).
param(p_file_name_106, 1, m_normalize_65).
param(p_unix_separator_107, 2, m_normalize_65).
param(p_file_name_108, 1, m_normalize_no_end_separator_66).
param(p_file_name_109, 1, m_normalize_no_end_separator_67).
param(p_unix_separator_110, 2, m_normalize_no_end_separator_67).
param(p_file_name_111, 1, m_remove_extension_68).
param(p_path_112, 1, m_require_non_null_chars_69).
param(p_path_113, 1, m_separators_to_system_70).
param(p_path_114, 1, m_separators_to_unix_71).
param(p_path_115, 1, m_separators_to_windows_72).
param(p_text_116, 1, m_split_on_tokens_73).
param(p_unix_separator_117, 1, m_to_separator_74).
param(p_file_name_118, 1, m_wildcard_match_75).
param(p_wildcard_matcher_119, 2, m_wildcard_match_75).
param(p_file_name_120, 1, m_wildcard_match_76).
param(p_wildcard_matcher_121, 2, m_wildcard_match_76).
param(p_io_case_122, 3, m_wildcard_match_76).
param(p_file_name_123, 1, m_wildcard_match_on_system_77).
param(p_wildcard_matcher_124, 2, m_wildcard_match_on_system_77).

%file_filter_test_1 - org.apache.commons.io.filefilter.FileFilterTest
throw(m_test_age_filter_476, exception).
throw(m_test_and_477, ioexception).
throw(m_test_and2_478, ioexception).
throw(m_test_and_array_479, ioexception).
throw(m_test_can_execute_480, exception).
throw(m_test_can_read_481, exception).
assign(v_read_only_file_799, file_filter_test_1_expr1, line(file_filter_test_1, 221)).
method_invoc(file_filter_test_1_expr1, m_file_405, line(file_filter_test_1, 221)).
argument(f_temporary_folder_800, 1, file_filter_test_1_expr1).
argument(file_filter_test_1_literal1, 2, file_filter_test_1_expr1).
assign(v_read_only_path_801, file_filter_test_1_expr2, line(file_filter_test_1, 222)).
method_invoc(file_filter_test_1_expr2, m_to_path_482, line(file_filter_test_1, 222)).
ref(v_read_only_file_799, file_filter_test_1_expr2, line(file_filter_test_1, 222)).
method_invoc(file_filter_test_1_expr4, m_exists_483, line(file_filter_test_1, 223)).
ref(file_filter_test_1_expr5, file_filter_test_1_expr4, line(file_filter_test_1, 223)).
method_invoc(file_filter_test_1_expr5, m_get_parent_file_484, line(file_filter_test_1, 223)).
ref(v_read_only_file_799, file_filter_test_1_expr5, line(file_filter_test_1, 223)).
assign(v_output_802, file_filter_test_1_expr7, line(file_filter_test_1, 226)).
method_invoc(file_filter_test_1_expr7, m_buffered_output_stream_485, line(file_filter_test_1, 226)).
argument(file_filter_test_1_expr8, 1, file_filter_test_1_expr7).
method_invoc(file_filter_test_1_expr8, m_new_output_stream_486, line(file_filter_test_1, 226)).
throw(file_filter_test_1_expr8, ioexception, line(file_filter_test_1, 226)).
argument(file_filter_test_1_expr9, 1, file_filter_test_1_expr8).
ref(t_files_20, file_filter_test_1_expr8, line(file_filter_test_1, 226)).
method_invoc(file_filter_test_1_expr9, m_to_path_482, line(file_filter_test_1, 226)).
ref(v_read_only_file_799, file_filter_test_1_expr9, line(file_filter_test_1, 226)).
method_invoc(file_filter_test_1_expr10, m_generate_test_data_487, line(file_filter_test_1, 227)).
throw(file_filter_test_1_expr10, ioexception, line(file_filter_test_1, 227)).
argument(v_output_802, 1, file_filter_test_1_expr10).
argument(file_filter_test_1_literal2, 2, file_filter_test_1_expr10).
ref(t_test_utils_22, file_filter_test_1_expr10, line(file_filter_test_1, 227)).
method_invoc(file_filter_test_1_expr11, m_assert_true_105, line(file_filter_test_1, 229)).
argument(file_filter_test_1_expr12, 1, file_filter_test_1_expr11).
method_invoc(file_filter_test_1_expr12, m_set_read_only_488, line(file_filter_test_1, 229)).
ref(v_read_only_file_799, file_filter_test_1_expr12, line(file_filter_test_1, 229)).
method_invoc(file_filter_test_1_expr13, m_assert_filtering_421, line(file_filter_test_1, 230)).
throw(file_filter_test_1_expr13, ioexception, line(file_filter_test_1, 230)).
argument(q_can_read_16, 1, file_filter_test_1_expr13).
argument(v_read_only_file_799, 2, file_filter_test_1_expr13).
argument(file_filter_test_1_literal3, 3, file_filter_test_1_expr13).
ref(t_can_read_file_filter_23, q_can_read_16, line(file_filter_test_1, 230)).
method_invoc(file_filter_test_1_expr14, m_assert_filtering_421, line(file_filter_test_1, 231)).
throw(file_filter_test_1_expr14, ioexception, line(file_filter_test_1, 231)).
argument(q_can_read_17, 1, file_filter_test_1_expr14).
argument(file_filter_test_1_expr15, 2, file_filter_test_1_expr14).
argument(file_filter_test_1_literal4, 3, file_filter_test_1_expr14).
ref(t_can_read_file_filter_23, q_can_read_17, line(file_filter_test_1, 231)).
assign(file_filter_test_1_expr15, file_filter_test_1_literal5, line(file_filter_test_1, 231)).
throw(m_test_can_write_489, exception).
assign(v_read_only_file_803, file_filter_test_1_expr16, line(file_filter_test_1, 247)).
method_invoc(file_filter_test_1_expr16, m_file_405, line(file_filter_test_1, 247)).
argument(f_temporary_folder_800, 1, file_filter_test_1_expr16).
argument(file_filter_test_1_literal6, 2, file_filter_test_1_expr16).
assign(v_read_only_path_804, file_filter_test_1_expr17, line(file_filter_test_1, 248)).
method_invoc(file_filter_test_1_expr17, m_to_path_482, line(file_filter_test_1, 248)).
ref(v_read_only_file_803, file_filter_test_1_expr17, line(file_filter_test_1, 248)).
method_invoc(file_filter_test_1_expr19, m_exists_483, line(file_filter_test_1, 249)).
ref(file_filter_test_1_expr20, file_filter_test_1_expr19, line(file_filter_test_1, 249)).
method_invoc(file_filter_test_1_expr20, m_get_parent_file_484, line(file_filter_test_1, 249)).
ref(v_read_only_file_803, file_filter_test_1_expr20, line(file_filter_test_1, 249)).
assign(v_output_805, file_filter_test_1_expr22, line(file_filter_test_1, 252)).
method_invoc(file_filter_test_1_expr22, m_buffered_output_stream_485, line(file_filter_test_1, 252)).
argument(file_filter_test_1_expr23, 1, file_filter_test_1_expr22).
method_invoc(file_filter_test_1_expr23, m_new_output_stream_486, line(file_filter_test_1, 252)).
throw(file_filter_test_1_expr23, ioexception, line(file_filter_test_1, 252)).
argument(file_filter_test_1_expr24, 1, file_filter_test_1_expr23).
ref(t_files_20, file_filter_test_1_expr23, line(file_filter_test_1, 252)).
method_invoc(file_filter_test_1_expr24, m_to_path_482, line(file_filter_test_1, 252)).
ref(v_read_only_file_803, file_filter_test_1_expr24, line(file_filter_test_1, 252)).
method_invoc(file_filter_test_1_expr25, m_generate_test_data_487, line(file_filter_test_1, 253)).
throw(file_filter_test_1_expr25, ioexception, line(file_filter_test_1, 253)).
argument(v_output_805, 1, file_filter_test_1_expr25).
argument(file_filter_test_1_literal7, 2, file_filter_test_1_expr25).
ref(t_test_utils_22, file_filter_test_1_expr25, line(file_filter_test_1, 253)).
method_invoc(file_filter_test_1_expr26, m_assert_true_105, line(file_filter_test_1, 255)).
argument(file_filter_test_1_expr27, 1, file_filter_test_1_expr26).
method_invoc(file_filter_test_1_expr27, m_set_read_only_488, line(file_filter_test_1, 255)).
ref(v_read_only_file_803, file_filter_test_1_expr27, line(file_filter_test_1, 255)).
method_invoc(file_filter_test_1_expr28, m_assert_filtering_421, line(file_filter_test_1, 256)).
throw(file_filter_test_1_expr28, ioexception, line(file_filter_test_1, 256)).
argument(q_can_write_17, 1, file_filter_test_1_expr28).
argument(f_temporary_folder_800, 2, file_filter_test_1_expr28).
argument(file_filter_test_1_literal8, 3, file_filter_test_1_expr28).
ref(t_can_write_file_filter_19, q_can_write_17, line(file_filter_test_1, 256)).
method_invoc(file_filter_test_1_expr29, m_assert_filtering_421, line(file_filter_test_1, 257)).
throw(file_filter_test_1_expr29, ioexception, line(file_filter_test_1, 257)).
argument(q_can_write_18, 1, file_filter_test_1_expr29).
argument(v_read_only_file_803, 2, file_filter_test_1_expr29).
argument(file_filter_test_1_literal9, 3, file_filter_test_1_expr29).
ref(t_can_write_file_filter_19, q_can_write_18, line(file_filter_test_1, 257)).
method_invoc(file_filter_test_1_expr30, m_assert_filtering_421, line(file_filter_test_1, 258)).
throw(file_filter_test_1_expr30, ioexception, line(file_filter_test_1, 258)).
argument(q_can_write_18, 1, file_filter_test_1_expr30).
argument(file_filter_test_1_expr31, 2, file_filter_test_1_expr30).
argument(file_filter_test_1_literal10, 3, file_filter_test_1_expr30).
ref(t_can_write_file_filter_19, q_can_write_18, line(file_filter_test_1, 258)).
assign(file_filter_test_1_expr31, file_filter_test_1_literal11, line(file_filter_test_1, 258)).
throw(m_test_delegate_file_filter_490, ioexception).
throw(m_test_deprecated_wildcard_492, ioexception).
throw(m_test_directory_493, ioexception).
throw(m_test_empty_494, exception).
assign(v_empty_dir_file_806, file_filter_test_1_expr32, line(file_filter_test_1, 403)).
method_invoc(file_filter_test_1_expr32, m_file_405, line(file_filter_test_1, 403)).
argument(f_temporary_folder_800, 1, file_filter_test_1_expr32).
argument(file_filter_test_1_literal12, 2, file_filter_test_1_expr32).
assign(v_empty_dir_path_807, file_filter_test_1_expr33, line(file_filter_test_1, 404)).
method_invoc(file_filter_test_1_expr33, m_to_path_482, line(file_filter_test_1, 404)).
ref(v_empty_dir_file_806, file_filter_test_1_expr33, line(file_filter_test_1, 404)).
method_invoc(file_filter_test_1_expr34, m_mkdirs_495, line(file_filter_test_1, 405)).
ref(v_empty_dir_file_806, file_filter_test_1_expr34, line(file_filter_test_1, 405)).
method_invoc(file_filter_test_1_expr35, m_assert_filtering_421, line(file_filter_test_1, 406)).
throw(file_filter_test_1_expr35, ioexception, line(file_filter_test_1, 406)).
argument(q_empty_18, 1, file_filter_test_1_expr35).
argument(v_empty_dir_file_806, 2, file_filter_test_1_expr35).
argument(file_filter_test_1_literal13, 3, file_filter_test_1_expr35).
ref(t_empty_file_filter_24, q_empty_18, line(file_filter_test_1, 406)).
method_invoc(file_filter_test_1_expr36, m_assert_filtering_425, line(file_filter_test_1, 407)).
argument(q_empty_19, 1, file_filter_test_1_expr36).
argument(v_empty_dir_path_807, 2, file_filter_test_1_expr36).
argument(file_filter_test_1_literal14, 3, file_filter_test_1_expr36).
ref(t_empty_file_filter_24, q_empty_19, line(file_filter_test_1, 407)).
method_invoc(file_filter_test_1_expr37, m_assert_filtering_421, line(file_filter_test_1, 408)).
throw(file_filter_test_1_expr37, ioexception, line(file_filter_test_1, 408)).
argument(q_empty_19, 1, file_filter_test_1_expr37).
argument(file_filter_test_1_expr38, 2, file_filter_test_1_expr37).
argument(file_filter_test_1_literal15, 3, file_filter_test_1_expr37).
ref(t_empty_file_filter_24, q_empty_19, line(file_filter_test_1, 408)).
assign(file_filter_test_1_expr38, file_filter_test_1_literal16, line(file_filter_test_1, 408)).
throw(m_test_false_497, ioexception).
throw(m_test_file_equals_filter_498, ioexception).
throw(m_test_file_filter_utils_and_499, ioexception).
throw(m_test_file_filter_utils_or_500, ioexception).
throw(m_test_files_501, ioexception).
assign(v_filter_808, q_instance_19, line(file_filter_test_1, 501)).
ref(t_file_file_filter_25, q_instance_19, line(file_filter_test_1, 501)).
method_invoc(file_filter_test_1_expr39, m_assert_filtering_421, line(file_filter_test_1, 503)).
throw(file_filter_test_1_expr39, ioexception, line(file_filter_test_1, 503)).
argument(v_filter_808, 1, file_filter_test_1_expr39).
argument(file_filter_test_1_expr40, 2, file_filter_test_1_expr39).
argument(file_filter_test_1_literal17, 3, file_filter_test_1_expr39).
assign(file_filter_test_1_expr40, file_filter_test_1_literal18, line(file_filter_test_1, 503)).
throw(m_test_filter_array_from_list_502, exception).
throw(m_test_filter_array__iofile_filter_503, exception).
throw(m_test_filter_array__path_visitor_file_filter__file_exists_no_504, exception).
throw(m_test_filter_array__path_visitor_file_filter__file_exists_yes_505, exception).
throw(m_test_filter_files_array_null_parameters_506, exception).
throw(m_test_filter_list_507, exception).
throw(m_test_filter_list_from_array_508, exception).
throw(m_test_filter_paths_array_null_parameters_510, exception).
throw(m_test_filter_set_511, exception).
throw(m_test_filter_set_from_array_512, exception).
throw(m_test_hidden_514, ioexception).
assign(v_hidden_dir_file_809, file_filter_test_1_expr41, line(file_filter_test_1, 727)).
method_invoc(file_filter_test_1_expr41, m_file_515, line(file_filter_test_1, 727)).
argument(f_svn_dir_name_810, 1, file_filter_test_1_expr41).
assign(v_hidden_dir_path_811, file_filter_test_1_expr42, line(file_filter_test_1, 728)).
method_invoc(file_filter_test_1_expr42, m_to_path_482, line(file_filter_test_1, 728)).
ref(v_hidden_dir_file_809, file_filter_test_1_expr42, line(file_filter_test_1, 728)).
method_invoc(file_filter_test_1_expr43, m_exists_483, line(file_filter_test_1, 729)).
ref(v_hidden_dir_file_809, file_filter_test_1_expr43, line(file_filter_test_1, 729)).
assign(v_path_812, file_filter_test_1_expr44, line(file_filter_test_1, 735)).
method_invoc(file_filter_test_1_expr44, m_to_path_482, line(file_filter_test_1, 735)).
ref(f_temporary_folder_800, file_filter_test_1_expr44, line(file_filter_test_1, 735)).
method_invoc(file_filter_test_1_expr45, m_assert_filtering_421, line(file_filter_test_1, 736)).
throw(file_filter_test_1_expr45, ioexception, line(file_filter_test_1, 736)).
argument(q_hidden_20, 1, file_filter_test_1_expr45).
argument(f_temporary_folder_800, 2, file_filter_test_1_expr45).
argument(file_filter_test_1_literal19, 3, file_filter_test_1_expr45).
ref(t_hidden_file_filter_26, q_hidden_20, line(file_filter_test_1, 736)).
method_invoc(file_filter_test_1_expr46, m_assert_filtering_425, line(file_filter_test_1, 737)).
argument(q_hidden_21, 1, file_filter_test_1_expr46).
argument(v_path_812, 2, file_filter_test_1_expr46).
argument(file_filter_test_1_literal20, 3, file_filter_test_1_expr46).
ref(t_hidden_file_filter_26, q_hidden_21, line(file_filter_test_1, 737)).
method_invoc(file_filter_test_1_expr47, m_assert_filtering_425, line(file_filter_test_1, 738)).
argument(q_hidden_21, 1, file_filter_test_1_expr47).
argument(file_filter_test_1_expr48, 2, file_filter_test_1_expr47).
argument(file_filter_test_1_literal21, 3, file_filter_test_1_expr47).
ref(t_hidden_file_filter_26, q_hidden_21, line(file_filter_test_1, 738)).
assign(file_filter_test_1_expr48, file_filter_test_1_literal22, line(file_filter_test_1, 738)).
throw(m_test_magic_number_file_filter_bytes_516, exception).
throw(m_test_magic_number_file_filter_bytes_offset_517, exception).
throw(m_test_magic_number_file_filter_string_518, exception).
throw(m_test_magic_number_file_filter_string_offset_519, exception).
throw(m_test_make_cvsaware_521, exception).
throw(m_test_make_directory_only_522, exception).
throw(m_test_make_file_only_523, exception).
throw(m_test_make_svnaware_524, exception).
throw(m_test_name_filter_525, ioexception).
assign(v_filter_813, file_filter_test_1_expr49, line(file_filter_test_1, 1064)).
method_invoc(file_filter_test_1_expr49, m_name_file_filter_526, line(file_filter_test_1, 1064)).
argument(file_filter_test_1_literal23, 1, file_filter_test_1_expr49).
argument(file_filter_test_1_literal24, 2, file_filter_test_1_expr49).
method_invoc(file_filter_test_1_expr50, m_assert_foo_bar_file_filtering_427, line(file_filter_test_1, 1065)).
throw(file_filter_test_1_expr50, ioexception, line(file_filter_test_1, 1065)).
argument(v_filter_813, 1, file_filter_test_1_expr50).
method_invoc(file_filter_test_1_expr51, m_assert_filtering_421, line(file_filter_test_1, 1066)).
throw(file_filter_test_1_expr51, ioexception, line(file_filter_test_1, 1066)).
argument(v_filter_813, 1, file_filter_test_1_expr51).
argument(file_filter_test_1_expr52, 2, file_filter_test_1_expr51).
argument(file_filter_test_1_literal25, 3, file_filter_test_1_expr51).
assign(file_filter_test_1_expr52, file_filter_test_1_literal26, line(file_filter_test_1, 1066)).
throw(m_test_negate_530, ioexception).
throw(m_test_or_532, ioexception).
throw(m_test_path_equals_filter_533, ioexception).
throw(m_test_prefix_534, ioexception).
throw(m_test_prefix_case_insensitive_535, ioexception).
throw(m_test_size_filter_on_files_536, exception).
throw(m_test_size_filter_on_paths_537, exception).
throw(m_test_suffix_538, ioexception).
throw(m_test_suffix_case_insensitive_539, ioexception).
throw(m_test_true_540, ioexception).

%iofile_filter_1 - org.apache.commons.io.filefilter.IOFileFilter
assign(f_empty_string_array_879, iofile_filter_1_expr1, line(iofile_filter_1, 39)).
param(p_file_880, 1, m_accept_423).
param(p_dir_881, 1, m_accept_596).
param(p_name_882, 2, m_accept_596).
param(p_path_883, 1, m_accept_426).
param(p_attributes_884, 2, m_accept_426).
param(p_file_filter_885, 1, m_and_450).
return(iofile_filter_1_expr2, m_and_450, line(iofile_filter_1, 86)).
method_invoc(iofile_filter_1_expr2, m_and_file_filter_434, line(iofile_filter_1, 86)).
argument(iofile_filter_1_expr3, 1, iofile_filter_1_expr2).
argument(p_file_filter_885, 2, iofile_filter_1_expr2).
param(p_path_886, 1, m_matches_597).
return(iofile_filter_1_expr4, m_matches_597, line(iofile_filter_1, 98)).
method_invoc(iofile_filter_1_expr5, m_accept_426, line(iofile_filter_1, 98)).
argument(p_path_886, 1, iofile_filter_1_expr5).
argument(iofile_filter_1_literal1, 2, iofile_filter_1_expr5).
ref(t_file_visit_result_18, q_terminate_22, line(iofile_filter_1, 98)).
return(iofile_filter_1_expr6, m_negate_449, line(iofile_filter_1, 108)).
method_invoc(iofile_filter_1_expr6, m_not_file_filter_598, line(iofile_filter_1, 108)).
argument(iofile_filter_1_expr7, 1, iofile_filter_1_expr6).
param(p_file_filter_887, 1, m_or_599).


% Stack Trace Info.
test_failure(failure_1, 'org.apache.commons.io.IOCaseTest', 'test_checkEquals_functionality').
trace(trace_1, failure_1, 'requireNonNull', line(java_util_objects, 259), failure_1, non_target).
trace(trace_2, trace_1, m_check_equals_85, line(iocase_1, 174), failure_1, target).
trace(trace_3, trace_2, m_test_check_equals_functionality_103, line(iocase_test_1, 146), failure_1, target).
trace(trace_4, trace_3, 'invoke', line(jdk_internal_reflect_direct_method_handle_accessor, 104), failure_1, non_target).
trace(trace_5, trace_4, 'invoke', line(java_lang_reflect_method, 578), failure_1, non_target).
trace(trace_6, trace_5, 'invokeMethod', line(org_junit_platform_commons_util_reflection_utils, 727), failure_1, non_target).
trace(trace_7, trace_6, 'proceed', line(org_junit_jupiter_engine_execution_method_invocation, 60), failure_1, non_target).
trace(trace_8, trace_7, 'proceed', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain_validating_invocation, 131), failure_1, non_target).
trace(trace_9, trace_8, 'intercept', line(org_junit_jupiter_engine_extension_timeout_extension, 156), failure_1, non_target).
trace(trace_10, trace_9, 'interceptTestableMethod', line(org_junit_jupiter_engine_extension_timeout_extension, 147), failure_1, non_target).
trace(trace_11, trace_10, 'interceptTestMethod', line(org_junit_jupiter_engine_extension_timeout_extension, 86), failure_1, non_target).
trace(trace_12, trace_11, 'lambda$ofVoidMethod$0', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker_reflective_interceptor_call, 103), failure_1, non_target).
trace(trace_13, trace_12, 'lambda$invoke$0', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker, 93), failure_1, non_target).
trace(trace_14, trace_13, 'proceed', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain_intercepted_invocation, 106), failure_1, non_target).
trace(trace_15, trace_14, 'proceed', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain, 64), failure_1, non_target).
trace(trace_16, trace_15, 'chainAndInvoke', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain, 45), failure_1, non_target).
trace(trace_17, trace_16, 'invoke', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain, 37), failure_1, non_target).
trace(trace_18, trace_17, 'invoke', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker, 92), failure_1, non_target).
trace(trace_19, trace_18, 'invoke', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker, 86), failure_1, non_target).
trace(trace_20, trace_19, 'lambda$invokeTestMethod$7', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 217), failure_1, non_target).
trace(trace_21, trace_20, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_22, trace_21, 'invokeTestMethod', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 213), failure_1, non_target).
trace(trace_23, trace_22, 'execute', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 138), failure_1, non_target).
trace(trace_24, trace_23, 'execute', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 68), failure_1, non_target).
trace(trace_25, trace_24, 'lambda$executeRecursively$6', line(org_junit_platform_engine_support_hierarchical_node_test_task, 151), failure_1, non_target).
trace(trace_26, trace_25, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_27, trace_26, 'lambda$executeRecursively$8', line(org_junit_platform_engine_support_hierarchical_node_test_task, 141), failure_1, non_target).
trace(trace_28, trace_27, 'around', line(org_junit_platform_engine_support_hierarchical_node, 137), failure_1, non_target).
trace(trace_29, trace_28, 'lambda$executeRecursively$9', line(org_junit_platform_engine_support_hierarchical_node_test_task, 139), failure_1, non_target).
trace(trace_30, trace_29, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_31, trace_30, 'executeRecursively', line(org_junit_platform_engine_support_hierarchical_node_test_task, 138), failure_1, non_target).
trace(trace_32, trace_31, 'execute', line(org_junit_platform_engine_support_hierarchical_node_test_task, 95), failure_1, non_target).
trace(trace_33, trace_32, 'forEach', line(java_util_array_list, 1511), failure_1, non_target).
trace(trace_34, trace_33, 'invokeAll', line(org_junit_platform_engine_support_hierarchical_same_thread_hierarchical_test_executor_service, 41), failure_1, non_target).
trace(trace_35, trace_34, 'lambda$executeRecursively$6', line(org_junit_platform_engine_support_hierarchical_node_test_task, 155), failure_1, non_target).
trace(trace_36, trace_35, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_37, trace_36, 'lambda$executeRecursively$8', line(org_junit_platform_engine_support_hierarchical_node_test_task, 141), failure_1, non_target).
trace(trace_38, trace_37, 'around', line(org_junit_platform_engine_support_hierarchical_node, 137), failure_1, non_target).
trace(trace_39, trace_38, 'lambda$executeRecursively$9', line(org_junit_platform_engine_support_hierarchical_node_test_task, 139), failure_1, non_target).
trace(trace_40, trace_39, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_41, trace_40, 'executeRecursively', line(org_junit_platform_engine_support_hierarchical_node_test_task, 138), failure_1, non_target).
trace(trace_42, trace_41, 'execute', line(org_junit_platform_engine_support_hierarchical_node_test_task, 95), failure_1, non_target).
trace(trace_43, trace_42, 'forEach', line(java_util_array_list, 1511), failure_1, non_target).
trace(trace_44, trace_43, 'invokeAll', line(org_junit_platform_engine_support_hierarchical_same_thread_hierarchical_test_executor_service, 41), failure_1, non_target).
trace(trace_45, trace_44, 'lambda$executeRecursively$6', line(org_junit_platform_engine_support_hierarchical_node_test_task, 155), failure_1, non_target).
trace(trace_46, trace_45, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_47, trace_46, 'lambda$executeRecursively$8', line(org_junit_platform_engine_support_hierarchical_node_test_task, 141), failure_1, non_target).
trace(trace_48, trace_47, 'around', line(org_junit_platform_engine_support_hierarchical_node, 137), failure_1, non_target).
trace(trace_49, trace_48, 'lambda$executeRecursively$9', line(org_junit_platform_engine_support_hierarchical_node_test_task, 139), failure_1, non_target).
trace(trace_50, trace_49, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_1, non_target).
trace(trace_51, trace_50, 'executeRecursively', line(org_junit_platform_engine_support_hierarchical_node_test_task, 138), failure_1, non_target).
trace(trace_52, trace_51, 'execute', line(org_junit_platform_engine_support_hierarchical_node_test_task, 95), failure_1, non_target).
trace(trace_53, trace_52, 'submit', line(org_junit_platform_engine_support_hierarchical_same_thread_hierarchical_test_executor_service, 35), failure_1, non_target).
trace(trace_54, trace_53, 'execute', line(org_junit_platform_engine_support_hierarchical_hierarchical_test_executor, 57), failure_1, non_target).
trace(trace_55, trace_54, 'execute', line(org_junit_platform_engine_support_hierarchical_hierarchical_test_engine, 54), failure_1, non_target).
trace(trace_56, trace_55, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 147), failure_1, non_target).
trace(trace_57, trace_56, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 127), failure_1, non_target).
trace(trace_58, trace_57, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 90), failure_1, non_target).
trace(trace_59, trace_58, 'lambda$execute$0', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 55), failure_1, non_target).
trace(trace_60, trace_59, 'withInterceptedStreams', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 102), failure_1, non_target).
trace(trace_61, trace_60, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 54), failure_1, non_target).
trace(trace_62, trace_61, 'execute', line(org_junit_platform_launcher_core_default_launcher, 114), failure_1, non_target).
trace(trace_63, trace_62, 'execute', line(org_junit_platform_launcher_core_default_launcher, 86), failure_1, non_target).
trace(trace_64, trace_63, 'execute', line(org_junit_platform_launcher_core_default_launcher_session_delegating_launcher, 86), failure_1, non_target).
trace(trace_65, trace_64, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit5_test_runner, 38), failure_1, non_target).
test_failure(failure_2, 'org.apache.commons.io.filefilter.FileFilterTest', 'testNameFilter').
trace(trace_66, failure_2, m_accept_606, line(name_file_filter_1, 166), failure_2, target).
trace(trace_67, trace_66, m_assert_filtering_421, line(abstract_filter_test_1, 50), failure_2, target).
trace(trace_68, trace_67, m_test_name_filter_525, line(file_filter_test_1, 1066), failure_2, target).
trace(trace_69, trace_68, 'invoke', line(jdk_internal_reflect_direct_method_handle_accessor, 104), failure_2, non_target).
trace(trace_70, trace_69, 'invoke', line(java_lang_reflect_method, 578), failure_2, non_target).
trace(trace_71, trace_70, 'invokeMethod', line(org_junit_platform_commons_util_reflection_utils, 727), failure_2, non_target).
trace(trace_72, trace_71, 'proceed', line(org_junit_jupiter_engine_execution_method_invocation, 60), failure_2, non_target).
trace(trace_73, trace_72, 'proceed', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain_validating_invocation, 131), failure_2, non_target).
trace(trace_74, trace_73, 'intercept', line(org_junit_jupiter_engine_extension_timeout_extension, 156), failure_2, non_target).
trace(trace_75, trace_74, 'interceptTestableMethod', line(org_junit_jupiter_engine_extension_timeout_extension, 147), failure_2, non_target).
trace(trace_76, trace_75, 'interceptTestMethod', line(org_junit_jupiter_engine_extension_timeout_extension, 86), failure_2, non_target).
trace(trace_77, trace_76, 'lambda$ofVoidMethod$0', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker_reflective_interceptor_call, 103), failure_2, non_target).
trace(trace_78, trace_77, 'lambda$invoke$0', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker, 93), failure_2, non_target).
trace(trace_79, trace_78, 'proceed', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain_intercepted_invocation, 106), failure_2, non_target).
trace(trace_80, trace_79, 'proceed', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain, 64), failure_2, non_target).
trace(trace_81, trace_80, 'chainAndInvoke', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain, 45), failure_2, non_target).
trace(trace_82, trace_81, 'invoke', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain, 37), failure_2, non_target).
trace(trace_83, trace_82, 'invoke', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker, 92), failure_2, non_target).
trace(trace_84, trace_83, 'invoke', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker, 86), failure_2, non_target).
trace(trace_85, trace_84, 'lambda$invokeTestMethod$7', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 217), failure_2, non_target).
trace(trace_86, trace_85, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_2, non_target).
trace(trace_87, trace_86, 'invokeTestMethod', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 213), failure_2, non_target).
trace(trace_88, trace_87, 'execute', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 138), failure_2, non_target).
trace(trace_89, trace_88, 'execute', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 68), failure_2, non_target).
trace(trace_90, trace_89, 'lambda$executeRecursively$6', line(org_junit_platform_engine_support_hierarchical_node_test_task, 151), failure_2, non_target).
trace(trace_91, trace_90, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_2, non_target).
trace(trace_92, trace_91, 'lambda$executeRecursively$8', line(org_junit_platform_engine_support_hierarchical_node_test_task, 141), failure_2, non_target).
trace(trace_93, trace_92, 'around', line(org_junit_platform_engine_support_hierarchical_node, 137), failure_2, non_target).
trace(trace_94, trace_93, 'lambda$executeRecursively$9', line(org_junit_platform_engine_support_hierarchical_node_test_task, 139), failure_2, non_target).
trace(trace_95, trace_94, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_2, non_target).
trace(trace_96, trace_95, 'executeRecursively', line(org_junit_platform_engine_support_hierarchical_node_test_task, 138), failure_2, non_target).
trace(trace_97, trace_96, 'execute', line(org_junit_platform_engine_support_hierarchical_node_test_task, 95), failure_2, non_target).
trace(trace_98, trace_97, 'forEach', line(java_util_array_list, 1511), failure_2, non_target).
trace(trace_99, trace_98, 'invokeAll', line(org_junit_platform_engine_support_hierarchical_same_thread_hierarchical_test_executor_service, 41), failure_2, non_target).
trace(trace_100, trace_99, 'lambda$executeRecursively$6', line(org_junit_platform_engine_support_hierarchical_node_test_task, 155), failure_2, non_target).
trace(trace_101, trace_100, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_2, non_target).
trace(trace_102, trace_101, 'lambda$executeRecursively$8', line(org_junit_platform_engine_support_hierarchical_node_test_task, 141), failure_2, non_target).
trace(trace_103, trace_102, 'around', line(org_junit_platform_engine_support_hierarchical_node, 137), failure_2, non_target).
trace(trace_104, trace_103, 'lambda$executeRecursively$9', line(org_junit_platform_engine_support_hierarchical_node_test_task, 139), failure_2, non_target).
trace(trace_105, trace_104, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_2, non_target).
trace(trace_106, trace_105, 'executeRecursively', line(org_junit_platform_engine_support_hierarchical_node_test_task, 138), failure_2, non_target).
trace(trace_107, trace_106, 'execute', line(org_junit_platform_engine_support_hierarchical_node_test_task, 95), failure_2, non_target).
trace(trace_108, trace_107, 'forEach', line(java_util_array_list, 1511), failure_2, non_target).
trace(trace_109, trace_108, 'invokeAll', line(org_junit_platform_engine_support_hierarchical_same_thread_hierarchical_test_executor_service, 41), failure_2, non_target).
trace(trace_110, trace_109, 'lambda$executeRecursively$6', line(org_junit_platform_engine_support_hierarchical_node_test_task, 155), failure_2, non_target).
trace(trace_111, trace_110, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_2, non_target).
trace(trace_112, trace_111, 'lambda$executeRecursively$8', line(org_junit_platform_engine_support_hierarchical_node_test_task, 141), failure_2, non_target).
trace(trace_113, trace_112, 'around', line(org_junit_platform_engine_support_hierarchical_node, 137), failure_2, non_target).
trace(trace_114, trace_113, 'lambda$executeRecursively$9', line(org_junit_platform_engine_support_hierarchical_node_test_task, 139), failure_2, non_target).
trace(trace_115, trace_114, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_2, non_target).
trace(trace_116, trace_115, 'executeRecursively', line(org_junit_platform_engine_support_hierarchical_node_test_task, 138), failure_2, non_target).
trace(trace_117, trace_116, 'execute', line(org_junit_platform_engine_support_hierarchical_node_test_task, 95), failure_2, non_target).
trace(trace_118, trace_117, 'submit', line(org_junit_platform_engine_support_hierarchical_same_thread_hierarchical_test_executor_service, 35), failure_2, non_target).
trace(trace_119, trace_118, 'execute', line(org_junit_platform_engine_support_hierarchical_hierarchical_test_executor, 57), failure_2, non_target).
trace(trace_120, trace_119, 'execute', line(org_junit_platform_engine_support_hierarchical_hierarchical_test_engine, 54), failure_2, non_target).
trace(trace_121, trace_120, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 147), failure_2, non_target).
trace(trace_122, trace_121, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 127), failure_2, non_target).
trace(trace_123, trace_122, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 90), failure_2, non_target).
trace(trace_124, trace_123, 'lambda$execute$0', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 55), failure_2, non_target).
trace(trace_125, trace_124, 'withInterceptedStreams', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 102), failure_2, non_target).
trace(trace_126, trace_125, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 54), failure_2, non_target).
trace(trace_127, trace_126, 'execute', line(org_junit_platform_launcher_core_default_launcher, 114), failure_2, non_target).
trace(trace_128, trace_127, 'execute', line(org_junit_platform_launcher_core_default_launcher, 86), failure_2, non_target).
trace(trace_129, trace_128, 'execute', line(org_junit_platform_launcher_core_default_launcher_session_delegating_launcher, 86), failure_2, non_target).
trace(trace_130, trace_129, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit5_test_runner, 38), failure_2, non_target).
test_failure(failure_3, 'org.apache.commons.io.filefilter.FileFilterTest', 'testEmpty').
trace(trace_131, failure_3, m_accept_464, line(empty_file_filter_1, 107), failure_3, target).
trace(trace_132, trace_131, m_assert_filtering_421, line(abstract_filter_test_1, 50), failure_3, target).
trace(trace_133, trace_132, m_test_empty_494, line(file_filter_test_1, 408), failure_3, target).
trace(trace_134, trace_133, 'invoke', line(jdk_internal_reflect_direct_method_handle_accessor, 104), failure_3, non_target).
trace(trace_135, trace_134, 'invoke', line(java_lang_reflect_method, 578), failure_3, non_target).
trace(trace_136, trace_135, 'invokeMethod', line(org_junit_platform_commons_util_reflection_utils, 727), failure_3, non_target).
trace(trace_137, trace_136, 'proceed', line(org_junit_jupiter_engine_execution_method_invocation, 60), failure_3, non_target).
trace(trace_138, trace_137, 'proceed', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain_validating_invocation, 131), failure_3, non_target).
trace(trace_139, trace_138, 'intercept', line(org_junit_jupiter_engine_extension_timeout_extension, 156), failure_3, non_target).
trace(trace_140, trace_139, 'interceptTestableMethod', line(org_junit_jupiter_engine_extension_timeout_extension, 147), failure_3, non_target).
trace(trace_141, trace_140, 'interceptTestMethod', line(org_junit_jupiter_engine_extension_timeout_extension, 86), failure_3, non_target).
trace(trace_142, trace_141, 'lambda$ofVoidMethod$0', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker_reflective_interceptor_call, 103), failure_3, non_target).
trace(trace_143, trace_142, 'lambda$invoke$0', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker, 93), failure_3, non_target).
trace(trace_144, trace_143, 'proceed', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain_intercepted_invocation, 106), failure_3, non_target).
trace(trace_145, trace_144, 'proceed', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain, 64), failure_3, non_target).
trace(trace_146, trace_145, 'chainAndInvoke', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain, 45), failure_3, non_target).
trace(trace_147, trace_146, 'invoke', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain, 37), failure_3, non_target).
trace(trace_148, trace_147, 'invoke', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker, 92), failure_3, non_target).
trace(trace_149, trace_148, 'invoke', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker, 86), failure_3, non_target).
trace(trace_150, trace_149, 'lambda$invokeTestMethod$7', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 217), failure_3, non_target).
trace(trace_151, trace_150, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_3, non_target).
trace(trace_152, trace_151, 'invokeTestMethod', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 213), failure_3, non_target).
trace(trace_153, trace_152, 'execute', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 138), failure_3, non_target).
trace(trace_154, trace_153, 'execute', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 68), failure_3, non_target).
trace(trace_155, trace_154, 'lambda$executeRecursively$6', line(org_junit_platform_engine_support_hierarchical_node_test_task, 151), failure_3, non_target).
trace(trace_156, trace_155, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_3, non_target).
trace(trace_157, trace_156, 'lambda$executeRecursively$8', line(org_junit_platform_engine_support_hierarchical_node_test_task, 141), failure_3, non_target).
trace(trace_158, trace_157, 'around', line(org_junit_platform_engine_support_hierarchical_node, 137), failure_3, non_target).
trace(trace_159, trace_158, 'lambda$executeRecursively$9', line(org_junit_platform_engine_support_hierarchical_node_test_task, 139), failure_3, non_target).
trace(trace_160, trace_159, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_3, non_target).
trace(trace_161, trace_160, 'executeRecursively', line(org_junit_platform_engine_support_hierarchical_node_test_task, 138), failure_3, non_target).
trace(trace_162, trace_161, 'execute', line(org_junit_platform_engine_support_hierarchical_node_test_task, 95), failure_3, non_target).
trace(trace_163, trace_162, 'forEach', line(java_util_array_list, 1511), failure_3, non_target).
trace(trace_164, trace_163, 'invokeAll', line(org_junit_platform_engine_support_hierarchical_same_thread_hierarchical_test_executor_service, 41), failure_3, non_target).
trace(trace_165, trace_164, 'lambda$executeRecursively$6', line(org_junit_platform_engine_support_hierarchical_node_test_task, 155), failure_3, non_target).
trace(trace_166, trace_165, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_3, non_target).
trace(trace_167, trace_166, 'lambda$executeRecursively$8', line(org_junit_platform_engine_support_hierarchical_node_test_task, 141), failure_3, non_target).
trace(trace_168, trace_167, 'around', line(org_junit_platform_engine_support_hierarchical_node, 137), failure_3, non_target).
trace(trace_169, trace_168, 'lambda$executeRecursively$9', line(org_junit_platform_engine_support_hierarchical_node_test_task, 139), failure_3, non_target).
trace(trace_170, trace_169, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_3, non_target).
trace(trace_171, trace_170, 'executeRecursively', line(org_junit_platform_engine_support_hierarchical_node_test_task, 138), failure_3, non_target).
trace(trace_172, trace_171, 'execute', line(org_junit_platform_engine_support_hierarchical_node_test_task, 95), failure_3, non_target).
trace(trace_173, trace_172, 'forEach', line(java_util_array_list, 1511), failure_3, non_target).
trace(trace_174, trace_173, 'invokeAll', line(org_junit_platform_engine_support_hierarchical_same_thread_hierarchical_test_executor_service, 41), failure_3, non_target).
trace(trace_175, trace_174, 'lambda$executeRecursively$6', line(org_junit_platform_engine_support_hierarchical_node_test_task, 155), failure_3, non_target).
trace(trace_176, trace_175, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_3, non_target).
trace(trace_177, trace_176, 'lambda$executeRecursively$8', line(org_junit_platform_engine_support_hierarchical_node_test_task, 141), failure_3, non_target).
trace(trace_178, trace_177, 'around', line(org_junit_platform_engine_support_hierarchical_node, 137), failure_3, non_target).
trace(trace_179, trace_178, 'lambda$executeRecursively$9', line(org_junit_platform_engine_support_hierarchical_node_test_task, 139), failure_3, non_target).
trace(trace_180, trace_179, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_3, non_target).
trace(trace_181, trace_180, 'executeRecursively', line(org_junit_platform_engine_support_hierarchical_node_test_task, 138), failure_3, non_target).
trace(trace_182, trace_181, 'execute', line(org_junit_platform_engine_support_hierarchical_node_test_task, 95), failure_3, non_target).
trace(trace_183, trace_182, 'submit', line(org_junit_platform_engine_support_hierarchical_same_thread_hierarchical_test_executor_service, 35), failure_3, non_target).
trace(trace_184, trace_183, 'execute', line(org_junit_platform_engine_support_hierarchical_hierarchical_test_executor, 57), failure_3, non_target).
trace(trace_185, trace_184, 'execute', line(org_junit_platform_engine_support_hierarchical_hierarchical_test_engine, 54), failure_3, non_target).
trace(trace_186, trace_185, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 147), failure_3, non_target).
trace(trace_187, trace_186, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 127), failure_3, non_target).
trace(trace_188, trace_187, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 90), failure_3, non_target).
trace(trace_189, trace_188, 'lambda$execute$0', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 55), failure_3, non_target).
trace(trace_190, trace_189, 'withInterceptedStreams', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 102), failure_3, non_target).
trace(trace_191, trace_190, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 54), failure_3, non_target).
trace(trace_192, trace_191, 'execute', line(org_junit_platform_launcher_core_default_launcher, 114), failure_3, non_target).
trace(trace_193, trace_192, 'execute', line(org_junit_platform_launcher_core_default_launcher, 86), failure_3, non_target).
trace(trace_194, trace_193, 'execute', line(org_junit_platform_launcher_core_default_launcher_session_delegating_launcher, 86), failure_3, non_target).
trace(trace_195, trace_194, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit5_test_runner, 38), failure_3, non_target).
test_failure(failure_4, 'org.apache.commons.io.filefilter.FileFilterTest', 'testFiles').
trace(trace_196, failure_4, m_accept_473, line(file_file_filter_1, 100), failure_4, target).
trace(trace_197, trace_196, m_assert_filtering_421, line(abstract_filter_test_1, 50), failure_4, target).
trace(trace_198, trace_197, m_test_files_501, line(file_filter_test_1, 503), failure_4, target).
trace(trace_199, trace_198, 'invoke', line(jdk_internal_reflect_direct_method_handle_accessor, 104), failure_4, non_target).
trace(trace_200, trace_199, 'invoke', line(java_lang_reflect_method, 578), failure_4, non_target).
trace(trace_201, trace_200, 'invokeMethod', line(org_junit_platform_commons_util_reflection_utils, 727), failure_4, non_target).
trace(trace_202, trace_201, 'proceed', line(org_junit_jupiter_engine_execution_method_invocation, 60), failure_4, non_target).
trace(trace_203, trace_202, 'proceed', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain_validating_invocation, 131), failure_4, non_target).
trace(trace_204, trace_203, 'intercept', line(org_junit_jupiter_engine_extension_timeout_extension, 156), failure_4, non_target).
trace(trace_205, trace_204, 'interceptTestableMethod', line(org_junit_jupiter_engine_extension_timeout_extension, 147), failure_4, non_target).
trace(trace_206, trace_205, 'interceptTestMethod', line(org_junit_jupiter_engine_extension_timeout_extension, 86), failure_4, non_target).
trace(trace_207, trace_206, 'lambda$ofVoidMethod$0', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker_reflective_interceptor_call, 103), failure_4, non_target).
trace(trace_208, trace_207, 'lambda$invoke$0', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker, 93), failure_4, non_target).
trace(trace_209, trace_208, 'proceed', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain_intercepted_invocation, 106), failure_4, non_target).
trace(trace_210, trace_209, 'proceed', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain, 64), failure_4, non_target).
trace(trace_211, trace_210, 'chainAndInvoke', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain, 45), failure_4, non_target).
trace(trace_212, trace_211, 'invoke', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain, 37), failure_4, non_target).
trace(trace_213, trace_212, 'invoke', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker, 92), failure_4, non_target).
trace(trace_214, trace_213, 'invoke', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker, 86), failure_4, non_target).
trace(trace_215, trace_214, 'lambda$invokeTestMethod$7', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 217), failure_4, non_target).
trace(trace_216, trace_215, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_4, non_target).
trace(trace_217, trace_216, 'invokeTestMethod', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 213), failure_4, non_target).
trace(trace_218, trace_217, 'execute', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 138), failure_4, non_target).
trace(trace_219, trace_218, 'execute', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 68), failure_4, non_target).
trace(trace_220, trace_219, 'lambda$executeRecursively$6', line(org_junit_platform_engine_support_hierarchical_node_test_task, 151), failure_4, non_target).
trace(trace_221, trace_220, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_4, non_target).
trace(trace_222, trace_221, 'lambda$executeRecursively$8', line(org_junit_platform_engine_support_hierarchical_node_test_task, 141), failure_4, non_target).
trace(trace_223, trace_222, 'around', line(org_junit_platform_engine_support_hierarchical_node, 137), failure_4, non_target).
trace(trace_224, trace_223, 'lambda$executeRecursively$9', line(org_junit_platform_engine_support_hierarchical_node_test_task, 139), failure_4, non_target).
trace(trace_225, trace_224, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_4, non_target).
trace(trace_226, trace_225, 'executeRecursively', line(org_junit_platform_engine_support_hierarchical_node_test_task, 138), failure_4, non_target).
trace(trace_227, trace_226, 'execute', line(org_junit_platform_engine_support_hierarchical_node_test_task, 95), failure_4, non_target).
trace(trace_228, trace_227, 'forEach', line(java_util_array_list, 1511), failure_4, non_target).
trace(trace_229, trace_228, 'invokeAll', line(org_junit_platform_engine_support_hierarchical_same_thread_hierarchical_test_executor_service, 41), failure_4, non_target).
trace(trace_230, trace_229, 'lambda$executeRecursively$6', line(org_junit_platform_engine_support_hierarchical_node_test_task, 155), failure_4, non_target).
trace(trace_231, trace_230, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_4, non_target).
trace(trace_232, trace_231, 'lambda$executeRecursively$8', line(org_junit_platform_engine_support_hierarchical_node_test_task, 141), failure_4, non_target).
trace(trace_233, trace_232, 'around', line(org_junit_platform_engine_support_hierarchical_node, 137), failure_4, non_target).
trace(trace_234, trace_233, 'lambda$executeRecursively$9', line(org_junit_platform_engine_support_hierarchical_node_test_task, 139), failure_4, non_target).
trace(trace_235, trace_234, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_4, non_target).
trace(trace_236, trace_235, 'executeRecursively', line(org_junit_platform_engine_support_hierarchical_node_test_task, 138), failure_4, non_target).
trace(trace_237, trace_236, 'execute', line(org_junit_platform_engine_support_hierarchical_node_test_task, 95), failure_4, non_target).
trace(trace_238, trace_237, 'forEach', line(java_util_array_list, 1511), failure_4, non_target).
trace(trace_239, trace_238, 'invokeAll', line(org_junit_platform_engine_support_hierarchical_same_thread_hierarchical_test_executor_service, 41), failure_4, non_target).
trace(trace_240, trace_239, 'lambda$executeRecursively$6', line(org_junit_platform_engine_support_hierarchical_node_test_task, 155), failure_4, non_target).
trace(trace_241, trace_240, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_4, non_target).
trace(trace_242, trace_241, 'lambda$executeRecursively$8', line(org_junit_platform_engine_support_hierarchical_node_test_task, 141), failure_4, non_target).
trace(trace_243, trace_242, 'around', line(org_junit_platform_engine_support_hierarchical_node, 137), failure_4, non_target).
trace(trace_244, trace_243, 'lambda$executeRecursively$9', line(org_junit_platform_engine_support_hierarchical_node_test_task, 139), failure_4, non_target).
trace(trace_245, trace_244, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_4, non_target).
trace(trace_246, trace_245, 'executeRecursively', line(org_junit_platform_engine_support_hierarchical_node_test_task, 138), failure_4, non_target).
trace(trace_247, trace_246, 'execute', line(org_junit_platform_engine_support_hierarchical_node_test_task, 95), failure_4, non_target).
trace(trace_248, trace_247, 'submit', line(org_junit_platform_engine_support_hierarchical_same_thread_hierarchical_test_executor_service, 35), failure_4, non_target).
trace(trace_249, trace_248, 'execute', line(org_junit_platform_engine_support_hierarchical_hierarchical_test_executor, 57), failure_4, non_target).
trace(trace_250, trace_249, 'execute', line(org_junit_platform_engine_support_hierarchical_hierarchical_test_engine, 54), failure_4, non_target).
trace(trace_251, trace_250, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 147), failure_4, non_target).
trace(trace_252, trace_251, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 127), failure_4, non_target).
trace(trace_253, trace_252, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 90), failure_4, non_target).
trace(trace_254, trace_253, 'lambda$execute$0', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 55), failure_4, non_target).
trace(trace_255, trace_254, 'withInterceptedStreams', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 102), failure_4, non_target).
trace(trace_256, trace_255, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 54), failure_4, non_target).
trace(trace_257, trace_256, 'execute', line(org_junit_platform_launcher_core_default_launcher, 114), failure_4, non_target).
trace(trace_258, trace_257, 'execute', line(org_junit_platform_launcher_core_default_launcher, 86), failure_4, non_target).
trace(trace_259, trace_258, 'execute', line(org_junit_platform_launcher_core_default_launcher_session_delegating_launcher, 86), failure_4, non_target).
trace(trace_260, trace_259, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit5_test_runner, 38), failure_4, non_target).
test_failure(failure_5, 'org.apache.commons.io.filefilter.FileFilterTest', 'testCanRead').
trace(trace_261, failure_5, m_accept_451, line(can_read_file_filter_1, 95), failure_5, target).
trace(trace_262, trace_261, m_assert_filtering_421, line(abstract_filter_test_1, 50), failure_5, target).
trace(trace_263, trace_262, m_test_can_read_481, line(file_filter_test_1, 231), failure_5, target).
trace(trace_264, trace_263, 'invoke', line(jdk_internal_reflect_direct_method_handle_accessor, 104), failure_5, non_target).
trace(trace_265, trace_264, 'invoke', line(java_lang_reflect_method, 578), failure_5, non_target).
trace(trace_266, trace_265, 'invokeMethod', line(org_junit_platform_commons_util_reflection_utils, 727), failure_5, non_target).
trace(trace_267, trace_266, 'proceed', line(org_junit_jupiter_engine_execution_method_invocation, 60), failure_5, non_target).
trace(trace_268, trace_267, 'proceed', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain_validating_invocation, 131), failure_5, non_target).
trace(trace_269, trace_268, 'intercept', line(org_junit_jupiter_engine_extension_timeout_extension, 156), failure_5, non_target).
trace(trace_270, trace_269, 'interceptTestableMethod', line(org_junit_jupiter_engine_extension_timeout_extension, 147), failure_5, non_target).
trace(trace_271, trace_270, 'interceptTestMethod', line(org_junit_jupiter_engine_extension_timeout_extension, 86), failure_5, non_target).
trace(trace_272, trace_271, 'lambda$ofVoidMethod$0', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker_reflective_interceptor_call, 103), failure_5, non_target).
trace(trace_273, trace_272, 'lambda$invoke$0', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker, 93), failure_5, non_target).
trace(trace_274, trace_273, 'proceed', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain_intercepted_invocation, 106), failure_5, non_target).
trace(trace_275, trace_274, 'proceed', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain, 64), failure_5, non_target).
trace(trace_276, trace_275, 'chainAndInvoke', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain, 45), failure_5, non_target).
trace(trace_277, trace_276, 'invoke', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain, 37), failure_5, non_target).
trace(trace_278, trace_277, 'invoke', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker, 92), failure_5, non_target).
trace(trace_279, trace_278, 'invoke', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker, 86), failure_5, non_target).
trace(trace_280, trace_279, 'lambda$invokeTestMethod$7', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 217), failure_5, non_target).
trace(trace_281, trace_280, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_5, non_target).
trace(trace_282, trace_281, 'invokeTestMethod', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 213), failure_5, non_target).
trace(trace_283, trace_282, 'execute', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 138), failure_5, non_target).
trace(trace_284, trace_283, 'execute', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 68), failure_5, non_target).
trace(trace_285, trace_284, 'lambda$executeRecursively$6', line(org_junit_platform_engine_support_hierarchical_node_test_task, 151), failure_5, non_target).
trace(trace_286, trace_285, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_5, non_target).
trace(trace_287, trace_286, 'lambda$executeRecursively$8', line(org_junit_platform_engine_support_hierarchical_node_test_task, 141), failure_5, non_target).
trace(trace_288, trace_287, 'around', line(org_junit_platform_engine_support_hierarchical_node, 137), failure_5, non_target).
trace(trace_289, trace_288, 'lambda$executeRecursively$9', line(org_junit_platform_engine_support_hierarchical_node_test_task, 139), failure_5, non_target).
trace(trace_290, trace_289, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_5, non_target).
trace(trace_291, trace_290, 'executeRecursively', line(org_junit_platform_engine_support_hierarchical_node_test_task, 138), failure_5, non_target).
trace(trace_292, trace_291, 'execute', line(org_junit_platform_engine_support_hierarchical_node_test_task, 95), failure_5, non_target).
trace(trace_293, trace_292, 'forEach', line(java_util_array_list, 1511), failure_5, non_target).
trace(trace_294, trace_293, 'invokeAll', line(org_junit_platform_engine_support_hierarchical_same_thread_hierarchical_test_executor_service, 41), failure_5, non_target).
trace(trace_295, trace_294, 'lambda$executeRecursively$6', line(org_junit_platform_engine_support_hierarchical_node_test_task, 155), failure_5, non_target).
trace(trace_296, trace_295, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_5, non_target).
trace(trace_297, trace_296, 'lambda$executeRecursively$8', line(org_junit_platform_engine_support_hierarchical_node_test_task, 141), failure_5, non_target).
trace(trace_298, trace_297, 'around', line(org_junit_platform_engine_support_hierarchical_node, 137), failure_5, non_target).
trace(trace_299, trace_298, 'lambda$executeRecursively$9', line(org_junit_platform_engine_support_hierarchical_node_test_task, 139), failure_5, non_target).
trace(trace_300, trace_299, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_5, non_target).
trace(trace_301, trace_300, 'executeRecursively', line(org_junit_platform_engine_support_hierarchical_node_test_task, 138), failure_5, non_target).
trace(trace_302, trace_301, 'execute', line(org_junit_platform_engine_support_hierarchical_node_test_task, 95), failure_5, non_target).
trace(trace_303, trace_302, 'forEach', line(java_util_array_list, 1511), failure_5, non_target).
trace(trace_304, trace_303, 'invokeAll', line(org_junit_platform_engine_support_hierarchical_same_thread_hierarchical_test_executor_service, 41), failure_5, non_target).
trace(trace_305, trace_304, 'lambda$executeRecursively$6', line(org_junit_platform_engine_support_hierarchical_node_test_task, 155), failure_5, non_target).
trace(trace_306, trace_305, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_5, non_target).
trace(trace_307, trace_306, 'lambda$executeRecursively$8', line(org_junit_platform_engine_support_hierarchical_node_test_task, 141), failure_5, non_target).
trace(trace_308, trace_307, 'around', line(org_junit_platform_engine_support_hierarchical_node, 137), failure_5, non_target).
trace(trace_309, trace_308, 'lambda$executeRecursively$9', line(org_junit_platform_engine_support_hierarchical_node_test_task, 139), failure_5, non_target).
trace(trace_310, trace_309, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_5, non_target).
trace(trace_311, trace_310, 'executeRecursively', line(org_junit_platform_engine_support_hierarchical_node_test_task, 138), failure_5, non_target).
trace(trace_312, trace_311, 'execute', line(org_junit_platform_engine_support_hierarchical_node_test_task, 95), failure_5, non_target).
trace(trace_313, trace_312, 'submit', line(org_junit_platform_engine_support_hierarchical_same_thread_hierarchical_test_executor_service, 35), failure_5, non_target).
trace(trace_314, trace_313, 'execute', line(org_junit_platform_engine_support_hierarchical_hierarchical_test_executor, 57), failure_5, non_target).
trace(trace_315, trace_314, 'execute', line(org_junit_platform_engine_support_hierarchical_hierarchical_test_engine, 54), failure_5, non_target).
trace(trace_316, trace_315, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 147), failure_5, non_target).
trace(trace_317, trace_316, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 127), failure_5, non_target).
trace(trace_318, trace_317, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 90), failure_5, non_target).
trace(trace_319, trace_318, 'lambda$execute$0', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 55), failure_5, non_target).
trace(trace_320, trace_319, 'withInterceptedStreams', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 102), failure_5, non_target).
trace(trace_321, trace_320, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 54), failure_5, non_target).
trace(trace_322, trace_321, 'execute', line(org_junit_platform_launcher_core_default_launcher, 114), failure_5, non_target).
trace(trace_323, trace_322, 'execute', line(org_junit_platform_launcher_core_default_launcher, 86), failure_5, non_target).
trace(trace_324, trace_323, 'execute', line(org_junit_platform_launcher_core_default_launcher_session_delegating_launcher, 86), failure_5, non_target).
trace(trace_325, trace_324, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit5_test_runner, 38), failure_5, non_target).
test_failure(failure_6, 'org.apache.commons.io.filefilter.FileFilterTest', 'testCanWrite').
trace(trace_326, failure_6, m_accept_456, line(can_write_file_filter_1, 83), failure_6, target).
trace(trace_327, trace_326, m_assert_filtering_421, line(abstract_filter_test_1, 50), failure_6, target).
trace(trace_328, trace_327, m_test_can_write_489, line(file_filter_test_1, 258), failure_6, target).
trace(trace_329, trace_328, 'invoke', line(jdk_internal_reflect_direct_method_handle_accessor, 104), failure_6, non_target).
trace(trace_330, trace_329, 'invoke', line(java_lang_reflect_method, 578), failure_6, non_target).
trace(trace_331, trace_330, 'invokeMethod', line(org_junit_platform_commons_util_reflection_utils, 727), failure_6, non_target).
trace(trace_332, trace_331, 'proceed', line(org_junit_jupiter_engine_execution_method_invocation, 60), failure_6, non_target).
trace(trace_333, trace_332, 'proceed', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain_validating_invocation, 131), failure_6, non_target).
trace(trace_334, trace_333, 'intercept', line(org_junit_jupiter_engine_extension_timeout_extension, 156), failure_6, non_target).
trace(trace_335, trace_334, 'interceptTestableMethod', line(org_junit_jupiter_engine_extension_timeout_extension, 147), failure_6, non_target).
trace(trace_336, trace_335, 'interceptTestMethod', line(org_junit_jupiter_engine_extension_timeout_extension, 86), failure_6, non_target).
trace(trace_337, trace_336, 'lambda$ofVoidMethod$0', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker_reflective_interceptor_call, 103), failure_6, non_target).
trace(trace_338, trace_337, 'lambda$invoke$0', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker, 93), failure_6, non_target).
trace(trace_339, trace_338, 'proceed', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain_intercepted_invocation, 106), failure_6, non_target).
trace(trace_340, trace_339, 'proceed', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain, 64), failure_6, non_target).
trace(trace_341, trace_340, 'chainAndInvoke', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain, 45), failure_6, non_target).
trace(trace_342, trace_341, 'invoke', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain, 37), failure_6, non_target).
trace(trace_343, trace_342, 'invoke', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker, 92), failure_6, non_target).
trace(trace_344, trace_343, 'invoke', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker, 86), failure_6, non_target).
trace(trace_345, trace_344, 'lambda$invokeTestMethod$7', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 217), failure_6, non_target).
trace(trace_346, trace_345, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_6, non_target).
trace(trace_347, trace_346, 'invokeTestMethod', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 213), failure_6, non_target).
trace(trace_348, trace_347, 'execute', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 138), failure_6, non_target).
trace(trace_349, trace_348, 'execute', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 68), failure_6, non_target).
trace(trace_350, trace_349, 'lambda$executeRecursively$6', line(org_junit_platform_engine_support_hierarchical_node_test_task, 151), failure_6, non_target).
trace(trace_351, trace_350, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_6, non_target).
trace(trace_352, trace_351, 'lambda$executeRecursively$8', line(org_junit_platform_engine_support_hierarchical_node_test_task, 141), failure_6, non_target).
trace(trace_353, trace_352, 'around', line(org_junit_platform_engine_support_hierarchical_node, 137), failure_6, non_target).
trace(trace_354, trace_353, 'lambda$executeRecursively$9', line(org_junit_platform_engine_support_hierarchical_node_test_task, 139), failure_6, non_target).
trace(trace_355, trace_354, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_6, non_target).
trace(trace_356, trace_355, 'executeRecursively', line(org_junit_platform_engine_support_hierarchical_node_test_task, 138), failure_6, non_target).
trace(trace_357, trace_356, 'execute', line(org_junit_platform_engine_support_hierarchical_node_test_task, 95), failure_6, non_target).
trace(trace_358, trace_357, 'forEach', line(java_util_array_list, 1511), failure_6, non_target).
trace(trace_359, trace_358, 'invokeAll', line(org_junit_platform_engine_support_hierarchical_same_thread_hierarchical_test_executor_service, 41), failure_6, non_target).
trace(trace_360, trace_359, 'lambda$executeRecursively$6', line(org_junit_platform_engine_support_hierarchical_node_test_task, 155), failure_6, non_target).
trace(trace_361, trace_360, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_6, non_target).
trace(trace_362, trace_361, 'lambda$executeRecursively$8', line(org_junit_platform_engine_support_hierarchical_node_test_task, 141), failure_6, non_target).
trace(trace_363, trace_362, 'around', line(org_junit_platform_engine_support_hierarchical_node, 137), failure_6, non_target).
trace(trace_364, trace_363, 'lambda$executeRecursively$9', line(org_junit_platform_engine_support_hierarchical_node_test_task, 139), failure_6, non_target).
trace(trace_365, trace_364, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_6, non_target).
trace(trace_366, trace_365, 'executeRecursively', line(org_junit_platform_engine_support_hierarchical_node_test_task, 138), failure_6, non_target).
trace(trace_367, trace_366, 'execute', line(org_junit_platform_engine_support_hierarchical_node_test_task, 95), failure_6, non_target).
trace(trace_368, trace_367, 'forEach', line(java_util_array_list, 1511), failure_6, non_target).
trace(trace_369, trace_368, 'invokeAll', line(org_junit_platform_engine_support_hierarchical_same_thread_hierarchical_test_executor_service, 41), failure_6, non_target).
trace(trace_370, trace_369, 'lambda$executeRecursively$6', line(org_junit_platform_engine_support_hierarchical_node_test_task, 155), failure_6, non_target).
trace(trace_371, trace_370, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_6, non_target).
trace(trace_372, trace_371, 'lambda$executeRecursively$8', line(org_junit_platform_engine_support_hierarchical_node_test_task, 141), failure_6, non_target).
trace(trace_373, trace_372, 'around', line(org_junit_platform_engine_support_hierarchical_node, 137), failure_6, non_target).
trace(trace_374, trace_373, 'lambda$executeRecursively$9', line(org_junit_platform_engine_support_hierarchical_node_test_task, 139), failure_6, non_target).
trace(trace_375, trace_374, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_6, non_target).
trace(trace_376, trace_375, 'executeRecursively', line(org_junit_platform_engine_support_hierarchical_node_test_task, 138), failure_6, non_target).
trace(trace_377, trace_376, 'execute', line(org_junit_platform_engine_support_hierarchical_node_test_task, 95), failure_6, non_target).
trace(trace_378, trace_377, 'submit', line(org_junit_platform_engine_support_hierarchical_same_thread_hierarchical_test_executor_service, 35), failure_6, non_target).
trace(trace_379, trace_378, 'execute', line(org_junit_platform_engine_support_hierarchical_hierarchical_test_executor, 57), failure_6, non_target).
trace(trace_380, trace_379, 'execute', line(org_junit_platform_engine_support_hierarchical_hierarchical_test_engine, 54), failure_6, non_target).
trace(trace_381, trace_380, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 147), failure_6, non_target).
trace(trace_382, trace_381, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 127), failure_6, non_target).
trace(trace_383, trace_382, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 90), failure_6, non_target).
trace(trace_384, trace_383, 'lambda$execute$0', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 55), failure_6, non_target).
trace(trace_385, trace_384, 'withInterceptedStreams', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 102), failure_6, non_target).
trace(trace_386, trace_385, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 54), failure_6, non_target).
trace(trace_387, trace_386, 'execute', line(org_junit_platform_launcher_core_default_launcher, 114), failure_6, non_target).
trace(trace_388, trace_387, 'execute', line(org_junit_platform_launcher_core_default_launcher, 86), failure_6, non_target).
trace(trace_389, trace_388, 'execute', line(org_junit_platform_launcher_core_default_launcher_session_delegating_launcher, 86), failure_6, non_target).
trace(trace_390, trace_389, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit5_test_runner, 38), failure_6, non_target).
test_failure(failure_7, 'org.apache.commons.io.filefilter.FileFilterTest', 'testHidden').
trace(trace_391, failure_7, 'provider', line(java_nio_file_files, 105), failure_7, non_target).
trace(trace_392, trace_391, 'isHidden', line(java_nio_file_files, 1641), failure_7, non_target).
trace(trace_393, trace_392, m_accept_594, line(hidden_file_filter_1, 117), failure_7, target).
trace(trace_394, trace_393, m_get_410, line(abstract_file_filter_1, 122), failure_7, target).
trace(trace_395, trace_394, m_accept_594, line(hidden_file_filter_1, 117), failure_7, target).
trace(trace_396, trace_395, m_assert_filtering_425, line(abstract_filter_test_1, 73), failure_7, target).
trace(trace_397, trace_396, m_test_hidden_514, line(file_filter_test_1, 738), failure_7, target).
trace(trace_398, trace_397, 'invoke', line(jdk_internal_reflect_direct_method_handle_accessor, 104), failure_7, non_target).
trace(trace_399, trace_398, 'invoke', line(java_lang_reflect_method, 578), failure_7, non_target).
trace(trace_400, trace_399, 'invokeMethod', line(org_junit_platform_commons_util_reflection_utils, 727), failure_7, non_target).
trace(trace_401, trace_400, 'proceed', line(org_junit_jupiter_engine_execution_method_invocation, 60), failure_7, non_target).
trace(trace_402, trace_401, 'proceed', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain_validating_invocation, 131), failure_7, non_target).
trace(trace_403, trace_402, 'intercept', line(org_junit_jupiter_engine_extension_timeout_extension, 156), failure_7, non_target).
trace(trace_404, trace_403, 'interceptTestableMethod', line(org_junit_jupiter_engine_extension_timeout_extension, 147), failure_7, non_target).
trace(trace_405, trace_404, 'interceptTestMethod', line(org_junit_jupiter_engine_extension_timeout_extension, 86), failure_7, non_target).
trace(trace_406, trace_405, 'lambda$ofVoidMethod$0', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker_reflective_interceptor_call, 103), failure_7, non_target).
trace(trace_407, trace_406, 'lambda$invoke$0', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker, 93), failure_7, non_target).
trace(trace_408, trace_407, 'proceed', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain_intercepted_invocation, 106), failure_7, non_target).
trace(trace_409, trace_408, 'proceed', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain, 64), failure_7, non_target).
trace(trace_410, trace_409, 'chainAndInvoke', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain, 45), failure_7, non_target).
trace(trace_411, trace_410, 'invoke', line(org_junit_jupiter_engine_execution_invocation_interceptor_chain, 37), failure_7, non_target).
trace(trace_412, trace_411, 'invoke', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker, 92), failure_7, non_target).
trace(trace_413, trace_412, 'invoke', line(org_junit_jupiter_engine_execution_intercepting_executable_invoker, 86), failure_7, non_target).
trace(trace_414, trace_413, 'lambda$invokeTestMethod$7', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 217), failure_7, non_target).
trace(trace_415, trace_414, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_7, non_target).
trace(trace_416, trace_415, 'invokeTestMethod', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 213), failure_7, non_target).
trace(trace_417, trace_416, 'execute', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 138), failure_7, non_target).
trace(trace_418, trace_417, 'execute', line(org_junit_jupiter_engine_descriptor_test_method_test_descriptor, 68), failure_7, non_target).
trace(trace_419, trace_418, 'lambda$executeRecursively$6', line(org_junit_platform_engine_support_hierarchical_node_test_task, 151), failure_7, non_target).
trace(trace_420, trace_419, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_7, non_target).
trace(trace_421, trace_420, 'lambda$executeRecursively$8', line(org_junit_platform_engine_support_hierarchical_node_test_task, 141), failure_7, non_target).
trace(trace_422, trace_421, 'around', line(org_junit_platform_engine_support_hierarchical_node, 137), failure_7, non_target).
trace(trace_423, trace_422, 'lambda$executeRecursively$9', line(org_junit_platform_engine_support_hierarchical_node_test_task, 139), failure_7, non_target).
trace(trace_424, trace_423, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_7, non_target).
trace(trace_425, trace_424, 'executeRecursively', line(org_junit_platform_engine_support_hierarchical_node_test_task, 138), failure_7, non_target).
trace(trace_426, trace_425, 'execute', line(org_junit_platform_engine_support_hierarchical_node_test_task, 95), failure_7, non_target).
trace(trace_427, trace_426, 'forEach', line(java_util_array_list, 1511), failure_7, non_target).
trace(trace_428, trace_427, 'invokeAll', line(org_junit_platform_engine_support_hierarchical_same_thread_hierarchical_test_executor_service, 41), failure_7, non_target).
trace(trace_429, trace_428, 'lambda$executeRecursively$6', line(org_junit_platform_engine_support_hierarchical_node_test_task, 155), failure_7, non_target).
trace(trace_430, trace_429, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_7, non_target).
trace(trace_431, trace_430, 'lambda$executeRecursively$8', line(org_junit_platform_engine_support_hierarchical_node_test_task, 141), failure_7, non_target).
trace(trace_432, trace_431, 'around', line(org_junit_platform_engine_support_hierarchical_node, 137), failure_7, non_target).
trace(trace_433, trace_432, 'lambda$executeRecursively$9', line(org_junit_platform_engine_support_hierarchical_node_test_task, 139), failure_7, non_target).
trace(trace_434, trace_433, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_7, non_target).
trace(trace_435, trace_434, 'executeRecursively', line(org_junit_platform_engine_support_hierarchical_node_test_task, 138), failure_7, non_target).
trace(trace_436, trace_435, 'execute', line(org_junit_platform_engine_support_hierarchical_node_test_task, 95), failure_7, non_target).
trace(trace_437, trace_436, 'forEach', line(java_util_array_list, 1511), failure_7, non_target).
trace(trace_438, trace_437, 'invokeAll', line(org_junit_platform_engine_support_hierarchical_same_thread_hierarchical_test_executor_service, 41), failure_7, non_target).
trace(trace_439, trace_438, 'lambda$executeRecursively$6', line(org_junit_platform_engine_support_hierarchical_node_test_task, 155), failure_7, non_target).
trace(trace_440, trace_439, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_7, non_target).
trace(trace_441, trace_440, 'lambda$executeRecursively$8', line(org_junit_platform_engine_support_hierarchical_node_test_task, 141), failure_7, non_target).
trace(trace_442, trace_441, 'around', line(org_junit_platform_engine_support_hierarchical_node, 137), failure_7, non_target).
trace(trace_443, trace_442, 'lambda$executeRecursively$9', line(org_junit_platform_engine_support_hierarchical_node_test_task, 139), failure_7, non_target).
trace(trace_444, trace_443, 'execute', line(org_junit_platform_engine_support_hierarchical_throwable_collector, 73), failure_7, non_target).
trace(trace_445, trace_444, 'executeRecursively', line(org_junit_platform_engine_support_hierarchical_node_test_task, 138), failure_7, non_target).
trace(trace_446, trace_445, 'execute', line(org_junit_platform_engine_support_hierarchical_node_test_task, 95), failure_7, non_target).
trace(trace_447, trace_446, 'submit', line(org_junit_platform_engine_support_hierarchical_same_thread_hierarchical_test_executor_service, 35), failure_7, non_target).
trace(trace_448, trace_447, 'execute', line(org_junit_platform_engine_support_hierarchical_hierarchical_test_executor, 57), failure_7, non_target).
trace(trace_449, trace_448, 'execute', line(org_junit_platform_engine_support_hierarchical_hierarchical_test_engine, 54), failure_7, non_target).
trace(trace_450, trace_449, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 147), failure_7, non_target).
trace(trace_451, trace_450, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 127), failure_7, non_target).
trace(trace_452, trace_451, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 90), failure_7, non_target).
trace(trace_453, trace_452, 'lambda$execute$0', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 55), failure_7, non_target).
trace(trace_454, trace_453, 'withInterceptedStreams', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 102), failure_7, non_target).
trace(trace_455, trace_454, 'execute', line(org_junit_platform_launcher_core_engine_execution_orchestrator, 54), failure_7, non_target).
trace(trace_456, trace_455, 'execute', line(org_junit_platform_launcher_core_default_launcher, 114), failure_7, non_target).
trace(trace_457, trace_456, 'execute', line(org_junit_platform_launcher_core_default_launcher, 86), failure_7, non_target).
trace(trace_458, trace_457, 'execute', line(org_junit_platform_launcher_core_default_launcher_session_delegating_launcher, 86), failure_7, non_target).
trace(trace_459, trace_458, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit5_test_runner, 38), failure_7, non_target).



%%% End of Static Facts

%%% Values

val(p_file_746, null, line(abstract_filter_test_1, 50)).
val(p_path_749, null, line(abstract_filter_test_1, 73)).
val(p_file_774, null, line(can_read_file_filter_1, 95)).
val(p_file_779, null, line(can_write_file_filter_1, 83)).
val(p_file_789, null, line(empty_file_filter_1, 107)).
val(p_file_796, null, line(file_file_filter_1, 100)).
val(p_file_877, null, line(hidden_file_filter_1, 117)).
val(p_str_2_141, null, line(iocase_1, 174)).
val(p_file_899, null, line(name_file_filter_1, 166)).



%%% End of Facts
%%% Code Facts
:- style_check(-discontiguous).
%%% Classes
class(standard_line_separator_1, 'org.apache.commons.io.StandardLineSeparator').
class(path_utils_1, 'org.apache.commons.io.file.PathUtils').
class(can_write_file_filter_1, 'org.apache.commons.io.filefilter.CanWriteFileFilter').
class(iocase_1, 'org.apache.commons.io.IOCase').
class(ioutils_1, 'org.apache.commons.io.IOUtils').
class(directory_file_filter_1, 'org.apache.commons.io.filefilter.DirectoryFileFilter').
class(not_file_filter_1, 'org.apache.commons.io.filefilter.NotFileFilter').
class(iocase_test_1, 'org.apache.commons.io.IOCaseTest').
class(empty_file_filter_1, 'org.apache.commons.io.filefilter.EmptyFileFilter').
class(file_file_filter_1, 'org.apache.commons.io.filefilter.FileFileFilter').
class(name_file_filter_1, 'org.apache.commons.io.filefilter.NameFileFilter').
class(file_filter_utils_1, 'org.apache.commons.io.filefilter.FileFilterUtils').
class(file_system_1, 'org.apache.commons.io.FileSystem').
class(can_read_file_filter_1, 'org.apache.commons.io.filefilter.CanReadFileFilter').
class(hidden_file_filter_1, 'org.apache.commons.io.filefilter.HiddenFileFilter').
class(abstract_file_filter_1, 'org.apache.commons.io.filefilter.AbstractFileFilter').
class(abstract_filter_test_1, 'org.apache.commons.io.filefilter.AbstractFilterTest').
class(and_file_filter_1, 'org.apache.commons.io.filefilter.AndFileFilter').
class(test_utils_1, 'org.apache.commons.io.test.TestUtils').
class(filename_utils_1, 'org.apache.commons.io.FilenameUtils').
class(file_filter_test_1, 'org.apache.commons.io.filefilter.FileFilterTest').
class(iofile_filter_1, 'org.apache.commons.io.filefilter.IOFileFilter').

%%% Methods
%standard_line_separator_1 - org.apache.commons.io.StandardLineSeparator
method(m_standard_line_separator_294, range(standard_line_separator_1, 1428, 284, 47, 54)).
method(m_get_bytes_295, range(standard_line_separator_1, 1718, 317, 56, 64)).
method(m_get_string_123, range(standard_line_separator_1, 2041, 183, 66, 73)).
%path_utils_1 - org.apache.commons.io.file.PathUtils
method(m_relative_sorted_paths_296, range(path_utils_1, 3729, 2899, 102, 149)).
method(m_accumulate_297, range(path_utils_1, 8361, 756, 215, 226)).
method(m_clean_directory_298, range(path_utils_1, 9123, 426, 228, 237)).
method(m_clean_directory_299, range(path_utils_1, 9555, 598, 239, 250)).
method(m_compare_last_modified_time_to_300, range(path_utils_1, 10159, 665, 252, 264)).
method(m_copy_301, range(path_utils_1, 10830, 789, 266, 280)).
method(m_copy_directory_302, range(path_utils_1, 11625, 774, 282, 295)).
method(m_copy_file_303, range(path_utils_1, 12405, 573, 297, 310)).
method(m_copy_file_to_directory_304, range(path_utils_1, 12984, 615, 312, 324)).
method(m_copy_file_to_directory_305, range(path_utils_1, 13605, 699, 326, 340)).
method(m_count_directory_306, range(path_utils_1, 14310, 456, 342, 351)).
method(m_count_directory_as_big_integer_307, range(path_utils_1, 14772, 471, 353, 363)).
method(m_create_parent_directories_308, range(path_utils_1, 15249, 710, 365, 379)).
method(m_create_parent_directories_309, range(path_utils_1, 15965, 1107, 381, 402)).
method(m_current_310, range(path_utils_1, 17078, 190, 404, 413)).
method(m_delete_311, range(path_utils_1, 17274, 869, 415, 432)).
method(m_delete_312, range(path_utils_1, 18149, 1172, 434, 454)).
method(m_delete_313, range(path_utils_1, 19327, 1274, 456, 477)).
method(m_delete_directory_314, range(path_utils_1, 20607, 419, 479, 488)).
method(m_delete_directory_315, range(path_utils_1, 21032, 842, 490, 504)).
method(m_delete_directory_316, range(path_utils_1, 21880, 693, 506, 518)).
method(m_delete_file_317, range(path_utils_1, 22579, 462, 520, 530)).
method(m_delete_file_318, range(path_utils_1, 23047, 708, 532, 545)).
method(m_delete_file_319, range(path_utils_1, 23761, 2249, 547, 598)).
method(m_delete_on_exit_320, range(path_utils_1, 26016, 250, 600, 608)).
method(m_directory_and_file_content_equals_321, range(path_utils_1, 26272, 712, 610, 621)).
method(m_directory_and_file_content_equals_322, range(path_utils_1, 26990, 2188, 623, 665)).
method(m_directory_content_equals_323, range(path_utils_1, 29184, 696, 667, 678)).
method(m_directory_content_equals_324, range(path_utils_1, 29886, 1009, 680, 695)).
method(m_exists_325, range(path_utils_1, 30901, 212, 697, 700)).
method(m_file_content_equals_326, range(path_utils_1, 31119, 809, 702, 717)).
method(m_file_content_equals_327, range(path_utils_1, 31934, 2890, 719, 783)).
method(m_filter_328, range(path_utils_1, 34830, 1238, 785, 816)).
method(m_filter_paths_329, range(path_utils_1, 36074, 631, 818, 831)).
method(m_get_acl_entry_list_330, range(path_utils_1, 36711, 579, 833, 844)).
method(m_get_acl_file_attribute_view_331, range(path_utils_1, 37296, 529, 846, 856)).
method(m_get_dos_file_attribute_view_332, range(path_utils_1, 37831, 529, 858, 868)).
method(m_get_file_name_333, range(path_utils_1, 38366, 590, 870, 883)).
method(m_get_file_name_string_336, range(path_utils_1, 38962, 329, 885, 895)).
method(m_get_last_modified_file_time_338, range(path_utils_1, 39297, 720, 897, 911)).
method(m_get_last_modified_file_time_339, range(path_utils_1, 40023, 691, 913, 925)).
method(m_get_last_modified_file_time_340, range(path_utils_1, 40720, 520, 927, 938)).
method(m_get_last_modified_file_time_341, range(path_utils_1, 41246, 438, 940, 950)).
method(m_get_last_modified_file_time_342, range(path_utils_1, 41690, 557, 952, 963)).
method(m_get_last_modified_time_343, range(path_utils_1, 42253, 205, 965, 967)).
method(m_get_parent_344, range(path_utils_1, 42464, 109, 969, 971)).
method(m_get_posix_file_attribute_view_345, range(path_utils_1, 42579, 539, 973, 983)).
method(m_get_temp_directory_346, range(path_utils_1, 43124, 268, 985, 993)).
method(m_is_directory_347, range(path_utils_1, 43398, 949, 995, 1009)).
method(m_is_empty_348, range(path_utils_1, 44353, 397, 1011, 1020)).
method(m_is_empty_directory_349, range(path_utils_1, 44756, 879, 1022, 1036)).
method(m_is_empty_file_350, range(path_utils_1, 45641, 556, 1038, 1049)).
method(m_is_newer_351, range(path_utils_1, 46203, 750, 1051, 1065)).
method(m_is_newer_352, range(path_utils_1, 46959, 778, 1067, 1083)).
method(m_is_newer_353, range(path_utils_1, 47743, 698, 1085, 1098)).
method(m_is_newer_354, range(path_utils_1, 48447, 787, 1100, 1113)).
method(m_is_newer_355, range(path_utils_1, 49240, 580, 1115, 1126)).
method(m_is_older_356, range(path_utils_1, 49826, 779, 1128, 1144)).
method(m_is_older_357, range(path_utils_1, 50611, 699, 1146, 1159)).
method(m_is_older_358, range(path_utils_1, 51316, 789, 1161, 1174)).
method(m_is_older_359, range(path_utils_1, 52111, 573, 1176, 1187)).
method(m_is_posix_360, range(path_utils_1, 52690, 444, 1189, 1199)).
method(m_is_regular_file_361, range(path_utils_1, 53140, 965, 1201, 1215)).
method(m_new_directory_stream_362, range(path_utils_1, 54111, 739, 1217, 1231)).
method(m_new_output_stream_363, range(path_utils_1, 54856, 625, 1233, 1245)).
method(m_new_output_stream_364, range(path_utils_1, 55487, 633, 1247, 1254)).
method(m_no_follow_link_option_array_365, range(path_utils_1, 56126, 308, 1256, 1263)).
method(m_not_exists_366, range(path_utils_1, 56440, 165, 1265, 1267)).
method(m_override_read_only_367, range(path_utils_1, 56611, 523, 1269, 1280)).
method(m_read_attributes_368, range(path_utils_1, 57140, 918, 1282, 1300)).
method(m_read_basic_file_attributes_369, range(path_utils_1, 58064, 396, 1302, 1312)).
method(m_read_basic_file_attributes_370, range(path_utils_1, 58466, 479, 1314, 1324)).
method(m_read_basic_file_attributes_unchecked_371, range(path_utils_1, 58951, 476, 1326, 1337)).
method(m_read_dos_file_attributes_372, range(path_utils_1, 59433, 471, 1339, 1349)).
method(m_read_if_symbolic_link_373, range(path_utils_1, 59910, 185, 1351, 1353)).
method(m_read_os_file_attributes_374, range(path_utils_1, 60101, 610, 1355, 1366)).
method(m_read_posix_file_attributes_375, range(path_utils_1, 60717, 505, 1368, 1378)).
method(m_read_string_376, range(path_utils_1, 61228, 532, 1380, 1392)).
method(m_relativize_377, range(path_utils_1, 61766, 794, 1394, 1409)).
method(m_require_exists_378, range(path_utils_1, 62566, 951, 1411, 1427)).
method(m_set_dos_read_only_379, range(path_utils_1, 63523, 397, 1429, 1436)).
method(m_set_last_modified_time_380, range(path_utils_1, 63926, 705, 1438, 1451)).
method(m_set_posix_delete_permissions_381, range(path_utils_1, 64637, 1243, 1453, 1475)).
method(m_set_posix_permissions_382, range(path_utils_1, 65886, 1160, 1477, 1500)).
method(m_set_posix_read_only_file_383, range(path_utils_1, 67052, 1204, 1502, 1527)).
method(m_set_read_only_384, range(path_utils_1, 68262, 1541, 1529, 1567)).
method(m_size_of_385, range(path_utils_1, 69809, 1070, 1569, 1587)).
method(m_size_of_as_big_integer_386, range(path_utils_1, 70885, 914, 1589, 1603)).
method(m_size_of_directory_387, range(path_utils_1, 71805, 867, 1605, 1620)).
method(m_size_of_directory_as_big_integer_388, range(path_utils_1, 72678, 598, 1622, 1633)).
method(m_to_file_visit_option_set_389, range(path_utils_1, 73282, 401, 1635, 1643)).
method(m_touch_390, range(path_utils_1, 73689, 839, 1645, 1664)).
method(m_visit_file_tree_391, range(path_utils_1, 74534, 898, 1666, 1683)).
method(m_visit_file_tree_392, range(path_utils_1, 75438, 1012, 1685, 1703)).
method(m_visit_file_tree_393, range(path_utils_1, 76456, 807, 1705, 1720)).
method(m_visit_file_tree_394, range(path_utils_1, 77269, 698, 1722, 1736)).
method(m_wait_for_395, range(path_utils_1, 77973, 1613, 1738, 1776)).
method(m_walk_396, range(path_utils_1, 79592, 1333, 1778, 1799)).
method(m_with_posix_file_attributes_397, range(path_utils_1, 80931, 641, 1801, 1811)).
method(m_write_string_398, range(path_utils_1, 81578, 1026, 1813, 1832)).
method(m_path_utils_399, range(path_utils_1, 82610, 105, 1834, 1839)).
%can_write_file_filter_1 - org.apache.commons.io.filefilter.CanWriteFileFilter
method(m_can_write_file_filter_455, range(can_write_file_filter_1, 2387, 86, 69, 73)).
method(m_accept_456, range(can_write_file_filter_1, 2479, 288, 75, 84)).
method(m_accept_458, range(can_write_file_filter_1, 2773, 380, 86, 96)).
%iocase_1 - org.apache.commons.io.IOCase
method(m_for_name_79, range(iocase_1, 2578, 466, 71, 81)).
method(m_is_case_sensitive_80, range(iocase_1, 3050, 336, 83, 92)).
method(m_value_81, range(iocase_1, 3392, 403, 94, 104)).
method(m_iocase_82, range(iocase_1, 3947, 247, 112, 121)).
method(m_check_compare_to_83, range(iocase_1, 4200, 679, 123, 139)).
method(m_check_ends_with_84, range(iocase_1, 4885, 665, 141, 158)).
method(m_check_equals_85, range(iocase_1, 5556, 671, 160, 176)).
method(m_check_index_of_88, range(iocase_1, 6233, 1034, 178, 204)).
method(m_check_region_matches_89, range(iocase_1, 7273, 756, 206, 221)).
method(m_check_starts_with_90, range(iocase_1, 8035, 588, 223, 236)).
method(m_get_name_91, range(iocase_1, 8629, 153, 238, 245)).
method(m_is_case_sensitive_92, range(iocase_1, 8788, 187, 247, 254)).
method(m_read_resolve_93, range(iocase_1, 8981, 250, 256, 264)).
method(m_to_string_94, range(iocase_1, 9237, 190, 266, 274)).
%ioutils_1 - org.apache.commons.io.IOUtils
method(m_buffer_127, range(ioutils_1, 7574, 909, 219, 235)).
method(m_buffer_128, range(ioutils_1, 8489, 1008, 237, 254)).
method(m_buffer_129, range(ioutils_1, 9503, 929, 256, 272)).
method(m_buffer_130, range(ioutils_1, 10438, 1029, 274, 291)).
method(m_buffer_131, range(ioutils_1, 11473, 562, 293, 304)).
method(m_buffer_132, range(ioutils_1, 12041, 656, 306, 318)).
method(m_buffer_133, range(ioutils_1, 12703, 562, 320, 331)).
method(m_buffer_134, range(ioutils_1, 13271, 656, 333, 345)).
method(m_byte_array_125, range(ioutils_1, 13933, 270, 347, 355)).
method(m_byte_array_135, range(ioutils_1, 14209, 405, 357, 369)).
method(m_char_array_126, range(ioutils_1, 14620, 271, 371, 379)).
method(m_char_array_136, range(ioutils_1, 14897, 339, 381, 392)).
method(m_clear_137, range(ioutils_1, 15242, 437, 394, 407)).
method(m_close_138, range(ioutils_1, 15685, 372, 409, 420)).
method(m_close_139, range(ioutils_1, 16063, 371, 422, 431)).
method(m_close_140, range(ioutils_1, 16440, 674, 433, 451)).
method(m_close_141, range(ioutils_1, 17120, 286, 453, 463)).
method(m_close_q_142, range(ioutils_1, 17412, 217, 465, 472)).
method(m_close_quietly_143, range(ioutils_1, 17635, 1225, 474, 517)).
method(m_close_quietly_144, range(ioutils_1, 18866, 1863, 519, 569)).
method(m_close_quietly_145, range(ioutils_1, 20735, 668, 571, 588)).
method(m_close_quietly_146, range(ioutils_1, 21409, 970, 590, 621)).
method(m_close_quietly_147, range(ioutils_1, 22385, 529, 623, 637)).
method(m_close_quietly_148, range(ioutils_1, 22920, 983, 639, 671)).
method(m_close_quietly_149, range(ioutils_1, 23909, 943, 673, 704)).
method(m_close_quietly_150, range(ioutils_1, 24858, 903, 706, 737)).
method(m_close_quietly_151, range(ioutils_1, 25767, 954, 739, 770)).
method(m_close_quietly_152, range(ioutils_1, 26727, 925, 772, 803)).
method(m_close_quietly_153, range(ioutils_1, 27658, 524, 805, 819)).
method(m_close_quietly_154, range(ioutils_1, 28188, 912, 821, 851)).
method(m_consume_155, range(ioutils_1, 29106, 594, 853, 867)).
method(m_consume_156, range(ioutils_1, 29706, 574, 869, 883)).
method(m_content_equals_157, range(ioutils_1, 30286, 2154, 885, 944)).
method(m_content_equals_158, range(ioutils_1, 32481, 386, 947, 957)).
method(m_content_equals_159, range(ioutils_1, 32873, 2057, 959, 1015)).
method(m_content_equals_160, range(ioutils_1, 34971, 319, 1018, 1026)).
method(m_content_equals_ignore_eol_161, range(ioutils_1, 35331, 332, 1029, 1037)).
method(m_content_equals_ignore_eol_162, range(ioutils_1, 35669, 1006, 1039, 1063)).
method(m_copy_163, range(ioutils_1, 36681, 1185, 1065, 1087)).
method(m_copy_164, range(ioutils_1, 37872, 973, 1089, 1108)).
method(m_copy_165, range(ioutils_1, 38851, 878, 1110, 1132)).
method(m_copy_166, range(ioutils_1, 39735, 973, 1134, 1156)).
method(m_copy_167, range(ioutils_1, 40714, 1412, 1158, 1186)).
method(m_copy_168, range(ioutils_1, 42132, 1329, 1188, 1217)).
method(m_copy_169, range(ioutils_1, 43467, 1010, 1219, 1241)).
method(m_copy_170, range(ioutils_1, 44483, 905, 1243, 1267)).
method(m_copy_171, range(ioutils_1, 45394, 1023, 1269, 1296)).
method(m_copy_172, range(ioutils_1, 46423, 1254, 1298, 1328)).
method(m_copy_173, range(ioutils_1, 47683, 1560, 1330, 1363)).
method(m_copy_174, range(ioutils_1, 49249, 1074, 1365, 1391)).
method(m_copy_175, range(ioutils_1, 50329, 905, 1393, 1414)).
method(m_copy_176, range(ioutils_1, 51240, 919, 1416, 1437)).
method(m_copy_large_177, range(ioutils_1, 52165, 925, 1439, 1461)).
method(m_copy_large_178, range(ioutils_1, 53096, 1223, 1463, 1492)).
method(m_copy_large_179, range(ioutils_1, 54325, 1397, 1494, 1521)).
method(m_copy_large_180, range(ioutils_1, 55728, 2143, 1523, 1571)).
method(m_copy_large_181, range(ioutils_1, 57877, 778, 1573, 1592)).
method(m_copy_large_182, range(ioutils_1, 58661, 884, 1594, 1617)).
method(m_copy_large_183, range(ioutils_1, 59551, 1081, 1619, 1643)).
method(m_copy_large_184, range(ioutils_1, 60638, 1797, 1645, 1688)).
method(m_fill_0_185, range(ioutils_1, 62441, 239, 1690, 1699)).
method(m_fill_0_186, range(ioutils_1, 62686, 239, 1701, 1710)).
method(m_get_scratch_byte_array_187, range(ioutils_1, 62931, 287, 1712, 1719)).
method(m_get_scratch_byte_array_write_only_188, range(ioutils_1, 63224, 268, 1721, 1728)).
method(m_get_scratch_char_array_189, range(ioutils_1, 63498, 279, 1730, 1737)).
method(m_get_scratch_char_array_write_only_190, range(ioutils_1, 63783, 268, 1739, 1746)).
method(m_length_191, range(ioutils_1, 64057, 315, 1748, 1757)).
method(m_length_192, range(ioutils_1, 64378, 315, 1759, 1768)).
method(m_length_193, range(ioutils_1, 64699, 342, 1770, 1779)).
method(m_length_194, range(ioutils_1, 65047, 317, 1781, 1790)).
method(m_line_iterator_195, range(ioutils_1, 65370, 1359, 1792, 1825)).
method(m_line_iterator_196, range(ioutils_1, 66735, 1679, 1827, 1863)).
method(m_line_iterator_197, range(ioutils_1, 68420, 1107, 1865, 1896)).
method(m_read_198, range(ioutils_1, 69533, 625, 1898, 1912)).
method(m_read_199, range(ioutils_1, 70164, 907, 1914, 1935)).
method(m_read_200, range(ioutils_1, 71077, 1268, 1937, 1965)).
method(m_read_201, range(ioutils_1, 72351, 904, 1967, 1990)).
method(m_read_202, range(ioutils_1, 73261, 638, 1992, 2006)).
method(m_read_203, range(ioutils_1, 73905, 1284, 2008, 2038)).
method(m_read_fully_204, range(ioutils_1, 75195, 779, 2040, 2057)).
method(m_read_fully_205, range(ioutils_1, 75980, 1070, 2059, 2082)).
method(m_read_fully_206, range(ioutils_1, 77056, 904, 2084, 2103)).
method(m_read_fully_207, range(ioutils_1, 77966, 891, 2105, 2124)).
method(m_read_fully_208, range(ioutils_1, 78863, 780, 2126, 2142)).
method(m_read_fully_209, range(ioutils_1, 79649, 1071, 2144, 2166)).
method(m_read_lines_210, range(ioutils_1, 80726, 805, 2168, 2186)).
method(m_read_lines_211, range(ioutils_1, 81537, 818, 2188, 2205)).
method(m_read_lines_212, range(ioutils_1, 82361, 1307, 2207, 2231)).
method(m_read_lines_213, range(ioutils_1, 83674, 756, 2233, 2250)).
method(m_resource_to_byte_array_214, range(ioutils_1, 84436, 571, 2252, 2266)).
method(m_resource_to_byte_array_215, range(ioutils_1, 85013, 665, 2268, 2283)).
method(m_resource_to_string_216, range(ioutils_1, 85684, 716, 2285, 2300)).
method(m_resource_to_string_217, range(ioutils_1, 86406, 763, 2302, 2318)).
method(m_resource_to_url_218, range(ioutils_1, 87175, 475, 2320, 2333)).
method(m_resource_to_url_219, range(ioutils_1, 87656, 972, 2335, 2356)).
method(m_skip_220, range(ioutils_1, 88634, 1261, 2358, 2381)).
method(m_skip_221, range(ioutils_1, 89901, 2589, 2383, 2429)).
method(m_skip_222, range(ioutils_1, 92496, 1206, 2431, 2459)).
method(m_skip_223, range(ioutils_1, 93708, 1815, 2461, 2497)).
method(m_skip_fully_224, range(ioutils_1, 95529, 1264, 2499, 2524)).
method(m_skip_fully_225, range(ioutils_1, 96799, 1782, 2526, 2557)).
method(m_skip_fully_226, range(ioutils_1, 98587, 881, 2559, 2577)).
method(m_skip_fully_227, range(ioutils_1, 99474, 1228, 2579, 2604)).
method(m_to_buffered_input_stream_228, range(ioutils_1, 100708, 1014, 2606, 2632)).
method(m_to_buffered_input_stream_229, range(ioutils_1, 101728, 1079, 2634, 2661)).
method(m_to_buffered_reader_230, range(ioutils_1, 102813, 592, 2663, 2675)).
method(m_to_buffered_reader_231, range(ioutils_1, 103411, 686, 2677, 2690)).
method(m_to_byte_array_232, range(ioutils_1, 104103, 1197, 2692, 2713)).
method(m_to_byte_array_233, range(ioutils_1, 105306, 884, 2715, 2731)).
method(m_to_byte_array_234, range(ioutils_1, 106196, 1337, 2733, 2754)).
method(m_to_byte_array_235, range(ioutils_1, 107539, 1170, 2756, 2788)).
method(m_to_byte_array_236, range(ioutils_1, 108715, 716, 2790, 2807)).
method(m_to_byte_array_237, range(ioutils_1, 109437, 831, 2809, 2829)).
method(m_to_byte_array_238, range(ioutils_1, 110274, 1239, 2831, 2855)).
method(m_to_byte_array_239, range(ioutils_1, 111519, 623, 2857, 2873)).
method(m_to_byte_array_240, range(ioutils_1, 112148, 419, 2875, 2886)).
method(m_to_byte_array_241, range(ioutils_1, 112573, 525, 2888, 2901)).
method(m_to_byte_array_242, range(ioutils_1, 113104, 555, 2903, 2916)).
method(m_to_char_array_243, range(ioutils_1, 113665, 781, 2918, 2936)).
method(m_to_char_array_244, range(ioutils_1, 114452, 854, 2938, 2958)).
method(m_to_char_array_245, range(ioutils_1, 115312, 1281, 2960, 2984)).
method(m_to_char_array_246, range(ioutils_1, 116599, 646, 2986, 3003)).
method(m_to_input_stream_247, range(ioutils_1, 117251, 494, 3005, 3017)).
method(m_to_input_stream_248, range(ioutils_1, 117751, 470, 3019, 3030)).
method(m_to_input_stream_249, range(ioutils_1, 118227, 943, 3032, 3050)).
method(m_to_input_stream_250, range(ioutils_1, 119176, 470, 3052, 3064)).
method(m_to_input_stream_251, range(ioutils_1, 119652, 481, 3066, 3077)).
method(m_to_input_stream_252, range(ioutils_1, 120139, 945, 3079, 3097)).
method(m_to_string_253, range(ioutils_1, 121090, 531, 3099, 3112)).
method(m_to_string_254, range(ioutils_1, 121627, 647, 3114, 3129)).
method(m_to_string_255, range(ioutils_1, 122280, 718, 3131, 3148)).
method(m_to_string_256, range(ioutils_1, 123004, 815, 3150, 3170)).
method(m_to_string_257, range(ioutils_1, 123825, 1233, 3172, 3196)).
method(m_to_string_258, range(ioutils_1, 125064, 819, 3198, 3217)).
method(m_to_string_259, range(ioutils_1, 125889, 1075, 3219, 3242)).
method(m_to_string_260, range(ioutils_1, 126970, 631, 3244, 3261)).
method(m_to_string_261, range(ioutils_1, 127607, 435, 3263, 3275)).
method(m_to_string_262, range(ioutils_1, 128048, 452, 3277, 3288)).
method(m_to_string_263, range(ioutils_1, 128506, 777, 3290, 3304)).
method(m_to_string_264, range(ioutils_1, 129289, 435, 3306, 3318)).
method(m_to_string_265, range(ioutils_1, 129730, 435, 3320, 3331)).
method(m_to_string_266, range(ioutils_1, 130171, 777, 3333, 3347)).
method(m_write_267, range(ioutils_1, 130954, 554, 3349, 3364)).
method(m_write_268, range(ioutils_1, 131514, 746, 3366, 3384)).
method(m_write_269, range(ioutils_1, 132266, 798, 3386, 3405)).
method(m_write_270, range(ioutils_1, 133070, 1257, 3407, 3431)).
method(m_write_271, range(ioutils_1, 134333, 767, 3433, 3453)).
method(m_write_272, range(ioutils_1, 135106, 833, 3455, 3475)).
method(m_write_273, range(ioutils_1, 135945, 1210, 3477, 3502)).
method(m_write_274, range(ioutils_1, 137161, 522, 3504, 3518)).
method(m_write_275, range(ioutils_1, 137689, 778, 3520, 3539)).
method(m_write_276, range(ioutils_1, 138473, 789, 3541, 3560)).
method(m_write_277, range(ioutils_1, 139268, 1121, 3562, 3585)).
method(m_write_278, range(ioutils_1, 140395, 521, 3587, 3600)).
method(m_write_279, range(ioutils_1, 140922, 754, 3602, 3621)).
method(m_write_280, range(ioutils_1, 141682, 1085, 3623, 3645)).
method(m_write_281, range(ioutils_1, 142773, 1103, 3647, 3670)).
method(m_write_282, range(ioutils_1, 143882, 491, 3672, 3685)).
method(m_write_283, range(ioutils_1, 144379, 756, 3687, 3706)).
method(m_write_284, range(ioutils_1, 145141, 1271, 3708, 3735)).
method(m_write_285, range(ioutils_1, 146418, 618, 3737, 3753)).
method(m_write_chunked_286, range(ioutils_1, 147042, 1009, 3755, 3779)).
method(m_write_chunked_287, range(ioutils_1, 148057, 978, 3781, 3804)).
method(m_write_lines_288, range(ioutils_1, 149041, 954, 3806, 3823)).
method(m_write_lines_289, range(ioutils_1, 150001, 1553, 3825, 3862)).
method(m_write_lines_290, range(ioutils_1, 151560, 1434, 3864, 3887)).
method(m_write_lines_291, range(ioutils_1, 153000, 1018, 3889, 3914)).
method(m_writer_292, range(ioutils_1, 154024, 804, 3916, 3934)).
method(m_ioutils_293, range(ioutils_1, 154834, 177, 3936, 3942)).
%directory_file_filter_1 - org.apache.commons.io.filefilter.DirectoryFileFilter
method(m_directory_file_filter_460, range(directory_file_filter_1, 2889, 105, 85, 90)).
method(m_accept_461, range(directory_file_filter_1, 3000, 251, 92, 101)).
method(m_accept_462, range(directory_file_filter_1, 3257, 341, 103, 113)).
%not_file_filter_1 - org.apache.commons.io.filefilter.NotFileFilter
method(m_not_file_filter_598, range(not_file_filter_1, 1521, 342, 43, 52)).
method(m_accept_615, range(not_file_filter_1, 1869, 295, 54, 63)).
method(m_accept_616, range(not_file_filter_1, 2170, 359, 65, 75)).
method(m_accept_617, range(not_file_filter_1, 2535, 377, 77, 87)).
method(m_not_618, range(not_file_filter_1, 2918, 171, 89, 91)).
method(m_to_string_619, range(not_file_filter_1, 3095, 218, 93, 101)).
%iocase_test_1 - org.apache.commons.io.IOCaseTest
method(m_assert_0_95, range(iocase_test_1, 1499, 123, 41, 45)).
method(m_assert_0_96, range(iocase_test_1, 1628, 123, 47, 51)).
method(m_serialize_97, range(iocase_test_1, 1757, 483, 53, 63)).
method(m_test_check_compare_case_98, range(iocase_test_1, 2246, 721, 65, 78)).
method(m_test_check_compare_functionality_99, range(iocase_test_1, 2973, 785, 80, 92)).
method(m_test_check_ends_with_case_100, range(iocase_test_1, 3763, 457, 93, 103)).
method(m_test_check_ends_with_functionality_101, range(iocase_test_1, 4226, 843, 105, 120)).
method(m_test_check_equals_case_102, range(iocase_test_1, 5075, 449, 122, 132)).
method(m_test_check_equals_functionality_103, range(iocase_test_1, 5530, 819, 134, 149)).
method(m_test_check_index_of_case_106, range(iocase_test_1, 6355, 503, 151, 161)).
method(m_test_check_index_of_functionality_107, range(iocase_test_1, 6864, 2578, 163, 205)).
method(m_test_check_region_matches_case_108, range(iocase_test_1, 9448, 510, 207, 217)).
method(m_test_check_region_matches_functionality_109, range(iocase_test_1, 9964, 2032, 219, 247)).
method(m_test_check_starts_with_case_110, range(iocase_test_1, 12002, 471, 249, 259)).
method(m_test_check_starts_with_functionality_111, range(iocase_test_1, 12479, 869, 261, 276)).
method(m_test_for_name_112, range(iocase_test_1, 13354, 415, 278, 285)).
method(m_test_get_name_113, range(iocase_test_1, 13775, 231, 287, 292)).
method(m_test_get_scratch_byte_array_114, range(iocase_test_1, 14012, 226, 294, 300)).
method(m_test_get_scratch_byte_array_write_only_115, range(iocase_test_1, 14244, 244, 302, 308)).
method(m_test_get_scratch_char_array_116, range(iocase_test_1, 14494, 226, 310, 316)).
method(m_test_get_scratch_char_array_write_only_117, range(iocase_test_1, 14726, 244, 318, 324)).
method(m_test_is_case_sensitive_118, range(iocase_test_1, 14976, 232, 326, 331)).
method(m_test_is_case_sensitive_static_119, range(iocase_test_1, 15214, 257, 333, 338)).
method(m_test__serialization_120, range(iocase_test_1, 15477, 266, 340, 345)).
method(m_test_to_string_121, range(iocase_test_1, 15749, 235, 347, 352)).
%empty_file_filter_1 - org.apache.commons.io.filefilter.EmptyFileFilter
method(m_empty_file_filter_463, range(empty_file_filter_1, 3068, 83, 93, 97)).
method(m_accept_464, range(empty_file_filter_1, 3157, 448, 99, 112)).
method(m_accept_467, range(empty_file_filter_1, 3611, 654, 114, 131)).
%file_file_filter_1 - org.apache.commons.io.filefilter.FileFileFilter
method(m_file_file_filter_472, range(file_file_filter_1, 2753, 82, 86, 90)).
method(m_accept_473, range(file_file_filter_1, 2841, 237, 92, 101)).
method(m_accept_475, range(file_file_filter_1, 3084, 334, 103, 113)).
%name_file_filter_1 - org.apache.commons.io.filefilter.NameFileFilter
method(m_name_file_filter_600, range(name_file_filter_1, 2762, 376, 83, 92)).
method(m_name_file_filter_601, range(name_file_filter_1, 3144, 603, 94, 106)).
method(m_name_file_filter_572, range(name_file_filter_1, 3753, 300, 108, 116)).
method(m_name_file_filter_526, range(name_file_filter_1, 4059, 468, 118, 130)).
method(m_name_file_filter_574, range(name_file_filter_1, 4533, 482, 132, 143)).
method(m_name_file_filter_604, range(name_file_filter_1, 5021, 512, 145, 156)).
method(m_accept_606, range(name_file_filter_1, 5539, 260, 158, 167)).
method(m_accept_609, range(name_file_filter_1, 5805, 312, 169, 179)).
method(m_accept_610, range(name_file_filter_1, 6123, 364, 181, 191)).
method(m_accept_base_name_607, range(name_file_filter_1, 6493, 155, 193, 195)).
method(m_to_iocase_603, range(name_file_filter_1, 6654, 107, 197, 199)).
method(m_to_string_612, range(name_file_filter_1, 6767, 388, 201, 214)).
%file_filter_utils_1 - org.apache.commons.io.filefilter.FileFilterUtils
method(m_age_file_filter_545, range(file_filter_utils_1, 1918, 407, 54, 65)).
method(m_age_file_filter_546, range(file_filter_utils_1, 2331, 473, 67, 78)).
method(m_age_file_filter_547, range(file_filter_utils_1, 2810, 517, 80, 92)).
method(m_age_file_filter_548, range(file_filter_utils_1, 3333, 573, 94, 106)).
method(m_age_file_filter_549, range(file_filter_utils_1, 3912, 413, 108, 119)).
method(m_age_file_filter_550, range(file_filter_utils_1, 4331, 479, 121, 132)).
method(m_and_542, range(file_filter_utils_1, 4816, 480, 134, 147)).
method(m_and_file_filter_552, range(file_filter_utils_1, 5302, 510, 149, 162)).
method(m_as_file_filter_553, range(file_filter_utils_1, 5818, 367, 164, 174)).
method(m_as_file_filter_554, range(file_filter_utils_1, 6191, 375, 176, 186)).
method(m_directory_file_filter_543, range(file_filter_utils_1, 6572, 302, 188, 196)).
method(m_false_file_filter_555, range(file_filter_utils_1, 6880, 228, 198, 206)).
method(m_file_file_filter_556, range(file_filter_utils_1, 7114, 302, 208, 216)).
method(m_filter_557, range(file_filter_utils_1, 7422, 1129, 218, 246)).
method(m_filter_558, range(file_filter_utils_1, 8557, 1085, 248, 276)).
method(m_filter_files_559, range(file_filter_utils_1, 9648, 1076, 278, 300)).
method(m_filter_list_560, range(file_filter_utils_1, 10730, 1084, 302, 329)).
method(m_filter_list_561, range(file_filter_utils_1, 11820, 1165, 331, 360)).
method(m_filter_set_562, range(file_filter_utils_1, 12991, 1077, 362, 390)).
method(m_filter_set_563, range(file_filter_utils_1, 14074, 1141, 392, 422)).
method(m_magic_number_file_filter_564, range(file_filter_utils_1, 15221, 655, 424, 441)).
method(m_magic_number_file_filter_565, range(file_filter_utils_1, 15882, 870, 443, 462)).
method(m_magic_number_file_filter_566, range(file_filter_utils_1, 16758, 654, 464, 481)).
method(m_magic_number_file_filter_567, range(file_filter_utils_1, 17418, 863, 483, 502)).
method(m_make_cvsaware_568, range(file_filter_utils_1, 18287, 519, 504, 515)).
method(m_make_directory_only_569, range(file_filter_utils_1, 18812, 521, 517, 530)).
method(m_make_file_only_570, range(file_filter_utils_1, 19339, 498, 532, 545)).
method(m_make_svnaware_571, range(file_filter_utils_1, 19843, 481, 547, 558)).
method(m_name_file_filter_544, range(file_filter_utils_1, 20330, 318, 560, 569)).
method(m_name_file_filter_573, range(file_filter_utils_1, 20654, 445, 571, 582)).
method(m_not_file_filter_541, range(file_filter_utils_1, 21105, 310, 584, 593)).
method(m_or_575, range(file_filter_utils_1, 21421, 474, 595, 608)).
method(m_or_file_filter_576, range(file_filter_utils_1, 21901, 503, 610, 623)).
method(m_prefix_file_filter_577, range(file_filter_utils_1, 22410, 343, 625, 634)).
method(m_prefix_file_filter_578, range(file_filter_utils_1, 22759, 470, 636, 647)).
method(m_size_file_filter_579, range(file_filter_utils_1, 23235, 377, 649, 659)).
method(m_size_file_filter_580, range(file_filter_utils_1, 23618, 473, 661, 672)).
method(m_size_range_file_filter_581, range(file_filter_utils_1, 24097, 703, 674, 688)).
method(m_suffix_file_filter_582, range(file_filter_utils_1, 24806, 341, 690, 699)).
method(m_suffix_file_filter_583, range(file_filter_utils_1, 25153, 468, 701, 712)).
method(m_to_list_551, range(file_filter_utils_1, 25627, 464, 714, 725)).
method(m_true_file_filter_589, range(file_filter_utils_1, 26097, 221, 727, 735)).
method(m_file_filter_utils_590, range(file_filter_utils_1, 26324, 101, 737, 741)).
%file_system_1 - org.apache.commons.io.FileSystem
method(m_current_2, range(file_system_1, 4527, 359, 134, 150)).
method(m_get_current_3, range(file_system_1, 4892, 168, 152, 159)).
method(m_get_os_matches_name_1, range(file_system_1, 5066, 358, 161, 170)).
method(m_get_system_property_5, range(file_system_1, 5430, 905, 172, 194)).
method(m_index_of_7, range(file_system_1, 6341, 3002, 196, 267)).
method(m_is_os_name_match_4, range(file_system_1, 9349, 646, 269, 286)).
method(m_replace_10, range(file_system_1, 10001, 382, 288, 298)).
method(m_file_system_11, range(file_system_1, 10859, 1812, 312, 340)).
method(m_get_block_size_14, range(file_system_1, 12677, 212, 342, 350)).
method(m_get_illegal_file_name_chars_15, range(file_system_1, 12895, 423, 352, 363)).
method(m_get_illegal_file_name_code_points_16, range(file_system_1, 13324, 281, 365, 373)).
method(m_get_max_file_name_length_17, range(file_system_1, 13611, 235, 375, 382)).
method(m_get_max_path_length_18, range(file_system_1, 13852, 227, 384, 391)).
method(m_get_name_separator_19, range(file_system_1, 14085, 228, 393, 402)).
method(m_get_reserved_file_names_20, range(file_system_1, 14319, 205, 404, 411)).
method(m_is_case_preserving_21, range(file_system_1, 14530, 205, 413, 420)).
method(m_is_case_sensitive_22, range(file_system_1, 14741, 209, 422, 429)).
method(m_is_illegal_file_name_char_23, range(file_system_1, 14956, 394, 431, 440)).
method(m_is_legal_file_name_24, range(file_system_1, 15356, 855, 442, 459)).
method(m_is_reserved_file_name_25, range(file_system_1, 16217, 459, 461, 471)).
method(m_normalize_separators_26, range(file_system_1, 16682, 327, 473, 482)).
method(m_supports_drive_letter_27, range(file_system_1, 17015, 570, 484, 498)).
method(m_to_legal_file_name_28, range(file_system_1, 17591, 1424, 500, 521)).
method(m_trim_extension_29, range(file_system_1, 19021, 162, 523, 526)).
%can_read_file_filter_1 - org.apache.commons.io.filefilter.CanReadFileFilter
method(m_can_read_file_filter_448, range(can_read_file_filter_1, 2722, 85, 81, 85)).
method(m_accept_451, range(can_read_file_filter_1, 2813, 276, 87, 96)).
method(m_accept_453, range(can_read_file_filter_1, 3095, 369, 98, 108)).
%hidden_file_filter_1 - org.apache.commons.io.filefilter.HiddenFileFilter
method(m_hidden_file_filter_591, range(hidden_file_filter_1, 2919, 84, 89, 93)).
method(m_accept_592, range(hidden_file_filter_1, 3009, 288, 95, 105)).
method(m_accept_594, range(hidden_file_filter_1, 3303, 389, 107, 118)).
%abstract_file_filter_1 - org.apache.commons.io.filefilter.AbstractFileFilter
method(m_to_default_file_visit_result_400, range(abstract_file_filter_1, 1684, 155, 44, 46)).
method(m_abstract_file_filter_401, range(abstract_file_filter_1, 2055, 152, 58, 63)).
method(m_abstract_file_filter_402, range(abstract_file_filter_1, 2213, 344, 65, 75)).
method(m_accept_403, range(abstract_file_filter_1, 2563, 345, 77, 87)).
method(m_accept_404, range(abstract_file_filter_1, 2914, 418, 89, 100)).
method(m_append_406, range(abstract_file_filter_1, 3338, 240, 102, 109)).
method(m_append_407, range(abstract_file_filter_1, 3584, 240, 111, 118)).
method(m_get_410, range(abstract_file_filter_1, 3830, 194, 120, 126)).
method(m_handle_412, range(abstract_file_filter_1, 4030, 268, 128, 137)).
method(m_post_visit_directory_413, range(abstract_file_filter_1, 4304, 162, 139, 142)).
method(m_pre_visit_directory_414, range(abstract_file_filter_1, 4472, 175, 144, 147)).
method(m_to_file_visit_result_415, range(abstract_file_filter_1, 4653, 258, 149, 157)).
method(m_to_string_416, range(abstract_file_filter_1, 4917, 212, 159, 167)).
method(m_visit_file_419, range(abstract_file_filter_1, 5135, 169, 169, 172)).
method(m_visit_file_failed_420, range(abstract_file_filter_1, 5310, 160, 174, 177)).
%abstract_filter_test_1 - org.apache.commons.io.filefilter.AbstractFilterTest
method(m_assert_filtering_421, range(abstract_filter_test_1, 1537, 1494, 47, 67)).
method(m_assert_filtering_425, range(abstract_filter_test_1, 3037, 1516, 69, 88)).
method(m_assert_foo_bar_file_filtering_427, range(abstract_filter_test_1, 4559, 4939, 90, 176)).
method(m_equals_last_modified_428, range(abstract_filter_test_1, 9504, 195, 178, 180)).
%and_file_filter_1 - org.apache.commons.io.filefilter.AndFileFilter
method(m_and_file_filter_429, range(and_file_filter_1, 1937, 128, 53, 60)).
method(m_and_file_filter_430, range(and_file_filter_1, 2071, 280, 62, 69)).
method(m_and_file_filter_431, range(and_file_filter_1, 2357, 245, 71, 78)).
method(m_and_file_filter_433, range(and_file_filter_1, 2608, 311, 80, 89)).
method(m_and_file_filter_434, range(and_file_filter_1, 2925, 447, 91, 102)).
method(m_and_file_filter_436, range(and_file_filter_1, 3378, 360, 104, 113)).
method(m_accept_438, range(and_file_filter_1, 3744, 196, 115, 121)).
method(m_accept_439, range(and_file_filter_1, 3946, 221, 123, 129)).
method(m_accept_440, range(and_file_filter_1, 4173, 370, 131, 139)).
method(m_add_file_filter_435, range(and_file_filter_1, 4549, 195, 141, 147)).
method(m_add_file_filter_442, range(and_file_filter_1, 4750, 293, 149, 157)).
method(m_get_file_filters_443, range(and_file_filter_1, 5049, 164, 159, 165)).
method(m_is_empty_444, range(and_file_filter_1, 5219, 76, 167, 169)).
method(m_remove_file_filter_445, range(and_file_filter_1, 5301, 177, 171, 177)).
method(m_set_file_filters_446, range(and_file_filter_1, 5484, 203, 179, 186)).
method(m_to_string_447, range(and_file_filter_1, 5693, 394, 188, 201)).
%test_utils_1 - org.apache.commons.io.test.TestUtils
method(m_assert_equal_content_620, range(test_utils_1, 1735, 399, 48, 57)).
method(m_assert_equal_content_621, range(test_utils_1, 2140, 871, 59, 79)).
method(m_assert_equal_content_622, range(test_utils_1, 3017, 399, 81, 90)).
method(m_assert_equal_content_623, range(test_utils_1, 3422, 869, 92, 112)).
method(m_assert_equal_content_624, range(test_utils_1, 4297, 1271, 114, 143)).
method(m_check_file_625, range(test_utils_1, 5574, 226, 145, 149)).
method(m_check_write_626, range(test_utils_1, 5806, 279, 151, 157)).
method(m_check_write_627, range(test_utils_1, 6091, 275, 159, 165)).
method(m_create_file_628, range(test_utils_1, 6372, 418, 167, 174)).
method(m_create_file_629, range(test_utils_1, 6796, 410, 176, 183)).
method(m_create_line_based_file_630, range(test_utils_1, 7212, 552, 185, 194)).
method(m_delete_file_631, range(test_utils_1, 7770, 165, 196, 200)).
method(m_generate_test_data_632, range(test_utils_1, 7941, 282, 202, 206)).
method(m_generate_test_data_633, range(test_utils_1, 8229, 410, 208, 217)).
method(m_generate_test_data_487, range(test_utils_1, 8645, 315, 219, 225)).
method(m_new_file_635, range(test_utils_1, 8966, 440, 227, 237)).
method(m_sleep_636, range(test_utils_1, 9412, 530, 239, 250)).
method(m_sleep_quietly_637, range(test_utils_1, 9948, 337, 252, 263)).
method(m_test_utils_638, range(test_utils_1, 10291, 28, 265, 267)).
%filename_utils_1 - org.apache.commons.io.FilenameUtils
method(m_concat_32, range(filename_utils_1, 5173, 2818, 152, 221)).
method(m_directory_contains_33, range(filename_utils_1, 7997, 1498, 223, 257)).
method(m_do_get_full_path_34, range(filename_utils_1, 9501, 1077, 259, 290)).
method(m_do_get_path_35, range(filename_utils_1, 10584, 874, 292, 314)).
method(m_do_normalize_36, range(filename_utils_1, 11464, 3859, 316, 421)).
method(m_equals_37, range(filename_utils_1, 15329, 618, 423, 437)).
method(m_equals_38, range(filename_utils_1, 15953, 1128, 439, 466)).
method(m_equals_normalized_39, range(filename_utils_1, 17087, 648, 468, 482)).
method(m_equals_normalized_on_system_40, range(filename_utils_1, 17741, 731, 484, 500)).
method(m_equals_on_system_41, range(filename_utils_1, 18478, 661, 502, 516)).
method(m_flip_separator_13, range(filename_utils_1, 19145, 494, 518, 532)).
method(m_get_ads_critical_offset_42, range(filename_utils_1, 19645, 681, 534, 554)).
method(m_get_base_name_43, range(filename_utils_1, 20332, 906, 556, 578)).
method(m_get_extension_44, range(filename_utils_1, 21244, 1759, 580, 619)).
method(m_get_full_path_45, range(filename_utils_1, 23009, 1175, 621, 651)).
method(m_get_full_path_no_end_separator_46, range(filename_utils_1, 24190, 1225, 653, 684)).
method(m_get_name_47, range(filename_utils_1, 25421, 968, 686, 711)).
method(m_get_path_48, range(filename_utils_1, 26395, 1120, 713, 741)).
method(m_get_path_no_end_separator_49, range(filename_utils_1, 27521, 1187, 743, 772)).
method(m_get_prefix_50, range(filename_utils_1, 28714, 1931, 774, 819)).
method(m_get_prefix_length_51, range(filename_utils_1, 30651, 4337, 821, 923)).
method(m_index_of_extension_52, range(filename_utils_1, 34994, 2123, 925, 961)).
method(m_index_of_last_separator_53, range(filename_utils_1, 37123, 884, 963, 982)).
method(m_is_empty_54, range(filename_utils_1, 38013, 110, 984, 986)).
method(m_is_extension_55, range(filename_utils_1, 38129, 1041, 988, 1010)).
method(m_is_extension_56, range(filename_utils_1, 39176, 1003, 1012, 1034)).
method(m_is_extension_57, range(filename_utils_1, 40185, 1093, 1036, 1059)).
method(m_is_ipv4_address_58, range(filename_utils_1, 41284, 954, 1061, 1089)).
method(m_is_ipv6_address_59, range(filename_utils_1, 42342, 2661, 1092, 1156)).
method(m_is_rfc3986host_name_60, range(filename_utils_1, 45009, 796, 1158, 1178)).
method(m_is_separator_61, range(filename_utils_1, 45811, 293, 1180, 1188)).
method(m_is_system_windows_62, range(filename_utils_1, 46110, 224, 1190, 1197)).
method(m_is_valid_host_name_63, range(filename_utils_1, 46340, 588, 1199, 1213)).
method(m_normalize_64, range(filename_utils_1, 46934, 1982, 1215, 1258)).
method(m_normalize_65, range(filename_utils_1, 48922, 2195, 1260, 1307)).
method(m_normalize_no_end_separator_66, range(filename_utils_1, 51123, 2041, 1309, 1353)).
method(m_normalize_no_end_separator_67, range(filename_utils_1, 53170, 2153, 1355, 1401)).
method(m_remove_extension_68, range(filename_utils_1, 55329, 1032, 1403, 1432)).
method(m_require_non_null_chars_69, range(filename_utils_1, 56367, 702, 1434, 1449)).
method(m_separators_to_system_70, range(filename_utils_1, 57075, 301, 1451, 1459)).
method(m_separators_to_unix_71, range(filename_utils_1, 57382, 303, 1461, 1469)).
method(m_separators_to_windows_72, range(filename_utils_1, 57691, 311, 1471, 1479)).
method(m_split_on_tokens_73, range(filename_utils_1, 58008, 1444, 1481, 1522)).
method(m_to_separator_74, range(filename_utils_1, 59458, 323, 1524, 1532)).
method(m_wildcard_match_75, range(filename_utils_1, 59787, 1168, 1534, 1558)).
method(m_wildcard_match_76, range(filename_utils_1, 60961, 3518, 1560, 1650)).
method(m_wildcard_match_on_system_77, range(filename_utils_1, 64485, 1207, 1652, 1676)).
method(m_filename_utils_78, range(filename_utils_1, 65698, 114, 1678, 1682)).
%file_filter_test_1 - org.apache.commons.io.filefilter.FileFilterTest
method(m_test_age_filter_476, range(file_filter_test_1, 2269, 4441, 61, 154)).
method(m_test_and_477, range(file_filter_test_1, 6716, 521, 156, 164)).
method(m_test_and2_478, range(file_filter_test_1, 7243, 1085, 166, 182)).
method(m_test_and_array_479, range(file_filter_test_1, 8334, 848, 184, 196)).
method(m_test_can_execute_480, range(file_filter_test_1, 9188, 1274, 198, 217)).
method(m_test_can_read_481, range(file_filter_test_1, 10468, 1515, 219, 243)).
method(m_test_can_write_489, range(file_filter_test_1, 11989, 1396, 245, 267)).
method(m_test_delegate_file_filter_490, range(file_filter_test_1, 13391, 757, 269, 284)).
method(m_test_delegation_491, range(file_filter_test_1, 14154, 273, 286, 290)).
method(m_test_deprecated_wildcard_492, range(file_filter_test_1, 14433, 4210, 292, 370)).
method(m_test_directory_493, range(file_filter_test_1, 18649, 1227, 372, 397)).
method(m_test_empty_494, range(file_filter_test_1, 19882, 2696, 399, 449)).
method(m_test_ensure_test_coverage_496, range(file_filter_test_1, 22584, 127, 451, 454)).
method(m_test_false_497, range(file_filter_test_1, 22717, 778, 456, 469)).
method(m_test_file_equals_filter_498, range(file_filter_test_1, 23501, 208, 471, 475)).
method(m_test_file_filter_utils_and_499, range(file_filter_test_1, 23715, 629, 477, 485)).
method(m_test_file_filter_utils_or_500, range(file_filter_test_1, 24350, 627, 487, 496)).
method(m_test_files_501, range(file_filter_test_1, 24983, 1075, 498, 519)).
method(m_test_filter_array_from_list_502, range(file_filter_test_1, 26239, 508, 525, 537)).
method(m_test_filter_array__iofile_filter_503, range(file_filter_test_1, 26917, 451, 543, 554)).
method(m_test_filter_array__path_visitor_file_filter__file_exists_no_504, range(file_filter_test_1, 27538, 488, 560, 571)).
method(m_test_filter_array__path_visitor_file_filter__file_exists_yes_505, range(file_filter_test_1, 28196, 556, 577, 589)).
method(m_test_filter_files_array_null_parameters_506, range(file_filter_test_1, 28886, 565, 594, 605)).
method(m_test_filter_list_507, range(file_filter_test_1, 29636, 527, 611, 623)).
method(m_test_filter_list_from_array_508, range(file_filter_test_1, 30337, 476, 629, 640)).
method(m_test_filter_list_null_parameters_509, range(file_filter_test_1, 31016, 569, 646, 657)).
method(m_test_filter_paths_array_null_parameters_510, range(file_filter_test_1, 31684, 571, 662, 673)).
method(m_test_filter_set_511, range(file_filter_test_1, 32438, 535, 679, 691)).
method(m_test_filter_set_from_array_512, range(file_filter_test_1, 33145, 470, 697, 708)).
method(m_test_filter_set_null_parameters_513, range(file_filter_test_1, 33816, 471, 714, 723)).
method(m_test_hidden_514, range(file_filter_test_1, 34293, 1077, 725, 742)).
method(m_test_magic_number_file_filter_bytes_516, range(file_filter_test_1, 35376, 2085, 744, 788)).
method(m_test_magic_number_file_filter_bytes_offset_517, range(file_filter_test_1, 37467, 1498, 790, 823)).
method(m_test_magic_number_file_filter_string_518, range(file_filter_test_1, 38971, 1314, 825, 854)).
method(m_test_magic_number_file_filter_string_offset_519, range(file_filter_test_1, 40291, 1500, 856, 889)).
method(m_test_magic_number_file_filter_validation_520, range(file_filter_test_1, 41797, 671, 891, 899)).
method(m_test_make_cvsaware_521, range(file_filter_test_1, 42474, 1876, 901, 941)).
method(m_test_make_directory_only_522, range(file_filter_test_1, 44356, 1409, 943, 979)).
method(m_test_make_file_only_523, range(file_filter_test_1, 45850, 1388, 982, 1018)).
method(m_test_make_svnaware_524, range(file_filter_test_1, 47244, 1890, 1020, 1060)).
method(m_test_name_filter_525, range(file_filter_test_1, 49140, 286, 1062, 1068)).
method(m_test_name_filter_null_argument_527, range(file_filter_test_1, 49432, 423, 1070, 1076)).
method(m_test_name_filter_null_array_argument_528, range(file_filter_test_1, 49861, 156, 1078, 1081)).
method(m_test_name_filter_null_list_argument_529, range(file_filter_test_1, 50023, 184, 1083, 1087)).
method(m_test_negate_530, range(file_filter_test_1, 50213, 480, 1089, 1097)).
method(m_test_null_filters_531, range(file_filter_test_1, 50699, 255, 1099, 1103)).
method(m_test_or_532, range(file_filter_test_1, 50960, 2400, 1105, 1150)).
method(m_test_path_equals_filter_533, range(file_filter_test_1, 53366, 210, 1152, 1156)).
method(m_test_prefix_534, range(file_filter_test_1, 53582, 3228, 1158, 1220)).
method(m_test_prefix_case_insensitive_535, range(file_filter_test_1, 56816, 2147, 1222, 1255)).
method(m_test_size_filter_on_files_536, range(file_filter_test_1, 58969, 2431, 1257, 1302)).
method(m_test_size_filter_on_paths_537, range(file_filter_test_1, 61406, 2373, 1304, 1349)).
method(m_test_suffix_538, range(file_filter_test_1, 63785, 2941, 1351, 1406)).
method(m_test_suffix_case_insensitive_539, range(file_filter_test_1, 66732, 1894, 1408, 1440)).
method(m_test_true_540, range(file_filter_test_1, 68632, 789, 1442, 1457)).
%iofile_filter_1 - org.apache.commons.io.filefilter.IOFileFilter
method(m_accept_423, range(iofile_filter_1, 1428, 279, 41, 51)).
method(m_accept_596, range(iofile_filter_1, 1713, 368, 53, 64)).
method(m_accept_426, range(iofile_filter_1, 2087, 404, 66, 76)).
method(m_and_450, range(iofile_filter_1, 2497, 288, 78, 87)).
method(m_matches_597, range(iofile_filter_1, 2791, 317, 89, 99)).
method(m_negate_449, range(iofile_filter_1, 3114, 204, 101, 109)).
method(m_or_599, range(iofile_filter_1, 3324, 284, 111, 120)).

%%% Blocks
%standard_line_separator_1 - org.apache.commons.io.StandardLineSeparator
block(standard_line_separator_1_block1, block, standard_line_separator_1_code7, body, range(standard_line_separator_1, 1620, 92, 52, 54)).
block(standard_line_separator_1_block2, block, standard_line_separator_1_code11, body, range(standard_line_separator_1, 2187, 37, 71, 73)).
%path_utils_1 - org.apache.commons.io.file.PathUtils
block(path_utils_1_block1, block, path_utils_1_code90, body, range(path_utils_1, 38810, 146, 880, 883)).
block(path_utils_1_block2, block, path_utils_1_code94, body, range(path_utils_1, 39234, 57, 893, 895)).
%can_write_file_filter_1 - org.apache.commons.io.filefilter.CanWriteFileFilter
block(can_write_file_filter_1_block1, block, can_write_file_filter_1_code16, body, range(can_write_file_filter_1, 2466, 7, 72, 73)).
block(can_write_file_filter_1_block2, block, can_write_file_filter_1_code18, body, range(can_write_file_filter_1, 2728, 39, 82, 84)).
block(can_write_file_filter_1_block3, block, can_write_file_filter_1_code19, body, range(can_write_file_filter_1, 3088, 65, 94, 96)).
%iocase_1 - org.apache.commons.io.IOCase
block(iocase_1_block1, block, iocase_1_code7, body, range(iocase_1, 3735, 60, 102, 104)).
block(iocase_1_block2, block, iocase_1_code8, body, range(iocase_1, 4125, 69, 118, 121)).
block(iocase_1_block3, block, iocase_1_code15, body, range(iocase_1, 6052, 175, 172, 176)).
%ioutils_1 - org.apache.commons.io.IOUtils
block(ioutils_1_block1, block, ioutils_1_code71, body, range(ioutils_1, 14149, 54, 353, 355)).
block(ioutils_1_block2, block, ioutils_1_code72, body, range(ioutils_1, 14576, 38, 367, 369)).
block(ioutils_1_block3, block, ioutils_1_code76, body, range(ioutils_1, 14837, 54, 377, 379)).
block(ioutils_1_block4, block, ioutils_1_code77, body, range(ioutils_1, 15198, 38, 390, 392)).
block(ioutils_1_block5, block, ioutils_1_code81, body, range(ioutils_1, 65308, 56, 1788, 1790)).
%directory_file_filter_1 - org.apache.commons.io.filefilter.DirectoryFileFilter
block(directory_file_filter_1_block1, block, directory_file_filter_1_code16, body, range(directory_file_filter_1, 2969, 25, 88, 90)).
%not_file_filter_1 - org.apache.commons.io.filefilter.NotFileFilter
block(not_file_filter_1_block1, block, not_file_filter_1_code3, body, range(not_file_filter_1, 1776, 87, 49, 52)).
%iocase_test_1 - org.apache.commons.io.IOCaseTest
block(iocase_test_1_block1, block, iocase_test_1_code10, body, range(iocase_test_1, 5585, 764, 135, 149)).
%empty_file_filter_1 - org.apache.commons.io.filefilter.EmptyFileFilter
block(empty_file_filter_1_block1, block, empty_file_filter_1_code16, body, range(empty_file_filter_1, 3144, 7, 96, 97)).
block(empty_file_filter_1_block2, block, empty_file_filter_1_code18, body, range(empty_file_filter_1, 3421, 184, 106, 112)).
block(empty_file_filter_1_block3, block, empty_file_filter_1_stmt1, then_statement, range(empty_file_filter_1, 3455, 109, 107, 110)).
block(empty_file_filter_1_block4, block, empty_file_filter_1_code24, body, range(empty_file_filter_1, 3941, 324, 122, 131)).
block(empty_file_filter_1_block5, block, empty_file_filter_1_expr8, body, range(empty_file_filter_1, 3968, 289, 123, 130)).
block(empty_file_filter_1_block6, block, empty_file_filter_1_stmt5, then_statement, range(empty_file_filter_1, 4011, 175, 124, 128)).
block(empty_file_filter_1_block7, block, empty_file_filter_1_stmt6, body, range(empty_file_filter_1, 4074, 98, 125, 127)).
%file_file_filter_1 - org.apache.commons.io.filefilter.FileFileFilter
block(file_file_filter_1_block1, block, file_file_filter_1_code16, body, range(file_file_filter_1, 2828, 7, 89, 90)).
block(file_file_filter_1_block2, block, file_file_filter_1_code18, body, range(file_file_filter_1, 3041, 37, 99, 101)).
%name_file_filter_1 - org.apache.commons.io.filefilter.NameFileFilter
block(name_file_filter_1_block1, block, name_file_filter_1_code3, body, range(name_file_filter_1, 3104, 34, 90, 92)).
block(name_file_filter_1_block2, block, name_file_filter_1_code4, body, range(name_file_filter_1, 3596, 151, 102, 106)).
block(name_file_filter_1_block3, block, name_file_filter_1_code14, body, range(name_file_filter_1, 4008, 45, 114, 116)).
block(name_file_filter_1_block4, block, name_file_filter_1_code15, body, range(name_file_filter_1, 4481, 46, 128, 130)).
block(name_file_filter_1_block5, block, name_file_filter_1_code16, body, range(name_file_filter_1, 4880, 135, 139, 143)).
block(name_file_filter_1_block6, block, name_file_filter_1_code27, body, range(name_file_filter_1, 5402, 131, 152, 156)).
block(name_file_filter_1_block7, block, name_file_filter_1_code37, body, range(name_file_filter_1, 5745, 54, 165, 167)).
block(name_file_filter_1_block8, block, name_file_filter_1_code38, body, range(name_file_filter_1, 6395, 92, 189, 191)).
block(name_file_filter_1_block9, block, name_file_filter_1_code39, body, range(name_file_filter_1, 6547, 101, 193, 195)).
block(name_file_filter_1_block10, block, name_file_filter_1_code41, body, range(name_file_filter_1, 6699, 62, 197, 199)).
block(name_file_filter_1_block11, block, name_file_filter_1_code42, body, range(name_file_filter_1, 6928, 227, 207, 214)).
%file_filter_utils_1 - org.apache.commons.io.filefilter.FileFilterUtils
block(file_filter_utils_1_block1, block, file_filter_utils_1_code15, body, range(file_filter_utils_1, 5238, 58, 145, 147)).
block(file_filter_utils_1_block2, block, file_filter_utils_1_code17, body, range(file_filter_utils_1, 6821, 53, 194, 196)).
block(file_filter_utils_1_block3, block, file_filter_utils_1_code18, body, range(file_filter_utils_1, 20600, 48, 567, 569)).
block(file_filter_utils_1_block4, block, file_filter_utils_1_code20, body, range(file_filter_utils_1, 21043, 56, 580, 582)).
block(file_filter_utils_1_block5, block, file_filter_utils_1_code22, body, range(file_filter_utils_1, 21376, 39, 591, 593)).
block(file_filter_utils_1_block6, block, file_filter_utils_1_code23, body, range(file_filter_utils_1, 25956, 135, 723, 725)).
%file_system_1 - org.apache.commons.io.FileSystem
block(file_system_1_block1, block, file_system_1_code44, body, range(file_system_1, 4662, 224, 139, 150)).
block(file_system_1_block2, block, file_system_1_stmt1, then_statement, range(file_system_1, 4689, 37, 140, 142)).
block(file_system_1_block3, block, file_system_1_code45, body, range(file_system_1, 5029, 31, 157, 159)).
block(file_system_1_block4, block, file_system_1_code46, body, range(file_system_1, 5343, 81, 168, 170)).
block(file_system_1_block5, block, file_system_1_code47, body, range(file_system_1, 5941, 394, 185, 194)).
block(file_system_1_block6, block, file_system_1_stmt5, body, range(file_system_1, 5955, 60, 186, 188)).
block(file_system_1_block7, block, file_system_1_code48, body, range(file_system_1, 9824, 171, 281, 286)).
block(file_system_1_block8, block, file_system_1_stmt7, then_statement, range(file_system_1, 9854, 37, 282, 284)).
block(file_system_1_block9, block, file_system_1_code49, body, range(file_system_1, 11993, 678, 328, 340)).
block(file_system_1_block10, block, file_system_1_code64, body, range(file_system_1, 14913, 37, 427, 429)).
%can_read_file_filter_1 - org.apache.commons.io.filefilter.CanReadFileFilter
block(can_read_file_filter_1_block1, block, can_read_file_filter_1_code22, body, range(can_read_file_filter_1, 2800, 7, 84, 85)).
block(can_read_file_filter_1_block2, block, can_read_file_filter_1_code24, body, range(can_read_file_filter_1, 3051, 38, 94, 96)).
block(can_read_file_filter_1_block3, block, can_read_file_filter_1_code25, body, range(can_read_file_filter_1, 3399, 65, 106, 108)).
%hidden_file_filter_1 - org.apache.commons.io.filefilter.HiddenFileFilter
block(hidden_file_filter_1_block1, block, hidden_file_filter_1_code16, body, range(hidden_file_filter_1, 2996, 7, 92, 93)).
block(hidden_file_filter_1_block2, block, hidden_file_filter_1_code18, body, range(hidden_file_filter_1, 3258, 39, 103, 105)).
block(hidden_file_filter_1_block3, block, hidden_file_filter_1_code19, body, range(hidden_file_filter_1, 3618, 74, 116, 118)).
%abstract_file_filter_1 - org.apache.commons.io.filefilter.AbstractFileFilter
block(abstract_file_filter_1_block1, block, abstract_file_filter_1_code3, body, range(abstract_file_filter_1, 1754, 85, 44, 46)).
block(abstract_file_filter_1_block2, block, abstract_file_filter_1_code4, body, range(abstract_file_filter_1, 2133, 74, 61, 63)).
block(abstract_file_filter_1_block3, block, abstract_file_filter_1_code5, body, range(abstract_file_filter_1, 2482, 75, 72, 75)).
block(abstract_file_filter_1_block4, block, abstract_file_filter_1_code13, body, range(abstract_file_filter_1, 3235, 97, 97, 100)).
block(abstract_file_filter_1_block5, block, abstract_file_filter_1_code15, body, range(abstract_file_filter_1, 3646, 178, 111, 118)).
block(abstract_file_filter_1_block6, block, abstract_file_filter_1_stmt7, body, range(abstract_file_filter_1, 3695, 123, 112, 117)).
block(abstract_file_filter_1_block7, block, abstract_file_filter_1_stmt8, then_statement, range(abstract_file_filter_1, 3720, 51, 113, 115)).
block(abstract_file_filter_1_block8, block, abstract_file_filter_1_code18, body, range(abstract_file_filter_1, 3894, 130, 120, 126)).
block(abstract_file_filter_1_block9, block, abstract_file_filter_1_stmt11, body, range(abstract_file_filter_1, 3908, 46, 121, 123)).
block(abstract_file_filter_1_block10, block, abstract_file_filter_1_code19, body, range(abstract_file_filter_1, 4859, 52, 155, 157)).
block(abstract_file_filter_1_block11, block, abstract_file_filter_1_code20, body, range(abstract_file_filter_1, 5079, 50, 165, 167)).
%abstract_filter_test_1 - org.apache.commons.io.filefilter.AbstractFilterTest
block(abstract_filter_test_1_block1, block, abstract_filter_test_1_code3, body, range(abstract_filter_test_1, 1645, 1386, 47, 67)).
block(abstract_filter_test_1_block2, block, abstract_filter_test_1_code4, body, range(abstract_filter_test_1, 3126, 1427, 69, 88)).
%and_file_filter_1 - org.apache.commons.io.filefilter.AndFileFilter
block(and_file_filter_1_block1, block, and_file_filter_1_code3, body, range(and_file_filter_1, 2265, 86, 67, 69)).
block(and_file_filter_1_block2, block, and_file_filter_1_code10, body, range(and_file_filter_1, 2547, 55, 76, 78)).
block(and_file_filter_1_block3, block, and_file_filter_1_code13, body, range(and_file_filter_1, 3284, 88, 98, 102)).
block(and_file_filter_1_block4, block, and_file_filter_1_code14, body, range(and_file_filter_1, 3648, 90, 111, 113)).
block(and_file_filter_1_block5, block, and_file_filter_1_code17, body, range(and_file_filter_1, 4657, 87, 145, 147)).
%test_utils_1 - org.apache.commons.io.test.TestUtils
block(test_utils_1_block1, block, test_utils_1_code3, body, range(test_utils_1, 8741, 219, 219, 225)).
block(test_utils_1_block2, block, test_utils_1_stmt1, body, range(test_utils_1, 8782, 172, 220, 224)).
%filename_utils_1 - org.apache.commons.io.FilenameUtils
block(filename_utils_1_block1, block, filename_utils_1_code41, body, range(filename_utils_1, 19380, 259, 524, 532)).
block(filename_utils_1_block2, block, filename_utils_1_stmt1, then_statement, range(filename_utils_1, 19421, 54, 525, 527)).
block(filename_utils_1_block3, block, filename_utils_1_stmt3, then_statement, range(filename_utils_1, 19518, 51, 528, 530)).
%file_filter_test_1 - org.apache.commons.io.filefilter.FileFilterTest
block(file_filter_test_1_block1, block, file_filter_test_1_code5, body, range(file_filter_test_1, 10521, 1462, 220, 243)).
block(file_filter_test_1_block2, block, file_filter_test_1_stmt3, then_statement, range(file_filter_test_1, 10716, 111, 223, 225)).
block(file_filter_test_1_block3, block, file_filter_test_1_stmt4, body, range(file_filter_test_1, 10943, 63, 226, 228)).
block(file_filter_test_1_block4, block, file_filter_test_1_code17, body, range(file_filter_test_1, 12043, 1342, 246, 267)).
block(file_filter_test_1_block5, block, file_filter_test_1_stmt11, then_statement, range(file_filter_test_1, 12238, 111, 249, 251)).
block(file_filter_test_1_block6, block, file_filter_test_1_stmt12, body, range(file_filter_test_1, 12465, 63, 252, 254)).
block(file_filter_test_1_block7, block, file_filter_test_1_code29, body, range(file_filter_test_1, 19933, 2645, 400, 449)).
block(file_filter_test_1_block8, block, file_filter_test_1_code38, body, range(file_filter_test_1, 25036, 1022, 499, 519)).
block(file_filter_test_1_block9, block, file_filter_test_1_code43, body, range(file_filter_test_1, 34347, 1023, 726, 742)).
block(file_filter_test_1_block10, block, file_filter_test_1_stmt28, then_statement, range(file_filter_test_1, 34503, 395, 729, 734)).
block(file_filter_test_1_block11, block, file_filter_test_1_code55, body, range(file_filter_test_1, 49198, 228, 1063, 1068)).
%iofile_filter_1 - org.apache.commons.io.filefilter.IOFileFilter
block(iofile_filter_1_block1, block, iofile_filter_1_code8, body, range(iofile_filter_1, 2726, 59, 85, 87)).
block(iofile_filter_1_block2, block, iofile_filter_1_code10, body, range(iofile_filter_1, 3037, 71, 97, 99)).
block(iofile_filter_1_block3, block, iofile_filter_1_code11, body, range(iofile_filter_1, 3271, 47, 107, 109)).

%%% Statements
%standard_line_separator_1 - org.apache.commons.io.StandardLineSeparator
stmt(standard_line_separator_1_stmt1, expression_statement, standard_line_separator_1_block1, (statements, 0), range(standard_line_separator_1, 1630, 76, 53, 53)).
stmt(standard_line_separator_1_stmt2, return_statement, standard_line_separator_1_block2, (statements, 0), range(standard_line_separator_1, 2197, 21, 72, 72)).
%path_utils_1 - org.apache.commons.io.file.PathUtils
stmt(path_utils_1_stmt1, variable_declaration_statement, path_utils_1_block1, (statements, 0), range(path_utils_1, 38820, 63, 881, 881)).
stmt(path_utils_1_stmt2, return_statement, path_utils_1_block1, (statements, 1), range(path_utils_1, 38892, 58, 882, 882)).
stmt(path_utils_1_stmt3, return_statement, path_utils_1_block2, (statements, 0), range(path_utils_1, 39244, 41, 894, 894)).
%can_write_file_filter_1 - org.apache.commons.io.filefilter.CanWriteFileFilter
stmt(can_write_file_filter_1_stmt1, return_statement, can_write_file_filter_1_block2, (statements, 0), range(can_write_file_filter_1, 2738, 23, 83, 83)).
stmt(can_write_file_filter_1_stmt2, return_statement, can_write_file_filter_1_block3, (statements, 0), range(can_write_file_filter_1, 3098, 49, 95, 95)).
%iocase_1 - org.apache.commons.io.IOCase
stmt(iocase_1_stmt1, return_statement, iocase_1_block1, (statements, 0), range(iocase_1, 3745, 44, 103, 103)).
stmt(iocase_1_stmt2, expression_statement, iocase_1_block2, (statements, 0), range(iocase_1, 4135, 17, 119, 119)).
stmt(iocase_1_stmt3, expression_statement, iocase_1_block2, (statements, 1), range(iocase_1, 4161, 27, 120, 120)).
stmt(iocase_1_stmt4, expression_statement, iocase_1_block3, (statements, 0), range(iocase_1, 6062, 37, 173, 173)).
stmt(iocase_1_stmt5, expression_statement, iocase_1_block3, (statements, 1), range(iocase_1, 6108, 37, 174, 174)).
stmt(iocase_1_stmt6, return_statement, iocase_1_block3, (statements, 2), range(iocase_1, 6154, 67, 175, 175)).
%ioutils_1 - org.apache.commons.io.IOUtils
stmt(ioutils_1_stmt1, return_statement, ioutils_1_block1, (statements, 0), range(ioutils_1, 14159, 38, 354, 354)).
stmt(ioutils_1_stmt2, return_statement, ioutils_1_block2, (statements, 0), range(ioutils_1, 14586, 22, 368, 368)).
stmt(ioutils_1_stmt3, return_statement, ioutils_1_block3, (statements, 0), range(ioutils_1, 14847, 38, 378, 378)).
stmt(ioutils_1_stmt4, return_statement, ioutils_1_block4, (statements, 0), range(ioutils_1, 15208, 22, 391, 391)).
stmt(ioutils_1_stmt5, return_statement, ioutils_1_block5, (statements, 0), range(ioutils_1, 65318, 40, 1789, 1789)).
%directory_file_filter_1 - org.apache.commons.io.filefilter.DirectoryFileFilter
%not_file_filter_1 - org.apache.commons.io.filefilter.NotFileFilter
stmt(not_file_filter_1_stmt1, expression_statement, not_file_filter_1_block1, (statements, 0), range(not_file_filter_1, 1786, 41, 50, 50)).
stmt(not_file_filter_1_stmt2, expression_statement, not_file_filter_1_block1, (statements, 1), range(not_file_filter_1, 1836, 21, 51, 51)).
%iocase_test_1 - org.apache.commons.io.IOCaseTest
stmt(iocase_test_1_stmt1, expression_statement, iocase_test_1_block1, (statements, 0), range(iocase_test_1, 5595, 53, 136, 136)).
stmt(iocase_test_1_stmt2, expression_statement, iocase_test_1_block1, (statements, 1), range(iocase_test_1, 5657, 54, 137, 137)).
stmt(iocase_test_1_stmt3, expression_statement, iocase_test_1_block1, (statements, 2), range(iocase_test_1, 5720, 55, 138, 138)).
stmt(iocase_test_1_stmt4, expression_statement, iocase_test_1_block1, (statements, 3), range(iocase_test_1, 5784, 55, 139, 139)).
stmt(iocase_test_1_stmt5, expression_statement, iocase_test_1_block1, (statements, 4), range(iocase_test_1, 5848, 55, 140, 140)).
stmt(iocase_test_1_stmt6, expression_statement, iocase_test_1_block1, (statements, 5), range(iocase_test_1, 5912, 54, 141, 141)).
stmt(iocase_test_1_stmt7, expression_statement, iocase_test_1_block1, (statements, 6), range(iocase_test_1, 5975, 57, 142, 142)).
stmt(iocase_test_1_stmt8, expression_statement, iocase_test_1_block1, (statements, 7), range(iocase_test_1, 6041, 53, 143, 143)).
stmt(iocase_test_1_stmt9, expression_statement, iocase_test_1_block1, (statements, 8), range(iocase_test_1, 6103, 49, 144, 144)).
stmt(iocase_test_1_stmt10, expression_statement, iocase_test_1_block1, (statements, 9), range(iocase_test_1, 6162, 55, 146, 146)).
%empty_file_filter_1 - org.apache.commons.io.filefilter.EmptyFileFilter
stmt(empty_file_filter_1_stmt1, if_statement, empty_file_filter_1_block2, (statements, 0), range(empty_file_filter_1, 3431, 133, 107, 110)).
stmt(empty_file_filter_1_stmt2, variable_declaration_statement, empty_file_filter_1_block3, (statements, 0), range(empty_file_filter_1, 3469, 38, 108, 108)).
stmt(empty_file_filter_1_stmt3, return_statement, empty_file_filter_1_block3, (statements, 1), range(empty_file_filter_1, 3520, 34, 109, 109)).
stmt(empty_file_filter_1_stmt4, return_statement, empty_file_filter_1_block4, (statements, 0), range(empty_file_filter_1, 3951, 308, 123, 130)).
stmt(empty_file_filter_1_stmt5, if_statement, empty_file_filter_1_block5, (statements, 0), range(empty_file_filter_1, 3982, 204, 124, 128)).
stmt(empty_file_filter_1_stmt6, try_statement, empty_file_filter_1_block6, (statements, 0), range(empty_file_filter_1, 4029, 143, 125, 127)).
stmt(empty_file_filter_1_stmt7, return_statement, empty_file_filter_1_block7, (statements, 0), range(empty_file_filter_1, 4096, 58, 126, 126)).
%file_file_filter_1 - org.apache.commons.io.filefilter.FileFileFilter
stmt(file_file_filter_1_stmt1, return_statement, file_file_filter_1_block2, (statements, 0), range(file_file_filter_1, 3051, 21, 100, 100)).
%name_file_filter_1 - org.apache.commons.io.filefilter.NameFileFilter
stmt(name_file_filter_1_stmt1, constructor_invocation, name_file_filter_1_block1, (statements, 0), range(name_file_filter_1, 3114, 18, 91, 91)).
stmt(name_file_filter_1_stmt2, expression_statement, name_file_filter_1_block2, (statements, 0), range(name_file_filter_1, 3606, 39, 103, 103)).
stmt(name_file_filter_1_stmt3, expression_statement, name_file_filter_1_block2, (statements, 1), range(name_file_filter_1, 3654, 47, 104, 104)).
stmt(name_file_filter_1_stmt4, expression_statement, name_file_filter_1_block2, (statements, 2), range(name_file_filter_1, 3710, 31, 105, 105)).
stmt(name_file_filter_1_stmt5, constructor_invocation, name_file_filter_1_block3, (statements, 0), range(name_file_filter_1, 4018, 29, 115, 115)).
stmt(name_file_filter_1_stmt6, constructor_invocation, name_file_filter_1_block4, (statements, 0), range(name_file_filter_1, 4491, 30, 129, 129)).
stmt(name_file_filter_1_stmt7, expression_statement, name_file_filter_1_block5, (statements, 0), range(name_file_filter_1, 4890, 37, 140, 140)).
stmt(name_file_filter_1_stmt8, expression_statement, name_file_filter_1_block5, (statements, 1), range(name_file_filter_1, 4936, 33, 141, 141)).
stmt(name_file_filter_1_stmt9, expression_statement, name_file_filter_1_block5, (statements, 2), range(name_file_filter_1, 4978, 31, 142, 142)).
stmt(name_file_filter_1_stmt10, expression_statement, name_file_filter_1_block6, (statements, 0), range(name_file_filter_1, 5412, 39, 153, 153)).
stmt(name_file_filter_1_stmt11, expression_statement, name_file_filter_1_block6, (statements, 1), range(name_file_filter_1, 5460, 27, 154, 154)).
stmt(name_file_filter_1_stmt12, expression_statement, name_file_filter_1_block6, (statements, 2), range(name_file_filter_1, 5496, 31, 155, 155)).
stmt(name_file_filter_1_stmt13, return_statement, name_file_filter_1_block7, (statements, 0), range(name_file_filter_1, 5755, 38, 166, 166)).
stmt(name_file_filter_1_stmt14, return_statement, name_file_filter_1_block8, (statements, 0), range(name_file_filter_1, 6405, 76, 190, 190)).
stmt(name_file_filter_1_stmt15, return_statement, name_file_filter_1_block9, (statements, 0), range(name_file_filter_1, 6557, 85, 194, 194)).
stmt(name_file_filter_1_stmt16, return_statement, name_file_filter_1_block10, (statements, 0), range(name_file_filter_1, 6709, 46, 198, 198)).
stmt(name_file_filter_1_stmt17, variable_declaration_statement, name_file_filter_1_block11, (statements, 0), range(name_file_filter_1, 6938, 49, 208, 208)).
stmt(name_file_filter_1_stmt18, expression_statement, name_file_filter_1_block11, (statements, 1), range(name_file_filter_1, 6996, 32, 209, 209)).
stmt(name_file_filter_1_stmt19, expression_statement, name_file_filter_1_block11, (statements, 2), range(name_file_filter_1, 7037, 19, 210, 210)).
stmt(name_file_filter_1_stmt20, expression_statement, name_file_filter_1_block11, (statements, 3), range(name_file_filter_1, 7065, 22, 211, 211)).
stmt(name_file_filter_1_stmt21, expression_statement, name_file_filter_1_block11, (statements, 4), range(name_file_filter_1, 7096, 19, 212, 212)).
stmt(name_file_filter_1_stmt22, return_statement, name_file_filter_1_block11, (statements, 5), range(name_file_filter_1, 7124, 25, 213, 213)).
%file_filter_utils_1 - org.apache.commons.io.filefilter.FileFilterUtils
stmt(file_filter_utils_1_stmt1, return_statement, file_filter_utils_1_block1, (statements, 0), range(file_filter_utils_1, 5248, 42, 146, 146)).
stmt(file_filter_utils_1_stmt2, return_statement, file_filter_utils_1_block2, (statements, 0), range(file_filter_utils_1, 6831, 37, 195, 195)).
stmt(file_filter_utils_1_stmt3, return_statement, file_filter_utils_1_block3, (statements, 0), range(file_filter_utils_1, 20610, 32, 568, 568)).
stmt(file_filter_utils_1_stmt4, return_statement, file_filter_utils_1_block4, (statements, 0), range(file_filter_utils_1, 21053, 40, 581, 581)).
stmt(file_filter_utils_1_stmt5, return_statement, file_filter_utils_1_block5, (statements, 0), range(file_filter_utils_1, 21386, 23, 592, 592)).
stmt(file_filter_utils_1_stmt6, return_statement, file_filter_utils_1_block6, (statements, 0), range(file_filter_utils_1, 25966, 119, 724, 724)).
%file_system_1 - org.apache.commons.io.FileSystem
stmt(file_system_1_stmt1, if_statement, file_system_1_block1, (statements, 0), range(file_system_1, 4672, 54, 140, 142)).
stmt(file_system_1_stmt2, return_statement, file_system_1_block2, (statements, 0), range(file_system_1, 4703, 13, 141, 141)).
stmt(file_system_1_stmt3, return_statement, file_system_1_block3, (statements, 0), range(file_system_1, 5039, 15, 158, 158)).
stmt(file_system_1_stmt4, return_statement, file_system_1_block4, (statements, 0), range(file_system_1, 5353, 65, 169, 169)).
stmt(file_system_1_stmt5, try_statement, file_system_1_block5, (statements, 0), range(file_system_1, 5951, 378, 186, 193)).
stmt(file_system_1_stmt6, return_statement, file_system_1_block6, (statements, 0), range(file_system_1, 5969, 36, 187, 187)).
stmt(file_system_1_stmt7, if_statement, file_system_1_block7, (statements, 0), range(file_system_1, 9834, 57, 282, 284)).
stmt(file_system_1_stmt8, return_statement, file_system_1_block7, (statements, 1), range(file_system_1, 9900, 89, 285, 285)).
stmt(file_system_1_stmt9, expression_statement, file_system_1_block9, (statements, 0), range(file_system_1, 12003, 27, 329, 329)).
stmt(file_system_1_stmt10, expression_statement, file_system_1_block9, (statements, 1), range(file_system_1, 12039, 39, 330, 330)).
stmt(file_system_1_stmt11, expression_statement, file_system_1_block9, (statements, 2), range(file_system_1, 12087, 35, 331, 331)).
stmt(file_system_1_stmt12, expression_statement, file_system_1_block9, (statements, 3), range(file_system_1, 12131, 97, 332, 332)).
stmt(file_system_1_stmt13, expression_statement, file_system_1_block9, (statements, 4), range(file_system_1, 12237, 88, 333, 333)).
stmt(file_system_1_stmt14, expression_statement, file_system_1_block9, (statements, 5), range(file_system_1, 12334, 63, 334, 334)).
stmt(file_system_1_stmt15, expression_statement, file_system_1_block9, (statements, 6), range(file_system_1, 12406, 35, 335, 335)).
stmt(file_system_1_stmt16, expression_statement, file_system_1_block9, (statements, 7), range(file_system_1, 12450, 37, 336, 336)).
stmt(file_system_1_stmt17, expression_statement, file_system_1_block9, (statements, 8), range(file_system_1, 12496, 47, 337, 337)).
stmt(file_system_1_stmt18, expression_statement, file_system_1_block9, (statements, 9), range(file_system_1, 12552, 35, 338, 338)).
stmt(file_system_1_stmt19, expression_statement, file_system_1_block9, (statements, 10), range(file_system_1, 12596, 69, 339, 339)).
stmt(file_system_1_stmt20, return_statement, file_system_1_block10, (statements, 0), range(file_system_1, 14923, 21, 428, 428)).
%can_read_file_filter_1 - org.apache.commons.io.filefilter.CanReadFileFilter
stmt(can_read_file_filter_1_stmt1, return_statement, can_read_file_filter_1_block2, (statements, 0), range(can_read_file_filter_1, 3061, 22, 95, 95)).
stmt(can_read_file_filter_1_stmt2, return_statement, can_read_file_filter_1_block3, (statements, 0), range(can_read_file_filter_1, 3409, 49, 107, 107)).
%hidden_file_filter_1 - org.apache.commons.io.filefilter.HiddenFileFilter
stmt(hidden_file_filter_1_stmt1, return_statement, hidden_file_filter_1_block2, (statements, 0), range(hidden_file_filter_1, 3268, 23, 104, 104)).
stmt(hidden_file_filter_1_stmt2, return_statement, hidden_file_filter_1_block3, (statements, 0), range(hidden_file_filter_1, 3628, 58, 117, 117)).
%abstract_file_filter_1 - org.apache.commons.io.filefilter.AbstractFileFilter
stmt(abstract_file_filter_1_stmt1, return_statement, abstract_file_filter_1_block1, (statements, 0), range(abstract_file_filter_1, 1764, 69, 45, 45)).
stmt(abstract_file_filter_1_stmt2, constructor_invocation, abstract_file_filter_1_block2, (statements, 0), range(abstract_file_filter_1, 2143, 58, 62, 62)).
stmt(abstract_file_filter_1_stmt3, expression_statement, abstract_file_filter_1_block3, (statements, 0), range(abstract_file_filter_1, 2492, 25, 73, 73)).
stmt(abstract_file_filter_1_stmt4, expression_statement, abstract_file_filter_1_block3, (statements, 1), range(abstract_file_filter_1, 2526, 25, 74, 74)).
stmt(abstract_file_filter_1_stmt5, expression_statement, abstract_file_filter_1_block4, (statements, 0), range(abstract_file_filter_1, 3245, 37, 98, 98)).
stmt(abstract_file_filter_1_stmt6, return_statement, abstract_file_filter_1_block4, (statements, 1), range(abstract_file_filter_1, 3291, 35, 99, 99)).
stmt(abstract_file_filter_1_stmt7, for_statement, abstract_file_filter_1_block5, (statements, 0), range(abstract_file_filter_1, 3656, 162, 112, 117)).
stmt(abstract_file_filter_1_stmt8, if_statement, abstract_file_filter_1_block6, (statements, 0), range(abstract_file_filter_1, 3709, 62, 113, 115)).
stmt(abstract_file_filter_1_stmt9, expression_statement, abstract_file_filter_1_block7, (statements, 0), range(abstract_file_filter_1, 3738, 19, 114, 114)).
stmt(abstract_file_filter_1_stmt10, expression_statement, abstract_file_filter_1_block6, (statements, 1), range(abstract_file_filter_1, 3784, 24, 116, 116)).
stmt(abstract_file_filter_1_stmt11, try_statement, abstract_file_filter_1_block8, (statements, 0), range(abstract_file_filter_1, 3904, 114, 121, 125)).
stmt(abstract_file_filter_1_stmt12, return_statement, abstract_file_filter_1_block9, (statements, 0), range(abstract_file_filter_1, 3922, 22, 122, 122)).
stmt(abstract_file_filter_1_stmt13, return_statement, abstract_file_filter_1_block10, (statements, 0), range(abstract_file_filter_1, 4869, 36, 156, 156)).
stmt(abstract_file_filter_1_stmt14, return_statement, abstract_file_filter_1_block11, (statements, 0), range(abstract_file_filter_1, 5089, 34, 166, 166)).
%abstract_filter_test_1 - org.apache.commons.io.filefilter.AbstractFilterTest
stmt(abstract_filter_test_1_stmt1, expression_statement, abstract_filter_test_1_block1, (statements, 0), range(abstract_filter_test_1, 1774, 129, 50, 50)).
stmt(abstract_filter_test_1_stmt2, expression_statement, abstract_filter_test_1_block2, (statements, 1), range(abstract_filter_test_1, 3364, 181, 73, 74)).
%and_file_filter_1 - org.apache.commons.io.filefilter.AndFileFilter
stmt(and_file_filter_1_stmt1, expression_statement, and_file_filter_1_block1, (statements, 0), range(and_file_filter_1, 2275, 70, 68, 68)).
stmt(and_file_filter_1_stmt2, constructor_invocation, and_file_filter_1_block2, (statements, 0), range(and_file_filter_1, 2557, 39, 77, 77)).
stmt(and_file_filter_1_stmt3, constructor_invocation, and_file_filter_1_block3, (statements, 0), range(and_file_filter_1, 3294, 8, 99, 99)).
stmt(and_file_filter_1_stmt4, expression_statement, and_file_filter_1_block3, (statements, 1), range(and_file_filter_1, 3311, 23, 100, 100)).
stmt(and_file_filter_1_stmt5, expression_statement, and_file_filter_1_block3, (statements, 2), range(and_file_filter_1, 3343, 23, 101, 101)).
stmt(and_file_filter_1_stmt6, constructor_invocation, and_file_filter_1_block4, (statements, 0), range(and_file_filter_1, 3658, 74, 112, 112)).
stmt(and_file_filter_1_stmt7, expression_statement, and_file_filter_1_block5, (statements, 0), range(and_file_filter_1, 4667, 71, 146, 146)).
%test_utils_1 - org.apache.commons.io.test.TestUtils
stmt(test_utils_1_stmt1, for_statement, test_utils_1_block1, (statements, 0), range(test_utils_1, 8751, 203, 220, 224)).
stmt(test_utils_1_stmt2, expression_statement, test_utils_1_block2, (statements, 0), range(test_utils_1, 8912, 32, 223, 223)).
%filename_utils_1 - org.apache.commons.io.FilenameUtils
stmt(filename_utils_1_stmt1, if_statement, filename_utils_1_block1, (statements, 0), range(filename_utils_1, 19390, 85, 525, 527)).
stmt(filename_utils_1_stmt2, return_statement, filename_utils_1_block2, (statements, 0), range(filename_utils_1, 19435, 30, 526, 526)).
stmt(filename_utils_1_stmt3, if_statement, filename_utils_1_block1, (statements, 1), range(filename_utils_1, 19484, 85, 528, 530)).
stmt(filename_utils_1_stmt4, return_statement, filename_utils_1_block3, (statements, 0), range(filename_utils_1, 19532, 27, 529, 529)).
%file_filter_test_1 - org.apache.commons.io.filefilter.FileFilterTest
stmt(file_filter_test_1_stmt1, variable_declaration_statement, file_filter_test_1_block1, (statements, 0), range(file_filter_test_1, 10531, 75, 221, 221)).
stmt(file_filter_test_1_stmt2, variable_declaration_statement, file_filter_test_1_block1, (statements, 1), range(file_filter_test_1, 10615, 48, 222, 222)).
stmt(file_filter_test_1_stmt3, if_statement, file_filter_test_1_block1, (statements, 2), range(file_filter_test_1, 10672, 155, 223, 225)).
stmt(file_filter_test_1_stmt4, try_statement, file_filter_test_1_block1, (statements, 3), range(file_filter_test_1, 10836, 170, 226, 228)).
stmt(file_filter_test_1_stmt5, expression_statement, file_filter_test_1_block3, (statements, 0), range(file_filter_test_1, 10957, 39, 227, 227)).
stmt(file_filter_test_1_stmt6, expression_statement, file_filter_test_1_block1, (statements, 4), range(file_filter_test_1, 11015, 39, 229, 229)).
stmt(file_filter_test_1_stmt7, expression_statement, file_filter_test_1_block1, (statements, 5), range(file_filter_test_1, 11063, 64, 230, 230)).
stmt(file_filter_test_1_stmt8, expression_statement, file_filter_test_1_block1, (statements, 6), range(file_filter_test_1, 11136, 64, 231, 231)).
stmt(file_filter_test_1_stmt9, variable_declaration_statement, file_filter_test_1_block4, (statements, 0), range(file_filter_test_1, 12053, 75, 247, 247)).
stmt(file_filter_test_1_stmt10, variable_declaration_statement, file_filter_test_1_block4, (statements, 1), range(file_filter_test_1, 12137, 48, 248, 248)).
stmt(file_filter_test_1_stmt11, if_statement, file_filter_test_1_block4, (statements, 2), range(file_filter_test_1, 12194, 155, 249, 251)).
stmt(file_filter_test_1_stmt12, try_statement, file_filter_test_1_block4, (statements, 3), range(file_filter_test_1, 12358, 170, 252, 254)).
stmt(file_filter_test_1_stmt13, expression_statement, file_filter_test_1_block6, (statements, 0), range(file_filter_test_1, 12479, 39, 253, 253)).
stmt(file_filter_test_1_stmt14, expression_statement, file_filter_test_1_block4, (statements, 4), range(file_filter_test_1, 12537, 39, 255, 255)).
stmt(file_filter_test_1_stmt15, expression_statement, file_filter_test_1_block4, (statements, 5), range(file_filter_test_1, 12585, 69, 256, 256)).
stmt(file_filter_test_1_stmt16, expression_statement, file_filter_test_1_block4, (statements, 6), range(file_filter_test_1, 12663, 67, 257, 257)).
stmt(file_filter_test_1_stmt17, expression_statement, file_filter_test_1_block4, (statements, 7), range(file_filter_test_1, 12739, 66, 258, 258)).
stmt(file_filter_test_1_stmt18, variable_declaration_statement, file_filter_test_1_block7, (statements, 0), range(file_filter_test_1, 19965, 65, 403, 403)).
stmt(file_filter_test_1_stmt19, variable_declaration_statement, file_filter_test_1_block7, (statements, 1), range(file_filter_test_1, 20039, 48, 404, 404)).
stmt(file_filter_test_1_stmt20, expression_statement, file_filter_test_1_block7, (statements, 2), range(file_filter_test_1, 20096, 22, 405, 405)).
stmt(file_filter_test_1_stmt21, expression_statement, file_filter_test_1_block7, (statements, 3), range(file_filter_test_1, 20127, 59, 406, 406)).
stmt(file_filter_test_1_stmt22, expression_statement, file_filter_test_1_block7, (statements, 4), range(file_filter_test_1, 20195, 59, 407, 407)).
stmt(file_filter_test_1_stmt23, expression_statement, file_filter_test_1_block7, (statements, 5), range(file_filter_test_1, 20263, 58, 408, 408)).
stmt(file_filter_test_1_stmt24, variable_declaration_statement, file_filter_test_1_block8, (statements, 0), range(file_filter_test_1, 25145, 52, 501, 501)).
stmt(file_filter_test_1_stmt25, expression_statement, file_filter_test_1_block8, (statements, 1), range(file_filter_test_1, 25207, 44, 503, 503)).
stmt(file_filter_test_1_stmt26, variable_declaration_statement, file_filter_test_1_block9, (statements, 0), range(file_filter_test_1, 34357, 50, 727, 727)).
stmt(file_filter_test_1_stmt27, variable_declaration_statement, file_filter_test_1_block9, (statements, 1), range(file_filter_test_1, 34416, 50, 728, 728)).
stmt(file_filter_test_1_stmt28, if_statement, file_filter_test_1_block9, (statements, 2), range(file_filter_test_1, 34475, 423, 729, 734)).
stmt(file_filter_test_1_stmt29, variable_declaration_statement, file_filter_test_1_block9, (statements, 3), range(file_filter_test_1, 34907, 43, 735, 735)).
stmt(file_filter_test_1_stmt30, expression_statement, file_filter_test_1_block9, (statements, 4), range(file_filter_test_1, 34959, 65, 736, 736)).
stmt(file_filter_test_1_stmt31, expression_statement, file_filter_test_1_block9, (statements, 5), range(file_filter_test_1, 35033, 54, 737, 737)).
stmt(file_filter_test_1_stmt32, expression_statement, file_filter_test_1_block9, (statements, 6), range(file_filter_test_1, 35096, 60, 738, 738)).
stmt(file_filter_test_1_stmt33, variable_declaration_statement, file_filter_test_1_block11, (statements, 0), range(file_filter_test_1, 49208, 63, 1064, 1064)).
stmt(file_filter_test_1_stmt34, expression_statement, file_filter_test_1_block11, (statements, 1), range(file_filter_test_1, 49280, 34, 1065, 1065)).
stmt(file_filter_test_1_stmt35, expression_statement, file_filter_test_1_block11, (statements, 2), range(file_filter_test_1, 49323, 44, 1066, 1066)).
%iofile_filter_1 - org.apache.commons.io.filefilter.IOFileFilter
stmt(iofile_filter_1_stmt1, return_statement, iofile_filter_1_block1, (statements, 0), range(iofile_filter_1, 2736, 43, 86, 86)).
stmt(iofile_filter_1_stmt2, return_statement, iofile_filter_1_block2, (statements, 0), range(iofile_filter_1, 3047, 55, 98, 98)).
stmt(iofile_filter_1_stmt3, return_statement, iofile_filter_1_block3, (statements, 0), range(iofile_filter_1, 3281, 31, 108, 108)).

%%% Expressions
%standard_line_separator_1 - org.apache.commons.io.StandardLineSeparator
expr(standard_line_separator_1_expr4, this_expression, f_line_separator_484, expression, range(standard_line_separator_1, 1630, 4, 53, 53), "this").
expr(standard_line_separator_1_expr2, field_access, standard_line_separator_1_expr1, left_hand_side, range(standard_line_separator_1, 1630, 18, 53, 53), "this.lineSeparator").
expr(standard_line_separator_1_expr1, assignment, standard_line_separator_1_stmt1, expression, range(standard_line_separator_1, 1630, 75, 53, 53), "this.lineSeparator=Objects.requireNonNull(lineSeparator,\"lineSeparator\")").
expr(standard_line_separator_1_expr3, method_invocation, standard_line_separator_1_expr1, right_hand_side, range(standard_line_separator_1, 1651, 54, 53, 53), "Objects.requireNonNull(lineSeparator,\"lineSeparator\")").
%path_utils_1 - org.apache.commons.io.file.PathUtils
expr(path_utils_1_expr1, array_initializer, path_utils_1_code10, initializer, range(path_utils_1, 6698, 67, 152, 152), "{StandardOpenOption.CREATE,StandardOpenOption.TRUNCATE_EXISTING}").
expr(path_utils_1_expr2, array_initializer, path_utils_1_code18, initializer, range(path_utils_1, 6828, 56, 154, 154), "{StandardOpenOption.CREATE,StandardOpenOption.APPEND}").
expr(path_utils_1_expr3, array_initializer, path_utils_1_code26, initializer, range(path_utils_1, 7027, 2, 161, 161), "{}").
expr(path_utils_1_expr4, array_initializer, path_utils_1_code34, initializer, range(path_utils_1, 7183, 2, 168, 168), "{}").
expr(path_utils_1_expr5, array_initializer, path_utils_1_code44, initializer, range(path_utils_1, 7346, 2, 175, 175), "{}").
expr(path_utils_1_expr6, array_initializer, path_utils_1_code52, initializer, range(path_utils_1, 7485, 2, 180, 180), "{}").
expr(path_utils_1_expr7, array_initializer, path_utils_1_code60, initializer, range(path_utils_1, 7608, 2, 185, 185), "{}").
expr(path_utils_1_expr8, array_initializer, path_utils_1_code68, initializer, range(path_utils_1, 7868, 29, 194, 194), "{LinkOption.NOFOLLOW_LINKS}").
expr(path_utils_1_expr9, array_initializer, path_utils_1_code81, initializer, range(path_utils_1, 8221, 2, 206, 206), "{}").
expr(path_utils_1_expr10, array_initializer, path_utils_1_code89, initializer, range(path_utils_1, 8352, 2, 213, 213), "{}").
expr(path_utils_1_expr11, conditional_expression, path_utils_1_code93, initializer, range(path_utils_1, 38842, 40, 881, 881), "path != null ? path.getFileName() : null").
expr(path_utils_1_expr12, infix_expression, path_utils_1_expr11, expression, range(path_utils_1, 38842, 12, 881, 881), "path != null").
expr(path_utils_1_expr13, method_invocation, path_utils_1_expr11, then_expression, range(path_utils_1, 38857, 18, 881, 881), "path.getFileName()").
expr(path_utils_1_expr14, conditional_expression, path_utils_1_stmt2, expression, range(path_utils_1, 38899, 50, 882, 882), "fileName != null ? function.apply(fileName) : null").
expr(path_utils_1_expr15, infix_expression, path_utils_1_expr14, expression, range(path_utils_1, 38899, 16, 882, 882), "fileName != null").
expr(path_utils_1_expr16, method_invocation, path_utils_1_expr14, then_expression, range(path_utils_1, 38918, 24, 882, 882), "function.apply(fileName)").
expr(path_utils_1_expr17, method_invocation, path_utils_1_stmt3, expression, range(path_utils_1, 39251, 33, 894, 894), "getFileName(path,Path::toString)").
expr(path_utils_1_expr18, expression_method_reference, path_utils_1_expr17, (arguments, 1), range(path_utils_1, 39269, 14, 894, 894), "Path::toString").
%can_write_file_filter_1 - org.apache.commons.io.filefilter.CanWriteFileFilter
expr(can_write_file_filter_1_expr1, class_instance_creation, can_write_file_filter_1_code8, initializer, range(can_write_file_filter_1, 2151, 24, 62, 62), "new CanWriteFileFilter()").
expr(can_write_file_filter_1_expr2, method_invocation, can_write_file_filter_1_code15, initializer, range(can_write_file_filter_1, 2290, 18, 65, 65), "CAN_WRITE.negate()").
expr(can_write_file_filter_1_expr3, method_invocation, can_write_file_filter_1_stmt1, expression, range(can_write_file_filter_1, 2745, 15, 83, 83), "file.canWrite()").
expr(can_write_file_filter_1_expr4, method_invocation, can_write_file_filter_1_stmt2, expression, range(can_write_file_filter_1, 3105, 41, 95, 95), "toFileVisitResult(Files.isWritable(file))").
expr(can_write_file_filter_1_expr5, method_invocation, can_write_file_filter_1_expr4, (arguments, 0), range(can_write_file_filter_1, 3123, 22, 95, 95), "Files.isWritable(file)").
%iocase_1 - org.apache.commons.io.IOCase
expr(iocase_1_expr1, method_invocation, iocase_1_code6, (arguments, 1), range(iocase_1, 2422, 41, 66, 66), "FileSystem.getCurrent().isCaseSensitive()").
expr(iocase_1_expr2, method_invocation, iocase_1_expr1, expression, range(iocase_1, 2422, 23, 66, 66), "FileSystem.getCurrent()").
expr(iocase_1_expr3, conditional_expression, iocase_1_stmt1, expression, range(iocase_1, 3752, 36, 103, 103), "value != null ? value : defaultValue").
expr(iocase_1_expr4, infix_expression, iocase_1_expr3, expression, range(iocase_1, 3752, 13, 103, 103), "value != null").
expr(iocase_1_expr5, assignment, iocase_1_stmt2, expression, range(iocase_1, 4135, 16, 119, 119), "this.name=name").
expr(iocase_1_expr6, field_access, iocase_1_expr5, left_hand_side, range(iocase_1, 4135, 9, 119, 119), "this.name").
expr(iocase_1_expr7, this_expression, f_name_134, expression, range(iocase_1, 4135, 4, 119, 119), "this").
expr(iocase_1_expr8, assignment, iocase_1_stmt3, expression, range(iocase_1, 4161, 26, 120, 120), "this.sensitive=sensitive").
expr(iocase_1_expr9, field_access, iocase_1_expr8, left_hand_side, range(iocase_1, 4161, 14, 120, 120), "this.sensitive").
expr(iocase_1_expr10, this_expression, f_sensitive_135, expression, range(iocase_1, 4161, 4, 120, 120), "this").
expr(iocase_1_expr11, method_invocation, iocase_1_stmt4, expression, range(iocase_1, 6062, 36, 173, 173), "Objects.requireNonNull(str1,\"str1\")").
expr(iocase_1_expr12, method_invocation, iocase_1_stmt5, expression, range(iocase_1, 6108, 36, 174, 174), "Objects.requireNonNull(str2,\"str2\")").
expr(iocase_1_expr13, conditional_expression, iocase_1_stmt6, expression, range(iocase_1, 6161, 59, 175, 175), "sensitive ? str1.equals(str2) : str1.equalsIgnoreCase(str2)").
expr(iocase_1_expr14, method_invocation, iocase_1_expr13, then_expression, range(iocase_1, 6173, 17, 175, 175), "str1.equals(str2)").
expr(iocase_1_expr15, method_invocation, iocase_1_expr13, else_expression, range(iocase_1, 6193, 27, 175, 175), "str1.equalsIgnoreCase(str2)").
%ioutils_1 - org.apache.commons.io.IOUtils
expr(ioutils_1_expr1, array_initializer, ioutils_1_code16, initializer, range(ioutils_1, 6004, 2, 162, 162), "{}").
expr(ioutils_1_expr2, method_invocation, ioutils_1_code22, initializer, range(ioutils_1, 6425, 22, 183, 183), "System.lineSeparator()").
expr(ioutils_1_expr3, method_invocation, ioutils_1_code28, initializer, range(ioutils_1, 6602, 36, 190, 190), "StandardLineSeparator.LF.getString()").
expr(ioutils_1_expr4, method_invocation, ioutils_1_code34, initializer, range(ioutils_1, 6801, 38, 197, 197), "StandardLineSeparator.CRLF.getString()").
expr(ioutils_1_expr5, method_invocation, ioutils_1_code44, initializer, range(ioutils_1, 7002, 43, 202, 202), "ThreadLocal.withInitial(IOUtils::byteArray)").
expr(ioutils_1_expr6, expression_method_reference, ioutils_1_expr5, (arguments, 0), range(ioutils_1, 7026, 18, 202, 202), "IOUtils::byteArray").
expr(ioutils_1_expr7, method_invocation, ioutils_1_code52, initializer, range(ioutils_1, 7192, 11, 207, 207), "byteArray()").
expr(ioutils_1_expr8, method_invocation, ioutils_1_code62, initializer, range(ioutils_1, 7366, 43, 212, 212), "ThreadLocal.withInitial(IOUtils::charArray)").
expr(ioutils_1_expr9, expression_method_reference, ioutils_1_expr8, (arguments, 0), range(ioutils_1, 7390, 18, 212, 212), "IOUtils::charArray").
expr(ioutils_1_expr10, method_invocation, ioutils_1_code70, initializer, range(ioutils_1, 7556, 11, 217, 217), "charArray()").
expr(ioutils_1_expr11, method_invocation, ioutils_1_stmt1, expression, range(ioutils_1, 14166, 30, 354, 354), "byteArray(DEFAULT_BUFFER_SIZE)").
expr(ioutils_1_expr12, array_creation, ioutils_1_stmt2, expression, range(ioutils_1, 14593, 14, 368, 368), "new byte[size]").
expr(ioutils_1_expr13, method_invocation, ioutils_1_stmt3, expression, range(ioutils_1, 14854, 30, 378, 378), "charArray(DEFAULT_BUFFER_SIZE)").
expr(ioutils_1_expr14, array_creation, ioutils_1_stmt4, expression, range(ioutils_1, 15215, 14, 391, 391), "new char[size]").
expr(ioutils_1_expr15, conditional_expression, ioutils_1_stmt5, expression, range(ioutils_1, 65325, 32, 1789, 1789), "array == null ? 0 : array.length").
expr(ioutils_1_expr16, infix_expression, ioutils_1_expr15, expression, range(ioutils_1, 65325, 13, 1789, 1789), "array == null").
%directory_file_filter_1 - org.apache.commons.io.filefilter.DirectoryFileFilter
expr(directory_file_filter_1_expr1, class_instance_creation, directory_file_filter_1_code8, initializer, range(directory_file_filter_1, 2486, 25, 75, 75), "new DirectoryFileFilter()").
%not_file_filter_1 - org.apache.commons.io.filefilter.NotFileFilter
expr(not_file_filter_1_expr1, method_invocation, not_file_filter_1_stmt1, expression, range(not_file_filter_1, 1786, 40, 50, 50), "Objects.requireNonNull(filter,\"filter\")").
expr(not_file_filter_1_expr2, assignment, not_file_filter_1_stmt2, expression, range(not_file_filter_1, 1836, 20, 51, 51), "this.filter=filter").
expr(not_file_filter_1_expr4, this_expression, f_filter_909, expression, range(not_file_filter_1, 1836, 4, 51, 51), "this").
expr(not_file_filter_1_expr3, field_access, not_file_filter_1_expr2, left_hand_side, range(not_file_filter_1, 1836, 11, 51, 51), "this.filter").
%iocase_test_1 - org.apache.commons.io.IOCaseTest
expr(iocase_test_1_expr1, infix_expression, iocase_test_1_code9, initializer, range(iocase_test_1, 1466, 26, 39, 39), "File.separatorChar == '\\\\'").
expr(iocase_test_1_expr2, method_invocation, iocase_test_1_stmt1, expression, range(iocase_test_1, 5595, 52, 136, 136), "assertFalse(IOCase.SENSITIVE.checkEquals(\"ABC\",\"\"))").
expr(iocase_test_1_expr3, method_invocation, iocase_test_1_expr2, (arguments, 0), range(iocase_test_1, 5607, 39, 136, 136), "IOCase.SENSITIVE.checkEquals(\"ABC\",\"\")").
expr(iocase_test_1_expr4, method_invocation, iocase_test_1_stmt2, expression, range(iocase_test_1, 5657, 53, 137, 137), "assertFalse(IOCase.SENSITIVE.checkEquals(\"ABC\",\"A\"))").
expr(iocase_test_1_expr5, method_invocation, iocase_test_1_expr4, (arguments, 0), range(iocase_test_1, 5669, 40, 137, 137), "IOCase.SENSITIVE.checkEquals(\"ABC\",\"A\")").
expr(iocase_test_1_expr6, method_invocation, iocase_test_1_stmt3, expression, range(iocase_test_1, 5720, 54, 138, 138), "assertFalse(IOCase.SENSITIVE.checkEquals(\"ABC\",\"AB\"))").
expr(iocase_test_1_expr7, method_invocation, iocase_test_1_expr6, (arguments, 0), range(iocase_test_1, 5732, 41, 138, 138), "IOCase.SENSITIVE.checkEquals(\"ABC\",\"AB\")").
expr(iocase_test_1_expr8, method_invocation, iocase_test_1_stmt4, expression, range(iocase_test_1, 5784, 54, 139, 139), "assertTrue(IOCase.SENSITIVE.checkEquals(\"ABC\",\"ABC\"))").
expr(iocase_test_1_expr9, method_invocation, iocase_test_1_expr8, (arguments, 0), range(iocase_test_1, 5795, 42, 139, 139), "IOCase.SENSITIVE.checkEquals(\"ABC\",\"ABC\")").
expr(iocase_test_1_expr10, method_invocation, iocase_test_1_stmt5, expression, range(iocase_test_1, 5848, 54, 140, 140), "assertFalse(IOCase.SENSITIVE.checkEquals(\"ABC\",\"BC\"))").
expr(iocase_test_1_expr11, method_invocation, iocase_test_1_expr10, (arguments, 0), range(iocase_test_1, 5860, 41, 140, 140), "IOCase.SENSITIVE.checkEquals(\"ABC\",\"BC\")").
expr(iocase_test_1_expr12, method_invocation, iocase_test_1_stmt6, expression, range(iocase_test_1, 5912, 53, 141, 141), "assertFalse(IOCase.SENSITIVE.checkEquals(\"ABC\",\"C\"))").
expr(iocase_test_1_expr13, method_invocation, iocase_test_1_expr12, (arguments, 0), range(iocase_test_1, 5924, 40, 141, 141), "IOCase.SENSITIVE.checkEquals(\"ABC\",\"C\")").
expr(iocase_test_1_expr14, method_invocation, iocase_test_1_stmt7, expression, range(iocase_test_1, 5975, 56, 142, 142), "assertFalse(IOCase.SENSITIVE.checkEquals(\"ABC\",\"ABCD\"))").
expr(iocase_test_1_expr15, method_invocation, iocase_test_1_expr14, (arguments, 0), range(iocase_test_1, 5987, 43, 142, 142), "IOCase.SENSITIVE.checkEquals(\"ABC\",\"ABCD\")").
expr(iocase_test_1_expr16, method_invocation, iocase_test_1_stmt8, expression, range(iocase_test_1, 6041, 52, 143, 143), "assertFalse(IOCase.SENSITIVE.checkEquals(\"\",\"ABC\"))").
expr(iocase_test_1_expr17, method_invocation, iocase_test_1_expr16, (arguments, 0), range(iocase_test_1, 6053, 39, 143, 143), "IOCase.SENSITIVE.checkEquals(\"\",\"ABC\")").
expr(iocase_test_1_expr18, method_invocation, iocase_test_1_stmt9, expression, range(iocase_test_1, 6103, 48, 144, 144), "assertTrue(IOCase.SENSITIVE.checkEquals(\"\",\"\"))").
expr(iocase_test_1_expr19, method_invocation, iocase_test_1_expr18, (arguments, 0), range(iocase_test_1, 6114, 36, 144, 144), "IOCase.SENSITIVE.checkEquals(\"\",\"\")").
expr(iocase_test_1_expr20, method_invocation, iocase_test_1_stmt10, expression, range(iocase_test_1, 6162, 54, 146, 146), "assertFalse(IOCase.SENSITIVE.checkEquals(\"ABC\",null))").
expr(iocase_test_1_expr21, method_invocation, iocase_test_1_expr20, (arguments, 0), range(iocase_test_1, 6174, 41, 146, 146), "IOCase.SENSITIVE.checkEquals(\"ABC\",null)").
%empty_file_filter_1 - org.apache.commons.io.filefilter.EmptyFileFilter
expr(empty_file_filter_1_expr1, class_instance_creation, empty_file_filter_1_code8, initializer, range(empty_file_filter_1, 2845, 21, 86, 86), "new EmptyFileFilter()").
expr(empty_file_filter_1_expr2, method_invocation, empty_file_filter_1_code15, initializer, range(empty_file_filter_1, 2975, 14, 89, 89), "EMPTY.negate()").
expr(empty_file_filter_1_expr3, method_invocation, empty_file_filter_1_stmt1, expression, range(empty_file_filter_1, 3435, 18, 107, 107), "file.isDirectory()").
expr(empty_file_filter_1_expr4, method_invocation, empty_file_filter_1_code23, initializer, range(empty_file_filter_1, 3490, 16, 108, 108), "file.listFiles()").
expr(empty_file_filter_1_expr5, infix_expression, empty_file_filter_1_stmt3, expression, range(empty_file_filter_1, 3527, 26, 109, 109), "IOUtils.length(files) == 0").
expr(empty_file_filter_1_expr6, method_invocation, empty_file_filter_1_expr5, left_operand, range(empty_file_filter_1, 3527, 21, 109, 109), "IOUtils.length(files)").
expr(empty_file_filter_1_expr7, method_invocation, empty_file_filter_1_stmt4, expression, range(empty_file_filter_1, 3958, 300, 123, 130), "get(() -> {\n  if (Files.isDirectory(file)) {\n    try (Stream<Path> stream=Files.list(file)){\n      return toFileVisitResult(!stream.findFirst().isPresent());\n    }\n   }\n  return toFileVisitResult(Files.size(file) == 0);\n}\n)").
expr(empty_file_filter_1_expr8, lambda_expression, empty_file_filter_1_expr7, (arguments, 0), range(empty_file_filter_1, 3962, 295, 123, 130), "() -> {\n  if (Files.isDirectory(file)) {\n    try (Stream<Path> stream=Files.list(file)){\n      return toFileVisitResult(!stream.findFirst().isPresent());\n    }\n   }\n  return toFileVisitResult(Files.size(file) == 0);\n}").
expr(empty_file_filter_1_expr9, method_invocation, empty_file_filter_1_stmt5, expression, range(empty_file_filter_1, 3986, 23, 124, 124), "Files.isDirectory(file)").
expr(empty_file_filter_1_expr10, variable_declaration_expression, empty_file_filter_1_stmt6, (resources, 0), range(empty_file_filter_1, 4034, 38, 125, 125), "Stream<Path> stream=Files.list(file)").
expr(empty_file_filter_1_expr11, method_invocation, empty_file_filter_1_code28, initializer, range(empty_file_filter_1, 4056, 16, 125, 125), "Files.list(file)").
expr(empty_file_filter_1_expr12, method_invocation, empty_file_filter_1_stmt7, expression, range(empty_file_filter_1, 4103, 50, 126, 126), "toFileVisitResult(!stream.findFirst().isPresent())").
expr(empty_file_filter_1_expr13, prefix_expression, empty_file_filter_1_expr12, (arguments, 0), range(empty_file_filter_1, 4121, 31, 126, 126), "!stream.findFirst().isPresent()").
expr(empty_file_filter_1_expr14, method_invocation, empty_file_filter_1_expr13, operand, range(empty_file_filter_1, 4122, 30, 126, 126), "stream.findFirst().isPresent()").
expr(empty_file_filter_1_expr15, method_invocation, empty_file_filter_1_expr14, expression, range(empty_file_filter_1, 4122, 18, 126, 126), "stream.findFirst()").
%file_file_filter_1 - org.apache.commons.io.filefilter.FileFileFilter
expr(file_file_filter_1_expr1, class_instance_creation, file_file_filter_1_code8, initializer, range(file_file_filter_1, 2476, 20, 74, 74), "new FileFileFilter()").
expr(file_file_filter_1_expr2, method_invocation, file_file_filter_1_stmt1, expression, range(file_file_filter_1, 3058, 13, 100, 100), "file.isFile()").
%name_file_filter_1 - org.apache.commons.io.filefilter.NameFileFilter
expr(name_file_filter_1_expr1, constructor_invocation, name_file_filter_1_block1, (statements, 0), range(name_file_filter_1, 3114, 18, 91, 91), "this(names,null);").
expr(name_file_filter_1_expr2, method_invocation, name_file_filter_1_stmt2, expression, range(name_file_filter_1, 3606, 38, 103, 103), "Objects.requireNonNull(names,\"names\")").
expr(name_file_filter_1_expr3, assignment, name_file_filter_1_stmt3, expression, range(name_file_filter_1, 3654, 46, 104, 104), "this.names=names.toArray(EMPTY_STRING_ARRAY)").
expr(name_file_filter_1_expr4, field_access, name_file_filter_1_expr3, left_hand_side, range(name_file_filter_1, 3654, 10, 104, 104), "this.names").
expr(name_file_filter_1_expr6, this_expression, f_names_891, expression, range(name_file_filter_1, 3654, 4, 104, 104), "this").
expr(name_file_filter_1_expr5, method_invocation, name_file_filter_1_expr3, right_hand_side, range(name_file_filter_1, 3667, 33, 104, 104), "names.toArray(EMPTY_STRING_ARRAY)").
expr(name_file_filter_1_expr10, this_expression, f_io_case_892, expression, range(name_file_filter_1, 3710, 4, 105, 105), "this").
expr(name_file_filter_1_expr7, assignment, name_file_filter_1_stmt4, expression, range(name_file_filter_1, 3710, 30, 105, 105), "this.ioCase=toIOCase(ioCase)").
expr(name_file_filter_1_expr8, field_access, name_file_filter_1_expr7, left_hand_side, range(name_file_filter_1, 3710, 11, 105, 105), "this.ioCase").
expr(name_file_filter_1_expr9, method_invocation, name_file_filter_1_expr7, right_hand_side, range(name_file_filter_1, 3724, 16, 105, 105), "toIOCase(ioCase)").
expr(name_file_filter_1_expr11, constructor_invocation, name_file_filter_1_block3, (statements, 0), range(name_file_filter_1, 4018, 29, 115, 115), "this(name,IOCase.SENSITIVE);").
expr(name_file_filter_1_expr12, constructor_invocation, name_file_filter_1_block4, (statements, 0), range(name_file_filter_1, 4491, 30, 129, 129), "this(names,IOCase.SENSITIVE);").
expr(name_file_filter_1_expr13, method_invocation, name_file_filter_1_stmt7, expression, range(name_file_filter_1, 4890, 36, 140, 140), "Objects.requireNonNull(name,\"name\")").
expr(name_file_filter_1_expr15, field_access, name_file_filter_1_expr14, left_hand_side, range(name_file_filter_1, 4936, 10, 141, 141), "this.names").
expr(name_file_filter_1_expr14, assignment, name_file_filter_1_stmt8, expression, range(name_file_filter_1, 4936, 32, 141, 141), "this.names=new String[]{name}").
expr(name_file_filter_1_expr17, this_expression, f_names_891, expression, range(name_file_filter_1, 4936, 4, 141, 141), "this").
expr(name_file_filter_1_expr16, array_creation, name_file_filter_1_expr14, right_hand_side, range(name_file_filter_1, 4949, 19, 141, 141), "new String[]{name}").
expr(name_file_filter_1_expr18, array_initializer, name_file_filter_1_expr16, initializer, range(name_file_filter_1, 4962, 6, 141, 141), "{name}").
expr(name_file_filter_1_expr22, this_expression, f_io_case_892, expression, range(name_file_filter_1, 4978, 4, 142, 142), "this").
expr(name_file_filter_1_expr20, field_access, name_file_filter_1_expr19, left_hand_side, range(name_file_filter_1, 4978, 11, 142, 142), "this.ioCase").
expr(name_file_filter_1_expr19, assignment, name_file_filter_1_stmt9, expression, range(name_file_filter_1, 4978, 30, 142, 142), "this.ioCase=toIOCase(ioCase)").
expr(name_file_filter_1_expr21, method_invocation, name_file_filter_1_expr19, right_hand_side, range(name_file_filter_1, 4992, 16, 142, 142), "toIOCase(ioCase)").
expr(name_file_filter_1_expr23, method_invocation, name_file_filter_1_stmt10, expression, range(name_file_filter_1, 5412, 38, 153, 153), "Objects.requireNonNull(names,\"names\")").
expr(name_file_filter_1_expr27, this_expression, f_names_891, expression, range(name_file_filter_1, 5460, 4, 154, 154), "this").
expr(name_file_filter_1_expr25, field_access, name_file_filter_1_expr24, left_hand_side, range(name_file_filter_1, 5460, 10, 154, 154), "this.names").
expr(name_file_filter_1_expr24, assignment, name_file_filter_1_stmt11, expression, range(name_file_filter_1, 5460, 26, 154, 154), "this.names=names.clone()").
expr(name_file_filter_1_expr26, method_invocation, name_file_filter_1_expr24, right_hand_side, range(name_file_filter_1, 5473, 13, 154, 154), "names.clone()").
expr(name_file_filter_1_expr31, this_expression, f_io_case_892, expression, range(name_file_filter_1, 5496, 4, 155, 155), "this").
expr(name_file_filter_1_expr29, field_access, name_file_filter_1_expr28, left_hand_side, range(name_file_filter_1, 5496, 11, 155, 155), "this.ioCase").
expr(name_file_filter_1_expr28, assignment, name_file_filter_1_stmt12, expression, range(name_file_filter_1, 5496, 30, 155, 155), "this.ioCase=toIOCase(ioCase)").
expr(name_file_filter_1_expr30, method_invocation, name_file_filter_1_expr28, right_hand_side, range(name_file_filter_1, 5510, 16, 155, 155), "toIOCase(ioCase)").
expr(name_file_filter_1_expr32, method_invocation, name_file_filter_1_stmt13, expression, range(name_file_filter_1, 5762, 30, 166, 166), "acceptBaseName(file.getName())").
expr(name_file_filter_1_expr33, method_invocation, name_file_filter_1_expr32, (arguments, 0), range(name_file_filter_1, 5777, 14, 166, 166), "file.getName()").
expr(name_file_filter_1_expr34, method_invocation, name_file_filter_1_stmt14, expression, range(name_file_filter_1, 6412, 68, 190, 190), "toFileVisitResult(acceptBaseName(PathUtils.getFileNameString(path)))").
expr(name_file_filter_1_expr35, method_invocation, name_file_filter_1_expr34, (arguments, 0), range(name_file_filter_1, 6430, 49, 190, 190), "acceptBaseName(PathUtils.getFileNameString(path))").
expr(name_file_filter_1_expr36, method_invocation, name_file_filter_1_expr35, (arguments, 0), range(name_file_filter_1, 6445, 33, 190, 190), "PathUtils.getFileNameString(path)").
expr(name_file_filter_1_expr37, method_invocation, name_file_filter_1_stmt15, expression, range(name_file_filter_1, 6564, 77, 194, 194), "Stream.of(names).anyMatch(testName -> ioCase.checkEquals(baseName,testName))").
expr(name_file_filter_1_expr39, method_invocation, name_file_filter_1_expr37, expression, range(name_file_filter_1, 6564, 16, 194, 194), "Stream.of(names)").
expr(name_file_filter_1_expr38, lambda_expression, name_file_filter_1_expr37, (arguments, 0), range(name_file_filter_1, 6590, 50, 194, 194), "testName -> ioCase.checkEquals(baseName,testName)").
expr(name_file_filter_1_expr40, method_invocation, name_file_filter_1_expr38, body, range(name_file_filter_1, 6602, 38, 194, 194), "ioCase.checkEquals(baseName,testName)").
expr(name_file_filter_1_expr41, method_invocation, name_file_filter_1_stmt16, expression, range(name_file_filter_1, 6716, 38, 198, 198), "IOCase.value(ioCase,IOCase.SENSITIVE)").
expr(name_file_filter_1_expr42, class_instance_creation, name_file_filter_1_code45, initializer, range(name_file_filter_1, 6967, 19, 208, 208), "new StringBuilder()").
expr(name_file_filter_1_expr43, method_invocation, name_file_filter_1_stmt18, expression, range(name_file_filter_1, 6996, 31, 209, 209), "buffer.append(super.toString())").
expr(name_file_filter_1_expr44, super_method_invocation, name_file_filter_1_expr43, (arguments, 0), range(name_file_filter_1, 7010, 16, 209, 209), "super.toString()").
expr(name_file_filter_1_expr45, method_invocation, name_file_filter_1_stmt19, expression, range(name_file_filter_1, 7037, 18, 210, 210), "buffer.append(\"(\")").
expr(name_file_filter_1_expr46, method_invocation, name_file_filter_1_stmt20, expression, range(name_file_filter_1, 7065, 21, 211, 211), "append(names,buffer)").
expr(name_file_filter_1_expr47, method_invocation, name_file_filter_1_stmt21, expression, range(name_file_filter_1, 7096, 18, 212, 212), "buffer.append(\")\")").
expr(name_file_filter_1_expr48, method_invocation, name_file_filter_1_stmt22, expression, range(name_file_filter_1, 7131, 17, 213, 213), "buffer.toString()").
%file_filter_utils_1 - org.apache.commons.io.filefilter.FileFilterUtils
expr(file_filter_utils_1_expr1, method_invocation, file_filter_utils_1_code8, initializer, range(file_filter_utils_1, 1654, 77, 47, 48), "notFileFilter(and(directoryFileFilter(),nameFileFilter(\"CVS\")))").
expr(file_filter_utils_1_expr2, method_invocation, file_filter_utils_1_expr1, (arguments, 0), range(file_filter_utils_1, 1681, 49, 48, 48), "and(directoryFileFilter(),nameFileFilter(\"CVS\"))").
expr(file_filter_utils_1_expr3, method_invocation, file_filter_utils_1_expr2, (arguments, 0), range(file_filter_utils_1, 1685, 21, 48, 48), "directoryFileFilter()").
expr(file_filter_utils_1_expr4, method_invocation, file_filter_utils_1_expr2, (arguments, 1), range(file_filter_utils_1, 1708, 21, 48, 48), "nameFileFilter(\"CVS\")").
expr(file_filter_utils_1_expr5, method_invocation, file_filter_utils_1_code14, initializer, range(file_filter_utils_1, 1833, 78, 51, 52), "notFileFilter(and(directoryFileFilter(),nameFileFilter(\".svn\")))").
expr(file_filter_utils_1_expr6, method_invocation, file_filter_utils_1_expr5, (arguments, 0), range(file_filter_utils_1, 1860, 50, 52, 52), "and(directoryFileFilter(),nameFileFilter(\".svn\"))").
expr(file_filter_utils_1_expr7, method_invocation, file_filter_utils_1_expr6, (arguments, 0), range(file_filter_utils_1, 1864, 21, 52, 52), "directoryFileFilter()").
expr(file_filter_utils_1_expr8, method_invocation, file_filter_utils_1_expr6, (arguments, 1), range(file_filter_utils_1, 1887, 22, 52, 52), "nameFileFilter(\".svn\")").
expr(file_filter_utils_1_expr9, class_instance_creation, file_filter_utils_1_stmt1, expression, range(file_filter_utils_1, 5255, 34, 146, 146), "new AndFileFilter(toList(filters))").
expr(file_filter_utils_1_expr10, method_invocation, file_filter_utils_1_expr9, (arguments, 0), range(file_filter_utils_1, 5273, 15, 146, 146), "toList(filters)").
expr(file_filter_utils_1_expr11, class_instance_creation, file_filter_utils_1_stmt3, expression, range(file_filter_utils_1, 20617, 24, 568, 568), "new NameFileFilter(name)").
expr(file_filter_utils_1_expr12, class_instance_creation, file_filter_utils_1_stmt4, expression, range(file_filter_utils_1, 21060, 32, 581, 581), "new NameFileFilter(name,ioCase)").
expr(file_filter_utils_1_expr13, method_invocation, file_filter_utils_1_stmt5, expression, range(file_filter_utils_1, 21393, 15, 592, 592), "filter.negate()").
expr(file_filter_utils_1_expr18, method_invocation, file_filter_utils_1_expr16, expression, range(file_filter_utils_1, 25973, 53, 724, 724), "Stream.of(Objects.requireNonNull(filters,\"filters\"))").
expr(file_filter_utils_1_expr16, method_invocation, file_filter_utils_1_expr14, expression, range(file_filter_utils_1, 25973, 82, 724, 724), "Stream.of(Objects.requireNonNull(filters,\"filters\")).map(Objects::requireNonNull)").
expr(file_filter_utils_1_expr14, method_invocation, file_filter_utils_1_stmt6, expression, range(file_filter_utils_1, 25973, 111, 724, 724), "Stream.of(Objects.requireNonNull(filters,\"filters\")).map(Objects::requireNonNull).collect(Collectors.toList())").
expr(file_filter_utils_1_expr19, method_invocation, file_filter_utils_1_expr18, (arguments, 0), range(file_filter_utils_1, 25983, 42, 724, 724), "Objects.requireNonNull(filters,\"filters\")").
expr(file_filter_utils_1_expr17, expression_method_reference, file_filter_utils_1_expr16, (arguments, 0), range(file_filter_utils_1, 26031, 23, 724, 724), "Objects::requireNonNull").
expr(file_filter_utils_1_expr15, method_invocation, file_filter_utils_1_expr14, (arguments, 0), range(file_filter_utils_1, 26064, 19, 724, 724), "Collectors.toList()").
%file_system_1 - org.apache.commons.io.FileSystem
expr(file_system_1_expr1, array_creation, file_system_1_code4, (arguments, 5), range(file_system_1, 1433, 15, 39, 39), "new int[]{0}").
expr(file_system_1_expr2, array_initializer, file_system_1_expr1, initializer, range(file_system_1, 1443, 5, 39, 39), "{0}").
expr(file_system_1_expr3, array_creation, file_system_1_code4, (arguments, 6), range(file_system_1, 1450, 15, 39, 39), "new String[]{}").
expr(file_system_1_expr4, array_initializer, file_system_1_expr3, initializer, range(file_system_1, 1463, 2, 39, 39), "{}").
expr(file_system_1_expr5, array_creation, file_system_1_code11, (arguments, 5), range(file_system_1, 1569, 172, 44, 51), "new int[]{0,'/'}").
expr(file_system_1_expr6, array_initializer, file_system_1_expr5, initializer, range(file_system_1, 1579, 162, 44, 51), "{0,'/'}").
expr(file_system_1_expr7, array_creation, file_system_1_code15, (arguments, 5), range(file_system_1, 1864, 189, 56, 64), "new int[]{0,'/',':'}").
expr(file_system_1_expr8, array_initializer, file_system_1_expr7, initializer, range(file_system_1, 1874, 179, 56, 64), "{0,'/',':'}").
expr(file_system_1_expr9, method_invocation, file_system_1_code25, initializer, range(file_system_1, 3733, 25, 102, 102), "getOsMatchesName(\"Linux\")").
expr(file_system_1_expr10, method_invocation, file_system_1_code31, initializer, range(file_system_1, 3986, 23, 112, 112), "getOsMatchesName(\"Mac\")").
expr(file_system_1_expr11, method_invocation, file_system_1_code37, initializer, range(file_system_1, 4375, 40, 127, 127), "getOsMatchesName(OS_NAME_WINDOWS_PREFIX)").
expr(file_system_1_expr12, method_invocation, file_system_1_code43, initializer, range(file_system_1, 4511, 9, 132, 132), "current()").
expr(file_system_1_expr13, method_invocation, file_system_1_stmt4, expression, range(file_system_1, 5360, 57, 169, 169), "isOsNameMatch(getSystemProperty(\"os.name\"),osNamePrefix)").
expr(file_system_1_expr14, method_invocation, file_system_1_expr13, (arguments, 0), range(file_system_1, 5374, 28, 169, 169), "getSystemProperty(\"os.name\")").
expr(file_system_1_expr15, method_invocation, file_system_1_stmt6, expression, range(file_system_1, 5976, 28, 187, 187), "System.getProperty(property)").
expr(file_system_1_expr16, infix_expression, file_system_1_stmt7, expression, range(file_system_1, 9838, 14, 282, 282), "osName == null").
expr(file_system_1_expr17, method_invocation, file_system_1_stmt8, expression, range(file_system_1, 9907, 81, 285, 285), "osName.toUpperCase(Locale.ROOT).startsWith(osNamePrefix.toUpperCase(Locale.ROOT))").
expr(file_system_1_expr19, method_invocation, file_system_1_expr17, expression, range(file_system_1, 9907, 31, 285, 285), "osName.toUpperCase(Locale.ROOT)").
expr(file_system_1_expr18, method_invocation, file_system_1_expr17, (arguments, 0), range(file_system_1, 9950, 37, 285, 285), "osNamePrefix.toUpperCase(Locale.ROOT)").
expr(file_system_1_expr20, assignment, file_system_1_stmt9, expression, range(file_system_1, 12003, 26, 329, 329), "this.blockSize=blockSize").
expr(file_system_1_expr21, field_access, file_system_1_expr20, left_hand_side, range(file_system_1, 12003, 14, 329, 329), "this.blockSize").
expr(file_system_1_expr22, this_expression, f_block_size_30, expression, range(file_system_1, 12003, 4, 329, 329), "this").
expr(file_system_1_expr24, field_access, file_system_1_expr23, left_hand_side, range(file_system_1, 12039, 22, 330, 330), "this.maxFileNameLength").
expr(file_system_1_expr25, this_expression, f_max_file_name_length_31, expression, range(file_system_1, 12039, 4, 330, 330), "this").
expr(file_system_1_expr23, assignment, file_system_1_stmt10, expression, range(file_system_1, 12039, 38, 330, 330), "this.maxFileNameLength=maxFileLength").
expr(file_system_1_expr28, this_expression, f_max_path_length_32, expression, range(file_system_1, 12087, 4, 331, 331), "this").
expr(file_system_1_expr26, assignment, file_system_1_stmt11, expression, range(file_system_1, 12087, 34, 331, 331), "this.maxPathLength=maxPathLength").
expr(file_system_1_expr27, field_access, file_system_1_expr26, left_hand_side, range(file_system_1, 12087, 18, 331, 331), "this.maxPathLength").
expr(file_system_1_expr32, this_expression, f_illegal_file_name_chars_33, expression, range(file_system_1, 12131, 4, 332, 332), "this").
expr(file_system_1_expr30, field_access, file_system_1_expr29, left_hand_side, range(file_system_1, 12131, 25, 332, 332), "this.illegalFileNameChars").
expr(file_system_1_expr29, assignment, file_system_1_stmt12, expression, range(file_system_1, 12131, 96, 332, 332), "this.illegalFileNameChars=Objects.requireNonNull(illegalFileNameChars,\"illegalFileNameChars\")").
expr(file_system_1_expr31, method_invocation, file_system_1_expr29, right_hand_side, range(file_system_1, 12159, 68, 332, 332), "Objects.requireNonNull(illegalFileNameChars,\"illegalFileNameChars\")").
expr(file_system_1_expr36, this_expression, f_reserved_file_names_34, expression, range(file_system_1, 12237, 4, 333, 333), "this").
expr(file_system_1_expr33, assignment, file_system_1_stmt13, expression, range(file_system_1, 12237, 87, 333, 333), "this.reservedFileNames=Objects.requireNonNull(reservedFileNames,\"reservedFileNames\")").
expr(file_system_1_expr34, field_access, file_system_1_expr33, left_hand_side, range(file_system_1, 12237, 22, 333, 333), "this.reservedFileNames").
expr(file_system_1_expr35, method_invocation, file_system_1_expr33, right_hand_side, range(file_system_1, 12262, 62, 333, 333), "Objects.requireNonNull(reservedFileNames,\"reservedFileNames\")").
expr(file_system_1_expr39, this_expression, f_reserved_file_names_extensions_35, expression, range(file_system_1, 12334, 4, 334, 334), "this").
expr(file_system_1_expr37, assignment, file_system_1_stmt14, expression, range(file_system_1, 12334, 62, 334, 334), "this.reservedFileNamesExtensions=reservedFileNamesExtensions").
expr(file_system_1_expr38, field_access, file_system_1_expr37, left_hand_side, range(file_system_1, 12334, 32, 334, 334), "this.reservedFileNamesExtensions").
expr(file_system_1_expr42, this_expression, f_case_sensitive_36, expression, range(file_system_1, 12406, 4, 335, 335), "this").
expr(file_system_1_expr40, assignment, file_system_1_stmt15, expression, range(file_system_1, 12406, 34, 335, 335), "this.caseSensitive=caseSensitive").
expr(file_system_1_expr41, field_access, file_system_1_expr40, left_hand_side, range(file_system_1, 12406, 18, 335, 335), "this.caseSensitive").
expr(file_system_1_expr43, assignment, file_system_1_stmt16, expression, range(file_system_1, 12450, 36, 336, 336), "this.casePreserving=casePreserving").
expr(file_system_1_expr44, field_access, file_system_1_expr43, left_hand_side, range(file_system_1, 12450, 19, 336, 336), "this.casePreserving").
expr(file_system_1_expr45, this_expression, f_case_preserving_37, expression, range(file_system_1, 12450, 4, 336, 336), "this").
expr(file_system_1_expr48, this_expression, f_supports_drive_letter_38, expression, range(file_system_1, 12496, 4, 337, 337), "this").
expr(file_system_1_expr46, assignment, file_system_1_stmt17, expression, range(file_system_1, 12496, 46, 337, 337), "this.supportsDriveLetter=supportsDriveLetter").
expr(file_system_1_expr47, field_access, file_system_1_expr46, left_hand_side, range(file_system_1, 12496, 24, 337, 337), "this.supportsDriveLetter").
expr(file_system_1_expr51, this_expression, f_name_separator_39, expression, range(file_system_1, 12552, 4, 338, 338), "this").
expr(file_system_1_expr50, field_access, file_system_1_expr49, left_hand_side, range(file_system_1, 12552, 18, 338, 338), "this.nameSeparator").
expr(file_system_1_expr49, assignment, file_system_1_stmt18, expression, range(file_system_1, 12552, 34, 338, 338), "this.nameSeparator=nameSeparator").
expr(file_system_1_expr53, field_access, file_system_1_expr52, left_hand_side, range(file_system_1, 12596, 23, 339, 339), "this.nameSeparatorOther").
expr(file_system_1_expr52, assignment, file_system_1_stmt19, expression, range(file_system_1, 12596, 68, 339, 339), "this.nameSeparatorOther=FilenameUtils.flipSeparator(nameSeparator)").
expr(file_system_1_expr55, this_expression, f_name_separator_other_40, expression, range(file_system_1, 12596, 4, 339, 339), "this").
expr(file_system_1_expr54, method_invocation, file_system_1_expr52, right_hand_side, range(file_system_1, 12622, 42, 339, 339), "FilenameUtils.flipSeparator(nameSeparator)").
%can_read_file_filter_1 - org.apache.commons.io.filefilter.CanReadFileFilter
expr(can_read_file_filter_1_expr1, class_instance_creation, can_read_file_filter_1_code8, initializer, range(can_read_file_filter_1, 2335, 23, 71, 71), "new CanReadFileFilter()").
expr(can_read_file_filter_1_expr2, method_invocation, can_read_file_filter_1_code15, initializer, range(can_read_file_filter_1, 2472, 17, 74, 74), "CAN_READ.negate()").
expr(can_read_file_filter_1_expr3, method_invocation, can_read_file_filter_1_code21, initializer, range(can_read_file_filter_1, 2598, 45, 77, 77), "CAN_READ.and(CanWriteFileFilter.CANNOT_WRITE)").
expr(can_read_file_filter_1_expr4, method_invocation, can_read_file_filter_1_stmt1, expression, range(can_read_file_filter_1, 3068, 14, 95, 95), "file.canRead()").
expr(can_read_file_filter_1_expr5, method_invocation, can_read_file_filter_1_stmt2, expression, range(can_read_file_filter_1, 3416, 41, 107, 107), "toFileVisitResult(Files.isReadable(file))").
expr(can_read_file_filter_1_expr6, method_invocation, can_read_file_filter_1_expr5, (arguments, 0), range(can_read_file_filter_1, 3434, 22, 107, 107), "Files.isReadable(file)").
%hidden_file_filter_1 - org.apache.commons.io.filefilter.HiddenFileFilter
expr(hidden_file_filter_1_expr1, class_instance_creation, hidden_file_filter_1_code8, initializer, range(hidden_file_filter_1, 2698, 22, 82, 82), "new HiddenFileFilter()").
expr(hidden_file_filter_1_expr2, method_invocation, hidden_file_filter_1_code15, initializer, range(hidden_file_filter_1, 2897, 15, 87, 87), "HIDDEN.negate()").
expr(hidden_file_filter_1_expr3, method_invocation, hidden_file_filter_1_stmt1, expression, range(hidden_file_filter_1, 3275, 15, 104, 104), "file.isHidden()").
expr(hidden_file_filter_1_expr4, method_invocation, hidden_file_filter_1_stmt2, expression, range(hidden_file_filter_1, 3635, 50, 117, 117), "get(() -> toFileVisitResult(Files.isHidden(file)))").
expr(hidden_file_filter_1_expr5, lambda_expression, hidden_file_filter_1_expr4, (arguments, 0), range(hidden_file_filter_1, 3639, 45, 117, 117), "() -> toFileVisitResult(Files.isHidden(file))").
expr(hidden_file_filter_1_expr6, method_invocation, hidden_file_filter_1_expr5, body, range(hidden_file_filter_1, 3645, 39, 117, 117), "toFileVisitResult(Files.isHidden(file))").
expr(hidden_file_filter_1_expr7, method_invocation, hidden_file_filter_1_expr6, (arguments, 0), range(hidden_file_filter_1, 3663, 20, 117, 117), "Files.isHidden(file)").
%abstract_file_filter_1 - org.apache.commons.io.filefilter.AbstractFileFilter
expr(abstract_file_filter_1_expr1, conditional_expression, abstract_file_filter_1_stmt1, expression, range(abstract_file_filter_1, 1771, 61, 45, 45), "accept ? FileVisitResult.CONTINUE : FileVisitResult.TERMINATE").
expr(abstract_file_filter_1_expr2, constructor_invocation, abstract_file_filter_1_block2, (statements, 0), range(abstract_file_filter_1, 2143, 58, 62, 62), "this(FileVisitResult.CONTINUE,FileVisitResult.TERMINATE);").
expr(abstract_file_filter_1_expr5, this_expression, f_on_accept_724, expression, range(abstract_file_filter_1, 2492, 4, 73, 73), "this").
expr(abstract_file_filter_1_expr4, field_access, abstract_file_filter_1_expr3, left_hand_side, range(abstract_file_filter_1, 2492, 13, 73, 73), "this.onAccept").
expr(abstract_file_filter_1_expr3, assignment, abstract_file_filter_1_stmt3, expression, range(abstract_file_filter_1, 2492, 24, 73, 73), "this.onAccept=onAccept").
expr(abstract_file_filter_1_expr7, field_access, abstract_file_filter_1_expr6, left_hand_side, range(abstract_file_filter_1, 2526, 13, 74, 74), "this.onReject").
expr(abstract_file_filter_1_expr6, assignment, abstract_file_filter_1_stmt4, expression, range(abstract_file_filter_1, 2526, 24, 74, 74), "this.onReject=onReject").
expr(abstract_file_filter_1_expr8, this_expression, f_on_reject_725, expression, range(abstract_file_filter_1, 2526, 4, 74, 74), "this").
expr(abstract_file_filter_1_expr9, method_invocation, abstract_file_filter_1_stmt5, expression, range(abstract_file_filter_1, 3245, 36, 98, 98), "Objects.requireNonNull(name,\"name\")").
expr(abstract_file_filter_1_expr10, method_invocation, abstract_file_filter_1_stmt6, expression, range(abstract_file_filter_1, 3298, 27, 99, 99), "accept(new File(dir,name))").
expr(abstract_file_filter_1_expr11, class_instance_creation, abstract_file_filter_1_expr10, (arguments, 0), range(abstract_file_filter_1, 3305, 19, 99, 99), "new File(dir,name)").
expr(abstract_file_filter_1_expr12, variable_declaration_expression, abstract_file_filter_1_stmt7, (initializers, 0), range(abstract_file_filter_1, 3661, 9, 112, 112), "int i=0").
expr(abstract_file_filter_1_expr13, infix_expression, abstract_file_filter_1_stmt7, expression, range(abstract_file_filter_1, 3672, 16, 112, 112), "i < array.length").
expr(abstract_file_filter_1_expr14, postfix_expression, abstract_file_filter_1_stmt7, (updaters, 0), range(abstract_file_filter_1, 3690, 3, 112, 112), "i++").
expr(abstract_file_filter_1_expr15, infix_expression, abstract_file_filter_1_stmt8, expression, range(abstract_file_filter_1, 3713, 5, 113, 113), "i > 0").
expr(abstract_file_filter_1_expr16, method_invocation, abstract_file_filter_1_stmt9, expression, range(abstract_file_filter_1, 3738, 18, 114, 114), "buffer.append(\",\")").
expr(abstract_file_filter_1_expr17, method_invocation, abstract_file_filter_1_stmt10, expression, range(abstract_file_filter_1, 3784, 23, 116, 116), "buffer.append(array[i])").
expr(abstract_file_filter_1_expr18, array_access, abstract_file_filter_1_expr17, (arguments, 0), range(abstract_file_filter_1, 3798, 8, 116, 116), "array[i]").
expr(abstract_file_filter_1_expr19, method_invocation, abstract_file_filter_1_stmt12, expression, range(abstract_file_filter_1, 3929, 14, 122, 122), "supplier.get()").
expr(abstract_file_filter_1_expr20, conditional_expression, abstract_file_filter_1_stmt13, expression, range(abstract_file_filter_1, 4876, 28, 156, 156), "accept ? onAccept : onReject").
expr(abstract_file_filter_1_expr21, method_invocation, abstract_file_filter_1_stmt14, expression, range(abstract_file_filter_1, 5096, 26, 166, 166), "getClass().getSimpleName()").
expr(abstract_file_filter_1_expr22, method_invocation, abstract_file_filter_1_expr21, expression, range(abstract_file_filter_1, 5096, 10, 166, 166), "getClass()").
%abstract_filter_test_1 - org.apache.commons.io.filefilter.AbstractFilterTest
expr(abstract_filter_test_1_expr1, method_invocation, abstract_filter_test_1_stmt1, expression, range(abstract_filter_test_1, 1774, 128, 50, 50), "assertEquals(expected,filter.accept(file),\"Filter(File) \" + filter.getClass().getName() + \" not \"+ expected+ \" for \"+ file)").
expr(abstract_filter_test_1_expr2, method_invocation, abstract_filter_test_1_expr1, (arguments, 1), range(abstract_filter_test_1, 1797, 19, 50, 50), "filter.accept(file)").
expr(abstract_filter_test_1_expr3, infix_expression, abstract_filter_test_1_expr1, (arguments, 2), range(abstract_filter_test_1, 1818, 83, 50, 50), "\"Filter(File) \" + filter.getClass().getName() + \" not \"+ expected+ \" for \"+ file").
expr(abstract_filter_test_1_expr4, method_invocation, abstract_filter_test_1_expr3, right_operand, range(abstract_filter_test_1, 1836, 27, 50, 50), "filter.getClass().getName()").
expr(abstract_filter_test_1_expr5, method_invocation, abstract_filter_test_1_expr4, expression, range(abstract_filter_test_1, 1836, 17, 50, 50), "filter.getClass()").
expr(abstract_filter_test_1_expr6, method_invocation, abstract_filter_test_1_stmt2, expression, range(abstract_filter_test_1, 3364, 180, 73, 74), "assertEquals(expectedFileVisitResult,filter.accept(path,null),\"Filter(Path) \" + filter.getClass().getName() + \" not \"+ expectedFileVisitResult+ \" for \"+ path)").
expr(abstract_filter_test_1_expr7, method_invocation, abstract_filter_test_1_expr6, (arguments, 1), range(abstract_filter_test_1, 3402, 25, 73, 73), "filter.accept(path,null)").
expr(abstract_filter_test_1_expr8, infix_expression, abstract_filter_test_1_expr6, (arguments, 2), range(abstract_filter_test_1, 3445, 98, 74, 74), "\"Filter(Path) \" + filter.getClass().getName() + \" not \"+ expectedFileVisitResult+ \" for \"+ path").
%and_file_filter_1 - org.apache.commons.io.filefilter.AndFileFilter
expr(and_file_filter_1_expr2, field_access, and_file_filter_1_expr1, left_hand_side, range(and_file_filter_1, 2275, 16, 68, 68), "this.fileFilters").
expr(and_file_filter_1_expr1, assignment, and_file_filter_1_stmt1, expression, range(and_file_filter_1, 2275, 69, 68, 68), "this.fileFilters=Objects.requireNonNull(initialList,\"initialList\")").
expr(and_file_filter_1_expr4, this_expression, f_file_filters_756, expression, range(and_file_filter_1, 2275, 4, 68, 68), "this").
expr(and_file_filter_1_expr3, method_invocation, and_file_filter_1_expr1, right_hand_side, range(and_file_filter_1, 2294, 50, 68, 68), "Objects.requireNonNull(initialList,\"initialList\")").
expr(and_file_filter_1_expr5, constructor_invocation, and_file_filter_1_block2, (statements, 0), range(and_file_filter_1, 2557, 39, 77, 77), "this(new ArrayList<>(initialCapacity));").
expr(and_file_filter_1_expr6, class_instance_creation, and_file_filter_1_stmt2, (arguments, 0), range(and_file_filter_1, 2562, 32, 77, 77), "new ArrayList<>(initialCapacity)").
expr(and_file_filter_1_expr7, constructor_invocation, and_file_filter_1_block3, (statements, 0), range(and_file_filter_1, 3294, 8, 99, 99), "this(2);").
expr(and_file_filter_1_expr8, method_invocation, and_file_filter_1_stmt4, expression, range(and_file_filter_1, 3311, 22, 100, 100), "addFileFilter(filter1)").
expr(and_file_filter_1_expr9, method_invocation, and_file_filter_1_stmt5, expression, range(and_file_filter_1, 3343, 22, 101, 101), "addFileFilter(filter2)").
expr(and_file_filter_1_expr10, constructor_invocation, and_file_filter_1_block4, (statements, 0), range(and_file_filter_1, 3658, 74, 112, 112), "this(new ArrayList<>(Objects.requireNonNull(fileFilters,\"fileFilters\")));").
expr(and_file_filter_1_expr11, class_instance_creation, and_file_filter_1_stmt6, (arguments, 0), range(and_file_filter_1, 3663, 67, 112, 112), "new ArrayList<>(Objects.requireNonNull(fileFilters,\"fileFilters\"))").
expr(and_file_filter_1_expr12, method_invocation, and_file_filter_1_expr11, (arguments, 0), range(and_file_filter_1, 3679, 50, 112, 112), "Objects.requireNonNull(fileFilters,\"fileFilters\")").
expr(and_file_filter_1_expr16, this_expression, f_file_filters_756, expression, range(and_file_filter_1, 4667, 4, 146, 146), "this").
expr(and_file_filter_1_expr15, field_access, and_file_filter_1_expr13, expression, range(and_file_filter_1, 4667, 16, 146, 146), "this.fileFilters").
expr(and_file_filter_1_expr13, method_invocation, and_file_filter_1_stmt7, expression, range(and_file_filter_1, 4667, 70, 146, 146), "this.fileFilters.add(Objects.requireNonNull(fileFilter,\"fileFilter\"))").
expr(and_file_filter_1_expr14, method_invocation, and_file_filter_1_expr13, (arguments, 0), range(and_file_filter_1, 4688, 48, 146, 146), "Objects.requireNonNull(fileFilter,\"fileFilter\")").
%test_utils_1 - org.apache.commons.io.test.TestUtils
expr(test_utils_1_expr1, variable_declaration_expression, test_utils_1_stmt1, (initializers, 0), range(test_utils_1, 8756, 9, 220, 220), "int i=0").
expr(test_utils_1_expr2, infix_expression, test_utils_1_stmt1, expression, range(test_utils_1, 8767, 8, 220, 220), "i < size").
expr(test_utils_1_expr3, postfix_expression, test_utils_1_stmt1, (updaters, 0), range(test_utils_1, 8777, 3, 220, 220), "i++").
expr(test_utils_1_expr4, method_invocation, test_utils_1_stmt2, expression, range(test_utils_1, 8912, 31, 223, 223), "out.write((byte)(i % 127 + 1))").
expr(test_utils_1_expr5, cast_expression, test_utils_1_expr4, (arguments, 0), range(test_utils_1, 8922, 20, 223, 223), "(byte)(i % 127 + 1)").
expr(test_utils_1_expr6, parenthesized_expression, test_utils_1_expr5, expression, range(test_utils_1, 8929, 13, 223, 223), "(i % 127 + 1)").
expr(test_utils_1_expr7, infix_expression, test_utils_1_expr6, expression, range(test_utils_1, 8930, 11, 223, 223), "i % 127 + 1").
expr(test_utils_1_expr8, infix_expression, test_utils_1_expr7, left_operand, range(test_utils_1, 8930, 7, 223, 223), "i % 127").
%filename_utils_1 - org.apache.commons.io.FilenameUtils
expr(filename_utils_1_expr1, array_initializer, filename_utils_1_code10, initializer, range(filename_utils_1, 3715, 2, 100, 100), "{}").
expr(filename_utils_1_expr2, method_invocation, filename_utils_1_code16, initializer, range(filename_utils_1, 4081, 39, 116, 116), "Character.toString(EXTENSION_SEPARATOR)").
expr(filename_utils_1_expr3, method_invocation, filename_utils_1_code28, initializer, range(filename_utils_1, 4623, 36, 136, 136), "flipSeparator(SYSTEM_NAME_SEPARATOR)").
expr(filename_utils_1_expr4, method_invocation, filename_utils_1_code34, initializer, range(filename_utils_1, 4710, 70, 138, 138), "Pattern.compile(\"^(\\\\d{1,3})\\\\.(\\\\d{1,3})\\\\.(\\\\d{1,3})\\\\.(\\\\d{1,3})$\")").
expr(filename_utils_1_expr5, method_invocation, filename_utils_1_code40, initializer, range(filename_utils_1, 5121, 45, 150, 150), "Pattern.compile(\"^[a-zA-Z0-9][a-zA-Z0-9-]*$\")").
expr(filename_utils_1_expr6, infix_expression, filename_utils_1_stmt1, expression, range(filename_utils_1, 19394, 25, 525, 525), "ch == UNIX_NAME_SEPARATOR").
expr(filename_utils_1_expr7, infix_expression, filename_utils_1_stmt3, expression, range(filename_utils_1, 19488, 28, 528, 528), "ch == WINDOWS_NAME_SEPARATOR").
%file_filter_test_1 - org.apache.commons.io.filefilter.FileFilterTest
expr(file_filter_test_1_expr1, class_instance_creation, file_filter_test_1_code8, initializer, range(file_filter_test_1, 10557, 48, 221, 221), "new File(temporaryFolder,\"read-only-file1.txt\")").
expr(file_filter_test_1_expr2, method_invocation, file_filter_test_1_code12, initializer, range(file_filter_test_1, 10641, 21, 222, 222), "readOnlyFile.toPath()").
expr(file_filter_test_1_expr3, prefix_expression, file_filter_test_1_stmt3, expression, range(file_filter_test_1, 10676, 38, 223, 223), "!readOnlyFile.getParentFile().exists()").
expr(file_filter_test_1_expr4, method_invocation, file_filter_test_1_expr3, operand, range(file_filter_test_1, 10677, 37, 223, 223), "readOnlyFile.getParentFile().exists()").
expr(file_filter_test_1_expr5, method_invocation, file_filter_test_1_expr4, expression, range(file_filter_test_1, 10677, 28, 223, 223), "readOnlyFile.getParentFile()").
expr(file_filter_test_1_expr6, variable_declaration_expression, file_filter_test_1_stmt4, (resources, 0), range(file_filter_test_1, 10841, 100, 226, 226), "BufferedOutputStream output=new BufferedOutputStream(Files.newOutputStream(readOnlyFile.toPath()))").
expr(file_filter_test_1_expr7, class_instance_creation, file_filter_test_1_code14, initializer, range(file_filter_test_1, 10871, 70, 226, 226), "new BufferedOutputStream(Files.newOutputStream(readOnlyFile.toPath()))").
expr(file_filter_test_1_expr8, method_invocation, file_filter_test_1_expr7, (arguments, 0), range(file_filter_test_1, 10896, 44, 226, 226), "Files.newOutputStream(readOnlyFile.toPath())").
expr(file_filter_test_1_expr9, method_invocation, file_filter_test_1_expr8, (arguments, 0), range(file_filter_test_1, 10918, 21, 226, 226), "readOnlyFile.toPath()").
expr(file_filter_test_1_expr10, method_invocation, file_filter_test_1_stmt5, expression, range(file_filter_test_1, 10957, 38, 227, 227), "TestUtils.generateTestData(output,32)").
expr(file_filter_test_1_expr11, method_invocation, file_filter_test_1_stmt6, expression, range(file_filter_test_1, 11015, 38, 229, 229), "assertTrue(readOnlyFile.setReadOnly())").
expr(file_filter_test_1_expr12, method_invocation, file_filter_test_1_expr11, (arguments, 0), range(file_filter_test_1, 11026, 26, 229, 229), "readOnlyFile.setReadOnly()").
expr(file_filter_test_1_expr13, method_invocation, file_filter_test_1_stmt7, expression, range(file_filter_test_1, 11063, 63, 230, 230), "assertFiltering(CanReadFileFilter.CAN_READ,readOnlyFile,true)").
expr(file_filter_test_1_expr14, method_invocation, file_filter_test_1_stmt8, expression, range(file_filter_test_1, 11136, 63, 231, 231), "assertFiltering(CanReadFileFilter.CAN_READ,(File)null,false)").
expr(file_filter_test_1_expr15, cast_expression, file_filter_test_1_expr14, (arguments, 1), range(file_filter_test_1, 11180, 11, 231, 231), "(File)null").
expr(file_filter_test_1_expr16, class_instance_creation, file_filter_test_1_code20, initializer, range(file_filter_test_1, 12079, 48, 247, 247), "new File(temporaryFolder,\"read-only-file2.txt\")").
expr(file_filter_test_1_expr17, method_invocation, file_filter_test_1_code24, initializer, range(file_filter_test_1, 12163, 21, 248, 248), "readOnlyFile.toPath()").
expr(file_filter_test_1_expr18, prefix_expression, file_filter_test_1_stmt11, expression, range(file_filter_test_1, 12198, 38, 249, 249), "!readOnlyFile.getParentFile().exists()").
expr(file_filter_test_1_expr19, method_invocation, file_filter_test_1_expr18, operand, range(file_filter_test_1, 12199, 37, 249, 249), "readOnlyFile.getParentFile().exists()").
expr(file_filter_test_1_expr20, method_invocation, file_filter_test_1_expr19, expression, range(file_filter_test_1, 12199, 28, 249, 249), "readOnlyFile.getParentFile()").
expr(file_filter_test_1_expr21, variable_declaration_expression, file_filter_test_1_stmt12, (resources, 0), range(file_filter_test_1, 12363, 100, 252, 252), "BufferedOutputStream output=new BufferedOutputStream(Files.newOutputStream(readOnlyFile.toPath()))").
expr(file_filter_test_1_expr22, class_instance_creation, file_filter_test_1_code26, initializer, range(file_filter_test_1, 12393, 70, 252, 252), "new BufferedOutputStream(Files.newOutputStream(readOnlyFile.toPath()))").
expr(file_filter_test_1_expr23, method_invocation, file_filter_test_1_expr22, (arguments, 0), range(file_filter_test_1, 12418, 44, 252, 252), "Files.newOutputStream(readOnlyFile.toPath())").
expr(file_filter_test_1_expr24, method_invocation, file_filter_test_1_expr23, (arguments, 0), range(file_filter_test_1, 12440, 21, 252, 252), "readOnlyFile.toPath()").
expr(file_filter_test_1_expr25, method_invocation, file_filter_test_1_stmt13, expression, range(file_filter_test_1, 12479, 38, 253, 253), "TestUtils.generateTestData(output,32)").
expr(file_filter_test_1_expr26, method_invocation, file_filter_test_1_stmt14, expression, range(file_filter_test_1, 12537, 38, 255, 255), "assertTrue(readOnlyFile.setReadOnly())").
expr(file_filter_test_1_expr27, method_invocation, file_filter_test_1_expr26, (arguments, 0), range(file_filter_test_1, 12548, 26, 255, 255), "readOnlyFile.setReadOnly()").
expr(file_filter_test_1_expr28, method_invocation, file_filter_test_1_stmt15, expression, range(file_filter_test_1, 12585, 68, 256, 256), "assertFiltering(CanWriteFileFilter.CAN_WRITE,temporaryFolder,true)").
expr(file_filter_test_1_expr29, method_invocation, file_filter_test_1_stmt16, expression, range(file_filter_test_1, 12663, 66, 257, 257), "assertFiltering(CanWriteFileFilter.CAN_WRITE,readOnlyFile,false)").
expr(file_filter_test_1_expr30, method_invocation, file_filter_test_1_stmt17, expression, range(file_filter_test_1, 12739, 65, 258, 258), "assertFiltering(CanWriteFileFilter.CAN_WRITE,(File)null,false)").
expr(file_filter_test_1_expr31, cast_expression, file_filter_test_1_expr30, (arguments, 1), range(file_filter_test_1, 12785, 11, 258, 258), "(File)null").
expr(file_filter_test_1_expr32, class_instance_creation, file_filter_test_1_code32, initializer, range(file_filter_test_1, 19991, 38, 403, 403), "new File(temporaryFolder,\"empty-dir\")").
expr(file_filter_test_1_expr33, method_invocation, file_filter_test_1_code36, initializer, range(file_filter_test_1, 20065, 21, 404, 404), "emptyDirFile.toPath()").
expr(file_filter_test_1_expr34, method_invocation, file_filter_test_1_stmt20, expression, range(file_filter_test_1, 20096, 21, 405, 405), "emptyDirFile.mkdirs()").
expr(file_filter_test_1_expr35, method_invocation, file_filter_test_1_stmt21, expression, range(file_filter_test_1, 20127, 58, 406, 406), "assertFiltering(EmptyFileFilter.EMPTY,emptyDirFile,true)").
expr(file_filter_test_1_expr36, method_invocation, file_filter_test_1_stmt22, expression, range(file_filter_test_1, 20195, 58, 407, 407), "assertFiltering(EmptyFileFilter.EMPTY,emptyDirPath,true)").
expr(file_filter_test_1_expr37, method_invocation, file_filter_test_1_stmt23, expression, range(file_filter_test_1, 20263, 57, 408, 408), "assertFiltering(EmptyFileFilter.EMPTY,(File)null,true)").
expr(file_filter_test_1_expr38, cast_expression, file_filter_test_1_expr37, (arguments, 1), range(file_filter_test_1, 20302, 11, 408, 408), "(File)null").
expr(file_filter_test_1_expr39, method_invocation, file_filter_test_1_stmt25, expression, range(file_filter_test_1, 25207, 43, 503, 503), "assertFiltering(filter,(File)null,false)").
expr(file_filter_test_1_expr40, cast_expression, file_filter_test_1_expr39, (arguments, 1), range(file_filter_test_1, 25231, 11, 503, 503), "(File)null").
expr(file_filter_test_1_expr41, class_instance_creation, file_filter_test_1_code46, initializer, range(file_filter_test_1, 34384, 22, 727, 727), "new File(SVN_DIR_NAME)").
expr(file_filter_test_1_expr42, method_invocation, file_filter_test_1_code50, initializer, range(file_filter_test_1, 34443, 22, 728, 728), "hiddenDirFile.toPath()").
expr(file_filter_test_1_expr43, method_invocation, file_filter_test_1_stmt28, expression, range(file_filter_test_1, 34479, 22, 729, 729), "hiddenDirFile.exists()").
expr(file_filter_test_1_expr44, method_invocation, file_filter_test_1_code53, initializer, range(file_filter_test_1, 34925, 24, 735, 735), "temporaryFolder.toPath()").
expr(file_filter_test_1_expr45, method_invocation, file_filter_test_1_stmt30, expression, range(file_filter_test_1, 34959, 64, 736, 736), "assertFiltering(HiddenFileFilter.HIDDEN,temporaryFolder,false)").
expr(file_filter_test_1_expr46, method_invocation, file_filter_test_1_stmt31, expression, range(file_filter_test_1, 35033, 53, 737, 737), "assertFiltering(HiddenFileFilter.HIDDEN,path,false)").
expr(file_filter_test_1_expr47, method_invocation, file_filter_test_1_stmt32, expression, range(file_filter_test_1, 35096, 59, 738, 738), "assertFiltering(HiddenFileFilter.HIDDEN,(Path)null,true)").
expr(file_filter_test_1_expr48, cast_expression, file_filter_test_1_expr47, (arguments, 1), range(file_filter_test_1, 35137, 11, 738, 738), "(Path)null").
expr(file_filter_test_1_expr49, class_instance_creation, file_filter_test_1_code58, initializer, range(file_filter_test_1, 49238, 32, 1064, 1064), "new NameFileFilter(\"foo\",\"bar\")").
expr(file_filter_test_1_expr50, method_invocation, file_filter_test_1_stmt34, expression, range(file_filter_test_1, 49280, 33, 1065, 1065), "assertFooBarFileFiltering(filter)").
expr(file_filter_test_1_expr51, method_invocation, file_filter_test_1_stmt35, expression, range(file_filter_test_1, 49323, 43, 1066, 1066), "assertFiltering(filter,(File)null,false)").
expr(file_filter_test_1_expr52, cast_expression, file_filter_test_1_expr51, (arguments, 1), range(file_filter_test_1, 49347, 11, 1066, 1066), "(File)null").
%iofile_filter_1 - org.apache.commons.io.filefilter.IOFileFilter
expr(iofile_filter_1_expr1, array_initializer, iofile_filter_1_code7, initializer, range(iofile_filter_1, 1419, 2, 39, 39), "{}").
expr(iofile_filter_1_expr2, class_instance_creation, iofile_filter_1_stmt1, expression, range(iofile_filter_1, 2743, 35, 86, 86), "new AndFileFilter(this,fileFilter)").
expr(iofile_filter_1_expr3, this_expression, iofile_filter_1_expr2, (arguments, 0), range(iofile_filter_1, 2761, 4, 86, 86), "this").
expr(iofile_filter_1_expr5, method_invocation, iofile_filter_1_expr4, left_operand, range(iofile_filter_1, 3054, 18, 98, 98), "accept(path,null)").
expr(iofile_filter_1_expr4, infix_expression, iofile_filter_1_stmt2, expression, range(iofile_filter_1, 3054, 47, 98, 98), "accept(path,null) != FileVisitResult.TERMINATE").
expr(iofile_filter_1_expr6, class_instance_creation, iofile_filter_1_stmt3, expression, range(iofile_filter_1, 3288, 23, 108, 108), "new NotFileFilter(this)").
expr(iofile_filter_1_expr7, this_expression, iofile_filter_1_expr6, (arguments, 0), range(iofile_filter_1, 3306, 4, 108, 108), "this").

%%% Names
%standard_line_separator_1 - org.apache.commons.io.StandardLineSeparator
name(t_standard_line_separator_12, simple_name, standard_line_separator_1_code2, name, range(standard_line_separator_1, 1016, 21, 28, 28), 'StandardLineSeparator').
name(f_cr_482, simple_name, standard_line_separator_1_code4, name, range(standard_line_separator_1, 1139, 2, 33, 33), 'CR').
name(f_crlf_160, simple_name, standard_line_separator_1_code5, name, range(standard_line_separator_1, 1257, 4, 38, 38), 'CRLF').
name(f_lf_158, simple_name, standard_line_separator_1_code6, name, range(standard_line_separator_1, 1372, 2, 43, 43), 'LF').
name(m_standard_line_separator_294, simple_name, standard_line_separator_1_code7, name, range(standard_line_separator_1, 1570, 21, 52, 52), 'StandardLineSeparator').
name(p_line_separator_483, simple_name, standard_line_separator_1_code8, name, range(standard_line_separator_1, 1605, 13, 52, 52), 'lineSeparator').
name(f_line_separator_484, simple_name, standard_line_separator_1_expr2, name, range(standard_line_separator_1, 1635, 13, 53, 53), 'lineSeparator').
name(t_objects_5, simple_name, standard_line_separator_1_expr3, expression, range(standard_line_separator_1, 1651, 7, 53, 53), 'Objects').
name(m_require_non_null_12, simple_name, standard_line_separator_1_expr3, name, range(standard_line_separator_1, 1659, 14, 53, 53), 'requireNonNull').
name(p_line_separator_483, simple_name, standard_line_separator_1_expr3, (arguments, 0), range(standard_line_separator_1, 1674, 13, 53, 53), 'lineSeparator').
name(f_line_separator_484, simple_name, standard_line_separator_1_stmt2, expression, range(standard_line_separator_1, 2204, 13, 72, 72), 'lineSeparator').
%path_utils_1 - org.apache.commons.io.file.PathUtils
name(f_open_options_truncate_491, simple_name, path_utils_1_code10, name, range(path_utils_1, 6674, 21, 152, 152), 'OPEN_OPTIONS_TRUNCATE').
name(q_create_8, qualified_name, path_utils_1_expr1, (expressions, 0), range(path_utils_1, 6700, 25, 152, 152), 'StandardOpenOption.CREATE').
name(t_standard_open_option_15, simple_name, q_create_8, qualifier, range(path_utils_1, 6700, 18, 152, 152), 'StandardOpenOption').
name(t_standard_open_option_15, simple_name, q_truncate_existing_9, qualifier, range(path_utils_1, 6727, 18, 152, 152), 'StandardOpenOption').
name(q_truncate_existing_9, qualified_name, path_utils_1_expr1, (expressions, 1), range(path_utils_1, 6727, 36, 152, 152), 'StandardOpenOption.TRUNCATE_EXISTING').
name(f_open_options_append_492, simple_name, path_utils_1_code18, name, range(path_utils_1, 6806, 19, 154, 154), 'OPEN_OPTIONS_APPEND').
name(t_standard_open_option_15, simple_name, q_create_10, qualifier, range(path_utils_1, 6830, 18, 154, 154), 'StandardOpenOption').
name(q_create_10, qualified_name, path_utils_1_expr2, (expressions, 0), range(path_utils_1, 6830, 25, 154, 154), 'StandardOpenOption.CREATE').
name(t_standard_open_option_15, simple_name, q_append_10, qualifier, range(path_utils_1, 6857, 18, 154, 154), 'StandardOpenOption').
name(q_append_10, qualified_name, path_utils_1_expr2, (expressions, 1), range(path_utils_1, 6857, 25, 154, 154), 'StandardOpenOption.APPEND').
name(f_empty_copy_options_493, simple_name, path_utils_1_code26, name, range(path_utils_1, 7006, 18, 161, 161), 'EMPTY_COPY_OPTIONS').
name(f_empty_delete_option_array_494, simple_name, path_utils_1_code34, name, range(path_utils_1, 7155, 25, 168, 168), 'EMPTY_DELETE_OPTION_ARRAY').
name(f_empty_file_attribute_array_495, simple_name, path_utils_1_code44, name, range(path_utils_1, 7317, 26, 175, 175), 'EMPTY_FILE_ATTRIBUTE_ARRAY').
name(f_empty_file_visit_option_array_496, simple_name, path_utils_1_code52, name, range(path_utils_1, 7453, 29, 180, 180), 'EMPTY_FILE_VISIT_OPTION_ARRAY').
name(f_empty_link_option_array_497, simple_name, path_utils_1_code60, name, range(path_utils_1, 7582, 23, 185, 185), 'EMPTY_LINK_OPTION_ARRAY').
name(f_nofollow_link_option_array_498, simple_name, path_utils_1_code68, name, range(path_utils_1, 7839, 26, 194, 194), 'NOFOLLOW_LINK_OPTION_ARRAY').
name(q_nofollow_links_11, qualified_name, path_utils_1_expr8, (expressions, 0), range(path_utils_1, 7870, 25, 194, 194), 'LinkOption.NOFOLLOW_LINKS').
name(t_link_option_16, simple_name, q_nofollow_links_11, qualifier, range(path_utils_1, 7870, 10, 194, 194), 'LinkOption').
name(f_null_link_option_499, simple_name, path_utils_1_code73, name, range(path_utils_1, 8077, 16, 201, 201), 'NULL_LINK_OPTION').
name(f_empty_open_option_array_500, simple_name, path_utils_1_code81, name, range(path_utils_1, 8195, 23, 206, 206), 'EMPTY_OPEN_OPTION_ARRAY').
name(f_empty_path_array_501, simple_name, path_utils_1_code89, name, range(path_utils_1, 8333, 16, 213, 213), 'EMPTY_PATH_ARRAY').
name(v_file_name_586, simple_name, path_utils_1_code93, name, range(path_utils_1, 38831, 8, 881, 881), 'fileName').
name(p_path_584, simple_name, path_utils_1_expr12, left_operand, range(path_utils_1, 38842, 4, 881, 881), 'path').
name(p_path_584, simple_name, path_utils_1_expr13, expression, range(path_utils_1, 38857, 4, 881, 881), 'path').
name(m_get_file_name_334, simple_name, path_utils_1_expr13, name, range(path_utils_1, 38862, 11, 881, 881), 'getFileName').
name(v_file_name_586, simple_name, path_utils_1_expr15, left_operand, range(path_utils_1, 38899, 8, 882, 882), 'fileName').
name(p_function_585, simple_name, path_utils_1_expr16, expression, range(path_utils_1, 38918, 8, 882, 882), 'function').
name(m_apply_335, simple_name, path_utils_1_expr16, name, range(path_utils_1, 38927, 5, 882, 882), 'apply').
name(v_file_name_586, simple_name, path_utils_1_expr16, (arguments, 0), range(path_utils_1, 38933, 8, 882, 882), 'fileName').
name(m_get_file_name_333, simple_name, path_utils_1_expr17, name, range(path_utils_1, 39251, 11, 894, 894), 'getFileName').
name(p_path_587, simple_name, path_utils_1_expr17, (arguments, 0), range(path_utils_1, 39263, 4, 894, 894), 'path').
name(t_path_17, simple_name, path_utils_1_expr18, expression, range(path_utils_1, 39269, 4, 894, 894), 'Path').
name(m_to_string_337, simple_name, path_utils_1_expr18, name, range(path_utils_1, 39275, 8, 894, 894), 'toString').
%can_write_file_filter_1 - org.apache.commons.io.filefilter.CanWriteFileFilter
name(f_can_write_777, simple_name, can_write_file_filter_1_code8, name, range(can_write_file_filter_1, 2139, 9, 62, 62), 'CAN_WRITE').
name(f_cannot_write_778, simple_name, can_write_file_filter_1_code15, name, range(can_write_file_filter_1, 2275, 12, 65, 65), 'CANNOT_WRITE').
name(f_can_write_777, simple_name, can_write_file_filter_1_expr2, expression, range(can_write_file_filter_1, 2290, 9, 65, 65), 'CAN_WRITE').
name(m_negate_449, simple_name, can_write_file_filter_1_expr2, name, range(can_write_file_filter_1, 2300, 6, 65, 65), 'negate').
name(m_can_write_file_filter_455, simple_name, can_write_file_filter_1_code16, name, range(can_write_file_filter_1, 2445, 18, 72, 72), 'CanWriteFileFilter').
name(p_file_779, simple_name, can_write_file_filter_1_expr3, expression, range(can_write_file_filter_1, 2745, 4, 83, 83), 'file').
name(m_can_write_457, simple_name, can_write_file_filter_1_expr3, name, range(can_write_file_filter_1, 2750, 8, 83, 83), 'canWrite').
name(m_to_file_visit_result_415, simple_name, can_write_file_filter_1_expr4, name, range(can_write_file_filter_1, 3105, 17, 95, 95), 'toFileVisitResult').
name(t_files_20, simple_name, can_write_file_filter_1_expr5, expression, range(can_write_file_filter_1, 3123, 5, 95, 95), 'Files').
name(m_is_writable_459, simple_name, can_write_file_filter_1_expr5, name, range(can_write_file_filter_1, 3129, 10, 95, 95), 'isWritable').
name(p_file_780, simple_name, can_write_file_filter_1_expr5, (arguments, 0), range(can_write_file_filter_1, 3140, 4, 95, 95), 'file').
%iocase_1 - org.apache.commons.io.IOCase
name(t_iocase_10, simple_name, iocase_1_code2, name, range(iocase_1, 1448, 6, 40, 40), 'IOCase').
name(f_sensitive_125, simple_name, iocase_1_code4, name, range(iocase_1, 1549, 9, 45, 45), 'SENSITIVE').
name(f_insensitive_126, simple_name, iocase_1_code5, name, range(iocase_1, 1673, 11, 50, 50), 'INSENSITIVE').
name(f_system_127, simple_name, iocase_1_code6, name, range(iocase_1, 2405, 6, 66, 66), 'SYSTEM').
name(t_file_system_1, simple_name, iocase_1_expr2, expression, range(iocase_1, 2422, 10, 66, 66), 'FileSystem').
name(m_get_current_3, simple_name, iocase_1_expr2, name, range(iocase_1, 2433, 10, 66, 66), 'getCurrent').
name(m_is_case_sensitive_22, simple_name, iocase_1_expr1, name, range(iocase_1, 2446, 15, 66, 66), 'isCaseSensitive').
name(p_value_130, simple_name, iocase_1_expr4, left_operand, range(iocase_1, 3752, 5, 103, 103), 'value').
name(p_value_130, simple_name, iocase_1_expr3, then_expression, range(iocase_1, 3768, 5, 103, 103), 'value').
name(p_default_value_131, simple_name, iocase_1_expr3, else_expression, range(iocase_1, 3776, 12, 103, 103), 'defaultValue').
name(m_iocase_82, simple_name, iocase_1_code8, name, range(iocase_1, 4074, 6, 118, 118), 'IOCase').
name(p_name_132, simple_name, iocase_1_code9, name, range(iocase_1, 4094, 4, 118, 118), 'name').
name(p_sensitive_133, simple_name, iocase_1_code12, name, range(iocase_1, 4114, 9, 118, 118), 'sensitive').
name(f_name_134, simple_name, iocase_1_expr6, name, range(iocase_1, 4140, 4, 119, 119), 'name').
name(p_name_132, simple_name, iocase_1_expr5, right_hand_side, range(iocase_1, 4147, 4, 119, 119), 'name').
name(f_sensitive_135, simple_name, iocase_1_expr9, name, range(iocase_1, 4166, 9, 120, 120), 'sensitive').
name(p_sensitive_133, simple_name, iocase_1_expr8, right_hand_side, range(iocase_1, 4178, 9, 120, 120), 'sensitive').
name(t_objects_5, simple_name, iocase_1_expr11, expression, range(iocase_1, 6062, 7, 173, 173), 'Objects').
name(m_require_non_null_12, simple_name, iocase_1_expr11, name, range(iocase_1, 6070, 14, 173, 173), 'requireNonNull').
name(p_str_1_140, simple_name, iocase_1_expr11, (arguments, 0), range(iocase_1, 6085, 4, 173, 173), 'str1').
name(t_objects_5, simple_name, iocase_1_expr12, expression, range(iocase_1, 6108, 7, 174, 174), 'Objects').
name(m_require_non_null_12, simple_name, iocase_1_expr12, name, range(iocase_1, 6116, 14, 174, 174), 'requireNonNull').
name(p_str_2_141, simple_name, iocase_1_expr12, (arguments, 0), range(iocase_1, 6131, 4, 174, 174), 'str2').
name(f_sensitive_135, simple_name, iocase_1_expr13, expression, range(iocase_1, 6161, 9, 175, 175), 'sensitive').
name(p_str_1_140, simple_name, iocase_1_expr14, expression, range(iocase_1, 6173, 4, 175, 175), 'str1').
name(m_equals_86, simple_name, iocase_1_expr14, name, range(iocase_1, 6178, 6, 175, 175), 'equals').
name(p_str_2_141, simple_name, iocase_1_expr14, (arguments, 0), range(iocase_1, 6185, 4, 175, 175), 'str2').
name(p_str_1_140, simple_name, iocase_1_expr15, expression, range(iocase_1, 6193, 4, 175, 175), 'str1').
name(m_equals_ignore_case_87, simple_name, iocase_1_expr15, name, range(iocase_1, 6198, 16, 175, 175), 'equalsIgnoreCase').
name(p_str_2_141, simple_name, iocase_1_expr15, (arguments, 0), range(iocase_1, 6215, 4, 175, 175), 'str2').
%ioutils_1 - org.apache.commons.io.IOUtils
name(f_dir_separator_154, simple_name, ioutils_1_code8, name, range(ioutils_1, 5591, 13, 145, 145), 'DIR_SEPARATOR').
name(q_separator_char_5, qualified_name, ioutils_1_code8, initializer, range(ioutils_1, 5607, 18, 145, 145), 'File.separatorChar').
name(t_file_8, simple_name, q_separator_char_5, qualifier, range(ioutils_1, 5607, 4, 145, 145), 'File').
name(f_empty_byte_array_155, simple_name, ioutils_1_code16, name, range(ioutils_1, 5985, 16, 162, 162), 'EMPTY_BYTE_ARRAY').
name(f_line_separator_156, simple_name, ioutils_1_code22, name, range(ioutils_1, 6408, 14, 183, 183), 'LINE_SEPARATOR').
name(t_system_3, simple_name, ioutils_1_expr2, expression, range(ioutils_1, 6425, 6, 183, 183), 'System').
name(m_line_separator_122, simple_name, ioutils_1_expr2, name, range(ioutils_1, 6432, 13, 183, 183), 'lineSeparator').
name(f_line_separator_unix_157, simple_name, ioutils_1_code28, name, range(ioutils_1, 6580, 19, 190, 190), 'LINE_SEPARATOR_UNIX').
name(q_lf_5, qualified_name, ioutils_1_expr3, expression, range(ioutils_1, 6602, 24, 190, 190), 'StandardLineSeparator.LF').
name(t_standard_line_separator_12, simple_name, q_lf_5, qualifier, range(ioutils_1, 6602, 21, 190, 190), 'StandardLineSeparator').
name(m_get_string_123, simple_name, ioutils_1_expr3, name, range(ioutils_1, 6627, 9, 190, 190), 'getString').
name(f_line_separator_windows_159, simple_name, ioutils_1_code34, name, range(ioutils_1, 6776, 22, 197, 197), 'LINE_SEPARATOR_WINDOWS').
name(q_crlf_6, qualified_name, ioutils_1_expr4, expression, range(ioutils_1, 6801, 26, 197, 197), 'StandardLineSeparator.CRLF').
name(t_standard_line_separator_12, simple_name, q_crlf_6, qualifier, range(ioutils_1, 6801, 21, 197, 197), 'StandardLineSeparator').
name(m_get_string_123, simple_name, ioutils_1_expr4, name, range(ioutils_1, 6828, 9, 197, 197), 'getString').
name(f_scratch_byte_buffer_rw_161, simple_name, ioutils_1_code44, name, range(ioutils_1, 6977, 22, 202, 202), 'SCRATCH_BYTE_BUFFER_RW').
name(t_thread_local_13, simple_name, ioutils_1_expr5, expression, range(ioutils_1, 7002, 11, 202, 202), 'ThreadLocal').
name(m_with_initial_124, simple_name, ioutils_1_expr5, name, range(ioutils_1, 7014, 11, 202, 202), 'withInitial').
name(t_ioutils_14, simple_name, ioutils_1_expr6, expression, range(ioutils_1, 7026, 7, 202, 202), 'IOUtils').
name(m_byte_array_125, simple_name, ioutils_1_expr6, name, range(ioutils_1, 7035, 9, 202, 202), 'byteArray').
name(f_scratch_byte_buffer_wo_162, simple_name, ioutils_1_code52, name, range(ioutils_1, 7167, 22, 207, 207), 'SCRATCH_BYTE_BUFFER_WO').
name(m_byte_array_125, simple_name, ioutils_1_expr7, name, range(ioutils_1, 7192, 9, 207, 207), 'byteArray').
name(f_scratch_char_buffer_rw_163, simple_name, ioutils_1_code62, name, range(ioutils_1, 7341, 22, 212, 212), 'SCRATCH_CHAR_BUFFER_RW').
name(t_thread_local_13, simple_name, ioutils_1_expr8, expression, range(ioutils_1, 7366, 11, 212, 212), 'ThreadLocal').
name(m_with_initial_124, simple_name, ioutils_1_expr8, name, range(ioutils_1, 7378, 11, 212, 212), 'withInitial').
name(t_ioutils_14, simple_name, ioutils_1_expr9, expression, range(ioutils_1, 7390, 7, 212, 212), 'IOUtils').
name(m_char_array_126, simple_name, ioutils_1_expr9, name, range(ioutils_1, 7399, 9, 212, 212), 'charArray').
name(f_scratch_char_buffer_wo_164, simple_name, ioutils_1_code70, name, range(ioutils_1, 7531, 22, 217, 217), 'SCRATCH_CHAR_BUFFER_WO').
name(m_char_array_126, simple_name, ioutils_1_expr10, name, range(ioutils_1, 7556, 9, 217, 217), 'charArray').
name(m_byte_array_135, simple_name, ioutils_1_expr11, name, range(ioutils_1, 14166, 9, 354, 354), 'byteArray').
name(f_default_buffer_size_177, simple_name, ioutils_1_expr11, (arguments, 0), range(ioutils_1, 14176, 19, 354, 354), 'DEFAULT_BUFFER_SIZE').
name(p_size_178, simple_name, ioutils_1_expr12, (dimensions, 0), range(ioutils_1, 14602, 4, 368, 368), 'size').
name(m_char_array_136, simple_name, ioutils_1_expr13, name, range(ioutils_1, 14854, 9, 378, 378), 'charArray').
name(f_default_buffer_size_177, simple_name, ioutils_1_expr13, (arguments, 0), range(ioutils_1, 14864, 19, 378, 378), 'DEFAULT_BUFFER_SIZE').
name(p_size_179, simple_name, ioutils_1_expr14, (dimensions, 0), range(ioutils_1, 15224, 4, 391, 391), 'size').
name(p_array_279, simple_name, ioutils_1_expr16, left_operand, range(ioutils_1, 65325, 5, 1789, 1789), 'array').
name(p_array_279, simple_name, q_length_7, qualifier, range(ioutils_1, 65345, 5, 1789, 1789), 'array').
name(q_length_7, qualified_name, ioutils_1_expr15, else_expression, range(ioutils_1, 65345, 12, 1789, 1789), 'array.length').
%directory_file_filter_1 - org.apache.commons.io.filefilter.DirectoryFileFilter
name(f_directory_782, simple_name, directory_file_filter_1_code8, name, range(directory_file_filter_1, 2474, 9, 75, 75), 'DIRECTORY').
name(f_instance_783, simple_name, directory_file_filter_1_code15, name, range(directory_file_filter_1, 2789, 8, 81, 81), 'INSTANCE').
name(f_directory_782, simple_name, directory_file_filter_1_code15, initializer, range(directory_file_filter_1, 2800, 9, 81, 81), 'DIRECTORY').
name(m_directory_file_filter_460, simple_name, directory_file_filter_1_code16, name, range(directory_file_filter_1, 2947, 19, 88, 88), 'DirectoryFileFilter').
%not_file_filter_1 - org.apache.commons.io.filefilter.NotFileFilter
name(m_not_file_filter_598, simple_name, not_file_filter_1_code3, name, range(not_file_filter_1, 1735, 13, 49, 49), 'NotFileFilter').
name(p_filter_908, simple_name, not_file_filter_1_code5, name, range(not_file_filter_1, 1768, 6, 49, 49), 'filter').
name(t_objects_5, simple_name, not_file_filter_1_expr1, expression, range(not_file_filter_1, 1786, 7, 50, 50), 'Objects').
name(m_require_non_null_12, simple_name, not_file_filter_1_expr1, name, range(not_file_filter_1, 1794, 14, 50, 50), 'requireNonNull').
name(p_filter_908, simple_name, not_file_filter_1_expr1, (arguments, 0), range(not_file_filter_1, 1809, 6, 50, 50), 'filter').
name(f_filter_909, simple_name, not_file_filter_1_expr3, name, range(not_file_filter_1, 1841, 6, 51, 51), 'filter').
name(p_filter_908, simple_name, not_file_filter_1_expr2, right_hand_side, range(not_file_filter_1, 1850, 6, 51, 51), 'filter').
%iocase_test_1 - org.apache.commons.io.IOCaseTest
name(t_iocase_test_11, simple_name, iocase_test_1_code2, name, range(iocase_test_1, 1409, 10, 37, 37), 'IOCaseTest').
name(f_windows_150, simple_name, iocase_test_1_code9, name, range(iocase_test_1, 1456, 7, 39, 39), 'WINDOWS').
name(t_file_8, simple_name, q_separator_char_4, qualifier, range(iocase_test_1, 1466, 4, 39, 39), 'File').
name(q_separator_char_4, qualified_name, iocase_test_1_expr1, left_operand, range(iocase_test_1, 1466, 18, 39, 39), 'File.separatorChar').
name(m_assert_false_104, simple_name, iocase_test_1_expr2, name, range(iocase_test_1, 5595, 11, 136, 136), 'assertFalse').
name(t_iocase_10, simple_name, q_sensitive_4, qualifier, range(iocase_test_1, 5607, 6, 136, 136), 'IOCase').
name(q_sensitive_4, qualified_name, iocase_test_1_expr3, expression, range(iocase_test_1, 5607, 16, 136, 136), 'IOCase.SENSITIVE').
name(m_check_equals_85, simple_name, iocase_test_1_expr3, name, range(iocase_test_1, 5624, 11, 136, 136), 'checkEquals').
name(m_assert_false_104, simple_name, iocase_test_1_expr4, name, range(iocase_test_1, 5657, 11, 137, 137), 'assertFalse').
name(q_sensitive_5, qualified_name, iocase_test_1_expr5, expression, range(iocase_test_1, 5669, 16, 137, 137), 'IOCase.SENSITIVE').
name(t_iocase_10, simple_name, q_sensitive_5, qualifier, range(iocase_test_1, 5669, 6, 137, 137), 'IOCase').
name(m_check_equals_85, simple_name, iocase_test_1_expr5, name, range(iocase_test_1, 5686, 11, 137, 137), 'checkEquals').
name(m_assert_false_104, simple_name, iocase_test_1_expr6, name, range(iocase_test_1, 5720, 11, 138, 138), 'assertFalse').
name(t_iocase_10, simple_name, q_sensitive_5, qualifier, range(iocase_test_1, 5732, 6, 138, 138), 'IOCase').
name(q_sensitive_5, qualified_name, iocase_test_1_expr7, expression, range(iocase_test_1, 5732, 16, 138, 138), 'IOCase.SENSITIVE').
name(m_check_equals_85, simple_name, iocase_test_1_expr7, name, range(iocase_test_1, 5749, 11, 138, 138), 'checkEquals').
name(m_assert_true_105, simple_name, iocase_test_1_expr8, name, range(iocase_test_1, 5784, 10, 139, 139), 'assertTrue').
name(q_sensitive_5, qualified_name, iocase_test_1_expr9, expression, range(iocase_test_1, 5795, 16, 139, 139), 'IOCase.SENSITIVE').
name(t_iocase_10, simple_name, q_sensitive_5, qualifier, range(iocase_test_1, 5795, 6, 139, 139), 'IOCase').
name(m_check_equals_85, simple_name, iocase_test_1_expr9, name, range(iocase_test_1, 5812, 11, 139, 139), 'checkEquals').
name(m_assert_false_104, simple_name, iocase_test_1_expr10, name, range(iocase_test_1, 5848, 11, 140, 140), 'assertFalse').
name(q_sensitive_5, qualified_name, iocase_test_1_expr11, expression, range(iocase_test_1, 5860, 16, 140, 140), 'IOCase.SENSITIVE').
name(t_iocase_10, simple_name, q_sensitive_5, qualifier, range(iocase_test_1, 5860, 6, 140, 140), 'IOCase').
name(m_check_equals_85, simple_name, iocase_test_1_expr11, name, range(iocase_test_1, 5877, 11, 140, 140), 'checkEquals').
name(m_assert_false_104, simple_name, iocase_test_1_expr12, name, range(iocase_test_1, 5912, 11, 141, 141), 'assertFalse').
name(q_sensitive_5, qualified_name, iocase_test_1_expr13, expression, range(iocase_test_1, 5924, 16, 141, 141), 'IOCase.SENSITIVE').
name(t_iocase_10, simple_name, q_sensitive_5, qualifier, range(iocase_test_1, 5924, 6, 141, 141), 'IOCase').
name(m_check_equals_85, simple_name, iocase_test_1_expr13, name, range(iocase_test_1, 5941, 11, 141, 141), 'checkEquals').
name(m_assert_false_104, simple_name, iocase_test_1_expr14, name, range(iocase_test_1, 5975, 11, 142, 142), 'assertFalse').
name(t_iocase_10, simple_name, q_sensitive_5, qualifier, range(iocase_test_1, 5987, 6, 142, 142), 'IOCase').
name(q_sensitive_5, qualified_name, iocase_test_1_expr15, expression, range(iocase_test_1, 5987, 16, 142, 142), 'IOCase.SENSITIVE').
name(m_check_equals_85, simple_name, iocase_test_1_expr15, name, range(iocase_test_1, 6004, 11, 142, 142), 'checkEquals').
name(m_assert_false_104, simple_name, iocase_test_1_expr16, name, range(iocase_test_1, 6041, 11, 143, 143), 'assertFalse').
name(q_sensitive_5, qualified_name, iocase_test_1_expr17, expression, range(iocase_test_1, 6053, 16, 143, 143), 'IOCase.SENSITIVE').
name(t_iocase_10, simple_name, q_sensitive_5, qualifier, range(iocase_test_1, 6053, 6, 143, 143), 'IOCase').
name(m_check_equals_85, simple_name, iocase_test_1_expr17, name, range(iocase_test_1, 6070, 11, 143, 143), 'checkEquals').
name(m_assert_true_105, simple_name, iocase_test_1_expr18, name, range(iocase_test_1, 6103, 10, 144, 144), 'assertTrue').
name(t_iocase_10, simple_name, q_sensitive_5, qualifier, range(iocase_test_1, 6114, 6, 144, 144), 'IOCase').
name(q_sensitive_5, qualified_name, iocase_test_1_expr19, expression, range(iocase_test_1, 6114, 16, 144, 144), 'IOCase.SENSITIVE').
name(m_check_equals_85, simple_name, iocase_test_1_expr19, name, range(iocase_test_1, 6131, 11, 144, 144), 'checkEquals').
name(m_assert_false_104, simple_name, iocase_test_1_expr20, name, range(iocase_test_1, 6162, 11, 146, 146), 'assertFalse').
name(t_iocase_10, simple_name, q_sensitive_5, qualifier, range(iocase_test_1, 6174, 6, 146, 146), 'IOCase').
name(q_sensitive_5, qualified_name, iocase_test_1_expr21, expression, range(iocase_test_1, 6174, 16, 146, 146), 'IOCase.SENSITIVE').
name(m_check_equals_85, simple_name, iocase_test_1_expr21, name, range(iocase_test_1, 6191, 11, 146, 146), 'checkEquals').
%empty_file_filter_1 - org.apache.commons.io.filefilter.EmptyFileFilter
name(f_empty_787, simple_name, empty_file_filter_1_code8, name, range(empty_file_filter_1, 2837, 5, 86, 86), 'EMPTY').
name(f_not_empty_788, simple_name, empty_file_filter_1_code15, name, range(empty_file_filter_1, 2963, 9, 89, 89), 'NOT_EMPTY').
name(f_empty_787, simple_name, empty_file_filter_1_expr2, expression, range(empty_file_filter_1, 2975, 5, 89, 89), 'EMPTY').
name(m_negate_449, simple_name, empty_file_filter_1_expr2, name, range(empty_file_filter_1, 2981, 6, 89, 89), 'negate').
name(m_empty_file_filter_463, simple_name, empty_file_filter_1_code16, name, range(empty_file_filter_1, 3126, 15, 96, 96), 'EmptyFileFilter').
name(p_file_789, simple_name, empty_file_filter_1_expr3, expression, range(empty_file_filter_1, 3435, 4, 107, 107), 'file').
name(m_is_directory_465, simple_name, empty_file_filter_1_expr3, name, range(empty_file_filter_1, 3440, 11, 107, 107), 'isDirectory').
name(v_files_790, simple_name, empty_file_filter_1_code23, name, range(empty_file_filter_1, 3482, 5, 108, 108), 'files').
name(p_file_789, simple_name, empty_file_filter_1_expr4, expression, range(empty_file_filter_1, 3490, 4, 108, 108), 'file').
name(m_list_files_466, simple_name, empty_file_filter_1_expr4, name, range(empty_file_filter_1, 3495, 9, 108, 108), 'listFiles').
name(t_ioutils_14, simple_name, empty_file_filter_1_expr6, expression, range(empty_file_filter_1, 3527, 7, 109, 109), 'IOUtils').
name(m_length_194, simple_name, empty_file_filter_1_expr6, name, range(empty_file_filter_1, 3535, 6, 109, 109), 'length').
name(v_files_790, simple_name, empty_file_filter_1_expr6, (arguments, 0), range(empty_file_filter_1, 3542, 5, 109, 109), 'files').
name(m_get_410, simple_name, empty_file_filter_1_expr7, name, range(empty_file_filter_1, 3958, 3, 123, 123), 'get').
name(t_files_20, simple_name, empty_file_filter_1_expr9, expression, range(empty_file_filter_1, 3986, 5, 124, 124), 'Files').
name(m_is_directory_468, simple_name, empty_file_filter_1_expr9, name, range(empty_file_filter_1, 3992, 11, 124, 124), 'isDirectory').
name(p_file_791, simple_name, empty_file_filter_1_expr9, (arguments, 0), range(empty_file_filter_1, 4004, 4, 124, 124), 'file').
name(v_stream_793, simple_name, empty_file_filter_1_code28, name, range(empty_file_filter_1, 4047, 6, 125, 125), 'stream').
name(t_files_20, simple_name, empty_file_filter_1_expr11, expression, range(empty_file_filter_1, 4056, 5, 125, 125), 'Files').
name(m_list_469, simple_name, empty_file_filter_1_expr11, name, range(empty_file_filter_1, 4062, 4, 125, 125), 'list').
name(p_file_791, simple_name, empty_file_filter_1_expr11, (arguments, 0), range(empty_file_filter_1, 4067, 4, 125, 125), 'file').
name(m_to_file_visit_result_415, simple_name, empty_file_filter_1_expr12, name, range(empty_file_filter_1, 4103, 17, 126, 126), 'toFileVisitResult').
name(v_stream_793, simple_name, empty_file_filter_1_expr15, expression, range(empty_file_filter_1, 4122, 6, 126, 126), 'stream').
name(m_find_first_471, simple_name, empty_file_filter_1_expr15, name, range(empty_file_filter_1, 4129, 9, 126, 126), 'findFirst').
name(m_is_present_470, simple_name, empty_file_filter_1_expr14, name, range(empty_file_filter_1, 4141, 9, 126, 126), 'isPresent').
%file_file_filter_1 - org.apache.commons.io.filefilter.FileFileFilter
name(f_instance_794, simple_name, file_file_filter_1_code8, name, range(file_file_filter_1, 2465, 8, 74, 74), 'INSTANCE').
name(f_file_795, simple_name, file_file_filter_1_code15, name, range(file_file_filter_1, 2659, 4, 82, 82), 'FILE').
name(f_instance_794, simple_name, file_file_filter_1_code15, initializer, range(file_file_filter_1, 2666, 8, 82, 82), 'INSTANCE').
name(m_file_file_filter_472, simple_name, file_file_filter_1_code16, name, range(file_file_filter_1, 2811, 14, 89, 89), 'FileFileFilter').
name(p_file_796, simple_name, file_file_filter_1_expr2, expression, range(file_file_filter_1, 3058, 4, 100, 100), 'file').
name(m_is_file_474, simple_name, file_file_filter_1_expr2, name, range(file_file_filter_1, 3063, 6, 100, 100), 'isFile').
%name_file_filter_1 - org.apache.commons.io.filefilter.NameFileFilter
name(p_names_888, simple_name, name_file_filter_1_stmt1, (arguments, 0), range(name_file_filter_1, 3119, 5, 91, 91), 'names').
name(m_name_file_filter_601, simple_name, name_file_filter_1_code4, name, range(name_file_filter_1, 3534, 14, 102, 102), 'NameFileFilter').
name(p_names_889, simple_name, name_file_filter_1_code6, name, range(name_file_filter_1, 3568, 5, 102, 102), 'names').
name(p_io_case_890, simple_name, name_file_filter_1_code11, name, range(name_file_filter_1, 3588, 6, 102, 102), 'ioCase').
name(t_objects_5, simple_name, name_file_filter_1_expr2, expression, range(name_file_filter_1, 3606, 7, 103, 103), 'Objects').
name(m_require_non_null_12, simple_name, name_file_filter_1_expr2, name, range(name_file_filter_1, 3614, 14, 103, 103), 'requireNonNull').
name(p_names_889, simple_name, name_file_filter_1_expr2, (arguments, 0), range(name_file_filter_1, 3629, 5, 103, 103), 'names').
name(f_names_891, simple_name, name_file_filter_1_expr4, name, range(name_file_filter_1, 3659, 5, 104, 104), 'names').
name(p_names_889, simple_name, name_file_filter_1_expr5, expression, range(name_file_filter_1, 3667, 5, 104, 104), 'names').
name(m_to_array_602, simple_name, name_file_filter_1_expr5, name, range(name_file_filter_1, 3673, 7, 104, 104), 'toArray').
name(f_empty_string_array_879, simple_name, name_file_filter_1_expr5, (arguments, 0), range(name_file_filter_1, 3681, 18, 104, 104), 'EMPTY_STRING_ARRAY').
name(f_io_case_892, simple_name, name_file_filter_1_expr8, name, range(name_file_filter_1, 3715, 6, 105, 105), 'ioCase').
name(m_to_iocase_603, simple_name, name_file_filter_1_expr9, name, range(name_file_filter_1, 3724, 8, 105, 105), 'toIOCase').
name(p_io_case_890, simple_name, name_file_filter_1_expr9, (arguments, 0), range(name_file_filter_1, 3733, 6, 105, 105), 'ioCase').
name(p_name_893, simple_name, name_file_filter_1_stmt5, (arguments, 0), range(name_file_filter_1, 4023, 4, 115, 115), 'name').
name(t_iocase_10, simple_name, q_sensitive_22, qualifier, range(name_file_filter_1, 4029, 6, 115, 115), 'IOCase').
name(q_sensitive_22, qualified_name, name_file_filter_1_stmt5, (arguments, 1), range(name_file_filter_1, 4029, 16, 115, 115), 'IOCase.SENSITIVE').
name(p_names_894, simple_name, name_file_filter_1_stmt6, (arguments, 0), range(name_file_filter_1, 4496, 5, 129, 129), 'names').
name(q_sensitive_22, qualified_name, name_file_filter_1_stmt6, (arguments, 1), range(name_file_filter_1, 4503, 16, 129, 129), 'IOCase.SENSITIVE').
name(t_iocase_10, simple_name, q_sensitive_22, qualifier, range(name_file_filter_1, 4503, 6, 129, 129), 'IOCase').
name(m_name_file_filter_574, simple_name, name_file_filter_1_code16, name, range(name_file_filter_1, 4825, 14, 139, 139), 'NameFileFilter').
name(p_name_895, simple_name, name_file_filter_1_code18, name, range(name_file_filter_1, 4853, 4, 139, 139), 'name').
name(p_io_case_896, simple_name, name_file_filter_1_code21, name, range(name_file_filter_1, 4872, 6, 139, 139), 'ioCase').
name(t_objects_5, simple_name, name_file_filter_1_expr13, expression, range(name_file_filter_1, 4890, 7, 140, 140), 'Objects').
name(m_require_non_null_12, simple_name, name_file_filter_1_expr13, name, range(name_file_filter_1, 4898, 14, 140, 140), 'requireNonNull').
name(p_name_895, simple_name, name_file_filter_1_expr13, (arguments, 0), range(name_file_filter_1, 4913, 4, 140, 140), 'name').
name(f_names_891, simple_name, name_file_filter_1_expr15, name, range(name_file_filter_1, 4941, 5, 141, 141), 'names').
name(p_name_895, simple_name, name_file_filter_1_expr18, (expressions, 0), range(name_file_filter_1, 4963, 4, 141, 141), 'name').
name(f_io_case_892, simple_name, name_file_filter_1_expr20, name, range(name_file_filter_1, 4983, 6, 142, 142), 'ioCase').
name(m_to_iocase_603, simple_name, name_file_filter_1_expr21, name, range(name_file_filter_1, 4992, 8, 142, 142), 'toIOCase').
name(p_io_case_896, simple_name, name_file_filter_1_expr21, (arguments, 0), range(name_file_filter_1, 5001, 6, 142, 142), 'ioCase').
name(m_name_file_filter_604, simple_name, name_file_filter_1_code27, name, range(name_file_filter_1, 5344, 14, 152, 152), 'NameFileFilter').
name(p_names_897, simple_name, name_file_filter_1_code29, name, range(name_file_filter_1, 5374, 5, 152, 152), 'names').
name(p_io_case_898, simple_name, name_file_filter_1_code34, name, range(name_file_filter_1, 5394, 6, 152, 152), 'ioCase').
name(t_objects_5, simple_name, name_file_filter_1_expr23, expression, range(name_file_filter_1, 5412, 7, 153, 153), 'Objects').
name(m_require_non_null_12, simple_name, name_file_filter_1_expr23, name, range(name_file_filter_1, 5420, 14, 153, 153), 'requireNonNull').
name(p_names_897, simple_name, name_file_filter_1_expr23, (arguments, 0), range(name_file_filter_1, 5435, 5, 153, 153), 'names').
name(f_names_891, simple_name, name_file_filter_1_expr25, name, range(name_file_filter_1, 5465, 5, 154, 154), 'names').
name(p_names_897, simple_name, name_file_filter_1_expr26, expression, range(name_file_filter_1, 5473, 5, 154, 154), 'names').
name(m_clone_605, simple_name, name_file_filter_1_expr26, name, range(name_file_filter_1, 5479, 5, 154, 154), 'clone').
name(f_io_case_892, simple_name, name_file_filter_1_expr29, name, range(name_file_filter_1, 5501, 6, 155, 155), 'ioCase').
name(m_to_iocase_603, simple_name, name_file_filter_1_expr30, name, range(name_file_filter_1, 5510, 8, 155, 155), 'toIOCase').
name(p_io_case_898, simple_name, name_file_filter_1_expr30, (arguments, 0), range(name_file_filter_1, 5519, 6, 155, 155), 'ioCase').
name(m_accept_base_name_607, simple_name, name_file_filter_1_expr32, name, range(name_file_filter_1, 5762, 14, 166, 166), 'acceptBaseName').
name(p_file_899, simple_name, name_file_filter_1_expr33, expression, range(name_file_filter_1, 5777, 4, 166, 166), 'file').
name(m_get_name_608, simple_name, name_file_filter_1_expr33, name, range(name_file_filter_1, 5782, 7, 166, 166), 'getName').
name(m_to_file_visit_result_415, simple_name, name_file_filter_1_expr34, name, range(name_file_filter_1, 6412, 17, 190, 190), 'toFileVisitResult').
name(m_accept_base_name_607, simple_name, name_file_filter_1_expr35, name, range(name_file_filter_1, 6430, 14, 190, 190), 'acceptBaseName').
name(t_path_utils_30, simple_name, name_file_filter_1_expr36, expression, range(name_file_filter_1, 6445, 9, 190, 190), 'PathUtils').
name(m_get_file_name_string_336, simple_name, name_file_filter_1_expr36, name, range(name_file_filter_1, 6455, 17, 190, 190), 'getFileNameString').
name(p_path_902, simple_name, name_file_filter_1_expr36, (arguments, 0), range(name_file_filter_1, 6473, 4, 190, 190), 'path').
name(t_stream_28, simple_name, name_file_filter_1_expr39, expression, range(name_file_filter_1, 6564, 6, 194, 194), 'Stream').
name(m_of_586, simple_name, name_file_filter_1_expr39, name, range(name_file_filter_1, 6571, 2, 194, 194), 'of').
name(f_names_891, simple_name, name_file_filter_1_expr39, (arguments, 0), range(name_file_filter_1, 6574, 5, 194, 194), 'names').
name(m_any_match_611, simple_name, name_file_filter_1_expr37, name, range(name_file_filter_1, 6581, 8, 194, 194), 'anyMatch').
name(p_test_name_905, simple_name, name_file_filter_1_code40, name, range(name_file_filter_1, 6590, 8, 194, 194), 'testName').
name(f_io_case_892, simple_name, name_file_filter_1_expr40, expression, range(name_file_filter_1, 6602, 6, 194, 194), 'ioCase').
name(m_check_equals_85, simple_name, name_file_filter_1_expr40, name, range(name_file_filter_1, 6609, 11, 194, 194), 'checkEquals').
name(p_base_name_904, simple_name, name_file_filter_1_expr40, (arguments, 0), range(name_file_filter_1, 6621, 8, 194, 194), 'baseName').
name(p_test_name_905, simple_name, name_file_filter_1_expr40, (arguments, 1), range(name_file_filter_1, 6631, 8, 194, 194), 'testName').
name(t_iocase_10, simple_name, name_file_filter_1_expr41, expression, range(name_file_filter_1, 6716, 6, 198, 198), 'IOCase').
name(m_value_81, simple_name, name_file_filter_1_expr41, name, range(name_file_filter_1, 6723, 5, 198, 198), 'value').
name(p_io_case_906, simple_name, name_file_filter_1_expr41, (arguments, 0), range(name_file_filter_1, 6729, 6, 198, 198), 'ioCase').
name(t_iocase_10, simple_name, q_sensitive_22, qualifier, range(name_file_filter_1, 6737, 6, 198, 198), 'IOCase').
name(q_sensitive_22, qualified_name, name_file_filter_1_expr41, (arguments, 1), range(name_file_filter_1, 6737, 16, 198, 198), 'IOCase.SENSITIVE').
name(v_buffer_907, simple_name, name_file_filter_1_code45, name, range(name_file_filter_1, 6958, 6, 208, 208), 'buffer').
name(v_buffer_907, simple_name, name_file_filter_1_expr43, expression, range(name_file_filter_1, 6996, 6, 209, 209), 'buffer').
name(m_append_408, simple_name, name_file_filter_1_expr43, name, range(name_file_filter_1, 7003, 6, 209, 209), 'append').
name(m_to_string_416, simple_name, name_file_filter_1_expr44, name, range(name_file_filter_1, 7016, 8, 209, 209), 'toString').
name(v_buffer_907, simple_name, name_file_filter_1_expr45, expression, range(name_file_filter_1, 7037, 6, 210, 210), 'buffer').
name(m_append_408, simple_name, name_file_filter_1_expr45, name, range(name_file_filter_1, 7044, 6, 210, 210), 'append').
name(m_append_407, simple_name, name_file_filter_1_expr46, name, range(name_file_filter_1, 7065, 6, 211, 211), 'append').
name(f_names_891, simple_name, name_file_filter_1_expr46, (arguments, 0), range(name_file_filter_1, 7072, 5, 211, 211), 'names').
name(v_buffer_907, simple_name, name_file_filter_1_expr46, (arguments, 1), range(name_file_filter_1, 7079, 6, 211, 211), 'buffer').
name(v_buffer_907, simple_name, name_file_filter_1_expr47, expression, range(name_file_filter_1, 7096, 6, 212, 212), 'buffer').
name(m_append_408, simple_name, name_file_filter_1_expr47, name, range(name_file_filter_1, 7103, 6, 212, 212), 'append').
name(v_buffer_907, simple_name, name_file_filter_1_expr48, expression, range(name_file_filter_1, 7131, 6, 213, 213), 'buffer').
name(m_to_string_614, simple_name, name_file_filter_1_expr48, name, range(name_file_filter_1, 7138, 8, 213, 213), 'toString').
%file_filter_utils_1 - org.apache.commons.io.filefilter.FileFilterUtils
name(f_cvs_filter_814, simple_name, file_filter_utils_1_code8, name, range(file_filter_utils_1, 1641, 10, 47, 47), 'CVS_FILTER').
name(m_not_file_filter_541, simple_name, file_filter_utils_1_expr1, name, range(file_filter_utils_1, 1654, 13, 47, 47), 'notFileFilter').
name(m_and_542, simple_name, file_filter_utils_1_expr2, name, range(file_filter_utils_1, 1681, 3, 48, 48), 'and').
name(m_directory_file_filter_543, simple_name, file_filter_utils_1_expr3, name, range(file_filter_utils_1, 1685, 19, 48, 48), 'directoryFileFilter').
name(m_name_file_filter_544, simple_name, file_filter_utils_1_expr4, name, range(file_filter_utils_1, 1708, 14, 48, 48), 'nameFileFilter').
name(f_svn_filter_815, simple_name, file_filter_utils_1_code14, name, range(file_filter_utils_1, 1820, 10, 51, 51), 'SVN_FILTER').
name(m_not_file_filter_541, simple_name, file_filter_utils_1_expr5, name, range(file_filter_utils_1, 1833, 13, 51, 51), 'notFileFilter').
name(m_and_542, simple_name, file_filter_utils_1_expr6, name, range(file_filter_utils_1, 1860, 3, 52, 52), 'and').
name(m_directory_file_filter_543, simple_name, file_filter_utils_1_expr7, name, range(file_filter_utils_1, 1864, 19, 52, 52), 'directoryFileFilter').
name(m_name_file_filter_544, simple_name, file_filter_utils_1_expr8, name, range(file_filter_utils_1, 1887, 14, 52, 52), 'nameFileFilter').
name(m_to_list_551, simple_name, file_filter_utils_1_expr10, name, range(file_filter_utils_1, 5273, 6, 146, 146), 'toList').
name(p_filters_825, simple_name, file_filter_utils_1_expr10, (arguments, 0), range(file_filter_utils_1, 5280, 7, 146, 146), 'filters').
name(q_directory_21, qualified_name, file_filter_utils_1_stmt2, expression, range(file_filter_utils_1, 6838, 29, 195, 195), 'DirectoryFileFilter.DIRECTORY').
name(t_directory_file_filter_27, simple_name, q_directory_21, qualifier, range(file_filter_utils_1, 6838, 19, 195, 195), 'DirectoryFileFilter').
name(p_name_855, simple_name, file_filter_utils_1_expr11, (arguments, 0), range(file_filter_utils_1, 20636, 4, 568, 568), 'name').
name(p_name_856, simple_name, file_filter_utils_1_expr12, (arguments, 0), range(file_filter_utils_1, 21079, 4, 581, 581), 'name').
name(p_io_case_857, simple_name, file_filter_utils_1_expr12, (arguments, 1), range(file_filter_utils_1, 21085, 6, 581, 581), 'ioCase').
name(p_filter_858, simple_name, file_filter_utils_1_expr13, expression, range(file_filter_utils_1, 21393, 6, 592, 592), 'filter').
name(m_negate_449, simple_name, file_filter_utils_1_expr13, name, range(file_filter_utils_1, 21400, 6, 592, 592), 'negate').
name(t_stream_28, simple_name, file_filter_utils_1_expr18, expression, range(file_filter_utils_1, 25973, 6, 724, 724), 'Stream').
name(m_of_586, simple_name, file_filter_utils_1_expr18, name, range(file_filter_utils_1, 25980, 2, 724, 724), 'of').
name(t_objects_5, simple_name, file_filter_utils_1_expr19, expression, range(file_filter_utils_1, 25983, 7, 724, 724), 'Objects').
name(m_require_non_null_12, simple_name, file_filter_utils_1_expr19, name, range(file_filter_utils_1, 25991, 14, 724, 724), 'requireNonNull').
name(p_filters_873, simple_name, file_filter_utils_1_expr19, (arguments, 0), range(file_filter_utils_1, 26006, 7, 724, 724), 'filters').
name(m_map_585, simple_name, file_filter_utils_1_expr16, name, range(file_filter_utils_1, 26027, 3, 724, 724), 'map').
name(t_objects_5, simple_name, file_filter_utils_1_expr17, expression, range(file_filter_utils_1, 26031, 7, 724, 724), 'Objects').
name(m_require_non_null_587, simple_name, file_filter_utils_1_expr17, name, range(file_filter_utils_1, 26040, 14, 724, 724), 'requireNonNull').
name(m_collect_584, simple_name, file_filter_utils_1_expr14, name, range(file_filter_utils_1, 26056, 7, 724, 724), 'collect').
name(t_collectors_29, simple_name, file_filter_utils_1_expr15, expression, range(file_filter_utils_1, 26064, 10, 724, 724), 'Collectors').
name(m_to_list_588, simple_name, file_filter_utils_1_expr15, name, range(file_filter_utils_1, 26075, 6, 724, 724), 'toList').
%file_system_1 - org.apache.commons.io.FileSystem
name(t_file_system_1, simple_name, file_system_1_code2, name, range(file_system_1, 1305, 10, 34, 34), 'FileSystem').
name(f_generic_1, simple_name, file_system_1_code4, name, range(file_system_1, 1367, 7, 39, 39), 'GENERIC').
name(t_integer_2, simple_name, q_max_value_1, qualifier, range(file_system_1, 1395, 7, 39, 39), 'Integer').
name(q_max_value_1, qualified_name, file_system_1_code4, (arguments, 3), range(file_system_1, 1395, 17, 39, 39), 'Integer.MAX_VALUE').
name(t_integer_2, simple_name, q_max_value_2, qualifier, range(file_system_1, 1414, 7, 39, 39), 'Integer').
name(q_max_value_2, qualified_name, file_system_1_code4, (arguments, 4), range(file_system_1, 1414, 17, 39, 39), 'Integer.MAX_VALUE').
name(f_linux_2, simple_name, file_system_1_code11, name, range(file_system_1, 1534, 5, 44, 44), 'LINUX').
name(f_mac_osx_3, simple_name, file_system_1_code15, name, range(file_system_1, 1827, 7, 56, 56), 'MAC_OSX').
name(f_windows_4, simple_name, file_system_1_code19, name, range(file_system_1, 2672, 7, 79, 79), 'WINDOWS').
name(f_is_os_linux_5, simple_name, file_system_1_code25, name, range(file_system_1, 3719, 11, 102, 102), 'IS_OS_LINUX').
name(m_get_os_matches_name_1, simple_name, file_system_1_expr9, name, range(file_system_1, 3733, 16, 102, 102), 'getOsMatchesName').
name(f_is_os_mac_6, simple_name, file_system_1_code31, name, range(file_system_1, 3974, 9, 112, 112), 'IS_OS_MAC').
name(m_get_os_matches_name_1, simple_name, file_system_1_expr10, name, range(file_system_1, 3986, 16, 112, 112), 'getOsMatchesName').
name(f_is_os_windows_7, simple_name, file_system_1_code37, name, range(file_system_1, 4359, 13, 127, 127), 'IS_OS_WINDOWS').
name(m_get_os_matches_name_1, simple_name, file_system_1_expr11, name, range(file_system_1, 4375, 16, 127, 127), 'getOsMatchesName').
name(f_os_name_windows_prefix_8, simple_name, file_system_1_expr11, (arguments, 0), range(file_system_1, 4392, 22, 127, 127), 'OS_NAME_WINDOWS_PREFIX').
name(f_current_9, simple_name, file_system_1_code43, name, range(file_system_1, 4501, 7, 132, 132), 'CURRENT').
name(m_current_2, simple_name, file_system_1_expr12, name, range(file_system_1, 4511, 7, 132, 132), 'current').
name(f_is_os_linux_5, simple_name, file_system_1_stmt1, expression, range(file_system_1, 4676, 11, 140, 140), 'IS_OS_LINUX').
name(f_linux_2, simple_name, file_system_1_stmt2, expression, range(file_system_1, 4710, 5, 141, 141), 'LINUX').
name(f_current_9, simple_name, file_system_1_stmt3, expression, range(file_system_1, 5046, 7, 158, 158), 'CURRENT').
name(m_is_os_name_match_4, simple_name, file_system_1_expr13, name, range(file_system_1, 5360, 13, 169, 169), 'isOsNameMatch').
name(m_get_system_property_5, simple_name, file_system_1_expr14, name, range(file_system_1, 5374, 17, 169, 169), 'getSystemProperty').
name(p_os_name_prefix_10, simple_name, file_system_1_expr13, (arguments, 1), range(file_system_1, 5404, 12, 169, 169), 'osNamePrefix').
name(t_system_3, simple_name, file_system_1_expr15, expression, range(file_system_1, 5976, 6, 187, 187), 'System').
name(m_get_property_6, simple_name, file_system_1_expr15, name, range(file_system_1, 5983, 11, 187, 187), 'getProperty').
name(p_property_11, simple_name, file_system_1_expr15, (arguments, 0), range(file_system_1, 5995, 8, 187, 187), 'property').
name(p_os_name_15, simple_name, file_system_1_expr16, left_operand, range(file_system_1, 9838, 6, 282, 282), 'osName').
name(p_os_name_15, simple_name, file_system_1_expr19, expression, range(file_system_1, 9907, 6, 285, 285), 'osName').
name(m_to_upper_case_9, simple_name, file_system_1_expr19, name, range(file_system_1, 9914, 11, 285, 285), 'toUpperCase').
name(q_root_2, qualified_name, file_system_1_expr19, (arguments, 0), range(file_system_1, 9926, 11, 285, 285), 'Locale.ROOT').
name(t_locale_4, simple_name, q_root_2, qualifier, range(file_system_1, 9926, 6, 285, 285), 'Locale').
name(m_starts_with_8, simple_name, file_system_1_expr17, name, range(file_system_1, 9939, 10, 285, 285), 'startsWith').
name(p_os_name_prefix_16, simple_name, file_system_1_expr18, expression, range(file_system_1, 9950, 12, 285, 285), 'osNamePrefix').
name(m_to_upper_case_9, simple_name, file_system_1_expr18, name, range(file_system_1, 9963, 11, 285, 285), 'toUpperCase').
name(t_locale_4, simple_name, q_root_3, qualifier, range(file_system_1, 9975, 6, 285, 285), 'Locale').
name(q_root_3, qualified_name, file_system_1_expr18, (arguments, 0), range(file_system_1, 9975, 11, 285, 285), 'Locale.ROOT').
name(p_reserved_file_names_26, simple_name, file_system_1_code50, name, range(file_system_1, 11870, 17, 328, 328), 'reservedFileNames').
name(p_reserved_file_names_extensions_27, simple_name, file_system_1_code55, name, range(file_system_1, 11903, 27, 328, 328), 'reservedFileNamesExtensions').
name(p_supports_drive_letter_28, simple_name, file_system_1_code58, name, range(file_system_1, 11946, 19, 328, 328), 'supportsDriveLetter').
name(p_name_separator_29, simple_name, file_system_1_code61, name, range(file_system_1, 11978, 13, 328, 328), 'nameSeparator').
name(f_block_size_30, simple_name, file_system_1_expr21, name, range(file_system_1, 12008, 9, 329, 329), 'blockSize').
name(p_block_size_20, simple_name, file_system_1_expr20, right_hand_side, range(file_system_1, 12020, 9, 329, 329), 'blockSize').
name(f_max_file_name_length_31, simple_name, file_system_1_expr24, name, range(file_system_1, 12044, 17, 330, 330), 'maxFileNameLength').
name(p_max_file_length_23, simple_name, file_system_1_expr23, right_hand_side, range(file_system_1, 12064, 13, 330, 330), 'maxFileLength').
name(f_max_path_length_32, simple_name, file_system_1_expr27, name, range(file_system_1, 12092, 13, 331, 331), 'maxPathLength').
name(p_max_path_length_24, simple_name, file_system_1_expr26, right_hand_side, range(file_system_1, 12108, 13, 331, 331), 'maxPathLength').
name(f_illegal_file_name_chars_33, simple_name, file_system_1_expr30, name, range(file_system_1, 12136, 20, 332, 332), 'illegalFileNameChars').
name(t_objects_5, simple_name, file_system_1_expr31, expression, range(file_system_1, 12159, 7, 332, 332), 'Objects').
name(m_require_non_null_12, simple_name, file_system_1_expr31, name, range(file_system_1, 12167, 14, 332, 332), 'requireNonNull').
name(p_illegal_file_name_chars_25, simple_name, file_system_1_expr31, (arguments, 0), range(file_system_1, 12182, 20, 332, 332), 'illegalFileNameChars').
name(f_reserved_file_names_34, simple_name, file_system_1_expr34, name, range(file_system_1, 12242, 17, 333, 333), 'reservedFileNames').
name(t_objects_5, simple_name, file_system_1_expr35, expression, range(file_system_1, 12262, 7, 333, 333), 'Objects').
name(m_require_non_null_12, simple_name, file_system_1_expr35, name, range(file_system_1, 12270, 14, 333, 333), 'requireNonNull').
name(p_reserved_file_names_26, simple_name, file_system_1_expr35, (arguments, 0), range(file_system_1, 12285, 17, 333, 333), 'reservedFileNames').
name(f_reserved_file_names_extensions_35, simple_name, file_system_1_expr38, name, range(file_system_1, 12339, 27, 334, 334), 'reservedFileNamesExtensions').
name(p_reserved_file_names_extensions_27, simple_name, file_system_1_expr37, right_hand_side, range(file_system_1, 12369, 27, 334, 334), 'reservedFileNamesExtensions').
name(f_case_sensitive_36, simple_name, file_system_1_expr41, name, range(file_system_1, 12411, 13, 335, 335), 'caseSensitive').
name(p_case_sensitive_21, simple_name, file_system_1_expr40, right_hand_side, range(file_system_1, 12427, 13, 335, 335), 'caseSensitive').
name(f_case_preserving_37, simple_name, file_system_1_expr44, name, range(file_system_1, 12455, 14, 336, 336), 'casePreserving').
name(p_case_preserving_22, simple_name, file_system_1_expr43, right_hand_side, range(file_system_1, 12472, 14, 336, 336), 'casePreserving').
name(f_supports_drive_letter_38, simple_name, file_system_1_expr47, name, range(file_system_1, 12501, 19, 337, 337), 'supportsDriveLetter').
name(p_supports_drive_letter_28, simple_name, file_system_1_expr46, right_hand_side, range(file_system_1, 12523, 19, 337, 337), 'supportsDriveLetter').
name(f_name_separator_39, simple_name, file_system_1_expr50, name, range(file_system_1, 12557, 13, 338, 338), 'nameSeparator').
name(p_name_separator_29, simple_name, file_system_1_expr49, right_hand_side, range(file_system_1, 12573, 13, 338, 338), 'nameSeparator').
name(f_name_separator_other_40, simple_name, file_system_1_expr53, name, range(file_system_1, 12601, 18, 339, 339), 'nameSeparatorOther').
name(t_filename_utils_6, simple_name, file_system_1_expr54, expression, range(file_system_1, 12622, 13, 339, 339), 'FilenameUtils').
name(m_flip_separator_13, simple_name, file_system_1_expr54, name, range(file_system_1, 12636, 13, 339, 339), 'flipSeparator').
name(p_name_separator_29, simple_name, file_system_1_expr54, (arguments, 0), range(file_system_1, 12650, 13, 339, 339), 'nameSeparator').
name(f_case_sensitive_36, simple_name, file_system_1_stmt20, expression, range(file_system_1, 14930, 13, 428, 428), 'caseSensitive').
%can_read_file_filter_1 - org.apache.commons.io.filefilter.CanReadFileFilter
name(f_can_read_771, simple_name, can_read_file_filter_1_code8, name, range(can_read_file_filter_1, 2324, 8, 71, 71), 'CAN_READ').
name(f_cannot_read_772, simple_name, can_read_file_filter_1_code15, name, range(can_read_file_filter_1, 2458, 11, 74, 74), 'CANNOT_READ').
name(f_can_read_771, simple_name, can_read_file_filter_1_expr2, expression, range(can_read_file_filter_1, 2472, 8, 74, 74), 'CAN_READ').
name(m_negate_449, simple_name, can_read_file_filter_1_expr2, name, range(can_read_file_filter_1, 2481, 6, 74, 74), 'negate').
name(f_read_only_773, simple_name, can_read_file_filter_1_code21, name, range(can_read_file_filter_1, 2586, 9, 77, 77), 'READ_ONLY').
name(f_can_read_771, simple_name, can_read_file_filter_1_expr3, expression, range(can_read_file_filter_1, 2598, 8, 77, 77), 'CAN_READ').
name(m_and_450, simple_name, can_read_file_filter_1_expr3, name, range(can_read_file_filter_1, 2607, 3, 77, 77), 'and').
name(t_can_write_file_filter_19, simple_name, q_cannot_write_15, qualifier, range(can_read_file_filter_1, 2611, 18, 77, 77), 'CanWriteFileFilter').
name(q_cannot_write_15, qualified_name, can_read_file_filter_1_expr3, (arguments, 0), range(can_read_file_filter_1, 2611, 31, 77, 77), 'CanWriteFileFilter.CANNOT_WRITE').
name(m_can_read_file_filter_448, simple_name, can_read_file_filter_1_code22, name, range(can_read_file_filter_1, 2780, 17, 84, 84), 'CanReadFileFilter').
name(p_file_774, simple_name, can_read_file_filter_1_expr4, expression, range(can_read_file_filter_1, 3068, 4, 95, 95), 'file').
name(m_can_read_452, simple_name, can_read_file_filter_1_expr4, name, range(can_read_file_filter_1, 3073, 7, 95, 95), 'canRead').
name(m_to_file_visit_result_415, simple_name, can_read_file_filter_1_expr5, name, range(can_read_file_filter_1, 3416, 17, 107, 107), 'toFileVisitResult').
name(t_files_20, simple_name, can_read_file_filter_1_expr6, expression, range(can_read_file_filter_1, 3434, 5, 107, 107), 'Files').
name(m_is_readable_454, simple_name, can_read_file_filter_1_expr6, name, range(can_read_file_filter_1, 3440, 10, 107, 107), 'isReadable').
name(p_file_775, simple_name, can_read_file_filter_1_expr6, (arguments, 0), range(can_read_file_filter_1, 3451, 4, 107, 107), 'file').
%hidden_file_filter_1 - org.apache.commons.io.filefilter.HiddenFileFilter
name(f_hidden_874, simple_name, hidden_file_filter_1_code8, name, range(hidden_file_filter_1, 2688, 6, 82, 82), 'HIDDEN').
name(f_visible_875, simple_name, hidden_file_filter_1_code15, name, range(hidden_file_filter_1, 2887, 7, 87, 87), 'VISIBLE').
name(f_hidden_874, simple_name, hidden_file_filter_1_expr2, expression, range(hidden_file_filter_1, 2897, 6, 87, 87), 'HIDDEN').
name(m_negate_449, simple_name, hidden_file_filter_1_expr2, name, range(hidden_file_filter_1, 2904, 6, 87, 87), 'negate').
name(m_hidden_file_filter_591, simple_name, hidden_file_filter_1_code16, name, range(hidden_file_filter_1, 2977, 16, 92, 92), 'HiddenFileFilter').
name(p_file_876, simple_name, hidden_file_filter_1_expr3, expression, range(hidden_file_filter_1, 3275, 4, 104, 104), 'file').
name(m_is_hidden_593, simple_name, hidden_file_filter_1_expr3, name, range(hidden_file_filter_1, 3280, 8, 104, 104), 'isHidden').
name(m_get_410, simple_name, hidden_file_filter_1_expr4, name, range(hidden_file_filter_1, 3635, 3, 117, 117), 'get').
name(m_to_file_visit_result_415, simple_name, hidden_file_filter_1_expr6, name, range(hidden_file_filter_1, 3645, 17, 117, 117), 'toFileVisitResult').
name(t_files_20, simple_name, hidden_file_filter_1_expr7, expression, range(hidden_file_filter_1, 3663, 5, 117, 117), 'Files').
name(m_is_hidden_595, simple_name, hidden_file_filter_1_expr7, name, range(hidden_file_filter_1, 3669, 8, 117, 117), 'isHidden').
name(p_file_877, simple_name, hidden_file_filter_1_expr7, (arguments, 0), range(hidden_file_filter_1, 3678, 4, 117, 117), 'file').
%abstract_file_filter_1 - org.apache.commons.io.filefilter.AbstractFileFilter
name(p_accept_719, simple_name, abstract_file_filter_1_expr1, expression, range(abstract_file_filter_1, 1771, 6, 45, 45), 'accept').
name(t_file_visit_result_18, simple_name, q_continue_12, qualifier, range(abstract_file_filter_1, 1780, 15, 45, 45), 'FileVisitResult').
name(q_continue_12, qualified_name, abstract_file_filter_1_expr1, then_expression, range(abstract_file_filter_1, 1780, 24, 45, 45), 'FileVisitResult.CONTINUE').
name(t_file_visit_result_18, simple_name, q_terminate_13, qualifier, range(abstract_file_filter_1, 1807, 15, 45, 45), 'FileVisitResult').
name(q_terminate_13, qualified_name, abstract_file_filter_1_expr1, else_expression, range(abstract_file_filter_1, 1807, 25, 45, 45), 'FileVisitResult.TERMINATE').
name(t_file_visit_result_18, simple_name, q_continue_14, qualifier, range(abstract_file_filter_1, 2148, 15, 62, 62), 'FileVisitResult').
name(q_continue_14, qualified_name, abstract_file_filter_1_stmt2, (arguments, 0), range(abstract_file_filter_1, 2148, 24, 62, 62), 'FileVisitResult.CONTINUE').
name(q_terminate_14, qualified_name, abstract_file_filter_1_stmt2, (arguments, 1), range(abstract_file_filter_1, 2174, 25, 62, 62), 'FileVisitResult.TERMINATE').
name(t_file_visit_result_18, simple_name, q_terminate_14, qualifier, range(abstract_file_filter_1, 2174, 15, 62, 62), 'FileVisitResult').
name(m_abstract_file_filter_402, simple_name, abstract_file_filter_1_code5, name, range(abstract_file_filter_1, 2399, 18, 72, 72), 'AbstractFileFilter').
name(p_on_accept_722, simple_name, abstract_file_filter_1_code7, name, range(abstract_file_filter_1, 2440, 8, 72, 72), 'onAccept').
name(p_on_reject_723, simple_name, abstract_file_filter_1_code10, name, range(abstract_file_filter_1, 2472, 8, 72, 72), 'onReject').
name(f_on_accept_724, simple_name, abstract_file_filter_1_expr4, name, range(abstract_file_filter_1, 2497, 8, 73, 73), 'onAccept').
name(p_on_accept_722, simple_name, abstract_file_filter_1_expr3, right_hand_side, range(abstract_file_filter_1, 2508, 8, 73, 73), 'onAccept').
name(f_on_reject_725, simple_name, abstract_file_filter_1_expr7, name, range(abstract_file_filter_1, 2531, 8, 74, 74), 'onReject').
name(p_on_reject_723, simple_name, abstract_file_filter_1_expr6, right_hand_side, range(abstract_file_filter_1, 2542, 8, 74, 74), 'onReject').
name(t_objects_5, simple_name, abstract_file_filter_1_expr9, expression, range(abstract_file_filter_1, 3245, 7, 98, 98), 'Objects').
name(m_require_non_null_12, simple_name, abstract_file_filter_1_expr9, name, range(abstract_file_filter_1, 3253, 14, 98, 98), 'requireNonNull').
name(p_name_728, simple_name, abstract_file_filter_1_expr9, (arguments, 0), range(abstract_file_filter_1, 3268, 4, 98, 98), 'name').
name(m_accept_403, simple_name, abstract_file_filter_1_expr10, name, range(abstract_file_filter_1, 3298, 6, 99, 99), 'accept').
name(p_dir_727, simple_name, abstract_file_filter_1_expr11, (arguments, 0), range(abstract_file_filter_1, 3314, 3, 99, 99), 'dir').
name(p_name_728, simple_name, abstract_file_filter_1_expr11, (arguments, 1), range(abstract_file_filter_1, 3319, 4, 99, 99), 'name').
name(v_i_733, simple_name, abstract_file_filter_1_code17, name, range(abstract_file_filter_1, 3665, 1, 112, 112), 'i').
name(v_i_733, simple_name, abstract_file_filter_1_expr13, left_operand, range(abstract_file_filter_1, 3672, 1, 112, 112), 'i').
name(q_length_14, qualified_name, abstract_file_filter_1_expr13, right_operand, range(abstract_file_filter_1, 3676, 12, 112, 112), 'array.length').
name(p_array_731, simple_name, q_length_14, qualifier, range(abstract_file_filter_1, 3676, 5, 112, 112), 'array').
name(v_i_733, simple_name, abstract_file_filter_1_expr14, operand, range(abstract_file_filter_1, 3690, 1, 112, 112), 'i').
name(v_i_733, simple_name, abstract_file_filter_1_expr15, left_operand, range(abstract_file_filter_1, 3713, 1, 113, 113), 'i').
name(p_buffer_732, simple_name, abstract_file_filter_1_expr16, expression, range(abstract_file_filter_1, 3738, 6, 114, 114), 'buffer').
name(m_append_408, simple_name, abstract_file_filter_1_expr16, name, range(abstract_file_filter_1, 3745, 6, 114, 114), 'append').
name(p_buffer_732, simple_name, abstract_file_filter_1_expr17, expression, range(abstract_file_filter_1, 3784, 6, 116, 116), 'buffer').
name(m_append_409, simple_name, abstract_file_filter_1_expr17, name, range(abstract_file_filter_1, 3791, 6, 116, 116), 'append').
name(p_array_731, simple_name, abstract_file_filter_1_expr18, array, range(abstract_file_filter_1, 3798, 5, 116, 116), 'array').
name(v_i_733, simple_name, abstract_file_filter_1_expr18, index, range(abstract_file_filter_1, 3804, 1, 116, 116), 'i').
name(p_supplier_734, simple_name, abstract_file_filter_1_expr19, expression, range(abstract_file_filter_1, 3929, 8, 122, 122), 'supplier').
name(m_get_411, simple_name, abstract_file_filter_1_expr19, name, range(abstract_file_filter_1, 3938, 3, 122, 122), 'get').
name(p_accept_740, simple_name, abstract_file_filter_1_expr20, expression, range(abstract_file_filter_1, 4876, 6, 156, 156), 'accept').
name(f_on_accept_724, simple_name, abstract_file_filter_1_expr20, then_expression, range(abstract_file_filter_1, 4885, 8, 156, 156), 'onAccept').
name(f_on_reject_725, simple_name, abstract_file_filter_1_expr20, else_expression, range(abstract_file_filter_1, 4896, 8, 156, 156), 'onReject').
name(m_get_class_418, simple_name, abstract_file_filter_1_expr22, name, range(abstract_file_filter_1, 5096, 8, 166, 166), 'getClass').
name(m_get_simple_name_417, simple_name, abstract_file_filter_1_expr21, name, range(abstract_file_filter_1, 5107, 13, 166, 166), 'getSimpleName').
%abstract_filter_test_1 - org.apache.commons.io.filefilter.AbstractFilterTest
name(m_assert_equals_422, simple_name, abstract_filter_test_1_expr1, name, range(abstract_filter_test_1, 1774, 12, 50, 50), 'assertEquals').
name(p_expected_747, simple_name, abstract_filter_test_1_expr1, (arguments, 0), range(abstract_filter_test_1, 1787, 8, 50, 50), 'expected').
name(p_filter_745, simple_name, abstract_filter_test_1_expr2, expression, range(abstract_filter_test_1, 1797, 6, 50, 50), 'filter').
name(m_accept_423, simple_name, abstract_filter_test_1_expr2, name, range(abstract_filter_test_1, 1804, 6, 50, 50), 'accept').
name(p_file_746, simple_name, abstract_filter_test_1_expr2, (arguments, 0), range(abstract_filter_test_1, 1811, 4, 50, 50), 'file').
name(p_filter_745, simple_name, abstract_filter_test_1_expr5, expression, range(abstract_filter_test_1, 1836, 6, 50, 50), 'filter').
name(m_get_class_418, simple_name, abstract_filter_test_1_expr5, name, range(abstract_filter_test_1, 1843, 8, 50, 50), 'getClass').
name(m_get_name_424, simple_name, abstract_filter_test_1_expr4, name, range(abstract_filter_test_1, 1854, 7, 50, 50), 'getName').
name(p_expected_747, simple_name, abstract_filter_test_1_expr3, (extended_operands, 1), range(abstract_filter_test_1, 1876, 8, 50, 50), 'expected').
name(p_file_746, simple_name, abstract_filter_test_1_expr3, (extended_operands, 3), range(abstract_filter_test_1, 1897, 4, 50, 50), 'file').
name(m_assert_equals_422, simple_name, abstract_filter_test_1_expr6, name, range(abstract_filter_test_1, 3364, 12, 73, 73), 'assertEquals').
name(v_expected_file_visit_result_751, simple_name, abstract_filter_test_1_expr6, (arguments, 0), range(abstract_filter_test_1, 3377, 23, 73, 73), 'expectedFileVisitResult').
name(p_filter_748, simple_name, abstract_filter_test_1_expr7, expression, range(abstract_filter_test_1, 3402, 6, 73, 73), 'filter').
name(m_accept_426, simple_name, abstract_filter_test_1_expr7, name, range(abstract_filter_test_1, 3409, 6, 73, 73), 'accept').
name(p_path_749, simple_name, abstract_filter_test_1_expr7, (arguments, 0), range(abstract_filter_test_1, 3416, 4, 73, 73), 'path').
%and_file_filter_1 - org.apache.commons.io.filefilter.AndFileFilter
name(m_and_file_filter_430, simple_name, and_file_filter_1_code3, name, range(and_file_filter_1, 2208, 13, 67, 67), 'AndFileFilter').
name(p_initial_list_755, simple_name, and_file_filter_1_code5, name, range(and_file_filter_1, 2252, 11, 67, 67), 'initialList').
name(f_file_filters_756, simple_name, and_file_filter_1_expr2, name, range(and_file_filter_1, 2280, 11, 68, 68), 'fileFilters').
name(t_objects_5, simple_name, and_file_filter_1_expr3, expression, range(and_file_filter_1, 2294, 7, 68, 68), 'Objects').
name(m_require_non_null_12, simple_name, and_file_filter_1_expr3, name, range(and_file_filter_1, 2302, 14, 68, 68), 'requireNonNull').
name(p_initial_list_755, simple_name, and_file_filter_1_expr3, (arguments, 0), range(and_file_filter_1, 2317, 11, 68, 68), 'initialList').
name(p_initial_capacity_757, simple_name, and_file_filter_1_expr6, (arguments, 0), range(and_file_filter_1, 2578, 15, 77, 77), 'initialCapacity').
name(m_add_file_filter_435, simple_name, and_file_filter_1_expr8, name, range(and_file_filter_1, 3311, 13, 100, 100), 'addFileFilter').
name(p_filter_1_759, simple_name, and_file_filter_1_expr8, (arguments, 0), range(and_file_filter_1, 3325, 7, 100, 100), 'filter1').
name(m_add_file_filter_435, simple_name, and_file_filter_1_expr9, name, range(and_file_filter_1, 3343, 13, 101, 101), 'addFileFilter').
name(p_filter_2_760, simple_name, and_file_filter_1_expr9, (arguments, 0), range(and_file_filter_1, 3357, 7, 101, 101), 'filter2').
name(t_objects_5, simple_name, and_file_filter_1_expr12, expression, range(and_file_filter_1, 3679, 7, 112, 112), 'Objects').
name(m_require_non_null_12, simple_name, and_file_filter_1_expr12, name, range(and_file_filter_1, 3687, 14, 112, 112), 'requireNonNull').
name(p_file_filters_761, simple_name, and_file_filter_1_expr12, (arguments, 0), range(and_file_filter_1, 3702, 11, 112, 112), 'fileFilters').
name(f_file_filters_756, simple_name, and_file_filter_1_expr15, name, range(and_file_filter_1, 4672, 11, 146, 146), 'fileFilters').
name(m_add_441, simple_name, and_file_filter_1_expr13, name, range(and_file_filter_1, 4684, 3, 146, 146), 'add').
name(t_objects_5, simple_name, and_file_filter_1_expr14, expression, range(and_file_filter_1, 4688, 7, 146, 146), 'Objects').
name(m_require_non_null_12, simple_name, and_file_filter_1_expr14, name, range(and_file_filter_1, 4696, 14, 146, 146), 'requireNonNull').
name(p_file_filter_767, simple_name, and_file_filter_1_expr14, (arguments, 0), range(and_file_filter_1, 4711, 10, 146, 146), 'fileFilter').
%test_utils_1 - org.apache.commons.io.test.TestUtils
name(v_i_942, simple_name, test_utils_1_code5, name, range(test_utils_1, 8760, 1, 220, 220), 'i').
name(v_i_942, simple_name, test_utils_1_expr2, left_operand, range(test_utils_1, 8767, 1, 220, 220), 'i').
name(p_size_941, simple_name, test_utils_1_expr2, right_operand, range(test_utils_1, 8771, 4, 220, 220), 'size').
name(v_i_942, simple_name, test_utils_1_expr3, operand, range(test_utils_1, 8777, 1, 220, 220), 'i').
name(p_out_940, simple_name, test_utils_1_expr4, expression, range(test_utils_1, 8912, 3, 223, 223), 'out').
name(m_write_634, simple_name, test_utils_1_expr4, name, range(test_utils_1, 8916, 5, 223, 223), 'write').
name(v_i_942, simple_name, test_utils_1_expr8, left_operand, range(test_utils_1, 8930, 1, 223, 223), 'i').
%filename_utils_1 - org.apache.commons.io.FilenameUtils
name(f_empty_string_array_48, simple_name, filename_utils_1_code10, name, range(filename_utils_1, 3694, 18, 100, 100), 'EMPTY_STRING_ARRAY').
name(f_extension_separator_str_49, simple_name, filename_utils_1_code16, name, range(filename_utils_1, 4055, 23, 116, 116), 'EXTENSION_SEPARATOR_STR').
name(t_character_7, simple_name, filename_utils_1_expr2, expression, range(filename_utils_1, 4081, 9, 116, 116), 'Character').
name(m_to_string_30, simple_name, filename_utils_1_expr2, name, range(filename_utils_1, 4091, 8, 116, 116), 'toString').
name(f_extension_separator_50, simple_name, filename_utils_1_expr2, (arguments, 0), range(filename_utils_1, 4100, 19, 116, 116), 'EXTENSION_SEPARATOR').
name(f_system_name_separator_51, simple_name, filename_utils_1_code22, name, range(filename_utils_1, 4437, 21, 131, 131), 'SYSTEM_NAME_SEPARATOR').
name(t_file_8, simple_name, q_separator_char_3, qualifier, range(filename_utils_1, 4461, 4, 131, 131), 'File').
name(q_separator_char_3, qualified_name, filename_utils_1_code22, initializer, range(filename_utils_1, 4461, 18, 131, 131), 'File.separatorChar').
name(f_other_separator_52, simple_name, filename_utils_1_code28, name, range(filename_utils_1, 4605, 15, 136, 136), 'OTHER_SEPARATOR').
name(m_flip_separator_13, simple_name, filename_utils_1_expr3, name, range(filename_utils_1, 4623, 13, 136, 136), 'flipSeparator').
name(f_system_name_separator_51, simple_name, filename_utils_1_expr3, (arguments, 0), range(filename_utils_1, 4637, 21, 136, 136), 'SYSTEM_NAME_SEPARATOR').
name(f_ipv4_pattern_53, simple_name, filename_utils_1_code34, name, range(filename_utils_1, 4695, 12, 138, 138), 'IPV4_PATTERN').
name(t_pattern_9, simple_name, filename_utils_1_expr4, expression, range(filename_utils_1, 4710, 7, 138, 138), 'Pattern').
name(m_compile_31, simple_name, filename_utils_1_expr4, name, range(filename_utils_1, 4718, 7, 138, 138), 'compile').
name(f_reg_name_part_pattern_54, simple_name, filename_utils_1_code40, name, range(filename_utils_1, 5097, 21, 150, 150), 'REG_NAME_PART_PATTERN').
name(t_pattern_9, simple_name, filename_utils_1_expr5, expression, range(filename_utils_1, 5121, 7, 150, 150), 'Pattern').
name(m_compile_31, simple_name, filename_utils_1_expr5, name, range(filename_utils_1, 5129, 7, 150, 150), 'compile').
name(p_ch_78, simple_name, filename_utils_1_expr6, left_operand, range(filename_utils_1, 19394, 2, 525, 525), 'ch').
name(f_unix_name_separator_79, simple_name, filename_utils_1_expr6, right_operand, range(filename_utils_1, 19400, 19, 525, 525), 'UNIX_NAME_SEPARATOR').
name(f_windows_name_separator_80, simple_name, filename_utils_1_stmt2, expression, range(filename_utils_1, 19442, 22, 526, 526), 'WINDOWS_NAME_SEPARATOR').
name(p_ch_78, simple_name, filename_utils_1_expr7, left_operand, range(filename_utils_1, 19488, 2, 528, 528), 'ch').
name(f_windows_name_separator_80, simple_name, filename_utils_1_expr7, right_operand, range(filename_utils_1, 19494, 22, 528, 528), 'WINDOWS_NAME_SEPARATOR').
name(f_unix_name_separator_79, simple_name, filename_utils_1_stmt4, expression, range(filename_utils_1, 19539, 19, 529, 529), 'UNIX_NAME_SEPARATOR').
%file_filter_test_1 - org.apache.commons.io.filefilter.FileFilterTest
name(t_file_filter_test_21, simple_name, file_filter_test_1_code2, name, range(file_filter_test_1, 2220, 14, 59, 59), 'FileFilterTest').
name(v_read_only_file_799, simple_name, file_filter_test_1_code8, name, range(file_filter_test_1, 10542, 12, 221, 221), 'readOnlyFile').
name(f_temporary_folder_800, simple_name, file_filter_test_1_expr1, (arguments, 0), range(file_filter_test_1, 10566, 15, 221, 221), 'temporaryFolder').
name(v_read_only_path_801, simple_name, file_filter_test_1_code12, name, range(file_filter_test_1, 10626, 12, 222, 222), 'readOnlyPath').
name(v_read_only_file_799, simple_name, file_filter_test_1_expr2, expression, range(file_filter_test_1, 10641, 12, 222, 222), 'readOnlyFile').
name(m_to_path_482, simple_name, file_filter_test_1_expr2, name, range(file_filter_test_1, 10654, 6, 222, 222), 'toPath').
name(v_read_only_file_799, simple_name, file_filter_test_1_expr5, expression, range(file_filter_test_1, 10677, 12, 223, 223), 'readOnlyFile').
name(m_get_parent_file_484, simple_name, file_filter_test_1_expr5, name, range(file_filter_test_1, 10690, 13, 223, 223), 'getParentFile').
name(m_exists_483, simple_name, file_filter_test_1_expr4, name, range(file_filter_test_1, 10706, 6, 223, 223), 'exists').
name(v_output_802, simple_name, file_filter_test_1_code14, name, range(file_filter_test_1, 10862, 6, 226, 226), 'output').
name(t_files_20, simple_name, file_filter_test_1_expr8, expression, range(file_filter_test_1, 10896, 5, 226, 226), 'Files').
name(m_new_output_stream_486, simple_name, file_filter_test_1_expr8, name, range(file_filter_test_1, 10902, 15, 226, 226), 'newOutputStream').
name(v_read_only_file_799, simple_name, file_filter_test_1_expr9, expression, range(file_filter_test_1, 10918, 12, 226, 226), 'readOnlyFile').
name(m_to_path_482, simple_name, file_filter_test_1_expr9, name, range(file_filter_test_1, 10931, 6, 226, 226), 'toPath').
name(t_test_utils_22, simple_name, file_filter_test_1_expr10, expression, range(file_filter_test_1, 10957, 9, 227, 227), 'TestUtils').
name(m_generate_test_data_487, simple_name, file_filter_test_1_expr10, name, range(file_filter_test_1, 10967, 16, 227, 227), 'generateTestData').
name(v_output_802, simple_name, file_filter_test_1_expr10, (arguments, 0), range(file_filter_test_1, 10984, 6, 227, 227), 'output').
name(m_assert_true_105, simple_name, file_filter_test_1_expr11, name, range(file_filter_test_1, 11015, 10, 229, 229), 'assertTrue').
name(v_read_only_file_799, simple_name, file_filter_test_1_expr12, expression, range(file_filter_test_1, 11026, 12, 229, 229), 'readOnlyFile').
name(m_set_read_only_488, simple_name, file_filter_test_1_expr12, name, range(file_filter_test_1, 11039, 11, 229, 229), 'setReadOnly').
name(m_assert_filtering_421, simple_name, file_filter_test_1_expr13, name, range(file_filter_test_1, 11063, 15, 230, 230), 'assertFiltering').
name(q_can_read_16, qualified_name, file_filter_test_1_expr13, (arguments, 0), range(file_filter_test_1, 11079, 26, 230, 230), 'CanReadFileFilter.CAN_READ').
name(t_can_read_file_filter_23, simple_name, q_can_read_16, qualifier, range(file_filter_test_1, 11079, 17, 230, 230), 'CanReadFileFilter').
name(v_read_only_file_799, simple_name, file_filter_test_1_expr13, (arguments, 1), range(file_filter_test_1, 11107, 12, 230, 230), 'readOnlyFile').
name(m_assert_filtering_421, simple_name, file_filter_test_1_expr14, name, range(file_filter_test_1, 11136, 15, 231, 231), 'assertFiltering').
name(t_can_read_file_filter_23, simple_name, q_can_read_17, qualifier, range(file_filter_test_1, 11152, 17, 231, 231), 'CanReadFileFilter').
name(q_can_read_17, qualified_name, file_filter_test_1_expr14, (arguments, 0), range(file_filter_test_1, 11152, 26, 231, 231), 'CanReadFileFilter.CAN_READ').
name(v_read_only_file_803, simple_name, file_filter_test_1_code20, name, range(file_filter_test_1, 12064, 12, 247, 247), 'readOnlyFile').
name(f_temporary_folder_800, simple_name, file_filter_test_1_expr16, (arguments, 0), range(file_filter_test_1, 12088, 15, 247, 247), 'temporaryFolder').
name(v_read_only_path_804, simple_name, file_filter_test_1_code24, name, range(file_filter_test_1, 12148, 12, 248, 248), 'readOnlyPath').
name(v_read_only_file_803, simple_name, file_filter_test_1_expr17, expression, range(file_filter_test_1, 12163, 12, 248, 248), 'readOnlyFile').
name(m_to_path_482, simple_name, file_filter_test_1_expr17, name, range(file_filter_test_1, 12176, 6, 248, 248), 'toPath').
name(v_read_only_file_803, simple_name, file_filter_test_1_expr20, expression, range(file_filter_test_1, 12199, 12, 249, 249), 'readOnlyFile').
name(m_get_parent_file_484, simple_name, file_filter_test_1_expr20, name, range(file_filter_test_1, 12212, 13, 249, 249), 'getParentFile').
name(m_exists_483, simple_name, file_filter_test_1_expr19, name, range(file_filter_test_1, 12228, 6, 249, 249), 'exists').
name(v_output_805, simple_name, file_filter_test_1_code26, name, range(file_filter_test_1, 12384, 6, 252, 252), 'output').
name(t_files_20, simple_name, file_filter_test_1_expr23, expression, range(file_filter_test_1, 12418, 5, 252, 252), 'Files').
name(m_new_output_stream_486, simple_name, file_filter_test_1_expr23, name, range(file_filter_test_1, 12424, 15, 252, 252), 'newOutputStream').
name(v_read_only_file_803, simple_name, file_filter_test_1_expr24, expression, range(file_filter_test_1, 12440, 12, 252, 252), 'readOnlyFile').
name(m_to_path_482, simple_name, file_filter_test_1_expr24, name, range(file_filter_test_1, 12453, 6, 252, 252), 'toPath').
name(t_test_utils_22, simple_name, file_filter_test_1_expr25, expression, range(file_filter_test_1, 12479, 9, 253, 253), 'TestUtils').
name(m_generate_test_data_487, simple_name, file_filter_test_1_expr25, name, range(file_filter_test_1, 12489, 16, 253, 253), 'generateTestData').
name(v_output_805, simple_name, file_filter_test_1_expr25, (arguments, 0), range(file_filter_test_1, 12506, 6, 253, 253), 'output').
name(m_assert_true_105, simple_name, file_filter_test_1_expr26, name, range(file_filter_test_1, 12537, 10, 255, 255), 'assertTrue').
name(v_read_only_file_803, simple_name, file_filter_test_1_expr27, expression, range(file_filter_test_1, 12548, 12, 255, 255), 'readOnlyFile').
name(m_set_read_only_488, simple_name, file_filter_test_1_expr27, name, range(file_filter_test_1, 12561, 11, 255, 255), 'setReadOnly').
name(m_assert_filtering_421, simple_name, file_filter_test_1_expr28, name, range(file_filter_test_1, 12585, 15, 256, 256), 'assertFiltering').
name(q_can_write_17, qualified_name, file_filter_test_1_expr28, (arguments, 0), range(file_filter_test_1, 12601, 28, 256, 256), 'CanWriteFileFilter.CAN_WRITE').
name(t_can_write_file_filter_19, simple_name, q_can_write_17, qualifier, range(file_filter_test_1, 12601, 18, 256, 256), 'CanWriteFileFilter').
name(f_temporary_folder_800, simple_name, file_filter_test_1_expr28, (arguments, 1), range(file_filter_test_1, 12631, 15, 256, 256), 'temporaryFolder').
name(m_assert_filtering_421, simple_name, file_filter_test_1_expr29, name, range(file_filter_test_1, 12663, 15, 257, 257), 'assertFiltering').
name(q_can_write_18, qualified_name, file_filter_test_1_expr29, (arguments, 0), range(file_filter_test_1, 12679, 28, 257, 257), 'CanWriteFileFilter.CAN_WRITE').
name(t_can_write_file_filter_19, simple_name, q_can_write_18, qualifier, range(file_filter_test_1, 12679, 18, 257, 257), 'CanWriteFileFilter').
name(v_read_only_file_803, simple_name, file_filter_test_1_expr29, (arguments, 1), range(file_filter_test_1, 12709, 12, 257, 257), 'readOnlyFile').
name(m_assert_filtering_421, simple_name, file_filter_test_1_expr30, name, range(file_filter_test_1, 12739, 15, 258, 258), 'assertFiltering').
name(q_can_write_18, qualified_name, file_filter_test_1_expr30, (arguments, 0), range(file_filter_test_1, 12755, 28, 258, 258), 'CanWriteFileFilter.CAN_WRITE').
name(t_can_write_file_filter_19, simple_name, q_can_write_18, qualifier, range(file_filter_test_1, 12755, 18, 258, 258), 'CanWriteFileFilter').
name(v_empty_dir_file_806, simple_name, file_filter_test_1_code32, name, range(file_filter_test_1, 19976, 12, 403, 403), 'emptyDirFile').
name(f_temporary_folder_800, simple_name, file_filter_test_1_expr32, (arguments, 0), range(file_filter_test_1, 20000, 15, 403, 403), 'temporaryFolder').
name(v_empty_dir_path_807, simple_name, file_filter_test_1_code36, name, range(file_filter_test_1, 20050, 12, 404, 404), 'emptyDirPath').
name(v_empty_dir_file_806, simple_name, file_filter_test_1_expr33, expression, range(file_filter_test_1, 20065, 12, 404, 404), 'emptyDirFile').
name(m_to_path_482, simple_name, file_filter_test_1_expr33, name, range(file_filter_test_1, 20078, 6, 404, 404), 'toPath').
name(v_empty_dir_file_806, simple_name, file_filter_test_1_expr34, expression, range(file_filter_test_1, 20096, 12, 405, 405), 'emptyDirFile').
name(m_mkdirs_495, simple_name, file_filter_test_1_expr34, name, range(file_filter_test_1, 20109, 6, 405, 405), 'mkdirs').
name(m_assert_filtering_421, simple_name, file_filter_test_1_expr35, name, range(file_filter_test_1, 20127, 15, 406, 406), 'assertFiltering').
name(q_empty_18, qualified_name, file_filter_test_1_expr35, (arguments, 0), range(file_filter_test_1, 20143, 21, 406, 406), 'EmptyFileFilter.EMPTY').
name(t_empty_file_filter_24, simple_name, q_empty_18, qualifier, range(file_filter_test_1, 20143, 15, 406, 406), 'EmptyFileFilter').
name(v_empty_dir_file_806, simple_name, file_filter_test_1_expr35, (arguments, 1), range(file_filter_test_1, 20166, 12, 406, 406), 'emptyDirFile').
name(m_assert_filtering_425, simple_name, file_filter_test_1_expr36, name, range(file_filter_test_1, 20195, 15, 407, 407), 'assertFiltering').
name(q_empty_19, qualified_name, file_filter_test_1_expr36, (arguments, 0), range(file_filter_test_1, 20211, 21, 407, 407), 'EmptyFileFilter.EMPTY').
name(t_empty_file_filter_24, simple_name, q_empty_19, qualifier, range(file_filter_test_1, 20211, 15, 407, 407), 'EmptyFileFilter').
name(v_empty_dir_path_807, simple_name, file_filter_test_1_expr36, (arguments, 1), range(file_filter_test_1, 20234, 12, 407, 407), 'emptyDirPath').
name(m_assert_filtering_421, simple_name, file_filter_test_1_expr37, name, range(file_filter_test_1, 20263, 15, 408, 408), 'assertFiltering').
name(t_empty_file_filter_24, simple_name, q_empty_19, qualifier, range(file_filter_test_1, 20279, 15, 408, 408), 'EmptyFileFilter').
name(q_empty_19, qualified_name, file_filter_test_1_expr37, (arguments, 0), range(file_filter_test_1, 20279, 21, 408, 408), 'EmptyFileFilter.EMPTY').
name(v_filter_808, simple_name, file_filter_test_1_code41, name, range(file_filter_test_1, 25164, 6, 501, 501), 'filter').
name(t_file_file_filter_25, simple_name, q_instance_19, qualifier, range(file_filter_test_1, 25173, 14, 501, 501), 'FileFileFilter').
name(q_instance_19, qualified_name, file_filter_test_1_code41, initializer, range(file_filter_test_1, 25173, 23, 501, 501), 'FileFileFilter.INSTANCE').
name(m_assert_filtering_421, simple_name, file_filter_test_1_expr39, name, range(file_filter_test_1, 25207, 15, 503, 503), 'assertFiltering').
name(v_filter_808, simple_name, file_filter_test_1_expr39, (arguments, 0), range(file_filter_test_1, 25223, 6, 503, 503), 'filter').
name(v_hidden_dir_file_809, simple_name, file_filter_test_1_code46, name, range(file_filter_test_1, 34368, 13, 727, 727), 'hiddenDirFile').
name(f_svn_dir_name_810, simple_name, file_filter_test_1_expr41, (arguments, 0), range(file_filter_test_1, 34393, 12, 727, 727), 'SVN_DIR_NAME').
name(v_hidden_dir_path_811, simple_name, file_filter_test_1_code50, name, range(file_filter_test_1, 34427, 13, 728, 728), 'hiddenDirPath').
name(v_hidden_dir_file_809, simple_name, file_filter_test_1_expr42, expression, range(file_filter_test_1, 34443, 13, 728, 728), 'hiddenDirFile').
name(m_to_path_482, simple_name, file_filter_test_1_expr42, name, range(file_filter_test_1, 34457, 6, 728, 728), 'toPath').
name(v_hidden_dir_file_809, simple_name, file_filter_test_1_expr43, expression, range(file_filter_test_1, 34479, 13, 729, 729), 'hiddenDirFile').
name(m_exists_483, simple_name, file_filter_test_1_expr43, name, range(file_filter_test_1, 34493, 6, 729, 729), 'exists').
name(v_path_812, simple_name, file_filter_test_1_code53, name, range(file_filter_test_1, 34918, 4, 735, 735), 'path').
name(f_temporary_folder_800, simple_name, file_filter_test_1_expr44, expression, range(file_filter_test_1, 34925, 15, 735, 735), 'temporaryFolder').
name(m_to_path_482, simple_name, file_filter_test_1_expr44, name, range(file_filter_test_1, 34941, 6, 735, 735), 'toPath').
name(m_assert_filtering_421, simple_name, file_filter_test_1_expr45, name, range(file_filter_test_1, 34959, 15, 736, 736), 'assertFiltering').
name(t_hidden_file_filter_26, simple_name, q_hidden_20, qualifier, range(file_filter_test_1, 34975, 16, 736, 736), 'HiddenFileFilter').
name(q_hidden_20, qualified_name, file_filter_test_1_expr45, (arguments, 0), range(file_filter_test_1, 34975, 23, 736, 736), 'HiddenFileFilter.HIDDEN').
name(f_temporary_folder_800, simple_name, file_filter_test_1_expr45, (arguments, 1), range(file_filter_test_1, 35000, 15, 736, 736), 'temporaryFolder').
name(m_assert_filtering_425, simple_name, file_filter_test_1_expr46, name, range(file_filter_test_1, 35033, 15, 737, 737), 'assertFiltering').
name(q_hidden_21, qualified_name, file_filter_test_1_expr46, (arguments, 0), range(file_filter_test_1, 35049, 23, 737, 737), 'HiddenFileFilter.HIDDEN').
name(t_hidden_file_filter_26, simple_name, q_hidden_21, qualifier, range(file_filter_test_1, 35049, 16, 737, 737), 'HiddenFileFilter').
name(v_path_812, simple_name, file_filter_test_1_expr46, (arguments, 1), range(file_filter_test_1, 35074, 4, 737, 737), 'path').
name(m_assert_filtering_425, simple_name, file_filter_test_1_expr47, name, range(file_filter_test_1, 35096, 15, 738, 738), 'assertFiltering').
name(t_hidden_file_filter_26, simple_name, q_hidden_21, qualifier, range(file_filter_test_1, 35112, 16, 738, 738), 'HiddenFileFilter').
name(q_hidden_21, qualified_name, file_filter_test_1_expr47, (arguments, 0), range(file_filter_test_1, 35112, 23, 738, 738), 'HiddenFileFilter.HIDDEN').
name(v_filter_813, simple_name, file_filter_test_1_code58, name, range(file_filter_test_1, 49229, 6, 1064, 1064), 'filter').
name(m_assert_foo_bar_file_filtering_427, simple_name, file_filter_test_1_expr50, name, range(file_filter_test_1, 49280, 25, 1065, 1065), 'assertFooBarFileFiltering').
name(v_filter_813, simple_name, file_filter_test_1_expr50, (arguments, 0), range(file_filter_test_1, 49306, 6, 1065, 1065), 'filter').
name(m_assert_filtering_421, simple_name, file_filter_test_1_expr51, name, range(file_filter_test_1, 49323, 15, 1066, 1066), 'assertFiltering').
name(v_filter_813, simple_name, file_filter_test_1_expr51, (arguments, 0), range(file_filter_test_1, 49339, 6, 1066, 1066), 'filter').
%iofile_filter_1 - org.apache.commons.io.filefilter.IOFileFilter
name(f_empty_string_array_879, simple_name, iofile_filter_1_code7, name, range(iofile_filter_1, 1398, 18, 39, 39), 'EMPTY_STRING_ARRAY').
name(p_file_filter_885, simple_name, iofile_filter_1_expr2, (arguments, 1), range(iofile_filter_1, 2767, 10, 86, 86), 'fileFilter').
name(m_accept_426, simple_name, iofile_filter_1_expr5, name, range(iofile_filter_1, 3054, 6, 98, 98), 'accept').
name(p_path_886, simple_name, iofile_filter_1_expr5, (arguments, 0), range(iofile_filter_1, 3061, 4, 98, 98), 'path').
name(q_terminate_22, qualified_name, iofile_filter_1_expr4, right_operand, range(iofile_filter_1, 3076, 25, 98, 98), 'FileVisitResult.TERMINATE').
name(t_file_visit_result_18, simple_name, q_terminate_22, qualifier, range(iofile_filter_1, 3076, 15, 98, 98), 'FileVisitResult').

%%% Literals
%standard_line_separator_1 - org.apache.commons.io.StandardLineSeparator
literal(standard_line_separator_1_literal1, string_literal, standard_line_separator_1_code4, (arguments, 0), range(standard_line_separator_1, 1142, 4, 33, 33), "\r").
literal(standard_line_separator_1_literal2, string_literal, standard_line_separator_1_code5, (arguments, 0), range(standard_line_separator_1, 1262, 6, 38, 38), "\r\n").
literal(standard_line_separator_1_literal3, string_literal, standard_line_separator_1_code6, (arguments, 0), range(standard_line_separator_1, 1375, 4, 43, 43), "\n").
literal(standard_line_separator_1_literal4, string_literal, standard_line_separator_1_expr3, (arguments, 1), range(standard_line_separator_1, 1689, 15, 53, 53), "lineSeparator").
%path_utils_1 - org.apache.commons.io.file.PathUtils
literal(path_utils_1_literal1, null_literal, path_utils_1_code73, initializer, range(path_utils_1, 8096, 4, 201, 201), null).
literal(path_utils_1_literal3, null_literal, path_utils_1_expr12, right_operand, range(path_utils_1, 38850, 4, 881, 881), null).
literal(path_utils_1_literal2, null_literal, path_utils_1_expr11, else_expression, range(path_utils_1, 38878, 4, 881, 881), null).
literal(path_utils_1_literal5, null_literal, path_utils_1_expr15, right_operand, range(path_utils_1, 38911, 4, 882, 882), null).
literal(path_utils_1_literal4, null_literal, path_utils_1_expr14, else_expression, range(path_utils_1, 38945, 4, 882, 882), null).
%can_write_file_filter_1 - org.apache.commons.io.filefilter.CanWriteFileFilter
%iocase_1 - org.apache.commons.io.IOCase
literal(iocase_1_literal1, string_literal, iocase_1_code4, (arguments, 0), range(iocase_1, 1559, 11, 45, 45), "Sensitive").
literal(iocase_1_literal2, boolean_literal, iocase_1_code4, (arguments, 1), range(iocase_1, 1572, 4, 45, 45), true).
literal(iocase_1_literal3, string_literal, iocase_1_code5, (arguments, 0), range(iocase_1, 1685, 13, 50, 50), "Insensitive").
literal(iocase_1_literal4, boolean_literal, iocase_1_code5, (arguments, 1), range(iocase_1, 1700, 5, 50, 50), false).
literal(iocase_1_literal5, string_literal, iocase_1_code6, (arguments, 0), range(iocase_1, 2412, 8, 66, 66), "System").
literal(iocase_1_literal6, null_literal, iocase_1_expr4, right_operand, range(iocase_1, 3761, 4, 103, 103), null).
literal(iocase_1_literal7, string_literal, iocase_1_expr11, (arguments, 1), range(iocase_1, 6091, 6, 173, 173), "str1").
literal(iocase_1_literal8, string_literal, iocase_1_expr12, (arguments, 1), range(iocase_1, 6137, 6, 174, 174), "str2").
%ioutils_1 - org.apache.commons.io.IOUtils
literal(ioutils_1_literal2, null_literal, ioutils_1_expr16, right_operand, range(ioutils_1, 65334, 4, 1789, 1789), null).
literal(ioutils_1_literal1, number_literal, ioutils_1_expr15, then_expression, range(ioutils_1, 65341, 1, 1789, 1789), 0).
%directory_file_filter_1 - org.apache.commons.io.filefilter.DirectoryFileFilter
%not_file_filter_1 - org.apache.commons.io.filefilter.NotFileFilter
literal(not_file_filter_1_literal1, string_literal, not_file_filter_1_expr1, (arguments, 1), range(not_file_filter_1, 1817, 8, 50, 50), "filter").
%iocase_test_1 - org.apache.commons.io.IOCaseTest
literal(iocase_test_1_literal1, character_literal, iocase_test_1_expr1, right_operand, range(iocase_test_1, 1488, 4, 39, 39), '\\').
literal(iocase_test_1_literal2, string_literal, iocase_test_1_expr3, (arguments, 0), range(iocase_test_1, 5636, 5, 136, 136), "ABC").
literal(iocase_test_1_literal3, string_literal, iocase_test_1_expr3, (arguments, 1), range(iocase_test_1, 5643, 2, 136, 136), "").
literal(iocase_test_1_literal4, string_literal, iocase_test_1_expr5, (arguments, 0), range(iocase_test_1, 5698, 5, 137, 137), "ABC").
literal(iocase_test_1_literal5, string_literal, iocase_test_1_expr5, (arguments, 1), range(iocase_test_1, 5705, 3, 137, 137), "A").
literal(iocase_test_1_literal6, string_literal, iocase_test_1_expr7, (arguments, 0), range(iocase_test_1, 5761, 5, 138, 138), "ABC").
literal(iocase_test_1_literal7, string_literal, iocase_test_1_expr7, (arguments, 1), range(iocase_test_1, 5768, 4, 138, 138), "AB").
literal(iocase_test_1_literal8, string_literal, iocase_test_1_expr9, (arguments, 0), range(iocase_test_1, 5824, 5, 139, 139), "ABC").
literal(iocase_test_1_literal9, string_literal, iocase_test_1_expr9, (arguments, 1), range(iocase_test_1, 5831, 5, 139, 139), "ABC").
literal(iocase_test_1_literal10, string_literal, iocase_test_1_expr11, (arguments, 0), range(iocase_test_1, 5889, 5, 140, 140), "ABC").
literal(iocase_test_1_literal11, string_literal, iocase_test_1_expr11, (arguments, 1), range(iocase_test_1, 5896, 4, 140, 140), "BC").
literal(iocase_test_1_literal12, string_literal, iocase_test_1_expr13, (arguments, 0), range(iocase_test_1, 5953, 5, 141, 141), "ABC").
literal(iocase_test_1_literal13, string_literal, iocase_test_1_expr13, (arguments, 1), range(iocase_test_1, 5960, 3, 141, 141), "C").
literal(iocase_test_1_literal14, string_literal, iocase_test_1_expr15, (arguments, 0), range(iocase_test_1, 6016, 5, 142, 142), "ABC").
literal(iocase_test_1_literal15, string_literal, iocase_test_1_expr15, (arguments, 1), range(iocase_test_1, 6023, 6, 142, 142), "ABCD").
literal(iocase_test_1_literal16, string_literal, iocase_test_1_expr17, (arguments, 0), range(iocase_test_1, 6082, 2, 143, 143), "").
literal(iocase_test_1_literal17, string_literal, iocase_test_1_expr17, (arguments, 1), range(iocase_test_1, 6086, 5, 143, 143), "ABC").
literal(iocase_test_1_literal18, string_literal, iocase_test_1_expr19, (arguments, 0), range(iocase_test_1, 6143, 2, 144, 144), "").
literal(iocase_test_1_literal19, string_literal, iocase_test_1_expr19, (arguments, 1), range(iocase_test_1, 6147, 2, 144, 144), "").
literal(iocase_test_1_literal20, string_literal, iocase_test_1_expr21, (arguments, 0), range(iocase_test_1, 6203, 5, 146, 146), "ABC").
literal(iocase_test_1_literal21, null_literal, iocase_test_1_expr21, (arguments, 1), range(iocase_test_1, 6210, 4, 146, 146), null).
%empty_file_filter_1 - org.apache.commons.io.filefilter.EmptyFileFilter
literal(empty_file_filter_1_literal1, number_literal, empty_file_filter_1_expr5, right_operand, range(empty_file_filter_1, 3552, 1, 109, 109), 0).
%file_file_filter_1 - org.apache.commons.io.filefilter.FileFileFilter
%name_file_filter_1 - org.apache.commons.io.filefilter.NameFileFilter
literal(name_file_filter_1_literal1, null_literal, name_file_filter_1_stmt1, (arguments, 1), range(name_file_filter_1, 3126, 4, 91, 91), null).
literal(name_file_filter_1_literal2, string_literal, name_file_filter_1_expr2, (arguments, 1), range(name_file_filter_1, 3636, 7, 103, 103), "names").
literal(name_file_filter_1_literal3, string_literal, name_file_filter_1_expr13, (arguments, 1), range(name_file_filter_1, 4919, 6, 140, 140), "name").
literal(name_file_filter_1_literal4, string_literal, name_file_filter_1_expr23, (arguments, 1), range(name_file_filter_1, 5442, 7, 153, 153), "names").
literal(name_file_filter_1_literal5, string_literal, name_file_filter_1_expr45, (arguments, 0), range(name_file_filter_1, 7051, 3, 210, 210), "(").
literal(name_file_filter_1_literal6, string_literal, name_file_filter_1_expr47, (arguments, 0), range(name_file_filter_1, 7110, 3, 212, 212), ")").
%file_filter_utils_1 - org.apache.commons.io.filefilter.FileFilterUtils
literal(file_filter_utils_1_literal1, string_literal, file_filter_utils_1_expr4, (arguments, 0), range(file_filter_utils_1, 1723, 5, 48, 48), "CVS").
literal(file_filter_utils_1_literal2, string_literal, file_filter_utils_1_expr8, (arguments, 0), range(file_filter_utils_1, 1902, 6, 52, 52), ".svn").
literal(file_filter_utils_1_literal3, string_literal, file_filter_utils_1_expr19, (arguments, 1), range(file_filter_utils_1, 26015, 9, 724, 724), "filters").
%file_system_1 - org.apache.commons.io.FileSystem
literal(file_system_1_literal1, number_literal, file_system_1_code4, (arguments, 0), range(file_system_1, 1375, 4, 39, 39), 4096).
literal(file_system_1_literal2, boolean_literal, file_system_1_code4, (arguments, 1), range(file_system_1, 1381, 5, 39, 39), false).
literal(file_system_1_literal3, boolean_literal, file_system_1_code4, (arguments, 2), range(file_system_1, 1388, 5, 39, 39), false).
literal(file_system_1_literal4, number_literal, file_system_1_expr2, (expressions, 0), range(file_system_1, 1445, 1, 39, 39), 0).
literal(file_system_1_literal5, boolean_literal, file_system_1_code4, (arguments, 7), range(file_system_1, 1467, 5, 39, 39), false).
literal(file_system_1_literal6, boolean_literal, file_system_1_code4, (arguments, 8), range(file_system_1, 1474, 5, 39, 39), false).
literal(file_system_1_literal7, character_literal, file_system_1_code4, (arguments, 9), range(file_system_1, 1481, 3, 39, 39), '/').
literal(file_system_1_literal8, number_literal, file_system_1_code11, (arguments, 0), range(file_system_1, 1540, 4, 44, 44), 8192).
literal(file_system_1_literal9, boolean_literal, file_system_1_code11, (arguments, 1), range(file_system_1, 1546, 4, 44, 44), true).
literal(file_system_1_literal10, boolean_literal, file_system_1_code11, (arguments, 2), range(file_system_1, 1552, 4, 44, 44), true).
literal(file_system_1_literal11, number_literal, file_system_1_code11, (arguments, 3), range(file_system_1, 1558, 3, 44, 44), 255).
literal(file_system_1_literal12, number_literal, file_system_1_code11, (arguments, 4), range(file_system_1, 1563, 4, 44, 44), 4096).
literal(file_system_1_literal13, number_literal, file_system_1_code15, (arguments, 0), range(file_system_1, 1835, 4, 56, 56), 4096).
literal(file_system_1_literal14, boolean_literal, file_system_1_code15, (arguments, 1), range(file_system_1, 1841, 4, 56, 56), true).
literal(file_system_1_literal15, boolean_literal, file_system_1_code15, (arguments, 2), range(file_system_1, 1847, 4, 56, 56), true).
literal(file_system_1_literal16, number_literal, file_system_1_code15, (arguments, 3), range(file_system_1, 1853, 3, 56, 56), 255).
literal(file_system_1_literal17, number_literal, file_system_1_code15, (arguments, 4), range(file_system_1, 1858, 4, 56, 56), 1024).
literal(file_system_1_literal18, number_literal, file_system_1_code19, (arguments, 0), range(file_system_1, 2680, 4, 79, 79), 4096).
literal(file_system_1_literal19, boolean_literal, file_system_1_code19, (arguments, 1), range(file_system_1, 2686, 5, 79, 79), false).
literal(file_system_1_literal20, boolean_literal, file_system_1_code19, (arguments, 2), range(file_system_1, 2693, 4, 79, 79), true).
literal(file_system_1_literal21, string_literal, file_system_1_expr9, (arguments, 0), range(file_system_1, 3750, 7, 102, 102), "Linux").
literal(file_system_1_literal22, string_literal, file_system_1_expr10, (arguments, 0), range(file_system_1, 4003, 5, 112, 112), "Mac").
literal(file_system_1_literal23, string_literal, file_system_1_expr14, (arguments, 0), range(file_system_1, 5392, 9, 169, 169), "os.name").
literal(file_system_1_literal24, null_literal, file_system_1_expr16, right_operand, range(file_system_1, 9848, 4, 282, 282), null).
literal(file_system_1_literal25, string_literal, file_system_1_expr31, (arguments, 1), range(file_system_1, 12204, 22, 332, 332), "illegalFileNameChars").
literal(file_system_1_literal26, string_literal, file_system_1_expr35, (arguments, 1), range(file_system_1, 12304, 19, 333, 333), "reservedFileNames").
%can_read_file_filter_1 - org.apache.commons.io.filefilter.CanReadFileFilter
%hidden_file_filter_1 - org.apache.commons.io.filefilter.HiddenFileFilter
%abstract_file_filter_1 - org.apache.commons.io.filefilter.AbstractFileFilter
literal(abstract_file_filter_1_literal1, string_literal, abstract_file_filter_1_expr9, (arguments, 1), range(abstract_file_filter_1, 3274, 6, 98, 98), "name").
literal(abstract_file_filter_1_literal2, number_literal, abstract_file_filter_1_code17, initializer, range(abstract_file_filter_1, 3669, 1, 112, 112), 0).
literal(abstract_file_filter_1_literal3, number_literal, abstract_file_filter_1_expr15, right_operand, range(abstract_file_filter_1, 3717, 1, 113, 113), 0).
literal(abstract_file_filter_1_literal4, string_literal, abstract_file_filter_1_expr16, (arguments, 0), range(abstract_file_filter_1, 3752, 3, 114, 114), ",").
%abstract_filter_test_1 - org.apache.commons.io.filefilter.AbstractFilterTest
literal(abstract_filter_test_1_literal1, string_literal, abstract_filter_test_1_expr3, left_operand, range(abstract_filter_test_1, 1818, 15, 50, 50), "Filter(File) ").
literal(abstract_filter_test_1_literal2, string_literal, abstract_filter_test_1_expr3, (extended_operands, 0), range(abstract_filter_test_1, 1866, 7, 50, 50), " not ").
literal(abstract_filter_test_1_literal3, string_literal, abstract_filter_test_1_expr3, (extended_operands, 2), range(abstract_filter_test_1, 1887, 7, 50, 50), " for ").
literal(abstract_filter_test_1_literal4, null_literal, abstract_filter_test_1_expr7, (arguments, 1), range(abstract_filter_test_1, 3422, 4, 73, 73), null).
%and_file_filter_1 - org.apache.commons.io.filefilter.AndFileFilter
literal(and_file_filter_1_literal1, string_literal, and_file_filter_1_expr3, (arguments, 1), range(and_file_filter_1, 2330, 13, 68, 68), "initialList").
literal(and_file_filter_1_literal2, number_literal, and_file_filter_1_stmt3, (arguments, 0), range(and_file_filter_1, 3299, 1, 99, 99), 2).
literal(and_file_filter_1_literal3, string_literal, and_file_filter_1_expr12, (arguments, 1), range(and_file_filter_1, 3715, 13, 112, 112), "fileFilters").
literal(and_file_filter_1_literal4, string_literal, and_file_filter_1_expr14, (arguments, 1), range(and_file_filter_1, 4723, 12, 146, 146), "fileFilter").
%test_utils_1 - org.apache.commons.io.test.TestUtils
literal(test_utils_1_literal1, number_literal, test_utils_1_code5, initializer, range(test_utils_1, 8764, 1, 220, 220), 0).
literal(test_utils_1_literal2, number_literal, test_utils_1_expr8, right_operand, range(test_utils_1, 8934, 3, 223, 223), 127).
literal(test_utils_1_literal3, number_literal, test_utils_1_expr7, right_operand, range(test_utils_1, 8940, 1, 223, 223), 1).
%filename_utils_1 - org.apache.commons.io.FilenameUtils
literal(filename_utils_1_literal1, string_literal, filename_utils_1_expr4, (arguments, 0), range(filename_utils_1, 4726, 53, 138, 138), "^(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})$").
literal(filename_utils_1_literal2, string_literal, filename_utils_1_expr5, (arguments, 0), range(filename_utils_1, 5137, 28, 150, 150), "^[a-zA-Z0-9][a-zA-Z0-9-]*$").
%file_filter_test_1 - org.apache.commons.io.filefilter.FileFilterTest
literal(file_filter_test_1_literal1, string_literal, file_filter_test_1_expr1, (arguments, 1), range(file_filter_test_1, 10583, 21, 221, 221), "read-only-file1.txt").
literal(file_filter_test_1_literal2, number_literal, file_filter_test_1_expr10, (arguments, 1), range(file_filter_test_1, 10992, 2, 227, 227), 32).
literal(file_filter_test_1_literal3, boolean_literal, file_filter_test_1_expr13, (arguments, 2), range(file_filter_test_1, 11121, 4, 230, 230), true).
literal(file_filter_test_1_literal5, null_literal, file_filter_test_1_expr15, expression, range(file_filter_test_1, 11187, 4, 231, 231), null).
literal(file_filter_test_1_literal4, boolean_literal, file_filter_test_1_expr14, (arguments, 2), range(file_filter_test_1, 11193, 5, 231, 231), false).
literal(file_filter_test_1_literal6, string_literal, file_filter_test_1_expr16, (arguments, 1), range(file_filter_test_1, 12105, 21, 247, 247), "read-only-file2.txt").
literal(file_filter_test_1_literal7, number_literal, file_filter_test_1_expr25, (arguments, 1), range(file_filter_test_1, 12514, 2, 253, 253), 32).
literal(file_filter_test_1_literal8, boolean_literal, file_filter_test_1_expr28, (arguments, 2), range(file_filter_test_1, 12648, 4, 256, 256), true).
literal(file_filter_test_1_literal9, boolean_literal, file_filter_test_1_expr29, (arguments, 2), range(file_filter_test_1, 12723, 5, 257, 257), false).
literal(file_filter_test_1_literal11, null_literal, file_filter_test_1_expr31, expression, range(file_filter_test_1, 12792, 4, 258, 258), null).
literal(file_filter_test_1_literal10, boolean_literal, file_filter_test_1_expr30, (arguments, 2), range(file_filter_test_1, 12798, 5, 258, 258), false).
literal(file_filter_test_1_literal12, string_literal, file_filter_test_1_expr32, (arguments, 1), range(file_filter_test_1, 20017, 11, 403, 403), "empty-dir").
literal(file_filter_test_1_literal13, boolean_literal, file_filter_test_1_expr35, (arguments, 2), range(file_filter_test_1, 20180, 4, 406, 406), true).
literal(file_filter_test_1_literal14, boolean_literal, file_filter_test_1_expr36, (arguments, 2), range(file_filter_test_1, 20248, 4, 407, 407), true).
literal(file_filter_test_1_literal16, null_literal, file_filter_test_1_expr38, expression, range(file_filter_test_1, 20309, 4, 408, 408), null).
literal(file_filter_test_1_literal15, boolean_literal, file_filter_test_1_expr37, (arguments, 2), range(file_filter_test_1, 20315, 4, 408, 408), true).
literal(file_filter_test_1_literal18, null_literal, file_filter_test_1_expr40, expression, range(file_filter_test_1, 25238, 4, 503, 503), null).
literal(file_filter_test_1_literal17, boolean_literal, file_filter_test_1_expr39, (arguments, 2), range(file_filter_test_1, 25244, 5, 503, 503), false).
literal(file_filter_test_1_literal19, boolean_literal, file_filter_test_1_expr45, (arguments, 2), range(file_filter_test_1, 35017, 5, 736, 736), false).
literal(file_filter_test_1_literal20, boolean_literal, file_filter_test_1_expr46, (arguments, 2), range(file_filter_test_1, 35080, 5, 737, 737), false).
literal(file_filter_test_1_literal22, null_literal, file_filter_test_1_expr48, expression, range(file_filter_test_1, 35144, 4, 738, 738), null).
literal(file_filter_test_1_literal21, boolean_literal, file_filter_test_1_expr47, (arguments, 2), range(file_filter_test_1, 35150, 4, 738, 738), true).
literal(file_filter_test_1_literal23, string_literal, file_filter_test_1_expr49, (arguments, 0), range(file_filter_test_1, 49257, 5, 1064, 1064), "foo").
literal(file_filter_test_1_literal24, string_literal, file_filter_test_1_expr49, (arguments, 1), range(file_filter_test_1, 49264, 5, 1064, 1064), "bar").
literal(file_filter_test_1_literal26, null_literal, file_filter_test_1_expr52, expression, range(file_filter_test_1, 49354, 4, 1066, 1066), null).
literal(file_filter_test_1_literal25, boolean_literal, file_filter_test_1_expr51, (arguments, 2), range(file_filter_test_1, 49360, 5, 1066, 1066), false).
%iofile_filter_1 - org.apache.commons.io.filefilter.IOFileFilter
literal(iofile_filter_1_literal1, null_literal, iofile_filter_1_expr5, (arguments, 1), range(iofile_filter_1, 3067, 4, 98, 98), null).

%%% Other Code Entities
%standard_line_separator_1 - org.apache.commons.io.StandardLineSeparator
code(standard_line_separator_1_code1, compilation_unit, range(standard_line_separator_1, 0, 2227, 1, -1)).
code(standard_line_separator_1_code2, enum_declaration, standard_line_separator_1_code1, (types, 0), range(standard_line_separator_1, 896, 1330, 23, 74)).
code(standard_line_separator_1_code3, modifier, standard_line_separator_1_code2, (modifiers, 0), range(standard_line_separator_1, 1004, 6, 28, 28)).
code(standard_line_separator_1_code4, enum_constant_declaration, standard_line_separator_1_code2, (enum_constants, 0), range(standard_line_separator_1, 1045, 102, 30, 33)).
code(standard_line_separator_1_code5, enum_constant_declaration, standard_line_separator_1_code2, (enum_constants, 1), range(standard_line_separator_1, 1154, 115, 35, 38)).
code(standard_line_separator_1_code6, enum_constant_declaration, standard_line_separator_1_code2, (enum_constants, 2), range(standard_line_separator_1, 1276, 104, 40, 43)).
code(standard_line_separator_1_code7, method_declaration, standard_line_separator_1_code2, (body_declarations, 1), range(standard_line_separator_1, 1428, 284, 47, 54)).
code(standard_line_separator_1_code8, single_variable_declaration, standard_line_separator_1_code7, (parameters, 0), range(standard_line_separator_1, 1592, 26, 52, 52)).
code(standard_line_separator_1_code9, modifier, standard_line_separator_1_code8, (modifiers, 0), range(standard_line_separator_1, 1592, 5, 52, 52)).
code(standard_line_separator_1_code10, simple_type, standard_line_separator_1_code8, type, range(standard_line_separator_1, 1598, 6, 52, 52)).
code(standard_line_separator_1_code11, method_declaration, standard_line_separator_1_code2, (body_declarations, 3), range(standard_line_separator_1, 2041, 183, 66, 73)).
%path_utils_1 - org.apache.commons.io.file.PathUtils
code(path_utils_1_code1, compilation_unit, range(path_utils_1, 0, 82719, 1, -1)).
code(path_utils_1_code2, type_declaration, path_utils_1_code1, (types, 0), range(path_utils_1, 3161, 79557, 84, 1841)).
code(path_utils_1_code4, modifier, path_utils_1_code3, (modifiers, 0), range(path_utils_1, 6640, 7, 152, 152)).
code(path_utils_1_code3, field_declaration, path_utils_1_code2, (body_declarations, 1), range(path_utils_1, 6640, 126, 152, 152)).
code(path_utils_1_code5, modifier, path_utils_1_code3, (modifiers, 1), range(path_utils_1, 6648, 6, 152, 152)).
code(path_utils_1_code6, modifier, path_utils_1_code3, (modifiers, 2), range(path_utils_1, 6655, 5, 152, 152)).
code(path_utils_1_code8, simple_type, path_utils_1_code7, element_type, range(path_utils_1, 6661, 10, 152, 152)).
code(path_utils_1_code7, array_type, path_utils_1_code3, type, range(path_utils_1, 6661, 12, 152, 152)).
code(path_utils_1_code9, dimension, path_utils_1_code7, (dimensions, 0), range(path_utils_1, 6671, 2, 152, 152)).
code(path_utils_1_code10, variable_declaration_fragment, path_utils_1_code3, (fragments, 0), range(path_utils_1, 6674, 91, 152, 152)).
code(path_utils_1_code11, field_declaration, path_utils_1_code2, (body_declarations, 2), range(path_utils_1, 6772, 113, 154, 154)).
code(path_utils_1_code12, modifier, path_utils_1_code11, (modifiers, 0), range(path_utils_1, 6772, 7, 154, 154)).
code(path_utils_1_code13, modifier, path_utils_1_code11, (modifiers, 1), range(path_utils_1, 6780, 6, 154, 154)).
code(path_utils_1_code14, modifier, path_utils_1_code11, (modifiers, 2), range(path_utils_1, 6787, 5, 154, 154)).
code(path_utils_1_code15, array_type, path_utils_1_code11, type, range(path_utils_1, 6793, 12, 154, 154)).
code(path_utils_1_code16, simple_type, path_utils_1_code15, element_type, range(path_utils_1, 6793, 10, 154, 154)).
code(path_utils_1_code17, dimension, path_utils_1_code15, (dimensions, 0), range(path_utils_1, 6803, 2, 154, 154)).
code(path_utils_1_code18, variable_declaration_fragment, path_utils_1_code11, (fragments, 0), range(path_utils_1, 6806, 78, 154, 154)).
code(path_utils_1_code19, field_declaration, path_utils_1_code2, (body_declarations, 3), range(path_utils_1, 6891, 139, 156, 161)).
code(path_utils_1_code20, modifier, path_utils_1_code19, (modifiers, 0), range(path_utils_1, 6973, 6, 161, 161)).
code(path_utils_1_code21, modifier, path_utils_1_code19, (modifiers, 1), range(path_utils_1, 6980, 6, 161, 161)).
code(path_utils_1_code22, modifier, path_utils_1_code19, (modifiers, 2), range(path_utils_1, 6987, 5, 161, 161)).
code(path_utils_1_code24, simple_type, path_utils_1_code23, element_type, range(path_utils_1, 6993, 10, 161, 161)).
code(path_utils_1_code23, array_type, path_utils_1_code19, type, range(path_utils_1, 6993, 12, 161, 161)).
code(path_utils_1_code25, dimension, path_utils_1_code23, (dimensions, 0), range(path_utils_1, 7003, 2, 161, 161)).
code(path_utils_1_code26, variable_declaration_fragment, path_utils_1_code19, (fragments, 0), range(path_utils_1, 7006, 23, 161, 161)).
code(path_utils_1_code27, field_declaration, path_utils_1_code2, (body_declarations, 4), range(path_utils_1, 7036, 150, 163, 168)).
code(path_utils_1_code28, modifier, path_utils_1_code27, (modifiers, 0), range(path_utils_1, 7120, 6, 168, 168)).
code(path_utils_1_code29, modifier, path_utils_1_code27, (modifiers, 1), range(path_utils_1, 7127, 6, 168, 168)).
code(path_utils_1_code30, modifier, path_utils_1_code27, (modifiers, 2), range(path_utils_1, 7134, 5, 168, 168)).
code(path_utils_1_code32, simple_type, path_utils_1_code31, element_type, range(path_utils_1, 7140, 12, 168, 168)).
code(path_utils_1_code31, array_type, path_utils_1_code27, type, range(path_utils_1, 7140, 14, 168, 168)).
code(path_utils_1_code33, dimension, path_utils_1_code31, (dimensions, 0), range(path_utils_1, 7152, 2, 168, 168)).
code(path_utils_1_code34, variable_declaration_fragment, path_utils_1_code27, (fragments, 0), range(path_utils_1, 7155, 30, 168, 168)).
code(path_utils_1_code35, field_declaration, path_utils_1_code2, (body_declarations, 5), range(path_utils_1, 7192, 157, 170, 175)).
code(path_utils_1_code36, modifier, path_utils_1_code35, (modifiers, 0), range(path_utils_1, 7278, 6, 175, 175)).
code(path_utils_1_code37, modifier, path_utils_1_code35, (modifiers, 1), range(path_utils_1, 7285, 6, 175, 175)).
code(path_utils_1_code38, modifier, path_utils_1_code35, (modifiers, 2), range(path_utils_1, 7292, 5, 175, 175)).
code(path_utils_1_code39, array_type, path_utils_1_code35, type, range(path_utils_1, 7298, 18, 175, 175)).
code(path_utils_1_code40, parameterized_type, path_utils_1_code39, element_type, range(path_utils_1, 7298, 16, 175, 175)).
code(path_utils_1_code41, simple_type, path_utils_1_code40, type, range(path_utils_1, 7298, 13, 175, 175)).
code(path_utils_1_code42, wildcard_type, path_utils_1_code40, (type_arguments, 0), range(path_utils_1, 7312, 1, 175, 175)).
code(path_utils_1_code43, dimension, path_utils_1_code39, (dimensions, 0), range(path_utils_1, 7314, 2, 175, 175)).
code(path_utils_1_code44, variable_declaration_fragment, path_utils_1_code35, (fragments, 0), range(path_utils_1, 7317, 31, 175, 175)).
code(path_utils_1_code45, field_declaration, path_utils_1_code2, (body_declarations, 6), range(path_utils_1, 7355, 133, 177, 180)).
code(path_utils_1_code46, modifier, path_utils_1_code45, (modifiers, 0), range(path_utils_1, 7415, 6, 180, 180)).
code(path_utils_1_code47, modifier, path_utils_1_code45, (modifiers, 1), range(path_utils_1, 7422, 6, 180, 180)).
code(path_utils_1_code48, modifier, path_utils_1_code45, (modifiers, 2), range(path_utils_1, 7429, 5, 180, 180)).
code(path_utils_1_code50, simple_type, path_utils_1_code49, element_type, range(path_utils_1, 7435, 15, 180, 180)).
code(path_utils_1_code49, array_type, path_utils_1_code45, type, range(path_utils_1, 7435, 17, 180, 180)).
code(path_utils_1_code51, dimension, path_utils_1_code49, (dimensions, 0), range(path_utils_1, 7450, 2, 180, 180)).
code(path_utils_1_code52, variable_declaration_fragment, path_utils_1_code45, (fragments, 0), range(path_utils_1, 7453, 34, 180, 180)).
code(path_utils_1_code53, field_declaration, path_utils_1_code2, (body_declarations, 7), range(path_utils_1, 7494, 117, 182, 185)).
code(path_utils_1_code54, modifier, path_utils_1_code53, (modifiers, 0), range(path_utils_1, 7549, 6, 185, 185)).
code(path_utils_1_code55, modifier, path_utils_1_code53, (modifiers, 1), range(path_utils_1, 7556, 6, 185, 185)).
code(path_utils_1_code56, modifier, path_utils_1_code53, (modifiers, 2), range(path_utils_1, 7563, 5, 185, 185)).
code(path_utils_1_code58, simple_type, path_utils_1_code57, element_type, range(path_utils_1, 7569, 10, 185, 185)).
code(path_utils_1_code57, array_type, path_utils_1_code53, type, range(path_utils_1, 7569, 12, 185, 185)).
code(path_utils_1_code59, dimension, path_utils_1_code57, (dimensions, 0), range(path_utils_1, 7579, 2, 185, 185)).
code(path_utils_1_code60, variable_declaration_fragment, path_utils_1_code53, (fragments, 0), range(path_utils_1, 7582, 28, 185, 185)).
code(path_utils_1_code61, field_declaration, path_utils_1_code2, (body_declarations, 8), range(path_utils_1, 7617, 281, 187, 194)).
code(path_utils_1_code62, modifier, path_utils_1_code61, (modifiers, 1), range(path_utils_1, 7806, 6, 194, 194)).
code(path_utils_1_code63, modifier, path_utils_1_code61, (modifiers, 2), range(path_utils_1, 7813, 6, 194, 194)).
code(path_utils_1_code64, modifier, path_utils_1_code61, (modifiers, 3), range(path_utils_1, 7820, 5, 194, 194)).
code(path_utils_1_code65, array_type, path_utils_1_code61, type, range(path_utils_1, 7826, 12, 194, 194)).
code(path_utils_1_code66, simple_type, path_utils_1_code65, element_type, range(path_utils_1, 7826, 10, 194, 194)).
code(path_utils_1_code67, dimension, path_utils_1_code65, (dimensions, 0), range(path_utils_1, 7836, 2, 194, 194)).
code(path_utils_1_code68, variable_declaration_fragment, path_utils_1_code61, (fragments, 0), range(path_utils_1, 7839, 58, 194, 194)).
code(path_utils_1_code69, field_declaration, path_utils_1_code2, (body_declarations, 9), range(path_utils_1, 7904, 197, 196, 201)).
code(path_utils_1_code70, modifier, path_utils_1_code69, (modifiers, 0), range(path_utils_1, 8053, 6, 201, 201)).
code(path_utils_1_code71, modifier, path_utils_1_code69, (modifiers, 1), range(path_utils_1, 8060, 5, 201, 201)).
code(path_utils_1_code72, simple_type, path_utils_1_code69, type, range(path_utils_1, 8066, 10, 201, 201)).
code(path_utils_1_code73, variable_declaration_fragment, path_utils_1_code69, (fragments, 0), range(path_utils_1, 8077, 23, 201, 201)).
code(path_utils_1_code74, field_declaration, path_utils_1_code2, (body_declarations, 10), range(path_utils_1, 8107, 117, 203, 206)).
code(path_utils_1_code75, modifier, path_utils_1_code74, (modifiers, 0), range(path_utils_1, 8162, 6, 206, 206)).
code(path_utils_1_code76, modifier, path_utils_1_code74, (modifiers, 1), range(path_utils_1, 8169, 6, 206, 206)).
code(path_utils_1_code77, modifier, path_utils_1_code74, (modifiers, 2), range(path_utils_1, 8176, 5, 206, 206)).
code(path_utils_1_code79, simple_type, path_utils_1_code78, element_type, range(path_utils_1, 8182, 10, 206, 206)).
code(path_utils_1_code78, array_type, path_utils_1_code74, type, range(path_utils_1, 8182, 12, 206, 206)).
code(path_utils_1_code80, dimension, path_utils_1_code78, (dimensions, 0), range(path_utils_1, 8192, 2, 206, 206)).
code(path_utils_1_code81, variable_declaration_fragment, path_utils_1_code74, (fragments, 0), range(path_utils_1, 8195, 28, 206, 206)).
code(path_utils_1_code82, field_declaration, path_utils_1_code2, (body_declarations, 11), range(path_utils_1, 8230, 125, 208, 213)).
code(path_utils_1_code83, modifier, path_utils_1_code82, (modifiers, 0), range(path_utils_1, 8306, 6, 213, 213)).
code(path_utils_1_code84, modifier, path_utils_1_code82, (modifiers, 1), range(path_utils_1, 8313, 6, 213, 213)).
code(path_utils_1_code85, modifier, path_utils_1_code82, (modifiers, 2), range(path_utils_1, 8320, 5, 213, 213)).
code(path_utils_1_code86, array_type, path_utils_1_code82, type, range(path_utils_1, 8326, 6, 213, 213)).
code(path_utils_1_code87, simple_type, path_utils_1_code86, element_type, range(path_utils_1, 8326, 4, 213, 213)).
code(path_utils_1_code88, dimension, path_utils_1_code86, (dimensions, 0), range(path_utils_1, 8330, 2, 213, 213)).
code(path_utils_1_code89, variable_declaration_fragment, path_utils_1_code82, (fragments, 0), range(path_utils_1, 8333, 21, 213, 213)).
code(path_utils_1_code90, method_declaration, path_utils_1_code2, (body_declarations, 48), range(path_utils_1, 38366, 590, 870, 883)).
code(path_utils_1_code91, modifier, path_utils_1_stmt1, (modifiers, 0), range(path_utils_1, 38820, 5, 881, 881)).
code(path_utils_1_code92, simple_type, path_utils_1_stmt1, type, range(path_utils_1, 38826, 4, 881, 881)).
code(path_utils_1_code93, variable_declaration_fragment, path_utils_1_stmt1, (fragments, 0), range(path_utils_1, 38831, 51, 881, 881)).
code(path_utils_1_code94, method_declaration, path_utils_1_code2, (body_declarations, 49), range(path_utils_1, 38962, 329, 885, 895)).
%can_write_file_filter_1 - org.apache.commons.io.filefilter.CanWriteFileFilter
code(can_write_file_filter_1_code1, compilation_unit, range(can_write_file_filter_1, 0, 3157, 1, -1)).
code(can_write_file_filter_1_code2, type_declaration, can_write_file_filter_1_code1, (types, 0), range(can_write_file_filter_1, 1042, 2114, 26, 98)).
code(can_write_file_filter_1_code3, field_declaration, can_write_file_filter_1_code2, (body_declarations, 0), range(can_write_file_filter_1, 2050, 126, 61, 62)).
code(can_write_file_filter_1_code4, modifier, can_write_file_filter_1_code3, (modifiers, 0), range(can_write_file_filter_1, 2106, 6, 62, 62)).
code(can_write_file_filter_1_code5, modifier, can_write_file_filter_1_code3, (modifiers, 1), range(can_write_file_filter_1, 2113, 6, 62, 62)).
code(can_write_file_filter_1_code6, modifier, can_write_file_filter_1_code3, (modifiers, 2), range(can_write_file_filter_1, 2120, 5, 62, 62)).
code(can_write_file_filter_1_code7, simple_type, can_write_file_filter_1_code3, type, range(can_write_file_filter_1, 2126, 12, 62, 62)).
code(can_write_file_filter_1_code8, variable_declaration_fragment, can_write_file_filter_1_code3, (fragments, 0), range(can_write_file_filter_1, 2139, 36, 62, 62)).
code(can_write_file_filter_1_code9, simple_type, can_write_file_filter_1_expr1, type, range(can_write_file_filter_1, 2155, 18, 62, 62)).
code(can_write_file_filter_1_code10, field_declaration, can_write_file_filter_1_code2, (body_declarations, 1), range(can_write_file_filter_1, 2182, 127, 64, 65)).
code(can_write_file_filter_1_code11, modifier, can_write_file_filter_1_code10, (modifiers, 0), range(can_write_file_filter_1, 2242, 6, 65, 65)).
code(can_write_file_filter_1_code12, modifier, can_write_file_filter_1_code10, (modifiers, 1), range(can_write_file_filter_1, 2249, 6, 65, 65)).
code(can_write_file_filter_1_code13, modifier, can_write_file_filter_1_code10, (modifiers, 2), range(can_write_file_filter_1, 2256, 5, 65, 65)).
code(can_write_file_filter_1_code14, simple_type, can_write_file_filter_1_code10, type, range(can_write_file_filter_1, 2262, 12, 65, 65)).
code(can_write_file_filter_1_code15, variable_declaration_fragment, can_write_file_filter_1_code10, (fragments, 0), range(can_write_file_filter_1, 2275, 33, 65, 65)).
code(can_write_file_filter_1_code16, method_declaration, can_write_file_filter_1_code2, (body_declarations, 3), range(can_write_file_filter_1, 2387, 86, 69, 73)).
code(can_write_file_filter_1_code17, modifier, can_write_file_filter_1_code16, (modifiers, 0), range(can_write_file_filter_1, 2435, 9, 72, 72)).
code(can_write_file_filter_1_code18, method_declaration, can_write_file_filter_1_code2, (body_declarations, 4), range(can_write_file_filter_1, 2479, 288, 75, 84)).
code(can_write_file_filter_1_code19, method_declaration, can_write_file_filter_1_code2, (body_declarations, 5), range(can_write_file_filter_1, 2773, 380, 86, 96)).
%iocase_1 - org.apache.commons.io.IOCase
code(iocase_1_code1, compilation_unit, range(iocase_1, 0, 9431, 1, -1)).
code(iocase_1_code2, enum_declaration, iocase_1_code1, (types, 0), range(iocase_1, 894, 8536, 22, 276)).
code(iocase_1_code3, modifier, iocase_1_code2, (modifiers, 0), range(iocase_1, 1436, 6, 40, 40)).
code(iocase_1_code4, enum_constant_declaration, iocase_1_code2, (enum_constants, 0), range(iocase_1, 1462, 115, 42, 45)).
code(iocase_1_code5, enum_constant_declaration, iocase_1_code2, (enum_constants, 1), range(iocase_1, 1584, 122, 47, 50)).
code(iocase_1_code6, enum_constant_declaration, iocase_1_code2, (enum_constants, 2), range(iocase_1, 1713, 751, 52, 66)).
code(iocase_1_code7, method_declaration, iocase_1_code2, (body_declarations, 3), range(iocase_1, 3392, 403, 94, 104)).
code(iocase_1_code8, method_declaration, iocase_1_code2, (body_declarations, 6), range(iocase_1, 3947, 247, 112, 121)).
code(iocase_1_code9, single_variable_declaration, iocase_1_code8, (parameters, 0), range(iocase_1, 4081, 17, 118, 118)).
code(iocase_1_code10, modifier, iocase_1_code9, (modifiers, 0), range(iocase_1, 4081, 5, 118, 118)).
code(iocase_1_code11, simple_type, iocase_1_code9, type, range(iocase_1, 4087, 6, 118, 118)).
code(iocase_1_code12, single_variable_declaration, iocase_1_code8, (parameters, 1), range(iocase_1, 4100, 23, 118, 118)).
code(iocase_1_code13, modifier, iocase_1_code12, (modifiers, 0), range(iocase_1, 4100, 5, 118, 118)).
code(iocase_1_code14, primitive_type, iocase_1_code12, type, range(iocase_1, 4106, 7, 118, 118)).
code(iocase_1_code15, method_declaration, iocase_1_code2, (body_declarations, 9), range(iocase_1, 5556, 671, 160, 176)).
%ioutils_1 - org.apache.commons.io.IOUtils
code(ioutils_1_code1, compilation_unit, range(ioutils_1, 0, 155015, 1, -1)).
code(ioutils_1_code2, type_declaration, ioutils_1_code1, (types, 0), range(ioutils_1, 2716, 152298, 73, 3944)).
code(ioutils_1_code3, field_declaration, ioutils_1_code2, (body_declarations, 2), range(ioutils_1, 5501, 125, 142, 145)).
code(ioutils_1_code4, modifier, ioutils_1_code3, (modifiers, 0), range(ioutils_1, 5566, 6, 145, 145)).
code(ioutils_1_code5, modifier, ioutils_1_code3, (modifiers, 1), range(ioutils_1, 5573, 6, 145, 145)).
code(ioutils_1_code6, modifier, ioutils_1_code3, (modifiers, 2), range(ioutils_1, 5580, 5, 145, 145)).
code(ioutils_1_code7, primitive_type, ioutils_1_code3, type, range(ioutils_1, 5586, 4, 145, 145)).
code(ioutils_1_code8, variable_declaration_fragment, ioutils_1_code3, (fragments, 0), range(ioutils_1, 5591, 34, 145, 145)).
code(ioutils_1_code9, field_declaration, ioutils_1_code2, (body_declarations, 5), range(ioutils_1, 5877, 130, 157, 162)).
code(ioutils_1_code10, modifier, ioutils_1_code9, (modifiers, 0), range(ioutils_1, 5958, 6, 162, 162)).
code(ioutils_1_code11, modifier, ioutils_1_code9, (modifiers, 1), range(ioutils_1, 5965, 6, 162, 162)).
code(ioutils_1_code12, modifier, ioutils_1_code9, (modifiers, 2), range(ioutils_1, 5972, 5, 162, 162)).
code(ioutils_1_code14, primitive_type, ioutils_1_code13, element_type, range(ioutils_1, 5978, 4, 162, 162)).
code(ioutils_1_code13, array_type, ioutils_1_code9, type, range(ioutils_1, 5978, 6, 162, 162)).
code(ioutils_1_code15, dimension, ioutils_1_code13, (dimensions, 0), range(ioutils_1, 5982, 2, 162, 162)).
code(ioutils_1_code16, variable_declaration_fragment, ioutils_1_code9, (fragments, 0), range(ioutils_1, 5985, 21, 162, 162)).
code(ioutils_1_code17, field_declaration, ioutils_1_code2, (body_declarations, 8), range(ioutils_1, 6246, 202, 177, 183)).
code(ioutils_1_code18, modifier, ioutils_1_code17, (modifiers, 1), range(ioutils_1, 6381, 6, 183, 183)).
code(ioutils_1_code19, modifier, ioutils_1_code17, (modifiers, 2), range(ioutils_1, 6388, 6, 183, 183)).
code(ioutils_1_code20, modifier, ioutils_1_code17, (modifiers, 3), range(ioutils_1, 6395, 5, 183, 183)).
code(ioutils_1_code21, simple_type, ioutils_1_code17, type, range(ioutils_1, 6401, 6, 183, 183)).
code(ioutils_1_code22, variable_declaration_fragment, ioutils_1_code17, (fragments, 0), range(ioutils_1, 6408, 39, 183, 183)).
code(ioutils_1_code23, field_declaration, ioutils_1_code2, (body_declarations, 9), range(ioutils_1, 6454, 185, 185, 190)).
code(ioutils_1_code24, modifier, ioutils_1_code23, (modifiers, 0), range(ioutils_1, 6553, 6, 190, 190)).
code(ioutils_1_code25, modifier, ioutils_1_code23, (modifiers, 1), range(ioutils_1, 6560, 6, 190, 190)).
code(ioutils_1_code26, modifier, ioutils_1_code23, (modifiers, 2), range(ioutils_1, 6567, 5, 190, 190)).
code(ioutils_1_code27, simple_type, ioutils_1_code23, type, range(ioutils_1, 6573, 6, 190, 190)).
code(ioutils_1_code28, variable_declaration_fragment, ioutils_1_code23, (fragments, 0), range(ioutils_1, 6580, 58, 190, 190)).
code(ioutils_1_code29, field_declaration, ioutils_1_code2, (body_declarations, 10), range(ioutils_1, 6645, 195, 192, 197)).
code(ioutils_1_code30, modifier, ioutils_1_code29, (modifiers, 0), range(ioutils_1, 6749, 6, 197, 197)).
code(ioutils_1_code31, modifier, ioutils_1_code29, (modifiers, 1), range(ioutils_1, 6756, 6, 197, 197)).
code(ioutils_1_code32, modifier, ioutils_1_code29, (modifiers, 2), range(ioutils_1, 6763, 5, 197, 197)).
code(ioutils_1_code33, simple_type, ioutils_1_code29, type, range(ioutils_1, 6769, 6, 197, 197)).
code(ioutils_1_code34, variable_declaration_fragment, ioutils_1_code29, (fragments, 0), range(ioutils_1, 6776, 63, 197, 197)).
code(ioutils_1_code35, field_declaration, ioutils_1_code2, (body_declarations, 11), range(ioutils_1, 6846, 200, 199, 202)).
code(ioutils_1_code36, modifier, ioutils_1_code35, (modifiers, 0), range(ioutils_1, 6936, 7, 202, 202)).
code(ioutils_1_code37, modifier, ioutils_1_code35, (modifiers, 1), range(ioutils_1, 6944, 6, 202, 202)).
code(ioutils_1_code38, modifier, ioutils_1_code35, (modifiers, 2), range(ioutils_1, 6951, 5, 202, 202)).
code(ioutils_1_code40, simple_type, ioutils_1_code39, type, range(ioutils_1, 6957, 11, 202, 202)).
code(ioutils_1_code39, parameterized_type, ioutils_1_code35, type, range(ioutils_1, 6957, 19, 202, 202)).
code(ioutils_1_code41, array_type, ioutils_1_code39, (type_arguments, 0), range(ioutils_1, 6969, 6, 202, 202)).
code(ioutils_1_code42, primitive_type, ioutils_1_code41, element_type, range(ioutils_1, 6969, 4, 202, 202)).
code(ioutils_1_code43, dimension, ioutils_1_code41, (dimensions, 0), range(ioutils_1, 6973, 2, 202, 202)).
code(ioutils_1_code44, variable_declaration_fragment, ioutils_1_code35, (fragments, 0), range(ioutils_1, 6977, 68, 202, 202)).
code(ioutils_1_code45, field_declaration, ioutils_1_code2, (body_declarations, 12), range(ioutils_1, 7052, 152, 204, 207)).
code(ioutils_1_code46, modifier, ioutils_1_code45, (modifiers, 0), range(ioutils_1, 7139, 7, 207, 207)).
code(ioutils_1_code47, modifier, ioutils_1_code45, (modifiers, 1), range(ioutils_1, 7147, 6, 207, 207)).
code(ioutils_1_code48, modifier, ioutils_1_code45, (modifiers, 2), range(ioutils_1, 7154, 5, 207, 207)).
code(ioutils_1_code50, primitive_type, ioutils_1_code49, element_type, range(ioutils_1, 7160, 4, 207, 207)).
code(ioutils_1_code49, array_type, ioutils_1_code45, type, range(ioutils_1, 7160, 6, 207, 207)).
code(ioutils_1_code51, dimension, ioutils_1_code49, (dimensions, 0), range(ioutils_1, 7164, 2, 207, 207)).
code(ioutils_1_code52, variable_declaration_fragment, ioutils_1_code45, (fragments, 0), range(ioutils_1, 7167, 36, 207, 207)).
code(ioutils_1_code53, field_declaration, ioutils_1_code2, (body_declarations, 13), range(ioutils_1, 7210, 200, 209, 212)).
code(ioutils_1_code54, modifier, ioutils_1_code53, (modifiers, 0), range(ioutils_1, 7300, 7, 212, 212)).
code(ioutils_1_code55, modifier, ioutils_1_code53, (modifiers, 1), range(ioutils_1, 7308, 6, 212, 212)).
code(ioutils_1_code56, modifier, ioutils_1_code53, (modifiers, 2), range(ioutils_1, 7315, 5, 212, 212)).
code(ioutils_1_code57, parameterized_type, ioutils_1_code53, type, range(ioutils_1, 7321, 19, 212, 212)).
code(ioutils_1_code58, simple_type, ioutils_1_code57, type, range(ioutils_1, 7321, 11, 212, 212)).
code(ioutils_1_code59, array_type, ioutils_1_code57, (type_arguments, 0), range(ioutils_1, 7333, 6, 212, 212)).
code(ioutils_1_code60, primitive_type, ioutils_1_code59, element_type, range(ioutils_1, 7333, 4, 212, 212)).
code(ioutils_1_code61, dimension, ioutils_1_code59, (dimensions, 0), range(ioutils_1, 7337, 2, 212, 212)).
code(ioutils_1_code62, variable_declaration_fragment, ioutils_1_code53, (fragments, 0), range(ioutils_1, 7341, 68, 212, 212)).
code(ioutils_1_code63, field_declaration, ioutils_1_code2, (body_declarations, 14), range(ioutils_1, 7416, 152, 214, 217)).
code(ioutils_1_code64, modifier, ioutils_1_code63, (modifiers, 0), range(ioutils_1, 7503, 7, 217, 217)).
code(ioutils_1_code65, modifier, ioutils_1_code63, (modifiers, 1), range(ioutils_1, 7511, 6, 217, 217)).
code(ioutils_1_code66, modifier, ioutils_1_code63, (modifiers, 2), range(ioutils_1, 7518, 5, 217, 217)).
code(ioutils_1_code68, primitive_type, ioutils_1_code67, element_type, range(ioutils_1, 7524, 4, 217, 217)).
code(ioutils_1_code67, array_type, ioutils_1_code63, type, range(ioutils_1, 7524, 6, 217, 217)).
code(ioutils_1_code69, dimension, ioutils_1_code67, (dimensions, 0), range(ioutils_1, 7528, 2, 217, 217)).
code(ioutils_1_code70, variable_declaration_fragment, ioutils_1_code63, (fragments, 0), range(ioutils_1, 7531, 36, 217, 217)).
code(ioutils_1_code71, method_declaration, ioutils_1_code2, (body_declarations, 23), range(ioutils_1, 13933, 270, 347, 355)).
code(ioutils_1_code72, method_declaration, ioutils_1_code2, (body_declarations, 24), range(ioutils_1, 14209, 405, 357, 369)).
code(ioutils_1_code73, array_type, ioutils_1_expr12, type, range(ioutils_1, 14597, 10, 368, 368)).
code(ioutils_1_code74, primitive_type, ioutils_1_code73, element_type, range(ioutils_1, 14597, 4, 368, 368)).
code(ioutils_1_code75, dimension, ioutils_1_code73, (dimensions, 0), range(ioutils_1, 14601, 6, 368, 368)).
code(ioutils_1_code76, method_declaration, ioutils_1_code2, (body_declarations, 25), range(ioutils_1, 14620, 271, 371, 379)).
code(ioutils_1_code77, method_declaration, ioutils_1_code2, (body_declarations, 26), range(ioutils_1, 14897, 339, 381, 392)).
code(ioutils_1_code79, primitive_type, ioutils_1_code78, element_type, range(ioutils_1, 15219, 4, 391, 391)).
code(ioutils_1_code78, array_type, ioutils_1_expr14, type, range(ioutils_1, 15219, 10, 391, 391)).
code(ioutils_1_code80, dimension, ioutils_1_code78, (dimensions, 0), range(ioutils_1, 15223, 6, 391, 391)).
code(ioutils_1_code81, method_declaration, ioutils_1_code2, (body_declarations, 84), range(ioutils_1, 65047, 317, 1781, 1790)).
%directory_file_filter_1 - org.apache.commons.io.filefilter.DirectoryFileFilter
code(directory_file_filter_1_code1, compilation_unit, range(directory_file_filter_1, 0, 3602, 1, -1)).
code(directory_file_filter_1_code2, type_declaration, directory_file_filter_1_code1, (types, 0), range(directory_file_filter_1, 1042, 2559, 26, 115)).
code(directory_file_filter_1_code3, field_declaration, directory_file_filter_1_code2, (body_declarations, 0), range(directory_file_filter_1, 2353, 159, 70, 75)).
code(directory_file_filter_1_code4, modifier, directory_file_filter_1_code3, (modifiers, 0), range(directory_file_filter_1, 2441, 6, 75, 75)).
code(directory_file_filter_1_code5, modifier, directory_file_filter_1_code3, (modifiers, 1), range(directory_file_filter_1, 2448, 6, 75, 75)).
code(directory_file_filter_1_code6, modifier, directory_file_filter_1_code3, (modifiers, 2), range(directory_file_filter_1, 2455, 5, 75, 75)).
code(directory_file_filter_1_code7, simple_type, directory_file_filter_1_code3, type, range(directory_file_filter_1, 2461, 12, 75, 75)).
code(directory_file_filter_1_code8, variable_declaration_fragment, directory_file_filter_1_code3, (fragments, 0), range(directory_file_filter_1, 2474, 37, 75, 75)).
code(directory_file_filter_1_code9, simple_type, directory_file_filter_1_expr1, type, range(directory_file_filter_1, 2490, 19, 75, 75)).
code(directory_file_filter_1_code10, field_declaration, directory_file_filter_1_code2, (body_declarations, 1), range(directory_file_filter_1, 2518, 292, 77, 81)).
code(directory_file_filter_1_code11, modifier, directory_file_filter_1_code10, (modifiers, 0), range(directory_file_filter_1, 2756, 6, 81, 81)).
code(directory_file_filter_1_code12, modifier, directory_file_filter_1_code10, (modifiers, 1), range(directory_file_filter_1, 2763, 6, 81, 81)).
code(directory_file_filter_1_code13, modifier, directory_file_filter_1_code10, (modifiers, 2), range(directory_file_filter_1, 2770, 5, 81, 81)).
code(directory_file_filter_1_code14, simple_type, directory_file_filter_1_code10, type, range(directory_file_filter_1, 2776, 12, 81, 81)).
code(directory_file_filter_1_code15, variable_declaration_fragment, directory_file_filter_1_code10, (fragments, 0), range(directory_file_filter_1, 2789, 20, 81, 81)).
code(directory_file_filter_1_code16, method_declaration, directory_file_filter_1_code2, (body_declarations, 3), range(directory_file_filter_1, 2889, 105, 85, 90)).
code(directory_file_filter_1_code17, modifier, directory_file_filter_1_code16, (modifiers, 0), range(directory_file_filter_1, 2937, 9, 88, 88)).
%not_file_filter_1 - org.apache.commons.io.filefilter.NotFileFilter
code(not_file_filter_1_code1, compilation_unit, range(not_file_filter_1, 0, 3317, 1, -1)).
code(not_file_filter_1_code2, type_declaration, not_file_filter_1_code1, (types, 0), range(not_file_filter_1, 1040, 2276, 26, 103)).
code(not_file_filter_1_code3, method_declaration, not_file_filter_1_code2, (body_declarations, 2), range(not_file_filter_1, 1521, 342, 43, 52)).
code(not_file_filter_1_code4, modifier, not_file_filter_1_code3, (modifiers, 0), range(not_file_filter_1, 1728, 6, 49, 49)).
code(not_file_filter_1_code6, modifier, not_file_filter_1_code5, (modifiers, 0), range(not_file_filter_1, 1749, 5, 49, 49)).
code(not_file_filter_1_code5, single_variable_declaration, not_file_filter_1_code3, (parameters, 0), range(not_file_filter_1, 1749, 25, 49, 49)).
code(not_file_filter_1_code7, simple_type, not_file_filter_1_code5, type, range(not_file_filter_1, 1755, 12, 49, 49)).
%iocase_test_1 - org.apache.commons.io.IOCaseTest
code(iocase_test_1_code1, compilation_unit, range(iocase_test_1, 0, 15988, 1, -1)).
code(iocase_test_1_code2, type_declaration, iocase_test_1_code1, (types, 0), range(iocase_test_1, 1363, 14624, 34, 354)).
code(iocase_test_1_code3, modifier, iocase_test_1_code2, (modifiers, 0), range(iocase_test_1, 1396, 6, 37, 37)).
code(iocase_test_1_code4, field_declaration, iocase_test_1_code2, (body_declarations, 0), range(iocase_test_1, 1427, 66, 39, 39)).
code(iocase_test_1_code5, modifier, iocase_test_1_code4, (modifiers, 0), range(iocase_test_1, 1427, 7, 39, 39)).
code(iocase_test_1_code6, modifier, iocase_test_1_code4, (modifiers, 1), range(iocase_test_1, 1435, 6, 39, 39)).
code(iocase_test_1_code7, modifier, iocase_test_1_code4, (modifiers, 2), range(iocase_test_1, 1442, 5, 39, 39)).
code(iocase_test_1_code8, primitive_type, iocase_test_1_code4, type, range(iocase_test_1, 1448, 7, 39, 39)).
code(iocase_test_1_code9, variable_declaration_fragment, iocase_test_1_code4, (fragments, 0), range(iocase_test_1, 1456, 36, 39, 39)).
code(iocase_test_1_code10, method_declaration, iocase_test_1_code2, (body_declarations, 9), range(iocase_test_1, 5530, 819, 134, 149)).
%empty_file_filter_1 - org.apache.commons.io.filefilter.EmptyFileFilter
code(empty_file_filter_1_code1, compilation_unit, range(empty_file_filter_1, 0, 4269, 1, -1)).
code(empty_file_filter_1_code2, type_declaration, empty_file_filter_1_code1, (types, 0), range(empty_file_filter_1, 1113, 3155, 29, 133)).
code(empty_file_filter_1_code3, field_declaration, empty_file_filter_1_code2, (body_declarations, 0), range(empty_file_filter_1, 2751, 116, 85, 86)).
code(empty_file_filter_1_code4, modifier, empty_file_filter_1_code3, (modifiers, 0), range(empty_file_filter_1, 2804, 6, 86, 86)).
code(empty_file_filter_1_code5, modifier, empty_file_filter_1_code3, (modifiers, 1), range(empty_file_filter_1, 2811, 6, 86, 86)).
code(empty_file_filter_1_code6, modifier, empty_file_filter_1_code3, (modifiers, 2), range(empty_file_filter_1, 2818, 5, 86, 86)).
code(empty_file_filter_1_code7, simple_type, empty_file_filter_1_code3, type, range(empty_file_filter_1, 2824, 12, 86, 86)).
code(empty_file_filter_1_code8, variable_declaration_fragment, empty_file_filter_1_code3, (fragments, 0), range(empty_file_filter_1, 2837, 29, 86, 86)).
code(empty_file_filter_1_code9, simple_type, empty_file_filter_1_expr1, type, range(empty_file_filter_1, 2849, 15, 86, 86)).
code(empty_file_filter_1_code10, field_declaration, empty_file_filter_1_code2, (body_declarations, 1), range(empty_file_filter_1, 2873, 117, 88, 89)).
code(empty_file_filter_1_code11, modifier, empty_file_filter_1_code10, (modifiers, 0), range(empty_file_filter_1, 2930, 6, 89, 89)).
code(empty_file_filter_1_code12, modifier, empty_file_filter_1_code10, (modifiers, 1), range(empty_file_filter_1, 2937, 6, 89, 89)).
code(empty_file_filter_1_code13, modifier, empty_file_filter_1_code10, (modifiers, 2), range(empty_file_filter_1, 2944, 5, 89, 89)).
code(empty_file_filter_1_code14, simple_type, empty_file_filter_1_code10, type, range(empty_file_filter_1, 2950, 12, 89, 89)).
code(empty_file_filter_1_code15, variable_declaration_fragment, empty_file_filter_1_code10, (fragments, 0), range(empty_file_filter_1, 2963, 26, 89, 89)).
code(empty_file_filter_1_code16, method_declaration, empty_file_filter_1_code2, (body_declarations, 3), range(empty_file_filter_1, 3068, 83, 93, 97)).
code(empty_file_filter_1_code17, modifier, empty_file_filter_1_code16, (modifiers, 0), range(empty_file_filter_1, 3116, 9, 96, 96)).
code(empty_file_filter_1_code18, method_declaration, empty_file_filter_1_code2, (body_declarations, 4), range(empty_file_filter_1, 3157, 448, 99, 112)).
code(empty_file_filter_1_code19, modifier, empty_file_filter_1_stmt2, (modifiers, 0), range(empty_file_filter_1, 3469, 5, 108, 108)).
code(empty_file_filter_1_code21, simple_type, empty_file_filter_1_code20, element_type, range(empty_file_filter_1, 3475, 4, 108, 108)).
code(empty_file_filter_1_code20, array_type, empty_file_filter_1_stmt2, type, range(empty_file_filter_1, 3475, 6, 108, 108)).
code(empty_file_filter_1_code22, dimension, empty_file_filter_1_code20, (dimensions, 0), range(empty_file_filter_1, 3479, 2, 108, 108)).
code(empty_file_filter_1_code23, variable_declaration_fragment, empty_file_filter_1_stmt2, (fragments, 0), range(empty_file_filter_1, 3482, 24, 108, 108)).
code(empty_file_filter_1_code24, method_declaration, empty_file_filter_1_code2, (body_declarations, 5), range(empty_file_filter_1, 3611, 654, 114, 131)).
code(empty_file_filter_1_code26, simple_type, empty_file_filter_1_code25, type, range(empty_file_filter_1, 4034, 6, 125, 125)).
code(empty_file_filter_1_code25, parameterized_type, empty_file_filter_1_expr10, type, range(empty_file_filter_1, 4034, 12, 125, 125)).
code(empty_file_filter_1_code27, simple_type, empty_file_filter_1_code25, (type_arguments, 0), range(empty_file_filter_1, 4041, 4, 125, 125)).
code(empty_file_filter_1_code28, variable_declaration_fragment, empty_file_filter_1_expr10, (fragments, 0), range(empty_file_filter_1, 4047, 25, 125, 125)).
%file_file_filter_1 - org.apache.commons.io.filefilter.FileFileFilter
code(file_file_filter_1_code1, compilation_unit, range(file_file_filter_1, 0, 3422, 1, -1)).
code(file_file_filter_1_code2, type_declaration, file_file_filter_1_code1, (types, 0), range(file_file_filter_1, 1042, 2379, 26, 115)).
code(file_file_filter_1_code3, field_declaration, file_file_filter_1_code2, (body_declarations, 0), range(file_file_filter_1, 2347, 150, 69, 74)).
code(file_file_filter_1_code4, modifier, file_file_filter_1_code3, (modifiers, 0), range(file_file_filter_1, 2432, 6, 74, 74)).
code(file_file_filter_1_code5, modifier, file_file_filter_1_code3, (modifiers, 1), range(file_file_filter_1, 2439, 6, 74, 74)).
code(file_file_filter_1_code6, modifier, file_file_filter_1_code3, (modifiers, 2), range(file_file_filter_1, 2446, 5, 74, 74)).
code(file_file_filter_1_code7, simple_type, file_file_filter_1_code3, type, range(file_file_filter_1, 2452, 12, 74, 74)).
code(file_file_filter_1_code8, variable_declaration_fragment, file_file_filter_1_code3, (fragments, 0), range(file_file_filter_1, 2465, 31, 74, 74)).
code(file_file_filter_1_code9, simple_type, file_file_filter_1_expr1, type, range(file_file_filter_1, 2480, 14, 74, 74)).
code(file_file_filter_1_code10, field_declaration, file_file_filter_1_code2, (body_declarations, 1), range(file_file_filter_1, 2503, 172, 76, 82)).
code(file_file_filter_1_code11, modifier, file_file_filter_1_code10, (modifiers, 1), range(file_file_filter_1, 2626, 6, 82, 82)).
code(file_file_filter_1_code12, modifier, file_file_filter_1_code10, (modifiers, 2), range(file_file_filter_1, 2633, 6, 82, 82)).
code(file_file_filter_1_code13, modifier, file_file_filter_1_code10, (modifiers, 3), range(file_file_filter_1, 2640, 5, 82, 82)).
code(file_file_filter_1_code14, simple_type, file_file_filter_1_code10, type, range(file_file_filter_1, 2646, 12, 82, 82)).
code(file_file_filter_1_code15, variable_declaration_fragment, file_file_filter_1_code10, (fragments, 0), range(file_file_filter_1, 2659, 15, 82, 82)).
code(file_file_filter_1_code16, method_declaration, file_file_filter_1_code2, (body_declarations, 3), range(file_file_filter_1, 2753, 82, 86, 90)).
code(file_file_filter_1_code17, modifier, file_file_filter_1_code16, (modifiers, 0), range(file_file_filter_1, 2801, 9, 89, 89)).
code(file_file_filter_1_code18, method_declaration, file_file_filter_1_code2, (body_declarations, 4), range(file_file_filter_1, 2841, 237, 92, 101)).
%name_file_filter_1 - org.apache.commons.io.filefilter.NameFileFilter
code(name_file_filter_1_code1, compilation_unit, range(name_file_filter_1, 0, 7159, 1, -1)).
code(name_file_filter_1_code2, type_declaration, name_file_filter_1_code1, (types, 0), range(name_file_filter_1, 1178, 5980, 31, 216)).
code(name_file_filter_1_code3, method_declaration, name_file_filter_1_code2, (body_declarations, 3), range(name_file_filter_1, 2762, 376, 83, 92)).
code(name_file_filter_1_code4, method_declaration, name_file_filter_1_code2, (body_declarations, 4), range(name_file_filter_1, 3144, 603, 94, 106)).
code(name_file_filter_1_code5, modifier, name_file_filter_1_code4, (modifiers, 0), range(name_file_filter_1, 3527, 6, 102, 102)).
code(name_file_filter_1_code6, single_variable_declaration, name_file_filter_1_code4, (parameters, 0), range(name_file_filter_1, 3549, 24, 102, 102)).
code(name_file_filter_1_code7, modifier, name_file_filter_1_code6, (modifiers, 0), range(name_file_filter_1, 3549, 5, 102, 102)).
code(name_file_filter_1_code8, parameterized_type, name_file_filter_1_code6, type, range(name_file_filter_1, 3555, 12, 102, 102)).
code(name_file_filter_1_code9, simple_type, name_file_filter_1_code8, type, range(name_file_filter_1, 3555, 4, 102, 102)).
code(name_file_filter_1_code10, simple_type, name_file_filter_1_code8, (type_arguments, 0), range(name_file_filter_1, 3560, 6, 102, 102)).
code(name_file_filter_1_code11, single_variable_declaration, name_file_filter_1_code4, (parameters, 1), range(name_file_filter_1, 3575, 19, 102, 102)).
code(name_file_filter_1_code12, modifier, name_file_filter_1_code11, (modifiers, 0), range(name_file_filter_1, 3575, 5, 102, 102)).
code(name_file_filter_1_code13, simple_type, name_file_filter_1_code11, type, range(name_file_filter_1, 3581, 6, 102, 102)).
code(name_file_filter_1_code14, method_declaration, name_file_filter_1_code2, (body_declarations, 5), range(name_file_filter_1, 3753, 300, 108, 116)).
code(name_file_filter_1_code15, method_declaration, name_file_filter_1_code2, (body_declarations, 6), range(name_file_filter_1, 4059, 468, 118, 130)).
code(name_file_filter_1_code16, method_declaration, name_file_filter_1_code2, (body_declarations, 7), range(name_file_filter_1, 4533, 482, 132, 143)).
code(name_file_filter_1_code17, modifier, name_file_filter_1_code16, (modifiers, 0), range(name_file_filter_1, 4818, 6, 139, 139)).
code(name_file_filter_1_code19, modifier, name_file_filter_1_code18, (modifiers, 0), range(name_file_filter_1, 4840, 5, 139, 139)).
code(name_file_filter_1_code18, single_variable_declaration, name_file_filter_1_code16, (parameters, 0), range(name_file_filter_1, 4840, 17, 139, 139)).
code(name_file_filter_1_code20, simple_type, name_file_filter_1_code18, type, range(name_file_filter_1, 4846, 6, 139, 139)).
code(name_file_filter_1_code22, modifier, name_file_filter_1_code21, (modifiers, 0), range(name_file_filter_1, 4859, 5, 139, 139)).
code(name_file_filter_1_code21, single_variable_declaration, name_file_filter_1_code16, (parameters, 1), range(name_file_filter_1, 4859, 19, 139, 139)).
code(name_file_filter_1_code23, simple_type, name_file_filter_1_code21, type, range(name_file_filter_1, 4865, 6, 139, 139)).
code(name_file_filter_1_code24, array_type, name_file_filter_1_expr16, type, range(name_file_filter_1, 4953, 8, 141, 141)).
code(name_file_filter_1_code25, simple_type, name_file_filter_1_code24, element_type, range(name_file_filter_1, 4953, 6, 141, 141)).
code(name_file_filter_1_code26, dimension, name_file_filter_1_code24, (dimensions, 0), range(name_file_filter_1, 4959, 2, 141, 141)).
code(name_file_filter_1_code27, method_declaration, name_file_filter_1_code2, (body_declarations, 8), range(name_file_filter_1, 5021, 512, 145, 156)).
code(name_file_filter_1_code28, modifier, name_file_filter_1_code27, (modifiers, 0), range(name_file_filter_1, 5337, 6, 152, 152)).
code(name_file_filter_1_code29, single_variable_declaration, name_file_filter_1_code27, (parameters, 0), range(name_file_filter_1, 5359, 20, 152, 152)).
code(name_file_filter_1_code30, modifier, name_file_filter_1_code29, (modifiers, 0), range(name_file_filter_1, 5359, 5, 152, 152)).
code(name_file_filter_1_code31, array_type, name_file_filter_1_code29, type, range(name_file_filter_1, 5365, 8, 152, 152)).
code(name_file_filter_1_code32, simple_type, name_file_filter_1_code31, element_type, range(name_file_filter_1, 5365, 6, 152, 152)).
code(name_file_filter_1_code33, dimension, name_file_filter_1_code31, (dimensions, 0), range(name_file_filter_1, 5371, 2, 152, 152)).
code(name_file_filter_1_code34, single_variable_declaration, name_file_filter_1_code27, (parameters, 1), range(name_file_filter_1, 5381, 19, 152, 152)).
code(name_file_filter_1_code35, modifier, name_file_filter_1_code34, (modifiers, 0), range(name_file_filter_1, 5381, 5, 152, 152)).
code(name_file_filter_1_code36, simple_type, name_file_filter_1_code34, type, range(name_file_filter_1, 5387, 6, 152, 152)).
code(name_file_filter_1_code37, method_declaration, name_file_filter_1_code2, (body_declarations, 9), range(name_file_filter_1, 5539, 260, 158, 167)).
code(name_file_filter_1_code38, method_declaration, name_file_filter_1_code2, (body_declarations, 11), range(name_file_filter_1, 6123, 364, 181, 191)).
code(name_file_filter_1_code39, method_declaration, name_file_filter_1_code2, (body_declarations, 12), range(name_file_filter_1, 6493, 155, 193, 195)).
code(name_file_filter_1_code40, variable_declaration_fragment, name_file_filter_1_expr38, (parameters, 0), range(name_file_filter_1, 6590, 8, 194, 194)).
code(name_file_filter_1_code41, method_declaration, name_file_filter_1_code2, (body_declarations, 13), range(name_file_filter_1, 6654, 107, 197, 199)).
code(name_file_filter_1_code42, method_declaration, name_file_filter_1_code2, (body_declarations, 14), range(name_file_filter_1, 6767, 388, 201, 214)).
code(name_file_filter_1_code43, modifier, name_file_filter_1_stmt17, (modifiers, 0), range(name_file_filter_1, 6938, 5, 208, 208)).
code(name_file_filter_1_code44, simple_type, name_file_filter_1_stmt17, type, range(name_file_filter_1, 6944, 13, 208, 208)).
code(name_file_filter_1_code45, variable_declaration_fragment, name_file_filter_1_stmt17, (fragments, 0), range(name_file_filter_1, 6958, 28, 208, 208)).
code(name_file_filter_1_code46, simple_type, name_file_filter_1_expr42, type, range(name_file_filter_1, 6971, 13, 208, 208)).
%file_filter_utils_1 - org.apache.commons.io.filefilter.FileFilterUtils
code(file_filter_utils_1_code1, compilation_unit, range(file_filter_utils_1, 0, 26429, 1, -1)).
code(file_filter_utils_1_code2, type_declaration, file_filter_utils_1_code1, (types, 0), range(file_filter_utils_1, 1321, 25107, 37, 743)).
code(file_filter_utils_1_code3, field_declaration, file_filter_utils_1_code2, (body_declarations, 0), range(file_filter_utils_1, 1607, 125, 47, 48)).
code(file_filter_utils_1_code4, modifier, file_filter_utils_1_code3, (modifiers, 0), range(file_filter_utils_1, 1607, 7, 47, 47)).
code(file_filter_utils_1_code5, modifier, file_filter_utils_1_code3, (modifiers, 1), range(file_filter_utils_1, 1615, 6, 47, 47)).
code(file_filter_utils_1_code6, modifier, file_filter_utils_1_code3, (modifiers, 2), range(file_filter_utils_1, 1622, 5, 47, 47)).
code(file_filter_utils_1_code7, simple_type, file_filter_utils_1_code3, type, range(file_filter_utils_1, 1628, 12, 47, 47)).
code(file_filter_utils_1_code8, variable_declaration_fragment, file_filter_utils_1_code3, (fragments, 0), range(file_filter_utils_1, 1641, 90, 47, 48)).
code(file_filter_utils_1_code9, field_declaration, file_filter_utils_1_code2, (body_declarations, 1), range(file_filter_utils_1, 1786, 126, 51, 52)).
code(file_filter_utils_1_code10, modifier, file_filter_utils_1_code9, (modifiers, 0), range(file_filter_utils_1, 1786, 7, 51, 51)).
code(file_filter_utils_1_code11, modifier, file_filter_utils_1_code9, (modifiers, 1), range(file_filter_utils_1, 1794, 6, 51, 51)).
code(file_filter_utils_1_code12, modifier, file_filter_utils_1_code9, (modifiers, 2), range(file_filter_utils_1, 1801, 5, 51, 51)).
code(file_filter_utils_1_code13, simple_type, file_filter_utils_1_code9, type, range(file_filter_utils_1, 1807, 12, 51, 51)).
code(file_filter_utils_1_code14, variable_declaration_fragment, file_filter_utils_1_code9, (fragments, 0), range(file_filter_utils_1, 1820, 91, 51, 52)).
code(file_filter_utils_1_code15, method_declaration, file_filter_utils_1_code2, (body_declarations, 8), range(file_filter_utils_1, 4816, 480, 134, 147)).
code(file_filter_utils_1_code16, simple_type, file_filter_utils_1_expr9, type, range(file_filter_utils_1, 5259, 13, 146, 146)).
code(file_filter_utils_1_code17, method_declaration, file_filter_utils_1_code2, (body_declarations, 12), range(file_filter_utils_1, 6572, 302, 188, 196)).
code(file_filter_utils_1_code18, method_declaration, file_filter_utils_1_code2, (body_declarations, 30), range(file_filter_utils_1, 20330, 318, 560, 569)).
code(file_filter_utils_1_code19, simple_type, file_filter_utils_1_expr11, type, range(file_filter_utils_1, 20621, 14, 568, 568)).
code(file_filter_utils_1_code20, method_declaration, file_filter_utils_1_code2, (body_declarations, 31), range(file_filter_utils_1, 20654, 445, 571, 582)).
code(file_filter_utils_1_code21, simple_type, file_filter_utils_1_expr12, type, range(file_filter_utils_1, 21064, 14, 581, 581)).
code(file_filter_utils_1_code22, method_declaration, file_filter_utils_1_code2, (body_declarations, 32), range(file_filter_utils_1, 21105, 310, 584, 593)).
code(file_filter_utils_1_code23, method_declaration, file_filter_utils_1_code2, (body_declarations, 42), range(file_filter_utils_1, 25627, 464, 714, 725)).
%file_system_1 - org.apache.commons.io.FileSystem
code(file_system_1_code1, compilation_unit, range(file_system_1, 0, 19186, 1, -1)).
code(file_system_1_code2, enum_declaration, file_system_1_code1, (types, 0), range(file_system_1, 913, 18272, 24, 527)).
code(file_system_1_code3, modifier, file_system_1_code2, (modifiers, 0), range(file_system_1, 1293, 6, 34, 34)).
code(file_system_1_code4, enum_constant_declaration, file_system_1_code2, (enum_constants, 0), range(file_system_1, 1323, 162, 36, 39)).
code(file_system_1_code6, primitive_type, file_system_1_code5, element_type, range(file_system_1, 1437, 3, 39, 39)).
code(file_system_1_code5, array_type, file_system_1_expr1, type, range(file_system_1, 1437, 5, 39, 39)).
code(file_system_1_code7, dimension, file_system_1_code5, (dimensions, 0), range(file_system_1, 1440, 2, 39, 39)).
code(file_system_1_code9, simple_type, file_system_1_code8, element_type, range(file_system_1, 1454, 6, 39, 39)).
code(file_system_1_code8, array_type, file_system_1_expr3, type, range(file_system_1, 1454, 8, 39, 39)).
code(file_system_1_code10, dimension, file_system_1_code8, (dimensions, 0), range(file_system_1, 1460, 2, 39, 39)).
code(file_system_1_code11, enum_constant_declaration, file_system_1_code2, (enum_constants, 1), range(file_system_1, 1492, 286, 41, 51)).
code(file_system_1_code12, array_type, file_system_1_expr5, type, range(file_system_1, 1573, 5, 44, 44)).
code(file_system_1_code13, primitive_type, file_system_1_code12, element_type, range(file_system_1, 1573, 3, 44, 44)).
code(file_system_1_code14, dimension, file_system_1_code12, (dimensions, 0), range(file_system_1, 1576, 2, 44, 44)).
code(file_system_1_code15, enum_constant_declaration, file_system_1_code2, (enum_constants, 2), range(file_system_1, 1785, 305, 53, 64)).
code(file_system_1_code17, primitive_type, file_system_1_code16, element_type, range(file_system_1, 1868, 3, 56, 56)).
code(file_system_1_code16, array_type, file_system_1_expr7, type, range(file_system_1, 1868, 5, 56, 56)).
code(file_system_1_code18, dimension, file_system_1_code16, (dimensions, 0), range(file_system_1, 1871, 2, 56, 56)).
code(file_system_1_code19, enum_constant_declaration, file_system_1_code2, (enum_constants, 3), range(file_system_1, 2097, 1404, 66, 92)).
code(file_system_1_code20, field_declaration, file_system_1_code2, (body_declarations, 0), range(file_system_1, 3508, 251, 94, 102)).
code(file_system_1_code21, modifier, file_system_1_code20, (modifiers, 0), range(file_system_1, 3690, 7, 102, 102)).
code(file_system_1_code22, modifier, file_system_1_code20, (modifiers, 1), range(file_system_1, 3698, 6, 102, 102)).
code(file_system_1_code23, modifier, file_system_1_code20, (modifiers, 2), range(file_system_1, 3705, 5, 102, 102)).
code(file_system_1_code24, primitive_type, file_system_1_code20, type, range(file_system_1, 3711, 7, 102, 102)).
code(file_system_1_code25, variable_declaration_fragment, file_system_1_code20, (fragments, 0), range(file_system_1, 3719, 39, 102, 102)).
code(file_system_1_code26, field_declaration, file_system_1_code2, (body_declarations, 1), range(file_system_1, 3765, 245, 104, 112)).
code(file_system_1_code27, modifier, file_system_1_code26, (modifiers, 0), range(file_system_1, 3945, 7, 112, 112)).
code(file_system_1_code28, modifier, file_system_1_code26, (modifiers, 1), range(file_system_1, 3953, 6, 112, 112)).
code(file_system_1_code29, modifier, file_system_1_code26, (modifiers, 2), range(file_system_1, 3960, 5, 112, 112)).
code(file_system_1_code30, primitive_type, file_system_1_code26, type, range(file_system_1, 3966, 7, 112, 112)).
code(file_system_1_code31, variable_declaration_fragment, file_system_1_code26, (fragments, 0), range(file_system_1, 3974, 35, 112, 112)).
code(file_system_1_code32, field_declaration, file_system_1_code2, (body_declarations, 3), range(file_system_1, 4146, 270, 119, 127)).
code(file_system_1_code33, modifier, file_system_1_code32, (modifiers, 0), range(file_system_1, 4330, 7, 127, 127)).
code(file_system_1_code34, modifier, file_system_1_code32, (modifiers, 1), range(file_system_1, 4338, 6, 127, 127)).
code(file_system_1_code35, modifier, file_system_1_code32, (modifiers, 2), range(file_system_1, 4345, 5, 127, 127)).
code(file_system_1_code36, primitive_type, file_system_1_code32, type, range(file_system_1, 4351, 7, 127, 127)).
code(file_system_1_code37, variable_declaration_fragment, file_system_1_code32, (fragments, 0), range(file_system_1, 4359, 56, 127, 127)).
code(file_system_1_code38, field_declaration, file_system_1_code2, (body_declarations, 4), range(file_system_1, 4422, 99, 129, 132)).
code(file_system_1_code39, modifier, file_system_1_code38, (modifiers, 0), range(file_system_1, 4469, 7, 132, 132)).
code(file_system_1_code40, modifier, file_system_1_code38, (modifiers, 1), range(file_system_1, 4477, 6, 132, 132)).
code(file_system_1_code41, modifier, file_system_1_code38, (modifiers, 2), range(file_system_1, 4484, 5, 132, 132)).
code(file_system_1_code42, simple_type, file_system_1_code38, type, range(file_system_1, 4490, 10, 132, 132)).
code(file_system_1_code43, variable_declaration_fragment, file_system_1_code38, (fragments, 0), range(file_system_1, 4501, 19, 132, 132)).
code(file_system_1_code44, method_declaration, file_system_1_code2, (body_declarations, 5), range(file_system_1, 4527, 359, 134, 150)).
code(file_system_1_code45, method_declaration, file_system_1_code2, (body_declarations, 6), range(file_system_1, 4892, 168, 152, 159)).
code(file_system_1_code46, method_declaration, file_system_1_code2, (body_declarations, 7), range(file_system_1, 5066, 358, 161, 170)).
code(file_system_1_code47, method_declaration, file_system_1_code2, (body_declarations, 8), range(file_system_1, 5430, 905, 172, 194)).
code(file_system_1_code48, method_declaration, file_system_1_code2, (body_declarations, 10), range(file_system_1, 9349, 646, 269, 286)).
code(file_system_1_code49, method_declaration, file_system_1_code2, (body_declarations, 23), range(file_system_1, 10859, 1812, 312, 340)).
code(file_system_1_code50, single_variable_declaration, file_system_1_code49, (parameters, 6), range(file_system_1, 11855, 32, 328, 328)).
code(file_system_1_code51, modifier, file_system_1_code50, (modifiers, 0), range(file_system_1, 11855, 5, 328, 328)).
code(file_system_1_code52, array_type, file_system_1_code50, type, range(file_system_1, 11861, 8, 328, 328)).
code(file_system_1_code53, simple_type, file_system_1_code52, element_type, range(file_system_1, 11861, 6, 328, 328)).
code(file_system_1_code54, dimension, file_system_1_code52, (dimensions, 0), range(file_system_1, 11867, 2, 328, 328)).
code(file_system_1_code55, single_variable_declaration, file_system_1_code49, (parameters, 7), range(file_system_1, 11889, 41, 328, 328)).
code(file_system_1_code56, modifier, file_system_1_code55, (modifiers, 0), range(file_system_1, 11889, 5, 328, 328)).
code(file_system_1_code57, primitive_type, file_system_1_code55, type, range(file_system_1, 11895, 7, 328, 328)).
code(file_system_1_code59, modifier, file_system_1_code58, (modifiers, 0), range(file_system_1, 11932, 5, 328, 328)).
code(file_system_1_code58, single_variable_declaration, file_system_1_code49, (parameters, 8), range(file_system_1, 11932, 33, 328, 328)).
code(file_system_1_code60, primitive_type, file_system_1_code58, type, range(file_system_1, 11938, 7, 328, 328)).
code(file_system_1_code62, modifier, file_system_1_code61, (modifiers, 0), range(file_system_1, 11967, 5, 328, 328)).
code(file_system_1_code61, single_variable_declaration, file_system_1_code49, (parameters, 9), range(file_system_1, 11967, 24, 328, 328)).
code(file_system_1_code63, primitive_type, file_system_1_code61, type, range(file_system_1, 11973, 4, 328, 328)).
code(file_system_1_code64, method_declaration, file_system_1_code2, (body_declarations, 32), range(file_system_1, 14741, 209, 422, 429)).
%can_read_file_filter_1 - org.apache.commons.io.filefilter.CanReadFileFilter
code(can_read_file_filter_1_code1, compilation_unit, range(can_read_file_filter_1, 0, 3468, 1, -1)).
code(can_read_file_filter_1_code2, type_declaration, can_read_file_filter_1_code1, (types, 0), range(can_read_file_filter_1, 1042, 2425, 26, 110)).
code(can_read_file_filter_1_code3, field_declaration, can_read_file_filter_1_code2, (body_declarations, 0), range(can_read_file_filter_1, 2235, 124, 70, 71)).
code(can_read_file_filter_1_code4, modifier, can_read_file_filter_1_code3, (modifiers, 0), range(can_read_file_filter_1, 2291, 6, 71, 71)).
code(can_read_file_filter_1_code5, modifier, can_read_file_filter_1_code3, (modifiers, 1), range(can_read_file_filter_1, 2298, 6, 71, 71)).
code(can_read_file_filter_1_code6, modifier, can_read_file_filter_1_code3, (modifiers, 2), range(can_read_file_filter_1, 2305, 5, 71, 71)).
code(can_read_file_filter_1_code7, simple_type, can_read_file_filter_1_code3, type, range(can_read_file_filter_1, 2311, 12, 71, 71)).
code(can_read_file_filter_1_code8, variable_declaration_fragment, can_read_file_filter_1_code3, (fragments, 0), range(can_read_file_filter_1, 2324, 34, 71, 71)).
code(can_read_file_filter_1_code9, simple_type, can_read_file_filter_1_expr1, type, range(can_read_file_filter_1, 2339, 17, 71, 71)).
code(can_read_file_filter_1_code10, field_declaration, can_read_file_filter_1_code2, (body_declarations, 1), range(can_read_file_filter_1, 2365, 125, 73, 74)).
code(can_read_file_filter_1_code11, modifier, can_read_file_filter_1_code10, (modifiers, 0), range(can_read_file_filter_1, 2425, 6, 74, 74)).
code(can_read_file_filter_1_code12, modifier, can_read_file_filter_1_code10, (modifiers, 1), range(can_read_file_filter_1, 2432, 6, 74, 74)).
code(can_read_file_filter_1_code13, modifier, can_read_file_filter_1_code10, (modifiers, 2), range(can_read_file_filter_1, 2439, 5, 74, 74)).
code(can_read_file_filter_1_code14, simple_type, can_read_file_filter_1_code10, type, range(can_read_file_filter_1, 2445, 12, 74, 74)).
code(can_read_file_filter_1_code15, variable_declaration_fragment, can_read_file_filter_1_code10, (fragments, 0), range(can_read_file_filter_1, 2458, 31, 74, 74)).
code(can_read_file_filter_1_code16, field_declaration, can_read_file_filter_1_code2, (body_declarations, 2), range(can_read_file_filter_1, 2496, 148, 76, 77)).
code(can_read_file_filter_1_code17, modifier, can_read_file_filter_1_code16, (modifiers, 0), range(can_read_file_filter_1, 2553, 6, 77, 77)).
code(can_read_file_filter_1_code18, modifier, can_read_file_filter_1_code16, (modifiers, 1), range(can_read_file_filter_1, 2560, 6, 77, 77)).
code(can_read_file_filter_1_code19, modifier, can_read_file_filter_1_code16, (modifiers, 2), range(can_read_file_filter_1, 2567, 5, 77, 77)).
code(can_read_file_filter_1_code20, simple_type, can_read_file_filter_1_code16, type, range(can_read_file_filter_1, 2573, 12, 77, 77)).
code(can_read_file_filter_1_code21, variable_declaration_fragment, can_read_file_filter_1_code16, (fragments, 0), range(can_read_file_filter_1, 2586, 57, 77, 77)).
code(can_read_file_filter_1_code22, method_declaration, can_read_file_filter_1_code2, (body_declarations, 4), range(can_read_file_filter_1, 2722, 85, 81, 85)).
code(can_read_file_filter_1_code23, modifier, can_read_file_filter_1_code22, (modifiers, 0), range(can_read_file_filter_1, 2770, 9, 84, 84)).
code(can_read_file_filter_1_code24, method_declaration, can_read_file_filter_1_code2, (body_declarations, 5), range(can_read_file_filter_1, 2813, 276, 87, 96)).
code(can_read_file_filter_1_code25, method_declaration, can_read_file_filter_1_code2, (body_declarations, 6), range(can_read_file_filter_1, 3095, 369, 98, 108)).
%hidden_file_filter_1 - org.apache.commons.io.filefilter.HiddenFileFilter
code(hidden_file_filter_1_code1, compilation_unit, range(hidden_file_filter_1, 0, 3696, 1, -1)).
code(hidden_file_filter_1_code2, type_declaration, hidden_file_filter_1_code1, (types, 0), range(hidden_file_filter_1, 1042, 2653, 26, 120)).
code(hidden_file_filter_1_code3, field_declaration, hidden_file_filter_1_code2, (body_declarations, 0), range(hidden_file_filter_1, 2601, 120, 81, 82)).
code(hidden_file_filter_1_code4, modifier, hidden_file_filter_1_code3, (modifiers, 0), range(hidden_file_filter_1, 2655, 6, 82, 82)).
code(hidden_file_filter_1_code5, modifier, hidden_file_filter_1_code3, (modifiers, 1), range(hidden_file_filter_1, 2662, 6, 82, 82)).
code(hidden_file_filter_1_code6, modifier, hidden_file_filter_1_code3, (modifiers, 2), range(hidden_file_filter_1, 2669, 5, 82, 82)).
code(hidden_file_filter_1_code7, simple_type, hidden_file_filter_1_code3, type, range(hidden_file_filter_1, 2675, 12, 82, 82)).
code(hidden_file_filter_1_code8, variable_declaration_fragment, hidden_file_filter_1_code3, (fragments, 0), range(hidden_file_filter_1, 2688, 32, 82, 82)).
code(hidden_file_filter_1_code9, simple_type, hidden_file_filter_1_expr1, type, range(hidden_file_filter_1, 2702, 16, 82, 82)).
code(hidden_file_filter_1_code10, field_declaration, hidden_file_filter_1_code2, (body_declarations, 2), range(hidden_file_filter_1, 2799, 114, 86, 87)).
code(hidden_file_filter_1_code11, modifier, hidden_file_filter_1_code10, (modifiers, 0), range(hidden_file_filter_1, 2854, 6, 87, 87)).
code(hidden_file_filter_1_code12, modifier, hidden_file_filter_1_code10, (modifiers, 1), range(hidden_file_filter_1, 2861, 6, 87, 87)).
code(hidden_file_filter_1_code13, modifier, hidden_file_filter_1_code10, (modifiers, 2), range(hidden_file_filter_1, 2868, 5, 87, 87)).
code(hidden_file_filter_1_code14, simple_type, hidden_file_filter_1_code10, type, range(hidden_file_filter_1, 2874, 12, 87, 87)).
code(hidden_file_filter_1_code15, variable_declaration_fragment, hidden_file_filter_1_code10, (fragments, 0), range(hidden_file_filter_1, 2887, 25, 87, 87)).
code(hidden_file_filter_1_code16, method_declaration, hidden_file_filter_1_code2, (body_declarations, 3), range(hidden_file_filter_1, 2919, 84, 89, 93)).
code(hidden_file_filter_1_code17, modifier, hidden_file_filter_1_code16, (modifiers, 0), range(hidden_file_filter_1, 2967, 9, 92, 92)).
code(hidden_file_filter_1_code18, method_declaration, hidden_file_filter_1_code2, (body_declarations, 4), range(hidden_file_filter_1, 3009, 288, 95, 105)).
code(hidden_file_filter_1_code19, method_declaration, hidden_file_filter_1_code2, (body_declarations, 5), range(hidden_file_filter_1, 3303, 389, 107, 118)).
%abstract_file_filter_1 - org.apache.commons.io.filefilter.AbstractFileFilter
code(abstract_file_filter_1_code1, compilation_unit, range(abstract_file_filter_1, 0, 5474, 1, -1)).
code(abstract_file_filter_1_code2, type_declaration, abstract_file_filter_1_code1, (types, 0), range(abstract_file_filter_1, 1264, 4209, 33, 179)).
code(abstract_file_filter_1_code3, method_declaration, abstract_file_filter_1_code2, (body_declarations, 0), range(abstract_file_filter_1, 1684, 155, 44, 46)).
code(abstract_file_filter_1_code4, method_declaration, abstract_file_filter_1_code2, (body_declarations, 3), range(abstract_file_filter_1, 2055, 152, 58, 63)).
code(abstract_file_filter_1_code5, method_declaration, abstract_file_filter_1_code2, (body_declarations, 4), range(abstract_file_filter_1, 2213, 344, 65, 75)).
code(abstract_file_filter_1_code6, modifier, abstract_file_filter_1_code5, (modifiers, 0), range(abstract_file_filter_1, 2389, 9, 72, 72)).
code(abstract_file_filter_1_code8, modifier, abstract_file_filter_1_code7, (modifiers, 0), range(abstract_file_filter_1, 2418, 5, 72, 72)).
code(abstract_file_filter_1_code7, single_variable_declaration, abstract_file_filter_1_code5, (parameters, 0), range(abstract_file_filter_1, 2418, 30, 72, 72)).
code(abstract_file_filter_1_code9, simple_type, abstract_file_filter_1_code7, type, range(abstract_file_filter_1, 2424, 15, 72, 72)).
code(abstract_file_filter_1_code11, modifier, abstract_file_filter_1_code10, (modifiers, 0), range(abstract_file_filter_1, 2450, 5, 72, 72)).
code(abstract_file_filter_1_code10, single_variable_declaration, abstract_file_filter_1_code5, (parameters, 1), range(abstract_file_filter_1, 2450, 30, 72, 72)).
code(abstract_file_filter_1_code12, simple_type, abstract_file_filter_1_code10, type, range(abstract_file_filter_1, 2456, 15, 72, 72)).
code(abstract_file_filter_1_code13, method_declaration, abstract_file_filter_1_code2, (body_declarations, 6), range(abstract_file_filter_1, 2914, 418, 89, 100)).
code(abstract_file_filter_1_code14, simple_type, abstract_file_filter_1_expr11, type, range(abstract_file_filter_1, 3309, 4, 99, 99)).
code(abstract_file_filter_1_code15, method_declaration, abstract_file_filter_1_code2, (body_declarations, 8), range(abstract_file_filter_1, 3584, 240, 111, 118)).
code(abstract_file_filter_1_code16, primitive_type, abstract_file_filter_1_expr12, type, range(abstract_file_filter_1, 3661, 3, 112, 112)).
code(abstract_file_filter_1_code17, variable_declaration_fragment, abstract_file_filter_1_expr12, (fragments, 0), range(abstract_file_filter_1, 3665, 5, 112, 112)).
code(abstract_file_filter_1_code18, method_declaration, abstract_file_filter_1_code2, (body_declarations, 9), range(abstract_file_filter_1, 3830, 194, 120, 126)).
code(abstract_file_filter_1_code19, method_declaration, abstract_file_filter_1_code2, (body_declarations, 13), range(abstract_file_filter_1, 4653, 258, 149, 157)).
code(abstract_file_filter_1_code20, method_declaration, abstract_file_filter_1_code2, (body_declarations, 14), range(abstract_file_filter_1, 4917, 212, 159, 167)).
%abstract_filter_test_1 - org.apache.commons.io.filefilter.AbstractFilterTest
code(abstract_filter_test_1_code1, compilation_unit, range(abstract_filter_test_1, 0, 9703, 1, -1)).
code(abstract_filter_test_1_code2, type_declaration, abstract_filter_test_1_code1, (types, 0), range(abstract_filter_test_1, 1244, 8458, 32, 182)).
code(abstract_filter_test_1_code3, method_declaration, abstract_filter_test_1_code2, (body_declarations, 3), range(abstract_filter_test_1, 1537, 1494, 47, 67)).
code(abstract_filter_test_1_code4, method_declaration, abstract_filter_test_1_code2, (body_declarations, 4), range(abstract_filter_test_1, 3037, 1516, 69, 88)).
%and_file_filter_1 - org.apache.commons.io.filefilter.AndFileFilter
code(and_file_filter_1_code1, compilation_unit, range(and_file_filter_1, 0, 6091, 1, -1)).
code(and_file_filter_1_code2, type_declaration, and_file_filter_1_code1, (types, 0), range(and_file_filter_1, 1153, 4937, 30, 203)).
code(and_file_filter_1_code3, method_declaration, and_file_filter_1_code2, (body_declarations, 3), range(and_file_filter_1, 2071, 280, 62, 69)).
code(and_file_filter_1_code4, modifier, and_file_filter_1_code3, (modifiers, 0), range(and_file_filter_1, 2200, 7, 67, 67)).
code(and_file_filter_1_code6, modifier, and_file_filter_1_code5, (modifiers, 0), range(and_file_filter_1, 2222, 5, 67, 67)).
code(and_file_filter_1_code5, single_variable_declaration, and_file_filter_1_code3, (parameters, 0), range(and_file_filter_1, 2222, 41, 67, 67)).
code(and_file_filter_1_code8, simple_type, and_file_filter_1_code7, type, range(and_file_filter_1, 2228, 9, 67, 67)).
code(and_file_filter_1_code7, parameterized_type, and_file_filter_1_code5, type, range(and_file_filter_1, 2228, 23, 67, 67)).
code(and_file_filter_1_code9, simple_type, and_file_filter_1_code7, (type_arguments, 0), range(and_file_filter_1, 2238, 12, 67, 67)).
code(and_file_filter_1_code10, method_declaration, and_file_filter_1_code2, (body_declarations, 4), range(and_file_filter_1, 2357, 245, 71, 78)).
code(and_file_filter_1_code12, simple_type, and_file_filter_1_code11, type, range(and_file_filter_1, 2566, 9, 77, 77)).
code(and_file_filter_1_code11, parameterized_type, and_file_filter_1_expr6, type, range(and_file_filter_1, 2566, 11, 77, 77)).
code(and_file_filter_1_code13, method_declaration, and_file_filter_1_code2, (body_declarations, 6), range(and_file_filter_1, 2925, 447, 91, 102)).
code(and_file_filter_1_code14, method_declaration, and_file_filter_1_code2, (body_declarations, 7), range(and_file_filter_1, 3378, 360, 104, 113)).
code(and_file_filter_1_code16, simple_type, and_file_filter_1_code15, type, range(and_file_filter_1, 3667, 9, 112, 112)).
code(and_file_filter_1_code15, parameterized_type, and_file_filter_1_expr11, type, range(and_file_filter_1, 3667, 11, 112, 112)).
code(and_file_filter_1_code17, method_declaration, and_file_filter_1_code2, (body_declarations, 11), range(and_file_filter_1, 4549, 195, 141, 147)).
%test_utils_1 - org.apache.commons.io.test.TestUtils
code(test_utils_1_code1, compilation_unit, range(test_utils_1, 0, 10323, 1, -1)).
code(test_utils_1_code2, type_declaration, test_utils_1_code1, (types, 0), range(test_utils_1, 1640, 8682, 43, 269)).
code(test_utils_1_code3, method_declaration, test_utils_1_code2, (body_declarations, 14), range(test_utils_1, 8645, 315, 219, 225)).
code(test_utils_1_code4, primitive_type, test_utils_1_expr1, type, range(test_utils_1, 8756, 3, 220, 220)).
code(test_utils_1_code5, variable_declaration_fragment, test_utils_1_expr1, (fragments, 0), range(test_utils_1, 8760, 5, 220, 220)).
code(test_utils_1_code6, primitive_type, test_utils_1_expr5, type, range(test_utils_1, 8923, 4, 223, 223)).
%filename_utils_1 - org.apache.commons.io.FilenameUtils
code(filename_utils_1_code1, compilation_unit, range(filename_utils_1, 0, 65815, 1, -1)).
code(filename_utils_1_code2, type_declaration, filename_utils_1_code1, (types, 0), range(filename_utils_1, 1111, 64703, 30, 1683)).
code(filename_utils_1_code4, modifier, filename_utils_1_code3, (modifiers, 0), range(filename_utils_1, 3664, 7, 100, 100)).
code(filename_utils_1_code3, field_declaration, filename_utils_1_code2, (body_declarations, 0), range(filename_utils_1, 3664, 54, 100, 100)).
code(filename_utils_1_code5, modifier, filename_utils_1_code3, (modifiers, 1), range(filename_utils_1, 3672, 6, 100, 100)).
code(filename_utils_1_code6, modifier, filename_utils_1_code3, (modifiers, 2), range(filename_utils_1, 3679, 5, 100, 100)).
code(filename_utils_1_code7, array_type, filename_utils_1_code3, type, range(filename_utils_1, 3685, 8, 100, 100)).
code(filename_utils_1_code8, simple_type, filename_utils_1_code7, element_type, range(filename_utils_1, 3685, 6, 100, 100)).
code(filename_utils_1_code9, dimension, filename_utils_1_code7, (dimensions, 0), range(filename_utils_1, 3691, 2, 100, 100)).
code(filename_utils_1_code10, variable_declaration_fragment, filename_utils_1_code3, (fragments, 0), range(filename_utils_1, 3694, 23, 100, 100)).
code(filename_utils_1_code11, field_declaration, filename_utils_1_code2, (body_declarations, 4), range(filename_utils_1, 3955, 166, 112, 116)).
code(filename_utils_1_code12, modifier, filename_utils_1_code11, (modifiers, 0), range(filename_utils_1, 4028, 6, 116, 116)).
code(filename_utils_1_code13, modifier, filename_utils_1_code11, (modifiers, 1), range(filename_utils_1, 4035, 6, 116, 116)).
code(filename_utils_1_code14, modifier, filename_utils_1_code11, (modifiers, 2), range(filename_utils_1, 4042, 5, 116, 116)).
code(filename_utils_1_code15, simple_type, filename_utils_1_code11, type, range(filename_utils_1, 4048, 6, 116, 116)).
code(filename_utils_1_code16, variable_declaration_fragment, filename_utils_1_code11, (fragments, 0), range(filename_utils_1, 4055, 65, 116, 116)).
code(filename_utils_1_code17, field_declaration, filename_utils_1_code2, (body_declarations, 7), range(filename_utils_1, 4356, 124, 128, 131)).
code(filename_utils_1_code18, modifier, filename_utils_1_code17, (modifiers, 0), range(filename_utils_1, 4411, 7, 131, 131)).
code(filename_utils_1_code19, modifier, filename_utils_1_code17, (modifiers, 1), range(filename_utils_1, 4419, 6, 131, 131)).
code(filename_utils_1_code20, modifier, filename_utils_1_code17, (modifiers, 2), range(filename_utils_1, 4426, 5, 131, 131)).
code(filename_utils_1_code21, primitive_type, filename_utils_1_code17, type, range(filename_utils_1, 4432, 4, 131, 131)).
code(filename_utils_1_code22, variable_declaration_fragment, filename_utils_1_code17, (fragments, 0), range(filename_utils_1, 4437, 42, 131, 131)).
code(filename_utils_1_code23, field_declaration, filename_utils_1_code2, (body_declarations, 8), range(filename_utils_1, 4486, 174, 133, 136)).
code(filename_utils_1_code24, modifier, filename_utils_1_code23, (modifiers, 0), range(filename_utils_1, 4579, 7, 136, 136)).
code(filename_utils_1_code25, modifier, filename_utils_1_code23, (modifiers, 1), range(filename_utils_1, 4587, 6, 136, 136)).
code(filename_utils_1_code26, modifier, filename_utils_1_code23, (modifiers, 2), range(filename_utils_1, 4594, 5, 136, 136)).
code(filename_utils_1_code27, primitive_type, filename_utils_1_code23, type, range(filename_utils_1, 4600, 4, 136, 136)).
code(filename_utils_1_code28, variable_declaration_fragment, filename_utils_1_code23, (fragments, 0), range(filename_utils_1, 4605, 54, 136, 136)).
code(filename_utils_1_code30, modifier, filename_utils_1_code29, (modifiers, 0), range(filename_utils_1, 4666, 7, 138, 138)).
code(filename_utils_1_code29, field_declaration, filename_utils_1_code2, (body_declarations, 9), range(filename_utils_1, 4666, 115, 138, 138)).
code(filename_utils_1_code31, modifier, filename_utils_1_code29, (modifiers, 1), range(filename_utils_1, 4674, 6, 138, 138)).
code(filename_utils_1_code32, modifier, filename_utils_1_code29, (modifiers, 2), range(filename_utils_1, 4681, 5, 138, 138)).
code(filename_utils_1_code33, simple_type, filename_utils_1_code29, type, range(filename_utils_1, 4687, 7, 138, 138)).
code(filename_utils_1_code34, variable_declaration_fragment, filename_utils_1_code29, (fragments, 0), range(filename_utils_1, 4695, 85, 138, 138)).
code(filename_utils_1_code36, modifier, filename_utils_1_code35, (modifiers, 0), range(filename_utils_1, 5068, 7, 150, 150)).
code(filename_utils_1_code35, field_declaration, filename_utils_1_code2, (body_declarations, 15), range(filename_utils_1, 5068, 99, 150, 150)).
code(filename_utils_1_code37, modifier, filename_utils_1_code35, (modifiers, 1), range(filename_utils_1, 5076, 6, 150, 150)).
code(filename_utils_1_code38, modifier, filename_utils_1_code35, (modifiers, 2), range(filename_utils_1, 5083, 5, 150, 150)).
code(filename_utils_1_code39, simple_type, filename_utils_1_code35, type, range(filename_utils_1, 5089, 7, 150, 150)).
code(filename_utils_1_code40, variable_declaration_fragment, filename_utils_1_code35, (fragments, 0), range(filename_utils_1, 5097, 69, 150, 150)).
code(filename_utils_1_code41, method_declaration, filename_utils_1_code2, (body_declarations, 26), range(filename_utils_1, 19145, 494, 518, 532)).
%file_filter_test_1 - org.apache.commons.io.filefilter.FileFilterTest
code(file_filter_test_1_code1, compilation_unit, range(file_filter_test_1, 0, 69425, 1, -1)).
code(file_filter_test_1_code2, type_declaration, file_filter_test_1_code1, (types, 0), range(file_filter_test_1, 2166, 67258, 56, 1459)).
code(file_filter_test_1_code3, modifier, file_filter_test_1_code2, (modifiers, 0), range(file_filter_test_1, 2207, 6, 59, 59)).
code(file_filter_test_1_code4, simple_type, file_filter_test_1_code2, superclass_type, range(file_filter_test_1, 2243, 18, 59, 59)).
code(file_filter_test_1_code5, method_declaration, file_filter_test_1_code2, (body_declarations, 5), range(file_filter_test_1, 10468, 1515, 219, 243)).
code(file_filter_test_1_code6, modifier, file_filter_test_1_stmt1, (modifiers, 0), range(file_filter_test_1, 10531, 5, 221, 221)).
code(file_filter_test_1_code7, simple_type, file_filter_test_1_stmt1, type, range(file_filter_test_1, 10537, 4, 221, 221)).
code(file_filter_test_1_code8, variable_declaration_fragment, file_filter_test_1_stmt1, (fragments, 0), range(file_filter_test_1, 10542, 63, 221, 221)).
code(file_filter_test_1_code9, simple_type, file_filter_test_1_expr1, type, range(file_filter_test_1, 10561, 4, 221, 221)).
code(file_filter_test_1_code10, modifier, file_filter_test_1_stmt2, (modifiers, 0), range(file_filter_test_1, 10615, 5, 222, 222)).
code(file_filter_test_1_code11, simple_type, file_filter_test_1_stmt2, type, range(file_filter_test_1, 10621, 4, 222, 222)).
code(file_filter_test_1_code12, variable_declaration_fragment, file_filter_test_1_stmt2, (fragments, 0), range(file_filter_test_1, 10626, 36, 222, 222)).
code(file_filter_test_1_code13, simple_type, file_filter_test_1_expr6, type, range(file_filter_test_1, 10841, 20, 226, 226)).
code(file_filter_test_1_code14, variable_declaration_fragment, file_filter_test_1_expr6, (fragments, 0), range(file_filter_test_1, 10862, 79, 226, 226)).
code(file_filter_test_1_code15, simple_type, file_filter_test_1_expr7, type, range(file_filter_test_1, 10875, 20, 226, 226)).
code(file_filter_test_1_code16, simple_type, file_filter_test_1_expr15, type, range(file_filter_test_1, 11181, 4, 231, 231)).
code(file_filter_test_1_code17, method_declaration, file_filter_test_1_code2, (body_declarations, 6), range(file_filter_test_1, 11989, 1396, 245, 267)).
code(file_filter_test_1_code18, modifier, file_filter_test_1_stmt9, (modifiers, 0), range(file_filter_test_1, 12053, 5, 247, 247)).
code(file_filter_test_1_code19, simple_type, file_filter_test_1_stmt9, type, range(file_filter_test_1, 12059, 4, 247, 247)).
code(file_filter_test_1_code20, variable_declaration_fragment, file_filter_test_1_stmt9, (fragments, 0), range(file_filter_test_1, 12064, 63, 247, 247)).
code(file_filter_test_1_code21, simple_type, file_filter_test_1_expr16, type, range(file_filter_test_1, 12083, 4, 247, 247)).
code(file_filter_test_1_code22, modifier, file_filter_test_1_stmt10, (modifiers, 0), range(file_filter_test_1, 12137, 5, 248, 248)).
code(file_filter_test_1_code23, simple_type, file_filter_test_1_stmt10, type, range(file_filter_test_1, 12143, 4, 248, 248)).
code(file_filter_test_1_code24, variable_declaration_fragment, file_filter_test_1_stmt10, (fragments, 0), range(file_filter_test_1, 12148, 36, 248, 248)).
code(file_filter_test_1_code25, simple_type, file_filter_test_1_expr21, type, range(file_filter_test_1, 12363, 20, 252, 252)).
code(file_filter_test_1_code26, variable_declaration_fragment, file_filter_test_1_expr21, (fragments, 0), range(file_filter_test_1, 12384, 79, 252, 252)).
code(file_filter_test_1_code27, simple_type, file_filter_test_1_expr22, type, range(file_filter_test_1, 12397, 20, 252, 252)).
code(file_filter_test_1_code28, simple_type, file_filter_test_1_expr31, type, range(file_filter_test_1, 12786, 4, 258, 258)).
code(file_filter_test_1_code29, method_declaration, file_filter_test_1_code2, (body_declarations, 11), range(file_filter_test_1, 19882, 2696, 399, 449)).
code(file_filter_test_1_code30, modifier, file_filter_test_1_stmt18, (modifiers, 0), range(file_filter_test_1, 19965, 5, 403, 403)).
code(file_filter_test_1_code31, simple_type, file_filter_test_1_stmt18, type, range(file_filter_test_1, 19971, 4, 403, 403)).
code(file_filter_test_1_code32, variable_declaration_fragment, file_filter_test_1_stmt18, (fragments, 0), range(file_filter_test_1, 19976, 53, 403, 403)).
code(file_filter_test_1_code33, simple_type, file_filter_test_1_expr32, type, range(file_filter_test_1, 19995, 4, 403, 403)).
code(file_filter_test_1_code34, modifier, file_filter_test_1_stmt19, (modifiers, 0), range(file_filter_test_1, 20039, 5, 404, 404)).
code(file_filter_test_1_code35, simple_type, file_filter_test_1_stmt19, type, range(file_filter_test_1, 20045, 4, 404, 404)).
code(file_filter_test_1_code36, variable_declaration_fragment, file_filter_test_1_stmt19, (fragments, 0), range(file_filter_test_1, 20050, 36, 404, 404)).
code(file_filter_test_1_code37, simple_type, file_filter_test_1_expr38, type, range(file_filter_test_1, 20303, 4, 408, 408)).
code(file_filter_test_1_code38, method_declaration, file_filter_test_1_code2, (body_declarations, 17), range(file_filter_test_1, 24983, 1075, 498, 519)).
code(file_filter_test_1_code39, modifier, file_filter_test_1_stmt24, (modifiers, 0), range(file_filter_test_1, 25145, 5, 501, 501)).
code(file_filter_test_1_code40, simple_type, file_filter_test_1_stmt24, type, range(file_filter_test_1, 25151, 12, 501, 501)).
code(file_filter_test_1_code41, variable_declaration_fragment, file_filter_test_1_stmt24, (fragments, 0), range(file_filter_test_1, 25164, 32, 501, 501)).
code(file_filter_test_1_code42, simple_type, file_filter_test_1_expr40, type, range(file_filter_test_1, 25232, 4, 503, 503)).
code(file_filter_test_1_code43, method_declaration, file_filter_test_1_code2, (body_declarations, 30), range(file_filter_test_1, 34293, 1077, 725, 742)).
code(file_filter_test_1_code44, modifier, file_filter_test_1_stmt26, (modifiers, 0), range(file_filter_test_1, 34357, 5, 727, 727)).
code(file_filter_test_1_code45, simple_type, file_filter_test_1_stmt26, type, range(file_filter_test_1, 34363, 4, 727, 727)).
code(file_filter_test_1_code46, variable_declaration_fragment, file_filter_test_1_stmt26, (fragments, 0), range(file_filter_test_1, 34368, 38, 727, 727)).
code(file_filter_test_1_code47, simple_type, file_filter_test_1_expr41, type, range(file_filter_test_1, 34388, 4, 727, 727)).
code(file_filter_test_1_code48, modifier, file_filter_test_1_stmt27, (modifiers, 0), range(file_filter_test_1, 34416, 5, 728, 728)).
code(file_filter_test_1_code49, simple_type, file_filter_test_1_stmt27, type, range(file_filter_test_1, 34422, 4, 728, 728)).
code(file_filter_test_1_code50, variable_declaration_fragment, file_filter_test_1_stmt27, (fragments, 0), range(file_filter_test_1, 34427, 38, 728, 728)).
code(file_filter_test_1_code51, modifier, file_filter_test_1_stmt29, (modifiers, 0), range(file_filter_test_1, 34907, 5, 735, 735)).
code(file_filter_test_1_code52, simple_type, file_filter_test_1_stmt29, type, range(file_filter_test_1, 34913, 4, 735, 735)).
code(file_filter_test_1_code53, variable_declaration_fragment, file_filter_test_1_stmt29, (fragments, 0), range(file_filter_test_1, 34918, 31, 735, 735)).
code(file_filter_test_1_code54, simple_type, file_filter_test_1_expr48, type, range(file_filter_test_1, 35138, 4, 738, 738)).
code(file_filter_test_1_code55, method_declaration, file_filter_test_1_code2, (body_declarations, 40), range(file_filter_test_1, 49140, 286, 1062, 1068)).
code(file_filter_test_1_code56, modifier, file_filter_test_1_stmt33, (modifiers, 0), range(file_filter_test_1, 49208, 5, 1064, 1064)).
code(file_filter_test_1_code57, simple_type, file_filter_test_1_stmt33, type, range(file_filter_test_1, 49214, 14, 1064, 1064)).
code(file_filter_test_1_code58, variable_declaration_fragment, file_filter_test_1_stmt33, (fragments, 0), range(file_filter_test_1, 49229, 41, 1064, 1064)).
code(file_filter_test_1_code59, simple_type, file_filter_test_1_expr49, type, range(file_filter_test_1, 49242, 14, 1064, 1064)).
code(file_filter_test_1_code60, simple_type, file_filter_test_1_expr52, type, range(file_filter_test_1, 49348, 4, 1066, 1066)).
%iofile_filter_1 - org.apache.commons.io.filefilter.IOFileFilter
code(iofile_filter_1_code1, compilation_unit, range(iofile_filter_1, 0, 3612, 1, -1)).
code(iofile_filter_1_code2, type_declaration, iofile_filter_1_code1, (types, 0), range(iofile_filter_1, 1124, 2487, 29, 122)).
code(iofile_filter_1_code3, field_declaration, iofile_filter_1_code2, (body_declarations, 0), range(iofile_filter_1, 1343, 79, 36, 39)).
code(iofile_filter_1_code5, simple_type, iofile_filter_1_code4, element_type, range(iofile_filter_1, 1389, 6, 39, 39)).
code(iofile_filter_1_code4, array_type, iofile_filter_1_code3, type, range(iofile_filter_1, 1389, 8, 39, 39)).
code(iofile_filter_1_code6, dimension, iofile_filter_1_code4, (dimensions, 0), range(iofile_filter_1, 1395, 2, 39, 39)).
code(iofile_filter_1_code7, variable_declaration_fragment, iofile_filter_1_code3, (fragments, 0), range(iofile_filter_1, 1398, 23, 39, 39)).
code(iofile_filter_1_code8, method_declaration, iofile_filter_1_code2, (body_declarations, 4), range(iofile_filter_1, 2497, 288, 78, 87)).
code(iofile_filter_1_code9, simple_type, iofile_filter_1_expr2, type, range(iofile_filter_1, 2747, 13, 86, 86)).
code(iofile_filter_1_code10, method_declaration, iofile_filter_1_code2, (body_declarations, 5), range(iofile_filter_1, 2791, 317, 89, 99)).
code(iofile_filter_1_code11, method_declaration, iofile_filter_1_code2, (body_declarations, 6), range(iofile_filter_1, 3114, 204, 101, 109)).
code(iofile_filter_1_code12, simple_type, iofile_filter_1_expr6, type, range(iofile_filter_1, 3292, 13, 108, 108)).

%%% Name References

name_ref(t_can_read_file_filter_23, type, 'CanReadFileFilter', 'Lorg/apache/commons/io/filefilter/CanReadFileFilter;').
name_ref(t_can_write_file_filter_19, type, 'CanWriteFileFilter', 'Lorg/apache/commons/io/filefilter/CanWriteFileFilter;').
name_ref(t_character_7, type, 'Character', 'Ljava/lang/Character;').
name_ref(t_collectors_29, type, 'Collectors', 'Ljava/util/stream/Collectors;').
name_ref(t_directory_file_filter_27, type, 'DirectoryFileFilter', 'Lorg/apache/commons/io/filefilter/DirectoryFileFilter;').
name_ref(t_empty_file_filter_24, type, 'EmptyFileFilter', 'Lorg/apache/commons/io/filefilter/EmptyFileFilter;').
name_ref(t_file_8, type, 'File', 'Ljava/io/File;').
name_ref(t_file_file_filter_25, type, 'FileFileFilter', 'Lorg/apache/commons/io/filefilter/FileFileFilter;').
name_ref(t_file_filter_test_21, type, 'FileFilterTest', 'Lorg/apache/commons/io/filefilter/FileFilterTest;').
name_ref(t_file_system_1, type, 'FileSystem', 'Lorg/apache/commons/io/FileSystem;').
name_ref(t_file_visit_result_18, type, 'FileVisitResult', 'Ljava/nio/file/FileVisitResult;').
name_ref(t_filename_utils_6, type, 'FilenameUtils', 'Lorg/apache/commons/io/FilenameUtils;').
name_ref(t_files_20, type, 'Files', 'Ljava/nio/file/Files;').
name_ref(t_hidden_file_filter_26, type, 'HiddenFileFilter', 'Lorg/apache/commons/io/filefilter/HiddenFileFilter;').
name_ref(t_integer_2, type, 'Integer', 'Ljava/lang/Integer;').
name_ref(t_iocase_10, type, 'IOCase', 'Lorg/apache/commons/io/IOCase;').
name_ref(t_iocase_test_11, type, 'IOCaseTest', 'Lorg/apache/commons/io/IOCaseTest;').
name_ref(t_ioutils_14, type, 'IOUtils', 'Lorg/apache/commons/io/IOUtils;').
name_ref(t_link_option_16, type, 'LinkOption', 'Ljava/nio/file/LinkOption;').
name_ref(t_locale_4, type, 'Locale', 'Ljava/util/Locale;').
name_ref(t_objects_5, type, 'Objects', 'Ljava/util/Objects;').
name_ref(t_path_17, type, 'Path', 'Ljava/nio/file/Path;').
name_ref(t_path_utils_30, type, 'PathUtils', 'Lorg/apache/commons/io/file/PathUtils;').
name_ref(t_pattern_9, type, 'Pattern', 'Ljava/util/regex/Pattern;').
name_ref(t_standard_line_separator_12, type, 'StandardLineSeparator', 'Lorg/apache/commons/io/StandardLineSeparator;').
name_ref(t_standard_open_option_15, type, 'StandardOpenOption', 'Ljava/nio/file/StandardOpenOption;').
name_ref(t_stream_28, type, 'Stream', 'Ljava/util/stream/Stream<>;').
name_ref(t_system_3, type, 'System', 'Ljava/lang/System;').
name_ref(t_test_utils_22, type, 'TestUtils', 'Lorg/apache/commons/io/test/TestUtils;').
name_ref(t_thread_local_13, type, 'ThreadLocal', 'Ljava/lang/ThreadLocal<>;').
name_ref(v_read_only_file_799, var, 'readOnlyFile', 'file_filter_test_1;readOnlyFile_line_226').
name_ref(v_read_only_file_803, var, 'readOnlyFile', 'file_filter_test_1;readOnlyFile_line_252').
name_ref(p_file_791, param, 'file', 'empty_file_filter_1;file_line_125').
name_ref(p_file_filters_761, param, 'fileFilters', 'and_file_filter_1;fileFilters_line_112').
name_ref(p_initial_capacity_757, param, 'initialCapacity', 'and_file_filter_1;initialCapacity_line_77').
name_ref(p_name_893, param, 'name', 'name_file_filter_1;name_line_115').
name_ref(p_names_888, param, 'names', 'name_file_filter_1;names_line_91').
name_ref(p_names_894, param, 'names', 'name_file_filter_1;names_line_129').
name_ref(f_continue_720, field, 'CONTINUE', 'abstract_file_filter_1;CONTINUE_line_62').
name_ref(f_sensitive_125, field, 'SENSITIVE', 'name_file_filter_1;SENSITIVE_line_115').
name_ref(f_terminate_721, field, 'TERMINATE', 'abstract_file_filter_1;TERMINATE_line_62').
name_ref(v_buffer_907, var, 'buffer', 'Lorg/apache/commons/io/filefilter/NameFileFilter;.toString()Ljava/lang/String;#buffer').
name_ref(v_empty_dir_file_806, var, 'emptyDirFile', 'Lorg/apache/commons/io/filefilter/FileFilterTest;.testEmpty()V|Ljava/lang/Exception;#emptyDirFile').
name_ref(v_empty_dir_path_807, var, 'emptyDirPath', 'Lorg/apache/commons/io/filefilter/FileFilterTest;.testEmpty()V|Ljava/lang/Exception;#emptyDirPath').
name_ref(v_expected_file_visit_result_751, var, 'expectedFileVisitResult', 'Lorg/apache/commons/io/filefilter/AbstractFilterTest;.assertFiltering(Lorg/apache/commons/io/filefilter/IOFileFilter;Ljava/nio/file/Path;Z)V#expectedFileVisitResult').
name_ref(v_file_name_586, var, 'fileName', 'Lorg/apache/commons/io/file/PathUtils;.getFileName<R:Ljava/lang/Object;>(Ljava/nio/file/Path;Ljava/util/function/Function<Ljava/nio/file/Path;TR;>;)TR;#fileName').
name_ref(v_files_790, var, 'files', 'Lorg/apache/commons/io/filefilter/EmptyFileFilter;.accept(Ljava/io/File;)Z#0#files').
name_ref(v_filter_808, var, 'filter', 'Lorg/apache/commons/io/filefilter/FileFilterTest;.testFiles()V|Ljava/io/IOException;#filter').
name_ref(v_filter_813, var, 'filter', 'Lorg/apache/commons/io/filefilter/FileFilterTest;.testNameFilter()V|Ljava/io/IOException;#filter').
name_ref(v_hidden_dir_file_809, var, 'hiddenDirFile', 'Lorg/apache/commons/io/filefilter/FileFilterTest;.testHidden()V|Ljava/io/IOException;#hiddenDirFile').
name_ref(v_hidden_dir_path_811, var, 'hiddenDirPath', 'Lorg/apache/commons/io/filefilter/FileFilterTest;.testHidden()V|Ljava/io/IOException;#hiddenDirPath').
name_ref(v_i_733, var, 'i', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.append([Ljava/lang/Object;Ljava/lang/StringBuilder;)V#0#i').
name_ref(v_i_942, var, 'i', 'Lorg/apache/commons/io/test/TestUtils;.generateTestData(Ljava/io/OutputStream;J)V|Ljava/io/IOException;#0#i').
name_ref(v_output_802, var, 'output', 'Lorg/apache/commons/io/filefilter/FileFilterTest;.testCanRead()V|Ljava/lang/Exception;#0#0#output').
name_ref(v_output_805, var, 'output', 'Lorg/apache/commons/io/filefilter/FileFilterTest;.testCanWrite()V|Ljava/lang/Exception;#0#0#output').
name_ref(v_path_812, var, 'path', 'Lorg/apache/commons/io/filefilter/FileFilterTest;.testHidden()V|Ljava/io/IOException;#path').
name_ref(v_read_only_file_799, var, 'readOnlyFile', 'Lorg/apache/commons/io/filefilter/FileFilterTest;.testCanRead()V|Ljava/lang/Exception;#readOnlyFile').
name_ref(v_read_only_file_803, var, 'readOnlyFile', 'Lorg/apache/commons/io/filefilter/FileFilterTest;.testCanWrite()V|Ljava/lang/Exception;#readOnlyFile').
name_ref(v_read_only_path_801, var, 'readOnlyPath', 'Lorg/apache/commons/io/filefilter/FileFilterTest;.testCanRead()V|Ljava/lang/Exception;#readOnlyPath').
name_ref(v_read_only_path_804, var, 'readOnlyPath', 'Lorg/apache/commons/io/filefilter/FileFilterTest;.testCanWrite()V|Ljava/lang/Exception;#readOnlyPath').
name_ref(v_stream_793, var, 'stream', 'Lorg/apache/commons/io/filefilter/EmptyFileFilter;.lambda$0()Ljava/nio/file/FileVisitResult;|Ljava/io/IOException;#0#0#stream').
name_ref(p_accept_719, param, 'accept', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.toDefaultFileVisitResult(Z)Ljava/nio/file/FileVisitResult;#accept#0#0').
name_ref(p_accept_740, param, 'accept', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.toFileVisitResult(Z)Ljava/nio/file/FileVisitResult;#accept#0#0').
name_ref(p_accept_915, param, 'accept', 'Lorg/apache/commons/io/filefilter/NotFileFilter;.not(Ljava/nio/file/FileVisitResult;)Ljava/nio/file/FileVisitResult;#accept#0#0').
name_ref(p_accept_larger_867, param, 'acceptLarger', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.sizeFileFilter(JZ)Lorg/apache/commons/io/filefilter/IOFileFilter;#acceptLarger#0#1').
name_ref(p_accept_older_818, param, 'acceptOlder', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.ageFileFilter(Ljava/util/Date;Z)Lorg/apache/commons/io/filefilter/IOFileFilter;#acceptOlder#0#1').
name_ref(p_accept_older_821, param, 'acceptOlder', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.ageFileFilter(Ljava/io/File;Z)Lorg/apache/commons/io/filefilter/IOFileFilter;#acceptOlder#0#1').
name_ref(p_accept_older_824, param, 'acceptOlder', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.ageFileFilter(JZ)Lorg/apache/commons/io/filefilter/IOFileFilter;#acceptOlder#0#1').
name_ref(p_add_permissions_677, param, 'addPermissions', 'Lorg/apache/commons/io/file/PathUtils;.setPosixPermissions(Ljava/nio/file/Path;ZLjava/util/List<Ljava/nio/file/attribute/PosixFilePermission;>;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#addPermissions#0#1').
name_ref(p_append_638, param, 'append', 'Lorg/apache/commons/io/file/PathUtils;.newOutputStream(Ljava/nio/file/Path;Z)Ljava/io/OutputStream;|Ljava/io/IOException;#append#0#1').
name_ref(p_appendable_481, param, 'appendable', 'Lorg/apache/commons/io/IOUtils;.writer(Ljava/lang/Appendable;)Ljava/io/Writer;#appendable#0#0').
name_ref(p_arr_151, param, 'arr', 'Lorg/apache/commons/io/IOCaseTest;.assert0([B)V#arr#0#0').
name_ref(p_arr_152, param, 'arr', 'Lorg/apache/commons/io/IOCaseTest;.assert0([C)V#arr#0#0').
name_ref(p_arr_274, param, 'arr', 'Lorg/apache/commons/io/IOUtils;.fill0([B)[B#arr#0#0').
name_ref(p_arr_275, param, 'arr', 'Lorg/apache/commons/io/IOUtils;.fill0([C)[C#arr#0#0').
name_ref(p_array_276, param, 'array', 'Lorg/apache/commons/io/IOUtils;.length([B)I#array#0#0').
name_ref(p_array_277, param, 'array', 'Lorg/apache/commons/io/IOUtils;.length([C)I#array#0#0').
name_ref(p_array_279, param, 'array', 'Lorg/apache/commons/io/IOUtils;.length([Ljava/lang/Object;)I#array#0#0').
name_ref(p_array_731, param, 'array', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.append([Ljava/lang/Object;Ljava/lang/StringBuilder;)V#array#0#0').
name_ref(p_attributes_739, param, 'attributes', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.preVisitDirectory(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;|Ljava/io/IOException;#attributes#0#1').
name_ref(p_attributes_742, param, 'attributes', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.visitFile(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;|Ljava/io/IOException;#attributes#0#1').
name_ref(p_attributes_766, param, 'attributes', 'Lorg/apache/commons/io/filefilter/AndFileFilter;.accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;#attributes#0#1').
name_ref(p_attributes_776, param, 'attributes', 'Lorg/apache/commons/io/filefilter/CanReadFileFilter;.accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;#attributes#0#1').
name_ref(p_attributes_781, param, 'attributes', 'Lorg/apache/commons/io/filefilter/CanWriteFileFilter;.accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;#attributes#0#1').
name_ref(p_attributes_786, param, 'attributes', 'Lorg/apache/commons/io/filefilter/DirectoryFileFilter;.accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;#attributes#0#1').
name_ref(p_attributes_792, param, 'attributes', 'Lorg/apache/commons/io/filefilter/EmptyFileFilter;.accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;#attributes#0#1').
name_ref(p_attributes_798, param, 'attributes', 'Lorg/apache/commons/io/filefilter/FileFileFilter;.accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;#attributes#0#1').
name_ref(p_attributes_878, param, 'attributes', 'Lorg/apache/commons/io/filefilter/HiddenFileFilter;.accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;#attributes#0#1').
name_ref(p_attributes_884, param, 'attributes', 'Lorg/apache/commons/io/filefilter/IOFileFilter;.accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;#attributes#0#1').
name_ref(p_attributes_903, param, 'attributes', 'Lorg/apache/commons/io/filefilter/NameFileFilter;.accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;#attributes#0#1').
name_ref(p_attributes_914, param, 'attributes', 'Lorg/apache/commons/io/filefilter/NotFileFilter;.accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;#attributes#0#1').
name_ref(p_attrs_529, param, 'attrs', 'Lorg/apache/commons/io/file/PathUtils;.createParentDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute<*>;)Ljava/nio/file/Path;|Ljava/io/IOException;#attrs#0#1').
name_ref(p_attrs_532, param, 'attrs', 'Lorg/apache/commons/io/file/PathUtils;.createParentDirectories(Ljava/nio/file/Path;Ljava/nio/file/LinkOption;[Ljava/nio/file/attribute/FileAttribute<*>;)Ljava/nio/file/Path;|Ljava/io/IOException;#attrs#0#2').
name_ref(p_b_0_916, param, 'b0', 'Lorg/apache/commons/io/test/TestUtils;.assertEqualContent([BLjava/io/File;)V|Ljava/io/IOException;#b0#0#0').
name_ref(p_b_0_918, param, 'b0', 'Lorg/apache/commons/io/test/TestUtils;.assertEqualContent([BLjava/nio/file/Path;)V|Ljava/io/IOException;#b0#0#0').
name_ref(p_base_name_904, param, 'baseName', 'Lorg/apache/commons/io/filefilter/NameFileFilter;.acceptBaseName(Ljava/lang/String;)Z#baseName#0#0').
name_ref(p_base_path_55, param, 'basePath', 'Lorg/apache/commons/io/FilenameUtils;.concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#basePath#0#0').
name_ref(p_block_size_20, param, 'blockSize', 'Lorg/apache/commons/io/FileSystem;.(Ljava/lang/String;IIZZII[I[Ljava/lang/String;ZZC)V#blockSize#0#0').
name_ref(p_buffer_231, param, 'buffer', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/Reader;Ljava/lang/Appendable;Ljava/nio/CharBuffer;)J|Ljava/io/IOException;#buffer#0#2').
name_ref(p_buffer_250, param, 'buffer', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;[B)J|Ljava/io/IOException;#buffer#0#2').
name_ref(p_buffer_259, param, 'buffer', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;JJ[B)J|Ljava/io/IOException;#buffer#0#4').
name_ref(p_buffer_264, param, 'buffer', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/Reader;Ljava/io/Writer;[C)J|Ljava/io/IOException;#buffer#0#2').
name_ref(p_buffer_273, param, 'buffer', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/Reader;Ljava/io/Writer;JJ[C)J|Ljava/io/IOException;#buffer#0#4').
name_ref(p_buffer_286, param, 'buffer', 'Lorg/apache/commons/io/IOUtils;.read(Ljava/io/InputStream;[B)I|Ljava/io/IOException;#buffer#0#1').
name_ref(p_buffer_288, param, 'buffer', 'Lorg/apache/commons/io/IOUtils;.read(Ljava/io/InputStream;[BII)I|Ljava/io/IOException;#buffer#0#1').
name_ref(p_buffer_292, param, 'buffer', 'Lorg/apache/commons/io/IOUtils;.read(Lorg/apache/commons/io/function/IOTriFunction<[BLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;>;[BII)I|Ljava/io/IOException;#buffer#0#1').
name_ref(p_buffer_296, param, 'buffer', 'Lorg/apache/commons/io/IOUtils;.read(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)I|Ljava/io/IOException;#buffer#0#1').
name_ref(p_buffer_298, param, 'buffer', 'Lorg/apache/commons/io/IOUtils;.read(Ljava/io/Reader;[C)I|Ljava/io/IOException;#buffer#0#1').
name_ref(p_buffer_300, param, 'buffer', 'Lorg/apache/commons/io/IOUtils;.read(Ljava/io/Reader;[CII)I|Ljava/io/IOException;#buffer#0#1').
name_ref(p_buffer_304, param, 'buffer', 'Lorg/apache/commons/io/IOUtils;.readFully(Ljava/io/InputStream;[B)V|Ljava/io/IOException;#buffer#0#1').
name_ref(p_buffer_306, param, 'buffer', 'Lorg/apache/commons/io/IOUtils;.readFully(Ljava/io/InputStream;[BII)V|Ljava/io/IOException;#buffer#0#1').
name_ref(p_buffer_312, param, 'buffer', 'Lorg/apache/commons/io/IOUtils;.readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V|Ljava/io/IOException;#buffer#0#1').
name_ref(p_buffer_314, param, 'buffer', 'Lorg/apache/commons/io/IOUtils;.readFully(Ljava/io/Reader;[C)V|Ljava/io/IOException;#buffer#0#1').
name_ref(p_buffer_316, param, 'buffer', 'Lorg/apache/commons/io/IOUtils;.readFully(Ljava/io/Reader;[CII)V|Ljava/io/IOException;#buffer#0#1').
name_ref(p_buffer_730, param, 'buffer', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.append(Ljava/util/List<*>;Ljava/lang/StringBuilder;)V#buffer#0#1').
name_ref(p_buffer_732, param, 'buffer', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.append([Ljava/lang/Object;Ljava/lang/StringBuilder;)V#buffer#0#1').
name_ref(p_buffer_size_217, param, 'bufferSize', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)J|Ljava/io/IOException;#bufferSize#0#2').
name_ref(p_c_0_920, param, 'c0', 'Lorg/apache/commons/io/test/TestUtils;.assertEqualContent([CLjava/io/File;)V|Ljava/io/IOException;#c0#0#0').
name_ref(p_c_0_922, param, 'c0', 'Lorg/apache/commons/io/test/TestUtils;.assertEqualContent([CLjava/nio/file/Path;)V|Ljava/io/IOException;#c0#0#0').
name_ref(p_c_41, param, 'c', 'Lorg/apache/commons/io/FileSystem;.isIllegalFileNameChar(I)Z#c#0#0').
name_ref(p_candidate_42, param, 'candidate', 'Lorg/apache/commons/io/FileSystem;.isLegalFileName(Ljava/lang/CharSequence;)Z#candidate#0#0').
name_ref(p_candidate_43, param, 'candidate', 'Lorg/apache/commons/io/FileSystem;.isReservedFileName(Ljava/lang/CharSequence;)Z#candidate#0#0').
name_ref(p_candidate_45, param, 'candidate', 'Lorg/apache/commons/io/FileSystem;.toLegalFileName(Ljava/lang/String;C)Ljava/lang/String;#candidate#0#0').
name_ref(p_canonical_child_58, param, 'canonicalChild', 'Lorg/apache/commons/io/FilenameUtils;.directoryContains(Ljava/lang/String;Ljava/lang/String;)Z#canonicalChild#0#1').
name_ref(p_canonical_parent_57, param, 'canonicalParent', 'Lorg/apache/commons/io/FilenameUtils;.directoryContains(Ljava/lang/String;Ljava/lang/String;)Z#canonicalParent#0#0').
name_ref(p_case_preserving_22, param, 'casePreserving', 'Lorg/apache/commons/io/FileSystem;.(Ljava/lang/String;IIZZII[I[Ljava/lang/String;ZZC)V#casePreserving#0#2').
name_ref(p_case_sensitive_21, param, 'caseSensitive', 'Lorg/apache/commons/io/FileSystem;.(Ljava/lang/String;IIZZII[I[Ljava/lang/String;ZZC)V#caseSensitive#0#1').
name_ref(p_ch_103, param, 'ch', 'Lorg/apache/commons/io/FilenameUtils;.isSeparator(C)Z#ch#0#0').
name_ref(p_ch_78, param, 'ch', 'Lorg/apache/commons/io/FilenameUtils;.flipSeparator(C)C#ch#0#0').
name_ref(p_char_sequence_716, param, 'charSequence', 'Lorg/apache/commons/io/file/PathUtils;.writeString(Ljava/nio/file/Path;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#charSequence#0#1').
name_ref(p_charset_281, param, 'charset', 'Lorg/apache/commons/io/IOUtils;.lineIterator(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lorg/apache/commons/io/LineIterator;#charset#0#1').
name_ref(p_charset_321, param, 'charset', 'Lorg/apache/commons/io/IOUtils;.readLines(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/util/List<Ljava/lang/String;>;|Ljava/io/UncheckedIOException;#charset#0#1').
name_ref(p_charset_329, param, 'charset', 'Lorg/apache/commons/io/IOUtils;.resourceToString(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;|Ljava/io/IOException;#charset#0#1').
name_ref(p_charset_331, param, 'charset', 'Lorg/apache/commons/io/IOUtils;.resourceToString(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/ClassLoader;)Ljava/lang/String;|Ljava/io/IOException;#charset#0#1').
name_ref(p_charset_369, param, 'charset', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/io/Reader;Ljava/nio/charset/Charset;)[B|Ljava/io/IOException;#charset#0#1').
name_ref(p_charset_378, param, 'charset', 'Lorg/apache/commons/io/IOUtils;.toCharArray(Ljava/io/InputStream;Ljava/nio/charset/Charset;)[C|Ljava/io/IOException;#charset#0#1').
name_ref(p_charset_384, param, 'charset', 'Lorg/apache/commons/io/IOUtils;.toInputStream(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Ljava/io/InputStream;#charset#0#1').
name_ref(p_charset_389, param, 'charset', 'Lorg/apache/commons/io/IOUtils;.toInputStream(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/io/InputStream;#charset#0#1').
name_ref(p_charset_397, param, 'charset', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;|Ljava/io/IOException;#charset#0#1').
name_ref(p_charset_401, param, 'charset', 'Lorg/apache/commons/io/IOUtils;.toString(Lorg/apache/commons/io/function/IOSupplier<Ljava/io/InputStream;>;Ljava/nio/charset/Charset;)Ljava/lang/String;|Ljava/io/IOException;#charset#0#1').
name_ref(p_charset_403, param, 'charset', 'Lorg/apache/commons/io/IOUtils;.toString(Lorg/apache/commons/io/function/IOSupplier<Ljava/io/InputStream;>;Ljava/nio/charset/Charset;Lorg/apache/commons/io/function/IOSupplier<Ljava/lang/String;>;)Ljava/lang/String;|Ljava/io/IOException;#charset#0#1').
name_ref(p_charset_422, param, 'charset', 'Lorg/apache/commons/io/IOUtils;.write([BLjava/io/Writer;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#charset#0#2').
name_ref(p_charset_430, param, 'charset', 'Lorg/apache/commons/io/IOUtils;.write([CLjava/io/OutputStream;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#charset#0#2').
name_ref(p_charset_440, param, 'charset', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/CharSequence;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#charset#0#2').
name_ref(p_charset_450, param, 'charset', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#charset#0#2').
name_ref(p_charset_473, param, 'charset', 'Lorg/apache/commons/io/IOUtils;.writeLines(Ljava/util/Collection<*>;Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#charset#0#3').
name_ref(p_charset_485, param, 'charset', 'Lorg/apache/commons/io/StandardLineSeparator;.getBytes(Ljava/nio/charset/Charset;)[B#charset#0#0').
name_ref(p_charset_660, param, 'charset', 'Lorg/apache/commons/io/file/PathUtils;.readString(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/lang/String;|Ljava/io/IOException;#charset#0#1').
name_ref(p_charset_717, param, 'charset', 'Lorg/apache/commons/io/file/PathUtils;.writeString(Ljava/nio/file/Path;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#charset#0#2').
name_ref(p_charset_name_283, param, 'charsetName', 'Lorg/apache/commons/io/IOUtils;.lineIterator(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/commons/io/LineIterator;#charsetName#0#1').
name_ref(p_charset_name_323, param, 'charsetName', 'Lorg/apache/commons/io/IOUtils;.readLines(Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/List<Ljava/lang/String;>;|Ljava/io/UncheckedIOException;#charsetName#0#1').
name_ref(p_charset_name_371, param, 'charsetName', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/io/Reader;Ljava/lang/String;)[B|Ljava/io/IOException;#charsetName#0#1').
name_ref(p_charset_name_380, param, 'charsetName', 'Lorg/apache/commons/io/IOUtils;.toCharArray(Ljava/io/InputStream;Ljava/lang/String;)[C|Ljava/io/IOException;#charsetName#0#1').
name_ref(p_charset_name_386, param, 'charsetName', 'Lorg/apache/commons/io/IOUtils;.toInputStream(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/io/InputStream;#charsetName#0#1').
name_ref(p_charset_name_391, param, 'charsetName', 'Lorg/apache/commons/io/IOUtils;.toInputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;#charsetName#0#1').
name_ref(p_charset_name_394, param, 'charsetName', 'Lorg/apache/commons/io/IOUtils;.toString([BLjava/lang/String;)Ljava/lang/String;#charsetName#0#1').
name_ref(p_charset_name_399, param, 'charsetName', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;|Ljava/io/IOException;#charsetName#0#1').
name_ref(p_charset_name_410, param, 'charsetName', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;|Ljava/io/IOException;#charsetName#0#1').
name_ref(p_charset_name_415, param, 'charsetName', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;|Ljava/io/IOException;#charsetName#0#1').
name_ref(p_charset_name_425, param, 'charsetName', 'Lorg/apache/commons/io/IOUtils;.write([BLjava/io/Writer;Ljava/lang/String;)V|Ljava/io/IOException;#charsetName#0#2').
name_ref(p_charset_name_433, param, 'charsetName', 'Lorg/apache/commons/io/IOUtils;.write([CLjava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;#charsetName#0#2').
name_ref(p_charset_name_443, param, 'charsetName', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/CharSequence;Ljava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;#charsetName#0#2').
name_ref(p_charset_name_453, param, 'charsetName', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;#charsetName#0#2').
name_ref(p_charset_name_460, param, 'charsetName', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/StringBuffer;Ljava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;#charsetName#0#2').
name_ref(p_charset_name_477, param, 'charsetName', 'Lorg/apache/commons/io/IOUtils;.writeLines(Ljava/util/Collection<*>;Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;#charsetName#0#3').
name_ref(p_class_loader_327, param, 'classLoader', 'Lorg/apache/commons/io/IOUtils;.resourceToByteArray(Ljava/lang/String;Ljava/lang/ClassLoader;)[B|Ljava/io/IOException;#classLoader#0#1').
name_ref(p_class_loader_332, param, 'classLoader', 'Lorg/apache/commons/io/IOUtils;.resourceToString(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/ClassLoader;)Ljava/lang/String;|Ljava/io/IOException;#classLoader#0#2').
name_ref(p_class_loader_335, param, 'classLoader', 'Lorg/apache/commons/io/IOUtils;.resourceToURL(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/net/URL;|Ljava/io/IOException;#classLoader#0#1').
name_ref(p_closeable_180, param, 'closeable', 'Lorg/apache/commons/io/IOUtils;.close(Ljava/io/Closeable;)V|Ljava/io/IOException;#closeable#0#0').
name_ref(p_closeable_182, param, 'closeable', 'Lorg/apache/commons/io/IOUtils;.close(Ljava/io/Closeable;Lorg/apache/commons/io/function/IOConsumer<Ljava/io/IOException;>;)V|Ljava/io/IOException;#closeable#0#0').
name_ref(p_closeable_185, param, 'closeable', 'Lorg/apache/commons/io/IOUtils;.closeQ(Ljava/io/Closeable;)V#closeable#0#0').
name_ref(p_closeable_186, param, 'closeable', 'Lorg/apache/commons/io/IOUtils;.closeQuietly(Ljava/io/Closeable;)V#closeable#0#0').
name_ref(p_closeable_188, param, 'closeable', 'Lorg/apache/commons/io/IOUtils;.closeQuietly(Ljava/io/Closeable;Ljava/util/function/Consumer<Ljava/io/IOException;>;)V#closeable#0#0').
name_ref(p_closeables_181, param, 'closeables', 'Lorg/apache/commons/io/IOUtils;.close([Ljava/io/Closeable;)V|Lorg/apache/commons/io/IOExceptionList;#closeables#0#0').
name_ref(p_closeables_187, param, 'closeables', 'Lorg/apache/commons/io/IOUtils;.closeQuietly([Ljava/io/Closeable;)V#closeables#0#0').
name_ref(p_closeables_191, param, 'closeables', 'Lorg/apache/commons/io/IOUtils;.closeQuietly(Ljava/lang/Iterable<Ljava/io/Closeable;>;)V#closeables#0#0').
name_ref(p_closeables_197, param, 'closeables', 'Lorg/apache/commons/io/IOUtils;.closeQuietly(Ljava/util/stream/Stream<Ljava/io/Closeable;>;)V#closeables#0#0').
name_ref(p_collection_661, param, 'collection', 'Lorg/apache/commons/io/file/PathUtils;.relativize(Ljava/util/Collection<Ljava/nio/file/Path;>;Ljava/nio/file/Path;ZLjava/util/Comparator<-Ljava/nio/file/Path;>;)Ljava/util/List<Ljava/nio/file/Path;>;#collection#0#0').
name_ref(p_collector_578, param, 'collector', 'Lorg/apache/commons/io/file/PathUtils;.filterPaths<R:Ljava/lang/Object;A:Ljava/lang/Object;>(Lorg/apache/commons/io/file/PathFilter;Ljava/util/stream/Stream<Ljava/nio/file/Path;>;Ljava/util/stream/Collector<-Ljava/nio/file/Path;TA;TR;>;)TR;#collector#0#2').
name_ref(p_collector_836, param, 'collector', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.filterFiles<R:Ljava/lang/Object;A:Ljava/lang/Object;>(Lorg/apache/commons/io/filefilter/IOFileFilter;Ljava/util/stream/Stream<Ljava/io/File;>;Ljava/util/stream/Collector<-Ljava/io/File;TA;TR;>;)TR;#collector#0#2').
name_ref(p_comparator_664, param, 'comparator', 'Lorg/apache/commons/io/file/PathUtils;.relativize(Ljava/util/Collection<Ljava/nio/file/Path;>;Ljava/nio/file/Path;ZLjava/util/Comparator<-Ljava/nio/file/Path;>;)Ljava/util/List<Ljava/nio/file/Path;>;#comparator#0#3').
name_ref(p_conn_184, param, 'conn', 'Lorg/apache/commons/io/IOUtils;.close(Ljava/net/URLConnection;)V#conn#0#0').
name_ref(p_consumer_183, param, 'consumer', 'Lorg/apache/commons/io/IOUtils;.close(Ljava/io/Closeable;Lorg/apache/commons/io/function/IOConsumer<Ljava/io/IOException;>;)V|Ljava/io/IOException;#consumer#0#1').
name_ref(p_consumer_189, param, 'consumer', 'Lorg/apache/commons/io/IOUtils;.closeQuietly(Ljava/io/Closeable;Ljava/util/function/Consumer<Ljava/io/IOException;>;)V#consumer#0#1').
name_ref(p_copy_options_513, param, 'copyOptions', 'Lorg/apache/commons/io/file/PathUtils;.copy(Lorg/apache/commons/io/function/IOSupplier<Ljava/io/InputStream;>;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)J|Ljava/io/IOException;#copyOptions#0#2').
name_ref(p_copy_options_516, param, 'copyOptions', 'Lorg/apache/commons/io/file/PathUtils;.copyDirectory(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#copyOptions#0#2').
name_ref(p_copy_options_519, param, 'copyOptions', 'Lorg/apache/commons/io/file/PathUtils;.copyFile(Ljava/net/URL;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#copyOptions#0#2').
name_ref(p_copy_options_522, param, 'copyOptions', 'Lorg/apache/commons/io/file/PathUtils;.copyFileToDirectory(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#copyOptions#0#2').
name_ref(p_copy_options_525, param, 'copyOptions', 'Lorg/apache/commons/io/file/PathUtils;.copyFileToDirectory(Ljava/net/URL;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#copyOptions#0#2').
name_ref(p_cs_12, param, 'cs', 'Lorg/apache/commons/io/FileSystem;.indexOf(Ljava/lang/CharSequence;II)I#cs#0#0').
name_ref(p_cs_47, param, 'cs', 'Lorg/apache/commons/io/FileSystem;.trimExtension(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;#cs#0#0').
name_ref(p_csq_278, param, 'csq', 'Lorg/apache/commons/io/IOUtils;.length(Ljava/lang/CharSequence;)I#csq#0#0').
name_ref(p_cutoff_date_816, param, 'cutoffDate', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.ageFileFilter(Ljava/util/Date;)Lorg/apache/commons/io/filefilter/IOFileFilter;#cutoffDate#0#0').
name_ref(p_cutoff_date_817, param, 'cutoffDate', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.ageFileFilter(Ljava/util/Date;Z)Lorg/apache/commons/io/filefilter/IOFileFilter;#cutoffDate#0#0').
name_ref(p_cutoff_millis_822, param, 'cutoffMillis', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.ageFileFilter(J)Lorg/apache/commons/io/filefilter/IOFileFilter;#cutoffMillis#0#0').
name_ref(p_cutoff_millis_823, param, 'cutoffMillis', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.ageFileFilter(JZ)Lorg/apache/commons/io/filefilter/IOFileFilter;#cutoffMillis#0#0').
name_ref(p_cutoff_reference_819, param, 'cutoffReference', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.ageFileFilter(Ljava/io/File;)Lorg/apache/commons/io/filefilter/IOFileFilter;#cutoffReference#0#0').
name_ref(p_cutoff_reference_820, param, 'cutoffReference', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.ageFileFilter(Ljava/io/File;Z)Lorg/apache/commons/io/filefilter/IOFileFilter;#cutoffReference#0#0').
name_ref(p_czdt_607, param, 'czdt', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;Ljava/time/chrono/ChronoZonedDateTime<*>;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#czdt#0#1').
name_ref(p_data_416, param, 'data', 'Lorg/apache/commons/io/IOUtils;.write([BLjava/io/OutputStream;)V|Ljava/io/IOException;#data#0#0').
name_ref(p_data_418, param, 'data', 'Lorg/apache/commons/io/IOUtils;.write([BLjava/io/Writer;)V|Ljava/io/IOException;#data#0#0').
name_ref(p_data_420, param, 'data', 'Lorg/apache/commons/io/IOUtils;.write([BLjava/io/Writer;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#data#0#0').
name_ref(p_data_423, param, 'data', 'Lorg/apache/commons/io/IOUtils;.write([BLjava/io/Writer;Ljava/lang/String;)V|Ljava/io/IOException;#data#0#0').
name_ref(p_data_426, param, 'data', 'Lorg/apache/commons/io/IOUtils;.write([CLjava/io/OutputStream;)V|Ljava/io/IOException;#data#0#0').
name_ref(p_data_428, param, 'data', 'Lorg/apache/commons/io/IOUtils;.write([CLjava/io/OutputStream;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#data#0#0').
name_ref(p_data_431, param, 'data', 'Lorg/apache/commons/io/IOUtils;.write([CLjava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;#data#0#0').
name_ref(p_data_434, param, 'data', 'Lorg/apache/commons/io/IOUtils;.write([CLjava/io/Writer;)V|Ljava/io/IOException;#data#0#0').
name_ref(p_data_436, param, 'data', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/CharSequence;Ljava/io/OutputStream;)V|Ljava/io/IOException;#data#0#0').
name_ref(p_data_438, param, 'data', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/CharSequence;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#data#0#0').
name_ref(p_data_441, param, 'data', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/CharSequence;Ljava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;#data#0#0').
name_ref(p_data_444, param, 'data', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/CharSequence;Ljava/io/Writer;)V|Ljava/io/IOException;#data#0#0').
name_ref(p_data_446, param, 'data', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/String;Ljava/io/OutputStream;)V|Ljava/io/IOException;#data#0#0').
name_ref(p_data_448, param, 'data', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#data#0#0').
name_ref(p_data_451, param, 'data', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;#data#0#0').
name_ref(p_data_454, param, 'data', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/String;Ljava/io/Writer;)V|Ljava/io/IOException;#data#0#0').
name_ref(p_data_456, param, 'data', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/StringBuffer;Ljava/io/OutputStream;)V|Ljava/io/IOException;#data#0#0').
name_ref(p_data_458, param, 'data', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/StringBuffer;Ljava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;#data#0#0').
name_ref(p_data_461, param, 'data', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/StringBuffer;Ljava/io/Writer;)V|Ljava/io/IOException;#data#0#0').
name_ref(p_data_463, param, 'data', 'Lorg/apache/commons/io/IOUtils;.writeChunked([BLjava/io/OutputStream;)V|Ljava/io/IOException;#data#0#0').
name_ref(p_data_465, param, 'data', 'Lorg/apache/commons/io/IOUtils;.writeChunked([CLjava/io/Writer;)V|Ljava/io/IOException;#data#0#0').
name_ref(p_data_935, param, 'data', 'Lorg/apache/commons/io/test/TestUtils;.createLineBasedFile(Ljava/io/File;[Ljava/lang/String;)V|Ljava/io/IOException;#data#0#1').
name_ref(p_default_if_absent_590, param, 'defaultIfAbsent', 'Lorg/apache/commons/io/file/PathUtils;.getLastModifiedFileTime(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;|Ljava/io/IOException;#defaultIfAbsent#0#1').
name_ref(p_default_string_404, param, 'defaultString', 'Lorg/apache/commons/io/IOUtils;.toString(Lorg/apache/commons/io/function/IOSupplier<Ljava/io/InputStream;>;Ljava/nio/charset/Charset;Lorg/apache/commons/io/function/IOSupplier<Ljava/lang/String;>;)Ljava/lang/String;|Ljava/io/IOException;#defaultString#0#2').
name_ref(p_default_value_131, param, 'defaultValue', 'Lorg/apache/commons/io/IOCase;.value(Lorg/apache/commons/io/IOCase;Lorg/apache/commons/io/IOCase;)Lorg/apache/commons/io/IOCase;#defaultValue#0#1').
name_ref(p_delete_options_507, param, 'deleteOptions', 'Lorg/apache/commons/io/file/PathUtils;.cleanDirectory(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#deleteOptions#0#1').
name_ref(p_delete_options_535, param, 'deleteOptions', 'Lorg/apache/commons/io/file/PathUtils;.delete(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#deleteOptions#0#1').
name_ref(p_delete_options_538, param, 'deleteOptions', 'Lorg/apache/commons/io/file/PathUtils;.delete(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#deleteOptions#0#2').
name_ref(p_delete_options_541, param, 'deleteOptions', 'Lorg/apache/commons/io/file/PathUtils;.deleteDirectory(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#deleteOptions#0#1').
name_ref(p_delete_options_544, param, 'deleteOptions', 'Lorg/apache/commons/io/file/PathUtils;.deleteDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#deleteOptions#0#2').
name_ref(p_delete_options_547, param, 'deleteOptions', 'Lorg/apache/commons/io/file/PathUtils;.deleteFile(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#deleteOptions#0#1').
name_ref(p_delete_options_550, param, 'deleteOptions', 'Lorg/apache/commons/io/file/PathUtils;.deleteFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/nio/file/NoSuchFileException;|Ljava/io/IOException;#deleteOptions#0#2').
name_ref(p_delete_options_644, param, 'deleteOptions', 'Lorg/apache/commons/io/file/PathUtils;.overrideReadOnly([Lorg/apache/commons/io/file/DeleteOption;)Z#deleteOptions#0#0').
name_ref(p_dir_1_486, param, 'dir1', 'Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;.(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;)V|Ljava/io/IOException;#dir1#0#0').
name_ref(p_dir_2_487, param, 'dir2', 'Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;.(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;)V|Ljava/io/IOException;#dir2#0#1').
name_ref(p_dir_635, param, 'dir', 'Lorg/apache/commons/io/file/PathUtils;.newDirectoryStream(Ljava/nio/file/Path;Lorg/apache/commons/io/file/PathFilter;)Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;|Ljava/io/IOException;#dir#0#0').
name_ref(p_dir_727, param, 'dir', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.accept(Ljava/io/File;Ljava/lang/String;)Z#dir#0#0').
name_ref(p_dir_736, param, 'dir', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.postVisitDirectory(Ljava/nio/file/Path;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;|Ljava/io/IOException;#dir#0#0').
name_ref(p_dir_738, param, 'dir', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.preVisitDirectory(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;|Ljava/io/IOException;#dir#0#0').
name_ref(p_dir_881, param, 'dir', 'Lorg/apache/commons/io/filefilter/IOFileFilter;.accept(Ljava/io/File;Ljava/lang/String;)Z#dir#0#0').
name_ref(p_dir_900, param, 'dir', 'Lorg/apache/commons/io/filefilter/NameFileFilter;.accept(Ljava/io/File;Ljava/lang/String;)Z#dir#0#0').
name_ref(p_directory_502, param, 'directory', 'Lorg/apache/commons/io/file/PathUtils;.accumulate(Ljava/nio/file/Path;I[Ljava/nio/file/FileVisitOption;)Lorg/apache/commons/io/file/AccumulatorPathVisitor;|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_505, param, 'directory', 'Lorg/apache/commons/io/file/PathUtils;.cleanDirectory(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_506, param, 'directory', 'Lorg/apache/commons/io/file/PathUtils;.cleanDirectory(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_526, param, 'directory', 'Lorg/apache/commons/io/file/PathUtils;.countDirectory(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_527, param, 'directory', 'Lorg/apache/commons/io/file/PathUtils;.countDirectoryAsBigInteger(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_539, param, 'directory', 'Lorg/apache/commons/io/file/PathUtils;.deleteDirectory(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_540, param, 'directory', 'Lorg/apache/commons/io/file/PathUtils;.deleteDirectory(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_542, param, 'directory', 'Lorg/apache/commons/io/file/PathUtils;.deleteDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_604, param, 'directory', 'Lorg/apache/commons/io/file/PathUtils;.isEmptyDirectory(Ljava/nio/file/Path;)Z|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_688, param, 'directory', 'Lorg/apache/commons/io/file/PathUtils;.sizeOfDirectory(Ljava/nio/file/Path;)J|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_689, param, 'directory', 'Lorg/apache/commons/io/file/PathUtils;.sizeOfDirectoryAsBigInteger(Ljava/nio/file/Path;)Ljava/math/BigInteger;|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_693, param, 'directory', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/nio/file/Path;)TT;|Ljava/io/IOException;#directory#0#1').
name_ref(p_enable_delete_children_674, param, 'enableDeleteChildren', 'Lorg/apache/commons/io/file/PathUtils;.setPosixDeletePermissions(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#enableDeleteChildren#0#1').
name_ref(p_encoding_408, param, 'encoding', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/net/URI;Ljava/nio/charset/Charset;)Ljava/lang/String;|Ljava/io/IOException;#encoding#0#1').
name_ref(p_encoding_413, param, 'encoding', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/net/URL;Ljava/nio/charset/Charset;)Ljava/lang/String;|Ljava/io/IOException;#encoding#0#1').
name_ref(p_end_139, param, 'end', 'Lorg/apache/commons/io/IOCase;.checkEndsWith(Ljava/lang/String;Ljava/lang/String;)Z#end#0#1').
name_ref(p_exc_737, param, 'exc', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.postVisitDirectory(Ljava/nio/file/Path;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;|Ljava/io/IOException;#exc#0#1').
name_ref(p_exc_744, param, 'exc', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.visitFileFailed(Ljava/nio/file/Path;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;|Ljava/io/IOException;#exc#0#1').
name_ref(p_expected_747, param, 'expected', 'Lorg/apache/commons/io/filefilter/AbstractFilterTest;.assertFiltering(Lorg/apache/commons/io/filefilter/IOFileFilter;Ljava/io/File;Z)V|Ljava/io/IOException;#expected#0#2').
name_ref(p_expected_750, param, 'expected', 'Lorg/apache/commons/io/filefilter/AbstractFilterTest;.assertFiltering(Lorg/apache/commons/io/filefilter/IOFileFilter;Ljava/nio/file/Path;Z)V#expected#0#2').
name_ref(p_extension_97, param, 'extension', 'Lorg/apache/commons/io/FilenameUtils;.isExtension(Ljava/lang/String;Ljava/lang/String;)Z#extension#0#1').
name_ref(p_extensions_95, param, 'extensions', 'Lorg/apache/commons/io/FilenameUtils;.isExtension(Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;)Z#extensions#0#1').
name_ref(p_extensions_99, param, 'extensions', 'Lorg/apache/commons/io/FilenameUtils;.isExtension(Ljava/lang/String;[Ljava/lang/String;)Z#extensions#0#1').
name_ref(p_f_0_924, param, 'f0', 'Lorg/apache/commons/io/test/TestUtils;.assertEqualContent(Ljava/io/File;Ljava/io/File;)V|Ljava/io/IOException;#f0#0#0').
name_ref(p_f_1_925, param, 'f1', 'Lorg/apache/commons/io/test/TestUtils;.assertEqualContent(Ljava/io/File;Ljava/io/File;)V|Ljava/io/IOException;#f1#0#1').
name_ref(p_file_243, param, 'file', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/net/URL;Ljava/io/File;)J|Ljava/io/IOException;#file#0#1').
name_ref(p_file_508, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.compareLastModifiedTimeTo(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)I|Ljava/io/IOException;#file#0#0').
name_ref(p_file_545, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.deleteFile(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#file#0#0').
name_ref(p_file_546, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.deleteFile(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#file#0#0').
name_ref(p_file_548, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.deleteFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/nio/file/NoSuchFileException;|Ljava/io/IOException;#file#0#0').
name_ref(p_file_588, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.getLastModifiedFileTime(Ljava/io/File;)Ljava/nio/file/attribute/FileTime;|Ljava/io/IOException;#file#0#0').
name_ref(p_file_605, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.isEmptyFile(Ljava/nio/file/Path;)Z|Ljava/io/IOException;#file#0#0').
name_ref(p_file_606, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;Ljava/time/chrono/ChronoZonedDateTime<*>;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#file#0#0').
name_ref(p_file_609, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#file#0#0').
name_ref(p_file_612, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;Ljava/time/Instant;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#file#0#0').
name_ref(p_file_615, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;J[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#file#0#0').
name_ref(p_file_618, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z|Ljava/io/IOException;#file#0#0').
name_ref(p_file_620, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.isOlder(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#file#0#0').
name_ref(p_file_623, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.isOlder(Ljava/nio/file/Path;Ljava/time/Instant;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#file#0#0').
name_ref(p_file_626, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.isOlder(Ljava/nio/file/Path;J[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#file#0#0').
name_ref(p_file_629, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.isOlder(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z|Ljava/io/IOException;#file#0#0').
name_ref(p_file_665, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.requireExists(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;#file#0#0').
name_ref(p_file_691, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.touch(Ljava/nio/file/Path;)Ljava/nio/file/Path;|Ljava/io/IOException;#file#0#0').
name_ref(p_file_703, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.waitFor(Ljava/nio/file/Path;Ljava/time/Duration;[Ljava/nio/file/LinkOption;)Z#file#0#0').
name_ref(p_file_726, param, 'file', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.accept(Ljava/io/File;)Z#file#0#0').
name_ref(p_file_741, param, 'file', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.visitFile(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;|Ljava/io/IOException;#file#0#0').
name_ref(p_file_743, param, 'file', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.visitFileFailed(Ljava/nio/file/Path;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;|Ljava/io/IOException;#file#0#0').
name_ref(p_file_746, param, 'file', 'Lorg/apache/commons/io/filefilter/AbstractFilterTest;.assertFiltering(Lorg/apache/commons/io/filefilter/IOFileFilter;Ljava/io/File;Z)V|Ljava/io/IOException;#file#0#1').
name_ref(p_file_762, param, 'file', 'Lorg/apache/commons/io/filefilter/AndFileFilter;.accept(Ljava/io/File;)Z#file#0#0').
name_ref(p_file_763, param, 'file', 'Lorg/apache/commons/io/filefilter/AndFileFilter;.accept(Ljava/io/File;Ljava/lang/String;)Z#file#0#0').
name_ref(p_file_765, param, 'file', 'Lorg/apache/commons/io/filefilter/AndFileFilter;.accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;#file#0#0').
name_ref(p_file_774, param, 'file', 'Lorg/apache/commons/io/filefilter/CanReadFileFilter;.accept(Ljava/io/File;)Z#file#0#0').
name_ref(p_file_775, param, 'file', 'Lorg/apache/commons/io/filefilter/CanReadFileFilter;.accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;#file#0#0').
name_ref(p_file_779, param, 'file', 'Lorg/apache/commons/io/filefilter/CanWriteFileFilter;.accept(Ljava/io/File;)Z#file#0#0').
name_ref(p_file_780, param, 'file', 'Lorg/apache/commons/io/filefilter/CanWriteFileFilter;.accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;#file#0#0').
name_ref(p_file_784, param, 'file', 'Lorg/apache/commons/io/filefilter/DirectoryFileFilter;.accept(Ljava/io/File;)Z#file#0#0').
name_ref(p_file_785, param, 'file', 'Lorg/apache/commons/io/filefilter/DirectoryFileFilter;.accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;#file#0#0').
name_ref(p_file_789, param, 'file', 'Lorg/apache/commons/io/filefilter/EmptyFileFilter;.accept(Ljava/io/File;)Z#file#0#0').
name_ref(p_file_791, param, 'file', 'Lorg/apache/commons/io/filefilter/EmptyFileFilter;.accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;#file#0#0').
name_ref(p_file_796, param, 'file', 'Lorg/apache/commons/io/filefilter/FileFileFilter;.accept(Ljava/io/File;)Z#file#0#0').
name_ref(p_file_797, param, 'file', 'Lorg/apache/commons/io/filefilter/FileFileFilter;.accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;#file#0#0').
name_ref(p_file_876, param, 'file', 'Lorg/apache/commons/io/filefilter/HiddenFileFilter;.accept(Ljava/io/File;)Z#file#0#0').
name_ref(p_file_877, param, 'file', 'Lorg/apache/commons/io/filefilter/HiddenFileFilter;.accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;#file#0#0').
name_ref(p_file_880, param, 'file', 'Lorg/apache/commons/io/filefilter/IOFileFilter;.accept(Ljava/io/File;)Z#file#0#0').
name_ref(p_file_899, param, 'file', 'Lorg/apache/commons/io/filefilter/NameFileFilter;.accept(Ljava/io/File;)Z#file#0#0').
name_ref(p_file_910, param, 'file', 'Lorg/apache/commons/io/filefilter/NotFileFilter;.accept(Ljava/io/File;)Z#file#0#0').
name_ref(p_file_911, param, 'file', 'Lorg/apache/commons/io/filefilter/NotFileFilter;.accept(Ljava/io/File;Ljava/lang/String;)Z#file#0#0').
name_ref(p_file_913, param, 'file', 'Lorg/apache/commons/io/filefilter/NotFileFilter;.accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;#file#0#0').
name_ref(p_file_917, param, 'file', 'Lorg/apache/commons/io/test/TestUtils;.assertEqualContent([BLjava/io/File;)V|Ljava/io/IOException;#file#0#1').
name_ref(p_file_919, param, 'file', 'Lorg/apache/commons/io/test/TestUtils;.assertEqualContent([BLjava/nio/file/Path;)V|Ljava/io/IOException;#file#0#1').
name_ref(p_file_921, param, 'file', 'Lorg/apache/commons/io/test/TestUtils;.assertEqualContent([CLjava/io/File;)V|Ljava/io/IOException;#file#0#1').
name_ref(p_file_923, param, 'file', 'Lorg/apache/commons/io/test/TestUtils;.assertEqualContent([CLjava/nio/file/Path;)V|Ljava/io/IOException;#file#0#1').
name_ref(p_file_926, param, 'file', 'Lorg/apache/commons/io/test/TestUtils;.checkFile(Ljava/io/File;Ljava/io/File;)V|Ljava/lang/Exception;#file#0#0').
name_ref(p_file_930, param, 'file', 'Lorg/apache/commons/io/test/TestUtils;.createFile(Ljava/io/File;J)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_932, param, 'file', 'Lorg/apache/commons/io/test/TestUtils;.createFile(Ljava/nio/file/Path;J)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_934, param, 'file', 'Lorg/apache/commons/io/test/TestUtils;.createLineBasedFile(Ljava/io/File;[Ljava/lang/String;)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_936, param, 'file', 'Lorg/apache/commons/io/test/TestUtils;.deleteFile(Ljava/io/File;)V#file#0#0').
name_ref(p_file_937, param, 'file', 'Lorg/apache/commons/io/test/TestUtils;.generateTestData(Ljava/io/File;J)V|Ljava/io/IOException;|Ljava/io/FileNotFoundException;#file#0#0').
name_ref(p_file_filter_767, param, 'fileFilter', 'Lorg/apache/commons/io/filefilter/AndFileFilter;.addFileFilter(Lorg/apache/commons/io/filefilter/IOFileFilter;)V#fileFilter#0#0').
name_ref(p_file_filter_885, param, 'fileFilter', 'Lorg/apache/commons/io/filefilter/IOFileFilter;.and(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;#fileFilter#0#0').
name_ref(p_file_filter_887, param, 'fileFilter', 'Lorg/apache/commons/io/filefilter/IOFileFilter;.or(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;#fileFilter#0#0').
name_ref(p_file_filters_758, param, 'fileFilters', 'Lorg/apache/commons/io/filefilter/AndFileFilter;.([Lorg/apache/commons/io/filefilter/IOFileFilter;)V#fileFilters#0#0').
name_ref(p_file_filters_761, param, 'fileFilters', 'Lorg/apache/commons/io/filefilter/AndFileFilter;.(Ljava/util/List<Lorg/apache/commons/io/filefilter/IOFileFilter;>;)V#fileFilters#0#0').
name_ref(p_file_filters_768, param, 'fileFilters', 'Lorg/apache/commons/io/filefilter/AndFileFilter;.addFileFilter([Lorg/apache/commons/io/filefilter/IOFileFilter;)V#fileFilters#0#0').
name_ref(p_file_filters_770, param, 'fileFilters', 'Lorg/apache/commons/io/filefilter/AndFileFilter;.setFileFilters(Ljava/util/List<Lorg/apache/commons/io/filefilter/IOFileFilter;>;)V#fileFilters#0#0').
name_ref(p_file_name1_66, param, 'fileName1', 'Lorg/apache/commons/io/FilenameUtils;.equals(Ljava/lang/String;Ljava/lang/String;)Z#fileName1#0#0').
name_ref(p_file_name1_68, param, 'fileName1', 'Lorg/apache/commons/io/FilenameUtils;.equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/commons/io/IOCase;)Z#fileName1#0#0').
name_ref(p_file_name1_72, param, 'fileName1', 'Lorg/apache/commons/io/FilenameUtils;.equalsNormalized(Ljava/lang/String;Ljava/lang/String;)Z#fileName1#0#0').
name_ref(p_file_name1_74, param, 'fileName1', 'Lorg/apache/commons/io/FilenameUtils;.equalsNormalizedOnSystem(Ljava/lang/String;Ljava/lang/String;)Z#fileName1#0#0').
name_ref(p_file_name1_76, param, 'fileName1', 'Lorg/apache/commons/io/FilenameUtils;.equalsOnSystem(Ljava/lang/String;Ljava/lang/String;)Z#fileName1#0#0').
name_ref(p_file_name2_67, param, 'fileName2', 'Lorg/apache/commons/io/FilenameUtils;.equals(Ljava/lang/String;Ljava/lang/String;)Z#fileName2#0#1').
name_ref(p_file_name2_69, param, 'fileName2', 'Lorg/apache/commons/io/FilenameUtils;.equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/commons/io/IOCase;)Z#fileName2#0#1').
name_ref(p_file_name2_73, param, 'fileName2', 'Lorg/apache/commons/io/FilenameUtils;.equalsNormalized(Ljava/lang/String;Ljava/lang/String;)Z#fileName2#0#1').
name_ref(p_file_name2_75, param, 'fileName2', 'Lorg/apache/commons/io/FilenameUtils;.equalsNormalizedOnSystem(Ljava/lang/String;Ljava/lang/String;)Z#fileName2#0#1').
name_ref(p_file_name2_77, param, 'fileName2', 'Lorg/apache/commons/io/FilenameUtils;.equalsOnSystem(Ljava/lang/String;Ljava/lang/String;)Z#fileName2#0#1').
name_ref(p_file_name_105, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.normalize(Ljava/lang/String;)Ljava/lang/String;#fileName#0#0').
name_ref(p_file_name_106, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.normalize(Ljava/lang/String;Z)Ljava/lang/String;#fileName#0#0').
name_ref(p_file_name_108, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.normalizeNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;#fileName#0#0').
name_ref(p_file_name_109, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.normalizeNoEndSeparator(Ljava/lang/String;Z)Ljava/lang/String;#fileName#0#0').
name_ref(p_file_name_111, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.removeExtension(Ljava/lang/String;)Ljava/lang/String;#fileName#0#0').
name_ref(p_file_name_118, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.wildcardMatch(Ljava/lang/String;Ljava/lang/String;)Z#fileName#0#0').
name_ref(p_file_name_120, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Z#fileName#0#0').
name_ref(p_file_name_123, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.wildcardMatchOnSystem(Ljava/lang/String;Ljava/lang/String;)Z#fileName#0#0').
name_ref(p_file_name_59, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.doGetFullPath(Ljava/lang/String;Z)Ljava/lang/String;#fileName#0#0').
name_ref(p_file_name_61, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.doGetPath(Ljava/lang/String;I)Ljava/lang/String;#fileName#0#0').
name_ref(p_file_name_63, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.doNormalize(Ljava/lang/String;CZ)Ljava/lang/String;#fileName#0#0').
name_ref(p_file_name_81, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.getAdsCriticalOffset(Ljava/lang/String;)I#fileName#0#0').
name_ref(p_file_name_82, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.getBaseName(Ljava/lang/String;)Ljava/lang/String;#fileName#0#0').
name_ref(p_file_name_83, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.getExtension(Ljava/lang/String;)Ljava/lang/String;|Ljava/lang/IllegalArgumentException;#fileName#0#0').
name_ref(p_file_name_84, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.getFullPath(Ljava/lang/String;)Ljava/lang/String;#fileName#0#0').
name_ref(p_file_name_85, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.getFullPathNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;#fileName#0#0').
name_ref(p_file_name_86, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.getName(Ljava/lang/String;)Ljava/lang/String;#fileName#0#0').
name_ref(p_file_name_87, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.getPath(Ljava/lang/String;)Ljava/lang/String;#fileName#0#0').
name_ref(p_file_name_88, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.getPathNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;#fileName#0#0').
name_ref(p_file_name_89, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.getPrefix(Ljava/lang/String;)Ljava/lang/String;#fileName#0#0').
name_ref(p_file_name_90, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.getPrefixLength(Ljava/lang/String;)I#fileName#0#0').
name_ref(p_file_name_91, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.indexOfExtension(Ljava/lang/String;)I|Ljava/lang/IllegalArgumentException;#fileName#0#0').
name_ref(p_file_name_92, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.indexOfLastSeparator(Ljava/lang/String;)I#fileName#0#0').
name_ref(p_file_name_94, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.isExtension(Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;)Z#fileName#0#0').
name_ref(p_file_name_944, param, 'fileName', 'Lorg/apache/commons/io/test/TestUtils;.newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;|Ljava/io/IOException;#fileName#0#1').
name_ref(p_file_name_96, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.isExtension(Ljava/lang/String;Ljava/lang/String;)Z#fileName#0#0').
name_ref(p_file_name_98, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.isExtension(Ljava/lang/String;[Ljava/lang/String;)Z#fileName#0#0').
name_ref(p_file_param_name_666, param, 'fileParamName', 'Lorg/apache/commons/io/file/PathUtils;.requireExists(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;#fileParamName#0#1').
name_ref(p_file_time_509, param, 'fileTime', 'Lorg/apache/commons/io/file/PathUtils;.compareLastModifiedTimeTo(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)I|Ljava/io/IOException;#fileTime#0#1').
name_ref(p_file_time_610, param, 'fileTime', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#fileTime#0#1').
name_ref(p_file_time_621, param, 'fileTime', 'Lorg/apache/commons/io/file/PathUtils;.isOlder(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#fileTime#0#1').
name_ref(p_file_visit_option_558, param, 'fileVisitOption', 'Lorg/apache/commons/io/file/PathUtils;.directoryAndFileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;[Ljava/nio/file/FileVisitOption;)Z|Ljava/io/IOException;#fileVisitOption#0#4').
name_ref(p_file_visit_options_490, param, 'fileVisitOptions', 'Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;.(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;)V|Ljava/io/IOException;#fileVisitOptions#0#4').
name_ref(p_file_visit_options_504, param, 'fileVisitOptions', 'Lorg/apache/commons/io/file/PathUtils;.accumulate(Ljava/nio/file/Path;I[Ljava/nio/file/FileVisitOption;)Lorg/apache/commons/io/file/AccumulatorPathVisitor;|Ljava/io/IOException;#fileVisitOptions#0#2').
name_ref(p_file_visit_options_565, param, 'fileVisitOptions', 'Lorg/apache/commons/io/file/PathUtils;.directoryContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;)Z|Ljava/io/IOException;#fileVisitOptions#0#4').
name_ref(p_file_visit_options_690, param, 'fileVisitOptions', 'Lorg/apache/commons/io/file/PathUtils;.toFileVisitOptionSet([Ljava/nio/file/FileVisitOption;)Ljava/util/Set<Ljava/nio/file/FileVisitOption;>;#fileVisitOptions#0#0').
name_ref(p_files_831, param, 'files', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.filter(Lorg/apache/commons/io/filefilter/IOFileFilter;[Ljava/io/File;)[Ljava/io/File;#files#0#1').
name_ref(p_files_833, param, 'files', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.filter(Lorg/apache/commons/io/filefilter/IOFileFilter;Ljava/lang/Iterable<Ljava/io/File;>;)[Ljava/io/File;#files#0#1').
name_ref(p_files_838, param, 'files', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.filterList(Lorg/apache/commons/io/filefilter/IOFileFilter;[Ljava/io/File;)Ljava/util/List<Ljava/io/File;>;#files#0#1').
name_ref(p_files_840, param, 'files', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.filterList(Lorg/apache/commons/io/filefilter/IOFileFilter;Ljava/lang/Iterable<Ljava/io/File;>;)Ljava/util/List<Ljava/io/File;>;#files#0#1').
name_ref(p_files_842, param, 'files', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.filterSet(Lorg/apache/commons/io/filefilter/IOFileFilter;[Ljava/io/File;)Ljava/util/Set<Ljava/io/File;>;#files#0#1').
name_ref(p_files_844, param, 'files', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.filterSet(Lorg/apache/commons/io/filefilter/IOFileFilter;Ljava/lang/Iterable<Ljava/io/File;>;)Ljava/util/Set<Ljava/io/File;>;#files#0#1').
name_ref(p_filter_1_759, param, 'filter1', 'Lorg/apache/commons/io/filefilter/AndFileFilter;.(Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)V#filter1#0#0').
name_ref(p_filter_1_826, param, 'filter1', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.andFileFilter(Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;#filter1#0#0').
name_ref(p_filter_1_860, param, 'filter1', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.orFileFilter(Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;#filter1#0#0').
name_ref(p_filter_2_760, param, 'filter2', 'Lorg/apache/commons/io/filefilter/AndFileFilter;.(Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)V#filter2#0#1').
name_ref(p_filter_2_827, param, 'filter2', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.andFileFilter(Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;#filter2#0#1').
name_ref(p_filter_2_861, param, 'filter2', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.orFileFilter(Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;#filter2#0#1').
name_ref(p_filter_574, param, 'filter', 'Lorg/apache/commons/io/file/PathUtils;.filter(Lorg/apache/commons/io/file/PathFilter;[Ljava/nio/file/Path;)[Ljava/nio/file/Path;#filter#0#0').
name_ref(p_filter_576, param, 'filter', 'Lorg/apache/commons/io/file/PathUtils;.filterPaths<R:Ljava/lang/Object;A:Ljava/lang/Object;>(Lorg/apache/commons/io/file/PathFilter;Ljava/util/stream/Stream<Ljava/nio/file/Path;>;Ljava/util/stream/Collector<-Ljava/nio/file/Path;TA;TR;>;)TR;#filter#0#0').
name_ref(p_filter_745, param, 'filter', 'Lorg/apache/commons/io/filefilter/AbstractFilterTest;.assertFiltering(Lorg/apache/commons/io/filefilter/IOFileFilter;Ljava/io/File;Z)V|Ljava/io/IOException;#filter#0#0').
name_ref(p_filter_748, param, 'filter', 'Lorg/apache/commons/io/filefilter/AbstractFilterTest;.assertFiltering(Lorg/apache/commons/io/filefilter/IOFileFilter;Ljava/nio/file/Path;Z)V#filter#0#0').
name_ref(p_filter_752, param, 'filter', 'Lorg/apache/commons/io/filefilter/AbstractFilterTest;.assertFooBarFileFiltering(Lorg/apache/commons/io/filefilter/IOFileFilter;)V|Ljava/io/IOException;#filter#0#0').
name_ref(p_filter_828, param, 'filter', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.asFileFilter(Ljava/io/FileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;#filter#0#0').
name_ref(p_filter_829, param, 'filter', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.asFileFilter(Ljava/io/FilenameFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;#filter#0#0').
name_ref(p_filter_830, param, 'filter', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.filter(Lorg/apache/commons/io/filefilter/IOFileFilter;[Ljava/io/File;)[Ljava/io/File;#filter#0#0').
name_ref(p_filter_832, param, 'filter', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.filter(Lorg/apache/commons/io/filefilter/IOFileFilter;Ljava/lang/Iterable<Ljava/io/File;>;)[Ljava/io/File;#filter#0#0').
name_ref(p_filter_834, param, 'filter', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.filterFiles<R:Ljava/lang/Object;A:Ljava/lang/Object;>(Lorg/apache/commons/io/filefilter/IOFileFilter;Ljava/util/stream/Stream<Ljava/io/File;>;Ljava/util/stream/Collector<-Ljava/io/File;TA;TR;>;)TR;#filter#0#0').
name_ref(p_filter_837, param, 'filter', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.filterList(Lorg/apache/commons/io/filefilter/IOFileFilter;[Ljava/io/File;)Ljava/util/List<Ljava/io/File;>;#filter#0#0').
name_ref(p_filter_839, param, 'filter', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.filterList(Lorg/apache/commons/io/filefilter/IOFileFilter;Ljava/lang/Iterable<Ljava/io/File;>;)Ljava/util/List<Ljava/io/File;>;#filter#0#0').
name_ref(p_filter_841, param, 'filter', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.filterSet(Lorg/apache/commons/io/filefilter/IOFileFilter;[Ljava/io/File;)Ljava/util/Set<Ljava/io/File;>;#filter#0#0').
name_ref(p_filter_843, param, 'filter', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.filterSet(Lorg/apache/commons/io/filefilter/IOFileFilter;Ljava/lang/Iterable<Ljava/io/File;>;)Ljava/util/Set<Ljava/io/File;>;#filter#0#0').
name_ref(p_filter_851, param, 'filter', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.makeCVSAware(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;#filter#0#0').
name_ref(p_filter_852, param, 'filter', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.makeDirectoryOnly(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;#filter#0#0').
name_ref(p_filter_853, param, 'filter', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.makeFileOnly(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;#filter#0#0').
name_ref(p_filter_854, param, 'filter', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.makeSVNAware(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;#filter#0#0').
name_ref(p_filter_858, param, 'filter', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.notFileFilter(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;#filter#0#0').
name_ref(p_filter_908, param, 'filter', 'Lorg/apache/commons/io/filefilter/NotFileFilter;.(Lorg/apache/commons/io/filefilter/IOFileFilter;)V#filter#0#0').
name_ref(p_filters_825, param, 'filters', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.and([Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;#filters#0#0').
name_ref(p_filters_859, param, 'filters', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.or([Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;#filters#0#0').
name_ref(p_filters_873, param, 'filters', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.toList([Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/List<Lorg/apache/commons/io/filefilter/IOFileFilter;>;#filters#0#0').
name_ref(p_first_699, param, 'first', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/lang/String;[Ljava/lang/String;)TT;|Ljava/io/IOException;#first#0#1').
name_ref(p_full_file_name_to_add_56, param, 'fullFileNameToAdd', 'Lorg/apache/commons/io/FilenameUtils;.concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#fullFileNameToAdd#0#1').
name_ref(p_function_585, param, 'function', 'Lorg/apache/commons/io/file/PathUtils;.getFileName<R:Ljava/lang/Object;>(Ljava/nio/file/Path;Ljava/util/function/Function<Ljava/nio/file/Path;TR;>;)TR;#function#0#1').
name_ref(p_function_714, param, 'function', 'Lorg/apache/commons/io/file/PathUtils;.withPosixFileAttributes<R:Ljava/lang/Object;>(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;ZLorg/apache/commons/io/function/IOFunction<Ljava/nio/file/attribute/PosixFileAttributes;TR;>;)TR;|Ljava/io/IOException;#function#0#3').
name_ref(p_illegal_file_name_chars_25, param, 'illegalFileNameChars', 'Lorg/apache/commons/io/FileSystem;.(Ljava/lang/String;IIZZII[I[Ljava/lang/String;ZZC)V#illegalFileNameChars#0#5').
name_ref(p_in_511, param, 'in', 'Lorg/apache/commons/io/file/PathUtils;.copy(Lorg/apache/commons/io/function/IOSupplier<Ljava/io/InputStream;>;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)J|Ljava/io/IOException;#in#0#0').
name_ref(p_include_separator_60, param, 'includeSeparator', 'Lorg/apache/commons/io/FilenameUtils;.doGetFullPath(Ljava/lang/String;Z)Ljava/lang/String;#includeSeparator#0#1').
name_ref(p_inet_6address_101, param, 'inet6Address', 'Lorg/apache/commons/io/FilenameUtils;.isIPv6Address(Ljava/lang/String;)Z#inet6Address#0#0').
name_ref(p_initial_capacity_757, param, 'initialCapacity', 'Lorg/apache/commons/io/filefilter/AndFileFilter;.(I)V#initialCapacity#0#0').
name_ref(p_initial_list_755, param, 'initialList', 'Lorg/apache/commons/io/filefilter/AndFileFilter;.(Ljava/util/ArrayList<Lorg/apache/commons/io/filefilter/IOFileFilter;>;)V#initialList#0#0').
name_ref(p_input_190, param, 'input', 'Lorg/apache/commons/io/IOUtils;.closeQuietly(Ljava/io/InputStream;)V#input#0#0').
name_ref(p_input_199, param, 'input', 'Lorg/apache/commons/io/IOUtils;.consume(Ljava/io/InputStream;)J|Ljava/io/IOException;#input#0#0').
name_ref(p_input_1_201, param, 'input1', 'Lorg/apache/commons/io/IOUtils;.contentEquals(Ljava/io/InputStream;Ljava/io/InputStream;)Z|Ljava/io/IOException;#input1#0#0').
name_ref(p_input_1_205, param, 'input1', 'Lorg/apache/commons/io/IOUtils;.contentEquals(Ljava/io/Reader;Ljava/io/Reader;)Z|Ljava/io/IOException;#input1#0#0').
name_ref(p_input_200, param, 'input', 'Lorg/apache/commons/io/IOUtils;.consume(Ljava/io/Reader;)J|Ljava/io/IOException;#input#0#0').
name_ref(p_input_218, param, 'input', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/InputStream;Ljava/io/Writer;)V|Ljava/io/IOException;#input#0#0').
name_ref(p_input_220, param, 'input', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#input#0#0').
name_ref(p_input_223, param, 'input', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/lang/String;)V|Ljava/io/IOException;#input#0#0').
name_ref(p_input_251, param, 'input', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;JJ)J|Ljava/io/IOException;#input#0#0').
name_ref(p_input_255, param, 'input', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;JJ[B)J|Ljava/io/IOException;#input#0#0').
name_ref(p_input_280, param, 'input', 'Lorg/apache/commons/io/IOUtils;.lineIterator(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lorg/apache/commons/io/LineIterator;#input#0#0').
name_ref(p_input_282, param, 'input', 'Lorg/apache/commons/io/IOUtils;.lineIterator(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/commons/io/LineIterator;#input#0#0').
name_ref(p_input_285, param, 'input', 'Lorg/apache/commons/io/IOUtils;.read(Ljava/io/InputStream;[B)I|Ljava/io/IOException;#input#0#0').
name_ref(p_input_287, param, 'input', 'Lorg/apache/commons/io/IOUtils;.read(Ljava/io/InputStream;[BII)I|Ljava/io/IOException;#input#0#0').
name_ref(p_input_291, param, 'input', 'Lorg/apache/commons/io/IOUtils;.read(Lorg/apache/commons/io/function/IOTriFunction<[BLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;>;[BII)I|Ljava/io/IOException;#input#0#0').
name_ref(p_input_295, param, 'input', 'Lorg/apache/commons/io/IOUtils;.read(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)I|Ljava/io/IOException;#input#0#0').
name_ref(p_input_2_202, param, 'input2', 'Lorg/apache/commons/io/IOUtils;.contentEquals(Ljava/io/InputStream;Ljava/io/InputStream;)Z|Ljava/io/IOException;#input2#0#1').
name_ref(p_input_2_206, param, 'input2', 'Lorg/apache/commons/io/IOUtils;.contentEquals(Ljava/io/Reader;Ljava/io/Reader;)Z|Ljava/io/IOException;#input2#0#1').
name_ref(p_input_303, param, 'input', 'Lorg/apache/commons/io/IOUtils;.readFully(Ljava/io/InputStream;[B)V|Ljava/io/IOException;#input#0#0').
name_ref(p_input_305, param, 'input', 'Lorg/apache/commons/io/IOUtils;.readFully(Ljava/io/InputStream;[BII)V|Ljava/io/IOException;#input#0#0').
name_ref(p_input_309, param, 'input', 'Lorg/apache/commons/io/IOUtils;.readFully(Ljava/io/InputStream;I)[B|Ljava/io/IOException;#input#0#0').
name_ref(p_input_311, param, 'input', 'Lorg/apache/commons/io/IOUtils;.readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V|Ljava/io/IOException;#input#0#0').
name_ref(p_input_319, param, 'input', 'Lorg/apache/commons/io/IOUtils;.readLines(Ljava/io/InputStream;)Ljava/util/List<Ljava/lang/String;>;|Ljava/io/UncheckedIOException;#input#0#0').
name_ref(p_input_320, param, 'input', 'Lorg/apache/commons/io/IOUtils;.readLines(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/util/List<Ljava/lang/String;>;|Ljava/io/UncheckedIOException;#input#0#0').
name_ref(p_input_322, param, 'input', 'Lorg/apache/commons/io/IOUtils;.readLines(Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/List<Ljava/lang/String;>;|Ljava/io/UncheckedIOException;#input#0#0').
name_ref(p_input_336, param, 'input', 'Lorg/apache/commons/io/IOUtils;.skip(Ljava/io/InputStream;J)J|Ljava/io/IOException;#input#0#0').
name_ref(p_input_338, param, 'input', 'Lorg/apache/commons/io/IOUtils;.skip(Ljava/io/InputStream;JLjava/util/function/Supplier<[B>;)J|Ljava/io/IOException;#input#0#0').
name_ref(p_input_341, param, 'input', 'Lorg/apache/commons/io/IOUtils;.skip(Ljava/nio/channels/ReadableByteChannel;J)J|Ljava/io/IOException;#input#0#0').
name_ref(p_input_345, param, 'input', 'Lorg/apache/commons/io/IOUtils;.skipFully(Ljava/io/InputStream;J)V|Ljava/io/IOException;#input#0#0').
name_ref(p_input_347, param, 'input', 'Lorg/apache/commons/io/IOUtils;.skipFully(Ljava/io/InputStream;JLjava/util/function/Supplier<[B>;)V|Ljava/io/IOException;#input#0#0').
name_ref(p_input_350, param, 'input', 'Lorg/apache/commons/io/IOUtils;.skipFully(Ljava/nio/channels/ReadableByteChannel;J)V|Ljava/io/IOException;#input#0#0').
name_ref(p_input_354, param, 'input', 'Lorg/apache/commons/io/IOUtils;.toBufferedInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;|Ljava/io/IOException;#input#0#0').
name_ref(p_input_355, param, 'input', 'Lorg/apache/commons/io/IOUtils;.toBufferedInputStream(Ljava/io/InputStream;I)Ljava/io/InputStream;|Ljava/io/IOException;#input#0#0').
name_ref(p_input_361, param, 'input', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/io/InputStream;I)[B|Ljava/io/IOException;#input#0#0').
name_ref(p_input_363, param, 'input', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/io/InputStream;J)[B|Ljava/io/IOException;#input#0#0').
name_ref(p_input_365, param, 'input', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Lorg/apache/commons/io/function/IOTriFunction<[BLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;>;I)[B|Ljava/io/IOException;#input#0#0').
name_ref(p_input_372, param, 'input', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/lang/String;)[B#input#0#0').
name_ref(p_input_382, param, 'input', 'Lorg/apache/commons/io/IOUtils;.toInputStream(Ljava/lang/CharSequence;)Ljava/io/InputStream;#input#0#0').
name_ref(p_input_383, param, 'input', 'Lorg/apache/commons/io/IOUtils;.toInputStream(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Ljava/io/InputStream;#input#0#0').
name_ref(p_input_385, param, 'input', 'Lorg/apache/commons/io/IOUtils;.toInputStream(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/io/InputStream;#input#0#0').
name_ref(p_input_387, param, 'input', 'Lorg/apache/commons/io/IOUtils;.toInputStream(Ljava/lang/String;)Ljava/io/InputStream;#input#0#0').
name_ref(p_input_388, param, 'input', 'Lorg/apache/commons/io/IOUtils;.toInputStream(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/io/InputStream;#input#0#0').
name_ref(p_input_390, param, 'input', 'Lorg/apache/commons/io/IOUtils;.toInputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;#input#0#0').
name_ref(p_input_392, param, 'input', 'Lorg/apache/commons/io/IOUtils;.toString([B)Ljava/lang/String;#input#0#0').
name_ref(p_input_393, param, 'input', 'Lorg/apache/commons/io/IOUtils;.toString([BLjava/lang/String;)Ljava/lang/String;#input#0#0').
name_ref(p_input_395, param, 'input', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/io/InputStream;)Ljava/lang/String;|Ljava/io/IOException;#input#0#0').
name_ref(p_input_396, param, 'input', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;|Ljava/io/IOException;#input#0#0').
name_ref(p_input_398, param, 'input', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;|Ljava/io/IOException;#input#0#0').
name_ref(p_input_400, param, 'input', 'Lorg/apache/commons/io/IOUtils;.toString(Lorg/apache/commons/io/function/IOSupplier<Ljava/io/InputStream;>;Ljava/nio/charset/Charset;)Ljava/lang/String;|Ljava/io/IOException;#input#0#0').
name_ref(p_input_402, param, 'input', 'Lorg/apache/commons/io/IOUtils;.toString(Lorg/apache/commons/io/function/IOSupplier<Ljava/io/InputStream;>;Ljava/nio/charset/Charset;Lorg/apache/commons/io/function/IOSupplier<Ljava/lang/String;>;)Ljava/lang/String;|Ljava/io/IOException;#input#0#0').
name_ref(p_input_charset_222, param, 'inputCharset', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#inputCharset#0#2').
name_ref(p_input_charset_name_225, param, 'inputCharsetName', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/lang/String;)V|Ljava/io/IOException;#inputCharsetName#0#2').
name_ref(p_input_offset_253, param, 'inputOffset', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;JJ)J|Ljava/io/IOException;#inputOffset#0#2').
name_ref(p_input_offset_257, param, 'inputOffset', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;JJ[B)J|Ljava/io/IOException;#inputOffset#0#2').
name_ref(p_input_offset_267, param, 'inputOffset', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/Reader;Ljava/io/Writer;JJ)J|Ljava/io/IOException;#inputOffset#0#2').
name_ref(p_input_offset_271, param, 'inputOffset', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/Reader;Ljava/io/Writer;JJ[C)J|Ljava/io/IOException;#inputOffset#0#2').
name_ref(p_input_stream_165, param, 'inputStream', 'Lorg/apache/commons/io/IOUtils;.buffer(Ljava/io/InputStream;)Ljava/io/BufferedInputStream;#inputStream#0#0').
name_ref(p_input_stream_166, param, 'inputStream', 'Lorg/apache/commons/io/IOUtils;.buffer(Ljava/io/InputStream;I)Ljava/io/BufferedInputStream;#inputStream#0#0').
name_ref(p_input_stream_213, param, 'inputStream', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I|Ljava/io/IOException;#inputStream#0#0').
name_ref(p_input_stream_215, param, 'inputStream', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)J|Ljava/io/IOException;#inputStream#0#0').
name_ref(p_input_stream_246, param, 'inputStream', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;)J|Ljava/io/IOException;#inputStream#0#0').
name_ref(p_input_stream_248, param, 'inputStream', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;[B)J|Ljava/io/IOException;#inputStream#0#0').
name_ref(p_input_stream_360, param, 'inputStream', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/io/InputStream;)[B|Ljava/io/IOException;#inputStream#0#0').
name_ref(p_input_stream_376, param, 'inputStream', 'Lorg/apache/commons/io/IOUtils;.toCharArray(Ljava/io/InputStream;)[C|Ljava/io/IOException;#inputStream#0#0').
name_ref(p_input_stream_377, param, 'inputStream', 'Lorg/apache/commons/io/IOUtils;.toCharArray(Ljava/io/InputStream;Ljava/nio/charset/Charset;)[C|Ljava/io/IOException;#inputStream#0#0').
name_ref(p_input_stream_379, param, 'inputStream', 'Lorg/apache/commons/io/IOUtils;.toCharArray(Ljava/io/InputStream;Ljava/lang/String;)[C|Ljava/io/IOException;#inputStream#0#0').
name_ref(p_instant_613, param, 'instant', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;Ljava/time/Instant;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#instant#0#1').
name_ref(p_instant_624, param, 'instant', 'Lorg/apache/commons/io/file/PathUtils;.isOlder(Ljava/nio/file/Path;Ljava/time/Instant;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#instant#0#1').
name_ref(p_io_case_122, param, 'ioCase', 'Lorg/apache/commons/io/FilenameUtils;.wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Z#ioCase#0#2').
name_ref(p_io_case_129, param, 'ioCase', 'Lorg/apache/commons/io/IOCase;.isCaseSensitive(Lorg/apache/commons/io/IOCase;)Z#ioCase#0#0').
name_ref(p_io_case_71, param, 'ioCase', 'Lorg/apache/commons/io/FilenameUtils;.equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/commons/io/IOCase;)Z#ioCase#0#3').
name_ref(p_io_case_857, param, 'ioCase', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.nameFileFilter(Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Lorg/apache/commons/io/filefilter/IOFileFilter;#ioCase#0#1').
name_ref(p_io_case_864, param, 'ioCase', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.prefixFileFilter(Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Lorg/apache/commons/io/filefilter/IOFileFilter;#ioCase#0#1').
name_ref(p_io_case_872, param, 'ioCase', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.suffixFileFilter(Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Lorg/apache/commons/io/filefilter/IOFileFilter;#ioCase#0#1').
name_ref(p_io_case_890, param, 'ioCase', 'Lorg/apache/commons/io/filefilter/NameFileFilter;.(Ljava/util/List<Ljava/lang/String;>;Lorg/apache/commons/io/IOCase;)V#ioCase#0#1').
name_ref(p_io_case_896, param, 'ioCase', 'Lorg/apache/commons/io/filefilter/NameFileFilter;.(Ljava/lang/String;Lorg/apache/commons/io/IOCase;)V#ioCase#0#1').
name_ref(p_io_case_898, param, 'ioCase', 'Lorg/apache/commons/io/filefilter/NameFileFilter;.([Ljava/lang/String;Lorg/apache/commons/io/IOCase;)V#ioCase#0#1').
name_ref(p_io_case_906, param, 'ioCase', 'Lorg/apache/commons/io/filefilter/NameFileFilter;.toIOCase(Lorg/apache/commons/io/IOCase;)Lorg/apache/commons/io/IOCase;#ioCase#0#0').
name_ref(p_io_file_filter_769, param, 'ioFileFilter', 'Lorg/apache/commons/io/filefilter/AndFileFilter;.removeFileFilter(Lorg/apache/commons/io/filefilter/IOFileFilter;)Z#ioFileFilter#0#0').
name_ref(p_iterator_1_203, param, 'iterator1', 'Lorg/apache/commons/io/IOUtils;.contentEquals(Ljava/util/Iterator<*>;Ljava/util/Iterator<*>;)Z#iterator1#0#0').
name_ref(p_iterator_2_204, param, 'iterator2', 'Lorg/apache/commons/io/IOUtils;.contentEquals(Ljava/util/Iterator<*>;Ljava/util/Iterator<*>;)Z#iterator2#0#1').
name_ref(p_keep_separator_65, param, 'keepSeparator', 'Lorg/apache/commons/io/FilenameUtils;.doNormalize(Ljava/lang/String;CZ)Ljava/lang/String;#keepSeparator#0#2').
name_ref(p_left_753, param, 'left', 'Lorg/apache/commons/io/filefilter/AbstractFilterTest;.equalsLastModified(Ljava/io/File;Ljava/io/File;)Z|Ljava/io/IOException;#left#0#0').
name_ref(p_length_254, param, 'length', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;JJ)J|Ljava/io/IOException;#length#0#3').
name_ref(p_length_258, param, 'length', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;JJ[B)J|Ljava/io/IOException;#length#0#3').
name_ref(p_length_268, param, 'length', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/Reader;Ljava/io/Writer;JJ)J|Ljava/io/IOException;#length#0#3').
name_ref(p_length_272, param, 'length', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/Reader;Ljava/io/Writer;JJ[C)J|Ljava/io/IOException;#length#0#3').
name_ref(p_length_290, param, 'length', 'Lorg/apache/commons/io/IOUtils;.read(Ljava/io/InputStream;[BII)I|Ljava/io/IOException;#length#0#3').
name_ref(p_length_294, param, 'length', 'Lorg/apache/commons/io/IOUtils;.read(Lorg/apache/commons/io/function/IOTriFunction<[BLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;>;[BII)I|Ljava/io/IOException;#length#0#3').
name_ref(p_length_302, param, 'length', 'Lorg/apache/commons/io/IOUtils;.read(Ljava/io/Reader;[CII)I|Ljava/io/IOException;#length#0#3').
name_ref(p_length_308, param, 'length', 'Lorg/apache/commons/io/IOUtils;.readFully(Ljava/io/InputStream;[BII)V|Ljava/io/IOException;#length#0#3').
name_ref(p_length_310, param, 'length', 'Lorg/apache/commons/io/IOUtils;.readFully(Ljava/io/InputStream;I)[B|Ljava/io/IOException;#length#0#1').
name_ref(p_length_318, param, 'length', 'Lorg/apache/commons/io/IOUtils;.readFully(Ljava/io/Reader;[CII)V|Ljava/io/IOException;#length#0#3').
name_ref(p_line_ending_468, param, 'lineEnding', 'Lorg/apache/commons/io/IOUtils;.writeLines(Ljava/util/Collection<*>;Ljava/lang/String;Ljava/io/OutputStream;)V|Ljava/io/IOException;#lineEnding#0#1').
name_ref(p_line_ending_471, param, 'lineEnding', 'Lorg/apache/commons/io/IOUtils;.writeLines(Ljava/util/Collection<*>;Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#lineEnding#0#1').
name_ref(p_line_ending_475, param, 'lineEnding', 'Lorg/apache/commons/io/IOUtils;.writeLines(Ljava/util/Collection<*>;Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;#lineEnding#0#1').
name_ref(p_line_ending_479, param, 'lineEnding', 'Lorg/apache/commons/io/IOUtils;.writeLines(Ljava/util/Collection<*>;Ljava/lang/String;Ljava/io/Writer;)V|Ljava/io/IOException;#lineEnding#0#1').
name_ref(p_line_separator_483, param, 'lineSeparator', 'Lorg/apache/commons/io/StandardLineSeparator;.(Ljava/lang/String;ILjava/lang/String;)V#lineSeparator#0#0').
name_ref(p_lines_467, param, 'lines', 'Lorg/apache/commons/io/IOUtils;.writeLines(Ljava/util/Collection<*>;Ljava/lang/String;Ljava/io/OutputStream;)V|Ljava/io/IOException;#lines#0#0').
name_ref(p_lines_470, param, 'lines', 'Lorg/apache/commons/io/IOUtils;.writeLines(Ljava/util/Collection<*>;Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#lines#0#0').
name_ref(p_lines_474, param, 'lines', 'Lorg/apache/commons/io/IOUtils;.writeLines(Ljava/util/Collection<*>;Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;#lines#0#0').
name_ref(p_lines_478, param, 'lines', 'Lorg/apache/commons/io/IOUtils;.writeLines(Ljava/util/Collection<*>;Ljava/lang/String;Ljava/io/Writer;)V|Ljava/io/IOException;#lines#0#0').
name_ref(p_link_option_531, param, 'linkOption', 'Lorg/apache/commons/io/file/PathUtils;.createParentDirectories(Ljava/nio/file/Path;Ljava/nio/file/LinkOption;[Ljava/nio/file/attribute/FileAttribute<*>;)Ljava/nio/file/Path;|Ljava/io/IOException;#linkOption#0#1').
name_ref(p_link_options_489, param, 'linkOptions', 'Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;.(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;)V|Ljava/io/IOException;#linkOptions#0#3').
name_ref(p_link_options_537, param, 'linkOptions', 'Lorg/apache/commons/io/file/PathUtils;.delete(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#linkOptions#0#1').
name_ref(p_link_options_543, param, 'linkOptions', 'Lorg/apache/commons/io/file/PathUtils;.deleteDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#linkOptions#0#1').
name_ref(p_link_options_549, param, 'linkOptions', 'Lorg/apache/commons/io/file/PathUtils;.deleteFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/nio/file/NoSuchFileException;|Ljava/io/IOException;#linkOptions#0#1').
name_ref(p_link_options_556, param, 'linkOptions', 'Lorg/apache/commons/io/file/PathUtils;.directoryAndFileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;[Ljava/nio/file/FileVisitOption;)Z|Ljava/io/IOException;#linkOptions#0#2').
name_ref(p_link_options_564, param, 'linkOptions', 'Lorg/apache/commons/io/file/PathUtils;.directoryContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;)Z|Ljava/io/IOException;#linkOptions#0#3').
name_ref(p_link_options_572, param, 'linkOptions', 'Lorg/apache/commons/io/file/PathUtils;.fileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;)Z|Ljava/io/IOException;#linkOptions#0#2').
name_ref(p_link_options_640, param, 'linkOptions', 'Lorg/apache/commons/io/file/PathUtils;.newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;|Ljava/io/IOException;#linkOptions#0#1').
name_ref(p_link_options_670, param, 'linkOptions', 'Lorg/apache/commons/io/file/PathUtils;.setDosReadOnly(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#linkOptions#0#2').
name_ref(p_link_options_675, param, 'linkOptions', 'Lorg/apache/commons/io/file/PathUtils;.setPosixDeletePermissions(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#linkOptions#0#2').
name_ref(p_link_options_679, param, 'linkOptions', 'Lorg/apache/commons/io/file/PathUtils;.setPosixPermissions(Ljava/nio/file/Path;ZLjava/util/List<Ljava/nio/file/attribute/PosixFilePermission;>;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#linkOptions#0#3').
name_ref(p_link_options_682, param, 'linkOptions', 'Lorg/apache/commons/io/file/PathUtils;.setPosixReadOnlyFile(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)V|Ljava/io/IOException;#linkOptions#0#2').
name_ref(p_link_options_685, param, 'linkOptions', 'Lorg/apache/commons/io/file/PathUtils;.setReadOnly(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#linkOptions#0#2').
name_ref(p_link_options_712, param, 'linkOptions', 'Lorg/apache/commons/io/file/PathUtils;.withPosixFileAttributes<R:Ljava/lang/Object;>(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;ZLorg/apache/commons/io/function/IOFunction<Ljava/nio/file/attribute/PosixFileAttributes;TR;>;)TR;|Ljava/io/IOException;#linkOptions#0#1').
name_ref(p_list_729, param, 'list', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.append(Ljava/util/List<*>;Ljava/lang/StringBuilder;)V#list#0#0').
name_ref(p_magic_number_845, param, 'magicNumber', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.magicNumberFileFilter([B)Lorg/apache/commons/io/filefilter/IOFileFilter;#magicNumber#0#0').
name_ref(p_magic_number_846, param, 'magicNumber', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.magicNumberFileFilter([BJ)Lorg/apache/commons/io/filefilter/IOFileFilter;#magicNumber#0#0').
name_ref(p_magic_number_848, param, 'magicNumber', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.magicNumberFileFilter(Ljava/lang/String;)Lorg/apache/commons/io/filefilter/IOFileFilter;#magicNumber#0#0').
name_ref(p_magic_number_849, param, 'magicNumber', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.magicNumberFileFilter(Ljava/lang/String;J)Lorg/apache/commons/io/filefilter/IOFileFilter;#magicNumber#0#0').
name_ref(p_max_depth_488, param, 'maxDepth', 'Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;.(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;)V|Ljava/io/IOException;#maxDepth#0#2').
name_ref(p_max_depth_503, param, 'maxDepth', 'Lorg/apache/commons/io/file/PathUtils;.accumulate(Ljava/nio/file/Path;I[Ljava/nio/file/FileVisitOption;)Lorg/apache/commons/io/file/AccumulatorPathVisitor;|Ljava/io/IOException;#maxDepth#0#1').
name_ref(p_max_depth_563, param, 'maxDepth', 'Lorg/apache/commons/io/file/PathUtils;.directoryContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;)Z|Ljava/io/IOException;#maxDepth#0#2').
name_ref(p_max_depth_697, param, 'maxDepth', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/nio/file/Path;Ljava/util/Set<Ljava/nio/file/FileVisitOption;>;I)TT;|Ljava/io/IOException;#maxDepth#0#3').
name_ref(p_max_depth_708, param, 'maxDepth', 'Lorg/apache/commons/io/file/PathUtils;.walk(Ljava/nio/file/Path;Lorg/apache/commons/io/file/PathFilter;IZ[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream<Ljava/nio/file/Path;>;|Ljava/io/IOException;#maxDepth#0#2').
name_ref(p_max_file_length_23, param, 'maxFileLength', 'Lorg/apache/commons/io/FileSystem;.(Ljava/lang/String;IIZZII[I[Ljava/lang/String;ZZC)V#maxFileLength#0#3').
name_ref(p_max_path_length_24, param, 'maxPathLength', 'Lorg/apache/commons/io/FileSystem;.(Ljava/lang/String;IIZZII[I[Ljava/lang/String;ZZC)V#maxPathLength#0#4').
name_ref(p_max_size_inclusive_869, param, 'maxSizeInclusive', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.sizeRangeFileFilter(JJ)Lorg/apache/commons/io/filefilter/IOFileFilter;#maxSizeInclusive#0#1').
name_ref(p_millis_945, param, 'millis', 'Lorg/apache/commons/io/test/TestUtils;.sleep(J)V|Ljava/lang/InterruptedException;#millis#0#0').
name_ref(p_millis_946, param, 'millis', 'Lorg/apache/commons/io/test/TestUtils;.sleepQuietly(J)V#millis#0#0').
name_ref(p_min_size_inclusive_868, param, 'minSizeInclusive', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.sizeRangeFileFilter(JJ)Lorg/apache/commons/io/filefilter/IOFileFilter;#minSizeInclusive#0#0').
name_ref(p_more_700, param, 'more', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/lang/String;[Ljava/lang/String;)TT;|Ljava/io/IOException;#more#0#2').
name_ref(p_name_100, param, 'name', 'Lorg/apache/commons/io/FilenameUtils;.isIPv4Address(Ljava/lang/String;)Z#name#0#0').
name_ref(p_name_102, param, 'name', 'Lorg/apache/commons/io/FilenameUtils;.isRFC3986HostName(Ljava/lang/String;)Z#name#0#0').
name_ref(p_name_104, param, 'name', 'Lorg/apache/commons/io/FilenameUtils;.isValidHostName(Ljava/lang/String;)Z#name#0#0').
name_ref(p_name_128, param, 'name', 'Lorg/apache/commons/io/IOCase;.forName(Ljava/lang/String;)Lorg/apache/commons/io/IOCase;#name#0#0').
name_ref(p_name_132, param, 'name', 'Lorg/apache/commons/io/IOCase;.(Ljava/lang/String;ILjava/lang/String;Z)V#name#0#0').
name_ref(p_name_325, param, 'name', 'Lorg/apache/commons/io/IOUtils;.resourceToByteArray(Ljava/lang/String;)[B|Ljava/io/IOException;#name#0#0').
name_ref(p_name_326, param, 'name', 'Lorg/apache/commons/io/IOUtils;.resourceToByteArray(Ljava/lang/String;Ljava/lang/ClassLoader;)[B|Ljava/io/IOException;#name#0#0').
name_ref(p_name_328, param, 'name', 'Lorg/apache/commons/io/IOUtils;.resourceToString(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;|Ljava/io/IOException;#name#0#0').
name_ref(p_name_330, param, 'name', 'Lorg/apache/commons/io/IOUtils;.resourceToString(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/ClassLoader;)Ljava/lang/String;|Ljava/io/IOException;#name#0#0').
name_ref(p_name_333, param, 'name', 'Lorg/apache/commons/io/IOUtils;.resourceToURL(Ljava/lang/String;)Ljava/net/URL;|Ljava/io/IOException;#name#0#0').
name_ref(p_name_334, param, 'name', 'Lorg/apache/commons/io/IOUtils;.resourceToURL(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/net/URL;|Ljava/io/IOException;#name#0#0').
name_ref(p_name_728, param, 'name', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.accept(Ljava/io/File;Ljava/lang/String;)Z#name#0#1').
name_ref(p_name_764, param, 'name', 'Lorg/apache/commons/io/filefilter/AndFileFilter;.accept(Ljava/io/File;Ljava/lang/String;)Z#name#0#1').
name_ref(p_name_855, param, 'name', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.nameFileFilter(Ljava/lang/String;)Lorg/apache/commons/io/filefilter/IOFileFilter;#name#0#0').
name_ref(p_name_856, param, 'name', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.nameFileFilter(Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Lorg/apache/commons/io/filefilter/IOFileFilter;#name#0#0').
name_ref(p_name_882, param, 'name', 'Lorg/apache/commons/io/filefilter/IOFileFilter;.accept(Ljava/io/File;Ljava/lang/String;)Z#name#0#1').
name_ref(p_name_893, param, 'name', 'Lorg/apache/commons/io/filefilter/NameFileFilter;.(Ljava/lang/String;)V#name#0#0').
name_ref(p_name_895, param, 'name', 'Lorg/apache/commons/io/filefilter/NameFileFilter;.(Ljava/lang/String;Lorg/apache/commons/io/IOCase;)V#name#0#0').
name_ref(p_name_901, param, 'name', 'Lorg/apache/commons/io/filefilter/NameFileFilter;.accept(Ljava/io/File;Ljava/lang/String;)Z#name#0#1').
name_ref(p_name_912, param, 'name', 'Lorg/apache/commons/io/filefilter/NotFileFilter;.accept(Ljava/io/File;Ljava/lang/String;)Z#name#0#1').
name_ref(p_name_separator_29, param, 'nameSeparator', 'Lorg/apache/commons/io/FileSystem;.(Ljava/lang/String;IIZZII[I[Ljava/lang/String;ZZC)V#nameSeparator#0#9').
name_ref(p_names_888, param, 'names', 'Lorg/apache/commons/io/filefilter/NameFileFilter;.(Ljava/util/List<Ljava/lang/String;>;)V#names#0#0').
name_ref(p_names_889, param, 'names', 'Lorg/apache/commons/io/filefilter/NameFileFilter;.(Ljava/util/List<Ljava/lang/String;>;Lorg/apache/commons/io/IOCase;)V#names#0#0').
name_ref(p_names_894, param, 'names', 'Lorg/apache/commons/io/filefilter/NameFileFilter;.([Ljava/lang/String;)V#names#0#0').
name_ref(p_names_897, param, 'names', 'Lorg/apache/commons/io/filefilter/NameFileFilter;.([Ljava/lang/String;Lorg/apache/commons/io/IOCase;)V#names#0#0').
name_ref(p_new_char_19, param, 'newChar', 'Lorg/apache/commons/io/FileSystem;.replace(Ljava/lang/String;CC)Ljava/lang/String;#newChar#0#2').
name_ref(p_normalize_70, param, 'normalize', 'Lorg/apache/commons/io/FilenameUtils;.equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/commons/io/IOCase;)Z#normalize#0#2').
name_ref(p_offset_289, param, 'offset', 'Lorg/apache/commons/io/IOUtils;.read(Ljava/io/InputStream;[BII)I|Ljava/io/IOException;#offset#0#2').
name_ref(p_offset_293, param, 'offset', 'Lorg/apache/commons/io/IOUtils;.read(Lorg/apache/commons/io/function/IOTriFunction<[BLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;>;[BII)I|Ljava/io/IOException;#offset#0#2').
name_ref(p_offset_301, param, 'offset', 'Lorg/apache/commons/io/IOUtils;.read(Ljava/io/Reader;[CII)I|Ljava/io/IOException;#offset#0#2').
name_ref(p_offset_307, param, 'offset', 'Lorg/apache/commons/io/IOUtils;.readFully(Ljava/io/InputStream;[BII)V|Ljava/io/IOException;#offset#0#2').
name_ref(p_offset_317, param, 'offset', 'Lorg/apache/commons/io/IOUtils;.readFully(Ljava/io/Reader;[CII)V|Ljava/io/IOException;#offset#0#2').
name_ref(p_offset_847, param, 'offset', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.magicNumberFileFilter([BJ)Lorg/apache/commons/io/filefilter/IOFileFilter;#offset#0#1').
name_ref(p_offset_850, param, 'offset', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.magicNumberFileFilter(Ljava/lang/String;J)Lorg/apache/commons/io/filefilter/IOFileFilter;#offset#0#1').
name_ref(p_old_char_18, param, 'oldChar', 'Lorg/apache/commons/io/FileSystem;.replace(Ljava/lang/String;CC)Ljava/lang/String;#oldChar#0#1').
name_ref(p_on_accept_722, param, 'onAccept', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.(Ljava/nio/file/FileVisitResult;Ljava/nio/file/FileVisitResult;)V#onAccept#0#0').
name_ref(p_on_reject_723, param, 'onReject', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.(Ljava/nio/file/FileVisitResult;Ljava/nio/file/FileVisitResult;)V#onReject#0#1').
name_ref(p_open_options_557, param, 'openOptions', 'Lorg/apache/commons/io/file/PathUtils;.directoryAndFileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;[Ljava/nio/file/FileVisitOption;)Z|Ljava/io/IOException;#openOptions#0#3').
name_ref(p_open_options_573, param, 'openOptions', 'Lorg/apache/commons/io/file/PathUtils;.fileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;)Z|Ljava/io/IOException;#openOptions#0#3').
name_ref(p_open_options_641, param, 'openOptions', 'Lorg/apache/commons/io/file/PathUtils;.newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;|Ljava/io/IOException;#openOptions#0#2').
name_ref(p_open_options_718, param, 'openOptions', 'Lorg/apache/commons/io/file/PathUtils;.writeString(Ljava/nio/file/Path;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#openOptions#0#3').
name_ref(p_options_510, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.compareLastModifiedTimeTo(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)I|Ljava/io/IOException;#options#0#2').
name_ref(p_options_567, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z#options#0#1').
name_ref(p_options_581, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.getAclFileAttributeView(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/AclFileAttributeView;#options#0#1').
name_ref(p_options_583, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.getDosFileAttributeView(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/DosFileAttributeView;#options#0#1').
name_ref(p_options_591, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.getLastModifiedFileTime(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;|Ljava/io/IOException;#options#0#2').
name_ref(p_options_593, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.getLastModifiedFileTime(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;|Ljava/io/IOException;#options#0#1').
name_ref(p_options_597, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.getLastModifiedTime(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;|Ljava/io/IOException;#options#0#1').
name_ref(p_options_600, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.getPosixFileAttributeView(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/PosixFileAttributeView;#options#0#1').
name_ref(p_options_602, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z#options#0#1').
name_ref(p_options_608, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;Ljava/time/chrono/ChronoZonedDateTime<*>;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#options#0#2').
name_ref(p_options_611, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#options#0#2').
name_ref(p_options_614, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;Ljava/time/Instant;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#options#0#2').
name_ref(p_options_617, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;J[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#options#0#2').
name_ref(p_options_622, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.isOlder(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#options#0#2').
name_ref(p_options_625, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.isOlder(Ljava/nio/file/Path;Ljava/time/Instant;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#options#0#2').
name_ref(p_options_628, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.isOlder(Ljava/nio/file/Path;J[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#options#0#2').
name_ref(p_options_632, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.isPosix(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z#options#0#1').
name_ref(p_options_634, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z#options#0#1').
name_ref(p_options_643, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.notExists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z#options#0#1').
name_ref(p_options_647, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.readAttributes<A::Ljava/nio/file/attribute/BasicFileAttributes;>(Ljava/nio/file/Path;Ljava/lang/Class<TA;>;[Ljava/nio/file/LinkOption;)TA;#options#0#2').
name_ref(p_options_650, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.readBasicFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;#options#0#1').
name_ref(p_options_653, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.readDosFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/DosFileAttributes;#options#0#1').
name_ref(p_options_656, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.readOsFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;#options#0#1').
name_ref(p_options_658, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.readPosixFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/PosixFileAttributes;#options#0#1').
name_ref(p_options_667, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.requireExists(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;#options#0#2').
name_ref(p_options_696, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/nio/file/Path;Ljava/util/Set<Ljava/nio/file/FileVisitOption;>;I)TT;|Ljava/io/IOException;#options#0#2').
name_ref(p_options_705, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.waitFor(Ljava/nio/file/Path;Ljava/time/Duration;[Ljava/nio/file/LinkOption;)Z#options#0#2').
name_ref(p_options_710, param, 'options', 'Lorg/apache/commons/io/file/PathUtils;.walk(Ljava/nio/file/Path;Lorg/apache/commons/io/file/PathFilter;IZ[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream<Ljava/nio/file/Path;>;|Ljava/io/IOException;#options#0#4').
name_ref(p_os_name_15, param, 'osName', 'Lorg/apache/commons/io/FileSystem;.isOsNameMatch(Ljava/lang/String;Ljava/lang/String;)Z#osName#0#0').
name_ref(p_os_name_prefix_10, param, 'osNamePrefix', 'Lorg/apache/commons/io/FileSystem;.getOsMatchesName(Ljava/lang/String;)Z#osNamePrefix#0#0').
name_ref(p_os_name_prefix_16, param, 'osNamePrefix', 'Lorg/apache/commons/io/FileSystem;.isOsNameMatch(Ljava/lang/String;Ljava/lang/String;)Z#osNamePrefix#0#1').
name_ref(p_out_940, param, 'out', 'Lorg/apache/commons/io/test/TestUtils;.generateTestData(Ljava/io/OutputStream;J)V|Ljava/io/IOException;#out#0#0').
name_ref(p_output_192, param, 'output', 'Lorg/apache/commons/io/IOUtils;.closeQuietly(Ljava/io/OutputStream;)V#output#0#0').
name_ref(p_output_228, param, 'output', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/Reader;Ljava/lang/Appendable;)J|Ljava/io/IOException;#output#0#1').
name_ref(p_output_230, param, 'output', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/Reader;Ljava/lang/Appendable;Ljava/nio/CharBuffer;)J|Ljava/io/IOException;#output#0#1').
name_ref(p_output_233, param, 'output', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/Reader;Ljava/io/OutputStream;)V|Ljava/io/IOException;#output#0#1').
name_ref(p_output_235, param, 'output', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/Reader;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#output#0#1').
name_ref(p_output_238, param, 'output', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/Reader;Ljava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;#output#0#1').
name_ref(p_output_252, param, 'output', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;JJ)J|Ljava/io/IOException;#output#0#1').
name_ref(p_output_256, param, 'output', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;JJ[B)J|Ljava/io/IOException;#output#0#1').
name_ref(p_output_417, param, 'output', 'Lorg/apache/commons/io/IOUtils;.write([BLjava/io/OutputStream;)V|Ljava/io/IOException;#output#0#1').
name_ref(p_output_427, param, 'output', 'Lorg/apache/commons/io/IOUtils;.write([CLjava/io/OutputStream;)V|Ljava/io/IOException;#output#0#1').
name_ref(p_output_429, param, 'output', 'Lorg/apache/commons/io/IOUtils;.write([CLjava/io/OutputStream;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#output#0#1').
name_ref(p_output_432, param, 'output', 'Lorg/apache/commons/io/IOUtils;.write([CLjava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;#output#0#1').
name_ref(p_output_437, param, 'output', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/CharSequence;Ljava/io/OutputStream;)V|Ljava/io/IOException;#output#0#1').
name_ref(p_output_439, param, 'output', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/CharSequence;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#output#0#1').
name_ref(p_output_442, param, 'output', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/CharSequence;Ljava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;#output#0#1').
name_ref(p_output_447, param, 'output', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/String;Ljava/io/OutputStream;)V|Ljava/io/IOException;#output#0#1').
name_ref(p_output_449, param, 'output', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#output#0#1').
name_ref(p_output_452, param, 'output', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;#output#0#1').
name_ref(p_output_457, param, 'output', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/StringBuffer;Ljava/io/OutputStream;)V|Ljava/io/IOException;#output#0#1').
name_ref(p_output_459, param, 'output', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/StringBuffer;Ljava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;#output#0#1').
name_ref(p_output_464, param, 'output', 'Lorg/apache/commons/io/IOUtils;.writeChunked([BLjava/io/OutputStream;)V|Ljava/io/IOException;#output#0#1').
name_ref(p_output_469, param, 'output', 'Lorg/apache/commons/io/IOUtils;.writeLines(Ljava/util/Collection<*>;Ljava/lang/String;Ljava/io/OutputStream;)V|Ljava/io/IOException;#output#0#2').
name_ref(p_output_472, param, 'output', 'Lorg/apache/commons/io/IOUtils;.writeLines(Ljava/util/Collection<*>;Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#output#0#2').
name_ref(p_output_476, param, 'output', 'Lorg/apache/commons/io/IOUtils;.writeLines(Ljava/util/Collection<*>;Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;#output#0#2').
name_ref(p_output_928, param, 'output', 'Lorg/apache/commons/io/test/TestUtils;.checkWrite(Ljava/io/OutputStream;)V#output#0#0').
name_ref(p_output_929, param, 'output', 'Lorg/apache/commons/io/test/TestUtils;.checkWrite(Ljava/io/Writer;)V#output#0#0').
name_ref(p_output_charset_236, param, 'outputCharset', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/Reader;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#outputCharset#0#2').
name_ref(p_output_charset_name_239, param, 'outputCharsetName', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/Reader;Ljava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;#outputCharsetName#0#2').
name_ref(p_output_stream_168, param, 'outputStream', 'Lorg/apache/commons/io/IOUtils;.buffer(Ljava/io/OutputStream;)Ljava/io/BufferedOutputStream;#outputStream#0#0').
name_ref(p_output_stream_169, param, 'outputStream', 'Lorg/apache/commons/io/IOUtils;.buffer(Ljava/io/OutputStream;I)Ljava/io/BufferedOutputStream;#outputStream#0#0').
name_ref(p_output_stream_214, param, 'outputStream', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I|Ljava/io/IOException;#outputStream#0#1').
name_ref(p_output_stream_216, param, 'outputStream', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)J|Ljava/io/IOException;#outputStream#0#1').
name_ref(p_output_stream_226, param, 'outputStream', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/ByteArrayOutputStream;)Lorg/apache/commons/io/input/QueueInputStream;|Ljava/io/IOException;#outputStream#0#0').
name_ref(p_output_stream_245, param, 'outputStream', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/net/URL;Ljava/io/OutputStream;)J|Ljava/io/IOException;#outputStream#0#1').
name_ref(p_output_stream_247, param, 'outputStream', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;)J|Ljava/io/IOException;#outputStream#0#1').
name_ref(p_output_stream_249, param, 'outputStream', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;[B)J|Ljava/io/IOException;#outputStream#0#1').
name_ref(p_override_read_only_713, param, 'overrideReadOnly', 'Lorg/apache/commons/io/file/PathUtils;.withPosixFileAttributes<R:Ljava/lang/Object;>(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;ZLorg/apache/commons/io/function/IOFunction<Ljava/nio/file/attribute/PosixFileAttributes;TR;>;)TR;|Ljava/io/IOException;#overrideReadOnly#0#2').
name_ref(p_parent_662, param, 'parent', 'Lorg/apache/commons/io/file/PathUtils;.relativize(Ljava/util/Collection<Ljava/nio/file/Path;>;Ljava/nio/file/Path;ZLjava/util/Comparator<-Ljava/nio/file/Path;>;)Ljava/util/List<Ljava/nio/file/Path;>;#parent#0#1').
name_ref(p_parent_673, param, 'parent', 'Lorg/apache/commons/io/file/PathUtils;.setPosixDeletePermissions(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#parent#0#0').
name_ref(p_path_112, param, 'path', 'Lorg/apache/commons/io/FilenameUtils;.requireNonNullChars(Ljava/lang/String;)Ljava/lang/String;#path#0#0').
name_ref(p_path_113, param, 'path', 'Lorg/apache/commons/io/FilenameUtils;.separatorsToSystem(Ljava/lang/String;)Ljava/lang/String;#path#0#0').
name_ref(p_path_114, param, 'path', 'Lorg/apache/commons/io/FilenameUtils;.separatorsToUnix(Ljava/lang/String;)Ljava/lang/String;#path#0#0').
name_ref(p_path_115, param, 'path', 'Lorg/apache/commons/io/FilenameUtils;.separatorsToWindows(Ljava/lang/String;)Ljava/lang/String;#path#0#0').
name_ref(p_path_17, param, 'path', 'Lorg/apache/commons/io/FileSystem;.replace(Ljava/lang/String;CC)Ljava/lang/String;#path#0#0').
name_ref(p_path_1_552, param, 'path1', 'Lorg/apache/commons/io/file/PathUtils;.directoryAndFileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z|Ljava/io/IOException;#path1#0#0').
name_ref(p_path_1_554, param, 'path1', 'Lorg/apache/commons/io/file/PathUtils;.directoryAndFileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;[Ljava/nio/file/FileVisitOption;)Z|Ljava/io/IOException;#path1#0#0').
name_ref(p_path_1_559, param, 'path1', 'Lorg/apache/commons/io/file/PathUtils;.directoryContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z|Ljava/io/IOException;#path1#0#0').
name_ref(p_path_1_561, param, 'path1', 'Lorg/apache/commons/io/file/PathUtils;.directoryContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;)Z|Ljava/io/IOException;#path1#0#0').
name_ref(p_path_1_568, param, 'path1', 'Lorg/apache/commons/io/file/PathUtils;.fileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z|Ljava/io/IOException;#path1#0#0').
name_ref(p_path_1_570, param, 'path1', 'Lorg/apache/commons/io/file/PathUtils;.fileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;)Z|Ljava/io/IOException;#path1#0#0').
name_ref(p_path_2_553, param, 'path2', 'Lorg/apache/commons/io/file/PathUtils;.directoryAndFileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z|Ljava/io/IOException;#path2#0#1').
name_ref(p_path_2_555, param, 'path2', 'Lorg/apache/commons/io/file/PathUtils;.directoryAndFileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;[Ljava/nio/file/FileVisitOption;)Z|Ljava/io/IOException;#path2#0#1').
name_ref(p_path_2_560, param, 'path2', 'Lorg/apache/commons/io/file/PathUtils;.directoryContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z|Ljava/io/IOException;#path2#0#1').
name_ref(p_path_2_562, param, 'path2', 'Lorg/apache/commons/io/file/PathUtils;.directoryContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;)Z|Ljava/io/IOException;#path2#0#1').
name_ref(p_path_2_569, param, 'path2', 'Lorg/apache/commons/io/file/PathUtils;.fileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z|Ljava/io/IOException;#path2#0#1').
name_ref(p_path_2_571, param, 'path2', 'Lorg/apache/commons/io/file/PathUtils;.fileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;)Z|Ljava/io/IOException;#path2#0#1').
name_ref(p_path_44, param, 'path', 'Lorg/apache/commons/io/FileSystem;.normalizeSeparators(Ljava/lang/String;)Ljava/lang/String;#path#0#0').
name_ref(p_path_528, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.createParentDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute<*>;)Ljava/nio/file/Path;|Ljava/io/IOException;#path#0#0').
name_ref(p_path_530, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.createParentDirectories(Ljava/nio/file/Path;Ljava/nio/file/LinkOption;[Ljava/nio/file/attribute/FileAttribute<*>;)Ljava/nio/file/Path;|Ljava/io/IOException;#path#0#0').
name_ref(p_path_533, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.delete(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#path#0#0').
name_ref(p_path_534, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.delete(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#path#0#0').
name_ref(p_path_536, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.delete(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#path#0#0').
name_ref(p_path_551, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.deleteOnExit(Ljava/nio/file/Path;)V#path#0#0').
name_ref(p_path_566, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z#path#0#0').
name_ref(p_path_580, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.getAclFileAttributeView(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/AclFileAttributeView;#path#0#0').
name_ref(p_path_582, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.getDosFileAttributeView(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/DosFileAttributeView;#path#0#0').
name_ref(p_path_584, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.getFileName<R:Ljava/lang/Object;>(Ljava/nio/file/Path;Ljava/util/function/Function<Ljava/nio/file/Path;TR;>;)TR;#path#0#0').
name_ref(p_path_587, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.getFileNameString(Ljava/nio/file/Path;)Ljava/lang/String;#path#0#0').
name_ref(p_path_589, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.getLastModifiedFileTime(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;|Ljava/io/IOException;#path#0#0').
name_ref(p_path_592, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.getLastModifiedFileTime(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;|Ljava/io/IOException;#path#0#0').
name_ref(p_path_596, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.getLastModifiedTime(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;|Ljava/io/IOException;#path#0#0').
name_ref(p_path_598, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.getParent(Ljava/nio/file/Path;)Ljava/nio/file/Path;#path#0#0').
name_ref(p_path_599, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.getPosixFileAttributeView(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/PosixFileAttributeView;#path#0#0').
name_ref(p_path_601, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z#path#0#0').
name_ref(p_path_603, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.isEmpty(Ljava/nio/file/Path;)Z|Ljava/io/IOException;#path#0#0').
name_ref(p_path_633, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z#path#0#0').
name_ref(p_path_637, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.newOutputStream(Ljava/nio/file/Path;Z)Ljava/io/OutputStream;|Ljava/io/IOException;#path#0#0').
name_ref(p_path_639, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;|Ljava/io/IOException;#path#0#0').
name_ref(p_path_642, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.notExists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z#path#0#0').
name_ref(p_path_645, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.readAttributes<A::Ljava/nio/file/attribute/BasicFileAttributes;>(Ljava/nio/file/Path;Ljava/lang/Class<TA;>;[Ljava/nio/file/LinkOption;)TA;#path#0#0').
name_ref(p_path_648, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.readBasicFileAttributes(Ljava/nio/file/Path;)Ljava/nio/file/attribute/BasicFileAttributes;|Ljava/io/IOException;#path#0#0').
name_ref(p_path_649, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.readBasicFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;#path#0#0').
name_ref(p_path_651, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.readBasicFileAttributesUnchecked(Ljava/nio/file/Path;)Ljava/nio/file/attribute/BasicFileAttributes;#path#0#0').
name_ref(p_path_652, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.readDosFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/DosFileAttributes;#path#0#0').
name_ref(p_path_654, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.readIfSymbolicLink(Ljava/nio/file/Path;)Ljava/nio/file/Path;|Ljava/io/IOException;#path#0#0').
name_ref(p_path_655, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.readOsFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;#path#0#0').
name_ref(p_path_657, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.readPosixFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/PosixFileAttributes;#path#0#0').
name_ref(p_path_659, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.readString(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/lang/String;|Ljava/io/IOException;#path#0#0').
name_ref(p_path_668, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.setDosReadOnly(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#path#0#0').
name_ref(p_path_676, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.setPosixPermissions(Ljava/nio/file/Path;ZLjava/util/List<Ljava/nio/file/attribute/PosixFilePermission;>;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#path#0#0').
name_ref(p_path_680, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.setPosixReadOnlyFile(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)V|Ljava/io/IOException;#path#0#0').
name_ref(p_path_683, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.setReadOnly(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#path#0#0').
name_ref(p_path_686, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.sizeOf(Ljava/nio/file/Path;)J|Ljava/io/IOException;#path#0#0').
name_ref(p_path_687, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.sizeOfAsBigInteger(Ljava/nio/file/Path;)Ljava/math/BigInteger;|Ljava/io/IOException;#path#0#0').
name_ref(p_path_711, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.withPosixFileAttributes<R:Ljava/lang/Object;>(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;ZLorg/apache/commons/io/function/IOFunction<Ljava/nio/file/attribute/PosixFileAttributes;TR;>;)TR;|Ljava/io/IOException;#path#0#0').
name_ref(p_path_715, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.writeString(Ljava/nio/file/Path;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#path#0#0').
name_ref(p_path_749, param, 'path', 'Lorg/apache/commons/io/filefilter/AbstractFilterTest;.assertFiltering(Lorg/apache/commons/io/filefilter/IOFileFilter;Ljava/nio/file/Path;Z)V#path#0#1').
name_ref(p_path_883, param, 'path', 'Lorg/apache/commons/io/filefilter/IOFileFilter;.accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;#path#0#0').
name_ref(p_path_886, param, 'path', 'Lorg/apache/commons/io/filefilter/IOFileFilter;.matches(Ljava/nio/file/Path;)Z#path#0#0').
name_ref(p_path_902, param, 'path', 'Lorg/apache/commons/io/filefilter/NameFileFilter;.accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;#path#0#0').
name_ref(p_path_filter_636, param, 'pathFilter', 'Lorg/apache/commons/io/file/PathUtils;.newDirectoryStream(Ljava/nio/file/Path;Lorg/apache/commons/io/file/PathFilter;)Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;|Ljava/io/IOException;#pathFilter#0#1').
name_ref(p_path_filter_707, param, 'pathFilter', 'Lorg/apache/commons/io/file/PathUtils;.walk(Ljava/nio/file/Path;Lorg/apache/commons/io/file/PathFilter;IZ[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream<Ljava/nio/file/Path;>;|Ljava/io/IOException;#pathFilter#0#1').
name_ref(p_paths_575, param, 'paths', 'Lorg/apache/commons/io/file/PathUtils;.filter(Lorg/apache/commons/io/file/PathFilter;[Ljava/nio/file/Path;)[Ljava/nio/file/Path;#paths#0#1').
name_ref(p_prefix_862, param, 'prefix', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.prefixFileFilter(Ljava/lang/String;)Lorg/apache/commons/io/filefilter/IOFileFilter;#prefix#0#0').
name_ref(p_prefix_863, param, 'prefix', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.prefixFileFilter(Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Lorg/apache/commons/io/filefilter/IOFileFilter;#prefix#0#0').
name_ref(p_property_11, param, 'property', 'Lorg/apache/commons/io/FileSystem;.getSystemProperty(Ljava/lang/String;)Ljava/lang/String;#property#0#0').
name_ref(p_read_attributes_709, param, 'readAttributes', 'Lorg/apache/commons/io/file/PathUtils;.walk(Ljava/nio/file/Path;Lorg/apache/commons/io/file/PathFilter;IZ[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream<Ljava/nio/file/Path;>;|Ljava/io/IOException;#readAttributes#0#3').
name_ref(p_read_only_669, param, 'readOnly', 'Lorg/apache/commons/io/file/PathUtils;.setDosReadOnly(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#readOnly#0#1').
name_ref(p_read_only_681, param, 'readOnly', 'Lorg/apache/commons/io/file/PathUtils;.setPosixReadOnlyFile(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)V|Ljava/io/IOException;#readOnly#0#1').
name_ref(p_read_only_684, param, 'readOnly', 'Lorg/apache/commons/io/file/PathUtils;.setReadOnly(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#readOnly#0#1').
name_ref(p_reader_171, param, 'reader', 'Lorg/apache/commons/io/IOUtils;.buffer(Ljava/io/Reader;)Ljava/io/BufferedReader;#reader#0#0').
name_ref(p_reader_172, param, 'reader', 'Lorg/apache/commons/io/IOUtils;.buffer(Ljava/io/Reader;I)Ljava/io/BufferedReader;#reader#0#0').
name_ref(p_reader_193, param, 'reader', 'Lorg/apache/commons/io/IOUtils;.closeQuietly(Ljava/io/Reader;)V#reader#0#0').
name_ref(p_reader_1_209, param, 'reader1', 'Lorg/apache/commons/io/IOUtils;.contentEqualsIgnoreEOL(Ljava/io/BufferedReader;Ljava/io/BufferedReader;)Z#reader1#0#0').
name_ref(p_reader_1_211, param, 'reader1', 'Lorg/apache/commons/io/IOUtils;.contentEqualsIgnoreEOL(Ljava/io/Reader;Ljava/io/Reader;)Z|Ljava/io/UncheckedIOException;#reader1#0#0').
name_ref(p_reader_227, param, 'reader', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/Reader;Ljava/lang/Appendable;)J|Ljava/io/IOException;#reader#0#0').
name_ref(p_reader_229, param, 'reader', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/Reader;Ljava/lang/Appendable;Ljava/nio/CharBuffer;)J|Ljava/io/IOException;#reader#0#0').
name_ref(p_reader_232, param, 'reader', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/Reader;Ljava/io/OutputStream;)V|Ljava/io/IOException;#reader#0#0').
name_ref(p_reader_234, param, 'reader', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/Reader;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#reader#0#0').
name_ref(p_reader_237, param, 'reader', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/Reader;Ljava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;#reader#0#0').
name_ref(p_reader_240, param, 'reader', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/Reader;Ljava/io/Writer;)I|Ljava/io/IOException;#reader#0#0').
name_ref(p_reader_260, param, 'reader', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/Reader;Ljava/io/Writer;)J|Ljava/io/IOException;#reader#0#0').
name_ref(p_reader_262, param, 'reader', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/Reader;Ljava/io/Writer;[C)J|Ljava/io/IOException;#reader#0#0').
name_ref(p_reader_265, param, 'reader', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/Reader;Ljava/io/Writer;JJ)J|Ljava/io/IOException;#reader#0#0').
name_ref(p_reader_269, param, 'reader', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/Reader;Ljava/io/Writer;JJ[C)J|Ljava/io/IOException;#reader#0#0').
name_ref(p_reader_284, param, 'reader', 'Lorg/apache/commons/io/IOUtils;.lineIterator(Ljava/io/Reader;)Lorg/apache/commons/io/LineIterator;#reader#0#0').
name_ref(p_reader_297, param, 'reader', 'Lorg/apache/commons/io/IOUtils;.read(Ljava/io/Reader;[C)I|Ljava/io/IOException;#reader#0#0').
name_ref(p_reader_299, param, 'reader', 'Lorg/apache/commons/io/IOUtils;.read(Ljava/io/Reader;[CII)I|Ljava/io/IOException;#reader#0#0').
name_ref(p_reader_2_210, param, 'reader2', 'Lorg/apache/commons/io/IOUtils;.contentEqualsIgnoreEOL(Ljava/io/BufferedReader;Ljava/io/BufferedReader;)Z#reader2#0#1').
name_ref(p_reader_2_212, param, 'reader2', 'Lorg/apache/commons/io/IOUtils;.contentEqualsIgnoreEOL(Ljava/io/Reader;Ljava/io/Reader;)Z|Ljava/io/UncheckedIOException;#reader2#0#1').
name_ref(p_reader_313, param, 'reader', 'Lorg/apache/commons/io/IOUtils;.readFully(Ljava/io/Reader;[C)V|Ljava/io/IOException;#reader#0#0').
name_ref(p_reader_315, param, 'reader', 'Lorg/apache/commons/io/IOUtils;.readFully(Ljava/io/Reader;[CII)V|Ljava/io/IOException;#reader#0#0').
name_ref(p_reader_324, param, 'reader', 'Lorg/apache/commons/io/IOUtils;.readLines(Ljava/io/Reader;)Ljava/util/List<Ljava/lang/String;>;|Ljava/io/UncheckedIOException;#reader#0#0').
name_ref(p_reader_343, param, 'reader', 'Lorg/apache/commons/io/IOUtils;.skip(Ljava/io/Reader;J)J|Ljava/io/IOException;#reader#0#0').
name_ref(p_reader_352, param, 'reader', 'Lorg/apache/commons/io/IOUtils;.skipFully(Ljava/io/Reader;J)V|Ljava/io/IOException;#reader#0#0').
name_ref(p_reader_357, param, 'reader', 'Lorg/apache/commons/io/IOUtils;.toBufferedReader(Ljava/io/Reader;)Ljava/io/BufferedReader;#reader#0#0').
name_ref(p_reader_358, param, 'reader', 'Lorg/apache/commons/io/IOUtils;.toBufferedReader(Ljava/io/Reader;I)Ljava/io/BufferedReader;#reader#0#0').
name_ref(p_reader_367, param, 'reader', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/io/Reader;)[B|Ljava/io/IOException;#reader#0#0').
name_ref(p_reader_368, param, 'reader', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/io/Reader;Ljava/nio/charset/Charset;)[B|Ljava/io/IOException;#reader#0#0').
name_ref(p_reader_370, param, 'reader', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/io/Reader;Ljava/lang/String;)[B|Ljava/io/IOException;#reader#0#0').
name_ref(p_reader_381, param, 'reader', 'Lorg/apache/commons/io/IOUtils;.toCharArray(Ljava/io/Reader;)[C|Ljava/io/IOException;#reader#0#0').
name_ref(p_reader_405, param, 'reader', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/io/Reader;)Ljava/lang/String;|Ljava/io/IOException;#reader#0#0').
name_ref(p_reference_619, param, 'reference', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z|Ljava/io/IOException;#reference#0#1').
name_ref(p_reference_630, param, 'reference', 'Lorg/apache/commons/io/file/PathUtils;.isOlder(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z|Ljava/io/IOException;#reference#0#1').
name_ref(p_reference_file_927, param, 'referenceFile', 'Lorg/apache/commons/io/test/TestUtils;.checkFile(Ljava/io/File;Ljava/io/File;)V|Ljava/lang/Exception;#referenceFile#0#1').
name_ref(p_replacement_46, param, 'replacement', 'Lorg/apache/commons/io/FileSystem;.toLegalFileName(Ljava/lang/String;C)Ljava/lang/String;#replacement#0#1').
name_ref(p_reserved_file_names_26, param, 'reservedFileNames', 'Lorg/apache/commons/io/FileSystem;.(Ljava/lang/String;IIZZII[I[Ljava/lang/String;ZZC)V#reservedFileNames#0#6').
name_ref(p_reserved_file_names_extensions_27, param, 'reservedFileNamesExtensions', 'Lorg/apache/commons/io/FileSystem;.(Ljava/lang/String;IIZZII[I[Ljava/lang/String;ZZC)V#reservedFileNamesExtensions#0#7').
name_ref(p_right_754, param, 'right', 'Lorg/apache/commons/io/filefilter/AbstractFilterTest;.equalsLastModified(Ljava/io/File;Ljava/io/File;)Z|Ljava/io/IOException;#right#0#1').
name_ref(p_search_144, param, 'search', 'Lorg/apache/commons/io/IOCase;.checkIndexOf(Ljava/lang/String;ILjava/lang/String;)I#search#0#2').
name_ref(p_search_147, param, 'search', 'Lorg/apache/commons/io/IOCase;.checkRegionMatches(Ljava/lang/String;ILjava/lang/String;)Z#search#0#2').
name_ref(p_search_char_13, param, 'searchChar', 'Lorg/apache/commons/io/FileSystem;.indexOf(Ljava/lang/CharSequence;II)I#searchChar#0#1').
name_ref(p_selector_194, param, 'selector', 'Lorg/apache/commons/io/IOUtils;.closeQuietly(Ljava/nio/channels/Selector;)V#selector#0#0').
name_ref(p_sensitive_133, param, 'sensitive', 'Lorg/apache/commons/io/IOCase;.(Ljava/lang/String;ILjava/lang/String;Z)V#sensitive#0#1').
name_ref(p_separator_64, param, 'separator', 'Lorg/apache/commons/io/FilenameUtils;.doNormalize(Ljava/lang/String;CZ)Ljava/lang/String;#separator#0#1').
name_ref(p_separator_add_62, param, 'separatorAdd', 'Lorg/apache/commons/io/FilenameUtils;.doGetPath(Ljava/lang/String;I)Ljava/lang/String;#separatorAdd#0#1').
name_ref(p_server_socket_195, param, 'serverSocket', 'Lorg/apache/commons/io/IOUtils;.closeQuietly(Ljava/net/ServerSocket;)V#serverSocket#0#0').
name_ref(p_size_167, param, 'size', 'Lorg/apache/commons/io/IOUtils;.buffer(Ljava/io/InputStream;I)Ljava/io/BufferedInputStream;#size#0#1').
name_ref(p_size_170, param, 'size', 'Lorg/apache/commons/io/IOUtils;.buffer(Ljava/io/OutputStream;I)Ljava/io/BufferedOutputStream;#size#0#1').
name_ref(p_size_173, param, 'size', 'Lorg/apache/commons/io/IOUtils;.buffer(Ljava/io/Reader;I)Ljava/io/BufferedReader;#size#0#1').
name_ref(p_size_176, param, 'size', 'Lorg/apache/commons/io/IOUtils;.buffer(Ljava/io/Writer;I)Ljava/io/BufferedWriter;#size#0#1').
name_ref(p_size_178, param, 'size', 'Lorg/apache/commons/io/IOUtils;.byteArray(I)[B#size#0#0').
name_ref(p_size_179, param, 'size', 'Lorg/apache/commons/io/IOUtils;.charArray(I)[C#size#0#0').
name_ref(p_size_356, param, 'size', 'Lorg/apache/commons/io/IOUtils;.toBufferedInputStream(Ljava/io/InputStream;I)Ljava/io/InputStream;|Ljava/io/IOException;#size#0#1').
name_ref(p_size_359, param, 'size', 'Lorg/apache/commons/io/IOUtils;.toBufferedReader(Ljava/io/Reader;I)Ljava/io/BufferedReader;#size#0#1').
name_ref(p_size_362, param, 'size', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/io/InputStream;I)[B|Ljava/io/IOException;#size#0#1').
name_ref(p_size_364, param, 'size', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/io/InputStream;J)[B|Ljava/io/IOException;#size#0#1').
name_ref(p_size_366, param, 'size', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Lorg/apache/commons/io/function/IOTriFunction<[BLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;>;I)[B|Ljava/io/IOException;#size#0#1').
name_ref(p_size_931, param, 'size', 'Lorg/apache/commons/io/test/TestUtils;.createFile(Ljava/io/File;J)V|Ljava/io/IOException;#size#0#1').
name_ref(p_size_933, param, 'size', 'Lorg/apache/commons/io/test/TestUtils;.createFile(Ljava/nio/file/Path;J)V|Ljava/io/IOException;#size#0#1').
name_ref(p_size_938, param, 'size', 'Lorg/apache/commons/io/test/TestUtils;.generateTestData(Ljava/io/File;J)V|Ljava/io/IOException;|Ljava/io/FileNotFoundException;#size#0#1').
name_ref(p_size_939, param, 'size', 'Lorg/apache/commons/io/test/TestUtils;.generateTestData(J)[B#size#0#0').
name_ref(p_size_941, param, 'size', 'Lorg/apache/commons/io/test/TestUtils;.generateTestData(Ljava/io/OutputStream;J)V|Ljava/io/IOException;#size#0#1').
name_ref(p_skip_buffer_supplier_340, param, 'skipBufferSupplier', 'Lorg/apache/commons/io/IOUtils;.skip(Ljava/io/InputStream;JLjava/util/function/Supplier<[B>;)J|Ljava/io/IOException;#skipBufferSupplier#0#2').
name_ref(p_skip_buffer_supplier_349, param, 'skipBufferSupplier', 'Lorg/apache/commons/io/IOUtils;.skipFully(Ljava/io/InputStream;JLjava/util/function/Supplier<[B>;)V|Ljava/io/IOException;#skipBufferSupplier#0#2').
name_ref(p_socket_196, param, 'socket', 'Lorg/apache/commons/io/IOUtils;.closeQuietly(Ljava/net/Socket;)V#socket#0#0').
name_ref(p_sort_663, param, 'sort', 'Lorg/apache/commons/io/file/PathUtils;.relativize(Ljava/util/Collection<Ljava/nio/file/Path;>;Ljava/nio/file/Path;ZLjava/util/Comparator<-Ljava/nio/file/Path;>;)Ljava/util/List<Ljava/nio/file/Path;>;#sort#0#2').
name_ref(p_source_directory_514, param, 'sourceDirectory', 'Lorg/apache/commons/io/file/PathUtils;.copyDirectory(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#sourceDirectory#0#0').
name_ref(p_source_file_517, param, 'sourceFile', 'Lorg/apache/commons/io/file/PathUtils;.copyFile(Ljava/net/URL;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#sourceFile#0#0').
name_ref(p_source_file_520, param, 'sourceFile', 'Lorg/apache/commons/io/file/PathUtils;.copyFileToDirectory(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#sourceFile#0#0').
name_ref(p_source_file_523, param, 'sourceFile', 'Lorg/apache/commons/io/file/PathUtils;.copyFileToDirectory(Ljava/net/URL;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#sourceFile#0#0').
name_ref(p_source_file_671, param, 'sourceFile', 'Lorg/apache/commons/io/file/PathUtils;.setLastModifiedTime(Ljava/nio/file/Path;Ljava/nio/file/Path;)V|Ljava/io/IOException;#sourceFile#0#0').
name_ref(p_source_path_579, param, 'sourcePath', 'Lorg/apache/commons/io/file/PathUtils;.getAclEntryList(Ljava/nio/file/Path;)Ljava/util/List<Ljava/nio/file/attribute/AclEntry;>;|Ljava/io/IOException;#sourcePath#0#0').
name_ref(p_start_14, param, 'start', 'Lorg/apache/commons/io/FileSystem;.indexOf(Ljava/lang/CharSequence;II)I#start#0#2').
name_ref(p_start_149, param, 'start', 'Lorg/apache/commons/io/IOCase;.checkStartsWith(Ljava/lang/String;Ljava/lang/String;)Z#start#0#1').
name_ref(p_start_695, param, 'start', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/nio/file/Path;Ljava/util/Set<Ljava/nio/file/FileVisitOption;>;I)TT;|Ljava/io/IOException;#start#0#1').
name_ref(p_start_706, param, 'start', 'Lorg/apache/commons/io/file/PathUtils;.walk(Ljava/nio/file/Path;Lorg/apache/commons/io/file/PathFilter;IZ[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream<Ljava/nio/file/Path;>;|Ljava/io/IOException;#start#0#0').
name_ref(p_str_138, param, 'str', 'Lorg/apache/commons/io/IOCase;.checkEndsWith(Ljava/lang/String;Ljava/lang/String;)Z#str#0#0').
name_ref(p_str_142, param, 'str', 'Lorg/apache/commons/io/IOCase;.checkIndexOf(Ljava/lang/String;ILjava/lang/String;)I#str#0#0').
name_ref(p_str_145, param, 'str', 'Lorg/apache/commons/io/IOCase;.checkRegionMatches(Ljava/lang/String;ILjava/lang/String;)Z#str#0#0').
name_ref(p_str_148, param, 'str', 'Lorg/apache/commons/io/IOCase;.checkStartsWith(Ljava/lang/String;Ljava/lang/String;)Z#str#0#0').
name_ref(p_str_1_136, param, 'str1', 'Lorg/apache/commons/io/IOCase;.checkCompareTo(Ljava/lang/String;Ljava/lang/String;)I#str1#0#0').
name_ref(p_str_1_140, param, 'str1', 'Lorg/apache/commons/io/IOCase;.checkEquals(Ljava/lang/String;Ljava/lang/String;)Z#str1#0#0').
name_ref(p_str_2_137, param, 'str2', 'Lorg/apache/commons/io/IOCase;.checkCompareTo(Ljava/lang/String;Ljava/lang/String;)I#str2#0#1').
name_ref(p_str_2_141, param, 'str2', 'Lorg/apache/commons/io/IOCase;.checkEquals(Ljava/lang/String;Ljava/lang/String;)Z#str2#0#1').
name_ref(p_str_start_index_143, param, 'strStartIndex', 'Lorg/apache/commons/io/IOCase;.checkIndexOf(Ljava/lang/String;ILjava/lang/String;)I#strStartIndex#0#1').
name_ref(p_str_start_index_146, param, 'strStartIndex', 'Lorg/apache/commons/io/IOCase;.checkRegionMatches(Ljava/lang/String;ILjava/lang/String;)Z#strStartIndex#0#1').
name_ref(p_stream_1_207, param, 'stream1', 'Lorg/apache/commons/io/IOUtils;.contentEquals(Ljava/util/stream/Stream<*>;Ljava/util/stream/Stream<*>;)Z#stream1#0#0').
name_ref(p_stream_2_208, param, 'stream2', 'Lorg/apache/commons/io/IOUtils;.contentEquals(Ljava/util/stream/Stream<*>;Ljava/util/stream/Stream<*>;)Z#stream2#0#1').
name_ref(p_stream_577, param, 'stream', 'Lorg/apache/commons/io/file/PathUtils;.filterPaths<R:Ljava/lang/Object;A:Ljava/lang/Object;>(Lorg/apache/commons/io/file/PathFilter;Ljava/util/stream/Stream<Ljava/nio/file/Path;>;Ljava/util/stream/Collector<-Ljava/nio/file/Path;TA;TR;>;)TR;#stream#0#1').
name_ref(p_stream_835, param, 'stream', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.filterFiles<R:Ljava/lang/Object;A:Ljava/lang/Object;>(Lorg/apache/commons/io/filefilter/IOFileFilter;Ljava/util/stream/Stream<Ljava/io/File;>;Ljava/util/stream/Collector<-Ljava/io/File;TA;TR;>;)TR;#stream#0#1').
name_ref(p_string_93, param, 'string', 'Lorg/apache/commons/io/FilenameUtils;.isEmpty(Ljava/lang/String;)Z#string#0#0').
name_ref(p_suffix_870, param, 'suffix', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.suffixFileFilter(Ljava/lang/String;)Lorg/apache/commons/io/filefilter/IOFileFilter;#suffix#0#0').
name_ref(p_suffix_871, param, 'suffix', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.suffixFileFilter(Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Lorg/apache/commons/io/filefilter/IOFileFilter;#suffix#0#0').
name_ref(p_supplier_734, param, 'supplier', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.get(Lorg/apache/commons/io/function/IOSupplier<Ljava/nio/file/FileVisitResult;>;)Ljava/nio/file/FileVisitResult;#supplier#0#0').
name_ref(p_supports_drive_letter_28, param, 'supportsDriveLetter', 'Lorg/apache/commons/io/FileSystem;.(Ljava/lang/String;IIZZII[I[Ljava/lang/String;ZZC)V#supportsDriveLetter#0#8').
name_ref(p_t_735, param, 't', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.handle(Ljava/lang/Throwable;)Ljava/nio/file/FileVisitResult;#t#0#0').
name_ref(p_target_512, param, 'target', 'Lorg/apache/commons/io/file/PathUtils;.copy(Lorg/apache/commons/io/function/IOSupplier<Ljava/io/InputStream;>;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)J|Ljava/io/IOException;#target#0#1').
name_ref(p_target_directory_515, param, 'targetDirectory', 'Lorg/apache/commons/io/file/PathUtils;.copyDirectory(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#targetDirectory#0#1').
name_ref(p_target_directory_521, param, 'targetDirectory', 'Lorg/apache/commons/io/file/PathUtils;.copyFileToDirectory(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#targetDirectory#0#1').
name_ref(p_target_directory_524, param, 'targetDirectory', 'Lorg/apache/commons/io/file/PathUtils;.copyFileToDirectory(Ljava/net/URL;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#targetDirectory#0#1').
name_ref(p_target_file_518, param, 'targetFile', 'Lorg/apache/commons/io/file/PathUtils;.copyFile(Ljava/net/URL;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#targetFile#0#1').
name_ref(p_target_file_672, param, 'targetFile', 'Lorg/apache/commons/io/file/PathUtils;.setLastModifiedTime(Ljava/nio/file/Path;Ljava/nio/file/Path;)V|Ljava/io/IOException;#targetFile#0#1').
name_ref(p_test_631, param, 'test', 'Lorg/apache/commons/io/file/PathUtils;.isPosix(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z#test#0#0').
name_ref(p_test_directory_943, param, 'testDirectory', 'Lorg/apache/commons/io/test/TestUtils;.newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;|Ljava/io/IOException;#testDirectory#0#0').
name_ref(p_test_name_905, param, 'testName', 'Lorg/apache/commons/io/filefilter/NameFileFilter;.lambda$0(Ljava/lang/String;)Z#testName#0#0').
name_ref(p_text_116, param, 'text', 'Lorg/apache/commons/io/FilenameUtils;.splitOnTokens(Ljava/lang/String;)[Ljava/lang/String;#text#0#0').
name_ref(p_threshold_865, param, 'threshold', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.sizeFileFilter(J)Lorg/apache/commons/io/filefilter/IOFileFilter;#threshold#0#0').
name_ref(p_threshold_866, param, 'threshold', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.sizeFileFilter(JZ)Lorg/apache/commons/io/filefilter/IOFileFilter;#threshold#0#0').
name_ref(p_time_millis_616, param, 'timeMillis', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;J[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#timeMillis#0#1').
name_ref(p_time_millis_627, param, 'timeMillis', 'Lorg/apache/commons/io/file/PathUtils;.isOlder(Ljava/nio/file/Path;J[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#timeMillis#0#1').
name_ref(p_timeout_704, param, 'timeout', 'Lorg/apache/commons/io/file/PathUtils;.waitFor(Ljava/nio/file/Path;Ljava/time/Duration;[Ljava/nio/file/LinkOption;)Z#timeout#0#1').
name_ref(p_to_skip_337, param, 'toSkip', 'Lorg/apache/commons/io/IOUtils;.skip(Ljava/io/InputStream;J)J|Ljava/io/IOException;#toSkip#0#1').
name_ref(p_to_skip_339, param, 'toSkip', 'Lorg/apache/commons/io/IOUtils;.skip(Ljava/io/InputStream;JLjava/util/function/Supplier<[B>;)J|Ljava/io/IOException;#toSkip#0#1').
name_ref(p_to_skip_342, param, 'toSkip', 'Lorg/apache/commons/io/IOUtils;.skip(Ljava/nio/channels/ReadableByteChannel;J)J|Ljava/io/IOException;#toSkip#0#1').
name_ref(p_to_skip_344, param, 'toSkip', 'Lorg/apache/commons/io/IOUtils;.skip(Ljava/io/Reader;J)J|Ljava/io/IOException;#toSkip#0#1').
name_ref(p_to_skip_346, param, 'toSkip', 'Lorg/apache/commons/io/IOUtils;.skipFully(Ljava/io/InputStream;J)V|Ljava/io/IOException;#toSkip#0#1').
name_ref(p_to_skip_348, param, 'toSkip', 'Lorg/apache/commons/io/IOUtils;.skipFully(Ljava/io/InputStream;JLjava/util/function/Supplier<[B>;)V|Ljava/io/IOException;#toSkip#0#1').
name_ref(p_to_skip_351, param, 'toSkip', 'Lorg/apache/commons/io/IOUtils;.skipFully(Ljava/nio/channels/ReadableByteChannel;J)V|Ljava/io/IOException;#toSkip#0#1').
name_ref(p_to_skip_353, param, 'toSkip', 'Lorg/apache/commons/io/IOUtils;.skipFully(Ljava/io/Reader;J)V|Ljava/io/IOException;#toSkip#0#1').
name_ref(p_type_646, param, 'type', 'Lorg/apache/commons/io/file/PathUtils;.readAttributes<A::Ljava/nio/file/attribute/BasicFileAttributes;>(Ljava/nio/file/Path;Ljava/lang/Class<TA;>;[Ljava/nio/file/LinkOption;)TA;#type#0#1').
name_ref(p_unix_separator_107, param, 'unixSeparator', 'Lorg/apache/commons/io/FilenameUtils;.normalize(Ljava/lang/String;Z)Ljava/lang/String;#unixSeparator#0#1').
name_ref(p_unix_separator_110, param, 'unixSeparator', 'Lorg/apache/commons/io/FilenameUtils;.normalizeNoEndSeparator(Ljava/lang/String;Z)Ljava/lang/String;#unixSeparator#0#1').
name_ref(p_unix_separator_117, param, 'unixSeparator', 'Lorg/apache/commons/io/FilenameUtils;.toSeparator(Z)C#unixSeparator#0#0').
name_ref(p_update_permissions_678, param, 'updatePermissions', 'Lorg/apache/commons/io/file/PathUtils;.setPosixPermissions(Ljava/nio/file/Path;ZLjava/util/List<Ljava/nio/file/attribute/PosixFilePermission;>;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;#updatePermissions#0#2').
name_ref(p_uri_373, param, 'uri', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/net/URI;)[B|Ljava/io/IOException;#uri#0#0').
name_ref(p_uri_406, param, 'uri', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/net/URI;)Ljava/lang/String;|Ljava/io/IOException;#uri#0#0').
name_ref(p_uri_407, param, 'uri', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/net/URI;Ljava/nio/charset/Charset;)Ljava/lang/String;|Ljava/io/IOException;#uri#0#0').
name_ref(p_uri_409, param, 'uri', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;|Ljava/io/IOException;#uri#0#0').
name_ref(p_uri_594, param, 'uri', 'Lorg/apache/commons/io/file/PathUtils;.getLastModifiedFileTime(Ljava/net/URI;)Ljava/nio/file/attribute/FileTime;|Ljava/io/IOException;#uri#0#0').
name_ref(p_uri_702, param, 'uri', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/net/URI;)TT;|Ljava/io/IOException;#uri#0#1').
name_ref(p_url_242, param, 'url', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/net/URL;Ljava/io/File;)J|Ljava/io/IOException;#url#0#0').
name_ref(p_url_244, param, 'url', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/net/URL;Ljava/io/OutputStream;)J|Ljava/io/IOException;#url#0#0').
name_ref(p_url_374, param, 'url', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/net/URL;)[B|Ljava/io/IOException;#url#0#0').
name_ref(p_url_411, param, 'url', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/net/URL;)Ljava/lang/String;|Ljava/io/IOException;#url#0#0').
name_ref(p_url_412, param, 'url', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/net/URL;Ljava/nio/charset/Charset;)Ljava/lang/String;|Ljava/io/IOException;#url#0#0').
name_ref(p_url_414, param, 'url', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;|Ljava/io/IOException;#url#0#0').
name_ref(p_url_595, param, 'url', 'Lorg/apache/commons/io/file/PathUtils;.getLastModifiedFileTime(Ljava/net/URL;)Ljava/nio/file/attribute/FileTime;|Ljava/io/IOException;|Ljava/net/URISyntaxException;#url#0#0').
name_ref(p_url_connection_375, param, 'urlConnection', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/net/URLConnection;)[B|Ljava/io/IOException;#urlConnection#0#0').
name_ref(p_value_130, param, 'value', 'Lorg/apache/commons/io/IOCase;.value(Lorg/apache/commons/io/IOCase;Lorg/apache/commons/io/IOCase;)Lorg/apache/commons/io/IOCase;#value#0#0').
name_ref(p_value_153, param, 'value', 'Lorg/apache/commons/io/IOCaseTest;.serialize(Lorg/apache/commons/io/IOCase;)Lorg/apache/commons/io/IOCase;|Ljava/lang/Exception;#value#0#0').
name_ref(p_visitor_692, param, 'visitor', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/nio/file/Path;)TT;|Ljava/io/IOException;#visitor#0#0').
name_ref(p_visitor_694, param, 'visitor', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/nio/file/Path;Ljava/util/Set<Ljava/nio/file/FileVisitOption;>;I)TT;|Ljava/io/IOException;#visitor#0#0').
name_ref(p_visitor_698, param, 'visitor', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/lang/String;[Ljava/lang/String;)TT;|Ljava/io/IOException;#visitor#0#0').
name_ref(p_visitor_701, param, 'visitor', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/net/URI;)TT;|Ljava/io/IOException;#visitor#0#0').
name_ref(p_wildcard_matcher_119, param, 'wildcardMatcher', 'Lorg/apache/commons/io/FilenameUtils;.wildcardMatch(Ljava/lang/String;Ljava/lang/String;)Z#wildcardMatcher#0#1').
name_ref(p_wildcard_matcher_121, param, 'wildcardMatcher', 'Lorg/apache/commons/io/FilenameUtils;.wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Z#wildcardMatcher#0#1').
name_ref(p_wildcard_matcher_124, param, 'wildcardMatcher', 'Lorg/apache/commons/io/FilenameUtils;.wildcardMatchOnSystem(Ljava/lang/String;Ljava/lang/String;)Z#wildcardMatcher#0#1').
name_ref(p_writer_174, param, 'writer', 'Lorg/apache/commons/io/IOUtils;.buffer(Ljava/io/Writer;)Ljava/io/BufferedWriter;#writer#0#0').
name_ref(p_writer_175, param, 'writer', 'Lorg/apache/commons/io/IOUtils;.buffer(Ljava/io/Writer;I)Ljava/io/BufferedWriter;#writer#0#0').
name_ref(p_writer_198, param, 'writer', 'Lorg/apache/commons/io/IOUtils;.closeQuietly(Ljava/io/Writer;)V#writer#0#0').
name_ref(p_writer_219, param, 'writer', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/InputStream;Ljava/io/Writer;)V|Ljava/io/IOException;#writer#0#1').
name_ref(p_writer_221, param, 'writer', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#writer#0#1').
name_ref(p_writer_224, param, 'writer', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/lang/String;)V|Ljava/io/IOException;#writer#0#1').
name_ref(p_writer_241, param, 'writer', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/Reader;Ljava/io/Writer;)I|Ljava/io/IOException;#writer#0#1').
name_ref(p_writer_261, param, 'writer', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/Reader;Ljava/io/Writer;)J|Ljava/io/IOException;#writer#0#1').
name_ref(p_writer_263, param, 'writer', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/Reader;Ljava/io/Writer;[C)J|Ljava/io/IOException;#writer#0#1').
name_ref(p_writer_266, param, 'writer', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/Reader;Ljava/io/Writer;JJ)J|Ljava/io/IOException;#writer#0#1').
name_ref(p_writer_270, param, 'writer', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/Reader;Ljava/io/Writer;JJ[C)J|Ljava/io/IOException;#writer#0#1').
name_ref(p_writer_419, param, 'writer', 'Lorg/apache/commons/io/IOUtils;.write([BLjava/io/Writer;)V|Ljava/io/IOException;#writer#0#1').
name_ref(p_writer_421, param, 'writer', 'Lorg/apache/commons/io/IOUtils;.write([BLjava/io/Writer;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#writer#0#1').
name_ref(p_writer_424, param, 'writer', 'Lorg/apache/commons/io/IOUtils;.write([BLjava/io/Writer;Ljava/lang/String;)V|Ljava/io/IOException;#writer#0#1').
name_ref(p_writer_435, param, 'writer', 'Lorg/apache/commons/io/IOUtils;.write([CLjava/io/Writer;)V|Ljava/io/IOException;#writer#0#1').
name_ref(p_writer_445, param, 'writer', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/CharSequence;Ljava/io/Writer;)V|Ljava/io/IOException;#writer#0#1').
name_ref(p_writer_455, param, 'writer', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/String;Ljava/io/Writer;)V|Ljava/io/IOException;#writer#0#1').
name_ref(p_writer_462, param, 'writer', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/StringBuffer;Ljava/io/Writer;)V|Ljava/io/IOException;#writer#0#1').
name_ref(p_writer_466, param, 'writer', 'Lorg/apache/commons/io/IOUtils;.writeChunked([CLjava/io/Writer;)V|Ljava/io/IOException;#writer#0#1').
name_ref(p_writer_480, param, 'writer', 'Lorg/apache/commons/io/IOUtils;.writeLines(Ljava/util/Collection<*>;Ljava/lang/String;Ljava/io/Writer;)V|Ljava/io/IOException;#writer#0#2').
name_ref(f_block_size_30, field, 'blockSize', 'Lorg/apache/commons/io/FileSystem;.blockSize)I').
name_ref(f_can_read_771, field, 'CAN_READ', 'Lorg/apache/commons/io/filefilter/CanReadFileFilter;.CAN_READ)Lorg/apache/commons/io/filefilter/IOFileFilter;').
name_ref(f_can_write_777, field, 'CAN_WRITE', 'Lorg/apache/commons/io/filefilter/CanWriteFileFilter;.CAN_WRITE)Lorg/apache/commons/io/filefilter/IOFileFilter;').
name_ref(f_cannot_read_772, field, 'CANNOT_READ', 'Lorg/apache/commons/io/filefilter/CanReadFileFilter;.CANNOT_READ)Lorg/apache/commons/io/filefilter/IOFileFilter;').
name_ref(f_cannot_write_778, field, 'CANNOT_WRITE', 'Lorg/apache/commons/io/filefilter/CanWriteFileFilter;.CANNOT_WRITE)Lorg/apache/commons/io/filefilter/IOFileFilter;').
name_ref(f_case_preserving_37, field, 'casePreserving', 'Lorg/apache/commons/io/FileSystem;.casePreserving)Z').
name_ref(f_case_sensitive_36, field, 'caseSensitive', 'Lorg/apache/commons/io/FileSystem;.caseSensitive)Z').
name_ref(f_continue_720, field, 'CONTINUE', 'Ljava/nio/file/FileVisitResult;.CONTINUE)Ljava/nio/file/FileVisitResult;').
name_ref(f_cr_482, field, 'CR', 'Lorg/apache/commons/io/StandardLineSeparator;.CR)Lorg/apache/commons/io/StandardLineSeparator;').
name_ref(f_crlf_160, field, 'CRLF', 'Lorg/apache/commons/io/StandardLineSeparator;.CRLF)Lorg/apache/commons/io/StandardLineSeparator;').
name_ref(f_current_9, field, 'CURRENT', 'Lorg/apache/commons/io/FileSystem;.CURRENT)Lorg/apache/commons/io/FileSystem;').
name_ref(f_cvs_filter_814, field, 'CVS_FILTER', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.CVS_FILTER)Lorg/apache/commons/io/filefilter/IOFileFilter;').
name_ref(f_default_buffer_size_177, field, 'DEFAULT_BUFFER_SIZE', 'Lorg/apache/commons/io/IOUtils;.DEFAULT_BUFFER_SIZE)I').
name_ref(f_dir_separator_154, field, 'DIR_SEPARATOR', 'Lorg/apache/commons/io/IOUtils;.DIR_SEPARATOR)C').
name_ref(f_directory_782, field, 'DIRECTORY', 'Lorg/apache/commons/io/filefilter/DirectoryFileFilter;.DIRECTORY)Lorg/apache/commons/io/filefilter/IOFileFilter;').
name_ref(f_empty_787, field, 'EMPTY', 'Lorg/apache/commons/io/filefilter/EmptyFileFilter;.EMPTY)Lorg/apache/commons/io/filefilter/IOFileFilter;').
name_ref(f_empty_byte_array_155, field, 'EMPTY_BYTE_ARRAY', 'Lorg/apache/commons/io/IOUtils;.EMPTY_BYTE_ARRAY)[B').
name_ref(f_empty_copy_options_493, field, 'EMPTY_COPY_OPTIONS', 'Lorg/apache/commons/io/file/PathUtils;.EMPTY_COPY_OPTIONS)[Ljava/nio/file/CopyOption;').
name_ref(f_empty_delete_option_array_494, field, 'EMPTY_DELETE_OPTION_ARRAY', 'Lorg/apache/commons/io/file/PathUtils;.EMPTY_DELETE_OPTION_ARRAY)[Lorg/apache/commons/io/file/DeleteOption;').
name_ref(f_empty_file_attribute_array_495, field, 'EMPTY_FILE_ATTRIBUTE_ARRAY', 'Lorg/apache/commons/io/file/PathUtils;.EMPTY_FILE_ATTRIBUTE_ARRAY)[Ljava/nio/file/attribute/FileAttribute<Ljava/nio/file/attribute/FileAttribute;{0}*>;').
name_ref(f_empty_file_visit_option_array_496, field, 'EMPTY_FILE_VISIT_OPTION_ARRAY', 'Lorg/apache/commons/io/file/PathUtils;.EMPTY_FILE_VISIT_OPTION_ARRAY)[Ljava/nio/file/FileVisitOption;').
name_ref(f_empty_link_option_array_497, field, 'EMPTY_LINK_OPTION_ARRAY', 'Lorg/apache/commons/io/file/PathUtils;.EMPTY_LINK_OPTION_ARRAY)[Ljava/nio/file/LinkOption;').
name_ref(f_empty_open_option_array_500, field, 'EMPTY_OPEN_OPTION_ARRAY', 'Lorg/apache/commons/io/file/PathUtils;.EMPTY_OPEN_OPTION_ARRAY)[Ljava/nio/file/OpenOption;').
name_ref(f_empty_path_array_501, field, 'EMPTY_PATH_ARRAY', 'Lorg/apache/commons/io/file/PathUtils;.EMPTY_PATH_ARRAY)[Ljava/nio/file/Path;').
name_ref(f_empty_string_array_48, field, 'EMPTY_STRING_ARRAY', 'Lorg/apache/commons/io/FilenameUtils;.EMPTY_STRING_ARRAY)[Ljava/lang/String;').
name_ref(f_empty_string_array_879, field, 'EMPTY_STRING_ARRAY', 'Lorg/apache/commons/io/filefilter/IOFileFilter;.EMPTY_STRING_ARRAY)[Ljava/lang/String;').
name_ref(f_extension_separator_50, field, 'EXTENSION_SEPARATOR', 'Lorg/apache/commons/io/FilenameUtils;.EXTENSION_SEPARATOR)C').
name_ref(f_extension_separator_str_49, field, 'EXTENSION_SEPARATOR_STR', 'Lorg/apache/commons/io/FilenameUtils;.EXTENSION_SEPARATOR_STR)Ljava/lang/String;').
name_ref(f_file_795, field, 'FILE', 'Lorg/apache/commons/io/filefilter/FileFileFilter;.FILE)Lorg/apache/commons/io/filefilter/IOFileFilter;').
name_ref(f_file_filters_756, field, 'fileFilters', 'Lorg/apache/commons/io/filefilter/AndFileFilter;.fileFilters)Ljava/util/List<Lorg/apache/commons/io/filefilter/IOFileFilter;>;').
name_ref(f_filter_909, field, 'filter', 'Lorg/apache/commons/io/filefilter/NotFileFilter;.filter)Lorg/apache/commons/io/filefilter/IOFileFilter;').
name_ref(f_generic_1, field, 'GENERIC', 'Lorg/apache/commons/io/FileSystem;.GENERIC)Lorg/apache/commons/io/FileSystem;').
name_ref(f_hidden_874, field, 'HIDDEN', 'Lorg/apache/commons/io/filefilter/HiddenFileFilter;.HIDDEN)Lorg/apache/commons/io/filefilter/IOFileFilter;').
name_ref(f_illegal_file_name_chars_33, field, 'illegalFileNameChars', 'Lorg/apache/commons/io/FileSystem;.illegalFileNameChars)[I').
name_ref(f_insensitive_126, field, 'INSENSITIVE', 'Lorg/apache/commons/io/IOCase;.INSENSITIVE)Lorg/apache/commons/io/IOCase;').
name_ref(f_instance_783, field, 'INSTANCE', 'Lorg/apache/commons/io/filefilter/DirectoryFileFilter;.INSTANCE)Lorg/apache/commons/io/filefilter/IOFileFilter;').
name_ref(f_instance_794, field, 'INSTANCE', 'Lorg/apache/commons/io/filefilter/FileFileFilter;.INSTANCE)Lorg/apache/commons/io/filefilter/IOFileFilter;').
name_ref(f_io_case_892, field, 'ioCase', 'Lorg/apache/commons/io/filefilter/NameFileFilter;.ioCase)Lorg/apache/commons/io/IOCase;').
name_ref(f_ipv4_pattern_53, field, 'IPV4_PATTERN', 'Lorg/apache/commons/io/FilenameUtils;.IPV4_PATTERN)Ljava/util/regex/Pattern;').
name_ref(f_is_os_linux_5, field, 'IS_OS_LINUX', 'Lorg/apache/commons/io/FileSystem;.IS_OS_LINUX)Z').
name_ref(f_is_os_mac_6, field, 'IS_OS_MAC', 'Lorg/apache/commons/io/FileSystem;.IS_OS_MAC)Z').
name_ref(f_is_os_windows_7, field, 'IS_OS_WINDOWS', 'Lorg/apache/commons/io/FileSystem;.IS_OS_WINDOWS)Z').
name_ref(f_lf_158, field, 'LF', 'Lorg/apache/commons/io/StandardLineSeparator;.LF)Lorg/apache/commons/io/StandardLineSeparator;').
name_ref(f_line_separator_156, field, 'LINE_SEPARATOR', 'Lorg/apache/commons/io/IOUtils;.LINE_SEPARATOR)Ljava/lang/String;').
name_ref(f_line_separator_484, field, 'lineSeparator', 'Lorg/apache/commons/io/StandardLineSeparator;.lineSeparator)Ljava/lang/String;').
name_ref(f_line_separator_unix_157, field, 'LINE_SEPARATOR_UNIX', 'Lorg/apache/commons/io/IOUtils;.LINE_SEPARATOR_UNIX)Ljava/lang/String;').
name_ref(f_line_separator_windows_159, field, 'LINE_SEPARATOR_WINDOWS', 'Lorg/apache/commons/io/IOUtils;.LINE_SEPARATOR_WINDOWS)Ljava/lang/String;').
name_ref(f_linux_2, field, 'LINUX', 'Lorg/apache/commons/io/FileSystem;.LINUX)Lorg/apache/commons/io/FileSystem;').
name_ref(f_mac_osx_3, field, 'MAC_OSX', 'Lorg/apache/commons/io/FileSystem;.MAC_OSX)Lorg/apache/commons/io/FileSystem;').
name_ref(f_max_file_name_length_31, field, 'maxFileNameLength', 'Lorg/apache/commons/io/FileSystem;.maxFileNameLength)I').
name_ref(f_max_path_length_32, field, 'maxPathLength', 'Lorg/apache/commons/io/FileSystem;.maxPathLength)I').
name_ref(f_name_134, field, 'name', 'Lorg/apache/commons/io/IOCase;.name)Ljava/lang/String;').
name_ref(f_name_separator_39, field, 'nameSeparator', 'Lorg/apache/commons/io/FileSystem;.nameSeparator)C').
name_ref(f_name_separator_other_40, field, 'nameSeparatorOther', 'Lorg/apache/commons/io/FileSystem;.nameSeparatorOther)C').
name_ref(f_names_891, field, 'names', 'Lorg/apache/commons/io/filefilter/NameFileFilter;.names)[Ljava/lang/String;').
name_ref(f_nofollow_link_option_array_498, field, 'NOFOLLOW_LINK_OPTION_ARRAY', 'Lorg/apache/commons/io/file/PathUtils;.NOFOLLOW_LINK_OPTION_ARRAY)[Ljava/nio/file/LinkOption;').
name_ref(f_not_empty_788, field, 'NOT_EMPTY', 'Lorg/apache/commons/io/filefilter/EmptyFileFilter;.NOT_EMPTY)Lorg/apache/commons/io/filefilter/IOFileFilter;').
name_ref(f_null_link_option_499, field, 'NULL_LINK_OPTION', 'Lorg/apache/commons/io/file/PathUtils;.NULL_LINK_OPTION)Ljava/nio/file/LinkOption;').
name_ref(f_on_accept_724, field, 'onAccept', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.onAccept)Ljava/nio/file/FileVisitResult;').
name_ref(f_on_reject_725, field, 'onReject', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.onReject)Ljava/nio/file/FileVisitResult;').
name_ref(f_open_options_append_492, field, 'OPEN_OPTIONS_APPEND', 'Lorg/apache/commons/io/file/PathUtils;.OPEN_OPTIONS_APPEND)[Ljava/nio/file/OpenOption;').
name_ref(f_open_options_truncate_491, field, 'OPEN_OPTIONS_TRUNCATE', 'Lorg/apache/commons/io/file/PathUtils;.OPEN_OPTIONS_TRUNCATE)[Ljava/nio/file/OpenOption;').
name_ref(f_os_name_windows_prefix_8, field, 'OS_NAME_WINDOWS_PREFIX', 'Lorg/apache/commons/io/FileSystem;.OS_NAME_WINDOWS_PREFIX)Ljava/lang/String;').
name_ref(f_other_separator_52, field, 'OTHER_SEPARATOR', 'Lorg/apache/commons/io/FilenameUtils;.OTHER_SEPARATOR)C').
name_ref(f_read_only_773, field, 'READ_ONLY', 'Lorg/apache/commons/io/filefilter/CanReadFileFilter;.READ_ONLY)Lorg/apache/commons/io/filefilter/IOFileFilter;').
name_ref(f_reg_name_part_pattern_54, field, 'REG_NAME_PART_PATTERN', 'Lorg/apache/commons/io/FilenameUtils;.REG_NAME_PART_PATTERN)Ljava/util/regex/Pattern;').
name_ref(f_reserved_file_names_34, field, 'reservedFileNames', 'Lorg/apache/commons/io/FileSystem;.reservedFileNames)[Ljava/lang/String;').
name_ref(f_reserved_file_names_extensions_35, field, 'reservedFileNamesExtensions', 'Lorg/apache/commons/io/FileSystem;.reservedFileNamesExtensions)Z').
name_ref(f_scratch_byte_buffer_rw_161, field, 'SCRATCH_BYTE_BUFFER_RW', 'Lorg/apache/commons/io/IOUtils;.SCRATCH_BYTE_BUFFER_RW)Ljava/lang/ThreadLocal<[B>;').
name_ref(f_scratch_byte_buffer_wo_162, field, 'SCRATCH_BYTE_BUFFER_WO', 'Lorg/apache/commons/io/IOUtils;.SCRATCH_BYTE_BUFFER_WO)[B').
name_ref(f_scratch_char_buffer_rw_163, field, 'SCRATCH_CHAR_BUFFER_RW', 'Lorg/apache/commons/io/IOUtils;.SCRATCH_CHAR_BUFFER_RW)Ljava/lang/ThreadLocal<[C>;').
name_ref(f_scratch_char_buffer_wo_164, field, 'SCRATCH_CHAR_BUFFER_WO', 'Lorg/apache/commons/io/IOUtils;.SCRATCH_CHAR_BUFFER_WO)[C').
name_ref(f_sensitive_125, field, 'SENSITIVE', 'Lorg/apache/commons/io/IOCase;.SENSITIVE)Lorg/apache/commons/io/IOCase;').
name_ref(f_sensitive_135, field, 'sensitive', 'Lorg/apache/commons/io/IOCase;.sensitive)Z').
name_ref(f_supports_drive_letter_38, field, 'supportsDriveLetter', 'Lorg/apache/commons/io/FileSystem;.supportsDriveLetter)Z').
name_ref(f_svn_dir_name_810, field, 'SVN_DIR_NAME', 'Lorg/apache/commons/io/filefilter/AbstractFilterTest;.SVN_DIR_NAME)Ljava/lang/String;').
name_ref(f_svn_filter_815, field, 'SVN_FILTER', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.SVN_FILTER)Lorg/apache/commons/io/filefilter/IOFileFilter;').
name_ref(f_system_127, field, 'SYSTEM', 'Lorg/apache/commons/io/IOCase;.SYSTEM)Lorg/apache/commons/io/IOCase;').
name_ref(f_system_name_separator_51, field, 'SYSTEM_NAME_SEPARATOR', 'Lorg/apache/commons/io/FilenameUtils;.SYSTEM_NAME_SEPARATOR)C').
name_ref(f_temporary_folder_800, field, 'temporaryFolder', 'Lorg/apache/commons/io/filefilter/AbstractFilterTest;.temporaryFolder)Ljava/io/File;').
name_ref(f_terminate_721, field, 'TERMINATE', 'Ljava/nio/file/FileVisitResult;.TERMINATE)Ljava/nio/file/FileVisitResult;').
name_ref(f_unix_name_separator_79, field, 'UNIX_NAME_SEPARATOR', 'Lorg/apache/commons/io/FilenameUtils;.UNIX_NAME_SEPARATOR)C').
name_ref(f_visible_875, field, 'VISIBLE', 'Lorg/apache/commons/io/filefilter/HiddenFileFilter;.VISIBLE)Lorg/apache/commons/io/filefilter/IOFileFilter;').
name_ref(f_windows_150, field, 'WINDOWS', 'Lorg/apache/commons/io/IOCaseTest;.WINDOWS)Z').
name_ref(f_windows_4, field, 'WINDOWS', 'Lorg/apache/commons/io/FileSystem;.WINDOWS)Lorg/apache/commons/io/FileSystem;').
name_ref(f_windows_name_separator_80, field, 'WINDOWS_NAME_SEPARATOR', 'Lorg/apache/commons/io/FilenameUtils;.WINDOWS_NAME_SEPARATOR)C').
name_ref(m_abstract_file_filter_401, method, 'AbstractFileFilter', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.()V').
name_ref(m_abstract_file_filter_402, method, 'AbstractFileFilter', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.(Ljava/nio/file/FileVisitResult;Ljava/nio/file/FileVisitResult;)V').
name_ref(m_accept_403, method, 'accept', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.accept(Ljava/io/File;)Z').
name_ref(m_accept_404, method, 'accept', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.accept(Ljava/io/File;Ljava/lang/String;)Z').
name_ref(m_accept_423, method, 'accept', 'Lorg/apache/commons/io/filefilter/IOFileFilter;.accept(Ljava/io/File;)Z').
name_ref(m_accept_426, method, 'accept', 'Lorg/apache/commons/io/filefilter/IOFileFilter;.accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;').
name_ref(m_accept_438, method, 'accept', 'Lorg/apache/commons/io/filefilter/AndFileFilter;.accept(Ljava/io/File;)Z').
name_ref(m_accept_439, method, 'accept', 'Lorg/apache/commons/io/filefilter/AndFileFilter;.accept(Ljava/io/File;Ljava/lang/String;)Z').
name_ref(m_accept_440, method, 'accept', 'Lorg/apache/commons/io/filefilter/AndFileFilter;.accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;').
name_ref(m_accept_451, method, 'accept', 'Lorg/apache/commons/io/filefilter/CanReadFileFilter;.accept(Ljava/io/File;)Z').
name_ref(m_accept_453, method, 'accept', 'Lorg/apache/commons/io/filefilter/CanReadFileFilter;.accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;').
name_ref(m_accept_456, method, 'accept', 'Lorg/apache/commons/io/filefilter/CanWriteFileFilter;.accept(Ljava/io/File;)Z').
name_ref(m_accept_458, method, 'accept', 'Lorg/apache/commons/io/filefilter/CanWriteFileFilter;.accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;').
name_ref(m_accept_461, method, 'accept', 'Lorg/apache/commons/io/filefilter/DirectoryFileFilter;.accept(Ljava/io/File;)Z').
name_ref(m_accept_462, method, 'accept', 'Lorg/apache/commons/io/filefilter/DirectoryFileFilter;.accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;').
name_ref(m_accept_464, method, 'accept', 'Lorg/apache/commons/io/filefilter/EmptyFileFilter;.accept(Ljava/io/File;)Z').
name_ref(m_accept_467, method, 'accept', 'Lorg/apache/commons/io/filefilter/EmptyFileFilter;.accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;').
name_ref(m_accept_473, method, 'accept', 'Lorg/apache/commons/io/filefilter/FileFileFilter;.accept(Ljava/io/File;)Z').
name_ref(m_accept_475, method, 'accept', 'Lorg/apache/commons/io/filefilter/FileFileFilter;.accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;').
name_ref(m_accept_592, method, 'accept', 'Lorg/apache/commons/io/filefilter/HiddenFileFilter;.accept(Ljava/io/File;)Z').
name_ref(m_accept_594, method, 'accept', 'Lorg/apache/commons/io/filefilter/HiddenFileFilter;.accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;').
name_ref(m_accept_596, method, 'accept', 'Lorg/apache/commons/io/filefilter/IOFileFilter;.accept(Ljava/io/File;Ljava/lang/String;)Z').
name_ref(m_accept_606, method, 'accept', 'Lorg/apache/commons/io/filefilter/NameFileFilter;.accept(Ljava/io/File;)Z').
name_ref(m_accept_609, method, 'accept', 'Lorg/apache/commons/io/filefilter/NameFileFilter;.accept(Ljava/io/File;Ljava/lang/String;)Z').
name_ref(m_accept_610, method, 'accept', 'Lorg/apache/commons/io/filefilter/NameFileFilter;.accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;').
name_ref(m_accept_615, method, 'accept', 'Lorg/apache/commons/io/filefilter/NotFileFilter;.accept(Ljava/io/File;)Z').
name_ref(m_accept_616, method, 'accept', 'Lorg/apache/commons/io/filefilter/NotFileFilter;.accept(Ljava/io/File;Ljava/lang/String;)Z').
name_ref(m_accept_617, method, 'accept', 'Lorg/apache/commons/io/filefilter/NotFileFilter;.accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;').
name_ref(m_accept_base_name_607, method, 'acceptBaseName', 'Lorg/apache/commons/io/filefilter/NameFileFilter;.acceptBaseName(Ljava/lang/String;)Z').
name_ref(m_accumulate_297, method, 'accumulate', 'Lorg/apache/commons/io/file/PathUtils;.accumulate(Ljava/nio/file/Path;I[Ljava/nio/file/FileVisitOption;)Lorg/apache/commons/io/file/AccumulatorPathVisitor;|Ljava/io/IOException;').
name_ref(m_add_441, method, 'add', 'Ljava/util/List;.add(TE;)Z').
name_ref(m_add_file_filter_435, method, 'addFileFilter', 'Lorg/apache/commons/io/filefilter/AndFileFilter;.addFileFilter(Lorg/apache/commons/io/filefilter/IOFileFilter;)V').
name_ref(m_add_file_filter_442, method, 'addFileFilter', 'Lorg/apache/commons/io/filefilter/AndFileFilter;.addFileFilter([Lorg/apache/commons/io/filefilter/IOFileFilter;)V').
name_ref(m_age_file_filter_545, method, 'ageFileFilter', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.ageFileFilter(Ljava/util/Date;)Lorg/apache/commons/io/filefilter/IOFileFilter;').
name_ref(m_age_file_filter_546, method, 'ageFileFilter', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.ageFileFilter(Ljava/util/Date;Z)Lorg/apache/commons/io/filefilter/IOFileFilter;').
name_ref(m_age_file_filter_547, method, 'ageFileFilter', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.ageFileFilter(Ljava/io/File;)Lorg/apache/commons/io/filefilter/IOFileFilter;').
name_ref(m_age_file_filter_548, method, 'ageFileFilter', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.ageFileFilter(Ljava/io/File;Z)Lorg/apache/commons/io/filefilter/IOFileFilter;').
name_ref(m_age_file_filter_549, method, 'ageFileFilter', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.ageFileFilter(J)Lorg/apache/commons/io/filefilter/IOFileFilter;').
name_ref(m_age_file_filter_550, method, 'ageFileFilter', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.ageFileFilter(JZ)Lorg/apache/commons/io/filefilter/IOFileFilter;').
name_ref(m_and_450, method, 'and', 'Lorg/apache/commons/io/filefilter/IOFileFilter;.and(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;').
name_ref(m_and_542, method, 'and', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.and([Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;').
name_ref(m_and_file_filter_429, method, 'AndFileFilter', 'Lorg/apache/commons/io/filefilter/AndFileFilter;.()V').
name_ref(m_and_file_filter_430, method, 'AndFileFilter', 'Lorg/apache/commons/io/filefilter/AndFileFilter;.(Ljava/util/ArrayList<Lorg/apache/commons/io/filefilter/IOFileFilter;>;)V').
name_ref(m_and_file_filter_431, method, 'AndFileFilter', 'Lorg/apache/commons/io/filefilter/AndFileFilter;.(I)V').
name_ref(m_and_file_filter_433, method, 'AndFileFilter', 'Lorg/apache/commons/io/filefilter/AndFileFilter;.([Lorg/apache/commons/io/filefilter/IOFileFilter;)V').
name_ref(m_and_file_filter_434, method, 'AndFileFilter', 'Lorg/apache/commons/io/filefilter/AndFileFilter;.(Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)V').
name_ref(m_and_file_filter_436, method, 'AndFileFilter', 'Lorg/apache/commons/io/filefilter/AndFileFilter;.(Ljava/util/List<Lorg/apache/commons/io/filefilter/IOFileFilter;>;)V').
name_ref(m_and_file_filter_552, method, 'andFileFilter', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.andFileFilter(Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;').
name_ref(m_any_match_611, method, 'anyMatch', 'Ljava/util/stream/Stream;.anyMatch(Ljava/util/function/Predicate<-TT;>;)Z').
name_ref(m_append_406, method, 'append', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.append(Ljava/util/List<*>;Ljava/lang/StringBuilder;)V').
name_ref(m_append_407, method, 'append', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.append([Ljava/lang/Object;Ljava/lang/StringBuilder;)V').
name_ref(m_append_408, method, 'append', 'Ljava/lang/StringBuilder;.append(Ljava/lang/String;)Ljava/lang/StringBuilder;').
name_ref(m_append_409, method, 'append', 'Ljava/lang/StringBuilder;.append(Ljava/lang/Object;)Ljava/lang/StringBuilder;').
name_ref(m_apply_335, method, 'apply', 'Ljava/util/function/Function;.apply(TT;)TR;').
name_ref(m_array_list_432, method, 'ArrayList', 'Ljava/util/ArrayList;.(I)V').
name_ref(m_array_list_437, method, 'ArrayList', 'Ljava/util/ArrayList;.(Ljava/util/Collection<+TE;>;)V').
name_ref(m_as_file_filter_553, method, 'asFileFilter', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.asFileFilter(Ljava/io/FileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;').
name_ref(m_as_file_filter_554, method, 'asFileFilter', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.asFileFilter(Ljava/io/FilenameFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;').
name_ref(m_assert_0_95, method, 'assert0', 'Lorg/apache/commons/io/IOCaseTest;.assert0([B)V').
name_ref(m_assert_0_96, method, 'assert0', 'Lorg/apache/commons/io/IOCaseTest;.assert0([C)V').
name_ref(m_assert_equal_content_620, method, 'assertEqualContent', 'Lorg/apache/commons/io/test/TestUtils;.assertEqualContent([BLjava/io/File;)V|Ljava/io/IOException;').
name_ref(m_assert_equal_content_621, method, 'assertEqualContent', 'Lorg/apache/commons/io/test/TestUtils;.assertEqualContent([BLjava/nio/file/Path;)V|Ljava/io/IOException;').
name_ref(m_assert_equal_content_622, method, 'assertEqualContent', 'Lorg/apache/commons/io/test/TestUtils;.assertEqualContent([CLjava/io/File;)V|Ljava/io/IOException;').
name_ref(m_assert_equal_content_623, method, 'assertEqualContent', 'Lorg/apache/commons/io/test/TestUtils;.assertEqualContent([CLjava/nio/file/Path;)V|Ljava/io/IOException;').
name_ref(m_assert_equal_content_624, method, 'assertEqualContent', 'Lorg/apache/commons/io/test/TestUtils;.assertEqualContent(Ljava/io/File;Ljava/io/File;)V|Ljava/io/IOException;').
name_ref(m_assert_equals_422, method, 'assertEquals', 'Lorg/junit/jupiter/api/Assertions;.assertEquals(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V').
name_ref(m_assert_false_104, method, 'assertFalse', 'Lorg/junit/jupiter/api/Assertions;.assertFalse(Z)V').
name_ref(m_assert_filtering_421, method, 'assertFiltering', 'Lorg/apache/commons/io/filefilter/AbstractFilterTest;.assertFiltering(Lorg/apache/commons/io/filefilter/IOFileFilter;Ljava/io/File;Z)V|Ljava/io/IOException;').
name_ref(m_assert_filtering_425, method, 'assertFiltering', 'Lorg/apache/commons/io/filefilter/AbstractFilterTest;.assertFiltering(Lorg/apache/commons/io/filefilter/IOFileFilter;Ljava/nio/file/Path;Z)V').
name_ref(m_assert_foo_bar_file_filtering_427, method, 'assertFooBarFileFiltering', 'Lorg/apache/commons/io/filefilter/AbstractFilterTest;.assertFooBarFileFiltering(Lorg/apache/commons/io/filefilter/IOFileFilter;)V|Ljava/io/IOException;').
name_ref(m_assert_true_105, method, 'assertTrue', 'Lorg/junit/jupiter/api/Assertions;.assertTrue(Z)V').
name_ref(m_buffer_127, method, 'buffer', 'Lorg/apache/commons/io/IOUtils;.buffer(Ljava/io/InputStream;)Ljava/io/BufferedInputStream;').
name_ref(m_buffer_128, method, 'buffer', 'Lorg/apache/commons/io/IOUtils;.buffer(Ljava/io/InputStream;I)Ljava/io/BufferedInputStream;').
name_ref(m_buffer_129, method, 'buffer', 'Lorg/apache/commons/io/IOUtils;.buffer(Ljava/io/OutputStream;)Ljava/io/BufferedOutputStream;').
name_ref(m_buffer_130, method, 'buffer', 'Lorg/apache/commons/io/IOUtils;.buffer(Ljava/io/OutputStream;I)Ljava/io/BufferedOutputStream;').
name_ref(m_buffer_131, method, 'buffer', 'Lorg/apache/commons/io/IOUtils;.buffer(Ljava/io/Reader;)Ljava/io/BufferedReader;').
name_ref(m_buffer_132, method, 'buffer', 'Lorg/apache/commons/io/IOUtils;.buffer(Ljava/io/Reader;I)Ljava/io/BufferedReader;').
name_ref(m_buffer_133, method, 'buffer', 'Lorg/apache/commons/io/IOUtils;.buffer(Ljava/io/Writer;)Ljava/io/BufferedWriter;').
name_ref(m_buffer_134, method, 'buffer', 'Lorg/apache/commons/io/IOUtils;.buffer(Ljava/io/Writer;I)Ljava/io/BufferedWriter;').
name_ref(m_buffered_output_stream_485, method, 'BufferedOutputStream', 'Ljava/io/BufferedOutputStream;.(Ljava/io/OutputStream;)V').
name_ref(m_byte_array_125, method, 'byteArray', 'Lorg/apache/commons/io/IOUtils;.byteArray()[B').
name_ref(m_byte_array_135, method, 'byteArray', 'Lorg/apache/commons/io/IOUtils;.byteArray(I)[B').
name_ref(m_can_read_452, method, 'canRead', 'Ljava/io/File;.canRead()Z').
name_ref(m_can_read_file_filter_448, method, 'CanReadFileFilter', 'Lorg/apache/commons/io/filefilter/CanReadFileFilter;.()V').
name_ref(m_can_write_457, method, 'canWrite', 'Ljava/io/File;.canWrite()Z').
name_ref(m_can_write_file_filter_455, method, 'CanWriteFileFilter', 'Lorg/apache/commons/io/filefilter/CanWriteFileFilter;.()V').
name_ref(m_char_array_126, method, 'charArray', 'Lorg/apache/commons/io/IOUtils;.charArray()[C').
name_ref(m_char_array_136, method, 'charArray', 'Lorg/apache/commons/io/IOUtils;.charArray(I)[C').
name_ref(m_check_compare_to_83, method, 'checkCompareTo', 'Lorg/apache/commons/io/IOCase;.checkCompareTo(Ljava/lang/String;Ljava/lang/String;)I').
name_ref(m_check_ends_with_84, method, 'checkEndsWith', 'Lorg/apache/commons/io/IOCase;.checkEndsWith(Ljava/lang/String;Ljava/lang/String;)Z').
name_ref(m_check_equals_85, method, 'checkEquals', 'Lorg/apache/commons/io/IOCase;.checkEquals(Ljava/lang/String;Ljava/lang/String;)Z').
name_ref(m_check_file_625, method, 'checkFile', 'Lorg/apache/commons/io/test/TestUtils;.checkFile(Ljava/io/File;Ljava/io/File;)V|Ljava/lang/Exception;').
name_ref(m_check_index_of_88, method, 'checkIndexOf', 'Lorg/apache/commons/io/IOCase;.checkIndexOf(Ljava/lang/String;ILjava/lang/String;)I').
name_ref(m_check_region_matches_89, method, 'checkRegionMatches', 'Lorg/apache/commons/io/IOCase;.checkRegionMatches(Ljava/lang/String;ILjava/lang/String;)Z').
name_ref(m_check_starts_with_90, method, 'checkStartsWith', 'Lorg/apache/commons/io/IOCase;.checkStartsWith(Ljava/lang/String;Ljava/lang/String;)Z').
name_ref(m_check_write_626, method, 'checkWrite', 'Lorg/apache/commons/io/test/TestUtils;.checkWrite(Ljava/io/OutputStream;)V').
name_ref(m_check_write_627, method, 'checkWrite', 'Lorg/apache/commons/io/test/TestUtils;.checkWrite(Ljava/io/Writer;)V').
name_ref(m_clean_directory_298, method, 'cleanDirectory', 'Lorg/apache/commons/io/file/PathUtils;.cleanDirectory(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;').
name_ref(m_clean_directory_299, method, 'cleanDirectory', 'Lorg/apache/commons/io/file/PathUtils;.cleanDirectory(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;').
name_ref(m_clear_137, method, 'clear', 'Lorg/apache/commons/io/IOUtils;.clear()V').
name_ref(m_clone_605, method, 'clone', 'Ljava/lang/Object;.clone()[Ljava/lang/String;').
name_ref(m_close_138, method, 'close', 'Lorg/apache/commons/io/IOUtils;.close(Ljava/io/Closeable;)V|Ljava/io/IOException;').
name_ref(m_close_139, method, 'close', 'Lorg/apache/commons/io/IOUtils;.close([Ljava/io/Closeable;)V|Lorg/apache/commons/io/IOExceptionList;').
name_ref(m_close_140, method, 'close', 'Lorg/apache/commons/io/IOUtils;.close(Ljava/io/Closeable;Lorg/apache/commons/io/function/IOConsumer<Ljava/io/IOException;>;)V|Ljava/io/IOException;').
name_ref(m_close_141, method, 'close', 'Lorg/apache/commons/io/IOUtils;.close(Ljava/net/URLConnection;)V').
name_ref(m_close_q_142, method, 'closeQ', 'Lorg/apache/commons/io/IOUtils;.closeQ(Ljava/io/Closeable;)V').
name_ref(m_close_quietly_143, method, 'closeQuietly', 'Lorg/apache/commons/io/IOUtils;.closeQuietly(Ljava/io/Closeable;)V').
name_ref(m_close_quietly_144, method, 'closeQuietly', 'Lorg/apache/commons/io/IOUtils;.closeQuietly([Ljava/io/Closeable;)V').
name_ref(m_close_quietly_145, method, 'closeQuietly', 'Lorg/apache/commons/io/IOUtils;.closeQuietly(Ljava/io/Closeable;Ljava/util/function/Consumer<Ljava/io/IOException;>;)V').
name_ref(m_close_quietly_146, method, 'closeQuietly', 'Lorg/apache/commons/io/IOUtils;.closeQuietly(Ljava/io/InputStream;)V').
name_ref(m_close_quietly_147, method, 'closeQuietly', 'Lorg/apache/commons/io/IOUtils;.closeQuietly(Ljava/lang/Iterable<Ljava/io/Closeable;>;)V').
name_ref(m_close_quietly_148, method, 'closeQuietly', 'Lorg/apache/commons/io/IOUtils;.closeQuietly(Ljava/io/OutputStream;)V').
name_ref(m_close_quietly_149, method, 'closeQuietly', 'Lorg/apache/commons/io/IOUtils;.closeQuietly(Ljava/io/Reader;)V').
name_ref(m_close_quietly_150, method, 'closeQuietly', 'Lorg/apache/commons/io/IOUtils;.closeQuietly(Ljava/nio/channels/Selector;)V').
name_ref(m_close_quietly_151, method, 'closeQuietly', 'Lorg/apache/commons/io/IOUtils;.closeQuietly(Ljava/net/ServerSocket;)V').
name_ref(m_close_quietly_152, method, 'closeQuietly', 'Lorg/apache/commons/io/IOUtils;.closeQuietly(Ljava/net/Socket;)V').
name_ref(m_close_quietly_153, method, 'closeQuietly', 'Lorg/apache/commons/io/IOUtils;.closeQuietly(Ljava/util/stream/Stream<Ljava/io/Closeable;>;)V').
name_ref(m_close_quietly_154, method, 'closeQuietly', 'Lorg/apache/commons/io/IOUtils;.closeQuietly(Ljava/io/Writer;)V').
name_ref(m_collect_584, method, 'collect', 'Ljava/util/stream/Stream;.collect<R:Ljava/lang/Object;A:Ljava/lang/Object;>(Ljava/util/stream/Collector<-TT;TA;TR;>;)TR;').
name_ref(m_compare_last_modified_time_to_300, method, 'compareLastModifiedTimeTo', 'Lorg/apache/commons/io/file/PathUtils;.compareLastModifiedTimeTo(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)I|Ljava/io/IOException;').
name_ref(m_compile_31, method, 'compile', 'Ljava/util/regex/Pattern;.compile(Ljava/lang/String;)Ljava/util/regex/Pattern;').
name_ref(m_concat_32, method, 'concat', 'Lorg/apache/commons/io/FilenameUtils;.concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_consume_155, method, 'consume', 'Lorg/apache/commons/io/IOUtils;.consume(Ljava/io/InputStream;)J|Ljava/io/IOException;').
name_ref(m_consume_156, method, 'consume', 'Lorg/apache/commons/io/IOUtils;.consume(Ljava/io/Reader;)J|Ljava/io/IOException;').
name_ref(m_content_equals_157, method, 'contentEquals', 'Lorg/apache/commons/io/IOUtils;.contentEquals(Ljava/io/InputStream;Ljava/io/InputStream;)Z|Ljava/io/IOException;').
name_ref(m_content_equals_158, method, 'contentEquals', 'Lorg/apache/commons/io/IOUtils;.contentEquals(Ljava/util/Iterator<*>;Ljava/util/Iterator<*>;)Z').
name_ref(m_content_equals_159, method, 'contentEquals', 'Lorg/apache/commons/io/IOUtils;.contentEquals(Ljava/io/Reader;Ljava/io/Reader;)Z|Ljava/io/IOException;').
name_ref(m_content_equals_160, method, 'contentEquals', 'Lorg/apache/commons/io/IOUtils;.contentEquals(Ljava/util/stream/Stream<*>;Ljava/util/stream/Stream<*>;)Z').
name_ref(m_content_equals_ignore_eol_161, method, 'contentEqualsIgnoreEOL', 'Lorg/apache/commons/io/IOUtils;.contentEqualsIgnoreEOL(Ljava/io/BufferedReader;Ljava/io/BufferedReader;)Z').
name_ref(m_content_equals_ignore_eol_162, method, 'contentEqualsIgnoreEOL', 'Lorg/apache/commons/io/IOUtils;.contentEqualsIgnoreEOL(Ljava/io/Reader;Ljava/io/Reader;)Z|Ljava/io/UncheckedIOException;').
name_ref(m_copy_163, method, 'copy', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I|Ljava/io/IOException;').
name_ref(m_copy_164, method, 'copy', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)J|Ljava/io/IOException;').
name_ref(m_copy_165, method, 'copy', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/InputStream;Ljava/io/Writer;)V|Ljava/io/IOException;').
name_ref(m_copy_166, method, 'copy', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;').
name_ref(m_copy_167, method, 'copy', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/lang/String;)V|Ljava/io/IOException;').
name_ref(m_copy_168, method, 'copy', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/ByteArrayOutputStream;)Lorg/apache/commons/io/input/QueueInputStream;|Ljava/io/IOException;').
name_ref(m_copy_169, method, 'copy', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/Reader;Ljava/lang/Appendable;)J|Ljava/io/IOException;').
name_ref(m_copy_170, method, 'copy', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/Reader;Ljava/lang/Appendable;Ljava/nio/CharBuffer;)J|Ljava/io/IOException;').
name_ref(m_copy_171, method, 'copy', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/Reader;Ljava/io/OutputStream;)V|Ljava/io/IOException;').
name_ref(m_copy_172, method, 'copy', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/Reader;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;').
name_ref(m_copy_173, method, 'copy', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/Reader;Ljava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;').
name_ref(m_copy_174, method, 'copy', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/io/Reader;Ljava/io/Writer;)I|Ljava/io/IOException;').
name_ref(m_copy_175, method, 'copy', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/net/URL;Ljava/io/File;)J|Ljava/io/IOException;').
name_ref(m_copy_176, method, 'copy', 'Lorg/apache/commons/io/IOUtils;.copy(Ljava/net/URL;Ljava/io/OutputStream;)J|Ljava/io/IOException;').
name_ref(m_copy_301, method, 'copy', 'Lorg/apache/commons/io/file/PathUtils;.copy(Lorg/apache/commons/io/function/IOSupplier<Ljava/io/InputStream;>;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)J|Ljava/io/IOException;').
name_ref(m_copy_directory_302, method, 'copyDirectory', 'Lorg/apache/commons/io/file/PathUtils;.copyDirectory(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;').
name_ref(m_copy_file_303, method, 'copyFile', 'Lorg/apache/commons/io/file/PathUtils;.copyFile(Ljava/net/URL;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;|Ljava/io/IOException;').
name_ref(m_copy_file_to_directory_304, method, 'copyFileToDirectory', 'Lorg/apache/commons/io/file/PathUtils;.copyFileToDirectory(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;|Ljava/io/IOException;').
name_ref(m_copy_file_to_directory_305, method, 'copyFileToDirectory', 'Lorg/apache/commons/io/file/PathUtils;.copyFileToDirectory(Ljava/net/URL;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;|Ljava/io/IOException;').
name_ref(m_copy_large_177, method, 'copyLarge', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;)J|Ljava/io/IOException;').
name_ref(m_copy_large_178, method, 'copyLarge', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;[B)J|Ljava/io/IOException;').
name_ref(m_copy_large_179, method, 'copyLarge', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;JJ)J|Ljava/io/IOException;').
name_ref(m_copy_large_180, method, 'copyLarge', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;JJ[B)J|Ljava/io/IOException;').
name_ref(m_copy_large_181, method, 'copyLarge', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/Reader;Ljava/io/Writer;)J|Ljava/io/IOException;').
name_ref(m_copy_large_182, method, 'copyLarge', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/Reader;Ljava/io/Writer;[C)J|Ljava/io/IOException;').
name_ref(m_copy_large_183, method, 'copyLarge', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/Reader;Ljava/io/Writer;JJ)J|Ljava/io/IOException;').
name_ref(m_copy_large_184, method, 'copyLarge', 'Lorg/apache/commons/io/IOUtils;.copyLarge(Ljava/io/Reader;Ljava/io/Writer;JJ[C)J|Ljava/io/IOException;').
name_ref(m_count_directory_306, method, 'countDirectory', 'Lorg/apache/commons/io/file/PathUtils;.countDirectory(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;').
name_ref(m_count_directory_as_big_integer_307, method, 'countDirectoryAsBigInteger', 'Lorg/apache/commons/io/file/PathUtils;.countDirectoryAsBigInteger(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;').
name_ref(m_create_file_628, method, 'createFile', 'Lorg/apache/commons/io/test/TestUtils;.createFile(Ljava/io/File;J)V|Ljava/io/IOException;').
name_ref(m_create_file_629, method, 'createFile', 'Lorg/apache/commons/io/test/TestUtils;.createFile(Ljava/nio/file/Path;J)V|Ljava/io/IOException;').
name_ref(m_create_line_based_file_630, method, 'createLineBasedFile', 'Lorg/apache/commons/io/test/TestUtils;.createLineBasedFile(Ljava/io/File;[Ljava/lang/String;)V|Ljava/io/IOException;').
name_ref(m_create_parent_directories_308, method, 'createParentDirectories', 'Lorg/apache/commons/io/file/PathUtils;.createParentDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute<*>;)Ljava/nio/file/Path;|Ljava/io/IOException;').
name_ref(m_create_parent_directories_309, method, 'createParentDirectories', 'Lorg/apache/commons/io/file/PathUtils;.createParentDirectories(Ljava/nio/file/Path;Ljava/nio/file/LinkOption;[Ljava/nio/file/attribute/FileAttribute<*>;)Ljava/nio/file/Path;|Ljava/io/IOException;').
name_ref(m_current_2, method, 'current', 'Lorg/apache/commons/io/FileSystem;.current()Lorg/apache/commons/io/FileSystem;').
name_ref(m_current_310, method, 'current', 'Lorg/apache/commons/io/file/PathUtils;.current()Ljava/nio/file/Path;').
name_ref(m_delete_311, method, 'delete', 'Lorg/apache/commons/io/file/PathUtils;.delete(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;').
name_ref(m_delete_312, method, 'delete', 'Lorg/apache/commons/io/file/PathUtils;.delete(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;').
name_ref(m_delete_313, method, 'delete', 'Lorg/apache/commons/io/file/PathUtils;.delete(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;').
name_ref(m_delete_directory_314, method, 'deleteDirectory', 'Lorg/apache/commons/io/file/PathUtils;.deleteDirectory(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;').
name_ref(m_delete_directory_315, method, 'deleteDirectory', 'Lorg/apache/commons/io/file/PathUtils;.deleteDirectory(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;').
name_ref(m_delete_directory_316, method, 'deleteDirectory', 'Lorg/apache/commons/io/file/PathUtils;.deleteDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;').
name_ref(m_delete_file_317, method, 'deleteFile', 'Lorg/apache/commons/io/file/PathUtils;.deleteFile(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;').
name_ref(m_delete_file_318, method, 'deleteFile', 'Lorg/apache/commons/io/file/PathUtils;.deleteFile(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;').
name_ref(m_delete_file_319, method, 'deleteFile', 'Lorg/apache/commons/io/file/PathUtils;.deleteFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/nio/file/NoSuchFileException;|Ljava/io/IOException;').
name_ref(m_delete_file_631, method, 'deleteFile', 'Lorg/apache/commons/io/test/TestUtils;.deleteFile(Ljava/io/File;)V').
name_ref(m_delete_on_exit_320, method, 'deleteOnExit', 'Lorg/apache/commons/io/file/PathUtils;.deleteOnExit(Ljava/nio/file/Path;)V').
name_ref(m_directory_and_file_content_equals_321, method, 'directoryAndFileContentEquals', 'Lorg/apache/commons/io/file/PathUtils;.directoryAndFileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z|Ljava/io/IOException;').
name_ref(m_directory_and_file_content_equals_322, method, 'directoryAndFileContentEquals', 'Lorg/apache/commons/io/file/PathUtils;.directoryAndFileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;[Ljava/nio/file/FileVisitOption;)Z|Ljava/io/IOException;').
name_ref(m_directory_contains_33, method, 'directoryContains', 'Lorg/apache/commons/io/FilenameUtils;.directoryContains(Ljava/lang/String;Ljava/lang/String;)Z').
name_ref(m_directory_content_equals_323, method, 'directoryContentEquals', 'Lorg/apache/commons/io/file/PathUtils;.directoryContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z|Ljava/io/IOException;').
name_ref(m_directory_content_equals_324, method, 'directoryContentEquals', 'Lorg/apache/commons/io/file/PathUtils;.directoryContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;)Z|Ljava/io/IOException;').
name_ref(m_directory_file_filter_460, method, 'DirectoryFileFilter', 'Lorg/apache/commons/io/filefilter/DirectoryFileFilter;.()V').
name_ref(m_directory_file_filter_543, method, 'directoryFileFilter', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.directoryFileFilter()Lorg/apache/commons/io/filefilter/IOFileFilter;').
name_ref(m_do_get_full_path_34, method, 'doGetFullPath', 'Lorg/apache/commons/io/FilenameUtils;.doGetFullPath(Ljava/lang/String;Z)Ljava/lang/String;').
name_ref(m_do_get_path_35, method, 'doGetPath', 'Lorg/apache/commons/io/FilenameUtils;.doGetPath(Ljava/lang/String;I)Ljava/lang/String;').
name_ref(m_do_normalize_36, method, 'doNormalize', 'Lorg/apache/commons/io/FilenameUtils;.doNormalize(Ljava/lang/String;CZ)Ljava/lang/String;').
name_ref(m_empty_file_filter_463, method, 'EmptyFileFilter', 'Lorg/apache/commons/io/filefilter/EmptyFileFilter;.()V').
name_ref(m_equals_37, method, 'equals', 'Lorg/apache/commons/io/FilenameUtils;.equals(Ljava/lang/String;Ljava/lang/String;)Z').
name_ref(m_equals_38, method, 'equals', 'Lorg/apache/commons/io/FilenameUtils;.equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/commons/io/IOCase;)Z').
name_ref(m_equals_86, method, 'equals', 'Ljava/lang/String;.equals(Ljava/lang/Object;)Z').
name_ref(m_equals_ignore_case_87, method, 'equalsIgnoreCase', 'Ljava/lang/String;.equalsIgnoreCase(Ljava/lang/String;)Z').
name_ref(m_equals_last_modified_428, method, 'equalsLastModified', 'Lorg/apache/commons/io/filefilter/AbstractFilterTest;.equalsLastModified(Ljava/io/File;Ljava/io/File;)Z|Ljava/io/IOException;').
name_ref(m_equals_normalized_39, method, 'equalsNormalized', 'Lorg/apache/commons/io/FilenameUtils;.equalsNormalized(Ljava/lang/String;Ljava/lang/String;)Z').
name_ref(m_equals_normalized_on_system_40, method, 'equalsNormalizedOnSystem', 'Lorg/apache/commons/io/FilenameUtils;.equalsNormalizedOnSystem(Ljava/lang/String;Ljava/lang/String;)Z').
name_ref(m_equals_on_system_41, method, 'equalsOnSystem', 'Lorg/apache/commons/io/FilenameUtils;.equalsOnSystem(Ljava/lang/String;Ljava/lang/String;)Z').
name_ref(m_exists_325, method, 'exists', 'Lorg/apache/commons/io/file/PathUtils;.exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z').
name_ref(m_exists_483, method, 'exists', 'Ljava/io/File;.exists()Z').
name_ref(m_false_file_filter_555, method, 'falseFileFilter', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.falseFileFilter()Lorg/apache/commons/io/filefilter/IOFileFilter;').
name_ref(m_file_405, method, 'File', 'Ljava/io/File;.(Ljava/io/File;Ljava/lang/String;)V').
name_ref(m_file_515, method, 'File', 'Ljava/io/File;.(Ljava/lang/String;)V').
name_ref(m_file_content_equals_326, method, 'fileContentEquals', 'Lorg/apache/commons/io/file/PathUtils;.fileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z|Ljava/io/IOException;').
name_ref(m_file_content_equals_327, method, 'fileContentEquals', 'Lorg/apache/commons/io/file/PathUtils;.fileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;)Z|Ljava/io/IOException;').
name_ref(m_file_file_filter_472, method, 'FileFileFilter', 'Lorg/apache/commons/io/filefilter/FileFileFilter;.()V').
name_ref(m_file_file_filter_556, method, 'fileFileFilter', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.fileFileFilter()Lorg/apache/commons/io/filefilter/IOFileFilter;').
name_ref(m_file_filter_utils_590, method, 'FileFilterUtils', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.()V').
name_ref(m_file_system_11, method, 'FileSystem', 'Lorg/apache/commons/io/FileSystem;.(Ljava/lang/String;IIZZII[I[Ljava/lang/String;ZZC)V').
name_ref(m_filename_utils_78, method, 'FilenameUtils', 'Lorg/apache/commons/io/FilenameUtils;.()V').
name_ref(m_fill_0_185, method, 'fill0', 'Lorg/apache/commons/io/IOUtils;.fill0([B)[B').
name_ref(m_fill_0_186, method, 'fill0', 'Lorg/apache/commons/io/IOUtils;.fill0([C)[C').
name_ref(m_filter_328, method, 'filter', 'Lorg/apache/commons/io/file/PathUtils;.filter(Lorg/apache/commons/io/file/PathFilter;[Ljava/nio/file/Path;)[Ljava/nio/file/Path;').
name_ref(m_filter_557, method, 'filter', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.filter(Lorg/apache/commons/io/filefilter/IOFileFilter;[Ljava/io/File;)[Ljava/io/File;').
name_ref(m_filter_558, method, 'filter', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.filter(Lorg/apache/commons/io/filefilter/IOFileFilter;Ljava/lang/Iterable<Ljava/io/File;>;)[Ljava/io/File;').
name_ref(m_filter_files_559, method, 'filterFiles', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.filterFiles<R:Ljava/lang/Object;A:Ljava/lang/Object;>(Lorg/apache/commons/io/filefilter/IOFileFilter;Ljava/util/stream/Stream<Ljava/io/File;>;Ljava/util/stream/Collector<-Ljava/io/File;TA;TR;>;)TR;').
name_ref(m_filter_list_560, method, 'filterList', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.filterList(Lorg/apache/commons/io/filefilter/IOFileFilter;[Ljava/io/File;)Ljava/util/List<Ljava/io/File;>;').
name_ref(m_filter_list_561, method, 'filterList', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.filterList(Lorg/apache/commons/io/filefilter/IOFileFilter;Ljava/lang/Iterable<Ljava/io/File;>;)Ljava/util/List<Ljava/io/File;>;').
name_ref(m_filter_paths_329, method, 'filterPaths', 'Lorg/apache/commons/io/file/PathUtils;.filterPaths<R:Ljava/lang/Object;A:Ljava/lang/Object;>(Lorg/apache/commons/io/file/PathFilter;Ljava/util/stream/Stream<Ljava/nio/file/Path;>;Ljava/util/stream/Collector<-Ljava/nio/file/Path;TA;TR;>;)TR;').
name_ref(m_filter_set_562, method, 'filterSet', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.filterSet(Lorg/apache/commons/io/filefilter/IOFileFilter;[Ljava/io/File;)Ljava/util/Set<Ljava/io/File;>;').
name_ref(m_filter_set_563, method, 'filterSet', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.filterSet(Lorg/apache/commons/io/filefilter/IOFileFilter;Ljava/lang/Iterable<Ljava/io/File;>;)Ljava/util/Set<Ljava/io/File;>;').
name_ref(m_find_first_471, method, 'findFirst', 'Ljava/util/stream/Stream;.findFirst()Ljava/util/Optional<TT;>;').
name_ref(m_flip_separator_13, method, 'flipSeparator', 'Lorg/apache/commons/io/FilenameUtils;.flipSeparator(C)C').
name_ref(m_for_name_79, method, 'forName', 'Lorg/apache/commons/io/IOCase;.forName(Ljava/lang/String;)Lorg/apache/commons/io/IOCase;').
name_ref(m_generate_test_data_487, method, 'generateTestData', 'Lorg/apache/commons/io/test/TestUtils;.generateTestData(Ljava/io/OutputStream;J)V|Ljava/io/IOException;').
name_ref(m_generate_test_data_632, method, 'generateTestData', 'Lorg/apache/commons/io/test/TestUtils;.generateTestData(Ljava/io/File;J)V|Ljava/io/IOException;|Ljava/io/FileNotFoundException;').
name_ref(m_generate_test_data_633, method, 'generateTestData', 'Lorg/apache/commons/io/test/TestUtils;.generateTestData(J)[B').
name_ref(m_get_410, method, 'get', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.get(Lorg/apache/commons/io/function/IOSupplier<Ljava/nio/file/FileVisitResult;>;)Ljava/nio/file/FileVisitResult;').
name_ref(m_get_411, method, 'get', 'Lorg/apache/commons/io/function/IOSupplier;.get()TT;|Ljava/io/IOException;').
name_ref(m_get_acl_entry_list_330, method, 'getAclEntryList', 'Lorg/apache/commons/io/file/PathUtils;.getAclEntryList(Ljava/nio/file/Path;)Ljava/util/List<Ljava/nio/file/attribute/AclEntry;>;|Ljava/io/IOException;').
name_ref(m_get_acl_file_attribute_view_331, method, 'getAclFileAttributeView', 'Lorg/apache/commons/io/file/PathUtils;.getAclFileAttributeView(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/AclFileAttributeView;').
name_ref(m_get_ads_critical_offset_42, method, 'getAdsCriticalOffset', 'Lorg/apache/commons/io/FilenameUtils;.getAdsCriticalOffset(Ljava/lang/String;)I').
name_ref(m_get_base_name_43, method, 'getBaseName', 'Lorg/apache/commons/io/FilenameUtils;.getBaseName(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_get_block_size_14, method, 'getBlockSize', 'Lorg/apache/commons/io/FileSystem;.getBlockSize()I').
name_ref(m_get_bytes_295, method, 'getBytes', 'Lorg/apache/commons/io/StandardLineSeparator;.getBytes(Ljava/nio/charset/Charset;)[B').
name_ref(m_get_class_418, method, 'getClass', 'Ljava/lang/Object;.getClass()Ljava/lang/Class<*>;').
name_ref(m_get_current_3, method, 'getCurrent', 'Lorg/apache/commons/io/FileSystem;.getCurrent()Lorg/apache/commons/io/FileSystem;').
name_ref(m_get_dos_file_attribute_view_332, method, 'getDosFileAttributeView', 'Lorg/apache/commons/io/file/PathUtils;.getDosFileAttributeView(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/DosFileAttributeView;').
name_ref(m_get_extension_44, method, 'getExtension', 'Lorg/apache/commons/io/FilenameUtils;.getExtension(Ljava/lang/String;)Ljava/lang/String;|Ljava/lang/IllegalArgumentException;').
name_ref(m_get_file_filters_443, method, 'getFileFilters', 'Lorg/apache/commons/io/filefilter/AndFileFilter;.getFileFilters()Ljava/util/List<Lorg/apache/commons/io/filefilter/IOFileFilter;>;').
name_ref(m_get_file_name_333, method, 'getFileName', 'Lorg/apache/commons/io/file/PathUtils;.getFileName<R:Ljava/lang/Object;>(Ljava/nio/file/Path;Ljava/util/function/Function<Ljava/nio/file/Path;TR;>;)TR;').
name_ref(m_get_file_name_334, method, 'getFileName', 'Ljava/nio/file/Path;.getFileName()Ljava/nio/file/Path;').
name_ref(m_get_file_name_string_336, method, 'getFileNameString', 'Lorg/apache/commons/io/file/PathUtils;.getFileNameString(Ljava/nio/file/Path;)Ljava/lang/String;').
name_ref(m_get_full_path_45, method, 'getFullPath', 'Lorg/apache/commons/io/FilenameUtils;.getFullPath(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_get_full_path_no_end_separator_46, method, 'getFullPathNoEndSeparator', 'Lorg/apache/commons/io/FilenameUtils;.getFullPathNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_get_illegal_file_name_chars_15, method, 'getIllegalFileNameChars', 'Lorg/apache/commons/io/FileSystem;.getIllegalFileNameChars()[C').
name_ref(m_get_illegal_file_name_code_points_16, method, 'getIllegalFileNameCodePoints', 'Lorg/apache/commons/io/FileSystem;.getIllegalFileNameCodePoints()[I').
name_ref(m_get_last_modified_file_time_338, method, 'getLastModifiedFileTime', 'Lorg/apache/commons/io/file/PathUtils;.getLastModifiedFileTime(Ljava/io/File;)Ljava/nio/file/attribute/FileTime;|Ljava/io/IOException;').
name_ref(m_get_last_modified_file_time_339, method, 'getLastModifiedFileTime', 'Lorg/apache/commons/io/file/PathUtils;.getLastModifiedFileTime(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;|Ljava/io/IOException;').
name_ref(m_get_last_modified_file_time_340, method, 'getLastModifiedFileTime', 'Lorg/apache/commons/io/file/PathUtils;.getLastModifiedFileTime(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;|Ljava/io/IOException;').
name_ref(m_get_last_modified_file_time_341, method, 'getLastModifiedFileTime', 'Lorg/apache/commons/io/file/PathUtils;.getLastModifiedFileTime(Ljava/net/URI;)Ljava/nio/file/attribute/FileTime;|Ljava/io/IOException;').
name_ref(m_get_last_modified_file_time_342, method, 'getLastModifiedFileTime', 'Lorg/apache/commons/io/file/PathUtils;.getLastModifiedFileTime(Ljava/net/URL;)Ljava/nio/file/attribute/FileTime;|Ljava/io/IOException;|Ljava/net/URISyntaxException;').
name_ref(m_get_last_modified_time_343, method, 'getLastModifiedTime', 'Lorg/apache/commons/io/file/PathUtils;.getLastModifiedTime(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;|Ljava/io/IOException;').
name_ref(m_get_max_file_name_length_17, method, 'getMaxFileNameLength', 'Lorg/apache/commons/io/FileSystem;.getMaxFileNameLength()I').
name_ref(m_get_max_path_length_18, method, 'getMaxPathLength', 'Lorg/apache/commons/io/FileSystem;.getMaxPathLength()I').
name_ref(m_get_name_424, method, 'getName', 'Ljava/lang/Class;.getName()Ljava/lang/String;').
name_ref(m_get_name_47, method, 'getName', 'Lorg/apache/commons/io/FilenameUtils;.getName(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_get_name_608, method, 'getName', 'Ljava/io/File;.getName()Ljava/lang/String;').
name_ref(m_get_name_91, method, 'getName', 'Lorg/apache/commons/io/IOCase;.getName()Ljava/lang/String;').
name_ref(m_get_name_separator_19, method, 'getNameSeparator', 'Lorg/apache/commons/io/FileSystem;.getNameSeparator()C').
name_ref(m_get_os_matches_name_1, method, 'getOsMatchesName', 'Lorg/apache/commons/io/FileSystem;.getOsMatchesName(Ljava/lang/String;)Z').
name_ref(m_get_parent_344, method, 'getParent', 'Lorg/apache/commons/io/file/PathUtils;.getParent(Ljava/nio/file/Path;)Ljava/nio/file/Path;').
name_ref(m_get_parent_file_484, method, 'getParentFile', 'Ljava/io/File;.getParentFile()Ljava/io/File;').
name_ref(m_get_path_48, method, 'getPath', 'Lorg/apache/commons/io/FilenameUtils;.getPath(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_get_path_no_end_separator_49, method, 'getPathNoEndSeparator', 'Lorg/apache/commons/io/FilenameUtils;.getPathNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_get_posix_file_attribute_view_345, method, 'getPosixFileAttributeView', 'Lorg/apache/commons/io/file/PathUtils;.getPosixFileAttributeView(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/PosixFileAttributeView;').
name_ref(m_get_prefix_50, method, 'getPrefix', 'Lorg/apache/commons/io/FilenameUtils;.getPrefix(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_get_prefix_length_51, method, 'getPrefixLength', 'Lorg/apache/commons/io/FilenameUtils;.getPrefixLength(Ljava/lang/String;)I').
name_ref(m_get_property_6, method, 'getProperty', 'Ljava/lang/System;.getProperty(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_get_reserved_file_names_20, method, 'getReservedFileNames', 'Lorg/apache/commons/io/FileSystem;.getReservedFileNames()[Ljava/lang/String;').
name_ref(m_get_scratch_byte_array_187, method, 'getScratchByteArray', 'Lorg/apache/commons/io/IOUtils;.getScratchByteArray()[B').
name_ref(m_get_scratch_byte_array_write_only_188, method, 'getScratchByteArrayWriteOnly', 'Lorg/apache/commons/io/IOUtils;.getScratchByteArrayWriteOnly()[B').
name_ref(m_get_scratch_char_array_189, method, 'getScratchCharArray', 'Lorg/apache/commons/io/IOUtils;.getScratchCharArray()[C').
name_ref(m_get_scratch_char_array_write_only_190, method, 'getScratchCharArrayWriteOnly', 'Lorg/apache/commons/io/IOUtils;.getScratchCharArrayWriteOnly()[C').
name_ref(m_get_simple_name_417, method, 'getSimpleName', 'Ljava/lang/Class;.getSimpleName()Ljava/lang/String;').
name_ref(m_get_string_123, method, 'getString', 'Lorg/apache/commons/io/StandardLineSeparator;.getString()Ljava/lang/String;').
name_ref(m_get_system_property_5, method, 'getSystemProperty', 'Lorg/apache/commons/io/FileSystem;.getSystemProperty(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_get_temp_directory_346, method, 'getTempDirectory', 'Lorg/apache/commons/io/file/PathUtils;.getTempDirectory()Ljava/nio/file/Path;').
name_ref(m_handle_412, method, 'handle', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.handle(Ljava/lang/Throwable;)Ljava/nio/file/FileVisitResult;').
name_ref(m_hidden_file_filter_591, method, 'HiddenFileFilter', 'Lorg/apache/commons/io/filefilter/HiddenFileFilter;.()V').
name_ref(m_index_of_7, method, 'indexOf', 'Lorg/apache/commons/io/FileSystem;.indexOf(Ljava/lang/CharSequence;II)I').
name_ref(m_index_of_extension_52, method, 'indexOfExtension', 'Lorg/apache/commons/io/FilenameUtils;.indexOfExtension(Ljava/lang/String;)I|Ljava/lang/IllegalArgumentException;').
name_ref(m_index_of_last_separator_53, method, 'indexOfLastSeparator', 'Lorg/apache/commons/io/FilenameUtils;.indexOfLastSeparator(Ljava/lang/String;)I').
name_ref(m_iocase_82, method, 'IOCase', 'Lorg/apache/commons/io/IOCase;.(Ljava/lang/String;ILjava/lang/String;Z)V').
name_ref(m_ioutils_293, method, 'IOUtils', 'Lorg/apache/commons/io/IOUtils;.()V').
name_ref(m_is_case_preserving_21, method, 'isCasePreserving', 'Lorg/apache/commons/io/FileSystem;.isCasePreserving()Z').
name_ref(m_is_case_sensitive_22, method, 'isCaseSensitive', 'Lorg/apache/commons/io/FileSystem;.isCaseSensitive()Z').
name_ref(m_is_case_sensitive_80, method, 'isCaseSensitive', 'Lorg/apache/commons/io/IOCase;.isCaseSensitive(Lorg/apache/commons/io/IOCase;)Z').
name_ref(m_is_case_sensitive_92, method, 'isCaseSensitive', 'Lorg/apache/commons/io/IOCase;.isCaseSensitive()Z').
name_ref(m_is_directory_347, method, 'isDirectory', 'Lorg/apache/commons/io/file/PathUtils;.isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z').
name_ref(m_is_directory_465, method, 'isDirectory', 'Ljava/io/File;.isDirectory()Z').
name_ref(m_is_directory_468, method, 'isDirectory', 'Ljava/nio/file/Files;.isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z').
name_ref(m_is_empty_348, method, 'isEmpty', 'Lorg/apache/commons/io/file/PathUtils;.isEmpty(Ljava/nio/file/Path;)Z|Ljava/io/IOException;').
name_ref(m_is_empty_444, method, 'isEmpty', 'Lorg/apache/commons/io/filefilter/AndFileFilter;.isEmpty()Z').
name_ref(m_is_empty_54, method, 'isEmpty', 'Lorg/apache/commons/io/FilenameUtils;.isEmpty(Ljava/lang/String;)Z').
name_ref(m_is_empty_directory_349, method, 'isEmptyDirectory', 'Lorg/apache/commons/io/file/PathUtils;.isEmptyDirectory(Ljava/nio/file/Path;)Z|Ljava/io/IOException;').
name_ref(m_is_empty_file_350, method, 'isEmptyFile', 'Lorg/apache/commons/io/file/PathUtils;.isEmptyFile(Ljava/nio/file/Path;)Z|Ljava/io/IOException;').
name_ref(m_is_extension_55, method, 'isExtension', 'Lorg/apache/commons/io/FilenameUtils;.isExtension(Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;)Z').
name_ref(m_is_extension_56, method, 'isExtension', 'Lorg/apache/commons/io/FilenameUtils;.isExtension(Ljava/lang/String;Ljava/lang/String;)Z').
name_ref(m_is_extension_57, method, 'isExtension', 'Lorg/apache/commons/io/FilenameUtils;.isExtension(Ljava/lang/String;[Ljava/lang/String;)Z').
name_ref(m_is_file_474, method, 'isFile', 'Ljava/io/File;.isFile()Z').
name_ref(m_is_hidden_593, method, 'isHidden', 'Ljava/io/File;.isHidden()Z').
name_ref(m_is_hidden_595, method, 'isHidden', 'Ljava/nio/file/Files;.isHidden(Ljava/nio/file/Path;)Z|Ljava/io/IOException;').
name_ref(m_is_illegal_file_name_char_23, method, 'isIllegalFileNameChar', 'Lorg/apache/commons/io/FileSystem;.isIllegalFileNameChar(I)Z').
name_ref(m_is_ipv4_address_58, method, 'isIPv4Address', 'Lorg/apache/commons/io/FilenameUtils;.isIPv4Address(Ljava/lang/String;)Z').
name_ref(m_is_ipv6_address_59, method, 'isIPv6Address', 'Lorg/apache/commons/io/FilenameUtils;.isIPv6Address(Ljava/lang/String;)Z').
name_ref(m_is_legal_file_name_24, method, 'isLegalFileName', 'Lorg/apache/commons/io/FileSystem;.isLegalFileName(Ljava/lang/CharSequence;)Z').
name_ref(m_is_newer_351, method, 'isNewer', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;Ljava/time/chrono/ChronoZonedDateTime<*>;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;').
name_ref(m_is_newer_352, method, 'isNewer', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;').
name_ref(m_is_newer_353, method, 'isNewer', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;Ljava/time/Instant;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;').
name_ref(m_is_newer_354, method, 'isNewer', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;J[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;').
name_ref(m_is_newer_355, method, 'isNewer', 'Lorg/apache/commons/io/file/PathUtils;.isNewer(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z|Ljava/io/IOException;').
name_ref(m_is_older_356, method, 'isOlder', 'Lorg/apache/commons/io/file/PathUtils;.isOlder(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;').
name_ref(m_is_older_357, method, 'isOlder', 'Lorg/apache/commons/io/file/PathUtils;.isOlder(Ljava/nio/file/Path;Ljava/time/Instant;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;').
name_ref(m_is_older_358, method, 'isOlder', 'Lorg/apache/commons/io/file/PathUtils;.isOlder(Ljava/nio/file/Path;J[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;').
name_ref(m_is_older_359, method, 'isOlder', 'Lorg/apache/commons/io/file/PathUtils;.isOlder(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z|Ljava/io/IOException;').
name_ref(m_is_os_name_match_4, method, 'isOsNameMatch', 'Lorg/apache/commons/io/FileSystem;.isOsNameMatch(Ljava/lang/String;Ljava/lang/String;)Z').
name_ref(m_is_posix_360, method, 'isPosix', 'Lorg/apache/commons/io/file/PathUtils;.isPosix(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z').
name_ref(m_is_present_470, method, 'isPresent', 'Ljava/util/Optional;.isPresent()Z').
name_ref(m_is_readable_454, method, 'isReadable', 'Ljava/nio/file/Files;.isReadable(Ljava/nio/file/Path;)Z').
name_ref(m_is_regular_file_361, method, 'isRegularFile', 'Lorg/apache/commons/io/file/PathUtils;.isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z').
name_ref(m_is_reserved_file_name_25, method, 'isReservedFileName', 'Lorg/apache/commons/io/FileSystem;.isReservedFileName(Ljava/lang/CharSequence;)Z').
name_ref(m_is_rfc3986host_name_60, method, 'isRFC3986HostName', 'Lorg/apache/commons/io/FilenameUtils;.isRFC3986HostName(Ljava/lang/String;)Z').
name_ref(m_is_separator_61, method, 'isSeparator', 'Lorg/apache/commons/io/FilenameUtils;.isSeparator(C)Z').
name_ref(m_is_system_windows_62, method, 'isSystemWindows', 'Lorg/apache/commons/io/FilenameUtils;.isSystemWindows()Z').
name_ref(m_is_valid_host_name_63, method, 'isValidHostName', 'Lorg/apache/commons/io/FilenameUtils;.isValidHostName(Ljava/lang/String;)Z').
name_ref(m_is_writable_459, method, 'isWritable', 'Ljava/nio/file/Files;.isWritable(Ljava/nio/file/Path;)Z').
name_ref(m_length_191, method, 'length', 'Lorg/apache/commons/io/IOUtils;.length([B)I').
name_ref(m_length_192, method, 'length', 'Lorg/apache/commons/io/IOUtils;.length([C)I').
name_ref(m_length_193, method, 'length', 'Lorg/apache/commons/io/IOUtils;.length(Ljava/lang/CharSequence;)I').
name_ref(m_length_194, method, 'length', 'Lorg/apache/commons/io/IOUtils;.length([Ljava/lang/Object;)I').
name_ref(m_line_iterator_195, method, 'lineIterator', 'Lorg/apache/commons/io/IOUtils;.lineIterator(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lorg/apache/commons/io/LineIterator;').
name_ref(m_line_iterator_196, method, 'lineIterator', 'Lorg/apache/commons/io/IOUtils;.lineIterator(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/commons/io/LineIterator;').
name_ref(m_line_iterator_197, method, 'lineIterator', 'Lorg/apache/commons/io/IOUtils;.lineIterator(Ljava/io/Reader;)Lorg/apache/commons/io/LineIterator;').
name_ref(m_line_separator_122, method, 'lineSeparator', 'Ljava/lang/System;.lineSeparator()Ljava/lang/String;').
name_ref(m_list_469, method, 'list', 'Ljava/nio/file/Files;.list(Ljava/nio/file/Path;)Ljava/util/stream/Stream<Ljava/nio/file/Path;>;|Ljava/io/IOException;').
name_ref(m_list_files_466, method, 'listFiles', 'Ljava/io/File;.listFiles()[Ljava/io/File;').
name_ref(m_magic_number_file_filter_564, method, 'magicNumberFileFilter', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.magicNumberFileFilter([B)Lorg/apache/commons/io/filefilter/IOFileFilter;').
name_ref(m_magic_number_file_filter_565, method, 'magicNumberFileFilter', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.magicNumberFileFilter([BJ)Lorg/apache/commons/io/filefilter/IOFileFilter;').
name_ref(m_magic_number_file_filter_566, method, 'magicNumberFileFilter', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.magicNumberFileFilter(Ljava/lang/String;)Lorg/apache/commons/io/filefilter/IOFileFilter;').
name_ref(m_magic_number_file_filter_567, method, 'magicNumberFileFilter', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.magicNumberFileFilter(Ljava/lang/String;J)Lorg/apache/commons/io/filefilter/IOFileFilter;').
name_ref(m_make_cvsaware_568, method, 'makeCVSAware', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.makeCVSAware(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;').
name_ref(m_make_directory_only_569, method, 'makeDirectoryOnly', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.makeDirectoryOnly(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;').
name_ref(m_make_file_only_570, method, 'makeFileOnly', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.makeFileOnly(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;').
name_ref(m_make_svnaware_571, method, 'makeSVNAware', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.makeSVNAware(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;').
name_ref(m_map_585, method, 'map', 'Ljava/util/stream/Stream;.map<R:Ljava/lang/Object;>(Ljava/util/function/Function<-TT;+TR;>;)Ljava/util/stream/Stream<TR;>;').
name_ref(m_matches_597, method, 'matches', 'Lorg/apache/commons/io/filefilter/IOFileFilter;.matches(Ljava/nio/file/Path;)Z').
name_ref(m_mkdirs_495, method, 'mkdirs', 'Ljava/io/File;.mkdirs()Z').
name_ref(m_name_file_filter_526, method, 'NameFileFilter', 'Lorg/apache/commons/io/filefilter/NameFileFilter;.([Ljava/lang/String;)V').
name_ref(m_name_file_filter_544, method, 'nameFileFilter', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.nameFileFilter(Ljava/lang/String;)Lorg/apache/commons/io/filefilter/IOFileFilter;').
name_ref(m_name_file_filter_572, method, 'NameFileFilter', 'Lorg/apache/commons/io/filefilter/NameFileFilter;.(Ljava/lang/String;)V').
name_ref(m_name_file_filter_573, method, 'nameFileFilter', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.nameFileFilter(Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Lorg/apache/commons/io/filefilter/IOFileFilter;').
name_ref(m_name_file_filter_574, method, 'NameFileFilter', 'Lorg/apache/commons/io/filefilter/NameFileFilter;.(Ljava/lang/String;Lorg/apache/commons/io/IOCase;)V').
name_ref(m_name_file_filter_600, method, 'NameFileFilter', 'Lorg/apache/commons/io/filefilter/NameFileFilter;.(Ljava/util/List<Ljava/lang/String;>;)V').
name_ref(m_name_file_filter_601, method, 'NameFileFilter', 'Lorg/apache/commons/io/filefilter/NameFileFilter;.(Ljava/util/List<Ljava/lang/String;>;Lorg/apache/commons/io/IOCase;)V').
name_ref(m_name_file_filter_604, method, 'NameFileFilter', 'Lorg/apache/commons/io/filefilter/NameFileFilter;.([Ljava/lang/String;Lorg/apache/commons/io/IOCase;)V').
name_ref(m_negate_449, method, 'negate', 'Lorg/apache/commons/io/filefilter/IOFileFilter;.negate()Lorg/apache/commons/io/filefilter/IOFileFilter;').
name_ref(m_new_directory_stream_362, method, 'newDirectoryStream', 'Lorg/apache/commons/io/file/PathUtils;.newDirectoryStream(Ljava/nio/file/Path;Lorg/apache/commons/io/file/PathFilter;)Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;|Ljava/io/IOException;').
name_ref(m_new_file_635, method, 'newFile', 'Lorg/apache/commons/io/test/TestUtils;.newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;|Ljava/io/IOException;').
name_ref(m_new_output_stream_363, method, 'newOutputStream', 'Lorg/apache/commons/io/file/PathUtils;.newOutputStream(Ljava/nio/file/Path;Z)Ljava/io/OutputStream;|Ljava/io/IOException;').
name_ref(m_new_output_stream_364, method, 'newOutputStream', 'Lorg/apache/commons/io/file/PathUtils;.newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;|Ljava/io/IOException;').
name_ref(m_new_output_stream_486, method, 'newOutputStream', 'Ljava/nio/file/Files;.newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;|Ljava/io/IOException;').
name_ref(m_no_follow_link_option_array_365, method, 'noFollowLinkOptionArray', 'Lorg/apache/commons/io/file/PathUtils;.noFollowLinkOptionArray()[Ljava/nio/file/LinkOption;').
name_ref(m_normalize_64, method, 'normalize', 'Lorg/apache/commons/io/FilenameUtils;.normalize(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_normalize_65, method, 'normalize', 'Lorg/apache/commons/io/FilenameUtils;.normalize(Ljava/lang/String;Z)Ljava/lang/String;').
name_ref(m_normalize_no_end_separator_66, method, 'normalizeNoEndSeparator', 'Lorg/apache/commons/io/FilenameUtils;.normalizeNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_normalize_no_end_separator_67, method, 'normalizeNoEndSeparator', 'Lorg/apache/commons/io/FilenameUtils;.normalizeNoEndSeparator(Ljava/lang/String;Z)Ljava/lang/String;').
name_ref(m_normalize_separators_26, method, 'normalizeSeparators', 'Lorg/apache/commons/io/FileSystem;.normalizeSeparators(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_not_618, method, 'not', 'Lorg/apache/commons/io/filefilter/NotFileFilter;.not(Ljava/nio/file/FileVisitResult;)Ljava/nio/file/FileVisitResult;').
name_ref(m_not_exists_366, method, 'notExists', 'Lorg/apache/commons/io/file/PathUtils;.notExists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z').
name_ref(m_not_file_filter_541, method, 'notFileFilter', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.notFileFilter(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;').
name_ref(m_not_file_filter_598, method, 'NotFileFilter', 'Lorg/apache/commons/io/filefilter/NotFileFilter;.(Lorg/apache/commons/io/filefilter/IOFileFilter;)V').
name_ref(m_of_586, method, 'of', 'Ljava/util/stream/Stream;.of<T:Ljava/lang/Object;>([TT;)Ljava/util/stream/Stream<TT;>;').
name_ref(m_or_575, method, 'or', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.or([Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;').
name_ref(m_or_599, method, 'or', 'Lorg/apache/commons/io/filefilter/IOFileFilter;.or(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;').
name_ref(m_or_file_filter_576, method, 'orFileFilter', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.orFileFilter(Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;').
name_ref(m_override_read_only_367, method, 'overrideReadOnly', 'Lorg/apache/commons/io/file/PathUtils;.overrideReadOnly([Lorg/apache/commons/io/file/DeleteOption;)Z').
name_ref(m_path_utils_399, method, 'PathUtils', 'Lorg/apache/commons/io/file/PathUtils;.()V').
name_ref(m_post_visit_directory_413, method, 'postVisitDirectory', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.postVisitDirectory(Ljava/nio/file/Path;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;|Ljava/io/IOException;').
name_ref(m_pre_visit_directory_414, method, 'preVisitDirectory', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.preVisitDirectory(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;|Ljava/io/IOException;').
name_ref(m_prefix_file_filter_577, method, 'prefixFileFilter', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.prefixFileFilter(Ljava/lang/String;)Lorg/apache/commons/io/filefilter/IOFileFilter;').
name_ref(m_prefix_file_filter_578, method, 'prefixFileFilter', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.prefixFileFilter(Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Lorg/apache/commons/io/filefilter/IOFileFilter;').
name_ref(m_read_198, method, 'read', 'Lorg/apache/commons/io/IOUtils;.read(Ljava/io/InputStream;[B)I|Ljava/io/IOException;').
name_ref(m_read_199, method, 'read', 'Lorg/apache/commons/io/IOUtils;.read(Ljava/io/InputStream;[BII)I|Ljava/io/IOException;').
name_ref(m_read_200, method, 'read', 'Lorg/apache/commons/io/IOUtils;.read(Lorg/apache/commons/io/function/IOTriFunction<[BLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;>;[BII)I|Ljava/io/IOException;').
name_ref(m_read_201, method, 'read', 'Lorg/apache/commons/io/IOUtils;.read(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)I|Ljava/io/IOException;').
name_ref(m_read_202, method, 'read', 'Lorg/apache/commons/io/IOUtils;.read(Ljava/io/Reader;[C)I|Ljava/io/IOException;').
name_ref(m_read_203, method, 'read', 'Lorg/apache/commons/io/IOUtils;.read(Ljava/io/Reader;[CII)I|Ljava/io/IOException;').
name_ref(m_read_attributes_368, method, 'readAttributes', 'Lorg/apache/commons/io/file/PathUtils;.readAttributes<A::Ljava/nio/file/attribute/BasicFileAttributes;>(Ljava/nio/file/Path;Ljava/lang/Class<TA;>;[Ljava/nio/file/LinkOption;)TA;').
name_ref(m_read_basic_file_attributes_369, method, 'readBasicFileAttributes', 'Lorg/apache/commons/io/file/PathUtils;.readBasicFileAttributes(Ljava/nio/file/Path;)Ljava/nio/file/attribute/BasicFileAttributes;|Ljava/io/IOException;').
name_ref(m_read_basic_file_attributes_370, method, 'readBasicFileAttributes', 'Lorg/apache/commons/io/file/PathUtils;.readBasicFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;').
name_ref(m_read_basic_file_attributes_unchecked_371, method, 'readBasicFileAttributesUnchecked', 'Lorg/apache/commons/io/file/PathUtils;.readBasicFileAttributesUnchecked(Ljava/nio/file/Path;)Ljava/nio/file/attribute/BasicFileAttributes;').
name_ref(m_read_dos_file_attributes_372, method, 'readDosFileAttributes', 'Lorg/apache/commons/io/file/PathUtils;.readDosFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/DosFileAttributes;').
name_ref(m_read_fully_204, method, 'readFully', 'Lorg/apache/commons/io/IOUtils;.readFully(Ljava/io/InputStream;[B)V|Ljava/io/IOException;').
name_ref(m_read_fully_205, method, 'readFully', 'Lorg/apache/commons/io/IOUtils;.readFully(Ljava/io/InputStream;[BII)V|Ljava/io/IOException;').
name_ref(m_read_fully_206, method, 'readFully', 'Lorg/apache/commons/io/IOUtils;.readFully(Ljava/io/InputStream;I)[B|Ljava/io/IOException;').
name_ref(m_read_fully_207, method, 'readFully', 'Lorg/apache/commons/io/IOUtils;.readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V|Ljava/io/IOException;').
name_ref(m_read_fully_208, method, 'readFully', 'Lorg/apache/commons/io/IOUtils;.readFully(Ljava/io/Reader;[C)V|Ljava/io/IOException;').
name_ref(m_read_fully_209, method, 'readFully', 'Lorg/apache/commons/io/IOUtils;.readFully(Ljava/io/Reader;[CII)V|Ljava/io/IOException;').
name_ref(m_read_if_symbolic_link_373, method, 'readIfSymbolicLink', 'Lorg/apache/commons/io/file/PathUtils;.readIfSymbolicLink(Ljava/nio/file/Path;)Ljava/nio/file/Path;|Ljava/io/IOException;').
name_ref(m_read_lines_210, method, 'readLines', 'Lorg/apache/commons/io/IOUtils;.readLines(Ljava/io/InputStream;)Ljava/util/List<Ljava/lang/String;>;|Ljava/io/UncheckedIOException;').
name_ref(m_read_lines_211, method, 'readLines', 'Lorg/apache/commons/io/IOUtils;.readLines(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/util/List<Ljava/lang/String;>;|Ljava/io/UncheckedIOException;').
name_ref(m_read_lines_212, method, 'readLines', 'Lorg/apache/commons/io/IOUtils;.readLines(Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/List<Ljava/lang/String;>;|Ljava/io/UncheckedIOException;').
name_ref(m_read_lines_213, method, 'readLines', 'Lorg/apache/commons/io/IOUtils;.readLines(Ljava/io/Reader;)Ljava/util/List<Ljava/lang/String;>;|Ljava/io/UncheckedIOException;').
name_ref(m_read_os_file_attributes_374, method, 'readOsFileAttributes', 'Lorg/apache/commons/io/file/PathUtils;.readOsFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;').
name_ref(m_read_posix_file_attributes_375, method, 'readPosixFileAttributes', 'Lorg/apache/commons/io/file/PathUtils;.readPosixFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/PosixFileAttributes;').
name_ref(m_read_resolve_93, method, 'readResolve', 'Lorg/apache/commons/io/IOCase;.readResolve()Ljava/lang/Object;').
name_ref(m_read_string_376, method, 'readString', 'Lorg/apache/commons/io/file/PathUtils;.readString(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/lang/String;|Ljava/io/IOException;').
name_ref(m_relative_sorted_paths_296, method, 'RelativeSortedPaths', 'Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;.(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;)V|Ljava/io/IOException;').
name_ref(m_relativize_377, method, 'relativize', 'Lorg/apache/commons/io/file/PathUtils;.relativize(Ljava/util/Collection<Ljava/nio/file/Path;>;Ljava/nio/file/Path;ZLjava/util/Comparator<-Ljava/nio/file/Path;>;)Ljava/util/List<Ljava/nio/file/Path;>;').
name_ref(m_remove_extension_68, method, 'removeExtension', 'Lorg/apache/commons/io/FilenameUtils;.removeExtension(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_remove_file_filter_445, method, 'removeFileFilter', 'Lorg/apache/commons/io/filefilter/AndFileFilter;.removeFileFilter(Lorg/apache/commons/io/filefilter/IOFileFilter;)Z').
name_ref(m_replace_10, method, 'replace', 'Lorg/apache/commons/io/FileSystem;.replace(Ljava/lang/String;CC)Ljava/lang/String;').
name_ref(m_require_exists_378, method, 'requireExists', 'Lorg/apache/commons/io/file/PathUtils;.requireExists(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;').
name_ref(m_require_non_null_12, method, 'requireNonNull', 'Ljava/util/Objects;.requireNonNull<T:Ljava/lang/Object;>(TT;Ljava/lang/String;)TT;').
name_ref(m_require_non_null_587, method, 'requireNonNull', 'Ljava/util/Objects;.requireNonNull<T:Ljava/lang/Object;>(TT;)TT;').
name_ref(m_require_non_null_chars_69, method, 'requireNonNullChars', 'Lorg/apache/commons/io/FilenameUtils;.requireNonNullChars(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_resource_to_byte_array_214, method, 'resourceToByteArray', 'Lorg/apache/commons/io/IOUtils;.resourceToByteArray(Ljava/lang/String;)[B|Ljava/io/IOException;').
name_ref(m_resource_to_byte_array_215, method, 'resourceToByteArray', 'Lorg/apache/commons/io/IOUtils;.resourceToByteArray(Ljava/lang/String;Ljava/lang/ClassLoader;)[B|Ljava/io/IOException;').
name_ref(m_resource_to_string_216, method, 'resourceToString', 'Lorg/apache/commons/io/IOUtils;.resourceToString(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;|Ljava/io/IOException;').
name_ref(m_resource_to_string_217, method, 'resourceToString', 'Lorg/apache/commons/io/IOUtils;.resourceToString(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/ClassLoader;)Ljava/lang/String;|Ljava/io/IOException;').
name_ref(m_resource_to_url_218, method, 'resourceToURL', 'Lorg/apache/commons/io/IOUtils;.resourceToURL(Ljava/lang/String;)Ljava/net/URL;|Ljava/io/IOException;').
name_ref(m_resource_to_url_219, method, 'resourceToURL', 'Lorg/apache/commons/io/IOUtils;.resourceToURL(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/net/URL;|Ljava/io/IOException;').
name_ref(m_separators_to_system_70, method, 'separatorsToSystem', 'Lorg/apache/commons/io/FilenameUtils;.separatorsToSystem(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_separators_to_unix_71, method, 'separatorsToUnix', 'Lorg/apache/commons/io/FilenameUtils;.separatorsToUnix(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_separators_to_windows_72, method, 'separatorsToWindows', 'Lorg/apache/commons/io/FilenameUtils;.separatorsToWindows(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_serialize_97, method, 'serialize', 'Lorg/apache/commons/io/IOCaseTest;.serialize(Lorg/apache/commons/io/IOCase;)Lorg/apache/commons/io/IOCase;|Ljava/lang/Exception;').
name_ref(m_set_dos_read_only_379, method, 'setDosReadOnly', 'Lorg/apache/commons/io/file/PathUtils;.setDosReadOnly(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;').
name_ref(m_set_file_filters_446, method, 'setFileFilters', 'Lorg/apache/commons/io/filefilter/AndFileFilter;.setFileFilters(Ljava/util/List<Lorg/apache/commons/io/filefilter/IOFileFilter;>;)V').
name_ref(m_set_last_modified_time_380, method, 'setLastModifiedTime', 'Lorg/apache/commons/io/file/PathUtils;.setLastModifiedTime(Ljava/nio/file/Path;Ljava/nio/file/Path;)V|Ljava/io/IOException;').
name_ref(m_set_posix_delete_permissions_381, method, 'setPosixDeletePermissions', 'Lorg/apache/commons/io/file/PathUtils;.setPosixDeletePermissions(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;').
name_ref(m_set_posix_permissions_382, method, 'setPosixPermissions', 'Lorg/apache/commons/io/file/PathUtils;.setPosixPermissions(Ljava/nio/file/Path;ZLjava/util/List<Ljava/nio/file/attribute/PosixFilePermission;>;[Ljava/nio/file/LinkOption;)Z|Ljava/io/IOException;').
name_ref(m_set_posix_read_only_file_383, method, 'setPosixReadOnlyFile', 'Lorg/apache/commons/io/file/PathUtils;.setPosixReadOnlyFile(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)V|Ljava/io/IOException;').
name_ref(m_set_read_only_384, method, 'setReadOnly', 'Lorg/apache/commons/io/file/PathUtils;.setReadOnly(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;|Ljava/io/IOException;').
name_ref(m_set_read_only_488, method, 'setReadOnly', 'Ljava/io/File;.setReadOnly()Z').
name_ref(m_size_file_filter_579, method, 'sizeFileFilter', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.sizeFileFilter(J)Lorg/apache/commons/io/filefilter/IOFileFilter;').
name_ref(m_size_file_filter_580, method, 'sizeFileFilter', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.sizeFileFilter(JZ)Lorg/apache/commons/io/filefilter/IOFileFilter;').
name_ref(m_size_of_385, method, 'sizeOf', 'Lorg/apache/commons/io/file/PathUtils;.sizeOf(Ljava/nio/file/Path;)J|Ljava/io/IOException;').
name_ref(m_size_of_as_big_integer_386, method, 'sizeOfAsBigInteger', 'Lorg/apache/commons/io/file/PathUtils;.sizeOfAsBigInteger(Ljava/nio/file/Path;)Ljava/math/BigInteger;|Ljava/io/IOException;').
name_ref(m_size_of_directory_387, method, 'sizeOfDirectory', 'Lorg/apache/commons/io/file/PathUtils;.sizeOfDirectory(Ljava/nio/file/Path;)J|Ljava/io/IOException;').
name_ref(m_size_of_directory_as_big_integer_388, method, 'sizeOfDirectoryAsBigInteger', 'Lorg/apache/commons/io/file/PathUtils;.sizeOfDirectoryAsBigInteger(Ljava/nio/file/Path;)Ljava/math/BigInteger;|Ljava/io/IOException;').
name_ref(m_size_range_file_filter_581, method, 'sizeRangeFileFilter', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.sizeRangeFileFilter(JJ)Lorg/apache/commons/io/filefilter/IOFileFilter;').
name_ref(m_skip_220, method, 'skip', 'Lorg/apache/commons/io/IOUtils;.skip(Ljava/io/InputStream;J)J|Ljava/io/IOException;').
name_ref(m_skip_221, method, 'skip', 'Lorg/apache/commons/io/IOUtils;.skip(Ljava/io/InputStream;JLjava/util/function/Supplier<[B>;)J|Ljava/io/IOException;').
name_ref(m_skip_222, method, 'skip', 'Lorg/apache/commons/io/IOUtils;.skip(Ljava/nio/channels/ReadableByteChannel;J)J|Ljava/io/IOException;').
name_ref(m_skip_223, method, 'skip', 'Lorg/apache/commons/io/IOUtils;.skip(Ljava/io/Reader;J)J|Ljava/io/IOException;').
name_ref(m_skip_fully_224, method, 'skipFully', 'Lorg/apache/commons/io/IOUtils;.skipFully(Ljava/io/InputStream;J)V|Ljava/io/IOException;').
name_ref(m_skip_fully_225, method, 'skipFully', 'Lorg/apache/commons/io/IOUtils;.skipFully(Ljava/io/InputStream;JLjava/util/function/Supplier<[B>;)V|Ljava/io/IOException;').
name_ref(m_skip_fully_226, method, 'skipFully', 'Lorg/apache/commons/io/IOUtils;.skipFully(Ljava/nio/channels/ReadableByteChannel;J)V|Ljava/io/IOException;').
name_ref(m_skip_fully_227, method, 'skipFully', 'Lorg/apache/commons/io/IOUtils;.skipFully(Ljava/io/Reader;J)V|Ljava/io/IOException;').
name_ref(m_sleep_636, method, 'sleep', 'Lorg/apache/commons/io/test/TestUtils;.sleep(J)V|Ljava/lang/InterruptedException;').
name_ref(m_sleep_quietly_637, method, 'sleepQuietly', 'Lorg/apache/commons/io/test/TestUtils;.sleepQuietly(J)V').
name_ref(m_split_on_tokens_73, method, 'splitOnTokens', 'Lorg/apache/commons/io/FilenameUtils;.splitOnTokens(Ljava/lang/String;)[Ljava/lang/String;').
name_ref(m_standard_line_separator_294, method, 'StandardLineSeparator', 'Lorg/apache/commons/io/StandardLineSeparator;.(Ljava/lang/String;ILjava/lang/String;)V').
name_ref(m_starts_with_8, method, 'startsWith', 'Ljava/lang/String;.startsWith(Ljava/lang/String;)Z').
name_ref(m_string_builder_613, method, 'StringBuilder', 'Ljava/lang/StringBuilder;.()V').
name_ref(m_suffix_file_filter_582, method, 'suffixFileFilter', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.suffixFileFilter(Ljava/lang/String;)Lorg/apache/commons/io/filefilter/IOFileFilter;').
name_ref(m_suffix_file_filter_583, method, 'suffixFileFilter', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.suffixFileFilter(Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Lorg/apache/commons/io/filefilter/IOFileFilter;').
name_ref(m_supports_drive_letter_27, method, 'supportsDriveLetter', 'Lorg/apache/commons/io/FileSystem;.supportsDriveLetter()Z').
name_ref(m_test__serialization_120, method, 'test_serialization', 'Lorg/apache/commons/io/IOCaseTest;.test_serialization()V|Ljava/lang/Exception;').
name_ref(m_test_age_filter_476, method, 'testAgeFilter', 'Lorg/apache/commons/io/filefilter/FileFilterTest;.testAgeFilter()V|Ljava/lang/Exception;').
name_ref(m_test_and2_478, method, 'testAnd2', 'Lorg/apache/commons/io/filefilter/FileFilterTest;.testAnd2()V|Ljava/io/IOException;').
name_ref(m_test_and_477, method, 'testAnd', 'Lorg/apache/commons/io/filefilter/FileFilterTest;.testAnd()V|Ljava/io/IOException;').
name_ref(m_test_and_array_479, method, 'testAndArray', 'Lorg/apache/commons/io/filefilter/FileFilterTest;.testAndArray()V|Ljava/io/IOException;').
name_ref(m_test_can_execute_480, method, 'testCanExecute', 'Lorg/apache/commons/io/filefilter/FileFilterTest;.testCanExecute()V|Ljava/lang/Exception;').
name_ref(m_test_can_read_481, method, 'testCanRead', 'Lorg/apache/commons/io/filefilter/FileFilterTest;.testCanRead()V|Ljava/lang/Exception;').
name_ref(m_test_can_write_489, method, 'testCanWrite', 'Lorg/apache/commons/io/filefilter/FileFilterTest;.testCanWrite()V|Ljava/lang/Exception;').
name_ref(m_test_check_compare_case_98, method, 'test_checkCompare_case', 'Lorg/apache/commons/io/IOCaseTest;.test_checkCompare_case()V').
name_ref(m_test_check_compare_functionality_99, method, 'test_checkCompare_functionality', 'Lorg/apache/commons/io/IOCaseTest;.test_checkCompare_functionality()V').
name_ref(m_test_check_ends_with_case_100, method, 'test_checkEndsWith_case', 'Lorg/apache/commons/io/IOCaseTest;.test_checkEndsWith_case()V').
name_ref(m_test_check_ends_with_functionality_101, method, 'test_checkEndsWith_functionality', 'Lorg/apache/commons/io/IOCaseTest;.test_checkEndsWith_functionality()V').
name_ref(m_test_check_equals_case_102, method, 'test_checkEquals_case', 'Lorg/apache/commons/io/IOCaseTest;.test_checkEquals_case()V').
name_ref(m_test_check_equals_functionality_103, method, 'test_checkEquals_functionality', 'Lorg/apache/commons/io/IOCaseTest;.test_checkEquals_functionality()V').
name_ref(m_test_check_index_of_case_106, method, 'test_checkIndexOf_case', 'Lorg/apache/commons/io/IOCaseTest;.test_checkIndexOf_case()V').
name_ref(m_test_check_index_of_functionality_107, method, 'test_checkIndexOf_functionality', 'Lorg/apache/commons/io/IOCaseTest;.test_checkIndexOf_functionality()V').
name_ref(m_test_check_region_matches_case_108, method, 'test_checkRegionMatches_case', 'Lorg/apache/commons/io/IOCaseTest;.test_checkRegionMatches_case()V').
name_ref(m_test_check_region_matches_functionality_109, method, 'test_checkRegionMatches_functionality', 'Lorg/apache/commons/io/IOCaseTest;.test_checkRegionMatches_functionality()V').
name_ref(m_test_check_starts_with_case_110, method, 'test_checkStartsWith_case', 'Lorg/apache/commons/io/IOCaseTest;.test_checkStartsWith_case()V').
name_ref(m_test_check_starts_with_functionality_111, method, 'test_checkStartsWith_functionality', 'Lorg/apache/commons/io/IOCaseTest;.test_checkStartsWith_functionality()V').
name_ref(m_test_delegate_file_filter_490, method, 'testDelegateFileFilter', 'Lorg/apache/commons/io/filefilter/FileFilterTest;.testDelegateFileFilter()V|Ljava/io/IOException;').
name_ref(m_test_delegation_491, method, 'testDelegation', 'Lorg/apache/commons/io/filefilter/FileFilterTest;.testDelegation()V').
name_ref(m_test_deprecated_wildcard_492, method, 'testDeprecatedWildcard', 'Lorg/apache/commons/io/filefilter/FileFilterTest;.testDeprecatedWildcard()V|Ljava/io/IOException;').
name_ref(m_test_directory_493, method, 'testDirectory', 'Lorg/apache/commons/io/filefilter/FileFilterTest;.testDirectory()V|Ljava/io/IOException;').
name_ref(m_test_empty_494, method, 'testEmpty', 'Lorg/apache/commons/io/filefilter/FileFilterTest;.testEmpty()V|Ljava/lang/Exception;').
name_ref(m_test_ensure_test_coverage_496, method, 'testEnsureTestCoverage', 'Lorg/apache/commons/io/filefilter/FileFilterTest;.testEnsureTestCoverage()V').
name_ref(m_test_false_497, method, 'testFalse', 'Lorg/apache/commons/io/filefilter/FileFilterTest;.testFalse()V|Ljava/io/IOException;').
name_ref(m_test_file_equals_filter_498, method, 'testFileEqualsFilter', 'Lorg/apache/commons/io/filefilter/FileFilterTest;.testFileEqualsFilter()V|Ljava/io/IOException;').
name_ref(m_test_file_filter_utils_and_499, method, 'testFileFilterUtils_and', 'Lorg/apache/commons/io/filefilter/FileFilterTest;.testFileFilterUtils_and()V|Ljava/io/IOException;').
name_ref(m_test_file_filter_utils_or_500, method, 'testFileFilterUtils_or', 'Lorg/apache/commons/io/filefilter/FileFilterTest;.testFileFilterUtils_or()V|Ljava/io/IOException;').
name_ref(m_test_files_501, method, 'testFiles', 'Lorg/apache/commons/io/filefilter/FileFilterTest;.testFiles()V|Ljava/io/IOException;').
name_ref(m_test_filter_array__iofile_filter_503, method, 'testFilterArray_IOFileFilter', 'Lorg/apache/commons/io/filefilter/FileFilterTest;.testFilterArray_IOFileFilter()V|Ljava/lang/Exception;').
name_ref(m_test_filter_array__path_visitor_file_filter__file_exists_no_504, method, 'testFilterArray_PathVisitorFileFilter_FileExistsNo', 'Lorg/apache/commons/io/filefilter/FileFilterTest;.testFilterArray_PathVisitorFileFilter_FileExistsNo()V|Ljava/lang/Exception;').
name_ref(m_test_filter_array__path_visitor_file_filter__file_exists_yes_505, method, 'testFilterArray_PathVisitorFileFilter_FileExistsYes', 'Lorg/apache/commons/io/filefilter/FileFilterTest;.testFilterArray_PathVisitorFileFilter_FileExistsYes()V|Ljava/lang/Exception;').
name_ref(m_test_filter_array_from_list_502, method, 'testFilterArray_fromList', 'Lorg/apache/commons/io/filefilter/FileFilterTest;.testFilterArray_fromList()V|Ljava/lang/Exception;').
name_ref(m_test_filter_files_array_null_parameters_506, method, 'testFilterFilesArrayNullParameters', 'Lorg/apache/commons/io/filefilter/FileFilterTest;.testFilterFilesArrayNullParameters()V|Ljava/lang/Exception;').
name_ref(m_test_filter_list_507, method, 'testFilterList', 'Lorg/apache/commons/io/filefilter/FileFilterTest;.testFilterList()V|Ljava/lang/Exception;').
name_ref(m_test_filter_list_from_array_508, method, 'testFilterList_fromArray', 'Lorg/apache/commons/io/filefilter/FileFilterTest;.testFilterList_fromArray()V|Ljava/lang/Exception;').
name_ref(m_test_filter_list_null_parameters_509, method, 'testFilterListNullParameters', 'Lorg/apache/commons/io/filefilter/FileFilterTest;.testFilterListNullParameters()V').
name_ref(m_test_filter_paths_array_null_parameters_510, method, 'testFilterPathsArrayNullParameters', 'Lorg/apache/commons/io/filefilter/FileFilterTest;.testFilterPathsArrayNullParameters()V|Ljava/lang/Exception;').
name_ref(m_test_filter_set_511, method, 'testFilterSet', 'Lorg/apache/commons/io/filefilter/FileFilterTest;.testFilterSet()V|Ljava/lang/Exception;').
name_ref(m_test_filter_set_from_array_512, method, 'testFilterSet_fromArray', 'Lorg/apache/commons/io/filefilter/FileFilterTest;.testFilterSet_fromArray()V|Ljava/lang/Exception;').
name_ref(m_test_filter_set_null_parameters_513, method, 'testFilterSetNullParameters', 'Lorg/apache/commons/io/filefilter/FileFilterTest;.testFilterSetNullParameters()V').
name_ref(m_test_for_name_112, method, 'test_forName', 'Lorg/apache/commons/io/IOCaseTest;.test_forName()V').
name_ref(m_test_get_name_113, method, 'test_getName', 'Lorg/apache/commons/io/IOCaseTest;.test_getName()V').
name_ref(m_test_get_scratch_byte_array_114, method, 'test_getScratchByteArray', 'Lorg/apache/commons/io/IOCaseTest;.test_getScratchByteArray()V').
name_ref(m_test_get_scratch_byte_array_write_only_115, method, 'test_getScratchByteArrayWriteOnly', 'Lorg/apache/commons/io/IOCaseTest;.test_getScratchByteArrayWriteOnly()V').
name_ref(m_test_get_scratch_char_array_116, method, 'test_getScratchCharArray', 'Lorg/apache/commons/io/IOCaseTest;.test_getScratchCharArray()V').
name_ref(m_test_get_scratch_char_array_write_only_117, method, 'test_getScratchCharArrayWriteOnly', 'Lorg/apache/commons/io/IOCaseTest;.test_getScratchCharArrayWriteOnly()V').
name_ref(m_test_hidden_514, method, 'testHidden', 'Lorg/apache/commons/io/filefilter/FileFilterTest;.testHidden()V|Ljava/io/IOException;').
name_ref(m_test_is_case_sensitive_118, method, 'test_isCaseSensitive', 'Lorg/apache/commons/io/IOCaseTest;.test_isCaseSensitive()V').
name_ref(m_test_is_case_sensitive_static_119, method, 'test_isCaseSensitive_static', 'Lorg/apache/commons/io/IOCaseTest;.test_isCaseSensitive_static()V').
name_ref(m_test_magic_number_file_filter_bytes_516, method, 'testMagicNumberFileFilterBytes', 'Lorg/apache/commons/io/filefilter/FileFilterTest;.testMagicNumberFileFilterBytes()V|Ljava/lang/Exception;').
name_ref(m_test_magic_number_file_filter_bytes_offset_517, method, 'testMagicNumberFileFilterBytesOffset', 'Lorg/apache/commons/io/filefilter/FileFilterTest;.testMagicNumberFileFilterBytesOffset()V|Ljava/lang/Exception;').
name_ref(m_test_magic_number_file_filter_string_518, method, 'testMagicNumberFileFilterString', 'Lorg/apache/commons/io/filefilter/FileFilterTest;.testMagicNumberFileFilterString()V|Ljava/lang/Exception;').
name_ref(m_test_magic_number_file_filter_string_offset_519, method, 'testMagicNumberFileFilterStringOffset', 'Lorg/apache/commons/io/filefilter/FileFilterTest;.testMagicNumberFileFilterStringOffset()V|Ljava/lang/Exception;').
name_ref(m_test_magic_number_file_filter_validation_520, method, 'testMagicNumberFileFilterValidation', 'Lorg/apache/commons/io/filefilter/FileFilterTest;.testMagicNumberFileFilterValidation()V').
name_ref(m_test_make_cvsaware_521, method, 'testMakeCVSAware', 'Lorg/apache/commons/io/filefilter/FileFilterTest;.testMakeCVSAware()V|Ljava/lang/Exception;').
name_ref(m_test_make_directory_only_522, method, 'testMakeDirectoryOnly', 'Lorg/apache/commons/io/filefilter/FileFilterTest;.testMakeDirectoryOnly()V|Ljava/lang/Exception;').
name_ref(m_test_make_file_only_523, method, 'testMakeFileOnly', 'Lorg/apache/commons/io/filefilter/FileFilterTest;.testMakeFileOnly()V|Ljava/lang/Exception;').
name_ref(m_test_make_svnaware_524, method, 'testMakeSVNAware', 'Lorg/apache/commons/io/filefilter/FileFilterTest;.testMakeSVNAware()V|Ljava/lang/Exception;').
name_ref(m_test_name_filter_525, method, 'testNameFilter', 'Lorg/apache/commons/io/filefilter/FileFilterTest;.testNameFilter()V|Ljava/io/IOException;').
name_ref(m_test_name_filter_null_argument_527, method, 'testNameFilterNullArgument', 'Lorg/apache/commons/io/filefilter/FileFilterTest;.testNameFilterNullArgument()V').
name_ref(m_test_name_filter_null_array_argument_528, method, 'testNameFilterNullArrayArgument', 'Lorg/apache/commons/io/filefilter/FileFilterTest;.testNameFilterNullArrayArgument()V').
name_ref(m_test_name_filter_null_list_argument_529, method, 'testNameFilterNullListArgument', 'Lorg/apache/commons/io/filefilter/FileFilterTest;.testNameFilterNullListArgument()V').
name_ref(m_test_negate_530, method, 'testNegate', 'Lorg/apache/commons/io/filefilter/FileFilterTest;.testNegate()V|Ljava/io/IOException;').
name_ref(m_test_null_filters_531, method, 'testNullFilters', 'Lorg/apache/commons/io/filefilter/FileFilterTest;.testNullFilters()V').
name_ref(m_test_or_532, method, 'testOr', 'Lorg/apache/commons/io/filefilter/FileFilterTest;.testOr()V|Ljava/io/IOException;').
name_ref(m_test_path_equals_filter_533, method, 'testPathEqualsFilter', 'Lorg/apache/commons/io/filefilter/FileFilterTest;.testPathEqualsFilter()V|Ljava/io/IOException;').
name_ref(m_test_prefix_534, method, 'testPrefix', 'Lorg/apache/commons/io/filefilter/FileFilterTest;.testPrefix()V|Ljava/io/IOException;').
name_ref(m_test_prefix_case_insensitive_535, method, 'testPrefixCaseInsensitive', 'Lorg/apache/commons/io/filefilter/FileFilterTest;.testPrefixCaseInsensitive()V|Ljava/io/IOException;').
name_ref(m_test_size_filter_on_files_536, method, 'testSizeFilterOnFiles', 'Lorg/apache/commons/io/filefilter/FileFilterTest;.testSizeFilterOnFiles()V|Ljava/lang/Exception;').
name_ref(m_test_size_filter_on_paths_537, method, 'testSizeFilterOnPaths', 'Lorg/apache/commons/io/filefilter/FileFilterTest;.testSizeFilterOnPaths()V|Ljava/lang/Exception;').
name_ref(m_test_suffix_538, method, 'testSuffix', 'Lorg/apache/commons/io/filefilter/FileFilterTest;.testSuffix()V|Ljava/io/IOException;').
name_ref(m_test_suffix_case_insensitive_539, method, 'testSuffixCaseInsensitive', 'Lorg/apache/commons/io/filefilter/FileFilterTest;.testSuffixCaseInsensitive()V|Ljava/io/IOException;').
name_ref(m_test_to_string_121, method, 'test_toString', 'Lorg/apache/commons/io/IOCaseTest;.test_toString()V').
name_ref(m_test_true_540, method, 'testTrue', 'Lorg/apache/commons/io/filefilter/FileFilterTest;.testTrue()V|Ljava/io/IOException;').
name_ref(m_test_utils_638, method, 'TestUtils', 'Lorg/apache/commons/io/test/TestUtils;.()V').
name_ref(m_to_array_602, method, 'toArray', 'Ljava/util/List;.toArray<T:Ljava/lang/Object;>([TT;)[TT;').
name_ref(m_to_buffered_input_stream_228, method, 'toBufferedInputStream', 'Lorg/apache/commons/io/IOUtils;.toBufferedInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;|Ljava/io/IOException;').
name_ref(m_to_buffered_input_stream_229, method, 'toBufferedInputStream', 'Lorg/apache/commons/io/IOUtils;.toBufferedInputStream(Ljava/io/InputStream;I)Ljava/io/InputStream;|Ljava/io/IOException;').
name_ref(m_to_buffered_reader_230, method, 'toBufferedReader', 'Lorg/apache/commons/io/IOUtils;.toBufferedReader(Ljava/io/Reader;)Ljava/io/BufferedReader;').
name_ref(m_to_buffered_reader_231, method, 'toBufferedReader', 'Lorg/apache/commons/io/IOUtils;.toBufferedReader(Ljava/io/Reader;I)Ljava/io/BufferedReader;').
name_ref(m_to_byte_array_232, method, 'toByteArray', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/io/InputStream;)[B|Ljava/io/IOException;').
name_ref(m_to_byte_array_233, method, 'toByteArray', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/io/InputStream;I)[B|Ljava/io/IOException;').
name_ref(m_to_byte_array_234, method, 'toByteArray', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/io/InputStream;J)[B|Ljava/io/IOException;').
name_ref(m_to_byte_array_235, method, 'toByteArray', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Lorg/apache/commons/io/function/IOTriFunction<[BLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;>;I)[B|Ljava/io/IOException;').
name_ref(m_to_byte_array_236, method, 'toByteArray', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/io/Reader;)[B|Ljava/io/IOException;').
name_ref(m_to_byte_array_237, method, 'toByteArray', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/io/Reader;Ljava/nio/charset/Charset;)[B|Ljava/io/IOException;').
name_ref(m_to_byte_array_238, method, 'toByteArray', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/io/Reader;Ljava/lang/String;)[B|Ljava/io/IOException;').
name_ref(m_to_byte_array_239, method, 'toByteArray', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/lang/String;)[B').
name_ref(m_to_byte_array_240, method, 'toByteArray', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/net/URI;)[B|Ljava/io/IOException;').
name_ref(m_to_byte_array_241, method, 'toByteArray', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/net/URL;)[B|Ljava/io/IOException;').
name_ref(m_to_byte_array_242, method, 'toByteArray', 'Lorg/apache/commons/io/IOUtils;.toByteArray(Ljava/net/URLConnection;)[B|Ljava/io/IOException;').
name_ref(m_to_char_array_243, method, 'toCharArray', 'Lorg/apache/commons/io/IOUtils;.toCharArray(Ljava/io/InputStream;)[C|Ljava/io/IOException;').
name_ref(m_to_char_array_244, method, 'toCharArray', 'Lorg/apache/commons/io/IOUtils;.toCharArray(Ljava/io/InputStream;Ljava/nio/charset/Charset;)[C|Ljava/io/IOException;').
name_ref(m_to_char_array_245, method, 'toCharArray', 'Lorg/apache/commons/io/IOUtils;.toCharArray(Ljava/io/InputStream;Ljava/lang/String;)[C|Ljava/io/IOException;').
name_ref(m_to_char_array_246, method, 'toCharArray', 'Lorg/apache/commons/io/IOUtils;.toCharArray(Ljava/io/Reader;)[C|Ljava/io/IOException;').
name_ref(m_to_default_file_visit_result_400, method, 'toDefaultFileVisitResult', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.toDefaultFileVisitResult(Z)Ljava/nio/file/FileVisitResult;').
name_ref(m_to_file_visit_option_set_389, method, 'toFileVisitOptionSet', 'Lorg/apache/commons/io/file/PathUtils;.toFileVisitOptionSet([Ljava/nio/file/FileVisitOption;)Ljava/util/Set<Ljava/nio/file/FileVisitOption;>;').
name_ref(m_to_file_visit_result_415, method, 'toFileVisitResult', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.toFileVisitResult(Z)Ljava/nio/file/FileVisitResult;').
name_ref(m_to_input_stream_247, method, 'toInputStream', 'Lorg/apache/commons/io/IOUtils;.toInputStream(Ljava/lang/CharSequence;)Ljava/io/InputStream;').
name_ref(m_to_input_stream_248, method, 'toInputStream', 'Lorg/apache/commons/io/IOUtils;.toInputStream(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Ljava/io/InputStream;').
name_ref(m_to_input_stream_249, method, 'toInputStream', 'Lorg/apache/commons/io/IOUtils;.toInputStream(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/io/InputStream;').
name_ref(m_to_input_stream_250, method, 'toInputStream', 'Lorg/apache/commons/io/IOUtils;.toInputStream(Ljava/lang/String;)Ljava/io/InputStream;').
name_ref(m_to_input_stream_251, method, 'toInputStream', 'Lorg/apache/commons/io/IOUtils;.toInputStream(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/io/InputStream;').
name_ref(m_to_input_stream_252, method, 'toInputStream', 'Lorg/apache/commons/io/IOUtils;.toInputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;').
name_ref(m_to_iocase_603, method, 'toIOCase', 'Lorg/apache/commons/io/filefilter/NameFileFilter;.toIOCase(Lorg/apache/commons/io/IOCase;)Lorg/apache/commons/io/IOCase;').
name_ref(m_to_legal_file_name_28, method, 'toLegalFileName', 'Lorg/apache/commons/io/FileSystem;.toLegalFileName(Ljava/lang/String;C)Ljava/lang/String;').
name_ref(m_to_list_551, method, 'toList', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.toList([Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/List<Lorg/apache/commons/io/filefilter/IOFileFilter;>;').
name_ref(m_to_list_588, method, 'toList', 'Ljava/util/stream/Collectors;.toList<T:Ljava/lang/Object;>()Ljava/util/stream/Collector<TT;*Ljava/util/List<TT;>;>;').
name_ref(m_to_path_482, method, 'toPath', 'Ljava/io/File;.toPath()Ljava/nio/file/Path;').
name_ref(m_to_separator_74, method, 'toSeparator', 'Lorg/apache/commons/io/FilenameUtils;.toSeparator(Z)C').
name_ref(m_to_string_253, method, 'toString', 'Lorg/apache/commons/io/IOUtils;.toString([B)Ljava/lang/String;').
name_ref(m_to_string_254, method, 'toString', 'Lorg/apache/commons/io/IOUtils;.toString([BLjava/lang/String;)Ljava/lang/String;').
name_ref(m_to_string_255, method, 'toString', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/io/InputStream;)Ljava/lang/String;|Ljava/io/IOException;').
name_ref(m_to_string_256, method, 'toString', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;|Ljava/io/IOException;').
name_ref(m_to_string_257, method, 'toString', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;|Ljava/io/IOException;').
name_ref(m_to_string_258, method, 'toString', 'Lorg/apache/commons/io/IOUtils;.toString(Lorg/apache/commons/io/function/IOSupplier<Ljava/io/InputStream;>;Ljava/nio/charset/Charset;)Ljava/lang/String;|Ljava/io/IOException;').
name_ref(m_to_string_259, method, 'toString', 'Lorg/apache/commons/io/IOUtils;.toString(Lorg/apache/commons/io/function/IOSupplier<Ljava/io/InputStream;>;Ljava/nio/charset/Charset;Lorg/apache/commons/io/function/IOSupplier<Ljava/lang/String;>;)Ljava/lang/String;|Ljava/io/IOException;').
name_ref(m_to_string_260, method, 'toString', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/io/Reader;)Ljava/lang/String;|Ljava/io/IOException;').
name_ref(m_to_string_261, method, 'toString', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/net/URI;)Ljava/lang/String;|Ljava/io/IOException;').
name_ref(m_to_string_262, method, 'toString', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/net/URI;Ljava/nio/charset/Charset;)Ljava/lang/String;|Ljava/io/IOException;').
name_ref(m_to_string_263, method, 'toString', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;|Ljava/io/IOException;').
name_ref(m_to_string_264, method, 'toString', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/net/URL;)Ljava/lang/String;|Ljava/io/IOException;').
name_ref(m_to_string_265, method, 'toString', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/net/URL;Ljava/nio/charset/Charset;)Ljava/lang/String;|Ljava/io/IOException;').
name_ref(m_to_string_266, method, 'toString', 'Lorg/apache/commons/io/IOUtils;.toString(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;|Ljava/io/IOException;').
name_ref(m_to_string_30, method, 'toString', 'Ljava/lang/Character;.toString(C)Ljava/lang/String;').
name_ref(m_to_string_337, method, 'toString', 'Ljava/nio/file/Path;.toString()Ljava/lang/String;').
name_ref(m_to_string_416, method, 'toString', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.toString()Ljava/lang/String;').
name_ref(m_to_string_447, method, 'toString', 'Lorg/apache/commons/io/filefilter/AndFileFilter;.toString()Ljava/lang/String;').
name_ref(m_to_string_612, method, 'toString', 'Lorg/apache/commons/io/filefilter/NameFileFilter;.toString()Ljava/lang/String;').
name_ref(m_to_string_614, method, 'toString', 'Ljava/lang/StringBuilder;.toString()Ljava/lang/String;').
name_ref(m_to_string_619, method, 'toString', 'Lorg/apache/commons/io/filefilter/NotFileFilter;.toString()Ljava/lang/String;').
name_ref(m_to_string_94, method, 'toString', 'Lorg/apache/commons/io/IOCase;.toString()Ljava/lang/String;').
name_ref(m_to_upper_case_9, method, 'toUpperCase', 'Ljava/lang/String;.toUpperCase(Ljava/util/Locale;)Ljava/lang/String;').
name_ref(m_touch_390, method, 'touch', 'Lorg/apache/commons/io/file/PathUtils;.touch(Ljava/nio/file/Path;)Ljava/nio/file/Path;|Ljava/io/IOException;').
name_ref(m_trim_extension_29, method, 'trimExtension', 'Lorg/apache/commons/io/FileSystem;.trimExtension(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;').
name_ref(m_true_file_filter_589, method, 'trueFileFilter', 'Lorg/apache/commons/io/filefilter/FileFilterUtils;.trueFileFilter()Lorg/apache/commons/io/filefilter/IOFileFilter;').
name_ref(m_value_81, method, 'value', 'Lorg/apache/commons/io/IOCase;.value(Lorg/apache/commons/io/IOCase;Lorg/apache/commons/io/IOCase;)Lorg/apache/commons/io/IOCase;').
name_ref(m_visit_file_419, method, 'visitFile', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.visitFile(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;|Ljava/io/IOException;').
name_ref(m_visit_file_failed_420, method, 'visitFileFailed', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.visitFileFailed(Ljava/nio/file/Path;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;|Ljava/io/IOException;').
name_ref(m_visit_file_tree_391, method, 'visitFileTree', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/nio/file/Path;)TT;|Ljava/io/IOException;').
name_ref(m_visit_file_tree_392, method, 'visitFileTree', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/nio/file/Path;Ljava/util/Set<Ljava/nio/file/FileVisitOption;>;I)TT;|Ljava/io/IOException;').
name_ref(m_visit_file_tree_393, method, 'visitFileTree', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/lang/String;[Ljava/lang/String;)TT;|Ljava/io/IOException;').
name_ref(m_visit_file_tree_394, method, 'visitFileTree', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/net/URI;)TT;|Ljava/io/IOException;').
name_ref(m_wait_for_395, method, 'waitFor', 'Lorg/apache/commons/io/file/PathUtils;.waitFor(Ljava/nio/file/Path;Ljava/time/Duration;[Ljava/nio/file/LinkOption;)Z').
name_ref(m_walk_396, method, 'walk', 'Lorg/apache/commons/io/file/PathUtils;.walk(Ljava/nio/file/Path;Lorg/apache/commons/io/file/PathFilter;IZ[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream<Ljava/nio/file/Path;>;|Ljava/io/IOException;').
name_ref(m_wildcard_match_75, method, 'wildcardMatch', 'Lorg/apache/commons/io/FilenameUtils;.wildcardMatch(Ljava/lang/String;Ljava/lang/String;)Z').
name_ref(m_wildcard_match_76, method, 'wildcardMatch', 'Lorg/apache/commons/io/FilenameUtils;.wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Z').
name_ref(m_wildcard_match_on_system_77, method, 'wildcardMatchOnSystem', 'Lorg/apache/commons/io/FilenameUtils;.wildcardMatchOnSystem(Ljava/lang/String;Ljava/lang/String;)Z').
name_ref(m_with_initial_124, method, 'withInitial', 'Ljava/lang/ThreadLocal;.withInitial<S:Ljava/lang/Object;>(Ljava/util/function/Supplier<+TS;>;)Ljava/lang/ThreadLocal<TS;>;').
name_ref(m_with_posix_file_attributes_397, method, 'withPosixFileAttributes', 'Lorg/apache/commons/io/file/PathUtils;.withPosixFileAttributes<R:Ljava/lang/Object;>(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;ZLorg/apache/commons/io/function/IOFunction<Ljava/nio/file/attribute/PosixFileAttributes;TR;>;)TR;|Ljava/io/IOException;').
name_ref(m_write_267, method, 'write', 'Lorg/apache/commons/io/IOUtils;.write([BLjava/io/OutputStream;)V|Ljava/io/IOException;').
name_ref(m_write_268, method, 'write', 'Lorg/apache/commons/io/IOUtils;.write([BLjava/io/Writer;)V|Ljava/io/IOException;').
name_ref(m_write_269, method, 'write', 'Lorg/apache/commons/io/IOUtils;.write([BLjava/io/Writer;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;').
name_ref(m_write_270, method, 'write', 'Lorg/apache/commons/io/IOUtils;.write([BLjava/io/Writer;Ljava/lang/String;)V|Ljava/io/IOException;').
name_ref(m_write_271, method, 'write', 'Lorg/apache/commons/io/IOUtils;.write([CLjava/io/OutputStream;)V|Ljava/io/IOException;').
name_ref(m_write_272, method, 'write', 'Lorg/apache/commons/io/IOUtils;.write([CLjava/io/OutputStream;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;').
name_ref(m_write_273, method, 'write', 'Lorg/apache/commons/io/IOUtils;.write([CLjava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;').
name_ref(m_write_274, method, 'write', 'Lorg/apache/commons/io/IOUtils;.write([CLjava/io/Writer;)V|Ljava/io/IOException;').
name_ref(m_write_275, method, 'write', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/CharSequence;Ljava/io/OutputStream;)V|Ljava/io/IOException;').
name_ref(m_write_276, method, 'write', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/CharSequence;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;').
name_ref(m_write_277, method, 'write', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/CharSequence;Ljava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;').
name_ref(m_write_278, method, 'write', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/CharSequence;Ljava/io/Writer;)V|Ljava/io/IOException;').
name_ref(m_write_279, method, 'write', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/String;Ljava/io/OutputStream;)V|Ljava/io/IOException;').
name_ref(m_write_280, method, 'write', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;').
name_ref(m_write_281, method, 'write', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;').
name_ref(m_write_282, method, 'write', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/String;Ljava/io/Writer;)V|Ljava/io/IOException;').
name_ref(m_write_283, method, 'write', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/StringBuffer;Ljava/io/OutputStream;)V|Ljava/io/IOException;').
name_ref(m_write_284, method, 'write', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/StringBuffer;Ljava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;').
name_ref(m_write_285, method, 'write', 'Lorg/apache/commons/io/IOUtils;.write(Ljava/lang/StringBuffer;Ljava/io/Writer;)V|Ljava/io/IOException;').
name_ref(m_write_634, method, 'write', 'Ljava/io/OutputStream;.write(I)V|Ljava/io/IOException;').
name_ref(m_write_chunked_286, method, 'writeChunked', 'Lorg/apache/commons/io/IOUtils;.writeChunked([BLjava/io/OutputStream;)V|Ljava/io/IOException;').
name_ref(m_write_chunked_287, method, 'writeChunked', 'Lorg/apache/commons/io/IOUtils;.writeChunked([CLjava/io/Writer;)V|Ljava/io/IOException;').
name_ref(m_write_lines_288, method, 'writeLines', 'Lorg/apache/commons/io/IOUtils;.writeLines(Ljava/util/Collection<*>;Ljava/lang/String;Ljava/io/OutputStream;)V|Ljava/io/IOException;').
name_ref(m_write_lines_289, method, 'writeLines', 'Lorg/apache/commons/io/IOUtils;.writeLines(Ljava/util/Collection<*>;Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;').
name_ref(m_write_lines_290, method, 'writeLines', 'Lorg/apache/commons/io/IOUtils;.writeLines(Ljava/util/Collection<*>;Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V|Ljava/io/IOException;').
name_ref(m_write_lines_291, method, 'writeLines', 'Lorg/apache/commons/io/IOUtils;.writeLines(Ljava/util/Collection<*>;Ljava/lang/String;Ljava/io/Writer;)V|Ljava/io/IOException;').
name_ref(m_write_string_398, method, 'writeString', 'Lorg/apache/commons/io/file/PathUtils;.writeString(Ljava/nio/file/Path;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;|Ljava/io/IOException;').
name_ref(m_writer_292, method, 'writer', 'Lorg/apache/commons/io/IOUtils;.writer(Ljava/lang/Appendable;)Ljava/io/Writer;').
name_ref(q_append_10, q_name, 'StandardOpenOption.APPEND', 'Ljava/nio/file/StandardOpenOption;:Ljava/nio/file/StandardOpenOption;.APPEND)Ljava/nio/file/StandardOpenOption;').
name_ref(q_can_read_16, q_name, 'CanReadFileFilter.CAN_READ', 'Lorg/apache/commons/io/filefilter/CanReadFileFilter;:Lorg/apache/commons/io/filefilter/CanReadFileFilter;.CAN_READ)Lorg/apache/commons/io/filefilter/IOFileFilter;').
name_ref(q_can_write_17, q_name, 'CanWriteFileFilter.CAN_WRITE', 'Lorg/apache/commons/io/filefilter/CanWriteFileFilter;:Lorg/apache/commons/io/filefilter/CanWriteFileFilter;.CAN_WRITE)Lorg/apache/commons/io/filefilter/IOFileFilter;').
name_ref(q_cannot_write_15, q_name, 'CanWriteFileFilter.CANNOT_WRITE', 'Lorg/apache/commons/io/filefilter/CanWriteFileFilter;:Lorg/apache/commons/io/filefilter/CanWriteFileFilter;.CANNOT_WRITE)Lorg/apache/commons/io/filefilter/IOFileFilter;').
name_ref(q_continue_12, q_name, 'FileVisitResult.CONTINUE', 'Ljava/nio/file/FileVisitResult;:Ljava/nio/file/FileVisitResult;.CONTINUE)Ljava/nio/file/FileVisitResult;').
name_ref(q_create_8, q_name, 'StandardOpenOption.CREATE', 'Ljava/nio/file/StandardOpenOption;:Ljava/nio/file/StandardOpenOption;.CREATE)Ljava/nio/file/StandardOpenOption;').
name_ref(q_crlf_6, q_name, 'StandardLineSeparator.CRLF', 'Lorg/apache/commons/io/StandardLineSeparator;:Lorg/apache/commons/io/StandardLineSeparator;.CRLF)Lorg/apache/commons/io/StandardLineSeparator;').
name_ref(q_directory_21, q_name, 'DirectoryFileFilter.DIRECTORY', 'Lorg/apache/commons/io/filefilter/DirectoryFileFilter;:Lorg/apache/commons/io/filefilter/DirectoryFileFilter;.DIRECTORY)Lorg/apache/commons/io/filefilter/IOFileFilter;').
name_ref(q_empty_18, q_name, 'EmptyFileFilter.EMPTY', 'Lorg/apache/commons/io/filefilter/EmptyFileFilter;:Lorg/apache/commons/io/filefilter/EmptyFileFilter;.EMPTY)Lorg/apache/commons/io/filefilter/IOFileFilter;').
name_ref(q_hidden_20, q_name, 'HiddenFileFilter.HIDDEN', 'Lorg/apache/commons/io/filefilter/HiddenFileFilter;:Lorg/apache/commons/io/filefilter/HiddenFileFilter;.HIDDEN)Lorg/apache/commons/io/filefilter/IOFileFilter;').
name_ref(q_instance_19, q_name, 'FileFileFilter.INSTANCE', 'Lorg/apache/commons/io/filefilter/FileFileFilter;:Lorg/apache/commons/io/filefilter/FileFileFilter;.INSTANCE)Lorg/apache/commons/io/filefilter/IOFileFilter;').
name_ref(q_length_14, q_name, 'array.length', 'Lorg/apache/commons/io/filefilter/AbstractFileFilter;.append([Ljava/lang/Object;Ljava/lang/StringBuilder;)V#array#0#0:.length)I').
name_ref(q_length_7, q_name, 'array.length', 'Lorg/apache/commons/io/IOUtils;.length([Ljava/lang/Object;)I#array#0#0:.length)I').
name_ref(q_lf_5, q_name, 'StandardLineSeparator.LF', 'Lorg/apache/commons/io/StandardLineSeparator;:Lorg/apache/commons/io/StandardLineSeparator;.LF)Lorg/apache/commons/io/StandardLineSeparator;').
name_ref(q_max_value_1, q_name, 'Integer.MAX_VALUE', 'Ljava/lang/Integer;:Ljava/lang/Integer;.MAX_VALUE)I').
name_ref(q_nofollow_links_11, q_name, 'LinkOption.NOFOLLOW_LINKS', 'Ljava/nio/file/LinkOption;:Ljava/nio/file/LinkOption;.NOFOLLOW_LINKS)Ljava/nio/file/LinkOption;').
name_ref(q_root_2, q_name, 'Locale.ROOT', 'Ljava/util/Locale;:Ljava/util/Locale;.ROOT)Ljava/util/Locale;').
name_ref(q_sensitive_4, q_name, 'IOCase.SENSITIVE', 'Lorg/apache/commons/io/IOCase;:Lorg/apache/commons/io/IOCase;.SENSITIVE)Lorg/apache/commons/io/IOCase;').
name_ref(q_separator_char_3, q_name, 'File.separatorChar', 'Ljava/io/File;:Ljava/io/File;.separatorChar)C').
name_ref(q_terminate_13, q_name, 'FileVisitResult.TERMINATE', 'Ljava/nio/file/FileVisitResult;:Ljava/nio/file/FileVisitResult;.TERMINATE)Ljava/nio/file/FileVisitResult;').
name_ref(q_truncate_existing_9, q_name, 'StandardOpenOption.TRUNCATE_EXISTING', 'Ljava/nio/file/StandardOpenOption;:Ljava/nio/file/StandardOpenOption;.TRUNCATE_EXISTING)Ljava/nio/file/StandardOpenOption;').

%%% End of Code Facts

