%%% Code Facts
:- style_check(-discontiguous).
%%% Classes
class(attributes_1, 'org.jsoup.nodes.Attributes').
class(node_1, 'org.jsoup.nodes.Node').
class(node_test_1, 'org.jsoup.nodes.NodeTest').
class(element_1, 'org.jsoup.nodes.Element').
class(tag_1, 'org.jsoup.parser.Tag').
class(validate_1, 'org.jsoup.helper.Validate').

%%% Methods
%attributes_1 - org.jsoup.nodes.Attributes
method(m_get_14, range(attributes_1, 743, 419, 24, 38)).
method(m_put_15, range(attributes_1, 1168, 261, 40, 48)).
method(m_put_16, range(attributes_1, 1435, 344, 50, 59)).
method(m_remove_17, range(attributes_1, 1785, 257, 61, 70)).
method(m_has_key_18, range(attributes_1, 2048, 286, 72, 79)).
method(m_size_19, range(attributes_1, 2340, 194, 81, 89)).
method(m_add_all_20, range(attributes_1, 2540, 400, 91, 101)).
method(m_iterator_21, range(attributes_1, 2950, 81, 103, 105)).
method(m_as_list_22, range(attributes_1, 3037, 610, 107, 121)).
method(m_dataset_23, range(attributes_1, 3653, 288, 123, 130)).
method(m_html_24, range(attributes_1, 3947, 318, 132, 140)).
method(m_html_25, range(attributes_1, 4275, 336, 142, 151)).
method(m_to_string_26, range(attributes_1, 4621, 55, 153, 155)).
method(m_equals_27, range(attributes_1, 4686, 343, 157, 167)).
method(m_hash_code_28, range(attributes_1, 5039, 106, 169, 172)).
method(m_clone_29, range(attributes_1, 5151, 526, 174, 189)).
method(m_dataset_30, range(attributes_1, 5752, 135, 193, 196)).
method(m_entry_set_31, range(attributes_1, 5897, 91, 198, 200)).
method(m_put_32, range(attributes_1, 5998, 339, 202, 209)).
method(m_iterator_33, range(attributes_1, 6431, 115, 212, 214)).
method(m_size_34, range(attributes_1, 6560, 217, 216, 222)).
method(m_has_next_35, range(attributes_1, 7007, 238, 228, 234)).
method(m_next_36, range(attributes_1, 7259, 152, 236, 238)).
method(m_remove_37, range(attributes_1, 7425, 86, 240, 242)).
method(m_data_key_38, range(attributes_1, 7533, 82, 246, 248)).
%node_1 - org.jsoup.nodes.Node
method(m_node_40, range(node_1, 663, 397, 26, 38)).
method(m_node_132, range(node_1, 1066, 79, 40, 42)).
method(m_node_133, range(node_1, 1151, 208, 44, 50)).
method(m_node_name_134, range(node_1, 1365, 189, 52, 56)).
method(m_attr_135, range(node_1, 1560, 881, 58, 78)).
method(m_attributes_136, range(node_1, 2447, 225, 80, 86)).
method(m_attr_137, range(node_1, 2678, 376, 88, 97)).
method(m_has_attr_138, range(node_1, 3060, 549, 99, 113)).
method(m_remove_attr_139, range(node_1, 3615, 302, 115, 124)).
method(m_base_uri_140, range(node_1, 3923, 129, 126, 132)).
method(m_set_base_uri_141, range(node_1, 4058, 430, 134, 149)).
method(m_head_142, range(node_1, 4308, 94, 142, 144)).
method(m_tail_143, range(node_1, 4416, 54, 146, 147)).
method(m_abs_url_144, range(node_1, 4494, 2076, 151, 196)).
method(m_child_node_145, range(node_1, 6576, 206, 198, 205)).
method(m_child_nodes_146, range(node_1, 6788, 334, 207, 214)).
method(m_child_nodes_as_array_147, range(node_1, 7132, 110, 216, 218)).
method(m_parent_148, range(node_1, 7248, 154, 220, 226)).
method(m_owner_document_149, range(node_1, 7412, 397, 228, 239)).
method(m_remove_150, range(node_1, 7819, 222, 241, 247)).
method(m_before_151, range(node_1, 8047, 331, 249, 258)).
method(m_before_152, range(node_1, 8384, 401, 260, 272)).
method(m_after_153, range(node_1, 8791, 330, 274, 283)).
method(m_after_154, range(node_1, 9127, 400, 285, 297)).
method(m_add_sibling_html_155, range(node_1, 9533, 374, 299, 306)).
method(m_wrap_156, range(node_1, 9913, 1177, 308, 336)).
method(m_unwrap_157, range(node_1, 11096, 970, 338, 360)).
method(m_get_deep_child_158, range(node_1, 12072, 215, 362, 368)).
method(m_replace_with_159, range(node_1, 12297, 295, 370, 378)).
method(m_set_parent_node_160, range(node_1, 12598, 175, 380, 384)).
method(m_replace_child_161, range(node_1, 12779, 395, 386, 397)).
method(m_remove_child_162, range(node_1, 13180, 225, 399, 405)).
method(m_add_children_163, range(node_1, 13411, 320, 407, 414)).
method(m_add_children_164, range(node_1, 13737, 305, 416, 424)).
method(m_reparent_child_165, range(node_1, 14048, 168, 426, 430)).
method(m_reindex_children_166, range(node_1, 14226, 152, 432, 436)).
method(m_sibling_nodes_167, range(node_1, 14388, 348, 438, 446)).
method(m_next_sibling_168, range(node_1, 14742, 466, 448, 463)).
method(m_previous_sibling_169, range(node_1, 15214, 394, 465, 478)).
method(m_sibling_index_170, range(node_1, 15614, 304, 480, 488)).
method(m_set_sibling_index_171, range(node_1, 15928, 98, 490, 492)).
method(m_traverse_172, range(node_1, 16032, 418, 494, 504)).
method(m_outer_html_173, range(node_1, 16456, 218, 506, 514)).
method(m_outer_html_174, range(node_1, 16680, 145, 516, 518)).
method(m_get_output_settings_175, range(node_1, 16917, 172, 521, 523)).
method(m_outer_html_head_176, range(node_1, 17095, 192, 525, 529)).
method(m_outer_html_tail_177, range(node_1, 17293, 89, 531, 531)).
method(m_to_string_178, range(node_1, 17388, 60, 533, 535)).
method(m_indent_179, range(node_1, 17454, 173, 537, 539)).
method(m_equals_180, range(node_1, 17633, 206, 541, 546)).
method(m_hash_code_181, range(node_1, 17845, 291, 548, 554)).
method(m_clone_182, range(node_1, 18142, 536, 556, 567)).
method(m_do_clone_183, range(node_1, 18684, 705, 569, 586)).
method(m_outer_html_visitor_184, range(node_1, 19549, 138, 592, 595)).
method(m_head_185, range(node_1, 19697, 101, 597, 599)).
method(m_tail_186, range(node_1, 19808, 176, 601, 604)).
%node_test_1 - org.jsoup.nodes.NodeTest
method(m_handles_base_uri_187, range(node_test_1, 354, 1122, 18, 36)).
method(m_set_base_uri_is_recursive_188, range(node_test_1, 1482, 374, 38, 46)).
method(m_handles_abs_prefix_189, range(node_test_1, 1862, 327, 48, 54)).
method(m_handles_abs_on_image_190, range(node_test_1, 2195, 337, 56, 61)).
method(m_handles_abs_prefix_on_has_attr_191, range(node_test_1, 2538, 582, 63, 76)).
method(m_literal_abs_prefix_192, range(node_test_1, 3126, 332, 78, 84)).
method(m_abs_handles_relative_query_193, range(node_test_1, 3530, 425, 89, 97)).
method(m_test_remove_194, range(node_test_1, 3965, 325, 99, 106)).
method(m_test_replace_195, range(node_test_1, 4300, 330, 108, 115)).
method(m_owner_document_196, range(node_test_1, 4640, 262, 117, 123)).
method(m_before_197, range(node_test_1, 4908, 486, 125, 135)).
method(m_after_198, range(node_test_1, 5400, 483, 137, 147)).
method(m_unwrap_199, range(node_test_1, 5889, 560, 149, 160)).
method(m_unwrap_no_children_200, range(node_test_1, 6455, 324, 162, 168)).
method(m_traverse_201, range(node_test_1, 6785, 578, 170, 183)).
method(m_head_202, range(node_test_1, 7027, 113, 174, 176)).
method(m_tail_203, range(node_test_1, 7154, 114, 178, 180)).
method(m_orphan_node_returns_null_for_sibling_elements_204, range(node_test_1, 7369, 512, 185, 198)).
method(m_node_is_not_asibling_of_itself_208, range(node_test_1, 7887, 421, 200, 209)).
%element_1 - org.jsoup.nodes.Element
method(m_element_39, range(element_1, 770, 461, 28, 42)).
method(m_element_41, range(element_1, 1241, 375, 44, 54)).
method(m_node_name_43, range(element_1, 1622, 76, 56, 59)).
method(m_tag_name_44, range(element_1, 1704, 179, 61, 68)).
method(m_tag_name_45, range(element_1, 1889, 423, 70, 81)).
method(m_tag_46, range(element_1, 2318, 135, 83, 90)).
method(m_is_block_47, range(element_1, 2463, 280, 92, 100)).
method(m_id_48, range(element_1, 2749, 244, 102, 110)).
method(m_attr_49, range(element_1, 2999, 362, 112, 121)).
method(m_dataset_50, range(element_1, 3367, 770, 123, 138)).
method(m_parent_51, range(element_1, 4143, 88, 140, 143)).
method(m_parents_52, range(element_1, 4237, 294, 145, 153)).
method(m_accumulate_parents_53, range(element_1, 4537, 271, 155, 161)).
method(m_child_54, range(element_1, 4814, 554, 163, 175)).
method(m_children_55, range(element_1, 5374, 653, 177, 193)).
method(m_text_nodes_56, range(element_1, 6033, 1189, 195, 218)).
method(m_data_nodes_57, range(element_1, 7228, 632, 220, 235)).
method(m_select_58, range(element_1, 7866, 948, 237, 256)).
method(m_append_child_59, range(element_1, 8824, 351, 258, 269)).
method(m_prepend_child_60, range(element_1, 9185, 368, 271, 282)).
method(m_append_element_61, range(element_1, 9563, 483, 284, 295)).
method(m_prepend_element_62, range(element_1, 10056, 487, 297, 308)).
method(m_append_text_63, range(element_1, 10553, 303, 310, 320)).
method(m_prepend_text_64, range(element_1, 10866, 306, 322, 332)).
method(m_append_65, range(element_1, 11182, 498, 334, 346)).
method(m_prepend_66, range(element_1, 11690, 526, 348, 360)).
method(m_before_67, range(element_1, 12222, 342, 362, 372)).
method(m_before_68, range(element_1, 12570, 323, 374, 383)).
method(m_after_69, range(element_1, 12899, 338, 385, 395)).
method(m_after_70, range(element_1, 13243, 319, 397, 406)).
method(m_empty_71, range(element_1, 13568, 202, 408, 415)).
method(m_wrap_72, range(element_1, 13776, 331, 417, 426)).
method(m_sibling_elements_73, range(element_1, 14113, 310, 428, 436)).
method(m_next_element_sibling_74, range(element_1, 14429, 713, 438, 454)).
method(m_previous_element_sibling_75, range(element_1, 15148, 475, 456, 469)).
method(m_first_element_sibling_76, range(element_1, 15629, 375, 471, 479)).
method(m_element_sibling_index_77, range(element_1, 16014, 334, 481, 489)).
method(m_last_element_sibling_78, range(element_1, 16354, 335, 491, 498)).
method(m_index_in_list_79, range(element_1, 16699, 357, 500, 510)).
method(m_get_elements_by_tag_80, range(element_1, 17087, 513, 514, 524)).
method(m_get_element_by_id_81, range(element_1, 17606, 782, 526, 543)).
method(m_get_elements_by_class_82, range(element_1, 18394, 686, 545, 560)).
method(m_get_elements_by_attribute_83, range(element_1, 19086, 419, 562, 573)).
method(m_get_elements_by_attribute_starting_84, range(element_1, 19511, 585, 575, 586)).
method(m_get_elements_by_attribute_value_85, range(element_1, 20102, 437, 588, 597)).
method(m_get_elements_by_attribute_value_not_86, range(element_1, 20545, 452, 599, 608)).
method(m_get_elements_by_attribute_value_starting_87, range(element_1, 21003, 478, 610, 619)).
method(m_get_elements_by_attribute_value_ending_88, range(element_1, 21487, 472, 621, 630)).
method(m_get_elements_by_attribute_value_containing_89, range(element_1, 21965, 465, 632, 641)).
method(m_get_elements_by_attribute_value_matching_90, range(element_1, 22440, 505, 643, 652)).
method(m_get_elements_by_attribute_value_matching_91, range(element_1, 22955, 846, 654, 668)).
method(m_get_elements_by_index_less_than_92, range(element_1, 23811, 301, 670, 677)).
method(m_get_elements_by_index_greater_than_93, range(element_1, 24122, 313, 679, 686)).
method(m_get_elements_by_index_equals_94, range(element_1, 24445, 295, 688, 695)).
method(m_get_elements_containing_text_95, range(element_1, 24750, 487, 697, 706)).
method(m_get_elements_containing_own_text_96, range(element_1, 25247, 511, 708, 717)).
method(m_get_elements_matching_text_97, range(element_1, 25768, 381, 719, 727)).
method(m_get_elements_matching_text_98, range(element_1, 26159, 747, 729, 743)).
method(m_get_elements_matching_own_text_99, range(element_1, 26916, 394, 745, 753)).
method(m_get_elements_matching_own_text_100, range(element_1, 27320, 756, 755, 769)).
method(m_get_all_elements_101, range(element_1, 28086, 249, 771, 778)).
method(m_text_102, range(element_1, 28341, 460, 780, 793)).
method(m_text_103, range(element_1, 28807, 596, 795, 809)).
method(m_own_text_104, range(element_1, 29409, 684, 811, 826)).
method(m_own_text_105, range(element_1, 30099, 380, 828, 837)).
method(m_append_normalised_text_106, range(element_1, 30485, 375, 839, 848)).
method(m_append_whitespace_if_br_107, range(element_1, 30866, 206, 850, 853)).
method(m_preserve_whitespace_108, range(element_1, 31078, 130, 855, 857)).
method(m_text_109, range(element_1, 31214, 372, 859, 872)).
method(m_has_text_110, range(element_1, 31592, 605, 874, 891)).
method(m_data_111, range(element_1, 32203, 721, 893, 913)).
method(m_class_name_112, range(element_1, 32933, 392, 915, 922)).
method(m_class_names_113, range(element_1, 33331, 643, 924, 936)).
method(m_class_names_114, range(element_1, 33980, 353, 938, 947)).
method(m_has_class_115, range(element_1, 34339, 420, 949, 961)).
method(m_add_class_116, range(element_1, 34765, 361, 963, 976)).
method(m_remove_class_117, range(element_1, 35132, 375, 978, 991)).
method(m_toggle_class_118, range(element_1, 35513, 508, 993, 1009)).
method(m_val_119, range(element_1, 36031, 296, 1011, 1020)).
method(m_val_120, range(element_1, 36337, 330, 1022, 1033)).
method(m_outer_html_head_121, range(element_1, 36673, 511, 1035, 1047)).
method(m_outer_html_tail_122, range(element_1, 37190, 347, 1049, 1055)).
method(m_html_123, range(element_1, 37543, 425, 1057, 1068)).
method(m_html_124, range(element_1, 37974, 118, 1070, 1073)).
method(m_html_125, range(element_1, 38102, 301, 1075, 1085)).
method(m_to_string_126, range(element_1, 38409, 60, 1087, 1089)).
method(m_equals_127, range(element_1, 38475, 79, 1091, 1094)).
method(m_hash_code_128, range(element_1, 38560, 212, 1096, 1102)).
method(m_clone_129, range(element_1, 38778, 201, 1104, 1109)).
%tag_1 - org.jsoup.parser.Tag
method(m_tag_210, range(tag_1, 914, 81, 25, 27)).
method(m_get_name_212, range(tag_1, 1001, 136, 29, 36)).
method(m_value_of_205, range(tag_1, 1143, 912, 38, 61)).
method(m_is_block_214, range(tag_1, 2061, 143, 63, 70)).
method(m_format_as_block_215, range(tag_1, 2210, 218, 72, 79)).
method(m_can_contain_block_216, range(tag_1, 2434, 188, 81, 88)).
method(m_is_inline_217, range(tag_1, 2628, 168, 90, 97)).
method(m_is_data_218, range(tag_1, 2802, 192, 99, 106)).
method(m_is_empty_219, range(tag_1, 3000, 151, 108, 115)).
method(m_is_self_closing_220, range(tag_1, 3157, 199, 117, 124)).
method(m_is_known_tag_221, range(tag_1, 3362, 203, 126, 133)).
method(m_is_known_tag_222, range(tag_1, 3571, 233, 135, 143)).
method(m_preserve_whitespace_223, range(tag_1, 3810, 213, 145, 152)).
method(m_set_self_closing_224, range(tag_1, 4029, 77, 154, 157)).
method(m_equals_225, range(tag_1, 4112, 665, 159, 176)).
method(m_hash_code_226, range(tag_1, 4783, 493, 178, 189)).
method(m_to_string_227, range(tag_1, 5282, 56, 191, 193)).
method(m_register_228, range(tag_1, 8141, 144, 256, 261)).
%validate_1 - org.jsoup.helper.Validate
method(m_validate_1, range(validate_1, 136, 21, 8, 8)).
method(m_not_null_2, range(validate_1, 163, 239, 10, 17)).
method(m_not_null_3, range(validate_1, 408, 286, 19, 27)).
method(m_is_true_4, range(validate_1, 700, 217, 29, 36)).
method(m_is_true_5, range(validate_1, 923, 274, 38, 46)).
method(m_is_false_6, range(validate_1, 1203, 219, 48, 55)).
method(m_is_false_7, range(validate_1, 1428, 275, 57, 65)).
method(m_no_null_elements_8, range(validate_1, 1709, 249, 67, 73)).
method(m_no_null_elements_9, range(validate_1, 1964, 362, 75, 84)).
method(m_not_empty_10, range(validate_1, 2332, 280, 86, 93)).
method(m_not_empty_12, range(validate_1, 2618, 325, 95, 103)).
method(m_fail_13, range(validate_1, 2949, 165, 105, 111)).

%%% Blocks
%attributes_1 - org.jsoup.nodes.Attributes
%node_1 - org.jsoup.nodes.Node
block(node_1_block1, block, node_1_code3, body, range(node_1, 849, 211, 31, 38)).
block(node_1_block2, block, node_1_code12, body, range(node_1, 14690, 46, 443, 446)).
block(node_1_block3, block, node_1_code13, body, range(node_1, 15882, 36, 486, 488)).
%node_test_1 - org.jsoup.nodes.NodeTest
block(node_test_1_block1, block, node_test_1_code4, body, range(node_test_1, 7429, 452, 185, 198)).
%element_1 - org.jsoup.nodes.Element
block(element_1_block1, block, element_1_code3, body, range(element_1, 1120, 111, 37, 42)).
block(element_1_block2, block, element_1_code4, body, range(element_1, 1563, 53, 52, 54)).
block(element_1_block3, block, element_1_code6, body, range(element_1, 4187, 44, 141, 143)).
%tag_1 - org.jsoup.parser.Tag
block(tag_1_block1, block, tag_1_code44, body, range(tag_1, 942, 53, 25, 27)).
block(tag_1_block2, block, tag_1_code48, body, range(tag_1, 1560, 495, 46, 61)).
block(tag_1_block3, block, tag_1_stmt5, body, range(tag_1, 1710, 339, 51, 60)).
block(tag_1_block4, block, tag_1_stmt7, then_statement, range(tag_1, 1782, 233, 53, 58)).
block(tag_1_block5, block, tag_1_code91, body, range(tag_1, 7131, 1004, 220, 254)).
block(tag_1_block6, block, tag_1_stmt9, body, range(tag_1, 7193, 78, 222, 225)).
block(tag_1_block7, block, tag_1_stmt12, body, range(tag_1, 7314, 191, 226, 232)).
block(tag_1_block8, block, tag_1_stmt18, body, range(tag_1, 7565, 200, 235, 241)).
block(tag_1_block9, block, tag_1_stmt24, body, range(tag_1, 7817, 126, 243, 247)).
block(tag_1_block10, block, tag_1_stmt28, body, range(tag_1, 7999, 130, 249, 253)).
block(tag_1_block11, block, tag_1_code114, body, range(tag_1, 8178, 107, 256, 261)).
block(tag_1_block12, block, tag_1_stmt32, body, range(tag_1, 8208, 51, 257, 259)).
%validate_1 - org.jsoup.helper.Validate
block(validate_1_block1, block, validate_1_code3, body, range(validate_1, 295, 107, 14, 17)).
block(validate_1_block2, block, validate_1_code4, body, range(validate_1, 2477, 135, 90, 93)).

%%% Statements
%attributes_1 - org.jsoup.nodes.Attributes
%node_1 - org.jsoup.nodes.Node
stmt(node_1_stmt1, expression_statement, node_1_block1, (statements, 0), range(node_1, 859, 26, 32, 32)).
stmt(node_1_stmt2, expression_statement, node_1_block1, (statements, 1), range(node_1, 894, 29, 33, 33)).
stmt(node_1_stmt3, expression_statement, node_1_block1, (statements, 2), range(node_1, 941, 36, 35, 35)).
stmt(node_1_stmt4, expression_statement, node_1_block1, (statements, 3), range(node_1, 986, 30, 36, 36)).
stmt(node_1_stmt5, expression_statement, node_1_block1, (statements, 4), range(node_1, 1025, 29, 37, 37)).
stmt(node_1_stmt6, return_statement, node_1_block2, (statements, 0), range(node_1, 14701, 29, 445, 445)).
stmt(node_1_stmt7, return_statement, node_1_block3, (statements, 0), range(node_1, 15892, 20, 487, 487)).
%node_test_1 - org.jsoup.nodes.NodeTest
stmt(node_test_1_stmt1, variable_declaration_statement, node_test_1_block1, (statements, 0), range(node_test_1, 7439, 46, 186, 186)).
stmt(node_test_1_stmt2, variable_declaration_statement, node_test_1_block1, (statements, 1), range(node_test_1, 7494, 47, 187, 187)).
stmt(node_test_1_stmt3, expression_statement, node_test_1_block1, (statements, 2), range(node_test_1, 7551, 37, 189, 189)).
stmt(node_test_1_stmt4, expression_statement, node_test_1_block1, (statements, 3), range(node_test_1, 7597, 44, 190, 190)).
%element_1 - org.jsoup.nodes.Element
stmt(element_1_stmt1, super_constructor_invocation, element_1_block1, (statements, 0), range(element_1, 1130, 27, 38, 38)).
stmt(element_1_stmt2, expression_statement, element_1_block1, (statements, 1), range(element_1, 1175, 22, 40, 40)).
stmt(element_1_stmt3, expression_statement, element_1_block1, (statements, 2), range(element_1, 1210, 15, 41, 41)).
stmt(element_1_stmt4, constructor_invocation, element_1_block2, (statements, 0), range(element_1, 1573, 37, 53, 53)).
stmt(element_1_stmt5, return_statement, element_1_block3, (statements, 0), range(element_1, 4197, 28, 142, 142)).
%tag_1 - org.jsoup.parser.Tag
stmt(tag_1_stmt1, expression_statement, tag_1_block1, (statements, 0), range(tag_1, 952, 37, 26, 26)).
stmt(tag_1_stmt2, expression_statement, tag_1_block2, (statements, 0), range(tag_1, 1570, 26, 47, 47)).
stmt(tag_1_stmt3, expression_statement, tag_1_block2, (statements, 1), range(tag_1, 1605, 39, 48, 48)).
stmt(tag_1_stmt4, expression_statement, tag_1_block2, (statements, 2), range(tag_1, 1653, 27, 49, 49)).
stmt(tag_1_stmt5, synchronized_statement, tag_1_block2, (statements, 3), range(tag_1, 1690, 359, 51, 60)).
stmt(tag_1_stmt6, variable_declaration_statement, tag_1_block3, (statements, 0), range(tag_1, 1724, 28, 52, 52)).
stmt(tag_1_stmt7, if_statement, tag_1_block3, (statements, 1), range(tag_1, 1765, 250, 53, 58)).
stmt(tag_1_stmt8, return_statement, tag_1_block3, (statements, 2), range(tag_1, 2028, 11, 59, 59)).
stmt(tag_1_stmt9, enhanced_for_statement, tag_1_block5, (statements, 0), range(tag_1, 7160, 111, 222, 225)).
stmt(tag_1_stmt10, variable_declaration_statement, tag_1_block6, (statements, 0), range(tag_1, 7207, 27, 223, 223)).
stmt(tag_1_stmt11, expression_statement, tag_1_block6, (statements, 1), range(tag_1, 7247, 14, 224, 224)).
stmt(tag_1_stmt12, enhanced_for_statement, tag_1_block5, (statements, 1), range(tag_1, 7280, 225, 226, 232)).
stmt(tag_1_stmt13, variable_declaration_statement, tag_1_block7, (statements, 0), range(tag_1, 7328, 27, 227, 227)).
stmt(tag_1_stmt14, expression_statement, tag_1_block7, (statements, 1), range(tag_1, 7368, 20, 228, 228)).
stmt(tag_1_stmt15, expression_statement, tag_1_block7, (statements, 2), range(tag_1, 7401, 28, 229, 229)).
stmt(tag_1_stmt16, expression_statement, tag_1_block7, (statements, 3), range(tag_1, 7442, 26, 230, 230)).
stmt(tag_1_stmt17, expression_statement, tag_1_block7, (statements, 4), range(tag_1, 7481, 14, 231, 231)).
stmt(tag_1_stmt18, enhanced_for_statement, tag_1_block5, (statements, 2), range(tag_1, 7532, 233, 235, 241)).
stmt(tag_1_stmt19, variable_declaration_statement, tag_1_block8, (statements, 0), range(tag_1, 7579, 28, 236, 236)).
stmt(tag_1_stmt20, expression_statement, tag_1_block8, (statements, 1), range(tag_1, 7620, 22, 237, 237)).
stmt(tag_1_stmt21, expression_statement, tag_1_block8, (statements, 2), range(tag_1, 7655, 28, 238, 238)).
stmt(tag_1_stmt22, expression_statement, tag_1_block8, (statements, 3), range(tag_1, 7696, 29, 239, 239)).
stmt(tag_1_stmt23, expression_statement, tag_1_block8, (statements, 4), range(tag_1, 7738, 17, 240, 240)).
stmt(tag_1_stmt24, enhanced_for_statement, tag_1_block5, (statements, 3), range(tag_1, 7775, 168, 243, 247)).
stmt(tag_1_stmt25, variable_declaration_statement, tag_1_block9, (statements, 0), range(tag_1, 7831, 28, 244, 244)).
stmt(tag_1_stmt26, expression_statement, tag_1_block9, (statements, 1), range(tag_1, 7872, 22, 245, 245)).
stmt(tag_1_stmt27, expression_statement, tag_1_block9, (statements, 2), range(tag_1, 7907, 26, 246, 246)).
stmt(tag_1_stmt28, enhanced_for_statement, tag_1_block5, (statements, 4), range(tag_1, 7953, 176, 249, 253)).
stmt(tag_1_stmt29, variable_declaration_statement, tag_1_block10, (statements, 0), range(tag_1, 8013, 28, 250, 250)).
stmt(tag_1_stmt30, expression_statement, tag_1_block10, (statements, 1), range(tag_1, 8054, 22, 251, 251)).
stmt(tag_1_stmt31, expression_statement, tag_1_block10, (statements, 2), range(tag_1, 8089, 30, 252, 252)).
stmt(tag_1_stmt32, synchronized_statement, tag_1_block11, (statements, 0), range(tag_1, 8188, 71, 257, 259)).
stmt(tag_1_stmt33, expression_statement, tag_1_block12, (statements, 0), range(tag_1, 8222, 27, 258, 258)).
stmt(tag_1_stmt34, return_statement, tag_1_block11, (statements, 1), range(tag_1, 8268, 11, 260, 260)).
%validate_1 - org.jsoup.helper.Validate
stmt(validate_1_stmt1, if_statement, validate_1_block1, (statements, 0), range(validate_1, 305, 91, 15, 16)).
stmt(validate_1_stmt2, if_statement, validate_1_block2, (statements, 0), range(validate_1, 2487, 119, 91, 92)).

%%% Expressions
%attributes_1 - org.jsoup.nodes.Attributes
%node_1 - org.jsoup.nodes.Node
expr(node_1_expr1, method_invocation, node_1_stmt1, expression, range(node_1, 859, 25, 32, 32), "Validate.notNull(baseUri)").
expr(node_1_expr2, method_invocation, node_1_stmt2, expression, range(node_1, 894, 28, 33, 33), "Validate.notNull(attributes)").
expr(node_1_expr3, assignment, node_1_stmt3, expression, range(node_1, 941, 35, 35, 35), "childNodes=new ArrayList<Node>(4)").
expr(node_1_expr4, class_instance_creation, node_1_expr3, right_hand_side, range(node_1, 954, 22, 35, 35), "new ArrayList<Node>(4)").
expr(node_1_expr6, field_access, node_1_expr5, left_hand_side, range(node_1, 986, 12, 36, 36), "this.baseUri").
expr(node_1_expr5, assignment, node_1_stmt4, expression, range(node_1, 986, 29, 36, 36), "this.baseUri=baseUri.trim()").
expr(node_1_expr8, this_expression, f_base_uri_113, expression, range(node_1, 986, 4, 36, 36), "this").
expr(node_1_expr7, method_invocation, node_1_expr5, right_hand_side, range(node_1, 1001, 14, 36, 36), "baseUri.trim()").
expr(node_1_expr10, field_access, node_1_expr9, left_hand_side, range(node_1, 1025, 15, 37, 37), "this.attributes").
expr(node_1_expr9, assignment, node_1_stmt5, expression, range(node_1, 1025, 28, 37, 37), "this.attributes=attributes").
expr(node_1_expr11, this_expression, f_attributes_114, expression, range(node_1, 1025, 4, 37, 37), "this").
expr(node_1_expr13, method_invocation, node_1_expr12, expression, range(node_1, 14708, 8, 445, 445), "parent()").
expr(node_1_expr12, method_invocation, node_1_stmt6, expression, range(node_1, 14708, 21, 445, 445), "parent().childNodes()").
%node_test_1 - org.jsoup.nodes.NodeTest
expr(node_test_1_expr1, class_instance_creation, node_test_1_code6, initializer, range(node_test_1, 7451, 33, 186, 186), "new Element(Tag.valueOf(\"p\"),\"\")").
expr(node_test_1_expr2, method_invocation, node_test_1_expr1, (arguments, 0), range(node_test_1, 7463, 16, 186, 186), "Tag.valueOf(\"p\")").
expr(node_test_1_expr3, class_instance_creation, node_test_1_code9, initializer, range(node_test_1, 7507, 33, 187, 187), "new Element(Tag.valueOf(\"p\"),\"\")").
expr(node_test_1_expr4, method_invocation, node_test_1_expr3, (arguments, 0), range(node_test_1, 7519, 16, 187, 187), "Tag.valueOf(\"p\")").
expr(node_test_1_expr5, method_invocation, node_test_1_stmt3, expression, range(node_test_1, 7551, 36, 189, 189), "assertEquals(0,node.siblingIndex())").
expr(node_test_1_expr6, method_invocation, node_test_1_expr5, (arguments, 1), range(node_test_1, 7567, 19, 189, 189), "node.siblingIndex()").
expr(node_test_1_expr7, method_invocation, node_test_1_stmt4, expression, range(node_test_1, 7597, 43, 190, 190), "assertEquals(0,node.siblingNodes().size())").
expr(node_test_1_expr8, method_invocation, node_test_1_expr7, (arguments, 1), range(node_test_1, 7613, 26, 190, 190), "node.siblingNodes().size()").
expr(node_test_1_expr9, method_invocation, node_test_1_expr8, expression, range(node_test_1, 7613, 19, 190, 190), "node.siblingNodes()").
%element_1 - org.jsoup.nodes.Element
expr(element_1_expr1, super_constructor_invocation, element_1_block1, (statements, 0), range(element_1, 1130, 27, 38, 38), "super(baseUri,attributes);").
expr(element_1_expr2, method_invocation, element_1_stmt2, expression, range(element_1, 1175, 21, 40, 40), "Validate.notNull(tag)").
expr(element_1_expr5, this_expression, f_tag_34, expression, range(element_1, 1210, 4, 41, 41), "this").
expr(element_1_expr4, field_access, element_1_expr3, left_hand_side, range(element_1, 1210, 8, 41, 41), "this.tag").
expr(element_1_expr3, assignment, element_1_stmt3, expression, range(element_1, 1210, 14, 41, 41), "this.tag=tag").
expr(element_1_expr6, constructor_invocation, element_1_block2, (statements, 0), range(element_1, 1573, 37, 53, 53), "this(tag,baseUri,new Attributes());").
expr(element_1_expr7, class_instance_creation, element_1_stmt4, (arguments, 2), range(element_1, 1592, 16, 53, 53), "new Attributes()").
expr(element_1_expr8, cast_expression, element_1_stmt5, expression, range(element_1, 4204, 20, 142, 142), "(Element)parentNode").
%tag_1 - org.jsoup.parser.Tag
expr(tag_1_expr1, class_instance_creation, tag_1_code11, initializer, range(tag_1, 264, 26, 14, 14), "new HashMap<String,Tag>()").
expr(tag_1_expr2, assignment, tag_1_stmt1, expression, range(tag_1, 952, 36, 26, 26), "this.tagName=tagName.toLowerCase()").
expr(tag_1_expr3, field_access, tag_1_expr2, left_hand_side, range(tag_1, 952, 12, 26, 26), "this.tagName").
expr(tag_1_expr5, this_expression, f_tag_name_181, expression, range(tag_1, 952, 4, 26, 26), "this").
expr(tag_1_expr4, method_invocation, tag_1_expr2, right_hand_side, range(tag_1, 967, 21, 26, 26), "tagName.toLowerCase()").
expr(tag_1_expr6, method_invocation, tag_1_stmt2, expression, range(tag_1, 1570, 25, 47, 47), "Validate.notNull(tagName)").
expr(tag_1_expr7, assignment, tag_1_stmt3, expression, range(tag_1, 1605, 38, 48, 48), "tagName=tagName.trim().toLowerCase()").
expr(tag_1_expr8, method_invocation, tag_1_expr7, right_hand_side, range(tag_1, 1615, 28, 48, 48), "tagName.trim().toLowerCase()").
expr(tag_1_expr9, method_invocation, tag_1_expr8, expression, range(tag_1, 1615, 14, 48, 48), "tagName.trim()").
expr(tag_1_expr10, method_invocation, tag_1_stmt4, expression, range(tag_1, 1653, 26, 49, 49), "Validate.notEmpty(tagName)").
expr(tag_1_expr11, method_invocation, tag_1_code50, initializer, range(tag_1, 1734, 17, 52, 52), "tags.get(tagName)").
expr(tag_1_expr12, infix_expression, tag_1_stmt7, expression, range(tag_1, 1769, 11, 53, 53), "tag == null").
expr(tag_1_expr13, array_initializer, tag_1_code58, initializer, range(tag_1, 5507, 560, 197, 203), "{\"html\",\"head\",\"body\",\"frameset\",\"script\",\"noscript\",\"style\",\"meta\",\"link\",\"title\",\"frame\",\"noframes\",\"section\",\"nav\",\"aside\",\"hgroup\",\"header\",\"footer\",\"p\",\"h1\",\"h2\",\"h3\",\"h4\",\"h5\",\"h6\",\"ul\",\"ol\",\"pre\",\"div\",\"blockquote\",\"hr\",\"address\",\"figure\",\"figcaption\",\"form\",\"fieldset\",\"ins\",\"del\",\"dl\",\"dt\",\"dd\",\"li\",\"table\",\"caption\",\"thead\",\"tfoot\",\"tbody\",\"colgroup\",\"col\",\"tr\",\"th\",\"td\",\"video\",\"audio\",\"canvas\",\"details\",\"menu\",\"plaintext\"}").
expr(tag_1_expr14, array_initializer, tag_1_code66, initializer, range(tag_1, 6116, 533, 204, 210), "{\"object\",\"base\",\"font\",\"tt\",\"i\",\"b\",\"u\",\"big\",\"small\",\"em\",\"strong\",\"dfn\",\"code\",\"samp\",\"kbd\",\"var\",\"cite\",\"abbr\",\"time\",\"acronym\",\"mark\",\"ruby\",\"rt\",\"rp\",\"a\",\"img\",\"br\",\"wbr\",\"map\",\"q\",\"sub\",\"sup\",\"bdo\",\"iframe\",\"embed\",\"span\",\"input\",\"select\",\"textarea\",\"label\",\"button\",\"optgroup\",\"option\",\"legend\",\"datalist\",\"keygen\",\"output\",\"progress\",\"meter\",\"area\",\"param\",\"source\",\"track\",\"summary\",\"command\",\"device\"}").
expr(tag_1_expr15, array_initializer, tag_1_code74, initializer, range(tag_1, 6697, 145, 211, 214), "{\"meta\",\"link\",\"base\",\"frame\",\"img\",\"br\",\"wbr\",\"embed\",\"hr\",\"input\",\"keygen\",\"col\",\"command\",\"device\"}").
expr(tag_1_expr16, array_initializer, tag_1_code82, initializer, range(tag_1, 6899, 128, 215, 217), "{\"title\",\"a\",\"p\",\"h1\",\"h2\",\"h3\",\"h4\",\"h5\",\"h6\",\"pre\",\"address\",\"li\",\"th\",\"td\",\"script\",\"style\"}").
expr(tag_1_expr17, array_initializer, tag_1_code90, initializer, range(tag_1, 7088, 29, 218, 218), "{\"pre\",\"plaintext\",\"title\"}").
expr(tag_1_expr18, class_instance_creation, tag_1_code95, initializer, range(tag_1, 7217, 16, 223, 223), "new Tag(tagName)").
expr(tag_1_expr19, method_invocation, tag_1_stmt11, expression, range(tag_1, 7247, 13, 224, 224), "register(tag)").
expr(tag_1_expr20, class_instance_creation, tag_1_code100, initializer, range(tag_1, 7338, 16, 227, 227), "new Tag(tagName)").
expr(tag_1_expr21, assignment, tag_1_stmt14, expression, range(tag_1, 7368, 19, 228, 228), "tag.isBlock=false").
expr(tag_1_expr22, assignment, tag_1_stmt15, expression, range(tag_1, 7401, 27, 229, 229), "tag.canContainBlock=false").
expr(tag_1_expr23, assignment, tag_1_stmt16, expression, range(tag_1, 7442, 25, 230, 230), "tag.formatAsBlock=false").
expr(tag_1_expr24, method_invocation, tag_1_stmt17, expression, range(tag_1, 7481, 13, 231, 231), "register(tag)").
expr(tag_1_expr25, method_invocation, tag_1_code105, initializer, range(tag_1, 7589, 17, 236, 236), "tags.get(tagName)").
expr(tag_1_expr26, method_invocation, tag_1_stmt20, expression, range(tag_1, 7620, 21, 237, 237), "Validate.notNull(tag)").
expr(tag_1_expr27, assignment, tag_1_stmt21, expression, range(tag_1, 7655, 27, 238, 238), "tag.canContainBlock=false").
expr(tag_1_expr28, assignment, tag_1_stmt22, expression, range(tag_1, 7696, 28, 239, 239), "tag.canContainInline=false").
expr(tag_1_expr29, assignment, tag_1_stmt23, expression, range(tag_1, 7738, 16, 240, 240), "tag.empty=true").
expr(tag_1_expr30, method_invocation, tag_1_code109, initializer, range(tag_1, 7841, 17, 244, 244), "tags.get(tagName)").
expr(tag_1_expr31, method_invocation, tag_1_stmt26, expression, range(tag_1, 7872, 21, 245, 245), "Validate.notNull(tag)").
expr(tag_1_expr32, assignment, tag_1_stmt27, expression, range(tag_1, 7907, 25, 246, 246), "tag.formatAsBlock=false").
expr(tag_1_expr33, method_invocation, tag_1_code113, initializer, range(tag_1, 8023, 17, 250, 250), "tags.get(tagName)").
expr(tag_1_expr34, method_invocation, tag_1_stmt30, expression, range(tag_1, 8054, 21, 251, 251), "Validate.notNull(tag)").
expr(tag_1_expr35, assignment, tag_1_stmt31, expression, range(tag_1, 8089, 29, 252, 252), "tag.preserveWhitespace=true").
expr(tag_1_expr36, method_invocation, tag_1_stmt33, expression, range(tag_1, 8222, 26, 258, 258), "tags.put(tag.tagName,tag)").
%validate_1 - org.jsoup.helper.Validate
expr(validate_1_expr1, infix_expression, validate_1_stmt1, expression, range(validate_1, 309, 11, 15, 15), "obj == null").
expr(validate_1_expr2, infix_expression, validate_1_stmt2, expression, range(validate_1, 2491, 38, 91, 91), "string == null || string.length() == 0").
expr(validate_1_expr3, infix_expression, validate_1_expr2, left_operand, range(validate_1, 2491, 14, 91, 91), "string == null").
expr(validate_1_expr4, infix_expression, validate_1_expr2, right_operand, range(validate_1, 2509, 20, 91, 91), "string.length() == 0").
expr(validate_1_expr5, method_invocation, validate_1_expr4, left_operand, range(validate_1, 2509, 15, 91, 91), "string.length()").

%%% Names
%attributes_1 - org.jsoup.nodes.Attributes
name(t_attributes_1, simple_name, attributes_1_code2, name, range(attributes_1, 412, 10, 17, 17), 'Attributes').
name(f_attributes_17, simple_name, attributes_1_code14, name, range(attributes_1, 573, 10, 20, 20), 'attributes').
name(t_dataset_2, simple_name, attributes_1_code15, name, range(attributes_1, 5697, 7, 191, 191), 'Dataset').
%node_1 - org.jsoup.nodes.Node
name(m_node_40, simple_name, node_1_code3, name, range(node_1, 805, 4, 31, 31), 'Node').
name(p_base_uri_110, simple_name, node_1_code5, name, range(node_1, 817, 7, 31, 31), 'baseUri').
name(p_attributes_111, simple_name, node_1_code7, name, range(node_1, 837, 10, 31, 31), 'attributes').
name(t_validate_3, simple_name, node_1_expr1, expression, range(node_1, 859, 8, 32, 32), 'Validate').
name(m_not_null_2, simple_name, node_1_expr1, name, range(node_1, 868, 7, 32, 32), 'notNull').
name(p_base_uri_110, simple_name, node_1_expr1, (arguments, 0), range(node_1, 876, 7, 32, 32), 'baseUri').
name(t_validate_3, simple_name, node_1_expr2, expression, range(node_1, 894, 8, 33, 33), 'Validate').
name(m_not_null_2, simple_name, node_1_expr2, name, range(node_1, 903, 7, 33, 33), 'notNull').
name(p_attributes_111, simple_name, node_1_expr2, (arguments, 0), range(node_1, 911, 10, 33, 33), 'attributes').
name(f_child_nodes_112, simple_name, node_1_expr3, left_hand_side, range(node_1, 941, 10, 35, 35), 'childNodes').
name(f_base_uri_113, simple_name, node_1_expr6, name, range(node_1, 991, 7, 36, 36), 'baseUri').
name(p_base_uri_110, simple_name, node_1_expr7, expression, range(node_1, 1001, 7, 36, 36), 'baseUri').
name(m_trim_131, simple_name, node_1_expr7, name, range(node_1, 1009, 4, 36, 36), 'trim').
name(f_attributes_114, simple_name, node_1_expr10, name, range(node_1, 1030, 10, 37, 37), 'attributes').
name(p_attributes_111, simple_name, node_1_expr9, right_hand_side, range(node_1, 1043, 10, 37, 37), 'attributes').
name(m_parent_148, simple_name, node_1_expr13, name, range(node_1, 14708, 6, 445, 445), 'parent').
name(m_child_nodes_146, simple_name, node_1_expr12, name, range(node_1, 14717, 10, 445, 445), 'childNodes').
name(f_sibling_index_145, simple_name, node_1_stmt7, expression, range(node_1, 15899, 12, 487, 487), 'siblingIndex').
%node_test_1 - org.jsoup.nodes.NodeTest
name(t_node_test_4, simple_name, node_test_1_code2, name, range(node_test_1, 339, 8, 17, 17), 'NodeTest').
name(v_node_170, simple_name, node_test_1_code6, name, range(node_test_1, 7444, 4, 186, 186), 'node').
name(t_tag_5, simple_name, node_test_1_expr2, expression, range(node_test_1, 7463, 3, 186, 186), 'Tag').
name(m_value_of_205, simple_name, node_test_1_expr2, name, range(node_test_1, 7467, 7, 186, 186), 'valueOf').
name(v_el_171, simple_name, node_test_1_code9, name, range(node_test_1, 7502, 2, 187, 187), 'el').
name(t_tag_5, simple_name, node_test_1_expr4, expression, range(node_test_1, 7519, 3, 187, 187), 'Tag').
name(m_value_of_205, simple_name, node_test_1_expr4, name, range(node_test_1, 7523, 7, 187, 187), 'valueOf').
name(m_assert_equals_206, simple_name, node_test_1_expr5, name, range(node_test_1, 7551, 12, 189, 189), 'assertEquals').
name(v_node_170, simple_name, node_test_1_expr6, expression, range(node_test_1, 7567, 4, 189, 189), 'node').
name(m_sibling_index_170, simple_name, node_test_1_expr6, name, range(node_test_1, 7572, 12, 189, 189), 'siblingIndex').
name(m_assert_equals_206, simple_name, node_test_1_expr7, name, range(node_test_1, 7597, 12, 190, 190), 'assertEquals').
name(v_node_170, simple_name, node_test_1_expr9, expression, range(node_test_1, 7613, 4, 190, 190), 'node').
name(m_sibling_nodes_167, simple_name, node_test_1_expr9, name, range(node_test_1, 7618, 12, 190, 190), 'siblingNodes').
name(m_size_207, simple_name, node_test_1_expr8, name, range(node_test_1, 7633, 4, 190, 190), 'size').
%element_1 - org.jsoup.nodes.Element
name(p_base_uri_32, simple_name, element_1_stmt1, (arguments, 0), range(element_1, 1136, 7, 38, 38), 'baseUri').
name(p_attributes_33, simple_name, element_1_stmt1, (arguments, 1), range(element_1, 1145, 10, 38, 38), 'attributes').
name(t_validate_3, simple_name, element_1_expr2, expression, range(element_1, 1175, 8, 40, 40), 'Validate').
name(m_not_null_2, simple_name, element_1_expr2, name, range(element_1, 1184, 7, 40, 40), 'notNull').
name(p_tag_31, simple_name, element_1_expr2, (arguments, 0), range(element_1, 1192, 3, 40, 40), 'tag').
name(f_tag_34, simple_name, element_1_expr4, name, range(element_1, 1215, 3, 41, 41), 'tag').
name(p_tag_31, simple_name, element_1_expr3, right_hand_side, range(element_1, 1221, 3, 41, 41), 'tag').
name(p_tag_35, simple_name, element_1_stmt4, (arguments, 0), range(element_1, 1578, 3, 53, 53), 'tag').
name(p_base_uri_36, simple_name, element_1_stmt4, (arguments, 1), range(element_1, 1583, 7, 53, 53), 'baseUri').
name(f_parent_node_40, simple_name, element_1_expr8, expression, range(element_1, 4214, 10, 142, 142), 'parentNode').
%tag_1 - org.jsoup.parser.Tag
name(f_tags_172, simple_name, tag_1_code11, name, range(tag_1, 257, 4, 14, 14), 'tags').
name(f_is_block_173, simple_name, tag_1_code19, name, range(tag_1, 362, 7, 17, 17), 'isBlock').
name(f_format_as_block_174, simple_name, tag_1_code23, name, range(tag_1, 417, 13, 18, 18), 'formatAsBlock').
name(f_can_contain_block_175, simple_name, tag_1_code27, name, range(tag_1, 493, 15, 19, 19), 'canContainBlock').
name(f_can_contain_inline_176, simple_name, tag_1_code31, name, range(tag_1, 576, 16, 20, 20), 'canContainInline').
name(f_empty_177, simple_name, tag_1_code35, name, range(tag_1, 643, 5, 21, 21), 'empty').
name(f_self_closing_178, simple_name, tag_1_code39, name, range(tag_1, 708, 11, 22, 22), 'selfClosing').
name(f_preserve_whitespace_179, simple_name, tag_1_code43, name, range(tag_1, 848, 18, 23, 23), 'preserveWhitespace').
name(m_tag_210, simple_name, tag_1_code44, name, range(tag_1, 922, 3, 25, 25), 'Tag').
name(p_tag_name_180, simple_name, tag_1_code46, name, range(tag_1, 933, 7, 25, 25), 'tagName').
name(f_tag_name_181, simple_name, tag_1_expr3, name, range(tag_1, 957, 7, 26, 26), 'tagName').
name(p_tag_name_180, simple_name, tag_1_expr4, expression, range(tag_1, 967, 7, 26, 26), 'tagName').
name(m_to_lower_case_211, simple_name, tag_1_expr4, name, range(tag_1, 975, 11, 26, 26), 'toLowerCase').
name(t_validate_3, simple_name, tag_1_expr6, expression, range(tag_1, 1570, 8, 47, 47), 'Validate').
name(m_not_null_2, simple_name, tag_1_expr6, name, range(tag_1, 1579, 7, 47, 47), 'notNull').
name(p_tag_name_182, simple_name, tag_1_expr6, (arguments, 0), range(tag_1, 1587, 7, 47, 47), 'tagName').
name(p_tag_name_182, simple_name, tag_1_expr7, left_hand_side, range(tag_1, 1605, 7, 48, 48), 'tagName').
name(p_tag_name_182, simple_name, tag_1_expr9, expression, range(tag_1, 1615, 7, 48, 48), 'tagName').
name(m_trim_131, simple_name, tag_1_expr9, name, range(tag_1, 1623, 4, 48, 48), 'trim').
name(m_to_lower_case_211, simple_name, tag_1_expr8, name, range(tag_1, 1630, 11, 48, 48), 'toLowerCase').
name(t_validate_3, simple_name, tag_1_expr10, expression, range(tag_1, 1653, 8, 49, 49), 'Validate').
name(m_not_empty_10, simple_name, tag_1_expr10, name, range(tag_1, 1662, 8, 49, 49), 'notEmpty').
name(p_tag_name_182, simple_name, tag_1_expr10, (arguments, 0), range(tag_1, 1671, 7, 49, 49), 'tagName').
name(f_tags_172, simple_name, tag_1_stmt5, expression, range(tag_1, 1704, 4, 51, 51), 'tags').
name(v_tag_183, simple_name, tag_1_code50, name, range(tag_1, 1728, 3, 52, 52), 'tag').
name(f_tags_172, simple_name, tag_1_expr11, expression, range(tag_1, 1734, 4, 52, 52), 'tags').
name(m_get_213, simple_name, tag_1_expr11, name, range(tag_1, 1739, 3, 52, 52), 'get').
name(p_tag_name_182, simple_name, tag_1_expr11, (arguments, 0), range(tag_1, 1743, 7, 52, 52), 'tagName').
name(v_tag_183, simple_name, tag_1_expr12, left_operand, range(tag_1, 1769, 3, 53, 53), 'tag').
name(v_tag_183, simple_name, tag_1_stmt8, expression, range(tag_1, 2035, 3, 59, 59), 'tag').
name(f_block_tags_186, simple_name, tag_1_code58, name, range(tag_1, 5495, 9, 197, 197), 'blockTags').
name(f_inline_tags_187, simple_name, tag_1_code66, name, range(tag_1, 6103, 10, 204, 204), 'inlineTags').
name(f_empty_tags_188, simple_name, tag_1_code74, name, range(tag_1, 6685, 9, 211, 211), 'emptyTags').
name(f_format_as_inline_tags_189, simple_name, tag_1_code82, name, range(tag_1, 6878, 18, 215, 215), 'formatAsInlineTags').
name(f_preserve_whitespace_tags_190, simple_name, tag_1_code90, name, range(tag_1, 7063, 22, 218, 218), 'preserveWhitespaceTags').
name(v_tag_name_191, simple_name, tag_1_code92, name, range(tag_1, 7172, 7, 222, 222), 'tagName').
name(f_block_tags_186, simple_name, tag_1_stmt9, expression, range(tag_1, 7182, 9, 222, 222), 'blockTags').
name(v_tag_192, simple_name, tag_1_code95, name, range(tag_1, 7211, 3, 223, 223), 'tag').
name(v_tag_name_191, simple_name, tag_1_expr18, (arguments, 0), range(tag_1, 7225, 7, 223, 223), 'tagName').
name(m_register_228, simple_name, tag_1_expr19, name, range(tag_1, 7247, 8, 224, 224), 'register').
name(v_tag_192, simple_name, tag_1_expr19, (arguments, 0), range(tag_1, 7256, 3, 224, 224), 'tag').
name(v_tag_name_193, simple_name, tag_1_code97, name, range(tag_1, 7292, 7, 226, 226), 'tagName').
name(f_inline_tags_187, simple_name, tag_1_stmt12, expression, range(tag_1, 7302, 10, 226, 226), 'inlineTags').
name(v_tag_194, simple_name, tag_1_code100, name, range(tag_1, 7332, 3, 227, 227), 'tag').
name(v_tag_name_193, simple_name, tag_1_expr20, (arguments, 0), range(tag_1, 7346, 7, 227, 227), 'tagName').
name(q_is_block_1, qualified_name, tag_1_expr21, left_hand_side, range(tag_1, 7368, 11, 228, 228), 'tag.isBlock').
name(v_tag_194, simple_name, q_is_block_1, qualifier, range(tag_1, 7368, 3, 228, 228), 'tag').
name(v_tag_194, simple_name, q_can_contain_block_2, qualifier, range(tag_1, 7401, 3, 229, 229), 'tag').
name(q_can_contain_block_2, qualified_name, tag_1_expr22, left_hand_side, range(tag_1, 7401, 19, 229, 229), 'tag.canContainBlock').
name(q_format_as_block_3, qualified_name, tag_1_expr23, left_hand_side, range(tag_1, 7442, 17, 230, 230), 'tag.formatAsBlock').
name(v_tag_194, simple_name, q_format_as_block_3, qualifier, range(tag_1, 7442, 3, 230, 230), 'tag').
name(m_register_228, simple_name, tag_1_expr24, name, range(tag_1, 7481, 8, 231, 231), 'register').
name(v_tag_194, simple_name, tag_1_expr24, (arguments, 0), range(tag_1, 7490, 3, 231, 231), 'tag').
name(v_tag_name_195, simple_name, tag_1_code102, name, range(tag_1, 7544, 7, 235, 235), 'tagName').
name(f_empty_tags_188, simple_name, tag_1_stmt18, expression, range(tag_1, 7554, 9, 235, 235), 'emptyTags').
name(v_tag_196, simple_name, tag_1_code105, name, range(tag_1, 7583, 3, 236, 236), 'tag').
name(f_tags_172, simple_name, tag_1_expr25, expression, range(tag_1, 7589, 4, 236, 236), 'tags').
name(m_get_213, simple_name, tag_1_expr25, name, range(tag_1, 7594, 3, 236, 236), 'get').
name(v_tag_name_195, simple_name, tag_1_expr25, (arguments, 0), range(tag_1, 7598, 7, 236, 236), 'tagName').
name(t_validate_3, simple_name, tag_1_expr26, expression, range(tag_1, 7620, 8, 237, 237), 'Validate').
name(m_not_null_2, simple_name, tag_1_expr26, name, range(tag_1, 7629, 7, 237, 237), 'notNull').
name(v_tag_196, simple_name, tag_1_expr26, (arguments, 0), range(tag_1, 7637, 3, 237, 237), 'tag').
name(v_tag_196, simple_name, q_can_contain_block_4, qualifier, range(tag_1, 7655, 3, 238, 238), 'tag').
name(q_can_contain_block_4, qualified_name, tag_1_expr27, left_hand_side, range(tag_1, 7655, 19, 238, 238), 'tag.canContainBlock').
name(v_tag_196, simple_name, q_can_contain_inline_5, qualifier, range(tag_1, 7696, 3, 239, 239), 'tag').
name(q_can_contain_inline_5, qualified_name, tag_1_expr28, left_hand_side, range(tag_1, 7696, 20, 239, 239), 'tag.canContainInline').
name(v_tag_196, simple_name, q_empty_6, qualifier, range(tag_1, 7738, 3, 240, 240), 'tag').
name(q_empty_6, qualified_name, tag_1_expr29, left_hand_side, range(tag_1, 7738, 9, 240, 240), 'tag.empty').
name(v_tag_name_197, simple_name, tag_1_code106, name, range(tag_1, 7787, 7, 243, 243), 'tagName').
name(f_format_as_inline_tags_189, simple_name, tag_1_stmt24, expression, range(tag_1, 7797, 18, 243, 243), 'formatAsInlineTags').
name(v_tag_198, simple_name, tag_1_code109, name, range(tag_1, 7835, 3, 244, 244), 'tag').
name(f_tags_172, simple_name, tag_1_expr30, expression, range(tag_1, 7841, 4, 244, 244), 'tags').
name(m_get_213, simple_name, tag_1_expr30, name, range(tag_1, 7846, 3, 244, 244), 'get').
name(v_tag_name_197, simple_name, tag_1_expr30, (arguments, 0), range(tag_1, 7850, 7, 244, 244), 'tagName').
name(t_validate_3, simple_name, tag_1_expr31, expression, range(tag_1, 7872, 8, 245, 245), 'Validate').
name(m_not_null_2, simple_name, tag_1_expr31, name, range(tag_1, 7881, 7, 245, 245), 'notNull').
name(v_tag_198, simple_name, tag_1_expr31, (arguments, 0), range(tag_1, 7889, 3, 245, 245), 'tag').
name(v_tag_198, simple_name, q_format_as_block_7, qualifier, range(tag_1, 7907, 3, 246, 246), 'tag').
name(q_format_as_block_7, qualified_name, tag_1_expr32, left_hand_side, range(tag_1, 7907, 17, 246, 246), 'tag.formatAsBlock').
name(v_tag_name_199, simple_name, tag_1_code110, name, range(tag_1, 7965, 7, 249, 249), 'tagName').
name(f_preserve_whitespace_tags_190, simple_name, tag_1_stmt28, expression, range(tag_1, 7975, 22, 249, 249), 'preserveWhitespaceTags').
name(v_tag_200, simple_name, tag_1_code113, name, range(tag_1, 8017, 3, 250, 250), 'tag').
name(f_tags_172, simple_name, tag_1_expr33, expression, range(tag_1, 8023, 4, 250, 250), 'tags').
name(m_get_213, simple_name, tag_1_expr33, name, range(tag_1, 8028, 3, 250, 250), 'get').
name(v_tag_name_199, simple_name, tag_1_expr33, (arguments, 0), range(tag_1, 8032, 7, 250, 250), 'tagName').
name(t_validate_3, simple_name, tag_1_expr34, expression, range(tag_1, 8054, 8, 251, 251), 'Validate').
name(m_not_null_2, simple_name, tag_1_expr34, name, range(tag_1, 8063, 7, 251, 251), 'notNull').
name(v_tag_200, simple_name, tag_1_expr34, (arguments, 0), range(tag_1, 8071, 3, 251, 251), 'tag').
name(q_preserve_whitespace_8, qualified_name, tag_1_expr35, left_hand_side, range(tag_1, 8089, 22, 252, 252), 'tag.preserveWhitespace').
name(v_tag_200, simple_name, q_preserve_whitespace_8, qualifier, range(tag_1, 8089, 3, 252, 252), 'tag').
name(f_tags_172, simple_name, tag_1_stmt32, expression, range(tag_1, 8202, 4, 257, 257), 'tags').
name(f_tags_172, simple_name, tag_1_expr36, expression, range(tag_1, 8222, 4, 258, 258), 'tags').
name(m_put_229, simple_name, tag_1_expr36, name, range(tag_1, 8227, 3, 258, 258), 'put').
name(q_tag_name_9, qualified_name, tag_1_expr36, (arguments, 0), range(tag_1, 8231, 11, 258, 258), 'tag.tagName').
name(p_tag_201, simple_name, q_tag_name_9, qualifier, range(tag_1, 8231, 3, 258, 258), 'tag').
name(p_tag_201, simple_name, tag_1_expr36, (arguments, 1), range(tag_1, 8244, 3, 258, 258), 'tag').
name(p_tag_201, simple_name, tag_1_stmt34, expression, range(tag_1, 8275, 3, 260, 260), 'tag').
%validate_1 - org.jsoup.helper.Validate
name(p_obj_1, simple_name, validate_1_expr1, left_operand, range(validate_1, 309, 3, 15, 15), 'obj').
name(p_string_13, simple_name, validate_1_expr3, left_operand, range(validate_1, 2491, 6, 91, 91), 'string').
name(p_string_13, simple_name, validate_1_expr5, expression, range(validate_1, 2509, 6, 91, 91), 'string').
name(m_length_11, simple_name, validate_1_expr5, name, range(validate_1, 2516, 6, 91, 91), 'length').

%%% Literals
%attributes_1 - org.jsoup.nodes.Attributes
literal(attributes_1_literal1, null_literal, attributes_1_code14, initializer, range(attributes_1, 586, 4, 20, 20), null).
%node_1 - org.jsoup.nodes.Node
literal(node_1_literal1, number_literal, node_1_expr4, (arguments, 0), range(node_1, 974, 1, 35, 35), 4).
%node_test_1 - org.jsoup.nodes.NodeTest
literal(node_test_1_literal2, string_literal, node_test_1_expr2, (arguments, 0), range(node_test_1, 7475, 3, 186, 186), "p").
literal(node_test_1_literal1, string_literal, node_test_1_expr1, (arguments, 1), range(node_test_1, 7481, 2, 186, 186), "").
literal(node_test_1_literal4, string_literal, node_test_1_expr4, (arguments, 0), range(node_test_1, 7531, 3, 187, 187), "p").
literal(node_test_1_literal3, string_literal, node_test_1_expr3, (arguments, 1), range(node_test_1, 7537, 2, 187, 187), "").
literal(node_test_1_literal5, number_literal, node_test_1_expr5, (arguments, 0), range(node_test_1, 7564, 1, 189, 189), 0).
literal(node_test_1_literal6, number_literal, node_test_1_expr7, (arguments, 0), range(node_test_1, 7610, 1, 190, 190), 0).
%element_1 - org.jsoup.nodes.Element
%tag_1 - org.jsoup.parser.Tag
literal(tag_1_literal1, boolean_literal, tag_1_code19, initializer, range(tag_1, 372, 4, 17, 17), true).
literal(tag_1_literal2, boolean_literal, tag_1_code23, initializer, range(tag_1, 433, 4, 18, 18), true).
literal(tag_1_literal3, boolean_literal, tag_1_code27, initializer, range(tag_1, 511, 4, 19, 19), true).
literal(tag_1_literal4, boolean_literal, tag_1_code31, initializer, range(tag_1, 595, 4, 20, 20), true).
literal(tag_1_literal5, boolean_literal, tag_1_code35, initializer, range(tag_1, 651, 5, 21, 21), false).
literal(tag_1_literal6, boolean_literal, tag_1_code39, initializer, range(tag_1, 722, 5, 22, 22), false).
literal(tag_1_literal7, boolean_literal, tag_1_code43, initializer, range(tag_1, 869, 5, 23, 23), false).
literal(tag_1_literal8, null_literal, tag_1_expr12, right_operand, range(tag_1, 1776, 4, 53, 53), null).
literal(tag_1_literal9, string_literal, tag_1_expr17, (expressions, 0), range(tag_1, 7089, 5, 218, 218), "pre").
literal(tag_1_literal10, string_literal, tag_1_expr17, (expressions, 1), range(tag_1, 7096, 11, 218, 218), "plaintext").
literal(tag_1_literal11, string_literal, tag_1_expr17, (expressions, 2), range(tag_1, 7109, 7, 218, 218), "title").
literal(tag_1_literal12, boolean_literal, tag_1_expr21, right_hand_side, range(tag_1, 7382, 5, 228, 228), false).
literal(tag_1_literal13, boolean_literal, tag_1_expr22, right_hand_side, range(tag_1, 7423, 5, 229, 229), false).
literal(tag_1_literal14, boolean_literal, tag_1_expr23, right_hand_side, range(tag_1, 7462, 5, 230, 230), false).
literal(tag_1_literal15, boolean_literal, tag_1_expr27, right_hand_side, range(tag_1, 7677, 5, 238, 238), false).
literal(tag_1_literal16, boolean_literal, tag_1_expr28, right_hand_side, range(tag_1, 7719, 5, 239, 239), false).
literal(tag_1_literal17, boolean_literal, tag_1_expr29, right_hand_side, range(tag_1, 7750, 4, 240, 240), true).
literal(tag_1_literal18, boolean_literal, tag_1_expr32, right_hand_side, range(tag_1, 7927, 5, 246, 246), false).
literal(tag_1_literal19, boolean_literal, tag_1_expr35, right_hand_side, range(tag_1, 8114, 4, 252, 252), true).
%validate_1 - org.jsoup.helper.Validate
literal(validate_1_literal1, null_literal, validate_1_expr1, right_operand, range(validate_1, 316, 4, 15, 15), null).
literal(validate_1_literal2, null_literal, validate_1_expr3, right_operand, range(validate_1, 2501, 4, 91, 91), null).
literal(validate_1_literal3, number_literal, validate_1_expr4, right_operand, range(validate_1, 2528, 1, 91, 91), 0).

%%% Other Code Entities
%attributes_1 - org.jsoup.nodes.Attributes
code(attributes_1_code1, compilation_unit, range(attributes_1, 0, 7618, 1, -1)).
code(attributes_1_code2, type_declaration, attributes_1_code1, (types, 0), range(attributes_1, 82, 7535, 7, 249)).
code(attributes_1_code3, modifier, attributes_1_code2, (modifiers, 0), range(attributes_1, 399, 6, 17, 17)).
code(attributes_1_code4, parameterized_type, attributes_1_code2, (super_interface_types, 0), range(attributes_1, 434, 19, 17, 17)).
code(attributes_1_code5, simple_type, attributes_1_code4, type, range(attributes_1, 434, 8, 17, 17)).
code(attributes_1_code6, simple_type, attributes_1_code4, (type_arguments, 0), range(attributes_1, 443, 9, 17, 17)).
code(attributes_1_code7, simple_type, attributes_1_code2, (super_interface_types, 1), range(attributes_1, 455, 9, 17, 17)).
code(attributes_1_code9, modifier, attributes_1_code8, (modifiers, 0), range(attributes_1, 532, 7, 20, 20)).
code(attributes_1_code8, field_declaration, attributes_1_code2, (body_declarations, 1), range(attributes_1, 532, 59, 20, 20)).
code(attributes_1_code10, parameterized_type, attributes_1_code8, type, range(attributes_1, 540, 32, 20, 20)).
code(attributes_1_code11, simple_type, attributes_1_code10, type, range(attributes_1, 540, 13, 20, 20)).
code(attributes_1_code12, simple_type, attributes_1_code10, (type_arguments, 0), range(attributes_1, 554, 6, 20, 20)).
code(attributes_1_code13, simple_type, attributes_1_code10, (type_arguments, 1), range(attributes_1, 562, 9, 20, 20)).
code(attributes_1_code14, variable_declaration_fragment, attributes_1_code8, (fragments, 0), range(attributes_1, 573, 17, 20, 20)).
code(attributes_1_code15, type_declaration, attributes_1_code2, (body_declarations, 18), range(attributes_1, 5683, 1844, 191, 244)).
code(attributes_1_code16, modifier, attributes_1_code15, (modifiers, 0), range(attributes_1, 5683, 7, 191, 191)).
code(attributes_1_code18, simple_type, attributes_1_code17, type, range(attributes_1, 5713, 11, 191, 191)).
code(attributes_1_code17, parameterized_type, attributes_1_code15, superclass_type, range(attributes_1, 5713, 27, 191, 191)).
code(attributes_1_code19, simple_type, attributes_1_code17, (type_arguments, 0), range(attributes_1, 5725, 6, 191, 191)).
code(attributes_1_code20, simple_type, attributes_1_code17, (type_arguments, 1), range(attributes_1, 5733, 6, 191, 191)).
%node_1 - org.jsoup.nodes.Node
code(node_1_code1, compilation_unit, range(node_1, 0, 19993, 1, -1)).
code(node_1_code2, type_declaration, node_1_code1, (types, 0), range(node_1, 347, 19645, 15, 606)).
code(node_1_code3, method_declaration, node_1_code2, (body_declarations, 5), range(node_1, 663, 397, 26, 38)).
code(node_1_code4, modifier, node_1_code3, (modifiers, 0), range(node_1, 795, 9, 31, 31)).
code(node_1_code6, simple_type, node_1_code5, type, range(node_1, 810, 6, 31, 31)).
code(node_1_code5, single_variable_declaration, node_1_code3, (parameters, 0), range(node_1, 810, 14, 31, 31)).
code(node_1_code7, single_variable_declaration, node_1_code3, (parameters, 1), range(node_1, 826, 21, 31, 31)).
code(node_1_code8, simple_type, node_1_code7, type, range(node_1, 826, 10, 31, 31)).
code(node_1_code10, simple_type, node_1_code9, type, range(node_1, 958, 9, 35, 35)).
code(node_1_code9, parameterized_type, node_1_expr4, type, range(node_1, 958, 15, 35, 35)).
code(node_1_code11, simple_type, node_1_code9, (type_arguments, 0), range(node_1, 968, 4, 35, 35)).
code(node_1_code12, method_declaration, node_1_code2, (body_declarations, 39), range(node_1, 14388, 348, 438, 446)).
code(node_1_code13, method_declaration, node_1_code2, (body_declarations, 42), range(node_1, 15614, 304, 480, 488)).
%node_test_1 - org.jsoup.nodes.NodeTest
code(node_test_1_code1, compilation_unit, range(node_test_1, 0, 8311, 1, -1)).
code(node_test_1_code2, type_declaration, node_test_1_code1, (types, 0), range(node_test_1, 259, 8051, 13, 210)).
code(node_test_1_code3, modifier, node_test_1_code2, (modifiers, 0), range(node_test_1, 326, 6, 17, 17)).
code(node_test_1_code4, method_declaration, node_test_1_code2, (body_declarations, 15), range(node_test_1, 7369, 512, 185, 198)).
code(node_test_1_code5, simple_type, node_test_1_stmt1, type, range(node_test_1, 7439, 4, 186, 186)).
code(node_test_1_code6, variable_declaration_fragment, node_test_1_stmt1, (fragments, 0), range(node_test_1, 7444, 40, 186, 186)).
code(node_test_1_code7, simple_type, node_test_1_expr1, type, range(node_test_1, 7455, 7, 186, 186)).
code(node_test_1_code8, simple_type, node_test_1_stmt2, type, range(node_test_1, 7494, 7, 187, 187)).
code(node_test_1_code9, variable_declaration_fragment, node_test_1_stmt2, (fragments, 0), range(node_test_1, 7502, 38, 187, 187)).
code(node_test_1_code10, simple_type, node_test_1_expr3, type, range(node_test_1, 7511, 7, 187, 187)).
%element_1 - org.jsoup.nodes.Element
code(element_1_code1, compilation_unit, range(element_1, 0, 38982, 1, -1)).
code(element_1_code2, type_declaration, element_1_code1, (types, 0), range(element_1, 396, 38585, 16, 1110)).
code(element_1_code3, method_declaration, element_1_code2, (body_declarations, 2), range(element_1, 770, 461, 28, 42)).
code(element_1_code4, method_declaration, element_1_code2, (body_declarations, 3), range(element_1, 1241, 375, 44, 54)).
code(element_1_code5, simple_type, element_1_expr7, type, range(element_1, 1596, 10, 53, 53)).
code(element_1_code6, method_declaration, element_1_code2, (body_declarations, 12), range(element_1, 4143, 88, 140, 143)).
code(element_1_code7, simple_type, element_1_expr8, type, range(element_1, 4205, 7, 142, 142)).
%tag_1 - org.jsoup.parser.Tag
code(tag_1_code1, compilation_unit, range(tag_1, 0, 8288, 1, -1)).
code(tag_1_code2, type_declaration, tag_1_code1, (types, 0), range(tag_1, 111, 8176, 8, 262)).
code(tag_1_code3, field_declaration, tag_1_code2, (body_declarations, 0), range(tag_1, 219, 72, 14, 14)).
code(tag_1_code4, modifier, tag_1_code3, (modifiers, 0), range(tag_1, 219, 7, 14, 14)).
code(tag_1_code5, modifier, tag_1_code3, (modifiers, 1), range(tag_1, 227, 6, 14, 14)).
code(tag_1_code6, modifier, tag_1_code3, (modifiers, 2), range(tag_1, 234, 5, 14, 14)).
code(tag_1_code7, parameterized_type, tag_1_code3, type, range(tag_1, 240, 16, 14, 14)).
code(tag_1_code8, simple_type, tag_1_code7, type, range(tag_1, 240, 3, 14, 14)).
code(tag_1_code9, simple_type, tag_1_code7, (type_arguments, 0), range(tag_1, 244, 6, 14, 14)).
code(tag_1_code10, simple_type, tag_1_code7, (type_arguments, 1), range(tag_1, 252, 3, 14, 14)).
code(tag_1_code11, variable_declaration_fragment, tag_1_code3, (fragments, 0), range(tag_1, 257, 33, 14, 14)).
code(tag_1_code13, simple_type, tag_1_code12, type, range(tag_1, 268, 7, 14, 14)).
code(tag_1_code12, parameterized_type, tag_1_expr1, type, range(tag_1, 268, 20, 14, 14)).
code(tag_1_code14, simple_type, tag_1_code12, (type_arguments, 0), range(tag_1, 276, 6, 14, 14)).
code(tag_1_code15, simple_type, tag_1_code12, (type_arguments, 1), range(tag_1, 284, 3, 14, 14)).
code(tag_1_code17, modifier, tag_1_code16, (modifiers, 0), range(tag_1, 346, 7, 17, 17)).
code(tag_1_code16, field_declaration, tag_1_code2, (body_declarations, 2), range(tag_1, 346, 31, 17, 17)).
code(tag_1_code18, primitive_type, tag_1_code16, type, range(tag_1, 354, 7, 17, 17)).
code(tag_1_code19, variable_declaration_fragment, tag_1_code16, (fragments, 0), range(tag_1, 362, 14, 17, 17)).
code(tag_1_code20, field_declaration, tag_1_code2, (body_declarations, 3), range(tag_1, 401, 37, 18, 18)).
code(tag_1_code21, modifier, tag_1_code20, (modifiers, 0), range(tag_1, 401, 7, 18, 18)).
code(tag_1_code22, primitive_type, tag_1_code20, type, range(tag_1, 409, 7, 18, 18)).
code(tag_1_code23, variable_declaration_fragment, tag_1_code20, (fragments, 0), range(tag_1, 417, 20, 18, 18)).
code(tag_1_code24, field_declaration, tag_1_code2, (body_declarations, 4), range(tag_1, 477, 39, 19, 19)).
code(tag_1_code25, modifier, tag_1_code24, (modifiers, 0), range(tag_1, 477, 7, 19, 19)).
code(tag_1_code26, primitive_type, tag_1_code24, type, range(tag_1, 485, 7, 19, 19)).
code(tag_1_code27, variable_declaration_fragment, tag_1_code24, (fragments, 0), range(tag_1, 493, 22, 19, 19)).
code(tag_1_code29, modifier, tag_1_code28, (modifiers, 0), range(tag_1, 560, 7, 20, 20)).
code(tag_1_code28, field_declaration, tag_1_code2, (body_declarations, 5), range(tag_1, 560, 40, 20, 20)).
code(tag_1_code30, primitive_type, tag_1_code28, type, range(tag_1, 568, 7, 20, 20)).
code(tag_1_code31, variable_declaration_fragment, tag_1_code28, (fragments, 0), range(tag_1, 576, 23, 20, 20)).
code(tag_1_code33, modifier, tag_1_code32, (modifiers, 0), range(tag_1, 627, 7, 21, 21)).
code(tag_1_code32, field_declaration, tag_1_code2, (body_declarations, 6), range(tag_1, 627, 30, 21, 21)).
code(tag_1_code34, primitive_type, tag_1_code32, type, range(tag_1, 635, 7, 21, 21)).
code(tag_1_code35, variable_declaration_fragment, tag_1_code32, (fragments, 0), range(tag_1, 643, 13, 21, 21)).
code(tag_1_code36, field_declaration, tag_1_code2, (body_declarations, 7), range(tag_1, 692, 36, 22, 22)).
code(tag_1_code37, modifier, tag_1_code36, (modifiers, 0), range(tag_1, 692, 7, 22, 22)).
code(tag_1_code38, primitive_type, tag_1_code36, type, range(tag_1, 700, 7, 22, 22)).
code(tag_1_code39, variable_declaration_fragment, tag_1_code36, (fragments, 0), range(tag_1, 708, 19, 22, 22)).
code(tag_1_code40, field_declaration, tag_1_code2, (body_declarations, 8), range(tag_1, 832, 43, 23, 23)).
code(tag_1_code41, modifier, tag_1_code40, (modifiers, 0), range(tag_1, 832, 7, 23, 23)).
code(tag_1_code42, primitive_type, tag_1_code40, type, range(tag_1, 840, 7, 23, 23)).
code(tag_1_code43, variable_declaration_fragment, tag_1_code40, (fragments, 0), range(tag_1, 848, 26, 23, 23)).
code(tag_1_code44, method_declaration, tag_1_code2, (body_declarations, 9), range(tag_1, 914, 81, 25, 27)).
code(tag_1_code45, modifier, tag_1_code44, (modifiers, 0), range(tag_1, 914, 7, 25, 25)).
code(tag_1_code47, simple_type, tag_1_code46, type, range(tag_1, 926, 6, 25, 25)).
code(tag_1_code46, single_variable_declaration, tag_1_code44, (parameters, 0), range(tag_1, 926, 14, 25, 25)).
code(tag_1_code48, method_declaration, tag_1_code2, (body_declarations, 11), range(tag_1, 1143, 912, 38, 61)).
code(tag_1_code49, simple_type, tag_1_stmt6, type, range(tag_1, 1724, 3, 52, 52)).
code(tag_1_code50, variable_declaration_fragment, tag_1_stmt6, (fragments, 0), range(tag_1, 1728, 23, 52, 52)).
code(tag_1_code52, modifier, tag_1_code51, (modifiers, 0), range(tag_1, 5465, 7, 197, 197)).
code(tag_1_code51, field_declaration, tag_1_code2, (body_declarations, 26), range(tag_1, 5465, 603, 197, 203)).
code(tag_1_code53, modifier, tag_1_code51, (modifiers, 1), range(tag_1, 5473, 6, 197, 197)).
code(tag_1_code54, modifier, tag_1_code51, (modifiers, 2), range(tag_1, 5480, 5, 197, 197)).
code(tag_1_code55, array_type, tag_1_code51, type, range(tag_1, 5486, 8, 197, 197)).
code(tag_1_code56, simple_type, tag_1_code55, element_type, range(tag_1, 5486, 6, 197, 197)).
code(tag_1_code57, dimension, tag_1_code55, (dimensions, 0), range(tag_1, 5492, 2, 197, 197)).
code(tag_1_code58, variable_declaration_fragment, tag_1_code51, (fragments, 0), range(tag_1, 5495, 572, 197, 203)).
code(tag_1_code59, field_declaration, tag_1_code2, (body_declarations, 27), range(tag_1, 6073, 577, 204, 210)).
code(tag_1_code60, modifier, tag_1_code59, (modifiers, 0), range(tag_1, 6073, 7, 204, 204)).
code(tag_1_code61, modifier, tag_1_code59, (modifiers, 1), range(tag_1, 6081, 6, 204, 204)).
code(tag_1_code62, modifier, tag_1_code59, (modifiers, 2), range(tag_1, 6088, 5, 204, 204)).
code(tag_1_code64, simple_type, tag_1_code63, element_type, range(tag_1, 6094, 6, 204, 204)).
code(tag_1_code63, array_type, tag_1_code59, type, range(tag_1, 6094, 8, 204, 204)).
code(tag_1_code65, dimension, tag_1_code63, (dimensions, 0), range(tag_1, 6100, 2, 204, 204)).
code(tag_1_code66, variable_declaration_fragment, tag_1_code59, (fragments, 0), range(tag_1, 6103, 546, 204, 210)).
code(tag_1_code68, modifier, tag_1_code67, (modifiers, 0), range(tag_1, 6655, 7, 211, 211)).
code(tag_1_code67, field_declaration, tag_1_code2, (body_declarations, 28), range(tag_1, 6655, 188, 211, 214)).
code(tag_1_code69, modifier, tag_1_code67, (modifiers, 1), range(tag_1, 6663, 6, 211, 211)).
code(tag_1_code70, modifier, tag_1_code67, (modifiers, 2), range(tag_1, 6670, 5, 211, 211)).
code(tag_1_code72, simple_type, tag_1_code71, element_type, range(tag_1, 6676, 6, 211, 211)).
code(tag_1_code71, array_type, tag_1_code67, type, range(tag_1, 6676, 8, 211, 211)).
code(tag_1_code73, dimension, tag_1_code71, (dimensions, 0), range(tag_1, 6682, 2, 211, 211)).
code(tag_1_code74, variable_declaration_fragment, tag_1_code67, (fragments, 0), range(tag_1, 6685, 157, 211, 214)).
code(tag_1_code75, field_declaration, tag_1_code2, (body_declarations, 29), range(tag_1, 6848, 180, 215, 217)).
code(tag_1_code76, modifier, tag_1_code75, (modifiers, 0), range(tag_1, 6848, 7, 215, 215)).
code(tag_1_code77, modifier, tag_1_code75, (modifiers, 1), range(tag_1, 6856, 6, 215, 215)).
code(tag_1_code78, modifier, tag_1_code75, (modifiers, 2), range(tag_1, 6863, 5, 215, 215)).
code(tag_1_code79, array_type, tag_1_code75, type, range(tag_1, 6869, 8, 215, 215)).
code(tag_1_code80, simple_type, tag_1_code79, element_type, range(tag_1, 6869, 6, 215, 215)).
code(tag_1_code81, dimension, tag_1_code79, (dimensions, 0), range(tag_1, 6875, 2, 215, 215)).
code(tag_1_code82, variable_declaration_fragment, tag_1_code75, (fragments, 0), range(tag_1, 6878, 149, 215, 217)).
code(tag_1_code83, field_declaration, tag_1_code2, (body_declarations, 30), range(tag_1, 7033, 85, 218, 218)).
code(tag_1_code84, modifier, tag_1_code83, (modifiers, 0), range(tag_1, 7033, 7, 218, 218)).
code(tag_1_code85, modifier, tag_1_code83, (modifiers, 1), range(tag_1, 7041, 6, 218, 218)).
code(tag_1_code86, modifier, tag_1_code83, (modifiers, 2), range(tag_1, 7048, 5, 218, 218)).
code(tag_1_code87, array_type, tag_1_code83, type, range(tag_1, 7054, 8, 218, 218)).
code(tag_1_code88, simple_type, tag_1_code87, element_type, range(tag_1, 7054, 6, 218, 218)).
code(tag_1_code89, dimension, tag_1_code87, (dimensions, 0), range(tag_1, 7060, 2, 218, 218)).
code(tag_1_code90, variable_declaration_fragment, tag_1_code83, (fragments, 0), range(tag_1, 7063, 54, 218, 218)).
code(tag_1_code91, initializer, tag_1_code2, (body_declarations, 31), range(tag_1, 7124, 1011, 220, 254)).
code(tag_1_code92, single_variable_declaration, tag_1_stmt9, parameter, range(tag_1, 7165, 14, 222, 222)).
code(tag_1_code93, simple_type, tag_1_code92, type, range(tag_1, 7165, 6, 222, 222)).
code(tag_1_code94, simple_type, tag_1_stmt10, type, range(tag_1, 7207, 3, 223, 223)).
code(tag_1_code95, variable_declaration_fragment, tag_1_stmt10, (fragments, 0), range(tag_1, 7211, 22, 223, 223)).
code(tag_1_code96, simple_type, tag_1_expr18, type, range(tag_1, 7221, 3, 223, 223)).
code(tag_1_code98, simple_type, tag_1_code97, type, range(tag_1, 7285, 6, 226, 226)).
code(tag_1_code97, single_variable_declaration, tag_1_stmt12, parameter, range(tag_1, 7285, 14, 226, 226)).
code(tag_1_code99, simple_type, tag_1_stmt13, type, range(tag_1, 7328, 3, 227, 227)).
code(tag_1_code100, variable_declaration_fragment, tag_1_stmt13, (fragments, 0), range(tag_1, 7332, 22, 227, 227)).
code(tag_1_code101, simple_type, tag_1_expr20, type, range(tag_1, 7342, 3, 227, 227)).
code(tag_1_code103, simple_type, tag_1_code102, type, range(tag_1, 7537, 6, 235, 235)).
code(tag_1_code102, single_variable_declaration, tag_1_stmt18, parameter, range(tag_1, 7537, 14, 235, 235)).
code(tag_1_code104, simple_type, tag_1_stmt19, type, range(tag_1, 7579, 3, 236, 236)).
code(tag_1_code105, variable_declaration_fragment, tag_1_stmt19, (fragments, 0), range(tag_1, 7583, 23, 236, 236)).
code(tag_1_code107, simple_type, tag_1_code106, type, range(tag_1, 7780, 6, 243, 243)).
code(tag_1_code106, single_variable_declaration, tag_1_stmt24, parameter, range(tag_1, 7780, 14, 243, 243)).
code(tag_1_code108, simple_type, tag_1_stmt25, type, range(tag_1, 7831, 3, 244, 244)).
code(tag_1_code109, variable_declaration_fragment, tag_1_stmt25, (fragments, 0), range(tag_1, 7835, 23, 244, 244)).
code(tag_1_code110, single_variable_declaration, tag_1_stmt28, parameter, range(tag_1, 7958, 14, 249, 249)).
code(tag_1_code111, simple_type, tag_1_code110, type, range(tag_1, 7958, 6, 249, 249)).
code(tag_1_code112, simple_type, tag_1_stmt29, type, range(tag_1, 8013, 3, 250, 250)).
code(tag_1_code113, variable_declaration_fragment, tag_1_stmt29, (fragments, 0), range(tag_1, 8017, 23, 250, 250)).
code(tag_1_code114, method_declaration, tag_1_code2, (body_declarations, 32), range(tag_1, 8141, 144, 256, 261)).
%validate_1 - org.jsoup.helper.Validate
code(validate_1_code1, compilation_unit, range(validate_1, 0, 3117, 1, -1)).
code(validate_1_code2, type_declaration, validate_1_code1, (types, 0), range(validate_1, 27, 3089, 3, 112)).
code(validate_1_code3, method_declaration, validate_1_code2, (body_declarations, 1), range(validate_1, 163, 239, 10, 17)).
code(validate_1_code4, method_declaration, validate_1_code2, (body_declarations, 9), range(validate_1, 2332, 280, 86, 93)).

%%% Name References

name_ref(t_attributes_1, type, 'Attributes', 'Lorg/jsoup/nodes/Attributes;').
name_ref(t_dataset_2, type, 'Dataset', 'Lorg/jsoup/nodes/Attributes$Dataset;').
name_ref(t_node_test_4, type, 'NodeTest', 'Lorg/jsoup/nodes/NodeTest;').
name_ref(t_tag_5, type, 'Tag', 'Lorg/jsoup/parser/Tag;').
name_ref(t_validate_3, type, 'Validate', 'Lorg/jsoup/helper/Validate;').
name_ref(p_attributes_33, param, 'attributes', 'element_1;attributes_line_38').
name_ref(p_base_uri_32, param, 'baseUri', 'element_1;baseUri_line_38').
name_ref(p_base_uri_36, param, 'baseUri', 'element_1;baseUri_line_53').
name_ref(p_tag_35, param, 'tag', 'element_1;tag_line_53').
name_ref(v_el_171, var, 'el', 'Lorg/jsoup/nodes/NodeTest;.orphanNodeReturnsNullForSiblingElements()V#el').
name_ref(v_node_170, var, 'node', 'Lorg/jsoup/nodes/NodeTest;.orphanNodeReturnsNullForSiblingElements()V#node').
name_ref(v_tag_183, var, 'tag', 'Lorg/jsoup/parser/Tag;.valueOf(Ljava/lang/String;)Lorg/jsoup/parser/Tag;#0#tag').
name_ref(v_tag_192, var, 'tag', 'Lorg/jsoup/parser/Tag;#0#0#tag').
name_ref(v_tag_194, var, 'tag', 'Lorg/jsoup/parser/Tag;#1#0#tag').
name_ref(v_tag_196, var, 'tag', 'Lorg/jsoup/parser/Tag;#2#0#tag').
name_ref(v_tag_198, var, 'tag', 'Lorg/jsoup/parser/Tag;#3#0#tag').
name_ref(v_tag_200, var, 'tag', 'Lorg/jsoup/parser/Tag;#4#0#tag').
name_ref(v_tag_name_191, var, 'tagName', 'Lorg/jsoup/parser/Tag;#0#tagName').
name_ref(v_tag_name_193, var, 'tagName', 'Lorg/jsoup/parser/Tag;#1#tagName').
name_ref(v_tag_name_195, var, 'tagName', 'Lorg/jsoup/parser/Tag;#2#tagName').
name_ref(v_tag_name_197, var, 'tagName', 'Lorg/jsoup/parser/Tag;#3#tagName').
name_ref(v_tag_name_199, var, 'tagName', 'Lorg/jsoup/parser/Tag;#4#tagName').
name_ref(p_accum_101, param, 'accum', 'Lorg/jsoup/nodes/Element;.outerHtmlHead(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$OutputSettings;)V#accum#0#0').
name_ref(p_accum_104, param, 'accum', 'Lorg/jsoup/nodes/Element;.outerHtmlTail(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$OutputSettings;)V#accum#0#0').
name_ref(p_accum_107, param, 'accum', 'Lorg/jsoup/nodes/Element;.html(Ljava/lang/StringBuilder;)V#accum#0#0').
name_ref(p_accum_148, param, 'accum', 'Lorg/jsoup/nodes/Node;.outerHtml(Ljava/lang/StringBuilder;)V#accum#0#0').
name_ref(p_accum_149, param, 'accum', 'Lorg/jsoup/nodes/Node;.outerHtmlHead(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$OutputSettings;)V#accum#0#0').
name_ref(p_accum_152, param, 'accum', 'Lorg/jsoup/nodes/Node;.outerHtmlTail(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$OutputSettings;)V#accum#0#0').
name_ref(p_accum_155, param, 'accum', 'Lorg/jsoup/nodes/Node;.indent(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$OutputSettings;)V#accum#0#0').
name_ref(p_accum_160, param, 'accum', 'Lorg/jsoup/nodes/Node$OuterHtmlVisitor;.(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/Document$OutputSettings;)V#accum#0#0').
name_ref(p_accum_25, param, 'accum', 'Lorg/jsoup/nodes/Attributes;.html(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/Document$OutputSettings;)V#accum#0#0').
name_ref(p_accum_88, param, 'accum', 'Lorg/jsoup/nodes/Element;.text(Ljava/lang/StringBuilder;)V#accum#0#0').
name_ref(p_accum_89, param, 'accum', 'Lorg/jsoup/nodes/Element;.ownText(Ljava/lang/StringBuilder;)V#accum#0#0').
name_ref(p_accum_90, param, 'accum', 'Lorg/jsoup/nodes/Element;.appendNormalisedText(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/TextNode;)V#accum#0#0').
name_ref(p_accum_93, param, 'accum', 'Lorg/jsoup/nodes/Element;.appendWhitespaceIfBr(Lorg/jsoup/nodes/Element;Ljava/lang/StringBuilder;)V#accum#0#1').
name_ref(p_attribute_21, param, 'attribute', 'Lorg/jsoup/nodes/Attributes;.put(Lorg/jsoup/nodes/Attribute;)V#attribute#0#0').
name_ref(p_attribute_key_116, param, 'attributeKey', 'Lorg/jsoup/nodes/Node;.attr(Ljava/lang/String;)Ljava/lang/String;#attributeKey#0#0').
name_ref(p_attribute_key_117, param, 'attributeKey', 'Lorg/jsoup/nodes/Node;.attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;#attributeKey#0#0').
name_ref(p_attribute_key_119, param, 'attributeKey', 'Lorg/jsoup/nodes/Node;.hasAttr(Ljava/lang/String;)Z#attributeKey#0#0').
name_ref(p_attribute_key_120, param, 'attributeKey', 'Lorg/jsoup/nodes/Node;.removeAttr(Ljava/lang/String;)Lorg/jsoup/nodes/Node;#attributeKey#0#0').
name_ref(p_attribute_key_126, param, 'attributeKey', 'Lorg/jsoup/nodes/Node;.absUrl(Ljava/lang/String;)Ljava/lang/String;#attributeKey#0#0').
name_ref(p_attribute_key_38, param, 'attributeKey', 'Lorg/jsoup/nodes/Element;.attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;#attributeKey#0#0').
name_ref(p_attribute_value_118, param, 'attributeValue', 'Lorg/jsoup/nodes/Node;.attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;#attributeValue#0#1').
name_ref(p_attribute_value_39, param, 'attributeValue', 'Lorg/jsoup/nodes/Element;.attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;#attributeValue#0#1').
name_ref(p_attributes_111, param, 'attributes', 'Lorg/jsoup/nodes/Node;.(Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V#attributes#0#1').
name_ref(p_attributes_33, param, 'attributes', 'Lorg/jsoup/nodes/Element;.(Lorg/jsoup/parser/Tag;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V#attributes#0#2').
name_ref(p_base_uri_110, param, 'baseUri', 'Lorg/jsoup/nodes/Node;.(Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V#baseUri#0#0').
name_ref(p_base_uri_115, param, 'baseUri', 'Lorg/jsoup/nodes/Node;.(Ljava/lang/String;)V#baseUri#0#0').
name_ref(p_base_uri_121, param, 'baseUri', 'Lorg/jsoup/nodes/Node;.setBaseUri(Ljava/lang/String;)V#baseUri#0#0').
name_ref(p_base_uri_32, param, 'baseUri', 'Lorg/jsoup/nodes/Element;.(Lorg/jsoup/parser/Tag;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V#baseUri#0#1').
name_ref(p_base_uri_36, param, 'baseUri', 'Lorg/jsoup/nodes/Element;.(Lorg/jsoup/parser/Tag;Ljava/lang/String;)V#baseUri#0#1').
name_ref(p_child_144, param, 'child', 'Lorg/jsoup/nodes/Node;.reparentChild(Lorg/jsoup/nodes/Node;)V#child#0#0').
name_ref(p_child_45, param, 'child', 'Lorg/jsoup/nodes/Element;.appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;#child#0#0').
name_ref(p_child_46, param, 'child', 'Lorg/jsoup/nodes/Element;.prependChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;#child#0#0').
name_ref(p_children_141, param, 'children', 'Lorg/jsoup/nodes/Node;.addChildren([Lorg/jsoup/nodes/Node;)V#children#0#0').
name_ref(p_children_143, param, 'children', 'Lorg/jsoup/nodes/Node;.addChildren(I[Lorg/jsoup/nodes/Node;)V#children#0#1').
name_ref(p_class_name_62, param, 'className', 'Lorg/jsoup/nodes/Element;.getElementsByClass(Ljava/lang/String;)Lorg/jsoup/select/Elements;#className#0#0').
name_ref(p_class_name_96, param, 'className', 'Lorg/jsoup/nodes/Element;.hasClass(Ljava/lang/String;)Z#className#0#0').
name_ref(p_class_name_97, param, 'className', 'Lorg/jsoup/nodes/Element;.addClass(Ljava/lang/String;)Lorg/jsoup/nodes/Element;#className#0#0').
name_ref(p_class_name_98, param, 'className', 'Lorg/jsoup/nodes/Element;.removeClass(Ljava/lang/String;)Lorg/jsoup/nodes/Element;#className#0#0').
name_ref(p_class_name_99, param, 'className', 'Lorg/jsoup/nodes/Element;.toggleClass(Ljava/lang/String;)Lorg/jsoup/nodes/Element;#className#0#0').
name_ref(p_class_names_95, param, 'classNames', 'Lorg/jsoup/nodes/Element;.classNames(Ljava/util/Set<Ljava/lang/String;>;)Lorg/jsoup/nodes/Element;#classNames#0#0').
name_ref(p_css_query_44, param, 'cssQuery', 'Lorg/jsoup/nodes/Element;.select(Ljava/lang/String;)Lorg/jsoup/select/Elements;#cssQuery#0#0').
name_ref(p_depth_102, param, 'depth', 'Lorg/jsoup/nodes/Element;.outerHtmlHead(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$OutputSettings;)V#depth#0#1').
name_ref(p_depth_105, param, 'depth', 'Lorg/jsoup/nodes/Element;.outerHtmlTail(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$OutputSettings;)V#depth#0#1').
name_ref(p_depth_123, param, 'depth', 'Lorg/jsoup/nodes/Node$4280;.head(Lorg/jsoup/nodes/Node;I)V#depth#0#1').
name_ref(p_depth_125, param, 'depth', 'Lorg/jsoup/nodes/Node$4280;.tail(Lorg/jsoup/nodes/Node;I)V#depth#0#1').
name_ref(p_depth_150, param, 'depth', 'Lorg/jsoup/nodes/Node;.outerHtmlHead(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$OutputSettings;)V#depth#0#1').
name_ref(p_depth_153, param, 'depth', 'Lorg/jsoup/nodes/Node;.outerHtmlTail(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$OutputSettings;)V#depth#0#1').
name_ref(p_depth_156, param, 'depth', 'Lorg/jsoup/nodes/Node;.indent(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$OutputSettings;)V#depth#0#1').
name_ref(p_depth_163, param, 'depth', 'Lorg/jsoup/nodes/Node$OuterHtmlVisitor;.head(Lorg/jsoup/nodes/Node;I)V#depth#0#1').
name_ref(p_depth_165, param, 'depth', 'Lorg/jsoup/nodes/Node$OuterHtmlVisitor;.tail(Lorg/jsoup/nodes/Node;I)V#depth#0#1').
name_ref(p_depth_167, param, 'depth', 'Lorg/jsoup/nodes/NodeTest$6999;.head(Lorg/jsoup/nodes/Node;I)V#depth#0#1').
name_ref(p_depth_169, param, 'depth', 'Lorg/jsoup/nodes/NodeTest$6999;.tail(Lorg/jsoup/nodes/Node;I)V#depth#0#1').
name_ref(p_el_135, param, 'el', 'Lorg/jsoup/nodes/Node;.getDeepChild(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;#el#0#0').
name_ref(p_el_41, param, 'el', 'Lorg/jsoup/nodes/Element;.accumulateParents(Lorg/jsoup/nodes/Element;Lorg/jsoup/select/Elements;)V#el#0#0').
name_ref(p_element_92, param, 'element', 'Lorg/jsoup/nodes/Element;.appendWhitespaceIfBr(Lorg/jsoup/nodes/Element;Ljava/lang/StringBuilder;)V#element#0#0').
name_ref(p_elements_59, param, 'elements', 'Lorg/jsoup/nodes/Element;.indexInList<E:Lorg/jsoup/nodes/Element;>(Lorg/jsoup/nodes/Element;Ljava/util/List<TE;>;)Ljava/lang/Integer;#elements#0#1').
name_ref(p_html_108, param, 'html', 'Lorg/jsoup/nodes/Element;.html(Ljava/lang/String;)Lorg/jsoup/nodes/Element;#html#0#0').
name_ref(p_html_128, param, 'html', 'Lorg/jsoup/nodes/Node;.before(Ljava/lang/String;)Lorg/jsoup/nodes/Node;#html#0#0').
name_ref(p_html_130, param, 'html', 'Lorg/jsoup/nodes/Node;.after(Ljava/lang/String;)Lorg/jsoup/nodes/Node;#html#0#0').
name_ref(p_html_133, param, 'html', 'Lorg/jsoup/nodes/Node;.addSiblingHtml(ILjava/lang/String;)V#html#0#1').
name_ref(p_html_134, param, 'html', 'Lorg/jsoup/nodes/Node;.wrap(Ljava/lang/String;)Lorg/jsoup/nodes/Node;#html#0#0').
name_ref(p_html_51, param, 'html', 'Lorg/jsoup/nodes/Element;.append(Ljava/lang/String;)Lorg/jsoup/nodes/Element;#html#0#0').
name_ref(p_html_52, param, 'html', 'Lorg/jsoup/nodes/Element;.prepend(Ljava/lang/String;)Lorg/jsoup/nodes/Element;#html#0#0').
name_ref(p_html_53, param, 'html', 'Lorg/jsoup/nodes/Element;.before(Ljava/lang/String;)Lorg/jsoup/nodes/Element;#html#0#0').
name_ref(p_html_55, param, 'html', 'Lorg/jsoup/nodes/Element;.after(Ljava/lang/String;)Lorg/jsoup/nodes/Element;#html#0#0').
name_ref(p_html_57, param, 'html', 'Lorg/jsoup/nodes/Element;.wrap(Ljava/lang/String;)Lorg/jsoup/nodes/Element;#html#0#0').
name_ref(p_id_61, param, 'id', 'Lorg/jsoup/nodes/Element;.getElementById(Ljava/lang/String;)Lorg/jsoup/nodes/Element;#id#0#0').
name_ref(p_in_136, param, 'in', 'Lorg/jsoup/nodes/Node;.replaceWith(Lorg/jsoup/nodes/Node;)V#in#0#0').
name_ref(p_in_139, param, 'in', 'Lorg/jsoup/nodes/Node;.replaceChild(Lorg/jsoup/nodes/Node;Lorg/jsoup/nodes/Node;)V#in#0#1').
name_ref(p_incoming_24, param, 'incoming', 'Lorg/jsoup/nodes/Attributes;.addAll(Lorg/jsoup/nodes/Attributes;)V#incoming#0#0').
name_ref(p_index_127, param, 'index', 'Lorg/jsoup/nodes/Node;.childNode(I)Lorg/jsoup/nodes/Node;#index#0#0').
name_ref(p_index_132, param, 'index', 'Lorg/jsoup/nodes/Node;.addSiblingHtml(ILjava/lang/String;)V#index#0#0').
name_ref(p_index_142, param, 'index', 'Lorg/jsoup/nodes/Node;.addChildren(I[Lorg/jsoup/nodes/Node;)V#index#0#0').
name_ref(p_index_43, param, 'index', 'Lorg/jsoup/nodes/Element;.child(I)Lorg/jsoup/nodes/Element;#index#0#0').
name_ref(p_index_79, param, 'index', 'Lorg/jsoup/nodes/Element;.getElementsByIndexLessThan(I)Lorg/jsoup/select/Elements;#index#0#0').
name_ref(p_index_80, param, 'index', 'Lorg/jsoup/nodes/Element;.getElementsByIndexGreaterThan(I)Lorg/jsoup/select/Elements;#index#0#0').
name_ref(p_index_81, param, 'index', 'Lorg/jsoup/nodes/Element;.getElementsByIndexEquals(I)Lorg/jsoup/select/Elements;#index#0#0').
name_ref(p_key_18, param, 'key', 'Lorg/jsoup/nodes/Attributes;.get(Ljava/lang/String;)Ljava/lang/String;#key#0#0').
name_ref(p_key_19, param, 'key', 'Lorg/jsoup/nodes/Attributes;.put(Ljava/lang/String;Ljava/lang/String;)V#key#0#0').
name_ref(p_key_22, param, 'key', 'Lorg/jsoup/nodes/Attributes;.remove(Ljava/lang/String;)V#key#0#0').
name_ref(p_key_23, param, 'key', 'Lorg/jsoup/nodes/Attributes;.hasKey(Ljava/lang/String;)Z#key#0#0').
name_ref(p_key_28, param, 'key', 'Lorg/jsoup/nodes/Attributes$Dataset;.put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#key#0#0').
name_ref(p_key_30, param, 'key', 'Lorg/jsoup/nodes/Attributes;.dataKey(Ljava/lang/String;)Ljava/lang/String;#key#0#0').
name_ref(p_key_63, param, 'key', 'Lorg/jsoup/nodes/Element;.getElementsByAttribute(Ljava/lang/String;)Lorg/jsoup/select/Elements;#key#0#0').
name_ref(p_key_65, param, 'key', 'Lorg/jsoup/nodes/Element;.getElementsByAttributeValue(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/select/Elements;#key#0#0').
name_ref(p_key_67, param, 'key', 'Lorg/jsoup/nodes/Element;.getElementsByAttributeValueNot(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/select/Elements;#key#0#0').
name_ref(p_key_69, param, 'key', 'Lorg/jsoup/nodes/Element;.getElementsByAttributeValueStarting(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/select/Elements;#key#0#0').
name_ref(p_key_71, param, 'key', 'Lorg/jsoup/nodes/Element;.getElementsByAttributeValueEnding(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/select/Elements;#key#0#0').
name_ref(p_key_73, param, 'key', 'Lorg/jsoup/nodes/Element;.getElementsByAttributeValueContaining(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/select/Elements;#key#0#0').
name_ref(p_key_75, param, 'key', 'Lorg/jsoup/nodes/Element;.getElementsByAttributeValueMatching(Ljava/lang/String;Ljava/util/regex/Pattern;)Lorg/jsoup/select/Elements;#key#0#0').
name_ref(p_key_77, param, 'key', 'Lorg/jsoup/nodes/Element;.getElementsByAttributeValueMatching(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/select/Elements;#key#0#0').
name_ref(p_key_prefix_64, param, 'keyPrefix', 'Lorg/jsoup/nodes/Element;.getElementsByAttributeStarting(Ljava/lang/String;)Lorg/jsoup/select/Elements;#keyPrefix#0#0').
name_ref(p_match_74, param, 'match', 'Lorg/jsoup/nodes/Element;.getElementsByAttributeValueContaining(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/select/Elements;#match#0#1').
name_ref(p_msg_12, param, 'msg', 'Lorg/jsoup/helper/Validate;.noNullElements([Ljava/lang/Object;Ljava/lang/String;)V#msg#0#1').
name_ref(p_msg_15, param, 'msg', 'Lorg/jsoup/helper/Validate;.notEmpty(Ljava/lang/String;Ljava/lang/String;)V#msg#0#1').
name_ref(p_msg_16, param, 'msg', 'Lorg/jsoup/helper/Validate;.fail(Ljava/lang/String;)V#msg#0#0').
name_ref(p_msg_3, param, 'msg', 'Lorg/jsoup/helper/Validate;.notNull(Ljava/lang/Object;Ljava/lang/String;)V#msg#0#1').
name_ref(p_msg_6, param, 'msg', 'Lorg/jsoup/helper/Validate;.isTrue(ZLjava/lang/String;)V#msg#0#1').
name_ref(p_msg_9, param, 'msg', 'Lorg/jsoup/helper/Validate;.isFalse(ZLjava/lang/String;)V#msg#0#1').
name_ref(p_node_122, param, 'node', 'Lorg/jsoup/nodes/Node$4280;.head(Lorg/jsoup/nodes/Node;I)V#node#0#0').
name_ref(p_node_124, param, 'node', 'Lorg/jsoup/nodes/Node$4280;.tail(Lorg/jsoup/nodes/Node;I)V#node#0#0').
name_ref(p_node_129, param, 'node', 'Lorg/jsoup/nodes/Node;.before(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Node;#node#0#0').
name_ref(p_node_131, param, 'node', 'Lorg/jsoup/nodes/Node;.after(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Node;#node#0#0').
name_ref(p_node_162, param, 'node', 'Lorg/jsoup/nodes/Node$OuterHtmlVisitor;.head(Lorg/jsoup/nodes/Node;I)V#node#0#0').
name_ref(p_node_164, param, 'node', 'Lorg/jsoup/nodes/Node$OuterHtmlVisitor;.tail(Lorg/jsoup/nodes/Node;I)V#node#0#0').
name_ref(p_node_166, param, 'node', 'Lorg/jsoup/nodes/NodeTest$6999;.head(Lorg/jsoup/nodes/Node;I)V#node#0#0').
name_ref(p_node_168, param, 'node', 'Lorg/jsoup/nodes/NodeTest$6999;.tail(Lorg/jsoup/nodes/Node;I)V#node#0#0').
name_ref(p_node_54, param, 'node', 'Lorg/jsoup/nodes/Element;.before(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;#node#0#0').
name_ref(p_node_56, param, 'node', 'Lorg/jsoup/nodes/Element;.after(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;#node#0#0').
name_ref(p_node_visitor_147, param, 'nodeVisitor', 'Lorg/jsoup/nodes/Node;.traverse(Lorg/jsoup/select/NodeVisitor;)Lorg/jsoup/nodes/Node;#nodeVisitor#0#0').
name_ref(p_o_109, param, 'o', 'Lorg/jsoup/nodes/Element;.equals(Ljava/lang/Object;)Z#o#0#0').
name_ref(p_o_158, param, 'o', 'Lorg/jsoup/nodes/Node;.equals(Ljava/lang/Object;)Z#o#0#0').
name_ref(p_o_185, param, 'o', 'Lorg/jsoup/parser/Tag;.equals(Ljava/lang/Object;)Z#o#0#0').
name_ref(p_o_27, param, 'o', 'Lorg/jsoup/nodes/Attributes;.equals(Ljava/lang/Object;)Z#o#0#0').
name_ref(p_obj_1, param, 'obj', 'Lorg/jsoup/helper/Validate;.notNull(Ljava/lang/Object;)V#obj#0#0').
name_ref(p_obj_2, param, 'obj', 'Lorg/jsoup/helper/Validate;.notNull(Ljava/lang/Object;Ljava/lang/String;)V#obj#0#0').
name_ref(p_objects_10, param, 'objects', 'Lorg/jsoup/helper/Validate;.noNullElements([Ljava/lang/Object;)V#objects#0#0').
name_ref(p_objects_11, param, 'objects', 'Lorg/jsoup/helper/Validate;.noNullElements([Ljava/lang/Object;Ljava/lang/String;)V#objects#0#0').
name_ref(p_out_103, param, 'out', 'Lorg/jsoup/nodes/Element;.outerHtmlHead(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$OutputSettings;)V#out#0#2').
name_ref(p_out_106, param, 'out', 'Lorg/jsoup/nodes/Element;.outerHtmlTail(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$OutputSettings;)V#out#0#2').
name_ref(p_out_138, param, 'out', 'Lorg/jsoup/nodes/Node;.replaceChild(Lorg/jsoup/nodes/Node;Lorg/jsoup/nodes/Node;)V#out#0#0').
name_ref(p_out_140, param, 'out', 'Lorg/jsoup/nodes/Node;.removeChild(Lorg/jsoup/nodes/Node;)V#out#0#0').
name_ref(p_out_151, param, 'out', 'Lorg/jsoup/nodes/Node;.outerHtmlHead(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$OutputSettings;)V#out#0#2').
name_ref(p_out_154, param, 'out', 'Lorg/jsoup/nodes/Node;.outerHtmlTail(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$OutputSettings;)V#out#0#2').
name_ref(p_out_157, param, 'out', 'Lorg/jsoup/nodes/Node;.indent(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$OutputSettings;)V#out#0#2').
name_ref(p_out_161, param, 'out', 'Lorg/jsoup/nodes/Node$OuterHtmlVisitor;.(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/Document$OutputSettings;)V#out#0#1').
name_ref(p_out_26, param, 'out', 'Lorg/jsoup/nodes/Attributes;.html(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/Document$OutputSettings;)V#out#0#1').
name_ref(p_parent_159, param, 'parent', 'Lorg/jsoup/nodes/Node;.doClone(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Node;#parent#0#0').
name_ref(p_parent_node_137, param, 'parentNode', 'Lorg/jsoup/nodes/Node;.setParentNode(Lorg/jsoup/nodes/Node;)V#parentNode#0#0').
name_ref(p_parents_42, param, 'parents', 'Lorg/jsoup/nodes/Element;.accumulateParents(Lorg/jsoup/nodes/Element;Lorg/jsoup/select/Elements;)V#parents#0#1').
name_ref(p_pattern_76, param, 'pattern', 'Lorg/jsoup/nodes/Element;.getElementsByAttributeValueMatching(Ljava/lang/String;Ljava/util/regex/Pattern;)Lorg/jsoup/select/Elements;#pattern#0#1').
name_ref(p_pattern_84, param, 'pattern', 'Lorg/jsoup/nodes/Element;.getElementsMatchingText(Ljava/util/regex/Pattern;)Lorg/jsoup/select/Elements;#pattern#0#0').
name_ref(p_pattern_86, param, 'pattern', 'Lorg/jsoup/nodes/Element;.getElementsMatchingOwnText(Ljava/util/regex/Pattern;)Lorg/jsoup/select/Elements;#pattern#0#0').
name_ref(p_regex_78, param, 'regex', 'Lorg/jsoup/nodes/Element;.getElementsByAttributeValueMatching(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/select/Elements;#regex#0#1').
name_ref(p_regex_85, param, 'regex', 'Lorg/jsoup/nodes/Element;.getElementsMatchingText(Ljava/lang/String;)Lorg/jsoup/select/Elements;#regex#0#0').
name_ref(p_regex_87, param, 'regex', 'Lorg/jsoup/nodes/Element;.getElementsMatchingOwnText(Ljava/lang/String;)Lorg/jsoup/select/Elements;#regex#0#0').
name_ref(p_search_58, param, 'search', 'Lorg/jsoup/nodes/Element;.indexInList<E:Lorg/jsoup/nodes/Element;>(Lorg/jsoup/nodes/Element;Ljava/util/List<TE;>;)Ljava/lang/Integer;#search#0#0').
name_ref(p_search_text_82, param, 'searchText', 'Lorg/jsoup/nodes/Element;.getElementsContainingText(Ljava/lang/String;)Lorg/jsoup/select/Elements;#searchText#0#0').
name_ref(p_search_text_83, param, 'searchText', 'Lorg/jsoup/nodes/Element;.getElementsContainingOwnText(Ljava/lang/String;)Lorg/jsoup/select/Elements;#searchText#0#0').
name_ref(p_sibling_index_146, param, 'siblingIndex', 'Lorg/jsoup/nodes/Node;.setSiblingIndex(I)V#siblingIndex#0#0').
name_ref(p_string_13, param, 'string', 'Lorg/jsoup/helper/Validate;.notEmpty(Ljava/lang/String;)V#string#0#0').
name_ref(p_string_14, param, 'string', 'Lorg/jsoup/helper/Validate;.notEmpty(Ljava/lang/String;Ljava/lang/String;)V#string#0#0').
name_ref(p_tag_201, param, 'tag', 'Lorg/jsoup/parser/Tag;.register(Lorg/jsoup/parser/Tag;)Lorg/jsoup/parser/Tag;#tag#0#0').
name_ref(p_tag_31, param, 'tag', 'Lorg/jsoup/nodes/Element;.(Lorg/jsoup/parser/Tag;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V#tag#0#0').
name_ref(p_tag_35, param, 'tag', 'Lorg/jsoup/nodes/Element;.(Lorg/jsoup/parser/Tag;Ljava/lang/String;)V#tag#0#0').
name_ref(p_tag_name_180, param, 'tagName', 'Lorg/jsoup/parser/Tag;.(Ljava/lang/String;)V#tagName#0#0').
name_ref(p_tag_name_182, param, 'tagName', 'Lorg/jsoup/parser/Tag;.valueOf(Ljava/lang/String;)Lorg/jsoup/parser/Tag;#tagName#0#0').
name_ref(p_tag_name_184, param, 'tagName', 'Lorg/jsoup/parser/Tag;.isKnownTag(Ljava/lang/String;)Z#tagName#0#0').
name_ref(p_tag_name_37, param, 'tagName', 'Lorg/jsoup/nodes/Element;.tagName(Ljava/lang/String;)Lorg/jsoup/nodes/Element;#tagName#0#0').
name_ref(p_tag_name_47, param, 'tagName', 'Lorg/jsoup/nodes/Element;.appendElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;#tagName#0#0').
name_ref(p_tag_name_48, param, 'tagName', 'Lorg/jsoup/nodes/Element;.prependElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;#tagName#0#0').
name_ref(p_tag_name_60, param, 'tagName', 'Lorg/jsoup/nodes/Element;.getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;#tagName#0#0').
name_ref(p_text_49, param, 'text', 'Lorg/jsoup/nodes/Element;.appendText(Ljava/lang/String;)Lorg/jsoup/nodes/Element;#text#0#0').
name_ref(p_text_50, param, 'text', 'Lorg/jsoup/nodes/Element;.prependText(Ljava/lang/String;)Lorg/jsoup/nodes/Element;#text#0#0').
name_ref(p_text_94, param, 'text', 'Lorg/jsoup/nodes/Element;.text(Ljava/lang/String;)Lorg/jsoup/nodes/Element;#text#0#0').
name_ref(p_text_node_91, param, 'textNode', 'Lorg/jsoup/nodes/Element;.appendNormalisedText(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/TextNode;)V#textNode#0#1').
name_ref(p_val_4, param, 'val', 'Lorg/jsoup/helper/Validate;.isTrue(Z)V#val#0#0').
name_ref(p_val_5, param, 'val', 'Lorg/jsoup/helper/Validate;.isTrue(ZLjava/lang/String;)V#val#0#0').
name_ref(p_val_7, param, 'val', 'Lorg/jsoup/helper/Validate;.isFalse(Z)V#val#0#0').
name_ref(p_val_8, param, 'val', 'Lorg/jsoup/helper/Validate;.isFalse(ZLjava/lang/String;)V#val#0#0').
name_ref(p_value_100, param, 'value', 'Lorg/jsoup/nodes/Element;.val(Ljava/lang/String;)Lorg/jsoup/nodes/Element;#value#0#0').
name_ref(p_value_20, param, 'value', 'Lorg/jsoup/nodes/Attributes;.put(Ljava/lang/String;Ljava/lang/String;)V#value#0#1').
name_ref(p_value_29, param, 'value', 'Lorg/jsoup/nodes/Attributes$Dataset;.put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#value#0#1').
name_ref(p_value_66, param, 'value', 'Lorg/jsoup/nodes/Element;.getElementsByAttributeValue(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/select/Elements;#value#0#1').
name_ref(p_value_68, param, 'value', 'Lorg/jsoup/nodes/Element;.getElementsByAttributeValueNot(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/select/Elements;#value#0#1').
name_ref(p_value_prefix_70, param, 'valuePrefix', 'Lorg/jsoup/nodes/Element;.getElementsByAttributeValueStarting(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/select/Elements;#valuePrefix#0#1').
name_ref(p_value_suffix_72, param, 'valueSuffix', 'Lorg/jsoup/nodes/Element;.getElementsByAttributeValueEnding(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/select/Elements;#valueSuffix#0#1').
name_ref(f_attributes_114, field, 'attributes', 'Lorg/jsoup/nodes/Node;.attributes)Lorg/jsoup/nodes/Attributes;').
name_ref(f_attributes_17, field, 'attributes', 'Lorg/jsoup/nodes/Attributes;.attributes)Ljava/util/LinkedHashMap<Ljava/lang/String;Lorg/jsoup/nodes/Attribute;>;').
name_ref(f_base_uri_113, field, 'baseUri', 'Lorg/jsoup/nodes/Node;.baseUri)Ljava/lang/String;').
name_ref(f_block_tags_186, field, 'blockTags', 'Lorg/jsoup/parser/Tag;.blockTags)[Ljava/lang/String;').
name_ref(f_can_contain_block_175, field, 'canContainBlock', 'Lorg/jsoup/parser/Tag;.canContainBlock)Z').
name_ref(f_can_contain_inline_176, field, 'canContainInline', 'Lorg/jsoup/parser/Tag;.canContainInline)Z').
name_ref(f_child_nodes_112, field, 'childNodes', 'Lorg/jsoup/nodes/Node;.childNodes)Ljava/util/List<Lorg/jsoup/nodes/Node;>;').
name_ref(f_empty_177, field, 'empty', 'Lorg/jsoup/parser/Tag;.empty)Z').
name_ref(f_empty_tags_188, field, 'emptyTags', 'Lorg/jsoup/parser/Tag;.emptyTags)[Ljava/lang/String;').
name_ref(f_format_as_block_174, field, 'formatAsBlock', 'Lorg/jsoup/parser/Tag;.formatAsBlock)Z').
name_ref(f_format_as_inline_tags_189, field, 'formatAsInlineTags', 'Lorg/jsoup/parser/Tag;.formatAsInlineTags)[Ljava/lang/String;').
name_ref(f_inline_tags_187, field, 'inlineTags', 'Lorg/jsoup/parser/Tag;.inlineTags)[Ljava/lang/String;').
name_ref(f_is_block_173, field, 'isBlock', 'Lorg/jsoup/parser/Tag;.isBlock)Z').
name_ref(f_parent_node_40, field, 'parentNode', 'Lorg/jsoup/nodes/Node;.parentNode)Lorg/jsoup/nodes/Node;').
name_ref(f_preserve_whitespace_179, field, 'preserveWhitespace', 'Lorg/jsoup/parser/Tag;.preserveWhitespace)Z').
name_ref(f_preserve_whitespace_tags_190, field, 'preserveWhitespaceTags', 'Lorg/jsoup/parser/Tag;.preserveWhitespaceTags)[Ljava/lang/String;').
name_ref(f_self_closing_178, field, 'selfClosing', 'Lorg/jsoup/parser/Tag;.selfClosing)Z').
name_ref(f_sibling_index_145, field, 'siblingIndex', 'Lorg/jsoup/nodes/Node;.siblingIndex)I').
name_ref(f_tag_34, field, 'tag', 'Lorg/jsoup/nodes/Element;.tag)Lorg/jsoup/parser/Tag;').
name_ref(f_tag_name_181, field, 'tagName', 'Lorg/jsoup/parser/Tag;.tagName)Ljava/lang/String;').
name_ref(f_tags_172, field, 'tags', 'Lorg/jsoup/parser/Tag;.tags)Ljava/util/Map<Ljava/lang/String;Lorg/jsoup/parser/Tag;>;').
name_ref(m_abs_handles_relative_query_193, method, 'absHandlesRelativeQuery', 'Lorg/jsoup/nodes/NodeTest;.absHandlesRelativeQuery()V').
name_ref(m_abs_url_144, method, 'absUrl', 'Lorg/jsoup/nodes/Node;.absUrl(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_accumulate_parents_53, method, 'accumulateParents', 'Lorg/jsoup/nodes/Element;.accumulateParents(Lorg/jsoup/nodes/Element;Lorg/jsoup/select/Elements;)V').
name_ref(m_add_all_20, method, 'addAll', 'Lorg/jsoup/nodes/Attributes;.addAll(Lorg/jsoup/nodes/Attributes;)V').
name_ref(m_add_children_163, method, 'addChildren', 'Lorg/jsoup/nodes/Node;.addChildren([Lorg/jsoup/nodes/Node;)V').
name_ref(m_add_children_164, method, 'addChildren', 'Lorg/jsoup/nodes/Node;.addChildren(I[Lorg/jsoup/nodes/Node;)V').
name_ref(m_add_class_116, method, 'addClass', 'Lorg/jsoup/nodes/Element;.addClass(Ljava/lang/String;)Lorg/jsoup/nodes/Element;').
name_ref(m_add_sibling_html_155, method, 'addSiblingHtml', 'Lorg/jsoup/nodes/Node;.addSiblingHtml(ILjava/lang/String;)V').
name_ref(m_after_153, method, 'after', 'Lorg/jsoup/nodes/Node;.after(Ljava/lang/String;)Lorg/jsoup/nodes/Node;').
name_ref(m_after_154, method, 'after', 'Lorg/jsoup/nodes/Node;.after(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Node;').
name_ref(m_after_198, method, 'after', 'Lorg/jsoup/nodes/NodeTest;.after()V').
name_ref(m_after_69, method, 'after', 'Lorg/jsoup/nodes/Element;.after(Ljava/lang/String;)Lorg/jsoup/nodes/Element;').
name_ref(m_after_70, method, 'after', 'Lorg/jsoup/nodes/Element;.after(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;').
name_ref(m_append_65, method, 'append', 'Lorg/jsoup/nodes/Element;.append(Ljava/lang/String;)Lorg/jsoup/nodes/Element;').
name_ref(m_append_child_59, method, 'appendChild', 'Lorg/jsoup/nodes/Element;.appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;').
name_ref(m_append_element_61, method, 'appendElement', 'Lorg/jsoup/nodes/Element;.appendElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;').
name_ref(m_append_normalised_text_106, method, 'appendNormalisedText', 'Lorg/jsoup/nodes/Element;.appendNormalisedText(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/TextNode;)V').
name_ref(m_append_text_63, method, 'appendText', 'Lorg/jsoup/nodes/Element;.appendText(Ljava/lang/String;)Lorg/jsoup/nodes/Element;').
name_ref(m_append_whitespace_if_br_107, method, 'appendWhitespaceIfBr', 'Lorg/jsoup/nodes/Element;.appendWhitespaceIfBr(Lorg/jsoup/nodes/Element;Ljava/lang/StringBuilder;)V').
name_ref(m_array_list_130, method, 'ArrayList', 'Ljava/util/ArrayList;.(I)V').
name_ref(m_as_list_22, method, 'asList', 'Lorg/jsoup/nodes/Attributes;.asList()Ljava/util/List<Lorg/jsoup/nodes/Attribute;>;').
name_ref(m_assert_equals_206, method, 'assertEquals', 'Lorg/junit/Assert;.assertEquals(JJ)V').
name_ref(m_attr_135, method, 'attr', 'Lorg/jsoup/nodes/Node;.attr(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_attr_137, method, 'attr', 'Lorg/jsoup/nodes/Node;.attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;').
name_ref(m_attr_49, method, 'attr', 'Lorg/jsoup/nodes/Element;.attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;').
name_ref(m_attributes_136, method, 'attributes', 'Lorg/jsoup/nodes/Node;.attributes()Lorg/jsoup/nodes/Attributes;').
name_ref(m_attributes_42, method, 'Attributes', 'Lorg/jsoup/nodes/Attributes;.()V').
name_ref(m_base_uri_140, method, 'baseUri', 'Lorg/jsoup/nodes/Node;.baseUri()Ljava/lang/String;').
name_ref(m_before_151, method, 'before', 'Lorg/jsoup/nodes/Node;.before(Ljava/lang/String;)Lorg/jsoup/nodes/Node;').
name_ref(m_before_152, method, 'before', 'Lorg/jsoup/nodes/Node;.before(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Node;').
name_ref(m_before_197, method, 'before', 'Lorg/jsoup/nodes/NodeTest;.before()V').
name_ref(m_before_67, method, 'before', 'Lorg/jsoup/nodes/Element;.before(Ljava/lang/String;)Lorg/jsoup/nodes/Element;').
name_ref(m_before_68, method, 'before', 'Lorg/jsoup/nodes/Element;.before(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;').
name_ref(m_can_contain_block_216, method, 'canContainBlock', 'Lorg/jsoup/parser/Tag;.canContainBlock()Z').
name_ref(m_child_54, method, 'child', 'Lorg/jsoup/nodes/Element;.child(I)Lorg/jsoup/nodes/Element;').
name_ref(m_child_node_145, method, 'childNode', 'Lorg/jsoup/nodes/Node;.childNode(I)Lorg/jsoup/nodes/Node;').
name_ref(m_child_nodes_146, method, 'childNodes', 'Lorg/jsoup/nodes/Node;.childNodes()Ljava/util/List<Lorg/jsoup/nodes/Node;>;').
name_ref(m_child_nodes_as_array_147, method, 'childNodesAsArray', 'Lorg/jsoup/nodes/Node;.childNodesAsArray()[Lorg/jsoup/nodes/Node;').
name_ref(m_children_55, method, 'children', 'Lorg/jsoup/nodes/Element;.children()Lorg/jsoup/select/Elements;').
name_ref(m_class_name_112, method, 'className', 'Lorg/jsoup/nodes/Element;.className()Ljava/lang/String;').
name_ref(m_class_names_113, method, 'classNames', 'Lorg/jsoup/nodes/Element;.classNames()Ljava/util/Set<Ljava/lang/String;>;').
name_ref(m_class_names_114, method, 'classNames', 'Lorg/jsoup/nodes/Element;.classNames(Ljava/util/Set<Ljava/lang/String;>;)Lorg/jsoup/nodes/Element;').
name_ref(m_clone_129, method, 'clone', 'Lorg/jsoup/nodes/Element;.clone()Lorg/jsoup/nodes/Element;').
name_ref(m_clone_182, method, 'clone', 'Lorg/jsoup/nodes/Node;.clone()Lorg/jsoup/nodes/Node;').
name_ref(m_clone_29, method, 'clone', 'Lorg/jsoup/nodes/Attributes;.clone()Lorg/jsoup/nodes/Attributes;').
name_ref(m_data_111, method, 'data', 'Lorg/jsoup/nodes/Element;.data()Ljava/lang/String;').
name_ref(m_data_key_38, method, 'dataKey', 'Lorg/jsoup/nodes/Attributes;.dataKey(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_data_nodes_57, method, 'dataNodes', 'Lorg/jsoup/nodes/Element;.dataNodes()Ljava/util/List<Lorg/jsoup/nodes/DataNode;>;').
name_ref(m_dataset_23, method, 'dataset', 'Lorg/jsoup/nodes/Attributes;.dataset()Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;').
name_ref(m_dataset_30, method, 'Dataset', 'Lorg/jsoup/nodes/Attributes$Dataset;.(Lorg/jsoup/nodes/Attributes;)V').
name_ref(m_dataset_50, method, 'dataset', 'Lorg/jsoup/nodes/Element;.dataset()Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;').
name_ref(m_do_clone_183, method, 'doClone', 'Lorg/jsoup/nodes/Node;.doClone(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Node;').
name_ref(m_element_39, method, 'Element', 'Lorg/jsoup/nodes/Element;.(Lorg/jsoup/parser/Tag;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V').
name_ref(m_element_41, method, 'Element', 'Lorg/jsoup/nodes/Element;.(Lorg/jsoup/parser/Tag;Ljava/lang/String;)V').
name_ref(m_element_sibling_index_77, method, 'elementSiblingIndex', 'Lorg/jsoup/nodes/Element;.elementSiblingIndex()Ljava/lang/Integer;').
name_ref(m_empty_71, method, 'empty', 'Lorg/jsoup/nodes/Element;.empty()Lorg/jsoup/nodes/Element;').
name_ref(m_entry_set_31, method, 'entrySet', 'Lorg/jsoup/nodes/Attributes$Dataset;.entrySet()Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;').
name_ref(m_equals_127, method, 'equals', 'Lorg/jsoup/nodes/Element;.equals(Ljava/lang/Object;)Z').
name_ref(m_equals_180, method, 'equals', 'Lorg/jsoup/nodes/Node;.equals(Ljava/lang/Object;)Z').
name_ref(m_equals_225, method, 'equals', 'Lorg/jsoup/parser/Tag;.equals(Ljava/lang/Object;)Z').
name_ref(m_equals_27, method, 'equals', 'Lorg/jsoup/nodes/Attributes;.equals(Ljava/lang/Object;)Z').
name_ref(m_fail_13, method, 'fail', 'Lorg/jsoup/helper/Validate;.fail(Ljava/lang/String;)V').
name_ref(m_first_element_sibling_76, method, 'firstElementSibling', 'Lorg/jsoup/nodes/Element;.firstElementSibling()Lorg/jsoup/nodes/Element;').
name_ref(m_format_as_block_215, method, 'formatAsBlock', 'Lorg/jsoup/parser/Tag;.formatAsBlock()Z').
name_ref(m_get_14, method, 'get', 'Lorg/jsoup/nodes/Attributes;.get(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_get_213, method, 'get', 'Ljava/util/Map;.get(Ljava/lang/Object;)TV;').
name_ref(m_get_all_elements_101, method, 'getAllElements', 'Lorg/jsoup/nodes/Element;.getAllElements()Lorg/jsoup/select/Elements;').
name_ref(m_get_deep_child_158, method, 'getDeepChild', 'Lorg/jsoup/nodes/Node;.getDeepChild(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;').
name_ref(m_get_element_by_id_81, method, 'getElementById', 'Lorg/jsoup/nodes/Element;.getElementById(Ljava/lang/String;)Lorg/jsoup/nodes/Element;').
name_ref(m_get_elements_by_attribute_83, method, 'getElementsByAttribute', 'Lorg/jsoup/nodes/Element;.getElementsByAttribute(Ljava/lang/String;)Lorg/jsoup/select/Elements;').
name_ref(m_get_elements_by_attribute_starting_84, method, 'getElementsByAttributeStarting', 'Lorg/jsoup/nodes/Element;.getElementsByAttributeStarting(Ljava/lang/String;)Lorg/jsoup/select/Elements;').
name_ref(m_get_elements_by_attribute_value_85, method, 'getElementsByAttributeValue', 'Lorg/jsoup/nodes/Element;.getElementsByAttributeValue(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/select/Elements;').
name_ref(m_get_elements_by_attribute_value_containing_89, method, 'getElementsByAttributeValueContaining', 'Lorg/jsoup/nodes/Element;.getElementsByAttributeValueContaining(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/select/Elements;').
name_ref(m_get_elements_by_attribute_value_ending_88, method, 'getElementsByAttributeValueEnding', 'Lorg/jsoup/nodes/Element;.getElementsByAttributeValueEnding(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/select/Elements;').
name_ref(m_get_elements_by_attribute_value_matching_90, method, 'getElementsByAttributeValueMatching', 'Lorg/jsoup/nodes/Element;.getElementsByAttributeValueMatching(Ljava/lang/String;Ljava/util/regex/Pattern;)Lorg/jsoup/select/Elements;').
name_ref(m_get_elements_by_attribute_value_matching_91, method, 'getElementsByAttributeValueMatching', 'Lorg/jsoup/nodes/Element;.getElementsByAttributeValueMatching(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/select/Elements;').
name_ref(m_get_elements_by_attribute_value_not_86, method, 'getElementsByAttributeValueNot', 'Lorg/jsoup/nodes/Element;.getElementsByAttributeValueNot(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/select/Elements;').
name_ref(m_get_elements_by_attribute_value_starting_87, method, 'getElementsByAttributeValueStarting', 'Lorg/jsoup/nodes/Element;.getElementsByAttributeValueStarting(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/select/Elements;').
name_ref(m_get_elements_by_class_82, method, 'getElementsByClass', 'Lorg/jsoup/nodes/Element;.getElementsByClass(Ljava/lang/String;)Lorg/jsoup/select/Elements;').
name_ref(m_get_elements_by_index_equals_94, method, 'getElementsByIndexEquals', 'Lorg/jsoup/nodes/Element;.getElementsByIndexEquals(I)Lorg/jsoup/select/Elements;').
name_ref(m_get_elements_by_index_greater_than_93, method, 'getElementsByIndexGreaterThan', 'Lorg/jsoup/nodes/Element;.getElementsByIndexGreaterThan(I)Lorg/jsoup/select/Elements;').
name_ref(m_get_elements_by_index_less_than_92, method, 'getElementsByIndexLessThan', 'Lorg/jsoup/nodes/Element;.getElementsByIndexLessThan(I)Lorg/jsoup/select/Elements;').
name_ref(m_get_elements_by_tag_80, method, 'getElementsByTag', 'Lorg/jsoup/nodes/Element;.getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;').
name_ref(m_get_elements_containing_own_text_96, method, 'getElementsContainingOwnText', 'Lorg/jsoup/nodes/Element;.getElementsContainingOwnText(Ljava/lang/String;)Lorg/jsoup/select/Elements;').
name_ref(m_get_elements_containing_text_95, method, 'getElementsContainingText', 'Lorg/jsoup/nodes/Element;.getElementsContainingText(Ljava/lang/String;)Lorg/jsoup/select/Elements;').
name_ref(m_get_elements_matching_own_text_100, method, 'getElementsMatchingOwnText', 'Lorg/jsoup/nodes/Element;.getElementsMatchingOwnText(Ljava/lang/String;)Lorg/jsoup/select/Elements;').
name_ref(m_get_elements_matching_own_text_99, method, 'getElementsMatchingOwnText', 'Lorg/jsoup/nodes/Element;.getElementsMatchingOwnText(Ljava/util/regex/Pattern;)Lorg/jsoup/select/Elements;').
name_ref(m_get_elements_matching_text_97, method, 'getElementsMatchingText', 'Lorg/jsoup/nodes/Element;.getElementsMatchingText(Ljava/util/regex/Pattern;)Lorg/jsoup/select/Elements;').
name_ref(m_get_elements_matching_text_98, method, 'getElementsMatchingText', 'Lorg/jsoup/nodes/Element;.getElementsMatchingText(Ljava/lang/String;)Lorg/jsoup/select/Elements;').
name_ref(m_get_name_212, method, 'getName', 'Lorg/jsoup/parser/Tag;.getName()Ljava/lang/String;').
name_ref(m_get_output_settings_175, method, 'getOutputSettings', 'Lorg/jsoup/nodes/Node;.getOutputSettings()Lorg/jsoup/nodes/Document$OutputSettings;').
name_ref(m_handles_abs_on_image_190, method, 'handlesAbsOnImage', 'Lorg/jsoup/nodes/NodeTest;.handlesAbsOnImage()V').
name_ref(m_handles_abs_prefix_189, method, 'handlesAbsPrefix', 'Lorg/jsoup/nodes/NodeTest;.handlesAbsPrefix()V').
name_ref(m_handles_abs_prefix_on_has_attr_191, method, 'handlesAbsPrefixOnHasAttr', 'Lorg/jsoup/nodes/NodeTest;.handlesAbsPrefixOnHasAttr()V').
name_ref(m_handles_base_uri_187, method, 'handlesBaseUri', 'Lorg/jsoup/nodes/NodeTest;.handlesBaseUri()V').
name_ref(m_has_attr_138, method, 'hasAttr', 'Lorg/jsoup/nodes/Node;.hasAttr(Ljava/lang/String;)Z').
name_ref(m_has_class_115, method, 'hasClass', 'Lorg/jsoup/nodes/Element;.hasClass(Ljava/lang/String;)Z').
name_ref(m_has_key_18, method, 'hasKey', 'Lorg/jsoup/nodes/Attributes;.hasKey(Ljava/lang/String;)Z').
name_ref(m_has_next_35, method, 'hasNext', 'Lorg/jsoup/nodes/Attributes$Dataset$DatasetIterator;.hasNext()Z').
name_ref(m_has_text_110, method, 'hasText', 'Lorg/jsoup/nodes/Element;.hasText()Z').
name_ref(m_hash_code_128, method, 'hashCode', 'Lorg/jsoup/nodes/Element;.hashCode()I').
name_ref(m_hash_code_181, method, 'hashCode', 'Lorg/jsoup/nodes/Node;.hashCode()I').
name_ref(m_hash_code_226, method, 'hashCode', 'Lorg/jsoup/parser/Tag;.hashCode()I').
name_ref(m_hash_code_28, method, 'hashCode', 'Lorg/jsoup/nodes/Attributes;.hashCode()I').
name_ref(m_hash_map_209, method, 'HashMap', 'Ljava/util/HashMap;.()V').
name_ref(m_head_142, method, 'head', 'Lorg/jsoup/nodes/Node$4280;.head(Lorg/jsoup/nodes/Node;I)V').
name_ref(m_head_185, method, 'head', 'Lorg/jsoup/nodes/Node$OuterHtmlVisitor;.head(Lorg/jsoup/nodes/Node;I)V').
name_ref(m_head_202, method, 'head', 'Lorg/jsoup/nodes/NodeTest$6999;.head(Lorg/jsoup/nodes/Node;I)V').
name_ref(m_html_123, method, 'html', 'Lorg/jsoup/nodes/Element;.html()Ljava/lang/String;').
name_ref(m_html_124, method, 'html', 'Lorg/jsoup/nodes/Element;.html(Ljava/lang/StringBuilder;)V').
name_ref(m_html_125, method, 'html', 'Lorg/jsoup/nodes/Element;.html(Ljava/lang/String;)Lorg/jsoup/nodes/Element;').
name_ref(m_html_24, method, 'html', 'Lorg/jsoup/nodes/Attributes;.html()Ljava/lang/String;').
name_ref(m_html_25, method, 'html', 'Lorg/jsoup/nodes/Attributes;.html(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/Document$OutputSettings;)V').
name_ref(m_id_48, method, 'id', 'Lorg/jsoup/nodes/Element;.id()Ljava/lang/String;').
name_ref(m_indent_179, method, 'indent', 'Lorg/jsoup/nodes/Node;.indent(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$OutputSettings;)V').
name_ref(m_index_in_list_79, method, 'indexInList', 'Lorg/jsoup/nodes/Element;.indexInList<E:Lorg/jsoup/nodes/Element;>(Lorg/jsoup/nodes/Element;Ljava/util/List<TE;>;)Ljava/lang/Integer;').
name_ref(m_is_block_214, method, 'isBlock', 'Lorg/jsoup/parser/Tag;.isBlock()Z').
name_ref(m_is_block_47, method, 'isBlock', 'Lorg/jsoup/nodes/Element;.isBlock()Z').
name_ref(m_is_data_218, method, 'isData', 'Lorg/jsoup/parser/Tag;.isData()Z').
name_ref(m_is_empty_219, method, 'isEmpty', 'Lorg/jsoup/parser/Tag;.isEmpty()Z').
name_ref(m_is_false_6, method, 'isFalse', 'Lorg/jsoup/helper/Validate;.isFalse(Z)V').
name_ref(m_is_false_7, method, 'isFalse', 'Lorg/jsoup/helper/Validate;.isFalse(ZLjava/lang/String;)V').
name_ref(m_is_inline_217, method, 'isInline', 'Lorg/jsoup/parser/Tag;.isInline()Z').
name_ref(m_is_known_tag_221, method, 'isKnownTag', 'Lorg/jsoup/parser/Tag;.isKnownTag()Z').
name_ref(m_is_known_tag_222, method, 'isKnownTag', 'Lorg/jsoup/parser/Tag;.isKnownTag(Ljava/lang/String;)Z').
name_ref(m_is_self_closing_220, method, 'isSelfClosing', 'Lorg/jsoup/parser/Tag;.isSelfClosing()Z').
name_ref(m_is_true_4, method, 'isTrue', 'Lorg/jsoup/helper/Validate;.isTrue(Z)V').
name_ref(m_is_true_5, method, 'isTrue', 'Lorg/jsoup/helper/Validate;.isTrue(ZLjava/lang/String;)V').
name_ref(m_iterator_21, method, 'iterator', 'Lorg/jsoup/nodes/Attributes;.iterator()Ljava/util/Iterator<Lorg/jsoup/nodes/Attribute;>;').
name_ref(m_iterator_33, method, 'iterator', 'Lorg/jsoup/nodes/Attributes$Dataset$EntrySet;.iterator()Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;').
name_ref(m_last_element_sibling_78, method, 'lastElementSibling', 'Lorg/jsoup/nodes/Element;.lastElementSibling()Lorg/jsoup/nodes/Element;').
name_ref(m_length_11, method, 'length', 'Ljava/lang/String;.length()I').
name_ref(m_literal_abs_prefix_192, method, 'literalAbsPrefix', 'Lorg/jsoup/nodes/NodeTest;.literalAbsPrefix()V').
name_ref(m_next_36, method, 'next', 'Lorg/jsoup/nodes/Attributes$Dataset$DatasetIterator;.next()Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;').
name_ref(m_next_element_sibling_74, method, 'nextElementSibling', 'Lorg/jsoup/nodes/Element;.nextElementSibling()Lorg/jsoup/nodes/Element;').
name_ref(m_next_sibling_168, method, 'nextSibling', 'Lorg/jsoup/nodes/Node;.nextSibling()Lorg/jsoup/nodes/Node;').
name_ref(m_no_null_elements_8, method, 'noNullElements', 'Lorg/jsoup/helper/Validate;.noNullElements([Ljava/lang/Object;)V').
name_ref(m_no_null_elements_9, method, 'noNullElements', 'Lorg/jsoup/helper/Validate;.noNullElements([Ljava/lang/Object;Ljava/lang/String;)V').
name_ref(m_node_132, method, 'Node', 'Lorg/jsoup/nodes/Node;.(Ljava/lang/String;)V').
name_ref(m_node_133, method, 'Node', 'Lorg/jsoup/nodes/Node;.()V').
name_ref(m_node_40, method, 'Node', 'Lorg/jsoup/nodes/Node;.(Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V').
name_ref(m_node_is_not_asibling_of_itself_208, method, 'nodeIsNotASiblingOfItself', 'Lorg/jsoup/nodes/NodeTest;.nodeIsNotASiblingOfItself()V').
name_ref(m_node_name_134, method, 'nodeName', 'Lorg/jsoup/nodes/Node;.nodeName()Ljava/lang/String;').
name_ref(m_node_name_43, method, 'nodeName', 'Lorg/jsoup/nodes/Element;.nodeName()Ljava/lang/String;').
name_ref(m_not_empty_10, method, 'notEmpty', 'Lorg/jsoup/helper/Validate;.notEmpty(Ljava/lang/String;)V').
name_ref(m_not_empty_12, method, 'notEmpty', 'Lorg/jsoup/helper/Validate;.notEmpty(Ljava/lang/String;Ljava/lang/String;)V').
name_ref(m_not_null_2, method, 'notNull', 'Lorg/jsoup/helper/Validate;.notNull(Ljava/lang/Object;)V').
name_ref(m_not_null_3, method, 'notNull', 'Lorg/jsoup/helper/Validate;.notNull(Ljava/lang/Object;Ljava/lang/String;)V').
name_ref(m_orphan_node_returns_null_for_sibling_elements_204, method, 'orphanNodeReturnsNullForSiblingElements', 'Lorg/jsoup/nodes/NodeTest;.orphanNodeReturnsNullForSiblingElements()V').
name_ref(m_outer_html_173, method, 'outerHtml', 'Lorg/jsoup/nodes/Node;.outerHtml()Ljava/lang/String;').
name_ref(m_outer_html_174, method, 'outerHtml', 'Lorg/jsoup/nodes/Node;.outerHtml(Ljava/lang/StringBuilder;)V').
name_ref(m_outer_html_head_121, method, 'outerHtmlHead', 'Lorg/jsoup/nodes/Element;.outerHtmlHead(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$OutputSettings;)V').
name_ref(m_outer_html_head_176, method, 'outerHtmlHead', 'Lorg/jsoup/nodes/Node;.outerHtmlHead(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$OutputSettings;)V').
name_ref(m_outer_html_tail_122, method, 'outerHtmlTail', 'Lorg/jsoup/nodes/Element;.outerHtmlTail(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$OutputSettings;)V').
name_ref(m_outer_html_tail_177, method, 'outerHtmlTail', 'Lorg/jsoup/nodes/Node;.outerHtmlTail(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$OutputSettings;)V').
name_ref(m_outer_html_visitor_184, method, 'OuterHtmlVisitor', 'Lorg/jsoup/nodes/Node$OuterHtmlVisitor;.(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/Document$OutputSettings;)V').
name_ref(m_own_text_104, method, 'ownText', 'Lorg/jsoup/nodes/Element;.ownText()Ljava/lang/String;').
name_ref(m_own_text_105, method, 'ownText', 'Lorg/jsoup/nodes/Element;.ownText(Ljava/lang/StringBuilder;)V').
name_ref(m_owner_document_149, method, 'ownerDocument', 'Lorg/jsoup/nodes/Node;.ownerDocument()Lorg/jsoup/nodes/Document;').
name_ref(m_owner_document_196, method, 'ownerDocument', 'Lorg/jsoup/nodes/NodeTest;.ownerDocument()V').
name_ref(m_parent_148, method, 'parent', 'Lorg/jsoup/nodes/Node;.parent()Lorg/jsoup/nodes/Node;').
name_ref(m_parent_51, method, 'parent', 'Lorg/jsoup/nodes/Element;.parent()Lorg/jsoup/nodes/Element;').
name_ref(m_parents_52, method, 'parents', 'Lorg/jsoup/nodes/Element;.parents()Lorg/jsoup/select/Elements;').
name_ref(m_prepend_66, method, 'prepend', 'Lorg/jsoup/nodes/Element;.prepend(Ljava/lang/String;)Lorg/jsoup/nodes/Element;').
name_ref(m_prepend_child_60, method, 'prependChild', 'Lorg/jsoup/nodes/Element;.prependChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;').
name_ref(m_prepend_element_62, method, 'prependElement', 'Lorg/jsoup/nodes/Element;.prependElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;').
name_ref(m_prepend_text_64, method, 'prependText', 'Lorg/jsoup/nodes/Element;.prependText(Ljava/lang/String;)Lorg/jsoup/nodes/Element;').
name_ref(m_preserve_whitespace_108, method, 'preserveWhitespace', 'Lorg/jsoup/nodes/Element;.preserveWhitespace()Z').
name_ref(m_preserve_whitespace_223, method, 'preserveWhitespace', 'Lorg/jsoup/parser/Tag;.preserveWhitespace()Z').
name_ref(m_previous_element_sibling_75, method, 'previousElementSibling', 'Lorg/jsoup/nodes/Element;.previousElementSibling()Lorg/jsoup/nodes/Element;').
name_ref(m_previous_sibling_169, method, 'previousSibling', 'Lorg/jsoup/nodes/Node;.previousSibling()Lorg/jsoup/nodes/Node;').
name_ref(m_put_15, method, 'put', 'Lorg/jsoup/nodes/Attributes;.put(Ljava/lang/String;Ljava/lang/String;)V').
name_ref(m_put_16, method, 'put', 'Lorg/jsoup/nodes/Attributes;.put(Lorg/jsoup/nodes/Attribute;)V').
name_ref(m_put_229, method, 'put', 'Ljava/util/Map;.put(TK;TV;)TV;').
name_ref(m_put_32, method, 'put', 'Lorg/jsoup/nodes/Attributes$Dataset;.put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_register_228, method, 'register', 'Lorg/jsoup/parser/Tag;.register(Lorg/jsoup/parser/Tag;)Lorg/jsoup/parser/Tag;').
name_ref(m_reindex_children_166, method, 'reindexChildren', 'Lorg/jsoup/nodes/Node;.reindexChildren()V').
name_ref(m_remove_150, method, 'remove', 'Lorg/jsoup/nodes/Node;.remove()V').
name_ref(m_remove_17, method, 'remove', 'Lorg/jsoup/nodes/Attributes;.remove(Ljava/lang/String;)V').
name_ref(m_remove_37, method, 'remove', 'Lorg/jsoup/nodes/Attributes$Dataset$DatasetIterator;.remove()V').
name_ref(m_remove_attr_139, method, 'removeAttr', 'Lorg/jsoup/nodes/Node;.removeAttr(Ljava/lang/String;)Lorg/jsoup/nodes/Node;').
name_ref(m_remove_child_162, method, 'removeChild', 'Lorg/jsoup/nodes/Node;.removeChild(Lorg/jsoup/nodes/Node;)V').
name_ref(m_remove_class_117, method, 'removeClass', 'Lorg/jsoup/nodes/Element;.removeClass(Ljava/lang/String;)Lorg/jsoup/nodes/Element;').
name_ref(m_reparent_child_165, method, 'reparentChild', 'Lorg/jsoup/nodes/Node;.reparentChild(Lorg/jsoup/nodes/Node;)V').
name_ref(m_replace_child_161, method, 'replaceChild', 'Lorg/jsoup/nodes/Node;.replaceChild(Lorg/jsoup/nodes/Node;Lorg/jsoup/nodes/Node;)V').
name_ref(m_replace_with_159, method, 'replaceWith', 'Lorg/jsoup/nodes/Node;.replaceWith(Lorg/jsoup/nodes/Node;)V').
name_ref(m_select_58, method, 'select', 'Lorg/jsoup/nodes/Element;.select(Ljava/lang/String;)Lorg/jsoup/select/Elements;').
name_ref(m_set_base_uri_141, method, 'setBaseUri', 'Lorg/jsoup/nodes/Node;.setBaseUri(Ljava/lang/String;)V').
name_ref(m_set_base_uri_is_recursive_188, method, 'setBaseUriIsRecursive', 'Lorg/jsoup/nodes/NodeTest;.setBaseUriIsRecursive()V').
name_ref(m_set_parent_node_160, method, 'setParentNode', 'Lorg/jsoup/nodes/Node;.setParentNode(Lorg/jsoup/nodes/Node;)V').
name_ref(m_set_self_closing_224, method, 'setSelfClosing', 'Lorg/jsoup/parser/Tag;.setSelfClosing()Lorg/jsoup/parser/Tag;').
name_ref(m_set_sibling_index_171, method, 'setSiblingIndex', 'Lorg/jsoup/nodes/Node;.setSiblingIndex(I)V').
name_ref(m_sibling_elements_73, method, 'siblingElements', 'Lorg/jsoup/nodes/Element;.siblingElements()Lorg/jsoup/select/Elements;').
name_ref(m_sibling_index_170, method, 'siblingIndex', 'Lorg/jsoup/nodes/Node;.siblingIndex()I').
name_ref(m_sibling_nodes_167, method, 'siblingNodes', 'Lorg/jsoup/nodes/Node;.siblingNodes()Ljava/util/List<Lorg/jsoup/nodes/Node;>;').
name_ref(m_size_19, method, 'size', 'Lorg/jsoup/nodes/Attributes;.size()I').
name_ref(m_size_207, method, 'size', 'Ljava/util/List;.size()I').
name_ref(m_size_34, method, 'size', 'Lorg/jsoup/nodes/Attributes$Dataset$EntrySet;.size()I').
name_ref(m_tag_210, method, 'Tag', 'Lorg/jsoup/parser/Tag;.(Ljava/lang/String;)V').
name_ref(m_tag_46, method, 'tag', 'Lorg/jsoup/nodes/Element;.tag()Lorg/jsoup/parser/Tag;').
name_ref(m_tag_name_44, method, 'tagName', 'Lorg/jsoup/nodes/Element;.tagName()Ljava/lang/String;').
name_ref(m_tag_name_45, method, 'tagName', 'Lorg/jsoup/nodes/Element;.tagName(Ljava/lang/String;)Lorg/jsoup/nodes/Element;').
name_ref(m_tail_143, method, 'tail', 'Lorg/jsoup/nodes/Node$4280;.tail(Lorg/jsoup/nodes/Node;I)V').
name_ref(m_tail_186, method, 'tail', 'Lorg/jsoup/nodes/Node$OuterHtmlVisitor;.tail(Lorg/jsoup/nodes/Node;I)V').
name_ref(m_tail_203, method, 'tail', 'Lorg/jsoup/nodes/NodeTest$6999;.tail(Lorg/jsoup/nodes/Node;I)V').
name_ref(m_test_remove_194, method, 'testRemove', 'Lorg/jsoup/nodes/NodeTest;.testRemove()V').
name_ref(m_test_replace_195, method, 'testReplace', 'Lorg/jsoup/nodes/NodeTest;.testReplace()V').
name_ref(m_text_102, method, 'text', 'Lorg/jsoup/nodes/Element;.text()Ljava/lang/String;').
name_ref(m_text_103, method, 'text', 'Lorg/jsoup/nodes/Element;.text(Ljava/lang/StringBuilder;)V').
name_ref(m_text_109, method, 'text', 'Lorg/jsoup/nodes/Element;.text(Ljava/lang/String;)Lorg/jsoup/nodes/Element;').
name_ref(m_text_nodes_56, method, 'textNodes', 'Lorg/jsoup/nodes/Element;.textNodes()Ljava/util/List<Lorg/jsoup/nodes/TextNode;>;').
name_ref(m_to_lower_case_211, method, 'toLowerCase', 'Ljava/lang/String;.toLowerCase()Ljava/lang/String;').
name_ref(m_to_string_126, method, 'toString', 'Lorg/jsoup/nodes/Element;.toString()Ljava/lang/String;').
name_ref(m_to_string_178, method, 'toString', 'Lorg/jsoup/nodes/Node;.toString()Ljava/lang/String;').
name_ref(m_to_string_227, method, 'toString', 'Lorg/jsoup/parser/Tag;.toString()Ljava/lang/String;').
name_ref(m_to_string_26, method, 'toString', 'Lorg/jsoup/nodes/Attributes;.toString()Ljava/lang/String;').
name_ref(m_toggle_class_118, method, 'toggleClass', 'Lorg/jsoup/nodes/Element;.toggleClass(Ljava/lang/String;)Lorg/jsoup/nodes/Element;').
name_ref(m_traverse_172, method, 'traverse', 'Lorg/jsoup/nodes/Node;.traverse(Lorg/jsoup/select/NodeVisitor;)Lorg/jsoup/nodes/Node;').
name_ref(m_traverse_201, method, 'traverse', 'Lorg/jsoup/nodes/NodeTest;.traverse()V').
name_ref(m_trim_131, method, 'trim', 'Ljava/lang/String;.trim()Ljava/lang/String;').
name_ref(m_unwrap_157, method, 'unwrap', 'Lorg/jsoup/nodes/Node;.unwrap()Lorg/jsoup/nodes/Node;').
name_ref(m_unwrap_199, method, 'unwrap', 'Lorg/jsoup/nodes/NodeTest;.unwrap()V').
name_ref(m_unwrap_no_children_200, method, 'unwrapNoChildren', 'Lorg/jsoup/nodes/NodeTest;.unwrapNoChildren()V').
name_ref(m_val_119, method, 'val', 'Lorg/jsoup/nodes/Element;.val()Ljava/lang/String;').
name_ref(m_val_120, method, 'val', 'Lorg/jsoup/nodes/Element;.val(Ljava/lang/String;)Lorg/jsoup/nodes/Element;').
name_ref(m_validate_1, method, 'Validate', 'Lorg/jsoup/helper/Validate;.()V').
name_ref(m_value_of_205, method, 'valueOf', 'Lorg/jsoup/parser/Tag;.valueOf(Ljava/lang/String;)Lorg/jsoup/parser/Tag;').
name_ref(m_wrap_156, method, 'wrap', 'Lorg/jsoup/nodes/Node;.wrap(Ljava/lang/String;)Lorg/jsoup/nodes/Node;').
name_ref(m_wrap_72, method, 'wrap', 'Lorg/jsoup/nodes/Element;.wrap(Ljava/lang/String;)Lorg/jsoup/nodes/Element;').
name_ref(q_can_contain_block_2, q_name, 'tag.canContainBlock', 'Lorg/jsoup/parser/Tag;#1#0#tag:Lorg/jsoup/parser/Tag;.canContainBlock)Z').
name_ref(q_can_contain_block_4, q_name, 'tag.canContainBlock', 'Lorg/jsoup/parser/Tag;#2#0#tag:Lorg/jsoup/parser/Tag;.canContainBlock)Z').
name_ref(q_can_contain_inline_5, q_name, 'tag.canContainInline', 'Lorg/jsoup/parser/Tag;#2#0#tag:Lorg/jsoup/parser/Tag;.canContainInline)Z').
name_ref(q_empty_6, q_name, 'tag.empty', 'Lorg/jsoup/parser/Tag;#2#0#tag:Lorg/jsoup/parser/Tag;.empty)Z').
name_ref(q_format_as_block_3, q_name, 'tag.formatAsBlock', 'Lorg/jsoup/parser/Tag;#1#0#tag:Lorg/jsoup/parser/Tag;.formatAsBlock)Z').
name_ref(q_format_as_block_7, q_name, 'tag.formatAsBlock', 'Lorg/jsoup/parser/Tag;#3#0#tag:Lorg/jsoup/parser/Tag;.formatAsBlock)Z').
name_ref(q_is_block_1, q_name, 'tag.isBlock', 'Lorg/jsoup/parser/Tag;#1#0#tag:Lorg/jsoup/parser/Tag;.isBlock)Z').
name_ref(q_preserve_whitespace_8, q_name, 'tag.preserveWhitespace', 'Lorg/jsoup/parser/Tag;#4#0#tag:Lorg/jsoup/parser/Tag;.preserveWhitespace)Z').
name_ref(q_tag_name_9, q_name, 'tag.tagName', 'Lorg/jsoup/parser/Tag;.register(Lorg/jsoup/parser/Tag;)Lorg/jsoup/parser/Tag;#tag#0#0:Lorg/jsoup/parser/Tag;.tagName)Ljava/lang/String;').

%%% End of Code Facts