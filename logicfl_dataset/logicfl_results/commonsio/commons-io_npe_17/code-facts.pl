%%% Code Facts
:- style_check(-discontiguous).
%%% Classes
class(path_utils_1, 'org.apache.commons.io.file.PathUtils').
class(file_utils_1, 'org.apache.commons.io.FileUtils').
class(test_utils_1, 'org.apache.commons.io.testtools.TestUtils').
class(directory_walker_1, 'org.apache.commons.io.DirectoryWalker').
class(file_utils_test_case_1, 'org.apache.commons.io.FileUtilsTestCase').
class(counters_1, 'org.apache.commons.io.file.Counters').

%%% Methods
%path_utils_1 - org.apache.commons.io.file.PathUtils
method(m_clean_directory_349, range(path_utils_1, 1265, 457, 39, 48)).
method(m_copy_directory_350, range(path_utils_1, 1728, 730, 50, 64)).
method(m_copy_file_to_directory_351, range(path_utils_1, 2464, 617, 66, 80)).
method(m_count_directory_352, range(path_utils_1, 3087, 471, 82, 91)).
method(m_delete_63, range(path_utils_1, 3564, 895, 93, 111)).
method(m_delete_directory_354, range(path_utils_1, 4465, 449, 113, 122)).
method(m_delete_file_355, range(path_utils_1, 4920, 828, 124, 143)).
method(m_is_empty_359, range(path_utils_1, 5754, 414, 145, 154)).
method(m_is_empty_directory_360, range(path_utils_1, 6174, 541, 156, 170)).
method(m_is_empty_file_361, range(path_utils_1, 6721, 332, 172, 181)).
method(m_visit_file_tree_362, range(path_utils_1, 7059, 760, 183, 200)).
method(m_visit_file_tree_363, range(path_utils_1, 7825, 809, 202, 218)).
method(m_visit_file_tree_364, range(path_utils_1, 8640, 701, 220, 235)).
method(m_path_utils_365, range(path_utils_1, 9347, 108, 237, 242)).
%file_utils_1 - org.apache.commons.io.FileUtils
method(m_byte_count_to_display_size_23, range(file_utils_1, 5157, 1842, 174, 209)).
method(m_byte_count_to_display_size_24, range(file_utils_1, 7005, 847, 211, 228)).
method(m_check_directory_25, range(file_utils_1, 7858, 568, 230, 243)).
method(m_check_equal_sizes_26, range(file_utils_1, 8432, 679, 245, 260)).
method(m_check_file_requirements_27, range(file_utils_1, 9117, 661, 262, 279)).
method(m_checksum_28, range(file_utils_1, 9784, 1260, 281, 306)).
method(m_checksum_crc32_29, range(file_utils_1, 11128, 617, 309, 322)).
method(m_clean_directory_30, range(file_utils_1, 11751, 733, 324, 346)).
method(m_clean_directory_on_exit_33, range(file_utils_1, 12490, 739, 348, 370)).
method(m_content_equals_34, range(file_utils_1, 13313, 1593, 373, 420)).
method(m_content_equals_ignore_eol_36, range(file_utils_1, 14990, 2046, 423, 470)).
method(m_convert_file_collection_to_file_array_37, range(file_utils_1, 17120, 469, 473, 483)).
method(m_copy_directory_38, range(file_utils_1, 17595, 1401, 485, 514)).
method(m_copy_directory_39, range(file_utils_1, 19002, 1590, 516, 548)).
method(m_copy_directory_40, range(file_utils_1, 20598, 2330, 550, 599)).
method(m_copy_directory_41, range(file_utils_1, 22934, 3598, 601, 672)).
method(m_copy_directory_to_directory_42, range(file_utils_1, 26616, 2079, 675, 716)).
method(m_copy_file_43, range(file_utils_1, 28701, 1413, 718, 746)).
method(m_copy_file_44, range(file_utils_1, 30120, 2514, 748, 796)).
method(m_copy_file_45, range(file_utils_1, 32640, 764, 798, 815)).
method(m_copy_file_to_directory_46, range(file_utils_1, 33488, 1277, 818, 843)).
method(m_copy_file_to_directory_47, range(file_utils_1, 34771, 2054, 845, 884)).
method(m_copy_input_stream_to_file_48, range(file_utils_1, 36831, 1239, 886, 907)).
method(m_copy_to_directory_49, range(file_utils_1, 38076, 1810, 909, 948)).
method(m_copy_to_directory_50, range(file_utils_1, 39893, 1441, 951, 982)).
method(m_copy_to_file_51, range(file_utils_1, 41340, 1312, 984, 1005)).
method(m_copy_urlto_file_52, range(file_utils_1, 42736, 1293, 1008, 1030)).
method(m_copy_urlto_file_53, range(file_utils_1, 44035, 1733, 1032, 1058)).
method(m_decode_url_54, range(file_utils_1, 45774, 2094, 1060, 1105)).
method(m_delete_directory_55, range(file_utils_1, 47952, 707, 1108, 1129)).
method(m_delete_directory_on_exit_58, range(file_utils_1, 48665, 580, 1131, 1147)).
method(m_delete_quietly_59, range(file_utils_1, 49251, 1024, 1149, 1182)).
method(m_directory_contains_60, range(file_utils_1, 50281, 1915, 1184, 1230)).
method(m_do_copy_directory_61, range(file_utils_1, 52202, 2341, 1232, 1278)).
method(m_do_copy_file_62, range(file_utils_1, 54549, 1931, 1280, 1314)).
method(m_force_delete_32, range(file_utils_1, 56564, 1243, 1317, 1345)).
method(m_force_delete_on_exit_68, range(file_utils_1, 57813, 561, 1347, 1361)).
method(m_force_mkdir_69, range(file_utils_1, 58380, 1525, 1363, 1395)).
method(m_force_mkdir_parent_70, range(file_utils_1, 59911, 632, 1397, 1412)).
method(m_get_file_71, range(file_utils_1, 60627, 653, 1415, 1435)).
method(m_get_file_72, range(file_utils_1, 61286, 574, 1437, 1457)).
method(m_get_temp_directory_73, range(file_utils_1, 61866, 264, 1459, 1468)).
method(m_get_temp_directory_path_74, range(file_utils_1, 62136, 270, 1470, 1479)).
method(m_get_user_directory_75, range(file_utils_1, 62412, 254, 1481, 1490)).
method(m_get_user_directory_path_76, range(file_utils_1, 62672, 255, 1492, 1501)).
method(m_inner_list_files_77, range(file_utils_1, 63011, 1145, 1504, 1529)).
method(m_inner_list_files_or_directories_78, range(file_utils_1, 64162, 1688, 1531, 1562)).
method(m_is_file_newer_79, range(file_utils_1, 65856, 807, 1564, 1581)).
method(m_is_file_newer_80, range(file_utils_1, 66747, 1130, 1584, 1606)).
method(m_is_file_newer_81, range(file_utils_1, 67883, 894, 1608, 1628)).
method(m_is_file_older_82, range(file_utils_1, 68783, 808, 1630, 1647)).
method(m_is_file_older_83, range(file_utils_1, 69675, 1118, 1650, 1672)).
method(m_is_file_older_84, range(file_utils_1, 70799, 895, 1674, 1694)).
method(m_is_symlink_56, range(file_utils_1, 71700, 1102, 1696, 1724)).
method(m_iterate_files_86, range(file_utils_1, 72808, 1141, 1726, 1748)).
method(m_iterate_files_87, range(file_utils_1, 73955, 857, 1750, 1766)).
method(m_iterate_files_and_dirs_88, range(file_utils_1, 74818, 1295, 1768, 1793)).
method(m_line_iterator_89, range(file_utils_1, 76119, 517, 1795, 1806)).
method(m_line_iterator_90, range(file_utils_1, 76642, 1665, 1808, 1851)).
method(m_list_files_91, range(file_utils_1, 78313, 1762, 1853, 1885)).
method(m_list_files_92, range(file_utils_1, 80082, 1003, 1888, 1909)).
method(m_list_files_and_dirs_93, range(file_utils_1, 81091, 1188, 1911, 1933)).
method(m_move_directory_94, range(file_utils_1, 82285, 1584, 1935, 1969)).
method(m_move_directory_to_directory_95, range(file_utils_1, 83875, 1336, 1971, 1998)).
method(m_move_file_96, range(file_utils_1, 85217, 1468, 2000, 2034)).
method(m_move_file_to_directory_97, range(file_utils_1, 86691, 1309, 2036, 2063)).
method(m_move_to_directory_98, range(file_utils_1, 88006, 1169, 2065, 2089)).
method(m_open_input_stream_99, range(file_utils_1, 89338, 1460, 2094, 2126)).
method(m_open_output_stream_100, range(file_utils_1, 90882, 1171, 2129, 2153)).
method(m_open_output_stream_101, range(file_utils_1, 92059, 1947, 2155, 2196)).
method(m_read_file_to_byte_array_102, range(file_utils_1, 94012, 707, 2198, 2213)).
method(m_read_file_to_string_103, range(file_utils_1, 94725, 609, 2215, 2228)).
method(m_read_file_to_string_104, range(file_utils_1, 95418, 617, 2231, 2245)).
method(m_read_file_to_string_105, range(file_utils_1, 96041, 738, 2247, 2260)).
method(m_read_lines_106, range(file_utils_1, 96785, 649, 2262, 2275)).
method(m_read_lines_107, range(file_utils_1, 97440, 674, 2277, 2291)).
method(m_read_lines_108, range(file_utils_1, 98120, 787, 2293, 2306)).
method(m_set_up_effective_dir_filter_109, range(file_utils_1, 98913, 468, 2308, 2317)).
method(m_set_up_effective_file_filter_110, range(file_utils_1, 99387, 428, 2319, 2327)).
method(m_size_of_111, range(file_utils_1, 99899, 1357, 2330, 2365)).
method(m_size_of0_112, range(file_utils_1, 101262, 320, 2367, 2377)).
method(m_size_of_as_big_integer_113, range(file_utils_1, 101588, 1155, 2379, 2409)).
method(m_size_of_big0_114, range(file_utils_1, 102749, 328, 2411, 2421)).
method(m_size_of_directory_115, range(file_utils_1, 103083, 791, 2423, 2439)).
method(m_size_of_directory0_116, range(file_utils_1, 103880, 610, 2441, 2463)).
method(m_size_of_directory_as_big_integer_117, range(file_utils_1, 104496, 511, 2465, 2476)).
method(m_size_of_directory_big0_118, range(file_utils_1, 105013, 573, 2478, 2498)).
method(m_to_file_119, range(file_utils_1, 105670, 1028, 2501, 2523)).
method(m_to_files_120, range(file_utils_1, 106704, 1567, 2525, 2562)).
method(m_to_suffixes_121, range(file_utils_1, 108355, 521, 2565, 2578)).
method(m_touch_122, range(file_utils_1, 108960, 933, 2581, 2602)).
method(m_to_urls_123, range(file_utils_1, 109899, 676, 2604, 2623)).
method(m_validate_list_files_parameters_124, range(file_utils_1, 110581, 742, 2625, 2642)).
method(m_validate_move_parameters_125, range(file_utils_1, 111329, 1000, 2644, 2666)).
method(m_verified_list_files_31, range(file_utils_1, 112335, 942, 2668, 2691)).
method(m_wait_for_128, range(file_utils_1, 113361, 1325, 2694, 2729)).
method(m_write_129, range(file_utils_1, 114692, 585, 2731, 2743)).
method(m_write_130, range(file_utils_1, 115283, 755, 2745, 2759)).
method(m_write_131, range(file_utils_1, 116044, 509, 2761, 2772)).
method(m_write_132, range(file_utils_1, 116559, 759, 2774, 2789)).
method(m_write_133, range(file_utils_1, 117391, 628, 2793, 2805)).
method(m_write_134, range(file_utils_1, 118076, 906, 2809, 2825)).
method(m_write_byte_array_to_file_135, range(file_utils_1, 118988, 542, 2827, 2841)).
method(m_write_byte_array_to_file_136, range(file_utils_1, 119576, 598, 2845, 2858)).
method(m_write_byte_array_to_file_137, range(file_utils_1, 120242, 641, 2862, 2877)).
method(m_write_byte_array_to_file_138, range(file_utils_1, 120889, 890, 2879, 2898)).
method(m_write_lines_139, range(file_utils_1, 121785, 572, 2900, 2912)).
method(m_write_lines_140, range(file_utils_1, 122363, 732, 2914, 2928)).
method(m_write_lines_141, range(file_utils_1, 123101, 710, 2930, 2944)).
method(m_write_lines_142, range(file_utils_1, 123818, 898, 2947, 2963)).
method(m_write_lines_143, range(file_utils_1, 124722, 956, 2965, 2984)).
method(m_write_lines_144, range(file_utils_1, 125684, 1032, 2986, 3003)).
method(m_write_lines_145, range(file_utils_1, 126722, 1090, 3005, 3025)).
method(m_write_lines_146, range(file_utils_1, 127818, 1231, 3027, 3047)).
method(m_write_string_to_file_147, range(file_utils_1, 129055, 585, 3049, 3060)).
method(m_write_string_to_file_148, range(file_utils_1, 129646, 775, 3062, 3076)).
method(m_write_string_to_file_149, range(file_utils_1, 130427, 783, 3078, 3095)).
method(m_write_string_to_file_150, range(file_utils_1, 131216, 792, 3097, 3113)).
method(m_write_string_to_file_151, range(file_utils_1, 132014, 752, 3115, 3130)).
method(m_write_string_to_file_152, range(file_utils_1, 132772, 949, 3132, 3148)).
method(m_file_utils_153, range(file_utils_1, 133727, 127, 3150, 3155)).
%test_utils_1 - org.apache.commons.io.testtools.TestUtils
method(m_test_utils_366, range(test_utils_1, 1588, 28, 45, 47)).
method(m_create_file_367, range(test_utils_1, 1622, 470, 49, 59)).
method(m_generate_test_data_368, range(test_utils_1, 2098, 377, 61, 69)).
method(m_generate_test_data_159, range(test_utils_1, 2481, 329, 71, 79)).
method(m_create_line_based_file_369, range(test_utils_1, 2816, 533, 81, 90)).
method(m_new_file_370, range(test_utils_1, 3355, 442, 92, 102)).
method(m_check_file_371, range(test_utils_1, 3803, 226, 104, 108)).
method(m_assert_equal_content_372, range(test_utils_1, 4035, 1289, 110, 140)).
method(m_assert_equal_content_373, range(test_utils_1, 5330, 870, 142, 162)).
method(m_assert_equal_content_374, range(test_utils_1, 6206, 860, 164, 184)).
method(m_check_write_375, range(test_utils_1, 7072, 296, 186, 192)).
method(m_check_write_376, range(test_utils_1, 7374, 292, 194, 200)).
method(m_delete_file_377, range(test_utils_1, 7672, 194, 202, 207)).
method(m_sleep_378, range(test_utils_1, 7872, 707, 209, 225)).
method(m_sleep_quietly_379, range(test_utils_1, 8585, 155, 227, 232)).
%directory_walker_1 - org.apache.commons.io.DirectoryWalker
method(m_directory_walker_1, range(directory_walker_1, 9810, 150, 279, 284)).
method(m_directory_walker_2, range(directory_walker_1, 9966, 776, 286, 302)).
method(m_directory_walker_3, range(directory_walker_1, 10748, 1489, 304, 330)).
method(m_walk_4, range(directory_walker_1, 12321, 1279, 333, 361)).
method(m_walk_5, range(directory_walker_1, 13606, 1762, 363, 397)).
method(m_check_if_cancelled_6, range(directory_walker_1, 15452, 1008, 400, 420)).
method(m_handle_is_cancelled_7, range(directory_walker_1, 16466, 1749, 422, 464)).
method(m_handle_cancelled_8, range(directory_walker_1, 18221, 863, 466, 484)).
method(m_handle_start_9, range(directory_walker_1, 19168, 495, 487, 499)).
method(m_handle_directory_10, range(directory_walker_1, 19669, 1051, 501, 522)).
method(m_handle_directory_start_11, range(directory_walker_1, 20726, 622, 524, 538)).
method(m_filter_directory_contents_12, range(directory_walker_1, 21354, 677, 540, 556)).
method(m_handle_file_13, range(directory_walker_1, 22037, 573, 558, 571)).
method(m_handle_restricted_14, range(directory_walker_1, 22616, 593, 573, 587)).
method(m_handle_directory_end_15, range(directory_walker_1, 23215, 610, 589, 603)).
method(m_handle_end_16, range(directory_walker_1, 23831, 406, 605, 616)).
method(m_cancel_exception_17, range(directory_walker_1, 24805, 433, 633, 642)).
method(m_cancel_exception_18, range(directory_walker_1, 25248, 549, 644, 657)).
method(m_get_file_19, range(directory_walker_1, 25807, 216, 659, 666)).
method(m_get_depth_20, range(directory_walker_1, 26033, 219, 668, 675)).
%file_utils_test_case_1 - org.apache.commons.io.FileUtilsTestCase
method(m_set_up_155, range(file_utils_test_case_1, 3465, 1960, 105, 146)).
method(m_get_name_161, range(file_utils_test_case_1, 5431, 80, 148, 150)).
method(m_test_get_file_164, range(file_utils_test_case_1, 5595, 631, 153, 167)).
method(m_test_get_file__parent_165, range(file_utils_test_case_1, 6232, 925, 169, 190)).
method(m_test_get_temp_directory_path_166, range(file_utils_test_case_1, 7163, 166, 192, 196)).
method(m_test_get_temp_directory_167, range(file_utils_test_case_1, 7335, 202, 198, 202)).
method(m_test_get_user_directory_path_168, range(file_utils_test_case_1, 7543, 161, 204, 208)).
method(m_test_get_user_directory_169, range(file_utils_test_case_1, 7710, 197, 210, 214)).
method(m_test_open_input_stream_exists_170, range(file_utils_test_case_1, 7991, 330, 217, 224)).
method(m_test_open_input_stream_exists_but_is_directory_171, range(file_utils_test_case_1, 8327, 356, 226, 235)).
method(m_test_open_input_stream_not_exists_172, range(file_utils_test_case_1, 8689, 319, 237, 245)).
method(m_open_output_stream_no_parent_173, range(file_utils_test_case_1, 9092, 579, 248, 264)).
method(m_test_open_output_stream_no_parent_create_file_174, range(file_utils_test_case_1, 9677, 130, 266, 269)).
method(m_test_open_output_stream_no_parent_no_file_175, range(file_utils_test_case_1, 9813, 127, 271, 274)).
method(m_test_open_output_stream_exists_176, range(file_utils_test_case_1, 9946, 353, 276, 284)).
method(m_test_open_output_stream_exists_but_is_directory_177, range(file_utils_test_case_1, 10305, 360, 286, 295)).
method(m_test_open_output_stream_not_exists_178, range(file_utils_test_case_1, 10671, 290, 297, 304)).
method(m_test_open_output_stream_not_exists_cannot_create_179, range(file_utils_test_case_1, 10967, 937, 306, 322)).
method(m_test_byte_count_to_display_size_big_integer_180, range(file_utils_test_case_1, 12018, 2221, 326, 358)).
method(m_test_byte_count_to_display_size_long_181, range(file_utils_test_case_1, 14245, 1785, 360, 384)).
method(m_test_to_file1_182, range(file_utils_test_case_1, 16114, 232, 387, 392)).
method(m_test_to_file2_183, range(file_utils_test_case_1, 16352, 256, 394, 399)).
method(m_test_to_file3_184, range(file_utils_test_case_1, 16614, 196, 401, 405)).
method(m_test_to_file4_185, range(file_utils_test_case_1, 16816, 246, 407, 412)).
method(m_test_to_file5_186, range(file_utils_test_case_1, 17085, 251, 415, 420)).
method(m_test_to_file_utf8_187, range(file_utils_test_case_1, 17342, 267, 422, 427)).
method(m_test_decode_url_188, range(file_utils_test_case_1, 17615, 504, 429, 438)).
method(m_test_decode_url_lenient_189, range(file_utils_test_case_1, 18125, 426, 440, 448)).
method(m_test_decode_url_null_safe_190, range(file_utils_test_case_1, 18557, 100, 450, 453)).
method(m_test_decode_url_encoding_utf8_191, range(file_utils_test_case_1, 18663, 156, 455, 458)).
method(m_test_to_files1_192, range(file_utils_test_case_1, 18841, 502, 462, 473)).
method(m_test_to_files2_193, range(file_utils_test_case_1, 19349, 439, 475, 486)).
method(m_test_to_files3_194, range(file_utils_test_case_1, 19794, 188, 488, 494)).
method(m_test_to_files3a_195, range(file_utils_test_case_1, 19988, 210, 496, 502)).
method(m_test_to_files4_196, range(file_utils_test_case_1, 20204, 369, 504, 515)).
method(m_test_to_urls1_197, range(file_utils_test_case_1, 20594, 824, 519, 537)).
method(m_test_to_urls3a_198, range(file_utils_test_case_1, 22085, 209, 559, 565)).
method(m_test_content_equals_199, range(file_utils_test_case_1, 22322, 2331, 569, 626)).
method(m_test_content_equals_ignore_eol_201, range(file_utils_test_case_1, 24659, 3412, 628, 705)).
method(m_test_copy_urlto_file_202, range(file_utils_test_case_1, 28099, 681, 709, 725)).
method(m_test_copy_urlto_file_with_timeout_203, range(file_utils_test_case_1, 28786, 723, 727, 743)).
method(m_test_force_mkdir_204, range(file_utils_test_case_1, 29534, 758, 747, 770)).
method(m_test_force_mkdir_parent_205, range(file_utils_test_case_1, 30298, 766, 772, 790)).
method(m_test_size_of_directory_206, range(file_utils_test_case_1, 31094, 839, 794, 823)).
method(m_create_circular_sym_link_207, range(file_utils_test_case_1, 31939, 520, 825, 837)).
method(m_test_size_of_directory_as_big_integer_208, range(file_utils_test_case_1, 32465, 1817, 839, 892)).
method(m_test_compare_size_of_209, range(file_utils_test_case_1, 34363, 444, 895, 903)).
method(m_test_size_of_210, range(file_utils_test_case_1, 34813, 925, 905, 936)).
method(m_test_size_of_as_big_integer_211, range(file_utils_test_case_1, 35744, 1066, 938, 971)).
method(m_test_is_file_newer_older_212, range(file_utils_test_case_1, 36849, 6800, 974, 1136)).
method(m_test_copy_file1_213, range(file_utils_test_case_1, 43672, 667, 1140, 1154)).
method(m_test_copy_file_to_output_stream_214, range(file_utils_test_case_1, 44345, 444, 1156, 1163)).
method(m_test_copy_file_large_215, range(file_utils_test_case_1, 44795, 1081, 1165, 1190)).
method(m_test_copy_file2_216, range(file_utils_test_case_1, 45882, 654, 1192, 1205)).
method(m_test_copy_to_self_217, range(file_utils_test_case_1, 46542, 473, 1207, 1219)).
method(m_test_copy_file2_without_file_date_preservation_218, range(file_utils_test_case_1, 47021, 700, 1221, 1235)).
method(m_test_copy_directory_to_directory__non_existing_dest_219, range(file_utils_test_case_1, 47727, 1953, 1237, 1279)).
method(m_test_copy_directory_to_non_existing_dest_220, range(file_utils_test_case_1, 49686, 1821, 1281, 1321)).
method(m_test_copy_directory_to_existing_dest_221, range(file_utils_test_case_1, 51513, 1699, 1323, 1362)).
method(m_test_copy_directory_filtered_222, range(file_utils_test_case_1, 53218, 866, 1364, 1380)).
method(m_test_copy_directory_preserve_dates_223, range(file_utils_test_case_1, 54090, 2483, 1382, 1432)).
method(m_test_copy_directory_to_child_224, range(file_utils_test_case_1, 56605, 931, 1435, 1451)).
method(m_test_copy_directory_to_grand_child_225, range(file_utils_test_case_1, 57568, 789, 1454, 1467)).
method(m_test_copy_directory_to_itself_226, range(file_utils_test_case_1, 58445, 267, 1470, 1476)).
method(m_create_files_for_test_copy_directory_227, range(file_utils_test_case_1, 58718, 1282, 1478, 1497)).
method(m_test_copy_directory_errors_228, range(file_utils_test_case_1, 60006, 1164, 1499, 1536)).
method(m_test_copy_to_directory_with_file_229, range(file_utils_test_case_1, 61200, 492, 1540, 1551)).
method(m_test_copy_to_directory_with_file_source_is_null_230, range(file_utils_test_case_1, 61698, 184, 1553, 1556)).
method(m_test_copy_to_directory_with_file_source_does_not_exist_231, range(file_utils_test_case_1, 61888, 228, 1558, 1562)).
method(m_test_copy_to_directory_with_directory_232, range(file_utils_test_case_1, 62122, 1370, 1564, 1593)).
method(m_test_copy_to_directory_with_iterable_233, range(file_utils_test_case_1, 63498, 832, 1595, 1615)).
method(m_test_copy_to_directory_with_iterable_source_is_null_234, range(file_utils_test_case_1, 64336, 194, 1617, 1620)).
method(m_test_copy_to_directory_with_iterable_source_does_not_exist_235, range(file_utils_test_case_1, 64536, 279, 1622, 1627)).
method(m_test_force_delete_afile1_236, range(file_utils_test_case_1, 64841, 364, 1631, 1638)).
method(m_test_force_delete_afile2_237, range(file_utils_test_case_1, 65211, 364, 1640, 1647)).
method(m_test_force_delete_afile3_238, range(file_utils_test_case_1, 65581, 394, 1649, 1658)).
method(m_test_copy_file1_to_dir_239, range(file_utils_test_case_1, 66009, 1134, 1662, 1687)).
method(m_test_copy_file2_to_dir_240, range(file_utils_test_case_1, 67149, 828, 1689, 1707)).
method(m_test_force_delete_dir_241, range(file_utils_test_case_1, 68003, 314, 1711, 1717)).
method(m_test_file_utils_242, range(file_utils_test_case_1, 68381, 991, 1722, 1747)).
method(m_test_touch_243, range(file_utils_test_case_1, 69378, 1443, 1749, 1773)).
method(m_test_list_files_244, range(file_utils_test_case_1, 70827, 1889, 1775, 1826)).
method(m_test_list_files_with_dirs_245, range(file_utils_test_case_1, 72722, 1407, 1828, 1864)).
method(m_test_iterate_files_246, range(file_utils_test_case_1, 74135, 1694, 1866, 1911)).
method(m_test_iterate_files_and_dirs_247, range(file_utils_test_case_1, 75835, 1438, 1913, 1952)).
method(m_test_read_file_to_string_with_default_encoding_248, range(file_utils_test_case_1, 77279, 426, 1954, 1964)).
method(m_test_read_file_to_string_with_encoding_249, range(file_utils_test_case_1, 77711, 433, 1966, 1976)).
method(m_test_read_file_to_byte_array_250, range(file_utils_test_case_1, 78150, 501, 1978, 1992)).
method(m_test_read_lines_251, range(file_utils_test_case_1, 78657, 501, 1994, 2006)).
method(m_test_write_string_to_file1_252, range(file_utils_test_case_1, 79164, 315, 2008, 2014)).
method(m_test_write_string_to_file2_253, range(file_utils_test_case_1, 79485, 316, 2016, 2022)).
method(m_test_write_string_to_file3_254, range(file_utils_test_case_1, 79807, 317, 2024, 2030)).
method(m_test_write_char_sequence1_255, range(file_utils_test_case_1, 80130, 303, 2032, 2038)).
method(m_test_write_char_sequence2_256, range(file_utils_test_case_1, 80439, 304, 2040, 2046)).
method(m_test_write_byte_array_to_file_257, range(file_utils_test_case_1, 80749, 293, 2048, 2054)).
method(m_test_write_byte_array_to_file__with_offset_and_length_258, range(file_utils_test_case_1, 81048, 436, 2056, 2064)).
method(m_test_write_lines_4arg_259, range(file_utils_test_case_1, 81490, 574, 2066, 2078)).
method(m_test_write_lines_4arg__writer_null_data_260, range(file_utils_test_case_1, 82070, 275, 2080, 2086)).
method(m_test_write_lines_4arg_null_separator_261, range(file_utils_test_case_1, 82351, 780, 2088, 2102)).
method(m_test_write_lines_3arg_null_separator_262, range(file_utils_test_case_1, 83137, 774, 2104, 2118)).
method(m_test_write_lines_5args_with_append_option_true__should_not_delete_previous_file_lines_263, range(file_utils_test_case_1, 83917, 751, 2120, 2134)).
method(m_test_write_lines_5args_with_append_option_false__should_delete_previous_file_lines_264, range(file_utils_test_case_1, 84674, 696, 2136, 2149)).
method(m_test_write_lines_4args_with_append_option_true__should_not_delete_previous_file_lines_265, range(file_utils_test_case_1, 85376, 745, 2151, 2165)).
method(m_test_write_lines_4args_with_append_option_false__should_delete_previous_file_lines_266, range(file_utils_test_case_1, 86127, 690, 2167, 2180)).
method(m_test_write_lines_encoding__with_append_option_true__should_not_delete_previous_file_lines_267, range(file_utils_test_case_1, 86824, 748, 2183, 2197)).
method(m_test_write_lines_encoding__with_append_option_false__should_delete_previous_file_lines_268, range(file_utils_test_case_1, 87578, 693, 2199, 2212)).
method(m_test_write_lines_3args_with_append_option_true__should_not_delete_previous_file_lines_269, range(file_utils_test_case_1, 88277, 739, 2214, 2228)).
method(m_test_write_lines_3args_with_append_option_false__should_delete_previous_file_lines_270, range(file_utils_test_case_1, 89022, 684, 2230, 2243)).
method(m_test_write_string_to_file_with_encoding__with_append_option_true__should_not_delete_previous_file_lines_271, range(file_utils_test_case_1, 89712, 599, 2245, 2256)).
method(m_test_write_string_to_file_with_encoding__with_append_option_false__should_delete_previous_file_lines_272, range(file_utils_test_case_1, 90317, 544, 2258, 2268)).
method(m_test_write_string_to_file__with_append_option_true__should_not_delete_previous_file_lines_273, range(file_utils_test_case_1, 90867, 572, 2270, 2281)).
method(m_test_write_string_to_file__with_append_option_false__should_delete_previous_file_lines_274, range(file_utils_test_case_1, 91445, 517, 2283, 2293)).
method(m_test_write_with_encoding__with_append_option_true__should_not_delete_previous_file_lines_275, range(file_utils_test_case_1, 91968, 575, 2295, 2306)).
method(m_test_write_with_encoding__with_append_option_false__should_delete_previous_file_lines_276, range(file_utils_test_case_1, 92549, 520, 2308, 2318)).
method(m_test_write__with_append_option_true__should_not_delete_previous_file_lines_277, range(file_utils_test_case_1, 93075, 548, 2320, 2331)).
method(m_test_write__with_append_option_false__should_delete_previous_file_lines_278, range(file_utils_test_case_1, 93629, 493, 2333, 2343)).
method(m_test_write_byte_array_to_file__with_append_option_true__should_not_delete_previous_file_lines_279, range(file_utils_test_case_1, 94128, 589, 2345, 2356)).
method(m_test_write_byte_array_to_file__with_append_option_false__should_delete_previous_file_lines_280, range(file_utils_test_case_1, 94723, 534, 2358, 2368)).
method(m_test_write_byte_array_to_file__with_offset_and_length__with_append_option_true__should_not_delete_previous_file_lines_281, range(file_utils_test_case_1, 95263, 689, 2370, 2381)).
method(m_test_write_byte_array_to_file__with_offset_and_length__with_append_option_true__should_delete_previous_file_lines_282, range(file_utils_test_case_1, 95958, 649, 2383, 2394)).
method(m_test_checksum_crc32_283, range(file_utils_test_case_1, 96691, 717, 2397, 2413)).
method(m_test_checksum_284, range(file_utils_test_case_1, 97414, 889, 2415, 2434)).
method(m_test_checksum_on_null_file_285, range(file_utils_test_case_1, 98309, 240, 2436, 2444)).
method(m_test_checksum_on_null_checksum_286, range(file_utils_test_case_1, 98555, 489, 2446, 2458)).
method(m_test_checksum_on_directory_287, range(file_utils_test_case_1, 99050, 254, 2460, 2468)).
method(m_test_checksum_double_288, range(file_utils_test_case_1, 99310, 1189, 2470, 2495)).
method(m_test_delete_directory_with_non_directory_289, range(file_utils_test_case_1, 100505, 256, 2497, 2505)).
method(m_test_delete_quietly_for_null_290, range(file_utils_test_case_1, 100767, 197, 2507, 2514)).
method(m_test_delete_quietly_dir_291, range(file_utils_test_case_1, 100970, 970, 2516, 2538)).
method(m_test_delete_quietly_file_292, range(file_utils_test_case_1, 101946, 743, 2540, 2558)).
method(m_test_delete_quietly_non_existent_293, range(file_utils_test_case_1, 102695, 318, 2560, 2570)).
method(m_test_move_file__rename_294, range(file_utils_test_case_1, 103019, 312, 2572, 2579)).
method(m_test_move_file__copy_delete_295, range(file_utils_test_case_1, 103337, 656, 2581, 2597)).
method(m_rename_to_296, range(file_utils_test_case_1, 103713, 105, 2589, 2592)).
method(m_test_move_file__copy_delete__failed_297, range(file_utils_test_case_1, 103999, 981, 2599, 2627)).
method(m_rename_to_298, range(file_utils_test_case_1, 104382, 105, 2607, 2610)).
method(m_delete_299, range(file_utils_test_case_1, 104537, 91, 2613, 2616)).
method(m_test_move_file__errors_300, range(file_utils_test_case_1, 104986, 2307, 2629, 2685)).
method(m_test_move_file_to_directory_301, range(file_utils_test_case_1, 107299, 530, 2687, 2697)).
method(m_test_move_file_to_directory__errors_302, range(file_utils_test_case_1, 107835, 2188, 2699, 2751)).
method(m_test_move_directory__rename_303, range(file_utils_test_case_1, 110030, 1367, 2754, 2785)).
method(m_test_move_directory__copy_delete_304, range(file_utils_test_case_1, 111403, 1605, 2787, 2827)).
method(m_rename_to_305, range(file_utils_test_case_1, 111699, 108, 2795, 2798)).
method(m_test_move_directory__errors_306, range(file_utils_test_case_1, 113014, 1996, 2829, 2877)).
method(m_test_move_directory_to_directory_307, range(file_utils_test_case_1, 115016, 1599, 2879, 2913)).
method(m_test_move_directory_to_directory__errors_308, range(file_utils_test_case_1, 116621, 2213, 2915, 2967)).
method(m_test_move_to_directory_309, range(file_utils_test_case_1, 118840, 1534, 2969, 3001)).
method(m_test_move_to_directory__errors_310, range(file_utils_test_case_1, 120380, 951, 3003, 3025)).
method(m_test_io300_311, range(file_utils_test_case_1, 121337, 518, 3027, 3041)).
method(m_test_io276_312, range(file_utils_test_case_1, 121861, 441, 3043, 3051)).
method(m_shorter_file_313, range(file_utils_test_case_1, 122487, 82, 3057, 3059)).
method(m_length_314, range(file_utils_test_case_1, 122579, 89, 3061, 3064)).
method(m_test_incorrect_output_size_315, range(file_utils_test_case_1, 122769, 552, 3068, 3081)).
method(m_list_directory_walker_154, range(file_utils_test_case_1, 123504, 54, 3087, 3089)).
method(m_list_316, range(file_utils_test_case_1, 123568, 201, 3091, 3095)).
method(m_handle_directory_start_317, range(file_utils_test_case_1, 123779, 303, 3097, 3103)).
method(m_handle_file_318, range(file_utils_test_case_1, 124092, 171, 3105, 3108)).
%counters_1 - org.apache.commons.io.file.Counters
method(m_abstract_path_counters_319, range(counters_1, 1296, 534, 38, 51)).
method(m_get_byte_counter_321, range(counters_1, 1840, 93, 53, 56)).
method(m_get_directory_counter_322, range(counters_1, 1943, 103, 58, 61)).
method(m_get_file_counter_323, range(counters_1, 2056, 229, 63, 71)).
method(m_to_string_324, range(counters_1, 2295, 253, 73, 77)).
method(m_add_325, range(counters_1, 2740, 118, 88, 92)).
method(m_get_326, range(counters_1, 2868, 90, 94, 97)).
method(m_get_big_integer_327, range(counters_1, 2968, 89, 99, 102)).
method(m_get_long_328, range(counters_1, 3067, 108, 104, 107)).
method(m_increment_329, range(counters_1, 3185, 100, 109, 112)).
method(m_to_string_330, range(counters_1, 3295, 91, 114, 117)).
method(m_big_integer_path_counters_331, range(counters_1, 3590, 229, 125, 130)).
method(m_add_332, range(counters_1, 3914, 144, 139, 144)).
method(m_get_65, range(counters_1, 4068, 127, 146, 151)).
method(m_get_big_integer_333, range(counters_1, 4205, 155, 153, 158)).
method(m_get_long_334, range(counters_1, 4370, 131, 160, 165)).
method(m_increment_335, range(counters_1, 4511, 78, 167, 170)).
method(m_add_336, range(counters_1, 4745, 88, 181, 185)).
method(m_get_337, range(counters_1, 4843, 73, 187, 190)).
method(m_get_big_integer_338, range(counters_1, 4926, 109, 192, 195)).
method(m_get_long_339, range(counters_1, 5045, 91, 197, 200)).
method(m_increment_340, range(counters_1, 5146, 74, 202, 205)).
method(m_to_string_341, range(counters_1, 5230, 95, 207, 210)).
method(m_long_path_counters_342, range(counters_1, 5517, 205, 218, 223)).
method(m_get_byte_counter_344, range(counters_1, 5858, 131, 232, 237)).
method(m_get_directory_counter_67, range(counters_1, 5999, 146, 239, 244)).
method(m_get_file_counter_66, range(counters_1, 6155, 131, 246, 251)).
method(m_big_integer_counter_345, range(counters_1, 6299, 194, 255, 262)).
method(m_big_integer_path_counters_346, range(counters_1, 6499, 219, 264, 271)).
method(m_long_counter_343, range(counters_1, 6724, 170, 273, 280)).
method(m_long_path_counters_348, range(counters_1, 6900, 207, 282, 289)).

%%% Blocks
%path_utils_1 - org.apache.commons.io.file.PathUtils
block(path_utils_1_block1, block, path_utils_1_code3, body, range(path_utils_1, 4369, 90, 109, 111)).
block(path_utils_1_block2, block, path_utils_1_code4, body, range(path_utils_1, 5309, 439, 132, 143)).
block(path_utils_1_block3, block, path_utils_1_stmt2, then_statement, range(path_utils_1, 5348, 73, 133, 135)).
block(path_utils_1_block4, block, path_utils_1_stmt5, then_statement, range(path_utils_1, 5600, 115, 138, 141)).
%file_utils_1 - org.apache.commons.io.FileUtils
block(file_utils_1_block1, block, file_utils_1_code62, body, range(file_utils_1, 12110, 374, 331, 346)).
block(file_utils_1_block2, block, file_utils_1_stmt3, body, range(file_utils_1, 12248, 157, 335, 341)).
block(file_utils_1_block3, block, file_utils_1_stmt4, body, range(file_utils_1, 12266, 50, 336, 338)).
block(file_utils_1_block4, block, file_utils_1_code73, body, range(file_utils_1, 12347, 48, 338, 340)).
block(file_utils_1_block5, block, file_utils_1_stmt6, then_statement, range(file_utils_1, 12438, 40, 343, 345)).
block(file_utils_1_block6, block, file_utils_1_code74, body, range(file_utils_1, 13992, 914, 390, 420)).
block(file_utils_1_block7, block, file_utils_1_code78, body, range(file_utils_1, 48306, 353, 1115, 1129)).
block(file_utils_1_block8, block, file_utils_1_stmt8, then_statement, range(file_utils_1, 48341, 31, 1116, 1118)).
block(file_utils_1_block9, block, file_utils_1_stmt9, then_statement, range(file_utils_1, 48409, 50, 1120, 1122)).
block(file_utils_1_block10, block, file_utils_1_stmt11, then_statement, range(file_utils_1, 48494, 159, 1124, 1128)).
block(file_utils_1_block11, block, file_utils_1_code79, body, range(file_utils_1, 57316, 491, 1333, 1345)).
block(file_utils_1_block12, block, file_utils_1_stmt12, body, range(file_utils_1, 57382, 73, 1335, 1337)).
block(file_utils_1_block13, block, file_utils_1_code80, body, range(file_utils_1, 57478, 83, 1337, 1339)).
block(file_utils_1_block14, block, file_utils_1_stmt14, then_statement, range(file_utils_1, 57668, 133, 1341, 1344)).
block(file_utils_1_block15, block, file_utils_1_code81, body, range(file_utils_1, 72636, 166, 1719, 1724)).
block(file_utils_1_block16, block, file_utils_1_stmt15, then_statement, range(file_utils_1, 72664, 80, 1720, 1722)).
block(file_utils_1_block17, block, file_utils_1_code82, body, range(file_utils_1, 112700, 577, 2675, 2691)).
block(file_utils_1_block18, block, file_utils_1_stmt17, then_statement, range(file_utils_1, 112735, 134, 2676, 2679)).
block(file_utils_1_block19, block, file_utils_1_stmt18, then_statement, range(file_utils_1, 112909, 138, 2681, 2684)).
block(file_utils_1_block20, block, file_utils_1_stmt20, then_statement, range(file_utils_1, 113128, 121, 2687, 2689)).
%test_utils_1 - org.apache.commons.io.testtools.TestUtils
block(test_utils_1_block1, block, test_utils_1_code3, body, range(test_utils_1, 2589, 221, 72, 79)).
block(test_utils_1_block2, block, test_utils_1_stmt1, body, range(test_utils_1, 2630, 174, 73, 78)).
%directory_walker_1 - org.apache.commons.io.DirectoryWalker
block(directory_walker_1_block1, block, directory_walker_1_code3, body, range(directory_walker_1, 9929, 31, 282, 284)).
block(directory_walker_1_block2, block, directory_walker_1_code4, body, range(directory_walker_1, 10667, 75, 299, 302)).
%file_utils_test_case_1 - org.apache.commons.io.FileUtilsTestCase
block(file_utils_test_case_1_block1, block, file_utils_test_case_1_code23, body, range(file_utils_test_case_1, 3518, 1907, 106, 146)).
block(file_utils_test_case_1_block2, block, file_utils_test_case_1_stmt5, then_statement, range(file_utils_test_case_1, 3801, 145, 112, 115)).
block(file_utils_test_case_1_block3, block, file_utils_test_case_1_stmt6, body, range(file_utils_test_case_1, 4072, 75, 117, 119)).
block(file_utils_test_case_1_block4, block, file_utils_test_case_1_stmt8, then_statement, range(file_utils_test_case_1, 4197, 145, 120, 123)).
block(file_utils_test_case_1_block5, block, file_utils_test_case_1_stmt9, body, range(file_utils_test_case_1, 4468, 75, 125, 127)).
block(file_utils_test_case_1_block6, block, file_utils_test_case_1_stmt13, then_statement, range(file_utils_test_case_1, 4679, 145, 130, 133)).
block(file_utils_test_case_1_block7, block, file_utils_test_case_1_stmt14, body, range(file_utils_test_case_1, 4950, 75, 135, 137)).
block(file_utils_test_case_1_block8, block, file_utils_test_case_1_stmt16, then_statement, range(file_utils_test_case_1, 5075, 145, 138, 141)).
block(file_utils_test_case_1_block9, block, file_utils_test_case_1_stmt17, body, range(file_utils_test_case_1, 5345, 74, 143, 145)).
block(file_utils_test_case_1_block10, block, file_utils_test_case_1_code40, body, range(file_utils_test_case_1, 5456, 55, 148, 150)).
block(file_utils_test_case_1_block11, block, file_utils_test_case_1_code41, body, range(file_utils_test_case_1, 22381, 2272, 570, 626)).
%counters_1 - org.apache.commons.io.file.Counters
block(counters_1_block1, block, counters_1_code4, body, range(counters_1, 1656, 174, 46, 51)).
block(counters_1_block2, block, counters_1_code5, body, range(counters_1, 1890, 43, 54, 56)).
block(counters_1_block3, block, counters_1_code6, body, range(counters_1, 2237, 48, 69, 71)).
block(counters_1_block4, block, counters_1_code8, body, range(counters_1, 4795, 38, 182, 185)).
block(counters_1_block5, block, counters_1_code9, body, range(counters_1, 4879, 37, 188, 190)).
block(counters_1_block6, block, counters_1_code10, body, range(counters_1, 5188, 32, 203, 205)).
block(counters_1_block7, block, counters_1_code12, body, range(counters_1, 5620, 102, 221, 223)).
block(counters_1_block8, block, counters_1_code13, body, range(counters_1, 6853, 41, 278, 280)).
block(counters_1_block9, block, counters_1_code15, body, range(counters_1, 7061, 46, 287, 289)).

%%% Statements
%path_utils_1 - org.apache.commons.io.file.PathUtils
stmt(path_utils_1_stmt1, return_statement, path_utils_1_block1, (statements, 0), range(path_utils_1, 4379, 74, 110, 110)).
stmt(path_utils_1_stmt2, if_statement, path_utils_1_block2, (statements, 0), range(path_utils_1, 5319, 102, 133, 135)).
stmt(path_utils_1_stmt3, variable_declaration_statement, path_utils_1_block2, (statements, 1), range(path_utils_1, 5430, 60, 136, 136)).
stmt(path_utils_1_stmt4, variable_declaration_statement, path_utils_1_block2, (statements, 2), range(path_utils_1, 5499, 60, 137, 137)).
stmt(path_utils_1_stmt5, if_statement, path_utils_1_block2, (statements, 3), range(path_utils_1, 5568, 147, 138, 141)).
stmt(path_utils_1_stmt6, expression_statement, path_utils_1_block4, (statements, 0), range(path_utils_1, 5614, 40, 139, 139)).
stmt(path_utils_1_stmt7, expression_statement, path_utils_1_block4, (statements, 1), range(path_utils_1, 5667, 38, 140, 140)).
stmt(path_utils_1_stmt8, return_statement, path_utils_1_block2, (statements, 4), range(path_utils_1, 5724, 18, 142, 142)).
%file_utils_1 - org.apache.commons.io.FileUtils
stmt(file_utils_1_stmt1, variable_declaration_statement, file_utils_1_block1, (statements, 0), range(file_utils_1, 12120, 50, 332, 332)).
stmt(file_utils_1_stmt2, variable_declaration_statement, file_utils_1_block1, (statements, 1), range(file_utils_1, 12180, 29, 334, 334)).
stmt(file_utils_1_stmt3, enhanced_for_statement, file_utils_1_block1, (statements, 2), range(file_utils_1, 12218, 187, 335, 341)).
stmt(file_utils_1_stmt4, try_statement, file_utils_1_block2, (statements, 0), range(file_utils_1, 12262, 133, 336, 340)).
stmt(file_utils_1_stmt5, expression_statement, file_utils_1_block3, (statements, 0), range(file_utils_1, 12284, 18, 337, 337)).
stmt(file_utils_1_stmt6, if_statement, file_utils_1_block1, (statements, 3), range(file_utils_1, 12415, 63, 343, 345)).
stmt(file_utils_1_stmt7, variable_declaration_statement, file_utils_1_block6, (statements, 0), range(file_utils_1, 14002, 43, 391, 391)).
stmt(file_utils_1_stmt8, if_statement, file_utils_1_block7, (statements, 0), range(file_utils_1, 48316, 56, 1116, 1118)).
stmt(file_utils_1_stmt9, if_statement, file_utils_1_block7, (statements, 1), range(file_utils_1, 48382, 77, 1120, 1122)).
stmt(file_utils_1_stmt10, expression_statement, file_utils_1_block9, (statements, 0), range(file_utils_1, 48423, 26, 1121, 1121)).
stmt(file_utils_1_stmt11, if_statement, file_utils_1_block7, (statements, 2), range(file_utils_1, 48469, 184, 1124, 1128)).
stmt(file_utils_1_stmt12, try_statement, file_utils_1_block11, (statements, 1), range(file_utils_1, 57378, 183, 1335, 1339)).
stmt(file_utils_1_stmt13, expression_statement, file_utils_1_block12, (statements, 0), range(file_utils_1, 57396, 49, 1336, 1336)).
stmt(file_utils_1_stmt14, if_statement, file_utils_1_block11, (statements, 2), range(file_utils_1, 57571, 230, 1341, 1344)).
stmt(file_utils_1_stmt15, if_statement, file_utils_1_block15, (statements, 0), range(file_utils_1, 72646, 98, 1720, 1722)).
stmt(file_utils_1_stmt16, return_statement, file_utils_1_block15, (statements, 1), range(file_utils_1, 72753, 43, 1723, 1723)).
stmt(file_utils_1_stmt17, if_statement, file_utils_1_block17, (statements, 0), range(file_utils_1, 112710, 159, 2676, 2679)).
stmt(file_utils_1_stmt18, if_statement, file_utils_1_block17, (statements, 1), range(file_utils_1, 112879, 168, 2681, 2684)).
stmt(file_utils_1_stmt19, variable_declaration_statement, file_utils_1_block17, (statements, 2), range(file_utils_1, 113057, 43, 2686, 2686)).
stmt(file_utils_1_stmt20, if_statement, file_utils_1_block17, (statements, 3), range(file_utils_1, 113109, 140, 2687, 2689)).
stmt(file_utils_1_stmt21, return_statement, file_utils_1_block17, (statements, 4), range(file_utils_1, 113258, 13, 2690, 2690)).
%test_utils_1 - org.apache.commons.io.testtools.TestUtils
stmt(test_utils_1_stmt1, for_statement, test_utils_1_block1, (statements, 0), range(test_utils_1, 2599, 205, 73, 78)).
%directory_walker_1 - org.apache.commons.io.DirectoryWalker
stmt(directory_walker_1_stmt1, constructor_invocation, directory_walker_1_block1, (statements, 0), range(directory_walker_1, 9939, 15, 283, 283)).
stmt(directory_walker_1_stmt2, expression_statement, directory_walker_1_block2, (statements, 0), range(directory_walker_1, 10677, 21, 300, 300)).
stmt(directory_walker_1_stmt3, expression_statement, directory_walker_1_block2, (statements, 1), range(directory_walker_1, 10707, 29, 301, 301)).
%file_utils_test_case_1 - org.apache.commons.io.FileUtilsTestCase
stmt(file_utils_test_case_1_stmt1, expression_statement, file_utils_test_case_1_block1, (statements, 0), range(file_utils_test_case_1, 3528, 56, 107, 107)).
stmt(file_utils_test_case_1_stmt2, expression_statement, file_utils_test_case_1_block1, (statements, 1), range(file_utils_test_case_1, 3593, 57, 108, 108)).
stmt(file_utils_test_case_1_stmt3, expression_statement, file_utils_test_case_1_block1, (statements, 2), range(file_utils_test_case_1, 3660, 41, 110, 110)).
stmt(file_utils_test_case_1_stmt4, expression_statement, file_utils_test_case_1_block1, (statements, 3), range(file_utils_test_case_1, 3710, 41, 111, 111)).
stmt(file_utils_test_case_1_stmt5, if_statement, file_utils_test_case_1_block1, (statements, 4), range(file_utils_test_case_1, 3760, 186, 112, 115)).
stmt(file_utils_test_case_1_stmt6, try_statement, file_utils_test_case_1_block1, (statements, 5), range(file_utils_test_case_1, 3955, 192, 116, 119)).
stmt(file_utils_test_case_1_stmt7, expression_statement, file_utils_test_case_1_block3, (statements, 0), range(file_utils_test_case_1, 4086, 51, 118, 118)).
stmt(file_utils_test_case_1_stmt8, if_statement, file_utils_test_case_1_block1, (statements, 6), range(file_utils_test_case_1, 4156, 186, 120, 123)).
stmt(file_utils_test_case_1_stmt9, try_statement, file_utils_test_case_1_block1, (statements, 7), range(file_utils_test_case_1, 4351, 192, 124, 127)).
stmt(file_utils_test_case_1_stmt10, expression_statement, file_utils_test_case_1_block5, (statements, 0), range(file_utils_test_case_1, 4482, 51, 126, 126)).
stmt(file_utils_test_case_1_stmt11, expression_statement, file_utils_test_case_1_block1, (statements, 8), range(file_utils_test_case_1, 4552, 43, 128, 128)).
stmt(file_utils_test_case_1_stmt12, expression_statement, file_utils_test_case_1_block1, (statements, 9), range(file_utils_test_case_1, 4604, 25, 129, 129)).
stmt(file_utils_test_case_1_stmt13, if_statement, file_utils_test_case_1_block1, (statements, 10), range(file_utils_test_case_1, 4638, 186, 130, 133)).
stmt(file_utils_test_case_1_stmt14, try_statement, file_utils_test_case_1_block1, (statements, 11), range(file_utils_test_case_1, 4833, 192, 134, 137)).
stmt(file_utils_test_case_1_stmt15, expression_statement, file_utils_test_case_1_block7, (statements, 0), range(file_utils_test_case_1, 4964, 51, 136, 136)).
stmt(file_utils_test_case_1_stmt16, if_statement, file_utils_test_case_1_block1, (statements, 12), range(file_utils_test_case_1, 5034, 186, 138, 141)).
stmt(file_utils_test_case_1_stmt17, try_statement, file_utils_test_case_1_block1, (statements, 13), range(file_utils_test_case_1, 5229, 190, 142, 145)).
stmt(file_utils_test_case_1_stmt18, expression_statement, file_utils_test_case_1_block9, (statements, 0), range(file_utils_test_case_1, 5359, 50, 144, 144)).
stmt(file_utils_test_case_1_stmt19, return_statement, file_utils_test_case_1_block10, (statements, 0), range(file_utils_test_case_1, 5466, 39, 149, 149)).
stmt(file_utils_test_case_1_stmt20, variable_declaration_statement, file_utils_test_case_1_block11, (statements, 0), range(file_utils_test_case_1, 22421, 55, 572, 572)).
stmt(file_utils_test_case_1_stmt21, variable_declaration_statement, file_utils_test_case_1_block11, (statements, 1), range(file_utils_test_case_1, 22485, 62, 573, 573)).
stmt(file_utils_test_case_1_stmt22, expression_statement, file_utils_test_case_1_block11, (statements, 2), range(file_utils_test_case_1, 22556, 48, 574, 574)).
%counters_1 - org.apache.commons.io.file.Counters
stmt(counters_1_stmt1, super_constructor_invocation, counters_1_block1, (statements, 0), range(counters_1, 1670, 8, 47, 47)).
stmt(counters_1_stmt2, expression_statement, counters_1_block1, (statements, 1), range(counters_1, 1691, 31, 48, 48)).
stmt(counters_1_stmt3, expression_statement, counters_1_block1, (statements, 2), range(counters_1, 1735, 41, 49, 49)).
stmt(counters_1_stmt4, expression_statement, counters_1_block1, (statements, 3), range(counters_1, 1789, 31, 50, 50)).
stmt(counters_1_stmt5, return_statement, counters_1_block2, (statements, 0), range(counters_1, 1904, 19, 55, 55)).
stmt(counters_1_stmt6, return_statement, counters_1_block3, (statements, 0), range(counters_1, 2251, 24, 70, 70)).
stmt(counters_1_stmt7, expression_statement, counters_1_block4, (statements, 0), range(counters_1, 4809, 13, 183, 183)).
stmt(counters_1_stmt8, return_statement, counters_1_block5, (statements, 0), range(counters_1, 4893, 13, 189, 189)).
stmt(counters_1_stmt9, expression_statement, counters_1_block6, (statements, 0), range(counters_1, 5202, 8, 204, 204)).
stmt(counters_1_stmt10, super_constructor_invocation, counters_1_block7, (statements, 0), range(counters_1, 5634, 78, 222, 222)).
stmt(counters_1_stmt11, return_statement, counters_1_block8, (statements, 0), range(counters_1, 6863, 25, 279, 279)).
stmt(counters_1_stmt12, return_statement, counters_1_block9, (statements, 0), range(counters_1, 7071, 30, 288, 288)).

%%% Expressions
%path_utils_1 - org.apache.commons.io.file.PathUtils
expr(path_utils_1_expr1, conditional_expression, path_utils_1_stmt1, expression, range(path_utils_1, 4386, 66, 110, 110), "Files.isDirectory(path) ? deleteDirectory(path) : deleteFile(path)").
expr(path_utils_1_expr2, method_invocation, path_utils_1_expr1, expression, range(path_utils_1, 4386, 23, 110, 110), "Files.isDirectory(path)").
expr(path_utils_1_expr3, method_invocation, path_utils_1_expr1, then_expression, range(path_utils_1, 4412, 21, 110, 110), "deleteDirectory(path)").
expr(path_utils_1_expr4, method_invocation, path_utils_1_expr1, else_expression, range(path_utils_1, 4436, 16, 110, 110), "deleteFile(path)").
expr(path_utils_1_expr5, method_invocation, path_utils_1_stmt2, expression, range(path_utils_1, 5323, 23, 133, 133), "Files.isDirectory(file)").
expr(path_utils_1_expr6, method_invocation, path_utils_1_code7, initializer, range(path_utils_1, 5462, 27, 136, 136), "Counters.longPathCounters()").
expr(path_utils_1_expr7, conditional_expression, path_utils_1_code10, initializer, range(path_utils_1, 5517, 41, 137, 137), "Files.exists(file) ? Files.size(file) : 0").
expr(path_utils_1_expr8, method_invocation, path_utils_1_expr7, expression, range(path_utils_1, 5517, 18, 137, 137), "Files.exists(file)").
expr(path_utils_1_expr9, method_invocation, path_utils_1_expr7, then_expression, range(path_utils_1, 5538, 16, 137, 137), "Files.size(file)").
expr(path_utils_1_expr10, method_invocation, path_utils_1_stmt5, expression, range(path_utils_1, 5572, 26, 138, 138), "Files.deleteIfExists(file)").
expr(path_utils_1_expr11, method_invocation, path_utils_1_stmt6, expression, range(path_utils_1, 5614, 39, 139, 139), "pathCounts.getFileCounter().increment()").
expr(path_utils_1_expr12, method_invocation, path_utils_1_expr11, expression, range(path_utils_1, 5614, 27, 139, 139), "pathCounts.getFileCounter()").
expr(path_utils_1_expr14, method_invocation, path_utils_1_expr13, expression, range(path_utils_1, 5667, 27, 140, 140), "pathCounts.getByteCounter()").
expr(path_utils_1_expr13, method_invocation, path_utils_1_stmt7, expression, range(path_utils_1, 5667, 37, 140, 140), "pathCounts.getByteCounter().add(size)").
%file_utils_1 - org.apache.commons.io.FileUtils
expr(file_utils_1_expr1, method_invocation, file_utils_1_code8, initializer, range(file_utils_1, 3236, 26, 96, 96), "BigInteger.valueOf(ONE_KB)").
expr(file_utils_1_expr2, method_invocation, file_utils_1_code14, initializer, range(file_utils_1, 3509, 29, 108, 108), "ONE_KB_BI.multiply(ONE_KB_BI)").
expr(file_utils_1_expr3, method_invocation, file_utils_1_code20, initializer, range(file_utils_1, 3785, 29, 120, 120), "ONE_KB_BI.multiply(ONE_MB_BI)").
expr(file_utils_1_expr4, method_invocation, file_utils_1_code26, initializer, range(file_utils_1, 4061, 29, 132, 132), "ONE_KB_BI.multiply(ONE_GB_BI)").
expr(file_utils_1_expr5, method_invocation, file_utils_1_code32, initializer, range(file_utils_1, 4337, 29, 144, 144), "ONE_KB_BI.multiply(ONE_TB_BI)").
expr(file_utils_1_expr6, method_invocation, file_utils_1_code38, initializer, range(file_utils_1, 4613, 29, 156, 156), "ONE_KB_BI.multiply(ONE_PB_BI)").
expr(file_utils_1_expr7, method_invocation, file_utils_1_code44, initializer, range(file_utils_1, 4748, 63, 161, 161), "BigInteger.valueOf(ONE_KB).multiply(BigInteger.valueOf(ONE_EB))").
expr(file_utils_1_expr9, method_invocation, file_utils_1_expr7, expression, range(file_utils_1, 4748, 26, 161, 161), "BigInteger.valueOf(ONE_KB)").
expr(file_utils_1_expr8, method_invocation, file_utils_1_expr7, (arguments, 0), range(file_utils_1, 4784, 26, 161, 161), "BigInteger.valueOf(ONE_EB)").
expr(file_utils_1_expr10, method_invocation, file_utils_1_code50, initializer, range(file_utils_1, 4917, 26, 166, 166), "ONE_KB_BI.multiply(ONE_ZB)").
expr(file_utils_1_expr11, array_creation, file_utils_1_code58, initializer, range(file_utils_1, 5061, 11, 171, 171), "new File[0]").
expr(file_utils_1_expr12, method_invocation, file_utils_1_code67, initializer, range(file_utils_1, 12141, 28, 332, 332), "verifiedListFiles(directory)").
expr(file_utils_1_expr13, method_invocation, file_utils_1_stmt5, expression, range(file_utils_1, 12284, 17, 337, 337), "forceDelete(file)").
expr(file_utils_1_expr14, infix_expression, file_utils_1_stmt6, expression, range(file_utils_1, 12419, 17, 343, 343), "null != exception").
expr(file_utils_1_expr15, method_invocation, file_utils_1_code77, initializer, range(file_utils_1, 14030, 14, 391, 391), "file1.exists()").
expr(file_utils_1_expr16, prefix_expression, file_utils_1_stmt8, expression, range(file_utils_1, 48320, 19, 1116, 1116), "!directory.exists()").
expr(file_utils_1_expr17, method_invocation, file_utils_1_expr16, operand, range(file_utils_1, 48321, 18, 1116, 1116), "directory.exists()").
expr(file_utils_1_expr18, prefix_expression, file_utils_1_stmt9, expression, range(file_utils_1, 48386, 21, 1120, 1120), "!isSymlink(directory)").
expr(file_utils_1_expr19, method_invocation, file_utils_1_expr18, operand, range(file_utils_1, 48387, 20, 1120, 1120), "isSymlink(directory)").
expr(file_utils_1_expr20, method_invocation, file_utils_1_stmt10, expression, range(file_utils_1, 48423, 25, 1121, 1121), "cleanDirectory(directory)").
expr(file_utils_1_expr21, prefix_expression, file_utils_1_stmt11, expression, range(file_utils_1, 48473, 19, 1124, 1124), "!directory.delete()").
expr(file_utils_1_expr22, method_invocation, file_utils_1_expr21, operand, range(file_utils_1, 48474, 18, 1124, 1124), "directory.delete()").
expr(file_utils_1_expr23, assignment, file_utils_1_stmt13, expression, range(file_utils_1, 57396, 48, 1336, 1336), "deleteCounters=PathUtils.delete(file.toPath())").
expr(file_utils_1_expr24, method_invocation, file_utils_1_expr23, right_hand_side, range(file_utils_1, 57413, 31, 1336, 1336), "PathUtils.delete(file.toPath())").
expr(file_utils_1_expr25, method_invocation, file_utils_1_expr24, (arguments, 0), range(file_utils_1, 57430, 13, 1336, 1336), "file.toPath()").
expr(file_utils_1_expr27, infix_expression, file_utils_1_expr26, left_operand, range(file_utils_1, 57575, 41, 1341, 1341), "deleteCounters.getFileCounter().get() < 1").
expr(file_utils_1_expr26, infix_expression, file_utils_1_stmt14, expression, range(file_utils_1, 57575, 91, 1341, 1341), "deleteCounters.getFileCounter().get() < 1 && deleteCounters.getDirectoryCounter().get() < 1").
expr(file_utils_1_expr29, method_invocation, file_utils_1_expr28, expression, range(file_utils_1, 57575, 31, 1341, 1341), "deleteCounters.getFileCounter()").
expr(file_utils_1_expr28, method_invocation, file_utils_1_expr27, left_operand, range(file_utils_1, 57575, 37, 1341, 1341), "deleteCounters.getFileCounter().get()").
expr(file_utils_1_expr30, infix_expression, file_utils_1_expr26, right_operand, range(file_utils_1, 57620, 46, 1341, 1341), "deleteCounters.getDirectoryCounter().get() < 1").
expr(file_utils_1_expr32, method_invocation, file_utils_1_expr31, expression, range(file_utils_1, 57620, 36, 1341, 1341), "deleteCounters.getDirectoryCounter()").
expr(file_utils_1_expr31, method_invocation, file_utils_1_expr30, left_operand, range(file_utils_1, 57620, 42, 1341, 1341), "deleteCounters.getDirectoryCounter().get()").
expr(file_utils_1_expr33, infix_expression, file_utils_1_stmt15, expression, range(file_utils_1, 72650, 12, 1720, 1720), "file == null").
expr(file_utils_1_expr34, method_invocation, file_utils_1_stmt16, expression, range(file_utils_1, 72760, 35, 1723, 1723), "Files.isSymbolicLink(file.toPath())").
expr(file_utils_1_expr35, method_invocation, file_utils_1_expr34, (arguments, 0), range(file_utils_1, 72781, 13, 1723, 1723), "file.toPath()").
expr(file_utils_1_expr36, prefix_expression, file_utils_1_stmt17, expression, range(file_utils_1, 112714, 19, 2676, 2676), "!directory.exists()").
expr(file_utils_1_expr37, method_invocation, file_utils_1_expr36, operand, range(file_utils_1, 112715, 18, 2676, 2676), "directory.exists()").
expr(file_utils_1_expr38, prefix_expression, file_utils_1_stmt18, expression, range(file_utils_1, 112883, 24, 2681, 2681), "!directory.isDirectory()").
expr(file_utils_1_expr39, method_invocation, file_utils_1_expr38, operand, range(file_utils_1, 112884, 23, 2681, 2681), "directory.isDirectory()").
expr(file_utils_1_expr40, method_invocation, file_utils_1_code87, initializer, range(file_utils_1, 113078, 21, 2686, 2686), "directory.listFiles()").
expr(file_utils_1_expr41, infix_expression, file_utils_1_stmt20, expression, range(file_utils_1, 113113, 13, 2687, 2687), "files == null").
%test_utils_1 - org.apache.commons.io.testtools.TestUtils
expr(test_utils_1_expr1, variable_declaration_expression, test_utils_1_stmt1, (initializers, 0), range(test_utils_1, 2604, 9, 73, 73), "int i=0").
expr(test_utils_1_expr2, infix_expression, test_utils_1_stmt1, expression, range(test_utils_1, 2615, 8, 73, 73), "i < size").
expr(test_utils_1_expr3, postfix_expression, test_utils_1_stmt1, (updaters, 0), range(test_utils_1, 2625, 3, 73, 73), "i++").
%directory_walker_1 - org.apache.commons.io.DirectoryWalker
expr(directory_walker_1_expr1, constructor_invocation, directory_walker_1_block1, (statements, 0), range(directory_walker_1, 9939, 15, 283, 283), "this(null,-1);").
expr(directory_walker_1_expr2, prefix_expression, directory_walker_1_stmt1, (arguments, 1), range(directory_walker_1, 9950, 2, 283, 283), "-1").
expr(directory_walker_1_expr4, field_access, directory_walker_1_expr3, left_hand_side, range(directory_walker_1, 10677, 11, 300, 300), "this.filter").
expr(directory_walker_1_expr5, this_expression, f_filter_3, expression, range(directory_walker_1, 10677, 4, 300, 300), "this").
expr(directory_walker_1_expr3, assignment, directory_walker_1_stmt2, expression, range(directory_walker_1, 10677, 20, 300, 300), "this.filter=filter").
expr(directory_walker_1_expr8, this_expression, f_depth_limit_4, expression, range(directory_walker_1, 10707, 4, 301, 301), "this").
expr(directory_walker_1_expr6, assignment, directory_walker_1_stmt3, expression, range(directory_walker_1, 10707, 28, 301, 301), "this.depthLimit=depthLimit").
expr(directory_walker_1_expr7, field_access, directory_walker_1_expr6, left_hand_side, range(directory_walker_1, 10707, 15, 301, 301), "this.depthLimit").
%file_utils_test_case_1 - org.apache.commons.io.FileUtilsTestCase
expr(file_utils_test_case_1_expr1, method_invocation, file_utils_test_case_1_code15, initializer, range(file_utils_test_case_1, 3022, 23, 87, 87), "BigInteger.valueOf(100)").
expr(file_utils_test_case_1_expr2, class_instance_creation, file_utils_test_case_1_code21, initializer, range(file_utils_test_case_1, 3153, 25, 92, 92), "new ListDirectoryWalker()").
expr(file_utils_test_case_1_expr3, assignment, file_utils_test_case_1_stmt1, expression, range(file_utils_test_case_1, 3528, 55, 107, 107), "testFile1=new File(temporaryFolder,\"file1-test.txt\")").
expr(file_utils_test_case_1_expr4, class_instance_creation, file_utils_test_case_1_expr3, right_hand_side, range(file_utils_test_case_1, 3540, 43, 107, 107), "new File(temporaryFolder,\"file1-test.txt\")").
expr(file_utils_test_case_1_expr5, assignment, file_utils_test_case_1_stmt2, expression, range(file_utils_test_case_1, 3593, 56, 108, 108), "testFile2=new File(temporaryFolder,\"file1a-test.txt\")").
expr(file_utils_test_case_1_expr6, class_instance_creation, file_utils_test_case_1_expr5, right_hand_side, range(file_utils_test_case_1, 3605, 44, 108, 108), "new File(temporaryFolder,\"file1a-test.txt\")").
expr(file_utils_test_case_1_expr7, assignment, file_utils_test_case_1_stmt3, expression, range(file_utils_test_case_1, 3660, 40, 110, 110), "testFile1Size=(int)testFile1.length()").
expr(file_utils_test_case_1_expr8, cast_expression, file_utils_test_case_1_expr7, right_hand_side, range(file_utils_test_case_1, 3676, 24, 110, 110), "(int)testFile1.length()").
expr(file_utils_test_case_1_expr9, method_invocation, file_utils_test_case_1_expr8, expression, range(file_utils_test_case_1, 3682, 18, 110, 110), "testFile1.length()").
expr(file_utils_test_case_1_expr10, assignment, file_utils_test_case_1_stmt4, expression, range(file_utils_test_case_1, 3710, 40, 111, 111), "testFile2Size=(int)testFile2.length()").
expr(file_utils_test_case_1_expr11, cast_expression, file_utils_test_case_1_expr10, right_hand_side, range(file_utils_test_case_1, 3726, 24, 111, 111), "(int)testFile2.length()").
expr(file_utils_test_case_1_expr12, method_invocation, file_utils_test_case_1_expr11, expression, range(file_utils_test_case_1, 3732, 18, 111, 111), "testFile2.length()").
expr(file_utils_test_case_1_expr13, prefix_expression, file_utils_test_case_1_stmt5, expression, range(file_utils_test_case_1, 3764, 35, 112, 112), "!testFile1.getParentFile().exists()").
expr(file_utils_test_case_1_expr14, method_invocation, file_utils_test_case_1_expr13, operand, range(file_utils_test_case_1, 3765, 34, 112, 112), "testFile1.getParentFile().exists()").
expr(file_utils_test_case_1_expr15, method_invocation, file_utils_test_case_1_expr14, expression, range(file_utils_test_case_1, 3765, 25, 112, 112), "testFile1.getParentFile()").
expr(file_utils_test_case_1_expr16, variable_declaration_expression, file_utils_test_case_1_stmt6, (resources, 0), range(file_utils_test_case_1, 3960, 110, 116, 117), "final BufferedOutputStream output3=new BufferedOutputStream(new FileOutputStream(testFile1))").
expr(file_utils_test_case_1_expr17, class_instance_creation, file_utils_test_case_1_code30, initializer, range(file_utils_test_case_1, 4013, 57, 117, 117), "new BufferedOutputStream(new FileOutputStream(testFile1))").
expr(file_utils_test_case_1_expr18, method_invocation, file_utils_test_case_1_stmt7, expression, range(file_utils_test_case_1, 4086, 50, 118, 118), "TestUtils.generateTestData(output3,testFile1Size)").
expr(file_utils_test_case_1_expr19, prefix_expression, file_utils_test_case_1_stmt8, expression, range(file_utils_test_case_1, 4160, 35, 120, 120), "!testFile2.getParentFile().exists()").
expr(file_utils_test_case_1_expr21, method_invocation, file_utils_test_case_1_expr20, expression, range(file_utils_test_case_1, 4161, 25, 120, 120), "testFile2.getParentFile()").
expr(file_utils_test_case_1_expr20, method_invocation, file_utils_test_case_1_expr19, operand, range(file_utils_test_case_1, 4161, 34, 120, 120), "testFile2.getParentFile().exists()").
expr(file_utils_test_case_1_expr22, variable_declaration_expression, file_utils_test_case_1_stmt9, (resources, 0), range(file_utils_test_case_1, 4356, 110, 124, 125), "final BufferedOutputStream output2=new BufferedOutputStream(new FileOutputStream(testFile2))").
expr(file_utils_test_case_1_expr23, class_instance_creation, file_utils_test_case_1_code33, initializer, range(file_utils_test_case_1, 4409, 57, 125, 125), "new BufferedOutputStream(new FileOutputStream(testFile2))").
expr(file_utils_test_case_1_expr24, method_invocation, file_utils_test_case_1_stmt10, expression, range(file_utils_test_case_1, 4482, 50, 126, 126), "TestUtils.generateTestData(output2,testFile2Size)").
expr(file_utils_test_case_1_expr25, method_invocation, file_utils_test_case_1_stmt11, expression, range(file_utils_test_case_1, 4552, 42, 128, 128), "FileUtils.deleteDirectory(temporaryFolder)").
expr(file_utils_test_case_1_expr26, method_invocation, file_utils_test_case_1_stmt12, expression, range(file_utils_test_case_1, 4604, 24, 129, 129), "temporaryFolder.mkdirs()").
expr(file_utils_test_case_1_expr27, prefix_expression, file_utils_test_case_1_stmt13, expression, range(file_utils_test_case_1, 4642, 35, 130, 130), "!testFile1.getParentFile().exists()").
expr(file_utils_test_case_1_expr29, method_invocation, file_utils_test_case_1_expr28, expression, range(file_utils_test_case_1, 4643, 25, 130, 130), "testFile1.getParentFile()").
expr(file_utils_test_case_1_expr28, method_invocation, file_utils_test_case_1_expr27, operand, range(file_utils_test_case_1, 4643, 34, 130, 130), "testFile1.getParentFile().exists()").
expr(file_utils_test_case_1_expr30, variable_declaration_expression, file_utils_test_case_1_stmt14, (resources, 0), range(file_utils_test_case_1, 4838, 110, 134, 135), "final BufferedOutputStream output1=new BufferedOutputStream(new FileOutputStream(testFile1))").
expr(file_utils_test_case_1_expr31, class_instance_creation, file_utils_test_case_1_code36, initializer, range(file_utils_test_case_1, 4891, 57, 135, 135), "new BufferedOutputStream(new FileOutputStream(testFile1))").
expr(file_utils_test_case_1_expr32, method_invocation, file_utils_test_case_1_stmt15, expression, range(file_utils_test_case_1, 4964, 50, 136, 136), "TestUtils.generateTestData(output1,testFile1Size)").
expr(file_utils_test_case_1_expr33, prefix_expression, file_utils_test_case_1_stmt16, expression, range(file_utils_test_case_1, 5038, 35, 138, 138), "!testFile2.getParentFile().exists()").
expr(file_utils_test_case_1_expr34, method_invocation, file_utils_test_case_1_expr33, operand, range(file_utils_test_case_1, 5039, 34, 138, 138), "testFile2.getParentFile().exists()").
expr(file_utils_test_case_1_expr35, method_invocation, file_utils_test_case_1_expr34, expression, range(file_utils_test_case_1, 5039, 25, 138, 138), "testFile2.getParentFile()").
expr(file_utils_test_case_1_expr36, variable_declaration_expression, file_utils_test_case_1_stmt17, (resources, 0), range(file_utils_test_case_1, 5234, 109, 142, 143), "final BufferedOutputStream output=new BufferedOutputStream(new FileOutputStream(testFile2))").
expr(file_utils_test_case_1_expr37, class_instance_creation, file_utils_test_case_1_code39, initializer, range(file_utils_test_case_1, 5286, 57, 143, 143), "new BufferedOutputStream(new FileOutputStream(testFile2))").
expr(file_utils_test_case_1_expr38, method_invocation, file_utils_test_case_1_stmt18, expression, range(file_utils_test_case_1, 5359, 49, 144, 144), "TestUtils.generateTestData(output,testFile2Size)").
expr(file_utils_test_case_1_expr39, method_invocation, file_utils_test_case_1_stmt19, expression, range(file_utils_test_case_1, 5473, 31, 149, 149), "this.getClass().getSimpleName()").
expr(file_utils_test_case_1_expr41, this_expression, file_utils_test_case_1_expr40, expression, range(file_utils_test_case_1, 5473, 4, 149, 149), "this").
expr(file_utils_test_case_1_expr40, method_invocation, file_utils_test_case_1_expr39, expression, range(file_utils_test_case_1, 5473, 15, 149, 149), "this.getClass()").
expr(file_utils_test_case_1_expr42, class_instance_creation, file_utils_test_case_1_code44, initializer, range(file_utils_test_case_1, 22439, 36, 572, 572), "new File(temporaryFolder,getName())").
expr(file_utils_test_case_1_expr43, method_invocation, file_utils_test_case_1_expr42, (arguments, 1), range(file_utils_test_case_1, 22465, 9, 572, 572), "getName()").
expr(file_utils_test_case_1_expr44, class_instance_creation, file_utils_test_case_1_code48, initializer, range(file_utils_test_case_1, 22504, 42, 573, 573), "new File(temporaryFolder,getName() + \"2\")").
expr(file_utils_test_case_1_expr45, infix_expression, file_utils_test_case_1_expr44, (arguments, 1), range(file_utils_test_case_1, 22530, 15, 573, 573), "getName() + \"2\"").
expr(file_utils_test_case_1_expr46, method_invocation, file_utils_test_case_1_expr45, left_operand, range(file_utils_test_case_1, 22530, 9, 573, 573), "getName()").
expr(file_utils_test_case_1_expr47, method_invocation, file_utils_test_case_1_stmt22, expression, range(file_utils_test_case_1, 22556, 47, 574, 574), "assertTrue(FileUtils.contentEquals(null,null))").
expr(file_utils_test_case_1_expr48, method_invocation, file_utils_test_case_1_expr47, (arguments, 0), range(file_utils_test_case_1, 22567, 35, 574, 574), "FileUtils.contentEquals(null,null)").
%counters_1 - org.apache.commons.io.file.Counters
expr(counters_1_expr1, super_constructor_invocation, counters_1_block1, (statements, 0), range(counters_1, 1670, 8, 47, 47), "super();").
expr(counters_1_expr2, assignment, counters_1_stmt2, expression, range(counters_1, 1691, 30, 48, 48), "this.byteCounter=byteCounter").
expr(counters_1_expr3, field_access, counters_1_expr2, left_hand_side, range(counters_1, 1691, 16, 48, 48), "this.byteCounter").
expr(counters_1_expr4, this_expression, f_byte_counter_351, expression, range(counters_1, 1691, 4, 48, 48), "this").
expr(counters_1_expr7, this_expression, f_directory_counter_352, expression, range(counters_1, 1735, 4, 49, 49), "this").
expr(counters_1_expr5, assignment, counters_1_stmt3, expression, range(counters_1, 1735, 40, 49, 49), "this.directoryCounter=directoryCounter").
expr(counters_1_expr6, field_access, counters_1_expr5, left_hand_side, range(counters_1, 1735, 21, 49, 49), "this.directoryCounter").
expr(counters_1_expr9, field_access, counters_1_expr8, left_hand_side, range(counters_1, 1789, 16, 50, 50), "this.fileCounter").
expr(counters_1_expr8, assignment, counters_1_stmt4, expression, range(counters_1, 1789, 30, 50, 50), "this.fileCounter=fileCounter").
expr(counters_1_expr10, this_expression, f_file_counter_353, expression, range(counters_1, 1789, 4, 50, 50), "this").
expr(counters_1_expr12, this_expression, f_file_counter_353, expression, range(counters_1, 2258, 4, 70, 70), "this").
expr(counters_1_expr11, field_access, counters_1_stmt6, expression, range(counters_1, 2258, 16, 70, 70), "this.fileCounter").
expr(counters_1_expr13, assignment, counters_1_stmt7, expression, range(counters_1, 4809, 12, 183, 183), "value+=add").
expr(counters_1_expr14, postfix_expression, counters_1_stmt9, expression, range(counters_1, 5202, 7, 204, 204), "value++").
expr(counters_1_expr15, super_constructor_invocation, counters_1_block7, (statements, 0), range(counters_1, 5634, 78, 222, 222), "super(Counters.longCounter(),Counters.longCounter(),Counters.longCounter());").
expr(counters_1_expr16, method_invocation, counters_1_stmt10, (arguments, 0), range(counters_1, 5640, 22, 222, 222), "Counters.longCounter()").
expr(counters_1_expr17, method_invocation, counters_1_stmt10, (arguments, 1), range(counters_1, 5664, 22, 222, 222), "Counters.longCounter()").
expr(counters_1_expr18, method_invocation, counters_1_stmt10, (arguments, 2), range(counters_1, 5688, 22, 222, 222), "Counters.longCounter()").
expr(counters_1_expr19, class_instance_creation, counters_1_stmt11, expression, range(counters_1, 6870, 17, 279, 279), "new LongCounter()").
expr(counters_1_expr20, class_instance_creation, counters_1_stmt12, expression, range(counters_1, 7078, 22, 288, 288), "new LongPathCounters()").

%%% Names
%path_utils_1 - org.apache.commons.io.file.PathUtils
name(t_files_3, simple_name, path_utils_1_expr2, expression, range(path_utils_1, 4386, 5, 110, 110), 'Files').
name(m_is_directory_353, simple_name, path_utils_1_expr2, name, range(path_utils_1, 4392, 11, 110, 110), 'isDirectory').
name(p_path_366, simple_name, path_utils_1_expr2, (arguments, 0), range(path_utils_1, 4404, 4, 110, 110), 'path').
name(m_delete_directory_354, simple_name, path_utils_1_expr3, name, range(path_utils_1, 4412, 15, 110, 110), 'deleteDirectory').
name(p_path_366, simple_name, path_utils_1_expr3, (arguments, 0), range(path_utils_1, 4428, 4, 110, 110), 'path').
name(m_delete_file_355, simple_name, path_utils_1_expr4, name, range(path_utils_1, 4436, 10, 110, 110), 'deleteFile').
name(p_path_366, simple_name, path_utils_1_expr4, (arguments, 0), range(path_utils_1, 4447, 4, 110, 110), 'path').
name(t_files_3, simple_name, path_utils_1_expr5, expression, range(path_utils_1, 5323, 5, 133, 133), 'Files').
name(m_is_directory_353, simple_name, path_utils_1_expr5, name, range(path_utils_1, 5329, 11, 133, 133), 'isDirectory').
name(p_file_368, simple_name, path_utils_1_expr5, (arguments, 0), range(path_utils_1, 5341, 4, 133, 133), 'file').
name(v_path_counts_369, simple_name, path_utils_1_code7, name, range(path_utils_1, 5449, 10, 136, 136), 'pathCounts').
name(t_counters_7, simple_name, path_utils_1_expr6, expression, range(path_utils_1, 5462, 8, 136, 136), 'Counters').
name(m_long_path_counters_348, simple_name, path_utils_1_expr6, name, range(path_utils_1, 5471, 16, 136, 136), 'longPathCounters').
name(v_size_370, simple_name, path_utils_1_code10, name, range(path_utils_1, 5510, 4, 137, 137), 'size').
name(t_files_3, simple_name, path_utils_1_expr8, expression, range(path_utils_1, 5517, 5, 137, 137), 'Files').
name(m_exists_356, simple_name, path_utils_1_expr8, name, range(path_utils_1, 5523, 6, 137, 137), 'exists').
name(p_file_368, simple_name, path_utils_1_expr8, (arguments, 0), range(path_utils_1, 5530, 4, 137, 137), 'file').
name(t_files_3, simple_name, path_utils_1_expr9, expression, range(path_utils_1, 5538, 5, 137, 137), 'Files').
name(m_size_357, simple_name, path_utils_1_expr9, name, range(path_utils_1, 5544, 4, 137, 137), 'size').
name(p_file_368, simple_name, path_utils_1_expr9, (arguments, 0), range(path_utils_1, 5549, 4, 137, 137), 'file').
name(t_files_3, simple_name, path_utils_1_expr10, expression, range(path_utils_1, 5572, 5, 138, 138), 'Files').
name(m_delete_if_exists_358, simple_name, path_utils_1_expr10, name, range(path_utils_1, 5578, 14, 138, 138), 'deleteIfExists').
name(p_file_368, simple_name, path_utils_1_expr10, (arguments, 0), range(path_utils_1, 5593, 4, 138, 138), 'file').
name(v_path_counts_369, simple_name, path_utils_1_expr12, expression, range(path_utils_1, 5614, 10, 139, 139), 'pathCounts').
name(m_get_file_counter_66, simple_name, path_utils_1_expr12, name, range(path_utils_1, 5625, 14, 139, 139), 'getFileCounter').
name(m_increment_335, simple_name, path_utils_1_expr11, name, range(path_utils_1, 5642, 9, 139, 139), 'increment').
name(v_path_counts_369, simple_name, path_utils_1_expr14, expression, range(path_utils_1, 5667, 10, 140, 140), 'pathCounts').
name(m_get_byte_counter_344, simple_name, path_utils_1_expr14, name, range(path_utils_1, 5678, 14, 140, 140), 'getByteCounter').
name(m_add_332, simple_name, path_utils_1_expr13, name, range(path_utils_1, 5695, 3, 140, 140), 'add').
name(v_size_370, simple_name, path_utils_1_expr13, (arguments, 0), range(path_utils_1, 5699, 4, 140, 140), 'size').
name(v_path_counts_369, simple_name, path_utils_1_stmt8, expression, range(path_utils_1, 5731, 10, 142, 142), 'pathCounts').
%file_utils_1 - org.apache.commons.io.FileUtils
name(f_one_kb_bi_48, simple_name, file_utils_1_code8, name, range(file_utils_1, 3224, 9, 96, 96), 'ONE_KB_BI').
name(t_big_integer_1, simple_name, file_utils_1_expr1, expression, range(file_utils_1, 3236, 10, 96, 96), 'BigInteger').
name(m_value_of_21, simple_name, file_utils_1_expr1, name, range(file_utils_1, 3247, 7, 96, 96), 'valueOf').
name(f_one_kb_49, simple_name, file_utils_1_expr1, (arguments, 0), range(file_utils_1, 3255, 6, 96, 96), 'ONE_KB').
name(f_one_mb_bi_50, simple_name, file_utils_1_code14, name, range(file_utils_1, 3497, 9, 108, 108), 'ONE_MB_BI').
name(f_one_kb_bi_48, simple_name, file_utils_1_expr2, expression, range(file_utils_1, 3509, 9, 108, 108), 'ONE_KB_BI').
name(m_multiply_22, simple_name, file_utils_1_expr2, name, range(file_utils_1, 3519, 8, 108, 108), 'multiply').
name(f_one_kb_bi_48, simple_name, file_utils_1_expr2, (arguments, 0), range(file_utils_1, 3528, 9, 108, 108), 'ONE_KB_BI').
name(f_one_gb_bi_51, simple_name, file_utils_1_code20, name, range(file_utils_1, 3773, 9, 120, 120), 'ONE_GB_BI').
name(f_one_kb_bi_48, simple_name, file_utils_1_expr3, expression, range(file_utils_1, 3785, 9, 120, 120), 'ONE_KB_BI').
name(m_multiply_22, simple_name, file_utils_1_expr3, name, range(file_utils_1, 3795, 8, 120, 120), 'multiply').
name(f_one_mb_bi_50, simple_name, file_utils_1_expr3, (arguments, 0), range(file_utils_1, 3804, 9, 120, 120), 'ONE_MB_BI').
name(f_one_tb_bi_52, simple_name, file_utils_1_code26, name, range(file_utils_1, 4049, 9, 132, 132), 'ONE_TB_BI').
name(f_one_kb_bi_48, simple_name, file_utils_1_expr4, expression, range(file_utils_1, 4061, 9, 132, 132), 'ONE_KB_BI').
name(m_multiply_22, simple_name, file_utils_1_expr4, name, range(file_utils_1, 4071, 8, 132, 132), 'multiply').
name(f_one_gb_bi_51, simple_name, file_utils_1_expr4, (arguments, 0), range(file_utils_1, 4080, 9, 132, 132), 'ONE_GB_BI').
name(f_one_pb_bi_53, simple_name, file_utils_1_code32, name, range(file_utils_1, 4325, 9, 144, 144), 'ONE_PB_BI').
name(f_one_kb_bi_48, simple_name, file_utils_1_expr5, expression, range(file_utils_1, 4337, 9, 144, 144), 'ONE_KB_BI').
name(m_multiply_22, simple_name, file_utils_1_expr5, name, range(file_utils_1, 4347, 8, 144, 144), 'multiply').
name(f_one_tb_bi_52, simple_name, file_utils_1_expr5, (arguments, 0), range(file_utils_1, 4356, 9, 144, 144), 'ONE_TB_BI').
name(f_one_eb_bi_54, simple_name, file_utils_1_code38, name, range(file_utils_1, 4601, 9, 156, 156), 'ONE_EB_BI').
name(f_one_kb_bi_48, simple_name, file_utils_1_expr6, expression, range(file_utils_1, 4613, 9, 156, 156), 'ONE_KB_BI').
name(m_multiply_22, simple_name, file_utils_1_expr6, name, range(file_utils_1, 4623, 8, 156, 156), 'multiply').
name(f_one_pb_bi_53, simple_name, file_utils_1_expr6, (arguments, 0), range(file_utils_1, 4632, 9, 156, 156), 'ONE_PB_BI').
name(f_one_zb_55, simple_name, file_utils_1_code44, name, range(file_utils_1, 4739, 6, 161, 161), 'ONE_ZB').
name(t_big_integer_1, simple_name, file_utils_1_expr9, expression, range(file_utils_1, 4748, 10, 161, 161), 'BigInteger').
name(m_value_of_21, simple_name, file_utils_1_expr9, name, range(file_utils_1, 4759, 7, 161, 161), 'valueOf').
name(f_one_kb_49, simple_name, file_utils_1_expr9, (arguments, 0), range(file_utils_1, 4767, 6, 161, 161), 'ONE_KB').
name(m_multiply_22, simple_name, file_utils_1_expr7, name, range(file_utils_1, 4775, 8, 161, 161), 'multiply').
name(t_big_integer_1, simple_name, file_utils_1_expr8, expression, range(file_utils_1, 4784, 10, 161, 161), 'BigInteger').
name(m_value_of_21, simple_name, file_utils_1_expr8, name, range(file_utils_1, 4795, 7, 161, 161), 'valueOf').
name(f_one_eb_56, simple_name, file_utils_1_expr8, (arguments, 0), range(file_utils_1, 4803, 6, 161, 161), 'ONE_EB').
name(f_one_yb_57, simple_name, file_utils_1_code50, name, range(file_utils_1, 4908, 6, 166, 166), 'ONE_YB').
name(f_one_kb_bi_48, simple_name, file_utils_1_expr10, expression, range(file_utils_1, 4917, 9, 166, 166), 'ONE_KB_BI').
name(m_multiply_22, simple_name, file_utils_1_expr10, name, range(file_utils_1, 4927, 8, 166, 166), 'multiply').
name(f_one_zb_55, simple_name, file_utils_1_expr10, (arguments, 0), range(file_utils_1, 4936, 6, 166, 166), 'ONE_ZB').
name(f_empty_file_array_58, simple_name, file_utils_1_code58, name, range(file_utils_1, 5042, 16, 171, 171), 'EMPTY_FILE_ARRAY').
name(v_files_72, simple_name, file_utils_1_code67, name, range(file_utils_1, 12133, 5, 332, 332), 'files').
name(m_verified_list_files_31, simple_name, file_utils_1_expr12, name, range(file_utils_1, 12141, 17, 332, 332), 'verifiedListFiles').
name(p_directory_71, simple_name, file_utils_1_expr12, (arguments, 0), range(file_utils_1, 12159, 9, 332, 332), 'directory').
name(v_exception_73, simple_name, file_utils_1_code69, name, range(file_utils_1, 12192, 9, 334, 334), 'exception').
name(v_file_74, simple_name, file_utils_1_code70, name, range(file_utils_1, 12234, 4, 335, 335), 'file').
name(v_files_72, simple_name, file_utils_1_stmt3, expression, range(file_utils_1, 12241, 5, 335, 335), 'files').
name(m_force_delete_32, simple_name, file_utils_1_expr13, name, range(file_utils_1, 12284, 11, 337, 337), 'forceDelete').
name(v_file_74, simple_name, file_utils_1_expr13, (arguments, 0), range(file_utils_1, 12296, 4, 337, 337), 'file').
name(v_exception_73, simple_name, file_utils_1_expr14, right_operand, range(file_utils_1, 12427, 9, 343, 343), 'exception').
name(v_file_1exists_78, simple_name, file_utils_1_code77, name, range(file_utils_1, 14016, 11, 391, 391), 'file1Exists').
name(p_file_1_76, simple_name, file_utils_1_expr15, expression, range(file_utils_1, 14030, 5, 391, 391), 'file1').
name(m_exists_35, simple_name, file_utils_1_expr15, name, range(file_utils_1, 14036, 6, 391, 391), 'exists').
name(p_directory_124, simple_name, file_utils_1_expr17, expression, range(file_utils_1, 48321, 9, 1116, 1116), 'directory').
name(m_exists_35, simple_name, file_utils_1_expr17, name, range(file_utils_1, 48331, 6, 1116, 1116), 'exists').
name(m_is_symlink_56, simple_name, file_utils_1_expr19, name, range(file_utils_1, 48387, 9, 1120, 1120), 'isSymlink').
name(p_directory_124, simple_name, file_utils_1_expr19, (arguments, 0), range(file_utils_1, 48397, 9, 1120, 1120), 'directory').
name(m_clean_directory_30, simple_name, file_utils_1_expr20, name, range(file_utils_1, 48423, 14, 1121, 1121), 'cleanDirectory').
name(p_directory_124, simple_name, file_utils_1_expr20, (arguments, 0), range(file_utils_1, 48438, 9, 1121, 1121), 'directory').
name(p_directory_124, simple_name, file_utils_1_expr22, expression, range(file_utils_1, 48474, 9, 1124, 1124), 'directory').
name(m_delete_57, simple_name, file_utils_1_expr22, name, range(file_utils_1, 48484, 6, 1124, 1124), 'delete').
name(v_delete_counters_138, simple_name, file_utils_1_expr23, left_hand_side, range(file_utils_1, 57396, 14, 1336, 1336), 'deleteCounters').
name(t_path_utils_2, simple_name, file_utils_1_expr24, expression, range(file_utils_1, 57413, 9, 1336, 1336), 'PathUtils').
name(m_delete_63, simple_name, file_utils_1_expr24, name, range(file_utils_1, 57423, 6, 1336, 1336), 'delete').
name(p_file_137, simple_name, file_utils_1_expr25, expression, range(file_utils_1, 57430, 4, 1336, 1336), 'file').
name(m_to_path_64, simple_name, file_utils_1_expr25, name, range(file_utils_1, 57435, 6, 1336, 1336), 'toPath').
name(v_delete_counters_138, simple_name, file_utils_1_expr29, expression, range(file_utils_1, 57575, 14, 1341, 1341), 'deleteCounters').
name(m_get_file_counter_66, simple_name, file_utils_1_expr29, name, range(file_utils_1, 57590, 14, 1341, 1341), 'getFileCounter').
name(m_get_65, simple_name, file_utils_1_expr28, name, range(file_utils_1, 57607, 3, 1341, 1341), 'get').
name(v_delete_counters_138, simple_name, file_utils_1_expr32, expression, range(file_utils_1, 57620, 14, 1341, 1341), 'deleteCounters').
name(m_get_directory_counter_67, simple_name, file_utils_1_expr32, name, range(file_utils_1, 57635, 19, 1341, 1341), 'getDirectoryCounter').
name(m_get_65, simple_name, file_utils_1_expr31, name, range(file_utils_1, 57657, 3, 1341, 1341), 'get').
name(p_file_165, simple_name, file_utils_1_expr33, left_operand, range(file_utils_1, 72650, 4, 1720, 1720), 'file').
name(t_files_3, simple_name, file_utils_1_expr34, expression, range(file_utils_1, 72760, 5, 1723, 1723), 'Files').
name(m_is_symbolic_link_85, simple_name, file_utils_1_expr34, name, range(file_utils_1, 72766, 14, 1723, 1723), 'isSymbolicLink').
name(p_file_165, simple_name, file_utils_1_expr35, expression, range(file_utils_1, 72781, 4, 1723, 1723), 'file').
name(m_to_path_64, simple_name, file_utils_1_expr35, name, range(file_utils_1, 72786, 6, 1723, 1723), 'toPath').
name(p_directory_234, simple_name, file_utils_1_expr37, expression, range(file_utils_1, 112715, 9, 2676, 2676), 'directory').
name(m_exists_35, simple_name, file_utils_1_expr37, name, range(file_utils_1, 112725, 6, 2676, 2676), 'exists').
name(p_directory_234, simple_name, file_utils_1_expr39, expression, range(file_utils_1, 112884, 9, 2681, 2681), 'directory').
name(m_is_directory_126, simple_name, file_utils_1_expr39, name, range(file_utils_1, 112894, 11, 2681, 2681), 'isDirectory').
name(v_files_235, simple_name, file_utils_1_code87, name, range(file_utils_1, 113070, 5, 2686, 2686), 'files').
name(p_directory_234, simple_name, file_utils_1_expr40, expression, range(file_utils_1, 113078, 9, 2686, 2686), 'directory').
name(m_list_files_127, simple_name, file_utils_1_expr40, name, range(file_utils_1, 113088, 9, 2686, 2686), 'listFiles').
name(v_files_235, simple_name, file_utils_1_expr41, left_operand, range(file_utils_1, 113113, 5, 2687, 2687), 'files').
name(v_files_235, simple_name, file_utils_1_stmt21, expression, range(file_utils_1, 113265, 5, 2690, 2690), 'files').
%test_utils_1 - org.apache.commons.io.testtools.TestUtils
name(v_i_386, simple_name, test_utils_1_code5, name, range(test_utils_1, 2608, 1, 73, 73), 'i').
name(v_i_386, simple_name, test_utils_1_expr2, left_operand, range(test_utils_1, 2615, 1, 73, 73), 'i').
name(p_size_385, simple_name, test_utils_1_expr2, right_operand, range(test_utils_1, 2619, 4, 73, 73), 'size').
name(v_i_386, simple_name, test_utils_1_expr3, operand, range(test_utils_1, 2625, 1, 73, 73), 'i').
%directory_walker_1 - org.apache.commons.io.DirectoryWalker
name(m_directory_walker_2, simple_name, directory_walker_1_code4, name, range(directory_walker_1, 10604, 15, 299, 299), 'DirectoryWalker').
name(p_filter_1, simple_name, directory_walker_1_code6, name, range(directory_walker_1, 10637, 6, 299, 299), 'filter').
name(p_depth_limit_2, simple_name, directory_walker_1_code9, name, range(directory_walker_1, 10655, 10, 299, 299), 'depthLimit').
name(f_filter_3, simple_name, directory_walker_1_expr4, name, range(directory_walker_1, 10682, 6, 300, 300), 'filter').
name(p_filter_1, simple_name, directory_walker_1_expr3, right_hand_side, range(directory_walker_1, 10691, 6, 300, 300), 'filter').
name(f_depth_limit_4, simple_name, directory_walker_1_expr7, name, range(directory_walker_1, 10712, 10, 301, 301), 'depthLimit').
name(p_depth_limit_2, simple_name, directory_walker_1_expr6, right_hand_side, range(directory_walker_1, 10725, 10, 301, 301), 'depthLimit').
%file_utils_test_case_1 - org.apache.commons.io.FileUtilsTestCase
name(t_file_utils_test_case_4, simple_name, file_utils_test_case_1_code2, name, range(file_utils_test_case_1, 2579, 17, 67, 67), 'FileUtilsTestCase').
name(f_test_directory_size_bi_318, simple_name, file_utils_test_case_1_code9, name, range(file_utils_test_case_1, 2850, 22, 82, 82), 'TEST_DIRECTORY_SIZE_BI').
name(t_big_integer_1, simple_name, q_zero_1, qualifier, range(file_utils_test_case_1, 2875, 10, 82, 82), 'BigInteger').
name(q_zero_1, qualified_name, file_utils_test_case_1_code9, initializer, range(file_utils_test_case_1, 2875, 15, 82, 82), 'BigInteger.ZERO').
name(f_test_directory_size_gt_zero_bi_319, simple_name, file_utils_test_case_1_code15, name, range(file_utils_test_case_1, 2989, 30, 87, 87), 'TEST_DIRECTORY_SIZE_GT_ZERO_BI').
name(t_big_integer_1, simple_name, file_utils_test_case_1_expr1, expression, range(file_utils_test_case_1, 3022, 10, 87, 87), 'BigInteger').
name(m_value_of_21, simple_name, file_utils_test_case_1_expr1, name, range(file_utils_test_case_1, 3033, 7, 87, 87), 'valueOf').
name(f_list_walker_320, simple_name, file_utils_test_case_1_code21, name, range(file_utils_test_case_1, 3139, 11, 92, 92), 'LIST_WALKER').
name(f_test_file1_321, simple_name, file_utils_test_case_1_expr3, left_hand_side, range(file_utils_test_case_1, 3528, 9, 107, 107), 'testFile1').
name(f_temporary_folder_322, simple_name, file_utils_test_case_1_expr4, (arguments, 0), range(file_utils_test_case_1, 3549, 15, 107, 107), 'temporaryFolder').
name(f_test_file2_323, simple_name, file_utils_test_case_1_expr5, left_hand_side, range(file_utils_test_case_1, 3593, 9, 108, 108), 'testFile2').
name(f_temporary_folder_322, simple_name, file_utils_test_case_1_expr6, (arguments, 0), range(file_utils_test_case_1, 3614, 15, 108, 108), 'temporaryFolder').
name(f_test_file1_size_324, simple_name, file_utils_test_case_1_expr7, left_hand_side, range(file_utils_test_case_1, 3660, 13, 110, 110), 'testFile1Size').
name(f_test_file1_321, simple_name, file_utils_test_case_1_expr9, expression, range(file_utils_test_case_1, 3682, 9, 110, 110), 'testFile1').
name(m_length_157, simple_name, file_utils_test_case_1_expr9, name, range(file_utils_test_case_1, 3692, 6, 110, 110), 'length').
name(f_test_file2_size_325, simple_name, file_utils_test_case_1_expr10, left_hand_side, range(file_utils_test_case_1, 3710, 13, 111, 111), 'testFile2Size').
name(f_test_file2_323, simple_name, file_utils_test_case_1_expr12, expression, range(file_utils_test_case_1, 3732, 9, 111, 111), 'testFile2').
name(m_length_157, simple_name, file_utils_test_case_1_expr12, name, range(file_utils_test_case_1, 3742, 6, 111, 111), 'length').
name(f_test_file1_321, simple_name, file_utils_test_case_1_expr15, expression, range(file_utils_test_case_1, 3765, 9, 112, 112), 'testFile1').
name(m_get_parent_file_158, simple_name, file_utils_test_case_1_expr15, name, range(file_utils_test_case_1, 3775, 13, 112, 112), 'getParentFile').
name(m_exists_35, simple_name, file_utils_test_case_1_expr14, name, range(file_utils_test_case_1, 3791, 6, 112, 112), 'exists').
name(v_output_3_326, simple_name, file_utils_test_case_1_code30, name, range(file_utils_test_case_1, 3987, 7, 116, 116), 'output3').
name(t_test_utils_5, simple_name, file_utils_test_case_1_expr18, expression, range(file_utils_test_case_1, 4086, 9, 118, 118), 'TestUtils').
name(m_generate_test_data_159, simple_name, file_utils_test_case_1_expr18, name, range(file_utils_test_case_1, 4096, 16, 118, 118), 'generateTestData').
name(v_output_3_326, simple_name, file_utils_test_case_1_expr18, (arguments, 0), range(file_utils_test_case_1, 4113, 7, 118, 118), 'output3').
name(f_test_file1_size_324, simple_name, file_utils_test_case_1_expr18, (arguments, 1), range(file_utils_test_case_1, 4122, 13, 118, 118), 'testFile1Size').
name(f_test_file2_323, simple_name, file_utils_test_case_1_expr21, expression, range(file_utils_test_case_1, 4161, 9, 120, 120), 'testFile2').
name(m_get_parent_file_158, simple_name, file_utils_test_case_1_expr21, name, range(file_utils_test_case_1, 4171, 13, 120, 120), 'getParentFile').
name(m_exists_35, simple_name, file_utils_test_case_1_expr20, name, range(file_utils_test_case_1, 4187, 6, 120, 120), 'exists').
name(v_output_2_327, simple_name, file_utils_test_case_1_code33, name, range(file_utils_test_case_1, 4383, 7, 124, 124), 'output2').
name(t_test_utils_5, simple_name, file_utils_test_case_1_expr24, expression, range(file_utils_test_case_1, 4482, 9, 126, 126), 'TestUtils').
name(m_generate_test_data_159, simple_name, file_utils_test_case_1_expr24, name, range(file_utils_test_case_1, 4492, 16, 126, 126), 'generateTestData').
name(v_output_2_327, simple_name, file_utils_test_case_1_expr24, (arguments, 0), range(file_utils_test_case_1, 4509, 7, 126, 126), 'output2').
name(f_test_file2_size_325, simple_name, file_utils_test_case_1_expr24, (arguments, 1), range(file_utils_test_case_1, 4518, 13, 126, 126), 'testFile2Size').
name(t_file_utils_6, simple_name, file_utils_test_case_1_expr25, expression, range(file_utils_test_case_1, 4552, 9, 128, 128), 'FileUtils').
name(m_delete_directory_55, simple_name, file_utils_test_case_1_expr25, name, range(file_utils_test_case_1, 4562, 15, 128, 128), 'deleteDirectory').
name(f_temporary_folder_322, simple_name, file_utils_test_case_1_expr25, (arguments, 0), range(file_utils_test_case_1, 4578, 15, 128, 128), 'temporaryFolder').
name(f_temporary_folder_322, simple_name, file_utils_test_case_1_expr26, expression, range(file_utils_test_case_1, 4604, 15, 129, 129), 'temporaryFolder').
name(m_mkdirs_160, simple_name, file_utils_test_case_1_expr26, name, range(file_utils_test_case_1, 4620, 6, 129, 129), 'mkdirs').
name(f_test_file1_321, simple_name, file_utils_test_case_1_expr29, expression, range(file_utils_test_case_1, 4643, 9, 130, 130), 'testFile1').
name(m_get_parent_file_158, simple_name, file_utils_test_case_1_expr29, name, range(file_utils_test_case_1, 4653, 13, 130, 130), 'getParentFile').
name(m_exists_35, simple_name, file_utils_test_case_1_expr28, name, range(file_utils_test_case_1, 4669, 6, 130, 130), 'exists').
name(v_output_1_328, simple_name, file_utils_test_case_1_code36, name, range(file_utils_test_case_1, 4865, 7, 134, 134), 'output1').
name(t_test_utils_5, simple_name, file_utils_test_case_1_expr32, expression, range(file_utils_test_case_1, 4964, 9, 136, 136), 'TestUtils').
name(m_generate_test_data_159, simple_name, file_utils_test_case_1_expr32, name, range(file_utils_test_case_1, 4974, 16, 136, 136), 'generateTestData').
name(v_output_1_328, simple_name, file_utils_test_case_1_expr32, (arguments, 0), range(file_utils_test_case_1, 4991, 7, 136, 136), 'output1').
name(f_test_file1_size_324, simple_name, file_utils_test_case_1_expr32, (arguments, 1), range(file_utils_test_case_1, 5000, 13, 136, 136), 'testFile1Size').
name(f_test_file2_323, simple_name, file_utils_test_case_1_expr35, expression, range(file_utils_test_case_1, 5039, 9, 138, 138), 'testFile2').
name(m_get_parent_file_158, simple_name, file_utils_test_case_1_expr35, name, range(file_utils_test_case_1, 5049, 13, 138, 138), 'getParentFile').
name(m_exists_35, simple_name, file_utils_test_case_1_expr34, name, range(file_utils_test_case_1, 5065, 6, 138, 138), 'exists').
name(v_output_329, simple_name, file_utils_test_case_1_code39, name, range(file_utils_test_case_1, 5261, 6, 142, 142), 'output').
name(t_test_utils_5, simple_name, file_utils_test_case_1_expr38, expression, range(file_utils_test_case_1, 5359, 9, 144, 144), 'TestUtils').
name(m_generate_test_data_159, simple_name, file_utils_test_case_1_expr38, name, range(file_utils_test_case_1, 5369, 16, 144, 144), 'generateTestData').
name(v_output_329, simple_name, file_utils_test_case_1_expr38, (arguments, 0), range(file_utils_test_case_1, 5386, 6, 144, 144), 'output').
name(f_test_file2_size_325, simple_name, file_utils_test_case_1_expr38, (arguments, 1), range(file_utils_test_case_1, 5394, 13, 144, 144), 'testFile2Size').
name(m_get_class_163, simple_name, file_utils_test_case_1_expr40, name, range(file_utils_test_case_1, 5478, 8, 149, 149), 'getClass').
name(m_get_simple_name_162, simple_name, file_utils_test_case_1_expr39, name, range(file_utils_test_case_1, 5489, 13, 149, 149), 'getSimpleName').
name(v_file_331, simple_name, file_utils_test_case_1_code44, name, range(file_utils_test_case_1, 22432, 4, 572, 572), 'file').
name(f_temporary_folder_322, simple_name, file_utils_test_case_1_expr42, (arguments, 0), range(file_utils_test_case_1, 22448, 15, 572, 572), 'temporaryFolder').
name(m_get_name_161, simple_name, file_utils_test_case_1_expr43, name, range(file_utils_test_case_1, 22465, 7, 572, 572), 'getName').
name(v_file_2_332, simple_name, file_utils_test_case_1_code48, name, range(file_utils_test_case_1, 22496, 5, 573, 573), 'file2').
name(f_temporary_folder_322, simple_name, file_utils_test_case_1_expr44, (arguments, 0), range(file_utils_test_case_1, 22513, 15, 573, 573), 'temporaryFolder').
name(m_get_name_161, simple_name, file_utils_test_case_1_expr46, name, range(file_utils_test_case_1, 22530, 7, 573, 573), 'getName').
name(m_assert_true_200, simple_name, file_utils_test_case_1_expr47, name, range(file_utils_test_case_1, 22556, 10, 574, 574), 'assertTrue').
name(t_file_utils_6, simple_name, file_utils_test_case_1_expr48, expression, range(file_utils_test_case_1, 22567, 9, 574, 574), 'FileUtils').
name(m_content_equals_34, simple_name, file_utils_test_case_1_expr48, name, range(file_utils_test_case_1, 22577, 13, 574, 574), 'contentEquals').
%counters_1 - org.apache.commons.io.file.Counters
name(f_byte_counter_351, simple_name, counters_1_expr3, name, range(counters_1, 1696, 11, 48, 48), 'byteCounter').
name(p_byte_counter_348, simple_name, counters_1_expr2, right_hand_side, range(counters_1, 1710, 11, 48, 48), 'byteCounter').
name(f_directory_counter_352, simple_name, counters_1_expr6, name, range(counters_1, 1740, 16, 49, 49), 'directoryCounter').
name(p_directory_counter_349, simple_name, counters_1_expr5, right_hand_side, range(counters_1, 1759, 16, 49, 49), 'directoryCounter').
name(f_file_counter_353, simple_name, counters_1_expr9, name, range(counters_1, 1794, 11, 50, 50), 'fileCounter').
name(p_file_counter_350, simple_name, counters_1_expr8, right_hand_side, range(counters_1, 1808, 11, 50, 50), 'fileCounter').
name(f_byte_counter_351, simple_name, counters_1_stmt5, expression, range(counters_1, 1911, 11, 55, 55), 'byteCounter').
name(f_file_counter_353, simple_name, counters_1_expr11, name, range(counters_1, 2263, 11, 70, 70), 'fileCounter').
name(f_value_357, simple_name, counters_1_expr13, left_hand_side, range(counters_1, 4809, 5, 183, 183), 'value').
name(p_add_356, simple_name, counters_1_expr13, right_hand_side, range(counters_1, 4818, 3, 183, 183), 'add').
name(f_value_357, simple_name, counters_1_stmt8, expression, range(counters_1, 4900, 5, 189, 189), 'value').
name(f_value_357, simple_name, counters_1_expr14, operand, range(counters_1, 5202, 5, 204, 204), 'value').
name(t_counters_7, simple_name, counters_1_expr16, expression, range(counters_1, 5640, 8, 222, 222), 'Counters').
name(m_long_counter_343, simple_name, counters_1_expr16, name, range(counters_1, 5649, 11, 222, 222), 'longCounter').
name(t_counters_7, simple_name, counters_1_expr17, expression, range(counters_1, 5664, 8, 222, 222), 'Counters').
name(m_long_counter_343, simple_name, counters_1_expr17, name, range(counters_1, 5673, 11, 222, 222), 'longCounter').
name(t_counters_7, simple_name, counters_1_expr18, expression, range(counters_1, 5688, 8, 222, 222), 'Counters').
name(m_long_counter_343, simple_name, counters_1_expr18, name, range(counters_1, 5697, 11, 222, 222), 'longCounter').

%%% Literals
%path_utils_1 - org.apache.commons.io.file.PathUtils
literal(path_utils_1_literal1, number_literal, path_utils_1_expr7, else_expression, range(path_utils_1, 5557, 1, 137, 137), 0).
%file_utils_1 - org.apache.commons.io.FileUtils
literal(file_utils_1_literal1, number_literal, file_utils_1_expr11, (dimensions, 0), range(file_utils_1, 5070, 1, 171, 171), 0).
literal(file_utils_1_literal2, null_literal, file_utils_1_code69, initializer, range(file_utils_1, 12204, 4, 334, 334), null).
literal(file_utils_1_literal3, null_literal, file_utils_1_expr14, left_operand, range(file_utils_1, 12419, 4, 343, 343), null).
literal(file_utils_1_literal4, number_literal, file_utils_1_expr27, right_operand, range(file_utils_1, 57615, 1, 1341, 1341), 1).
literal(file_utils_1_literal5, number_literal, file_utils_1_expr30, right_operand, range(file_utils_1, 57665, 1, 1341, 1341), 1).
literal(file_utils_1_literal6, null_literal, file_utils_1_expr33, right_operand, range(file_utils_1, 72658, 4, 1720, 1720), null).
literal(file_utils_1_literal7, null_literal, file_utils_1_expr41, right_operand, range(file_utils_1, 113122, 4, 2687, 2687), null).
%test_utils_1 - org.apache.commons.io.testtools.TestUtils
literal(test_utils_1_literal1, number_literal, test_utils_1_code5, initializer, range(test_utils_1, 2612, 1, 73, 73), 0).
%directory_walker_1 - org.apache.commons.io.DirectoryWalker
literal(directory_walker_1_literal1, null_literal, directory_walker_1_stmt1, (arguments, 0), range(directory_walker_1, 9944, 4, 283, 283), null).
literal(directory_walker_1_literal2, number_literal, directory_walker_1_expr2, operand, range(directory_walker_1, 9951, 1, 283, 283), 1).
%file_utils_test_case_1 - org.apache.commons.io.FileUtilsTestCase
literal(file_utils_test_case_1_literal1, number_literal, file_utils_test_case_1_expr1, (arguments, 0), range(file_utils_test_case_1, 3041, 3, 87, 87), 100).
literal(file_utils_test_case_1_literal2, string_literal, file_utils_test_case_1_expr4, (arguments, 1), range(file_utils_test_case_1, 3566, 16, 107, 107), "file1-test.txt").
literal(file_utils_test_case_1_literal3, string_literal, file_utils_test_case_1_expr6, (arguments, 1), range(file_utils_test_case_1, 3631, 17, 108, 108), "file1a-test.txt").
literal(file_utils_test_case_1_literal4, string_literal, file_utils_test_case_1_expr45, right_operand, range(file_utils_test_case_1, 22542, 3, 573, 573), "2").
literal(file_utils_test_case_1_literal5, null_literal, file_utils_test_case_1_expr48, (arguments, 0), range(file_utils_test_case_1, 22591, 4, 574, 574), null).
literal(file_utils_test_case_1_literal6, null_literal, file_utils_test_case_1_expr48, (arguments, 1), range(file_utils_test_case_1, 22597, 4, 574, 574), null).
%counters_1 - org.apache.commons.io.file.Counters

%%% Other Code Entities
%path_utils_1 - org.apache.commons.io.file.PathUtils
code(path_utils_1_code1, compilation_unit, range(path_utils_1, 0, 9459, 1, -1)).
code(path_utils_1_code2, type_declaration, path_utils_1_code1, (types, 0), range(path_utils_1, 1181, 8277, 32, 244)).
code(path_utils_1_code3, method_declaration, path_utils_1_code2, (body_declarations, 4), range(path_utils_1, 3564, 895, 93, 111)).
code(path_utils_1_code4, method_declaration, path_utils_1_code2, (body_declarations, 6), range(path_utils_1, 4920, 828, 124, 143)).
code(path_utils_1_code5, modifier, path_utils_1_stmt3, (modifiers, 0), range(path_utils_1, 5430, 5, 136, 136)).
code(path_utils_1_code6, simple_type, path_utils_1_stmt3, type, range(path_utils_1, 5436, 12, 136, 136)).
code(path_utils_1_code7, variable_declaration_fragment, path_utils_1_stmt3, (fragments, 0), range(path_utils_1, 5449, 40, 136, 136)).
code(path_utils_1_code8, modifier, path_utils_1_stmt4, (modifiers, 0), range(path_utils_1, 5499, 5, 137, 137)).
code(path_utils_1_code9, primitive_type, path_utils_1_stmt4, type, range(path_utils_1, 5505, 4, 137, 137)).
code(path_utils_1_code10, variable_declaration_fragment, path_utils_1_stmt4, (fragments, 0), range(path_utils_1, 5510, 48, 137, 137)).
%file_utils_1 - org.apache.commons.io.FileUtils
code(file_utils_1_code1, compilation_unit, range(file_utils_1, 0, 133857, 1, -1)).
code(file_utils_1_code2, type_declaration, file_utils_1_code1, (types, 0), range(file_utils_1, 2163, 131693, 58, 3156)).
code(file_utils_1_code3, field_declaration, file_utils_1_code2, (body_declarations, 1), range(file_utils_1, 3110, 153, 91, 96)).
code(file_utils_1_code4, modifier, file_utils_1_code3, (modifiers, 0), range(file_utils_1, 3193, 6, 96, 96)).
code(file_utils_1_code5, modifier, file_utils_1_code3, (modifiers, 1), range(file_utils_1, 3200, 6, 96, 96)).
code(file_utils_1_code6, modifier, file_utils_1_code3, (modifiers, 2), range(file_utils_1, 3207, 5, 96, 96)).
code(file_utils_1_code7, simple_type, file_utils_1_code3, type, range(file_utils_1, 3213, 10, 96, 96)).
code(file_utils_1_code8, variable_declaration_fragment, file_utils_1_code3, (fragments, 0), range(file_utils_1, 3224, 38, 96, 96)).
code(file_utils_1_code9, field_declaration, file_utils_1_code2, (body_declarations, 3), range(file_utils_1, 3383, 156, 103, 108)).
code(file_utils_1_code10, modifier, file_utils_1_code9, (modifiers, 0), range(file_utils_1, 3466, 6, 108, 108)).
code(file_utils_1_code11, modifier, file_utils_1_code9, (modifiers, 1), range(file_utils_1, 3473, 6, 108, 108)).
code(file_utils_1_code12, modifier, file_utils_1_code9, (modifiers, 2), range(file_utils_1, 3480, 5, 108, 108)).
code(file_utils_1_code13, simple_type, file_utils_1_code9, type, range(file_utils_1, 3486, 10, 108, 108)).
code(file_utils_1_code14, variable_declaration_fragment, file_utils_1_code9, (fragments, 0), range(file_utils_1, 3497, 41, 108, 108)).
code(file_utils_1_code15, field_declaration, file_utils_1_code2, (body_declarations, 5), range(file_utils_1, 3659, 156, 115, 120)).
code(file_utils_1_code16, modifier, file_utils_1_code15, (modifiers, 0), range(file_utils_1, 3742, 6, 120, 120)).
code(file_utils_1_code17, modifier, file_utils_1_code15, (modifiers, 1), range(file_utils_1, 3749, 6, 120, 120)).
code(file_utils_1_code18, modifier, file_utils_1_code15, (modifiers, 2), range(file_utils_1, 3756, 5, 120, 120)).
code(file_utils_1_code19, simple_type, file_utils_1_code15, type, range(file_utils_1, 3762, 10, 120, 120)).
code(file_utils_1_code20, variable_declaration_fragment, file_utils_1_code15, (fragments, 0), range(file_utils_1, 3773, 41, 120, 120)).
code(file_utils_1_code21, field_declaration, file_utils_1_code2, (body_declarations, 7), range(file_utils_1, 3935, 156, 127, 132)).
code(file_utils_1_code22, modifier, file_utils_1_code21, (modifiers, 0), range(file_utils_1, 4018, 6, 132, 132)).
code(file_utils_1_code23, modifier, file_utils_1_code21, (modifiers, 1), range(file_utils_1, 4025, 6, 132, 132)).
code(file_utils_1_code24, modifier, file_utils_1_code21, (modifiers, 2), range(file_utils_1, 4032, 5, 132, 132)).
code(file_utils_1_code25, simple_type, file_utils_1_code21, type, range(file_utils_1, 4038, 10, 132, 132)).
code(file_utils_1_code26, variable_declaration_fragment, file_utils_1_code21, (fragments, 0), range(file_utils_1, 4049, 41, 132, 132)).
code(file_utils_1_code27, field_declaration, file_utils_1_code2, (body_declarations, 9), range(file_utils_1, 4211, 156, 139, 144)).
code(file_utils_1_code28, modifier, file_utils_1_code27, (modifiers, 0), range(file_utils_1, 4294, 6, 144, 144)).
code(file_utils_1_code29, modifier, file_utils_1_code27, (modifiers, 1), range(file_utils_1, 4301, 6, 144, 144)).
code(file_utils_1_code30, modifier, file_utils_1_code27, (modifiers, 2), range(file_utils_1, 4308, 5, 144, 144)).
code(file_utils_1_code31, simple_type, file_utils_1_code27, type, range(file_utils_1, 4314, 10, 144, 144)).
code(file_utils_1_code32, variable_declaration_fragment, file_utils_1_code27, (fragments, 0), range(file_utils_1, 4325, 41, 144, 144)).
code(file_utils_1_code33, field_declaration, file_utils_1_code2, (body_declarations, 11), range(file_utils_1, 4487, 156, 151, 156)).
code(file_utils_1_code34, modifier, file_utils_1_code33, (modifiers, 0), range(file_utils_1, 4570, 6, 156, 156)).
code(file_utils_1_code35, modifier, file_utils_1_code33, (modifiers, 1), range(file_utils_1, 4577, 6, 156, 156)).
code(file_utils_1_code36, modifier, file_utils_1_code33, (modifiers, 2), range(file_utils_1, 4584, 5, 156, 156)).
code(file_utils_1_code37, simple_type, file_utils_1_code33, type, range(file_utils_1, 4590, 10, 156, 156)).
code(file_utils_1_code38, variable_declaration_fragment, file_utils_1_code33, (fragments, 0), range(file_utils_1, 4601, 41, 156, 156)).
code(file_utils_1_code39, field_declaration, file_utils_1_code2, (body_declarations, 12), range(file_utils_1, 4649, 163, 158, 161)).
code(file_utils_1_code40, modifier, file_utils_1_code39, (modifiers, 0), range(file_utils_1, 4708, 6, 161, 161)).
code(file_utils_1_code41, modifier, file_utils_1_code39, (modifiers, 1), range(file_utils_1, 4715, 6, 161, 161)).
code(file_utils_1_code42, modifier, file_utils_1_code39, (modifiers, 2), range(file_utils_1, 4722, 5, 161, 161)).
code(file_utils_1_code43, simple_type, file_utils_1_code39, type, range(file_utils_1, 4728, 10, 161, 161)).
code(file_utils_1_code44, variable_declaration_fragment, file_utils_1_code39, (fragments, 0), range(file_utils_1, 4739, 72, 161, 161)).
code(file_utils_1_code45, field_declaration, file_utils_1_code2, (body_declarations, 13), range(file_utils_1, 4818, 126, 163, 166)).
code(file_utils_1_code46, modifier, file_utils_1_code45, (modifiers, 0), range(file_utils_1, 4877, 6, 166, 166)).
code(file_utils_1_code47, modifier, file_utils_1_code45, (modifiers, 1), range(file_utils_1, 4884, 6, 166, 166)).
code(file_utils_1_code48, modifier, file_utils_1_code45, (modifiers, 2), range(file_utils_1, 4891, 5, 166, 166)).
code(file_utils_1_code49, simple_type, file_utils_1_code45, type, range(file_utils_1, 4897, 10, 166, 166)).
code(file_utils_1_code50, variable_declaration_fragment, file_utils_1_code45, (fragments, 0), range(file_utils_1, 4908, 35, 166, 166)).
code(file_utils_1_code51, field_declaration, file_utils_1_code2, (body_declarations, 14), range(file_utils_1, 4950, 123, 168, 171)).
code(file_utils_1_code52, modifier, file_utils_1_code51, (modifiers, 0), range(file_utils_1, 5015, 6, 171, 171)).
code(file_utils_1_code53, modifier, file_utils_1_code51, (modifiers, 1), range(file_utils_1, 5022, 6, 171, 171)).
code(file_utils_1_code54, modifier, file_utils_1_code51, (modifiers, 2), range(file_utils_1, 5029, 5, 171, 171)).
code(file_utils_1_code56, simple_type, file_utils_1_code55, element_type, range(file_utils_1, 5035, 4, 171, 171)).
code(file_utils_1_code55, array_type, file_utils_1_code51, type, range(file_utils_1, 5035, 6, 171, 171)).
code(file_utils_1_code57, dimension, file_utils_1_code55, (dimensions, 0), range(file_utils_1, 5039, 2, 171, 171)).
code(file_utils_1_code58, variable_declaration_fragment, file_utils_1_code51, (fragments, 0), range(file_utils_1, 5042, 30, 171, 171)).
code(file_utils_1_code60, simple_type, file_utils_1_code59, element_type, range(file_utils_1, 5065, 4, 171, 171)).
code(file_utils_1_code59, array_type, file_utils_1_expr11, type, range(file_utils_1, 5065, 7, 171, 171)).
code(file_utils_1_code61, dimension, file_utils_1_code59, (dimensions, 0), range(file_utils_1, 5069, 3, 171, 171)).
code(file_utils_1_code62, method_declaration, file_utils_1_code2, (body_declarations, 22), range(file_utils_1, 11751, 733, 324, 346)).
code(file_utils_1_code63, modifier, file_utils_1_stmt1, (modifiers, 0), range(file_utils_1, 12120, 5, 332, 332)).
code(file_utils_1_code65, simple_type, file_utils_1_code64, element_type, range(file_utils_1, 12126, 4, 332, 332)).
code(file_utils_1_code64, array_type, file_utils_1_stmt1, type, range(file_utils_1, 12126, 6, 332, 332)).
code(file_utils_1_code66, dimension, file_utils_1_code64, (dimensions, 0), range(file_utils_1, 12130, 2, 332, 332)).
code(file_utils_1_code67, variable_declaration_fragment, file_utils_1_stmt1, (fragments, 0), range(file_utils_1, 12133, 36, 332, 332)).
code(file_utils_1_code68, simple_type, file_utils_1_stmt2, type, range(file_utils_1, 12180, 11, 334, 334)).
code(file_utils_1_code69, variable_declaration_fragment, file_utils_1_stmt2, (fragments, 0), range(file_utils_1, 12192, 16, 334, 334)).
code(file_utils_1_code70, single_variable_declaration, file_utils_1_stmt3, parameter, range(file_utils_1, 12223, 15, 335, 335)).
code(file_utils_1_code71, modifier, file_utils_1_code70, (modifiers, 0), range(file_utils_1, 12223, 5, 335, 335)).
code(file_utils_1_code72, simple_type, file_utils_1_code70, type, range(file_utils_1, 12229, 4, 335, 335)).
code(file_utils_1_code73, catch_clause, file_utils_1_stmt4, (catch_clauses, 0), range(file_utils_1, 12317, 78, 338, 340)).
code(file_utils_1_code74, method_declaration, file_utils_1_code2, (body_declarations, 24), range(file_utils_1, 13313, 1593, 373, 420)).
code(file_utils_1_code75, modifier, file_utils_1_stmt7, (modifiers, 0), range(file_utils_1, 14002, 5, 391, 391)).
code(file_utils_1_code76, primitive_type, file_utils_1_stmt7, type, range(file_utils_1, 14008, 7, 391, 391)).
code(file_utils_1_code77, variable_declaration_fragment, file_utils_1_stmt7, (fragments, 0), range(file_utils_1, 14016, 28, 391, 391)).
code(file_utils_1_code78, method_declaration, file_utils_1_code2, (body_declarations, 44), range(file_utils_1, 47952, 707, 1108, 1129)).
code(file_utils_1_code79, method_declaration, file_utils_1_code2, (body_declarations, 50), range(file_utils_1, 56564, 1243, 1317, 1345)).
code(file_utils_1_code80, catch_clause, file_utils_1_stmt12, (catch_clauses, 0), range(file_utils_1, 57456, 105, 1337, 1339)).
code(file_utils_1_code81, method_declaration, file_utils_1_code2, (body_declarations, 68), range(file_utils_1, 71700, 1102, 1696, 1724)).
code(file_utils_1_code82, method_declaration, file_utils_1_code2, (body_declarations, 109), range(file_utils_1, 112335, 942, 2668, 2691)).
code(file_utils_1_code83, modifier, file_utils_1_stmt19, (modifiers, 0), range(file_utils_1, 113057, 5, 2686, 2686)).
code(file_utils_1_code84, array_type, file_utils_1_stmt19, type, range(file_utils_1, 113063, 6, 2686, 2686)).
code(file_utils_1_code85, simple_type, file_utils_1_code84, element_type, range(file_utils_1, 113063, 4, 2686, 2686)).
code(file_utils_1_code86, dimension, file_utils_1_code84, (dimensions, 0), range(file_utils_1, 113067, 2, 2686, 2686)).
code(file_utils_1_code87, variable_declaration_fragment, file_utils_1_stmt19, (fragments, 0), range(file_utils_1, 113070, 29, 2686, 2686)).
%test_utils_1 - org.apache.commons.io.testtools.TestUtils
code(test_utils_1_code1, compilation_unit, range(test_utils_1, 0, 8744, 1, -1)).
code(test_utils_1_code2, type_declaration, test_utils_1_code1, (types, 0), range(test_utils_1, 1489, 7254, 40, 234)).
code(test_utils_1_code3, method_declaration, test_utils_1_code2, (body_declarations, 3), range(test_utils_1, 2481, 329, 71, 79)).
code(test_utils_1_code4, primitive_type, test_utils_1_expr1, type, range(test_utils_1, 2604, 3, 73, 73)).
code(test_utils_1_code5, variable_declaration_fragment, test_utils_1_expr1, (fragments, 0), range(test_utils_1, 2608, 5, 73, 73)).
%directory_walker_1 - org.apache.commons.io.DirectoryWalker
code(directory_walker_1_code1, compilation_unit, range(directory_walker_1, 0, 26261, 1, -1)).
code(directory_walker_1_code2, type_declaration, directory_walker_1_code1, (types, 0), range(directory_walker_1, 1109, 25151, 28, 677)).
code(directory_walker_1_code3, method_declaration, directory_walker_1_code2, (body_declarations, 2), range(directory_walker_1, 9810, 150, 279, 284)).
code(directory_walker_1_code4, method_declaration, directory_walker_1_code2, (body_declarations, 3), range(directory_walker_1, 9966, 776, 286, 302)).
code(directory_walker_1_code5, modifier, directory_walker_1_code4, (modifiers, 0), range(directory_walker_1, 10594, 9, 299, 299)).
code(directory_walker_1_code7, modifier, directory_walker_1_code6, (modifiers, 0), range(directory_walker_1, 10620, 5, 299, 299)).
code(directory_walker_1_code6, single_variable_declaration, directory_walker_1_code4, (parameters, 0), range(directory_walker_1, 10620, 23, 299, 299)).
code(directory_walker_1_code8, simple_type, directory_walker_1_code6, type, range(directory_walker_1, 10626, 10, 299, 299)).
code(directory_walker_1_code10, modifier, directory_walker_1_code9, (modifiers, 0), range(directory_walker_1, 10645, 5, 299, 299)).
code(directory_walker_1_code9, single_variable_declaration, directory_walker_1_code4, (parameters, 1), range(directory_walker_1, 10645, 20, 299, 299)).
code(directory_walker_1_code11, primitive_type, directory_walker_1_code9, type, range(directory_walker_1, 10651, 3, 299, 299)).
%file_utils_test_case_1 - org.apache.commons.io.FileUtilsTestCase
code(file_utils_test_case_1_code1, compilation_unit, range(file_utils_test_case_1, 0, 124273, 1, -1)).
code(file_utils_test_case_1_code2, type_declaration, file_utils_test_case_1_code1, (types, 0), range(file_utils_test_case_1, 2367, 121905, 61, 3111)).
code(file_utils_test_case_1_code3, modifier, file_utils_test_case_1_code2, (modifiers, 1), range(file_utils_test_case_1, 2566, 6, 67, 67)).
code(file_utils_test_case_1_code4, field_declaration, file_utils_test_case_1_code2, (body_declarations, 2), range(file_utils_test_case_1, 2771, 120, 79, 82)).
code(file_utils_test_case_1_code5, modifier, file_utils_test_case_1_code4, (modifiers, 0), range(file_utils_test_case_1, 2818, 7, 82, 82)).
code(file_utils_test_case_1_code6, modifier, file_utils_test_case_1_code4, (modifiers, 1), range(file_utils_test_case_1, 2826, 6, 82, 82)).
code(file_utils_test_case_1_code7, modifier, file_utils_test_case_1_code4, (modifiers, 2), range(file_utils_test_case_1, 2833, 5, 82, 82)).
code(file_utils_test_case_1_code8, simple_type, file_utils_test_case_1_code4, type, range(file_utils_test_case_1, 2839, 10, 82, 82)).
code(file_utils_test_case_1_code9, variable_declaration_fragment, file_utils_test_case_1_code4, (fragments, 0), range(file_utils_test_case_1, 2850, 40, 82, 82)).
code(file_utils_test_case_1_code10, field_declaration, file_utils_test_case_1_code2, (body_declarations, 3), range(file_utils_test_case_1, 2897, 149, 84, 87)).
code(file_utils_test_case_1_code11, modifier, file_utils_test_case_1_code10, (modifiers, 0), range(file_utils_test_case_1, 2957, 7, 87, 87)).
code(file_utils_test_case_1_code12, modifier, file_utils_test_case_1_code10, (modifiers, 1), range(file_utils_test_case_1, 2965, 6, 87, 87)).
code(file_utils_test_case_1_code13, modifier, file_utils_test_case_1_code10, (modifiers, 2), range(file_utils_test_case_1, 2972, 5, 87, 87)).
code(file_utils_test_case_1_code14, simple_type, file_utils_test_case_1_code10, type, range(file_utils_test_case_1, 2978, 10, 87, 87)).
code(file_utils_test_case_1_code15, variable_declaration_fragment, file_utils_test_case_1_code10, (fragments, 0), range(file_utils_test_case_1, 2989, 56, 87, 87)).
code(file_utils_test_case_1_code16, field_declaration, file_utils_test_case_1_code2, (body_declarations, 4), range(file_utils_test_case_1, 3052, 127, 89, 92)).
code(file_utils_test_case_1_code17, modifier, file_utils_test_case_1_code16, (modifiers, 0), range(file_utils_test_case_1, 3098, 7, 92, 92)).
code(file_utils_test_case_1_code18, modifier, file_utils_test_case_1_code16, (modifiers, 1), range(file_utils_test_case_1, 3106, 6, 92, 92)).
code(file_utils_test_case_1_code19, modifier, file_utils_test_case_1_code16, (modifiers, 2), range(file_utils_test_case_1, 3113, 5, 92, 92)).
code(file_utils_test_case_1_code20, simple_type, file_utils_test_case_1_code16, type, range(file_utils_test_case_1, 3119, 19, 92, 92)).
code(file_utils_test_case_1_code21, variable_declaration_fragment, file_utils_test_case_1_code16, (fragments, 0), range(file_utils_test_case_1, 3139, 39, 92, 92)).
code(file_utils_test_case_1_code22, simple_type, file_utils_test_case_1_expr2, type, range(file_utils_test_case_1, 3157, 19, 92, 92)).
code(file_utils_test_case_1_code23, method_declaration, file_utils_test_case_1_code2, (body_declarations, 9), range(file_utils_test_case_1, 3465, 1960, 105, 146)).
code(file_utils_test_case_1_code24, simple_type, file_utils_test_case_1_expr4, type, range(file_utils_test_case_1, 3544, 4, 107, 107)).
code(file_utils_test_case_1_code25, simple_type, file_utils_test_case_1_expr6, type, range(file_utils_test_case_1, 3609, 4, 108, 108)).
code(file_utils_test_case_1_code26, primitive_type, file_utils_test_case_1_expr8, type, range(file_utils_test_case_1, 3677, 3, 110, 110)).
code(file_utils_test_case_1_code27, primitive_type, file_utils_test_case_1_expr11, type, range(file_utils_test_case_1, 3727, 3, 111, 111)).
code(file_utils_test_case_1_code28, modifier, file_utils_test_case_1_expr16, (modifiers, 0), range(file_utils_test_case_1, 3960, 5, 116, 116)).
code(file_utils_test_case_1_code29, simple_type, file_utils_test_case_1_expr16, type, range(file_utils_test_case_1, 3966, 20, 116, 116)).
code(file_utils_test_case_1_code30, variable_declaration_fragment, file_utils_test_case_1_expr16, (fragments, 0), range(file_utils_test_case_1, 3987, 83, 116, 117)).
code(file_utils_test_case_1_code31, modifier, file_utils_test_case_1_expr22, (modifiers, 0), range(file_utils_test_case_1, 4356, 5, 124, 124)).
code(file_utils_test_case_1_code32, simple_type, file_utils_test_case_1_expr22, type, range(file_utils_test_case_1, 4362, 20, 124, 124)).
code(file_utils_test_case_1_code33, variable_declaration_fragment, file_utils_test_case_1_expr22, (fragments, 0), range(file_utils_test_case_1, 4383, 83, 124, 125)).
code(file_utils_test_case_1_code34, modifier, file_utils_test_case_1_expr30, (modifiers, 0), range(file_utils_test_case_1, 4838, 5, 134, 134)).
code(file_utils_test_case_1_code35, simple_type, file_utils_test_case_1_expr30, type, range(file_utils_test_case_1, 4844, 20, 134, 134)).
code(file_utils_test_case_1_code36, variable_declaration_fragment, file_utils_test_case_1_expr30, (fragments, 0), range(file_utils_test_case_1, 4865, 83, 134, 135)).
code(file_utils_test_case_1_code37, modifier, file_utils_test_case_1_expr36, (modifiers, 0), range(file_utils_test_case_1, 5234, 5, 142, 142)).
code(file_utils_test_case_1_code38, simple_type, file_utils_test_case_1_expr36, type, range(file_utils_test_case_1, 5240, 20, 142, 142)).
code(file_utils_test_case_1_code39, variable_declaration_fragment, file_utils_test_case_1_expr36, (fragments, 0), range(file_utils_test_case_1, 5261, 82, 142, 143)).
code(file_utils_test_case_1_code40, method_declaration, file_utils_test_case_1_code2, (body_declarations, 10), range(file_utils_test_case_1, 5431, 80, 148, 150)).
code(file_utils_test_case_1_code41, method_declaration, file_utils_test_case_1_code2, (body_declarations, 46), range(file_utils_test_case_1, 22322, 2331, 569, 626)).
code(file_utils_test_case_1_code42, modifier, file_utils_test_case_1_stmt20, (modifiers, 0), range(file_utils_test_case_1, 22421, 5, 572, 572)).
code(file_utils_test_case_1_code43, simple_type, file_utils_test_case_1_stmt20, type, range(file_utils_test_case_1, 22427, 4, 572, 572)).
code(file_utils_test_case_1_code44, variable_declaration_fragment, file_utils_test_case_1_stmt20, (fragments, 0), range(file_utils_test_case_1, 22432, 43, 572, 572)).
code(file_utils_test_case_1_code45, simple_type, file_utils_test_case_1_expr42, type, range(file_utils_test_case_1, 22443, 4, 572, 572)).
code(file_utils_test_case_1_code46, modifier, file_utils_test_case_1_stmt21, (modifiers, 0), range(file_utils_test_case_1, 22485, 5, 573, 573)).
code(file_utils_test_case_1_code47, simple_type, file_utils_test_case_1_stmt21, type, range(file_utils_test_case_1, 22491, 4, 573, 573)).
code(file_utils_test_case_1_code48, variable_declaration_fragment, file_utils_test_case_1_stmt21, (fragments, 0), range(file_utils_test_case_1, 22496, 50, 573, 573)).
code(file_utils_test_case_1_code49, simple_type, file_utils_test_case_1_expr44, type, range(file_utils_test_case_1, 22508, 4, 573, 573)).
%counters_1 - org.apache.commons.io.file.Counters
code(counters_1_code1, compilation_unit, range(counters_1, 0, 7110, 1, -1)).
code(counters_1_code2, type_declaration, counters_1_code1, (types, 0), range(counters_1, 871, 6238, 22, 290)).
code(counters_1_code3, type_declaration, counters_1_code2, (body_declarations, 0), range(counters_1, 1002, 1553, 29, 79)).
code(counters_1_code4, method_declaration, counters_1_code3, (body_declarations, 3), range(counters_1, 1296, 534, 38, 51)).
code(counters_1_code5, method_declaration, counters_1_code3, (body_declarations, 4), range(counters_1, 1840, 93, 53, 56)).
code(counters_1_code6, method_declaration, counters_1_code3, (body_declarations, 6), range(counters_1, 2056, 229, 63, 71)).
code(counters_1_code7, type_declaration, counters_1_code2, (body_declarations, 4), range(counters_1, 4602, 729, 174, 211)).
code(counters_1_code8, method_declaration, counters_1_code7, (body_declarations, 1), range(counters_1, 4745, 88, 181, 185)).
code(counters_1_code9, method_declaration, counters_1_code7, (body_declarations, 2), range(counters_1, 4843, 73, 187, 190)).
code(counters_1_code10, method_declaration, counters_1_code7, (body_declarations, 5), range(counters_1, 5146, 74, 202, 205)).
code(counters_1_code11, type_declaration, counters_1_code2, (body_declarations, 5), range(counters_1, 5337, 392, 213, 225)).
code(counters_1_code12, method_declaration, counters_1_code11, (body_declarations, 0), range(counters_1, 5517, 205, 218, 223)).
code(counters_1_code13, method_declaration, counters_1_code2, (body_declarations, 9), range(counters_1, 6724, 170, 273, 280)).
code(counters_1_code14, simple_type, counters_1_expr19, type, range(counters_1, 6874, 11, 279, 279)).
code(counters_1_code15, method_declaration, counters_1_code2, (body_declarations, 10), range(counters_1, 6900, 207, 282, 289)).
code(counters_1_code16, simple_type, counters_1_expr20, type, range(counters_1, 7082, 16, 288, 288)).

%%% Name References

name_ref(t_big_integer_1, type, 'BigInteger', 'Ljava/math/BigInteger;').
name_ref(t_counters_7, type, 'Counters', 'Lorg/apache/commons/io/file/Counters;').
name_ref(t_file_utils_6, type, 'FileUtils', 'Lorg/apache/commons/io/FileUtils;').
name_ref(t_file_utils_test_case_4, type, 'FileUtilsTestCase', 'Lorg/apache/commons/io/FileUtilsTestCase;').
name_ref(t_files_3, type, 'Files', 'Ljava/nio/file/Files;').
name_ref(t_path_utils_2, type, 'PathUtils', 'Lorg/apache/commons/io/file/PathUtils;').
name_ref(t_test_utils_5, type, 'TestUtils', 'Lorg/apache/commons/io/testtools/TestUtils;').
name_ref(v_delete_counters_138, var, 'deleteCounters', 'Lorg/apache/commons/io/FileUtils;.forceDelete(Ljava/io/File;)V|Ljava/io/IOException;#deleteCounters').
name_ref(v_exception_73, var, 'exception', 'Lorg/apache/commons/io/FileUtils;.cleanDirectory(Ljava/io/File;)V|Ljava/io/IOException;#exception').
name_ref(v_file_1exists_78, var, 'file1Exists', 'Lorg/apache/commons/io/FileUtils;.contentEquals(Ljava/io/File;Ljava/io/File;)Z|Ljava/io/IOException;#file1Exists').
name_ref(v_file_2_332, var, 'file2', 'Lorg/apache/commons/io/FileUtilsTestCase;.testContentEquals()V|Ljava/lang/Exception;#file2').
name_ref(v_file_331, var, 'file', 'Lorg/apache/commons/io/FileUtilsTestCase;.testContentEquals()V|Ljava/lang/Exception;#file').
name_ref(v_file_74, var, 'file', 'Lorg/apache/commons/io/FileUtils;.cleanDirectory(Ljava/io/File;)V|Ljava/io/IOException;#0#file').
name_ref(v_files_235, var, 'files', 'Lorg/apache/commons/io/FileUtils;.verifiedListFiles(Ljava/io/File;)[Ljava/io/File;|Ljava/io/IOException;#files').
name_ref(v_files_72, var, 'files', 'Lorg/apache/commons/io/FileUtils;.cleanDirectory(Ljava/io/File;)V|Ljava/io/IOException;#files').
name_ref(v_i_386, var, 'i', 'Lorg/apache/commons/io/testtools/TestUtils;.generateTestData(Ljava/io/OutputStream;J)V|Ljava/io/IOException;#0#i').
name_ref(v_output_1_328, var, 'output1', 'Lorg/apache/commons/io/FileUtilsTestCase;.setUp()V|Ljava/lang/Exception;#2#0#output1').
name_ref(v_output_2_327, var, 'output2', 'Lorg/apache/commons/io/FileUtilsTestCase;.setUp()V|Ljava/lang/Exception;#1#0#output2').
name_ref(v_output_329, var, 'output', 'Lorg/apache/commons/io/FileUtilsTestCase;.setUp()V|Ljava/lang/Exception;#3#0#output').
name_ref(v_output_3_326, var, 'output3', 'Lorg/apache/commons/io/FileUtilsTestCase;.setUp()V|Ljava/lang/Exception;#0#0#output3').
name_ref(v_path_counts_369, var, 'pathCounts', 'Lorg/apache/commons/io/file/PathUtils;.deleteFile(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#pathCounts').
name_ref(v_size_370, var, 'size', 'Lorg/apache/commons/io/file/PathUtils;.deleteFile(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#size').
name_ref(p_add_356, param, 'add', 'Lorg/apache/commons/io/file/Counters$LongCounter;.add(J)V#add#0#0').
name_ref(p_append_203, param, 'append', 'Lorg/apache/commons/io/FileUtils;.openOutputStream(Ljava/io/File;Z)Ljava/io/FileOutputStream;|Ljava/io/IOException;#append#0#1').
name_ref(p_append_242, param, 'append', 'Lorg/apache/commons/io/FileUtils;.write(Ljava/io/File;Ljava/lang/CharSequence;Z)V|Ljava/io/IOException;#append#0#2').
name_ref(p_append_249, param, 'append', 'Lorg/apache/commons/io/FileUtils;.write(Ljava/io/File;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;Z)V|Ljava/io/IOException;#append#0#3').
name_ref(p_append_256, param, 'append', 'Lorg/apache/commons/io/FileUtils;.write(Ljava/io/File;Ljava/lang/CharSequence;Ljava/lang/String;Z)V|Ljava/io/IOException;#append#0#3').
name_ref(p_append_261, param, 'append', 'Lorg/apache/commons/io/FileUtils;.writeByteArrayToFile(Ljava/io/File;[BZ)V|Ljava/io/IOException;#append#0#2').
name_ref(p_append_270, param, 'append', 'Lorg/apache/commons/io/FileUtils;.writeByteArrayToFile(Ljava/io/File;[BIIZ)V|Ljava/io/IOException;#append#0#4').
name_ref(p_append_275, param, 'append', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/util/Collection<*>;Z)V|Ljava/io/IOException;#append#0#2').
name_ref(p_append_282, param, 'append', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/util/Collection<*>;Ljava/lang/String;Z)V|Ljava/io/IOException;#append#0#3').
name_ref(p_append_289, param, 'append', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection<*>;Z)V|Ljava/io/IOException;#append#0#3').
name_ref(p_append_298, param, 'append', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection<*>;Ljava/lang/String;Z)V|Ljava/io/IOException;#append#0#4').
name_ref(p_append_303, param, 'append', 'Lorg/apache/commons/io/FileUtils;.writeStringToFile(Ljava/io/File;Ljava/lang/String;Z)V|Ljava/io/IOException;#append#0#2').
name_ref(p_append_310, param, 'append', 'Lorg/apache/commons/io/FileUtils;.writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V|Ljava/io/IOException;#append#0#3').
name_ref(p_append_317, param, 'append', 'Lorg/apache/commons/io/FileUtils;.writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V|Ljava/io/IOException;#append#0#3').
name_ref(p_b_0_395, param, 'b0', 'Lorg/apache/commons/io/testtools/TestUtils;.assertEqualContent([BLjava/io/File;)V|Ljava/io/IOException;#b0#0#0').
name_ref(p_byte_counter_348, param, 'byteCounter', 'Lorg/apache/commons/io/file/Counters$AbstractPathCounters;.(Lorg/apache/commons/io/file/Counters$Counter;Lorg/apache/commons/io/file/Counters$Counter;Lorg/apache/commons/io/file/Counters$Counter;)V#byteCounter#0#0').
name_ref(p_c_0_397, param, 'c0', 'Lorg/apache/commons/io/testtools/TestUtils;.assertEqualContent([CLjava/io/File;)V|Ljava/io/IOException;#c0#0#0').
name_ref(p_cancel_21, param, 'cancel', 'Lorg/apache/commons/io/DirectoryWalker;.handleCancelled(Ljava/io/File;Ljava/util/Collection<TT;>;Lorg/apache/commons/io/DirectoryWalker$CancelException;)V|Ljava/io/IOException;#cancel#0#2').
name_ref(p_charset_name_81, param, 'charsetName', 'Lorg/apache/commons/io/FileUtils;.contentEqualsIgnoreEOL(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z|Ljava/io/IOException;#charsetName#0#2').
name_ref(p_checksum_69, param, 'checksum', 'Lorg/apache/commons/io/FileUtils;.checksum(Ljava/io/File;Ljava/util/zip/Checksum;)Ljava/util/zip/Checksum;|Ljava/io/IOException;#checksum#0#1').
name_ref(p_child_128, param, 'child', 'Lorg/apache/commons/io/FileUtils;.directoryContains(Ljava/io/File;Ljava/io/File;)Z|Ljava/io/IOException;#child#0#1').
name_ref(p_child_dir_336, param, 'childDir', 'Lorg/apache/commons/io/FileUtilsTestCase;.createFilesForTestCopyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V|Ljava/lang/Exception;#childDir#0#2').
name_ref(p_connection_timeout_121, param, 'connectionTimeout', 'Lorg/apache/commons/io/FileUtils;.copyURLToFile(Ljava/net/URL;Ljava/io/File;II)V|Ljava/io/IOException;#connectionTimeout#0#2').
name_ref(p_copy_options_361, param, 'copyOptions', 'Lorg/apache/commons/io/file/PathUtils;.copyDirectory(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#copyOptions#0#2').
name_ref(p_copy_options_364, param, 'copyOptions', 'Lorg/apache/commons/io/file/PathUtils;.copyFileToDirectory(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#copyOptions#0#2').
name_ref(p_create_dest_dir_191, param, 'createDestDir', 'Lorg/apache/commons/io/FileUtils;.moveDirectoryToDirectory(Ljava/io/File;Ljava/io/File;Z)V|Ljava/io/IOException;#createDestDir#0#2').
name_ref(p_create_dest_dir_196, param, 'createDestDir', 'Lorg/apache/commons/io/FileUtils;.moveFileToDirectory(Ljava/io/File;Ljava/io/File;Z)V|Ljava/io/IOException;#createDestDir#0#2').
name_ref(p_create_dest_dir_199, param, 'createDestDir', 'Lorg/apache/commons/io/FileUtils;.moveToDirectory(Ljava/io/File;Ljava/io/File;Z)V|Ljava/io/IOException;#createDestDir#0#2').
name_ref(p_create_file_330, param, 'createFile', 'Lorg/apache/commons/io/FileUtilsTestCase;.openOutputStream_noParent(Z)V|Ljava/lang/Exception;#createFile#0#0').
name_ref(p_data_239, param, 'data', 'Lorg/apache/commons/io/FileUtils;.write(Ljava/io/File;Ljava/lang/CharSequence;)V|Ljava/io/IOException;#data#0#1').
name_ref(p_data_241, param, 'data', 'Lorg/apache/commons/io/FileUtils;.write(Ljava/io/File;Ljava/lang/CharSequence;Z)V|Ljava/io/IOException;#data#0#1').
name_ref(p_data_244, param, 'data', 'Lorg/apache/commons/io/FileUtils;.write(Ljava/io/File;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#data#0#1').
name_ref(p_data_247, param, 'data', 'Lorg/apache/commons/io/FileUtils;.write(Ljava/io/File;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;Z)V|Ljava/io/IOException;#data#0#1').
name_ref(p_data_251, param, 'data', 'Lorg/apache/commons/io/FileUtils;.write(Ljava/io/File;Ljava/lang/CharSequence;Ljava/lang/String;)V|Ljava/io/IOException;#data#0#1').
name_ref(p_data_254, param, 'data', 'Lorg/apache/commons/io/FileUtils;.write(Ljava/io/File;Ljava/lang/CharSequence;Ljava/lang/String;Z)V|Ljava/io/IOException;#data#0#1').
name_ref(p_data_258, param, 'data', 'Lorg/apache/commons/io/FileUtils;.writeByteArrayToFile(Ljava/io/File;[B)V|Ljava/io/IOException;#data#0#1').
name_ref(p_data_260, param, 'data', 'Lorg/apache/commons/io/FileUtils;.writeByteArrayToFile(Ljava/io/File;[BZ)V|Ljava/io/IOException;#data#0#1').
name_ref(p_data_263, param, 'data', 'Lorg/apache/commons/io/FileUtils;.writeByteArrayToFile(Ljava/io/File;[BII)V|Ljava/io/IOException;#data#0#1').
name_ref(p_data_267, param, 'data', 'Lorg/apache/commons/io/FileUtils;.writeByteArrayToFile(Ljava/io/File;[BIIZ)V|Ljava/io/IOException;#data#0#1').
name_ref(p_data_300, param, 'data', 'Lorg/apache/commons/io/FileUtils;.writeStringToFile(Ljava/io/File;Ljava/lang/String;)V|Ljava/io/IOException;#data#0#1').
name_ref(p_data_302, param, 'data', 'Lorg/apache/commons/io/FileUtils;.writeStringToFile(Ljava/io/File;Ljava/lang/String;Z)V|Ljava/io/IOException;#data#0#1').
name_ref(p_data_305, param, 'data', 'Lorg/apache/commons/io/FileUtils;.writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#data#0#1').
name_ref(p_data_308, param, 'data', 'Lorg/apache/commons/io/FileUtils;.writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V|Ljava/io/IOException;#data#0#1').
name_ref(p_data_312, param, 'data', 'Lorg/apache/commons/io/FileUtils;.writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V|Ljava/io/IOException;#data#0#1').
name_ref(p_data_315, param, 'data', 'Lorg/apache/commons/io/FileUtils;.writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V|Ljava/io/IOException;#data#0#1').
name_ref(p_data_388, param, 'data', 'Lorg/apache/commons/io/testtools/TestUtils;.createLineBasedFile(Ljava/io/File;[Ljava/lang/String;)V|Ljava/io/IOException;#data#0#1').
name_ref(p_date_154, param, 'date', 'Lorg/apache/commons/io/FileUtils;.isFileNewer(Ljava/io/File;Ljava/util/Date;)Z#date#0#1').
name_ref(p_date_160, param, 'date', 'Lorg/apache/commons/io/FileUtils;.isFileOlder(Ljava/io/File;Ljava/util/Date;)Z#date#0#1').
name_ref(p_depth_11, param, 'depth', 'Lorg/apache/commons/io/DirectoryWalker;.walk(Ljava/io/File;ILjava/util/Collection<TT;>;)V|Ljava/io/IOException;#depth#0#1').
name_ref(p_depth_14, param, 'depth', 'Lorg/apache/commons/io/DirectoryWalker;.checkIfCancelled(Ljava/io/File;ILjava/util/Collection<TT;>;)V|Ljava/io/IOException;#depth#0#1').
name_ref(p_depth_17, param, 'depth', 'Lorg/apache/commons/io/DirectoryWalker;.handleIsCancelled(Ljava/io/File;ILjava/util/Collection<TT;>;)Z|Ljava/io/IOException;#depth#0#1').
name_ref(p_depth_25, param, 'depth', 'Lorg/apache/commons/io/DirectoryWalker;.handleDirectory(Ljava/io/File;ILjava/util/Collection<TT;>;)Z|Ljava/io/IOException;#depth#0#1').
name_ref(p_depth_28, param, 'depth', 'Lorg/apache/commons/io/DirectoryWalker;.handleDirectoryStart(Ljava/io/File;ILjava/util/Collection<TT;>;)V|Ljava/io/IOException;#depth#0#1').
name_ref(p_depth_31, param, 'depth', 'Lorg/apache/commons/io/DirectoryWalker;.filterDirectoryContents(Ljava/io/File;I[Ljava/io/File;)[Ljava/io/File;|Ljava/io/IOException;#depth#0#1').
name_ref(p_depth_34, param, 'depth', 'Lorg/apache/commons/io/DirectoryWalker;.handleFile(Ljava/io/File;ILjava/util/Collection<TT;>;)V|Ljava/io/IOException;#depth#0#1').
name_ref(p_depth_343, param, 'depth', 'Lorg/apache/commons/io/FileUtilsTestCase$ListDirectoryWalker;.handleDirectoryStart(Ljava/io/File;ILjava/util/Collection<Ljava/io/File;>;)V|Ljava/io/IOException;#depth#0#1').
name_ref(p_depth_346, param, 'depth', 'Lorg/apache/commons/io/FileUtilsTestCase$ListDirectoryWalker;.handleFile(Ljava/io/File;ILjava/util/Collection<Ljava/io/File;>;)V|Ljava/io/IOException;#depth#0#1').
name_ref(p_depth_37, param, 'depth', 'Lorg/apache/commons/io/DirectoryWalker;.handleRestricted(Ljava/io/File;ILjava/util/Collection<TT;>;)V|Ljava/io/IOException;#depth#0#1').
name_ref(p_depth_40, param, 'depth', 'Lorg/apache/commons/io/DirectoryWalker;.handleDirectoryEnd(Ljava/io/File;ILjava/util/Collection<TT;>;)V|Ljava/io/IOException;#depth#0#1').
name_ref(p_depth_44, param, 'depth', 'Lorg/apache/commons/io/DirectoryWalker$CancelException;.(Ljava/io/File;I)V#depth#0#1').
name_ref(p_depth_47, param, 'depth', 'Lorg/apache/commons/io/DirectoryWalker$CancelException;.(Ljava/lang/String;Ljava/io/File;I)V#depth#0#2').
name_ref(p_depth_limit_2, param, 'depthLimit', 'Lorg/apache/commons/io/DirectoryWalker;.(Ljava/io/FileFilter;I)V#depthLimit#0#1').
name_ref(p_depth_limit_7, param, 'depthLimit', 'Lorg/apache/commons/io/DirectoryWalker;.(Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;I)V#depthLimit#0#2').
name_ref(p_dest_233, param, 'dest', 'Lorg/apache/commons/io/FileUtils;.validateMoveParameters(Ljava/io/File;Ljava/io/File;)V|Ljava/io/FileNotFoundException;#dest#0#1').
name_ref(p_dest_339, param, 'dest', 'Lorg/apache/commons/io/FileUtilsTestCase$111547;.renameTo(Ljava/io/File;)Z#dest#0#0').
name_ref(p_dest_67, param, 'dest', 'Lorg/apache/commons/io/FileUtils;.checkFileRequirements(Ljava/io/File;Ljava/io/File;)V|Ljava/io/FileNotFoundException;#dest#0#1').
name_ref(p_dest_dir_105, param, 'destDir', 'Lorg/apache/commons/io/FileUtils;.copyFileToDirectory(Ljava/io/File;Ljava/io/File;)V|Ljava/io/IOException;#destDir#0#1').
name_ref(p_dest_dir_107, param, 'destDir', 'Lorg/apache/commons/io/FileUtils;.copyFileToDirectory(Ljava/io/File;Ljava/io/File;Z)V|Ljava/io/IOException;#destDir#0#1').
name_ref(p_dest_dir_112, param, 'destDir', 'Lorg/apache/commons/io/FileUtils;.copyToDirectory(Ljava/io/File;Ljava/io/File;)V|Ljava/io/IOException;#destDir#0#1').
name_ref(p_dest_dir_114, param, 'destDir', 'Lorg/apache/commons/io/FileUtils;.copyToDirectory(Ljava/lang/Iterable<Ljava/io/File;>;Ljava/io/File;)V|Ljava/io/IOException;#destDir#0#1').
name_ref(p_dest_dir_130, param, 'destDir', 'Lorg/apache/commons/io/FileUtils;.doCopyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;ZLjava/util/List<Ljava/lang/String;>;)V|Ljava/io/IOException;#destDir#0#1').
name_ref(p_dest_dir_188, param, 'destDir', 'Lorg/apache/commons/io/FileUtils;.moveDirectory(Ljava/io/File;Ljava/io/File;)V|Ljava/io/IOException;#destDir#0#1').
name_ref(p_dest_dir_190, param, 'destDir', 'Lorg/apache/commons/io/FileUtils;.moveDirectoryToDirectory(Ljava/io/File;Ljava/io/File;Z)V|Ljava/io/IOException;#destDir#0#1').
name_ref(p_dest_dir_195, param, 'destDir', 'Lorg/apache/commons/io/FileUtils;.moveFileToDirectory(Ljava/io/File;Ljava/io/File;Z)V|Ljava/io/IOException;#destDir#0#1').
name_ref(p_dest_dir_198, param, 'destDir', 'Lorg/apache/commons/io/FileUtils;.moveToDirectory(Ljava/io/File;Ljava/io/File;Z)V|Ljava/io/IOException;#destDir#0#1').
name_ref(p_dest_dir_84, param, 'destDir', 'Lorg/apache/commons/io/FileUtils;.copyDirectory(Ljava/io/File;Ljava/io/File;)V|Ljava/io/IOException;#destDir#0#1').
name_ref(p_dest_dir_86, param, 'destDir', 'Lorg/apache/commons/io/FileUtils;.copyDirectory(Ljava/io/File;Ljava/io/File;Z)V|Ljava/io/IOException;#destDir#0#1').
name_ref(p_dest_dir_89, param, 'destDir', 'Lorg/apache/commons/io/FileUtils;.copyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;)V|Ljava/io/IOException;#destDir#0#1').
name_ref(p_dest_dir_92, param, 'destDir', 'Lorg/apache/commons/io/FileUtils;.copyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;Z)V|Ljava/io/IOException;#destDir#0#1').
name_ref(p_dest_dir_96, param, 'destDir', 'Lorg/apache/commons/io/FileUtils;.copyDirectoryToDirectory(Ljava/io/File;Ljava/io/File;)V|Ljava/io/IOException;#destDir#0#1').
name_ref(p_dest_file_100, param, 'destFile', 'Lorg/apache/commons/io/FileUtils;.copyFile(Ljava/io/File;Ljava/io/File;Z)V|Ljava/io/IOException;#destFile#0#1').
name_ref(p_dest_file_135, param, 'destFile', 'Lorg/apache/commons/io/FileUtils;.doCopyFile(Ljava/io/File;Ljava/io/File;Z)V|Ljava/io/IOException;#destFile#0#1').
name_ref(p_dest_file_193, param, 'destFile', 'Lorg/apache/commons/io/FileUtils;.moveFile(Ljava/io/File;Ljava/io/File;)V|Ljava/io/IOException;#destFile#0#1').
name_ref(p_dest_file_63, param, 'destFile', 'Lorg/apache/commons/io/FileUtils;.checkEqualSizes(Ljava/io/File;Ljava/io/File;JJ)V|Ljava/io/IOException;#destFile#0#1').
name_ref(p_dest_file_98, param, 'destFile', 'Lorg/apache/commons/io/FileUtils;.copyFile(Ljava/io/File;Ljava/io/File;)V|Ljava/io/IOException;#destFile#0#1').
name_ref(p_destination_110, param, 'destination', 'Lorg/apache/commons/io/FileUtils;.copyInputStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V|Ljava/io/IOException;#destination#0#1').
name_ref(p_destination_116, param, 'destination', 'Lorg/apache/commons/io/FileUtils;.copyToFile(Ljava/io/InputStream;Ljava/io/File;)V|Ljava/io/IOException;#destination#0#1').
name_ref(p_destination_118, param, 'destination', 'Lorg/apache/commons/io/FileUtils;.copyURLToFile(Ljava/net/URL;Ljava/io/File;)V|Ljava/io/IOException;#destination#0#1').
name_ref(p_destination_120, param, 'destination', 'Lorg/apache/commons/io/FileUtils;.copyURLToFile(Ljava/net/URL;Ljava/io/File;II)V|Ljava/io/IOException;#destination#0#1').
name_ref(p_dir_filter_151, param, 'dirFilter', 'Lorg/apache/commons/io/FileUtils;.innerListFilesOrDirectories(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;Z)Ljava/util/Collection<Ljava/io/File;>;#dirFilter#0#2').
name_ref(p_dir_filter_168, param, 'dirFilter', 'Lorg/apache/commons/io/FileUtils;.iterateFiles(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Iterator<Ljava/io/File;>;#dirFilter#0#2').
name_ref(p_dir_filter_174, param, 'dirFilter', 'Lorg/apache/commons/io/FileUtils;.iterateFilesAndDirs(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Iterator<Ljava/io/File;>;#dirFilter#0#2').
name_ref(p_dir_filter_180, param, 'dirFilter', 'Lorg/apache/commons/io/FileUtils;.listFiles(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Collection<Ljava/io/File;>;#dirFilter#0#2').
name_ref(p_dir_filter_186, param, 'dirFilter', 'Lorg/apache/commons/io/FileUtils;.listFilesAndDirs(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Collection<Ljava/io/File;>;#dirFilter#0#2').
name_ref(p_dir_filter_215, param, 'dirFilter', 'Lorg/apache/commons/io/FileUtils;.setUpEffectiveDirFilter(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;#dirFilter#0#0').
name_ref(p_directory_10, param, 'directory', 'Lorg/apache/commons/io/DirectoryWalker;.walk(Ljava/io/File;ILjava/util/Collection<TT;>;)V|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_124, param, 'directory', 'Lorg/apache/commons/io/FileUtils;.deleteDirectory(Ljava/io/File;)V|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_125, param, 'directory', 'Lorg/apache/commons/io/FileUtils;.deleteDirectoryOnExit(Ljava/io/File;)V|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_127, param, 'directory', 'Lorg/apache/commons/io/FileUtils;.directoryContains(Ljava/io/File;Ljava/io/File;)Z|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_140, param, 'directory', 'Lorg/apache/commons/io/FileUtils;.forceMkdir(Ljava/io/File;)V|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_142, param, 'directory', 'Lorg/apache/commons/io/FileUtils;.getFile(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;#directory#0#0').
name_ref(p_directory_146, param, 'directory', 'Lorg/apache/commons/io/FileUtils;.innerListFiles(Ljava/util/Collection<Ljava/io/File;>;Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Z)V#directory#0#1').
name_ref(p_directory_149, param, 'directory', 'Lorg/apache/commons/io/FileUtils;.innerListFilesOrDirectories(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;Z)Ljava/util/Collection<Ljava/io/File;>;#directory#0#0').
name_ref(p_directory_166, param, 'directory', 'Lorg/apache/commons/io/FileUtils;.iterateFiles(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Iterator<Ljava/io/File;>;#directory#0#0').
name_ref(p_directory_169, param, 'directory', 'Lorg/apache/commons/io/FileUtils;.iterateFiles(Ljava/io/File;[Ljava/lang/String;Z)Ljava/util/Iterator<Ljava/io/File;>;#directory#0#0').
name_ref(p_directory_172, param, 'directory', 'Lorg/apache/commons/io/FileUtils;.iterateFilesAndDirs(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Iterator<Ljava/io/File;>;#directory#0#0').
name_ref(p_directory_178, param, 'directory', 'Lorg/apache/commons/io/FileUtils;.listFiles(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Collection<Ljava/io/File;>;#directory#0#0').
name_ref(p_directory_181, param, 'directory', 'Lorg/apache/commons/io/FileUtils;.listFiles(Ljava/io/File;[Ljava/lang/String;Z)Ljava/util/Collection<Ljava/io/File;>;#directory#0#0').
name_ref(p_directory_184, param, 'directory', 'Lorg/apache/commons/io/FileUtils;.listFilesAndDirs(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Collection<Ljava/io/File;>;#directory#0#0').
name_ref(p_directory_221, param, 'directory', 'Lorg/apache/commons/io/FileUtils;.sizeOfDirectory(Ljava/io/File;)J#directory#0#0').
name_ref(p_directory_222, param, 'directory', 'Lorg/apache/commons/io/FileUtils;.sizeOfDirectory0(Ljava/io/File;)J#directory#0#0').
name_ref(p_directory_223, param, 'directory', 'Lorg/apache/commons/io/FileUtils;.sizeOfDirectoryAsBigInteger(Ljava/io/File;)Ljava/math/BigInteger;#directory#0#0').
name_ref(p_directory_224, param, 'directory', 'Lorg/apache/commons/io/FileUtils;.sizeOfDirectoryBig0(Ljava/io/File;)Ljava/math/BigInteger;#directory#0#0').
name_ref(p_directory_230, param, 'directory', 'Lorg/apache/commons/io/FileUtils;.validateListFilesParameters(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;)V#directory#0#0').
name_ref(p_directory_234, param, 'directory', 'Lorg/apache/commons/io/FileUtils;.verifiedListFiles(Ljava/io/File;)[Ljava/io/File;|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_24, param, 'directory', 'Lorg/apache/commons/io/DirectoryWalker;.handleDirectory(Ljava/io/File;ILjava/util/Collection<TT;>;)Z|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_27, param, 'directory', 'Lorg/apache/commons/io/DirectoryWalker;.handleDirectoryStart(Ljava/io/File;ILjava/util/Collection<TT;>;)V|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_30, param, 'directory', 'Lorg/apache/commons/io/DirectoryWalker;.filterDirectoryContents(Ljava/io/File;I[Ljava/io/File;)[Ljava/io/File;|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_342, param, 'directory', 'Lorg/apache/commons/io/FileUtilsTestCase$ListDirectoryWalker;.handleDirectoryStart(Ljava/io/File;ILjava/util/Collection<Ljava/io/File;>;)V|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_358, param, 'directory', 'Lorg/apache/commons/io/file/PathUtils;.cleanDirectory(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_36, param, 'directory', 'Lorg/apache/commons/io/DirectoryWalker;.handleRestricted(Ljava/io/File;ILjava/util/Collection<TT;>;)V|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_365, param, 'directory', 'Lorg/apache/commons/io/file/PathUtils;.countDirectory(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_367, param, 'directory', 'Lorg/apache/commons/io/file/PathUtils;.deleteDirectory(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_372, param, 'directory', 'Lorg/apache/commons/io/file/PathUtils;.isEmptyDirectory(Ljava/nio/file/Path;)Z|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_375, param, 'directory', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/nio/file/Path;)TT;|Ljava/io/IOException;#directory#0#1').
name_ref(p_directory_39, param, 'directory', 'Lorg/apache/commons/io/DirectoryWalker;.handleDirectoryEnd(Ljava/io/File;ILjava/util/Collection<TT;>;)V|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_61, param, 'directory', 'Lorg/apache/commons/io/FileUtils;.checkDirectory(Ljava/io/File;)V#directory#0#0').
name_ref(p_directory_71, param, 'directory', 'Lorg/apache/commons/io/FileUtils;.cleanDirectory(Ljava/io/File;)V|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_75, param, 'directory', 'Lorg/apache/commons/io/FileUtils;.cleanDirectoryOnExit(Ljava/io/File;)V|Ljava/io/IOException;#directory#0#0').
name_ref(p_directory_counter_349, param, 'directoryCounter', 'Lorg/apache/commons/io/file/Counters$AbstractPathCounters;.(Lorg/apache/commons/io/file/Counters$Counter;Lorg/apache/commons/io/file/Counters$Counter;Lorg/apache/commons/io/file/Counters$Counter;)V#directoryCounter#0#1').
name_ref(p_directory_filter_5, param, 'directoryFilter', 'Lorg/apache/commons/io/DirectoryWalker;.(Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;I)V#directoryFilter#0#0').
name_ref(p_dst_len_65, param, 'dstLen', 'Lorg/apache/commons/io/FileUtils;.checkEqualSizes(Ljava/io/File;Ljava/io/File;JJ)V|Ljava/io/IOException;#dstLen#0#3').
name_ref(p_encoding_177, param, 'encoding', 'Lorg/apache/commons/io/FileUtils;.lineIterator(Ljava/io/File;Ljava/lang/String;)Lorg/apache/commons/io/LineIterator;|Ljava/io/IOException;#encoding#0#1').
name_ref(p_encoding_207, param, 'encoding', 'Lorg/apache/commons/io/FileUtils;.readFileToString(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;|Ljava/io/IOException;#encoding#0#1').
name_ref(p_encoding_209, param, 'encoding', 'Lorg/apache/commons/io/FileUtils;.readFileToString(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;|Ljava/io/IOException;#encoding#0#1').
name_ref(p_encoding_212, param, 'encoding', 'Lorg/apache/commons/io/FileUtils;.readLines(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/util/List<Ljava/lang/String;>;|Ljava/io/IOException;#encoding#0#1').
name_ref(p_encoding_214, param, 'encoding', 'Lorg/apache/commons/io/FileUtils;.readLines(Ljava/io/File;Ljava/lang/String;)Ljava/util/List<Ljava/lang/String;>;|Ljava/io/IOException;#encoding#0#1').
name_ref(p_encoding_245, param, 'encoding', 'Lorg/apache/commons/io/FileUtils;.write(Ljava/io/File;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#encoding#0#2').
name_ref(p_encoding_248, param, 'encoding', 'Lorg/apache/commons/io/FileUtils;.write(Ljava/io/File;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;Z)V|Ljava/io/IOException;#encoding#0#2').
name_ref(p_encoding_252, param, 'encoding', 'Lorg/apache/commons/io/FileUtils;.write(Ljava/io/File;Ljava/lang/CharSequence;Ljava/lang/String;)V|Ljava/io/IOException;#encoding#0#2').
name_ref(p_encoding_255, param, 'encoding', 'Lorg/apache/commons/io/FileUtils;.write(Ljava/io/File;Ljava/lang/CharSequence;Ljava/lang/String;Z)V|Ljava/io/IOException;#encoding#0#2').
name_ref(p_encoding_284, param, 'encoding', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection<*>;)V|Ljava/io/IOException;#encoding#0#1').
name_ref(p_encoding_287, param, 'encoding', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection<*>;Z)V|Ljava/io/IOException;#encoding#0#1').
name_ref(p_encoding_291, param, 'encoding', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection<*>;Ljava/lang/String;)V|Ljava/io/IOException;#encoding#0#1').
name_ref(p_encoding_295, param, 'encoding', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection<*>;Ljava/lang/String;Z)V|Ljava/io/IOException;#encoding#0#1').
name_ref(p_encoding_306, param, 'encoding', 'Lorg/apache/commons/io/FileUtils;.writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#encoding#0#2').
name_ref(p_encoding_309, param, 'encoding', 'Lorg/apache/commons/io/FileUtils;.writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V|Ljava/io/IOException;#encoding#0#2').
name_ref(p_encoding_313, param, 'encoding', 'Lorg/apache/commons/io/FileUtils;.writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V|Ljava/io/IOException;#encoding#0#2').
name_ref(p_encoding_316, param, 'encoding', 'Lorg/apache/commons/io/FileUtils;.writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V|Ljava/io/IOException;#encoding#0#2').
name_ref(p_exclusion_list_133, param, 'exclusionList', 'Lorg/apache/commons/io/FileUtils;.doCopyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;ZLjava/util/List<Ljava/lang/String;>;)V|Ljava/io/IOException;#exclusionList#0#4').
name_ref(p_extensions_170, param, 'extensions', 'Lorg/apache/commons/io/FileUtils;.iterateFiles(Ljava/io/File;[Ljava/lang/String;Z)Ljava/util/Iterator<Ljava/io/File;>;#extensions#0#1').
name_ref(p_extensions_182, param, 'extensions', 'Lorg/apache/commons/io/FileUtils;.listFiles(Ljava/io/File;[Ljava/lang/String;Z)Ljava/util/Collection<Ljava/io/File;>;#extensions#0#1').
name_ref(p_extensions_227, param, 'extensions', 'Lorg/apache/commons/io/FileUtils;.toSuffixes([Ljava/lang/String;)[Ljava/lang/String;#extensions#0#0').
name_ref(p_f_0_393, param, 'f0', 'Lorg/apache/commons/io/testtools/TestUtils;.assertEqualContent(Ljava/io/File;Ljava/io/File;)V|Ljava/io/IOException;#f0#0#0').
name_ref(p_f_1_394, param, 'f1', 'Lorg/apache/commons/io/testtools/TestUtils;.assertEqualContent(Ljava/io/File;Ljava/io/File;)V|Ljava/io/IOException;#f1#0#1').
name_ref(p_f_337, param, 'f', 'Lorg/apache/commons/io/FileUtilsTestCase$103506;.renameTo(Ljava/io/File;)Z#f#0#0').
name_ref(p_f_338, param, 'f', 'Lorg/apache/commons/io/FileUtilsTestCase$104175;.renameTo(Ljava/io/File;)Z#f#0#0').
name_ref(p_file_126, param, 'file', 'Lorg/apache/commons/io/FileUtils;.deleteQuietly(Ljava/io/File;)Z#file#0#0').
name_ref(p_file_13, param, 'file', 'Lorg/apache/commons/io/DirectoryWalker;.checkIfCancelled(Ljava/io/File;ILjava/util/Collection<TT;>;)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_137, param, 'file', 'Lorg/apache/commons/io/FileUtils;.forceDelete(Ljava/io/File;)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_139, param, 'file', 'Lorg/apache/commons/io/FileUtils;.forceDeleteOnExit(Ljava/io/File;)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_141, param, 'file', 'Lorg/apache/commons/io/FileUtils;.forceMkdirParent(Ljava/io/File;)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_153, param, 'file', 'Lorg/apache/commons/io/FileUtils;.isFileNewer(Ljava/io/File;Ljava/util/Date;)Z#file#0#0').
name_ref(p_file_155, param, 'file', 'Lorg/apache/commons/io/FileUtils;.isFileNewer(Ljava/io/File;Ljava/io/File;)Z#file#0#0').
name_ref(p_file_157, param, 'file', 'Lorg/apache/commons/io/FileUtils;.isFileNewer(Ljava/io/File;J)Z#file#0#0').
name_ref(p_file_159, param, 'file', 'Lorg/apache/commons/io/FileUtils;.isFileOlder(Ljava/io/File;Ljava/util/Date;)Z#file#0#0').
name_ref(p_file_16, param, 'file', 'Lorg/apache/commons/io/DirectoryWalker;.handleIsCancelled(Ljava/io/File;ILjava/util/Collection<TT;>;)Z|Ljava/io/IOException;#file#0#0').
name_ref(p_file_161, param, 'file', 'Lorg/apache/commons/io/FileUtils;.isFileOlder(Ljava/io/File;Ljava/io/File;)Z#file#0#0').
name_ref(p_file_163, param, 'file', 'Lorg/apache/commons/io/FileUtils;.isFileOlder(Ljava/io/File;J)Z#file#0#0').
name_ref(p_file_165, param, 'file', 'Lorg/apache/commons/io/FileUtils;.isSymlink(Ljava/io/File;)Z#file#0#0').
name_ref(p_file_175, param, 'file', 'Lorg/apache/commons/io/FileUtils;.lineIterator(Ljava/io/File;)Lorg/apache/commons/io/LineIterator;|Ljava/io/IOException;#file#0#0').
name_ref(p_file_176, param, 'file', 'Lorg/apache/commons/io/FileUtils;.lineIterator(Ljava/io/File;Ljava/lang/String;)Lorg/apache/commons/io/LineIterator;|Ljava/io/IOException;#file#0#0').
name_ref(p_file_1_76, param, 'file1', 'Lorg/apache/commons/io/FileUtils;.contentEquals(Ljava/io/File;Ljava/io/File;)Z|Ljava/io/IOException;#file1#0#0').
name_ref(p_file_1_79, param, 'file1', 'Lorg/apache/commons/io/FileUtils;.contentEqualsIgnoreEOL(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z|Ljava/io/IOException;#file1#0#0').
name_ref(p_file_200, param, 'file', 'Lorg/apache/commons/io/FileUtils;.openInputStream(Ljava/io/File;)Ljava/io/FileInputStream;|Ljava/io/IOException;#file#0#0').
name_ref(p_file_201, param, 'file', 'Lorg/apache/commons/io/FileUtils;.openOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;|Ljava/io/IOException;#file#0#0').
name_ref(p_file_202, param, 'file', 'Lorg/apache/commons/io/FileUtils;.openOutputStream(Ljava/io/File;Z)Ljava/io/FileOutputStream;|Ljava/io/IOException;#file#0#0').
name_ref(p_file_204, param, 'file', 'Lorg/apache/commons/io/FileUtils;.readFileToByteArray(Ljava/io/File;)[B|Ljava/io/IOException;#file#0#0').
name_ref(p_file_205, param, 'file', 'Lorg/apache/commons/io/FileUtils;.readFileToString(Ljava/io/File;)Ljava/lang/String;|Ljava/io/IOException;#file#0#0').
name_ref(p_file_206, param, 'file', 'Lorg/apache/commons/io/FileUtils;.readFileToString(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;|Ljava/io/IOException;#file#0#0').
name_ref(p_file_208, param, 'file', 'Lorg/apache/commons/io/FileUtils;.readFileToString(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;|Ljava/io/IOException;#file#0#0').
name_ref(p_file_210, param, 'file', 'Lorg/apache/commons/io/FileUtils;.readLines(Ljava/io/File;)Ljava/util/List<Ljava/lang/String;>;|Ljava/io/IOException;#file#0#0').
name_ref(p_file_211, param, 'file', 'Lorg/apache/commons/io/FileUtils;.readLines(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/util/List<Ljava/lang/String;>;|Ljava/io/IOException;#file#0#0').
name_ref(p_file_213, param, 'file', 'Lorg/apache/commons/io/FileUtils;.readLines(Ljava/io/File;Ljava/lang/String;)Ljava/util/List<Ljava/lang/String;>;|Ljava/io/IOException;#file#0#0').
name_ref(p_file_217, param, 'file', 'Lorg/apache/commons/io/FileUtils;.sizeOf(Ljava/io/File;)J#file#0#0').
name_ref(p_file_218, param, 'file', 'Lorg/apache/commons/io/FileUtils;.sizeOf0(Ljava/io/File;)J#file#0#0').
name_ref(p_file_219, param, 'file', 'Lorg/apache/commons/io/FileUtils;.sizeOfAsBigInteger(Ljava/io/File;)Ljava/math/BigInteger;#file#0#0').
name_ref(p_file_228, param, 'file', 'Lorg/apache/commons/io/FileUtils;.touch(Ljava/io/File;)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_236, param, 'file', 'Lorg/apache/commons/io/FileUtils;.waitFor(Ljava/io/File;I)Z#file#0#0').
name_ref(p_file_238, param, 'file', 'Lorg/apache/commons/io/FileUtils;.write(Ljava/io/File;Ljava/lang/CharSequence;)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_240, param, 'file', 'Lorg/apache/commons/io/FileUtils;.write(Ljava/io/File;Ljava/lang/CharSequence;Z)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_243, param, 'file', 'Lorg/apache/commons/io/FileUtils;.write(Ljava/io/File;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_246, param, 'file', 'Lorg/apache/commons/io/FileUtils;.write(Ljava/io/File;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;Z)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_250, param, 'file', 'Lorg/apache/commons/io/FileUtils;.write(Ljava/io/File;Ljava/lang/CharSequence;Ljava/lang/String;)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_253, param, 'file', 'Lorg/apache/commons/io/FileUtils;.write(Ljava/io/File;Ljava/lang/CharSequence;Ljava/lang/String;Z)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_257, param, 'file', 'Lorg/apache/commons/io/FileUtils;.writeByteArrayToFile(Ljava/io/File;[B)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_259, param, 'file', 'Lorg/apache/commons/io/FileUtils;.writeByteArrayToFile(Ljava/io/File;[BZ)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_262, param, 'file', 'Lorg/apache/commons/io/FileUtils;.writeByteArrayToFile(Ljava/io/File;[BII)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_266, param, 'file', 'Lorg/apache/commons/io/FileUtils;.writeByteArrayToFile(Ljava/io/File;[BIIZ)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_271, param, 'file', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/util/Collection<*>;)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_273, param, 'file', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/util/Collection<*>;Z)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_276, param, 'file', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/util/Collection<*>;Ljava/lang/String;)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_279, param, 'file', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/util/Collection<*>;Ljava/lang/String;Z)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_283, param, 'file', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection<*>;)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_286, param, 'file', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection<*>;Z)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_290, param, 'file', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection<*>;Ljava/lang/String;)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_294, param, 'file', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection<*>;Ljava/lang/String;Z)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_299, param, 'file', 'Lorg/apache/commons/io/FileUtils;.writeStringToFile(Ljava/io/File;Ljava/lang/String;)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_2_77, param, 'file2', 'Lorg/apache/commons/io/FileUtils;.contentEquals(Ljava/io/File;Ljava/io/File;)Z|Ljava/io/IOException;#file2#0#1').
name_ref(p_file_2_80, param, 'file2', 'Lorg/apache/commons/io/FileUtils;.contentEqualsIgnoreEOL(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z|Ljava/io/IOException;#file2#0#1').
name_ref(p_file_301, param, 'file', 'Lorg/apache/commons/io/FileUtils;.writeStringToFile(Ljava/io/File;Ljava/lang/String;Z)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_304, param, 'file', 'Lorg/apache/commons/io/FileUtils;.writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_307, param, 'file', 'Lorg/apache/commons/io/FileUtils;.writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_311, param, 'file', 'Lorg/apache/commons/io/FileUtils;.writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_314, param, 'file', 'Lorg/apache/commons/io/FileUtils;.writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_33, param, 'file', 'Lorg/apache/commons/io/DirectoryWalker;.handleFile(Ljava/io/File;ILjava/util/Collection<TT;>;)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_333, param, 'file', 'Lorg/apache/commons/io/FileUtilsTestCase;.createCircularSymLink(Ljava/io/File;)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_345, param, 'file', 'Lorg/apache/commons/io/FileUtilsTestCase$ListDirectoryWalker;.handleFile(Ljava/io/File;ILjava/util/Collection<Ljava/io/File;>;)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_368, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.deleteFile(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#file#0#0').
name_ref(p_file_373, param, 'file', 'Lorg/apache/commons/io/file/PathUtils;.isEmptyFile(Ljava/nio/file/Path;)Z|Ljava/io/IOException;#file#0#0').
name_ref(p_file_381, param, 'file', 'Lorg/apache/commons/io/testtools/TestUtils;.createFile(Ljava/io/File;J)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_387, param, 'file', 'Lorg/apache/commons/io/testtools/TestUtils;.createLineBasedFile(Ljava/io/File;[Ljava/lang/String;)V|Ljava/io/IOException;#file#0#0').
name_ref(p_file_391, param, 'file', 'Lorg/apache/commons/io/testtools/TestUtils;.checkFile(Ljava/io/File;Ljava/io/File;)V|Ljava/lang/Exception;#file#0#0').
name_ref(p_file_396, param, 'file', 'Lorg/apache/commons/io/testtools/TestUtils;.assertEqualContent([BLjava/io/File;)V|Ljava/io/IOException;#file#0#1').
name_ref(p_file_398, param, 'file', 'Lorg/apache/commons/io/testtools/TestUtils;.assertEqualContent([CLjava/io/File;)V|Ljava/io/IOException;#file#0#1').
name_ref(p_file_401, param, 'file', 'Lorg/apache/commons/io/testtools/TestUtils;.deleteFile(Ljava/io/File;)V|Ljava/lang/Exception;#file#0#0').
name_ref(p_file_43, param, 'file', 'Lorg/apache/commons/io/DirectoryWalker$CancelException;.(Ljava/io/File;I)V#file#0#0').
name_ref(p_file_46, param, 'file', 'Lorg/apache/commons/io/DirectoryWalker$CancelException;.(Ljava/lang/String;Ljava/io/File;I)V#file#0#1').
name_ref(p_file_68, param, 'file', 'Lorg/apache/commons/io/FileUtils;.checksum(Ljava/io/File;Ljava/util/zip/Checksum;)Ljava/util/zip/Checksum;|Ljava/io/IOException;#file#0#0').
name_ref(p_file_70, param, 'file', 'Lorg/apache/commons/io/FileUtils;.checksumCRC32(Ljava/io/File;)J|Ljava/io/IOException;#file#0#0').
name_ref(p_file_counter_350, param, 'fileCounter', 'Lorg/apache/commons/io/file/Counters$AbstractPathCounters;.(Lorg/apache/commons/io/file/Counters$Counter;Lorg/apache/commons/io/file/Counters$Counter;Lorg/apache/commons/io/file/Counters$Counter;)V#fileCounter#0#2').
name_ref(p_file_filter_150, param, 'fileFilter', 'Lorg/apache/commons/io/FileUtils;.innerListFilesOrDirectories(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;Z)Ljava/util/Collection<Ljava/io/File;>;#fileFilter#0#1').
name_ref(p_file_filter_167, param, 'fileFilter', 'Lorg/apache/commons/io/FileUtils;.iterateFiles(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Iterator<Ljava/io/File;>;#fileFilter#0#1').
name_ref(p_file_filter_173, param, 'fileFilter', 'Lorg/apache/commons/io/FileUtils;.iterateFilesAndDirs(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Iterator<Ljava/io/File;>;#fileFilter#0#1').
name_ref(p_file_filter_179, param, 'fileFilter', 'Lorg/apache/commons/io/FileUtils;.listFiles(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Collection<Ljava/io/File;>;#fileFilter#0#1').
name_ref(p_file_filter_185, param, 'fileFilter', 'Lorg/apache/commons/io/FileUtils;.listFilesAndDirs(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Collection<Ljava/io/File;>;#fileFilter#0#1').
name_ref(p_file_filter_216, param, 'fileFilter', 'Lorg/apache/commons/io/FileUtils;.setUpEffectiveFileFilter(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;#fileFilter#0#0').
name_ref(p_file_filter_231, param, 'fileFilter', 'Lorg/apache/commons/io/FileUtils;.validateListFilesParameters(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;)V#fileFilter#0#1').
name_ref(p_file_filter_6, param, 'fileFilter', 'Lorg/apache/commons/io/DirectoryWalker;.(Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;I)V#fileFilter#0#1').
name_ref(p_file_or_dir_220, param, 'fileOrDir', 'Lorg/apache/commons/io/FileUtils;.sizeOfBig0(Ljava/io/File;)Ljava/math/BigInteger;#fileOrDir#0#0').
name_ref(p_filename_390, param, 'filename', 'Lorg/apache/commons/io/testtools/TestUtils;.newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;|Ljava/io/IOException;#filename#0#1').
name_ref(p_files_145, param, 'files', 'Lorg/apache/commons/io/FileUtils;.innerListFiles(Ljava/util/Collection<Ljava/io/File;>;Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Z)V#files#0#0').
name_ref(p_files_229, param, 'files', 'Lorg/apache/commons/io/FileUtils;.toURLs([Ljava/io/File;)[Ljava/net/URL;|Ljava/io/IOException;#files#0#0').
name_ref(p_files_32, param, 'files', 'Lorg/apache/commons/io/DirectoryWalker;.filterDirectoryContents(Ljava/io/File;I[Ljava/io/File;)[Ljava/io/File;|Ljava/io/IOException;#files#0#2').
name_ref(p_files_82, param, 'files', 'Lorg/apache/commons/io/FileUtils;.convertFileCollectionToFileArray(Ljava/util/Collection<Ljava/io/File;>;)[Ljava/io/File;#files#0#0').
name_ref(p_filter_1, param, 'filter', 'Lorg/apache/commons/io/DirectoryWalker;.(Ljava/io/FileFilter;I)V#filter#0#0').
name_ref(p_filter_131, param, 'filter', 'Lorg/apache/commons/io/FileUtils;.doCopyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;ZLjava/util/List<Ljava/lang/String;>;)V|Ljava/io/IOException;#filter#0#2').
name_ref(p_filter_147, param, 'filter', 'Lorg/apache/commons/io/FileUtils;.innerListFiles(Ljava/util/Collection<Ljava/io/File;>;Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Z)V#filter#0#2').
name_ref(p_filter_90, param, 'filter', 'Lorg/apache/commons/io/FileUtils;.copyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;)V|Ljava/io/IOException;#filter#0#2').
name_ref(p_filter_93, param, 'filter', 'Lorg/apache/commons/io/FileUtils;.copyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;Z)V|Ljava/io/IOException;#filter#0#2').
name_ref(p_first_377, param, 'first', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/lang/String;[Ljava/lang/String;)TT;|Ljava/io/IOException;#first#0#1').
name_ref(p_grand_parent_dir_334, param, 'grandParentDir', 'Lorg/apache/commons/io/FileUtilsTestCase;.createFilesForTestCopyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V|Ljava/lang/Exception;#grandParentDir#0#0').
name_ref(p_include_sub_directories_148, param, 'includeSubDirectories', 'Lorg/apache/commons/io/FileUtils;.innerListFiles(Ljava/util/Collection<Ljava/io/File;>;Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Z)V#includeSubDirectories#0#3').
name_ref(p_include_sub_directories_152, param, 'includeSubDirectories', 'Lorg/apache/commons/io/FileUtils;.innerListFilesOrDirectories(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;Z)Ljava/util/Collection<Ljava/io/File;>;#includeSubDirectories#0#3').
name_ref(p_input_102, param, 'input', 'Lorg/apache/commons/io/FileUtils;.copyFile(Ljava/io/File;Ljava/io/OutputStream;)J|Ljava/io/IOException;#input#0#0').
name_ref(p_len_265, param, 'len', 'Lorg/apache/commons/io/FileUtils;.writeByteArrayToFile(Ljava/io/File;[BII)V|Ljava/io/IOException;#len#0#3').
name_ref(p_len_269, param, 'len', 'Lorg/apache/commons/io/FileUtils;.writeByteArrayToFile(Ljava/io/File;[BIIZ)V|Ljava/io/IOException;#len#0#3').
name_ref(p_line_ending_278, param, 'lineEnding', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/util/Collection<*>;Ljava/lang/String;)V|Ljava/io/IOException;#lineEnding#0#2').
name_ref(p_line_ending_281, param, 'lineEnding', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/util/Collection<*>;Ljava/lang/String;Z)V|Ljava/io/IOException;#lineEnding#0#2').
name_ref(p_line_ending_293, param, 'lineEnding', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection<*>;Ljava/lang/String;)V|Ljava/io/IOException;#lineEnding#0#3').
name_ref(p_line_ending_297, param, 'lineEnding', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection<*>;Ljava/lang/String;Z)V|Ljava/io/IOException;#lineEnding#0#3').
name_ref(p_lines_272, param, 'lines', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/util/Collection<*>;)V|Ljava/io/IOException;#lines#0#1').
name_ref(p_lines_274, param, 'lines', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/util/Collection<*>;Z)V|Ljava/io/IOException;#lines#0#1').
name_ref(p_lines_277, param, 'lines', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/util/Collection<*>;Ljava/lang/String;)V|Ljava/io/IOException;#lines#0#1').
name_ref(p_lines_280, param, 'lines', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/util/Collection<*>;Ljava/lang/String;Z)V|Ljava/io/IOException;#lines#0#1').
name_ref(p_lines_285, param, 'lines', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection<*>;)V|Ljava/io/IOException;#lines#0#2').
name_ref(p_lines_288, param, 'lines', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection<*>;Z)V|Ljava/io/IOException;#lines#0#2').
name_ref(p_lines_292, param, 'lines', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection<*>;Ljava/lang/String;)V|Ljava/io/IOException;#lines#0#2').
name_ref(p_lines_296, param, 'lines', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection<*>;Ljava/lang/String;Z)V|Ljava/io/IOException;#lines#0#2').
name_ref(p_message_45, param, 'message', 'Lorg/apache/commons/io/DirectoryWalker$CancelException;.(Ljava/lang/String;Ljava/io/File;I)V#message#0#0').
name_ref(p_more_378, param, 'more', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/lang/String;[Ljava/lang/String;)TT;|Ljava/io/IOException;#more#0#2').
name_ref(p_ms_402, param, 'ms', 'Lorg/apache/commons/io/testtools/TestUtils;.sleep(J)V|Ljava/lang/InterruptedException;#ms#0#0').
name_ref(p_ms_403, param, 'ms', 'Lorg/apache/commons/io/testtools/TestUtils;.sleepQuietly(J)V#ms#0#0').
name_ref(p_names_143, param, 'names', 'Lorg/apache/commons/io/FileUtils;.getFile(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;#names#0#1').
name_ref(p_names_144, param, 'names', 'Lorg/apache/commons/io/FileUtils;.getFile([Ljava/lang/String;)Ljava/io/File;#names#0#0').
name_ref(p_off_264, param, 'off', 'Lorg/apache/commons/io/FileUtils;.writeByteArrayToFile(Ljava/io/File;[BII)V|Ljava/io/IOException;#off#0#2').
name_ref(p_off_268, param, 'off', 'Lorg/apache/commons/io/FileUtils;.writeByteArrayToFile(Ljava/io/File;[BIIZ)V|Ljava/io/IOException;#off#0#2').
name_ref(p_out_384, param, 'out', 'Lorg/apache/commons/io/testtools/TestUtils;.generateTestData(Ljava/io/OutputStream;J)V|Ljava/io/IOException;#out#0#0').
name_ref(p_output_103, param, 'output', 'Lorg/apache/commons/io/FileUtils;.copyFile(Ljava/io/File;Ljava/io/OutputStream;)J|Ljava/io/IOException;#output#0#1').
name_ref(p_output_399, param, 'output', 'Lorg/apache/commons/io/testtools/TestUtils;.checkWrite(Ljava/io/OutputStream;)V|Ljava/lang/Exception;#output#0#0').
name_ref(p_output_400, param, 'output', 'Lorg/apache/commons/io/testtools/TestUtils;.checkWrite(Ljava/io/Writer;)V|Ljava/lang/Exception;#output#0#0').
name_ref(p_parent_dir_335, param, 'parentDir', 'Lorg/apache/commons/io/FileUtilsTestCase;.createFilesForTestCopyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V|Ljava/lang/Exception;#parentDir#0#1').
name_ref(p_path_366, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.delete(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#path#0#0').
name_ref(p_path_371, param, 'path', 'Lorg/apache/commons/io/file/PathUtils;.isEmpty(Ljava/nio/file/Path;)Z|Ljava/io/IOException;#path#0#0').
name_ref(p_pathname_340, param, 'pathname', 'Lorg/apache/commons/io/FileUtilsTestCase$ShorterFile;.(Ljava/lang/String;)V#pathname#0#0').
name_ref(p_preserve_file_date_101, param, 'preserveFileDate', 'Lorg/apache/commons/io/FileUtils;.copyFile(Ljava/io/File;Ljava/io/File;Z)V|Ljava/io/IOException;#preserveFileDate#0#2').
name_ref(p_preserve_file_date_108, param, 'preserveFileDate', 'Lorg/apache/commons/io/FileUtils;.copyFileToDirectory(Ljava/io/File;Ljava/io/File;Z)V|Ljava/io/IOException;#preserveFileDate#0#2').
name_ref(p_preserve_file_date_132, param, 'preserveFileDate', 'Lorg/apache/commons/io/FileUtils;.doCopyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;ZLjava/util/List<Ljava/lang/String;>;)V|Ljava/io/IOException;#preserveFileDate#0#3').
name_ref(p_preserve_file_date_136, param, 'preserveFileDate', 'Lorg/apache/commons/io/FileUtils;.doCopyFile(Ljava/io/File;Ljava/io/File;Z)V|Ljava/io/IOException;#preserveFileDate#0#2').
name_ref(p_preserve_file_date_87, param, 'preserveFileDate', 'Lorg/apache/commons/io/FileUtils;.copyDirectory(Ljava/io/File;Ljava/io/File;Z)V|Ljava/io/IOException;#preserveFileDate#0#2').
name_ref(p_preserve_file_date_94, param, 'preserveFileDate', 'Lorg/apache/commons/io/FileUtils;.copyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;Z)V|Ljava/io/IOException;#preserveFileDate#0#3').
name_ref(p_read_timeout_122, param, 'readTimeout', 'Lorg/apache/commons/io/FileUtils;.copyURLToFile(Ljava/net/URL;Ljava/io/File;II)V|Ljava/io/IOException;#readTimeout#0#3').
name_ref(p_recursive_171, param, 'recursive', 'Lorg/apache/commons/io/FileUtils;.iterateFiles(Ljava/io/File;[Ljava/lang/String;Z)Ljava/util/Iterator<Ljava/io/File;>;#recursive#0#2').
name_ref(p_recursive_183, param, 'recursive', 'Lorg/apache/commons/io/FileUtils;.listFiles(Ljava/io/File;[Ljava/lang/String;Z)Ljava/util/Collection<Ljava/io/File;>;#recursive#0#2').
name_ref(p_reference_156, param, 'reference', 'Lorg/apache/commons/io/FileUtils;.isFileNewer(Ljava/io/File;Ljava/io/File;)Z#reference#0#1').
name_ref(p_reference_162, param, 'reference', 'Lorg/apache/commons/io/FileUtils;.isFileOlder(Ljava/io/File;Ljava/io/File;)Z#reference#0#1').
name_ref(p_reference_file_392, param, 'referenceFile', 'Lorg/apache/commons/io/testtools/TestUtils;.checkFile(Ljava/io/File;Ljava/io/File;)V|Ljava/lang/Exception;#referenceFile#0#1').
name_ref(p_results_12, param, 'results', 'Lorg/apache/commons/io/DirectoryWalker;.walk(Ljava/io/File;ILjava/util/Collection<TT;>;)V|Ljava/io/IOException;#results#0#2').
name_ref(p_results_15, param, 'results', 'Lorg/apache/commons/io/DirectoryWalker;.checkIfCancelled(Ljava/io/File;ILjava/util/Collection<TT;>;)V|Ljava/io/IOException;#results#0#2').
name_ref(p_results_18, param, 'results', 'Lorg/apache/commons/io/DirectoryWalker;.handleIsCancelled(Ljava/io/File;ILjava/util/Collection<TT;>;)Z|Ljava/io/IOException;#results#0#2').
name_ref(p_results_20, param, 'results', 'Lorg/apache/commons/io/DirectoryWalker;.handleCancelled(Ljava/io/File;Ljava/util/Collection<TT;>;Lorg/apache/commons/io/DirectoryWalker$CancelException;)V|Ljava/io/IOException;#results#0#1').
name_ref(p_results_23, param, 'results', 'Lorg/apache/commons/io/DirectoryWalker;.handleStart(Ljava/io/File;Ljava/util/Collection<TT;>;)V|Ljava/io/IOException;#results#0#1').
name_ref(p_results_26, param, 'results', 'Lorg/apache/commons/io/DirectoryWalker;.handleDirectory(Ljava/io/File;ILjava/util/Collection<TT;>;)Z|Ljava/io/IOException;#results#0#2').
name_ref(p_results_29, param, 'results', 'Lorg/apache/commons/io/DirectoryWalker;.handleDirectoryStart(Ljava/io/File;ILjava/util/Collection<TT;>;)V|Ljava/io/IOException;#results#0#2').
name_ref(p_results_344, param, 'results', 'Lorg/apache/commons/io/FileUtilsTestCase$ListDirectoryWalker;.handleDirectoryStart(Ljava/io/File;ILjava/util/Collection<Ljava/io/File;>;)V|Ljava/io/IOException;#results#0#2').
name_ref(p_results_347, param, 'results', 'Lorg/apache/commons/io/FileUtilsTestCase$ListDirectoryWalker;.handleFile(Ljava/io/File;ILjava/util/Collection<Ljava/io/File;>;)V|Ljava/io/IOException;#results#0#2').
name_ref(p_results_35, param, 'results', 'Lorg/apache/commons/io/DirectoryWalker;.handleFile(Ljava/io/File;ILjava/util/Collection<TT;>;)V|Ljava/io/IOException;#results#0#2').
name_ref(p_results_38, param, 'results', 'Lorg/apache/commons/io/DirectoryWalker;.handleRestricted(Ljava/io/File;ILjava/util/Collection<TT;>;)V|Ljava/io/IOException;#results#0#2').
name_ref(p_results_41, param, 'results', 'Lorg/apache/commons/io/DirectoryWalker;.handleDirectoryEnd(Ljava/io/File;ILjava/util/Collection<TT;>;)V|Ljava/io/IOException;#results#0#2').
name_ref(p_results_42, param, 'results', 'Lorg/apache/commons/io/DirectoryWalker;.handleEnd(Ljava/util/Collection<TT;>;)V|Ljava/io/IOException;#results#0#0').
name_ref(p_results_9, param, 'results', 'Lorg/apache/commons/io/DirectoryWalker;.walk(Ljava/io/File;Ljava/util/Collection<TT;>;)V|Ljava/io/IOException;#results#0#1').
name_ref(p_seconds_237, param, 'seconds', 'Lorg/apache/commons/io/FileUtils;.waitFor(Ljava/io/File;I)Z#seconds#0#1').
name_ref(p_size_382, param, 'size', 'Lorg/apache/commons/io/testtools/TestUtils;.createFile(Ljava/io/File;J)V|Ljava/io/IOException;#size#0#1').
name_ref(p_size_383, param, 'size', 'Lorg/apache/commons/io/testtools/TestUtils;.generateTestData(J)[B#size#0#0').
name_ref(p_size_385, param, 'size', 'Lorg/apache/commons/io/testtools/TestUtils;.generateTestData(Ljava/io/OutputStream;J)V|Ljava/io/IOException;#size#0#1').
name_ref(p_size_59, param, 'size', 'Lorg/apache/commons/io/FileUtils;.byteCountToDisplaySize(Ljava/math/BigInteger;)Ljava/lang/String;#size#0#0').
name_ref(p_size_60, param, 'size', 'Lorg/apache/commons/io/FileUtils;.byteCountToDisplaySize(J)Ljava/lang/String;#size#0#0').
name_ref(p_source_109, param, 'source', 'Lorg/apache/commons/io/FileUtils;.copyInputStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V|Ljava/io/IOException;#source#0#0').
name_ref(p_source_115, param, 'source', 'Lorg/apache/commons/io/FileUtils;.copyToFile(Ljava/io/InputStream;Ljava/io/File;)V|Ljava/io/IOException;#source#0#0').
name_ref(p_source_117, param, 'source', 'Lorg/apache/commons/io/FileUtils;.copyURLToFile(Ljava/net/URL;Ljava/io/File;)V|Ljava/io/IOException;#source#0#0').
name_ref(p_source_119, param, 'source', 'Lorg/apache/commons/io/FileUtils;.copyURLToFile(Ljava/net/URL;Ljava/io/File;II)V|Ljava/io/IOException;#source#0#0').
name_ref(p_source_directory_359, param, 'sourceDirectory', 'Lorg/apache/commons/io/file/PathUtils;.copyDirectory(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#sourceDirectory#0#0').
name_ref(p_source_file_362, param, 'sourceFile', 'Lorg/apache/commons/io/file/PathUtils;.copyFileToDirectory(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#sourceFile#0#0').
name_ref(p_src_111, param, 'src', 'Lorg/apache/commons/io/FileUtils;.copyToDirectory(Ljava/io/File;Ljava/io/File;)V|Ljava/io/IOException;#src#0#0').
name_ref(p_src_189, param, 'src', 'Lorg/apache/commons/io/FileUtils;.moveDirectoryToDirectory(Ljava/io/File;Ljava/io/File;Z)V|Ljava/io/IOException;#src#0#0').
name_ref(p_src_197, param, 'src', 'Lorg/apache/commons/io/FileUtils;.moveToDirectory(Ljava/io/File;Ljava/io/File;Z)V|Ljava/io/IOException;#src#0#0').
name_ref(p_src_232, param, 'src', 'Lorg/apache/commons/io/FileUtils;.validateMoveParameters(Ljava/io/File;Ljava/io/File;)V|Ljava/io/FileNotFoundException;#src#0#0').
name_ref(p_src_66, param, 'src', 'Lorg/apache/commons/io/FileUtils;.checkFileRequirements(Ljava/io/File;Ljava/io/File;)V|Ljava/io/FileNotFoundException;#src#0#0').
name_ref(p_src_dir_129, param, 'srcDir', 'Lorg/apache/commons/io/FileUtils;.doCopyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;ZLjava/util/List<Ljava/lang/String;>;)V|Ljava/io/IOException;#srcDir#0#0').
name_ref(p_src_dir_187, param, 'srcDir', 'Lorg/apache/commons/io/FileUtils;.moveDirectory(Ljava/io/File;Ljava/io/File;)V|Ljava/io/IOException;#srcDir#0#0').
name_ref(p_src_dir_83, param, 'srcDir', 'Lorg/apache/commons/io/FileUtils;.copyDirectory(Ljava/io/File;Ljava/io/File;)V|Ljava/io/IOException;#srcDir#0#0').
name_ref(p_src_dir_85, param, 'srcDir', 'Lorg/apache/commons/io/FileUtils;.copyDirectory(Ljava/io/File;Ljava/io/File;Z)V|Ljava/io/IOException;#srcDir#0#0').
name_ref(p_src_dir_88, param, 'srcDir', 'Lorg/apache/commons/io/FileUtils;.copyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;)V|Ljava/io/IOException;#srcDir#0#0').
name_ref(p_src_dir_91, param, 'srcDir', 'Lorg/apache/commons/io/FileUtils;.copyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;Z)V|Ljava/io/IOException;#srcDir#0#0').
name_ref(p_src_dir_95, param, 'srcDir', 'Lorg/apache/commons/io/FileUtils;.copyDirectoryToDirectory(Ljava/io/File;Ljava/io/File;)V|Ljava/io/IOException;#srcDir#0#0').
name_ref(p_src_file_104, param, 'srcFile', 'Lorg/apache/commons/io/FileUtils;.copyFileToDirectory(Ljava/io/File;Ljava/io/File;)V|Ljava/io/IOException;#srcFile#0#0').
name_ref(p_src_file_106, param, 'srcFile', 'Lorg/apache/commons/io/FileUtils;.copyFileToDirectory(Ljava/io/File;Ljava/io/File;Z)V|Ljava/io/IOException;#srcFile#0#0').
name_ref(p_src_file_134, param, 'srcFile', 'Lorg/apache/commons/io/FileUtils;.doCopyFile(Ljava/io/File;Ljava/io/File;Z)V|Ljava/io/IOException;#srcFile#0#0').
name_ref(p_src_file_192, param, 'srcFile', 'Lorg/apache/commons/io/FileUtils;.moveFile(Ljava/io/File;Ljava/io/File;)V|Ljava/io/IOException;#srcFile#0#0').
name_ref(p_src_file_194, param, 'srcFile', 'Lorg/apache/commons/io/FileUtils;.moveFileToDirectory(Ljava/io/File;Ljava/io/File;Z)V|Ljava/io/IOException;#srcFile#0#0').
name_ref(p_src_file_62, param, 'srcFile', 'Lorg/apache/commons/io/FileUtils;.checkEqualSizes(Ljava/io/File;Ljava/io/File;JJ)V|Ljava/io/IOException;#srcFile#0#0').
name_ref(p_src_file_97, param, 'srcFile', 'Lorg/apache/commons/io/FileUtils;.copyFile(Ljava/io/File;Ljava/io/File;)V|Ljava/io/IOException;#srcFile#0#0').
name_ref(p_src_file_99, param, 'srcFile', 'Lorg/apache/commons/io/FileUtils;.copyFile(Ljava/io/File;Ljava/io/File;Z)V|Ljava/io/IOException;#srcFile#0#0').
name_ref(p_src_len_64, param, 'srcLen', 'Lorg/apache/commons/io/FileUtils;.checkEqualSizes(Ljava/io/File;Ljava/io/File;JJ)V|Ljava/io/IOException;#srcLen#0#2').
name_ref(p_srcs_113, param, 'srcs', 'Lorg/apache/commons/io/FileUtils;.copyToDirectory(Ljava/lang/Iterable<Ljava/io/File;>;Ljava/io/File;)V|Ljava/io/IOException;#srcs#0#0').
name_ref(p_start_directory_19, param, 'startDirectory', 'Lorg/apache/commons/io/DirectoryWalker;.handleCancelled(Ljava/io/File;Ljava/util/Collection<TT;>;Lorg/apache/commons/io/DirectoryWalker$CancelException;)V|Ljava/io/IOException;#startDirectory#0#0').
name_ref(p_start_directory_22, param, 'startDirectory', 'Lorg/apache/commons/io/DirectoryWalker;.handleStart(Ljava/io/File;Ljava/util/Collection<TT;>;)V|Ljava/io/IOException;#startDirectory#0#0').
name_ref(p_start_directory_341, param, 'startDirectory', 'Lorg/apache/commons/io/FileUtilsTestCase$ListDirectoryWalker;.list(Ljava/io/File;)Ljava/util/List<Ljava/io/File;>;|Ljava/io/IOException;#startDirectory#0#0').
name_ref(p_start_directory_8, param, 'startDirectory', 'Lorg/apache/commons/io/DirectoryWalker;.walk(Ljava/io/File;Ljava/util/Collection<TT;>;)V|Ljava/io/IOException;#startDirectory#0#0').
name_ref(p_target_directory_360, param, 'targetDirectory', 'Lorg/apache/commons/io/file/PathUtils;.copyDirectory(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;#targetDirectory#0#1').
name_ref(p_target_directory_363, param, 'targetDirectory', 'Lorg/apache/commons/io/file/PathUtils;.copyFileToDirectory(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;|Ljava/io/IOException;#targetDirectory#0#1').
name_ref(p_test_directory_389, param, 'testDirectory', 'Lorg/apache/commons/io/testtools/TestUtils;.newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;|Ljava/io/IOException;#testDirectory#0#0').
name_ref(p_time_millis_158, param, 'timeMillis', 'Lorg/apache/commons/io/FileUtils;.isFileNewer(Ljava/io/File;J)Z#timeMillis#0#1').
name_ref(p_time_millis_164, param, 'timeMillis', 'Lorg/apache/commons/io/FileUtils;.isFileOlder(Ljava/io/File;J)Z#timeMillis#0#1').
name_ref(p_uri_380, param, 'uri', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/net/URI;)TT;|Ljava/io/IOException;#uri#0#1').
name_ref(p_url_123, param, 'url', 'Lorg/apache/commons/io/FileUtils;.decodeUrl(Ljava/lang/String;)Ljava/lang/String;#url#0#0').
name_ref(p_url_225, param, 'url', 'Lorg/apache/commons/io/FileUtils;.toFile(Ljava/net/URL;)Ljava/io/File;#url#0#0').
name_ref(p_urls_226, param, 'urls', 'Lorg/apache/commons/io/FileUtils;.toFiles([Ljava/net/URL;)[Ljava/io/File;#urls#0#0').
name_ref(p_val_354, param, 'val', 'Lorg/apache/commons/io/file/Counters$BigIntegerCounter;.add(J)V#val#0#0').
name_ref(p_val_355, param, 'val', 'Lorg/apache/commons/io/file/Counters$Counter;.add(J)V#val#0#0').
name_ref(p_visitor_374, param, 'visitor', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/nio/file/Path;)TT;|Ljava/io/IOException;#visitor#0#0').
name_ref(p_visitor_376, param, 'visitor', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/lang/String;[Ljava/lang/String;)TT;|Ljava/io/IOException;#visitor#0#0').
name_ref(p_visitor_379, param, 'visitor', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/net/URI;)TT;|Ljava/io/IOException;#visitor#0#0').
name_ref(f_byte_counter_351, field, 'byteCounter', 'Lorg/apache/commons/io/file/Counters$AbstractPathCounters;.byteCounter)Lorg/apache/commons/io/file/Counters$Counter;').
name_ref(f_depth_limit_4, field, 'depthLimit', 'Lorg/apache/commons/io/DirectoryWalker<Lorg/apache/commons/io/DirectoryWalker;:TT;>;.depthLimit)I').
name_ref(f_directory_counter_352, field, 'directoryCounter', 'Lorg/apache/commons/io/file/Counters$AbstractPathCounters;.directoryCounter)Lorg/apache/commons/io/file/Counters$Counter;').
name_ref(f_empty_file_array_58, field, 'EMPTY_FILE_ARRAY', 'Lorg/apache/commons/io/FileUtils;.EMPTY_FILE_ARRAY)[Ljava/io/File;').
name_ref(f_file_counter_353, field, 'fileCounter', 'Lorg/apache/commons/io/file/Counters$AbstractPathCounters;.fileCounter)Lorg/apache/commons/io/file/Counters$Counter;').
name_ref(f_filter_3, field, 'filter', 'Lorg/apache/commons/io/DirectoryWalker<Lorg/apache/commons/io/DirectoryWalker;:TT;>;.filter)Ljava/io/FileFilter;').
name_ref(f_list_walker_320, field, 'LIST_WALKER', 'Lorg/apache/commons/io/FileUtilsTestCase;.LIST_WALKER)Lorg/apache/commons/io/FileUtilsTestCase$ListDirectoryWalker;').
name_ref(f_one_eb_56, field, 'ONE_EB', 'Lorg/apache/commons/io/FileUtils;.ONE_EB)J').
name_ref(f_one_eb_bi_54, field, 'ONE_EB_BI', 'Lorg/apache/commons/io/FileUtils;.ONE_EB_BI)Ljava/math/BigInteger;').
name_ref(f_one_gb_bi_51, field, 'ONE_GB_BI', 'Lorg/apache/commons/io/FileUtils;.ONE_GB_BI)Ljava/math/BigInteger;').
name_ref(f_one_kb_49, field, 'ONE_KB', 'Lorg/apache/commons/io/FileUtils;.ONE_KB)J').
name_ref(f_one_kb_bi_48, field, 'ONE_KB_BI', 'Lorg/apache/commons/io/FileUtils;.ONE_KB_BI)Ljava/math/BigInteger;').
name_ref(f_one_mb_bi_50, field, 'ONE_MB_BI', 'Lorg/apache/commons/io/FileUtils;.ONE_MB_BI)Ljava/math/BigInteger;').
name_ref(f_one_pb_bi_53, field, 'ONE_PB_BI', 'Lorg/apache/commons/io/FileUtils;.ONE_PB_BI)Ljava/math/BigInteger;').
name_ref(f_one_tb_bi_52, field, 'ONE_TB_BI', 'Lorg/apache/commons/io/FileUtils;.ONE_TB_BI)Ljava/math/BigInteger;').
name_ref(f_one_yb_57, field, 'ONE_YB', 'Lorg/apache/commons/io/FileUtils;.ONE_YB)Ljava/math/BigInteger;').
name_ref(f_one_zb_55, field, 'ONE_ZB', 'Lorg/apache/commons/io/FileUtils;.ONE_ZB)Ljava/math/BigInteger;').
name_ref(f_temporary_folder_322, field, 'temporaryFolder', 'Lorg/apache/commons/io/FileUtilsTestCase;.temporaryFolder)Ljava/io/File;').
name_ref(f_test_directory_size_bi_318, field, 'TEST_DIRECTORY_SIZE_BI', 'Lorg/apache/commons/io/FileUtilsTestCase;.TEST_DIRECTORY_SIZE_BI)Ljava/math/BigInteger;').
name_ref(f_test_directory_size_gt_zero_bi_319, field, 'TEST_DIRECTORY_SIZE_GT_ZERO_BI', 'Lorg/apache/commons/io/FileUtilsTestCase;.TEST_DIRECTORY_SIZE_GT_ZERO_BI)Ljava/math/BigInteger;').
name_ref(f_test_file1_321, field, 'testFile1', 'Lorg/apache/commons/io/FileUtilsTestCase;.testFile1)Ljava/io/File;').
name_ref(f_test_file1_size_324, field, 'testFile1Size', 'Lorg/apache/commons/io/FileUtilsTestCase;.testFile1Size)I').
name_ref(f_test_file2_323, field, 'testFile2', 'Lorg/apache/commons/io/FileUtilsTestCase;.testFile2)Ljava/io/File;').
name_ref(f_test_file2_size_325, field, 'testFile2Size', 'Lorg/apache/commons/io/FileUtilsTestCase;.testFile2Size)I').
name_ref(f_value_357, field, 'value', 'Lorg/apache/commons/io/file/Counters$LongCounter;.value)J').
name_ref(m_abstract_path_counters_319, method, 'AbstractPathCounters', 'Lorg/apache/commons/io/file/Counters$AbstractPathCounters;.(Lorg/apache/commons/io/file/Counters$Counter;Lorg/apache/commons/io/file/Counters$Counter;Lorg/apache/commons/io/file/Counters$Counter;)V').
name_ref(m_add_325, method, 'add', 'Lorg/apache/commons/io/file/Counters$BigIntegerCounter;.add(J)V').
name_ref(m_add_332, method, 'add', 'Lorg/apache/commons/io/file/Counters$Counter;.add(J)V').
name_ref(m_add_336, method, 'add', 'Lorg/apache/commons/io/file/Counters$LongCounter;.add(J)V').
name_ref(m_assert_equal_content_372, method, 'assertEqualContent', 'Lorg/apache/commons/io/testtools/TestUtils;.assertEqualContent(Ljava/io/File;Ljava/io/File;)V|Ljava/io/IOException;').
name_ref(m_assert_equal_content_373, method, 'assertEqualContent', 'Lorg/apache/commons/io/testtools/TestUtils;.assertEqualContent([BLjava/io/File;)V|Ljava/io/IOException;').
name_ref(m_assert_equal_content_374, method, 'assertEqualContent', 'Lorg/apache/commons/io/testtools/TestUtils;.assertEqualContent([CLjava/io/File;)V|Ljava/io/IOException;').
name_ref(m_assert_true_200, method, 'assertTrue', 'Lorg/junit/jupiter/api/Assertions;.assertTrue(Z)V').
name_ref(m_big_integer_counter_345, method, 'bigIntegerCounter', 'Lorg/apache/commons/io/file/Counters;.bigIntegerCounter()Lorg/apache/commons/io/file/Counters$Counter;').
name_ref(m_big_integer_path_counters_331, method, 'BigIntegerPathCounters', 'Lorg/apache/commons/io/file/Counters$BigIntegerPathCounters;.()V').
name_ref(m_big_integer_path_counters_346, method, 'bigIntegerPathCounters', 'Lorg/apache/commons/io/file/Counters;.bigIntegerPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;').
name_ref(m_byte_count_to_display_size_23, method, 'byteCountToDisplaySize', 'Lorg/apache/commons/io/FileUtils;.byteCountToDisplaySize(Ljava/math/BigInteger;)Ljava/lang/String;').
name_ref(m_byte_count_to_display_size_24, method, 'byteCountToDisplaySize', 'Lorg/apache/commons/io/FileUtils;.byteCountToDisplaySize(J)Ljava/lang/String;').
name_ref(m_cancel_exception_17, method, 'CancelException', 'Lorg/apache/commons/io/DirectoryWalker$CancelException;.(Ljava/io/File;I)V').
name_ref(m_cancel_exception_18, method, 'CancelException', 'Lorg/apache/commons/io/DirectoryWalker$CancelException;.(Ljava/lang/String;Ljava/io/File;I)V').
name_ref(m_check_directory_25, method, 'checkDirectory', 'Lorg/apache/commons/io/FileUtils;.checkDirectory(Ljava/io/File;)V').
name_ref(m_check_equal_sizes_26, method, 'checkEqualSizes', 'Lorg/apache/commons/io/FileUtils;.checkEqualSizes(Ljava/io/File;Ljava/io/File;JJ)V|Ljava/io/IOException;').
name_ref(m_check_file_371, method, 'checkFile', 'Lorg/apache/commons/io/testtools/TestUtils;.checkFile(Ljava/io/File;Ljava/io/File;)V|Ljava/lang/Exception;').
name_ref(m_check_file_requirements_27, method, 'checkFileRequirements', 'Lorg/apache/commons/io/FileUtils;.checkFileRequirements(Ljava/io/File;Ljava/io/File;)V|Ljava/io/FileNotFoundException;').
name_ref(m_check_if_cancelled_6, method, 'checkIfCancelled', 'Lorg/apache/commons/io/DirectoryWalker;.checkIfCancelled(Ljava/io/File;ILjava/util/Collection<TT;>;)V|Ljava/io/IOException;').
name_ref(m_check_write_375, method, 'checkWrite', 'Lorg/apache/commons/io/testtools/TestUtils;.checkWrite(Ljava/io/OutputStream;)V|Ljava/lang/Exception;').
name_ref(m_check_write_376, method, 'checkWrite', 'Lorg/apache/commons/io/testtools/TestUtils;.checkWrite(Ljava/io/Writer;)V|Ljava/lang/Exception;').
name_ref(m_checksum_28, method, 'checksum', 'Lorg/apache/commons/io/FileUtils;.checksum(Ljava/io/File;Ljava/util/zip/Checksum;)Ljava/util/zip/Checksum;|Ljava/io/IOException;').
name_ref(m_checksum_crc32_29, method, 'checksumCRC32', 'Lorg/apache/commons/io/FileUtils;.checksumCRC32(Ljava/io/File;)J|Ljava/io/IOException;').
name_ref(m_clean_directory_30, method, 'cleanDirectory', 'Lorg/apache/commons/io/FileUtils;.cleanDirectory(Ljava/io/File;)V|Ljava/io/IOException;').
name_ref(m_clean_directory_349, method, 'cleanDirectory', 'Lorg/apache/commons/io/file/PathUtils;.cleanDirectory(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;').
name_ref(m_clean_directory_on_exit_33, method, 'cleanDirectoryOnExit', 'Lorg/apache/commons/io/FileUtils;.cleanDirectoryOnExit(Ljava/io/File;)V|Ljava/io/IOException;').
name_ref(m_content_equals_34, method, 'contentEquals', 'Lorg/apache/commons/io/FileUtils;.contentEquals(Ljava/io/File;Ljava/io/File;)Z|Ljava/io/IOException;').
name_ref(m_content_equals_ignore_eol_36, method, 'contentEqualsIgnoreEOL', 'Lorg/apache/commons/io/FileUtils;.contentEqualsIgnoreEOL(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z|Ljava/io/IOException;').
name_ref(m_convert_file_collection_to_file_array_37, method, 'convertFileCollectionToFileArray', 'Lorg/apache/commons/io/FileUtils;.convertFileCollectionToFileArray(Ljava/util/Collection<Ljava/io/File;>;)[Ljava/io/File;').
name_ref(m_copy_directory_350, method, 'copyDirectory', 'Lorg/apache/commons/io/file/PathUtils;.copyDirectory(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;').
name_ref(m_copy_directory_38, method, 'copyDirectory', 'Lorg/apache/commons/io/FileUtils;.copyDirectory(Ljava/io/File;Ljava/io/File;)V|Ljava/io/IOException;').
name_ref(m_copy_directory_39, method, 'copyDirectory', 'Lorg/apache/commons/io/FileUtils;.copyDirectory(Ljava/io/File;Ljava/io/File;Z)V|Ljava/io/IOException;').
name_ref(m_copy_directory_40, method, 'copyDirectory', 'Lorg/apache/commons/io/FileUtils;.copyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;)V|Ljava/io/IOException;').
name_ref(m_copy_directory_41, method, 'copyDirectory', 'Lorg/apache/commons/io/FileUtils;.copyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;Z)V|Ljava/io/IOException;').
name_ref(m_copy_directory_to_directory_42, method, 'copyDirectoryToDirectory', 'Lorg/apache/commons/io/FileUtils;.copyDirectoryToDirectory(Ljava/io/File;Ljava/io/File;)V|Ljava/io/IOException;').
name_ref(m_copy_file_43, method, 'copyFile', 'Lorg/apache/commons/io/FileUtils;.copyFile(Ljava/io/File;Ljava/io/File;)V|Ljava/io/IOException;').
name_ref(m_copy_file_44, method, 'copyFile', 'Lorg/apache/commons/io/FileUtils;.copyFile(Ljava/io/File;Ljava/io/File;Z)V|Ljava/io/IOException;').
name_ref(m_copy_file_45, method, 'copyFile', 'Lorg/apache/commons/io/FileUtils;.copyFile(Ljava/io/File;Ljava/io/OutputStream;)J|Ljava/io/IOException;').
name_ref(m_copy_file_to_directory_351, method, 'copyFileToDirectory', 'Lorg/apache/commons/io/file/PathUtils;.copyFileToDirectory(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;|Ljava/io/IOException;').
name_ref(m_copy_file_to_directory_46, method, 'copyFileToDirectory', 'Lorg/apache/commons/io/FileUtils;.copyFileToDirectory(Ljava/io/File;Ljava/io/File;)V|Ljava/io/IOException;').
name_ref(m_copy_file_to_directory_47, method, 'copyFileToDirectory', 'Lorg/apache/commons/io/FileUtils;.copyFileToDirectory(Ljava/io/File;Ljava/io/File;Z)V|Ljava/io/IOException;').
name_ref(m_copy_input_stream_to_file_48, method, 'copyInputStreamToFile', 'Lorg/apache/commons/io/FileUtils;.copyInputStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V|Ljava/io/IOException;').
name_ref(m_copy_to_directory_49, method, 'copyToDirectory', 'Lorg/apache/commons/io/FileUtils;.copyToDirectory(Ljava/io/File;Ljava/io/File;)V|Ljava/io/IOException;').
name_ref(m_copy_to_directory_50, method, 'copyToDirectory', 'Lorg/apache/commons/io/FileUtils;.copyToDirectory(Ljava/lang/Iterable<Ljava/io/File;>;Ljava/io/File;)V|Ljava/io/IOException;').
name_ref(m_copy_to_file_51, method, 'copyToFile', 'Lorg/apache/commons/io/FileUtils;.copyToFile(Ljava/io/InputStream;Ljava/io/File;)V|Ljava/io/IOException;').
name_ref(m_copy_urlto_file_52, method, 'copyURLToFile', 'Lorg/apache/commons/io/FileUtils;.copyURLToFile(Ljava/net/URL;Ljava/io/File;)V|Ljava/io/IOException;').
name_ref(m_copy_urlto_file_53, method, 'copyURLToFile', 'Lorg/apache/commons/io/FileUtils;.copyURLToFile(Ljava/net/URL;Ljava/io/File;II)V|Ljava/io/IOException;').
name_ref(m_count_directory_352, method, 'countDirectory', 'Lorg/apache/commons/io/file/PathUtils;.countDirectory(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;').
name_ref(m_create_circular_sym_link_207, method, 'createCircularSymLink', 'Lorg/apache/commons/io/FileUtilsTestCase;.createCircularSymLink(Ljava/io/File;)V|Ljava/io/IOException;').
name_ref(m_create_file_367, method, 'createFile', 'Lorg/apache/commons/io/testtools/TestUtils;.createFile(Ljava/io/File;J)V|Ljava/io/IOException;').
name_ref(m_create_files_for_test_copy_directory_227, method, 'createFilesForTestCopyDirectory', 'Lorg/apache/commons/io/FileUtilsTestCase;.createFilesForTestCopyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V|Ljava/lang/Exception;').
name_ref(m_create_line_based_file_369, method, 'createLineBasedFile', 'Lorg/apache/commons/io/testtools/TestUtils;.createLineBasedFile(Ljava/io/File;[Ljava/lang/String;)V|Ljava/io/IOException;').
name_ref(m_decode_url_54, method, 'decodeUrl', 'Lorg/apache/commons/io/FileUtils;.decodeUrl(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_delete_299, method, 'delete', 'Lorg/apache/commons/io/FileUtilsTestCase$104175;.delete()Z').
name_ref(m_delete_57, method, 'delete', 'Ljava/io/File;.delete()Z').
name_ref(m_delete_63, method, 'delete', 'Lorg/apache/commons/io/file/PathUtils;.delete(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;').
name_ref(m_delete_directory_354, method, 'deleteDirectory', 'Lorg/apache/commons/io/file/PathUtils;.deleteDirectory(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;').
name_ref(m_delete_directory_55, method, 'deleteDirectory', 'Lorg/apache/commons/io/FileUtils;.deleteDirectory(Ljava/io/File;)V|Ljava/io/IOException;').
name_ref(m_delete_directory_on_exit_58, method, 'deleteDirectoryOnExit', 'Lorg/apache/commons/io/FileUtils;.deleteDirectoryOnExit(Ljava/io/File;)V|Ljava/io/IOException;').
name_ref(m_delete_file_355, method, 'deleteFile', 'Lorg/apache/commons/io/file/PathUtils;.deleteFile(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;|Ljava/io/IOException;').
name_ref(m_delete_file_377, method, 'deleteFile', 'Lorg/apache/commons/io/testtools/TestUtils;.deleteFile(Ljava/io/File;)V|Ljava/lang/Exception;').
name_ref(m_delete_if_exists_358, method, 'deleteIfExists', 'Ljava/nio/file/Files;.deleteIfExists(Ljava/nio/file/Path;)Z|Ljava/io/IOException;').
name_ref(m_delete_quietly_59, method, 'deleteQuietly', 'Lorg/apache/commons/io/FileUtils;.deleteQuietly(Ljava/io/File;)Z').
name_ref(m_directory_contains_60, method, 'directoryContains', 'Lorg/apache/commons/io/FileUtils;.directoryContains(Ljava/io/File;Ljava/io/File;)Z|Ljava/io/IOException;').
name_ref(m_directory_walker_1, method, 'DirectoryWalker', 'Lorg/apache/commons/io/DirectoryWalker;.()V').
name_ref(m_directory_walker_2, method, 'DirectoryWalker', 'Lorg/apache/commons/io/DirectoryWalker;.(Ljava/io/FileFilter;I)V').
name_ref(m_directory_walker_3, method, 'DirectoryWalker', 'Lorg/apache/commons/io/DirectoryWalker;.(Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;I)V').
name_ref(m_do_copy_directory_61, method, 'doCopyDirectory', 'Lorg/apache/commons/io/FileUtils;.doCopyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;ZLjava/util/List<Ljava/lang/String;>;)V|Ljava/io/IOException;').
name_ref(m_do_copy_file_62, method, 'doCopyFile', 'Lorg/apache/commons/io/FileUtils;.doCopyFile(Ljava/io/File;Ljava/io/File;Z)V|Ljava/io/IOException;').
name_ref(m_exists_35, method, 'exists', 'Ljava/io/File;.exists()Z').
name_ref(m_exists_356, method, 'exists', 'Ljava/nio/file/Files;.exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z').
name_ref(m_file_156, method, 'File', 'Ljava/io/File;.(Ljava/io/File;Ljava/lang/String;)V').
name_ref(m_file_utils_153, method, 'FileUtils', 'Lorg/apache/commons/io/FileUtils;.()V').
name_ref(m_filter_directory_contents_12, method, 'filterDirectoryContents', 'Lorg/apache/commons/io/DirectoryWalker;.filterDirectoryContents(Ljava/io/File;I[Ljava/io/File;)[Ljava/io/File;|Ljava/io/IOException;').
name_ref(m_force_delete_32, method, 'forceDelete', 'Lorg/apache/commons/io/FileUtils;.forceDelete(Ljava/io/File;)V|Ljava/io/IOException;').
name_ref(m_force_delete_on_exit_68, method, 'forceDeleteOnExit', 'Lorg/apache/commons/io/FileUtils;.forceDeleteOnExit(Ljava/io/File;)V|Ljava/io/IOException;').
name_ref(m_force_mkdir_69, method, 'forceMkdir', 'Lorg/apache/commons/io/FileUtils;.forceMkdir(Ljava/io/File;)V|Ljava/io/IOException;').
name_ref(m_force_mkdir_parent_70, method, 'forceMkdirParent', 'Lorg/apache/commons/io/FileUtils;.forceMkdirParent(Ljava/io/File;)V|Ljava/io/IOException;').
name_ref(m_generate_test_data_159, method, 'generateTestData', 'Lorg/apache/commons/io/testtools/TestUtils;.generateTestData(Ljava/io/OutputStream;J)V|Ljava/io/IOException;').
name_ref(m_generate_test_data_368, method, 'generateTestData', 'Lorg/apache/commons/io/testtools/TestUtils;.generateTestData(J)[B').
name_ref(m_get_326, method, 'get', 'Lorg/apache/commons/io/file/Counters$BigIntegerCounter;.get()J').
name_ref(m_get_337, method, 'get', 'Lorg/apache/commons/io/file/Counters$LongCounter;.get()J').
name_ref(m_get_65, method, 'get', 'Lorg/apache/commons/io/file/Counters$Counter;.get()J').
name_ref(m_get_big_integer_327, method, 'getBigInteger', 'Lorg/apache/commons/io/file/Counters$BigIntegerCounter;.getBigInteger()Ljava/math/BigInteger;').
name_ref(m_get_big_integer_333, method, 'getBigInteger', 'Lorg/apache/commons/io/file/Counters$Counter;.getBigInteger()Ljava/math/BigInteger;').
name_ref(m_get_big_integer_338, method, 'getBigInteger', 'Lorg/apache/commons/io/file/Counters$LongCounter;.getBigInteger()Ljava/math/BigInteger;').
name_ref(m_get_byte_counter_321, method, 'getByteCounter', 'Lorg/apache/commons/io/file/Counters$AbstractPathCounters;.getByteCounter()Lorg/apache/commons/io/file/Counters$Counter;').
name_ref(m_get_byte_counter_344, method, 'getByteCounter', 'Lorg/apache/commons/io/file/Counters$PathCounters;.getByteCounter()Lorg/apache/commons/io/file/Counters$Counter;').
name_ref(m_get_class_163, method, 'getClass', 'Ljava/lang/Object;.getClass()Ljava/lang/Class<*>;').
name_ref(m_get_depth_20, method, 'getDepth', 'Lorg/apache/commons/io/DirectoryWalker$CancelException;.getDepth()I').
name_ref(m_get_directory_counter_322, method, 'getDirectoryCounter', 'Lorg/apache/commons/io/file/Counters$AbstractPathCounters;.getDirectoryCounter()Lorg/apache/commons/io/file/Counters$Counter;').
name_ref(m_get_directory_counter_67, method, 'getDirectoryCounter', 'Lorg/apache/commons/io/file/Counters$PathCounters;.getDirectoryCounter()Lorg/apache/commons/io/file/Counters$Counter;').
name_ref(m_get_file_19, method, 'getFile', 'Lorg/apache/commons/io/DirectoryWalker$CancelException;.getFile()Ljava/io/File;').
name_ref(m_get_file_71, method, 'getFile', 'Lorg/apache/commons/io/FileUtils;.getFile(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;').
name_ref(m_get_file_72, method, 'getFile', 'Lorg/apache/commons/io/FileUtils;.getFile([Ljava/lang/String;)Ljava/io/File;').
name_ref(m_get_file_counter_323, method, 'getFileCounter', 'Lorg/apache/commons/io/file/Counters$AbstractPathCounters;.getFileCounter()Lorg/apache/commons/io/file/Counters$Counter;').
name_ref(m_get_file_counter_66, method, 'getFileCounter', 'Lorg/apache/commons/io/file/Counters$PathCounters;.getFileCounter()Lorg/apache/commons/io/file/Counters$Counter;').
name_ref(m_get_long_328, method, 'getLong', 'Lorg/apache/commons/io/file/Counters$BigIntegerCounter;.getLong()Ljava/lang/Long;').
name_ref(m_get_long_334, method, 'getLong', 'Lorg/apache/commons/io/file/Counters$Counter;.getLong()Ljava/lang/Long;').
name_ref(m_get_long_339, method, 'getLong', 'Lorg/apache/commons/io/file/Counters$LongCounter;.getLong()Ljava/lang/Long;').
name_ref(m_get_name_161, method, 'getName', 'Lorg/apache/commons/io/FileUtilsTestCase;.getName()Ljava/lang/String;').
name_ref(m_get_parent_file_158, method, 'getParentFile', 'Ljava/io/File;.getParentFile()Ljava/io/File;').
name_ref(m_get_simple_name_162, method, 'getSimpleName', 'Ljava/lang/Class;.getSimpleName()Ljava/lang/String;').
name_ref(m_get_temp_directory_73, method, 'getTempDirectory', 'Lorg/apache/commons/io/FileUtils;.getTempDirectory()Ljava/io/File;').
name_ref(m_get_temp_directory_path_74, method, 'getTempDirectoryPath', 'Lorg/apache/commons/io/FileUtils;.getTempDirectoryPath()Ljava/lang/String;').
name_ref(m_get_user_directory_75, method, 'getUserDirectory', 'Lorg/apache/commons/io/FileUtils;.getUserDirectory()Ljava/io/File;').
name_ref(m_get_user_directory_path_76, method, 'getUserDirectoryPath', 'Lorg/apache/commons/io/FileUtils;.getUserDirectoryPath()Ljava/lang/String;').
name_ref(m_handle_cancelled_8, method, 'handleCancelled', 'Lorg/apache/commons/io/DirectoryWalker;.handleCancelled(Ljava/io/File;Ljava/util/Collection<TT;>;Lorg/apache/commons/io/DirectoryWalker$CancelException;)V|Ljava/io/IOException;').
name_ref(m_handle_directory_10, method, 'handleDirectory', 'Lorg/apache/commons/io/DirectoryWalker;.handleDirectory(Ljava/io/File;ILjava/util/Collection<TT;>;)Z|Ljava/io/IOException;').
name_ref(m_handle_directory_end_15, method, 'handleDirectoryEnd', 'Lorg/apache/commons/io/DirectoryWalker;.handleDirectoryEnd(Ljava/io/File;ILjava/util/Collection<TT;>;)V|Ljava/io/IOException;').
name_ref(m_handle_directory_start_11, method, 'handleDirectoryStart', 'Lorg/apache/commons/io/DirectoryWalker;.handleDirectoryStart(Ljava/io/File;ILjava/util/Collection<TT;>;)V|Ljava/io/IOException;').
name_ref(m_handle_directory_start_317, method, 'handleDirectoryStart', 'Lorg/apache/commons/io/FileUtilsTestCase$ListDirectoryWalker;.handleDirectoryStart(Ljava/io/File;ILjava/util/Collection<Ljava/io/File;>;)V|Ljava/io/IOException;').
name_ref(m_handle_end_16, method, 'handleEnd', 'Lorg/apache/commons/io/DirectoryWalker;.handleEnd(Ljava/util/Collection<TT;>;)V|Ljava/io/IOException;').
name_ref(m_handle_file_13, method, 'handleFile', 'Lorg/apache/commons/io/DirectoryWalker;.handleFile(Ljava/io/File;ILjava/util/Collection<TT;>;)V|Ljava/io/IOException;').
name_ref(m_handle_file_318, method, 'handleFile', 'Lorg/apache/commons/io/FileUtilsTestCase$ListDirectoryWalker;.handleFile(Ljava/io/File;ILjava/util/Collection<Ljava/io/File;>;)V|Ljava/io/IOException;').
name_ref(m_handle_is_cancelled_7, method, 'handleIsCancelled', 'Lorg/apache/commons/io/DirectoryWalker;.handleIsCancelled(Ljava/io/File;ILjava/util/Collection<TT;>;)Z|Ljava/io/IOException;').
name_ref(m_handle_restricted_14, method, 'handleRestricted', 'Lorg/apache/commons/io/DirectoryWalker;.handleRestricted(Ljava/io/File;ILjava/util/Collection<TT;>;)V|Ljava/io/IOException;').
name_ref(m_handle_start_9, method, 'handleStart', 'Lorg/apache/commons/io/DirectoryWalker;.handleStart(Ljava/io/File;Ljava/util/Collection<TT;>;)V|Ljava/io/IOException;').
name_ref(m_increment_329, method, 'increment', 'Lorg/apache/commons/io/file/Counters$BigIntegerCounter;.increment()V').
name_ref(m_increment_335, method, 'increment', 'Lorg/apache/commons/io/file/Counters$Counter;.increment()V').
name_ref(m_increment_340, method, 'increment', 'Lorg/apache/commons/io/file/Counters$LongCounter;.increment()V').
name_ref(m_inner_list_files_77, method, 'innerListFiles', 'Lorg/apache/commons/io/FileUtils;.innerListFiles(Ljava/util/Collection<Ljava/io/File;>;Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Z)V').
name_ref(m_inner_list_files_or_directories_78, method, 'innerListFilesOrDirectories', 'Lorg/apache/commons/io/FileUtils;.innerListFilesOrDirectories(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;Z)Ljava/util/Collection<Ljava/io/File;>;').
name_ref(m_is_directory_126, method, 'isDirectory', 'Ljava/io/File;.isDirectory()Z').
name_ref(m_is_directory_353, method, 'isDirectory', 'Ljava/nio/file/Files;.isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z').
name_ref(m_is_empty_359, method, 'isEmpty', 'Lorg/apache/commons/io/file/PathUtils;.isEmpty(Ljava/nio/file/Path;)Z|Ljava/io/IOException;').
name_ref(m_is_empty_directory_360, method, 'isEmptyDirectory', 'Lorg/apache/commons/io/file/PathUtils;.isEmptyDirectory(Ljava/nio/file/Path;)Z|Ljava/io/IOException;').
name_ref(m_is_empty_file_361, method, 'isEmptyFile', 'Lorg/apache/commons/io/file/PathUtils;.isEmptyFile(Ljava/nio/file/Path;)Z|Ljava/io/IOException;').
name_ref(m_is_file_newer_79, method, 'isFileNewer', 'Lorg/apache/commons/io/FileUtils;.isFileNewer(Ljava/io/File;Ljava/util/Date;)Z').
name_ref(m_is_file_newer_80, method, 'isFileNewer', 'Lorg/apache/commons/io/FileUtils;.isFileNewer(Ljava/io/File;Ljava/io/File;)Z').
name_ref(m_is_file_newer_81, method, 'isFileNewer', 'Lorg/apache/commons/io/FileUtils;.isFileNewer(Ljava/io/File;J)Z').
name_ref(m_is_file_older_82, method, 'isFileOlder', 'Lorg/apache/commons/io/FileUtils;.isFileOlder(Ljava/io/File;Ljava/util/Date;)Z').
name_ref(m_is_file_older_83, method, 'isFileOlder', 'Lorg/apache/commons/io/FileUtils;.isFileOlder(Ljava/io/File;Ljava/io/File;)Z').
name_ref(m_is_file_older_84, method, 'isFileOlder', 'Lorg/apache/commons/io/FileUtils;.isFileOlder(Ljava/io/File;J)Z').
name_ref(m_is_symbolic_link_85, method, 'isSymbolicLink', 'Ljava/nio/file/Files;.isSymbolicLink(Ljava/nio/file/Path;)Z').
name_ref(m_is_symlink_56, method, 'isSymlink', 'Lorg/apache/commons/io/FileUtils;.isSymlink(Ljava/io/File;)Z').
name_ref(m_iterate_files_86, method, 'iterateFiles', 'Lorg/apache/commons/io/FileUtils;.iterateFiles(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Iterator<Ljava/io/File;>;').
name_ref(m_iterate_files_87, method, 'iterateFiles', 'Lorg/apache/commons/io/FileUtils;.iterateFiles(Ljava/io/File;[Ljava/lang/String;Z)Ljava/util/Iterator<Ljava/io/File;>;').
name_ref(m_iterate_files_and_dirs_88, method, 'iterateFilesAndDirs', 'Lorg/apache/commons/io/FileUtils;.iterateFilesAndDirs(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Iterator<Ljava/io/File;>;').
name_ref(m_length_157, method, 'length', 'Ljava/io/File;.length()J').
name_ref(m_length_314, method, 'length', 'Lorg/apache/commons/io/FileUtilsTestCase$ShorterFile;.length()J').
name_ref(m_line_iterator_89, method, 'lineIterator', 'Lorg/apache/commons/io/FileUtils;.lineIterator(Ljava/io/File;)Lorg/apache/commons/io/LineIterator;|Ljava/io/IOException;').
name_ref(m_line_iterator_90, method, 'lineIterator', 'Lorg/apache/commons/io/FileUtils;.lineIterator(Ljava/io/File;Ljava/lang/String;)Lorg/apache/commons/io/LineIterator;|Ljava/io/IOException;').
name_ref(m_list_316, method, 'list', 'Lorg/apache/commons/io/FileUtilsTestCase$ListDirectoryWalker;.list(Ljava/io/File;)Ljava/util/List<Ljava/io/File;>;|Ljava/io/IOException;').
name_ref(m_list_directory_walker_154, method, 'ListDirectoryWalker', 'Lorg/apache/commons/io/FileUtilsTestCase$ListDirectoryWalker;.()V').
name_ref(m_list_files_127, method, 'listFiles', 'Ljava/io/File;.listFiles()[Ljava/io/File;').
name_ref(m_list_files_91, method, 'listFiles', 'Lorg/apache/commons/io/FileUtils;.listFiles(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Collection<Ljava/io/File;>;').
name_ref(m_list_files_92, method, 'listFiles', 'Lorg/apache/commons/io/FileUtils;.listFiles(Ljava/io/File;[Ljava/lang/String;Z)Ljava/util/Collection<Ljava/io/File;>;').
name_ref(m_list_files_and_dirs_93, method, 'listFilesAndDirs', 'Lorg/apache/commons/io/FileUtils;.listFilesAndDirs(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Collection<Ljava/io/File;>;').
name_ref(m_long_counter_343, method, 'longCounter', 'Lorg/apache/commons/io/file/Counters;.longCounter()Lorg/apache/commons/io/file/Counters$Counter;').
name_ref(m_long_counter_347, method, 'LongCounter', 'Lorg/apache/commons/io/file/Counters$LongCounter;.()V').
name_ref(m_long_path_counters_342, method, 'LongPathCounters', 'Lorg/apache/commons/io/file/Counters$LongPathCounters;.()V').
name_ref(m_long_path_counters_348, method, 'longPathCounters', 'Lorg/apache/commons/io/file/Counters;.longPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;').
name_ref(m_mkdirs_160, method, 'mkdirs', 'Ljava/io/File;.mkdirs()Z').
name_ref(m_move_directory_94, method, 'moveDirectory', 'Lorg/apache/commons/io/FileUtils;.moveDirectory(Ljava/io/File;Ljava/io/File;)V|Ljava/io/IOException;').
name_ref(m_move_directory_to_directory_95, method, 'moveDirectoryToDirectory', 'Lorg/apache/commons/io/FileUtils;.moveDirectoryToDirectory(Ljava/io/File;Ljava/io/File;Z)V|Ljava/io/IOException;').
name_ref(m_move_file_96, method, 'moveFile', 'Lorg/apache/commons/io/FileUtils;.moveFile(Ljava/io/File;Ljava/io/File;)V|Ljava/io/IOException;').
name_ref(m_move_file_to_directory_97, method, 'moveFileToDirectory', 'Lorg/apache/commons/io/FileUtils;.moveFileToDirectory(Ljava/io/File;Ljava/io/File;Z)V|Ljava/io/IOException;').
name_ref(m_move_to_directory_98, method, 'moveToDirectory', 'Lorg/apache/commons/io/FileUtils;.moveToDirectory(Ljava/io/File;Ljava/io/File;Z)V|Ljava/io/IOException;').
name_ref(m_multiply_22, method, 'multiply', 'Ljava/math/BigInteger;.multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;').
name_ref(m_new_file_370, method, 'newFile', 'Lorg/apache/commons/io/testtools/TestUtils;.newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;|Ljava/io/IOException;').
name_ref(m_object_320, method, 'Object', 'Ljava/lang/Object;.()V').
name_ref(m_open_input_stream_99, method, 'openInputStream', 'Lorg/apache/commons/io/FileUtils;.openInputStream(Ljava/io/File;)Ljava/io/FileInputStream;|Ljava/io/IOException;').
name_ref(m_open_output_stream_100, method, 'openOutputStream', 'Lorg/apache/commons/io/FileUtils;.openOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;|Ljava/io/IOException;').
name_ref(m_open_output_stream_101, method, 'openOutputStream', 'Lorg/apache/commons/io/FileUtils;.openOutputStream(Ljava/io/File;Z)Ljava/io/FileOutputStream;|Ljava/io/IOException;').
name_ref(m_open_output_stream_no_parent_173, method, 'openOutputStream_noParent', 'Lorg/apache/commons/io/FileUtilsTestCase;.openOutputStream_noParent(Z)V|Ljava/lang/Exception;').
name_ref(m_path_utils_365, method, 'PathUtils', 'Lorg/apache/commons/io/file/PathUtils;.()V').
name_ref(m_read_file_to_byte_array_102, method, 'readFileToByteArray', 'Lorg/apache/commons/io/FileUtils;.readFileToByteArray(Ljava/io/File;)[B|Ljava/io/IOException;').
name_ref(m_read_file_to_string_103, method, 'readFileToString', 'Lorg/apache/commons/io/FileUtils;.readFileToString(Ljava/io/File;)Ljava/lang/String;|Ljava/io/IOException;').
name_ref(m_read_file_to_string_104, method, 'readFileToString', 'Lorg/apache/commons/io/FileUtils;.readFileToString(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;|Ljava/io/IOException;').
name_ref(m_read_file_to_string_105, method, 'readFileToString', 'Lorg/apache/commons/io/FileUtils;.readFileToString(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;|Ljava/io/IOException;').
name_ref(m_read_lines_106, method, 'readLines', 'Lorg/apache/commons/io/FileUtils;.readLines(Ljava/io/File;)Ljava/util/List<Ljava/lang/String;>;|Ljava/io/IOException;').
name_ref(m_read_lines_107, method, 'readLines', 'Lorg/apache/commons/io/FileUtils;.readLines(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/util/List<Ljava/lang/String;>;|Ljava/io/IOException;').
name_ref(m_read_lines_108, method, 'readLines', 'Lorg/apache/commons/io/FileUtils;.readLines(Ljava/io/File;Ljava/lang/String;)Ljava/util/List<Ljava/lang/String;>;|Ljava/io/IOException;').
name_ref(m_rename_to_296, method, 'renameTo', 'Lorg/apache/commons/io/FileUtilsTestCase$103506;.renameTo(Ljava/io/File;)Z').
name_ref(m_rename_to_298, method, 'renameTo', 'Lorg/apache/commons/io/FileUtilsTestCase$104175;.renameTo(Ljava/io/File;)Z').
name_ref(m_rename_to_305, method, 'renameTo', 'Lorg/apache/commons/io/FileUtilsTestCase$111547;.renameTo(Ljava/io/File;)Z').
name_ref(m_set_up_155, method, 'setUp', 'Lorg/apache/commons/io/FileUtilsTestCase;.setUp()V|Ljava/lang/Exception;').
name_ref(m_set_up_effective_dir_filter_109, method, 'setUpEffectiveDirFilter', 'Lorg/apache/commons/io/FileUtils;.setUpEffectiveDirFilter(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;').
name_ref(m_set_up_effective_file_filter_110, method, 'setUpEffectiveFileFilter', 'Lorg/apache/commons/io/FileUtils;.setUpEffectiveFileFilter(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;').
name_ref(m_shorter_file_313, method, 'ShorterFile', 'Lorg/apache/commons/io/FileUtilsTestCase$ShorterFile;.(Ljava/lang/String;)V').
name_ref(m_size_357, method, 'size', 'Ljava/nio/file/Files;.size(Ljava/nio/file/Path;)J|Ljava/io/IOException;').
name_ref(m_size_of0_112, method, 'sizeOf0', 'Lorg/apache/commons/io/FileUtils;.sizeOf0(Ljava/io/File;)J').
name_ref(m_size_of_111, method, 'sizeOf', 'Lorg/apache/commons/io/FileUtils;.sizeOf(Ljava/io/File;)J').
name_ref(m_size_of_as_big_integer_113, method, 'sizeOfAsBigInteger', 'Lorg/apache/commons/io/FileUtils;.sizeOfAsBigInteger(Ljava/io/File;)Ljava/math/BigInteger;').
name_ref(m_size_of_big0_114, method, 'sizeOfBig0', 'Lorg/apache/commons/io/FileUtils;.sizeOfBig0(Ljava/io/File;)Ljava/math/BigInteger;').
name_ref(m_size_of_directory0_116, method, 'sizeOfDirectory0', 'Lorg/apache/commons/io/FileUtils;.sizeOfDirectory0(Ljava/io/File;)J').
name_ref(m_size_of_directory_115, method, 'sizeOfDirectory', 'Lorg/apache/commons/io/FileUtils;.sizeOfDirectory(Ljava/io/File;)J').
name_ref(m_size_of_directory_as_big_integer_117, method, 'sizeOfDirectoryAsBigInteger', 'Lorg/apache/commons/io/FileUtils;.sizeOfDirectoryAsBigInteger(Ljava/io/File;)Ljava/math/BigInteger;').
name_ref(m_size_of_directory_big0_118, method, 'sizeOfDirectoryBig0', 'Lorg/apache/commons/io/FileUtils;.sizeOfDirectoryBig0(Ljava/io/File;)Ljava/math/BigInteger;').
name_ref(m_sleep_378, method, 'sleep', 'Lorg/apache/commons/io/testtools/TestUtils;.sleep(J)V|Ljava/lang/InterruptedException;').
name_ref(m_sleep_quietly_379, method, 'sleepQuietly', 'Lorg/apache/commons/io/testtools/TestUtils;.sleepQuietly(J)V').
name_ref(m_test_byte_count_to_display_size_big_integer_180, method, 'testByteCountToDisplaySizeBigInteger', 'Lorg/apache/commons/io/FileUtilsTestCase;.testByteCountToDisplaySizeBigInteger()V').
name_ref(m_test_byte_count_to_display_size_long_181, method, 'testByteCountToDisplaySizeLong', 'Lorg/apache/commons/io/FileUtilsTestCase;.testByteCountToDisplaySizeLong()V').
name_ref(m_test_checksum_284, method, 'testChecksum', 'Lorg/apache/commons/io/FileUtilsTestCase;.testChecksum()V|Ljava/lang/Exception;').
name_ref(m_test_checksum_crc32_283, method, 'testChecksumCRC32', 'Lorg/apache/commons/io/FileUtilsTestCase;.testChecksumCRC32()V|Ljava/lang/Exception;').
name_ref(m_test_checksum_double_288, method, 'testChecksumDouble', 'Lorg/apache/commons/io/FileUtilsTestCase;.testChecksumDouble()V|Ljava/lang/Exception;').
name_ref(m_test_checksum_on_directory_287, method, 'testChecksumOnDirectory', 'Lorg/apache/commons/io/FileUtilsTestCase;.testChecksumOnDirectory()V|Ljava/lang/Exception;').
name_ref(m_test_checksum_on_null_checksum_286, method, 'testChecksumOnNullChecksum', 'Lorg/apache/commons/io/FileUtilsTestCase;.testChecksumOnNullChecksum()V|Ljava/lang/Exception;').
name_ref(m_test_checksum_on_null_file_285, method, 'testChecksumOnNullFile', 'Lorg/apache/commons/io/FileUtilsTestCase;.testChecksumOnNullFile()V|Ljava/lang/Exception;').
name_ref(m_test_compare_size_of_209, method, 'testCompareSizeOf', 'Lorg/apache/commons/io/FileUtilsTestCase;.testCompareSizeOf()V').
name_ref(m_test_content_equals_199, method, 'testContentEquals', 'Lorg/apache/commons/io/FileUtilsTestCase;.testContentEquals()V|Ljava/lang/Exception;').
name_ref(m_test_content_equals_ignore_eol_201, method, 'testContentEqualsIgnoreEOL', 'Lorg/apache/commons/io/FileUtilsTestCase;.testContentEqualsIgnoreEOL()V|Ljava/lang/Exception;').
name_ref(m_test_copy_directory_errors_228, method, 'testCopyDirectoryErrors', 'Lorg/apache/commons/io/FileUtilsTestCase;.testCopyDirectoryErrors()V|Ljava/lang/Exception;').
name_ref(m_test_copy_directory_filtered_222, method, 'testCopyDirectoryFiltered', 'Lorg/apache/commons/io/FileUtilsTestCase;.testCopyDirectoryFiltered()V|Ljava/lang/Exception;').
name_ref(m_test_copy_directory_preserve_dates_223, method, 'testCopyDirectoryPreserveDates', 'Lorg/apache/commons/io/FileUtilsTestCase;.testCopyDirectoryPreserveDates()V|Ljava/lang/Exception;').
name_ref(m_test_copy_directory_to_child_224, method, 'testCopyDirectoryToChild', 'Lorg/apache/commons/io/FileUtilsTestCase;.testCopyDirectoryToChild()V|Ljava/lang/Exception;').
name_ref(m_test_copy_directory_to_directory__non_existing_dest_219, method, 'testCopyDirectoryToDirectory_NonExistingDest', 'Lorg/apache/commons/io/FileUtilsTestCase;.testCopyDirectoryToDirectory_NonExistingDest()V|Ljava/lang/Exception;').
name_ref(m_test_copy_directory_to_existing_dest_221, method, 'testCopyDirectoryToExistingDest', 'Lorg/apache/commons/io/FileUtilsTestCase;.testCopyDirectoryToExistingDest()V|Ljava/lang/Exception;').
name_ref(m_test_copy_directory_to_grand_child_225, method, 'testCopyDirectoryToGrandChild', 'Lorg/apache/commons/io/FileUtilsTestCase;.testCopyDirectoryToGrandChild()V|Ljava/lang/Exception;').
name_ref(m_test_copy_directory_to_itself_226, method, 'testCopyDirectoryToItself', 'Lorg/apache/commons/io/FileUtilsTestCase;.testCopyDirectoryToItself()V|Ljava/lang/Exception;').
name_ref(m_test_copy_directory_to_non_existing_dest_220, method, 'testCopyDirectoryToNonExistingDest', 'Lorg/apache/commons/io/FileUtilsTestCase;.testCopyDirectoryToNonExistingDest()V|Ljava/lang/Exception;').
name_ref(m_test_copy_file1_213, method, 'testCopyFile1', 'Lorg/apache/commons/io/FileUtilsTestCase;.testCopyFile1()V|Ljava/lang/Exception;').
name_ref(m_test_copy_file1_to_dir_239, method, 'testCopyFile1ToDir', 'Lorg/apache/commons/io/FileUtilsTestCase;.testCopyFile1ToDir()V|Ljava/lang/Exception;').
name_ref(m_test_copy_file2_216, method, 'testCopyFile2', 'Lorg/apache/commons/io/FileUtilsTestCase;.testCopyFile2()V|Ljava/lang/Exception;').
name_ref(m_test_copy_file2_to_dir_240, method, 'testCopyFile2ToDir', 'Lorg/apache/commons/io/FileUtilsTestCase;.testCopyFile2ToDir()V|Ljava/lang/Exception;').
name_ref(m_test_copy_file2_without_file_date_preservation_218, method, 'testCopyFile2WithoutFileDatePreservation', 'Lorg/apache/commons/io/FileUtilsTestCase;.testCopyFile2WithoutFileDatePreservation()V|Ljava/lang/Exception;').
name_ref(m_test_copy_file_large_215, method, 'testCopyFileLarge', 'Lorg/apache/commons/io/FileUtilsTestCase;.testCopyFileLarge()V|Ljava/lang/Exception;').
name_ref(m_test_copy_file_to_output_stream_214, method, 'testCopyFileToOutputStream', 'Lorg/apache/commons/io/FileUtilsTestCase;.testCopyFileToOutputStream()V|Ljava/lang/Exception;').
name_ref(m_test_copy_to_directory_with_directory_232, method, 'testCopyToDirectoryWithDirectory', 'Lorg/apache/commons/io/FileUtilsTestCase;.testCopyToDirectoryWithDirectory()V|Ljava/io/IOException;').
name_ref(m_test_copy_to_directory_with_file_229, method, 'testCopyToDirectoryWithFile', 'Lorg/apache/commons/io/FileUtilsTestCase;.testCopyToDirectoryWithFile()V|Ljava/io/IOException;').
name_ref(m_test_copy_to_directory_with_file_source_does_not_exist_231, method, 'testCopyToDirectoryWithFileSourceDoesNotExist', 'Lorg/apache/commons/io/FileUtilsTestCase;.testCopyToDirectoryWithFileSourceDoesNotExist()V').
name_ref(m_test_copy_to_directory_with_file_source_is_null_230, method, 'testCopyToDirectoryWithFileSourceIsNull', 'Lorg/apache/commons/io/FileUtilsTestCase;.testCopyToDirectoryWithFileSourceIsNull()V').
name_ref(m_test_copy_to_directory_with_iterable_233, method, 'testCopyToDirectoryWithIterable', 'Lorg/apache/commons/io/FileUtilsTestCase;.testCopyToDirectoryWithIterable()V|Ljava/io/IOException;').
name_ref(m_test_copy_to_directory_with_iterable_source_does_not_exist_235, method, 'testCopyToDirectoryWithIterableSourceDoesNotExist', 'Lorg/apache/commons/io/FileUtilsTestCase;.testCopyToDirectoryWithIterableSourceDoesNotExist()V').
name_ref(m_test_copy_to_directory_with_iterable_source_is_null_234, method, 'testCopyToDirectoryWithIterableSourceIsNull', 'Lorg/apache/commons/io/FileUtilsTestCase;.testCopyToDirectoryWithIterableSourceIsNull()V').
name_ref(m_test_copy_to_self_217, method, 'testCopyToSelf', 'Lorg/apache/commons/io/FileUtilsTestCase;.testCopyToSelf()V|Ljava/lang/Exception;').
name_ref(m_test_copy_urlto_file_202, method, 'testCopyURLToFile', 'Lorg/apache/commons/io/FileUtilsTestCase;.testCopyURLToFile()V|Ljava/lang/Exception;').
name_ref(m_test_copy_urlto_file_with_timeout_203, method, 'testCopyURLToFileWithTimeout', 'Lorg/apache/commons/io/FileUtilsTestCase;.testCopyURLToFileWithTimeout()V|Ljava/lang/Exception;').
name_ref(m_test_decode_url_188, method, 'testDecodeUrl', 'Lorg/apache/commons/io/FileUtilsTestCase;.testDecodeUrl()V').
name_ref(m_test_decode_url_encoding_utf8_191, method, 'testDecodeUrlEncodingUtf8', 'Lorg/apache/commons/io/FileUtilsTestCase;.testDecodeUrlEncodingUtf8()V').
name_ref(m_test_decode_url_lenient_189, method, 'testDecodeUrlLenient', 'Lorg/apache/commons/io/FileUtilsTestCase;.testDecodeUrlLenient()V').
name_ref(m_test_decode_url_null_safe_190, method, 'testDecodeUrlNullSafe', 'Lorg/apache/commons/io/FileUtilsTestCase;.testDecodeUrlNullSafe()V').
name_ref(m_test_delete_directory_with_non_directory_289, method, 'testDeleteDirectoryWithNonDirectory', 'Lorg/apache/commons/io/FileUtilsTestCase;.testDeleteDirectoryWithNonDirectory()V|Ljava/lang/Exception;').
name_ref(m_test_delete_quietly_dir_291, method, 'testDeleteQuietlyDir', 'Lorg/apache/commons/io/FileUtilsTestCase;.testDeleteQuietlyDir()V|Ljava/io/IOException;').
name_ref(m_test_delete_quietly_file_292, method, 'testDeleteQuietlyFile', 'Lorg/apache/commons/io/FileUtilsTestCase;.testDeleteQuietlyFile()V|Ljava/io/IOException;').
name_ref(m_test_delete_quietly_for_null_290, method, 'testDeleteQuietlyForNull', 'Lorg/apache/commons/io/FileUtilsTestCase;.testDeleteQuietlyForNull()V').
name_ref(m_test_delete_quietly_non_existent_293, method, 'testDeleteQuietlyNonExistent', 'Lorg/apache/commons/io/FileUtilsTestCase;.testDeleteQuietlyNonExistent()V').
name_ref(m_test_file_utils_242, method, 'testFileUtils', 'Lorg/apache/commons/io/FileUtilsTestCase;.testFileUtils()V|Ljava/lang/Exception;').
name_ref(m_test_force_delete_afile1_236, method, 'testForceDeleteAFile1', 'Lorg/apache/commons/io/FileUtilsTestCase;.testForceDeleteAFile1()V|Ljava/lang/Exception;').
name_ref(m_test_force_delete_afile2_237, method, 'testForceDeleteAFile2', 'Lorg/apache/commons/io/FileUtilsTestCase;.testForceDeleteAFile2()V|Ljava/lang/Exception;').
name_ref(m_test_force_delete_afile3_238, method, 'testForceDeleteAFile3', 'Lorg/apache/commons/io/FileUtilsTestCase;.testForceDeleteAFile3()V|Ljava/lang/Exception;').
name_ref(m_test_force_delete_dir_241, method, 'testForceDeleteDir', 'Lorg/apache/commons/io/FileUtilsTestCase;.testForceDeleteDir()V|Ljava/lang/Exception;').
name_ref(m_test_force_mkdir_204, method, 'testForceMkdir', 'Lorg/apache/commons/io/FileUtilsTestCase;.testForceMkdir()V|Ljava/lang/Exception;').
name_ref(m_test_force_mkdir_parent_205, method, 'testForceMkdirParent', 'Lorg/apache/commons/io/FileUtilsTestCase;.testForceMkdirParent()V|Ljava/lang/Exception;').
name_ref(m_test_get_file_164, method, 'testGetFile', 'Lorg/apache/commons/io/FileUtilsTestCase;.testGetFile()V').
name_ref(m_test_get_file__parent_165, method, 'testGetFile_Parent', 'Lorg/apache/commons/io/FileUtilsTestCase;.testGetFile_Parent()V').
name_ref(m_test_get_temp_directory_167, method, 'testGetTempDirectory', 'Lorg/apache/commons/io/FileUtilsTestCase;.testGetTempDirectory()V').
name_ref(m_test_get_temp_directory_path_166, method, 'testGetTempDirectoryPath', 'Lorg/apache/commons/io/FileUtilsTestCase;.testGetTempDirectoryPath()V').
name_ref(m_test_get_user_directory_169, method, 'testGetUserDirectory', 'Lorg/apache/commons/io/FileUtilsTestCase;.testGetUserDirectory()V').
name_ref(m_test_get_user_directory_path_168, method, 'testGetUserDirectoryPath', 'Lorg/apache/commons/io/FileUtilsTestCase;.testGetUserDirectoryPath()V').
name_ref(m_test_incorrect_output_size_315, method, 'testIncorrectOutputSize', 'Lorg/apache/commons/io/FileUtilsTestCase;.testIncorrectOutputSize()V|Ljava/lang/Exception;').
name_ref(m_test_io276_312, method, 'testIO276', 'Lorg/apache/commons/io/FileUtilsTestCase;.testIO276()V|Ljava/lang/Exception;').
name_ref(m_test_io300_311, method, 'testIO300', 'Lorg/apache/commons/io/FileUtilsTestCase;.testIO300()V|Ljava/lang/Exception;').
name_ref(m_test_is_file_newer_older_212, method, 'testIsFileNewerOlder', 'Lorg/apache/commons/io/FileUtilsTestCase;.testIsFileNewerOlder()V|Ljava/lang/Exception;').
name_ref(m_test_iterate_files_246, method, 'testIterateFiles', 'Lorg/apache/commons/io/FileUtilsTestCase;.testIterateFiles()V|Ljava/lang/Exception;').
name_ref(m_test_iterate_files_and_dirs_247, method, 'testIterateFilesAndDirs', 'Lorg/apache/commons/io/FileUtilsTestCase;.testIterateFilesAndDirs()V|Ljava/io/IOException;').
name_ref(m_test_list_files_244, method, 'testListFiles', 'Lorg/apache/commons/io/FileUtilsTestCase;.testListFiles()V|Ljava/lang/Exception;').
name_ref(m_test_list_files_with_dirs_245, method, 'testListFilesWithDirs', 'Lorg/apache/commons/io/FileUtilsTestCase;.testListFilesWithDirs()V|Ljava/io/IOException;').
name_ref(m_test_move_directory__copy_delete_304, method, 'testMoveDirectory_CopyDelete', 'Lorg/apache/commons/io/FileUtilsTestCase;.testMoveDirectory_CopyDelete()V|Ljava/lang/Exception;').
name_ref(m_test_move_directory__errors_306, method, 'testMoveDirectory_Errors', 'Lorg/apache/commons/io/FileUtilsTestCase;.testMoveDirectory_Errors()V|Ljava/lang/Exception;').
name_ref(m_test_move_directory__rename_303, method, 'testMoveDirectory_Rename', 'Lorg/apache/commons/io/FileUtilsTestCase;.testMoveDirectory_Rename()V|Ljava/lang/Exception;').
name_ref(m_test_move_directory_to_directory_307, method, 'testMoveDirectoryToDirectory', 'Lorg/apache/commons/io/FileUtilsTestCase;.testMoveDirectoryToDirectory()V|Ljava/lang/Exception;').
name_ref(m_test_move_directory_to_directory__errors_308, method, 'testMoveDirectoryToDirectory_Errors', 'Lorg/apache/commons/io/FileUtilsTestCase;.testMoveDirectoryToDirectory_Errors()V|Ljava/lang/Exception;').
name_ref(m_test_move_file__copy_delete_295, method, 'testMoveFile_CopyDelete', 'Lorg/apache/commons/io/FileUtilsTestCase;.testMoveFile_CopyDelete()V|Ljava/lang/Exception;').
name_ref(m_test_move_file__copy_delete__failed_297, method, 'testMoveFile_CopyDelete_Failed', 'Lorg/apache/commons/io/FileUtilsTestCase;.testMoveFile_CopyDelete_Failed()V|Ljava/lang/Exception;').
name_ref(m_test_move_file__errors_300, method, 'testMoveFile_Errors', 'Lorg/apache/commons/io/FileUtilsTestCase;.testMoveFile_Errors()V|Ljava/lang/Exception;').
name_ref(m_test_move_file__rename_294, method, 'testMoveFile_Rename', 'Lorg/apache/commons/io/FileUtilsTestCase;.testMoveFile_Rename()V|Ljava/lang/Exception;').
name_ref(m_test_move_file_to_directory_301, method, 'testMoveFileToDirectory', 'Lorg/apache/commons/io/FileUtilsTestCase;.testMoveFileToDirectory()V|Ljava/lang/Exception;').
name_ref(m_test_move_file_to_directory__errors_302, method, 'testMoveFileToDirectory_Errors', 'Lorg/apache/commons/io/FileUtilsTestCase;.testMoveFileToDirectory_Errors()V|Ljava/lang/Exception;').
name_ref(m_test_move_to_directory_309, method, 'testMoveToDirectory', 'Lorg/apache/commons/io/FileUtilsTestCase;.testMoveToDirectory()V|Ljava/lang/Exception;').
name_ref(m_test_move_to_directory__errors_310, method, 'testMoveToDirectory_Errors', 'Lorg/apache/commons/io/FileUtilsTestCase;.testMoveToDirectory_Errors()V|Ljava/lang/Exception;').
name_ref(m_test_open_input_stream_exists_170, method, 'test_openInputStream_exists', 'Lorg/apache/commons/io/FileUtilsTestCase;.test_openInputStream_exists()V|Ljava/lang/Exception;').
name_ref(m_test_open_input_stream_exists_but_is_directory_171, method, 'test_openInputStream_existsButIsDirectory', 'Lorg/apache/commons/io/FileUtilsTestCase;.test_openInputStream_existsButIsDirectory()V|Ljava/lang/Exception;').
name_ref(m_test_open_input_stream_not_exists_172, method, 'test_openInputStream_notExists', 'Lorg/apache/commons/io/FileUtilsTestCase;.test_openInputStream_notExists()V|Ljava/lang/Exception;').
name_ref(m_test_open_output_stream_exists_176, method, 'test_openOutputStream_exists', 'Lorg/apache/commons/io/FileUtilsTestCase;.test_openOutputStream_exists()V|Ljava/lang/Exception;').
name_ref(m_test_open_output_stream_exists_but_is_directory_177, method, 'test_openOutputStream_existsButIsDirectory', 'Lorg/apache/commons/io/FileUtilsTestCase;.test_openOutputStream_existsButIsDirectory()V|Ljava/lang/Exception;').
name_ref(m_test_open_output_stream_no_parent_create_file_174, method, 'test_openOutputStream_noParentCreateFile', 'Lorg/apache/commons/io/FileUtilsTestCase;.test_openOutputStream_noParentCreateFile()V|Ljava/lang/Exception;').
name_ref(m_test_open_output_stream_no_parent_no_file_175, method, 'test_openOutputStream_noParentNoFile', 'Lorg/apache/commons/io/FileUtilsTestCase;.test_openOutputStream_noParentNoFile()V|Ljava/lang/Exception;').
name_ref(m_test_open_output_stream_not_exists_178, method, 'test_openOutputStream_notExists', 'Lorg/apache/commons/io/FileUtilsTestCase;.test_openOutputStream_notExists()V|Ljava/lang/Exception;').
name_ref(m_test_open_output_stream_not_exists_cannot_create_179, method, 'test_openOutputStream_notExistsCannotCreate', 'Lorg/apache/commons/io/FileUtilsTestCase;.test_openOutputStream_notExistsCannotCreate()V|Ljava/lang/Exception;').
name_ref(m_test_read_file_to_byte_array_250, method, 'testReadFileToByteArray', 'Lorg/apache/commons/io/FileUtilsTestCase;.testReadFileToByteArray()V|Ljava/lang/Exception;').
name_ref(m_test_read_file_to_string_with_default_encoding_248, method, 'testReadFileToStringWithDefaultEncoding', 'Lorg/apache/commons/io/FileUtilsTestCase;.testReadFileToStringWithDefaultEncoding()V|Ljava/lang/Exception;').
name_ref(m_test_read_file_to_string_with_encoding_249, method, 'testReadFileToStringWithEncoding', 'Lorg/apache/commons/io/FileUtilsTestCase;.testReadFileToStringWithEncoding()V|Ljava/lang/Exception;').
name_ref(m_test_read_lines_251, method, 'testReadLines', 'Lorg/apache/commons/io/FileUtilsTestCase;.testReadLines()V|Ljava/lang/Exception;').
name_ref(m_test_size_of_210, method, 'testSizeOf', 'Lorg/apache/commons/io/FileUtilsTestCase;.testSizeOf()V|Ljava/lang/Exception;').
name_ref(m_test_size_of_as_big_integer_211, method, 'testSizeOfAsBigInteger', 'Lorg/apache/commons/io/FileUtilsTestCase;.testSizeOfAsBigInteger()V|Ljava/lang/Exception;').
name_ref(m_test_size_of_directory_206, method, 'testSizeOfDirectory', 'Lorg/apache/commons/io/FileUtilsTestCase;.testSizeOfDirectory()V|Ljava/lang/Exception;').
name_ref(m_test_size_of_directory_as_big_integer_208, method, 'testSizeOfDirectoryAsBigInteger', 'Lorg/apache/commons/io/FileUtilsTestCase;.testSizeOfDirectoryAsBigInteger()V|Ljava/lang/Exception;').
name_ref(m_test_to_file1_182, method, 'testToFile1', 'Lorg/apache/commons/io/FileUtilsTestCase;.testToFile1()V|Ljava/lang/Exception;').
name_ref(m_test_to_file2_183, method, 'testToFile2', 'Lorg/apache/commons/io/FileUtilsTestCase;.testToFile2()V|Ljava/lang/Exception;').
name_ref(m_test_to_file3_184, method, 'testToFile3', 'Lorg/apache/commons/io/FileUtilsTestCase;.testToFile3()V|Ljava/lang/Exception;').
name_ref(m_test_to_file4_185, method, 'testToFile4', 'Lorg/apache/commons/io/FileUtilsTestCase;.testToFile4()V|Ljava/lang/Exception;').
name_ref(m_test_to_file5_186, method, 'testToFile5', 'Lorg/apache/commons/io/FileUtilsTestCase;.testToFile5()V|Ljava/lang/Exception;').
name_ref(m_test_to_file_utf8_187, method, 'testToFileUtf8', 'Lorg/apache/commons/io/FileUtilsTestCase;.testToFileUtf8()V|Ljava/lang/Exception;').
name_ref(m_test_to_files1_192, method, 'testToFiles1', 'Lorg/apache/commons/io/FileUtilsTestCase;.testToFiles1()V|Ljava/lang/Exception;').
name_ref(m_test_to_files2_193, method, 'testToFiles2', 'Lorg/apache/commons/io/FileUtilsTestCase;.testToFiles2()V|Ljava/lang/Exception;').
name_ref(m_test_to_files3_194, method, 'testToFiles3', 'Lorg/apache/commons/io/FileUtilsTestCase;.testToFiles3()V|Ljava/lang/Exception;').
name_ref(m_test_to_files3a_195, method, 'testToFiles3a', 'Lorg/apache/commons/io/FileUtilsTestCase;.testToFiles3a()V|Ljava/lang/Exception;').
name_ref(m_test_to_files4_196, method, 'testToFiles4', 'Lorg/apache/commons/io/FileUtilsTestCase;.testToFiles4()V|Ljava/lang/Exception;').
name_ref(m_test_to_urls1_197, method, 'testToURLs1', 'Lorg/apache/commons/io/FileUtilsTestCase;.testToURLs1()V|Ljava/lang/Exception;').
name_ref(m_test_to_urls3a_198, method, 'testToURLs3a', 'Lorg/apache/commons/io/FileUtilsTestCase;.testToURLs3a()V|Ljava/lang/Exception;').
name_ref(m_test_touch_243, method, 'testTouch', 'Lorg/apache/commons/io/FileUtilsTestCase;.testTouch()V|Ljava/io/IOException;').
name_ref(m_test_utils_366, method, 'TestUtils', 'Lorg/apache/commons/io/testtools/TestUtils;.()V').
name_ref(m_test_write__with_append_option_false__should_delete_previous_file_lines_278, method, 'testWrite_WithAppendOptionFalse_ShouldDeletePreviousFileLines', 'Lorg/apache/commons/io/FileUtilsTestCase;.testWrite_WithAppendOptionFalse_ShouldDeletePreviousFileLines()V|Ljava/lang/Exception;').
name_ref(m_test_write__with_append_option_true__should_not_delete_previous_file_lines_277, method, 'testWrite_WithAppendOptionTrue_ShouldNotDeletePreviousFileLines', 'Lorg/apache/commons/io/FileUtilsTestCase;.testWrite_WithAppendOptionTrue_ShouldNotDeletePreviousFileLines()V|Ljava/lang/Exception;').
name_ref(m_test_write_byte_array_to_file_257, method, 'testWriteByteArrayToFile', 'Lorg/apache/commons/io/FileUtilsTestCase;.testWriteByteArrayToFile()V|Ljava/lang/Exception;').
name_ref(m_test_write_byte_array_to_file__with_append_option_false__should_delete_previous_file_lines_280, method, 'testWriteByteArrayToFile_WithAppendOptionFalse_ShouldDeletePreviousFileLines', 'Lorg/apache/commons/io/FileUtilsTestCase;.testWriteByteArrayToFile_WithAppendOptionFalse_ShouldDeletePreviousFileLines()V|Ljava/lang/Exception;').
name_ref(m_test_write_byte_array_to_file__with_append_option_true__should_not_delete_previous_file_lines_279, method, 'testWriteByteArrayToFile_WithAppendOptionTrue_ShouldNotDeletePreviousFileLines', 'Lorg/apache/commons/io/FileUtilsTestCase;.testWriteByteArrayToFile_WithAppendOptionTrue_ShouldNotDeletePreviousFileLines()V|Ljava/lang/Exception;').
name_ref(m_test_write_byte_array_to_file__with_offset_and_length_258, method, 'testWriteByteArrayToFile_WithOffsetAndLength', 'Lorg/apache/commons/io/FileUtilsTestCase;.testWriteByteArrayToFile_WithOffsetAndLength()V|Ljava/lang/Exception;').
name_ref(m_test_write_byte_array_to_file__with_offset_and_length__with_append_option_true__should_delete_previous_file_lines_282, method, 'testWriteByteArrayToFile_WithOffsetAndLength_WithAppendOptionTrue_ShouldDeletePreviousFileLines', 'Lorg/apache/commons/io/FileUtilsTestCase;.testWriteByteArrayToFile_WithOffsetAndLength_WithAppendOptionTrue_ShouldDeletePreviousFileLines()V|Ljava/lang/Exception;').
name_ref(m_test_write_byte_array_to_file__with_offset_and_length__with_append_option_true__should_not_delete_previous_file_lines_281, method, 'testWriteByteArrayToFile_WithOffsetAndLength_WithAppendOptionTrue_ShouldNotDeletePreviousFileLines', 'Lorg/apache/commons/io/FileUtilsTestCase;.testWriteByteArrayToFile_WithOffsetAndLength_WithAppendOptionTrue_ShouldNotDeletePreviousFileLines()V|Ljava/lang/Exception;').
name_ref(m_test_write_char_sequence1_255, method, 'testWriteCharSequence1', 'Lorg/apache/commons/io/FileUtilsTestCase;.testWriteCharSequence1()V|Ljava/lang/Exception;').
name_ref(m_test_write_char_sequence2_256, method, 'testWriteCharSequence2', 'Lorg/apache/commons/io/FileUtilsTestCase;.testWriteCharSequence2()V|Ljava/lang/Exception;').
name_ref(m_test_write_lines_3arg_null_separator_262, method, 'testWriteLines_3arg_nullSeparator', 'Lorg/apache/commons/io/FileUtilsTestCase;.testWriteLines_3arg_nullSeparator()V|Ljava/lang/Exception;').
name_ref(m_test_write_lines_3args_with_append_option_false__should_delete_previous_file_lines_270, method, 'testWriteLines_3argsWithAppendOptionFalse_ShouldDeletePreviousFileLines', 'Lorg/apache/commons/io/FileUtilsTestCase;.testWriteLines_3argsWithAppendOptionFalse_ShouldDeletePreviousFileLines()V|Ljava/lang/Exception;').
name_ref(m_test_write_lines_3args_with_append_option_true__should_not_delete_previous_file_lines_269, method, 'testWriteLines_3argsWithAppendOptionTrue_ShouldNotDeletePreviousFileLines', 'Lorg/apache/commons/io/FileUtilsTestCase;.testWriteLines_3argsWithAppendOptionTrue_ShouldNotDeletePreviousFileLines()V|Ljava/lang/Exception;').
name_ref(m_test_write_lines_4arg_259, method, 'testWriteLines_4arg', 'Lorg/apache/commons/io/FileUtilsTestCase;.testWriteLines_4arg()V|Ljava/lang/Exception;').
name_ref(m_test_write_lines_4arg__writer_null_data_260, method, 'testWriteLines_4arg_Writer_nullData', 'Lorg/apache/commons/io/FileUtilsTestCase;.testWriteLines_4arg_Writer_nullData()V|Ljava/lang/Exception;').
name_ref(m_test_write_lines_4arg_null_separator_261, method, 'testWriteLines_4arg_nullSeparator', 'Lorg/apache/commons/io/FileUtilsTestCase;.testWriteLines_4arg_nullSeparator()V|Ljava/lang/Exception;').
name_ref(m_test_write_lines_4args_with_append_option_false__should_delete_previous_file_lines_266, method, 'testWriteLines_4argsWithAppendOptionFalse_ShouldDeletePreviousFileLines', 'Lorg/apache/commons/io/FileUtilsTestCase;.testWriteLines_4argsWithAppendOptionFalse_ShouldDeletePreviousFileLines()V|Ljava/lang/Exception;').
name_ref(m_test_write_lines_4args_with_append_option_true__should_not_delete_previous_file_lines_265, method, 'testWriteLines_4argsWithAppendOptionTrue_ShouldNotDeletePreviousFileLines', 'Lorg/apache/commons/io/FileUtilsTestCase;.testWriteLines_4argsWithAppendOptionTrue_ShouldNotDeletePreviousFileLines()V|Ljava/lang/Exception;').
name_ref(m_test_write_lines_5args_with_append_option_false__should_delete_previous_file_lines_264, method, 'testWriteLines_5argsWithAppendOptionFalse_ShouldDeletePreviousFileLines', 'Lorg/apache/commons/io/FileUtilsTestCase;.testWriteLines_5argsWithAppendOptionFalse_ShouldDeletePreviousFileLines()V|Ljava/lang/Exception;').
name_ref(m_test_write_lines_5args_with_append_option_true__should_not_delete_previous_file_lines_263, method, 'testWriteLines_5argsWithAppendOptionTrue_ShouldNotDeletePreviousFileLines', 'Lorg/apache/commons/io/FileUtilsTestCase;.testWriteLines_5argsWithAppendOptionTrue_ShouldNotDeletePreviousFileLines()V|Ljava/lang/Exception;').
name_ref(m_test_write_lines_encoding__with_append_option_false__should_delete_previous_file_lines_268, method, 'testWriteLinesEncoding_WithAppendOptionFalse_ShouldDeletePreviousFileLines', 'Lorg/apache/commons/io/FileUtilsTestCase;.testWriteLinesEncoding_WithAppendOptionFalse_ShouldDeletePreviousFileLines()V|Ljava/lang/Exception;').
name_ref(m_test_write_lines_encoding__with_append_option_true__should_not_delete_previous_file_lines_267, method, 'testWriteLinesEncoding_WithAppendOptionTrue_ShouldNotDeletePreviousFileLines', 'Lorg/apache/commons/io/FileUtilsTestCase;.testWriteLinesEncoding_WithAppendOptionTrue_ShouldNotDeletePreviousFileLines()V|Ljava/lang/Exception;').
name_ref(m_test_write_string_to_file1_252, method, 'testWriteStringToFile1', 'Lorg/apache/commons/io/FileUtilsTestCase;.testWriteStringToFile1()V|Ljava/lang/Exception;').
name_ref(m_test_write_string_to_file2_253, method, 'testWriteStringToFile2', 'Lorg/apache/commons/io/FileUtilsTestCase;.testWriteStringToFile2()V|Ljava/lang/Exception;').
name_ref(m_test_write_string_to_file3_254, method, 'testWriteStringToFile3', 'Lorg/apache/commons/io/FileUtilsTestCase;.testWriteStringToFile3()V|Ljava/lang/Exception;').
name_ref(m_test_write_string_to_file__with_append_option_false__should_delete_previous_file_lines_274, method, 'testWriteStringToFile_WithAppendOptionFalse_ShouldDeletePreviousFileLines', 'Lorg/apache/commons/io/FileUtilsTestCase;.testWriteStringToFile_WithAppendOptionFalse_ShouldDeletePreviousFileLines()V|Ljava/lang/Exception;').
name_ref(m_test_write_string_to_file__with_append_option_true__should_not_delete_previous_file_lines_273, method, 'testWriteStringToFile_WithAppendOptionTrue_ShouldNotDeletePreviousFileLines', 'Lorg/apache/commons/io/FileUtilsTestCase;.testWriteStringToFile_WithAppendOptionTrue_ShouldNotDeletePreviousFileLines()V|Ljava/lang/Exception;').
name_ref(m_test_write_string_to_file_with_encoding__with_append_option_false__should_delete_previous_file_lines_272, method, 'testWriteStringToFileWithEncoding_WithAppendOptionFalse_ShouldDeletePreviousFileLines', 'Lorg/apache/commons/io/FileUtilsTestCase;.testWriteStringToFileWithEncoding_WithAppendOptionFalse_ShouldDeletePreviousFileLines()V|Ljava/lang/Exception;').
name_ref(m_test_write_string_to_file_with_encoding__with_append_option_true__should_not_delete_previous_file_lines_271, method, 'testWriteStringToFileWithEncoding_WithAppendOptionTrue_ShouldNotDeletePreviousFileLines', 'Lorg/apache/commons/io/FileUtilsTestCase;.testWriteStringToFileWithEncoding_WithAppendOptionTrue_ShouldNotDeletePreviousFileLines()V|Ljava/lang/Exception;').
name_ref(m_test_write_with_encoding__with_append_option_false__should_delete_previous_file_lines_276, method, 'testWriteWithEncoding_WithAppendOptionFalse_ShouldDeletePreviousFileLines', 'Lorg/apache/commons/io/FileUtilsTestCase;.testWriteWithEncoding_WithAppendOptionFalse_ShouldDeletePreviousFileLines()V|Ljava/lang/Exception;').
name_ref(m_test_write_with_encoding__with_append_option_true__should_not_delete_previous_file_lines_275, method, 'testWriteWithEncoding_WithAppendOptionTrue_ShouldNotDeletePreviousFileLines', 'Lorg/apache/commons/io/FileUtilsTestCase;.testWriteWithEncoding_WithAppendOptionTrue_ShouldNotDeletePreviousFileLines()V|Ljava/lang/Exception;').
name_ref(m_to_file_119, method, 'toFile', 'Lorg/apache/commons/io/FileUtils;.toFile(Ljava/net/URL;)Ljava/io/File;').
name_ref(m_to_files_120, method, 'toFiles', 'Lorg/apache/commons/io/FileUtils;.toFiles([Ljava/net/URL;)[Ljava/io/File;').
name_ref(m_to_path_64, method, 'toPath', 'Ljava/io/File;.toPath()Ljava/nio/file/Path;').
name_ref(m_to_string_324, method, 'toString', 'Lorg/apache/commons/io/file/Counters$AbstractPathCounters;.toString()Ljava/lang/String;').
name_ref(m_to_string_330, method, 'toString', 'Lorg/apache/commons/io/file/Counters$BigIntegerCounter;.toString()Ljava/lang/String;').
name_ref(m_to_string_341, method, 'toString', 'Lorg/apache/commons/io/file/Counters$LongCounter;.toString()Ljava/lang/String;').
name_ref(m_to_suffixes_121, method, 'toSuffixes', 'Lorg/apache/commons/io/FileUtils;.toSuffixes([Ljava/lang/String;)[Ljava/lang/String;').
name_ref(m_to_urls_123, method, 'toURLs', 'Lorg/apache/commons/io/FileUtils;.toURLs([Ljava/io/File;)[Ljava/net/URL;|Ljava/io/IOException;').
name_ref(m_touch_122, method, 'touch', 'Lorg/apache/commons/io/FileUtils;.touch(Ljava/io/File;)V|Ljava/io/IOException;').
name_ref(m_validate_list_files_parameters_124, method, 'validateListFilesParameters', 'Lorg/apache/commons/io/FileUtils;.validateListFilesParameters(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;)V').
name_ref(m_validate_move_parameters_125, method, 'validateMoveParameters', 'Lorg/apache/commons/io/FileUtils;.validateMoveParameters(Ljava/io/File;Ljava/io/File;)V|Ljava/io/FileNotFoundException;').
name_ref(m_value_of_21, method, 'valueOf', 'Ljava/math/BigInteger;.valueOf(J)Ljava/math/BigInteger;').
name_ref(m_verified_list_files_31, method, 'verifiedListFiles', 'Lorg/apache/commons/io/FileUtils;.verifiedListFiles(Ljava/io/File;)[Ljava/io/File;|Ljava/io/IOException;').
name_ref(m_visit_file_tree_362, method, 'visitFileTree', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/nio/file/Path;)TT;|Ljava/io/IOException;').
name_ref(m_visit_file_tree_363, method, 'visitFileTree', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/lang/String;[Ljava/lang/String;)TT;|Ljava/io/IOException;').
name_ref(m_visit_file_tree_364, method, 'visitFileTree', 'Lorg/apache/commons/io/file/PathUtils;.visitFileTree<T::Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;>(TT;Ljava/net/URI;)TT;|Ljava/io/IOException;').
name_ref(m_wait_for_128, method, 'waitFor', 'Lorg/apache/commons/io/FileUtils;.waitFor(Ljava/io/File;I)Z').
name_ref(m_walk_4, method, 'walk', 'Lorg/apache/commons/io/DirectoryWalker;.walk(Ljava/io/File;Ljava/util/Collection<TT;>;)V|Ljava/io/IOException;').
name_ref(m_walk_5, method, 'walk', 'Lorg/apache/commons/io/DirectoryWalker;.walk(Ljava/io/File;ILjava/util/Collection<TT;>;)V|Ljava/io/IOException;').
name_ref(m_write_129, method, 'write', 'Lorg/apache/commons/io/FileUtils;.write(Ljava/io/File;Ljava/lang/CharSequence;)V|Ljava/io/IOException;').
name_ref(m_write_130, method, 'write', 'Lorg/apache/commons/io/FileUtils;.write(Ljava/io/File;Ljava/lang/CharSequence;Z)V|Ljava/io/IOException;').
name_ref(m_write_131, method, 'write', 'Lorg/apache/commons/io/FileUtils;.write(Ljava/io/File;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;').
name_ref(m_write_132, method, 'write', 'Lorg/apache/commons/io/FileUtils;.write(Ljava/io/File;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;Z)V|Ljava/io/IOException;').
name_ref(m_write_133, method, 'write', 'Lorg/apache/commons/io/FileUtils;.write(Ljava/io/File;Ljava/lang/CharSequence;Ljava/lang/String;)V|Ljava/io/IOException;').
name_ref(m_write_134, method, 'write', 'Lorg/apache/commons/io/FileUtils;.write(Ljava/io/File;Ljava/lang/CharSequence;Ljava/lang/String;Z)V|Ljava/io/IOException;').
name_ref(m_write_byte_array_to_file_135, method, 'writeByteArrayToFile', 'Lorg/apache/commons/io/FileUtils;.writeByteArrayToFile(Ljava/io/File;[B)V|Ljava/io/IOException;').
name_ref(m_write_byte_array_to_file_136, method, 'writeByteArrayToFile', 'Lorg/apache/commons/io/FileUtils;.writeByteArrayToFile(Ljava/io/File;[BZ)V|Ljava/io/IOException;').
name_ref(m_write_byte_array_to_file_137, method, 'writeByteArrayToFile', 'Lorg/apache/commons/io/FileUtils;.writeByteArrayToFile(Ljava/io/File;[BII)V|Ljava/io/IOException;').
name_ref(m_write_byte_array_to_file_138, method, 'writeByteArrayToFile', 'Lorg/apache/commons/io/FileUtils;.writeByteArrayToFile(Ljava/io/File;[BIIZ)V|Ljava/io/IOException;').
name_ref(m_write_lines_139, method, 'writeLines', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/util/Collection<*>;)V|Ljava/io/IOException;').
name_ref(m_write_lines_140, method, 'writeLines', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/util/Collection<*>;Z)V|Ljava/io/IOException;').
name_ref(m_write_lines_141, method, 'writeLines', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/util/Collection<*>;Ljava/lang/String;)V|Ljava/io/IOException;').
name_ref(m_write_lines_142, method, 'writeLines', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/util/Collection<*>;Ljava/lang/String;Z)V|Ljava/io/IOException;').
name_ref(m_write_lines_143, method, 'writeLines', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection<*>;)V|Ljava/io/IOException;').
name_ref(m_write_lines_144, method, 'writeLines', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection<*>;Z)V|Ljava/io/IOException;').
name_ref(m_write_lines_145, method, 'writeLines', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection<*>;Ljava/lang/String;)V|Ljava/io/IOException;').
name_ref(m_write_lines_146, method, 'writeLines', 'Lorg/apache/commons/io/FileUtils;.writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection<*>;Ljava/lang/String;Z)V|Ljava/io/IOException;').
name_ref(m_write_string_to_file_147, method, 'writeStringToFile', 'Lorg/apache/commons/io/FileUtils;.writeStringToFile(Ljava/io/File;Ljava/lang/String;)V|Ljava/io/IOException;').
name_ref(m_write_string_to_file_148, method, 'writeStringToFile', 'Lorg/apache/commons/io/FileUtils;.writeStringToFile(Ljava/io/File;Ljava/lang/String;Z)V|Ljava/io/IOException;').
name_ref(m_write_string_to_file_149, method, 'writeStringToFile', 'Lorg/apache/commons/io/FileUtils;.writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;)V|Ljava/io/IOException;').
name_ref(m_write_string_to_file_150, method, 'writeStringToFile', 'Lorg/apache/commons/io/FileUtils;.writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V|Ljava/io/IOException;').
name_ref(m_write_string_to_file_151, method, 'writeStringToFile', 'Lorg/apache/commons/io/FileUtils;.writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V|Ljava/io/IOException;').
name_ref(m_write_string_to_file_152, method, 'writeStringToFile', 'Lorg/apache/commons/io/FileUtils;.writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V|Ljava/io/IOException;').
name_ref(q_zero_1, q_name, 'BigInteger.ZERO', 'Ljava/math/BigInteger;:Ljava/math/BigInteger;.ZERO)Ljava/math/BigInteger;').

%%% End of Code Facts