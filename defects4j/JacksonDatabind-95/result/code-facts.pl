%%% Code Facts
:- style_check(-discontiguous).
%%% Classes
class(collection_like_type_1, 'com.fasterxml.jackson.databind.type.CollectionLikeType').
class(lrumap_1, 'com.fasterxml.jackson.databind.util.LRUMap').
class(class_stack_1, 'com.fasterxml.jackson.databind.type.ClassStack').
class(class_util_1, 'com.fasterxml.jackson.databind.util.ClassUtil').
class(java_type_1, 'com.fasterxml.jackson.databind.JavaType').
class(collection_type_1, 'com.fasterxml.jackson.databind.type.CollectionType').
class(map_like_type_1, 'com.fasterxml.jackson.databind.type.MapLikeType').
class(type_factory_1, 'com.fasterxml.jackson.databind.type.TypeFactory').
class(simple_type_1, 'com.fasterxml.jackson.databind.type.SimpleType').
class(type_bindings_1, 'com.fasterxml.jackson.databind.type.TypeBindings').
class(map_type_1, 'com.fasterxml.jackson.databind.type.MapType').
class(type_parser_1, 'com.fasterxml.jackson.databind.type.TypeParser').
class(test_type_factory_1, 'com.fasterxml.jackson.databind.type.TestTypeFactory').
class(type_base_1, 'com.fasterxml.jackson.databind.type.TypeBase').

%%% Methods
%collection_like_type_1 - com.fasterxml.jackson.databind.type.CollectionLikeType
method(m_collection_like_type_66, range(collection_like_type_1, 869, 377, 30, 37)).
method(m_collection_like_type_68, range(collection_like_type_1, 1252, 156, 39, 46)).
method(m_construct_69, range(collection_like_type_1, 1414, 319, 48, 55)).
method(m_construct_70, range(collection_like_type_1, 1739, 836, 57, 75)).
method(m_upgrade_from_71, range(collection_like_type_1, 2581, 647, 77, 90)).
method(m__narrow_72, range(collection_like_type_1, 3234, 273, 92, 98)).
method(m_with_content_type_73, range(collection_like_type_1, 3513, 311, 100, 107)).
method(m_with_type_handler_74, range(collection_like_type_1, 3834, 221, 109, 113)).
method(m_with_content_type_handler_75, range(collection_like_type_1, 4061, 278, 115, 121)).
method(m_with_value_handler_76, range(collection_like_type_1, 4345, 221, 123, 127)).
method(m_with_content_value_handler_77, range(collection_like_type_1, 4572, 276, 129, 134)).
method(m_with_handlers_from_78, range(collection_like_type_1, 4854, 393, 136, 147)).
method(m_with_static_typing_79, range(collection_like_type_1, 5257, 315, 149, 157)).
method(m_refine_80, range(collection_like_type_1, 5578, 319, 159, 165)).
method(m_is_container_type_81, range(collection_like_type_1, 6069, 63, 173, 174)).
method(m_is_collection_like_type_82, range(collection_like_type_1, 6138, 68, 176, 177)).
method(m_get_content_type_83, range(collection_like_type_1, 6212, 71, 179, 180)).
method(m_get_content_value_handler_84, range(collection_like_type_1, 6289, 107, 182, 185)).
method(m_get_content_type_handler_85, range(collection_like_type_1, 6402, 105, 187, 190)).
method(m_has_handlers_86, range(collection_like_type_1, 6517, 116, 192, 195)).
method(m_get_erased_signature_87, range(collection_like_type_1, 6639, 129, 197, 200)).
method(m_get_generic_signature_88, range(collection_like_type_1, 6778, 238, 202, 209)).
method(m_build_canonical_name_89, range(collection_like_type_1, 7026, 327, 211, 221)).
method(m_is_true_collection_type_95, range(collection_like_type_1, 7523, 355, 229, 237)).
method(m_equals_96, range(collection_like_type_1, 8052, 329, 245, 254)).
method(m_to_string_98, range(collection_like_type_1, 8387, 146, 256, 260)).
%lrumap_1 - com.fasterxml.jackson.databind.util.LRUMap
method(m_lrumap_263, range(lrumap_1, 1240, 225, 32, 37)).
method(m_put_434, range(lrumap_1, 1471, 352, 39, 49)).
method(m_put_if_absent_337, range(lrumap_1, 1829, 462, 51, 65)).
method(m_get_330, range(lrumap_1, 2382, 51, 68, 68)).
method(m_clear_438, range(lrumap_1, 2439, 37, 70, 70)).
method(m_size_439, range(lrumap_1, 2481, 41, 71, 71)).
method(m_read_object_440, range(lrumap_1, 2962, 120, 87, 89)).
method(m_write_object_441, range(lrumap_1, 3088, 122, 91, 93)).
method(m_read_resolve_442, range(lrumap_1, 3216, 130, 95, 97)).
%class_stack_1 - com.fasterxml.jackson.databind.type.ClassStack
method(m_class_stack_59, range(class_stack_1, 443, 74, 20, 22)).
method(m_class_stack_60, range(class_stack_1, 523, 111, 24, 27)).
method(m_child_61, range(class_stack_1, 640, 166, 29, 34)).
method(m_add_self_reference_62, range(class_stack_1, 812, 363, 36, 46)).
method(m_resolve_self_references_63, range(class_stack_1, 1181, 396, 48, 60)).
method(m_find_64, range(class_stack_1, 1583, 281, 62, 71)).
method(m_to_string_65, range(class_stack_1, 1870, 467, 73, 85)).
%class_util_1 - com.fasterxml.jackson.databind.util.ClassUtil
method(m_has_next_363, range(class_util_1, 1051, 52, 31, 31)).
method(m_next_364, range(class_util_1, 1112, 65, 32, 32)).
method(m_remove_365, range(class_util_1, 1186, 77, 33, 33)).
method(m_empty_iterator_367, range(class_util_1, 1542, 286, 44, 52)).
method(m_find_super_types_368, range(class_util_1, 2020, 1113, 60, 82)).
method(m_find_raw_super_types_369, range(class_util_1, 3139, 426, 84, 94)).
method(m_find_super_classes_370, range(class_util_1, 3571, 822, 96, 118)).
method(m_find_super_types_371, range(class_util_1, 4399, 189, 120, 123)).
method(m_find_super_types_372, range(class_util_1, 4594, 218, 125, 129)).
method(m__add_super_types_373, range(class_util_1, 4818, 706, 131, 149)).
method(m__add_raw_super_types_374, range(class_util_1, 5530, 599, 151, 163)).
method(m_can_be_abean_type_375, range(class_util_1, 6315, 600, 171, 193)).
method(m_is_local_type_376, range(class_util_1, 6925, 1102, 195, 222)).
method(m_get_outer_class_377, range(class_util_1, 8033, 544, 224, 240)).
method(m_is_proxy_type_378, range(class_util_1, 8592, 782, 243, 265)).
method(m_is_concrete_379, range(class_util_1, 9380, 303, 267, 275)).
method(m_is_concrete_380, range(class_util_1, 9689, 170, 277, 281)).
method(m_is_collection_map_or_array_381, range(class_util_1, 9869, 259, 283, 289)).
method(m_get_class_description_382, range(class_util_1, 10316, 507, 297, 310)).
method(m_find_class_383, range(class_util_1, 10994, 1657, 318, 358)).
method(m_has_getter_signature_384, range(class_util_1, 12838, 636, 366, 387)).
method(m_get_root_cause_385, range(class_util_1, 13650, 281, 395, 405)).
method(m_throw_root_cause_386, range(class_util_1, 13937, 474, 407, 420)).
method(m_throw_root_cause_if_ioe_387, range(class_util_1, 14417, 405, 422, 435)).
method(m_throw_as_iae_388, range(class_util_1, 14828, 269, 437, 444)).
method(m_throw_as_iae_389, range(class_util_1, 15103, 498, 446, 460)).
method(m_unwrap_and_throw_as_iae_390, range(class_util_1, 15607, 343, 462, 470)).
method(m_unwrap_and_throw_as_iae_391, range(class_util_1, 15956, 360, 472, 480)).
method(m_close_on_fail_and_throw_as_iae_392, range(class_util_1, 16322, 1081, 482, 510)).
method(m_close_on_fail_and_throw_as_iae_393, range(class_util_1, 17409, 1214, 512, 547)).
method(m_create_instance_394, range(class_util_1, 18794, 1134, 555, 581)).
method(m_find_constructor_395, range(class_util_1, 19934, 933, 583, 603)).
method(m_default_value_396, range(class_util_1, 21051, 936, 611, 642)).
method(m_wrapper_type_397, range(class_util_1, 21993, 993, 644, 675)).
method(m_primitive_type_398, range(class_util_1, 22992, 999, 677, 714)).
method(m_check_and_fix_access_399, range(class_util_1, 24181, 302, 722, 733)).
method(m_check_and_fix_access_400, range(class_util_1, 24489, 1657, 735, 769)).
method(m_find_enum_type_401, range(class_util_1, 26323, 584, 777, 791)).
method(m_find_enum_type_402, range(class_util_1, 26913, 532, 793, 806)).
method(m_find_enum_type_403, range(class_util_1, 27451, 622, 808, 823)).
method(m_find_enum_type_404, range(class_util_1, 28079, 624, 825, 839)).
method(m_find_first_annotated_enum_value_405, range(class_util_1, 28709, 1373, 841, 869)).
method(m_is_jackson_std_impl_406, range(class_util_1, 30266, 468, 877, 886)).
method(m_is_jackson_std_impl_407, range(class_util_1, 30740, 138, 888, 890)).
method(m_is_bogus_class_408, range(class_util_1, 30884, 194, 892, 895)).
method(m_is_non_static_inner_class_409, range(class_util_1, 31084, 172, 897, 900)).
method(m_is_object_or_primitive_410, range(class_util_1, 31262, 154, 902, 907)).
method(m_get_package_name_411, range(class_util_1, 31795, 184, 918, 924)).
method(m_has_enclosing_method_412, range(class_util_1, 31985, 176, 926, 931)).
method(m_get_declared_fields_413, range(class_util_1, 32167, 135, 933, 938)).
method(m_get_declared_methods_414, range(class_util_1, 32308, 138, 940, 945)).
method(m_find_class_annotations_415, range(class_util_1, 32452, 233, 947, 955)).
method(m_get_constructors_416, range(class_util_1, 32691, 595, 957, 973)).
method(m_get_declaring_class_417, range(class_util_1, 33439, 170, 978, 983)).
method(m_get_generic_superclass_338, range(class_util_1, 33615, 138, 985, 990)).
method(m_get_generic_interfaces_339, range(class_util_1, 33759, 140, 992, 997)).
method(m_get_enclosing_class_420, range(class_util_1, 33905, 232, 999, 1005)).
method(m__interfaces_421, range(class_util_1, 34143, 95, 1007, 1009)).
method(m_enum_type_locator_422, range(class_util_1, 34790, 345, 1028, 1033)).
method(m_enum_type_for_423, range(class_util_1, 35145, 358, 1035, 1042)).
method(m_enum_type_for_424, range(class_util_1, 35513, 360, 1044, 1051)).
method(m_get_425, range(class_util_1, 35888, 227, 1053, 1060)).
method(m_locate_field_426, range(class_util_1, 36130, 1121, 1062, 1089)).
method(m_ctor_427, range(class_util_1, 37884, 70, 1114, 1116)).
method(m_get_constructor_428, range(class_util_1, 37964, 76, 1118, 1120)).
method(m_get_param_count_429, range(class_util_1, 38050, 219, 1122, 1129)).
method(m_get_declaring_class_430, range(class_util_1, 38279, 93, 1131, 1133)).
method(m_get_declared_annotations_431, range(class_util_1, 38417, 275, 1136, 1143)).
method(m_get_parameter_annotations_432, range(class_util_1, 38737, 292, 1146, 1153)).
%java_type_1 - com.fasterxml.jackson.databind.JavaType
method(m_java_type_1, range(java_type_1, 2272, 505, 71, 84)).
method(m_java_type_4, range(java_type_1, 2783, 336, 86, 98)).
method(m_with_type_handler_5, range(java_type_1, 3125, 275, 100, 106)).
method(m_with_content_type_handler_6, range(java_type_1, 3406, 378, 108, 115)).
method(m_with_value_handler_7, range(java_type_1, 3790, 285, 117, 123)).
method(m_with_content_value_handler_8, range(java_type_1, 4081, 300, 125, 131)).
method(m_with_handlers_from_9, range(java_type_1, 4387, 611, 133, 151)).
method(m_with_content_type_10, range(java_type_1, 5004, 743, 153, 168)).
method(m_with_static_typing_11, range(java_type_1, 5753, 614, 170, 181)).
method(m_refine_12, range(java_type_1, 6565, 477, 189, 198)).
method(m_forced_narrow_by_13, range(java_type_1, 7052, 901, 200, 223)).
method(m__narrow_14, range(java_type_1, 7959, 84, 225, 226)).
method(m_get_raw_class_15, range(java_type_1, 8235, 68, 234, 235)).
method(m_has_raw_class_16, range(java_type_1, 8309, 305, 237, 243)).
method(m_has_content_type_17, range(java_type_1, 8620, 343, 245, 254)).
method(m_is_type_or_sub_type_of_18, range(java_type_1, 8969, 160, 256, 261)).
method(m_is_abstract_19, range(java_type_1, 9135, 108, 263, 266)).
method(m_is_concrete_20, range(java_type_1, 9249, 514, 268, 283)).
method(m_is_throwable_21, range(java_type_1, 9769, 95, 285, 286)).
method(m_is_array_type_22, range(java_type_1, 9870, 60, 288, 289)).
method(m_is_enum_type_23, range(java_type_1, 9936, 75, 291, 292)).
method(m_is_interface_24, range(java_type_1, 10017, 81, 294, 295)).
method(m_is_primitive_25, range(java_type_1, 10104, 81, 297, 298)).
method(m_is_final_26, range(java_type_1, 10191, 96, 300, 301)).
method(m_is_container_type_27, range(java_type_1, 10293, 190, 303, 308)).
method(m_is_collection_like_type_28, range(java_type_1, 10489, 283, 310, 316)).
method(m_is_map_like_type_29, range(java_type_1, 10778, 285, 318, 324)).
method(m_is_java_lang_object_30, range(java_type_1, 11069, 293, 326, 335)).
method(m_use_static_type_31, range(java_type_1, 11368, 397, 337, 345)).
method(m_has_generic_types_32, range(java_type_1, 11970, 83, 353, 354)).
method(m_get_key_type_33, range(java_type_1, 12059, 59, 356, 357)).
method(m_get_content_type_34, range(java_type_1, 12124, 63, 359, 360)).
method(m_get_referenced_type_35, range(java_type_1, 12193, 79, 362, 363)).
method(m_contained_type_count_36, range(java_type_1, 12278, 55, 365, 366)).
method(m_contained_type_37, range(java_type_1, 12339, 64, 368, 369)).
method(m_contained_type_name_38, range(java_type_1, 12416, 95, 371, 373)).
method(m_get_parameter_source_39, range(java_type_1, 12517, 108, 375, 379)).
method(m_contained_type_or_unknown_40, range(java_type_1, 12861, 657, 388, 406)).
method(m_get_bindings_41, range(java_type_1, 13524, 77, 408, 411)).
method(m_find_super_type_42, range(java_type_1, 13607, 406, 413, 422)).
method(m_get_super_class_43, range(java_type_1, 14019, 187, 424, 430)).
method(m_get_interfaces_44, range(java_type_1, 14212, 200, 432, 438)).
method(m_find_type_parameters_45, range(java_type_1, 14418, 225, 440, 446)).
method(m_get_value_handler_46, range(java_type_1, 14840, 187, 454, 458)).
method(m_get_type_handler_47, range(java_type_1, 15033, 184, 460, 464)).
method(m_get_content_value_handler_48, range(java_type_1, 15223, 89, 466, 469)).
method(m_get_content_type_handler_49, range(java_type_1, 15318, 88, 471, 474)).
method(m_has_value_handler_50, range(java_type_1, 15416, 100, 476, 479)).
method(m_has_handlers_51, range(java_type_1, 15522, 392, 481, 491)).
method(m_get_generic_signature_52, range(java_type_1, 16157, 521, 501, 513)).
method(m_get_generic_signature_53, range(java_type_1, 16684, 242, 515, 522)).
method(m_get_erased_signature_54, range(java_type_1, 16936, 379, 524, 534)).
method(m_get_erased_signature_55, range(java_type_1, 17321, 450, 536, 547)).
method(m_to_string_56, range(java_type_1, 17989, 48, 555, 556)).
method(m_equals_57, range(java_type_1, 18043, 55, 558, 559)).
method(m_hash_code_58, range(java_type_1, 18104, 59, 561, 562)).
%collection_type_1 - com.fasterxml.jackson.databind.type.CollectionType
method(m_collection_type_99, range(collection_type_1, 491, 314, 21, 26)).
method(m_collection_type_100, range(collection_type_1, 811, 125, 28, 33)).
method(m_construct_101, range(collection_type_1, 942, 311, 35, 42)).
method(m_construct_102, range(collection_type_1, 1259, 805, 44, 62)).
method(m__narrow_103, range(collection_type_1, 2070, 236, 64, 69)).
method(m_with_content_type_104, range(collection_type_1, 2312, 307, 71, 78)).
method(m_with_type_handler_105, range(collection_type_1, 2629, 213, 80, 84)).
method(m_with_content_type_handler_106, range(collection_type_1, 2848, 270, 86, 92)).
method(m_with_value_handler_107, range(collection_type_1, 3124, 213, 94, 98)).
method(m_with_content_value_handler_108, range(collection_type_1, 3343, 269, 100, 105)).
method(m_with_static_typing_109, range(collection_type_1, 3618, 307, 107, 115)).
method(m_refine_110, range(collection_type_1, 3931, 315, 117, 123)).
method(m_to_string_111, range(collection_type_1, 4420, 141, 131, 135)).
%map_like_type_1 - com.fasterxml.jackson.databind.type.MapLikeType
method(m_map_like_type_112, range(map_like_type_1, 1038, 441, 35, 43)).
method(m_map_like_type_113, range(map_like_type_1, 1485, 185, 45, 52)).
method(m_upgrade_from_114, range(map_like_type_1, 1676, 683, 54, 70)).
method(m_construct_115, range(map_like_type_1, 2365, 721, 72, 87)).
method(m__narrow_116, range(map_like_type_1, 3092, 278, 89, 96)).
method(m_with_key_type_117, range(map_like_type_1, 3376, 335, 98, 108)).
method(m_with_content_type_118, range(map_like_type_1, 3717, 328, 110, 118)).
method(m_with_type_handler_119, range(map_like_type_1, 4051, 231, 120, 125)).
method(m_with_content_type_handler_120, range(map_like_type_1, 4288, 268, 127, 132)).
method(m_with_value_handler_121, range(map_like_type_1, 4562, 231, 134, 139)).
method(m_with_content_value_handler_122, range(map_like_type_1, 4799, 270, 141, 146)).
method(m_with_handlers_from_123, range(map_like_type_1, 5075, 800, 148, 169)).
method(m_with_static_typing_124, range(map_like_type_1, 5881, 309, 171, 179)).
method(m_refine_125, range(map_like_type_1, 6196, 304, 181, 186)).
method(m_build_canonical_name_126, range(map_like_type_1, 6506, 396, 188, 200)).
method(m_is_container_type_127, range(map_like_type_1, 7070, 75, 208, 211)).
method(m_is_map_like_type_128, range(map_like_type_1, 7151, 73, 213, 216)).
method(m_get_key_type_129, range(map_like_type_1, 7230, 75, 218, 221)).
method(m_get_content_type_130, range(map_like_type_1, 7311, 81, 223, 226)).
method(m_get_content_value_handler_131, range(map_like_type_1, 7398, 105, 228, 231)).
method(m_get_content_type_handler_132, range(map_like_type_1, 7509, 103, 233, 236)).
method(m_has_handlers_133, range(map_like_type_1, 7618, 156, 238, 242)).
method(m_get_erased_signature_134, range(map_like_type_1, 7780, 129, 244, 247)).
method(m_get_generic_signature_135, range(map_like_type_1, 7915, 278, 249, 257)).
method(m_with_key_type_handler_136, range(map_like_type_1, 8363, 250, 265, 269)).
method(m_with_key_value_handler_137, range(map_like_type_1, 8619, 252, 271, 275)).
method(m_is_true_map_type_138, range(map_like_type_1, 8877, 334, 277, 284)).
method(m_to_string_139, range(map_like_type_1, 9385, 171, 292, 296)).
method(m_equals_140, range(map_like_type_1, 9562, 357, 298, 307)).
%type_factory_1 - com.fasterxml.jackson.databind.type.TypeFactory
method(m_type_factory_261, range(type_factory_1, 5171, 49, 144, 146)).
method(m_type_factory_262, range(type_factory_1, 5226, 331, 148, 159)).
method(m_type_factory_265, range(type_factory_1, 5563, 463, 161, 172)).
method(m_with_modifier_266, range(type_factory_1, 6032, 669, 174, 189)).
method(m_with_class_loader_267, range(type_factory_1, 6707, 145, 191, 193)).
method(m_with_cache_268, range(type_factory_1, 6858, 364, 195, 204)).
method(m_default_instance_189, range(type_factory_1, 7228, 267, 206, 211)).
method(m_clear_cache_269, range(type_factory_1, 7501, 509, 213, 225)).
method(m_get_class_loader_270, range(type_factory_1, 8016, 72, 227, 229)).
method(m_unknown_type_271, range(type_factory_1, 8308, 289, 237, 244)).
method(m_raw_class_272, range(type_factory_1, 8603, 547, 246, 258)).
method(m_find_class_273, range(type_factory_1, 9332, 1339, 266, 304)).
method(m_class_for_name_277, range(type_factory_1, 10681, 204, 306, 309)).
method(m_class_for_name_279, range(type_factory_1, 10895, 118, 311, 313)).
method(m__find_primitive_280, range(type_factory_1, 11019, 609, 315, 327)).
method(m_construct_specialized_type_281, range(type_factory_1, 11842, 3757, 335, 412)).
method(m__bindings_for_subtype_282, range(type_factory_1, 15605, 1915, 414, 449)).
method(m__resolve_type_placeholders_283, range(type_factory_1, 17526, 746, 451, 465)).
method(m__verify_and_resolve_placeholders_284, range(type_factory_1, 18278, 1045, 467, 490)).
method(m_construct_generalized_type_285, range(type_factory_1, 19329, 1388, 492, 522)).
method(m_construct_from_canonical_193, range(type_factory_1, 20723, 556, 524, 537)).
method(m_find_type_parameters_287, range(type_factory_1, 21285, 631, 539, 555)).
method(m_find_type_parameters_288, range(type_factory_1, 21922, 301, 557, 563)).
method(m_find_type_parameters_289, range(type_factory_1, 22233, 268, 565, 571)).
method(m_more_specific_type_290, range(type_factory_1, 22507, 870, 573, 601)).
method(m_construct_type_190, range(type_factory_1, 23561, 101, 609, 611)).
method(m_construct_type_292, range(type_factory_1, 23668, 118, 613, 615)).
method(m_construct_type_293, range(type_factory_1, 23796, 1036, 617, 639)).
method(m_construct_type_294, range(type_factory_1, 24838, 326, 641, 648)).
method(m_construct_type_295, range(type_factory_1, 25170, 1221, 650, 677)).
method(m_construct_array_type_296, range(type_factory_1, 26571, 353, 685, 693)).
method(m_construct_array_type_297, range(type_factory_1, 26934, 307, 695, 703)).
method(m_construct_collection_type_298, range(type_factory_1, 27247, 450, 705, 715)).
method(m_construct_collection_type_299, range(type_factory_1, 27703, 589, 717, 729)).
method(m_construct_collection_like_type_300, range(type_factory_1, 28298, 436, 731, 740)).
method(m_construct_collection_like_type_301, range(type_factory_1, 28744, 616, 742, 755)).
method(m_construct_map_type_194, range(type_factory_1, 29366, 631, 757, 773)).
method(m_construct_map_type_303, range(type_factory_1, 30003, 426, 775, 784)).
method(m_construct_map_like_type_304, range(type_factory_1, 30435, 477, 786, 796)).
method(m_construct_map_like_type_305, range(type_factory_1, 30918, 737, 798, 813)).
method(m_construct_simple_type_306, range(type_factory_1, 31661, 327, 815, 822)).
method(m_construct_simple_type_307, range(type_factory_1, 31994, 364, 824, 836)).
method(m_construct_reference_type_308, range(type_factory_1, 32365, 284, 838, 846)).
method(m_unchecked_simple_type_309, range(type_factory_1, 32655, 840, 848, 863)).
method(m_construct_parametric_type_310, range(type_factory_1, 33501, 1657, 865, 899)).
method(m_construct_parametric_type_311, range(type_factory_1, 35164, 1484, 901, 931)).
method(m_construct_parametrized_type_312, range(type_factory_1, 36654, 312, 933, 940)).
method(m_construct_parametrized_type_313, range(type_factory_1, 36972, 316, 942, 949)).
method(m_construct_raw_collection_type_314, range(type_factory_1, 37533, 632, 958, 971)).
method(m_construct_raw_collection_like_type_315, range(type_factory_1, 38171, 634, 973, 986)).
method(m_construct_raw_map_type_316, range(type_factory_1, 38811, 618, 988, 1001)).
method(m_construct_raw_map_like_type_317, range(type_factory_1, 39435, 627, 1003, 1016)).
method(m__map_type_318, range(type_factory_1, 40245, 1016, 1024, 1048)).
method(m__collection_type_321, range(type_factory_1, 41267, 677, 1050, 1064)).
method(m__reference_type_322, range(type_factory_1, 41950, 674, 1066, 1080)).
method(m__construct_simple_323, range(type_factory_1, 42630, 709, 1082, 1100)).
method(m__new_simple_type_324, range(type_factory_1, 43345, 449, 1102, 1113)).
method(m__unknown_type_325, range(type_factory_1, 43800, 404, 1115, 1122)).
method(m__find_well_known_simple_326, range(type_factory_1, 44210, 686, 1124, 1141)).
method(m__from_any_291, range(type_factory_1, 45087, 2362, 1149, 1202)).
method(m__from_class_302, range(type_factory_1, 47455, 3906, 1204, 1290)).
method(m__resolve_super_class_334, range(type_factory_1, 51367, 302, 1292, 1299)).
method(m__resolve_super_interfaces_333, range(type_factory_1, 51675, 533, 1301, 1314)).
method(m__from_well_known_class_335, range(type_factory_1, 52214, 1407, 1316, 1344)).
method(m__from_well_known_interface_336, range(type_factory_1, 53627, 606, 1346, 1360)).
method(m__from_param_type_328, range(type_factory_1, 54239, 1593, 1362, 1401)).
method(m__from_array_type_342, range(type_factory_1, 55838, 262, 1403, 1407)).
method(m__from_variable_329, range(type_factory_1, 56106, 720, 1409, 1426)).
method(m__from_wildcard_344, range(type_factory_1, 56832, 502, 1428, 1436)).
%simple_type_1 - com.fasterxml.jackson.databind.type.SimpleType
method(m_simple_type_157, range(simple_type_1, 676, 452, 24, 34)).
method(m_simple_type_158, range(simple_type_1, 1134, 191, 36, 39)).
method(m_simple_type_161, range(simple_type_1, 1331, 223, 41, 49)).
method(m_simple_type_160, range(simple_type_1, 1560, 304, 51, 57)).
method(m_simple_type_162, range(simple_type_1, 1870, 433, 59, 70)).
method(m_construct_unsafe_163, range(simple_type_1, 2313, 630, 72, 85)).
method(m_construct_164, range(simple_type_1, 2949, 1604, 87, 119)).
method(m__narrow_165, range(simple_type_1, 4559, 2238, 121, 167)).
method(m_with_content_type_166, range(simple_type_1, 6807, 189, 169, 172)).
method(m_with_type_handler_167, range(simple_type_1, 7006, 243, 174, 180)).
method(m_with_content_type_handler_168, range(simple_type_1, 7255, 222, 182, 186)).
method(m_with_value_handler_169, range(simple_type_1, 7483, 244, 188, 194)).
method(m_with_content_value_handler_170, range(simple_type_1, 7737, 227, 196, 200)).
method(m_with_static_typing_171, range(simple_type_1, 7970, 209, 202, 206)).
method(m_refine_172, range(simple_type_1, 8185, 226, 208, 213)).
method(m_build_canonical_name_173, range(simple_type_1, 8417, 548, 215, 234)).
method(m_is_container_type_175, range(simple_type_1, 9133, 64, 242, 243)).
method(m_has_content_type_176, range(simple_type_1, 9207, 63, 245, 246)).
method(m_get_erased_signature_177, range(simple_type_1, 9276, 129, 248, 251)).
method(m_get_generic_signature_178, range(simple_type_1, 9415, 430, 253, 268)).
method(m__build_super_class_179, range(simple_type_1, 10019, 608, 276, 293)).
method(m_to_string_180, range(simple_type_1, 10801, 214, 301, 307)).
method(m_equals_181, range(simple_type_1, 11021, 485, 309, 325)).
%type_bindings_1 - com.fasterxml.jackson.databind.type.TypeBindings
method(m_type_bindings_230, range(type_bindings_1, 1222, 549, 51, 64)).
method(m_empty_bindings_159, range(type_bindings_1, 1777, 72, 66, 68)).
method(m_read_resolve_231, range(type_bindings_1, 1939, 151, 71, 76)).
method(m_create_232, range(type_bindings_1, 2096, 399, 78, 87)).
method(m_create_234, range(type_bindings_1, 2501, 1118, 89, 117)).
method(m_create_235, range(type_bindings_1, 3625, 626, 119, 130)).
method(m_create_236, range(type_bindings_1, 4257, 675, 132, 143)).
method(m_create_if_needed_240, range(type_bindings_1, 4942, 822, 145, 163)).
method(m_create_if_needed_241, range(type_bindings_1, 5774, 1098, 165, 191)).
method(m_with_unbound_variable_242, range(type_bindings_1, 6882, 586, 193, 205)).
method(m_find_bound_type_243, range(type_bindings_1, 7659, 1158, 213, 242)).
method(m_is_empty_245, range(type_bindings_1, 8823, 69, 244, 246)).
method(m_size_174, range(type_bindings_1, 8902, 116, 248, 253)).
method(m_get_bound_name_246, range(type_bindings_1, 9024, 165, 255, 261)).
method(m_get_bound_type_247, range(type_bindings_1, 9195, 167, 263, 269)).
method(m_get_type_parameters_248, range(type_bindings_1, 9368, 256, 271, 280)).
method(m_has_unbound_250, range(type_bindings_1, 9630, 340, 282, 294)).
method(m_as_key_251, range(type_bindings_1, 9976, 394, 296, 306)).
method(m_to_string_253, range(type_bindings_1, 10572, 526, 314, 331)).
method(m_hash_code_254, range(type_bindings_1, 11104, 53, 333, 333)).
method(m_equals_255, range(type_bindings_1, 11163, 520, 335, 351)).
method(m_type_parameter_array_256, range(type_bindings_1, 11891, 72, 359, 361)).
method(m_params_for1_237, range(type_bindings_1, 13616, 642, 391, 409)).
method(m_params_for2_239, range(type_bindings_1, 14272, 435, 411, 423)).
method(m_as_key_252, range(type_bindings_1, 14970, 148, 436, 440)).
method(m_hash_code_258, range(type_bindings_1, 15128, 57, 442, 443)).
method(m_equals_259, range(type_bindings_1, 15195, 763, 445, 466)).
method(m_to_string_260, range(type_bindings_1, 15968, 94, 468, 471)).
%map_type_1 - com.fasterxml.jackson.databind.type.MapType
method(m_map_type_141, range(map_type_1, 459, 346, 20, 25)).
method(m_map_type_142, range(map_type_1, 811, 141, 27, 32)).
method(m_construct_143, range(map_type_1, 958, 316, 34, 41)).
method(m_construct_144, range(map_type_1, 1284, 733, 43, 58)).
method(m__narrow_145, range(map_type_1, 2023, 270, 60, 66)).
method(m_with_type_handler_146, range(map_type_1, 2299, 207, 68, 72)).
method(m_with_content_type_handler_147, range(map_type_1, 2512, 264, 74, 80)).
method(m_with_value_handler_148, range(map_type_1, 2786, 207, 82, 86)).
method(m_with_content_value_handler_149, range(map_type_1, 2999, 262, 88, 93)).
method(m_with_static_typing_150, range(map_type_1, 3267, 320, 95, 103)).
method(m_with_content_type_151, range(map_type_1, 3593, 308, 105, 112)).
method(m_with_key_type_152, range(map_type_1, 3911, 291, 114, 121)).
method(m_refine_153, range(map_type_1, 4208, 316, 123, 129)).
method(m_with_key_type_handler_154, range(map_type_1, 4698, 260, 137, 143)).
method(m_with_key_value_handler_155, range(map_type_1, 4964, 258, 145, 150)).
method(m_to_string_156, range(map_type_1, 5396, 139, 158, 162)).
%type_parser_1 - com.fasterxml.jackson.databind.type.TypeParser
method(m_type_parser_264, range(type_parser_1, 421, 62, 18, 20)).
method(m_with_factory_345, range(type_parser_1, 489, 147, 22, 27)).
method(m_parse_286, range(type_parser_1, 642, 364, 29, 38)).
method(m_parse_type_348, range(type_parser_1, 1012, 839, 40, 60)).
method(m_parse_types_352, range(type_parser_1, 1857, 613, 62, 76)).
method(m_find_class_350, range(type_parser_1, 2476, 393, 78, 88)).
method(m__problem_356, range(type_parser_1, 2875, 269, 90, 94)).
method(m_my_tokenizer_346, range(type_parser_1, 3332, 117, 104, 107)).
method(m_has_more_tokens_349, range(type_parser_1, 3459, 130, 109, 112)).
method(m_next_token_351, range(type_parser_1, 3607, 386, 114, 126)).
method(m_push_back_353, range(type_parser_1, 4003, 164, 128, 131)).
method(m_get_all_input_361, range(type_parser_1, 4177, 46, 133, 133)).
method(m_get_remaining_input_362, range(type_parser_1, 4311, 70, 135, 135)).
%test_type_factory_1 - com.fasterxml.jackson.databind.type.TestTypeFactory
method(m_get_foobar_182, range(test_type_factory_1, 1949, 63, 57, 57)).
method(m_test_simple_types_183, range(test_type_factory_1, 2609, 760, 84, 107)).
method(m_test_arrays_184, range(test_type_factory_1, 3375, 642, 109, 126)).
method(m_test_properties_185, range(test_type_factory_1, 4094, 488, 129, 141)).
method(m_test_iterator_186, range(test_type_factory_1, 4592, 446, 143, 152)).
method(m_test_parametric_types_187, range(test_type_factory_1, 5044, 2252, 154, 204)).
method(m_test_canonical_names_188, range(test_type_factory_1, 7302, 1998, 206, 250)).
method(m_test_canonical_with_spaces_195, range(test_type_factory_1, 9329, 602, 253, 264)).
method(m_test_collections_196, range(test_type_factory_1, 10137, 1035, 272, 294)).
method(m_test_collection_types_refined_197, range(test_type_factory_1, 11199, 881, 297, 315)).
method(m_test_maps_198, range(test_type_factory_1, 12283, 1681, 323, 357)).
method(m_test_map_types_refined_199, range(test_type_factory_1, 13987, 1863, 360, 392)).
method(m_test_map_types_raw_200, range(test_type_factory_1, 15856, 360, 394, 401)).
method(m_test_map_types_advanced_201, range(test_type_factory_1, 16222, 854, 403, 421)).
method(m_test_map_types_sneaky_202, range(test_type_factory_1, 17082, 475, 423, 434)).
method(m_test_sneaky_field_types_203, range(test_type_factory_1, 17571, 896, 436, 454)).
method(m_test_sneaky_bean_properties_204, range(test_type_factory_1, 18481, 774, 456, 474)).
method(m_test_sneaky_self_refs_205, range(test_type_factory_1, 19261, 228, 476, 481)).
method(m_test_atomic_array_ref_parameters_206, range(test_type_factory_1, 19689, 418, 489, 497)).
method(m_test_map_entry_resolution_207, range(test_type_factory_1, 20203, 546, 501, 511)).
method(m_test_raw_collections_208, range(test_type_factory_1, 20946, 749, 519, 533)).
method(m_test_raw_maps_209, range(test_type_factory_1, 21701, 903, 535, 553)).
method(m_test_more_specific_type_210, range(test_type_factory_1, 22783, 805, 561, 580)).
method(m_test_cache_clearing_211, range(test_type_factory_1, 23616, 379, 583, 592)).
method(m_test_raw_map_type_212, range(test_type_factory_1, 24028, 309, 595, 602)).
%type_base_1 - com.fasterxml.jackson.databind.type.TypeBase
method(m_type_base_67, range(type_base_1, 1061, 472, 38, 49)).
method(m_type_base_213, range(type_base_1, 1539, 298, 51, 61)).
method(m_to_canonical_214, range(type_base_1, 1843, 187, 63, 71)).
method(m_build_canonical_name_215, range(type_base_1, 2036, 78, 73, 75)).
method(m_get_generic_signature_216, range(type_base_1, 2120, 82, 77, 78)).
method(m_get_erased_signature_217, range(type_base_1, 2208, 81, 80, 81)).
method(m_get_bindings_218, range(type_base_1, 2295, 81, 83, 86)).
method(m_contained_type_count_219, range(type_base_1, 2382, 86, 88, 91)).
method(m_contained_type_220, range(type_base_1, 2474, 108, 93, 96)).
method(m_contained_type_name_221, range(type_base_1, 2588, 126, 98, 102)).
method(m_get_super_class_222, range(type_base_1, 2720, 81, 104, 107)).
method(m_get_interfaces_223, range(type_base_1, 2807, 397, 109, 121)).
method(m_find_super_type_224, range(type_base_1, 3210, 796, 123, 146)).
method(m_find_type_parameters_225, range(type_base_1, 4012, 254, 148, 156)).
method(m_serialize_with_type_226, range(type_base_1, 4464, 336, 164, 172)).
method(m_serialize_227, range(type_base_1, 4806, 191, 174, 179)).
method(m__class_signature_228, range(type_base_1, 5186, 1596, 187, 236)).
method(m__bogus_super_class_229, range(type_base_1, 6788, 580, 238, 253)).

%%% Blocks
%collection_like_type_1 - com.fasterxml.jackson.databind.type.CollectionLikeType
block(collection_like_type_1_block1, block, collection_like_type_1_code3, body, range(collection_like_type_1, 1083, 163, 33, 37)).
block(collection_like_type_1_block2, block, collection_like_type_1_code4, body, range(collection_like_type_1, 6560, 73, 193, 195)).
block(collection_like_type_1_block3, block, collection_like_type_1_code5, body, range(collection_like_type_1, 7078, 275, 212, 221)).
block(collection_like_type_1_block4, block, collection_like_type_1_stmt6, then_statement, range(collection_like_type_1, 7199, 118, 215, 219)).
block(collection_like_type_1_block5, block, collection_like_type_1_code9, body, range(collection_like_type_1, 8102, 279, 247, 254)).
%lrumap_1 - com.fasterxml.jackson.databind.util.LRUMap
block(lrumap_1_block1, block, lrumap_1_code3, body, range(lrumap_1, 1294, 171, 33, 37)).
block(lrumap_1_block2, block, lrumap_1_code8, body, range(lrumap_1, 1900, 391, 54, 65)).
block(lrumap_1_block3, block, lrumap_1_stmt3, then_statement, range(lrumap_1, 2084, 156, 57, 63)).
block(lrumap_1_block4, block, lrumap_1_code9, body, range(lrumap_1, 2407, 26, 68, 68)).
%class_stack_1 - com.fasterxml.jackson.databind.type.ClassStack
block(class_stack_1_block1, block, class_stack_1_code3, body, range(class_stack_1, 480, 37, 20, 22)).
block(class_stack_1_block2, block, class_stack_1_code4, body, range(class_stack_1, 576, 58, 24, 27)).
block(class_stack_1_block3, block, class_stack_1_code12, body, range(class_stack_1, 757, 49, 32, 34)).
block(class_stack_1_block4, block, class_stack_1_code14, body, range(class_stack_1, 1411, 166, 54, 60)).
block(class_stack_1_block5, block, class_stack_1_stmt5, then_statement, range(class_stack_1, 1444, 127, 55, 59)).
block(class_stack_1_block6, block, class_stack_1_code15, body, range(class_stack_1, 1624, 240, 63, 71)).
block(class_stack_1_block7, block, class_stack_1_stmt8, body, range(class_stack_1, 1743, 94, 65, 69)).
block(class_stack_1_block8, block, class_stack_1_stmt9, then_statement, range(class_stack_1, 1783, 44, 66, 68)).
%class_util_1 - com.fasterxml.jackson.databind.util.ClassUtil
block(class_util_1_block1, block, class_util_1_code45, body, range(class_util_1, 33703, 50, 988, 990)).
block(class_util_1_block2, block, class_util_1_code46, body, range(class_util_1, 33849, 50, 995, 997)).
%java_type_1 - com.fasterxml.jackson.databind.JavaType
block(java_type_1_block1, block, java_type_1_code3, body, range(java_type_1, 2585, 192, 78, 84)).
block(java_type_1_block2, block, java_type_1_code4, body, range(java_type_1, 15841, 73, 489, 491)).
block(java_type_1_block3, block, java_type_1_code5, body, range(java_type_1, 18146, 17, 562, 562)).
%collection_type_1 - com.fasterxml.jackson.databind.type.CollectionType
block(collection_type_1_block1, block, collection_type_1_code3, body, range(collection_type_1, 699, 106, 24, 26)).
block(collection_type_1_block2, block, collection_type_1_code4, body, range(collection_type_1, 1127, 126, 39, 42)).
block(collection_type_1_block3, block, collection_type_1_code6, body, range(collection_type_1, 4070, 176, 119, 123)).
%map_like_type_1 - com.fasterxml.jackson.databind.type.MapLikeType
block(map_like_type_1_block1, block, map_like_type_1_code3, body, range(map_like_type_1, 1271, 208, 38, 43)).
block(map_like_type_1_block2, block, map_like_type_1_code4, body, range(map_like_type_1, 6558, 344, 189, 200)).
block(map_like_type_1_block3, block, map_like_type_1_stmt6, then_statement, range(map_like_type_1, 6675, 191, 192, 198)).
block(map_like_type_1_block4, block, map_like_type_1_code8, body, range(map_like_type_1, 7661, 113, 239, 242)).
block(map_like_type_1_block5, block, map_like_type_1_code9, body, range(map_like_type_1, 9608, 311, 299, 307)).
%type_factory_1 - com.fasterxml.jackson.databind.type.TypeFactory
block(type_factory_1_block1, block, type_factory_1_code152, body, range(type_factory_1, 5193, 27, 144, 146)).
block(type_factory_1_block2, block, type_factory_1_code153, body, range(type_factory_1, 5317, 240, 151, 159)).
block(type_factory_1_block3, block, type_factory_1_stmt2, then_statement, range(type_factory_1, 5350, 73, 152, 154)).
block(type_factory_1_block4, block, type_factory_1_code165, body, range(type_factory_1, 7475, 20, 211, 211)).
block(type_factory_1_block5, block, type_factory_1_code169, body, range(type_factory_1, 8052, 36, 227, 229)).
block(type_factory_1_block6, block, type_factory_1_code170, body, range(type_factory_1, 9630, 1041, 273, 304)).
block(type_factory_1_block7, block, type_factory_1_stmt10, then_statement, range(type_factory_1, 9672, 141, 274, 279)).
block(type_factory_1_block8, block, type_factory_1_stmt13, then_statement, range(type_factory_1, 10000, 81, 283, 285)).
block(type_factory_1_block9, block, type_factory_1_stmt15, then_statement, range(type_factory_1, 10110, 191, 286, 292)).
block(type_factory_1_block10, block, type_factory_1_stmt16, body, range(type_factory_1, 10128, 77, 287, 289)).
block(type_factory_1_block11, block, type_factory_1_code175, body, range(type_factory_1, 10831, 54, 307, 309)).
block(type_factory_1_block12, block, type_factory_1_code176, body, range(type_factory_1, 21231, 48, 535, 537)).
block(type_factory_1_block13, block, type_factory_1_code177, body, range(type_factory_1, 23602, 60, 609, 611)).
block(type_factory_1_block14, block, type_factory_1_code178, body, range(type_factory_1, 29679, 318, 764, 773)).
block(type_factory_1_block15, block, type_factory_1_stmt21, then_statement, range(type_factory_1, 29748, 51, 766, 768)).
block(type_factory_1_block16, block, type_factory_1_stmt21, else_statement, range(type_factory_1, 29805, 135, 768, 771)).
block(type_factory_1_block17, block, type_factory_1_code180, body, range(type_factory_1, 30302, 127, 781, 784)).
block(type_factory_1_block18, block, type_factory_1_code182, body, range(type_factory_1, 40378, 883, 1026, 1048)).
block(type_factory_1_block19, block, type_factory_1_stmt26, then_statement, range(type_factory_1, 40554, 51, 1030, 1032)).
block(type_factory_1_block20, block, type_factory_1_stmt26, else_statement, range(type_factory_1, 40611, 553, 1032, 1046)).
block(type_factory_1_block21, block, type_factory_1_code188, body, range(type_factory_1, 41407, 537, 1052, 1064)).
block(type_factory_1_block22, block, type_factory_1_stmt34, then_statement, range(type_factory_1, 41569, 44, 1056, 1058)).
block(type_factory_1_block23, block, type_factory_1_stmt35, then_statement, range(type_factory_1, 41647, 47, 1058, 1060)).
block(type_factory_1_block24, block, type_factory_1_code193, body, range(type_factory_1, 43712, 82, 1111, 1113)).
block(type_factory_1_block25, block, type_factory_1_code195, body, range(type_factory_1, 44509, 387, 1131, 1141)).
block(type_factory_1_block26, block, type_factory_1_stmt39, then_statement, range(type_factory_1, 44542, 177, 1132, 1136)).
block(type_factory_1_block27, block, type_factory_1_stmt39, else_statement, range(type_factory_1, 44725, 144, 1136, 1139)).
block(type_factory_1_block28, block, type_factory_1_code196, body, range(type_factory_1, 45377, 2072, 1155, 1202)).
block(type_factory_1_block29, block, type_factory_1_stmt45, then_statement, range(type_factory_1, 45472, 174, 1159, 1162)).
block(type_factory_1_block30, block, type_factory_1_stmt47, then_statement, range(type_factory_1, 45747, 97, 1164, 1166)).
block(type_factory_1_block31, block, type_factory_1_stmt49, then_statement, range(type_factory_1, 45888, 133, 1167, 1170)).
block(type_factory_1_block32, block, type_factory_1_stmt50, then_statement, range(type_factory_1, 46073, 96, 1171, 1173)).
block(type_factory_1_block33, block, type_factory_1_stmt51, then_statement, range(type_factory_1, 46220, 94, 1174, 1176)).
block(type_factory_1_block34, block, type_factory_1_stmt53, then_statement, range(type_factory_1, 46828, 588, 1186, 1200)).
block(type_factory_1_block35, block, type_factory_1_code213, body, range(type_factory_1, 47677, 3684, 1209, 1290)).
block(type_factory_1_block36, block, type_factory_1_stmt56, then_statement, range(type_factory_1, 47831, 38, 1212, 1214)).
block(type_factory_1_block37, block, type_factory_1_stmt58, then_statement, range(type_factory_1, 48020, 38, 1217, 1219)).
block(type_factory_1_block38, block, type_factory_1_stmt58, else_statement, range(type_factory_1, 48064, 54, 1219, 1221)).
block(type_factory_1_block39, block, type_factory_1_stmt62, then_statement, range(type_factory_1, 48215, 38, 1223, 1225)).
block(type_factory_1_block40, block, type_factory_1_stmt64, then_statement, range(type_factory_1, 48335, 58, 1228, 1230)).
block(type_factory_1_block41, block, type_factory_1_stmt64, else_statement, range(type_factory_1, 48399, 486, 1230, 1240)).
block(type_factory_1_block42, block, type_factory_1_stmt67, then_statement, range(type_factory_1, 48484, 262, 1232, 1237)).
block(type_factory_1_block43, block, type_factory_1_stmt69, then_statement, range(type_factory_1, 48962, 140, 1243, 1246)).
block(type_factory_1_block44, block, type_factory_1_stmt69, else_statement, range(type_factory_1, 49108, 1865, 1246, 1282)).
block(type_factory_1_block45, block, type_factory_1_stmt70, then_statement, range(type_factory_1, 49316, 137, 1252, 1255)).
block(type_factory_1_block46, block, type_factory_1_stmt70, else_statement, range(type_factory_1, 49459, 263, 1255, 1259)).
block(type_factory_1_block47, block, type_factory_1_stmt75, then_statement, range(type_factory_1, 49864, 167, 1262, 1265)).
block(type_factory_1_block48, block, type_factory_1_stmt76, then_statement, range(type_factory_1, 50219, 107, 1268, 1270)).
block(type_factory_1_block49, block, type_factory_1_stmt78, then_statement, range(type_factory_1, 50444, 519, 1272, 1281)).
block(type_factory_1_block50, block, type_factory_1_stmt80, then_statement, range(type_factory_1, 50586, 363, 1274, 1280)).
block(type_factory_1_block51, block, type_factory_1_stmt82, then_statement, range(type_factory_1, 50739, 192, 1276, 1279)).
block(type_factory_1_block52, block, type_factory_1_stmt85, then_statement, range(type_factory_1, 51250, 82, 1286, 1288)).
block(type_factory_1_block53, block, type_factory_1_code220, body, range(type_factory_1, 51476, 193, 1293, 1299)).
block(type_factory_1_block54, block, type_factory_1_stmt89, then_statement, range(type_factory_1, 51569, 36, 1295, 1297)).
block(type_factory_1_block55, block, type_factory_1_code223, body, range(type_factory_1, 51791, 417, 1302, 1314)).
block(type_factory_1_block56, block, type_factory_1_stmt92, then_statement, range(type_factory_1, 51905, 40, 1304, 1306)).
block(type_factory_1_block57, block, type_factory_1_stmt96, body, range(type_factory_1, 52065, 112, 1309, 1312)).
block(type_factory_1_block58, block, type_factory_1_code241, body, range(type_factory_1, 52605, 1016, 1323, 1344)).
block(type_factory_1_block59, block, type_factory_1_stmt100, then_statement, range(type_factory_1, 52637, 64, 1324, 1326)).
block(type_factory_1_block60, block, type_factory_1_stmt101, then_statement, range(type_factory_1, 52826, 88, 1329, 1331)).
block(type_factory_1_block61, block, type_factory_1_stmt103, then_statement, range(type_factory_1, 52956, 95, 1332, 1334)).
block(type_factory_1_block62, block, type_factory_1_stmt105, then_statement, range(type_factory_1, 53144, 94, 1336, 1338)).
block(type_factory_1_block63, block, type_factory_1_code245, body, range(type_factory_1, 53796, 437, 1348, 1360)).
block(type_factory_1_block64, block, type_factory_1_stmt108, body, range(type_factory_1, 54011, 195, 1353, 1358)).
block(type_factory_1_block65, block, type_factory_1_stmt110, then_statement, range(type_factory_1, 54150, 46, 1355, 1357)).
block(type_factory_1_block66, block, type_factory_1_code253, body, range(type_factory_1, 54475, 1357, 1368, 1401)).
block(type_factory_1_block67, block, type_factory_1_stmt114, then_statement, range(type_factory_1, 54784, 46, 1374, 1376)).
block(type_factory_1_block68, block, type_factory_1_stmt116, then_statement, range(type_factory_1, 54870, 52, 1377, 1379)).
block(type_factory_1_block69, block, type_factory_1_stmt118, then_statement, range(type_factory_1, 54957, 47, 1380, 1382)).
block(type_factory_1_block70, block, type_factory_1_stmt121, then_statement, range(type_factory_1, 55451, 53, 1391, 1393)).
block(type_factory_1_block71, block, type_factory_1_stmt121, else_statement, range(type_factory_1, 55510, 258, 1393, 1399)).
block(type_factory_1_block72, block, type_factory_1_stmt123, body, range(type_factory_1, 55615, 83, 1395, 1397)).
block(type_factory_1_block73, block, type_factory_1_code276, body, range(type_factory_1, 56207, 619, 1410, 1426)).
block(type_factory_1_block74, block, type_factory_1_stmt129, then_statement, range(type_factory_1, 56380, 36, 1414, 1416)).
block(type_factory_1_block75, block, type_factory_1_stmt131, then_statement, range(type_factory_1, 56620, 48, 1419, 1421)).
%simple_type_1 - com.fasterxml.jackson.databind.type.SimpleType
block(simple_type_1_block1, block, simple_type_1_code3, body, range(simple_type_1, 1060, 68, 32, 34)).
block(simple_type_1_block2, block, simple_type_1_code4, body, range(simple_type_1, 1247, 78, 37, 39)).
block(simple_type_1_block3, block, simple_type_1_code5, body, range(simple_type_1, 1748, 116, 54, 57)).
block(simple_type_1_block4, block, simple_type_1_code6, body, range(simple_type_1, 8324, 87, 210, 213)).
block(simple_type_1_block5, block, simple_type_1_code7, body, range(simple_type_1, 8473, 492, 217, 234)).
block(simple_type_1_block6, block, simple_type_1_stmt8, then_statement, range(simple_type_1, 8628, 301, 222, 232)).
block(simple_type_1_block7, block, simple_type_1_code14, body, range(simple_type_1, 11071, 435, 311, 325)).
%type_bindings_1 - com.fasterxml.jackson.databind.type.TypeBindings
block(type_bindings_1_block1, block, type_bindings_1_code32, body, range(type_bindings_1, 1297, 474, 52, 64)).
block(type_bindings_1_block2, block, type_bindings_1_stmt3, then_statement, range(type_bindings_1, 1451, 127, 55, 57)).
block(type_bindings_1_block3, block, type_bindings_1_stmt5, body, range(type_bindings_1, 1657, 50, 59, 61)).
block(type_bindings_1_block4, block, type_bindings_1_code38, body, range(type_bindings_1, 1820, 29, 66, 68)).
block(type_bindings_1_block5, block, type_bindings_1_code39, body, range(type_bindings_1, 2300, 195, 83, 87)).
block(type_bindings_1_block6, block, type_bindings_1_code44, body, range(type_bindings_1, 2578, 1041, 90, 117)).
block(type_bindings_1_block7, block, type_bindings_1_stmt12, then_statement, range(type_bindings_1, 2607, 41, 91, 93)).
block(type_bindings_1_block8, block, type_bindings_1_code45, body, range(type_bindings_1, 3703, 548, 120, 130)).
block(type_bindings_1_block9, block, type_bindings_1_stmt18, then_statement, range(type_bindings_1, 3934, 191, 124, 127)).
block(type_bindings_1_block10, block, type_bindings_1_code58, body, range(type_bindings_1, 4354, 578, 133, 143)).
block(type_bindings_1_block11, block, type_bindings_1_stmt22, then_statement, range(type_bindings_1, 4585, 192, 137, 140)).
block(type_bindings_1_block12, block, type_bindings_1_code71, body, range(type_bindings_1, 7188, 280, 199, 205)).
block(type_bindings_1_block13, block, type_bindings_1_code79, body, range(type_bindings_1, 7820, 997, 217, 242)).
block(type_bindings_1_block14, block, type_bindings_1_stmt28, body, range(type_bindings_1, 7881, 909, 218, 240)).
block(type_bindings_1_block15, block, type_bindings_1_stmt29, then_statement, range(type_bindings_1, 7923, 857, 219, 239)).
block(type_bindings_1_block16, block, type_bindings_1_stmt31, then_statement, range(type_bindings_1, 8021, 719, 221, 237)).
block(type_bindings_1_block17, block, type_bindings_1_code86, body, range(type_bindings_1, 8848, 44, 244, 246)).
block(type_bindings_1_block18, block, type_bindings_1_code87, body, range(type_bindings_1, 8980, 38, 251, 253)).
block(type_bindings_1_block19, block, type_bindings_1_code88, body, range(type_bindings_1, 9491, 133, 275, 280)).
block(type_bindings_1_block20, block, type_bindings_1_stmt36, then_statement, range(type_bindings_1, 9525, 55, 276, 278)).
block(type_bindings_1_block21, block, type_bindings_1_code89, body, range(type_bindings_1, 9703, 267, 285, 294)).
block(type_bindings_1_block22, block, type_bindings_1_stmt38, then_statement, range(type_bindings_1, 9744, 198, 286, 292)).
block(type_bindings_1_block23, block, type_bindings_1_code90, body, range(type_bindings_1, 10181, 189, 302, 306)).
block(type_bindings_1_block24, block, type_bindings_1_code181, body, range(type_bindings_1, 13688, 570, 392, 409)).
block(type_bindings_1_block25, block, type_bindings_1_stmt41, then_statement, range(type_bindings_1, 13738, 55, 393, 395)).
block(type_bindings_1_block26, block, type_bindings_1_stmt43, then_statement, range(type_bindings_1, 13836, 49, 396, 398)).
block(type_bindings_1_block27, block, type_bindings_1_stmt45, then_statement, range(type_bindings_1, 13933, 55, 399, 401)).
block(type_bindings_1_block28, block, type_bindings_1_stmt47, then_statement, range(type_bindings_1, 14039, 58, 402, 404)).
block(type_bindings_1_block29, block, type_bindings_1_stmt49, then_statement, range(type_bindings_1, 14144, 53, 405, 407)).
block(type_bindings_1_block30, block, type_bindings_1_code187, body, range(type_bindings_1, 14344, 363, 412, 423)).
block(type_bindings_1_block31, block, type_bindings_1_stmt52, then_statement, range(type_bindings_1, 14387, 48, 413, 415)).
block(type_bindings_1_block32, block, type_bindings_1_stmt54, then_statement, range(type_bindings_1, 14481, 53, 416, 418)).
block(type_bindings_1_block33, block, type_bindings_1_stmt55, then_statement, range(type_bindings_1, 14586, 60, 419, 421)).
block(type_bindings_1_block34, block, type_bindings_1_code192, body, range(type_bindings_1, 15026, 92, 436, 440)).
block(type_bindings_1_block35, block, type_bindings_1_code204, body, range(type_bindings_1, 15168, 17, 443, 443)).
block(type_bindings_1_block36, block, type_bindings_1_code207, body, range(type_bindings_1, 15245, 713, 446, 466)).
block(type_bindings_1_block37, block, type_bindings_1_stmt68, then_statement, range(type_bindings_1, 15488, 434, 452, 464)).
block(type_bindings_1_block38, block, type_bindings_1_stmt71, then_statement, range(type_bindings_1, 15648, 260, 456, 463)).
block(type_bindings_1_block39, block, type_bindings_1_stmt72, body, range(type_bindings_1, 15700, 157, 457, 461)).
block(type_bindings_1_block40, block, type_bindings_1_stmt73, then_statement, range(type_bindings_1, 15766, 69, 458, 460)).
%map_type_1 - com.fasterxml.jackson.databind.type.MapType
block(map_type_1_block1, block, map_type_1_code3, body, range(map_type_1, 674, 131, 22, 25)).
block(map_type_1_block2, block, map_type_1_code4, body, range(map_type_1, 1164, 110, 39, 41)).
block(map_type_1_block3, block, map_type_1_code6, body, range(map_type_1, 4347, 177, 125, 129)).
%type_parser_1 - com.fasterxml.jackson.databind.type.TypeParser
block(type_parser_1_block1, block, type_parser_1_code3, body, range(type_parser_1, 454, 29, 18, 20)).
block(type_parser_1_block2, block, type_parser_1_code7, body, range(type_parser_1, 718, 288, 30, 38)).
block(type_parser_1_block3, block, type_parser_1_stmt4, then_statement, range(type_parser_1, 891, 88, 34, 36)).
block(type_parser_1_block4, block, type_parser_1_code13, body, range(type_parser_1, 1105, 746, 42, 60)).
block(type_parser_1_block5, block, type_parser_1_stmt6, then_statement, range(type_parser_1, 1144, 75, 43, 45)).
block(type_parser_1_block6, block, type_parser_1_stmt8, then_statement, range(type_parser_1, 1378, 413, 49, 58)).
block(type_parser_1_block7, block, type_parser_1_stmt10, then_statement, range(type_parser_1, 1462, 218, 51, 55)).
block(type_parser_1_block8, block, type_parser_1_code26, body, range(type_parser_1, 1957, 513, 64, 76)).
block(type_parser_1_block9, block, type_parser_1_stmt17, body, range(type_parser_1, 2061, 343, 66, 74)).
block(type_parser_1_block10, block, type_parser_1_stmt24, then_statement, range(type_parser_1, 2285, 109, 71, 73)).
block(type_parser_1_block11, block, type_parser_1_code36, body, range(type_parser_1, 2547, 322, 79, 88)).
block(type_parser_1_block12, block, type_parser_1_stmt25, body, range(type_parser_1, 2561, 61, 80, 82)).
block(type_parser_1_block13, block, type_parser_1_code38, body, range(type_parser_1, 3363, 86, 104, 107)).
block(type_parser_1_block14, block, type_parser_1_code39, body, range(type_parser_1, 3508, 81, 110, 112)).
block(type_parser_1_block15, block, type_parser_1_code40, body, range(type_parser_1, 3651, 342, 115, 126)).
block(type_parser_1_block16, block, type_parser_1_stmt30, then_statement, range(type_parser_1, 3719, 94, 117, 120)).
block(type_parser_1_block17, block, type_parser_1_stmt30, else_statement, range(type_parser_1, 3819, 138, 120, 124)).
block(type_parser_1_block18, block, type_parser_1_code41, body, range(type_parser_1, 4038, 129, 128, 131)).
%test_type_factory_1 - com.fasterxml.jackson.databind.type.TestTypeFactory
block(test_type_factory_1_block1, block, test_type_factory_1_code7, body, range(test_type_factory_1, 7418, 1882, 210, 250)).
%type_base_1 - com.fasterxml.jackson.databind.type.TypeBase
block(type_base_1_block1, block, type_base_1_code20, body, range(type_base_1, 1326, 207, 44, 49)).
block(type_base_1_block2, block, type_base_1_code21, body, range(type_base_1, 1889, 141, 65, 71)).
block(type_base_1_block3, block, type_base_1_stmt6, then_statement, range(type_base_1, 1953, 51, 67, 69)).

%%% Statements
%collection_like_type_1 - com.fasterxml.jackson.databind.type.CollectionLikeType
stmt(collection_like_type_1_stmt1, super_constructor_invocation, collection_like_type_1_block1, (statements, 0), range(collection_like_type_1, 1093, 117, 34, 35)).
stmt(collection_like_type_1_stmt2, expression_statement, collection_like_type_1_block1, (statements, 1), range(collection_like_type_1, 1219, 21, 36, 36)).
stmt(collection_like_type_1_stmt3, return_statement, collection_like_type_1_block2, (statements, 0), range(collection_like_type_1, 6570, 57, 194, 194)).
stmt(collection_like_type_1_stmt4, variable_declaration_statement, collection_like_type_1_block3, (statements, 0), range(collection_like_type_1, 7088, 39, 213, 213)).
stmt(collection_like_type_1_stmt5, expression_statement, collection_like_type_1_block3, (statements, 1), range(collection_like_type_1, 7136, 28, 214, 214)).
stmt(collection_like_type_1_stmt6, if_statement, collection_like_type_1_block3, (statements, 2), range(collection_like_type_1, 7173, 144, 215, 219)).
stmt(collection_like_type_1_stmt7, expression_statement, collection_like_type_1_block4, (statements, 0), range(collection_like_type_1, 7213, 15, 216, 216)).
stmt(collection_like_type_1_stmt8, expression_statement, collection_like_type_1_block4, (statements, 1), range(collection_like_type_1, 7241, 38, 217, 217)).
stmt(collection_like_type_1_stmt9, expression_statement, collection_like_type_1_block4, (statements, 2), range(collection_like_type_1, 7292, 15, 218, 218)).
stmt(collection_like_type_1_stmt10, return_statement, collection_like_type_1_block3, (statements, 3), range(collection_like_type_1, 7326, 21, 220, 220)).
stmt(collection_like_type_1_stmt11, if_statement, collection_like_type_1_block5, (statements, 0), range(collection_like_type_1, 8112, 27, 248, 248)).
stmt(collection_like_type_1_stmt12, return_statement, collection_like_type_1_stmt11, thenStatement, range(collection_like_type_1, 8127, 12, 248, 248)).
stmt(collection_like_type_1_stmt13, if_statement, collection_like_type_1_block5, (statements, 1), range(collection_like_type_1, 8148, 28, 249, 249)).
stmt(collection_like_type_1_stmt14, return_statement, collection_like_type_1_stmt13, thenStatement, range(collection_like_type_1, 8163, 13, 249, 249)).
stmt(collection_like_type_1_stmt15, if_statement, collection_like_type_1_block5, (statements, 2), range(collection_like_type_1, 8185, 45, 250, 250)).
stmt(collection_like_type_1_stmt16, return_statement, collection_like_type_1_stmt15, thenStatement, range(collection_like_type_1, 8217, 13, 250, 250)).
stmt(collection_like_type_1_stmt17, variable_declaration_statement, collection_like_type_1_block5, (statements, 3), range(collection_like_type_1, 8240, 50, 252, 252)).
stmt(collection_like_type_1_stmt18, return_statement, collection_like_type_1_block5, (statements, 4), range(collection_like_type_1, 8299, 76, 253, 253)).
%lrumap_1 - com.fasterxml.jackson.databind.util.LRUMap
stmt(lrumap_1_stmt1, expression_statement, lrumap_1_block1, (statements, 0), range(lrumap_1, 1366, 59, 35, 35)).
stmt(lrumap_1_stmt2, expression_statement, lrumap_1_block1, (statements, 1), range(lrumap_1, 1434, 25, 36, 36)).
stmt(lrumap_1_stmt3, if_statement, lrumap_1_block2, (statements, 0), range(lrumap_1, 2052, 188, 57, 63)).
stmt(lrumap_1_stmt4, return_statement, lrumap_1_block2, (statements, 1), range(lrumap_1, 2249, 36, 64, 64)).
stmt(lrumap_1_stmt5, return_statement, lrumap_1_block4, (statements, 0), range(lrumap_1, 2410, 21, 68, 68)).
%class_stack_1 - com.fasterxml.jackson.databind.type.ClassStack
stmt(class_stack_1_stmt1, constructor_invocation, class_stack_1_block1, (statements, 0), range(class_stack_1, 490, 21, 21, 21)).
stmt(class_stack_1_stmt2, expression_statement, class_stack_1_block2, (statements, 0), range(class_stack_1, 586, 17, 25, 25)).
stmt(class_stack_1_stmt3, expression_statement, class_stack_1_block2, (statements, 1), range(class_stack_1, 612, 16, 26, 26)).
stmt(class_stack_1_stmt4, return_statement, class_stack_1_block3, (statements, 0), range(class_stack_1, 767, 33, 33, 33)).
stmt(class_stack_1_stmt5, if_statement, class_stack_1_block4, (statements, 0), range(class_stack_1, 1421, 150, 55, 59)).
stmt(class_stack_1_stmt6, if_statement, class_stack_1_block6, (statements, 0), range(class_stack_1, 1634, 33, 64, 64)).
stmt(class_stack_1_stmt7, return_statement, class_stack_1_stmt6, thenStatement, range(class_stack_1, 1655, 12, 64, 64)).
stmt(class_stack_1_stmt8, for_statement, class_stack_1_block6, (statements, 1), range(class_stack_1, 1676, 161, 65, 69)).
stmt(class_stack_1_stmt9, if_statement, class_stack_1_block7, (statements, 0), range(class_stack_1, 1757, 70, 66, 68)).
stmt(class_stack_1_stmt10, return_statement, class_stack_1_block6, (statements, 2), range(class_stack_1, 1846, 12, 70, 70)).
%class_util_1 - com.fasterxml.jackson.databind.util.ClassUtil
stmt(class_util_1_stmt1, return_statement, class_util_1_block1, (statements, 0), range(class_util_1, 33713, 34, 989, 989)).
stmt(class_util_1_stmt2, return_statement, class_util_1_block2, (statements, 0), range(class_util_1, 33859, 34, 996, 996)).
%java_type_1 - com.fasterxml.jackson.databind.JavaType
stmt(java_type_1_stmt1, expression_statement, java_type_1_block1, (statements, 0), range(java_type_1, 2595, 13, 79, 79)).
stmt(java_type_1_stmt2, expression_statement, java_type_1_block1, (statements, 1), range(java_type_1, 2617, 50, 80, 80)).
stmt(java_type_1_stmt3, expression_statement, java_type_1_block1, (statements, 2), range(java_type_1, 2676, 29, 81, 81)).
stmt(java_type_1_stmt4, expression_statement, java_type_1_block1, (statements, 3), range(java_type_1, 2714, 27, 82, 82)).
stmt(java_type_1_stmt5, expression_statement, java_type_1_block1, (statements, 4), range(java_type_1, 2750, 21, 83, 83)).
stmt(java_type_1_stmt6, return_statement, java_type_1_block2, (statements, 0), range(java_type_1, 15851, 57, 490, 490)).
stmt(java_type_1_stmt7, return_statement, java_type_1_block3, (statements, 0), range(java_type_1, 18148, 13, 562, 562)).
%collection_type_1 - com.fasterxml.jackson.databind.type.CollectionType
stmt(collection_type_1_stmt1, super_constructor_invocation, collection_type_1_block1, (statements, 0), range(collection_type_1, 709, 90, 25, 25)).
stmt(collection_type_1_stmt2, return_statement, collection_type_1_block2, (statements, 0), range(collection_type_1, 1137, 110, 40, 41)).
stmt(collection_type_1_stmt3, return_statement, collection_type_1_block3, (statements, 0), range(collection_type_1, 4080, 160, 120, 122)).
%map_like_type_1 - com.fasterxml.jackson.databind.type.MapLikeType
stmt(map_like_type_1_stmt1, super_constructor_invocation, map_like_type_1_block1, (statements, 0), range(map_like_type_1, 1281, 138, 39, 40)).
stmt(map_like_type_1_stmt2, expression_statement, map_like_type_1_block1, (statements, 1), range(map_like_type_1, 1428, 16, 41, 41)).
stmt(map_like_type_1_stmt3, expression_statement, map_like_type_1_block1, (statements, 2), range(map_like_type_1, 1453, 20, 42, 42)).
stmt(map_like_type_1_stmt4, variable_declaration_statement, map_like_type_1_block2, (statements, 0), range(map_like_type_1, 6568, 39, 190, 190)).
stmt(map_like_type_1_stmt5, expression_statement, map_like_type_1_block2, (statements, 1), range(map_like_type_1, 6616, 28, 191, 191)).
stmt(map_like_type_1_stmt6, if_statement, map_like_type_1_block2, (statements, 2), range(map_like_type_1, 6653, 213, 192, 198)).
stmt(map_like_type_1_stmt7, expression_statement, map_like_type_1_block3, (statements, 0), range(map_like_type_1, 6689, 15, 193, 193)).
stmt(map_like_type_1_stmt8, expression_statement, map_like_type_1_block3, (statements, 1), range(map_like_type_1, 6717, 34, 194, 194)).
stmt(map_like_type_1_stmt9, expression_statement, map_like_type_1_block3, (statements, 2), range(map_like_type_1, 6764, 15, 195, 195)).
stmt(map_like_type_1_stmt10, expression_statement, map_like_type_1_block3, (statements, 3), range(map_like_type_1, 6792, 36, 196, 196)).
stmt(map_like_type_1_stmt11, expression_statement, map_like_type_1_block3, (statements, 4), range(map_like_type_1, 6841, 15, 197, 197)).
stmt(map_like_type_1_stmt12, return_statement, map_like_type_1_block2, (statements, 3), range(map_like_type_1, 6875, 21, 199, 199)).
stmt(map_like_type_1_stmt13, return_statement, map_like_type_1_block4, (statements, 0), range(map_like_type_1, 7671, 97, 240, 241)).
stmt(map_like_type_1_stmt14, if_statement, map_like_type_1_block5, (statements, 0), range(map_like_type_1, 9618, 27, 300, 300)).
stmt(map_like_type_1_stmt15, return_statement, map_like_type_1_stmt14, thenStatement, range(map_like_type_1, 9633, 12, 300, 300)).
stmt(map_like_type_1_stmt16, if_statement, map_like_type_1_block5, (statements, 1), range(map_like_type_1, 9654, 28, 301, 301)).
stmt(map_like_type_1_stmt17, return_statement, map_like_type_1_stmt16, thenStatement, range(map_like_type_1, 9669, 13, 301, 301)).
stmt(map_like_type_1_stmt18, if_statement, map_like_type_1_block5, (statements, 2), range(map_like_type_1, 9691, 45, 302, 302)).
stmt(map_like_type_1_stmt19, return_statement, map_like_type_1_stmt18, thenStatement, range(map_like_type_1, 9723, 13, 302, 302)).
stmt(map_like_type_1_stmt20, variable_declaration_statement, map_like_type_1_block5, (statements, 3), range(map_like_type_1, 9746, 36, 304, 304)).
stmt(map_like_type_1_stmt21, return_statement, map_like_type_1_block5, (statements, 4), range(map_like_type_1, 9791, 122, 305, 306)).
%type_factory_1 - com.fasterxml.jackson.databind.type.TypeFactory
stmt(type_factory_1_stmt1, constructor_invocation, type_factory_1_block1, (statements, 0), range(type_factory_1, 5203, 11, 145, 145)).
stmt(type_factory_1_stmt2, if_statement, type_factory_1_block2, (statements, 0), range(type_factory_1, 5327, 96, 152, 154)).
stmt(type_factory_1_stmt3, expression_statement, type_factory_1_block3, (statements, 0), range(type_factory_1, 5364, 49, 153, 153)).
stmt(type_factory_1_stmt4, expression_statement, type_factory_1_block2, (statements, 1), range(type_factory_1, 5432, 23, 155, 155)).
stmt(type_factory_1_stmt5, expression_statement, type_factory_1_block2, (statements, 2), range(type_factory_1, 5464, 31, 156, 156)).
stmt(type_factory_1_stmt6, expression_statement, type_factory_1_block2, (statements, 3), range(type_factory_1, 5504, 18, 157, 157)).
stmt(type_factory_1_stmt7, expression_statement, type_factory_1_block2, (statements, 4), range(type_factory_1, 5531, 20, 158, 158)).
stmt(type_factory_1_stmt8, return_statement, type_factory_1_block4, (statements, 0), range(type_factory_1, 7477, 16, 211, 211)).
stmt(type_factory_1_stmt9, return_statement, type_factory_1_block5, (statements, 0), range(type_factory_1, 8062, 20, 228, 228)).
stmt(type_factory_1_stmt10, if_statement, type_factory_1_block6, (statements, 0), range(type_factory_1, 9640, 173, 274, 279)).
stmt(type_factory_1_stmt11, variable_declaration_statement, type_factory_1_block6, (statements, 1), range(type_factory_1, 9897, 22, 281, 281)).
stmt(type_factory_1_stmt12, variable_declaration_statement, type_factory_1_block6, (statements, 2), range(type_factory_1, 9928, 43, 282, 282)).
stmt(type_factory_1_stmt13, if_statement, type_factory_1_block6, (statements, 3), range(type_factory_1, 9980, 101, 283, 285)).
stmt(type_factory_1_stmt14, expression_statement, type_factory_1_block8, (statements, 0), range(type_factory_1, 10014, 57, 284, 284)).
stmt(type_factory_1_stmt15, if_statement, type_factory_1_block6, (statements, 4), range(type_factory_1, 10090, 211, 286, 292)).
stmt(type_factory_1_stmt16, try_statement, type_factory_1_block9, (statements, 0), range(type_factory_1, 10124, 167, 287, 291)).
stmt(type_factory_1_stmt17, return_statement, type_factory_1_block10, (statements, 0), range(type_factory_1, 10146, 45, 288, 288)).
stmt(type_factory_1_stmt18, return_statement, type_factory_1_block11, (statements, 0), range(type_factory_1, 10838, 41, 308, 308)).
stmt(type_factory_1_stmt19, return_statement, type_factory_1_block12, (statements, 0), range(type_factory_1, 21241, 32, 536, 536)).
stmt(type_factory_1_stmt20, return_statement, type_factory_1_block13, (statements, 0), range(type_factory_1, 23612, 44, 610, 610)).
stmt(type_factory_1_stmt21, if_statement, type_factory_1_block14, (statements, 1), range(type_factory_1, 29714, 226, 766, 771)).
stmt(type_factory_1_stmt22, expression_statement, type_factory_1_block16, (statements, 0), range(type_factory_1, 29819, 48, 769, 769)).
stmt(type_factory_1_stmt23, expression_statement, type_factory_1_block16, (statements, 1), range(type_factory_1, 29880, 50, 770, 770)).
stmt(type_factory_1_stmt24, return_statement, type_factory_1_block14, (statements, 2), range(type_factory_1, 29949, 42, 772, 772)).
stmt(type_factory_1_stmt25, return_statement, type_factory_1_block17, (statements, 0), range(type_factory_1, 30312, 111, 782, 783)).
stmt(type_factory_1_stmt26, if_statement, type_factory_1_block18, (statements, 1), range(type_factory_1, 40520, 644, 1030, 1046)).
stmt(type_factory_1_stmt27, variable_declaration_statement, type_factory_1_block20, (statements, 0), range(type_factory_1, 40625, 57, 1033, 1033)).
stmt(type_factory_1_stmt28, switch_statement, type_factory_1_block20, (statements, 1), range(type_factory_1, 40738, 416, 1035, 1045)).
stmt(type_factory_1_stmt29, expression_statement, type_factory_1_stmt28, (statements, 4), range(type_factory_1, 40903, 23, 1040, 1040)).
stmt(type_factory_1_stmt30, expression_statement, type_factory_1_stmt28, (statements, 5), range(type_factory_1, 40943, 23, 1041, 1041)).
stmt(type_factory_1_stmt31, break_statement, type_factory_1_stmt28, (statements, 6), range(type_factory_1, 40983, 6, 1042, 1042)).
stmt(type_factory_1_stmt32, return_statement, type_factory_1_block18, (statements, 2), range(type_factory_1, 41173, 82, 1047, 1047)).
stmt(type_factory_1_stmt33, variable_declaration_statement, type_factory_1_block21, (statements, 0), range(type_factory_1, 41417, 57, 1053, 1053)).
stmt(type_factory_1_stmt34, if_statement, type_factory_1_block21, (statements, 2), range(type_factory_1, 41543, 301, 1056, 1062)).
stmt(type_factory_1_stmt35, if_statement, type_factory_1_stmt34, elseStatement, range(type_factory_1, 41619, 225, 1058, 1062)).
stmt(type_factory_1_stmt36, expression_statement, type_factory_1_block23, (statements, 0), range(type_factory_1, 41661, 23, 1059, 1059)).
stmt(type_factory_1_stmt37, return_statement, type_factory_1_block21, (statements, 3), range(type_factory_1, 41853, 85, 1063, 1063)).
stmt(type_factory_1_stmt38, return_statement, type_factory_1_block24, (statements, 0), range(type_factory_1, 43722, 66, 1112, 1112)).
stmt(type_factory_1_stmt39, if_statement, type_factory_1_block25, (statements, 0), range(type_factory_1, 44519, 350, 1132, 1139)).
stmt(type_factory_1_stmt40, if_statement, type_factory_1_block27, (statements, 0), range(type_factory_1, 44739, 47, 1137, 1137)).
stmt(type_factory_1_stmt41, return_statement, type_factory_1_stmt40, thenStatement, range(type_factory_1, 44762, 24, 1137, 1137)).
stmt(type_factory_1_stmt42, if_statement, type_factory_1_block27, (statements, 1), range(type_factory_1, 44799, 47, 1138, 1138)).
stmt(type_factory_1_stmt43, return_statement, type_factory_1_stmt42, thenStatement, range(type_factory_1, 44822, 24, 1138, 1138)).
stmt(type_factory_1_stmt44, return_statement, type_factory_1_block25, (statements, 1), range(type_factory_1, 44878, 12, 1140, 1140)).
stmt(type_factory_1_stmt45, if_statement, type_factory_1_block28, (statements, 1), range(type_factory_1, 45442, 1173, 1159, 1182)).
stmt(type_factory_1_stmt46, expression_statement, type_factory_1_block29, (statements, 0), range(type_factory_1, 45570, 66, 1161, 1161)).
stmt(type_factory_1_stmt47, if_statement, type_factory_1_stmt45, elseStatement, range(type_factory_1, 45708, 907, 1164, 1182)).
stmt(type_factory_1_stmt48, expression_statement, type_factory_1_block30, (statements, 0), range(type_factory_1, 45761, 73, 1165, 1165)).
stmt(type_factory_1_stmt49, if_statement, type_factory_1_stmt47, elseStatement, range(type_factory_1, 45858, 757, 1167, 1182)).
stmt(type_factory_1_stmt50, if_statement, type_factory_1_stmt49, elseStatement, range(type_factory_1, 46035, 580, 1171, 1182)).
stmt(type_factory_1_stmt51, if_statement, type_factory_1_stmt50, elseStatement, range(type_factory_1, 46183, 432, 1174, 1182)).
stmt(type_factory_1_stmt52, expression_statement, type_factory_1_block33, (statements, 0), range(type_factory_1, 46234, 70, 1175, 1175)).
stmt(type_factory_1_stmt53, if_statement, type_factory_1_block28, (statements, 2), range(type_factory_1, 46804, 612, 1186, 1200)).
stmt(type_factory_1_stmt54, return_statement, type_factory_1_block28, (statements, 3), range(type_factory_1, 47425, 18, 1201, 1201)).
stmt(type_factory_1_stmt55, variable_declaration_statement, type_factory_1_block35, (statements, 0), range(type_factory_1, 47754, 48, 1211, 1211)).
stmt(type_factory_1_stmt56, if_statement, type_factory_1_block35, (statements, 1), range(type_factory_1, 47811, 58, 1212, 1214)).
stmt(type_factory_1_stmt57, return_statement, type_factory_1_block36, (statements, 0), range(type_factory_1, 47845, 14, 1213, 1213)).
stmt(type_factory_1_stmt58, if_statement, type_factory_1_block35, (statements, 3), range(type_factory_1, 47974, 144, 1217, 1221)).
stmt(type_factory_1_stmt59, expression_statement, type_factory_1_block37, (statements, 0), range(type_factory_1, 48034, 14, 1218, 1218)).
stmt(type_factory_1_stmt60, expression_statement, type_factory_1_block38, (statements, 0), range(type_factory_1, 48078, 30, 1220, 1220)).
stmt(type_factory_1_stmt61, expression_statement, type_factory_1_block35, (statements, 4), range(type_factory_1, 48127, 29, 1222, 1222)).
stmt(type_factory_1_stmt62, if_statement, type_factory_1_block35, (statements, 5), range(type_factory_1, 48195, 58, 1223, 1225)).
stmt(type_factory_1_stmt63, return_statement, type_factory_1_block39, (statements, 0), range(type_factory_1, 48229, 14, 1224, 1224)).
stmt(type_factory_1_stmt64, if_statement, type_factory_1_block35, (statements, 6), range(type_factory_1, 48314, 571, 1228, 1240)).
stmt(type_factory_1_stmt65, expression_statement, type_factory_1_block40, (statements, 0), range(type_factory_1, 48349, 34, 1229, 1229)).
stmt(type_factory_1_stmt66, variable_declaration_statement, type_factory_1_block41, (statements, 0), range(type_factory_1, 48413, 40, 1231, 1231)).
stmt(type_factory_1_stmt67, if_statement, type_factory_1_block41, (statements, 1), range(type_factory_1, 48466, 280, 1232, 1237)).
stmt(type_factory_1_stmt68, expression_statement, type_factory_1_block41, (statements, 2), range(type_factory_1, 48842, 33, 1239, 1239)).
stmt(type_factory_1_stmt69, if_statement, type_factory_1_block35, (statements, 7), range(type_factory_1, 48939, 2034, 1243, 1282)).
stmt(type_factory_1_stmt70, if_statement, type_factory_1_block44, (statements, 2), range(type_factory_1, 49289, 433, 1252, 1259)).
stmt(type_factory_1_stmt71, expression_statement, type_factory_1_block45, (statements, 0), range(type_factory_1, 49334, 18, 1253, 1253)).
stmt(type_factory_1_stmt72, expression_statement, type_factory_1_block45, (statements, 1), range(type_factory_1, 49369, 70, 1254, 1254)).
stmt(type_factory_1_stmt73, expression_statement, type_factory_1_block46, (statements, 0), range(type_factory_1, 49561, 60, 1257, 1257)).
stmt(type_factory_1_stmt74, expression_statement, type_factory_1_block46, (statements, 1), range(type_factory_1, 49638, 70, 1258, 1258)).
stmt(type_factory_1_stmt75, if_statement, type_factory_1_block44, (statements, 3), range(type_factory_1, 49831, 495, 1262, 1270)).
stmt(type_factory_1_stmt76, if_statement, type_factory_1_stmt75, elseStatement, range(type_factory_1, 50195, 131, 1268, 1270)).
stmt(type_factory_1_stmt77, expression_statement, type_factory_1_block48, (statements, 0), range(type_factory_1, 50237, 75, 1269, 1269)).
stmt(type_factory_1_stmt78, if_statement, type_factory_1_block44, (statements, 4), range(type_factory_1, 50424, 539, 1272, 1281)).
stmt(type_factory_1_stmt79, expression_statement, type_factory_1_block49, (statements, 0), range(type_factory_1, 50462, 86, 1273, 1273)).
stmt(type_factory_1_stmt80, if_statement, type_factory_1_block49, (statements, 1), range(type_factory_1, 50566, 383, 1274, 1280)).
stmt(type_factory_1_stmt81, expression_statement, type_factory_1_block50, (statements, 0), range(type_factory_1, 50608, 90, 1275, 1275)).
stmt(type_factory_1_stmt82, if_statement, type_factory_1_block50, (statements, 1), range(type_factory_1, 50719, 212, 1276, 1279)).
stmt(type_factory_1_stmt83, expression_statement, type_factory_1_block51, (statements, 0), range(type_factory_1, 50837, 72, 1278, 1278)).
stmt(type_factory_1_stmt84, expression_statement, type_factory_1_block35, (statements, 8), range(type_factory_1, 50982, 38, 1283, 1283)).
stmt(type_factory_1_stmt85, if_statement, type_factory_1_block35, (statements, 9), range(type_factory_1, 51223, 109, 1286, 1288)).
stmt(type_factory_1_stmt86, expression_statement, type_factory_1_block52, (statements, 0), range(type_factory_1, 51264, 36, 1287, 1287)).
stmt(type_factory_1_stmt87, return_statement, type_factory_1_block35, (statements, 10), range(type_factory_1, 51341, 14, 1289, 1289)).
stmt(type_factory_1_stmt88, variable_declaration_statement, type_factory_1_block53, (statements, 0), range(type_factory_1, 51486, 54, 1294, 1294)).
stmt(type_factory_1_stmt89, if_statement, type_factory_1_block53, (statements, 1), range(type_factory_1, 51549, 56, 1295, 1297)).
stmt(type_factory_1_stmt90, return_statement, type_factory_1_block53, (statements, 2), range(type_factory_1, 51614, 49, 1298, 1298)).
stmt(type_factory_1_stmt91, variable_declaration_statement, type_factory_1_block55, (statements, 0), range(type_factory_1, 51801, 55, 1303, 1303)).
stmt(type_factory_1_stmt92, if_statement, type_factory_1_block55, (statements, 1), range(type_factory_1, 51865, 80, 1304, 1306)).
stmt(type_factory_1_stmt93, return_statement, type_factory_1_block56, (statements, 0), range(type_factory_1, 51919, 16, 1305, 1305)).
stmt(type_factory_1_stmt94, variable_declaration_statement, type_factory_1_block55, (statements, 2), range(type_factory_1, 51954, 23, 1307, 1307)).
stmt(type_factory_1_stmt95, variable_declaration_statement, type_factory_1_block55, (statements, 3), range(type_factory_1, 51986, 40, 1308, 1308)).
stmt(type_factory_1_stmt96, for_statement, type_factory_1_block55, (statements, 4), range(type_factory_1, 52035, 142, 1309, 1312)).
stmt(type_factory_1_stmt97, variable_declaration_statement, type_factory_1_block57, (statements, 0), range(type_factory_1, 52079, 21, 1310, 1310)).
stmt(type_factory_1_stmt98, expression_statement, type_factory_1_block57, (statements, 1), range(type_factory_1, 52113, 54, 1311, 1311)).
stmt(type_factory_1_stmt99, return_statement, type_factory_1_block55, (statements, 5), range(type_factory_1, 52186, 16, 1313, 1313)).
stmt(type_factory_1_stmt100, if_statement, type_factory_1_block58, (statements, 0), range(type_factory_1, 52615, 86, 1324, 1326)).
stmt(type_factory_1_stmt101, if_statement, type_factory_1_block58, (statements, 1), range(type_factory_1, 52800, 114, 1329, 1331)).
stmt(type_factory_1_stmt102, return_statement, type_factory_1_block60, (statements, 0), range(type_factory_1, 52840, 64, 1330, 1330)).
stmt(type_factory_1_stmt103, if_statement, type_factory_1_block58, (statements, 2), range(type_factory_1, 52923, 128, 1332, 1334)).
stmt(type_factory_1_stmt104, return_statement, type_factory_1_block61, (statements, 0), range(type_factory_1, 52970, 71, 1333, 1333)).
stmt(type_factory_1_stmt105, if_statement, type_factory_1_block58, (statements, 3), range(type_factory_1, 53106, 132, 1336, 1338)).
stmt(type_factory_1_stmt106, return_statement, type_factory_1_block58, (statements, 4), range(type_factory_1, 53603, 12, 1343, 1343)).
stmt(type_factory_1_stmt107, variable_declaration_statement, type_factory_1_block63, (statements, 0), range(type_factory_1, 53922, 44, 1351, 1351)).
stmt(type_factory_1_stmt108, for_statement, type_factory_1_block63, (statements, 1), range(type_factory_1, 53976, 230, 1353, 1358)).
stmt(type_factory_1_stmt109, variable_declaration_statement, type_factory_1_block64, (statements, 0), range(type_factory_1, 54025, 92, 1354, 1354)).
stmt(type_factory_1_stmt110, if_statement, type_factory_1_block64, (statements, 1), range(type_factory_1, 54130, 66, 1355, 1357)).
stmt(type_factory_1_stmt111, return_statement, type_factory_1_block65, (statements, 0), range(type_factory_1, 54168, 14, 1356, 1356)).
stmt(type_factory_1_stmt112, return_statement, type_factory_1_block63, (statements, 2), range(type_factory_1, 54215, 12, 1359, 1359)).
stmt(type_factory_1_stmt113, variable_declaration_statement, type_factory_1_block66, (statements, 0), range(type_factory_1, 54562, 49, 1370, 1370)).
stmt(type_factory_1_stmt114, if_statement, type_factory_1_block66, (statements, 1), range(type_factory_1, 54759, 71, 1374, 1376)).
stmt(type_factory_1_stmt115, return_statement, type_factory_1_block67, (statements, 0), range(type_factory_1, 54798, 22, 1375, 1375)).
stmt(type_factory_1_stmt116, if_statement, type_factory_1_block66, (statements, 2), range(type_factory_1, 54839, 83, 1377, 1379)).
stmt(type_factory_1_stmt117, return_statement, type_factory_1_block68, (statements, 0), range(type_factory_1, 54884, 28, 1378, 1378)).
stmt(type_factory_1_stmt118, if_statement, type_factory_1_block66, (statements, 3), range(type_factory_1, 54931, 73, 1380, 1382)).
stmt(type_factory_1_stmt119, variable_declaration_statement, type_factory_1_block66, (statements, 4), range(type_factory_1, 55274, 45, 1387, 1387)).
stmt(type_factory_1_stmt120, variable_declaration_statement, type_factory_1_block66, (statements, 5), range(type_factory_1, 55328, 50, 1388, 1388)).
stmt(type_factory_1_stmt121, if_statement, type_factory_1_block66, (statements, 7), range(type_factory_1, 55430, 338, 1391, 1399)).
stmt(type_factory_1_stmt122, variable_declaration_statement, type_factory_1_block71, (statements, 0), range(type_factory_1, 55524, 41, 1394, 1394)).
stmt(type_factory_1_stmt123, for_statement, type_factory_1_block71, (statements, 1), range(type_factory_1, 55578, 120, 1395, 1397)).
stmt(type_factory_1_stmt124, expression_statement, type_factory_1_block72, (statements, 0), range(type_factory_1, 55633, 51, 1396, 1396)).
stmt(type_factory_1_stmt125, expression_statement, type_factory_1_block71, (statements, 2), range(type_factory_1, 55711, 47, 1398, 1398)).
stmt(type_factory_1_stmt126, return_statement, type_factory_1_block66, (statements, 8), range(type_factory_1, 55777, 49, 1400, 1400)).
stmt(type_factory_1_stmt127, variable_declaration_statement, type_factory_1_block73, (statements, 0), range(type_factory_1, 56265, 34, 1412, 1412)).
stmt(type_factory_1_stmt128, variable_declaration_statement, type_factory_1_block73, (statements, 1), range(type_factory_1, 56308, 45, 1413, 1413)).
stmt(type_factory_1_stmt129, if_statement, type_factory_1_block73, (statements, 2), range(type_factory_1, 56362, 54, 1414, 1416)).
stmt(type_factory_1_stmt130, return_statement, type_factory_1_block74, (statements, 0), range(type_factory_1, 56394, 12, 1415, 1415)).
stmt(type_factory_1_stmt131, if_statement, type_factory_1_block73, (statements, 3), range(type_factory_1, 56589, 79, 1419, 1421)).
stmt(type_factory_1_stmt132, expression_statement, type_factory_1_block73, (statements, 4), range(type_factory_1, 56677, 46, 1422, 1422)).
stmt(type_factory_1_stmt133, variable_declaration_statement, type_factory_1_block73, (statements, 5), range(type_factory_1, 56733, 32, 1424, 1424)).
stmt(type_factory_1_stmt134, return_statement, type_factory_1_block73, (statements, 6), range(type_factory_1, 56774, 46, 1425, 1425)).
%simple_type_1 - com.fasterxml.jackson.databind.type.SimpleType
stmt(simple_type_1_stmt1, constructor_invocation, simple_type_1_block1, (statements, 0), range(simple_type_1, 1070, 52, 33, 33)).
stmt(simple_type_1_stmt2, constructor_invocation, simple_type_1_block2, (statements, 0), range(simple_type_1, 1257, 62, 38, 38)).
stmt(simple_type_1_stmt3, super_constructor_invocation, simple_type_1_block3, (statements, 0), range(simple_type_1, 1758, 100, 55, 56)).
stmt(simple_type_1_stmt4, return_statement, simple_type_1_block4, (statements, 0), range(simple_type_1, 8393, 12, 212, 212)).
stmt(simple_type_1_stmt5, variable_declaration_statement, simple_type_1_block5, (statements, 0), range(simple_type_1, 8483, 39, 218, 218)).
stmt(simple_type_1_stmt6, expression_statement, simple_type_1_block5, (statements, 1), range(simple_type_1, 8531, 28, 219, 219)).
stmt(simple_type_1_stmt7, variable_declaration_statement, simple_type_1_block5, (statements, 2), range(simple_type_1, 8569, 35, 221, 221)).
stmt(simple_type_1_stmt8, if_statement, simple_type_1_block5, (statements, 3), range(simple_type_1, 8613, 316, 222, 232)).
stmt(simple_type_1_stmt9, return_statement, simple_type_1_block5, (statements, 4), range(simple_type_1, 8938, 21, 233, 233)).
stmt(simple_type_1_stmt10, if_statement, simple_type_1_block7, (statements, 0), range(simple_type_1, 11081, 27, 312, 312)).
stmt(simple_type_1_stmt11, return_statement, simple_type_1_stmt10, thenStatement, range(simple_type_1, 11096, 12, 312, 312)).
%type_bindings_1 - com.fasterxml.jackson.databind.type.TypeBindings
stmt(type_bindings_1_stmt1, expression_statement, type_bindings_1_block1, (statements, 0), range(type_bindings_1, 1307, 46, 53, 53)).
stmt(type_bindings_1_stmt2, expression_statement, type_bindings_1_block1, (statements, 1), range(type_bindings_1, 1362, 44, 54, 54)).
stmt(type_bindings_1_stmt3, if_statement, type_bindings_1_block1, (statements, 2), range(type_bindings_1, 1415, 163, 55, 57)).
stmt(type_bindings_1_stmt4, variable_declaration_statement, type_bindings_1_block1, (statements, 3), range(type_bindings_1, 1587, 10, 58, 58)).
stmt(type_bindings_1_stmt5, for_statement, type_bindings_1_block1, (statements, 4), range(type_bindings_1, 1606, 101, 59, 61)).
stmt(type_bindings_1_stmt6, expression_statement, type_bindings_1_block3, (statements, 0), range(type_bindings_1, 1671, 26, 60, 60)).
stmt(type_bindings_1_stmt7, expression_statement, type_bindings_1_block1, (statements, 5), range(type_bindings_1, 1716, 26, 62, 62)).
stmt(type_bindings_1_stmt8, expression_statement, type_bindings_1_block1, (statements, 6), range(type_bindings_1, 1751, 14, 63, 63)).
stmt(type_bindings_1_stmt9, return_statement, type_bindings_1_block4, (statements, 0), range(type_bindings_1, 1830, 13, 67, 67)).
stmt(type_bindings_1_stmt10, variable_declaration_statement, type_bindings_1_block5, (statements, 0), range(type_bindings_1, 2310, 137, 84, 85)).
stmt(type_bindings_1_stmt11, return_statement, type_bindings_1_block5, (statements, 1), range(type_bindings_1, 2456, 33, 86, 86)).
stmt(type_bindings_1_stmt12, if_statement, type_bindings_1_block6, (statements, 0), range(type_bindings_1, 2588, 239, 91, 98)).
stmt(type_bindings_1_stmt13, switch_statement, type_bindings_1_stmt12, elseStatement, range(type_bindings_1, 2654, 173, 93, 98)).
stmt(type_bindings_1_stmt14, return_statement, type_bindings_1_stmt13, (statements, 1), range(type_bindings_1, 2706, 36, 95, 95)).
stmt(type_bindings_1_stmt15, return_statement, type_bindings_1_stmt13, (statements, 3), range(type_bindings_1, 2771, 46, 97, 97)).
stmt(type_bindings_1_stmt16, variable_declaration_statement, type_bindings_1_block8, (statements, 0), range(type_bindings_1, 3790, 63, 122, 122)).
stmt(type_bindings_1_stmt17, variable_declaration_statement, type_bindings_1_block8, (statements, 1), range(type_bindings_1, 3862, 46, 123, 123)).
stmt(type_bindings_1_stmt18, if_statement, type_bindings_1_block8, (statements, 2), range(type_bindings_1, 3917, 208, 124, 127)).
stmt(type_bindings_1_stmt19, return_statement, type_bindings_1_block8, (statements, 3), range(type_bindings_1, 4134, 111, 128, 129)).
stmt(type_bindings_1_stmt20, variable_declaration_statement, type_bindings_1_block10, (statements, 0), range(type_bindings_1, 4441, 63, 135, 135)).
stmt(type_bindings_1_stmt21, variable_declaration_statement, type_bindings_1_block10, (statements, 1), range(type_bindings_1, 4513, 46, 136, 136)).
stmt(type_bindings_1_stmt22, if_statement, type_bindings_1_block10, (statements, 2), range(type_bindings_1, 4568, 209, 137, 140)).
stmt(type_bindings_1_stmt23, return_statement, type_bindings_1_block10, (statements, 3), range(type_bindings_1, 4786, 140, 141, 142)).
stmt(type_bindings_1_stmt24, variable_declaration_statement, type_bindings_1_block12, (statements, 0), range(type_bindings_1, 7198, 69, 200, 200)).
stmt(type_bindings_1_stmt25, variable_declaration_statement, type_bindings_1_block12, (statements, 1), range(type_bindings_1, 7276, 103, 201, 202)).
stmt(type_bindings_1_stmt26, expression_statement, type_bindings_1_block12, (statements, 2), range(type_bindings_1, 7388, 18, 203, 203)).
stmt(type_bindings_1_stmt27, return_statement, type_bindings_1_block12, (statements, 3), range(type_bindings_1, 7415, 47, 204, 204)).
stmt(type_bindings_1_stmt28, for_statement, type_bindings_1_block13, (statements, 0), range(type_bindings_1, 7830, 960, 218, 240)).
stmt(type_bindings_1_stmt29, if_statement, type_bindings_1_block14, (statements, 0), range(type_bindings_1, 7895, 885, 219, 239)).
stmt(type_bindings_1_stmt30, variable_declaration_statement, type_bindings_1_block15, (statements, 0), range(type_bindings_1, 7941, 23, 220, 220)).
stmt(type_bindings_1_stmt31, if_statement, type_bindings_1_block15, (statements, 1), range(type_bindings_1, 7981, 759, 221, 237)).
stmt(type_bindings_1_stmt32, return_statement, type_bindings_1_block15, (statements, 2), range(type_bindings_1, 8757, 9, 238, 238)).
stmt(type_bindings_1_stmt33, return_statement, type_bindings_1_block13, (statements, 1), range(type_bindings_1, 8799, 12, 241, 241)).
stmt(type_bindings_1_stmt34, return_statement, type_bindings_1_block17, (statements, 0), range(type_bindings_1, 8858, 28, 245, 245)).
stmt(type_bindings_1_stmt35, return_statement, type_bindings_1_block18, (statements, 0), range(type_bindings_1, 8991, 21, 252, 252)).
stmt(type_bindings_1_stmt36, if_statement, type_bindings_1_block19, (statements, 0), range(type_bindings_1, 9501, 79, 276, 278)).
stmt(type_bindings_1_stmt37, return_statement, type_bindings_1_block19, (statements, 1), range(type_bindings_1, 9589, 29, 279, 279)).
stmt(type_bindings_1_stmt38, if_statement, type_bindings_1_block21, (statements, 0), range(type_bindings_1, 9713, 229, 286, 292)).
stmt(type_bindings_1_stmt39, return_statement, type_bindings_1_block21, (statements, 1), range(type_bindings_1, 9951, 13, 293, 293)).
stmt(type_bindings_1_stmt40, return_statement, type_bindings_1_block23, (statements, 0), range(type_bindings_1, 10319, 45, 305, 305)).
stmt(type_bindings_1_stmt41, if_statement, type_bindings_1_block24, (statements, 0), range(type_bindings_1, 13702, 91, 393, 395)).
stmt(type_bindings_1_stmt42, return_statement, type_bindings_1_block25, (statements, 0), range(type_bindings_1, 13756, 23, 394, 394)).
stmt(type_bindings_1_stmt43, if_statement, type_bindings_1_block24, (statements, 1), range(type_bindings_1, 13806, 79, 396, 398)).
stmt(type_bindings_1_stmt44, return_statement, type_bindings_1_block26, (statements, 0), range(type_bindings_1, 13854, 17, 397, 397)).
stmt(type_bindings_1_stmt45, if_statement, type_bindings_1_block24, (statements, 2), range(type_bindings_1, 13898, 90, 399, 401)).
stmt(type_bindings_1_stmt46, return_statement, type_bindings_1_block27, (statements, 0), range(type_bindings_1, 13951, 23, 400, 400)).
stmt(type_bindings_1_stmt47, if_statement, type_bindings_1_block24, (statements, 3), range(type_bindings_1, 14001, 96, 402, 404)).
stmt(type_bindings_1_stmt48, return_statement, type_bindings_1_block28, (statements, 0), range(type_bindings_1, 14057, 26, 403, 403)).
stmt(type_bindings_1_stmt49, if_statement, type_bindings_1_block24, (statements, 4), range(type_bindings_1, 14110, 87, 405, 407)).
stmt(type_bindings_1_stmt50, return_statement, type_bindings_1_block29, (statements, 0), range(type_bindings_1, 14162, 21, 406, 406)).
stmt(type_bindings_1_stmt51, return_statement, type_bindings_1_block24, (statements, 5), range(type_bindings_1, 14210, 38, 408, 408)).
stmt(type_bindings_1_stmt52, if_statement, type_bindings_1_block30, (statements, 0), range(type_bindings_1, 14358, 77, 413, 415)).
stmt(type_bindings_1_stmt53, return_statement, type_bindings_1_block31, (statements, 0), range(type_bindings_1, 14405, 16, 414, 414)).
stmt(type_bindings_1_stmt54, if_statement, type_bindings_1_block30, (statements, 1), range(type_bindings_1, 14448, 86, 416, 418)).
stmt(type_bindings_1_stmt55, if_statement, type_bindings_1_block30, (statements, 2), range(type_bindings_1, 14547, 99, 419, 421)).
stmt(type_bindings_1_stmt56, return_statement, type_bindings_1_block30, (statements, 3), range(type_bindings_1, 14659, 38, 422, 422)).
stmt(type_bindings_1_stmt57, expression_statement, type_bindings_1_block34, (statements, 0), range(type_bindings_1, 15040, 12, 437, 437)).
stmt(type_bindings_1_stmt58, expression_statement, type_bindings_1_block34, (statements, 1), range(type_bindings_1, 15065, 17, 438, 438)).
stmt(type_bindings_1_stmt59, expression_statement, type_bindings_1_block34, (statements, 2), range(type_bindings_1, 15095, 13, 439, 439)).
stmt(type_bindings_1_stmt60, return_statement, type_bindings_1_block35, (statements, 0), range(type_bindings_1, 15170, 13, 443, 443)).
stmt(type_bindings_1_stmt61, if_statement, type_bindings_1_block36, (statements, 0), range(type_bindings_1, 15259, 27, 447, 447)).
stmt(type_bindings_1_stmt62, return_statement, type_bindings_1_stmt61, thenStatement, range(type_bindings_1, 15274, 12, 447, 447)).
stmt(type_bindings_1_stmt63, if_statement, type_bindings_1_block36, (statements, 1), range(type_bindings_1, 15299, 28, 448, 448)).
stmt(type_bindings_1_stmt64, return_statement, type_bindings_1_stmt63, thenStatement, range(type_bindings_1, 15314, 13, 448, 448)).
stmt(type_bindings_1_stmt65, if_statement, type_bindings_1_block36, (statements, 2), range(type_bindings_1, 15340, 45, 449, 449)).
stmt(type_bindings_1_stmt66, return_statement, type_bindings_1_stmt65, thenStatement, range(type_bindings_1, 15372, 13, 449, 449)).
stmt(type_bindings_1_stmt67, variable_declaration_statement, type_bindings_1_block36, (statements, 3), range(type_bindings_1, 15398, 24, 450, 450)).
stmt(type_bindings_1_stmt68, if_statement, type_bindings_1_block36, (statements, 4), range(type_bindings_1, 15436, 486, 452, 464)).
stmt(type_bindings_1_stmt69, variable_declaration_statement, type_bindings_1_block37, (statements, 0), range(type_bindings_1, 15506, 45, 453, 453)).
stmt(type_bindings_1_stmt70, variable_declaration_statement, type_bindings_1_block37, (statements, 1), range(type_bindings_1, 15568, 31, 454, 454)).
stmt(type_bindings_1_stmt71, if_statement, type_bindings_1_block37, (statements, 2), range(type_bindings_1, 15617, 291, 456, 463)).
stmt(type_bindings_1_stmt72, for_statement, type_bindings_1_block38, (statements, 0), range(type_bindings_1, 15670, 187, 457, 461)).
stmt(type_bindings_1_stmt73, if_statement, type_bindings_1_block39, (statements, 0), range(type_bindings_1, 15726, 109, 458, 460)).
stmt(type_bindings_1_stmt74, return_statement, type_bindings_1_block38, (statements, 1), range(type_bindings_1, 15878, 12, 462, 462)).
stmt(type_bindings_1_stmt75, return_statement, type_bindings_1_block36, (statements, 5), range(type_bindings_1, 15935, 13, 465, 465)).
%map_type_1 - com.fasterxml.jackson.databind.type.MapType
stmt(map_type_1_stmt1, super_constructor_invocation, map_type_1_block1, (statements, 0), range(map_type_1, 684, 115, 23, 24)).
stmt(map_type_1_stmt2, return_statement, map_type_1_block2, (statements, 0), range(map_type_1, 1174, 94, 40, 40)).
stmt(map_type_1_stmt3, return_statement, map_type_1_block3, (statements, 0), range(map_type_1, 4357, 161, 126, 128)).
%type_parser_1 - com.fasterxml.jackson.databind.type.TypeParser
stmt(type_parser_1_stmt1, expression_statement, type_parser_1_block1, (statements, 0), range(type_parser_1, 464, 13, 19, 19)).
stmt(type_parser_1_stmt2, variable_declaration_statement, type_parser_1_block2, (statements, 0), range(type_parser_1, 728, 55, 31, 31)).
stmt(type_parser_1_stmt3, variable_declaration_statement, type_parser_1_block2, (statements, 1), range(type_parser_1, 792, 34, 32, 32)).
stmt(type_parser_1_stmt4, if_statement, type_parser_1_block2, (statements, 2), range(type_parser_1, 863, 116, 34, 36)).
stmt(type_parser_1_stmt5, return_statement, type_parser_1_block2, (statements, 3), range(type_parser_1, 988, 12, 37, 37)).
stmt(type_parser_1_stmt6, if_statement, type_parser_1_block4, (statements, 0), range(type_parser_1, 1115, 104, 43, 45)).
stmt(type_parser_1_stmt7, variable_declaration_statement, type_parser_1_block4, (statements, 1), range(type_parser_1, 1228, 54, 46, 46)).
stmt(type_parser_1_stmt8, if_statement, type_parser_1_block4, (statements, 2), range(type_parser_1, 1350, 441, 49, 58)).
stmt(type_parser_1_stmt9, variable_declaration_statement, type_parser_1_block6, (statements, 0), range(type_parser_1, 1392, 34, 50, 50)).
stmt(type_parser_1_stmt10, if_statement, type_parser_1_block6, (statements, 1), range(type_parser_1, 1439, 241, 51, 55)).
stmt(type_parser_1_stmt11, variable_declaration_statement, type_parser_1_block7, (statements, 0), range(type_parser_1, 1480, 51, 52, 52)).
stmt(type_parser_1_stmt12, variable_declaration_statement, type_parser_1_block7, (statements, 1), range(type_parser_1, 1548, 59, 53, 53)).
stmt(type_parser_1_stmt13, return_statement, type_parser_1_block7, (statements, 2), range(type_parser_1, 1624, 42, 54, 54)).
stmt(type_parser_1_stmt14, expression_statement, type_parser_1_block6, (statements, 2), range(type_parser_1, 1758, 23, 57, 57)).
stmt(type_parser_1_stmt15, return_statement, type_parser_1_block4, (statements, 3), range(type_parser_1, 1800, 45, 59, 59)).
stmt(type_parser_1_stmt16, variable_declaration_statement, type_parser_1_block8, (statements, 0), range(type_parser_1, 1967, 54, 65, 65)).
stmt(type_parser_1_stmt17, while_statement, type_parser_1_block8, (statements, 1), range(type_parser_1, 2030, 374, 66, 74)).
stmt(type_parser_1_stmt18, expression_statement, type_parser_1_block9, (statements, 0), range(type_parser_1, 2075, 29, 67, 67)).
stmt(type_parser_1_stmt19, if_statement, type_parser_1_block9, (statements, 1), range(type_parser_1, 2117, 35, 68, 68)).
stmt(type_parser_1_stmt20, break_statement, type_parser_1_stmt19, thenStatement, range(type_parser_1, 2146, 6, 68, 68)).
stmt(type_parser_1_stmt21, variable_declaration_statement, type_parser_1_block9, (statements, 2), range(type_parser_1, 2165, 34, 69, 69)).
stmt(type_parser_1_stmt22, if_statement, type_parser_1_block9, (statements, 3), range(type_parser_1, 2212, 36, 70, 70)).
stmt(type_parser_1_stmt23, return_statement, type_parser_1_stmt22, thenStatement, range(type_parser_1, 2235, 13, 70, 70)).
stmt(type_parser_1_stmt24, if_statement, type_parser_1_block9, (statements, 4), range(type_parser_1, 2261, 133, 71, 73)).
stmt(type_parser_1_stmt25, try_statement, type_parser_1_block11, (statements, 0), range(type_parser_1, 2557, 306, 80, 87)).
stmt(type_parser_1_stmt26, return_statement, type_parser_1_block12, (statements, 0), range(type_parser_1, 2575, 37, 81, 81)).
stmt(type_parser_1_stmt27, super_constructor_invocation, type_parser_1_block13, (statements, 0), range(type_parser_1, 3389, 24, 105, 105)).
stmt(type_parser_1_stmt28, expression_statement, type_parser_1_block13, (statements, 1), range(type_parser_1, 3426, 13, 106, 106)).
stmt(type_parser_1_stmt29, return_statement, type_parser_1_block14, (statements, 0), range(type_parser_1, 3522, 57, 111, 111)).
stmt(type_parser_1_stmt30, if_statement, type_parser_1_block15, (statements, 1), range(type_parser_1, 3691, 266, 117, 124)).
stmt(type_parser_1_stmt31, expression_statement, type_parser_1_block16, (statements, 0), range(type_parser_1, 3737, 23, 118, 118)).
stmt(type_parser_1_stmt32, expression_statement, type_parser_1_block16, (statements, 1), range(type_parser_1, 3777, 22, 119, 119)).
stmt(type_parser_1_stmt33, expression_statement, type_parser_1_block17, (statements, 0), range(type_parser_1, 3837, 26, 121, 121)).
stmt(type_parser_1_stmt34, expression_statement, type_parser_1_block17, (statements, 1), range(type_parser_1, 3880, 25, 122, 122)).
stmt(type_parser_1_stmt35, expression_statement, type_parser_1_block17, (statements, 2), range(type_parser_1, 3922, 21, 123, 123)).
stmt(type_parser_1_stmt36, return_statement, type_parser_1_block15, (statements, 2), range(type_parser_1, 3970, 13, 125, 125)).
stmt(type_parser_1_stmt37, expression_statement, type_parser_1_block18, (statements, 0), range(type_parser_1, 4052, 23, 129, 129)).
%test_type_factory_1 - com.fasterxml.jackson.databind.type.TestTypeFactory
stmt(test_type_factory_1_stmt1, variable_declaration_statement, test_type_factory_1_block1, (statements, 0), range(test_type_factory_1, 7428, 47, 211, 211)).
stmt(test_type_factory_1_stmt2, variable_declaration_statement, test_type_factory_1_block1, (statements, 1), range(test_type_factory_1, 7484, 56, 212, 212)).
stmt(test_type_factory_1_stmt3, variable_declaration_statement, test_type_factory_1_block1, (statements, 2), range(test_type_factory_1, 7549, 29, 213, 213)).
stmt(test_type_factory_1_stmt4, expression_statement, test_type_factory_1_block1, (statements, 3), range(test_type_factory_1, 7587, 40, 214, 214)).
stmt(test_type_factory_1_stmt5, expression_statement, test_type_factory_1_block1, (statements, 4), range(test_type_factory_1, 7636, 48, 215, 215)).
stmt(test_type_factory_1_stmt6, expression_statement, test_type_factory_1_block1, (statements, 5), range(test_type_factory_1, 7778, 48, 218, 218)).
stmt(test_type_factory_1_stmt7, expression_statement, test_type_factory_1_block1, (statements, 6), range(test_type_factory_1, 7835, 22, 219, 219)).
stmt(test_type_factory_1_stmt8, expression_statement, test_type_factory_1_block1, (statements, 7), range(test_type_factory_1, 7866, 59, 220, 220)).
stmt(test_type_factory_1_stmt9, expression_statement, test_type_factory_1_block1, (statements, 8), range(test_type_factory_1, 7934, 48, 221, 221)).
stmt(test_type_factory_1_stmt10, expression_statement, test_type_factory_1_block1, (statements, 9), range(test_type_factory_1, 7992, 46, 223, 223)).
stmt(test_type_factory_1_stmt11, expression_statement, test_type_factory_1_block1, (statements, 10), range(test_type_factory_1, 8047, 22, 224, 224)).
stmt(test_type_factory_1_stmt12, expression_statement, test_type_factory_1_block1, (statements, 11), range(test_type_factory_1, 8078, 74, 225, 225)).
stmt(test_type_factory_1_stmt13, expression_statement, test_type_factory_1_block1, (statements, 12), range(test_type_factory_1, 8161, 48, 226, 226)).
stmt(test_type_factory_1_stmt14, expression_statement, test_type_factory_1_block1, (statements, 13), range(test_type_factory_1, 8272, 77, 229, 229)).
stmt(test_type_factory_1_stmt15, expression_statement, test_type_factory_1_block1, (statements, 14), range(test_type_factory_1, 8358, 22, 230, 230)).
stmt(test_type_factory_1_stmt16, expression_statement, test_type_factory_1_block1, (statements, 15), range(test_type_factory_1, 8389, 142, 231, 232)).
stmt(test_type_factory_1_stmt17, expression_statement, test_type_factory_1_block1, (statements, 16), range(test_type_factory_1, 8540, 48, 233, 233)).
stmt(test_type_factory_1_stmt18, expression_statement, test_type_factory_1_block1, (statements, 17), range(test_type_factory_1, 8649, 48, 237, 237)).
%type_base_1 - com.fasterxml.jackson.databind.type.TypeBase
stmt(type_base_1_stmt1, super_constructor_invocation, type_base_1_block1, (statements, 0), range(type_base_1, 1336, 54, 45, 45)).
stmt(type_base_1_stmt2, expression_statement, type_base_1_block1, (statements, 1), range(type_base_1, 1399, 56, 46, 46)).
stmt(type_base_1_stmt3, expression_statement, type_base_1_block1, (statements, 2), range(type_base_1, 1464, 25, 47, 47)).
stmt(type_base_1_stmt4, expression_statement, type_base_1_block1, (statements, 3), range(type_base_1, 1498, 29, 48, 48)).
stmt(type_base_1_stmt5, variable_declaration_statement, type_base_1_block2, (statements, 0), range(type_base_1, 1899, 28, 66, 66)).
stmt(type_base_1_stmt6, if_statement, type_base_1_block2, (statements, 1), range(type_base_1, 1936, 68, 67, 69)).
stmt(type_base_1_stmt7, expression_statement, type_base_1_block3, (statements, 0), range(type_base_1, 1967, 27, 68, 68)).
stmt(type_base_1_stmt8, return_statement, type_base_1_block2, (statements, 2), range(type_base_1, 2013, 11, 70, 70)).

%%% Expressions
%collection_like_type_1 - com.fasterxml.jackson.databind.type.CollectionLikeType
expr(collection_like_type_1_expr1, super_constructor_invocation, collection_like_type_1_block1, (statements, 0), range(collection_like_type_1, 1093, 117, 34, 35), "super(collT,bindings,superClass,superInts,elemT.hashCode(),valueHandler,typeHandler,asStatic);").
expr(collection_like_type_1_expr2, method_invocation, collection_like_type_1_stmt1, (arguments, 4), range(collection_like_type_1, 1155, 16, 35, 35), "elemT.hashCode()").
expr(collection_like_type_1_expr3, assignment, collection_like_type_1_stmt2, expression, range(collection_like_type_1, 1219, 20, 36, 36), "_elementType=elemT").
expr(collection_like_type_1_expr4, infix_expression, collection_like_type_1_stmt3, expression, range(collection_like_type_1, 6577, 49, 194, 194), "super.hasHandlers() || _elementType.hasHandlers()").
expr(collection_like_type_1_expr5, super_method_invocation, collection_like_type_1_expr4, left_operand, range(collection_like_type_1, 6577, 19, 194, 194), "super.hasHandlers()").
expr(collection_like_type_1_expr6, method_invocation, collection_like_type_1_expr4, right_operand, range(collection_like_type_1, 6600, 26, 194, 194), "_elementType.hasHandlers()").
expr(collection_like_type_1_expr7, class_instance_creation, collection_like_type_1_code7, initializer, range(collection_like_type_1, 7107, 19, 213, 213), "new StringBuilder()").
expr(collection_like_type_1_expr8, method_invocation, collection_like_type_1_stmt5, expression, range(collection_like_type_1, 7136, 27, 214, 214), "sb.append(_class.getName())").
expr(collection_like_type_1_expr9, method_invocation, collection_like_type_1_expr8, (arguments, 0), range(collection_like_type_1, 7146, 16, 214, 214), "_class.getName()").
expr(collection_like_type_1_expr10, infix_expression, collection_like_type_1_stmt6, expression, range(collection_like_type_1, 7177, 20, 215, 215), "_elementType != null").
expr(collection_like_type_1_expr11, method_invocation, collection_like_type_1_stmt7, expression, range(collection_like_type_1, 7213, 14, 216, 216), "sb.append('<')").
expr(collection_like_type_1_expr12, method_invocation, collection_like_type_1_stmt8, expression, range(collection_like_type_1, 7241, 37, 217, 217), "sb.append(_elementType.toCanonical())").
expr(collection_like_type_1_expr13, method_invocation, collection_like_type_1_expr12, (arguments, 0), range(collection_like_type_1, 7251, 26, 217, 217), "_elementType.toCanonical()").
expr(collection_like_type_1_expr14, method_invocation, collection_like_type_1_stmt9, expression, range(collection_like_type_1, 7292, 14, 218, 218), "sb.append('>')").
expr(collection_like_type_1_expr15, method_invocation, collection_like_type_1_stmt10, expression, range(collection_like_type_1, 7333, 13, 220, 220), "sb.toString()").
expr(collection_like_type_1_expr16, infix_expression, collection_like_type_1_stmt11, expression, range(collection_like_type_1, 8116, 9, 248, 248), "o == this").
expr(collection_like_type_1_expr17, this_expression, collection_like_type_1_expr16, right_operand, range(collection_like_type_1, 8121, 4, 248, 248), "this").
expr(collection_like_type_1_expr18, infix_expression, collection_like_type_1_stmt13, expression, range(collection_like_type_1, 8152, 9, 249, 249), "o == null").
expr(collection_like_type_1_expr20, method_invocation, collection_like_type_1_expr19, left_operand, range(collection_like_type_1, 8189, 12, 250, 250), "o.getClass()").
expr(collection_like_type_1_expr19, infix_expression, collection_like_type_1_stmt15, expression, range(collection_like_type_1, 8189, 26, 250, 250), "o.getClass() != getClass()").
expr(collection_like_type_1_expr21, method_invocation, collection_like_type_1_expr19, right_operand, range(collection_like_type_1, 8205, 10, 250, 250), "getClass()").
expr(collection_like_type_1_expr22, cast_expression, collection_like_type_1_code11, initializer, range(collection_like_type_1, 8267, 22, 252, 252), "(CollectionLikeType)o").
expr(collection_like_type_1_expr24, parenthesized_expression, collection_like_type_1_expr23, left_operand, range(collection_like_type_1, 8307, 24, 253, 253), "(_class == other._class)").
expr(collection_like_type_1_expr23, infix_expression, collection_like_type_1_stmt18, expression, range(collection_like_type_1, 8307, 67, 253, 253), "(_class == other._class) && _elementType.equals(other._elementType)").
expr(collection_like_type_1_expr25, infix_expression, collection_like_type_1_expr24, expression, range(collection_like_type_1, 8308, 22, 253, 253), "_class == other._class").
expr(collection_like_type_1_expr26, method_invocation, collection_like_type_1_expr23, right_operand, range(collection_like_type_1, 8335, 39, 253, 253), "_elementType.equals(other._elementType)").
%lrumap_1 - com.fasterxml.jackson.databind.util.LRUMap
expr(lrumap_1_expr1, assignment, lrumap_1_stmt1, expression, range(lrumap_1, 1366, 58, 35, 35), "_map=new ConcurrentHashMap<K,V>(initialEntries,0.8f,4)").
expr(lrumap_1_expr2, class_instance_creation, lrumap_1_expr1, right_hand_side, range(lrumap_1, 1373, 51, 35, 35), "new ConcurrentHashMap<K,V>(initialEntries,0.8f,4)").
expr(lrumap_1_expr3, assignment, lrumap_1_stmt2, expression, range(lrumap_1, 1434, 24, 36, 36), "_maxEntries=maxEntries").
expr(lrumap_1_expr5, method_invocation, lrumap_1_expr4, left_operand, range(lrumap_1, 2056, 11, 57, 57), "_map.size()").
expr(lrumap_1_expr4, infix_expression, lrumap_1_stmt3, expression, range(lrumap_1, 2056, 26, 57, 57), "_map.size() >= _maxEntries").
expr(lrumap_1_expr6, method_invocation, lrumap_1_stmt4, expression, range(lrumap_1, 2256, 28, 64, 64), "_map.putIfAbsent(key,value)").
expr(lrumap_1_expr7, method_invocation, lrumap_1_stmt5, expression, range(lrumap_1, 2417, 13, 68, 68), "_map.get(key)").
%class_stack_1 - com.fasterxml.jackson.databind.type.ClassStack
expr(class_stack_1_expr1, constructor_invocation, class_stack_1_block1, (statements, 0), range(class_stack_1, 490, 21, 21, 21), "this(null,rootType);").
expr(class_stack_1_expr2, assignment, class_stack_1_stmt2, expression, range(class_stack_1, 586, 16, 25, 25), "_parent=parent").
expr(class_stack_1_expr3, assignment, class_stack_1_stmt3, expression, range(class_stack_1, 612, 15, 26, 26), "_current=curr").
expr(class_stack_1_expr4, class_instance_creation, class_stack_1_stmt4, expression, range(class_stack_1, 774, 25, 33, 33), "new ClassStack(this,cls)").
expr(class_stack_1_expr5, this_expression, class_stack_1_expr4, (arguments, 0), range(class_stack_1, 789, 4, 33, 33), "this").
expr(class_stack_1_expr6, infix_expression, class_stack_1_stmt5, expression, range(class_stack_1, 1425, 17, 55, 55), "_selfRefs != null").
expr(class_stack_1_expr7, infix_expression, class_stack_1_stmt6, expression, range(class_stack_1, 1638, 15, 64, 64), "_current == cls").
expr(class_stack_1_expr8, this_expression, class_stack_1_stmt7, expression, range(class_stack_1, 1662, 4, 64, 64), "this").
expr(class_stack_1_expr9, variable_declaration_expression, class_stack_1_stmt8, (initializers, 0), range(class_stack_1, 1681, 25, 65, 65), "ClassStack curr=_parent").
expr(class_stack_1_expr10, infix_expression, class_stack_1_stmt8, expression, range(class_stack_1, 1708, 12, 65, 65), "curr != null").
expr(class_stack_1_expr11, assignment, class_stack_1_stmt8, (updaters, 0), range(class_stack_1, 1722, 19, 65, 65), "curr=curr._parent").
expr(class_stack_1_expr12, infix_expression, class_stack_1_stmt9, expression, range(class_stack_1, 1761, 20, 66, 66), "curr._current == cls").
%class_util_1 - com.fasterxml.jackson.databind.util.ClassUtil
expr(class_util_1_expr1, type_literal, class_util_1_code10, initializer, range(class_util_1, 430, 12, 15, 15), "Object.class").
expr(class_util_1_expr2, array_creation, class_util_1_code19, initializer, range(class_util_1, 500, 17, 17, 17), "new Annotation[0]").
expr(class_util_1_expr3, array_creation, class_util_1_code30, initializer, range(class_util_1, 562, 11, 18, 18), "new Ctor[0]").
expr(class_util_1_expr4, class_instance_creation, class_util_1_code41, initializer, range(class_util_1, 1334, 27, 36, 36), "new EmptyIterator<Object>()").
expr(class_util_1_expr5, method_invocation, class_util_1_stmt1, expression, range(class_util_1, 33720, 26, 989, 989), "cls.getGenericSuperclass()").
expr(class_util_1_expr6, method_invocation, class_util_1_stmt2, expression, range(class_util_1, 33866, 26, 996, 996), "cls.getGenericInterfaces()").
%java_type_1 - com.fasterxml.jackson.databind.JavaType
expr(java_type_1_expr1, assignment, java_type_1_stmt1, expression, range(java_type_1, 2595, 12, 79, 79), "_class=raw").
expr(java_type_1_expr2, assignment, java_type_1_stmt2, expression, range(java_type_1, 2617, 49, 80, 80), "_hash=raw.getName().hashCode() + additionalHash").
expr(java_type_1_expr3, infix_expression, java_type_1_expr2, right_hand_side, range(java_type_1, 2625, 41, 80, 80), "raw.getName().hashCode() + additionalHash").
expr(java_type_1_expr4, method_invocation, java_type_1_expr3, left_operand, range(java_type_1, 2625, 24, 80, 80), "raw.getName().hashCode()").
expr(java_type_1_expr5, method_invocation, java_type_1_expr4, expression, range(java_type_1, 2625, 13, 80, 80), "raw.getName()").
expr(java_type_1_expr6, assignment, java_type_1_stmt3, expression, range(java_type_1, 2676, 28, 81, 81), "_valueHandler=valueHandler").
expr(java_type_1_expr7, assignment, java_type_1_stmt4, expression, range(java_type_1, 2714, 26, 82, 82), "_typeHandler=typeHandler").
expr(java_type_1_expr8, assignment, java_type_1_stmt5, expression, range(java_type_1, 2750, 20, 83, 83), "_asStatic=asStatic").
expr(java_type_1_expr9, infix_expression, java_type_1_stmt6, expression, range(java_type_1, 15858, 49, 490, 490), "(_typeHandler != null) || (_valueHandler != null)").
expr(java_type_1_expr10, parenthesized_expression, java_type_1_expr9, left_operand, range(java_type_1, 15858, 22, 490, 490), "(_typeHandler != null)").
expr(java_type_1_expr11, infix_expression, java_type_1_expr10, expression, range(java_type_1, 15859, 20, 490, 490), "_typeHandler != null").
expr(java_type_1_expr12, parenthesized_expression, java_type_1_expr9, right_operand, range(java_type_1, 15884, 23, 490, 490), "(_valueHandler != null)").
expr(java_type_1_expr13, infix_expression, java_type_1_expr12, expression, range(java_type_1, 15885, 21, 490, 490), "_valueHandler != null").
%collection_type_1 - com.fasterxml.jackson.databind.type.CollectionType
expr(collection_type_1_expr1, super_constructor_invocation, collection_type_1_block1, (statements, 0), range(collection_type_1, 709, 90, 25, 25), "super(collT,bindings,superClass,superInts,elemT,valueHandler,typeHandler,asStatic);").
expr(collection_type_1_expr2, class_instance_creation, collection_type_1_stmt2, expression, range(collection_type_1, 1144, 102, 40, 41), "new CollectionType(rawType,bindings,superClass,superInts,elemT,null,null,false)").
expr(collection_type_1_expr3, class_instance_creation, collection_type_1_stmt3, expression, range(collection_type_1, 4087, 152, 120, 122), "new CollectionType(rawType,bindings,superClass,superInterfaces,_elementType,_valueHandler,_typeHandler,_asStatic)").
%map_like_type_1 - com.fasterxml.jackson.databind.type.MapLikeType
expr(map_like_type_1_expr1, super_constructor_invocation, map_like_type_1_block1, (statements, 0), range(map_like_type_1, 1281, 138, 39, 40), "super(mapType,bindings,superClass,superInts,keyT.hashCode() ^ valueT.hashCode(),valueHandler,typeHandler,asStatic);").
expr(map_like_type_1_expr3, method_invocation, map_like_type_1_expr2, left_operand, range(map_like_type_1, 1329, 15, 39, 39), "keyT.hashCode()").
expr(map_like_type_1_expr2, infix_expression, map_like_type_1_stmt1, (arguments, 4), range(map_like_type_1, 1329, 51, 39, 40), "keyT.hashCode() ^ valueT.hashCode()").
expr(map_like_type_1_expr4, assignment, map_like_type_1_stmt2, expression, range(map_like_type_1, 1428, 15, 41, 41), "_keyType=keyT").
expr(map_like_type_1_expr5, assignment, map_like_type_1_stmt3, expression, range(map_like_type_1, 1453, 19, 42, 42), "_valueType=valueT").
expr(map_like_type_1_expr6, class_instance_creation, map_like_type_1_code6, initializer, range(map_like_type_1, 6587, 19, 190, 190), "new StringBuilder()").
expr(map_like_type_1_expr7, method_invocation, map_like_type_1_stmt5, expression, range(map_like_type_1, 6616, 27, 191, 191), "sb.append(_class.getName())").
expr(map_like_type_1_expr8, method_invocation, map_like_type_1_expr7, (arguments, 0), range(map_like_type_1, 6626, 16, 191, 191), "_class.getName()").
expr(map_like_type_1_expr9, infix_expression, map_like_type_1_stmt6, expression, range(map_like_type_1, 6657, 16, 192, 192), "_keyType != null").
expr(map_like_type_1_expr10, method_invocation, map_like_type_1_stmt7, expression, range(map_like_type_1, 6689, 14, 193, 193), "sb.append('<')").
expr(map_like_type_1_expr11, method_invocation, map_like_type_1_stmt8, expression, range(map_like_type_1, 6717, 33, 194, 194), "sb.append(_keyType.toCanonical())").
expr(map_like_type_1_expr12, method_invocation, map_like_type_1_expr11, (arguments, 0), range(map_like_type_1, 6727, 22, 194, 194), "_keyType.toCanonical()").
expr(map_like_type_1_expr13, method_invocation, map_like_type_1_stmt9, expression, range(map_like_type_1, 6764, 14, 195, 195), "sb.append(',')").
expr(map_like_type_1_expr14, method_invocation, map_like_type_1_stmt10, expression, range(map_like_type_1, 6792, 35, 196, 196), "sb.append(_valueType.toCanonical())").
expr(map_like_type_1_expr15, method_invocation, map_like_type_1_expr14, (arguments, 0), range(map_like_type_1, 6802, 24, 196, 196), "_valueType.toCanonical()").
expr(map_like_type_1_expr16, method_invocation, map_like_type_1_stmt11, expression, range(map_like_type_1, 6841, 14, 197, 197), "sb.append('>')").
expr(map_like_type_1_expr17, method_invocation, map_like_type_1_stmt12, expression, range(map_like_type_1, 6882, 13, 199, 199), "sb.toString()").
expr(map_like_type_1_expr19, super_method_invocation, map_like_type_1_expr18, left_operand, range(map_like_type_1, 7678, 19, 240, 240), "super.hasHandlers()").
expr(map_like_type_1_expr18, infix_expression, map_like_type_1_stmt13, expression, range(map_like_type_1, 7678, 89, 240, 241), "super.hasHandlers() || _valueType.hasHandlers() || _keyType.hasHandlers()").
expr(map_like_type_1_expr20, method_invocation, map_like_type_1_expr18, right_operand, range(map_like_type_1, 7701, 24, 240, 240), "_valueType.hasHandlers()").
expr(map_like_type_1_expr21, infix_expression, map_like_type_1_stmt14, expression, range(map_like_type_1, 9622, 9, 300, 300), "o == this").
expr(map_like_type_1_expr22, this_expression, map_like_type_1_expr21, right_operand, range(map_like_type_1, 9627, 4, 300, 300), "this").
expr(map_like_type_1_expr23, infix_expression, map_like_type_1_stmt16, expression, range(map_like_type_1, 9658, 9, 301, 301), "o == null").
expr(map_like_type_1_expr24, infix_expression, map_like_type_1_stmt18, expression, range(map_like_type_1, 9695, 26, 302, 302), "o.getClass() != getClass()").
expr(map_like_type_1_expr25, method_invocation, map_like_type_1_expr24, left_operand, range(map_like_type_1, 9695, 12, 302, 302), "o.getClass()").
expr(map_like_type_1_expr26, method_invocation, map_like_type_1_expr24, right_operand, range(map_like_type_1, 9711, 10, 302, 302), "getClass()").
expr(map_like_type_1_expr27, cast_expression, map_like_type_1_code11, initializer, range(map_like_type_1, 9766, 15, 304, 304), "(MapLikeType)o").
expr(map_like_type_1_expr28, infix_expression, map_like_type_1_stmt21, expression, range(map_like_type_1, 9798, 114, 305, 306), "(_class == other._class) && _keyType.equals(other._keyType) && _valueType.equals(other._valueType)").
expr(map_like_type_1_expr29, parenthesized_expression, map_like_type_1_expr28, left_operand, range(map_like_type_1, 9798, 24, 305, 305), "(_class == other._class)").
expr(map_like_type_1_expr30, infix_expression, map_like_type_1_expr29, expression, range(map_like_type_1, 9799, 22, 305, 305), "_class == other._class").
expr(map_like_type_1_expr31, method_invocation, map_like_type_1_expr28, right_operand, range(map_like_type_1, 9826, 31, 305, 305), "_keyType.equals(other._keyType)").
%type_factory_1 - com.fasterxml.jackson.databind.type.TypeFactory
expr(type_factory_1_expr1, array_creation, type_factory_1_code10, initializer, range(type_factory_1, 1423, 15, 39, 39), "new JavaType[0]").
expr(type_factory_1_expr2, class_instance_creation, type_factory_1_code19, initializer, range(type_factory_1, 1724, 17, 46, 46), "new TypeFactory()").
expr(type_factory_1_expr3, method_invocation, type_factory_1_code26, initializer, range(type_factory_1, 1801, 28, 48, 48), "TypeBindings.emptyBindings()").
expr(type_factory_1_expr4, type_literal, type_factory_1_code34, initializer, range(type_factory_1, 2246, 12, 60, 60), "String.class").
expr(type_factory_1_expr5, type_literal, type_factory_1_code43, initializer, range(type_factory_1, 2307, 12, 61, 61), "Object.class").
expr(type_factory_1_expr6, type_literal, type_factory_1_code52, initializer, range(type_factory_1, 2373, 16, 63, 63), "Comparable.class").
expr(type_factory_1_expr7, type_literal, type_factory_1_code61, initializer, range(type_factory_1, 2437, 11, 64, 64), "Class.class").
expr(type_factory_1_expr8, type_literal, type_factory_1_code70, initializer, range(type_factory_1, 2495, 10, 65, 65), "Enum.class").
expr(type_factory_1_expr9, class_instance_creation, type_factory_1_code101, initializer, range(type_factory_1, 2985, 24, 78, 78), "new SimpleType(CLS_BOOL)").
expr(type_factory_1_expr10, class_instance_creation, type_factory_1_code108, initializer, range(type_factory_1, 3065, 23, 79, 79), "new SimpleType(CLS_INT)").
expr(type_factory_1_expr11, class_instance_creation, type_factory_1_code115, initializer, range(type_factory_1, 3145, 24, 80, 80), "new SimpleType(CLS_LONG)").
expr(type_factory_1_expr12, class_instance_creation, type_factory_1_code122, initializer, range(type_factory_1, 3294, 26, 83, 83), "new SimpleType(CLS_STRING)").
expr(type_factory_1_expr13, class_instance_creation, type_factory_1_code129, initializer, range(type_factory_1, 3398, 26, 86, 86), "new SimpleType(CLS_OBJECT)").
expr(type_factory_1_expr14, class_instance_creation, type_factory_1_code136, initializer, range(type_factory_1, 3695, 30, 94, 94), "new SimpleType(CLS_COMPARABLE)").
expr(type_factory_1_expr15, class_instance_creation, type_factory_1_code143, initializer, range(type_factory_1, 3968, 24, 102, 102), "new SimpleType(CLS_ENUM)").
expr(type_factory_1_expr16, class_instance_creation, type_factory_1_code150, initializer, range(type_factory_1, 4200, 25, 110, 110), "new SimpleType(CLS_CLASS)").
expr(type_factory_1_expr17, constructor_invocation, type_factory_1_block1, (statements, 0), range(type_factory_1, 5203, 11, 145, 145), "this(null);").
expr(type_factory_1_expr18, infix_expression, type_factory_1_stmt2, expression, range(type_factory_1, 5331, 17, 152, 152), "typeCache == null").
expr(type_factory_1_expr19, assignment, type_factory_1_stmt3, expression, range(type_factory_1, 5364, 48, 153, 153), "typeCache=new LRUMap<Object,JavaType>(16,200)").
expr(type_factory_1_expr20, class_instance_creation, type_factory_1_expr19, right_hand_side, range(type_factory_1, 5376, 36, 153, 153), "new LRUMap<Object,JavaType>(16,200)").
expr(type_factory_1_expr21, assignment, type_factory_1_stmt4, expression, range(type_factory_1, 5432, 22, 155, 155), "_typeCache=typeCache").
expr(type_factory_1_expr22, assignment, type_factory_1_stmt5, expression, range(type_factory_1, 5464, 30, 156, 156), "_parser=new TypeParser(this)").
expr(type_factory_1_expr23, class_instance_creation, type_factory_1_expr22, right_hand_side, range(type_factory_1, 5474, 20, 156, 156), "new TypeParser(this)").
expr(type_factory_1_expr24, this_expression, type_factory_1_expr23, (arguments, 0), range(type_factory_1, 5489, 4, 156, 156), "this").
expr(type_factory_1_expr25, assignment, type_factory_1_stmt6, expression, range(type_factory_1, 5504, 17, 157, 157), "_modifiers=null").
expr(type_factory_1_expr26, assignment, type_factory_1_stmt7, expression, range(type_factory_1, 5531, 19, 158, 158), "_classLoader=null").
expr(type_factory_1_expr27, infix_expression, type_factory_1_stmt10, expression, range(type_factory_1, 9644, 26, 274, 274), "className.indexOf('.') < 0").
expr(type_factory_1_expr28, method_invocation, type_factory_1_expr27, left_operand, range(type_factory_1, 9644, 22, 274, 274), "className.indexOf('.')").
expr(type_factory_1_expr29, method_invocation, type_factory_1_code174, initializer, range(type_factory_1, 9949, 21, 282, 282), "this.getClassLoader()").
expr(type_factory_1_expr30, this_expression, type_factory_1_expr29, expression, range(type_factory_1, 9949, 4, 282, 282), "this").
expr(type_factory_1_expr31, infix_expression, type_factory_1_stmt13, expression, range(type_factory_1, 9984, 14, 283, 283), "loader == null").
expr(type_factory_1_expr32, assignment, type_factory_1_stmt14, expression, range(type_factory_1, 10014, 56, 284, 284), "loader=Thread.currentThread().getContextClassLoader()").
expr(type_factory_1_expr34, method_invocation, type_factory_1_expr33, expression, range(type_factory_1, 10024, 22, 284, 284), "Thread.currentThread()").
expr(type_factory_1_expr33, method_invocation, type_factory_1_expr32, right_hand_side, range(type_factory_1, 10024, 46, 284, 284), "Thread.currentThread().getContextClassLoader()").
expr(type_factory_1_expr35, infix_expression, type_factory_1_stmt15, expression, range(type_factory_1, 10094, 14, 286, 286), "loader != null").
expr(type_factory_1_expr36, method_invocation, type_factory_1_stmt17, expression, range(type_factory_1, 10153, 37, 288, 288), "classForName(className,true,loader)").
expr(type_factory_1_expr37, method_invocation, type_factory_1_stmt18, expression, range(type_factory_1, 10845, 33, 308, 308), "Class.forName(name,true,loader)").
expr(type_factory_1_expr38, method_invocation, type_factory_1_stmt19, expression, range(type_factory_1, 21248, 24, 536, 536), "_parser.parse(canonical)").
expr(type_factory_1_expr39, method_invocation, type_factory_1_stmt20, expression, range(type_factory_1, 23619, 36, 610, 610), "_fromAny(null,type,EMPTY_BINDINGS)").
expr(type_factory_1_expr40, infix_expression, type_factory_1_stmt21, expression, range(type_factory_1, 29718, 28, 766, 766), "mapClass == Properties.class").
expr(type_factory_1_expr41, type_literal, type_factory_1_expr40, right_operand, range(type_factory_1, 29730, 16, 766, 766), "Properties.class").
expr(type_factory_1_expr42, assignment, type_factory_1_stmt22, expression, range(type_factory_1, 29819, 47, 769, 769), "kt=_fromClass(null,keyClass,EMPTY_BINDINGS)").
expr(type_factory_1_expr43, method_invocation, type_factory_1_expr42, right_hand_side, range(type_factory_1, 29824, 42, 769, 769), "_fromClass(null,keyClass,EMPTY_BINDINGS)").
expr(type_factory_1_expr44, assignment, type_factory_1_stmt23, expression, range(type_factory_1, 29880, 49, 770, 770), "vt=_fromClass(null,valueClass,EMPTY_BINDINGS)").
expr(type_factory_1_expr45, method_invocation, type_factory_1_expr44, right_hand_side, range(type_factory_1, 29885, 44, 770, 770), "_fromClass(null,valueClass,EMPTY_BINDINGS)").
expr(type_factory_1_expr46, method_invocation, type_factory_1_stmt24, expression, range(type_factory_1, 29956, 34, 772, 772), "constructMapType(mapClass,kt,vt)").
expr(type_factory_1_expr47, cast_expression, type_factory_1_stmt25, expression, range(type_factory_1, 30319, 103, 782, 783), "(MapType)_fromClass(null,mapClass,TypeBindings.create(mapClass,keyType,valueType))").
expr(type_factory_1_expr48, method_invocation, type_factory_1_expr47, expression, range(type_factory_1, 30329, 93, 782, 783), "_fromClass(null,mapClass,TypeBindings.create(mapClass,keyType,valueType))").
expr(type_factory_1_expr49, method_invocation, type_factory_1_expr48, (arguments, 2), range(type_factory_1, 30372, 49, 783, 783), "TypeBindings.create(mapClass,keyType,valueType)").
expr(type_factory_1_expr50, infix_expression, type_factory_1_stmt26, expression, range(type_factory_1, 40524, 28, 1030, 1030), "rawClass == Properties.class").
expr(type_factory_1_expr51, type_literal, type_factory_1_expr50, right_operand, range(type_factory_1, 40536, 16, 1030, 1030), "Properties.class").
expr(type_factory_1_expr52, method_invocation, type_factory_1_code187, initializer, range(type_factory_1, 40653, 28, 1033, 1033), "bindings.getTypeParameters()").
expr(type_factory_1_expr53, method_invocation, type_factory_1_stmt28, expression, range(type_factory_1, 40746, 17, 1035, 1035), "typeParams.size()").
expr(type_factory_1_expr54, assignment, type_factory_1_stmt29, expression, range(type_factory_1, 40903, 22, 1040, 1040), "kt=typeParams.get(0)").
expr(type_factory_1_expr55, method_invocation, type_factory_1_expr54, right_hand_side, range(type_factory_1, 40908, 17, 1040, 1040), "typeParams.get(0)").
expr(type_factory_1_expr56, assignment, type_factory_1_stmt30, expression, range(type_factory_1, 40943, 22, 1041, 1041), "vt=typeParams.get(1)").
expr(type_factory_1_expr57, method_invocation, type_factory_1_expr56, right_hand_side, range(type_factory_1, 40948, 17, 1041, 1041), "typeParams.get(1)").
expr(type_factory_1_expr58, method_invocation, type_factory_1_stmt32, expression, range(type_factory_1, 41180, 74, 1047, 1047), "MapType.construct(rawClass,bindings,superClass,superInterfaces,kt,vt)").
expr(type_factory_1_expr59, method_invocation, type_factory_1_code192, initializer, range(type_factory_1, 41445, 28, 1053, 1053), "bindings.getTypeParameters()").
expr(type_factory_1_expr60, method_invocation, type_factory_1_stmt34, expression, range(type_factory_1, 41547, 20, 1056, 1056), "typeParams.isEmpty()").
expr(type_factory_1_expr61, infix_expression, type_factory_1_stmt35, expression, range(type_factory_1, 41623, 22, 1058, 1058), "typeParams.size() == 1").
expr(type_factory_1_expr62, method_invocation, type_factory_1_expr61, left_operand, range(type_factory_1, 41623, 17, 1058, 1058), "typeParams.size()").
expr(type_factory_1_expr63, assignment, type_factory_1_stmt36, expression, range(type_factory_1, 41661, 22, 1059, 1059), "ct=typeParams.get(0)").
expr(type_factory_1_expr64, method_invocation, type_factory_1_expr63, right_hand_side, range(type_factory_1, 41666, 17, 1059, 1059), "typeParams.get(0)").
expr(type_factory_1_expr65, method_invocation, type_factory_1_stmt37, expression, range(type_factory_1, 41860, 77, 1063, 1063), "CollectionType.construct(rawClass,bindings,superClass,superInterfaces,ct)").
expr(type_factory_1_expr66, class_instance_creation, type_factory_1_stmt38, expression, range(type_factory_1, 43729, 58, 1112, 1112), "new SimpleType(raw,bindings,superClass,superInterfaces)").
expr(type_factory_1_expr67, method_invocation, type_factory_1_stmt39, expression, range(type_factory_1, 44523, 17, 1132, 1132), "clz.isPrimitive()").
expr(type_factory_1_expr68, infix_expression, type_factory_1_stmt40, expression, range(type_factory_1, 44743, 17, 1137, 1137), "clz == CLS_STRING").
expr(type_factory_1_expr69, infix_expression, type_factory_1_stmt42, expression, range(type_factory_1, 44803, 17, 1138, 1138), "clz == CLS_OBJECT").
expr(type_factory_1_expr70, instanceof_expression, type_factory_1_stmt45, expression, range(type_factory_1, 45446, 24, 1159, 1159), "type instanceof Class<?>").
expr(type_factory_1_expr71, assignment, type_factory_1_stmt46, expression, range(type_factory_1, 45570, 65, 1161, 1161), "resultType=_fromClass(context,(Class<?>)type,EMPTY_BINDINGS)").
expr(type_factory_1_expr72, method_invocation, type_factory_1_expr71, right_hand_side, range(type_factory_1, 45583, 52, 1161, 1161), "_fromClass(context,(Class<?>)type,EMPTY_BINDINGS)").
expr(type_factory_1_expr73, cast_expression, type_factory_1_expr72, (arguments, 1), range(type_factory_1, 45603, 15, 1161, 1161), "(Class<?>)type").
expr(type_factory_1_expr74, instanceof_expression, type_factory_1_stmt47, expression, range(type_factory_1, 45712, 33, 1164, 1164), "type instanceof ParameterizedType").
expr(type_factory_1_expr75, assignment, type_factory_1_stmt48, expression, range(type_factory_1, 45761, 72, 1165, 1165), "resultType=_fromParamType(context,(ParameterizedType)type,bindings)").
expr(type_factory_1_expr76, method_invocation, type_factory_1_expr75, right_hand_side, range(type_factory_1, 45774, 59, 1165, 1165), "_fromParamType(context,(ParameterizedType)type,bindings)").
expr(type_factory_1_expr77, cast_expression, type_factory_1_expr76, (arguments, 1), range(type_factory_1, 45798, 24, 1165, 1165), "(ParameterizedType)type").
expr(type_factory_1_expr78, instanceof_expression, type_factory_1_stmt49, expression, range(type_factory_1, 45862, 24, 1167, 1167), "type instanceof JavaType").
expr(type_factory_1_expr79, instanceof_expression, type_factory_1_stmt50, expression, range(type_factory_1, 46039, 32, 1171, 1171), "type instanceof GenericArrayType").
expr(type_factory_1_expr80, instanceof_expression, type_factory_1_stmt51, expression, range(type_factory_1, 46187, 31, 1174, 1174), "type instanceof TypeVariable<?>").
expr(type_factory_1_expr81, assignment, type_factory_1_stmt52, expression, range(type_factory_1, 46234, 69, 1175, 1175), "resultType=_fromVariable(context,(TypeVariable<?>)type,bindings)").
expr(type_factory_1_expr82, method_invocation, type_factory_1_expr81, right_hand_side, range(type_factory_1, 46247, 56, 1175, 1175), "_fromVariable(context,(TypeVariable<?>)type,bindings)").
expr(type_factory_1_expr83, cast_expression, type_factory_1_expr82, (arguments, 1), range(type_factory_1, 46270, 22, 1175, 1175), "(TypeVariable<?>)type").
expr(type_factory_1_expr84, infix_expression, type_factory_1_stmt53, expression, range(type_factory_1, 46808, 18, 1186, 1186), "_modifiers != null").
expr(type_factory_1_expr85, method_invocation, type_factory_1_code215, initializer, range(type_factory_1, 47772, 29, 1211, 1211), "_findWellKnownSimple(rawType)").
expr(type_factory_1_expr86, infix_expression, type_factory_1_stmt56, expression, range(type_factory_1, 47815, 14, 1212, 1212), "result != null").
expr(type_factory_1_expr87, infix_expression, type_factory_1_stmt58, expression, range(type_factory_1, 47978, 40, 1217, 1217), "(bindings == null) || bindings.isEmpty()").
expr(type_factory_1_expr88, parenthesized_expression, type_factory_1_expr87, left_operand, range(type_factory_1, 47978, 18, 1217, 1217), "(bindings == null)").
expr(type_factory_1_expr89, infix_expression, type_factory_1_expr88, expression, range(type_factory_1, 47979, 16, 1217, 1217), "bindings == null").
expr(type_factory_1_expr90, method_invocation, type_factory_1_expr87, right_operand, range(type_factory_1, 48000, 18, 1217, 1217), "bindings.isEmpty()").
expr(type_factory_1_expr91, assignment, type_factory_1_stmt59, expression, range(type_factory_1, 48034, 13, 1218, 1218), "key=rawType").
expr(type_factory_1_expr92, assignment, type_factory_1_stmt60, expression, range(type_factory_1, 48078, 29, 1220, 1220), "key=bindings.asKey(rawType)").
expr(type_factory_1_expr93, method_invocation, type_factory_1_expr92, right_hand_side, range(type_factory_1, 48084, 23, 1220, 1220), "bindings.asKey(rawType)").
expr(type_factory_1_expr94, assignment, type_factory_1_stmt61, expression, range(type_factory_1, 48127, 28, 1222, 1222), "result=_typeCache.get(key)").
expr(type_factory_1_expr95, method_invocation, type_factory_1_expr94, right_hand_side, range(type_factory_1, 48136, 19, 1222, 1222), "_typeCache.get(key)").
expr(type_factory_1_expr96, infix_expression, type_factory_1_stmt62, expression, range(type_factory_1, 48199, 14, 1223, 1223), "result != null").
expr(type_factory_1_expr97, infix_expression, type_factory_1_stmt64, expression, range(type_factory_1, 48318, 15, 1228, 1228), "context == null").
expr(type_factory_1_expr98, assignment, type_factory_1_stmt65, expression, range(type_factory_1, 48349, 33, 1229, 1229), "context=new ClassStack(rawType)").
expr(type_factory_1_expr99, class_instance_creation, type_factory_1_expr98, right_hand_side, range(type_factory_1, 48359, 23, 1229, 1229), "new ClassStack(rawType)").
expr(type_factory_1_expr100, method_invocation, type_factory_1_code218, initializer, range(type_factory_1, 48431, 21, 1231, 1231), "context.find(rawType)").
expr(type_factory_1_expr101, infix_expression, type_factory_1_stmt67, expression, range(type_factory_1, 48470, 12, 1232, 1232), "prev != null").
expr(type_factory_1_expr102, assignment, type_factory_1_stmt68, expression, range(type_factory_1, 48842, 32, 1239, 1239), "context=context.child(rawType)").
expr(type_factory_1_expr103, method_invocation, type_factory_1_expr102, right_hand_side, range(type_factory_1, 48852, 22, 1239, 1239), "context.child(rawType)").
expr(type_factory_1_expr104, method_invocation, type_factory_1_stmt69, expression, range(type_factory_1, 48943, 17, 1243, 1243), "rawType.isArray()").
expr(type_factory_1_expr105, method_invocation, type_factory_1_stmt70, expression, range(type_factory_1, 49293, 21, 1252, 1252), "rawType.isInterface()").
expr(type_factory_1_expr106, assignment, type_factory_1_stmt71, expression, range(type_factory_1, 49334, 17, 1253, 1253), "superClass=null").
expr(type_factory_1_expr107, assignment, type_factory_1_stmt72, expression, range(type_factory_1, 49369, 69, 1254, 1254), "superInterfaces=_resolveSuperInterfaces(context,rawType,bindings)").
expr(type_factory_1_expr108, method_invocation, type_factory_1_expr107, right_hand_side, range(type_factory_1, 49387, 51, 1254, 1254), "_resolveSuperInterfaces(context,rawType,bindings)").
expr(type_factory_1_expr109, assignment, type_factory_1_stmt73, expression, range(type_factory_1, 49561, 59, 1257, 1257), "superClass=_resolveSuperClass(context,rawType,bindings)").
expr(type_factory_1_expr110, method_invocation, type_factory_1_expr109, right_hand_side, range(type_factory_1, 49574, 46, 1257, 1257), "_resolveSuperClass(context,rawType,bindings)").
expr(type_factory_1_expr111, assignment, type_factory_1_stmt74, expression, range(type_factory_1, 49638, 69, 1258, 1258), "superInterfaces=_resolveSuperInterfaces(context,rawType,bindings)").
expr(type_factory_1_expr112, method_invocation, type_factory_1_expr111, right_hand_side, range(type_factory_1, 49656, 51, 1258, 1258), "_resolveSuperInterfaces(context,rawType,bindings)").
expr(type_factory_1_expr113, infix_expression, type_factory_1_stmt75, expression, range(type_factory_1, 49835, 27, 1262, 1262), "rawType == Properties.class").
expr(type_factory_1_expr114, type_literal, type_factory_1_expr113, right_operand, range(type_factory_1, 49846, 16, 1262, 1262), "Properties.class").
expr(type_factory_1_expr115, infix_expression, type_factory_1_stmt76, expression, range(type_factory_1, 50199, 18, 1268, 1268), "superClass != null").
expr(type_factory_1_expr116, assignment, type_factory_1_stmt77, expression, range(type_factory_1, 50237, 74, 1269, 1269), "result=superClass.refine(rawType,bindings,superClass,superInterfaces)").
expr(type_factory_1_expr117, method_invocation, type_factory_1_expr116, right_hand_side, range(type_factory_1, 50246, 65, 1269, 1269), "superClass.refine(rawType,bindings,superClass,superInterfaces)").
expr(type_factory_1_expr118, infix_expression, type_factory_1_stmt78, expression, range(type_factory_1, 50428, 14, 1272, 1272), "result == null").
expr(type_factory_1_expr119, assignment, type_factory_1_stmt79, expression, range(type_factory_1, 50462, 85, 1273, 1273), "result=_fromWellKnownClass(context,rawType,bindings,superClass,superInterfaces)").
expr(type_factory_1_expr120, method_invocation, type_factory_1_expr119, right_hand_side, range(type_factory_1, 50471, 76, 1273, 1273), "_fromWellKnownClass(context,rawType,bindings,superClass,superInterfaces)").
expr(type_factory_1_expr121, infix_expression, type_factory_1_stmt80, expression, range(type_factory_1, 50570, 14, 1274, 1274), "result == null").
expr(type_factory_1_expr122, assignment, type_factory_1_stmt81, expression, range(type_factory_1, 50608, 89, 1275, 1275), "result=_fromWellKnownInterface(context,rawType,bindings,superClass,superInterfaces)").
expr(type_factory_1_expr123, method_invocation, type_factory_1_expr122, right_hand_side, range(type_factory_1, 50617, 80, 1275, 1275), "_fromWellKnownInterface(context,rawType,bindings,superClass,superInterfaces)").
expr(type_factory_1_expr124, infix_expression, type_factory_1_stmt82, expression, range(type_factory_1, 50723, 14, 1276, 1276), "result == null").
expr(type_factory_1_expr125, assignment, type_factory_1_stmt83, expression, range(type_factory_1, 50837, 71, 1278, 1278), "result=_newSimpleType(rawType,bindings,superClass,superInterfaces)").
expr(type_factory_1_expr126, method_invocation, type_factory_1_expr125, right_hand_side, range(type_factory_1, 50846, 62, 1278, 1278), "_newSimpleType(rawType,bindings,superClass,superInterfaces)").
expr(type_factory_1_expr127, method_invocation, type_factory_1_stmt84, expression, range(type_factory_1, 50982, 37, 1283, 1283), "context.resolveSelfReferences(result)").
expr(type_factory_1_expr128, prefix_expression, type_factory_1_stmt85, expression, range(type_factory_1, 51227, 21, 1286, 1286), "!result.hasHandlers()").
expr(type_factory_1_expr129, method_invocation, type_factory_1_expr128, operand, range(type_factory_1, 51228, 20, 1286, 1286), "result.hasHandlers()").
expr(type_factory_1_expr130, method_invocation, type_factory_1_stmt86, expression, range(type_factory_1, 51264, 35, 1287, 1287), "_typeCache.putIfAbsent(key,result)").
expr(type_factory_1_expr131, method_invocation, type_factory_1_code222, initializer, range(type_factory_1, 51500, 39, 1294, 1294), "ClassUtil.getGenericSuperclass(rawType)").
expr(type_factory_1_expr132, infix_expression, type_factory_1_stmt89, expression, range(type_factory_1, 51553, 14, 1295, 1295), "parent == null").
expr(type_factory_1_expr133, method_invocation, type_factory_1_stmt90, expression, range(type_factory_1, 51621, 41, 1298, 1298), "_fromAny(context,parent,parentBindings)").
expr(type_factory_1_expr134, method_invocation, type_factory_1_code227, initializer, range(type_factory_1, 51816, 39, 1303, 1303), "ClassUtil.getGenericInterfaces(rawType)").
expr(type_factory_1_expr135, infix_expression, type_factory_1_stmt92, expression, range(type_factory_1, 51869, 34, 1304, 1304), "types == null || types.length == 0").
expr(type_factory_1_expr136, infix_expression, type_factory_1_expr135, left_operand, range(type_factory_1, 51869, 13, 1304, 1304), "types == null").
expr(type_factory_1_expr137, infix_expression, type_factory_1_expr135, right_operand, range(type_factory_1, 51886, 17, 1304, 1304), "types.length == 0").
expr(type_factory_1_expr138, array_creation, type_factory_1_code233, initializer, range(type_factory_1, 52008, 17, 1308, 1308), "new JavaType[len]").
expr(type_factory_1_expr139, variable_declaration_expression, type_factory_1_stmt96, (initializers, 0), range(type_factory_1, 52040, 9, 1309, 1309), "int i=0").
expr(type_factory_1_expr140, infix_expression, type_factory_1_stmt96, expression, range(type_factory_1, 52051, 7, 1309, 1309), "i < len").
expr(type_factory_1_expr141, prefix_expression, type_factory_1_stmt96, (updaters, 0), range(type_factory_1, 52060, 3, 1309, 1309), "++i").
expr(type_factory_1_expr142, array_access, type_factory_1_code240, initializer, range(type_factory_1, 52091, 8, 1310, 1310), "types[i]").
expr(type_factory_1_expr143, assignment, type_factory_1_stmt98, expression, range(type_factory_1, 52113, 53, 1311, 1311), "resolved[i]=_fromAny(context,type,parentBindings)").
expr(type_factory_1_expr144, array_access, type_factory_1_expr143, left_hand_side, range(type_factory_1, 52113, 11, 1311, 1311), "resolved[i]").
expr(type_factory_1_expr145, method_invocation, type_factory_1_expr143, right_hand_side, range(type_factory_1, 52127, 39, 1311, 1311), "_fromAny(context,type,parentBindings)").
expr(type_factory_1_expr146, infix_expression, type_factory_1_stmt100, expression, range(type_factory_1, 52619, 16, 1324, 1324), "bindings == null").
expr(type_factory_1_expr147, infix_expression, type_factory_1_stmt101, expression, range(type_factory_1, 52804, 20, 1329, 1329), "rawType == Map.class").
expr(type_factory_1_expr148, type_literal, type_factory_1_expr147, right_operand, range(type_factory_1, 52815, 9, 1329, 1329), "Map.class").
expr(type_factory_1_expr149, method_invocation, type_factory_1_stmt102, expression, range(type_factory_1, 52847, 56, 1330, 1330), "_mapType(rawType,bindings,superClass,superInterfaces)").
expr(type_factory_1_expr150, infix_expression, type_factory_1_stmt103, expression, range(type_factory_1, 52927, 27, 1332, 1332), "rawType == Collection.class").
expr(type_factory_1_expr151, type_literal, type_factory_1_expr150, right_operand, range(type_factory_1, 52938, 16, 1332, 1332), "Collection.class").
expr(type_factory_1_expr152, method_invocation, type_factory_1_stmt104, expression, range(type_factory_1, 52977, 63, 1333, 1333), "_collectionType(rawType,bindings,superClass,superInterfaces)").
expr(type_factory_1_expr153, infix_expression, type_factory_1_stmt105, expression, range(type_factory_1, 53110, 32, 1336, 1336), "rawType == AtomicReference.class").
expr(type_factory_1_expr154, type_literal, type_factory_1_expr153, right_operand, range(type_factory_1, 53121, 21, 1336, 1336), "AtomicReference.class").
expr(type_factory_1_expr155, variable_declaration_expression, type_factory_1_stmt108, (initializers, 0), range(type_factory_1, 53981, 9, 1353, 1353), "int i=0").
expr(type_factory_1_expr156, infix_expression, type_factory_1_stmt108, expression, range(type_factory_1, 53992, 12, 1353, 1353), "i < intCount").
expr(type_factory_1_expr157, prefix_expression, type_factory_1_stmt108, (updaters, 0), range(type_factory_1, 54006, 3, 1353, 1353), "++i").
expr(type_factory_1_expr158, method_invocation, type_factory_1_code252, initializer, range(type_factory_1, 54043, 73, 1354, 1354), "superInterfaces[i].refine(rawType,bindings,superClass,superInterfaces)").
expr(type_factory_1_expr159, array_access, type_factory_1_expr158, expression, range(type_factory_1, 54043, 18, 1354, 1354), "superInterfaces[i]").
expr(type_factory_1_expr160, infix_expression, type_factory_1_stmt110, expression, range(type_factory_1, 54134, 14, 1355, 1355), "result != null").
expr(type_factory_1_expr161, cast_expression, type_factory_1_code257, initializer, range(type_factory_1, 54581, 29, 1370, 1370), "(Class<?>)ptype.getRawType()").
expr(type_factory_1_expr162, method_invocation, type_factory_1_expr161, expression, range(type_factory_1, 54592, 18, 1370, 1370), "ptype.getRawType()").
expr(type_factory_1_expr163, infix_expression, type_factory_1_stmt114, expression, range(type_factory_1, 54763, 19, 1374, 1374), "rawType == CLS_ENUM").
expr(type_factory_1_expr164, infix_expression, type_factory_1_stmt116, expression, range(type_factory_1, 54843, 25, 1377, 1377), "rawType == CLS_COMPARABLE").
expr(type_factory_1_expr165, infix_expression, type_factory_1_stmt118, expression, range(type_factory_1, 54935, 20, 1380, 1380), "rawType == CLS_CLASS").
expr(type_factory_1_expr166, method_invocation, type_factory_1_code264, initializer, range(type_factory_1, 55288, 30, 1387, 1387), "ptype.getActualTypeArguments()").
expr(type_factory_1_expr168, parenthesized_expression, type_factory_1_expr167, expression, range(type_factory_1, 55345, 14, 1388, 1388), "(args == null)").
expr(type_factory_1_expr167, conditional_expression, type_factory_1_code266, initializer, range(type_factory_1, 55345, 32, 1388, 1388), "(args == null) ? 0 : args.length").
expr(type_factory_1_expr169, infix_expression, type_factory_1_expr168, expression, range(type_factory_1, 55346, 12, 1388, 1388), "args == null").
expr(type_factory_1_expr170, infix_expression, type_factory_1_stmt121, expression, range(type_factory_1, 55434, 15, 1391, 1391), "paramCount == 0").
expr(type_factory_1_expr171, array_creation, type_factory_1_code270, initializer, range(type_factory_1, 55540, 24, 1394, 1394), "new JavaType[paramCount]").
expr(type_factory_1_expr172, variable_declaration_expression, type_factory_1_stmt123, (initializers, 0), range(type_factory_1, 55583, 9, 1395, 1395), "int i=0").
expr(type_factory_1_expr173, infix_expression, type_factory_1_stmt123, expression, range(type_factory_1, 55594, 14, 1395, 1395), "i < paramCount").
expr(type_factory_1_expr174, prefix_expression, type_factory_1_stmt123, (updaters, 0), range(type_factory_1, 55610, 3, 1395, 1395), "++i").
expr(type_factory_1_expr175, assignment, type_factory_1_stmt124, expression, range(type_factory_1, 55633, 50, 1396, 1396), "pt[i]=_fromAny(context,args[i],parentBindings)").
expr(type_factory_1_expr176, array_access, type_factory_1_expr175, left_hand_side, range(type_factory_1, 55633, 5, 1396, 1396), "pt[i]").
expr(type_factory_1_expr177, method_invocation, type_factory_1_expr175, right_hand_side, range(type_factory_1, 55641, 42, 1396, 1396), "_fromAny(context,args[i],parentBindings)").
expr(type_factory_1_expr178, array_access, type_factory_1_expr177, (arguments, 1), range(type_factory_1, 55659, 7, 1396, 1396), "args[i]").
expr(type_factory_1_expr179, assignment, type_factory_1_stmt125, expression, range(type_factory_1, 55711, 46, 1398, 1398), "newBindings=TypeBindings.create(rawType,pt)").
expr(type_factory_1_expr180, method_invocation, type_factory_1_expr179, right_hand_side, range(type_factory_1, 55725, 32, 1398, 1398), "TypeBindings.create(rawType,pt)").
expr(type_factory_1_expr181, method_invocation, type_factory_1_stmt126, expression, range(type_factory_1, 55784, 41, 1400, 1400), "_fromClass(context,rawType,newBindings)").
expr(type_factory_1_expr182, method_invocation, type_factory_1_code279, initializer, range(type_factory_1, 56285, 13, 1412, 1412), "var.getName()").
expr(type_factory_1_expr183, method_invocation, type_factory_1_code281, initializer, range(type_factory_1, 56324, 28, 1413, 1413), "bindings.findBoundType(name)").
expr(type_factory_1_expr184, infix_expression, type_factory_1_stmt129, expression, range(type_factory_1, 56366, 12, 1414, 1414), "type != null").
expr(type_factory_1_expr185, method_invocation, type_factory_1_stmt131, expression, range(type_factory_1, 56593, 25, 1419, 1419), "bindings.hasUnbound(name)").
expr(type_factory_1_expr186, assignment, type_factory_1_stmt132, expression, range(type_factory_1, 56677, 45, 1422, 1422), "bindings=bindings.withUnboundVariable(name)").
expr(type_factory_1_expr187, method_invocation, type_factory_1_expr186, right_hand_side, range(type_factory_1, 56688, 34, 1422, 1422), "bindings.withUnboundVariable(name)").
expr(type_factory_1_expr188, method_invocation, type_factory_1_code285, initializer, range(type_factory_1, 56749, 15, 1424, 1424), "var.getBounds()").
expr(type_factory_1_expr189, method_invocation, type_factory_1_stmt134, expression, range(type_factory_1, 56781, 38, 1425, 1425), "_fromAny(context,bounds[0],bindings)").
expr(type_factory_1_expr190, array_access, type_factory_1_expr189, (arguments, 1), range(type_factory_1, 56799, 9, 1425, 1425), "bounds[0]").
%simple_type_1 - com.fasterxml.jackson.databind.type.SimpleType
expr(simple_type_1_expr1, constructor_invocation, simple_type_1_block1, (statements, 0), range(simple_type_1, 1070, 52, 33, 33), "this(cls,TypeBindings.emptyBindings(),null,null);").
expr(simple_type_1_expr2, method_invocation, simple_type_1_stmt1, (arguments, 1), range(simple_type_1, 1080, 28, 33, 33), "TypeBindings.emptyBindings()").
expr(simple_type_1_expr3, constructor_invocation, simple_type_1_block2, (statements, 0), range(simple_type_1, 1257, 62, 38, 38), "this(cls,bindings,superClass,superInts,null,null,false);").
expr(simple_type_1_expr4, super_constructor_invocation, simple_type_1_block3, (statements, 0), range(simple_type_1, 1758, 100, 55, 56), "super(cls,bindings,superClass,superInts,0,valueHandler,typeHandler,asStatic);").
expr(simple_type_1_expr5, class_instance_creation, simple_type_1_code9, initializer, range(simple_type_1, 8502, 19, 218, 218), "new StringBuilder()").
expr(simple_type_1_expr6, method_invocation, simple_type_1_stmt6, expression, range(simple_type_1, 8531, 27, 219, 219), "sb.append(_class.getName())").
expr(simple_type_1_expr7, method_invocation, simple_type_1_expr6, (arguments, 0), range(simple_type_1, 8541, 16, 219, 219), "_class.getName()").
expr(simple_type_1_expr8, method_invocation, simple_type_1_code13, initializer, range(simple_type_1, 8587, 16, 221, 221), "_bindings.size()").
expr(simple_type_1_expr9, infix_expression, simple_type_1_stmt8, expression, range(simple_type_1, 8617, 9, 222, 222), "count > 0").
expr(simple_type_1_expr10, method_invocation, simple_type_1_stmt9, expression, range(simple_type_1, 8945, 13, 233, 233), "sb.toString()").
expr(simple_type_1_expr11, infix_expression, simple_type_1_stmt10, expression, range(simple_type_1, 11085, 9, 312, 312), "o == this").
expr(simple_type_1_expr12, this_expression, simple_type_1_expr11, right_operand, range(simple_type_1, 11090, 4, 312, 312), "this").
%type_bindings_1 - com.fasterxml.jackson.databind.type.TypeBindings
expr(type_bindings_1_expr1, array_creation, type_bindings_1_code10, initializer, range(type_bindings_1, 384, 13, 16, 16), "new String[0]").
expr(type_bindings_1_expr2, array_creation, type_bindings_1_code21, initializer, range(type_bindings_1, 447, 15, 18, 18), "new JavaType[0]").
expr(type_bindings_1_expr3, class_instance_creation, type_bindings_1_code30, initializer, range(type_bindings_1, 511, 44, 20, 20), "new TypeBindings(NO_STRINGS,NO_TYPES,null)").
expr(type_bindings_1_expr4, assignment, type_bindings_1_stmt1, expression, range(type_bindings_1, 1307, 45, 53, 53), "_names=(names == null) ? NO_STRINGS : names").
expr(type_bindings_1_expr6, parenthesized_expression, type_bindings_1_expr5, expression, range(type_bindings_1, 1316, 15, 53, 53), "(names == null)").
expr(type_bindings_1_expr5, conditional_expression, type_bindings_1_expr4, right_hand_side, range(type_bindings_1, 1316, 36, 53, 53), "(names == null) ? NO_STRINGS : names").
expr(type_bindings_1_expr7, infix_expression, type_bindings_1_expr6, expression, range(type_bindings_1, 1317, 13, 53, 53), "names == null").
expr(type_bindings_1_expr8, assignment, type_bindings_1_stmt2, expression, range(type_bindings_1, 1362, 43, 54, 54), "_types=(types == null) ? NO_TYPES : types").
expr(type_bindings_1_expr9, conditional_expression, type_bindings_1_expr8, right_hand_side, range(type_bindings_1, 1371, 34, 54, 54), "(types == null) ? NO_TYPES : types").
expr(type_bindings_1_expr10, parenthesized_expression, type_bindings_1_expr9, expression, range(type_bindings_1, 1371, 15, 54, 54), "(types == null)").
expr(type_bindings_1_expr11, infix_expression, type_bindings_1_expr10, expression, range(type_bindings_1, 1372, 13, 54, 54), "types == null").
expr(type_bindings_1_expr12, infix_expression, type_bindings_1_stmt3, expression, range(type_bindings_1, 1419, 30, 55, 55), "_names.length != _types.length").
expr(type_bindings_1_expr13, variable_declaration_expression, type_bindings_1_stmt5, (initializers, 0), range(type_bindings_1, 1611, 30, 59, 59), "int i=0, len=_types.length").
expr(type_bindings_1_expr14, infix_expression, type_bindings_1_stmt5, expression, range(type_bindings_1, 1643, 7, 59, 59), "i < len").
expr(type_bindings_1_expr15, prefix_expression, type_bindings_1_stmt5, (updaters, 0), range(type_bindings_1, 1652, 3, 59, 59), "++i").
expr(type_bindings_1_expr16, assignment, type_bindings_1_stmt6, expression, range(type_bindings_1, 1671, 25, 60, 60), "h+=_types[i].hashCode()").
expr(type_bindings_1_expr18, array_access, type_bindings_1_expr17, expression, range(type_bindings_1, 1676, 9, 60, 60), "_types[i]").
expr(type_bindings_1_expr17, method_invocation, type_bindings_1_expr16, right_hand_side, range(type_bindings_1, 1676, 20, 60, 60), "_types[i].hashCode()").
expr(type_bindings_1_expr19, assignment, type_bindings_1_stmt7, expression, range(type_bindings_1, 1716, 25, 62, 62), "_unboundVariables=uvars").
expr(type_bindings_1_expr20, assignment, type_bindings_1_stmt8, expression, range(type_bindings_1, 1751, 13, 63, 63), "_hashCode=h").
expr(type_bindings_1_expr22, parenthesized_expression, type_bindings_1_expr21, expression, range(type_bindings_1, 2329, 40, 84, 84), "(typeList == null || typeList.isEmpty())").
expr(type_bindings_1_expr21, conditional_expression, type_bindings_1_code43, initializer, range(type_bindings_1, 2329, 117, 84, 85), "(typeList == null || typeList.isEmpty()) ? NO_TYPES : typeList.toArray(new JavaType[typeList.size()])").
expr(type_bindings_1_expr25, infix_expression, type_bindings_1_expr24, left_operand, range(type_bindings_1, 2330, 16, 84, 84), "typeList == null").
expr(type_bindings_1_expr24, infix_expression, type_bindings_1_expr22, expression, range(type_bindings_1, 2330, 38, 84, 84), "typeList == null || typeList.isEmpty()").
expr(type_bindings_1_expr26, method_invocation, type_bindings_1_expr24, right_operand, range(type_bindings_1, 2350, 18, 84, 84), "typeList.isEmpty()").
expr(type_bindings_1_expr23, method_invocation, type_bindings_1_expr21, else_expression, range(type_bindings_1, 2399, 47, 85, 85), "typeList.toArray(new JavaType[typeList.size()])").
expr(type_bindings_1_expr27, method_invocation, type_bindings_1_stmt11, expression, range(type_bindings_1, 2463, 25, 86, 86), "create(erasedType,types)").
expr(type_bindings_1_expr28, infix_expression, type_bindings_1_stmt12, expression, range(type_bindings_1, 2592, 13, 91, 91), "types == null").
expr(type_bindings_1_expr29, method_invocation, type_bindings_1_stmt14, expression, range(type_bindings_1, 2713, 28, 95, 95), "create(erasedType,types[0])").
expr(type_bindings_1_expr30, array_access, type_bindings_1_expr29, (arguments, 1), range(type_bindings_1, 2732, 8, 95, 95), "types[0]").
expr(type_bindings_1_expr31, method_invocation, type_bindings_1_stmt15, expression, range(type_bindings_1, 2778, 38, 97, 97), "create(erasedType,types[0],types[1])").
expr(type_bindings_1_expr32, array_access, type_bindings_1_expr31, (arguments, 1), range(type_bindings_1, 2797, 8, 97, 97), "types[0]").
expr(type_bindings_1_expr33, array_access, type_bindings_1_expr31, (arguments, 2), range(type_bindings_1, 2807, 8, 97, 97), "types[1]").
expr(type_bindings_1_expr34, method_invocation, type_bindings_1_code51, initializer, range(type_bindings_1, 3815, 37, 122, 122), "TypeParamStash.paramsFor1(erasedType)").
expr(type_bindings_1_expr36, parenthesized_expression, type_bindings_1_expr35, expression, range(type_bindings_1, 3875, 14, 123, 123), "(vars == null)").
expr(type_bindings_1_expr35, conditional_expression, type_bindings_1_code53, initializer, range(type_bindings_1, 3875, 32, 123, 123), "(vars == null) ? 0 : vars.length").
expr(type_bindings_1_expr37, infix_expression, type_bindings_1_expr36, expression, range(type_bindings_1, 3876, 12, 123, 123), "vars == null").
expr(type_bindings_1_expr38, infix_expression, type_bindings_1_stmt18, expression, range(type_bindings_1, 3921, 11, 124, 124), "varLen != 1").
expr(type_bindings_1_expr39, class_instance_creation, type_bindings_1_stmt19, expression, range(type_bindings_1, 4141, 103, 128, 129), "new TypeBindings(new String[]{vars[0].getName()},new JavaType[]{typeArg1},null)").
expr(type_bindings_1_expr40, array_creation, type_bindings_1_expr39, (arguments, 0), range(type_bindings_1, 4158, 34, 128, 128), "new String[]{vars[0].getName()}").
expr(type_bindings_1_expr42, array_initializer, type_bindings_1_expr40, initializer, range(type_bindings_1, 4171, 21, 128, 128), "{vars[0].getName()}").
expr(type_bindings_1_expr44, array_access, type_bindings_1_expr43, expression, range(type_bindings_1, 4173, 7, 128, 128), "vars[0]").
expr(type_bindings_1_expr43, method_invocation, type_bindings_1_expr42, (expressions, 0), range(type_bindings_1, 4173, 17, 128, 128), "vars[0].getName()").
expr(type_bindings_1_expr41, array_creation, type_bindings_1_expr39, (arguments, 1), range(type_bindings_1, 4210, 27, 129, 129), "new JavaType[]{typeArg1}").
expr(type_bindings_1_expr45, method_invocation, type_bindings_1_code64, initializer, range(type_bindings_1, 4466, 37, 135, 135), "TypeParamStash.paramsFor2(erasedType)").
expr(type_bindings_1_expr47, parenthesized_expression, type_bindings_1_expr46, expression, range(type_bindings_1, 4526, 14, 136, 136), "(vars == null)").
expr(type_bindings_1_expr46, conditional_expression, type_bindings_1_code66, initializer, range(type_bindings_1, 4526, 32, 136, 136), "(vars == null) ? 0 : vars.length").
expr(type_bindings_1_expr48, infix_expression, type_bindings_1_expr47, expression, range(type_bindings_1, 4527, 12, 136, 136), "vars == null").
expr(type_bindings_1_expr49, infix_expression, type_bindings_1_stmt22, expression, range(type_bindings_1, 4572, 11, 137, 137), "varLen != 2").
expr(type_bindings_1_expr50, class_instance_creation, type_bindings_1_stmt23, expression, range(type_bindings_1, 4793, 132, 141, 142), "new TypeBindings(new String[]{vars[0].getName(),vars[1].getName()},new JavaType[]{typeArg1,typeArg2},null)").
expr(type_bindings_1_expr51, array_creation, type_bindings_1_expr50, (arguments, 0), range(type_bindings_1, 4810, 53, 141, 141), "new String[]{vars[0].getName(),vars[1].getName()}").
expr(type_bindings_1_expr53, array_initializer, type_bindings_1_expr51, initializer, range(type_bindings_1, 4823, 40, 141, 141), "{vars[0].getName(),vars[1].getName()}").
expr(type_bindings_1_expr55, array_access, type_bindings_1_expr54, expression, range(type_bindings_1, 4825, 7, 141, 141), "vars[0]").
expr(type_bindings_1_expr54, method_invocation, type_bindings_1_expr53, (expressions, 0), range(type_bindings_1, 4825, 17, 141, 141), "vars[0].getName()").
expr(type_bindings_1_expr57, array_access, type_bindings_1_expr56, expression, range(type_bindings_1, 4844, 7, 141, 141), "vars[1]").
expr(type_bindings_1_expr56, method_invocation, type_bindings_1_expr53, (expressions, 1), range(type_bindings_1, 4844, 17, 141, 141), "vars[1].getName()").
expr(type_bindings_1_expr52, array_creation, type_bindings_1_expr50, (arguments, 1), range(type_bindings_1, 4881, 37, 142, 142), "new JavaType[]{typeArg1,typeArg2}").
expr(type_bindings_1_expr59, parenthesized_expression, type_bindings_1_expr58, expression, range(type_bindings_1, 7208, 27, 200, 200), "(_unboundVariables == null)").
expr(type_bindings_1_expr58, conditional_expression, type_bindings_1_code73, initializer, range(type_bindings_1, 7208, 58, 200, 200), "(_unboundVariables == null) ? 0 : _unboundVariables.length").
expr(type_bindings_1_expr60, infix_expression, type_bindings_1_expr59, expression, range(type_bindings_1, 7209, 25, 200, 200), "_unboundVariables == null").
expr(type_bindings_1_expr62, parenthesized_expression, type_bindings_1_expr61, expression, range(type_bindings_1, 7294, 10, 201, 201), "(len == 0)").
expr(type_bindings_1_expr61, conditional_expression, type_bindings_1_code77, initializer, range(type_bindings_1, 7294, 84, 201, 202), "(len == 0) ? new String[1] : Arrays.copyOf(_unboundVariables,len + 1)").
expr(type_bindings_1_expr65, infix_expression, type_bindings_1_expr62, expression, range(type_bindings_1, 7295, 8, 201, 201), "len == 0").
expr(type_bindings_1_expr63, array_creation, type_bindings_1_expr61, then_expression, range(type_bindings_1, 7323, 13, 202, 202), "new String[1]").
expr(type_bindings_1_expr64, method_invocation, type_bindings_1_expr61, else_expression, range(type_bindings_1, 7339, 39, 202, 202), "Arrays.copyOf(_unboundVariables,len + 1)").
expr(type_bindings_1_expr67, array_access, type_bindings_1_expr66, left_hand_side, range(type_bindings_1, 7388, 10, 203, 203), "names[len]").
expr(type_bindings_1_expr66, assignment, type_bindings_1_stmt26, expression, range(type_bindings_1, 7388, 17, 203, 203), "names[len]=name").
expr(type_bindings_1_expr68, class_instance_creation, type_bindings_1_stmt27, expression, range(type_bindings_1, 7422, 39, 204, 204), "new TypeBindings(_names,_types,names)").
expr(type_bindings_1_expr69, variable_declaration_expression, type_bindings_1_stmt28, (initializers, 0), range(type_bindings_1, 7835, 30, 218, 218), "int i=0, len=_names.length").
expr(type_bindings_1_expr70, infix_expression, type_bindings_1_stmt28, expression, range(type_bindings_1, 7867, 7, 218, 218), "i < len").
expr(type_bindings_1_expr71, prefix_expression, type_bindings_1_stmt28, (updaters, 0), range(type_bindings_1, 7876, 3, 218, 218), "++i").
expr(type_bindings_1_expr72, method_invocation, type_bindings_1_stmt29, expression, range(type_bindings_1, 7899, 22, 219, 219), "name.equals(_names[i])").
expr(type_bindings_1_expr73, array_access, type_bindings_1_expr72, (arguments, 0), range(type_bindings_1, 7911, 9, 219, 219), "_names[i]").
expr(type_bindings_1_expr74, array_access, type_bindings_1_code84, initializer, range(type_bindings_1, 7954, 9, 220, 220), "_types[i]").
expr(type_bindings_1_expr75, instanceof_expression, type_bindings_1_stmt31, expression, range(type_bindings_1, 7985, 34, 221, 221), "t instanceof ResolvedRecursiveType").
expr(type_bindings_1_expr76, parenthesized_expression, type_bindings_1_stmt34, expression, range(type_bindings_1, 8865, 20, 245, 245), "(_types.length == 0)").
expr(type_bindings_1_expr77, infix_expression, type_bindings_1_expr76, expression, range(type_bindings_1, 8866, 18, 245, 245), "_types.length == 0").
expr(type_bindings_1_expr78, infix_expression, type_bindings_1_stmt36, expression, range(type_bindings_1, 9505, 18, 276, 276), "_types.length == 0").
expr(type_bindings_1_expr79, method_invocation, type_bindings_1_stmt37, expression, range(type_bindings_1, 9596, 21, 279, 279), "Arrays.asList(_types)").
expr(type_bindings_1_expr80, infix_expression, type_bindings_1_stmt38, expression, range(type_bindings_1, 9717, 25, 286, 286), "_unboundVariables != null").
expr(type_bindings_1_expr81, class_instance_creation, type_bindings_1_stmt40, expression, range(type_bindings_1, 10326, 37, 305, 305), "new AsKey(rawBase,_types,_hashCode)").
expr(type_bindings_1_expr83, type_literal, type_bindings_1_expr82, expression, range(type_bindings_1, 12873, 18, 381, 381), "AbstractList.class").
expr(type_bindings_1_expr82, method_invocation, type_bindings_1_code102, initializer, range(type_bindings_1, 12873, 38, 381, 381), "AbstractList.class.getTypeParameters()").
expr(type_bindings_1_expr85, type_literal, type_bindings_1_expr84, expression, range(type_bindings_1, 12978, 16, 382, 382), "Collection.class").
expr(type_bindings_1_expr84, method_invocation, type_bindings_1_code113, initializer, range(type_bindings_1, 12978, 36, 382, 382), "Collection.class.getTypeParameters()").
expr(type_bindings_1_expr87, type_literal, type_bindings_1_expr86, expression, range(type_bindings_1, 13079, 14, 383, 383), "Iterable.class").
expr(type_bindings_1_expr86, method_invocation, type_bindings_1_code124, initializer, range(type_bindings_1, 13079, 34, 383, 383), "Iterable.class.getTypeParameters()").
expr(type_bindings_1_expr89, type_literal, type_bindings_1_expr88, expression, range(type_bindings_1, 13174, 10, 384, 384), "List.class").
expr(type_bindings_1_expr88, method_invocation, type_bindings_1_code135, initializer, range(type_bindings_1, 13174, 30, 384, 384), "List.class.getTypeParameters()").
expr(type_bindings_1_expr91, type_literal, type_bindings_1_expr90, expression, range(type_bindings_1, 13271, 15, 385, 385), "ArrayList.class").
expr(type_bindings_1_expr90, method_invocation, type_bindings_1_code146, initializer, range(type_bindings_1, 13271, 35, 385, 385), "ArrayList.class.getTypeParameters()").
expr(type_bindings_1_expr93, type_literal, type_bindings_1_expr92, expression, range(type_bindings_1, 13367, 9, 387, 387), "Map.class").
expr(type_bindings_1_expr92, method_invocation, type_bindings_1_code157, initializer, range(type_bindings_1, 13367, 29, 387, 387), "Map.class.getTypeParameters()").
expr(type_bindings_1_expr95, type_literal, type_bindings_1_expr94, expression, range(type_bindings_1, 13461, 13, 388, 388), "HashMap.class").
expr(type_bindings_1_expr94, method_invocation, type_bindings_1_code168, initializer, range(type_bindings_1, 13461, 33, 388, 388), "HashMap.class.getTypeParameters()").
expr(type_bindings_1_expr97, type_literal, type_bindings_1_expr96, expression, range(type_bindings_1, 13566, 19, 389, 389), "LinkedHashMap.class").
expr(type_bindings_1_expr96, method_invocation, type_bindings_1_code179, initializer, range(type_bindings_1, 13566, 39, 389, 389), "LinkedHashMap.class.getTypeParameters()").
expr(type_bindings_1_expr98, infix_expression, type_bindings_1_stmt41, expression, range(type_bindings_1, 13706, 30, 393, 393), "erasedType == Collection.class").
expr(type_bindings_1_expr99, type_literal, type_bindings_1_expr98, right_operand, range(type_bindings_1, 13720, 16, 393, 393), "Collection.class").
expr(type_bindings_1_expr100, infix_expression, type_bindings_1_stmt43, expression, range(type_bindings_1, 13810, 24, 396, 396), "erasedType == List.class").
expr(type_bindings_1_expr101, type_literal, type_bindings_1_expr100, right_operand, range(type_bindings_1, 13824, 10, 396, 396), "List.class").
expr(type_bindings_1_expr102, infix_expression, type_bindings_1_stmt45, expression, range(type_bindings_1, 13902, 29, 399, 399), "erasedType == ArrayList.class").
expr(type_bindings_1_expr103, type_literal, type_bindings_1_expr102, right_operand, range(type_bindings_1, 13916, 15, 399, 399), "ArrayList.class").
expr(type_bindings_1_expr104, infix_expression, type_bindings_1_stmt47, expression, range(type_bindings_1, 14005, 32, 402, 402), "erasedType == AbstractList.class").
expr(type_bindings_1_expr105, type_literal, type_bindings_1_expr104, right_operand, range(type_bindings_1, 14019, 18, 402, 402), "AbstractList.class").
expr(type_bindings_1_expr106, infix_expression, type_bindings_1_stmt49, expression, range(type_bindings_1, 14114, 28, 405, 405), "erasedType == Iterable.class").
expr(type_bindings_1_expr107, type_literal, type_bindings_1_expr106, right_operand, range(type_bindings_1, 14128, 14, 405, 405), "Iterable.class").
expr(type_bindings_1_expr108, method_invocation, type_bindings_1_stmt51, expression, range(type_bindings_1, 14217, 30, 408, 408), "erasedType.getTypeParameters()").
expr(type_bindings_1_expr109, infix_expression, type_bindings_1_stmt52, expression, range(type_bindings_1, 14362, 23, 413, 413), "erasedType == Map.class").
expr(type_bindings_1_expr110, type_literal, type_bindings_1_expr109, right_operand, range(type_bindings_1, 14376, 9, 413, 413), "Map.class").
expr(type_bindings_1_expr111, infix_expression, type_bindings_1_stmt54, expression, range(type_bindings_1, 14452, 27, 416, 416), "erasedType == HashMap.class").
expr(type_bindings_1_expr112, type_literal, type_bindings_1_expr111, right_operand, range(type_bindings_1, 14466, 13, 416, 416), "HashMap.class").
expr(type_bindings_1_expr113, infix_expression, type_bindings_1_stmt55, expression, range(type_bindings_1, 14551, 33, 419, 419), "erasedType == LinkedHashMap.class").
expr(type_bindings_1_expr114, type_literal, type_bindings_1_expr113, right_operand, range(type_bindings_1, 14565, 19, 419, 419), "LinkedHashMap.class").
expr(type_bindings_1_expr115, method_invocation, type_bindings_1_stmt56, expression, range(type_bindings_1, 14666, 30, 422, 422), "erasedType.getTypeParameters()").
expr(type_bindings_1_expr116, assignment, type_bindings_1_stmt57, expression, range(type_bindings_1, 15040, 10, 437, 437), "_raw=raw").
expr(type_bindings_1_expr117, assignment, type_bindings_1_stmt58, expression, range(type_bindings_1, 15065, 16, 438, 438), "_params=params").
expr(type_bindings_1_expr118, assignment, type_bindings_1_stmt59, expression, range(type_bindings_1, 15095, 12, 439, 439), "_hash=hash").
expr(type_bindings_1_expr119, infix_expression, type_bindings_1_stmt61, expression, range(type_bindings_1, 15263, 9, 447, 447), "o == this").
expr(type_bindings_1_expr120, this_expression, type_bindings_1_expr119, right_operand, range(type_bindings_1, 15268, 4, 447, 447), "this").
expr(type_bindings_1_expr121, infix_expression, type_bindings_1_stmt63, expression, range(type_bindings_1, 15303, 9, 448, 448), "o == null").
expr(type_bindings_1_expr123, method_invocation, type_bindings_1_expr122, left_operand, range(type_bindings_1, 15344, 12, 449, 449), "o.getClass()").
expr(type_bindings_1_expr122, infix_expression, type_bindings_1_stmt65, expression, range(type_bindings_1, 15344, 26, 449, 449), "o.getClass() != getClass()").
expr(type_bindings_1_expr124, method_invocation, type_bindings_1_expr122, right_operand, range(type_bindings_1, 15360, 10, 449, 449), "getClass()").
expr(type_bindings_1_expr125, cast_expression, type_bindings_1_code209, initializer, range(type_bindings_1, 15412, 9, 450, 450), "(AsKey)o").
expr(type_bindings_1_expr127, parenthesized_expression, type_bindings_1_expr126, left_operand, range(type_bindings_1, 15440, 22, 452, 452), "(_hash == other._hash)").
expr(type_bindings_1_expr126, infix_expression, type_bindings_1_stmt68, expression, range(type_bindings_1, 15440, 46, 452, 452), "(_hash == other._hash) && (_raw == other._raw)").
expr(type_bindings_1_expr128, infix_expression, type_bindings_1_expr127, expression, range(type_bindings_1, 15441, 20, 452, 452), "_hash == other._hash").
expr(type_bindings_1_expr129, parenthesized_expression, type_bindings_1_expr126, right_operand, range(type_bindings_1, 15466, 20, 452, 452), "(_raw == other._raw)").
expr(type_bindings_1_expr130, infix_expression, type_bindings_1_expr129, expression, range(type_bindings_1, 15467, 18, 452, 452), "_raw == other._raw").
expr(type_bindings_1_expr131, infix_expression, type_bindings_1_stmt71, expression, range(type_bindings_1, 15621, 25, 456, 456), "len == otherParams.length").
expr(type_bindings_1_expr132, variable_declaration_expression, type_bindings_1_stmt72, (initializers, 0), range(type_bindings_1, 15675, 9, 457, 457), "int i=0").
expr(type_bindings_1_expr133, infix_expression, type_bindings_1_stmt72, expression, range(type_bindings_1, 15686, 7, 457, 457), "i < len").
expr(type_bindings_1_expr134, prefix_expression, type_bindings_1_stmt72, (updaters, 0), range(type_bindings_1, 15695, 3, 457, 457), "++i").
expr(type_bindings_1_expr135, prefix_expression, type_bindings_1_stmt73, expression, range(type_bindings_1, 15730, 34, 458, 458), "!_params[i].equals(otherParams[i])").
expr(type_bindings_1_expr138, array_access, type_bindings_1_expr136, expression, range(type_bindings_1, 15731, 10, 458, 458), "_params[i]").
expr(type_bindings_1_expr136, method_invocation, type_bindings_1_expr135, operand, range(type_bindings_1, 15731, 33, 458, 458), "_params[i].equals(otherParams[i])").
expr(type_bindings_1_expr137, array_access, type_bindings_1_expr136, (arguments, 0), range(type_bindings_1, 15749, 14, 458, 458), "otherParams[i]").
%map_type_1 - com.fasterxml.jackson.databind.type.MapType
expr(map_type_1_expr1, super_constructor_invocation, map_type_1_block1, (statements, 0), range(map_type_1, 684, 115, 23, 24), "super(mapType,bindings,superClass,superInts,keyT,valueT,valueHandler,typeHandler,asStatic);").
expr(map_type_1_expr2, class_instance_creation, map_type_1_stmt2, expression, range(map_type_1, 1181, 86, 40, 40), "new MapType(rawType,bindings,superClass,superInts,keyT,valueT,null,null,false)").
expr(map_type_1_expr3, class_instance_creation, map_type_1_stmt3, expression, range(map_type_1, 4364, 153, 126, 128), "new MapType(rawType,bindings,superClass,superInterfaces,_keyType,_valueType,_valueHandler,_typeHandler,_asStatic)").
%type_parser_1 - com.fasterxml.jackson.databind.type.TypeParser
expr(type_parser_1_expr1, assignment, type_parser_1_stmt1, expression, range(type_parser_1, 464, 12, 19, 19), "_factory=f").
expr(type_parser_1_expr2, class_instance_creation, type_parser_1_code9, initializer, range(type_parser_1, 749, 33, 31, 31), "new MyTokenizer(canonical.trim())").
expr(type_parser_1_expr3, method_invocation, type_parser_1_expr2, (arguments, 0), range(type_parser_1, 765, 16, 31, 31), "canonical.trim()").
expr(type_parser_1_expr4, method_invocation, type_parser_1_code12, initializer, range(type_parser_1, 808, 17, 32, 32), "parseType(tokens)").
expr(type_parser_1_expr5, method_invocation, type_parser_1_stmt4, expression, range(type_parser_1, 867, 22, 34, 34), "tokens.hasMoreTokens()").
expr(type_parser_1_expr6, prefix_expression, type_parser_1_stmt6, expression, range(type_parser_1, 1119, 23, 43, 43), "!tokens.hasMoreTokens()").
expr(type_parser_1_expr7, method_invocation, type_parser_1_expr6, operand, range(type_parser_1, 1120, 22, 43, 43), "tokens.hasMoreTokens()").
expr(type_parser_1_expr8, method_invocation, type_parser_1_code17, initializer, range(type_parser_1, 1244, 37, 46, 46), "findClass(tokens.nextToken(),tokens)").
expr(type_parser_1_expr9, method_invocation, type_parser_1_expr8, (arguments, 0), range(type_parser_1, 1254, 18, 46, 46), "tokens.nextToken()").
expr(type_parser_1_expr10, method_invocation, type_parser_1_stmt8, expression, range(type_parser_1, 1354, 22, 49, 49), "tokens.hasMoreTokens()").
expr(type_parser_1_expr11, method_invocation, type_parser_1_code19, initializer, range(type_parser_1, 1407, 18, 50, 50), "tokens.nextToken()").
expr(type_parser_1_expr12, method_invocation, type_parser_1_stmt10, expression, range(type_parser_1, 1443, 17, 51, 51), "\"<\".equals(token)").
expr(type_parser_1_expr13, method_invocation, type_parser_1_code23, initializer, range(type_parser_1, 1512, 18, 52, 52), "parseTypes(tokens)").
expr(type_parser_1_expr14, method_invocation, type_parser_1_code25, initializer, range(type_parser_1, 1565, 41, 53, 53), "TypeBindings.create(base,parameterTypes)").
expr(type_parser_1_expr15, method_invocation, type_parser_1_stmt13, expression, range(type_parser_1, 1631, 34, 54, 54), "_factory._fromClass(null,base,b)").
expr(type_parser_1_expr16, method_invocation, type_parser_1_stmt14, expression, range(type_parser_1, 1758, 22, 57, 57), "tokens.pushBack(token)").
expr(type_parser_1_expr17, method_invocation, type_parser_1_stmt15, expression, range(type_parser_1, 1807, 37, 59, 59), "_factory._fromClass(null,base,null)").
expr(type_parser_1_expr18, class_instance_creation, type_parser_1_code30, initializer, range(type_parser_1, 1995, 25, 65, 65), "new ArrayList<JavaType>()").
expr(type_parser_1_expr19, method_invocation, type_parser_1_stmt17, expression, range(type_parser_1, 2037, 22, 66, 66), "tokens.hasMoreTokens()").
expr(type_parser_1_expr20, method_invocation, type_parser_1_stmt18, expression, range(type_parser_1, 2075, 28, 67, 67), "types.add(parseType(tokens))").
expr(type_parser_1_expr21, method_invocation, type_parser_1_expr20, (arguments, 0), range(type_parser_1, 2085, 17, 67, 67), "parseType(tokens)").
expr(type_parser_1_expr22, prefix_expression, type_parser_1_stmt19, expression, range(type_parser_1, 2121, 23, 68, 68), "!tokens.hasMoreTokens()").
expr(type_parser_1_expr23, method_invocation, type_parser_1_expr22, operand, range(type_parser_1, 2122, 22, 68, 68), "tokens.hasMoreTokens()").
expr(type_parser_1_expr24, method_invocation, type_parser_1_code35, initializer, range(type_parser_1, 2180, 18, 69, 69), "tokens.nextToken()").
expr(type_parser_1_expr25, method_invocation, type_parser_1_stmt22, expression, range(type_parser_1, 2216, 17, 70, 70), "\">\".equals(token)").
expr(type_parser_1_expr26, prefix_expression, type_parser_1_stmt24, expression, range(type_parser_1, 2265, 18, 71, 71), "!\",\".equals(token)").
expr(type_parser_1_expr27, method_invocation, type_parser_1_expr26, operand, range(type_parser_1, 2266, 17, 71, 71), "\",\".equals(token)").
expr(type_parser_1_expr28, method_invocation, type_parser_1_stmt26, expression, range(type_parser_1, 2582, 29, 81, 81), "_factory.findClass(className)").
expr(type_parser_1_expr29, super_constructor_invocation, type_parser_1_block13, (statements, 0), range(type_parser_1, 3389, 24, 105, 105), "super(str,\"<,>\",true);").
expr(type_parser_1_expr30, assignment, type_parser_1_stmt28, expression, range(type_parser_1, 3426, 12, 106, 106), "_input=str").
expr(type_parser_1_expr32, parenthesized_expression, type_parser_1_expr31, left_operand, range(type_parser_1, 3529, 24, 111, 111), "(_pushbackToken != null)").
expr(type_parser_1_expr31, infix_expression, type_parser_1_stmt29, expression, range(type_parser_1, 3529, 49, 111, 111), "(_pushbackToken != null) || super.hasMoreTokens()").
expr(type_parser_1_expr33, infix_expression, type_parser_1_expr32, expression, range(type_parser_1, 3530, 22, 111, 111), "_pushbackToken != null").
expr(type_parser_1_expr34, super_method_invocation, type_parser_1_expr31, right_operand, range(type_parser_1, 3557, 21, 111, 111), "super.hasMoreTokens()").
expr(type_parser_1_expr35, infix_expression, type_parser_1_stmt30, expression, range(type_parser_1, 3695, 22, 117, 117), "_pushbackToken != null").
expr(type_parser_1_expr36, assignment, type_parser_1_stmt31, expression, range(type_parser_1, 3737, 22, 118, 118), "token=_pushbackToken").
expr(type_parser_1_expr37, assignment, type_parser_1_stmt32, expression, range(type_parser_1, 3777, 21, 119, 119), "_pushbackToken=null").
expr(type_parser_1_expr38, assignment, type_parser_1_stmt33, expression, range(type_parser_1, 3837, 25, 121, 121), "token=super.nextToken()").
expr(type_parser_1_expr39, super_method_invocation, type_parser_1_expr38, right_hand_side, range(type_parser_1, 3845, 17, 121, 121), "super.nextToken()").
expr(type_parser_1_expr40, assignment, type_parser_1_stmt34, expression, range(type_parser_1, 3880, 24, 122, 122), "_index+=token.length()").
expr(type_parser_1_expr41, method_invocation, type_parser_1_expr40, right_hand_side, range(type_parser_1, 3890, 14, 122, 122), "token.length()").
expr(type_parser_1_expr42, assignment, type_parser_1_stmt35, expression, range(type_parser_1, 3922, 20, 123, 123), "token=token.trim()").
expr(type_parser_1_expr43, method_invocation, type_parser_1_expr42, right_hand_side, range(type_parser_1, 3930, 12, 123, 123), "token.trim()").
expr(type_parser_1_expr44, assignment, type_parser_1_stmt37, expression, range(type_parser_1, 4052, 22, 129, 129), "_pushbackToken=token").
%test_type_factory_1 - com.fasterxml.jackson.databind.type.TestTypeFactory
expr(test_type_factory_1_expr1, method_invocation, test_type_factory_1_code9, initializer, range(test_type_factory_1, 7445, 29, 211, 211), "TypeFactory.defaultInstance()").
expr(test_type_factory_1_expr2, method_invocation, test_type_factory_1_code11, initializer, range(test_type_factory_1, 7497, 42, 212, 212), "tf.constructType(java.util.Calendar.class)").
expr(test_type_factory_1_expr3, type_literal, test_type_factory_1_expr2, (arguments, 0), range(test_type_factory_1, 7514, 24, 212, 212), "java.util.Calendar.class").
expr(test_type_factory_1_expr4, method_invocation, test_type_factory_1_code14, initializer, range(test_type_factory_1, 7562, 15, 213, 213), "t.toCanonical()").
expr(test_type_factory_1_expr5, method_invocation, test_type_factory_1_stmt4, expression, range(test_type_factory_1, 7587, 39, 214, 214), "assertEquals(\"java.util.Calendar\",can)").
expr(test_type_factory_1_expr6, method_invocation, test_type_factory_1_stmt5, expression, range(test_type_factory_1, 7636, 47, 215, 215), "assertEquals(t,tf.constructFromCanonical(can))").
expr(test_type_factory_1_expr7, method_invocation, test_type_factory_1_expr6, (arguments, 1), range(test_type_factory_1, 7652, 30, 215, 215), "tf.constructFromCanonical(can)").
expr(test_type_factory_1_expr8, assignment, test_type_factory_1_stmt6, expression, range(test_type_factory_1, 7778, 47, 218, 218), "t=tf.constructType(java.util.ArrayList.class)").
expr(test_type_factory_1_expr9, method_invocation, test_type_factory_1_expr8, right_hand_side, range(test_type_factory_1, 7782, 43, 218, 218), "tf.constructType(java.util.ArrayList.class)").
expr(test_type_factory_1_expr10, type_literal, test_type_factory_1_expr9, (arguments, 0), range(test_type_factory_1, 7799, 25, 218, 218), "java.util.ArrayList.class").
expr(test_type_factory_1_expr11, assignment, test_type_factory_1_stmt7, expression, range(test_type_factory_1, 7835, 21, 219, 219), "can=t.toCanonical()").
expr(test_type_factory_1_expr12, method_invocation, test_type_factory_1_expr11, right_hand_side, range(test_type_factory_1, 7841, 15, 219, 219), "t.toCanonical()").
expr(test_type_factory_1_expr13, method_invocation, test_type_factory_1_stmt8, expression, range(test_type_factory_1, 7866, 58, 220, 220), "assertEquals(\"java.util.ArrayList<java.lang.Object>\",can)").
expr(test_type_factory_1_expr14, method_invocation, test_type_factory_1_stmt9, expression, range(test_type_factory_1, 7934, 47, 221, 221), "assertEquals(t,tf.constructFromCanonical(can))").
expr(test_type_factory_1_expr15, method_invocation, test_type_factory_1_expr14, (arguments, 1), range(test_type_factory_1, 7950, 30, 221, 221), "tf.constructFromCanonical(can)").
expr(test_type_factory_1_expr16, assignment, test_type_factory_1_stmt10, expression, range(test_type_factory_1, 7992, 45, 223, 223), "t=tf.constructType(java.util.TreeMap.class)").
expr(test_type_factory_1_expr17, method_invocation, test_type_factory_1_expr16, right_hand_side, range(test_type_factory_1, 7996, 41, 223, 223), "tf.constructType(java.util.TreeMap.class)").
expr(test_type_factory_1_expr18, type_literal, test_type_factory_1_expr17, (arguments, 0), range(test_type_factory_1, 8013, 23, 223, 223), "java.util.TreeMap.class").
expr(test_type_factory_1_expr19, assignment, test_type_factory_1_stmt11, expression, range(test_type_factory_1, 8047, 21, 224, 224), "can=t.toCanonical()").
expr(test_type_factory_1_expr20, method_invocation, test_type_factory_1_expr19, right_hand_side, range(test_type_factory_1, 8053, 15, 224, 224), "t.toCanonical()").
expr(test_type_factory_1_expr21, method_invocation, test_type_factory_1_stmt12, expression, range(test_type_factory_1, 8078, 73, 225, 225), "assertEquals(\"java.util.TreeMap<java.lang.Object,java.lang.Object>\",can)").
expr(test_type_factory_1_expr22, method_invocation, test_type_factory_1_stmt13, expression, range(test_type_factory_1, 8161, 47, 226, 226), "assertEquals(t,tf.constructFromCanonical(can))").
expr(test_type_factory_1_expr23, method_invocation, test_type_factory_1_expr22, (arguments, 1), range(test_type_factory_1, 8177, 30, 226, 226), "tf.constructFromCanonical(can)").
expr(test_type_factory_1_expr24, assignment, test_type_factory_1_stmt14, expression, range(test_type_factory_1, 8272, 76, 229, 229), "t=tf.constructMapType(EnumMap.class,EnumForCanonical.class,String.class)").
expr(test_type_factory_1_expr25, method_invocation, test_type_factory_1_expr24, right_hand_side, range(test_type_factory_1, 8276, 72, 229, 229), "tf.constructMapType(EnumMap.class,EnumForCanonical.class,String.class)").
expr(test_type_factory_1_expr26, type_literal, test_type_factory_1_expr25, (arguments, 0), range(test_type_factory_1, 8296, 13, 229, 229), "EnumMap.class").
expr(test_type_factory_1_expr27, type_literal, test_type_factory_1_expr25, (arguments, 1), range(test_type_factory_1, 8311, 22, 229, 229), "EnumForCanonical.class").
expr(test_type_factory_1_expr28, type_literal, test_type_factory_1_expr25, (arguments, 2), range(test_type_factory_1, 8335, 12, 229, 229), "String.class").
expr(test_type_factory_1_expr29, assignment, test_type_factory_1_stmt15, expression, range(test_type_factory_1, 8358, 21, 230, 230), "can=t.toCanonical()").
expr(test_type_factory_1_expr30, method_invocation, test_type_factory_1_expr29, right_hand_side, range(test_type_factory_1, 8364, 15, 230, 230), "t.toCanonical()").
expr(test_type_factory_1_expr31, method_invocation, test_type_factory_1_stmt16, expression, range(test_type_factory_1, 8389, 141, 231, 232), "assertEquals(\"java.util.EnumMap<com.fasterxml.jackson.databind.type.TestTypeFactory$EnumForCanonical,java.lang.String>\",can)").
expr(test_type_factory_1_expr32, method_invocation, test_type_factory_1_stmt17, expression, range(test_type_factory_1, 8540, 47, 233, 233), "assertEquals(t,tf.constructFromCanonical(can))").
expr(test_type_factory_1_expr33, method_invocation, test_type_factory_1_expr32, (arguments, 1), range(test_type_factory_1, 8556, 30, 233, 233), "tf.constructFromCanonical(can)").
expr(test_type_factory_1_expr34, assignment, test_type_factory_1_stmt18, expression, range(test_type_factory_1, 8649, 47, 237, 237), "t=tf.constructFromCanonical(\"java.util.List\")").
expr(test_type_factory_1_expr35, method_invocation, test_type_factory_1_expr34, right_hand_side, range(test_type_factory_1, 8653, 43, 237, 237), "tf.constructFromCanonical(\"java.util.List\")").
%type_base_1 - com.fasterxml.jackson.databind.type.TypeBase
expr(type_base_1_expr1, method_invocation, type_base_1_code8, initializer, range(type_base_1, 499, 28, 17, 17), "TypeBindings.emptyBindings()").
expr(type_base_1_expr2, array_creation, type_base_1_code16, initializer, range(type_base_1, 576, 15, 18, 18), "new JavaType[0]").
expr(type_base_1_expr3, super_constructor_invocation, type_base_1_block1, (statements, 0), range(type_base_1, 1336, 54, 45, 45), "super(raw,hash,valueHandler,typeHandler,asStatic);").
expr(type_base_1_expr4, assignment, type_base_1_stmt2, expression, range(type_base_1, 1399, 55, 46, 46), "_bindings=(bindings == null) ? NO_BINDINGS : bindings").
expr(type_base_1_expr5, conditional_expression, type_base_1_expr4, right_hand_side, range(type_base_1, 1411, 43, 46, 46), "(bindings == null) ? NO_BINDINGS : bindings").
expr(type_base_1_expr6, parenthesized_expression, type_base_1_expr5, expression, range(type_base_1, 1411, 18, 46, 46), "(bindings == null)").
expr(type_base_1_expr7, infix_expression, type_base_1_expr6, expression, range(type_base_1, 1412, 16, 46, 46), "bindings == null").
expr(type_base_1_expr8, assignment, type_base_1_stmt3, expression, range(type_base_1, 1464, 24, 47, 47), "_superClass=superClass").
expr(type_base_1_expr9, assignment, type_base_1_stmt4, expression, range(type_base_1, 1498, 28, 48, 48), "_superInterfaces=superInts").
expr(type_base_1_expr10, infix_expression, type_base_1_stmt6, expression, range(type_base_1, 1940, 11, 67, 67), "str == null").
expr(type_base_1_expr11, assignment, type_base_1_stmt7, expression, range(type_base_1, 1967, 26, 68, 68), "str=buildCanonicalName()").
expr(type_base_1_expr12, method_invocation, type_base_1_expr11, right_hand_side, range(type_base_1, 1973, 20, 68, 68), "buildCanonicalName()").

%%% Names
%collection_like_type_1 - com.fasterxml.jackson.databind.type.CollectionLikeType
name(p_coll_t_45, simple_name, collection_like_type_1_stmt1, (arguments, 0), range(collection_like_type_1, 1099, 5, 34, 34), 'collT').
name(p_bindings_46, simple_name, collection_like_type_1_stmt1, (arguments, 1), range(collection_like_type_1, 1106, 8, 34, 34), 'bindings').
name(p_super_class_47, simple_name, collection_like_type_1_stmt1, (arguments, 2), range(collection_like_type_1, 1116, 10, 34, 34), 'superClass').
name(p_super_ints_48, simple_name, collection_like_type_1_stmt1, (arguments, 3), range(collection_like_type_1, 1128, 9, 34, 34), 'superInts').
name(p_value_handler_50, simple_name, collection_like_type_1_stmt1, (arguments, 5), range(collection_like_type_1, 1173, 12, 35, 35), 'valueHandler').
name(p_type_handler_51, simple_name, collection_like_type_1_stmt1, (arguments, 6), range(collection_like_type_1, 1187, 11, 35, 35), 'typeHandler').
name(p_as_static_52, simple_name, collection_like_type_1_stmt1, (arguments, 7), range(collection_like_type_1, 1200, 8, 35, 35), 'asStatic').
name(f__element_type_53, simple_name, collection_like_type_1_expr3, left_hand_side, range(collection_like_type_1, 1219, 12, 36, 36), '_elementType').
name(p_elem_t_49, simple_name, collection_like_type_1_expr3, right_hand_side, range(collection_like_type_1, 1234, 5, 36, 36), 'elemT').
name(m_has_handlers_51, simple_name, collection_like_type_1_expr5, name, range(collection_like_type_1, 6583, 11, 194, 194), 'hasHandlers').
name(f__element_type_53, simple_name, collection_like_type_1_expr6, expression, range(collection_like_type_1, 6600, 12, 194, 194), '_elementType').
name(m_has_handlers_51, simple_name, collection_like_type_1_expr6, name, range(collection_like_type_1, 6613, 11, 194, 194), 'hasHandlers').
name(v_sb_78, simple_name, collection_like_type_1_code7, name, range(collection_like_type_1, 7102, 2, 213, 213), 'sb').
name(v_sb_78, simple_name, collection_like_type_1_expr8, expression, range(collection_like_type_1, 7136, 2, 214, 214), 'sb').
name(m_append_91, simple_name, collection_like_type_1_expr8, name, range(collection_like_type_1, 7139, 6, 214, 214), 'append').
name(f__class_6, simple_name, collection_like_type_1_expr9, expression, range(collection_like_type_1, 7146, 6, 214, 214), '_class').
name(m_get_name_3, simple_name, collection_like_type_1_expr9, name, range(collection_like_type_1, 7153, 7, 214, 214), 'getName').
name(f__element_type_53, simple_name, collection_like_type_1_expr10, left_operand, range(collection_like_type_1, 7177, 12, 215, 215), '_elementType').
name(v_sb_78, simple_name, collection_like_type_1_expr11, expression, range(collection_like_type_1, 7213, 2, 216, 216), 'sb').
name(m_append_92, simple_name, collection_like_type_1_expr11, name, range(collection_like_type_1, 7216, 6, 216, 216), 'append').
name(v_sb_78, simple_name, collection_like_type_1_expr12, expression, range(collection_like_type_1, 7241, 2, 217, 217), 'sb').
name(m_append_91, simple_name, collection_like_type_1_expr12, name, range(collection_like_type_1, 7244, 6, 217, 217), 'append').
name(f__element_type_53, simple_name, collection_like_type_1_expr13, expression, range(collection_like_type_1, 7251, 12, 217, 217), '_elementType').
name(m_to_canonical_93, simple_name, collection_like_type_1_expr13, name, range(collection_like_type_1, 7264, 11, 217, 217), 'toCanonical').
name(v_sb_78, simple_name, collection_like_type_1_expr14, expression, range(collection_like_type_1, 7292, 2, 218, 218), 'sb').
name(m_append_92, simple_name, collection_like_type_1_expr14, name, range(collection_like_type_1, 7295, 6, 218, 218), 'append').
name(v_sb_78, simple_name, collection_like_type_1_expr15, expression, range(collection_like_type_1, 7333, 2, 220, 220), 'sb').
name(m_to_string_94, simple_name, collection_like_type_1_expr15, name, range(collection_like_type_1, 7336, 8, 220, 220), 'toString').
name(p_o_79, simple_name, collection_like_type_1_expr16, left_operand, range(collection_like_type_1, 8116, 1, 248, 248), 'o').
name(p_o_79, simple_name, collection_like_type_1_expr18, left_operand, range(collection_like_type_1, 8152, 1, 249, 249), 'o').
name(p_o_79, simple_name, collection_like_type_1_expr20, expression, range(collection_like_type_1, 8189, 1, 250, 250), 'o').
name(m_get_class_97, simple_name, collection_like_type_1_expr20, name, range(collection_like_type_1, 8191, 8, 250, 250), 'getClass').
name(m_get_class_97, simple_name, collection_like_type_1_expr21, name, range(collection_like_type_1, 8205, 8, 250, 250), 'getClass').
name(v_other_80, simple_name, collection_like_type_1_code11, name, range(collection_like_type_1, 8259, 5, 252, 252), 'other').
name(p_o_79, simple_name, collection_like_type_1_expr22, expression, range(collection_like_type_1, 8288, 1, 252, 252), 'o').
name(f__class_6, simple_name, collection_like_type_1_expr25, left_operand, range(collection_like_type_1, 8308, 6, 253, 253), '_class').
name(v_other_80, simple_name, q__class_3, qualifier, range(collection_like_type_1, 8318, 5, 253, 253), 'other').
name(q__class_3, qualified_name, collection_like_type_1_expr25, right_operand, range(collection_like_type_1, 8318, 12, 253, 253), 'other._class').
name(f__element_type_53, simple_name, collection_like_type_1_expr26, expression, range(collection_like_type_1, 8335, 12, 253, 253), '_elementType').
name(m_equals_57, simple_name, collection_like_type_1_expr26, name, range(collection_like_type_1, 8348, 6, 253, 253), 'equals').
name(v_other_80, simple_name, q__element_type_4, qualifier, range(collection_like_type_1, 8355, 5, 253, 253), 'other').
name(q__element_type_4, qualified_name, collection_like_type_1_expr26, (arguments, 0), range(collection_like_type_1, 8355, 18, 253, 253), 'other._elementType').
%lrumap_1 - com.fasterxml.jackson.databind.util.LRUMap
name(f__map_637, simple_name, lrumap_1_expr1, left_hand_side, range(lrumap_1, 1366, 4, 35, 35), '_map').
name(p_initial_entries_635, simple_name, lrumap_1_expr2, (arguments, 0), range(lrumap_1, 1400, 14, 35, 35), 'initialEntries').
name(f__max_entries_638, simple_name, lrumap_1_expr3, left_hand_side, range(lrumap_1, 1434, 11, 36, 36), '_maxEntries').
name(p_max_entries_636, simple_name, lrumap_1_expr3, right_hand_side, range(lrumap_1, 1448, 10, 36, 36), 'maxEntries').
name(f__map_637, simple_name, lrumap_1_expr5, expression, range(lrumap_1, 2056, 4, 57, 57), '_map').
name(m_size_435, simple_name, lrumap_1_expr5, name, range(lrumap_1, 2061, 4, 57, 57), 'size').
name(f__max_entries_638, simple_name, lrumap_1_expr4, right_operand, range(lrumap_1, 2071, 11, 57, 57), '_maxEntries').
name(f__map_637, simple_name, lrumap_1_expr6, expression, range(lrumap_1, 2256, 4, 64, 64), '_map').
name(m_put_if_absent_436, simple_name, lrumap_1_expr6, name, range(lrumap_1, 2261, 11, 64, 64), 'putIfAbsent').
name(p_key_641, simple_name, lrumap_1_expr6, (arguments, 0), range(lrumap_1, 2273, 3, 64, 64), 'key').
name(p_value_642, simple_name, lrumap_1_expr6, (arguments, 1), range(lrumap_1, 2278, 5, 64, 64), 'value').
name(m_get_330, simple_name, lrumap_1_code9, name, range(lrumap_1, 2391, 3, 68, 68), 'get').
name(p_key_643, simple_name, lrumap_1_code12, name, range(lrumap_1, 2402, 3, 68, 68), 'key').
name(f__map_637, simple_name, lrumap_1_expr7, expression, range(lrumap_1, 2417, 4, 68, 68), '_map').
name(m_get_437, simple_name, lrumap_1_expr7, name, range(lrumap_1, 2422, 3, 68, 68), 'get').
name(p_key_643, simple_name, lrumap_1_expr7, (arguments, 0), range(lrumap_1, 2426, 3, 68, 68), 'key').
%class_stack_1 - com.fasterxml.jackson.databind.type.ClassStack
name(p_root_type_34, simple_name, class_stack_1_stmt1, (arguments, 1), range(class_stack_1, 501, 8, 21, 21), 'rootType').
name(m_class_stack_60, simple_name, class_stack_1_code4, name, range(class_stack_1, 531, 10, 24, 24), 'ClassStack').
name(p_parent_35, simple_name, class_stack_1_code6, name, range(class_stack_1, 553, 6, 24, 24), 'parent').
name(p_curr_36, simple_name, class_stack_1_code8, name, range(class_stack_1, 570, 4, 24, 24), 'curr').
name(f__parent_37, simple_name, class_stack_1_expr2, left_hand_side, range(class_stack_1, 586, 7, 25, 25), '_parent').
name(p_parent_35, simple_name, class_stack_1_expr2, right_hand_side, range(class_stack_1, 596, 6, 25, 25), 'parent').
name(f__current_38, simple_name, class_stack_1_expr3, left_hand_side, range(class_stack_1, 612, 8, 26, 26), '_current').
name(p_curr_36, simple_name, class_stack_1_expr3, right_hand_side, range(class_stack_1, 623, 4, 26, 26), 'curr').
name(p_cls_39, simple_name, class_stack_1_expr4, (arguments, 1), range(class_stack_1, 795, 3, 33, 33), 'cls').
name(f__self_refs_42, simple_name, class_stack_1_expr6, left_operand, range(class_stack_1, 1425, 9, 55, 55), '_selfRefs').
name(f__current_38, simple_name, class_stack_1_expr7, left_operand, range(class_stack_1, 1638, 8, 64, 64), '_current').
name(p_cls_43, simple_name, class_stack_1_expr7, right_operand, range(class_stack_1, 1650, 3, 64, 64), 'cls').
name(v_curr_44, simple_name, class_stack_1_code17, name, range(class_stack_1, 1692, 4, 65, 65), 'curr').
name(f__parent_37, simple_name, class_stack_1_code17, initializer, range(class_stack_1, 1699, 7, 65, 65), '_parent').
name(v_curr_44, simple_name, class_stack_1_expr10, left_operand, range(class_stack_1, 1708, 4, 65, 65), 'curr').
name(v_curr_44, simple_name, class_stack_1_expr11, left_hand_side, range(class_stack_1, 1722, 4, 65, 65), 'curr').
name(v_curr_44, simple_name, q__parent_1, qualifier, range(class_stack_1, 1729, 4, 65, 65), 'curr').
name(q__parent_1, qualified_name, class_stack_1_expr11, right_hand_side, range(class_stack_1, 1729, 12, 65, 65), 'curr._parent').
name(v_curr_44, simple_name, q__current_2, qualifier, range(class_stack_1, 1761, 4, 66, 66), 'curr').
name(q__current_2, qualified_name, class_stack_1_expr12, left_operand, range(class_stack_1, 1761, 13, 66, 66), 'curr._current').
name(p_cls_43, simple_name, class_stack_1_expr12, right_operand, range(class_stack_1, 1778, 3, 66, 66), 'cls').
%class_util_1 - com.fasterxml.jackson.databind.util.ClassUtil
name(f_cls_object_544, simple_name, class_util_1_code10, name, range(class_util_1, 417, 10, 15, 15), 'CLS_OBJECT').
name(f_no_annotations_545, simple_name, class_util_1_code19, name, range(class_util_1, 483, 14, 17, 17), 'NO_ANNOTATIONS').
name(f_no_ctors_546, simple_name, class_util_1_code30, name, range(class_util_1, 551, 8, 18, 18), 'NO_CTORS').
name(f_empty_iterator_547, simple_name, class_util_1_code41, name, range(class_util_1, 1317, 14, 36, 36), 'EMPTY_ITERATOR').
name(p_cls_623, simple_name, class_util_1_expr5, expression, range(class_util_1, 33720, 3, 989, 989), 'cls').
name(m_get_generic_superclass_418, simple_name, class_util_1_expr5, name, range(class_util_1, 33724, 20, 989, 989), 'getGenericSuperclass').
name(p_cls_624, simple_name, class_util_1_expr6, expression, range(class_util_1, 33866, 3, 996, 996), 'cls').
name(m_get_generic_interfaces_419, simple_name, class_util_1_expr6, name, range(class_util_1, 33870, 20, 996, 996), 'getGenericInterfaces').
%java_type_1 - com.fasterxml.jackson.databind.JavaType
name(f__class_6, simple_name, java_type_1_expr1, left_hand_side, range(java_type_1, 2595, 6, 79, 79), '_class').
name(p_raw_1, simple_name, java_type_1_expr1, right_hand_side, range(java_type_1, 2604, 3, 79, 79), 'raw').
name(f__hash_7, simple_name, java_type_1_expr2, left_hand_side, range(java_type_1, 2617, 5, 80, 80), '_hash').
name(p_raw_1, simple_name, java_type_1_expr5, expression, range(java_type_1, 2625, 3, 80, 80), 'raw').
name(m_get_name_3, simple_name, java_type_1_expr5, name, range(java_type_1, 2629, 7, 80, 80), 'getName').
name(m_hash_code_2, simple_name, java_type_1_expr4, name, range(java_type_1, 2639, 8, 80, 80), 'hashCode').
name(p_additional_hash_2, simple_name, java_type_1_expr3, right_operand, range(java_type_1, 2652, 14, 80, 80), 'additionalHash').
name(f__value_handler_8, simple_name, java_type_1_expr6, left_hand_side, range(java_type_1, 2676, 13, 81, 81), '_valueHandler').
name(p_value_handler_3, simple_name, java_type_1_expr6, right_hand_side, range(java_type_1, 2692, 12, 81, 81), 'valueHandler').
name(f__type_handler_9, simple_name, java_type_1_expr7, left_hand_side, range(java_type_1, 2714, 12, 82, 82), '_typeHandler').
name(p_type_handler_4, simple_name, java_type_1_expr7, right_hand_side, range(java_type_1, 2729, 11, 82, 82), 'typeHandler').
name(f__as_static_10, simple_name, java_type_1_expr8, left_hand_side, range(java_type_1, 2750, 9, 83, 83), '_asStatic').
name(p_as_static_5, simple_name, java_type_1_expr8, right_hand_side, range(java_type_1, 2762, 8, 83, 83), 'asStatic').
name(f__type_handler_9, simple_name, java_type_1_expr11, left_operand, range(java_type_1, 15859, 12, 490, 490), '_typeHandler').
name(f__value_handler_8, simple_name, java_type_1_expr13, left_operand, range(java_type_1, 15885, 13, 490, 490), '_valueHandler').
name(m_hash_code_58, simple_name, java_type_1_code5, name, range(java_type_1, 18135, 8, 562, 562), 'hashCode').
name(f__hash_7, simple_name, java_type_1_stmt7, expression, range(java_type_1, 18155, 5, 562, 562), '_hash').
%collection_type_1 - com.fasterxml.jackson.databind.type.CollectionType
name(p_coll_t_81, simple_name, collection_type_1_stmt1, (arguments, 0), range(collection_type_1, 715, 5, 25, 25), 'collT').
name(p_bindings_82, simple_name, collection_type_1_stmt1, (arguments, 1), range(collection_type_1, 722, 8, 25, 25), 'bindings').
name(p_super_class_83, simple_name, collection_type_1_stmt1, (arguments, 2), range(collection_type_1, 732, 10, 25, 25), 'superClass').
name(p_super_ints_84, simple_name, collection_type_1_stmt1, (arguments, 3), range(collection_type_1, 744, 9, 25, 25), 'superInts').
name(p_elem_t_85, simple_name, collection_type_1_stmt1, (arguments, 4), range(collection_type_1, 755, 5, 25, 25), 'elemT').
name(p_value_handler_86, simple_name, collection_type_1_stmt1, (arguments, 5), range(collection_type_1, 762, 12, 25, 25), 'valueHandler').
name(p_type_handler_87, simple_name, collection_type_1_stmt1, (arguments, 6), range(collection_type_1, 776, 11, 25, 25), 'typeHandler').
name(p_as_static_88, simple_name, collection_type_1_stmt1, (arguments, 7), range(collection_type_1, 789, 8, 25, 25), 'asStatic').
name(p_raw_type_91, simple_name, collection_type_1_expr2, (arguments, 0), range(collection_type_1, 1163, 7, 40, 40), 'rawType').
name(p_bindings_92, simple_name, collection_type_1_expr2, (arguments, 1), range(collection_type_1, 1172, 8, 40, 40), 'bindings').
name(p_super_class_93, simple_name, collection_type_1_expr2, (arguments, 2), range(collection_type_1, 1182, 10, 40, 40), 'superClass').
name(p_super_ints_94, simple_name, collection_type_1_expr2, (arguments, 3), range(collection_type_1, 1194, 9, 40, 40), 'superInts').
name(p_elem_t_95, simple_name, collection_type_1_expr2, (arguments, 4), range(collection_type_1, 1205, 5, 40, 40), 'elemT').
name(p_raw_type_104, simple_name, collection_type_1_expr3, (arguments, 0), range(collection_type_1, 4106, 7, 120, 120), 'rawType').
name(p_bindings_105, simple_name, collection_type_1_expr3, (arguments, 1), range(collection_type_1, 4115, 8, 120, 120), 'bindings').
name(p_super_class_106, simple_name, collection_type_1_expr3, (arguments, 2), range(collection_type_1, 4141, 10, 121, 121), 'superClass').
name(p_super_interfaces_107, simple_name, collection_type_1_expr3, (arguments, 3), range(collection_type_1, 4153, 15, 121, 121), 'superInterfaces').
name(f__element_type_53, simple_name, collection_type_1_expr3, (arguments, 4), range(collection_type_1, 4170, 12, 121, 121), '_elementType').
name(f__value_handler_8, simple_name, collection_type_1_expr3, (arguments, 5), range(collection_type_1, 4200, 13, 122, 122), '_valueHandler').
name(f__type_handler_9, simple_name, collection_type_1_expr3, (arguments, 6), range(collection_type_1, 4215, 12, 122, 122), '_typeHandler').
name(f__as_static_10, simple_name, collection_type_1_expr3, (arguments, 7), range(collection_type_1, 4229, 9, 122, 122), '_asStatic').
%map_like_type_1 - com.fasterxml.jackson.databind.type.MapLikeType
name(p_map_type_108, simple_name, map_like_type_1_stmt1, (arguments, 0), range(map_like_type_1, 1287, 7, 39, 39), 'mapType').
name(p_bindings_109, simple_name, map_like_type_1_stmt1, (arguments, 1), range(map_like_type_1, 1296, 8, 39, 39), 'bindings').
name(p_super_class_110, simple_name, map_like_type_1_stmt1, (arguments, 2), range(map_like_type_1, 1306, 10, 39, 39), 'superClass').
name(p_super_ints_111, simple_name, map_like_type_1_stmt1, (arguments, 3), range(map_like_type_1, 1318, 9, 39, 39), 'superInts').
name(p_key_t_112, simple_name, map_like_type_1_expr3, expression, range(map_like_type_1, 1329, 4, 39, 39), 'keyT').
name(m_hash_code_58, simple_name, map_like_type_1_expr3, name, range(map_like_type_1, 1334, 8, 39, 39), 'hashCode').
name(p_value_handler_114, simple_name, map_like_type_1_stmt1, (arguments, 5), range(map_like_type_1, 1382, 12, 40, 40), 'valueHandler').
name(p_type_handler_115, simple_name, map_like_type_1_stmt1, (arguments, 6), range(map_like_type_1, 1396, 11, 40, 40), 'typeHandler').
name(p_as_static_116, simple_name, map_like_type_1_stmt1, (arguments, 7), range(map_like_type_1, 1409, 8, 40, 40), 'asStatic').
name(f__key_type_117, simple_name, map_like_type_1_expr4, left_hand_side, range(map_like_type_1, 1428, 8, 41, 41), '_keyType').
name(p_key_t_112, simple_name, map_like_type_1_expr4, right_hand_side, range(map_like_type_1, 1439, 4, 41, 41), 'keyT').
name(f__value_type_118, simple_name, map_like_type_1_expr5, left_hand_side, range(map_like_type_1, 1453, 10, 42, 42), '_valueType').
name(p_value_t_113, simple_name, map_like_type_1_expr5, right_hand_side, range(map_like_type_1, 1466, 6, 42, 42), 'valueT').
name(v_sb_140, simple_name, map_like_type_1_code6, name, range(map_like_type_1, 6582, 2, 190, 190), 'sb').
name(v_sb_140, simple_name, map_like_type_1_expr7, expression, range(map_like_type_1, 6616, 2, 191, 191), 'sb').
name(m_append_91, simple_name, map_like_type_1_expr7, name, range(map_like_type_1, 6619, 6, 191, 191), 'append').
name(f__class_6, simple_name, map_like_type_1_expr8, expression, range(map_like_type_1, 6626, 6, 191, 191), '_class').
name(m_get_name_3, simple_name, map_like_type_1_expr8, name, range(map_like_type_1, 6633, 7, 191, 191), 'getName').
name(f__key_type_117, simple_name, map_like_type_1_expr9, left_operand, range(map_like_type_1, 6657, 8, 192, 192), '_keyType').
name(v_sb_140, simple_name, map_like_type_1_expr10, expression, range(map_like_type_1, 6689, 2, 193, 193), 'sb').
name(m_append_92, simple_name, map_like_type_1_expr10, name, range(map_like_type_1, 6692, 6, 193, 193), 'append').
name(v_sb_140, simple_name, map_like_type_1_expr11, expression, range(map_like_type_1, 6717, 2, 194, 194), 'sb').
name(m_append_91, simple_name, map_like_type_1_expr11, name, range(map_like_type_1, 6720, 6, 194, 194), 'append').
name(f__key_type_117, simple_name, map_like_type_1_expr12, expression, range(map_like_type_1, 6727, 8, 194, 194), '_keyType').
name(m_to_canonical_93, simple_name, map_like_type_1_expr12, name, range(map_like_type_1, 6736, 11, 194, 194), 'toCanonical').
name(v_sb_140, simple_name, map_like_type_1_expr13, expression, range(map_like_type_1, 6764, 2, 195, 195), 'sb').
name(m_append_92, simple_name, map_like_type_1_expr13, name, range(map_like_type_1, 6767, 6, 195, 195), 'append').
name(v_sb_140, simple_name, map_like_type_1_expr14, expression, range(map_like_type_1, 6792, 2, 196, 196), 'sb').
name(m_append_91, simple_name, map_like_type_1_expr14, name, range(map_like_type_1, 6795, 6, 196, 196), 'append').
name(f__value_type_118, simple_name, map_like_type_1_expr15, expression, range(map_like_type_1, 6802, 10, 196, 196), '_valueType').
name(m_to_canonical_93, simple_name, map_like_type_1_expr15, name, range(map_like_type_1, 6813, 11, 196, 196), 'toCanonical').
name(v_sb_140, simple_name, map_like_type_1_expr16, expression, range(map_like_type_1, 6841, 2, 197, 197), 'sb').
name(m_append_92, simple_name, map_like_type_1_expr16, name, range(map_like_type_1, 6844, 6, 197, 197), 'append').
name(v_sb_140, simple_name, map_like_type_1_expr17, expression, range(map_like_type_1, 6882, 2, 199, 199), 'sb').
name(m_to_string_94, simple_name, map_like_type_1_expr17, name, range(map_like_type_1, 6885, 8, 199, 199), 'toString').
name(m_has_handlers_51, simple_name, map_like_type_1_expr19, name, range(map_like_type_1, 7684, 11, 240, 240), 'hasHandlers').
name(f__value_type_118, simple_name, map_like_type_1_expr20, expression, range(map_like_type_1, 7701, 10, 240, 240), '_valueType').
name(m_has_handlers_51, simple_name, map_like_type_1_expr20, name, range(map_like_type_1, 7712, 11, 240, 240), 'hasHandlers').
name(p_o_145, simple_name, map_like_type_1_expr21, left_operand, range(map_like_type_1, 9622, 1, 300, 300), 'o').
name(p_o_145, simple_name, map_like_type_1_expr23, left_operand, range(map_like_type_1, 9658, 1, 301, 301), 'o').
name(p_o_145, simple_name, map_like_type_1_expr25, expression, range(map_like_type_1, 9695, 1, 302, 302), 'o').
name(m_get_class_97, simple_name, map_like_type_1_expr25, name, range(map_like_type_1, 9697, 8, 302, 302), 'getClass').
name(m_get_class_97, simple_name, map_like_type_1_expr26, name, range(map_like_type_1, 9711, 8, 302, 302), 'getClass').
name(v_other_146, simple_name, map_like_type_1_code11, name, range(map_like_type_1, 9758, 5, 304, 304), 'other').
name(p_o_145, simple_name, map_like_type_1_expr27, expression, range(map_like_type_1, 9780, 1, 304, 304), 'o').
name(f__class_6, simple_name, map_like_type_1_expr30, left_operand, range(map_like_type_1, 9799, 6, 305, 305), '_class').
name(v_other_146, simple_name, q__class_5, qualifier, range(map_like_type_1, 9809, 5, 305, 305), 'other').
name(q__class_5, qualified_name, map_like_type_1_expr30, right_operand, range(map_like_type_1, 9809, 12, 305, 305), 'other._class').
name(f__key_type_117, simple_name, map_like_type_1_expr31, expression, range(map_like_type_1, 9826, 8, 305, 305), '_keyType').
name(m_equals_57, simple_name, map_like_type_1_expr31, name, range(map_like_type_1, 9835, 6, 305, 305), 'equals').
name(v_other_146, simple_name, q__key_type_6, qualifier, range(map_like_type_1, 9842, 5, 305, 305), 'other').
name(q__key_type_6, qualified_name, map_like_type_1_expr31, (arguments, 0), range(map_like_type_1, 9842, 14, 305, 305), 'other._keyType').
%type_factory_1 - com.fasterxml.jackson.databind.type.TypeFactory
name(f_no_types_321, simple_name, type_factory_1_code10, name, range(type_factory_1, 1412, 8, 39, 39), 'NO_TYPES').
name(f_instance_322, simple_name, type_factory_1_code19, name, range(type_factory_1, 1713, 8, 46, 46), 'instance').
name(f_empty_bindings_323, simple_name, type_factory_1_code26, name, range(type_factory_1, 1784, 14, 48, 48), 'EMPTY_BINDINGS').
name(t_type_bindings_1, simple_name, type_factory_1_expr3, expression, range(type_factory_1, 1801, 12, 48, 48), 'TypeBindings').
name(m_empty_bindings_159, simple_name, type_factory_1_expr3, name, range(type_factory_1, 1814, 13, 48, 48), 'emptyBindings').
name(f_cls_string_324, simple_name, type_factory_1_code34, name, range(type_factory_1, 2233, 10, 60, 60), 'CLS_STRING').
name(f_cls_object_325, simple_name, type_factory_1_code43, name, range(type_factory_1, 2294, 10, 61, 61), 'CLS_OBJECT').
name(f_cls_comparable_326, simple_name, type_factory_1_code52, name, range(type_factory_1, 2356, 14, 63, 63), 'CLS_COMPARABLE').
name(f_cls_class_327, simple_name, type_factory_1_code61, name, range(type_factory_1, 2425, 9, 64, 64), 'CLS_CLASS').
name(f_cls_enum_328, simple_name, type_factory_1_code70, name, range(type_factory_1, 2484, 8, 65, 65), 'CLS_ENUM').
name(f_cls_bool_329, simple_name, type_factory_1_code79, name, range(type_factory_1, 2542, 8, 67, 67), 'CLS_BOOL').
name(q_type_18, qualified_name, type_factory_1_code79, initializer, range(type_factory_1, 2553, 12, 67, 67), 'Boolean.TYPE').
name(t_boolean_8, simple_name, q_type_18, qualifier, range(type_factory_1, 2553, 7, 67, 67), 'Boolean').
name(f_cls_int_330, simple_name, type_factory_1_code87, name, range(type_factory_1, 2601, 7, 68, 68), 'CLS_INT').
name(q_type_19, qualified_name, type_factory_1_code87, initializer, range(type_factory_1, 2611, 12, 68, 68), 'Integer.TYPE').
name(t_integer_9, simple_name, q_type_19, qualifier, range(type_factory_1, 2611, 7, 68, 68), 'Integer').
name(f_cls_long_331, simple_name, type_factory_1_code95, name, range(type_factory_1, 2659, 8, 69, 69), 'CLS_LONG').
name(t_long_10, simple_name, q_type_20, qualifier, range(type_factory_1, 2670, 4, 69, 69), 'Long').
name(q_type_20, qualified_name, type_factory_1_code95, initializer, range(type_factory_1, 2670, 9, 69, 69), 'Long.TYPE').
name(f_core_type_bool_332, simple_name, type_factory_1_code101, name, range(type_factory_1, 2968, 14, 78, 78), 'CORE_TYPE_BOOL').
name(f_cls_bool_329, simple_name, type_factory_1_expr9, (arguments, 0), range(type_factory_1, 3000, 8, 78, 78), 'CLS_BOOL').
name(f_core_type_int_333, simple_name, type_factory_1_code108, name, range(type_factory_1, 3049, 13, 79, 79), 'CORE_TYPE_INT').
name(f_cls_int_330, simple_name, type_factory_1_expr10, (arguments, 0), range(type_factory_1, 3080, 7, 79, 79), 'CLS_INT').
name(f_core_type_long_334, simple_name, type_factory_1_code115, name, range(type_factory_1, 3128, 14, 80, 80), 'CORE_TYPE_LONG').
name(f_cls_long_331, simple_name, type_factory_1_expr11, (arguments, 0), range(type_factory_1, 3160, 8, 80, 80), 'CLS_LONG').
name(f_core_type_string_335, simple_name, type_factory_1_code122, name, range(type_factory_1, 3275, 16, 83, 83), 'CORE_TYPE_STRING').
name(f_cls_string_324, simple_name, type_factory_1_expr12, (arguments, 0), range(type_factory_1, 3309, 10, 83, 83), 'CLS_STRING').
name(f_core_type_object_336, simple_name, type_factory_1_code129, name, range(type_factory_1, 3379, 16, 86, 86), 'CORE_TYPE_OBJECT').
name(f_cls_object_325, simple_name, type_factory_1_expr13, (arguments, 0), range(type_factory_1, 3413, 10, 86, 86), 'CLS_OBJECT').
name(f_core_type_comparable_337, simple_name, type_factory_1_code136, name, range(type_factory_1, 3672, 20, 94, 94), 'CORE_TYPE_COMPARABLE').
name(f_cls_comparable_326, simple_name, type_factory_1_expr14, (arguments, 0), range(type_factory_1, 3710, 14, 94, 94), 'CLS_COMPARABLE').
name(f_core_type_enum_338, simple_name, type_factory_1_code143, name, range(type_factory_1, 3951, 14, 102, 102), 'CORE_TYPE_ENUM').
name(f_cls_enum_328, simple_name, type_factory_1_expr15, (arguments, 0), range(type_factory_1, 3983, 8, 102, 102), 'CLS_ENUM').
name(f_core_type_class_339, simple_name, type_factory_1_code150, name, range(type_factory_1, 4182, 15, 110, 110), 'CORE_TYPE_CLASS').
name(f_cls_class_327, simple_name, type_factory_1_expr16, (arguments, 0), range(type_factory_1, 4215, 9, 110, 110), 'CLS_CLASS').
name(m_type_factory_262, simple_name, type_factory_1_code153, name, range(type_factory_1, 5270, 11, 151, 151), 'TypeFactory').
name(p_type_cache_340, simple_name, type_factory_1_code155, name, range(type_factory_1, 5306, 9, 151, 151), 'typeCache').
name(p_type_cache_340, simple_name, type_factory_1_expr18, left_operand, range(type_factory_1, 5331, 9, 152, 152), 'typeCache').
name(p_type_cache_340, simple_name, type_factory_1_expr19, left_hand_side, range(type_factory_1, 5364, 9, 153, 153), 'typeCache').
name(f__type_cache_341, simple_name, type_factory_1_expr21, left_hand_side, range(type_factory_1, 5432, 10, 155, 155), '_typeCache').
name(p_type_cache_340, simple_name, type_factory_1_expr21, right_hand_side, range(type_factory_1, 5445, 9, 155, 155), 'typeCache').
name(f__parser_342, simple_name, type_factory_1_expr22, left_hand_side, range(type_factory_1, 5464, 7, 156, 156), '_parser').
name(f__modifiers_343, simple_name, type_factory_1_expr25, left_hand_side, range(type_factory_1, 5504, 10, 157, 157), '_modifiers').
name(f__class_loader_344, simple_name, type_factory_1_expr26, left_hand_side, range(type_factory_1, 5531, 12, 158, 158), '_classLoader').
name(m_default_instance_189, simple_name, type_factory_1_code165, name, range(type_factory_1, 7457, 15, 211, 211), 'defaultInstance').
name(f_instance_322, simple_name, type_factory_1_stmt8, expression, range(type_factory_1, 7484, 8, 211, 211), 'instance').
name(f__class_loader_344, simple_name, type_factory_1_stmt9, expression, range(type_factory_1, 8069, 12, 228, 228), '_classLoader').
name(p_class_name_353, simple_name, type_factory_1_expr28, expression, range(type_factory_1, 9644, 9, 274, 274), 'className').
name(m_index_of_274, simple_name, type_factory_1_expr28, name, range(type_factory_1, 9654, 7, 274, 274), 'indexOf').
name(v_prob_354, simple_name, type_factory_1_code172, name, range(type_factory_1, 9907, 4, 281, 281), 'prob').
name(v_loader_355, simple_name, type_factory_1_code174, name, range(type_factory_1, 9940, 6, 282, 282), 'loader').
name(m_get_class_loader_270, simple_name, type_factory_1_expr29, name, range(type_factory_1, 9954, 14, 282, 282), 'getClassLoader').
name(v_loader_355, simple_name, type_factory_1_expr31, left_operand, range(type_factory_1, 9984, 6, 283, 283), 'loader').
name(v_loader_355, simple_name, type_factory_1_expr32, left_hand_side, range(type_factory_1, 10014, 6, 284, 284), 'loader').
name(t_thread_11, simple_name, type_factory_1_expr34, expression, range(type_factory_1, 10024, 6, 284, 284), 'Thread').
name(m_current_thread_276, simple_name, type_factory_1_expr34, name, range(type_factory_1, 10031, 13, 284, 284), 'currentThread').
name(m_get_context_class_loader_275, simple_name, type_factory_1_expr33, name, range(type_factory_1, 10047, 21, 284, 284), 'getContextClassLoader').
name(v_loader_355, simple_name, type_factory_1_expr35, left_operand, range(type_factory_1, 10094, 6, 286, 286), 'loader').
name(m_class_for_name_277, simple_name, type_factory_1_expr36, name, range(type_factory_1, 10153, 12, 288, 288), 'classForName').
name(p_class_name_353, simple_name, type_factory_1_expr36, (arguments, 0), range(type_factory_1, 10166, 9, 288, 288), 'className').
name(v_loader_355, simple_name, type_factory_1_expr36, (arguments, 2), range(type_factory_1, 10183, 6, 288, 288), 'loader').
name(t_class_12, simple_name, type_factory_1_expr37, expression, range(type_factory_1, 10845, 5, 308, 308), 'Class').
name(m_for_name_278, simple_name, type_factory_1_expr37, name, range(type_factory_1, 10851, 7, 308, 308), 'forName').
name(p_name_356, simple_name, type_factory_1_expr37, (arguments, 0), range(type_factory_1, 10859, 4, 308, 308), 'name').
name(p_loader_358, simple_name, type_factory_1_expr37, (arguments, 2), range(type_factory_1, 10871, 6, 308, 308), 'loader').
name(f__parser_342, simple_name, type_factory_1_expr38, expression, range(type_factory_1, 21248, 7, 536, 536), '_parser').
name(m_parse_286, simple_name, type_factory_1_expr38, name, range(type_factory_1, 21256, 5, 536, 536), 'parse').
name(p_canonical_372, simple_name, type_factory_1_expr38, (arguments, 0), range(type_factory_1, 21262, 9, 536, 536), 'canonical').
name(m__from_any_291, simple_name, type_factory_1_expr39, name, range(type_factory_1, 23619, 8, 610, 610), '_fromAny').
name(p_type_382, simple_name, type_factory_1_expr39, (arguments, 1), range(type_factory_1, 23634, 4, 610, 610), 'type').
name(f_empty_bindings_323, simple_name, type_factory_1_expr39, (arguments, 2), range(type_factory_1, 23640, 14, 610, 610), 'EMPTY_BINDINGS').
name(p_map_class_400, simple_name, type_factory_1_expr40, left_operand, range(type_factory_1, 29718, 8, 766, 766), 'mapClass').
name(v_kt_403, simple_name, type_factory_1_expr42, left_hand_side, range(type_factory_1, 29819, 2, 769, 769), 'kt').
name(m__from_class_302, simple_name, type_factory_1_expr43, name, range(type_factory_1, 29824, 10, 769, 769), '_fromClass').
name(p_key_class_401, simple_name, type_factory_1_expr43, (arguments, 1), range(type_factory_1, 29841, 8, 769, 769), 'keyClass').
name(f_empty_bindings_323, simple_name, type_factory_1_expr43, (arguments, 2), range(type_factory_1, 29851, 14, 769, 769), 'EMPTY_BINDINGS').
name(v_vt_404, simple_name, type_factory_1_expr44, left_hand_side, range(type_factory_1, 29880, 2, 770, 770), 'vt').
name(m__from_class_302, simple_name, type_factory_1_expr45, name, range(type_factory_1, 29885, 10, 770, 770), '_fromClass').
name(p_value_class_402, simple_name, type_factory_1_expr45, (arguments, 1), range(type_factory_1, 29902, 10, 770, 770), 'valueClass').
name(f_empty_bindings_323, simple_name, type_factory_1_expr45, (arguments, 2), range(type_factory_1, 29914, 14, 770, 770), 'EMPTY_BINDINGS').
name(m_construct_map_type_303, simple_name, type_factory_1_expr46, name, range(type_factory_1, 29956, 16, 772, 772), 'constructMapType').
name(p_map_class_400, simple_name, type_factory_1_expr46, (arguments, 0), range(type_factory_1, 29973, 8, 772, 772), 'mapClass').
name(v_kt_403, simple_name, type_factory_1_expr46, (arguments, 1), range(type_factory_1, 29983, 2, 772, 772), 'kt').
name(v_vt_404, simple_name, type_factory_1_expr46, (arguments, 2), range(type_factory_1, 29987, 2, 772, 772), 'vt').
name(m__from_class_302, simple_name, type_factory_1_expr48, name, range(type_factory_1, 30329, 10, 782, 782), '_fromClass').
name(p_map_class_405, simple_name, type_factory_1_expr48, (arguments, 1), range(type_factory_1, 30346, 8, 782, 782), 'mapClass').
name(p_raw_class_436, simple_name, type_factory_1_expr50, left_operand, range(type_factory_1, 40524, 8, 1030, 1030), 'rawClass').
name(v_type_params_440, simple_name, type_factory_1_code187, name, range(type_factory_1, 40640, 10, 1033, 1033), 'typeParams').
name(p_bindings_437, simple_name, type_factory_1_expr52, expression, range(type_factory_1, 40653, 8, 1033, 1033), 'bindings').
name(m_get_type_parameters_248, simple_name, type_factory_1_expr52, name, range(type_factory_1, 40662, 17, 1033, 1033), 'getTypeParameters').
name(v_type_params_440, simple_name, type_factory_1_expr53, expression, range(type_factory_1, 40746, 10, 1035, 1035), 'typeParams').
name(m_size_319, simple_name, type_factory_1_expr53, name, range(type_factory_1, 40757, 4, 1035, 1035), 'size').
name(v_kt_441, simple_name, type_factory_1_expr54, left_hand_side, range(type_factory_1, 40903, 2, 1040, 1040), 'kt').
name(v_type_params_440, simple_name, type_factory_1_expr55, expression, range(type_factory_1, 40908, 10, 1040, 1040), 'typeParams').
name(m_get_320, simple_name, type_factory_1_expr55, name, range(type_factory_1, 40919, 3, 1040, 1040), 'get').
name(v_vt_442, simple_name, type_factory_1_expr56, left_hand_side, range(type_factory_1, 40943, 2, 1041, 1041), 'vt').
name(v_type_params_440, simple_name, type_factory_1_expr57, expression, range(type_factory_1, 40948, 10, 1041, 1041), 'typeParams').
name(m_get_320, simple_name, type_factory_1_expr57, name, range(type_factory_1, 40959, 3, 1041, 1041), 'get').
name(t_map_type_13, simple_name, type_factory_1_expr58, expression, range(type_factory_1, 41180, 7, 1047, 1047), 'MapType').
name(m_construct_143, simple_name, type_factory_1_expr58, name, range(type_factory_1, 41188, 9, 1047, 1047), 'construct').
name(p_raw_class_436, simple_name, type_factory_1_expr58, (arguments, 0), range(type_factory_1, 41198, 8, 1047, 1047), 'rawClass').
name(p_bindings_437, simple_name, type_factory_1_expr58, (arguments, 1), range(type_factory_1, 41208, 8, 1047, 1047), 'bindings').
name(p_super_class_438, simple_name, type_factory_1_expr58, (arguments, 2), range(type_factory_1, 41218, 10, 1047, 1047), 'superClass').
name(p_super_interfaces_439, simple_name, type_factory_1_expr58, (arguments, 3), range(type_factory_1, 41230, 15, 1047, 1047), 'superInterfaces').
name(v_kt_441, simple_name, type_factory_1_expr58, (arguments, 4), range(type_factory_1, 41247, 2, 1047, 1047), 'kt').
name(v_vt_442, simple_name, type_factory_1_expr58, (arguments, 5), range(type_factory_1, 41251, 2, 1047, 1047), 'vt').
name(v_type_params_447, simple_name, type_factory_1_code192, name, range(type_factory_1, 41432, 10, 1053, 1053), 'typeParams').
name(p_bindings_444, simple_name, type_factory_1_expr59, expression, range(type_factory_1, 41445, 8, 1053, 1053), 'bindings').
name(m_get_type_parameters_248, simple_name, type_factory_1_expr59, name, range(type_factory_1, 41454, 17, 1053, 1053), 'getTypeParameters').
name(v_type_params_447, simple_name, type_factory_1_expr60, expression, range(type_factory_1, 41547, 10, 1056, 1056), 'typeParams').
name(m_is_empty_233, simple_name, type_factory_1_expr60, name, range(type_factory_1, 41558, 7, 1056, 1056), 'isEmpty').
name(v_type_params_447, simple_name, type_factory_1_expr62, expression, range(type_factory_1, 41623, 10, 1058, 1058), 'typeParams').
name(m_size_319, simple_name, type_factory_1_expr62, name, range(type_factory_1, 41634, 4, 1058, 1058), 'size').
name(v_ct_448, simple_name, type_factory_1_expr63, left_hand_side, range(type_factory_1, 41661, 2, 1059, 1059), 'ct').
name(v_type_params_447, simple_name, type_factory_1_expr64, expression, range(type_factory_1, 41666, 10, 1059, 1059), 'typeParams').
name(m_get_320, simple_name, type_factory_1_expr64, name, range(type_factory_1, 41677, 3, 1059, 1059), 'get').
name(t_collection_type_14, simple_name, type_factory_1_expr65, expression, range(type_factory_1, 41860, 14, 1063, 1063), 'CollectionType').
name(m_construct_101, simple_name, type_factory_1_expr65, name, range(type_factory_1, 41875, 9, 1063, 1063), 'construct').
name(p_raw_class_443, simple_name, type_factory_1_expr65, (arguments, 0), range(type_factory_1, 41885, 8, 1063, 1063), 'rawClass').
name(p_bindings_444, simple_name, type_factory_1_expr65, (arguments, 1), range(type_factory_1, 41895, 8, 1063, 1063), 'bindings').
name(p_super_class_445, simple_name, type_factory_1_expr65, (arguments, 2), range(type_factory_1, 41905, 10, 1063, 1063), 'superClass').
name(p_super_interfaces_446, simple_name, type_factory_1_expr65, (arguments, 3), range(type_factory_1, 41917, 15, 1063, 1063), 'superInterfaces').
name(v_ct_448, simple_name, type_factory_1_expr65, (arguments, 4), range(type_factory_1, 41934, 2, 1063, 1063), 'ct').
name(p_raw_457, simple_name, type_factory_1_expr66, (arguments, 0), range(type_factory_1, 43744, 3, 1112, 1112), 'raw').
name(p_bindings_458, simple_name, type_factory_1_expr66, (arguments, 1), range(type_factory_1, 43749, 8, 1112, 1112), 'bindings').
name(p_super_class_459, simple_name, type_factory_1_expr66, (arguments, 2), range(type_factory_1, 43759, 10, 1112, 1112), 'superClass').
name(p_super_interfaces_460, simple_name, type_factory_1_expr66, (arguments, 3), range(type_factory_1, 43771, 15, 1112, 1112), 'superInterfaces').
name(p_clz_461, simple_name, type_factory_1_expr67, expression, range(type_factory_1, 44523, 3, 1132, 1132), 'clz').
name(m_is_primitive_327, simple_name, type_factory_1_expr67, name, range(type_factory_1, 44527, 11, 1132, 1132), 'isPrimitive').
name(p_clz_461, simple_name, type_factory_1_expr68, left_operand, range(type_factory_1, 44743, 3, 1137, 1137), 'clz').
name(f_cls_string_324, simple_name, type_factory_1_expr68, right_operand, range(type_factory_1, 44750, 10, 1137, 1137), 'CLS_STRING').
name(f_core_type_string_335, simple_name, type_factory_1_stmt41, expression, range(type_factory_1, 44769, 16, 1137, 1137), 'CORE_TYPE_STRING').
name(p_clz_461, simple_name, type_factory_1_expr69, left_operand, range(type_factory_1, 44803, 3, 1138, 1138), 'clz').
name(f_cls_object_325, simple_name, type_factory_1_expr69, right_operand, range(type_factory_1, 44810, 10, 1138, 1138), 'CLS_OBJECT').
name(f_core_type_object_336, simple_name, type_factory_1_stmt43, expression, range(type_factory_1, 44829, 16, 1138, 1138), 'CORE_TYPE_OBJECT').
name(p_type_463, simple_name, type_factory_1_expr70, left_operand, range(type_factory_1, 45446, 4, 1159, 1159), 'type').
name(v_result_type_465, simple_name, type_factory_1_expr71, left_hand_side, range(type_factory_1, 45570, 10, 1161, 1161), 'resultType').
name(m__from_class_302, simple_name, type_factory_1_expr72, name, range(type_factory_1, 45583, 10, 1161, 1161), '_fromClass').
name(p_context_462, simple_name, type_factory_1_expr72, (arguments, 0), range(type_factory_1, 45594, 7, 1161, 1161), 'context').
name(p_type_463, simple_name, type_factory_1_expr73, expression, range(type_factory_1, 45614, 4, 1161, 1161), 'type').
name(f_empty_bindings_323, simple_name, type_factory_1_expr72, (arguments, 2), range(type_factory_1, 45620, 14, 1161, 1161), 'EMPTY_BINDINGS').
name(p_type_463, simple_name, type_factory_1_expr74, left_operand, range(type_factory_1, 45712, 4, 1164, 1164), 'type').
name(v_result_type_465, simple_name, type_factory_1_expr75, left_hand_side, range(type_factory_1, 45761, 10, 1165, 1165), 'resultType').
name(m__from_param_type_328, simple_name, type_factory_1_expr76, name, range(type_factory_1, 45774, 14, 1165, 1165), '_fromParamType').
name(p_context_462, simple_name, type_factory_1_expr76, (arguments, 0), range(type_factory_1, 45789, 7, 1165, 1165), 'context').
name(p_type_463, simple_name, type_factory_1_expr77, expression, range(type_factory_1, 45818, 4, 1165, 1165), 'type').
name(p_bindings_464, simple_name, type_factory_1_expr76, (arguments, 2), range(type_factory_1, 45824, 8, 1165, 1165), 'bindings').
name(p_type_463, simple_name, type_factory_1_expr78, left_operand, range(type_factory_1, 45862, 4, 1167, 1167), 'type').
name(p_type_463, simple_name, type_factory_1_expr79, left_operand, range(type_factory_1, 46039, 4, 1171, 1171), 'type').
name(p_type_463, simple_name, type_factory_1_expr80, left_operand, range(type_factory_1, 46187, 4, 1174, 1174), 'type').
name(v_result_type_465, simple_name, type_factory_1_expr81, left_hand_side, range(type_factory_1, 46234, 10, 1175, 1175), 'resultType').
name(m__from_variable_329, simple_name, type_factory_1_expr82, name, range(type_factory_1, 46247, 13, 1175, 1175), '_fromVariable').
name(p_context_462, simple_name, type_factory_1_expr82, (arguments, 0), range(type_factory_1, 46261, 7, 1175, 1175), 'context').
name(p_type_463, simple_name, type_factory_1_expr83, expression, range(type_factory_1, 46288, 4, 1175, 1175), 'type').
name(p_bindings_464, simple_name, type_factory_1_expr82, (arguments, 2), range(type_factory_1, 46294, 8, 1175, 1175), 'bindings').
name(f__modifiers_343, simple_name, type_factory_1_expr84, left_operand, range(type_factory_1, 46808, 10, 1186, 1186), '_modifiers').
name(v_result_type_465, simple_name, type_factory_1_stmt54, expression, range(type_factory_1, 47432, 10, 1201, 1201), 'resultType').
name(v_result_469, simple_name, type_factory_1_code215, name, range(type_factory_1, 47763, 6, 1211, 1211), 'result').
name(m__find_well_known_simple_326, simple_name, type_factory_1_expr85, name, range(type_factory_1, 47772, 20, 1211, 1211), '_findWellKnownSimple').
name(p_raw_type_467, simple_name, type_factory_1_expr85, (arguments, 0), range(type_factory_1, 47793, 7, 1211, 1211), 'rawType').
name(v_result_469, simple_name, type_factory_1_expr86, left_operand, range(type_factory_1, 47815, 6, 1212, 1212), 'result').
name(v_result_469, simple_name, type_factory_1_stmt57, expression, range(type_factory_1, 47852, 6, 1213, 1213), 'result').
name(p_bindings_468, simple_name, type_factory_1_expr89, left_operand, range(type_factory_1, 47979, 8, 1217, 1217), 'bindings').
name(p_bindings_468, simple_name, type_factory_1_expr90, expression, range(type_factory_1, 48000, 8, 1217, 1217), 'bindings').
name(m_is_empty_245, simple_name, type_factory_1_expr90, name, range(type_factory_1, 48009, 7, 1217, 1217), 'isEmpty').
name(v_key_470, simple_name, type_factory_1_expr91, left_hand_side, range(type_factory_1, 48034, 3, 1218, 1218), 'key').
name(p_raw_type_467, simple_name, type_factory_1_expr91, right_hand_side, range(type_factory_1, 48040, 7, 1218, 1218), 'rawType').
name(v_key_470, simple_name, type_factory_1_expr92, left_hand_side, range(type_factory_1, 48078, 3, 1220, 1220), 'key').
name(p_bindings_468, simple_name, type_factory_1_expr93, expression, range(type_factory_1, 48084, 8, 1220, 1220), 'bindings').
name(m_as_key_251, simple_name, type_factory_1_expr93, name, range(type_factory_1, 48093, 5, 1220, 1220), 'asKey').
name(p_raw_type_467, simple_name, type_factory_1_expr93, (arguments, 0), range(type_factory_1, 48099, 7, 1220, 1220), 'rawType').
name(v_result_469, simple_name, type_factory_1_expr94, left_hand_side, range(type_factory_1, 48127, 6, 1222, 1222), 'result').
name(f__type_cache_341, simple_name, type_factory_1_expr95, expression, range(type_factory_1, 48136, 10, 1222, 1222), '_typeCache').
name(m_get_330, simple_name, type_factory_1_expr95, name, range(type_factory_1, 48147, 3, 1222, 1222), 'get').
name(v_key_470, simple_name, type_factory_1_expr95, (arguments, 0), range(type_factory_1, 48151, 3, 1222, 1222), 'key').
name(v_result_469, simple_name, type_factory_1_expr96, left_operand, range(type_factory_1, 48199, 6, 1223, 1223), 'result').
name(v_result_469, simple_name, type_factory_1_stmt63, expression, range(type_factory_1, 48236, 6, 1224, 1224), 'result').
name(p_context_466, simple_name, type_factory_1_expr97, left_operand, range(type_factory_1, 48318, 7, 1228, 1228), 'context').
name(p_context_466, simple_name, type_factory_1_expr98, left_hand_side, range(type_factory_1, 48349, 7, 1229, 1229), 'context').
name(p_raw_type_467, simple_name, type_factory_1_expr99, (arguments, 0), range(type_factory_1, 48374, 7, 1229, 1229), 'rawType').
name(v_prev_471, simple_name, type_factory_1_code218, name, range(type_factory_1, 48424, 4, 1231, 1231), 'prev').
name(p_context_466, simple_name, type_factory_1_expr100, expression, range(type_factory_1, 48431, 7, 1231, 1231), 'context').
name(m_find_64, simple_name, type_factory_1_expr100, name, range(type_factory_1, 48439, 4, 1231, 1231), 'find').
name(p_raw_type_467, simple_name, type_factory_1_expr100, (arguments, 0), range(type_factory_1, 48444, 7, 1231, 1231), 'rawType').
name(v_prev_471, simple_name, type_factory_1_expr101, left_operand, range(type_factory_1, 48470, 4, 1232, 1232), 'prev').
name(p_context_466, simple_name, type_factory_1_expr102, left_hand_side, range(type_factory_1, 48842, 7, 1239, 1239), 'context').
name(p_context_466, simple_name, type_factory_1_expr103, expression, range(type_factory_1, 48852, 7, 1239, 1239), 'context').
name(m_child_61, simple_name, type_factory_1_expr103, name, range(type_factory_1, 48860, 5, 1239, 1239), 'child').
name(p_raw_type_467, simple_name, type_factory_1_expr103, (arguments, 0), range(type_factory_1, 48866, 7, 1239, 1239), 'rawType').
name(p_raw_type_467, simple_name, type_factory_1_expr104, expression, range(type_factory_1, 48943, 7, 1243, 1243), 'rawType').
name(m_is_array_331, simple_name, type_factory_1_expr104, name, range(type_factory_1, 48951, 7, 1243, 1243), 'isArray').
name(p_raw_type_467, simple_name, type_factory_1_expr105, expression, range(type_factory_1, 49293, 7, 1252, 1252), 'rawType').
name(m_is_interface_332, simple_name, type_factory_1_expr105, name, range(type_factory_1, 49301, 11, 1252, 1252), 'isInterface').
name(v_super_class_472, simple_name, type_factory_1_expr106, left_hand_side, range(type_factory_1, 49334, 10, 1253, 1253), 'superClass').
name(v_super_interfaces_473, simple_name, type_factory_1_expr107, left_hand_side, range(type_factory_1, 49369, 15, 1254, 1254), 'superInterfaces').
name(m__resolve_super_interfaces_333, simple_name, type_factory_1_expr108, name, range(type_factory_1, 49387, 23, 1254, 1254), '_resolveSuperInterfaces').
name(p_context_466, simple_name, type_factory_1_expr108, (arguments, 0), range(type_factory_1, 49411, 7, 1254, 1254), 'context').
name(p_raw_type_467, simple_name, type_factory_1_expr108, (arguments, 1), range(type_factory_1, 49420, 7, 1254, 1254), 'rawType').
name(p_bindings_468, simple_name, type_factory_1_expr108, (arguments, 2), range(type_factory_1, 49429, 8, 1254, 1254), 'bindings').
name(v_super_class_472, simple_name, type_factory_1_expr109, left_hand_side, range(type_factory_1, 49561, 10, 1257, 1257), 'superClass').
name(m__resolve_super_class_334, simple_name, type_factory_1_expr110, name, range(type_factory_1, 49574, 18, 1257, 1257), '_resolveSuperClass').
name(p_context_466, simple_name, type_factory_1_expr110, (arguments, 0), range(type_factory_1, 49593, 7, 1257, 1257), 'context').
name(p_raw_type_467, simple_name, type_factory_1_expr110, (arguments, 1), range(type_factory_1, 49602, 7, 1257, 1257), 'rawType').
name(p_bindings_468, simple_name, type_factory_1_expr110, (arguments, 2), range(type_factory_1, 49611, 8, 1257, 1257), 'bindings').
name(v_super_interfaces_473, simple_name, type_factory_1_expr111, left_hand_side, range(type_factory_1, 49638, 15, 1258, 1258), 'superInterfaces').
name(m__resolve_super_interfaces_333, simple_name, type_factory_1_expr112, name, range(type_factory_1, 49656, 23, 1258, 1258), '_resolveSuperInterfaces').
name(p_context_466, simple_name, type_factory_1_expr112, (arguments, 0), range(type_factory_1, 49680, 7, 1258, 1258), 'context').
name(p_raw_type_467, simple_name, type_factory_1_expr112, (arguments, 1), range(type_factory_1, 49689, 7, 1258, 1258), 'rawType').
name(p_bindings_468, simple_name, type_factory_1_expr112, (arguments, 2), range(type_factory_1, 49698, 8, 1258, 1258), 'bindings').
name(p_raw_type_467, simple_name, type_factory_1_expr113, left_operand, range(type_factory_1, 49835, 7, 1262, 1262), 'rawType').
name(v_super_class_472, simple_name, type_factory_1_expr115, left_operand, range(type_factory_1, 50199, 10, 1268, 1268), 'superClass').
name(v_result_469, simple_name, type_factory_1_expr116, left_hand_side, range(type_factory_1, 50237, 6, 1269, 1269), 'result').
name(v_super_class_472, simple_name, type_factory_1_expr117, expression, range(type_factory_1, 50246, 10, 1269, 1269), 'superClass').
name(m_refine_12, simple_name, type_factory_1_expr117, name, range(type_factory_1, 50257, 6, 1269, 1269), 'refine').
name(p_raw_type_467, simple_name, type_factory_1_expr117, (arguments, 0), range(type_factory_1, 50264, 7, 1269, 1269), 'rawType').
name(p_bindings_468, simple_name, type_factory_1_expr117, (arguments, 1), range(type_factory_1, 50273, 8, 1269, 1269), 'bindings').
name(v_super_class_472, simple_name, type_factory_1_expr117, (arguments, 2), range(type_factory_1, 50283, 10, 1269, 1269), 'superClass').
name(v_super_interfaces_473, simple_name, type_factory_1_expr117, (arguments, 3), range(type_factory_1, 50295, 15, 1269, 1269), 'superInterfaces').
name(v_result_469, simple_name, type_factory_1_expr118, left_operand, range(type_factory_1, 50428, 6, 1272, 1272), 'result').
name(v_result_469, simple_name, type_factory_1_expr119, left_hand_side, range(type_factory_1, 50462, 6, 1273, 1273), 'result').
name(m__from_well_known_class_335, simple_name, type_factory_1_expr120, name, range(type_factory_1, 50471, 19, 1273, 1273), '_fromWellKnownClass').
name(p_context_466, simple_name, type_factory_1_expr120, (arguments, 0), range(type_factory_1, 50491, 7, 1273, 1273), 'context').
name(p_raw_type_467, simple_name, type_factory_1_expr120, (arguments, 1), range(type_factory_1, 50500, 7, 1273, 1273), 'rawType').
name(p_bindings_468, simple_name, type_factory_1_expr120, (arguments, 2), range(type_factory_1, 50509, 8, 1273, 1273), 'bindings').
name(v_super_class_472, simple_name, type_factory_1_expr120, (arguments, 3), range(type_factory_1, 50519, 10, 1273, 1273), 'superClass').
name(v_super_interfaces_473, simple_name, type_factory_1_expr120, (arguments, 4), range(type_factory_1, 50531, 15, 1273, 1273), 'superInterfaces').
name(v_result_469, simple_name, type_factory_1_expr121, left_operand, range(type_factory_1, 50570, 6, 1274, 1274), 'result').
name(v_result_469, simple_name, type_factory_1_expr122, left_hand_side, range(type_factory_1, 50608, 6, 1275, 1275), 'result').
name(m__from_well_known_interface_336, simple_name, type_factory_1_expr123, name, range(type_factory_1, 50617, 23, 1275, 1275), '_fromWellKnownInterface').
name(p_context_466, simple_name, type_factory_1_expr123, (arguments, 0), range(type_factory_1, 50641, 7, 1275, 1275), 'context').
name(p_raw_type_467, simple_name, type_factory_1_expr123, (arguments, 1), range(type_factory_1, 50650, 7, 1275, 1275), 'rawType').
name(p_bindings_468, simple_name, type_factory_1_expr123, (arguments, 2), range(type_factory_1, 50659, 8, 1275, 1275), 'bindings').
name(v_super_class_472, simple_name, type_factory_1_expr123, (arguments, 3), range(type_factory_1, 50669, 10, 1275, 1275), 'superClass').
name(v_super_interfaces_473, simple_name, type_factory_1_expr123, (arguments, 4), range(type_factory_1, 50681, 15, 1275, 1275), 'superInterfaces').
name(v_result_469, simple_name, type_factory_1_expr124, left_operand, range(type_factory_1, 50723, 6, 1276, 1276), 'result').
name(v_result_469, simple_name, type_factory_1_expr125, left_hand_side, range(type_factory_1, 50837, 6, 1278, 1278), 'result').
name(m__new_simple_type_324, simple_name, type_factory_1_expr126, name, range(type_factory_1, 50846, 14, 1278, 1278), '_newSimpleType').
name(p_raw_type_467, simple_name, type_factory_1_expr126, (arguments, 0), range(type_factory_1, 50861, 7, 1278, 1278), 'rawType').
name(p_bindings_468, simple_name, type_factory_1_expr126, (arguments, 1), range(type_factory_1, 50870, 8, 1278, 1278), 'bindings').
name(v_super_class_472, simple_name, type_factory_1_expr126, (arguments, 2), range(type_factory_1, 50880, 10, 1278, 1278), 'superClass').
name(v_super_interfaces_473, simple_name, type_factory_1_expr126, (arguments, 3), range(type_factory_1, 50892, 15, 1278, 1278), 'superInterfaces').
name(p_context_466, simple_name, type_factory_1_expr127, expression, range(type_factory_1, 50982, 7, 1283, 1283), 'context').
name(m_resolve_self_references_63, simple_name, type_factory_1_expr127, name, range(type_factory_1, 50990, 21, 1283, 1283), 'resolveSelfReferences').
name(v_result_469, simple_name, type_factory_1_expr127, (arguments, 0), range(type_factory_1, 51012, 6, 1283, 1283), 'result').
name(v_result_469, simple_name, type_factory_1_expr129, expression, range(type_factory_1, 51228, 6, 1286, 1286), 'result').
name(m_has_handlers_51, simple_name, type_factory_1_expr129, name, range(type_factory_1, 51235, 11, 1286, 1286), 'hasHandlers').
name(f__type_cache_341, simple_name, type_factory_1_expr130, expression, range(type_factory_1, 51264, 10, 1287, 1287), '_typeCache').
name(m_put_if_absent_337, simple_name, type_factory_1_expr130, name, range(type_factory_1, 51275, 11, 1287, 1287), 'putIfAbsent').
name(v_key_470, simple_name, type_factory_1_expr130, (arguments, 0), range(type_factory_1, 51287, 3, 1287, 1287), 'key').
name(v_result_469, simple_name, type_factory_1_expr130, (arguments, 1), range(type_factory_1, 51292, 6, 1287, 1287), 'result').
name(v_result_469, simple_name, type_factory_1_stmt87, expression, range(type_factory_1, 51348, 6, 1289, 1289), 'result').
name(v_parent_477, simple_name, type_factory_1_code222, name, range(type_factory_1, 51491, 6, 1294, 1294), 'parent').
name(t_class_util_15, simple_name, type_factory_1_expr131, expression, range(type_factory_1, 51500, 9, 1294, 1294), 'ClassUtil').
name(m_get_generic_superclass_338, simple_name, type_factory_1_expr131, name, range(type_factory_1, 51510, 20, 1294, 1294), 'getGenericSuperclass').
name(p_raw_type_475, simple_name, type_factory_1_expr131, (arguments, 0), range(type_factory_1, 51531, 7, 1294, 1294), 'rawType').
name(v_parent_477, simple_name, type_factory_1_expr132, left_operand, range(type_factory_1, 51553, 6, 1295, 1295), 'parent').
name(m__from_any_291, simple_name, type_factory_1_expr133, name, range(type_factory_1, 51621, 8, 1298, 1298), '_fromAny').
name(p_context_474, simple_name, type_factory_1_expr133, (arguments, 0), range(type_factory_1, 51630, 7, 1298, 1298), 'context').
name(v_parent_477, simple_name, type_factory_1_expr133, (arguments, 1), range(type_factory_1, 51639, 6, 1298, 1298), 'parent').
name(p_parent_bindings_476, simple_name, type_factory_1_expr133, (arguments, 2), range(type_factory_1, 51647, 14, 1298, 1298), 'parentBindings').
name(v_types_481, simple_name, type_factory_1_code227, name, range(type_factory_1, 51808, 5, 1303, 1303), 'types').
name(t_class_util_15, simple_name, type_factory_1_expr134, expression, range(type_factory_1, 51816, 9, 1303, 1303), 'ClassUtil').
name(m_get_generic_interfaces_339, simple_name, type_factory_1_expr134, name, range(type_factory_1, 51826, 20, 1303, 1303), 'getGenericInterfaces').
name(p_raw_type_479, simple_name, type_factory_1_expr134, (arguments, 0), range(type_factory_1, 51847, 7, 1303, 1303), 'rawType').
name(v_types_481, simple_name, type_factory_1_expr136, left_operand, range(type_factory_1, 51869, 5, 1304, 1304), 'types').
name(q_length_21, qualified_name, type_factory_1_expr137, left_operand, range(type_factory_1, 51886, 12, 1304, 1304), 'types.length').
name(v_types_481, simple_name, q_length_21, qualifier, range(type_factory_1, 51886, 5, 1304, 1304), 'types').
name(f_no_types_321, simple_name, type_factory_1_stmt93, expression, range(type_factory_1, 51926, 8, 1305, 1305), 'NO_TYPES').
name(v_len_482, simple_name, type_factory_1_code229, name, range(type_factory_1, 51958, 3, 1307, 1307), 'len').
name(v_types_481, simple_name, q_length_22, qualifier, range(type_factory_1, 51964, 5, 1307, 1307), 'types').
name(q_length_22, qualified_name, type_factory_1_code229, initializer, range(type_factory_1, 51964, 12, 1307, 1307), 'types.length').
name(v_resolved_483, simple_name, type_factory_1_code233, name, range(type_factory_1, 51997, 8, 1308, 1308), 'resolved').
name(v_len_482, simple_name, type_factory_1_expr138, (dimensions, 0), range(type_factory_1, 52021, 3, 1308, 1308), 'len').
name(v_i_484, simple_name, type_factory_1_code238, name, range(type_factory_1, 52044, 1, 1309, 1309), 'i').
name(v_i_484, simple_name, type_factory_1_expr140, left_operand, range(type_factory_1, 52051, 1, 1309, 1309), 'i').
name(v_len_482, simple_name, type_factory_1_expr140, right_operand, range(type_factory_1, 52055, 3, 1309, 1309), 'len').
name(v_i_484, simple_name, type_factory_1_expr141, operand, range(type_factory_1, 52062, 1, 1309, 1309), 'i').
name(v_type_485, simple_name, type_factory_1_code240, name, range(type_factory_1, 52084, 4, 1310, 1310), 'type').
name(v_types_481, simple_name, type_factory_1_expr142, array, range(type_factory_1, 52091, 5, 1310, 1310), 'types').
name(v_i_484, simple_name, type_factory_1_expr142, index, range(type_factory_1, 52097, 1, 1310, 1310), 'i').
name(v_resolved_483, simple_name, type_factory_1_expr144, array, range(type_factory_1, 52113, 8, 1311, 1311), 'resolved').
name(v_i_484, simple_name, type_factory_1_expr144, index, range(type_factory_1, 52122, 1, 1311, 1311), 'i').
name(m__from_any_291, simple_name, type_factory_1_expr145, name, range(type_factory_1, 52127, 8, 1311, 1311), '_fromAny').
name(p_context_478, simple_name, type_factory_1_expr145, (arguments, 0), range(type_factory_1, 52136, 7, 1311, 1311), 'context').
name(v_type_485, simple_name, type_factory_1_expr145, (arguments, 1), range(type_factory_1, 52145, 4, 1311, 1311), 'type').
name(p_parent_bindings_480, simple_name, type_factory_1_expr145, (arguments, 2), range(type_factory_1, 52151, 14, 1311, 1311), 'parentBindings').
name(v_resolved_483, simple_name, type_factory_1_stmt99, expression, range(type_factory_1, 52193, 8, 1313, 1313), 'resolved').
name(p_bindings_488, simple_name, type_factory_1_expr146, left_operand, range(type_factory_1, 52619, 8, 1324, 1324), 'bindings').
name(p_raw_type_487, simple_name, type_factory_1_expr147, left_operand, range(type_factory_1, 52804, 7, 1329, 1329), 'rawType').
name(m__map_type_318, simple_name, type_factory_1_expr149, name, range(type_factory_1, 52847, 8, 1330, 1330), '_mapType').
name(p_raw_type_487, simple_name, type_factory_1_expr149, (arguments, 0), range(type_factory_1, 52856, 7, 1330, 1330), 'rawType').
name(p_bindings_488, simple_name, type_factory_1_expr149, (arguments, 1), range(type_factory_1, 52865, 8, 1330, 1330), 'bindings').
name(p_super_class_489, simple_name, type_factory_1_expr149, (arguments, 2), range(type_factory_1, 52875, 10, 1330, 1330), 'superClass').
name(p_super_interfaces_490, simple_name, type_factory_1_expr149, (arguments, 3), range(type_factory_1, 52887, 15, 1330, 1330), 'superInterfaces').
name(p_raw_type_487, simple_name, type_factory_1_expr150, left_operand, range(type_factory_1, 52927, 7, 1332, 1332), 'rawType').
name(m__collection_type_321, simple_name, type_factory_1_expr152, name, range(type_factory_1, 52977, 15, 1333, 1333), '_collectionType').
name(p_raw_type_487, simple_name, type_factory_1_expr152, (arguments, 0), range(type_factory_1, 52993, 7, 1333, 1333), 'rawType').
name(p_bindings_488, simple_name, type_factory_1_expr152, (arguments, 1), range(type_factory_1, 53002, 8, 1333, 1333), 'bindings').
name(p_super_class_489, simple_name, type_factory_1_expr152, (arguments, 2), range(type_factory_1, 53012, 10, 1333, 1333), 'superClass').
name(p_super_interfaces_490, simple_name, type_factory_1_expr152, (arguments, 3), range(type_factory_1, 53024, 15, 1333, 1333), 'superInterfaces').
name(p_raw_type_487, simple_name, type_factory_1_expr153, left_operand, range(type_factory_1, 53110, 7, 1336, 1336), 'rawType').
name(v_int_count_496, simple_name, type_factory_1_code248, name, range(type_factory_1, 53932, 8, 1351, 1351), 'intCount').
name(q_length_22, qualified_name, type_factory_1_code248, initializer, range(type_factory_1, 53943, 22, 1351, 1351), 'superInterfaces.length').
name(p_super_interfaces_495, simple_name, q_length_22, qualifier, range(type_factory_1, 53943, 15, 1351, 1351), 'superInterfaces').
name(v_i_497, simple_name, type_factory_1_code250, name, range(type_factory_1, 53985, 1, 1353, 1353), 'i').
name(v_i_497, simple_name, type_factory_1_expr156, left_operand, range(type_factory_1, 53992, 1, 1353, 1353), 'i').
name(v_int_count_496, simple_name, type_factory_1_expr156, right_operand, range(type_factory_1, 53996, 8, 1353, 1353), 'intCount').
name(v_i_497, simple_name, type_factory_1_expr157, operand, range(type_factory_1, 54008, 1, 1353, 1353), 'i').
name(v_result_498, simple_name, type_factory_1_code252, name, range(type_factory_1, 54034, 6, 1354, 1354), 'result').
name(p_super_interfaces_495, simple_name, type_factory_1_expr159, array, range(type_factory_1, 54043, 15, 1354, 1354), 'superInterfaces').
name(v_i_497, simple_name, type_factory_1_expr159, index, range(type_factory_1, 54059, 1, 1354, 1354), 'i').
name(m_refine_12, simple_name, type_factory_1_expr158, name, range(type_factory_1, 54062, 6, 1354, 1354), 'refine').
name(p_raw_type_492, simple_name, type_factory_1_expr158, (arguments, 0), range(type_factory_1, 54069, 7, 1354, 1354), 'rawType').
name(p_bindings_493, simple_name, type_factory_1_expr158, (arguments, 1), range(type_factory_1, 54078, 8, 1354, 1354), 'bindings').
name(p_super_class_494, simple_name, type_factory_1_expr158, (arguments, 2), range(type_factory_1, 54088, 10, 1354, 1354), 'superClass').
name(p_super_interfaces_495, simple_name, type_factory_1_expr158, (arguments, 3), range(type_factory_1, 54100, 15, 1354, 1354), 'superInterfaces').
name(v_result_498, simple_name, type_factory_1_expr160, left_operand, range(type_factory_1, 54134, 6, 1355, 1355), 'result').
name(v_result_498, simple_name, type_factory_1_stmt111, expression, range(type_factory_1, 54175, 6, 1356, 1356), 'result').
name(v_raw_type_502, simple_name, type_factory_1_code257, name, range(type_factory_1, 54571, 7, 1370, 1370), 'rawType').
name(p_ptype_500, simple_name, type_factory_1_expr162, expression, range(type_factory_1, 54592, 5, 1370, 1370), 'ptype').
name(m_get_raw_type_340, simple_name, type_factory_1_expr162, name, range(type_factory_1, 54598, 10, 1370, 1370), 'getRawType').
name(v_raw_type_502, simple_name, type_factory_1_expr163, left_operand, range(type_factory_1, 54763, 7, 1374, 1374), 'rawType').
name(f_cls_enum_328, simple_name, type_factory_1_expr163, right_operand, range(type_factory_1, 54774, 8, 1374, 1374), 'CLS_ENUM').
name(f_core_type_enum_338, simple_name, type_factory_1_stmt115, expression, range(type_factory_1, 54805, 14, 1375, 1375), 'CORE_TYPE_ENUM').
name(v_raw_type_502, simple_name, type_factory_1_expr164, left_operand, range(type_factory_1, 54843, 7, 1377, 1377), 'rawType').
name(f_cls_comparable_326, simple_name, type_factory_1_expr164, right_operand, range(type_factory_1, 54854, 14, 1377, 1377), 'CLS_COMPARABLE').
name(f_core_type_comparable_337, simple_name, type_factory_1_stmt117, expression, range(type_factory_1, 54891, 20, 1378, 1378), 'CORE_TYPE_COMPARABLE').
name(v_raw_type_502, simple_name, type_factory_1_expr165, left_operand, range(type_factory_1, 54935, 7, 1380, 1380), 'rawType').
name(f_cls_class_327, simple_name, type_factory_1_expr165, right_operand, range(type_factory_1, 54946, 9, 1380, 1380), 'CLS_CLASS').
name(v_args_503, simple_name, type_factory_1_code264, name, range(type_factory_1, 55281, 4, 1387, 1387), 'args').
name(p_ptype_500, simple_name, type_factory_1_expr166, expression, range(type_factory_1, 55288, 5, 1387, 1387), 'ptype').
name(m_get_actual_type_arguments_341, simple_name, type_factory_1_expr166, name, range(type_factory_1, 55294, 22, 1387, 1387), 'getActualTypeArguments').
name(v_param_count_504, simple_name, type_factory_1_code266, name, range(type_factory_1, 55332, 10, 1388, 1388), 'paramCount').
name(v_args_503, simple_name, type_factory_1_expr169, left_operand, range(type_factory_1, 55346, 4, 1388, 1388), 'args').
name(v_args_503, simple_name, q_length_23, qualifier, range(type_factory_1, 55366, 4, 1388, 1388), 'args').
name(q_length_23, qualified_name, type_factory_1_expr167, else_expression, range(type_factory_1, 55366, 11, 1388, 1388), 'args.length').
name(v_param_count_504, simple_name, type_factory_1_expr170, left_operand, range(type_factory_1, 55434, 10, 1391, 1391), 'paramCount').
name(v_pt_505, simple_name, type_factory_1_code270, name, range(type_factory_1, 55535, 2, 1394, 1394), 'pt').
name(v_param_count_504, simple_name, type_factory_1_expr171, (dimensions, 0), range(type_factory_1, 55553, 10, 1394, 1394), 'paramCount').
name(v_i_506, simple_name, type_factory_1_code275, name, range(type_factory_1, 55587, 1, 1395, 1395), 'i').
name(v_i_506, simple_name, type_factory_1_expr173, left_operand, range(type_factory_1, 55594, 1, 1395, 1395), 'i').
name(v_param_count_504, simple_name, type_factory_1_expr173, right_operand, range(type_factory_1, 55598, 10, 1395, 1395), 'paramCount').
name(v_i_506, simple_name, type_factory_1_expr174, operand, range(type_factory_1, 55612, 1, 1395, 1395), 'i').
name(v_pt_505, simple_name, type_factory_1_expr176, array, range(type_factory_1, 55633, 2, 1396, 1396), 'pt').
name(v_i_506, simple_name, type_factory_1_expr176, index, range(type_factory_1, 55636, 1, 1396, 1396), 'i').
name(m__from_any_291, simple_name, type_factory_1_expr177, name, range(type_factory_1, 55641, 8, 1396, 1396), '_fromAny').
name(p_context_499, simple_name, type_factory_1_expr177, (arguments, 0), range(type_factory_1, 55650, 7, 1396, 1396), 'context').
name(v_args_503, simple_name, type_factory_1_expr178, array, range(type_factory_1, 55659, 4, 1396, 1396), 'args').
name(v_i_506, simple_name, type_factory_1_expr178, index, range(type_factory_1, 55664, 1, 1396, 1396), 'i').
name(p_parent_bindings_501, simple_name, type_factory_1_expr177, (arguments, 2), range(type_factory_1, 55668, 14, 1396, 1396), 'parentBindings').
name(v_new_bindings_507, simple_name, type_factory_1_expr179, left_hand_side, range(type_factory_1, 55711, 11, 1398, 1398), 'newBindings').
name(t_type_bindings_1, simple_name, type_factory_1_expr180, expression, range(type_factory_1, 55725, 12, 1398, 1398), 'TypeBindings').
name(m_create_234, simple_name, type_factory_1_expr180, name, range(type_factory_1, 55738, 6, 1398, 1398), 'create').
name(v_raw_type_502, simple_name, type_factory_1_expr180, (arguments, 0), range(type_factory_1, 55745, 7, 1398, 1398), 'rawType').
name(v_pt_505, simple_name, type_factory_1_expr180, (arguments, 1), range(type_factory_1, 55754, 2, 1398, 1398), 'pt').
name(m__from_class_302, simple_name, type_factory_1_expr181, name, range(type_factory_1, 55784, 10, 1400, 1400), '_fromClass').
name(p_context_499, simple_name, type_factory_1_expr181, (arguments, 0), range(type_factory_1, 55795, 7, 1400, 1400), 'context').
name(v_raw_type_502, simple_name, type_factory_1_expr181, (arguments, 1), range(type_factory_1, 55804, 7, 1400, 1400), 'rawType').
name(v_new_bindings_507, simple_name, type_factory_1_expr181, (arguments, 2), range(type_factory_1, 55813, 11, 1400, 1400), 'newBindings').
name(v_name_514, simple_name, type_factory_1_code279, name, range(type_factory_1, 56278, 4, 1412, 1412), 'name').
name(p_var_512, simple_name, type_factory_1_expr182, expression, range(type_factory_1, 56285, 3, 1412, 1412), 'var').
name(m_get_name_238, simple_name, type_factory_1_expr182, name, range(type_factory_1, 56289, 7, 1412, 1412), 'getName').
name(v_type_515, simple_name, type_factory_1_code281, name, range(type_factory_1, 56317, 4, 1413, 1413), 'type').
name(p_bindings_513, simple_name, type_factory_1_expr183, expression, range(type_factory_1, 56324, 8, 1413, 1413), 'bindings').
name(m_find_bound_type_243, simple_name, type_factory_1_expr183, name, range(type_factory_1, 56333, 13, 1413, 1413), 'findBoundType').
name(v_name_514, simple_name, type_factory_1_expr183, (arguments, 0), range(type_factory_1, 56347, 4, 1413, 1413), 'name').
name(v_type_515, simple_name, type_factory_1_expr184, left_operand, range(type_factory_1, 56366, 4, 1414, 1414), 'type').
name(v_type_515, simple_name, type_factory_1_stmt130, expression, range(type_factory_1, 56401, 4, 1415, 1415), 'type').
name(p_bindings_513, simple_name, type_factory_1_expr185, expression, range(type_factory_1, 56593, 8, 1419, 1419), 'bindings').
name(m_has_unbound_250, simple_name, type_factory_1_expr185, name, range(type_factory_1, 56602, 10, 1419, 1419), 'hasUnbound').
name(v_name_514, simple_name, type_factory_1_expr185, (arguments, 0), range(type_factory_1, 56613, 4, 1419, 1419), 'name').
name(p_bindings_513, simple_name, type_factory_1_expr186, left_hand_side, range(type_factory_1, 56677, 8, 1422, 1422), 'bindings').
name(p_bindings_513, simple_name, type_factory_1_expr187, expression, range(type_factory_1, 56688, 8, 1422, 1422), 'bindings').
name(m_with_unbound_variable_242, simple_name, type_factory_1_expr187, name, range(type_factory_1, 56697, 19, 1422, 1422), 'withUnboundVariable').
name(v_name_514, simple_name, type_factory_1_expr187, (arguments, 0), range(type_factory_1, 56717, 4, 1422, 1422), 'name').
name(v_bounds_516, simple_name, type_factory_1_code285, name, range(type_factory_1, 56740, 6, 1424, 1424), 'bounds').
name(p_var_512, simple_name, type_factory_1_expr188, expression, range(type_factory_1, 56749, 3, 1424, 1424), 'var').
name(m_get_bounds_343, simple_name, type_factory_1_expr188, name, range(type_factory_1, 56753, 9, 1424, 1424), 'getBounds').
name(m__from_any_291, simple_name, type_factory_1_expr189, name, range(type_factory_1, 56781, 8, 1425, 1425), '_fromAny').
name(p_context_511, simple_name, type_factory_1_expr189, (arguments, 0), range(type_factory_1, 56790, 7, 1425, 1425), 'context').
name(v_bounds_516, simple_name, type_factory_1_expr190, array, range(type_factory_1, 56799, 6, 1425, 1425), 'bounds').
name(p_bindings_513, simple_name, type_factory_1_expr189, (arguments, 2), range(type_factory_1, 56810, 8, 1425, 1425), 'bindings').
%simple_type_1 - com.fasterxml.jackson.databind.type.SimpleType
name(p_cls_181, simple_name, simple_type_1_stmt1, (arguments, 0), range(simple_type_1, 1075, 3, 33, 33), 'cls').
name(t_type_bindings_1, simple_name, simple_type_1_expr2, expression, range(simple_type_1, 1080, 12, 33, 33), 'TypeBindings').
name(m_empty_bindings_159, simple_name, simple_type_1_expr2, name, range(simple_type_1, 1093, 13, 33, 33), 'emptyBindings').
name(p_cls_182, simple_name, simple_type_1_stmt2, (arguments, 0), range(simple_type_1, 1262, 3, 38, 38), 'cls').
name(p_bindings_183, simple_name, simple_type_1_stmt2, (arguments, 1), range(simple_type_1, 1267, 8, 38, 38), 'bindings').
name(p_super_class_184, simple_name, simple_type_1_stmt2, (arguments, 2), range(simple_type_1, 1277, 10, 38, 38), 'superClass').
name(p_super_ints_185, simple_name, simple_type_1_stmt2, (arguments, 3), range(simple_type_1, 1289, 9, 38, 38), 'superInts').
name(p_cls_187, simple_name, simple_type_1_stmt3, (arguments, 0), range(simple_type_1, 1764, 3, 55, 55), 'cls').
name(p_bindings_188, simple_name, simple_type_1_stmt3, (arguments, 1), range(simple_type_1, 1769, 8, 55, 55), 'bindings').
name(p_super_class_189, simple_name, simple_type_1_stmt3, (arguments, 2), range(simple_type_1, 1779, 10, 55, 55), 'superClass').
name(p_super_ints_190, simple_name, simple_type_1_stmt3, (arguments, 3), range(simple_type_1, 1791, 9, 55, 55), 'superInts').
name(p_value_handler_191, simple_name, simple_type_1_stmt3, (arguments, 5), range(simple_type_1, 1821, 12, 56, 56), 'valueHandler').
name(p_type_handler_192, simple_name, simple_type_1_stmt3, (arguments, 6), range(simple_type_1, 1835, 11, 56, 56), 'typeHandler').
name(p_as_static_193, simple_name, simple_type_1_stmt3, (arguments, 7), range(simple_type_1, 1848, 8, 56, 56), 'asStatic').
name(v_sb_214, simple_name, simple_type_1_code9, name, range(simple_type_1, 8497, 2, 218, 218), 'sb').
name(v_sb_214, simple_name, simple_type_1_expr6, expression, range(simple_type_1, 8531, 2, 219, 219), 'sb').
name(m_append_91, simple_name, simple_type_1_expr6, name, range(simple_type_1, 8534, 6, 219, 219), 'append').
name(f__class_6, simple_name, simple_type_1_expr7, expression, range(simple_type_1, 8541, 6, 219, 219), '_class').
name(m_get_name_3, simple_name, simple_type_1_expr7, name, range(simple_type_1, 8548, 7, 219, 219), 'getName').
name(v_count_215, simple_name, simple_type_1_code13, name, range(simple_type_1, 8579, 5, 221, 221), 'count').
name(f__bindings_216, simple_name, simple_type_1_expr8, expression, range(simple_type_1, 8587, 9, 221, 221), '_bindings').
name(m_size_174, simple_name, simple_type_1_expr8, name, range(simple_type_1, 8597, 4, 221, 221), 'size').
name(v_count_215, simple_name, simple_type_1_expr9, left_operand, range(simple_type_1, 8617, 5, 222, 222), 'count').
name(v_sb_214, simple_name, simple_type_1_expr10, expression, range(simple_type_1, 8945, 2, 233, 233), 'sb').
name(m_to_string_94, simple_name, simple_type_1_expr10, name, range(simple_type_1, 8948, 8, 233, 233), 'toString').
name(p_o_221, simple_name, simple_type_1_expr11, left_operand, range(simple_type_1, 11085, 1, 312, 312), 'o').
%type_bindings_1 - com.fasterxml.jackson.databind.type.TypeBindings
name(f_no_strings_257, simple_name, type_bindings_1_code10, name, range(type_bindings_1, 371, 10, 16, 16), 'NO_STRINGS').
name(f_no_types_258, simple_name, type_bindings_1_code21, name, range(type_bindings_1, 436, 8, 18, 18), 'NO_TYPES').
name(f_empty_259, simple_name, type_bindings_1_code30, name, range(type_bindings_1, 503, 5, 20, 20), 'EMPTY').
name(f_no_strings_257, simple_name, type_bindings_1_expr3, (arguments, 0), range(type_bindings_1, 528, 10, 20, 20), 'NO_STRINGS').
name(f_no_types_258, simple_name, type_bindings_1_expr3, (arguments, 1), range(type_bindings_1, 540, 8, 20, 20), 'NO_TYPES').
name(f__names_263, simple_name, type_bindings_1_expr4, left_hand_side, range(type_bindings_1, 1307, 6, 53, 53), '_names').
name(p_names_260, simple_name, type_bindings_1_expr7, left_operand, range(type_bindings_1, 1317, 5, 53, 53), 'names').
name(f_no_strings_257, simple_name, type_bindings_1_expr5, then_expression, range(type_bindings_1, 1334, 10, 53, 53), 'NO_STRINGS').
name(p_names_260, simple_name, type_bindings_1_expr5, else_expression, range(type_bindings_1, 1347, 5, 53, 53), 'names').
name(f__types_264, simple_name, type_bindings_1_expr8, left_hand_side, range(type_bindings_1, 1362, 6, 54, 54), '_types').
name(p_types_261, simple_name, type_bindings_1_expr11, left_operand, range(type_bindings_1, 1372, 5, 54, 54), 'types').
name(f_no_types_258, simple_name, type_bindings_1_expr9, then_expression, range(type_bindings_1, 1389, 8, 54, 54), 'NO_TYPES').
name(p_types_261, simple_name, type_bindings_1_expr9, else_expression, range(type_bindings_1, 1400, 5, 54, 54), 'types').
name(q_length_7, qualified_name, type_bindings_1_expr12, left_operand, range(type_bindings_1, 1419, 13, 55, 55), '_names.length').
name(f__names_263, simple_name, q_length_7, qualifier, range(type_bindings_1, 1419, 6, 55, 55), '_names').
name(f__types_264, simple_name, q_length_8, qualifier, range(type_bindings_1, 1436, 6, 55, 55), '_types').
name(q_length_8, qualified_name, type_bindings_1_expr12, right_operand, range(type_bindings_1, 1436, 13, 55, 55), '_types.length').
name(v_h_265, simple_name, type_bindings_1_code34, name, range(type_bindings_1, 1591, 1, 58, 58), 'h').
name(v_i_266, simple_name, type_bindings_1_code36, name, range(type_bindings_1, 1615, 1, 59, 59), 'i').
name(v_len_267, simple_name, type_bindings_1_code37, name, range(type_bindings_1, 1622, 3, 59, 59), 'len').
name(f__types_264, simple_name, q_length_9, qualifier, range(type_bindings_1, 1628, 6, 59, 59), '_types').
name(q_length_9, qualified_name, type_bindings_1_code37, initializer, range(type_bindings_1, 1628, 13, 59, 59), '_types.length').
name(v_i_266, simple_name, type_bindings_1_expr14, left_operand, range(type_bindings_1, 1643, 1, 59, 59), 'i').
name(v_len_267, simple_name, type_bindings_1_expr14, right_operand, range(type_bindings_1, 1647, 3, 59, 59), 'len').
name(v_i_266, simple_name, type_bindings_1_expr15, operand, range(type_bindings_1, 1654, 1, 59, 59), 'i').
name(v_h_265, simple_name, type_bindings_1_expr16, left_hand_side, range(type_bindings_1, 1671, 1, 60, 60), 'h').
name(f__types_264, simple_name, type_bindings_1_expr18, array, range(type_bindings_1, 1676, 6, 60, 60), '_types').
name(v_i_266, simple_name, type_bindings_1_expr18, index, range(type_bindings_1, 1683, 1, 60, 60), 'i').
name(m_hash_code_58, simple_name, type_bindings_1_expr17, name, range(type_bindings_1, 1686, 8, 60, 60), 'hashCode').
name(f__unbound_variables_268, simple_name, type_bindings_1_expr19, left_hand_side, range(type_bindings_1, 1716, 17, 62, 62), '_unboundVariables').
name(p_uvars_262, simple_name, type_bindings_1_expr19, right_hand_side, range(type_bindings_1, 1736, 5, 62, 62), 'uvars').
name(f__hash_code_269, simple_name, type_bindings_1_expr20, left_hand_side, range(type_bindings_1, 1751, 9, 63, 63), '_hashCode').
name(v_h_265, simple_name, type_bindings_1_expr20, right_hand_side, range(type_bindings_1, 1763, 1, 63, 63), 'h').
name(f_empty_259, simple_name, type_bindings_1_stmt9, expression, range(type_bindings_1, 1837, 5, 67, 67), 'EMPTY').
name(v_types_272, simple_name, type_bindings_1_code43, name, range(type_bindings_1, 2321, 5, 84, 84), 'types').
name(p_type_list_271, simple_name, type_bindings_1_expr25, left_operand, range(type_bindings_1, 2330, 8, 84, 84), 'typeList').
name(p_type_list_271, simple_name, type_bindings_1_expr26, expression, range(type_bindings_1, 2350, 8, 84, 84), 'typeList').
name(m_is_empty_233, simple_name, type_bindings_1_expr26, name, range(type_bindings_1, 2359, 7, 84, 84), 'isEmpty').
name(f_no_types_258, simple_name, type_bindings_1_expr21, then_expression, range(type_bindings_1, 2388, 8, 85, 85), 'NO_TYPES').
name(m_create_234, simple_name, type_bindings_1_expr27, name, range(type_bindings_1, 2463, 6, 86, 86), 'create').
name(p_erased_type_270, simple_name, type_bindings_1_expr27, (arguments, 0), range(type_bindings_1, 2470, 10, 86, 86), 'erasedType').
name(v_types_272, simple_name, type_bindings_1_expr27, (arguments, 1), range(type_bindings_1, 2482, 5, 86, 86), 'types').
name(p_types_274, simple_name, type_bindings_1_expr28, left_operand, range(type_bindings_1, 2592, 5, 91, 91), 'types').
name(p_types_274, simple_name, q_length_9, qualifier, range(type_bindings_1, 2662, 5, 93, 93), 'types').
name(q_length_9, qualified_name, type_bindings_1_stmt13, expression, range(type_bindings_1, 2662, 12, 93, 93), 'types.length').
name(m_create_235, simple_name, type_bindings_1_expr29, name, range(type_bindings_1, 2713, 6, 95, 95), 'create').
name(p_erased_type_273, simple_name, type_bindings_1_expr29, (arguments, 0), range(type_bindings_1, 2720, 10, 95, 95), 'erasedType').
name(p_types_274, simple_name, type_bindings_1_expr30, array, range(type_bindings_1, 2732, 5, 95, 95), 'types').
name(m_create_236, simple_name, type_bindings_1_expr31, name, range(type_bindings_1, 2778, 6, 97, 97), 'create').
name(p_erased_type_273, simple_name, type_bindings_1_expr31, (arguments, 0), range(type_bindings_1, 2785, 10, 97, 97), 'erasedType').
name(p_types_274, simple_name, type_bindings_1_expr32, array, range(type_bindings_1, 2797, 5, 97, 97), 'types').
name(p_types_274, simple_name, type_bindings_1_expr33, array, range(type_bindings_1, 2807, 5, 97, 97), 'types').
name(v_vars_277, simple_name, type_bindings_1_code51, name, range(type_bindings_1, 3808, 4, 122, 122), 'vars').
name(t_type_param_stash_6, simple_name, type_bindings_1_expr34, expression, range(type_bindings_1, 3815, 14, 122, 122), 'TypeParamStash').
name(m_params_for1_237, simple_name, type_bindings_1_expr34, name, range(type_bindings_1, 3830, 10, 122, 122), 'paramsFor1').
name(p_erased_type_275, simple_name, type_bindings_1_expr34, (arguments, 0), range(type_bindings_1, 3841, 10, 122, 122), 'erasedType').
name(v_var_len_278, simple_name, type_bindings_1_code53, name, range(type_bindings_1, 3866, 6, 123, 123), 'varLen').
name(v_vars_277, simple_name, type_bindings_1_expr37, left_operand, range(type_bindings_1, 3876, 4, 123, 123), 'vars').
name(v_vars_277, simple_name, q_length_10, qualifier, range(type_bindings_1, 3896, 4, 123, 123), 'vars').
name(q_length_10, qualified_name, type_bindings_1_expr35, else_expression, range(type_bindings_1, 3896, 11, 123, 123), 'vars.length').
name(v_var_len_278, simple_name, type_bindings_1_expr38, left_operand, range(type_bindings_1, 3921, 6, 124, 124), 'varLen').
name(v_vars_277, simple_name, type_bindings_1_expr44, array, range(type_bindings_1, 4173, 4, 128, 128), 'vars').
name(m_get_name_238, simple_name, type_bindings_1_expr43, name, range(type_bindings_1, 4181, 7, 128, 128), 'getName').
name(v_vars_282, simple_name, type_bindings_1_code64, name, range(type_bindings_1, 4459, 4, 135, 135), 'vars').
name(t_type_param_stash_6, simple_name, type_bindings_1_expr45, expression, range(type_bindings_1, 4466, 14, 135, 135), 'TypeParamStash').
name(m_params_for2_239, simple_name, type_bindings_1_expr45, name, range(type_bindings_1, 4481, 10, 135, 135), 'paramsFor2').
name(p_erased_type_279, simple_name, type_bindings_1_expr45, (arguments, 0), range(type_bindings_1, 4492, 10, 135, 135), 'erasedType').
name(v_var_len_283, simple_name, type_bindings_1_code66, name, range(type_bindings_1, 4517, 6, 136, 136), 'varLen').
name(v_vars_282, simple_name, type_bindings_1_expr48, left_operand, range(type_bindings_1, 4527, 4, 136, 136), 'vars').
name(v_vars_282, simple_name, q_length_11, qualifier, range(type_bindings_1, 4547, 4, 136, 136), 'vars').
name(q_length_11, qualified_name, type_bindings_1_expr46, else_expression, range(type_bindings_1, 4547, 11, 136, 136), 'vars.length').
name(v_var_len_283, simple_name, type_bindings_1_expr49, left_operand, range(type_bindings_1, 4572, 6, 137, 137), 'varLen').
name(v_vars_282, simple_name, type_bindings_1_expr55, array, range(type_bindings_1, 4825, 4, 141, 141), 'vars').
name(m_get_name_238, simple_name, type_bindings_1_expr54, name, range(type_bindings_1, 4833, 7, 141, 141), 'getName').
name(v_vars_282, simple_name, type_bindings_1_expr57, array, range(type_bindings_1, 4844, 4, 141, 141), 'vars').
name(m_get_name_238, simple_name, type_bindings_1_expr56, name, range(type_bindings_1, 4852, 7, 141, 141), 'getName').
name(v_len_289, simple_name, type_bindings_1_code73, name, range(type_bindings_1, 7202, 3, 200, 200), 'len').
name(f__unbound_variables_268, simple_name, type_bindings_1_expr60, left_operand, range(type_bindings_1, 7209, 17, 200, 200), '_unboundVariables').
name(q_length_12, qualified_name, type_bindings_1_expr58, else_expression, range(type_bindings_1, 7242, 24, 200, 200), '_unboundVariables.length').
name(f__unbound_variables_268, simple_name, q_length_12, qualifier, range(type_bindings_1, 7242, 17, 200, 200), '_unboundVariables').
name(v_names_290, simple_name, type_bindings_1_code77, name, range(type_bindings_1, 7285, 5, 201, 201), 'names').
name(v_len_289, simple_name, type_bindings_1_expr65, left_operand, range(type_bindings_1, 7295, 3, 201, 201), 'len').
name(v_names_290, simple_name, type_bindings_1_expr67, array, range(type_bindings_1, 7388, 5, 203, 203), 'names').
name(v_len_289, simple_name, type_bindings_1_expr67, index, range(type_bindings_1, 7394, 3, 203, 203), 'len').
name(p_name_288, simple_name, type_bindings_1_expr66, right_hand_side, range(type_bindings_1, 7401, 4, 203, 203), 'name').
name(f__names_263, simple_name, type_bindings_1_expr68, (arguments, 0), range(type_bindings_1, 7439, 6, 204, 204), '_names').
name(f__types_264, simple_name, type_bindings_1_expr68, (arguments, 1), range(type_bindings_1, 7447, 6, 204, 204), '_types').
name(v_names_290, simple_name, type_bindings_1_expr68, (arguments, 2), range(type_bindings_1, 7455, 5, 204, 204), 'names').
name(v_i_292, simple_name, type_bindings_1_code81, name, range(type_bindings_1, 7839, 1, 218, 218), 'i').
name(v_len_293, simple_name, type_bindings_1_code82, name, range(type_bindings_1, 7846, 3, 218, 218), 'len').
name(f__names_263, simple_name, q_length_13, qualifier, range(type_bindings_1, 7852, 6, 218, 218), '_names').
name(q_length_13, qualified_name, type_bindings_1_code82, initializer, range(type_bindings_1, 7852, 13, 218, 218), '_names.length').
name(v_i_292, simple_name, type_bindings_1_expr70, left_operand, range(type_bindings_1, 7867, 1, 218, 218), 'i').
name(v_len_293, simple_name, type_bindings_1_expr70, right_operand, range(type_bindings_1, 7871, 3, 218, 218), 'len').
name(v_i_292, simple_name, type_bindings_1_expr71, operand, range(type_bindings_1, 7878, 1, 218, 218), 'i').
name(p_name_291, simple_name, type_bindings_1_expr72, expression, range(type_bindings_1, 7899, 4, 219, 219), 'name').
name(m_equals_244, simple_name, type_bindings_1_expr72, name, range(type_bindings_1, 7904, 6, 219, 219), 'equals').
name(f__names_263, simple_name, type_bindings_1_expr73, array, range(type_bindings_1, 7911, 6, 219, 219), '_names').
name(v_i_292, simple_name, type_bindings_1_expr73, index, range(type_bindings_1, 7918, 1, 219, 219), 'i').
name(v_t_294, simple_name, type_bindings_1_code84, name, range(type_bindings_1, 7950, 1, 220, 220), 't').
name(f__types_264, simple_name, type_bindings_1_expr74, array, range(type_bindings_1, 7954, 6, 220, 220), '_types').
name(v_i_292, simple_name, type_bindings_1_expr74, index, range(type_bindings_1, 7961, 1, 220, 220), 'i').
name(v_t_294, simple_name, type_bindings_1_expr75, left_operand, range(type_bindings_1, 7985, 1, 221, 221), 't').
name(v_t_294, simple_name, type_bindings_1_stmt32, expression, range(type_bindings_1, 8764, 1, 238, 238), 't').
name(q_length_13, qualified_name, type_bindings_1_expr77, left_operand, range(type_bindings_1, 8866, 13, 245, 245), '_types.length').
name(f__types_264, simple_name, q_length_13, qualifier, range(type_bindings_1, 8866, 6, 245, 245), '_types').
name(f__types_264, simple_name, q_length_13, qualifier, range(type_bindings_1, 8998, 6, 252, 252), '_types').
name(q_length_13, qualified_name, type_bindings_1_stmt35, expression, range(type_bindings_1, 8998, 13, 252, 252), '_types.length').
name(f__types_264, simple_name, q_length_13, qualifier, range(type_bindings_1, 9505, 6, 276, 276), '_types').
name(q_length_13, qualified_name, type_bindings_1_expr78, left_operand, range(type_bindings_1, 9505, 13, 276, 276), '_types.length').
name(t_arrays_7, simple_name, type_bindings_1_expr79, expression, range(type_bindings_1, 9596, 6, 279, 279), 'Arrays').
name(m_as_list_249, simple_name, type_bindings_1_expr79, name, range(type_bindings_1, 9603, 6, 279, 279), 'asList').
name(f__types_264, simple_name, type_bindings_1_expr79, (arguments, 0), range(type_bindings_1, 9610, 6, 279, 279), '_types').
name(f__unbound_variables_268, simple_name, type_bindings_1_expr80, left_operand, range(type_bindings_1, 9717, 17, 286, 286), '_unboundVariables').
name(p_raw_base_298, simple_name, type_bindings_1_expr81, (arguments, 0), range(type_bindings_1, 10336, 7, 305, 305), 'rawBase').
name(f__types_264, simple_name, type_bindings_1_expr81, (arguments, 1), range(type_bindings_1, 10345, 6, 305, 305), '_types').
name(f__hash_code_269, simple_name, type_bindings_1_expr81, (arguments, 2), range(type_bindings_1, 10353, 9, 305, 305), '_hashCode').
name(f_vars_abstract_list_300, simple_name, type_bindings_1_code102, name, range(type_bindings_1, 12852, 18, 381, 381), 'VARS_ABSTRACT_LIST').
name(m_get_type_parameters_257, simple_name, type_bindings_1_expr82, name, range(type_bindings_1, 12892, 17, 381, 381), 'getTypeParameters').
name(f_vars_collection_301, simple_name, type_bindings_1_code113, name, range(type_bindings_1, 12960, 15, 382, 382), 'VARS_COLLECTION').
name(m_get_type_parameters_257, simple_name, type_bindings_1_expr84, name, range(type_bindings_1, 12995, 17, 382, 382), 'getTypeParameters').
name(f_vars_iterable_302, simple_name, type_bindings_1_code124, name, range(type_bindings_1, 13063, 13, 383, 383), 'VARS_ITERABLE').
name(m_get_type_parameters_257, simple_name, type_bindings_1_expr86, name, range(type_bindings_1, 13094, 17, 383, 383), 'getTypeParameters').
name(f_vars_list_303, simple_name, type_bindings_1_code135, name, range(type_bindings_1, 13162, 9, 384, 384), 'VARS_LIST').
name(m_get_type_parameters_257, simple_name, type_bindings_1_expr88, name, range(type_bindings_1, 13185, 17, 384, 384), 'getTypeParameters').
name(f_vars_array_list_304, simple_name, type_bindings_1_code146, name, range(type_bindings_1, 13253, 15, 385, 385), 'VARS_ARRAY_LIST').
name(m_get_type_parameters_257, simple_name, type_bindings_1_expr90, name, range(type_bindings_1, 13287, 17, 385, 385), 'getTypeParameters').
name(f_vars_map_305, simple_name, type_bindings_1_code157, name, range(type_bindings_1, 13356, 8, 387, 387), 'VARS_MAP').
name(m_get_type_parameters_257, simple_name, type_bindings_1_expr92, name, range(type_bindings_1, 13377, 17, 387, 387), 'getTypeParameters').
name(f_vars_hash_map_306, simple_name, type_bindings_1_code168, name, range(type_bindings_1, 13445, 13, 388, 388), 'VARS_HASH_MAP').
name(m_get_type_parameters_257, simple_name, type_bindings_1_expr94, name, range(type_bindings_1, 13475, 17, 388, 388), 'getTypeParameters').
name(f_vars_linked_hash_map_307, simple_name, type_bindings_1_code179, name, range(type_bindings_1, 13543, 20, 389, 389), 'VARS_LINKED_HASH_MAP').
name(m_get_type_parameters_257, simple_name, type_bindings_1_expr96, name, range(type_bindings_1, 13586, 17, 389, 389), 'getTypeParameters').
name(p_erased_type_308, simple_name, type_bindings_1_expr98, left_operand, range(type_bindings_1, 13706, 10, 393, 393), 'erasedType').
name(f_vars_collection_301, simple_name, type_bindings_1_stmt42, expression, range(type_bindings_1, 13763, 15, 394, 394), 'VARS_COLLECTION').
name(p_erased_type_308, simple_name, type_bindings_1_expr100, left_operand, range(type_bindings_1, 13810, 10, 396, 396), 'erasedType').
name(f_vars_list_303, simple_name, type_bindings_1_stmt44, expression, range(type_bindings_1, 13861, 9, 397, 397), 'VARS_LIST').
name(p_erased_type_308, simple_name, type_bindings_1_expr102, left_operand, range(type_bindings_1, 13902, 10, 399, 399), 'erasedType').
name(f_vars_array_list_304, simple_name, type_bindings_1_stmt46, expression, range(type_bindings_1, 13958, 15, 400, 400), 'VARS_ARRAY_LIST').
name(p_erased_type_308, simple_name, type_bindings_1_expr104, left_operand, range(type_bindings_1, 14005, 10, 402, 402), 'erasedType').
name(f_vars_abstract_list_300, simple_name, type_bindings_1_stmt48, expression, range(type_bindings_1, 14064, 18, 403, 403), 'VARS_ABSTRACT_LIST').
name(p_erased_type_308, simple_name, type_bindings_1_expr106, left_operand, range(type_bindings_1, 14114, 10, 405, 405), 'erasedType').
name(f_vars_iterable_302, simple_name, type_bindings_1_stmt50, expression, range(type_bindings_1, 14169, 13, 406, 406), 'VARS_ITERABLE').
name(p_erased_type_308, simple_name, type_bindings_1_expr108, expression, range(type_bindings_1, 14217, 10, 408, 408), 'erasedType').
name(m_get_type_parameters_257, simple_name, type_bindings_1_expr108, name, range(type_bindings_1, 14228, 17, 408, 408), 'getTypeParameters').
name(p_erased_type_309, simple_name, type_bindings_1_expr109, left_operand, range(type_bindings_1, 14362, 10, 413, 413), 'erasedType').
name(f_vars_map_305, simple_name, type_bindings_1_stmt53, expression, range(type_bindings_1, 14412, 8, 414, 414), 'VARS_MAP').
name(p_erased_type_309, simple_name, type_bindings_1_expr111, left_operand, range(type_bindings_1, 14452, 10, 416, 416), 'erasedType').
name(p_erased_type_309, simple_name, type_bindings_1_expr113, left_operand, range(type_bindings_1, 14551, 10, 419, 419), 'erasedType').
name(p_erased_type_309, simple_name, type_bindings_1_expr115, expression, range(type_bindings_1, 14666, 10, 422, 422), 'erasedType').
name(m_get_type_parameters_257, simple_name, type_bindings_1_expr115, name, range(type_bindings_1, 14677, 17, 422, 422), 'getTypeParameters').
name(m_as_key_252, simple_name, type_bindings_1_code192, name, range(type_bindings_1, 14977, 5, 436, 436), 'AsKey').
name(p_raw_310, simple_name, type_bindings_1_code194, name, range(type_bindings_1, 14992, 3, 436, 436), 'raw').
name(p_params_311, simple_name, type_bindings_1_code198, name, range(type_bindings_1, 15008, 6, 436, 436), 'params').
name(p_hash_312, simple_name, type_bindings_1_code202, name, range(type_bindings_1, 15020, 4, 436, 436), 'hash').
name(f__raw_313, simple_name, type_bindings_1_expr116, left_hand_side, range(type_bindings_1, 15040, 4, 437, 437), '_raw').
name(p_raw_310, simple_name, type_bindings_1_expr116, right_hand_side, range(type_bindings_1, 15047, 3, 437, 437), 'raw').
name(f__params_314, simple_name, type_bindings_1_expr117, left_hand_side, range(type_bindings_1, 15065, 7, 438, 438), '_params').
name(p_params_311, simple_name, type_bindings_1_expr117, right_hand_side, range(type_bindings_1, 15075, 6, 438, 438), 'params').
name(f__hash_315, simple_name, type_bindings_1_expr118, left_hand_side, range(type_bindings_1, 15095, 5, 439, 439), '_hash').
name(p_hash_312, simple_name, type_bindings_1_expr118, right_hand_side, range(type_bindings_1, 15103, 4, 439, 439), 'hash').
name(m_hash_code_258, simple_name, type_bindings_1_code204, name, range(type_bindings_1, 15157, 8, 443, 443), 'hashCode').
name(f__hash_315, simple_name, type_bindings_1_stmt60, expression, range(type_bindings_1, 15177, 5, 443, 443), '_hash').
name(p_o_316, simple_name, type_bindings_1_expr119, left_operand, range(type_bindings_1, 15263, 1, 447, 447), 'o').
name(p_o_316, simple_name, type_bindings_1_expr121, left_operand, range(type_bindings_1, 15303, 1, 448, 448), 'o').
name(p_o_316, simple_name, type_bindings_1_expr123, expression, range(type_bindings_1, 15344, 1, 449, 449), 'o').
name(m_get_class_97, simple_name, type_bindings_1_expr123, name, range(type_bindings_1, 15346, 8, 449, 449), 'getClass').
name(m_get_class_97, simple_name, type_bindings_1_expr124, name, range(type_bindings_1, 15360, 8, 449, 449), 'getClass').
name(v_other_317, simple_name, type_bindings_1_code209, name, range(type_bindings_1, 15404, 5, 450, 450), 'other').
name(p_o_316, simple_name, type_bindings_1_expr125, expression, range(type_bindings_1, 15420, 1, 450, 450), 'o').
name(f__hash_315, simple_name, type_bindings_1_expr128, left_operand, range(type_bindings_1, 15441, 5, 452, 452), '_hash').
name(q__hash_13, qualified_name, type_bindings_1_expr128, right_operand, range(type_bindings_1, 15450, 11, 452, 452), 'other._hash').
name(v_other_317, simple_name, q__hash_13, qualifier, range(type_bindings_1, 15450, 5, 452, 452), 'other').
name(f__raw_313, simple_name, type_bindings_1_expr130, left_operand, range(type_bindings_1, 15467, 4, 452, 452), '_raw').
name(q__raw_14, qualified_name, type_bindings_1_expr130, right_operand, range(type_bindings_1, 15475, 10, 452, 452), 'other._raw').
name(v_other_317, simple_name, q__raw_14, qualifier, range(type_bindings_1, 15475, 5, 452, 452), 'other').
name(v_other_params_318, simple_name, type_bindings_1_code215, name, range(type_bindings_1, 15523, 11, 453, 453), 'otherParams').
name(v_other_317, simple_name, q__params_15, qualifier, range(type_bindings_1, 15537, 5, 453, 453), 'other').
name(q__params_15, qualified_name, type_bindings_1_code215, initializer, range(type_bindings_1, 15537, 13, 453, 453), 'other._params').
name(v_len_319, simple_name, type_bindings_1_code218, name, range(type_bindings_1, 15578, 3, 454, 454), 'len').
name(q_length_16, qualified_name, type_bindings_1_code218, initializer, range(type_bindings_1, 15584, 14, 454, 454), '_params.length').
name(f__params_314, simple_name, q_length_16, qualifier, range(type_bindings_1, 15584, 7, 454, 454), '_params').
name(v_len_319, simple_name, type_bindings_1_expr131, left_operand, range(type_bindings_1, 15621, 3, 456, 456), 'len').
name(q_length_17, qualified_name, type_bindings_1_expr131, right_operand, range(type_bindings_1, 15628, 18, 456, 456), 'otherParams.length').
name(v_other_params_318, simple_name, q_length_17, qualifier, range(type_bindings_1, 15628, 11, 456, 456), 'otherParams').
name(v_i_320, simple_name, type_bindings_1_code220, name, range(type_bindings_1, 15679, 1, 457, 457), 'i').
name(v_i_320, simple_name, type_bindings_1_expr133, left_operand, range(type_bindings_1, 15686, 1, 457, 457), 'i').
name(v_len_319, simple_name, type_bindings_1_expr133, right_operand, range(type_bindings_1, 15690, 3, 457, 457), 'len').
name(v_i_320, simple_name, type_bindings_1_expr134, operand, range(type_bindings_1, 15697, 1, 457, 457), 'i').
name(f__params_314, simple_name, type_bindings_1_expr138, array, range(type_bindings_1, 15731, 7, 458, 458), '_params').
name(v_i_320, simple_name, type_bindings_1_expr138, index, range(type_bindings_1, 15739, 1, 458, 458), 'i').
name(m_equals_57, simple_name, type_bindings_1_expr136, name, range(type_bindings_1, 15742, 6, 458, 458), 'equals').
name(v_other_params_318, simple_name, type_bindings_1_expr137, array, range(type_bindings_1, 15749, 11, 458, 458), 'otherParams').
name(v_i_320, simple_name, type_bindings_1_expr137, index, range(type_bindings_1, 15761, 1, 458, 458), 'i').
%map_type_1 - com.fasterxml.jackson.databind.type.MapType
name(p_map_type_147, simple_name, map_type_1_stmt1, (arguments, 0), range(map_type_1, 690, 7, 23, 23), 'mapType').
name(p_bindings_148, simple_name, map_type_1_stmt1, (arguments, 1), range(map_type_1, 699, 8, 23, 23), 'bindings').
name(p_super_class_149, simple_name, map_type_1_stmt1, (arguments, 2), range(map_type_1, 709, 10, 23, 23), 'superClass').
name(p_super_ints_150, simple_name, map_type_1_stmt1, (arguments, 3), range(map_type_1, 721, 9, 23, 23), 'superInts').
name(p_key_t_151, simple_name, map_type_1_stmt1, (arguments, 4), range(map_type_1, 748, 4, 24, 24), 'keyT').
name(p_value_t_152, simple_name, map_type_1_stmt1, (arguments, 5), range(map_type_1, 754, 6, 24, 24), 'valueT').
name(p_value_handler_153, simple_name, map_type_1_stmt1, (arguments, 6), range(map_type_1, 762, 12, 24, 24), 'valueHandler').
name(p_type_handler_154, simple_name, map_type_1_stmt1, (arguments, 7), range(map_type_1, 776, 11, 24, 24), 'typeHandler').
name(p_as_static_155, simple_name, map_type_1_stmt1, (arguments, 8), range(map_type_1, 789, 8, 24, 24), 'asStatic').
name(p_raw_type_159, simple_name, map_type_1_expr2, (arguments, 0), range(map_type_1, 1193, 7, 40, 40), 'rawType').
name(p_bindings_160, simple_name, map_type_1_expr2, (arguments, 1), range(map_type_1, 1202, 8, 40, 40), 'bindings').
name(p_super_class_161, simple_name, map_type_1_expr2, (arguments, 2), range(map_type_1, 1212, 10, 40, 40), 'superClass').
name(p_super_ints_162, simple_name, map_type_1_expr2, (arguments, 3), range(map_type_1, 1224, 9, 40, 40), 'superInts').
name(p_key_t_163, simple_name, map_type_1_expr2, (arguments, 4), range(map_type_1, 1235, 4, 40, 40), 'keyT').
name(p_value_t_164, simple_name, map_type_1_expr2, (arguments, 5), range(map_type_1, 1241, 6, 40, 40), 'valueT').
name(p_raw_type_175, simple_name, map_type_1_expr3, (arguments, 0), range(map_type_1, 4376, 7, 126, 126), 'rawType').
name(p_bindings_176, simple_name, map_type_1_expr3, (arguments, 1), range(map_type_1, 4385, 8, 126, 126), 'bindings').
name(p_super_class_177, simple_name, map_type_1_expr3, (arguments, 2), range(map_type_1, 4411, 10, 127, 127), 'superClass').
name(p_super_interfaces_178, simple_name, map_type_1_expr3, (arguments, 3), range(map_type_1, 4423, 15, 127, 127), 'superInterfaces').
name(f__key_type_117, simple_name, map_type_1_expr3, (arguments, 4), range(map_type_1, 4440, 8, 127, 127), '_keyType').
name(f__value_type_118, simple_name, map_type_1_expr3, (arguments, 5), range(map_type_1, 4450, 10, 127, 127), '_valueType').
name(f__value_handler_8, simple_name, map_type_1_expr3, (arguments, 6), range(map_type_1, 4478, 13, 128, 128), '_valueHandler').
name(f__type_handler_9, simple_name, map_type_1_expr3, (arguments, 7), range(map_type_1, 4493, 12, 128, 128), '_typeHandler').
name(f__as_static_10, simple_name, map_type_1_expr3, (arguments, 8), range(map_type_1, 4507, 9, 128, 128), '_asStatic').
%type_parser_1 - com.fasterxml.jackson.databind.type.TypeParser
name(m_type_parser_264, simple_name, type_parser_1_code3, name, range(type_parser_1, 428, 10, 18, 18), 'TypeParser').
name(p_f_520, simple_name, type_parser_1_code5, name, range(type_parser_1, 451, 1, 18, 18), 'f').
name(f__factory_521, simple_name, type_parser_1_expr1, left_hand_side, range(type_parser_1, 464, 8, 19, 19), '_factory').
name(p_f_520, simple_name, type_parser_1_expr1, right_hand_side, range(type_parser_1, 475, 1, 19, 19), 'f').
name(v_tokens_524, simple_name, type_parser_1_code9, name, range(type_parser_1, 740, 6, 31, 31), 'tokens').
name(p_canonical_523, simple_name, type_parser_1_expr3, expression, range(type_parser_1, 765, 9, 31, 31), 'canonical').
name(m_trim_347, simple_name, type_parser_1_expr3, name, range(type_parser_1, 775, 4, 31, 31), 'trim').
name(v_type_525, simple_name, type_parser_1_code12, name, range(type_parser_1, 801, 4, 32, 32), 'type').
name(m_parse_type_348, simple_name, type_parser_1_expr4, name, range(type_parser_1, 808, 9, 32, 32), 'parseType').
name(v_tokens_524, simple_name, type_parser_1_expr4, (arguments, 0), range(type_parser_1, 818, 6, 32, 32), 'tokens').
name(v_tokens_524, simple_name, type_parser_1_expr5, expression, range(type_parser_1, 867, 6, 34, 34), 'tokens').
name(m_has_more_tokens_349, simple_name, type_parser_1_expr5, name, range(type_parser_1, 874, 13, 34, 34), 'hasMoreTokens').
name(v_type_525, simple_name, type_parser_1_stmt5, expression, range(type_parser_1, 995, 4, 37, 37), 'type').
name(p_tokens_526, simple_name, type_parser_1_expr7, expression, range(type_parser_1, 1120, 6, 43, 43), 'tokens').
name(m_has_more_tokens_349, simple_name, type_parser_1_expr7, name, range(type_parser_1, 1127, 13, 43, 43), 'hasMoreTokens').
name(v_base_527, simple_name, type_parser_1_code17, name, range(type_parser_1, 1237, 4, 46, 46), 'base').
name(m_find_class_350, simple_name, type_parser_1_expr8, name, range(type_parser_1, 1244, 9, 46, 46), 'findClass').
name(p_tokens_526, simple_name, type_parser_1_expr9, expression, range(type_parser_1, 1254, 6, 46, 46), 'tokens').
name(m_next_token_351, simple_name, type_parser_1_expr9, name, range(type_parser_1, 1261, 9, 46, 46), 'nextToken').
name(p_tokens_526, simple_name, type_parser_1_expr8, (arguments, 1), range(type_parser_1, 1274, 6, 46, 46), 'tokens').
name(p_tokens_526, simple_name, type_parser_1_expr10, expression, range(type_parser_1, 1354, 6, 49, 49), 'tokens').
name(m_has_more_tokens_349, simple_name, type_parser_1_expr10, name, range(type_parser_1, 1361, 13, 49, 49), 'hasMoreTokens').
name(v_token_528, simple_name, type_parser_1_code19, name, range(type_parser_1, 1399, 5, 50, 50), 'token').
name(p_tokens_526, simple_name, type_parser_1_expr11, expression, range(type_parser_1, 1407, 6, 50, 50), 'tokens').
name(m_next_token_351, simple_name, type_parser_1_expr11, name, range(type_parser_1, 1414, 9, 50, 50), 'nextToken').
name(m_equals_244, simple_name, type_parser_1_expr12, name, range(type_parser_1, 1447, 6, 51, 51), 'equals').
name(v_token_528, simple_name, type_parser_1_expr12, (arguments, 0), range(type_parser_1, 1454, 5, 51, 51), 'token').
name(v_parameter_types_529, simple_name, type_parser_1_code23, name, range(type_parser_1, 1495, 14, 52, 52), 'parameterTypes').
name(m_parse_types_352, simple_name, type_parser_1_expr13, name, range(type_parser_1, 1512, 10, 52, 52), 'parseTypes').
name(p_tokens_526, simple_name, type_parser_1_expr13, (arguments, 0), range(type_parser_1, 1523, 6, 52, 52), 'tokens').
name(v_b_530, simple_name, type_parser_1_code25, name, range(type_parser_1, 1561, 1, 53, 53), 'b').
name(t_type_bindings_1, simple_name, type_parser_1_expr14, expression, range(type_parser_1, 1565, 12, 53, 53), 'TypeBindings').
name(m_create_232, simple_name, type_parser_1_expr14, name, range(type_parser_1, 1578, 6, 53, 53), 'create').
name(v_base_527, simple_name, type_parser_1_expr14, (arguments, 0), range(type_parser_1, 1585, 4, 53, 53), 'base').
name(v_parameter_types_529, simple_name, type_parser_1_expr14, (arguments, 1), range(type_parser_1, 1591, 14, 53, 53), 'parameterTypes').
name(f__factory_521, simple_name, type_parser_1_expr15, expression, range(type_parser_1, 1631, 8, 54, 54), '_factory').
name(m__from_class_302, simple_name, type_parser_1_expr15, name, range(type_parser_1, 1640, 10, 54, 54), '_fromClass').
name(v_base_527, simple_name, type_parser_1_expr15, (arguments, 1), range(type_parser_1, 1657, 4, 54, 54), 'base').
name(v_b_530, simple_name, type_parser_1_expr15, (arguments, 2), range(type_parser_1, 1663, 1, 54, 54), 'b').
name(p_tokens_526, simple_name, type_parser_1_expr16, expression, range(type_parser_1, 1758, 6, 57, 57), 'tokens').
name(m_push_back_353, simple_name, type_parser_1_expr16, name, range(type_parser_1, 1765, 8, 57, 57), 'pushBack').
name(v_token_528, simple_name, type_parser_1_expr16, (arguments, 0), range(type_parser_1, 1774, 5, 57, 57), 'token').
name(f__factory_521, simple_name, type_parser_1_expr17, expression, range(type_parser_1, 1807, 8, 59, 59), '_factory').
name(m__from_class_302, simple_name, type_parser_1_expr17, name, range(type_parser_1, 1816, 10, 59, 59), '_fromClass').
name(v_base_527, simple_name, type_parser_1_expr17, (arguments, 1), range(type_parser_1, 1833, 4, 59, 59), 'base').
name(v_types_532, simple_name, type_parser_1_code30, name, range(type_parser_1, 1987, 5, 65, 65), 'types').
name(p_tokens_531, simple_name, type_parser_1_expr19, expression, range(type_parser_1, 2037, 6, 66, 66), 'tokens').
name(m_has_more_tokens_349, simple_name, type_parser_1_expr19, name, range(type_parser_1, 2044, 13, 66, 66), 'hasMoreTokens').
name(v_types_532, simple_name, type_parser_1_expr20, expression, range(type_parser_1, 2075, 5, 67, 67), 'types').
name(m_add_355, simple_name, type_parser_1_expr20, name, range(type_parser_1, 2081, 3, 67, 67), 'add').
name(m_parse_type_348, simple_name, type_parser_1_expr21, name, range(type_parser_1, 2085, 9, 67, 67), 'parseType').
name(p_tokens_531, simple_name, type_parser_1_expr21, (arguments, 0), range(type_parser_1, 2095, 6, 67, 67), 'tokens').
name(p_tokens_531, simple_name, type_parser_1_expr23, expression, range(type_parser_1, 2122, 6, 68, 68), 'tokens').
name(m_has_more_tokens_349, simple_name, type_parser_1_expr23, name, range(type_parser_1, 2129, 13, 68, 68), 'hasMoreTokens').
name(v_token_533, simple_name, type_parser_1_code35, name, range(type_parser_1, 2172, 5, 69, 69), 'token').
name(p_tokens_531, simple_name, type_parser_1_expr24, expression, range(type_parser_1, 2180, 6, 69, 69), 'tokens').
name(m_next_token_351, simple_name, type_parser_1_expr24, name, range(type_parser_1, 2187, 9, 69, 69), 'nextToken').
name(m_equals_244, simple_name, type_parser_1_expr25, name, range(type_parser_1, 2220, 6, 70, 70), 'equals').
name(v_token_533, simple_name, type_parser_1_expr25, (arguments, 0), range(type_parser_1, 2227, 5, 70, 70), 'token').
name(v_types_532, simple_name, type_parser_1_stmt23, expression, range(type_parser_1, 2242, 5, 70, 70), 'types').
name(m_equals_244, simple_name, type_parser_1_expr27, name, range(type_parser_1, 2270, 6, 71, 71), 'equals').
name(v_token_533, simple_name, type_parser_1_expr27, (arguments, 0), range(type_parser_1, 2277, 5, 71, 71), 'token').
name(f__factory_521, simple_name, type_parser_1_expr28, expression, range(type_parser_1, 2582, 8, 81, 81), '_factory').
name(m_find_class_273, simple_name, type_parser_1_expr28, name, range(type_parser_1, 2591, 9, 81, 81), 'findClass').
name(p_class_name_534, simple_name, type_parser_1_expr28, (arguments, 0), range(type_parser_1, 2601, 9, 81, 81), 'className').
name(p_str_538, simple_name, type_parser_1_stmt27, (arguments, 0), range(type_parser_1, 3395, 3, 105, 105), 'str').
name(f__input_539, simple_name, type_parser_1_expr30, left_hand_side, range(type_parser_1, 3426, 6, 106, 106), '_input').
name(p_str_538, simple_name, type_parser_1_expr30, right_hand_side, range(type_parser_1, 3435, 3, 106, 106), 'str').
name(f__pushback_token_540, simple_name, type_parser_1_expr33, left_operand, range(type_parser_1, 3530, 14, 111, 111), '_pushbackToken').
name(m_has_more_tokens_358, simple_name, type_parser_1_expr34, name, range(type_parser_1, 3563, 13, 111, 111), 'hasMoreTokens').
name(f__pushback_token_540, simple_name, type_parser_1_expr35, left_operand, range(type_parser_1, 3695, 14, 117, 117), '_pushbackToken').
name(v_token_541, simple_name, type_parser_1_expr36, left_hand_side, range(type_parser_1, 3737, 5, 118, 118), 'token').
name(f__pushback_token_540, simple_name, type_parser_1_expr36, right_hand_side, range(type_parser_1, 3745, 14, 118, 118), '_pushbackToken').
name(f__pushback_token_540, simple_name, type_parser_1_expr37, left_hand_side, range(type_parser_1, 3777, 14, 119, 119), '_pushbackToken').
name(v_token_541, simple_name, type_parser_1_expr38, left_hand_side, range(type_parser_1, 3837, 5, 121, 121), 'token').
name(m_next_token_359, simple_name, type_parser_1_expr39, name, range(type_parser_1, 3851, 9, 121, 121), 'nextToken').
name(f__index_542, simple_name, type_parser_1_expr40, left_hand_side, range(type_parser_1, 3880, 6, 122, 122), '_index').
name(v_token_541, simple_name, type_parser_1_expr41, expression, range(type_parser_1, 3890, 5, 122, 122), 'token').
name(m_length_360, simple_name, type_parser_1_expr41, name, range(type_parser_1, 3896, 6, 122, 122), 'length').
name(v_token_541, simple_name, type_parser_1_expr42, left_hand_side, range(type_parser_1, 3922, 5, 123, 123), 'token').
name(v_token_541, simple_name, type_parser_1_expr43, expression, range(type_parser_1, 3930, 5, 123, 123), 'token').
name(m_trim_347, simple_name, type_parser_1_expr43, name, range(type_parser_1, 3936, 4, 123, 123), 'trim').
name(v_token_541, simple_name, type_parser_1_stmt36, expression, range(type_parser_1, 3977, 5, 125, 125), 'token').
name(f__pushback_token_540, simple_name, type_parser_1_expr44, left_hand_side, range(type_parser_1, 4052, 14, 129, 129), '_pushbackToken').
name(p_token_543, simple_name, type_parser_1_expr44, right_hand_side, range(type_parser_1, 4069, 5, 129, 129), 'token').
%test_type_factory_1 - com.fasterxml.jackson.databind.type.TestTypeFactory
name(t_test_type_factory_2, simple_name, test_type_factory_1_code2, name, range(test_type_factory_1, 367, 15, 14, 14), 'TestTypeFactory').
name(t_enum_for_canonical_3, simple_name, test_type_factory_1_code4, name, range(test_type_factory_1, 586, 16, 23, 23), 'EnumForCanonical').
name(f_yes_222, simple_name, test_type_factory_1_code5, name, range(test_type_factory_1, 605, 3, 23, 23), 'YES').
name(f_no_223, simple_name, test_type_factory_1_code6, name, range(test_type_factory_1, 610, 2, 23, 23), 'NO').
name(v_tf_224, simple_name, test_type_factory_1_code9, name, range(test_type_factory_1, 7440, 2, 211, 211), 'tf').
name(t_type_factory_4, simple_name, test_type_factory_1_expr1, expression, range(test_type_factory_1, 7445, 11, 211, 211), 'TypeFactory').
name(m_default_instance_189, simple_name, test_type_factory_1_expr1, name, range(test_type_factory_1, 7457, 15, 211, 211), 'defaultInstance').
name(v_t_225, simple_name, test_type_factory_1_code11, name, range(test_type_factory_1, 7493, 1, 212, 212), 't').
name(v_tf_224, simple_name, test_type_factory_1_expr2, expression, range(test_type_factory_1, 7497, 2, 212, 212), 'tf').
name(m_construct_type_190, simple_name, test_type_factory_1_expr2, name, range(test_type_factory_1, 7500, 13, 212, 212), 'constructType').
name(v_can_226, simple_name, test_type_factory_1_code14, name, range(test_type_factory_1, 7556, 3, 213, 213), 'can').
name(v_t_225, simple_name, test_type_factory_1_expr4, expression, range(test_type_factory_1, 7562, 1, 213, 213), 't').
name(m_to_canonical_93, simple_name, test_type_factory_1_expr4, name, range(test_type_factory_1, 7564, 11, 213, 213), 'toCanonical').
name(m_assert_equals_191, simple_name, test_type_factory_1_expr5, name, range(test_type_factory_1, 7587, 12, 214, 214), 'assertEquals').
name(v_can_226, simple_name, test_type_factory_1_expr5, (arguments, 1), range(test_type_factory_1, 7622, 3, 214, 214), 'can').
name(m_assert_equals_192, simple_name, test_type_factory_1_expr6, name, range(test_type_factory_1, 7636, 12, 215, 215), 'assertEquals').
name(v_t_225, simple_name, test_type_factory_1_expr6, (arguments, 0), range(test_type_factory_1, 7649, 1, 215, 215), 't').
name(v_tf_224, simple_name, test_type_factory_1_expr7, expression, range(test_type_factory_1, 7652, 2, 215, 215), 'tf').
name(m_construct_from_canonical_193, simple_name, test_type_factory_1_expr7, name, range(test_type_factory_1, 7655, 22, 215, 215), 'constructFromCanonical').
name(v_can_226, simple_name, test_type_factory_1_expr7, (arguments, 0), range(test_type_factory_1, 7678, 3, 215, 215), 'can').
name(v_t_225, simple_name, test_type_factory_1_expr8, left_hand_side, range(test_type_factory_1, 7778, 1, 218, 218), 't').
name(v_tf_224, simple_name, test_type_factory_1_expr9, expression, range(test_type_factory_1, 7782, 2, 218, 218), 'tf').
name(m_construct_type_190, simple_name, test_type_factory_1_expr9, name, range(test_type_factory_1, 7785, 13, 218, 218), 'constructType').
name(v_can_226, simple_name, test_type_factory_1_expr11, left_hand_side, range(test_type_factory_1, 7835, 3, 219, 219), 'can').
name(v_t_225, simple_name, test_type_factory_1_expr12, expression, range(test_type_factory_1, 7841, 1, 219, 219), 't').
name(m_to_canonical_93, simple_name, test_type_factory_1_expr12, name, range(test_type_factory_1, 7843, 11, 219, 219), 'toCanonical').
name(m_assert_equals_191, simple_name, test_type_factory_1_expr13, name, range(test_type_factory_1, 7866, 12, 220, 220), 'assertEquals').
name(v_can_226, simple_name, test_type_factory_1_expr13, (arguments, 1), range(test_type_factory_1, 7920, 3, 220, 220), 'can').
name(m_assert_equals_192, simple_name, test_type_factory_1_expr14, name, range(test_type_factory_1, 7934, 12, 221, 221), 'assertEquals').
name(v_t_225, simple_name, test_type_factory_1_expr14, (arguments, 0), range(test_type_factory_1, 7947, 1, 221, 221), 't').
name(v_tf_224, simple_name, test_type_factory_1_expr15, expression, range(test_type_factory_1, 7950, 2, 221, 221), 'tf').
name(m_construct_from_canonical_193, simple_name, test_type_factory_1_expr15, name, range(test_type_factory_1, 7953, 22, 221, 221), 'constructFromCanonical').
name(v_can_226, simple_name, test_type_factory_1_expr15, (arguments, 0), range(test_type_factory_1, 7976, 3, 221, 221), 'can').
name(v_t_225, simple_name, test_type_factory_1_expr16, left_hand_side, range(test_type_factory_1, 7992, 1, 223, 223), 't').
name(v_tf_224, simple_name, test_type_factory_1_expr17, expression, range(test_type_factory_1, 7996, 2, 223, 223), 'tf').
name(m_construct_type_190, simple_name, test_type_factory_1_expr17, name, range(test_type_factory_1, 7999, 13, 223, 223), 'constructType').
name(v_can_226, simple_name, test_type_factory_1_expr19, left_hand_side, range(test_type_factory_1, 8047, 3, 224, 224), 'can').
name(v_t_225, simple_name, test_type_factory_1_expr20, expression, range(test_type_factory_1, 8053, 1, 224, 224), 't').
name(m_to_canonical_93, simple_name, test_type_factory_1_expr20, name, range(test_type_factory_1, 8055, 11, 224, 224), 'toCanonical').
name(m_assert_equals_191, simple_name, test_type_factory_1_expr21, name, range(test_type_factory_1, 8078, 12, 225, 225), 'assertEquals').
name(v_can_226, simple_name, test_type_factory_1_expr21, (arguments, 1), range(test_type_factory_1, 8147, 3, 225, 225), 'can').
name(m_assert_equals_192, simple_name, test_type_factory_1_expr22, name, range(test_type_factory_1, 8161, 12, 226, 226), 'assertEquals').
name(v_t_225, simple_name, test_type_factory_1_expr22, (arguments, 0), range(test_type_factory_1, 8174, 1, 226, 226), 't').
name(v_tf_224, simple_name, test_type_factory_1_expr23, expression, range(test_type_factory_1, 8177, 2, 226, 226), 'tf').
name(m_construct_from_canonical_193, simple_name, test_type_factory_1_expr23, name, range(test_type_factory_1, 8180, 22, 226, 226), 'constructFromCanonical').
name(v_can_226, simple_name, test_type_factory_1_expr23, (arguments, 0), range(test_type_factory_1, 8203, 3, 226, 226), 'can').
name(v_t_225, simple_name, test_type_factory_1_expr24, left_hand_side, range(test_type_factory_1, 8272, 1, 229, 229), 't').
name(v_tf_224, simple_name, test_type_factory_1_expr25, expression, range(test_type_factory_1, 8276, 2, 229, 229), 'tf').
name(m_construct_map_type_194, simple_name, test_type_factory_1_expr25, name, range(test_type_factory_1, 8279, 16, 229, 229), 'constructMapType').
name(v_can_226, simple_name, test_type_factory_1_expr29, left_hand_side, range(test_type_factory_1, 8358, 3, 230, 230), 'can').
name(v_t_225, simple_name, test_type_factory_1_expr30, expression, range(test_type_factory_1, 8364, 1, 230, 230), 't').
name(m_to_canonical_93, simple_name, test_type_factory_1_expr30, name, range(test_type_factory_1, 8366, 11, 230, 230), 'toCanonical').
name(m_assert_equals_191, simple_name, test_type_factory_1_expr31, name, range(test_type_factory_1, 8389, 12, 231, 231), 'assertEquals').
name(v_can_226, simple_name, test_type_factory_1_expr31, (arguments, 1), range(test_type_factory_1, 8526, 3, 232, 232), 'can').
name(m_assert_equals_192, simple_name, test_type_factory_1_expr32, name, range(test_type_factory_1, 8540, 12, 233, 233), 'assertEquals').
name(v_t_225, simple_name, test_type_factory_1_expr32, (arguments, 0), range(test_type_factory_1, 8553, 1, 233, 233), 't').
name(v_tf_224, simple_name, test_type_factory_1_expr33, expression, range(test_type_factory_1, 8556, 2, 233, 233), 'tf').
name(m_construct_from_canonical_193, simple_name, test_type_factory_1_expr33, name, range(test_type_factory_1, 8559, 22, 233, 233), 'constructFromCanonical').
name(v_can_226, simple_name, test_type_factory_1_expr33, (arguments, 0), range(test_type_factory_1, 8582, 3, 233, 233), 'can').
name(v_t_225, simple_name, test_type_factory_1_expr34, left_hand_side, range(test_type_factory_1, 8649, 1, 237, 237), 't').
name(v_tf_224, simple_name, test_type_factory_1_expr35, expression, range(test_type_factory_1, 8653, 2, 237, 237), 'tf').
name(m_construct_from_canonical_193, simple_name, test_type_factory_1_expr35, name, range(test_type_factory_1, 8656, 22, 237, 237), 'constructFromCanonical').
name(t_string_int_map_entry_5, simple_name, test_type_factory_1_code20, name, range(test_type_factory_1, 20135, 17, 499, 499), 'StringIntMapEntry').
%type_base_1 - com.fasterxml.jackson.databind.type.TypeBase
name(f_no_bindings_227, simple_name, type_base_1_code8, name, range(type_base_1, 485, 11, 17, 17), 'NO_BINDINGS').
name(t_type_bindings_1, simple_name, type_base_1_expr1, expression, range(type_base_1, 499, 12, 17, 17), 'TypeBindings').
name(m_empty_bindings_159, simple_name, type_base_1_expr1, name, range(type_base_1, 512, 13, 17, 17), 'emptyBindings').
name(f_no_types_228, simple_name, type_base_1_code16, name, range(type_base_1, 565, 8, 18, 18), 'NO_TYPES').
name(p_raw_229, simple_name, type_base_1_stmt1, (arguments, 0), range(type_base_1, 1342, 3, 45, 45), 'raw').
name(p_hash_233, simple_name, type_base_1_stmt1, (arguments, 1), range(type_base_1, 1347, 4, 45, 45), 'hash').
name(p_value_handler_234, simple_name, type_base_1_stmt1, (arguments, 2), range(type_base_1, 1353, 12, 45, 45), 'valueHandler').
name(p_type_handler_235, simple_name, type_base_1_stmt1, (arguments, 3), range(type_base_1, 1367, 11, 45, 45), 'typeHandler').
name(p_as_static_236, simple_name, type_base_1_stmt1, (arguments, 4), range(type_base_1, 1380, 8, 45, 45), 'asStatic').
name(f__bindings_216, simple_name, type_base_1_expr4, left_hand_side, range(type_base_1, 1399, 9, 46, 46), '_bindings').
name(p_bindings_230, simple_name, type_base_1_expr7, left_operand, range(type_base_1, 1412, 8, 46, 46), 'bindings').
name(f_no_bindings_227, simple_name, type_base_1_expr5, then_expression, range(type_base_1, 1432, 11, 46, 46), 'NO_BINDINGS').
name(p_bindings_230, simple_name, type_base_1_expr5, else_expression, range(type_base_1, 1446, 8, 46, 46), 'bindings').
name(f__super_class_237, simple_name, type_base_1_expr8, left_hand_side, range(type_base_1, 1464, 11, 47, 47), '_superClass').
name(p_super_class_231, simple_name, type_base_1_expr8, right_hand_side, range(type_base_1, 1478, 10, 47, 47), 'superClass').
name(f__super_interfaces_238, simple_name, type_base_1_expr9, left_hand_side, range(type_base_1, 1498, 16, 48, 48), '_superInterfaces').
name(p_super_ints_232, simple_name, type_base_1_expr9, right_hand_side, range(type_base_1, 1517, 9, 48, 48), 'superInts').
name(v_str_240, simple_name, type_base_1_code23, name, range(type_base_1, 1906, 3, 66, 66), 'str').
name(f__canonical_name_241, simple_name, type_base_1_code23, initializer, range(type_base_1, 1912, 14, 66, 66), '_canonicalName').
name(v_str_240, simple_name, type_base_1_expr10, left_operand, range(type_base_1, 1940, 3, 67, 67), 'str').
name(v_str_240, simple_name, type_base_1_expr11, left_hand_side, range(type_base_1, 1967, 3, 68, 68), 'str').
name(m_build_canonical_name_215, simple_name, type_base_1_expr12, name, range(type_base_1, 1973, 18, 68, 68), 'buildCanonicalName').
name(v_str_240, simple_name, type_base_1_stmt8, expression, range(type_base_1, 2020, 3, 70, 70), 'str').

%%% Literals
%collection_like_type_1 - com.fasterxml.jackson.databind.type.CollectionLikeType
literal(collection_like_type_1_literal1, null_literal, collection_like_type_1_expr10, right_operand, range(collection_like_type_1, 7193, 4, 215, 215), null).
literal(collection_like_type_1_literal2, character_literal, collection_like_type_1_expr11, (arguments, 0), range(collection_like_type_1, 7223, 3, 216, 216), '<').
literal(collection_like_type_1_literal3, character_literal, collection_like_type_1_expr14, (arguments, 0), range(collection_like_type_1, 7302, 3, 218, 218), '>').
literal(collection_like_type_1_literal4, boolean_literal, collection_like_type_1_stmt12, expression, range(collection_like_type_1, 8134, 4, 248, 248), true).
literal(collection_like_type_1_literal5, null_literal, collection_like_type_1_expr18, right_operand, range(collection_like_type_1, 8157, 4, 249, 249), null).
literal(collection_like_type_1_literal6, boolean_literal, collection_like_type_1_stmt14, expression, range(collection_like_type_1, 8170, 5, 249, 249), false).
literal(collection_like_type_1_literal7, boolean_literal, collection_like_type_1_stmt16, expression, range(collection_like_type_1, 8224, 5, 250, 250), false).
%lrumap_1 - com.fasterxml.jackson.databind.util.LRUMap
literal(lrumap_1_literal1, number_literal, lrumap_1_expr2, (arguments, 1), range(lrumap_1, 1416, 4, 35, 35), 0.8).
literal(lrumap_1_literal2, number_literal, lrumap_1_expr2, (arguments, 2), range(lrumap_1, 1422, 1, 35, 35), 4).
%class_stack_1 - com.fasterxml.jackson.databind.type.ClassStack
literal(class_stack_1_literal1, null_literal, class_stack_1_stmt1, (arguments, 0), range(class_stack_1, 495, 4, 21, 21), null).
literal(class_stack_1_literal2, null_literal, class_stack_1_expr6, right_operand, range(class_stack_1, 1438, 4, 55, 55), null).
literal(class_stack_1_literal3, null_literal, class_stack_1_expr10, right_operand, range(class_stack_1, 1716, 4, 65, 65), null).
literal(class_stack_1_literal4, null_literal, class_stack_1_stmt10, expression, range(class_stack_1, 1853, 4, 70, 70), null).
%class_util_1 - com.fasterxml.jackson.databind.util.ClassUtil
literal(class_util_1_literal1, number_literal, class_util_1_expr2, (dimensions, 0), range(class_util_1, 515, 1, 17, 17), 0).
literal(class_util_1_literal2, number_literal, class_util_1_expr3, (dimensions, 0), range(class_util_1, 571, 1, 18, 18), 0).
%java_type_1 - com.fasterxml.jackson.databind.JavaType
literal(java_type_1_literal1, null_literal, java_type_1_expr11, right_operand, range(java_type_1, 15875, 4, 490, 490), null).
literal(java_type_1_literal2, null_literal, java_type_1_expr13, right_operand, range(java_type_1, 15902, 4, 490, 490), null).
%collection_type_1 - com.fasterxml.jackson.databind.type.CollectionType
literal(collection_type_1_literal1, null_literal, collection_type_1_expr2, (arguments, 5), range(collection_type_1, 1228, 4, 41, 41), null).
literal(collection_type_1_literal2, null_literal, collection_type_1_expr2, (arguments, 6), range(collection_type_1, 1234, 4, 41, 41), null).
literal(collection_type_1_literal3, boolean_literal, collection_type_1_expr2, (arguments, 7), range(collection_type_1, 1240, 5, 41, 41), false).
%map_like_type_1 - com.fasterxml.jackson.databind.type.MapLikeType
literal(map_like_type_1_literal1, null_literal, map_like_type_1_expr9, right_operand, range(map_like_type_1, 6669, 4, 192, 192), null).
literal(map_like_type_1_literal2, character_literal, map_like_type_1_expr10, (arguments, 0), range(map_like_type_1, 6699, 3, 193, 193), '<').
literal(map_like_type_1_literal3, character_literal, map_like_type_1_expr13, (arguments, 0), range(map_like_type_1, 6774, 3, 195, 195), ',').
literal(map_like_type_1_literal4, character_literal, map_like_type_1_expr16, (arguments, 0), range(map_like_type_1, 6851, 3, 197, 197), '>').
literal(map_like_type_1_literal5, boolean_literal, map_like_type_1_stmt15, expression, range(map_like_type_1, 9640, 4, 300, 300), true).
literal(map_like_type_1_literal6, null_literal, map_like_type_1_expr23, right_operand, range(map_like_type_1, 9663, 4, 301, 301), null).
literal(map_like_type_1_literal7, boolean_literal, map_like_type_1_stmt17, expression, range(map_like_type_1, 9676, 5, 301, 301), false).
literal(map_like_type_1_literal8, boolean_literal, map_like_type_1_stmt19, expression, range(map_like_type_1, 9730, 5, 302, 302), false).
%type_factory_1 - com.fasterxml.jackson.databind.type.TypeFactory
literal(type_factory_1_literal1, number_literal, type_factory_1_expr1, (dimensions, 0), range(type_factory_1, 1436, 1, 39, 39), 0).
literal(type_factory_1_literal2, null_literal, type_factory_1_stmt1, (arguments, 0), range(type_factory_1, 5208, 4, 145, 145), null).
literal(type_factory_1_literal3, null_literal, type_factory_1_expr18, right_operand, range(type_factory_1, 5344, 4, 152, 152), null).
literal(type_factory_1_literal4, number_literal, type_factory_1_expr20, (arguments, 0), range(type_factory_1, 5404, 2, 153, 153), 16).
literal(type_factory_1_literal5, number_literal, type_factory_1_expr20, (arguments, 1), range(type_factory_1, 5408, 3, 153, 153), 200).
literal(type_factory_1_literal6, null_literal, type_factory_1_expr25, right_hand_side, range(type_factory_1, 5517, 4, 157, 157), null).
literal(type_factory_1_literal7, null_literal, type_factory_1_expr26, right_hand_side, range(type_factory_1, 5546, 4, 158, 158), null).
literal(type_factory_1_literal8, character_literal, type_factory_1_expr28, (arguments, 0), range(type_factory_1, 9662, 3, 274, 274), '.').
literal(type_factory_1_literal9, number_literal, type_factory_1_expr27, right_operand, range(type_factory_1, 9669, 1, 274, 274), 0).
literal(type_factory_1_literal10, null_literal, type_factory_1_code172, initializer, range(type_factory_1, 9914, 4, 281, 281), null).
literal(type_factory_1_literal11, null_literal, type_factory_1_expr31, right_operand, range(type_factory_1, 9994, 4, 283, 283), null).
literal(type_factory_1_literal12, null_literal, type_factory_1_expr35, right_operand, range(type_factory_1, 10104, 4, 286, 286), null).
literal(type_factory_1_literal13, boolean_literal, type_factory_1_expr36, (arguments, 1), range(type_factory_1, 10177, 4, 288, 288), true).
literal(type_factory_1_literal14, boolean_literal, type_factory_1_expr37, (arguments, 1), range(type_factory_1, 10865, 4, 308, 308), true).
literal(type_factory_1_literal15, null_literal, type_factory_1_expr39, (arguments, 0), range(type_factory_1, 23628, 4, 610, 610), null).
literal(type_factory_1_literal16, null_literal, type_factory_1_expr43, (arguments, 0), range(type_factory_1, 29835, 4, 769, 769), null).
literal(type_factory_1_literal17, null_literal, type_factory_1_expr45, (arguments, 0), range(type_factory_1, 29896, 4, 770, 770), null).
literal(type_factory_1_literal18, null_literal, type_factory_1_expr48, (arguments, 0), range(type_factory_1, 30340, 4, 782, 782), null).
literal(type_factory_1_literal19, number_literal, type_factory_1_expr55, (arguments, 0), range(type_factory_1, 40923, 1, 1040, 1040), 0).
literal(type_factory_1_literal20, number_literal, type_factory_1_expr57, (arguments, 0), range(type_factory_1, 40963, 1, 1041, 1041), 1).
literal(type_factory_1_literal21, number_literal, type_factory_1_expr61, right_operand, range(type_factory_1, 41644, 1, 1058, 1058), 1).
literal(type_factory_1_literal22, number_literal, type_factory_1_expr64, (arguments, 0), range(type_factory_1, 41681, 1, 1059, 1059), 0).
literal(type_factory_1_literal23, null_literal, type_factory_1_stmt44, expression, range(type_factory_1, 44885, 4, 1140, 1140), null).
literal(type_factory_1_literal24, null_literal, type_factory_1_expr84, right_operand, range(type_factory_1, 46822, 4, 1186, 1186), null).
literal(type_factory_1_literal25, null_literal, type_factory_1_expr86, right_operand, range(type_factory_1, 47825, 4, 1212, 1212), null).
literal(type_factory_1_literal26, null_literal, type_factory_1_expr89, right_operand, range(type_factory_1, 47991, 4, 1217, 1217), null).
literal(type_factory_1_literal27, null_literal, type_factory_1_expr96, right_operand, range(type_factory_1, 48209, 4, 1223, 1223), null).
literal(type_factory_1_literal28, null_literal, type_factory_1_expr97, right_operand, range(type_factory_1, 48329, 4, 1228, 1228), null).
literal(type_factory_1_literal29, null_literal, type_factory_1_expr101, right_operand, range(type_factory_1, 48478, 4, 1232, 1232), null).
literal(type_factory_1_literal30, null_literal, type_factory_1_expr106, right_hand_side, range(type_factory_1, 49347, 4, 1253, 1253), null).
literal(type_factory_1_literal31, null_literal, type_factory_1_expr115, right_operand, range(type_factory_1, 50213, 4, 1268, 1268), null).
literal(type_factory_1_literal32, null_literal, type_factory_1_expr118, right_operand, range(type_factory_1, 50438, 4, 1272, 1272), null).
literal(type_factory_1_literal33, null_literal, type_factory_1_expr121, right_operand, range(type_factory_1, 50580, 4, 1274, 1274), null).
literal(type_factory_1_literal34, null_literal, type_factory_1_expr124, right_operand, range(type_factory_1, 50733, 4, 1276, 1276), null).
literal(type_factory_1_literal35, null_literal, type_factory_1_expr132, right_operand, range(type_factory_1, 51563, 4, 1295, 1295), null).
literal(type_factory_1_literal36, null_literal, type_factory_1_expr136, right_operand, range(type_factory_1, 51878, 4, 1304, 1304), null).
literal(type_factory_1_literal37, number_literal, type_factory_1_expr137, right_operand, range(type_factory_1, 51902, 1, 1304, 1304), 0).
literal(type_factory_1_literal38, number_literal, type_factory_1_code238, initializer, range(type_factory_1, 52048, 1, 1309, 1309), 0).
literal(type_factory_1_literal39, null_literal, type_factory_1_expr146, right_operand, range(type_factory_1, 52631, 4, 1324, 1324), null).
literal(type_factory_1_literal40, null_literal, type_factory_1_stmt106, expression, range(type_factory_1, 53610, 4, 1343, 1343), null).
literal(type_factory_1_literal41, number_literal, type_factory_1_code250, initializer, range(type_factory_1, 53989, 1, 1353, 1353), 0).
literal(type_factory_1_literal42, null_literal, type_factory_1_expr160, right_operand, range(type_factory_1, 54144, 4, 1355, 1355), null).
literal(type_factory_1_literal43, null_literal, type_factory_1_stmt112, expression, range(type_factory_1, 54222, 4, 1359, 1359), null).
literal(type_factory_1_literal45, null_literal, type_factory_1_expr169, right_operand, range(type_factory_1, 55354, 4, 1388, 1388), null).
literal(type_factory_1_literal44, number_literal, type_factory_1_expr167, then_expression, range(type_factory_1, 55362, 1, 1388, 1388), 0).
literal(type_factory_1_literal46, number_literal, type_factory_1_expr170, right_operand, range(type_factory_1, 55448, 1, 1391, 1391), 0).
literal(type_factory_1_literal47, number_literal, type_factory_1_code275, initializer, range(type_factory_1, 55591, 1, 1395, 1395), 0).
literal(type_factory_1_literal48, null_literal, type_factory_1_expr184, right_operand, range(type_factory_1, 56374, 4, 1414, 1414), null).
literal(type_factory_1_literal49, number_literal, type_factory_1_expr190, index, range(type_factory_1, 56806, 1, 1425, 1425), 0).
%simple_type_1 - com.fasterxml.jackson.databind.type.SimpleType
literal(simple_type_1_literal1, null_literal, simple_type_1_stmt1, (arguments, 2), range(simple_type_1, 1110, 4, 33, 33), null).
literal(simple_type_1_literal2, null_literal, simple_type_1_stmt1, (arguments, 3), range(simple_type_1, 1116, 4, 33, 33), null).
literal(simple_type_1_literal3, null_literal, simple_type_1_stmt2, (arguments, 4), range(simple_type_1, 1300, 4, 38, 38), null).
literal(simple_type_1_literal4, null_literal, simple_type_1_stmt2, (arguments, 5), range(simple_type_1, 1306, 4, 38, 38), null).
literal(simple_type_1_literal5, boolean_literal, simple_type_1_stmt2, (arguments, 6), range(simple_type_1, 1312, 5, 38, 38), false).
literal(simple_type_1_literal6, number_literal, simple_type_1_stmt3, (arguments, 4), range(simple_type_1, 1818, 1, 56, 56), 0).
literal(simple_type_1_literal7, null_literal, simple_type_1_stmt4, expression, range(simple_type_1, 8400, 4, 212, 212), null).
literal(simple_type_1_literal8, number_literal, simple_type_1_expr9, right_operand, range(simple_type_1, 8625, 1, 222, 222), 0).
literal(simple_type_1_literal9, boolean_literal, simple_type_1_stmt11, expression, range(simple_type_1, 11103, 4, 312, 312), true).
%type_bindings_1 - com.fasterxml.jackson.databind.type.TypeBindings
literal(type_bindings_1_literal1, number_literal, type_bindings_1_expr1, (dimensions, 0), range(type_bindings_1, 395, 1, 16, 16), 0).
literal(type_bindings_1_literal2, number_literal, type_bindings_1_expr2, (dimensions, 0), range(type_bindings_1, 460, 1, 18, 18), 0).
literal(type_bindings_1_literal3, null_literal, type_bindings_1_expr3, (arguments, 2), range(type_bindings_1, 550, 4, 20, 20), null).
literal(type_bindings_1_literal4, null_literal, type_bindings_1_expr7, right_operand, range(type_bindings_1, 1326, 4, 53, 53), null).
literal(type_bindings_1_literal5, null_literal, type_bindings_1_expr11, right_operand, range(type_bindings_1, 1381, 4, 54, 54), null).
literal(type_bindings_1_literal6, number_literal, type_bindings_1_code34, initializer, range(type_bindings_1, 1595, 1, 58, 58), 1).
literal(type_bindings_1_literal7, number_literal, type_bindings_1_code36, initializer, range(type_bindings_1, 1619, 1, 59, 59), 0).
literal(type_bindings_1_literal8, null_literal, type_bindings_1_expr25, right_operand, range(type_bindings_1, 2342, 4, 84, 84), null).
literal(type_bindings_1_literal9, null_literal, type_bindings_1_expr28, right_operand, range(type_bindings_1, 2601, 4, 91, 91), null).
literal(type_bindings_1_literal10, number_literal, type_bindings_1_expr30, index, range(type_bindings_1, 2738, 1, 95, 95), 0).
literal(type_bindings_1_literal11, number_literal, type_bindings_1_expr32, index, range(type_bindings_1, 2803, 1, 97, 97), 0).
literal(type_bindings_1_literal12, number_literal, type_bindings_1_expr33, index, range(type_bindings_1, 2813, 1, 97, 97), 1).
literal(type_bindings_1_literal14, null_literal, type_bindings_1_expr37, right_operand, range(type_bindings_1, 3884, 4, 123, 123), null).
literal(type_bindings_1_literal13, number_literal, type_bindings_1_expr35, then_expression, range(type_bindings_1, 3892, 1, 123, 123), 0).
literal(type_bindings_1_literal15, number_literal, type_bindings_1_expr38, right_operand, range(type_bindings_1, 3931, 1, 124, 124), 1).
literal(type_bindings_1_literal17, number_literal, type_bindings_1_expr44, index, range(type_bindings_1, 4178, 1, 128, 128), 0).
literal(type_bindings_1_literal16, null_literal, type_bindings_1_expr39, (arguments, 2), range(type_bindings_1, 4239, 4, 129, 129), null).
literal(type_bindings_1_literal19, null_literal, type_bindings_1_expr48, right_operand, range(type_bindings_1, 4535, 4, 136, 136), null).
literal(type_bindings_1_literal18, number_literal, type_bindings_1_expr46, then_expression, range(type_bindings_1, 4543, 1, 136, 136), 0).
literal(type_bindings_1_literal20, number_literal, type_bindings_1_expr49, right_operand, range(type_bindings_1, 4582, 1, 137, 137), 2).
literal(type_bindings_1_literal22, number_literal, type_bindings_1_expr55, index, range(type_bindings_1, 4830, 1, 141, 141), 0).
literal(type_bindings_1_literal23, number_literal, type_bindings_1_expr57, index, range(type_bindings_1, 4849, 1, 141, 141), 1).
literal(type_bindings_1_literal21, null_literal, type_bindings_1_expr50, (arguments, 2), range(type_bindings_1, 4920, 4, 142, 142), null).
literal(type_bindings_1_literal25, null_literal, type_bindings_1_expr60, right_operand, range(type_bindings_1, 7230, 4, 200, 200), null).
literal(type_bindings_1_literal24, number_literal, type_bindings_1_expr58, then_expression, range(type_bindings_1, 7238, 1, 200, 200), 0).
literal(type_bindings_1_literal26, number_literal, type_bindings_1_expr65, right_operand, range(type_bindings_1, 7302, 1, 201, 201), 0).
literal(type_bindings_1_literal27, number_literal, type_bindings_1_code81, initializer, range(type_bindings_1, 7843, 1, 218, 218), 0).
literal(type_bindings_1_literal28, null_literal, type_bindings_1_stmt33, expression, range(type_bindings_1, 8806, 4, 241, 241), null).
literal(type_bindings_1_literal29, number_literal, type_bindings_1_expr77, right_operand, range(type_bindings_1, 8883, 1, 245, 245), 0).
literal(type_bindings_1_literal30, number_literal, type_bindings_1_expr78, right_operand, range(type_bindings_1, 9522, 1, 276, 276), 0).
literal(type_bindings_1_literal31, null_literal, type_bindings_1_expr80, right_operand, range(type_bindings_1, 9738, 4, 286, 286), null).
literal(type_bindings_1_literal32, boolean_literal, type_bindings_1_stmt39, expression, range(type_bindings_1, 9958, 5, 293, 293), false).
literal(type_bindings_1_literal33, boolean_literal, type_bindings_1_stmt62, expression, range(type_bindings_1, 15281, 4, 447, 447), true).
literal(type_bindings_1_literal34, null_literal, type_bindings_1_expr121, right_operand, range(type_bindings_1, 15308, 4, 448, 448), null).
literal(type_bindings_1_literal35, boolean_literal, type_bindings_1_stmt64, expression, range(type_bindings_1, 15321, 5, 448, 448), false).
literal(type_bindings_1_literal36, boolean_literal, type_bindings_1_stmt66, expression, range(type_bindings_1, 15379, 5, 449, 449), false).
literal(type_bindings_1_literal37, number_literal, type_bindings_1_code220, initializer, range(type_bindings_1, 15683, 1, 457, 457), 0).
literal(type_bindings_1_literal38, boolean_literal, type_bindings_1_stmt74, expression, range(type_bindings_1, 15885, 4, 462, 462), true).
literal(type_bindings_1_literal39, boolean_literal, type_bindings_1_stmt75, expression, range(type_bindings_1, 15942, 5, 465, 465), false).
%map_type_1 - com.fasterxml.jackson.databind.type.MapType
literal(map_type_1_literal1, null_literal, map_type_1_expr2, (arguments, 6), range(map_type_1, 1249, 4, 40, 40), null).
literal(map_type_1_literal2, null_literal, map_type_1_expr2, (arguments, 7), range(map_type_1, 1255, 4, 40, 40), null).
literal(map_type_1_literal3, boolean_literal, map_type_1_expr2, (arguments, 8), range(map_type_1, 1261, 5, 40, 40), false).
%type_parser_1 - com.fasterxml.jackson.databind.type.TypeParser
literal(type_parser_1_literal1, string_literal, type_parser_1_expr12, expression, range(type_parser_1, 1443, 3, 51, 51), "<").
literal(type_parser_1_literal2, null_literal, type_parser_1_expr15, (arguments, 0), range(type_parser_1, 1651, 4, 54, 54), null).
literal(type_parser_1_literal3, null_literal, type_parser_1_expr17, (arguments, 0), range(type_parser_1, 1827, 4, 59, 59), null).
literal(type_parser_1_literal4, null_literal, type_parser_1_expr17, (arguments, 2), range(type_parser_1, 1839, 4, 59, 59), null).
literal(type_parser_1_literal5, string_literal, type_parser_1_expr25, expression, range(type_parser_1, 2216, 3, 70, 70), ">").
literal(type_parser_1_literal6, string_literal, type_parser_1_expr27, expression, range(type_parser_1, 2266, 3, 71, 71), ",").
literal(type_parser_1_literal7, string_literal, type_parser_1_stmt27, (arguments, 1), range(type_parser_1, 3400, 5, 105, 105), "<,>").
literal(type_parser_1_literal8, boolean_literal, type_parser_1_stmt27, (arguments, 2), range(type_parser_1, 3407, 4, 105, 105), true).
literal(type_parser_1_literal9, null_literal, type_parser_1_expr33, right_operand, range(type_parser_1, 3548, 4, 111, 111), null).
literal(type_parser_1_literal10, null_literal, type_parser_1_expr35, right_operand, range(type_parser_1, 3713, 4, 117, 117), null).
literal(type_parser_1_literal11, null_literal, type_parser_1_expr37, right_hand_side, range(type_parser_1, 3794, 4, 119, 119), null).
%test_type_factory_1 - com.fasterxml.jackson.databind.type.TestTypeFactory
literal(test_type_factory_1_literal1, string_literal, test_type_factory_1_expr5, (arguments, 0), range(test_type_factory_1, 7600, 20, 214, 214), "java.util.Calendar").
literal(test_type_factory_1_literal2, string_literal, test_type_factory_1_expr13, (arguments, 0), range(test_type_factory_1, 7879, 39, 220, 220), "java.util.ArrayList<java.lang.Object>").
literal(test_type_factory_1_literal3, string_literal, test_type_factory_1_expr21, (arguments, 0), range(test_type_factory_1, 8091, 54, 225, 225), "java.util.TreeMap<java.lang.Object,java.lang.Object>").
literal(test_type_factory_1_literal4, string_literal, test_type_factory_1_expr31, (arguments, 0), range(test_type_factory_1, 8402, 106, 231, 231), "java.util.EnumMap<com.fasterxml.jackson.databind.type.TestTypeFactory$EnumForCanonical,java.lang.String>").
literal(test_type_factory_1_literal5, string_literal, test_type_factory_1_expr35, (arguments, 0), range(test_type_factory_1, 8679, 16, 237, 237), "java.util.List").
%type_base_1 - com.fasterxml.jackson.databind.type.TypeBase
literal(type_base_1_literal1, number_literal, type_base_1_expr2, (dimensions, 0), range(type_base_1, 589, 1, 18, 18), 0).
literal(type_base_1_literal2, null_literal, type_base_1_expr7, right_operand, range(type_base_1, 1424, 4, 46, 46), null).
literal(type_base_1_literal3, null_literal, type_base_1_expr10, right_operand, range(type_base_1, 1947, 4, 67, 67), null).

%%% Other Code Entities
%collection_like_type_1 - com.fasterxml.jackson.databind.type.CollectionLikeType
code(collection_like_type_1_code1, compilation_unit, range(collection_like_type_1, 0, 8537, 1, -1)).
code(collection_like_type_1_code2, type_declaration, collection_like_type_1_code1, (types, 0), range(collection_like_type_1, 164, 8372, 8, 262)).
code(collection_like_type_1_code3, method_declaration, collection_like_type_1_code2, (body_declarations, 2), range(collection_like_type_1, 869, 377, 30, 37)).
code(collection_like_type_1_code4, method_declaration, collection_like_type_1_code2, (body_declarations, 21), range(collection_like_type_1, 6517, 116, 192, 195)).
code(collection_like_type_1_code5, method_declaration, collection_like_type_1_code2, (body_declarations, 24), range(collection_like_type_1, 7026, 327, 211, 221)).
code(collection_like_type_1_code6, simple_type, collection_like_type_1_stmt4, type, range(collection_like_type_1, 7088, 13, 213, 213)).
code(collection_like_type_1_code7, variable_declaration_fragment, collection_like_type_1_stmt4, (fragments, 0), range(collection_like_type_1, 7102, 24, 213, 213)).
code(collection_like_type_1_code8, simple_type, collection_like_type_1_expr7, type, range(collection_like_type_1, 7111, 13, 213, 213)).
code(collection_like_type_1_code9, method_declaration, collection_like_type_1_code2, (body_declarations, 26), range(collection_like_type_1, 8052, 329, 245, 254)).
code(collection_like_type_1_code10, simple_type, collection_like_type_1_stmt17, type, range(collection_like_type_1, 8240, 18, 252, 252)).
code(collection_like_type_1_code11, variable_declaration_fragment, collection_like_type_1_stmt17, (fragments, 0), range(collection_like_type_1, 8259, 30, 252, 252)).
code(collection_like_type_1_code12, simple_type, collection_like_type_1_expr22, type, range(collection_like_type_1, 8268, 18, 252, 252)).
%lrumap_1 - com.fasterxml.jackson.databind.util.LRUMap
code(lrumap_1_code1, compilation_unit, range(lrumap_1, 0, 3349, 1, -1)).
code(lrumap_1_code2, type_declaration, lrumap_1_code1, (types, 0), range(lrumap_1, 112, 3236, 6, 98)).
code(lrumap_1_code3, method_declaration, lrumap_1_code2, (body_declarations, 3), range(lrumap_1, 1240, 225, 32, 37)).
code(lrumap_1_code4, parameterized_type, lrumap_1_expr2, type, range(lrumap_1, 1377, 22, 35, 35)).
code(lrumap_1_code5, simple_type, lrumap_1_code4, type, range(lrumap_1, 1377, 17, 35, 35)).
code(lrumap_1_code6, simple_type, lrumap_1_code4, (type_arguments, 0), range(lrumap_1, 1395, 1, 35, 35)).
code(lrumap_1_code7, simple_type, lrumap_1_code4, (type_arguments, 1), range(lrumap_1, 1397, 1, 35, 35)).
code(lrumap_1_code8, method_declaration, lrumap_1_code2, (body_declarations, 5), range(lrumap_1, 1829, 462, 51, 65)).
code(lrumap_1_code10, modifier, lrumap_1_code9, (modifiers, 0), range(lrumap_1, 2382, 6, 68, 68)).
code(lrumap_1_code9, method_declaration, lrumap_1_code2, (body_declarations, 6), range(lrumap_1, 2382, 51, 68, 68)).
code(lrumap_1_code11, simple_type, lrumap_1_code9, return_type2, range(lrumap_1, 2389, 1, 68, 68)).
code(lrumap_1_code13, simple_type, lrumap_1_code12, type, range(lrumap_1, 2395, 6, 68, 68)).
code(lrumap_1_code12, single_variable_declaration, lrumap_1_code9, (parameters, 0), range(lrumap_1, 2395, 10, 68, 68)).
%class_stack_1 - com.fasterxml.jackson.databind.type.ClassStack
code(class_stack_1_code1, compilation_unit, range(class_stack_1, 0, 2340, 1, -1)).
code(class_stack_1_code2, type_declaration, class_stack_1_code1, (types, 0), range(class_stack_1, 124, 2215, 7, 86)).
code(class_stack_1_code3, method_declaration, class_stack_1_code2, (body_declarations, 3), range(class_stack_1, 443, 74, 20, 22)).
code(class_stack_1_code4, method_declaration, class_stack_1_code2, (body_declarations, 4), range(class_stack_1, 523, 111, 24, 27)).
code(class_stack_1_code5, modifier, class_stack_1_code4, (modifiers, 0), range(class_stack_1, 523, 7, 24, 24)).
code(class_stack_1_code6, single_variable_declaration, class_stack_1_code4, (parameters, 0), range(class_stack_1, 542, 17, 24, 24)).
code(class_stack_1_code7, simple_type, class_stack_1_code6, type, range(class_stack_1, 542, 10, 24, 24)).
code(class_stack_1_code8, single_variable_declaration, class_stack_1_code4, (parameters, 1), range(class_stack_1, 561, 13, 24, 24)).
code(class_stack_1_code10, simple_type, class_stack_1_code9, type, range(class_stack_1, 561, 5, 24, 24)).
code(class_stack_1_code9, parameterized_type, class_stack_1_code8, type, range(class_stack_1, 561, 8, 24, 24)).
code(class_stack_1_code11, wildcard_type, class_stack_1_code9, (type_arguments, 0), range(class_stack_1, 567, 1, 24, 24)).
code(class_stack_1_code12, method_declaration, class_stack_1_code2, (body_declarations, 5), range(class_stack_1, 640, 166, 29, 34)).
code(class_stack_1_code13, simple_type, class_stack_1_expr4, type, range(class_stack_1, 778, 10, 33, 33)).
code(class_stack_1_code14, method_declaration, class_stack_1_code2, (body_declarations, 7), range(class_stack_1, 1181, 396, 48, 60)).
code(class_stack_1_code15, method_declaration, class_stack_1_code2, (body_declarations, 8), range(class_stack_1, 1583, 281, 62, 71)).
code(class_stack_1_code16, simple_type, class_stack_1_expr9, type, range(class_stack_1, 1681, 10, 65, 65)).
code(class_stack_1_code17, variable_declaration_fragment, class_stack_1_expr9, (fragments, 0), range(class_stack_1, 1692, 14, 65, 65)).
%class_util_1 - com.fasterxml.jackson.databind.util.ClassUtil
code(class_util_1_code1, compilation_unit, range(class_util_1, 0, 39038, 1, -1)).
code(class_util_1_code2, type_declaration, class_util_1_code1, (types, 0), range(class_util_1, 352, 38685, 13, 1155)).
code(class_util_1_code3, field_declaration, class_util_1_code2, (body_declarations, 0), range(class_util_1, 387, 56, 15, 15)).
code(class_util_1_code4, modifier, class_util_1_code3, (modifiers, 0), range(class_util_1, 387, 7, 15, 15)).
code(class_util_1_code5, modifier, class_util_1_code3, (modifiers, 1), range(class_util_1, 395, 5, 15, 15)).
code(class_util_1_code6, modifier, class_util_1_code3, (modifiers, 2), range(class_util_1, 401, 6, 15, 15)).
code(class_util_1_code7, parameterized_type, class_util_1_code3, type, range(class_util_1, 408, 8, 15, 15)).
code(class_util_1_code8, simple_type, class_util_1_code7, type, range(class_util_1, 408, 5, 15, 15)).
code(class_util_1_code9, wildcard_type, class_util_1_code7, (type_arguments, 0), range(class_util_1, 414, 1, 15, 15)).
code(class_util_1_code10, variable_declaration_fragment, class_util_1_code3, (fragments, 0), range(class_util_1, 417, 25, 15, 15)).
code(class_util_1_code11, simple_type, class_util_1_expr1, type, range(class_util_1, 430, 6, 15, 15)).
code(class_util_1_code12, field_declaration, class_util_1_code2, (body_declarations, 1), range(class_util_1, 449, 69, 17, 17)).
code(class_util_1_code13, modifier, class_util_1_code12, (modifiers, 0), range(class_util_1, 449, 7, 17, 17)).
code(class_util_1_code14, modifier, class_util_1_code12, (modifiers, 1), range(class_util_1, 457, 5, 17, 17)).
code(class_util_1_code15, modifier, class_util_1_code12, (modifiers, 2), range(class_util_1, 463, 6, 17, 17)).
code(class_util_1_code17, simple_type, class_util_1_code16, element_type, range(class_util_1, 470, 10, 17, 17)).
code(class_util_1_code16, array_type, class_util_1_code12, type, range(class_util_1, 470, 12, 17, 17)).
code(class_util_1_code18, dimension, class_util_1_code16, (dimensions, 0), range(class_util_1, 480, 2, 17, 17)).
code(class_util_1_code19, variable_declaration_fragment, class_util_1_code12, (fragments, 0), range(class_util_1, 483, 34, 17, 17)).
code(class_util_1_code20, array_type, class_util_1_expr2, type, range(class_util_1, 504, 13, 17, 17)).
code(class_util_1_code21, simple_type, class_util_1_code20, element_type, range(class_util_1, 504, 10, 17, 17)).
code(class_util_1_code22, dimension, class_util_1_code20, (dimensions, 0), range(class_util_1, 514, 3, 17, 17)).
code(class_util_1_code23, field_declaration, class_util_1_code2, (body_declarations, 2), range(class_util_1, 523, 51, 18, 18)).
code(class_util_1_code24, modifier, class_util_1_code23, (modifiers, 0), range(class_util_1, 523, 7, 18, 18)).
code(class_util_1_code25, modifier, class_util_1_code23, (modifiers, 1), range(class_util_1, 531, 5, 18, 18)).
code(class_util_1_code26, modifier, class_util_1_code23, (modifiers, 2), range(class_util_1, 537, 6, 18, 18)).
code(class_util_1_code27, array_type, class_util_1_code23, type, range(class_util_1, 544, 6, 18, 18)).
code(class_util_1_code28, simple_type, class_util_1_code27, element_type, range(class_util_1, 544, 4, 18, 18)).
code(class_util_1_code29, dimension, class_util_1_code27, (dimensions, 0), range(class_util_1, 548, 2, 18, 18)).
code(class_util_1_code30, variable_declaration_fragment, class_util_1_code23, (fragments, 0), range(class_util_1, 551, 22, 18, 18)).
code(class_util_1_code31, array_type, class_util_1_expr3, type, range(class_util_1, 566, 7, 18, 18)).
code(class_util_1_code32, simple_type, class_util_1_code31, element_type, range(class_util_1, 566, 4, 18, 18)).
code(class_util_1_code33, dimension, class_util_1_code31, (dimensions, 0), range(class_util_1, 570, 3, 18, 18)).
code(class_util_1_code34, field_declaration, class_util_1_code2, (body_declarations, 4), range(class_util_1, 1279, 83, 36, 36)).
code(class_util_1_code35, modifier, class_util_1_code34, (modifiers, 0), range(class_util_1, 1279, 7, 36, 36)).
code(class_util_1_code36, modifier, class_util_1_code34, (modifiers, 1), range(class_util_1, 1287, 5, 36, 36)).
code(class_util_1_code37, modifier, class_util_1_code34, (modifiers, 2), range(class_util_1, 1293, 6, 36, 36)).
code(class_util_1_code38, parameterized_type, class_util_1_code34, type, range(class_util_1, 1300, 16, 36, 36)).
code(class_util_1_code39, simple_type, class_util_1_code38, type, range(class_util_1, 1300, 13, 36, 36)).
code(class_util_1_code40, wildcard_type, class_util_1_code38, (type_arguments, 0), range(class_util_1, 1314, 1, 36, 36)).
code(class_util_1_code41, variable_declaration_fragment, class_util_1_code34, (fragments, 0), range(class_util_1, 1317, 44, 36, 36)).
code(class_util_1_code43, simple_type, class_util_1_code42, type, range(class_util_1, 1338, 13, 36, 36)).
code(class_util_1_code42, parameterized_type, class_util_1_expr4, type, range(class_util_1, 1338, 21, 36, 36)).
code(class_util_1_code44, simple_type, class_util_1_code42, (type_arguments, 0), range(class_util_1, 1352, 6, 36, 36)).
code(class_util_1_code45, method_declaration, class_util_1_code2, (body_declarations, 56), range(class_util_1, 33615, 138, 985, 990)).
code(class_util_1_code46, method_declaration, class_util_1_code2, (body_declarations, 57), range(class_util_1, 33759, 140, 992, 997)).
%java_type_1 - com.fasterxml.jackson.databind.JavaType
code(java_type_1_code1, compilation_unit, range(java_type_1, 0, 18166, 1, -1)).
code(java_type_1_code2, type_declaration, java_type_1_code1, (types, 0), range(java_type_1, 267, 17898, 10, 563)).
code(java_type_1_code3, method_declaration, java_type_1_code2, (body_declarations, 6), range(java_type_1, 2272, 505, 71, 84)).
code(java_type_1_code4, method_declaration, java_type_1_code2, (body_declarations, 54), range(java_type_1, 15522, 392, 481, 491)).
code(java_type_1_code5, method_declaration, java_type_1_code2, (body_declarations, 61), range(java_type_1, 18104, 59, 561, 562)).
code(java_type_1_code6, modifier, java_type_1_code5, (modifiers, 1), range(java_type_1, 18118, 6, 562, 562)).
code(java_type_1_code7, modifier, java_type_1_code5, (modifiers, 2), range(java_type_1, 18125, 5, 562, 562)).
code(java_type_1_code8, primitive_type, java_type_1_code5, return_type2, range(java_type_1, 18131, 3, 562, 562)).
%collection_type_1 - com.fasterxml.jackson.databind.type.CollectionType
code(collection_type_1_code1, compilation_unit, range(collection_type_1, 0, 4564, 1, -1)).
code(collection_type_1_code2, type_declaration, collection_type_1_code1, (types, 0), range(collection_type_1, 135, 4428, 7, 136)).
code(collection_type_1_code3, method_declaration, collection_type_1_code2, (body_declarations, 1), range(collection_type_1, 491, 314, 21, 26)).
code(collection_type_1_code4, method_declaration, collection_type_1_code2, (body_declarations, 3), range(collection_type_1, 942, 311, 35, 42)).
code(collection_type_1_code5, simple_type, collection_type_1_expr2, type, range(collection_type_1, 1148, 14, 40, 40)).
code(collection_type_1_code6, method_declaration, collection_type_1_code2, (body_declarations, 12), range(collection_type_1, 3931, 315, 117, 123)).
code(collection_type_1_code7, simple_type, collection_type_1_expr3, type, range(collection_type_1, 4091, 14, 120, 120)).
%map_like_type_1 - com.fasterxml.jackson.databind.type.MapLikeType
code(map_like_type_1_code1, compilation_unit, range(map_like_type_1, 0, 9922, 1, -1)).
code(map_like_type_1_code2, type_declaration, map_like_type_1_code1, (types, 0), range(map_like_type_1, 155, 9766, 8, 308)).
code(map_like_type_1_code3, method_declaration, map_like_type_1_code2, (body_declarations, 3), range(map_like_type_1, 1038, 441, 35, 43)).
code(map_like_type_1_code4, method_declaration, map_like_type_1_code2, (body_declarations, 17), range(map_like_type_1, 6506, 396, 188, 200)).
code(map_like_type_1_code5, simple_type, map_like_type_1_stmt4, type, range(map_like_type_1, 6568, 13, 190, 190)).
code(map_like_type_1_code6, variable_declaration_fragment, map_like_type_1_stmt4, (fragments, 0), range(map_like_type_1, 6582, 24, 190, 190)).
code(map_like_type_1_code7, simple_type, map_like_type_1_expr6, type, range(map_like_type_1, 6591, 13, 190, 190)).
code(map_like_type_1_code8, method_declaration, map_like_type_1_code2, (body_declarations, 24), range(map_like_type_1, 7618, 156, 238, 242)).
code(map_like_type_1_code9, method_declaration, map_like_type_1_code2, (body_declarations, 31), range(map_like_type_1, 9562, 357, 298, 307)).
code(map_like_type_1_code10, simple_type, map_like_type_1_stmt20, type, range(map_like_type_1, 9746, 11, 304, 304)).
code(map_like_type_1_code11, variable_declaration_fragment, map_like_type_1_stmt20, (fragments, 0), range(map_like_type_1, 9758, 23, 304, 304)).
code(map_like_type_1_code12, simple_type, map_like_type_1_expr27, type, range(map_like_type_1, 9767, 11, 304, 304)).
%type_factory_1 - com.fasterxml.jackson.databind.type.TypeFactory
code(type_factory_1_code1, compilation_unit, range(type_factory_1, 0, 57337, 1, -1)).
code(type_factory_1_code2, type_declaration, type_factory_1_code1, (types, 0), range(type_factory_1, 413, 56923, 13, 1437)).
code(type_factory_1_code3, field_declaration, type_factory_1_code2, (body_declarations, 1), range(type_factory_1, 1380, 59, 39, 39)).
code(type_factory_1_code4, modifier, type_factory_1_code3, (modifiers, 0), range(type_factory_1, 1380, 7, 39, 39)).
code(type_factory_1_code5, modifier, type_factory_1_code3, (modifiers, 1), range(type_factory_1, 1388, 5, 39, 39)).
code(type_factory_1_code6, modifier, type_factory_1_code3, (modifiers, 2), range(type_factory_1, 1394, 6, 39, 39)).
code(type_factory_1_code7, array_type, type_factory_1_code3, type, range(type_factory_1, 1401, 10, 39, 39)).
code(type_factory_1_code8, simple_type, type_factory_1_code7, element_type, range(type_factory_1, 1401, 8, 39, 39)).
code(type_factory_1_code9, dimension, type_factory_1_code7, (dimensions, 0), range(type_factory_1, 1409, 2, 39, 39)).
code(type_factory_1_code10, variable_declaration_fragment, type_factory_1_code3, (fragments, 0), range(type_factory_1, 1412, 26, 39, 39)).
code(type_factory_1_code11, array_type, type_factory_1_expr1, type, range(type_factory_1, 1427, 11, 39, 39)).
code(type_factory_1_code12, simple_type, type_factory_1_code11, element_type, range(type_factory_1, 1427, 8, 39, 39)).
code(type_factory_1_code13, dimension, type_factory_1_code11, (dimensions, 0), range(type_factory_1, 1435, 3, 39, 39)).
code(type_factory_1_code14, field_declaration, type_factory_1_code2, (body_declarations, 2), range(type_factory_1, 1445, 297, 41, 46)).
code(type_factory_1_code15, modifier, type_factory_1_code14, (modifiers, 0), range(type_factory_1, 1678, 9, 46, 46)).
code(type_factory_1_code16, modifier, type_factory_1_code14, (modifiers, 1), range(type_factory_1, 1688, 5, 46, 46)).
code(type_factory_1_code17, modifier, type_factory_1_code14, (modifiers, 2), range(type_factory_1, 1694, 6, 46, 46)).
code(type_factory_1_code18, simple_type, type_factory_1_code14, type, range(type_factory_1, 1701, 11, 46, 46)).
code(type_factory_1_code19, variable_declaration_fragment, type_factory_1_code14, (fragments, 0), range(type_factory_1, 1713, 28, 46, 46)).
code(type_factory_1_code20, simple_type, type_factory_1_expr2, type, range(type_factory_1, 1728, 11, 46, 46)).
code(type_factory_1_code21, field_declaration, type_factory_1_code2, (body_declarations, 3), range(type_factory_1, 1748, 82, 48, 48)).
code(type_factory_1_code22, modifier, type_factory_1_code21, (modifiers, 0), range(type_factory_1, 1748, 9, 48, 48)).
code(type_factory_1_code23, modifier, type_factory_1_code21, (modifiers, 1), range(type_factory_1, 1758, 5, 48, 48)).
code(type_factory_1_code24, modifier, type_factory_1_code21, (modifiers, 2), range(type_factory_1, 1764, 6, 48, 48)).
code(type_factory_1_code25, simple_type, type_factory_1_code21, type, range(type_factory_1, 1771, 12, 48, 48)).
code(type_factory_1_code26, variable_declaration_fragment, type_factory_1_code21, (fragments, 0), range(type_factory_1, 1784, 45, 48, 48)).
code(type_factory_1_code28, modifier, type_factory_1_code27, (modifiers, 0), range(type_factory_1, 2203, 7, 60, 60)).
code(type_factory_1_code27, field_declaration, type_factory_1_code2, (body_declarations, 4), range(type_factory_1, 2203, 56, 60, 60)).
code(type_factory_1_code29, modifier, type_factory_1_code27, (modifiers, 1), range(type_factory_1, 2211, 5, 60, 60)).
code(type_factory_1_code30, modifier, type_factory_1_code27, (modifiers, 2), range(type_factory_1, 2217, 6, 60, 60)).
code(type_factory_1_code32, simple_type, type_factory_1_code31, type, range(type_factory_1, 2224, 5, 60, 60)).
code(type_factory_1_code31, parameterized_type, type_factory_1_code27, type, range(type_factory_1, 2224, 8, 60, 60)).
code(type_factory_1_code33, wildcard_type, type_factory_1_code31, (type_arguments, 0), range(type_factory_1, 2230, 1, 60, 60)).
code(type_factory_1_code34, variable_declaration_fragment, type_factory_1_code27, (fragments, 0), range(type_factory_1, 2233, 25, 60, 60)).
code(type_factory_1_code35, simple_type, type_factory_1_expr4, type, range(type_factory_1, 2246, 6, 60, 60)).
code(type_factory_1_code36, field_declaration, type_factory_1_code2, (body_declarations, 5), range(type_factory_1, 2264, 56, 61, 61)).
code(type_factory_1_code37, modifier, type_factory_1_code36, (modifiers, 0), range(type_factory_1, 2264, 7, 61, 61)).
code(type_factory_1_code38, modifier, type_factory_1_code36, (modifiers, 1), range(type_factory_1, 2272, 5, 61, 61)).
code(type_factory_1_code39, modifier, type_factory_1_code36, (modifiers, 2), range(type_factory_1, 2278, 6, 61, 61)).
code(type_factory_1_code40, parameterized_type, type_factory_1_code36, type, range(type_factory_1, 2285, 8, 61, 61)).
code(type_factory_1_code41, simple_type, type_factory_1_code40, type, range(type_factory_1, 2285, 5, 61, 61)).
code(type_factory_1_code42, wildcard_type, type_factory_1_code40, (type_arguments, 0), range(type_factory_1, 2291, 1, 61, 61)).
code(type_factory_1_code43, variable_declaration_fragment, type_factory_1_code36, (fragments, 0), range(type_factory_1, 2294, 25, 61, 61)).
code(type_factory_1_code44, simple_type, type_factory_1_expr5, type, range(type_factory_1, 2307, 6, 61, 61)).
code(type_factory_1_code46, modifier, type_factory_1_code45, (modifiers, 0), range(type_factory_1, 2326, 7, 63, 63)).
code(type_factory_1_code45, field_declaration, type_factory_1_code2, (body_declarations, 6), range(type_factory_1, 2326, 64, 63, 63)).
code(type_factory_1_code47, modifier, type_factory_1_code45, (modifiers, 1), range(type_factory_1, 2334, 5, 63, 63)).
code(type_factory_1_code48, modifier, type_factory_1_code45, (modifiers, 2), range(type_factory_1, 2340, 6, 63, 63)).
code(type_factory_1_code50, simple_type, type_factory_1_code49, type, range(type_factory_1, 2347, 5, 63, 63)).
code(type_factory_1_code49, parameterized_type, type_factory_1_code45, type, range(type_factory_1, 2347, 8, 63, 63)).
code(type_factory_1_code51, wildcard_type, type_factory_1_code49, (type_arguments, 0), range(type_factory_1, 2353, 1, 63, 63)).
code(type_factory_1_code52, variable_declaration_fragment, type_factory_1_code45, (fragments, 0), range(type_factory_1, 2356, 33, 63, 63)).
code(type_factory_1_code53, simple_type, type_factory_1_expr6, type, range(type_factory_1, 2373, 10, 63, 63)).
code(type_factory_1_code54, field_declaration, type_factory_1_code2, (body_declarations, 7), range(type_factory_1, 2395, 54, 64, 64)).
code(type_factory_1_code55, modifier, type_factory_1_code54, (modifiers, 0), range(type_factory_1, 2395, 7, 64, 64)).
code(type_factory_1_code56, modifier, type_factory_1_code54, (modifiers, 1), range(type_factory_1, 2403, 5, 64, 64)).
code(type_factory_1_code57, modifier, type_factory_1_code54, (modifiers, 2), range(type_factory_1, 2409, 6, 64, 64)).
code(type_factory_1_code59, simple_type, type_factory_1_code58, type, range(type_factory_1, 2416, 5, 64, 64)).
code(type_factory_1_code58, parameterized_type, type_factory_1_code54, type, range(type_factory_1, 2416, 8, 64, 64)).
code(type_factory_1_code60, wildcard_type, type_factory_1_code58, (type_arguments, 0), range(type_factory_1, 2422, 1, 64, 64)).
code(type_factory_1_code61, variable_declaration_fragment, type_factory_1_code54, (fragments, 0), range(type_factory_1, 2425, 23, 64, 64)).
code(type_factory_1_code62, simple_type, type_factory_1_expr7, type, range(type_factory_1, 2437, 5, 64, 64)).
code(type_factory_1_code63, field_declaration, type_factory_1_code2, (body_declarations, 8), range(type_factory_1, 2454, 52, 65, 65)).
code(type_factory_1_code64, modifier, type_factory_1_code63, (modifiers, 0), range(type_factory_1, 2454, 7, 65, 65)).
code(type_factory_1_code65, modifier, type_factory_1_code63, (modifiers, 1), range(type_factory_1, 2462, 5, 65, 65)).
code(type_factory_1_code66, modifier, type_factory_1_code63, (modifiers, 2), range(type_factory_1, 2468, 6, 65, 65)).
code(type_factory_1_code68, simple_type, type_factory_1_code67, type, range(type_factory_1, 2475, 5, 65, 65)).
code(type_factory_1_code67, parameterized_type, type_factory_1_code63, type, range(type_factory_1, 2475, 8, 65, 65)).
code(type_factory_1_code69, wildcard_type, type_factory_1_code67, (type_arguments, 0), range(type_factory_1, 2481, 1, 65, 65)).
code(type_factory_1_code70, variable_declaration_fragment, type_factory_1_code63, (fragments, 0), range(type_factory_1, 2484, 21, 65, 65)).
code(type_factory_1_code71, simple_type, type_factory_1_expr8, type, range(type_factory_1, 2495, 4, 65, 65)).
code(type_factory_1_code72, field_declaration, type_factory_1_code2, (body_declarations, 9), range(type_factory_1, 2512, 54, 67, 67)).
code(type_factory_1_code73, modifier, type_factory_1_code72, (modifiers, 0), range(type_factory_1, 2512, 7, 67, 67)).
code(type_factory_1_code74, modifier, type_factory_1_code72, (modifiers, 1), range(type_factory_1, 2520, 5, 67, 67)).
code(type_factory_1_code75, modifier, type_factory_1_code72, (modifiers, 2), range(type_factory_1, 2526, 6, 67, 67)).
code(type_factory_1_code77, simple_type, type_factory_1_code76, type, range(type_factory_1, 2533, 5, 67, 67)).
code(type_factory_1_code76, parameterized_type, type_factory_1_code72, type, range(type_factory_1, 2533, 8, 67, 67)).
code(type_factory_1_code78, wildcard_type, type_factory_1_code76, (type_arguments, 0), range(type_factory_1, 2539, 1, 67, 67)).
code(type_factory_1_code79, variable_declaration_fragment, type_factory_1_code72, (fragments, 0), range(type_factory_1, 2542, 23, 67, 67)).
code(type_factory_1_code80, field_declaration, type_factory_1_code2, (body_declarations, 10), range(type_factory_1, 2571, 53, 68, 68)).
code(type_factory_1_code81, modifier, type_factory_1_code80, (modifiers, 0), range(type_factory_1, 2571, 7, 68, 68)).
code(type_factory_1_code82, modifier, type_factory_1_code80, (modifiers, 1), range(type_factory_1, 2579, 5, 68, 68)).
code(type_factory_1_code83, modifier, type_factory_1_code80, (modifiers, 2), range(type_factory_1, 2585, 6, 68, 68)).
code(type_factory_1_code85, simple_type, type_factory_1_code84, type, range(type_factory_1, 2592, 5, 68, 68)).
code(type_factory_1_code84, parameterized_type, type_factory_1_code80, type, range(type_factory_1, 2592, 8, 68, 68)).
code(type_factory_1_code86, wildcard_type, type_factory_1_code84, (type_arguments, 0), range(type_factory_1, 2598, 1, 68, 68)).
code(type_factory_1_code87, variable_declaration_fragment, type_factory_1_code80, (fragments, 0), range(type_factory_1, 2601, 22, 68, 68)).
code(type_factory_1_code89, modifier, type_factory_1_code88, (modifiers, 0), range(type_factory_1, 2629, 7, 69, 69)).
code(type_factory_1_code88, field_declaration, type_factory_1_code2, (body_declarations, 11), range(type_factory_1, 2629, 51, 69, 69)).
code(type_factory_1_code90, modifier, type_factory_1_code88, (modifiers, 1), range(type_factory_1, 2637, 5, 69, 69)).
code(type_factory_1_code91, modifier, type_factory_1_code88, (modifiers, 2), range(type_factory_1, 2643, 6, 69, 69)).
code(type_factory_1_code93, simple_type, type_factory_1_code92, type, range(type_factory_1, 2650, 5, 69, 69)).
code(type_factory_1_code92, parameterized_type, type_factory_1_code88, type, range(type_factory_1, 2650, 8, 69, 69)).
code(type_factory_1_code94, wildcard_type, type_factory_1_code92, (type_arguments, 0), range(type_factory_1, 2656, 1, 69, 69)).
code(type_factory_1_code95, variable_declaration_fragment, type_factory_1_code88, (fragments, 0), range(type_factory_1, 2659, 20, 69, 69)).
code(type_factory_1_code97, modifier, type_factory_1_code96, (modifiers, 0), range(type_factory_1, 2934, 9, 78, 78)).
code(type_factory_1_code96, field_declaration, type_factory_1_code2, (body_declarations, 12), range(type_factory_1, 2934, 76, 78, 78)).
code(type_factory_1_code98, modifier, type_factory_1_code96, (modifiers, 1), range(type_factory_1, 2944, 5, 78, 78)).
code(type_factory_1_code99, modifier, type_factory_1_code96, (modifiers, 2), range(type_factory_1, 2950, 6, 78, 78)).
code(type_factory_1_code100, simple_type, type_factory_1_code96, type, range(type_factory_1, 2957, 10, 78, 78)).
code(type_factory_1_code101, variable_declaration_fragment, type_factory_1_code96, (fragments, 0), range(type_factory_1, 2968, 41, 78, 78)).
code(type_factory_1_code102, simple_type, type_factory_1_expr9, type, range(type_factory_1, 2989, 10, 78, 78)).
code(type_factory_1_code104, modifier, type_factory_1_code103, (modifiers, 0), range(type_factory_1, 3015, 9, 79, 79)).
code(type_factory_1_code103, field_declaration, type_factory_1_code2, (body_declarations, 13), range(type_factory_1, 3015, 74, 79, 79)).
code(type_factory_1_code105, modifier, type_factory_1_code103, (modifiers, 1), range(type_factory_1, 3025, 5, 79, 79)).
code(type_factory_1_code106, modifier, type_factory_1_code103, (modifiers, 2), range(type_factory_1, 3031, 6, 79, 79)).
code(type_factory_1_code107, simple_type, type_factory_1_code103, type, range(type_factory_1, 3038, 10, 79, 79)).
code(type_factory_1_code108, variable_declaration_fragment, type_factory_1_code103, (fragments, 0), range(type_factory_1, 3049, 39, 79, 79)).
code(type_factory_1_code109, simple_type, type_factory_1_expr10, type, range(type_factory_1, 3069, 10, 79, 79)).
code(type_factory_1_code110, field_declaration, type_factory_1_code2, (body_declarations, 14), range(type_factory_1, 3094, 76, 80, 80)).
code(type_factory_1_code111, modifier, type_factory_1_code110, (modifiers, 0), range(type_factory_1, 3094, 9, 80, 80)).
code(type_factory_1_code112, modifier, type_factory_1_code110, (modifiers, 1), range(type_factory_1, 3104, 5, 80, 80)).
code(type_factory_1_code113, modifier, type_factory_1_code110, (modifiers, 2), range(type_factory_1, 3110, 6, 80, 80)).
code(type_factory_1_code114, simple_type, type_factory_1_code110, type, range(type_factory_1, 3117, 10, 80, 80)).
code(type_factory_1_code115, variable_declaration_fragment, type_factory_1_code110, (fragments, 0), range(type_factory_1, 3128, 41, 80, 80)).
code(type_factory_1_code116, simple_type, type_factory_1_expr11, type, range(type_factory_1, 3149, 10, 80, 80)).
code(type_factory_1_code117, field_declaration, type_factory_1_code2, (body_declarations, 15), range(type_factory_1, 3241, 80, 83, 83)).
code(type_factory_1_code118, modifier, type_factory_1_code117, (modifiers, 0), range(type_factory_1, 3241, 9, 83, 83)).
code(type_factory_1_code119, modifier, type_factory_1_code117, (modifiers, 1), range(type_factory_1, 3251, 5, 83, 83)).
code(type_factory_1_code120, modifier, type_factory_1_code117, (modifiers, 2), range(type_factory_1, 3257, 6, 83, 83)).
code(type_factory_1_code121, simple_type, type_factory_1_code117, type, range(type_factory_1, 3264, 10, 83, 83)).
code(type_factory_1_code122, variable_declaration_fragment, type_factory_1_code117, (fragments, 0), range(type_factory_1, 3275, 45, 83, 83)).
code(type_factory_1_code123, simple_type, type_factory_1_expr12, type, range(type_factory_1, 3298, 10, 83, 83)).
code(type_factory_1_code124, field_declaration, type_factory_1_code2, (body_declarations, 16), range(type_factory_1, 3345, 80, 86, 86)).
code(type_factory_1_code125, modifier, type_factory_1_code124, (modifiers, 0), range(type_factory_1, 3345, 9, 86, 86)).
code(type_factory_1_code126, modifier, type_factory_1_code124, (modifiers, 1), range(type_factory_1, 3355, 5, 86, 86)).
code(type_factory_1_code127, modifier, type_factory_1_code124, (modifiers, 2), range(type_factory_1, 3361, 6, 86, 86)).
code(type_factory_1_code128, simple_type, type_factory_1_code124, type, range(type_factory_1, 3368, 10, 86, 86)).
code(type_factory_1_code129, variable_declaration_fragment, type_factory_1_code124, (fragments, 0), range(type_factory_1, 3379, 45, 86, 86)).
code(type_factory_1_code130, simple_type, type_factory_1_expr13, type, range(type_factory_1, 3402, 10, 86, 86)).
code(type_factory_1_code131, field_declaration, type_factory_1_code2, (body_declarations, 17), range(type_factory_1, 3431, 295, 88, 94)).
code(type_factory_1_code132, modifier, type_factory_1_code131, (modifiers, 0), range(type_factory_1, 3638, 9, 94, 94)).
code(type_factory_1_code133, modifier, type_factory_1_code131, (modifiers, 1), range(type_factory_1, 3648, 5, 94, 94)).
code(type_factory_1_code134, modifier, type_factory_1_code131, (modifiers, 2), range(type_factory_1, 3654, 6, 94, 94)).
code(type_factory_1_code135, simple_type, type_factory_1_code131, type, range(type_factory_1, 3661, 10, 94, 94)).
code(type_factory_1_code136, variable_declaration_fragment, type_factory_1_code131, (fragments, 0), range(type_factory_1, 3672, 53, 94, 94)).
code(type_factory_1_code137, simple_type, type_factory_1_expr14, type, range(type_factory_1, 3699, 10, 94, 94)).
code(type_factory_1_code138, field_declaration, type_factory_1_code2, (body_declarations, 18), range(type_factory_1, 3732, 261, 96, 102)).
code(type_factory_1_code139, modifier, type_factory_1_code138, (modifiers, 0), range(type_factory_1, 3917, 9, 102, 102)).
code(type_factory_1_code140, modifier, type_factory_1_code138, (modifiers, 1), range(type_factory_1, 3927, 5, 102, 102)).
code(type_factory_1_code141, modifier, type_factory_1_code138, (modifiers, 2), range(type_factory_1, 3933, 6, 102, 102)).
code(type_factory_1_code142, simple_type, type_factory_1_code138, type, range(type_factory_1, 3940, 10, 102, 102)).
code(type_factory_1_code143, variable_declaration_fragment, type_factory_1_code138, (fragments, 0), range(type_factory_1, 3951, 41, 102, 102)).
code(type_factory_1_code144, simple_type, type_factory_1_expr15, type, range(type_factory_1, 3972, 10, 102, 102)).
code(type_factory_1_code145, field_declaration, type_factory_1_code2, (body_declarations, 19), range(type_factory_1, 3999, 227, 104, 110)).
code(type_factory_1_code146, modifier, type_factory_1_code145, (modifiers, 0), range(type_factory_1, 4148, 9, 110, 110)).
code(type_factory_1_code147, modifier, type_factory_1_code145, (modifiers, 1), range(type_factory_1, 4158, 5, 110, 110)).
code(type_factory_1_code148, modifier, type_factory_1_code145, (modifiers, 2), range(type_factory_1, 4164, 6, 110, 110)).
code(type_factory_1_code149, simple_type, type_factory_1_code145, type, range(type_factory_1, 4171, 10, 110, 110)).
code(type_factory_1_code150, variable_declaration_fragment, type_factory_1_code145, (fragments, 0), range(type_factory_1, 4182, 43, 110, 110)).
code(type_factory_1_code151, simple_type, type_factory_1_expr16, type, range(type_factory_1, 4204, 10, 110, 110)).
code(type_factory_1_code152, method_declaration, type_factory_1_code2, (body_declarations, 24), range(type_factory_1, 5171, 49, 144, 146)).
code(type_factory_1_code153, method_declaration, type_factory_1_code2, (body_declarations, 25), range(type_factory_1, 5226, 331, 148, 159)).
code(type_factory_1_code154, modifier, type_factory_1_code153, (modifiers, 0), range(type_factory_1, 5260, 9, 151, 151)).
code(type_factory_1_code156, parameterized_type, type_factory_1_code155, type, range(type_factory_1, 5282, 23, 151, 151)).
code(type_factory_1_code157, simple_type, type_factory_1_code156, type, range(type_factory_1, 5282, 6, 151, 151)).
code(type_factory_1_code155, single_variable_declaration, type_factory_1_code153, (parameters, 0), range(type_factory_1, 5282, 33, 151, 151)).
code(type_factory_1_code158, simple_type, type_factory_1_code156, (type_arguments, 0), range(type_factory_1, 5289, 6, 151, 151)).
code(type_factory_1_code159, simple_type, type_factory_1_code156, (type_arguments, 1), range(type_factory_1, 5296, 8, 151, 151)).
code(type_factory_1_code160, parameterized_type, type_factory_1_expr20, type, range(type_factory_1, 5380, 23, 153, 153)).
code(type_factory_1_code161, simple_type, type_factory_1_code160, type, range(type_factory_1, 5380, 6, 153, 153)).
code(type_factory_1_code162, simple_type, type_factory_1_code160, (type_arguments, 0), range(type_factory_1, 5387, 6, 153, 153)).
code(type_factory_1_code163, simple_type, type_factory_1_code160, (type_arguments, 1), range(type_factory_1, 5394, 8, 153, 153)).
code(type_factory_1_code164, simple_type, type_factory_1_expr23, type, range(type_factory_1, 5478, 10, 156, 156)).
code(type_factory_1_code165, method_declaration, type_factory_1_code2, (body_declarations, 30), range(type_factory_1, 7228, 267, 206, 211)).
code(type_factory_1_code166, modifier, type_factory_1_code165, (modifiers, 0), range(type_factory_1, 7431, 6, 211, 211)).
code(type_factory_1_code167, modifier, type_factory_1_code165, (modifiers, 1), range(type_factory_1, 7438, 6, 211, 211)).
code(type_factory_1_code168, simple_type, type_factory_1_code165, return_type2, range(type_factory_1, 7445, 11, 211, 211)).
code(type_factory_1_code169, method_declaration, type_factory_1_code2, (body_declarations, 32), range(type_factory_1, 8016, 72, 227, 229)).
code(type_factory_1_code170, method_declaration, type_factory_1_code2, (body_declarations, 35), range(type_factory_1, 9332, 1339, 266, 304)).
code(type_factory_1_code171, simple_type, type_factory_1_stmt11, type, range(type_factory_1, 9897, 9, 281, 281)).
code(type_factory_1_code172, variable_declaration_fragment, type_factory_1_stmt11, (fragments, 0), range(type_factory_1, 9907, 11, 281, 281)).
code(type_factory_1_code173, simple_type, type_factory_1_stmt12, type, range(type_factory_1, 9928, 11, 282, 282)).
code(type_factory_1_code174, variable_declaration_fragment, type_factory_1_stmt12, (fragments, 0), range(type_factory_1, 9940, 30, 282, 282)).
code(type_factory_1_code175, method_declaration, type_factory_1_code2, (body_declarations, 36), range(type_factory_1, 10681, 204, 306, 309)).
code(type_factory_1_code176, method_declaration, type_factory_1_code2, (body_declarations, 44), range(type_factory_1, 20723, 556, 524, 537)).
code(type_factory_1_code177, method_declaration, type_factory_1_code2, (body_declarations, 49), range(type_factory_1, 23561, 101, 609, 611)).
code(type_factory_1_code178, method_declaration, type_factory_1_code2, (body_declarations, 60), range(type_factory_1, 29366, 631, 757, 773)).
code(type_factory_1_code179, simple_type, type_factory_1_expr41, type, range(type_factory_1, 29730, 10, 766, 766)).
code(type_factory_1_code180, method_declaration, type_factory_1_code2, (body_declarations, 61), range(type_factory_1, 30003, 426, 775, 784)).
code(type_factory_1_code181, simple_type, type_factory_1_expr47, type, range(type_factory_1, 30320, 7, 782, 782)).
code(type_factory_1_code182, method_declaration, type_factory_1_code2, (body_declarations, 76), range(type_factory_1, 40245, 1016, 1024, 1048)).
code(type_factory_1_code183, simple_type, type_factory_1_expr51, type, range(type_factory_1, 40536, 10, 1030, 1030)).
code(type_factory_1_code184, parameterized_type, type_factory_1_stmt27, type, range(type_factory_1, 40625, 14, 1033, 1033)).
code(type_factory_1_code185, simple_type, type_factory_1_code184, type, range(type_factory_1, 40625, 4, 1033, 1033)).
code(type_factory_1_code186, simple_type, type_factory_1_code184, (type_arguments, 0), range(type_factory_1, 40630, 8, 1033, 1033)).
code(type_factory_1_code187, variable_declaration_fragment, type_factory_1_stmt27, (fragments, 0), range(type_factory_1, 40640, 41, 1033, 1033)).
code(type_factory_1_code188, method_declaration, type_factory_1_code2, (body_declarations, 77), range(type_factory_1, 41267, 677, 1050, 1064)).
code(type_factory_1_code190, simple_type, type_factory_1_code189, type, range(type_factory_1, 41417, 4, 1053, 1053)).
code(type_factory_1_code189, parameterized_type, type_factory_1_stmt33, type, range(type_factory_1, 41417, 14, 1053, 1053)).
code(type_factory_1_code191, simple_type, type_factory_1_code189, (type_arguments, 0), range(type_factory_1, 41422, 8, 1053, 1053)).
code(type_factory_1_code192, variable_declaration_fragment, type_factory_1_stmt33, (fragments, 0), range(type_factory_1, 41432, 41, 1053, 1053)).
code(type_factory_1_code193, method_declaration, type_factory_1_code2, (body_declarations, 80), range(type_factory_1, 43345, 449, 1102, 1113)).
code(type_factory_1_code194, simple_type, type_factory_1_expr66, type, range(type_factory_1, 43733, 10, 1112, 1112)).
code(type_factory_1_code195, method_declaration, type_factory_1_code2, (body_declarations, 82), range(type_factory_1, 44210, 686, 1124, 1141)).
code(type_factory_1_code196, method_declaration, type_factory_1_code2, (body_declarations, 83), range(type_factory_1, 45087, 2362, 1149, 1202)).
code(type_factory_1_code198, simple_type, type_factory_1_code197, type, range(type_factory_1, 45462, 5, 1159, 1159)).
code(type_factory_1_code197, parameterized_type, type_factory_1_expr70, right_operand, range(type_factory_1, 45462, 8, 1159, 1159)).
code(type_factory_1_code199, wildcard_type, type_factory_1_code197, (type_arguments, 0), range(type_factory_1, 45468, 1, 1159, 1159)).
code(type_factory_1_code200, parameterized_type, type_factory_1_expr73, type, range(type_factory_1, 45604, 8, 1161, 1161)).
code(type_factory_1_code201, simple_type, type_factory_1_code200, type, range(type_factory_1, 45604, 5, 1161, 1161)).
code(type_factory_1_code202, wildcard_type, type_factory_1_code200, (type_arguments, 0), range(type_factory_1, 45610, 1, 1161, 1161)).
code(type_factory_1_code203, simple_type, type_factory_1_expr74, right_operand, range(type_factory_1, 45728, 17, 1164, 1164)).
code(type_factory_1_code204, simple_type, type_factory_1_expr77, type, range(type_factory_1, 45799, 17, 1165, 1165)).
code(type_factory_1_code205, simple_type, type_factory_1_expr78, right_operand, range(type_factory_1, 45878, 8, 1167, 1167)).
code(type_factory_1_code206, simple_type, type_factory_1_expr79, right_operand, range(type_factory_1, 46055, 16, 1171, 1171)).
code(type_factory_1_code207, parameterized_type, type_factory_1_expr80, right_operand, range(type_factory_1, 46203, 15, 1174, 1174)).
code(type_factory_1_code208, simple_type, type_factory_1_code207, type, range(type_factory_1, 46203, 12, 1174, 1174)).
code(type_factory_1_code209, wildcard_type, type_factory_1_code207, (type_arguments, 0), range(type_factory_1, 46216, 1, 1174, 1174)).
code(type_factory_1_code210, parameterized_type, type_factory_1_expr83, type, range(type_factory_1, 46271, 15, 1175, 1175)).
code(type_factory_1_code211, simple_type, type_factory_1_code210, type, range(type_factory_1, 46271, 12, 1175, 1175)).
code(type_factory_1_code212, wildcard_type, type_factory_1_code210, (type_arguments, 0), range(type_factory_1, 46284, 1, 1175, 1175)).
code(type_factory_1_code213, method_declaration, type_factory_1_code2, (body_declarations, 84), range(type_factory_1, 47455, 3906, 1204, 1290)).
code(type_factory_1_code214, simple_type, type_factory_1_stmt55, type, range(type_factory_1, 47754, 8, 1211, 1211)).
code(type_factory_1_code215, variable_declaration_fragment, type_factory_1_stmt55, (fragments, 0), range(type_factory_1, 47763, 38, 1211, 1211)).
code(type_factory_1_code216, simple_type, type_factory_1_expr99, type, range(type_factory_1, 48363, 10, 1229, 1229)).
code(type_factory_1_code217, simple_type, type_factory_1_stmt66, type, range(type_factory_1, 48413, 10, 1231, 1231)).
code(type_factory_1_code218, variable_declaration_fragment, type_factory_1_stmt66, (fragments, 0), range(type_factory_1, 48424, 28, 1231, 1231)).
code(type_factory_1_code219, simple_type, type_factory_1_expr114, type, range(type_factory_1, 49846, 10, 1262, 1262)).
code(type_factory_1_code220, method_declaration, type_factory_1_code2, (body_declarations, 85), range(type_factory_1, 51367, 302, 1292, 1299)).
code(type_factory_1_code221, simple_type, type_factory_1_stmt88, type, range(type_factory_1, 51486, 4, 1294, 1294)).
code(type_factory_1_code222, variable_declaration_fragment, type_factory_1_stmt88, (fragments, 0), range(type_factory_1, 51491, 48, 1294, 1294)).
code(type_factory_1_code223, method_declaration, type_factory_1_code2, (body_declarations, 86), range(type_factory_1, 51675, 533, 1301, 1314)).
code(type_factory_1_code225, simple_type, type_factory_1_code224, element_type, range(type_factory_1, 51801, 4, 1303, 1303)).
code(type_factory_1_code224, array_type, type_factory_1_stmt91, type, range(type_factory_1, 51801, 6, 1303, 1303)).
code(type_factory_1_code226, dimension, type_factory_1_code224, (dimensions, 0), range(type_factory_1, 51805, 2, 1303, 1303)).
code(type_factory_1_code227, variable_declaration_fragment, type_factory_1_stmt91, (fragments, 0), range(type_factory_1, 51808, 47, 1303, 1303)).
code(type_factory_1_code228, primitive_type, type_factory_1_stmt94, type, range(type_factory_1, 51954, 3, 1307, 1307)).
code(type_factory_1_code229, variable_declaration_fragment, type_factory_1_stmt94, (fragments, 0), range(type_factory_1, 51958, 18, 1307, 1307)).
code(type_factory_1_code230, array_type, type_factory_1_stmt95, type, range(type_factory_1, 51986, 10, 1308, 1308)).
code(type_factory_1_code231, simple_type, type_factory_1_code230, element_type, range(type_factory_1, 51986, 8, 1308, 1308)).
code(type_factory_1_code232, dimension, type_factory_1_code230, (dimensions, 0), range(type_factory_1, 51994, 2, 1308, 1308)).
code(type_factory_1_code233, variable_declaration_fragment, type_factory_1_stmt95, (fragments, 0), range(type_factory_1, 51997, 28, 1308, 1308)).
code(type_factory_1_code234, array_type, type_factory_1_expr138, type, range(type_factory_1, 52012, 13, 1308, 1308)).
code(type_factory_1_code235, simple_type, type_factory_1_code234, element_type, range(type_factory_1, 52012, 8, 1308, 1308)).
code(type_factory_1_code236, dimension, type_factory_1_code234, (dimensions, 0), range(type_factory_1, 52020, 5, 1308, 1308)).
code(type_factory_1_code237, primitive_type, type_factory_1_expr139, type, range(type_factory_1, 52040, 3, 1309, 1309)).
code(type_factory_1_code238, variable_declaration_fragment, type_factory_1_expr139, (fragments, 0), range(type_factory_1, 52044, 5, 1309, 1309)).
code(type_factory_1_code239, simple_type, type_factory_1_stmt97, type, range(type_factory_1, 52079, 4, 1310, 1310)).
code(type_factory_1_code240, variable_declaration_fragment, type_factory_1_stmt97, (fragments, 0), range(type_factory_1, 52084, 15, 1310, 1310)).
code(type_factory_1_code241, method_declaration, type_factory_1_code2, (body_declarations, 87), range(type_factory_1, 52214, 1407, 1316, 1344)).
code(type_factory_1_code242, simple_type, type_factory_1_expr148, type, range(type_factory_1, 52815, 3, 1329, 1329)).
code(type_factory_1_code243, simple_type, type_factory_1_expr151, type, range(type_factory_1, 52938, 10, 1332, 1332)).
code(type_factory_1_code244, simple_type, type_factory_1_expr154, type, range(type_factory_1, 53121, 15, 1336, 1336)).
code(type_factory_1_code245, method_declaration, type_factory_1_code2, (body_declarations, 88), range(type_factory_1, 53627, 606, 1346, 1360)).
code(type_factory_1_code246, modifier, type_factory_1_stmt107, (modifiers, 0), range(type_factory_1, 53922, 5, 1351, 1351)).
code(type_factory_1_code247, primitive_type, type_factory_1_stmt107, type, range(type_factory_1, 53928, 3, 1351, 1351)).
code(type_factory_1_code248, variable_declaration_fragment, type_factory_1_stmt107, (fragments, 0), range(type_factory_1, 53932, 33, 1351, 1351)).
code(type_factory_1_code249, primitive_type, type_factory_1_expr155, type, range(type_factory_1, 53981, 3, 1353, 1353)).
code(type_factory_1_code250, variable_declaration_fragment, type_factory_1_expr155, (fragments, 0), range(type_factory_1, 53985, 5, 1353, 1353)).
code(type_factory_1_code251, simple_type, type_factory_1_stmt109, type, range(type_factory_1, 54025, 8, 1354, 1354)).
code(type_factory_1_code252, variable_declaration_fragment, type_factory_1_stmt109, (fragments, 0), range(type_factory_1, 54034, 82, 1354, 1354)).
code(type_factory_1_code253, method_declaration, type_factory_1_code2, (body_declarations, 89), range(type_factory_1, 54239, 1593, 1362, 1401)).
code(type_factory_1_code255, simple_type, type_factory_1_code254, type, range(type_factory_1, 54562, 5, 1370, 1370)).
code(type_factory_1_code254, parameterized_type, type_factory_1_stmt113, type, range(type_factory_1, 54562, 8, 1370, 1370)).
code(type_factory_1_code256, wildcard_type, type_factory_1_code254, (type_arguments, 0), range(type_factory_1, 54568, 1, 1370, 1370)).
code(type_factory_1_code257, variable_declaration_fragment, type_factory_1_stmt113, (fragments, 0), range(type_factory_1, 54571, 39, 1370, 1370)).
code(type_factory_1_code259, simple_type, type_factory_1_code258, type, range(type_factory_1, 54582, 5, 1370, 1370)).
code(type_factory_1_code258, parameterized_type, type_factory_1_expr161, type, range(type_factory_1, 54582, 8, 1370, 1370)).
code(type_factory_1_code260, wildcard_type, type_factory_1_code258, (type_arguments, 0), range(type_factory_1, 54588, 1, 1370, 1370)).
code(type_factory_1_code262, simple_type, type_factory_1_code261, element_type, range(type_factory_1, 55274, 4, 1387, 1387)).
code(type_factory_1_code261, array_type, type_factory_1_stmt119, type, range(type_factory_1, 55274, 6, 1387, 1387)).
code(type_factory_1_code263, dimension, type_factory_1_code261, (dimensions, 0), range(type_factory_1, 55278, 2, 1387, 1387)).
code(type_factory_1_code264, variable_declaration_fragment, type_factory_1_stmt119, (fragments, 0), range(type_factory_1, 55281, 37, 1387, 1387)).
code(type_factory_1_code265, primitive_type, type_factory_1_stmt120, type, range(type_factory_1, 55328, 3, 1388, 1388)).
code(type_factory_1_code266, variable_declaration_fragment, type_factory_1_stmt120, (fragments, 0), range(type_factory_1, 55332, 45, 1388, 1388)).
code(type_factory_1_code268, simple_type, type_factory_1_code267, element_type, range(type_factory_1, 55524, 8, 1394, 1394)).
code(type_factory_1_code267, array_type, type_factory_1_stmt122, type, range(type_factory_1, 55524, 10, 1394, 1394)).
code(type_factory_1_code269, dimension, type_factory_1_code267, (dimensions, 0), range(type_factory_1, 55532, 2, 1394, 1394)).
code(type_factory_1_code270, variable_declaration_fragment, type_factory_1_stmt122, (fragments, 0), range(type_factory_1, 55535, 29, 1394, 1394)).
code(type_factory_1_code272, simple_type, type_factory_1_code271, element_type, range(type_factory_1, 55544, 8, 1394, 1394)).
code(type_factory_1_code271, array_type, type_factory_1_expr171, type, range(type_factory_1, 55544, 20, 1394, 1394)).
code(type_factory_1_code273, dimension, type_factory_1_code271, (dimensions, 0), range(type_factory_1, 55552, 12, 1394, 1394)).
code(type_factory_1_code274, primitive_type, type_factory_1_expr172, type, range(type_factory_1, 55583, 3, 1395, 1395)).
code(type_factory_1_code275, variable_declaration_fragment, type_factory_1_expr172, (fragments, 0), range(type_factory_1, 55587, 5, 1395, 1395)).
code(type_factory_1_code276, method_declaration, type_factory_1_code2, (body_declarations, 91), range(type_factory_1, 56106, 720, 1409, 1426)).
code(type_factory_1_code277, modifier, type_factory_1_stmt127, (modifiers, 0), range(type_factory_1, 56265, 5, 1412, 1412)).
code(type_factory_1_code278, simple_type, type_factory_1_stmt127, type, range(type_factory_1, 56271, 6, 1412, 1412)).
code(type_factory_1_code279, variable_declaration_fragment, type_factory_1_stmt127, (fragments, 0), range(type_factory_1, 56278, 20, 1412, 1412)).
code(type_factory_1_code280, simple_type, type_factory_1_stmt128, type, range(type_factory_1, 56308, 8, 1413, 1413)).
code(type_factory_1_code281, variable_declaration_fragment, type_factory_1_stmt128, (fragments, 0), range(type_factory_1, 56317, 35, 1413, 1413)).
code(type_factory_1_code282, array_type, type_factory_1_stmt133, type, range(type_factory_1, 56733, 6, 1424, 1424)).
code(type_factory_1_code283, simple_type, type_factory_1_code282, element_type, range(type_factory_1, 56733, 4, 1424, 1424)).
code(type_factory_1_code284, dimension, type_factory_1_code282, (dimensions, 0), range(type_factory_1, 56737, 2, 1424, 1424)).
code(type_factory_1_code285, variable_declaration_fragment, type_factory_1_stmt133, (fragments, 0), range(type_factory_1, 56740, 24, 1424, 1424)).
%simple_type_1 - com.fasterxml.jackson.databind.type.SimpleType
code(simple_type_1_code1, compilation_unit, range(simple_type_1, 0, 11509, 1, -1)).
code(simple_type_1_code2, type_declaration, simple_type_1_code1, (types, 0), range(simple_type_1, 116, 11392, 7, 326)).
code(simple_type_1_code3, method_declaration, simple_type_1_code2, (body_declarations, 1), range(simple_type_1, 676, 452, 24, 34)).
code(simple_type_1_code4, method_declaration, simple_type_1_code2, (body_declarations, 2), range(simple_type_1, 1134, 191, 36, 39)).
code(simple_type_1_code5, method_declaration, simple_type_1_code2, (body_declarations, 4), range(simple_type_1, 1560, 304, 51, 57)).
code(simple_type_1_code6, method_declaration, simple_type_1_code2, (body_declarations, 15), range(simple_type_1, 8185, 226, 208, 213)).
code(simple_type_1_code7, method_declaration, simple_type_1_code2, (body_declarations, 16), range(simple_type_1, 8417, 548, 215, 234)).
code(simple_type_1_code8, simple_type, simple_type_1_stmt5, type, range(simple_type_1, 8483, 13, 218, 218)).
code(simple_type_1_code9, variable_declaration_fragment, simple_type_1_stmt5, (fragments, 0), range(simple_type_1, 8497, 24, 218, 218)).
code(simple_type_1_code10, simple_type, simple_type_1_expr5, type, range(simple_type_1, 8506, 13, 218, 218)).
code(simple_type_1_code11, modifier, simple_type_1_stmt7, (modifiers, 0), range(simple_type_1, 8569, 5, 221, 221)).
code(simple_type_1_code12, primitive_type, simple_type_1_stmt7, type, range(simple_type_1, 8575, 3, 221, 221)).
code(simple_type_1_code13, variable_declaration_fragment, simple_type_1_stmt7, (fragments, 0), range(simple_type_1, 8579, 24, 221, 221)).
code(simple_type_1_code14, method_declaration, simple_type_1_code2, (body_declarations, 23), range(simple_type_1, 11021, 485, 309, 325)).
%type_bindings_1 - com.fasterxml.jackson.databind.type.TypeBindings
code(type_bindings_1_code1, compilation_unit, range(type_bindings_1, 0, 16071, 1, -1)).
code(type_bindings_1_code2, type_declaration, type_bindings_1_code1, (types, 0), range(type_bindings_1, 144, 15926, 8, 473)).
code(type_bindings_1_code3, field_declaration, type_bindings_1_code2, (body_declarations, 1), range(type_bindings_1, 341, 57, 16, 16)).
code(type_bindings_1_code4, modifier, type_bindings_1_code3, (modifiers, 0), range(type_bindings_1, 341, 7, 16, 16)).
code(type_bindings_1_code5, modifier, type_bindings_1_code3, (modifiers, 1), range(type_bindings_1, 349, 5, 16, 16)).
code(type_bindings_1_code6, modifier, type_bindings_1_code3, (modifiers, 2), range(type_bindings_1, 355, 6, 16, 16)).
code(type_bindings_1_code8, simple_type, type_bindings_1_code7, element_type, range(type_bindings_1, 362, 6, 16, 16)).
code(type_bindings_1_code7, array_type, type_bindings_1_code3, type, range(type_bindings_1, 362, 8, 16, 16)).
code(type_bindings_1_code9, dimension, type_bindings_1_code7, (dimensions, 0), range(type_bindings_1, 368, 2, 16, 16)).
code(type_bindings_1_code10, variable_declaration_fragment, type_bindings_1_code3, (fragments, 0), range(type_bindings_1, 371, 26, 16, 16)).
code(type_bindings_1_code11, array_type, type_bindings_1_expr1, type, range(type_bindings_1, 388, 9, 16, 16)).
code(type_bindings_1_code12, simple_type, type_bindings_1_code11, element_type, range(type_bindings_1, 388, 6, 16, 16)).
code(type_bindings_1_code13, dimension, type_bindings_1_code11, (dimensions, 0), range(type_bindings_1, 394, 3, 16, 16)).
code(type_bindings_1_code14, field_declaration, type_bindings_1_code2, (body_declarations, 2), range(type_bindings_1, 404, 59, 18, 18)).
code(type_bindings_1_code15, modifier, type_bindings_1_code14, (modifiers, 0), range(type_bindings_1, 404, 7, 18, 18)).
code(type_bindings_1_code16, modifier, type_bindings_1_code14, (modifiers, 1), range(type_bindings_1, 412, 5, 18, 18)).
code(type_bindings_1_code17, modifier, type_bindings_1_code14, (modifiers, 2), range(type_bindings_1, 418, 6, 18, 18)).
code(type_bindings_1_code19, simple_type, type_bindings_1_code18, element_type, range(type_bindings_1, 425, 8, 18, 18)).
code(type_bindings_1_code18, array_type, type_bindings_1_code14, type, range(type_bindings_1, 425, 10, 18, 18)).
code(type_bindings_1_code20, dimension, type_bindings_1_code18, (dimensions, 0), range(type_bindings_1, 433, 2, 18, 18)).
code(type_bindings_1_code21, variable_declaration_fragment, type_bindings_1_code14, (fragments, 0), range(type_bindings_1, 436, 26, 18, 18)).
code(type_bindings_1_code22, array_type, type_bindings_1_expr2, type, range(type_bindings_1, 451, 11, 18, 18)).
code(type_bindings_1_code23, simple_type, type_bindings_1_code22, element_type, range(type_bindings_1, 451, 8, 18, 18)).
code(type_bindings_1_code24, dimension, type_bindings_1_code22, (dimensions, 0), range(type_bindings_1, 459, 3, 18, 18)).
code(type_bindings_1_code25, field_declaration, type_bindings_1_code2, (body_declarations, 3), range(type_bindings_1, 469, 87, 20, 20)).
code(type_bindings_1_code26, modifier, type_bindings_1_code25, (modifiers, 0), range(type_bindings_1, 469, 7, 20, 20)).
code(type_bindings_1_code27, modifier, type_bindings_1_code25, (modifiers, 1), range(type_bindings_1, 477, 5, 20, 20)).
code(type_bindings_1_code28, modifier, type_bindings_1_code25, (modifiers, 2), range(type_bindings_1, 483, 6, 20, 20)).
code(type_bindings_1_code29, simple_type, type_bindings_1_code25, type, range(type_bindings_1, 490, 12, 20, 20)).
code(type_bindings_1_code30, variable_declaration_fragment, type_bindings_1_code25, (fragments, 0), range(type_bindings_1, 503, 52, 20, 20)).
code(type_bindings_1_code31, simple_type, type_bindings_1_expr3, type, range(type_bindings_1, 515, 12, 20, 20)).
code(type_bindings_1_code32, method_declaration, type_bindings_1_code2, (body_declarations, 8), range(type_bindings_1, 1222, 549, 51, 64)).
code(type_bindings_1_code33, primitive_type, type_bindings_1_stmt4, type, range(type_bindings_1, 1587, 3, 58, 58)).
code(type_bindings_1_code34, variable_declaration_fragment, type_bindings_1_stmt4, (fragments, 0), range(type_bindings_1, 1591, 5, 58, 58)).
code(type_bindings_1_code35, primitive_type, type_bindings_1_expr13, type, range(type_bindings_1, 1611, 3, 59, 59)).
code(type_bindings_1_code36, variable_declaration_fragment, type_bindings_1_expr13, (fragments, 0), range(type_bindings_1, 1615, 5, 59, 59)).
code(type_bindings_1_code37, variable_declaration_fragment, type_bindings_1_expr13, (fragments, 1), range(type_bindings_1, 1622, 19, 59, 59)).
code(type_bindings_1_code38, method_declaration, type_bindings_1_code2, (body_declarations, 9), range(type_bindings_1, 1777, 72, 66, 68)).
code(type_bindings_1_code39, method_declaration, type_bindings_1_code2, (body_declarations, 11), range(type_bindings_1, 2096, 399, 78, 87)).
code(type_bindings_1_code40, array_type, type_bindings_1_stmt10, type, range(type_bindings_1, 2310, 10, 84, 84)).
code(type_bindings_1_code41, simple_type, type_bindings_1_code40, element_type, range(type_bindings_1, 2310, 8, 84, 84)).
code(type_bindings_1_code42, dimension, type_bindings_1_code40, (dimensions, 0), range(type_bindings_1, 2318, 2, 84, 84)).
code(type_bindings_1_code43, variable_declaration_fragment, type_bindings_1_stmt10, (fragments, 0), range(type_bindings_1, 2321, 125, 84, 85)).
code(type_bindings_1_code44, method_declaration, type_bindings_1_code2, (body_declarations, 12), range(type_bindings_1, 2501, 1118, 89, 117)).
code(type_bindings_1_code45, method_declaration, type_bindings_1_code2, (body_declarations, 13), range(type_bindings_1, 3625, 626, 119, 130)).
code(type_bindings_1_code47, parameterized_type, type_bindings_1_code46, element_type, range(type_bindings_1, 3790, 15, 122, 122)).
code(type_bindings_1_code46, array_type, type_bindings_1_stmt16, type, range(type_bindings_1, 3790, 17, 122, 122)).
code(type_bindings_1_code48, simple_type, type_bindings_1_code47, type, range(type_bindings_1, 3790, 12, 122, 122)).
code(type_bindings_1_code49, wildcard_type, type_bindings_1_code47, (type_arguments, 0), range(type_bindings_1, 3803, 1, 122, 122)).
code(type_bindings_1_code50, dimension, type_bindings_1_code46, (dimensions, 0), range(type_bindings_1, 3805, 2, 122, 122)).
code(type_bindings_1_code51, variable_declaration_fragment, type_bindings_1_stmt16, (fragments, 0), range(type_bindings_1, 3808, 44, 122, 122)).
code(type_bindings_1_code52, primitive_type, type_bindings_1_stmt17, type, range(type_bindings_1, 3862, 3, 123, 123)).
code(type_bindings_1_code53, variable_declaration_fragment, type_bindings_1_stmt17, (fragments, 0), range(type_bindings_1, 3866, 41, 123, 123)).
code(type_bindings_1_code54, simple_type, type_bindings_1_expr39, type, range(type_bindings_1, 4145, 12, 128, 128)).
code(type_bindings_1_code56, simple_type, type_bindings_1_code55, element_type, range(type_bindings_1, 4162, 6, 128, 128)).
code(type_bindings_1_code55, array_type, type_bindings_1_expr40, type, range(type_bindings_1, 4162, 8, 128, 128)).
code(type_bindings_1_code57, dimension, type_bindings_1_code55, (dimensions, 0), range(type_bindings_1, 4168, 2, 128, 128)).
code(type_bindings_1_code58, method_declaration, type_bindings_1_code2, (body_declarations, 14), range(type_bindings_1, 4257, 675, 132, 143)).
code(type_bindings_1_code59, array_type, type_bindings_1_stmt20, type, range(type_bindings_1, 4441, 17, 135, 135)).
code(type_bindings_1_code61, simple_type, type_bindings_1_code60, type, range(type_bindings_1, 4441, 12, 135, 135)).
code(type_bindings_1_code60, parameterized_type, type_bindings_1_code59, element_type, range(type_bindings_1, 4441, 15, 135, 135)).
code(type_bindings_1_code62, wildcard_type, type_bindings_1_code60, (type_arguments, 0), range(type_bindings_1, 4454, 1, 135, 135)).
code(type_bindings_1_code63, dimension, type_bindings_1_code59, (dimensions, 0), range(type_bindings_1, 4456, 2, 135, 135)).
code(type_bindings_1_code64, variable_declaration_fragment, type_bindings_1_stmt20, (fragments, 0), range(type_bindings_1, 4459, 44, 135, 135)).
code(type_bindings_1_code65, primitive_type, type_bindings_1_stmt21, type, range(type_bindings_1, 4513, 3, 136, 136)).
code(type_bindings_1_code66, variable_declaration_fragment, type_bindings_1_stmt21, (fragments, 0), range(type_bindings_1, 4517, 41, 136, 136)).
code(type_bindings_1_code67, simple_type, type_bindings_1_expr50, type, range(type_bindings_1, 4797, 12, 141, 141)).
code(type_bindings_1_code68, array_type, type_bindings_1_expr51, type, range(type_bindings_1, 4814, 8, 141, 141)).
code(type_bindings_1_code69, simple_type, type_bindings_1_code68, element_type, range(type_bindings_1, 4814, 6, 141, 141)).
code(type_bindings_1_code70, dimension, type_bindings_1_code68, (dimensions, 0), range(type_bindings_1, 4820, 2, 141, 141)).
code(type_bindings_1_code71, method_declaration, type_bindings_1_code2, (body_declarations, 17), range(type_bindings_1, 6882, 586, 193, 205)).
code(type_bindings_1_code72, primitive_type, type_bindings_1_stmt24, type, range(type_bindings_1, 7198, 3, 200, 200)).
code(type_bindings_1_code73, variable_declaration_fragment, type_bindings_1_stmt24, (fragments, 0), range(type_bindings_1, 7202, 64, 200, 200)).
code(type_bindings_1_code74, array_type, type_bindings_1_stmt25, type, range(type_bindings_1, 7276, 8, 201, 201)).
code(type_bindings_1_code75, simple_type, type_bindings_1_code74, element_type, range(type_bindings_1, 7276, 6, 201, 201)).
code(type_bindings_1_code76, dimension, type_bindings_1_code74, (dimensions, 0), range(type_bindings_1, 7282, 2, 201, 201)).
code(type_bindings_1_code77, variable_declaration_fragment, type_bindings_1_stmt25, (fragments, 0), range(type_bindings_1, 7285, 93, 201, 202)).
code(type_bindings_1_code78, simple_type, type_bindings_1_expr68, type, range(type_bindings_1, 7426, 12, 204, 204)).
code(type_bindings_1_code79, method_declaration, type_bindings_1_code2, (body_declarations, 18), range(type_bindings_1, 7659, 1158, 213, 242)).
code(type_bindings_1_code80, primitive_type, type_bindings_1_expr69, type, range(type_bindings_1, 7835, 3, 218, 218)).
code(type_bindings_1_code81, variable_declaration_fragment, type_bindings_1_expr69, (fragments, 0), range(type_bindings_1, 7839, 5, 218, 218)).
code(type_bindings_1_code82, variable_declaration_fragment, type_bindings_1_expr69, (fragments, 1), range(type_bindings_1, 7846, 19, 218, 218)).
code(type_bindings_1_code83, simple_type, type_bindings_1_stmt30, type, range(type_bindings_1, 7941, 8, 220, 220)).
code(type_bindings_1_code84, variable_declaration_fragment, type_bindings_1_stmt30, (fragments, 0), range(type_bindings_1, 7950, 13, 220, 220)).
code(type_bindings_1_code85, simple_type, type_bindings_1_expr75, right_operand, range(type_bindings_1, 7998, 21, 221, 221)).
code(type_bindings_1_code86, method_declaration, type_bindings_1_code2, (body_declarations, 19), range(type_bindings_1, 8823, 69, 244, 246)).
code(type_bindings_1_code87, method_declaration, type_bindings_1_code2, (body_declarations, 20), range(type_bindings_1, 8902, 116, 248, 253)).
code(type_bindings_1_code88, method_declaration, type_bindings_1_code2, (body_declarations, 23), range(type_bindings_1, 9368, 256, 271, 280)).
code(type_bindings_1_code89, method_declaration, type_bindings_1_code2, (body_declarations, 24), range(type_bindings_1, 9630, 340, 282, 294)).
code(type_bindings_1_code90, method_declaration, type_bindings_1_code2, (body_declarations, 25), range(type_bindings_1, 9976, 394, 296, 306)).
code(type_bindings_1_code91, simple_type, type_bindings_1_expr81, type, range(type_bindings_1, 10330, 5, 305, 305)).
code(type_bindings_1_code92, type_declaration, type_bindings_1_code2, (body_declarations, 30), range(type_bindings_1, 12428, 2289, 373, 424)).
code(type_bindings_1_code94, modifier, type_bindings_1_code93, (modifiers, 0), range(type_bindings_1, 12813, 7, 381, 381)).
code(type_bindings_1_code93, field_declaration, type_bindings_1_code92, (body_declarations, 0), range(type_bindings_1, 12813, 99, 381, 381)).
code(type_bindings_1_code95, modifier, type_bindings_1_code93, (modifiers, 1), range(type_bindings_1, 12821, 5, 381, 381)).
code(type_bindings_1_code96, modifier, type_bindings_1_code93, (modifiers, 2), range(type_bindings_1, 12827, 6, 381, 381)).
code(type_bindings_1_code99, simple_type, type_bindings_1_code98, type, range(type_bindings_1, 12834, 12, 381, 381)).
code(type_bindings_1_code97, array_type, type_bindings_1_code93, type, range(type_bindings_1, 12834, 17, 381, 381)).
code(type_bindings_1_code98, parameterized_type, type_bindings_1_code97, element_type, range(type_bindings_1, 12834, 15, 381, 381)).
code(type_bindings_1_code100, wildcard_type, type_bindings_1_code98, (type_arguments, 0), range(type_bindings_1, 12847, 1, 381, 381)).
code(type_bindings_1_code101, dimension, type_bindings_1_code97, (dimensions, 0), range(type_bindings_1, 12849, 2, 381, 381)).
code(type_bindings_1_code102, variable_declaration_fragment, type_bindings_1_code93, (fragments, 0), range(type_bindings_1, 12852, 59, 381, 381)).
code(type_bindings_1_code103, simple_type, type_bindings_1_expr83, type, range(type_bindings_1, 12873, 12, 381, 381)).
code(type_bindings_1_code105, modifier, type_bindings_1_code104, (modifiers, 0), range(type_bindings_1, 12921, 7, 382, 382)).
code(type_bindings_1_code104, field_declaration, type_bindings_1_code92, (body_declarations, 1), range(type_bindings_1, 12921, 94, 382, 382)).
code(type_bindings_1_code106, modifier, type_bindings_1_code104, (modifiers, 1), range(type_bindings_1, 12929, 5, 382, 382)).
code(type_bindings_1_code107, modifier, type_bindings_1_code104, (modifiers, 2), range(type_bindings_1, 12935, 6, 382, 382)).
code(type_bindings_1_code108, array_type, type_bindings_1_code104, type, range(type_bindings_1, 12942, 17, 382, 382)).
code(type_bindings_1_code110, simple_type, type_bindings_1_code109, type, range(type_bindings_1, 12942, 12, 382, 382)).
code(type_bindings_1_code109, parameterized_type, type_bindings_1_code108, element_type, range(type_bindings_1, 12942, 15, 382, 382)).
code(type_bindings_1_code111, wildcard_type, type_bindings_1_code109, (type_arguments, 0), range(type_bindings_1, 12955, 1, 382, 382)).
code(type_bindings_1_code112, dimension, type_bindings_1_code108, (dimensions, 0), range(type_bindings_1, 12957, 2, 382, 382)).
code(type_bindings_1_code113, variable_declaration_fragment, type_bindings_1_code104, (fragments, 0), range(type_bindings_1, 12960, 54, 382, 382)).
code(type_bindings_1_code114, simple_type, type_bindings_1_expr85, type, range(type_bindings_1, 12978, 10, 382, 382)).
code(type_bindings_1_code116, modifier, type_bindings_1_code115, (modifiers, 0), range(type_bindings_1, 13024, 7, 383, 383)).
code(type_bindings_1_code115, field_declaration, type_bindings_1_code92, (body_declarations, 2), range(type_bindings_1, 13024, 90, 383, 383)).
code(type_bindings_1_code117, modifier, type_bindings_1_code115, (modifiers, 1), range(type_bindings_1, 13032, 5, 383, 383)).
code(type_bindings_1_code118, modifier, type_bindings_1_code115, (modifiers, 2), range(type_bindings_1, 13038, 6, 383, 383)).
code(type_bindings_1_code121, simple_type, type_bindings_1_code120, type, range(type_bindings_1, 13045, 12, 383, 383)).
code(type_bindings_1_code119, array_type, type_bindings_1_code115, type, range(type_bindings_1, 13045, 17, 383, 383)).
code(type_bindings_1_code120, parameterized_type, type_bindings_1_code119, element_type, range(type_bindings_1, 13045, 15, 383, 383)).
code(type_bindings_1_code122, wildcard_type, type_bindings_1_code120, (type_arguments, 0), range(type_bindings_1, 13058, 1, 383, 383)).
code(type_bindings_1_code123, dimension, type_bindings_1_code119, (dimensions, 0), range(type_bindings_1, 13060, 2, 383, 383)).
code(type_bindings_1_code124, variable_declaration_fragment, type_bindings_1_code115, (fragments, 0), range(type_bindings_1, 13063, 50, 383, 383)).
code(type_bindings_1_code125, simple_type, type_bindings_1_expr87, type, range(type_bindings_1, 13079, 8, 383, 383)).
code(type_bindings_1_code127, modifier, type_bindings_1_code126, (modifiers, 0), range(type_bindings_1, 13123, 7, 384, 384)).
code(type_bindings_1_code126, field_declaration, type_bindings_1_code92, (body_declarations, 3), range(type_bindings_1, 13123, 82, 384, 384)).
code(type_bindings_1_code128, modifier, type_bindings_1_code126, (modifiers, 1), range(type_bindings_1, 13131, 5, 384, 384)).
code(type_bindings_1_code129, modifier, type_bindings_1_code126, (modifiers, 2), range(type_bindings_1, 13137, 6, 384, 384)).
code(type_bindings_1_code130, array_type, type_bindings_1_code126, type, range(type_bindings_1, 13144, 17, 384, 384)).
code(type_bindings_1_code131, parameterized_type, type_bindings_1_code130, element_type, range(type_bindings_1, 13144, 15, 384, 384)).
code(type_bindings_1_code132, simple_type, type_bindings_1_code131, type, range(type_bindings_1, 13144, 12, 384, 384)).
code(type_bindings_1_code133, wildcard_type, type_bindings_1_code131, (type_arguments, 0), range(type_bindings_1, 13157, 1, 384, 384)).
code(type_bindings_1_code134, dimension, type_bindings_1_code130, (dimensions, 0), range(type_bindings_1, 13159, 2, 384, 384)).
code(type_bindings_1_code135, variable_declaration_fragment, type_bindings_1_code126, (fragments, 0), range(type_bindings_1, 13162, 42, 384, 384)).
code(type_bindings_1_code136, simple_type, type_bindings_1_expr89, type, range(type_bindings_1, 13174, 4, 384, 384)).
code(type_bindings_1_code138, modifier, type_bindings_1_code137, (modifiers, 0), range(type_bindings_1, 13214, 7, 385, 385)).
code(type_bindings_1_code137, field_declaration, type_bindings_1_code92, (body_declarations, 4), range(type_bindings_1, 13214, 93, 385, 385)).
code(type_bindings_1_code139, modifier, type_bindings_1_code137, (modifiers, 1), range(type_bindings_1, 13222, 5, 385, 385)).
code(type_bindings_1_code140, modifier, type_bindings_1_code137, (modifiers, 2), range(type_bindings_1, 13228, 6, 385, 385)).
code(type_bindings_1_code142, parameterized_type, type_bindings_1_code141, element_type, range(type_bindings_1, 13235, 15, 385, 385)).
code(type_bindings_1_code143, simple_type, type_bindings_1_code142, type, range(type_bindings_1, 13235, 12, 385, 385)).
code(type_bindings_1_code141, array_type, type_bindings_1_code137, type, range(type_bindings_1, 13235, 17, 385, 385)).
code(type_bindings_1_code144, wildcard_type, type_bindings_1_code142, (type_arguments, 0), range(type_bindings_1, 13248, 1, 385, 385)).
code(type_bindings_1_code145, dimension, type_bindings_1_code141, (dimensions, 0), range(type_bindings_1, 13250, 2, 385, 385)).
code(type_bindings_1_code146, variable_declaration_fragment, type_bindings_1_code137, (fragments, 0), range(type_bindings_1, 13253, 53, 385, 385)).
code(type_bindings_1_code147, simple_type, type_bindings_1_expr91, type, range(type_bindings_1, 13271, 9, 385, 385)).
code(type_bindings_1_code148, field_declaration, type_bindings_1_code92, (body_declarations, 5), range(type_bindings_1, 13317, 80, 387, 387)).
code(type_bindings_1_code149, modifier, type_bindings_1_code148, (modifiers, 0), range(type_bindings_1, 13317, 7, 387, 387)).
code(type_bindings_1_code150, modifier, type_bindings_1_code148, (modifiers, 1), range(type_bindings_1, 13325, 5, 387, 387)).
code(type_bindings_1_code151, modifier, type_bindings_1_code148, (modifiers, 2), range(type_bindings_1, 13331, 6, 387, 387)).
code(type_bindings_1_code152, array_type, type_bindings_1_code148, type, range(type_bindings_1, 13338, 17, 387, 387)).
code(type_bindings_1_code153, parameterized_type, type_bindings_1_code152, element_type, range(type_bindings_1, 13338, 15, 387, 387)).
code(type_bindings_1_code154, simple_type, type_bindings_1_code153, type, range(type_bindings_1, 13338, 12, 387, 387)).
code(type_bindings_1_code155, wildcard_type, type_bindings_1_code153, (type_arguments, 0), range(type_bindings_1, 13351, 1, 387, 387)).
code(type_bindings_1_code156, dimension, type_bindings_1_code152, (dimensions, 0), range(type_bindings_1, 13353, 2, 387, 387)).
code(type_bindings_1_code157, variable_declaration_fragment, type_bindings_1_code148, (fragments, 0), range(type_bindings_1, 13356, 40, 387, 387)).
code(type_bindings_1_code158, simple_type, type_bindings_1_expr93, type, range(type_bindings_1, 13367, 3, 387, 387)).
code(type_bindings_1_code159, field_declaration, type_bindings_1_code92, (body_declarations, 6), range(type_bindings_1, 13406, 89, 388, 388)).
code(type_bindings_1_code160, modifier, type_bindings_1_code159, (modifiers, 0), range(type_bindings_1, 13406, 7, 388, 388)).
code(type_bindings_1_code161, modifier, type_bindings_1_code159, (modifiers, 1), range(type_bindings_1, 13414, 5, 388, 388)).
code(type_bindings_1_code162, modifier, type_bindings_1_code159, (modifiers, 2), range(type_bindings_1, 13420, 6, 388, 388)).
code(type_bindings_1_code165, simple_type, type_bindings_1_code164, type, range(type_bindings_1, 13427, 12, 388, 388)).
code(type_bindings_1_code164, parameterized_type, type_bindings_1_code163, element_type, range(type_bindings_1, 13427, 15, 388, 388)).
code(type_bindings_1_code163, array_type, type_bindings_1_code159, type, range(type_bindings_1, 13427, 17, 388, 388)).
code(type_bindings_1_code166, wildcard_type, type_bindings_1_code164, (type_arguments, 0), range(type_bindings_1, 13440, 1, 388, 388)).
code(type_bindings_1_code167, dimension, type_bindings_1_code163, (dimensions, 0), range(type_bindings_1, 13442, 2, 388, 388)).
code(type_bindings_1_code168, variable_declaration_fragment, type_bindings_1_code159, (fragments, 0), range(type_bindings_1, 13445, 49, 388, 388)).
code(type_bindings_1_code169, simple_type, type_bindings_1_expr95, type, range(type_bindings_1, 13461, 7, 388, 388)).
code(type_bindings_1_code170, field_declaration, type_bindings_1_code92, (body_declarations, 7), range(type_bindings_1, 13504, 102, 389, 389)).
code(type_bindings_1_code171, modifier, type_bindings_1_code170, (modifiers, 0), range(type_bindings_1, 13504, 7, 389, 389)).
code(type_bindings_1_code172, modifier, type_bindings_1_code170, (modifiers, 1), range(type_bindings_1, 13512, 5, 389, 389)).
code(type_bindings_1_code173, modifier, type_bindings_1_code170, (modifiers, 2), range(type_bindings_1, 13518, 6, 389, 389)).
code(type_bindings_1_code174, array_type, type_bindings_1_code170, type, range(type_bindings_1, 13525, 17, 389, 389)).
code(type_bindings_1_code176, simple_type, type_bindings_1_code175, type, range(type_bindings_1, 13525, 12, 389, 389)).
code(type_bindings_1_code175, parameterized_type, type_bindings_1_code174, element_type, range(type_bindings_1, 13525, 15, 389, 389)).
code(type_bindings_1_code177, wildcard_type, type_bindings_1_code175, (type_arguments, 0), range(type_bindings_1, 13538, 1, 389, 389)).
code(type_bindings_1_code178, dimension, type_bindings_1_code174, (dimensions, 0), range(type_bindings_1, 13540, 2, 389, 389)).
code(type_bindings_1_code179, variable_declaration_fragment, type_bindings_1_code170, (fragments, 0), range(type_bindings_1, 13543, 62, 389, 389)).
code(type_bindings_1_code180, simple_type, type_bindings_1_expr97, type, range(type_bindings_1, 13566, 13, 389, 389)).
code(type_bindings_1_code181, method_declaration, type_bindings_1_code92, (body_declarations, 8), range(type_bindings_1, 13616, 642, 391, 409)).
code(type_bindings_1_code182, simple_type, type_bindings_1_expr99, type, range(type_bindings_1, 13720, 10, 393, 393)).
code(type_bindings_1_code183, simple_type, type_bindings_1_expr101, type, range(type_bindings_1, 13824, 4, 396, 396)).
code(type_bindings_1_code184, simple_type, type_bindings_1_expr103, type, range(type_bindings_1, 13916, 9, 399, 399)).
code(type_bindings_1_code185, simple_type, type_bindings_1_expr105, type, range(type_bindings_1, 14019, 12, 402, 402)).
code(type_bindings_1_code186, simple_type, type_bindings_1_expr107, type, range(type_bindings_1, 14128, 8, 405, 405)).
code(type_bindings_1_code187, method_declaration, type_bindings_1_code92, (body_declarations, 9), range(type_bindings_1, 14272, 435, 411, 423)).
code(type_bindings_1_code188, simple_type, type_bindings_1_expr110, type, range(type_bindings_1, 14376, 3, 413, 413)).
code(type_bindings_1_code189, simple_type, type_bindings_1_expr112, type, range(type_bindings_1, 14466, 7, 416, 416)).
code(type_bindings_1_code190, simple_type, type_bindings_1_expr114, type, range(type_bindings_1, 14565, 13, 419, 419)).
code(type_bindings_1_code191, type_declaration, type_bindings_1_code2, (body_declarations, 31), range(type_bindings_1, 14723, 1345, 426, 472)).
code(type_bindings_1_code193, modifier, type_bindings_1_code192, (modifiers, 0), range(type_bindings_1, 14970, 6, 436, 436)).
code(type_bindings_1_code192, method_declaration, type_bindings_1_code191, (body_declarations, 3), range(type_bindings_1, 14970, 148, 436, 440)).
code(type_bindings_1_code196, simple_type, type_bindings_1_code195, type, range(type_bindings_1, 14983, 5, 436, 436)).
code(type_bindings_1_code194, single_variable_declaration, type_bindings_1_code192, (parameters, 0), range(type_bindings_1, 14983, 12, 436, 436)).
code(type_bindings_1_code195, parameterized_type, type_bindings_1_code194, type, range(type_bindings_1, 14983, 8, 436, 436)).
code(type_bindings_1_code197, wildcard_type, type_bindings_1_code195, (type_arguments, 0), range(type_bindings_1, 14989, 1, 436, 436)).
code(type_bindings_1_code200, simple_type, type_bindings_1_code199, element_type, range(type_bindings_1, 14997, 8, 436, 436)).
code(type_bindings_1_code199, array_type, type_bindings_1_code198, type, range(type_bindings_1, 14997, 10, 436, 436)).
code(type_bindings_1_code198, single_variable_declaration, type_bindings_1_code192, (parameters, 1), range(type_bindings_1, 14997, 17, 436, 436)).
code(type_bindings_1_code201, dimension, type_bindings_1_code199, (dimensions, 0), range(type_bindings_1, 15005, 2, 436, 436)).
code(type_bindings_1_code202, single_variable_declaration, type_bindings_1_code192, (parameters, 2), range(type_bindings_1, 15016, 8, 436, 436)).
code(type_bindings_1_code203, primitive_type, type_bindings_1_code202, type, range(type_bindings_1, 15016, 3, 436, 436)).
code(type_bindings_1_code204, method_declaration, type_bindings_1_code191, (body_declarations, 4), range(type_bindings_1, 15128, 57, 442, 443)).
code(type_bindings_1_code205, modifier, type_bindings_1_code204, (modifiers, 1), range(type_bindings_1, 15146, 6, 443, 443)).
code(type_bindings_1_code206, primitive_type, type_bindings_1_code204, return_type2, range(type_bindings_1, 15153, 3, 443, 443)).
code(type_bindings_1_code207, method_declaration, type_bindings_1_code191, (body_declarations, 5), range(type_bindings_1, 15195, 763, 445, 466)).
code(type_bindings_1_code208, simple_type, type_bindings_1_stmt67, type, range(type_bindings_1, 15398, 5, 450, 450)).
code(type_bindings_1_code209, variable_declaration_fragment, type_bindings_1_stmt67, (fragments, 0), range(type_bindings_1, 15404, 17, 450, 450)).
code(type_bindings_1_code210, simple_type, type_bindings_1_expr125, type, range(type_bindings_1, 15413, 5, 450, 450)).
code(type_bindings_1_code211, modifier, type_bindings_1_stmt69, (modifiers, 0), range(type_bindings_1, 15506, 5, 453, 453)).
code(type_bindings_1_code212, array_type, type_bindings_1_stmt69, type, range(type_bindings_1, 15512, 10, 453, 453)).
code(type_bindings_1_code213, simple_type, type_bindings_1_code212, element_type, range(type_bindings_1, 15512, 8, 453, 453)).
code(type_bindings_1_code214, dimension, type_bindings_1_code212, (dimensions, 0), range(type_bindings_1, 15520, 2, 453, 453)).
code(type_bindings_1_code215, variable_declaration_fragment, type_bindings_1_stmt69, (fragments, 0), range(type_bindings_1, 15523, 27, 453, 453)).
code(type_bindings_1_code216, modifier, type_bindings_1_stmt70, (modifiers, 0), range(type_bindings_1, 15568, 5, 454, 454)).
code(type_bindings_1_code217, primitive_type, type_bindings_1_stmt70, type, range(type_bindings_1, 15574, 3, 454, 454)).
code(type_bindings_1_code218, variable_declaration_fragment, type_bindings_1_stmt70, (fragments, 0), range(type_bindings_1, 15578, 20, 454, 454)).
code(type_bindings_1_code219, primitive_type, type_bindings_1_expr132, type, range(type_bindings_1, 15675, 3, 457, 457)).
code(type_bindings_1_code220, variable_declaration_fragment, type_bindings_1_expr132, (fragments, 0), range(type_bindings_1, 15679, 5, 457, 457)).
%map_type_1 - com.fasterxml.jackson.databind.type.MapType
code(map_type_1_code1, compilation_unit, range(map_type_1, 0, 5538, 1, -1)).
code(map_type_1_code2, type_declaration, map_type_1_code1, (types, 0), range(map_type_1, 135, 5402, 7, 163)).
code(map_type_1_code3, method_declaration, map_type_1_code2, (body_declarations, 1), range(map_type_1, 459, 346, 20, 25)).
code(map_type_1_code4, method_declaration, map_type_1_code2, (body_declarations, 3), range(map_type_1, 958, 316, 34, 41)).
code(map_type_1_code5, simple_type, map_type_1_expr2, type, range(map_type_1, 1185, 7, 40, 40)).
code(map_type_1_code6, method_declaration, map_type_1_code2, (body_declarations, 13), range(map_type_1, 4208, 316, 123, 129)).
code(map_type_1_code7, simple_type, map_type_1_expr3, type, range(map_type_1, 4368, 7, 126, 126)).
%type_parser_1 - com.fasterxml.jackson.databind.type.TypeParser
code(type_parser_1_code1, compilation_unit, range(type_parser_1, 0, 4390, 1, -1)).
code(type_parser_1_code2, type_declaration, type_parser_1_code1, (types, 0), range(type_parser_1, 116, 4273, 7, 137)).
code(type_parser_1_code4, modifier, type_parser_1_code3, (modifiers, 0), range(type_parser_1, 421, 6, 18, 18)).
code(type_parser_1_code3, method_declaration, type_parser_1_code2, (body_declarations, 2), range(type_parser_1, 421, 62, 18, 20)).
code(type_parser_1_code5, single_variable_declaration, type_parser_1_code3, (parameters, 0), range(type_parser_1, 439, 13, 18, 18)).
code(type_parser_1_code6, simple_type, type_parser_1_code5, type, range(type_parser_1, 439, 11, 18, 18)).
code(type_parser_1_code7, method_declaration, type_parser_1_code2, (body_declarations, 4), range(type_parser_1, 642, 364, 29, 38)).
code(type_parser_1_code8, simple_type, type_parser_1_stmt2, type, range(type_parser_1, 728, 11, 31, 31)).
code(type_parser_1_code9, variable_declaration_fragment, type_parser_1_stmt2, (fragments, 0), range(type_parser_1, 740, 42, 31, 31)).
code(type_parser_1_code10, simple_type, type_parser_1_expr2, type, range(type_parser_1, 753, 11, 31, 31)).
code(type_parser_1_code11, simple_type, type_parser_1_stmt3, type, range(type_parser_1, 792, 8, 32, 32)).
code(type_parser_1_code12, variable_declaration_fragment, type_parser_1_stmt3, (fragments, 0), range(type_parser_1, 801, 24, 32, 32)).
code(type_parser_1_code13, method_declaration, type_parser_1_code2, (body_declarations, 5), range(type_parser_1, 1012, 839, 40, 60)).
code(type_parser_1_code14, parameterized_type, type_parser_1_stmt7, type, range(type_parser_1, 1228, 8, 46, 46)).
code(type_parser_1_code15, simple_type, type_parser_1_code14, type, range(type_parser_1, 1228, 5, 46, 46)).
code(type_parser_1_code16, wildcard_type, type_parser_1_code14, (type_arguments, 0), range(type_parser_1, 1234, 1, 46, 46)).
code(type_parser_1_code17, variable_declaration_fragment, type_parser_1_stmt7, (fragments, 0), range(type_parser_1, 1237, 44, 46, 46)).
code(type_parser_1_code18, simple_type, type_parser_1_stmt9, type, range(type_parser_1, 1392, 6, 50, 50)).
code(type_parser_1_code19, variable_declaration_fragment, type_parser_1_stmt9, (fragments, 0), range(type_parser_1, 1399, 26, 50, 50)).
code(type_parser_1_code21, simple_type, type_parser_1_code20, type, range(type_parser_1, 1480, 4, 52, 52)).
code(type_parser_1_code20, parameterized_type, type_parser_1_stmt11, type, range(type_parser_1, 1480, 14, 52, 52)).
code(type_parser_1_code22, simple_type, type_parser_1_code20, (type_arguments, 0), range(type_parser_1, 1485, 8, 52, 52)).
code(type_parser_1_code23, variable_declaration_fragment, type_parser_1_stmt11, (fragments, 0), range(type_parser_1, 1495, 35, 52, 52)).
code(type_parser_1_code24, simple_type, type_parser_1_stmt12, type, range(type_parser_1, 1548, 12, 53, 53)).
code(type_parser_1_code25, variable_declaration_fragment, type_parser_1_stmt12, (fragments, 0), range(type_parser_1, 1561, 45, 53, 53)).
code(type_parser_1_code26, method_declaration, type_parser_1_code2, (body_declarations, 6), range(type_parser_1, 1857, 613, 62, 76)).
code(type_parser_1_code27, parameterized_type, type_parser_1_stmt16, type, range(type_parser_1, 1967, 19, 65, 65)).
code(type_parser_1_code28, simple_type, type_parser_1_code27, type, range(type_parser_1, 1967, 9, 65, 65)).
code(type_parser_1_code29, simple_type, type_parser_1_code27, (type_arguments, 0), range(type_parser_1, 1977, 8, 65, 65)).
code(type_parser_1_code30, variable_declaration_fragment, type_parser_1_stmt16, (fragments, 0), range(type_parser_1, 1987, 33, 65, 65)).
code(type_parser_1_code31, parameterized_type, type_parser_1_expr18, type, range(type_parser_1, 1999, 19, 65, 65)).
code(type_parser_1_code32, simple_type, type_parser_1_code31, type, range(type_parser_1, 1999, 9, 65, 65)).
code(type_parser_1_code33, simple_type, type_parser_1_code31, (type_arguments, 0), range(type_parser_1, 2009, 8, 65, 65)).
code(type_parser_1_code34, simple_type, type_parser_1_stmt21, type, range(type_parser_1, 2165, 6, 69, 69)).
code(type_parser_1_code35, variable_declaration_fragment, type_parser_1_stmt21, (fragments, 0), range(type_parser_1, 2172, 26, 69, 69)).
code(type_parser_1_code36, method_declaration, type_parser_1_code2, (body_declarations, 7), range(type_parser_1, 2476, 393, 78, 88)).
code(type_parser_1_code37, type_declaration, type_parser_1_code2, (body_declarations, 9), range(type_parser_1, 3150, 1237, 96, 136)).
code(type_parser_1_code38, method_declaration, type_parser_1_code37, (body_declarations, 3), range(type_parser_1, 3332, 117, 104, 107)).
code(type_parser_1_code39, method_declaration, type_parser_1_code37, (body_declarations, 4), range(type_parser_1, 3459, 130, 109, 112)).
code(type_parser_1_code40, method_declaration, type_parser_1_code37, (body_declarations, 5), range(type_parser_1, 3607, 386, 114, 126)).
code(type_parser_1_code41, method_declaration, type_parser_1_code37, (body_declarations, 6), range(type_parser_1, 4003, 164, 128, 131)).
%test_type_factory_1 - com.fasterxml.jackson.databind.type.TestTypeFactory
code(test_type_factory_1_code1, compilation_unit, range(test_type_factory_1, 0, 24340, 1, -1)).
code(test_type_factory_1_code2, type_declaration, test_type_factory_1_code1, (types, 0), range(test_type_factory_1, 247, 24092, 10, 603)).
code(test_type_factory_1_code3, modifier, test_type_factory_1_code2, (modifiers, 0), range(test_type_factory_1, 354, 6, 14, 14)).
code(test_type_factory_1_code4, enum_declaration, test_type_factory_1_code2, (body_declarations, 0), range(test_type_factory_1, 581, 34, 23, 23)).
code(test_type_factory_1_code5, enum_constant_declaration, test_type_factory_1_code4, (enum_constants, 0), range(test_type_factory_1, 605, 3, 23, 23)).
code(test_type_factory_1_code6, enum_constant_declaration, test_type_factory_1_code4, (enum_constants, 1), range(test_type_factory_1, 610, 2, 23, 23)).
code(test_type_factory_1_code7, method_declaration, test_type_factory_1_code2, (body_declarations, 27), range(test_type_factory_1, 7302, 1998, 206, 250)).
code(test_type_factory_1_code8, simple_type, test_type_factory_1_stmt1, type, range(test_type_factory_1, 7428, 11, 211, 211)).
code(test_type_factory_1_code9, variable_declaration_fragment, test_type_factory_1_stmt1, (fragments, 0), range(test_type_factory_1, 7440, 34, 211, 211)).
code(test_type_factory_1_code10, simple_type, test_type_factory_1_stmt2, type, range(test_type_factory_1, 7484, 8, 212, 212)).
code(test_type_factory_1_code11, variable_declaration_fragment, test_type_factory_1_stmt2, (fragments, 0), range(test_type_factory_1, 7493, 46, 212, 212)).
code(test_type_factory_1_code12, simple_type, test_type_factory_1_expr3, type, range(test_type_factory_1, 7514, 18, 212, 212)).
code(test_type_factory_1_code13, simple_type, test_type_factory_1_stmt3, type, range(test_type_factory_1, 7549, 6, 213, 213)).
code(test_type_factory_1_code14, variable_declaration_fragment, test_type_factory_1_stmt3, (fragments, 0), range(test_type_factory_1, 7556, 21, 213, 213)).
code(test_type_factory_1_code15, simple_type, test_type_factory_1_expr10, type, range(test_type_factory_1, 7799, 19, 218, 218)).
code(test_type_factory_1_code16, simple_type, test_type_factory_1_expr18, type, range(test_type_factory_1, 8013, 17, 223, 223)).
code(test_type_factory_1_code17, simple_type, test_type_factory_1_expr26, type, range(test_type_factory_1, 8296, 7, 229, 229)).
code(test_type_factory_1_code18, simple_type, test_type_factory_1_expr27, type, range(test_type_factory_1, 8311, 16, 229, 229)).
code(test_type_factory_1_code19, simple_type, test_type_factory_1_expr28, type, range(test_type_factory_1, 8335, 6, 229, 229)).
code(test_type_factory_1_code21, modifier, test_type_factory_1_code20, (modifiers, 0), range(test_type_factory_1, 20113, 6, 499, 499)).
code(test_type_factory_1_code20, type_declaration, test_type_factory_1_code2, (body_declarations, 40), range(test_type_factory_1, 20113, 80, 499, 499)).
code(test_type_factory_1_code22, modifier, test_type_factory_1_code20, (modifiers, 1), range(test_type_factory_1, 20120, 8, 499, 499)).
code(test_type_factory_1_code23, parameterized_type, test_type_factory_1_code20, (super_interface_types, 0), range(test_type_factory_1, 20164, 25, 499, 499)).
code(test_type_factory_1_code24, simple_type, test_type_factory_1_code23, type, range(test_type_factory_1, 20164, 9, 499, 499)).
code(test_type_factory_1_code25, simple_type, test_type_factory_1_code23, (type_arguments, 0), range(test_type_factory_1, 20174, 6, 499, 499)).
code(test_type_factory_1_code26, simple_type, test_type_factory_1_code23, (type_arguments, 1), range(test_type_factory_1, 20181, 7, 499, 499)).
%type_base_1 - com.fasterxml.jackson.databind.type.TypeBase
code(type_base_1_code1, compilation_unit, range(type_base_1, 0, 7371, 1, -1)).
code(type_base_1_code2, type_declaration, type_base_1_code1, (types, 0), range(type_base_1, 308, 7062, 11, 254)).
code(type_base_1_code3, field_declaration, type_base_1_code2, (body_declarations, 1), range(type_base_1, 451, 77, 17, 17)).
code(type_base_1_code4, modifier, type_base_1_code3, (modifiers, 0), range(type_base_1, 451, 7, 17, 17)).
code(type_base_1_code5, modifier, type_base_1_code3, (modifiers, 1), range(type_base_1, 459, 5, 17, 17)).
code(type_base_1_code6, modifier, type_base_1_code3, (modifiers, 2), range(type_base_1, 465, 6, 17, 17)).
code(type_base_1_code7, simple_type, type_base_1_code3, type, range(type_base_1, 472, 12, 17, 17)).
code(type_base_1_code8, variable_declaration_fragment, type_base_1_code3, (fragments, 0), range(type_base_1, 485, 42, 17, 17)).
code(type_base_1_code10, modifier, type_base_1_code9, (modifiers, 0), range(type_base_1, 533, 7, 18, 18)).
code(type_base_1_code9, field_declaration, type_base_1_code2, (body_declarations, 2), range(type_base_1, 533, 59, 18, 18)).
code(type_base_1_code11, modifier, type_base_1_code9, (modifiers, 1), range(type_base_1, 541, 5, 18, 18)).
code(type_base_1_code12, modifier, type_base_1_code9, (modifiers, 2), range(type_base_1, 547, 6, 18, 18)).
code(type_base_1_code14, simple_type, type_base_1_code13, element_type, range(type_base_1, 554, 8, 18, 18)).
code(type_base_1_code13, array_type, type_base_1_code9, type, range(type_base_1, 554, 10, 18, 18)).
code(type_base_1_code15, dimension, type_base_1_code13, (dimensions, 0), range(type_base_1, 562, 2, 18, 18)).
code(type_base_1_code16, variable_declaration_fragment, type_base_1_code9, (fragments, 0), range(type_base_1, 565, 26, 18, 18)).
code(type_base_1_code17, array_type, type_base_1_expr2, type, range(type_base_1, 580, 11, 18, 18)).
code(type_base_1_code18, simple_type, type_base_1_code17, element_type, range(type_base_1, 580, 8, 18, 18)).
code(type_base_1_code19, dimension, type_base_1_code17, (dimensions, 0), range(type_base_1, 588, 3, 18, 18)).
code(type_base_1_code20, method_declaration, type_base_1_code2, (body_declarations, 7), range(type_base_1, 1061, 472, 38, 49)).
code(type_base_1_code21, method_declaration, type_base_1_code2, (body_declarations, 9), range(type_base_1, 1843, 187, 63, 71)).
code(type_base_1_code22, simple_type, type_base_1_stmt5, type, range(type_base_1, 1899, 6, 66, 66)).
code(type_base_1_code23, variable_declaration_fragment, type_base_1_stmt5, (fragments, 0), range(type_base_1, 1906, 20, 66, 66)).

%%% Name References

name_ref(t_arrays_7, type, 'Arrays', 'Ljava/util/Arrays;').
name_ref(t_boolean_8, type, 'Boolean', 'Ljava/lang/Boolean;').
name_ref(t_class_12, type, 'Class', 'Ljava/lang/Class<>;').
name_ref(t_class_util_15, type, 'ClassUtil', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;').
name_ref(t_collection_type_14, type, 'CollectionType', 'Lcom/fasterxml/jackson/databind/type/CollectionType;').
name_ref(t_enum_for_canonical_3, type, 'EnumForCanonical', 'Lcom/fasterxml/jackson/databind/type/TestTypeFactory$EnumForCanonical;').
name_ref(t_integer_9, type, 'Integer', 'Ljava/lang/Integer;').
name_ref(t_long_10, type, 'Long', 'Ljava/lang/Long;').
name_ref(t_map_type_13, type, 'MapType', 'Lcom/fasterxml/jackson/databind/type/MapType;').
name_ref(t_string_int_map_entry_5, type, 'StringIntMapEntry', 'Lcom/fasterxml/jackson/databind/type/TestTypeFactory$StringIntMapEntry;').
name_ref(t_test_type_factory_2, type, 'TestTypeFactory', 'Lcom/fasterxml/jackson/databind/type/TestTypeFactory;').
name_ref(t_thread_11, type, 'Thread', 'Ljava/lang/Thread;').
name_ref(t_type_bindings_1, type, 'TypeBindings', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;').
name_ref(t_type_factory_4, type, 'TypeFactory', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;').
name_ref(t_type_param_stash_6, type, 'TypeParamStash', 'Lcom/fasterxml/jackson/databind/type/TypeBindings$TypeParamStash;').
name_ref(p_as_static_236, param, 'asStatic', 'type_base_1;asStatic_line_45').
name_ref(p_as_static_88, param, 'asStatic', 'collection_type_1;asStatic_line_25').
name_ref(p_bindings_109, param, 'bindings', 'map_like_type_1;bindings_line_39').
name_ref(p_bindings_148, param, 'bindings', 'map_type_1;bindings_line_23').
name_ref(p_bindings_183, param, 'bindings', 'simple_type_1;bindings_line_38').
name_ref(p_bindings_188, param, 'bindings', 'simple_type_1;bindings_line_55').
name_ref(p_bindings_46, param, 'bindings', 'collection_like_type_1;bindings_line_34').
name_ref(p_bindings_82, param, 'bindings', 'collection_type_1;bindings_line_25').
name_ref(p_cls_181, param, 'cls', 'simple_type_1;cls_line_33').
name_ref(p_cls_182, param, 'cls', 'simple_type_1;cls_line_38').
name_ref(p_cls_187, param, 'cls', 'simple_type_1;cls_line_55').
name_ref(p_coll_t_45, param, 'collT', 'collection_like_type_1;collT_line_34').
name_ref(p_coll_t_81, param, 'collT', 'collection_type_1;collT_line_25').
name_ref(p_elem_t_85, param, 'elemT', 'collection_type_1;elemT_line_25').
name_ref(p_hash_233, param, 'hash', 'type_base_1;hash_line_45').
name_ref(p_key_t_112, param, 'keyT', 'map_like_type_1;keyT_line_39').
name_ref(p_map_type_108, param, 'mapType', 'map_like_type_1;mapType_line_39').
name_ref(p_map_type_147, param, 'mapType', 'map_type_1;mapType_line_23').
name_ref(p_raw_229, param, 'raw', 'type_base_1;raw_line_45').
name_ref(p_root_type_34, param, 'rootType', 'class_stack_1;rootType_line_21').
name_ref(p_str_538, param, 'str', 'type_parser_1;str_line_105').
name_ref(p_super_class_110, param, 'superClass', 'map_like_type_1;superClass_line_39').
name_ref(p_super_class_149, param, 'superClass', 'map_type_1;superClass_line_23').
name_ref(p_super_class_184, param, 'superClass', 'simple_type_1;superClass_line_38').
name_ref(p_super_class_189, param, 'superClass', 'simple_type_1;superClass_line_55').
name_ref(p_super_class_47, param, 'superClass', 'collection_like_type_1;superClass_line_34').
name_ref(p_super_class_83, param, 'superClass', 'collection_type_1;superClass_line_25').
name_ref(p_super_ints_111, param, 'superInts', 'map_like_type_1;superInts_line_39').
name_ref(p_super_ints_150, param, 'superInts', 'map_type_1;superInts_line_23').
name_ref(p_super_ints_185, param, 'superInts', 'simple_type_1;superInts_line_38').
name_ref(p_super_ints_190, param, 'superInts', 'simple_type_1;superInts_line_55').
name_ref(p_super_ints_48, param, 'superInts', 'collection_like_type_1;superInts_line_34').
name_ref(p_super_ints_84, param, 'superInts', 'collection_type_1;superInts_line_25').
name_ref(p_type_handler_235, param, 'typeHandler', 'type_base_1;typeHandler_line_45').
name_ref(p_type_handler_87, param, 'typeHandler', 'collection_type_1;typeHandler_line_25').
name_ref(p_value_handler_234, param, 'valueHandler', 'type_base_1;valueHandler_line_45').
name_ref(p_value_handler_86, param, 'valueHandler', 'collection_type_1;valueHandler_line_25').
name_ref(v_args_503, var, 'args', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._fromParamType(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/reflect/ParameterizedType;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;#args').
name_ref(v_b_530, var, 'b', 'Lcom/fasterxml/jackson/databind/type/TypeParser;.parseType(Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;)Lcom/fasterxml/jackson/databind/JavaType;|Ljava/lang/IllegalArgumentException;#0#0#b').
name_ref(v_base_527, var, 'base', 'Lcom/fasterxml/jackson/databind/type/TypeParser;.parseType(Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;)Lcom/fasterxml/jackson/databind/JavaType;|Ljava/lang/IllegalArgumentException;#base').
name_ref(v_bounds_516, var, 'bounds', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._fromVariable(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/reflect/TypeVariable<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;#bounds').
name_ref(v_can_226, var, 'can', 'Lcom/fasterxml/jackson/databind/type/TestTypeFactory;.testCanonicalNames()V#can').
name_ref(v_count_215, var, 'count', 'Lcom/fasterxml/jackson/databind/type/SimpleType;.buildCanonicalName()Ljava/lang/String;#count').
name_ref(v_ct_448, var, 'ct', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._collectionType(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#ct').
name_ref(v_curr_44, var, 'curr', 'Lcom/fasterxml/jackson/databind/type/ClassStack;.find(Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/type/ClassStack;#0#curr').
name_ref(v_h_265, var, 'h', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;.([Ljava/lang/String;[Lcom/fasterxml/jackson/databind/JavaType;[Ljava/lang/String;)V#h').
name_ref(v_i_266, var, 'i', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;.([Ljava/lang/String;[Lcom/fasterxml/jackson/databind/JavaType;[Ljava/lang/String;)V#0#i').
name_ref(v_i_292, var, 'i', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;.findBoundType(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;#0#i').
name_ref(v_i_320, var, 'i', 'Lcom/fasterxml/jackson/databind/type/TypeBindings$AsKey;.equals(Ljava/lang/Object;)Z#0#0#i').
name_ref(v_i_484, var, 'i', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._resolveSuperInterfaces(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;)[Lcom/fasterxml/jackson/databind/JavaType;#0#i').
name_ref(v_i_497, var, 'i', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._fromWellKnownInterface(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#0#i').
name_ref(v_i_506, var, 'i', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._fromParamType(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/reflect/ParameterizedType;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;#0#0#i').
name_ref(v_int_count_496, var, 'intCount', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._fromWellKnownInterface(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#intCount').
name_ref(v_key_470, var, 'key', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._fromClass(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;#key').
name_ref(v_kt_403, var, 'kt', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructMapType(Ljava/lang/Class<+Ljava/util/Map;>;Ljava/lang/Class<*>;Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/type/MapType;#kt').
name_ref(v_kt_441, var, 'kt', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._mapType(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#kt').
name_ref(v_len_267, var, 'len', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;.([Ljava/lang/String;[Lcom/fasterxml/jackson/databind/JavaType;[Ljava/lang/String;)V#0#len').
name_ref(v_len_289, var, 'len', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;.withUnboundVariable(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/type/TypeBindings;#len').
name_ref(v_len_293, var, 'len', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;.findBoundType(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;#0#len').
name_ref(v_len_319, var, 'len', 'Lcom/fasterxml/jackson/databind/type/TypeBindings$AsKey;.equals(Ljava/lang/Object;)Z#0#len').
name_ref(v_len_482, var, 'len', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._resolveSuperInterfaces(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;)[Lcom/fasterxml/jackson/databind/JavaType;#len').
name_ref(v_loader_355, var, 'loader', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.findClass(Ljava/lang/String;)Ljava/lang/Class<*>;|Ljava/lang/ClassNotFoundException;#loader').
name_ref(v_name_514, var, 'name', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._fromVariable(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/reflect/TypeVariable<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;#name').
name_ref(v_names_290, var, 'names', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;.withUnboundVariable(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/type/TypeBindings;#names').
name_ref(v_new_bindings_507, var, 'newBindings', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._fromParamType(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/reflect/ParameterizedType;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;#newBindings').
name_ref(v_other_146, var, 'other', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;.equals(Ljava/lang/Object;)Z#other').
name_ref(v_other_317, var, 'other', 'Lcom/fasterxml/jackson/databind/type/TypeBindings$AsKey;.equals(Ljava/lang/Object;)Z#other').
name_ref(v_other_80, var, 'other', 'Lcom/fasterxml/jackson/databind/type/CollectionLikeType;.equals(Ljava/lang/Object;)Z#other').
name_ref(v_other_params_318, var, 'otherParams', 'Lcom/fasterxml/jackson/databind/type/TypeBindings$AsKey;.equals(Ljava/lang/Object;)Z#0#otherParams').
name_ref(v_param_count_504, var, 'paramCount', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._fromParamType(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/reflect/ParameterizedType;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;#paramCount').
name_ref(v_parameter_types_529, var, 'parameterTypes', 'Lcom/fasterxml/jackson/databind/type/TypeParser;.parseType(Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;)Lcom/fasterxml/jackson/databind/JavaType;|Ljava/lang/IllegalArgumentException;#0#0#parameterTypes').
name_ref(v_parent_477, var, 'parent', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._resolveSuperClass(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;#parent').
name_ref(v_prev_471, var, 'prev', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._fromClass(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;#0#prev').
name_ref(v_prob_354, var, 'prob', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.findClass(Ljava/lang/String;)Ljava/lang/Class<*>;|Ljava/lang/ClassNotFoundException;#prob').
name_ref(v_pt_505, var, 'pt', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._fromParamType(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/reflect/ParameterizedType;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;#0#pt').
name_ref(v_raw_type_502, var, 'rawType', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._fromParamType(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/reflect/ParameterizedType;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;#rawType').
name_ref(v_resolved_483, var, 'resolved', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._resolveSuperInterfaces(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;)[Lcom/fasterxml/jackson/databind/JavaType;#resolved').
name_ref(v_result_469, var, 'result', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._fromClass(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;#result').
name_ref(v_result_498, var, 'result', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._fromWellKnownInterface(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#0#0#result').
name_ref(v_result_type_465, var, 'resultType', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._fromAny(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;#resultType').
name_ref(v_sb_140, var, 'sb', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;.buildCanonicalName()Ljava/lang/String;#sb').
name_ref(v_sb_214, var, 'sb', 'Lcom/fasterxml/jackson/databind/type/SimpleType;.buildCanonicalName()Ljava/lang/String;#sb').
name_ref(v_sb_78, var, 'sb', 'Lcom/fasterxml/jackson/databind/type/CollectionLikeType;.buildCanonicalName()Ljava/lang/String;#sb').
name_ref(v_str_240, var, 'str', 'Lcom/fasterxml/jackson/databind/type/TypeBase;.toCanonical()Ljava/lang/String;#str').
name_ref(v_super_class_472, var, 'superClass', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._fromClass(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;#1#superClass').
name_ref(v_super_interfaces_473, var, 'superInterfaces', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._fromClass(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;#1#superInterfaces').
name_ref(v_t_225, var, 't', 'Lcom/fasterxml/jackson/databind/type/TestTypeFactory;.testCanonicalNames()V#t').
name_ref(v_t_294, var, 't', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;.findBoundType(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;#0#0#t').
name_ref(v_tf_224, var, 'tf', 'Lcom/fasterxml/jackson/databind/type/TestTypeFactory;.testCanonicalNames()V#tf').
name_ref(v_token_528, var, 'token', 'Lcom/fasterxml/jackson/databind/type/TypeParser;.parseType(Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;)Lcom/fasterxml/jackson/databind/JavaType;|Ljava/lang/IllegalArgumentException;#0#token').
name_ref(v_token_533, var, 'token', 'Lcom/fasterxml/jackson/databind/type/TypeParser;.parseTypes(Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;)Ljava/util/List<Lcom/fasterxml/jackson/databind/JavaType;>;|Ljava/lang/IllegalArgumentException;#0#token').
name_ref(v_token_541, var, 'token', 'Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;.nextToken()Ljava/lang/String;#token').
name_ref(v_tokens_524, var, 'tokens', 'Lcom/fasterxml/jackson/databind/type/TypeParser;.parse(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;|Ljava/lang/IllegalArgumentException;#tokens').
name_ref(v_type_485, var, 'type', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._resolveSuperInterfaces(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;)[Lcom/fasterxml/jackson/databind/JavaType;#0#0#type').
name_ref(v_type_515, var, 'type', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._fromVariable(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/reflect/TypeVariable<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;#type').
name_ref(v_type_525, var, 'type', 'Lcom/fasterxml/jackson/databind/type/TypeParser;.parse(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;|Ljava/lang/IllegalArgumentException;#type').
name_ref(v_type_params_440, var, 'typeParams', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._mapType(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#0#typeParams').
name_ref(v_type_params_447, var, 'typeParams', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._collectionType(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#typeParams').
name_ref(v_types_272, var, 'types', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;.create(Ljava/lang/Class<*>;Ljava/util/List<Lcom/fasterxml/jackson/databind/JavaType;>;)Lcom/fasterxml/jackson/databind/type/TypeBindings;#types').
name_ref(v_types_481, var, 'types', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._resolveSuperInterfaces(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;)[Lcom/fasterxml/jackson/databind/JavaType;#types').
name_ref(v_types_532, var, 'types', 'Lcom/fasterxml/jackson/databind/type/TypeParser;.parseTypes(Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;)Ljava/util/List<Lcom/fasterxml/jackson/databind/JavaType;>;|Ljava/lang/IllegalArgumentException;#types').
name_ref(v_var_len_278, var, 'varLen', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;.create(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/TypeBindings;#varLen').
name_ref(v_var_len_283, var, 'varLen', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;.create(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/TypeBindings;#varLen').
name_ref(v_vars_277, var, 'vars', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;.create(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/TypeBindings;#vars').
name_ref(v_vars_282, var, 'vars', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;.create(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/TypeBindings;#vars').
name_ref(v_vt_404, var, 'vt', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructMapType(Ljava/lang/Class<+Ljava/util/Map;>;Ljava/lang/Class<*>;Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/type/MapType;#vt').
name_ref(v_vt_442, var, 'vt', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._mapType(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#vt').
name_ref(p_act_369, param, 'act', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._verifyAndResolvePlaceholders(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Z#act#0#1').
name_ref(p_actual_type_367, param, 'actualType', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._resolveTypePlaceholders(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/String;|Ljava/lang/IllegalArgumentException;#actualType#0#1').
name_ref(p_add_class_itself_550, param, 'addClassItself', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.findSuperTypes(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class<*>;Z)Ljava/util/List<Lcom/fasterxml/jackson/databind/JavaType;>;#addClassItself#0#2').
name_ref(p_add_class_itself_553, param, 'addClassItself', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.findRawSuperTypes(Ljava/lang/Class<*>;Ljava/lang/Class<*>;Z)Ljava/util/List<Ljava/lang/Class<*>;>;#addClassItself#0#2').
name_ref(p_add_class_itself_556, param, 'addClassItself', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.findSuperClasses(Ljava/lang/Class<*>;Ljava/lang/Class<*>;Z)Ljava/util/List<Ljava/lang/Class<*>;>;#addClassItself#0#2').
name_ref(p_add_class_itself_565, param, 'addClassItself', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;._addSuperTypes(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class<*>;Ljava/util/Collection<Lcom/fasterxml/jackson/databind/JavaType;>;Z)V#addClassItself#0#3').
name_ref(p_add_class_itself_569, param, 'addClassItself', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;._addRawSuperTypes(Ljava/lang/Class<*>;Ljava/lang/Class<*>;Ljava/util/Collection<Ljava/lang/Class<*>;>;Z)V#addClassItself#0#3').
name_ref(p_additional_hash_2, param, 'additionalHash', 'Lcom/fasterxml/jackson/databind/JavaType;.(Ljava/lang/Class<*>;ILjava/lang/Object;Ljava/lang/Object;Z)V#additionalHash#0#1').
name_ref(p_allow_non_static_572, param, 'allowNonStatic', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.isLocalType(Ljava/lang/Class<*>;Z)Ljava/lang/String;#allowNonStatic#0#1').
name_ref(p_annotation_class_610, param, 'annotationClass', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.findFirstAnnotatedEnumValue<T::Ljava/lang/annotation/Annotation;>(Ljava/lang/Class<Ljava/lang/Enum<*>;>;Ljava/lang/Class<TT;>;)Ljava/lang/Enum<*>;#annotationClass#0#1').
name_ref(p_as_static_116, param, 'asStatic', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V#asStatic#0#8').
name_ref(p_as_static_155, param, 'asStatic', 'Lcom/fasterxml/jackson/databind/type/MapType;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V#asStatic#0#8').
name_ref(p_as_static_193, param, 'asStatic', 'Lcom/fasterxml/jackson/databind/type/SimpleType;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V#asStatic#0#6').
name_ref(p_as_static_201, param, 'asStatic', 'Lcom/fasterxml/jackson/databind/type/SimpleType;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;ILjava/lang/Object;Ljava/lang/Object;Z)V#asStatic#0#7').
name_ref(p_as_static_236, param, 'asStatic', 'Lcom/fasterxml/jackson/databind/type/TypeBase;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;ILjava/lang/Object;Ljava/lang/Object;Z)V#asStatic#0#7').
name_ref(p_as_static_5, param, 'asStatic', 'Lcom/fasterxml/jackson/databind/JavaType;.(Ljava/lang/Class<*>;ILjava/lang/Object;Ljava/lang/Object;Z)V#asStatic#0#4').
name_ref(p_as_static_52, param, 'asStatic', 'Lcom/fasterxml/jackson/databind/type/CollectionLikeType;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V#asStatic#0#7').
name_ref(p_as_static_88, param, 'asStatic', 'Lcom/fasterxml/jackson/databind/type/CollectionType;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V#asStatic#0#7').
name_ref(p_b_220, param, 'b', 'Lcom/fasterxml/jackson/databind/type/SimpleType;._buildSuperClass(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;#b#0#1').
name_ref(p_base_11, param, 'base', 'Lcom/fasterxml/jackson/databind/JavaType;.(Lcom/fasterxml/jackson/databind/JavaType;)V#base#0#0').
name_ref(p_base_119, param, 'base', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;.(Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)V#base#0#0').
name_ref(p_base_156, param, 'base', 'Lcom/fasterxml/jackson/databind/type/MapType;.(Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)V#base#0#0').
name_ref(p_base_186, param, 'base', 'Lcom/fasterxml/jackson/databind/type/SimpleType;.(Lcom/fasterxml/jackson/databind/type/TypeBase;)V#base#0#0').
name_ref(p_base_239, param, 'base', 'Lcom/fasterxml/jackson/databind/type/TypeBase;.(Lcom/fasterxml/jackson/databind/type/TypeBase;)V#base#0#0').
name_ref(p_base_54, param, 'base', 'Lcom/fasterxml/jackson/databind/type/CollectionLikeType;.(Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/databind/JavaType;)V#base#0#0').
name_ref(p_base_89, param, 'base', 'Lcom/fasterxml/jackson/databind/type/CollectionType;.(Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/databind/JavaType;)V#base#0#0').
name_ref(p_base_type_122, param, 'baseType', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;.upgradeFrom(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapLikeType;#baseType#0#0').
name_ref(p_base_type_361, param, 'baseType', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/JavaType;#baseType#0#0').
name_ref(p_base_type_363, param, 'baseType', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._bindingsForSubtype(Lcom/fasterxml/jackson/databind/JavaType;ILjava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/type/TypeBindings;#baseType#0#0').
name_ref(p_base_type_370, param, 'baseType', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructGeneralizedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/JavaType;#baseType#0#0').
name_ref(p_base_type_63, param, 'baseType', 'Lcom/fasterxml/jackson/databind/type/CollectionLikeType;.upgradeFrom(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionLikeType;#baseType#0#0').
name_ref(p_bean_629, param, 'bean', 'Lcom/fasterxml/jackson/databind/util/ClassUtil$EnumTypeLocator;.get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;#bean#0#0').
name_ref(p_bindings_105, param, 'bindings', 'Lcom/fasterxml/jackson/databind/type/CollectionType;.refine(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#bindings#0#1').
name_ref(p_bindings_109, param, 'bindings', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V#bindings#0#1').
name_ref(p_bindings_137, param, 'bindings', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;.refine(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#bindings#0#1').
name_ref(p_bindings_148, param, 'bindings', 'Lcom/fasterxml/jackson/databind/type/MapType;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V#bindings#0#1').
name_ref(p_bindings_160, param, 'bindings', 'Lcom/fasterxml/jackson/databind/type/MapType;.construct(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapType;#bindings#0#1').
name_ref(p_bindings_176, param, 'bindings', 'Lcom/fasterxml/jackson/databind/type/MapType;.refine(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#bindings#0#1').
name_ref(p_bindings_183, param, 'bindings', 'Lcom/fasterxml/jackson/databind/type/SimpleType;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)V#bindings#0#1').
name_ref(p_bindings_188, param, 'bindings', 'Lcom/fasterxml/jackson/databind/type/SimpleType;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V#bindings#0#1').
name_ref(p_bindings_19, param, 'bindings', 'Lcom/fasterxml/jackson/databind/JavaType;.refine(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#bindings#0#1').
name_ref(p_bindings_195, param, 'bindings', 'Lcom/fasterxml/jackson/databind/type/SimpleType;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;ILjava/lang/Object;Ljava/lang/Object;Z)V#bindings#0#1').
name_ref(p_bindings_211, param, 'bindings', 'Lcom/fasterxml/jackson/databind/type/SimpleType;.refine(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#bindings#0#1').
name_ref(p_bindings_230, param, 'bindings', 'Lcom/fasterxml/jackson/databind/type/TypeBase;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;ILjava/lang/Object;Ljava/lang/Object;Z)V#bindings#0#1').
name_ref(p_bindings_377, param, 'bindings', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.findTypeParameters(Ljava/lang/Class<*>;Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;)[Lcom/fasterxml/jackson/databind/JavaType;#bindings#0#2').
name_ref(p_bindings_384, param, 'bindings', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructType(Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;#bindings#0#1').
name_ref(p_bindings_437, param, 'bindings', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._mapType(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#bindings#0#1').
name_ref(p_bindings_444, param, 'bindings', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._collectionType(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#bindings#0#1').
name_ref(p_bindings_450, param, 'bindings', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._referenceType(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#bindings#0#1').
name_ref(p_bindings_454, param, 'bindings', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._constructSimple(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#bindings#0#1').
name_ref(p_bindings_458, param, 'bindings', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._newSimpleType(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#bindings#0#1').
name_ref(p_bindings_46, param, 'bindings', 'Lcom/fasterxml/jackson/databind/type/CollectionLikeType;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V#bindings#0#1').
name_ref(p_bindings_464, param, 'bindings', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._fromAny(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;#bindings#0#2').
name_ref(p_bindings_468, param, 'bindings', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._fromClass(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;#bindings#0#2').
name_ref(p_bindings_488, param, 'bindings', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._fromWellKnownClass(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#bindings#0#2').
name_ref(p_bindings_493, param, 'bindings', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._fromWellKnownInterface(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#bindings#0#2').
name_ref(p_bindings_510, param, 'bindings', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._fromArrayType(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/reflect/GenericArrayType;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;#bindings#0#2').
name_ref(p_bindings_513, param, 'bindings', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._fromVariable(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/reflect/TypeVariable<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;#bindings#0#2').
name_ref(p_bindings_519, param, 'bindings', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._fromWildcard(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/reflect/WildcardType;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;#bindings#0#2').
name_ref(p_bindings_57, param, 'bindings', 'Lcom/fasterxml/jackson/databind/type/CollectionLikeType;.construct(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionLikeType;#bindings#0#1').
name_ref(p_bindings_73, param, 'bindings', 'Lcom/fasterxml/jackson/databind/type/CollectionLikeType;.refine(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#bindings#0#1').
name_ref(p_bindings_82, param, 'bindings', 'Lcom/fasterxml/jackson/databind/type/CollectionType;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V#bindings#0#1').
name_ref(p_bindings_92, param, 'bindings', 'Lcom/fasterxml/jackson/databind/type/CollectionType;.construct(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionType;#bindings#0#1').
name_ref(p_cache_351, param, 'cache', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.withCache(Lcom/fasterxml/jackson/databind/util/LRUMap<Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;>;)Lcom/fasterxml/jackson/databind/type/TypeFactory;#cache#0#0').
name_ref(p_can_fix_access_596, param, 'canFixAccess', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.createInstance<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Z)TT;|Ljava/lang/IllegalArgumentException;#canFixAccess#0#1').
name_ref(p_can_fix_access_598, param, 'canFixAccess', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.findConstructor<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Z)Ljava/lang/reflect/Constructor<TT;>;|Ljava/lang/IllegalArgumentException;#canFixAccess#0#1').
name_ref(p_canonical_372, param, 'canonical', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructFromCanonical(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;|Ljava/lang/IllegalArgumentException;#canonical#0#0').
name_ref(p_canonical_523, param, 'canonical', 'Lcom/fasterxml/jackson/databind/type/TypeParser;.parse(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;|Ljava/lang/IllegalArgumentException;#canonical#0#0').
name_ref(p_class_loader_348, param, 'classLoader', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.(Lcom/fasterxml/jackson/databind/util/LRUMap<Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;>;Lcom/fasterxml/jackson/databind/type/TypeParser;[Lcom/fasterxml/jackson/databind/type/TypeModifier;Ljava/lang/ClassLoader;)V#classLoader#0#3').
name_ref(p_class_loader_350, param, 'classLoader', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.withClassLoader(Ljava/lang/ClassLoader;)Lcom/fasterxml/jackson/databind/type/TypeFactory;#classLoader#0#0').
name_ref(p_class_name_353, param, 'className', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.findClass(Ljava/lang/String;)Ljava/lang/Class<*>;|Ljava/lang/ClassNotFoundException;#className#0#0').
name_ref(p_class_name_360, param, 'className', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._findPrimitive(Ljava/lang/String;)Ljava/lang/Class<*>;#className#0#0').
name_ref(p_class_name_534, param, 'className', 'Lcom/fasterxml/jackson/databind/type/TypeParser;.findClass(Ljava/lang/String;Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;)Ljava/lang/Class<*>;#className#0#0').
name_ref(p_class_name_579, param, 'className', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.findClass(Ljava/lang/String;)Ljava/lang/Class<*>;|Ljava/lang/ClassNotFoundException;#className#0#0').
name_ref(p_class_or_instance_578, param, 'classOrInstance', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.getClassDescription(Ljava/lang/Object;)Ljava/lang/String;#classOrInstance#0#0').
name_ref(p_cls_181, param, 'cls', 'Lcom/fasterxml/jackson/databind/type/SimpleType;.(Ljava/lang/Class<*>;)V#cls#0#0').
name_ref(p_cls_182, param, 'cls', 'Lcom/fasterxml/jackson/databind/type/SimpleType;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)V#cls#0#0').
name_ref(p_cls_187, param, 'cls', 'Lcom/fasterxml/jackson/databind/type/SimpleType;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V#cls#0#0').
name_ref(p_cls_194, param, 'cls', 'Lcom/fasterxml/jackson/databind/type/SimpleType;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;ILjava/lang/Object;Ljava/lang/Object;Z)V#cls#0#0').
name_ref(p_cls_203, param, 'cls', 'Lcom/fasterxml/jackson/databind/type/SimpleType;.construct(Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/type/SimpleType;#cls#0#0').
name_ref(p_cls_253, param, 'cls', 'Lcom/fasterxml/jackson/databind/type/TypeBase;._classSignature(Ljava/lang/Class<*>;Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;#cls#0#0').
name_ref(p_cls_256, param, 'cls', 'Lcom/fasterxml/jackson/databind/type/TypeBase;._bogusSuperClass(Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/JavaType;#cls#0#0').
name_ref(p_cls_39, param, 'cls', 'Lcom/fasterxml/jackson/databind/type/ClassStack;.child(Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/type/ClassStack;#cls#0#0').
name_ref(p_cls_421, param, 'cls', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.uncheckedSimpleType(Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/JavaType;#cls#0#0').
name_ref(p_cls_43, param, 'cls', 'Lcom/fasterxml/jackson/databind/type/ClassStack;.find(Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/type/ClassStack;#cls#0#0').
name_ref(p_cls_551, param, 'cls', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.findRawSuperTypes(Ljava/lang/Class<*>;Ljava/lang/Class<*>;Z)Ljava/util/List<Ljava/lang/Class<*>;>;#cls#0#0').
name_ref(p_cls_554, param, 'cls', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.findSuperClasses(Ljava/lang/Class<*>;Ljava/lang/Class<*>;Z)Ljava/util/List<Ljava/lang/Class<*>;>;#cls#0#0').
name_ref(p_cls_557, param, 'cls', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.findSuperTypes(Ljava/lang/Class<*>;Ljava/lang/Class<*>;)Ljava/util/List<Ljava/lang/Class<*>;>;#cls#0#0').
name_ref(p_cls_559, param, 'cls', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.findSuperTypes(Ljava/lang/Class<*>;Ljava/lang/Class<*>;Ljava/util/List<Ljava/lang/Class<*>;>;)Ljava/util/List<Ljava/lang/Class<*>;>;#cls#0#0').
name_ref(p_cls_566, param, 'cls', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;._addRawSuperTypes(Ljava/lang/Class<*>;Ljava/lang/Class<*>;Ljava/util/Collection<Ljava/lang/Class<*>;>;Z)V#cls#0#0').
name_ref(p_cls_595, param, 'cls', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.createInstance<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Z)TT;|Ljava/lang/IllegalArgumentException;#cls#0#0').
name_ref(p_cls_597, param, 'cls', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.findConstructor<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Z)Ljava/lang/reflect/Constructor<TT;>;|Ljava/lang/IllegalArgumentException;#cls#0#0').
name_ref(p_cls_599, param, 'cls', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.defaultValue(Ljava/lang/Class<*>;)Ljava/lang/Object;#cls#0#0').
name_ref(p_cls_608, param, 'cls', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.findEnumType(Ljava/lang/Class<*>;)Ljava/lang/Class<+Ljava/lang/Enum<*>;>;#cls#0#0').
name_ref(p_cls_613, param, 'cls', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.isBogusClass(Ljava/lang/Class<*>;)Z#cls#0#0').
name_ref(p_cls_614, param, 'cls', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.isNonStaticInnerClass(Ljava/lang/Class<*>;)Z#cls#0#0').
name_ref(p_cls_615, param, 'cls', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.isObjectOrPrimitive(Ljava/lang/Class<*>;)Z#cls#0#0').
name_ref(p_cls_616, param, 'cls', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.getPackageName(Ljava/lang/Class<*>;)Ljava/lang/String;#cls#0#0').
name_ref(p_cls_617, param, 'cls', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.hasEnclosingMethod(Ljava/lang/Class<*>;)Z#cls#0#0').
name_ref(p_cls_618, param, 'cls', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.getDeclaredFields(Ljava/lang/Class<*>;)[Ljava/lang/reflect/Field;#cls#0#0').
name_ref(p_cls_619, param, 'cls', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.getDeclaredMethods(Ljava/lang/Class<*>;)[Ljava/lang/reflect/Method;#cls#0#0').
name_ref(p_cls_620, param, 'cls', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.findClassAnnotations(Ljava/lang/Class<*>;)[Ljava/lang/annotation/Annotation;#cls#0#0').
name_ref(p_cls_621, param, 'cls', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.getConstructors(Ljava/lang/Class<*>;)[Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;#cls#0#0').
name_ref(p_cls_622, param, 'cls', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.getDeclaringClass(Ljava/lang/Class<*>;)Ljava/lang/Class<*>;#cls#0#0').
name_ref(p_cls_623, param, 'cls', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.getGenericSuperclass(Ljava/lang/Class<*>;)Ljava/lang/reflect/Type;#cls#0#0').
name_ref(p_cls_624, param, 'cls', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.getGenericInterfaces(Ljava/lang/Class<*>;)[Ljava/lang/reflect/Type;#cls#0#0').
name_ref(p_cls_625, param, 'cls', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.getEnclosingClass(Ljava/lang/Class<*>;)Ljava/lang/Class<*>;#cls#0#0').
name_ref(p_cls_626, param, 'cls', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;._interfaces(Ljava/lang/Class<*>;)[Ljava/lang/Class<*>;#cls#0#0').
name_ref(p_clz_24, param, 'clz', 'Lcom/fasterxml/jackson/databind/JavaType;.hasRawClass(Ljava/lang/Class<*>;)Z#clz#0#0').
name_ref(p_clz_25, param, 'clz', 'Lcom/fasterxml/jackson/databind/JavaType;.isTypeOrSubTypeOf(Ljava/lang/Class<*>;)Z#clz#0#0').
name_ref(p_clz_375, param, 'clz', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.findTypeParameters(Ljava/lang/Class<*>;Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;)[Lcom/fasterxml/jackson/databind/JavaType;#clz#0#0').
name_ref(p_clz_378, param, 'clz', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.findTypeParameters(Ljava/lang/Class<*>;Ljava/lang/Class<*>;)[Lcom/fasterxml/jackson/databind/JavaType;#clz#0#0').
name_ref(p_clz_461, param, 'clz', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._findWellKnownSimple(Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/JavaType;#clz#0#0').
name_ref(p_coll_t_45, param, 'collT', 'Lcom/fasterxml/jackson/databind/type/CollectionLikeType;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V#collT#0#0').
name_ref(p_coll_t_81, param, 'collT', 'Lcom/fasterxml/jackson/databind/type/CollectionType;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V#collT#0#0').
name_ref(p_collection_class_392, param, 'collectionClass', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructCollectionType(Ljava/lang/Class<+Ljava/util/Collection;>;Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/type/CollectionType;#collectionClass#0#0').
name_ref(p_collection_class_394, param, 'collectionClass', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructCollectionType(Ljava/lang/Class<+Ljava/util/Collection;>;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionType;#collectionClass#0#0').
name_ref(p_collection_class_396, param, 'collectionClass', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructCollectionLikeType(Ljava/lang/Class<*>;Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/type/CollectionLikeType;#collectionClass#0#0').
name_ref(p_collection_class_398, param, 'collectionClass', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructCollectionLikeType(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionLikeType;#collectionClass#0#0').
name_ref(p_collection_class_432, param, 'collectionClass', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructRawCollectionType(Ljava/lang/Class<+Ljava/util/Collection;>;)Lcom/fasterxml/jackson/databind/type/CollectionType;#collectionClass#0#0').
name_ref(p_collection_class_433, param, 'collectionClass', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructRawCollectionLikeType(Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/type/CollectionLikeType;#collectionClass#0#0').
name_ref(p_content_type_130, param, 'contentType', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;.withContentType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#contentType#0#0').
name_ref(p_content_type_17, param, 'contentType', 'Lcom/fasterxml/jackson/databind/JavaType;.withContentType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#contentType#0#0').
name_ref(p_content_type_173, param, 'contentType', 'Lcom/fasterxml/jackson/databind/type/MapType;.withContentType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#contentType#0#0').
name_ref(p_content_type_205, param, 'contentType', 'Lcom/fasterxml/jackson/databind/type/SimpleType;.withContentType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#contentType#0#0').
name_ref(p_content_type_66, param, 'contentType', 'Lcom/fasterxml/jackson/databind/type/CollectionLikeType;.withContentType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#contentType#0#0').
name_ref(p_content_type_99, param, 'contentType', 'Lcom/fasterxml/jackson/databind/type/CollectionType;.withContentType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#contentType#0#0').
name_ref(p_context_462, param, 'context', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._fromAny(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;#context#0#0').
name_ref(p_context_466, param, 'context', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._fromClass(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;#context#0#0').
name_ref(p_context_474, param, 'context', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._resolveSuperClass(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;#context#0#0').
name_ref(p_context_478, param, 'context', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._resolveSuperInterfaces(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;)[Lcom/fasterxml/jackson/databind/JavaType;#context#0#0').
name_ref(p_context_486, param, 'context', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._fromWellKnownClass(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#context#0#0').
name_ref(p_context_491, param, 'context', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._fromWellKnownInterface(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#context#0#0').
name_ref(p_context_499, param, 'context', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._fromParamType(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/reflect/ParameterizedType;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;#context#0#0').
name_ref(p_context_508, param, 'context', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._fromArrayType(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/reflect/GenericArrayType;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;#context#0#0').
name_ref(p_context_511, param, 'context', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._fromVariable(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/reflect/TypeVariable<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;#context#0#0').
name_ref(p_context_517, param, 'context', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._fromWildcard(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/reflect/WildcardType;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;#context#0#0').
name_ref(p_context_class_387, param, 'contextClass', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructType(Ljava/lang/reflect/Type;Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/JavaType;#contextClass#0#1').
name_ref(p_context_type_389, param, 'contextType', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructType(Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#contextType#0#1').
name_ref(p_ctor_634, param, 'ctor', 'Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;.(Ljava/lang/reflect/Constructor<*>;)V#ctor#0#0').
name_ref(p_curr_36, param, 'curr', 'Lcom/fasterxml/jackson/databind/type/ClassStack;.(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class<*>;)V#curr#0#1').
name_ref(p_elem_t_49, param, 'elemT', 'Lcom/fasterxml/jackson/databind/type/CollectionLikeType;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V#elemT#0#4').
name_ref(p_elem_t_55, param, 'elemT', 'Lcom/fasterxml/jackson/databind/type/CollectionLikeType;.(Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/databind/JavaType;)V#elemT#0#1').
name_ref(p_elem_t_60, param, 'elemT', 'Lcom/fasterxml/jackson/databind/type/CollectionLikeType;.construct(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionLikeType;#elemT#0#4').
name_ref(p_elem_t_62, param, 'elemT', 'Lcom/fasterxml/jackson/databind/type/CollectionLikeType;.construct(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionLikeType;#elemT#0#1').
name_ref(p_elem_t_85, param, 'elemT', 'Lcom/fasterxml/jackson/databind/type/CollectionType;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V#elemT#0#4').
name_ref(p_elem_t_90, param, 'elemT', 'Lcom/fasterxml/jackson/databind/type/CollectionType;.(Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/databind/JavaType;)V#elemT#0#1').
name_ref(p_elem_t_95, param, 'elemT', 'Lcom/fasterxml/jackson/databind/type/CollectionType;.construct(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionType;#elemT#0#4').
name_ref(p_elem_t_97, param, 'elemT', 'Lcom/fasterxml/jackson/databind/type/CollectionType;.construct(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionType;#elemT#0#1').
name_ref(p_element_class_393, param, 'elementClass', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructCollectionType(Ljava/lang/Class<+Ljava/util/Collection;>;Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/type/CollectionType;#elementClass#0#1').
name_ref(p_element_class_397, param, 'elementClass', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructCollectionLikeType(Ljava/lang/Class<*>;Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/type/CollectionLikeType;#elementClass#0#1').
name_ref(p_element_type_390, param, 'elementType', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructArrayType(Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/type/ArrayType;#elementType#0#0').
name_ref(p_element_type_391, param, 'elementType', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructArrayType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/ArrayType;#elementType#0#0').
name_ref(p_element_type_395, param, 'elementType', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructCollectionType(Ljava/lang/Class<+Ljava/util/Collection;>;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionType;#elementType#0#1').
name_ref(p_element_type_399, param, 'elementType', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructCollectionLikeType(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionLikeType;#elementType#0#1').
name_ref(p_element_type_64, param, 'elementType', 'Lcom/fasterxml/jackson/databind/type/CollectionLikeType;.upgradeFrom(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionLikeType;#elementType#0#1').
name_ref(p_en_607, param, 'en', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.findEnumType(Ljava/lang/Enum<*>;)Ljava/lang/Class<+Ljava/lang/Enum<*>;>;#en#0#0').
name_ref(p_end_before_549, param, 'endBefore', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.findSuperTypes(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class<*>;Z)Ljava/util/List<Lcom/fasterxml/jackson/databind/JavaType;>;#endBefore#0#1').
name_ref(p_end_before_552, param, 'endBefore', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.findRawSuperTypes(Ljava/lang/Class<*>;Ljava/lang/Class<*>;Z)Ljava/util/List<Ljava/lang/Class<*>;>;#endBefore#0#1').
name_ref(p_end_before_555, param, 'endBefore', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.findSuperClasses(Ljava/lang/Class<*>;Ljava/lang/Class<*>;Z)Ljava/util/List<Ljava/lang/Class<*>;>;#endBefore#0#1').
name_ref(p_end_before_558, param, 'endBefore', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.findSuperTypes(Ljava/lang/Class<*>;Ljava/lang/Class<*>;)Ljava/util/List<Ljava/lang/Class<*>;>;#endBefore#0#1').
name_ref(p_end_before_560, param, 'endBefore', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.findSuperTypes(Ljava/lang/Class<*>;Ljava/lang/Class<*>;Ljava/util/List<Ljava/lang/Class<*>;>;)Ljava/util/List<Ljava/lang/Class<*>;>;#endBefore#0#1').
name_ref(p_end_before_563, param, 'endBefore', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;._addSuperTypes(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class<*>;Ljava/util/Collection<Lcom/fasterxml/jackson/databind/JavaType;>;Z)V#endBefore#0#1').
name_ref(p_end_before_567, param, 'endBefore', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;._addRawSuperTypes(Ljava/lang/Class<*>;Ljava/lang/Class<*>;Ljava/util/Collection<Ljava/lang/Class<*>;>;Z)V#endBefore#0#1').
name_ref(p_enum_class_609, param, 'enumClass', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.findFirstAnnotatedEnumValue<T::Ljava/lang/annotation/Annotation;>(Ljava/lang/Class<Ljava/lang/Enum<*>;>;Ljava/lang/Class<TT;>;)Ljava/lang/Enum<*>;#enumClass#0#0').
name_ref(p_erased_target_29, param, 'erasedTarget', 'Lcom/fasterxml/jackson/databind/JavaType;.findSuperType(Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/JavaType;#erasedTarget#0#0').
name_ref(p_erased_type_270, param, 'erasedType', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;.create(Ljava/lang/Class<*>;Ljava/util/List<Lcom/fasterxml/jackson/databind/JavaType;>;)Lcom/fasterxml/jackson/databind/type/TypeBindings;#erasedType#0#0').
name_ref(p_erased_type_273, param, 'erasedType', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;.create(Ljava/lang/Class<*>;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/TypeBindings;#erasedType#0#0').
name_ref(p_erased_type_275, param, 'erasedType', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;.create(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/TypeBindings;#erasedType#0#0').
name_ref(p_erased_type_279, param, 'erasedType', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;.create(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/TypeBindings;#erasedType#0#0').
name_ref(p_erased_type_284, param, 'erasedType', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;.createIfNeeded(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/TypeBindings;#erasedType#0#0').
name_ref(p_erased_type_286, param, 'erasedType', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;.createIfNeeded(Ljava/lang/Class<*>;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/TypeBindings;#erasedType#0#0').
name_ref(p_erased_type_308, param, 'erasedType', 'Lcom/fasterxml/jackson/databind/type/TypeBindings$TypeParamStash;.paramsFor1(Ljava/lang/Class<*>;)[Ljava/lang/reflect/TypeVariable<*>;#erasedType#0#0').
name_ref(p_erased_type_309, param, 'erasedType', 'Lcom/fasterxml/jackson/databind/type/TypeBindings$TypeParamStash;.paramsFor2(Ljava/lang/Class<*>;)[Ljava/lang/reflect/TypeVariable<*>;#erasedType#0#0').
name_ref(p_exp_368, param, 'exp', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._verifyAndResolvePlaceholders(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Z#exp#0#0').
name_ref(p_exp_type_247, param, 'expType', 'Lcom/fasterxml/jackson/databind/type/TypeBase;.findTypeParameters(Ljava/lang/Class<*>;)[Lcom/fasterxml/jackson/databind/JavaType;#expType#0#0').
name_ref(p_exp_type_30, param, 'expType', 'Lcom/fasterxml/jackson/databind/JavaType;.findTypeParameters(Ljava/lang/Class<*>;)[Lcom/fasterxml/jackson/databind/JavaType;#expType#0#0').
name_ref(p_exp_type_374, param, 'expType', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.findTypeParameters(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class<*>;)[Lcom/fasterxml/jackson/databind/JavaType;#expType#0#1').
name_ref(p_exp_type_376, param, 'expType', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.findTypeParameters(Ljava/lang/Class<*>;Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;)[Lcom/fasterxml/jackson/databind/JavaType;#expType#0#1').
name_ref(p_exp_type_379, param, 'expType', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.findTypeParameters(Ljava/lang/Class<*>;Ljava/lang/Class<*>;)[Lcom/fasterxml/jackson/databind/JavaType;#expType#0#1').
name_ref(p_expected_name_632, param, 'expectedName', 'Lcom/fasterxml/jackson/databind/util/ClassUtil$EnumTypeLocator;.locateField(Ljava/lang/Class<*>;Ljava/lang/String;Ljava/lang/Class<*>;)Ljava/lang/reflect/Field;#expectedName#0#1').
name_ref(p_extra_hash_198, param, 'extraHash', 'Lcom/fasterxml/jackson/databind/type/SimpleType;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;ILjava/lang/Object;Ljava/lang/Object;Z)V#extraHash#0#4').
name_ref(p_f_520, param, 'f', 'Lcom/fasterxml/jackson/databind/type/TypeParser;.(Lcom/fasterxml/jackson/databind/type/TypeFactory;)V#f#0#0').
name_ref(p_f_522, param, 'f', 'Lcom/fasterxml/jackson/databind/type/TypeParser;.withFactory(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/type/TypeParser;#f#0#0').
name_ref(p_fail_591, param, 'fail', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.closeOnFailAndThrowAsIAE(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Exception;)V|Ljava/io/IOException;#fail#0#1').
name_ref(p_fail_594, param, 'fail', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.closeOnFailAndThrowAsIAE(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/io/Closeable;Ljava/lang/Exception;)V|Ljava/io/IOException;#fail#0#2').
name_ref(p_field_630, param, 'field', 'Lcom/fasterxml/jackson/databind/util/ClassUtil$EnumTypeLocator;.get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;#field#0#1').
name_ref(p_force_604, param, 'force', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.checkAndFixAccess(Ljava/lang/reflect/Member;Z)V#force#0#1').
name_ref(p_from_class_631, param, 'fromClass', 'Lcom/fasterxml/jackson/databind/util/ClassUtil$EnumTypeLocator;.locateField(Ljava/lang/Class<*>;Ljava/lang/String;Ljava/lang/Class<*>;)Ljava/lang/reflect/Field;#fromClass#0#0').
name_ref(p_g_590, param, 'g', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.closeOnFailAndThrowAsIAE(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Exception;)V|Ljava/io/IOException;#g#0#0').
name_ref(p_g_592, param, 'g', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.closeOnFailAndThrowAsIAE(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/io/Closeable;Ljava/lang/Exception;)V|Ljava/io/IOException;#g#0#0').
name_ref(p_gen_248, param, 'gen', 'Lcom/fasterxml/jackson/databind/type/TypeBase;.serializeWithType(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V|Ljava/io/IOException;|Lcom/fasterxml/jackson/core/JsonProcessingException;#gen#0#0').
name_ref(p_gen_251, param, 'gen', 'Lcom/fasterxml/jackson/databind/type/TypeBase;.serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V|Ljava/io/IOException;|Lcom/fasterxml/jackson/core/JsonProcessingException;#gen#0#0').
name_ref(p_h_100, param, 'h', 'Lcom/fasterxml/jackson/databind/type/CollectionType;.withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/CollectionType;#h#0#0').
name_ref(p_h_101, param, 'h', 'Lcom/fasterxml/jackson/databind/type/CollectionType;.withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/CollectionType;#h#0#0').
name_ref(p_h_102, param, 'h', 'Lcom/fasterxml/jackson/databind/type/CollectionType;.withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/CollectionType;#h#0#0').
name_ref(p_h_103, param, 'h', 'Lcom/fasterxml/jackson/databind/type/CollectionType;.withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/CollectionType;#h#0#0').
name_ref(p_h_12, param, 'h', 'Lcom/fasterxml/jackson/databind/JavaType;.withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;#h#0#0').
name_ref(p_h_13, param, 'h', 'Lcom/fasterxml/jackson/databind/JavaType;.withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;#h#0#0').
name_ref(p_h_131, param, 'h', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;.withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapLikeType;#h#0#0').
name_ref(p_h_132, param, 'h', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;.withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapLikeType;#h#0#0').
name_ref(p_h_133, param, 'h', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;.withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapLikeType;#h#0#0').
name_ref(p_h_134, param, 'h', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;.withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapLikeType;#h#0#0').
name_ref(p_h_14, param, 'h', 'Lcom/fasterxml/jackson/databind/JavaType;.withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;#h#0#0').
name_ref(p_h_143, param, 'h', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;.withKeyTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapLikeType;#h#0#0').
name_ref(p_h_144, param, 'h', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;.withKeyValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapLikeType;#h#0#0').
name_ref(p_h_15, param, 'h', 'Lcom/fasterxml/jackson/databind/JavaType;.withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;#h#0#0').
name_ref(p_h_169, param, 'h', 'Lcom/fasterxml/jackson/databind/type/MapType;.withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapType;#h#0#0').
name_ref(p_h_170, param, 'h', 'Lcom/fasterxml/jackson/databind/type/MapType;.withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapType;#h#0#0').
name_ref(p_h_171, param, 'h', 'Lcom/fasterxml/jackson/databind/type/MapType;.withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapType;#h#0#0').
name_ref(p_h_172, param, 'h', 'Lcom/fasterxml/jackson/databind/type/MapType;.withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapType;#h#0#0').
name_ref(p_h_179, param, 'h', 'Lcom/fasterxml/jackson/databind/type/MapType;.withKeyTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapType;#h#0#0').
name_ref(p_h_180, param, 'h', 'Lcom/fasterxml/jackson/databind/type/MapType;.withKeyValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapType;#h#0#0').
name_ref(p_h_206, param, 'h', 'Lcom/fasterxml/jackson/databind/type/SimpleType;.withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/SimpleType;#h#0#0').
name_ref(p_h_207, param, 'h', 'Lcom/fasterxml/jackson/databind/type/SimpleType;.withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;#h#0#0').
name_ref(p_h_208, param, 'h', 'Lcom/fasterxml/jackson/databind/type/SimpleType;.withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/SimpleType;#h#0#0').
name_ref(p_h_209, param, 'h', 'Lcom/fasterxml/jackson/databind/type/SimpleType;.withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/SimpleType;#h#0#0').
name_ref(p_h_67, param, 'h', 'Lcom/fasterxml/jackson/databind/type/CollectionLikeType;.withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/CollectionLikeType;#h#0#0').
name_ref(p_h_68, param, 'h', 'Lcom/fasterxml/jackson/databind/type/CollectionLikeType;.withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/CollectionLikeType;#h#0#0').
name_ref(p_h_69, param, 'h', 'Lcom/fasterxml/jackson/databind/type/CollectionLikeType;.withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/CollectionLikeType;#h#0#0').
name_ref(p_h_70, param, 'h', 'Lcom/fasterxml/jackson/databind/type/CollectionLikeType;.withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/CollectionLikeType;#h#0#0').
name_ref(p_hash_233, param, 'hash', 'Lcom/fasterxml/jackson/databind/type/TypeBase;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;ILjava/lang/Object;Ljava/lang/Object;Z)V#hash#0#4').
name_ref(p_hash_312, param, 'hash', 'Lcom/fasterxml/jackson/databind/type/TypeBindings$AsKey;.(Ljava/lang/Class<*>;[Lcom/fasterxml/jackson/databind/JavaType;I)V#hash#0#2').
name_ref(p_impl_611, param, 'impl', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.isJacksonStdImpl(Ljava/lang/Object;)Z#impl#0#0').
name_ref(p_impl_class_612, param, 'implClass', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.isJacksonStdImpl(Ljava/lang/Class<*>;)Z#implClass#0#0').
name_ref(p_in_644, param, 'in', 'Lcom/fasterxml/jackson/databind/util/LRUMap;.readObject(Ljava/io/ObjectInputStream;)V|Ljava/io/IOException;#in#0#0').
name_ref(p_index_244, param, 'index', 'Lcom/fasterxml/jackson/databind/type/TypeBase;.containedType(I)Lcom/fasterxml/jackson/databind/JavaType;#index#0#0').
name_ref(p_index_245, param, 'index', 'Lcom/fasterxml/jackson/databind/type/TypeBase;.containedTypeName(I)Ljava/lang/String;#index#0#0').
name_ref(p_index_26, param, 'index', 'Lcom/fasterxml/jackson/databind/JavaType;.containedType(I)Lcom/fasterxml/jackson/databind/JavaType;#index#0#0').
name_ref(p_index_27, param, 'index', 'Lcom/fasterxml/jackson/databind/JavaType;.containedTypeName(I)Ljava/lang/String;#index#0#0').
name_ref(p_index_28, param, 'index', 'Lcom/fasterxml/jackson/databind/JavaType;.containedTypeOrUnknown(I)Lcom/fasterxml/jackson/databind/JavaType;#index#0#0').
name_ref(p_index_295, param, 'index', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;.getBoundName(I)Ljava/lang/String;#index#0#0').
name_ref(p_index_296, param, 'index', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;.getBoundType(I)Lcom/fasterxml/jackson/databind/JavaType;#index#0#0').
name_ref(p_initial_entries_635, param, 'initialEntries', 'Lcom/fasterxml/jackson/databind/util/LRUMap;.(II)V#initialEntries#0#0').
name_ref(p_initialize_357, param, 'initialize', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.classForName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class<*>;|Ljava/lang/ClassNotFoundException;#initialize#0#1').
name_ref(p_key_639, param, 'key', 'Lcom/fasterxml/jackson/databind/util/LRUMap;.put(TK;TV;)TV;#key#0#0').
name_ref(p_key_641, param, 'key', 'Lcom/fasterxml/jackson/databind/util/LRUMap;.putIfAbsent(TK;TV;)TV;#key#0#0').
name_ref(p_key_643, param, 'key', 'Lcom/fasterxml/jackson/databind/util/LRUMap;.get(Ljava/lang/Object;)TV;#key#0#0').
name_ref(p_key_class_401, param, 'keyClass', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructMapType(Ljava/lang/Class<+Ljava/util/Map;>;Ljava/lang/Class<*>;Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/type/MapType;#keyClass#0#1').
name_ref(p_key_class_409, param, 'keyClass', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructMapLikeType(Ljava/lang/Class<*>;Ljava/lang/Class<*>;Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/type/MapLikeType;#keyClass#0#1').
name_ref(p_key_t_112, param, 'keyT', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V#keyT#0#4').
name_ref(p_key_t_120, param, 'keyT', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;.(Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)V#keyT#0#1').
name_ref(p_key_t_123, param, 'keyT', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;.upgradeFrom(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapLikeType;#keyT#0#1').
name_ref(p_key_t_126, param, 'keyT', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;.construct(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapLikeType;#keyT#0#1').
name_ref(p_key_t_151, param, 'keyT', 'Lcom/fasterxml/jackson/databind/type/MapType;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V#keyT#0#4').
name_ref(p_key_t_157, param, 'keyT', 'Lcom/fasterxml/jackson/databind/type/MapType;.(Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)V#keyT#0#1').
name_ref(p_key_t_163, param, 'keyT', 'Lcom/fasterxml/jackson/databind/type/MapType;.construct(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapType;#keyT#0#4').
name_ref(p_key_t_166, param, 'keyT', 'Lcom/fasterxml/jackson/databind/type/MapType;.construct(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapType;#keyT#0#1').
name_ref(p_key_type_129, param, 'keyType', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;.withKeyType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapLikeType;#keyType#0#0').
name_ref(p_key_type_174, param, 'keyType', 'Lcom/fasterxml/jackson/databind/type/MapType;.withKeyType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapType;#keyType#0#0').
name_ref(p_key_type_406, param, 'keyType', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructMapType(Ljava/lang/Class<+Ljava/util/Map;>;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapType;#keyType#0#1').
name_ref(p_key_type_412, param, 'keyType', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructMapLikeType(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapLikeType;#keyType#0#1').
name_ref(p_loader_358, param, 'loader', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.classForName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class<*>;|Ljava/lang/ClassNotFoundException;#loader#0#2').
name_ref(p_m_580, param, 'm', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.hasGetterSignature(Ljava/lang/reflect/Method;)Z#m#0#0').
name_ref(p_m_606, param, 'm', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.findEnumType(Ljava/util/EnumMap<**>;)Ljava/lang/Class<+Ljava/lang/Enum<*>;>;#m#0#0').
name_ref(p_map_class_400, param, 'mapClass', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructMapType(Ljava/lang/Class<+Ljava/util/Map;>;Ljava/lang/Class<*>;Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/type/MapType;#mapClass#0#0').
name_ref(p_map_class_405, param, 'mapClass', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructMapType(Ljava/lang/Class<+Ljava/util/Map;>;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapType;#mapClass#0#0').
name_ref(p_map_class_408, param, 'mapClass', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructMapLikeType(Ljava/lang/Class<*>;Ljava/lang/Class<*>;Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/type/MapLikeType;#mapClass#0#0').
name_ref(p_map_class_411, param, 'mapClass', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructMapLikeType(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapLikeType;#mapClass#0#0').
name_ref(p_map_class_434, param, 'mapClass', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructRawMapType(Ljava/lang/Class<+Ljava/util/Map;>;)Lcom/fasterxml/jackson/databind/type/MapType;#mapClass#0#0').
name_ref(p_map_class_435, param, 'mapClass', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructRawMapLikeType(Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/type/MapLikeType;#mapClass#0#0').
name_ref(p_map_type_108, param, 'mapType', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V#mapType#0#0').
name_ref(p_map_type_147, param, 'mapType', 'Lcom/fasterxml/jackson/databind/type/MapType;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V#mapType#0#0').
name_ref(p_max_entries_636, param, 'maxEntries', 'Lcom/fasterxml/jackson/databind/util/LRUMap;.(II)V#maxEntries#0#1').
name_ref(p_member_576, param, 'member', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.isConcrete(Ljava/lang/reflect/Member;)Z#member#0#0').
name_ref(p_member_602, param, 'member', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.checkAndFixAccess(Ljava/lang/reflect/Member;)V#member#0#0').
name_ref(p_member_603, param, 'member', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.checkAndFixAccess(Ljava/lang/reflect/Member;Z)V#member#0#0').
name_ref(p_mod_349, param, 'mod', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.withModifier(Lcom/fasterxml/jackson/databind/type/TypeModifier;)Lcom/fasterxml/jackson/databind/type/TypeFactory;#mod#0#0').
name_ref(p_mods_347, param, 'mods', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.(Lcom/fasterxml/jackson/databind/util/LRUMap<Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;>;Lcom/fasterxml/jackson/databind/type/TypeParser;[Lcom/fasterxml/jackson/databind/type/TypeModifier;Ljava/lang/ClassLoader;)V#mods#0#2').
name_ref(p_msg_537, param, 'msg', 'Lcom/fasterxml/jackson/databind/type/TypeParser;._problem(Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;#msg#0#1').
name_ref(p_msg_586, param, 'msg', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.throwAsIAE(Ljava/lang/Throwable;Ljava/lang/String;)V#msg#0#1').
name_ref(p_msg_589, param, 'msg', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.unwrapAndThrowAsIAE(Ljava/lang/Throwable;Ljava/lang/String;)V#msg#0#1').
name_ref(p_name_288, param, 'name', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;.withUnboundVariable(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/type/TypeBindings;#name#0#0').
name_ref(p_name_291, param, 'name', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;.findBoundType(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;#name#0#0').
name_ref(p_name_297, param, 'name', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;.hasUnbound(Ljava/lang/String;)Z#name#0#0').
name_ref(p_name_356, param, 'name', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.classForName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class<*>;|Ljava/lang/ClassNotFoundException;#name#0#0').
name_ref(p_name_359, param, 'name', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.classForName(Ljava/lang/String;)Ljava/lang/Class<*>;|Ljava/lang/ClassNotFoundException;#name#0#0').
name_ref(p_names_260, param, 'names', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;.([Ljava/lang/String;[Lcom/fasterxml/jackson/databind/JavaType;[Ljava/lang/String;)V#names#0#0').
name_ref(p_o_145, param, 'o', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;.equals(Ljava/lang/Object;)Z#o#0#0').
name_ref(p_o_221, param, 'o', 'Lcom/fasterxml/jackson/databind/type/SimpleType;.equals(Ljava/lang/Object;)Z#o#0#0').
name_ref(p_o_299, param, 'o', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;.equals(Ljava/lang/Object;)Z#o#0#0').
name_ref(p_o_316, param, 'o', 'Lcom/fasterxml/jackson/databind/type/TypeBindings$AsKey;.equals(Ljava/lang/Object;)Z#o#0#0').
name_ref(p_o_33, param, 'o', 'Lcom/fasterxml/jackson/databind/JavaType;.equals(Ljava/lang/Object;)Z#o#0#0').
name_ref(p_o_79, param, 'o', 'Lcom/fasterxml/jackson/databind/type/CollectionLikeType;.equals(Ljava/lang/Object;)Z#o#0#0').
name_ref(p_out_645, param, 'out', 'Lcom/fasterxml/jackson/databind/util/LRUMap;.writeObject(Ljava/io/ObjectOutputStream;)V|Ljava/io/IOException;#out#0#0').
name_ref(p_p_346, param, 'p', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.(Lcom/fasterxml/jackson/databind/util/LRUMap<Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;>;Lcom/fasterxml/jackson/databind/type/TypeParser;[Lcom/fasterxml/jackson/databind/type/TypeModifier;Ljava/lang/ClassLoader;)V#p#0#1').
name_ref(p_parameter_classes_423, param, 'parameterClasses', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructParametricType(Ljava/lang/Class<*>;[Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/JavaType;#parameterClasses#0#1').
name_ref(p_parameter_classes_431, param, 'parameterClasses', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructParametrizedType(Ljava/lang/Class<*>;Ljava/lang/Class<*>;[Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/JavaType;#parameterClasses#0#2').
name_ref(p_parameter_target_417, param, 'parameterTarget', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructSimpleType(Ljava/lang/Class<*>;Ljava/lang/Class<*>;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#parameterTarget#0#1').
name_ref(p_parameter_types_415, param, 'parameterTypes', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructSimpleType(Ljava/lang/Class<*>;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#parameterTypes#0#1').
name_ref(p_parameter_types_418, param, 'parameterTypes', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructSimpleType(Ljava/lang/Class<*>;Ljava/lang/Class<*>;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#parameterTypes#0#2').
name_ref(p_parameter_types_425, param, 'parameterTypes', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructParametricType(Ljava/lang/Class<*>;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#parameterTypes#0#1').
name_ref(p_parameter_types_428, param, 'parameterTypes', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructParametrizedType(Ljava/lang/Class<*>;Ljava/lang/Class<*>;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#parameterTypes#0#2').
name_ref(p_parameters_for_427, param, 'parametersFor', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructParametrizedType(Ljava/lang/Class<*>;Ljava/lang/Class<*>;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#parametersFor#0#1').
name_ref(p_parameters_for_430, param, 'parametersFor', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructParametrizedType(Ljava/lang/Class<*>;Ljava/lang/Class<*>;[Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/JavaType;#parametersFor#0#1').
name_ref(p_parametrized_422, param, 'parametrized', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructParametricType(Ljava/lang/Class<*>;[Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/JavaType;#parametrized#0#0').
name_ref(p_parametrized_426, param, 'parametrized', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructParametrizedType(Ljava/lang/Class<*>;Ljava/lang/Class<*>;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#parametrized#0#0').
name_ref(p_parametrized_429, param, 'parametrized', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructParametrizedType(Ljava/lang/Class<*>;Ljava/lang/Class<*>;[Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/JavaType;#parametrized#0#0').
name_ref(p_params_311, param, 'params', 'Lcom/fasterxml/jackson/databind/type/TypeBindings$AsKey;.(Ljava/lang/Class<*>;[Lcom/fasterxml/jackson/databind/JavaType;I)V#params#0#1').
name_ref(p_parent_35, param, 'parent', 'Lcom/fasterxml/jackson/databind/type/ClassStack;.(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class<*>;)V#parent#0#0').
name_ref(p_parent_bindings_476, param, 'parentBindings', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._resolveSuperClass(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;#parentBindings#0#2').
name_ref(p_parent_bindings_480, param, 'parentBindings', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._resolveSuperInterfaces(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;)[Lcom/fasterxml/jackson/databind/JavaType;#parentBindings#0#2').
name_ref(p_parent_bindings_501, param, 'parentBindings', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._fromParamType(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/reflect/ParameterizedType;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;#parentBindings#0#2').
name_ref(p_primitive_type_600, param, 'primitiveType', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.wrapperType(Ljava/lang/Class<*>;)Ljava/lang/Class<*>;#primitiveType#0#0').
name_ref(p_provider_249, param, 'provider', 'Lcom/fasterxml/jackson/databind/type/TypeBase;.serializeWithType(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V|Ljava/io/IOException;|Lcom/fasterxml/jackson/core/JsonProcessingException;#provider#0#1').
name_ref(p_provider_252, param, 'provider', 'Lcom/fasterxml/jackson/databind/type/TypeBase;.serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V|Ljava/io/IOException;|Lcom/fasterxml/jackson/core/JsonProcessingException;#provider#0#1').
name_ref(p_ptype_500, param, 'ptype', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._fromParamType(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/reflect/ParameterizedType;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;#ptype#0#1').
name_ref(p_raw_1, param, 'raw', 'Lcom/fasterxml/jackson/databind/JavaType;.(Ljava/lang/Class<*>;ILjava/lang/Object;Ljava/lang/Object;Z)V#raw#0#0').
name_ref(p_raw_202, param, 'raw', 'Lcom/fasterxml/jackson/databind/type/SimpleType;.constructUnsafe(Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/type/SimpleType;#raw#0#0').
name_ref(p_raw_229, param, 'raw', 'Lcom/fasterxml/jackson/databind/type/TypeBase;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;ILjava/lang/Object;Ljava/lang/Object;Z)V#raw#0#0').
name_ref(p_raw_310, param, 'raw', 'Lcom/fasterxml/jackson/databind/type/TypeBindings$AsKey;.(Ljava/lang/Class<*>;[Lcom/fasterxml/jackson/databind/JavaType;I)V#raw#0#0').
name_ref(p_raw_453, param, 'raw', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._constructSimple(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#raw#0#0').
name_ref(p_raw_457, param, 'raw', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._newSimpleType(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#raw#0#0').
name_ref(p_raw_base_298, param, 'rawBase', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;.asKey(Ljava/lang/Class<*>;)Ljava/lang/Object;#rawBase#0#0').
name_ref(p_raw_class_436, param, 'rawClass', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._mapType(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#rawClass#0#0').
name_ref(p_raw_class_443, param, 'rawClass', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._collectionType(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#rawClass#0#0').
name_ref(p_raw_class_449, param, 'rawClass', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._referenceType(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#rawClass#0#0').
name_ref(p_raw_target_246, param, 'rawTarget', 'Lcom/fasterxml/jackson/databind/type/TypeBase;.findSuperType(Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/JavaType;#rawTarget#0#0').
name_ref(p_raw_type_104, param, 'rawType', 'Lcom/fasterxml/jackson/databind/type/CollectionType;.refine(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#rawType#0#0').
name_ref(p_raw_type_125, param, 'rawType', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;.construct(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapLikeType;#rawType#0#0').
name_ref(p_raw_type_136, param, 'rawType', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;.refine(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#rawType#0#0').
name_ref(p_raw_type_159, param, 'rawType', 'Lcom/fasterxml/jackson/databind/type/MapType;.construct(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapType;#rawType#0#0').
name_ref(p_raw_type_165, param, 'rawType', 'Lcom/fasterxml/jackson/databind/type/MapType;.construct(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapType;#rawType#0#0').
name_ref(p_raw_type_175, param, 'rawType', 'Lcom/fasterxml/jackson/databind/type/MapType;.refine(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#rawType#0#0').
name_ref(p_raw_type_18, param, 'rawType', 'Lcom/fasterxml/jackson/databind/JavaType;.refine(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#rawType#0#0').
name_ref(p_raw_type_210, param, 'rawType', 'Lcom/fasterxml/jackson/databind/type/SimpleType;.refine(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#rawType#0#0').
name_ref(p_raw_type_414, param, 'rawType', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructSimpleType(Ljava/lang/Class<*>;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#rawType#0#0').
name_ref(p_raw_type_416, param, 'rawType', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructSimpleType(Ljava/lang/Class<*>;Ljava/lang/Class<*>;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#rawType#0#0').
name_ref(p_raw_type_419, param, 'rawType', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructReferenceType(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#rawType#0#0').
name_ref(p_raw_type_424, param, 'rawType', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructParametricType(Ljava/lang/Class<*>;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#rawType#0#0').
name_ref(p_raw_type_467, param, 'rawType', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._fromClass(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;#rawType#0#1').
name_ref(p_raw_type_475, param, 'rawType', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._resolveSuperClass(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;#rawType#0#1').
name_ref(p_raw_type_479, param, 'rawType', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._resolveSuperInterfaces(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;)[Lcom/fasterxml/jackson/databind/JavaType;#rawType#0#1').
name_ref(p_raw_type_487, param, 'rawType', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._fromWellKnownClass(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#rawType#0#1').
name_ref(p_raw_type_492, param, 'rawType', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._fromWellKnownInterface(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#rawType#0#1').
name_ref(p_raw_type_56, param, 'rawType', 'Lcom/fasterxml/jackson/databind/type/CollectionLikeType;.construct(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionLikeType;#rawType#0#0').
name_ref(p_raw_type_61, param, 'rawType', 'Lcom/fasterxml/jackson/databind/type/CollectionLikeType;.construct(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionLikeType;#rawType#0#0').
name_ref(p_raw_type_72, param, 'rawType', 'Lcom/fasterxml/jackson/databind/type/CollectionLikeType;.refine(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#rawType#0#0').
name_ref(p_raw_type_91, param, 'rawType', 'Lcom/fasterxml/jackson/databind/type/CollectionType;.construct(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionType;#rawType#0#0').
name_ref(p_raw_type_96, param, 'rawType', 'Lcom/fasterxml/jackson/databind/type/CollectionType;.construct(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionType;#rawType#0#0').
name_ref(p_ref_40, param, 'ref', 'Lcom/fasterxml/jackson/databind/type/ClassStack;.addSelfReference(Lcom/fasterxml/jackson/databind/type/ResolvedRecursiveType;)V#ref#0#0').
name_ref(p_referred_type_420, param, 'referredType', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructReferenceType(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#referredType#0#1').
name_ref(p_resolved_41, param, 'resolved', 'Lcom/fasterxml/jackson/databind/type/ClassStack;.resolveSelfReferences(Lcom/fasterxml/jackson/databind/JavaType;)V#resolved#0#0').
name_ref(p_result_561, param, 'result', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.findSuperTypes(Ljava/lang/Class<*>;Ljava/lang/Class<*>;Ljava/util/List<Ljava/lang/Class<*>;>;)Ljava/util/List<Ljava/lang/Class<*>;>;#result#0#2').
name_ref(p_result_564, param, 'result', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;._addSuperTypes(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class<*>;Ljava/util/Collection<Lcom/fasterxml/jackson/databind/JavaType;>;Z)V#result#0#2').
name_ref(p_result_568, param, 'result', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;._addRawSuperTypes(Ljava/lang/Class<*>;Ljava/lang/Class<*>;Ljava/util/Collection<Ljava/lang/Class<*>;>;Z)V#result#0#2').
name_ref(p_root_type_34, param, 'rootType', 'Lcom/fasterxml/jackson/databind/type/ClassStack;.(Ljava/lang/Class<*>;)V#rootType#0#0').
name_ref(p_s_605, param, 's', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.findEnumType(Ljava/util/EnumSet<*>;)Ljava/lang/Class<+Ljava/lang/Enum<*>;>;#s#0#0').
name_ref(p_sb_141, param, 'sb', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;.getErasedSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;#sb#0#0').
name_ref(p_sb_142, param, 'sb', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;.getGenericSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;#sb#0#0').
name_ref(p_sb_217, param, 'sb', 'Lcom/fasterxml/jackson/databind/type/SimpleType;.getErasedSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;#sb#0#0').
name_ref(p_sb_218, param, 'sb', 'Lcom/fasterxml/jackson/databind/type/SimpleType;.getGenericSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;#sb#0#0').
name_ref(p_sb_242, param, 'sb', 'Lcom/fasterxml/jackson/databind/type/TypeBase;.getGenericSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;#sb#0#0').
name_ref(p_sb_243, param, 'sb', 'Lcom/fasterxml/jackson/databind/type/TypeBase;.getErasedSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;#sb#0#0').
name_ref(p_sb_254, param, 'sb', 'Lcom/fasterxml/jackson/databind/type/TypeBase;._classSignature(Ljava/lang/Class<*>;Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;#sb#0#1').
name_ref(p_sb_31, param, 'sb', 'Lcom/fasterxml/jackson/databind/JavaType;.getGenericSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;#sb#0#0').
name_ref(p_sb_32, param, 'sb', 'Lcom/fasterxml/jackson/databind/JavaType;.getErasedSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;#sb#0#0').
name_ref(p_sb_76, param, 'sb', 'Lcom/fasterxml/jackson/databind/type/CollectionLikeType;.getErasedSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;#sb#0#0').
name_ref(p_sb_77, param, 'sb', 'Lcom/fasterxml/jackson/databind/type/CollectionLikeType;.getGenericSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;#sb#0#0').
name_ref(p_set_627, param, 'set', 'Lcom/fasterxml/jackson/databind/util/ClassUtil$EnumTypeLocator;.enumTypeFor(Ljava/util/EnumSet<*>;)Ljava/lang/Class<+Ljava/lang/Enum<*>;>;#set#0#0').
name_ref(p_set_628, param, 'set', 'Lcom/fasterxml/jackson/databind/util/ClassUtil$EnumTypeLocator;.enumTypeFor(Ljava/util/EnumMap<**>;)Ljava/lang/Class<+Ljava/lang/Enum<*>;>;#set#0#0').
name_ref(p_source_type_366, param, 'sourceType', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._resolveTypePlaceholders(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/String;|Ljava/lang/IllegalArgumentException;#sourceType#0#0').
name_ref(p_src_135, param, 'src', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;.withHandlersFrom(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#src#0#0').
name_ref(p_src_16, param, 'src', 'Lcom/fasterxml/jackson/databind/JavaType;.withHandlersFrom(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#src#0#0').
name_ref(p_src_71, param, 'src', 'Lcom/fasterxml/jackson/databind/type/CollectionLikeType;.withHandlersFrom(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#src#0#0').
name_ref(p_str_538, param, 'str', 'Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;.(Ljava/lang/String;)V#str#0#0').
name_ref(p_subclass_128, param, 'subclass', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;._narrow(Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/JavaType;#subclass#0#0').
name_ref(p_subclass_168, param, 'subclass', 'Lcom/fasterxml/jackson/databind/type/MapType;._narrow(Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/JavaType;#subclass#0#0').
name_ref(p_subclass_204, param, 'subclass', 'Lcom/fasterxml/jackson/databind/type/SimpleType;._narrow(Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/JavaType;#subclass#0#0').
name_ref(p_subclass_22, param, 'subclass', 'Lcom/fasterxml/jackson/databind/JavaType;.forcedNarrowBy(Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/JavaType;#subclass#0#0').
name_ref(p_subclass_23, param, 'subclass', 'Lcom/fasterxml/jackson/databind/JavaType;._narrow(Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/JavaType;#subclass#0#0').
name_ref(p_subclass_362, param, 'subclass', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/JavaType;#subclass#0#1').
name_ref(p_subclass_365, param, 'subclass', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._bindingsForSubtype(Lcom/fasterxml/jackson/databind/JavaType;ILjava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/type/TypeBindings;#subclass#0#2').
name_ref(p_subclass_65, param, 'subclass', 'Lcom/fasterxml/jackson/databind/type/CollectionLikeType;._narrow(Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/JavaType;#subclass#0#0').
name_ref(p_subclass_98, param, 'subclass', 'Lcom/fasterxml/jackson/databind/type/CollectionType;._narrow(Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/JavaType;#subclass#0#0').
name_ref(p_super_class_106, param, 'superClass', 'Lcom/fasterxml/jackson/databind/type/CollectionType;.refine(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#superClass#0#2').
name_ref(p_super_class_110, param, 'superClass', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V#superClass#0#2').
name_ref(p_super_class_138, param, 'superClass', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;.refine(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#superClass#0#2').
name_ref(p_super_class_149, param, 'superClass', 'Lcom/fasterxml/jackson/databind/type/MapType;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V#superClass#0#2').
name_ref(p_super_class_161, param, 'superClass', 'Lcom/fasterxml/jackson/databind/type/MapType;.construct(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapType;#superClass#0#2').
name_ref(p_super_class_177, param, 'superClass', 'Lcom/fasterxml/jackson/databind/type/MapType;.refine(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#superClass#0#2').
name_ref(p_super_class_184, param, 'superClass', 'Lcom/fasterxml/jackson/databind/type/SimpleType;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)V#superClass#0#2').
name_ref(p_super_class_189, param, 'superClass', 'Lcom/fasterxml/jackson/databind/type/SimpleType;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V#superClass#0#2').
name_ref(p_super_class_196, param, 'superClass', 'Lcom/fasterxml/jackson/databind/type/SimpleType;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;ILjava/lang/Object;Ljava/lang/Object;Z)V#superClass#0#2').
name_ref(p_super_class_20, param, 'superClass', 'Lcom/fasterxml/jackson/databind/JavaType;.refine(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#superClass#0#2').
name_ref(p_super_class_212, param, 'superClass', 'Lcom/fasterxml/jackson/databind/type/SimpleType;.refine(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#superClass#0#2').
name_ref(p_super_class_219, param, 'superClass', 'Lcom/fasterxml/jackson/databind/type/SimpleType;._buildSuperClass(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;#superClass#0#0').
name_ref(p_super_class_231, param, 'superClass', 'Lcom/fasterxml/jackson/databind/type/TypeBase;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;ILjava/lang/Object;Ljava/lang/Object;Z)V#superClass#0#2').
name_ref(p_super_class_371, param, 'superClass', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructGeneralizedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/JavaType;#superClass#0#1').
name_ref(p_super_class_438, param, 'superClass', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._mapType(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#superClass#0#2').
name_ref(p_super_class_445, param, 'superClass', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._collectionType(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#superClass#0#2').
name_ref(p_super_class_451, param, 'superClass', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._referenceType(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#superClass#0#2').
name_ref(p_super_class_455, param, 'superClass', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._constructSimple(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#superClass#0#2').
name_ref(p_super_class_459, param, 'superClass', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._newSimpleType(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#superClass#0#2').
name_ref(p_super_class_47, param, 'superClass', 'Lcom/fasterxml/jackson/databind/type/CollectionLikeType;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V#superClass#0#2').
name_ref(p_super_class_489, param, 'superClass', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._fromWellKnownClass(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#superClass#0#3').
name_ref(p_super_class_494, param, 'superClass', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._fromWellKnownInterface(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#superClass#0#3').
name_ref(p_super_class_58, param, 'superClass', 'Lcom/fasterxml/jackson/databind/type/CollectionLikeType;.construct(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionLikeType;#superClass#0#2').
name_ref(p_super_class_74, param, 'superClass', 'Lcom/fasterxml/jackson/databind/type/CollectionLikeType;.refine(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#superClass#0#2').
name_ref(p_super_class_83, param, 'superClass', 'Lcom/fasterxml/jackson/databind/type/CollectionType;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V#superClass#0#2').
name_ref(p_super_class_93, param, 'superClass', 'Lcom/fasterxml/jackson/databind/type/CollectionType;.construct(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionType;#superClass#0#2').
name_ref(p_super_interfaces_107, param, 'superInterfaces', 'Lcom/fasterxml/jackson/databind/type/CollectionType;.refine(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#superInterfaces#0#3').
name_ref(p_super_interfaces_139, param, 'superInterfaces', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;.refine(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#superInterfaces#0#3').
name_ref(p_super_interfaces_178, param, 'superInterfaces', 'Lcom/fasterxml/jackson/databind/type/MapType;.refine(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#superInterfaces#0#3').
name_ref(p_super_interfaces_21, param, 'superInterfaces', 'Lcom/fasterxml/jackson/databind/JavaType;.refine(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#superInterfaces#0#3').
name_ref(p_super_interfaces_213, param, 'superInterfaces', 'Lcom/fasterxml/jackson/databind/type/SimpleType;.refine(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#superInterfaces#0#3').
name_ref(p_super_interfaces_439, param, 'superInterfaces', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._mapType(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#superInterfaces#0#3').
name_ref(p_super_interfaces_446, param, 'superInterfaces', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._collectionType(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#superInterfaces#0#3').
name_ref(p_super_interfaces_452, param, 'superInterfaces', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._referenceType(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#superInterfaces#0#3').
name_ref(p_super_interfaces_456, param, 'superInterfaces', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._constructSimple(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#superInterfaces#0#3').
name_ref(p_super_interfaces_460, param, 'superInterfaces', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._newSimpleType(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#superInterfaces#0#3').
name_ref(p_super_interfaces_490, param, 'superInterfaces', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._fromWellKnownClass(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#superInterfaces#0#4').
name_ref(p_super_interfaces_495, param, 'superInterfaces', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._fromWellKnownInterface(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#superInterfaces#0#4').
name_ref(p_super_interfaces_75, param, 'superInterfaces', 'Lcom/fasterxml/jackson/databind/type/CollectionLikeType;.refine(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#superInterfaces#0#3').
name_ref(p_super_ints_111, param, 'superInts', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V#superInts#0#3').
name_ref(p_super_ints_150, param, 'superInts', 'Lcom/fasterxml/jackson/databind/type/MapType;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V#superInts#0#3').
name_ref(p_super_ints_162, param, 'superInts', 'Lcom/fasterxml/jackson/databind/type/MapType;.construct(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapType;#superInts#0#3').
name_ref(p_super_ints_185, param, 'superInts', 'Lcom/fasterxml/jackson/databind/type/SimpleType;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)V#superInts#0#3').
name_ref(p_super_ints_190, param, 'superInts', 'Lcom/fasterxml/jackson/databind/type/SimpleType;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V#superInts#0#3').
name_ref(p_super_ints_197, param, 'superInts', 'Lcom/fasterxml/jackson/databind/type/SimpleType;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;ILjava/lang/Object;Ljava/lang/Object;Z)V#superInts#0#3').
name_ref(p_super_ints_232, param, 'superInts', 'Lcom/fasterxml/jackson/databind/type/TypeBase;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;ILjava/lang/Object;Ljava/lang/Object;Z)V#superInts#0#3').
name_ref(p_super_ints_48, param, 'superInts', 'Lcom/fasterxml/jackson/databind/type/CollectionLikeType;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V#superInts#0#3').
name_ref(p_super_ints_59, param, 'superInts', 'Lcom/fasterxml/jackson/databind/type/CollectionLikeType;.construct(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionLikeType;#superInts#0#3').
name_ref(p_super_ints_84, param, 'superInts', 'Lcom/fasterxml/jackson/databind/type/CollectionType;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V#superInts#0#3').
name_ref(p_super_ints_94, param, 'superInts', 'Lcom/fasterxml/jackson/databind/type/CollectionType;.construct(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionType;#superInts#0#3').
name_ref(p_t_352, param, 't', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.rawClass(Ljava/lang/reflect/Type;)Ljava/lang/Class<*>;#t#0#0').
name_ref(p_t_581, param, 't', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;#t#0#0').
name_ref(p_t_582, param, 't', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.throwRootCause(Ljava/lang/Throwable;)V|Ljava/lang/Exception;#t#0#0').
name_ref(p_t_583, param, 't', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.throwRootCauseIfIOE(Ljava/lang/Throwable;)Ljava/lang/Throwable;|Ljava/io/IOException;#t#0#0').
name_ref(p_t_584, param, 't', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.throwAsIAE(Ljava/lang/Throwable;)V#t#0#0').
name_ref(p_t_585, param, 't', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.throwAsIAE(Ljava/lang/Throwable;Ljava/lang/String;)V#t#0#0').
name_ref(p_t_587, param, 't', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.unwrapAndThrowAsIAE(Ljava/lang/Throwable;)V#t#0#0').
name_ref(p_t_588, param, 't', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.unwrapAndThrowAsIAE(Ljava/lang/Throwable;Ljava/lang/String;)V#t#0#0').
name_ref(p_to_close_593, param, 'toClose', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.closeOnFailAndThrowAsIAE(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/io/Closeable;Ljava/lang/Exception;)V|Ljava/io/IOException;#toClose#0#1').
name_ref(p_token_543, param, 'token', 'Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;.pushBack(Ljava/lang/String;)V#token#0#0').
name_ref(p_tokens_526, param, 'tokens', 'Lcom/fasterxml/jackson/databind/type/TypeParser;.parseType(Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;)Lcom/fasterxml/jackson/databind/JavaType;|Ljava/lang/IllegalArgumentException;#tokens#0#0').
name_ref(p_tokens_531, param, 'tokens', 'Lcom/fasterxml/jackson/databind/type/TypeParser;.parseTypes(Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;)Ljava/util/List<Lcom/fasterxml/jackson/databind/JavaType;>;|Ljava/lang/IllegalArgumentException;#tokens#0#0').
name_ref(p_tokens_535, param, 'tokens', 'Lcom/fasterxml/jackson/databind/type/TypeParser;.findClass(Ljava/lang/String;Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;)Ljava/lang/Class<*>;#tokens#0#1').
name_ref(p_tokens_536, param, 'tokens', 'Lcom/fasterxml/jackson/databind/type/TypeParser;._problem(Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;#tokens#0#0').
name_ref(p_trailing_semicolon_255, param, 'trailingSemicolon', 'Lcom/fasterxml/jackson/databind/type/TypeBase;._classSignature(Ljava/lang/Class<*>;Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;#trailingSemicolon#0#2').
name_ref(p_type_1_380, param, 'type1', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.moreSpecificType(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#type1#0#0').
name_ref(p_type_2_381, param, 'type2', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.moreSpecificType(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#type2#0#1').
name_ref(p_type_373, param, 'type', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.findTypeParameters(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class<*>;)[Lcom/fasterxml/jackson/databind/JavaType;#type#0#0').
name_ref(p_type_382, param, 'type', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;#type#0#0').
name_ref(p_type_383, param, 'type', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructType(Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;#type#0#0').
name_ref(p_type_386, param, 'type', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructType(Ljava/lang/reflect/Type;Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/JavaType;#type#0#0').
name_ref(p_type_388, param, 'type', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructType(Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#type#0#0').
name_ref(p_type_463, param, 'type', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._fromAny(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;#type#0#1').
name_ref(p_type_509, param, 'type', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._fromArrayType(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/reflect/GenericArrayType;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;#type#0#1').
name_ref(p_type_518, param, 'type', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._fromWildcard(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/reflect/WildcardType;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;#type#0#1').
name_ref(p_type_548, param, 'type', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.findSuperTypes(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class<*>;Z)Ljava/util/List<Lcom/fasterxml/jackson/databind/JavaType;>;#type#0#0').
name_ref(p_type_562, param, 'type', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;._addSuperTypes(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class<*>;Ljava/util/Collection<Lcom/fasterxml/jackson/databind/JavaType;>;Z)V#type#0#0').
name_ref(p_type_570, param, 'type', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.canBeABeanType(Ljava/lang/Class<*>;)Ljava/lang/String;#type#0#0').
name_ref(p_type_571, param, 'type', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.isLocalType(Ljava/lang/Class<*>;Z)Ljava/lang/String;#type#0#0').
name_ref(p_type_573, param, 'type', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.getOuterClass(Ljava/lang/Class<*>;)Ljava/lang/Class<*>;#type#0#0').
name_ref(p_type_574, param, 'type', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.isProxyType(Ljava/lang/Class<*>;)Z#type#0#0').
name_ref(p_type_575, param, 'type', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.isConcrete(Ljava/lang/Class<*>;)Z#type#0#0').
name_ref(p_type_577, param, 'type', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.isCollectionMapOrArray(Ljava/lang/Class<*>;)Z#type#0#0').
name_ref(p_type_601, param, 'type', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.primitiveType(Ljava/lang/Class<*>;)Ljava/lang/Class<*>;#type#0#0').
name_ref(p_type_633, param, 'type', 'Lcom/fasterxml/jackson/databind/util/ClassUtil$EnumTypeLocator;.locateField(Ljava/lang/Class<*>;Ljava/lang/String;Ljava/lang/Class<*>;)Ljava/lang/reflect/Field;#type#0#2').
name_ref(p_type_arg1_276, param, 'typeArg1', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;.create(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/TypeBindings;#typeArg1#0#1').
name_ref(p_type_arg1_280, param, 'typeArg1', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;.create(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/TypeBindings;#typeArg1#0#1').
name_ref(p_type_arg1_285, param, 'typeArg1', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;.createIfNeeded(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/TypeBindings;#typeArg1#0#1').
name_ref(p_type_arg2_281, param, 'typeArg2', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;.create(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/TypeBindings;#typeArg2#0#2').
name_ref(p_type_cache_340, param, 'typeCache', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.(Lcom/fasterxml/jackson/databind/util/LRUMap<Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;>;)V#typeCache#0#0').
name_ref(p_type_cache_345, param, 'typeCache', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.(Lcom/fasterxml/jackson/databind/util/LRUMap<Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;>;Lcom/fasterxml/jackson/databind/type/TypeParser;[Lcom/fasterxml/jackson/databind/type/TypeModifier;Ljava/lang/ClassLoader;)V#typeCache#0#0').
name_ref(p_type_handler_115, param, 'typeHandler', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V#typeHandler#0#7').
name_ref(p_type_handler_154, param, 'typeHandler', 'Lcom/fasterxml/jackson/databind/type/MapType;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V#typeHandler#0#7').
name_ref(p_type_handler_192, param, 'typeHandler', 'Lcom/fasterxml/jackson/databind/type/SimpleType;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V#typeHandler#0#5').
name_ref(p_type_handler_200, param, 'typeHandler', 'Lcom/fasterxml/jackson/databind/type/SimpleType;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;ILjava/lang/Object;Ljava/lang/Object;Z)V#typeHandler#0#6').
name_ref(p_type_handler_235, param, 'typeHandler', 'Lcom/fasterxml/jackson/databind/type/TypeBase;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;ILjava/lang/Object;Ljava/lang/Object;Z)V#typeHandler#0#6').
name_ref(p_type_handler_4, param, 'typeHandler', 'Lcom/fasterxml/jackson/databind/JavaType;.(Ljava/lang/Class<*>;ILjava/lang/Object;Ljava/lang/Object;Z)V#typeHandler#0#3').
name_ref(p_type_handler_51, param, 'typeHandler', 'Lcom/fasterxml/jackson/databind/type/CollectionLikeType;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V#typeHandler#0#6').
name_ref(p_type_handler_87, param, 'typeHandler', 'Lcom/fasterxml/jackson/databind/type/CollectionType;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V#typeHandler#0#6').
name_ref(p_type_list_271, param, 'typeList', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;.create(Ljava/lang/Class<*>;Ljava/util/List<Lcom/fasterxml/jackson/databind/JavaType;>;)Lcom/fasterxml/jackson/databind/type/TypeBindings;#typeList#0#1').
name_ref(p_type_param_count_364, param, 'typeParamCount', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._bindingsForSubtype(Lcom/fasterxml/jackson/databind/JavaType;ILjava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/type/TypeBindings;#typeParamCount#0#1').
name_ref(p_type_ref_385, param, 'typeRef', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructType(Lcom/fasterxml/jackson/core/type/TypeReference<*>;)Lcom/fasterxml/jackson/databind/JavaType;#typeRef#0#0').
name_ref(p_type_ser_250, param, 'typeSer', 'Lcom/fasterxml/jackson/databind/type/TypeBase;.serializeWithType(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V|Ljava/io/IOException;|Lcom/fasterxml/jackson/core/JsonProcessingException;#typeSer#0#2').
name_ref(p_types_261, param, 'types', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;.([Ljava/lang/String;[Lcom/fasterxml/jackson/databind/JavaType;[Ljava/lang/String;)V#types#0#1').
name_ref(p_types_274, param, 'types', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;.create(Ljava/lang/Class<*>;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/TypeBindings;#types#0#1').
name_ref(p_types_287, param, 'types', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;.createIfNeeded(Ljava/lang/Class<*>;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/TypeBindings;#types#0#1').
name_ref(p_uvars_262, param, 'uvars', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;.([Ljava/lang/String;[Lcom/fasterxml/jackson/databind/JavaType;[Ljava/lang/String;)V#uvars#0#2').
name_ref(p_value_640, param, 'value', 'Lcom/fasterxml/jackson/databind/util/LRUMap;.put(TK;TV;)TV;#value#0#1').
name_ref(p_value_642, param, 'value', 'Lcom/fasterxml/jackson/databind/util/LRUMap;.putIfAbsent(TK;TV;)TV;#value#0#1').
name_ref(p_value_class_402, param, 'valueClass', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructMapType(Ljava/lang/Class<+Ljava/util/Map;>;Ljava/lang/Class<*>;Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/type/MapType;#valueClass#0#2').
name_ref(p_value_class_410, param, 'valueClass', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructMapLikeType(Ljava/lang/Class<*>;Ljava/lang/Class<*>;Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/type/MapLikeType;#valueClass#0#2').
name_ref(p_value_handler_114, param, 'valueHandler', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V#valueHandler#0#6').
name_ref(p_value_handler_153, param, 'valueHandler', 'Lcom/fasterxml/jackson/databind/type/MapType;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V#valueHandler#0#6').
name_ref(p_value_handler_191, param, 'valueHandler', 'Lcom/fasterxml/jackson/databind/type/SimpleType;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V#valueHandler#0#4').
name_ref(p_value_handler_199, param, 'valueHandler', 'Lcom/fasterxml/jackson/databind/type/SimpleType;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;ILjava/lang/Object;Ljava/lang/Object;Z)V#valueHandler#0#5').
name_ref(p_value_handler_234, param, 'valueHandler', 'Lcom/fasterxml/jackson/databind/type/TypeBase;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;ILjava/lang/Object;Ljava/lang/Object;Z)V#valueHandler#0#5').
name_ref(p_value_handler_3, param, 'valueHandler', 'Lcom/fasterxml/jackson/databind/JavaType;.(Ljava/lang/Class<*>;ILjava/lang/Object;Ljava/lang/Object;Z)V#valueHandler#0#2').
name_ref(p_value_handler_50, param, 'valueHandler', 'Lcom/fasterxml/jackson/databind/type/CollectionLikeType;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V#valueHandler#0#5').
name_ref(p_value_handler_86, param, 'valueHandler', 'Lcom/fasterxml/jackson/databind/type/CollectionType;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V#valueHandler#0#5').
name_ref(p_value_t_113, param, 'valueT', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V#valueT#0#5').
name_ref(p_value_t_121, param, 'valueT', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;.(Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)V#valueT#0#2').
name_ref(p_value_t_124, param, 'valueT', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;.upgradeFrom(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapLikeType;#valueT#0#2').
name_ref(p_value_t_127, param, 'valueT', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;.construct(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapLikeType;#valueT#0#2').
name_ref(p_value_t_152, param, 'valueT', 'Lcom/fasterxml/jackson/databind/type/MapType;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V#valueT#0#5').
name_ref(p_value_t_158, param, 'valueT', 'Lcom/fasterxml/jackson/databind/type/MapType;.(Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)V#valueT#0#2').
name_ref(p_value_t_164, param, 'valueT', 'Lcom/fasterxml/jackson/databind/type/MapType;.construct(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapType;#valueT#0#5').
name_ref(p_value_t_167, param, 'valueT', 'Lcom/fasterxml/jackson/databind/type/MapType;.construct(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapType;#valueT#0#2').
name_ref(p_value_type_407, param, 'valueType', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructMapType(Ljava/lang/Class<+Ljava/util/Map;>;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapType;#valueType#0#2').
name_ref(p_value_type_413, param, 'valueType', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructMapLikeType(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapLikeType;#valueType#0#2').
name_ref(p_var_512, param, 'var', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._fromVariable(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/reflect/TypeVariable<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;#var#0#1').
name_ref(f__as_static_10, field, '_asStatic', 'Lcom/fasterxml/jackson/databind/JavaType;._asStatic)Z').
name_ref(f__bindings_216, field, '_bindings', 'Lcom/fasterxml/jackson/databind/type/TypeBase;._bindings)Lcom/fasterxml/jackson/databind/type/TypeBindings;').
name_ref(f__canonical_name_241, field, '_canonicalName', 'Lcom/fasterxml/jackson/databind/type/TypeBase;._canonicalName)Ljava/lang/String;').
name_ref(f__class_6, field, '_class', 'Lcom/fasterxml/jackson/databind/JavaType;._class)Ljava/lang/Class<Ljava/lang/Class;{0}*>;').
name_ref(f__class_loader_344, field, '_classLoader', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._classLoader)Ljava/lang/ClassLoader;').
name_ref(f__current_38, field, '_current', 'Lcom/fasterxml/jackson/databind/type/ClassStack;._current)Ljava/lang/Class<Ljava/lang/Class;{0}*>;').
name_ref(f__element_type_53, field, '_elementType', 'Lcom/fasterxml/jackson/databind/type/CollectionLikeType;._elementType)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(f__factory_521, field, '_factory', 'Lcom/fasterxml/jackson/databind/type/TypeParser;._factory)Lcom/fasterxml/jackson/databind/type/TypeFactory;').
name_ref(f__hash_315, field, '_hash', 'Lcom/fasterxml/jackson/databind/type/TypeBindings$AsKey;._hash)I').
name_ref(f__hash_7, field, '_hash', 'Lcom/fasterxml/jackson/databind/JavaType;._hash)I').
name_ref(f__hash_code_269, field, '_hashCode', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;._hashCode)I').
name_ref(f__index_542, field, '_index', 'Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;._index)I').
name_ref(f__input_539, field, '_input', 'Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;._input)Ljava/lang/String;').
name_ref(f__key_type_117, field, '_keyType', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;._keyType)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(f__map_637, field, '_map', 'Lcom/fasterxml/jackson/databind/util/LRUMap<Lcom/fasterxml/jackson/databind/util/LRUMap;:TK;Lcom/fasterxml/jackson/databind/util/LRUMap;:TV;>;._map)Ljava/util/concurrent/ConcurrentHashMap<Lcom/fasterxml/jackson/databind/util/LRUMap;:TK;Lcom/fasterxml/jackson/databind/util/LRUMap;:TV;>;').
name_ref(f__max_entries_638, field, '_maxEntries', 'Lcom/fasterxml/jackson/databind/util/LRUMap<Lcom/fasterxml/jackson/databind/util/LRUMap;:TK;Lcom/fasterxml/jackson/databind/util/LRUMap;:TV;>;._maxEntries)I').
name_ref(f__modifiers_343, field, '_modifiers', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._modifiers)[Lcom/fasterxml/jackson/databind/type/TypeModifier;').
name_ref(f__names_263, field, '_names', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;._names)[Ljava/lang/String;').
name_ref(f__params_314, field, '_params', 'Lcom/fasterxml/jackson/databind/type/TypeBindings$AsKey;._params)[Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(f__parent_37, field, '_parent', 'Lcom/fasterxml/jackson/databind/type/ClassStack;._parent)Lcom/fasterxml/jackson/databind/type/ClassStack;').
name_ref(f__parser_342, field, '_parser', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._parser)Lcom/fasterxml/jackson/databind/type/TypeParser;').
name_ref(f__pushback_token_540, field, '_pushbackToken', 'Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;._pushbackToken)Ljava/lang/String;').
name_ref(f__raw_313, field, '_raw', 'Lcom/fasterxml/jackson/databind/type/TypeBindings$AsKey;._raw)Ljava/lang/Class<Ljava/lang/Class;{0}*>;').
name_ref(f__self_refs_42, field, '_selfRefs', 'Lcom/fasterxml/jackson/databind/type/ClassStack;._selfRefs)Ljava/util/ArrayList<Lcom/fasterxml/jackson/databind/type/ResolvedRecursiveType;>;').
name_ref(f__super_class_237, field, '_superClass', 'Lcom/fasterxml/jackson/databind/type/TypeBase;._superClass)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(f__super_interfaces_238, field, '_superInterfaces', 'Lcom/fasterxml/jackson/databind/type/TypeBase;._superInterfaces)[Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(f__type_cache_341, field, '_typeCache', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._typeCache)Lcom/fasterxml/jackson/databind/util/LRUMap<Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;>;').
name_ref(f__type_handler_9, field, '_typeHandler', 'Lcom/fasterxml/jackson/databind/JavaType;._typeHandler)Ljava/lang/Object;').
name_ref(f__types_264, field, '_types', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;._types)[Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(f__unbound_variables_268, field, '_unboundVariables', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;._unboundVariables)[Ljava/lang/String;').
name_ref(f__value_handler_8, field, '_valueHandler', 'Lcom/fasterxml/jackson/databind/JavaType;._valueHandler)Ljava/lang/Object;').
name_ref(f__value_type_118, field, '_valueType', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;._valueType)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(f_cls_bool_329, field, 'CLS_BOOL', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.CLS_BOOL)Ljava/lang/Class<Ljava/lang/Class;{0}*>;').
name_ref(f_cls_class_327, field, 'CLS_CLASS', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.CLS_CLASS)Ljava/lang/Class<Ljava/lang/Class;{0}*>;').
name_ref(f_cls_comparable_326, field, 'CLS_COMPARABLE', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.CLS_COMPARABLE)Ljava/lang/Class<Ljava/lang/Class;{0}*>;').
name_ref(f_cls_enum_328, field, 'CLS_ENUM', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.CLS_ENUM)Ljava/lang/Class<Ljava/lang/Class;{0}*>;').
name_ref(f_cls_int_330, field, 'CLS_INT', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.CLS_INT)Ljava/lang/Class<Ljava/lang/Class;{0}*>;').
name_ref(f_cls_long_331, field, 'CLS_LONG', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.CLS_LONG)Ljava/lang/Class<Ljava/lang/Class;{0}*>;').
name_ref(f_cls_object_325, field, 'CLS_OBJECT', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.CLS_OBJECT)Ljava/lang/Class<Ljava/lang/Class;{0}*>;').
name_ref(f_cls_object_544, field, 'CLS_OBJECT', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.CLS_OBJECT)Ljava/lang/Class<Ljava/lang/Class;{0}*>;').
name_ref(f_cls_string_324, field, 'CLS_STRING', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.CLS_STRING)Ljava/lang/Class<Ljava/lang/Class;{0}*>;').
name_ref(f_core_type_bool_332, field, 'CORE_TYPE_BOOL', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.CORE_TYPE_BOOL)Lcom/fasterxml/jackson/databind/type/SimpleType;').
name_ref(f_core_type_class_339, field, 'CORE_TYPE_CLASS', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.CORE_TYPE_CLASS)Lcom/fasterxml/jackson/databind/type/SimpleType;').
name_ref(f_core_type_comparable_337, field, 'CORE_TYPE_COMPARABLE', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.CORE_TYPE_COMPARABLE)Lcom/fasterxml/jackson/databind/type/SimpleType;').
name_ref(f_core_type_enum_338, field, 'CORE_TYPE_ENUM', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.CORE_TYPE_ENUM)Lcom/fasterxml/jackson/databind/type/SimpleType;').
name_ref(f_core_type_int_333, field, 'CORE_TYPE_INT', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.CORE_TYPE_INT)Lcom/fasterxml/jackson/databind/type/SimpleType;').
name_ref(f_core_type_long_334, field, 'CORE_TYPE_LONG', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.CORE_TYPE_LONG)Lcom/fasterxml/jackson/databind/type/SimpleType;').
name_ref(f_core_type_object_336, field, 'CORE_TYPE_OBJECT', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.CORE_TYPE_OBJECT)Lcom/fasterxml/jackson/databind/type/SimpleType;').
name_ref(f_core_type_string_335, field, 'CORE_TYPE_STRING', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.CORE_TYPE_STRING)Lcom/fasterxml/jackson/databind/type/SimpleType;').
name_ref(f_empty_259, field, 'EMPTY', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;.EMPTY)Lcom/fasterxml/jackson/databind/type/TypeBindings;').
name_ref(f_empty_bindings_323, field, 'EMPTY_BINDINGS', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.EMPTY_BINDINGS)Lcom/fasterxml/jackson/databind/type/TypeBindings;').
name_ref(f_empty_iterator_547, field, 'EMPTY_ITERATOR', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.EMPTY_ITERATOR)Lcom/fasterxml/jackson/databind/util/ClassUtil$EmptyIterator<Lcom/fasterxml/jackson/databind/util/ClassUtil$EmptyIterator;{0}*>;').
name_ref(f_instance_322, field, 'instance', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.instance)Lcom/fasterxml/jackson/databind/type/TypeFactory;').
name_ref(f_no_223, field, 'NO', 'Lcom/fasterxml/jackson/databind/type/TestTypeFactory$EnumForCanonical;.NO)Lcom/fasterxml/jackson/databind/type/TestTypeFactory$EnumForCanonical;').
name_ref(f_no_annotations_545, field, 'NO_ANNOTATIONS', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.NO_ANNOTATIONS)[Ljava/lang/annotation/Annotation;').
name_ref(f_no_bindings_227, field, 'NO_BINDINGS', 'Lcom/fasterxml/jackson/databind/type/TypeBase;.NO_BINDINGS)Lcom/fasterxml/jackson/databind/type/TypeBindings;').
name_ref(f_no_ctors_546, field, 'NO_CTORS', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.NO_CTORS)[Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;').
name_ref(f_no_strings_257, field, 'NO_STRINGS', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;.NO_STRINGS)[Ljava/lang/String;').
name_ref(f_no_types_228, field, 'NO_TYPES', 'Lcom/fasterxml/jackson/databind/type/TypeBase;.NO_TYPES)[Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(f_no_types_258, field, 'NO_TYPES', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;.NO_TYPES)[Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(f_no_types_321, field, 'NO_TYPES', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.NO_TYPES)[Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(f_vars_abstract_list_300, field, 'VARS_ABSTRACT_LIST', 'Lcom/fasterxml/jackson/databind/type/TypeBindings$TypeParamStash;.VARS_ABSTRACT_LIST)[Ljava/lang/reflect/TypeVariable<Ljava/lang/reflect/TypeVariable;{0}*>;').
name_ref(f_vars_array_list_304, field, 'VARS_ARRAY_LIST', 'Lcom/fasterxml/jackson/databind/type/TypeBindings$TypeParamStash;.VARS_ARRAY_LIST)[Ljava/lang/reflect/TypeVariable<Ljava/lang/reflect/TypeVariable;{0}*>;').
name_ref(f_vars_collection_301, field, 'VARS_COLLECTION', 'Lcom/fasterxml/jackson/databind/type/TypeBindings$TypeParamStash;.VARS_COLLECTION)[Ljava/lang/reflect/TypeVariable<Ljava/lang/reflect/TypeVariable;{0}*>;').
name_ref(f_vars_hash_map_306, field, 'VARS_HASH_MAP', 'Lcom/fasterxml/jackson/databind/type/TypeBindings$TypeParamStash;.VARS_HASH_MAP)[Ljava/lang/reflect/TypeVariable<Ljava/lang/reflect/TypeVariable;{0}*>;').
name_ref(f_vars_iterable_302, field, 'VARS_ITERABLE', 'Lcom/fasterxml/jackson/databind/type/TypeBindings$TypeParamStash;.VARS_ITERABLE)[Ljava/lang/reflect/TypeVariable<Ljava/lang/reflect/TypeVariable;{0}*>;').
name_ref(f_vars_linked_hash_map_307, field, 'VARS_LINKED_HASH_MAP', 'Lcom/fasterxml/jackson/databind/type/TypeBindings$TypeParamStash;.VARS_LINKED_HASH_MAP)[Ljava/lang/reflect/TypeVariable<Ljava/lang/reflect/TypeVariable;{0}*>;').
name_ref(f_vars_list_303, field, 'VARS_LIST', 'Lcom/fasterxml/jackson/databind/type/TypeBindings$TypeParamStash;.VARS_LIST)[Ljava/lang/reflect/TypeVariable<Ljava/lang/reflect/TypeVariable;{0}*>;').
name_ref(f_vars_map_305, field, 'VARS_MAP', 'Lcom/fasterxml/jackson/databind/type/TypeBindings$TypeParamStash;.VARS_MAP)[Ljava/lang/reflect/TypeVariable<Ljava/lang/reflect/TypeVariable;{0}*>;').
name_ref(f_yes_222, field, 'YES', 'Lcom/fasterxml/jackson/databind/type/TestTypeFactory$EnumForCanonical;.YES)Lcom/fasterxml/jackson/databind/type/TestTypeFactory$EnumForCanonical;').
name_ref(m__add_raw_super_types_374, method, '_addRawSuperTypes', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;._addRawSuperTypes(Ljava/lang/Class<*>;Ljava/lang/Class<*>;Ljava/util/Collection<Ljava/lang/Class<*>;>;Z)V').
name_ref(m__add_super_types_373, method, '_addSuperTypes', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;._addSuperTypes(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class<*>;Ljava/util/Collection<Lcom/fasterxml/jackson/databind/JavaType;>;Z)V').
name_ref(m__bindings_for_subtype_282, method, '_bindingsForSubtype', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._bindingsForSubtype(Lcom/fasterxml/jackson/databind/JavaType;ILjava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/type/TypeBindings;').
name_ref(m__bogus_super_class_229, method, '_bogusSuperClass', 'Lcom/fasterxml/jackson/databind/type/TypeBase;._bogusSuperClass(Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m__build_super_class_179, method, '_buildSuperClass', 'Lcom/fasterxml/jackson/databind/type/SimpleType;._buildSuperClass(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m__class_signature_228, method, '_classSignature', 'Lcom/fasterxml/jackson/databind/type/TypeBase;._classSignature(Ljava/lang/Class<*>;Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;').
name_ref(m__collection_type_321, method, '_collectionType', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._collectionType(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m__construct_simple_323, method, '_constructSimple', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._constructSimple(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m__find_primitive_280, method, '_findPrimitive', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._findPrimitive(Ljava/lang/String;)Ljava/lang/Class<*>;').
name_ref(m__find_well_known_simple_326, method, '_findWellKnownSimple', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._findWellKnownSimple(Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m__from_any_291, method, '_fromAny', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._fromAny(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m__from_array_type_342, method, '_fromArrayType', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._fromArrayType(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/reflect/GenericArrayType;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m__from_class_302, method, '_fromClass', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._fromClass(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m__from_param_type_328, method, '_fromParamType', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._fromParamType(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/reflect/ParameterizedType;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m__from_variable_329, method, '_fromVariable', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._fromVariable(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/reflect/TypeVariable<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m__from_well_known_class_335, method, '_fromWellKnownClass', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._fromWellKnownClass(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m__from_well_known_interface_336, method, '_fromWellKnownInterface', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._fromWellKnownInterface(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m__from_wildcard_344, method, '_fromWildcard', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._fromWildcard(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/reflect/WildcardType;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m__interfaces_421, method, '_interfaces', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;._interfaces(Ljava/lang/Class<*>;)[Ljava/lang/Class<*>;').
name_ref(m__map_type_318, method, '_mapType', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._mapType(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m__narrow_103, method, '_narrow', 'Lcom/fasterxml/jackson/databind/type/CollectionType;._narrow(Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m__narrow_116, method, '_narrow', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;._narrow(Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m__narrow_14, method, '_narrow', 'Lcom/fasterxml/jackson/databind/JavaType;._narrow(Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m__narrow_145, method, '_narrow', 'Lcom/fasterxml/jackson/databind/type/MapType;._narrow(Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m__narrow_165, method, '_narrow', 'Lcom/fasterxml/jackson/databind/type/SimpleType;._narrow(Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m__narrow_72, method, '_narrow', 'Lcom/fasterxml/jackson/databind/type/CollectionLikeType;._narrow(Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m__new_simple_type_324, method, '_newSimpleType', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._newSimpleType(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m__problem_356, method, '_problem', 'Lcom/fasterxml/jackson/databind/type/TypeParser;._problem(Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;').
name_ref(m__reference_type_322, method, '_referenceType', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._referenceType(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m__resolve_super_class_334, method, '_resolveSuperClass', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._resolveSuperClass(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m__resolve_super_interfaces_333, method, '_resolveSuperInterfaces', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._resolveSuperInterfaces(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;)[Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m__resolve_type_placeholders_283, method, '_resolveTypePlaceholders', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._resolveTypePlaceholders(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/String;|Ljava/lang/IllegalArgumentException;').
name_ref(m__unknown_type_325, method, '_unknownType', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._unknownType()Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m__verify_and_resolve_placeholders_284, method, '_verifyAndResolvePlaceholders', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._verifyAndResolvePlaceholders(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Z').
name_ref(m_add_355, method, 'add', 'Ljava/util/ArrayList;.add(TE;)Z').
name_ref(m_add_self_reference_62, method, 'addSelfReference', 'Lcom/fasterxml/jackson/databind/type/ClassStack;.addSelfReference(Lcom/fasterxml/jackson/databind/type/ResolvedRecursiveType;)V').
name_ref(m_append_91, method, 'append', 'Ljava/lang/StringBuilder;.append(Ljava/lang/String;)Ljava/lang/StringBuilder;').
name_ref(m_append_92, method, 'append', 'Ljava/lang/StringBuilder;.append(C)Ljava/lang/StringBuilder;').
name_ref(m_array_list_354, method, 'ArrayList', 'Ljava/util/ArrayList;.()V').
name_ref(m_as_key_251, method, 'asKey', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;.asKey(Ljava/lang/Class<*>;)Ljava/lang/Object;').
name_ref(m_as_key_252, method, 'AsKey', 'Lcom/fasterxml/jackson/databind/type/TypeBindings$AsKey;.(Ljava/lang/Class<*>;[Lcom/fasterxml/jackson/databind/JavaType;I)V').
name_ref(m_as_list_249, method, 'asList', 'Ljava/util/Arrays;.asList<T:Ljava/lang/Object;>([TT;)Ljava/util/List<TT;>;').
name_ref(m_assert_equals_191, method, 'assertEquals', 'Ljunit/framework/TestCase;.assertEquals(Ljava/lang/String;Ljava/lang/String;)V').
name_ref(m_assert_equals_192, method, 'assertEquals', 'Ljunit/framework/TestCase;.assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V').
name_ref(m_build_canonical_name_126, method, 'buildCanonicalName', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;.buildCanonicalName()Ljava/lang/String;').
name_ref(m_build_canonical_name_173, method, 'buildCanonicalName', 'Lcom/fasterxml/jackson/databind/type/SimpleType;.buildCanonicalName()Ljava/lang/String;').
name_ref(m_build_canonical_name_215, method, 'buildCanonicalName', 'Lcom/fasterxml/jackson/databind/type/TypeBase;.buildCanonicalName()Ljava/lang/String;').
name_ref(m_build_canonical_name_89, method, 'buildCanonicalName', 'Lcom/fasterxml/jackson/databind/type/CollectionLikeType;.buildCanonicalName()Ljava/lang/String;').
name_ref(m_can_be_abean_type_375, method, 'canBeABeanType', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.canBeABeanType(Ljava/lang/Class<*>;)Ljava/lang/String;').
name_ref(m_check_and_fix_access_399, method, 'checkAndFixAccess', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.checkAndFixAccess(Ljava/lang/reflect/Member;)V').
name_ref(m_check_and_fix_access_400, method, 'checkAndFixAccess', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.checkAndFixAccess(Ljava/lang/reflect/Member;Z)V').
name_ref(m_child_61, method, 'child', 'Lcom/fasterxml/jackson/databind/type/ClassStack;.child(Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/type/ClassStack;').
name_ref(m_class_for_name_277, method, 'classForName', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.classForName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class<*>;|Ljava/lang/ClassNotFoundException;').
name_ref(m_class_for_name_279, method, 'classForName', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.classForName(Ljava/lang/String;)Ljava/lang/Class<*>;|Ljava/lang/ClassNotFoundException;').
name_ref(m_class_stack_59, method, 'ClassStack', 'Lcom/fasterxml/jackson/databind/type/ClassStack;.(Ljava/lang/Class<*>;)V').
name_ref(m_class_stack_60, method, 'ClassStack', 'Lcom/fasterxml/jackson/databind/type/ClassStack;.(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class<*>;)V').
name_ref(m_clear_438, method, 'clear', 'Lcom/fasterxml/jackson/databind/util/LRUMap;.clear()V').
name_ref(m_clear_cache_269, method, 'clearCache', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.clearCache()V').
name_ref(m_close_on_fail_and_throw_as_iae_392, method, 'closeOnFailAndThrowAsIAE', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.closeOnFailAndThrowAsIAE(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Exception;)V|Ljava/io/IOException;').
name_ref(m_close_on_fail_and_throw_as_iae_393, method, 'closeOnFailAndThrowAsIAE', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.closeOnFailAndThrowAsIAE(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/io/Closeable;Ljava/lang/Exception;)V|Ljava/io/IOException;').
name_ref(m_collection_like_type_66, method, 'CollectionLikeType', 'Lcom/fasterxml/jackson/databind/type/CollectionLikeType;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V').
name_ref(m_collection_like_type_68, method, 'CollectionLikeType', 'Lcom/fasterxml/jackson/databind/type/CollectionLikeType;.(Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/databind/JavaType;)V').
name_ref(m_collection_type_100, method, 'CollectionType', 'Lcom/fasterxml/jackson/databind/type/CollectionType;.(Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/databind/JavaType;)V').
name_ref(m_collection_type_99, method, 'CollectionType', 'Lcom/fasterxml/jackson/databind/type/CollectionType;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V').
name_ref(m_concurrent_hash_map_433, method, 'ConcurrentHashMap', 'Ljava/util/concurrent/ConcurrentHashMap;.(IFI)V').
name_ref(m_construct_101, method, 'construct', 'Lcom/fasterxml/jackson/databind/type/CollectionType;.construct(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionType;').
name_ref(m_construct_102, method, 'construct', 'Lcom/fasterxml/jackson/databind/type/CollectionType;.construct(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionType;').
name_ref(m_construct_115, method, 'construct', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;.construct(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapLikeType;').
name_ref(m_construct_143, method, 'construct', 'Lcom/fasterxml/jackson/databind/type/MapType;.construct(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapType;').
name_ref(m_construct_144, method, 'construct', 'Lcom/fasterxml/jackson/databind/type/MapType;.construct(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapType;').
name_ref(m_construct_164, method, 'construct', 'Lcom/fasterxml/jackson/databind/type/SimpleType;.construct(Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/type/SimpleType;').
name_ref(m_construct_69, method, 'construct', 'Lcom/fasterxml/jackson/databind/type/CollectionLikeType;.construct(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionLikeType;').
name_ref(m_construct_70, method, 'construct', 'Lcom/fasterxml/jackson/databind/type/CollectionLikeType;.construct(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionLikeType;').
name_ref(m_construct_array_type_296, method, 'constructArrayType', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructArrayType(Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/type/ArrayType;').
name_ref(m_construct_array_type_297, method, 'constructArrayType', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructArrayType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/ArrayType;').
name_ref(m_construct_collection_like_type_300, method, 'constructCollectionLikeType', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructCollectionLikeType(Ljava/lang/Class<*>;Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/type/CollectionLikeType;').
name_ref(m_construct_collection_like_type_301, method, 'constructCollectionLikeType', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructCollectionLikeType(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionLikeType;').
name_ref(m_construct_collection_type_298, method, 'constructCollectionType', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructCollectionType(Ljava/lang/Class<+Ljava/util/Collection;>;Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/type/CollectionType;').
name_ref(m_construct_collection_type_299, method, 'constructCollectionType', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructCollectionType(Ljava/lang/Class<+Ljava/util/Collection;>;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionType;').
name_ref(m_construct_from_canonical_193, method, 'constructFromCanonical', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructFromCanonical(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;|Ljava/lang/IllegalArgumentException;').
name_ref(m_construct_generalized_type_285, method, 'constructGeneralizedType', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructGeneralizedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m_construct_map_like_type_304, method, 'constructMapLikeType', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructMapLikeType(Ljava/lang/Class<*>;Ljava/lang/Class<*>;Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/type/MapLikeType;').
name_ref(m_construct_map_like_type_305, method, 'constructMapLikeType', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructMapLikeType(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapLikeType;').
name_ref(m_construct_map_type_194, method, 'constructMapType', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructMapType(Ljava/lang/Class<+Ljava/util/Map;>;Ljava/lang/Class<*>;Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/type/MapType;').
name_ref(m_construct_map_type_303, method, 'constructMapType', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructMapType(Ljava/lang/Class<+Ljava/util/Map;>;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapType;').
name_ref(m_construct_parametric_type_310, method, 'constructParametricType', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructParametricType(Ljava/lang/Class<*>;[Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m_construct_parametric_type_311, method, 'constructParametricType', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructParametricType(Ljava/lang/Class<*>;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m_construct_parametrized_type_312, method, 'constructParametrizedType', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructParametrizedType(Ljava/lang/Class<*>;Ljava/lang/Class<*>;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m_construct_parametrized_type_313, method, 'constructParametrizedType', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructParametrizedType(Ljava/lang/Class<*>;Ljava/lang/Class<*>;[Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m_construct_raw_collection_like_type_315, method, 'constructRawCollectionLikeType', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructRawCollectionLikeType(Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/type/CollectionLikeType;').
name_ref(m_construct_raw_collection_type_314, method, 'constructRawCollectionType', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructRawCollectionType(Ljava/lang/Class<+Ljava/util/Collection;>;)Lcom/fasterxml/jackson/databind/type/CollectionType;').
name_ref(m_construct_raw_map_like_type_317, method, 'constructRawMapLikeType', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructRawMapLikeType(Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/type/MapLikeType;').
name_ref(m_construct_raw_map_type_316, method, 'constructRawMapType', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructRawMapType(Ljava/lang/Class<+Ljava/util/Map;>;)Lcom/fasterxml/jackson/databind/type/MapType;').
name_ref(m_construct_reference_type_308, method, 'constructReferenceType', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructReferenceType(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m_construct_simple_type_306, method, 'constructSimpleType', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructSimpleType(Ljava/lang/Class<*>;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m_construct_simple_type_307, method, 'constructSimpleType', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructSimpleType(Ljava/lang/Class<*>;Ljava/lang/Class<*>;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m_construct_specialized_type_281, method, 'constructSpecializedType', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m_construct_type_190, method, 'constructType', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m_construct_type_292, method, 'constructType', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructType(Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m_construct_type_293, method, 'constructType', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructType(Lcom/fasterxml/jackson/core/type/TypeReference<*>;)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m_construct_type_294, method, 'constructType', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructType(Ljava/lang/reflect/Type;Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m_construct_type_295, method, 'constructType', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.constructType(Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m_construct_unsafe_163, method, 'constructUnsafe', 'Lcom/fasterxml/jackson/databind/type/SimpleType;.constructUnsafe(Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/type/SimpleType;').
name_ref(m_contained_type_220, method, 'containedType', 'Lcom/fasterxml/jackson/databind/type/TypeBase;.containedType(I)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m_contained_type_37, method, 'containedType', 'Lcom/fasterxml/jackson/databind/JavaType;.containedType(I)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m_contained_type_count_219, method, 'containedTypeCount', 'Lcom/fasterxml/jackson/databind/type/TypeBase;.containedTypeCount()I').
name_ref(m_contained_type_count_36, method, 'containedTypeCount', 'Lcom/fasterxml/jackson/databind/JavaType;.containedTypeCount()I').
name_ref(m_contained_type_name_221, method, 'containedTypeName', 'Lcom/fasterxml/jackson/databind/type/TypeBase;.containedTypeName(I)Ljava/lang/String;').
name_ref(m_contained_type_name_38, method, 'containedTypeName', 'Lcom/fasterxml/jackson/databind/JavaType;.containedTypeName(I)Ljava/lang/String;').
name_ref(m_contained_type_or_unknown_40, method, 'containedTypeOrUnknown', 'Lcom/fasterxml/jackson/databind/JavaType;.containedTypeOrUnknown(I)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m_create_232, method, 'create', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;.create(Ljava/lang/Class<*>;Ljava/util/List<Lcom/fasterxml/jackson/databind/JavaType;>;)Lcom/fasterxml/jackson/databind/type/TypeBindings;').
name_ref(m_create_234, method, 'create', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;.create(Ljava/lang/Class<*>;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/TypeBindings;').
name_ref(m_create_235, method, 'create', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;.create(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/TypeBindings;').
name_ref(m_create_236, method, 'create', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;.create(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/TypeBindings;').
name_ref(m_create_if_needed_240, method, 'createIfNeeded', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;.createIfNeeded(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/TypeBindings;').
name_ref(m_create_if_needed_241, method, 'createIfNeeded', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;.createIfNeeded(Ljava/lang/Class<*>;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/TypeBindings;').
name_ref(m_create_instance_394, method, 'createInstance', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.createInstance<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Z)TT;|Ljava/lang/IllegalArgumentException;').
name_ref(m_ctor_427, method, 'Ctor', 'Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;.(Ljava/lang/reflect/Constructor<*>;)V').
name_ref(m_current_thread_276, method, 'currentThread', 'Ljava/lang/Thread;.currentThread()Ljava/lang/Thread;').
name_ref(m_default_instance_189, method, 'defaultInstance', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.defaultInstance()Lcom/fasterxml/jackson/databind/type/TypeFactory;').
name_ref(m_default_value_396, method, 'defaultValue', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.defaultValue(Ljava/lang/Class<*>;)Ljava/lang/Object;').
name_ref(m_empty_bindings_159, method, 'emptyBindings', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;.emptyBindings()Lcom/fasterxml/jackson/databind/type/TypeBindings;').
name_ref(m_empty_iterator_366, method, 'EmptyIterator', 'Lcom/fasterxml/jackson/databind/util/ClassUtil$EmptyIterator;.()V').
name_ref(m_empty_iterator_367, method, 'emptyIterator', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.emptyIterator<T:Ljava/lang/Object;>()Ljava/util/Iterator<TT;>;').
name_ref(m_enum_type_for_423, method, 'enumTypeFor', 'Lcom/fasterxml/jackson/databind/util/ClassUtil$EnumTypeLocator;.enumTypeFor(Ljava/util/EnumSet<*>;)Ljava/lang/Class<+Ljava/lang/Enum<*>;>;').
name_ref(m_enum_type_for_424, method, 'enumTypeFor', 'Lcom/fasterxml/jackson/databind/util/ClassUtil$EnumTypeLocator;.enumTypeFor(Ljava/util/EnumMap<**>;)Ljava/lang/Class<+Ljava/lang/Enum<*>;>;').
name_ref(m_enum_type_locator_422, method, 'EnumTypeLocator', 'Lcom/fasterxml/jackson/databind/util/ClassUtil$EnumTypeLocator;.()V').
name_ref(m_equals_140, method, 'equals', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;.equals(Ljava/lang/Object;)Z').
name_ref(m_equals_181, method, 'equals', 'Lcom/fasterxml/jackson/databind/type/SimpleType;.equals(Ljava/lang/Object;)Z').
name_ref(m_equals_244, method, 'equals', 'Ljava/lang/String;.equals(Ljava/lang/Object;)Z').
name_ref(m_equals_255, method, 'equals', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;.equals(Ljava/lang/Object;)Z').
name_ref(m_equals_259, method, 'equals', 'Lcom/fasterxml/jackson/databind/type/TypeBindings$AsKey;.equals(Ljava/lang/Object;)Z').
name_ref(m_equals_57, method, 'equals', 'Lcom/fasterxml/jackson/databind/JavaType;.equals(Ljava/lang/Object;)Z').
name_ref(m_equals_96, method, 'equals', 'Lcom/fasterxml/jackson/databind/type/CollectionLikeType;.equals(Ljava/lang/Object;)Z').
name_ref(m_find_64, method, 'find', 'Lcom/fasterxml/jackson/databind/type/ClassStack;.find(Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/type/ClassStack;').
name_ref(m_find_bound_type_243, method, 'findBoundType', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;.findBoundType(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m_find_class_273, method, 'findClass', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.findClass(Ljava/lang/String;)Ljava/lang/Class<*>;|Ljava/lang/ClassNotFoundException;').
name_ref(m_find_class_350, method, 'findClass', 'Lcom/fasterxml/jackson/databind/type/TypeParser;.findClass(Ljava/lang/String;Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;)Ljava/lang/Class<*>;').
name_ref(m_find_class_383, method, 'findClass', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.findClass(Ljava/lang/String;)Ljava/lang/Class<*>;|Ljava/lang/ClassNotFoundException;').
name_ref(m_find_class_annotations_415, method, 'findClassAnnotations', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.findClassAnnotations(Ljava/lang/Class<*>;)[Ljava/lang/annotation/Annotation;').
name_ref(m_find_constructor_395, method, 'findConstructor', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.findConstructor<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Z)Ljava/lang/reflect/Constructor<TT;>;|Ljava/lang/IllegalArgumentException;').
name_ref(m_find_enum_type_401, method, 'findEnumType', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.findEnumType(Ljava/util/EnumSet<*>;)Ljava/lang/Class<+Ljava/lang/Enum<*>;>;').
name_ref(m_find_enum_type_402, method, 'findEnumType', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.findEnumType(Ljava/util/EnumMap<**>;)Ljava/lang/Class<+Ljava/lang/Enum<*>;>;').
name_ref(m_find_enum_type_403, method, 'findEnumType', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.findEnumType(Ljava/lang/Enum<*>;)Ljava/lang/Class<+Ljava/lang/Enum<*>;>;').
name_ref(m_find_enum_type_404, method, 'findEnumType', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.findEnumType(Ljava/lang/Class<*>;)Ljava/lang/Class<+Ljava/lang/Enum<*>;>;').
name_ref(m_find_first_annotated_enum_value_405, method, 'findFirstAnnotatedEnumValue', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.findFirstAnnotatedEnumValue<T::Ljava/lang/annotation/Annotation;>(Ljava/lang/Class<Ljava/lang/Enum<*>;>;Ljava/lang/Class<TT;>;)Ljava/lang/Enum<*>;').
name_ref(m_find_raw_super_types_369, method, 'findRawSuperTypes', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.findRawSuperTypes(Ljava/lang/Class<*>;Ljava/lang/Class<*>;Z)Ljava/util/List<Ljava/lang/Class<*>;>;').
name_ref(m_find_super_classes_370, method, 'findSuperClasses', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.findSuperClasses(Ljava/lang/Class<*>;Ljava/lang/Class<*>;Z)Ljava/util/List<Ljava/lang/Class<*>;>;').
name_ref(m_find_super_type_224, method, 'findSuperType', 'Lcom/fasterxml/jackson/databind/type/TypeBase;.findSuperType(Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m_find_super_type_42, method, 'findSuperType', 'Lcom/fasterxml/jackson/databind/JavaType;.findSuperType(Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m_find_super_types_368, method, 'findSuperTypes', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.findSuperTypes(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class<*>;Z)Ljava/util/List<Lcom/fasterxml/jackson/databind/JavaType;>;').
name_ref(m_find_super_types_371, method, 'findSuperTypes', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.findSuperTypes(Ljava/lang/Class<*>;Ljava/lang/Class<*>;)Ljava/util/List<Ljava/lang/Class<*>;>;').
name_ref(m_find_super_types_372, method, 'findSuperTypes', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.findSuperTypes(Ljava/lang/Class<*>;Ljava/lang/Class<*>;Ljava/util/List<Ljava/lang/Class<*>;>;)Ljava/util/List<Ljava/lang/Class<*>;>;').
name_ref(m_find_type_parameters_225, method, 'findTypeParameters', 'Lcom/fasterxml/jackson/databind/type/TypeBase;.findTypeParameters(Ljava/lang/Class<*>;)[Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m_find_type_parameters_287, method, 'findTypeParameters', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.findTypeParameters(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class<*>;)[Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m_find_type_parameters_288, method, 'findTypeParameters', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.findTypeParameters(Ljava/lang/Class<*>;Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;)[Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m_find_type_parameters_289, method, 'findTypeParameters', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.findTypeParameters(Ljava/lang/Class<*>;Ljava/lang/Class<*>;)[Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m_find_type_parameters_45, method, 'findTypeParameters', 'Lcom/fasterxml/jackson/databind/JavaType;.findTypeParameters(Ljava/lang/Class<*>;)[Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m_for_name_278, method, 'forName', 'Ljava/lang/Class;.forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class<*>;|Ljava/lang/ClassNotFoundException;').
name_ref(m_forced_narrow_by_13, method, 'forcedNarrowBy', 'Lcom/fasterxml/jackson/databind/JavaType;.forcedNarrowBy(Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m_get_320, method, 'get', 'Ljava/util/List;.get(I)TE;').
name_ref(m_get_330, method, 'get', 'Lcom/fasterxml/jackson/databind/util/LRUMap;.get(Ljava/lang/Object;)TV;').
name_ref(m_get_425, method, 'get', 'Lcom/fasterxml/jackson/databind/util/ClassUtil$EnumTypeLocator;.get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;').
name_ref(m_get_437, method, 'get', 'Ljava/util/concurrent/ConcurrentHashMap;.get(Ljava/lang/Object;)TV;').
name_ref(m_get_actual_type_arguments_341, method, 'getActualTypeArguments', 'Ljava/lang/reflect/ParameterizedType;.getActualTypeArguments()[Ljava/lang/reflect/Type;').
name_ref(m_get_all_input_361, method, 'getAllInput', 'Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;.getAllInput()Ljava/lang/String;').
name_ref(m_get_bindings_218, method, 'getBindings', 'Lcom/fasterxml/jackson/databind/type/TypeBase;.getBindings()Lcom/fasterxml/jackson/databind/type/TypeBindings;').
name_ref(m_get_bindings_41, method, 'getBindings', 'Lcom/fasterxml/jackson/databind/JavaType;.getBindings()Lcom/fasterxml/jackson/databind/type/TypeBindings;').
name_ref(m_get_bound_name_246, method, 'getBoundName', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;.getBoundName(I)Ljava/lang/String;').
name_ref(m_get_bound_type_247, method, 'getBoundType', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;.getBoundType(I)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m_get_bounds_343, method, 'getBounds', 'Ljava/lang/reflect/TypeVariable;.getBounds()[Ljava/lang/reflect/Type;').
name_ref(m_get_class_97, method, 'getClass', 'Ljava/lang/Object;.getClass()Ljava/lang/Class<*>;').
name_ref(m_get_class_description_382, method, 'getClassDescription', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.getClassDescription(Ljava/lang/Object;)Ljava/lang/String;').
name_ref(m_get_class_loader_270, method, 'getClassLoader', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.getClassLoader()Ljava/lang/ClassLoader;').
name_ref(m_get_constructor_428, method, 'getConstructor', 'Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;.getConstructor()Ljava/lang/reflect/Constructor<*>;').
name_ref(m_get_constructors_416, method, 'getConstructors', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.getConstructors(Ljava/lang/Class<*>;)[Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;').
name_ref(m_get_content_type_130, method, 'getContentType', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;.getContentType()Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m_get_content_type_34, method, 'getContentType', 'Lcom/fasterxml/jackson/databind/JavaType;.getContentType()Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m_get_content_type_83, method, 'getContentType', 'Lcom/fasterxml/jackson/databind/type/CollectionLikeType;.getContentType()Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m_get_content_type_handler_132, method, 'getContentTypeHandler', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;.getContentTypeHandler()Ljava/lang/Object;').
name_ref(m_get_content_type_handler_49, method, 'getContentTypeHandler', 'Lcom/fasterxml/jackson/databind/JavaType;.getContentTypeHandler()Ljava/lang/Object;').
name_ref(m_get_content_type_handler_85, method, 'getContentTypeHandler', 'Lcom/fasterxml/jackson/databind/type/CollectionLikeType;.getContentTypeHandler()Ljava/lang/Object;').
name_ref(m_get_content_value_handler_131, method, 'getContentValueHandler', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;.getContentValueHandler()Ljava/lang/Object;').
name_ref(m_get_content_value_handler_48, method, 'getContentValueHandler', 'Lcom/fasterxml/jackson/databind/JavaType;.getContentValueHandler()Ljava/lang/Object;').
name_ref(m_get_content_value_handler_84, method, 'getContentValueHandler', 'Lcom/fasterxml/jackson/databind/type/CollectionLikeType;.getContentValueHandler()Ljava/lang/Object;').
name_ref(m_get_context_class_loader_275, method, 'getContextClassLoader', 'Ljava/lang/Thread;.getContextClassLoader()Ljava/lang/ClassLoader;').
name_ref(m_get_declared_annotations_431, method, 'getDeclaredAnnotations', 'Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;.getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;').
name_ref(m_get_declared_fields_413, method, 'getDeclaredFields', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.getDeclaredFields(Ljava/lang/Class<*>;)[Ljava/lang/reflect/Field;').
name_ref(m_get_declared_methods_414, method, 'getDeclaredMethods', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.getDeclaredMethods(Ljava/lang/Class<*>;)[Ljava/lang/reflect/Method;').
name_ref(m_get_declaring_class_417, method, 'getDeclaringClass', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.getDeclaringClass(Ljava/lang/Class<*>;)Ljava/lang/Class<*>;').
name_ref(m_get_declaring_class_430, method, 'getDeclaringClass', 'Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;.getDeclaringClass()Ljava/lang/Class<*>;').
name_ref(m_get_enclosing_class_420, method, 'getEnclosingClass', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.getEnclosingClass(Ljava/lang/Class<*>;)Ljava/lang/Class<*>;').
name_ref(m_get_erased_signature_134, method, 'getErasedSignature', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;.getErasedSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;').
name_ref(m_get_erased_signature_177, method, 'getErasedSignature', 'Lcom/fasterxml/jackson/databind/type/SimpleType;.getErasedSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;').
name_ref(m_get_erased_signature_217, method, 'getErasedSignature', 'Lcom/fasterxml/jackson/databind/type/TypeBase;.getErasedSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;').
name_ref(m_get_erased_signature_54, method, 'getErasedSignature', 'Lcom/fasterxml/jackson/databind/JavaType;.getErasedSignature()Ljava/lang/String;').
name_ref(m_get_erased_signature_55, method, 'getErasedSignature', 'Lcom/fasterxml/jackson/databind/JavaType;.getErasedSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;').
name_ref(m_get_erased_signature_87, method, 'getErasedSignature', 'Lcom/fasterxml/jackson/databind/type/CollectionLikeType;.getErasedSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;').
name_ref(m_get_foobar_182, method, 'getFoobar', 'Lcom/fasterxml/jackson/databind/type/TestTypeFactory$SneakyBean2;.getFoobar<T::Ljava/lang/Comparable<TT;>;>()TT;').
name_ref(m_get_generic_interfaces_339, method, 'getGenericInterfaces', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.getGenericInterfaces(Ljava/lang/Class<*>;)[Ljava/lang/reflect/Type;').
name_ref(m_get_generic_interfaces_419, method, 'getGenericInterfaces', 'Ljava/lang/Class;.getGenericInterfaces()[Ljava/lang/reflect/Type;').
name_ref(m_get_generic_signature_135, method, 'getGenericSignature', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;.getGenericSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;').
name_ref(m_get_generic_signature_178, method, 'getGenericSignature', 'Lcom/fasterxml/jackson/databind/type/SimpleType;.getGenericSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;').
name_ref(m_get_generic_signature_216, method, 'getGenericSignature', 'Lcom/fasterxml/jackson/databind/type/TypeBase;.getGenericSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;').
name_ref(m_get_generic_signature_52, method, 'getGenericSignature', 'Lcom/fasterxml/jackson/databind/JavaType;.getGenericSignature()Ljava/lang/String;').
name_ref(m_get_generic_signature_53, method, 'getGenericSignature', 'Lcom/fasterxml/jackson/databind/JavaType;.getGenericSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;').
name_ref(m_get_generic_signature_88, method, 'getGenericSignature', 'Lcom/fasterxml/jackson/databind/type/CollectionLikeType;.getGenericSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;').
name_ref(m_get_generic_superclass_338, method, 'getGenericSuperclass', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.getGenericSuperclass(Ljava/lang/Class<*>;)Ljava/lang/reflect/Type;').
name_ref(m_get_generic_superclass_418, method, 'getGenericSuperclass', 'Ljava/lang/Class;.getGenericSuperclass()Ljava/lang/reflect/Type;').
name_ref(m_get_interfaces_223, method, 'getInterfaces', 'Lcom/fasterxml/jackson/databind/type/TypeBase;.getInterfaces()Ljava/util/List<Lcom/fasterxml/jackson/databind/JavaType;>;').
name_ref(m_get_interfaces_44, method, 'getInterfaces', 'Lcom/fasterxml/jackson/databind/JavaType;.getInterfaces()Ljava/util/List<Lcom/fasterxml/jackson/databind/JavaType;>;').
name_ref(m_get_key_type_129, method, 'getKeyType', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;.getKeyType()Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m_get_key_type_33, method, 'getKeyType', 'Lcom/fasterxml/jackson/databind/JavaType;.getKeyType()Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m_get_name_238, method, 'getName', 'Ljava/lang/reflect/TypeVariable;.getName()Ljava/lang/String;').
name_ref(m_get_name_3, method, 'getName', 'Ljava/lang/Class;.getName()Ljava/lang/String;').
name_ref(m_get_outer_class_377, method, 'getOuterClass', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.getOuterClass(Ljava/lang/Class<*>;)Ljava/lang/Class<*>;').
name_ref(m_get_package_name_411, method, 'getPackageName', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.getPackageName(Ljava/lang/Class<*>;)Ljava/lang/String;').
name_ref(m_get_param_count_429, method, 'getParamCount', 'Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;.getParamCount()I').
name_ref(m_get_parameter_annotations_432, method, 'getParameterAnnotations', 'Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;.getParameterAnnotations()[[Ljava/lang/annotation/Annotation;').
name_ref(m_get_parameter_source_39, method, 'getParameterSource', 'Lcom/fasterxml/jackson/databind/JavaType;.getParameterSource()Ljava/lang/Class<*>;').
name_ref(m_get_raw_class_15, method, 'getRawClass', 'Lcom/fasterxml/jackson/databind/JavaType;.getRawClass()Ljava/lang/Class<*>;').
name_ref(m_get_raw_type_340, method, 'getRawType', 'Ljava/lang/reflect/ParameterizedType;.getRawType()Ljava/lang/reflect/Type;').
name_ref(m_get_referenced_type_35, method, 'getReferencedType', 'Lcom/fasterxml/jackson/databind/JavaType;.getReferencedType()Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m_get_remaining_input_362, method, 'getRemainingInput', 'Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;.getRemainingInput()Ljava/lang/String;').
name_ref(m_get_root_cause_385, method, 'getRootCause', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;').
name_ref(m_get_super_class_222, method, 'getSuperClass', 'Lcom/fasterxml/jackson/databind/type/TypeBase;.getSuperClass()Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m_get_super_class_43, method, 'getSuperClass', 'Lcom/fasterxml/jackson/databind/JavaType;.getSuperClass()Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m_get_type_handler_47, method, 'getTypeHandler', 'Lcom/fasterxml/jackson/databind/JavaType;.getTypeHandler<T:Ljava/lang/Object;>()TT;').
name_ref(m_get_type_parameters_248, method, 'getTypeParameters', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;.getTypeParameters()Ljava/util/List<Lcom/fasterxml/jackson/databind/JavaType;>;').
name_ref(m_get_type_parameters_257, method, 'getTypeParameters', 'Ljava/lang/Class;.getTypeParameters()[Ljava/lang/reflect/TypeVariable<Ljava/lang/Class<TT;>;>;').
name_ref(m_get_value_handler_46, method, 'getValueHandler', 'Lcom/fasterxml/jackson/databind/JavaType;.getValueHandler<T:Ljava/lang/Object;>()TT;').
name_ref(m_has_content_type_17, method, 'hasContentType', 'Lcom/fasterxml/jackson/databind/JavaType;.hasContentType()Z').
name_ref(m_has_content_type_176, method, 'hasContentType', 'Lcom/fasterxml/jackson/databind/type/SimpleType;.hasContentType()Z').
name_ref(m_has_enclosing_method_412, method, 'hasEnclosingMethod', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.hasEnclosingMethod(Ljava/lang/Class<*>;)Z').
name_ref(m_has_generic_types_32, method, 'hasGenericTypes', 'Lcom/fasterxml/jackson/databind/JavaType;.hasGenericTypes()Z').
name_ref(m_has_getter_signature_384, method, 'hasGetterSignature', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.hasGetterSignature(Ljava/lang/reflect/Method;)Z').
name_ref(m_has_handlers_133, method, 'hasHandlers', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;.hasHandlers()Z').
name_ref(m_has_handlers_51, method, 'hasHandlers', 'Lcom/fasterxml/jackson/databind/JavaType;.hasHandlers()Z').
name_ref(m_has_handlers_86, method, 'hasHandlers', 'Lcom/fasterxml/jackson/databind/type/CollectionLikeType;.hasHandlers()Z').
name_ref(m_has_more_tokens_349, method, 'hasMoreTokens', 'Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;.hasMoreTokens()Z').
name_ref(m_has_more_tokens_358, method, 'hasMoreTokens', 'Ljava/util/StringTokenizer;.hasMoreTokens()Z').
name_ref(m_has_next_363, method, 'hasNext', 'Lcom/fasterxml/jackson/databind/util/ClassUtil$EmptyIterator;.hasNext()Z').
name_ref(m_has_raw_class_16, method, 'hasRawClass', 'Lcom/fasterxml/jackson/databind/JavaType;.hasRawClass(Ljava/lang/Class<*>;)Z').
name_ref(m_has_unbound_250, method, 'hasUnbound', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;.hasUnbound(Ljava/lang/String;)Z').
name_ref(m_has_value_handler_50, method, 'hasValueHandler', 'Lcom/fasterxml/jackson/databind/JavaType;.hasValueHandler()Z').
name_ref(m_hash_code_2, method, 'hashCode', 'Ljava/lang/String;.hashCode()I').
name_ref(m_hash_code_254, method, 'hashCode', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;.hashCode()I').
name_ref(m_hash_code_258, method, 'hashCode', 'Lcom/fasterxml/jackson/databind/type/TypeBindings$AsKey;.hashCode()I').
name_ref(m_hash_code_58, method, 'hashCode', 'Lcom/fasterxml/jackson/databind/JavaType;.hashCode()I').
name_ref(m_index_of_274, method, 'indexOf', 'Ljava/lang/String;.indexOf(I)I').
name_ref(m_is_abstract_19, method, 'isAbstract', 'Lcom/fasterxml/jackson/databind/JavaType;.isAbstract()Z').
name_ref(m_is_array_331, method, 'isArray', 'Ljava/lang/Class;.isArray()Z').
name_ref(m_is_array_type_22, method, 'isArrayType', 'Lcom/fasterxml/jackson/databind/JavaType;.isArrayType()Z').
name_ref(m_is_bogus_class_408, method, 'isBogusClass', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.isBogusClass(Ljava/lang/Class<*>;)Z').
name_ref(m_is_collection_like_type_28, method, 'isCollectionLikeType', 'Lcom/fasterxml/jackson/databind/JavaType;.isCollectionLikeType()Z').
name_ref(m_is_collection_like_type_82, method, 'isCollectionLikeType', 'Lcom/fasterxml/jackson/databind/type/CollectionLikeType;.isCollectionLikeType()Z').
name_ref(m_is_collection_map_or_array_381, method, 'isCollectionMapOrArray', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.isCollectionMapOrArray(Ljava/lang/Class<*>;)Z').
name_ref(m_is_concrete_20, method, 'isConcrete', 'Lcom/fasterxml/jackson/databind/JavaType;.isConcrete()Z').
name_ref(m_is_concrete_379, method, 'isConcrete', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.isConcrete(Ljava/lang/Class<*>;)Z').
name_ref(m_is_concrete_380, method, 'isConcrete', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.isConcrete(Ljava/lang/reflect/Member;)Z').
name_ref(m_is_container_type_127, method, 'isContainerType', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;.isContainerType()Z').
name_ref(m_is_container_type_175, method, 'isContainerType', 'Lcom/fasterxml/jackson/databind/type/SimpleType;.isContainerType()Z').
name_ref(m_is_container_type_27, method, 'isContainerType', 'Lcom/fasterxml/jackson/databind/JavaType;.isContainerType()Z').
name_ref(m_is_container_type_81, method, 'isContainerType', 'Lcom/fasterxml/jackson/databind/type/CollectionLikeType;.isContainerType()Z').
name_ref(m_is_empty_233, method, 'isEmpty', 'Ljava/util/List;.isEmpty()Z').
name_ref(m_is_empty_245, method, 'isEmpty', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;.isEmpty()Z').
name_ref(m_is_enum_type_23, method, 'isEnumType', 'Lcom/fasterxml/jackson/databind/JavaType;.isEnumType()Z').
name_ref(m_is_final_26, method, 'isFinal', 'Lcom/fasterxml/jackson/databind/JavaType;.isFinal()Z').
name_ref(m_is_interface_24, method, 'isInterface', 'Lcom/fasterxml/jackson/databind/JavaType;.isInterface()Z').
name_ref(m_is_interface_332, method, 'isInterface', 'Ljava/lang/Class;.isInterface()Z').
name_ref(m_is_jackson_std_impl_406, method, 'isJacksonStdImpl', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.isJacksonStdImpl(Ljava/lang/Object;)Z').
name_ref(m_is_jackson_std_impl_407, method, 'isJacksonStdImpl', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.isJacksonStdImpl(Ljava/lang/Class<*>;)Z').
name_ref(m_is_java_lang_object_30, method, 'isJavaLangObject', 'Lcom/fasterxml/jackson/databind/JavaType;.isJavaLangObject()Z').
name_ref(m_is_local_type_376, method, 'isLocalType', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.isLocalType(Ljava/lang/Class<*>;Z)Ljava/lang/String;').
name_ref(m_is_map_like_type_128, method, 'isMapLikeType', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;.isMapLikeType()Z').
name_ref(m_is_map_like_type_29, method, 'isMapLikeType', 'Lcom/fasterxml/jackson/databind/JavaType;.isMapLikeType()Z').
name_ref(m_is_non_static_inner_class_409, method, 'isNonStaticInnerClass', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.isNonStaticInnerClass(Ljava/lang/Class<*>;)Z').
name_ref(m_is_object_or_primitive_410, method, 'isObjectOrPrimitive', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.isObjectOrPrimitive(Ljava/lang/Class<*>;)Z').
name_ref(m_is_primitive_25, method, 'isPrimitive', 'Lcom/fasterxml/jackson/databind/JavaType;.isPrimitive()Z').
name_ref(m_is_primitive_327, method, 'isPrimitive', 'Ljava/lang/Class;.isPrimitive()Z').
name_ref(m_is_proxy_type_378, method, 'isProxyType', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.isProxyType(Ljava/lang/Class<*>;)Z').
name_ref(m_is_throwable_21, method, 'isThrowable', 'Lcom/fasterxml/jackson/databind/JavaType;.isThrowable()Z').
name_ref(m_is_true_collection_type_95, method, 'isTrueCollectionType', 'Lcom/fasterxml/jackson/databind/type/CollectionLikeType;.isTrueCollectionType()Z').
name_ref(m_is_true_map_type_138, method, 'isTrueMapType', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;.isTrueMapType()Z').
name_ref(m_is_type_or_sub_type_of_18, method, 'isTypeOrSubTypeOf', 'Lcom/fasterxml/jackson/databind/JavaType;.isTypeOrSubTypeOf(Ljava/lang/Class<*>;)Z').
name_ref(m_java_type_1, method, 'JavaType', 'Lcom/fasterxml/jackson/databind/JavaType;.(Ljava/lang/Class<*>;ILjava/lang/Object;Ljava/lang/Object;Z)V').
name_ref(m_java_type_4, method, 'JavaType', 'Lcom/fasterxml/jackson/databind/JavaType;.(Lcom/fasterxml/jackson/databind/JavaType;)V').
name_ref(m_length_360, method, 'length', 'Ljava/lang/String;.length()I').
name_ref(m_locate_field_426, method, 'locateField', 'Lcom/fasterxml/jackson/databind/util/ClassUtil$EnumTypeLocator;.locateField(Ljava/lang/Class<*>;Ljava/lang/String;Ljava/lang/Class<*>;)Ljava/lang/reflect/Field;').
name_ref(m_lrumap_263, method, 'LRUMap', 'Lcom/fasterxml/jackson/databind/util/LRUMap;.(II)V').
name_ref(m_map_like_type_112, method, 'MapLikeType', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V').
name_ref(m_map_like_type_113, method, 'MapLikeType', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;.(Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)V').
name_ref(m_map_type_141, method, 'MapType', 'Lcom/fasterxml/jackson/databind/type/MapType;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V').
name_ref(m_map_type_142, method, 'MapType', 'Lcom/fasterxml/jackson/databind/type/MapType;.(Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)V').
name_ref(m_more_specific_type_290, method, 'moreSpecificType', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.moreSpecificType(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m_my_tokenizer_346, method, 'MyTokenizer', 'Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;.(Ljava/lang/String;)V').
name_ref(m_next_364, method, 'next', 'Lcom/fasterxml/jackson/databind/util/ClassUtil$EmptyIterator;.next()TT;').
name_ref(m_next_token_351, method, 'nextToken', 'Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;.nextToken()Ljava/lang/String;').
name_ref(m_next_token_359, method, 'nextToken', 'Ljava/util/StringTokenizer;.nextToken()Ljava/lang/String;').
name_ref(m_params_for1_237, method, 'paramsFor1', 'Lcom/fasterxml/jackson/databind/type/TypeBindings$TypeParamStash;.paramsFor1(Ljava/lang/Class<*>;)[Ljava/lang/reflect/TypeVariable<*>;').
name_ref(m_params_for2_239, method, 'paramsFor2', 'Lcom/fasterxml/jackson/databind/type/TypeBindings$TypeParamStash;.paramsFor2(Ljava/lang/Class<*>;)[Ljava/lang/reflect/TypeVariable<*>;').
name_ref(m_parse_286, method, 'parse', 'Lcom/fasterxml/jackson/databind/type/TypeParser;.parse(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;|Ljava/lang/IllegalArgumentException;').
name_ref(m_parse_type_348, method, 'parseType', 'Lcom/fasterxml/jackson/databind/type/TypeParser;.parseType(Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;)Lcom/fasterxml/jackson/databind/JavaType;|Ljava/lang/IllegalArgumentException;').
name_ref(m_parse_types_352, method, 'parseTypes', 'Lcom/fasterxml/jackson/databind/type/TypeParser;.parseTypes(Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;)Ljava/util/List<Lcom/fasterxml/jackson/databind/JavaType;>;|Ljava/lang/IllegalArgumentException;').
name_ref(m_primitive_type_398, method, 'primitiveType', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.primitiveType(Ljava/lang/Class<*>;)Ljava/lang/Class<*>;').
name_ref(m_push_back_353, method, 'pushBack', 'Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;.pushBack(Ljava/lang/String;)V').
name_ref(m_put_434, method, 'put', 'Lcom/fasterxml/jackson/databind/util/LRUMap;.put(TK;TV;)TV;').
name_ref(m_put_if_absent_337, method, 'putIfAbsent', 'Lcom/fasterxml/jackson/databind/util/LRUMap;.putIfAbsent(TK;TV;)TV;').
name_ref(m_put_if_absent_436, method, 'putIfAbsent', 'Ljava/util/concurrent/ConcurrentHashMap;.putIfAbsent(TK;TV;)TV;').
name_ref(m_raw_class_272, method, 'rawClass', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.rawClass(Ljava/lang/reflect/Type;)Ljava/lang/Class<*>;').
name_ref(m_read_object_440, method, 'readObject', 'Lcom/fasterxml/jackson/databind/util/LRUMap;.readObject(Ljava/io/ObjectInputStream;)V|Ljava/io/IOException;').
name_ref(m_read_resolve_231, method, 'readResolve', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;.readResolve()Ljava/lang/Object;').
name_ref(m_read_resolve_442, method, 'readResolve', 'Lcom/fasterxml/jackson/databind/util/LRUMap;.readResolve()Ljava/lang/Object;').
name_ref(m_refine_110, method, 'refine', 'Lcom/fasterxml/jackson/databind/type/CollectionType;.refine(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m_refine_12, method, 'refine', 'Lcom/fasterxml/jackson/databind/JavaType;.refine(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m_refine_125, method, 'refine', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;.refine(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m_refine_153, method, 'refine', 'Lcom/fasterxml/jackson/databind/type/MapType;.refine(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m_refine_172, method, 'refine', 'Lcom/fasterxml/jackson/databind/type/SimpleType;.refine(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m_refine_80, method, 'refine', 'Lcom/fasterxml/jackson/databind/type/CollectionLikeType;.refine(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m_remove_365, method, 'remove', 'Lcom/fasterxml/jackson/databind/util/ClassUtil$EmptyIterator;.remove()V').
name_ref(m_resolve_self_references_63, method, 'resolveSelfReferences', 'Lcom/fasterxml/jackson/databind/type/ClassStack;.resolveSelfReferences(Lcom/fasterxml/jackson/databind/JavaType;)V').
name_ref(m_serialize_227, method, 'serialize', 'Lcom/fasterxml/jackson/databind/type/TypeBase;.serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V|Ljava/io/IOException;|Lcom/fasterxml/jackson/core/JsonProcessingException;').
name_ref(m_serialize_with_type_226, method, 'serializeWithType', 'Lcom/fasterxml/jackson/databind/type/TypeBase;.serializeWithType(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V|Ljava/io/IOException;|Lcom/fasterxml/jackson/core/JsonProcessingException;').
name_ref(m_simple_type_157, method, 'SimpleType', 'Lcom/fasterxml/jackson/databind/type/SimpleType;.(Ljava/lang/Class<*>;)V').
name_ref(m_simple_type_158, method, 'SimpleType', 'Lcom/fasterxml/jackson/databind/type/SimpleType;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)V').
name_ref(m_simple_type_160, method, 'SimpleType', 'Lcom/fasterxml/jackson/databind/type/SimpleType;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V').
name_ref(m_simple_type_161, method, 'SimpleType', 'Lcom/fasterxml/jackson/databind/type/SimpleType;.(Lcom/fasterxml/jackson/databind/type/TypeBase;)V').
name_ref(m_simple_type_162, method, 'SimpleType', 'Lcom/fasterxml/jackson/databind/type/SimpleType;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;ILjava/lang/Object;Ljava/lang/Object;Z)V').
name_ref(m_size_174, method, 'size', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;.size()I').
name_ref(m_size_319, method, 'size', 'Ljava/util/List;.size()I').
name_ref(m_size_435, method, 'size', 'Ljava/util/concurrent/ConcurrentHashMap;.size()I').
name_ref(m_size_439, method, 'size', 'Lcom/fasterxml/jackson/databind/util/LRUMap;.size()I').
name_ref(m_string_builder_90, method, 'StringBuilder', 'Ljava/lang/StringBuilder;.()V').
name_ref(m_string_tokenizer_357, method, 'StringTokenizer', 'Ljava/util/StringTokenizer;.(Ljava/lang/String;Ljava/lang/String;Z)V').
name_ref(m_test_arrays_184, method, 'testArrays', 'Lcom/fasterxml/jackson/databind/type/TestTypeFactory;.testArrays()V').
name_ref(m_test_atomic_array_ref_parameters_206, method, 'testAtomicArrayRefParameters', 'Lcom/fasterxml/jackson/databind/type/TestTypeFactory;.testAtomicArrayRefParameters()V').
name_ref(m_test_cache_clearing_211, method, 'testCacheClearing', 'Lcom/fasterxml/jackson/databind/type/TestTypeFactory;.testCacheClearing()V').
name_ref(m_test_canonical_names_188, method, 'testCanonicalNames', 'Lcom/fasterxml/jackson/databind/type/TestTypeFactory;.testCanonicalNames()V').
name_ref(m_test_canonical_with_spaces_195, method, 'testCanonicalWithSpaces', 'Lcom/fasterxml/jackson/databind/type/TestTypeFactory;.testCanonicalWithSpaces()V').
name_ref(m_test_collection_types_refined_197, method, 'testCollectionTypesRefined', 'Lcom/fasterxml/jackson/databind/type/TestTypeFactory;.testCollectionTypesRefined()V').
name_ref(m_test_collections_196, method, 'testCollections', 'Lcom/fasterxml/jackson/databind/type/TestTypeFactory;.testCollections()V').
name_ref(m_test_iterator_186, method, 'testIterator', 'Lcom/fasterxml/jackson/databind/type/TestTypeFactory;.testIterator()V').
name_ref(m_test_map_entry_resolution_207, method, 'testMapEntryResolution', 'Lcom/fasterxml/jackson/databind/type/TestTypeFactory;.testMapEntryResolution()V').
name_ref(m_test_map_types_advanced_201, method, 'testMapTypesAdvanced', 'Lcom/fasterxml/jackson/databind/type/TestTypeFactory;.testMapTypesAdvanced()V').
name_ref(m_test_map_types_raw_200, method, 'testMapTypesRaw', 'Lcom/fasterxml/jackson/databind/type/TestTypeFactory;.testMapTypesRaw()V').
name_ref(m_test_map_types_refined_199, method, 'testMapTypesRefined', 'Lcom/fasterxml/jackson/databind/type/TestTypeFactory;.testMapTypesRefined()V').
name_ref(m_test_map_types_sneaky_202, method, 'testMapTypesSneaky', 'Lcom/fasterxml/jackson/databind/type/TestTypeFactory;.testMapTypesSneaky()V').
name_ref(m_test_maps_198, method, 'testMaps', 'Lcom/fasterxml/jackson/databind/type/TestTypeFactory;.testMaps()V').
name_ref(m_test_more_specific_type_210, method, 'testMoreSpecificType', 'Lcom/fasterxml/jackson/databind/type/TestTypeFactory;.testMoreSpecificType()V').
name_ref(m_test_parametric_types_187, method, 'testParametricTypes', 'Lcom/fasterxml/jackson/databind/type/TestTypeFactory;.testParametricTypes()V').
name_ref(m_test_properties_185, method, 'testProperties', 'Lcom/fasterxml/jackson/databind/type/TestTypeFactory;.testProperties()V').
name_ref(m_test_raw_collections_208, method, 'testRawCollections', 'Lcom/fasterxml/jackson/databind/type/TestTypeFactory;.testRawCollections()V').
name_ref(m_test_raw_map_type_212, method, 'testRawMapType', 'Lcom/fasterxml/jackson/databind/type/TestTypeFactory;.testRawMapType()V').
name_ref(m_test_raw_maps_209, method, 'testRawMaps', 'Lcom/fasterxml/jackson/databind/type/TestTypeFactory;.testRawMaps()V').
name_ref(m_test_simple_types_183, method, 'testSimpleTypes', 'Lcom/fasterxml/jackson/databind/type/TestTypeFactory;.testSimpleTypes()V').
name_ref(m_test_sneaky_bean_properties_204, method, 'testSneakyBeanProperties', 'Lcom/fasterxml/jackson/databind/type/TestTypeFactory;.testSneakyBeanProperties()V|Ljava/lang/Exception;').
name_ref(m_test_sneaky_field_types_203, method, 'testSneakyFieldTypes', 'Lcom/fasterxml/jackson/databind/type/TestTypeFactory;.testSneakyFieldTypes()V|Ljava/lang/Exception;').
name_ref(m_test_sneaky_self_refs_205, method, 'testSneakySelfRefs', 'Lcom/fasterxml/jackson/databind/type/TestTypeFactory;.testSneakySelfRefs()V|Ljava/lang/Exception;').
name_ref(m_throw_as_iae_388, method, 'throwAsIAE', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.throwAsIAE(Ljava/lang/Throwable;)V').
name_ref(m_throw_as_iae_389, method, 'throwAsIAE', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.throwAsIAE(Ljava/lang/Throwable;Ljava/lang/String;)V').
name_ref(m_throw_root_cause_386, method, 'throwRootCause', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.throwRootCause(Ljava/lang/Throwable;)V|Ljava/lang/Exception;').
name_ref(m_throw_root_cause_if_ioe_387, method, 'throwRootCauseIfIOE', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.throwRootCauseIfIOE(Ljava/lang/Throwable;)Ljava/lang/Throwable;|Ljava/io/IOException;').
name_ref(m_to_canonical_214, method, 'toCanonical', 'Lcom/fasterxml/jackson/databind/type/TypeBase;.toCanonical()Ljava/lang/String;').
name_ref(m_to_canonical_93, method, 'toCanonical', 'Lcom/fasterxml/jackson/core/type/ResolvedType;.toCanonical()Ljava/lang/String;').
name_ref(m_to_string_111, method, 'toString', 'Lcom/fasterxml/jackson/databind/type/CollectionType;.toString()Ljava/lang/String;').
name_ref(m_to_string_139, method, 'toString', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;.toString()Ljava/lang/String;').
name_ref(m_to_string_156, method, 'toString', 'Lcom/fasterxml/jackson/databind/type/MapType;.toString()Ljava/lang/String;').
name_ref(m_to_string_180, method, 'toString', 'Lcom/fasterxml/jackson/databind/type/SimpleType;.toString()Ljava/lang/String;').
name_ref(m_to_string_253, method, 'toString', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;.toString()Ljava/lang/String;').
name_ref(m_to_string_260, method, 'toString', 'Lcom/fasterxml/jackson/databind/type/TypeBindings$AsKey;.toString()Ljava/lang/String;').
name_ref(m_to_string_56, method, 'toString', 'Lcom/fasterxml/jackson/databind/JavaType;.toString()Ljava/lang/String;').
name_ref(m_to_string_65, method, 'toString', 'Lcom/fasterxml/jackson/databind/type/ClassStack;.toString()Ljava/lang/String;').
name_ref(m_to_string_94, method, 'toString', 'Ljava/lang/StringBuilder;.toString()Ljava/lang/String;').
name_ref(m_to_string_98, method, 'toString', 'Lcom/fasterxml/jackson/databind/type/CollectionLikeType;.toString()Ljava/lang/String;').
name_ref(m_trim_347, method, 'trim', 'Ljava/lang/String;.trim()Ljava/lang/String;').
name_ref(m_type_base_213, method, 'TypeBase', 'Lcom/fasterxml/jackson/databind/type/TypeBase;.(Lcom/fasterxml/jackson/databind/type/TypeBase;)V').
name_ref(m_type_base_67, method, 'TypeBase', 'Lcom/fasterxml/jackson/databind/type/TypeBase;.(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;ILjava/lang/Object;Ljava/lang/Object;Z)V').
name_ref(m_type_bindings_230, method, 'TypeBindings', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;.([Ljava/lang/String;[Lcom/fasterxml/jackson/databind/JavaType;[Ljava/lang/String;)V').
name_ref(m_type_factory_261, method, 'TypeFactory', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.()V').
name_ref(m_type_factory_262, method, 'TypeFactory', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.(Lcom/fasterxml/jackson/databind/util/LRUMap<Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;>;)V').
name_ref(m_type_factory_265, method, 'TypeFactory', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.(Lcom/fasterxml/jackson/databind/util/LRUMap<Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;>;Lcom/fasterxml/jackson/databind/type/TypeParser;[Lcom/fasterxml/jackson/databind/type/TypeModifier;Ljava/lang/ClassLoader;)V').
name_ref(m_type_parameter_array_256, method, 'typeParameterArray', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;.typeParameterArray()[Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m_type_parser_264, method, 'TypeParser', 'Lcom/fasterxml/jackson/databind/type/TypeParser;.(Lcom/fasterxml/jackson/databind/type/TypeFactory;)V').
name_ref(m_unchecked_simple_type_309, method, 'uncheckedSimpleType', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.uncheckedSimpleType(Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m_unknown_type_271, method, 'unknownType', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.unknownType()Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m_unwrap_and_throw_as_iae_390, method, 'unwrapAndThrowAsIAE', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.unwrapAndThrowAsIAE(Ljava/lang/Throwable;)V').
name_ref(m_unwrap_and_throw_as_iae_391, method, 'unwrapAndThrowAsIAE', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.unwrapAndThrowAsIAE(Ljava/lang/Throwable;Ljava/lang/String;)V').
name_ref(m_upgrade_from_114, method, 'upgradeFrom', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;.upgradeFrom(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapLikeType;').
name_ref(m_upgrade_from_71, method, 'upgradeFrom', 'Lcom/fasterxml/jackson/databind/type/CollectionLikeType;.upgradeFrom(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionLikeType;').
name_ref(m_use_static_type_31, method, 'useStaticType', 'Lcom/fasterxml/jackson/databind/JavaType;.useStaticType()Z').
name_ref(m_with_cache_268, method, 'withCache', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.withCache(Lcom/fasterxml/jackson/databind/util/LRUMap<Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;>;)Lcom/fasterxml/jackson/databind/type/TypeFactory;').
name_ref(m_with_class_loader_267, method, 'withClassLoader', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.withClassLoader(Ljava/lang/ClassLoader;)Lcom/fasterxml/jackson/databind/type/TypeFactory;').
name_ref(m_with_content_type_10, method, 'withContentType', 'Lcom/fasterxml/jackson/databind/JavaType;.withContentType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m_with_content_type_104, method, 'withContentType', 'Lcom/fasterxml/jackson/databind/type/CollectionType;.withContentType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m_with_content_type_118, method, 'withContentType', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;.withContentType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m_with_content_type_151, method, 'withContentType', 'Lcom/fasterxml/jackson/databind/type/MapType;.withContentType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m_with_content_type_166, method, 'withContentType', 'Lcom/fasterxml/jackson/databind/type/SimpleType;.withContentType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m_with_content_type_73, method, 'withContentType', 'Lcom/fasterxml/jackson/databind/type/CollectionLikeType;.withContentType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m_with_content_type_handler_106, method, 'withContentTypeHandler', 'Lcom/fasterxml/jackson/databind/type/CollectionType;.withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/CollectionType;').
name_ref(m_with_content_type_handler_120, method, 'withContentTypeHandler', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;.withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapLikeType;').
name_ref(m_with_content_type_handler_147, method, 'withContentTypeHandler', 'Lcom/fasterxml/jackson/databind/type/MapType;.withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapType;').
name_ref(m_with_content_type_handler_168, method, 'withContentTypeHandler', 'Lcom/fasterxml/jackson/databind/type/SimpleType;.withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m_with_content_type_handler_6, method, 'withContentTypeHandler', 'Lcom/fasterxml/jackson/databind/JavaType;.withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m_with_content_type_handler_75, method, 'withContentTypeHandler', 'Lcom/fasterxml/jackson/databind/type/CollectionLikeType;.withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/CollectionLikeType;').
name_ref(m_with_content_value_handler_108, method, 'withContentValueHandler', 'Lcom/fasterxml/jackson/databind/type/CollectionType;.withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/CollectionType;').
name_ref(m_with_content_value_handler_122, method, 'withContentValueHandler', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;.withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapLikeType;').
name_ref(m_with_content_value_handler_149, method, 'withContentValueHandler', 'Lcom/fasterxml/jackson/databind/type/MapType;.withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapType;').
name_ref(m_with_content_value_handler_170, method, 'withContentValueHandler', 'Lcom/fasterxml/jackson/databind/type/SimpleType;.withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/SimpleType;').
name_ref(m_with_content_value_handler_77, method, 'withContentValueHandler', 'Lcom/fasterxml/jackson/databind/type/CollectionLikeType;.withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/CollectionLikeType;').
name_ref(m_with_content_value_handler_8, method, 'withContentValueHandler', 'Lcom/fasterxml/jackson/databind/JavaType;.withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m_with_factory_345, method, 'withFactory', 'Lcom/fasterxml/jackson/databind/type/TypeParser;.withFactory(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/type/TypeParser;').
name_ref(m_with_handlers_from_123, method, 'withHandlersFrom', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;.withHandlersFrom(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m_with_handlers_from_78, method, 'withHandlersFrom', 'Lcom/fasterxml/jackson/databind/type/CollectionLikeType;.withHandlersFrom(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m_with_handlers_from_9, method, 'withHandlersFrom', 'Lcom/fasterxml/jackson/databind/JavaType;.withHandlersFrom(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m_with_key_type_117, method, 'withKeyType', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;.withKeyType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapLikeType;').
name_ref(m_with_key_type_152, method, 'withKeyType', 'Lcom/fasterxml/jackson/databind/type/MapType;.withKeyType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapType;').
name_ref(m_with_key_type_handler_136, method, 'withKeyTypeHandler', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;.withKeyTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapLikeType;').
name_ref(m_with_key_type_handler_154, method, 'withKeyTypeHandler', 'Lcom/fasterxml/jackson/databind/type/MapType;.withKeyTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapType;').
name_ref(m_with_key_value_handler_137, method, 'withKeyValueHandler', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;.withKeyValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapLikeType;').
name_ref(m_with_key_value_handler_155, method, 'withKeyValueHandler', 'Lcom/fasterxml/jackson/databind/type/MapType;.withKeyValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapType;').
name_ref(m_with_modifier_266, method, 'withModifier', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;.withModifier(Lcom/fasterxml/jackson/databind/type/TypeModifier;)Lcom/fasterxml/jackson/databind/type/TypeFactory;').
name_ref(m_with_static_typing_109, method, 'withStaticTyping', 'Lcom/fasterxml/jackson/databind/type/CollectionType;.withStaticTyping()Lcom/fasterxml/jackson/databind/type/CollectionType;').
name_ref(m_with_static_typing_11, method, 'withStaticTyping', 'Lcom/fasterxml/jackson/databind/JavaType;.withStaticTyping()Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m_with_static_typing_124, method, 'withStaticTyping', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;.withStaticTyping()Lcom/fasterxml/jackson/databind/type/MapLikeType;').
name_ref(m_with_static_typing_150, method, 'withStaticTyping', 'Lcom/fasterxml/jackson/databind/type/MapType;.withStaticTyping()Lcom/fasterxml/jackson/databind/type/MapType;').
name_ref(m_with_static_typing_171, method, 'withStaticTyping', 'Lcom/fasterxml/jackson/databind/type/SimpleType;.withStaticTyping()Lcom/fasterxml/jackson/databind/type/SimpleType;').
name_ref(m_with_static_typing_79, method, 'withStaticTyping', 'Lcom/fasterxml/jackson/databind/type/CollectionLikeType;.withStaticTyping()Lcom/fasterxml/jackson/databind/type/CollectionLikeType;').
name_ref(m_with_type_handler_105, method, 'withTypeHandler', 'Lcom/fasterxml/jackson/databind/type/CollectionType;.withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/CollectionType;').
name_ref(m_with_type_handler_119, method, 'withTypeHandler', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;.withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapLikeType;').
name_ref(m_with_type_handler_146, method, 'withTypeHandler', 'Lcom/fasterxml/jackson/databind/type/MapType;.withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapType;').
name_ref(m_with_type_handler_167, method, 'withTypeHandler', 'Lcom/fasterxml/jackson/databind/type/SimpleType;.withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/SimpleType;').
name_ref(m_with_type_handler_5, method, 'withTypeHandler', 'Lcom/fasterxml/jackson/databind/JavaType;.withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m_with_type_handler_74, method, 'withTypeHandler', 'Lcom/fasterxml/jackson/databind/type/CollectionLikeType;.withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/CollectionLikeType;').
name_ref(m_with_unbound_variable_242, method, 'withUnboundVariable', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;.withUnboundVariable(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/type/TypeBindings;').
name_ref(m_with_value_handler_107, method, 'withValueHandler', 'Lcom/fasterxml/jackson/databind/type/CollectionType;.withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/CollectionType;').
name_ref(m_with_value_handler_121, method, 'withValueHandler', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;.withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapLikeType;').
name_ref(m_with_value_handler_148, method, 'withValueHandler', 'Lcom/fasterxml/jackson/databind/type/MapType;.withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapType;').
name_ref(m_with_value_handler_169, method, 'withValueHandler', 'Lcom/fasterxml/jackson/databind/type/SimpleType;.withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/SimpleType;').
name_ref(m_with_value_handler_7, method, 'withValueHandler', 'Lcom/fasterxml/jackson/databind/JavaType;.withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(m_with_value_handler_76, method, 'withValueHandler', 'Lcom/fasterxml/jackson/databind/type/CollectionLikeType;.withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/CollectionLikeType;').
name_ref(m_wrapper_type_397, method, 'wrapperType', 'Lcom/fasterxml/jackson/databind/util/ClassUtil;.wrapperType(Ljava/lang/Class<*>;)Ljava/lang/Class<*>;').
name_ref(m_write_object_441, method, 'writeObject', 'Lcom/fasterxml/jackson/databind/util/LRUMap;.writeObject(Ljava/io/ObjectOutputStream;)V|Ljava/io/IOException;').
name_ref(q__class_3, q_name, 'other._class', 'Lcom/fasterxml/jackson/databind/type/CollectionLikeType;.equals(Ljava/lang/Object;)Z#other:Lcom/fasterxml/jackson/databind/JavaType;._class)Ljava/lang/Class<Ljava/lang/Class;{0}*>;').
name_ref(q__class_5, q_name, 'other._class', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;.equals(Ljava/lang/Object;)Z#other:Lcom/fasterxml/jackson/databind/JavaType;._class)Ljava/lang/Class<Ljava/lang/Class;{0}*>;').
name_ref(q__current_2, q_name, 'curr._current', 'Lcom/fasterxml/jackson/databind/type/ClassStack;.find(Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/type/ClassStack;#0#curr:Lcom/fasterxml/jackson/databind/type/ClassStack;._current)Ljava/lang/Class<Ljava/lang/Class;{0}*>;').
name_ref(q__element_type_4, q_name, 'other._elementType', 'Lcom/fasterxml/jackson/databind/type/CollectionLikeType;.equals(Ljava/lang/Object;)Z#other:Lcom/fasterxml/jackson/databind/type/CollectionLikeType;._elementType)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(q__hash_13, q_name, 'other._hash', 'Lcom/fasterxml/jackson/databind/type/TypeBindings$AsKey;.equals(Ljava/lang/Object;)Z#other:Lcom/fasterxml/jackson/databind/type/TypeBindings$AsKey;._hash)I').
name_ref(q__key_type_6, q_name, 'other._keyType', 'Lcom/fasterxml/jackson/databind/type/MapLikeType;.equals(Ljava/lang/Object;)Z#other:Lcom/fasterxml/jackson/databind/type/MapLikeType;._keyType)Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(q__params_15, q_name, 'other._params', 'Lcom/fasterxml/jackson/databind/type/TypeBindings$AsKey;.equals(Ljava/lang/Object;)Z#other:Lcom/fasterxml/jackson/databind/type/TypeBindings$AsKey;._params)[Lcom/fasterxml/jackson/databind/JavaType;').
name_ref(q__parent_1, q_name, 'curr._parent', 'Lcom/fasterxml/jackson/databind/type/ClassStack;.find(Ljava/lang/Class<*>;)Lcom/fasterxml/jackson/databind/type/ClassStack;#0#curr:Lcom/fasterxml/jackson/databind/type/ClassStack;._parent)Lcom/fasterxml/jackson/databind/type/ClassStack;').
name_ref(q__raw_14, q_name, 'other._raw', 'Lcom/fasterxml/jackson/databind/type/TypeBindings$AsKey;.equals(Ljava/lang/Object;)Z#other:Lcom/fasterxml/jackson/databind/type/TypeBindings$AsKey;._raw)Ljava/lang/Class<Ljava/lang/Class;{0}*>;').
name_ref(q_length_10, q_name, 'vars.length', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;.create(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/TypeBindings;#vars:.length)I').
name_ref(q_length_11, q_name, 'vars.length', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;.create(Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/TypeBindings;#vars:.length)I').
name_ref(q_length_12, q_name, '_unboundVariables.length', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;._unboundVariables)[Ljava/lang/String;:.length)I').
name_ref(q_length_16, q_name, '_params.length', 'Lcom/fasterxml/jackson/databind/type/TypeBindings$AsKey;._params)[Lcom/fasterxml/jackson/databind/JavaType;:.length)I').
name_ref(q_length_17, q_name, 'otherParams.length', 'Lcom/fasterxml/jackson/databind/type/TypeBindings$AsKey;.equals(Ljava/lang/Object;)Z#0#otherParams:.length)I').
name_ref(q_length_21, q_name, 'types.length', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._resolveSuperInterfaces(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;)[Lcom/fasterxml/jackson/databind/JavaType;#types:.length)I').
name_ref(q_length_22, q_name, 'superInterfaces.length', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._fromWellKnownInterface(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;#superInterfaces#0#4:.length)I').
name_ref(q_length_23, q_name, 'args.length', 'Lcom/fasterxml/jackson/databind/type/TypeFactory;._fromParamType(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/reflect/ParameterizedType;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;#args:.length)I').
name_ref(q_length_7, q_name, '_names.length', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;._names)[Ljava/lang/String;:.length)I').
name_ref(q_length_8, q_name, '_types.length', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;._types)[Lcom/fasterxml/jackson/databind/JavaType;:.length)I').
name_ref(q_length_9, q_name, 'types.length', 'Lcom/fasterxml/jackson/databind/type/TypeBindings;.create(Ljava/lang/Class<*>;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/TypeBindings;#types#0#1:.length)I').
name_ref(q_type_18, q_name, 'Boolean.TYPE', 'Ljava/lang/Boolean;:Ljava/lang/Boolean;.TYPE)Ljava/lang/Class<Ljava/lang/Boolean;>;').
name_ref(q_type_19, q_name, 'Integer.TYPE', 'Ljava/lang/Integer;:Ljava/lang/Integer;.TYPE)Ljava/lang/Class<Ljava/lang/Integer;>;').
name_ref(q_type_20, q_name, 'Long.TYPE', 'Ljava/lang/Long;:Ljava/lang/Long;.TYPE)Ljava/lang/Class<Ljava/lang/Long;>;').

%%% End of Code Facts