%%% Code Facts
:- style_check(-discontiguous).
%%% Classes
class(file_system_1, 'org.apache.commons.io.FileSystem').
class(iocase_1, 'org.apache.commons.io.IOCase').
class(iocase_test_1, 'org.apache.commons.io.IOCaseTest').
class(filename_utils_1, 'org.apache.commons.io.FilenameUtils').

%%% Methods
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
%iocase_1 - org.apache.commons.io.IOCase
method(m_for_name_79, range(iocase_1, 2578, 466, 71, 81)).
method(m_is_case_sensitive_80, range(iocase_1, 3050, 336, 83, 92)).
method(m_value_81, range(iocase_1, 3392, 403, 94, 104)).
method(m_iocase_82, range(iocase_1, 3947, 247, 112, 121)).
method(m_check_compare_to_83, range(iocase_1, 4200, 679, 123, 139)).
method(m_check_ends_with_84, range(iocase_1, 4885, 665, 141, 158)).
method(m_check_equals_85, range(iocase_1, 5556, 552, 160, 173)).
method(m_check_index_of_86, range(iocase_1, 6114, 1034, 175, 201)).
method(m_check_region_matches_88, range(iocase_1, 7154, 756, 203, 218)).
method(m_check_starts_with_90, range(iocase_1, 7916, 588, 220, 233)).
method(m_get_name_91, range(iocase_1, 8510, 153, 235, 242)).
method(m_is_case_sensitive_92, range(iocase_1, 8669, 187, 244, 251)).
method(m_read_resolve_93, range(iocase_1, 8862, 250, 253, 261)).
method(m_to_string_94, range(iocase_1, 9118, 190, 263, 271)).
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
method(m_test_check_index_of_case_104, range(iocase_test_1, 6355, 720, 151, 164)).
method(m_test_check_index_of_functionality_106, range(iocase_test_1, 7081, 2488, 166, 208)).
method(m_test_check_region_matches_case_107, range(iocase_test_1, 9575, 510, 210, 220)).
method(m_test_check_region_matches_functionality_108, range(iocase_test_1, 10091, 2032, 222, 250)).
method(m_test_check_starts_with_case_109, range(iocase_test_1, 12129, 471, 252, 262)).
method(m_test_check_starts_with_functionality_110, range(iocase_test_1, 12606, 869, 264, 279)).
method(m_test_for_name_111, range(iocase_test_1, 13481, 415, 281, 288)).
method(m_test_get_name_112, range(iocase_test_1, 13902, 231, 290, 295)).
method(m_test_get_scratch_byte_array_113, range(iocase_test_1, 14139, 226, 297, 303)).
method(m_test_get_scratch_byte_array_write_only_114, range(iocase_test_1, 14371, 244, 305, 311)).
method(m_test_get_scratch_char_array_115, range(iocase_test_1, 14621, 226, 313, 319)).
method(m_test_get_scratch_char_array_write_only_116, range(iocase_test_1, 14853, 244, 321, 327)).
method(m_test_is_case_sensitive_117, range(iocase_test_1, 15103, 232, 329, 334)).
method(m_test_is_case_sensitive_static_118, range(iocase_test_1, 15341, 257, 336, 341)).
method(m_test__serialization_119, range(iocase_test_1, 15604, 266, 343, 348)).
method(m_test_to_string_120, range(iocase_test_1, 15876, 235, 350, 355)).
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

%%% Blocks
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
%iocase_1 - org.apache.commons.io.IOCase
block(iocase_1_block1, block, iocase_1_code7, body, range(iocase_1, 4125, 69, 118, 121)).
block(iocase_1_block2, block, iocase_1_code14, body, range(iocase_1, 6828, 320, 191, 201)).
block(iocase_1_block3, block, iocase_1_stmt4, then_statement, range(iocase_1, 6930, 193, 193, 199)).
block(iocase_1_block4, block, iocase_1_stmt5, body, range(iocase_1, 6992, 121, 194, 198)).
block(iocase_1_block5, block, iocase_1_stmt6, then_statement, range(iocase_1, 7050, 49, 195, 197)).
block(iocase_1_block6, block, iocase_1_code20, body, range(iocase_1, 7814, 96, 216, 218)).
%iocase_test_1 - org.apache.commons.io.IOCaseTest
block(iocase_test_1_block1, block, iocase_test_1_code10, body, range(iocase_test_1, 6402, 673, 152, 164)).
block(iocase_test_1_block2, block, iocase_test_1_code11, body, range(iocase_test_1, 7137, 2432, 167, 208)).
%filename_utils_1 - org.apache.commons.io.FilenameUtils
block(filename_utils_1_block1, block, filename_utils_1_code41, body, range(filename_utils_1, 19380, 259, 524, 532)).
block(filename_utils_1_block2, block, filename_utils_1_stmt1, then_statement, range(filename_utils_1, 19421, 54, 525, 527)).
block(filename_utils_1_block3, block, filename_utils_1_stmt3, then_statement, range(filename_utils_1, 19518, 51, 528, 530)).

%%% Statements
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
%iocase_1 - org.apache.commons.io.IOCase
stmt(iocase_1_stmt1, expression_statement, iocase_1_block1, (statements, 0), range(iocase_1, 4135, 17, 119, 119)).
stmt(iocase_1_stmt2, expression_statement, iocase_1_block1, (statements, 1), range(iocase_1, 4161, 27, 120, 120)).
stmt(iocase_1_stmt3, variable_declaration_statement, iocase_1_block2, (statements, 0), range(iocase_1, 6838, 52, 192, 192)).
stmt(iocase_1_stmt4, if_statement, iocase_1_block2, (statements, 1), range(iocase_1, 6899, 224, 193, 199)).
stmt(iocase_1_stmt5, for_statement, iocase_1_block3, (statements, 0), range(iocase_1, 6944, 169, 194, 198)).
stmt(iocase_1_stmt6, if_statement, iocase_1_block4, (statements, 0), range(iocase_1, 7010, 89, 195, 197)).
stmt(iocase_1_stmt7, return_statement, iocase_1_block5, (statements, 0), range(iocase_1, 7072, 9, 196, 196)).
stmt(iocase_1_stmt8, return_statement, iocase_1_block2, (statements, 2), range(iocase_1, 7132, 10, 200, 200)).
stmt(iocase_1_stmt9, return_statement, iocase_1_block6, (statements, 0), range(iocase_1, 7824, 80, 217, 217)).
%iocase_test_1 - org.apache.commons.io.IOCaseTest
stmt(iocase_test_1_stmt1, expression_statement, iocase_test_1_block1, (statements, 0), range(iocase_test_1, 6412, 64, 153, 153)).
stmt(iocase_test_1_stmt2, expression_statement, iocase_test_1_block1, (statements, 1), range(iocase_test_1, 6485, 64, 154, 154)).
stmt(iocase_test_1_stmt3, expression_statement, iocase_test_1_block1, (statements, 2), range(iocase_test_1, 6558, 63, 155, 155)).
stmt(iocase_test_1_stmt4, expression_statement, iocase_test_1_block2, (statements, 0), range(iocase_test_1, 7165, 71, 170, 170)).
stmt(iocase_test_1_stmt5, expression_statement, iocase_test_1_block2, (statements, 1), range(iocase_test_1, 7245, 71, 171, 171)).
stmt(iocase_test_1_stmt6, expression_statement, iocase_test_1_block2, (statements, 2), range(iocase_test_1, 7325, 72, 172, 172)).
stmt(iocase_test_1_stmt7, expression_statement, iocase_test_1_block2, (statements, 3), range(iocase_test_1, 7406, 72, 173, 173)).
stmt(iocase_test_1_stmt8, expression_statement, iocase_test_1_block2, (statements, 4), range(iocase_test_1, 7487, 73, 174, 174)).
stmt(iocase_test_1_stmt9, expression_statement, iocase_test_1_block2, (statements, 5), range(iocase_test_1, 7569, 73, 175, 175)).
stmt(iocase_test_1_stmt10, expression_statement, iocase_test_1_block2, (statements, 6), range(iocase_test_1, 7670, 71, 178, 178)).
stmt(iocase_test_1_stmt11, expression_statement, iocase_test_1_block2, (statements, 7), range(iocase_test_1, 7750, 71, 179, 179)).
stmt(iocase_test_1_stmt12, expression_statement, iocase_test_1_block2, (statements, 8), range(iocase_test_1, 7830, 71, 180, 180)).
stmt(iocase_test_1_stmt13, expression_statement, iocase_test_1_block2, (statements, 9), range(iocase_test_1, 7910, 72, 181, 181)).
stmt(iocase_test_1_stmt14, expression_statement, iocase_test_1_block2, (statements, 10), range(iocase_test_1, 7991, 72, 182, 182)).
stmt(iocase_test_1_stmt15, expression_statement, iocase_test_1_block2, (statements, 11), range(iocase_test_1, 8072, 72, 183, 183)).
stmt(iocase_test_1_stmt16, expression_statement, iocase_test_1_block2, (statements, 12), range(iocase_test_1, 8153, 73, 184, 184)).
stmt(iocase_test_1_stmt17, expression_statement, iocase_test_1_block2, (statements, 13), range(iocase_test_1, 8235, 73, 185, 185)).
stmt(iocase_test_1_stmt18, expression_statement, iocase_test_1_block2, (statements, 14), range(iocase_test_1, 8317, 73, 186, 186)).
stmt(iocase_test_1_stmt19, expression_statement, iocase_test_1_block2, (statements, 15), range(iocase_test_1, 8415, 71, 189, 189)).
stmt(iocase_test_1_stmt20, expression_statement, iocase_test_1_block2, (statements, 16), range(iocase_test_1, 8495, 71, 190, 190)).
stmt(iocase_test_1_stmt21, expression_statement, iocase_test_1_block2, (statements, 17), range(iocase_test_1, 8575, 71, 191, 191)).
stmt(iocase_test_1_stmt22, expression_statement, iocase_test_1_block2, (statements, 18), range(iocase_test_1, 8655, 72, 192, 192)).
stmt(iocase_test_1_stmt23, expression_statement, iocase_test_1_block2, (statements, 19), range(iocase_test_1, 8736, 72, 193, 193)).
stmt(iocase_test_1_stmt24, expression_statement, iocase_test_1_block2, (statements, 20), range(iocase_test_1, 8817, 72, 194, 194)).
stmt(iocase_test_1_stmt25, expression_statement, iocase_test_1_block2, (statements, 21), range(iocase_test_1, 8898, 73, 195, 195)).
stmt(iocase_test_1_stmt26, expression_statement, iocase_test_1_block2, (statements, 22), range(iocase_test_1, 8980, 73, 196, 196)).
stmt(iocase_test_1_stmt27, expression_statement, iocase_test_1_block2, (statements, 23), range(iocase_test_1, 9062, 73, 197, 197)).
stmt(iocase_test_1_stmt28, expression_statement, iocase_test_1_block2, (statements, 24), range(iocase_test_1, 9166, 74, 200, 200)).
stmt(iocase_test_1_stmt29, expression_statement, iocase_test_1_block2, (statements, 25), range(iocase_test_1, 9270, 74, 203, 203)).
stmt(iocase_test_1_stmt30, expression_statement, iocase_test_1_block2, (statements, 26), range(iocase_test_1, 9354, 64, 205, 205)).
%filename_utils_1 - org.apache.commons.io.FilenameUtils
stmt(filename_utils_1_stmt1, if_statement, filename_utils_1_block1, (statements, 0), range(filename_utils_1, 19390, 85, 525, 527)).
stmt(filename_utils_1_stmt2, return_statement, filename_utils_1_block2, (statements, 0), range(filename_utils_1, 19435, 30, 526, 526)).
stmt(filename_utils_1_stmt3, if_statement, filename_utils_1_block1, (statements, 1), range(filename_utils_1, 19484, 85, 528, 530)).
stmt(filename_utils_1_stmt4, return_statement, filename_utils_1_block3, (statements, 0), range(filename_utils_1, 19532, 27, 529, 529)).

%%% Expressions
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
%iocase_1 - org.apache.commons.io.IOCase
expr(iocase_1_expr1, method_invocation, iocase_1_code6, (arguments, 1), range(iocase_1, 2422, 41, 66, 66), "FileSystem.getCurrent().isCaseSensitive()").
expr(iocase_1_expr2, method_invocation, iocase_1_expr1, expression, range(iocase_1, 2422, 23, 66, 66), "FileSystem.getCurrent()").
expr(iocase_1_expr3, assignment, iocase_1_stmt1, expression, range(iocase_1, 4135, 16, 119, 119), "this.name=name").
expr(iocase_1_expr4, field_access, iocase_1_expr3, left_hand_side, range(iocase_1, 4135, 9, 119, 119), "this.name").
expr(iocase_1_expr5, this_expression, f_name_134, expression, range(iocase_1, 4135, 4, 119, 119), "this").
expr(iocase_1_expr8, this_expression, f_sensitive_135, expression, range(iocase_1, 4161, 4, 120, 120), "this").
expr(iocase_1_expr6, assignment, iocase_1_stmt2, expression, range(iocase_1, 4161, 26, 120, 120), "this.sensitive=sensitive").
expr(iocase_1_expr7, field_access, iocase_1_expr6, left_hand_side, range(iocase_1, 4161, 14, 120, 120), "this.sensitive").
expr(iocase_1_expr9, infix_expression, iocase_1_code17, initializer, range(iocase_1, 6859, 30, 192, 192), "str.length() - search.length()").
expr(iocase_1_expr10, method_invocation, iocase_1_expr9, left_operand, range(iocase_1, 6859, 12, 192, 192), "str.length()").
expr(iocase_1_expr11, method_invocation, iocase_1_expr9, right_operand, range(iocase_1, 6874, 15, 192, 192), "search.length()").
expr(iocase_1_expr12, infix_expression, iocase_1_stmt4, expression, range(iocase_1, 6903, 25, 193, 193), "endIndex >= strStartIndex").
expr(iocase_1_expr13, variable_declaration_expression, iocase_1_stmt5, (initializers, 0), range(iocase_1, 6949, 21, 194, 194), "int i=strStartIndex").
expr(iocase_1_expr14, infix_expression, iocase_1_stmt5, expression, range(iocase_1, 6972, 13, 194, 194), "i <= endIndex").
expr(iocase_1_expr15, postfix_expression, iocase_1_stmt5, (updaters, 0), range(iocase_1, 6987, 3, 194, 194), "i++").
expr(iocase_1_expr16, method_invocation, iocase_1_stmt6, expression, range(iocase_1, 7014, 34, 195, 195), "checkRegionMatches(str,i,search)").
expr(iocase_1_expr17, prefix_expression, iocase_1_stmt8, expression, range(iocase_1, 7139, 2, 200, 200), "-1").
expr(iocase_1_expr18, method_invocation, iocase_1_stmt9, expression, range(iocase_1, 7831, 72, 217, 217), "str.regionMatches(!sensitive,strStartIndex,search,0,search.length())").
expr(iocase_1_expr19, prefix_expression, iocase_1_expr18, (arguments, 0), range(iocase_1, 7849, 10, 217, 217), "!sensitive").
expr(iocase_1_expr20, method_invocation, iocase_1_expr18, (arguments, 4), range(iocase_1, 7887, 15, 217, 217), "search.length()").
%iocase_test_1 - org.apache.commons.io.IOCaseTest
expr(iocase_test_1_expr1, infix_expression, iocase_test_1_code9, initializer, range(iocase_test_1, 1466, 26, 39, 39), "File.separatorChar == '\\\\'").
expr(iocase_test_1_expr2, method_invocation, iocase_test_1_stmt1, expression, range(iocase_test_1, 6412, 63, 153, 153), "assertEquals(1,IOCase.SENSITIVE.checkIndexOf(\"ABC\",0,\"BC\"))").
expr(iocase_test_1_expr3, method_invocation, iocase_test_1_expr2, (arguments, 1), range(iocase_test_1, 6429, 45, 153, 153), "IOCase.SENSITIVE.checkIndexOf(\"ABC\",0,\"BC\")").
expr(iocase_test_1_expr4, method_invocation, iocase_test_1_stmt2, expression, range(iocase_test_1, 6485, 63, 154, 154), "assertEquals(-1,IOCase.SENSITIVE.checkIndexOf(\"ABC\",0,\"Bc\"))").
expr(iocase_test_1_expr5, prefix_expression, iocase_test_1_expr4, (arguments, 0), range(iocase_test_1, 6498, 2, 154, 154), "-1").
expr(iocase_test_1_expr6, method_invocation, iocase_test_1_expr4, (arguments, 1), range(iocase_test_1, 6502, 45, 154, 154), "IOCase.SENSITIVE.checkIndexOf(\"ABC\",0,\"Bc\")").
expr(iocase_test_1_expr7, method_invocation, iocase_test_1_stmt3, expression, range(iocase_test_1, 6558, 62, 155, 155), "assertEquals(-1,IOCase.SENSITIVE.checkIndexOf(null,0,\"Bc\"))").
expr(iocase_test_1_expr8, prefix_expression, iocase_test_1_expr7, (arguments, 0), range(iocase_test_1, 6571, 2, 155, 155), "-1").
expr(iocase_test_1_expr9, method_invocation, iocase_test_1_expr7, (arguments, 1), range(iocase_test_1, 6575, 44, 155, 155), "IOCase.SENSITIVE.checkIndexOf(null,0,\"Bc\")").
expr(iocase_test_1_expr10, method_invocation, iocase_test_1_stmt4, expression, range(iocase_test_1, 7165, 70, 170, 170), "assertEquals(0,IOCase.SENSITIVE.checkIndexOf(\"ABCDEFGHIJ\",0,\"A\"))").
expr(iocase_test_1_expr11, method_invocation, iocase_test_1_expr10, (arguments, 1), range(iocase_test_1, 7183, 51, 170, 170), "IOCase.SENSITIVE.checkIndexOf(\"ABCDEFGHIJ\",0,\"A\")").
expr(iocase_test_1_expr12, method_invocation, iocase_test_1_stmt5, expression, range(iocase_test_1, 7245, 70, 171, 171), "assertEquals(-1,IOCase.SENSITIVE.checkIndexOf(\"ABCDEFGHIJ\",1,\"A\"))").
expr(iocase_test_1_expr13, prefix_expression, iocase_test_1_expr12, (arguments, 0), range(iocase_test_1, 7258, 2, 171, 171), "-1").
expr(iocase_test_1_expr14, method_invocation, iocase_test_1_expr12, (arguments, 1), range(iocase_test_1, 7263, 51, 171, 171), "IOCase.SENSITIVE.checkIndexOf(\"ABCDEFGHIJ\",1,\"A\")").
expr(iocase_test_1_expr15, method_invocation, iocase_test_1_stmt6, expression, range(iocase_test_1, 7325, 71, 172, 172), "assertEquals(0,IOCase.SENSITIVE.checkIndexOf(\"ABCDEFGHIJ\",0,\"AB\"))").
expr(iocase_test_1_expr16, method_invocation, iocase_test_1_expr15, (arguments, 1), range(iocase_test_1, 7343, 52, 172, 172), "IOCase.SENSITIVE.checkIndexOf(\"ABCDEFGHIJ\",0,\"AB\")").
expr(iocase_test_1_expr17, method_invocation, iocase_test_1_stmt7, expression, range(iocase_test_1, 7406, 71, 173, 173), "assertEquals(-1,IOCase.SENSITIVE.checkIndexOf(\"ABCDEFGHIJ\",1,\"AB\"))").
expr(iocase_test_1_expr18, prefix_expression, iocase_test_1_expr17, (arguments, 0), range(iocase_test_1, 7419, 2, 173, 173), "-1").
expr(iocase_test_1_expr19, method_invocation, iocase_test_1_expr17, (arguments, 1), range(iocase_test_1, 7424, 52, 173, 173), "IOCase.SENSITIVE.checkIndexOf(\"ABCDEFGHIJ\",1,\"AB\")").
expr(iocase_test_1_expr20, method_invocation, iocase_test_1_stmt8, expression, range(iocase_test_1, 7487, 72, 174, 174), "assertEquals(0,IOCase.SENSITIVE.checkIndexOf(\"ABCDEFGHIJ\",0,\"ABC\"))").
expr(iocase_test_1_expr21, method_invocation, iocase_test_1_expr20, (arguments, 1), range(iocase_test_1, 7505, 53, 174, 174), "IOCase.SENSITIVE.checkIndexOf(\"ABCDEFGHIJ\",0,\"ABC\")").
expr(iocase_test_1_expr22, method_invocation, iocase_test_1_stmt9, expression, range(iocase_test_1, 7569, 72, 175, 175), "assertEquals(-1,IOCase.SENSITIVE.checkIndexOf(\"ABCDEFGHIJ\",1,\"ABC\"))").
expr(iocase_test_1_expr23, prefix_expression, iocase_test_1_expr22, (arguments, 0), range(iocase_test_1, 7582, 2, 175, 175), "-1").
expr(iocase_test_1_expr24, method_invocation, iocase_test_1_expr22, (arguments, 1), range(iocase_test_1, 7587, 53, 175, 175), "IOCase.SENSITIVE.checkIndexOf(\"ABCDEFGHIJ\",1,\"ABC\")").
expr(iocase_test_1_expr25, method_invocation, iocase_test_1_stmt10, expression, range(iocase_test_1, 7670, 70, 178, 178), "assertEquals(3,IOCase.SENSITIVE.checkIndexOf(\"ABCDEFGHIJ\",0,\"D\"))").
expr(iocase_test_1_expr26, method_invocation, iocase_test_1_expr25, (arguments, 1), range(iocase_test_1, 7688, 51, 178, 178), "IOCase.SENSITIVE.checkIndexOf(\"ABCDEFGHIJ\",0,\"D\")").
expr(iocase_test_1_expr27, method_invocation, iocase_test_1_stmt11, expression, range(iocase_test_1, 7750, 70, 179, 179), "assertEquals(3,IOCase.SENSITIVE.checkIndexOf(\"ABCDEFGHIJ\",3,\"D\"))").
expr(iocase_test_1_expr28, method_invocation, iocase_test_1_expr27, (arguments, 1), range(iocase_test_1, 7768, 51, 179, 179), "IOCase.SENSITIVE.checkIndexOf(\"ABCDEFGHIJ\",3,\"D\")").
expr(iocase_test_1_expr29, method_invocation, iocase_test_1_stmt12, expression, range(iocase_test_1, 7830, 70, 180, 180), "assertEquals(-1,IOCase.SENSITIVE.checkIndexOf(\"ABCDEFGHIJ\",4,\"D\"))").
expr(iocase_test_1_expr30, prefix_expression, iocase_test_1_expr29, (arguments, 0), range(iocase_test_1, 7843, 2, 180, 180), "-1").
expr(iocase_test_1_expr31, method_invocation, iocase_test_1_expr29, (arguments, 1), range(iocase_test_1, 7848, 51, 180, 180), "IOCase.SENSITIVE.checkIndexOf(\"ABCDEFGHIJ\",4,\"D\")").
expr(iocase_test_1_expr32, method_invocation, iocase_test_1_stmt13, expression, range(iocase_test_1, 7910, 71, 181, 181), "assertEquals(3,IOCase.SENSITIVE.checkIndexOf(\"ABCDEFGHIJ\",0,\"DE\"))").
expr(iocase_test_1_expr33, method_invocation, iocase_test_1_expr32, (arguments, 1), range(iocase_test_1, 7928, 52, 181, 181), "IOCase.SENSITIVE.checkIndexOf(\"ABCDEFGHIJ\",0,\"DE\")").
expr(iocase_test_1_expr34, method_invocation, iocase_test_1_stmt14, expression, range(iocase_test_1, 7991, 71, 182, 182), "assertEquals(3,IOCase.SENSITIVE.checkIndexOf(\"ABCDEFGHIJ\",3,\"DE\"))").
expr(iocase_test_1_expr35, method_invocation, iocase_test_1_expr34, (arguments, 1), range(iocase_test_1, 8009, 52, 182, 182), "IOCase.SENSITIVE.checkIndexOf(\"ABCDEFGHIJ\",3,\"DE\")").
expr(iocase_test_1_expr36, method_invocation, iocase_test_1_stmt15, expression, range(iocase_test_1, 8072, 71, 183, 183), "assertEquals(-1,IOCase.SENSITIVE.checkIndexOf(\"ABCDEFGHIJ\",4,\"DE\"))").
expr(iocase_test_1_expr37, prefix_expression, iocase_test_1_expr36, (arguments, 0), range(iocase_test_1, 8085, 2, 183, 183), "-1").
expr(iocase_test_1_expr38, method_invocation, iocase_test_1_expr36, (arguments, 1), range(iocase_test_1, 8090, 52, 183, 183), "IOCase.SENSITIVE.checkIndexOf(\"ABCDEFGHIJ\",4,\"DE\")").
expr(iocase_test_1_expr39, method_invocation, iocase_test_1_stmt16, expression, range(iocase_test_1, 8153, 72, 184, 184), "assertEquals(3,IOCase.SENSITIVE.checkIndexOf(\"ABCDEFGHIJ\",0,\"DEF\"))").
expr(iocase_test_1_expr40, method_invocation, iocase_test_1_expr39, (arguments, 1), range(iocase_test_1, 8171, 53, 184, 184), "IOCase.SENSITIVE.checkIndexOf(\"ABCDEFGHIJ\",0,\"DEF\")").
expr(iocase_test_1_expr41, method_invocation, iocase_test_1_stmt17, expression, range(iocase_test_1, 8235, 72, 185, 185), "assertEquals(3,IOCase.SENSITIVE.checkIndexOf(\"ABCDEFGHIJ\",3,\"DEF\"))").
expr(iocase_test_1_expr42, method_invocation, iocase_test_1_expr41, (arguments, 1), range(iocase_test_1, 8253, 53, 185, 185), "IOCase.SENSITIVE.checkIndexOf(\"ABCDEFGHIJ\",3,\"DEF\")").
expr(iocase_test_1_expr43, method_invocation, iocase_test_1_stmt18, expression, range(iocase_test_1, 8317, 72, 186, 186), "assertEquals(-1,IOCase.SENSITIVE.checkIndexOf(\"ABCDEFGHIJ\",4,\"DEF\"))").
expr(iocase_test_1_expr44, prefix_expression, iocase_test_1_expr43, (arguments, 0), range(iocase_test_1, 8330, 2, 186, 186), "-1").
expr(iocase_test_1_expr45, method_invocation, iocase_test_1_expr43, (arguments, 1), range(iocase_test_1, 8335, 53, 186, 186), "IOCase.SENSITIVE.checkIndexOf(\"ABCDEFGHIJ\",4,\"DEF\")").
expr(iocase_test_1_expr46, method_invocation, iocase_test_1_stmt19, expression, range(iocase_test_1, 8415, 70, 189, 189), "assertEquals(9,IOCase.SENSITIVE.checkIndexOf(\"ABCDEFGHIJ\",0,\"J\"))").
expr(iocase_test_1_expr47, method_invocation, iocase_test_1_expr46, (arguments, 1), range(iocase_test_1, 8433, 51, 189, 189), "IOCase.SENSITIVE.checkIndexOf(\"ABCDEFGHIJ\",0,\"J\")").
expr(iocase_test_1_expr48, method_invocation, iocase_test_1_stmt20, expression, range(iocase_test_1, 8495, 70, 190, 190), "assertEquals(9,IOCase.SENSITIVE.checkIndexOf(\"ABCDEFGHIJ\",8,\"J\"))").
expr(iocase_test_1_expr49, method_invocation, iocase_test_1_expr48, (arguments, 1), range(iocase_test_1, 8513, 51, 190, 190), "IOCase.SENSITIVE.checkIndexOf(\"ABCDEFGHIJ\",8,\"J\")").
expr(iocase_test_1_expr50, method_invocation, iocase_test_1_stmt21, expression, range(iocase_test_1, 8575, 70, 191, 191), "assertEquals(9,IOCase.SENSITIVE.checkIndexOf(\"ABCDEFGHIJ\",9,\"J\"))").
expr(iocase_test_1_expr51, method_invocation, iocase_test_1_expr50, (arguments, 1), range(iocase_test_1, 8593, 51, 191, 191), "IOCase.SENSITIVE.checkIndexOf(\"ABCDEFGHIJ\",9,\"J\")").
expr(iocase_test_1_expr52, method_invocation, iocase_test_1_stmt22, expression, range(iocase_test_1, 8655, 71, 192, 192), "assertEquals(8,IOCase.SENSITIVE.checkIndexOf(\"ABCDEFGHIJ\",0,\"IJ\"))").
expr(iocase_test_1_expr53, method_invocation, iocase_test_1_expr52, (arguments, 1), range(iocase_test_1, 8673, 52, 192, 192), "IOCase.SENSITIVE.checkIndexOf(\"ABCDEFGHIJ\",0,\"IJ\")").
expr(iocase_test_1_expr54, method_invocation, iocase_test_1_stmt23, expression, range(iocase_test_1, 8736, 71, 193, 193), "assertEquals(8,IOCase.SENSITIVE.checkIndexOf(\"ABCDEFGHIJ\",8,\"IJ\"))").
expr(iocase_test_1_expr55, method_invocation, iocase_test_1_expr54, (arguments, 1), range(iocase_test_1, 8754, 52, 193, 193), "IOCase.SENSITIVE.checkIndexOf(\"ABCDEFGHIJ\",8,\"IJ\")").
expr(iocase_test_1_expr56, method_invocation, iocase_test_1_stmt24, expression, range(iocase_test_1, 8817, 71, 194, 194), "assertEquals(-1,IOCase.SENSITIVE.checkIndexOf(\"ABCDEFGHIJ\",9,\"IJ\"))").
expr(iocase_test_1_expr57, prefix_expression, iocase_test_1_expr56, (arguments, 0), range(iocase_test_1, 8830, 2, 194, 194), "-1").
expr(iocase_test_1_expr58, method_invocation, iocase_test_1_expr56, (arguments, 1), range(iocase_test_1, 8835, 52, 194, 194), "IOCase.SENSITIVE.checkIndexOf(\"ABCDEFGHIJ\",9,\"IJ\")").
expr(iocase_test_1_expr59, method_invocation, iocase_test_1_stmt25, expression, range(iocase_test_1, 8898, 72, 195, 195), "assertEquals(7,IOCase.SENSITIVE.checkIndexOf(\"ABCDEFGHIJ\",6,\"HIJ\"))").
expr(iocase_test_1_expr60, method_invocation, iocase_test_1_expr59, (arguments, 1), range(iocase_test_1, 8916, 53, 195, 195), "IOCase.SENSITIVE.checkIndexOf(\"ABCDEFGHIJ\",6,\"HIJ\")").
expr(iocase_test_1_expr61, method_invocation, iocase_test_1_stmt26, expression, range(iocase_test_1, 8980, 72, 196, 196), "assertEquals(7,IOCase.SENSITIVE.checkIndexOf(\"ABCDEFGHIJ\",7,\"HIJ\"))").
expr(iocase_test_1_expr62, method_invocation, iocase_test_1_expr61, (arguments, 1), range(iocase_test_1, 8998, 53, 196, 196), "IOCase.SENSITIVE.checkIndexOf(\"ABCDEFGHIJ\",7,\"HIJ\")").
expr(iocase_test_1_expr63, method_invocation, iocase_test_1_stmt27, expression, range(iocase_test_1, 9062, 72, 197, 197), "assertEquals(-1,IOCase.SENSITIVE.checkIndexOf(\"ABCDEFGHIJ\",8,\"HIJ\"))").
expr(iocase_test_1_expr64, prefix_expression, iocase_test_1_expr63, (arguments, 0), range(iocase_test_1, 9075, 2, 197, 197), "-1").
expr(iocase_test_1_expr65, method_invocation, iocase_test_1_expr63, (arguments, 1), range(iocase_test_1, 9080, 53, 197, 197), "IOCase.SENSITIVE.checkIndexOf(\"ABCDEFGHIJ\",8,\"HIJ\")").
expr(iocase_test_1_expr66, method_invocation, iocase_test_1_stmt28, expression, range(iocase_test_1, 9166, 73, 200, 200), "assertEquals(-1,IOCase.SENSITIVE.checkIndexOf(\"ABCDEFGHIJ\",0,\"DED\"))").
expr(iocase_test_1_expr67, prefix_expression, iocase_test_1_expr66, (arguments, 0), range(iocase_test_1, 9179, 2, 200, 200), "-1").
expr(iocase_test_1_expr68, method_invocation, iocase_test_1_expr66, (arguments, 1), range(iocase_test_1, 9185, 53, 200, 200), "IOCase.SENSITIVE.checkIndexOf(\"ABCDEFGHIJ\",0,\"DED\")").
expr(iocase_test_1_expr69, method_invocation, iocase_test_1_stmt29, expression, range(iocase_test_1, 9270, 73, 203, 203), "assertEquals(-1,IOCase.SENSITIVE.checkIndexOf(\"DEF\",0,\"ABCDEFGHIJ\"))").
expr(iocase_test_1_expr70, prefix_expression, iocase_test_1_expr69, (arguments, 0), range(iocase_test_1, 9283, 2, 203, 203), "-1").
expr(iocase_test_1_expr71, method_invocation, iocase_test_1_expr69, (arguments, 1), range(iocase_test_1, 9289, 53, 203, 203), "IOCase.SENSITIVE.checkIndexOf(\"DEF\",0,\"ABCDEFGHIJ\")").
expr(iocase_test_1_expr72, method_invocation, iocase_test_1_stmt30, expression, range(iocase_test_1, 9354, 63, 205, 205), "assertEquals(-1,IOCase.SENSITIVE.checkIndexOf(\"ABC\",0,null))").
expr(iocase_test_1_expr73, prefix_expression, iocase_test_1_expr72, (arguments, 0), range(iocase_test_1, 9367, 2, 205, 205), "-1").
expr(iocase_test_1_expr74, method_invocation, iocase_test_1_expr72, (arguments, 1), range(iocase_test_1, 9371, 45, 205, 205), "IOCase.SENSITIVE.checkIndexOf(\"ABC\",0,null)").
%filename_utils_1 - org.apache.commons.io.FilenameUtils
expr(filename_utils_1_expr1, array_initializer, filename_utils_1_code10, initializer, range(filename_utils_1, 3715, 2, 100, 100), "{}").
expr(filename_utils_1_expr2, method_invocation, filename_utils_1_code16, initializer, range(filename_utils_1, 4081, 39, 116, 116), "Character.toString(EXTENSION_SEPARATOR)").
expr(filename_utils_1_expr3, method_invocation, filename_utils_1_code28, initializer, range(filename_utils_1, 4623, 36, 136, 136), "flipSeparator(SYSTEM_NAME_SEPARATOR)").
expr(filename_utils_1_expr4, method_invocation, filename_utils_1_code34, initializer, range(filename_utils_1, 4710, 70, 138, 138), "Pattern.compile(\"^(\\\\d{1,3})\\\\.(\\\\d{1,3})\\\\.(\\\\d{1,3})\\\\.(\\\\d{1,3})$\")").
expr(filename_utils_1_expr5, method_invocation, filename_utils_1_code40, initializer, range(filename_utils_1, 5121, 45, 150, 150), "Pattern.compile(\"^[a-zA-Z0-9][a-zA-Z0-9-]*$\")").
expr(filename_utils_1_expr6, infix_expression, filename_utils_1_stmt1, expression, range(filename_utils_1, 19394, 25, 525, 525), "ch == UNIX_NAME_SEPARATOR").
expr(filename_utils_1_expr7, infix_expression, filename_utils_1_stmt3, expression, range(filename_utils_1, 19488, 28, 528, 528), "ch == WINDOWS_NAME_SEPARATOR").

%%% Names
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
name(q_root_3, qualified_name, file_system_1_expr18, (arguments, 0), range(file_system_1, 9975, 11, 285, 285), 'Locale.ROOT').
name(t_locale_4, simple_name, q_root_3, qualifier, range(file_system_1, 9975, 6, 285, 285), 'Locale').
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
%iocase_1 - org.apache.commons.io.IOCase
name(t_iocase_10, simple_name, iocase_1_code2, name, range(iocase_1, 1448, 6, 40, 40), 'IOCase').
name(f_sensitive_125, simple_name, iocase_1_code4, name, range(iocase_1, 1549, 9, 45, 45), 'SENSITIVE').
name(f_insensitive_126, simple_name, iocase_1_code5, name, range(iocase_1, 1673, 11, 50, 50), 'INSENSITIVE').
name(f_system_127, simple_name, iocase_1_code6, name, range(iocase_1, 2405, 6, 66, 66), 'SYSTEM').
name(t_file_system_1, simple_name, iocase_1_expr2, expression, range(iocase_1, 2422, 10, 66, 66), 'FileSystem').
name(m_get_current_3, simple_name, iocase_1_expr2, name, range(iocase_1, 2433, 10, 66, 66), 'getCurrent').
name(m_is_case_sensitive_22, simple_name, iocase_1_expr1, name, range(iocase_1, 2446, 15, 66, 66), 'isCaseSensitive').
name(m_iocase_82, simple_name, iocase_1_code7, name, range(iocase_1, 4074, 6, 118, 118), 'IOCase').
name(p_name_132, simple_name, iocase_1_code8, name, range(iocase_1, 4094, 4, 118, 118), 'name').
name(p_sensitive_133, simple_name, iocase_1_code11, name, range(iocase_1, 4114, 9, 118, 118), 'sensitive').
name(f_name_134, simple_name, iocase_1_expr4, name, range(iocase_1, 4140, 4, 119, 119), 'name').
name(p_name_132, simple_name, iocase_1_expr3, right_hand_side, range(iocase_1, 4147, 4, 119, 119), 'name').
name(f_sensitive_135, simple_name, iocase_1_expr7, name, range(iocase_1, 4166, 9, 120, 120), 'sensitive').
name(p_sensitive_133, simple_name, iocase_1_expr6, right_hand_side, range(iocase_1, 4178, 9, 120, 120), 'sensitive').
name(v_end_index_145, simple_name, iocase_1_code17, name, range(iocase_1, 6848, 8, 192, 192), 'endIndex').
name(p_str_142, simple_name, iocase_1_expr10, expression, range(iocase_1, 6859, 3, 192, 192), 'str').
name(m_length_87, simple_name, iocase_1_expr10, name, range(iocase_1, 6863, 6, 192, 192), 'length').
name(p_search_144, simple_name, iocase_1_expr11, expression, range(iocase_1, 6874, 6, 192, 192), 'search').
name(m_length_87, simple_name, iocase_1_expr11, name, range(iocase_1, 6881, 6, 192, 192), 'length').
name(v_end_index_145, simple_name, iocase_1_expr12, left_operand, range(iocase_1, 6903, 8, 193, 193), 'endIndex').
name(p_str_start_index_143, simple_name, iocase_1_expr12, right_operand, range(iocase_1, 6915, 13, 193, 193), 'strStartIndex').
name(v_i_146, simple_name, iocase_1_code19, name, range(iocase_1, 6953, 1, 194, 194), 'i').
name(p_str_start_index_143, simple_name, iocase_1_code19, initializer, range(iocase_1, 6957, 13, 194, 194), 'strStartIndex').
name(v_i_146, simple_name, iocase_1_expr14, left_operand, range(iocase_1, 6972, 1, 194, 194), 'i').
name(v_end_index_145, simple_name, iocase_1_expr14, right_operand, range(iocase_1, 6977, 8, 194, 194), 'endIndex').
name(v_i_146, simple_name, iocase_1_expr15, operand, range(iocase_1, 6987, 1, 194, 194), 'i').
name(m_check_region_matches_88, simple_name, iocase_1_expr16, name, range(iocase_1, 7014, 18, 195, 195), 'checkRegionMatches').
name(p_str_142, simple_name, iocase_1_expr16, (arguments, 0), range(iocase_1, 7033, 3, 195, 195), 'str').
name(v_i_146, simple_name, iocase_1_expr16, (arguments, 1), range(iocase_1, 7038, 1, 195, 195), 'i').
name(p_search_144, simple_name, iocase_1_expr16, (arguments, 2), range(iocase_1, 7041, 6, 195, 195), 'search').
name(v_i_146, simple_name, iocase_1_stmt7, expression, range(iocase_1, 7079, 1, 196, 196), 'i').
name(p_str_147, simple_name, iocase_1_expr18, expression, range(iocase_1, 7831, 3, 217, 217), 'str').
name(m_region_matches_89, simple_name, iocase_1_expr18, name, range(iocase_1, 7835, 13, 217, 217), 'regionMatches').
name(f_sensitive_135, simple_name, iocase_1_expr19, operand, range(iocase_1, 7850, 9, 217, 217), 'sensitive').
name(p_str_start_index_148, simple_name, iocase_1_expr18, (arguments, 1), range(iocase_1, 7861, 13, 217, 217), 'strStartIndex').
name(p_search_149, simple_name, iocase_1_expr18, (arguments, 2), range(iocase_1, 7876, 6, 217, 217), 'search').
name(p_search_149, simple_name, iocase_1_expr20, expression, range(iocase_1, 7887, 6, 217, 217), 'search').
name(m_length_87, simple_name, iocase_1_expr20, name, range(iocase_1, 7894, 6, 217, 217), 'length').
%iocase_test_1 - org.apache.commons.io.IOCaseTest
name(t_iocase_test_11, simple_name, iocase_test_1_code2, name, range(iocase_test_1, 1409, 10, 37, 37), 'IOCaseTest').
name(f_windows_152, simple_name, iocase_test_1_code9, name, range(iocase_test_1, 1456, 7, 39, 39), 'WINDOWS').
name(q_separator_char_4, qualified_name, iocase_test_1_expr1, left_operand, range(iocase_test_1, 1466, 18, 39, 39), 'File.separatorChar').
name(t_file_8, simple_name, q_separator_char_4, qualifier, range(iocase_test_1, 1466, 4, 39, 39), 'File').
name(m_assert_equals_105, simple_name, iocase_test_1_expr2, name, range(iocase_test_1, 6412, 12, 153, 153), 'assertEquals').
name(t_iocase_10, simple_name, q_sensitive_4, qualifier, range(iocase_test_1, 6429, 6, 153, 153), 'IOCase').
name(q_sensitive_4, qualified_name, iocase_test_1_expr3, expression, range(iocase_test_1, 6429, 16, 153, 153), 'IOCase.SENSITIVE').
name(m_check_index_of_86, simple_name, iocase_test_1_expr3, name, range(iocase_test_1, 6446, 12, 153, 153), 'checkIndexOf').
name(m_assert_equals_105, simple_name, iocase_test_1_expr4, name, range(iocase_test_1, 6485, 12, 154, 154), 'assertEquals').
name(q_sensitive_5, qualified_name, iocase_test_1_expr6, expression, range(iocase_test_1, 6502, 16, 154, 154), 'IOCase.SENSITIVE').
name(t_iocase_10, simple_name, q_sensitive_5, qualifier, range(iocase_test_1, 6502, 6, 154, 154), 'IOCase').
name(m_check_index_of_86, simple_name, iocase_test_1_expr6, name, range(iocase_test_1, 6519, 12, 154, 154), 'checkIndexOf').
name(m_assert_equals_105, simple_name, iocase_test_1_expr7, name, range(iocase_test_1, 6558, 12, 155, 155), 'assertEquals').
name(q_sensitive_5, qualified_name, iocase_test_1_expr9, expression, range(iocase_test_1, 6575, 16, 155, 155), 'IOCase.SENSITIVE').
name(t_iocase_10, simple_name, q_sensitive_5, qualifier, range(iocase_test_1, 6575, 6, 155, 155), 'IOCase').
name(m_check_index_of_86, simple_name, iocase_test_1_expr9, name, range(iocase_test_1, 6592, 12, 155, 155), 'checkIndexOf').
name(m_assert_equals_105, simple_name, iocase_test_1_expr10, name, range(iocase_test_1, 7165, 12, 170, 170), 'assertEquals').
name(q_sensitive_5, qualified_name, iocase_test_1_expr11, expression, range(iocase_test_1, 7183, 16, 170, 170), 'IOCase.SENSITIVE').
name(t_iocase_10, simple_name, q_sensitive_5, qualifier, range(iocase_test_1, 7183, 6, 170, 170), 'IOCase').
name(m_check_index_of_86, simple_name, iocase_test_1_expr11, name, range(iocase_test_1, 7200, 12, 170, 170), 'checkIndexOf').
name(m_assert_equals_105, simple_name, iocase_test_1_expr12, name, range(iocase_test_1, 7245, 12, 171, 171), 'assertEquals').
name(t_iocase_10, simple_name, q_sensitive_5, qualifier, range(iocase_test_1, 7263, 6, 171, 171), 'IOCase').
name(q_sensitive_5, qualified_name, iocase_test_1_expr14, expression, range(iocase_test_1, 7263, 16, 171, 171), 'IOCase.SENSITIVE').
name(m_check_index_of_86, simple_name, iocase_test_1_expr14, name, range(iocase_test_1, 7280, 12, 171, 171), 'checkIndexOf').
name(m_assert_equals_105, simple_name, iocase_test_1_expr15, name, range(iocase_test_1, 7325, 12, 172, 172), 'assertEquals').
name(t_iocase_10, simple_name, q_sensitive_5, qualifier, range(iocase_test_1, 7343, 6, 172, 172), 'IOCase').
name(q_sensitive_5, qualified_name, iocase_test_1_expr16, expression, range(iocase_test_1, 7343, 16, 172, 172), 'IOCase.SENSITIVE').
name(m_check_index_of_86, simple_name, iocase_test_1_expr16, name, range(iocase_test_1, 7360, 12, 172, 172), 'checkIndexOf').
name(m_assert_equals_105, simple_name, iocase_test_1_expr17, name, range(iocase_test_1, 7406, 12, 173, 173), 'assertEquals').
name(q_sensitive_5, qualified_name, iocase_test_1_expr19, expression, range(iocase_test_1, 7424, 16, 173, 173), 'IOCase.SENSITIVE').
name(t_iocase_10, simple_name, q_sensitive_5, qualifier, range(iocase_test_1, 7424, 6, 173, 173), 'IOCase').
name(m_check_index_of_86, simple_name, iocase_test_1_expr19, name, range(iocase_test_1, 7441, 12, 173, 173), 'checkIndexOf').
name(m_assert_equals_105, simple_name, iocase_test_1_expr20, name, range(iocase_test_1, 7487, 12, 174, 174), 'assertEquals').
name(q_sensitive_5, qualified_name, iocase_test_1_expr21, expression, range(iocase_test_1, 7505, 16, 174, 174), 'IOCase.SENSITIVE').
name(t_iocase_10, simple_name, q_sensitive_5, qualifier, range(iocase_test_1, 7505, 6, 174, 174), 'IOCase').
name(m_check_index_of_86, simple_name, iocase_test_1_expr21, name, range(iocase_test_1, 7522, 12, 174, 174), 'checkIndexOf').
name(m_assert_equals_105, simple_name, iocase_test_1_expr22, name, range(iocase_test_1, 7569, 12, 175, 175), 'assertEquals').
name(t_iocase_10, simple_name, q_sensitive_5, qualifier, range(iocase_test_1, 7587, 6, 175, 175), 'IOCase').
name(q_sensitive_5, qualified_name, iocase_test_1_expr24, expression, range(iocase_test_1, 7587, 16, 175, 175), 'IOCase.SENSITIVE').
name(m_check_index_of_86, simple_name, iocase_test_1_expr24, name, range(iocase_test_1, 7604, 12, 175, 175), 'checkIndexOf').
name(m_assert_equals_105, simple_name, iocase_test_1_expr25, name, range(iocase_test_1, 7670, 12, 178, 178), 'assertEquals').
name(q_sensitive_5, qualified_name, iocase_test_1_expr26, expression, range(iocase_test_1, 7688, 16, 178, 178), 'IOCase.SENSITIVE').
name(t_iocase_10, simple_name, q_sensitive_5, qualifier, range(iocase_test_1, 7688, 6, 178, 178), 'IOCase').
name(m_check_index_of_86, simple_name, iocase_test_1_expr26, name, range(iocase_test_1, 7705, 12, 178, 178), 'checkIndexOf').
name(m_assert_equals_105, simple_name, iocase_test_1_expr27, name, range(iocase_test_1, 7750, 12, 179, 179), 'assertEquals').
name(t_iocase_10, simple_name, q_sensitive_5, qualifier, range(iocase_test_1, 7768, 6, 179, 179), 'IOCase').
name(q_sensitive_5, qualified_name, iocase_test_1_expr28, expression, range(iocase_test_1, 7768, 16, 179, 179), 'IOCase.SENSITIVE').
name(m_check_index_of_86, simple_name, iocase_test_1_expr28, name, range(iocase_test_1, 7785, 12, 179, 179), 'checkIndexOf').
name(m_assert_equals_105, simple_name, iocase_test_1_expr29, name, range(iocase_test_1, 7830, 12, 180, 180), 'assertEquals').
name(t_iocase_10, simple_name, q_sensitive_5, qualifier, range(iocase_test_1, 7848, 6, 180, 180), 'IOCase').
name(q_sensitive_5, qualified_name, iocase_test_1_expr31, expression, range(iocase_test_1, 7848, 16, 180, 180), 'IOCase.SENSITIVE').
name(m_check_index_of_86, simple_name, iocase_test_1_expr31, name, range(iocase_test_1, 7865, 12, 180, 180), 'checkIndexOf').
name(m_assert_equals_105, simple_name, iocase_test_1_expr32, name, range(iocase_test_1, 7910, 12, 181, 181), 'assertEquals').
name(t_iocase_10, simple_name, q_sensitive_5, qualifier, range(iocase_test_1, 7928, 6, 181, 181), 'IOCase').
name(q_sensitive_5, qualified_name, iocase_test_1_expr33, expression, range(iocase_test_1, 7928, 16, 181, 181), 'IOCase.SENSITIVE').
name(m_check_index_of_86, simple_name, iocase_test_1_expr33, name, range(iocase_test_1, 7945, 12, 181, 181), 'checkIndexOf').
name(m_assert_equals_105, simple_name, iocase_test_1_expr34, name, range(iocase_test_1, 7991, 12, 182, 182), 'assertEquals').
name(q_sensitive_5, qualified_name, iocase_test_1_expr35, expression, range(iocase_test_1, 8009, 16, 182, 182), 'IOCase.SENSITIVE').
name(t_iocase_10, simple_name, q_sensitive_5, qualifier, range(iocase_test_1, 8009, 6, 182, 182), 'IOCase').
name(m_check_index_of_86, simple_name, iocase_test_1_expr35, name, range(iocase_test_1, 8026, 12, 182, 182), 'checkIndexOf').
name(m_assert_equals_105, simple_name, iocase_test_1_expr36, name, range(iocase_test_1, 8072, 12, 183, 183), 'assertEquals').
name(q_sensitive_5, qualified_name, iocase_test_1_expr38, expression, range(iocase_test_1, 8090, 16, 183, 183), 'IOCase.SENSITIVE').
name(t_iocase_10, simple_name, q_sensitive_5, qualifier, range(iocase_test_1, 8090, 6, 183, 183), 'IOCase').
name(m_check_index_of_86, simple_name, iocase_test_1_expr38, name, range(iocase_test_1, 8107, 12, 183, 183), 'checkIndexOf').
name(m_assert_equals_105, simple_name, iocase_test_1_expr39, name, range(iocase_test_1, 8153, 12, 184, 184), 'assertEquals').
name(q_sensitive_5, qualified_name, iocase_test_1_expr40, expression, range(iocase_test_1, 8171, 16, 184, 184), 'IOCase.SENSITIVE').
name(t_iocase_10, simple_name, q_sensitive_5, qualifier, range(iocase_test_1, 8171, 6, 184, 184), 'IOCase').
name(m_check_index_of_86, simple_name, iocase_test_1_expr40, name, range(iocase_test_1, 8188, 12, 184, 184), 'checkIndexOf').
name(m_assert_equals_105, simple_name, iocase_test_1_expr41, name, range(iocase_test_1, 8235, 12, 185, 185), 'assertEquals').
name(t_iocase_10, simple_name, q_sensitive_5, qualifier, range(iocase_test_1, 8253, 6, 185, 185), 'IOCase').
name(q_sensitive_5, qualified_name, iocase_test_1_expr42, expression, range(iocase_test_1, 8253, 16, 185, 185), 'IOCase.SENSITIVE').
name(m_check_index_of_86, simple_name, iocase_test_1_expr42, name, range(iocase_test_1, 8270, 12, 185, 185), 'checkIndexOf').
name(m_assert_equals_105, simple_name, iocase_test_1_expr43, name, range(iocase_test_1, 8317, 12, 186, 186), 'assertEquals').
name(q_sensitive_5, qualified_name, iocase_test_1_expr45, expression, range(iocase_test_1, 8335, 16, 186, 186), 'IOCase.SENSITIVE').
name(t_iocase_10, simple_name, q_sensitive_5, qualifier, range(iocase_test_1, 8335, 6, 186, 186), 'IOCase').
name(m_check_index_of_86, simple_name, iocase_test_1_expr45, name, range(iocase_test_1, 8352, 12, 186, 186), 'checkIndexOf').
name(m_assert_equals_105, simple_name, iocase_test_1_expr46, name, range(iocase_test_1, 8415, 12, 189, 189), 'assertEquals').
name(t_iocase_10, simple_name, q_sensitive_5, qualifier, range(iocase_test_1, 8433, 6, 189, 189), 'IOCase').
name(q_sensitive_5, qualified_name, iocase_test_1_expr47, expression, range(iocase_test_1, 8433, 16, 189, 189), 'IOCase.SENSITIVE').
name(m_check_index_of_86, simple_name, iocase_test_1_expr47, name, range(iocase_test_1, 8450, 12, 189, 189), 'checkIndexOf').
name(m_assert_equals_105, simple_name, iocase_test_1_expr48, name, range(iocase_test_1, 8495, 12, 190, 190), 'assertEquals').
name(q_sensitive_5, qualified_name, iocase_test_1_expr49, expression, range(iocase_test_1, 8513, 16, 190, 190), 'IOCase.SENSITIVE').
name(t_iocase_10, simple_name, q_sensitive_5, qualifier, range(iocase_test_1, 8513, 6, 190, 190), 'IOCase').
name(m_check_index_of_86, simple_name, iocase_test_1_expr49, name, range(iocase_test_1, 8530, 12, 190, 190), 'checkIndexOf').
name(m_assert_equals_105, simple_name, iocase_test_1_expr50, name, range(iocase_test_1, 8575, 12, 191, 191), 'assertEquals').
name(t_iocase_10, simple_name, q_sensitive_5, qualifier, range(iocase_test_1, 8593, 6, 191, 191), 'IOCase').
name(q_sensitive_5, qualified_name, iocase_test_1_expr51, expression, range(iocase_test_1, 8593, 16, 191, 191), 'IOCase.SENSITIVE').
name(m_check_index_of_86, simple_name, iocase_test_1_expr51, name, range(iocase_test_1, 8610, 12, 191, 191), 'checkIndexOf').
name(m_assert_equals_105, simple_name, iocase_test_1_expr52, name, range(iocase_test_1, 8655, 12, 192, 192), 'assertEquals').
name(q_sensitive_5, qualified_name, iocase_test_1_expr53, expression, range(iocase_test_1, 8673, 16, 192, 192), 'IOCase.SENSITIVE').
name(t_iocase_10, simple_name, q_sensitive_5, qualifier, range(iocase_test_1, 8673, 6, 192, 192), 'IOCase').
name(m_check_index_of_86, simple_name, iocase_test_1_expr53, name, range(iocase_test_1, 8690, 12, 192, 192), 'checkIndexOf').
name(m_assert_equals_105, simple_name, iocase_test_1_expr54, name, range(iocase_test_1, 8736, 12, 193, 193), 'assertEquals').
name(t_iocase_10, simple_name, q_sensitive_5, qualifier, range(iocase_test_1, 8754, 6, 193, 193), 'IOCase').
name(q_sensitive_5, qualified_name, iocase_test_1_expr55, expression, range(iocase_test_1, 8754, 16, 193, 193), 'IOCase.SENSITIVE').
name(m_check_index_of_86, simple_name, iocase_test_1_expr55, name, range(iocase_test_1, 8771, 12, 193, 193), 'checkIndexOf').
name(m_assert_equals_105, simple_name, iocase_test_1_expr56, name, range(iocase_test_1, 8817, 12, 194, 194), 'assertEquals').
name(q_sensitive_5, qualified_name, iocase_test_1_expr58, expression, range(iocase_test_1, 8835, 16, 194, 194), 'IOCase.SENSITIVE').
name(t_iocase_10, simple_name, q_sensitive_5, qualifier, range(iocase_test_1, 8835, 6, 194, 194), 'IOCase').
name(m_check_index_of_86, simple_name, iocase_test_1_expr58, name, range(iocase_test_1, 8852, 12, 194, 194), 'checkIndexOf').
name(m_assert_equals_105, simple_name, iocase_test_1_expr59, name, range(iocase_test_1, 8898, 12, 195, 195), 'assertEquals').
name(q_sensitive_5, qualified_name, iocase_test_1_expr60, expression, range(iocase_test_1, 8916, 16, 195, 195), 'IOCase.SENSITIVE').
name(t_iocase_10, simple_name, q_sensitive_5, qualifier, range(iocase_test_1, 8916, 6, 195, 195), 'IOCase').
name(m_check_index_of_86, simple_name, iocase_test_1_expr60, name, range(iocase_test_1, 8933, 12, 195, 195), 'checkIndexOf').
name(m_assert_equals_105, simple_name, iocase_test_1_expr61, name, range(iocase_test_1, 8980, 12, 196, 196), 'assertEquals').
name(t_iocase_10, simple_name, q_sensitive_5, qualifier, range(iocase_test_1, 8998, 6, 196, 196), 'IOCase').
name(q_sensitive_5, qualified_name, iocase_test_1_expr62, expression, range(iocase_test_1, 8998, 16, 196, 196), 'IOCase.SENSITIVE').
name(m_check_index_of_86, simple_name, iocase_test_1_expr62, name, range(iocase_test_1, 9015, 12, 196, 196), 'checkIndexOf').
name(m_assert_equals_105, simple_name, iocase_test_1_expr63, name, range(iocase_test_1, 9062, 12, 197, 197), 'assertEquals').
name(t_iocase_10, simple_name, q_sensitive_5, qualifier, range(iocase_test_1, 9080, 6, 197, 197), 'IOCase').
name(q_sensitive_5, qualified_name, iocase_test_1_expr65, expression, range(iocase_test_1, 9080, 16, 197, 197), 'IOCase.SENSITIVE').
name(m_check_index_of_86, simple_name, iocase_test_1_expr65, name, range(iocase_test_1, 9097, 12, 197, 197), 'checkIndexOf').
name(m_assert_equals_105, simple_name, iocase_test_1_expr66, name, range(iocase_test_1, 9166, 12, 200, 200), 'assertEquals').
name(q_sensitive_5, qualified_name, iocase_test_1_expr68, expression, range(iocase_test_1, 9185, 16, 200, 200), 'IOCase.SENSITIVE').
name(t_iocase_10, simple_name, q_sensitive_5, qualifier, range(iocase_test_1, 9185, 6, 200, 200), 'IOCase').
name(m_check_index_of_86, simple_name, iocase_test_1_expr68, name, range(iocase_test_1, 9202, 12, 200, 200), 'checkIndexOf').
name(m_assert_equals_105, simple_name, iocase_test_1_expr69, name, range(iocase_test_1, 9270, 12, 203, 203), 'assertEquals').
name(t_iocase_10, simple_name, q_sensitive_5, qualifier, range(iocase_test_1, 9289, 6, 203, 203), 'IOCase').
name(q_sensitive_5, qualified_name, iocase_test_1_expr71, expression, range(iocase_test_1, 9289, 16, 203, 203), 'IOCase.SENSITIVE').
name(m_check_index_of_86, simple_name, iocase_test_1_expr71, name, range(iocase_test_1, 9306, 12, 203, 203), 'checkIndexOf').
name(m_assert_equals_105, simple_name, iocase_test_1_expr72, name, range(iocase_test_1, 9354, 12, 205, 205), 'assertEquals').
name(t_iocase_10, simple_name, q_sensitive_5, qualifier, range(iocase_test_1, 9371, 6, 205, 205), 'IOCase').
name(q_sensitive_5, qualified_name, iocase_test_1_expr74, expression, range(iocase_test_1, 9371, 16, 205, 205), 'IOCase.SENSITIVE').
name(m_check_index_of_86, simple_name, iocase_test_1_expr74, name, range(iocase_test_1, 9388, 12, 205, 205), 'checkIndexOf').
%filename_utils_1 - org.apache.commons.io.FilenameUtils
name(f_empty_string_array_48, simple_name, filename_utils_1_code10, name, range(filename_utils_1, 3694, 18, 100, 100), 'EMPTY_STRING_ARRAY').
name(f_extension_separator_str_49, simple_name, filename_utils_1_code16, name, range(filename_utils_1, 4055, 23, 116, 116), 'EXTENSION_SEPARATOR_STR').
name(t_character_7, simple_name, filename_utils_1_expr2, expression, range(filename_utils_1, 4081, 9, 116, 116), 'Character').
name(m_to_string_30, simple_name, filename_utils_1_expr2, name, range(filename_utils_1, 4091, 8, 116, 116), 'toString').
name(f_extension_separator_50, simple_name, filename_utils_1_expr2, (arguments, 0), range(filename_utils_1, 4100, 19, 116, 116), 'EXTENSION_SEPARATOR').
name(f_system_name_separator_51, simple_name, filename_utils_1_code22, name, range(filename_utils_1, 4437, 21, 131, 131), 'SYSTEM_NAME_SEPARATOR').
name(q_separator_char_3, qualified_name, filename_utils_1_code22, initializer, range(filename_utils_1, 4461, 18, 131, 131), 'File.separatorChar').
name(t_file_8, simple_name, q_separator_char_3, qualifier, range(filename_utils_1, 4461, 4, 131, 131), 'File').
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

%%% Literals
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
%iocase_1 - org.apache.commons.io.IOCase
literal(iocase_1_literal1, string_literal, iocase_1_code4, (arguments, 0), range(iocase_1, 1559, 11, 45, 45), "Sensitive").
literal(iocase_1_literal2, boolean_literal, iocase_1_code4, (arguments, 1), range(iocase_1, 1572, 4, 45, 45), true).
literal(iocase_1_literal3, string_literal, iocase_1_code5, (arguments, 0), range(iocase_1, 1685, 13, 50, 50), "Insensitive").
literal(iocase_1_literal4, boolean_literal, iocase_1_code5, (arguments, 1), range(iocase_1, 1700, 5, 50, 50), false).
literal(iocase_1_literal5, string_literal, iocase_1_code6, (arguments, 0), range(iocase_1, 2412, 8, 66, 66), "System").
literal(iocase_1_literal6, number_literal, iocase_1_expr17, operand, range(iocase_1, 7140, 1, 200, 200), 1).
literal(iocase_1_literal7, number_literal, iocase_1_expr18, (arguments, 3), range(iocase_1, 7884, 1, 217, 217), 0).
%iocase_test_1 - org.apache.commons.io.IOCaseTest
literal(iocase_test_1_literal1, character_literal, iocase_test_1_expr1, right_operand, range(iocase_test_1, 1488, 4, 39, 39), '\\').
literal(iocase_test_1_literal2, number_literal, iocase_test_1_expr2, (arguments, 0), range(iocase_test_1, 6425, 1, 153, 153), 1).
literal(iocase_test_1_literal3, string_literal, iocase_test_1_expr3, (arguments, 0), range(iocase_test_1, 6459, 5, 153, 153), "ABC").
literal(iocase_test_1_literal4, number_literal, iocase_test_1_expr3, (arguments, 1), range(iocase_test_1, 6466, 1, 153, 153), 0).
literal(iocase_test_1_literal5, string_literal, iocase_test_1_expr3, (arguments, 2), range(iocase_test_1, 6469, 4, 153, 153), "BC").
literal(iocase_test_1_literal6, number_literal, iocase_test_1_expr5, operand, range(iocase_test_1, 6499, 1, 154, 154), 1).
literal(iocase_test_1_literal7, string_literal, iocase_test_1_expr6, (arguments, 0), range(iocase_test_1, 6532, 5, 154, 154), "ABC").
literal(iocase_test_1_literal8, number_literal, iocase_test_1_expr6, (arguments, 1), range(iocase_test_1, 6539, 1, 154, 154), 0).
literal(iocase_test_1_literal9, string_literal, iocase_test_1_expr6, (arguments, 2), range(iocase_test_1, 6542, 4, 154, 154), "Bc").
literal(iocase_test_1_literal10, number_literal, iocase_test_1_expr8, operand, range(iocase_test_1, 6572, 1, 155, 155), 1).
literal(iocase_test_1_literal11, null_literal, iocase_test_1_expr9, (arguments, 0), range(iocase_test_1, 6605, 4, 155, 155), null).
literal(iocase_test_1_literal12, number_literal, iocase_test_1_expr9, (arguments, 1), range(iocase_test_1, 6611, 1, 155, 155), 0).
literal(iocase_test_1_literal13, string_literal, iocase_test_1_expr9, (arguments, 2), range(iocase_test_1, 6614, 4, 155, 155), "Bc").
literal(iocase_test_1_literal14, number_literal, iocase_test_1_expr10, (arguments, 0), range(iocase_test_1, 7178, 1, 170, 170), 0).
literal(iocase_test_1_literal15, string_literal, iocase_test_1_expr11, (arguments, 0), range(iocase_test_1, 7213, 12, 170, 170), "ABCDEFGHIJ").
literal(iocase_test_1_literal16, number_literal, iocase_test_1_expr11, (arguments, 1), range(iocase_test_1, 7227, 1, 170, 170), 0).
literal(iocase_test_1_literal17, string_literal, iocase_test_1_expr11, (arguments, 2), range(iocase_test_1, 7230, 3, 170, 170), "A").
literal(iocase_test_1_literal18, number_literal, iocase_test_1_expr13, operand, range(iocase_test_1, 7259, 1, 171, 171), 1).
literal(iocase_test_1_literal19, string_literal, iocase_test_1_expr14, (arguments, 0), range(iocase_test_1, 7293, 12, 171, 171), "ABCDEFGHIJ").
literal(iocase_test_1_literal20, number_literal, iocase_test_1_expr14, (arguments, 1), range(iocase_test_1, 7307, 1, 171, 171), 1).
literal(iocase_test_1_literal21, string_literal, iocase_test_1_expr14, (arguments, 2), range(iocase_test_1, 7310, 3, 171, 171), "A").
literal(iocase_test_1_literal22, number_literal, iocase_test_1_expr15, (arguments, 0), range(iocase_test_1, 7338, 1, 172, 172), 0).
literal(iocase_test_1_literal23, string_literal, iocase_test_1_expr16, (arguments, 0), range(iocase_test_1, 7373, 12, 172, 172), "ABCDEFGHIJ").
literal(iocase_test_1_literal24, number_literal, iocase_test_1_expr16, (arguments, 1), range(iocase_test_1, 7387, 1, 172, 172), 0).
literal(iocase_test_1_literal25, string_literal, iocase_test_1_expr16, (arguments, 2), range(iocase_test_1, 7390, 4, 172, 172), "AB").
literal(iocase_test_1_literal26, number_literal, iocase_test_1_expr18, operand, range(iocase_test_1, 7420, 1, 173, 173), 1).
literal(iocase_test_1_literal27, string_literal, iocase_test_1_expr19, (arguments, 0), range(iocase_test_1, 7454, 12, 173, 173), "ABCDEFGHIJ").
literal(iocase_test_1_literal28, number_literal, iocase_test_1_expr19, (arguments, 1), range(iocase_test_1, 7468, 1, 173, 173), 1).
literal(iocase_test_1_literal29, string_literal, iocase_test_1_expr19, (arguments, 2), range(iocase_test_1, 7471, 4, 173, 173), "AB").
literal(iocase_test_1_literal30, number_literal, iocase_test_1_expr20, (arguments, 0), range(iocase_test_1, 7500, 1, 174, 174), 0).
literal(iocase_test_1_literal31, string_literal, iocase_test_1_expr21, (arguments, 0), range(iocase_test_1, 7535, 12, 174, 174), "ABCDEFGHIJ").
literal(iocase_test_1_literal32, number_literal, iocase_test_1_expr21, (arguments, 1), range(iocase_test_1, 7549, 1, 174, 174), 0).
literal(iocase_test_1_literal33, string_literal, iocase_test_1_expr21, (arguments, 2), range(iocase_test_1, 7552, 5, 174, 174), "ABC").
literal(iocase_test_1_literal34, number_literal, iocase_test_1_expr23, operand, range(iocase_test_1, 7583, 1, 175, 175), 1).
literal(iocase_test_1_literal35, string_literal, iocase_test_1_expr24, (arguments, 0), range(iocase_test_1, 7617, 12, 175, 175), "ABCDEFGHIJ").
literal(iocase_test_1_literal36, number_literal, iocase_test_1_expr24, (arguments, 1), range(iocase_test_1, 7631, 1, 175, 175), 1).
literal(iocase_test_1_literal37, string_literal, iocase_test_1_expr24, (arguments, 2), range(iocase_test_1, 7634, 5, 175, 175), "ABC").
literal(iocase_test_1_literal38, number_literal, iocase_test_1_expr25, (arguments, 0), range(iocase_test_1, 7683, 1, 178, 178), 3).
literal(iocase_test_1_literal39, string_literal, iocase_test_1_expr26, (arguments, 0), range(iocase_test_1, 7718, 12, 178, 178), "ABCDEFGHIJ").
literal(iocase_test_1_literal40, number_literal, iocase_test_1_expr26, (arguments, 1), range(iocase_test_1, 7732, 1, 178, 178), 0).
literal(iocase_test_1_literal41, string_literal, iocase_test_1_expr26, (arguments, 2), range(iocase_test_1, 7735, 3, 178, 178), "D").
literal(iocase_test_1_literal42, number_literal, iocase_test_1_expr27, (arguments, 0), range(iocase_test_1, 7763, 1, 179, 179), 3).
literal(iocase_test_1_literal43, string_literal, iocase_test_1_expr28, (arguments, 0), range(iocase_test_1, 7798, 12, 179, 179), "ABCDEFGHIJ").
literal(iocase_test_1_literal44, number_literal, iocase_test_1_expr28, (arguments, 1), range(iocase_test_1, 7812, 1, 179, 179), 3).
literal(iocase_test_1_literal45, string_literal, iocase_test_1_expr28, (arguments, 2), range(iocase_test_1, 7815, 3, 179, 179), "D").
literal(iocase_test_1_literal46, number_literal, iocase_test_1_expr30, operand, range(iocase_test_1, 7844, 1, 180, 180), 1).
literal(iocase_test_1_literal47, string_literal, iocase_test_1_expr31, (arguments, 0), range(iocase_test_1, 7878, 12, 180, 180), "ABCDEFGHIJ").
literal(iocase_test_1_literal48, number_literal, iocase_test_1_expr31, (arguments, 1), range(iocase_test_1, 7892, 1, 180, 180), 4).
literal(iocase_test_1_literal49, string_literal, iocase_test_1_expr31, (arguments, 2), range(iocase_test_1, 7895, 3, 180, 180), "D").
literal(iocase_test_1_literal50, number_literal, iocase_test_1_expr32, (arguments, 0), range(iocase_test_1, 7923, 1, 181, 181), 3).
literal(iocase_test_1_literal51, string_literal, iocase_test_1_expr33, (arguments, 0), range(iocase_test_1, 7958, 12, 181, 181), "ABCDEFGHIJ").
literal(iocase_test_1_literal52, number_literal, iocase_test_1_expr33, (arguments, 1), range(iocase_test_1, 7972, 1, 181, 181), 0).
literal(iocase_test_1_literal53, string_literal, iocase_test_1_expr33, (arguments, 2), range(iocase_test_1, 7975, 4, 181, 181), "DE").
literal(iocase_test_1_literal54, number_literal, iocase_test_1_expr34, (arguments, 0), range(iocase_test_1, 8004, 1, 182, 182), 3).
literal(iocase_test_1_literal55, string_literal, iocase_test_1_expr35, (arguments, 0), range(iocase_test_1, 8039, 12, 182, 182), "ABCDEFGHIJ").
literal(iocase_test_1_literal56, number_literal, iocase_test_1_expr35, (arguments, 1), range(iocase_test_1, 8053, 1, 182, 182), 3).
literal(iocase_test_1_literal57, string_literal, iocase_test_1_expr35, (arguments, 2), range(iocase_test_1, 8056, 4, 182, 182), "DE").
literal(iocase_test_1_literal58, number_literal, iocase_test_1_expr37, operand, range(iocase_test_1, 8086, 1, 183, 183), 1).
literal(iocase_test_1_literal59, string_literal, iocase_test_1_expr38, (arguments, 0), range(iocase_test_1, 8120, 12, 183, 183), "ABCDEFGHIJ").
literal(iocase_test_1_literal60, number_literal, iocase_test_1_expr38, (arguments, 1), range(iocase_test_1, 8134, 1, 183, 183), 4).
literal(iocase_test_1_literal61, string_literal, iocase_test_1_expr38, (arguments, 2), range(iocase_test_1, 8137, 4, 183, 183), "DE").
literal(iocase_test_1_literal62, number_literal, iocase_test_1_expr39, (arguments, 0), range(iocase_test_1, 8166, 1, 184, 184), 3).
literal(iocase_test_1_literal63, string_literal, iocase_test_1_expr40, (arguments, 0), range(iocase_test_1, 8201, 12, 184, 184), "ABCDEFGHIJ").
literal(iocase_test_1_literal64, number_literal, iocase_test_1_expr40, (arguments, 1), range(iocase_test_1, 8215, 1, 184, 184), 0).
literal(iocase_test_1_literal65, string_literal, iocase_test_1_expr40, (arguments, 2), range(iocase_test_1, 8218, 5, 184, 184), "DEF").
literal(iocase_test_1_literal66, number_literal, iocase_test_1_expr41, (arguments, 0), range(iocase_test_1, 8248, 1, 185, 185), 3).
literal(iocase_test_1_literal67, string_literal, iocase_test_1_expr42, (arguments, 0), range(iocase_test_1, 8283, 12, 185, 185), "ABCDEFGHIJ").
literal(iocase_test_1_literal68, number_literal, iocase_test_1_expr42, (arguments, 1), range(iocase_test_1, 8297, 1, 185, 185), 3).
literal(iocase_test_1_literal69, string_literal, iocase_test_1_expr42, (arguments, 2), range(iocase_test_1, 8300, 5, 185, 185), "DEF").
literal(iocase_test_1_literal70, number_literal, iocase_test_1_expr44, operand, range(iocase_test_1, 8331, 1, 186, 186), 1).
literal(iocase_test_1_literal71, string_literal, iocase_test_1_expr45, (arguments, 0), range(iocase_test_1, 8365, 12, 186, 186), "ABCDEFGHIJ").
literal(iocase_test_1_literal72, number_literal, iocase_test_1_expr45, (arguments, 1), range(iocase_test_1, 8379, 1, 186, 186), 4).
literal(iocase_test_1_literal73, string_literal, iocase_test_1_expr45, (arguments, 2), range(iocase_test_1, 8382, 5, 186, 186), "DEF").
literal(iocase_test_1_literal74, number_literal, iocase_test_1_expr46, (arguments, 0), range(iocase_test_1, 8428, 1, 189, 189), 9).
literal(iocase_test_1_literal75, string_literal, iocase_test_1_expr47, (arguments, 0), range(iocase_test_1, 8463, 12, 189, 189), "ABCDEFGHIJ").
literal(iocase_test_1_literal76, number_literal, iocase_test_1_expr47, (arguments, 1), range(iocase_test_1, 8477, 1, 189, 189), 0).
literal(iocase_test_1_literal77, string_literal, iocase_test_1_expr47, (arguments, 2), range(iocase_test_1, 8480, 3, 189, 189), "J").
literal(iocase_test_1_literal78, number_literal, iocase_test_1_expr48, (arguments, 0), range(iocase_test_1, 8508, 1, 190, 190), 9).
literal(iocase_test_1_literal79, string_literal, iocase_test_1_expr49, (arguments, 0), range(iocase_test_1, 8543, 12, 190, 190), "ABCDEFGHIJ").
literal(iocase_test_1_literal80, number_literal, iocase_test_1_expr49, (arguments, 1), range(iocase_test_1, 8557, 1, 190, 190), 8).
literal(iocase_test_1_literal81, string_literal, iocase_test_1_expr49, (arguments, 2), range(iocase_test_1, 8560, 3, 190, 190), "J").
literal(iocase_test_1_literal82, number_literal, iocase_test_1_expr50, (arguments, 0), range(iocase_test_1, 8588, 1, 191, 191), 9).
literal(iocase_test_1_literal83, string_literal, iocase_test_1_expr51, (arguments, 0), range(iocase_test_1, 8623, 12, 191, 191), "ABCDEFGHIJ").
literal(iocase_test_1_literal84, number_literal, iocase_test_1_expr51, (arguments, 1), range(iocase_test_1, 8637, 1, 191, 191), 9).
literal(iocase_test_1_literal85, string_literal, iocase_test_1_expr51, (arguments, 2), range(iocase_test_1, 8640, 3, 191, 191), "J").
literal(iocase_test_1_literal86, number_literal, iocase_test_1_expr52, (arguments, 0), range(iocase_test_1, 8668, 1, 192, 192), 8).
literal(iocase_test_1_literal87, string_literal, iocase_test_1_expr53, (arguments, 0), range(iocase_test_1, 8703, 12, 192, 192), "ABCDEFGHIJ").
literal(iocase_test_1_literal88, number_literal, iocase_test_1_expr53, (arguments, 1), range(iocase_test_1, 8717, 1, 192, 192), 0).
literal(iocase_test_1_literal89, string_literal, iocase_test_1_expr53, (arguments, 2), range(iocase_test_1, 8720, 4, 192, 192), "IJ").
literal(iocase_test_1_literal90, number_literal, iocase_test_1_expr54, (arguments, 0), range(iocase_test_1, 8749, 1, 193, 193), 8).
literal(iocase_test_1_literal91, string_literal, iocase_test_1_expr55, (arguments, 0), range(iocase_test_1, 8784, 12, 193, 193), "ABCDEFGHIJ").
literal(iocase_test_1_literal92, number_literal, iocase_test_1_expr55, (arguments, 1), range(iocase_test_1, 8798, 1, 193, 193), 8).
literal(iocase_test_1_literal93, string_literal, iocase_test_1_expr55, (arguments, 2), range(iocase_test_1, 8801, 4, 193, 193), "IJ").
literal(iocase_test_1_literal94, number_literal, iocase_test_1_expr57, operand, range(iocase_test_1, 8831, 1, 194, 194), 1).
literal(iocase_test_1_literal95, string_literal, iocase_test_1_expr58, (arguments, 0), range(iocase_test_1, 8865, 12, 194, 194), "ABCDEFGHIJ").
literal(iocase_test_1_literal96, number_literal, iocase_test_1_expr58, (arguments, 1), range(iocase_test_1, 8879, 1, 194, 194), 9).
literal(iocase_test_1_literal97, string_literal, iocase_test_1_expr58, (arguments, 2), range(iocase_test_1, 8882, 4, 194, 194), "IJ").
literal(iocase_test_1_literal98, number_literal, iocase_test_1_expr59, (arguments, 0), range(iocase_test_1, 8911, 1, 195, 195), 7).
literal(iocase_test_1_literal99, string_literal, iocase_test_1_expr60, (arguments, 0), range(iocase_test_1, 8946, 12, 195, 195), "ABCDEFGHIJ").
literal(iocase_test_1_literal100, number_literal, iocase_test_1_expr60, (arguments, 1), range(iocase_test_1, 8960, 1, 195, 195), 6).
literal(iocase_test_1_literal101, string_literal, iocase_test_1_expr60, (arguments, 2), range(iocase_test_1, 8963, 5, 195, 195), "HIJ").
literal(iocase_test_1_literal102, number_literal, iocase_test_1_expr61, (arguments, 0), range(iocase_test_1, 8993, 1, 196, 196), 7).
literal(iocase_test_1_literal103, string_literal, iocase_test_1_expr62, (arguments, 0), range(iocase_test_1, 9028, 12, 196, 196), "ABCDEFGHIJ").
literal(iocase_test_1_literal104, number_literal, iocase_test_1_expr62, (arguments, 1), range(iocase_test_1, 9042, 1, 196, 196), 7).
literal(iocase_test_1_literal105, string_literal, iocase_test_1_expr62, (arguments, 2), range(iocase_test_1, 9045, 5, 196, 196), "HIJ").
literal(iocase_test_1_literal106, number_literal, iocase_test_1_expr64, operand, range(iocase_test_1, 9076, 1, 197, 197), 1).
literal(iocase_test_1_literal107, string_literal, iocase_test_1_expr65, (arguments, 0), range(iocase_test_1, 9110, 12, 197, 197), "ABCDEFGHIJ").
literal(iocase_test_1_literal108, number_literal, iocase_test_1_expr65, (arguments, 1), range(iocase_test_1, 9124, 1, 197, 197), 8).
literal(iocase_test_1_literal109, string_literal, iocase_test_1_expr65, (arguments, 2), range(iocase_test_1, 9127, 5, 197, 197), "HIJ").
literal(iocase_test_1_literal110, number_literal, iocase_test_1_expr67, operand, range(iocase_test_1, 9180, 1, 200, 200), 1).
literal(iocase_test_1_literal111, string_literal, iocase_test_1_expr68, (arguments, 0), range(iocase_test_1, 9215, 12, 200, 200), "ABCDEFGHIJ").
literal(iocase_test_1_literal112, number_literal, iocase_test_1_expr68, (arguments, 1), range(iocase_test_1, 9229, 1, 200, 200), 0).
literal(iocase_test_1_literal113, string_literal, iocase_test_1_expr68, (arguments, 2), range(iocase_test_1, 9232, 5, 200, 200), "DED").
literal(iocase_test_1_literal114, number_literal, iocase_test_1_expr70, operand, range(iocase_test_1, 9284, 1, 203, 203), 1).
literal(iocase_test_1_literal115, string_literal, iocase_test_1_expr71, (arguments, 0), range(iocase_test_1, 9319, 5, 203, 203), "DEF").
literal(iocase_test_1_literal116, number_literal, iocase_test_1_expr71, (arguments, 1), range(iocase_test_1, 9326, 1, 203, 203), 0).
literal(iocase_test_1_literal117, string_literal, iocase_test_1_expr71, (arguments, 2), range(iocase_test_1, 9329, 12, 203, 203), "ABCDEFGHIJ").
literal(iocase_test_1_literal118, number_literal, iocase_test_1_expr73, operand, range(iocase_test_1, 9368, 1, 205, 205), 1).
literal(iocase_test_1_literal119, string_literal, iocase_test_1_expr74, (arguments, 0), range(iocase_test_1, 9401, 5, 205, 205), "ABC").
literal(iocase_test_1_literal120, number_literal, iocase_test_1_expr74, (arguments, 1), range(iocase_test_1, 9408, 1, 205, 205), 0).
literal(iocase_test_1_literal121, null_literal, iocase_test_1_expr74, (arguments, 2), range(iocase_test_1, 9411, 4, 205, 205), null).
%filename_utils_1 - org.apache.commons.io.FilenameUtils
literal(filename_utils_1_literal1, string_literal, filename_utils_1_expr4, (arguments, 0), range(filename_utils_1, 4726, 53, 138, 138), "^(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})$").
literal(filename_utils_1_literal2, string_literal, filename_utils_1_expr5, (arguments, 0), range(filename_utils_1, 5137, 28, 150, 150), "^[a-zA-Z0-9][a-zA-Z0-9-]*$").

%%% Other Code Entities
%file_system_1 - org.apache.commons.io.FileSystem
code(file_system_1_code1, compilation_unit, range(file_system_1, 0, 19186, 1, -1)).
code(file_system_1_code2, enum_declaration, file_system_1_code1, (types, 0), range(file_system_1, 913, 18272, 24, 527)).
code(file_system_1_code3, modifier, file_system_1_code2, (modifiers, 0), range(file_system_1, 1293, 6, 34, 34)).
code(file_system_1_code4, enum_constant_declaration, file_system_1_code2, (enum_constants, 0), range(file_system_1, 1323, 162, 36, 39)).
code(file_system_1_code5, array_type, file_system_1_expr1, type, range(file_system_1, 1437, 5, 39, 39)).
code(file_system_1_code6, primitive_type, file_system_1_code5, element_type, range(file_system_1, 1437, 3, 39, 39)).
code(file_system_1_code7, dimension, file_system_1_code5, (dimensions, 0), range(file_system_1, 1440, 2, 39, 39)).
code(file_system_1_code9, simple_type, file_system_1_code8, element_type, range(file_system_1, 1454, 6, 39, 39)).
code(file_system_1_code8, array_type, file_system_1_expr3, type, range(file_system_1, 1454, 8, 39, 39)).
code(file_system_1_code10, dimension, file_system_1_code8, (dimensions, 0), range(file_system_1, 1460, 2, 39, 39)).
code(file_system_1_code11, enum_constant_declaration, file_system_1_code2, (enum_constants, 1), range(file_system_1, 1492, 286, 41, 51)).
code(file_system_1_code12, array_type, file_system_1_expr5, type, range(file_system_1, 1573, 5, 44, 44)).
code(file_system_1_code13, primitive_type, file_system_1_code12, element_type, range(file_system_1, 1573, 3, 44, 44)).
code(file_system_1_code14, dimension, file_system_1_code12, (dimensions, 0), range(file_system_1, 1576, 2, 44, 44)).
code(file_system_1_code15, enum_constant_declaration, file_system_1_code2, (enum_constants, 2), range(file_system_1, 1785, 305, 53, 64)).
code(file_system_1_code16, array_type, file_system_1_expr7, type, range(file_system_1, 1868, 5, 56, 56)).
code(file_system_1_code17, primitive_type, file_system_1_code16, element_type, range(file_system_1, 1868, 3, 56, 56)).
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
code(file_system_1_code51, modifier, file_system_1_code50, (modifiers, 0), range(file_system_1, 11855, 5, 328, 328)).
code(file_system_1_code50, single_variable_declaration, file_system_1_code49, (parameters, 6), range(file_system_1, 11855, 32, 328, 328)).
code(file_system_1_code52, array_type, file_system_1_code50, type, range(file_system_1, 11861, 8, 328, 328)).
code(file_system_1_code53, simple_type, file_system_1_code52, element_type, range(file_system_1, 11861, 6, 328, 328)).
code(file_system_1_code54, dimension, file_system_1_code52, (dimensions, 0), range(file_system_1, 11867, 2, 328, 328)).
code(file_system_1_code55, single_variable_declaration, file_system_1_code49, (parameters, 7), range(file_system_1, 11889, 41, 328, 328)).
code(file_system_1_code56, modifier, file_system_1_code55, (modifiers, 0), range(file_system_1, 11889, 5, 328, 328)).
code(file_system_1_code57, primitive_type, file_system_1_code55, type, range(file_system_1, 11895, 7, 328, 328)).
code(file_system_1_code59, modifier, file_system_1_code58, (modifiers, 0), range(file_system_1, 11932, 5, 328, 328)).
code(file_system_1_code58, single_variable_declaration, file_system_1_code49, (parameters, 8), range(file_system_1, 11932, 33, 328, 328)).
code(file_system_1_code60, primitive_type, file_system_1_code58, type, range(file_system_1, 11938, 7, 328, 328)).
code(file_system_1_code61, single_variable_declaration, file_system_1_code49, (parameters, 9), range(file_system_1, 11967, 24, 328, 328)).
code(file_system_1_code62, modifier, file_system_1_code61, (modifiers, 0), range(file_system_1, 11967, 5, 328, 328)).
code(file_system_1_code63, primitive_type, file_system_1_code61, type, range(file_system_1, 11973, 4, 328, 328)).
code(file_system_1_code64, method_declaration, file_system_1_code2, (body_declarations, 32), range(file_system_1, 14741, 209, 422, 429)).
%iocase_1 - org.apache.commons.io.IOCase
code(iocase_1_code1, compilation_unit, range(iocase_1, 0, 9312, 1, -1)).
code(iocase_1_code2, enum_declaration, iocase_1_code1, (types, 0), range(iocase_1, 894, 8417, 22, 273)).
code(iocase_1_code3, modifier, iocase_1_code2, (modifiers, 0), range(iocase_1, 1436, 6, 40, 40)).
code(iocase_1_code4, enum_constant_declaration, iocase_1_code2, (enum_constants, 0), range(iocase_1, 1462, 115, 42, 45)).
code(iocase_1_code5, enum_constant_declaration, iocase_1_code2, (enum_constants, 1), range(iocase_1, 1584, 122, 47, 50)).
code(iocase_1_code6, enum_constant_declaration, iocase_1_code2, (enum_constants, 2), range(iocase_1, 1713, 751, 52, 66)).
code(iocase_1_code7, method_declaration, iocase_1_code2, (body_declarations, 6), range(iocase_1, 3947, 247, 112, 121)).
code(iocase_1_code9, modifier, iocase_1_code8, (modifiers, 0), range(iocase_1, 4081, 5, 118, 118)).
code(iocase_1_code8, single_variable_declaration, iocase_1_code7, (parameters, 0), range(iocase_1, 4081, 17, 118, 118)).
code(iocase_1_code10, simple_type, iocase_1_code8, type, range(iocase_1, 4087, 6, 118, 118)).
code(iocase_1_code11, single_variable_declaration, iocase_1_code7, (parameters, 1), range(iocase_1, 4100, 23, 118, 118)).
code(iocase_1_code12, modifier, iocase_1_code11, (modifiers, 0), range(iocase_1, 4100, 5, 118, 118)).
code(iocase_1_code13, primitive_type, iocase_1_code11, type, range(iocase_1, 4106, 7, 118, 118)).
code(iocase_1_code14, method_declaration, iocase_1_code2, (body_declarations, 10), range(iocase_1, 6114, 1034, 175, 201)).
code(iocase_1_code15, modifier, iocase_1_stmt3, (modifiers, 0), range(iocase_1, 6838, 5, 192, 192)).
code(iocase_1_code16, primitive_type, iocase_1_stmt3, type, range(iocase_1, 6844, 3, 192, 192)).
code(iocase_1_code17, variable_declaration_fragment, iocase_1_stmt3, (fragments, 0), range(iocase_1, 6848, 41, 192, 192)).
code(iocase_1_code18, primitive_type, iocase_1_expr13, type, range(iocase_1, 6949, 3, 194, 194)).
code(iocase_1_code19, variable_declaration_fragment, iocase_1_expr13, (fragments, 0), range(iocase_1, 6953, 17, 194, 194)).
code(iocase_1_code20, method_declaration, iocase_1_code2, (body_declarations, 11), range(iocase_1, 7154, 756, 203, 218)).
%iocase_test_1 - org.apache.commons.io.IOCaseTest
code(iocase_test_1_code1, compilation_unit, range(iocase_test_1, 0, 16115, 1, -1)).
code(iocase_test_1_code2, type_declaration, iocase_test_1_code1, (types, 0), range(iocase_test_1, 1363, 14751, 34, 357)).
code(iocase_test_1_code3, modifier, iocase_test_1_code2, (modifiers, 0), range(iocase_test_1, 1396, 6, 37, 37)).
code(iocase_test_1_code5, modifier, iocase_test_1_code4, (modifiers, 0), range(iocase_test_1, 1427, 7, 39, 39)).
code(iocase_test_1_code4, field_declaration, iocase_test_1_code2, (body_declarations, 0), range(iocase_test_1, 1427, 66, 39, 39)).
code(iocase_test_1_code6, modifier, iocase_test_1_code4, (modifiers, 1), range(iocase_test_1, 1435, 6, 39, 39)).
code(iocase_test_1_code7, modifier, iocase_test_1_code4, (modifiers, 2), range(iocase_test_1, 1442, 5, 39, 39)).
code(iocase_test_1_code8, primitive_type, iocase_test_1_code4, type, range(iocase_test_1, 1448, 7, 39, 39)).
code(iocase_test_1_code9, variable_declaration_fragment, iocase_test_1_code4, (fragments, 0), range(iocase_test_1, 1456, 36, 39, 39)).
code(iocase_test_1_code10, method_declaration, iocase_test_1_code2, (body_declarations, 10), range(iocase_test_1, 6355, 720, 151, 164)).
code(iocase_test_1_code11, method_declaration, iocase_test_1_code2, (body_declarations, 11), range(iocase_test_1, 7081, 2488, 166, 208)).
%filename_utils_1 - org.apache.commons.io.FilenameUtils
code(filename_utils_1_code1, compilation_unit, range(filename_utils_1, 0, 65815, 1, -1)).
code(filename_utils_1_code2, type_declaration, filename_utils_1_code1, (types, 0), range(filename_utils_1, 1111, 64703, 30, 1683)).
code(filename_utils_1_code3, field_declaration, filename_utils_1_code2, (body_declarations, 0), range(filename_utils_1, 3664, 54, 100, 100)).
code(filename_utils_1_code4, modifier, filename_utils_1_code3, (modifiers, 0), range(filename_utils_1, 3664, 7, 100, 100)).
code(filename_utils_1_code5, modifier, filename_utils_1_code3, (modifiers, 1), range(filename_utils_1, 3672, 6, 100, 100)).
code(filename_utils_1_code6, modifier, filename_utils_1_code3, (modifiers, 2), range(filename_utils_1, 3679, 5, 100, 100)).
code(filename_utils_1_code8, simple_type, filename_utils_1_code7, element_type, range(filename_utils_1, 3685, 6, 100, 100)).
code(filename_utils_1_code7, array_type, filename_utils_1_code3, type, range(filename_utils_1, 3685, 8, 100, 100)).
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
code(filename_utils_1_code35, field_declaration, filename_utils_1_code2, (body_declarations, 15), range(filename_utils_1, 5068, 99, 150, 150)).
code(filename_utils_1_code36, modifier, filename_utils_1_code35, (modifiers, 0), range(filename_utils_1, 5068, 7, 150, 150)).
code(filename_utils_1_code37, modifier, filename_utils_1_code35, (modifiers, 1), range(filename_utils_1, 5076, 6, 150, 150)).
code(filename_utils_1_code38, modifier, filename_utils_1_code35, (modifiers, 2), range(filename_utils_1, 5083, 5, 150, 150)).
code(filename_utils_1_code39, simple_type, filename_utils_1_code35, type, range(filename_utils_1, 5089, 7, 150, 150)).
code(filename_utils_1_code40, variable_declaration_fragment, filename_utils_1_code35, (fragments, 0), range(filename_utils_1, 5097, 69, 150, 150)).
code(filename_utils_1_code41, method_declaration, filename_utils_1_code2, (body_declarations, 26), range(filename_utils_1, 19145, 494, 518, 532)).

%%% Name References

name_ref(t_character_7, type, 'Character', 'Ljava/lang/Character;').
name_ref(t_file_8, type, 'File', 'Ljava/io/File;').
name_ref(t_file_system_1, type, 'FileSystem', 'Lorg/apache/commons/io/FileSystem;').
name_ref(t_filename_utils_6, type, 'FilenameUtils', 'Lorg/apache/commons/io/FilenameUtils;').
name_ref(t_integer_2, type, 'Integer', 'Ljava/lang/Integer;').
name_ref(t_iocase_10, type, 'IOCase', 'Lorg/apache/commons/io/IOCase;').
name_ref(t_iocase_test_11, type, 'IOCaseTest', 'Lorg/apache/commons/io/IOCaseTest;').
name_ref(t_locale_4, type, 'Locale', 'Ljava/util/Locale;').
name_ref(t_objects_5, type, 'Objects', 'Ljava/util/Objects;').
name_ref(t_pattern_9, type, 'Pattern', 'Ljava/util/regex/Pattern;').
name_ref(t_system_3, type, 'System', 'Ljava/lang/System;').
name_ref(v_end_index_145, var, 'endIndex', 'Lorg/apache/commons/io/IOCase;.checkIndexOf(Ljava/lang/String;ILjava/lang/String;)I#endIndex').
name_ref(v_i_146, var, 'i', 'Lorg/apache/commons/io/IOCase;.checkIndexOf(Ljava/lang/String;ILjava/lang/String;)I#0#i').
name_ref(p_arr_153, param, 'arr', 'Lorg/apache/commons/io/IOCaseTest;.assert0([B)V#arr#0#0').
name_ref(p_arr_154, param, 'arr', 'Lorg/apache/commons/io/IOCaseTest;.assert0([C)V#arr#0#0').
name_ref(p_base_path_55, param, 'basePath', 'Lorg/apache/commons/io/FilenameUtils;.concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#basePath#0#0').
name_ref(p_block_size_20, param, 'blockSize', 'Lorg/apache/commons/io/FileSystem;.(Ljava/lang/String;IIZZII[I[Ljava/lang/String;ZZC)V#blockSize#0#0').
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
name_ref(p_cs_12, param, 'cs', 'Lorg/apache/commons/io/FileSystem;.indexOf(Ljava/lang/CharSequence;II)I#cs#0#0').
name_ref(p_cs_47, param, 'cs', 'Lorg/apache/commons/io/FileSystem;.trimExtension(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;#cs#0#0').
name_ref(p_default_value_131, param, 'defaultValue', 'Lorg/apache/commons/io/IOCase;.value(Lorg/apache/commons/io/IOCase;Lorg/apache/commons/io/IOCase;)Lorg/apache/commons/io/IOCase;#defaultValue#0#1').
name_ref(p_end_139, param, 'end', 'Lorg/apache/commons/io/IOCase;.checkEndsWith(Ljava/lang/String;Ljava/lang/String;)Z#end#0#1').
name_ref(p_extension_97, param, 'extension', 'Lorg/apache/commons/io/FilenameUtils;.isExtension(Ljava/lang/String;Ljava/lang/String;)Z#extension#0#1').
name_ref(p_extensions_95, param, 'extensions', 'Lorg/apache/commons/io/FilenameUtils;.isExtension(Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;)Z#extensions#0#1').
name_ref(p_extensions_99, param, 'extensions', 'Lorg/apache/commons/io/FilenameUtils;.isExtension(Ljava/lang/String;[Ljava/lang/String;)Z#extensions#0#1').
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
name_ref(p_file_name_96, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.isExtension(Ljava/lang/String;Ljava/lang/String;)Z#fileName#0#0').
name_ref(p_file_name_98, param, 'fileName', 'Lorg/apache/commons/io/FilenameUtils;.isExtension(Ljava/lang/String;[Ljava/lang/String;)Z#fileName#0#0').
name_ref(p_full_file_name_to_add_56, param, 'fullFileNameToAdd', 'Lorg/apache/commons/io/FilenameUtils;.concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#fullFileNameToAdd#0#1').
name_ref(p_illegal_file_name_chars_25, param, 'illegalFileNameChars', 'Lorg/apache/commons/io/FileSystem;.(Ljava/lang/String;IIZZII[I[Ljava/lang/String;ZZC)V#illegalFileNameChars#0#5').
name_ref(p_include_separator_60, param, 'includeSeparator', 'Lorg/apache/commons/io/FilenameUtils;.doGetFullPath(Ljava/lang/String;Z)Ljava/lang/String;#includeSeparator#0#1').
name_ref(p_inet_6address_101, param, 'inet6Address', 'Lorg/apache/commons/io/FilenameUtils;.isIPv6Address(Ljava/lang/String;)Z#inet6Address#0#0').
name_ref(p_io_case_122, param, 'ioCase', 'Lorg/apache/commons/io/FilenameUtils;.wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Z#ioCase#0#2').
name_ref(p_io_case_129, param, 'ioCase', 'Lorg/apache/commons/io/IOCase;.isCaseSensitive(Lorg/apache/commons/io/IOCase;)Z#ioCase#0#0').
name_ref(p_io_case_71, param, 'ioCase', 'Lorg/apache/commons/io/FilenameUtils;.equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/commons/io/IOCase;)Z#ioCase#0#3').
name_ref(p_keep_separator_65, param, 'keepSeparator', 'Lorg/apache/commons/io/FilenameUtils;.doNormalize(Ljava/lang/String;CZ)Ljava/lang/String;#keepSeparator#0#2').
name_ref(p_max_file_length_23, param, 'maxFileLength', 'Lorg/apache/commons/io/FileSystem;.(Ljava/lang/String;IIZZII[I[Ljava/lang/String;ZZC)V#maxFileLength#0#3').
name_ref(p_max_path_length_24, param, 'maxPathLength', 'Lorg/apache/commons/io/FileSystem;.(Ljava/lang/String;IIZZII[I[Ljava/lang/String;ZZC)V#maxPathLength#0#4').
name_ref(p_name_100, param, 'name', 'Lorg/apache/commons/io/FilenameUtils;.isIPv4Address(Ljava/lang/String;)Z#name#0#0').
name_ref(p_name_102, param, 'name', 'Lorg/apache/commons/io/FilenameUtils;.isRFC3986HostName(Ljava/lang/String;)Z#name#0#0').
name_ref(p_name_104, param, 'name', 'Lorg/apache/commons/io/FilenameUtils;.isValidHostName(Ljava/lang/String;)Z#name#0#0').
name_ref(p_name_128, param, 'name', 'Lorg/apache/commons/io/IOCase;.forName(Ljava/lang/String;)Lorg/apache/commons/io/IOCase;#name#0#0').
name_ref(p_name_132, param, 'name', 'Lorg/apache/commons/io/IOCase;.(Ljava/lang/String;ILjava/lang/String;Z)V#name#0#0').
name_ref(p_name_separator_29, param, 'nameSeparator', 'Lorg/apache/commons/io/FileSystem;.(Ljava/lang/String;IIZZII[I[Ljava/lang/String;ZZC)V#nameSeparator#0#9').
name_ref(p_new_char_19, param, 'newChar', 'Lorg/apache/commons/io/FileSystem;.replace(Ljava/lang/String;CC)Ljava/lang/String;#newChar#0#2').
name_ref(p_normalize_70, param, 'normalize', 'Lorg/apache/commons/io/FilenameUtils;.equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/commons/io/IOCase;)Z#normalize#0#2').
name_ref(p_old_char_18, param, 'oldChar', 'Lorg/apache/commons/io/FileSystem;.replace(Ljava/lang/String;CC)Ljava/lang/String;#oldChar#0#1').
name_ref(p_os_name_15, param, 'osName', 'Lorg/apache/commons/io/FileSystem;.isOsNameMatch(Ljava/lang/String;Ljava/lang/String;)Z#osName#0#0').
name_ref(p_os_name_prefix_10, param, 'osNamePrefix', 'Lorg/apache/commons/io/FileSystem;.getOsMatchesName(Ljava/lang/String;)Z#osNamePrefix#0#0').
name_ref(p_os_name_prefix_16, param, 'osNamePrefix', 'Lorg/apache/commons/io/FileSystem;.isOsNameMatch(Ljava/lang/String;Ljava/lang/String;)Z#osNamePrefix#0#1').
name_ref(p_path_112, param, 'path', 'Lorg/apache/commons/io/FilenameUtils;.requireNonNullChars(Ljava/lang/String;)Ljava/lang/String;#path#0#0').
name_ref(p_path_113, param, 'path', 'Lorg/apache/commons/io/FilenameUtils;.separatorsToSystem(Ljava/lang/String;)Ljava/lang/String;#path#0#0').
name_ref(p_path_114, param, 'path', 'Lorg/apache/commons/io/FilenameUtils;.separatorsToUnix(Ljava/lang/String;)Ljava/lang/String;#path#0#0').
name_ref(p_path_115, param, 'path', 'Lorg/apache/commons/io/FilenameUtils;.separatorsToWindows(Ljava/lang/String;)Ljava/lang/String;#path#0#0').
name_ref(p_path_17, param, 'path', 'Lorg/apache/commons/io/FileSystem;.replace(Ljava/lang/String;CC)Ljava/lang/String;#path#0#0').
name_ref(p_path_44, param, 'path', 'Lorg/apache/commons/io/FileSystem;.normalizeSeparators(Ljava/lang/String;)Ljava/lang/String;#path#0#0').
name_ref(p_property_11, param, 'property', 'Lorg/apache/commons/io/FileSystem;.getSystemProperty(Ljava/lang/String;)Ljava/lang/String;#property#0#0').
name_ref(p_replacement_46, param, 'replacement', 'Lorg/apache/commons/io/FileSystem;.toLegalFileName(Ljava/lang/String;C)Ljava/lang/String;#replacement#0#1').
name_ref(p_reserved_file_names_26, param, 'reservedFileNames', 'Lorg/apache/commons/io/FileSystem;.(Ljava/lang/String;IIZZII[I[Ljava/lang/String;ZZC)V#reservedFileNames#0#6').
name_ref(p_reserved_file_names_extensions_27, param, 'reservedFileNamesExtensions', 'Lorg/apache/commons/io/FileSystem;.(Ljava/lang/String;IIZZII[I[Ljava/lang/String;ZZC)V#reservedFileNamesExtensions#0#7').
name_ref(p_search_144, param, 'search', 'Lorg/apache/commons/io/IOCase;.checkIndexOf(Ljava/lang/String;ILjava/lang/String;)I#search#0#2').
name_ref(p_search_149, param, 'search', 'Lorg/apache/commons/io/IOCase;.checkRegionMatches(Ljava/lang/String;ILjava/lang/String;)Z#search#0#2').
name_ref(p_search_char_13, param, 'searchChar', 'Lorg/apache/commons/io/FileSystem;.indexOf(Ljava/lang/CharSequence;II)I#searchChar#0#1').
name_ref(p_sensitive_133, param, 'sensitive', 'Lorg/apache/commons/io/IOCase;.(Ljava/lang/String;ILjava/lang/String;Z)V#sensitive#0#1').
name_ref(p_separator_64, param, 'separator', 'Lorg/apache/commons/io/FilenameUtils;.doNormalize(Ljava/lang/String;CZ)Ljava/lang/String;#separator#0#1').
name_ref(p_separator_add_62, param, 'separatorAdd', 'Lorg/apache/commons/io/FilenameUtils;.doGetPath(Ljava/lang/String;I)Ljava/lang/String;#separatorAdd#0#1').
name_ref(p_start_14, param, 'start', 'Lorg/apache/commons/io/FileSystem;.indexOf(Ljava/lang/CharSequence;II)I#start#0#2').
name_ref(p_start_151, param, 'start', 'Lorg/apache/commons/io/IOCase;.checkStartsWith(Ljava/lang/String;Ljava/lang/String;)Z#start#0#1').
name_ref(p_str_138, param, 'str', 'Lorg/apache/commons/io/IOCase;.checkEndsWith(Ljava/lang/String;Ljava/lang/String;)Z#str#0#0').
name_ref(p_str_142, param, 'str', 'Lorg/apache/commons/io/IOCase;.checkIndexOf(Ljava/lang/String;ILjava/lang/String;)I#str#0#0').
name_ref(p_str_147, param, 'str', 'Lorg/apache/commons/io/IOCase;.checkRegionMatches(Ljava/lang/String;ILjava/lang/String;)Z#str#0#0').
name_ref(p_str_150, param, 'str', 'Lorg/apache/commons/io/IOCase;.checkStartsWith(Ljava/lang/String;Ljava/lang/String;)Z#str#0#0').
name_ref(p_str_1_136, param, 'str1', 'Lorg/apache/commons/io/IOCase;.checkCompareTo(Ljava/lang/String;Ljava/lang/String;)I#str1#0#0').
name_ref(p_str_1_140, param, 'str1', 'Lorg/apache/commons/io/IOCase;.checkEquals(Ljava/lang/String;Ljava/lang/String;)Z#str1#0#0').
name_ref(p_str_2_137, param, 'str2', 'Lorg/apache/commons/io/IOCase;.checkCompareTo(Ljava/lang/String;Ljava/lang/String;)I#str2#0#1').
name_ref(p_str_2_141, param, 'str2', 'Lorg/apache/commons/io/IOCase;.checkEquals(Ljava/lang/String;Ljava/lang/String;)Z#str2#0#1').
name_ref(p_str_start_index_143, param, 'strStartIndex', 'Lorg/apache/commons/io/IOCase;.checkIndexOf(Ljava/lang/String;ILjava/lang/String;)I#strStartIndex#0#1').
name_ref(p_str_start_index_148, param, 'strStartIndex', 'Lorg/apache/commons/io/IOCase;.checkRegionMatches(Ljava/lang/String;ILjava/lang/String;)Z#strStartIndex#0#1').
name_ref(p_string_93, param, 'string', 'Lorg/apache/commons/io/FilenameUtils;.isEmpty(Ljava/lang/String;)Z#string#0#0').
name_ref(p_supports_drive_letter_28, param, 'supportsDriveLetter', 'Lorg/apache/commons/io/FileSystem;.(Ljava/lang/String;IIZZII[I[Ljava/lang/String;ZZC)V#supportsDriveLetter#0#8').
name_ref(p_text_116, param, 'text', 'Lorg/apache/commons/io/FilenameUtils;.splitOnTokens(Ljava/lang/String;)[Ljava/lang/String;#text#0#0').
name_ref(p_unix_separator_107, param, 'unixSeparator', 'Lorg/apache/commons/io/FilenameUtils;.normalize(Ljava/lang/String;Z)Ljava/lang/String;#unixSeparator#0#1').
name_ref(p_unix_separator_110, param, 'unixSeparator', 'Lorg/apache/commons/io/FilenameUtils;.normalizeNoEndSeparator(Ljava/lang/String;Z)Ljava/lang/String;#unixSeparator#0#1').
name_ref(p_unix_separator_117, param, 'unixSeparator', 'Lorg/apache/commons/io/FilenameUtils;.toSeparator(Z)C#unixSeparator#0#0').
name_ref(p_value_130, param, 'value', 'Lorg/apache/commons/io/IOCase;.value(Lorg/apache/commons/io/IOCase;Lorg/apache/commons/io/IOCase;)Lorg/apache/commons/io/IOCase;#value#0#0').
name_ref(p_value_155, param, 'value', 'Lorg/apache/commons/io/IOCaseTest;.serialize(Lorg/apache/commons/io/IOCase;)Lorg/apache/commons/io/IOCase;|Ljava/lang/Exception;#value#0#0').
name_ref(p_wildcard_matcher_119, param, 'wildcardMatcher', 'Lorg/apache/commons/io/FilenameUtils;.wildcardMatch(Ljava/lang/String;Ljava/lang/String;)Z#wildcardMatcher#0#1').
name_ref(p_wildcard_matcher_121, param, 'wildcardMatcher', 'Lorg/apache/commons/io/FilenameUtils;.wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Z#wildcardMatcher#0#1').
name_ref(p_wildcard_matcher_124, param, 'wildcardMatcher', 'Lorg/apache/commons/io/FilenameUtils;.wildcardMatchOnSystem(Ljava/lang/String;Ljava/lang/String;)Z#wildcardMatcher#0#1').
name_ref(f_block_size_30, field, 'blockSize', 'Lorg/apache/commons/io/FileSystem;.blockSize)I').
name_ref(f_case_preserving_37, field, 'casePreserving', 'Lorg/apache/commons/io/FileSystem;.casePreserving)Z').
name_ref(f_case_sensitive_36, field, 'caseSensitive', 'Lorg/apache/commons/io/FileSystem;.caseSensitive)Z').
name_ref(f_current_9, field, 'CURRENT', 'Lorg/apache/commons/io/FileSystem;.CURRENT)Lorg/apache/commons/io/FileSystem;').
name_ref(f_empty_string_array_48, field, 'EMPTY_STRING_ARRAY', 'Lorg/apache/commons/io/FilenameUtils;.EMPTY_STRING_ARRAY)[Ljava/lang/String;').
name_ref(f_extension_separator_50, field, 'EXTENSION_SEPARATOR', 'Lorg/apache/commons/io/FilenameUtils;.EXTENSION_SEPARATOR)C').
name_ref(f_extension_separator_str_49, field, 'EXTENSION_SEPARATOR_STR', 'Lorg/apache/commons/io/FilenameUtils;.EXTENSION_SEPARATOR_STR)Ljava/lang/String;').
name_ref(f_generic_1, field, 'GENERIC', 'Lorg/apache/commons/io/FileSystem;.GENERIC)Lorg/apache/commons/io/FileSystem;').
name_ref(f_illegal_file_name_chars_33, field, 'illegalFileNameChars', 'Lorg/apache/commons/io/FileSystem;.illegalFileNameChars)[I').
name_ref(f_insensitive_126, field, 'INSENSITIVE', 'Lorg/apache/commons/io/IOCase;.INSENSITIVE)Lorg/apache/commons/io/IOCase;').
name_ref(f_ipv4_pattern_53, field, 'IPV4_PATTERN', 'Lorg/apache/commons/io/FilenameUtils;.IPV4_PATTERN)Ljava/util/regex/Pattern;').
name_ref(f_is_os_linux_5, field, 'IS_OS_LINUX', 'Lorg/apache/commons/io/FileSystem;.IS_OS_LINUX)Z').
name_ref(f_is_os_mac_6, field, 'IS_OS_MAC', 'Lorg/apache/commons/io/FileSystem;.IS_OS_MAC)Z').
name_ref(f_is_os_windows_7, field, 'IS_OS_WINDOWS', 'Lorg/apache/commons/io/FileSystem;.IS_OS_WINDOWS)Z').
name_ref(f_linux_2, field, 'LINUX', 'Lorg/apache/commons/io/FileSystem;.LINUX)Lorg/apache/commons/io/FileSystem;').
name_ref(f_mac_osx_3, field, 'MAC_OSX', 'Lorg/apache/commons/io/FileSystem;.MAC_OSX)Lorg/apache/commons/io/FileSystem;').
name_ref(f_max_file_name_length_31, field, 'maxFileNameLength', 'Lorg/apache/commons/io/FileSystem;.maxFileNameLength)I').
name_ref(f_max_path_length_32, field, 'maxPathLength', 'Lorg/apache/commons/io/FileSystem;.maxPathLength)I').
name_ref(f_name_134, field, 'name', 'Lorg/apache/commons/io/IOCase;.name)Ljava/lang/String;').
name_ref(f_name_separator_39, field, 'nameSeparator', 'Lorg/apache/commons/io/FileSystem;.nameSeparator)C').
name_ref(f_name_separator_other_40, field, 'nameSeparatorOther', 'Lorg/apache/commons/io/FileSystem;.nameSeparatorOther)C').
name_ref(f_os_name_windows_prefix_8, field, 'OS_NAME_WINDOWS_PREFIX', 'Lorg/apache/commons/io/FileSystem;.OS_NAME_WINDOWS_PREFIX)Ljava/lang/String;').
name_ref(f_other_separator_52, field, 'OTHER_SEPARATOR', 'Lorg/apache/commons/io/FilenameUtils;.OTHER_SEPARATOR)C').
name_ref(f_reg_name_part_pattern_54, field, 'REG_NAME_PART_PATTERN', 'Lorg/apache/commons/io/FilenameUtils;.REG_NAME_PART_PATTERN)Ljava/util/regex/Pattern;').
name_ref(f_reserved_file_names_34, field, 'reservedFileNames', 'Lorg/apache/commons/io/FileSystem;.reservedFileNames)[Ljava/lang/String;').
name_ref(f_reserved_file_names_extensions_35, field, 'reservedFileNamesExtensions', 'Lorg/apache/commons/io/FileSystem;.reservedFileNamesExtensions)Z').
name_ref(f_sensitive_125, field, 'SENSITIVE', 'Lorg/apache/commons/io/IOCase;.SENSITIVE)Lorg/apache/commons/io/IOCase;').
name_ref(f_sensitive_135, field, 'sensitive', 'Lorg/apache/commons/io/IOCase;.sensitive)Z').
name_ref(f_supports_drive_letter_38, field, 'supportsDriveLetter', 'Lorg/apache/commons/io/FileSystem;.supportsDriveLetter)Z').
name_ref(f_system_127, field, 'SYSTEM', 'Lorg/apache/commons/io/IOCase;.SYSTEM)Lorg/apache/commons/io/IOCase;').
name_ref(f_system_name_separator_51, field, 'SYSTEM_NAME_SEPARATOR', 'Lorg/apache/commons/io/FilenameUtils;.SYSTEM_NAME_SEPARATOR)C').
name_ref(f_unix_name_separator_79, field, 'UNIX_NAME_SEPARATOR', 'Lorg/apache/commons/io/FilenameUtils;.UNIX_NAME_SEPARATOR)C').
name_ref(f_windows_152, field, 'WINDOWS', 'Lorg/apache/commons/io/IOCaseTest;.WINDOWS)Z').
name_ref(f_windows_4, field, 'WINDOWS', 'Lorg/apache/commons/io/FileSystem;.WINDOWS)Lorg/apache/commons/io/FileSystem;').
name_ref(f_windows_name_separator_80, field, 'WINDOWS_NAME_SEPARATOR', 'Lorg/apache/commons/io/FilenameUtils;.WINDOWS_NAME_SEPARATOR)C').
name_ref(m_assert_0_95, method, 'assert0', 'Lorg/apache/commons/io/IOCaseTest;.assert0([B)V').
name_ref(m_assert_0_96, method, 'assert0', 'Lorg/apache/commons/io/IOCaseTest;.assert0([C)V').
name_ref(m_assert_equals_105, method, 'assertEquals', 'Lorg/junit/jupiter/api/Assertions;.assertEquals(II)V').
name_ref(m_check_compare_to_83, method, 'checkCompareTo', 'Lorg/apache/commons/io/IOCase;.checkCompareTo(Ljava/lang/String;Ljava/lang/String;)I').
name_ref(m_check_ends_with_84, method, 'checkEndsWith', 'Lorg/apache/commons/io/IOCase;.checkEndsWith(Ljava/lang/String;Ljava/lang/String;)Z').
name_ref(m_check_equals_85, method, 'checkEquals', 'Lorg/apache/commons/io/IOCase;.checkEquals(Ljava/lang/String;Ljava/lang/String;)Z').
name_ref(m_check_index_of_86, method, 'checkIndexOf', 'Lorg/apache/commons/io/IOCase;.checkIndexOf(Ljava/lang/String;ILjava/lang/String;)I').
name_ref(m_check_region_matches_88, method, 'checkRegionMatches', 'Lorg/apache/commons/io/IOCase;.checkRegionMatches(Ljava/lang/String;ILjava/lang/String;)Z').
name_ref(m_check_starts_with_90, method, 'checkStartsWith', 'Lorg/apache/commons/io/IOCase;.checkStartsWith(Ljava/lang/String;Ljava/lang/String;)Z').
name_ref(m_compile_31, method, 'compile', 'Ljava/util/regex/Pattern;.compile(Ljava/lang/String;)Ljava/util/regex/Pattern;').
name_ref(m_concat_32, method, 'concat', 'Lorg/apache/commons/io/FilenameUtils;.concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_current_2, method, 'current', 'Lorg/apache/commons/io/FileSystem;.current()Lorg/apache/commons/io/FileSystem;').
name_ref(m_directory_contains_33, method, 'directoryContains', 'Lorg/apache/commons/io/FilenameUtils;.directoryContains(Ljava/lang/String;Ljava/lang/String;)Z').
name_ref(m_do_get_full_path_34, method, 'doGetFullPath', 'Lorg/apache/commons/io/FilenameUtils;.doGetFullPath(Ljava/lang/String;Z)Ljava/lang/String;').
name_ref(m_do_get_path_35, method, 'doGetPath', 'Lorg/apache/commons/io/FilenameUtils;.doGetPath(Ljava/lang/String;I)Ljava/lang/String;').
name_ref(m_do_normalize_36, method, 'doNormalize', 'Lorg/apache/commons/io/FilenameUtils;.doNormalize(Ljava/lang/String;CZ)Ljava/lang/String;').
name_ref(m_equals_37, method, 'equals', 'Lorg/apache/commons/io/FilenameUtils;.equals(Ljava/lang/String;Ljava/lang/String;)Z').
name_ref(m_equals_38, method, 'equals', 'Lorg/apache/commons/io/FilenameUtils;.equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/commons/io/IOCase;)Z').
name_ref(m_equals_normalized_39, method, 'equalsNormalized', 'Lorg/apache/commons/io/FilenameUtils;.equalsNormalized(Ljava/lang/String;Ljava/lang/String;)Z').
name_ref(m_equals_normalized_on_system_40, method, 'equalsNormalizedOnSystem', 'Lorg/apache/commons/io/FilenameUtils;.equalsNormalizedOnSystem(Ljava/lang/String;Ljava/lang/String;)Z').
name_ref(m_equals_on_system_41, method, 'equalsOnSystem', 'Lorg/apache/commons/io/FilenameUtils;.equalsOnSystem(Ljava/lang/String;Ljava/lang/String;)Z').
name_ref(m_file_system_11, method, 'FileSystem', 'Lorg/apache/commons/io/FileSystem;.(Ljava/lang/String;IIZZII[I[Ljava/lang/String;ZZC)V').
name_ref(m_filename_utils_78, method, 'FilenameUtils', 'Lorg/apache/commons/io/FilenameUtils;.()V').
name_ref(m_flip_separator_13, method, 'flipSeparator', 'Lorg/apache/commons/io/FilenameUtils;.flipSeparator(C)C').
name_ref(m_for_name_79, method, 'forName', 'Lorg/apache/commons/io/IOCase;.forName(Ljava/lang/String;)Lorg/apache/commons/io/IOCase;').
name_ref(m_get_ads_critical_offset_42, method, 'getAdsCriticalOffset', 'Lorg/apache/commons/io/FilenameUtils;.getAdsCriticalOffset(Ljava/lang/String;)I').
name_ref(m_get_base_name_43, method, 'getBaseName', 'Lorg/apache/commons/io/FilenameUtils;.getBaseName(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_get_block_size_14, method, 'getBlockSize', 'Lorg/apache/commons/io/FileSystem;.getBlockSize()I').
name_ref(m_get_current_3, method, 'getCurrent', 'Lorg/apache/commons/io/FileSystem;.getCurrent()Lorg/apache/commons/io/FileSystem;').
name_ref(m_get_extension_44, method, 'getExtension', 'Lorg/apache/commons/io/FilenameUtils;.getExtension(Ljava/lang/String;)Ljava/lang/String;|Ljava/lang/IllegalArgumentException;').
name_ref(m_get_full_path_45, method, 'getFullPath', 'Lorg/apache/commons/io/FilenameUtils;.getFullPath(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_get_full_path_no_end_separator_46, method, 'getFullPathNoEndSeparator', 'Lorg/apache/commons/io/FilenameUtils;.getFullPathNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_get_illegal_file_name_chars_15, method, 'getIllegalFileNameChars', 'Lorg/apache/commons/io/FileSystem;.getIllegalFileNameChars()[C').
name_ref(m_get_illegal_file_name_code_points_16, method, 'getIllegalFileNameCodePoints', 'Lorg/apache/commons/io/FileSystem;.getIllegalFileNameCodePoints()[I').
name_ref(m_get_max_file_name_length_17, method, 'getMaxFileNameLength', 'Lorg/apache/commons/io/FileSystem;.getMaxFileNameLength()I').
name_ref(m_get_max_path_length_18, method, 'getMaxPathLength', 'Lorg/apache/commons/io/FileSystem;.getMaxPathLength()I').
name_ref(m_get_name_47, method, 'getName', 'Lorg/apache/commons/io/FilenameUtils;.getName(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_get_name_91, method, 'getName', 'Lorg/apache/commons/io/IOCase;.getName()Ljava/lang/String;').
name_ref(m_get_name_separator_19, method, 'getNameSeparator', 'Lorg/apache/commons/io/FileSystem;.getNameSeparator()C').
name_ref(m_get_os_matches_name_1, method, 'getOsMatchesName', 'Lorg/apache/commons/io/FileSystem;.getOsMatchesName(Ljava/lang/String;)Z').
name_ref(m_get_path_48, method, 'getPath', 'Lorg/apache/commons/io/FilenameUtils;.getPath(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_get_path_no_end_separator_49, method, 'getPathNoEndSeparator', 'Lorg/apache/commons/io/FilenameUtils;.getPathNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_get_prefix_50, method, 'getPrefix', 'Lorg/apache/commons/io/FilenameUtils;.getPrefix(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_get_prefix_length_51, method, 'getPrefixLength', 'Lorg/apache/commons/io/FilenameUtils;.getPrefixLength(Ljava/lang/String;)I').
name_ref(m_get_property_6, method, 'getProperty', 'Ljava/lang/System;.getProperty(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_get_reserved_file_names_20, method, 'getReservedFileNames', 'Lorg/apache/commons/io/FileSystem;.getReservedFileNames()[Ljava/lang/String;').
name_ref(m_get_system_property_5, method, 'getSystemProperty', 'Lorg/apache/commons/io/FileSystem;.getSystemProperty(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_index_of_7, method, 'indexOf', 'Lorg/apache/commons/io/FileSystem;.indexOf(Ljava/lang/CharSequence;II)I').
name_ref(m_index_of_extension_52, method, 'indexOfExtension', 'Lorg/apache/commons/io/FilenameUtils;.indexOfExtension(Ljava/lang/String;)I|Ljava/lang/IllegalArgumentException;').
name_ref(m_index_of_last_separator_53, method, 'indexOfLastSeparator', 'Lorg/apache/commons/io/FilenameUtils;.indexOfLastSeparator(Ljava/lang/String;)I').
name_ref(m_iocase_82, method, 'IOCase', 'Lorg/apache/commons/io/IOCase;.(Ljava/lang/String;ILjava/lang/String;Z)V').
name_ref(m_is_case_preserving_21, method, 'isCasePreserving', 'Lorg/apache/commons/io/FileSystem;.isCasePreserving()Z').
name_ref(m_is_case_sensitive_22, method, 'isCaseSensitive', 'Lorg/apache/commons/io/FileSystem;.isCaseSensitive()Z').
name_ref(m_is_case_sensitive_80, method, 'isCaseSensitive', 'Lorg/apache/commons/io/IOCase;.isCaseSensitive(Lorg/apache/commons/io/IOCase;)Z').
name_ref(m_is_case_sensitive_92, method, 'isCaseSensitive', 'Lorg/apache/commons/io/IOCase;.isCaseSensitive()Z').
name_ref(m_is_empty_54, method, 'isEmpty', 'Lorg/apache/commons/io/FilenameUtils;.isEmpty(Ljava/lang/String;)Z').
name_ref(m_is_extension_55, method, 'isExtension', 'Lorg/apache/commons/io/FilenameUtils;.isExtension(Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;)Z').
name_ref(m_is_extension_56, method, 'isExtension', 'Lorg/apache/commons/io/FilenameUtils;.isExtension(Ljava/lang/String;Ljava/lang/String;)Z').
name_ref(m_is_extension_57, method, 'isExtension', 'Lorg/apache/commons/io/FilenameUtils;.isExtension(Ljava/lang/String;[Ljava/lang/String;)Z').
name_ref(m_is_illegal_file_name_char_23, method, 'isIllegalFileNameChar', 'Lorg/apache/commons/io/FileSystem;.isIllegalFileNameChar(I)Z').
name_ref(m_is_ipv4_address_58, method, 'isIPv4Address', 'Lorg/apache/commons/io/FilenameUtils;.isIPv4Address(Ljava/lang/String;)Z').
name_ref(m_is_ipv6_address_59, method, 'isIPv6Address', 'Lorg/apache/commons/io/FilenameUtils;.isIPv6Address(Ljava/lang/String;)Z').
name_ref(m_is_legal_file_name_24, method, 'isLegalFileName', 'Lorg/apache/commons/io/FileSystem;.isLegalFileName(Ljava/lang/CharSequence;)Z').
name_ref(m_is_os_name_match_4, method, 'isOsNameMatch', 'Lorg/apache/commons/io/FileSystem;.isOsNameMatch(Ljava/lang/String;Ljava/lang/String;)Z').
name_ref(m_is_reserved_file_name_25, method, 'isReservedFileName', 'Lorg/apache/commons/io/FileSystem;.isReservedFileName(Ljava/lang/CharSequence;)Z').
name_ref(m_is_rfc3986host_name_60, method, 'isRFC3986HostName', 'Lorg/apache/commons/io/FilenameUtils;.isRFC3986HostName(Ljava/lang/String;)Z').
name_ref(m_is_separator_61, method, 'isSeparator', 'Lorg/apache/commons/io/FilenameUtils;.isSeparator(C)Z').
name_ref(m_is_system_windows_62, method, 'isSystemWindows', 'Lorg/apache/commons/io/FilenameUtils;.isSystemWindows()Z').
name_ref(m_is_valid_host_name_63, method, 'isValidHostName', 'Lorg/apache/commons/io/FilenameUtils;.isValidHostName(Ljava/lang/String;)Z').
name_ref(m_length_87, method, 'length', 'Ljava/lang/String;.length()I').
name_ref(m_normalize_64, method, 'normalize', 'Lorg/apache/commons/io/FilenameUtils;.normalize(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_normalize_65, method, 'normalize', 'Lorg/apache/commons/io/FilenameUtils;.normalize(Ljava/lang/String;Z)Ljava/lang/String;').
name_ref(m_normalize_no_end_separator_66, method, 'normalizeNoEndSeparator', 'Lorg/apache/commons/io/FilenameUtils;.normalizeNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_normalize_no_end_separator_67, method, 'normalizeNoEndSeparator', 'Lorg/apache/commons/io/FilenameUtils;.normalizeNoEndSeparator(Ljava/lang/String;Z)Ljava/lang/String;').
name_ref(m_normalize_separators_26, method, 'normalizeSeparators', 'Lorg/apache/commons/io/FileSystem;.normalizeSeparators(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_read_resolve_93, method, 'readResolve', 'Lorg/apache/commons/io/IOCase;.readResolve()Ljava/lang/Object;').
name_ref(m_region_matches_89, method, 'regionMatches', 'Ljava/lang/String;.regionMatches(ZILjava/lang/String;II)Z').
name_ref(m_remove_extension_68, method, 'removeExtension', 'Lorg/apache/commons/io/FilenameUtils;.removeExtension(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_replace_10, method, 'replace', 'Lorg/apache/commons/io/FileSystem;.replace(Ljava/lang/String;CC)Ljava/lang/String;').
name_ref(m_require_non_null_12, method, 'requireNonNull', 'Ljava/util/Objects;.requireNonNull<T:Ljava/lang/Object;>(TT;Ljava/lang/String;)TT;').
name_ref(m_require_non_null_chars_69, method, 'requireNonNullChars', 'Lorg/apache/commons/io/FilenameUtils;.requireNonNullChars(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_separators_to_system_70, method, 'separatorsToSystem', 'Lorg/apache/commons/io/FilenameUtils;.separatorsToSystem(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_separators_to_unix_71, method, 'separatorsToUnix', 'Lorg/apache/commons/io/FilenameUtils;.separatorsToUnix(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_separators_to_windows_72, method, 'separatorsToWindows', 'Lorg/apache/commons/io/FilenameUtils;.separatorsToWindows(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_serialize_97, method, 'serialize', 'Lorg/apache/commons/io/IOCaseTest;.serialize(Lorg/apache/commons/io/IOCase;)Lorg/apache/commons/io/IOCase;|Ljava/lang/Exception;').
name_ref(m_split_on_tokens_73, method, 'splitOnTokens', 'Lorg/apache/commons/io/FilenameUtils;.splitOnTokens(Ljava/lang/String;)[Ljava/lang/String;').
name_ref(m_starts_with_8, method, 'startsWith', 'Ljava/lang/String;.startsWith(Ljava/lang/String;)Z').
name_ref(m_supports_drive_letter_27, method, 'supportsDriveLetter', 'Lorg/apache/commons/io/FileSystem;.supportsDriveLetter()Z').
name_ref(m_test__serialization_119, method, 'test_serialization', 'Lorg/apache/commons/io/IOCaseTest;.test_serialization()V|Ljava/lang/Exception;').
name_ref(m_test_check_compare_case_98, method, 'test_checkCompare_case', 'Lorg/apache/commons/io/IOCaseTest;.test_checkCompare_case()V').
name_ref(m_test_check_compare_functionality_99, method, 'test_checkCompare_functionality', 'Lorg/apache/commons/io/IOCaseTest;.test_checkCompare_functionality()V').
name_ref(m_test_check_ends_with_case_100, method, 'test_checkEndsWith_case', 'Lorg/apache/commons/io/IOCaseTest;.test_checkEndsWith_case()V').
name_ref(m_test_check_ends_with_functionality_101, method, 'test_checkEndsWith_functionality', 'Lorg/apache/commons/io/IOCaseTest;.test_checkEndsWith_functionality()V').
name_ref(m_test_check_equals_case_102, method, 'test_checkEquals_case', 'Lorg/apache/commons/io/IOCaseTest;.test_checkEquals_case()V').
name_ref(m_test_check_equals_functionality_103, method, 'test_checkEquals_functionality', 'Lorg/apache/commons/io/IOCaseTest;.test_checkEquals_functionality()V').
name_ref(m_test_check_index_of_case_104, method, 'test_checkIndexOf_case', 'Lorg/apache/commons/io/IOCaseTest;.test_checkIndexOf_case()V').
name_ref(m_test_check_index_of_functionality_106, method, 'test_checkIndexOf_functionality', 'Lorg/apache/commons/io/IOCaseTest;.test_checkIndexOf_functionality()V').
name_ref(m_test_check_region_matches_case_107, method, 'test_checkRegionMatches_case', 'Lorg/apache/commons/io/IOCaseTest;.test_checkRegionMatches_case()V').
name_ref(m_test_check_region_matches_functionality_108, method, 'test_checkRegionMatches_functionality', 'Lorg/apache/commons/io/IOCaseTest;.test_checkRegionMatches_functionality()V').
name_ref(m_test_check_starts_with_case_109, method, 'test_checkStartsWith_case', 'Lorg/apache/commons/io/IOCaseTest;.test_checkStartsWith_case()V').
name_ref(m_test_check_starts_with_functionality_110, method, 'test_checkStartsWith_functionality', 'Lorg/apache/commons/io/IOCaseTest;.test_checkStartsWith_functionality()V').
name_ref(m_test_for_name_111, method, 'test_forName', 'Lorg/apache/commons/io/IOCaseTest;.test_forName()V').
name_ref(m_test_get_name_112, method, 'test_getName', 'Lorg/apache/commons/io/IOCaseTest;.test_getName()V').
name_ref(m_test_get_scratch_byte_array_113, method, 'test_getScratchByteArray', 'Lorg/apache/commons/io/IOCaseTest;.test_getScratchByteArray()V').
name_ref(m_test_get_scratch_byte_array_write_only_114, method, 'test_getScratchByteArrayWriteOnly', 'Lorg/apache/commons/io/IOCaseTest;.test_getScratchByteArrayWriteOnly()V').
name_ref(m_test_get_scratch_char_array_115, method, 'test_getScratchCharArray', 'Lorg/apache/commons/io/IOCaseTest;.test_getScratchCharArray()V').
name_ref(m_test_get_scratch_char_array_write_only_116, method, 'test_getScratchCharArrayWriteOnly', 'Lorg/apache/commons/io/IOCaseTest;.test_getScratchCharArrayWriteOnly()V').
name_ref(m_test_is_case_sensitive_117, method, 'test_isCaseSensitive', 'Lorg/apache/commons/io/IOCaseTest;.test_isCaseSensitive()V').
name_ref(m_test_is_case_sensitive_static_118, method, 'test_isCaseSensitive_static', 'Lorg/apache/commons/io/IOCaseTest;.test_isCaseSensitive_static()V').
name_ref(m_test_to_string_120, method, 'test_toString', 'Lorg/apache/commons/io/IOCaseTest;.test_toString()V').
name_ref(m_to_legal_file_name_28, method, 'toLegalFileName', 'Lorg/apache/commons/io/FileSystem;.toLegalFileName(Ljava/lang/String;C)Ljava/lang/String;').
name_ref(m_to_separator_74, method, 'toSeparator', 'Lorg/apache/commons/io/FilenameUtils;.toSeparator(Z)C').
name_ref(m_to_string_30, method, 'toString', 'Ljava/lang/Character;.toString(C)Ljava/lang/String;').
name_ref(m_to_string_94, method, 'toString', 'Lorg/apache/commons/io/IOCase;.toString()Ljava/lang/String;').
name_ref(m_to_upper_case_9, method, 'toUpperCase', 'Ljava/lang/String;.toUpperCase(Ljava/util/Locale;)Ljava/lang/String;').
name_ref(m_trim_extension_29, method, 'trimExtension', 'Lorg/apache/commons/io/FileSystem;.trimExtension(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;').
name_ref(m_value_81, method, 'value', 'Lorg/apache/commons/io/IOCase;.value(Lorg/apache/commons/io/IOCase;Lorg/apache/commons/io/IOCase;)Lorg/apache/commons/io/IOCase;').
name_ref(m_wildcard_match_75, method, 'wildcardMatch', 'Lorg/apache/commons/io/FilenameUtils;.wildcardMatch(Ljava/lang/String;Ljava/lang/String;)Z').
name_ref(m_wildcard_match_76, method, 'wildcardMatch', 'Lorg/apache/commons/io/FilenameUtils;.wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Z').
name_ref(m_wildcard_match_on_system_77, method, 'wildcardMatchOnSystem', 'Lorg/apache/commons/io/FilenameUtils;.wildcardMatchOnSystem(Ljava/lang/String;Ljava/lang/String;)Z').
name_ref(q_max_value_1, q_name, 'Integer.MAX_VALUE', 'Ljava/lang/Integer;:Ljava/lang/Integer;.MAX_VALUE)I').
name_ref(q_root_2, q_name, 'Locale.ROOT', 'Ljava/util/Locale;:Ljava/util/Locale;.ROOT)Ljava/util/Locale;').
name_ref(q_sensitive_4, q_name, 'IOCase.SENSITIVE', 'Lorg/apache/commons/io/IOCase;:Lorg/apache/commons/io/IOCase;.SENSITIVE)Lorg/apache/commons/io/IOCase;').
name_ref(q_separator_char_3, q_name, 'File.separatorChar', 'Ljava/io/File;:Ljava/io/File;.separatorChar)C').

%%% End of Code Facts