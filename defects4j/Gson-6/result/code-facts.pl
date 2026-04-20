%%% Code Facts
:- style_check(-discontiguous).
%%% Classes
class(json_writer_1, 'com.google.gson.stream.JsonWriter').
class(sql_date_type_adapter_1, 'com.google.gson.internal.bind.SqlDateTypeAdapter').
class(type_adapters_1, 'com.google.gson.internal.bind.TypeAdapters').
class(time_type_adapter_1, 'com.google.gson.internal.bind.TimeTypeAdapter').
class(map_type_adapter_factory_1, 'com.google.gson.internal.bind.MapTypeAdapterFactory').
class(field_naming_policy_1, 'com.google.gson.FieldNamingPolicy').
class(type_adapter_1, 'com.google.gson.TypeAdapter').
class(collection_type_adapter_factory_1, 'com.google.gson.internal.bind.CollectionTypeAdapterFactory').
class(excluder_1, 'com.google.gson.internal.Excluder').
class(long_serialization_policy_1, 'com.google.gson.LongSerializationPolicy').
class(json_adapter_annotation_type_adapter_factory_1, 'com.google.gson.internal.bind.JsonAdapterAnnotationTypeAdapterFactory').
class(json_reader_1, 'com.google.gson.stream.JsonReader').
class(json_adapter_null_safe_test_1, 'com.google.gson.regression.JsonAdapterNullSafeTest').
class(array_type_adapter_1, 'com.google.gson.internal.bind.ArrayTypeAdapter').
class(json_reader_internal_access_1, 'com.google.gson.internal.JsonReaderInternalAccess').
class(streams_1, 'com.google.gson.internal.Streams').
class(date_type_adapter_1, 'com.google.gson.internal.bind.DateTypeAdapter').
class(object_type_adapter_1, 'com.google.gson.internal.bind.ObjectTypeAdapter').
class(gson_1, 'com.google.gson.Gson').
class(constructor_constructor_1, 'com.google.gson.internal.ConstructorConstructor').
class(reflective_type_adapter_factory_1, 'com.google.gson.internal.bind.ReflectiveTypeAdapterFactory').
class(type_token_1, 'com.google.gson.reflect.TypeToken').
class(json_token_1, 'com.google.gson.stream.JsonToken').

%%% Methods
%json_writer_1 - com.google.gson.stream.JsonWriter
method(m_json_writer_75, range(json_writer_1, 6799, 366, 192, 202)).
method(m_set_indent_404, range(json_writer_1, 7169, 527, 204, 220)).
method(m_set_lenient_405, range(json_writer_1, 7700, 594, 222, 236)).
method(m_is_lenient_406, range(json_writer_1, 8298, 123, 238, 243)).
method(m_set_html_safe_407, range(json_writer_1, 8425, 446, 245, 254)).
method(m_is_html_safe_408, range(json_writer_1, 8875, 175, 256, 262)).
method(m_set_serialize_nulls_76, range(json_writer_1, 9054, 257, 264, 270)).
method(m_get_serialize_nulls_409, range(json_writer_1, 9315, 226, 272, 278)).
method(m_begin_array_410, range(json_writer_1, 9545, 271, 280, 289)).
method(m_end_array_411, range(json_writer_1, 9820, 186, 291, 298)).
method(m_begin_object_412, range(json_writer_1, 10010, 275, 300, 309)).
method(m_end_object_413, range(json_writer_1, 10289, 190, 311, 318)).
method(m_open_414, range(json_writer_1, 10483, 262, 320, 329)).
method(m_close_415, range(json_writer_1, 10749, 580, 331, 351)).
method(m_push_403, range(json_writer_1, 11333, 240, 353, 360)).
method(m_peek_416, range(json_writer_1, 11577, 213, 362, 370)).
method(m_replace_top_417, range(json_writer_1, 11794, 165, 372, 377)).
method(m_name_418, range(json_writer_1, 11963, 505, 379, 397)).
method(m_write_deferred_name_419, range(json_writer_1, 12472, 170, 399, 405)).
method(m_value_420, range(json_writer_1, 12646, 348, 407, 421)).
method(m_json_value_421, range(json_writer_1, 12998, 411, 423, 438)).
method(m_null_value_422, range(json_writer_1, 13413, 382, 440, 457)).
method(m_value_423, range(json_writer_1, 13799, 236, 459, 469)).
method(m_value_424, range(json_writer_1, 14039, 517, 471, 486)).
method(m_value_425, range(json_writer_1, 14560, 229, 488, 498)).
method(m_value_426, range(json_writer_1, 14793, 651, 500, 521)).
method(m_flush_427, range(json_writer_1, 15448, 274, 523, 532)).
method(m_close_428, range(json_writer_1, 15726, 387, 534, 547)).
method(m_string_429, range(json_writer_1, 16117, 840, 549, 579)).
method(m_newline_430, range(json_writer_1, 16961, 201, 581, 590)).
method(m_before_name_431, range(json_writer_1, 17166, 465, 592, 605)).
method(m_before_value_432, range(json_writer_1, 17635, 994, 607, 643)).
%sql_date_type_adapter_1 - com.google.gson.internal.bind.SqlDateTypeAdapter
method(m_create_220, range(sql_date_type_adapter_1, 1528, 295, 40, 44)).
method(m_read_221, range(sql_date_type_adapter_1, 1906, 375, 49, 61)).
method(m_write_222, range(sql_date_type_adapter_1, 2285, 164, 63, 66)).
%type_adapters_1 - com.google.gson.internal.bind.TypeAdapters
method(m_type_adapters_228, range(type_adapters_1, 2053, 75, 64, 66)).
method(m_write_230, range(type_adapters_1, 2242, 326, 70, 78)).
method(m_read_231, range(type_adapters_1, 2573, 325, 79, 88)).
method(m_read_233, range(type_adapters_1, 3078, 1128, 93, 132)).
method(m_write_234, range(type_adapters_1, 4212, 326, 134, 146)).
method(m_read_236, range(type_adapters_1, 4726, 362, 152, 162)).
method(m_write_237, range(type_adapters_1, 5093, 189, 163, 170)).
method(m_read_239, range(type_adapters_1, 5501, 211, 178, 184)).
method(m_write_240, range(type_adapters_1, 5718, 145, 186, 188)).
method(m_read_242, range(type_adapters_1, 6068, 340, 195, 207)).
method(m_write_243, range(type_adapters_1, 6413, 112, 208, 211)).
method(m_read_245, range(type_adapters_1, 6719, 308, 218, 229)).
method(m_write_246, range(type_adapters_1, 7032, 112, 230, 233)).
method(m_read_248, range(type_adapters_1, 7344, 300, 240, 251)).
method(m_write_249, range(type_adapters_1, 7649, 112, 252, 255)).
method(m_read_251, range(type_adapters_1, 7985, 229, 261, 267)).
method(m_write_252, range(type_adapters_1, 8219, 121, 268, 270)).
method(m_read_254, range(type_adapters_1, 8597, 127, 276, 278)).
method(m_write_255, range(type_adapters_1, 8729, 121, 279, 281)).
method(m_read_257, range(type_adapters_1, 9123, 630, 287, 305)).
method(m_write_258, range(type_adapters_1, 9758, 249, 306, 312)).
method(m_read_260, range(type_adapters_1, 10257, 301, 318, 329)).
method(m_write_261, range(type_adapters_1, 10563, 112, 330, 333)).
method(m_read_263, range(type_adapters_1, 10764, 205, 337, 344)).
method(m_write_264, range(type_adapters_1, 10974, 112, 345, 348)).
method(m_read_266, range(type_adapters_1, 11176, 197, 352, 359)).
method(m_write_267, range(type_adapters_1, 11378, 112, 360, 363)).
method(m_read_269, range(type_adapters_1, 11580, 377, 367, 379)).
method(m_write_270, range(type_adapters_1, 11962, 112, 380, 383)).
method(m_read_272, range(type_adapters_1, 12266, 348, 389, 400)).
method(m_write_273, range(type_adapters_1, 12619, 154, 401, 404)).
method(m_read_275, range(type_adapters_1, 12983, 391, 411, 423)).
method(m_write_276, range(type_adapters_1, 13379, 112, 424, 427)).
method(m_read_278, range(type_adapters_1, 13596, 319, 431, 441)).
method(m_write_279, range(type_adapters_1, 13921, 112, 443, 445)).
method(m_read_281, range(type_adapters_1, 14138, 319, 449, 459)).
method(m_write_282, range(type_adapters_1, 14463, 112, 461, 463)).
method(m_read_284, range(type_adapters_1, 14780, 223, 469, 476)).
method(m_write_285, range(type_adapters_1, 15008, 153, 477, 480)).
method(m_read_287, range(type_adapters_1, 15390, 221, 487, 494)).
method(m_write_288, range(type_adapters_1, 15616, 152, 495, 498)).
method(m_read_290, range(type_adapters_1, 15966, 276, 505, 513)).
method(m_write_291, range(type_adapters_1, 16247, 149, 514, 517)).
method(m_read_293, range(type_adapters_1, 16561, 377, 523, 535)).
method(m_write_294, range(type_adapters_1, 16943, 148, 536, 539)).
method(m_read_296, range(type_adapters_1, 17281, 313, 545, 553)).
method(m_write_297, range(type_adapters_1, 17599, 157, 554, 557)).
method(m_read_299, range(type_adapters_1, 17967, 222, 564, 571)).
method(m_write_300, range(type_adapters_1, 18194, 144, 572, 575)).
method(m_read_302, range(type_adapters_1, 18521, 128, 581, 584)).
method(m_write_303, range(type_adapters_1, 18654, 132, 585, 588)).
method(m_create_305, range(type_adapters_1, 18994, 756, 593, 610)).
method(m_read_306, range(type_adapters_1, 19394, 195, 601, 604)).
method(m_write_307, range(type_adapters_1, 19599, 136, 606, 608)).
method(m_read_309, range(type_adapters_1, 20165, 992, 621, 653)).
method(m_write_310, range(type_adapters_1, 21163, 644, 655, 675)).
method(m_read_312, range(type_adapters_1, 22041, 878, 682, 709)).
method(m_write_313, range(type_adapters_1, 22924, 146, 710, 713)).
method(m_read_315, range(type_adapters_1, 23269, 1041, 719, 754)).
method(m_write_316, range(type_adapters_1, 24316, 1060, 756, 787)).
method(m_enum_type_adapter_317, range(type_adapters_1, 25758, 706, 797, 814)).
method(m_read_318, range(type_adapters_1, 26469, 208, 815, 821)).
method(m_write_319, range(type_adapters_1, 26683, 146, 823, 825)).
method(m_create_321, range(type_adapters_1, 26922, 469, 829, 839)).
method(m_new_factory_322, range(type_adapters_1, 27400, 429, 842, 850)).
method(m_create_323, range(type_adapters_1, 27563, 255, 845, 848)).
method(m_new_factory_22, range(type_adapters_1, 27833, 567, 852, 863)).
method(m_create_325, range(type_adapters_1, 27992, 263, 855, 858)).
method(m_to_string_326, range(type_adapters_1, 28262, 127, 859, 861)).
method(m_new_factory_21, range(type_adapters_1, 28404, 709, 865, 878)).
method(m_create_328, range(type_adapters_1, 28597, 332, 868, 872)).
method(m_to_string_329, range(type_adapters_1, 28936, 166, 873, 876)).
method(m_new_factory_for_multiple_types_330, range(type_adapters_1, 29117, 719, 880, 893)).
method(m_create_332, range(type_adapters_1, 29330, 327, 883, 887)).
method(m_to_string_333, range(type_adapters_1, 29664, 161, 888, 891)).
method(m_new_type_hierarchy_factory_334, range(type_adapters_1, 29840, 1381, 895, 927)).
method(m_create_336, range(type_adapters_1, 30182, 884, 902, 922)).
method(m_write_337, range(type_adapters_1, 30528, 129, 909, 911)).
method(m_read_338, range(type_adapters_1, 30669, 378, 913, 920)).
method(m_to_string_339, range(type_adapters_1, 31073, 137, 923, 925)).
%time_type_adapter_1 - com.google.gson.internal.bind.TimeTypeAdapter
method(m_create_224, range(time_type_adapter_1, 1552, 273, 42, 45)).
method(m_read_226, range(time_type_adapter_1, 1907, 341, 50, 61)).
method(m_write_227, range(time_type_adapter_1, 2252, 153, 63, 65)).
%map_type_adapter_factory_1 - com.google.gson.internal.bind.MapTypeAdapterFactory
method(m_map_type_adapter_factory_26, range(map_type_adapter_factory_1, 4040, 247, 109, 113)).
method(m_create_190, range(map_type_adapter_factory_1, 4291, 905, 115, 134)).
method(m_get_key_adapter_191, range(map_type_adapter_factory_1, 5200, 306, 136, 143)).
method(m_adapter_192, range(map_type_adapter_factory_1, 5752, 458, 150, 158)).
method(m_read_193, range(map_type_adapter_factory_1, 6216, 1139, 160, 196)).
method(m_write_194, range(map_type_adapter_factory_1, 7361, 1484, 198, 243)).
method(m_key_to_string_195, range(map_type_adapter_factory_1, 8851, 642, 245, 262)).
%field_naming_policy_1 - com.google.gson.FieldNamingPolicy
method(m_translate_name_1, range(field_naming_policy_1, 1238, 80, 38, 40)).
method(m_translate_name_2, range(field_naming_policy_1, 1731, 102, 54, 56)).
method(m_translate_name_3, range(field_naming_policy_1, 2331, 126, 73, 75)).
method(m_translate_name_4, range(field_naming_policy_1, 2996, 132, 91, 93)).
method(m_translate_name_5, range(field_naming_policy_1, 4024, 132, 114, 116)).
method(m_separate_camel_case_6, range(field_naming_policy_1, 4165, 576, 119, 133)).
method(m_upper_case_first_letter_7, range(field_naming_policy_1, 4745, 802, 135, 162)).
method(m_modify_string_8, range(field_naming_policy_1, 5551, 259, 164, 168)).
%type_adapter_1 - com.google.gson.TypeAdapter
method(m_write_99, range(type_adapter_1, 5180, 248, 121, 127)).
method(m_to_json_100, range(type_adapter_1, 5432, 602, 129, 143)).
method(m_null_safe_41, range(type_adapter_1, 6038, 2011, 145, 202)).
method(m_write_102, range(type_adapter_1, 7595, 210, 187, 193)).
method(m_read_103, range(type_adapter_1, 7812, 226, 194, 200)).
method(m_to_json_104, range(type_adapter_1, 8053, 692, 204, 222)).
method(m_to_json_tree_105, range(type_adapter_1, 8749, 450, 224, 239)).
method(m_read_106, range(type_adapter_1, 9203, 274, 241, 247)).
method(m_from_json_107, range(type_adapter_1, 9481, 529, 249, 261)).
method(m_from_json_108, range(type_adapter_1, 10014, 501, 263, 274)).
method(m_from_json_tree_109, range(type_adapter_1, 10519, 384, 276, 289)).
%collection_type_adapter_factory_1 - com.google.gson.internal.bind.CollectionTypeAdapterFactory
method(m_collection_type_adapter_factory_25, range(collection_type_adapter_factory_1, 1357, 146, 39, 41)).
method(m_create_175, range(collection_type_adapter_factory_1, 1507, 704, 43, 59)).
method(m_adapter_176, range(collection_type_adapter_factory_1, 2422, 321, 65, 71)).
method(m_read_177, range(collection_type_adapter_factory_1, 2749, 419, 73, 87)).
method(m_write_178, range(collection_type_adapter_factory_1, 3174, 317, 89, 100)).
%excluder_1 - com.google.gson.internal.Excluder
method(m_clone_138, range(excluder_1, 2300, 177, 61, 67)).
method(m_with_version_139, range(excluder_1, 2481, 153, 69, 73)).
method(m_with_modifiers_140, range(excluder_1, 2638, 208, 75, 82)).
method(m_disable_inner_class_serialization_141, range(excluder_1, 2850, 146, 84, 88)).
method(m_exclude_fields_without_expose_annotation_142, range(excluder_1, 3000, 143, 90, 94)).
method(m_with_exclusion_strategy_143, range(excluder_1, 3147, 582, 96, 109)).
method(m_create_144, range(excluder_1, 3733, 1118, 111, 147)).
method(m_read_146, range(excluder_1, 4234, 193, 124, 130)).
method(m_write_147, range(excluder_1, 4435, 203, 132, 138)).
method(m_delegate_148, range(excluder_1, 4646, 194, 140, 145)).
method(m_exclude_field_149, range(excluder_1, 4855, 1140, 149, 189)).
method(m_exclude_class_145, range(excluder_1, 5999, 645, 191, 213)).
method(m_is_anonymous_or_local_151, range(excluder_1, 6648, 166, 215, 218)).
method(m_is_inner_class_150, range(excluder_1, 6818, 104, 220, 222)).
method(m_is_static_153, range(excluder_1, 6926, 104, 224, 226)).
method(m_is_valid_version_154, range(excluder_1, 7034, 117, 228, 230)).
method(m_is_valid_since_155, range(excluder_1, 7155, 229, 232, 240)).
method(m_is_valid_until_156, range(excluder_1, 7388, 230, 242, 250)).
%long_serialization_policy_1 - com.google.gson.LongSerializationPolicy
method(m_serialize_96, range(long_serialization_policy_1, 1094, 97, 35, 37)).
method(m_serialize_97, range(long_serialization_policy_1, 1405, 113, 46, 48)).
method(m_serialize_98, range(long_serialization_policy_1, 1529, 264, 51, 57)).
%json_adapter_annotation_type_adapter_factory_1 - com.google.gson.internal.bind.JsonAdapterAnnotationTypeAdapterFactory
method(m_json_adapter_annotation_type_adapter_factory_27, range(json_adapter_annotation_type_adapter_factory_1, 1219, 157, 36, 38)).
method(m_create_185, range(json_adapter_annotation_type_adapter_factory_1, 1380, 359, 40, 48)).
method(m_get_type_adapter_186, range(json_adapter_annotation_type_adapter_factory_1, 1743, 1029, 50, 69)).
%json_reader_1 - com.google.gson.stream.JsonReader
method(m_json_reader_78, range(json_reader_1, 10905, 222, 286, 294)).
method(m_set_lenient_79, range(json_reader_1, 11131, 1635, 296, 327)).
method(m_is_lenient_88, range(json_reader_1, 12770, 134, 329, 334)).
method(m_begin_array_363, range(json_reader_1, 12908, 577, 336, 353)).
method(m_end_array_364, range(json_reader_1, 13489, 553, 355, 372)).
method(m_begin_object_365, range(json_reader_1, 14046, 544, 374, 390)).
method(m_end_object_366, range(json_reader_1, 14594, 656, 392, 410)).
method(m_has_next_367, range(json_reader_1, 15254, 265, 412, 421)).
method(m_peek_89, range(json_reader_1, 15523, 1063, 423, 463)).
method(m_do_peek_368, range(json_reader_1, 16590, 3981, 465, 599)).
method(m_peek_keyword_371, range(json_reader_1, 20575, 1289, 601, 643)).
method(m_peek_number_372, range(json_reader_1, 21868, 3115, 645, 746)).
method(m_is_literal_373, range(json_reader_1, 24987, 400, 748, 771)).
method(m_next_name_374, range(json_reader_1, 25391, 894, 773, 799)).
method(m_next_string_375, range(json_reader_1, 26289, 1268, 801, 836)).
method(m_next_boolean_376, range(json_reader_1, 27561, 780, 838, 861)).
method(m_next_null_377, range(json_reader_1, 28345, 618, 863, 882)).
method(m_next_double_378, range(json_reader_1, 28967, 1793, 884, 927)).
method(m_next_long_379, range(json_reader_1, 30764, 2057, 929, 980)).
method(m_next_quoted_value_380, range(json_reader_1, 32825, 1480, 982, 1027)).
method(m_next_unquoted_value_381, range(json_reader_1, 34309, 1426, 1029, 1092)).
method(m_skip_quoted_value_382, range(json_reader_1, 35739, 745, 1094, 1119)).
method(m_skip_unquoted_value_383, range(json_reader_1, 36488, 591, 1121, 1149)).
method(m_next_int_384, range(json_reader_1, 37083, 2365, 1151, 1208)).
method(m_close_385, range(json_reader_1, 39452, 222, 1210, 1218)).
method(m_skip_value_386, range(json_reader_1, 39678, 1266, 1220, 1259)).
method(m_push_387, range(json_reader_1, 40948, 554, 1261, 1274)).
method(m_fill_buffer_388, range(json_reader_1, 41506, 870, 1276, 1308)).
method(m_get_line_number_390, range(json_reader_1, 42380, 52, 1310, 1312)).
method(m_get_column_number_391, range(json_reader_1, 42436, 59, 1314, 1316)).
method(m_next_non_whitespace_370, range(json_reader_1, 42499, 2702, 1318, 1412)).
method(m_check_lenient_392, range(json_reader_1, 45205, 163, 1414, 1418)).
method(m_skip_to_end_of_line_393, range(json_reader_1, 45372, 453, 1420, 1436)).
method(m_skip_to_394, range(json_reader_1, 45829, 537, 1438, 1457)).
method(m_to_string_395, range(json_reader_1, 46370, 152, 1459, 1462)).
method(m_get_path_396, range(json_reader_1, 46526, 892, 1464, 1493)).
method(m_read_escape_character_397, range(json_reader_1, 47422, 1621, 1495, 1559)).
method(m_syntax_error_398, range(json_reader_1, 49047, 336, 1561, 1568)).
method(m_consume_non_execute_prefix_369, range(json_reader_1, 49387, 575, 1570, 1590)).
method(m_promote_name_to_value_400, range(json_reader_1, 50054, 868, 1594, 1614)).
%json_adapter_null_safe_test_1 - com.google.gson.regression.JsonAdapterNullSafeTest
method(m_test_null_safe_bug_serialize_358, range(json_adapter_null_safe_test_1, 964, 130, 29, 32)).
method(m_test_null_safe_bug_deserialize_360, range(json_adapter_null_safe_test_1, 1098, 176, 34, 37)).
method(m_device_359, range(json_adapter_null_safe_test_1, 1381, 45, 42, 44)).
method(m_create_361, range(json_adapter_null_safe_test_1, 1769, 422, 51, 59)).
%array_type_adapter_1 - com.google.gson.internal.bind.ArrayTypeAdapter
method(m_create_170, range(array_type_adapter_1, 1337, 584, 40, 51)).
method(m_array_type_adapter_172, range(array_type_adapter_1, 2024, 266, 57, 61)).
method(m_read_173, range(array_type_adapter_1, 2294, 516, 63, 81)).
method(m_write_174, range(array_type_adapter_1, 2814, 391, 83, 96)).
%json_reader_internal_access_1 - com.google.gson.internal.JsonReaderInternalAccess
method(m_promote_name_to_value_157, range(json_reader_internal_access_1, 895, 166, 28, 31)).
%streams_1 - com.google.gson.internal.Streams
method(m_streams_158, range(streams_1, 1187, 70, 36, 38)).
method(m_parse_159, range(streams_1, 1261, 888, 40, 66)).
method(m_write_160, range(streams_1, 2153, 212, 68, 73)).
method(m_writer_for_appendable_70, range(streams_1, 2369, 199, 75, 78)).
method(m_appendable_writer_161, range(streams_1, 2851, 83, 88, 90)).
method(m_write_162, range(streams_1, 2940, 190, 92, 95)).
method(m_write_163, range(streams_1, 3136, 96, 97, 99)).
method(m_flush_164, range(streams_1, 3238, 32, 101, 101)).
method(m_close_165, range(streams_1, 3275, 32, 102, 102)).
method(m_length_166, range(streams_1, 3467, 58, 109, 111)).
method(m_char_at_167, range(streams_1, 3532, 60, 112, 114)).
method(m_sub_sequence_168, range(streams_1, 3599, 115, 115, 117)).
%date_type_adapter_1 - com.google.gson.internal.bind.DateTypeAdapter
method(m_create_180, range(date_type_adapter_1, 1608, 273, 43, 46)).
method(m_read_182, range(date_type_adapter_1, 2139, 198, 54, 60)).
method(m_deserialize_to_date_183, range(date_type_adapter_1, 2341, 402, 62, 76)).
method(m_write_184, range(date_type_adapter_1, 2747, 254, 78, 85)).
%object_type_adapter_1 - com.google.gson.internal.bind.ObjectTypeAdapter
method(m_create_197, range(object_type_adapter_1, 1356, 250, 39, 45)).
method(m_object_type_adapter_198, range(object_type_adapter_1, 1643, 56, 50, 52)).
method(m_read_199, range(object_type_adapter_1, 1703, 822, 54, 91)).
method(m_write_200, range(object_type_adapter_1, 2529, 435, 93, 108)).
%gson_1 - com.google.gson.Gson
method(m_deserialize_10, range(gson_1, 5735, 177, 136, 139)).
method(m_serialize_12, range(gson_1, 6012, 88, 143, 145)).
method(m_serialize_13, range(gson_1, 6105, 115, 146, 148)).
method(m_gson_14, range(gson_1, 6229, 3040, 151, 191)).
method(m_gson_15, range(gson_1, 9273, 3842, 193, 265)).
method(m_double_adapter_30, range(gson_1, 13119, 736, 267, 289)).
method(m_read_32, range(gson_1, 13340, 205, 272, 278)).
method(m_write_33, range(gson_1, 13552, 292, 279, 287)).
method(m_float_adapter_34, range(gson_1, 13859, 737, 291, 313)).
method(m_read_36, range(gson_1, 14078, 212, 296, 302)).
method(m_write_37, range(gson_1, 14297, 288, 303, 311)).
method(m_check_valid_floating_point_38, range(gson_1, 14600, 343, 315, 321)).
method(m_long_adapter_20, range(gson_1, 14947, 679, 323, 343)).
method(m_read_39, range(gson_1, 15198, 203, 328, 334)).
method(m_write_40, range(gson_1, 15408, 207, 335, 341)).
method(m_atomic_long_adapter_23, range(gson_1, 15630, 482, 345, 355)).
method(m_write_43, range(gson_1, 15777, 135, 347, 349)).
method(m_read_44, range(gson_1, 15919, 171, 350, 353)).
method(m_atomic_long_array_adapter_24, range(gson_1, 16116, 976, 357, 382)).
method(m_write_46, range(gson_1, 16278, 271, 359, 365)).
method(m_read_47, range(gson_1, 16556, 514, 366, 380)).
method(m_get_adapter_48, range(gson_1, 17096, 1481, 384, 431)).
method(m_get_delegate_adapter_58, range(gson_1, 18581, 3506, 433, 504)).
method(m_get_adapter_60, range(gson_1, 22091, 273, 506, 514)).
method(m_to_json_tree_61, range(gson_1, 22368, 964, 516, 534)).
method(m_to_json_tree_62, range(gson_1, 23336, 966, 536, 556)).
method(m_to_json_63, range(gson_1, 24306, 1021, 558, 576)).
method(m_to_json_64, range(gson_1, 25331, 1025, 578, 597)).
method(m_to_json_68, range(gson_1, 26360, 1099, 599, 619)).
method(m_to_json_67, range(gson_1, 27463, 1179, 621, 644)).
method(m_to_json_71, range(gson_1, 28646, 925, 646, 669)).
method(m_to_json_73, range(gson_1, 29575, 394, 671, 682)).
method(m_to_json_74, range(gson_1, 29973, 616, 684, 699)).
method(m_new_json_writer_69, range(gson_1, 30593, 447, 701, 714)).
method(m_new_json_reader_77, range(gson_1, 31044, 257, 716, 723)).
method(m_to_json_80, range(gson_1, 31305, 769, 725, 745)).
method(m_from_json_81, range(gson_1, 32078, 1288, 747, 767)).
method(m_from_json_82, range(gson_1, 33370, 1386, 769, 795)).
method(m_from_json_85, range(gson_1, 34760, 1518, 797, 820)).
method(m_from_json_84, range(gson_1, 36282, 1429, 822, 847)).
method(m_assert_full_consumption_87, range(gson_1, 37715, 393, 849, 859)).
method(m_from_json_86, range(gson_1, 38112, 1499, 861, 898)).
method(m_from_json_90, range(gson_1, 39615, 1257, 900, 919)).
method(m_from_json_91, range(gson_1, 40876, 1221, 921, 945)).
method(m_set_delegate_92, range(gson_1, 42202, 163, 950, 955)).
method(m_read_93, range(gson_1, 42371, 178, 957, 962)).
method(m_write_94, range(gson_1, 42555, 194, 964, 969)).
method(m_to_string_95, range(gson_1, 42757, 282, 972, 980)).
%constructor_constructor_1 - com.google.gson.internal.ConstructorConstructor
method(m_constructor_constructor_16, range(constructor_constructor_1, 1658, 129, 51, 53)).
method(m_get_110, range(constructor_constructor_1, 1791, 1370, 55, 95)).
method(m_construct_113, range(constructor_constructor_1, 2224, 93, 65, 67)).
method(m_construct_114, range(constructor_constructor_1, 2632, 96, 77, 79)).
method(m_new_default_constructor_115, range(constructor_constructor_1, 3165, 1186, 97, 125)).
method(m_construct_120, range(constructor_constructor_1, 3481, 792, 104, 120)).
method(m_new_default_implementation_constructor_122, range(constructor_constructor_1, 4355, 3245, 127, 214)).
method(m_construct_123, range(constructor_constructor_1, 4830, 90, 137, 139)).
method(m_construct_124, range(constructor_constructor_1, 5046, 585, 143, 155)).
method(m_construct_125, range(constructor_constructor_1, 5753, 96, 159, 161)).
method(m_construct_126, range(constructor_constructor_1, 5973, 93, 165, 167)).
method(m_construct_127, range(constructor_constructor_1, 6147, 92, 171, 173)).
method(m_construct_128, range(constructor_constructor_1, 6435, 112, 181, 183)).
method(m_construct_129, range(constructor_constructor_1, 6679, 108, 187, 189)).
method(m_construct_130, range(constructor_constructor_1, 6915, 98, 193, 195)).
method(m_construct_131, range(constructor_constructor_1, 7264, 104, 200, 202)).
method(m_construct_132, range(constructor_constructor_1, 7449, 104, 206, 208)).
method(m_new_unsafe_allocator_133, range(constructor_constructor_1, 7604, 677, 216, 231)).
method(m_construct_134, range(constructor_constructor_1, 7840, 430, 220, 229)).
method(m_to_string_135, range(constructor_constructor_1, 8285, 80, 233, 235)).
%reflective_type_adapter_factory_1 - com.google.gson.internal.bind.ReflectiveTypeAdapterFactory
method(m_reflective_type_adapter_factory_28, range(reflective_type_adapter_factory_1, 1954, 288, 53, 58)).
method(m_exclude_field_201, range(reflective_type_adapter_factory_1, 2246, 110, 60, 62)).
method(m_exclude_field_202, range(reflective_type_adapter_factory_1, 2360, 179, 64, 66)).
method(m_get_field_names_203, range(reflective_type_adapter_factory_1, 2543, 142, 68, 71)).
method(m_get_field_name_204, range(reflective_type_adapter_factory_1, 2689, 546, 73, 86)).
method(m_create_205, range(reflective_type_adapter_factory_1, 3239, 371, 88, 97)).
method(m_create_bound_field_206, range(reflective_type_adapter_factory_1, 3614, 1511, 99, 127)).
method(m_write_207, range(reflective_type_adapter_factory_1, 4142, 415, 106, 113)).
method(m_read_208, range(reflective_type_adapter_factory_1, 4564, 269, 114, 120)).
method(m_write_field_209, range(reflective_type_adapter_factory_1, 4840, 274, 121, 125)).
method(m_get_field_adapter_210, range(reflective_type_adapter_factory_1, 5129, 371, 129, 136)).
method(m_get_bound_fields_211, range(reflective_type_adapter_factory_1, 5504, 1566, 138, 174)).
method(m_bound_field_212, range(reflective_type_adapter_factory_1, 7199, 183, 181, 185)).
method(m_write_field_213, range(reflective_type_adapter_factory_1, 7387, 85, 186, 186)).
method(m_write_214, range(reflective_type_adapter_factory_1, 7477, 96, 187, 187)).
method(m_read_215, range(reflective_type_adapter_factory_1, 7578, 95, 188, 188)).
method(m_adapter_216, range(reflective_type_adapter_factory_1, 7855, 162, 195, 198)).
method(m_read_217, range(reflective_type_adapter_factory_1, 8023, 742, 200, 226)).
method(m_write_218, range(reflective_type_adapter_factory_1, 8771, 514, 228, 246)).
%type_token_1 - com.google.gson.reflect.TypeToken
method(m_type_token_340, range(type_token_1, 1726, 517, 52, 65)).
method(m_type_token_341, range(type_token_1, 2247, 317, 67, 75)).
method(m_get_superclass_type_parameter_346, range(type_token_1, 2568, 499, 77, 88)).
method(m_get_raw_type_112, range(type_token_1, 3071, 135, 90, 95)).
method(m_get_type_111, range(type_token_1, 3210, 106, 97, 102)).
method(m_is_assignable_from_347, range(type_token_1, 3320, 293, 104, 113)).
method(m_is_assignable_from_348, range(type_token_1, 3617, 923, 115, 143)).
method(m_is_assignable_from_349, range(type_token_1, 4544, 302, 145, 154)).
method(m_is_assignable_from_350, range(type_token_1, 4850, 929, 156, 179)).
method(m_is_assignable_from_351, range(type_token_1, 5783, 1600, 181, 232)).
method(m_type_equals_352, range(type_token_1, 7387, 610, 234, 251)).
method(m_build_unexpected_type_error_353, range(type_token_1, 8001, 553, 253, 266)).
method(m_matches_354, range(type_token_1, 8558, 363, 268, 277)).
method(m_hash_code_355, range(type_token_1, 8925, 69, 279, 281)).
method(m_equals_356, range(type_token_1, 8998, 152, 283, 286)).
method(m_to_string_357, range(type_token_1, 9154, 89, 288, 290)).
method(m_get_72, range(type_token_1, 9247, 159, 292, 297)).
method(m_get_189, range(type_token_1, 9410, 163, 299, 304)).
%json_token_1 - com.google.gson.stream.JsonToken

%%% Blocks
%json_writer_1 - com.google.gson.stream.JsonWriter
block(json_writer_1_block1, block, json_writer_1_code3, body, range(json_writer_1, 5478, 726, 144, 162)).
block(json_writer_1_block2, block, json_writer_1_stmt2, body, range(json_writer_1, 5557, 71, 146, 148)).
block(json_writer_1_block3, block, json_writer_1_code23, body, range(json_writer_1, 6379, 31, 169, 171)).
block(json_writer_1_block4, block, json_writer_1_code32, body, range(json_writer_1, 7058, 107, 197, 202)).
block(json_writer_1_block5, block, json_writer_1_stmt18, then_statement, range(json_writer_1, 7081, 60, 198, 200)).
block(json_writer_1_block6, block, json_writer_1_code36, body, range(json_writer_1, 9264, 47, 268, 270)).
block(json_writer_1_block7, block, json_writer_1_code37, body, range(json_writer_1, 11363, 210, 353, 360)).
block(json_writer_1_block8, block, json_writer_1_stmt21, then_statement, range(json_writer_1, 11400, 136, 354, 358)).
%sql_date_type_adapter_1 - com.google.gson.internal.bind.SqlDateTypeAdapter
block(sql_date_type_adapter_1_block1, block, sql_date_type_adapter_1_code11, body, range(sql_date_type_adapter_1, 1695, 128, 41, 44)).
%type_adapters_1 - com.google.gson.internal.bind.TypeAdapters
block(type_adapters_1_block1, block, type_adapters_1_code433, body, range(type_adapters_1, 19161, 589, 594, 610)).
block(type_adapters_1_block2, block, type_adapters_1_stmt1, then_statement, range(type_adapters_1, 19216, 30, 595, 597)).
block(type_adapters_1_block3, block, type_adapters_1_code498, body, range(type_adapters_1, 27946, 454, 853, 863)).
block(type_adapters_1_block4, block, type_adapters_1_code501, body, range(type_adapters_1, 28161, 94, 856, 858)).
block(type_adapters_1_block5, block, type_adapters_1_code505, body, range(type_adapters_1, 28551, 562, 866, 878)).
block(type_adapters_1_block6, block, type_adapters_1_code508, body, range(type_adapters_1, 28766, 163, 869, 872)).
block(type_adapters_1_block7, block, type_adapters_1_code517, body, range(type_adapters_1, 29284, 552, 881, 893)).
block(type_adapters_1_block8, block, type_adapters_1_code520, body, range(type_adapters_1, 29499, 158, 884, 887)).
block(type_adapters_1_block9, block, type_adapters_1_code529, body, range(type_adapters_1, 30136, 1085, 900, 927)).
block(type_adapters_1_block10, block, type_adapters_1_code532, body, range(type_adapters_1, 30300, 766, 903, 922)).
block(type_adapters_1_block11, block, type_adapters_1_stmt13, then_statement, range(type_adapters_1, 30426, 34, 905, 907)).
%time_type_adapter_1 - com.google.gson.internal.bind.TimeTypeAdapter
block(time_type_adapter_1_block1, block, time_type_adapter_1_code11, body, range(time_type_adapter_1, 1719, 106, 43, 45)).
%map_type_adapter_factory_1 - com.google.gson.internal.bind.MapTypeAdapterFactory
block(map_type_adapter_factory_1_block1, block, map_type_adapter_factory_1_code3, body, range(map_type_adapter_factory_1, 4158, 129, 110, 113)).
block(map_type_adapter_factory_1_block2, block, map_type_adapter_factory_1_code6, body, range(map_type_adapter_factory_1, 4369, 827, 115, 134)).
block(map_type_adapter_factory_1_block3, block, map_type_adapter_factory_1_stmt5, then_statement, range(map_type_adapter_factory_1, 4510, 26, 119, 121)).
%field_naming_policy_1 - com.google.gson.FieldNamingPolicy
%type_adapter_1 - com.google.gson.TypeAdapter
block(type_adapter_1_block1, block, type_adapter_1_code6, body, range(type_adapter_1, 7553, 496, 185, 202)).
%collection_type_adapter_factory_1 - com.google.gson.internal.bind.CollectionTypeAdapterFactory
block(collection_type_adapter_factory_1_block1, block, collection_type_adapter_factory_1_code3, body, range(collection_type_adapter_factory_1, 1440, 63, 39, 41)).
block(collection_type_adapter_factory_1_block2, block, collection_type_adapter_factory_1_code7, body, range(collection_type_adapter_factory_1, 1587, 624, 44, 59)).
block(collection_type_adapter_factory_1_block3, block, collection_type_adapter_factory_1_stmt4, then_statement, range(collection_type_adapter_factory_1, 1735, 26, 48, 50)).
%excluder_1 - com.google.gson.internal.Excluder
block(excluder_1_block1, block, excluder_1_code38, body, range(excluder_1, 3808, 1043, 111, 147)).
block(excluder_1_block2, block, excluder_1_stmt4, then_statement, range(excluder_1, 4026, 26, 116, 118)).
block(excluder_1_block3, block, excluder_1_code49, body, range(excluder_1, 6062, 582, 191, 213)).
block(excluder_1_block4, block, excluder_1_stmt7, then_statement, range(excluder_1, 6287, 26, 197, 199)).
block(excluder_1_block5, block, excluder_1_stmt8, then_statement, range(excluder_1, 6350, 26, 201, 203)).
block(excluder_1_block6, block, excluder_1_stmt10, body, range(excluder_1, 6531, 90, 206, 210)).
block(excluder_1_block7, block, excluder_1_code56, body, range(excluder_1, 6699, 115, 215, 218)).
%long_serialization_policy_1 - com.google.gson.LongSerializationPolicy
%json_adapter_annotation_type_adapter_factory_1 - com.google.gson.internal.bind.JsonAdapterAnnotationTypeAdapterFactory
block(json_adapter_annotation_type_adapter_factory_1_block1, block, json_adapter_annotation_type_adapter_factory_1_code3, body, range(json_adapter_annotation_type_adapter_factory_1, 1313, 63, 36, 38)).
block(json_adapter_annotation_type_adapter_factory_1_block2, block, json_adapter_annotation_type_adapter_factory_1_code7, body, range(json_adapter_annotation_type_adapter_factory_1, 1494, 245, 42, 48)).
block(json_adapter_annotation_type_adapter_factory_1_block3, block, json_adapter_annotation_type_adapter_factory_1_code11, body, range(json_adapter_annotation_type_adapter_factory_1, 1959, 813, 52, 69)).
block(json_adapter_annotation_type_adapter_factory_1_block4, block, json_adapter_annotation_type_adapter_factory_1_stmt4, then_statement, range(json_adapter_annotation_type_adapter_factory_1, 2085, 178, 55, 58)).
block(json_adapter_annotation_type_adapter_factory_1_block5, block, json_adapter_annotation_type_adapter_factory_1_stmt5, then_statement, range(json_adapter_annotation_type_adapter_factory_1, 2323, 236, 58, 63)).
block(json_adapter_annotation_type_adapter_factory_1_block6, block, json_adapter_annotation_type_adapter_factory_1_stmt5, else_statement, range(json_adapter_annotation_type_adapter_factory_1, 2565, 135, 63, 66)).
%json_reader_1 - com.google.gson.stream.JsonReader
block(json_reader_1_block1, block, json_reader_1_code57, body, range(json_reader_1, 10291, 56, 271, 273)).
block(json_reader_1_block2, block, json_reader_1_code76, body, range(json_reader_1, 11024, 103, 289, 294)).
block(json_reader_1_block3, block, json_reader_1_stmt2, then_statement, range(json_reader_1, 11046, 59, 290, 292)).
block(json_reader_1_block4, block, json_reader_1_code80, body, range(json_reader_1, 12733, 33, 325, 327)).
block(json_reader_1_block5, block, json_reader_1_code81, body, range(json_reader_1, 12879, 25, 332, 334)).
block(json_reader_1_block6, block, json_reader_1_code82, body, range(json_reader_1, 15640, 946, 426, 463)).
block(json_reader_1_block7, block, json_reader_1_stmt7, then_statement, range(json_reader_1, 15688, 27, 428, 430)).
block(json_reader_1_block8, block, json_reader_1_code85, body, range(json_reader_1, 16622, 3949, 465, 599)).
block(json_reader_1_block9, block, json_reader_1_stmt12, then_statement, range(json_reader_1, 16710, 62, 467, 469)).
block(json_reader_1_block10, block, json_reader_1_stmt13, then_statement, range(json_reader_1, 16821, 333, 469, 482)).
block(json_reader_1_block11, block, json_reader_1_stmt14, then_statement, range(json_reader_1, 17243, 1154, 482, 520)).
block(json_reader_1_block12, block, json_reader_1_stmt15, then_statement, range(json_reader_1, 18445, 412, 520, 536)).
block(json_reader_1_block13, block, json_reader_1_stmt16, then_statement, range(json_reader_1, 18906, 129, 536, 541)).
block(json_reader_1_block14, block, json_reader_1_stmt17, then_statement, range(json_reader_1, 18927, 44, 537, 539)).
block(json_reader_1_block15, block, json_reader_1_code90, body, range(json_reader_1, 41730, 646, 1281, 1308)).
block(json_reader_1_block16, block, json_reader_1_stmt25, then_statement, range(json_reader_1, 41809, 82, 1284, 1287)).
block(json_reader_1_block17, block, json_reader_1_stmt25, else_statement, range(json_reader_1, 41897, 24, 1287, 1289)).
block(json_reader_1_block18, block, json_reader_1_stmt28, body, range(json_reader_1, 42025, 329, 1293, 1306)).
block(json_reader_1_block19, block, json_reader_1_stmt30, then_statement, range(json_reader_1, 42224, 64, 1297, 1301)).
block(json_reader_1_block20, block, json_reader_1_stmt31, then_statement, range(json_reader_1, 42318, 30, 1303, 1305)).
block(json_reader_1_block21, block, json_reader_1_code95, body, range(json_reader_1, 42866, 2335, 1324, 1412)).
block(json_reader_1_block22, block, json_reader_1_stmt36, body, range(json_reader_1, 43433, 1585, 1336, 1405)).
block(json_reader_1_block23, block, json_reader_1_stmt37, then_statement, range(json_reader_1, 43453, 119, 1337, 1344)).
block(json_reader_1_block24, block, json_reader_1_stmt39, then_statement, range(json_reader_1, 43500, 28, 1339, 1341)).
block(json_reader_1_block25, block, json_reader_1_stmt43, then_statement, range(json_reader_1, 43622, 72, 1347, 1351)).
block(json_reader_1_block26, block, json_reader_1_stmt44, then_statement, range(json_reader_1, 43740, 27, 1351, 1353)).
block(json_reader_1_block27, block, json_reader_1_stmt45, then_statement, range(json_reader_1, 43789, 835, 1355, 1390)).
block(json_reader_1_block28, block, json_reader_1_stmt46, then_statement, range(json_reader_1, 44644, 318, 1390, 1401)).
block(json_reader_1_block29, block, json_reader_1_stmt46, else_statement, range(json_reader_1, 44968, 44, 1401, 1404)).
block(json_reader_1_block30, block, json_reader_1_code106, body, range(json_reader_1, 49508, 454, 1573, 1590)).
block(json_reader_1_block31, block, json_reader_1_stmt51, then_statement, range(json_reader_1, 49693, 21, 1578, 1580)).
block(json_reader_1_block32, block, json_reader_1_stmt52, body, range(json_reader_1, 49772, 110, 1582, 1586)).
block(json_reader_1_block33, block, json_reader_1_stmt53, then_statement, range(json_reader_1, 49826, 50, 1583, 1585)).
block(json_reader_1_block34, block, json_reader_1_code109, body, range(json_reader_1, 49973, 960, 1592, 1616)).
%json_adapter_null_safe_test_1 - com.google.gson.regression.JsonAdapterNullSafeTest
block(json_adapter_null_safe_test_1_block1, block, json_adapter_null_safe_test_1_code11, body, range(json_adapter_null_safe_test_1, 1020, 74, 29, 32)).
block(json_adapter_null_safe_test_1_block2, block, json_adapter_null_safe_test_1_code15, body, range(json_adapter_null_safe_test_1, 1156, 118, 34, 37)).
block(json_adapter_null_safe_test_1_block3, block, json_adapter_null_safe_test_1_code22, body, range(json_adapter_null_safe_test_1, 1899, 292, 52, 59)).
%array_type_adapter_1 - com.google.gson.internal.bind.ArrayTypeAdapter
block(array_type_adapter_1_block1, block, array_type_adapter_1_code11, body, range(array_type_adapter_1, 1464, 457, 41, 51)).
block(array_type_adapter_1_block2, block, array_type_adapter_1_stmt2, then_statement, range(array_type_adapter_1, 1608, 30, 43, 45)).
%json_reader_internal_access_1 - com.google.gson.internal.JsonReaderInternalAccess
%streams_1 - com.google.gson.internal.Streams
block(streams_1_block1, block, streams_1_code3, body, range(streams_1, 2465, 103, 76, 78)).
%date_type_adapter_1 - com.google.gson.internal.bind.DateTypeAdapter
block(date_type_adapter_1_block1, block, date_type_adapter_1_code11, body, range(date_type_adapter_1, 1775, 106, 44, 46)).
%object_type_adapter_1 - com.google.gson.internal.bind.ObjectTypeAdapter
block(object_type_adapter_1_block1, block, object_type_adapter_1_code11, body, range(object_type_adapter_1, 1464, 142, 40, 45)).
block(object_type_adapter_1_block2, block, object_type_adapter_1_stmt1, then_statement, range(object_type_adapter_1, 1511, 70, 41, 43)).
%gson_1 - com.google.gson.Gson
block(gson_1_block1, block, gson_1_code41, body, range(gson_1, 8875, 394, 185, 191)).
block(gson_1_block2, block, gson_1_code42, body, range(gson_1, 9727, 3388, 198, 265)).
block(gson_1_block3, block, gson_1_code73, body, range(gson_1, 13206, 649, 267, 289)).
block(gson_1_block4, block, gson_1_stmt53, then_statement, range(gson_1, 13253, 41, 268, 270)).
block(gson_1_block5, block, gson_1_code78, body, range(gson_1, 13945, 651, 291, 313)).
block(gson_1_block6, block, gson_1_stmt55, then_statement, range(gson_1, 13992, 40, 292, 294)).
block(gson_1_block7, block, gson_1_code83, body, range(gson_1, 15043, 583, 323, 343)).
block(gson_1_block8, block, gson_1_stmt57, then_statement, range(gson_1, 15113, 39, 324, 326)).
block(gson_1_block9, block, gson_1_code84, body, range(gson_1, 15726, 386, 345, 355)).
block(gson_1_block10, block, gson_1_code89, body, range(gson_1, 16222, 870, 357, 382)).
block(gson_1_block11, block, gson_1_code94, body, range(gson_1, 17357, 1220, 391, 431)).
block(gson_1_block12, block, gson_1_stmt62, then_statement, range(gson_1, 17437, 45, 393, 395)).
block(gson_1_block13, block, gson_1_stmt65, then_statement, range(gson_1, 17632, 149, 399, 403)).
block(gson_1_block14, block, gson_1_stmt70, then_statement, range(gson_1, 17951, 33, 407, 409)).
block(gson_1_block15, block, gson_1_stmt71, body, range(gson_1, 17994, 458, 411, 424)).
block(gson_1_block16, block, gson_1_stmt74, body, range(gson_1, 18145, 229, 415, 422)).
block(gson_1_block17, block, gson_1_stmt76, then_statement, range(gson_1, 18241, 125, 417, 421)).
block(gson_1_block18, block, gson_1_stmt71, finally, range(gson_1, 18461, 112, 424, 430)).
block(gson_1_block19, block, gson_1_stmt78, then_statement, range(gson_1, 18534, 33, 427, 429)).
block(gson_1_block20, block, gson_1_code138, body, range(gson_1, 21390, 697, 483, 504)).
block(gson_1_block21, block, gson_1_stmt83, body, range(gson_1, 21745, 265, 490, 502)).
block(gson_1_block22, block, gson_1_stmt84, then_statement, range(gson_1, 21773, 104, 491, 496)).
block(gson_1_block23, block, gson_1_stmt86, then_statement, range(gson_1, 21969, 35, 499, 501)).
block(gson_1_block24, block, gson_1_code147, body, range(gson_1, 25213, 114, 571, 576)).
block(gson_1_block25, block, gson_1_code148, body, range(gson_1, 26239, 117, 593, 597)).
block(gson_1_block26, block, gson_1_code152, body, range(gson_1, 28431, 211, 637, 644)).
block(gson_1_block27, block, gson_1_stmt90, body, range(gson_1, 28441, 131, 638, 641)).
block(gson_1_block28, block, gson_1_code155, body, range(gson_1, 28955, 616, 652, 669)).
block(gson_1_block29, block, gson_1_code160, body, range(gson_1, 30753, 287, 704, 714)).
block(gson_1_block30, block, gson_1_stmt94, then_statement, range(gson_1, 30790, 55, 705, 707)).
block(gson_1_block31, block, gson_1_stmt96, then_statement, range(gson_1, 30922, 41, 709, 711)).
block(gson_1_block32, block, gson_1_code164, body, range(gson_1, 31185, 116, 719, 723)).
block(gson_1_block33, block, gson_1_code168, body, range(gson_1, 33257, 109, 764, 767)).
block(gson_1_block34, block, gson_1_code172, body, range(gson_1, 34587, 169, 788, 795)).
block(gson_1_block35, block, gson_1_stmt103, then_statement, range(gson_1, 34611, 26, 789, 791)).
block(gson_1_block36, block, gson_1_code179, body, range(gson_1, 37541, 170, 842, 847)).
block(gson_1_block37, block, gson_1_code185, body, range(gson_1, 38691, 920, 870, 898)).
block(gson_1_block38, block, gson_1_stmt111, body, range(gson_1, 38803, 243, 874, 881)).
block(gson_1_block39, block, gson_1_stmt111, finally, range(gson_1, 39563, 44, 895, 897)).
%constructor_constructor_1 - com.google.gson.internal.ConstructorConstructor
block(constructor_constructor_1_block1, block, constructor_constructor_1_code3, body, range(constructor_constructor_1, 1736, 51, 51, 53)).
block(constructor_constructor_1_block2, block, constructor_constructor_1_code12, body, range(constructor_constructor_1, 1851, 1310, 55, 95)).
block(constructor_constructor_1_block3, block, constructor_constructor_1_stmt5, then_statement, range(constructor_constructor_1, 2172, 160, 63, 69)).
block(constructor_constructor_1_block4, block, constructor_constructor_1_stmt7, then_statement, range(constructor_constructor_1, 2580, 163, 75, 81)).
block(constructor_constructor_1_block5, block, constructor_constructor_1_stmt9, then_statement, range(constructor_constructor_1, 2859, 40, 84, 86)).
block(constructor_constructor_1_block6, block, constructor_constructor_1_code39, body, range(constructor_constructor_1, 3246, 1105, 97, 125)).
block(constructor_constructor_1_block7, block, constructor_constructor_1_stmt11, body, range(constructor_constructor_1, 3256, 1032, 98, 122)).
block(constructor_constructor_1_block8, block, constructor_constructor_1_stmt13, then_statement, range(constructor_constructor_1, 3380, 50, 100, 102)).
block(constructor_constructor_1_block9, block, constructor_constructor_1_code50, body, range(constructor_constructor_1, 3593, 680, 105, 120)).
block(constructor_constructor_1_block10, block, constructor_constructor_1_stmt16, body, range(constructor_constructor_1, 3609, 101, 106, 109)).
%reflective_type_adapter_factory_1 - com.google.gson.internal.bind.ReflectiveTypeAdapterFactory
block(reflective_type_adapter_factory_1_block1, block, reflective_type_adapter_factory_1_code3, body, range(reflective_type_adapter_factory_1, 2101, 141, 54, 58)).
%type_token_1 - com.google.gson.reflect.TypeToken
block(type_token_1_block1, block, type_token_1_code3, body, range(type_token_1, 2362, 202, 71, 75)).
block(type_token_1_block2, block, type_token_1_code10, body, range(type_token_1, 3181, 25, 93, 95)).
block(type_token_1_block3, block, type_token_1_code11, body, range(type_token_1, 3294, 22, 100, 102)).
block(type_token_1_block4, block, type_token_1_code12, body, range(type_token_1, 8963, 31, 279, 281)).
block(type_token_1_block5, block, type_token_1_code13, body, range(type_token_1, 9361, 45, 295, 297)).
block(type_token_1_block6, block, type_token_1_code17, body, range(type_token_1, 9533, 40, 302, 304)).
%json_token_1 - com.google.gson.stream.JsonToken

%%% Statements
%json_writer_1 - com.google.gson.stream.JsonWriter
stmt(json_writer_1_stmt1, expression_statement, json_writer_1_block1, (statements, 0), range(json_writer_1, 5484, 36, 145, 145)).
stmt(json_writer_1_stmt2, for_statement, json_writer_1_block1, (statements, 1), range(json_writer_1, 5525, 103, 146, 148)).
stmt(json_writer_1_stmt3, expression_statement, json_writer_1_block2, (statements, 0), range(json_writer_1, 5565, 57, 147, 147)).
stmt(json_writer_1_stmt4, expression_statement, json_writer_1_block1, (statements, 2), range(json_writer_1, 5633, 32, 149, 149)).
stmt(json_writer_1_stmt5, expression_statement, json_writer_1_block1, (statements, 3), range(json_writer_1, 5670, 33, 150, 150)).
stmt(json_writer_1_stmt6, expression_statement, json_writer_1_block1, (statements, 4), range(json_writer_1, 5708, 32, 151, 151)).
stmt(json_writer_1_stmt7, expression_statement, json_writer_1_block1, (statements, 5), range(json_writer_1, 5745, 32, 152, 152)).
stmt(json_writer_1_stmt8, expression_statement, json_writer_1_block1, (statements, 6), range(json_writer_1, 5782, 32, 153, 153)).
stmt(json_writer_1_stmt9, expression_statement, json_writer_1_block1, (statements, 7), range(json_writer_1, 5819, 32, 154, 154)).
stmt(json_writer_1_stmt10, expression_statement, json_writer_1_block1, (statements, 8), range(json_writer_1, 5856, 32, 155, 155)).
stmt(json_writer_1_stmt11, expression_statement, json_writer_1_block1, (statements, 9), range(json_writer_1, 5893, 56, 156, 156)).
stmt(json_writer_1_stmt12, expression_statement, json_writer_1_block1, (statements, 10), range(json_writer_1, 5954, 45, 157, 157)).
stmt(json_writer_1_stmt13, expression_statement, json_writer_1_block1, (statements, 11), range(json_writer_1, 6004, 45, 158, 158)).
stmt(json_writer_1_stmt14, expression_statement, json_writer_1_block1, (statements, 12), range(json_writer_1, 6054, 45, 159, 159)).
stmt(json_writer_1_stmt15, expression_statement, json_writer_1_block1, (statements, 13), range(json_writer_1, 6104, 45, 160, 160)).
stmt(json_writer_1_stmt16, expression_statement, json_writer_1_block1, (statements, 14), range(json_writer_1, 6154, 46, 161, 161)).
stmt(json_writer_1_stmt17, expression_statement, json_writer_1_block3, (statements, 0), range(json_writer_1, 6385, 21, 170, 170)).
stmt(json_writer_1_stmt18, if_statement, json_writer_1_block4, (statements, 0), range(json_writer_1, 7064, 77, 198, 200)).
stmt(json_writer_1_stmt19, expression_statement, json_writer_1_block4, (statements, 1), range(json_writer_1, 7146, 15, 201, 201)).
stmt(json_writer_1_stmt20, expression_statement, json_writer_1_block6, (statements, 0), range(json_writer_1, 9270, 37, 269, 269)).
stmt(json_writer_1_stmt21, if_statement, json_writer_1_block7, (statements, 0), range(json_writer_1, 11369, 167, 354, 358)).
stmt(json_writer_1_stmt22, expression_statement, json_writer_1_block7, (statements, 1), range(json_writer_1, 11541, 28, 359, 359)).
%sql_date_type_adapter_1 - com.google.gson.internal.bind.SqlDateTypeAdapter
stmt(sql_date_type_adapter_1_stmt1, return_statement, sql_date_type_adapter_1_block1, (statements, 0), range(sql_date_type_adapter_1, 1703, 114, 42, 43)).
%type_adapters_1 - com.google.gson.internal.bind.TypeAdapters
stmt(type_adapters_1_stmt1, if_statement, type_adapters_1_block1, (statements, 0), range(type_adapters_1, 19169, 77, 595, 597)).
stmt(type_adapters_1_stmt2, return_statement, type_adapters_1_block2, (statements, 0), range(type_adapters_1, 19226, 12, 596, 596)).
stmt(type_adapters_1_stmt3, return_statement, type_adapters_1_block3, (statements, 0), range(type_adapters_1, 27952, 444, 854, 862)).
stmt(type_adapters_1_stmt4, return_statement, type_adapters_1_block4, (statements, 0), range(type_adapters_1, 28171, 76, 857, 857)).
stmt(type_adapters_1_stmt5, return_statement, type_adapters_1_block5, (statements, 0), range(type_adapters_1, 28557, 552, 867, 877)).
stmt(type_adapters_1_stmt6, variable_declaration_statement, type_adapters_1_block6, (statements, 0), range(type_adapters_1, 28776, 50, 870, 870)).
stmt(type_adapters_1_stmt7, return_statement, type_adapters_1_block6, (statements, 1), range(type_adapters_1, 28835, 86, 871, 871)).
stmt(type_adapters_1_stmt8, return_statement, type_adapters_1_block7, (statements, 0), range(type_adapters_1, 29290, 542, 882, 892)).
stmt(type_adapters_1_stmt9, variable_declaration_statement, type_adapters_1_block8, (statements, 0), range(type_adapters_1, 29509, 50, 885, 885)).
stmt(type_adapters_1_stmt10, return_statement, type_adapters_1_block8, (statements, 1), range(type_adapters_1, 29568, 81, 886, 886)).
stmt(type_adapters_1_stmt11, return_statement, type_adapters_1_block9, (statements, 0), range(type_adapters_1, 30142, 1075, 901, 926)).
stmt(type_adapters_1_stmt12, variable_declaration_statement, type_adapters_1_block10, (statements, 0), range(type_adapters_1, 30310, 63, 904, 904)).
stmt(type_adapters_1_stmt13, if_statement, type_adapters_1_block10, (statements, 1), range(type_adapters_1, 30382, 78, 905, 907)).
stmt(type_adapters_1_stmt14, return_statement, type_adapters_1_block11, (statements, 0), range(type_adapters_1, 30438, 12, 906, 906)).
%time_type_adapter_1 - com.google.gson.internal.bind.TimeTypeAdapter
stmt(time_type_adapter_1_stmt1, return_statement, time_type_adapter_1_block1, (statements, 0), range(time_type_adapter_1, 1727, 92, 44, 44)).
%map_type_adapter_factory_1 - com.google.gson.internal.bind.MapTypeAdapterFactory
stmt(map_type_adapter_factory_1_stmt1, expression_statement, map_type_adapter_factory_1_block1, (statements, 0), range(map_type_adapter_factory_1, 4164, 53, 111, 111)).
stmt(map_type_adapter_factory_1_stmt2, expression_statement, map_type_adapter_factory_1_block1, (statements, 1), range(map_type_adapter_factory_1, 4222, 61, 112, 112)).
stmt(map_type_adapter_factory_1_stmt3, variable_declaration_statement, map_type_adapter_factory_1_block2, (statements, 0), range(map_type_adapter_factory_1, 4375, 32, 116, 116)).
stmt(map_type_adapter_factory_1_stmt4, variable_declaration_statement, map_type_adapter_factory_1_block2, (statements, 1), range(map_type_adapter_factory_1, 4413, 50, 118, 118)).
stmt(map_type_adapter_factory_1_stmt5, if_statement, map_type_adapter_factory_1_block2, (statements, 2), range(map_type_adapter_factory_1, 4468, 68, 119, 121)).
stmt(map_type_adapter_factory_1_stmt6, return_statement, map_type_adapter_factory_1_block3, (statements, 0), range(map_type_adapter_factory_1, 4518, 12, 120, 120)).
%field_naming_policy_1 - com.google.gson.FieldNamingPolicy
%type_adapter_1 - com.google.gson.TypeAdapter
stmt(type_adapter_1_stmt1, return_statement, type_adapter_1_block1, (statements, 0), range(type_adapter_1, 7559, 486, 186, 201)).
%collection_type_adapter_factory_1 - com.google.gson.internal.bind.CollectionTypeAdapterFactory
stmt(collection_type_adapter_factory_1_stmt1, expression_statement, collection_type_adapter_factory_1_block1, (statements, 0), range(collection_type_adapter_factory_1, 1446, 53, 40, 40)).
stmt(collection_type_adapter_factory_1_stmt2, variable_declaration_statement, collection_type_adapter_factory_1_block2, (statements, 0), range(collection_type_adapter_factory_1, 1593, 32, 45, 45)).
stmt(collection_type_adapter_factory_1_stmt3, variable_declaration_statement, collection_type_adapter_factory_1_block2, (statements, 1), range(collection_type_adapter_factory_1, 1631, 50, 47, 47)).
stmt(collection_type_adapter_factory_1_stmt4, if_statement, collection_type_adapter_factory_1_block2, (statements, 2), range(collection_type_adapter_factory_1, 1686, 75, 48, 50)).
stmt(collection_type_adapter_factory_1_stmt5, return_statement, collection_type_adapter_factory_1_block3, (statements, 0), range(collection_type_adapter_factory_1, 1743, 12, 49, 49)).
%excluder_1 - com.google.gson.internal.Excluder
stmt(excluder_1_stmt1, variable_declaration_statement, excluder_1_block1, (statements, 0), range(excluder_1, 3814, 37, 112, 112)).
stmt(excluder_1_stmt2, variable_declaration_statement, excluder_1_block1, (statements, 1), range(excluder_1, 3856, 58, 113, 113)).
stmt(excluder_1_stmt3, variable_declaration_statement, excluder_1_block1, (statements, 2), range(excluder_1, 3919, 61, 114, 114)).
stmt(excluder_1_stmt4, if_statement, excluder_1_block1, (statements, 3), range(excluder_1, 3986, 66, 116, 118)).
stmt(excluder_1_stmt5, return_statement, excluder_1_block2, (statements, 0), range(excluder_1, 4034, 12, 117, 117)).
stmt(excluder_1_stmt6, if_statement, excluder_1_block3, (statements, 0), range(excluder_1, 6068, 162, 192, 195)).
stmt(excluder_1_stmt7, if_statement, excluder_1_block3, (statements, 1), range(excluder_1, 6236, 77, 197, 199)).
stmt(excluder_1_stmt8, if_statement, excluder_1_block3, (statements, 2), range(excluder_1, 6319, 57, 201, 203)).
stmt(excluder_1_stmt9, variable_declaration_statement, excluder_1_block3, (statements, 3), range(excluder_1, 6382, 95, 205, 205)).
stmt(excluder_1_stmt10, enhanced_for_statement, excluder_1_block3, (statements, 4), range(excluder_1, 6482, 139, 206, 210)).
stmt(excluder_1_stmt11, return_statement, excluder_1_block3, (statements, 5), range(excluder_1, 6627, 13, 212, 212)).
stmt(excluder_1_stmt12, return_statement, excluder_1_block7, (statements, 0), range(excluder_1, 6705, 105, 216, 217)).
%long_serialization_policy_1 - com.google.gson.LongSerializationPolicy
%json_adapter_annotation_type_adapter_factory_1 - com.google.gson.internal.bind.JsonAdapterAnnotationTypeAdapterFactory
stmt(json_adapter_annotation_type_adapter_factory_1_stmt1, expression_statement, json_adapter_annotation_type_adapter_factory_1_block1, (statements, 0), range(json_adapter_annotation_type_adapter_factory_1, 1319, 53, 37, 37)).
stmt(json_adapter_annotation_type_adapter_factory_1_stmt2, return_statement, json_adapter_annotation_type_adapter_factory_1_block2, (statements, 2), range(json_adapter_annotation_type_adapter_factory_1, 1642, 93, 47, 47)).
stmt(json_adapter_annotation_type_adapter_factory_1_stmt3, variable_declaration_statement, json_adapter_annotation_type_adapter_factory_1_block3, (statements, 0), range(json_adapter_annotation_type_adapter_factory_1, 1965, 36, 53, 53)).
stmt(json_adapter_annotation_type_adapter_factory_1_stmt4, if_statement, json_adapter_annotation_type_adapter_factory_1_block3, (statements, 2), range(json_adapter_annotation_type_adapter_factory_1, 2038, 662, 55, 66)).
stmt(json_adapter_annotation_type_adapter_factory_1_stmt5, if_statement, json_adapter_annotation_type_adapter_factory_1_stmt4, elseStatement, range(json_adapter_annotation_type_adapter_factory_1, 2269, 431, 58, 66)).
stmt(json_adapter_annotation_type_adapter_factory_1_stmt6, variable_declaration_statement, json_adapter_annotation_type_adapter_factory_1_block5, (statements, 0), range(json_adapter_annotation_type_adapter_factory_1, 2331, 81, 59, 59)).
stmt(json_adapter_annotation_type_adapter_factory_1_stmt7, expression_statement, json_adapter_annotation_type_adapter_factory_1_block5, (statements, 1), range(json_adapter_annotation_type_adapter_factory_1, 2419, 134, 60, 62)).
stmt(json_adapter_annotation_type_adapter_factory_1_stmt8, expression_statement, json_adapter_annotation_type_adapter_factory_1_block3, (statements, 3), range(json_adapter_annotation_type_adapter_factory_1, 2707, 37, 67, 67)).
%json_reader_1 - com.google.gson.stream.JsonReader
stmt(json_reader_1_stmt1, expression_statement, json_reader_1_block1, (statements, 0), range(json_reader_1, 10297, 46, 272, 272)).
stmt(json_reader_1_stmt2, if_statement, json_reader_1_block2, (statements, 0), range(json_reader_1, 11030, 75, 290, 292)).
stmt(json_reader_1_stmt3, expression_statement, json_reader_1_block2, (statements, 1), range(json_reader_1, 11110, 13, 293, 293)).
stmt(json_reader_1_stmt4, expression_statement, json_reader_1_block4, (statements, 0), range(json_reader_1, 12739, 23, 326, 326)).
stmt(json_reader_1_stmt5, return_statement, json_reader_1_block5, (statements, 0), range(json_reader_1, 12885, 15, 333, 333)).
stmt(json_reader_1_stmt6, variable_declaration_statement, json_reader_1_block6, (statements, 0), range(json_reader_1, 15646, 15, 427, 427)).
stmt(json_reader_1_stmt7, if_statement, json_reader_1_block6, (statements, 1), range(json_reader_1, 15666, 49, 428, 430)).
stmt(json_reader_1_stmt8, expression_statement, json_reader_1_block7, (statements, 0), range(json_reader_1, 15696, 13, 429, 429)).
stmt(json_reader_1_stmt9, switch_statement, json_reader_1_block6, (statements, 2), range(json_reader_1, 15721, 861, 432, 462)).
stmt(json_reader_1_stmt10, return_statement, json_reader_1_stmt9, (statements, 1), range(json_reader_1, 15770, 30, 434, 434)).
stmt(json_reader_1_stmt11, variable_declaration_statement, json_reader_1_block8, (statements, 0), range(json_reader_1, 16628, 37, 466, 466)).
stmt(json_reader_1_stmt12, if_statement, json_reader_1_block8, (statements, 1), range(json_reader_1, 16670, 2694, 467, 551)).
stmt(json_reader_1_stmt13, if_statement, json_reader_1_stmt12, elseStatement, range(json_reader_1, 16778, 2586, 469, 551)).
stmt(json_reader_1_stmt14, if_statement, json_reader_1_stmt13, elseStatement, range(json_reader_1, 17160, 2204, 482, 551)).
stmt(json_reader_1_stmt15, if_statement, json_reader_1_stmt14, elseStatement, range(json_reader_1, 18403, 961, 520, 551)).
stmt(json_reader_1_stmt16, if_statement, json_reader_1_stmt15, elseStatement, range(json_reader_1, 18863, 501, 536, 551)).
stmt(json_reader_1_stmt17, if_statement, json_reader_1_block13, (statements, 0), range(json_reader_1, 18914, 57, 537, 539)).
stmt(json_reader_1_stmt18, expression_statement, json_reader_1_block14, (statements, 0), range(json_reader_1, 18937, 26, 538, 538)).
stmt(json_reader_1_stmt19, expression_statement, json_reader_1_block13, (statements, 1), range(json_reader_1, 18978, 51, 540, 540)).
stmt(json_reader_1_stmt20, variable_declaration_statement, json_reader_1_block8, (statements, 2), range(json_reader_1, 19370, 32, 553, 553)).
stmt(json_reader_1_stmt21, switch_statement, json_reader_1_block8, (statements, 3), range(json_reader_1, 19407, 836, 554, 581)).
stmt(json_reader_1_stmt22, return_statement, json_reader_1_stmt21, (statements, 13), range(json_reader_1, 20118, 36, 578, 578)).
stmt(json_reader_1_stmt23, variable_declaration_statement, json_reader_1_block15, (statements, 0), range(json_reader_1, 41736, 28, 1282, 1282)).
stmt(json_reader_1_stmt24, expression_statement, json_reader_1_block15, (statements, 1), range(json_reader_1, 41769, 17, 1283, 1283)).
stmt(json_reader_1_stmt25, if_statement, json_reader_1_block15, (statements, 2), range(json_reader_1, 41791, 130, 1284, 1289)).
stmt(json_reader_1_stmt26, expression_statement, json_reader_1_block17, (statements, 0), range(json_reader_1, 41905, 10, 1288, 1288)).
stmt(json_reader_1_stmt27, expression_statement, json_reader_1_block15, (statements, 3), range(json_reader_1, 41927, 8, 1291, 1291)).
stmt(json_reader_1_stmt28, while_statement, json_reader_1_block15, (statements, 5), range(json_reader_1, 41955, 399, 1293, 1306)).
stmt(json_reader_1_stmt29, expression_statement, json_reader_1_block18, (statements, 0), range(json_reader_1, 42033, 15, 1294, 1294)).
stmt(json_reader_1_stmt30, if_statement, json_reader_1_block18, (statements, 1), range(json_reader_1, 42147, 141, 1297, 1301)).
stmt(json_reader_1_stmt31, if_statement, json_reader_1_block18, (statements, 2), range(json_reader_1, 42296, 52, 1303, 1305)).
stmt(json_reader_1_stmt32, return_statement, json_reader_1_block20, (statements, 0), range(json_reader_1, 42328, 12, 1304, 1304)).
stmt(json_reader_1_stmt33, variable_declaration_statement, json_reader_1_block21, (statements, 0), range(json_reader_1, 43351, 28, 1333, 1333)).
stmt(json_reader_1_stmt34, variable_declaration_statement, json_reader_1_block21, (statements, 1), range(json_reader_1, 43384, 12, 1334, 1334)).
stmt(json_reader_1_stmt35, variable_declaration_statement, json_reader_1_block21, (statements, 2), range(json_reader_1, 43401, 14, 1335, 1335)).
stmt(json_reader_1_stmt36, while_statement, json_reader_1_block21, (statements, 3), range(json_reader_1, 43420, 1598, 1336, 1405)).
stmt(json_reader_1_stmt37, if_statement, json_reader_1_block22, (statements, 0), range(json_reader_1, 43441, 131, 1337, 1344)).
stmt(json_reader_1_stmt38, expression_statement, json_reader_1_block23, (statements, 0), range(json_reader_1, 43463, 8, 1338, 1338)).
stmt(json_reader_1_stmt39, if_statement, json_reader_1_block23, (statements, 1), range(json_reader_1, 43480, 48, 1339, 1341)).
stmt(json_reader_1_stmt40, expression_statement, json_reader_1_block23, (statements, 2), range(json_reader_1, 43537, 8, 1342, 1342)).
stmt(json_reader_1_stmt41, expression_statement, json_reader_1_block23, (statements, 3), range(json_reader_1, 43554, 10, 1343, 1343)).
stmt(json_reader_1_stmt42, variable_declaration_statement, json_reader_1_block22, (statements, 1), range(json_reader_1, 43580, 20, 1346, 1346)).
stmt(json_reader_1_stmt43, if_statement, json_reader_1_block22, (statements, 2), range(json_reader_1, 43607, 160, 1347, 1353)).
stmt(json_reader_1_stmt44, if_statement, json_reader_1_stmt43, elseStatement, range(json_reader_1, 43700, 67, 1351, 1353)).
stmt(json_reader_1_stmt45, if_statement, json_reader_1_block22, (statements, 3), range(json_reader_1, 43775, 1237, 1355, 1404)).
stmt(json_reader_1_stmt46, if_statement, json_reader_1_stmt45, elseStatement, range(json_reader_1, 44630, 382, 1390, 1404)).
stmt(json_reader_1_stmt47, expression_statement, json_reader_1_block29, (statements, 0), range(json_reader_1, 44978, 8, 1402, 1402)).
stmt(json_reader_1_stmt48, return_statement, json_reader_1_block29, (statements, 1), range(json_reader_1, 44995, 9, 1403, 1403)).
stmt(json_reader_1_stmt49, expression_statement, json_reader_1_block30, (statements, 0), range(json_reader_1, 49565, 24, 1575, 1575)).
stmt(json_reader_1_stmt50, expression_statement, json_reader_1_block30, (statements, 1), range(json_reader_1, 49594, 6, 1576, 1576)).
stmt(json_reader_1_stmt51, if_statement, json_reader_1_block30, (statements, 2), range(json_reader_1, 49606, 108, 1578, 1580)).
stmt(json_reader_1_stmt52, for_statement, json_reader_1_block30, (statements, 3), range(json_reader_1, 49720, 162, 1582, 1586)).
stmt(json_reader_1_stmt53, if_statement, json_reader_1_block32, (statements, 0), range(json_reader_1, 49780, 96, 1583, 1585)).
stmt(json_reader_1_stmt54, return_statement, json_reader_1_block33, (statements, 0), range(json_reader_1, 49836, 7, 1584, 1584)).
stmt(json_reader_1_stmt55, expression_statement, json_reader_1_block34, (statements, 0), range(json_reader_1, 49979, 950, 1593, 1615)).
%json_adapter_null_safe_test_1 - com.google.gson.regression.JsonAdapterNullSafeTest
stmt(json_adapter_null_safe_test_1_stmt1, variable_declaration_statement, json_adapter_null_safe_test_1_block1, (statements, 0), range(json_adapter_null_safe_test_1, 1026, 39, 30, 30)).
stmt(json_adapter_null_safe_test_1_stmt2, expression_statement, json_adapter_null_safe_test_1_block1, (statements, 1), range(json_adapter_null_safe_test_1, 1070, 20, 31, 31)).
stmt(json_adapter_null_safe_test_1_stmt3, variable_declaration_statement, json_adapter_null_safe_test_1_block2, (statements, 0), range(json_adapter_null_safe_test_1, 1162, 66, 35, 35)).
stmt(json_adapter_null_safe_test_1_stmt4, return_statement, json_adapter_null_safe_test_1_block3, (statements, 2), range(json_adapter_null_safe_test_1, 2126, 57, 58, 58)).
%array_type_adapter_1 - com.google.gson.internal.bind.ArrayTypeAdapter
stmt(array_type_adapter_1_stmt1, variable_declaration_statement, array_type_adapter_1_block1, (statements, 0), range(array_type_adapter_1, 1472, 32, 42, 42)).
stmt(array_type_adapter_1_stmt2, if_statement, array_type_adapter_1_block1, (statements, 1), range(array_type_adapter_1, 1511, 127, 43, 45)).
stmt(array_type_adapter_1_stmt3, return_statement, array_type_adapter_1_block2, (statements, 0), range(array_type_adapter_1, 1618, 12, 44, 44)).
%json_reader_internal_access_1 - com.google.gson.internal.JsonReaderInternalAccess
%streams_1 - com.google.gson.internal.Streams
stmt(streams_1_stmt1, return_statement, streams_1_block1, (statements, 0), range(streams_1, 2471, 93, 77, 77)).
%date_type_adapter_1 - com.google.gson.internal.bind.DateTypeAdapter
stmt(date_type_adapter_1_stmt1, return_statement, date_type_adapter_1_block1, (statements, 0), range(date_type_adapter_1, 1783, 92, 45, 45)).
%object_type_adapter_1 - com.google.gson.internal.bind.ObjectTypeAdapter
stmt(object_type_adapter_1_stmt1, if_statement, object_type_adapter_1_block1, (statements, 0), range(object_type_adapter_1, 1472, 109, 41, 43)).
stmt(object_type_adapter_1_stmt2, return_statement, object_type_adapter_1_block1, (statements, 1), range(object_type_adapter_1, 1588, 12, 44, 44)).
%gson_1 - com.google.gson.Gson
stmt(gson_1_stmt1, constructor_invocation, gson_1_block1, (statements, 0), range(gson_1, 8881, 384, 186, 190)).
stmt(gson_1_stmt2, expression_statement, gson_1_block2, (statements, 0), range(gson_1, 9733, 75, 199, 199)).
stmt(gson_1_stmt3, expression_statement, gson_1_block2, (statements, 1), range(gson_1, 9813, 37, 200, 200)).
stmt(gson_1_stmt4, expression_statement, gson_1_block2, (statements, 2), range(gson_1, 9855, 59, 201, 201)).
stmt(gson_1_stmt5, expression_statement, gson_1_block2, (statements, 3), range(gson_1, 9919, 25, 202, 202)).
stmt(gson_1_stmt6, expression_statement, gson_1_block2, (statements, 4), range(gson_1, 9949, 37, 203, 203)).
stmt(gson_1_stmt7, expression_statement, gson_1_block2, (statements, 5), range(gson_1, 9991, 23, 204, 204)).
stmt(gson_1_stmt8, variable_declaration_statement, gson_1_block2, (statements, 6), range(gson_1, 10020, 73, 206, 206)).
stmt(gson_1_stmt9, expression_statement, gson_1_block2, (statements, 7), range(gson_1, 10155, 49, 209, 209)).
stmt(gson_1_stmt10, expression_statement, gson_1_block2, (statements, 8), range(gson_1, 10209, 41, 210, 210)).
stmt(gson_1_stmt11, expression_statement, gson_1_block2, (statements, 9), range(gson_1, 10333, 24, 213, 213)).
stmt(gson_1_stmt12, expression_statement, gson_1_block2, (statements, 10), range(gson_1, 10391, 39, 216, 216)).
stmt(gson_1_stmt13, expression_statement, gson_1_block2, (statements, 11), range(gson_1, 10482, 43, 219, 219)).
stmt(gson_1_stmt14, expression_statement, gson_1_block2, (statements, 12), range(gson_1, 10530, 44, 220, 220)).
stmt(gson_1_stmt15, expression_statement, gson_1_block2, (statements, 13), range(gson_1, 10579, 44, 221, 221)).
stmt(gson_1_stmt16, expression_statement, gson_1_block2, (statements, 14), range(gson_1, 10628, 41, 222, 222)).
stmt(gson_1_stmt17, expression_statement, gson_1_block2, (statements, 15), range(gson_1, 10674, 42, 223, 223)).
stmt(gson_1_stmt18, variable_declaration_statement, gson_1_block2, (statements, 16), range(gson_1, 10721, 71, 224, 224)).
stmt(gson_1_stmt19, expression_statement, gson_1_block2, (statements, 17), range(gson_1, 10797, 76, 225, 225)).
stmt(gson_1_stmt20, expression_statement, gson_1_block2, (statements, 18), range(gson_1, 10878, 131, 226, 227)).
stmt(gson_1_stmt21, expression_statement, gson_1_block2, (statements, 19), range(gson_1, 11014, 128, 228, 229)).
stmt(gson_1_stmt22, expression_statement, gson_1_block2, (statements, 20), range(gson_1, 11147, 43, 230, 230)).
stmt(gson_1_stmt23, expression_statement, gson_1_block2, (statements, 21), range(gson_1, 11195, 51, 231, 231)).
stmt(gson_1_stmt24, expression_statement, gson_1_block2, (statements, 22), range(gson_1, 11251, 51, 232, 232)).
stmt(gson_1_stmt25, expression_statement, gson_1_block2, (statements, 23), range(gson_1, 11307, 89, 233, 233)).
stmt(gson_1_stmt26, expression_statement, gson_1_block2, (statements, 24), range(gson_1, 11401, 99, 234, 234)).
stmt(gson_1_stmt27, expression_statement, gson_1_block2, (statements, 25), range(gson_1, 11505, 57, 235, 235)).
stmt(gson_1_stmt28, expression_statement, gson_1_block2, (statements, 26), range(gson_1, 11567, 46, 236, 236)).
stmt(gson_1_stmt29, expression_statement, gson_1_block2, (statements, 27), range(gson_1, 11618, 51, 237, 237)).
stmt(gson_1_stmt30, expression_statement, gson_1_block2, (statements, 28), range(gson_1, 11674, 50, 238, 238)).
stmt(gson_1_stmt31, expression_statement, gson_1_block2, (statements, 29), range(gson_1, 11729, 83, 239, 239)).
stmt(gson_1_stmt32, expression_statement, gson_1_block2, (statements, 30), range(gson_1, 11817, 83, 240, 240)).
stmt(gson_1_stmt33, expression_statement, gson_1_block2, (statements, 31), range(gson_1, 11905, 40, 241, 241)).
stmt(gson_1_stmt34, expression_statement, gson_1_block2, (statements, 32), range(gson_1, 11950, 40, 242, 242)).
stmt(gson_1_stmt35, expression_statement, gson_1_block2, (statements, 33), range(gson_1, 11995, 41, 243, 243)).
stmt(gson_1_stmt36, expression_statement, gson_1_block2, (statements, 34), range(gson_1, 12041, 45, 244, 244)).
stmt(gson_1_stmt37, expression_statement, gson_1_block2, (statements, 35), range(gson_1, 12091, 43, 245, 245)).
stmt(gson_1_stmt38, expression_statement, gson_1_block2, (statements, 36), range(gson_1, 12139, 49, 246, 246)).
stmt(gson_1_stmt39, expression_statement, gson_1_block2, (statements, 37), range(gson_1, 12193, 44, 247, 247)).
stmt(gson_1_stmt40, expression_statement, gson_1_block2, (statements, 38), range(gson_1, 12242, 39, 248, 248)).
stmt(gson_1_stmt41, expression_statement, gson_1_block2, (statements, 39), range(gson_1, 12286, 45, 249, 249)).
stmt(gson_1_stmt42, expression_statement, gson_1_block2, (statements, 40), range(gson_1, 12336, 39, 250, 250)).
stmt(gson_1_stmt43, expression_statement, gson_1_block2, (statements, 41), range(gson_1, 12380, 42, 251, 251)).
stmt(gson_1_stmt44, expression_statement, gson_1_block2, (statements, 42), range(gson_1, 12427, 46, 252, 252)).
stmt(gson_1_stmt45, expression_statement, gson_1_block2, (statements, 43), range(gson_1, 12478, 40, 253, 253)).
stmt(gson_1_stmt46, expression_statement, gson_1_block2, (statements, 44), range(gson_1, 12523, 42, 254, 254)).
stmt(gson_1_stmt47, expression_statement, gson_1_block2, (statements, 45), range(gson_1, 12629, 72, 257, 257)).
stmt(gson_1_stmt48, expression_statement, gson_1_block2, (statements, 46), range(gson_1, 12706, 93, 258, 258)).
stmt(gson_1_stmt49, expression_statement, gson_1_block2, (statements, 47), range(gson_1, 12804, 83, 259, 259)).
stmt(gson_1_stmt50, expression_statement, gson_1_block2, (statements, 48), range(gson_1, 12892, 41, 260, 260)).
stmt(gson_1_stmt51, expression_statement, gson_1_block2, (statements, 49), range(gson_1, 12938, 110, 261, 262)).
stmt(gson_1_stmt52, expression_statement, gson_1_block2, (statements, 50), range(gson_1, 13054, 57, 264, 264)).
stmt(gson_1_stmt53, if_statement, gson_1_block3, (statements, 0), range(gson_1, 13212, 82, 268, 270)).
stmt(gson_1_stmt54, return_statement, gson_1_block3, (statements, 1), range(gson_1, 13299, 552, 271, 288)).
stmt(gson_1_stmt55, if_statement, gson_1_block5, (statements, 0), range(gson_1, 13951, 81, 292, 294)).
stmt(gson_1_stmt56, return_statement, gson_1_block5, (statements, 1), range(gson_1, 14037, 555, 295, 312)).
stmt(gson_1_stmt57, if_statement, gson_1_block7, (statements, 0), range(gson_1, 15049, 103, 324, 326)).
stmt(gson_1_stmt58, return_statement, gson_1_block8, (statements, 0), range(gson_1, 15121, 25, 325, 325)).
stmt(gson_1_stmt59, return_statement, gson_1_block9, (statements, 0), range(gson_1, 15732, 376, 346, 354)).
stmt(gson_1_stmt60, return_statement, gson_1_block10, (statements, 0), range(gson_1, 16228, 860, 358, 381)).
stmt(gson_1_stmt61, variable_declaration_statement, gson_1_block11, (statements, 0), range(gson_1, 17363, 49, 392, 392)).
stmt(gson_1_stmt62, if_statement, gson_1_block11, (statements, 1), range(gson_1, 17417, 65, 393, 395)).
stmt(gson_1_stmt63, variable_declaration_statement, gson_1_block11, (statements, 2), range(gson_1, 17488, 66, 397, 397)).
stmt(gson_1_stmt64, variable_declaration_statement, gson_1_block11, (statements, 3), range(gson_1, 17559, 43, 398, 398)).
stmt(gson_1_stmt65, if_statement, gson_1_block11, (statements, 4), range(gson_1, 17607, 174, 399, 403)).
stmt(gson_1_stmt66, expression_statement, gson_1_block13, (statements, 0), range(gson_1, 17640, 64, 400, 400)).
stmt(gson_1_stmt67, expression_statement, gson_1_block13, (statements, 1), range(gson_1, 17711, 23, 401, 401)).
stmt(gson_1_stmt68, expression_statement, gson_1_block13, (statements, 2), range(gson_1, 17741, 34, 402, 402)).
stmt(gson_1_stmt69, variable_declaration_statement, gson_1_block11, (statements, 5), range(gson_1, 17841, 80, 406, 406)).
stmt(gson_1_stmt70, if_statement, gson_1_block11, (statements, 6), range(gson_1, 17926, 58, 407, 409)).
stmt(gson_1_stmt71, try_statement, gson_1_block11, (statements, 7), range(gson_1, 17990, 583, 411, 430)).
stmt(gson_1_stmt72, variable_declaration_statement, gson_1_block15, (statements, 0), range(gson_1, 18002, 55, 412, 412)).
stmt(gson_1_stmt73, expression_statement, gson_1_block15, (statements, 1), range(gson_1, 18064, 28, 413, 413)).
stmt(gson_1_stmt74, enhanced_for_statement, gson_1_block15, (statements, 2), range(gson_1, 18100, 274, 415, 422)).
stmt(gson_1_stmt75, variable_declaration_statement, gson_1_block16, (statements, 0), range(gson_1, 18155, 54, 416, 416)).
stmt(gson_1_stmt76, if_statement, gson_1_block16, (statements, 1), range(gson_1, 18218, 148, 417, 421)).
stmt(gson_1_stmt77, expression_statement, gson_1_block18, (statements, 0), range(gson_1, 18469, 25, 425, 425)).
stmt(gson_1_stmt78, if_statement, gson_1_block18, (statements, 1), range(gson_1, 18502, 65, 427, 429)).
stmt(gson_1_stmt79, expression_statement, gson_1_block19, (statements, 0), range(gson_1, 18544, 15, 428, 428)).
stmt(gson_1_stmt80, variable_declaration_statement, gson_1_block20, (statements, 0), range(gson_1, 21396, 30, 484, 484)).
stmt(gson_1_stmt81, if_statement, gson_1_block20, (statements, 1), range(gson_1, 21638, 56, 488, 488)).
stmt(gson_1_stmt82, expression_statement, gson_1_stmt81, thenStatement, range(gson_1, 21673, 21, 488, 488)).
stmt(gson_1_stmt83, enhanced_for_statement, gson_1_block20, (statements, 2), range(gson_1, 21700, 310, 490, 502)).
stmt(gson_1_stmt84, if_statement, gson_1_block21, (statements, 0), range(gson_1, 21753, 124, 491, 496)).
stmt(gson_1_stmt85, variable_declaration_statement, gson_1_block21, (statements, 1), range(gson_1, 21885, 54, 498, 498)).
stmt(gson_1_stmt86, if_statement, gson_1_block21, (statements, 2), range(gson_1, 21946, 58, 499, 501)).
stmt(gson_1_stmt87, return_statement, gson_1_block24, (statements, 1), range(gson_1, 25288, 35, 575, 575)).
stmt(gson_1_stmt88, variable_declaration_statement, gson_1_block25, (statements, 0), range(gson_1, 26245, 41, 594, 594)).
stmt(gson_1_stmt89, expression_statement, gson_1_block25, (statements, 1), range(gson_1, 26291, 31, 595, 595)).
stmt(gson_1_stmt90, try_statement, gson_1_block26, (statements, 0), range(gson_1, 28437, 201, 638, 643)).
stmt(gson_1_stmt91, variable_declaration_statement, gson_1_block27, (statements, 0), range(gson_1, 28449, 75, 639, 639)).
stmt(gson_1_stmt92, expression_statement, gson_1_block27, (statements, 1), range(gson_1, 28531, 35, 640, 640)).
stmt(gson_1_stmt93, variable_declaration_statement, gson_1_block28, (statements, 0), range(gson_1, 28961, 62, 653, 653)).
stmt(gson_1_stmt94, if_statement, gson_1_block29, (statements, 0), range(gson_1, 30759, 86, 705, 707)).
stmt(gson_1_stmt95, variable_declaration_statement, gson_1_block29, (statements, 1), range(gson_1, 30850, 47, 708, 708)).
stmt(gson_1_stmt96, if_statement, gson_1_block29, (statements, 2), range(gson_1, 30902, 61, 709, 711)).
stmt(gson_1_stmt97, expression_statement, gson_1_block29, (statements, 3), range(gson_1, 30968, 45, 712, 712)).
stmt(gson_1_stmt98, return_statement, gson_1_block29, (statements, 4), range(gson_1, 31018, 18, 713, 713)).
stmt(gson_1_stmt99, variable_declaration_statement, gson_1_block32, (statements, 0), range(gson_1, 31191, 47, 720, 720)).
stmt(gson_1_stmt100, expression_statement, gson_1_block32, (statements, 1), range(gson_1, 31243, 31, 721, 721)).
stmt(gson_1_stmt101, return_statement, gson_1_block32, (statements, 2), range(gson_1, 31279, 18, 722, 722)).
stmt(gson_1_stmt102, variable_declaration_statement, gson_1_block33, (statements, 0), range(gson_1, 33263, 48, 765, 765)).
stmt(gson_1_stmt103, if_statement, gson_1_block34, (statements, 0), range(gson_1, 34593, 44, 789, 791)).
stmt(gson_1_stmt104, variable_declaration_statement, gson_1_block34, (statements, 1), range(gson_1, 34642, 45, 792, 792)).
stmt(gson_1_stmt105, variable_declaration_statement, gson_1_block34, (statements, 2), range(gson_1, 34692, 41, 793, 793)).
stmt(gson_1_stmt106, variable_declaration_statement, gson_1_block36, (statements, 0), range(gson_1, 37547, 44, 843, 843)).
stmt(gson_1_stmt107, variable_declaration_statement, gson_1_block36, (statements, 1), range(gson_1, 37596, 45, 844, 844)).
stmt(gson_1_stmt108, variable_declaration_statement, gson_1_block37, (statements, 0), range(gson_1, 38697, 23, 871, 871)).
stmt(gson_1_stmt109, variable_declaration_statement, gson_1_block37, (statements, 1), range(gson_1, 38725, 40, 872, 872)).
stmt(gson_1_stmt110, expression_statement, gson_1_block37, (statements, 2), range(gson_1, 38770, 24, 873, 873)).
stmt(gson_1_stmt111, try_statement, gson_1_block37, (statements, 3), range(gson_1, 38799, 808, 874, 897)).
stmt(gson_1_stmt112, expression_statement, gson_1_block38, (statements, 0), range(gson_1, 38811, 14, 875, 875)).
stmt(gson_1_stmt113, expression_statement, gson_1_block38, (statements, 1), range(gson_1, 38832, 16, 876, 876)).
stmt(gson_1_stmt114, variable_declaration_statement, gson_1_block38, (statements, 2), range(gson_1, 38855, 63, 877, 877)).
stmt(gson_1_stmt115, variable_declaration_statement, gson_1_block38, (statements, 3), range(gson_1, 38925, 51, 878, 878)).
stmt(gson_1_stmt116, expression_statement, gson_1_block39, (statements, 0), range(gson_1, 39571, 30, 896, 896)).
%constructor_constructor_1 - com.google.gson.internal.ConstructorConstructor
stmt(constructor_constructor_1_stmt1, expression_statement, constructor_constructor_1_block1, (statements, 0), range(constructor_constructor_1, 1742, 41, 52, 52)).
stmt(constructor_constructor_1_stmt2, variable_declaration_statement, constructor_constructor_1_block2, (statements, 0), range(constructor_constructor_1, 1857, 38, 56, 56)).
stmt(constructor_constructor_1_stmt3, variable_declaration_statement, constructor_constructor_1_block2, (statements, 1), range(constructor_constructor_1, 1900, 56, 57, 57)).
stmt(constructor_constructor_1_stmt4, variable_declaration_statement, constructor_constructor_1_block2, (statements, 2), range(constructor_constructor_1, 2000, 142, 61, 62)).
stmt(constructor_constructor_1_stmt5, if_statement, constructor_constructor_1_block2, (statements, 3), range(constructor_constructor_1, 2147, 185, 63, 69)).
stmt(constructor_constructor_1_stmt6, variable_declaration_statement, constructor_constructor_1_block2, (statements, 4), range(constructor_constructor_1, 2391, 156, 72, 74)).
stmt(constructor_constructor_1_stmt7, if_statement, constructor_constructor_1_block2, (statements, 5), range(constructor_constructor_1, 2552, 191, 75, 81)).
stmt(constructor_constructor_1_stmt8, variable_declaration_statement, constructor_constructor_1_block2, (statements, 6), range(constructor_constructor_1, 2749, 73, 83, 83)).
stmt(constructor_constructor_1_stmt9, if_statement, constructor_constructor_1_block2, (statements, 7), range(constructor_constructor_1, 2827, 72, 84, 86)).
stmt(constructor_constructor_1_stmt10, return_statement, constructor_constructor_1_block5, (statements, 0), range(constructor_constructor_1, 2867, 26, 85, 85)).
stmt(constructor_constructor_1_stmt11, try_statement, constructor_constructor_1_block6, (statements, 0), range(constructor_constructor_1, 3252, 1095, 98, 124)).
stmt(constructor_constructor_1_stmt12, variable_declaration_statement, constructor_constructor_1_block7, (statements, 0), range(constructor_constructor_1, 3264, 76, 99, 99)).
stmt(constructor_constructor_1_stmt13, if_statement, constructor_constructor_1_block7, (statements, 1), range(constructor_constructor_1, 3347, 83, 100, 102)).
stmt(constructor_constructor_1_stmt14, expression_statement, constructor_constructor_1_block8, (statements, 0), range(constructor_constructor_1, 3390, 32, 101, 101)).
stmt(constructor_constructor_1_stmt15, return_statement, constructor_constructor_1_block7, (statements, 2), range(constructor_constructor_1, 3437, 845, 103, 121)).
stmt(constructor_constructor_1_stmt16, try_statement, constructor_constructor_1_block9, (statements, 0), range(constructor_constructor_1, 3605, 658, 106, 119)).
stmt(constructor_constructor_1_stmt17, variable_declaration_statement, constructor_constructor_1_block10, (statements, 0), range(constructor_constructor_1, 3623, 21, 107, 107)).
stmt(constructor_constructor_1_stmt18, return_statement, constructor_constructor_1_block10, (statements, 1), range(constructor_constructor_1, 3657, 41, 108, 108)).
%reflective_type_adapter_factory_1 - com.google.gson.internal.bind.ReflectiveTypeAdapterFactory
stmt(reflective_type_adapter_factory_1_stmt1, expression_statement, reflective_type_adapter_factory_1_block1, (statements, 0), range(reflective_type_adapter_factory_1, 2107, 53, 55, 55)).
stmt(reflective_type_adapter_factory_1_stmt2, expression_statement, reflective_type_adapter_factory_1_block1, (statements, 1), range(reflective_type_adapter_factory_1, 2165, 43, 56, 56)).
stmt(reflective_type_adapter_factory_1_stmt3, expression_statement, reflective_type_adapter_factory_1_block1, (statements, 2), range(reflective_type_adapter_factory_1, 2213, 25, 57, 57)).
%type_token_1 - com.google.gson.reflect.TypeToken
stmt(type_token_1_stmt1, expression_statement, type_token_1_block1, (statements, 0), range(type_token_1, 2368, 77, 72, 72)).
stmt(type_token_1_stmt2, expression_statement, type_token_1_block1, (statements, 1), range(type_token_1, 2450, 68, 73, 73)).
stmt(type_token_1_stmt3, expression_statement, type_token_1_block1, (statements, 2), range(type_token_1, 2523, 37, 74, 74)).
stmt(type_token_1_stmt4, return_statement, type_token_1_block2, (statements, 0), range(type_token_1, 3187, 15, 94, 94)).
stmt(type_token_1_stmt5, return_statement, type_token_1_block3, (statements, 0), range(type_token_1, 3300, 12, 101, 101)).
stmt(type_token_1_stmt6, return_statement, type_token_1_block4, (statements, 0), range(type_token_1, 8969, 21, 280, 280)).
stmt(type_token_1_stmt7, return_statement, type_token_1_block5, (statements, 0), range(type_token_1, 9367, 35, 296, 296)).
stmt(type_token_1_stmt8, return_statement, type_token_1_block6, (statements, 0), range(type_token_1, 9539, 30, 303, 303)).
%json_token_1 - com.google.gson.stream.JsonToken

%%% Expressions
%json_writer_1 - com.google.gson.stream.JsonWriter
expr(json_writer_1_expr1, assignment, json_writer_1_stmt1, expression, range(json_writer_1, 5484, 35, 145, 145), "REPLACEMENT_CHARS=new String[128]").
expr(json_writer_1_expr2, array_creation, json_writer_1_expr1, right_hand_side, range(json_writer_1, 5504, 15, 145, 145), "new String[128]").
expr(json_writer_1_expr3, variable_declaration_expression, json_writer_1_stmt2, (initializers, 0), range(json_writer_1, 5530, 9, 146, 146), "int i=0").
expr(json_writer_1_expr4, infix_expression, json_writer_1_stmt2, expression, range(json_writer_1, 5541, 9, 146, 146), "i <= 0x1f").
expr(json_writer_1_expr5, postfix_expression, json_writer_1_stmt2, (updaters, 0), range(json_writer_1, 5552, 3, 146, 146), "i++").
expr(json_writer_1_expr7, array_access, json_writer_1_expr6, left_hand_side, range(json_writer_1, 5565, 20, 147, 147), "REPLACEMENT_CHARS[i]").
expr(json_writer_1_expr6, assignment, json_writer_1_stmt3, expression, range(json_writer_1, 5565, 56, 147, 147), "REPLACEMENT_CHARS[i]=String.format(\"\\\\u%04x\",(int)i)").
expr(json_writer_1_expr8, method_invocation, json_writer_1_expr6, right_hand_side, range(json_writer_1, 5588, 33, 147, 147), "String.format(\"\\\\u%04x\",(int)i)").
expr(json_writer_1_expr9, cast_expression, json_writer_1_expr8, (arguments, 1), range(json_writer_1, 5613, 7, 147, 147), "(int)i").
expr(json_writer_1_expr10, assignment, json_writer_1_stmt4, expression, range(json_writer_1, 5633, 31, 149, 149), "REPLACEMENT_CHARS['\"']=\"\\\\\\\"\"").
expr(json_writer_1_expr11, array_access, json_writer_1_expr10, left_hand_side, range(json_writer_1, 5633, 22, 149, 149), "REPLACEMENT_CHARS['\"']").
expr(json_writer_1_expr12, assignment, json_writer_1_stmt5, expression, range(json_writer_1, 5670, 32, 150, 150), "REPLACEMENT_CHARS['\\\\']=\"\\\\\\\\\"").
expr(json_writer_1_expr13, array_access, json_writer_1_expr12, left_hand_side, range(json_writer_1, 5670, 23, 150, 150), "REPLACEMENT_CHARS['\\\\']").
expr(json_writer_1_expr14, assignment, json_writer_1_stmt6, expression, range(json_writer_1, 5708, 31, 151, 151), "REPLACEMENT_CHARS['\\t']=\"\\\\t\"").
expr(json_writer_1_expr15, array_access, json_writer_1_expr14, left_hand_side, range(json_writer_1, 5708, 23, 151, 151), "REPLACEMENT_CHARS['\\t']").
expr(json_writer_1_expr16, assignment, json_writer_1_stmt7, expression, range(json_writer_1, 5745, 31, 152, 152), "REPLACEMENT_CHARS['\\b']=\"\\\\b\"").
expr(json_writer_1_expr17, array_access, json_writer_1_expr16, left_hand_side, range(json_writer_1, 5745, 23, 152, 152), "REPLACEMENT_CHARS['\\b']").
expr(json_writer_1_expr19, array_access, json_writer_1_expr18, left_hand_side, range(json_writer_1, 5782, 23, 153, 153), "REPLACEMENT_CHARS['\\n']").
expr(json_writer_1_expr18, assignment, json_writer_1_stmt8, expression, range(json_writer_1, 5782, 31, 153, 153), "REPLACEMENT_CHARS['\\n']=\"\\\\n\"").
expr(json_writer_1_expr21, array_access, json_writer_1_expr20, left_hand_side, range(json_writer_1, 5819, 23, 154, 154), "REPLACEMENT_CHARS['\\r']").
expr(json_writer_1_expr20, assignment, json_writer_1_stmt9, expression, range(json_writer_1, 5819, 31, 154, 154), "REPLACEMENT_CHARS['\\r']=\"\\\\r\"").
expr(json_writer_1_expr23, array_access, json_writer_1_expr22, left_hand_side, range(json_writer_1, 5856, 23, 155, 155), "REPLACEMENT_CHARS['\\f']").
expr(json_writer_1_expr22, assignment, json_writer_1_stmt10, expression, range(json_writer_1, 5856, 31, 155, 155), "REPLACEMENT_CHARS['\\f']=\"\\\\f\"").
expr(json_writer_1_expr24, assignment, json_writer_1_stmt11, expression, range(json_writer_1, 5893, 55, 156, 156), "HTML_SAFE_REPLACEMENT_CHARS=REPLACEMENT_CHARS.clone()").
expr(json_writer_1_expr25, method_invocation, json_writer_1_expr24, right_hand_side, range(json_writer_1, 5923, 25, 156, 156), "REPLACEMENT_CHARS.clone()").
expr(json_writer_1_expr27, array_access, json_writer_1_expr26, left_hand_side, range(json_writer_1, 5954, 32, 157, 157), "HTML_SAFE_REPLACEMENT_CHARS['<']").
expr(json_writer_1_expr26, assignment, json_writer_1_stmt12, expression, range(json_writer_1, 5954, 44, 157, 157), "HTML_SAFE_REPLACEMENT_CHARS['<']=\"\\\\u003c\"").
expr(json_writer_1_expr29, array_access, json_writer_1_expr28, left_hand_side, range(json_writer_1, 6004, 32, 158, 158), "HTML_SAFE_REPLACEMENT_CHARS['>']").
expr(json_writer_1_expr28, assignment, json_writer_1_stmt13, expression, range(json_writer_1, 6004, 44, 158, 158), "HTML_SAFE_REPLACEMENT_CHARS['>']=\"\\\\u003e\"").
expr(json_writer_1_expr30, assignment, json_writer_1_stmt14, expression, range(json_writer_1, 6054, 44, 159, 159), "HTML_SAFE_REPLACEMENT_CHARS['&']=\"\\\\u0026\"").
expr(json_writer_1_expr31, array_access, json_writer_1_expr30, left_hand_side, range(json_writer_1, 6054, 32, 159, 159), "HTML_SAFE_REPLACEMENT_CHARS['&']").
expr(json_writer_1_expr32, assignment, json_writer_1_stmt15, expression, range(json_writer_1, 6104, 44, 160, 160), "HTML_SAFE_REPLACEMENT_CHARS['=']=\"\\\\u003d\"").
expr(json_writer_1_expr33, array_access, json_writer_1_expr32, left_hand_side, range(json_writer_1, 6104, 32, 160, 160), "HTML_SAFE_REPLACEMENT_CHARS['=']").
expr(json_writer_1_expr34, assignment, json_writer_1_stmt16, expression, range(json_writer_1, 6154, 45, 161, 161), "HTML_SAFE_REPLACEMENT_CHARS['\\'']=\"\\\\u0027\"").
expr(json_writer_1_expr35, array_access, json_writer_1_expr34, left_hand_side, range(json_writer_1, 6154, 33, 161, 161), "HTML_SAFE_REPLACEMENT_CHARS['\\'']").
expr(json_writer_1_expr36, array_creation, json_writer_1_code15, initializer, range(json_writer_1, 6335, 11, 167, 167), "new int[32]").
expr(json_writer_1_expr37, method_invocation, json_writer_1_stmt17, expression, range(json_writer_1, 6385, 20, 170, 170), "push(EMPTY_DOCUMENT)").
expr(json_writer_1_expr38, infix_expression, json_writer_1_stmt18, expression, range(json_writer_1, 7068, 11, 198, 198), "out == null").
expr(json_writer_1_expr41, this_expression, f_out_610, expression, range(json_writer_1, 7146, 4, 201, 201), "this").
expr(json_writer_1_expr40, field_access, json_writer_1_expr39, left_hand_side, range(json_writer_1, 7146, 8, 201, 201), "this.out").
expr(json_writer_1_expr39, assignment, json_writer_1_stmt19, expression, range(json_writer_1, 7146, 14, 201, 201), "this.out=out").
expr(json_writer_1_expr43, field_access, json_writer_1_expr42, left_hand_side, range(json_writer_1, 9270, 19, 269, 269), "this.serializeNulls").
expr(json_writer_1_expr42, assignment, json_writer_1_stmt20, expression, range(json_writer_1, 9270, 36, 269, 269), "this.serializeNulls=serializeNulls").
expr(json_writer_1_expr44, this_expression, f_serialize_nulls_608, expression, range(json_writer_1, 9270, 4, 269, 269), "this").
expr(json_writer_1_expr45, infix_expression, json_writer_1_stmt21, expression, range(json_writer_1, 11373, 25, 354, 354), "stackSize == stack.length").
expr(json_writer_1_expr47, array_access, json_writer_1_expr46, left_hand_side, range(json_writer_1, 11541, 18, 359, 359), "stack[stackSize++]").
expr(json_writer_1_expr46, assignment, json_writer_1_stmt22, expression, range(json_writer_1, 11541, 27, 359, 359), "stack[stackSize++]=newTop").
expr(json_writer_1_expr48, postfix_expression, json_writer_1_expr47, index, range(json_writer_1, 11547, 11, 359, 359), "stackSize++").
%sql_date_type_adapter_1 - com.google.gson.internal.bind.SqlDateTypeAdapter
expr(sql_date_type_adapter_1_expr1, class_instance_creation, sql_date_type_adapter_1_code8, initializer, range(sql_date_type_adapter_1, 1497, 330, 39, 45), "new TypeAdapterFactory(){\n  @SuppressWarnings(\"unchecked\") @Override public <T>TypeAdapter<T> create(  Gson gson,  TypeToken<T> typeToken){\n    return typeToken.getRawType() == java.sql.Date.class ? (TypeAdapter<T>)new SqlDateTypeAdapter() : null;\n  }\n}").
expr(sql_date_type_adapter_1_expr2, conditional_expression, sql_date_type_adapter_1_stmt1, expression, range(sql_date_type_adapter_1, 1710, 106, 42, 43), "typeToken.getRawType() == java.sql.Date.class ? (TypeAdapter<T>)new SqlDateTypeAdapter() : null").
expr(sql_date_type_adapter_1_expr3, infix_expression, sql_date_type_adapter_1_expr2, expression, range(sql_date_type_adapter_1, 1710, 45, 42, 42), "typeToken.getRawType() == java.sql.Date.class").
expr(sql_date_type_adapter_1_expr5, method_invocation, sql_date_type_adapter_1_expr3, left_operand, range(sql_date_type_adapter_1, 1710, 22, 42, 42), "typeToken.getRawType()").
expr(sql_date_type_adapter_1_expr6, type_literal, sql_date_type_adapter_1_expr3, right_operand, range(sql_date_type_adapter_1, 1736, 19, 42, 42), "java.sql.Date.class").
expr(sql_date_type_adapter_1_expr4, cast_expression, sql_date_type_adapter_1_expr2, then_expression, range(sql_date_type_adapter_1, 1768, 41, 43, 43), "(TypeAdapter<T>)new SqlDateTypeAdapter()").
%type_adapters_1 - com.google.gson.internal.bind.TypeAdapters
expr(type_adapters_1_expr1, class_instance_creation, type_adapters_1_code10, initializer, range(type_adapters_1, 2211, 691, 69, 89), "new TypeAdapter<Class>(){\n  @Override public void write(  JsonWriter out,  Class value) throws IOException {\n    if (value == null) {\n      out.nullValue();\n    }\n else {\n      throw new UnsupportedOperationException(\"Attempted to serialize java.lang.Class: \" + value.getName() + \". Forgot to register a type adapter?\");\n    }\n  }\n  @Override public Class read(  JsonReader in) throws IOException {\n    if (in.peek() == JsonToken.NULL) {\n      in.nextNull();\n      return null;\n    }\n else {\n      throw new UnsupportedOperationException(\"Attempted to deserialize a java.lang.Class. Forgot to register a type adapter?\");\n    }\n  }\n}").
expr(type_adapters_1_expr2, method_invocation, type_adapters_1_code20, initializer, range(type_adapters_1, 2961, 30, 90, 90), "newFactory(Class.class,CLASS)").
expr(type_adapters_1_expr3, type_literal, type_adapters_1_expr2, (arguments, 0), range(type_adapters_1, 2972, 11, 90, 90), "Class.class").
expr(type_adapters_1_expr4, class_instance_creation, type_adapters_1_code29, initializer, range(type_adapters_1, 3046, 1496, 92, 147), "new TypeAdapter<BitSet>(){\n  @Override public BitSet read(  JsonReader in) throws IOException {\n    if (in.peek() == JsonToken.NULL) {\n      in.nextNull();\n      return null;\n    }\n    BitSet bitset=new BitSet();\n    in.beginArray();\n    int i=0;\n    JsonToken tokenType=in.peek();\n    while (tokenType != JsonToken.END_ARRAY) {\n      boolean set;\nswitch (tokenType) {\ncase NUMBER:        set=in.nextInt() != 0;\n      break;\ncase BOOLEAN:    set=in.nextBoolean();\n  break;\ncase STRING:String stringValue=in.nextString();\ntry {\nset=Integer.parseInt(stringValue) != 0;\n}\n catch (NumberFormatException e) {\nthrow new JsonSyntaxException(\"Error: Expecting: bitset number value (1, 0), Found: \" + stringValue);\n}\nbreak;\ndefault:throw new JsonSyntaxException(\"Invalid bitset value type: \" + tokenType);\n}\nif (set) {\nbitset.set(i);\n}\n++i;\ntokenType=in.peek();\n}\nin.endArray();\nreturn bitset;\n}\n@Override public void write(JsonWriter out,BitSet src) throws IOException {\nif (src == null) {\nout.nullValue();\nreturn;\n}\nout.beginArray();\nfor (int i=0; i < src.length(); i++) {\nint value=(src.get(i)) ? 1 : 0;\nout.value(value);\n}\nout.endArray();\n}\n}").
expr(type_adapters_1_expr5, method_invocation, type_adapters_1_code39, initializer, range(type_adapters_1, 4604, 33, 149, 149), "newFactory(BitSet.class,BIT_SET)").
expr(type_adapters_1_expr6, type_literal, type_adapters_1_expr5, (arguments, 0), range(type_adapters_1, 4615, 12, 149, 149), "BitSet.class").
expr(type_adapters_1_expr7, class_instance_creation, type_adapters_1_code48, initializer, range(type_adapters_1, 4693, 593, 151, 171), "new TypeAdapter<Boolean>(){\n  @Override public Boolean read(  JsonReader in) throws IOException {\n    if (in.peek() == JsonToken.NULL) {\n      in.nextNull();\n      return null;\n    }\n else     if (in.peek() == JsonToken.STRING) {\n      return Boolean.parseBoolean(in.nextString());\n    }\n    return in.nextBoolean();\n  }\n  @Override public void write(  JsonWriter out,  Boolean value) throws IOException {\n    if (value == null) {\n      out.nullValue();\n      return;\n    }\n    out.value(value);\n  }\n}").
expr(type_adapters_1_expr8, class_instance_creation, type_adapters_1_code60, initializer, range(type_adapters_1, 5468, 399, 177, 189), "new TypeAdapter<Boolean>(){\n  @Override public Boolean read(  JsonReader in) throws IOException {\n    if (in.peek() == JsonToken.NULL) {\n      in.nextNull();\n      return null;\n    }\n    return Boolean.valueOf(in.nextString());\n  }\n  @Override public void write(  JsonWriter out,  Boolean value) throws IOException {\n    out.value(value == null ? \"null\" : value.toString());\n  }\n}").
expr(type_adapters_1_expr9, method_invocation, type_adapters_1_code70, initializer, range(type_adapters_1, 5935, 49, 192, 192), "newFactory(boolean.class,Boolean.class,BOOLEAN)").
expr(type_adapters_1_expr10, class_instance_creation, type_adapters_1_code78, initializer, range(type_adapters_1, 6036, 493, 194, 212), "new TypeAdapter<Number>(){\n  @Override public Number read(  JsonReader in) throws IOException {\n    if (in.peek() == JsonToken.NULL) {\n      in.nextNull();\n      return null;\n    }\n    try {\n      int intValue=in.nextInt();\n      return (byte)intValue;\n    }\n catch (    NumberFormatException e) {\n      throw new JsonSyntaxException(e);\n    }\n  }\n  @Override public void write(  JsonWriter out,  Number value) throws IOException {\n    out.value(value);\n  }\n}").
expr(type_adapters_1_expr11, method_invocation, type_adapters_1_code88, initializer, range(type_adapters_1, 6594, 40, 215, 215), "newFactory(byte.class,Byte.class,BYTE)").
expr(type_adapters_1_expr12, class_instance_creation, type_adapters_1_code96, initializer, range(type_adapters_1, 6687, 461, 217, 234), "new TypeAdapter<Number>(){\n  @Override public Number read(  JsonReader in) throws IOException {\n    if (in.peek() == JsonToken.NULL) {\n      in.nextNull();\n      return null;\n    }\n    try {\n      return (short)in.nextInt();\n    }\n catch (    NumberFormatException e) {\n      throw new JsonSyntaxException(e);\n    }\n  }\n  @Override public void write(  JsonWriter out,  Number value) throws IOException {\n    out.value(value);\n  }\n}").
expr(type_adapters_1_expr13, method_invocation, type_adapters_1_code106, initializer, range(type_adapters_1, 7214, 43, 237, 237), "newFactory(short.class,Short.class,SHORT)").
expr(type_adapters_1_expr14, class_instance_creation, type_adapters_1_code114, initializer, range(type_adapters_1, 7312, 453, 239, 256), "new TypeAdapter<Number>(){\n  @Override public Number read(  JsonReader in) throws IOException {\n    if (in.peek() == JsonToken.NULL) {\n      in.nextNull();\n      return null;\n    }\n    try {\n      return in.nextInt();\n    }\n catch (    NumberFormatException e) {\n      throw new JsonSyntaxException(e);\n    }\n  }\n  @Override public void write(  JsonWriter out,  Number value) throws IOException {\n    out.value(value);\n  }\n}").
expr(type_adapters_1_expr15, method_invocation, type_adapters_1_code124, initializer, range(type_adapters_1, 7832, 45, 258, 258), "newFactory(int.class,Integer.class,INTEGER)").
expr(type_adapters_1_expr17, class_instance_creation, type_adapters_1_expr16, expression, range(type_adapters_1, 7946, 398, 260, 271), "new TypeAdapter<AtomicInteger>(){\n  @Override public AtomicInteger read(  JsonReader in) throws IOException {\n    try {\n      return new AtomicInteger(in.nextInt());\n    }\n catch (    NumberFormatException e) {\n      throw new JsonSyntaxException(e);\n    }\n  }\n  @Override public void write(  JsonWriter out,  AtomicInteger value) throws IOException {\n    out.value(value.get());\n  }\n}").
expr(type_adapters_1_expr16, method_invocation, type_adapters_1_code132, initializer, range(type_adapters_1, 7946, 409, 260, 271), "new TypeAdapter<AtomicInteger>(){\n  @Override public AtomicInteger read(  JsonReader in) throws IOException {\n    try {\n      return new AtomicInteger(in.nextInt());\n    }\n catch (    NumberFormatException e) {\n      throw new JsonSyntaxException(e);\n    }\n  }\n  @Override public void write(  JsonWriter out,  AtomicInteger value) throws IOException {\n    out.value(value.get());\n  }\n}\n.nullSafe()").
expr(type_adapters_1_expr18, method_invocation, type_adapters_1_code142, initializer, range(type_adapters_1, 8429, 60, 273, 273), "newFactory(AtomicInteger.class,TypeAdapters.ATOMIC_INTEGER)").
expr(type_adapters_1_expr20, class_instance_creation, type_adapters_1_expr19, expression, range(type_adapters_1, 8558, 296, 275, 282), "new TypeAdapter<AtomicBoolean>(){\n  @Override public AtomicBoolean read(  JsonReader in) throws IOException {\n    return new AtomicBoolean(in.nextBoolean());\n  }\n  @Override public void write(  JsonWriter out,  AtomicBoolean value) throws IOException {\n    out.value(value.get());\n  }\n}").
expr(type_adapters_1_expr19, method_invocation, type_adapters_1_code150, initializer, range(type_adapters_1, 8558, 307, 275, 282), "new TypeAdapter<AtomicBoolean>(){\n  @Override public AtomicBoolean read(  JsonReader in) throws IOException {\n    return new AtomicBoolean(in.nextBoolean());\n  }\n  @Override public void write(  JsonWriter out,  AtomicBoolean value) throws IOException {\n    out.value(value.get());\n  }\n}\n.nullSafe()").
expr(type_adapters_1_expr21, method_invocation, type_adapters_1_code160, initializer, range(type_adapters_1, 8939, 60, 284, 284), "newFactory(AtomicBoolean.class,TypeAdapters.ATOMIC_BOOLEAN)").
expr(type_adapters_1_expr23, class_instance_creation, type_adapters_1_expr22, expression, range(type_adapters_1, 9079, 932, 286, 313), "new TypeAdapter<AtomicIntegerArray>(){\n  @Override public AtomicIntegerArray read(  JsonReader in) throws IOException {\n    List<Integer> list=new ArrayList<Integer>();\n    in.beginArray();\n    while (in.hasNext()) {\n      try {\n        int integer=in.nextInt();\n        list.add(integer);\n      }\n catch (      NumberFormatException e) {\n        throw new JsonSyntaxException(e);\n      }\n    }\n    in.endArray();\n    int length=list.size();\n    AtomicIntegerArray array=new AtomicIntegerArray(length);\n    for (int i=0; i < length; ++i) {\n      array.set(i,list.get(i));\n    }\n    return array;\n  }\n  @Override public void write(  JsonWriter out,  AtomicIntegerArray value) throws IOException {\n    out.beginArray();\n    for (int i=0, length=value.length(); i < length; i++) {\n      out.value(value.get(i));\n    }\n    out.endArray();\n  }\n}").
expr(type_adapters_1_expr22, method_invocation, type_adapters_1_code168, initializer, range(type_adapters_1, 9079, 943, 286, 313), "new TypeAdapter<AtomicIntegerArray>(){\n  @Override public AtomicIntegerArray read(  JsonReader in) throws IOException {\n    List<Integer> list=new ArrayList<Integer>();\n    in.beginArray();\n    while (in.hasNext()) {\n      try {\n        int integer=in.nextInt();\n        list.add(integer);\n      }\n catch (      NumberFormatException e) {\n        throw new JsonSyntaxException(e);\n      }\n    }\n    in.endArray();\n    int length=list.size();\n    AtomicIntegerArray array=new AtomicIntegerArray(length);\n    for (int i=0; i < length; ++i) {\n      array.set(i,list.get(i));\n    }\n    return array;\n  }\n  @Override public void write(  JsonWriter out,  AtomicIntegerArray value) throws IOException {\n    out.beginArray();\n    for (int i=0, length=value.length(); i < length; i++) {\n      out.value(value.get(i));\n    }\n    out.endArray();\n  }\n}\n.nullSafe()").
expr(type_adapters_1_expr24, method_invocation, type_adapters_1_code178, initializer, range(type_adapters_1, 10102, 71, 315, 315), "newFactory(AtomicIntegerArray.class,TypeAdapters.ATOMIC_INTEGER_ARRAY)").
expr(type_adapters_1_expr25, class_instance_creation, type_adapters_1_code186, initializer, range(type_adapters_1, 10225, 454, 317, 334), "new TypeAdapter<Number>(){\n  @Override public Number read(  JsonReader in) throws IOException {\n    if (in.peek() == JsonToken.NULL) {\n      in.nextNull();\n      return null;\n    }\n    try {\n      return in.nextLong();\n    }\n catch (    NumberFormatException e) {\n      throw new JsonSyntaxException(e);\n    }\n  }\n  @Override public void write(  JsonWriter out,  Number value) throws IOException {\n    out.value(value);\n  }\n}").
expr(type_adapters_1_expr26, class_instance_creation, type_adapters_1_code198, initializer, range(type_adapters_1, 10732, 358, 336, 349), "new TypeAdapter<Number>(){\n  @Override public Number read(  JsonReader in) throws IOException {\n    if (in.peek() == JsonToken.NULL) {\n      in.nextNull();\n      return null;\n    }\n    return (float)in.nextDouble();\n  }\n  @Override public void write(  JsonWriter out,  Number value) throws IOException {\n    out.value(value);\n  }\n}").
expr(type_adapters_1_expr27, class_instance_creation, type_adapters_1_code210, initializer, range(type_adapters_1, 11144, 350, 351, 364), "new TypeAdapter<Number>(){\n  @Override public Number read(  JsonReader in) throws IOException {\n    if (in.peek() == JsonToken.NULL) {\n      in.nextNull();\n      return null;\n    }\n    return in.nextDouble();\n  }\n  @Override public void write(  JsonWriter out,  Number value) throws IOException {\n    out.value(value);\n  }\n}").
expr(type_adapters_1_expr28, class_instance_creation, type_adapters_1_code222, initializer, range(type_adapters_1, 11548, 530, 366, 384), "new TypeAdapter<Number>(){\n  @Override public Number read(  JsonReader in) throws IOException {\n    JsonToken jsonToken=in.peek();\nswitch (jsonToken) {\ncase NULL:      in.nextNull();\n    return null;\ncase NUMBER:  return new LazilyParsedNumber(in.nextString());\ndefault:throw new JsonSyntaxException(\"Expecting number, got: \" + jsonToken);\n}\n}\n@Override public void write(JsonWriter out,Number value) throws IOException {\nout.value(value);\n}\n}").
expr(type_adapters_1_expr29, method_invocation, type_adapters_1_code232, initializer, range(type_adapters_1, 12139, 32, 386, 386), "newFactory(Number.class,NUMBER)").
expr(type_adapters_1_expr30, type_literal, type_adapters_1_expr29, (arguments, 0), range(type_adapters_1, 12150, 12, 386, 386), "Number.class").
expr(type_adapters_1_expr31, class_instance_creation, type_adapters_1_code241, initializer, range(type_adapters_1, 12231, 546, 388, 405), "new TypeAdapter<Character>(){\n  @Override public Character read(  JsonReader in) throws IOException {\n    if (in.peek() == JsonToken.NULL) {\n      in.nextNull();\n      return null;\n    }\n    String str=in.nextString();\n    if (str.length() != 1) {\n      throw new JsonSyntaxException(\"Expecting character, got: \" + str);\n    }\n    return str.charAt(0);\n  }\n  @Override public void write(  JsonWriter out,  Character value) throws IOException {\n    out.value(value == null ? null : String.valueOf(value));\n  }\n}").
expr(type_adapters_1_expr32, method_invocation, type_adapters_1_code251, initializer, range(type_adapters_1, 12847, 50, 408, 408), "newFactory(char.class,Character.class,CHARACTER)").
expr(type_adapters_1_expr33, class_instance_creation, type_adapters_1_code259, initializer, range(type_adapters_1, 12951, 544, 410, 428), "new TypeAdapter<String>(){\n  @Override public String read(  JsonReader in) throws IOException {\n    JsonToken peek=in.peek();\n    if (peek == JsonToken.NULL) {\n      in.nextNull();\n      return null;\n    }\n    if (peek == JsonToken.BOOLEAN) {\n      return Boolean.toString(in.nextBoolean());\n    }\n    return in.nextString();\n  }\n  @Override public void write(  JsonWriter out,  String value) throws IOException {\n    out.value(value);\n  }\n}").
expr(type_adapters_1_expr34, class_instance_creation, type_adapters_1_code271, initializer, range(type_adapters_1, 13560, 477, 430, 446), "new TypeAdapter<BigDecimal>(){\n  @Override public BigDecimal read(  JsonReader in) throws IOException {\n    if (in.peek() == JsonToken.NULL) {\n      in.nextNull();\n      return null;\n    }\n    try {\n      return new BigDecimal(in.nextString());\n    }\n catch (    NumberFormatException e) {\n      throw new JsonSyntaxException(e);\n    }\n  }\n  @Override public void write(  JsonWriter out,  BigDecimal value) throws IOException {\n    out.value(value);\n  }\n}").
expr(type_adapters_1_expr35, class_instance_creation, type_adapters_1_code283, initializer, range(type_adapters_1, 14102, 477, 448, 464), "new TypeAdapter<BigInteger>(){\n  @Override public BigInteger read(  JsonReader in) throws IOException {\n    if (in.peek() == JsonToken.NULL) {\n      in.nextNull();\n      return null;\n    }\n    try {\n      return new BigInteger(in.nextString());\n    }\n catch (    NumberFormatException e) {\n      throw new JsonSyntaxException(e);\n    }\n  }\n  @Override public void write(  JsonWriter out,  BigInteger value) throws IOException {\n    out.value(value);\n  }\n}").
expr(type_adapters_1_expr36, method_invocation, type_adapters_1_code293, initializer, range(type_adapters_1, 14640, 32, 466, 466), "newFactory(String.class,STRING)").
expr(type_adapters_1_expr37, type_literal, type_adapters_1_expr36, (arguments, 0), range(type_adapters_1, 14651, 12, 466, 466), "String.class").
expr(type_adapters_1_expr38, class_instance_creation, type_adapters_1_code302, initializer, range(type_adapters_1, 14741, 424, 468, 481), "new TypeAdapter<StringBuilder>(){\n  @Override public StringBuilder read(  JsonReader in) throws IOException {\n    if (in.peek() == JsonToken.NULL) {\n      in.nextNull();\n      return null;\n    }\n    return new StringBuilder(in.nextString());\n  }\n  @Override public void write(  JsonWriter out,  StringBuilder value) throws IOException {\n    out.value(value == null ? null : value.toString());\n  }\n}").
expr(type_adapters_1_expr39, method_invocation, type_adapters_1_code312, initializer, range(type_adapters_1, 15238, 47, 484, 484), "newFactory(StringBuilder.class,STRING_BUILDER)").
expr(type_adapters_1_expr40, class_instance_creation, type_adapters_1_code320, initializer, range(type_adapters_1, 15352, 420, 486, 499), "new TypeAdapter<StringBuffer>(){\n  @Override public StringBuffer read(  JsonReader in) throws IOException {\n    if (in.peek() == JsonToken.NULL) {\n      in.nextNull();\n      return null;\n    }\n    return new StringBuffer(in.nextString());\n  }\n  @Override public void write(  JsonWriter out,  StringBuffer value) throws IOException {\n    out.value(value == null ? null : value.toString());\n  }\n}").
expr(type_adapters_1_expr41, method_invocation, type_adapters_1_code330, initializer, range(type_adapters_1, 15844, 45, 502, 502), "newFactory(StringBuffer.class,STRING_BUFFER)").
expr(type_adapters_1_expr42, class_instance_creation, type_adapters_1_code338, initializer, range(type_adapters_1, 15937, 463, 504, 518), "new TypeAdapter<URL>(){\n  @Override public URL read(  JsonReader in) throws IOException {\n    if (in.peek() == JsonToken.NULL) {\n      in.nextNull();\n      return null;\n    }\n    String nextString=in.nextString();\n    return \"null\".equals(nextString) ? null : new URL(nextString);\n  }\n  @Override public void write(  JsonWriter out,  URL value) throws IOException {\n    out.value(value == null ? null : value.toExternalForm());\n  }\n}").
expr(type_adapters_1_expr43, method_invocation, type_adapters_1_code348, initializer, range(type_adapters_1, 16458, 26, 520, 520), "newFactory(URL.class,URL)").
expr(type_adapters_1_expr44, type_literal, type_adapters_1_expr43, (arguments, 0), range(type_adapters_1, 16469, 9, 520, 520), "URL.class").
expr(type_adapters_1_expr45, class_instance_creation, type_adapters_1_code357, initializer, range(type_adapters_1, 16532, 563, 522, 540), "new TypeAdapter<URI>(){\n  @Override public URI read(  JsonReader in) throws IOException {\n    if (in.peek() == JsonToken.NULL) {\n      in.nextNull();\n      return null;\n    }\n    try {\n      String nextString=in.nextString();\n      return \"null\".equals(nextString) ? null : new URI(nextString);\n    }\n catch (    URISyntaxException e) {\n      throw new JsonIOException(e);\n    }\n  }\n  @Override public void write(  JsonWriter out,  URI value) throws IOException {\n    out.value(value == null ? null : value.toASCIIString());\n  }\n}").
expr(type_adapters_1_expr46, method_invocation, type_adapters_1_code367, initializer, range(type_adapters_1, 17153, 26, 542, 542), "newFactory(URI.class,URI)").
expr(type_adapters_1_expr47, type_literal, type_adapters_1_expr46, (arguments, 0), range(type_adapters_1, 17164, 9, 542, 542), "URI.class").
expr(type_adapters_1_expr48, class_instance_creation, type_adapters_1_code376, initializer, range(type_adapters_1, 17244, 516, 544, 558), "new TypeAdapter<InetAddress>(){\n  @Override public InetAddress read(  JsonReader in) throws IOException {\n    if (in.peek() == JsonToken.NULL) {\n      in.nextNull();\n      return null;\n    }\n    return InetAddress.getByName(in.nextString());\n  }\n  @Override public void write(  JsonWriter out,  InetAddress value) throws IOException {\n    out.value(value == null ? null : value.getHostAddress());\n  }\n}").
expr(type_adapters_1_expr49, method_invocation, type_adapters_1_code386, initializer, range(type_adapters_1, 17831, 56, 561, 561), "newTypeHierarchyFactory(InetAddress.class,INET_ADDRESS)").
expr(type_adapters_1_expr50, class_instance_creation, type_adapters_1_code394, initializer, range(type_adapters_1, 17937, 405, 563, 576), "new TypeAdapter<UUID>(){\n  @Override public UUID read(  JsonReader in) throws IOException {\n    if (in.peek() == JsonToken.NULL) {\n      in.nextNull();\n      return null;\n    }\n    return java.util.UUID.fromString(in.nextString());\n  }\n  @Override public void write(  JsonWriter out,  UUID value) throws IOException {\n    out.value(value == null ? null : value.toString());\n  }\n}").
expr(type_adapters_1_expr51, method_invocation, type_adapters_1_code404, initializer, range(type_adapters_1, 18401, 28, 578, 578), "newFactory(UUID.class,UUID)").
expr(type_adapters_1_expr52, type_literal, type_adapters_1_expr51, (arguments, 0), range(type_adapters_1, 18412, 10, 578, 578), "UUID.class").
expr(type_adapters_1_expr53, method_invocation, type_adapters_1_code413, initializer, range(type_adapters_1, 18487, 314, 580, 589), "new TypeAdapter<Currency>(){\n  @Override public Currency read(  JsonReader in) throws IOException {\n    return Currency.getInstance(in.nextString());\n  }\n  @Override public void write(  JsonWriter out,  Currency value) throws IOException {\n    out.value(value.getCurrencyCode());\n  }\n}\n.nullSafe()").
expr(type_adapters_1_expr54, class_instance_creation, type_adapters_1_expr53, expression, range(type_adapters_1, 18487, 303, 580, 589), "new TypeAdapter<Currency>(){\n  @Override public Currency read(  JsonReader in) throws IOException {\n    return Currency.getInstance(in.nextString());\n  }\n  @Override public void write(  JsonWriter out,  Currency value) throws IOException {\n    out.value(value.getCurrencyCode());\n  }\n}").
expr(type_adapters_1_expr55, method_invocation, type_adapters_1_code423, initializer, range(type_adapters_1, 18863, 36, 590, 590), "newFactory(Currency.class,CURRENCY)").
expr(type_adapters_1_expr56, type_literal, type_adapters_1_expr55, (arguments, 0), range(type_adapters_1, 18874, 14, 590, 590), "Currency.class").
expr(type_adapters_1_expr57, class_instance_creation, type_adapters_1_code430, initializer, range(type_adapters_1, 18963, 791, 592, 611), "new TypeAdapterFactory(){\n  @SuppressWarnings(\"unchecked\") @Override public <T>TypeAdapter<T> create(  Gson gson,  TypeToken<T> typeToken){\n    if (typeToken.getRawType() != Timestamp.class) {\n      return null;\n    }\n    final TypeAdapter<Date> dateTypeAdapter=gson.getAdapter(Date.class);\n    return (TypeAdapter<T>)new TypeAdapter<Timestamp>(){\n      @Override public Timestamp read(      JsonReader in) throws IOException {\n        Date date=dateTypeAdapter.read(in);\n        return date != null ? new Timestamp(date.getTime()) : null;\n      }\n      @Override public void write(      JsonWriter out,      Timestamp value) throws IOException {\n        dateTypeAdapter.write(out,value);\n      }\n    }\n;\n  }\n}").
expr(type_adapters_1_expr59, method_invocation, type_adapters_1_expr58, left_operand, range(type_adapters_1, 19173, 22, 595, 595), "typeToken.getRawType()").
expr(type_adapters_1_expr58, infix_expression, type_adapters_1_stmt1, expression, range(type_adapters_1, 19173, 41, 595, 595), "typeToken.getRawType() != Timestamp.class").
expr(type_adapters_1_expr60, type_literal, type_adapters_1_expr58, right_operand, range(type_adapters_1, 19199, 15, 595, 595), "Timestamp.class").
expr(type_adapters_1_expr61, class_instance_creation, type_adapters_1_code442, initializer, range(type_adapters_1, 19812, 1999, 613, 676), "new TypeAdapter<Calendar>(){\n  private static final String YEAR=\"year\";\n  private static final String MONTH=\"month\";\n  private static final String DAY_OF_MONTH=\"dayOfMonth\";\n  private static final String HOUR_OF_DAY=\"hourOfDay\";\n  private static final String MINUTE=\"minute\";\n  private static final String SECOND=\"second\";\n  @Override public Calendar read(  JsonReader in) throws IOException {\n    if (in.peek() == JsonToken.NULL) {\n      in.nextNull();\n      return null;\n    }\n    in.beginObject();\n    int year=0;\n    int month=0;\n    int dayOfMonth=0;\n    int hourOfDay=0;\n    int minute=0;\n    int second=0;\n    while (in.peek() != JsonToken.END_OBJECT) {\n      String name=in.nextName();\n      int value=in.nextInt();\n      if (YEAR.equals(name)) {\n        year=value;\n      }\n else       if (MONTH.equals(name)) {\n        month=value;\n      }\n else       if (DAY_OF_MONTH.equals(name)) {\n        dayOfMonth=value;\n      }\n else       if (HOUR_OF_DAY.equals(name)) {\n        hourOfDay=value;\n      }\n else       if (MINUTE.equals(name)) {\n        minute=value;\n      }\n else       if (SECOND.equals(name)) {\n        second=value;\n      }\n    }\n    in.endObject();\n    return new GregorianCalendar(year,month,dayOfMonth,hourOfDay,minute,second);\n  }\n  @Override public void write(  JsonWriter out,  Calendar value) throws IOException {\n    if (value == null) {\n      out.nullValue();\n      return;\n    }\n    out.beginObject();\n    out.name(YEAR);\n    out.value(value.get(Calendar.YEAR));\n    out.name(MONTH);\n    out.value(value.get(Calendar.MONTH));\n    out.name(DAY_OF_MONTH);\n    out.value(value.get(Calendar.DAY_OF_MONTH));\n    out.name(HOUR_OF_DAY);\n    out.value(value.get(Calendar.HOUR_OF_DAY));\n    out.name(MINUTE);\n    out.value(value.get(Calendar.MINUTE));\n    out.name(SECOND);\n    out.value(value.get(Calendar.SECOND));\n    out.endObject();\n  }\n}").
expr(type_adapters_1_expr62, method_invocation, type_adapters_1_code452, initializer, range(type_adapters_1, 21878, 77, 679, 679), "newFactoryForMultipleTypes(Calendar.class,GregorianCalendar.class,CALENDAR)").
expr(type_adapters_1_expr63, class_instance_creation, type_adapters_1_code460, initializer, range(type_adapters_1, 22009, 1065, 681, 714), "new TypeAdapter<Locale>(){\n  @Override public Locale read(  JsonReader in) throws IOException {\n    if (in.peek() == JsonToken.NULL) {\n      in.nextNull();\n      return null;\n    }\n    String locale=in.nextString();\n    StringTokenizer tokenizer=new StringTokenizer(locale,\"_\");\n    String language=null;\n    String country=null;\n    String variant=null;\n    if (tokenizer.hasMoreElements()) {\n      language=tokenizer.nextToken();\n    }\n    if (tokenizer.hasMoreElements()) {\n      country=tokenizer.nextToken();\n    }\n    if (tokenizer.hasMoreElements()) {\n      variant=tokenizer.nextToken();\n    }\n    if (country == null && variant == null) {\n      return new Locale(language);\n    }\n else     if (variant == null) {\n      return new Locale(language,country);\n    }\n else {\n      return new Locale(language,country,variant);\n    }\n  }\n  @Override public void write(  JsonWriter out,  Locale value) throws IOException {\n    out.value(value == null ? null : value.toString());\n  }\n}").
expr(type_adapters_1_expr64, method_invocation, type_adapters_1_code470, initializer, range(type_adapters_1, 23135, 32, 716, 716), "newFactory(Locale.class,LOCALE)").
expr(type_adapters_1_expr65, type_literal, type_adapters_1_expr64, (arguments, 0), range(type_adapters_1, 23146, 12, 716, 716), "Locale.class").
expr(type_adapters_1_expr66, class_instance_creation, type_adapters_1_code479, initializer, range(type_adapters_1, 23232, 2148, 718, 788), "new TypeAdapter<JsonElement>(){\n  @Override public JsonElement read(  JsonReader in) throws IOException {\nswitch (in.peek()) {\ncase STRING:      return new JsonPrimitive(in.nextString());\ncase NUMBER:    String number=in.nextString();\n  return new JsonPrimitive(new LazilyParsedNumber(number));\ncase BOOLEAN:return new JsonPrimitive(in.nextBoolean());\ncase NULL:in.nextNull();\nreturn JsonNull.INSTANCE;\ncase BEGIN_ARRAY:JsonArray array=new JsonArray();\nin.beginArray();\nwhile (in.hasNext()) {\narray.add(read(in));\n}\nin.endArray();\nreturn array;\ncase BEGIN_OBJECT:JsonObject object=new JsonObject();\nin.beginObject();\nwhile (in.hasNext()) {\nobject.add(in.nextName(),read(in));\n}\nin.endObject();\nreturn object;\ncase END_DOCUMENT:case NAME:case END_OBJECT:case END_ARRAY:default:throw new IllegalArgumentException();\n}\n}\n@Override public void write(JsonWriter out,JsonElement value) throws IOException {\nif (value == null || value.isJsonNull()) {\nout.nullValue();\n}\n else if (value.isJsonPrimitive()) {\nJsonPrimitive primitive=value.getAsJsonPrimitive();\nif (primitive.isNumber()) {\nout.value(primitive.getAsNumber());\n}\n else if (primitive.isBoolean()) {\nout.value(primitive.getAsBoolean());\n}\n else {\nout.value(primitive.getAsString());\n}\n}\n else if (value.isJsonArray()) {\nout.beginArray();\nfor (JsonElement e : value.getAsJsonArray()) {\nwrite(out,e);\n}\nout.endArray();\n}\n else if (value.isJsonObject()) {\nout.beginObject();\nfor (Map.Entry<String,JsonElement> e : value.getAsJsonObject().entrySet()) {\nout.name(e.getKey());\nwrite(out,e.getValue());\n}\nout.endObject();\n}\n else {\nthrow new IllegalArgumentException(\"Couldn't write \" + value.getClass());\n}\n}\n}").
expr(type_adapters_1_expr67, method_invocation, type_adapters_1_code489, initializer, range(type_adapters_1, 25453, 56, 791, 791), "newTypeHierarchyFactory(JsonElement.class,JSON_ELEMENT)").
expr(type_adapters_1_expr68, class_instance_creation, type_adapters_1_code495, initializer, range(type_adapters_1, 26891, 504, 828, 840), "new TypeAdapterFactory(){\n  @SuppressWarnings({\"rawtypes\",\"unchecked\"}) @Override public <T>TypeAdapter<T> create(  Gson gson,  TypeToken<T> typeToken){\n    Class<? super T> rawType=typeToken.getRawType();\n    if (!Enum.class.isAssignableFrom(rawType) || rawType == Enum.class) {\n      return null;\n    }\n    if (!rawType.isEnum()) {\n      rawType=rawType.getSuperclass();\n    }\n    return (TypeAdapter<T>)new EnumTypeAdapter(rawType);\n  }\n}").
expr(type_adapters_1_expr69, class_instance_creation, type_adapters_1_stmt3, expression, range(type_adapters_1, 27959, 436, 854, 862), "new TypeAdapterFactory(){\n  @SuppressWarnings(\"unchecked\") @Override public <T>TypeAdapter<T> create(  Gson gson,  TypeToken<T> typeToken){\n    return typeToken.getRawType() == type ? (TypeAdapter<T>)typeAdapter : null;\n  }\n  @Override public String toString(){\n    return \"Factory[type=\" + type.getName() + \",adapter=\"+ typeAdapter+ \"]\";\n  }\n}").
expr(type_adapters_1_expr71, infix_expression, type_adapters_1_expr70, expression, range(type_adapters_1, 28178, 30, 857, 857), "typeToken.getRawType() == type").
expr(type_adapters_1_expr70, conditional_expression, type_adapters_1_stmt4, expression, range(type_adapters_1, 28178, 68, 857, 857), "typeToken.getRawType() == type ? (TypeAdapter<T>)typeAdapter : null").
expr(type_adapters_1_expr73, method_invocation, type_adapters_1_expr71, left_operand, range(type_adapters_1, 28178, 22, 857, 857), "typeToken.getRawType()").
expr(type_adapters_1_expr72, cast_expression, type_adapters_1_expr70, then_expression, range(type_adapters_1, 28211, 28, 857, 857), "(TypeAdapter<T>)typeAdapter").
expr(type_adapters_1_expr74, class_instance_creation, type_adapters_1_stmt5, expression, range(type_adapters_1, 28564, 544, 867, 877), "new TypeAdapterFactory(){\n  @SuppressWarnings(\"unchecked\") @Override public <T>TypeAdapter<T> create(  Gson gson,  TypeToken<T> typeToken){\n    Class<? super T> rawType=typeToken.getRawType();\n    return (rawType == unboxed || rawType == boxed) ? (TypeAdapter<T>)typeAdapter : null;\n  }\n  @Override public String toString(){\n    return \"Factory[type=\" + boxed.getName() + \"+\"+ unboxed.getName()+ \",adapter=\"+ typeAdapter+ \"]\";\n  }\n}").
expr(type_adapters_1_expr75, method_invocation, type_adapters_1_code513, initializer, range(type_adapters_1, 28803, 22, 870, 870), "typeToken.getRawType()").
expr(type_adapters_1_expr77, parenthesized_expression, type_adapters_1_expr76, expression, range(type_adapters_1, 28842, 40, 871, 871), "(rawType == unboxed || rawType == boxed)").
expr(type_adapters_1_expr76, conditional_expression, type_adapters_1_stmt7, expression, range(type_adapters_1, 28842, 78, 871, 871), "(rawType == unboxed || rawType == boxed) ? (TypeAdapter<T>)typeAdapter : null").
expr(type_adapters_1_expr79, infix_expression, type_adapters_1_expr77, expression, range(type_adapters_1, 28843, 38, 871, 871), "rawType == unboxed || rawType == boxed").
expr(type_adapters_1_expr80, infix_expression, type_adapters_1_expr79, left_operand, range(type_adapters_1, 28843, 18, 871, 871), "rawType == unboxed").
expr(type_adapters_1_expr81, infix_expression, type_adapters_1_expr79, right_operand, range(type_adapters_1, 28865, 16, 871, 871), "rawType == boxed").
expr(type_adapters_1_expr78, cast_expression, type_adapters_1_expr76, then_expression, range(type_adapters_1, 28885, 28, 871, 871), "(TypeAdapter<T>)typeAdapter").
expr(type_adapters_1_expr82, class_instance_creation, type_adapters_1_stmt8, expression, range(type_adapters_1, 29297, 534, 882, 892), "new TypeAdapterFactory(){\n  @SuppressWarnings(\"unchecked\") @Override public <T>TypeAdapter<T> create(  Gson gson,  TypeToken<T> typeToken){\n    Class<? super T> rawType=typeToken.getRawType();\n    return (rawType == base || rawType == sub) ? (TypeAdapter<T>)typeAdapter : null;\n  }\n  @Override public String toString(){\n    return \"Factory[type=\" + base.getName() + \"+\"+ sub.getName()+ \",adapter=\"+ typeAdapter+ \"]\";\n  }\n}").
expr(type_adapters_1_expr83, method_invocation, type_adapters_1_code525, initializer, range(type_adapters_1, 29536, 22, 885, 885), "typeToken.getRawType()").
expr(type_adapters_1_expr85, parenthesized_expression, type_adapters_1_expr84, expression, range(type_adapters_1, 29575, 35, 886, 886), "(rawType == base || rawType == sub)").
expr(type_adapters_1_expr84, conditional_expression, type_adapters_1_stmt10, expression, range(type_adapters_1, 29575, 73, 886, 886), "(rawType == base || rawType == sub) ? (TypeAdapter<T>)typeAdapter : null").
expr(type_adapters_1_expr88, infix_expression, type_adapters_1_expr87, left_operand, range(type_adapters_1, 29576, 15, 886, 886), "rawType == base").
expr(type_adapters_1_expr87, infix_expression, type_adapters_1_expr85, expression, range(type_adapters_1, 29576, 33, 886, 886), "rawType == base || rawType == sub").
expr(type_adapters_1_expr89, infix_expression, type_adapters_1_expr87, right_operand, range(type_adapters_1, 29595, 14, 886, 886), "rawType == sub").
expr(type_adapters_1_expr86, cast_expression, type_adapters_1_expr84, then_expression, range(type_adapters_1, 29613, 28, 886, 886), "(TypeAdapter<T>)typeAdapter").
expr(type_adapters_1_expr90, class_instance_creation, type_adapters_1_stmt11, expression, range(type_adapters_1, 30149, 1067, 901, 926), "new TypeAdapterFactory(){\n  @SuppressWarnings(\"unchecked\") @Override public <T2>TypeAdapter<T2> create(  Gson gson,  TypeToken<T2> typeToken){\n    final Class<? super T2> requestedType=typeToken.getRawType();\n    if (!clazz.isAssignableFrom(requestedType)) {\n      return null;\n    }\n    return (TypeAdapter<T2>)new TypeAdapter<T1>(){\n      @Override public void write(      JsonWriter out,      T1 value) throws IOException {\n        typeAdapter.write(out,value);\n      }\n      @Override public T1 read(      JsonReader in) throws IOException {\n        T1 result=typeAdapter.read(in);\n        if (result != null && !requestedType.isInstance(result)) {\n          throw new JsonSyntaxException(\"Expected a \" + requestedType.getName() + \" but was \"+ result.getClass().getName());\n        }\n        return result;\n      }\n    }\n;\n  }\n  @Override public String toString(){\n    return \"Factory[typeHierarchy=\" + clazz.getName() + \",adapter=\"+ typeAdapter+ \"]\";\n  }\n}").
expr(type_adapters_1_expr91, method_invocation, type_adapters_1_code538, initializer, range(type_adapters_1, 30350, 22, 904, 904), "typeToken.getRawType()").
expr(type_adapters_1_expr92, prefix_expression, type_adapters_1_stmt13, expression, range(type_adapters_1, 30386, 38, 905, 905), "!clazz.isAssignableFrom(requestedType)").
expr(type_adapters_1_expr93, method_invocation, type_adapters_1_expr92, operand, range(type_adapters_1, 30387, 37, 905, 905), "clazz.isAssignableFrom(requestedType)").
%time_type_adapter_1 - com.google.gson.internal.bind.TimeTypeAdapter
expr(time_type_adapter_1_expr1, class_instance_creation, time_type_adapter_1_code8, initializer, range(time_type_adapter_1, 1521, 308, 41, 46), "new TypeAdapterFactory(){\n  @SuppressWarnings(\"unchecked\") @Override public <T>TypeAdapter<T> create(  Gson gson,  TypeToken<T> typeToken){\n    return typeToken.getRawType() == Time.class ? (TypeAdapter<T>)new TimeTypeAdapter() : null;\n  }\n}").
expr(time_type_adapter_1_expr3, infix_expression, time_type_adapter_1_expr2, expression, range(time_type_adapter_1, 1734, 36, 44, 44), "typeToken.getRawType() == Time.class").
expr(time_type_adapter_1_expr2, conditional_expression, time_type_adapter_1_stmt1, expression, range(time_type_adapter_1, 1734, 84, 44, 44), "typeToken.getRawType() == Time.class ? (TypeAdapter<T>)new TimeTypeAdapter() : null").
expr(time_type_adapter_1_expr5, method_invocation, time_type_adapter_1_expr3, left_operand, range(time_type_adapter_1, 1734, 22, 44, 44), "typeToken.getRawType()").
expr(time_type_adapter_1_expr6, type_literal, time_type_adapter_1_expr3, right_operand, range(time_type_adapter_1, 1760, 10, 44, 44), "Time.class").
expr(time_type_adapter_1_expr4, cast_expression, time_type_adapter_1_expr2, then_expression, range(time_type_adapter_1, 1773, 38, 44, 44), "(TypeAdapter<T>)new TimeTypeAdapter()").
expr(time_type_adapter_1_expr7, class_instance_creation, time_type_adapter_1_expr4, expression, range(time_type_adapter_1, 1790, 21, 44, 44), "new TimeTypeAdapter()").
%map_type_adapter_factory_1 - com.google.gson.internal.bind.MapTypeAdapterFactory
expr(map_type_adapter_factory_1_expr3, this_expression, f_constructor_constructor_267, expression, range(map_type_adapter_factory_1, 4164, 4, 111, 111), "this").
expr(map_type_adapter_factory_1_expr2, field_access, map_type_adapter_factory_1_expr1, left_hand_side, range(map_type_adapter_factory_1, 4164, 27, 111, 111), "this.constructorConstructor").
expr(map_type_adapter_factory_1_expr1, assignment, map_type_adapter_factory_1_stmt1, expression, range(map_type_adapter_factory_1, 4164, 52, 111, 111), "this.constructorConstructor=constructorConstructor").
expr(map_type_adapter_factory_1_expr6, this_expression, f_complex_map_key_serialization_268, expression, range(map_type_adapter_factory_1, 4222, 4, 112, 112), "this").
expr(map_type_adapter_factory_1_expr5, field_access, map_type_adapter_factory_1_expr4, left_hand_side, range(map_type_adapter_factory_1, 4222, 31, 112, 112), "this.complexMapKeySerialization").
expr(map_type_adapter_factory_1_expr4, assignment, map_type_adapter_factory_1_stmt2, expression, range(map_type_adapter_factory_1, 4222, 60, 112, 112), "this.complexMapKeySerialization=complexMapKeySerialization").
expr(map_type_adapter_factory_1_expr7, method_invocation, map_type_adapter_factory_1_code8, initializer, range(map_type_adapter_factory_1, 4387, 19, 116, 116), "typeToken.getType()").
expr(map_type_adapter_factory_1_expr8, method_invocation, map_type_adapter_factory_1_code13, initializer, range(map_type_adapter_factory_1, 4440, 22, 118, 118), "typeToken.getRawType()").
expr(map_type_adapter_factory_1_expr9, prefix_expression, map_type_adapter_factory_1_stmt5, expression, range(map_type_adapter_factory_1, 4472, 36, 119, 119), "!Map.class.isAssignableFrom(rawType)").
expr(map_type_adapter_factory_1_expr11, type_literal, map_type_adapter_factory_1_expr10, expression, range(map_type_adapter_factory_1, 4473, 9, 119, 119), "Map.class").
expr(map_type_adapter_factory_1_expr10, method_invocation, map_type_adapter_factory_1_expr9, operand, range(map_type_adapter_factory_1, 4473, 35, 119, 119), "Map.class.isAssignableFrom(rawType)").
%field_naming_policy_1 - com.google.gson.FieldNamingPolicy
%type_adapter_1 - com.google.gson.TypeAdapter
expr(type_adapter_1_expr1, class_instance_creation, type_adapter_1_stmt1, expression, range(type_adapter_1, 7566, 478, 186, 201), "new TypeAdapter<T>(){\n  @Override public void write(  JsonWriter out,  T value) throws IOException {\n    if (value == null) {\n      out.nullValue();\n    }\n else {\n      TypeAdapter.this.write(out,value);\n    }\n  }\n  @Override public T read(  JsonReader reader) throws IOException {\n    if (reader.peek() == JsonToken.NULL) {\n      reader.nextNull();\n      return null;\n    }\n    return TypeAdapter.this.read(reader);\n  }\n}").
%collection_type_adapter_factory_1 - com.google.gson.internal.bind.CollectionTypeAdapterFactory
expr(collection_type_adapter_factory_1_expr2, field_access, collection_type_adapter_factory_1_expr1, left_hand_side, range(collection_type_adapter_factory_1, 1446, 27, 40, 40), "this.constructorConstructor").
expr(collection_type_adapter_factory_1_expr3, this_expression, f_constructor_constructor_234, expression, range(collection_type_adapter_factory_1, 1446, 4, 40, 40), "this").
expr(collection_type_adapter_factory_1_expr1, assignment, collection_type_adapter_factory_1_stmt1, expression, range(collection_type_adapter_factory_1, 1446, 52, 40, 40), "this.constructorConstructor=constructorConstructor").
expr(collection_type_adapter_factory_1_expr4, method_invocation, collection_type_adapter_factory_1_code9, initializer, range(collection_type_adapter_factory_1, 1605, 19, 45, 45), "typeToken.getType()").
expr(collection_type_adapter_factory_1_expr5, method_invocation, collection_type_adapter_factory_1_code14, initializer, range(collection_type_adapter_factory_1, 1658, 22, 47, 47), "typeToken.getRawType()").
expr(collection_type_adapter_factory_1_expr6, prefix_expression, collection_type_adapter_factory_1_stmt4, expression, range(collection_type_adapter_factory_1, 1690, 43, 48, 48), "!Collection.class.isAssignableFrom(rawType)").
expr(collection_type_adapter_factory_1_expr8, type_literal, collection_type_adapter_factory_1_expr7, expression, range(collection_type_adapter_factory_1, 1691, 16, 48, 48), "Collection.class").
expr(collection_type_adapter_factory_1_expr7, method_invocation, collection_type_adapter_factory_1_expr6, operand, range(collection_type_adapter_factory_1, 1691, 42, 48, 48), "Collection.class.isAssignableFrom(rawType)").
%excluder_1 - com.google.gson.internal.Excluder
expr(excluder_1_expr1, class_instance_creation, excluder_1_code12, initializer, range(excluder_1, 1919, 14, 52, 52), "new Excluder()").
expr(excluder_1_expr2, infix_expression, excluder_1_code21, initializer, range(excluder_1, 2006, 36, 55, 55), "Modifier.TRANSIENT | Modifier.STATIC").
expr(excluder_1_expr3, method_invocation, excluder_1_code31, initializer, range(excluder_1, 2185, 23, 58, 58), "Collections.emptyList()").
expr(excluder_1_expr4, method_invocation, excluder_1_code37, initializer, range(excluder_1, 2272, 23, 59, 59), "Collections.emptyList()").
expr(excluder_1_expr5, method_invocation, excluder_1_code42, initializer, range(excluder_1, 3833, 17, 112, 112), "type.getRawType()").
expr(excluder_1_expr6, method_invocation, excluder_1_code45, initializer, range(excluder_1, 3886, 27, 113, 113), "excludeClass(rawType,true)").
expr(excluder_1_expr7, method_invocation, excluder_1_code48, initializer, range(excluder_1, 3951, 28, 114, 114), "excludeClass(rawType,false)").
expr(excluder_1_expr8, infix_expression, excluder_1_stmt4, expression, range(excluder_1, 3990, 34, 116, 116), "!skipSerialize && !skipDeserialize").
expr(excluder_1_expr9, prefix_expression, excluder_1_expr8, left_operand, range(excluder_1, 3990, 14, 116, 116), "!skipSerialize").
expr(excluder_1_expr10, prefix_expression, excluder_1_expr8, right_operand, range(excluder_1, 4008, 16, 116, 116), "!skipDeserialize").
expr(excluder_1_expr12, infix_expression, excluder_1_expr11, left_operand, range(excluder_1, 6072, 35, 192, 192), "version != Excluder.IGNORE_VERSIONS").
expr(excluder_1_expr11, infix_expression, excluder_1_stmt6, expression, range(excluder_1, 6072, 130, 192, 193), "version != Excluder.IGNORE_VERSIONS && !isValidVersion(clazz.getAnnotation(Since.class),clazz.getAnnotation(Until.class))").
expr(excluder_1_expr14, prefix_expression, excluder_1_expr13, left_operand, range(excluder_1, 6240, 22, 197, 197), "!serializeInnerClasses").
expr(excluder_1_expr13, infix_expression, excluder_1_stmt7, expression, range(excluder_1, 6240, 45, 197, 197), "!serializeInnerClasses && isInnerClass(clazz)").
expr(excluder_1_expr15, method_invocation, excluder_1_expr13, right_operand, range(excluder_1, 6266, 19, 197, 197), "isInnerClass(clazz)").
expr(excluder_1_expr16, method_invocation, excluder_1_stmt8, expression, range(excluder_1, 6323, 25, 201, 201), "isAnonymousOrLocal(clazz)").
expr(excluder_1_expr17, conditional_expression, excluder_1_code53, initializer, range(excluder_1, 6413, 63, 205, 205), "serialize ? serializationStrategies : deserializationStrategies").
expr(excluder_1_expr18, infix_expression, excluder_1_stmt12, expression, range(excluder_1, 6712, 97, 216, 217), "!Enum.class.isAssignableFrom(clazz) && (clazz.isAnonymousClass() || clazz.isLocalClass())").
expr(excluder_1_expr19, prefix_expression, excluder_1_expr18, left_operand, range(excluder_1, 6712, 35, 216, 216), "!Enum.class.isAssignableFrom(clazz)").
expr(excluder_1_expr21, type_literal, excluder_1_expr20, expression, range(excluder_1, 6713, 10, 216, 216), "Enum.class").
expr(excluder_1_expr20, method_invocation, excluder_1_expr19, operand, range(excluder_1, 6713, 34, 216, 216), "Enum.class.isAssignableFrom(clazz)").
%long_serialization_policy_1 - com.google.gson.LongSerializationPolicy
%json_adapter_annotation_type_adapter_factory_1 - com.google.gson.internal.bind.JsonAdapterAnnotationTypeAdapterFactory
expr(json_adapter_annotation_type_adapter_factory_1_expr2, field_access, json_adapter_annotation_type_adapter_factory_1_expr1, left_hand_side, range(json_adapter_annotation_type_adapter_factory_1, 1319, 27, 37, 37), "this.constructorConstructor").
expr(json_adapter_annotation_type_adapter_factory_1_expr3, this_expression, f_constructor_constructor_254, expression, range(json_adapter_annotation_type_adapter_factory_1, 1319, 4, 37, 37), "this").
expr(json_adapter_annotation_type_adapter_factory_1_expr1, assignment, json_adapter_annotation_type_adapter_factory_1_stmt1, expression, range(json_adapter_annotation_type_adapter_factory_1, 1319, 52, 37, 37), "this.constructorConstructor=constructorConstructor").
expr(json_adapter_annotation_type_adapter_factory_1_expr4, cast_expression, json_adapter_annotation_type_adapter_factory_1_stmt2, expression, range(json_adapter_annotation_type_adapter_factory_1, 1649, 85, 47, 47), "(TypeAdapter<T>)getTypeAdapter(constructorConstructor,gson,targetType,annotation)").
expr(json_adapter_annotation_type_adapter_factory_1_expr5, method_invocation, json_adapter_annotation_type_adapter_factory_1_expr4, expression, range(json_adapter_annotation_type_adapter_factory_1, 1666, 68, 47, 47), "getTypeAdapter(constructorConstructor,gson,targetType,annotation)").
expr(json_adapter_annotation_type_adapter_factory_1_expr6, method_invocation, json_adapter_annotation_type_adapter_factory_1_code15, initializer, range(json_adapter_annotation_type_adapter_factory_1, 1982, 18, 53, 53), "annotation.value()").
expr(json_adapter_annotation_type_adapter_factory_1_expr7, method_invocation, json_adapter_annotation_type_adapter_factory_1_stmt4, expression, range(json_adapter_annotation_type_adapter_factory_1, 2042, 41, 55, 55), "TypeAdapter.class.isAssignableFrom(value)").
expr(json_adapter_annotation_type_adapter_factory_1_expr8, type_literal, json_adapter_annotation_type_adapter_factory_1_expr7, expression, range(json_adapter_annotation_type_adapter_factory_1, 2042, 17, 55, 55), "TypeAdapter.class").
expr(json_adapter_annotation_type_adapter_factory_1_expr10, type_literal, json_adapter_annotation_type_adapter_factory_1_expr9, expression, range(json_adapter_annotation_type_adapter_factory_1, 2273, 24, 58, 58), "TypeAdapterFactory.class").
expr(json_adapter_annotation_type_adapter_factory_1_expr9, method_invocation, json_adapter_annotation_type_adapter_factory_1_stmt5, expression, range(json_adapter_annotation_type_adapter_factory_1, 2273, 48, 58, 58), "TypeAdapterFactory.class.isAssignableFrom(value)").
expr(json_adapter_annotation_type_adapter_factory_1_expr11, cast_expression, json_adapter_annotation_type_adapter_factory_1_code21, initializer, range(json_adapter_annotation_type_adapter_factory_1, 2378, 33, 59, 59), "(Class<TypeAdapterFactory>)value").
expr(json_adapter_annotation_type_adapter_factory_1_expr12, assignment, json_adapter_annotation_type_adapter_factory_1_stmt7, expression, range(json_adapter_annotation_type_adapter_factory_1, 2419, 133, 60, 62), "typeAdapter=constructorConstructor.get(TypeToken.get(typeAdapterFactory)).construct().create(gson,fieldType)").
expr(json_adapter_annotation_type_adapter_factory_1_expr14, method_invocation, json_adapter_annotation_type_adapter_factory_1_expr13, expression, range(json_adapter_annotation_type_adapter_factory_1, 2433, 84, 60, 61), "constructorConstructor.get(TypeToken.get(typeAdapterFactory)).construct()").
expr(json_adapter_annotation_type_adapter_factory_1_expr13, method_invocation, json_adapter_annotation_type_adapter_factory_1_expr12, right_hand_side, range(json_adapter_annotation_type_adapter_factory_1, 2433, 119, 60, 62), "constructorConstructor.get(TypeToken.get(typeAdapterFactory)).construct().create(gson,fieldType)").
expr(json_adapter_annotation_type_adapter_factory_1_expr15, method_invocation, json_adapter_annotation_type_adapter_factory_1_expr14, expression, range(json_adapter_annotation_type_adapter_factory_1, 2433, 61, 60, 60), "constructorConstructor.get(TypeToken.get(typeAdapterFactory))").
expr(json_adapter_annotation_type_adapter_factory_1_expr16, method_invocation, json_adapter_annotation_type_adapter_factory_1_expr15, (arguments, 0), range(json_adapter_annotation_type_adapter_factory_1, 2460, 33, 60, 60), "TypeToken.get(typeAdapterFactory)").
expr(json_adapter_annotation_type_adapter_factory_1_expr17, assignment, json_adapter_annotation_type_adapter_factory_1_stmt8, expression, range(json_adapter_annotation_type_adapter_factory_1, 2707, 36, 67, 67), "typeAdapter=typeAdapter.nullSafe()").
expr(json_adapter_annotation_type_adapter_factory_1_expr18, method_invocation, json_adapter_annotation_type_adapter_factory_1_expr17, right_hand_side, range(json_adapter_annotation_type_adapter_factory_1, 2721, 22, 67, 67), "typeAdapter.nullSafe()").
%json_reader_1 - com.google.gson.stream.JsonReader
expr(json_reader_1_expr1, method_invocation, json_reader_1_code10, initializer, range(json_reader_1, 7351, 22, 192, 192), "\")]}'\\n\".toCharArray()").
expr(json_reader_1_expr2, array_creation, json_reader_1_code21, initializer, range(json_reader_1, 9428, 14, 238, 238), "new char[1024]").
expr(json_reader_1_expr3, array_creation, json_reader_1_code49, initializer, range(json_reader_1, 10247, 11, 269, 269), "new int[32]").
expr(json_reader_1_expr4, assignment, json_reader_1_stmt1, expression, range(json_reader_1, 10297, 45, 272, 272), "stack[stackSize++]=JsonScope.EMPTY_DOCUMENT").
expr(json_reader_1_expr5, array_access, json_reader_1_expr4, left_hand_side, range(json_reader_1, 10297, 18, 272, 272), "stack[stackSize++]").
expr(json_reader_1_expr6, postfix_expression, json_reader_1_expr5, index, range(json_reader_1, 10303, 11, 272, 272), "stackSize++").
expr(json_reader_1_expr7, array_creation, json_reader_1_code63, initializer, range(json_reader_1, 10843, 14, 283, 283), "new String[32]").
expr(json_reader_1_expr8, array_creation, json_reader_1_code72, initializer, range(json_reader_1, 10889, 11, 284, 284), "new int[32]").
expr(json_reader_1_expr9, infix_expression, json_reader_1_stmt2, expression, range(json_reader_1, 11034, 10, 290, 290), "in == null").
expr(json_reader_1_expr10, assignment, json_reader_1_stmt3, expression, range(json_reader_1, 11110, 12, 293, 293), "this.in=in").
expr(json_reader_1_expr12, this_expression, f_in_569, expression, range(json_reader_1, 11110, 4, 293, 293), "this").
expr(json_reader_1_expr11, field_access, json_reader_1_expr10, left_hand_side, range(json_reader_1, 11110, 7, 293, 293), "this.in").
expr(json_reader_1_expr14, field_access, json_reader_1_expr13, left_hand_side, range(json_reader_1, 12739, 12, 326, 326), "this.lenient").
expr(json_reader_1_expr13, assignment, json_reader_1_stmt4, expression, range(json_reader_1, 12739, 22, 326, 326), "this.lenient=lenient").
expr(json_reader_1_expr15, this_expression, f_lenient_556, expression, range(json_reader_1, 12739, 4, 326, 326), "this").
expr(json_reader_1_expr16, infix_expression, json_reader_1_stmt7, expression, range(json_reader_1, 15670, 16, 428, 428), "p == PEEKED_NONE").
expr(json_reader_1_expr17, assignment, json_reader_1_stmt8, expression, range(json_reader_1, 15696, 12, 429, 429), "p=doPeek()").
expr(json_reader_1_expr18, method_invocation, json_reader_1_expr17, right_hand_side, range(json_reader_1, 15700, 8, 429, 429), "doPeek()").
expr(json_reader_1_expr19, array_access, json_reader_1_code87, initializer, range(json_reader_1, 16644, 20, 466, 466), "stack[stackSize - 1]").
expr(json_reader_1_expr20, infix_expression, json_reader_1_expr19, index, range(json_reader_1, 16650, 13, 466, 466), "stackSize - 1").
expr(json_reader_1_expr21, infix_expression, json_reader_1_stmt12, expression, range(json_reader_1, 16674, 34, 467, 467), "peekStack == JsonScope.EMPTY_ARRAY").
expr(json_reader_1_expr22, infix_expression, json_reader_1_stmt13, expression, range(json_reader_1, 16782, 37, 469, 469), "peekStack == JsonScope.NONEMPTY_ARRAY").
expr(json_reader_1_expr24, infix_expression, json_reader_1_expr23, left_operand, range(json_reader_1, 17164, 35, 482, 482), "peekStack == JsonScope.EMPTY_OBJECT").
expr(json_reader_1_expr23, infix_expression, json_reader_1_stmt14, expression, range(json_reader_1, 17164, 77, 482, 482), "peekStack == JsonScope.EMPTY_OBJECT || peekStack == JsonScope.NONEMPTY_OBJECT").
expr(json_reader_1_expr25, infix_expression, json_reader_1_expr23, right_operand, range(json_reader_1, 17203, 38, 482, 482), "peekStack == JsonScope.NONEMPTY_OBJECT").
expr(json_reader_1_expr26, infix_expression, json_reader_1_stmt15, expression, range(json_reader_1, 18407, 36, 520, 520), "peekStack == JsonScope.DANGLING_NAME").
expr(json_reader_1_expr27, infix_expression, json_reader_1_stmt16, expression, range(json_reader_1, 18867, 37, 536, 536), "peekStack == JsonScope.EMPTY_DOCUMENT").
expr(json_reader_1_expr28, method_invocation, json_reader_1_stmt18, expression, range(json_reader_1, 18937, 25, 538, 538), "consumeNonExecutePrefix()").
expr(json_reader_1_expr30, array_access, json_reader_1_expr29, left_hand_side, range(json_reader_1, 18978, 20, 540, 540), "stack[stackSize - 1]").
expr(json_reader_1_expr29, assignment, json_reader_1_stmt19, expression, range(json_reader_1, 18978, 50, 540, 540), "stack[stackSize - 1]=JsonScope.NONEMPTY_DOCUMENT").
expr(json_reader_1_expr31, infix_expression, json_reader_1_expr30, index, range(json_reader_1, 18984, 13, 540, 540), "stackSize - 1").
expr(json_reader_1_expr32, method_invocation, json_reader_1_code89, initializer, range(json_reader_1, 19378, 23, 553, 553), "nextNonWhitespace(true)").
expr(json_reader_1_expr33, assignment, json_reader_1_stmt22, expression, range(json_reader_1, 20125, 28, 578, 578), "peeked=PEEKED_BEGIN_OBJECT").
expr(json_reader_1_expr35, this_expression, f_buffer_557, expression, range(json_reader_1, 41752, 4, 1282, 1282), "this").
expr(json_reader_1_expr34, field_access, json_reader_1_code94, initializer, range(json_reader_1, 41752, 11, 1282, 1282), "this.buffer").
expr(json_reader_1_expr36, assignment, json_reader_1_stmt24, expression, range(json_reader_1, 41769, 16, 1283, 1283), "lineStart-=pos").
expr(json_reader_1_expr37, infix_expression, json_reader_1_stmt25, expression, range(json_reader_1, 41795, 12, 1284, 1284), "limit != pos").
expr(json_reader_1_expr38, assignment, json_reader_1_stmt26, expression, range(json_reader_1, 41905, 9, 1288, 1288), "limit=0").
expr(json_reader_1_expr39, assignment, json_reader_1_stmt27, expression, range(json_reader_1, 41927, 7, 1291, 1291), "pos=0").
expr(json_reader_1_expr41, parenthesized_expression, json_reader_1_expr40, left_operand, range(json_reader_1, 41962, 55, 1293, 1293), "(total=in.read(buffer,limit,buffer.length - limit))").
expr(json_reader_1_expr40, infix_expression, json_reader_1_stmt28, expression, range(json_reader_1, 41962, 61, 1293, 1293), "(total=in.read(buffer,limit,buffer.length - limit)) != -1").
expr(json_reader_1_expr42, assignment, json_reader_1_expr41, expression, range(json_reader_1, 41963, 53, 1293, 1293), "total=in.read(buffer,limit,buffer.length - limit)").
expr(json_reader_1_expr43, method_invocation, json_reader_1_expr42, right_hand_side, range(json_reader_1, 41971, 45, 1293, 1293), "in.read(buffer,limit,buffer.length - limit)").
expr(json_reader_1_expr44, infix_expression, json_reader_1_expr43, (arguments, 2), range(json_reader_1, 41994, 21, 1293, 1293), "buffer.length - limit").
expr(json_reader_1_expr45, prefix_expression, json_reader_1_expr40, right_operand, range(json_reader_1, 42021, 2, 1293, 1293), "-1").
expr(json_reader_1_expr46, assignment, json_reader_1_stmt29, expression, range(json_reader_1, 42033, 14, 1294, 1294), "limit+=total").
expr(json_reader_1_expr47, infix_expression, json_reader_1_stmt30, expression, range(json_reader_1, 42151, 71, 1297, 1297), "lineNumber == 0 && lineStart == 0 && limit > 0 && buffer[0] == '\\ufeff'").
expr(json_reader_1_expr49, infix_expression, json_reader_1_expr48, left_operand, range(json_reader_1, 42151, 33, 1297, 1297), "lineNumber == 0 && lineStart == 0").
expr(json_reader_1_expr48, infix_expression, json_reader_1_expr47, left_operand, range(json_reader_1, 42151, 46, 1297, 1297), "lineNumber == 0 && lineStart == 0 && limit > 0").
expr(json_reader_1_expr50, infix_expression, json_reader_1_expr49, left_operand, range(json_reader_1, 42151, 15, 1297, 1297), "lineNumber == 0").
expr(json_reader_1_expr51, infix_expression, json_reader_1_expr49, right_operand, range(json_reader_1, 42170, 14, 1297, 1297), "lineStart == 0").
expr(json_reader_1_expr52, infix_expression, json_reader_1_expr48, right_operand, range(json_reader_1, 42188, 9, 1297, 1297), "limit > 0").
expr(json_reader_1_expr54, array_access, json_reader_1_expr53, left_operand, range(json_reader_1, 42201, 9, 1297, 1297), "buffer[0]").
expr(json_reader_1_expr53, infix_expression, json_reader_1_expr47, right_operand, range(json_reader_1, 42201, 21, 1297, 1297), "buffer[0] == '\\ufeff'").
expr(json_reader_1_expr55, infix_expression, json_reader_1_stmt31, expression, range(json_reader_1, 42300, 16, 1303, 1303), "limit >= minimum").
expr(json_reader_1_expr57, this_expression, f_buffer_557, expression, range(json_reader_1, 43367, 4, 1333, 1333), "this").
expr(json_reader_1_expr56, field_access, json_reader_1_code99, initializer, range(json_reader_1, 43367, 11, 1333, 1333), "this.buffer").
expr(json_reader_1_expr58, infix_expression, json_reader_1_stmt37, expression, range(json_reader_1, 43445, 6, 1337, 1337), "p == l").
expr(json_reader_1_expr59, assignment, json_reader_1_stmt38, expression, range(json_reader_1, 43463, 7, 1338, 1338), "pos=p").
expr(json_reader_1_expr60, prefix_expression, json_reader_1_stmt39, expression, range(json_reader_1, 43484, 14, 1339, 1339), "!fillBuffer(1)").
expr(json_reader_1_expr61, method_invocation, json_reader_1_expr60, operand, range(json_reader_1, 43485, 13, 1339, 1339), "fillBuffer(1)").
expr(json_reader_1_expr62, assignment, json_reader_1_stmt40, expression, range(json_reader_1, 43537, 7, 1342, 1342), "p=pos").
expr(json_reader_1_expr63, assignment, json_reader_1_stmt41, expression, range(json_reader_1, 43554, 9, 1343, 1343), "l=limit").
expr(json_reader_1_expr64, array_access, json_reader_1_code105, initializer, range(json_reader_1, 43588, 11, 1346, 1346), "buffer[p++]").
expr(json_reader_1_expr65, postfix_expression, json_reader_1_expr64, index, range(json_reader_1, 43595, 3, 1346, 1346), "p++").
expr(json_reader_1_expr66, infix_expression, json_reader_1_stmt43, expression, range(json_reader_1, 43611, 9, 1347, 1347), "c == '\\n'").
expr(json_reader_1_expr69, infix_expression, json_reader_1_expr68, left_operand, range(json_reader_1, 43704, 8, 1351, 1351), "c == ' '").
expr(json_reader_1_expr68, infix_expression, json_reader_1_expr67, left_operand, range(json_reader_1, 43704, 21, 1351, 1351), "c == ' ' || c == '\\r'").
expr(json_reader_1_expr67, infix_expression, json_reader_1_stmt44, expression, range(json_reader_1, 43704, 34, 1351, 1351), "c == ' ' || c == '\\r' || c == '\\t'").
expr(json_reader_1_expr70, infix_expression, json_reader_1_expr68, right_operand, range(json_reader_1, 43716, 9, 1351, 1351), "c == '\\r'").
expr(json_reader_1_expr71, infix_expression, json_reader_1_expr67, right_operand, range(json_reader_1, 43729, 9, 1351, 1351), "c == '\\t'").
expr(json_reader_1_expr72, infix_expression, json_reader_1_stmt45, expression, range(json_reader_1, 43779, 8, 1355, 1355), "c == '/'").
expr(json_reader_1_expr73, infix_expression, json_reader_1_stmt46, expression, range(json_reader_1, 44634, 8, 1390, 1390), "c == '#'").
expr(json_reader_1_expr74, assignment, json_reader_1_stmt47, expression, range(json_reader_1, 44978, 7, 1402, 1402), "pos=p").
expr(json_reader_1_expr75, method_invocation, json_reader_1_stmt49, expression, range(json_reader_1, 49565, 23, 1575, 1575), "nextNonWhitespace(true)").
expr(json_reader_1_expr76, postfix_expression, json_reader_1_stmt50, expression, range(json_reader_1, 49594, 5, 1576, 1576), "pos--").
expr(json_reader_1_expr79, infix_expression, json_reader_1_expr78, left_operand, range(json_reader_1, 49610, 31, 1578, 1578), "pos + NON_EXECUTE_PREFIX.length").
expr(json_reader_1_expr78, infix_expression, json_reader_1_expr77, left_operand, range(json_reader_1, 49610, 39, 1578, 1578), "pos + NON_EXECUTE_PREFIX.length > limit").
expr(json_reader_1_expr77, infix_expression, json_reader_1_stmt51, expression, range(json_reader_1, 49610, 81, 1578, 1578), "pos + NON_EXECUTE_PREFIX.length > limit && !fillBuffer(NON_EXECUTE_PREFIX.length)").
expr(json_reader_1_expr80, prefix_expression, json_reader_1_expr77, right_operand, range(json_reader_1, 49653, 38, 1578, 1578), "!fillBuffer(NON_EXECUTE_PREFIX.length)").
expr(json_reader_1_expr81, method_invocation, json_reader_1_expr80, operand, range(json_reader_1, 49654, 37, 1578, 1578), "fillBuffer(NON_EXECUTE_PREFIX.length)").
expr(json_reader_1_expr82, variable_declaration_expression, json_reader_1_stmt52, (initializers, 0), range(json_reader_1, 49725, 9, 1582, 1582), "int i=0").
expr(json_reader_1_expr83, infix_expression, json_reader_1_stmt52, expression, range(json_reader_1, 49736, 29, 1582, 1582), "i < NON_EXECUTE_PREFIX.length").
expr(json_reader_1_expr84, postfix_expression, json_reader_1_stmt52, (updaters, 0), range(json_reader_1, 49767, 3, 1582, 1582), "i++").
expr(json_reader_1_expr86, array_access, json_reader_1_expr85, left_operand, range(json_reader_1, 49784, 15, 1583, 1583), "buffer[pos + i]").
expr(json_reader_1_expr85, infix_expression, json_reader_1_stmt53, expression, range(json_reader_1, 49784, 40, 1583, 1583), "buffer[pos + i] != NON_EXECUTE_PREFIX[i]").
expr(json_reader_1_expr87, infix_expression, json_reader_1_expr86, index, range(json_reader_1, 49791, 7, 1583, 1583), "pos + i").
expr(json_reader_1_expr88, array_access, json_reader_1_expr85, right_operand, range(json_reader_1, 49803, 21, 1583, 1583), "NON_EXECUTE_PREFIX[i]").
expr(json_reader_1_expr89, assignment, json_reader_1_stmt55, expression, range(json_reader_1, 49979, 949, 1593, 1615), "JsonReaderInternalAccess.INSTANCE=new JsonReaderInternalAccess(){\n  @Override public void promoteNameToValue(  JsonReader reader) throws IOException {\n    if (reader instanceof JsonTreeReader) {\n      ((JsonTreeReader)reader).promoteNameToValue();\n      return;\n    }\n    int p=reader.peeked;\n    if (p == PEEKED_NONE) {\n      p=reader.doPeek();\n    }\n    if (p == PEEKED_DOUBLE_QUOTED_NAME) {\n      reader.peeked=PEEKED_DOUBLE_QUOTED;\n    }\n else     if (p == PEEKED_SINGLE_QUOTED_NAME) {\n      reader.peeked=PEEKED_SINGLE_QUOTED;\n    }\n else     if (p == PEEKED_UNQUOTED_NAME) {\n      reader.peeked=PEEKED_UNQUOTED;\n    }\n else {\n      throw new IllegalStateException(\"Expected a name but was \" + reader.peek() + \" \"+ \" at line \"+ reader.getLineNumber()+ \" column \"+ reader.getColumnNumber()+ \" path \"+ reader.getPath());\n    }\n  }\n}").
expr(json_reader_1_expr90, class_instance_creation, json_reader_1_expr89, right_hand_side, range(json_reader_1, 50015, 913, 1593, 1615), "new JsonReaderInternalAccess(){\n  @Override public void promoteNameToValue(  JsonReader reader) throws IOException {\n    if (reader instanceof JsonTreeReader) {\n      ((JsonTreeReader)reader).promoteNameToValue();\n      return;\n    }\n    int p=reader.peeked;\n    if (p == PEEKED_NONE) {\n      p=reader.doPeek();\n    }\n    if (p == PEEKED_DOUBLE_QUOTED_NAME) {\n      reader.peeked=PEEKED_DOUBLE_QUOTED;\n    }\n else     if (p == PEEKED_SINGLE_QUOTED_NAME) {\n      reader.peeked=PEEKED_SINGLE_QUOTED;\n    }\n else     if (p == PEEKED_UNQUOTED_NAME) {\n      reader.peeked=PEEKED_UNQUOTED;\n    }\n else {\n      throw new IllegalStateException(\"Expected a name but was \" + reader.peek() + \" \"+ \" at line \"+ reader.getLineNumber()+ \" column \"+ reader.getColumnNumber()+ \" path \"+ reader.getPath());\n    }\n  }\n}").
%json_adapter_null_safe_test_1 - com.google.gson.regression.JsonAdapterNullSafeTest
expr(json_adapter_null_safe_test_1_expr1, class_instance_creation, json_adapter_null_safe_test_1_code9, initializer, range(json_adapter_null_safe_test_1, 949, 10, 27, 27), "new Gson()").
expr(json_adapter_null_safe_test_1_expr2, class_instance_creation, json_adapter_null_safe_test_1_code13, initializer, range(json_adapter_null_safe_test_1, 1042, 22, 30, 30), "new Device(\"ec57803e\")").
expr(json_adapter_null_safe_test_1_expr3, method_invocation, json_adapter_null_safe_test_1_stmt2, expression, range(json_adapter_null_safe_test_1, 1070, 19, 31, 31), "gson.toJson(device)").
expr(json_adapter_null_safe_test_1_expr4, method_invocation, json_adapter_null_safe_test_1_code17, initializer, range(json_adapter_null_safe_test_1, 1178, 49, 35, 35), "gson.fromJson(\"{'id':'ec57803e2'}\",Device.class)").
expr(json_adapter_null_safe_test_1_expr5, type_literal, json_adapter_null_safe_test_1_expr4, (arguments, 1), range(json_adapter_null_safe_test_1, 1214, 12, 35, 35), "Device.class").
expr(json_adapter_null_safe_test_1_expr6, single_member_annotation, json_adapter_null_safe_test_1_code19, (modifiers, 0), range(json_adapter_null_safe_test_1, 1278, 45, 39, 39), "@JsonAdapter(Device.JsonAdapterFactory.class)").
expr(json_adapter_null_safe_test_1_expr7, type_literal, json_adapter_null_safe_test_1_expr6, value, range(json_adapter_null_safe_test_1, 1291, 31, 39, 39), "Device.JsonAdapterFactory.class").
expr(json_adapter_null_safe_test_1_expr8, cast_expression, json_adapter_null_safe_test_1_stmt4, expression, range(json_adapter_null_safe_test_1, 2133, 49, 58, 58), "(TypeAdapter)gson.getDelegateAdapter(this,type)").
expr(json_adapter_null_safe_test_1_expr9, method_invocation, json_adapter_null_safe_test_1_expr8, expression, range(json_adapter_null_safe_test_1, 2147, 35, 58, 58), "gson.getDelegateAdapter(this,type)").
expr(json_adapter_null_safe_test_1_expr10, this_expression, json_adapter_null_safe_test_1_expr9, (arguments, 0), range(json_adapter_null_safe_test_1, 2171, 4, 58, 58), "this").
%array_type_adapter_1 - com.google.gson.internal.bind.ArrayTypeAdapter
expr(array_type_adapter_1_expr1, class_instance_creation, array_type_adapter_1_code8, initializer, range(array_type_adapter_1, 1306, 619, 39, 52), "new TypeAdapterFactory(){\n  @SuppressWarnings({\"unchecked\",\"rawtypes\"}) @Override public <T>TypeAdapter<T> create(  Gson gson,  TypeToken<T> typeToken){\n    Type type=typeToken.getType();\n    if (!(type instanceof GenericArrayType || type instanceof Class && ((Class<?>)type).isArray())) {\n      return null;\n    }\n    Type componentType=$Gson$Types.getArrayComponentType(type);\n    TypeAdapter<?> componentTypeAdapter=gson.getAdapter(TypeToken.get(componentType));\n    return new ArrayTypeAdapter(gson,componentTypeAdapter,$Gson$Types.getRawType(componentType));\n  }\n}").
expr(array_type_adapter_1_expr2, method_invocation, array_type_adapter_1_code13, initializer, range(array_type_adapter_1, 1484, 19, 42, 42), "typeToken.getType()").
expr(array_type_adapter_1_expr3, prefix_expression, array_type_adapter_1_stmt2, expression, range(array_type_adapter_1, 1515, 91, 43, 43), "!(type instanceof GenericArrayType || type instanceof Class && ((Class<?>)type).isArray())").
expr(array_type_adapter_1_expr4, parenthesized_expression, array_type_adapter_1_expr3, operand, range(array_type_adapter_1, 1516, 90, 43, 43), "(type instanceof GenericArrayType || type instanceof Class && ((Class<?>)type).isArray())").
expr(array_type_adapter_1_expr5, infix_expression, array_type_adapter_1_expr4, expression, range(array_type_adapter_1, 1517, 88, 43, 43), "type instanceof GenericArrayType || type instanceof Class && ((Class<?>)type).isArray()").
expr(array_type_adapter_1_expr6, instanceof_expression, array_type_adapter_1_expr5, left_operand, range(array_type_adapter_1, 1517, 32, 43, 43), "type instanceof GenericArrayType").
expr(array_type_adapter_1_expr8, instanceof_expression, array_type_adapter_1_expr7, left_operand, range(array_type_adapter_1, 1553, 21, 43, 43), "type instanceof Class").
expr(array_type_adapter_1_expr7, infix_expression, array_type_adapter_1_expr5, right_operand, range(array_type_adapter_1, 1553, 52, 43, 43), "type instanceof Class && ((Class<?>)type).isArray()").
expr(array_type_adapter_1_expr10, parenthesized_expression, array_type_adapter_1_expr9, expression, range(array_type_adapter_1, 1578, 17, 43, 43), "((Class<?>)type)").
expr(array_type_adapter_1_expr9, method_invocation, array_type_adapter_1_expr7, right_operand, range(array_type_adapter_1, 1578, 27, 43, 43), "((Class<?>)type).isArray()").
expr(array_type_adapter_1_expr11, cast_expression, array_type_adapter_1_expr10, expression, range(array_type_adapter_1, 1579, 15, 43, 43), "(Class<?>)type").
%json_reader_internal_access_1 - com.google.gson.internal.JsonReaderInternalAccess
%streams_1 - com.google.gson.internal.Streams
expr(streams_1_expr1, conditional_expression, streams_1_stmt1, expression, range(streams_1, 2478, 85, 77, 77), "appendable instanceof Writer ? (Writer)appendable : new AppendableWriter(appendable)").
expr(streams_1_expr2, instanceof_expression, streams_1_expr1, expression, range(streams_1, 2478, 28, 77, 77), "appendable instanceof Writer").
expr(streams_1_expr3, cast_expression, streams_1_expr1, then_expression, range(streams_1, 2509, 19, 77, 77), "(Writer)appendable").
expr(streams_1_expr4, class_instance_creation, streams_1_expr1, else_expression, range(streams_1, 2531, 32, 77, 77), "new AppendableWriter(appendable)").
%date_type_adapter_1 - com.google.gson.internal.bind.DateTypeAdapter
expr(date_type_adapter_1_expr1, class_instance_creation, date_type_adapter_1_code8, initializer, range(date_type_adapter_1, 1577, 308, 42, 47), "new TypeAdapterFactory(){\n  @SuppressWarnings(\"unchecked\") @Override public <T>TypeAdapter<T> create(  Gson gson,  TypeToken<T> typeToken){\n    return typeToken.getRawType() == Date.class ? (TypeAdapter<T>)new DateTypeAdapter() : null;\n  }\n}").
expr(date_type_adapter_1_expr5, method_invocation, date_type_adapter_1_expr3, left_operand, range(date_type_adapter_1, 1790, 22, 45, 45), "typeToken.getRawType()").
expr(date_type_adapter_1_expr3, infix_expression, date_type_adapter_1_expr2, expression, range(date_type_adapter_1, 1790, 36, 45, 45), "typeToken.getRawType() == Date.class").
expr(date_type_adapter_1_expr2, conditional_expression, date_type_adapter_1_stmt1, expression, range(date_type_adapter_1, 1790, 84, 45, 45), "typeToken.getRawType() == Date.class ? (TypeAdapter<T>)new DateTypeAdapter() : null").
expr(date_type_adapter_1_expr6, type_literal, date_type_adapter_1_expr3, right_operand, range(date_type_adapter_1, 1816, 10, 45, 45), "Date.class").
expr(date_type_adapter_1_expr4, cast_expression, date_type_adapter_1_expr2, then_expression, range(date_type_adapter_1, 1829, 38, 45, 45), "(TypeAdapter<T>)new DateTypeAdapter()").
expr(date_type_adapter_1_expr7, class_instance_creation, date_type_adapter_1_expr4, expression, range(date_type_adapter_1, 1846, 21, 45, 45), "new DateTypeAdapter()").
%object_type_adapter_1 - com.google.gson.internal.bind.ObjectTypeAdapter
expr(object_type_adapter_1_expr1, class_instance_creation, object_type_adapter_1_code8, initializer, range(object_type_adapter_1, 1325, 285, 38, 46), "new TypeAdapterFactory(){\n  @SuppressWarnings(\"unchecked\") @Override public <T>TypeAdapter<T> create(  Gson gson,  TypeToken<T> type){\n    if (type.getRawType() == Object.class) {\n      return (TypeAdapter<T>)new ObjectTypeAdapter(gson);\n    }\n    return null;\n  }\n}").
expr(object_type_adapter_1_expr2, infix_expression, object_type_adapter_1_stmt1, expression, range(object_type_adapter_1, 1476, 33, 41, 41), "type.getRawType() == Object.class").
expr(object_type_adapter_1_expr3, method_invocation, object_type_adapter_1_expr2, left_operand, range(object_type_adapter_1, 1476, 17, 41, 41), "type.getRawType()").
expr(object_type_adapter_1_expr4, type_literal, object_type_adapter_1_expr2, right_operand, range(object_type_adapter_1, 1497, 12, 41, 41), "Object.class").
%gson_1 - com.google.gson.Gson
expr(gson_1_expr1, class_instance_creation, gson_1_code16, initializer, range(gson_1, 5112, 58, 121, 121), "new ThreadLocal<Map<TypeToken<?>,FutureTypeAdapter<?>>>()").
expr(gson_1_expr2, method_invocation, gson_1_code28, initializer, range(gson_1, 5246, 72, 124, 124), "Collections.synchronizedMap(new HashMap<TypeToken<?>,TypeAdapter<?>>())").
expr(gson_1_expr3, class_instance_creation, gson_1_code32, initializer, range(gson_1, 5696, 220, 135, 140), "new JsonDeserializationContext(){\n  @SuppressWarnings(\"unchecked\") @Override public <T>T deserialize(  JsonElement json,  Type typeOfT) throws JsonParseException {\n    return (T)fromJson(json,typeOfT);\n  }\n}").
expr(gson_1_expr4, class_instance_creation, gson_1_code38, initializer, range(gson_1, 5975, 249, 142, 149), "new JsonSerializationContext(){\n  @Override public JsonElement serialize(  Object src){\n    return toJsonTree(src);\n  }\n  @Override public JsonElement serialize(  Object src,  Type typeOfSrc){\n    return toJsonTree(src,typeOfSrc);\n  }\n}").
expr(gson_1_expr5, constructor_invocation, gson_1_block1, (statements, 0), range(gson_1, 8881, 384, 186, 190), "this(Excluder.DEFAULT,FieldNamingPolicy.IDENTITY,Collections.<Type,InstanceCreator<?>>emptyMap(),DEFAULT_SERIALIZE_NULLS,DEFAULT_COMPLEX_MAP_KEYS,DEFAULT_JSON_NON_EXECUTABLE,DEFAULT_ESCAPE_HTML,DEFAULT_PRETTY_PRINT,DEFAULT_LENIENT,DEFAULT_SPECIALIZE_FLOAT_VALUES,LongSerializationPolicy.DEFAULT,Collections.<TypeAdapterFactory>emptyList());").
expr(gson_1_expr6, method_invocation, gson_1_stmt1, (arguments, 2), range(gson_1, 8940, 48, 187, 187), "Collections.<Type,InstanceCreator<?>>emptyMap()").
expr(gson_1_expr7, method_invocation, gson_1_stmt1, (arguments, 11), range(gson_1, 9220, 43, 190, 190), "Collections.<TypeAdapterFactory>emptyList()").
expr(gson_1_expr9, field_access, gson_1_expr8, left_hand_side, range(gson_1, 9733, 27, 199, 199), "this.constructorConstructor").
expr(gson_1_expr8, assignment, gson_1_stmt2, expression, range(gson_1, 9733, 74, 199, 199), "this.constructorConstructor=new ConstructorConstructor(instanceCreators)").
expr(gson_1_expr11, this_expression, f_constructor_constructor_46, expression, range(gson_1, 9733, 4, 199, 199), "this").
expr(gson_1_expr10, class_instance_creation, gson_1_expr8, right_hand_side, range(gson_1, 9763, 44, 199, 199), "new ConstructorConstructor(instanceCreators)").
expr(gson_1_expr12, assignment, gson_1_stmt3, expression, range(gson_1, 9813, 36, 200, 200), "this.serializeNulls=serializeNulls").
expr(gson_1_expr13, field_access, gson_1_expr12, left_hand_side, range(gson_1, 9813, 19, 200, 200), "this.serializeNulls").
expr(gson_1_expr14, this_expression, f_serialize_nulls_47, expression, range(gson_1, 9813, 4, 200, 200), "this").
expr(gson_1_expr16, field_access, gson_1_expr15, left_hand_side, range(gson_1, 9855, 30, 201, 201), "this.generateNonExecutableJson").
expr(gson_1_expr17, this_expression, f_generate_non_executable_json_48, expression, range(gson_1, 9855, 4, 201, 201), "this").
expr(gson_1_expr15, assignment, gson_1_stmt4, expression, range(gson_1, 9855, 58, 201, 201), "this.generateNonExecutableJson=generateNonExecutableGson").
expr(gson_1_expr18, assignment, gson_1_stmt5, expression, range(gson_1, 9919, 24, 202, 202), "this.htmlSafe=htmlSafe").
expr(gson_1_expr19, field_access, gson_1_expr18, left_hand_side, range(gson_1, 9919, 13, 202, 202), "this.htmlSafe").
expr(gson_1_expr20, this_expression, f_html_safe_49, expression, range(gson_1, 9919, 4, 202, 202), "this").
expr(gson_1_expr21, assignment, gson_1_stmt6, expression, range(gson_1, 9949, 36, 203, 203), "this.prettyPrinting=prettyPrinting").
expr(gson_1_expr22, field_access, gson_1_expr21, left_hand_side, range(gson_1, 9949, 19, 203, 203), "this.prettyPrinting").
expr(gson_1_expr23, this_expression, f_pretty_printing_50, expression, range(gson_1, 9949, 4, 203, 203), "this").
expr(gson_1_expr24, assignment, gson_1_stmt7, expression, range(gson_1, 9991, 22, 204, 204), "this.lenient=lenient").
expr(gson_1_expr25, field_access, gson_1_expr24, left_hand_side, range(gson_1, 9991, 12, 204, 204), "this.lenient").
expr(gson_1_expr26, this_expression, f_lenient_51, expression, range(gson_1, 9991, 4, 204, 204), "this").
expr(gson_1_expr27, class_instance_creation, gson_1_code51, initializer, range(gson_1, 10057, 35, 206, 206), "new ArrayList<TypeAdapterFactory>()").
expr(gson_1_expr28, method_invocation, gson_1_stmt9, expression, range(gson_1, 10155, 48, 209, 209), "factories.add(TypeAdapters.JSON_ELEMENT_FACTORY)").
expr(gson_1_expr29, method_invocation, gson_1_stmt10, expression, range(gson_1, 10209, 40, 210, 210), "factories.add(ObjectTypeAdapter.FACTORY)").
expr(gson_1_expr30, method_invocation, gson_1_stmt11, expression, range(gson_1, 10333, 23, 213, 213), "factories.add(excluder)").
expr(gson_1_expr31, method_invocation, gson_1_stmt12, expression, range(gson_1, 10391, 38, 216, 216), "factories.addAll(typeAdapterFactories)").
expr(gson_1_expr32, method_invocation, gson_1_stmt13, expression, range(gson_1, 10482, 42, 219, 219), "factories.add(TypeAdapters.STRING_FACTORY)").
expr(gson_1_expr33, method_invocation, gson_1_stmt14, expression, range(gson_1, 10530, 43, 220, 220), "factories.add(TypeAdapters.INTEGER_FACTORY)").
expr(gson_1_expr34, method_invocation, gson_1_stmt15, expression, range(gson_1, 10579, 43, 221, 221), "factories.add(TypeAdapters.BOOLEAN_FACTORY)").
expr(gson_1_expr35, method_invocation, gson_1_stmt16, expression, range(gson_1, 10628, 40, 222, 222), "factories.add(TypeAdapters.BYTE_FACTORY)").
expr(gson_1_expr36, method_invocation, gson_1_stmt17, expression, range(gson_1, 10674, 41, 223, 223), "factories.add(TypeAdapters.SHORT_FACTORY)").
expr(gson_1_expr37, method_invocation, gson_1_code58, initializer, range(gson_1, 10755, 36, 224, 224), "longAdapter(longSerializationPolicy)").
expr(gson_1_expr38, method_invocation, gson_1_stmt19, expression, range(gson_1, 10797, 75, 225, 225), "factories.add(TypeAdapters.newFactory(long.class,Long.class,longAdapter))").
expr(gson_1_expr39, method_invocation, gson_1_expr38, (arguments, 0), range(gson_1, 10811, 60, 225, 225), "TypeAdapters.newFactory(long.class,Long.class,longAdapter)").
expr(gson_1_expr40, type_literal, gson_1_expr39, (arguments, 0), range(gson_1, 10835, 10, 225, 225), "long.class").
expr(gson_1_expr41, type_literal, gson_1_expr39, (arguments, 1), range(gson_1, 10847, 10, 225, 225), "Long.class").
expr(gson_1_expr42, method_invocation, gson_1_stmt20, expression, range(gson_1, 10878, 130, 226, 227), "factories.add(TypeAdapters.newFactory(double.class,Double.class,doubleAdapter(serializeSpecialFloatingPointValues)))").
expr(gson_1_expr43, method_invocation, gson_1_expr42, (arguments, 0), range(gson_1, 10892, 115, 226, 227), "TypeAdapters.newFactory(double.class,Double.class,doubleAdapter(serializeSpecialFloatingPointValues))").
expr(gson_1_expr44, type_literal, gson_1_expr43, (arguments, 0), range(gson_1, 10916, 12, 226, 226), "double.class").
expr(gson_1_expr45, type_literal, gson_1_expr43, (arguments, 1), range(gson_1, 10930, 12, 226, 226), "Double.class").
expr(gson_1_expr46, method_invocation, gson_1_expr43, (arguments, 2), range(gson_1, 10956, 50, 227, 227), "doubleAdapter(serializeSpecialFloatingPointValues)").
expr(gson_1_expr47, method_invocation, gson_1_stmt21, expression, range(gson_1, 11014, 127, 228, 229), "factories.add(TypeAdapters.newFactory(float.class,Float.class,floatAdapter(serializeSpecialFloatingPointValues)))").
expr(gson_1_expr48, method_invocation, gson_1_expr47, (arguments, 0), range(gson_1, 11028, 112, 228, 229), "TypeAdapters.newFactory(float.class,Float.class,floatAdapter(serializeSpecialFloatingPointValues))").
expr(gson_1_expr49, type_literal, gson_1_expr48, (arguments, 0), range(gson_1, 11052, 11, 228, 228), "float.class").
expr(gson_1_expr50, type_literal, gson_1_expr48, (arguments, 1), range(gson_1, 11065, 11, 228, 228), "Float.class").
expr(gson_1_expr51, method_invocation, gson_1_expr48, (arguments, 2), range(gson_1, 11090, 49, 229, 229), "floatAdapter(serializeSpecialFloatingPointValues)").
expr(gson_1_expr52, method_invocation, gson_1_stmt22, expression, range(gson_1, 11147, 42, 230, 230), "factories.add(TypeAdapters.NUMBER_FACTORY)").
expr(gson_1_expr53, method_invocation, gson_1_stmt23, expression, range(gson_1, 11195, 50, 231, 231), "factories.add(TypeAdapters.ATOMIC_INTEGER_FACTORY)").
expr(gson_1_expr54, method_invocation, gson_1_stmt24, expression, range(gson_1, 11251, 50, 232, 232), "factories.add(TypeAdapters.ATOMIC_BOOLEAN_FACTORY)").
expr(gson_1_expr55, method_invocation, gson_1_stmt25, expression, range(gson_1, 11307, 88, 233, 233), "factories.add(TypeAdapters.newFactory(AtomicLong.class,atomicLongAdapter(longAdapter)))").
expr(gson_1_expr56, method_invocation, gson_1_expr55, (arguments, 0), range(gson_1, 11321, 73, 233, 233), "TypeAdapters.newFactory(AtomicLong.class,atomicLongAdapter(longAdapter))").
expr(gson_1_expr57, type_literal, gson_1_expr56, (arguments, 0), range(gson_1, 11345, 16, 233, 233), "AtomicLong.class").
expr(gson_1_expr58, method_invocation, gson_1_expr56, (arguments, 1), range(gson_1, 11363, 30, 233, 233), "atomicLongAdapter(longAdapter)").
expr(gson_1_expr59, method_invocation, gson_1_stmt26, expression, range(gson_1, 11401, 98, 234, 234), "factories.add(TypeAdapters.newFactory(AtomicLongArray.class,atomicLongArrayAdapter(longAdapter)))").
expr(gson_1_expr60, method_invocation, gson_1_expr59, (arguments, 0), range(gson_1, 11415, 83, 234, 234), "TypeAdapters.newFactory(AtomicLongArray.class,atomicLongArrayAdapter(longAdapter))").
expr(gson_1_expr61, type_literal, gson_1_expr60, (arguments, 0), range(gson_1, 11439, 21, 234, 234), "AtomicLongArray.class").
expr(gson_1_expr62, method_invocation, gson_1_expr60, (arguments, 1), range(gson_1, 11462, 35, 234, 234), "atomicLongArrayAdapter(longAdapter)").
expr(gson_1_expr63, method_invocation, gson_1_stmt27, expression, range(gson_1, 11505, 56, 235, 235), "factories.add(TypeAdapters.ATOMIC_INTEGER_ARRAY_FACTORY)").
expr(gson_1_expr64, method_invocation, gson_1_stmt28, expression, range(gson_1, 11567, 45, 236, 236), "factories.add(TypeAdapters.CHARACTER_FACTORY)").
expr(gson_1_expr65, method_invocation, gson_1_stmt29, expression, range(gson_1, 11618, 50, 237, 237), "factories.add(TypeAdapters.STRING_BUILDER_FACTORY)").
expr(gson_1_expr66, method_invocation, gson_1_stmt30, expression, range(gson_1, 11674, 49, 238, 238), "factories.add(TypeAdapters.STRING_BUFFER_FACTORY)").
expr(gson_1_expr67, method_invocation, gson_1_stmt31, expression, range(gson_1, 11729, 82, 239, 239), "factories.add(TypeAdapters.newFactory(BigDecimal.class,TypeAdapters.BIG_DECIMAL))").
expr(gson_1_expr68, method_invocation, gson_1_expr67, (arguments, 0), range(gson_1, 11743, 67, 239, 239), "TypeAdapters.newFactory(BigDecimal.class,TypeAdapters.BIG_DECIMAL)").
expr(gson_1_expr69, type_literal, gson_1_expr68, (arguments, 0), range(gson_1, 11767, 16, 239, 239), "BigDecimal.class").
expr(gson_1_expr70, method_invocation, gson_1_stmt32, expression, range(gson_1, 11817, 82, 240, 240), "factories.add(TypeAdapters.newFactory(BigInteger.class,TypeAdapters.BIG_INTEGER))").
expr(gson_1_expr71, method_invocation, gson_1_expr70, (arguments, 0), range(gson_1, 11831, 67, 240, 240), "TypeAdapters.newFactory(BigInteger.class,TypeAdapters.BIG_INTEGER)").
expr(gson_1_expr72, type_literal, gson_1_expr71, (arguments, 0), range(gson_1, 11855, 16, 240, 240), "BigInteger.class").
expr(gson_1_expr73, method_invocation, gson_1_stmt33, expression, range(gson_1, 11905, 39, 241, 241), "factories.add(TypeAdapters.URL_FACTORY)").
expr(gson_1_expr74, method_invocation, gson_1_stmt34, expression, range(gson_1, 11950, 39, 242, 242), "factories.add(TypeAdapters.URI_FACTORY)").
expr(gson_1_expr75, method_invocation, gson_1_stmt35, expression, range(gson_1, 11995, 40, 243, 243), "factories.add(TypeAdapters.UUID_FACTORY)").
expr(gson_1_expr76, method_invocation, gson_1_stmt36, expression, range(gson_1, 12041, 44, 244, 244), "factories.add(TypeAdapters.CURRENCY_FACTORY)").
expr(gson_1_expr77, method_invocation, gson_1_stmt37, expression, range(gson_1, 12091, 42, 245, 245), "factories.add(TypeAdapters.LOCALE_FACTORY)").
expr(gson_1_expr78, method_invocation, gson_1_stmt38, expression, range(gson_1, 12139, 48, 246, 246), "factories.add(TypeAdapters.INET_ADDRESS_FACTORY)").
expr(gson_1_expr79, method_invocation, gson_1_stmt39, expression, range(gson_1, 12193, 43, 247, 247), "factories.add(TypeAdapters.BIT_SET_FACTORY)").
expr(gson_1_expr80, method_invocation, gson_1_stmt40, expression, range(gson_1, 12242, 38, 248, 248), "factories.add(DateTypeAdapter.FACTORY)").
expr(gson_1_expr81, method_invocation, gson_1_stmt41, expression, range(gson_1, 12286, 44, 249, 249), "factories.add(TypeAdapters.CALENDAR_FACTORY)").
expr(gson_1_expr82, method_invocation, gson_1_stmt42, expression, range(gson_1, 12336, 38, 250, 250), "factories.add(TimeTypeAdapter.FACTORY)").
expr(gson_1_expr83, method_invocation, gson_1_stmt43, expression, range(gson_1, 12380, 41, 251, 251), "factories.add(SqlDateTypeAdapter.FACTORY)").
expr(gson_1_expr84, method_invocation, gson_1_stmt44, expression, range(gson_1, 12427, 45, 252, 252), "factories.add(TypeAdapters.TIMESTAMP_FACTORY)").
expr(gson_1_expr85, method_invocation, gson_1_stmt45, expression, range(gson_1, 12478, 39, 253, 253), "factories.add(ArrayTypeAdapter.FACTORY)").
expr(gson_1_expr86, method_invocation, gson_1_stmt46, expression, range(gson_1, 12523, 41, 254, 254), "factories.add(TypeAdapters.CLASS_FACTORY)").
expr(gson_1_expr87, method_invocation, gson_1_stmt47, expression, range(gson_1, 12629, 71, 257, 257), "factories.add(new CollectionTypeAdapterFactory(constructorConstructor))").
expr(gson_1_expr88, class_instance_creation, gson_1_expr87, (arguments, 0), range(gson_1, 12643, 56, 257, 257), "new CollectionTypeAdapterFactory(constructorConstructor)").
expr(gson_1_expr89, method_invocation, gson_1_stmt48, expression, range(gson_1, 12706, 92, 258, 258), "factories.add(new MapTypeAdapterFactory(constructorConstructor,complexMapKeySerialization))").
expr(gson_1_expr90, class_instance_creation, gson_1_expr89, (arguments, 0), range(gson_1, 12720, 77, 258, 258), "new MapTypeAdapterFactory(constructorConstructor,complexMapKeySerialization)").
expr(gson_1_expr91, method_invocation, gson_1_stmt49, expression, range(gson_1, 12804, 82, 259, 259), "factories.add(new JsonAdapterAnnotationTypeAdapterFactory(constructorConstructor))").
expr(gson_1_expr92, class_instance_creation, gson_1_expr91, (arguments, 0), range(gson_1, 12818, 67, 259, 259), "new JsonAdapterAnnotationTypeAdapterFactory(constructorConstructor)").
expr(gson_1_expr93, method_invocation, gson_1_stmt50, expression, range(gson_1, 12892, 40, 260, 260), "factories.add(TypeAdapters.ENUM_FACTORY)").
expr(gson_1_expr94, method_invocation, gson_1_stmt51, expression, range(gson_1, 12938, 109, 261, 262), "factories.add(new ReflectiveTypeAdapterFactory(constructorConstructor,fieldNamingPolicy,excluder))").
expr(gson_1_expr95, class_instance_creation, gson_1_expr94, (arguments, 0), range(gson_1, 12952, 94, 261, 262), "new ReflectiveTypeAdapterFactory(constructorConstructor,fieldNamingPolicy,excluder)").
expr(gson_1_expr96, assignment, gson_1_stmt52, expression, range(gson_1, 13054, 56, 264, 264), "this.factories=Collections.unmodifiableList(factories)").
expr(gson_1_expr97, field_access, gson_1_expr96, left_hand_side, range(gson_1, 13054, 14, 264, 264), "this.factories").
expr(gson_1_expr99, this_expression, f_factories_54, expression, range(gson_1, 13054, 4, 264, 264), "this").
expr(gson_1_expr98, method_invocation, gson_1_expr96, right_hand_side, range(gson_1, 13071, 39, 264, 264), "Collections.unmodifiableList(factories)").
expr(gson_1_expr100, class_instance_creation, gson_1_stmt54, expression, range(gson_1, 13306, 544, 271, 288), "new TypeAdapter<Number>(){\n  @Override public Double read(  JsonReader in) throws IOException {\n    if (in.peek() == JsonToken.NULL) {\n      in.nextNull();\n      return null;\n    }\n    return in.nextDouble();\n  }\n  @Override public void write(  JsonWriter out,  Number value) throws IOException {\n    if (value == null) {\n      out.nullValue();\n      return;\n    }\n    double doubleValue=value.doubleValue();\n    checkValidFloatingPoint(doubleValue);\n    out.value(value);\n  }\n}").
expr(gson_1_expr101, class_instance_creation, gson_1_stmt56, expression, range(gson_1, 14044, 547, 295, 312), "new TypeAdapter<Number>(){\n  @Override public Float read(  JsonReader in) throws IOException {\n    if (in.peek() == JsonToken.NULL) {\n      in.nextNull();\n      return null;\n    }\n    return (float)in.nextDouble();\n  }\n  @Override public void write(  JsonWriter out,  Number value) throws IOException {\n    if (value == null) {\n      out.nullValue();\n      return;\n    }\n    float floatValue=value.floatValue();\n    checkValidFloatingPoint(floatValue);\n    out.value(value);\n  }\n}").
expr(gson_1_expr102, infix_expression, gson_1_stmt57, expression, range(gson_1, 15053, 58, 324, 324), "longSerializationPolicy == LongSerializationPolicy.DEFAULT").
expr(gson_1_expr104, class_instance_creation, gson_1_expr103, expression, range(gson_1, 15739, 357, 346, 354), "new TypeAdapter<AtomicLong>(){\n  @Override public void write(  JsonWriter out,  AtomicLong value) throws IOException {\n    longAdapter.write(out,value.get());\n  }\n  @Override public AtomicLong read(  JsonReader in) throws IOException {\n    Number value=longAdapter.read(in);\n    return new AtomicLong(value.longValue());\n  }\n}").
expr(gson_1_expr103, method_invocation, gson_1_stmt59, expression, range(gson_1, 15739, 368, 346, 354), "new TypeAdapter<AtomicLong>(){\n  @Override public void write(  JsonWriter out,  AtomicLong value) throws IOException {\n    longAdapter.write(out,value.get());\n  }\n  @Override public AtomicLong read(  JsonReader in) throws IOException {\n    Number value=longAdapter.read(in);\n    return new AtomicLong(value.longValue());\n  }\n}\n.nullSafe()").
expr(gson_1_expr105, method_invocation, gson_1_stmt60, expression, range(gson_1, 16235, 852, 358, 381), "new TypeAdapter<AtomicLongArray>(){\n  @Override public void write(  JsonWriter out,  AtomicLongArray value) throws IOException {\n    out.beginArray();\n    for (int i=0, length=value.length(); i < length; i++) {\n      longAdapter.write(out,value.get(i));\n    }\n    out.endArray();\n  }\n  @Override public AtomicLongArray read(  JsonReader in) throws IOException {\n    List<Long> list=new ArrayList<Long>();\n    in.beginArray();\n    while (in.hasNext()) {\n      long value=longAdapter.read(in).longValue();\n      list.add(value);\n    }\n    in.endArray();\n    int length=list.size();\n    AtomicLongArray array=new AtomicLongArray(length);\n    for (int i=0; i < length; ++i) {\n      array.set(i,list.get(i));\n    }\n    return array;\n  }\n}\n.nullSafe()").
expr(gson_1_expr106, class_instance_creation, gson_1_expr105, expression, range(gson_1, 16235, 841, 358, 381), "new TypeAdapter<AtomicLongArray>(){\n  @Override public void write(  JsonWriter out,  AtomicLongArray value) throws IOException {\n    out.beginArray();\n    for (int i=0, length=value.length(); i < length; i++) {\n      longAdapter.write(out,value.get(i));\n    }\n    out.endArray();\n  }\n  @Override public AtomicLongArray read(  JsonReader in) throws IOException {\n    List<Long> list=new ArrayList<Long>();\n    in.beginArray();\n    while (in.hasNext()) {\n      long value=longAdapter.read(in).longValue();\n      list.add(value);\n    }\n    in.endArray();\n    int length=list.size();\n    AtomicLongArray array=new AtomicLongArray(length);\n    for (int i=0; i < length; ++i) {\n      array.set(i,list.get(i));\n    }\n    return array;\n  }\n}").
expr(gson_1_expr107, method_invocation, gson_1_code98, initializer, range(gson_1, 17387, 24, 392, 392), "typeTokenCache.get(type)").
expr(gson_1_expr108, infix_expression, gson_1_stmt62, expression, range(gson_1, 17421, 14, 393, 393), "cached != null").
expr(gson_1_expr109, method_invocation, gson_1_code107, initializer, range(gson_1, 17542, 11, 397, 397), "calls.get()").
expr(gson_1_expr110, infix_expression, gson_1_stmt65, expression, range(gson_1, 17611, 19, 399, 399), "threadCalls == null").
expr(gson_1_expr111, assignment, gson_1_stmt66, expression, range(gson_1, 17640, 63, 400, 400), "threadCalls=new HashMap<TypeToken<?>,FutureTypeAdapter<?>>()").
expr(gson_1_expr112, class_instance_creation, gson_1_expr111, right_hand_side, range(gson_1, 17654, 49, 400, 400), "new HashMap<TypeToken<?>,FutureTypeAdapter<?>>()").
expr(gson_1_expr113, method_invocation, gson_1_stmt67, expression, range(gson_1, 17711, 22, 401, 401), "calls.set(threadCalls)").
expr(gson_1_expr114, assignment, gson_1_stmt68, expression, range(gson_1, 17741, 33, 402, 402), "requiresThreadLocalCleanup=true").
expr(gson_1_expr115, cast_expression, gson_1_code121, initializer, range(gson_1, 17876, 44, 406, 406), "(FutureTypeAdapter<T>)threadCalls.get(type)").
expr(gson_1_expr116, method_invocation, gson_1_expr115, expression, range(gson_1, 17899, 21, 406, 406), "threadCalls.get(type)").
expr(gson_1_expr117, infix_expression, gson_1_stmt70, expression, range(gson_1, 17930, 19, 407, 407), "ongoingCall != null").
expr(gson_1_expr118, class_instance_creation, gson_1_code128, initializer, range(gson_1, 18030, 26, 412, 412), "new FutureTypeAdapter<T>()").
expr(gson_1_expr119, method_invocation, gson_1_stmt73, expression, range(gson_1, 18064, 27, 413, 413), "threadCalls.put(type,call)").
expr(gson_1_expr120, method_invocation, gson_1_code137, initializer, range(gson_1, 18182, 26, 416, 416), "factory.create(this,type)").
expr(gson_1_expr121, this_expression, gson_1_expr120, (arguments, 0), range(gson_1, 18197, 4, 416, 416), "this").
expr(gson_1_expr122, infix_expression, gson_1_stmt76, expression, range(gson_1, 18222, 17, 417, 417), "candidate != null").
expr(gson_1_expr123, method_invocation, gson_1_stmt77, expression, range(gson_1, 18469, 24, 425, 425), "threadCalls.remove(type)").
expr(gson_1_expr124, method_invocation, gson_1_stmt79, expression, range(gson_1, 18544, 14, 428, 428), "calls.remove()").
expr(gson_1_expr125, prefix_expression, gson_1_stmt81, expression, range(gson_1, 21642, 29, 488, 488), "!factories.contains(skipPast)").
expr(gson_1_expr126, method_invocation, gson_1_expr125, operand, range(gson_1, 21643, 28, 488, 488), "factories.contains(skipPast)").
expr(gson_1_expr127, assignment, gson_1_stmt82, expression, range(gson_1, 21673, 20, 488, 488), "skipPastFound=true").
expr(gson_1_expr128, prefix_expression, gson_1_stmt84, expression, range(gson_1, 21757, 14, 491, 491), "!skipPastFound").
expr(gson_1_expr129, method_invocation, gson_1_code146, initializer, range(gson_1, 21912, 26, 498, 498), "factory.create(this,type)").
expr(gson_1_expr130, this_expression, gson_1_expr129, (arguments, 0), range(gson_1, 21927, 4, 498, 498), "this").
expr(gson_1_expr131, infix_expression, gson_1_stmt86, expression, range(gson_1, 21950, 17, 499, 499), "candidate != null").
expr(gson_1_expr132, method_invocation, gson_1_stmt87, expression, range(gson_1, 25295, 27, 575, 575), "toJson(src,src.getClass())").
expr(gson_1_expr133, method_invocation, gson_1_expr132, (arguments, 1), range(gson_1, 25307, 14, 575, 575), "src.getClass()").
expr(gson_1_expr134, class_instance_creation, gson_1_code150, initializer, range(gson_1, 26267, 18, 594, 594), "new StringWriter()").
expr(gson_1_expr135, method_invocation, gson_1_stmt89, expression, range(gson_1, 26291, 30, 595, 595), "toJson(src,typeOfSrc,writer)").
expr(gson_1_expr136, method_invocation, gson_1_code154, initializer, range(gson_1, 28473, 50, 639, 639), "newJsonWriter(Streams.writerForAppendable(writer))").
expr(gson_1_expr137, method_invocation, gson_1_expr136, (arguments, 0), range(gson_1, 28487, 35, 639, 639), "Streams.writerForAppendable(writer)").
expr(gson_1_expr138, method_invocation, gson_1_stmt92, expression, range(gson_1, 28531, 34, 640, 640), "toJson(src,typeOfSrc,jsonWriter)").
expr(gson_1_expr139, method_invocation, gson_1_code159, initializer, range(gson_1, 28986, 36, 653, 653), "getAdapter(TypeToken.get(typeOfSrc))").
expr(gson_1_expr140, method_invocation, gson_1_expr139, (arguments, 0), range(gson_1, 28997, 24, 653, 653), "TypeToken.get(typeOfSrc)").
expr(gson_1_expr141, class_instance_creation, gson_1_code162, initializer, range(gson_1, 30874, 22, 708, 708), "new JsonWriter(writer)").
expr(gson_1_expr142, method_invocation, gson_1_stmt97, expression, range(gson_1, 30968, 44, 712, 712), "jsonWriter.setSerializeNulls(serializeNulls)").
expr(gson_1_expr143, class_instance_creation, gson_1_code166, initializer, range(gson_1, 31215, 22, 720, 720), "new JsonReader(reader)").
expr(gson_1_expr144, method_invocation, gson_1_stmt100, expression, range(gson_1, 31243, 30, 721, 721), "jsonReader.setLenient(lenient)").
expr(gson_1_expr145, method_invocation, gson_1_code170, initializer, range(gson_1, 33279, 31, 765, 765), "fromJson(json,(Type)classOfT)").
expr(gson_1_expr146, cast_expression, gson_1_expr145, (arguments, 1), range(gson_1, 33294, 15, 765, 765), "(Type)classOfT").
expr(gson_1_expr147, infix_expression, gson_1_stmt103, expression, range(gson_1, 34597, 12, 789, 789), "json == null").
expr(gson_1_expr148, class_instance_creation, gson_1_code174, initializer, range(gson_1, 34664, 22, 792, 792), "new StringReader(json)").
expr(gson_1_expr149, cast_expression, gson_1_code177, initializer, range(gson_1, 34703, 29, 793, 793), "(T)fromJson(reader,typeOfT)").
expr(gson_1_expr150, method_invocation, gson_1_expr149, expression, range(gson_1, 34707, 25, 793, 793), "fromJson(reader,typeOfT)").
expr(gson_1_expr151, method_invocation, gson_1_code181, initializer, range(gson_1, 37571, 19, 843, 843), "newJsonReader(json)").
expr(gson_1_expr152, cast_expression, gson_1_code183, initializer, range(gson_1, 37607, 33, 844, 844), "(T)fromJson(jsonReader,typeOfT)").
expr(gson_1_expr153, method_invocation, gson_1_expr152, expression, range(gson_1, 37611, 29, 844, 844), "fromJson(jsonReader,typeOfT)").
expr(gson_1_expr154, method_invocation, gson_1_code189, initializer, range(gson_1, 38746, 18, 872, 872), "reader.isLenient()").
expr(gson_1_expr155, method_invocation, gson_1_stmt110, expression, range(gson_1, 38770, 23, 873, 873), "reader.setLenient(true)").
expr(gson_1_expr156, method_invocation, gson_1_stmt112, expression, range(gson_1, 38811, 13, 875, 875), "reader.peek()").
expr(gson_1_expr157, assignment, gson_1_stmt113, expression, range(gson_1, 38832, 15, 876, 876), "isEmpty=false").
expr(gson_1_expr158, cast_expression, gson_1_code193, initializer, range(gson_1, 38880, 37, 877, 877), "(TypeToken<T>)TypeToken.get(typeOfT)").
expr(gson_1_expr159, method_invocation, gson_1_expr158, expression, range(gson_1, 38895, 22, 877, 877), "TypeToken.get(typeOfT)").
expr(gson_1_expr160, method_invocation, gson_1_code200, initializer, range(gson_1, 38954, 21, 878, 878), "getAdapter(typeToken)").
expr(gson_1_expr161, method_invocation, gson_1_stmt116, expression, range(gson_1, 39571, 29, 896, 896), "reader.setLenient(oldLenient)").
%constructor_constructor_1 - com.google.gson.internal.ConstructorConstructor
expr(constructor_constructor_1_expr1, assignment, constructor_constructor_1_stmt1, expression, range(constructor_constructor_1, 1742, 40, 52, 52), "this.instanceCreators=instanceCreators").
expr(constructor_constructor_1_expr2, field_access, constructor_constructor_1_expr1, left_hand_side, range(constructor_constructor_1, 1742, 21, 52, 52), "this.instanceCreators").
expr(constructor_constructor_1_expr3, this_expression, f_instance_creators_164, expression, range(constructor_constructor_1, 1742, 4, 52, 52), "this").
expr(constructor_constructor_1_expr4, method_invocation, constructor_constructor_1_code15, initializer, range(constructor_constructor_1, 1875, 19, 56, 56), "typeToken.getType()").
expr(constructor_constructor_1_expr5, method_invocation, constructor_constructor_1_code21, initializer, range(constructor_constructor_1, 1933, 22, 57, 57), "typeToken.getRawType()").
expr(constructor_constructor_1_expr6, cast_expression, constructor_constructor_1_code26, initializer, range(constructor_constructor_1, 2094, 47, 62, 62), "(InstanceCreator<T>)instanceCreators.get(type)").
expr(constructor_constructor_1_expr7, method_invocation, constructor_constructor_1_expr6, expression, range(constructor_constructor_1, 2115, 26, 62, 62), "instanceCreators.get(type)").
expr(constructor_constructor_1_expr8, infix_expression, constructor_constructor_1_stmt5, expression, range(constructor_constructor_1, 2151, 19, 63, 63), "typeCreator != null").
expr(constructor_constructor_1_expr9, cast_expression, constructor_constructor_1_code34, initializer, range(constructor_constructor_1, 2496, 50, 74, 74), "(InstanceCreator<T>)instanceCreators.get(rawType)").
expr(constructor_constructor_1_expr10, infix_expression, constructor_constructor_1_stmt7, expression, range(constructor_constructor_1, 2556, 22, 75, 75), "rawTypeCreator != null").
expr(constructor_constructor_1_expr11, method_invocation, constructor_constructor_1_code38, initializer, range(constructor_constructor_1, 2791, 30, 83, 83), "newDefaultConstructor(rawType)").
expr(constructor_constructor_1_expr12, infix_expression, constructor_constructor_1_stmt9, expression, range(constructor_constructor_1, 2831, 26, 84, 84), "defaultConstructor != null").
expr(constructor_constructor_1_expr13, method_invocation, constructor_constructor_1_code45, initializer, range(constructor_constructor_1, 3307, 32, 99, 99), "rawType.getDeclaredConstructor()").
expr(constructor_constructor_1_expr14, prefix_expression, constructor_constructor_1_stmt13, expression, range(constructor_constructor_1, 3351, 27, 100, 100), "!constructor.isAccessible()").
expr(constructor_constructor_1_expr15, method_invocation, constructor_constructor_1_expr14, operand, range(constructor_constructor_1, 3352, 26, 100, 100), "constructor.isAccessible()").
expr(constructor_constructor_1_expr16, method_invocation, constructor_constructor_1_stmt14, expression, range(constructor_constructor_1, 3390, 31, 101, 101), "constructor.setAccessible(true)").
expr(constructor_constructor_1_expr17, class_instance_creation, constructor_constructor_1_stmt15, expression, range(constructor_constructor_1, 3444, 837, 103, 121), "new ObjectConstructor<T>(){\n  @SuppressWarnings(\"unchecked\") @Override public T construct(){\n    try {\n      Object[] args=null;\n      return (T)constructor.newInstance(args);\n    }\n catch (    InstantiationException e) {\n      throw new RuntimeException(\"Failed to invoke \" + constructor + \" with no args\",e);\n    }\ncatch (    InvocationTargetException e) {\n      throw new RuntimeException(\"Failed to invoke \" + constructor + \" with no args\",e.getTargetException());\n    }\ncatch (    IllegalAccessException e) {\n      throw new AssertionError(e);\n    }\n  }\n}").
expr(constructor_constructor_1_expr18, cast_expression, constructor_constructor_1_stmt18, expression, range(constructor_constructor_1, 3664, 33, 108, 108), "(T)constructor.newInstance(args)").
expr(constructor_constructor_1_expr19, method_invocation, constructor_constructor_1_expr18, expression, range(constructor_constructor_1, 3668, 29, 108, 108), "constructor.newInstance(args)").
%reflective_type_adapter_factory_1 - com.google.gson.internal.bind.ReflectiveTypeAdapterFactory
expr(reflective_type_adapter_factory_1_expr3, this_expression, f_constructor_constructor_295, expression, range(reflective_type_adapter_factory_1, 2107, 4, 55, 55), "this").
expr(reflective_type_adapter_factory_1_expr2, field_access, reflective_type_adapter_factory_1_expr1, left_hand_side, range(reflective_type_adapter_factory_1, 2107, 27, 55, 55), "this.constructorConstructor").
expr(reflective_type_adapter_factory_1_expr1, assignment, reflective_type_adapter_factory_1_stmt1, expression, range(reflective_type_adapter_factory_1, 2107, 52, 55, 55), "this.constructorConstructor=constructorConstructor").
expr(reflective_type_adapter_factory_1_expr6, this_expression, f_field_naming_policy_296, expression, range(reflective_type_adapter_factory_1, 2165, 4, 56, 56), "this").
expr(reflective_type_adapter_factory_1_expr5, field_access, reflective_type_adapter_factory_1_expr4, left_hand_side, range(reflective_type_adapter_factory_1, 2165, 22, 56, 56), "this.fieldNamingPolicy").
expr(reflective_type_adapter_factory_1_expr4, assignment, reflective_type_adapter_factory_1_stmt2, expression, range(reflective_type_adapter_factory_1, 2165, 42, 56, 56), "this.fieldNamingPolicy=fieldNamingPolicy").
expr(reflective_type_adapter_factory_1_expr9, this_expression, f_excluder_297, expression, range(reflective_type_adapter_factory_1, 2213, 4, 57, 57), "this").
expr(reflective_type_adapter_factory_1_expr8, field_access, reflective_type_adapter_factory_1_expr7, left_hand_side, range(reflective_type_adapter_factory_1, 2213, 13, 57, 57), "this.excluder").
expr(reflective_type_adapter_factory_1_expr7, assignment, reflective_type_adapter_factory_1_stmt3, expression, range(reflective_type_adapter_factory_1, 2213, 24, 57, 57), "this.excluder=excluder").
%type_token_1 - com.google.gson.reflect.TypeToken
expr(type_token_1_expr4, this_expression, f_type_526, expression, range(type_token_1, 2368, 4, 72, 72), "this").
expr(type_token_1_expr2, field_access, type_token_1_expr1, left_hand_side, range(type_token_1, 2368, 9, 72, 72), "this.type").
expr(type_token_1_expr1, assignment, type_token_1_stmt1, expression, range(type_token_1, 2368, 76, 72, 72), "this.type=$Gson$Types.canonicalize($Gson$Preconditions.checkNotNull(type))").
expr(type_token_1_expr3, method_invocation, type_token_1_expr1, right_hand_side, range(type_token_1, 2380, 64, 72, 72), "$Gson$Types.canonicalize($Gson$Preconditions.checkNotNull(type))").
expr(type_token_1_expr5, method_invocation, type_token_1_expr3, (arguments, 0), range(type_token_1, 2405, 38, 72, 72), "$Gson$Preconditions.checkNotNull(type)").
expr(type_token_1_expr9, this_expression, f_raw_type_527, expression, range(type_token_1, 2450, 4, 73, 73), "this").
expr(type_token_1_expr6, assignment, type_token_1_stmt2, expression, range(type_token_1, 2450, 67, 73, 73), "this.rawType=(Class<? super T>)$Gson$Types.getRawType(this.type)").
expr(type_token_1_expr7, field_access, type_token_1_expr6, left_hand_side, range(type_token_1, 2450, 12, 73, 73), "this.rawType").
expr(type_token_1_expr8, cast_expression, type_token_1_expr6, right_hand_side, range(type_token_1, 2465, 52, 73, 73), "(Class<? super T>)$Gson$Types.getRawType(this.type)").
expr(type_token_1_expr10, method_invocation, type_token_1_expr8, expression, range(type_token_1, 2484, 33, 73, 73), "$Gson$Types.getRawType(this.type)").
expr(type_token_1_expr11, field_access, type_token_1_expr10, (arguments, 0), range(type_token_1, 2507, 9, 73, 73), "this.type").
expr(type_token_1_expr12, this_expression, f_type_526, expression, range(type_token_1, 2507, 4, 73, 73), "this").
expr(type_token_1_expr16, this_expression, f_hash_code_528, expression, range(type_token_1, 2523, 4, 74, 74), "this").
expr(type_token_1_expr13, assignment, type_token_1_stmt3, expression, range(type_token_1, 2523, 36, 74, 74), "this.hashCode=this.type.hashCode()").
expr(type_token_1_expr14, field_access, type_token_1_expr13, left_hand_side, range(type_token_1, 2523, 13, 74, 74), "this.hashCode").
expr(type_token_1_expr15, method_invocation, type_token_1_expr13, right_hand_side, range(type_token_1, 2539, 20, 74, 74), "this.type.hashCode()").
expr(type_token_1_expr17, field_access, type_token_1_expr15, expression, range(type_token_1, 2539, 9, 74, 74), "this.type").
expr(type_token_1_expr18, this_expression, f_type_526, expression, range(type_token_1, 2539, 4, 74, 74), "this").
expr(type_token_1_expr20, this_expression, f_hash_code_528, expression, range(type_token_1, 8976, 4, 280, 280), "this").
expr(type_token_1_expr19, field_access, type_token_1_stmt6, expression, range(type_token_1, 8976, 13, 280, 280), "this.hashCode").
expr(type_token_1_expr21, class_instance_creation, type_token_1_stmt7, expression, range(type_token_1, 9374, 27, 296, 296), "new TypeToken<Object>(type)").
expr(type_token_1_expr22, class_instance_creation, type_token_1_stmt8, expression, range(type_token_1, 9546, 22, 303, 303), "new TypeToken<T>(type)").
%json_token_1 - com.google.gson.stream.JsonToken

%%% Names
%json_writer_1 - com.google.gson.stream.JsonWriter
name(f_replacement_chars_601, simple_name, json_writer_1_expr1, left_hand_side, range(json_writer_1, 5484, 17, 145, 145), 'REPLACEMENT_CHARS').
name(v_i_602, simple_name, json_writer_1_code8, name, range(json_writer_1, 5534, 1, 146, 146), 'i').
name(v_i_602, simple_name, json_writer_1_expr4, left_operand, range(json_writer_1, 5541, 1, 146, 146), 'i').
name(v_i_602, simple_name, json_writer_1_expr5, operand, range(json_writer_1, 5552, 1, 146, 146), 'i').
name(f_replacement_chars_601, simple_name, json_writer_1_expr7, array, range(json_writer_1, 5565, 17, 147, 147), 'REPLACEMENT_CHARS').
name(v_i_602, simple_name, json_writer_1_expr7, index, range(json_writer_1, 5583, 1, 147, 147), 'i').
name(t_string_25, simple_name, json_writer_1_expr8, expression, range(json_writer_1, 5588, 6, 147, 147), 'String').
name(m_format_401, simple_name, json_writer_1_expr8, name, range(json_writer_1, 5595, 6, 147, 147), 'format').
name(v_i_602, simple_name, json_writer_1_expr9, expression, range(json_writer_1, 5619, 1, 147, 147), 'i').
name(f_replacement_chars_601, simple_name, json_writer_1_expr11, array, range(json_writer_1, 5633, 17, 149, 149), 'REPLACEMENT_CHARS').
name(f_replacement_chars_601, simple_name, json_writer_1_expr13, array, range(json_writer_1, 5670, 17, 150, 150), 'REPLACEMENT_CHARS').
name(f_replacement_chars_601, simple_name, json_writer_1_expr15, array, range(json_writer_1, 5708, 17, 151, 151), 'REPLACEMENT_CHARS').
name(f_replacement_chars_601, simple_name, json_writer_1_expr17, array, range(json_writer_1, 5745, 17, 152, 152), 'REPLACEMENT_CHARS').
name(f_replacement_chars_601, simple_name, json_writer_1_expr19, array, range(json_writer_1, 5782, 17, 153, 153), 'REPLACEMENT_CHARS').
name(f_replacement_chars_601, simple_name, json_writer_1_expr21, array, range(json_writer_1, 5819, 17, 154, 154), 'REPLACEMENT_CHARS').
name(f_replacement_chars_601, simple_name, json_writer_1_expr23, array, range(json_writer_1, 5856, 17, 155, 155), 'REPLACEMENT_CHARS').
name(f_html_safe_replacement_chars_603, simple_name, json_writer_1_expr24, left_hand_side, range(json_writer_1, 5893, 27, 156, 156), 'HTML_SAFE_REPLACEMENT_CHARS').
name(f_replacement_chars_601, simple_name, json_writer_1_expr25, expression, range(json_writer_1, 5923, 17, 156, 156), 'REPLACEMENT_CHARS').
name(m_clone_402, simple_name, json_writer_1_expr25, name, range(json_writer_1, 5941, 5, 156, 156), 'clone').
name(f_html_safe_replacement_chars_603, simple_name, json_writer_1_expr27, array, range(json_writer_1, 5954, 27, 157, 157), 'HTML_SAFE_REPLACEMENT_CHARS').
name(f_html_safe_replacement_chars_603, simple_name, json_writer_1_expr29, array, range(json_writer_1, 6004, 27, 158, 158), 'HTML_SAFE_REPLACEMENT_CHARS').
name(f_html_safe_replacement_chars_603, simple_name, json_writer_1_expr31, array, range(json_writer_1, 6054, 27, 159, 159), 'HTML_SAFE_REPLACEMENT_CHARS').
name(f_html_safe_replacement_chars_603, simple_name, json_writer_1_expr33, array, range(json_writer_1, 6104, 27, 160, 160), 'HTML_SAFE_REPLACEMENT_CHARS').
name(f_html_safe_replacement_chars_603, simple_name, json_writer_1_expr35, array, range(json_writer_1, 6154, 27, 161, 161), 'HTML_SAFE_REPLACEMENT_CHARS').
name(f_stack_604, simple_name, json_writer_1_code15, name, range(json_writer_1, 6327, 5, 167, 167), 'stack').
name(f_stack_size_605, simple_name, json_writer_1_code22, name, range(json_writer_1, 6362, 9, 168, 168), 'stackSize').
name(m_push_403, simple_name, json_writer_1_expr37, name, range(json_writer_1, 6385, 4, 170, 170), 'push').
name(f_empty_document_606, simple_name, json_writer_1_expr37, (arguments, 0), range(json_writer_1, 6390, 14, 170, 170), 'EMPTY_DOCUMENT').
name(f_separator_607, simple_name, json_writer_1_code27, name, range(json_writer_1, 6648, 9, 182, 182), 'separator').
name(f_serialize_nulls_608, simple_name, json_writer_1_code31, name, range(json_writer_1, 6773, 14, 190, 190), 'serializeNulls').
name(m_json_writer_75, simple_name, json_writer_1_code32, name, range(json_writer_1, 7035, 10, 197, 197), 'JsonWriter').
name(p_out_609, simple_name, json_writer_1_code34, name, range(json_writer_1, 7053, 3, 197, 197), 'out').
name(p_out_609, simple_name, json_writer_1_expr38, left_operand, range(json_writer_1, 7068, 3, 198, 198), 'out').
name(f_out_610, simple_name, json_writer_1_expr40, name, range(json_writer_1, 7151, 3, 201, 201), 'out').
name(p_out_609, simple_name, json_writer_1_expr39, right_hand_side, range(json_writer_1, 7157, 3, 201, 201), 'out').
name(f_serialize_nulls_608, simple_name, json_writer_1_expr43, name, range(json_writer_1, 9275, 14, 269, 269), 'serializeNulls').
name(p_serialize_nulls_614, simple_name, json_writer_1_expr42, right_hand_side, range(json_writer_1, 9292, 14, 269, 269), 'serializeNulls').
name(f_stack_size_605, simple_name, json_writer_1_expr45, left_operand, range(json_writer_1, 11373, 9, 354, 354), 'stackSize').
name(f_stack_604, simple_name, q_length_50, qualifier, range(json_writer_1, 11386, 5, 354, 354), 'stack').
name(q_length_50, qualified_name, json_writer_1_expr45, right_operand, range(json_writer_1, 11386, 12, 354, 354), 'stack.length').
name(f_stack_604, simple_name, json_writer_1_expr47, array, range(json_writer_1, 11541, 5, 359, 359), 'stack').
name(f_stack_size_605, simple_name, json_writer_1_expr48, operand, range(json_writer_1, 11547, 9, 359, 359), 'stackSize').
name(p_new_top_620, simple_name, json_writer_1_expr46, right_hand_side, range(json_writer_1, 11562, 6, 359, 359), 'newTop').
%sql_date_type_adapter_1 - com.google.gson.internal.bind.SqlDateTypeAdapter
name(f_factory_338, simple_name, sql_date_type_adapter_1_code8, name, range(sql_date_type_adapter_1, 1487, 7, 39, 39), 'FACTORY').
name(p_type_token_340, simple_name, sql_date_type_adapter_1_expr5, expression, range(sql_date_type_adapter_1, 1710, 9, 42, 42), 'typeToken').
name(m_get_raw_type_112, simple_name, sql_date_type_adapter_1_expr5, name, range(sql_date_type_adapter_1, 1720, 10, 42, 42), 'getRawType').
%type_adapters_1 - com.google.gson.internal.bind.TypeAdapters
name(f_class_350, simple_name, type_adapters_1_code10, name, range(type_adapters_1, 2203, 5, 69, 69), 'CLASS').
name(f_class_factory_354, simple_name, type_adapters_1_code20, name, range(type_adapters_1, 2945, 13, 90, 90), 'CLASS_FACTORY').
name(m_new_factory_22, simple_name, type_adapters_1_expr2, name, range(type_adapters_1, 2961, 10, 90, 90), 'newFactory').
name(f_class_350, simple_name, type_adapters_1_expr2, (arguments, 1), range(type_adapters_1, 2985, 5, 90, 90), 'CLASS').
name(f_bit_set_355, simple_name, type_adapters_1_code29, name, range(type_adapters_1, 3036, 7, 92, 92), 'BIT_SET').
name(f_bit_set_factory_359, simple_name, type_adapters_1_code39, name, range(type_adapters_1, 4586, 15, 149, 149), 'BIT_SET_FACTORY').
name(m_new_factory_22, simple_name, type_adapters_1_expr5, name, range(type_adapters_1, 4604, 10, 149, 149), 'newFactory').
name(f_bit_set_355, simple_name, type_adapters_1_expr5, (arguments, 1), range(type_adapters_1, 4629, 7, 149, 149), 'BIT_SET').
name(f_boolean_360, simple_name, type_adapters_1_code48, name, range(type_adapters_1, 4683, 7, 151, 151), 'BOOLEAN').
name(f_boolean_as_string_364, simple_name, type_adapters_1_code60, name, range(type_adapters_1, 5448, 17, 177, 177), 'BOOLEAN_AS_STRING').
name(f_boolean_factory_368, simple_name, type_adapters_1_code70, name, range(type_adapters_1, 5911, 15, 191, 191), 'BOOLEAN_FACTORY').
name(f_byte_369, simple_name, type_adapters_1_code78, name, range(type_adapters_1, 6029, 4, 194, 194), 'BYTE').
name(f_byte_factory_373, simple_name, type_adapters_1_code88, name, range(type_adapters_1, 6573, 12, 214, 214), 'BYTE_FACTORY').
name(f_short_374, simple_name, type_adapters_1_code96, name, range(type_adapters_1, 6679, 5, 217, 217), 'SHORT').
name(f_short_factory_378, simple_name, type_adapters_1_code106, name, range(type_adapters_1, 7192, 13, 236, 236), 'SHORT_FACTORY').
name(f_integer_379, simple_name, type_adapters_1_code114, name, range(type_adapters_1, 7302, 7, 239, 239), 'INTEGER').
name(f_integer_factory_383, simple_name, type_adapters_1_code124, name, range(type_adapters_1, 7808, 15, 257, 257), 'INTEGER_FACTORY').
name(f_atomic_integer_384, simple_name, type_adapters_1_code132, name, range(type_adapters_1, 7929, 14, 260, 260), 'ATOMIC_INTEGER').
name(f_atomic_integer_factory_388, simple_name, type_adapters_1_code142, name, range(type_adapters_1, 8398, 22, 272, 272), 'ATOMIC_INTEGER_FACTORY').
name(f_atomic_boolean_389, simple_name, type_adapters_1_code150, name, range(type_adapters_1, 8541, 14, 275, 275), 'ATOMIC_BOOLEAN').
name(f_atomic_boolean_factory_393, simple_name, type_adapters_1_code160, name, range(type_adapters_1, 8908, 22, 283, 283), 'ATOMIC_BOOLEAN_FACTORY').
name(f_atomic_integer_array_394, simple_name, type_adapters_1_code168, name, range(type_adapters_1, 9056, 20, 286, 286), 'ATOMIC_INTEGER_ARRAY').
name(f_atomic_integer_array_factory_398, simple_name, type_adapters_1_code178, name, range(type_adapters_1, 10065, 28, 314, 314), 'ATOMIC_INTEGER_ARRAY_FACTORY').
name(f_long_399, simple_name, type_adapters_1_code186, name, range(type_adapters_1, 10218, 4, 317, 317), 'LONG').
name(f_float_403, simple_name, type_adapters_1_code198, name, range(type_adapters_1, 10724, 5, 336, 336), 'FLOAT').
name(f_double_407, simple_name, type_adapters_1_code210, name, range(type_adapters_1, 11135, 6, 351, 351), 'DOUBLE').
name(f_number_411, simple_name, type_adapters_1_code222, name, range(type_adapters_1, 11539, 6, 366, 366), 'NUMBER').
name(f_number_factory_415, simple_name, type_adapters_1_code232, name, range(type_adapters_1, 12122, 14, 386, 386), 'NUMBER_FACTORY').
name(m_new_factory_22, simple_name, type_adapters_1_expr29, name, range(type_adapters_1, 12139, 10, 386, 386), 'newFactory').
name(f_number_411, simple_name, type_adapters_1_expr29, (arguments, 1), range(type_adapters_1, 12164, 6, 386, 386), 'NUMBER').
name(f_character_416, simple_name, type_adapters_1_code241, name, range(type_adapters_1, 12219, 9, 388, 388), 'CHARACTER').
name(f_character_factory_420, simple_name, type_adapters_1_code251, name, range(type_adapters_1, 12821, 17, 407, 407), 'CHARACTER_FACTORY').
name(f_string_421, simple_name, type_adapters_1_code259, name, range(type_adapters_1, 12942, 6, 410, 410), 'STRING').
name(f_big_decimal_425, simple_name, type_adapters_1_code271, name, range(type_adapters_1, 13546, 11, 430, 430), 'BIG_DECIMAL').
name(f_big_integer_429, simple_name, type_adapters_1_code283, name, range(type_adapters_1, 14088, 11, 448, 448), 'BIG_INTEGER').
name(f_string_factory_433, simple_name, type_adapters_1_code293, name, range(type_adapters_1, 14623, 14, 466, 466), 'STRING_FACTORY').
name(m_new_factory_22, simple_name, type_adapters_1_expr36, name, range(type_adapters_1, 14640, 10, 466, 466), 'newFactory').
name(f_string_421, simple_name, type_adapters_1_expr36, (arguments, 1), range(type_adapters_1, 14665, 6, 466, 466), 'STRING').
name(f_string_builder_434, simple_name, type_adapters_1_code302, name, range(type_adapters_1, 14724, 14, 468, 468), 'STRING_BUILDER').
name(f_string_builder_factory_438, simple_name, type_adapters_1_code312, name, range(type_adapters_1, 15209, 22, 483, 483), 'STRING_BUILDER_FACTORY').
name(f_string_buffer_439, simple_name, type_adapters_1_code320, name, range(type_adapters_1, 15336, 13, 486, 486), 'STRING_BUFFER').
name(f_string_buffer_factory_443, simple_name, type_adapters_1_code330, name, range(type_adapters_1, 15816, 21, 501, 501), 'STRING_BUFFER_FACTORY').
name(f_url_444, simple_name, type_adapters_1_code338, name, range(type_adapters_1, 15931, 3, 504, 504), 'URL').
name(f_url_factory_448, simple_name, type_adapters_1_code348, name, range(type_adapters_1, 16444, 11, 520, 520), 'URL_FACTORY').
name(m_new_factory_22, simple_name, type_adapters_1_expr43, name, range(type_adapters_1, 16458, 10, 520, 520), 'newFactory').
name(f_url_444, simple_name, type_adapters_1_expr43, (arguments, 1), range(type_adapters_1, 16480, 3, 520, 520), 'URL').
name(f_uri_449, simple_name, type_adapters_1_code357, name, range(type_adapters_1, 16526, 3, 522, 522), 'URI').
name(f_uri_factory_453, simple_name, type_adapters_1_code367, name, range(type_adapters_1, 17139, 11, 542, 542), 'URI_FACTORY').
name(m_new_factory_22, simple_name, type_adapters_1_expr46, name, range(type_adapters_1, 17153, 10, 542, 542), 'newFactory').
name(f_uri_449, simple_name, type_adapters_1_expr46, (arguments, 1), range(type_adapters_1, 17175, 3, 542, 542), 'URI').
name(f_inet_address_454, simple_name, type_adapters_1_code376, name, range(type_adapters_1, 17229, 12, 544, 544), 'INET_ADDRESS').
name(f_inet_address_factory_458, simple_name, type_adapters_1_code386, name, range(type_adapters_1, 17804, 20, 560, 560), 'INET_ADDRESS_FACTORY').
name(f_uuid_459, simple_name, type_adapters_1_code394, name, range(type_adapters_1, 17930, 4, 563, 563), 'UUID').
name(f_uuid_factory_463, simple_name, type_adapters_1_code404, name, range(type_adapters_1, 18386, 12, 578, 578), 'UUID_FACTORY').
name(m_new_factory_22, simple_name, type_adapters_1_expr51, name, range(type_adapters_1, 18401, 10, 578, 578), 'newFactory').
name(f_uuid_459, simple_name, type_adapters_1_expr51, (arguments, 1), range(type_adapters_1, 18424, 4, 578, 578), 'UUID').
name(f_currency_464, simple_name, type_adapters_1_code413, name, range(type_adapters_1, 18476, 8, 580, 580), 'CURRENCY').
name(f_currency_factory_468, simple_name, type_adapters_1_code423, name, range(type_adapters_1, 18844, 16, 590, 590), 'CURRENCY_FACTORY').
name(m_new_factory_22, simple_name, type_adapters_1_expr55, name, range(type_adapters_1, 18863, 10, 590, 590), 'newFactory').
name(f_currency_464, simple_name, type_adapters_1_expr55, (arguments, 1), range(type_adapters_1, 18890, 8, 590, 590), 'CURRENCY').
name(f_timestamp_factory_469, simple_name, type_adapters_1_code430, name, range(type_adapters_1, 18943, 17, 592, 592), 'TIMESTAMP_FACTORY').
name(p_type_token_471, simple_name, type_adapters_1_expr59, expression, range(type_adapters_1, 19173, 9, 595, 595), 'typeToken').
name(m_get_raw_type_112, simple_name, type_adapters_1_expr59, name, range(type_adapters_1, 19183, 10, 595, 595), 'getRawType').
name(f_calendar_475, simple_name, type_adapters_1_code442, name, range(type_adapters_1, 19801, 8, 613, 613), 'CALENDAR').
name(f_calendar_factory_479, simple_name, type_adapters_1_code452, name, range(type_adapters_1, 21855, 16, 678, 678), 'CALENDAR_FACTORY').
name(f_locale_480, simple_name, type_adapters_1_code460, name, range(type_adapters_1, 22000, 6, 681, 681), 'LOCALE').
name(f_locale_factory_484, simple_name, type_adapters_1_code470, name, range(type_adapters_1, 23118, 14, 716, 716), 'LOCALE_FACTORY').
name(m_new_factory_22, simple_name, type_adapters_1_expr64, name, range(type_adapters_1, 23135, 10, 716, 716), 'newFactory').
name(f_locale_480, simple_name, type_adapters_1_expr64, (arguments, 1), range(type_adapters_1, 23160, 6, 716, 716), 'LOCALE').
name(f_json_element_485, simple_name, type_adapters_1_code479, name, range(type_adapters_1, 23217, 12, 718, 718), 'JSON_ELEMENT').
name(f_json_element_factory_489, simple_name, type_adapters_1_code489, name, range(type_adapters_1, 25424, 20, 790, 790), 'JSON_ELEMENT_FACTORY').
name(f_enum_factory_494, simple_name, type_adapters_1_code495, name, range(type_adapters_1, 26876, 12, 828, 828), 'ENUM_FACTORY').
name(p_type_token_504, simple_name, type_adapters_1_expr73, expression, range(type_adapters_1, 28178, 9, 857, 857), 'typeToken').
name(m_get_raw_type_112, simple_name, type_adapters_1_expr73, name, range(type_adapters_1, 28188, 10, 857, 857), 'getRawType').
name(p_type_501, simple_name, type_adapters_1_expr71, right_operand, range(type_adapters_1, 28204, 4, 857, 857), 'type').
name(p_type_adapter_502, simple_name, type_adapters_1_expr72, expression, range(type_adapters_1, 28228, 11, 857, 857), 'typeAdapter').
name(v_raw_type_510, simple_name, type_adapters_1_code513, name, range(type_adapters_1, 28793, 7, 870, 870), 'rawType').
name(p_type_token_509, simple_name, type_adapters_1_expr75, expression, range(type_adapters_1, 28803, 9, 870, 870), 'typeToken').
name(m_get_raw_type_112, simple_name, type_adapters_1_expr75, name, range(type_adapters_1, 28813, 10, 870, 870), 'getRawType').
name(v_raw_type_510, simple_name, type_adapters_1_expr80, left_operand, range(type_adapters_1, 28843, 7, 871, 871), 'rawType').
name(p_unboxed_505, simple_name, type_adapters_1_expr80, right_operand, range(type_adapters_1, 28854, 7, 871, 871), 'unboxed').
name(v_raw_type_510, simple_name, type_adapters_1_expr81, left_operand, range(type_adapters_1, 28865, 7, 871, 871), 'rawType').
name(p_boxed_506, simple_name, type_adapters_1_expr81, right_operand, range(type_adapters_1, 28876, 5, 871, 871), 'boxed').
name(p_type_adapter_507, simple_name, type_adapters_1_expr78, expression, range(type_adapters_1, 28902, 11, 871, 871), 'typeAdapter').
name(v_raw_type_516, simple_name, type_adapters_1_code525, name, range(type_adapters_1, 29526, 7, 885, 885), 'rawType').
name(p_type_token_515, simple_name, type_adapters_1_expr83, expression, range(type_adapters_1, 29536, 9, 885, 885), 'typeToken').
name(m_get_raw_type_112, simple_name, type_adapters_1_expr83, name, range(type_adapters_1, 29546, 10, 885, 885), 'getRawType').
name(v_raw_type_516, simple_name, type_adapters_1_expr88, left_operand, range(type_adapters_1, 29576, 7, 886, 886), 'rawType').
name(p_base_511, simple_name, type_adapters_1_expr88, right_operand, range(type_adapters_1, 29587, 4, 886, 886), 'base').
name(v_raw_type_516, simple_name, type_adapters_1_expr89, left_operand, range(type_adapters_1, 29595, 7, 886, 886), 'rawType').
name(p_sub_512, simple_name, type_adapters_1_expr89, right_operand, range(type_adapters_1, 29606, 3, 886, 886), 'sub').
name(p_type_adapter_513, simple_name, type_adapters_1_expr86, expression, range(type_adapters_1, 29630, 11, 886, 886), 'typeAdapter').
name(v_requested_type_521, simple_name, type_adapters_1_code538, name, range(type_adapters_1, 30334, 13, 904, 904), 'requestedType').
name(p_type_token_520, simple_name, type_adapters_1_expr91, expression, range(type_adapters_1, 30350, 9, 904, 904), 'typeToken').
name(m_get_raw_type_112, simple_name, type_adapters_1_expr91, name, range(type_adapters_1, 30360, 10, 904, 904), 'getRawType').
name(p_clazz_517, simple_name, type_adapters_1_expr93, expression, range(type_adapters_1, 30387, 5, 905, 905), 'clazz').
name(m_is_assignable_from_152, simple_name, type_adapters_1_expr93, name, range(type_adapters_1, 30393, 16, 905, 905), 'isAssignableFrom').
name(v_requested_type_521, simple_name, type_adapters_1_expr93, (arguments, 0), range(type_adapters_1, 30410, 13, 905, 905), 'requestedType').
%time_type_adapter_1 - com.google.gson.internal.bind.TimeTypeAdapter
name(f_factory_344, simple_name, time_type_adapter_1_code8, name, range(time_type_adapter_1, 1511, 7, 41, 41), 'FACTORY').
name(p_type_token_346, simple_name, time_type_adapter_1_expr5, expression, range(time_type_adapter_1, 1734, 9, 44, 44), 'typeToken').
name(m_get_raw_type_112, simple_name, time_type_adapter_1_expr5, name, range(time_type_adapter_1, 1744, 10, 44, 44), 'getRawType').
%map_type_adapter_factory_1 - com.google.gson.internal.bind.MapTypeAdapterFactory
name(p_complex_map_key_serialization_266, simple_name, map_type_adapter_factory_1_code4, name, range(map_type_adapter_factory_1, 4130, 26, 110, 110), 'complexMapKeySerialization').
name(f_constructor_constructor_267, simple_name, map_type_adapter_factory_1_expr2, name, range(map_type_adapter_factory_1, 4169, 22, 111, 111), 'constructorConstructor').
name(p_constructor_constructor_265, simple_name, map_type_adapter_factory_1_expr1, right_hand_side, range(map_type_adapter_factory_1, 4194, 22, 111, 111), 'constructorConstructor').
name(f_complex_map_key_serialization_268, simple_name, map_type_adapter_factory_1_expr5, name, range(map_type_adapter_factory_1, 4227, 26, 112, 112), 'complexMapKeySerialization').
name(p_complex_map_key_serialization_266, simple_name, map_type_adapter_factory_1_expr4, right_hand_side, range(map_type_adapter_factory_1, 4256, 26, 112, 112), 'complexMapKeySerialization').
name(v_type_271, simple_name, map_type_adapter_factory_1_code8, name, range(map_type_adapter_factory_1, 4380, 4, 116, 116), 'type').
name(p_type_token_270, simple_name, map_type_adapter_factory_1_expr7, expression, range(map_type_adapter_factory_1, 4387, 9, 116, 116), 'typeToken').
name(m_get_type_111, simple_name, map_type_adapter_factory_1_expr7, name, range(map_type_adapter_factory_1, 4397, 7, 116, 116), 'getType').
name(v_raw_type_272, simple_name, map_type_adapter_factory_1_code13, name, range(map_type_adapter_factory_1, 4430, 7, 118, 118), 'rawType').
name(p_type_token_270, simple_name, map_type_adapter_factory_1_expr8, expression, range(map_type_adapter_factory_1, 4440, 9, 118, 118), 'typeToken').
name(m_get_raw_type_112, simple_name, map_type_adapter_factory_1_expr8, name, range(map_type_adapter_factory_1, 4450, 10, 118, 118), 'getRawType').
name(m_is_assignable_from_152, simple_name, map_type_adapter_factory_1_expr10, name, range(map_type_adapter_factory_1, 4483, 16, 119, 119), 'isAssignableFrom').
name(v_raw_type_272, simple_name, map_type_adapter_factory_1_expr10, (arguments, 0), range(map_type_adapter_factory_1, 4500, 7, 119, 119), 'rawType').
%field_naming_policy_1 - com.google.gson.FieldNamingPolicy
name(t_field_naming_policy_1, simple_name, field_naming_policy_1_code2, name, range(field_naming_policy_1, 1064, 17, 31, 31), 'FieldNamingPolicy').
name(f_identity_1, simple_name, field_naming_policy_1_code5, name, range(field_naming_policy_1, 1221, 8, 37, 37), 'IDENTITY').
name(f_upper_camel_case_3, simple_name, field_naming_policy_1_code7, name, range(field_naming_policy_1, 1706, 16, 53, 53), 'UPPER_CAMEL_CASE').
name(f_upper_camel_case_with_spaces_5, simple_name, field_naming_policy_1_code9, name, range(field_naming_policy_1, 2294, 28, 72, 72), 'UPPER_CAMEL_CASE_WITH_SPACES').
name(f_lower_case_with_underscores_7, simple_name, field_naming_policy_1_code11, name, range(field_naming_policy_1, 2960, 27, 90, 90), 'LOWER_CASE_WITH_UNDERSCORES').
name(f_lower_case_with_dashes_9, simple_name, field_naming_policy_1_code13, name, range(field_naming_policy_1, 3993, 22, 113, 113), 'LOWER_CASE_WITH_DASHES').
%type_adapter_1 - com.google.gson.TypeAdapter
name(t_type_adapter_15, simple_name, type_adapter_1_code2, name, range(type_adapter_1, 5160, 11, 119, 119), 'TypeAdapter').
name(t_t_16, simple_name, type_adapter_1_code5, name, range(type_adapter_1, 5172, 1, 119, 119), 'T').
%collection_type_adapter_factory_1 - com.google.gson.internal.bind.CollectionTypeAdapterFactory
name(m_collection_type_adapter_factory_25, simple_name, collection_type_adapter_factory_1_code3, name, range(collection_type_adapter_factory_1, 1364, 28, 39, 39), 'CollectionTypeAdapterFactory').
name(p_constructor_constructor_233, simple_name, collection_type_adapter_factory_1_code5, name, range(collection_type_adapter_factory_1, 1416, 22, 39, 39), 'constructorConstructor').
name(f_constructor_constructor_234, simple_name, collection_type_adapter_factory_1_expr2, name, range(collection_type_adapter_factory_1, 1451, 22, 40, 40), 'constructorConstructor').
name(p_constructor_constructor_233, simple_name, collection_type_adapter_factory_1_expr1, right_hand_side, range(collection_type_adapter_factory_1, 1476, 22, 40, 40), 'constructorConstructor').
name(v_type_237, simple_name, collection_type_adapter_factory_1_code9, name, range(collection_type_adapter_factory_1, 1598, 4, 45, 45), 'type').
name(p_type_token_236, simple_name, collection_type_adapter_factory_1_expr4, expression, range(collection_type_adapter_factory_1, 1605, 9, 45, 45), 'typeToken').
name(m_get_type_111, simple_name, collection_type_adapter_factory_1_expr4, name, range(collection_type_adapter_factory_1, 1615, 7, 45, 45), 'getType').
name(v_raw_type_238, simple_name, collection_type_adapter_factory_1_code14, name, range(collection_type_adapter_factory_1, 1648, 7, 47, 47), 'rawType').
name(p_type_token_236, simple_name, collection_type_adapter_factory_1_expr5, expression, range(collection_type_adapter_factory_1, 1658, 9, 47, 47), 'typeToken').
name(m_get_raw_type_112, simple_name, collection_type_adapter_factory_1_expr5, name, range(collection_type_adapter_factory_1, 1668, 10, 47, 47), 'getRawType').
name(m_is_assignable_from_152, simple_name, collection_type_adapter_factory_1_expr7, name, range(collection_type_adapter_factory_1, 1708, 16, 48, 48), 'isAssignableFrom').
name(v_raw_type_238, simple_name, collection_type_adapter_factory_1_expr7, (arguments, 0), range(collection_type_adapter_factory_1, 1725, 7, 48, 48), 'rawType').
%excluder_1 - com.google.gson.internal.Excluder
name(t_excluder_2, simple_name, excluder_1_code2, name, range(excluder_1, 1771, 8, 50, 50), 'Excluder').
name(f_default_33, simple_name, excluder_1_code12, name, range(excluder_1, 1909, 7, 52, 52), 'DEFAULT').
name(f_version_178, simple_name, excluder_1_code17, name, range(excluder_1, 1953, 7, 54, 54), 'version').
name(f_ignore_versions_179, simple_name, excluder_1_code17, initializer, range(excluder_1, 1963, 15, 54, 54), 'IGNORE_VERSIONS').
name(f_modifiers_180, simple_name, excluder_1_code21, name, range(excluder_1, 1994, 9, 55, 55), 'modifiers').
name(t_modifier_17, simple_name, q_transient_36, qualifier, range(excluder_1, 2006, 8, 55, 55), 'Modifier').
name(q_transient_36, qualified_name, excluder_1_expr2, left_operand, range(excluder_1, 2006, 18, 55, 55), 'Modifier.TRANSIENT').
name(q_static_37, qualified_name, excluder_1_expr2, right_operand, range(excluder_1, 2027, 15, 55, 55), 'Modifier.STATIC').
name(t_modifier_17, simple_name, q_static_37, qualifier, range(excluder_1, 2027, 8, 55, 55), 'Modifier').
name(f_serialize_inner_classes_181, simple_name, excluder_1_code25, name, range(excluder_1, 2062, 21, 56, 56), 'serializeInnerClasses').
name(f_serialization_strategies_182, simple_name, excluder_1_code31, name, range(excluder_1, 2159, 23, 58, 58), 'serializationStrategies').
name(t_collections_9, simple_name, excluder_1_expr3, expression, range(excluder_1, 2185, 11, 58, 58), 'Collections').
name(m_empty_list_137, simple_name, excluder_1_expr3, name, range(excluder_1, 2197, 9, 58, 58), 'emptyList').
name(f_deserialization_strategies_183, simple_name, excluder_1_code37, name, range(excluder_1, 2244, 25, 59, 59), 'deserializationStrategies').
name(t_collections_9, simple_name, excluder_1_expr4, expression, range(excluder_1, 2272, 11, 59, 59), 'Collections').
name(m_empty_list_137, simple_name, excluder_1_expr4, name, range(excluder_1, 2284, 9, 59, 59), 'emptyList').
name(v_raw_type_191, simple_name, excluder_1_code42, name, range(excluder_1, 3823, 7, 112, 112), 'rawType').
name(p_type_190, simple_name, excluder_1_expr5, expression, range(excluder_1, 3833, 4, 112, 112), 'type').
name(m_get_raw_type_112, simple_name, excluder_1_expr5, name, range(excluder_1, 3838, 10, 112, 112), 'getRawType').
name(v_skip_serialize_192, simple_name, excluder_1_code45, name, range(excluder_1, 3870, 13, 113, 113), 'skipSerialize').
name(m_exclude_class_145, simple_name, excluder_1_expr6, name, range(excluder_1, 3886, 12, 113, 113), 'excludeClass').
name(v_raw_type_191, simple_name, excluder_1_expr6, (arguments, 0), range(excluder_1, 3899, 7, 113, 113), 'rawType').
name(v_skip_deserialize_193, simple_name, excluder_1_code48, name, range(excluder_1, 3933, 15, 114, 114), 'skipDeserialize').
name(m_exclude_class_145, simple_name, excluder_1_expr7, name, range(excluder_1, 3951, 12, 114, 114), 'excludeClass').
name(v_raw_type_191, simple_name, excluder_1_expr7, (arguments, 0), range(excluder_1, 3964, 7, 114, 114), 'rawType').
name(v_skip_serialize_192, simple_name, excluder_1_expr9, operand, range(excluder_1, 3991, 13, 116, 116), 'skipSerialize').
name(v_skip_deserialize_193, simple_name, excluder_1_expr10, operand, range(excluder_1, 4009, 15, 116, 116), 'skipDeserialize').
name(f_version_178, simple_name, excluder_1_expr12, left_operand, range(excluder_1, 6072, 7, 192, 192), 'version').
name(q_ignore_versions_38, qualified_name, excluder_1_expr12, right_operand, range(excluder_1, 6083, 24, 192, 192), 'Excluder.IGNORE_VERSIONS').
name(t_excluder_2, simple_name, q_ignore_versions_38, qualifier, range(excluder_1, 6083, 8, 192, 192), 'Excluder').
name(f_serialize_inner_classes_181, simple_name, excluder_1_expr14, operand, range(excluder_1, 6241, 21, 197, 197), 'serializeInnerClasses').
name(m_is_inner_class_150, simple_name, excluder_1_expr15, name, range(excluder_1, 6266, 12, 197, 197), 'isInnerClass').
name(p_clazz_199, simple_name, excluder_1_expr15, (arguments, 0), range(excluder_1, 6279, 5, 197, 197), 'clazz').
name(m_is_anonymous_or_local_151, simple_name, excluder_1_expr16, name, range(excluder_1, 6323, 18, 201, 201), 'isAnonymousOrLocal').
name(p_clazz_199, simple_name, excluder_1_expr16, (arguments, 0), range(excluder_1, 6342, 5, 201, 201), 'clazz').
name(v_list_201, simple_name, excluder_1_code53, name, range(excluder_1, 6406, 4, 205, 205), 'list').
name(p_serialize_200, simple_name, excluder_1_expr17, expression, range(excluder_1, 6413, 9, 205, 205), 'serialize').
name(f_serialization_strategies_182, simple_name, excluder_1_expr17, then_expression, range(excluder_1, 6425, 23, 205, 205), 'serializationStrategies').
name(f_deserialization_strategies_183, simple_name, excluder_1_expr17, else_expression, range(excluder_1, 6451, 25, 205, 205), 'deserializationStrategies').
name(v_exclusion_strategy_202, simple_name, excluder_1_code54, name, range(excluder_1, 6505, 17, 206, 206), 'exclusionStrategy').
name(v_list_201, simple_name, excluder_1_stmt10, expression, range(excluder_1, 6525, 4, 206, 206), 'list').
name(m_is_assignable_from_152, simple_name, excluder_1_expr20, name, range(excluder_1, 6724, 16, 216, 216), 'isAssignableFrom').
name(p_clazz_203, simple_name, excluder_1_expr20, (arguments, 0), range(excluder_1, 6741, 5, 216, 216), 'clazz').
%long_serialization_policy_1 - com.google.gson.LongSerializationPolicy
name(t_long_serialization_policy_10, simple_name, long_serialization_policy_1_code2, name, range(long_serialization_policy_1, 804, 23, 27, 27), 'LongSerializationPolicy').
name(f_default_145, simple_name, long_serialization_policy_1_code4, name, range(long_serialization_policy_1, 1078, 7, 34, 34), 'DEFAULT').
name(f_string_147, simple_name, long_serialization_policy_1_code6, name, range(long_serialization_policy_1, 1390, 6, 45, 45), 'STRING').
%json_adapter_annotation_type_adapter_factory_1 - com.google.gson.internal.bind.JsonAdapterAnnotationTypeAdapterFactory
name(m_json_adapter_annotation_type_adapter_factory_27, simple_name, json_adapter_annotation_type_adapter_factory_1_code3, name, range(json_adapter_annotation_type_adapter_factory_1, 1226, 39, 36, 36), 'JsonAdapterAnnotationTypeAdapterFactory').
name(p_constructor_constructor_253, simple_name, json_adapter_annotation_type_adapter_factory_1_code5, name, range(json_adapter_annotation_type_adapter_factory_1, 1289, 22, 36, 36), 'constructorConstructor').
name(f_constructor_constructor_254, simple_name, json_adapter_annotation_type_adapter_factory_1_expr2, name, range(json_adapter_annotation_type_adapter_factory_1, 1324, 22, 37, 37), 'constructorConstructor').
name(p_constructor_constructor_253, simple_name, json_adapter_annotation_type_adapter_factory_1_expr1, right_hand_side, range(json_adapter_annotation_type_adapter_factory_1, 1349, 22, 37, 37), 'constructorConstructor').
name(m_get_type_adapter_186, simple_name, json_adapter_annotation_type_adapter_factory_1_expr5, name, range(json_adapter_annotation_type_adapter_factory_1, 1666, 14, 47, 47), 'getTypeAdapter').
name(f_constructor_constructor_254, simple_name, json_adapter_annotation_type_adapter_factory_1_expr5, (arguments, 0), range(json_adapter_annotation_type_adapter_factory_1, 1681, 22, 47, 47), 'constructorConstructor').
name(p_gson_255, simple_name, json_adapter_annotation_type_adapter_factory_1_expr5, (arguments, 1), range(json_adapter_annotation_type_adapter_factory_1, 1705, 4, 47, 47), 'gson').
name(p_target_type_256, simple_name, json_adapter_annotation_type_adapter_factory_1_expr5, (arguments, 2), range(json_adapter_annotation_type_adapter_factory_1, 1711, 10, 47, 47), 'targetType').
name(v_annotation_257, simple_name, json_adapter_annotation_type_adapter_factory_1_expr5, (arguments, 3), range(json_adapter_annotation_type_adapter_factory_1, 1723, 10, 47, 47), 'annotation').
name(v_value_262, simple_name, json_adapter_annotation_type_adapter_factory_1_code15, name, range(json_adapter_annotation_type_adapter_factory_1, 1974, 5, 53, 53), 'value').
name(p_annotation_261, simple_name, json_adapter_annotation_type_adapter_factory_1_expr6, expression, range(json_adapter_annotation_type_adapter_factory_1, 1982, 10, 53, 53), 'annotation').
name(m_value_187, simple_name, json_adapter_annotation_type_adapter_factory_1_expr6, name, range(json_adapter_annotation_type_adapter_factory_1, 1993, 5, 53, 53), 'value').
name(m_is_assignable_from_152, simple_name, json_adapter_annotation_type_adapter_factory_1_expr7, name, range(json_adapter_annotation_type_adapter_factory_1, 2060, 16, 55, 55), 'isAssignableFrom').
name(v_value_262, simple_name, json_adapter_annotation_type_adapter_factory_1_expr7, (arguments, 0), range(json_adapter_annotation_type_adapter_factory_1, 2077, 5, 55, 55), 'value').
name(m_is_assignable_from_152, simple_name, json_adapter_annotation_type_adapter_factory_1_expr9, name, range(json_adapter_annotation_type_adapter_factory_1, 2298, 16, 58, 58), 'isAssignableFrom').
name(v_value_262, simple_name, json_adapter_annotation_type_adapter_factory_1_expr9, (arguments, 0), range(json_adapter_annotation_type_adapter_factory_1, 2315, 5, 58, 58), 'value').
name(v_type_adapter_factory_263, simple_name, json_adapter_annotation_type_adapter_factory_1_code21, name, range(json_adapter_annotation_type_adapter_factory_1, 2357, 18, 59, 59), 'typeAdapterFactory').
name(v_value_262, simple_name, json_adapter_annotation_type_adapter_factory_1_expr11, expression, range(json_adapter_annotation_type_adapter_factory_1, 2406, 5, 59, 59), 'value').
name(v_type_adapter_264, simple_name, json_adapter_annotation_type_adapter_factory_1_expr12, left_hand_side, range(json_adapter_annotation_type_adapter_factory_1, 2419, 11, 60, 60), 'typeAdapter').
name(p_constructor_constructor_258, simple_name, json_adapter_annotation_type_adapter_factory_1_expr15, expression, range(json_adapter_annotation_type_adapter_factory_1, 2433, 22, 60, 60), 'constructorConstructor').
name(m_get_110, simple_name, json_adapter_annotation_type_adapter_factory_1_expr15, name, range(json_adapter_annotation_type_adapter_factory_1, 2456, 3, 60, 60), 'get').
name(t_type_token_12, simple_name, json_adapter_annotation_type_adapter_factory_1_expr16, expression, range(json_adapter_annotation_type_adapter_factory_1, 2460, 9, 60, 60), 'TypeToken').
name(m_get_189, simple_name, json_adapter_annotation_type_adapter_factory_1_expr16, name, range(json_adapter_annotation_type_adapter_factory_1, 2470, 3, 60, 60), 'get').
name(v_type_adapter_factory_263, simple_name, json_adapter_annotation_type_adapter_factory_1_expr16, (arguments, 0), range(json_adapter_annotation_type_adapter_factory_1, 2474, 18, 60, 60), 'typeAdapterFactory').
name(p_gson_259, simple_name, json_adapter_annotation_type_adapter_factory_1_expr13, (arguments, 0), range(json_adapter_annotation_type_adapter_factory_1, 2536, 4, 62, 62), 'gson').
name(p_field_type_260, simple_name, json_adapter_annotation_type_adapter_factory_1_expr13, (arguments, 1), range(json_adapter_annotation_type_adapter_factory_1, 2542, 9, 62, 62), 'fieldType').
name(v_type_adapter_264, simple_name, json_adapter_annotation_type_adapter_factory_1_expr17, left_hand_side, range(json_adapter_annotation_type_adapter_factory_1, 2707, 11, 67, 67), 'typeAdapter').
name(v_type_adapter_264, simple_name, json_adapter_annotation_type_adapter_factory_1_expr18, expression, range(json_adapter_annotation_type_adapter_factory_1, 2721, 11, 67, 67), 'typeAdapter').
name(m_null_safe_41, simple_name, json_adapter_annotation_type_adapter_factory_1_expr18, name, range(json_adapter_annotation_type_adapter_factory_1, 2733, 8, 67, 67), 'nullSafe').
%json_reader_1 - com.google.gson.stream.JsonReader
name(f_non_execute_prefix_555, simple_name, json_reader_1_code10, name, range(json_reader_1, 7330, 18, 192, 192), 'NON_EXECUTE_PREFIX').
name(m_to_char_array_362, simple_name, json_reader_1_expr1, name, range(json_reader_1, 7360, 11, 192, 192), 'toCharArray').
name(f_lenient_556, simple_name, json_reader_1_code14, name, range(json_reader_1, 9072, 7, 230, 230), 'lenient').
name(f_buffer_557, simple_name, json_reader_1_code21, name, range(json_reader_1, 9419, 6, 238, 238), 'buffer').
name(f_pos_558, simple_name, json_reader_1_code28, name, range(json_reader_1, 9458, 3, 239, 239), 'pos').
name(f_limit_559, simple_name, json_reader_1_code32, name, range(json_reader_1, 9481, 5, 240, 240), 'limit').
name(f_line_number_560, simple_name, json_reader_1_code36, name, range(json_reader_1, 9507, 10, 242, 242), 'lineNumber').
name(f_line_start_561, simple_name, json_reader_1_code40, name, range(json_reader_1, 9537, 9, 243, 243), 'lineStart').
name(f_peeked_562, simple_name, json_reader_1_code43, name, range(json_reader_1, 9559, 6, 245, 245), 'peeked').
name(f_peeked_none_563, simple_name, json_reader_1_code43, initializer, range(json_reader_1, 9568, 11, 245, 245), 'PEEKED_NONE').
name(f_stack_564, simple_name, json_reader_1_code49, name, range(json_reader_1, 10239, 5, 269, 269), 'stack').
name(f_stack_size_565, simple_name, json_reader_1_code56, name, range(json_reader_1, 10274, 9, 270, 270), 'stackSize').
name(f_stack_564, simple_name, json_reader_1_expr5, array, range(json_reader_1, 10297, 5, 272, 272), 'stack').
name(f_stack_size_565, simple_name, json_reader_1_expr6, operand, range(json_reader_1, 10303, 9, 272, 272), 'stackSize').
name(t_json_scope_23, simple_name, q_empty_document_39, qualifier, range(json_reader_1, 10318, 9, 272, 272), 'JsonScope').
name(q_empty_document_39, qualified_name, json_reader_1_expr4, right_hand_side, range(json_reader_1, 10318, 24, 272, 272), 'JsonScope.EMPTY_DOCUMENT').
name(f_path_names_566, simple_name, json_reader_1_code63, name, range(json_reader_1, 10831, 9, 283, 283), 'pathNames').
name(f_path_indices_567, simple_name, json_reader_1_code72, name, range(json_reader_1, 10875, 11, 284, 284), 'pathIndices').
name(m_json_reader_78, simple_name, json_reader_1_code76, name, range(json_reader_1, 11002, 10, 289, 289), 'JsonReader').
name(p_in_568, simple_name, json_reader_1_code78, name, range(json_reader_1, 11020, 2, 289, 289), 'in').
name(p_in_568, simple_name, json_reader_1_expr9, left_operand, range(json_reader_1, 11034, 2, 290, 290), 'in').
name(f_in_569, simple_name, json_reader_1_expr11, name, range(json_reader_1, 11115, 2, 293, 293), 'in').
name(p_in_568, simple_name, json_reader_1_expr10, right_hand_side, range(json_reader_1, 11120, 2, 293, 293), 'in').
name(f_lenient_556, simple_name, json_reader_1_expr14, name, range(json_reader_1, 12744, 7, 326, 326), 'lenient').
name(p_lenient_570, simple_name, json_reader_1_expr13, right_hand_side, range(json_reader_1, 12754, 7, 326, 326), 'lenient').
name(f_lenient_556, simple_name, json_reader_1_stmt5, expression, range(json_reader_1, 12892, 7, 333, 333), 'lenient').
name(v_p_571, simple_name, json_reader_1_code84, name, range(json_reader_1, 15650, 1, 427, 427), 'p').
name(f_peeked_562, simple_name, json_reader_1_code84, initializer, range(json_reader_1, 15654, 6, 427, 427), 'peeked').
name(v_p_571, simple_name, json_reader_1_expr16, left_operand, range(json_reader_1, 15670, 1, 428, 428), 'p').
name(f_peeked_none_563, simple_name, json_reader_1_expr16, right_operand, range(json_reader_1, 15675, 11, 428, 428), 'PEEKED_NONE').
name(v_p_571, simple_name, json_reader_1_expr17, left_hand_side, range(json_reader_1, 15696, 1, 429, 429), 'p').
name(m_do_peek_368, simple_name, json_reader_1_expr18, name, range(json_reader_1, 15700, 6, 429, 429), 'doPeek').
name(v_p_571, simple_name, json_reader_1_stmt9, expression, range(json_reader_1, 15729, 1, 432, 432), 'p').
name(q_begin_object_40, qualified_name, json_reader_1_stmt10, expression, range(json_reader_1, 15777, 22, 434, 434), 'JsonToken.BEGIN_OBJECT').
name(t_json_token_24, simple_name, q_begin_object_40, qualifier, range(json_reader_1, 15777, 9, 434, 434), 'JsonToken').
name(v_peek_stack_572, simple_name, json_reader_1_code87, name, range(json_reader_1, 16632, 9, 466, 466), 'peekStack').
name(f_stack_564, simple_name, json_reader_1_expr19, array, range(json_reader_1, 16644, 5, 466, 466), 'stack').
name(f_stack_size_565, simple_name, json_reader_1_expr20, left_operand, range(json_reader_1, 16650, 9, 466, 466), 'stackSize').
name(v_peek_stack_572, simple_name, json_reader_1_expr21, left_operand, range(json_reader_1, 16674, 9, 467, 467), 'peekStack').
name(q_empty_array_41, qualified_name, json_reader_1_expr21, right_operand, range(json_reader_1, 16687, 21, 467, 467), 'JsonScope.EMPTY_ARRAY').
name(t_json_scope_23, simple_name, q_empty_array_41, qualifier, range(json_reader_1, 16687, 9, 467, 467), 'JsonScope').
name(v_peek_stack_572, simple_name, json_reader_1_expr22, left_operand, range(json_reader_1, 16782, 9, 469, 469), 'peekStack').
name(t_json_scope_23, simple_name, q_nonempty_array_42, qualifier, range(json_reader_1, 16795, 9, 469, 469), 'JsonScope').
name(q_nonempty_array_42, qualified_name, json_reader_1_expr22, right_operand, range(json_reader_1, 16795, 24, 469, 469), 'JsonScope.NONEMPTY_ARRAY').
name(v_peek_stack_572, simple_name, json_reader_1_expr24, left_operand, range(json_reader_1, 17164, 9, 482, 482), 'peekStack').
name(q_empty_object_43, qualified_name, json_reader_1_expr24, right_operand, range(json_reader_1, 17177, 22, 482, 482), 'JsonScope.EMPTY_OBJECT').
name(t_json_scope_23, simple_name, q_empty_object_43, qualifier, range(json_reader_1, 17177, 9, 482, 482), 'JsonScope').
name(v_peek_stack_572, simple_name, json_reader_1_expr25, left_operand, range(json_reader_1, 17203, 9, 482, 482), 'peekStack').
name(q_nonempty_object_44, qualified_name, json_reader_1_expr25, right_operand, range(json_reader_1, 17216, 25, 482, 482), 'JsonScope.NONEMPTY_OBJECT').
name(t_json_scope_23, simple_name, q_nonempty_object_44, qualifier, range(json_reader_1, 17216, 9, 482, 482), 'JsonScope').
name(v_peek_stack_572, simple_name, json_reader_1_expr26, left_operand, range(json_reader_1, 18407, 9, 520, 520), 'peekStack').
name(t_json_scope_23, simple_name, q_dangling_name_45, qualifier, range(json_reader_1, 18420, 9, 520, 520), 'JsonScope').
name(q_dangling_name_45, qualified_name, json_reader_1_expr26, right_operand, range(json_reader_1, 18420, 23, 520, 520), 'JsonScope.DANGLING_NAME').
name(v_peek_stack_572, simple_name, json_reader_1_expr27, left_operand, range(json_reader_1, 18867, 9, 536, 536), 'peekStack').
name(q_empty_document_46, qualified_name, json_reader_1_expr27, right_operand, range(json_reader_1, 18880, 24, 536, 536), 'JsonScope.EMPTY_DOCUMENT').
name(t_json_scope_23, simple_name, q_empty_document_46, qualifier, range(json_reader_1, 18880, 9, 536, 536), 'JsonScope').
name(f_lenient_556, simple_name, json_reader_1_stmt17, expression, range(json_reader_1, 18918, 7, 537, 537), 'lenient').
name(m_consume_non_execute_prefix_369, simple_name, json_reader_1_expr28, name, range(json_reader_1, 18937, 23, 538, 538), 'consumeNonExecutePrefix').
name(f_stack_564, simple_name, json_reader_1_expr30, array, range(json_reader_1, 18978, 5, 540, 540), 'stack').
name(f_stack_size_565, simple_name, json_reader_1_expr31, left_operand, range(json_reader_1, 18984, 9, 540, 540), 'stackSize').
name(t_json_scope_23, simple_name, q_nonempty_document_46, qualifier, range(json_reader_1, 19001, 9, 540, 540), 'JsonScope').
name(q_nonempty_document_46, qualified_name, json_reader_1_expr29, right_hand_side, range(json_reader_1, 19001, 27, 540, 540), 'JsonScope.NONEMPTY_DOCUMENT').
name(v_c_573, simple_name, json_reader_1_code89, name, range(json_reader_1, 19374, 1, 553, 553), 'c').
name(m_next_non_whitespace_370, simple_name, json_reader_1_expr32, name, range(json_reader_1, 19378, 17, 553, 553), 'nextNonWhitespace').
name(v_c_573, simple_name, json_reader_1_stmt21, expression, range(json_reader_1, 19415, 1, 554, 554), 'c').
name(f_peeked_562, simple_name, json_reader_1_expr33, left_hand_side, range(json_reader_1, 20125, 6, 578, 578), 'peeked').
name(f_peeked_begin_object_574, simple_name, json_reader_1_expr33, right_hand_side, range(json_reader_1, 20134, 19, 578, 578), 'PEEKED_BEGIN_OBJECT').
name(v_buffer_580, simple_name, json_reader_1_code94, name, range(json_reader_1, 41743, 6, 1282, 1282), 'buffer').
name(f_buffer_557, simple_name, json_reader_1_expr34, name, range(json_reader_1, 41757, 6, 1282, 1282), 'buffer').
name(f_line_start_561, simple_name, json_reader_1_expr36, left_hand_side, range(json_reader_1, 41769, 9, 1283, 1283), 'lineStart').
name(f_pos_558, simple_name, json_reader_1_expr36, right_hand_side, range(json_reader_1, 41782, 3, 1283, 1283), 'pos').
name(f_limit_559, simple_name, json_reader_1_expr37, left_operand, range(json_reader_1, 41795, 5, 1284, 1284), 'limit').
name(f_pos_558, simple_name, json_reader_1_expr37, right_operand, range(json_reader_1, 41804, 3, 1284, 1284), 'pos').
name(f_limit_559, simple_name, json_reader_1_expr38, left_hand_side, range(json_reader_1, 41905, 5, 1288, 1288), 'limit').
name(f_pos_558, simple_name, json_reader_1_expr39, left_hand_side, range(json_reader_1, 41927, 3, 1291, 1291), 'pos').
name(v_total_581, simple_name, json_reader_1_expr42, left_hand_side, range(json_reader_1, 41963, 5, 1293, 1293), 'total').
name(f_in_569, simple_name, json_reader_1_expr43, expression, range(json_reader_1, 41971, 2, 1293, 1293), 'in').
name(m_read_389, simple_name, json_reader_1_expr43, name, range(json_reader_1, 41974, 4, 1293, 1293), 'read').
name(v_buffer_580, simple_name, json_reader_1_expr43, (arguments, 0), range(json_reader_1, 41979, 6, 1293, 1293), 'buffer').
name(f_limit_559, simple_name, json_reader_1_expr43, (arguments, 1), range(json_reader_1, 41987, 5, 1293, 1293), 'limit').
name(v_buffer_580, simple_name, q_length_47, qualifier, range(json_reader_1, 41994, 6, 1293, 1293), 'buffer').
name(q_length_47, qualified_name, json_reader_1_expr44, left_operand, range(json_reader_1, 41994, 13, 1293, 1293), 'buffer.length').
name(f_limit_559, simple_name, json_reader_1_expr44, right_operand, range(json_reader_1, 42010, 5, 1293, 1293), 'limit').
name(f_limit_559, simple_name, json_reader_1_expr46, left_hand_side, range(json_reader_1, 42033, 5, 1294, 1294), 'limit').
name(v_total_581, simple_name, json_reader_1_expr46, right_hand_side, range(json_reader_1, 42042, 5, 1294, 1294), 'total').
name(f_line_number_560, simple_name, json_reader_1_expr50, left_operand, range(json_reader_1, 42151, 10, 1297, 1297), 'lineNumber').
name(f_line_start_561, simple_name, json_reader_1_expr51, left_operand, range(json_reader_1, 42170, 9, 1297, 1297), 'lineStart').
name(f_limit_559, simple_name, json_reader_1_expr52, left_operand, range(json_reader_1, 42188, 5, 1297, 1297), 'limit').
name(v_buffer_580, simple_name, json_reader_1_expr54, array, range(json_reader_1, 42201, 6, 1297, 1297), 'buffer').
name(f_limit_559, simple_name, json_reader_1_expr55, left_operand, range(json_reader_1, 42300, 5, 1303, 1303), 'limit').
name(p_minimum_579, simple_name, json_reader_1_expr55, right_operand, range(json_reader_1, 42309, 7, 1303, 1303), 'minimum').
name(v_buffer_583, simple_name, json_reader_1_code99, name, range(json_reader_1, 43358, 6, 1333, 1333), 'buffer').
name(f_buffer_557, simple_name, json_reader_1_expr56, name, range(json_reader_1, 43372, 6, 1333, 1333), 'buffer').
name(v_p_584, simple_name, json_reader_1_code101, name, range(json_reader_1, 43388, 1, 1334, 1334), 'p').
name(f_pos_558, simple_name, json_reader_1_code101, initializer, range(json_reader_1, 43392, 3, 1334, 1334), 'pos').
name(v_l_585, simple_name, json_reader_1_code103, name, range(json_reader_1, 43405, 1, 1335, 1335), 'l').
name(f_limit_559, simple_name, json_reader_1_code103, initializer, range(json_reader_1, 43409, 5, 1335, 1335), 'limit').
name(v_p_584, simple_name, json_reader_1_expr58, left_operand, range(json_reader_1, 43445, 1, 1337, 1337), 'p').
name(v_l_585, simple_name, json_reader_1_expr58, right_operand, range(json_reader_1, 43450, 1, 1337, 1337), 'l').
name(f_pos_558, simple_name, json_reader_1_expr59, left_hand_side, range(json_reader_1, 43463, 3, 1338, 1338), 'pos').
name(v_p_584, simple_name, json_reader_1_expr59, right_hand_side, range(json_reader_1, 43469, 1, 1338, 1338), 'p').
name(m_fill_buffer_388, simple_name, json_reader_1_expr61, name, range(json_reader_1, 43485, 10, 1339, 1339), 'fillBuffer').
name(v_p_584, simple_name, json_reader_1_expr62, left_hand_side, range(json_reader_1, 43537, 1, 1342, 1342), 'p').
name(f_pos_558, simple_name, json_reader_1_expr62, right_hand_side, range(json_reader_1, 43541, 3, 1342, 1342), 'pos').
name(v_l_585, simple_name, json_reader_1_expr63, left_hand_side, range(json_reader_1, 43554, 1, 1343, 1343), 'l').
name(f_limit_559, simple_name, json_reader_1_expr63, right_hand_side, range(json_reader_1, 43558, 5, 1343, 1343), 'limit').
name(v_c_586, simple_name, json_reader_1_code105, name, range(json_reader_1, 43584, 1, 1346, 1346), 'c').
name(v_buffer_583, simple_name, json_reader_1_expr64, array, range(json_reader_1, 43588, 6, 1346, 1346), 'buffer').
name(v_p_584, simple_name, json_reader_1_expr65, operand, range(json_reader_1, 43595, 1, 1346, 1346), 'p').
name(v_c_586, simple_name, json_reader_1_expr66, left_operand, range(json_reader_1, 43611, 1, 1347, 1347), 'c').
name(v_c_586, simple_name, json_reader_1_expr69, left_operand, range(json_reader_1, 43704, 1, 1351, 1351), 'c').
name(v_c_586, simple_name, json_reader_1_expr70, left_operand, range(json_reader_1, 43716, 1, 1351, 1351), 'c').
name(v_c_586, simple_name, json_reader_1_expr71, left_operand, range(json_reader_1, 43729, 1, 1351, 1351), 'c').
name(v_c_586, simple_name, json_reader_1_expr72, left_operand, range(json_reader_1, 43779, 1, 1355, 1355), 'c').
name(v_c_586, simple_name, json_reader_1_expr73, left_operand, range(json_reader_1, 44634, 1, 1390, 1390), 'c').
name(f_pos_558, simple_name, json_reader_1_expr74, left_hand_side, range(json_reader_1, 44978, 3, 1402, 1402), 'pos').
name(v_p_584, simple_name, json_reader_1_expr74, right_hand_side, range(json_reader_1, 44984, 1, 1402, 1402), 'p').
name(v_c_586, simple_name, json_reader_1_stmt48, expression, range(json_reader_1, 45002, 1, 1403, 1403), 'c').
name(m_next_non_whitespace_370, simple_name, json_reader_1_expr75, name, range(json_reader_1, 49565, 17, 1575, 1575), 'nextNonWhitespace').
name(f_pos_558, simple_name, json_reader_1_expr76, operand, range(json_reader_1, 49594, 3, 1576, 1576), 'pos').
name(f_pos_558, simple_name, json_reader_1_expr79, left_operand, range(json_reader_1, 49610, 3, 1578, 1578), 'pos').
name(q_length_48, qualified_name, json_reader_1_expr79, right_operand, range(json_reader_1, 49616, 25, 1578, 1578), 'NON_EXECUTE_PREFIX.length').
name(f_non_execute_prefix_555, simple_name, q_length_48, qualifier, range(json_reader_1, 49616, 18, 1578, 1578), 'NON_EXECUTE_PREFIX').
name(f_limit_559, simple_name, json_reader_1_expr78, right_operand, range(json_reader_1, 49644, 5, 1578, 1578), 'limit').
name(m_fill_buffer_388, simple_name, json_reader_1_expr81, name, range(json_reader_1, 49654, 10, 1578, 1578), 'fillBuffer').
name(f_non_execute_prefix_555, simple_name, q_length_49, qualifier, range(json_reader_1, 49665, 18, 1578, 1578), 'NON_EXECUTE_PREFIX').
name(q_length_49, qualified_name, json_reader_1_expr81, (arguments, 0), range(json_reader_1, 49665, 25, 1578, 1578), 'NON_EXECUTE_PREFIX.length').
name(v_i_589, simple_name, json_reader_1_code108, name, range(json_reader_1, 49729, 1, 1582, 1582), 'i').
name(v_i_589, simple_name, json_reader_1_expr83, left_operand, range(json_reader_1, 49736, 1, 1582, 1582), 'i').
name(q_length_49, qualified_name, json_reader_1_expr83, right_operand, range(json_reader_1, 49740, 25, 1582, 1582), 'NON_EXECUTE_PREFIX.length').
name(f_non_execute_prefix_555, simple_name, q_length_49, qualifier, range(json_reader_1, 49740, 18, 1582, 1582), 'NON_EXECUTE_PREFIX').
name(v_i_589, simple_name, json_reader_1_expr84, operand, range(json_reader_1, 49767, 1, 1582, 1582), 'i').
name(f_buffer_557, simple_name, json_reader_1_expr86, array, range(json_reader_1, 49784, 6, 1583, 1583), 'buffer').
name(f_pos_558, simple_name, json_reader_1_expr87, left_operand, range(json_reader_1, 49791, 3, 1583, 1583), 'pos').
name(v_i_589, simple_name, json_reader_1_expr87, right_operand, range(json_reader_1, 49797, 1, 1583, 1583), 'i').
name(f_non_execute_prefix_555, simple_name, json_reader_1_expr88, array, range(json_reader_1, 49803, 18, 1583, 1583), 'NON_EXECUTE_PREFIX').
name(v_i_589, simple_name, json_reader_1_expr88, index, range(json_reader_1, 49822, 1, 1583, 1583), 'i').
name(t_json_reader_internal_access_18, simple_name, q_instance_49, qualifier, range(json_reader_1, 49979, 24, 1593, 1593), 'JsonReaderInternalAccess').
name(q_instance_49, qualified_name, json_reader_1_expr89, left_hand_side, range(json_reader_1, 49979, 33, 1593, 1593), 'JsonReaderInternalAccess.INSTANCE').
%json_adapter_null_safe_test_1 - com.google.gson.regression.JsonAdapterNullSafeTest
name(t_json_adapter_null_safe_test_21, simple_name, json_adapter_null_safe_test_1_code2, name, range(json_adapter_null_safe_test_1, 878, 23, 26, 26), 'JsonAdapterNullSafeTest').
name(f_gson_549, simple_name, json_adapter_null_safe_test_1_code9, name, range(json_adapter_null_safe_test_1, 942, 4, 27, 27), 'gson').
name(v_device_550, simple_name, json_adapter_null_safe_test_1_code13, name, range(json_adapter_null_safe_test_1, 1033, 6, 30, 30), 'device').
name(f_gson_549, simple_name, json_adapter_null_safe_test_1_expr3, expression, range(json_adapter_null_safe_test_1, 1070, 4, 31, 31), 'gson').
name(m_to_json_63, simple_name, json_adapter_null_safe_test_1_expr3, name, range(json_adapter_null_safe_test_1, 1075, 6, 31, 31), 'toJson').
name(v_device_550, simple_name, json_adapter_null_safe_test_1_expr3, (arguments, 0), range(json_adapter_null_safe_test_1, 1082, 6, 31, 31), 'device').
name(v_device_551, simple_name, json_adapter_null_safe_test_1_code17, name, range(json_adapter_null_safe_test_1, 1169, 6, 35, 35), 'device').
name(f_gson_549, simple_name, json_adapter_null_safe_test_1_expr4, expression, range(json_adapter_null_safe_test_1, 1178, 4, 35, 35), 'gson').
name(m_from_json_81, simple_name, json_adapter_null_safe_test_1_expr4, name, range(json_adapter_null_safe_test_1, 1183, 8, 35, 35), 'fromJson').
name(t_json_adapter_22, simple_name, json_adapter_null_safe_test_1_expr6, type_name, range(json_adapter_null_safe_test_1, 1279, 11, 39, 39), 'JsonAdapter').
name(p_gson_553, simple_name, json_adapter_null_safe_test_1_expr9, expression, range(json_adapter_null_safe_test_1, 2147, 4, 58, 58), 'gson').
name(m_get_delegate_adapter_58, simple_name, json_adapter_null_safe_test_1_expr9, name, range(json_adapter_null_safe_test_1, 2152, 18, 58, 58), 'getDelegateAdapter').
name(p_type_554, simple_name, json_adapter_null_safe_test_1_expr9, (arguments, 1), range(json_adapter_null_safe_test_1, 2177, 4, 58, 58), 'type').
%array_type_adapter_1 - com.google.gson.internal.bind.ArrayTypeAdapter
name(f_factory_223, simple_name, array_type_adapter_1_code8, name, range(array_type_adapter_1, 1296, 7, 39, 39), 'FACTORY').
name(v_type_226, simple_name, array_type_adapter_1_code13, name, range(array_type_adapter_1, 1477, 4, 42, 42), 'type').
name(p_type_token_225, simple_name, array_type_adapter_1_expr2, expression, range(array_type_adapter_1, 1484, 9, 42, 42), 'typeToken').
name(m_get_type_111, simple_name, array_type_adapter_1_expr2, name, range(array_type_adapter_1, 1494, 7, 42, 42), 'getType').
name(v_type_226, simple_name, array_type_adapter_1_expr6, left_operand, range(array_type_adapter_1, 1517, 4, 43, 43), 'type').
name(v_type_226, simple_name, array_type_adapter_1_expr8, left_operand, range(array_type_adapter_1, 1553, 4, 43, 43), 'type').
name(v_type_226, simple_name, array_type_adapter_1_expr11, expression, range(array_type_adapter_1, 1590, 4, 43, 43), 'type').
name(m_is_array_171, simple_name, array_type_adapter_1_expr9, name, range(array_type_adapter_1, 1596, 7, 43, 43), 'isArray').
%json_reader_internal_access_1 - com.google.gson.internal.JsonReaderInternalAccess
name(t_json_reader_internal_access_18, simple_name, json_reader_internal_access_1_code2, name, range(json_reader_internal_access_1, 814, 24, 25, 25), 'JsonReaderInternalAccess').
%streams_1 - com.google.gson.internal.Streams
name(p_appendable_214, simple_name, streams_1_expr2, left_operand, range(streams_1, 2478, 10, 77, 77), 'appendable').
name(p_appendable_214, simple_name, streams_1_expr3, expression, range(streams_1, 2518, 10, 77, 77), 'appendable').
name(p_appendable_214, simple_name, streams_1_expr4, (arguments, 0), range(streams_1, 2552, 10, 77, 77), 'appendable').
%date_type_adapter_1 - com.google.gson.internal.bind.DateTypeAdapter
name(f_factory_246, simple_name, date_type_adapter_1_code8, name, range(date_type_adapter_1, 1567, 7, 42, 42), 'FACTORY').
name(p_type_token_248, simple_name, date_type_adapter_1_expr5, expression, range(date_type_adapter_1, 1790, 9, 45, 45), 'typeToken').
name(m_get_raw_type_112, simple_name, date_type_adapter_1_expr5, name, range(date_type_adapter_1, 1800, 10, 45, 45), 'getRawType').
%object_type_adapter_1 - com.google.gson.internal.bind.ObjectTypeAdapter
name(f_factory_285, simple_name, object_type_adapter_1_code8, name, range(object_type_adapter_1, 1315, 7, 38, 38), 'FACTORY').
name(p_type_287, simple_name, object_type_adapter_1_expr3, expression, range(object_type_adapter_1, 1476, 4, 41, 41), 'type').
name(m_get_raw_type_112, simple_name, object_type_adapter_1_expr3, name, range(object_type_adapter_1, 1481, 10, 41, 41), 'getRawType').
%gson_1 - com.google.gson.Gson
name(f_calls_17, simple_name, gson_1_code16, name, range(gson_1, 5098, 5, 120, 120), 'calls').
name(f_type_token_cache_18, simple_name, gson_1_code28, name, range(gson_1, 5223, 14, 123, 123), 'typeTokenCache').
name(f_deserialization_context_19, simple_name, gson_1_code32, name, range(gson_1, 5671, 22, 135, 135), 'deserializationContext').
name(f_serialization_context_22, simple_name, gson_1_code38, name, range(gson_1, 5952, 20, 142, 142), 'serializationContext').
name(q_default_1, qualified_name, gson_1_stmt1, (arguments, 0), range(gson_1, 8886, 16, 186, 186), 'Excluder.DEFAULT').
name(t_excluder_2, simple_name, q_default_1, qualifier, range(gson_1, 8886, 8, 186, 186), 'Excluder').
name(t_field_naming_policy_1, simple_name, q_identity_2, qualifier, range(gson_1, 8904, 17, 186, 186), 'FieldNamingPolicy').
name(q_identity_2, qualified_name, gson_1_stmt1, (arguments, 1), range(gson_1, 8904, 26, 186, 186), 'FieldNamingPolicy.IDENTITY').
name(f_default_serialize_nulls_26, simple_name, gson_1_stmt1, (arguments, 3), range(gson_1, 8990, 23, 187, 187), 'DEFAULT_SERIALIZE_NULLS').
name(f_default_complex_map_keys_27, simple_name, gson_1_stmt1, (arguments, 4), range(gson_1, 9023, 24, 188, 188), 'DEFAULT_COMPLEX_MAP_KEYS').
name(f_default_json_non_executable_28, simple_name, gson_1_stmt1, (arguments, 5), range(gson_1, 9049, 27, 188, 188), 'DEFAULT_JSON_NON_EXECUTABLE').
name(f_default_escape_html_29, simple_name, gson_1_stmt1, (arguments, 6), range(gson_1, 9078, 19, 188, 188), 'DEFAULT_ESCAPE_HTML').
name(f_default_pretty_print_30, simple_name, gson_1_stmt1, (arguments, 7), range(gson_1, 9107, 20, 189, 189), 'DEFAULT_PRETTY_PRINT').
name(f_default_lenient_31, simple_name, gson_1_stmt1, (arguments, 8), range(gson_1, 9129, 15, 189, 189), 'DEFAULT_LENIENT').
name(f_default_specialize_float_values_32, simple_name, gson_1_stmt1, (arguments, 9), range(gson_1, 9146, 31, 189, 189), 'DEFAULT_SPECIALIZE_FLOAT_VALUES').
name(q_default_3, qualified_name, gson_1_stmt1, (arguments, 10), range(gson_1, 9187, 31, 190, 190), 'LongSerializationPolicy.DEFAULT').
name(p_type_adapter_factories_45, simple_name, gson_1_code43, name, range(gson_1, 9705, 20, 198, 198), 'typeAdapterFactories').
name(f_constructor_constructor_46, simple_name, gson_1_expr9, name, range(gson_1, 9738, 22, 199, 199), 'constructorConstructor').
name(p_instance_creators_36, simple_name, gson_1_expr10, (arguments, 0), range(gson_1, 9790, 16, 199, 199), 'instanceCreators').
name(f_serialize_nulls_47, simple_name, gson_1_expr13, name, range(gson_1, 9818, 14, 200, 200), 'serializeNulls').
name(p_serialize_nulls_37, simple_name, gson_1_expr12, right_hand_side, range(gson_1, 9835, 14, 200, 200), 'serializeNulls').
name(f_generate_non_executable_json_48, simple_name, gson_1_expr16, name, range(gson_1, 9860, 25, 201, 201), 'generateNonExecutableJson').
name(p_generate_non_executable_gson_39, simple_name, gson_1_expr15, right_hand_side, range(gson_1, 9888, 25, 201, 201), 'generateNonExecutableGson').
name(f_html_safe_49, simple_name, gson_1_expr19, name, range(gson_1, 9924, 8, 202, 202), 'htmlSafe').
name(p_html_safe_40, simple_name, gson_1_expr18, right_hand_side, range(gson_1, 9935, 8, 202, 202), 'htmlSafe').
name(f_pretty_printing_50, simple_name, gson_1_expr22, name, range(gson_1, 9954, 14, 203, 203), 'prettyPrinting').
name(p_pretty_printing_41, simple_name, gson_1_expr21, right_hand_side, range(gson_1, 9971, 14, 203, 203), 'prettyPrinting').
name(f_lenient_51, simple_name, gson_1_expr25, name, range(gson_1, 9996, 7, 204, 204), 'lenient').
name(p_lenient_42, simple_name, gson_1_expr24, right_hand_side, range(gson_1, 10006, 7, 204, 204), 'lenient').
name(v_factories_52, simple_name, gson_1_code51, name, range(gson_1, 10045, 9, 206, 206), 'factories').
name(v_factories_52, simple_name, gson_1_expr28, expression, range(gson_1, 10155, 9, 209, 209), 'factories').
name(m_add_18, simple_name, gson_1_expr28, name, range(gson_1, 10165, 3, 209, 209), 'add').
name(q_json_element_factory_4, qualified_name, gson_1_expr28, (arguments, 0), range(gson_1, 10169, 33, 209, 209), 'TypeAdapters.JSON_ELEMENT_FACTORY').
name(t_type_adapters_3, simple_name, q_json_element_factory_4, qualifier, range(gson_1, 10169, 12, 209, 209), 'TypeAdapters').
name(v_factories_52, simple_name, gson_1_expr29, expression, range(gson_1, 10209, 9, 210, 210), 'factories').
name(m_add_18, simple_name, gson_1_expr29, name, range(gson_1, 10219, 3, 210, 210), 'add').
name(q_factory_5, qualified_name, gson_1_expr29, (arguments, 0), range(gson_1, 10223, 25, 210, 210), 'ObjectTypeAdapter.FACTORY').
name(t_object_type_adapter_4, simple_name, q_factory_5, qualifier, range(gson_1, 10223, 17, 210, 210), 'ObjectTypeAdapter').
name(v_factories_52, simple_name, gson_1_expr30, expression, range(gson_1, 10333, 9, 213, 213), 'factories').
name(m_add_18, simple_name, gson_1_expr30, name, range(gson_1, 10343, 3, 213, 213), 'add').
name(p_excluder_34, simple_name, gson_1_expr30, (arguments, 0), range(gson_1, 10347, 8, 213, 213), 'excluder').
name(v_factories_52, simple_name, gson_1_expr31, expression, range(gson_1, 10391, 9, 216, 216), 'factories').
name(m_add_all_19, simple_name, gson_1_expr31, name, range(gson_1, 10401, 6, 216, 216), 'addAll').
name(p_type_adapter_factories_45, simple_name, gson_1_expr31, (arguments, 0), range(gson_1, 10408, 20, 216, 216), 'typeAdapterFactories').
name(v_factories_52, simple_name, gson_1_expr32, expression, range(gson_1, 10482, 9, 219, 219), 'factories').
name(m_add_18, simple_name, gson_1_expr32, name, range(gson_1, 10492, 3, 219, 219), 'add').
name(t_type_adapters_3, simple_name, q_string_factory_6, qualifier, range(gson_1, 10496, 12, 219, 219), 'TypeAdapters').
name(q_string_factory_6, qualified_name, gson_1_expr32, (arguments, 0), range(gson_1, 10496, 27, 219, 219), 'TypeAdapters.STRING_FACTORY').
name(v_factories_52, simple_name, gson_1_expr33, expression, range(gson_1, 10530, 9, 220, 220), 'factories').
name(m_add_18, simple_name, gson_1_expr33, name, range(gson_1, 10540, 3, 220, 220), 'add').
name(t_type_adapters_3, simple_name, q_integer_factory_7, qualifier, range(gson_1, 10544, 12, 220, 220), 'TypeAdapters').
name(q_integer_factory_7, qualified_name, gson_1_expr33, (arguments, 0), range(gson_1, 10544, 28, 220, 220), 'TypeAdapters.INTEGER_FACTORY').
name(v_factories_52, simple_name, gson_1_expr34, expression, range(gson_1, 10579, 9, 221, 221), 'factories').
name(m_add_18, simple_name, gson_1_expr34, name, range(gson_1, 10589, 3, 221, 221), 'add').
name(q_boolean_factory_8, qualified_name, gson_1_expr34, (arguments, 0), range(gson_1, 10593, 28, 221, 221), 'TypeAdapters.BOOLEAN_FACTORY').
name(t_type_adapters_3, simple_name, q_boolean_factory_8, qualifier, range(gson_1, 10593, 12, 221, 221), 'TypeAdapters').
name(v_factories_52, simple_name, gson_1_expr35, expression, range(gson_1, 10628, 9, 222, 222), 'factories').
name(m_add_18, simple_name, gson_1_expr35, name, range(gson_1, 10638, 3, 222, 222), 'add').
name(t_type_adapters_3, simple_name, q_byte_factory_9, qualifier, range(gson_1, 10642, 12, 222, 222), 'TypeAdapters').
name(q_byte_factory_9, qualified_name, gson_1_expr35, (arguments, 0), range(gson_1, 10642, 25, 222, 222), 'TypeAdapters.BYTE_FACTORY').
name(v_factories_52, simple_name, gson_1_expr36, expression, range(gson_1, 10674, 9, 223, 223), 'factories').
name(m_add_18, simple_name, gson_1_expr36, name, range(gson_1, 10684, 3, 223, 223), 'add').
name(t_type_adapters_3, simple_name, q_short_factory_10, qualifier, range(gson_1, 10688, 12, 223, 223), 'TypeAdapters').
name(q_short_factory_10, qualified_name, gson_1_expr36, (arguments, 0), range(gson_1, 10688, 26, 223, 223), 'TypeAdapters.SHORT_FACTORY').
name(v_long_adapter_53, simple_name, gson_1_code58, name, range(gson_1, 10741, 11, 224, 224), 'longAdapter').
name(m_long_adapter_20, simple_name, gson_1_expr37, name, range(gson_1, 10755, 11, 224, 224), 'longAdapter').
name(p_long_serialization_policy_44, simple_name, gson_1_expr37, (arguments, 0), range(gson_1, 10767, 23, 224, 224), 'longSerializationPolicy').
name(v_factories_52, simple_name, gson_1_expr38, expression, range(gson_1, 10797, 9, 225, 225), 'factories').
name(m_add_18, simple_name, gson_1_expr38, name, range(gson_1, 10807, 3, 225, 225), 'add').
name(t_type_adapters_3, simple_name, gson_1_expr39, expression, range(gson_1, 10811, 12, 225, 225), 'TypeAdapters').
name(m_new_factory_21, simple_name, gson_1_expr39, name, range(gson_1, 10824, 10, 225, 225), 'newFactory').
name(v_long_adapter_53, simple_name, gson_1_expr39, (arguments, 2), range(gson_1, 10859, 11, 225, 225), 'longAdapter').
name(v_factories_52, simple_name, gson_1_expr42, expression, range(gson_1, 10878, 9, 226, 226), 'factories').
name(m_add_18, simple_name, gson_1_expr42, name, range(gson_1, 10888, 3, 226, 226), 'add').
name(t_type_adapters_3, simple_name, gson_1_expr43, expression, range(gson_1, 10892, 12, 226, 226), 'TypeAdapters').
name(m_new_factory_21, simple_name, gson_1_expr43, name, range(gson_1, 10905, 10, 226, 226), 'newFactory').
name(v_factories_52, simple_name, gson_1_expr47, expression, range(gson_1, 11014, 9, 228, 228), 'factories').
name(m_add_18, simple_name, gson_1_expr47, name, range(gson_1, 11024, 3, 228, 228), 'add').
name(t_type_adapters_3, simple_name, gson_1_expr48, expression, range(gson_1, 11028, 12, 228, 228), 'TypeAdapters').
name(m_new_factory_21, simple_name, gson_1_expr48, name, range(gson_1, 11041, 10, 228, 228), 'newFactory').
name(v_factories_52, simple_name, gson_1_expr52, expression, range(gson_1, 11147, 9, 230, 230), 'factories').
name(m_add_18, simple_name, gson_1_expr52, name, range(gson_1, 11157, 3, 230, 230), 'add').
name(q_number_factory_11, qualified_name, gson_1_expr52, (arguments, 0), range(gson_1, 11161, 27, 230, 230), 'TypeAdapters.NUMBER_FACTORY').
name(t_type_adapters_3, simple_name, q_number_factory_11, qualifier, range(gson_1, 11161, 12, 230, 230), 'TypeAdapters').
name(v_factories_52, simple_name, gson_1_expr53, expression, range(gson_1, 11195, 9, 231, 231), 'factories').
name(m_add_18, simple_name, gson_1_expr53, name, range(gson_1, 11205, 3, 231, 231), 'add').
name(q_atomic_integer_factory_12, qualified_name, gson_1_expr53, (arguments, 0), range(gson_1, 11209, 35, 231, 231), 'TypeAdapters.ATOMIC_INTEGER_FACTORY').
name(t_type_adapters_3, simple_name, q_atomic_integer_factory_12, qualifier, range(gson_1, 11209, 12, 231, 231), 'TypeAdapters').
name(v_factories_52, simple_name, gson_1_expr54, expression, range(gson_1, 11251, 9, 232, 232), 'factories').
name(m_add_18, simple_name, gson_1_expr54, name, range(gson_1, 11261, 3, 232, 232), 'add').
name(t_type_adapters_3, simple_name, q_atomic_boolean_factory_13, qualifier, range(gson_1, 11265, 12, 232, 232), 'TypeAdapters').
name(q_atomic_boolean_factory_13, qualified_name, gson_1_expr54, (arguments, 0), range(gson_1, 11265, 35, 232, 232), 'TypeAdapters.ATOMIC_BOOLEAN_FACTORY').
name(v_factories_52, simple_name, gson_1_expr55, expression, range(gson_1, 11307, 9, 233, 233), 'factories').
name(m_add_18, simple_name, gson_1_expr55, name, range(gson_1, 11317, 3, 233, 233), 'add').
name(t_type_adapters_3, simple_name, gson_1_expr56, expression, range(gson_1, 11321, 12, 233, 233), 'TypeAdapters').
name(m_new_factory_22, simple_name, gson_1_expr56, name, range(gson_1, 11334, 10, 233, 233), 'newFactory').
name(m_atomic_long_adapter_23, simple_name, gson_1_expr58, name, range(gson_1, 11363, 17, 233, 233), 'atomicLongAdapter').
name(v_long_adapter_53, simple_name, gson_1_expr58, (arguments, 0), range(gson_1, 11381, 11, 233, 233), 'longAdapter').
name(v_factories_52, simple_name, gson_1_expr59, expression, range(gson_1, 11401, 9, 234, 234), 'factories').
name(m_add_18, simple_name, gson_1_expr59, name, range(gson_1, 11411, 3, 234, 234), 'add').
name(t_type_adapters_3, simple_name, gson_1_expr60, expression, range(gson_1, 11415, 12, 234, 234), 'TypeAdapters').
name(m_new_factory_22, simple_name, gson_1_expr60, name, range(gson_1, 11428, 10, 234, 234), 'newFactory').
name(m_atomic_long_array_adapter_24, simple_name, gson_1_expr62, name, range(gson_1, 11462, 22, 234, 234), 'atomicLongArrayAdapter').
name(v_long_adapter_53, simple_name, gson_1_expr62, (arguments, 0), range(gson_1, 11485, 11, 234, 234), 'longAdapter').
name(v_factories_52, simple_name, gson_1_expr63, expression, range(gson_1, 11505, 9, 235, 235), 'factories').
name(m_add_18, simple_name, gson_1_expr63, name, range(gson_1, 11515, 3, 235, 235), 'add').
name(t_type_adapters_3, simple_name, q_atomic_integer_array_factory_14, qualifier, range(gson_1, 11519, 12, 235, 235), 'TypeAdapters').
name(q_atomic_integer_array_factory_14, qualified_name, gson_1_expr63, (arguments, 0), range(gson_1, 11519, 41, 235, 235), 'TypeAdapters.ATOMIC_INTEGER_ARRAY_FACTORY').
name(v_factories_52, simple_name, gson_1_expr64, expression, range(gson_1, 11567, 9, 236, 236), 'factories').
name(m_add_18, simple_name, gson_1_expr64, name, range(gson_1, 11577, 3, 236, 236), 'add').
name(t_type_adapters_3, simple_name, q_character_factory_15, qualifier, range(gson_1, 11581, 12, 236, 236), 'TypeAdapters').
name(q_character_factory_15, qualified_name, gson_1_expr64, (arguments, 0), range(gson_1, 11581, 30, 236, 236), 'TypeAdapters.CHARACTER_FACTORY').
name(v_factories_52, simple_name, gson_1_expr65, expression, range(gson_1, 11618, 9, 237, 237), 'factories').
name(m_add_18, simple_name, gson_1_expr65, name, range(gson_1, 11628, 3, 237, 237), 'add').
name(t_type_adapters_3, simple_name, q_string_builder_factory_16, qualifier, range(gson_1, 11632, 12, 237, 237), 'TypeAdapters').
name(q_string_builder_factory_16, qualified_name, gson_1_expr65, (arguments, 0), range(gson_1, 11632, 35, 237, 237), 'TypeAdapters.STRING_BUILDER_FACTORY').
name(v_factories_52, simple_name, gson_1_expr66, expression, range(gson_1, 11674, 9, 238, 238), 'factories').
name(m_add_18, simple_name, gson_1_expr66, name, range(gson_1, 11684, 3, 238, 238), 'add').
name(q_string_buffer_factory_17, qualified_name, gson_1_expr66, (arguments, 0), range(gson_1, 11688, 34, 238, 238), 'TypeAdapters.STRING_BUFFER_FACTORY').
name(t_type_adapters_3, simple_name, q_string_buffer_factory_17, qualifier, range(gson_1, 11688, 12, 238, 238), 'TypeAdapters').
name(v_factories_52, simple_name, gson_1_expr67, expression, range(gson_1, 11729, 9, 239, 239), 'factories').
name(m_add_18, simple_name, gson_1_expr67, name, range(gson_1, 11739, 3, 239, 239), 'add').
name(t_type_adapters_3, simple_name, gson_1_expr68, expression, range(gson_1, 11743, 12, 239, 239), 'TypeAdapters').
name(m_new_factory_22, simple_name, gson_1_expr68, name, range(gson_1, 11756, 10, 239, 239), 'newFactory').
name(q_big_decimal_18, qualified_name, gson_1_expr68, (arguments, 1), range(gson_1, 11785, 24, 239, 239), 'TypeAdapters.BIG_DECIMAL').
name(t_type_adapters_3, simple_name, q_big_decimal_18, qualifier, range(gson_1, 11785, 12, 239, 239), 'TypeAdapters').
name(v_factories_52, simple_name, gson_1_expr70, expression, range(gson_1, 11817, 9, 240, 240), 'factories').
name(m_add_18, simple_name, gson_1_expr70, name, range(gson_1, 11827, 3, 240, 240), 'add').
name(t_type_adapters_3, simple_name, gson_1_expr71, expression, range(gson_1, 11831, 12, 240, 240), 'TypeAdapters').
name(m_new_factory_22, simple_name, gson_1_expr71, name, range(gson_1, 11844, 10, 240, 240), 'newFactory').
name(q_big_integer_19, qualified_name, gson_1_expr71, (arguments, 1), range(gson_1, 11873, 24, 240, 240), 'TypeAdapters.BIG_INTEGER').
name(t_type_adapters_3, simple_name, q_big_integer_19, qualifier, range(gson_1, 11873, 12, 240, 240), 'TypeAdapters').
name(v_factories_52, simple_name, gson_1_expr73, expression, range(gson_1, 11905, 9, 241, 241), 'factories').
name(m_add_18, simple_name, gson_1_expr73, name, range(gson_1, 11915, 3, 241, 241), 'add').
name(q_url_factory_20, qualified_name, gson_1_expr73, (arguments, 0), range(gson_1, 11919, 24, 241, 241), 'TypeAdapters.URL_FACTORY').
name(t_type_adapters_3, simple_name, q_url_factory_20, qualifier, range(gson_1, 11919, 12, 241, 241), 'TypeAdapters').
name(v_factories_52, simple_name, gson_1_expr74, expression, range(gson_1, 11950, 9, 242, 242), 'factories').
name(m_add_18, simple_name, gson_1_expr74, name, range(gson_1, 11960, 3, 242, 242), 'add').
name(q_uri_factory_21, qualified_name, gson_1_expr74, (arguments, 0), range(gson_1, 11964, 24, 242, 242), 'TypeAdapters.URI_FACTORY').
name(t_type_adapters_3, simple_name, q_uri_factory_21, qualifier, range(gson_1, 11964, 12, 242, 242), 'TypeAdapters').
name(v_factories_52, simple_name, gson_1_expr75, expression, range(gson_1, 11995, 9, 243, 243), 'factories').
name(m_add_18, simple_name, gson_1_expr75, name, range(gson_1, 12005, 3, 243, 243), 'add').
name(t_type_adapters_3, simple_name, q_uuid_factory_22, qualifier, range(gson_1, 12009, 12, 243, 243), 'TypeAdapters').
name(q_uuid_factory_22, qualified_name, gson_1_expr75, (arguments, 0), range(gson_1, 12009, 25, 243, 243), 'TypeAdapters.UUID_FACTORY').
name(v_factories_52, simple_name, gson_1_expr76, expression, range(gson_1, 12041, 9, 244, 244), 'factories').
name(m_add_18, simple_name, gson_1_expr76, name, range(gson_1, 12051, 3, 244, 244), 'add').
name(q_currency_factory_23, qualified_name, gson_1_expr76, (arguments, 0), range(gson_1, 12055, 29, 244, 244), 'TypeAdapters.CURRENCY_FACTORY').
name(t_type_adapters_3, simple_name, q_currency_factory_23, qualifier, range(gson_1, 12055, 12, 244, 244), 'TypeAdapters').
name(v_factories_52, simple_name, gson_1_expr77, expression, range(gson_1, 12091, 9, 245, 245), 'factories').
name(m_add_18, simple_name, gson_1_expr77, name, range(gson_1, 12101, 3, 245, 245), 'add').
name(q_locale_factory_24, qualified_name, gson_1_expr77, (arguments, 0), range(gson_1, 12105, 27, 245, 245), 'TypeAdapters.LOCALE_FACTORY').
name(t_type_adapters_3, simple_name, q_locale_factory_24, qualifier, range(gson_1, 12105, 12, 245, 245), 'TypeAdapters').
name(v_factories_52, simple_name, gson_1_expr78, expression, range(gson_1, 12139, 9, 246, 246), 'factories').
name(m_add_18, simple_name, gson_1_expr78, name, range(gson_1, 12149, 3, 246, 246), 'add').
name(q_inet_address_factory_25, qualified_name, gson_1_expr78, (arguments, 0), range(gson_1, 12153, 33, 246, 246), 'TypeAdapters.INET_ADDRESS_FACTORY').
name(t_type_adapters_3, simple_name, q_inet_address_factory_25, qualifier, range(gson_1, 12153, 12, 246, 246), 'TypeAdapters').
name(v_factories_52, simple_name, gson_1_expr79, expression, range(gson_1, 12193, 9, 247, 247), 'factories').
name(m_add_18, simple_name, gson_1_expr79, name, range(gson_1, 12203, 3, 247, 247), 'add').
name(t_type_adapters_3, simple_name, q_bit_set_factory_26, qualifier, range(gson_1, 12207, 12, 247, 247), 'TypeAdapters').
name(q_bit_set_factory_26, qualified_name, gson_1_expr79, (arguments, 0), range(gson_1, 12207, 28, 247, 247), 'TypeAdapters.BIT_SET_FACTORY').
name(v_factories_52, simple_name, gson_1_expr80, expression, range(gson_1, 12242, 9, 248, 248), 'factories').
name(m_add_18, simple_name, gson_1_expr80, name, range(gson_1, 12252, 3, 248, 248), 'add').
name(q_factory_27, qualified_name, gson_1_expr80, (arguments, 0), range(gson_1, 12256, 23, 248, 248), 'DateTypeAdapter.FACTORY').
name(t_date_type_adapter_5, simple_name, q_factory_27, qualifier, range(gson_1, 12256, 15, 248, 248), 'DateTypeAdapter').
name(v_factories_52, simple_name, gson_1_expr81, expression, range(gson_1, 12286, 9, 249, 249), 'factories').
name(m_add_18, simple_name, gson_1_expr81, name, range(gson_1, 12296, 3, 249, 249), 'add').
name(t_type_adapters_3, simple_name, q_calendar_factory_28, qualifier, range(gson_1, 12300, 12, 249, 249), 'TypeAdapters').
name(q_calendar_factory_28, qualified_name, gson_1_expr81, (arguments, 0), range(gson_1, 12300, 29, 249, 249), 'TypeAdapters.CALENDAR_FACTORY').
name(v_factories_52, simple_name, gson_1_expr82, expression, range(gson_1, 12336, 9, 250, 250), 'factories').
name(m_add_18, simple_name, gson_1_expr82, name, range(gson_1, 12346, 3, 250, 250), 'add').
name(t_time_type_adapter_6, simple_name, q_factory_29, qualifier, range(gson_1, 12350, 15, 250, 250), 'TimeTypeAdapter').
name(q_factory_29, qualified_name, gson_1_expr82, (arguments, 0), range(gson_1, 12350, 23, 250, 250), 'TimeTypeAdapter.FACTORY').
name(v_factories_52, simple_name, gson_1_expr83, expression, range(gson_1, 12380, 9, 251, 251), 'factories').
name(m_add_18, simple_name, gson_1_expr83, name, range(gson_1, 12390, 3, 251, 251), 'add').
name(q_factory_30, qualified_name, gson_1_expr83, (arguments, 0), range(gson_1, 12394, 26, 251, 251), 'SqlDateTypeAdapter.FACTORY').
name(t_sql_date_type_adapter_7, simple_name, q_factory_30, qualifier, range(gson_1, 12394, 18, 251, 251), 'SqlDateTypeAdapter').
name(v_factories_52, simple_name, gson_1_expr84, expression, range(gson_1, 12427, 9, 252, 252), 'factories').
name(m_add_18, simple_name, gson_1_expr84, name, range(gson_1, 12437, 3, 252, 252), 'add').
name(t_type_adapters_3, simple_name, q_timestamp_factory_31, qualifier, range(gson_1, 12441, 12, 252, 252), 'TypeAdapters').
name(q_timestamp_factory_31, qualified_name, gson_1_expr84, (arguments, 0), range(gson_1, 12441, 30, 252, 252), 'TypeAdapters.TIMESTAMP_FACTORY').
name(v_factories_52, simple_name, gson_1_expr85, expression, range(gson_1, 12478, 9, 253, 253), 'factories').
name(m_add_18, simple_name, gson_1_expr85, name, range(gson_1, 12488, 3, 253, 253), 'add').
name(t_array_type_adapter_8, simple_name, q_factory_32, qualifier, range(gson_1, 12492, 16, 253, 253), 'ArrayTypeAdapter').
name(q_factory_32, qualified_name, gson_1_expr85, (arguments, 0), range(gson_1, 12492, 24, 253, 253), 'ArrayTypeAdapter.FACTORY').
name(v_factories_52, simple_name, gson_1_expr86, expression, range(gson_1, 12523, 9, 254, 254), 'factories').
name(m_add_18, simple_name, gson_1_expr86, name, range(gson_1, 12533, 3, 254, 254), 'add').
name(t_type_adapters_3, simple_name, q_class_factory_33, qualifier, range(gson_1, 12537, 12, 254, 254), 'TypeAdapters').
name(q_class_factory_33, qualified_name, gson_1_expr86, (arguments, 0), range(gson_1, 12537, 26, 254, 254), 'TypeAdapters.CLASS_FACTORY').
name(v_factories_52, simple_name, gson_1_expr87, expression, range(gson_1, 12629, 9, 257, 257), 'factories').
name(m_add_18, simple_name, gson_1_expr87, name, range(gson_1, 12639, 3, 257, 257), 'add').
name(f_constructor_constructor_46, simple_name, gson_1_expr88, (arguments, 0), range(gson_1, 12676, 22, 257, 257), 'constructorConstructor').
name(v_factories_52, simple_name, gson_1_expr89, expression, range(gson_1, 12706, 9, 258, 258), 'factories').
name(m_add_18, simple_name, gson_1_expr89, name, range(gson_1, 12716, 3, 258, 258), 'add').
name(f_constructor_constructor_46, simple_name, gson_1_expr90, (arguments, 0), range(gson_1, 12746, 22, 258, 258), 'constructorConstructor').
name(p_complex_map_key_serialization_38, simple_name, gson_1_expr90, (arguments, 1), range(gson_1, 12770, 26, 258, 258), 'complexMapKeySerialization').
name(v_factories_52, simple_name, gson_1_expr91, expression, range(gson_1, 12804, 9, 259, 259), 'factories').
name(m_add_18, simple_name, gson_1_expr91, name, range(gson_1, 12814, 3, 259, 259), 'add').
name(f_constructor_constructor_46, simple_name, gson_1_expr92, (arguments, 0), range(gson_1, 12862, 22, 259, 259), 'constructorConstructor').
name(v_factories_52, simple_name, gson_1_expr93, expression, range(gson_1, 12892, 9, 260, 260), 'factories').
name(m_add_18, simple_name, gson_1_expr93, name, range(gson_1, 12902, 3, 260, 260), 'add').
name(q_enum_factory_34, qualified_name, gson_1_expr93, (arguments, 0), range(gson_1, 12906, 25, 260, 260), 'TypeAdapters.ENUM_FACTORY').
name(t_type_adapters_3, simple_name, q_enum_factory_34, qualifier, range(gson_1, 12906, 12, 260, 260), 'TypeAdapters').
name(v_factories_52, simple_name, gson_1_expr94, expression, range(gson_1, 12938, 9, 261, 261), 'factories').
name(m_add_18, simple_name, gson_1_expr94, name, range(gson_1, 12948, 3, 261, 261), 'add').
name(f_constructor_constructor_46, simple_name, gson_1_expr95, (arguments, 0), range(gson_1, 12994, 22, 262, 262), 'constructorConstructor').
name(p_field_naming_policy_35, simple_name, gson_1_expr95, (arguments, 1), range(gson_1, 13018, 17, 262, 262), 'fieldNamingPolicy').
name(p_excluder_34, simple_name, gson_1_expr95, (arguments, 2), range(gson_1, 13037, 8, 262, 262), 'excluder').
name(f_factories_54, simple_name, gson_1_expr97, name, range(gson_1, 13059, 9, 264, 264), 'factories').
name(t_collections_9, simple_name, gson_1_expr98, expression, range(gson_1, 13071, 11, 264, 264), 'Collections').
name(m_unmodifiable_list_29, simple_name, gson_1_expr98, name, range(gson_1, 13083, 16, 264, 264), 'unmodifiableList').
name(v_factories_52, simple_name, gson_1_expr98, (arguments, 0), range(gson_1, 13100, 9, 264, 264), 'factories').
name(p_serialize_special_floating_point_values_55, simple_name, gson_1_stmt53, expression, range(gson_1, 13216, 35, 268, 268), 'serializeSpecialFloatingPointValues').
name(p_serialize_special_floating_point_values_59, simple_name, gson_1_stmt55, expression, range(gson_1, 13955, 35, 292, 292), 'serializeSpecialFloatingPointValues').
name(p_long_serialization_policy_64, simple_name, gson_1_expr102, left_operand, range(gson_1, 15053, 23, 324, 324), 'longSerializationPolicy').
name(t_long_serialization_policy_10, simple_name, q_default_35, qualifier, range(gson_1, 15080, 23, 324, 324), 'LongSerializationPolicy').
name(q_default_35, qualified_name, gson_1_expr102, right_operand, range(gson_1, 15080, 31, 324, 324), 'LongSerializationPolicy.DEFAULT').
name(q_long_35, qualified_name, gson_1_stmt58, expression, range(gson_1, 15128, 17, 325, 325), 'TypeAdapters.LONG').
name(t_type_adapters_3, simple_name, q_long_35, qualifier, range(gson_1, 15128, 12, 325, 325), 'TypeAdapters').
name(v_cached_77, simple_name, gson_1_code98, name, range(gson_1, 17378, 6, 392, 392), 'cached').
name(f_type_token_cache_18, simple_name, gson_1_expr107, expression, range(gson_1, 17387, 14, 392, 392), 'typeTokenCache').
name(m_get_49, simple_name, gson_1_expr107, name, range(gson_1, 17402, 3, 392, 392), 'get').
name(p_type_76, simple_name, gson_1_expr107, (arguments, 0), range(gson_1, 17406, 4, 392, 392), 'type').
name(v_cached_77, simple_name, gson_1_expr108, left_operand, range(gson_1, 17421, 6, 393, 393), 'cached').
name(v_thread_calls_78, simple_name, gson_1_code107, name, range(gson_1, 17528, 11, 397, 397), 'threadCalls').
name(f_calls_17, simple_name, gson_1_expr109, expression, range(gson_1, 17542, 5, 397, 397), 'calls').
name(m_get_50, simple_name, gson_1_expr109, name, range(gson_1, 17548, 3, 397, 397), 'get').
name(v_requires_thread_local_cleanup_79, simple_name, gson_1_code109, name, range(gson_1, 17567, 26, 398, 398), 'requiresThreadLocalCleanup').
name(v_thread_calls_78, simple_name, gson_1_expr110, left_operand, range(gson_1, 17611, 11, 399, 399), 'threadCalls').
name(v_thread_calls_78, simple_name, gson_1_expr111, left_hand_side, range(gson_1, 17640, 11, 400, 400), 'threadCalls').
name(f_calls_17, simple_name, gson_1_expr113, expression, range(gson_1, 17711, 5, 401, 401), 'calls').
name(m_set_52, simple_name, gson_1_expr113, name, range(gson_1, 17717, 3, 401, 401), 'set').
name(v_thread_calls_78, simple_name, gson_1_expr113, (arguments, 0), range(gson_1, 17721, 11, 401, 401), 'threadCalls').
name(v_requires_thread_local_cleanup_79, simple_name, gson_1_expr114, left_hand_side, range(gson_1, 17741, 26, 402, 402), 'requiresThreadLocalCleanup').
name(v_ongoing_call_80, simple_name, gson_1_code121, name, range(gson_1, 17862, 11, 406, 406), 'ongoingCall').
name(v_thread_calls_78, simple_name, gson_1_expr116, expression, range(gson_1, 17899, 11, 406, 406), 'threadCalls').
name(m_get_49, simple_name, gson_1_expr116, name, range(gson_1, 17911, 3, 406, 406), 'get').
name(p_type_76, simple_name, gson_1_expr116, (arguments, 0), range(gson_1, 17915, 4, 406, 406), 'type').
name(v_ongoing_call_80, simple_name, gson_1_expr117, left_operand, range(gson_1, 17930, 11, 407, 407), 'ongoingCall').
name(v_call_81, simple_name, gson_1_code128, name, range(gson_1, 18023, 4, 412, 412), 'call').
name(v_thread_calls_78, simple_name, gson_1_expr119, expression, range(gson_1, 18064, 11, 413, 413), 'threadCalls').
name(m_put_54, simple_name, gson_1_expr119, name, range(gson_1, 18076, 3, 413, 413), 'put').
name(p_type_76, simple_name, gson_1_expr119, (arguments, 0), range(gson_1, 18080, 4, 413, 413), 'type').
name(v_call_81, simple_name, gson_1_expr119, (arguments, 1), range(gson_1, 18086, 4, 413, 413), 'call').
name(v_factory_82, simple_name, gson_1_code132, name, range(gson_1, 18124, 7, 415, 415), 'factory').
name(f_factories_54, simple_name, gson_1_stmt74, expression, range(gson_1, 18134, 9, 415, 415), 'factories').
name(v_candidate_83, simple_name, gson_1_code137, name, range(gson_1, 18170, 9, 416, 416), 'candidate').
name(v_factory_82, simple_name, gson_1_expr120, expression, range(gson_1, 18182, 7, 416, 416), 'factory').
name(m_create_55, simple_name, gson_1_expr120, name, range(gson_1, 18190, 6, 416, 416), 'create').
name(p_type_76, simple_name, gson_1_expr120, (arguments, 1), range(gson_1, 18203, 4, 416, 416), 'type').
name(v_candidate_83, simple_name, gson_1_expr122, left_operand, range(gson_1, 18222, 9, 417, 417), 'candidate').
name(v_thread_calls_78, simple_name, gson_1_expr123, expression, range(gson_1, 18469, 11, 425, 425), 'threadCalls').
name(m_remove_56, simple_name, gson_1_expr123, name, range(gson_1, 18481, 6, 425, 425), 'remove').
name(p_type_76, simple_name, gson_1_expr123, (arguments, 0), range(gson_1, 18488, 4, 425, 425), 'type').
name(v_requires_thread_local_cleanup_79, simple_name, gson_1_stmt78, expression, range(gson_1, 18506, 26, 427, 427), 'requiresThreadLocalCleanup').
name(f_calls_17, simple_name, gson_1_expr124, expression, range(gson_1, 18544, 5, 428, 428), 'calls').
name(m_remove_57, simple_name, gson_1_expr124, name, range(gson_1, 18550, 6, 428, 428), 'remove').
name(v_skip_past_found_86, simple_name, gson_1_code140, name, range(gson_1, 21404, 13, 484, 484), 'skipPastFound').
name(f_factories_54, simple_name, gson_1_expr126, expression, range(gson_1, 21643, 9, 488, 488), 'factories').
name(m_contains_59, simple_name, gson_1_expr126, name, range(gson_1, 21653, 8, 488, 488), 'contains').
name(p_skip_past_84, simple_name, gson_1_expr126, (arguments, 0), range(gson_1, 21662, 8, 488, 488), 'skipPast').
name(v_skip_past_found_86, simple_name, gson_1_expr127, left_hand_side, range(gson_1, 21673, 13, 488, 488), 'skipPastFound').
name(v_factory_87, simple_name, gson_1_code141, name, range(gson_1, 21724, 7, 490, 490), 'factory').
name(f_factories_54, simple_name, gson_1_stmt83, expression, range(gson_1, 21734, 9, 490, 490), 'factories').
name(v_skip_past_found_86, simple_name, gson_1_expr128, operand, range(gson_1, 21758, 13, 491, 491), 'skipPastFound').
name(v_candidate_88, simple_name, gson_1_code146, name, range(gson_1, 21900, 9, 498, 498), 'candidate').
name(v_factory_87, simple_name, gson_1_expr129, expression, range(gson_1, 21912, 7, 498, 498), 'factory').
name(m_create_55, simple_name, gson_1_expr129, name, range(gson_1, 21920, 6, 498, 498), 'create').
name(p_type_85, simple_name, gson_1_expr129, (arguments, 1), range(gson_1, 21933, 4, 498, 498), 'type').
name(v_candidate_88, simple_name, gson_1_expr131, left_operand, range(gson_1, 21950, 9, 499, 499), 'candidate').
name(m_to_json_64, simple_name, gson_1_expr132, name, range(gson_1, 25295, 6, 575, 575), 'toJson').
name(p_src_93, simple_name, gson_1_expr132, (arguments, 0), range(gson_1, 25302, 3, 575, 575), 'src').
name(p_src_93, simple_name, gson_1_expr133, expression, range(gson_1, 25307, 3, 575, 575), 'src').
name(m_get_class_65, simple_name, gson_1_expr133, name, range(gson_1, 25311, 8, 575, 575), 'getClass').
name(v_writer_96, simple_name, gson_1_code150, name, range(gson_1, 26258, 6, 594, 594), 'writer').
name(m_to_json_67, simple_name, gson_1_expr135, name, range(gson_1, 26291, 6, 595, 595), 'toJson').
name(p_src_94, simple_name, gson_1_expr135, (arguments, 0), range(gson_1, 26298, 3, 595, 595), 'src').
name(p_type_of_src_95, simple_name, gson_1_expr135, (arguments, 1), range(gson_1, 26303, 9, 595, 595), 'typeOfSrc').
name(v_writer_96, simple_name, gson_1_expr135, (arguments, 2), range(gson_1, 26314, 6, 595, 595), 'writer').
name(v_json_writer_102, simple_name, gson_1_code154, name, range(gson_1, 28460, 10, 639, 639), 'jsonWriter').
name(m_new_json_writer_69, simple_name, gson_1_expr136, name, range(gson_1, 28473, 13, 639, 639), 'newJsonWriter').
name(t_streams_11, simple_name, gson_1_expr137, expression, range(gson_1, 28487, 7, 639, 639), 'Streams').
name(m_writer_for_appendable_70, simple_name, gson_1_expr137, name, range(gson_1, 28495, 19, 639, 639), 'writerForAppendable').
name(p_writer_101, simple_name, gson_1_expr137, (arguments, 0), range(gson_1, 28515, 6, 639, 639), 'writer').
name(m_to_json_71, simple_name, gson_1_expr138, name, range(gson_1, 28531, 6, 640, 640), 'toJson').
name(p_src_99, simple_name, gson_1_expr138, (arguments, 0), range(gson_1, 28538, 3, 640, 640), 'src').
name(p_type_of_src_100, simple_name, gson_1_expr138, (arguments, 1), range(gson_1, 28543, 9, 640, 640), 'typeOfSrc').
name(v_json_writer_102, simple_name, gson_1_expr138, (arguments, 2), range(gson_1, 28554, 10, 640, 640), 'jsonWriter').
name(v_adapter_106, simple_name, gson_1_code159, name, range(gson_1, 28976, 7, 653, 653), 'adapter').
name(m_get_adapter_48, simple_name, gson_1_expr139, name, range(gson_1, 28986, 10, 653, 653), 'getAdapter').
name(t_type_token_12, simple_name, gson_1_expr140, expression, range(gson_1, 28997, 9, 653, 653), 'TypeToken').
name(m_get_72, simple_name, gson_1_expr140, name, range(gson_1, 29007, 3, 653, 653), 'get').
name(p_type_of_src_104, simple_name, gson_1_expr140, (arguments, 0), range(gson_1, 29011, 9, 653, 653), 'typeOfSrc').
name(f_generate_non_executable_json_48, simple_name, gson_1_stmt94, expression, range(gson_1, 30763, 25, 705, 705), 'generateNonExecutableJson').
name(v_json_writer_111, simple_name, gson_1_code162, name, range(gson_1, 30861, 10, 708, 708), 'jsonWriter').
name(p_writer_110, simple_name, gson_1_expr141, (arguments, 0), range(gson_1, 30889, 6, 708, 708), 'writer').
name(f_pretty_printing_50, simple_name, gson_1_stmt96, expression, range(gson_1, 30906, 14, 709, 709), 'prettyPrinting').
name(v_json_writer_111, simple_name, gson_1_expr142, expression, range(gson_1, 30968, 10, 712, 712), 'jsonWriter').
name(m_set_serialize_nulls_76, simple_name, gson_1_expr142, name, range(gson_1, 30979, 17, 712, 712), 'setSerializeNulls').
name(f_serialize_nulls_47, simple_name, gson_1_expr142, (arguments, 0), range(gson_1, 30997, 14, 712, 712), 'serializeNulls').
name(v_json_writer_111, simple_name, gson_1_stmt98, expression, range(gson_1, 31025, 10, 713, 713), 'jsonWriter').
name(v_json_reader_113, simple_name, gson_1_code166, name, range(gson_1, 31202, 10, 720, 720), 'jsonReader').
name(p_reader_112, simple_name, gson_1_expr143, (arguments, 0), range(gson_1, 31230, 6, 720, 720), 'reader').
name(v_json_reader_113, simple_name, gson_1_expr144, expression, range(gson_1, 31243, 10, 721, 721), 'jsonReader').
name(m_set_lenient_79, simple_name, gson_1_expr144, name, range(gson_1, 31254, 10, 721, 721), 'setLenient').
name(f_lenient_51, simple_name, gson_1_expr144, (arguments, 0), range(gson_1, 31265, 7, 721, 721), 'lenient').
name(v_json_reader_113, simple_name, gson_1_stmt101, expression, range(gson_1, 31286, 10, 722, 722), 'jsonReader').
name(v_object_118, simple_name, gson_1_code170, name, range(gson_1, 33270, 6, 765, 765), 'object').
name(m_from_json_82, simple_name, gson_1_expr145, name, range(gson_1, 33279, 8, 765, 765), 'fromJson').
name(p_json_116, simple_name, gson_1_expr145, (arguments, 0), range(gson_1, 33288, 4, 765, 765), 'json').
name(p_class_of_t_117, simple_name, gson_1_expr146, expression, range(gson_1, 33301, 8, 765, 765), 'classOfT').
name(p_json_119, simple_name, gson_1_expr147, left_operand, range(gson_1, 34597, 4, 789, 789), 'json').
name(v_reader_121, simple_name, gson_1_code174, name, range(gson_1, 34655, 6, 792, 792), 'reader').
name(p_json_119, simple_name, gson_1_expr148, (arguments, 0), range(gson_1, 34681, 4, 792, 792), 'json').
name(v_target_122, simple_name, gson_1_code177, name, range(gson_1, 34694, 6, 793, 793), 'target').
name(m_from_json_84, simple_name, gson_1_expr150, name, range(gson_1, 34707, 8, 793, 793), 'fromJson').
name(v_reader_121, simple_name, gson_1_expr150, (arguments, 0), range(gson_1, 34716, 6, 793, 793), 'reader').
name(p_type_of_t_120, simple_name, gson_1_expr150, (arguments, 1), range(gson_1, 34724, 7, 793, 793), 'typeOfT').
name(v_json_reader_127, simple_name, gson_1_code181, name, range(gson_1, 37558, 10, 843, 843), 'jsonReader').
name(m_new_json_reader_77, simple_name, gson_1_expr151, name, range(gson_1, 37571, 13, 843, 843), 'newJsonReader').
name(p_json_125, simple_name, gson_1_expr151, (arguments, 0), range(gson_1, 37585, 4, 843, 843), 'json').
name(v_object_128, simple_name, gson_1_code183, name, range(gson_1, 37598, 6, 844, 844), 'object').
name(m_from_json_86, simple_name, gson_1_expr153, name, range(gson_1, 37611, 8, 844, 844), 'fromJson').
name(v_json_reader_127, simple_name, gson_1_expr153, (arguments, 0), range(gson_1, 37620, 10, 844, 844), 'jsonReader').
name(p_type_of_t_126, simple_name, gson_1_expr153, (arguments, 1), range(gson_1, 37632, 7, 844, 844), 'typeOfT').
name(v_is_empty_133, simple_name, gson_1_code187, name, range(gson_1, 38705, 7, 871, 871), 'isEmpty').
name(v_old_lenient_134, simple_name, gson_1_code189, name, range(gson_1, 38733, 10, 872, 872), 'oldLenient').
name(p_reader_131, simple_name, gson_1_expr154, expression, range(gson_1, 38746, 6, 872, 872), 'reader').
name(m_is_lenient_88, simple_name, gson_1_expr154, name, range(gson_1, 38753, 9, 872, 872), 'isLenient').
name(p_reader_131, simple_name, gson_1_expr155, expression, range(gson_1, 38770, 6, 873, 873), 'reader').
name(m_set_lenient_79, simple_name, gson_1_expr155, name, range(gson_1, 38777, 10, 873, 873), 'setLenient').
name(p_reader_131, simple_name, gson_1_expr156, expression, range(gson_1, 38811, 6, 875, 875), 'reader').
name(m_peek_89, simple_name, gson_1_expr156, name, range(gson_1, 38818, 4, 875, 875), 'peek').
name(v_is_empty_133, simple_name, gson_1_expr157, left_hand_side, range(gson_1, 38832, 7, 876, 876), 'isEmpty').
name(v_type_token_135, simple_name, gson_1_code193, name, range(gson_1, 38868, 9, 877, 877), 'typeToken').
name(t_type_token_12, simple_name, gson_1_expr159, expression, range(gson_1, 38895, 9, 877, 877), 'TypeToken').
name(m_get_72, simple_name, gson_1_expr159, name, range(gson_1, 38905, 3, 877, 877), 'get').
name(p_type_of_t_132, simple_name, gson_1_expr159, (arguments, 0), range(gson_1, 38909, 7, 877, 877), 'typeOfT').
name(v_type_adapter_136, simple_name, gson_1_code200, name, range(gson_1, 38940, 11, 878, 878), 'typeAdapter').
name(m_get_adapter_48, simple_name, gson_1_expr160, name, range(gson_1, 38954, 10, 878, 878), 'getAdapter').
name(v_type_token_135, simple_name, gson_1_expr160, (arguments, 0), range(gson_1, 38965, 9, 878, 878), 'typeToken').
name(p_reader_131, simple_name, gson_1_expr161, expression, range(gson_1, 39571, 6, 896, 896), 'reader').
name(m_set_lenient_79, simple_name, gson_1_expr161, name, range(gson_1, 39578, 10, 896, 896), 'setLenient').
name(v_old_lenient_134, simple_name, gson_1_expr161, (arguments, 0), range(gson_1, 39589, 10, 896, 896), 'oldLenient').
name(t_future_type_adapter_13, simple_name, gson_1_code201, name, range(gson_1, 42114, 17, 947, 947), 'FutureTypeAdapter').
name(t_t_14, simple_name, gson_1_code203, name, range(gson_1, 42132, 1, 947, 947), 'T').
%constructor_constructor_1 - com.google.gson.internal.ConstructorConstructor
name(m_constructor_constructor_16, simple_name, constructor_constructor_1_code3, name, range(constructor_constructor_1, 1665, 22, 51, 51), 'ConstructorConstructor').
name(p_instance_creators_163, simple_name, constructor_constructor_1_code5, name, range(constructor_constructor_1, 1718, 16, 51, 51), 'instanceCreators').
name(f_instance_creators_164, simple_name, constructor_constructor_1_expr2, name, range(constructor_constructor_1, 1747, 16, 52, 52), 'instanceCreators').
name(p_instance_creators_163, simple_name, constructor_constructor_1_expr1, right_hand_side, range(constructor_constructor_1, 1766, 16, 52, 52), 'instanceCreators').
name(v_type_166, simple_name, constructor_constructor_1_code15, name, range(constructor_constructor_1, 1868, 4, 56, 56), 'type').
name(p_type_token_165, simple_name, constructor_constructor_1_expr4, expression, range(constructor_constructor_1, 1875, 9, 56, 56), 'typeToken').
name(m_get_type_111, simple_name, constructor_constructor_1_expr4, name, range(constructor_constructor_1, 1885, 7, 56, 56), 'getType').
name(v_raw_type_167, simple_name, constructor_constructor_1_code21, name, range(constructor_constructor_1, 1923, 7, 57, 57), 'rawType').
name(p_type_token_165, simple_name, constructor_constructor_1_expr5, expression, range(constructor_constructor_1, 1933, 9, 57, 57), 'typeToken').
name(m_get_raw_type_112, simple_name, constructor_constructor_1_expr5, name, range(constructor_constructor_1, 1943, 10, 57, 57), 'getRawType').
name(v_type_creator_168, simple_name, constructor_constructor_1_code26, name, range(constructor_constructor_1, 2080, 11, 62, 62), 'typeCreator').
name(f_instance_creators_164, simple_name, constructor_constructor_1_expr7, expression, range(constructor_constructor_1, 2115, 16, 62, 62), 'instanceCreators').
name(m_get_49, simple_name, constructor_constructor_1_expr7, name, range(constructor_constructor_1, 2132, 3, 62, 62), 'get').
name(v_type_166, simple_name, constructor_constructor_1_expr7, (arguments, 0), range(constructor_constructor_1, 2136, 4, 62, 62), 'type').
name(v_type_creator_168, simple_name, constructor_constructor_1_expr8, left_operand, range(constructor_constructor_1, 2151, 11, 63, 63), 'typeCreator').
name(v_raw_type_creator_169, simple_name, constructor_constructor_1_code34, name, range(constructor_constructor_1, 2471, 14, 73, 73), 'rawTypeCreator').
name(v_raw_type_creator_169, simple_name, constructor_constructor_1_expr10, left_operand, range(constructor_constructor_1, 2556, 14, 75, 75), 'rawTypeCreator').
name(v_default_constructor_170, simple_name, constructor_constructor_1_code38, name, range(constructor_constructor_1, 2770, 18, 83, 83), 'defaultConstructor').
name(m_new_default_constructor_115, simple_name, constructor_constructor_1_expr11, name, range(constructor_constructor_1, 2791, 21, 83, 83), 'newDefaultConstructor').
name(v_raw_type_167, simple_name, constructor_constructor_1_expr11, (arguments, 0), range(constructor_constructor_1, 2813, 7, 83, 83), 'rawType').
name(v_default_constructor_170, simple_name, constructor_constructor_1_expr12, left_operand, range(constructor_constructor_1, 2831, 18, 84, 84), 'defaultConstructor').
name(v_default_constructor_170, simple_name, constructor_constructor_1_stmt10, expression, range(constructor_constructor_1, 2874, 18, 85, 85), 'defaultConstructor').
name(v_constructor_172, simple_name, constructor_constructor_1_code45, name, range(constructor_constructor_1, 3293, 11, 99, 99), 'constructor').
name(p_raw_type_171, simple_name, constructor_constructor_1_expr13, expression, range(constructor_constructor_1, 3307, 7, 99, 99), 'rawType').
name(m_get_declared_constructor_116, simple_name, constructor_constructor_1_expr13, name, range(constructor_constructor_1, 3315, 22, 99, 99), 'getDeclaredConstructor').
name(v_constructor_172, simple_name, constructor_constructor_1_expr15, expression, range(constructor_constructor_1, 3352, 11, 100, 100), 'constructor').
name(m_is_accessible_117, simple_name, constructor_constructor_1_expr15, name, range(constructor_constructor_1, 3364, 12, 100, 100), 'isAccessible').
name(v_constructor_172, simple_name, constructor_constructor_1_expr16, expression, range(constructor_constructor_1, 3390, 11, 101, 101), 'constructor').
name(m_set_accessible_118, simple_name, constructor_constructor_1_expr16, name, range(constructor_constructor_1, 3402, 13, 101, 101), 'setAccessible').
name(v_args_173, simple_name, constructor_constructor_1_code54, name, range(constructor_constructor_1, 3632, 4, 107, 107), 'args').
name(v_constructor_172, simple_name, constructor_constructor_1_expr19, expression, range(constructor_constructor_1, 3668, 11, 108, 108), 'constructor').
name(m_new_instance_121, simple_name, constructor_constructor_1_expr19, name, range(constructor_constructor_1, 3680, 11, 108, 108), 'newInstance').
name(v_args_173, simple_name, constructor_constructor_1_expr19, (arguments, 0), range(constructor_constructor_1, 3692, 4, 108, 108), 'args').
%reflective_type_adapter_factory_1 - com.google.gson.internal.bind.ReflectiveTypeAdapterFactory
name(p_field_naming_policy_293, simple_name, reflective_type_adapter_factory_1_code4, name, range(reflective_type_adapter_factory_1, 2063, 17, 54, 54), 'fieldNamingPolicy').
name(p_excluder_294, simple_name, reflective_type_adapter_factory_1_code6, name, range(reflective_type_adapter_factory_1, 2091, 8, 54, 54), 'excluder').
name(f_constructor_constructor_295, simple_name, reflective_type_adapter_factory_1_expr2, name, range(reflective_type_adapter_factory_1, 2112, 22, 55, 55), 'constructorConstructor').
name(p_constructor_constructor_292, simple_name, reflective_type_adapter_factory_1_expr1, right_hand_side, range(reflective_type_adapter_factory_1, 2137, 22, 55, 55), 'constructorConstructor').
name(f_field_naming_policy_296, simple_name, reflective_type_adapter_factory_1_expr5, name, range(reflective_type_adapter_factory_1, 2170, 17, 56, 56), 'fieldNamingPolicy').
name(p_field_naming_policy_293, simple_name, reflective_type_adapter_factory_1_expr4, right_hand_side, range(reflective_type_adapter_factory_1, 2190, 17, 56, 56), 'fieldNamingPolicy').
name(f_excluder_297, simple_name, reflective_type_adapter_factory_1_expr8, name, range(reflective_type_adapter_factory_1, 2218, 8, 57, 57), 'excluder').
name(p_excluder_294, simple_name, reflective_type_adapter_factory_1_expr7, right_hand_side, range(reflective_type_adapter_factory_1, 2229, 8, 57, 57), 'excluder').
%type_token_1 - com.google.gson.reflect.TypeToken
name(m_type_token_341, simple_name, type_token_1_code3, name, range(type_token_1, 2341, 9, 71, 71), 'TypeToken').
name(p_type_525, simple_name, type_token_1_code4, name, range(type_token_1, 2356, 4, 71, 71), 'type').
name(f_type_526, simple_name, type_token_1_expr2, name, range(type_token_1, 2373, 4, 72, 72), 'type').
name(t_gson_types_19, simple_name, type_token_1_expr3, expression, range(type_token_1, 2380, 11, 72, 72), '$Gson$Types').
name(m_canonicalize_342, simple_name, type_token_1_expr3, name, range(type_token_1, 2392, 12, 72, 72), 'canonicalize').
name(t_gson_preconditions_20, simple_name, type_token_1_expr5, expression, range(type_token_1, 2405, 19, 72, 72), '$Gson$Preconditions').
name(m_check_not_null_343, simple_name, type_token_1_expr5, name, range(type_token_1, 2425, 12, 72, 72), 'checkNotNull').
name(p_type_525, simple_name, type_token_1_expr5, (arguments, 0), range(type_token_1, 2438, 4, 72, 72), 'type').
name(f_raw_type_527, simple_name, type_token_1_expr7, name, range(type_token_1, 2455, 7, 73, 73), 'rawType').
name(t_gson_types_19, simple_name, type_token_1_expr10, expression, range(type_token_1, 2484, 11, 73, 73), '$Gson$Types').
name(m_get_raw_type_344, simple_name, type_token_1_expr10, name, range(type_token_1, 2496, 10, 73, 73), 'getRawType').
name(f_type_526, simple_name, type_token_1_expr11, name, range(type_token_1, 2512, 4, 73, 73), 'type').
name(f_hash_code_528, simple_name, type_token_1_expr14, name, range(type_token_1, 2528, 8, 74, 74), 'hashCode').
name(f_type_526, simple_name, type_token_1_expr17, name, range(type_token_1, 2544, 4, 74, 74), 'type').
name(m_hash_code_345, simple_name, type_token_1_expr15, name, range(type_token_1, 2549, 8, 74, 74), 'hashCode').
name(f_raw_type_527, simple_name, type_token_1_stmt4, expression, range(type_token_1, 3194, 7, 94, 94), 'rawType').
name(f_type_526, simple_name, type_token_1_stmt5, expression, range(type_token_1, 3307, 4, 101, 101), 'type').
name(f_hash_code_528, simple_name, type_token_1_expr19, name, range(type_token_1, 8981, 8, 280, 280), 'hashCode').
name(p_type_547, simple_name, type_token_1_expr21, (arguments, 0), range(type_token_1, 9396, 4, 296, 296), 'type').
name(p_type_548, simple_name, type_token_1_expr22, (arguments, 0), range(type_token_1, 9563, 4, 303, 303), 'type').
%json_token_1 - com.google.gson.stream.JsonToken
name(t_json_token_24, simple_name, json_token_1_code2, name, range(json_token_1, 756, 9, 25, 25), 'JsonToken').
name(f_begin_array_591, simple_name, json_token_1_code4, name, range(json_token_1, 912, 11, 31, 31), 'BEGIN_ARRAY').
name(f_end_array_592, simple_name, json_token_1_code5, name, range(json_token_1, 1065, 9, 37, 37), 'END_ARRAY').
name(f_begin_object_593, simple_name, json_token_1_code6, name, range(json_token_1, 1223, 12, 43, 43), 'BEGIN_OBJECT').
name(f_end_object_594, simple_name, json_token_1_code7, name, range(json_token_1, 1380, 10, 49, 49), 'END_OBJECT').
name(f_name_595, simple_name, json_token_1_code8, name, range(json_token_1, 1590, 4, 56, 56), 'NAME').
name(f_string_596, simple_name, json_token_1_code9, name, range(json_token_1, 1631, 6, 61, 61), 'STRING').
name(f_number_597, simple_name, json_token_1_code10, name, range(json_token_1, 1758, 6, 67, 67), 'NUMBER').
name(f_boolean_598, simple_name, json_token_1_code11, name, range(json_token_1, 1824, 7, 72, 72), 'BOOLEAN').
name(f_null_599, simple_name, json_token_1_code12, name, range(json_token_1, 1874, 4, 77, 77), 'NULL').
name(f_end_document_600, simple_name, json_token_1_code13, name, range(json_token_1, 2057, 12, 84, 84), 'END_DOCUMENT').

%%% Literals
%json_writer_1 - com.google.gson.stream.JsonWriter
literal(json_writer_1_literal1, number_literal, json_writer_1_expr2, (dimensions, 0), range(json_writer_1, 5515, 3, 145, 145), 128).
literal(json_writer_1_literal2, number_literal, json_writer_1_code8, initializer, range(json_writer_1, 5538, 1, 146, 146), 0).
literal(json_writer_1_literal3, number_literal, json_writer_1_expr4, right_operand, range(json_writer_1, 5546, 4, 146, 146), 0x1f).
literal(json_writer_1_literal4, string_literal, json_writer_1_expr8, (arguments, 0), range(json_writer_1, 5602, 9, 147, 147), "\\u%04x").
literal(json_writer_1_literal6, character_literal, json_writer_1_expr11, index, range(json_writer_1, 5651, 3, 149, 149), '"').
literal(json_writer_1_literal5, string_literal, json_writer_1_expr10, right_hand_side, range(json_writer_1, 5658, 6, 149, 149), "\\\"").
literal(json_writer_1_literal8, character_literal, json_writer_1_expr13, index, range(json_writer_1, 5688, 4, 150, 150), '\\').
literal(json_writer_1_literal7, string_literal, json_writer_1_expr12, right_hand_side, range(json_writer_1, 5696, 6, 150, 150), "\\\\").
literal(json_writer_1_literal10, character_literal, json_writer_1_expr15, index, range(json_writer_1, 5726, 4, 151, 151), '\t').
literal(json_writer_1_literal9, string_literal, json_writer_1_expr14, right_hand_side, range(json_writer_1, 5734, 5, 151, 151), "\\t").
literal(json_writer_1_literal12, character_literal, json_writer_1_expr17, index, range(json_writer_1, 5763, 4, 152, 152), '\b').
literal(json_writer_1_literal11, string_literal, json_writer_1_expr16, right_hand_side, range(json_writer_1, 5771, 5, 152, 152), "\\b").
literal(json_writer_1_literal14, character_literal, json_writer_1_expr19, index, range(json_writer_1, 5800, 4, 153, 153), '\n').
literal(json_writer_1_literal13, string_literal, json_writer_1_expr18, right_hand_side, range(json_writer_1, 5808, 5, 153, 153), "\\n").
literal(json_writer_1_literal16, character_literal, json_writer_1_expr21, index, range(json_writer_1, 5837, 4, 154, 154), '\r').
literal(json_writer_1_literal15, string_literal, json_writer_1_expr20, right_hand_side, range(json_writer_1, 5845, 5, 154, 154), "\\r").
literal(json_writer_1_literal18, character_literal, json_writer_1_expr23, index, range(json_writer_1, 5874, 4, 155, 155), '\f').
literal(json_writer_1_literal17, string_literal, json_writer_1_expr22, right_hand_side, range(json_writer_1, 5882, 5, 155, 155), "\\f").
literal(json_writer_1_literal20, character_literal, json_writer_1_expr27, index, range(json_writer_1, 5982, 3, 157, 157), '<').
literal(json_writer_1_literal19, string_literal, json_writer_1_expr26, right_hand_side, range(json_writer_1, 5989, 9, 157, 157), "\\u003c").
literal(json_writer_1_literal22, character_literal, json_writer_1_expr29, index, range(json_writer_1, 6032, 3, 158, 158), '>').
literal(json_writer_1_literal21, string_literal, json_writer_1_expr28, right_hand_side, range(json_writer_1, 6039, 9, 158, 158), "\\u003e").
literal(json_writer_1_literal24, character_literal, json_writer_1_expr31, index, range(json_writer_1, 6082, 3, 159, 159), '&').
literal(json_writer_1_literal23, string_literal, json_writer_1_expr30, right_hand_side, range(json_writer_1, 6089, 9, 159, 159), "\\u0026").
literal(json_writer_1_literal26, character_literal, json_writer_1_expr33, index, range(json_writer_1, 6132, 3, 160, 160), '=').
literal(json_writer_1_literal25, string_literal, json_writer_1_expr32, right_hand_side, range(json_writer_1, 6139, 9, 160, 160), "\\u003d").
literal(json_writer_1_literal28, character_literal, json_writer_1_expr35, index, range(json_writer_1, 6182, 4, 161, 161), '\'').
literal(json_writer_1_literal27, string_literal, json_writer_1_expr34, right_hand_side, range(json_writer_1, 6190, 9, 161, 161), "\\u0027").
literal(json_writer_1_literal29, number_literal, json_writer_1_expr36, (dimensions, 0), range(json_writer_1, 6343, 2, 167, 167), 32).
literal(json_writer_1_literal30, number_literal, json_writer_1_code22, initializer, range(json_writer_1, 6374, 1, 168, 168), 0).
literal(json_writer_1_literal31, string_literal, json_writer_1_code27, initializer, range(json_writer_1, 6660, 3, 182, 182), ":").
literal(json_writer_1_literal32, boolean_literal, json_writer_1_code31, initializer, range(json_writer_1, 6790, 4, 190, 190), true).
literal(json_writer_1_literal33, null_literal, json_writer_1_expr38, right_operand, range(json_writer_1, 7075, 4, 198, 198), null).
%sql_date_type_adapter_1 - com.google.gson.internal.bind.SqlDateTypeAdapter
literal(sql_date_type_adapter_1_literal1, null_literal, sql_date_type_adapter_1_expr2, else_expression, range(sql_date_type_adapter_1, 1812, 4, 43, 43), null).
%type_adapters_1 - com.google.gson.internal.bind.TypeAdapters
literal(type_adapters_1_literal1, null_literal, type_adapters_1_stmt2, expression, range(type_adapters_1, 19233, 4, 596, 596), null).
literal(type_adapters_1_literal2, null_literal, type_adapters_1_expr70, else_expression, range(type_adapters_1, 28242, 4, 857, 857), null).
literal(type_adapters_1_literal3, null_literal, type_adapters_1_expr76, else_expression, range(type_adapters_1, 28916, 4, 871, 871), null).
literal(type_adapters_1_literal4, null_literal, type_adapters_1_expr84, else_expression, range(type_adapters_1, 29644, 4, 886, 886), null).
literal(type_adapters_1_literal5, null_literal, type_adapters_1_stmt14, expression, range(type_adapters_1, 30445, 4, 906, 906), null).
%time_type_adapter_1 - com.google.gson.internal.bind.TimeTypeAdapter
literal(time_type_adapter_1_literal1, null_literal, time_type_adapter_1_expr2, else_expression, range(time_type_adapter_1, 1814, 4, 44, 44), null).
%map_type_adapter_factory_1 - com.google.gson.internal.bind.MapTypeAdapterFactory
literal(map_type_adapter_factory_1_literal1, null_literal, map_type_adapter_factory_1_stmt6, expression, range(map_type_adapter_factory_1, 4525, 4, 120, 120), null).
%field_naming_policy_1 - com.google.gson.FieldNamingPolicy
%type_adapter_1 - com.google.gson.TypeAdapter
%collection_type_adapter_factory_1 - com.google.gson.internal.bind.CollectionTypeAdapterFactory
literal(collection_type_adapter_factory_1_literal1, null_literal, collection_type_adapter_factory_1_stmt5, expression, range(collection_type_adapter_factory_1, 1750, 4, 49, 49), null).
%excluder_1 - com.google.gson.internal.Excluder
literal(excluder_1_literal1, boolean_literal, excluder_1_code25, initializer, range(excluder_1, 2086, 4, 56, 56), true).
literal(excluder_1_literal2, boolean_literal, excluder_1_expr6, (arguments, 1), range(excluder_1, 3908, 4, 113, 113), true).
literal(excluder_1_literal3, boolean_literal, excluder_1_expr7, (arguments, 1), range(excluder_1, 3973, 5, 114, 114), false).
literal(excluder_1_literal4, null_literal, excluder_1_stmt5, expression, range(excluder_1, 4041, 4, 117, 117), null).
literal(excluder_1_literal5, boolean_literal, excluder_1_stmt11, expression, range(excluder_1, 6634, 5, 212, 212), false).
%long_serialization_policy_1 - com.google.gson.LongSerializationPolicy
%json_adapter_annotation_type_adapter_factory_1 - com.google.gson.internal.bind.JsonAdapterAnnotationTypeAdapterFactory
%json_reader_1 - com.google.gson.stream.JsonReader
literal(json_reader_1_literal1, string_literal, json_reader_1_expr1, expression, range(json_reader_1, 7351, 8, 192, 192), ")]}'\n").
literal(json_reader_1_literal2, boolean_literal, json_reader_1_code14, initializer, range(json_reader_1, 9082, 5, 230, 230), false).
literal(json_reader_1_literal3, number_literal, json_reader_1_expr2, (dimensions, 0), range(json_reader_1, 9437, 4, 238, 238), 1024).
literal(json_reader_1_literal4, number_literal, json_reader_1_code28, initializer, range(json_reader_1, 9464, 1, 239, 239), 0).
literal(json_reader_1_literal5, number_literal, json_reader_1_code32, initializer, range(json_reader_1, 9489, 1, 240, 240), 0).
literal(json_reader_1_literal6, number_literal, json_reader_1_code36, initializer, range(json_reader_1, 9520, 1, 242, 242), 0).
literal(json_reader_1_literal7, number_literal, json_reader_1_code40, initializer, range(json_reader_1, 9549, 1, 243, 243), 0).
literal(json_reader_1_literal8, number_literal, json_reader_1_expr3, (dimensions, 0), range(json_reader_1, 10255, 2, 269, 269), 32).
literal(json_reader_1_literal9, number_literal, json_reader_1_code56, initializer, range(json_reader_1, 10286, 1, 270, 270), 0).
literal(json_reader_1_literal10, number_literal, json_reader_1_expr7, (dimensions, 0), range(json_reader_1, 10854, 2, 283, 283), 32).
literal(json_reader_1_literal11, number_literal, json_reader_1_expr8, (dimensions, 0), range(json_reader_1, 10897, 2, 284, 284), 32).
literal(json_reader_1_literal12, null_literal, json_reader_1_expr9, right_operand, range(json_reader_1, 11040, 4, 290, 290), null).
literal(json_reader_1_literal13, number_literal, json_reader_1_expr20, right_operand, range(json_reader_1, 16662, 1, 466, 466), 1).
literal(json_reader_1_literal14, number_literal, json_reader_1_expr31, right_operand, range(json_reader_1, 18996, 1, 540, 540), 1).
literal(json_reader_1_literal15, boolean_literal, json_reader_1_expr32, (arguments, 0), range(json_reader_1, 19396, 4, 553, 553), true).
literal(json_reader_1_literal16, number_literal, json_reader_1_expr38, right_hand_side, range(json_reader_1, 41913, 1, 1288, 1288), 0).
literal(json_reader_1_literal17, number_literal, json_reader_1_expr39, right_hand_side, range(json_reader_1, 41933, 1, 1291, 1291), 0).
literal(json_reader_1_literal18, number_literal, json_reader_1_expr45, operand, range(json_reader_1, 42022, 1, 1293, 1293), 1).
literal(json_reader_1_literal19, number_literal, json_reader_1_expr50, right_operand, range(json_reader_1, 42165, 1, 1297, 1297), 0).
literal(json_reader_1_literal20, number_literal, json_reader_1_expr51, right_operand, range(json_reader_1, 42183, 1, 1297, 1297), 0).
literal(json_reader_1_literal21, number_literal, json_reader_1_expr52, right_operand, range(json_reader_1, 42196, 1, 1297, 1297), 0).
literal(json_reader_1_literal22, number_literal, json_reader_1_expr54, index, range(json_reader_1, 42208, 1, 1297, 1297), 0).
literal(json_reader_1_literal23, character_literal, json_reader_1_expr53, right_operand, range(json_reader_1, 42214, 8, 1297, 1297), '\ufeff').
literal(json_reader_1_literal24, boolean_literal, json_reader_1_stmt32, expression, range(json_reader_1, 42335, 4, 1304, 1304), true).
literal(json_reader_1_literal25, number_literal, json_reader_1_expr61, (arguments, 0), range(json_reader_1, 43496, 1, 1339, 1339), 1).
literal(json_reader_1_literal26, character_literal, json_reader_1_expr66, right_operand, range(json_reader_1, 43616, 4, 1347, 1347), '\n').
literal(json_reader_1_literal27, character_literal, json_reader_1_expr69, right_operand, range(json_reader_1, 43709, 3, 1351, 1351), ' ').
literal(json_reader_1_literal28, character_literal, json_reader_1_expr70, right_operand, range(json_reader_1, 43721, 4, 1351, 1351), '\r').
literal(json_reader_1_literal29, character_literal, json_reader_1_expr71, right_operand, range(json_reader_1, 43734, 4, 1351, 1351), '\t').
literal(json_reader_1_literal30, character_literal, json_reader_1_expr72, right_operand, range(json_reader_1, 43784, 3, 1355, 1355), '/').
literal(json_reader_1_literal31, character_literal, json_reader_1_expr73, right_operand, range(json_reader_1, 44639, 3, 1390, 1390), '#').
literal(json_reader_1_literal32, boolean_literal, json_reader_1_expr75, (arguments, 0), range(json_reader_1, 49583, 4, 1575, 1575), true).
literal(json_reader_1_literal33, number_literal, json_reader_1_code108, initializer, range(json_reader_1, 49733, 1, 1582, 1582), 0).
%json_adapter_null_safe_test_1 - com.google.gson.regression.JsonAdapterNullSafeTest
literal(json_adapter_null_safe_test_1_literal1, string_literal, json_adapter_null_safe_test_1_expr2, (arguments, 0), range(json_adapter_null_safe_test_1, 1053, 10, 30, 30), "ec57803e").
literal(json_adapter_null_safe_test_1_literal2, string_literal, json_adapter_null_safe_test_1_expr4, (arguments, 0), range(json_adapter_null_safe_test_1, 1192, 20, 35, 35), "{'id':'ec57803e2'}").
%array_type_adapter_1 - com.google.gson.internal.bind.ArrayTypeAdapter
literal(array_type_adapter_1_literal1, null_literal, array_type_adapter_1_stmt3, expression, range(array_type_adapter_1, 1625, 4, 44, 44), null).
%json_reader_internal_access_1 - com.google.gson.internal.JsonReaderInternalAccess
%streams_1 - com.google.gson.internal.Streams
%date_type_adapter_1 - com.google.gson.internal.bind.DateTypeAdapter
literal(date_type_adapter_1_literal1, null_literal, date_type_adapter_1_expr2, else_expression, range(date_type_adapter_1, 1870, 4, 45, 45), null).
%object_type_adapter_1 - com.google.gson.internal.bind.ObjectTypeAdapter
literal(object_type_adapter_1_literal1, null_literal, object_type_adapter_1_stmt2, expression, range(object_type_adapter_1, 1595, 4, 44, 44), null).
%gson_1 - com.google.gson.Gson
literal(gson_1_literal1, null_literal, gson_1_expr108, right_operand, range(gson_1, 17431, 4, 393, 393), null).
literal(gson_1_literal2, boolean_literal, gson_1_code109, initializer, range(gson_1, 17596, 5, 398, 398), false).
literal(gson_1_literal3, null_literal, gson_1_expr110, right_operand, range(gson_1, 17626, 4, 399, 399), null).
literal(gson_1_literal4, boolean_literal, gson_1_expr114, right_hand_side, range(gson_1, 17770, 4, 402, 402), true).
literal(gson_1_literal5, null_literal, gson_1_expr117, right_operand, range(gson_1, 17945, 4, 407, 407), null).
literal(gson_1_literal6, null_literal, gson_1_expr122, right_operand, range(gson_1, 18235, 4, 417, 417), null).
literal(gson_1_literal7, boolean_literal, gson_1_code140, initializer, range(gson_1, 21420, 5, 484, 484), false).
literal(gson_1_literal8, boolean_literal, gson_1_expr127, right_hand_side, range(gson_1, 21689, 4, 488, 488), true).
literal(gson_1_literal9, null_literal, gson_1_expr131, right_operand, range(gson_1, 21963, 4, 499, 499), null).
literal(gson_1_literal10, null_literal, gson_1_expr147, right_operand, range(gson_1, 34605, 4, 789, 789), null).
literal(gson_1_literal11, boolean_literal, gson_1_code187, initializer, range(gson_1, 38715, 4, 871, 871), true).
literal(gson_1_literal12, boolean_literal, gson_1_expr155, (arguments, 0), range(gson_1, 38788, 4, 873, 873), true).
literal(gson_1_literal13, boolean_literal, gson_1_expr157, right_hand_side, range(gson_1, 38842, 5, 876, 876), false).
%constructor_constructor_1 - com.google.gson.internal.ConstructorConstructor
literal(constructor_constructor_1_literal1, null_literal, constructor_constructor_1_expr8, right_operand, range(constructor_constructor_1, 2166, 4, 63, 63), null).
literal(constructor_constructor_1_literal2, null_literal, constructor_constructor_1_expr10, right_operand, range(constructor_constructor_1, 2574, 4, 75, 75), null).
literal(constructor_constructor_1_literal3, null_literal, constructor_constructor_1_expr12, right_operand, range(constructor_constructor_1, 2853, 4, 84, 84), null).
literal(constructor_constructor_1_literal4, boolean_literal, constructor_constructor_1_expr16, (arguments, 0), range(constructor_constructor_1, 3416, 4, 101, 101), true).
literal(constructor_constructor_1_literal5, null_literal, constructor_constructor_1_code54, initializer, range(constructor_constructor_1, 3639, 4, 107, 107), null).
%reflective_type_adapter_factory_1 - com.google.gson.internal.bind.ReflectiveTypeAdapterFactory
%type_token_1 - com.google.gson.reflect.TypeToken
%json_token_1 - com.google.gson.stream.JsonToken

%%% Other Code Entities
%json_writer_1 - com.google.gson.stream.JsonWriter
code(json_writer_1_code1, compilation_unit, range(json_writer_1, 0, 18632, 1, -1)).
code(json_writer_1_code2, type_declaration, json_writer_1_code1, (types, 0), range(json_writer_1, 1178, 17453, 32, 644)).
code(json_writer_1_code3, initializer, json_writer_1_code2, (body_declarations, 2), range(json_writer_1, 5471, 733, 144, 162)).
code(json_writer_1_code5, simple_type, json_writer_1_code4, element_type, range(json_writer_1, 5508, 6, 145, 145)).
code(json_writer_1_code4, array_type, json_writer_1_expr2, type, range(json_writer_1, 5508, 11, 145, 145)).
code(json_writer_1_code6, dimension, json_writer_1_code4, (dimensions, 0), range(json_writer_1, 5514, 5, 145, 145)).
code(json_writer_1_code7, primitive_type, json_writer_1_expr3, type, range(json_writer_1, 5530, 3, 146, 146)).
code(json_writer_1_code8, variable_declaration_fragment, json_writer_1_expr3, (fragments, 0), range(json_writer_1, 5534, 5, 146, 146)).
code(json_writer_1_code9, primitive_type, json_writer_1_expr9, type, range(json_writer_1, 5614, 3, 147, 147)).
code(json_writer_1_code11, modifier, json_writer_1_code10, (modifiers, 0), range(json_writer_1, 6313, 7, 167, 167)).
code(json_writer_1_code10, field_declaration, json_writer_1_code2, (body_declarations, 4), range(json_writer_1, 6313, 34, 167, 167)).
code(json_writer_1_code13, primitive_type, json_writer_1_code12, element_type, range(json_writer_1, 6321, 3, 167, 167)).
code(json_writer_1_code12, array_type, json_writer_1_code10, type, range(json_writer_1, 6321, 5, 167, 167)).
code(json_writer_1_code14, dimension, json_writer_1_code12, (dimensions, 0), range(json_writer_1, 6324, 2, 167, 167)).
code(json_writer_1_code15, variable_declaration_fragment, json_writer_1_code10, (fragments, 0), range(json_writer_1, 6327, 19, 167, 167)).
code(json_writer_1_code17, primitive_type, json_writer_1_code16, element_type, range(json_writer_1, 6339, 3, 167, 167)).
code(json_writer_1_code16, array_type, json_writer_1_expr36, type, range(json_writer_1, 6339, 7, 167, 167)).
code(json_writer_1_code18, dimension, json_writer_1_code16, (dimensions, 0), range(json_writer_1, 6342, 4, 167, 167)).
code(json_writer_1_code20, modifier, json_writer_1_code19, (modifiers, 0), range(json_writer_1, 6350, 7, 168, 168)).
code(json_writer_1_code19, field_declaration, json_writer_1_code2, (body_declarations, 5), range(json_writer_1, 6350, 26, 168, 168)).
code(json_writer_1_code21, primitive_type, json_writer_1_code19, type, range(json_writer_1, 6358, 3, 168, 168)).
code(json_writer_1_code22, variable_declaration_fragment, json_writer_1_code19, (fragments, 0), range(json_writer_1, 6362, 13, 168, 168)).
code(json_writer_1_code23, initializer, json_writer_1_code2, (body_declarations, 6), range(json_writer_1, 6379, 31, 169, 171)).
code(json_writer_1_code24, field_declaration, json_writer_1_code2, (body_declarations, 8), range(json_writer_1, 6570, 94, 179, 182)).
code(json_writer_1_code25, modifier, json_writer_1_code24, (modifiers, 0), range(json_writer_1, 6633, 7, 182, 182)).
code(json_writer_1_code26, simple_type, json_writer_1_code24, type, range(json_writer_1, 6641, 6, 182, 182)).
code(json_writer_1_code27, variable_declaration_fragment, json_writer_1_code24, (fragments, 0), range(json_writer_1, 6648, 15, 182, 182)).
code(json_writer_1_code29, modifier, json_writer_1_code28, (modifiers, 0), range(json_writer_1, 6757, 7, 190, 190)).
code(json_writer_1_code28, field_declaration, json_writer_1_code2, (body_declarations, 12), range(json_writer_1, 6757, 38, 190, 190)).
code(json_writer_1_code30, primitive_type, json_writer_1_code28, type, range(json_writer_1, 6765, 7, 190, 190)).
code(json_writer_1_code31, variable_declaration_fragment, json_writer_1_code28, (fragments, 0), range(json_writer_1, 6773, 21, 190, 190)).
code(json_writer_1_code32, method_declaration, json_writer_1_code2, (body_declarations, 13), range(json_writer_1, 6799, 366, 192, 202)).
code(json_writer_1_code33, modifier, json_writer_1_code32, (modifiers, 0), range(json_writer_1, 7028, 6, 197, 197)).
code(json_writer_1_code34, single_variable_declaration, json_writer_1_code32, (parameters, 0), range(json_writer_1, 7046, 10, 197, 197)).
code(json_writer_1_code35, simple_type, json_writer_1_code34, type, range(json_writer_1, 7046, 6, 197, 197)).
code(json_writer_1_code36, method_declaration, json_writer_1_code2, (body_declarations, 19), range(json_writer_1, 9054, 257, 264, 270)).
code(json_writer_1_code37, method_declaration, json_writer_1_code2, (body_declarations, 27), range(json_writer_1, 11333, 240, 353, 360)).
%sql_date_type_adapter_1 - com.google.gson.internal.bind.SqlDateTypeAdapter
code(sql_date_type_adapter_1_code1, compilation_unit, range(sql_date_type_adapter_1, 0, 2452, 1, -1)).
code(sql_date_type_adapter_1_code2, type_declaration, sql_date_type_adapter_1_code1, (types, 0), range(sql_date_type_adapter_1, 1081, 1370, 32, 67)).
code(sql_date_type_adapter_1_code4, modifier, sql_date_type_adapter_1_code3, (modifiers, 0), range(sql_date_type_adapter_1, 1448, 6, 39, 39)).
code(sql_date_type_adapter_1_code3, field_declaration, sql_date_type_adapter_1_code2, (body_declarations, 0), range(sql_date_type_adapter_1, 1448, 380, 39, 45)).
code(sql_date_type_adapter_1_code5, modifier, sql_date_type_adapter_1_code3, (modifiers, 1), range(sql_date_type_adapter_1, 1455, 6, 39, 39)).
code(sql_date_type_adapter_1_code6, modifier, sql_date_type_adapter_1_code3, (modifiers, 2), range(sql_date_type_adapter_1, 1462, 5, 39, 39)).
code(sql_date_type_adapter_1_code7, simple_type, sql_date_type_adapter_1_code3, type, range(sql_date_type_adapter_1, 1468, 18, 39, 39)).
code(sql_date_type_adapter_1_code8, variable_declaration_fragment, sql_date_type_adapter_1_code3, (fragments, 0), range(sql_date_type_adapter_1, 1487, 340, 39, 45)).
code(sql_date_type_adapter_1_code9, simple_type, sql_date_type_adapter_1_expr1, type, range(sql_date_type_adapter_1, 1501, 18, 39, 39)).
code(sql_date_type_adapter_1_code10, anonymous_class_declaration, sql_date_type_adapter_1_expr1, anonymous_class_declaration, range(sql_date_type_adapter_1, 1522, 305, 39, 45)).
code(sql_date_type_adapter_1_code11, method_declaration, sql_date_type_adapter_1_code10, (body_declarations, 0), range(sql_date_type_adapter_1, 1528, 295, 40, 44)).
code(sql_date_type_adapter_1_code12, simple_type, sql_date_type_adapter_1_expr6, type, range(sql_date_type_adapter_1, 1736, 13, 42, 42)).
%type_adapters_1 - com.google.gson.internal.bind.TypeAdapters
code(type_adapters_1_code1, compilation_unit, range(type_adapters_1, 0, 31224, 1, -1)).
code(type_adapters_1_code2, type_declaration, type_adapters_1_code1, (types, 0), range(type_adapters_1, 1975, 29248, 60, 928)).
code(type_adapters_1_code3, field_declaration, type_adapters_1_code2, (body_declarations, 1), range(type_adapters_1, 2132, 771, 68, 89)).
code(type_adapters_1_code4, modifier, type_adapters_1_code3, (modifiers, 1), range(type_adapters_1, 2164, 6, 69, 69)).
code(type_adapters_1_code5, modifier, type_adapters_1_code3, (modifiers, 2), range(type_adapters_1, 2171, 6, 69, 69)).
code(type_adapters_1_code6, modifier, type_adapters_1_code3, (modifiers, 3), range(type_adapters_1, 2178, 5, 69, 69)).
code(type_adapters_1_code7, parameterized_type, type_adapters_1_code3, type, range(type_adapters_1, 2184, 18, 69, 69)).
code(type_adapters_1_code8, simple_type, type_adapters_1_code7, type, range(type_adapters_1, 2184, 11, 69, 69)).
code(type_adapters_1_code9, simple_type, type_adapters_1_code7, (type_arguments, 0), range(type_adapters_1, 2196, 5, 69, 69)).
code(type_adapters_1_code10, variable_declaration_fragment, type_adapters_1_code3, (fragments, 0), range(type_adapters_1, 2203, 699, 69, 89)).
code(type_adapters_1_code12, simple_type, type_adapters_1_code11, type, range(type_adapters_1, 2215, 11, 69, 69)).
code(type_adapters_1_code11, parameterized_type, type_adapters_1_expr1, type, range(type_adapters_1, 2215, 18, 69, 69)).
code(type_adapters_1_code13, simple_type, type_adapters_1_code11, (type_arguments, 0), range(type_adapters_1, 2227, 5, 69, 69)).
code(type_adapters_1_code14, anonymous_class_declaration, type_adapters_1_expr1, anonymous_class_declaration, range(type_adapters_1, 2236, 666, 69, 89)).
code(type_adapters_1_code16, modifier, type_adapters_1_code15, (modifiers, 0), range(type_adapters_1, 2906, 6, 90, 90)).
code(type_adapters_1_code15, field_declaration, type_adapters_1_code2, (body_declarations, 2), range(type_adapters_1, 2906, 86, 90, 90)).
code(type_adapters_1_code17, modifier, type_adapters_1_code15, (modifiers, 1), range(type_adapters_1, 2913, 6, 90, 90)).
code(type_adapters_1_code18, modifier, type_adapters_1_code15, (modifiers, 2), range(type_adapters_1, 2920, 5, 90, 90)).
code(type_adapters_1_code19, simple_type, type_adapters_1_code15, type, range(type_adapters_1, 2926, 18, 90, 90)).
code(type_adapters_1_code20, variable_declaration_fragment, type_adapters_1_code15, (fragments, 0), range(type_adapters_1, 2945, 46, 90, 90)).
code(type_adapters_1_code21, simple_type, type_adapters_1_expr3, type, range(type_adapters_1, 2972, 5, 90, 90)).
code(type_adapters_1_code22, field_declaration, type_adapters_1_code2, (body_declarations, 3), range(type_adapters_1, 2996, 1547, 92, 147)).
code(type_adapters_1_code23, modifier, type_adapters_1_code22, (modifiers, 0), range(type_adapters_1, 2996, 6, 92, 92)).
code(type_adapters_1_code24, modifier, type_adapters_1_code22, (modifiers, 1), range(type_adapters_1, 3003, 6, 92, 92)).
code(type_adapters_1_code25, modifier, type_adapters_1_code22, (modifiers, 2), range(type_adapters_1, 3010, 5, 92, 92)).
code(type_adapters_1_code27, simple_type, type_adapters_1_code26, type, range(type_adapters_1, 3016, 11, 92, 92)).
code(type_adapters_1_code26, parameterized_type, type_adapters_1_code22, type, range(type_adapters_1, 3016, 19, 92, 92)).
code(type_adapters_1_code28, simple_type, type_adapters_1_code26, (type_arguments, 0), range(type_adapters_1, 3028, 6, 92, 92)).
code(type_adapters_1_code29, variable_declaration_fragment, type_adapters_1_code22, (fragments, 0), range(type_adapters_1, 3036, 1506, 92, 147)).
code(type_adapters_1_code31, simple_type, type_adapters_1_code30, type, range(type_adapters_1, 3050, 11, 92, 92)).
code(type_adapters_1_code30, parameterized_type, type_adapters_1_expr4, type, range(type_adapters_1, 3050, 19, 92, 92)).
code(type_adapters_1_code32, simple_type, type_adapters_1_code30, (type_arguments, 0), range(type_adapters_1, 3062, 6, 92, 92)).
code(type_adapters_1_code33, anonymous_class_declaration, type_adapters_1_expr4, anonymous_class_declaration, range(type_adapters_1, 3072, 1470, 92, 147)).
code(type_adapters_1_code34, field_declaration, type_adapters_1_code2, (body_declarations, 4), range(type_adapters_1, 4547, 91, 149, 149)).
code(type_adapters_1_code35, modifier, type_adapters_1_code34, (modifiers, 0), range(type_adapters_1, 4547, 6, 149, 149)).
code(type_adapters_1_code36, modifier, type_adapters_1_code34, (modifiers, 1), range(type_adapters_1, 4554, 6, 149, 149)).
code(type_adapters_1_code37, modifier, type_adapters_1_code34, (modifiers, 2), range(type_adapters_1, 4561, 5, 149, 149)).
code(type_adapters_1_code38, simple_type, type_adapters_1_code34, type, range(type_adapters_1, 4567, 18, 149, 149)).
code(type_adapters_1_code39, variable_declaration_fragment, type_adapters_1_code34, (fragments, 0), range(type_adapters_1, 4586, 51, 149, 149)).
code(type_adapters_1_code40, simple_type, type_adapters_1_expr6, type, range(type_adapters_1, 4615, 6, 149, 149)).
code(type_adapters_1_code41, field_declaration, type_adapters_1_code2, (body_declarations, 5), range(type_adapters_1, 4642, 645, 151, 171)).
code(type_adapters_1_code42, modifier, type_adapters_1_code41, (modifiers, 0), range(type_adapters_1, 4642, 6, 151, 151)).
code(type_adapters_1_code43, modifier, type_adapters_1_code41, (modifiers, 1), range(type_adapters_1, 4649, 6, 151, 151)).
code(type_adapters_1_code44, modifier, type_adapters_1_code41, (modifiers, 2), range(type_adapters_1, 4656, 5, 151, 151)).
code(type_adapters_1_code46, simple_type, type_adapters_1_code45, type, range(type_adapters_1, 4662, 11, 151, 151)).
code(type_adapters_1_code45, parameterized_type, type_adapters_1_code41, type, range(type_adapters_1, 4662, 20, 151, 151)).
code(type_adapters_1_code47, simple_type, type_adapters_1_code45, (type_arguments, 0), range(type_adapters_1, 4674, 7, 151, 151)).
code(type_adapters_1_code48, variable_declaration_fragment, type_adapters_1_code41, (fragments, 0), range(type_adapters_1, 4683, 603, 151, 171)).
code(type_adapters_1_code49, parameterized_type, type_adapters_1_expr7, type, range(type_adapters_1, 4697, 20, 151, 151)).
code(type_adapters_1_code50, simple_type, type_adapters_1_code49, type, range(type_adapters_1, 4697, 11, 151, 151)).
code(type_adapters_1_code51, simple_type, type_adapters_1_code49, (type_arguments, 0), range(type_adapters_1, 4709, 7, 151, 151)).
code(type_adapters_1_code52, anonymous_class_declaration, type_adapters_1_expr7, anonymous_class_declaration, range(type_adapters_1, 4720, 566, 151, 171)).
code(type_adapters_1_code53, field_declaration, type_adapters_1_code2, (body_declarations, 6), range(type_adapters_1, 5291, 577, 173, 189)).
code(type_adapters_1_code54, modifier, type_adapters_1_code53, (modifiers, 0), range(type_adapters_1, 5407, 6, 177, 177)).
code(type_adapters_1_code55, modifier, type_adapters_1_code53, (modifiers, 1), range(type_adapters_1, 5414, 6, 177, 177)).
code(type_adapters_1_code56, modifier, type_adapters_1_code53, (modifiers, 2), range(type_adapters_1, 5421, 5, 177, 177)).
code(type_adapters_1_code58, simple_type, type_adapters_1_code57, type, range(type_adapters_1, 5427, 11, 177, 177)).
code(type_adapters_1_code57, parameterized_type, type_adapters_1_code53, type, range(type_adapters_1, 5427, 20, 177, 177)).
code(type_adapters_1_code59, simple_type, type_adapters_1_code57, (type_arguments, 0), range(type_adapters_1, 5439, 7, 177, 177)).
code(type_adapters_1_code60, variable_declaration_fragment, type_adapters_1_code53, (fragments, 0), range(type_adapters_1, 5448, 419, 177, 189)).
code(type_adapters_1_code61, parameterized_type, type_adapters_1_expr8, type, range(type_adapters_1, 5472, 20, 177, 177)).
code(type_adapters_1_code62, simple_type, type_adapters_1_code61, type, range(type_adapters_1, 5472, 11, 177, 177)).
code(type_adapters_1_code63, simple_type, type_adapters_1_code61, (type_arguments, 0), range(type_adapters_1, 5484, 7, 177, 177)).
code(type_adapters_1_code64, anonymous_class_declaration, type_adapters_1_expr8, anonymous_class_declaration, range(type_adapters_1, 5495, 372, 177, 189)).
code(type_adapters_1_code65, field_declaration, type_adapters_1_code2, (body_declarations, 7), range(type_adapters_1, 5872, 113, 191, 192)).
code(type_adapters_1_code66, modifier, type_adapters_1_code65, (modifiers, 0), range(type_adapters_1, 5872, 6, 191, 191)).
code(type_adapters_1_code67, modifier, type_adapters_1_code65, (modifiers, 1), range(type_adapters_1, 5879, 6, 191, 191)).
code(type_adapters_1_code68, modifier, type_adapters_1_code65, (modifiers, 2), range(type_adapters_1, 5886, 5, 191, 191)).
code(type_adapters_1_code69, simple_type, type_adapters_1_code65, type, range(type_adapters_1, 5892, 18, 191, 191)).
code(type_adapters_1_code70, variable_declaration_fragment, type_adapters_1_code65, (fragments, 0), range(type_adapters_1, 5911, 73, 191, 192)).
code(type_adapters_1_code71, field_declaration, type_adapters_1_code2, (body_declarations, 8), range(type_adapters_1, 5989, 541, 194, 212)).
code(type_adapters_1_code72, modifier, type_adapters_1_code71, (modifiers, 0), range(type_adapters_1, 5989, 6, 194, 194)).
code(type_adapters_1_code73, modifier, type_adapters_1_code71, (modifiers, 1), range(type_adapters_1, 5996, 6, 194, 194)).
code(type_adapters_1_code74, modifier, type_adapters_1_code71, (modifiers, 2), range(type_adapters_1, 6003, 5, 194, 194)).
code(type_adapters_1_code76, simple_type, type_adapters_1_code75, type, range(type_adapters_1, 6009, 11, 194, 194)).
code(type_adapters_1_code75, parameterized_type, type_adapters_1_code71, type, range(type_adapters_1, 6009, 19, 194, 194)).
code(type_adapters_1_code77, simple_type, type_adapters_1_code75, (type_arguments, 0), range(type_adapters_1, 6021, 6, 194, 194)).
code(type_adapters_1_code78, variable_declaration_fragment, type_adapters_1_code71, (fragments, 0), range(type_adapters_1, 6029, 500, 194, 212)).
code(type_adapters_1_code80, simple_type, type_adapters_1_code79, type, range(type_adapters_1, 6040, 11, 194, 194)).
code(type_adapters_1_code79, parameterized_type, type_adapters_1_expr10, type, range(type_adapters_1, 6040, 19, 194, 194)).
code(type_adapters_1_code81, simple_type, type_adapters_1_code79, (type_arguments, 0), range(type_adapters_1, 6052, 6, 194, 194)).
code(type_adapters_1_code82, anonymous_class_declaration, type_adapters_1_expr10, anonymous_class_declaration, range(type_adapters_1, 6062, 467, 194, 212)).
code(type_adapters_1_code84, modifier, type_adapters_1_code83, (modifiers, 0), range(type_adapters_1, 6534, 6, 214, 214)).
code(type_adapters_1_code83, field_declaration, type_adapters_1_code2, (body_declarations, 9), range(type_adapters_1, 6534, 101, 214, 215)).
code(type_adapters_1_code85, modifier, type_adapters_1_code83, (modifiers, 1), range(type_adapters_1, 6541, 6, 214, 214)).
code(type_adapters_1_code86, modifier, type_adapters_1_code83, (modifiers, 2), range(type_adapters_1, 6548, 5, 214, 214)).
code(type_adapters_1_code87, simple_type, type_adapters_1_code83, type, range(type_adapters_1, 6554, 18, 214, 214)).
code(type_adapters_1_code88, variable_declaration_fragment, type_adapters_1_code83, (fragments, 0), range(type_adapters_1, 6573, 61, 214, 215)).
code(type_adapters_1_code89, field_declaration, type_adapters_1_code2, (body_declarations, 10), range(type_adapters_1, 6639, 510, 217, 234)).
code(type_adapters_1_code90, modifier, type_adapters_1_code89, (modifiers, 0), range(type_adapters_1, 6639, 6, 217, 217)).
code(type_adapters_1_code91, modifier, type_adapters_1_code89, (modifiers, 1), range(type_adapters_1, 6646, 6, 217, 217)).
code(type_adapters_1_code92, modifier, type_adapters_1_code89, (modifiers, 2), range(type_adapters_1, 6653, 5, 217, 217)).
code(type_adapters_1_code94, simple_type, type_adapters_1_code93, type, range(type_adapters_1, 6659, 11, 217, 217)).
code(type_adapters_1_code93, parameterized_type, type_adapters_1_code89, type, range(type_adapters_1, 6659, 19, 217, 217)).
code(type_adapters_1_code95, simple_type, type_adapters_1_code93, (type_arguments, 0), range(type_adapters_1, 6671, 6, 217, 217)).
code(type_adapters_1_code96, variable_declaration_fragment, type_adapters_1_code89, (fragments, 0), range(type_adapters_1, 6679, 469, 217, 234)).
code(type_adapters_1_code97, parameterized_type, type_adapters_1_expr12, type, range(type_adapters_1, 6691, 19, 217, 217)).
code(type_adapters_1_code98, simple_type, type_adapters_1_code97, type, range(type_adapters_1, 6691, 11, 217, 217)).
code(type_adapters_1_code99, simple_type, type_adapters_1_code97, (type_arguments, 0), range(type_adapters_1, 6703, 6, 217, 217)).
code(type_adapters_1_code100, anonymous_class_declaration, type_adapters_1_expr12, anonymous_class_declaration, range(type_adapters_1, 6713, 435, 217, 234)).
code(type_adapters_1_code101, field_declaration, type_adapters_1_code2, (body_declarations, 11), range(type_adapters_1, 7153, 105, 236, 237)).
code(type_adapters_1_code102, modifier, type_adapters_1_code101, (modifiers, 0), range(type_adapters_1, 7153, 6, 236, 236)).
code(type_adapters_1_code103, modifier, type_adapters_1_code101, (modifiers, 1), range(type_adapters_1, 7160, 6, 236, 236)).
code(type_adapters_1_code104, modifier, type_adapters_1_code101, (modifiers, 2), range(type_adapters_1, 7167, 5, 236, 236)).
code(type_adapters_1_code105, simple_type, type_adapters_1_code101, type, range(type_adapters_1, 7173, 18, 236, 236)).
code(type_adapters_1_code106, variable_declaration_fragment, type_adapters_1_code101, (fragments, 0), range(type_adapters_1, 7192, 65, 236, 237)).
code(type_adapters_1_code108, modifier, type_adapters_1_code107, (modifiers, 0), range(type_adapters_1, 7262, 6, 239, 239)).
code(type_adapters_1_code107, field_declaration, type_adapters_1_code2, (body_declarations, 12), range(type_adapters_1, 7262, 504, 239, 256)).
code(type_adapters_1_code109, modifier, type_adapters_1_code107, (modifiers, 1), range(type_adapters_1, 7269, 6, 239, 239)).
code(type_adapters_1_code110, modifier, type_adapters_1_code107, (modifiers, 2), range(type_adapters_1, 7276, 5, 239, 239)).
code(type_adapters_1_code112, simple_type, type_adapters_1_code111, type, range(type_adapters_1, 7282, 11, 239, 239)).
code(type_adapters_1_code111, parameterized_type, type_adapters_1_code107, type, range(type_adapters_1, 7282, 19, 239, 239)).
code(type_adapters_1_code113, simple_type, type_adapters_1_code111, (type_arguments, 0), range(type_adapters_1, 7294, 6, 239, 239)).
code(type_adapters_1_code114, variable_declaration_fragment, type_adapters_1_code107, (fragments, 0), range(type_adapters_1, 7302, 463, 239, 256)).
code(type_adapters_1_code115, parameterized_type, type_adapters_1_expr14, type, range(type_adapters_1, 7316, 19, 239, 239)).
code(type_adapters_1_code116, simple_type, type_adapters_1_code115, type, range(type_adapters_1, 7316, 11, 239, 239)).
code(type_adapters_1_code117, simple_type, type_adapters_1_code115, (type_arguments, 0), range(type_adapters_1, 7328, 6, 239, 239)).
code(type_adapters_1_code118, anonymous_class_declaration, type_adapters_1_expr14, anonymous_class_declaration, range(type_adapters_1, 7338, 427, 239, 256)).
code(type_adapters_1_code119, field_declaration, type_adapters_1_code2, (body_declarations, 13), range(type_adapters_1, 7769, 109, 257, 258)).
code(type_adapters_1_code120, modifier, type_adapters_1_code119, (modifiers, 0), range(type_adapters_1, 7769, 6, 257, 257)).
code(type_adapters_1_code121, modifier, type_adapters_1_code119, (modifiers, 1), range(type_adapters_1, 7776, 6, 257, 257)).
code(type_adapters_1_code122, modifier, type_adapters_1_code119, (modifiers, 2), range(type_adapters_1, 7783, 5, 257, 257)).
code(type_adapters_1_code123, simple_type, type_adapters_1_code119, type, range(type_adapters_1, 7789, 18, 257, 257)).
code(type_adapters_1_code124, variable_declaration_fragment, type_adapters_1_code119, (fragments, 0), range(type_adapters_1, 7808, 69, 257, 258)).
code(type_adapters_1_code126, modifier, type_adapters_1_code125, (modifiers, 0), range(type_adapters_1, 7882, 6, 260, 260)).
code(type_adapters_1_code125, field_declaration, type_adapters_1_code2, (body_declarations, 14), range(type_adapters_1, 7882, 474, 260, 271)).
code(type_adapters_1_code127, modifier, type_adapters_1_code125, (modifiers, 1), range(type_adapters_1, 7889, 6, 260, 260)).
code(type_adapters_1_code128, modifier, type_adapters_1_code125, (modifiers, 2), range(type_adapters_1, 7896, 5, 260, 260)).
code(type_adapters_1_code130, simple_type, type_adapters_1_code129, type, range(type_adapters_1, 7902, 11, 260, 260)).
code(type_adapters_1_code129, parameterized_type, type_adapters_1_code125, type, range(type_adapters_1, 7902, 26, 260, 260)).
code(type_adapters_1_code131, simple_type, type_adapters_1_code129, (type_arguments, 0), range(type_adapters_1, 7914, 13, 260, 260)).
code(type_adapters_1_code132, variable_declaration_fragment, type_adapters_1_code125, (fragments, 0), range(type_adapters_1, 7929, 426, 260, 271)).
code(type_adapters_1_code134, simple_type, type_adapters_1_code133, type, range(type_adapters_1, 7950, 11, 260, 260)).
code(type_adapters_1_code133, parameterized_type, type_adapters_1_expr17, type, range(type_adapters_1, 7950, 26, 260, 260)).
code(type_adapters_1_code135, simple_type, type_adapters_1_code133, (type_arguments, 0), range(type_adapters_1, 7962, 13, 260, 260)).
code(type_adapters_1_code136, anonymous_class_declaration, type_adapters_1_expr17, anonymous_class_declaration, range(type_adapters_1, 7979, 365, 260, 271)).
code(type_adapters_1_code137, field_declaration, type_adapters_1_code2, (body_declarations, 15), range(type_adapters_1, 8359, 131, 272, 273)).
code(type_adapters_1_code138, modifier, type_adapters_1_code137, (modifiers, 0), range(type_adapters_1, 8359, 6, 272, 272)).
code(type_adapters_1_code139, modifier, type_adapters_1_code137, (modifiers, 1), range(type_adapters_1, 8366, 6, 272, 272)).
code(type_adapters_1_code140, modifier, type_adapters_1_code137, (modifiers, 2), range(type_adapters_1, 8373, 5, 272, 272)).
code(type_adapters_1_code141, simple_type, type_adapters_1_code137, type, range(type_adapters_1, 8379, 18, 272, 272)).
code(type_adapters_1_code142, variable_declaration_fragment, type_adapters_1_code137, (fragments, 0), range(type_adapters_1, 8398, 91, 272, 273)).
code(type_adapters_1_code143, field_declaration, type_adapters_1_code2, (body_declarations, 16), range(type_adapters_1, 8494, 372, 275, 282)).
code(type_adapters_1_code144, modifier, type_adapters_1_code143, (modifiers, 0), range(type_adapters_1, 8494, 6, 275, 275)).
code(type_adapters_1_code145, modifier, type_adapters_1_code143, (modifiers, 1), range(type_adapters_1, 8501, 6, 275, 275)).
code(type_adapters_1_code146, modifier, type_adapters_1_code143, (modifiers, 2), range(type_adapters_1, 8508, 5, 275, 275)).
code(type_adapters_1_code147, parameterized_type, type_adapters_1_code143, type, range(type_adapters_1, 8514, 26, 275, 275)).
code(type_adapters_1_code148, simple_type, type_adapters_1_code147, type, range(type_adapters_1, 8514, 11, 275, 275)).
code(type_adapters_1_code149, simple_type, type_adapters_1_code147, (type_arguments, 0), range(type_adapters_1, 8526, 13, 275, 275)).
code(type_adapters_1_code150, variable_declaration_fragment, type_adapters_1_code143, (fragments, 0), range(type_adapters_1, 8541, 324, 275, 282)).
code(type_adapters_1_code151, parameterized_type, type_adapters_1_expr20, type, range(type_adapters_1, 8562, 26, 275, 275)).
code(type_adapters_1_code152, simple_type, type_adapters_1_code151, type, range(type_adapters_1, 8562, 11, 275, 275)).
code(type_adapters_1_code153, simple_type, type_adapters_1_code151, (type_arguments, 0), range(type_adapters_1, 8574, 13, 275, 275)).
code(type_adapters_1_code154, anonymous_class_declaration, type_adapters_1_expr20, anonymous_class_declaration, range(type_adapters_1, 8591, 263, 275, 282)).
code(type_adapters_1_code155, field_declaration, type_adapters_1_code2, (body_declarations, 17), range(type_adapters_1, 8869, 131, 283, 284)).
code(type_adapters_1_code156, modifier, type_adapters_1_code155, (modifiers, 0), range(type_adapters_1, 8869, 6, 283, 283)).
code(type_adapters_1_code157, modifier, type_adapters_1_code155, (modifiers, 1), range(type_adapters_1, 8876, 6, 283, 283)).
code(type_adapters_1_code158, modifier, type_adapters_1_code155, (modifiers, 2), range(type_adapters_1, 8883, 5, 283, 283)).
code(type_adapters_1_code159, simple_type, type_adapters_1_code155, type, range(type_adapters_1, 8889, 18, 283, 283)).
code(type_adapters_1_code160, variable_declaration_fragment, type_adapters_1_code155, (fragments, 0), range(type_adapters_1, 8908, 91, 283, 284)).
code(type_adapters_1_code161, field_declaration, type_adapters_1_code2, (body_declarations, 18), range(type_adapters_1, 9004, 1019, 286, 313)).
code(type_adapters_1_code162, modifier, type_adapters_1_code161, (modifiers, 0), range(type_adapters_1, 9004, 6, 286, 286)).
code(type_adapters_1_code163, modifier, type_adapters_1_code161, (modifiers, 1), range(type_adapters_1, 9011, 6, 286, 286)).
code(type_adapters_1_code164, modifier, type_adapters_1_code161, (modifiers, 2), range(type_adapters_1, 9018, 5, 286, 286)).
code(type_adapters_1_code165, parameterized_type, type_adapters_1_code161, type, range(type_adapters_1, 9024, 31, 286, 286)).
code(type_adapters_1_code166, simple_type, type_adapters_1_code165, type, range(type_adapters_1, 9024, 11, 286, 286)).
code(type_adapters_1_code167, simple_type, type_adapters_1_code165, (type_arguments, 0), range(type_adapters_1, 9036, 18, 286, 286)).
code(type_adapters_1_code168, variable_declaration_fragment, type_adapters_1_code161, (fragments, 0), range(type_adapters_1, 9056, 966, 286, 313)).
code(type_adapters_1_code170, simple_type, type_adapters_1_code169, type, range(type_adapters_1, 9083, 11, 286, 286)).
code(type_adapters_1_code169, parameterized_type, type_adapters_1_expr23, type, range(type_adapters_1, 9083, 31, 286, 286)).
code(type_adapters_1_code171, simple_type, type_adapters_1_code169, (type_arguments, 0), range(type_adapters_1, 9095, 18, 286, 286)).
code(type_adapters_1_code172, anonymous_class_declaration, type_adapters_1_expr23, anonymous_class_declaration, range(type_adapters_1, 9117, 894, 286, 313)).
code(type_adapters_1_code173, field_declaration, type_adapters_1_code2, (body_declarations, 19), range(type_adapters_1, 10026, 148, 314, 315)).
code(type_adapters_1_code174, modifier, type_adapters_1_code173, (modifiers, 0), range(type_adapters_1, 10026, 6, 314, 314)).
code(type_adapters_1_code175, modifier, type_adapters_1_code173, (modifiers, 1), range(type_adapters_1, 10033, 6, 314, 314)).
code(type_adapters_1_code176, modifier, type_adapters_1_code173, (modifiers, 2), range(type_adapters_1, 10040, 5, 314, 314)).
code(type_adapters_1_code177, simple_type, type_adapters_1_code173, type, range(type_adapters_1, 10046, 18, 314, 314)).
code(type_adapters_1_code178, variable_declaration_fragment, type_adapters_1_code173, (fragments, 0), range(type_adapters_1, 10065, 108, 314, 315)).
code(type_adapters_1_code179, field_declaration, type_adapters_1_code2, (body_declarations, 20), range(type_adapters_1, 10178, 502, 317, 334)).
code(type_adapters_1_code180, modifier, type_adapters_1_code179, (modifiers, 0), range(type_adapters_1, 10178, 6, 317, 317)).
code(type_adapters_1_code181, modifier, type_adapters_1_code179, (modifiers, 1), range(type_adapters_1, 10185, 6, 317, 317)).
code(type_adapters_1_code182, modifier, type_adapters_1_code179, (modifiers, 2), range(type_adapters_1, 10192, 5, 317, 317)).
code(type_adapters_1_code184, simple_type, type_adapters_1_code183, type, range(type_adapters_1, 10198, 11, 317, 317)).
code(type_adapters_1_code183, parameterized_type, type_adapters_1_code179, type, range(type_adapters_1, 10198, 19, 317, 317)).
code(type_adapters_1_code185, simple_type, type_adapters_1_code183, (type_arguments, 0), range(type_adapters_1, 10210, 6, 317, 317)).
code(type_adapters_1_code186, variable_declaration_fragment, type_adapters_1_code179, (fragments, 0), range(type_adapters_1, 10218, 461, 317, 334)).
code(type_adapters_1_code187, parameterized_type, type_adapters_1_expr25, type, range(type_adapters_1, 10229, 19, 317, 317)).
code(type_adapters_1_code188, simple_type, type_adapters_1_code187, type, range(type_adapters_1, 10229, 11, 317, 317)).
code(type_adapters_1_code189, simple_type, type_adapters_1_code187, (type_arguments, 0), range(type_adapters_1, 10241, 6, 317, 317)).
code(type_adapters_1_code190, anonymous_class_declaration, type_adapters_1_expr25, anonymous_class_declaration, range(type_adapters_1, 10251, 428, 317, 334)).
code(type_adapters_1_code192, modifier, type_adapters_1_code191, (modifiers, 0), range(type_adapters_1, 10684, 6, 336, 336)).
code(type_adapters_1_code191, field_declaration, type_adapters_1_code2, (body_declarations, 21), range(type_adapters_1, 10684, 407, 336, 349)).
code(type_adapters_1_code193, modifier, type_adapters_1_code191, (modifiers, 1), range(type_adapters_1, 10691, 6, 336, 336)).
code(type_adapters_1_code194, modifier, type_adapters_1_code191, (modifiers, 2), range(type_adapters_1, 10698, 5, 336, 336)).
code(type_adapters_1_code195, parameterized_type, type_adapters_1_code191, type, range(type_adapters_1, 10704, 19, 336, 336)).
code(type_adapters_1_code196, simple_type, type_adapters_1_code195, type, range(type_adapters_1, 10704, 11, 336, 336)).
code(type_adapters_1_code197, simple_type, type_adapters_1_code195, (type_arguments, 0), range(type_adapters_1, 10716, 6, 336, 336)).
code(type_adapters_1_code198, variable_declaration_fragment, type_adapters_1_code191, (fragments, 0), range(type_adapters_1, 10724, 366, 336, 349)).
code(type_adapters_1_code199, parameterized_type, type_adapters_1_expr26, type, range(type_adapters_1, 10736, 19, 336, 336)).
code(type_adapters_1_code200, simple_type, type_adapters_1_code199, type, range(type_adapters_1, 10736, 11, 336, 336)).
code(type_adapters_1_code201, simple_type, type_adapters_1_code199, (type_arguments, 0), range(type_adapters_1, 10748, 6, 336, 336)).
code(type_adapters_1_code202, anonymous_class_declaration, type_adapters_1_expr26, anonymous_class_declaration, range(type_adapters_1, 10758, 332, 336, 349)).
code(type_adapters_1_code203, field_declaration, type_adapters_1_code2, (body_declarations, 22), range(type_adapters_1, 11095, 400, 351, 364)).
code(type_adapters_1_code204, modifier, type_adapters_1_code203, (modifiers, 0), range(type_adapters_1, 11095, 6, 351, 351)).
code(type_adapters_1_code205, modifier, type_adapters_1_code203, (modifiers, 1), range(type_adapters_1, 11102, 6, 351, 351)).
code(type_adapters_1_code206, modifier, type_adapters_1_code203, (modifiers, 2), range(type_adapters_1, 11109, 5, 351, 351)).
code(type_adapters_1_code207, parameterized_type, type_adapters_1_code203, type, range(type_adapters_1, 11115, 19, 351, 351)).
code(type_adapters_1_code208, simple_type, type_adapters_1_code207, type, range(type_adapters_1, 11115, 11, 351, 351)).
code(type_adapters_1_code209, simple_type, type_adapters_1_code207, (type_arguments, 0), range(type_adapters_1, 11127, 6, 351, 351)).
code(type_adapters_1_code210, variable_declaration_fragment, type_adapters_1_code203, (fragments, 0), range(type_adapters_1, 11135, 359, 351, 364)).
code(type_adapters_1_code212, simple_type, type_adapters_1_code211, type, range(type_adapters_1, 11148, 11, 351, 351)).
code(type_adapters_1_code211, parameterized_type, type_adapters_1_expr27, type, range(type_adapters_1, 11148, 19, 351, 351)).
code(type_adapters_1_code213, simple_type, type_adapters_1_code211, (type_arguments, 0), range(type_adapters_1, 11160, 6, 351, 351)).
code(type_adapters_1_code214, anonymous_class_declaration, type_adapters_1_expr27, anonymous_class_declaration, range(type_adapters_1, 11170, 324, 351, 364)).
code(type_adapters_1_code216, modifier, type_adapters_1_code215, (modifiers, 0), range(type_adapters_1, 11499, 6, 366, 366)).
code(type_adapters_1_code215, field_declaration, type_adapters_1_code2, (body_declarations, 23), range(type_adapters_1, 11499, 580, 366, 384)).
code(type_adapters_1_code217, modifier, type_adapters_1_code215, (modifiers, 1), range(type_adapters_1, 11506, 6, 366, 366)).
code(type_adapters_1_code218, modifier, type_adapters_1_code215, (modifiers, 2), range(type_adapters_1, 11513, 5, 366, 366)).
code(type_adapters_1_code219, parameterized_type, type_adapters_1_code215, type, range(type_adapters_1, 11519, 19, 366, 366)).
code(type_adapters_1_code220, simple_type, type_adapters_1_code219, type, range(type_adapters_1, 11519, 11, 366, 366)).
code(type_adapters_1_code221, simple_type, type_adapters_1_code219, (type_arguments, 0), range(type_adapters_1, 11531, 6, 366, 366)).
code(type_adapters_1_code222, variable_declaration_fragment, type_adapters_1_code215, (fragments, 0), range(type_adapters_1, 11539, 539, 366, 384)).
code(type_adapters_1_code223, parameterized_type, type_adapters_1_expr28, type, range(type_adapters_1, 11552, 19, 366, 366)).
code(type_adapters_1_code224, simple_type, type_adapters_1_code223, type, range(type_adapters_1, 11552, 11, 366, 366)).
code(type_adapters_1_code225, simple_type, type_adapters_1_code223, (type_arguments, 0), range(type_adapters_1, 11564, 6, 366, 366)).
code(type_adapters_1_code226, anonymous_class_declaration, type_adapters_1_expr28, anonymous_class_declaration, range(type_adapters_1, 11574, 504, 366, 384)).
code(type_adapters_1_code227, field_declaration, type_adapters_1_code2, (body_declarations, 24), range(type_adapters_1, 12083, 89, 386, 386)).
code(type_adapters_1_code228, modifier, type_adapters_1_code227, (modifiers, 0), range(type_adapters_1, 12083, 6, 386, 386)).
code(type_adapters_1_code229, modifier, type_adapters_1_code227, (modifiers, 1), range(type_adapters_1, 12090, 6, 386, 386)).
code(type_adapters_1_code230, modifier, type_adapters_1_code227, (modifiers, 2), range(type_adapters_1, 12097, 5, 386, 386)).
code(type_adapters_1_code231, simple_type, type_adapters_1_code227, type, range(type_adapters_1, 12103, 18, 386, 386)).
code(type_adapters_1_code232, variable_declaration_fragment, type_adapters_1_code227, (fragments, 0), range(type_adapters_1, 12122, 49, 386, 386)).
code(type_adapters_1_code233, simple_type, type_adapters_1_expr30, type, range(type_adapters_1, 12150, 6, 386, 386)).
code(type_adapters_1_code234, field_declaration, type_adapters_1_code2, (body_declarations, 25), range(type_adapters_1, 12176, 602, 388, 405)).
code(type_adapters_1_code235, modifier, type_adapters_1_code234, (modifiers, 0), range(type_adapters_1, 12176, 6, 388, 388)).
code(type_adapters_1_code236, modifier, type_adapters_1_code234, (modifiers, 1), range(type_adapters_1, 12183, 6, 388, 388)).
code(type_adapters_1_code237, modifier, type_adapters_1_code234, (modifiers, 2), range(type_adapters_1, 12190, 5, 388, 388)).
code(type_adapters_1_code238, parameterized_type, type_adapters_1_code234, type, range(type_adapters_1, 12196, 22, 388, 388)).
code(type_adapters_1_code239, simple_type, type_adapters_1_code238, type, range(type_adapters_1, 12196, 11, 388, 388)).
code(type_adapters_1_code240, simple_type, type_adapters_1_code238, (type_arguments, 0), range(type_adapters_1, 12208, 9, 388, 388)).
code(type_adapters_1_code241, variable_declaration_fragment, type_adapters_1_code234, (fragments, 0), range(type_adapters_1, 12219, 558, 388, 405)).
code(type_adapters_1_code243, simple_type, type_adapters_1_code242, type, range(type_adapters_1, 12235, 11, 388, 388)).
code(type_adapters_1_code242, parameterized_type, type_adapters_1_expr31, type, range(type_adapters_1, 12235, 22, 388, 388)).
code(type_adapters_1_code244, simple_type, type_adapters_1_code242, (type_arguments, 0), range(type_adapters_1, 12247, 9, 388, 388)).
code(type_adapters_1_code245, anonymous_class_declaration, type_adapters_1_expr31, anonymous_class_declaration, range(type_adapters_1, 12260, 517, 388, 405)).
code(type_adapters_1_code246, field_declaration, type_adapters_1_code2, (body_declarations, 26), range(type_adapters_1, 12782, 116, 407, 408)).
code(type_adapters_1_code247, modifier, type_adapters_1_code246, (modifiers, 0), range(type_adapters_1, 12782, 6, 407, 407)).
code(type_adapters_1_code248, modifier, type_adapters_1_code246, (modifiers, 1), range(type_adapters_1, 12789, 6, 407, 407)).
code(type_adapters_1_code249, modifier, type_adapters_1_code246, (modifiers, 2), range(type_adapters_1, 12796, 5, 407, 407)).
code(type_adapters_1_code250, simple_type, type_adapters_1_code246, type, range(type_adapters_1, 12802, 18, 407, 407)).
code(type_adapters_1_code251, variable_declaration_fragment, type_adapters_1_code246, (fragments, 0), range(type_adapters_1, 12821, 76, 407, 408)).
code(type_adapters_1_code252, field_declaration, type_adapters_1_code2, (body_declarations, 27), range(type_adapters_1, 12902, 594, 410, 428)).
code(type_adapters_1_code253, modifier, type_adapters_1_code252, (modifiers, 0), range(type_adapters_1, 12902, 6, 410, 410)).
code(type_adapters_1_code254, modifier, type_adapters_1_code252, (modifiers, 1), range(type_adapters_1, 12909, 6, 410, 410)).
code(type_adapters_1_code255, modifier, type_adapters_1_code252, (modifiers, 2), range(type_adapters_1, 12916, 5, 410, 410)).
code(type_adapters_1_code256, parameterized_type, type_adapters_1_code252, type, range(type_adapters_1, 12922, 19, 410, 410)).
code(type_adapters_1_code257, simple_type, type_adapters_1_code256, type, range(type_adapters_1, 12922, 11, 410, 410)).
code(type_adapters_1_code258, simple_type, type_adapters_1_code256, (type_arguments, 0), range(type_adapters_1, 12934, 6, 410, 410)).
code(type_adapters_1_code259, variable_declaration_fragment, type_adapters_1_code252, (fragments, 0), range(type_adapters_1, 12942, 553, 410, 428)).
code(type_adapters_1_code260, parameterized_type, type_adapters_1_expr33, type, range(type_adapters_1, 12955, 19, 410, 410)).
code(type_adapters_1_code261, simple_type, type_adapters_1_code260, type, range(type_adapters_1, 12955, 11, 410, 410)).
code(type_adapters_1_code262, simple_type, type_adapters_1_code260, (type_arguments, 0), range(type_adapters_1, 12967, 6, 410, 410)).
code(type_adapters_1_code263, anonymous_class_declaration, type_adapters_1_expr33, anonymous_class_declaration, range(type_adapters_1, 12977, 518, 410, 428)).
code(type_adapters_1_code264, field_declaration, type_adapters_1_code2, (body_declarations, 28), range(type_adapters_1, 13502, 536, 430, 446)).
code(type_adapters_1_code265, modifier, type_adapters_1_code264, (modifiers, 0), range(type_adapters_1, 13502, 6, 430, 430)).
code(type_adapters_1_code266, modifier, type_adapters_1_code264, (modifiers, 1), range(type_adapters_1, 13509, 6, 430, 430)).
code(type_adapters_1_code267, modifier, type_adapters_1_code264, (modifiers, 2), range(type_adapters_1, 13516, 5, 430, 430)).
code(type_adapters_1_code269, simple_type, type_adapters_1_code268, type, range(type_adapters_1, 13522, 11, 430, 430)).
code(type_adapters_1_code268, parameterized_type, type_adapters_1_code264, type, range(type_adapters_1, 13522, 23, 430, 430)).
code(type_adapters_1_code270, simple_type, type_adapters_1_code268, (type_arguments, 0), range(type_adapters_1, 13534, 10, 430, 430)).
code(type_adapters_1_code271, variable_declaration_fragment, type_adapters_1_code264, (fragments, 0), range(type_adapters_1, 13546, 491, 430, 446)).
code(type_adapters_1_code273, simple_type, type_adapters_1_code272, type, range(type_adapters_1, 13564, 11, 430, 430)).
code(type_adapters_1_code272, parameterized_type, type_adapters_1_expr34, type, range(type_adapters_1, 13564, 23, 430, 430)).
code(type_adapters_1_code274, simple_type, type_adapters_1_code272, (type_arguments, 0), range(type_adapters_1, 13576, 10, 430, 430)).
code(type_adapters_1_code275, anonymous_class_declaration, type_adapters_1_expr34, anonymous_class_declaration, range(type_adapters_1, 13590, 447, 430, 446)).
code(type_adapters_1_code276, field_declaration, type_adapters_1_code2, (body_declarations, 29), range(type_adapters_1, 14044, 536, 448, 464)).
code(type_adapters_1_code277, modifier, type_adapters_1_code276, (modifiers, 0), range(type_adapters_1, 14044, 6, 448, 448)).
code(type_adapters_1_code278, modifier, type_adapters_1_code276, (modifiers, 1), range(type_adapters_1, 14051, 6, 448, 448)).
code(type_adapters_1_code279, modifier, type_adapters_1_code276, (modifiers, 2), range(type_adapters_1, 14058, 5, 448, 448)).
code(type_adapters_1_code281, simple_type, type_adapters_1_code280, type, range(type_adapters_1, 14064, 11, 448, 448)).
code(type_adapters_1_code280, parameterized_type, type_adapters_1_code276, type, range(type_adapters_1, 14064, 23, 448, 448)).
code(type_adapters_1_code282, simple_type, type_adapters_1_code280, (type_arguments, 0), range(type_adapters_1, 14076, 10, 448, 448)).
code(type_adapters_1_code283, variable_declaration_fragment, type_adapters_1_code276, (fragments, 0), range(type_adapters_1, 14088, 491, 448, 464)).
code(type_adapters_1_code285, simple_type, type_adapters_1_code284, type, range(type_adapters_1, 14106, 11, 448, 448)).
code(type_adapters_1_code284, parameterized_type, type_adapters_1_expr35, type, range(type_adapters_1, 14106, 23, 448, 448)).
code(type_adapters_1_code286, simple_type, type_adapters_1_code284, (type_arguments, 0), range(type_adapters_1, 14118, 10, 448, 448)).
code(type_adapters_1_code287, anonymous_class_declaration, type_adapters_1_expr35, anonymous_class_declaration, range(type_adapters_1, 14132, 447, 448, 464)).
code(type_adapters_1_code288, field_declaration, type_adapters_1_code2, (body_declarations, 30), range(type_adapters_1, 14584, 89, 466, 466)).
code(type_adapters_1_code289, modifier, type_adapters_1_code288, (modifiers, 0), range(type_adapters_1, 14584, 6, 466, 466)).
code(type_adapters_1_code290, modifier, type_adapters_1_code288, (modifiers, 1), range(type_adapters_1, 14591, 6, 466, 466)).
code(type_adapters_1_code291, modifier, type_adapters_1_code288, (modifiers, 2), range(type_adapters_1, 14598, 5, 466, 466)).
code(type_adapters_1_code292, simple_type, type_adapters_1_code288, type, range(type_adapters_1, 14604, 18, 466, 466)).
code(type_adapters_1_code293, variable_declaration_fragment, type_adapters_1_code288, (fragments, 0), range(type_adapters_1, 14623, 49, 466, 466)).
code(type_adapters_1_code294, simple_type, type_adapters_1_expr37, type, range(type_adapters_1, 14651, 6, 466, 466)).
code(type_adapters_1_code296, modifier, type_adapters_1_code295, (modifiers, 0), range(type_adapters_1, 14677, 6, 468, 468)).
code(type_adapters_1_code295, field_declaration, type_adapters_1_code2, (body_declarations, 31), range(type_adapters_1, 14677, 489, 468, 481)).
code(type_adapters_1_code297, modifier, type_adapters_1_code295, (modifiers, 1), range(type_adapters_1, 14684, 6, 468, 468)).
code(type_adapters_1_code298, modifier, type_adapters_1_code295, (modifiers, 2), range(type_adapters_1, 14691, 5, 468, 468)).
code(type_adapters_1_code299, parameterized_type, type_adapters_1_code295, type, range(type_adapters_1, 14697, 26, 468, 468)).
code(type_adapters_1_code300, simple_type, type_adapters_1_code299, type, range(type_adapters_1, 14697, 11, 468, 468)).
code(type_adapters_1_code301, simple_type, type_adapters_1_code299, (type_arguments, 0), range(type_adapters_1, 14709, 13, 468, 468)).
code(type_adapters_1_code302, variable_declaration_fragment, type_adapters_1_code295, (fragments, 0), range(type_adapters_1, 14724, 441, 468, 481)).
code(type_adapters_1_code303, parameterized_type, type_adapters_1_expr38, type, range(type_adapters_1, 14745, 26, 468, 468)).
code(type_adapters_1_code304, simple_type, type_adapters_1_code303, type, range(type_adapters_1, 14745, 11, 468, 468)).
code(type_adapters_1_code305, simple_type, type_adapters_1_code303, (type_arguments, 0), range(type_adapters_1, 14757, 13, 468, 468)).
code(type_adapters_1_code306, anonymous_class_declaration, type_adapters_1_expr38, anonymous_class_declaration, range(type_adapters_1, 14774, 391, 468, 481)).
code(type_adapters_1_code308, modifier, type_adapters_1_code307, (modifiers, 0), range(type_adapters_1, 15170, 6, 483, 483)).
code(type_adapters_1_code307, field_declaration, type_adapters_1_code2, (body_declarations, 32), range(type_adapters_1, 15170, 116, 483, 484)).
code(type_adapters_1_code309, modifier, type_adapters_1_code307, (modifiers, 1), range(type_adapters_1, 15177, 6, 483, 483)).
code(type_adapters_1_code310, modifier, type_adapters_1_code307, (modifiers, 2), range(type_adapters_1, 15184, 5, 483, 483)).
code(type_adapters_1_code311, simple_type, type_adapters_1_code307, type, range(type_adapters_1, 15190, 18, 483, 483)).
code(type_adapters_1_code312, variable_declaration_fragment, type_adapters_1_code307, (fragments, 0), range(type_adapters_1, 15209, 76, 483, 484)).
code(type_adapters_1_code314, modifier, type_adapters_1_code313, (modifiers, 0), range(type_adapters_1, 15290, 6, 486, 486)).
code(type_adapters_1_code313, field_declaration, type_adapters_1_code2, (body_declarations, 33), range(type_adapters_1, 15290, 483, 486, 499)).
code(type_adapters_1_code315, modifier, type_adapters_1_code313, (modifiers, 1), range(type_adapters_1, 15297, 6, 486, 486)).
code(type_adapters_1_code316, modifier, type_adapters_1_code313, (modifiers, 2), range(type_adapters_1, 15304, 5, 486, 486)).
code(type_adapters_1_code318, simple_type, type_adapters_1_code317, type, range(type_adapters_1, 15310, 11, 486, 486)).
code(type_adapters_1_code317, parameterized_type, type_adapters_1_code313, type, range(type_adapters_1, 15310, 25, 486, 486)).
code(type_adapters_1_code319, simple_type, type_adapters_1_code317, (type_arguments, 0), range(type_adapters_1, 15322, 12, 486, 486)).
code(type_adapters_1_code320, variable_declaration_fragment, type_adapters_1_code313, (fragments, 0), range(type_adapters_1, 15336, 436, 486, 499)).
code(type_adapters_1_code322, simple_type, type_adapters_1_code321, type, range(type_adapters_1, 15356, 11, 486, 486)).
code(type_adapters_1_code321, parameterized_type, type_adapters_1_expr40, type, range(type_adapters_1, 15356, 25, 486, 486)).
code(type_adapters_1_code323, simple_type, type_adapters_1_code321, (type_arguments, 0), range(type_adapters_1, 15368, 12, 486, 486)).
code(type_adapters_1_code324, anonymous_class_declaration, type_adapters_1_expr40, anonymous_class_declaration, range(type_adapters_1, 15384, 388, 486, 499)).
code(type_adapters_1_code326, modifier, type_adapters_1_code325, (modifiers, 0), range(type_adapters_1, 15777, 6, 501, 501)).
code(type_adapters_1_code325, field_declaration, type_adapters_1_code2, (body_declarations, 34), range(type_adapters_1, 15777, 113, 501, 502)).
code(type_adapters_1_code327, modifier, type_adapters_1_code325, (modifiers, 1), range(type_adapters_1, 15784, 6, 501, 501)).
code(type_adapters_1_code328, modifier, type_adapters_1_code325, (modifiers, 2), range(type_adapters_1, 15791, 5, 501, 501)).
code(type_adapters_1_code329, simple_type, type_adapters_1_code325, type, range(type_adapters_1, 15797, 18, 501, 501)).
code(type_adapters_1_code330, variable_declaration_fragment, type_adapters_1_code325, (fragments, 0), range(type_adapters_1, 15816, 73, 501, 502)).
code(type_adapters_1_code331, field_declaration, type_adapters_1_code2, (body_declarations, 35), range(type_adapters_1, 15894, 507, 504, 518)).
code(type_adapters_1_code332, modifier, type_adapters_1_code331, (modifiers, 0), range(type_adapters_1, 15894, 6, 504, 504)).
code(type_adapters_1_code333, modifier, type_adapters_1_code331, (modifiers, 1), range(type_adapters_1, 15901, 6, 504, 504)).
code(type_adapters_1_code334, modifier, type_adapters_1_code331, (modifiers, 2), range(type_adapters_1, 15908, 5, 504, 504)).
code(type_adapters_1_code336, simple_type, type_adapters_1_code335, type, range(type_adapters_1, 15914, 11, 504, 504)).
code(type_adapters_1_code335, parameterized_type, type_adapters_1_code331, type, range(type_adapters_1, 15914, 16, 504, 504)).
code(type_adapters_1_code337, simple_type, type_adapters_1_code335, (type_arguments, 0), range(type_adapters_1, 15926, 3, 504, 504)).
code(type_adapters_1_code338, variable_declaration_fragment, type_adapters_1_code331, (fragments, 0), range(type_adapters_1, 15931, 469, 504, 518)).
code(type_adapters_1_code340, simple_type, type_adapters_1_code339, type, range(type_adapters_1, 15941, 11, 504, 504)).
code(type_adapters_1_code339, parameterized_type, type_adapters_1_expr42, type, range(type_adapters_1, 15941, 16, 504, 504)).
code(type_adapters_1_code341, simple_type, type_adapters_1_code339, (type_arguments, 0), range(type_adapters_1, 15953, 3, 504, 504)).
code(type_adapters_1_code342, anonymous_class_declaration, type_adapters_1_expr42, anonymous_class_declaration, range(type_adapters_1, 15960, 440, 504, 518)).
code(type_adapters_1_code343, field_declaration, type_adapters_1_code2, (body_declarations, 36), range(type_adapters_1, 16405, 80, 520, 520)).
code(type_adapters_1_code344, modifier, type_adapters_1_code343, (modifiers, 0), range(type_adapters_1, 16405, 6, 520, 520)).
code(type_adapters_1_code345, modifier, type_adapters_1_code343, (modifiers, 1), range(type_adapters_1, 16412, 6, 520, 520)).
code(type_adapters_1_code346, modifier, type_adapters_1_code343, (modifiers, 2), range(type_adapters_1, 16419, 5, 520, 520)).
code(type_adapters_1_code347, simple_type, type_adapters_1_code343, type, range(type_adapters_1, 16425, 18, 520, 520)).
code(type_adapters_1_code348, variable_declaration_fragment, type_adapters_1_code343, (fragments, 0), range(type_adapters_1, 16444, 40, 520, 520)).
code(type_adapters_1_code349, simple_type, type_adapters_1_expr44, type, range(type_adapters_1, 16469, 3, 520, 520)).
code(type_adapters_1_code351, modifier, type_adapters_1_code350, (modifiers, 0), range(type_adapters_1, 16489, 6, 522, 522)).
code(type_adapters_1_code350, field_declaration, type_adapters_1_code2, (body_declarations, 37), range(type_adapters_1, 16489, 607, 522, 540)).
code(type_adapters_1_code352, modifier, type_adapters_1_code350, (modifiers, 1), range(type_adapters_1, 16496, 6, 522, 522)).
code(type_adapters_1_code353, modifier, type_adapters_1_code350, (modifiers, 2), range(type_adapters_1, 16503, 5, 522, 522)).
code(type_adapters_1_code355, simple_type, type_adapters_1_code354, type, range(type_adapters_1, 16509, 11, 522, 522)).
code(type_adapters_1_code354, parameterized_type, type_adapters_1_code350, type, range(type_adapters_1, 16509, 16, 522, 522)).
code(type_adapters_1_code356, simple_type, type_adapters_1_code354, (type_arguments, 0), range(type_adapters_1, 16521, 3, 522, 522)).
code(type_adapters_1_code357, variable_declaration_fragment, type_adapters_1_code350, (fragments, 0), range(type_adapters_1, 16526, 569, 522, 540)).
code(type_adapters_1_code358, parameterized_type, type_adapters_1_expr45, type, range(type_adapters_1, 16536, 16, 522, 522)).
code(type_adapters_1_code359, simple_type, type_adapters_1_code358, type, range(type_adapters_1, 16536, 11, 522, 522)).
code(type_adapters_1_code360, simple_type, type_adapters_1_code358, (type_arguments, 0), range(type_adapters_1, 16548, 3, 522, 522)).
code(type_adapters_1_code361, anonymous_class_declaration, type_adapters_1_expr45, anonymous_class_declaration, range(type_adapters_1, 16555, 540, 522, 540)).
code(type_adapters_1_code362, field_declaration, type_adapters_1_code2, (body_declarations, 38), range(type_adapters_1, 17100, 80, 542, 542)).
code(type_adapters_1_code363, modifier, type_adapters_1_code362, (modifiers, 0), range(type_adapters_1, 17100, 6, 542, 542)).
code(type_adapters_1_code364, modifier, type_adapters_1_code362, (modifiers, 1), range(type_adapters_1, 17107, 6, 542, 542)).
code(type_adapters_1_code365, modifier, type_adapters_1_code362, (modifiers, 2), range(type_adapters_1, 17114, 5, 542, 542)).
code(type_adapters_1_code366, simple_type, type_adapters_1_code362, type, range(type_adapters_1, 17120, 18, 542, 542)).
code(type_adapters_1_code367, variable_declaration_fragment, type_adapters_1_code362, (fragments, 0), range(type_adapters_1, 17139, 40, 542, 542)).
code(type_adapters_1_code368, simple_type, type_adapters_1_expr47, type, range(type_adapters_1, 17164, 3, 542, 542)).
code(type_adapters_1_code370, modifier, type_adapters_1_code369, (modifiers, 0), range(type_adapters_1, 17184, 6, 544, 544)).
code(type_adapters_1_code369, field_declaration, type_adapters_1_code2, (body_declarations, 39), range(type_adapters_1, 17184, 577, 544, 558)).
code(type_adapters_1_code371, modifier, type_adapters_1_code369, (modifiers, 1), range(type_adapters_1, 17191, 6, 544, 544)).
code(type_adapters_1_code372, modifier, type_adapters_1_code369, (modifiers, 2), range(type_adapters_1, 17198, 5, 544, 544)).
code(type_adapters_1_code373, parameterized_type, type_adapters_1_code369, type, range(type_adapters_1, 17204, 24, 544, 544)).
code(type_adapters_1_code374, simple_type, type_adapters_1_code373, type, range(type_adapters_1, 17204, 11, 544, 544)).
code(type_adapters_1_code375, simple_type, type_adapters_1_code373, (type_arguments, 0), range(type_adapters_1, 17216, 11, 544, 544)).
code(type_adapters_1_code376, variable_declaration_fragment, type_adapters_1_code369, (fragments, 0), range(type_adapters_1, 17229, 531, 544, 558)).
code(type_adapters_1_code378, simple_type, type_adapters_1_code377, type, range(type_adapters_1, 17248, 11, 544, 544)).
code(type_adapters_1_code377, parameterized_type, type_adapters_1_expr48, type, range(type_adapters_1, 17248, 24, 544, 544)).
code(type_adapters_1_code379, simple_type, type_adapters_1_code377, (type_arguments, 0), range(type_adapters_1, 17260, 11, 544, 544)).
code(type_adapters_1_code380, anonymous_class_declaration, type_adapters_1_expr48, anonymous_class_declaration, range(type_adapters_1, 17275, 485, 544, 558)).
code(type_adapters_1_code381, field_declaration, type_adapters_1_code2, (body_declarations, 40), range(type_adapters_1, 17765, 123, 560, 561)).
code(type_adapters_1_code382, modifier, type_adapters_1_code381, (modifiers, 0), range(type_adapters_1, 17765, 6, 560, 560)).
code(type_adapters_1_code383, modifier, type_adapters_1_code381, (modifiers, 1), range(type_adapters_1, 17772, 6, 560, 560)).
code(type_adapters_1_code384, modifier, type_adapters_1_code381, (modifiers, 2), range(type_adapters_1, 17779, 5, 560, 560)).
code(type_adapters_1_code385, simple_type, type_adapters_1_code381, type, range(type_adapters_1, 17785, 18, 560, 560)).
code(type_adapters_1_code386, variable_declaration_fragment, type_adapters_1_code381, (fragments, 0), range(type_adapters_1, 17804, 83, 560, 561)).
code(type_adapters_1_code387, field_declaration, type_adapters_1_code2, (body_declarations, 41), range(type_adapters_1, 17892, 451, 563, 576)).
code(type_adapters_1_code388, modifier, type_adapters_1_code387, (modifiers, 0), range(type_adapters_1, 17892, 6, 563, 563)).
code(type_adapters_1_code389, modifier, type_adapters_1_code387, (modifiers, 1), range(type_adapters_1, 17899, 6, 563, 563)).
code(type_adapters_1_code390, modifier, type_adapters_1_code387, (modifiers, 2), range(type_adapters_1, 17906, 5, 563, 563)).
code(type_adapters_1_code392, simple_type, type_adapters_1_code391, type, range(type_adapters_1, 17912, 11, 563, 563)).
code(type_adapters_1_code391, parameterized_type, type_adapters_1_code387, type, range(type_adapters_1, 17912, 17, 563, 563)).
code(type_adapters_1_code393, simple_type, type_adapters_1_code391, (type_arguments, 0), range(type_adapters_1, 17924, 4, 563, 563)).
code(type_adapters_1_code394, variable_declaration_fragment, type_adapters_1_code387, (fragments, 0), range(type_adapters_1, 17930, 412, 563, 576)).
code(type_adapters_1_code395, parameterized_type, type_adapters_1_expr50, type, range(type_adapters_1, 17941, 17, 563, 563)).
code(type_adapters_1_code396, simple_type, type_adapters_1_code395, type, range(type_adapters_1, 17941, 11, 563, 563)).
code(type_adapters_1_code397, simple_type, type_adapters_1_code395, (type_arguments, 0), range(type_adapters_1, 17953, 4, 563, 563)).
code(type_adapters_1_code398, anonymous_class_declaration, type_adapters_1_expr50, anonymous_class_declaration, range(type_adapters_1, 17961, 381, 563, 576)).
code(type_adapters_1_code400, modifier, type_adapters_1_code399, (modifiers, 0), range(type_adapters_1, 18347, 6, 578, 578)).
code(type_adapters_1_code399, field_declaration, type_adapters_1_code2, (body_declarations, 42), range(type_adapters_1, 18347, 83, 578, 578)).
code(type_adapters_1_code401, modifier, type_adapters_1_code399, (modifiers, 1), range(type_adapters_1, 18354, 6, 578, 578)).
code(type_adapters_1_code402, modifier, type_adapters_1_code399, (modifiers, 2), range(type_adapters_1, 18361, 5, 578, 578)).
code(type_adapters_1_code403, simple_type, type_adapters_1_code399, type, range(type_adapters_1, 18367, 18, 578, 578)).
code(type_adapters_1_code404, variable_declaration_fragment, type_adapters_1_code399, (fragments, 0), range(type_adapters_1, 18386, 43, 578, 578)).
code(type_adapters_1_code405, simple_type, type_adapters_1_expr52, type, range(type_adapters_1, 18412, 4, 578, 578)).
code(type_adapters_1_code407, modifier, type_adapters_1_code406, (modifiers, 0), range(type_adapters_1, 18434, 6, 580, 580)).
code(type_adapters_1_code406, field_declaration, type_adapters_1_code2, (body_declarations, 43), range(type_adapters_1, 18434, 368, 580, 589)).
code(type_adapters_1_code408, modifier, type_adapters_1_code406, (modifiers, 1), range(type_adapters_1, 18441, 6, 580, 580)).
code(type_adapters_1_code409, modifier, type_adapters_1_code406, (modifiers, 2), range(type_adapters_1, 18448, 5, 580, 580)).
code(type_adapters_1_code411, simple_type, type_adapters_1_code410, type, range(type_adapters_1, 18454, 11, 580, 580)).
code(type_adapters_1_code410, parameterized_type, type_adapters_1_code406, type, range(type_adapters_1, 18454, 21, 580, 580)).
code(type_adapters_1_code412, simple_type, type_adapters_1_code410, (type_arguments, 0), range(type_adapters_1, 18466, 8, 580, 580)).
code(type_adapters_1_code413, variable_declaration_fragment, type_adapters_1_code406, (fragments, 0), range(type_adapters_1, 18476, 325, 580, 589)).
code(type_adapters_1_code415, simple_type, type_adapters_1_code414, type, range(type_adapters_1, 18491, 11, 580, 580)).
code(type_adapters_1_code414, parameterized_type, type_adapters_1_expr54, type, range(type_adapters_1, 18491, 21, 580, 580)).
code(type_adapters_1_code416, simple_type, type_adapters_1_code414, (type_arguments, 0), range(type_adapters_1, 18503, 8, 580, 580)).
code(type_adapters_1_code417, anonymous_class_declaration, type_adapters_1_expr54, anonymous_class_declaration, range(type_adapters_1, 18515, 275, 580, 589)).
code(type_adapters_1_code419, modifier, type_adapters_1_code418, (modifiers, 0), range(type_adapters_1, 18805, 6, 590, 590)).
code(type_adapters_1_code418, field_declaration, type_adapters_1_code2, (body_declarations, 44), range(type_adapters_1, 18805, 95, 590, 590)).
code(type_adapters_1_code420, modifier, type_adapters_1_code418, (modifiers, 1), range(type_adapters_1, 18812, 6, 590, 590)).
code(type_adapters_1_code421, modifier, type_adapters_1_code418, (modifiers, 2), range(type_adapters_1, 18819, 5, 590, 590)).
code(type_adapters_1_code422, simple_type, type_adapters_1_code418, type, range(type_adapters_1, 18825, 18, 590, 590)).
code(type_adapters_1_code423, variable_declaration_fragment, type_adapters_1_code418, (fragments, 0), range(type_adapters_1, 18844, 55, 590, 590)).
code(type_adapters_1_code424, simple_type, type_adapters_1_expr56, type, range(type_adapters_1, 18874, 8, 590, 590)).
code(type_adapters_1_code425, field_declaration, type_adapters_1_code2, (body_declarations, 45), range(type_adapters_1, 18904, 851, 592, 611)).
code(type_adapters_1_code426, modifier, type_adapters_1_code425, (modifiers, 0), range(type_adapters_1, 18904, 6, 592, 592)).
code(type_adapters_1_code427, modifier, type_adapters_1_code425, (modifiers, 1), range(type_adapters_1, 18911, 6, 592, 592)).
code(type_adapters_1_code428, modifier, type_adapters_1_code425, (modifiers, 2), range(type_adapters_1, 18918, 5, 592, 592)).
code(type_adapters_1_code429, simple_type, type_adapters_1_code425, type, range(type_adapters_1, 18924, 18, 592, 592)).
code(type_adapters_1_code430, variable_declaration_fragment, type_adapters_1_code425, (fragments, 0), range(type_adapters_1, 18943, 811, 592, 611)).
code(type_adapters_1_code431, simple_type, type_adapters_1_expr57, type, range(type_adapters_1, 18967, 18, 592, 592)).
code(type_adapters_1_code432, anonymous_class_declaration, type_adapters_1_expr57, anonymous_class_declaration, range(type_adapters_1, 18988, 766, 592, 611)).
code(type_adapters_1_code433, method_declaration, type_adapters_1_code432, (body_declarations, 0), range(type_adapters_1, 18994, 756, 593, 610)).
code(type_adapters_1_code434, simple_type, type_adapters_1_expr60, type, range(type_adapters_1, 19199, 9, 595, 595)).
code(type_adapters_1_code436, modifier, type_adapters_1_code435, (modifiers, 0), range(type_adapters_1, 19759, 6, 613, 613)).
code(type_adapters_1_code435, field_declaration, type_adapters_1_code2, (body_declarations, 46), range(type_adapters_1, 19759, 2053, 613, 676)).
code(type_adapters_1_code437, modifier, type_adapters_1_code435, (modifiers, 1), range(type_adapters_1, 19766, 6, 613, 613)).
code(type_adapters_1_code438, modifier, type_adapters_1_code435, (modifiers, 2), range(type_adapters_1, 19773, 5, 613, 613)).
code(type_adapters_1_code439, parameterized_type, type_adapters_1_code435, type, range(type_adapters_1, 19779, 21, 613, 613)).
code(type_adapters_1_code440, simple_type, type_adapters_1_code439, type, range(type_adapters_1, 19779, 11, 613, 613)).
code(type_adapters_1_code441, simple_type, type_adapters_1_code439, (type_arguments, 0), range(type_adapters_1, 19791, 8, 613, 613)).
code(type_adapters_1_code442, variable_declaration_fragment, type_adapters_1_code435, (fragments, 0), range(type_adapters_1, 19801, 2010, 613, 676)).
code(type_adapters_1_code444, simple_type, type_adapters_1_code443, type, range(type_adapters_1, 19816, 11, 613, 613)).
code(type_adapters_1_code443, parameterized_type, type_adapters_1_expr61, type, range(type_adapters_1, 19816, 21, 613, 613)).
code(type_adapters_1_code445, simple_type, type_adapters_1_code443, (type_arguments, 0), range(type_adapters_1, 19828, 8, 613, 613)).
code(type_adapters_1_code446, anonymous_class_declaration, type_adapters_1_expr61, anonymous_class_declaration, range(type_adapters_1, 19840, 1971, 613, 676)).
code(type_adapters_1_code447, field_declaration, type_adapters_1_code2, (body_declarations, 47), range(type_adapters_1, 21816, 140, 678, 679)).
code(type_adapters_1_code448, modifier, type_adapters_1_code447, (modifiers, 0), range(type_adapters_1, 21816, 6, 678, 678)).
code(type_adapters_1_code449, modifier, type_adapters_1_code447, (modifiers, 1), range(type_adapters_1, 21823, 6, 678, 678)).
code(type_adapters_1_code450, modifier, type_adapters_1_code447, (modifiers, 2), range(type_adapters_1, 21830, 5, 678, 678)).
code(type_adapters_1_code451, simple_type, type_adapters_1_code447, type, range(type_adapters_1, 21836, 18, 678, 678)).
code(type_adapters_1_code452, variable_declaration_fragment, type_adapters_1_code447, (fragments, 0), range(type_adapters_1, 21855, 100, 678, 679)).
code(type_adapters_1_code454, modifier, type_adapters_1_code453, (modifiers, 0), range(type_adapters_1, 21960, 6, 681, 681)).
code(type_adapters_1_code453, field_declaration, type_adapters_1_code2, (body_declarations, 48), range(type_adapters_1, 21960, 1115, 681, 714)).
code(type_adapters_1_code455, modifier, type_adapters_1_code453, (modifiers, 1), range(type_adapters_1, 21967, 6, 681, 681)).
code(type_adapters_1_code456, modifier, type_adapters_1_code453, (modifiers, 2), range(type_adapters_1, 21974, 5, 681, 681)).
code(type_adapters_1_code457, parameterized_type, type_adapters_1_code453, type, range(type_adapters_1, 21980, 19, 681, 681)).
code(type_adapters_1_code458, simple_type, type_adapters_1_code457, type, range(type_adapters_1, 21980, 11, 681, 681)).
code(type_adapters_1_code459, simple_type, type_adapters_1_code457, (type_arguments, 0), range(type_adapters_1, 21992, 6, 681, 681)).
code(type_adapters_1_code460, variable_declaration_fragment, type_adapters_1_code453, (fragments, 0), range(type_adapters_1, 22000, 1074, 681, 714)).
code(type_adapters_1_code462, simple_type, type_adapters_1_code461, type, range(type_adapters_1, 22013, 11, 681, 681)).
code(type_adapters_1_code461, parameterized_type, type_adapters_1_expr63, type, range(type_adapters_1, 22013, 19, 681, 681)).
code(type_adapters_1_code463, simple_type, type_adapters_1_code461, (type_arguments, 0), range(type_adapters_1, 22025, 6, 681, 681)).
code(type_adapters_1_code464, anonymous_class_declaration, type_adapters_1_expr63, anonymous_class_declaration, range(type_adapters_1, 22035, 1039, 681, 714)).
code(type_adapters_1_code466, modifier, type_adapters_1_code465, (modifiers, 0), range(type_adapters_1, 23079, 6, 716, 716)).
code(type_adapters_1_code465, field_declaration, type_adapters_1_code2, (body_declarations, 49), range(type_adapters_1, 23079, 89, 716, 716)).
code(type_adapters_1_code467, modifier, type_adapters_1_code465, (modifiers, 1), range(type_adapters_1, 23086, 6, 716, 716)).
code(type_adapters_1_code468, modifier, type_adapters_1_code465, (modifiers, 2), range(type_adapters_1, 23093, 5, 716, 716)).
code(type_adapters_1_code469, simple_type, type_adapters_1_code465, type, range(type_adapters_1, 23099, 18, 716, 716)).
code(type_adapters_1_code470, variable_declaration_fragment, type_adapters_1_code465, (fragments, 0), range(type_adapters_1, 23118, 49, 716, 716)).
code(type_adapters_1_code471, simple_type, type_adapters_1_expr65, type, range(type_adapters_1, 23146, 6, 716, 716)).
code(type_adapters_1_code473, modifier, type_adapters_1_code472, (modifiers, 0), range(type_adapters_1, 23172, 6, 718, 718)).
code(type_adapters_1_code472, field_declaration, type_adapters_1_code2, (body_declarations, 50), range(type_adapters_1, 23172, 2209, 718, 788)).
code(type_adapters_1_code474, modifier, type_adapters_1_code472, (modifiers, 1), range(type_adapters_1, 23179, 6, 718, 718)).
code(type_adapters_1_code475, modifier, type_adapters_1_code472, (modifiers, 2), range(type_adapters_1, 23186, 5, 718, 718)).
code(type_adapters_1_code477, simple_type, type_adapters_1_code476, type, range(type_adapters_1, 23192, 11, 718, 718)).
code(type_adapters_1_code476, parameterized_type, type_adapters_1_code472, type, range(type_adapters_1, 23192, 24, 718, 718)).
code(type_adapters_1_code478, simple_type, type_adapters_1_code476, (type_arguments, 0), range(type_adapters_1, 23204, 11, 718, 718)).
code(type_adapters_1_code479, variable_declaration_fragment, type_adapters_1_code472, (fragments, 0), range(type_adapters_1, 23217, 2163, 718, 788)).
code(type_adapters_1_code481, simple_type, type_adapters_1_code480, type, range(type_adapters_1, 23236, 11, 718, 718)).
code(type_adapters_1_code480, parameterized_type, type_adapters_1_expr66, type, range(type_adapters_1, 23236, 24, 718, 718)).
code(type_adapters_1_code482, simple_type, type_adapters_1_code480, (type_arguments, 0), range(type_adapters_1, 23248, 11, 718, 718)).
code(type_adapters_1_code483, anonymous_class_declaration, type_adapters_1_expr66, anonymous_class_declaration, range(type_adapters_1, 23263, 2117, 718, 788)).
code(type_adapters_1_code485, modifier, type_adapters_1_code484, (modifiers, 0), range(type_adapters_1, 25385, 6, 790, 790)).
code(type_adapters_1_code484, field_declaration, type_adapters_1_code2, (body_declarations, 51), range(type_adapters_1, 25385, 125, 790, 791)).
code(type_adapters_1_code486, modifier, type_adapters_1_code484, (modifiers, 1), range(type_adapters_1, 25392, 6, 790, 790)).
code(type_adapters_1_code487, modifier, type_adapters_1_code484, (modifiers, 2), range(type_adapters_1, 25399, 5, 790, 790)).
code(type_adapters_1_code488, simple_type, type_adapters_1_code484, type, range(type_adapters_1, 25405, 18, 790, 790)).
code(type_adapters_1_code489, variable_declaration_fragment, type_adapters_1_code484, (fragments, 0), range(type_adapters_1, 25424, 85, 790, 791)).
code(type_adapters_1_code490, field_declaration, type_adapters_1_code2, (body_declarations, 53), range(type_adapters_1, 26837, 559, 828, 840)).
code(type_adapters_1_code491, modifier, type_adapters_1_code490, (modifiers, 0), range(type_adapters_1, 26837, 6, 828, 828)).
code(type_adapters_1_code492, modifier, type_adapters_1_code490, (modifiers, 1), range(type_adapters_1, 26844, 6, 828, 828)).
code(type_adapters_1_code493, modifier, type_adapters_1_code490, (modifiers, 2), range(type_adapters_1, 26851, 5, 828, 828)).
code(type_adapters_1_code494, simple_type, type_adapters_1_code490, type, range(type_adapters_1, 26857, 18, 828, 828)).
code(type_adapters_1_code495, variable_declaration_fragment, type_adapters_1_code490, (fragments, 0), range(type_adapters_1, 26876, 519, 828, 840)).
code(type_adapters_1_code496, simple_type, type_adapters_1_expr68, type, range(type_adapters_1, 26895, 18, 828, 828)).
code(type_adapters_1_code497, anonymous_class_declaration, type_adapters_1_expr68, anonymous_class_declaration, range(type_adapters_1, 26916, 479, 828, 840)).
code(type_adapters_1_code498, method_declaration, type_adapters_1_code2, (body_declarations, 55), range(type_adapters_1, 27833, 567, 852, 863)).
code(type_adapters_1_code499, simple_type, type_adapters_1_expr69, type, range(type_adapters_1, 27963, 18, 854, 854)).
code(type_adapters_1_code500, anonymous_class_declaration, type_adapters_1_expr69, anonymous_class_declaration, range(type_adapters_1, 27984, 411, 854, 862)).
code(type_adapters_1_code501, method_declaration, type_adapters_1_code500, (body_declarations, 0), range(type_adapters_1, 27992, 263, 855, 858)).
code(type_adapters_1_code502, parameterized_type, type_adapters_1_expr72, type, range(type_adapters_1, 28212, 14, 857, 857)).
code(type_adapters_1_code503, simple_type, type_adapters_1_code502, type, range(type_adapters_1, 28212, 11, 857, 857)).
code(type_adapters_1_code504, simple_type, type_adapters_1_code502, (type_arguments, 0), range(type_adapters_1, 28224, 1, 857, 857)).
code(type_adapters_1_code505, method_declaration, type_adapters_1_code2, (body_declarations, 56), range(type_adapters_1, 28404, 709, 865, 878)).
code(type_adapters_1_code506, simple_type, type_adapters_1_expr74, type, range(type_adapters_1, 28568, 18, 867, 867)).
code(type_adapters_1_code507, anonymous_class_declaration, type_adapters_1_expr74, anonymous_class_declaration, range(type_adapters_1, 28589, 519, 867, 877)).
code(type_adapters_1_code508, method_declaration, type_adapters_1_code507, (body_declarations, 0), range(type_adapters_1, 28597, 332, 868, 872)).
code(type_adapters_1_code510, simple_type, type_adapters_1_code509, type, range(type_adapters_1, 28776, 5, 870, 870)).
code(type_adapters_1_code509, parameterized_type, type_adapters_1_stmt6, type, range(type_adapters_1, 28776, 16, 870, 870)).
code(type_adapters_1_code511, wildcard_type, type_adapters_1_code509, (type_arguments, 0), range(type_adapters_1, 28782, 9, 870, 870)).
code(type_adapters_1_code512, simple_type, type_adapters_1_code511, bound, range(type_adapters_1, 28790, 1, 870, 870)).
code(type_adapters_1_code513, variable_declaration_fragment, type_adapters_1_stmt6, (fragments, 0), range(type_adapters_1, 28793, 32, 870, 870)).
code(type_adapters_1_code514, parameterized_type, type_adapters_1_expr78, type, range(type_adapters_1, 28886, 14, 871, 871)).
code(type_adapters_1_code515, simple_type, type_adapters_1_code514, type, range(type_adapters_1, 28886, 11, 871, 871)).
code(type_adapters_1_code516, simple_type, type_adapters_1_code514, (type_arguments, 0), range(type_adapters_1, 28898, 1, 871, 871)).
code(type_adapters_1_code517, method_declaration, type_adapters_1_code2, (body_declarations, 57), range(type_adapters_1, 29117, 719, 880, 893)).
code(type_adapters_1_code518, simple_type, type_adapters_1_expr82, type, range(type_adapters_1, 29301, 18, 882, 882)).
code(type_adapters_1_code519, anonymous_class_declaration, type_adapters_1_expr82, anonymous_class_declaration, range(type_adapters_1, 29322, 509, 882, 892)).
code(type_adapters_1_code520, method_declaration, type_adapters_1_code519, (body_declarations, 0), range(type_adapters_1, 29330, 327, 883, 887)).
code(type_adapters_1_code522, simple_type, type_adapters_1_code521, type, range(type_adapters_1, 29509, 5, 885, 885)).
code(type_adapters_1_code521, parameterized_type, type_adapters_1_stmt9, type, range(type_adapters_1, 29509, 16, 885, 885)).
code(type_adapters_1_code523, wildcard_type, type_adapters_1_code521, (type_arguments, 0), range(type_adapters_1, 29515, 9, 885, 885)).
code(type_adapters_1_code524, simple_type, type_adapters_1_code523, bound, range(type_adapters_1, 29523, 1, 885, 885)).
code(type_adapters_1_code525, variable_declaration_fragment, type_adapters_1_stmt9, (fragments, 0), range(type_adapters_1, 29526, 32, 885, 885)).
code(type_adapters_1_code527, simple_type, type_adapters_1_code526, type, range(type_adapters_1, 29614, 11, 886, 886)).
code(type_adapters_1_code526, parameterized_type, type_adapters_1_expr86, type, range(type_adapters_1, 29614, 14, 886, 886)).
code(type_adapters_1_code528, simple_type, type_adapters_1_code526, (type_arguments, 0), range(type_adapters_1, 29626, 1, 886, 886)).
code(type_adapters_1_code529, method_declaration, type_adapters_1_code2, (body_declarations, 58), range(type_adapters_1, 29840, 1381, 895, 927)).
code(type_adapters_1_code530, simple_type, type_adapters_1_expr90, type, range(type_adapters_1, 30153, 18, 901, 901)).
code(type_adapters_1_code531, anonymous_class_declaration, type_adapters_1_expr90, anonymous_class_declaration, range(type_adapters_1, 30174, 1042, 901, 926)).
code(type_adapters_1_code532, method_declaration, type_adapters_1_code531, (body_declarations, 0), range(type_adapters_1, 30182, 884, 902, 922)).
code(type_adapters_1_code533, modifier, type_adapters_1_stmt12, (modifiers, 0), range(type_adapters_1, 30310, 5, 904, 904)).
code(type_adapters_1_code535, simple_type, type_adapters_1_code534, type, range(type_adapters_1, 30316, 5, 904, 904)).
code(type_adapters_1_code534, parameterized_type, type_adapters_1_stmt12, type, range(type_adapters_1, 30316, 17, 904, 904)).
code(type_adapters_1_code536, wildcard_type, type_adapters_1_code534, (type_arguments, 0), range(type_adapters_1, 30322, 10, 904, 904)).
code(type_adapters_1_code537, simple_type, type_adapters_1_code536, bound, range(type_adapters_1, 30330, 2, 904, 904)).
code(type_adapters_1_code538, variable_declaration_fragment, type_adapters_1_stmt12, (fragments, 0), range(type_adapters_1, 30334, 38, 904, 904)).
%time_type_adapter_1 - com.google.gson.internal.bind.TimeTypeAdapter
code(time_type_adapter_1_code1, compilation_unit, range(time_type_adapter_1, 0, 2408, 1, -1)).
code(time_type_adapter_1_code2, type_declaration, time_type_adapter_1_code1, (types, 0), range(time_type_adapter_1, 1126, 1281, 34, 66)).
code(time_type_adapter_1_code4, modifier, time_type_adapter_1_code3, (modifiers, 0), range(time_type_adapter_1, 1472, 6, 41, 41)).
code(time_type_adapter_1_code3, field_declaration, time_type_adapter_1_code2, (body_declarations, 0), range(time_type_adapter_1, 1472, 358, 41, 46)).
code(time_type_adapter_1_code5, modifier, time_type_adapter_1_code3, (modifiers, 1), range(time_type_adapter_1, 1479, 6, 41, 41)).
code(time_type_adapter_1_code6, modifier, time_type_adapter_1_code3, (modifiers, 2), range(time_type_adapter_1, 1486, 5, 41, 41)).
code(time_type_adapter_1_code7, simple_type, time_type_adapter_1_code3, type, range(time_type_adapter_1, 1492, 18, 41, 41)).
code(time_type_adapter_1_code8, variable_declaration_fragment, time_type_adapter_1_code3, (fragments, 0), range(time_type_adapter_1, 1511, 318, 41, 46)).
code(time_type_adapter_1_code9, simple_type, time_type_adapter_1_expr1, type, range(time_type_adapter_1, 1525, 18, 41, 41)).
code(time_type_adapter_1_code10, anonymous_class_declaration, time_type_adapter_1_expr1, anonymous_class_declaration, range(time_type_adapter_1, 1546, 283, 41, 46)).
code(time_type_adapter_1_code11, method_declaration, time_type_adapter_1_code10, (body_declarations, 0), range(time_type_adapter_1, 1552, 273, 42, 45)).
code(time_type_adapter_1_code12, simple_type, time_type_adapter_1_expr6, type, range(time_type_adapter_1, 1760, 4, 44, 44)).
code(time_type_adapter_1_code13, parameterized_type, time_type_adapter_1_expr4, type, range(time_type_adapter_1, 1774, 14, 44, 44)).
code(time_type_adapter_1_code14, simple_type, time_type_adapter_1_code13, type, range(time_type_adapter_1, 1774, 11, 44, 44)).
code(time_type_adapter_1_code15, simple_type, time_type_adapter_1_code13, (type_arguments, 0), range(time_type_adapter_1, 1786, 1, 44, 44)).
code(time_type_adapter_1_code16, simple_type, time_type_adapter_1_expr7, type, range(time_type_adapter_1, 1794, 15, 44, 44)).
%map_type_adapter_factory_1 - com.google.gson.internal.bind.MapTypeAdapterFactory
code(map_type_adapter_factory_1_code1, compilation_unit, range(map_type_adapter_factory_1, 0, 9500, 1, -1)).
code(map_type_adapter_factory_1_code2, type_declaration, map_type_adapter_factory_1_code1, (types, 0), range(map_type_adapter_factory_1, 1418, 8081, 40, 264)).
code(map_type_adapter_factory_1_code3, method_declaration, map_type_adapter_factory_1_code2, (body_declarations, 2), range(map_type_adapter_factory_1, 4040, 247, 109, 113)).
code(map_type_adapter_factory_1_code4, single_variable_declaration, map_type_adapter_factory_1_code3, (parameters, 1), range(map_type_adapter_factory_1, 4122, 34, 110, 110)).
code(map_type_adapter_factory_1_code5, primitive_type, map_type_adapter_factory_1_code4, type, range(map_type_adapter_factory_1, 4122, 7, 110, 110)).
code(map_type_adapter_factory_1_code6, method_declaration, map_type_adapter_factory_1_code2, (body_declarations, 3), range(map_type_adapter_factory_1, 4291, 905, 115, 134)).
code(map_type_adapter_factory_1_code7, simple_type, map_type_adapter_factory_1_stmt3, type, range(map_type_adapter_factory_1, 4375, 4, 116, 116)).
code(map_type_adapter_factory_1_code8, variable_declaration_fragment, map_type_adapter_factory_1_stmt3, (fragments, 0), range(map_type_adapter_factory_1, 4380, 26, 116, 116)).
code(map_type_adapter_factory_1_code10, simple_type, map_type_adapter_factory_1_code9, type, range(map_type_adapter_factory_1, 4413, 5, 118, 118)).
code(map_type_adapter_factory_1_code9, parameterized_type, map_type_adapter_factory_1_stmt4, type, range(map_type_adapter_factory_1, 4413, 16, 118, 118)).
code(map_type_adapter_factory_1_code11, wildcard_type, map_type_adapter_factory_1_code9, (type_arguments, 0), range(map_type_adapter_factory_1, 4419, 9, 118, 118)).
code(map_type_adapter_factory_1_code12, simple_type, map_type_adapter_factory_1_code11, bound, range(map_type_adapter_factory_1, 4427, 1, 118, 118)).
code(map_type_adapter_factory_1_code13, variable_declaration_fragment, map_type_adapter_factory_1_stmt4, (fragments, 0), range(map_type_adapter_factory_1, 4430, 32, 118, 118)).
code(map_type_adapter_factory_1_code14, simple_type, map_type_adapter_factory_1_expr11, type, range(map_type_adapter_factory_1, 4473, 3, 119, 119)).
%field_naming_policy_1 - com.google.gson.FieldNamingPolicy
code(field_naming_policy_1_code1, compilation_unit, range(field_naming_policy_1, 0, 5813, 1, -1)).
code(field_naming_policy_1_code2, enum_declaration, field_naming_policy_1_code1, (types, 0), range(field_naming_policy_1, 680, 5132, 22, 169)).
code(field_naming_policy_1_code3, modifier, field_naming_policy_1_code2, (modifiers, 0), range(field_naming_policy_1, 1052, 6, 31, 31)).
code(field_naming_policy_1_code4, simple_type, field_naming_policy_1_code2, (super_interface_types, 0), range(field_naming_policy_1, 1093, 19, 31, 31)).
code(field_naming_policy_1_code5, enum_constant_declaration, field_naming_policy_1_code2, (enum_constants, 0), range(field_naming_policy_1, 1118, 204, 33, 41)).
code(field_naming_policy_1_code6, anonymous_class_declaration, field_naming_policy_1_code5, anonymous_class_declaration, range(field_naming_policy_1, 1232, 90, 37, 41)).
code(field_naming_policy_1_code7, enum_constant_declaration, field_naming_policy_1_code2, (enum_constants, 1), range(field_naming_policy_1, 1327, 510, 43, 57)).
code(field_naming_policy_1_code8, anonymous_class_declaration, field_naming_policy_1_code7, anonymous_class_declaration, range(field_naming_policy_1, 1725, 112, 53, 57)).
code(field_naming_policy_1_code9, enum_constant_declaration, field_naming_policy_1_code2, (enum_constants, 2), range(field_naming_policy_1, 1842, 619, 59, 76)).
code(field_naming_policy_1_code10, anonymous_class_declaration, field_naming_policy_1_code9, anonymous_class_declaration, range(field_naming_policy_1, 2325, 136, 72, 76)).
code(field_naming_policy_1_code11, enum_constant_declaration, field_naming_policy_1_code2, (enum_constants, 3), range(field_naming_policy_1, 2466, 666, 78, 94)).
code(field_naming_policy_1_code12, anonymous_class_declaration, field_naming_policy_1_code11, anonymous_class_declaration, range(field_naming_policy_1, 2990, 142, 90, 94)).
code(field_naming_policy_1_code13, enum_constant_declaration, field_naming_policy_1_code2, (enum_constants, 4), range(field_naming_policy_1, 3137, 1023, 96, 117)).
code(field_naming_policy_1_code14, anonymous_class_declaration, field_naming_policy_1_code13, anonymous_class_declaration, range(field_naming_policy_1, 4018, 142, 113, 117)).
%type_adapter_1 - com.google.gson.TypeAdapter
code(type_adapter_1_code1, compilation_unit, range(type_adapter_1, 0, 10906, 1, -1)).
code(type_adapter_1_code2, type_declaration, type_adapter_1_code1, (types, 0), range(type_adapter_1, 991, 9914, 30, 290)).
code(type_adapter_1_code3, modifier, type_adapter_1_code2, (modifiers, 0), range(type_adapter_1, 5138, 6, 119, 119)).
code(type_adapter_1_code4, modifier, type_adapter_1_code2, (modifiers, 1), range(type_adapter_1, 5145, 8, 119, 119)).
code(type_adapter_1_code5, type_parameter, type_adapter_1_code2, (type_parameters, 0), range(type_adapter_1, 5172, 1, 119, 119)).
code(type_adapter_1_code6, method_declaration, type_adapter_1_code2, (body_declarations, 2), range(type_adapter_1, 6038, 2011, 145, 202)).
code(type_adapter_1_code7, parameterized_type, type_adapter_1_expr1, type, range(type_adapter_1, 7570, 14, 186, 186)).
code(type_adapter_1_code8, simple_type, type_adapter_1_code7, type, range(type_adapter_1, 7570, 11, 186, 186)).
code(type_adapter_1_code9, simple_type, type_adapter_1_code7, (type_arguments, 0), range(type_adapter_1, 7582, 1, 186, 186)).
code(type_adapter_1_code10, anonymous_class_declaration, type_adapter_1_expr1, anonymous_class_declaration, range(type_adapter_1, 7587, 457, 186, 201)).
%collection_type_adapter_factory_1 - com.google.gson.internal.bind.CollectionTypeAdapterFactory
code(collection_type_adapter_factory_1_code1, compilation_unit, range(collection_type_adapter_factory_1, 0, 3498, 1, -1)).
code(collection_type_adapter_factory_1_code2, type_declaration, collection_type_adapter_factory_1_code1, (types, 0), range(collection_type_adapter_factory_1, 1157, 2340, 33, 102)).
code(collection_type_adapter_factory_1_code4, modifier, collection_type_adapter_factory_1_code3, (modifiers, 0), range(collection_type_adapter_factory_1, 1357, 6, 39, 39)).
code(collection_type_adapter_factory_1_code3, method_declaration, collection_type_adapter_factory_1_code2, (body_declarations, 1), range(collection_type_adapter_factory_1, 1357, 146, 39, 41)).
code(collection_type_adapter_factory_1_code5, single_variable_declaration, collection_type_adapter_factory_1_code3, (parameters, 0), range(collection_type_adapter_factory_1, 1393, 45, 39, 39)).
code(collection_type_adapter_factory_1_code6, simple_type, collection_type_adapter_factory_1_code5, type, range(collection_type_adapter_factory_1, 1393, 22, 39, 39)).
code(collection_type_adapter_factory_1_code7, method_declaration, collection_type_adapter_factory_1_code2, (body_declarations, 2), range(collection_type_adapter_factory_1, 1507, 704, 43, 59)).
code(collection_type_adapter_factory_1_code8, simple_type, collection_type_adapter_factory_1_stmt2, type, range(collection_type_adapter_factory_1, 1593, 4, 45, 45)).
code(collection_type_adapter_factory_1_code9, variable_declaration_fragment, collection_type_adapter_factory_1_stmt2, (fragments, 0), range(collection_type_adapter_factory_1, 1598, 26, 45, 45)).
code(collection_type_adapter_factory_1_code11, simple_type, collection_type_adapter_factory_1_code10, type, range(collection_type_adapter_factory_1, 1631, 5, 47, 47)).
code(collection_type_adapter_factory_1_code10, parameterized_type, collection_type_adapter_factory_1_stmt3, type, range(collection_type_adapter_factory_1, 1631, 16, 47, 47)).
code(collection_type_adapter_factory_1_code12, wildcard_type, collection_type_adapter_factory_1_code10, (type_arguments, 0), range(collection_type_adapter_factory_1, 1637, 9, 47, 47)).
code(collection_type_adapter_factory_1_code13, simple_type, collection_type_adapter_factory_1_code12, bound, range(collection_type_adapter_factory_1, 1645, 1, 47, 47)).
code(collection_type_adapter_factory_1_code14, variable_declaration_fragment, collection_type_adapter_factory_1_stmt3, (fragments, 0), range(collection_type_adapter_factory_1, 1648, 32, 47, 47)).
code(collection_type_adapter_factory_1_code15, simple_type, collection_type_adapter_factory_1_expr8, type, range(collection_type_adapter_factory_1, 1691, 10, 48, 48)).
%excluder_1 - com.google.gson.internal.Excluder
code(excluder_1_code1, compilation_unit, range(excluder_1, 0, 7621, 1, -1)).
code(excluder_1_code2, type_declaration, excluder_1_code1, (types, 0), range(excluder_1, 1251, 6369, 37, 251)).
code(excluder_1_code3, modifier, excluder_1_code2, (modifiers, 0), range(excluder_1, 1752, 6, 50, 50)).
code(excluder_1_code4, modifier, excluder_1_code2, (modifiers, 1), range(excluder_1, 1759, 5, 50, 50)).
code(excluder_1_code5, simple_type, excluder_1_code2, (super_interface_types, 0), range(excluder_1, 1791, 18, 50, 50)).
code(excluder_1_code6, simple_type, excluder_1_code2, (super_interface_types, 1), range(excluder_1, 1811, 9, 50, 50)).
code(excluder_1_code8, modifier, excluder_1_code7, (modifiers, 0), range(excluder_1, 1880, 6, 52, 52)).
code(excluder_1_code7, field_declaration, excluder_1_code2, (body_declarations, 1), range(excluder_1, 1880, 54, 52, 52)).
code(excluder_1_code9, modifier, excluder_1_code7, (modifiers, 1), range(excluder_1, 1887, 6, 52, 52)).
code(excluder_1_code10, modifier, excluder_1_code7, (modifiers, 2), range(excluder_1, 1894, 5, 52, 52)).
code(excluder_1_code11, simple_type, excluder_1_code7, type, range(excluder_1, 1900, 8, 52, 52)).
code(excluder_1_code12, variable_declaration_fragment, excluder_1_code7, (fragments, 0), range(excluder_1, 1909, 24, 52, 52)).
code(excluder_1_code13, simple_type, excluder_1_expr1, type, range(excluder_1, 1923, 8, 52, 52)).
code(excluder_1_code15, modifier, excluder_1_code14, (modifiers, 0), range(excluder_1, 1938, 7, 54, 54)).
code(excluder_1_code14, field_declaration, excluder_1_code2, (body_declarations, 2), range(excluder_1, 1938, 41, 54, 54)).
code(excluder_1_code16, primitive_type, excluder_1_code14, type, range(excluder_1, 1946, 6, 54, 54)).
code(excluder_1_code17, variable_declaration_fragment, excluder_1_code14, (fragments, 0), range(excluder_1, 1953, 25, 54, 54)).
code(excluder_1_code19, modifier, excluder_1_code18, (modifiers, 0), range(excluder_1, 1982, 7, 55, 55)).
code(excluder_1_code18, field_declaration, excluder_1_code2, (body_declarations, 3), range(excluder_1, 1982, 61, 55, 55)).
code(excluder_1_code20, primitive_type, excluder_1_code18, type, range(excluder_1, 1990, 3, 55, 55)).
code(excluder_1_code21, variable_declaration_fragment, excluder_1_code18, (fragments, 0), range(excluder_1, 1994, 48, 55, 55)).
code(excluder_1_code22, field_declaration, excluder_1_code2, (body_declarations, 4), range(excluder_1, 2046, 45, 56, 56)).
code(excluder_1_code23, modifier, excluder_1_code22, (modifiers, 0), range(excluder_1, 2046, 7, 56, 56)).
code(excluder_1_code24, primitive_type, excluder_1_code22, type, range(excluder_1, 2054, 7, 56, 56)).
code(excluder_1_code25, variable_declaration_fragment, excluder_1_code22, (fragments, 0), range(excluder_1, 2062, 28, 56, 56)).
code(excluder_1_code27, modifier, excluder_1_code26, (modifiers, 0), range(excluder_1, 2127, 7, 58, 58)).
code(excluder_1_code26, field_declaration, excluder_1_code2, (body_declarations, 6), range(excluder_1, 2127, 82, 58, 58)).
code(excluder_1_code28, parameterized_type, excluder_1_code26, type, range(excluder_1, 2135, 23, 58, 58)).
code(excluder_1_code29, simple_type, excluder_1_code28, type, range(excluder_1, 2135, 4, 58, 58)).
code(excluder_1_code30, simple_type, excluder_1_code28, (type_arguments, 0), range(excluder_1, 2140, 17, 58, 58)).
code(excluder_1_code31, variable_declaration_fragment, excluder_1_code26, (fragments, 0), range(excluder_1, 2159, 49, 58, 58)).
code(excluder_1_code33, modifier, excluder_1_code32, (modifiers, 0), range(excluder_1, 2212, 7, 59, 59)).
code(excluder_1_code32, field_declaration, excluder_1_code2, (body_declarations, 7), range(excluder_1, 2212, 84, 59, 59)).
code(excluder_1_code35, simple_type, excluder_1_code34, type, range(excluder_1, 2220, 4, 59, 59)).
code(excluder_1_code34, parameterized_type, excluder_1_code32, type, range(excluder_1, 2220, 23, 59, 59)).
code(excluder_1_code36, simple_type, excluder_1_code34, (type_arguments, 0), range(excluder_1, 2225, 17, 59, 59)).
code(excluder_1_code37, variable_declaration_fragment, excluder_1_code32, (fragments, 0), range(excluder_1, 2244, 51, 59, 59)).
code(excluder_1_code38, method_declaration, excluder_1_code2, (body_declarations, 14), range(excluder_1, 3733, 1118, 111, 147)).
code(excluder_1_code39, parameterized_type, excluder_1_stmt1, type, range(excluder_1, 3814, 8, 112, 112)).
code(excluder_1_code40, simple_type, excluder_1_code39, type, range(excluder_1, 3814, 5, 112, 112)).
code(excluder_1_code41, wildcard_type, excluder_1_code39, (type_arguments, 0), range(excluder_1, 3820, 1, 112, 112)).
code(excluder_1_code42, variable_declaration_fragment, excluder_1_stmt1, (fragments, 0), range(excluder_1, 3823, 27, 112, 112)).
code(excluder_1_code43, modifier, excluder_1_stmt2, (modifiers, 0), range(excluder_1, 3856, 5, 113, 113)).
code(excluder_1_code44, primitive_type, excluder_1_stmt2, type, range(excluder_1, 3862, 7, 113, 113)).
code(excluder_1_code45, variable_declaration_fragment, excluder_1_stmt2, (fragments, 0), range(excluder_1, 3870, 43, 113, 113)).
code(excluder_1_code46, modifier, excluder_1_stmt3, (modifiers, 0), range(excluder_1, 3919, 5, 114, 114)).
code(excluder_1_code47, primitive_type, excluder_1_stmt3, type, range(excluder_1, 3925, 7, 114, 114)).
code(excluder_1_code48, variable_declaration_fragment, excluder_1_stmt3, (fragments, 0), range(excluder_1, 3933, 46, 114, 114)).
code(excluder_1_code49, method_declaration, excluder_1_code2, (body_declarations, 16), range(excluder_1, 5999, 645, 191, 213)).
code(excluder_1_code51, simple_type, excluder_1_code50, type, range(excluder_1, 6382, 4, 205, 205)).
code(excluder_1_code50, parameterized_type, excluder_1_stmt9, type, range(excluder_1, 6382, 23, 205, 205)).
code(excluder_1_code52, simple_type, excluder_1_code50, (type_arguments, 0), range(excluder_1, 6387, 17, 205, 205)).
code(excluder_1_code53, variable_declaration_fragment, excluder_1_stmt9, (fragments, 0), range(excluder_1, 6406, 70, 205, 205)).
code(excluder_1_code54, single_variable_declaration, excluder_1_stmt10, parameter, range(excluder_1, 6487, 35, 206, 206)).
code(excluder_1_code55, simple_type, excluder_1_code54, type, range(excluder_1, 6487, 17, 206, 206)).
code(excluder_1_code56, method_declaration, excluder_1_code2, (body_declarations, 17), range(excluder_1, 6648, 166, 215, 218)).
code(excluder_1_code57, simple_type, excluder_1_expr21, type, range(excluder_1, 6713, 4, 216, 216)).
%long_serialization_policy_1 - com.google.gson.LongSerializationPolicy
code(long_serialization_policy_1_code1, compilation_unit, range(long_serialization_policy_1, 0, 1796, 1, -1)).
code(long_serialization_policy_1_code2, enum_declaration, long_serialization_policy_1_code1, (types, 0), range(long_serialization_policy_1, 622, 1173, 19, 58)).
code(long_serialization_policy_1_code3, modifier, long_serialization_policy_1_code2, (modifiers, 0), range(long_serialization_policy_1, 792, 6, 27, 27)).
code(long_serialization_policy_1_code4, enum_constant_declaration, long_serialization_policy_1_code2, (enum_constants, 0), range(long_serialization_policy_1, 832, 363, 28, 38)).
code(long_serialization_policy_1_code5, anonymous_class_declaration, long_serialization_policy_1_code4, anonymous_class_declaration, range(long_serialization_policy_1, 1088, 107, 34, 38)).
code(long_serialization_policy_1_code6, enum_constant_declaration, long_serialization_policy_1_code2, (enum_constants, 1), range(long_serialization_policy_1, 1202, 320, 40, 49)).
code(long_serialization_policy_1_code7, anonymous_class_declaration, long_serialization_policy_1_code6, anonymous_class_declaration, range(long_serialization_policy_1, 1399, 123, 45, 49)).
%json_adapter_annotation_type_adapter_factory_1 - com.google.gson.internal.bind.JsonAdapterAnnotationTypeAdapterFactory
code(json_adapter_annotation_type_adapter_factory_1_code1, compilation_unit, range(json_adapter_annotation_type_adapter_factory_1, 0, 2775, 1, -1)).
code(json_adapter_annotation_type_adapter_factory_1_code2, type_declaration, json_adapter_annotation_type_adapter_factory_1_code1, (types, 0), range(json_adapter_annotation_type_adapter_factory_1, 896, 1878, 26, 70)).
code(json_adapter_annotation_type_adapter_factory_1_code3, method_declaration, json_adapter_annotation_type_adapter_factory_1_code2, (body_declarations, 1), range(json_adapter_annotation_type_adapter_factory_1, 1219, 157, 36, 38)).
code(json_adapter_annotation_type_adapter_factory_1_code4, modifier, json_adapter_annotation_type_adapter_factory_1_code3, (modifiers, 0), range(json_adapter_annotation_type_adapter_factory_1, 1219, 6, 36, 36)).
code(json_adapter_annotation_type_adapter_factory_1_code6, simple_type, json_adapter_annotation_type_adapter_factory_1_code5, type, range(json_adapter_annotation_type_adapter_factory_1, 1266, 22, 36, 36)).
code(json_adapter_annotation_type_adapter_factory_1_code5, single_variable_declaration, json_adapter_annotation_type_adapter_factory_1_code3, (parameters, 0), range(json_adapter_annotation_type_adapter_factory_1, 1266, 45, 36, 36)).
code(json_adapter_annotation_type_adapter_factory_1_code7, method_declaration, json_adapter_annotation_type_adapter_factory_1_code2, (body_declarations, 2), range(json_adapter_annotation_type_adapter_factory_1, 1380, 359, 40, 48)).
code(json_adapter_annotation_type_adapter_factory_1_code8, parameterized_type, json_adapter_annotation_type_adapter_factory_1_expr4, type, range(json_adapter_annotation_type_adapter_factory_1, 1650, 14, 47, 47)).
code(json_adapter_annotation_type_adapter_factory_1_code9, simple_type, json_adapter_annotation_type_adapter_factory_1_code8, type, range(json_adapter_annotation_type_adapter_factory_1, 1650, 11, 47, 47)).
code(json_adapter_annotation_type_adapter_factory_1_code10, simple_type, json_adapter_annotation_type_adapter_factory_1_code8, (type_arguments, 0), range(json_adapter_annotation_type_adapter_factory_1, 1662, 1, 47, 47)).
code(json_adapter_annotation_type_adapter_factory_1_code11, method_declaration, json_adapter_annotation_type_adapter_factory_1_code2, (body_declarations, 3), range(json_adapter_annotation_type_adapter_factory_1, 1743, 1029, 50, 69)).
code(json_adapter_annotation_type_adapter_factory_1_code13, simple_type, json_adapter_annotation_type_adapter_factory_1_code12, type, range(json_adapter_annotation_type_adapter_factory_1, 1965, 5, 53, 53)).
code(json_adapter_annotation_type_adapter_factory_1_code12, parameterized_type, json_adapter_annotation_type_adapter_factory_1_stmt3, type, range(json_adapter_annotation_type_adapter_factory_1, 1965, 8, 53, 53)).
code(json_adapter_annotation_type_adapter_factory_1_code14, wildcard_type, json_adapter_annotation_type_adapter_factory_1_code12, (type_arguments, 0), range(json_adapter_annotation_type_adapter_factory_1, 1971, 1, 53, 53)).
code(json_adapter_annotation_type_adapter_factory_1_code15, variable_declaration_fragment, json_adapter_annotation_type_adapter_factory_1_stmt3, (fragments, 0), range(json_adapter_annotation_type_adapter_factory_1, 1974, 26, 53, 53)).
code(json_adapter_annotation_type_adapter_factory_1_code16, simple_type, json_adapter_annotation_type_adapter_factory_1_expr8, type, range(json_adapter_annotation_type_adapter_factory_1, 2042, 11, 55, 55)).
code(json_adapter_annotation_type_adapter_factory_1_code17, simple_type, json_adapter_annotation_type_adapter_factory_1_expr10, type, range(json_adapter_annotation_type_adapter_factory_1, 2273, 18, 58, 58)).
code(json_adapter_annotation_type_adapter_factory_1_code19, simple_type, json_adapter_annotation_type_adapter_factory_1_code18, type, range(json_adapter_annotation_type_adapter_factory_1, 2331, 5, 59, 59)).
code(json_adapter_annotation_type_adapter_factory_1_code18, parameterized_type, json_adapter_annotation_type_adapter_factory_1_stmt6, type, range(json_adapter_annotation_type_adapter_factory_1, 2331, 25, 59, 59)).
code(json_adapter_annotation_type_adapter_factory_1_code20, simple_type, json_adapter_annotation_type_adapter_factory_1_code18, (type_arguments, 0), range(json_adapter_annotation_type_adapter_factory_1, 2337, 18, 59, 59)).
code(json_adapter_annotation_type_adapter_factory_1_code21, variable_declaration_fragment, json_adapter_annotation_type_adapter_factory_1_stmt6, (fragments, 0), range(json_adapter_annotation_type_adapter_factory_1, 2357, 54, 59, 59)).
code(json_adapter_annotation_type_adapter_factory_1_code23, simple_type, json_adapter_annotation_type_adapter_factory_1_code22, type, range(json_adapter_annotation_type_adapter_factory_1, 2379, 5, 59, 59)).
code(json_adapter_annotation_type_adapter_factory_1_code22, parameterized_type, json_adapter_annotation_type_adapter_factory_1_expr11, type, range(json_adapter_annotation_type_adapter_factory_1, 2379, 25, 59, 59)).
code(json_adapter_annotation_type_adapter_factory_1_code24, simple_type, json_adapter_annotation_type_adapter_factory_1_code22, (type_arguments, 0), range(json_adapter_annotation_type_adapter_factory_1, 2385, 18, 59, 59)).
%json_reader_1 - com.google.gson.stream.JsonReader
code(json_reader_1_code1, compilation_unit, range(json_reader_1, 0, 50936, 1, -1)).
code(json_reader_1_code2, type_declaration, json_reader_1_code1, (types, 0), range(json_reader_1, 852, 50083, 26, 1617)).
code(json_reader_1_code3, field_declaration, json_reader_1_code2, (body_declarations, 0), range(json_reader_1, 7245, 129, 191, 192)).
code(json_reader_1_code4, modifier, json_reader_1_code3, (modifiers, 0), range(json_reader_1, 7302, 7, 192, 192)).
code(json_reader_1_code5, modifier, json_reader_1_code3, (modifiers, 1), range(json_reader_1, 7310, 6, 192, 192)).
code(json_reader_1_code6, modifier, json_reader_1_code3, (modifiers, 2), range(json_reader_1, 7317, 5, 192, 192)).
code(json_reader_1_code7, array_type, json_reader_1_code3, type, range(json_reader_1, 7323, 6, 192, 192)).
code(json_reader_1_code8, primitive_type, json_reader_1_code7, element_type, range(json_reader_1, 7323, 4, 192, 192)).
code(json_reader_1_code9, dimension, json_reader_1_code7, (dimensions, 0), range(json_reader_1, 7327, 2, 192, 192)).
code(json_reader_1_code10, variable_declaration_fragment, json_reader_1_code3, (fragments, 0), range(json_reader_1, 7330, 43, 192, 192)).
code(json_reader_1_code11, field_declaration, json_reader_1_code2, (body_declarations, 29), range(json_reader_1, 9008, 80, 229, 230)).
code(json_reader_1_code12, modifier, json_reader_1_code11, (modifiers, 0), range(json_reader_1, 9056, 7, 230, 230)).
code(json_reader_1_code13, primitive_type, json_reader_1_code11, type, range(json_reader_1, 9064, 7, 230, 230)).
code(json_reader_1_code14, variable_declaration_fragment, json_reader_1_code11, (fragments, 0), range(json_reader_1, 9072, 15, 230, 230)).
code(json_reader_1_code15, field_declaration, json_reader_1_code2, (body_declarations, 30), range(json_reader_1, 9092, 351, 232, 238)).
code(json_reader_1_code16, modifier, json_reader_1_code15, (modifiers, 0), range(json_reader_1, 9398, 7, 238, 238)).
code(json_reader_1_code17, modifier, json_reader_1_code15, (modifiers, 1), range(json_reader_1, 9406, 5, 238, 238)).
code(json_reader_1_code19, primitive_type, json_reader_1_code18, element_type, range(json_reader_1, 9412, 4, 238, 238)).
code(json_reader_1_code18, array_type, json_reader_1_code15, type, range(json_reader_1, 9412, 6, 238, 238)).
code(json_reader_1_code20, dimension, json_reader_1_code18, (dimensions, 0), range(json_reader_1, 9416, 2, 238, 238)).
code(json_reader_1_code21, variable_declaration_fragment, json_reader_1_code15, (fragments, 0), range(json_reader_1, 9419, 23, 238, 238)).
code(json_reader_1_code23, primitive_type, json_reader_1_code22, element_type, range(json_reader_1, 9432, 4, 238, 238)).
code(json_reader_1_code22, array_type, json_reader_1_expr2, type, range(json_reader_1, 9432, 10, 238, 238)).
code(json_reader_1_code24, dimension, json_reader_1_code22, (dimensions, 0), range(json_reader_1, 9436, 6, 238, 238)).
code(json_reader_1_code26, modifier, json_reader_1_code25, (modifiers, 0), range(json_reader_1, 9446, 7, 239, 239)).
code(json_reader_1_code25, field_declaration, json_reader_1_code2, (body_declarations, 31), range(json_reader_1, 9446, 20, 239, 239)).
code(json_reader_1_code27, primitive_type, json_reader_1_code25, type, range(json_reader_1, 9454, 3, 239, 239)).
code(json_reader_1_code28, variable_declaration_fragment, json_reader_1_code25, (fragments, 0), range(json_reader_1, 9458, 7, 239, 239)).
code(json_reader_1_code30, modifier, json_reader_1_code29, (modifiers, 0), range(json_reader_1, 9469, 7, 240, 240)).
code(json_reader_1_code29, field_declaration, json_reader_1_code2, (body_declarations, 32), range(json_reader_1, 9469, 22, 240, 240)).
code(json_reader_1_code31, primitive_type, json_reader_1_code29, type, range(json_reader_1, 9477, 3, 240, 240)).
code(json_reader_1_code32, variable_declaration_fragment, json_reader_1_code29, (fragments, 0), range(json_reader_1, 9481, 9, 240, 240)).
code(json_reader_1_code33, field_declaration, json_reader_1_code2, (body_declarations, 33), range(json_reader_1, 9495, 27, 242, 242)).
code(json_reader_1_code34, modifier, json_reader_1_code33, (modifiers, 0), range(json_reader_1, 9495, 7, 242, 242)).
code(json_reader_1_code35, primitive_type, json_reader_1_code33, type, range(json_reader_1, 9503, 3, 242, 242)).
code(json_reader_1_code36, variable_declaration_fragment, json_reader_1_code33, (fragments, 0), range(json_reader_1, 9507, 14, 242, 242)).
code(json_reader_1_code38, modifier, json_reader_1_code37, (modifiers, 0), range(json_reader_1, 9525, 7, 243, 243)).
code(json_reader_1_code37, field_declaration, json_reader_1_code2, (body_declarations, 34), range(json_reader_1, 9525, 26, 243, 243)).
code(json_reader_1_code39, primitive_type, json_reader_1_code37, type, range(json_reader_1, 9533, 3, 243, 243)).
code(json_reader_1_code40, variable_declaration_fragment, json_reader_1_code37, (fragments, 0), range(json_reader_1, 9537, 13, 243, 243)).
code(json_reader_1_code41, field_declaration, json_reader_1_code2, (body_declarations, 35), range(json_reader_1, 9555, 25, 245, 245)).
code(json_reader_1_code42, primitive_type, json_reader_1_code41, type, range(json_reader_1, 9555, 3, 245, 245)).
code(json_reader_1_code43, variable_declaration_fragment, json_reader_1_code41, (fragments, 0), range(json_reader_1, 9559, 20, 245, 245)).
code(json_reader_1_code44, field_declaration, json_reader_1_code2, (body_declarations, 39), range(json_reader_1, 10225, 34, 269, 269)).
code(json_reader_1_code45, modifier, json_reader_1_code44, (modifiers, 0), range(json_reader_1, 10225, 7, 269, 269)).
code(json_reader_1_code47, primitive_type, json_reader_1_code46, element_type, range(json_reader_1, 10233, 3, 269, 269)).
code(json_reader_1_code46, array_type, json_reader_1_code44, type, range(json_reader_1, 10233, 5, 269, 269)).
code(json_reader_1_code48, dimension, json_reader_1_code46, (dimensions, 0), range(json_reader_1, 10236, 2, 269, 269)).
code(json_reader_1_code49, variable_declaration_fragment, json_reader_1_code44, (fragments, 0), range(json_reader_1, 10239, 19, 269, 269)).
code(json_reader_1_code50, array_type, json_reader_1_expr3, type, range(json_reader_1, 10251, 7, 269, 269)).
code(json_reader_1_code51, primitive_type, json_reader_1_code50, element_type, range(json_reader_1, 10251, 3, 269, 269)).
code(json_reader_1_code52, dimension, json_reader_1_code50, (dimensions, 0), range(json_reader_1, 10254, 4, 269, 269)).
code(json_reader_1_code54, modifier, json_reader_1_code53, (modifiers, 0), range(json_reader_1, 10262, 7, 270, 270)).
code(json_reader_1_code53, field_declaration, json_reader_1_code2, (body_declarations, 40), range(json_reader_1, 10262, 26, 270, 270)).
code(json_reader_1_code55, primitive_type, json_reader_1_code53, type, range(json_reader_1, 10270, 3, 270, 270)).
code(json_reader_1_code56, variable_declaration_fragment, json_reader_1_code53, (fragments, 0), range(json_reader_1, 10274, 13, 270, 270)).
code(json_reader_1_code57, initializer, json_reader_1_code2, (body_declarations, 41), range(json_reader_1, 10291, 56, 271, 273)).
code(json_reader_1_code59, modifier, json_reader_1_code58, (modifiers, 0), range(json_reader_1, 10814, 7, 283, 283)).
code(json_reader_1_code58, field_declaration, json_reader_1_code2, (body_declarations, 42), range(json_reader_1, 10814, 44, 283, 283)).
code(json_reader_1_code60, array_type, json_reader_1_code58, type, range(json_reader_1, 10822, 8, 283, 283)).
code(json_reader_1_code61, simple_type, json_reader_1_code60, element_type, range(json_reader_1, 10822, 6, 283, 283)).
code(json_reader_1_code62, dimension, json_reader_1_code60, (dimensions, 0), range(json_reader_1, 10828, 2, 283, 283)).
code(json_reader_1_code63, variable_declaration_fragment, json_reader_1_code58, (fragments, 0), range(json_reader_1, 10831, 26, 283, 283)).
code(json_reader_1_code65, simple_type, json_reader_1_code64, element_type, range(json_reader_1, 10847, 6, 283, 283)).
code(json_reader_1_code64, array_type, json_reader_1_expr7, type, range(json_reader_1, 10847, 10, 283, 283)).
code(json_reader_1_code66, dimension, json_reader_1_code64, (dimensions, 0), range(json_reader_1, 10853, 4, 283, 283)).
code(json_reader_1_code68, modifier, json_reader_1_code67, (modifiers, 0), range(json_reader_1, 10861, 7, 284, 284)).
code(json_reader_1_code67, field_declaration, json_reader_1_code2, (body_declarations, 43), range(json_reader_1, 10861, 40, 284, 284)).
code(json_reader_1_code70, primitive_type, json_reader_1_code69, element_type, range(json_reader_1, 10869, 3, 284, 284)).
code(json_reader_1_code69, array_type, json_reader_1_code67, type, range(json_reader_1, 10869, 5, 284, 284)).
code(json_reader_1_code71, dimension, json_reader_1_code69, (dimensions, 0), range(json_reader_1, 10872, 2, 284, 284)).
code(json_reader_1_code72, variable_declaration_fragment, json_reader_1_code67, (fragments, 0), range(json_reader_1, 10875, 25, 284, 284)).
code(json_reader_1_code73, array_type, json_reader_1_expr8, type, range(json_reader_1, 10893, 7, 284, 284)).
code(json_reader_1_code74, primitive_type, json_reader_1_code73, element_type, range(json_reader_1, 10893, 3, 284, 284)).
code(json_reader_1_code75, dimension, json_reader_1_code73, (dimensions, 0), range(json_reader_1, 10896, 4, 284, 284)).
code(json_reader_1_code76, method_declaration, json_reader_1_code2, (body_declarations, 44), range(json_reader_1, 10905, 222, 286, 294)).
code(json_reader_1_code77, modifier, json_reader_1_code76, (modifiers, 0), range(json_reader_1, 10995, 6, 289, 289)).
code(json_reader_1_code78, single_variable_declaration, json_reader_1_code76, (parameters, 0), range(json_reader_1, 11013, 9, 289, 289)).
code(json_reader_1_code79, simple_type, json_reader_1_code78, type, range(json_reader_1, 11013, 6, 289, 289)).
code(json_reader_1_code80, method_declaration, json_reader_1_code2, (body_declarations, 45), range(json_reader_1, 11131, 1635, 296, 327)).
code(json_reader_1_code81, method_declaration, json_reader_1_code2, (body_declarations, 46), range(json_reader_1, 12770, 134, 329, 334)).
code(json_reader_1_code82, method_declaration, json_reader_1_code2, (body_declarations, 52), range(json_reader_1, 15523, 1063, 423, 463)).
code(json_reader_1_code83, primitive_type, json_reader_1_stmt6, type, range(json_reader_1, 15646, 3, 427, 427)).
code(json_reader_1_code84, variable_declaration_fragment, json_reader_1_stmt6, (fragments, 0), range(json_reader_1, 15650, 10, 427, 427)).
code(json_reader_1_code85, method_declaration, json_reader_1_code2, (body_declarations, 53), range(json_reader_1, 16590, 3981, 465, 599)).
code(json_reader_1_code86, primitive_type, json_reader_1_stmt11, type, range(json_reader_1, 16628, 3, 466, 466)).
code(json_reader_1_code87, variable_declaration_fragment, json_reader_1_stmt11, (fragments, 0), range(json_reader_1, 16632, 32, 466, 466)).
code(json_reader_1_code88, primitive_type, json_reader_1_stmt20, type, range(json_reader_1, 19370, 3, 553, 553)).
code(json_reader_1_code89, variable_declaration_fragment, json_reader_1_stmt20, (fragments, 0), range(json_reader_1, 19374, 27, 553, 553)).
code(json_reader_1_code90, method_declaration, json_reader_1_code2, (body_declarations, 71), range(json_reader_1, 41506, 870, 1276, 1308)).
code(json_reader_1_code91, array_type, json_reader_1_stmt23, type, range(json_reader_1, 41736, 6, 1282, 1282)).
code(json_reader_1_code92, primitive_type, json_reader_1_code91, element_type, range(json_reader_1, 41736, 4, 1282, 1282)).
code(json_reader_1_code93, dimension, json_reader_1_code91, (dimensions, 0), range(json_reader_1, 41740, 2, 1282, 1282)).
code(json_reader_1_code94, variable_declaration_fragment, json_reader_1_stmt23, (fragments, 0), range(json_reader_1, 41743, 20, 1282, 1282)).
code(json_reader_1_code95, method_declaration, json_reader_1_code2, (body_declarations, 74), range(json_reader_1, 42499, 2702, 1318, 1412)).
code(json_reader_1_code96, array_type, json_reader_1_stmt33, type, range(json_reader_1, 43351, 6, 1333, 1333)).
code(json_reader_1_code97, primitive_type, json_reader_1_code96, element_type, range(json_reader_1, 43351, 4, 1333, 1333)).
code(json_reader_1_code98, dimension, json_reader_1_code96, (dimensions, 0), range(json_reader_1, 43355, 2, 1333, 1333)).
code(json_reader_1_code99, variable_declaration_fragment, json_reader_1_stmt33, (fragments, 0), range(json_reader_1, 43358, 20, 1333, 1333)).
code(json_reader_1_code100, primitive_type, json_reader_1_stmt34, type, range(json_reader_1, 43384, 3, 1334, 1334)).
code(json_reader_1_code101, variable_declaration_fragment, json_reader_1_stmt34, (fragments, 0), range(json_reader_1, 43388, 7, 1334, 1334)).
code(json_reader_1_code102, primitive_type, json_reader_1_stmt35, type, range(json_reader_1, 43401, 3, 1335, 1335)).
code(json_reader_1_code103, variable_declaration_fragment, json_reader_1_stmt35, (fragments, 0), range(json_reader_1, 43405, 9, 1335, 1335)).
code(json_reader_1_code104, primitive_type, json_reader_1_stmt42, type, range(json_reader_1, 43580, 3, 1346, 1346)).
code(json_reader_1_code105, variable_declaration_fragment, json_reader_1_stmt42, (fragments, 0), range(json_reader_1, 43584, 15, 1346, 1346)).
code(json_reader_1_code106, method_declaration, json_reader_1_code2, (body_declarations, 82), range(json_reader_1, 49387, 575, 1570, 1590)).
code(json_reader_1_code107, primitive_type, json_reader_1_expr82, type, range(json_reader_1, 49725, 3, 1582, 1582)).
code(json_reader_1_code108, variable_declaration_fragment, json_reader_1_expr82, (fragments, 0), range(json_reader_1, 49729, 5, 1582, 1582)).
code(json_reader_1_code109, initializer, json_reader_1_code2, (body_declarations, 83), range(json_reader_1, 49966, 967, 1592, 1616)).
code(json_reader_1_code110, simple_type, json_reader_1_expr90, type, range(json_reader_1, 50019, 24, 1593, 1593)).
code(json_reader_1_code111, anonymous_class_declaration, json_reader_1_expr90, anonymous_class_declaration, range(json_reader_1, 50046, 882, 1593, 1615)).
%json_adapter_null_safe_test_1 - com.google.gson.regression.JsonAdapterNullSafeTest
code(json_adapter_null_safe_test_1_code1, compilation_unit, range(json_adapter_null_safe_test_1, 0, 2204, 1, -1)).
code(json_adapter_null_safe_test_1_code2, type_declaration, json_adapter_null_safe_test_1_code1, (types, 0), range(json_adapter_null_safe_test_1, 865, 1338, 26, 62)).
code(json_adapter_null_safe_test_1_code3, modifier, json_adapter_null_safe_test_1_code2, (modifiers, 0), range(json_adapter_null_safe_test_1, 865, 6, 26, 26)).
code(json_adapter_null_safe_test_1_code4, simple_type, json_adapter_null_safe_test_1_code2, superclass_type, range(json_adapter_null_safe_test_1, 910, 8, 26, 26)).
code(json_adapter_null_safe_test_1_code5, field_declaration, json_adapter_null_safe_test_1_code2, (body_declarations, 0), range(json_adapter_null_safe_test_1, 923, 37, 27, 27)).
code(json_adapter_null_safe_test_1_code6, modifier, json_adapter_null_safe_test_1_code5, (modifiers, 0), range(json_adapter_null_safe_test_1, 923, 7, 27, 27)).
code(json_adapter_null_safe_test_1_code7, modifier, json_adapter_null_safe_test_1_code5, (modifiers, 1), range(json_adapter_null_safe_test_1, 931, 5, 27, 27)).
code(json_adapter_null_safe_test_1_code8, simple_type, json_adapter_null_safe_test_1_code5, type, range(json_adapter_null_safe_test_1, 937, 4, 27, 27)).
code(json_adapter_null_safe_test_1_code9, variable_declaration_fragment, json_adapter_null_safe_test_1_code5, (fragments, 0), range(json_adapter_null_safe_test_1, 942, 17, 27, 27)).
code(json_adapter_null_safe_test_1_code10, simple_type, json_adapter_null_safe_test_1_expr1, type, range(json_adapter_null_safe_test_1, 953, 4, 27, 27)).
code(json_adapter_null_safe_test_1_code11, method_declaration, json_adapter_null_safe_test_1_code2, (body_declarations, 1), range(json_adapter_null_safe_test_1, 964, 130, 29, 32)).
code(json_adapter_null_safe_test_1_code12, simple_type, json_adapter_null_safe_test_1_stmt1, type, range(json_adapter_null_safe_test_1, 1026, 6, 30, 30)).
code(json_adapter_null_safe_test_1_code13, variable_declaration_fragment, json_adapter_null_safe_test_1_stmt1, (fragments, 0), range(json_adapter_null_safe_test_1, 1033, 31, 30, 30)).
code(json_adapter_null_safe_test_1_code14, simple_type, json_adapter_null_safe_test_1_expr2, type, range(json_adapter_null_safe_test_1, 1046, 6, 30, 30)).
code(json_adapter_null_safe_test_1_code15, method_declaration, json_adapter_null_safe_test_1_code2, (body_declarations, 2), range(json_adapter_null_safe_test_1, 1098, 176, 34, 37)).
code(json_adapter_null_safe_test_1_code16, simple_type, json_adapter_null_safe_test_1_stmt3, type, range(json_adapter_null_safe_test_1, 1162, 6, 35, 35)).
code(json_adapter_null_safe_test_1_code17, variable_declaration_fragment, json_adapter_null_safe_test_1_stmt3, (fragments, 0), range(json_adapter_null_safe_test_1, 1169, 58, 35, 35)).
code(json_adapter_null_safe_test_1_code18, simple_type, json_adapter_null_safe_test_1_expr5, type, range(json_adapter_null_safe_test_1, 1214, 6, 35, 35)).
code(json_adapter_null_safe_test_1_code19, type_declaration, json_adapter_null_safe_test_1_code2, (body_declarations, 3), range(json_adapter_null_safe_test_1, 1278, 923, 39, 61)).
code(json_adapter_null_safe_test_1_code20, simple_type, json_adapter_null_safe_test_1_expr7, type, range(json_adapter_null_safe_test_1, 1291, 25, 39, 39)).
code(json_adapter_null_safe_test_1_code21, type_declaration, json_adapter_null_safe_test_1_code19, (body_declarations, 2), range(json_adapter_null_safe_test_1, 1432, 765, 46, 60)).
code(json_adapter_null_safe_test_1_code22, method_declaration, json_adapter_null_safe_test_1_code21, (body_declarations, 1), range(json_adapter_null_safe_test_1, 1769, 422, 51, 59)).
code(json_adapter_null_safe_test_1_code23, simple_type, json_adapter_null_safe_test_1_expr8, type, range(json_adapter_null_safe_test_1, 2134, 11, 58, 58)).
%array_type_adapter_1 - com.google.gson.internal.bind.ArrayTypeAdapter
code(array_type_adapter_1_code1, compilation_unit, range(array_type_adapter_1, 0, 3208, 1, -1)).
code(array_type_adapter_1_code2, type_declaration, array_type_adapter_1_code1, (types, 0), range(array_type_adapter_1, 1148, 2059, 35, 97)).
code(array_type_adapter_1_code4, modifier, array_type_adapter_1_code3, (modifiers, 0), range(array_type_adapter_1, 1257, 6, 39, 39)).
code(array_type_adapter_1_code3, field_declaration, array_type_adapter_1_code2, (body_declarations, 0), range(array_type_adapter_1, 1257, 669, 39, 52)).
code(array_type_adapter_1_code5, modifier, array_type_adapter_1_code3, (modifiers, 1), range(array_type_adapter_1, 1264, 6, 39, 39)).
code(array_type_adapter_1_code6, modifier, array_type_adapter_1_code3, (modifiers, 2), range(array_type_adapter_1, 1271, 5, 39, 39)).
code(array_type_adapter_1_code7, simple_type, array_type_adapter_1_code3, type, range(array_type_adapter_1, 1277, 18, 39, 39)).
code(array_type_adapter_1_code8, variable_declaration_fragment, array_type_adapter_1_code3, (fragments, 0), range(array_type_adapter_1, 1296, 629, 39, 52)).
code(array_type_adapter_1_code9, simple_type, array_type_adapter_1_expr1, type, range(array_type_adapter_1, 1310, 18, 39, 39)).
code(array_type_adapter_1_code10, anonymous_class_declaration, array_type_adapter_1_expr1, anonymous_class_declaration, range(array_type_adapter_1, 1331, 594, 39, 52)).
code(array_type_adapter_1_code11, method_declaration, array_type_adapter_1_code10, (body_declarations, 0), range(array_type_adapter_1, 1337, 584, 40, 51)).
code(array_type_adapter_1_code12, simple_type, array_type_adapter_1_stmt1, type, range(array_type_adapter_1, 1472, 4, 42, 42)).
code(array_type_adapter_1_code13, variable_declaration_fragment, array_type_adapter_1_stmt1, (fragments, 0), range(array_type_adapter_1, 1477, 26, 42, 42)).
code(array_type_adapter_1_code14, simple_type, array_type_adapter_1_expr6, right_operand, range(array_type_adapter_1, 1533, 16, 43, 43)).
code(array_type_adapter_1_code15, simple_type, array_type_adapter_1_expr8, right_operand, range(array_type_adapter_1, 1569, 5, 43, 43)).
code(array_type_adapter_1_code16, parameterized_type, array_type_adapter_1_expr11, type, range(array_type_adapter_1, 1580, 8, 43, 43)).
code(array_type_adapter_1_code17, simple_type, array_type_adapter_1_code16, type, range(array_type_adapter_1, 1580, 5, 43, 43)).
code(array_type_adapter_1_code18, wildcard_type, array_type_adapter_1_code16, (type_arguments, 0), range(array_type_adapter_1, 1586, 1, 43, 43)).
%json_reader_internal_access_1 - com.google.gson.internal.JsonReaderInternalAccess
code(json_reader_internal_access_1_code1, compilation_unit, range(json_reader_internal_access_1, 0, 1064, 1, -1)).
code(json_reader_internal_access_1_code2, type_declaration, json_reader_internal_access_1_code1, (types, 0), range(json_reader_internal_access_1, 707, 356, 22, 32)).
code(json_reader_internal_access_1_code3, modifier, json_reader_internal_access_1_code2, (modifiers, 0), range(json_reader_internal_access_1, 792, 6, 25, 25)).
code(json_reader_internal_access_1_code4, modifier, json_reader_internal_access_1_code2, (modifiers, 1), range(json_reader_internal_access_1, 799, 8, 25, 25)).
%streams_1 - com.google.gson.internal.Streams
code(streams_1_code1, compilation_unit, range(streams_1, 0, 3728, 1, -1)).
code(streams_1_code2, type_declaration, streams_1_code1, (types, 0), range(streams_1, 1097, 2630, 32, 121)).
code(streams_1_code3, method_declaration, streams_1_code2, (body_declarations, 3), range(streams_1, 2369, 199, 75, 78)).
code(streams_1_code4, simple_type, streams_1_expr2, right_operand, range(streams_1, 2500, 6, 77, 77)).
code(streams_1_code5, simple_type, streams_1_expr3, type, range(streams_1, 2510, 6, 77, 77)).
code(streams_1_code6, simple_type, streams_1_expr4, type, range(streams_1, 2535, 16, 77, 77)).
%date_type_adapter_1 - com.google.gson.internal.bind.DateTypeAdapter
code(date_type_adapter_1_code1, compilation_unit, range(date_type_adapter_1, 0, 3010, 1, -1)).
code(date_type_adapter_1_code2, type_declaration, date_type_adapter_1_code1, (types, 0), range(date_type_adapter_1, 1182, 1827, 35, 88)).
code(date_type_adapter_1_code4, modifier, date_type_adapter_1_code3, (modifiers, 0), range(date_type_adapter_1, 1528, 6, 42, 42)).
code(date_type_adapter_1_code3, field_declaration, date_type_adapter_1_code2, (body_declarations, 0), range(date_type_adapter_1, 1528, 358, 42, 47)).
code(date_type_adapter_1_code5, modifier, date_type_adapter_1_code3, (modifiers, 1), range(date_type_adapter_1, 1535, 6, 42, 42)).
code(date_type_adapter_1_code6, modifier, date_type_adapter_1_code3, (modifiers, 2), range(date_type_adapter_1, 1542, 5, 42, 42)).
code(date_type_adapter_1_code7, simple_type, date_type_adapter_1_code3, type, range(date_type_adapter_1, 1548, 18, 42, 42)).
code(date_type_adapter_1_code8, variable_declaration_fragment, date_type_adapter_1_code3, (fragments, 0), range(date_type_adapter_1, 1567, 318, 42, 47)).
code(date_type_adapter_1_code9, simple_type, date_type_adapter_1_expr1, type, range(date_type_adapter_1, 1581, 18, 42, 42)).
code(date_type_adapter_1_code10, anonymous_class_declaration, date_type_adapter_1_expr1, anonymous_class_declaration, range(date_type_adapter_1, 1602, 283, 42, 47)).
code(date_type_adapter_1_code11, method_declaration, date_type_adapter_1_code10, (body_declarations, 0), range(date_type_adapter_1, 1608, 273, 43, 46)).
code(date_type_adapter_1_code12, simple_type, date_type_adapter_1_expr6, type, range(date_type_adapter_1, 1816, 4, 45, 45)).
code(date_type_adapter_1_code14, simple_type, date_type_adapter_1_code13, type, range(date_type_adapter_1, 1830, 11, 45, 45)).
code(date_type_adapter_1_code13, parameterized_type, date_type_adapter_1_expr4, type, range(date_type_adapter_1, 1830, 14, 45, 45)).
code(date_type_adapter_1_code15, simple_type, date_type_adapter_1_code13, (type_arguments, 0), range(date_type_adapter_1, 1842, 1, 45, 45)).
code(date_type_adapter_1_code16, simple_type, date_type_adapter_1_expr7, type, range(date_type_adapter_1, 1850, 15, 45, 45)).
%object_type_adapter_1 - com.google.gson.internal.bind.ObjectTypeAdapter
code(object_type_adapter_1_code1, compilation_unit, range(object_type_adapter_1, 0, 2967, 1, -1)).
code(object_type_adapter_1_code2, type_declaration, object_type_adapter_1_code1, (types, 0), range(object_type_adapter_1, 1066, 1900, 33, 109)).
code(object_type_adapter_1_code3, field_declaration, object_type_adapter_1_code2, (body_declarations, 0), range(object_type_adapter_1, 1276, 335, 38, 46)).
code(object_type_adapter_1_code4, modifier, object_type_adapter_1_code3, (modifiers, 0), range(object_type_adapter_1, 1276, 6, 38, 38)).
code(object_type_adapter_1_code5, modifier, object_type_adapter_1_code3, (modifiers, 1), range(object_type_adapter_1, 1283, 6, 38, 38)).
code(object_type_adapter_1_code6, modifier, object_type_adapter_1_code3, (modifiers, 2), range(object_type_adapter_1, 1290, 5, 38, 38)).
code(object_type_adapter_1_code7, simple_type, object_type_adapter_1_code3, type, range(object_type_adapter_1, 1296, 18, 38, 38)).
code(object_type_adapter_1_code8, variable_declaration_fragment, object_type_adapter_1_code3, (fragments, 0), range(object_type_adapter_1, 1315, 295, 38, 46)).
code(object_type_adapter_1_code9, simple_type, object_type_adapter_1_expr1, type, range(object_type_adapter_1, 1329, 18, 38, 38)).
code(object_type_adapter_1_code10, anonymous_class_declaration, object_type_adapter_1_expr1, anonymous_class_declaration, range(object_type_adapter_1, 1350, 260, 38, 46)).
code(object_type_adapter_1_code11, method_declaration, object_type_adapter_1_code10, (body_declarations, 0), range(object_type_adapter_1, 1356, 250, 39, 45)).
code(object_type_adapter_1_code12, simple_type, object_type_adapter_1_expr4, type, range(object_type_adapter_1, 1497, 6, 41, 41)).
%gson_1 - com.google.gson.Gson
code(gson_1_code1, compilation_unit, range(gson_1, 0, 43042, 1, -1)).
code(gson_1_code2, type_declaration, gson_1_code1, (types, 0), range(gson_1, 2211, 40830, 58, 981)).
code(gson_1_code3, field_declaration, gson_1_code2, (body_declarations, 8), range(gson_1, 4643, 528, 113, 121)).
code(gson_1_code4, modifier, gson_1_code3, (modifiers, 0), range(gson_1, 5031, 7, 120, 120)).
code(gson_1_code5, modifier, gson_1_code3, (modifiers, 1), range(gson_1, 5039, 5, 120, 120)).
code(gson_1_code7, simple_type, gson_1_code6, type, range(gson_1, 5045, 11, 120, 120)).
code(gson_1_code6, parameterized_type, gson_1_code3, type, range(gson_1, 5045, 52, 120, 120)).
code(gson_1_code9, simple_type, gson_1_code8, type, range(gson_1, 5057, 3, 120, 120)).
code(gson_1_code8, parameterized_type, gson_1_code6, (type_arguments, 0), range(gson_1, 5057, 39, 120, 120)).
code(gson_1_code11, simple_type, gson_1_code10, type, range(gson_1, 5061, 9, 120, 120)).
code(gson_1_code10, parameterized_type, gson_1_code8, (type_arguments, 0), range(gson_1, 5061, 12, 120, 120)).
code(gson_1_code12, wildcard_type, gson_1_code10, (type_arguments, 0), range(gson_1, 5071, 1, 120, 120)).
code(gson_1_code14, simple_type, gson_1_code13, type, range(gson_1, 5075, 17, 120, 120)).
code(gson_1_code13, parameterized_type, gson_1_code8, (type_arguments, 1), range(gson_1, 5075, 20, 120, 120)).
code(gson_1_code15, wildcard_type, gson_1_code13, (type_arguments, 0), range(gson_1, 5093, 1, 120, 120)).
code(gson_1_code16, variable_declaration_fragment, gson_1_code3, (fragments, 0), range(gson_1, 5098, 72, 120, 121)).
code(gson_1_code17, field_declaration, gson_1_code2, (body_declarations, 9), range(gson_1, 5175, 144, 123, 124)).
code(gson_1_code18, modifier, gson_1_code17, (modifiers, 0), range(gson_1, 5175, 7, 123, 123)).
code(gson_1_code19, modifier, gson_1_code17, (modifiers, 1), range(gson_1, 5183, 5, 123, 123)).
code(gson_1_code21, simple_type, gson_1_code20, type, range(gson_1, 5189, 3, 123, 123)).
code(gson_1_code20, parameterized_type, gson_1_code17, type, range(gson_1, 5189, 33, 123, 123)).
code(gson_1_code22, parameterized_type, gson_1_code20, (type_arguments, 0), range(gson_1, 5193, 12, 123, 123)).
code(gson_1_code23, simple_type, gson_1_code22, type, range(gson_1, 5193, 9, 123, 123)).
code(gson_1_code24, wildcard_type, gson_1_code22, (type_arguments, 0), range(gson_1, 5203, 1, 123, 123)).
code(gson_1_code26, simple_type, gson_1_code25, type, range(gson_1, 5207, 11, 123, 123)).
code(gson_1_code25, parameterized_type, gson_1_code20, (type_arguments, 1), range(gson_1, 5207, 14, 123, 123)).
code(gson_1_code27, wildcard_type, gson_1_code25, (type_arguments, 0), range(gson_1, 5219, 1, 123, 123)).
code(gson_1_code28, variable_declaration_fragment, gson_1_code17, (fragments, 0), range(gson_1, 5223, 95, 123, 124)).
code(gson_1_code29, field_declaration, gson_1_code2, (body_declarations, 17), range(gson_1, 5638, 279, 135, 140)).
code(gson_1_code30, modifier, gson_1_code29, (modifiers, 0), range(gson_1, 5638, 5, 135, 135)).
code(gson_1_code31, simple_type, gson_1_code29, type, range(gson_1, 5644, 26, 135, 135)).
code(gson_1_code32, variable_declaration_fragment, gson_1_code29, (fragments, 0), range(gson_1, 5671, 245, 135, 140)).
code(gson_1_code33, simple_type, gson_1_expr3, type, range(gson_1, 5700, 26, 135, 135)).
code(gson_1_code34, anonymous_class_declaration, gson_1_expr3, anonymous_class_declaration, range(gson_1, 5729, 187, 135, 140)).
code(gson_1_code35, field_declaration, gson_1_code2, (body_declarations, 18), range(gson_1, 5921, 304, 142, 149)).
code(gson_1_code36, modifier, gson_1_code35, (modifiers, 0), range(gson_1, 5921, 5, 142, 142)).
code(gson_1_code37, simple_type, gson_1_code35, type, range(gson_1, 5927, 24, 142, 142)).
code(gson_1_code38, variable_declaration_fragment, gson_1_code35, (fragments, 0), range(gson_1, 5952, 272, 142, 149)).
code(gson_1_code39, simple_type, gson_1_expr4, type, range(gson_1, 5979, 24, 142, 142)).
code(gson_1_code40, anonymous_class_declaration, gson_1_expr4, anonymous_class_declaration, range(gson_1, 6006, 218, 142, 149)).
code(gson_1_code41, method_declaration, gson_1_code2, (body_declarations, 19), range(gson_1, 6229, 3040, 151, 191)).
code(gson_1_code42, method_declaration, gson_1_code2, (body_declarations, 20), range(gson_1, 9273, 3842, 193, 265)).
code(gson_1_code45, simple_type, gson_1_code44, type, range(gson_1, 9680, 4, 198, 198)).
code(gson_1_code44, parameterized_type, gson_1_code43, type, range(gson_1, 9680, 24, 198, 198)).
code(gson_1_code43, single_variable_declaration, gson_1_code42, (parameters, 11), range(gson_1, 9680, 45, 198, 198)).
code(gson_1_code46, simple_type, gson_1_code44, (type_arguments, 0), range(gson_1, 9685, 18, 198, 198)).
code(gson_1_code47, simple_type, gson_1_expr10, type, range(gson_1, 9767, 22, 199, 199)).
code(gson_1_code48, parameterized_type, gson_1_stmt8, type, range(gson_1, 10020, 24, 206, 206)).
code(gson_1_code49, simple_type, gson_1_code48, type, range(gson_1, 10020, 4, 206, 206)).
code(gson_1_code50, simple_type, gson_1_code48, (type_arguments, 0), range(gson_1, 10025, 18, 206, 206)).
code(gson_1_code51, variable_declaration_fragment, gson_1_stmt8, (fragments, 0), range(gson_1, 10045, 47, 206, 206)).
code(gson_1_code53, simple_type, gson_1_code52, type, range(gson_1, 10061, 9, 206, 206)).
code(gson_1_code52, parameterized_type, gson_1_expr27, type, range(gson_1, 10061, 29, 206, 206)).
code(gson_1_code54, simple_type, gson_1_code52, (type_arguments, 0), range(gson_1, 10071, 18, 206, 206)).
code(gson_1_code55, parameterized_type, gson_1_stmt18, type, range(gson_1, 10721, 19, 224, 224)).
code(gson_1_code56, simple_type, gson_1_code55, type, range(gson_1, 10721, 11, 224, 224)).
code(gson_1_code57, simple_type, gson_1_code55, (type_arguments, 0), range(gson_1, 10733, 6, 224, 224)).
code(gson_1_code58, variable_declaration_fragment, gson_1_stmt18, (fragments, 0), range(gson_1, 10741, 50, 224, 224)).
code(gson_1_code59, primitive_type, gson_1_expr40, type, range(gson_1, 10835, 4, 225, 225)).
code(gson_1_code60, simple_type, gson_1_expr41, type, range(gson_1, 10847, 4, 225, 225)).
code(gson_1_code61, primitive_type, gson_1_expr44, type, range(gson_1, 10916, 6, 226, 226)).
code(gson_1_code62, simple_type, gson_1_expr45, type, range(gson_1, 10930, 6, 226, 226)).
code(gson_1_code63, primitive_type, gson_1_expr49, type, range(gson_1, 11052, 5, 228, 228)).
code(gson_1_code64, simple_type, gson_1_expr50, type, range(gson_1, 11065, 5, 228, 228)).
code(gson_1_code65, simple_type, gson_1_expr57, type, range(gson_1, 11345, 10, 233, 233)).
code(gson_1_code66, simple_type, gson_1_expr61, type, range(gson_1, 11439, 15, 234, 234)).
code(gson_1_code67, simple_type, gson_1_expr69, type, range(gson_1, 11767, 10, 239, 239)).
code(gson_1_code68, simple_type, gson_1_expr72, type, range(gson_1, 11855, 10, 240, 240)).
code(gson_1_code69, simple_type, gson_1_expr88, type, range(gson_1, 12647, 28, 257, 257)).
code(gson_1_code70, simple_type, gson_1_expr90, type, range(gson_1, 12724, 21, 258, 258)).
code(gson_1_code71, simple_type, gson_1_expr92, type, range(gson_1, 12822, 39, 259, 259)).
code(gson_1_code72, simple_type, gson_1_expr95, type, range(gson_1, 12956, 28, 261, 261)).
code(gson_1_code73, method_declaration, gson_1_code2, (body_declarations, 21), range(gson_1, 13119, 736, 267, 289)).
code(gson_1_code74, parameterized_type, gson_1_expr100, type, range(gson_1, 13310, 19, 271, 271)).
code(gson_1_code75, simple_type, gson_1_code74, type, range(gson_1, 13310, 11, 271, 271)).
code(gson_1_code76, simple_type, gson_1_code74, (type_arguments, 0), range(gson_1, 13322, 6, 271, 271)).
code(gson_1_code77, anonymous_class_declaration, gson_1_expr100, anonymous_class_declaration, range(gson_1, 13332, 518, 271, 288)).
code(gson_1_code78, method_declaration, gson_1_code2, (body_declarations, 22), range(gson_1, 13859, 737, 291, 313)).
code(gson_1_code80, simple_type, gson_1_code79, type, range(gson_1, 14048, 11, 295, 295)).
code(gson_1_code79, parameterized_type, gson_1_expr101, type, range(gson_1, 14048, 19, 295, 295)).
code(gson_1_code81, simple_type, gson_1_code79, (type_arguments, 0), range(gson_1, 14060, 6, 295, 295)).
code(gson_1_code82, anonymous_class_declaration, gson_1_expr101, anonymous_class_declaration, range(gson_1, 14070, 521, 295, 312)).
code(gson_1_code83, method_declaration, gson_1_code2, (body_declarations, 24), range(gson_1, 14947, 679, 323, 343)).
code(gson_1_code84, method_declaration, gson_1_code2, (body_declarations, 25), range(gson_1, 15630, 482, 345, 355)).
code(gson_1_code85, parameterized_type, gson_1_expr104, type, range(gson_1, 15743, 23, 346, 346)).
code(gson_1_code86, simple_type, gson_1_code85, type, range(gson_1, 15743, 11, 346, 346)).
code(gson_1_code87, simple_type, gson_1_code85, (type_arguments, 0), range(gson_1, 15755, 10, 346, 346)).
code(gson_1_code88, anonymous_class_declaration, gson_1_expr104, anonymous_class_declaration, range(gson_1, 15769, 327, 346, 354)).
code(gson_1_code89, method_declaration, gson_1_code2, (body_declarations, 26), range(gson_1, 16116, 976, 357, 382)).
code(gson_1_code90, parameterized_type, gson_1_expr106, type, range(gson_1, 16239, 28, 358, 358)).
code(gson_1_code91, simple_type, gson_1_code90, type, range(gson_1, 16239, 11, 358, 358)).
code(gson_1_code92, simple_type, gson_1_code90, (type_arguments, 0), range(gson_1, 16251, 15, 358, 358)).
code(gson_1_code93, anonymous_class_declaration, gson_1_expr106, anonymous_class_declaration, range(gson_1, 16270, 806, 358, 381)).
code(gson_1_code94, method_declaration, gson_1_code2, (body_declarations, 27), range(gson_1, 17096, 1481, 384, 431)).
code(gson_1_code95, parameterized_type, gson_1_stmt61, type, range(gson_1, 17363, 14, 392, 392)).
code(gson_1_code96, simple_type, gson_1_code95, type, range(gson_1, 17363, 11, 392, 392)).
code(gson_1_code97, wildcard_type, gson_1_code95, (type_arguments, 0), range(gson_1, 17375, 1, 392, 392)).
code(gson_1_code98, variable_declaration_fragment, gson_1_stmt61, (fragments, 0), range(gson_1, 17378, 33, 392, 392)).
code(gson_1_code100, simple_type, gson_1_code99, type, range(gson_1, 17488, 3, 397, 397)).
code(gson_1_code99, parameterized_type, gson_1_stmt63, type, range(gson_1, 17488, 39, 397, 397)).
code(gson_1_code102, simple_type, gson_1_code101, type, range(gson_1, 17492, 9, 397, 397)).
code(gson_1_code101, parameterized_type, gson_1_code99, (type_arguments, 0), range(gson_1, 17492, 12, 397, 397)).
code(gson_1_code103, wildcard_type, gson_1_code101, (type_arguments, 0), range(gson_1, 17502, 1, 397, 397)).
code(gson_1_code104, parameterized_type, gson_1_code99, (type_arguments, 1), range(gson_1, 17506, 20, 397, 397)).
code(gson_1_code105, simple_type, gson_1_code104, type, range(gson_1, 17506, 17, 397, 397)).
code(gson_1_code106, wildcard_type, gson_1_code104, (type_arguments, 0), range(gson_1, 17524, 1, 397, 397)).
code(gson_1_code107, variable_declaration_fragment, gson_1_stmt63, (fragments, 0), range(gson_1, 17528, 25, 397, 397)).
code(gson_1_code108, primitive_type, gson_1_stmt64, type, range(gson_1, 17559, 7, 398, 398)).
code(gson_1_code109, variable_declaration_fragment, gson_1_stmt64, (fragments, 0), range(gson_1, 17567, 34, 398, 398)).
code(gson_1_code110, parameterized_type, gson_1_expr112, type, range(gson_1, 17658, 43, 400, 400)).
code(gson_1_code111, simple_type, gson_1_code110, type, range(gson_1, 17658, 7, 400, 400)).
code(gson_1_code112, parameterized_type, gson_1_code110, (type_arguments, 0), range(gson_1, 17666, 12, 400, 400)).
code(gson_1_code113, simple_type, gson_1_code112, type, range(gson_1, 17666, 9, 400, 400)).
code(gson_1_code114, wildcard_type, gson_1_code112, (type_arguments, 0), range(gson_1, 17676, 1, 400, 400)).
code(gson_1_code115, parameterized_type, gson_1_code110, (type_arguments, 1), range(gson_1, 17680, 20, 400, 400)).
code(gson_1_code116, simple_type, gson_1_code115, type, range(gson_1, 17680, 17, 400, 400)).
code(gson_1_code117, wildcard_type, gson_1_code115, (type_arguments, 0), range(gson_1, 17698, 1, 400, 400)).
code(gson_1_code118, parameterized_type, gson_1_stmt69, type, range(gson_1, 17841, 20, 406, 406)).
code(gson_1_code119, simple_type, gson_1_code118, type, range(gson_1, 17841, 17, 406, 406)).
code(gson_1_code120, simple_type, gson_1_code118, (type_arguments, 0), range(gson_1, 17859, 1, 406, 406)).
code(gson_1_code121, variable_declaration_fragment, gson_1_stmt69, (fragments, 0), range(gson_1, 17862, 58, 406, 406)).
code(gson_1_code123, simple_type, gson_1_code122, type, range(gson_1, 17877, 17, 406, 406)).
code(gson_1_code122, parameterized_type, gson_1_expr115, type, range(gson_1, 17877, 20, 406, 406)).
code(gson_1_code124, simple_type, gson_1_code122, (type_arguments, 0), range(gson_1, 17895, 1, 406, 406)).
code(gson_1_code126, simple_type, gson_1_code125, type, range(gson_1, 18002, 17, 412, 412)).
code(gson_1_code125, parameterized_type, gson_1_stmt72, type, range(gson_1, 18002, 20, 412, 412)).
code(gson_1_code127, simple_type, gson_1_code125, (type_arguments, 0), range(gson_1, 18020, 1, 412, 412)).
code(gson_1_code128, variable_declaration_fragment, gson_1_stmt72, (fragments, 0), range(gson_1, 18023, 33, 412, 412)).
code(gson_1_code130, simple_type, gson_1_code129, type, range(gson_1, 18034, 17, 412, 412)).
code(gson_1_code129, parameterized_type, gson_1_expr118, type, range(gson_1, 18034, 20, 412, 412)).
code(gson_1_code131, simple_type, gson_1_code129, (type_arguments, 0), range(gson_1, 18052, 1, 412, 412)).
code(gson_1_code132, single_variable_declaration, gson_1_stmt74, parameter, range(gson_1, 18105, 26, 415, 415)).
code(gson_1_code133, simple_type, gson_1_code132, type, range(gson_1, 18105, 18, 415, 415)).
code(gson_1_code134, parameterized_type, gson_1_stmt75, type, range(gson_1, 18155, 14, 416, 416)).
code(gson_1_code135, simple_type, gson_1_code134, type, range(gson_1, 18155, 11, 416, 416)).
code(gson_1_code136, simple_type, gson_1_code134, (type_arguments, 0), range(gson_1, 18167, 1, 416, 416)).
code(gson_1_code137, variable_declaration_fragment, gson_1_stmt75, (fragments, 0), range(gson_1, 18170, 38, 416, 416)).
code(gson_1_code138, method_declaration, gson_1_code2, (body_declarations, 28), range(gson_1, 18581, 3506, 433, 504)).
code(gson_1_code139, primitive_type, gson_1_stmt80, type, range(gson_1, 21396, 7, 484, 484)).
code(gson_1_code140, variable_declaration_fragment, gson_1_stmt80, (fragments, 0), range(gson_1, 21404, 21, 484, 484)).
code(gson_1_code142, simple_type, gson_1_code141, type, range(gson_1, 21705, 18, 490, 490)).
code(gson_1_code141, single_variable_declaration, gson_1_stmt83, parameter, range(gson_1, 21705, 26, 490, 490)).
code(gson_1_code144, simple_type, gson_1_code143, type, range(gson_1, 21885, 11, 498, 498)).
code(gson_1_code143, parameterized_type, gson_1_stmt85, type, range(gson_1, 21885, 14, 498, 498)).
code(gson_1_code145, simple_type, gson_1_code143, (type_arguments, 0), range(gson_1, 21897, 1, 498, 498)).
code(gson_1_code146, variable_declaration_fragment, gson_1_stmt85, (fragments, 0), range(gson_1, 21900, 38, 498, 498)).
code(gson_1_code147, method_declaration, gson_1_code2, (body_declarations, 32), range(gson_1, 24306, 1021, 558, 576)).
code(gson_1_code148, method_declaration, gson_1_code2, (body_declarations, 33), range(gson_1, 25331, 1025, 578, 597)).
code(gson_1_code149, simple_type, gson_1_stmt88, type, range(gson_1, 26245, 12, 594, 594)).
code(gson_1_code150, variable_declaration_fragment, gson_1_stmt88, (fragments, 0), range(gson_1, 26258, 27, 594, 594)).
code(gson_1_code151, simple_type, gson_1_expr134, type, range(gson_1, 26271, 12, 594, 594)).
code(gson_1_code152, method_declaration, gson_1_code2, (body_declarations, 35), range(gson_1, 27463, 1179, 621, 644)).
code(gson_1_code153, simple_type, gson_1_stmt91, type, range(gson_1, 28449, 10, 639, 639)).
code(gson_1_code154, variable_declaration_fragment, gson_1_stmt91, (fragments, 0), range(gson_1, 28460, 63, 639, 639)).
code(gson_1_code155, method_declaration, gson_1_code2, (body_declarations, 36), range(gson_1, 28646, 925, 646, 669)).
code(gson_1_code157, simple_type, gson_1_code156, type, range(gson_1, 28961, 11, 653, 653)).
code(gson_1_code156, parameterized_type, gson_1_stmt93, type, range(gson_1, 28961, 14, 653, 653)).
code(gson_1_code158, wildcard_type, gson_1_code156, (type_arguments, 0), range(gson_1, 28973, 1, 653, 653)).
code(gson_1_code159, variable_declaration_fragment, gson_1_stmt93, (fragments, 0), range(gson_1, 28976, 46, 653, 653)).
code(gson_1_code160, method_declaration, gson_1_code2, (body_declarations, 39), range(gson_1, 30593, 447, 701, 714)).
code(gson_1_code161, simple_type, gson_1_stmt95, type, range(gson_1, 30850, 10, 708, 708)).
code(gson_1_code162, variable_declaration_fragment, gson_1_stmt95, (fragments, 0), range(gson_1, 30861, 35, 708, 708)).
code(gson_1_code163, simple_type, gson_1_expr141, type, range(gson_1, 30878, 10, 708, 708)).
code(gson_1_code164, method_declaration, gson_1_code2, (body_declarations, 40), range(gson_1, 31044, 257, 716, 723)).
code(gson_1_code165, simple_type, gson_1_stmt99, type, range(gson_1, 31191, 10, 720, 720)).
code(gson_1_code166, variable_declaration_fragment, gson_1_stmt99, (fragments, 0), range(gson_1, 31202, 35, 720, 720)).
code(gson_1_code167, simple_type, gson_1_expr143, type, range(gson_1, 31219, 10, 720, 720)).
code(gson_1_code168, method_declaration, gson_1_code2, (body_declarations, 42), range(gson_1, 32078, 1288, 747, 767)).
code(gson_1_code169, simple_type, gson_1_stmt102, type, range(gson_1, 33263, 6, 765, 765)).
code(gson_1_code170, variable_declaration_fragment, gson_1_stmt102, (fragments, 0), range(gson_1, 33270, 40, 765, 765)).
code(gson_1_code171, simple_type, gson_1_expr146, type, range(gson_1, 33295, 4, 765, 765)).
code(gson_1_code172, method_declaration, gson_1_code2, (body_declarations, 43), range(gson_1, 33370, 1386, 769, 795)).
code(gson_1_code173, simple_type, gson_1_stmt104, type, range(gson_1, 34642, 12, 792, 792)).
code(gson_1_code174, variable_declaration_fragment, gson_1_stmt104, (fragments, 0), range(gson_1, 34655, 31, 792, 792)).
code(gson_1_code175, simple_type, gson_1_expr148, type, range(gson_1, 34668, 12, 792, 792)).
code(gson_1_code176, simple_type, gson_1_stmt105, type, range(gson_1, 34692, 1, 793, 793)).
code(gson_1_code177, variable_declaration_fragment, gson_1_stmt105, (fragments, 0), range(gson_1, 34694, 38, 793, 793)).
code(gson_1_code178, simple_type, gson_1_expr149, type, range(gson_1, 34704, 1, 793, 793)).
code(gson_1_code179, method_declaration, gson_1_code2, (body_declarations, 45), range(gson_1, 36282, 1429, 822, 847)).
code(gson_1_code180, simple_type, gson_1_stmt106, type, range(gson_1, 37547, 10, 843, 843)).
code(gson_1_code181, variable_declaration_fragment, gson_1_stmt106, (fragments, 0), range(gson_1, 37558, 32, 843, 843)).
code(gson_1_code182, simple_type, gson_1_stmt107, type, range(gson_1, 37596, 1, 844, 844)).
code(gson_1_code183, variable_declaration_fragment, gson_1_stmt107, (fragments, 0), range(gson_1, 37598, 42, 844, 844)).
code(gson_1_code184, simple_type, gson_1_expr152, type, range(gson_1, 37608, 1, 844, 844)).
code(gson_1_code185, method_declaration, gson_1_code2, (body_declarations, 47), range(gson_1, 38112, 1499, 861, 898)).
code(gson_1_code186, primitive_type, gson_1_stmt108, type, range(gson_1, 38697, 7, 871, 871)).
code(gson_1_code187, variable_declaration_fragment, gson_1_stmt108, (fragments, 0), range(gson_1, 38705, 14, 871, 871)).
code(gson_1_code188, primitive_type, gson_1_stmt109, type, range(gson_1, 38725, 7, 872, 872)).
code(gson_1_code189, variable_declaration_fragment, gson_1_stmt109, (fragments, 0), range(gson_1, 38733, 31, 872, 872)).
code(gson_1_code190, parameterized_type, gson_1_stmt114, type, range(gson_1, 38855, 12, 877, 877)).
code(gson_1_code191, simple_type, gson_1_code190, type, range(gson_1, 38855, 9, 877, 877)).
code(gson_1_code192, simple_type, gson_1_code190, (type_arguments, 0), range(gson_1, 38865, 1, 877, 877)).
code(gson_1_code193, variable_declaration_fragment, gson_1_stmt114, (fragments, 0), range(gson_1, 38868, 49, 877, 877)).
code(gson_1_code194, parameterized_type, gson_1_expr158, type, range(gson_1, 38881, 12, 877, 877)).
code(gson_1_code195, simple_type, gson_1_code194, type, range(gson_1, 38881, 9, 877, 877)).
code(gson_1_code196, simple_type, gson_1_code194, (type_arguments, 0), range(gson_1, 38891, 1, 877, 877)).
code(gson_1_code198, simple_type, gson_1_code197, type, range(gson_1, 38925, 11, 878, 878)).
code(gson_1_code197, parameterized_type, gson_1_stmt115, type, range(gson_1, 38925, 14, 878, 878)).
code(gson_1_code199, simple_type, gson_1_code197, (type_arguments, 0), range(gson_1, 38937, 1, 878, 878)).
code(gson_1_code200, variable_declaration_fragment, gson_1_stmt115, (fragments, 0), range(gson_1, 38940, 35, 878, 878)).
code(gson_1_code201, type_declaration, gson_1_code2, (body_declarations, 50), range(gson_1, 42101, 652, 947, 970)).
code(gson_1_code202, modifier, gson_1_code201, (modifiers, 0), range(gson_1, 42101, 6, 947, 947)).
code(gson_1_code203, type_parameter, gson_1_code201, (type_parameters, 0), range(gson_1, 42132, 1, 947, 947)).
code(gson_1_code204, parameterized_type, gson_1_code201, superclass_type, range(gson_1, 42143, 14, 947, 947)).
code(gson_1_code205, simple_type, gson_1_code204, type, range(gson_1, 42143, 11, 947, 947)).
code(gson_1_code206, simple_type, gson_1_code204, (type_arguments, 0), range(gson_1, 42155, 1, 947, 947)).
%constructor_constructor_1 - com.google.gson.internal.ConstructorConstructor
code(constructor_constructor_1_code1, compilation_unit, range(constructor_constructor_1, 0, 8368, 1, -1)).
code(constructor_constructor_1_code2, type_declaration, constructor_constructor_1_code1, (types, 0), range(constructor_constructor_1, 1465, 6902, 45, 236)).
code(constructor_constructor_1_code4, modifier, constructor_constructor_1_code3, (modifiers, 0), range(constructor_constructor_1, 1658, 6, 51, 51)).
code(constructor_constructor_1_code3, method_declaration, constructor_constructor_1_code2, (body_declarations, 1), range(constructor_constructor_1, 1658, 129, 51, 53)).
code(constructor_constructor_1_code5, single_variable_declaration, constructor_constructor_1_code3, (parameters, 0), range(constructor_constructor_1, 1688, 46, 51, 51)).
code(constructor_constructor_1_code7, simple_type, constructor_constructor_1_code6, type, range(constructor_constructor_1, 1688, 3, 51, 51)).
code(constructor_constructor_1_code6, parameterized_type, constructor_constructor_1_code5, type, range(constructor_constructor_1, 1688, 29, 51, 51)).
code(constructor_constructor_1_code8, simple_type, constructor_constructor_1_code6, (type_arguments, 0), range(constructor_constructor_1, 1692, 4, 51, 51)).
code(constructor_constructor_1_code10, simple_type, constructor_constructor_1_code9, type, range(constructor_constructor_1, 1698, 15, 51, 51)).
code(constructor_constructor_1_code9, parameterized_type, constructor_constructor_1_code6, (type_arguments, 1), range(constructor_constructor_1, 1698, 18, 51, 51)).
code(constructor_constructor_1_code11, wildcard_type, constructor_constructor_1_code9, (type_arguments, 0), range(constructor_constructor_1, 1714, 1, 51, 51)).
code(constructor_constructor_1_code12, method_declaration, constructor_constructor_1_code2, (body_declarations, 2), range(constructor_constructor_1, 1791, 1370, 55, 95)).
code(constructor_constructor_1_code13, modifier, constructor_constructor_1_stmt2, (modifiers, 0), range(constructor_constructor_1, 1857, 5, 56, 56)).
code(constructor_constructor_1_code14, simple_type, constructor_constructor_1_stmt2, type, range(constructor_constructor_1, 1863, 4, 56, 56)).
code(constructor_constructor_1_code15, variable_declaration_fragment, constructor_constructor_1_stmt2, (fragments, 0), range(constructor_constructor_1, 1868, 26, 56, 56)).
code(constructor_constructor_1_code16, modifier, constructor_constructor_1_stmt3, (modifiers, 0), range(constructor_constructor_1, 1900, 5, 57, 57)).
code(constructor_constructor_1_code17, parameterized_type, constructor_constructor_1_stmt3, type, range(constructor_constructor_1, 1906, 16, 57, 57)).
code(constructor_constructor_1_code18, simple_type, constructor_constructor_1_code17, type, range(constructor_constructor_1, 1906, 5, 57, 57)).
code(constructor_constructor_1_code19, wildcard_type, constructor_constructor_1_code17, (type_arguments, 0), range(constructor_constructor_1, 1912, 9, 57, 57)).
code(constructor_constructor_1_code20, simple_type, constructor_constructor_1_code19, bound, range(constructor_constructor_1, 1920, 1, 57, 57)).
code(constructor_constructor_1_code21, variable_declaration_fragment, constructor_constructor_1_stmt3, (fragments, 0), range(constructor_constructor_1, 1923, 32, 57, 57)).
code(constructor_constructor_1_code22, modifier, constructor_constructor_1_stmt4, (modifiers, 1), range(constructor_constructor_1, 2055, 5, 62, 62)).
code(constructor_constructor_1_code23, parameterized_type, constructor_constructor_1_stmt4, type, range(constructor_constructor_1, 2061, 18, 62, 62)).
code(constructor_constructor_1_code24, simple_type, constructor_constructor_1_code23, type, range(constructor_constructor_1, 2061, 15, 62, 62)).
code(constructor_constructor_1_code25, simple_type, constructor_constructor_1_code23, (type_arguments, 0), range(constructor_constructor_1, 2077, 1, 62, 62)).
code(constructor_constructor_1_code26, variable_declaration_fragment, constructor_constructor_1_stmt4, (fragments, 0), range(constructor_constructor_1, 2080, 61, 62, 62)).
code(constructor_constructor_1_code27, parameterized_type, constructor_constructor_1_expr6, type, range(constructor_constructor_1, 2095, 18, 62, 62)).
code(constructor_constructor_1_code28, simple_type, constructor_constructor_1_code27, type, range(constructor_constructor_1, 2095, 15, 62, 62)).
code(constructor_constructor_1_code29, simple_type, constructor_constructor_1_code27, (type_arguments, 0), range(constructor_constructor_1, 2111, 1, 62, 62)).
code(constructor_constructor_1_code30, modifier, constructor_constructor_1_stmt6, (modifiers, 1), range(constructor_constructor_1, 2446, 5, 73, 73)).
code(constructor_constructor_1_code31, parameterized_type, constructor_constructor_1_stmt6, type, range(constructor_constructor_1, 2452, 18, 73, 73)).
code(constructor_constructor_1_code32, simple_type, constructor_constructor_1_code31, type, range(constructor_constructor_1, 2452, 15, 73, 73)).
code(constructor_constructor_1_code33, simple_type, constructor_constructor_1_code31, (type_arguments, 0), range(constructor_constructor_1, 2468, 1, 73, 73)).
code(constructor_constructor_1_code34, variable_declaration_fragment, constructor_constructor_1_stmt6, (fragments, 0), range(constructor_constructor_1, 2471, 75, 73, 74)).
code(constructor_constructor_1_code35, parameterized_type, constructor_constructor_1_stmt8, type, range(constructor_constructor_1, 2749, 20, 83, 83)).
code(constructor_constructor_1_code36, simple_type, constructor_constructor_1_code35, type, range(constructor_constructor_1, 2749, 17, 83, 83)).
code(constructor_constructor_1_code37, simple_type, constructor_constructor_1_code35, (type_arguments, 0), range(constructor_constructor_1, 2767, 1, 83, 83)).
code(constructor_constructor_1_code38, variable_declaration_fragment, constructor_constructor_1_stmt8, (fragments, 0), range(constructor_constructor_1, 2770, 51, 83, 83)).
code(constructor_constructor_1_code39, method_declaration, constructor_constructor_1_code2, (body_declarations, 3), range(constructor_constructor_1, 3165, 1186, 97, 125)).
code(constructor_constructor_1_code40, modifier, constructor_constructor_1_stmt12, (modifiers, 0), range(constructor_constructor_1, 3264, 5, 99, 99)).
code(constructor_constructor_1_code41, parameterized_type, constructor_constructor_1_stmt12, type, range(constructor_constructor_1, 3270, 22, 99, 99)).
code(constructor_constructor_1_code42, simple_type, constructor_constructor_1_code41, type, range(constructor_constructor_1, 3270, 11, 99, 99)).
code(constructor_constructor_1_code43, wildcard_type, constructor_constructor_1_code41, (type_arguments, 0), range(constructor_constructor_1, 3282, 9, 99, 99)).
code(constructor_constructor_1_code44, simple_type, constructor_constructor_1_code43, bound, range(constructor_constructor_1, 3290, 1, 99, 99)).
code(constructor_constructor_1_code45, variable_declaration_fragment, constructor_constructor_1_stmt12, (fragments, 0), range(constructor_constructor_1, 3293, 46, 99, 99)).
code(constructor_constructor_1_code46, parameterized_type, constructor_constructor_1_expr17, type, range(constructor_constructor_1, 3448, 20, 103, 103)).
code(constructor_constructor_1_code47, simple_type, constructor_constructor_1_code46, type, range(constructor_constructor_1, 3448, 17, 103, 103)).
code(constructor_constructor_1_code48, simple_type, constructor_constructor_1_code46, (type_arguments, 0), range(constructor_constructor_1, 3466, 1, 103, 103)).
code(constructor_constructor_1_code49, anonymous_class_declaration, constructor_constructor_1_expr17, anonymous_class_declaration, range(constructor_constructor_1, 3471, 810, 103, 121)).
code(constructor_constructor_1_code50, method_declaration, constructor_constructor_1_code49, (body_declarations, 0), range(constructor_constructor_1, 3481, 792, 104, 120)).
code(constructor_constructor_1_code51, array_type, constructor_constructor_1_stmt17, type, range(constructor_constructor_1, 3623, 8, 107, 107)).
code(constructor_constructor_1_code52, simple_type, constructor_constructor_1_code51, element_type, range(constructor_constructor_1, 3623, 6, 107, 107)).
code(constructor_constructor_1_code53, dimension, constructor_constructor_1_code51, (dimensions, 0), range(constructor_constructor_1, 3629, 2, 107, 107)).
code(constructor_constructor_1_code54, variable_declaration_fragment, constructor_constructor_1_stmt17, (fragments, 0), range(constructor_constructor_1, 3632, 11, 107, 107)).
code(constructor_constructor_1_code55, simple_type, constructor_constructor_1_expr18, type, range(constructor_constructor_1, 3665, 1, 108, 108)).
%reflective_type_adapter_factory_1 - com.google.gson.internal.bind.ReflectiveTypeAdapterFactory
code(reflective_type_adapter_factory_1_code1, compilation_unit, range(reflective_type_adapter_factory_1, 0, 9292, 1, -1)).
code(reflective_type_adapter_factory_1_code2, type_declaration, reflective_type_adapter_factory_1_code1, (types, 0), range(reflective_type_adapter_factory_1, 1640, 7651, 45, 248)).
code(reflective_type_adapter_factory_1_code3, method_declaration, reflective_type_adapter_factory_1_code2, (body_declarations, 3), range(reflective_type_adapter_factory_1, 1954, 288, 53, 58)).
code(reflective_type_adapter_factory_1_code5, simple_type, reflective_type_adapter_factory_1_code4, type, range(reflective_type_adapter_factory_1, 2043, 19, 54, 54)).
code(reflective_type_adapter_factory_1_code4, single_variable_declaration, reflective_type_adapter_factory_1_code3, (parameters, 1), range(reflective_type_adapter_factory_1, 2043, 37, 54, 54)).
code(reflective_type_adapter_factory_1_code7, simple_type, reflective_type_adapter_factory_1_code6, type, range(reflective_type_adapter_factory_1, 2082, 8, 54, 54)).
code(reflective_type_adapter_factory_1_code6, single_variable_declaration, reflective_type_adapter_factory_1_code3, (parameters, 2), range(reflective_type_adapter_factory_1, 2082, 17, 54, 54)).
%type_token_1 - com.google.gson.reflect.TypeToken
code(type_token_1_code1, compilation_unit, range(type_token_1, 0, 9576, 1, -1)).
code(type_token_1_code2, type_declaration, type_token_1_code1, (types, 0), range(type_token_1, 934, 8641, 28, 305)).
code(type_token_1_code3, method_declaration, type_token_1_code2, (body_declarations, 4), range(type_token_1, 2247, 317, 67, 75)).
code(type_token_1_code4, single_variable_declaration, type_token_1_code3, (parameters, 0), range(type_token_1, 2351, 9, 71, 71)).
code(type_token_1_code5, simple_type, type_token_1_code4, type, range(type_token_1, 2351, 4, 71, 71)).
code(type_token_1_code6, parameterized_type, type_token_1_expr8, type, range(type_token_1, 2466, 16, 73, 73)).
code(type_token_1_code7, simple_type, type_token_1_code6, type, range(type_token_1, 2466, 5, 73, 73)).
code(type_token_1_code8, wildcard_type, type_token_1_code6, (type_arguments, 0), range(type_token_1, 2472, 9, 73, 73)).
code(type_token_1_code9, simple_type, type_token_1_code8, bound, range(type_token_1, 2480, 1, 73, 73)).
code(type_token_1_code10, method_declaration, type_token_1_code2, (body_declarations, 6), range(type_token_1, 3071, 135, 90, 95)).
code(type_token_1_code11, method_declaration, type_token_1_code2, (body_declarations, 7), range(type_token_1, 3210, 106, 97, 102)).
code(type_token_1_code12, method_declaration, type_token_1_code2, (body_declarations, 16), range(type_token_1, 8925, 69, 279, 281)).
code(type_token_1_code13, method_declaration, type_token_1_code2, (body_declarations, 19), range(type_token_1, 9247, 159, 292, 297)).
code(type_token_1_code15, simple_type, type_token_1_code14, type, range(type_token_1, 9378, 9, 296, 296)).
code(type_token_1_code14, parameterized_type, type_token_1_expr21, type, range(type_token_1, 9378, 17, 296, 296)).
code(type_token_1_code16, simple_type, type_token_1_code14, (type_arguments, 0), range(type_token_1, 9388, 6, 296, 296)).
code(type_token_1_code17, method_declaration, type_token_1_code2, (body_declarations, 20), range(type_token_1, 9410, 163, 299, 304)).
code(type_token_1_code18, parameterized_type, type_token_1_expr22, type, range(type_token_1, 9550, 12, 303, 303)).
code(type_token_1_code19, simple_type, type_token_1_code18, type, range(type_token_1, 9550, 9, 303, 303)).
code(type_token_1_code20, simple_type, type_token_1_code18, (type_arguments, 0), range(type_token_1, 9560, 1, 303, 303)).
%json_token_1 - com.google.gson.stream.JsonToken
code(json_token_1_code1, compilation_unit, range(json_token_1, 0, 2072, 1, -1)).
code(json_token_1_code2, enum_declaration, json_token_1_code1, (types, 0), range(json_token_1, 634, 1437, 19, 85)).
code(json_token_1_code3, modifier, json_token_1_code2, (modifiers, 0), range(json_token_1, 744, 6, 25, 25)).
code(json_token_1_code4, enum_constant_declaration, json_token_1_code2, (enum_constants, 0), range(json_token_1, 771, 152, 27, 31)).
code(json_token_1_code5, enum_constant_declaration, json_token_1_code2, (enum_constants, 1), range(json_token_1, 928, 146, 33, 37)).
code(json_token_1_code6, enum_constant_declaration, json_token_1_code2, (enum_constants, 2), range(json_token_1, 1079, 156, 39, 43)).
code(json_token_1_code7, enum_constant_declaration, json_token_1_code2, (enum_constants, 3), range(json_token_1, 1240, 150, 45, 49)).
code(json_token_1_code8, enum_constant_declaration, json_token_1_code2, (enum_constants, 4), range(json_token_1, 1395, 199, 51, 56)).
code(json_token_1_code9, enum_constant_declaration, json_token_1_code2, (enum_constants, 5), range(json_token_1, 1599, 38, 58, 61)).
code(json_token_1_code10, enum_constant_declaration, json_token_1_code2, (enum_constants, 6), range(json_token_1, 1642, 122, 63, 67)).
code(json_token_1_code11, enum_constant_declaration, json_token_1_code2, (enum_constants, 7), range(json_token_1, 1769, 62, 69, 72)).
code(json_token_1_code12, enum_constant_declaration, json_token_1_code2, (enum_constants, 8), range(json_token_1, 1836, 42, 74, 77)).
code(json_token_1_code13, enum_constant_declaration, json_token_1_code2, (enum_constants, 9), range(json_token_1, 1883, 186, 79, 84)).

%%% Name References

name_ref(t_array_type_adapter_8, type, 'ArrayTypeAdapter', 'Lcom/google/gson/internal/bind/ArrayTypeAdapter<>;').
name_ref(t_collections_9, type, 'Collections', 'Ljava/util/Collections;').
name_ref(t_date_type_adapter_5, type, 'DateTypeAdapter', 'Lcom/google/gson/internal/bind/DateTypeAdapter;').
name_ref(t_excluder_2, type, 'Excluder', 'Lcom/google/gson/internal/Excluder;').
name_ref(t_field_naming_policy_1, type, 'FieldNamingPolicy', 'Lcom/google/gson/FieldNamingPolicy;').
name_ref(t_future_type_adapter_13, type, 'FutureTypeAdapter', 'Lcom/google/gson/Gson$FutureTypeAdapter<TT;>;').
name_ref(t_gson_preconditions_20, type, '$Gson$Preconditions', 'Lcom/google/gson/internal/$Gson$Preconditions;').
name_ref(t_gson_types_19, type, '$Gson$Types', 'Lcom/google/gson/internal/$Gson$Types;').
name_ref(t_json_adapter_22, type, 'JsonAdapter', 'Lcom/google/gson/annotations/JsonAdapter;').
name_ref(t_json_adapter_null_safe_test_21, type, 'JsonAdapterNullSafeTest', 'Lcom/google/gson/regression/JsonAdapterNullSafeTest;').
name_ref(t_json_reader_internal_access_18, type, 'JsonReaderInternalAccess', 'Lcom/google/gson/internal/JsonReaderInternalAccess;').
name_ref(t_json_scope_23, type, 'JsonScope', 'Lcom/google/gson/stream/JsonScope;').
name_ref(t_json_token_24, type, 'JsonToken', 'Lcom/google/gson/stream/JsonToken;').
name_ref(t_long_serialization_policy_10, type, 'LongSerializationPolicy', 'Lcom/google/gson/LongSerializationPolicy;').
name_ref(t_modifier_17, type, 'Modifier', 'Ljava/lang/reflect/Modifier;').
name_ref(t_object_type_adapter_4, type, 'ObjectTypeAdapter', 'Lcom/google/gson/internal/bind/ObjectTypeAdapter;').
name_ref(t_sql_date_type_adapter_7, type, 'SqlDateTypeAdapter', 'Lcom/google/gson/internal/bind/SqlDateTypeAdapter;').
name_ref(t_streams_11, type, 'Streams', 'Lcom/google/gson/internal/Streams;').
name_ref(t_string_25, type, 'String', 'Ljava/lang/String;').
name_ref(t_t_14, type, 'T', 'Lcom/google/gson/Gson$FutureTypeAdapter;:TT;').
name_ref(t_t_16, type, 'T', 'Lcom/google/gson/TypeAdapter;:TT;').
name_ref(t_time_type_adapter_6, type, 'TimeTypeAdapter', 'Lcom/google/gson/internal/bind/TimeTypeAdapter;').
name_ref(t_type_adapter_15, type, 'TypeAdapter', 'Lcom/google/gson/TypeAdapter<TT;>;').
name_ref(t_type_adapters_3, type, 'TypeAdapters', 'Lcom/google/gson/internal/bind/TypeAdapters;').
name_ref(t_type_token_12, type, 'TypeToken', 'Lcom/google/gson/reflect/TypeToken<>;').
name_ref(f_default_33, field, 'DEFAULT', 'gson_1;DEFAULT_line_186').
name_ref(f_identity_1, field, 'IDENTITY', 'gson_1;IDENTITY_line_186').
name_ref(v_adapter_106, var, 'adapter', 'Lcom/google/gson/Gson;.toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/stream/JsonWriter;)V|Lcom/google/gson/JsonIOException;#adapter').
name_ref(v_annotation_257, var, 'annotation', 'Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;.create<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;#annotation').
name_ref(v_args_173, var, 'args', 'Lcom/google/gson/internal/ConstructorConstructor$3448;.construct()TT;#0#0#args').
name_ref(v_buffer_580, var, 'buffer', 'Lcom/google/gson/stream/JsonReader;.fillBuffer(I)Z|Ljava/io/IOException;#buffer').
name_ref(v_buffer_583, var, 'buffer', 'Lcom/google/gson/stream/JsonReader;.nextNonWhitespace(Z)I|Ljava/io/IOException;#buffer').
name_ref(v_c_573, var, 'c', 'Lcom/google/gson/stream/JsonReader;.doPeek()I|Ljava/io/IOException;#c').
name_ref(v_c_586, var, 'c', 'Lcom/google/gson/stream/JsonReader;.nextNonWhitespace(Z)I|Ljava/io/IOException;#0#c').
name_ref(v_cached_77, var, 'cached', 'Lcom/google/gson/Gson;.getAdapter<T:Ljava/lang/Object;>(Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;#cached').
name_ref(v_call_81, var, 'call', 'Lcom/google/gson/Gson;.getAdapter<T:Ljava/lang/Object;>(Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;#0#0#call').
name_ref(v_candidate_83, var, 'candidate', 'Lcom/google/gson/Gson;.getAdapter<T:Ljava/lang/Object;>(Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;#0#0#0#0#candidate').
name_ref(v_candidate_88, var, 'candidate', 'Lcom/google/gson/Gson;.getDelegateAdapter<T:Ljava/lang/Object;>(Lcom/google/gson/TypeAdapterFactory;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;#0#0#candidate').
name_ref(v_constructor_172, var, 'constructor', 'Lcom/google/gson/internal/ConstructorConstructor;.newDefaultConstructor<T:Ljava/lang/Object;>(Ljava/lang/Class<-TT;>;)Lcom/google/gson/internal/ObjectConstructor<TT;>;#0#0#constructor').
name_ref(v_default_constructor_170, var, 'defaultConstructor', 'Lcom/google/gson/internal/ConstructorConstructor;.get<T:Ljava/lang/Object;>(Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/internal/ObjectConstructor<TT;>;#defaultConstructor').
name_ref(v_device_550, var, 'device', 'Lcom/google/gson/regression/JsonAdapterNullSafeTest;.testNullSafeBugSerialize()V|Ljava/lang/Exception;#device').
name_ref(v_device_551, var, 'device', 'Lcom/google/gson/regression/JsonAdapterNullSafeTest;.testNullSafeBugDeserialize()V|Ljava/lang/Exception;#device').
name_ref(v_exclusion_strategy_202, var, 'exclusionStrategy', 'Lcom/google/gson/internal/Excluder;.excludeClass(Ljava/lang/Class<*>;Z)Z#0#exclusionStrategy').
name_ref(v_factories_52, var, 'factories', 'Lcom/google/gson/Gson;.(Lcom/google/gson/internal/Excluder;Lcom/google/gson/FieldNamingStrategy;Ljava/util/Map<Ljava/lang/reflect/Type;Lcom/google/gson/InstanceCreator<*>;>;ZZZZZZZLcom/google/gson/LongSerializationPolicy;Ljava/util/List<Lcom/google/gson/TypeAdapterFactory;>;)V#factories').
name_ref(v_factory_82, var, 'factory', 'Lcom/google/gson/Gson;.getAdapter<T:Ljava/lang/Object;>(Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;#0#0#0#factory').
name_ref(v_factory_87, var, 'factory', 'Lcom/google/gson/Gson;.getDelegateAdapter<T:Ljava/lang/Object;>(Lcom/google/gson/TypeAdapterFactory;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;#0#factory').
name_ref(v_i_589, var, 'i', 'Lcom/google/gson/stream/JsonReader;.consumeNonExecutePrefix()V|Ljava/io/IOException;#0#i').
name_ref(v_i_602, var, 'i', 'Lcom/google/gson/stream/JsonWriter;#0#i').
name_ref(v_is_empty_133, var, 'isEmpty', 'Lcom/google/gson/Gson;.fromJson<T:Ljava/lang/Object;>(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)TT;|Lcom/google/gson/JsonIOException;|Lcom/google/gson/JsonSyntaxException;#isEmpty').
name_ref(v_json_reader_113, var, 'jsonReader', 'Lcom/google/gson/Gson;.newJsonReader(Ljava/io/Reader;)Lcom/google/gson/stream/JsonReader;#jsonReader').
name_ref(v_json_reader_127, var, 'jsonReader', 'Lcom/google/gson/Gson;.fromJson<T:Ljava/lang/Object;>(Ljava/io/Reader;Ljava/lang/reflect/Type;)TT;|Lcom/google/gson/JsonIOException;|Lcom/google/gson/JsonSyntaxException;#jsonReader').
name_ref(v_json_writer_102, var, 'jsonWriter', 'Lcom/google/gson/Gson;.toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V|Lcom/google/gson/JsonIOException;#0#0#jsonWriter').
name_ref(v_json_writer_111, var, 'jsonWriter', 'Lcom/google/gson/Gson;.newJsonWriter(Ljava/io/Writer;)Lcom/google/gson/stream/JsonWriter;|Ljava/io/IOException;#jsonWriter').
name_ref(v_l_585, var, 'l', 'Lcom/google/gson/stream/JsonReader;.nextNonWhitespace(Z)I|Ljava/io/IOException;#l').
name_ref(v_list_201, var, 'list', 'Lcom/google/gson/internal/Excluder;.excludeClass(Ljava/lang/Class<*>;Z)Z#list').
name_ref(v_long_adapter_53, var, 'longAdapter', 'Lcom/google/gson/Gson;.(Lcom/google/gson/internal/Excluder;Lcom/google/gson/FieldNamingStrategy;Ljava/util/Map<Ljava/lang/reflect/Type;Lcom/google/gson/InstanceCreator<*>;>;ZZZZZZZLcom/google/gson/LongSerializationPolicy;Ljava/util/List<Lcom/google/gson/TypeAdapterFactory;>;)V#longAdapter').
name_ref(v_object_118, var, 'object', 'Lcom/google/gson/Gson;.fromJson<T:Ljava/lang/Object;>(Ljava/lang/String;Ljava/lang/Class<TT;>;)TT;|Lcom/google/gson/JsonSyntaxException;#object').
name_ref(v_object_128, var, 'object', 'Lcom/google/gson/Gson;.fromJson<T:Ljava/lang/Object;>(Ljava/io/Reader;Ljava/lang/reflect/Type;)TT;|Lcom/google/gson/JsonIOException;|Lcom/google/gson/JsonSyntaxException;#object').
name_ref(v_old_lenient_134, var, 'oldLenient', 'Lcom/google/gson/Gson;.fromJson<T:Ljava/lang/Object;>(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)TT;|Lcom/google/gson/JsonIOException;|Lcom/google/gson/JsonSyntaxException;#oldLenient').
name_ref(v_ongoing_call_80, var, 'ongoingCall', 'Lcom/google/gson/Gson;.getAdapter<T:Ljava/lang/Object;>(Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;#ongoingCall').
name_ref(v_p_571, var, 'p', 'Lcom/google/gson/stream/JsonReader;.peek()Lcom/google/gson/stream/JsonToken;|Ljava/io/IOException;#p').
name_ref(v_p_584, var, 'p', 'Lcom/google/gson/stream/JsonReader;.nextNonWhitespace(Z)I|Ljava/io/IOException;#p').
name_ref(v_peek_stack_572, var, 'peekStack', 'Lcom/google/gson/stream/JsonReader;.doPeek()I|Ljava/io/IOException;#peekStack').
name_ref(v_raw_type_167, var, 'rawType', 'Lcom/google/gson/internal/ConstructorConstructor;.get<T:Ljava/lang/Object;>(Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/internal/ObjectConstructor<TT;>;#rawType').
name_ref(v_raw_type_191, var, 'rawType', 'Lcom/google/gson/internal/Excluder;.create<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;#rawType').
name_ref(v_raw_type_238, var, 'rawType', 'Lcom/google/gson/internal/bind/CollectionTypeAdapterFactory;.create<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;#rawType').
name_ref(v_raw_type_272, var, 'rawType', 'Lcom/google/gson/internal/bind/MapTypeAdapterFactory;.create<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;#rawType').
name_ref(v_raw_type_510, var, 'rawType', 'Lcom/google/gson/internal/bind/TypeAdapters$28568;.create<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;#rawType').
name_ref(v_raw_type_516, var, 'rawType', 'Lcom/google/gson/internal/bind/TypeAdapters$29301;.create<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;#rawType').
name_ref(v_raw_type_creator_169, var, 'rawTypeCreator', 'Lcom/google/gson/internal/ConstructorConstructor;.get<T:Ljava/lang/Object;>(Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/internal/ObjectConstructor<TT;>;#rawTypeCreator').
name_ref(v_reader_121, var, 'reader', 'Lcom/google/gson/Gson;.fromJson<T:Ljava/lang/Object;>(Ljava/lang/String;Ljava/lang/reflect/Type;)TT;|Lcom/google/gson/JsonSyntaxException;#reader').
name_ref(v_requested_type_521, var, 'requestedType', 'Lcom/google/gson/internal/bind/TypeAdapters$30153;.create<T2:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT2;>;)Lcom/google/gson/TypeAdapter<TT2;>;#requestedType').
name_ref(v_requires_thread_local_cleanup_79, var, 'requiresThreadLocalCleanup', 'Lcom/google/gson/Gson;.getAdapter<T:Ljava/lang/Object;>(Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;#requiresThreadLocalCleanup').
name_ref(v_skip_deserialize_193, var, 'skipDeserialize', 'Lcom/google/gson/internal/Excluder;.create<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;#skipDeserialize').
name_ref(v_skip_past_found_86, var, 'skipPastFound', 'Lcom/google/gson/Gson;.getDelegateAdapter<T:Ljava/lang/Object;>(Lcom/google/gson/TypeAdapterFactory;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;#skipPastFound').
name_ref(v_skip_serialize_192, var, 'skipSerialize', 'Lcom/google/gson/internal/Excluder;.create<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;#skipSerialize').
name_ref(v_target_122, var, 'target', 'Lcom/google/gson/Gson;.fromJson<T:Ljava/lang/Object;>(Ljava/lang/String;Ljava/lang/reflect/Type;)TT;|Lcom/google/gson/JsonSyntaxException;#target').
name_ref(v_thread_calls_78, var, 'threadCalls', 'Lcom/google/gson/Gson;.getAdapter<T:Ljava/lang/Object;>(Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;#threadCalls').
name_ref(v_total_581, var, 'total', 'Lcom/google/gson/stream/JsonReader;.fillBuffer(I)Z|Ljava/io/IOException;#total').
name_ref(v_type_166, var, 'type', 'Lcom/google/gson/internal/ConstructorConstructor;.get<T:Ljava/lang/Object;>(Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/internal/ObjectConstructor<TT;>;#type').
name_ref(v_type_226, var, 'type', 'Lcom/google/gson/internal/bind/ArrayTypeAdapter$1310;.create<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;#type').
name_ref(v_type_237, var, 'type', 'Lcom/google/gson/internal/bind/CollectionTypeAdapterFactory;.create<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;#type').
name_ref(v_type_271, var, 'type', 'Lcom/google/gson/internal/bind/MapTypeAdapterFactory;.create<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;#type').
name_ref(v_type_adapter_136, var, 'typeAdapter', 'Lcom/google/gson/Gson;.fromJson<T:Ljava/lang/Object;>(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)TT;|Lcom/google/gson/JsonIOException;|Lcom/google/gson/JsonSyntaxException;#0#0#typeAdapter').
name_ref(v_type_adapter_264, var, 'typeAdapter', 'Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;.getTypeAdapter(Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<*>;Lcom/google/gson/annotations/JsonAdapter;)Lcom/google/gson/TypeAdapter<*>;#typeAdapter').
name_ref(v_type_adapter_factory_263, var, 'typeAdapterFactory', 'Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;.getTypeAdapter(Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<*>;Lcom/google/gson/annotations/JsonAdapter;)Lcom/google/gson/TypeAdapter<*>;#1#typeAdapterFactory').
name_ref(v_type_creator_168, var, 'typeCreator', 'Lcom/google/gson/internal/ConstructorConstructor;.get<T:Ljava/lang/Object;>(Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/internal/ObjectConstructor<TT;>;#typeCreator').
name_ref(v_type_token_135, var, 'typeToken', 'Lcom/google/gson/Gson;.fromJson<T:Ljava/lang/Object;>(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)TT;|Lcom/google/gson/JsonIOException;|Lcom/google/gson/JsonSyntaxException;#0#0#typeToken').
name_ref(v_value_262, var, 'value', 'Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;.getTypeAdapter(Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<*>;Lcom/google/gson/annotations/JsonAdapter;)Lcom/google/gson/TypeAdapter<*>;#value').
name_ref(v_writer_96, var, 'writer', 'Lcom/google/gson/Gson;.toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;#writer').
name_ref(p_annotation_208, param, 'annotation', 'Lcom/google/gson/internal/Excluder;.isValidSince(Lcom/google/gson/annotations/Since;)Z#annotation#0#0').
name_ref(p_annotation_209, param, 'annotation', 'Lcom/google/gson/internal/Excluder;.isValidUntil(Lcom/google/gson/annotations/Until;)Z#annotation#0#0').
name_ref(p_annotation_261, param, 'annotation', 'Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;.getTypeAdapter(Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<*>;Lcom/google/gson/annotations/JsonAdapter;)Lcom/google/gson/TypeAdapter<*>;#annotation#0#3').
name_ref(p_appendable_214, param, 'appendable', 'Lcom/google/gson/internal/Streams;.writerForAppendable(Ljava/lang/Appendable;)Ljava/io/Writer;#appendable#0#0').
name_ref(p_appendable_215, param, 'appendable', 'Lcom/google/gson/internal/Streams$AppendableWriter;.(Ljava/lang/Appendable;)V#appendable#0#0').
name_ref(p_array_232, param, 'array', 'Lcom/google/gson/internal/bind/ArrayTypeAdapter;.write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V|Ljava/io/IOException;#array#0#1').
name_ref(p_base_511, param, 'base', 'Lcom/google/gson/internal/bind/TypeAdapters;.newFactoryForMultipleTypes<TT:Ljava/lang/Object;>(Ljava/lang/Class<TTT;>;Ljava/lang/Class<+TTT;>;Lcom/google/gson/TypeAdapter<-TTT;>;)Lcom/google/gson/TypeAdapterFactory;#base#0#0').
name_ref(p_bound_fields_334, param, 'boundFields', 'Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;.(Lcom/google/gson/internal/ObjectConstructor<TT;>;Ljava/util/Map<Ljava/lang/String;Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;>;)V#boundFields#0#1').
name_ref(p_boxed_506, param, 'boxed', 'Lcom/google/gson/internal/bind/TypeAdapters;.newFactory<TT:Ljava/lang/Object;>(Ljava/lang/Class<TTT;>;Ljava/lang/Class<TTT;>;Lcom/google/gson/TypeAdapter<-TTT;>;)Lcom/google/gson/TypeAdapterFactory;#boxed#0#1').
name_ref(p_c_575, param, 'c', 'Lcom/google/gson/stream/JsonReader;.isLiteral(C)Z|Ljava/io/IOException;#c#0#0').
name_ref(p_chars_216, param, 'chars', 'Lcom/google/gson/internal/Streams$AppendableWriter;.write([CII)V|Ljava/io/IOException;#chars#0#0').
name_ref(p_class_of_t_117, param, 'classOfT', 'Lcom/google/gson/Gson;.fromJson<T:Ljava/lang/Object;>(Ljava/lang/String;Ljava/lang/Class<TT;>;)TT;|Lcom/google/gson/JsonSyntaxException;#classOfT#0#1').
name_ref(p_class_of_t_124, param, 'classOfT', 'Lcom/google/gson/Gson;.fromJson<T:Ljava/lang/Object;>(Ljava/io/Reader;Ljava/lang/Class<TT;>;)TT;|Lcom/google/gson/JsonSyntaxException;|Lcom/google/gson/JsonIOException;#classOfT#0#1').
name_ref(p_class_of_t_138, param, 'classOfT', 'Lcom/google/gson/Gson;.fromJson<T:Ljava/lang/Object;>(Lcom/google/gson/JsonElement;Ljava/lang/Class<TT;>;)TT;|Lcom/google/gson/JsonSyntaxException;#classOfT#0#1').
name_ref(p_class_of_t_490, param, 'classOfT', 'Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;.(Ljava/lang/Class<TT;>;)V#classOfT#0#0').
name_ref(p_clazz_199, param, 'clazz', 'Lcom/google/gson/internal/Excluder;.excludeClass(Ljava/lang/Class<*>;Z)Z#clazz#0#0').
name_ref(p_clazz_203, param, 'clazz', 'Lcom/google/gson/internal/Excluder;.isAnonymousOrLocal(Ljava/lang/Class<*>;)Z#clazz#0#0').
name_ref(p_clazz_204, param, 'clazz', 'Lcom/google/gson/internal/Excluder;.isInnerClass(Ljava/lang/Class<*>;)Z#clazz#0#0').
name_ref(p_clazz_205, param, 'clazz', 'Lcom/google/gson/internal/Excluder;.isStatic(Ljava/lang/Class<*>;)Z#clazz#0#0').
name_ref(p_clazz_517, param, 'clazz', 'Lcom/google/gson/internal/bind/TypeAdapters;.newTypeHierarchyFactory<T1:Ljava/lang/Object;>(Ljava/lang/Class<TT1;>;Lcom/google/gson/TypeAdapter<TT1;>;)Lcom/google/gson/TypeAdapterFactory;#clazz#0#0').
name_ref(p_close_bracket_619, param, 'closeBracket', 'Lcom/google/gson/stream/JsonWriter;.close(IILjava/lang/String;)Lcom/google/gson/stream/JsonWriter;|Ljava/io/IOException;#closeBracket#0#2').
name_ref(p_cls_530, param, 'cls', 'Lcom/google/gson/reflect/TypeToken;.isAssignableFrom(Ljava/lang/Class<*>;)Z#cls#0#0').
name_ref(p_collection_245, param, 'collection', 'Lcom/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;.write(Lcom/google/gson/stream/JsonWriter;Ljava/util/Collection<TE;>;)V|Ljava/io/IOException;#collection#0#1').
name_ref(p_complex_map_key_serialization_266, param, 'complexMapKeySerialization', 'Lcom/google/gson/internal/bind/MapTypeAdapterFactory;.(Lcom/google/gson/internal/ConstructorConstructor;Z)V#complexMapKeySerialization#0#1').
name_ref(p_complex_map_key_serialization_38, param, 'complexMapKeySerialization', 'Lcom/google/gson/Gson;.(Lcom/google/gson/internal/Excluder;Lcom/google/gson/FieldNamingStrategy;Ljava/util/Map<Ljava/lang/reflect/Type;Lcom/google/gson/InstanceCreator<*>;>;ZZZZZZZLcom/google/gson/LongSerializationPolicy;Ljava/util/List<Lcom/google/gson/TypeAdapterFactory;>;)V#complexMapKeySerialization#0#4').
name_ref(p_component_type_229, param, 'componentType', 'Lcom/google/gson/internal/bind/ArrayTypeAdapter;.(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter<TE;>;Ljava/lang/Class<TE;>;)V#componentType#0#2').
name_ref(p_component_type_adapter_228, param, 'componentTypeAdapter', 'Lcom/google/gson/internal/bind/ArrayTypeAdapter;.(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter<TE;>;Ljava/lang/Class<TE;>;)V#componentTypeAdapter#0#1').
name_ref(p_constructor_242, param, 'constructor', 'Lcom/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;.(Lcom/google/gson/Gson;Ljava/lang/reflect/Type;Lcom/google/gson/TypeAdapter<TE;>;Lcom/google/gson/internal/ObjectConstructor<+Ljava/util/Collection<TE;>;>;)V#constructor#0#3').
name_ref(p_constructor_280, param, 'constructor', 'Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;.(Lcom/google/gson/Gson;Ljava/lang/reflect/Type;Lcom/google/gson/TypeAdapter<TK;>;Ljava/lang/reflect/Type;Lcom/google/gson/TypeAdapter<TV;>;Lcom/google/gson/internal/ObjectConstructor<+Ljava/util/Map<TK;TV;>;>;)V#constructor#0#5').
name_ref(p_constructor_333, param, 'constructor', 'Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;.(Lcom/google/gson/internal/ObjectConstructor<TT;>;Ljava/util/Map<Ljava/lang/String;Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;>;)V#constructor#0#0').
name_ref(p_constructor_constructor_233, param, 'constructorConstructor', 'Lcom/google/gson/internal/bind/CollectionTypeAdapterFactory;.(Lcom/google/gson/internal/ConstructorConstructor;)V#constructorConstructor#0#0').
name_ref(p_constructor_constructor_253, param, 'constructorConstructor', 'Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;.(Lcom/google/gson/internal/ConstructorConstructor;)V#constructorConstructor#0#0').
name_ref(p_constructor_constructor_258, param, 'constructorConstructor', 'Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;.getTypeAdapter(Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<*>;Lcom/google/gson/annotations/JsonAdapter;)Lcom/google/gson/TypeAdapter<*>;#constructorConstructor#0#0').
name_ref(p_constructor_constructor_265, param, 'constructorConstructor', 'Lcom/google/gson/internal/bind/MapTypeAdapterFactory;.(Lcom/google/gson/internal/ConstructorConstructor;Z)V#constructorConstructor#0#0').
name_ref(p_constructor_constructor_292, param, 'constructorConstructor', 'Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;.(Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/FieldNamingStrategy;Lcom/google/gson/internal/Excluder;)V#constructorConstructor#0#0').
name_ref(p_context_227, param, 'context', 'Lcom/google/gson/internal/bind/ArrayTypeAdapter;.(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter<TE;>;Ljava/lang/Class<TE;>;)V#context#0#0').
name_ref(p_context_239, param, 'context', 'Lcom/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;.(Lcom/google/gson/Gson;Ljava/lang/reflect/Type;Lcom/google/gson/TypeAdapter<TE;>;Lcom/google/gson/internal/ObjectConstructor<+Ljava/util/Collection<TE;>;>;)V#context#0#0').
name_ref(p_context_273, param, 'context', 'Lcom/google/gson/internal/bind/MapTypeAdapterFactory;.getKeyAdapter(Lcom/google/gson/Gson;Ljava/lang/reflect/Type;)Lcom/google/gson/TypeAdapter<*>;#context#0#0').
name_ref(p_context_275, param, 'context', 'Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;.(Lcom/google/gson/Gson;Ljava/lang/reflect/Type;Lcom/google/gson/TypeAdapter<TK;>;Ljava/lang/reflect/Type;Lcom/google/gson/TypeAdapter<TV;>;Lcom/google/gson/internal/ObjectConstructor<+Ljava/util/Map<TK;TV;>;>;)V#context#0#0').
name_ref(p_context_308, param, 'context', 'Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;.createBoundField(Lcom/google/gson/Gson;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/google/gson/reflect/TypeToken<*>;ZZ)Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;#context#0#0').
name_ref(p_context_322, param, 'context', 'Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;.getBoundFields(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<*>;Ljava/lang/Class<*>;)Ljava/util/Map<Ljava/lang/String;Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;>;#context#0#0').
name_ref(p_deserialization_188, param, 'deserialization', 'Lcom/google/gson/internal/Excluder;.withExclusionStrategy(Lcom/google/gson/ExclusionStrategy;ZZ)Lcom/google/gson/internal/Excluder;#deserialization#0#2').
name_ref(p_deserialize_313, param, 'deserialize', 'Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;.createBoundField(Lcom/google/gson/Gson;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/google/gson/reflect/TypeToken<*>;ZZ)Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;#deserialize#0#5').
name_ref(p_deserialized_327, param, 'deserialized', 'Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;.(Ljava/lang/String;ZZ)V#deserialized#0#2').
name_ref(p_element_212, param, 'element', 'Lcom/google/gson/internal/Streams;.write(Lcom/google/gson/JsonElement;Lcom/google/gson/stream/JsonWriter;)V|Ljava/io/IOException;#element#0#0').
name_ref(p_element_type_240, param, 'elementType', 'Lcom/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;.(Lcom/google/gson/Gson;Ljava/lang/reflect/Type;Lcom/google/gson/TypeAdapter<TE;>;Lcom/google/gson/internal/ObjectConstructor<+Ljava/util/Collection<TE;>;>;)V#elementType#0#1').
name_ref(p_element_type_adapter_241, param, 'elementTypeAdapter', 'Lcom/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;.(Lcom/google/gson/Gson;Ljava/lang/reflect/Type;Lcom/google/gson/TypeAdapter<TE;>;Lcom/google/gson/internal/ObjectConstructor<+Ljava/util/Collection<TE;>;>;)V#elementTypeAdapter#0#2').
name_ref(p_empty_615, param, 'empty', 'Lcom/google/gson/stream/JsonWriter;.open(ILjava/lang/String;)Lcom/google/gson/stream/JsonWriter;|Ljava/io/IOException;#empty#0#0').
name_ref(p_empty_617, param, 'empty', 'Lcom/google/gson/stream/JsonWriter;.close(IILjava/lang/String;)Lcom/google/gson/stream/JsonWriter;|Ljava/io/IOException;#empty#0#0').
name_ref(p_end_222, param, 'end', 'Lcom/google/gson/internal/Streams$AppendableWriter$CurrentWrite;.subSequence(II)Ljava/lang/CharSequence;#end#0#1').
name_ref(p_excluder_294, param, 'excluder', 'Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;.(Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/FieldNamingStrategy;Lcom/google/gson/internal/Excluder;)V#excluder#0#2').
name_ref(p_excluder_302, param, 'excluder', 'Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;.excludeField(Ljava/lang/reflect/Field;ZLcom/google/gson/internal/Excluder;)Z#excluder#0#2').
name_ref(p_excluder_34, param, 'excluder', 'Lcom/google/gson/Gson;.(Lcom/google/gson/internal/Excluder;Lcom/google/gson/FieldNamingStrategy;Ljava/util/Map<Ljava/lang/reflect/Type;Lcom/google/gson/InstanceCreator<*>;>;ZZZZZZZLcom/google/gson/LongSerializationPolicy;Ljava/util/List<Lcom/google/gson/TypeAdapterFactory;>;)V#excluder#0#0').
name_ref(p_exclusion_strategy_186, param, 'exclusionStrategy', 'Lcom/google/gson/internal/Excluder;.withExclusionStrategy(Lcom/google/gson/ExclusionStrategy;ZZ)Lcom/google/gson/internal/Excluder;#exclusionStrategy#0#0').
name_ref(p_expected_542, param, 'expected', 'Lcom/google/gson/reflect/TypeToken;.buildUnexpectedTypeError(Ljava/lang/reflect/Type;[Ljava/lang/Class<*>;)Ljava/lang/AssertionError;#expected#0#1').
name_ref(p_f_10, param, 'f', 'Lcom/google/gson/FieldNamingPolicy$4018;.translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;#f#0#0').
name_ref(p_f_2, param, 'f', 'Lcom/google/gson/FieldNamingPolicy$1232;.translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;#f#0#0').
name_ref(p_f_298, param, 'f', 'Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;.excludeField(Ljava/lang/reflect/Field;Z)Z#f#0#0').
name_ref(p_f_300, param, 'f', 'Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;.excludeField(Ljava/lang/reflect/Field;ZLcom/google/gson/internal/Excluder;)Z#f#0#0').
name_ref(p_f_303, param, 'f', 'Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;.getFieldNames(Ljava/lang/reflect/Field;)Ljava/util/List<Ljava/lang/String;>;#f#0#0').
name_ref(p_f_305, param, 'f', 'Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;.getFieldName(Lcom/google/gson/FieldNamingStrategy;Ljava/lang/reflect/Field;)Ljava/util/List<Ljava/lang/String;>;#f#0#1').
name_ref(p_f_4, param, 'f', 'Lcom/google/gson/FieldNamingPolicy$1725;.translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;#f#0#0').
name_ref(p_f_6, param, 'f', 'Lcom/google/gson/FieldNamingPolicy$2325;.translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;#f#0#0').
name_ref(p_f_8, param, 'f', 'Lcom/google/gson/FieldNamingPolicy$2990;.translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;#f#0#0').
name_ref(p_field_197, param, 'field', 'Lcom/google/gson/internal/Excluder;.excludeField(Ljava/lang/reflect/Field;Z)Z#field#0#0').
name_ref(p_field_309, param, 'field', 'Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;.createBoundField(Lcom/google/gson/Gson;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/google/gson/reflect/TypeToken<*>;ZZ)Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;#field#0#1').
name_ref(p_field_320, param, 'field', 'Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;.getFieldAdapter(Lcom/google/gson/Gson;Ljava/lang/reflect/Field;Lcom/google/gson/reflect/TypeToken<*>;)Lcom/google/gson/TypeAdapter<*>;#field#0#1').
name_ref(p_field_naming_policy_293, param, 'fieldNamingPolicy', 'Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;.(Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/FieldNamingStrategy;Lcom/google/gson/internal/Excluder;)V#fieldNamingPolicy#0#1').
name_ref(p_field_naming_policy_304, param, 'fieldNamingPolicy', 'Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;.getFieldName(Lcom/google/gson/FieldNamingStrategy;Ljava/lang/reflect/Field;)Ljava/util/List<Ljava/lang/String;>;#fieldNamingPolicy#0#0').
name_ref(p_field_naming_policy_35, param, 'fieldNamingPolicy', 'Lcom/google/gson/Gson;.(Lcom/google/gson/internal/Excluder;Lcom/google/gson/FieldNamingStrategy;Ljava/util/Map<Ljava/lang/reflect/Type;Lcom/google/gson/InstanceCreator<*>;>;ZZZZZZZLcom/google/gson/LongSerializationPolicy;Ljava/util/List<Lcom/google/gson/TypeAdapterFactory;>;)V#fieldNamingPolicy#0#1').
name_ref(p_field_type_260, param, 'fieldType', 'Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;.getTypeAdapter(Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<*>;Lcom/google/gson/annotations/JsonAdapter;)Lcom/google/gson/TypeAdapter<*>;#fieldType#0#2').
name_ref(p_field_type_311, param, 'fieldType', 'Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;.createBoundField(Lcom/google/gson/Gson;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/google/gson/reflect/TypeToken<*>;ZZ)Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;#fieldType#0#3').
name_ref(p_field_type_321, param, 'fieldType', 'Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;.getFieldAdapter(Lcom/google/gson/Gson;Ljava/lang/reflect/Field;Lcom/google/gson/reflect/TypeToken<*>;)Lcom/google/gson/TypeAdapter<*>;#fieldType#0#2').
name_ref(p_first_character_14, param, 'firstCharacter', 'Lcom/google/gson/FieldNamingPolicy;.modifyString(CLjava/lang/String;I)Ljava/lang/String;#firstCharacter#0#0').
name_ref(p_from_531, param, 'from', 'Lcom/google/gson/reflect/TypeToken;.isAssignableFrom(Ljava/lang/reflect/Type;)Z#from#0#0').
name_ref(p_from_533, param, 'from', 'Lcom/google/gson/reflect/TypeToken;.isAssignableFrom(Ljava/lang/reflect/Type;Ljava/lang/reflect/GenericArrayType;)Z#from#0#0').
name_ref(p_from_535, param, 'from', 'Lcom/google/gson/reflect/TypeToken;.isAssignableFrom(Ljava/lang/reflect/Type;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Type;>;)Z#from#0#0').
name_ref(p_from_538, param, 'from', 'Lcom/google/gson/reflect/TypeToken;.typeEquals(Ljava/lang/reflect/ParameterizedType;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Type;>;)Z#from#0#0').
name_ref(p_from_543, param, 'from', 'Lcom/google/gson/reflect/TypeToken;.matches(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Type;>;)Z#from#0#0').
name_ref(p_generate_non_executable_gson_39, param, 'generateNonExecutableGson', 'Lcom/google/gson/Gson;.(Lcom/google/gson/internal/Excluder;Lcom/google/gson/FieldNamingStrategy;Ljava/util/Map<Ljava/lang/reflect/Type;Lcom/google/gson/InstanceCreator<*>;>;ZZZZZZZLcom/google/gson/LongSerializationPolicy;Ljava/util/List<Lcom/google/gson/TypeAdapterFactory;>;)V#generateNonExecutableGson#0#5').
name_ref(p_gson_189, param, 'gson', 'Lcom/google/gson/internal/Excluder;.create<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;#gson#0#0').
name_ref(p_gson_224, param, 'gson', 'Lcom/google/gson/internal/bind/ArrayTypeAdapter$1310;.create<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;#gson#0#0').
name_ref(p_gson_235, param, 'gson', 'Lcom/google/gson/internal/bind/CollectionTypeAdapterFactory;.create<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;#gson#0#0').
name_ref(p_gson_247, param, 'gson', 'Lcom/google/gson/internal/bind/DateTypeAdapter$1581;.create<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;#gson#0#0').
name_ref(p_gson_255, param, 'gson', 'Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;.create<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;#gson#0#0').
name_ref(p_gson_259, param, 'gson', 'Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;.getTypeAdapter(Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<*>;Lcom/google/gson/annotations/JsonAdapter;)Lcom/google/gson/TypeAdapter<*>;#gson#0#1').
name_ref(p_gson_269, param, 'gson', 'Lcom/google/gson/internal/bind/MapTypeAdapterFactory;.create<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;#gson#0#0').
name_ref(p_gson_286, param, 'gson', 'Lcom/google/gson/internal/bind/ObjectTypeAdapter$1329;.create<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;#gson#0#0').
name_ref(p_gson_288, param, 'gson', 'Lcom/google/gson/internal/bind/ObjectTypeAdapter;.(Lcom/google/gson/Gson;)V#gson#0#0').
name_ref(p_gson_306, param, 'gson', 'Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;.create<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;#gson#0#0').
name_ref(p_gson_319, param, 'gson', 'Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;.getFieldAdapter(Lcom/google/gson/Gson;Ljava/lang/reflect/Field;Lcom/google/gson/reflect/TypeToken<*>;)Lcom/google/gson/TypeAdapter<*>;#gson#0#0').
name_ref(p_gson_339, param, 'gson', 'Lcom/google/gson/internal/bind/SqlDateTypeAdapter$1501;.create<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;#gson#0#0').
name_ref(p_gson_345, param, 'gson', 'Lcom/google/gson/internal/bind/TimeTypeAdapter$1525;.create<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;#gson#0#0').
name_ref(p_gson_470, param, 'gson', 'Lcom/google/gson/internal/bind/TypeAdapters$18967;.create<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;#gson#0#0').
name_ref(p_gson_495, param, 'gson', 'Lcom/google/gson/internal/bind/TypeAdapters$26895;.create<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;#gson#0#0').
name_ref(p_gson_499, param, 'gson', 'Lcom/google/gson/internal/bind/TypeAdapters$27534;.create<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;#gson#0#0').
name_ref(p_gson_503, param, 'gson', 'Lcom/google/gson/internal/bind/TypeAdapters$27963;.create<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;#gson#0#0').
name_ref(p_gson_508, param, 'gson', 'Lcom/google/gson/internal/bind/TypeAdapters$28568;.create<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;#gson#0#0').
name_ref(p_gson_514, param, 'gson', 'Lcom/google/gson/internal/bind/TypeAdapters$29301;.create<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;#gson#0#0').
name_ref(p_gson_519, param, 'gson', 'Lcom/google/gson/internal/bind/TypeAdapters$30153;.create<T2:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT2;>;)Lcom/google/gson/TypeAdapter<TT2;>;#gson#0#0').
name_ref(p_gson_553, param, 'gson', 'Lcom/google/gson/regression/JsonAdapterNullSafeTest$Device$JsonAdapterFactory;.create<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;#gson#0#0').
name_ref(p_html_safe_40, param, 'htmlSafe', 'Lcom/google/gson/Gson;.(Lcom/google/gson/internal/Excluder;Lcom/google/gson/FieldNamingStrategy;Ljava/util/Map<Ljava/lang/reflect/Type;Lcom/google/gson/InstanceCreator<*>;>;ZZZZZZZLcom/google/gson/LongSerializationPolicy;Ljava/util/List<Lcom/google/gson/TypeAdapterFactory;>;)V#htmlSafe#0#6').
name_ref(p_html_safe_613, param, 'htmlSafe', 'Lcom/google/gson/stream/JsonWriter;.setHtmlSafe(Z)V#htmlSafe#0#0').
name_ref(p_i_219, param, 'i', 'Lcom/google/gson/internal/Streams$AppendableWriter;.write(I)V|Ljava/io/IOException;#i#0#0').
name_ref(p_i_220, param, 'i', 'Lcom/google/gson/internal/Streams$AppendableWriter$CurrentWrite;.charAt(I)C#i#0#0').
name_ref(p_id_552, param, 'id', 'Lcom/google/gson/regression/JsonAdapterNullSafeTest$Device;.(Ljava/lang/String;)V#id#0#0').
name_ref(p_ignore_versions_after_184, param, 'ignoreVersionsAfter', 'Lcom/google/gson/internal/Excluder;.withVersion(D)Lcom/google/gson/internal/Excluder;#ignoreVersionsAfter#0#0').
name_ref(p_in_142, param, 'in', 'Lcom/google/gson/Gson$FutureTypeAdapter;.read(Lcom/google/gson/stream/JsonReader;)TT;|Ljava/io/IOException;#in#0#0').
name_ref(p_in_159, param, 'in', 'Lcom/google/gson/TypeAdapter;.read(Lcom/google/gson/stream/JsonReader;)TT;|Ljava/io/IOException;#in#0#0').
name_ref(p_in_160, param, 'in', 'Lcom/google/gson/TypeAdapter;.fromJson(Ljava/io/Reader;)TT;|Ljava/io/IOException;#in#0#0').
name_ref(p_in_194, param, 'in', 'Lcom/google/gson/internal/Excluder$4069;.read(Lcom/google/gson/stream/JsonReader;)TT;|Ljava/io/IOException;#in#0#0').
name_ref(p_in_230, param, 'in', 'Lcom/google/gson/internal/bind/ArrayTypeAdapter;.read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;|Ljava/io/IOException;#in#0#0').
name_ref(p_in_243, param, 'in', 'Lcom/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;.read(Lcom/google/gson/stream/JsonReader;)Ljava/util/Collection<TE;>;|Ljava/io/IOException;#in#0#0').
name_ref(p_in_249, param, 'in', 'Lcom/google/gson/internal/bind/DateTypeAdapter;.read(Lcom/google/gson/stream/JsonReader;)Ljava/util/Date;|Ljava/io/IOException;#in#0#0').
name_ref(p_in_281, param, 'in', 'Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;.read(Lcom/google/gson/stream/JsonReader;)Ljava/util/Map<TK;TV;>;|Ljava/io/IOException;#in#0#0').
name_ref(p_in_289, param, 'in', 'Lcom/google/gson/internal/bind/ObjectTypeAdapter;.read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;|Ljava/io/IOException;#in#0#0').
name_ref(p_in_335, param, 'in', 'Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;.read(Lcom/google/gson/stream/JsonReader;)TT;|Ljava/io/IOException;#in#0#0').
name_ref(p_in_341, param, 'in', 'Lcom/google/gson/internal/bind/SqlDateTypeAdapter;.read(Lcom/google/gson/stream/JsonReader;)Ljava/sql/Date;|Ljava/io/IOException;#in#0#0').
name_ref(p_in_347, param, 'in', 'Lcom/google/gson/internal/bind/TimeTypeAdapter;.read(Lcom/google/gson/stream/JsonReader;)Ljava/sql/Time;|Ljava/io/IOException;#in#0#0').
name_ref(p_in_353, param, 'in', 'Lcom/google/gson/internal/bind/TypeAdapters$2215;.read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Class;|Ljava/io/IOException;#in#0#0').
name_ref(p_in_356, param, 'in', 'Lcom/google/gson/internal/bind/TypeAdapters$3050;.read(Lcom/google/gson/stream/JsonReader;)Ljava/util/BitSet;|Ljava/io/IOException;#in#0#0').
name_ref(p_in_361, param, 'in', 'Lcom/google/gson/internal/bind/TypeAdapters$4697;.read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Boolean;|Ljava/io/IOException;#in#0#0').
name_ref(p_in_365, param, 'in', 'Lcom/google/gson/internal/bind/TypeAdapters$5472;.read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Boolean;|Ljava/io/IOException;#in#0#0').
name_ref(p_in_370, param, 'in', 'Lcom/google/gson/internal/bind/TypeAdapters$6040;.read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Number;|Ljava/io/IOException;#in#0#0').
name_ref(p_in_375, param, 'in', 'Lcom/google/gson/internal/bind/TypeAdapters$6691;.read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Number;|Ljava/io/IOException;#in#0#0').
name_ref(p_in_380, param, 'in', 'Lcom/google/gson/internal/bind/TypeAdapters$7316;.read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Number;|Ljava/io/IOException;#in#0#0').
name_ref(p_in_385, param, 'in', 'Lcom/google/gson/internal/bind/TypeAdapters$7950;.read(Lcom/google/gson/stream/JsonReader;)Ljava/util/concurrent/atomic/AtomicInteger;|Ljava/io/IOException;#in#0#0').
name_ref(p_in_390, param, 'in', 'Lcom/google/gson/internal/bind/TypeAdapters$8562;.read(Lcom/google/gson/stream/JsonReader;)Ljava/util/concurrent/atomic/AtomicBoolean;|Ljava/io/IOException;#in#0#0').
name_ref(p_in_395, param, 'in', 'Lcom/google/gson/internal/bind/TypeAdapters$9083;.read(Lcom/google/gson/stream/JsonReader;)Ljava/util/concurrent/atomic/AtomicIntegerArray;|Ljava/io/IOException;#in#0#0').
name_ref(p_in_400, param, 'in', 'Lcom/google/gson/internal/bind/TypeAdapters$10229;.read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Number;|Ljava/io/IOException;#in#0#0').
name_ref(p_in_404, param, 'in', 'Lcom/google/gson/internal/bind/TypeAdapters$10736;.read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Number;|Ljava/io/IOException;#in#0#0').
name_ref(p_in_408, param, 'in', 'Lcom/google/gson/internal/bind/TypeAdapters$11148;.read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Number;|Ljava/io/IOException;#in#0#0').
name_ref(p_in_412, param, 'in', 'Lcom/google/gson/internal/bind/TypeAdapters$11552;.read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Number;|Ljava/io/IOException;#in#0#0').
name_ref(p_in_417, param, 'in', 'Lcom/google/gson/internal/bind/TypeAdapters$12235;.read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Character;|Ljava/io/IOException;#in#0#0').
name_ref(p_in_422, param, 'in', 'Lcom/google/gson/internal/bind/TypeAdapters$12955;.read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/String;|Ljava/io/IOException;#in#0#0').
name_ref(p_in_426, param, 'in', 'Lcom/google/gson/internal/bind/TypeAdapters$13564;.read(Lcom/google/gson/stream/JsonReader;)Ljava/math/BigDecimal;|Ljava/io/IOException;#in#0#0').
name_ref(p_in_430, param, 'in', 'Lcom/google/gson/internal/bind/TypeAdapters$14106;.read(Lcom/google/gson/stream/JsonReader;)Ljava/math/BigInteger;|Ljava/io/IOException;#in#0#0').
name_ref(p_in_435, param, 'in', 'Lcom/google/gson/internal/bind/TypeAdapters$14745;.read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/StringBuilder;|Ljava/io/IOException;#in#0#0').
name_ref(p_in_440, param, 'in', 'Lcom/google/gson/internal/bind/TypeAdapters$15356;.read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/StringBuffer;|Ljava/io/IOException;#in#0#0').
name_ref(p_in_445, param, 'in', 'Lcom/google/gson/internal/bind/TypeAdapters$15941;.read(Lcom/google/gson/stream/JsonReader;)Ljava/net/URL;|Ljava/io/IOException;#in#0#0').
name_ref(p_in_450, param, 'in', 'Lcom/google/gson/internal/bind/TypeAdapters$16536;.read(Lcom/google/gson/stream/JsonReader;)Ljava/net/URI;|Ljava/io/IOException;#in#0#0').
name_ref(p_in_455, param, 'in', 'Lcom/google/gson/internal/bind/TypeAdapters$17248;.read(Lcom/google/gson/stream/JsonReader;)Ljava/net/InetAddress;|Ljava/io/IOException;#in#0#0').
name_ref(p_in_460, param, 'in', 'Lcom/google/gson/internal/bind/TypeAdapters$17941;.read(Lcom/google/gson/stream/JsonReader;)Ljava/util/UUID;|Ljava/io/IOException;#in#0#0').
name_ref(p_in_465, param, 'in', 'Lcom/google/gson/internal/bind/TypeAdapters$18491;.read(Lcom/google/gson/stream/JsonReader;)Ljava/util/Currency;|Ljava/io/IOException;#in#0#0').
name_ref(p_in_472, param, 'in', 'Lcom/google/gson/internal/bind/TypeAdapters$19359;.read(Lcom/google/gson/stream/JsonReader;)Ljava/sql/Timestamp;|Ljava/io/IOException;#in#0#0').
name_ref(p_in_476, param, 'in', 'Lcom/google/gson/internal/bind/TypeAdapters$19816;.read(Lcom/google/gson/stream/JsonReader;)Ljava/util/Calendar;|Ljava/io/IOException;#in#0#0').
name_ref(p_in_481, param, 'in', 'Lcom/google/gson/internal/bind/TypeAdapters$22013;.read(Lcom/google/gson/stream/JsonReader;)Ljava/util/Locale;|Ljava/io/IOException;#in#0#0').
name_ref(p_in_486, param, 'in', 'Lcom/google/gson/internal/bind/TypeAdapters$23236;.read(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;|Ljava/io/IOException;#in#0#0').
name_ref(p_in_491, param, 'in', 'Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;.read(Lcom/google/gson/stream/JsonReader;)TT;|Ljava/io/IOException;#in#0#0').
name_ref(p_in_524, param, 'in', 'Lcom/google/gson/internal/bind/TypeAdapters$30498;.read(Lcom/google/gson/stream/JsonReader;)TT1;|Ljava/io/IOException;#in#0#0').
name_ref(p_in_56, param, 'in', 'Lcom/google/gson/Gson$13310;.read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Double;|Ljava/io/IOException;#in#0#0').
name_ref(p_in_568, param, 'in', 'Lcom/google/gson/stream/JsonReader;.(Ljava/io/Reader;)V#in#0#0').
name_ref(p_in_60, param, 'in', 'Lcom/google/gson/Gson$14048;.read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Float;|Ljava/io/IOException;#in#0#0').
name_ref(p_in_65, param, 'in', 'Lcom/google/gson/Gson$15168;.read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Number;|Ljava/io/IOException;#in#0#0').
name_ref(p_in_71, param, 'in', 'Lcom/google/gson/Gson$15743;.read(Lcom/google/gson/stream/JsonReader;)Ljava/util/concurrent/atomic/AtomicLong;|Ljava/io/IOException;#in#0#0').
name_ref(p_in_75, param, 'in', 'Lcom/google/gson/Gson$16239;.read(Lcom/google/gson/stream/JsonReader;)Ljava/util/concurrent/atomic/AtomicLongArray;|Ljava/io/IOException;#in#0#0').
name_ref(p_indent_611, param, 'indent', 'Lcom/google/gson/stream/JsonWriter;.setIndent(Ljava/lang/String;)V#indent#0#0').
name_ref(p_index_of_substring_16, param, 'indexOfSubstring', 'Lcom/google/gson/FieldNamingPolicy;.modifyString(CLjava/lang/String;I)Ljava/lang/String;#indexOfSubstring#0#2').
name_ref(p_instance_creators_163, param, 'instanceCreators', 'Lcom/google/gson/internal/ConstructorConstructor;.(Ljava/util/Map<Ljava/lang/reflect/Type;Lcom/google/gson/InstanceCreator<*>;>;)V#instanceCreators#0#0').
name_ref(p_instance_creators_36, param, 'instanceCreators', 'Lcom/google/gson/Gson;.(Lcom/google/gson/internal/Excluder;Lcom/google/gson/FieldNamingStrategy;Ljava/util/Map<Ljava/lang/reflect/Type;Lcom/google/gson/InstanceCreator<*>;>;ZZZZZZZLcom/google/gson/LongSerializationPolicy;Ljava/util/List<Lcom/google/gson/TypeAdapterFactory;>;)V#instanceCreators#0#2').
name_ref(p_json_116, param, 'json', 'Lcom/google/gson/Gson;.fromJson<T:Ljava/lang/Object;>(Ljava/lang/String;Ljava/lang/Class<TT;>;)TT;|Lcom/google/gson/JsonSyntaxException;#json#0#0').
name_ref(p_json_119, param, 'json', 'Lcom/google/gson/Gson;.fromJson<T:Ljava/lang/Object;>(Ljava/lang/String;Ljava/lang/reflect/Type;)TT;|Lcom/google/gson/JsonSyntaxException;#json#0#0').
name_ref(p_json_123, param, 'json', 'Lcom/google/gson/Gson;.fromJson<T:Ljava/lang/Object;>(Ljava/io/Reader;Ljava/lang/Class<TT;>;)TT;|Lcom/google/gson/JsonSyntaxException;|Lcom/google/gson/JsonIOException;#json#0#0').
name_ref(p_json_125, param, 'json', 'Lcom/google/gson/Gson;.fromJson<T:Ljava/lang/Object;>(Ljava/io/Reader;Ljava/lang/reflect/Type;)TT;|Lcom/google/gson/JsonIOException;|Lcom/google/gson/JsonSyntaxException;#json#0#0').
name_ref(p_json_137, param, 'json', 'Lcom/google/gson/Gson;.fromJson<T:Ljava/lang/Object;>(Lcom/google/gson/JsonElement;Ljava/lang/Class<TT;>;)TT;|Lcom/google/gson/JsonSyntaxException;#json#0#0').
name_ref(p_json_139, param, 'json', 'Lcom/google/gson/Gson;.fromJson<T:Ljava/lang/Object;>(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)TT;|Lcom/google/gson/JsonSyntaxException;#json#0#0').
name_ref(p_json_161, param, 'json', 'Lcom/google/gson/TypeAdapter;.fromJson(Ljava/lang/String;)TT;|Ljava/io/IOException;#json#0#0').
name_ref(p_json_20, param, 'json', 'Lcom/google/gson/Gson$5700;.deserialize<T:Ljava/lang/Object;>(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)TT;|Lcom/google/gson/JsonParseException;#json#0#0').
name_ref(p_json_250, param, 'json', 'Lcom/google/gson/internal/bind/DateTypeAdapter;.deserializeToDate(Ljava/lang/String;)Ljava/util/Date;#json#0#0').
name_ref(p_json_element_107, param, 'jsonElement', 'Lcom/google/gson/Gson;.toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;#jsonElement#0#0').
name_ref(p_json_element_108, param, 'jsonElement', 'Lcom/google/gson/Gson;.toJson(Lcom/google/gson/JsonElement;Ljava/lang/Appendable;)V|Lcom/google/gson/JsonIOException;#jsonElement#0#0').
name_ref(p_json_element_114, param, 'jsonElement', 'Lcom/google/gson/Gson;.toJson(Lcom/google/gson/JsonElement;Lcom/google/gson/stream/JsonWriter;)V|Lcom/google/gson/JsonIOException;#jsonElement#0#0').
name_ref(p_json_tree_162, param, 'jsonTree', 'Lcom/google/gson/TypeAdapter;.fromJsonTree(Lcom/google/gson/JsonElement;)TT;#jsonTree#0#0').
name_ref(p_key_element_284, param, 'keyElement', 'Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;.keyToString(Lcom/google/gson/JsonElement;)Ljava/lang/String;#keyElement#0#0').
name_ref(p_key_type_274, param, 'keyType', 'Lcom/google/gson/internal/bind/MapTypeAdapterFactory;.getKeyAdapter(Lcom/google/gson/Gson;Ljava/lang/reflect/Type;)Lcom/google/gson/TypeAdapter<*>;#keyType#0#1').
name_ref(p_key_type_276, param, 'keyType', 'Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;.(Lcom/google/gson/Gson;Ljava/lang/reflect/Type;Lcom/google/gson/TypeAdapter<TK;>;Ljava/lang/reflect/Type;Lcom/google/gson/TypeAdapter<TV;>;Lcom/google/gson/internal/ObjectConstructor<+Ljava/util/Map<TK;TV;>;>;)V#keyType#0#1').
name_ref(p_key_type_adapter_277, param, 'keyTypeAdapter', 'Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;.(Lcom/google/gson/Gson;Ljava/lang/reflect/Type;Lcom/google/gson/TypeAdapter<TK;>;Ljava/lang/reflect/Type;Lcom/google/gson/TypeAdapter<TV;>;Lcom/google/gson/internal/ObjectConstructor<+Ljava/util/Map<TK;TV;>;>;)V#keyTypeAdapter#0#2').
name_ref(p_length_218, param, 'length', 'Lcom/google/gson/internal/Streams$AppendableWriter;.write([CII)V|Ljava/io/IOException;#length#0#2').
name_ref(p_lenient_42, param, 'lenient', 'Lcom/google/gson/Gson;.(Lcom/google/gson/internal/Excluder;Lcom/google/gson/FieldNamingStrategy;Ljava/util/Map<Ljava/lang/reflect/Type;Lcom/google/gson/InstanceCreator<*>;>;ZZZZZZZLcom/google/gson/LongSerializationPolicy;Ljava/util/List<Lcom/google/gson/TypeAdapterFactory;>;)V#lenient#0#8').
name_ref(p_lenient_570, param, 'lenient', 'Lcom/google/gson/stream/JsonReader;.setLenient(Z)V#lenient#0#0').
name_ref(p_lenient_612, param, 'lenient', 'Lcom/google/gson/stream/JsonWriter;.setLenient(Z)V#lenient#0#0').
name_ref(p_long_adapter_68, param, 'longAdapter', 'Lcom/google/gson/Gson;.atomicLongAdapter(Lcom/google/gson/TypeAdapter<Ljava/lang/Number;>;)Lcom/google/gson/TypeAdapter<Ljava/util/concurrent/atomic/AtomicLong;>;#longAdapter#0#0').
name_ref(p_long_adapter_72, param, 'longAdapter', 'Lcom/google/gson/Gson;.atomicLongArrayAdapter(Lcom/google/gson/TypeAdapter<Ljava/lang/Number;>;)Lcom/google/gson/TypeAdapter<Ljava/util/concurrent/atomic/AtomicLongArray;>;#longAdapter#0#0').
name_ref(p_long_serialization_policy_44, param, 'longSerializationPolicy', 'Lcom/google/gson/Gson;.(Lcom/google/gson/internal/Excluder;Lcom/google/gson/FieldNamingStrategy;Ljava/util/Map<Ljava/lang/reflect/Type;Lcom/google/gson/InstanceCreator<*>;>;ZZZZZZZLcom/google/gson/LongSerializationPolicy;Ljava/util/List<Lcom/google/gson/TypeAdapterFactory;>;)V#longSerializationPolicy#0#10').
name_ref(p_long_serialization_policy_64, param, 'longSerializationPolicy', 'Lcom/google/gson/Gson;.longAdapter(Lcom/google/gson/LongSerializationPolicy;)Lcom/google/gson/TypeAdapter<Ljava/lang/Number;>;#longSerializationPolicy#0#0').
name_ref(p_map_283, param, 'map', 'Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;.write(Lcom/google/gson/stream/JsonWriter;Ljava/util/Map<TK;TV;>;)V|Ljava/io/IOException;#map#0#1').
name_ref(p_message_588, param, 'message', 'Lcom/google/gson/stream/JsonReader;.syntaxError(Ljava/lang/String;)Ljava/io/IOException;|Ljava/io/IOException;#message#0#0').
name_ref(p_minimum_579, param, 'minimum', 'Lcom/google/gson/stream/JsonReader;.fillBuffer(I)Z|Ljava/io/IOException;#minimum#0#0').
name_ref(p_modifiers_185, param, 'modifiers', 'Lcom/google/gson/internal/Excluder;.withModifiers([I)Lcom/google/gson/internal/Excluder;#modifiers#0#0').
name_ref(p_name_11, param, 'name', 'Lcom/google/gson/FieldNamingPolicy;.separateCamelCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#name#0#0').
name_ref(p_name_13, param, 'name', 'Lcom/google/gson/FieldNamingPolicy;.upperCaseFirstLetter(Ljava/lang/String;)Ljava/lang/String;#name#0#0').
name_ref(p_name_310, param, 'name', 'Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;.createBoundField(Lcom/google/gson/Gson;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/google/gson/reflect/TypeToken<*>;ZZ)Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;#name#0#2').
name_ref(p_name_325, param, 'name', 'Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;.(Ljava/lang/String;ZZ)V#name#0#0').
name_ref(p_name_622, param, 'name', 'Lcom/google/gson/stream/JsonWriter;.name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;|Ljava/io/IOException;#name#0#0').
name_ref(p_new_top_578, param, 'newTop', 'Lcom/google/gson/stream/JsonReader;.push(I)V#newTop#0#0').
name_ref(p_new_top_620, param, 'newTop', 'Lcom/google/gson/stream/JsonWriter;.push(I)V#newTop#0#0').
name_ref(p_nonempty_618, param, 'nonempty', 'Lcom/google/gson/stream/JsonWriter;.close(IILjava/lang/String;)Lcom/google/gson/stream/JsonWriter;|Ljava/io/IOException;#nonempty#0#1').
name_ref(p_o_546, param, 'o', 'Lcom/google/gson/reflect/TypeToken;.equals(Ljava/lang/Object;)Z#o#0#0').
name_ref(p_obj_129, param, 'obj', 'Lcom/google/gson/Gson;.assertFullConsumption(Ljava/lang/Object;Lcom/google/gson/stream/JsonReader;)V#obj#0#0').
name_ref(p_offset_217, param, 'offset', 'Lcom/google/gson/internal/Streams$AppendableWriter;.write([CII)V|Ljava/io/IOException;#offset#0#1').
name_ref(p_open_bracket_616, param, 'openBracket', 'Lcom/google/gson/stream/JsonWriter;.open(ILjava/lang/String;)Lcom/google/gson/stream/JsonWriter;|Ljava/io/IOException;#openBracket#0#1').
name_ref(p_out_143, param, 'out', 'Lcom/google/gson/Gson$FutureTypeAdapter;.write(Lcom/google/gson/stream/JsonWriter;TT;)V|Ljava/io/IOException;#out#0#0').
name_ref(p_out_150, param, 'out', 'Lcom/google/gson/TypeAdapter;.write(Lcom/google/gson/stream/JsonWriter;TT;)V|Ljava/io/IOException;#out#0#0').
name_ref(p_out_152, param, 'out', 'Lcom/google/gson/TypeAdapter;.toJson(Ljava/io/Writer;TT;)V|Ljava/io/IOException;#out#0#0').
name_ref(p_out_154, param, 'out', 'Lcom/google/gson/TypeAdapter$7570;.write(Lcom/google/gson/stream/JsonWriter;TT;)V|Ljava/io/IOException;#out#0#0').
name_ref(p_out_195, param, 'out', 'Lcom/google/gson/internal/Excluder$4069;.write(Lcom/google/gson/stream/JsonWriter;TT;)V|Ljava/io/IOException;#out#0#0').
name_ref(p_out_231, param, 'out', 'Lcom/google/gson/internal/bind/ArrayTypeAdapter;.write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V|Ljava/io/IOException;#out#0#0').
name_ref(p_out_244, param, 'out', 'Lcom/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;.write(Lcom/google/gson/stream/JsonWriter;Ljava/util/Collection<TE;>;)V|Ljava/io/IOException;#out#0#0').
name_ref(p_out_251, param, 'out', 'Lcom/google/gson/internal/bind/DateTypeAdapter;.write(Lcom/google/gson/stream/JsonWriter;Ljava/util/Date;)V|Ljava/io/IOException;#out#0#0').
name_ref(p_out_282, param, 'out', 'Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;.write(Lcom/google/gson/stream/JsonWriter;Ljava/util/Map<TK;TV;>;)V|Ljava/io/IOException;#out#0#0').
name_ref(p_out_290, param, 'out', 'Lcom/google/gson/internal/bind/ObjectTypeAdapter;.write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V|Ljava/io/IOException;#out#0#0').
name_ref(p_out_336, param, 'out', 'Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;.write(Lcom/google/gson/stream/JsonWriter;TT;)V|Ljava/io/IOException;#out#0#0').
name_ref(p_out_342, param, 'out', 'Lcom/google/gson/internal/bind/SqlDateTypeAdapter;.write(Lcom/google/gson/stream/JsonWriter;Ljava/sql/Date;)V|Ljava/io/IOException;#out#0#0').
name_ref(p_out_348, param, 'out', 'Lcom/google/gson/internal/bind/TimeTypeAdapter;.write(Lcom/google/gson/stream/JsonWriter;Ljava/sql/Time;)V|Ljava/io/IOException;#out#0#0').
name_ref(p_out_351, param, 'out', 'Lcom/google/gson/internal/bind/TypeAdapters$2215;.write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Class;)V|Ljava/io/IOException;#out#0#0').
name_ref(p_out_357, param, 'out', 'Lcom/google/gson/internal/bind/TypeAdapters$3050;.write(Lcom/google/gson/stream/JsonWriter;Ljava/util/BitSet;)V|Ljava/io/IOException;#out#0#0').
name_ref(p_out_362, param, 'out', 'Lcom/google/gson/internal/bind/TypeAdapters$4697;.write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Boolean;)V|Ljava/io/IOException;#out#0#0').
name_ref(p_out_366, param, 'out', 'Lcom/google/gson/internal/bind/TypeAdapters$5472;.write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Boolean;)V|Ljava/io/IOException;#out#0#0').
name_ref(p_out_371, param, 'out', 'Lcom/google/gson/internal/bind/TypeAdapters$6040;.write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Number;)V|Ljava/io/IOException;#out#0#0').
name_ref(p_out_376, param, 'out', 'Lcom/google/gson/internal/bind/TypeAdapters$6691;.write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Number;)V|Ljava/io/IOException;#out#0#0').
name_ref(p_out_381, param, 'out', 'Lcom/google/gson/internal/bind/TypeAdapters$7316;.write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Number;)V|Ljava/io/IOException;#out#0#0').
name_ref(p_out_386, param, 'out', 'Lcom/google/gson/internal/bind/TypeAdapters$7950;.write(Lcom/google/gson/stream/JsonWriter;Ljava/util/concurrent/atomic/AtomicInteger;)V|Ljava/io/IOException;#out#0#0').
name_ref(p_out_391, param, 'out', 'Lcom/google/gson/internal/bind/TypeAdapters$8562;.write(Lcom/google/gson/stream/JsonWriter;Ljava/util/concurrent/atomic/AtomicBoolean;)V|Ljava/io/IOException;#out#0#0').
name_ref(p_out_396, param, 'out', 'Lcom/google/gson/internal/bind/TypeAdapters$9083;.write(Lcom/google/gson/stream/JsonWriter;Ljava/util/concurrent/atomic/AtomicIntegerArray;)V|Ljava/io/IOException;#out#0#0').
name_ref(p_out_401, param, 'out', 'Lcom/google/gson/internal/bind/TypeAdapters$10229;.write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Number;)V|Ljava/io/IOException;#out#0#0').
name_ref(p_out_405, param, 'out', 'Lcom/google/gson/internal/bind/TypeAdapters$10736;.write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Number;)V|Ljava/io/IOException;#out#0#0').
name_ref(p_out_409, param, 'out', 'Lcom/google/gson/internal/bind/TypeAdapters$11148;.write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Number;)V|Ljava/io/IOException;#out#0#0').
name_ref(p_out_413, param, 'out', 'Lcom/google/gson/internal/bind/TypeAdapters$11552;.write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Number;)V|Ljava/io/IOException;#out#0#0').
name_ref(p_out_418, param, 'out', 'Lcom/google/gson/internal/bind/TypeAdapters$12235;.write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Character;)V|Ljava/io/IOException;#out#0#0').
name_ref(p_out_423, param, 'out', 'Lcom/google/gson/internal/bind/TypeAdapters$12955;.write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/String;)V|Ljava/io/IOException;#out#0#0').
name_ref(p_out_427, param, 'out', 'Lcom/google/gson/internal/bind/TypeAdapters$13564;.write(Lcom/google/gson/stream/JsonWriter;Ljava/math/BigDecimal;)V|Ljava/io/IOException;#out#0#0').
name_ref(p_out_431, param, 'out', 'Lcom/google/gson/internal/bind/TypeAdapters$14106;.write(Lcom/google/gson/stream/JsonWriter;Ljava/math/BigInteger;)V|Ljava/io/IOException;#out#0#0').
name_ref(p_out_436, param, 'out', 'Lcom/google/gson/internal/bind/TypeAdapters$14745;.write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/StringBuilder;)V|Ljava/io/IOException;#out#0#0').
name_ref(p_out_441, param, 'out', 'Lcom/google/gson/internal/bind/TypeAdapters$15356;.write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/StringBuffer;)V|Ljava/io/IOException;#out#0#0').
name_ref(p_out_446, param, 'out', 'Lcom/google/gson/internal/bind/TypeAdapters$15941;.write(Lcom/google/gson/stream/JsonWriter;Ljava/net/URL;)V|Ljava/io/IOException;#out#0#0').
name_ref(p_out_451, param, 'out', 'Lcom/google/gson/internal/bind/TypeAdapters$16536;.write(Lcom/google/gson/stream/JsonWriter;Ljava/net/URI;)V|Ljava/io/IOException;#out#0#0').
name_ref(p_out_456, param, 'out', 'Lcom/google/gson/internal/bind/TypeAdapters$17248;.write(Lcom/google/gson/stream/JsonWriter;Ljava/net/InetAddress;)V|Ljava/io/IOException;#out#0#0').
name_ref(p_out_461, param, 'out', 'Lcom/google/gson/internal/bind/TypeAdapters$17941;.write(Lcom/google/gson/stream/JsonWriter;Ljava/util/UUID;)V|Ljava/io/IOException;#out#0#0').
name_ref(p_out_466, param, 'out', 'Lcom/google/gson/internal/bind/TypeAdapters$18491;.write(Lcom/google/gson/stream/JsonWriter;Ljava/util/Currency;)V|Ljava/io/IOException;#out#0#0').
name_ref(p_out_473, param, 'out', 'Lcom/google/gson/internal/bind/TypeAdapters$19359;.write(Lcom/google/gson/stream/JsonWriter;Ljava/sql/Timestamp;)V|Ljava/io/IOException;#out#0#0').
name_ref(p_out_477, param, 'out', 'Lcom/google/gson/internal/bind/TypeAdapters$19816;.write(Lcom/google/gson/stream/JsonWriter;Ljava/util/Calendar;)V|Ljava/io/IOException;#out#0#0').
name_ref(p_out_482, param, 'out', 'Lcom/google/gson/internal/bind/TypeAdapters$22013;.write(Lcom/google/gson/stream/JsonWriter;Ljava/util/Locale;)V|Ljava/io/IOException;#out#0#0').
name_ref(p_out_487, param, 'out', 'Lcom/google/gson/internal/bind/TypeAdapters$23236;.write(Lcom/google/gson/stream/JsonWriter;Lcom/google/gson/JsonElement;)V|Ljava/io/IOException;#out#0#0').
name_ref(p_out_492, param, 'out', 'Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;.write(Lcom/google/gson/stream/JsonWriter;TT;)V|Ljava/io/IOException;#out#0#0').
name_ref(p_out_522, param, 'out', 'Lcom/google/gson/internal/bind/TypeAdapters$30498;.write(Lcom/google/gson/stream/JsonWriter;TT1;)V|Ljava/io/IOException;#out#0#0').
name_ref(p_out_57, param, 'out', 'Lcom/google/gson/Gson$13310;.write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Number;)V|Ljava/io/IOException;#out#0#0').
name_ref(p_out_609, param, 'out', 'Lcom/google/gson/stream/JsonWriter;.(Ljava/io/Writer;)V#out#0#0').
name_ref(p_out_61, param, 'out', 'Lcom/google/gson/Gson$14048;.write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Number;)V|Ljava/io/IOException;#out#0#0').
name_ref(p_out_66, param, 'out', 'Lcom/google/gson/Gson$15168;.write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Number;)V|Ljava/io/IOException;#out#0#0').
name_ref(p_out_69, param, 'out', 'Lcom/google/gson/Gson$15743;.write(Lcom/google/gson/stream/JsonWriter;Ljava/util/concurrent/atomic/AtomicLong;)V|Ljava/io/IOException;#out#0#0').
name_ref(p_out_73, param, 'out', 'Lcom/google/gson/Gson$16239;.write(Lcom/google/gson/stream/JsonWriter;Ljava/util/concurrent/atomic/AtomicLongArray;)V|Ljava/io/IOException;#out#0#0').
name_ref(p_pretty_printing_41, param, 'prettyPrinting', 'Lcom/google/gson/Gson;.(Lcom/google/gson/internal/Excluder;Lcom/google/gson/FieldNamingStrategy;Ljava/util/Map<Ljava/lang/reflect/Type;Lcom/google/gson/InstanceCreator<*>;>;ZZZZZZZLcom/google/gson/LongSerializationPolicy;Ljava/util/List<Lcom/google/gson/TypeAdapterFactory;>;)V#prettyPrinting#0#7').
name_ref(p_quote_576, param, 'quote', 'Lcom/google/gson/stream/JsonReader;.nextQuotedValue(C)Ljava/lang/String;|Ljava/io/IOException;#quote#0#0').
name_ref(p_quote_577, param, 'quote', 'Lcom/google/gson/stream/JsonReader;.skipQuotedValue(C)V|Ljava/io/IOException;#quote#0#0').
name_ref(p_raw_324, param, 'raw', 'Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;.getBoundFields(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<*>;Ljava/lang/Class<*>;)Ljava/util/Map<Ljava/lang/String;Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;>;#raw#0#2').
name_ref(p_raw_type_171, param, 'rawType', 'Lcom/google/gson/internal/ConstructorConstructor;.newDefaultConstructor<T:Ljava/lang/Object;>(Ljava/lang/Class<-TT;>;)Lcom/google/gson/internal/ObjectConstructor<TT;>;#rawType#0#0').
name_ref(p_raw_type_175, param, 'rawType', 'Lcom/google/gson/internal/ConstructorConstructor;.newDefaultImplementationConstructor<T:Ljava/lang/Object;>(Ljava/lang/reflect/Type;Ljava/lang/Class<-TT;>;)Lcom/google/gson/internal/ObjectConstructor<TT;>;#rawType#0#1').
name_ref(p_raw_type_177, param, 'rawType', 'Lcom/google/gson/internal/ConstructorConstructor;.newUnsafeAllocator<T:Ljava/lang/Object;>(Ljava/lang/reflect/Type;Ljava/lang/Class<-TT;>;)Lcom/google/gson/internal/ObjectConstructor<TT;>;#rawType#0#1').
name_ref(p_reader_112, param, 'reader', 'Lcom/google/gson/Gson;.newJsonReader(Ljava/io/Reader;)Lcom/google/gson/stream/JsonReader;#reader#0#0').
name_ref(p_reader_130, param, 'reader', 'Lcom/google/gson/Gson;.assertFullConsumption(Ljava/lang/Object;Lcom/google/gson/stream/JsonReader;)V#reader#0#1').
name_ref(p_reader_131, param, 'reader', 'Lcom/google/gson/Gson;.fromJson<T:Ljava/lang/Object;>(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)TT;|Lcom/google/gson/JsonIOException;|Lcom/google/gson/JsonSyntaxException;#reader#0#0').
name_ref(p_reader_156, param, 'reader', 'Lcom/google/gson/TypeAdapter$7570;.read(Lcom/google/gson/stream/JsonReader;)TT;|Ljava/io/IOException;#reader#0#0').
name_ref(p_reader_210, param, 'reader', 'Lcom/google/gson/internal/JsonReaderInternalAccess;.promoteNameToValue(Lcom/google/gson/stream/JsonReader;)V|Ljava/io/IOException;#reader#0#0').
name_ref(p_reader_211, param, 'reader', 'Lcom/google/gson/internal/Streams;.parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;|Lcom/google/gson/JsonParseException;#reader#0#0').
name_ref(p_reader_316, param, 'reader', 'Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$3979;.read(Lcom/google/gson/stream/JsonReader;Ljava/lang/Object;)V|Ljava/io/IOException;|Ljava/lang/IllegalAccessException;#reader#0#0').
name_ref(p_reader_331, param, 'reader', 'Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;.read(Lcom/google/gson/stream/JsonReader;Ljava/lang/Object;)V|Ljava/io/IOException;|Ljava/lang/IllegalAccessException;#reader#0#0').
name_ref(p_reader_590, param, 'reader', 'Lcom/google/gson/stream/JsonReader$50019;.promoteNameToValue(Lcom/google/gson/stream/JsonReader;)V|Ljava/io/IOException;#reader#0#0').
name_ref(p_separator_12, param, 'separator', 'Lcom/google/gson/FieldNamingPolicy;.separateCamelCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;#separator#0#1').
name_ref(p_serialization_187, param, 'serialization', 'Lcom/google/gson/internal/Excluder;.withExclusionStrategy(Lcom/google/gson/ExclusionStrategy;ZZ)Lcom/google/gson/internal/Excluder;#serialization#0#1').
name_ref(p_serialize_198, param, 'serialize', 'Lcom/google/gson/internal/Excluder;.excludeField(Ljava/lang/reflect/Field;Z)Z#serialize#0#1').
name_ref(p_serialize_200, param, 'serialize', 'Lcom/google/gson/internal/Excluder;.excludeClass(Ljava/lang/Class<*>;Z)Z#serialize#0#1').
name_ref(p_serialize_299, param, 'serialize', 'Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;.excludeField(Ljava/lang/reflect/Field;Z)Z#serialize#0#1').
name_ref(p_serialize_301, param, 'serialize', 'Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;.excludeField(Ljava/lang/reflect/Field;ZLcom/google/gson/internal/Excluder;)Z#serialize#0#1').
name_ref(p_serialize_312, param, 'serialize', 'Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;.createBoundField(Lcom/google/gson/Gson;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/google/gson/reflect/TypeToken<*>;ZZ)Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;#serialize#0#4').
name_ref(p_serialize_nulls_37, param, 'serializeNulls', 'Lcom/google/gson/Gson;.(Lcom/google/gson/internal/Excluder;Lcom/google/gson/FieldNamingStrategy;Ljava/util/Map<Ljava/lang/reflect/Type;Lcom/google/gson/InstanceCreator<*>;>;ZZZZZZZLcom/google/gson/LongSerializationPolicy;Ljava/util/List<Lcom/google/gson/TypeAdapterFactory;>;)V#serializeNulls#0#3').
name_ref(p_serialize_nulls_614, param, 'serializeNulls', 'Lcom/google/gson/stream/JsonWriter;.setSerializeNulls(Z)V#serializeNulls#0#0').
name_ref(p_serialize_special_floating_point_values_43, param, 'serializeSpecialFloatingPointValues', 'Lcom/google/gson/Gson;.(Lcom/google/gson/internal/Excluder;Lcom/google/gson/FieldNamingStrategy;Ljava/util/Map<Ljava/lang/reflect/Type;Lcom/google/gson/InstanceCreator<*>;>;ZZZZZZZLcom/google/gson/LongSerializationPolicy;Ljava/util/List<Lcom/google/gson/TypeAdapterFactory;>;)V#serializeSpecialFloatingPointValues#0#9').
name_ref(p_serialize_special_floating_point_values_55, param, 'serializeSpecialFloatingPointValues', 'Lcom/google/gson/Gson;.doubleAdapter(Z)Lcom/google/gson/TypeAdapter<Ljava/lang/Number;>;#serializeSpecialFloatingPointValues#0#0').
name_ref(p_serialize_special_floating_point_values_59, param, 'serializeSpecialFloatingPointValues', 'Lcom/google/gson/Gson;.floatAdapter(Z)Lcom/google/gson/TypeAdapter<Ljava/lang/Number;>;#serializeSpecialFloatingPointValues#0#0').
name_ref(p_serialized_326, param, 'serialized', 'Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;.(Ljava/lang/String;ZZ)V#serialized#0#1').
name_ref(p_since_206, param, 'since', 'Lcom/google/gson/internal/Excluder;.isValidVersion(Lcom/google/gson/annotations/Since;Lcom/google/gson/annotations/Until;)Z#since#0#0').
name_ref(p_skip_past_84, param, 'skipPast', 'Lcom/google/gson/Gson;.getDelegateAdapter<T:Ljava/lang/Object;>(Lcom/google/gson/TypeAdapterFactory;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;#skipPast#0#0').
name_ref(p_src_103, param, 'src', 'Lcom/google/gson/Gson;.toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/stream/JsonWriter;)V|Lcom/google/gson/JsonIOException;#src#0#0').
name_ref(p_src_23, param, 'src', 'Lcom/google/gson/Gson$5979;.serialize(Ljava/lang/Object;)Lcom/google/gson/JsonElement;#src#0#0').
name_ref(p_src_24, param, 'src', 'Lcom/google/gson/Gson$5979;.serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/google/gson/JsonElement;#src#0#0').
name_ref(p_src_358, param, 'src', 'Lcom/google/gson/internal/bind/TypeAdapters$3050;.write(Lcom/google/gson/stream/JsonWriter;Ljava/util/BitSet;)V|Ljava/io/IOException;#src#0#1').
name_ref(p_src_90, param, 'src', 'Lcom/google/gson/Gson;.toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;#src#0#0').
name_ref(p_src_91, param, 'src', 'Lcom/google/gson/Gson;.toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/google/gson/JsonElement;#src#0#0').
name_ref(p_src_93, param, 'src', 'Lcom/google/gson/Gson;.toJson(Ljava/lang/Object;)Ljava/lang/String;#src#0#0').
name_ref(p_src_94, param, 'src', 'Lcom/google/gson/Gson;.toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;#src#0#0').
name_ref(p_src_97, param, 'src', 'Lcom/google/gson/Gson;.toJson(Ljava/lang/Object;Ljava/lang/Appendable;)V|Lcom/google/gson/JsonIOException;#src#0#0').
name_ref(p_src_99, param, 'src', 'Lcom/google/gson/Gson;.toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V|Lcom/google/gson/JsonIOException;#src#0#0').
name_ref(p_src_string_15, param, 'srcString', 'Lcom/google/gson/FieldNamingPolicy;.modifyString(CLjava/lang/String;I)Ljava/lang/String;#srcString#0#1').
name_ref(p_start_221, param, 'start', 'Lcom/google/gson/internal/Streams$AppendableWriter$CurrentWrite;.subSequence(II)Ljava/lang/CharSequence;#start#0#0').
name_ref(p_sub_512, param, 'sub', 'Lcom/google/gson/internal/bind/TypeAdapters;.newFactoryForMultipleTypes<TT:Ljava/lang/Object;>(Ljava/lang/Class<TTT;>;Ljava/lang/Class<+TTT;>;Lcom/google/gson/TypeAdapter<-TTT;>;)Lcom/google/gson/TypeAdapterFactory;#sub#0#1').
name_ref(p_subclass_529, param, 'subclass', 'Lcom/google/gson/reflect/TypeToken;.getSuperclassTypeParameter(Ljava/lang/Class<*>;)Ljava/lang/reflect/Type;#subclass#0#0').
name_ref(p_target_type_256, param, 'targetType', 'Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;.create<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;#targetType#0#1').
name_ref(p_throw_on_eof_582, param, 'throwOnEof', 'Lcom/google/gson/stream/JsonReader;.nextNonWhitespace(Z)I|Ljava/io/IOException;#throwOnEof#0#0').
name_ref(p_to_534, param, 'to', 'Lcom/google/gson/reflect/TypeToken;.isAssignableFrom(Ljava/lang/reflect/Type;Ljava/lang/reflect/GenericArrayType;)Z#to#0#1').
name_ref(p_to_536, param, 'to', 'Lcom/google/gson/reflect/TypeToken;.isAssignableFrom(Ljava/lang/reflect/Type;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Type;>;)Z#to#0#1').
name_ref(p_to_539, param, 'to', 'Lcom/google/gson/reflect/TypeToken;.typeEquals(Ljava/lang/reflect/ParameterizedType;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Type;>;)Z#to#0#1').
name_ref(p_to_544, param, 'to', 'Lcom/google/gson/reflect/TypeToken;.matches(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Type;>;)Z#to#0#1').
name_ref(p_to_find_587, param, 'toFind', 'Lcom/google/gson/stream/JsonReader;.skipTo(Ljava/lang/String;)Z|Ljava/io/IOException;#toFind#0#0').
name_ref(p_token_532, param, 'token', 'Lcom/google/gson/reflect/TypeToken;.isAssignableFrom(Lcom/google/gson/reflect/TypeToken<*>;)Z#token#0#0').
name_ref(p_token_541, param, 'token', 'Lcom/google/gson/reflect/TypeToken;.buildUnexpectedTypeError(Ljava/lang/reflect/Type;[Ljava/lang/Class<*>;)Ljava/lang/AssertionError;#token#0#0').
name_ref(p_top_of_stack_621, param, 'topOfStack', 'Lcom/google/gson/stream/JsonWriter;.replaceTop(I)V#topOfStack#0#0').
name_ref(p_type_174, param, 'type', 'Lcom/google/gson/internal/ConstructorConstructor;.newDefaultImplementationConstructor<T:Ljava/lang/Object;>(Ljava/lang/reflect/Type;Ljava/lang/Class<-TT;>;)Lcom/google/gson/internal/ObjectConstructor<TT;>;#type#0#0').
name_ref(p_type_176, param, 'type', 'Lcom/google/gson/internal/ConstructorConstructor;.newUnsafeAllocator<T:Ljava/lang/Object;>(Ljava/lang/reflect/Type;Ljava/lang/Class<-TT;>;)Lcom/google/gson/internal/ObjectConstructor<TT;>;#type#0#0').
name_ref(p_type_190, param, 'type', 'Lcom/google/gson/internal/Excluder;.create<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;#type#0#1').
name_ref(p_type_287, param, 'type', 'Lcom/google/gson/internal/bind/ObjectTypeAdapter$1329;.create<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;#type#0#1').
name_ref(p_type_307, param, 'type', 'Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;.create<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;#type#0#1').
name_ref(p_type_323, param, 'type', 'Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;.getBoundFields(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<*>;Ljava/lang/Class<*>;)Ljava/util/Map<Ljava/lang/String;Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;>;#type#0#1').
name_ref(p_type_497, param, 'type', 'Lcom/google/gson/internal/bind/TypeAdapters;.newFactory<TT:Ljava/lang/Object;>(Lcom/google/gson/reflect/TypeToken<TTT;>;Lcom/google/gson/TypeAdapter<TTT;>;)Lcom/google/gson/TypeAdapterFactory;#type#0#0').
name_ref(p_type_501, param, 'type', 'Lcom/google/gson/internal/bind/TypeAdapters;.newFactory<TT:Ljava/lang/Object;>(Ljava/lang/Class<TTT;>;Lcom/google/gson/TypeAdapter<TTT;>;)Lcom/google/gson/TypeAdapterFactory;#type#0#0').
name_ref(p_type_525, param, 'type', 'Lcom/google/gson/reflect/TypeToken;.(Ljava/lang/reflect/Type;)V#type#0#0').
name_ref(p_type_547, param, 'type', 'Lcom/google/gson/reflect/TypeToken;.get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken<*>;#type#0#0').
name_ref(p_type_548, param, 'type', 'Lcom/google/gson/reflect/TypeToken;.get<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)Lcom/google/gson/reflect/TypeToken<TT;>;#type#0#0').
name_ref(p_type_554, param, 'type', 'Lcom/google/gson/regression/JsonAdapterNullSafeTest$Device$JsonAdapterFactory;.create<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;#type#0#1').
name_ref(p_type_76, param, 'type', 'Lcom/google/gson/Gson;.getAdapter<T:Ljava/lang/Object;>(Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;#type#0#0').
name_ref(p_type_85, param, 'type', 'Lcom/google/gson/Gson;.getDelegateAdapter<T:Ljava/lang/Object;>(Lcom/google/gson/TypeAdapterFactory;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;#type#0#1').
name_ref(p_type_89, param, 'type', 'Lcom/google/gson/Gson;.getAdapter<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;#type#0#0').
name_ref(p_type_adapter_141, param, 'typeAdapter', 'Lcom/google/gson/Gson$FutureTypeAdapter;.setDelegate(Lcom/google/gson/TypeAdapter<TT;>;)V#typeAdapter#0#0').
name_ref(p_type_adapter_498, param, 'typeAdapter', 'Lcom/google/gson/internal/bind/TypeAdapters;.newFactory<TT:Ljava/lang/Object;>(Lcom/google/gson/reflect/TypeToken<TTT;>;Lcom/google/gson/TypeAdapter<TTT;>;)Lcom/google/gson/TypeAdapterFactory;#typeAdapter#0#1').
name_ref(p_type_adapter_502, param, 'typeAdapter', 'Lcom/google/gson/internal/bind/TypeAdapters;.newFactory<TT:Ljava/lang/Object;>(Ljava/lang/Class<TTT;>;Lcom/google/gson/TypeAdapter<TTT;>;)Lcom/google/gson/TypeAdapterFactory;#typeAdapter#0#1').
name_ref(p_type_adapter_507, param, 'typeAdapter', 'Lcom/google/gson/internal/bind/TypeAdapters;.newFactory<TT:Ljava/lang/Object;>(Ljava/lang/Class<TTT;>;Ljava/lang/Class<TTT;>;Lcom/google/gson/TypeAdapter<-TTT;>;)Lcom/google/gson/TypeAdapterFactory;#typeAdapter#0#2').
name_ref(p_type_adapter_513, param, 'typeAdapter', 'Lcom/google/gson/internal/bind/TypeAdapters;.newFactoryForMultipleTypes<TT:Ljava/lang/Object;>(Ljava/lang/Class<TTT;>;Ljava/lang/Class<+TTT;>;Lcom/google/gson/TypeAdapter<-TTT;>;)Lcom/google/gson/TypeAdapterFactory;#typeAdapter#0#2').
name_ref(p_type_adapter_518, param, 'typeAdapter', 'Lcom/google/gson/internal/bind/TypeAdapters;.newTypeHierarchyFactory<T1:Ljava/lang/Object;>(Ljava/lang/Class<TT1;>;Lcom/google/gson/TypeAdapter<TT1;>;)Lcom/google/gson/TypeAdapterFactory;#typeAdapter#0#1').
name_ref(p_type_adapter_factories_45, param, 'typeAdapterFactories', 'Lcom/google/gson/Gson;.(Lcom/google/gson/internal/Excluder;Lcom/google/gson/FieldNamingStrategy;Ljava/util/Map<Ljava/lang/reflect/Type;Lcom/google/gson/InstanceCreator<*>;>;ZZZZZZZLcom/google/gson/LongSerializationPolicy;Ljava/util/List<Lcom/google/gson/TypeAdapterFactory;>;)V#typeAdapterFactories#0#11').
name_ref(p_type_map_545, param, 'typeMap', 'Lcom/google/gson/reflect/TypeToken;.matches(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Type;>;)Z#typeMap#0#2').
name_ref(p_type_of_src_100, param, 'typeOfSrc', 'Lcom/google/gson/Gson;.toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V|Lcom/google/gson/JsonIOException;#typeOfSrc#0#1').
name_ref(p_type_of_src_104, param, 'typeOfSrc', 'Lcom/google/gson/Gson;.toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/stream/JsonWriter;)V|Lcom/google/gson/JsonIOException;#typeOfSrc#0#1').
name_ref(p_type_of_src_25, param, 'typeOfSrc', 'Lcom/google/gson/Gson$5979;.serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/google/gson/JsonElement;#typeOfSrc#0#1').
name_ref(p_type_of_src_92, param, 'typeOfSrc', 'Lcom/google/gson/Gson;.toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/google/gson/JsonElement;#typeOfSrc#0#1').
name_ref(p_type_of_src_95, param, 'typeOfSrc', 'Lcom/google/gson/Gson;.toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;#typeOfSrc#0#1').
name_ref(p_type_of_t_120, param, 'typeOfT', 'Lcom/google/gson/Gson;.fromJson<T:Ljava/lang/Object;>(Ljava/lang/String;Ljava/lang/reflect/Type;)TT;|Lcom/google/gson/JsonSyntaxException;#typeOfT#0#1').
name_ref(p_type_of_t_126, param, 'typeOfT', 'Lcom/google/gson/Gson;.fromJson<T:Ljava/lang/Object;>(Ljava/io/Reader;Ljava/lang/reflect/Type;)TT;|Lcom/google/gson/JsonIOException;|Lcom/google/gson/JsonSyntaxException;#typeOfT#0#1').
name_ref(p_type_of_t_132, param, 'typeOfT', 'Lcom/google/gson/Gson;.fromJson<T:Ljava/lang/Object;>(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)TT;|Lcom/google/gson/JsonIOException;|Lcom/google/gson/JsonSyntaxException;#typeOfT#0#1').
name_ref(p_type_of_t_140, param, 'typeOfT', 'Lcom/google/gson/Gson;.fromJson<T:Ljava/lang/Object;>(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)TT;|Lcom/google/gson/JsonSyntaxException;#typeOfT#0#1').
name_ref(p_type_of_t_21, param, 'typeOfT', 'Lcom/google/gson/Gson$5700;.deserialize<T:Ljava/lang/Object;>(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)TT;|Lcom/google/gson/JsonParseException;#typeOfT#0#1').
name_ref(p_type_token_165, param, 'typeToken', 'Lcom/google/gson/internal/ConstructorConstructor;.get<T:Ljava/lang/Object;>(Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/internal/ObjectConstructor<TT;>;#typeToken#0#0').
name_ref(p_type_token_225, param, 'typeToken', 'Lcom/google/gson/internal/bind/ArrayTypeAdapter$1310;.create<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;#typeToken#0#1').
name_ref(p_type_token_236, param, 'typeToken', 'Lcom/google/gson/internal/bind/CollectionTypeAdapterFactory;.create<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;#typeToken#0#1').
name_ref(p_type_token_248, param, 'typeToken', 'Lcom/google/gson/internal/bind/DateTypeAdapter$1581;.create<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;#typeToken#0#1').
name_ref(p_type_token_270, param, 'typeToken', 'Lcom/google/gson/internal/bind/MapTypeAdapterFactory;.create<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;#typeToken#0#1').
name_ref(p_type_token_340, param, 'typeToken', 'Lcom/google/gson/internal/bind/SqlDateTypeAdapter$1501;.create<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;#typeToken#0#1').
name_ref(p_type_token_346, param, 'typeToken', 'Lcom/google/gson/internal/bind/TimeTypeAdapter$1525;.create<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;#typeToken#0#1').
name_ref(p_type_token_471, param, 'typeToken', 'Lcom/google/gson/internal/bind/TypeAdapters$18967;.create<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;#typeToken#0#1').
name_ref(p_type_token_496, param, 'typeToken', 'Lcom/google/gson/internal/bind/TypeAdapters$26895;.create<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;#typeToken#0#1').
name_ref(p_type_token_500, param, 'typeToken', 'Lcom/google/gson/internal/bind/TypeAdapters$27534;.create<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;#typeToken#0#1').
name_ref(p_type_token_504, param, 'typeToken', 'Lcom/google/gson/internal/bind/TypeAdapters$27963;.create<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;#typeToken#0#1').
name_ref(p_type_token_509, param, 'typeToken', 'Lcom/google/gson/internal/bind/TypeAdapters$28568;.create<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;#typeToken#0#1').
name_ref(p_type_token_515, param, 'typeToken', 'Lcom/google/gson/internal/bind/TypeAdapters$29301;.create<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;#typeToken#0#1').
name_ref(p_type_token_520, param, 'typeToken', 'Lcom/google/gson/internal/bind/TypeAdapters$30153;.create<T2:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT2;>;)Lcom/google/gson/TypeAdapter<TT2;>;#typeToken#0#1').
name_ref(p_type_var_map_537, param, 'typeVarMap', 'Lcom/google/gson/reflect/TypeToken;.isAssignableFrom(Ljava/lang/reflect/Type;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Type;>;)Z#typeVarMap#0#2').
name_ref(p_type_var_map_540, param, 'typeVarMap', 'Lcom/google/gson/reflect/TypeToken;.typeEquals(Ljava/lang/reflect/ParameterizedType;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Type;>;)Z#typeVarMap#0#2').
name_ref(p_unboxed_505, param, 'unboxed', 'Lcom/google/gson/internal/bind/TypeAdapters;.newFactory<TT:Ljava/lang/Object;>(Ljava/lang/Class<TTT;>;Ljava/lang/Class<TTT;>;Lcom/google/gson/TypeAdapter<-TTT;>;)Lcom/google/gson/TypeAdapterFactory;#unboxed#0#0').
name_ref(p_until_207, param, 'until', 'Lcom/google/gson/internal/Excluder;.isValidVersion(Lcom/google/gson/annotations/Since;Lcom/google/gson/annotations/Until;)Z#until#0#1').
name_ref(p_value_144, param, 'value', 'Lcom/google/gson/Gson$FutureTypeAdapter;.write(Lcom/google/gson/stream/JsonWriter;TT;)V|Ljava/io/IOException;#value#0#1').
name_ref(p_value_146, param, 'value', 'Lcom/google/gson/LongSerializationPolicy$1088;.serialize(Ljava/lang/Long;)Lcom/google/gson/JsonElement;#value#0#0').
name_ref(p_value_148, param, 'value', 'Lcom/google/gson/LongSerializationPolicy$1399;.serialize(Ljava/lang/Long;)Lcom/google/gson/JsonElement;#value#0#0').
name_ref(p_value_149, param, 'value', 'Lcom/google/gson/LongSerializationPolicy;.serialize(Ljava/lang/Long;)Lcom/google/gson/JsonElement;#value#0#0').
name_ref(p_value_151, param, 'value', 'Lcom/google/gson/TypeAdapter;.write(Lcom/google/gson/stream/JsonWriter;TT;)V|Ljava/io/IOException;#value#0#1').
name_ref(p_value_153, param, 'value', 'Lcom/google/gson/TypeAdapter;.toJson(Ljava/io/Writer;TT;)V|Ljava/io/IOException;#value#0#1').
name_ref(p_value_155, param, 'value', 'Lcom/google/gson/TypeAdapter$7570;.write(Lcom/google/gson/stream/JsonWriter;TT;)V|Ljava/io/IOException;#value#0#1').
name_ref(p_value_157, param, 'value', 'Lcom/google/gson/TypeAdapter;.toJson(TT;)Ljava/lang/String;#value#0#0').
name_ref(p_value_158, param, 'value', 'Lcom/google/gson/TypeAdapter;.toJsonTree(TT;)Lcom/google/gson/JsonElement;#value#0#0').
name_ref(p_value_196, param, 'value', 'Lcom/google/gson/internal/Excluder$4069;.write(Lcom/google/gson/stream/JsonWriter;TT;)V|Ljava/io/IOException;#value#0#1').
name_ref(p_value_252, param, 'value', 'Lcom/google/gson/internal/bind/DateTypeAdapter;.write(Lcom/google/gson/stream/JsonWriter;Ljava/util/Date;)V|Ljava/io/IOException;#value#0#1').
name_ref(p_value_291, param, 'value', 'Lcom/google/gson/internal/bind/ObjectTypeAdapter;.write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V|Ljava/io/IOException;#value#0#1').
name_ref(p_value_315, param, 'value', 'Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$3979;.write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V|Ljava/io/IOException;|Ljava/lang/IllegalAccessException;#value#0#1').
name_ref(p_value_317, param, 'value', 'Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$3979;.read(Lcom/google/gson/stream/JsonReader;Ljava/lang/Object;)V|Ljava/io/IOException;|Ljava/lang/IllegalAccessException;#value#0#1').
name_ref(p_value_318, param, 'value', 'Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$3979;.writeField(Ljava/lang/Object;)Z|Ljava/io/IOException;|Ljava/lang/IllegalAccessException;#value#0#0').
name_ref(p_value_328, param, 'value', 'Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;.writeField(Ljava/lang/Object;)Z|Ljava/io/IOException;|Ljava/lang/IllegalAccessException;#value#0#0').
name_ref(p_value_330, param, 'value', 'Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;.write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V|Ljava/io/IOException;|Ljava/lang/IllegalAccessException;#value#0#1').
name_ref(p_value_332, param, 'value', 'Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;.read(Lcom/google/gson/stream/JsonReader;Ljava/lang/Object;)V|Ljava/io/IOException;|Ljava/lang/IllegalAccessException;#value#0#1').
name_ref(p_value_337, param, 'value', 'Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;.write(Lcom/google/gson/stream/JsonWriter;TT;)V|Ljava/io/IOException;#value#0#1').
name_ref(p_value_343, param, 'value', 'Lcom/google/gson/internal/bind/SqlDateTypeAdapter;.write(Lcom/google/gson/stream/JsonWriter;Ljava/sql/Date;)V|Ljava/io/IOException;#value#0#1').
name_ref(p_value_349, param, 'value', 'Lcom/google/gson/internal/bind/TimeTypeAdapter;.write(Lcom/google/gson/stream/JsonWriter;Ljava/sql/Time;)V|Ljava/io/IOException;#value#0#1').
name_ref(p_value_352, param, 'value', 'Lcom/google/gson/internal/bind/TypeAdapters$2215;.write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Class;)V|Ljava/io/IOException;#value#0#1').
name_ref(p_value_363, param, 'value', 'Lcom/google/gson/internal/bind/TypeAdapters$4697;.write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Boolean;)V|Ljava/io/IOException;#value#0#1').
name_ref(p_value_367, param, 'value', 'Lcom/google/gson/internal/bind/TypeAdapters$5472;.write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Boolean;)V|Ljava/io/IOException;#value#0#1').
name_ref(p_value_372, param, 'value', 'Lcom/google/gson/internal/bind/TypeAdapters$6040;.write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Number;)V|Ljava/io/IOException;#value#0#1').
name_ref(p_value_377, param, 'value', 'Lcom/google/gson/internal/bind/TypeAdapters$6691;.write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Number;)V|Ljava/io/IOException;#value#0#1').
name_ref(p_value_382, param, 'value', 'Lcom/google/gson/internal/bind/TypeAdapters$7316;.write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Number;)V|Ljava/io/IOException;#value#0#1').
name_ref(p_value_387, param, 'value', 'Lcom/google/gson/internal/bind/TypeAdapters$7950;.write(Lcom/google/gson/stream/JsonWriter;Ljava/util/concurrent/atomic/AtomicInteger;)V|Ljava/io/IOException;#value#0#1').
name_ref(p_value_392, param, 'value', 'Lcom/google/gson/internal/bind/TypeAdapters$8562;.write(Lcom/google/gson/stream/JsonWriter;Ljava/util/concurrent/atomic/AtomicBoolean;)V|Ljava/io/IOException;#value#0#1').
name_ref(p_value_397, param, 'value', 'Lcom/google/gson/internal/bind/TypeAdapters$9083;.write(Lcom/google/gson/stream/JsonWriter;Ljava/util/concurrent/atomic/AtomicIntegerArray;)V|Ljava/io/IOException;#value#0#1').
name_ref(p_value_402, param, 'value', 'Lcom/google/gson/internal/bind/TypeAdapters$10229;.write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Number;)V|Ljava/io/IOException;#value#0#1').
name_ref(p_value_406, param, 'value', 'Lcom/google/gson/internal/bind/TypeAdapters$10736;.write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Number;)V|Ljava/io/IOException;#value#0#1').
name_ref(p_value_410, param, 'value', 'Lcom/google/gson/internal/bind/TypeAdapters$11148;.write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Number;)V|Ljava/io/IOException;#value#0#1').
name_ref(p_value_414, param, 'value', 'Lcom/google/gson/internal/bind/TypeAdapters$11552;.write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Number;)V|Ljava/io/IOException;#value#0#1').
name_ref(p_value_419, param, 'value', 'Lcom/google/gson/internal/bind/TypeAdapters$12235;.write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Character;)V|Ljava/io/IOException;#value#0#1').
name_ref(p_value_424, param, 'value', 'Lcom/google/gson/internal/bind/TypeAdapters$12955;.write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/String;)V|Ljava/io/IOException;#value#0#1').
name_ref(p_value_428, param, 'value', 'Lcom/google/gson/internal/bind/TypeAdapters$13564;.write(Lcom/google/gson/stream/JsonWriter;Ljava/math/BigDecimal;)V|Ljava/io/IOException;#value#0#1').
name_ref(p_value_432, param, 'value', 'Lcom/google/gson/internal/bind/TypeAdapters$14106;.write(Lcom/google/gson/stream/JsonWriter;Ljava/math/BigInteger;)V|Ljava/io/IOException;#value#0#1').
name_ref(p_value_437, param, 'value', 'Lcom/google/gson/internal/bind/TypeAdapters$14745;.write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/StringBuilder;)V|Ljava/io/IOException;#value#0#1').
name_ref(p_value_442, param, 'value', 'Lcom/google/gson/internal/bind/TypeAdapters$15356;.write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/StringBuffer;)V|Ljava/io/IOException;#value#0#1').
name_ref(p_value_447, param, 'value', 'Lcom/google/gson/internal/bind/TypeAdapters$15941;.write(Lcom/google/gson/stream/JsonWriter;Ljava/net/URL;)V|Ljava/io/IOException;#value#0#1').
name_ref(p_value_452, param, 'value', 'Lcom/google/gson/internal/bind/TypeAdapters$16536;.write(Lcom/google/gson/stream/JsonWriter;Ljava/net/URI;)V|Ljava/io/IOException;#value#0#1').
name_ref(p_value_457, param, 'value', 'Lcom/google/gson/internal/bind/TypeAdapters$17248;.write(Lcom/google/gson/stream/JsonWriter;Ljava/net/InetAddress;)V|Ljava/io/IOException;#value#0#1').
name_ref(p_value_462, param, 'value', 'Lcom/google/gson/internal/bind/TypeAdapters$17941;.write(Lcom/google/gson/stream/JsonWriter;Ljava/util/UUID;)V|Ljava/io/IOException;#value#0#1').
name_ref(p_value_467, param, 'value', 'Lcom/google/gson/internal/bind/TypeAdapters$18491;.write(Lcom/google/gson/stream/JsonWriter;Ljava/util/Currency;)V|Ljava/io/IOException;#value#0#1').
name_ref(p_value_474, param, 'value', 'Lcom/google/gson/internal/bind/TypeAdapters$19359;.write(Lcom/google/gson/stream/JsonWriter;Ljava/sql/Timestamp;)V|Ljava/io/IOException;#value#0#1').
name_ref(p_value_478, param, 'value', 'Lcom/google/gson/internal/bind/TypeAdapters$19816;.write(Lcom/google/gson/stream/JsonWriter;Ljava/util/Calendar;)V|Ljava/io/IOException;#value#0#1').
name_ref(p_value_483, param, 'value', 'Lcom/google/gson/internal/bind/TypeAdapters$22013;.write(Lcom/google/gson/stream/JsonWriter;Ljava/util/Locale;)V|Ljava/io/IOException;#value#0#1').
name_ref(p_value_488, param, 'value', 'Lcom/google/gson/internal/bind/TypeAdapters$23236;.write(Lcom/google/gson/stream/JsonWriter;Lcom/google/gson/JsonElement;)V|Ljava/io/IOException;#value#0#1').
name_ref(p_value_493, param, 'value', 'Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;.write(Lcom/google/gson/stream/JsonWriter;TT;)V|Ljava/io/IOException;#value#0#1').
name_ref(p_value_523, param, 'value', 'Lcom/google/gson/internal/bind/TypeAdapters$30498;.write(Lcom/google/gson/stream/JsonWriter;TT1;)V|Ljava/io/IOException;#value#0#1').
name_ref(p_value_58, param, 'value', 'Lcom/google/gson/Gson$13310;.write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Number;)V|Ljava/io/IOException;#value#0#1').
name_ref(p_value_62, param, 'value', 'Lcom/google/gson/Gson$14048;.write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Number;)V|Ljava/io/IOException;#value#0#1').
name_ref(p_value_623, param, 'value', 'Lcom/google/gson/stream/JsonWriter;.value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;|Ljava/io/IOException;#value#0#0').
name_ref(p_value_624, param, 'value', 'Lcom/google/gson/stream/JsonWriter;.jsonValue(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;|Ljava/io/IOException;#value#0#0').
name_ref(p_value_625, param, 'value', 'Lcom/google/gson/stream/JsonWriter;.value(Z)Lcom/google/gson/stream/JsonWriter;|Ljava/io/IOException;#value#0#0').
name_ref(p_value_626, param, 'value', 'Lcom/google/gson/stream/JsonWriter;.value(D)Lcom/google/gson/stream/JsonWriter;|Ljava/io/IOException;#value#0#0').
name_ref(p_value_627, param, 'value', 'Lcom/google/gson/stream/JsonWriter;.value(J)Lcom/google/gson/stream/JsonWriter;|Ljava/io/IOException;#value#0#0').
name_ref(p_value_628, param, 'value', 'Lcom/google/gson/stream/JsonWriter;.value(Ljava/lang/Number;)Lcom/google/gson/stream/JsonWriter;|Ljava/io/IOException;#value#0#0').
name_ref(p_value_629, param, 'value', 'Lcom/google/gson/stream/JsonWriter;.string(Ljava/lang/String;)V|Ljava/io/IOException;#value#0#0').
name_ref(p_value_63, param, 'value', 'Lcom/google/gson/Gson;.checkValidFloatingPoint(D)V#value#0#0').
name_ref(p_value_67, param, 'value', 'Lcom/google/gson/Gson$15168;.write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Number;)V|Ljava/io/IOException;#value#0#1').
name_ref(p_value_70, param, 'value', 'Lcom/google/gson/Gson$15743;.write(Lcom/google/gson/stream/JsonWriter;Ljava/util/concurrent/atomic/AtomicLong;)V|Ljava/io/IOException;#value#0#1').
name_ref(p_value_74, param, 'value', 'Lcom/google/gson/Gson$16239;.write(Lcom/google/gson/stream/JsonWriter;Ljava/util/concurrent/atomic/AtomicLongArray;)V|Ljava/io/IOException;#value#0#1').
name_ref(p_value_type_278, param, 'valueType', 'Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;.(Lcom/google/gson/Gson;Ljava/lang/reflect/Type;Lcom/google/gson/TypeAdapter<TK;>;Ljava/lang/reflect/Type;Lcom/google/gson/TypeAdapter<TV;>;Lcom/google/gson/internal/ObjectConstructor<+Ljava/util/Map<TK;TV;>;>;)V#valueType#0#3').
name_ref(p_value_type_adapter_279, param, 'valueTypeAdapter', 'Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;.(Lcom/google/gson/Gson;Ljava/lang/reflect/Type;Lcom/google/gson/TypeAdapter<TK;>;Ljava/lang/reflect/Type;Lcom/google/gson/TypeAdapter<TV;>;Lcom/google/gson/internal/ObjectConstructor<+Ljava/util/Map<TK;TV;>;>;)V#valueTypeAdapter#0#4').
name_ref(p_writer_101, param, 'writer', 'Lcom/google/gson/Gson;.toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V|Lcom/google/gson/JsonIOException;#writer#0#2').
name_ref(p_writer_105, param, 'writer', 'Lcom/google/gson/Gson;.toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/stream/JsonWriter;)V|Lcom/google/gson/JsonIOException;#writer#0#2').
name_ref(p_writer_109, param, 'writer', 'Lcom/google/gson/Gson;.toJson(Lcom/google/gson/JsonElement;Ljava/lang/Appendable;)V|Lcom/google/gson/JsonIOException;#writer#0#1').
name_ref(p_writer_110, param, 'writer', 'Lcom/google/gson/Gson;.newJsonWriter(Ljava/io/Writer;)Lcom/google/gson/stream/JsonWriter;|Ljava/io/IOException;#writer#0#0').
name_ref(p_writer_115, param, 'writer', 'Lcom/google/gson/Gson;.toJson(Lcom/google/gson/JsonElement;Lcom/google/gson/stream/JsonWriter;)V|Lcom/google/gson/JsonIOException;#writer#0#1').
name_ref(p_writer_213, param, 'writer', 'Lcom/google/gson/internal/Streams;.write(Lcom/google/gson/JsonElement;Lcom/google/gson/stream/JsonWriter;)V|Ljava/io/IOException;#writer#0#1').
name_ref(p_writer_314, param, 'writer', 'Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$3979;.write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V|Ljava/io/IOException;|Ljava/lang/IllegalAccessException;#writer#0#0').
name_ref(p_writer_329, param, 'writer', 'Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;.write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V|Ljava/io/IOException;|Ljava/lang/IllegalAccessException;#writer#0#0').
name_ref(p_writer_98, param, 'writer', 'Lcom/google/gson/Gson;.toJson(Ljava/lang/Object;Ljava/lang/Appendable;)V|Lcom/google/gson/JsonIOException;#writer#0#1').
name_ref(f_atomic_boolean_389, field, 'ATOMIC_BOOLEAN', 'Lcom/google/gson/internal/bind/TypeAdapters;.ATOMIC_BOOLEAN)Lcom/google/gson/TypeAdapter<Ljava/util/concurrent/atomic/AtomicBoolean;>;').
name_ref(f_atomic_boolean_factory_393, field, 'ATOMIC_BOOLEAN_FACTORY', 'Lcom/google/gson/internal/bind/TypeAdapters;.ATOMIC_BOOLEAN_FACTORY)Lcom/google/gson/TypeAdapterFactory;').
name_ref(f_atomic_integer_384, field, 'ATOMIC_INTEGER', 'Lcom/google/gson/internal/bind/TypeAdapters;.ATOMIC_INTEGER)Lcom/google/gson/TypeAdapter<Ljava/util/concurrent/atomic/AtomicInteger;>;').
name_ref(f_atomic_integer_array_394, field, 'ATOMIC_INTEGER_ARRAY', 'Lcom/google/gson/internal/bind/TypeAdapters;.ATOMIC_INTEGER_ARRAY)Lcom/google/gson/TypeAdapter<Ljava/util/concurrent/atomic/AtomicIntegerArray;>;').
name_ref(f_atomic_integer_array_factory_398, field, 'ATOMIC_INTEGER_ARRAY_FACTORY', 'Lcom/google/gson/internal/bind/TypeAdapters;.ATOMIC_INTEGER_ARRAY_FACTORY)Lcom/google/gson/TypeAdapterFactory;').
name_ref(f_atomic_integer_factory_388, field, 'ATOMIC_INTEGER_FACTORY', 'Lcom/google/gson/internal/bind/TypeAdapters;.ATOMIC_INTEGER_FACTORY)Lcom/google/gson/TypeAdapterFactory;').
name_ref(f_begin_array_591, field, 'BEGIN_ARRAY', 'Lcom/google/gson/stream/JsonToken;.BEGIN_ARRAY)Lcom/google/gson/stream/JsonToken;').
name_ref(f_begin_object_593, field, 'BEGIN_OBJECT', 'Lcom/google/gson/stream/JsonToken;.BEGIN_OBJECT)Lcom/google/gson/stream/JsonToken;').
name_ref(f_big_decimal_425, field, 'BIG_DECIMAL', 'Lcom/google/gson/internal/bind/TypeAdapters;.BIG_DECIMAL)Lcom/google/gson/TypeAdapter<Ljava/math/BigDecimal;>;').
name_ref(f_big_integer_429, field, 'BIG_INTEGER', 'Lcom/google/gson/internal/bind/TypeAdapters;.BIG_INTEGER)Lcom/google/gson/TypeAdapter<Ljava/math/BigInteger;>;').
name_ref(f_bit_set_355, field, 'BIT_SET', 'Lcom/google/gson/internal/bind/TypeAdapters;.BIT_SET)Lcom/google/gson/TypeAdapter<Ljava/util/BitSet;>;').
name_ref(f_bit_set_factory_359, field, 'BIT_SET_FACTORY', 'Lcom/google/gson/internal/bind/TypeAdapters;.BIT_SET_FACTORY)Lcom/google/gson/TypeAdapterFactory;').
name_ref(f_boolean_360, field, 'BOOLEAN', 'Lcom/google/gson/internal/bind/TypeAdapters;.BOOLEAN)Lcom/google/gson/TypeAdapter<Ljava/lang/Boolean;>;').
name_ref(f_boolean_598, field, 'BOOLEAN', 'Lcom/google/gson/stream/JsonToken;.BOOLEAN)Lcom/google/gson/stream/JsonToken;').
name_ref(f_boolean_as_string_364, field, 'BOOLEAN_AS_STRING', 'Lcom/google/gson/internal/bind/TypeAdapters;.BOOLEAN_AS_STRING)Lcom/google/gson/TypeAdapter<Ljava/lang/Boolean;>;').
name_ref(f_boolean_factory_368, field, 'BOOLEAN_FACTORY', 'Lcom/google/gson/internal/bind/TypeAdapters;.BOOLEAN_FACTORY)Lcom/google/gson/TypeAdapterFactory;').
name_ref(f_buffer_557, field, 'buffer', 'Lcom/google/gson/stream/JsonReader;.buffer)[C').
name_ref(f_byte_369, field, 'BYTE', 'Lcom/google/gson/internal/bind/TypeAdapters;.BYTE)Lcom/google/gson/TypeAdapter<Ljava/lang/Number;>;').
name_ref(f_byte_factory_373, field, 'BYTE_FACTORY', 'Lcom/google/gson/internal/bind/TypeAdapters;.BYTE_FACTORY)Lcom/google/gson/TypeAdapterFactory;').
name_ref(f_calendar_475, field, 'CALENDAR', 'Lcom/google/gson/internal/bind/TypeAdapters;.CALENDAR)Lcom/google/gson/TypeAdapter<Ljava/util/Calendar;>;').
name_ref(f_calendar_factory_479, field, 'CALENDAR_FACTORY', 'Lcom/google/gson/internal/bind/TypeAdapters;.CALENDAR_FACTORY)Lcom/google/gson/TypeAdapterFactory;').
name_ref(f_calls_17, field, 'calls', 'Lcom/google/gson/Gson;.calls)Ljava/lang/ThreadLocal<Ljava/util/Map<Lcom/google/gson/reflect/TypeToken<Lcom/google/gson/reflect/TypeToken;{0}*>;Lcom/google/gson/Gson$FutureTypeAdapter<Lcom/google/gson/Gson$FutureTypeAdapter;{0}*>;>;>;').
name_ref(f_character_416, field, 'CHARACTER', 'Lcom/google/gson/internal/bind/TypeAdapters;.CHARACTER)Lcom/google/gson/TypeAdapter<Ljava/lang/Character;>;').
name_ref(f_character_factory_420, field, 'CHARACTER_FACTORY', 'Lcom/google/gson/internal/bind/TypeAdapters;.CHARACTER_FACTORY)Lcom/google/gson/TypeAdapterFactory;').
name_ref(f_class_350, field, 'CLASS', 'Lcom/google/gson/internal/bind/TypeAdapters;.CLASS)Lcom/google/gson/TypeAdapter<Ljava/lang/Class<>;>;').
name_ref(f_class_factory_354, field, 'CLASS_FACTORY', 'Lcom/google/gson/internal/bind/TypeAdapters;.CLASS_FACTORY)Lcom/google/gson/TypeAdapterFactory;').
name_ref(f_complex_map_key_serialization_268, field, 'complexMapKeySerialization', 'Lcom/google/gson/internal/bind/MapTypeAdapterFactory;.complexMapKeySerialization)Z').
name_ref(f_constructor_constructor_234, field, 'constructorConstructor', 'Lcom/google/gson/internal/bind/CollectionTypeAdapterFactory;.constructorConstructor)Lcom/google/gson/internal/ConstructorConstructor;').
name_ref(f_constructor_constructor_254, field, 'constructorConstructor', 'Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;.constructorConstructor)Lcom/google/gson/internal/ConstructorConstructor;').
name_ref(f_constructor_constructor_267, field, 'constructorConstructor', 'Lcom/google/gson/internal/bind/MapTypeAdapterFactory;.constructorConstructor)Lcom/google/gson/internal/ConstructorConstructor;').
name_ref(f_constructor_constructor_295, field, 'constructorConstructor', 'Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;.constructorConstructor)Lcom/google/gson/internal/ConstructorConstructor;').
name_ref(f_constructor_constructor_46, field, 'constructorConstructor', 'Lcom/google/gson/Gson;.constructorConstructor)Lcom/google/gson/internal/ConstructorConstructor;').
name_ref(f_currency_464, field, 'CURRENCY', 'Lcom/google/gson/internal/bind/TypeAdapters;.CURRENCY)Lcom/google/gson/TypeAdapter<Ljava/util/Currency;>;').
name_ref(f_currency_factory_468, field, 'CURRENCY_FACTORY', 'Lcom/google/gson/internal/bind/TypeAdapters;.CURRENCY_FACTORY)Lcom/google/gson/TypeAdapterFactory;').
name_ref(f_default_145, field, 'DEFAULT', 'Lcom/google/gson/LongSerializationPolicy;.DEFAULT)Lcom/google/gson/LongSerializationPolicy;').
name_ref(f_default_33, field, 'DEFAULT', 'Lcom/google/gson/internal/Excluder;.DEFAULT)Lcom/google/gson/internal/Excluder;').
name_ref(f_default_complex_map_keys_27, field, 'DEFAULT_COMPLEX_MAP_KEYS', 'Lcom/google/gson/Gson;.DEFAULT_COMPLEX_MAP_KEYS)Z').
name_ref(f_default_escape_html_29, field, 'DEFAULT_ESCAPE_HTML', 'Lcom/google/gson/Gson;.DEFAULT_ESCAPE_HTML)Z').
name_ref(f_default_json_non_executable_28, field, 'DEFAULT_JSON_NON_EXECUTABLE', 'Lcom/google/gson/Gson;.DEFAULT_JSON_NON_EXECUTABLE)Z').
name_ref(f_default_lenient_31, field, 'DEFAULT_LENIENT', 'Lcom/google/gson/Gson;.DEFAULT_LENIENT)Z').
name_ref(f_default_pretty_print_30, field, 'DEFAULT_PRETTY_PRINT', 'Lcom/google/gson/Gson;.DEFAULT_PRETTY_PRINT)Z').
name_ref(f_default_serialize_nulls_26, field, 'DEFAULT_SERIALIZE_NULLS', 'Lcom/google/gson/Gson;.DEFAULT_SERIALIZE_NULLS)Z').
name_ref(f_default_specialize_float_values_32, field, 'DEFAULT_SPECIALIZE_FLOAT_VALUES', 'Lcom/google/gson/Gson;.DEFAULT_SPECIALIZE_FLOAT_VALUES)Z').
name_ref(f_deserialization_context_19, field, 'deserializationContext', 'Lcom/google/gson/Gson;.deserializationContext)Lcom/google/gson/JsonDeserializationContext;').
name_ref(f_deserialization_strategies_183, field, 'deserializationStrategies', 'Lcom/google/gson/internal/Excluder;.deserializationStrategies)Ljava/util/List<Lcom/google/gson/ExclusionStrategy;>;').
name_ref(f_double_407, field, 'DOUBLE', 'Lcom/google/gson/internal/bind/TypeAdapters;.DOUBLE)Lcom/google/gson/TypeAdapter<Ljava/lang/Number;>;').
name_ref(f_empty_document_606, field, 'EMPTY_DOCUMENT', 'Lcom/google/gson/stream/JsonScope;.EMPTY_DOCUMENT)I').
name_ref(f_end_array_592, field, 'END_ARRAY', 'Lcom/google/gson/stream/JsonToken;.END_ARRAY)Lcom/google/gson/stream/JsonToken;').
name_ref(f_end_document_600, field, 'END_DOCUMENT', 'Lcom/google/gson/stream/JsonToken;.END_DOCUMENT)Lcom/google/gson/stream/JsonToken;').
name_ref(f_end_object_594, field, 'END_OBJECT', 'Lcom/google/gson/stream/JsonToken;.END_OBJECT)Lcom/google/gson/stream/JsonToken;').
name_ref(f_enum_factory_494, field, 'ENUM_FACTORY', 'Lcom/google/gson/internal/bind/TypeAdapters;.ENUM_FACTORY)Lcom/google/gson/TypeAdapterFactory;').
name_ref(f_excluder_297, field, 'excluder', 'Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;.excluder)Lcom/google/gson/internal/Excluder;').
name_ref(f_factories_54, field, 'factories', 'Lcom/google/gson/Gson;.factories)Ljava/util/List<Lcom/google/gson/TypeAdapterFactory;>;').
name_ref(f_factory_223, field, 'FACTORY', 'Lcom/google/gson/internal/bind/ArrayTypeAdapter;.FACTORY)Lcom/google/gson/TypeAdapterFactory;').
name_ref(f_factory_246, field, 'FACTORY', 'Lcom/google/gson/internal/bind/DateTypeAdapter;.FACTORY)Lcom/google/gson/TypeAdapterFactory;').
name_ref(f_factory_285, field, 'FACTORY', 'Lcom/google/gson/internal/bind/ObjectTypeAdapter;.FACTORY)Lcom/google/gson/TypeAdapterFactory;').
name_ref(f_factory_338, field, 'FACTORY', 'Lcom/google/gson/internal/bind/SqlDateTypeAdapter;.FACTORY)Lcom/google/gson/TypeAdapterFactory;').
name_ref(f_factory_344, field, 'FACTORY', 'Lcom/google/gson/internal/bind/TimeTypeAdapter;.FACTORY)Lcom/google/gson/TypeAdapterFactory;').
name_ref(f_field_naming_policy_296, field, 'fieldNamingPolicy', 'Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;.fieldNamingPolicy)Lcom/google/gson/FieldNamingStrategy;').
name_ref(f_float_403, field, 'FLOAT', 'Lcom/google/gson/internal/bind/TypeAdapters;.FLOAT)Lcom/google/gson/TypeAdapter<Ljava/lang/Number;>;').
name_ref(f_generate_non_executable_json_48, field, 'generateNonExecutableJson', 'Lcom/google/gson/Gson;.generateNonExecutableJson)Z').
name_ref(f_gson_549, field, 'gson', 'Lcom/google/gson/regression/JsonAdapterNullSafeTest;.gson)Lcom/google/gson/Gson;').
name_ref(f_hash_code_528, field, 'hashCode', 'Lcom/google/gson/reflect/TypeToken<Lcom/google/gson/reflect/TypeToken;:TT;>;.hashCode)I').
name_ref(f_html_safe_49, field, 'htmlSafe', 'Lcom/google/gson/Gson;.htmlSafe)Z').
name_ref(f_html_safe_replacement_chars_603, field, 'HTML_SAFE_REPLACEMENT_CHARS', 'Lcom/google/gson/stream/JsonWriter;.HTML_SAFE_REPLACEMENT_CHARS)[Ljava/lang/String;').
name_ref(f_identity_1, field, 'IDENTITY', 'Lcom/google/gson/FieldNamingPolicy;.IDENTITY)Lcom/google/gson/FieldNamingPolicy;').
name_ref(f_ignore_versions_179, field, 'IGNORE_VERSIONS', 'Lcom/google/gson/internal/Excluder;.IGNORE_VERSIONS)D').
name_ref(f_in_569, field, 'in', 'Lcom/google/gson/stream/JsonReader;.in)Ljava/io/Reader;').
name_ref(f_inet_address_454, field, 'INET_ADDRESS', 'Lcom/google/gson/internal/bind/TypeAdapters;.INET_ADDRESS)Lcom/google/gson/TypeAdapter<Ljava/net/InetAddress;>;').
name_ref(f_inet_address_factory_458, field, 'INET_ADDRESS_FACTORY', 'Lcom/google/gson/internal/bind/TypeAdapters;.INET_ADDRESS_FACTORY)Lcom/google/gson/TypeAdapterFactory;').
name_ref(f_instance_creators_164, field, 'instanceCreators', 'Lcom/google/gson/internal/ConstructorConstructor;.instanceCreators)Ljava/util/Map<Ljava/lang/reflect/Type;Lcom/google/gson/InstanceCreator<Lcom/google/gson/InstanceCreator;{0}*>;>;').
name_ref(f_integer_379, field, 'INTEGER', 'Lcom/google/gson/internal/bind/TypeAdapters;.INTEGER)Lcom/google/gson/TypeAdapter<Ljava/lang/Number;>;').
name_ref(f_integer_factory_383, field, 'INTEGER_FACTORY', 'Lcom/google/gson/internal/bind/TypeAdapters;.INTEGER_FACTORY)Lcom/google/gson/TypeAdapterFactory;').
name_ref(f_json_element_485, field, 'JSON_ELEMENT', 'Lcom/google/gson/internal/bind/TypeAdapters;.JSON_ELEMENT)Lcom/google/gson/TypeAdapter<Lcom/google/gson/JsonElement;>;').
name_ref(f_json_element_factory_489, field, 'JSON_ELEMENT_FACTORY', 'Lcom/google/gson/internal/bind/TypeAdapters;.JSON_ELEMENT_FACTORY)Lcom/google/gson/TypeAdapterFactory;').
name_ref(f_lenient_51, field, 'lenient', 'Lcom/google/gson/Gson;.lenient)Z').
name_ref(f_lenient_556, field, 'lenient', 'Lcom/google/gson/stream/JsonReader;.lenient)Z').
name_ref(f_limit_559, field, 'limit', 'Lcom/google/gson/stream/JsonReader;.limit)I').
name_ref(f_line_number_560, field, 'lineNumber', 'Lcom/google/gson/stream/JsonReader;.lineNumber)I').
name_ref(f_line_start_561, field, 'lineStart', 'Lcom/google/gson/stream/JsonReader;.lineStart)I').
name_ref(f_locale_480, field, 'LOCALE', 'Lcom/google/gson/internal/bind/TypeAdapters;.LOCALE)Lcom/google/gson/TypeAdapter<Ljava/util/Locale;>;').
name_ref(f_locale_factory_484, field, 'LOCALE_FACTORY', 'Lcom/google/gson/internal/bind/TypeAdapters;.LOCALE_FACTORY)Lcom/google/gson/TypeAdapterFactory;').
name_ref(f_long_399, field, 'LONG', 'Lcom/google/gson/internal/bind/TypeAdapters;.LONG)Lcom/google/gson/TypeAdapter<Ljava/lang/Number;>;').
name_ref(f_lower_case_with_dashes_9, field, 'LOWER_CASE_WITH_DASHES', 'Lcom/google/gson/FieldNamingPolicy;.LOWER_CASE_WITH_DASHES)Lcom/google/gson/FieldNamingPolicy;').
name_ref(f_lower_case_with_underscores_7, field, 'LOWER_CASE_WITH_UNDERSCORES', 'Lcom/google/gson/FieldNamingPolicy;.LOWER_CASE_WITH_UNDERSCORES)Lcom/google/gson/FieldNamingPolicy;').
name_ref(f_modifiers_180, field, 'modifiers', 'Lcom/google/gson/internal/Excluder;.modifiers)I').
name_ref(f_name_595, field, 'NAME', 'Lcom/google/gson/stream/JsonToken;.NAME)Lcom/google/gson/stream/JsonToken;').
name_ref(f_non_execute_prefix_555, field, 'NON_EXECUTE_PREFIX', 'Lcom/google/gson/stream/JsonReader;.NON_EXECUTE_PREFIX)[C').
name_ref(f_null_599, field, 'NULL', 'Lcom/google/gson/stream/JsonToken;.NULL)Lcom/google/gson/stream/JsonToken;').
name_ref(f_number_411, field, 'NUMBER', 'Lcom/google/gson/internal/bind/TypeAdapters;.NUMBER)Lcom/google/gson/TypeAdapter<Ljava/lang/Number;>;').
name_ref(f_number_597, field, 'NUMBER', 'Lcom/google/gson/stream/JsonToken;.NUMBER)Lcom/google/gson/stream/JsonToken;').
name_ref(f_number_factory_415, field, 'NUMBER_FACTORY', 'Lcom/google/gson/internal/bind/TypeAdapters;.NUMBER_FACTORY)Lcom/google/gson/TypeAdapterFactory;').
name_ref(f_out_610, field, 'out', 'Lcom/google/gson/stream/JsonWriter;.out)Ljava/io/Writer;').
name_ref(f_path_indices_567, field, 'pathIndices', 'Lcom/google/gson/stream/JsonReader;.pathIndices)[I').
name_ref(f_path_names_566, field, 'pathNames', 'Lcom/google/gson/stream/JsonReader;.pathNames)[Ljava/lang/String;').
name_ref(f_peeked_562, field, 'peeked', 'Lcom/google/gson/stream/JsonReader;.peeked)I').
name_ref(f_peeked_begin_object_574, field, 'PEEKED_BEGIN_OBJECT', 'Lcom/google/gson/stream/JsonReader;.PEEKED_BEGIN_OBJECT)I').
name_ref(f_peeked_none_563, field, 'PEEKED_NONE', 'Lcom/google/gson/stream/JsonReader;.PEEKED_NONE)I').
name_ref(f_pos_558, field, 'pos', 'Lcom/google/gson/stream/JsonReader;.pos)I').
name_ref(f_pretty_printing_50, field, 'prettyPrinting', 'Lcom/google/gson/Gson;.prettyPrinting)Z').
name_ref(f_raw_type_527, field, 'rawType', 'Lcom/google/gson/reflect/TypeToken<Lcom/google/gson/reflect/TypeToken;:TT;>;.rawType)Ljava/lang/Class<Ljava/lang/Class;{0}-Lcom/google/gson/reflect/TypeToken;:TT;>;').
name_ref(f_replacement_chars_601, field, 'REPLACEMENT_CHARS', 'Lcom/google/gson/stream/JsonWriter;.REPLACEMENT_CHARS)[Ljava/lang/String;').
name_ref(f_separator_607, field, 'separator', 'Lcom/google/gson/stream/JsonWriter;.separator)Ljava/lang/String;').
name_ref(f_serialization_context_22, field, 'serializationContext', 'Lcom/google/gson/Gson;.serializationContext)Lcom/google/gson/JsonSerializationContext;').
name_ref(f_serialization_strategies_182, field, 'serializationStrategies', 'Lcom/google/gson/internal/Excluder;.serializationStrategies)Ljava/util/List<Lcom/google/gson/ExclusionStrategy;>;').
name_ref(f_serialize_inner_classes_181, field, 'serializeInnerClasses', 'Lcom/google/gson/internal/Excluder;.serializeInnerClasses)Z').
name_ref(f_serialize_nulls_47, field, 'serializeNulls', 'Lcom/google/gson/Gson;.serializeNulls)Z').
name_ref(f_serialize_nulls_608, field, 'serializeNulls', 'Lcom/google/gson/stream/JsonWriter;.serializeNulls)Z').
name_ref(f_short_374, field, 'SHORT', 'Lcom/google/gson/internal/bind/TypeAdapters;.SHORT)Lcom/google/gson/TypeAdapter<Ljava/lang/Number;>;').
name_ref(f_short_factory_378, field, 'SHORT_FACTORY', 'Lcom/google/gson/internal/bind/TypeAdapters;.SHORT_FACTORY)Lcom/google/gson/TypeAdapterFactory;').
name_ref(f_stack_564, field, 'stack', 'Lcom/google/gson/stream/JsonReader;.stack)[I').
name_ref(f_stack_604, field, 'stack', 'Lcom/google/gson/stream/JsonWriter;.stack)[I').
name_ref(f_stack_size_565, field, 'stackSize', 'Lcom/google/gson/stream/JsonReader;.stackSize)I').
name_ref(f_stack_size_605, field, 'stackSize', 'Lcom/google/gson/stream/JsonWriter;.stackSize)I').
name_ref(f_string_147, field, 'STRING', 'Lcom/google/gson/LongSerializationPolicy;.STRING)Lcom/google/gson/LongSerializationPolicy;').
name_ref(f_string_421, field, 'STRING', 'Lcom/google/gson/internal/bind/TypeAdapters;.STRING)Lcom/google/gson/TypeAdapter<Ljava/lang/String;>;').
name_ref(f_string_596, field, 'STRING', 'Lcom/google/gson/stream/JsonToken;.STRING)Lcom/google/gson/stream/JsonToken;').
name_ref(f_string_buffer_439, field, 'STRING_BUFFER', 'Lcom/google/gson/internal/bind/TypeAdapters;.STRING_BUFFER)Lcom/google/gson/TypeAdapter<Ljava/lang/StringBuffer;>;').
name_ref(f_string_buffer_factory_443, field, 'STRING_BUFFER_FACTORY', 'Lcom/google/gson/internal/bind/TypeAdapters;.STRING_BUFFER_FACTORY)Lcom/google/gson/TypeAdapterFactory;').
name_ref(f_string_builder_434, field, 'STRING_BUILDER', 'Lcom/google/gson/internal/bind/TypeAdapters;.STRING_BUILDER)Lcom/google/gson/TypeAdapter<Ljava/lang/StringBuilder;>;').
name_ref(f_string_builder_factory_438, field, 'STRING_BUILDER_FACTORY', 'Lcom/google/gson/internal/bind/TypeAdapters;.STRING_BUILDER_FACTORY)Lcom/google/gson/TypeAdapterFactory;').
name_ref(f_string_factory_433, field, 'STRING_FACTORY', 'Lcom/google/gson/internal/bind/TypeAdapters;.STRING_FACTORY)Lcom/google/gson/TypeAdapterFactory;').
name_ref(f_timestamp_factory_469, field, 'TIMESTAMP_FACTORY', 'Lcom/google/gson/internal/bind/TypeAdapters;.TIMESTAMP_FACTORY)Lcom/google/gson/TypeAdapterFactory;').
name_ref(f_type_526, field, 'type', 'Lcom/google/gson/reflect/TypeToken<Lcom/google/gson/reflect/TypeToken;:TT;>;.type)Ljava/lang/reflect/Type;').
name_ref(f_type_token_cache_18, field, 'typeTokenCache', 'Lcom/google/gson/Gson;.typeTokenCache)Ljava/util/Map<Lcom/google/gson/reflect/TypeToken<Lcom/google/gson/reflect/TypeToken;{0}*>;Lcom/google/gson/TypeAdapter<Lcom/google/gson/TypeAdapter;{0}*>;>;').
name_ref(f_upper_camel_case_3, field, 'UPPER_CAMEL_CASE', 'Lcom/google/gson/FieldNamingPolicy;.UPPER_CAMEL_CASE)Lcom/google/gson/FieldNamingPolicy;').
name_ref(f_upper_camel_case_with_spaces_5, field, 'UPPER_CAMEL_CASE_WITH_SPACES', 'Lcom/google/gson/FieldNamingPolicy;.UPPER_CAMEL_CASE_WITH_SPACES)Lcom/google/gson/FieldNamingPolicy;').
name_ref(f_uri_449, field, 'URI', 'Lcom/google/gson/internal/bind/TypeAdapters;.URI)Lcom/google/gson/TypeAdapter<Ljava/net/URI;>;').
name_ref(f_uri_factory_453, field, 'URI_FACTORY', 'Lcom/google/gson/internal/bind/TypeAdapters;.URI_FACTORY)Lcom/google/gson/TypeAdapterFactory;').
name_ref(f_url_444, field, 'URL', 'Lcom/google/gson/internal/bind/TypeAdapters;.URL)Lcom/google/gson/TypeAdapter<Ljava/net/URL;>;').
name_ref(f_url_factory_448, field, 'URL_FACTORY', 'Lcom/google/gson/internal/bind/TypeAdapters;.URL_FACTORY)Lcom/google/gson/TypeAdapterFactory;').
name_ref(f_uuid_459, field, 'UUID', 'Lcom/google/gson/internal/bind/TypeAdapters;.UUID)Lcom/google/gson/TypeAdapter<Ljava/util/UUID;>;').
name_ref(f_uuid_factory_463, field, 'UUID_FACTORY', 'Lcom/google/gson/internal/bind/TypeAdapters;.UUID_FACTORY)Lcom/google/gson/TypeAdapterFactory;').
name_ref(f_version_178, field, 'version', 'Lcom/google/gson/internal/Excluder;.version)D').
name_ref(m__101, method, '', 'Lcom/google/gson/TypeAdapter$7570;.()V').
name_ref(m__11, method, '', 'Lcom/google/gson/Gson$5979;.()V').
name_ref(m__119, method, '', 'Lcom/google/gson/internal/ConstructorConstructor$3448;.()V').
name_ref(m__169, method, '', 'Lcom/google/gson/internal/bind/ArrayTypeAdapter$1310;.()V').
name_ref(m__179, method, '', 'Lcom/google/gson/internal/bind/DateTypeAdapter$1581;.()V').
name_ref(m__196, method, '', 'Lcom/google/gson/internal/bind/ObjectTypeAdapter$1329;.()V').
name_ref(m__219, method, '', 'Lcom/google/gson/internal/bind/SqlDateTypeAdapter$1501;.()V').
name_ref(m__223, method, '', 'Lcom/google/gson/internal/bind/TimeTypeAdapter$1525;.()V').
name_ref(m__229, method, '', 'Lcom/google/gson/internal/bind/TypeAdapters$2215;.()V').
name_ref(m__232, method, '', 'Lcom/google/gson/internal/bind/TypeAdapters$3050;.()V').
name_ref(m__235, method, '', 'Lcom/google/gson/internal/bind/TypeAdapters$4697;.()V').
name_ref(m__238, method, '', 'Lcom/google/gson/internal/bind/TypeAdapters$5472;.()V').
name_ref(m__241, method, '', 'Lcom/google/gson/internal/bind/TypeAdapters$6040;.()V').
name_ref(m__244, method, '', 'Lcom/google/gson/internal/bind/TypeAdapters$6691;.()V').
name_ref(m__247, method, '', 'Lcom/google/gson/internal/bind/TypeAdapters$7316;.()V').
name_ref(m__250, method, '', 'Lcom/google/gson/internal/bind/TypeAdapters$7950;.()V').
name_ref(m__253, method, '', 'Lcom/google/gson/internal/bind/TypeAdapters$8562;.()V').
name_ref(m__256, method, '', 'Lcom/google/gson/internal/bind/TypeAdapters$9083;.()V').
name_ref(m__259, method, '', 'Lcom/google/gson/internal/bind/TypeAdapters$10229;.()V').
name_ref(m__262, method, '', 'Lcom/google/gson/internal/bind/TypeAdapters$10736;.()V').
name_ref(m__265, method, '', 'Lcom/google/gson/internal/bind/TypeAdapters$11148;.()V').
name_ref(m__268, method, '', 'Lcom/google/gson/internal/bind/TypeAdapters$11552;.()V').
name_ref(m__271, method, '', 'Lcom/google/gson/internal/bind/TypeAdapters$12235;.()V').
name_ref(m__274, method, '', 'Lcom/google/gson/internal/bind/TypeAdapters$12955;.()V').
name_ref(m__277, method, '', 'Lcom/google/gson/internal/bind/TypeAdapters$13564;.()V').
name_ref(m__280, method, '', 'Lcom/google/gson/internal/bind/TypeAdapters$14106;.()V').
name_ref(m__283, method, '', 'Lcom/google/gson/internal/bind/TypeAdapters$14745;.()V').
name_ref(m__286, method, '', 'Lcom/google/gson/internal/bind/TypeAdapters$15356;.()V').
name_ref(m__289, method, '', 'Lcom/google/gson/internal/bind/TypeAdapters$15941;.()V').
name_ref(m__292, method, '', 'Lcom/google/gson/internal/bind/TypeAdapters$16536;.()V').
name_ref(m__295, method, '', 'Lcom/google/gson/internal/bind/TypeAdapters$17248;.()V').
name_ref(m__298, method, '', 'Lcom/google/gson/internal/bind/TypeAdapters$17941;.()V').
name_ref(m__301, method, '', 'Lcom/google/gson/internal/bind/TypeAdapters$18491;.()V').
name_ref(m__304, method, '', 'Lcom/google/gson/internal/bind/TypeAdapters$18967;.()V').
name_ref(m__308, method, '', 'Lcom/google/gson/internal/bind/TypeAdapters$19816;.()V').
name_ref(m__31, method, '', 'Lcom/google/gson/Gson$13310;.()V').
name_ref(m__311, method, '', 'Lcom/google/gson/internal/bind/TypeAdapters$22013;.()V').
name_ref(m__314, method, '', 'Lcom/google/gson/internal/bind/TypeAdapters$23236;.()V').
name_ref(m__320, method, '', 'Lcom/google/gson/internal/bind/TypeAdapters$26895;.()V').
name_ref(m__324, method, '', 'Lcom/google/gson/internal/bind/TypeAdapters$27963;.()V').
name_ref(m__327, method, '', 'Lcom/google/gson/internal/bind/TypeAdapters$28568;.()V').
name_ref(m__331, method, '', 'Lcom/google/gson/internal/bind/TypeAdapters$29301;.()V').
name_ref(m__335, method, '', 'Lcom/google/gson/internal/bind/TypeAdapters$30153;.()V').
name_ref(m__35, method, '', 'Lcom/google/gson/Gson$14048;.()V').
name_ref(m__399, method, '', 'Lcom/google/gson/stream/JsonReader$50019;.()V').
name_ref(m__42, method, '', 'Lcom/google/gson/Gson$15743;.()V').
name_ref(m__45, method, '', 'Lcom/google/gson/Gson$16239;.()V').
name_ref(m__9, method, '', 'Lcom/google/gson/Gson$5700;.()V').
name_ref(m_adapter_176, method, 'Adapter', 'Lcom/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;.(Lcom/google/gson/Gson;Ljava/lang/reflect/Type;Lcom/google/gson/TypeAdapter<TE;>;Lcom/google/gson/internal/ObjectConstructor<+Ljava/util/Collection<TE;>;>;)V').
name_ref(m_adapter_192, method, 'Adapter', 'Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;.(Lcom/google/gson/Gson;Ljava/lang/reflect/Type;Lcom/google/gson/TypeAdapter<TK;>;Ljava/lang/reflect/Type;Lcom/google/gson/TypeAdapter<TV;>;Lcom/google/gson/internal/ObjectConstructor<+Ljava/util/Map<TK;TV;>;>;)V').
name_ref(m_adapter_216, method, 'Adapter', 'Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;.(Lcom/google/gson/internal/ObjectConstructor<TT;>;Ljava/util/Map<Ljava/lang/String;Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;>;)V').
name_ref(m_add_18, method, 'add', 'Ljava/util/List;.add(TE;)Z').
name_ref(m_add_all_19, method, 'addAll', 'Ljava/util/List;.addAll(Ljava/util/Collection<+TE;>;)Z').
name_ref(m_appendable_writer_161, method, 'AppendableWriter', 'Lcom/google/gson/internal/Streams$AppendableWriter;.(Ljava/lang/Appendable;)V').
name_ref(m_array_list_17, method, 'ArrayList', 'Ljava/util/ArrayList;.()V').
name_ref(m_array_type_adapter_172, method, 'ArrayTypeAdapter', 'Lcom/google/gson/internal/bind/ArrayTypeAdapter;.(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter<TE;>;Ljava/lang/Class<TE;>;)V').
name_ref(m_assert_full_consumption_87, method, 'assertFullConsumption', 'Lcom/google/gson/Gson;.assertFullConsumption(Ljava/lang/Object;Lcom/google/gson/stream/JsonReader;)V').
name_ref(m_atomic_long_adapter_23, method, 'atomicLongAdapter', 'Lcom/google/gson/Gson;.atomicLongAdapter(Lcom/google/gson/TypeAdapter<Ljava/lang/Number;>;)Lcom/google/gson/TypeAdapter<Ljava/util/concurrent/atomic/AtomicLong;>;').
name_ref(m_atomic_long_array_adapter_24, method, 'atomicLongArrayAdapter', 'Lcom/google/gson/Gson;.atomicLongArrayAdapter(Lcom/google/gson/TypeAdapter<Ljava/lang/Number;>;)Lcom/google/gson/TypeAdapter<Ljava/util/concurrent/atomic/AtomicLongArray;>;').
name_ref(m_before_name_431, method, 'beforeName', 'Lcom/google/gson/stream/JsonWriter;.beforeName()V|Ljava/io/IOException;').
name_ref(m_before_value_432, method, 'beforeValue', 'Lcom/google/gson/stream/JsonWriter;.beforeValue()V|Ljava/io/IOException;').
name_ref(m_begin_array_363, method, 'beginArray', 'Lcom/google/gson/stream/JsonReader;.beginArray()V|Ljava/io/IOException;').
name_ref(m_begin_array_410, method, 'beginArray', 'Lcom/google/gson/stream/JsonWriter;.beginArray()Lcom/google/gson/stream/JsonWriter;|Ljava/io/IOException;').
name_ref(m_begin_object_365, method, 'beginObject', 'Lcom/google/gson/stream/JsonReader;.beginObject()V|Ljava/io/IOException;').
name_ref(m_begin_object_412, method, 'beginObject', 'Lcom/google/gson/stream/JsonWriter;.beginObject()Lcom/google/gson/stream/JsonWriter;|Ljava/io/IOException;').
name_ref(m_bound_field_212, method, 'BoundField', 'Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;.(Ljava/lang/String;ZZ)V').
name_ref(m_build_unexpected_type_error_353, method, 'buildUnexpectedTypeError', 'Lcom/google/gson/reflect/TypeToken;.buildUnexpectedTypeError(Ljava/lang/reflect/Type;[Ljava/lang/Class<*>;)Ljava/lang/AssertionError;').
name_ref(m_canonicalize_342, method, 'canonicalize', 'Lcom/google/gson/internal/$Gson$Types;.canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;').
name_ref(m_char_at_167, method, 'charAt', 'Lcom/google/gson/internal/Streams$AppendableWriter$CurrentWrite;.charAt(I)C').
name_ref(m_check_lenient_392, method, 'checkLenient', 'Lcom/google/gson/stream/JsonReader;.checkLenient()V|Ljava/io/IOException;').
name_ref(m_check_not_null_343, method, 'checkNotNull', 'Lcom/google/gson/internal/$Gson$Preconditions;.checkNotNull<T:Ljava/lang/Object;>(TT;)TT;').
name_ref(m_check_valid_floating_point_38, method, 'checkValidFloatingPoint', 'Lcom/google/gson/Gson;.checkValidFloatingPoint(D)V').
name_ref(m_clone_138, method, 'clone', 'Lcom/google/gson/internal/Excluder;.clone()Lcom/google/gson/internal/Excluder;').
name_ref(m_clone_402, method, 'clone', 'Ljava/lang/Object;.clone()[Ljava/lang/String;').
name_ref(m_close_165, method, 'close', 'Lcom/google/gson/internal/Streams$AppendableWriter;.close()V').
name_ref(m_close_385, method, 'close', 'Lcom/google/gson/stream/JsonReader;.close()V|Ljava/io/IOException;').
name_ref(m_close_415, method, 'close', 'Lcom/google/gson/stream/JsonWriter;.close(IILjava/lang/String;)Lcom/google/gson/stream/JsonWriter;|Ljava/io/IOException;').
name_ref(m_close_428, method, 'close', 'Lcom/google/gson/stream/JsonWriter;.close()V|Ljava/io/IOException;').
name_ref(m_collection_type_adapter_factory_25, method, 'CollectionTypeAdapterFactory', 'Lcom/google/gson/internal/bind/CollectionTypeAdapterFactory;.(Lcom/google/gson/internal/ConstructorConstructor;)V').
name_ref(m_construct_113, method, 'construct', 'Lcom/google/gson/internal/ConstructorConstructor$2191;.construct()TT;').
name_ref(m_construct_114, method, 'construct', 'Lcom/google/gson/internal/ConstructorConstructor$2599;.construct()TT;').
name_ref(m_construct_120, method, 'construct', 'Lcom/google/gson/internal/ConstructorConstructor$3448;.construct()TT;').
name_ref(m_construct_123, method, 'construct', 'Lcom/google/gson/internal/ConstructorConstructor$4795;.construct()TT;').
name_ref(m_construct_124, method, 'construct', 'Lcom/google/gson/internal/ConstructorConstructor$5011;.construct()TT;').
name_ref(m_construct_125, method, 'construct', 'Lcom/google/gson/internal/ConstructorConstructor$5718;.construct()TT;').
name_ref(m_construct_126, method, 'construct', 'Lcom/google/gson/internal/ConstructorConstructor$5938;.construct()TT;').
name_ref(m_construct_127, method, 'construct', 'Lcom/google/gson/internal/ConstructorConstructor$6112;.construct()TT;').
name_ref(m_construct_128, method, 'construct', 'Lcom/google/gson/internal/ConstructorConstructor$6400;.construct()TT;').
name_ref(m_construct_129, method, 'construct', 'Lcom/google/gson/internal/ConstructorConstructor$6644;.construct()TT;').
name_ref(m_construct_130, method, 'construct', 'Lcom/google/gson/internal/ConstructorConstructor$6880;.construct()TT;').
name_ref(m_construct_131, method, 'construct', 'Lcom/google/gson/internal/ConstructorConstructor$7229;.construct()TT;').
name_ref(m_construct_132, method, 'construct', 'Lcom/google/gson/internal/ConstructorConstructor$7414;.construct()TT;').
name_ref(m_construct_134, method, 'construct', 'Lcom/google/gson/internal/ConstructorConstructor$7729;.construct()TT;').
name_ref(m_construct_188, method, 'construct', 'Lcom/google/gson/internal/ObjectConstructor;.construct()TT;').
name_ref(m_constructor_constructor_16, method, 'ConstructorConstructor', 'Lcom/google/gson/internal/ConstructorConstructor;.(Ljava/util/Map<Ljava/lang/reflect/Type;Lcom/google/gson/InstanceCreator<*>;>;)V').
name_ref(m_consume_non_execute_prefix_369, method, 'consumeNonExecutePrefix', 'Lcom/google/gson/stream/JsonReader;.consumeNonExecutePrefix()V|Ljava/io/IOException;').
name_ref(m_contains_59, method, 'contains', 'Ljava/util/List;.contains(Ljava/lang/Object;)Z').
name_ref(m_create_144, method, 'create', 'Lcom/google/gson/internal/Excluder;.create<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;').
name_ref(m_create_170, method, 'create', 'Lcom/google/gson/internal/bind/ArrayTypeAdapter$1310;.create<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;').
name_ref(m_create_175, method, 'create', 'Lcom/google/gson/internal/bind/CollectionTypeAdapterFactory;.create<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;').
name_ref(m_create_180, method, 'create', 'Lcom/google/gson/internal/bind/DateTypeAdapter$1581;.create<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;').
name_ref(m_create_185, method, 'create', 'Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;.create<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;').
name_ref(m_create_190, method, 'create', 'Lcom/google/gson/internal/bind/MapTypeAdapterFactory;.create<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;').
name_ref(m_create_197, method, 'create', 'Lcom/google/gson/internal/bind/ObjectTypeAdapter$1329;.create<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;').
name_ref(m_create_205, method, 'create', 'Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;.create<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;').
name_ref(m_create_220, method, 'create', 'Lcom/google/gson/internal/bind/SqlDateTypeAdapter$1501;.create<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;').
name_ref(m_create_224, method, 'create', 'Lcom/google/gson/internal/bind/TimeTypeAdapter$1525;.create<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;').
name_ref(m_create_305, method, 'create', 'Lcom/google/gson/internal/bind/TypeAdapters$18967;.create<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;').
name_ref(m_create_321, method, 'create', 'Lcom/google/gson/internal/bind/TypeAdapters$26895;.create<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;').
name_ref(m_create_323, method, 'create', 'Lcom/google/gson/internal/bind/TypeAdapters$27534;.create<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;').
name_ref(m_create_325, method, 'create', 'Lcom/google/gson/internal/bind/TypeAdapters$27963;.create<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;').
name_ref(m_create_328, method, 'create', 'Lcom/google/gson/internal/bind/TypeAdapters$28568;.create<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;').
name_ref(m_create_332, method, 'create', 'Lcom/google/gson/internal/bind/TypeAdapters$29301;.create<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;').
name_ref(m_create_336, method, 'create', 'Lcom/google/gson/internal/bind/TypeAdapters$30153;.create<T2:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT2;>;)Lcom/google/gson/TypeAdapter<TT2;>;').
name_ref(m_create_361, method, 'create', 'Lcom/google/gson/regression/JsonAdapterNullSafeTest$Device$JsonAdapterFactory;.create<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;').
name_ref(m_create_55, method, 'create', 'Lcom/google/gson/TypeAdapterFactory;.create<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;').
name_ref(m_create_bound_field_206, method, 'createBoundField', 'Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;.createBoundField(Lcom/google/gson/Gson;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/google/gson/reflect/TypeToken<*>;ZZ)Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;').
name_ref(m_date_type_adapter_181, method, 'DateTypeAdapter', 'Lcom/google/gson/internal/bind/DateTypeAdapter;.()V').
name_ref(m_delegate_148, method, 'delegate', 'Lcom/google/gson/internal/Excluder$4069;.delegate()Lcom/google/gson/TypeAdapter<TT;>;').
name_ref(m_deserialize_10, method, 'deserialize', 'Lcom/google/gson/Gson$5700;.deserialize<T:Ljava/lang/Object;>(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)TT;|Lcom/google/gson/JsonParseException;').
name_ref(m_deserialize_to_date_183, method, 'deserializeToDate', 'Lcom/google/gson/internal/bind/DateTypeAdapter;.deserializeToDate(Ljava/lang/String;)Ljava/util/Date;').
name_ref(m_device_359, method, 'Device', 'Lcom/google/gson/regression/JsonAdapterNullSafeTest$Device;.(Ljava/lang/String;)V').
name_ref(m_disable_inner_class_serialization_141, method, 'disableInnerClassSerialization', 'Lcom/google/gson/internal/Excluder;.disableInnerClassSerialization()Lcom/google/gson/internal/Excluder;').
name_ref(m_do_peek_368, method, 'doPeek', 'Lcom/google/gson/stream/JsonReader;.doPeek()I|Ljava/io/IOException;').
name_ref(m_double_adapter_30, method, 'doubleAdapter', 'Lcom/google/gson/Gson;.doubleAdapter(Z)Lcom/google/gson/TypeAdapter<Ljava/lang/Number;>;').
name_ref(m_empty_list_137, method, 'emptyList', 'Ljava/util/Collections;.emptyList<T:Ljava/lang/Object;>()Ljava/util/List<TT;>;').
name_ref(m_end_array_364, method, 'endArray', 'Lcom/google/gson/stream/JsonReader;.endArray()V|Ljava/io/IOException;').
name_ref(m_end_array_411, method, 'endArray', 'Lcom/google/gson/stream/JsonWriter;.endArray()Lcom/google/gson/stream/JsonWriter;|Ljava/io/IOException;').
name_ref(m_end_object_366, method, 'endObject', 'Lcom/google/gson/stream/JsonReader;.endObject()V|Ljava/io/IOException;').
name_ref(m_end_object_413, method, 'endObject', 'Lcom/google/gson/stream/JsonWriter;.endObject()Lcom/google/gson/stream/JsonWriter;|Ljava/io/IOException;').
name_ref(m_enum_type_adapter_317, method, 'EnumTypeAdapter', 'Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;.(Ljava/lang/Class<TT;>;)V').
name_ref(m_equals_356, method, 'equals', 'Lcom/google/gson/reflect/TypeToken;.equals(Ljava/lang/Object;)Z').
name_ref(m_exclude_class_145, method, 'excludeClass', 'Lcom/google/gson/internal/Excluder;.excludeClass(Ljava/lang/Class<*>;Z)Z').
name_ref(m_exclude_field_149, method, 'excludeField', 'Lcom/google/gson/internal/Excluder;.excludeField(Ljava/lang/reflect/Field;Z)Z').
name_ref(m_exclude_field_201, method, 'excludeField', 'Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;.excludeField(Ljava/lang/reflect/Field;Z)Z').
name_ref(m_exclude_field_202, method, 'excludeField', 'Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;.excludeField(Ljava/lang/reflect/Field;ZLcom/google/gson/internal/Excluder;)Z').
name_ref(m_exclude_fields_without_expose_annotation_142, method, 'excludeFieldsWithoutExposeAnnotation', 'Lcom/google/gson/internal/Excluder;.excludeFieldsWithoutExposeAnnotation()Lcom/google/gson/internal/Excluder;').
name_ref(m_excluder_136, method, 'Excluder', 'Lcom/google/gson/internal/Excluder;.()V').
name_ref(m_fill_buffer_388, method, 'fillBuffer', 'Lcom/google/gson/stream/JsonReader;.fillBuffer(I)Z|Ljava/io/IOException;').
name_ref(m_float_adapter_34, method, 'floatAdapter', 'Lcom/google/gson/Gson;.floatAdapter(Z)Lcom/google/gson/TypeAdapter<Ljava/lang/Number;>;').
name_ref(m_flush_164, method, 'flush', 'Lcom/google/gson/internal/Streams$AppendableWriter;.flush()V').
name_ref(m_flush_427, method, 'flush', 'Lcom/google/gson/stream/JsonWriter;.flush()V|Ljava/io/IOException;').
name_ref(m_format_401, method, 'format', 'Ljava/lang/String;.format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;').
name_ref(m_from_json_107, method, 'fromJson', 'Lcom/google/gson/TypeAdapter;.fromJson(Ljava/io/Reader;)TT;|Ljava/io/IOException;').
name_ref(m_from_json_108, method, 'fromJson', 'Lcom/google/gson/TypeAdapter;.fromJson(Ljava/lang/String;)TT;|Ljava/io/IOException;').
name_ref(m_from_json_81, method, 'fromJson', 'Lcom/google/gson/Gson;.fromJson<T:Ljava/lang/Object;>(Ljava/lang/String;Ljava/lang/Class<TT;>;)TT;|Lcom/google/gson/JsonSyntaxException;').
name_ref(m_from_json_82, method, 'fromJson', 'Lcom/google/gson/Gson;.fromJson<T:Ljava/lang/Object;>(Ljava/lang/String;Ljava/lang/reflect/Type;)TT;|Lcom/google/gson/JsonSyntaxException;').
name_ref(m_from_json_84, method, 'fromJson', 'Lcom/google/gson/Gson;.fromJson<T:Ljava/lang/Object;>(Ljava/io/Reader;Ljava/lang/reflect/Type;)TT;|Lcom/google/gson/JsonIOException;|Lcom/google/gson/JsonSyntaxException;').
name_ref(m_from_json_85, method, 'fromJson', 'Lcom/google/gson/Gson;.fromJson<T:Ljava/lang/Object;>(Ljava/io/Reader;Ljava/lang/Class<TT;>;)TT;|Lcom/google/gson/JsonSyntaxException;|Lcom/google/gson/JsonIOException;').
name_ref(m_from_json_86, method, 'fromJson', 'Lcom/google/gson/Gson;.fromJson<T:Ljava/lang/Object;>(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)TT;|Lcom/google/gson/JsonIOException;|Lcom/google/gson/JsonSyntaxException;').
name_ref(m_from_json_90, method, 'fromJson', 'Lcom/google/gson/Gson;.fromJson<T:Ljava/lang/Object;>(Lcom/google/gson/JsonElement;Ljava/lang/Class<TT;>;)TT;|Lcom/google/gson/JsonSyntaxException;').
name_ref(m_from_json_91, method, 'fromJson', 'Lcom/google/gson/Gson;.fromJson<T:Ljava/lang/Object;>(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)TT;|Lcom/google/gson/JsonSyntaxException;').
name_ref(m_from_json_tree_109, method, 'fromJsonTree', 'Lcom/google/gson/TypeAdapter;.fromJsonTree(Lcom/google/gson/JsonElement;)TT;').
name_ref(m_future_type_adapter_53, method, 'FutureTypeAdapter', 'Lcom/google/gson/Gson$FutureTypeAdapter;.()V').
name_ref(m_get_110, method, 'get', 'Lcom/google/gson/internal/ConstructorConstructor;.get<T:Ljava/lang/Object;>(Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/internal/ObjectConstructor<TT;>;').
name_ref(m_get_189, method, 'get', 'Lcom/google/gson/reflect/TypeToken;.get<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)Lcom/google/gson/reflect/TypeToken<TT;>;').
name_ref(m_get_49, method, 'get', 'Ljava/util/Map;.get(Ljava/lang/Object;)TV;').
name_ref(m_get_50, method, 'get', 'Ljava/lang/ThreadLocal;.get()TT;').
name_ref(m_get_72, method, 'get', 'Lcom/google/gson/reflect/TypeToken;.get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken<*>;').
name_ref(m_get_adapter_48, method, 'getAdapter', 'Lcom/google/gson/Gson;.getAdapter<T:Ljava/lang/Object;>(Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;').
name_ref(m_get_adapter_60, method, 'getAdapter', 'Lcom/google/gson/Gson;.getAdapter<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;').
name_ref(m_get_bound_fields_211, method, 'getBoundFields', 'Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;.getBoundFields(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<*>;Ljava/lang/Class<*>;)Ljava/util/Map<Ljava/lang/String;Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;>;').
name_ref(m_get_class_65, method, 'getClass', 'Ljava/lang/Object;.getClass()Ljava/lang/Class<*>;').
name_ref(m_get_column_number_391, method, 'getColumnNumber', 'Lcom/google/gson/stream/JsonReader;.getColumnNumber()I').
name_ref(m_get_declared_constructor_116, method, 'getDeclaredConstructor', 'Ljava/lang/Class;.getDeclaredConstructor([Ljava/lang/Class<*>;)Ljava/lang/reflect/Constructor<TT;>;|Ljava/lang/NoSuchMethodException;|Ljava/lang/SecurityException;').
name_ref(m_get_delegate_adapter_58, method, 'getDelegateAdapter', 'Lcom/google/gson/Gson;.getDelegateAdapter<T:Ljava/lang/Object;>(Lcom/google/gson/TypeAdapterFactory;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;').
name_ref(m_get_field_adapter_210, method, 'getFieldAdapter', 'Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;.getFieldAdapter(Lcom/google/gson/Gson;Ljava/lang/reflect/Field;Lcom/google/gson/reflect/TypeToken<*>;)Lcom/google/gson/TypeAdapter<*>;').
name_ref(m_get_field_name_204, method, 'getFieldName', 'Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;.getFieldName(Lcom/google/gson/FieldNamingStrategy;Ljava/lang/reflect/Field;)Ljava/util/List<Ljava/lang/String;>;').
name_ref(m_get_field_names_203, method, 'getFieldNames', 'Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;.getFieldNames(Ljava/lang/reflect/Field;)Ljava/util/List<Ljava/lang/String;>;').
name_ref(m_get_key_adapter_191, method, 'getKeyAdapter', 'Lcom/google/gson/internal/bind/MapTypeAdapterFactory;.getKeyAdapter(Lcom/google/gson/Gson;Ljava/lang/reflect/Type;)Lcom/google/gson/TypeAdapter<*>;').
name_ref(m_get_line_number_390, method, 'getLineNumber', 'Lcom/google/gson/stream/JsonReader;.getLineNumber()I').
name_ref(m_get_path_396, method, 'getPath', 'Lcom/google/gson/stream/JsonReader;.getPath()Ljava/lang/String;').
name_ref(m_get_raw_type_112, method, 'getRawType', 'Lcom/google/gson/reflect/TypeToken;.getRawType()Ljava/lang/Class<-TT;>;').
name_ref(m_get_raw_type_344, method, 'getRawType', 'Lcom/google/gson/internal/$Gson$Types;.getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class<*>;').
name_ref(m_get_serialize_nulls_409, method, 'getSerializeNulls', 'Lcom/google/gson/stream/JsonWriter;.getSerializeNulls()Z').
name_ref(m_get_superclass_type_parameter_346, method, 'getSuperclassTypeParameter', 'Lcom/google/gson/reflect/TypeToken;.getSuperclassTypeParameter(Ljava/lang/Class<*>;)Ljava/lang/reflect/Type;').
name_ref(m_get_type_111, method, 'getType', 'Lcom/google/gson/reflect/TypeToken;.getType()Ljava/lang/reflect/Type;').
name_ref(m_get_type_adapter_186, method, 'getTypeAdapter', 'Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;.getTypeAdapter(Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<*>;Lcom/google/gson/annotations/JsonAdapter;)Lcom/google/gson/TypeAdapter<*>;').
name_ref(m_gson_14, method, 'Gson', 'Lcom/google/gson/Gson;.()V').
name_ref(m_gson_15, method, 'Gson', 'Lcom/google/gson/Gson;.(Lcom/google/gson/internal/Excluder;Lcom/google/gson/FieldNamingStrategy;Ljava/util/Map<Ljava/lang/reflect/Type;Lcom/google/gson/InstanceCreator<*>;>;ZZZZZZZLcom/google/gson/LongSerializationPolicy;Ljava/util/List<Lcom/google/gson/TypeAdapterFactory;>;)V').
name_ref(m_has_next_367, method, 'hasNext', 'Lcom/google/gson/stream/JsonReader;.hasNext()Z|Ljava/io/IOException;').
name_ref(m_hash_code_345, method, 'hashCode', 'Ljava/lang/Object;.hashCode()I').
name_ref(m_hash_code_355, method, 'hashCode', 'Lcom/google/gson/reflect/TypeToken;.hashCode()I').
name_ref(m_hash_map_51, method, 'HashMap', 'Ljava/util/HashMap;.()V').
name_ref(m_is_accessible_117, method, 'isAccessible', 'Ljava/lang/reflect/AccessibleObject;.isAccessible()Z').
name_ref(m_is_anonymous_or_local_151, method, 'isAnonymousOrLocal', 'Lcom/google/gson/internal/Excluder;.isAnonymousOrLocal(Ljava/lang/Class<*>;)Z').
name_ref(m_is_array_171, method, 'isArray', 'Ljava/lang/Class;.isArray()Z').
name_ref(m_is_assignable_from_152, method, 'isAssignableFrom', 'Ljava/lang/Class;.isAssignableFrom(Ljava/lang/Class<*>;)Z').
name_ref(m_is_assignable_from_347, method, 'isAssignableFrom', 'Lcom/google/gson/reflect/TypeToken;.isAssignableFrom(Ljava/lang/Class<*>;)Z').
name_ref(m_is_assignable_from_348, method, 'isAssignableFrom', 'Lcom/google/gson/reflect/TypeToken;.isAssignableFrom(Ljava/lang/reflect/Type;)Z').
name_ref(m_is_assignable_from_349, method, 'isAssignableFrom', 'Lcom/google/gson/reflect/TypeToken;.isAssignableFrom(Lcom/google/gson/reflect/TypeToken<*>;)Z').
name_ref(m_is_assignable_from_350, method, 'isAssignableFrom', 'Lcom/google/gson/reflect/TypeToken;.isAssignableFrom(Ljava/lang/reflect/Type;Ljava/lang/reflect/GenericArrayType;)Z').
name_ref(m_is_assignable_from_351, method, 'isAssignableFrom', 'Lcom/google/gson/reflect/TypeToken;.isAssignableFrom(Ljava/lang/reflect/Type;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Type;>;)Z').
name_ref(m_is_html_safe_408, method, 'isHtmlSafe', 'Lcom/google/gson/stream/JsonWriter;.isHtmlSafe()Z').
name_ref(m_is_inner_class_150, method, 'isInnerClass', 'Lcom/google/gson/internal/Excluder;.isInnerClass(Ljava/lang/Class<*>;)Z').
name_ref(m_is_lenient_406, method, 'isLenient', 'Lcom/google/gson/stream/JsonWriter;.isLenient()Z').
name_ref(m_is_lenient_88, method, 'isLenient', 'Lcom/google/gson/stream/JsonReader;.isLenient()Z').
name_ref(m_is_literal_373, method, 'isLiteral', 'Lcom/google/gson/stream/JsonReader;.isLiteral(C)Z|Ljava/io/IOException;').
name_ref(m_is_static_153, method, 'isStatic', 'Lcom/google/gson/internal/Excluder;.isStatic(Ljava/lang/Class<*>;)Z').
name_ref(m_is_valid_since_155, method, 'isValidSince', 'Lcom/google/gson/internal/Excluder;.isValidSince(Lcom/google/gson/annotations/Since;)Z').
name_ref(m_is_valid_until_156, method, 'isValidUntil', 'Lcom/google/gson/internal/Excluder;.isValidUntil(Lcom/google/gson/annotations/Until;)Z').
name_ref(m_is_valid_version_154, method, 'isValidVersion', 'Lcom/google/gson/internal/Excluder;.isValidVersion(Lcom/google/gson/annotations/Since;Lcom/google/gson/annotations/Until;)Z').
name_ref(m_json_adapter_annotation_type_adapter_factory_27, method, 'JsonAdapterAnnotationTypeAdapterFactory', 'Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;.(Lcom/google/gson/internal/ConstructorConstructor;)V').
name_ref(m_json_reader_78, method, 'JsonReader', 'Lcom/google/gson/stream/JsonReader;.(Ljava/io/Reader;)V').
name_ref(m_json_value_421, method, 'jsonValue', 'Lcom/google/gson/stream/JsonWriter;.jsonValue(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;|Ljava/io/IOException;').
name_ref(m_json_writer_75, method, 'JsonWriter', 'Lcom/google/gson/stream/JsonWriter;.(Ljava/io/Writer;)V').
name_ref(m_key_to_string_195, method, 'keyToString', 'Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;.keyToString(Lcom/google/gson/JsonElement;)Ljava/lang/String;').
name_ref(m_length_166, method, 'length', 'Lcom/google/gson/internal/Streams$AppendableWriter$CurrentWrite;.length()I').
name_ref(m_long_adapter_20, method, 'longAdapter', 'Lcom/google/gson/Gson;.longAdapter(Lcom/google/gson/LongSerializationPolicy;)Lcom/google/gson/TypeAdapter<Ljava/lang/Number;>;').
name_ref(m_map_type_adapter_factory_26, method, 'MapTypeAdapterFactory', 'Lcom/google/gson/internal/bind/MapTypeAdapterFactory;.(Lcom/google/gson/internal/ConstructorConstructor;Z)V').
name_ref(m_matches_354, method, 'matches', 'Lcom/google/gson/reflect/TypeToken;.matches(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Type;>;)Z').
name_ref(m_modify_string_8, method, 'modifyString', 'Lcom/google/gson/FieldNamingPolicy;.modifyString(CLjava/lang/String;I)Ljava/lang/String;').
name_ref(m_name_418, method, 'name', 'Lcom/google/gson/stream/JsonWriter;.name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;|Ljava/io/IOException;').
name_ref(m_new_default_constructor_115, method, 'newDefaultConstructor', 'Lcom/google/gson/internal/ConstructorConstructor;.newDefaultConstructor<T:Ljava/lang/Object;>(Ljava/lang/Class<-TT;>;)Lcom/google/gson/internal/ObjectConstructor<TT;>;').
name_ref(m_new_default_implementation_constructor_122, method, 'newDefaultImplementationConstructor', 'Lcom/google/gson/internal/ConstructorConstructor;.newDefaultImplementationConstructor<T:Ljava/lang/Object;>(Ljava/lang/reflect/Type;Ljava/lang/Class<-TT;>;)Lcom/google/gson/internal/ObjectConstructor<TT;>;').
name_ref(m_new_factory_21, method, 'newFactory', 'Lcom/google/gson/internal/bind/TypeAdapters;.newFactory<TT:Ljava/lang/Object;>(Ljava/lang/Class<TTT;>;Ljava/lang/Class<TTT;>;Lcom/google/gson/TypeAdapter<-TTT;>;)Lcom/google/gson/TypeAdapterFactory;').
name_ref(m_new_factory_22, method, 'newFactory', 'Lcom/google/gson/internal/bind/TypeAdapters;.newFactory<TT:Ljava/lang/Object;>(Ljava/lang/Class<TTT;>;Lcom/google/gson/TypeAdapter<TTT;>;)Lcom/google/gson/TypeAdapterFactory;').
name_ref(m_new_factory_322, method, 'newFactory', 'Lcom/google/gson/internal/bind/TypeAdapters;.newFactory<TT:Ljava/lang/Object;>(Lcom/google/gson/reflect/TypeToken<TTT;>;Lcom/google/gson/TypeAdapter<TTT;>;)Lcom/google/gson/TypeAdapterFactory;').
name_ref(m_new_factory_for_multiple_types_330, method, 'newFactoryForMultipleTypes', 'Lcom/google/gson/internal/bind/TypeAdapters;.newFactoryForMultipleTypes<TT:Ljava/lang/Object;>(Ljava/lang/Class<TTT;>;Ljava/lang/Class<+TTT;>;Lcom/google/gson/TypeAdapter<-TTT;>;)Lcom/google/gson/TypeAdapterFactory;').
name_ref(m_new_instance_121, method, 'newInstance', 'Ljava/lang/reflect/Constructor;.newInstance([Ljava/lang/Object;)TT;|Ljava/lang/InstantiationException;|Ljava/lang/IllegalAccessException;|Ljava/lang/IllegalArgumentException;|Ljava/lang/reflect/InvocationTargetException;').
name_ref(m_new_json_reader_77, method, 'newJsonReader', 'Lcom/google/gson/Gson;.newJsonReader(Ljava/io/Reader;)Lcom/google/gson/stream/JsonReader;').
name_ref(m_new_json_writer_69, method, 'newJsonWriter', 'Lcom/google/gson/Gson;.newJsonWriter(Ljava/io/Writer;)Lcom/google/gson/stream/JsonWriter;|Ljava/io/IOException;').
name_ref(m_new_type_hierarchy_factory_334, method, 'newTypeHierarchyFactory', 'Lcom/google/gson/internal/bind/TypeAdapters;.newTypeHierarchyFactory<T1:Ljava/lang/Object;>(Ljava/lang/Class<TT1;>;Lcom/google/gson/TypeAdapter<TT1;>;)Lcom/google/gson/TypeAdapterFactory;').
name_ref(m_new_unsafe_allocator_133, method, 'newUnsafeAllocator', 'Lcom/google/gson/internal/ConstructorConstructor;.newUnsafeAllocator<T:Ljava/lang/Object;>(Ljava/lang/reflect/Type;Ljava/lang/Class<-TT;>;)Lcom/google/gson/internal/ObjectConstructor<TT;>;').
name_ref(m_newline_430, method, 'newline', 'Lcom/google/gson/stream/JsonWriter;.newline()V|Ljava/io/IOException;').
name_ref(m_next_boolean_376, method, 'nextBoolean', 'Lcom/google/gson/stream/JsonReader;.nextBoolean()Z|Ljava/io/IOException;').
name_ref(m_next_double_378, method, 'nextDouble', 'Lcom/google/gson/stream/JsonReader;.nextDouble()D|Ljava/io/IOException;').
name_ref(m_next_int_384, method, 'nextInt', 'Lcom/google/gson/stream/JsonReader;.nextInt()I|Ljava/io/IOException;').
name_ref(m_next_long_379, method, 'nextLong', 'Lcom/google/gson/stream/JsonReader;.nextLong()J|Ljava/io/IOException;').
name_ref(m_next_name_374, method, 'nextName', 'Lcom/google/gson/stream/JsonReader;.nextName()Ljava/lang/String;|Ljava/io/IOException;').
name_ref(m_next_non_whitespace_370, method, 'nextNonWhitespace', 'Lcom/google/gson/stream/JsonReader;.nextNonWhitespace(Z)I|Ljava/io/IOException;').
name_ref(m_next_null_377, method, 'nextNull', 'Lcom/google/gson/stream/JsonReader;.nextNull()V|Ljava/io/IOException;').
name_ref(m_next_quoted_value_380, method, 'nextQuotedValue', 'Lcom/google/gson/stream/JsonReader;.nextQuotedValue(C)Ljava/lang/String;|Ljava/io/IOException;').
name_ref(m_next_string_375, method, 'nextString', 'Lcom/google/gson/stream/JsonReader;.nextString()Ljava/lang/String;|Ljava/io/IOException;').
name_ref(m_next_unquoted_value_381, method, 'nextUnquotedValue', 'Lcom/google/gson/stream/JsonReader;.nextUnquotedValue()Ljava/lang/String;|Ljava/io/IOException;').
name_ref(m_null_safe_41, method, 'nullSafe', 'Lcom/google/gson/TypeAdapter;.nullSafe()Lcom/google/gson/TypeAdapter<TT;>;').
name_ref(m_null_value_422, method, 'nullValue', 'Lcom/google/gson/stream/JsonWriter;.nullValue()Lcom/google/gson/stream/JsonWriter;|Ljava/io/IOException;').
name_ref(m_object_type_adapter_198, method, 'ObjectTypeAdapter', 'Lcom/google/gson/internal/bind/ObjectTypeAdapter;.(Lcom/google/gson/Gson;)V').
name_ref(m_open_414, method, 'open', 'Lcom/google/gson/stream/JsonWriter;.open(ILjava/lang/String;)Lcom/google/gson/stream/JsonWriter;|Ljava/io/IOException;').
name_ref(m_parse_159, method, 'parse', 'Lcom/google/gson/internal/Streams;.parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;|Lcom/google/gson/JsonParseException;').
name_ref(m_peek_416, method, 'peek', 'Lcom/google/gson/stream/JsonWriter;.peek()I').
name_ref(m_peek_89, method, 'peek', 'Lcom/google/gson/stream/JsonReader;.peek()Lcom/google/gson/stream/JsonToken;|Ljava/io/IOException;').
name_ref(m_peek_keyword_371, method, 'peekKeyword', 'Lcom/google/gson/stream/JsonReader;.peekKeyword()I|Ljava/io/IOException;').
name_ref(m_peek_number_372, method, 'peekNumber', 'Lcom/google/gson/stream/JsonReader;.peekNumber()I|Ljava/io/IOException;').
name_ref(m_promote_name_to_value_157, method, 'promoteNameToValue', 'Lcom/google/gson/internal/JsonReaderInternalAccess;.promoteNameToValue(Lcom/google/gson/stream/JsonReader;)V|Ljava/io/IOException;').
name_ref(m_promote_name_to_value_400, method, 'promoteNameToValue', 'Lcom/google/gson/stream/JsonReader$50019;.promoteNameToValue(Lcom/google/gson/stream/JsonReader;)V|Ljava/io/IOException;').
name_ref(m_push_387, method, 'push', 'Lcom/google/gson/stream/JsonReader;.push(I)V').
name_ref(m_push_403, method, 'push', 'Lcom/google/gson/stream/JsonWriter;.push(I)V').
name_ref(m_put_54, method, 'put', 'Ljava/util/Map;.put(TK;TV;)TV;').
name_ref(m_read_103, method, 'read', 'Lcom/google/gson/TypeAdapter$7570;.read(Lcom/google/gson/stream/JsonReader;)TT;|Ljava/io/IOException;').
name_ref(m_read_106, method, 'read', 'Lcom/google/gson/TypeAdapter;.read(Lcom/google/gson/stream/JsonReader;)TT;|Ljava/io/IOException;').
name_ref(m_read_146, method, 'read', 'Lcom/google/gson/internal/Excluder$4069;.read(Lcom/google/gson/stream/JsonReader;)TT;|Ljava/io/IOException;').
name_ref(m_read_173, method, 'read', 'Lcom/google/gson/internal/bind/ArrayTypeAdapter;.read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;|Ljava/io/IOException;').
name_ref(m_read_177, method, 'read', 'Lcom/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;.read(Lcom/google/gson/stream/JsonReader;)Ljava/util/Collection<TE;>;|Ljava/io/IOException;').
name_ref(m_read_182, method, 'read', 'Lcom/google/gson/internal/bind/DateTypeAdapter;.read(Lcom/google/gson/stream/JsonReader;)Ljava/util/Date;|Ljava/io/IOException;').
name_ref(m_read_193, method, 'read', 'Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;.read(Lcom/google/gson/stream/JsonReader;)Ljava/util/Map<TK;TV;>;|Ljava/io/IOException;').
name_ref(m_read_199, method, 'read', 'Lcom/google/gson/internal/bind/ObjectTypeAdapter;.read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;|Ljava/io/IOException;').
name_ref(m_read_208, method, 'read', 'Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$3979;.read(Lcom/google/gson/stream/JsonReader;Ljava/lang/Object;)V|Ljava/io/IOException;|Ljava/lang/IllegalAccessException;').
name_ref(m_read_215, method, 'read', 'Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;.read(Lcom/google/gson/stream/JsonReader;Ljava/lang/Object;)V|Ljava/io/IOException;|Ljava/lang/IllegalAccessException;').
name_ref(m_read_217, method, 'read', 'Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;.read(Lcom/google/gson/stream/JsonReader;)TT;|Ljava/io/IOException;').
name_ref(m_read_221, method, 'read', 'Lcom/google/gson/internal/bind/SqlDateTypeAdapter;.read(Lcom/google/gson/stream/JsonReader;)Ljava/sql/Date;|Ljava/io/IOException;').
name_ref(m_read_226, method, 'read', 'Lcom/google/gson/internal/bind/TimeTypeAdapter;.read(Lcom/google/gson/stream/JsonReader;)Ljava/sql/Time;|Ljava/io/IOException;').
name_ref(m_read_231, method, 'read', 'Lcom/google/gson/internal/bind/TypeAdapters$2215;.read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Class;|Ljava/io/IOException;').
name_ref(m_read_233, method, 'read', 'Lcom/google/gson/internal/bind/TypeAdapters$3050;.read(Lcom/google/gson/stream/JsonReader;)Ljava/util/BitSet;|Ljava/io/IOException;').
name_ref(m_read_236, method, 'read', 'Lcom/google/gson/internal/bind/TypeAdapters$4697;.read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Boolean;|Ljava/io/IOException;').
name_ref(m_read_239, method, 'read', 'Lcom/google/gson/internal/bind/TypeAdapters$5472;.read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Boolean;|Ljava/io/IOException;').
name_ref(m_read_242, method, 'read', 'Lcom/google/gson/internal/bind/TypeAdapters$6040;.read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Number;|Ljava/io/IOException;').
name_ref(m_read_245, method, 'read', 'Lcom/google/gson/internal/bind/TypeAdapters$6691;.read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Number;|Ljava/io/IOException;').
name_ref(m_read_248, method, 'read', 'Lcom/google/gson/internal/bind/TypeAdapters$7316;.read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Number;|Ljava/io/IOException;').
name_ref(m_read_251, method, 'read', 'Lcom/google/gson/internal/bind/TypeAdapters$7950;.read(Lcom/google/gson/stream/JsonReader;)Ljava/util/concurrent/atomic/AtomicInteger;|Ljava/io/IOException;').
name_ref(m_read_254, method, 'read', 'Lcom/google/gson/internal/bind/TypeAdapters$8562;.read(Lcom/google/gson/stream/JsonReader;)Ljava/util/concurrent/atomic/AtomicBoolean;|Ljava/io/IOException;').
name_ref(m_read_257, method, 'read', 'Lcom/google/gson/internal/bind/TypeAdapters$9083;.read(Lcom/google/gson/stream/JsonReader;)Ljava/util/concurrent/atomic/AtomicIntegerArray;|Ljava/io/IOException;').
name_ref(m_read_260, method, 'read', 'Lcom/google/gson/internal/bind/TypeAdapters$10229;.read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Number;|Ljava/io/IOException;').
name_ref(m_read_263, method, 'read', 'Lcom/google/gson/internal/bind/TypeAdapters$10736;.read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Number;|Ljava/io/IOException;').
name_ref(m_read_266, method, 'read', 'Lcom/google/gson/internal/bind/TypeAdapters$11148;.read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Number;|Ljava/io/IOException;').
name_ref(m_read_269, method, 'read', 'Lcom/google/gson/internal/bind/TypeAdapters$11552;.read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Number;|Ljava/io/IOException;').
name_ref(m_read_272, method, 'read', 'Lcom/google/gson/internal/bind/TypeAdapters$12235;.read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Character;|Ljava/io/IOException;').
name_ref(m_read_275, method, 'read', 'Lcom/google/gson/internal/bind/TypeAdapters$12955;.read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/String;|Ljava/io/IOException;').
name_ref(m_read_278, method, 'read', 'Lcom/google/gson/internal/bind/TypeAdapters$13564;.read(Lcom/google/gson/stream/JsonReader;)Ljava/math/BigDecimal;|Ljava/io/IOException;').
name_ref(m_read_281, method, 'read', 'Lcom/google/gson/internal/bind/TypeAdapters$14106;.read(Lcom/google/gson/stream/JsonReader;)Ljava/math/BigInteger;|Ljava/io/IOException;').
name_ref(m_read_284, method, 'read', 'Lcom/google/gson/internal/bind/TypeAdapters$14745;.read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/StringBuilder;|Ljava/io/IOException;').
name_ref(m_read_287, method, 'read', 'Lcom/google/gson/internal/bind/TypeAdapters$15356;.read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/StringBuffer;|Ljava/io/IOException;').
name_ref(m_read_290, method, 'read', 'Lcom/google/gson/internal/bind/TypeAdapters$15941;.read(Lcom/google/gson/stream/JsonReader;)Ljava/net/URL;|Ljava/io/IOException;').
name_ref(m_read_293, method, 'read', 'Lcom/google/gson/internal/bind/TypeAdapters$16536;.read(Lcom/google/gson/stream/JsonReader;)Ljava/net/URI;|Ljava/io/IOException;').
name_ref(m_read_296, method, 'read', 'Lcom/google/gson/internal/bind/TypeAdapters$17248;.read(Lcom/google/gson/stream/JsonReader;)Ljava/net/InetAddress;|Ljava/io/IOException;').
name_ref(m_read_299, method, 'read', 'Lcom/google/gson/internal/bind/TypeAdapters$17941;.read(Lcom/google/gson/stream/JsonReader;)Ljava/util/UUID;|Ljava/io/IOException;').
name_ref(m_read_302, method, 'read', 'Lcom/google/gson/internal/bind/TypeAdapters$18491;.read(Lcom/google/gson/stream/JsonReader;)Ljava/util/Currency;|Ljava/io/IOException;').
name_ref(m_read_306, method, 'read', 'Lcom/google/gson/internal/bind/TypeAdapters$19359;.read(Lcom/google/gson/stream/JsonReader;)Ljava/sql/Timestamp;|Ljava/io/IOException;').
name_ref(m_read_309, method, 'read', 'Lcom/google/gson/internal/bind/TypeAdapters$19816;.read(Lcom/google/gson/stream/JsonReader;)Ljava/util/Calendar;|Ljava/io/IOException;').
name_ref(m_read_312, method, 'read', 'Lcom/google/gson/internal/bind/TypeAdapters$22013;.read(Lcom/google/gson/stream/JsonReader;)Ljava/util/Locale;|Ljava/io/IOException;').
name_ref(m_read_315, method, 'read', 'Lcom/google/gson/internal/bind/TypeAdapters$23236;.read(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;|Ljava/io/IOException;').
name_ref(m_read_318, method, 'read', 'Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;.read(Lcom/google/gson/stream/JsonReader;)TT;|Ljava/io/IOException;').
name_ref(m_read_32, method, 'read', 'Lcom/google/gson/Gson$13310;.read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Double;|Ljava/io/IOException;').
name_ref(m_read_338, method, 'read', 'Lcom/google/gson/internal/bind/TypeAdapters$30498;.read(Lcom/google/gson/stream/JsonReader;)TT1;|Ljava/io/IOException;').
name_ref(m_read_36, method, 'read', 'Lcom/google/gson/Gson$14048;.read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Float;|Ljava/io/IOException;').
name_ref(m_read_389, method, 'read', 'Ljava/io/Reader;.read([CII)I|Ljava/io/IOException;').
name_ref(m_read_39, method, 'read', 'Lcom/google/gson/Gson$15168;.read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Number;|Ljava/io/IOException;').
name_ref(m_read_44, method, 'read', 'Lcom/google/gson/Gson$15743;.read(Lcom/google/gson/stream/JsonReader;)Ljava/util/concurrent/atomic/AtomicLong;|Ljava/io/IOException;').
name_ref(m_read_47, method, 'read', 'Lcom/google/gson/Gson$16239;.read(Lcom/google/gson/stream/JsonReader;)Ljava/util/concurrent/atomic/AtomicLongArray;|Ljava/io/IOException;').
name_ref(m_read_93, method, 'read', 'Lcom/google/gson/Gson$FutureTypeAdapter;.read(Lcom/google/gson/stream/JsonReader;)TT;|Ljava/io/IOException;').
name_ref(m_read_escape_character_397, method, 'readEscapeCharacter', 'Lcom/google/gson/stream/JsonReader;.readEscapeCharacter()C|Ljava/io/IOException;').
name_ref(m_reflective_type_adapter_factory_28, method, 'ReflectiveTypeAdapterFactory', 'Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;.(Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/FieldNamingStrategy;Lcom/google/gson/internal/Excluder;)V').
name_ref(m_remove_56, method, 'remove', 'Ljava/util/Map;.remove(Ljava/lang/Object;)TV;').
name_ref(m_remove_57, method, 'remove', 'Ljava/lang/ThreadLocal;.remove()V').
name_ref(m_replace_top_417, method, 'replaceTop', 'Lcom/google/gson/stream/JsonWriter;.replaceTop(I)V').
name_ref(m_separate_camel_case_6, method, 'separateCamelCase', 'Lcom/google/gson/FieldNamingPolicy;.separateCamelCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_serialize_12, method, 'serialize', 'Lcom/google/gson/Gson$5979;.serialize(Ljava/lang/Object;)Lcom/google/gson/JsonElement;').
name_ref(m_serialize_13, method, 'serialize', 'Lcom/google/gson/Gson$5979;.serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/google/gson/JsonElement;').
name_ref(m_serialize_96, method, 'serialize', 'Lcom/google/gson/LongSerializationPolicy$1088;.serialize(Ljava/lang/Long;)Lcom/google/gson/JsonElement;').
name_ref(m_serialize_97, method, 'serialize', 'Lcom/google/gson/LongSerializationPolicy$1399;.serialize(Ljava/lang/Long;)Lcom/google/gson/JsonElement;').
name_ref(m_serialize_98, method, 'serialize', 'Lcom/google/gson/LongSerializationPolicy;.serialize(Ljava/lang/Long;)Lcom/google/gson/JsonElement;').
name_ref(m_set_52, method, 'set', 'Ljava/lang/ThreadLocal;.set(TT;)V').
name_ref(m_set_accessible_118, method, 'setAccessible', 'Ljava/lang/reflect/Constructor;.setAccessible(Z)V').
name_ref(m_set_delegate_92, method, 'setDelegate', 'Lcom/google/gson/Gson$FutureTypeAdapter;.setDelegate(Lcom/google/gson/TypeAdapter<TT;>;)V').
name_ref(m_set_html_safe_407, method, 'setHtmlSafe', 'Lcom/google/gson/stream/JsonWriter;.setHtmlSafe(Z)V').
name_ref(m_set_indent_404, method, 'setIndent', 'Lcom/google/gson/stream/JsonWriter;.setIndent(Ljava/lang/String;)V').
name_ref(m_set_lenient_405, method, 'setLenient', 'Lcom/google/gson/stream/JsonWriter;.setLenient(Z)V').
name_ref(m_set_lenient_79, method, 'setLenient', 'Lcom/google/gson/stream/JsonReader;.setLenient(Z)V').
name_ref(m_set_serialize_nulls_76, method, 'setSerializeNulls', 'Lcom/google/gson/stream/JsonWriter;.setSerializeNulls(Z)V').
name_ref(m_skip_quoted_value_382, method, 'skipQuotedValue', 'Lcom/google/gson/stream/JsonReader;.skipQuotedValue(C)V|Ljava/io/IOException;').
name_ref(m_skip_to_394, method, 'skipTo', 'Lcom/google/gson/stream/JsonReader;.skipTo(Ljava/lang/String;)Z|Ljava/io/IOException;').
name_ref(m_skip_to_end_of_line_393, method, 'skipToEndOfLine', 'Lcom/google/gson/stream/JsonReader;.skipToEndOfLine()V|Ljava/io/IOException;').
name_ref(m_skip_unquoted_value_383, method, 'skipUnquotedValue', 'Lcom/google/gson/stream/JsonReader;.skipUnquotedValue()V|Ljava/io/IOException;').
name_ref(m_skip_value_386, method, 'skipValue', 'Lcom/google/gson/stream/JsonReader;.skipValue()V|Ljava/io/IOException;').
name_ref(m_streams_158, method, 'Streams', 'Lcom/google/gson/internal/Streams;.()V').
name_ref(m_string_429, method, 'string', 'Lcom/google/gson/stream/JsonWriter;.string(Ljava/lang/String;)V|Ljava/io/IOException;').
name_ref(m_string_reader_83, method, 'StringReader', 'Ljava/io/StringReader;.(Ljava/lang/String;)V').
name_ref(m_string_writer_66, method, 'StringWriter', 'Ljava/io/StringWriter;.()V').
name_ref(m_sub_sequence_168, method, 'subSequence', 'Lcom/google/gson/internal/Streams$AppendableWriter$CurrentWrite;.subSequence(II)Ljava/lang/CharSequence;').
name_ref(m_syntax_error_398, method, 'syntaxError', 'Lcom/google/gson/stream/JsonReader;.syntaxError(Ljava/lang/String;)Ljava/io/IOException;|Ljava/io/IOException;').
name_ref(m_test_null_safe_bug_deserialize_360, method, 'testNullSafeBugDeserialize', 'Lcom/google/gson/regression/JsonAdapterNullSafeTest;.testNullSafeBugDeserialize()V|Ljava/lang/Exception;').
name_ref(m_test_null_safe_bug_serialize_358, method, 'testNullSafeBugSerialize', 'Lcom/google/gson/regression/JsonAdapterNullSafeTest;.testNullSafeBugSerialize()V|Ljava/lang/Exception;').
name_ref(m_time_type_adapter_225, method, 'TimeTypeAdapter', 'Lcom/google/gson/internal/bind/TimeTypeAdapter;.()V').
name_ref(m_to_char_array_362, method, 'toCharArray', 'Ljava/lang/String;.toCharArray()[C').
name_ref(m_to_json_100, method, 'toJson', 'Lcom/google/gson/TypeAdapter;.toJson(Ljava/io/Writer;TT;)V|Ljava/io/IOException;').
name_ref(m_to_json_104, method, 'toJson', 'Lcom/google/gson/TypeAdapter;.toJson(TT;)Ljava/lang/String;').
name_ref(m_to_json_63, method, 'toJson', 'Lcom/google/gson/Gson;.toJson(Ljava/lang/Object;)Ljava/lang/String;').
name_ref(m_to_json_64, method, 'toJson', 'Lcom/google/gson/Gson;.toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;').
name_ref(m_to_json_67, method, 'toJson', 'Lcom/google/gson/Gson;.toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V|Lcom/google/gson/JsonIOException;').
name_ref(m_to_json_68, method, 'toJson', 'Lcom/google/gson/Gson;.toJson(Ljava/lang/Object;Ljava/lang/Appendable;)V|Lcom/google/gson/JsonIOException;').
name_ref(m_to_json_71, method, 'toJson', 'Lcom/google/gson/Gson;.toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/stream/JsonWriter;)V|Lcom/google/gson/JsonIOException;').
name_ref(m_to_json_73, method, 'toJson', 'Lcom/google/gson/Gson;.toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;').
name_ref(m_to_json_74, method, 'toJson', 'Lcom/google/gson/Gson;.toJson(Lcom/google/gson/JsonElement;Ljava/lang/Appendable;)V|Lcom/google/gson/JsonIOException;').
name_ref(m_to_json_80, method, 'toJson', 'Lcom/google/gson/Gson;.toJson(Lcom/google/gson/JsonElement;Lcom/google/gson/stream/JsonWriter;)V|Lcom/google/gson/JsonIOException;').
name_ref(m_to_json_tree_105, method, 'toJsonTree', 'Lcom/google/gson/TypeAdapter;.toJsonTree(TT;)Lcom/google/gson/JsonElement;').
name_ref(m_to_json_tree_61, method, 'toJsonTree', 'Lcom/google/gson/Gson;.toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;').
name_ref(m_to_json_tree_62, method, 'toJsonTree', 'Lcom/google/gson/Gson;.toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/google/gson/JsonElement;').
name_ref(m_to_string_135, method, 'toString', 'Lcom/google/gson/internal/ConstructorConstructor;.toString()Ljava/lang/String;').
name_ref(m_to_string_326, method, 'toString', 'Lcom/google/gson/internal/bind/TypeAdapters$27963;.toString()Ljava/lang/String;').
name_ref(m_to_string_329, method, 'toString', 'Lcom/google/gson/internal/bind/TypeAdapters$28568;.toString()Ljava/lang/String;').
name_ref(m_to_string_333, method, 'toString', 'Lcom/google/gson/internal/bind/TypeAdapters$29301;.toString()Ljava/lang/String;').
name_ref(m_to_string_339, method, 'toString', 'Lcom/google/gson/internal/bind/TypeAdapters$30153;.toString()Ljava/lang/String;').
name_ref(m_to_string_357, method, 'toString', 'Lcom/google/gson/reflect/TypeToken;.toString()Ljava/lang/String;').
name_ref(m_to_string_395, method, 'toString', 'Lcom/google/gson/stream/JsonReader;.toString()Ljava/lang/String;').
name_ref(m_to_string_95, method, 'toString', 'Lcom/google/gson/Gson;.toString()Ljava/lang/String;').
name_ref(m_translate_name_1, method, 'translateName', 'Lcom/google/gson/FieldNamingPolicy$1232;.translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;').
name_ref(m_translate_name_2, method, 'translateName', 'Lcom/google/gson/FieldNamingPolicy$1725;.translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;').
name_ref(m_translate_name_3, method, 'translateName', 'Lcom/google/gson/FieldNamingPolicy$2325;.translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;').
name_ref(m_translate_name_4, method, 'translateName', 'Lcom/google/gson/FieldNamingPolicy$2990;.translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;').
name_ref(m_translate_name_5, method, 'translateName', 'Lcom/google/gson/FieldNamingPolicy$4018;.translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;').
name_ref(m_type_adapters_228, method, 'TypeAdapters', 'Lcom/google/gson/internal/bind/TypeAdapters;.()V').
name_ref(m_type_equals_352, method, 'typeEquals', 'Lcom/google/gson/reflect/TypeToken;.typeEquals(Ljava/lang/reflect/ParameterizedType;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Type;>;)Z').
name_ref(m_type_token_340, method, 'TypeToken', 'Lcom/google/gson/reflect/TypeToken;.()V').
name_ref(m_type_token_341, method, 'TypeToken', 'Lcom/google/gson/reflect/TypeToken;.(Ljava/lang/reflect/Type;)V').
name_ref(m_unmodifiable_list_29, method, 'unmodifiableList', 'Ljava/util/Collections;.unmodifiableList<T:Ljava/lang/Object;>(Ljava/util/List<+TT;>;)Ljava/util/List<TT;>;').
name_ref(m_upper_case_first_letter_7, method, 'upperCaseFirstLetter', 'Lcom/google/gson/FieldNamingPolicy;.upperCaseFirstLetter(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_value_187, method, 'value', 'Lcom/google/gson/annotations/JsonAdapter;.value()Ljava/lang/Class<*>;').
name_ref(m_value_420, method, 'value', 'Lcom/google/gson/stream/JsonWriter;.value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;|Ljava/io/IOException;').
name_ref(m_value_423, method, 'value', 'Lcom/google/gson/stream/JsonWriter;.value(Z)Lcom/google/gson/stream/JsonWriter;|Ljava/io/IOException;').
name_ref(m_value_424, method, 'value', 'Lcom/google/gson/stream/JsonWriter;.value(D)Lcom/google/gson/stream/JsonWriter;|Ljava/io/IOException;').
name_ref(m_value_425, method, 'value', 'Lcom/google/gson/stream/JsonWriter;.value(J)Lcom/google/gson/stream/JsonWriter;|Ljava/io/IOException;').
name_ref(m_value_426, method, 'value', 'Lcom/google/gson/stream/JsonWriter;.value(Ljava/lang/Number;)Lcom/google/gson/stream/JsonWriter;|Ljava/io/IOException;').
name_ref(m_with_exclusion_strategy_143, method, 'withExclusionStrategy', 'Lcom/google/gson/internal/Excluder;.withExclusionStrategy(Lcom/google/gson/ExclusionStrategy;ZZ)Lcom/google/gson/internal/Excluder;').
name_ref(m_with_modifiers_140, method, 'withModifiers', 'Lcom/google/gson/internal/Excluder;.withModifiers([I)Lcom/google/gson/internal/Excluder;').
name_ref(m_with_version_139, method, 'withVersion', 'Lcom/google/gson/internal/Excluder;.withVersion(D)Lcom/google/gson/internal/Excluder;').
name_ref(m_write_102, method, 'write', 'Lcom/google/gson/TypeAdapter$7570;.write(Lcom/google/gson/stream/JsonWriter;TT;)V|Ljava/io/IOException;').
name_ref(m_write_147, method, 'write', 'Lcom/google/gson/internal/Excluder$4069;.write(Lcom/google/gson/stream/JsonWriter;TT;)V|Ljava/io/IOException;').
name_ref(m_write_160, method, 'write', 'Lcom/google/gson/internal/Streams;.write(Lcom/google/gson/JsonElement;Lcom/google/gson/stream/JsonWriter;)V|Ljava/io/IOException;').
name_ref(m_write_162, method, 'write', 'Lcom/google/gson/internal/Streams$AppendableWriter;.write([CII)V|Ljava/io/IOException;').
name_ref(m_write_163, method, 'write', 'Lcom/google/gson/internal/Streams$AppendableWriter;.write(I)V|Ljava/io/IOException;').
name_ref(m_write_174, method, 'write', 'Lcom/google/gson/internal/bind/ArrayTypeAdapter;.write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V|Ljava/io/IOException;').
name_ref(m_write_178, method, 'write', 'Lcom/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;.write(Lcom/google/gson/stream/JsonWriter;Ljava/util/Collection<TE;>;)V|Ljava/io/IOException;').
name_ref(m_write_184, method, 'write', 'Lcom/google/gson/internal/bind/DateTypeAdapter;.write(Lcom/google/gson/stream/JsonWriter;Ljava/util/Date;)V|Ljava/io/IOException;').
name_ref(m_write_194, method, 'write', 'Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;.write(Lcom/google/gson/stream/JsonWriter;Ljava/util/Map<TK;TV;>;)V|Ljava/io/IOException;').
name_ref(m_write_200, method, 'write', 'Lcom/google/gson/internal/bind/ObjectTypeAdapter;.write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V|Ljava/io/IOException;').
name_ref(m_write_207, method, 'write', 'Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$3979;.write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V|Ljava/io/IOException;|Ljava/lang/IllegalAccessException;').
name_ref(m_write_214, method, 'write', 'Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;.write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V|Ljava/io/IOException;|Ljava/lang/IllegalAccessException;').
name_ref(m_write_218, method, 'write', 'Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;.write(Lcom/google/gson/stream/JsonWriter;TT;)V|Ljava/io/IOException;').
name_ref(m_write_222, method, 'write', 'Lcom/google/gson/internal/bind/SqlDateTypeAdapter;.write(Lcom/google/gson/stream/JsonWriter;Ljava/sql/Date;)V|Ljava/io/IOException;').
name_ref(m_write_227, method, 'write', 'Lcom/google/gson/internal/bind/TimeTypeAdapter;.write(Lcom/google/gson/stream/JsonWriter;Ljava/sql/Time;)V|Ljava/io/IOException;').
name_ref(m_write_230, method, 'write', 'Lcom/google/gson/internal/bind/TypeAdapters$2215;.write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Class;)V|Ljava/io/IOException;').
name_ref(m_write_234, method, 'write', 'Lcom/google/gson/internal/bind/TypeAdapters$3050;.write(Lcom/google/gson/stream/JsonWriter;Ljava/util/BitSet;)V|Ljava/io/IOException;').
name_ref(m_write_237, method, 'write', 'Lcom/google/gson/internal/bind/TypeAdapters$4697;.write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Boolean;)V|Ljava/io/IOException;').
name_ref(m_write_240, method, 'write', 'Lcom/google/gson/internal/bind/TypeAdapters$5472;.write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Boolean;)V|Ljava/io/IOException;').
name_ref(m_write_243, method, 'write', 'Lcom/google/gson/internal/bind/TypeAdapters$6040;.write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Number;)V|Ljava/io/IOException;').
name_ref(m_write_246, method, 'write', 'Lcom/google/gson/internal/bind/TypeAdapters$6691;.write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Number;)V|Ljava/io/IOException;').
name_ref(m_write_249, method, 'write', 'Lcom/google/gson/internal/bind/TypeAdapters$7316;.write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Number;)V|Ljava/io/IOException;').
name_ref(m_write_252, method, 'write', 'Lcom/google/gson/internal/bind/TypeAdapters$7950;.write(Lcom/google/gson/stream/JsonWriter;Ljava/util/concurrent/atomic/AtomicInteger;)V|Ljava/io/IOException;').
name_ref(m_write_255, method, 'write', 'Lcom/google/gson/internal/bind/TypeAdapters$8562;.write(Lcom/google/gson/stream/JsonWriter;Ljava/util/concurrent/atomic/AtomicBoolean;)V|Ljava/io/IOException;').
name_ref(m_write_258, method, 'write', 'Lcom/google/gson/internal/bind/TypeAdapters$9083;.write(Lcom/google/gson/stream/JsonWriter;Ljava/util/concurrent/atomic/AtomicIntegerArray;)V|Ljava/io/IOException;').
name_ref(m_write_261, method, 'write', 'Lcom/google/gson/internal/bind/TypeAdapters$10229;.write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Number;)V|Ljava/io/IOException;').
name_ref(m_write_264, method, 'write', 'Lcom/google/gson/internal/bind/TypeAdapters$10736;.write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Number;)V|Ljava/io/IOException;').
name_ref(m_write_267, method, 'write', 'Lcom/google/gson/internal/bind/TypeAdapters$11148;.write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Number;)V|Ljava/io/IOException;').
name_ref(m_write_270, method, 'write', 'Lcom/google/gson/internal/bind/TypeAdapters$11552;.write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Number;)V|Ljava/io/IOException;').
name_ref(m_write_273, method, 'write', 'Lcom/google/gson/internal/bind/TypeAdapters$12235;.write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Character;)V|Ljava/io/IOException;').
name_ref(m_write_276, method, 'write', 'Lcom/google/gson/internal/bind/TypeAdapters$12955;.write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/String;)V|Ljava/io/IOException;').
name_ref(m_write_279, method, 'write', 'Lcom/google/gson/internal/bind/TypeAdapters$13564;.write(Lcom/google/gson/stream/JsonWriter;Ljava/math/BigDecimal;)V|Ljava/io/IOException;').
name_ref(m_write_282, method, 'write', 'Lcom/google/gson/internal/bind/TypeAdapters$14106;.write(Lcom/google/gson/stream/JsonWriter;Ljava/math/BigInteger;)V|Ljava/io/IOException;').
name_ref(m_write_285, method, 'write', 'Lcom/google/gson/internal/bind/TypeAdapters$14745;.write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/StringBuilder;)V|Ljava/io/IOException;').
name_ref(m_write_288, method, 'write', 'Lcom/google/gson/internal/bind/TypeAdapters$15356;.write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/StringBuffer;)V|Ljava/io/IOException;').
name_ref(m_write_291, method, 'write', 'Lcom/google/gson/internal/bind/TypeAdapters$15941;.write(Lcom/google/gson/stream/JsonWriter;Ljava/net/URL;)V|Ljava/io/IOException;').
name_ref(m_write_294, method, 'write', 'Lcom/google/gson/internal/bind/TypeAdapters$16536;.write(Lcom/google/gson/stream/JsonWriter;Ljava/net/URI;)V|Ljava/io/IOException;').
name_ref(m_write_297, method, 'write', 'Lcom/google/gson/internal/bind/TypeAdapters$17248;.write(Lcom/google/gson/stream/JsonWriter;Ljava/net/InetAddress;)V|Ljava/io/IOException;').
name_ref(m_write_300, method, 'write', 'Lcom/google/gson/internal/bind/TypeAdapters$17941;.write(Lcom/google/gson/stream/JsonWriter;Ljava/util/UUID;)V|Ljava/io/IOException;').
name_ref(m_write_303, method, 'write', 'Lcom/google/gson/internal/bind/TypeAdapters$18491;.write(Lcom/google/gson/stream/JsonWriter;Ljava/util/Currency;)V|Ljava/io/IOException;').
name_ref(m_write_307, method, 'write', 'Lcom/google/gson/internal/bind/TypeAdapters$19359;.write(Lcom/google/gson/stream/JsonWriter;Ljava/sql/Timestamp;)V|Ljava/io/IOException;').
name_ref(m_write_310, method, 'write', 'Lcom/google/gson/internal/bind/TypeAdapters$19816;.write(Lcom/google/gson/stream/JsonWriter;Ljava/util/Calendar;)V|Ljava/io/IOException;').
name_ref(m_write_313, method, 'write', 'Lcom/google/gson/internal/bind/TypeAdapters$22013;.write(Lcom/google/gson/stream/JsonWriter;Ljava/util/Locale;)V|Ljava/io/IOException;').
name_ref(m_write_316, method, 'write', 'Lcom/google/gson/internal/bind/TypeAdapters$23236;.write(Lcom/google/gson/stream/JsonWriter;Lcom/google/gson/JsonElement;)V|Ljava/io/IOException;').
name_ref(m_write_319, method, 'write', 'Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;.write(Lcom/google/gson/stream/JsonWriter;TT;)V|Ljava/io/IOException;').
name_ref(m_write_33, method, 'write', 'Lcom/google/gson/Gson$13310;.write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Number;)V|Ljava/io/IOException;').
name_ref(m_write_337, method, 'write', 'Lcom/google/gson/internal/bind/TypeAdapters$30498;.write(Lcom/google/gson/stream/JsonWriter;TT1;)V|Ljava/io/IOException;').
name_ref(m_write_37, method, 'write', 'Lcom/google/gson/Gson$14048;.write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Number;)V|Ljava/io/IOException;').
name_ref(m_write_40, method, 'write', 'Lcom/google/gson/Gson$15168;.write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Number;)V|Ljava/io/IOException;').
name_ref(m_write_43, method, 'write', 'Lcom/google/gson/Gson$15743;.write(Lcom/google/gson/stream/JsonWriter;Ljava/util/concurrent/atomic/AtomicLong;)V|Ljava/io/IOException;').
name_ref(m_write_46, method, 'write', 'Lcom/google/gson/Gson$16239;.write(Lcom/google/gson/stream/JsonWriter;Ljava/util/concurrent/atomic/AtomicLongArray;)V|Ljava/io/IOException;').
name_ref(m_write_94, method, 'write', 'Lcom/google/gson/Gson$FutureTypeAdapter;.write(Lcom/google/gson/stream/JsonWriter;TT;)V|Ljava/io/IOException;').
name_ref(m_write_99, method, 'write', 'Lcom/google/gson/TypeAdapter;.write(Lcom/google/gson/stream/JsonWriter;TT;)V|Ljava/io/IOException;').
name_ref(m_write_deferred_name_419, method, 'writeDeferredName', 'Lcom/google/gson/stream/JsonWriter;.writeDeferredName()V|Ljava/io/IOException;').
name_ref(m_write_field_209, method, 'writeField', 'Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$3979;.writeField(Ljava/lang/Object;)Z|Ljava/io/IOException;|Ljava/lang/IllegalAccessException;').
name_ref(m_write_field_213, method, 'writeField', 'Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;.writeField(Ljava/lang/Object;)Z|Ljava/io/IOException;|Ljava/lang/IllegalAccessException;').
name_ref(m_writer_for_appendable_70, method, 'writerForAppendable', 'Lcom/google/gson/internal/Streams;.writerForAppendable(Ljava/lang/Appendable;)Ljava/io/Writer;').
name_ref(q_atomic_boolean_factory_13, q_name, 'TypeAdapters.ATOMIC_BOOLEAN_FACTORY', 'Lcom/google/gson/internal/bind/TypeAdapters;:Lcom/google/gson/internal/bind/TypeAdapters;.ATOMIC_BOOLEAN_FACTORY)Lcom/google/gson/TypeAdapterFactory;').
name_ref(q_atomic_integer_array_factory_14, q_name, 'TypeAdapters.ATOMIC_INTEGER_ARRAY_FACTORY', 'Lcom/google/gson/internal/bind/TypeAdapters;:Lcom/google/gson/internal/bind/TypeAdapters;.ATOMIC_INTEGER_ARRAY_FACTORY)Lcom/google/gson/TypeAdapterFactory;').
name_ref(q_atomic_integer_factory_12, q_name, 'TypeAdapters.ATOMIC_INTEGER_FACTORY', 'Lcom/google/gson/internal/bind/TypeAdapters;:Lcom/google/gson/internal/bind/TypeAdapters;.ATOMIC_INTEGER_FACTORY)Lcom/google/gson/TypeAdapterFactory;').
name_ref(q_begin_object_40, q_name, 'JsonToken.BEGIN_OBJECT', 'Lcom/google/gson/stream/JsonToken;:Lcom/google/gson/stream/JsonToken;.BEGIN_OBJECT)Lcom/google/gson/stream/JsonToken;').
name_ref(q_big_decimal_18, q_name, 'TypeAdapters.BIG_DECIMAL', 'Lcom/google/gson/internal/bind/TypeAdapters;:Lcom/google/gson/internal/bind/TypeAdapters;.BIG_DECIMAL)Lcom/google/gson/TypeAdapter<Ljava/math/BigDecimal;>;').
name_ref(q_big_integer_19, q_name, 'TypeAdapters.BIG_INTEGER', 'Lcom/google/gson/internal/bind/TypeAdapters;:Lcom/google/gson/internal/bind/TypeAdapters;.BIG_INTEGER)Lcom/google/gson/TypeAdapter<Ljava/math/BigInteger;>;').
name_ref(q_bit_set_factory_26, q_name, 'TypeAdapters.BIT_SET_FACTORY', 'Lcom/google/gson/internal/bind/TypeAdapters;:Lcom/google/gson/internal/bind/TypeAdapters;.BIT_SET_FACTORY)Lcom/google/gson/TypeAdapterFactory;').
name_ref(q_boolean_factory_8, q_name, 'TypeAdapters.BOOLEAN_FACTORY', 'Lcom/google/gson/internal/bind/TypeAdapters;:Lcom/google/gson/internal/bind/TypeAdapters;.BOOLEAN_FACTORY)Lcom/google/gson/TypeAdapterFactory;').
name_ref(q_byte_factory_9, q_name, 'TypeAdapters.BYTE_FACTORY', 'Lcom/google/gson/internal/bind/TypeAdapters;:Lcom/google/gson/internal/bind/TypeAdapters;.BYTE_FACTORY)Lcom/google/gson/TypeAdapterFactory;').
name_ref(q_calendar_factory_28, q_name, 'TypeAdapters.CALENDAR_FACTORY', 'Lcom/google/gson/internal/bind/TypeAdapters;:Lcom/google/gson/internal/bind/TypeAdapters;.CALENDAR_FACTORY)Lcom/google/gson/TypeAdapterFactory;').
name_ref(q_character_factory_15, q_name, 'TypeAdapters.CHARACTER_FACTORY', 'Lcom/google/gson/internal/bind/TypeAdapters;:Lcom/google/gson/internal/bind/TypeAdapters;.CHARACTER_FACTORY)Lcom/google/gson/TypeAdapterFactory;').
name_ref(q_class_factory_33, q_name, 'TypeAdapters.CLASS_FACTORY', 'Lcom/google/gson/internal/bind/TypeAdapters;:Lcom/google/gson/internal/bind/TypeAdapters;.CLASS_FACTORY)Lcom/google/gson/TypeAdapterFactory;').
name_ref(q_currency_factory_23, q_name, 'TypeAdapters.CURRENCY_FACTORY', 'Lcom/google/gson/internal/bind/TypeAdapters;:Lcom/google/gson/internal/bind/TypeAdapters;.CURRENCY_FACTORY)Lcom/google/gson/TypeAdapterFactory;').
name_ref(q_dangling_name_45, q_name, 'JsonScope.DANGLING_NAME', 'Lcom/google/gson/stream/JsonScope;:Lcom/google/gson/stream/JsonScope;.DANGLING_NAME)I').
name_ref(q_default_1, q_name, 'Excluder.DEFAULT', 'Lcom/google/gson/internal/Excluder;:Lcom/google/gson/internal/Excluder;.DEFAULT)Lcom/google/gson/internal/Excluder;').
name_ref(q_default_3, q_name, 'LongSerializationPolicy.DEFAULT', 'Lcom/google/gson/LongSerializationPolicy;:Lcom/google/gson/LongSerializationPolicy;.DEFAULT)Lcom/google/gson/LongSerializationPolicy;').
name_ref(q_empty_array_41, q_name, 'JsonScope.EMPTY_ARRAY', 'Lcom/google/gson/stream/JsonScope;:Lcom/google/gson/stream/JsonScope;.EMPTY_ARRAY)I').
name_ref(q_empty_document_39, q_name, 'JsonScope.EMPTY_DOCUMENT', 'Lcom/google/gson/stream/JsonScope;:Lcom/google/gson/stream/JsonScope;.EMPTY_DOCUMENT)I').
name_ref(q_empty_object_43, q_name, 'JsonScope.EMPTY_OBJECT', 'Lcom/google/gson/stream/JsonScope;:Lcom/google/gson/stream/JsonScope;.EMPTY_OBJECT)I').
name_ref(q_enum_factory_34, q_name, 'TypeAdapters.ENUM_FACTORY', 'Lcom/google/gson/internal/bind/TypeAdapters;:Lcom/google/gson/internal/bind/TypeAdapters;.ENUM_FACTORY)Lcom/google/gson/TypeAdapterFactory;').
name_ref(q_factory_27, q_name, 'DateTypeAdapter.FACTORY', 'Lcom/google/gson/internal/bind/DateTypeAdapter;:Lcom/google/gson/internal/bind/DateTypeAdapter;.FACTORY)Lcom/google/gson/TypeAdapterFactory;').
name_ref(q_factory_29, q_name, 'TimeTypeAdapter.FACTORY', 'Lcom/google/gson/internal/bind/TimeTypeAdapter;:Lcom/google/gson/internal/bind/TimeTypeAdapter;.FACTORY)Lcom/google/gson/TypeAdapterFactory;').
name_ref(q_factory_30, q_name, 'SqlDateTypeAdapter.FACTORY', 'Lcom/google/gson/internal/bind/SqlDateTypeAdapter;:Lcom/google/gson/internal/bind/SqlDateTypeAdapter;.FACTORY)Lcom/google/gson/TypeAdapterFactory;').
name_ref(q_factory_32, q_name, 'ArrayTypeAdapter.FACTORY', 'Lcom/google/gson/internal/bind/ArrayTypeAdapter<>;:Lcom/google/gson/internal/bind/ArrayTypeAdapter<>;.FACTORY)Lcom/google/gson/TypeAdapterFactory;').
name_ref(q_factory_5, q_name, 'ObjectTypeAdapter.FACTORY', 'Lcom/google/gson/internal/bind/ObjectTypeAdapter;:Lcom/google/gson/internal/bind/ObjectTypeAdapter;.FACTORY)Lcom/google/gson/TypeAdapterFactory;').
name_ref(q_identity_2, q_name, 'FieldNamingPolicy.IDENTITY', 'Lcom/google/gson/FieldNamingPolicy;:Lcom/google/gson/FieldNamingPolicy;.IDENTITY)Lcom/google/gson/FieldNamingPolicy;').
name_ref(q_ignore_versions_38, q_name, 'Excluder.IGNORE_VERSIONS', 'Lcom/google/gson/internal/Excluder;:Lcom/google/gson/internal/Excluder;.IGNORE_VERSIONS)D').
name_ref(q_inet_address_factory_25, q_name, 'TypeAdapters.INET_ADDRESS_FACTORY', 'Lcom/google/gson/internal/bind/TypeAdapters;:Lcom/google/gson/internal/bind/TypeAdapters;.INET_ADDRESS_FACTORY)Lcom/google/gson/TypeAdapterFactory;').
name_ref(q_instance_49, q_name, 'JsonReaderInternalAccess.INSTANCE', 'Lcom/google/gson/internal/JsonReaderInternalAccess;:Lcom/google/gson/internal/JsonReaderInternalAccess;.INSTANCE)Lcom/google/gson/internal/JsonReaderInternalAccess;').
name_ref(q_integer_factory_7, q_name, 'TypeAdapters.INTEGER_FACTORY', 'Lcom/google/gson/internal/bind/TypeAdapters;:Lcom/google/gson/internal/bind/TypeAdapters;.INTEGER_FACTORY)Lcom/google/gson/TypeAdapterFactory;').
name_ref(q_json_element_factory_4, q_name, 'TypeAdapters.JSON_ELEMENT_FACTORY', 'Lcom/google/gson/internal/bind/TypeAdapters;:Lcom/google/gson/internal/bind/TypeAdapters;.JSON_ELEMENT_FACTORY)Lcom/google/gson/TypeAdapterFactory;').
name_ref(q_length_47, q_name, 'buffer.length', 'Lcom/google/gson/stream/JsonReader;.fillBuffer(I)Z|Ljava/io/IOException;#buffer:.length)I').
name_ref(q_length_48, q_name, 'NON_EXECUTE_PREFIX.length', 'Lcom/google/gson/stream/JsonReader;.NON_EXECUTE_PREFIX)[C:.length)I').
name_ref(q_length_50, q_name, 'stack.length', 'Lcom/google/gson/stream/JsonWriter;.stack)[I:.length)I').
name_ref(q_locale_factory_24, q_name, 'TypeAdapters.LOCALE_FACTORY', 'Lcom/google/gson/internal/bind/TypeAdapters;:Lcom/google/gson/internal/bind/TypeAdapters;.LOCALE_FACTORY)Lcom/google/gson/TypeAdapterFactory;').
name_ref(q_long_35, q_name, 'TypeAdapters.LONG', 'Lcom/google/gson/internal/bind/TypeAdapters;:Lcom/google/gson/internal/bind/TypeAdapters;.LONG)Lcom/google/gson/TypeAdapter<Ljava/lang/Number;>;').
name_ref(q_nonempty_array_42, q_name, 'JsonScope.NONEMPTY_ARRAY', 'Lcom/google/gson/stream/JsonScope;:Lcom/google/gson/stream/JsonScope;.NONEMPTY_ARRAY)I').
name_ref(q_nonempty_document_46, q_name, 'JsonScope.NONEMPTY_DOCUMENT', 'Lcom/google/gson/stream/JsonScope;:Lcom/google/gson/stream/JsonScope;.NONEMPTY_DOCUMENT)I').
name_ref(q_nonempty_object_44, q_name, 'JsonScope.NONEMPTY_OBJECT', 'Lcom/google/gson/stream/JsonScope;:Lcom/google/gson/stream/JsonScope;.NONEMPTY_OBJECT)I').
name_ref(q_number_factory_11, q_name, 'TypeAdapters.NUMBER_FACTORY', 'Lcom/google/gson/internal/bind/TypeAdapters;:Lcom/google/gson/internal/bind/TypeAdapters;.NUMBER_FACTORY)Lcom/google/gson/TypeAdapterFactory;').
name_ref(q_short_factory_10, q_name, 'TypeAdapters.SHORT_FACTORY', 'Lcom/google/gson/internal/bind/TypeAdapters;:Lcom/google/gson/internal/bind/TypeAdapters;.SHORT_FACTORY)Lcom/google/gson/TypeAdapterFactory;').
name_ref(q_static_37, q_name, 'Modifier.STATIC', 'Ljava/lang/reflect/Modifier;:Ljava/lang/reflect/Modifier;.STATIC)I').
name_ref(q_string_buffer_factory_17, q_name, 'TypeAdapters.STRING_BUFFER_FACTORY', 'Lcom/google/gson/internal/bind/TypeAdapters;:Lcom/google/gson/internal/bind/TypeAdapters;.STRING_BUFFER_FACTORY)Lcom/google/gson/TypeAdapterFactory;').
name_ref(q_string_builder_factory_16, q_name, 'TypeAdapters.STRING_BUILDER_FACTORY', 'Lcom/google/gson/internal/bind/TypeAdapters;:Lcom/google/gson/internal/bind/TypeAdapters;.STRING_BUILDER_FACTORY)Lcom/google/gson/TypeAdapterFactory;').
name_ref(q_string_factory_6, q_name, 'TypeAdapters.STRING_FACTORY', 'Lcom/google/gson/internal/bind/TypeAdapters;:Lcom/google/gson/internal/bind/TypeAdapters;.STRING_FACTORY)Lcom/google/gson/TypeAdapterFactory;').
name_ref(q_timestamp_factory_31, q_name, 'TypeAdapters.TIMESTAMP_FACTORY', 'Lcom/google/gson/internal/bind/TypeAdapters;:Lcom/google/gson/internal/bind/TypeAdapters;.TIMESTAMP_FACTORY)Lcom/google/gson/TypeAdapterFactory;').
name_ref(q_transient_36, q_name, 'Modifier.TRANSIENT', 'Ljava/lang/reflect/Modifier;:Ljava/lang/reflect/Modifier;.TRANSIENT)I').
name_ref(q_uri_factory_21, q_name, 'TypeAdapters.URI_FACTORY', 'Lcom/google/gson/internal/bind/TypeAdapters;:Lcom/google/gson/internal/bind/TypeAdapters;.URI_FACTORY)Lcom/google/gson/TypeAdapterFactory;').
name_ref(q_url_factory_20, q_name, 'TypeAdapters.URL_FACTORY', 'Lcom/google/gson/internal/bind/TypeAdapters;:Lcom/google/gson/internal/bind/TypeAdapters;.URL_FACTORY)Lcom/google/gson/TypeAdapterFactory;').
name_ref(q_uuid_factory_22, q_name, 'TypeAdapters.UUID_FACTORY', 'Lcom/google/gson/internal/bind/TypeAdapters;:Lcom/google/gson/internal/bind/TypeAdapters;.UUID_FACTORY)Lcom/google/gson/TypeAdapterFactory;').

%%% End of Code Facts