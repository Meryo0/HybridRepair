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
trace(trace_1, failure_1, 'requireNonNull', line(java_util_objects, 235), failure_1, non_target).
trace(trace_2, trace_1, m_check_equals_85, line(iocase_1, 174), failure_1, target).
trace(trace_3, trace_2, m_test_check_equals_functionality_103, line(iocase_test_1, 146), failure_1, target).
trace(trace_4, trace_3, 'invoke', line(java_lang_reflect_method, 569), failure_1, non_target).
trace(trace_5, trace_4, 'forEach', line(java_util_array_list, 1511), failure_1, non_target).
trace(trace_6, trace_5, 'forEach', line(java_util_array_list, 1511), failure_1, non_target).
test_failure(failure_2, 'org.apache.commons.io.filefilter.FileFilterTest', 'testNameFilter').
trace(trace_7, failure_2, m_accept_606, line(name_file_filter_1, 166), failure_2, target).
trace(trace_8, trace_7, m_assert_filtering_421, line(abstract_filter_test_1, 50), failure_2, target).
trace(trace_9, trace_8, m_test_name_filter_525, line(file_filter_test_1, 1066), failure_2, target).
trace(trace_10, trace_9, 'invoke', line(java_lang_reflect_method, 569), failure_2, non_target).
trace(trace_11, trace_10, 'forEach', line(java_util_array_list, 1511), failure_2, non_target).
trace(trace_12, trace_11, 'forEach', line(java_util_array_list, 1511), failure_2, non_target).
test_failure(failure_3, 'org.apache.commons.io.filefilter.FileFilterTest', 'testEmpty').
trace(trace_13, failure_3, m_accept_464, line(empty_file_filter_1, 107), failure_3, target).
trace(trace_14, trace_13, m_assert_filtering_421, line(abstract_filter_test_1, 50), failure_3, target).
trace(trace_15, trace_14, m_test_empty_494, line(file_filter_test_1, 408), failure_3, target).
trace(trace_16, trace_15, 'invoke', line(java_lang_reflect_method, 569), failure_3, non_target).
trace(trace_17, trace_16, 'forEach', line(java_util_array_list, 1511), failure_3, non_target).
trace(trace_18, trace_17, 'forEach', line(java_util_array_list, 1511), failure_3, non_target).
test_failure(failure_4, 'org.apache.commons.io.filefilter.FileFilterTest', 'testFiles').
trace(trace_19, failure_4, m_accept_473, line(file_file_filter_1, 100), failure_4, target).
trace(trace_20, trace_19, m_assert_filtering_421, line(abstract_filter_test_1, 50), failure_4, target).
trace(trace_21, trace_20, m_test_files_501, line(file_filter_test_1, 503), failure_4, target).
trace(trace_22, trace_21, 'invoke', line(java_lang_reflect_method, 569), failure_4, non_target).
trace(trace_23, trace_22, 'forEach', line(java_util_array_list, 1511), failure_4, non_target).
trace(trace_24, trace_23, 'forEach', line(java_util_array_list, 1511), failure_4, non_target).
test_failure(failure_5, 'org.apache.commons.io.filefilter.FileFilterTest', 'testCanRead').
trace(trace_25, failure_5, m_accept_451, line(can_read_file_filter_1, 95), failure_5, target).
trace(trace_26, trace_25, m_assert_filtering_421, line(abstract_filter_test_1, 50), failure_5, target).
trace(trace_27, trace_26, m_test_can_read_481, line(file_filter_test_1, 231), failure_5, target).
trace(trace_28, trace_27, 'invoke', line(java_lang_reflect_method, 569), failure_5, non_target).
trace(trace_29, trace_28, 'forEach', line(java_util_array_list, 1511), failure_5, non_target).
trace(trace_30, trace_29, 'forEach', line(java_util_array_list, 1511), failure_5, non_target).
test_failure(failure_6, 'org.apache.commons.io.filefilter.FileFilterTest', 'testCanWrite').
trace(trace_31, failure_6, m_accept_456, line(can_write_file_filter_1, 83), failure_6, target).
trace(trace_32, trace_31, m_assert_filtering_421, line(abstract_filter_test_1, 50), failure_6, target).
trace(trace_33, trace_32, m_test_can_write_489, line(file_filter_test_1, 258), failure_6, target).
trace(trace_34, trace_33, 'invoke', line(java_lang_reflect_method, 569), failure_6, non_target).
trace(trace_35, trace_34, 'forEach', line(java_util_array_list, 1511), failure_6, non_target).
trace(trace_36, trace_35, 'forEach', line(java_util_array_list, 1511), failure_6, non_target).
test_failure(failure_7, 'org.apache.commons.io.filefilter.FileFilterTest', 'testHidden').
trace(trace_37, failure_7, 'provider', line(java_nio_file_files, 105), failure_7, non_target).
trace(trace_38, trace_37, 'isHidden', line(java_nio_file_files, 1643), failure_7, non_target).
trace(trace_39, trace_38, m_accept_594, line(hidden_file_filter_1, 117), failure_7, target).
trace(trace_40, trace_39, m_get_410, line(abstract_file_filter_1, 122), failure_7, target).
trace(trace_41, trace_40, m_accept_594, line(hidden_file_filter_1, 117), failure_7, target).
trace(trace_42, trace_41, m_assert_filtering_425, line(abstract_filter_test_1, 73), failure_7, target).
trace(trace_43, trace_42, m_test_hidden_514, line(file_filter_test_1, 738), failure_7, target).
trace(trace_44, trace_43, 'invoke', line(java_lang_reflect_method, 569), failure_7, non_target).
trace(trace_45, trace_44, 'forEach', line(java_util_array_list, 1511), failure_7, non_target).
trace(trace_46, trace_45, 'forEach', line(java_util_array_list, 1511), failure_7, non_target).



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