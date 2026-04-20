%%% Logic-FL Facts
:- style_check(-discontiguous).

%bean_serializer_factory_1 - com.fasterxml.jackson.databind.ser.BeanSerializerFactory
assign(f_instance_2406, bean_serializer_factory_1_expr1, line(bean_serializer_factory_1, 69)).
method_invoc(bean_serializer_factory_1_expr1, m_bean_serializer_factory_1625, line(bean_serializer_factory_1, 69)).
argument(bean_serializer_factory_1_literal1, 1, bean_serializer_factory_1_expr1).
param(p_config_2407, 1, m_bean_serializer_factory_1625).
method_invoc(bean_serializer_factory_1_expr2, m_basic_serializer_factory_1589, line(bean_serializer_factory_1, 82)).
argument(p_config_2407, 1, bean_serializer_factory_1_expr2).
param(p_config_2408, 1, m_with_config_1626).
param(p_prov_2409, 1, m_create_serializer_1628).
param(p_orig_type_2410, 2, m_create_serializer_1628).
throw(m_create_serializer_1628, json_mapping_exception).
param(p_prov_2411, 1, m__create_serializer2_1629).
param(p_type_2412, 2, m__create_serializer2_1629).
param(p_bean_desc_2413, 3, m__create_serializer2_1629).
param(p_static_typing_2414, 4, m__create_serializer2_1629).
throw(m__create_serializer2_1629, json_mapping_exception).
param(p_prov_2415, 1, m_find_bean_serializer_1630).
param(p_type_2416, 2, m_find_bean_serializer_1630).
param(p_bean_desc_2417, 3, m_find_bean_serializer_1630).
throw(m_find_bean_serializer_1630, json_mapping_exception).
param(p_prov_2418, 1, m_find_reference_serializer_1631).
param(p_ref_type_2419, 2, m_find_reference_serializer_1631).
param(p_bean_desc_2420, 3, m_find_reference_serializer_1631).
param(p_static_typing_2421, 4, m_find_reference_serializer_1631).
throw(m_find_reference_serializer_1631, json_mapping_exception).
param(p_prov_2422, 1, m_build_atomic_reference_serializer_1632).
param(p_ref_type_2423, 2, m_build_atomic_reference_serializer_1632).
param(p_bean_desc_2424, 3, m_build_atomic_reference_serializer_1632).
param(p_static_typing_2425, 4, m_build_atomic_reference_serializer_1632).
param(p_content_type_serializer_2426, 5, m_build_atomic_reference_serializer_1632).
param(p_content_serializer_2427, 6, m_build_atomic_reference_serializer_1632).
throw(m_build_atomic_reference_serializer_1632, json_mapping_exception).
param(p_base_type_2428, 1, m_find_property_type_serializer_1633).
param(p_config_2429, 2, m_find_property_type_serializer_1633).
param(p_accessor_2430, 3, m_find_property_type_serializer_1633).
throw(m_find_property_type_serializer_1633, json_mapping_exception).
param(p_container_type_2431, 1, m_find_property_content_type_serializer_1634).
param(p_config_2432, 2, m_find_property_content_type_serializer_1634).
param(p_accessor_2433, 3, m_find_property_content_type_serializer_1634).
throw(m_find_property_content_type_serializer_1634, json_mapping_exception).
param(p_prov_2434, 1, m_construct_bean_serializer_1635).
param(p_bean_desc_2435, 2, m_construct_bean_serializer_1635).
throw(m_construct_bean_serializer_1635, json_mapping_exception).
param(p_prov_2436, 1, m_construct_object_id_handler_1636).
param(p_bean_desc_2437, 2, m_construct_object_id_handler_1636).
param(p_props_2438, 3, m_construct_object_id_handler_1636).
throw(m_construct_object_id_handler_1636, json_mapping_exception).
param(p_writer_2439, 1, m_construct_filtered_bean_writer_1637).
param(p_in_views_2440, 2, m_construct_filtered_bean_writer_1637).
param(p_config_2441, 1, m_construct_property_builder_1638).
param(p_bean_desc_2442, 2, m_construct_property_builder_1638).
param(p_bean_desc_2443, 1, m_construct_bean_serializer_builder_1639).
param(p_type_2444, 1, m_is_potential_bean_type_1640).
param(p_prov_2445, 1, m_find_bean_properties_1641).
param(p_bean_desc_2446, 2, m_find_bean_properties_1641).
param(p_builder_2447, 3, m_find_bean_properties_1641).
throw(m_find_bean_properties_1641, json_mapping_exception).
param(p_config_2448, 1, m_filter_bean_properties_1642).
param(p_bean_desc_2449, 2, m_filter_bean_properties_1642).
param(p_props_2450, 3, m_filter_bean_properties_1642).
param(p_config_2451, 1, m_process_views_1643).
param(p_builder_2452, 2, m_process_views_1643).
param(p_config_2453, 1, m_remove_ignorable_types_1644).
param(p_bean_desc_2454, 2, m_remove_ignorable_types_1644).
param(p_properties_2455, 3, m_remove_ignorable_types_1644).
param(p_config_2456, 1, m_remove_setterless_getters_1645).
param(p_bean_desc_2457, 2, m_remove_setterless_getters_1645).
param(p_properties_2458, 3, m_remove_setterless_getters_1645).
param(p_prov_2459, 1, m_remove_overlapping_type_ids_1646).
param(p_bean_desc_2460, 2, m_remove_overlapping_type_ids_1646).
param(p_builder_2461, 3, m_remove_overlapping_type_ids_1646).
param(p_props_2462, 4, m_remove_overlapping_type_ids_1646).
param(p_prov_2463, 1, m__construct_writer_1647).
param(p_prop_def_2464, 2, m__construct_writer_1647).
param(p_pb_2465, 3, m__construct_writer_1647).
param(p_static_typing_2466, 4, m__construct_writer_1647).
param(p_accessor_2467, 5, m__construct_writer_1647).
throw(m__construct_writer_1647, json_mapping_exception).

%class_stack_1 - com.fasterxml.jackson.databind.type.ClassStack
param(p_root_type_2868, 1, m_class_stack_1830).
method_invoc(class_stack_1_expr1, m_class_stack_1831, line(class_stack_1, 21)).
argument(class_stack_1_literal1, 1, class_stack_1_expr1).
argument(p_root_type_2868, 2, class_stack_1_expr1).
param(p_parent_2869, 1, m_class_stack_1831).
param(p_curr_2870, 2, m_class_stack_1831).
assign(f__parent_2871, p_parent_2869, line(class_stack_1, 25)).
assign(f__current_2872, p_curr_2870, line(class_stack_1, 26)).
param(p_cls_2873, 1, m_child_1832).
param(p_ref_2874, 1, m_add_self_reference_1833).
param(p_resolved_2875, 1, m_resolve_self_references_1834).
param(p_cls_2877, 1, m_find_1835).

%java7_support_impl_1 - com.fasterxml.jackson.databind.ext.Java7SupportImpl
assign(v_cls_1722, java7_support_impl_1_expr1, line(java7_support_impl_1, 24)).
assign(v_cls_1722, java7_support_impl_1_expr3, line(java7_support_impl_1, 25)).
assign(f__bogus_1723, v_cls_1722, line(java7_support_impl_1, 26)).
param(p_raw_type_1724, 1, m_get_deserializer_for_java_nio_file_path_1158).
param(p_raw_type_1725, 1, m_get_serializer_for_java_nio_file_path_1159).
param(p_a_1726, 1, m_find_transient_1160).
param(p_a_1727, 1, m_has_creator_annotation_1161).
param(p_p_1728, 1, m_find_constructor_name_1162).

%deserialization_context_1 - com.fasterxml.jackson.databind.DeserializationContext
param(p_df_230, 1, m_deserialization_context_207).
param(p_df_231, 1, m_deserialization_context_208).
param(p_cache_232, 2, m_deserialization_context_208).
assign(f__factory_233, p_df_231, line(deserialization_context_1, 159)).
assign(p_cache_232, deserialization_context_1_expr5, line(deserialization_context_1, 161)).
method_invoc(deserialization_context_1_expr5, m_deserializer_cache_209, line(deserialization_context_1, 161)).
assign(f__cache_234, p_cache_232, line(deserialization_context_1, 163)).
assign(f__feature_flags_235, deserialization_context_1_literal3, line(deserialization_context_1, 164)).
assign(f__config_236, deserialization_context_1_literal4, line(deserialization_context_1, 165)).
assign(f__injectable_values_237, deserialization_context_1_literal5, line(deserialization_context_1, 166)).
assign(f__view_238, deserialization_context_1_literal6, line(deserialization_context_1, 167)).
assign(f__attributes_239, deserialization_context_1_literal7, line(deserialization_context_1, 168)).
param(p_src_240, 1, m_deserialization_context_210).
param(p_factory_241, 2, m_deserialization_context_210).
param(p_src_242, 1, m_deserialization_context_211).
param(p_config_243, 2, m_deserialization_context_211).
param(p_p_244, 3, m_deserialization_context_211).
param(p_injectable_values_245, 4, m_deserialization_context_211).
param(p_src_246, 1, m_deserialization_context_212).
param(p_feature_247, 1, m_is_enabled_216).
param(p_base_type_248, 1, m_get_default_property_format_217).
param(p_key_249, 1, m_get_attribute_222).
param(p_key_250, 1, m_set_attribute_223).
param(p_value_251, 2, m_set_attribute_223).
param(p_feat_252, 1, m_is_enabled_226).
param(p_feature_mask_253, 1, m_has_deserialization_features_228).
param(p_feature_mask_254, 1, m_has_some_of_features_229).
param(p_value_id_255, 1, m_find_injectable_value_231).
param(p_for_property_256, 2, m_find_injectable_value_231).
param(p_bean_instance_257, 3, m_find_injectable_value_231).
throw(m_find_injectable_value_231, json_mapping_exception).
param(p_type_258, 1, m_has_value_deserializer_for_234).
param(p_cause_259, 2, m_has_value_deserializer_for_234).
param(p_type_260, 1, m_find_contextual_value_deserializer_235).
param(p_prop_261, 2, m_find_contextual_value_deserializer_235).
throw(m_find_contextual_value_deserializer_235, json_mapping_exception).
param(p_type_262, 1, m_find_non_contextual_value_deserializer_236).
throw(m_find_non_contextual_value_deserializer_236, json_mapping_exception).
param(p_type_263, 1, m_find_root_value_deserializer_237).
throw(m_find_root_value_deserializer_237, json_mapping_exception).
param(p_key_type_264, 1, m_find_key_deserializer_238).
param(p_prop_265, 2, m_find_key_deserializer_238).
throw(m_find_key_deserializer_238, json_mapping_exception).
param(p_id_266, 1, m_find_object_id_239).
param(p_generator_267, 2, m_find_object_id_239).
param(p_resolver_268, 3, m_find_object_id_239).
throw(m_check_unresolved_object_id_240, unresolved_forward_reference).
param(p_cls_269, 1, m_construct_type_241).
param(p_class_name_270, 1, m_find_class_242).
throw(m_find_class_242, class_not_found_exception).
param(p_buf_271, 1, m_return_object_buffer_244).
param(p_annotated_272, 1, m_deserializer_instance_246).
param(p_deser_def_273, 2, m_deserializer_instance_246).
throw(m_deserializer_instance_246, json_mapping_exception).
param(p_annotated_274, 1, m_key_deserializer_instance_247).
param(p_deser_def_275, 2, m_key_deserializer_instance_247).
throw(m_key_deserializer_instance_247, json_mapping_exception).
param(p_deser_276, 1, m_handle_primary_contextualization_248).
param(p_prop_277, 2, m_handle_primary_contextualization_248).
param(p_type_278, 3, m_handle_primary_contextualization_248).
throw(m_handle_primary_contextualization_248, json_mapping_exception).
param(p_deser_279, 1, m_handle_secondary_contextualization_249).
param(p_prop_280, 2, m_handle_secondary_contextualization_249).
param(p_type_281, 3, m_handle_secondary_contextualization_249).
throw(m_handle_secondary_contextualization_249, json_mapping_exception).
param(p_date_str_282, 1, m_parse_date_250).
throw(m_parse_date_250, illegal_argument_exception).
param(p_d_283, 1, m_construct_calendar_251).
param(p_p_284, 1, m_read_value_252).
param(p_type_285, 2, m_read_value_252).
throw(m_read_value_252, ioexception).
param(p_p_286, 1, m_read_value_253).
param(p_type_287, 2, m_read_value_253).
throw(m_read_value_253, ioexception).
param(p_p_288, 1, m_read_property_value_254).
param(p_prop_289, 2, m_read_property_value_254).
param(p_type_290, 3, m_read_property_value_254).
throw(m_read_property_value_254, ioexception).
param(p_p_291, 1, m_read_property_value_255).
param(p_prop_292, 2, m_read_property_value_255).
param(p_type_293, 3, m_read_property_value_255).
throw(m_read_property_value_255, ioexception).
param(p_p_294, 1, m_handle_unknown_property_256).
param(p_deser_295, 2, m_handle_unknown_property_256).
param(p_instance_or_class_296, 3, m_handle_unknown_property_256).
param(p_prop_name_297, 4, m_handle_unknown_property_256).
throw(m_handle_unknown_property_256, ioexception).
param(p_key_class_298, 1, m_handle_weird_key_257).
param(p_key_value_299, 2, m_handle_weird_key_257).
param(p_msg_300, 3, m_handle_weird_key_257).
param(p_msg_args_301, 4, m_handle_weird_key_257).
throw(m_handle_weird_key_257, ioexception).
param(p_target_class_302, 1, m_handle_weird_string_value_258).
param(p_value_303, 2, m_handle_weird_string_value_258).
param(p_msg_304, 3, m_handle_weird_string_value_258).
param(p_msg_args_305, 4, m_handle_weird_string_value_258).
throw(m_handle_weird_string_value_258, ioexception).
param(p_target_class_306, 1, m_handle_weird_number_value_259).
param(p_value_307, 2, m_handle_weird_number_value_259).
param(p_msg_308, 3, m_handle_weird_number_value_259).
param(p_msg_args_309, 4, m_handle_weird_number_value_259).
throw(m_handle_weird_number_value_259, ioexception).
param(p_inst_class_310, 1, m_handle_missing_instantiator_260).
param(p_value_inst_311, 2, m_handle_missing_instantiator_260).
param(p_p_312, 3, m_handle_missing_instantiator_260).
param(p_msg_313, 4, m_handle_missing_instantiator_260).
param(p_msg_args_314, 5, m_handle_missing_instantiator_260).
throw(m_handle_missing_instantiator_260, ioexception).
param(p_inst_class_315, 1, m_handle_instantiation_problem_261).
param(p_argument_316, 2, m_handle_instantiation_problem_261).
param(p_t_317, 3, m_handle_instantiation_problem_261).
throw(m_handle_instantiation_problem_261, ioexception).
param(p_inst_class_318, 1, m_handle_unexpected_token_262).
param(p_p_319, 2, m_handle_unexpected_token_262).
throw(m_handle_unexpected_token_262, ioexception).
param(p_inst_class_320, 1, m_handle_unexpected_token_263).
param(p_t_321, 2, m_handle_unexpected_token_263).
param(p_p_322, 3, m_handle_unexpected_token_263).
param(p_msg_323, 4, m_handle_unexpected_token_263).
param(p_msg_args_324, 5, m_handle_unexpected_token_263).
throw(m_handle_unexpected_token_263, ioexception).
param(p_base_type_325, 1, m_handle_unknown_type_id_264).
param(p_id_326, 2, m_handle_unknown_type_id_264).
param(p_id_resolver_327, 3, m_handle_unknown_type_id_264).
param(p_extra_desc_328, 4, m_handle_unknown_type_id_264).
throw(m_handle_unknown_type_id_264, ioexception).
param(p_base_type_329, 1, m_handle_missing_type_id_265).
param(p_id_resolver_330, 2, m_handle_missing_type_id_265).
param(p_extra_desc_331, 3, m_handle_missing_type_id_265).
throw(m_handle_missing_type_id_265, ioexception).
param(p_deser_332, 1, m_report_wrong_token_exception_266).
param(p_exp_token_333, 2, m_report_wrong_token_exception_266).
param(p_msg_334, 3, m_report_wrong_token_exception_266).
param(p_msg_args_335, 4, m_report_wrong_token_exception_266).
throw(m_report_wrong_token_exception_266, json_mapping_exception).
param(p_target_type_336, 1, m_report_wrong_token_exception_267).
param(p_exp_token_337, 2, m_report_wrong_token_exception_267).
param(p_msg_338, 3, m_report_wrong_token_exception_267).
param(p_msg_args_339, 4, m_report_wrong_token_exception_267).
throw(m_report_wrong_token_exception_267, json_mapping_exception).
param(p_target_type_340, 1, m_report_wrong_token_exception_268).
param(p_exp_token_341, 2, m_report_wrong_token_exception_268).
param(p_msg_342, 3, m_report_wrong_token_exception_268).
param(p_msg_args_343, 4, m_report_wrong_token_exception_268).
throw(m_report_wrong_token_exception_268, json_mapping_exception).
param(p_oid_reader_344, 1, m_report_unresolved_object_id_269).
param(p_bean_345, 2, m_report_unresolved_object_id_269).
throw(m_report_unresolved_object_id_269, json_mapping_exception).
param(p_prop_346, 1, m_report_input_mismatch_270).
param(p_msg_347, 2, m_report_input_mismatch_270).
param(p_msg_args_348, 3, m_report_input_mismatch_270).
throw(m_report_input_mismatch_270, json_mapping_exception).
param(p_src_349, 1, m_report_input_mismatch_271).
param(p_msg_350, 2, m_report_input_mismatch_271).
param(p_msg_args_351, 3, m_report_input_mismatch_271).
throw(m_report_input_mismatch_271, json_mapping_exception).
param(p_target_type_352, 1, m_report_input_mismatch_272).
param(p_msg_353, 2, m_report_input_mismatch_272).
param(p_msg_args_354, 3, m_report_input_mismatch_272).
throw(m_report_input_mismatch_272, json_mapping_exception).
param(p_target_type_355, 1, m_report_input_mismatch_273).
param(p_msg_356, 2, m_report_input_mismatch_273).
param(p_msg_args_357, 3, m_report_input_mismatch_273).
throw(m_report_input_mismatch_273, json_mapping_exception).
param(p_p_358, 1, m_report_wrong_token_exception_274).
param(p_exp_token_359, 2, m_report_wrong_token_exception_274).
param(p_msg_360, 3, m_report_wrong_token_exception_274).
param(p_msg_args_361, 4, m_report_wrong_token_exception_274).
throw(m_report_wrong_token_exception_274, json_mapping_exception).
param(p_instance_or_class_362, 1, m_report_unknown_property_275).
param(p_field_name_363, 2, m_report_unknown_property_275).
param(p_deser_364, 3, m_report_unknown_property_275).
throw(m_report_unknown_property_275, json_mapping_exception).
param(p_msg_365, 1, m_report_missing_content_276).
param(p_msg_args_366, 2, m_report_missing_content_276).
throw(m_report_missing_content_276, json_mapping_exception).
param(p_bean_367, 1, m_report_bad_type_definition_277).
param(p_msg_368, 2, m_report_bad_type_definition_277).
param(p_msg_args_369, 3, m_report_bad_type_definition_277).
throw(m_report_bad_type_definition_277, json_mapping_exception).
param(p_bean_370, 1, m_report_bad_property_definition_278).
param(p_prop_371, 2, m_report_bad_property_definition_278).
param(p_msg_372, 3, m_report_bad_property_definition_278).
param(p_msg_args_373, 4, m_report_bad_property_definition_278).
throw(m_report_bad_property_definition_278, json_mapping_exception).
param(p_type_374, 1, m_report_bad_definition_279).
param(p_msg_375, 2, m_report_bad_definition_279).
throw(m_report_bad_definition_279, json_mapping_exception).
param(p_deser_376, 1, m_report_bad_merge_280).
throw(m_report_bad_merge_280, json_mapping_exception).
param(p_p_377, 1, m_wrong_token_exception_281).
param(p_target_type_378, 2, m_wrong_token_exception_281).
param(p_exp_token_379, 3, m_wrong_token_exception_281).
param(p_extra_380, 4, m_wrong_token_exception_281).
param(p_p_381, 1, m_wrong_token_exception_282).
param(p_target_type_382, 2, m_wrong_token_exception_282).
param(p_exp_token_383, 3, m_wrong_token_exception_282).
param(p_extra_384, 4, m_wrong_token_exception_282).
param(p_p_385, 1, m_wrong_token_exception_283).
param(p_exp_token_386, 2, m_wrong_token_exception_283).
param(p_msg_387, 3, m_wrong_token_exception_283).
param(p_key_class_388, 1, m_weird_key_exception_284).
param(p_key_value_389, 2, m_weird_key_exception_284).
param(p_msg_390, 3, m_weird_key_exception_284).
param(p_value_391, 1, m_weird_string_exception_285).
param(p_inst_class_392, 2, m_weird_string_exception_285).
param(p_msg_393, 3, m_weird_string_exception_285).
param(p_value_394, 1, m_weird_number_exception_286).
param(p_inst_class_395, 2, m_weird_number_exception_286).
param(p_msg_396, 3, m_weird_number_exception_286).
param(p_inst_class_397, 1, m_instantiation_exception_287).
param(p_cause_398, 2, m_instantiation_exception_287).
param(p_inst_class_399, 1, m_instantiation_exception_288).
param(p_msg_0_400, 2, m_instantiation_exception_288).
param(p_base_type_401, 1, m_unknown_type_id_exception_289).
param(p_type_id_402, 2, m_unknown_type_id_exception_289).
param(p_extra_desc_403, 3, m_unknown_type_id_exception_289).
param(p_base_type_404, 1, m_missing_type_id_exception_290).
param(p_extra_desc_405, 2, m_missing_type_id_exception_290).
param(p_type_406, 1, m_unknown_type_exception_291).
param(p_id_407, 2, m_unknown_type_exception_291).
param(p_extra_desc_408, 3, m_unknown_type_exception_291).
param(p_inst_class_409, 1, m_end_of_input_exception_292).
param(p_msg_410, 1, m_report_mapping_exception_293).
param(p_msg_args_411, 2, m_report_mapping_exception_293).
throw(m_report_mapping_exception_293, json_mapping_exception).
param(p_message_412, 1, m_mapping_exception_294).
param(p_msg_413, 1, m_mapping_exception_295).
param(p_msg_args_414, 2, m_mapping_exception_295).
param(p_target_class_415, 1, m_mapping_exception_296).
param(p_target_class_416, 1, m_mapping_exception_297).
param(p_token_417, 2, m_mapping_exception_297).

%root_name_lookup_1 - com.fasterxml.jackson.databind.util.RootNameLookup
assign(f__root_names_3290, root_name_lookup_1_expr2, line(root_name_lookup_1, 22)).
method_invoc(root_name_lookup_1_expr2, m_lrumap_1333, line(root_name_lookup_1, 22)).
argument(root_name_lookup_1_literal1, 1, root_name_lookup_1_expr2).
argument(root_name_lookup_1_literal2, 2, root_name_lookup_1_expr2).
param(p_root_type_3291, 1, m_find_root_name_2081).
param(p_config_3292, 2, m_find_root_name_2081).
param(p_root_type_3293, 1, m_find_root_name_2082).
param(p_config_3294, 2, m_find_root_name_2082).

%deserialization_config_1 - com.fasterxml.jackson.databind.DeserializationConfig
param(p_base_157, 1, m_deserialization_config_157).
param(p_str_158, 2, m_deserialization_config_157).
param(p_mixins_159, 3, m_deserialization_config_157).
param(p_root_names_160, 4, m_deserialization_config_157).
param(p_config_overrides_161, 5, m_deserialization_config_157).
method_invoc(deserialization_config_1_expr1, m_mapper_config_base_158, line(deserialization_config_1, 103)).
argument(p_base_157, 1, deserialization_config_1_expr1).
argument(p_str_158, 2, deserialization_config_1_expr1).
argument(p_mixins_159, 3, deserialization_config_1_expr1).
argument(p_root_names_160, 4, deserialization_config_1_expr1).
argument(p_config_overrides_161, 5, deserialization_config_1_expr1).
assign(f__deser_features_162, deserialization_config_1_expr3, line(deserialization_config_1, 104)).
method_invoc(deserialization_config_1_expr3, m_collect_feature_defaults_159, line(deserialization_config_1, 104)).
argument(deserialization_config_1_expr4, 1, deserialization_config_1_expr3).
assign(f__node_factory_163, q_instance_1, line(deserialization_config_1, 105)).
ref(t_json_node_factory_4, q_instance_1, line(deserialization_config_1, 105)).
assign(f__problem_handlers_164, deserialization_config_1_literal1, line(deserialization_config_1, 106)).
assign(f__parser_features_165, deserialization_config_1_literal2, line(deserialization_config_1, 107)).
assign(f__parser_features_to_change_166, deserialization_config_1_literal3, line(deserialization_config_1, 108)).
assign(f__format_read_features_167, deserialization_config_1_literal4, line(deserialization_config_1, 109)).
assign(f__format_read_features_to_change_168, deserialization_config_1_literal5, line(deserialization_config_1, 110)).
param(p_src_169, 1, m_deserialization_config_160).
param(p_mixins_170, 2, m_deserialization_config_160).
param(p_root_names_171, 3, m_deserialization_config_160).
param(p_config_overrides_172, 4, m_deserialization_config_160).
param(p_src_173, 1, m_deserialization_config_161).
param(p_mapper_features_174, 2, m_deserialization_config_161).
param(p_deser_features_175, 3, m_deserialization_config_161).
param(p_parser_features_176, 4, m_deserialization_config_161).
param(p_parser_feature_mask_177, 5, m_deserialization_config_161).
param(p_format_features_178, 6, m_deserialization_config_161).
param(p_format_feature_mask_179, 7, m_deserialization_config_161).
param(p_src_180, 1, m_deserialization_config_162).
param(p_str_181, 2, m_deserialization_config_162).
param(p_src_182, 1, m_deserialization_config_163).
param(p_base_183, 2, m_deserialization_config_163).
param(p_src_184, 1, m_deserialization_config_164).
param(p_f_185, 2, m_deserialization_config_164).
param(p_src_186, 1, m_deserialization_config_165).
param(p_problem_handlers_187, 2, m_deserialization_config_165).
param(p_src_188, 1, m_deserialization_config_166).
param(p_root_name_189, 2, m_deserialization_config_166).
param(p_src_190, 1, m_deserialization_config_167).
param(p_view_191, 2, m_deserialization_config_167).
param(p_src_192, 1, m_deserialization_config_168).
param(p_attrs_193, 2, m_deserialization_config_168).
param(p_src_194, 1, m_deserialization_config_169).
param(p_mixins_195, 2, m_deserialization_config_169).
param(p_new_base_196, 1, m__with_base_171).
param(p_mapper_features_197, 1, m__with_mapper_features_172).
param(p_str_198, 1, m_with_173).
param(p_root_name_199, 1, m_with_root_name_174).
param(p_view_200, 1, m_with_view_175).
param(p_attrs_201, 1, m_with_176).
param(p_feature_202, 1, m_with_177).
param(p_first_203, 1, m_with_178).
param(p_features_204, 2, m_with_178).
param(p_features_205, 1, m_with_features_179).
param(p_feature_206, 1, m_without_180).
param(p_first_207, 1, m_without_181).
param(p_features_208, 2, m_without_181).
param(p_features_209, 1, m_without_features_182).
param(p_feature_210, 1, m_with_183).
param(p_features_211, 1, m_with_features_184).
param(p_feature_212, 1, m_without_185).
param(p_features_213, 1, m_without_features_186).
param(p_feature_214, 1, m_with_187).
param(p_features_215, 1, m_with_features_188).
param(p_feature_216, 1, m_without_189).
param(p_features_217, 1, m_without_features_190).
param(p_f_218, 1, m_with_191).
param(p_h_219, 1, m_with_handler_192).
param(p_p_220, 1, m_initialize_194).
param(p_f_221, 1, m_is_enabled_196).
param(p_f_222, 1, m_is_enabled_197).
param(p_factory_223, 2, m_is_enabled_197).
param(p_feature_mask_224, 1, m_has_deserialization_features_198).
param(p_feature_mask_225, 1, m_has_some_of_features_199).
param(p_type_226, 1, m_introspect_203).
param(p_type_227, 1, m_introspect_for_creation_204).
param(p_type_228, 1, m_introspect_for_builder_205).
param(p_base_type_229, 1, m_find_type_deserializer_206).
throw(m_find_type_deserializer_206, json_mapping_exception).

%java_type_1 - com.fasterxml.jackson.databind.JavaType
param(p_raw_449, 1, m_java_type_304).
param(p_additional_hash_450, 2, m_java_type_304).
param(p_value_handler_451, 3, m_java_type_304).
param(p_type_handler_452, 4, m_java_type_304).
param(p_as_static_453, 5, m_java_type_304).
assign(f__class_454, p_raw_449, line(java_type_1, 79)).
assign(f__hash_455, java_type_1_expr3, line(java_type_1, 80)).
method_invoc(java_type_1_expr4, m_hash_code_305, line(java_type_1, 80)).
ref(java_type_1_expr5, java_type_1_expr4, line(java_type_1, 80)).
method_invoc(java_type_1_expr5, m_get_name_306, line(java_type_1, 80)).
ref(p_raw_449, java_type_1_expr5, line(java_type_1, 80)).
assign(f__value_handler_456, p_value_handler_451, line(java_type_1, 81)).
assign(f__type_handler_457, p_type_handler_452, line(java_type_1, 82)).
assign(f__as_static_458, p_as_static_453, line(java_type_1, 83)).
param(p_base_459, 1, m_java_type_307).
param(p_h_460, 1, m_with_type_handler_308).
param(p_h_461, 1, m_with_content_type_handler_309).
param(p_h_462, 1, m_with_value_handler_310).
param(p_h_463, 1, m_with_content_value_handler_311).
param(p_src_464, 1, m_with_handlers_from_312).
param(p_content_type_465, 1, m_with_content_type_313).
param(p_raw_type_466, 1, m_refine_315).
param(p_bindings_467, 2, m_refine_315).
param(p_super_class_468, 3, m_refine_315).
param(p_super_interfaces_469, 4, m_refine_315).
param(p_subclass_470, 1, m_forced_narrow_by_316).
param(p_subclass_471, 1, m__narrow_317).
return(f__class_454, m_get_raw_class_318, line(java_type_1, 227)).
param(p_clz_472, 1, m_has_raw_class_319).
param(p_clz_473, 1, m_is_type_or_sub_type_of_321).
param(p_index_474, 1, m_contained_type_340).
param(p_index_475, 1, m_contained_type_name_341).
param(p_index_476, 1, m_contained_type_or_unknown_343).
param(p_erased_target_477, 1, m_find_super_type_345).
param(p_exp_type_478, 1, m_find_type_parameters_348).
return(java_type_1_expr9, m_has_handlers_354, line(java_type_1, 482)).
assign(java_type_1_expr10, java_type_1_expr11, line(java_type_1, 482)).
assign(java_type_1_expr12, java_type_1_expr13, line(java_type_1, 482)).
param(p_sb_479, 1, m_get_generic_signature_356).
param(p_sb_480, 1, m_get_erased_signature_358).
param(p_o_481, 1, m_equals_360).

%basic_class_introspector_1 - com.fasterxml.jackson.databind.introspect.BasicClassIntrospector
assign(f_string_desc_1910, basic_class_introspector_1_expr2, line(basic_class_introspector_1, 32)).
method_invoc(basic_class_introspector_1_expr2, m_for_other_use_1292, line(basic_class_introspector_1, 32)).
argument(basic_class_introspector_1_literal1, 1, basic_class_introspector_1_expr2).
argument(basic_class_introspector_1_expr3, 2, basic_class_introspector_1_expr2).
argument(basic_class_introspector_1_expr4, 3, basic_class_introspector_1_expr2).
ref(t_basic_bean_description_32, basic_class_introspector_1_expr2, line(basic_class_introspector_1, 32)).
method_invoc(basic_class_introspector_1_expr3, m_construct_unsafe_1332, line(basic_class_introspector_1, 32)).
argument(basic_class_introspector_1_expr5, 1, basic_class_introspector_1_expr3).
ref(t_simple_type_33, basic_class_introspector_1_expr3, line(basic_class_introspector_1, 32)).
assign(f_boolean_desc_1911, basic_class_introspector_1_expr7, line(basic_class_introspector_1, 37)).
method_invoc(basic_class_introspector_1_expr7, m_for_other_use_1292, line(basic_class_introspector_1, 37)).
argument(basic_class_introspector_1_literal2, 1, basic_class_introspector_1_expr7).
argument(basic_class_introspector_1_expr8, 2, basic_class_introspector_1_expr7).
argument(basic_class_introspector_1_expr9, 3, basic_class_introspector_1_expr7).
ref(t_basic_bean_description_32, basic_class_introspector_1_expr7, line(basic_class_introspector_1, 37)).
method_invoc(basic_class_introspector_1_expr8, m_construct_unsafe_1332, line(basic_class_introspector_1, 37)).
argument(q_type_9, 1, basic_class_introspector_1_expr8).
ref(t_simple_type_33, basic_class_introspector_1_expr8, line(basic_class_introspector_1, 37)).
ref(t_boolean_34, q_type_9, line(basic_class_introspector_1, 37)).
assign(f_int_desc_1912, basic_class_introspector_1_expr11, line(basic_class_introspector_1, 42)).
method_invoc(basic_class_introspector_1_expr11, m_for_other_use_1292, line(basic_class_introspector_1, 42)).
argument(basic_class_introspector_1_literal3, 1, basic_class_introspector_1_expr11).
argument(basic_class_introspector_1_expr12, 2, basic_class_introspector_1_expr11).
argument(basic_class_introspector_1_expr13, 3, basic_class_introspector_1_expr11).
ref(t_basic_bean_description_32, basic_class_introspector_1_expr11, line(basic_class_introspector_1, 42)).
method_invoc(basic_class_introspector_1_expr12, m_construct_unsafe_1332, line(basic_class_introspector_1, 42)).
argument(q_type_10, 1, basic_class_introspector_1_expr12).
ref(t_simple_type_33, basic_class_introspector_1_expr12, line(basic_class_introspector_1, 42)).
ref(t_integer_35, q_type_10, line(basic_class_introspector_1, 42)).
assign(f_long_desc_1913, basic_class_introspector_1_expr15, line(basic_class_introspector_1, 47)).
method_invoc(basic_class_introspector_1_expr15, m_for_other_use_1292, line(basic_class_introspector_1, 47)).
argument(basic_class_introspector_1_literal4, 1, basic_class_introspector_1_expr15).
argument(basic_class_introspector_1_expr16, 2, basic_class_introspector_1_expr15).
argument(basic_class_introspector_1_expr17, 3, basic_class_introspector_1_expr15).
ref(t_basic_bean_description_32, basic_class_introspector_1_expr15, line(basic_class_introspector_1, 47)).
method_invoc(basic_class_introspector_1_expr16, m_construct_unsafe_1332, line(basic_class_introspector_1, 47)).
argument(q_type_11, 1, basic_class_introspector_1_expr16).
ref(t_simple_type_33, basic_class_introspector_1_expr16, line(basic_class_introspector_1, 47)).
ref(t_long_36, q_type_11, line(basic_class_introspector_1, 47)).
assign(f__cached_fca_1914, basic_class_introspector_1_expr19, line(basic_class_introspector_1, 67)).
method_invoc(basic_class_introspector_1_expr19, m_lrumap_1333, line(basic_class_introspector_1, 67)).
argument(basic_class_introspector_1_literal5, 1, basic_class_introspector_1_expr19).
argument(basic_class_introspector_1_literal6, 2, basic_class_introspector_1_expr19).
param(p_cfg_1915, 1, m_for_serialization_1334).
param(p_type_1916, 2, m_for_serialization_1334).
param(p_r_1917, 3, m_for_serialization_1334).
param(p_cfg_1918, 1, m_for_deserialization_1335).
param(p_type_1919, 2, m_for_deserialization_1335).
param(p_r_1920, 3, m_for_deserialization_1335).
param(p_cfg_1921, 1, m_for_deserialization_with_builder_1336).
param(p_type_1922, 2, m_for_deserialization_with_builder_1336).
param(p_r_1923, 3, m_for_deserialization_with_builder_1336).
param(p_cfg_1924, 1, m_for_creation_1337).
param(p_type_1925, 2, m_for_creation_1337).
param(p_r_1926, 3, m_for_creation_1337).
param(p_config_1927, 1, m_for_class_annotations_1338).
param(p_type_1928, 2, m_for_class_annotations_1338).
param(p_r_1929, 3, m_for_class_annotations_1338).
param(p_config_1930, 1, m_for_direct_class_annotations_1339).
param(p_type_1931, 2, m_for_direct_class_annotations_1339).
param(p_r_1932, 3, m_for_direct_class_annotations_1339).
param(p_config_1933, 1, m_collect_properties_1340).
param(p_type_1934, 2, m_collect_properties_1340).
param(p_r_1935, 3, m_collect_properties_1340).
param(p_for_serialization_1936, 4, m_collect_properties_1340).
param(p_mutator_prefix_1937, 5, m_collect_properties_1340).
param(p_config_1938, 1, m_collect_properties_with_builder_1341).
param(p_type_1939, 2, m_collect_properties_with_builder_1341).
param(p_r_1940, 3, m_collect_properties_with_builder_1341).
param(p_for_serialization_1941, 4, m_collect_properties_with_builder_1341).
param(p_config_1942, 1, m_construct_property_collector_1342).
param(p_ac_1943, 2, m_construct_property_collector_1342).
param(p_type_1944, 3, m_construct_property_collector_1342).
param(p_for_serialization_1945, 4, m_construct_property_collector_1342).
param(p_mutator_prefix_1946, 5, m_construct_property_collector_1342).
param(p_type_1947, 1, m__find_std_type_desc_1343).
param(p_type_1948, 1, m__is_std_jdkcollection_1344).
param(p_cfg_1949, 1, m__find_std_jdk_collection_desc_1345).
param(p_type_1950, 2, m__find_std_jdk_collection_desc_1345).
param(p_config_1951, 1, m__resolve_annotated_class_1346).
param(p_type_1952, 2, m__resolve_annotated_class_1346).
param(p_r_1953, 3, m__resolve_annotated_class_1346).
param(p_config_1954, 1, m__resolve_annotated_without_super_types_1347).
param(p_type_1955, 2, m__resolve_annotated_without_super_types_1347).
param(p_r_1956, 3, m__resolve_annotated_without_super_types_1347).

%basic_bean_description_1 - com.fasterxml.jackson.databind.introspect.BasicBeanDescription
assign(f_no_views_1874, basic_bean_description_1_expr1, line(basic_bean_description_1, 31)).
param(p_coll_1875, 1, m_basic_bean_description_1287).
param(p_type_1876, 2, m_basic_bean_description_1287).
param(p_class_def_1877, 3, m_basic_bean_description_1287).
param(p_config_1878, 1, m_basic_bean_description_1288).
param(p_type_1879, 2, m_basic_bean_description_1288).
param(p_class_def_1880, 3, m_basic_bean_description_1288).
param(p_props_1881, 4, m_basic_bean_description_1288).
method_invoc(basic_bean_description_1_expr2, m_bean_description_97, line(basic_bean_description_1, 115)).
argument(p_type_1879, 1, basic_bean_description_1_expr2).
assign(f__prop_collector_1882, basic_bean_description_1_literal2, line(basic_bean_description_1, 116)).
assign(f__config_1883, p_config_1878, line(basic_bean_description_1, 117)).
assign(f__annotation_introspector_1884, basic_bean_description_1_literal4, line(basic_bean_description_1, 120)).
assign(f__class_info_1885, p_class_def_1880, line(basic_bean_description_1, 124)).
assign(f__properties_1886, p_props_1881, line(basic_bean_description_1, 125)).
param(p_coll_1887, 1, m_basic_bean_description_1289).
param(p_coll_1888, 1, m_for_deserialization_1290).
param(p_coll_1889, 1, m_for_serialization_1291).
param(p_config_1890, 1, m_for_other_use_1292).
param(p_type_1891, 2, m_for_other_use_1292).
param(p_ac_1892, 3, m_for_other_use_1292).
return(basic_bean_description_1_expr9, m_for_other_use_1292, line(basic_bean_description_1, 158)).
method_invoc(basic_bean_description_1_expr9, m_basic_bean_description_1288, line(basic_bean_description_1, 158)).
argument(p_config_1890, 1, basic_bean_description_1_expr9).
argument(p_type_1891, 2, basic_bean_description_1_expr9).
argument(p_ac_1892, 3, basic_bean_description_1_expr9).
argument(basic_bean_description_1_expr10, 4, basic_bean_description_1_expr9).
param(p_prop_name_1893, 1, m_remove_property_1294).
param(p_def_1894, 1, m_add_property_1295).
param(p_name_1895, 1, m_has_property_1296).
param(p_name_1896, 1, m_find_property_1297).
param(p_jdk_type_1897, 1, m_resolve_type_1307).
throw(m_find_any_setter_accessor_1309, illegal_argument_exception).
param(p_fix_access_1898, 1, m_instantiate_bean_1312).
param(p_name_1899, 1, m_find_method_1313).
param(p_param_types_1900, 2, m_find_method_1313).
param(p_def_value_1901, 1, m_find_expected_format_1314).
param(p_def_value_1902, 1, m_find_property_inclusion_1317).
throw(m_find_any_getter_1318, illegal_argument_exception).
param(p_arg_types_1903, 1, m_find_single_arg_constructor_1322).
param(p_exp_arg_types_1904, 1, m_find_factory_method_1323).
param(p_am_1905, 1, m_is_factory_method_1324).
param(p_param_1906, 1, m__find_creator_property_name_1325).
param(p_ignored_properties_1907, 1, m__find_property_fields_1330).
param(p_for_serialization_1908, 2, m__find_property_fields_1330).
param(p_converter_def_1909, 1, m__create_converter_1331).

%serializer_factory_1 - com.fasterxml.jackson.databind.ser.SerializerFactory
param(p_additional_2536, 1, m_with_additional_serializers_1689).
param(p_additional_2537, 1, m_with_additional_key_serializers_1690).
param(p_modifier_2538, 1, m_with_serializer_modifier_1691).
param(p_prov_2539, 1, m_create_serializer_1692).
param(p_base_type_2540, 2, m_create_serializer_1692).
throw(m_create_serializer_1692, json_mapping_exception).
param(p_config_2541, 1, m_create_type_serializer_1693).
param(p_base_type_2542, 2, m_create_type_serializer_1693).
throw(m_create_type_serializer_1693, json_mapping_exception).
param(p_config_2543, 1, m_create_key_serializer_1694).
param(p_type_2544, 2, m_create_key_serializer_1694).
param(p_default_impl_2545, 3, m_create_key_serializer_1694).
throw(m_create_key_serializer_1694, json_mapping_exception).

%mapper_feature_1 - com.fasterxml.jackson.databind.MapperFeature
param(p_default_state_522, 1, m_mapper_feature_375).
assign(f__default_state_523, p_default_state_522, line(mapper_feature_1, 485)).
assign(f__mask_524, mapper_feature_1_expr3, line(mapper_feature_1, 486)).
assign(mapper_feature_1_expr3, mapper_feature_1_expr4, line(mapper_feature_1, 486)).
method_invoc(mapper_feature_1_expr5, m_ordinal_300, line(mapper_feature_1, 486)).
return(f__default_state_523, m_enabled_by_default_376, line(mapper_feature_1, 490)).
return(f__mask_524, m_get_mask_377, line(mapper_feature_1, 493)).
param(p_flags_525, 1, m_enabled_in_378).

%uuidserializer_1 - com.fasterxml.jackson.databind.ser.std.UUIDSerializer
assign(f_hex_chars_2852, uuidserializer_1_expr1, line(uuidserializer_1, 21)).
method_invoc(uuidserializer_1_expr1, m_to_char_array_1823, line(uuidserializer_1, 21)).
ref(uuidserializer_1_literal1, uuidserializer_1_expr1, line(uuidserializer_1, 21)).
method_invoc(uuidserializer_1_expr2, m_std_scalar_serializer_1729, line(uuidserializer_1, 23)).
argument(uuidserializer_1_expr3, 1, uuidserializer_1_expr2).
param(p_prov_2853, 1, m_is_empty_1824).
param(p_value_2854, 2, m_is_empty_1824).
param(p_value_2855, 1, m_serialize_1825).
param(p_gen_2856, 2, m_serialize_1825).
param(p_provider_2857, 3, m_serialize_1825).
throw(m_serialize_1825, ioexception).
param(p_bits_2858, 1, m__append_int_1826).
param(p_ch_2859, 2, m__append_int_1826).
param(p_offset_2860, 3, m__append_int_1826).
param(p_bits_2861, 1, m__append_short_1827).
param(p_ch_2862, 2, m__append_short_1827).
param(p_offset_2863, 3, m__append_short_1827).
param(p_uuid_2864, 1, m__as_bytes_1828).
param(p_value_2865, 1, m__append_int_1829).
param(p_buffer_2866, 2, m__append_int_1829).
param(p_offset_2867, 3, m__append_int_1829).

%std_date_format_1 - com.fasterxml.jackson.databind.util.StdDateFormat
assign(f_all_formats_3295, std_date_format_1_expr1, line(std_date_format_1, 56)).
assign(f_default_timezone_3296, std_date_format_1_expr4, line(std_date_format_1, 69)).
method_invoc(std_date_format_1_expr4, m_get_time_zone_2084, line(std_date_format_1, 69)).
argument(std_date_format_1_literal1, 1, std_date_format_1_expr4).
ref(t_time_zone_56, std_date_format_1_expr4, line(std_date_format_1, 69)).
assign(f_default_locale_3297, q_us_35, line(std_date_format_1, 72)).
ref(t_locale_57, q_us_35, line(std_date_format_1, 72)).
assign(f_date_format_rfc1123_3298, std_date_format_1_expr6, line(std_date_format_1, 90)).
method_invoc(std_date_format_1_expr6, m_simple_date_format_2085, line(std_date_format_1, 90)).
argument(f_date_format_str_rfc1123_3299, 1, std_date_format_1_expr6).
argument(f_default_locale_3297, 2, std_date_format_1_expr6).
method_invoc(std_date_format_1_expr7, m_set_time_zone_2086, line(std_date_format_1, 91)).
argument(f_default_timezone_3296, 1, std_date_format_1_expr7).
ref(f_date_format_rfc1123_3298, std_date_format_1_expr7, line(std_date_format_1, 91)).
assign(f_date_format_iso8601_3300, std_date_format_1_expr9, line(std_date_format_1, 92)).
method_invoc(std_date_format_1_expr9, m_simple_date_format_2085, line(std_date_format_1, 92)).
argument(f_date_format_str_iso8601_3301, 1, std_date_format_1_expr9).
argument(f_default_locale_3297, 2, std_date_format_1_expr9).
method_invoc(std_date_format_1_expr10, m_set_time_zone_2086, line(std_date_format_1, 93)).
argument(f_default_timezone_3296, 1, std_date_format_1_expr10).
ref(f_date_format_iso8601_3300, std_date_format_1_expr10, line(std_date_format_1, 93)).
assign(f_date_format_iso8601_z_3302, std_date_format_1_expr12, line(std_date_format_1, 94)).
method_invoc(std_date_format_1_expr12, m_simple_date_format_2085, line(std_date_format_1, 94)).
argument(f_date_format_str_iso8601_z_3303, 1, std_date_format_1_expr12).
argument(f_default_locale_3297, 2, std_date_format_1_expr12).
method_invoc(std_date_format_1_expr13, m_set_time_zone_2086, line(std_date_format_1, 95)).
argument(f_default_timezone_3296, 1, std_date_format_1_expr13).
ref(f_date_format_iso8601_z_3302, std_date_format_1_expr13, line(std_date_format_1, 95)).
assign(f_date_format_plain_3304, std_date_format_1_expr15, line(std_date_format_1, 96)).
method_invoc(std_date_format_1_expr15, m_simple_date_format_2085, line(std_date_format_1, 96)).
argument(f_date_format_str_plain_3305, 1, std_date_format_1_expr15).
argument(f_default_locale_3297, 2, std_date_format_1_expr15).
method_invoc(std_date_format_1_expr16, m_set_time_zone_2086, line(std_date_format_1, 97)).
argument(f_default_timezone_3296, 1, std_date_format_1_expr16).
ref(f_date_format_plain_3304, std_date_format_1_expr16, line(std_date_format_1, 97)).
assign(f_instance_3306, std_date_format_1_expr17, line(std_date_format_1, 103)).
method_invoc(std_date_format_1_expr17, m_std_date_format_2087, line(std_date_format_1, 103)).
assign(f__locale_3307, f_default_locale_3297, line(std_date_format_1, 135)).
param(p_tz_3308, 1, m_std_date_format_2088).
param(p_loc_3309, 2, m_std_date_format_2088).
param(p_tz_3310, 1, m_std_date_format_2089).
param(p_loc_3311, 2, m_std_date_format_2089).
param(p_lenient_3312, 3, m_std_date_format_2089).
param(p_tz_3313, 1, m_with_time_zone_2091).
param(p_loc_3314, 1, m_with_locale_2092).
param(p_b_3315, 1, m_with_lenient_2093).
param(p_tz_3316, 1, m_get_iso8601format_2095).
param(p_tz_3317, 1, m_get_iso8601format_2096).
param(p_loc_3318, 2, m_get_iso8601format_2096).
param(p_tz_3319, 1, m_get_rfc1123format_2097).
param(p_loc_3320, 2, m_get_rfc1123format_2097).
param(p_tz_3321, 1, m_set_time_zone_2099).
param(p_enabled_3322, 1, m_set_lenient_2100).
param(p_date_str_3323, 1, m_parse_2102).
throw(m_parse_2102, parse_exception).
param(p_date_str_3324, 1, m_parse_2103).
param(p_pos_3325, 2, m_parse_2103).
param(p_date_3326, 1, m_format_2104).
param(p_to_append_to_3327, 2, m_format_2104).
param(p_field_position_3328, 3, m_format_2104).
param(p_o_3329, 1, m_equals_2107).
param(p_value_1_3330, 1, m__equals_2109).
param(p_value_2_3331, 2, m__equals_2109).
param(p_date_str_3332, 1, m_looks_like_iso8601_2110).
param(p_date_str_3333, 1, m_parse_as_iso8601_2111).
param(p_pos_3334, 2, m_parse_as_iso8601_2111).
param(p_throw_errors_3335, 3, m_parse_as_iso8601_2111).
throw(m_parse_as_iso8601_2111, parse_exception).
param(p_date_str_3336, 1, m_parse_as_rfc1123_2112).
param(p_pos_3337, 2, m_parse_as_rfc1123_2112).
param(p_str_3338, 1, m_has_time_zone_2113).
param(p_df_3339, 1, m__clone_format_2114).
param(p_format_3340, 2, m__clone_format_2114).
param(p_tz_3341, 3, m__clone_format_2114).
param(p_loc_3342, 4, m__clone_format_2114).
param(p_lenient_3343, 5, m__clone_format_2114).

%deserializer_cache_1 - com.fasterxml.jackson.databind.deser.DeserializerCache
assign(f__cached_deserializers_1615, deserializer_cache_1_expr1, line(deserializer_cache_1, 42)).
assign(f__incomplete_deserializers_1616, deserializer_cache_1_expr2, line(deserializer_cache_1, 50)).
param(p_ctxt_1617, 1, m_find_value_deserializer_1107).
param(p_factory_1618, 2, m_find_value_deserializer_1107).
param(p_property_type_1619, 3, m_find_value_deserializer_1107).
throw(m_find_value_deserializer_1107, json_mapping_exception).
param(p_ctxt_1620, 1, m_find_key_deserializer_1108).
param(p_factory_1621, 2, m_find_key_deserializer_1108).
param(p_type_1622, 3, m_find_key_deserializer_1108).
throw(m_find_key_deserializer_1108, json_mapping_exception).
param(p_ctxt_1623, 1, m_has_value_deserializer_for_1109).
param(p_factory_1624, 2, m_has_value_deserializer_for_1109).
param(p_type_1625, 3, m_has_value_deserializer_for_1109).
throw(m_has_value_deserializer_for_1109, json_mapping_exception).
param(p_type_1626, 1, m__find_cached_deserializer_1110).
param(p_ctxt_1627, 1, m__create_and_cache_value_deserializer_1111).
param(p_factory_1628, 2, m__create_and_cache_value_deserializer_1111).
param(p_type_1629, 3, m__create_and_cache_value_deserializer_1111).
throw(m__create_and_cache_value_deserializer_1111, json_mapping_exception).
param(p_ctxt_1630, 1, m__create_and_cache2_1112).
param(p_factory_1631, 2, m__create_and_cache2_1112).
param(p_type_1632, 3, m__create_and_cache2_1112).
throw(m__create_and_cache2_1112, json_mapping_exception).
param(p_ctxt_1633, 1, m__create_deserializer_1113).
param(p_factory_1634, 2, m__create_deserializer_1113).
param(p_type_1635, 3, m__create_deserializer_1113).
throw(m__create_deserializer_1113, json_mapping_exception).
param(p_ctxt_1636, 1, m__create_deserializer2_1114).
param(p_factory_1637, 2, m__create_deserializer2_1114).
param(p_type_1638, 3, m__create_deserializer2_1114).
param(p_bean_desc_1639, 4, m__create_deserializer2_1114).
throw(m__create_deserializer2_1114, json_mapping_exception).
param(p_ctxt_1640, 1, m_find_deserializer_from_annotation_1115).
param(p_ann_1641, 2, m_find_deserializer_from_annotation_1115).
throw(m_find_deserializer_from_annotation_1115, json_mapping_exception).
param(p_ctxt_1642, 1, m_find_converting_deserializer_1116).
param(p_a_1643, 2, m_find_converting_deserializer_1116).
param(p_deser_1644, 3, m_find_converting_deserializer_1116).
throw(m_find_converting_deserializer_1116, json_mapping_exception).
param(p_ctxt_1645, 1, m_find_converter_1117).
param(p_a_1646, 2, m_find_converter_1117).
throw(m_find_converter_1117, json_mapping_exception).
param(p_ctxt_1647, 1, m_modify_type_by_annotation_1118).
param(p_a_1648, 2, m_modify_type_by_annotation_1118).
param(p_type_1649, 3, m_modify_type_by_annotation_1118).
throw(m_modify_type_by_annotation_1118, json_mapping_exception).
param(p_t_1650, 1, m__has_custom_value_handler_1119).
param(p_src_1651, 1, m__verify_as_class_1120).
param(p_method_name_1652, 2, m__verify_as_class_1120).
param(p_none_class_1653, 3, m__verify_as_class_1120).
param(p_ctxt_1654, 1, m__handle_unknown_value_deserializer_1121).
param(p_type_1655, 2, m__handle_unknown_value_deserializer_1121).
throw(m__handle_unknown_value_deserializer_1121, json_mapping_exception).
param(p_ctxt_1656, 1, m__handle_unknown_key_deserializer_1122).
param(p_type_1657, 2, m__handle_unknown_key_deserializer_1122).
throw(m__handle_unknown_key_deserializer_1122, json_mapping_exception).

%java7_support_1 - com.fasterxml.jackson.databind.ext.Java7Support
assign(v_impl_1714, java7_support_1_literal1, line(java7_support_1, 22)).
assign(v_cls_1715, java7_support_1_expr1, line(java7_support_1, 24)).
method_invoc(java7_support_1_expr1, m_for_name_1147, line(java7_support_1, 24)).
throw(java7_support_1_expr1, class_not_found_exception, line(java7_support_1, 24)).
argument(java7_support_1_literal2, 1, java7_support_1_expr1).
ref(t_class_28, java7_support_1_expr1, line(java7_support_1, 24)).
assign(v_impl_1714, java7_support_1_expr3, line(java7_support_1, 25)).
assign(java7_support_1_expr3, java7_support_1_expr4, line(java7_support_1, 25)).
method_invoc(java7_support_1_expr4, m_create_instance_1148, line(java7_support_1, 25)).
throw(java7_support_1_expr4, illegal_argument_exception, line(java7_support_1, 25)).
argument(v_cls_1715, 1, java7_support_1_expr4).
argument(java7_support_1_literal3, 2, java7_support_1_expr4).
ref(t_class_util_12, java7_support_1_expr4, line(java7_support_1, 25)).
assign(f_impl_1716, v_impl_1714, line(java7_support_1, 31)).
return(f_impl_1716, m_instance_1149, line(java7_support_1, 35)).
param(p_a_1717, 1, m_find_transient_1150).
param(p_a_1718, 1, m_has_creator_annotation_1151).
param(p_p_1719, 1, m_find_constructor_name_1152).
param(p_raw_type_1720, 1, m_get_deserializer_for_java_nio_file_path_1154).
param(p_raw_type_1721, 1, m_get_serializer_for_java_nio_file_path_1155).

%calendar_serializer_1 - com.fasterxml.jackson.databind.ser.std.CalendarSerializer
assign(f_instance_2598, calendar_serializer_1_expr1, line(calendar_serializer_1, 21)).
method_invoc(calendar_serializer_1_expr1, m_calendar_serializer_1718, line(calendar_serializer_1, 21)).
method_invoc(calendar_serializer_1_expr2, m_calendar_serializer_1719, line(calendar_serializer_1, 23)).
argument(calendar_serializer_1_literal1, 1, calendar_serializer_1_expr2).
argument(calendar_serializer_1_literal2, 2, calendar_serializer_1_expr2).
param(p_use_timestamp_2599, 1, m_calendar_serializer_1719).
param(p_custom_format_2600, 2, m_calendar_serializer_1719).
method_invoc(calendar_serializer_1_expr3, m_date_time_serializer_base_1720, line(calendar_serializer_1, 26)).
argument(calendar_serializer_1_expr4, 1, calendar_serializer_1_expr3).
argument(p_use_timestamp_2599, 2, calendar_serializer_1_expr3).
argument(p_custom_format_2600, 3, calendar_serializer_1_expr3).
param(p_timestamp_2601, 1, m_with_format_1721).
param(p_custom_format_2602, 2, m_with_format_1721).
param(p_value_2603, 1, m__timestamp_1722).
param(p_value_2604, 1, m_serialize_1723).
param(p_jgen_2605, 2, m_serialize_1723).
param(p_provider_2606, 3, m_serialize_1723).
throw(m_serialize_1723, ioexception).

%date_time_serializer_base_1 - com.fasterxml.jackson.databind.ser.std.DateTimeSerializerBase
param(p_type_2616, 1, m_date_time_serializer_base_1720).
param(p_use_timestamp_2617, 2, m_date_time_serializer_base_1720).
param(p_custom_format_2618, 3, m_date_time_serializer_base_1720).
method_invoc(date_time_serializer_base_1_expr1, m_std_scalar_serializer_1729, line(date_time_serializer_base_1, 41)).
argument(p_type_2616, 1, date_time_serializer_base_1_expr1).
assign(f__use_timestamp_2619, p_use_timestamp_2617, line(date_time_serializer_base_1, 42)).
assign(f__custom_format_2620, p_custom_format_2618, line(date_time_serializer_base_1, 43)).
param(p_timestamp_2621, 1, m_with_format_1730).
param(p_custom_format_2622, 2, m_with_format_1730).
param(p_serializers_2623, 1, m_create_contextual_1731).
param(p_property_2624, 2, m_create_contextual_1731).
throw(m_create_contextual_1731, json_mapping_exception).
param(p_serializers_2625, 1, m_is_empty_1732).
param(p_value_2626, 2, m_is_empty_1732).
param(p_value_2627, 1, m__timestamp_1733).
param(p_serializers_2628, 1, m_get_schema_1734).
param(p_type_hint_2629, 2, m_get_schema_1734).
param(p_visitor_2630, 1, m_accept_json_format_visitor_1735).
param(p_type_hint_2631, 2, m_accept_json_format_visitor_1735).
throw(m_accept_json_format_visitor_1735, json_mapping_exception).
param(p_value_2632, 1, m_serialize_1736).
param(p_gen_2633, 2, m_serialize_1736).
param(p_serializers_2634, 3, m_serialize_1736).
throw(m_serialize_1736, ioexception).
param(p_serializers_2635, 1, m__as_timestamp_1737).
param(p_visitor_2636, 1, m__accept_json_format_visitor_1738).
param(p_type_hint_2637, 2, m__accept_json_format_visitor_1738).
param(p_as_number_2638, 3, m__accept_json_format_visitor_1738).
throw(m__accept_json_format_visitor_1738, json_mapping_exception).

%basic_deserializer_factory_1 - com.fasterxml.jackson.databind.deser.BasicDeserializerFactory
assign(f_class_object_1320, basic_deserializer_factory_1_expr1, line(basic_deserializer_factory_1, 39)).
assign(f_class_string_1321, basic_deserializer_factory_1_expr2, line(basic_deserializer_factory_1, 40)).
assign(f_class_char_buffer_1322, basic_deserializer_factory_1_expr3, line(basic_deserializer_factory_1, 41)).
assign(f_class_iterable_1323, basic_deserializer_factory_1_expr4, line(basic_deserializer_factory_1, 42)).
assign(f_class_map_entry_1324, basic_deserializer_factory_1_expr5, line(basic_deserializer_factory_1, 43)).
assign(f_unwrapped_creator_param_name_1325, basic_deserializer_factory_1_expr6, line(basic_deserializer_factory_1, 49)).
method_invoc(basic_deserializer_factory_1_expr6, m_property_name_654, line(basic_deserializer_factory_1, 49)).
argument(basic_deserializer_factory_1_literal1, 1, basic_deserializer_factory_1_expr6).
assign(f__map_fallbacks_1326, basic_deserializer_factory_1_expr7, line(basic_deserializer_factory_1, 56)).
method_invoc(basic_deserializer_factory_1_expr8, m_put_997, line(basic_deserializer_factory_1, 59)).
argument(basic_deserializer_factory_1_expr9, 1, basic_deserializer_factory_1_expr8).
argument(basic_deserializer_factory_1_expr10, 2, basic_deserializer_factory_1_expr8).
ref(f__map_fallbacks_1326, basic_deserializer_factory_1_expr8, line(basic_deserializer_factory_1, 59)).
method_invoc(basic_deserializer_factory_1_expr9, m_get_name_306, line(basic_deserializer_factory_1, 59)).
ref(basic_deserializer_factory_1_expr11, basic_deserializer_factory_1_expr9, line(basic_deserializer_factory_1, 59)).
method_invoc(basic_deserializer_factory_1_expr12, m_put_997, line(basic_deserializer_factory_1, 60)).
argument(basic_deserializer_factory_1_expr13, 1, basic_deserializer_factory_1_expr12).
argument(basic_deserializer_factory_1_expr14, 2, basic_deserializer_factory_1_expr12).
ref(f__map_fallbacks_1326, basic_deserializer_factory_1_expr12, line(basic_deserializer_factory_1, 60)).
method_invoc(basic_deserializer_factory_1_expr13, m_get_name_306, line(basic_deserializer_factory_1, 60)).
ref(basic_deserializer_factory_1_expr15, basic_deserializer_factory_1_expr13, line(basic_deserializer_factory_1, 60)).
method_invoc(basic_deserializer_factory_1_expr16, m_put_997, line(basic_deserializer_factory_1, 61)).
argument(basic_deserializer_factory_1_expr17, 1, basic_deserializer_factory_1_expr16).
argument(basic_deserializer_factory_1_expr18, 2, basic_deserializer_factory_1_expr16).
ref(f__map_fallbacks_1326, basic_deserializer_factory_1_expr16, line(basic_deserializer_factory_1, 61)).
method_invoc(basic_deserializer_factory_1_expr17, m_get_name_306, line(basic_deserializer_factory_1, 61)).
ref(basic_deserializer_factory_1_expr19, basic_deserializer_factory_1_expr17, line(basic_deserializer_factory_1, 61)).
method_invoc(basic_deserializer_factory_1_expr20, m_put_997, line(basic_deserializer_factory_1, 63)).
argument(basic_deserializer_factory_1_expr21, 1, basic_deserializer_factory_1_expr20).
argument(basic_deserializer_factory_1_expr22, 2, basic_deserializer_factory_1_expr20).
ref(f__map_fallbacks_1326, basic_deserializer_factory_1_expr20, line(basic_deserializer_factory_1, 63)).
method_invoc(basic_deserializer_factory_1_expr21, m_get_name_306, line(basic_deserializer_factory_1, 63)).
ref(basic_deserializer_factory_1_expr23, basic_deserializer_factory_1_expr21, line(basic_deserializer_factory_1, 63)).
method_invoc(basic_deserializer_factory_1_expr24, m_put_997, line(basic_deserializer_factory_1, 64)).
argument(basic_deserializer_factory_1_expr25, 1, basic_deserializer_factory_1_expr24).
argument(basic_deserializer_factory_1_expr26, 2, basic_deserializer_factory_1_expr24).
ref(f__map_fallbacks_1326, basic_deserializer_factory_1_expr24, line(basic_deserializer_factory_1, 64)).
method_invoc(basic_deserializer_factory_1_expr25, m_get_name_306, line(basic_deserializer_factory_1, 64)).
ref(basic_deserializer_factory_1_expr27, basic_deserializer_factory_1_expr25, line(basic_deserializer_factory_1, 64)).
assign(f__collection_fallbacks_1327, basic_deserializer_factory_1_expr28, line(basic_deserializer_factory_1, 73)).
method_invoc(basic_deserializer_factory_1_expr29, m_put_997, line(basic_deserializer_factory_1, 76)).
argument(basic_deserializer_factory_1_expr30, 1, basic_deserializer_factory_1_expr29).
argument(basic_deserializer_factory_1_expr31, 2, basic_deserializer_factory_1_expr29).
ref(f__collection_fallbacks_1327, basic_deserializer_factory_1_expr29, line(basic_deserializer_factory_1, 76)).
method_invoc(basic_deserializer_factory_1_expr30, m_get_name_306, line(basic_deserializer_factory_1, 76)).
ref(basic_deserializer_factory_1_expr32, basic_deserializer_factory_1_expr30, line(basic_deserializer_factory_1, 76)).
method_invoc(basic_deserializer_factory_1_expr33, m_put_997, line(basic_deserializer_factory_1, 77)).
argument(basic_deserializer_factory_1_expr34, 1, basic_deserializer_factory_1_expr33).
argument(basic_deserializer_factory_1_expr35, 2, basic_deserializer_factory_1_expr33).
ref(f__collection_fallbacks_1327, basic_deserializer_factory_1_expr33, line(basic_deserializer_factory_1, 77)).
method_invoc(basic_deserializer_factory_1_expr34, m_get_name_306, line(basic_deserializer_factory_1, 77)).
ref(basic_deserializer_factory_1_expr36, basic_deserializer_factory_1_expr34, line(basic_deserializer_factory_1, 77)).
method_invoc(basic_deserializer_factory_1_expr37, m_put_997, line(basic_deserializer_factory_1, 78)).
argument(basic_deserializer_factory_1_expr38, 1, basic_deserializer_factory_1_expr37).
argument(basic_deserializer_factory_1_expr39, 2, basic_deserializer_factory_1_expr37).
ref(f__collection_fallbacks_1327, basic_deserializer_factory_1_expr37, line(basic_deserializer_factory_1, 78)).
method_invoc(basic_deserializer_factory_1_expr38, m_get_name_306, line(basic_deserializer_factory_1, 78)).
ref(basic_deserializer_factory_1_expr40, basic_deserializer_factory_1_expr38, line(basic_deserializer_factory_1, 78)).
method_invoc(basic_deserializer_factory_1_expr41, m_put_997, line(basic_deserializer_factory_1, 79)).
argument(basic_deserializer_factory_1_expr42, 1, basic_deserializer_factory_1_expr41).
argument(basic_deserializer_factory_1_expr43, 2, basic_deserializer_factory_1_expr41).
ref(f__collection_fallbacks_1327, basic_deserializer_factory_1_expr41, line(basic_deserializer_factory_1, 79)).
method_invoc(basic_deserializer_factory_1_expr42, m_get_name_306, line(basic_deserializer_factory_1, 79)).
ref(basic_deserializer_factory_1_expr44, basic_deserializer_factory_1_expr42, line(basic_deserializer_factory_1, 79)).
method_invoc(basic_deserializer_factory_1_expr45, m_put_997, line(basic_deserializer_factory_1, 80)).
argument(basic_deserializer_factory_1_expr46, 1, basic_deserializer_factory_1_expr45).
argument(basic_deserializer_factory_1_expr47, 2, basic_deserializer_factory_1_expr45).
ref(f__collection_fallbacks_1327, basic_deserializer_factory_1_expr45, line(basic_deserializer_factory_1, 80)).
method_invoc(basic_deserializer_factory_1_expr46, m_get_name_306, line(basic_deserializer_factory_1, 80)).
ref(basic_deserializer_factory_1_expr48, basic_deserializer_factory_1_expr46, line(basic_deserializer_factory_1, 80)).
method_invoc(basic_deserializer_factory_1_expr49, m_put_997, line(basic_deserializer_factory_1, 87)).
argument(basic_deserializer_factory_1_literal2, 1, basic_deserializer_factory_1_expr49).
argument(basic_deserializer_factory_1_expr50, 2, basic_deserializer_factory_1_expr49).
ref(f__collection_fallbacks_1327, basic_deserializer_factory_1_expr49, line(basic_deserializer_factory_1, 87)).
method_invoc(basic_deserializer_factory_1_expr51, m_put_997, line(basic_deserializer_factory_1, 88)).
argument(basic_deserializer_factory_1_literal3, 1, basic_deserializer_factory_1_expr51).
argument(basic_deserializer_factory_1_expr52, 2, basic_deserializer_factory_1_expr51).
ref(f__collection_fallbacks_1327, basic_deserializer_factory_1_expr51, line(basic_deserializer_factory_1, 88)).
param(p_config_1328, 1, m_basic_deserializer_factory_998).
assign(f__factory_config_1329, p_config_1328, line(basic_deserializer_factory_1, 110)).
param(p_config_1330, 1, m_with_config_1000).
param(p_additional_1331, 1, m_with_additional_deserializers_1001).
param(p_additional_1332, 1, m_with_additional_key_deserializers_1002).
param(p_modifier_1333, 1, m_with_deserializer_modifier_1003).
param(p_resolver_1334, 1, m_with_abstract_type_resolver_1004).
param(p_instantiators_1335, 1, m_with_value_instantiators_1005).
param(p_config_1336, 1, m_map_abstract_type_1006).
param(p_type_1337, 2, m_map_abstract_type_1006).
throw(m_map_abstract_type_1006, json_mapping_exception).
param(p_config_1338, 1, m__map_abstract_type2_1007).
param(p_type_1339, 2, m__map_abstract_type2_1007).
throw(m__map_abstract_type2_1007, json_mapping_exception).
param(p_ctxt_1340, 1, m_find_value_instantiator_1008).
param(p_bean_desc_1341, 2, m_find_value_instantiator_1008).
throw(m_find_value_instantiator_1008, json_mapping_exception).
param(p_config_1342, 1, m__find_std_value_instantiator_1009).
param(p_bean_desc_1343, 2, m__find_std_value_instantiator_1009).
throw(m__find_std_value_instantiator_1009, json_mapping_exception).
param(p_ctxt_1344, 1, m__construct_default_value_instantiator_1010).
param(p_bean_desc_1345, 2, m__construct_default_value_instantiator_1010).
throw(m__construct_default_value_instantiator_1010, json_mapping_exception).
param(p_ctxt_1346, 1, m__find_creators_from_properties_1011).
param(p_bean_desc_1347, 2, m__find_creators_from_properties_1011).
throw(m__find_creators_from_properties_1011, json_mapping_exception).
param(p_config_1348, 1, m__value_instantiator_instance_1012).
param(p_annotated_1349, 2, m__value_instantiator_instance_1012).
param(p_inst_def_1350, 3, m__value_instantiator_instance_1012).
throw(m__value_instantiator_instance_1012, json_mapping_exception).
param(p_ctxt_1351, 1, m__add_deserializer_constructors_1013).
param(p_bean_desc_1352, 2, m__add_deserializer_constructors_1013).
param(p_vchecker_1353, 3, m__add_deserializer_constructors_1013).
param(p_intr_1354, 4, m__add_deserializer_constructors_1013).
param(p_creators_1355, 5, m__add_deserializer_constructors_1013).
param(p_creator_params_1356, 6, m__add_deserializer_constructors_1013).
throw(m__add_deserializer_constructors_1013, json_mapping_exception).
param(p_ctxt_1357, 1, m__check_implicitly_named_constructors_1014).
param(p_bean_desc_1358, 2, m__check_implicitly_named_constructors_1014).
param(p_vchecker_1359, 3, m__check_implicitly_named_constructors_1014).
param(p_intr_1360, 4, m__check_implicitly_named_constructors_1014).
param(p_creators_1361, 5, m__check_implicitly_named_constructors_1014).
param(p_implicit_ctors_1362, 6, m__check_implicitly_named_constructors_1014).
throw(m__check_implicitly_named_constructors_1014, json_mapping_exception).
param(p_ctxt_1363, 1, m__handle_single_argument_constructor_1015).
param(p_bean_desc_1364, 2, m__handle_single_argument_constructor_1015).
param(p_vchecker_1365, 3, m__handle_single_argument_constructor_1015).
param(p_intr_1366, 4, m__handle_single_argument_constructor_1015).
param(p_creators_1367, 5, m__handle_single_argument_constructor_1015).
param(p_ctor_1368, 6, m__handle_single_argument_constructor_1015).
param(p_is_creator_1369, 7, m__handle_single_argument_constructor_1015).
param(p_is_visible_1370, 8, m__handle_single_argument_constructor_1015).
throw(m__handle_single_argument_constructor_1015, json_mapping_exception).
param(p_ctxt_1371, 1, m__add_deserializer_factory_methods_1016).
param(p_bean_desc_1372, 2, m__add_deserializer_factory_methods_1016).
param(p_vchecker_1373, 3, m__add_deserializer_factory_methods_1016).
param(p_intr_1374, 4, m__add_deserializer_factory_methods_1016).
param(p_creators_1375, 5, m__add_deserializer_factory_methods_1016).
param(p_creator_params_1376, 6, m__add_deserializer_factory_methods_1016).
throw(m__add_deserializer_factory_methods_1016, json_mapping_exception).
param(p_config_1377, 1, m__handle_single_argument_factory_1017).
param(p_bean_desc_1378, 2, m__handle_single_argument_factory_1017).
param(p_vchecker_1379, 3, m__handle_single_argument_factory_1017).
param(p_intr_1380, 4, m__handle_single_argument_factory_1017).
param(p_creators_1381, 5, m__handle_single_argument_factory_1017).
param(p_factory_1382, 6, m__handle_single_argument_factory_1017).
param(p_is_creator_1383, 7, m__handle_single_argument_factory_1017).
throw(m__handle_single_argument_factory_1017, json_mapping_exception).
param(p_ctxt_1384, 1, m__report_unwrapped_creator_property_1018).
param(p_bean_desc_1385, 2, m__report_unwrapped_creator_property_1018).
param(p_param_1386, 3, m__report_unwrapped_creator_property_1018).
throw(m__report_unwrapped_creator_property_1018, json_mapping_exception).
param(p_ctxt_1387, 1, m_construct_creator_property_1019).
param(p_bean_desc_1388, 2, m_construct_creator_property_1019).
param(p_name_1389, 3, m_construct_creator_property_1019).
param(p_index_1390, 4, m_construct_creator_property_1019).
param(p_param_1391, 5, m_construct_creator_property_1019).
param(p_injectable_1392, 6, m_construct_creator_property_1019).
throw(m_construct_creator_property_1019, json_mapping_exception).
param(p_param_1393, 1, m__find_param_name_1020).
param(p_intr_1394, 2, m__find_param_name_1020).
param(p_param_1395, 1, m__find_implicit_param_name_1021).
param(p_intr_1396, 2, m__find_implicit_param_name_1021).
param(p_intr_1397, 1, m__check_if_creator_property_based_1022).
param(p_creator_1398, 2, m__check_if_creator_property_based_1022).
param(p_prop_def_1399, 3, m__check_if_creator_property_based_1022).
param(p_creator_mode_1400, 4, m__check_if_creator_property_based_1022).
param(p_ctxt_1401, 1, m_create_array_deserializer_1023).
param(p_type_1402, 2, m_create_array_deserializer_1023).
param(p_bean_desc_1403, 3, m_create_array_deserializer_1023).
throw(m_create_array_deserializer_1023, json_mapping_exception).
param(p_ctxt_1404, 1, m_create_collection_deserializer_1024).
param(p_type_1405, 2, m_create_collection_deserializer_1024).
param(p_bean_desc_1406, 3, m_create_collection_deserializer_1024).
throw(m_create_collection_deserializer_1024, json_mapping_exception).
param(p_type_1407, 1, m__map_abstract_collection_type_1025).
param(p_config_1408, 2, m__map_abstract_collection_type_1025).
param(p_ctxt_1409, 1, m_create_collection_like_deserializer_1026).
param(p_type_1410, 2, m_create_collection_like_deserializer_1026).
param(p_bean_desc_1411, 3, m_create_collection_like_deserializer_1026).
throw(m_create_collection_like_deserializer_1026, json_mapping_exception).
param(p_ctxt_1412, 1, m_create_map_deserializer_1027).
param(p_type_1413, 2, m_create_map_deserializer_1027).
param(p_bean_desc_1414, 3, m_create_map_deserializer_1027).
throw(m_create_map_deserializer_1027, json_mapping_exception).
param(p_ctxt_1415, 1, m_create_map_like_deserializer_1028).
param(p_type_1416, 2, m_create_map_like_deserializer_1028).
param(p_bean_desc_1417, 3, m_create_map_like_deserializer_1028).
throw(m_create_map_like_deserializer_1028, json_mapping_exception).
param(p_ctxt_1418, 1, m_create_enum_deserializer_1029).
param(p_type_1419, 2, m_create_enum_deserializer_1029).
param(p_bean_desc_1420, 3, m_create_enum_deserializer_1029).
throw(m_create_enum_deserializer_1029, json_mapping_exception).
param(p_config_1421, 1, m_create_tree_deserializer_1030).
param(p_node_type_1422, 2, m_create_tree_deserializer_1030).
param(p_bean_desc_1423, 3, m_create_tree_deserializer_1030).
throw(m_create_tree_deserializer_1030, json_mapping_exception).
param(p_ctxt_1424, 1, m_create_reference_deserializer_1031).
param(p_type_1425, 2, m_create_reference_deserializer_1031).
param(p_bean_desc_1426, 3, m_create_reference_deserializer_1031).
throw(m_create_reference_deserializer_1031, json_mapping_exception).
param(p_config_1427, 1, m_find_type_deserializer_1032).
param(p_base_type_1428, 2, m_find_type_deserializer_1032).
throw(m_find_type_deserializer_1032, json_mapping_exception).
param(p_ctxt_1429, 1, m_find_optional_std_deserializer_1033).
param(p_type_1430, 2, m_find_optional_std_deserializer_1033).
param(p_bean_desc_1431, 3, m_find_optional_std_deserializer_1033).
throw(m_find_optional_std_deserializer_1033, json_mapping_exception).
param(p_ctxt_1432, 1, m_create_key_deserializer_1034).
param(p_type_1433, 2, m_create_key_deserializer_1034).
throw(m_create_key_deserializer_1034, json_mapping_exception).
param(p_ctxt_1434, 1, m__create_enum_key_deserializer_1035).
param(p_type_1435, 2, m__create_enum_key_deserializer_1035).
throw(m__create_enum_key_deserializer_1035, json_mapping_exception).
param(p_config_1436, 1, m_find_property_type_deserializer_1036).
param(p_base_type_1437, 2, m_find_property_type_deserializer_1036).
param(p_annotated_1438, 3, m_find_property_type_deserializer_1036).
throw(m_find_property_type_deserializer_1036, json_mapping_exception).
param(p_config_1439, 1, m_find_property_content_type_deserializer_1037).
param(p_container_type_1440, 2, m_find_property_content_type_deserializer_1037).
param(p_property_entity_1441, 3, m_find_property_content_type_deserializer_1037).
throw(m_find_property_content_type_deserializer_1037, json_mapping_exception).
param(p_ctxt_1442, 1, m_find_default_deserializer_1038).
param(p_type_1443, 2, m_find_default_deserializer_1038).
param(p_bean_desc_1444, 3, m_find_default_deserializer_1038).
throw(m_find_default_deserializer_1038, json_mapping_exception).
param(p_config_1445, 1, m__find_remapped_type_1039).
param(p_raw_type_1446, 2, m__find_remapped_type_1039).
throw(m__find_remapped_type_1039, json_mapping_exception).
param(p_type_1447, 1, m__find_custom_tree_node_deserializer_1040).
param(p_config_1448, 2, m__find_custom_tree_node_deserializer_1040).
param(p_bean_desc_1449, 3, m__find_custom_tree_node_deserializer_1040).
throw(m__find_custom_tree_node_deserializer_1040, json_mapping_exception).
param(p_type_1450, 1, m__find_custom_reference_deserializer_1041).
param(p_config_1451, 2, m__find_custom_reference_deserializer_1041).
param(p_bean_desc_1452, 3, m__find_custom_reference_deserializer_1041).
param(p_content_type_deserializer_1453, 4, m__find_custom_reference_deserializer_1041).
param(p_content_deserializer_1454, 5, m__find_custom_reference_deserializer_1041).
throw(m__find_custom_reference_deserializer_1041, json_mapping_exception).
param(p_type_1455, 1, m__find_custom_bean_deserializer_1042).
param(p_config_1456, 2, m__find_custom_bean_deserializer_1042).
param(p_bean_desc_1457, 3, m__find_custom_bean_deserializer_1042).
throw(m__find_custom_bean_deserializer_1042, json_mapping_exception).
param(p_type_1458, 1, m__find_custom_array_deserializer_1043).
param(p_config_1459, 2, m__find_custom_array_deserializer_1043).
param(p_bean_desc_1460, 3, m__find_custom_array_deserializer_1043).
param(p_element_type_deserializer_1461, 4, m__find_custom_array_deserializer_1043).
param(p_element_deserializer_1462, 5, m__find_custom_array_deserializer_1043).
throw(m__find_custom_array_deserializer_1043, json_mapping_exception).
param(p_type_1463, 1, m__find_custom_collection_deserializer_1044).
param(p_config_1464, 2, m__find_custom_collection_deserializer_1044).
param(p_bean_desc_1465, 3, m__find_custom_collection_deserializer_1044).
param(p_element_type_deserializer_1466, 4, m__find_custom_collection_deserializer_1044).
param(p_element_deserializer_1467, 5, m__find_custom_collection_deserializer_1044).
throw(m__find_custom_collection_deserializer_1044, json_mapping_exception).
param(p_type_1468, 1, m__find_custom_collection_like_deserializer_1045).
param(p_config_1469, 2, m__find_custom_collection_like_deserializer_1045).
param(p_bean_desc_1470, 3, m__find_custom_collection_like_deserializer_1045).
param(p_element_type_deserializer_1471, 4, m__find_custom_collection_like_deserializer_1045).
param(p_element_deserializer_1472, 5, m__find_custom_collection_like_deserializer_1045).
throw(m__find_custom_collection_like_deserializer_1045, json_mapping_exception).
param(p_type_1473, 1, m__find_custom_enum_deserializer_1046).
param(p_config_1474, 2, m__find_custom_enum_deserializer_1046).
param(p_bean_desc_1475, 3, m__find_custom_enum_deserializer_1046).
throw(m__find_custom_enum_deserializer_1046, json_mapping_exception).
param(p_type_1476, 1, m__find_custom_map_deserializer_1047).
param(p_config_1477, 2, m__find_custom_map_deserializer_1047).
param(p_bean_desc_1478, 3, m__find_custom_map_deserializer_1047).
param(p_key_deserializer_1479, 4, m__find_custom_map_deserializer_1047).
param(p_element_type_deserializer_1480, 5, m__find_custom_map_deserializer_1047).
param(p_element_deserializer_1481, 6, m__find_custom_map_deserializer_1047).
throw(m__find_custom_map_deserializer_1047, json_mapping_exception).
param(p_type_1482, 1, m__find_custom_map_like_deserializer_1048).
param(p_config_1483, 2, m__find_custom_map_like_deserializer_1048).
param(p_bean_desc_1484, 3, m__find_custom_map_like_deserializer_1048).
param(p_key_deserializer_1485, 4, m__find_custom_map_like_deserializer_1048).
param(p_element_type_deserializer_1486, 5, m__find_custom_map_like_deserializer_1048).
param(p_element_deserializer_1487, 6, m__find_custom_map_like_deserializer_1048).
throw(m__find_custom_map_like_deserializer_1048, json_mapping_exception).
param(p_ctxt_1488, 1, m_find_deserializer_from_annotation_1049).
param(p_ann_1489, 2, m_find_deserializer_from_annotation_1049).
throw(m_find_deserializer_from_annotation_1049, json_mapping_exception).
param(p_ctxt_1490, 1, m_find_key_deserializer_from_annotation_1050).
param(p_ann_1491, 2, m_find_key_deserializer_from_annotation_1050).
throw(m_find_key_deserializer_from_annotation_1050, json_mapping_exception).
param(p_ctxt_1492, 1, m_find_content_deserializer_from_annotation_1051).
param(p_ann_1493, 2, m_find_content_deserializer_from_annotation_1051).
throw(m_find_content_deserializer_from_annotation_1051, json_mapping_exception).
param(p_ctxt_1494, 1, m_resolve_member_and_type_annotations_1052).
param(p_member_1495, 2, m_resolve_member_and_type_annotations_1052).
param(p_type_1496, 3, m_resolve_member_and_type_annotations_1052).
throw(m_resolve_member_and_type_annotations_1052, json_mapping_exception).
param(p_enum_class_1497, 1, m_construct_enum_resolver_1053).
param(p_config_1498, 2, m_construct_enum_resolver_1053).
param(p_json_value_accessor_1499, 3, m_construct_enum_resolver_1053).
param(p_ctxt_1500, 1, m__has_creator_annotation_1054).
param(p_ann_1501, 2, m__has_creator_annotation_1054).
param(p_ctxt_1502, 1, m_modify_type_by_annotation_1055).
param(p_a_1503, 2, m_modify_type_by_annotation_1055).
param(p_type_1504, 3, m_modify_type_by_annotation_1055).
throw(m_modify_type_by_annotation_1055, json_mapping_exception).
param(p_ctxt_1505, 1, m_resolve_type_1056).
param(p_bean_desc_1506, 2, m_resolve_type_1056).
param(p_type_1507, 3, m_resolve_type_1056).
param(p_member_1508, 4, m_resolve_type_1056).
throw(m_resolve_type_1056, json_mapping_exception).
param(p_config_1509, 1, m__find_json_value_for_1057).
param(p_enum_type_1510, 2, m__find_json_value_for_1057).

%test_type_names_1 - com.fasterxml.jackson.databind.jsontype.TestTypeNames
assign(f_mapper_2208, test_type_names_1_expr1, line(test_type_names_1, 42)).
method_invoc(test_type_names_1_expr1, m_object_mapper_1526, line(test_type_names_1, 42)).
throw(m_test_base_type_id1616_1527, exception).
assign(v_mapper_2209, test_type_names_1_expr2, line(test_type_names_1, 46)).
method_invoc(test_type_names_1_expr2, m_object_mapper_393, line(test_type_names_1, 46)).
assign(v_subtypes_2210, test_type_names_1_expr3, line(test_type_names_1, 47)).
method_invoc(test_type_names_1_expr3, m_collect_and_resolve_subtypes_by_type_id_1528, line(test_type_names_1, 47)).
argument(test_type_names_1_expr4, 1, test_type_names_1_expr3).
argument(test_type_names_1_literal1, 2, test_type_names_1_expr3).
argument(test_type_names_1_expr5, 3, test_type_names_1_expr3).
ref(test_type_names_1_expr6, test_type_names_1_expr3, line(test_type_names_1, 47)).
method_invoc(test_type_names_1_expr6, m_std_subtype_resolver_397, line(test_type_names_1, 47)).
throw(m_test_serialization_1529, exception).
throw(m_test_round_trip_1530, exception).
throw(m_test_round_trip_map_1531, exception).
param(p_o_2211, 1, m_equals_1532).
param(p_n_2212, 1, m_dog_1535).
param(p_y_2213, 2, m_dog_1535).
param(p_o_2214, 1, m_equals_1536).
param(p_n_2215, 1, m_cat_1538).
param(p_p_2216, 2, m_cat_1538).
param(p_o_2217, 1, m_equals_1539).
param(p_n_2218, 1, m_maine_coon_1542).
param(p_p_2219, 2, m_maine_coon_1542).
param(p_n_2220, 1, m_persian_1544).
param(p_p_2221, 2, m_persian_1544).

%basic_serializer_factory_1 - com.fasterxml.jackson.databind.ser.BasicSerializerFactory
assign(v_conc_lazy_2289, basic_serializer_factory_1_expr1, line(basic_serializer_factory_1, 61)).
assign(v_concrete_2290, basic_serializer_factory_1_expr2, line(basic_serializer_factory_1, 63)).
method_invoc(basic_serializer_factory_1_expr3, m_put_997, line(basic_serializer_factory_1, 70)).
argument(basic_serializer_factory_1_expr4, 1, basic_serializer_factory_1_expr3).
argument(basic_serializer_factory_1_expr5, 2, basic_serializer_factory_1_expr3).
ref(v_concrete_2290, basic_serializer_factory_1_expr3, line(basic_serializer_factory_1, 70)).
method_invoc(basic_serializer_factory_1_expr4, m_get_name_306, line(basic_serializer_factory_1, 70)).
ref(basic_serializer_factory_1_expr6, basic_serializer_factory_1_expr4, line(basic_serializer_factory_1, 70)).
method_invoc(basic_serializer_factory_1_expr5, m_string_serializer_1584, line(basic_serializer_factory_1, 70)).
assign(v_sls_2291, q_instance_15, line(basic_serializer_factory_1, 71)).
ref(t_to_string_serializer_40, q_instance_15, line(basic_serializer_factory_1, 71)).
method_invoc(basic_serializer_factory_1_expr7, m_put_997, line(basic_serializer_factory_1, 72)).
argument(basic_serializer_factory_1_expr8, 1, basic_serializer_factory_1_expr7).
argument(v_sls_2291, 2, basic_serializer_factory_1_expr7).
ref(v_concrete_2290, basic_serializer_factory_1_expr7, line(basic_serializer_factory_1, 72)).
method_invoc(basic_serializer_factory_1_expr8, m_get_name_306, line(basic_serializer_factory_1, 72)).
ref(basic_serializer_factory_1_expr9, basic_serializer_factory_1_expr8, line(basic_serializer_factory_1, 72)).
method_invoc(basic_serializer_factory_1_expr10, m_put_997, line(basic_serializer_factory_1, 73)).
argument(basic_serializer_factory_1_expr11, 1, basic_serializer_factory_1_expr10).
argument(v_sls_2291, 2, basic_serializer_factory_1_expr10).
ref(v_concrete_2290, basic_serializer_factory_1_expr10, line(basic_serializer_factory_1, 73)).
method_invoc(basic_serializer_factory_1_expr11, m_get_name_306, line(basic_serializer_factory_1, 73)).
ref(basic_serializer_factory_1_expr12, basic_serializer_factory_1_expr11, line(basic_serializer_factory_1, 73)).
method_invoc(basic_serializer_factory_1_expr13, m_put_997, line(basic_serializer_factory_1, 74)).
argument(basic_serializer_factory_1_expr14, 1, basic_serializer_factory_1_expr13).
argument(v_sls_2291, 2, basic_serializer_factory_1_expr13).
ref(v_concrete_2290, basic_serializer_factory_1_expr13, line(basic_serializer_factory_1, 74)).
method_invoc(basic_serializer_factory_1_expr14, m_get_name_306, line(basic_serializer_factory_1, 74)).
ref(basic_serializer_factory_1_expr15, basic_serializer_factory_1_expr14, line(basic_serializer_factory_1, 74)).
method_invoc(basic_serializer_factory_1_expr16, m_put_997, line(basic_serializer_factory_1, 75)).
argument(basic_serializer_factory_1_expr17, 1, basic_serializer_factory_1_expr16).
argument(v_sls_2291, 2, basic_serializer_factory_1_expr16).
ref(v_concrete_2290, basic_serializer_factory_1_expr16, line(basic_serializer_factory_1, 75)).
method_invoc(basic_serializer_factory_1_expr17, m_get_name_306, line(basic_serializer_factory_1, 75)).
ref(f_type_2292, basic_serializer_factory_1_expr17, line(basic_serializer_factory_1, 75)).
ref(t_character_41, q_type_16, line(basic_serializer_factory_1, 75)).
method_invoc(basic_serializer_factory_1_expr18, m_add_all_1585, line(basic_serializer_factory_1, 78)).
argument(v_concrete_2290, 1, basic_serializer_factory_1_expr18).
ref(t_number_serializers_42, basic_serializer_factory_1_expr18, line(basic_serializer_factory_1, 78)).
method_invoc(basic_serializer_factory_1_expr19, m_put_997, line(basic_serializer_factory_1, 79)).
argument(basic_serializer_factory_1_expr20, 1, basic_serializer_factory_1_expr19).
argument(basic_serializer_factory_1_expr21, 2, basic_serializer_factory_1_expr19).
ref(v_concrete_2290, basic_serializer_factory_1_expr19, line(basic_serializer_factory_1, 79)).
method_invoc(basic_serializer_factory_1_expr20, m_get_name_306, line(basic_serializer_factory_1, 79)).
ref(f_type_2293, basic_serializer_factory_1_expr20, line(basic_serializer_factory_1, 79)).
ref(t_boolean_34, q_type_17, line(basic_serializer_factory_1, 79)).
method_invoc(basic_serializer_factory_1_expr21, m_boolean_serializer_1586, line(basic_serializer_factory_1, 79)).
argument(basic_serializer_factory_1_literal1, 1, basic_serializer_factory_1_expr21).
method_invoc(basic_serializer_factory_1_expr22, m_put_997, line(basic_serializer_factory_1, 80)).
argument(basic_serializer_factory_1_expr23, 1, basic_serializer_factory_1_expr22).
argument(basic_serializer_factory_1_expr24, 2, basic_serializer_factory_1_expr22).
ref(v_concrete_2290, basic_serializer_factory_1_expr22, line(basic_serializer_factory_1, 80)).
method_invoc(basic_serializer_factory_1_expr23, m_get_name_306, line(basic_serializer_factory_1, 80)).
ref(basic_serializer_factory_1_expr25, basic_serializer_factory_1_expr23, line(basic_serializer_factory_1, 80)).
method_invoc(basic_serializer_factory_1_expr24, m_boolean_serializer_1586, line(basic_serializer_factory_1, 80)).
argument(basic_serializer_factory_1_literal2, 1, basic_serializer_factory_1_expr24).
method_invoc(basic_serializer_factory_1_expr26, m_put_997, line(basic_serializer_factory_1, 83)).
argument(basic_serializer_factory_1_expr27, 1, basic_serializer_factory_1_expr26).
argument(basic_serializer_factory_1_expr28, 2, basic_serializer_factory_1_expr26).
ref(v_concrete_2290, basic_serializer_factory_1_expr26, line(basic_serializer_factory_1, 83)).
method_invoc(basic_serializer_factory_1_expr27, m_get_name_306, line(basic_serializer_factory_1, 83)).
ref(basic_serializer_factory_1_expr29, basic_serializer_factory_1_expr27, line(basic_serializer_factory_1, 83)).
method_invoc(basic_serializer_factory_1_expr28, m_number_serializer_1587, line(basic_serializer_factory_1, 83)).
argument(basic_serializer_factory_1_expr30, 1, basic_serializer_factory_1_expr28).
method_invoc(basic_serializer_factory_1_expr31, m_put_997, line(basic_serializer_factory_1, 84)).
argument(basic_serializer_factory_1_expr32, 1, basic_serializer_factory_1_expr31).
argument(basic_serializer_factory_1_expr33, 2, basic_serializer_factory_1_expr31).
ref(v_concrete_2290, basic_serializer_factory_1_expr31, line(basic_serializer_factory_1, 84)).
method_invoc(basic_serializer_factory_1_expr32, m_get_name_306, line(basic_serializer_factory_1, 84)).
ref(basic_serializer_factory_1_expr34, basic_serializer_factory_1_expr32, line(basic_serializer_factory_1, 84)).
method_invoc(basic_serializer_factory_1_expr33, m_number_serializer_1587, line(basic_serializer_factory_1, 84)).
argument(basic_serializer_factory_1_expr35, 1, basic_serializer_factory_1_expr33).
method_invoc(basic_serializer_factory_1_expr36, m_put_997, line(basic_serializer_factory_1, 88)).
argument(basic_serializer_factory_1_expr37, 1, basic_serializer_factory_1_expr36).
argument(q_instance_17, 2, basic_serializer_factory_1_expr36).
ref(v_concrete_2290, basic_serializer_factory_1_expr36, line(basic_serializer_factory_1, 88)).
method_invoc(basic_serializer_factory_1_expr37, m_get_name_306, line(basic_serializer_factory_1, 88)).
ref(basic_serializer_factory_1_expr38, basic_serializer_factory_1_expr37, line(basic_serializer_factory_1, 88)).
ref(t_calendar_serializer_43, q_instance_17, line(basic_serializer_factory_1, 88)).
method_invoc(basic_serializer_factory_1_expr39, m_put_997, line(basic_serializer_factory_1, 89)).
argument(basic_serializer_factory_1_expr40, 1, basic_serializer_factory_1_expr39).
argument(q_instance_18, 2, basic_serializer_factory_1_expr39).
ref(v_concrete_2290, basic_serializer_factory_1_expr39, line(basic_serializer_factory_1, 89)).
method_invoc(basic_serializer_factory_1_expr40, m_get_name_306, line(basic_serializer_factory_1, 89)).
ref(basic_serializer_factory_1_expr41, basic_serializer_factory_1_expr40, line(basic_serializer_factory_1, 89)).
ref(t_date_serializer_44, q_instance_18, line(basic_serializer_factory_1, 89)).
ref(basic_serializer_factory_1_expr42, basic_serializer_factory_1_stmt16, line(basic_serializer_factory_1, 92)).
method_invoc(basic_serializer_factory_1_expr42, m_all_1588, line(basic_serializer_factory_1, 92)).
ref(t_std_jdk_serializers_45, basic_serializer_factory_1_expr42, line(basic_serializer_factory_1, 92)).
assign(v_value_2295, basic_serializer_factory_1_expr43, line(basic_serializer_factory_1, 93)).
method_invoc(basic_serializer_factory_1_expr43, m_get_value_1259, line(basic_serializer_factory_1, 93)).
ref(v_en_2294, basic_serializer_factory_1_expr43, line(basic_serializer_factory_1, 93)).
method_invoc(basic_serializer_factory_1_expr45, m_put_997, line(basic_serializer_factory_1, 95)).
argument(basic_serializer_factory_1_expr46, 1, basic_serializer_factory_1_expr45).
argument(basic_serializer_factory_1_expr47, 2, basic_serializer_factory_1_expr45).
ref(v_concrete_2290, basic_serializer_factory_1_expr45, line(basic_serializer_factory_1, 95)).
method_invoc(basic_serializer_factory_1_expr46, m_get_name_306, line(basic_serializer_factory_1, 95)).
ref(basic_serializer_factory_1_expr48, basic_serializer_factory_1_expr46, line(basic_serializer_factory_1, 95)).
method_invoc(basic_serializer_factory_1_expr48, m_get_key_1258, line(basic_serializer_factory_1, 95)).
ref(v_en_2294, basic_serializer_factory_1_expr48, line(basic_serializer_factory_1, 95)).
assign(basic_serializer_factory_1_expr47, v_value_2295, line(basic_serializer_factory_1, 95)).
assign(v_cls_2296, basic_serializer_factory_1_expr49, line(basic_serializer_factory_1, 98)).
assign(basic_serializer_factory_1_expr49, v_value_2295, line(basic_serializer_factory_1, 98)).
method_invoc(basic_serializer_factory_1_expr50, m_put_997, line(basic_serializer_factory_1, 99)).
argument(basic_serializer_factory_1_expr51, 1, basic_serializer_factory_1_expr50).
argument(v_cls_2296, 2, basic_serializer_factory_1_expr50).
ref(v_conc_lazy_2289, basic_serializer_factory_1_expr50, line(basic_serializer_factory_1, 99)).
method_invoc(basic_serializer_factory_1_expr51, m_get_name_306, line(basic_serializer_factory_1, 99)).
ref(basic_serializer_factory_1_expr52, basic_serializer_factory_1_expr51, line(basic_serializer_factory_1, 99)).
method_invoc(basic_serializer_factory_1_expr52, m_get_key_1258, line(basic_serializer_factory_1, 99)).
ref(v_en_2294, basic_serializer_factory_1_expr52, line(basic_serializer_factory_1, 99)).
method_invoc(basic_serializer_factory_1_expr53, m_put_997, line(basic_serializer_factory_1, 105)).
argument(basic_serializer_factory_1_expr54, 1, basic_serializer_factory_1_expr53).
argument(basic_serializer_factory_1_expr55, 2, basic_serializer_factory_1_expr53).
ref(v_conc_lazy_2289, basic_serializer_factory_1_expr53, line(basic_serializer_factory_1, 105)).
method_invoc(basic_serializer_factory_1_expr54, m_get_name_306, line(basic_serializer_factory_1, 105)).
ref(basic_serializer_factory_1_expr56, basic_serializer_factory_1_expr54, line(basic_serializer_factory_1, 105)).
assign(f__concrete_2297, v_concrete_2290, line(basic_serializer_factory_1, 107)).
assign(f__concrete_lazy_2298, v_conc_lazy_2289, line(basic_serializer_factory_1, 108)).
param(p_config_2299, 1, m_basic_serializer_factory_1589).
assign(f__factory_config_2300, basic_serializer_factory_1_expr60, line(basic_serializer_factory_1, 135)).
cond_expr(basic_serializer_factory_1_expr61, basic_serializer_factory_1_expr62, p_config_2299, line(basic_serializer_factory_1, 135)).
assign(basic_serializer_factory_1_expr61, basic_serializer_factory_1_expr63, line(basic_serializer_factory_1, 135)).
method_invoc(basic_serializer_factory_1_expr62, m_serializer_factory_config_986, line(basic_serializer_factory_1, 135)).
param(p_config_2301, 1, m_with_config_1591).
param(p_additional_2302, 1, m_with_additional_serializers_1592).
param(p_additional_2303, 1, m_with_additional_key_serializers_1593).
param(p_modifier_2304, 1, m_with_serializer_modifier_1594).
param(p_prov_2305, 1, m_create_serializer_1595).
param(p_type_2306, 2, m_create_serializer_1595).
throw(m_create_serializer_1595, json_mapping_exception).
param(p_config_2307, 1, m_create_key_serializer_1596).
param(p_key_type_2308, 2, m_create_key_serializer_1596).
param(p_default_impl_2309, 3, m_create_key_serializer_1596).
param(p_config_2310, 1, m_create_type_serializer_1597).
param(p_base_type_2311, 2, m_create_type_serializer_1597).
param(p_type_2312, 1, m_find_serializer_by_lookup_1599).
param(p_config_2313, 2, m_find_serializer_by_lookup_1599).
param(p_bean_desc_2314, 3, m_find_serializer_by_lookup_1599).
param(p_static_typing_2315, 4, m_find_serializer_by_lookup_1599).
param(p_prov_2316, 1, m_find_serializer_by_annotations_1600).
param(p_type_2317, 2, m_find_serializer_by_annotations_1600).
param(p_bean_desc_2318, 3, m_find_serializer_by_annotations_1600).
throw(m_find_serializer_by_annotations_1600, json_mapping_exception).
param(p_prov_2319, 1, m_find_serializer_by_primary_type_1601).
param(p_type_2320, 2, m_find_serializer_by_primary_type_1601).
param(p_bean_desc_2321, 3, m_find_serializer_by_primary_type_1601).
param(p_static_typing_2322, 4, m_find_serializer_by_primary_type_1601).
throw(m_find_serializer_by_primary_type_1601, json_mapping_exception).
param(p_prov_2323, 1, m_find_optional_std_serializer_1602).
param(p_type_2324, 2, m_find_optional_std_serializer_1602).
param(p_bean_desc_2325, 3, m_find_optional_std_serializer_1602).
param(p_static_typing_2326, 4, m_find_optional_std_serializer_1602).
throw(m_find_optional_std_serializer_1602, json_mapping_exception).
param(p_config_2327, 1, m_find_serializer_by_addon_type_1603).
param(p_java_type_2328, 2, m_find_serializer_by_addon_type_1603).
param(p_bean_desc_2329, 3, m_find_serializer_by_addon_type_1603).
param(p_static_typing_2330, 4, m_find_serializer_by_addon_type_1603).
throw(m_find_serializer_by_addon_type_1603, json_mapping_exception).
param(p_prov_2331, 1, m_find_serializer_from_annotation_1604).
param(p_a_2332, 2, m_find_serializer_from_annotation_1604).
throw(m_find_serializer_from_annotation_1604, json_mapping_exception).
param(p_prov_2333, 1, m_find_converting_serializer_1605).
param(p_a_2334, 2, m_find_converting_serializer_1605).
param(p_ser_2335, 3, m_find_converting_serializer_1605).
throw(m_find_converting_serializer_1605, json_mapping_exception).
param(p_prov_2336, 1, m_find_converter_1606).
param(p_a_2337, 2, m_find_converter_1606).
throw(m_find_converter_1606, json_mapping_exception).
param(p_prov_2338, 1, m_build_container_serializer_1607).
param(p_type_2339, 2, m_build_container_serializer_1607).
param(p_bean_desc_2340, 3, m_build_container_serializer_1607).
param(p_static_typing_2341, 4, m_build_container_serializer_1607).
throw(m_build_container_serializer_1607, json_mapping_exception).
param(p_prov_2342, 1, m_build_collection_serializer_1608).
param(p_type_2343, 2, m_build_collection_serializer_1608).
param(p_bean_desc_2344, 3, m_build_collection_serializer_1608).
param(p_static_typing_2345, 4, m_build_collection_serializer_1608).
param(p_element_type_serializer_2346, 5, m_build_collection_serializer_1608).
param(p_element_value_serializer_2347, 6, m_build_collection_serializer_1608).
throw(m_build_collection_serializer_1608, json_mapping_exception).
param(p_cls_2348, 1, m_is_indexed_list_1609).
param(p_elem_type_2349, 1, m_build_indexed_list_serializer_1610).
param(p_static_typing_2350, 2, m_build_indexed_list_serializer_1610).
param(p_vts_2351, 3, m_build_indexed_list_serializer_1610).
param(p_value_serializer_2352, 4, m_build_indexed_list_serializer_1610).
param(p_elem_type_2353, 1, m_build_collection_serializer_1611).
param(p_static_typing_2354, 2, m_build_collection_serializer_1611).
param(p_vts_2355, 3, m_build_collection_serializer_1611).
param(p_value_serializer_2356, 4, m_build_collection_serializer_1611).
param(p_enum_type_2357, 1, m_build_enum_set_serializer_1612).
param(p_prov_2358, 1, m_build_map_serializer_1613).
param(p_type_2359, 2, m_build_map_serializer_1613).
param(p_bean_desc_2360, 3, m_build_map_serializer_1613).
param(p_static_typing_2361, 4, m_build_map_serializer_1613).
param(p_key_serializer_2362, 5, m_build_map_serializer_1613).
param(p_element_type_serializer_2363, 6, m_build_map_serializer_1613).
param(p_element_value_serializer_2364, 7, m_build_map_serializer_1613).
throw(m_build_map_serializer_1613, json_mapping_exception).
param(p_prov_2365, 1, m__check_map_content_inclusion_1614).
param(p_bean_desc_2366, 2, m__check_map_content_inclusion_1614).
param(p_map_ser_2367, 3, m__check_map_content_inclusion_1614).
throw(m__check_map_content_inclusion_1614, json_mapping_exception).
param(p_prov_2368, 1, m_build_map_entry_serializer_1615).
param(p_type_2369, 2, m_build_map_entry_serializer_1615).
param(p_bean_desc_2370, 3, m_build_map_entry_serializer_1615).
param(p_static_typing_2371, 4, m_build_map_entry_serializer_1615).
param(p_key_type_2372, 5, m_build_map_entry_serializer_1615).
param(p_value_type_2373, 6, m_build_map_entry_serializer_1615).
throw(m_build_map_entry_serializer_1615, json_mapping_exception).
param(p_prov_2374, 1, m__find_inclusion_with_content_1616).
param(p_bean_desc_2375, 2, m__find_inclusion_with_content_1616).
param(p_content_type_2376, 3, m__find_inclusion_with_content_1616).
param(p_config_type_2377, 4, m__find_inclusion_with_content_1616).
throw(m__find_inclusion_with_content_1616, json_mapping_exception).
param(p_prov_2378, 1, m_build_array_serializer_1617).
param(p_type_2379, 2, m_build_array_serializer_1617).
param(p_bean_desc_2380, 3, m_build_array_serializer_1617).
param(p_static_typing_2381, 4, m_build_array_serializer_1617).
param(p_element_type_serializer_2382, 5, m_build_array_serializer_1617).
param(p_element_value_serializer_2383, 6, m_build_array_serializer_1617).
throw(m_build_array_serializer_1617, json_mapping_exception).
param(p_config_2384, 1, m_build_iterator_serializer_1618).
param(p_type_2385, 2, m_build_iterator_serializer_1618).
param(p_bean_desc_2386, 3, m_build_iterator_serializer_1618).
param(p_static_typing_2387, 4, m_build_iterator_serializer_1618).
param(p_value_type_2388, 5, m_build_iterator_serializer_1618).
throw(m_build_iterator_serializer_1618, json_mapping_exception).
param(p_config_2389, 1, m_build_iterable_serializer_1619).
param(p_type_2390, 2, m_build_iterable_serializer_1619).
param(p_bean_desc_2391, 3, m_build_iterable_serializer_1619).
param(p_static_typing_2392, 4, m_build_iterable_serializer_1619).
param(p_value_type_2393, 5, m_build_iterable_serializer_1619).
throw(m_build_iterable_serializer_1619, json_mapping_exception).
param(p_config_2394, 1, m_build_enum_serializer_1620).
param(p_type_2395, 2, m_build_enum_serializer_1620).
param(p_bean_desc_2396, 3, m_build_enum_serializer_1620).
throw(m_build_enum_serializer_1620, json_mapping_exception).
param(p_prov_2397, 1, m__find_key_serializer_1621).
param(p_a_2398, 2, m__find_key_serializer_1621).
throw(m__find_key_serializer_1621, json_mapping_exception).
param(p_prov_2399, 1, m__find_content_serializer_1622).
param(p_a_2400, 2, m__find_content_serializer_1622).
throw(m__find_content_serializer_1622, json_mapping_exception).
param(p_config_2401, 1, m_find_filter_id_1623).
param(p_bean_desc_2402, 2, m_find_filter_id_1623).
param(p_config_2403, 1, m_uses_static_typing_1624).
param(p_bean_desc_2404, 2, m_uses_static_typing_1624).
param(p_type_ser_2405, 3, m_uses_static_typing_1624).

%bean_deserializer_factory_1 - com.fasterxml.jackson.databind.deser.BeanDeserializerFactory
assign(f_init_cause_params_1511, bean_deserializer_factory_1_expr1, line(bean_deserializer_factory_1, 37)).
assign(v_s_1512, bean_deserializer_factory_1_expr4, line(bean_deserializer_factory_1, 47)).
method_invoc(bean_deserializer_factory_1_expr4, m_hash_set_1058, line(bean_deserializer_factory_1, 47)).
method_invoc(bean_deserializer_factory_1_expr5, m_add_1059, line(bean_deserializer_factory_1, 50)).
argument(bean_deserializer_factory_1_literal1, 1, bean_deserializer_factory_1_expr5).
ref(v_s_1512, bean_deserializer_factory_1_expr5, line(bean_deserializer_factory_1, 50)).
method_invoc(bean_deserializer_factory_1_expr6, m_add_1059, line(bean_deserializer_factory_1, 51)).
argument(bean_deserializer_factory_1_literal2, 1, bean_deserializer_factory_1_expr6).
ref(v_s_1512, bean_deserializer_factory_1_expr6, line(bean_deserializer_factory_1, 51)).
method_invoc(bean_deserializer_factory_1_expr7, m_add_1059, line(bean_deserializer_factory_1, 52)).
argument(bean_deserializer_factory_1_literal3, 1, bean_deserializer_factory_1_expr7).
ref(v_s_1512, bean_deserializer_factory_1_expr7, line(bean_deserializer_factory_1, 52)).
method_invoc(bean_deserializer_factory_1_expr8, m_add_1059, line(bean_deserializer_factory_1, 53)).
argument(bean_deserializer_factory_1_literal4, 1, bean_deserializer_factory_1_expr8).
ref(v_s_1512, bean_deserializer_factory_1_expr8, line(bean_deserializer_factory_1, 53)).
method_invoc(bean_deserializer_factory_1_expr9, m_add_1059, line(bean_deserializer_factory_1, 54)).
argument(bean_deserializer_factory_1_literal5, 1, bean_deserializer_factory_1_expr9).
ref(v_s_1512, bean_deserializer_factory_1_expr9, line(bean_deserializer_factory_1, 54)).
method_invoc(bean_deserializer_factory_1_expr10, m_add_1059, line(bean_deserializer_factory_1, 55)).
argument(bean_deserializer_factory_1_literal6, 1, bean_deserializer_factory_1_expr10).
ref(v_s_1512, bean_deserializer_factory_1_expr10, line(bean_deserializer_factory_1, 55)).
method_invoc(bean_deserializer_factory_1_expr11, m_add_1059, line(bean_deserializer_factory_1, 56)).
argument(bean_deserializer_factory_1_literal7, 1, bean_deserializer_factory_1_expr11).
ref(v_s_1512, bean_deserializer_factory_1_expr11, line(bean_deserializer_factory_1, 56)).
method_invoc(bean_deserializer_factory_1_expr12, m_add_1059, line(bean_deserializer_factory_1, 57)).
argument(bean_deserializer_factory_1_literal8, 1, bean_deserializer_factory_1_expr12).
ref(v_s_1512, bean_deserializer_factory_1_expr12, line(bean_deserializer_factory_1, 57)).
method_invoc(bean_deserializer_factory_1_expr13, m_add_1059, line(bean_deserializer_factory_1, 58)).
argument(bean_deserializer_factory_1_literal9, 1, bean_deserializer_factory_1_expr13).
ref(v_s_1512, bean_deserializer_factory_1_expr13, line(bean_deserializer_factory_1, 58)).
assign(f_default_no_deser_class_names_1513, bean_deserializer_factory_1_expr15, line(bean_deserializer_factory_1, 59)).
method_invoc(bean_deserializer_factory_1_expr15, m_unmodifiable_set_1060, line(bean_deserializer_factory_1, 59)).
argument(v_s_1512, 1, bean_deserializer_factory_1_expr15).
ref(t_collections_19, bean_deserializer_factory_1_expr15, line(bean_deserializer_factory_1, 59)).
assign(f__cfg_illegal_class_names_1514, f_default_no_deser_class_names_1513, line(bean_deserializer_factory_1, 67)).
assign(f_instance_1515, bean_deserializer_factory_1_expr16, line(bean_deserializer_factory_1, 79)).
method_invoc(bean_deserializer_factory_1_expr16, m_bean_deserializer_factory_1061, line(bean_deserializer_factory_1, 79)).
argument(bean_deserializer_factory_1_expr17, 1, bean_deserializer_factory_1_expr16).
param(p_config_1516, 1, m_bean_deserializer_factory_1061).
method_invoc(bean_deserializer_factory_1_expr18, m_basic_deserializer_factory_998, line(bean_deserializer_factory_1, 83)).
argument(p_config_1516, 1, bean_deserializer_factory_1_expr18).
param(p_config_1517, 1, m_with_config_1062).
param(p_ctxt_1518, 1, m_create_bean_deserializer_1063).
param(p_type_1519, 2, m_create_bean_deserializer_1063).
param(p_bean_desc_1520, 3, m_create_bean_deserializer_1063).
throw(m_create_bean_deserializer_1063, json_mapping_exception).
param(p_ctxt_1521, 1, m_create_builder_based_deserializer_1064).
param(p_value_type_1522, 2, m_create_builder_based_deserializer_1064).
param(p_bean_desc_1523, 3, m_create_builder_based_deserializer_1064).
param(p_builder_class_1524, 4, m_create_builder_based_deserializer_1064).
throw(m_create_builder_based_deserializer_1064, json_mapping_exception).
param(p_ctxt_1525, 1, m_find_std_deserializer_1065).
param(p_type_1526, 2, m_find_std_deserializer_1065).
param(p_bean_desc_1527, 3, m_find_std_deserializer_1065).
throw(m_find_std_deserializer_1065, json_mapping_exception).
param(p_ctxt_1528, 1, m_materialize_abstract_type_1066).
param(p_type_1529, 2, m_materialize_abstract_type_1066).
param(p_bean_desc_1530, 3, m_materialize_abstract_type_1066).
throw(m_materialize_abstract_type_1066, json_mapping_exception).
param(p_ctxt_1531, 1, m_build_bean_deserializer_1067).
param(p_type_1532, 2, m_build_bean_deserializer_1067).
param(p_bean_desc_1533, 3, m_build_bean_deserializer_1067).
throw(m_build_bean_deserializer_1067, json_mapping_exception).
param(p_ctxt_1534, 1, m_build_builder_based_deserializer_1068).
param(p_value_type_1535, 2, m_build_builder_based_deserializer_1068).
param(p_builder_desc_1536, 3, m_build_builder_based_deserializer_1068).
throw(m_build_builder_based_deserializer_1068, json_mapping_exception).
param(p_ctxt_1537, 1, m_add_object_id_reader_1069).
param(p_bean_desc_1538, 2, m_add_object_id_reader_1069).
param(p_builder_1539, 3, m_add_object_id_reader_1069).
throw(m_add_object_id_reader_1069, json_mapping_exception).
param(p_ctxt_1540, 1, m_build_throwable_deserializer_1070).
param(p_type_1541, 2, m_build_throwable_deserializer_1070).
param(p_bean_desc_1542, 3, m_build_throwable_deserializer_1070).
throw(m_build_throwable_deserializer_1070, json_mapping_exception).
param(p_ctxt_1543, 1, m_construct_bean_deserializer_builder_1071).
param(p_bean_desc_1544, 2, m_construct_bean_deserializer_builder_1071).
param(p_ctxt_1545, 1, m_add_bean_props_1072).
param(p_bean_desc_1546, 2, m_add_bean_props_1072).
param(p_builder_1547, 3, m_add_bean_props_1072).
throw(m_add_bean_props_1072, json_mapping_exception).
param(p_raw_type_1548, 1, m__is_setterless_type_1073).
param(p_ctxt_1549, 1, m_filter_bean_props_1074).
param(p_bean_desc_1550, 2, m_filter_bean_props_1074).
param(p_builder_1551, 3, m_filter_bean_props_1074).
param(p_prop_defs_in_1552, 4, m_filter_bean_props_1074).
param(p_ignored_1553, 5, m_filter_bean_props_1074).
throw(m_filter_bean_props_1074, json_mapping_exception).
param(p_ctxt_1554, 1, m_add_back_reference_properties_1075).
param(p_bean_desc_1555, 2, m_add_back_reference_properties_1075).
param(p_builder_1556, 3, m_add_back_reference_properties_1075).
throw(m_add_back_reference_properties_1075, json_mapping_exception).
param(p_ctxt_1557, 1, m_add_reference_properties_1076).
param(p_bean_desc_1558, 2, m_add_reference_properties_1076).
param(p_builder_1559, 3, m_add_reference_properties_1076).
throw(m_add_reference_properties_1076, json_mapping_exception).
param(p_ctxt_1560, 1, m_add_injectables_1077).
param(p_bean_desc_1561, 2, m_add_injectables_1077).
param(p_builder_1562, 3, m_add_injectables_1077).
throw(m_add_injectables_1077, json_mapping_exception).
param(p_ctxt_1563, 1, m_construct_any_setter_1078).
param(p_bean_desc_1564, 2, m_construct_any_setter_1078).
param(p_mutator_1565, 3, m_construct_any_setter_1078).
throw(m_construct_any_setter_1078, json_mapping_exception).
param(p_ctxt_1566, 1, m_construct_settable_property_1079).
param(p_bean_desc_1567, 2, m_construct_settable_property_1079).
param(p_prop_def_1568, 3, m_construct_settable_property_1079).
param(p_prop_type0_1569, 4, m_construct_settable_property_1079).
throw(m_construct_settable_property_1079, json_mapping_exception).
param(p_ctxt_1570, 1, m_construct_setterless_property_1080).
param(p_bean_desc_1571, 2, m_construct_setterless_property_1080).
param(p_prop_def_1572, 3, m_construct_setterless_property_1080).
throw(m_construct_setterless_property_1080, json_mapping_exception).
param(p_type_1573, 1, m_is_potential_bean_type_1081).
param(p_config_1574, 1, m_is_ignorable_type_1082).
param(p_prop_def_1575, 2, m_is_ignorable_type_1082).
param(p_type_1576, 3, m_is_ignorable_type_1082).
param(p_ignored_types_1577, 4, m_is_ignorable_type_1082).
param(p_ctxt_1578, 1, m_check_illegal_types_1083).
param(p_type_1579, 2, m_check_illegal_types_1083).
param(p_bean_desc_1580, 3, m_check_illegal_types_1083).
throw(m_check_illegal_types_1083, json_mapping_exception).

%mapper_config_base_1 - com.fasterxml.jackson.databind.cfg.MapperConfigBase
assign(f_empty_override_1235, mapper_config_base_1_expr1, line(mapper_config_base_1, 30)).
method_invoc(mapper_config_base_1_expr1, m_empty_819, line(mapper_config_base_1, 30)).
ref(t_config_override_24, mapper_config_base_1_expr1, line(mapper_config_base_1, 30)).
assign(f_default_mapper_features_1236, mapper_config_base_1_expr2, line(mapper_config_base_1, 32)).
method_invoc(mapper_config_base_1_expr2, m_collect_feature_defaults_159, line(mapper_config_base_1, 32)).
argument(mapper_config_base_1_expr3, 1, mapper_config_base_1_expr2).
assign(f_auto_detect_mask_1237, mapper_config_base_1_expr4, line(mapper_config_base_1, 37)).
param(p_base_1238, 1, m_mapper_config_base_158).
param(p_str_1239, 2, m_mapper_config_base_158).
param(p_mixins_1240, 3, m_mapper_config_base_158).
param(p_root_names_1241, 4, m_mapper_config_base_158).
param(p_config_overrides_1242, 5, m_mapper_config_base_158).
method_invoc(mapper_config_base_1_expr5, m_mapper_config_878, line(mapper_config_base_1, 125)).
argument(p_base_1238, 1, mapper_config_base_1_expr5).
argument(f_default_mapper_features_1243, 2, mapper_config_base_1_expr5).
assign(f__mix_ins_1244, p_mixins_1240, line(mapper_config_base_1, 126)).
assign(f__subtype_resolver_1245, p_str_1239, line(mapper_config_base_1, 127)).
assign(f__root_names_1246, p_root_names_1241, line(mapper_config_base_1, 128)).
assign(f__root_name_1247, mapper_config_base_1_literal1, line(mapper_config_base_1, 129)).
assign(f__view_1248, mapper_config_base_1_literal2, line(mapper_config_base_1, 130)).
assign(f__attributes_1249, mapper_config_base_1_expr12, line(mapper_config_base_1, 132)).
method_invoc(mapper_config_base_1_expr12, m_get_empty_841, line(mapper_config_base_1, 132)).
ref(t_context_attributes_17, mapper_config_base_1_expr12, line(mapper_config_base_1, 132)).
assign(f__config_overrides_1250, p_config_overrides_1242, line(mapper_config_base_1, 133)).
param(p_src_1251, 1, m_mapper_config_base_930).
param(p_mixins_1252, 2, m_mapper_config_base_930).
param(p_root_names_1253, 3, m_mapper_config_base_930).
param(p_config_overrides_1254, 4, m_mapper_config_base_930).
param(p_src_1255, 1, m_mapper_config_base_931).
param(p_src_1256, 1, m_mapper_config_base_932).
param(p_base_1257, 2, m_mapper_config_base_932).
param(p_src_1258, 1, m_mapper_config_base_933).
param(p_mapper_features_1259, 2, m_mapper_config_base_933).
param(p_src_1260, 1, m_mapper_config_base_934).
param(p_str_1261, 2, m_mapper_config_base_934).
param(p_src_1262, 1, m_mapper_config_base_935).
param(p_root_name_1263, 2, m_mapper_config_base_935).
param(p_src_1264, 1, m_mapper_config_base_936).
param(p_view_1265, 2, m_mapper_config_base_936).
param(p_src_1266, 1, m_mapper_config_base_937).
param(p_mixins_1267, 2, m_mapper_config_base_937).
param(p_src_1268, 1, m_mapper_config_base_938).
param(p_attr_1269, 2, m_mapper_config_base_938).
param(p_new_base_1270, 1, m__with_base_939).
param(p_mapper_features_1271, 1, m__with_mapper_features_940).
param(p_features_1272, 1, m_with_941).
param(p_features_1273, 1, m_without_942).
param(p_feature_1274, 1, m_with_943).
param(p_state_1275, 2, m_with_943).
param(p_ai_1276, 1, m_with_944).
param(p_ai_1277, 1, m_with_appended_annotation_introspector_945).
param(p_ai_1278, 1, m_with_inserted_annotation_introspector_946).
param(p_ci_1279, 1, m_with_947).
param(p_attrs_1280, 1, m_with_948).
param(p_attributes_1281, 1, m_with_attributes_949).
param(p_key_1282, 1, m_with_attribute_950).
param(p_value_1283, 2, m_with_attribute_950).
param(p_key_1284, 1, m_without_attribute_951).
param(p_tf_1285, 1, m_with_952).
param(p_trb_1286, 1, m_with_953).
param(p_pns_1287, 1, m_with_954).
param(p_hi_1288, 1, m_with_955).
param(p_base_64_1289, 1, m_with_956).
param(p_df_1290, 1, m_with_957).
param(p_l_1291, 1, m_with_958).
param(p_tz_1292, 1, m_with_959).
param(p_root_name_1293, 1, m_with_root_name_960).
param(p_root_name_1294, 1, m_with_root_name_961).
param(p_str_1295, 1, m_with_962).
param(p_view_1296, 1, m_with_view_963).
param(p_type_1297, 1, m_get_config_override_969).
param(p_type_1298, 1, m_find_config_override_970).
param(p_base_type_1299, 1, m_get_default_property_inclusion_972).
param(p_type_1300, 1, m_get_default_property_format_973).
param(p_type_1301, 1, m_get_default_property_ignorals_974).
param(p_base_type_1302, 1, m_get_default_property_ignorals_975).
param(p_actual_class_1303, 2, m_get_default_property_ignorals_975).
param(p_base_type_1304, 1, m_get_default_visibility_checker_977).
param(p_actual_class_1305, 2, m_get_default_visibility_checker_977).
param(p_root_type_1306, 1, m_find_root_name_980).
param(p_raw_root_type_1307, 1, m_find_root_name_981).
param(p_cls_1308, 1, m_find_mix_in_class_for_982).
return(mapper_config_base_1_expr14, m_find_mix_in_class_for_982, line(mapper_config_base_1, 743)).
method_invoc(mapper_config_base_1_expr14, m_find_mix_in_class_for_983, line(mapper_config_base_1, 743)).
argument(p_cls_1308, 1, mapper_config_base_1_expr14).
ref(f__mix_ins_1244, mapper_config_base_1_expr14, line(mapper_config_base_1, 743)).

%deserializer_factory_1 - com.fasterxml.jackson.databind.deser.DeserializerFactory
assign(f_no_deserializers_1658, deserializer_factory_1_expr1, line(deserializer_factory_1, 43)).
param(p_additional_1659, 1, m_with_additional_deserializers_1123).
param(p_additional_1660, 1, m_with_additional_key_deserializers_1124).
param(p_modifier_1661, 1, m_with_deserializer_modifier_1125).
param(p_resolver_1662, 1, m_with_abstract_type_resolver_1126).
param(p_instantiators_1663, 1, m_with_value_instantiators_1127).
param(p_config_1664, 1, m_map_abstract_type_1128).
param(p_type_1665, 2, m_map_abstract_type_1128).
throw(m_map_abstract_type_1128, json_mapping_exception).
param(p_ctxt_1666, 1, m_find_value_instantiator_1129).
param(p_bean_desc_1667, 2, m_find_value_instantiator_1129).
throw(m_find_value_instantiator_1129, json_mapping_exception).
param(p_ctxt_1668, 1, m_create_bean_deserializer_1130).
param(p_type_1669, 2, m_create_bean_deserializer_1130).
param(p_bean_desc_1670, 3, m_create_bean_deserializer_1130).
throw(m_create_bean_deserializer_1130, json_mapping_exception).
param(p_ctxt_1671, 1, m_create_builder_based_deserializer_1131).
param(p_type_1672, 2, m_create_builder_based_deserializer_1131).
param(p_bean_desc_1673, 3, m_create_builder_based_deserializer_1131).
param(p_builder_class_1674, 4, m_create_builder_based_deserializer_1131).
throw(m_create_builder_based_deserializer_1131, json_mapping_exception).
param(p_ctxt_1675, 1, m_create_enum_deserializer_1132).
param(p_type_1676, 2, m_create_enum_deserializer_1132).
param(p_bean_desc_1677, 3, m_create_enum_deserializer_1132).
throw(m_create_enum_deserializer_1132, json_mapping_exception).
param(p_ctxt_1678, 1, m_create_reference_deserializer_1133).
param(p_type_1679, 2, m_create_reference_deserializer_1133).
param(p_bean_desc_1680, 3, m_create_reference_deserializer_1133).
throw(m_create_reference_deserializer_1133, json_mapping_exception).
param(p_config_1681, 1, m_create_tree_deserializer_1134).
param(p_type_1682, 2, m_create_tree_deserializer_1134).
param(p_bean_desc_1683, 3, m_create_tree_deserializer_1134).
throw(m_create_tree_deserializer_1134, json_mapping_exception).
param(p_ctxt_1684, 1, m_create_array_deserializer_1135).
param(p_type_1685, 2, m_create_array_deserializer_1135).
param(p_bean_desc_1686, 3, m_create_array_deserializer_1135).
throw(m_create_array_deserializer_1135, json_mapping_exception).
param(p_ctxt_1687, 1, m_create_collection_deserializer_1136).
param(p_type_1688, 2, m_create_collection_deserializer_1136).
param(p_bean_desc_1689, 3, m_create_collection_deserializer_1136).
throw(m_create_collection_deserializer_1136, json_mapping_exception).
param(p_ctxt_1690, 1, m_create_collection_like_deserializer_1137).
param(p_type_1691, 2, m_create_collection_like_deserializer_1137).
param(p_bean_desc_1692, 3, m_create_collection_like_deserializer_1137).
throw(m_create_collection_like_deserializer_1137, json_mapping_exception).
param(p_ctxt_1693, 1, m_create_map_deserializer_1138).
param(p_type_1694, 2, m_create_map_deserializer_1138).
param(p_bean_desc_1695, 3, m_create_map_deserializer_1138).
throw(m_create_map_deserializer_1138, json_mapping_exception).
param(p_ctxt_1696, 1, m_create_map_like_deserializer_1139).
param(p_type_1697, 2, m_create_map_like_deserializer_1139).
param(p_bean_desc_1698, 3, m_create_map_like_deserializer_1139).
throw(m_create_map_like_deserializer_1139, json_mapping_exception).
param(p_ctxt_1699, 1, m_create_key_deserializer_1140).
param(p_type_1700, 2, m_create_key_deserializer_1140).
throw(m_create_key_deserializer_1140, json_mapping_exception).
param(p_config_1701, 1, m_find_type_deserializer_1141).
param(p_base_type_1702, 2, m_find_type_deserializer_1141).
throw(m_find_type_deserializer_1141, json_mapping_exception).

%string_serializer_1 - com.fasterxml.jackson.databind.ser.std.StringSerializer
method_invoc(string_serializer_1_expr1, m_std_scalar_serializer_1707, line(string_serializer_1, 31)).
argument(string_serializer_1_expr2, 1, string_serializer_1_expr1).
argument(string_serializer_1_literal1, 2, string_serializer_1_expr1).
param(p_prov_2824, 1, m_is_empty_1812).
param(p_value_2825, 2, m_is_empty_1812).
param(p_value_2826, 1, m_serialize_1813).
param(p_gen_2827, 2, m_serialize_1813).
param(p_provider_2828, 3, m_serialize_1813).
throw(m_serialize_1813, ioexception).
param(p_value_2829, 1, m_serialize_with_type_1814).
param(p_gen_2830, 2, m_serialize_with_type_1814).
param(p_provider_2831, 3, m_serialize_with_type_1814).
param(p_type_ser_2832, 4, m_serialize_with_type_1814).
throw(m_serialize_with_type_1814, ioexception).
param(p_provider_2833, 1, m_get_schema_1815).
param(p_type_hint_2834, 2, m_get_schema_1815).
param(p_visitor_2835, 1, m_accept_json_format_visitor_1816).
param(p_type_hint_2836, 2, m_accept_json_format_visitor_1816).
throw(m_accept_json_format_visitor_1816, json_mapping_exception).

%object_mapper_1 - com.fasterxml.jackson.databind.ObjectMapper
param(p_t_530, 1, m_default_type_resolver_builder_387).
param(p_config_531, 1, m_build_type_deserializer_388).
param(p_base_type_532, 2, m_build_type_deserializer_388).
param(p_subtypes_533, 3, m_build_type_deserializer_388).
param(p_config_534, 1, m_build_type_serializer_389).
param(p_base_type_535, 2, m_build_type_serializer_389).
param(p_subtypes_536, 3, m_build_type_serializer_389).
param(p_t_537, 1, m_use_for_type_390).
assign(f_json_node_type_538, object_mapper_1_expr1, line(object_mapper_1, 286)).
assign(f_default_annotation_introspector_539, object_mapper_1_expr2, line(object_mapper_1, 291)).
method_invoc(object_mapper_1_expr2, m_jackson_annotation_introspector_391, line(object_mapper_1, 291)).
assign(f_default_base_540, object_mapper_1_expr3, line(object_mapper_1, 297)).
method_invoc(object_mapper_1_expr3, m_base_settings_392, line(object_mapper_1, 297)).
argument(object_mapper_1_literal1, 1, object_mapper_1_expr3).
argument(f_default_annotation_introspector_539, 2, object_mapper_1_expr3).
argument(object_mapper_1_literal2, 3, object_mapper_1_expr3).
argument(object_mapper_1_expr4, 4, object_mapper_1_expr3).
argument(object_mapper_1_literal3, 5, object_mapper_1_expr3).
argument(q_instance_2, 6, object_mapper_1_expr3).
argument(object_mapper_1_literal4, 7, object_mapper_1_expr3).
argument(object_mapper_1_expr5, 8, object_mapper_1_expr3).
argument(object_mapper_1_literal5, 9, object_mapper_1_expr3).
argument(object_mapper_1_expr6, 10, object_mapper_1_expr3).
assign(f__root_deserializers_541, object_mapper_1_expr7, line(object_mapper_1, 458)).
method_invoc(object_mapper_1_expr8, m_object_mapper_394, line(object_mapper_1, 480)).
argument(object_mapper_1_literal6, 1, object_mapper_1_expr8).
argument(object_mapper_1_literal7, 2, object_mapper_1_expr8).
argument(object_mapper_1_literal8, 3, object_mapper_1_expr8).
param(p_jf_542, 1, m_object_mapper_395).
param(p_src_543, 1, m_object_mapper_396).
param(p_jf_544, 1, m_object_mapper_394).
param(p_sp_545, 2, m_object_mapper_394).
param(p_dc_546, 3, m_object_mapper_394).
assign(f__json_factory_547, object_mapper_1_expr11, line(object_mapper_1, 549)).
method_invoc(object_mapper_1_expr11, m_mapping_json_factory_380, line(object_mapper_1, 549)).
argument(object_mapper_1_expr12, 1, object_mapper_1_expr11).
assign(f__subtype_resolver_548, object_mapper_1_expr14, line(object_mapper_1, 556)).
method_invoc(object_mapper_1_expr14, m_std_subtype_resolver_397, line(object_mapper_1, 556)).
assign(v_root_names_549, object_mapper_1_expr15, line(object_mapper_1, 557)).
method_invoc(object_mapper_1_expr15, m_root_name_lookup_398, line(object_mapper_1, 557)).
assign(f__type_factory_550, object_mapper_1_expr17, line(object_mapper_1, 559)).
method_invoc(object_mapper_1_expr17, m_default_instance_399, line(object_mapper_1, 559)).
ref(t_type_factory_10, object_mapper_1_expr17, line(object_mapper_1, 559)).
assign(v_mixins_551, object_mapper_1_expr18, line(object_mapper_1, 561)).
method_invoc(object_mapper_1_expr18, m_simple_mix_in_resolver_400, line(object_mapper_1, 561)).
argument(object_mapper_1_literal10, 1, object_mapper_1_expr18).
assign(f__mix_ins_552, v_mixins_551, line(object_mapper_1, 562)).
assign(v_base_553, object_mapper_1_expr20, line(object_mapper_1, 563)).
method_invoc(object_mapper_1_expr20, m_with_class_introspector_401, line(object_mapper_1, 563)).
argument(object_mapper_1_expr21, 1, object_mapper_1_expr20).
ref(f_default_base_540, object_mapper_1_expr20, line(object_mapper_1, 563)).
method_invoc(object_mapper_1_expr21, m_default_class_introspector_402, line(object_mapper_1, 563)).
assign(f__config_overrides_554, object_mapper_1_expr23, line(object_mapper_1, 564)).
method_invoc(object_mapper_1_expr23, m_config_overrides_403, line(object_mapper_1, 564)).
assign(f__serialization_config_555, object_mapper_1_expr25, line(object_mapper_1, 565)).
method_invoc(object_mapper_1_expr25, m_serialization_config_404, line(object_mapper_1, 565)).
argument(v_base_553, 1, object_mapper_1_expr25).
argument(f__subtype_resolver_548, 2, object_mapper_1_expr25).
argument(v_mixins_551, 3, object_mapper_1_expr25).
argument(v_root_names_549, 4, object_mapper_1_expr25).
argument(f__config_overrides_554, 5, object_mapper_1_expr25).
assign(f__deserialization_config_556, object_mapper_1_expr27, line(object_mapper_1, 567)).
method_invoc(object_mapper_1_expr27, m_deserialization_config_157, line(object_mapper_1, 567)).
argument(v_base_553, 1, object_mapper_1_expr27).
argument(f__subtype_resolver_548, 2, object_mapper_1_expr27).
argument(v_mixins_551, 3, object_mapper_1_expr27).
argument(v_root_names_549, 4, object_mapper_1_expr27).
argument(f__config_overrides_554, 5, object_mapper_1_expr27).
assign(v_need_order_557, object_mapper_1_expr28, line(object_mapper_1, 571)).
method_invoc(object_mapper_1_expr28, m_requires_property_ordering_405, line(object_mapper_1, 571)).
ref(f__json_factory_547, object_mapper_1_expr28, line(object_mapper_1, 571)).
method_invoc(object_mapper_1_expr30, m_is_enabled_406, line(object_mapper_1, 572)).
argument(q_sort_properties_alphabetically_3, 1, object_mapper_1_expr30).
ref(f__serialization_config_555, object_mapper_1_expr30, line(object_mapper_1, 572)).
ref(t_mapper_feature_9, q_sort_properties_alphabetically_3, line(object_mapper_1, 572)).
assign(f__serializer_provider_558, object_mapper_1_expr32, line(object_mapper_1, 576)).
cond_expr(object_mapper_1_expr33, object_mapper_1_expr34, p_sp_545, line(object_mapper_1, 576)).
assign(object_mapper_1_expr33, object_mapper_1_expr35, line(object_mapper_1, 576)).
method_invoc(object_mapper_1_expr34, m_impl_407, line(object_mapper_1, 576)).
assign(f__deserialization_context_559, object_mapper_1_expr37, line(object_mapper_1, 577)).
cond_expr(object_mapper_1_expr38, object_mapper_1_expr39, p_dc_546, line(object_mapper_1, 577)).
assign(object_mapper_1_expr38, object_mapper_1_expr40, line(object_mapper_1, 577)).
assign(f__serializer_factory_560, q_instance_4, line(object_mapper_1, 581)).
ref(t_bean_serializer_factory_11, q_instance_4, line(object_mapper_1, 581)).
return(object_mapper_1_expr42, m_default_class_introspector_402, line(object_mapper_1, 591)).
method_invoc(object_mapper_1_expr42, m_basic_class_introspector_408, line(object_mapper_1, 591)).
param(p_exp_561, 1, m__check_invalid_copy_410).
param(p_config_562, 1, m__new_reader_411).
param(p_config_563, 1, m__new_reader_412).
param(p_value_type_564, 2, m__new_reader_412).
param(p_value_to_update_565, 3, m__new_reader_412).
param(p_schema_566, 4, m__new_reader_412).
param(p_injectable_values_567, 5, m__new_reader_412).
param(p_config_568, 1, m__new_writer_413).
param(p_config_569, 1, m__new_writer_414).
param(p_schema_570, 2, m__new_writer_414).
param(p_config_571, 1, m__new_writer_415).
param(p_root_type_572, 2, m__new_writer_415).
param(p_pp_573, 3, m__new_writer_415).
param(p_module_574, 1, m_register_module_417).
param(p_f_575, 1, m_is_enabled_421).
param(p_f_576, 1, m_is_enabled_422).
param(p_f_577, 1, m_is_enabled_423).
param(p_f_578, 1, m_is_enabled_424).
param(p_f_579, 1, m_is_enabled_425).
param(p_f_580, 1, m_is_enabled_426).
param(p_type_581, 1, m_config_override_427).
param(p_d_582, 1, m_add_deserializers_428).
param(p_d_583, 1, m_add_key_deserializers_429).
param(p_modifier_584, 1, m_add_bean_deserializer_modifier_430).
param(p_s_585, 1, m_add_serializers_431).
param(p_s_586, 1, m_add_key_serializers_432).
param(p_modifier_587, 1, m_add_bean_serializer_modifier_433).
param(p_resolver_588, 1, m_add_abstract_type_resolver_434).
param(p_modifier_589, 1, m_add_type_modifier_435).
param(p_instantiators_590, 1, m_add_value_instantiators_436).
param(p_ci_591, 1, m_set_class_introspector_437).
param(p_ai_592, 1, m_insert_annotation_introspector_438).
param(p_ai_593, 1, m_append_annotation_introspector_439).
param(p_subtypes_594, 1, m_register_subtypes_440).
param(p_subtypes_595, 1, m_register_subtypes_441).
param(p_target_596, 1, m_set_mix_in_annotations_442).
param(p_mixin_source_597, 2, m_set_mix_in_annotations_442).
param(p_handler_598, 1, m_add_deserialization_problem_handler_443).
param(p_naming_599, 1, m_set_naming_strategy_444).
param(p_modules_600, 1, m_register_modules_445).
param(p_modules_601, 1, m_register_modules_446).
param(p_class_loader_602, 1, m_find_modules_448).
param(p_clazz_603, 1, m_secure_get_service_loader_449).
param(p_class_loader_604, 2, m_secure_get_service_loader_449).
return(f__deserialization_config_556, m_get_deserialization_config_453, line(object_mapper_1, 1042)).
param(p_f_605, 1, m_set_serializer_factory_455).
param(p_p_606, 1, m_set_serializer_provider_457).
param(p_source_mixins_607, 1, m_set_mix_ins_460).
param(p_target_608, 1, m_add_mix_in_461).
param(p_mixin_source_609, 2, m_add_mix_in_461).
param(p_resolver_610, 1, m_set_mix_in_resolver_462).
param(p_cls_611, 1, m_find_mix_in_class_for_463).
param(p_source_mixins_612, 1, m_set_mix_in_annotations_465).
param(p_target_613, 1, m_add_mix_in_annotations_466).
param(p_mixin_source_614, 2, m_add_mix_in_annotations_466).
param(p_vc_615, 1, m_set_visibility_468).
param(p_for_method_616, 1, m_set_visibility_469).
param(p_visibility_617, 2, m_set_visibility_469).
param(p_str_618, 1, m_set_subtype_resolver_471).
param(p_ai_619, 1, m_set_annotation_introspector_472).
param(p_serializer_ai_620, 1, m_set_annotation_introspectors_473).
param(p_deserializer_ai_621, 2, m_set_annotation_introspectors_473).
param(p_s_622, 1, m_set_property_naming_strategy_474).
param(p_pp_623, 1, m_set_default_pretty_printer_476).
param(p_vc_624, 1, m_set_visibility_checker_477).
param(p_incl_625, 1, m_set_serialization_inclusion_478).
param(p_incl_626, 1, m_set_property_inclusion_479).
param(p_incl_627, 1, m_set_default_property_inclusion_480).
param(p_incl_628, 1, m_set_default_property_inclusion_481).
param(p_v_629, 1, m_set_default_setter_info_482).
param(p_vis_630, 1, m_set_default_visibility_483).
param(p_b_631, 1, m_set_default_mergeable_484).
param(p_dti_632, 1, m_enable_default_typing_486).
param(p_applicability_633, 1, m_enable_default_typing_487).
param(p_include_as_634, 2, m_enable_default_typing_487).
param(p_applicability_635, 1, m_enable_default_typing_as_property_488).
param(p_property_name_636, 2, m_enable_default_typing_as_property_488).
param(p_typer_637, 1, m_set_default_typing_490).
param(p_classes_638, 1, m_register_subtypes_491).
param(p_types_639, 1, m_register_subtypes_492).
param(p_type_640, 1, m_config_override_493).
param(p_f_641, 1, m_set_type_factory_495).
param(p_t_642, 1, m_construct_type_496).
return(object_mapper_1_expr43, m_construct_type_496, line(object_mapper_1, 1663)).
method_invoc(object_mapper_1_expr43, m_construct_type_497, line(object_mapper_1, 1663)).
argument(p_t_642, 1, object_mapper_1_expr43).
ref(f__type_factory_550, object_mapper_1_expr43, line(object_mapper_1, 1663)).
param(p_f_643, 1, m_set_node_factory_499).
param(p_h_644, 1, m_add_handler_500).
param(p_config_645, 1, m_set_config_502).
param(p_filter_provider_646, 1, m_set_filters_503).
param(p_filter_provider_647, 1, m_set_filter_provider_504).
param(p_v_648, 1, m_set_base64_variant_505).
param(p_config_649, 1, m_set_config_506).
param(p_date_format_650, 1, m_set_date_format_509).
param(p_hi_651, 1, m_set_handler_instantiator_511).
param(p_injectable_values_652, 1, m_set_injectable_values_512).
param(p_l_653, 1, m_set_locale_514).
param(p_tz_654, 1, m_set_time_zone_515).
param(p_f_655, 1, m_is_enabled_516).
param(p_f_656, 1, m_configure_517).
param(p_state_657, 2, m_configure_517).
param(p_f_658, 1, m_enable_518).
param(p_f_659, 1, m_disable_519).
param(p_f_660, 1, m_is_enabled_520).
param(p_f_661, 1, m_configure_521).
param(p_state_662, 2, m_configure_521).
param(p_f_663, 1, m_enable_522).
param(p_first_664, 1, m_enable_523).
param(p_f_665, 2, m_enable_523).
param(p_f_666, 1, m_disable_524).
param(p_first_667, 1, m_disable_525).
param(p_f_668, 2, m_disable_525).
param(p_f_669, 1, m_is_enabled_526).
param(p_f_670, 1, m_configure_527).
param(p_state_671, 2, m_configure_527).
param(p_feature_672, 1, m_enable_528).
param(p_first_673, 1, m_enable_529).
param(p_f_674, 2, m_enable_529).
param(p_feature_675, 1, m_disable_530).
param(p_first_676, 1, m_disable_531).
param(p_f_677, 2, m_disable_531).
param(p_f_678, 1, m_is_enabled_532).
param(p_f_679, 1, m_configure_533).
param(p_state_680, 2, m_configure_533).
param(p_features_681, 1, m_enable_534).
param(p_features_682, 1, m_disable_535).
param(p_f_683, 1, m_is_enabled_536).
param(p_f_684, 1, m_configure_537).
param(p_state_685, 2, m_configure_537).
param(p_features_686, 1, m_enable_538).
param(p_features_687, 1, m_disable_539).
param(p_f_688, 1, m_is_enabled_540).
param(p_p_689, 1, m_read_value_541).
param(p_value_type_690, 2, m_read_value_541).
throw(m_read_value_541, ioexception).
throw(m_read_value_541, json_parse_exception).
throw(m_read_value_541, json_mapping_exception).
param(p_p_691, 1, m_read_value_542).
param(p_value_type_ref_692, 2, m_read_value_542).
throw(m_read_value_542, ioexception).
throw(m_read_value_542, json_parse_exception).
throw(m_read_value_542, json_mapping_exception).
param(p_p_693, 1, m_read_value_543).
param(p_value_type_694, 2, m_read_value_543).
throw(m_read_value_543, ioexception).
throw(m_read_value_543, json_parse_exception).
throw(m_read_value_543, json_mapping_exception).
param(p_p_695, 1, m_read_value_544).
param(p_value_type_696, 2, m_read_value_544).
throw(m_read_value_544, ioexception).
throw(m_read_value_544, json_parse_exception).
throw(m_read_value_544, json_mapping_exception).
param(p_p_697, 1, m_read_tree_545).
throw(m_read_tree_545, ioexception).
throw(m_read_tree_545, json_processing_exception).
param(p_p_698, 1, m_read_values_546).
param(p_value_type_699, 2, m_read_values_546).
throw(m_read_values_546, ioexception).
throw(m_read_values_546, json_processing_exception).
param(p_p_700, 1, m_read_values_547).
param(p_value_type_701, 2, m_read_values_547).
throw(m_read_values_547, ioexception).
throw(m_read_values_547, json_processing_exception).
param(p_p_702, 1, m_read_values_548).
param(p_value_type_703, 2, m_read_values_548).
throw(m_read_values_548, ioexception).
throw(m_read_values_548, json_processing_exception).
param(p_p_704, 1, m_read_values_549).
param(p_value_type_ref_705, 2, m_read_values_549).
throw(m_read_values_549, ioexception).
throw(m_read_values_549, json_processing_exception).
param(p_in_706, 1, m_read_tree_550).
throw(m_read_tree_550, ioexception).
param(p_r_707, 1, m_read_tree_551).
throw(m_read_tree_551, ioexception).
param(p_content_708, 1, m_read_tree_552).
throw(m_read_tree_552, ioexception).
param(p_content_709, 1, m_read_tree_553).
throw(m_read_tree_553, ioexception).
param(p_file_710, 1, m_read_tree_554).
throw(m_read_tree_554, ioexception).
throw(m_read_tree_554, json_processing_exception).
param(p_source_711, 1, m_read_tree_555).
throw(m_read_tree_555, ioexception).
param(p_g_712, 1, m_write_value_556).
param(p_value_713, 2, m_write_value_556).
throw(m_write_value_556, ioexception).
throw(m_write_value_556, json_generation_exception).
throw(m_write_value_556, json_mapping_exception).
param(p_jgen_714, 1, m_write_tree_557).
param(p_root_node_715, 2, m_write_tree_557).
throw(m_write_tree_557, ioexception).
throw(m_write_tree_557, json_processing_exception).
param(p_jgen_716, 1, m_write_tree_558).
param(p_root_node_717, 2, m_write_tree_558).
throw(m_write_tree_558, ioexception).
throw(m_write_tree_558, json_processing_exception).
param(p_n_718, 1, m_tree_as_tokens_561).
param(p_n_719, 1, m_tree_to_value_562).
param(p_value_type_720, 2, m_tree_to_value_562).
throw(m_tree_to_value_562, json_processing_exception).
param(p_from_value_721, 1, m_value_to_tree_563).
throw(m_value_to_tree_563, illegal_argument_exception).
param(p_type_722, 1, m_can_serialize_564).
param(p_type_723, 1, m_can_serialize_565).
param(p_cause_724, 2, m_can_serialize_565).
param(p_type_725, 1, m_can_deserialize_566).
param(p_type_726, 1, m_can_deserialize_567).
param(p_cause_727, 2, m_can_deserialize_567).
param(p_src_728, 1, m_read_value_568).
param(p_value_type_729, 2, m_read_value_568).
throw(m_read_value_568, ioexception).
throw(m_read_value_568, json_parse_exception).
throw(m_read_value_568, json_mapping_exception).
param(p_src_730, 1, m_read_value_569).
param(p_value_type_ref_731, 2, m_read_value_569).
throw(m_read_value_569, ioexception).
throw(m_read_value_569, json_parse_exception).
throw(m_read_value_569, json_mapping_exception).
param(p_src_732, 1, m_read_value_570).
param(p_value_type_733, 2, m_read_value_570).
throw(m_read_value_570, ioexception).
throw(m_read_value_570, json_parse_exception).
throw(m_read_value_570, json_mapping_exception).
param(p_src_734, 1, m_read_value_571).
param(p_value_type_735, 2, m_read_value_571).
throw(m_read_value_571, ioexception).
throw(m_read_value_571, json_parse_exception).
throw(m_read_value_571, json_mapping_exception).
param(p_src_736, 1, m_read_value_572).
param(p_value_type_ref_737, 2, m_read_value_572).
throw(m_read_value_572, ioexception).
throw(m_read_value_572, json_parse_exception).
throw(m_read_value_572, json_mapping_exception).
param(p_src_738, 1, m_read_value_573).
param(p_value_type_739, 2, m_read_value_573).
throw(m_read_value_573, ioexception).
throw(m_read_value_573, json_parse_exception).
throw(m_read_value_573, json_mapping_exception).
param(p_content_740, 1, m_read_value_574).
param(p_value_type_741, 2, m_read_value_574).
throw(m_read_value_574, ioexception).
throw(m_read_value_574, json_parse_exception).
throw(m_read_value_574, json_mapping_exception).
param(p_content_742, 1, m_read_value_575).
param(p_value_type_ref_743, 2, m_read_value_575).
throw(m_read_value_575, ioexception).
throw(m_read_value_575, json_parse_exception).
throw(m_read_value_575, json_mapping_exception).
param(p_content_744, 1, m_read_value_576).
param(p_value_type_745, 2, m_read_value_576).
throw(m_read_value_576, ioexception).
throw(m_read_value_576, json_parse_exception).
throw(m_read_value_576, json_mapping_exception).
param(p_src_746, 1, m_read_value_577).
param(p_value_type_747, 2, m_read_value_577).
throw(m_read_value_577, ioexception).
throw(m_read_value_577, json_parse_exception).
throw(m_read_value_577, json_mapping_exception).
param(p_src_748, 1, m_read_value_578).
param(p_value_type_ref_749, 2, m_read_value_578).
throw(m_read_value_578, ioexception).
throw(m_read_value_578, json_parse_exception).
throw(m_read_value_578, json_mapping_exception).
param(p_src_750, 1, m_read_value_579).
param(p_value_type_751, 2, m_read_value_579).
throw(m_read_value_579, ioexception).
throw(m_read_value_579, json_parse_exception).
throw(m_read_value_579, json_mapping_exception).
param(p_src_752, 1, m_read_value_580).
param(p_value_type_753, 2, m_read_value_580).
throw(m_read_value_580, ioexception).
throw(m_read_value_580, json_parse_exception).
throw(m_read_value_580, json_mapping_exception).
param(p_src_754, 1, m_read_value_581).
param(p_value_type_ref_755, 2, m_read_value_581).
throw(m_read_value_581, ioexception).
throw(m_read_value_581, json_parse_exception).
throw(m_read_value_581, json_mapping_exception).
param(p_src_756, 1, m_read_value_582).
param(p_value_type_757, 2, m_read_value_582).
throw(m_read_value_582, ioexception).
throw(m_read_value_582, json_parse_exception).
throw(m_read_value_582, json_mapping_exception).
param(p_src_758, 1, m_read_value_583).
param(p_value_type_759, 2, m_read_value_583).
throw(m_read_value_583, ioexception).
throw(m_read_value_583, json_parse_exception).
throw(m_read_value_583, json_mapping_exception).
param(p_src_760, 1, m_read_value_584).
param(p_offset_761, 2, m_read_value_584).
param(p_len_762, 3, m_read_value_584).
param(p_value_type_763, 4, m_read_value_584).
throw(m_read_value_584, ioexception).
throw(m_read_value_584, json_parse_exception).
throw(m_read_value_584, json_mapping_exception).
param(p_src_764, 1, m_read_value_585).
param(p_value_type_ref_765, 2, m_read_value_585).
throw(m_read_value_585, ioexception).
throw(m_read_value_585, json_parse_exception).
throw(m_read_value_585, json_mapping_exception).
param(p_src_766, 1, m_read_value_586).
param(p_offset_767, 2, m_read_value_586).
param(p_len_768, 3, m_read_value_586).
param(p_value_type_ref_769, 4, m_read_value_586).
throw(m_read_value_586, ioexception).
throw(m_read_value_586, json_parse_exception).
throw(m_read_value_586, json_mapping_exception).
param(p_src_770, 1, m_read_value_587).
param(p_value_type_771, 2, m_read_value_587).
throw(m_read_value_587, ioexception).
throw(m_read_value_587, json_parse_exception).
throw(m_read_value_587, json_mapping_exception).
param(p_src_772, 1, m_read_value_588).
param(p_offset_773, 2, m_read_value_588).
param(p_len_774, 3, m_read_value_588).
param(p_value_type_775, 4, m_read_value_588).
throw(m_read_value_588, ioexception).
throw(m_read_value_588, json_parse_exception).
throw(m_read_value_588, json_mapping_exception).
param(p_src_776, 1, m_read_value_589).
param(p_value_type_777, 2, m_read_value_589).
throw(m_read_value_589, ioexception).
param(p_src_778, 1, m_read_value_590).
param(p_value_type_779, 2, m_read_value_590).
throw(m_read_value_590, ioexception).
param(p_result_file_780, 1, m_write_value_591).
param(p_value_781, 2, m_write_value_591).
throw(m_write_value_591, ioexception).
throw(m_write_value_591, json_generation_exception).
throw(m_write_value_591, json_mapping_exception).
param(p_out_782, 1, m_write_value_592).
param(p_value_783, 2, m_write_value_592).
throw(m_write_value_592, ioexception).
throw(m_write_value_592, json_generation_exception).
throw(m_write_value_592, json_mapping_exception).
param(p_out_784, 1, m_write_value_593).
param(p_value_785, 2, m_write_value_593).
throw(m_write_value_593, ioexception).
param(p_w_786, 1, m_write_value_594).
param(p_value_787, 2, m_write_value_594).
throw(m_write_value_594, ioexception).
throw(m_write_value_594, json_generation_exception).
throw(m_write_value_594, json_mapping_exception).
param(p_value_788, 1, m_write_value_as_string_595).
throw(m_write_value_as_string_595, json_processing_exception).
param(p_value_789, 1, m_write_value_as_bytes_596).
throw(m_write_value_as_bytes_596, json_processing_exception).
param(p_feature_790, 1, m_writer_598).
param(p_first_791, 1, m_writer_599).
param(p_other_792, 2, m_writer_599).
param(p_df_793, 1, m_writer_600).
param(p_serialization_view_794, 1, m_writer_with_view_601).
param(p_root_type_795, 1, m_writer_for_602).
param(p_root_type_796, 1, m_writer_for_603).
param(p_root_type_797, 1, m_writer_for_604).
param(p_pp_798, 1, m_writer_605).
param(p_filter_provider_799, 1, m_writer_607).
param(p_schema_800, 1, m_writer_608).
param(p_default_base64_801, 1, m_writer_609).
param(p_escapes_802, 1, m_writer_610).
param(p_attrs_803, 1, m_writer_611).
param(p_root_type_804, 1, m_writer_with_type_612).
param(p_root_type_805, 1, m_writer_with_type_613).
param(p_root_type_806, 1, m_writer_with_type_614).
param(p_feature_807, 1, m_reader_616).
param(p_first_808, 1, m_reader_617).
param(p_other_809, 2, m_reader_617).
param(p_value_to_update_810, 1, m_reader_for_updating_618).
param(p_type_811, 1, m_reader_for_619).
param(p_type_812, 1, m_reader_for_620).
param(p_type_813, 1, m_reader_for_621).
param(p_f_814, 1, m_reader_622).
param(p_schema_815, 1, m_reader_623).
param(p_injectable_values_816, 1, m_reader_624).
param(p_view_817, 1, m_reader_with_view_625).
param(p_default_base64_818, 1, m_reader_626).
param(p_attrs_819, 1, m_reader_627).
param(p_type_820, 1, m_reader_628).
param(p_type_821, 1, m_reader_629).
param(p_type_822, 1, m_reader_630).
param(p_from_value_823, 1, m_convert_value_631).
param(p_to_value_type_824, 2, m_convert_value_631).
throw(m_convert_value_631, illegal_argument_exception).
param(p_from_value_825, 1, m_convert_value_632).
param(p_to_value_type_ref_826, 2, m_convert_value_632).
throw(m_convert_value_632, illegal_argument_exception).
param(p_from_value_827, 1, m_convert_value_633).
param(p_to_value_type_828, 2, m_convert_value_633).
throw(m_convert_value_633, illegal_argument_exception).
param(p_from_value_829, 1, m__convert_634).
param(p_to_value_type_830, 2, m__convert_634).
throw(m__convert_634, illegal_argument_exception).
param(p_value_to_update_831, 1, m_update_value_635).
param(p_overrides_832, 2, m_update_value_635).
throw(m_update_value_635, json_mapping_exception).
param(p_t_833, 1, m_generate_json_schema_636).
throw(m_generate_json_schema_636, json_mapping_exception).
param(p_type_834, 1, m_accept_json_format_visitor_637).
param(p_visitor_835, 2, m_accept_json_format_visitor_637).
throw(m_accept_json_format_visitor_637, json_mapping_exception).
param(p_type_836, 1, m_accept_json_format_visitor_638).
param(p_visitor_837, 2, m_accept_json_format_visitor_638).
throw(m_accept_json_format_visitor_638, json_mapping_exception).
param(p_config_838, 1, m__serializer_provider_639).
param(p_g_839, 1, m__config_and_write_value_640).
param(p_value_840, 2, m__config_and_write_value_640).
throw(m__config_and_write_value_640, ioexception).
param(p_g_841, 1, m__config_and_write_closeable_641).
param(p_value_842, 2, m__config_and_write_closeable_641).
param(p_cfg_843, 3, m__config_and_write_closeable_641).
throw(m__config_and_write_closeable_641, ioexception).
param(p_g_844, 1, m__write_closeable_value_642).
param(p_value_845, 2, m__write_closeable_value_642).
param(p_cfg_846, 3, m__write_closeable_value_642).
throw(m__write_closeable_value_642, ioexception).
param(p_p_847, 1, m_create_deserialization_context_643).
param(p_cfg_848, 2, m_create_deserialization_context_643).
param(p_cfg_849, 1, m__read_value_644).
param(p_p_850, 2, m__read_value_644).
param(p_value_type_851, 3, m__read_value_644).
throw(m__read_value_644, ioexception).
param(p_p_0_852, 1, m__read_map_and_close_645).
param(p_value_type_853, 2, m__read_map_and_close_645).
throw(m__read_map_and_close_645, ioexception).
param(p_p_0_854, 1, m__read_tree_and_close_646).
throw(m__read_tree_and_close_646, ioexception).
param(p_p_855, 1, m__init_for_reading_647).
param(p_target_type_856, 2, m__init_for_reading_647).
throw(m__init_for_reading_647, ioexception).
param(p_p_857, 1, m__init_for_reading_648).
throw(m__init_for_reading_648, ioexception).
param(p_p_858, 1, m__unwrap_and_deserialize_649).
param(p_ctxt_859, 2, m__unwrap_and_deserialize_649).
param(p_config_860, 3, m__unwrap_and_deserialize_649).
param(p_root_type_861, 4, m__unwrap_and_deserialize_649).
param(p_deser_862, 5, m__unwrap_and_deserialize_649).
throw(m__unwrap_and_deserialize_649, ioexception).
param(p_ctxt_863, 1, m__find_root_deserializer_650).
param(p_value_type_864, 2, m__find_root_deserializer_650).
throw(m__find_root_deserializer_650, json_mapping_exception).
param(p_schema_865, 1, m__verify_schema_type_651).

%jackson_annotation_introspector_1 - com.fasterxml.jackson.databind.introspect.JacksonAnnotationIntrospector
assign(f_annotations_to_infer_ser_1976, jackson_annotation_introspector_1_expr1, line(jackson_annotation_introspector_1, 37)).
assign(jackson_annotation_introspector_1_expr1, jackson_annotation_introspector_1_expr2, line(jackson_annotation_introspector_1, 37)).
assign(f_annotations_to_infer_deser_1977, jackson_annotation_introspector_1_expr3, line(jackson_annotation_introspector_1, 50)).
assign(jackson_annotation_introspector_1_expr3, jackson_annotation_introspector_1_expr4, line(jackson_annotation_introspector_1, 50)).
assign(v_x_1978, jackson_annotation_introspector_1_literal1, line(jackson_annotation_introspector_1, 66)).
assign(v_x_1978, jackson_annotation_introspector_1_expr6, line(jackson_annotation_introspector_1, 68)).
method_invoc(jackson_annotation_introspector_1_expr6, m_instance_1149, line(jackson_annotation_introspector_1, 68)).
ref(t_java7_support_27, jackson_annotation_introspector_1_expr6, line(jackson_annotation_introspector_1, 68)).
assign(f__java_7helper_1980, v_x_1978, line(jackson_annotation_introspector_1, 70)).
assign(f__annotations_inside_1981, jackson_annotation_introspector_1_expr8, line(jackson_annotation_introspector_1, 82)).
method_invoc(jackson_annotation_introspector_1_expr8, m_lrumap_1333, line(jackson_annotation_introspector_1, 82)).
argument(jackson_annotation_introspector_1_literal2, 1, jackson_annotation_introspector_1_expr8).
argument(jackson_annotation_introspector_1_literal3, 2, jackson_annotation_introspector_1_expr8).
assign(f__cfg_constructor_properties_implies_creator_1982, jackson_annotation_introspector_1_literal4, line(jackson_annotation_introspector_1, 98)).
param(p_b_1983, 1, m_set_constructor_properties_implies_creator_1358).
param(p_ann_1984, 1, m_is_annotation_bundle_1359).
assign(v_type_1985, jackson_annotation_introspector_1_expr9, line(jackson_annotation_introspector_1, 158)).
method_invoc(jackson_annotation_introspector_1_expr9, m_annotation_type_1244, line(jackson_annotation_introspector_1, 158)).
ref(p_ann_1984, jackson_annotation_introspector_1_expr9, line(jackson_annotation_introspector_1, 158)).
assign(v_b_1986, jackson_annotation_introspector_1_expr10, line(jackson_annotation_introspector_1, 159)).
method_invoc(jackson_annotation_introspector_1_expr10, m_get_1360, line(jackson_annotation_introspector_1, 159)).
argument(v_type_1985, 1, jackson_annotation_introspector_1_expr10).
ref(f__annotations_inside_1981, jackson_annotation_introspector_1_expr10, line(jackson_annotation_introspector_1, 159)).
assign(v_b_1986, jackson_annotation_introspector_1_expr13, line(jackson_annotation_introspector_1, 161)).
method_invoc(jackson_annotation_introspector_1_expr14, m_get_annotation_1361, line(jackson_annotation_introspector_1, 161)).
argument(jackson_annotation_introspector_1_expr15, 1, jackson_annotation_introspector_1_expr14).
ref(v_type_1985, jackson_annotation_introspector_1_expr14, line(jackson_annotation_introspector_1, 161)).
method_invoc(jackson_annotation_introspector_1_expr16, m_put_if_absent_1362, line(jackson_annotation_introspector_1, 162)).
argument(v_type_1985, 1, jackson_annotation_introspector_1_expr16).
argument(v_b_1986, 2, jackson_annotation_introspector_1_expr16).
ref(f__annotations_inside_1981, jackson_annotation_introspector_1_expr16, line(jackson_annotation_introspector_1, 162)).
return(jackson_annotation_introspector_1_expr17, m_is_annotation_bundle_1359, line(jackson_annotation_introspector_1, 164)).
method_invoc(jackson_annotation_introspector_1_expr17, m_boolean_value_1363, line(jackson_annotation_introspector_1, 164)).
ref(v_b_1986, jackson_annotation_introspector_1_expr17, line(jackson_annotation_introspector_1, 164)).
param(p_value_1987, 1, m_find_enum_value_1364).
param(p_enum_type_1988, 1, m_find_enum_values_1365).
param(p_enum_values_1989, 2, m_find_enum_values_1365).
param(p_names_1990, 3, m_find_enum_values_1365).
param(p_enum_cls_1991, 1, m_find_default_enum_value_1366).
param(p_ac_1992, 1, m_find_root_name_1367).
param(p_a_1993, 1, m_find_property_ignorals_1368).
param(p_ac_1994, 1, m_is_ignorable_type_1369).
param(p_a_1995, 1, m_find_filter_id_1370).
param(p_ac_1996, 1, m_find_naming_strategy_1371).
param(p_ac_1997, 1, m_find_class_description_1372).
param(p_ac_1998, 1, m_find_auto_detect_visibility_1373).
param(p_checker_1999, 2, m_find_auto_detect_visibility_1373).
param(p_m_2000, 1, m_find_implicit_property_name_1374).
param(p_m_2001, 1, m_find_property_aliases_1375).
param(p_m_2002, 1, m_has_ignore_marker_1376).
param(p_m_2003, 1, m_has_required_marker_1377).
param(p_m_2004, 1, m_find_property_access_1378).
param(p_ann_2005, 1, m_find_property_description_1379).
param(p_ann_2006, 1, m_find_property_index_1380).
param(p_ann_2007, 1, m_find_property_default_value_1381).
param(p_ann_2008, 1, m_find_format_1382).
param(p_member_2009, 1, m_find_reference_type_1383).
param(p_member_2010, 1, m_find_unwrapping_name_transformer_1384).
param(p_m_2011, 1, m_find_injectable_value_1385).
param(p_m_2012, 1, m_find_injectable_value_id_1386).
param(p_a_2013, 1, m_find_views_1387).
param(p_config_2014, 1, m_resolve_setter_conflict_1388).
param(p_setter_1_2015, 2, m_resolve_setter_conflict_1388).
param(p_setter_2_2016, 3, m_resolve_setter_conflict_1388).
param(p_config_2017, 1, m_find_type_resolver_1389).
param(p_ac_2018, 2, m_find_type_resolver_1389).
param(p_base_type_2019, 3, m_find_type_resolver_1389).
param(p_config_2020, 1, m_find_property_type_resolver_1390).
param(p_am_2021, 2, m_find_property_type_resolver_1390).
param(p_base_type_2022, 3, m_find_property_type_resolver_1390).
param(p_config_2023, 1, m_find_property_content_type_resolver_1391).
param(p_am_2024, 2, m_find_property_content_type_resolver_1391).
param(p_container_type_2025, 3, m_find_property_content_type_resolver_1391).
param(p_a_2026, 1, m_find_subtypes_1392).
assign(v_t_2027, jackson_annotation_introspector_1_expr18, line(jackson_annotation_introspector_1, 556)).
method_invoc(jackson_annotation_introspector_1_expr18, m__find_annotation_93, line(jackson_annotation_introspector_1, 556)).
throw(jackson_annotation_introspector_1_expr18, null_pointer_exception, line(jackson_annotation_introspector_1, 556)).
argument(p_a_2026, 1, jackson_annotation_introspector_1_expr18).
argument(jackson_annotation_introspector_1_expr19, 2, jackson_annotation_introspector_1_expr18).
return(jackson_annotation_introspector_1_literal8, m_find_subtypes_1392, line(jackson_annotation_introspector_1, 557)).
assign(v_types_2028, jackson_annotation_introspector_1_expr21, line(jackson_annotation_introspector_1, 558)).
method_invoc(jackson_annotation_introspector_1_expr21, m_value_1393, line(jackson_annotation_introspector_1, 558)).
ref(v_t_2027, jackson_annotation_introspector_1_expr21, line(jackson_annotation_introspector_1, 558)).
assign(v_result_2029, jackson_annotation_introspector_1_expr22, line(jackson_annotation_introspector_1, 559)).
method_invoc(jackson_annotation_introspector_1_expr22, m_array_list_1394, line(jackson_annotation_introspector_1, 559)).
argument(q_length_12, 1, jackson_annotation_introspector_1_expr22).
ref(v_types_2028, q_length_12, line(jackson_annotation_introspector_1, 559)).
ref(v_types_2028, jackson_annotation_introspector_1_stmt16, line(jackson_annotation_introspector_1, 560)).
method_invoc(jackson_annotation_introspector_1_expr23, m_add_1395, line(jackson_annotation_introspector_1, 561)).
argument(jackson_annotation_introspector_1_expr24, 1, jackson_annotation_introspector_1_expr23).
ref(v_result_2029, jackson_annotation_introspector_1_expr23, line(jackson_annotation_introspector_1, 561)).
method_invoc(jackson_annotation_introspector_1_expr24, m_named_type_1396, line(jackson_annotation_introspector_1, 561)).
argument(jackson_annotation_introspector_1_expr25, 1, jackson_annotation_introspector_1_expr24).
argument(jackson_annotation_introspector_1_expr26, 2, jackson_annotation_introspector_1_expr24).
method_invoc(jackson_annotation_introspector_1_expr25, m_value_1397, line(jackson_annotation_introspector_1, 561)).
ref(v_type_2030, jackson_annotation_introspector_1_expr25, line(jackson_annotation_introspector_1, 561)).
method_invoc(jackson_annotation_introspector_1_expr26, m_name_1398, line(jackson_annotation_introspector_1, 561)).
ref(v_type_2030, jackson_annotation_introspector_1_expr26, line(jackson_annotation_introspector_1, 561)).
return(v_result_2029, m_find_subtypes_1392, line(jackson_annotation_introspector_1, 563)).
param(p_ac_2031, 1, m_find_type_name_1399).
assign(v_tn_2032, jackson_annotation_introspector_1_expr27, line(jackson_annotation_introspector_1, 569)).
method_invoc(jackson_annotation_introspector_1_expr27, m__find_annotation_93, line(jackson_annotation_introspector_1, 569)).
argument(p_ac_2031, 1, jackson_annotation_introspector_1_expr27).
argument(jackson_annotation_introspector_1_expr28, 2, jackson_annotation_introspector_1_expr27).
return(jackson_annotation_introspector_1_expr29, m_find_type_name_1399, line(jackson_annotation_introspector_1, 570)).
cond_expr(jackson_annotation_introspector_1_expr30, jackson_annotation_introspector_1_literal9, jackson_annotation_introspector_1_expr31, line(jackson_annotation_introspector_1, 570)).
assign(jackson_annotation_introspector_1_expr30, jackson_annotation_introspector_1_expr32, line(jackson_annotation_introspector_1, 570)).
method_invoc(jackson_annotation_introspector_1_expr31, m_value_1400, line(jackson_annotation_introspector_1, 570)).
ref(v_tn_2032, jackson_annotation_introspector_1_expr31, line(jackson_annotation_introspector_1, 570)).
param(p_member_2033, 1, m_is_type_id_1401).
param(p_ann_2034, 1, m_find_object_id_info_1402).
param(p_ann_2035, 1, m_find_object_reference_info_1403).
param(p_object_id_info_2036, 2, m_find_object_reference_info_1403).
param(p_a_2037, 1, m_find_serializer_1404).
param(p_a_2038, 1, m_find_key_serializer_1405).
param(p_a_2039, 1, m_find_content_serializer_1406).
param(p_a_2040, 1, m_find_null_serializer_1407).
param(p_a_2041, 1, m_find_property_inclusion_1408).
param(p_a_2042, 1, m__refine_property_inclusion_1409).
param(p_value_2043, 2, m__refine_property_inclusion_1409).
param(p_a_2044, 1, m_find_serialization_typing_1410).
param(p_a_2045, 1, m_find_serialization_converter_1411).
param(p_a_2046, 1, m_find_serialization_content_converter_1412).
param(p_config_2047, 1, m_refine_serialization_type_1413).
param(p_a_2048, 2, m_refine_serialization_type_1413).
param(p_base_type_2049, 3, m_refine_serialization_type_1413).
throw(m_refine_serialization_type_1413, json_mapping_exception).
param(p_am_2050, 1, m_find_serialization_type_1414).
param(p_am_2051, 1, m_find_serialization_key_type_1415).
param(p_base_type_2052, 2, m_find_serialization_key_type_1415).
param(p_am_2053, 1, m_find_serialization_content_type_1416).
param(p_base_type_2054, 2, m_find_serialization_content_type_1416).
param(p_ac_2055, 1, m_find_serialization_property_order_1417).
param(p_ann_2056, 1, m_find_serialization_sort_alphabetically_1418).
param(p_ann_2057, 1, m__find_sort_alpha_1419).
param(p_config_2058, 1, m_find_and_add_virtual_properties_1420).
param(p_ac_2059, 2, m_find_and_add_virtual_properties_1420).
param(p_properties_2060, 3, m_find_and_add_virtual_properties_1420).
param(p_attr_2061, 1, m__construct_virtual_property_1421).
param(p_config_2062, 2, m__construct_virtual_property_1421).
param(p_ac_2063, 3, m__construct_virtual_property_1421).
param(p_type_2064, 4, m__construct_virtual_property_1421).
param(p_prop_2065, 1, m__construct_virtual_property_1422).
param(p_config_2066, 2, m__construct_virtual_property_1422).
param(p_ac_2067, 3, m__construct_virtual_property_1422).
param(p_a_2068, 1, m_find_name_for_serialization_1423).
param(p_a_2069, 1, m_has_as_value_1424).
param(p_a_2070, 1, m_has_any_getter_1425).
param(p_am_2071, 1, m_has_any_getter_annotation_1426).
param(p_am_2072, 1, m_has_as_value_annotation_1427).
param(p_a_2073, 1, m_find_deserializer_1428).
param(p_a_2074, 1, m_find_key_deserializer_1429).
param(p_a_2075, 1, m_find_content_deserializer_1430).
param(p_a_2076, 1, m_find_deserialization_converter_1431).
param(p_a_2077, 1, m_find_deserialization_content_converter_1432).
param(p_config_2078, 1, m_refine_deserialization_type_1433).
param(p_a_2079, 2, m_refine_deserialization_type_1433).
param(p_base_type_2080, 3, m_refine_deserialization_type_1433).
throw(m_refine_deserialization_type_1433, json_mapping_exception).
param(p_am_2081, 1, m_find_deserialization_content_type_1434).
param(p_base_content_type_2082, 2, m_find_deserialization_content_type_1434).
param(p_am_2083, 1, m_find_deserialization_type_1435).
param(p_base_type_2084, 2, m_find_deserialization_type_1435).
param(p_am_2085, 1, m_find_deserialization_key_type_1436).
param(p_base_key_type_2086, 2, m_find_deserialization_key_type_1436).
param(p_ac_2087, 1, m_find_value_instantiator_1437).
param(p_ac_2088, 1, m_find_pojobuilder_1438).
param(p_ac_2089, 1, m_find_pojobuilder_config_1439).
param(p_a_2090, 1, m_find_name_for_deserialization_1440).
param(p_a_2091, 1, m_has_any_setter_1441).
param(p_a_2092, 1, m_find_setter_info_1442).
param(p_a_2093, 1, m_find_merge_info_1443).
param(p_am_2094, 1, m_has_any_setter_annotation_1444).
param(p_a_2095, 1, m_has_creator_annotation_1445).
param(p_a_2096, 1, m_find_creator_binding_1446).
param(p_config_2097, 1, m_find_creator_annotation_1447).
param(p_a_2098, 2, m_find_creator_annotation_1447).
param(p_a_2099, 1, m__is_ignorable_1448).
param(p_cls_2100, 1, m__class_if_explicit_1449).
param(p_cls_2101, 1, m__class_if_explicit_1450).
param(p_implicit_2102, 2, m__class_if_explicit_1450).
param(p_local_name_2103, 1, m__property_name_1451).
param(p_namespace_2104, 2, m__property_name_1451).
param(p_a_2105, 1, m__find_constructor_name_1452).
param(p_config_2106, 1, m__find_type_resolver_1453).
param(p_ann_2107, 2, m__find_type_resolver_1453).
param(p_base_type_2108, 3, m__find_type_resolver_1453).

%annotation_collector_1 - com.fasterxml.jackson.databind.introspect.AnnotationCollector
assign(f_no_annotations_1813, annotation_collector_1_expr1, line(annotation_collector_1, 18)).
method_invoc(annotation_collector_1_expr1, m_no_annotations_1233, line(annotation_collector_1, 18)).
param(p_d_1814, 1, m_annotation_collector_1234).
assign(f__data_1815, p_d_1814, line(annotation_collector_1, 26)).
return(f_no_annotations_1813, m_empty_annotations_1211, line(annotation_collector_1, 29)).
return(q_instance_8, m_empty_collector_1226, line(annotation_collector_1, 32)).
ref(t_empty_collector_31, q_instance_8, line(annotation_collector_1, 32)).
param(p_data_1816, 1, m_empty_collector_1235).
param(p_ann_1817, 1, m_is_present_1230).
param(p_ann_1818, 1, m_add_or_override_1231).
assign(f_instance_1819, annotation_collector_1_expr3, line(annotation_collector_1, 64)).
method_invoc(annotation_collector_1_expr3, m_empty_collector_1238, line(annotation_collector_1, 64)).
argument(annotation_collector_1_literal1, 1, annotation_collector_1_expr3).
param(p_data_1820, 1, m_empty_collector_1238).
method_invoc(annotation_collector_1_expr4, m_annotation_collector_1234, line(annotation_collector_1, 66)).
argument(p_data_1820, 1, annotation_collector_1_expr4).
return(f_no_annotations_1813, m_as_annotations_1239, line(annotation_collector_1, 70)).
param(p_ann_1821, 1, m_is_present_1241).
return(annotation_collector_1_literal2, m_is_present_1241, line(annotation_collector_1, 79)).
param(p_ann_1822, 1, m_add_or_override_1242).
return(annotation_collector_1_expr5, m_add_or_override_1242, line(annotation_collector_1, 83)).
method_invoc(annotation_collector_1_expr5, m_one_collector_1243, line(annotation_collector_1, 83)).
argument(f__data_1815, 1, annotation_collector_1_expr5).
argument(annotation_collector_1_expr6, 2, annotation_collector_1_expr5).
argument(p_ann_1822, 3, annotation_collector_1_expr5).
method_invoc(annotation_collector_1_expr6, m_annotation_type_1244, line(annotation_collector_1, 83)).
ref(p_ann_1822, annotation_collector_1_expr6, line(annotation_collector_1, 83)).
param(p_data_1823, 1, m_one_collector_1243).
param(p_type_1824, 2, m_one_collector_1243).
param(p_value_1825, 3, m_one_collector_1243).
method_invoc(annotation_collector_1_expr7, m_annotation_collector_1234, line(annotation_collector_1, 94)).
argument(p_data_1823, 1, annotation_collector_1_expr7).
assign(f__type_1826, p_type_1824, line(annotation_collector_1, 95)).
assign(f__value_1827, p_value_1825, line(annotation_collector_1, 96)).
return(annotation_collector_1_expr10, m_as_annotations_1245, line(annotation_collector_1, 101)).
method_invoc(annotation_collector_1_expr10, m_one_annotation_1246, line(annotation_collector_1, 101)).
argument(f__type_1826, 1, annotation_collector_1_expr10).
argument(f__value_1827, 2, annotation_collector_1_expr10).
param(p_ann_1828, 1, m_is_present_1248).
return(annotation_collector_1_expr11, m_is_present_1248, line(annotation_collector_1, 111)).
method_invoc(annotation_collector_1_expr12, m_annotation_type_1244, line(annotation_collector_1, 111)).
ref(p_ann_1828, annotation_collector_1_expr12, line(annotation_collector_1, 111)).
param(p_ann_1829, 1, m_add_or_override_1249).
assign(v_type_1830, annotation_collector_1_expr13, line(annotation_collector_1, 116)).
method_invoc(annotation_collector_1_expr13, m_annotation_type_1244, line(annotation_collector_1, 116)).
ref(p_ann_1829, annotation_collector_1_expr13, line(annotation_collector_1, 116)).
return(annotation_collector_1_expr15, m_add_or_override_1249, line(annotation_collector_1, 122)).
method_invoc(annotation_collector_1_expr15, m_ncollector_1250, line(annotation_collector_1, 122)).
argument(f__data_1815, 1, annotation_collector_1_expr15).
argument(f__type_1826, 2, annotation_collector_1_expr15).
argument(f__value_1827, 3, annotation_collector_1_expr15).
argument(v_type_1830, 4, annotation_collector_1_expr15).
argument(p_ann_1829, 5, annotation_collector_1_expr15).
param(p_data_1831, 1, m_ncollector_1250).
param(p_type_1_1832, 2, m_ncollector_1250).
param(p_value_1_1833, 3, m_ncollector_1250).
param(p_type_2_1834, 4, m_ncollector_1250).
param(p_value_2_1835, 5, m_ncollector_1250).
method_invoc(annotation_collector_1_expr16, m_annotation_collector_1234, line(annotation_collector_1, 133)).
argument(p_data_1831, 1, annotation_collector_1_expr16).
assign(f__annotations_1836, annotation_collector_1_expr18, line(annotation_collector_1, 134)).
method_invoc(annotation_collector_1_expr18, m_hash_map_1251, line(annotation_collector_1, 134)).
method_invoc(annotation_collector_1_expr19, m_put_997, line(annotation_collector_1, 135)).
argument(p_type_1_1832, 1, annotation_collector_1_expr19).
argument(p_value_1_1833, 2, annotation_collector_1_expr19).
ref(f__annotations_1836, annotation_collector_1_expr19, line(annotation_collector_1, 135)).
method_invoc(annotation_collector_1_expr20, m_put_997, line(annotation_collector_1, 136)).
argument(p_type_2_1834, 1, annotation_collector_1_expr20).
argument(p_value_2_1835, 2, annotation_collector_1_expr20).
ref(f__annotations_1836, annotation_collector_1_expr20, line(annotation_collector_1, 136)).
method_invoc(annotation_collector_1_expr22, m_size_1253, line(annotation_collector_1, 141)).
ref(f__annotations_1836, annotation_collector_1_expr22, line(annotation_collector_1, 141)).
assign(v_it_1837, annotation_collector_1_expr23, line(annotation_collector_1, 142)).
method_invoc(annotation_collector_1_expr23, m_iterator_1254, line(annotation_collector_1, 142)).
ref(annotation_collector_1_expr24, annotation_collector_1_expr23, line(annotation_collector_1, 142)).
method_invoc(annotation_collector_1_expr24, m_entry_set_1255, line(annotation_collector_1, 142)).
ref(f__annotations_1836, annotation_collector_1_expr24, line(annotation_collector_1, 142)).
assign(v_en_1_1838, annotation_collector_1_expr25, line(annotation_collector_1, 143)).
method_invoc(annotation_collector_1_expr25, m_next_1256, line(annotation_collector_1, 143)).
ref(v_it_1837, annotation_collector_1_expr25, line(annotation_collector_1, 143)).
assign(v_en_2_1839, annotation_collector_1_expr26, line(annotation_collector_1, 143)).
method_invoc(annotation_collector_1_expr26, m_next_1256, line(annotation_collector_1, 143)).
ref(v_it_1837, annotation_collector_1_expr26, line(annotation_collector_1, 143)).
return(annotation_collector_1_expr27, m_as_annotations_1252, line(annotation_collector_1, 144)).
method_invoc(annotation_collector_1_expr27, m_two_annotations_1257, line(annotation_collector_1, 144)).
argument(annotation_collector_1_expr28, 1, annotation_collector_1_expr27).
argument(annotation_collector_1_expr29, 2, annotation_collector_1_expr27).
argument(annotation_collector_1_expr30, 3, annotation_collector_1_expr27).
argument(annotation_collector_1_expr31, 4, annotation_collector_1_expr27).
method_invoc(annotation_collector_1_expr28, m_get_key_1258, line(annotation_collector_1, 144)).
ref(v_en_1_1838, annotation_collector_1_expr28, line(annotation_collector_1, 144)).
method_invoc(annotation_collector_1_expr29, m_get_value_1259, line(annotation_collector_1, 144)).
ref(v_en_1_1838, annotation_collector_1_expr29, line(annotation_collector_1, 144)).
param(p_ann_1840, 1, m_is_present_1261).
param(p_ann_1841, 1, m_add_or_override_1262).
param(p_cls_1842, 1, m_get_1263).
return(annotation_collector_1_literal4, m_get_1263, line(annotation_collector_1, 192)).
param(p_cls_1843, 1, m_has_1264).
param(p_anno_classes_1844, 1, m_has_one_of_1265).
param(p_type_1845, 1, m_one_annotation_1246).
param(p_value_1846, 2, m_one_annotation_1246).
assign(f__type_1847, p_type_1845, line(annotation_collector_1, 220)).
assign(f__value_1848, p_value_1846, line(annotation_collector_1, 221)).
param(p_cls_1849, 1, m_get_1267).
return(annotation_collector_1_expr35, m_get_1267, line(annotation_collector_1, 228)).
assign(annotation_collector_1_expr35, f__value_1848, line(annotation_collector_1, 228)).
return(annotation_collector_1_literal5, m_get_1267, line(annotation_collector_1, 230)).
param(p_cls_1850, 1, m_has_1268).
param(p_anno_classes_1851, 1, m_has_one_of_1269).
param(p_type_1_1852, 1, m_two_annotations_1257).
param(p_value_1_1853, 2, m_two_annotations_1257).
param(p_type_2_1854, 3, m_two_annotations_1257).
param(p_value_2_1855, 4, m_two_annotations_1257).
assign(f__type_1_1856, p_type_1_1852, line(annotation_collector_1, 264)).
assign(f__value_1_1857, p_value_1_1853, line(annotation_collector_1, 265)).
assign(f__type_2_1858, p_type_2_1854, line(annotation_collector_1, 266)).
assign(f__value_2_1859, p_value_2_1855, line(annotation_collector_1, 267)).
param(p_cls_1860, 1, m_get_1271).
return(annotation_collector_1_expr42, m_get_1271, line(annotation_collector_1, 277)).
assign(annotation_collector_1_expr42, f__value_2_1859, line(annotation_collector_1, 277)).
return(annotation_collector_1_literal6, m_get_1271, line(annotation_collector_1, 279)).
param(p_cls_1861, 1, m_has_1272).
param(p_anno_classes_1862, 1, m_has_one_of_1273).

%databind_context_1 - com.fasterxml.jackson.databind.DatabindContext
param(p_feature_131, 1, m_is_enabled_135).
param(p_base_type_132, 1, m_get_default_property_format_140).
param(p_key_133, 1, m_get_attribute_141).
param(p_key_134, 1, m_set_attribute_142).
param(p_value_135, 2, m_set_attribute_142).
param(p_type_136, 1, m_construct_type_143).
param(p_base_type_137, 1, m_construct_specialized_type_144).
param(p_subclass_138, 2, m_construct_specialized_type_144).
param(p_annotated_139, 1, m_object_id_generator_instance_146).
param(p_object_id_info_140, 2, m_object_id_generator_instance_146).
throw(m_object_id_generator_instance_146, json_mapping_exception).
param(p_annotated_141, 1, m_object_id_resolver_instance_147).
param(p_object_id_info_142, 2, m_object_id_resolver_instance_147).
param(p_annotated_143, 1, m_converter_instance_148).
param(p_converter_def_144, 2, m_converter_instance_148).
throw(m_converter_instance_148, json_mapping_exception).
param(p_type_145, 1, m_report_bad_definition_149).
param(p_msg_146, 2, m_report_bad_definition_149).
throw(m_report_bad_definition_149, json_mapping_exception).
param(p_type_147, 1, m_report_bad_definition_150).
param(p_msg_148, 2, m_report_bad_definition_150).
throw(m_report_bad_definition_150, json_mapping_exception).
param(p_msg_149, 1, m__format_151).
param(p_msg_args_150, 2, m__format_151).
param(p_desc_151, 1, m__truncate_152).
param(p_desc_152, 1, m__quoted_string_153).
param(p_msg_base_153, 1, m__colon_concat_154).
param(p_extra_154, 2, m__colon_concat_154).
param(p_cls_155, 1, m__calc_name_155).
param(p_desc_156, 1, m__desc_156).

%subtype_resolver_1 - com.fasterxml.jackson.databind.jsontype.SubtypeResolver
param(p_types_2189, 1, m_register_subtypes_1518).
param(p_classes_2190, 1, m_register_subtypes_1519).
param(p_config_2191, 1, m_collect_and_resolve_subtypes_by_class_1520).
param(p_property_2192, 2, m_collect_and_resolve_subtypes_by_class_1520).
param(p_base_type_2193, 3, m_collect_and_resolve_subtypes_by_class_1520).
param(p_config_2194, 1, m_collect_and_resolve_subtypes_by_class_1521).
param(p_base_type_2195, 2, m_collect_and_resolve_subtypes_by_class_1521).
param(p_config_2196, 1, m_collect_and_resolve_subtypes_by_type_id_1522).
param(p_property_2197, 2, m_collect_and_resolve_subtypes_by_type_id_1522).
param(p_base_type_2198, 3, m_collect_and_resolve_subtypes_by_type_id_1522).
param(p_config_2199, 1, m_collect_and_resolve_subtypes_by_type_id_1523).
param(p_base_type_2200, 2, m_collect_and_resolve_subtypes_by_type_id_1523).
param(p_property_2201, 1, m_collect_and_resolve_subtypes_1524).
param(p_config_2202, 2, m_collect_and_resolve_subtypes_1524).
param(p_ai_2203, 3, m_collect_and_resolve_subtypes_1524).
param(p_base_type_2204, 4, m_collect_and_resolve_subtypes_1524).
param(p_base_type_2205, 1, m_collect_and_resolve_subtypes_1525).
param(p_config_2206, 2, m_collect_and_resolve_subtypes_1525).
param(p_ai_2207, 3, m_collect_and_resolve_subtypes_1525).

%number_serializer_1 - com.fasterxml.jackson.databind.ser.std.NumberSerializer
assign(f_instance_2651, number_serializer_1_expr1, line(number_serializer_1, 27)).
method_invoc(number_serializer_1_expr1, m_number_serializer_1587, line(number_serializer_1, 27)).
argument(number_serializer_1_expr2, 1, number_serializer_1_expr1).
param(p_raw_type_2652, 1, m_number_serializer_1587).
method_invoc(number_serializer_1_expr3, m_std_scalar_serializer_1707, line(number_serializer_1, 35)).
argument(p_raw_type_2652, 1, number_serializer_1_expr3).
argument(number_serializer_1_literal1, 2, number_serializer_1_expr3).
assign(f__is_int_2653, number_serializer_1_expr5, line(number_serializer_1, 37)).
assign(number_serializer_1_expr5, number_serializer_1_expr6, line(number_serializer_1, 37)).
param(p_value_2654, 1, m_serialize_1744).
param(p_g_2655, 2, m_serialize_1744).
param(p_provider_2656, 3, m_serialize_1744).
throw(m_serialize_1744, ioexception).
param(p_provider_2657, 1, m_get_schema_1745).
param(p_type_hint_2658, 2, m_get_schema_1745).
param(p_visitor_2659, 1, m_accept_json_format_visitor_1746).
param(p_type_hint_2660, 2, m_accept_json_format_visitor_1746).
throw(m_accept_json_format_visitor_1746, json_mapping_exception).

%date_serializer_1 - com.fasterxml.jackson.databind.ser.std.DateSerializer
assign(f_instance_2607, date_serializer_1_expr1, line(date_serializer_1, 24)).
method_invoc(date_serializer_1_expr1, m_date_serializer_1724, line(date_serializer_1, 24)).
method_invoc(date_serializer_1_expr2, m_date_serializer_1725, line(date_serializer_1, 27)).
argument(date_serializer_1_literal1, 1, date_serializer_1_expr2).
argument(date_serializer_1_literal2, 2, date_serializer_1_expr2).
param(p_use_timestamp_2608, 1, m_date_serializer_1725).
param(p_custom_format_2609, 2, m_date_serializer_1725).
method_invoc(date_serializer_1_expr3, m_date_time_serializer_base_1720, line(date_serializer_1, 31)).
argument(date_serializer_1_expr4, 1, date_serializer_1_expr3).
argument(p_use_timestamp_2608, 2, date_serializer_1_expr3).
argument(p_custom_format_2609, 3, date_serializer_1_expr3).
param(p_timestamp_2610, 1, m_with_format_1726).
param(p_custom_format_2611, 2, m_with_format_1726).
param(p_value_2612, 1, m__timestamp_1727).
param(p_value_2613, 1, m_serialize_1728).
param(p_gen_2614, 2, m_serialize_1728).
param(p_provider_2615, 3, m_serialize_1728).
throw(m_serialize_1728, ioexception).

%serialization_feature_1 - com.fasterxml.jackson.databind.SerializationFeature
param(p_default_state_975, 1, m_serialization_feature_718).
assign(f__default_state_976, p_default_state_975, line(serialization_feature_1, 429)).
assign(f__mask_977, serialization_feature_1_expr6, line(serialization_feature_1, 430)).
assign(serialization_feature_1_expr6, serialization_feature_1_expr7, line(serialization_feature_1, 430)).
method_invoc(serialization_feature_1_expr8, m_ordinal_300, line(serialization_feature_1, 430)).
return(f__default_state_976, m_enabled_by_default_719, line(serialization_feature_1, 434)).
return(f__mask_977, m_get_mask_720, line(serialization_feature_1, 438)).
param(p_flags_978, 1, m_enabled_in_721).

%simple_type_1 - com.fasterxml.jackson.databind.type.SimpleType
param(p_cls_2878, 1, m_simple_type_1837).
method_invoc(simple_type_1_expr1, m_simple_type_1838, line(simple_type_1, 33)).
argument(p_cls_2878, 1, simple_type_1_expr1).
argument(simple_type_1_expr2, 2, simple_type_1_expr1).
argument(simple_type_1_literal1, 3, simple_type_1_expr1).
argument(simple_type_1_literal2, 4, simple_type_1_expr1).
method_invoc(simple_type_1_expr2, m_empty_bindings_1214, line(simple_type_1, 33)).
ref(t_type_bindings_30, simple_type_1_expr2, line(simple_type_1, 33)).
param(p_cls_2879, 1, m_simple_type_1838).
param(p_bindings_2880, 2, m_simple_type_1838).
param(p_super_class_2881, 3, m_simple_type_1838).
param(p_super_ints_2882, 4, m_simple_type_1838).
method_invoc(simple_type_1_expr3, m_simple_type_1839, line(simple_type_1, 38)).
argument(p_cls_2879, 1, simple_type_1_expr3).
argument(p_bindings_2880, 2, simple_type_1_expr3).
argument(p_super_class_2881, 3, simple_type_1_expr3).
argument(p_super_ints_2882, 4, simple_type_1_expr3).
argument(simple_type_1_literal3, 5, simple_type_1_expr3).
argument(simple_type_1_literal4, 6, simple_type_1_expr3).
argument(simple_type_1_literal5, 7, simple_type_1_expr3).
param(p_base_2883, 1, m_simple_type_1840).
param(p_cls_2884, 1, m_simple_type_1839).
param(p_bindings_2885, 2, m_simple_type_1839).
param(p_super_class_2886, 3, m_simple_type_1839).
param(p_super_ints_2887, 4, m_simple_type_1839).
param(p_value_handler_2888, 5, m_simple_type_1839).
param(p_type_handler_2889, 6, m_simple_type_1839).
param(p_as_static_2890, 7, m_simple_type_1839).
method_invoc(simple_type_1_expr4, m_type_base_1841, line(simple_type_1, 55)).
argument(p_cls_2884, 1, simple_type_1_expr4).
argument(p_bindings_2885, 2, simple_type_1_expr4).
argument(p_super_class_2886, 3, simple_type_1_expr4).
argument(p_super_ints_2887, 4, simple_type_1_expr4).
argument(simple_type_1_literal6, 5, simple_type_1_expr4).
argument(p_value_handler_2888, 6, simple_type_1_expr4).
argument(p_type_handler_2889, 7, simple_type_1_expr4).
argument(p_as_static_2890, 8, simple_type_1_expr4).
param(p_cls_2891, 1, m_simple_type_1842).
param(p_bindings_2892, 2, m_simple_type_1842).
param(p_super_class_2893, 3, m_simple_type_1842).
param(p_super_ints_2894, 4, m_simple_type_1842).
param(p_extra_hash_2895, 5, m_simple_type_1842).
param(p_value_handler_2896, 6, m_simple_type_1842).
param(p_type_handler_2897, 7, m_simple_type_1842).
param(p_as_static_2898, 8, m_simple_type_1842).
param(p_raw_2899, 1, m_construct_unsafe_1332).
return(simple_type_1_expr5, m_construct_unsafe_1332, line(simple_type_1, 82)).
method_invoc(simple_type_1_expr5, m_simple_type_1839, line(simple_type_1, 82)).
argument(p_raw_2899, 1, simple_type_1_expr5).
argument(simple_type_1_literal7, 2, simple_type_1_expr5).
argument(simple_type_1_literal8, 3, simple_type_1_expr5).
argument(simple_type_1_literal9, 4, simple_type_1_expr5).
argument(simple_type_1_literal10, 5, simple_type_1_expr5).
argument(simple_type_1_literal11, 6, simple_type_1_expr5).
argument(simple_type_1_literal12, 7, simple_type_1_expr5).
param(p_cls_2900, 1, m_construct_1843).
param(p_subclass_2901, 1, m__narrow_1844).
param(p_content_type_2902, 1, m_with_content_type_1845).
param(p_h_2903, 1, m_with_type_handler_1846).
param(p_h_2904, 1, m_with_content_type_handler_1847).
param(p_h_2905, 1, m_with_value_handler_1848).
param(p_h_2906, 1, m_with_content_value_handler_1849).
param(p_raw_type_2907, 1, m_refine_1851).
param(p_bindings_2908, 2, m_refine_1851).
param(p_super_class_2909, 3, m_refine_1851).
param(p_super_interfaces_2910, 4, m_refine_1851).
return(simple_type_1_literal13, m_refine_1851, line(simple_type_1, 212)).
param(p_sb_2911, 1, m_get_erased_signature_1855).
param(p_sb_2912, 1, m_get_generic_signature_1856).
param(p_super_class_2913, 1, m__build_super_class_1857).
param(p_b_2914, 2, m__build_super_class_1857).
param(p_o_2915, 1, m_equals_1859).

%type_bindings_1 - com.fasterxml.jackson.databind.type.TypeBindings
assign(f_no_strings_2945, type_bindings_1_expr1, line(type_bindings_1, 17)).
assign(f_no_types_2946, type_bindings_1_expr2, line(type_bindings_1, 19)).
assign(f_empty_2947, type_bindings_1_expr3, line(type_bindings_1, 21)).
method_invoc(type_bindings_1_expr3, m_type_bindings_1877, line(type_bindings_1, 21)).
argument(f_no_strings_2945, 1, type_bindings_1_expr3).
argument(f_no_types_2946, 2, type_bindings_1_expr3).
argument(type_bindings_1_literal3, 3, type_bindings_1_expr3).
param(p_names_2948, 1, m_type_bindings_1877).
param(p_types_2949, 2, m_type_bindings_1877).
param(p_uvars_2950, 3, m_type_bindings_1877).
assign(f__names_2951, type_bindings_1_expr5, line(type_bindings_1, 54)).
cond_expr(type_bindings_1_expr6, f_no_strings_2945, p_names_2948, line(type_bindings_1, 54)).
assign(type_bindings_1_expr6, type_bindings_1_expr7, line(type_bindings_1, 54)).
assign(f__types_2952, type_bindings_1_expr9, line(type_bindings_1, 55)).
cond_expr(type_bindings_1_expr10, f_no_types_2946, p_types_2949, line(type_bindings_1, 55)).
assign(type_bindings_1_expr10, type_bindings_1_expr11, line(type_bindings_1, 55)).
ref(f__names_2951, q_length_31, line(type_bindings_1, 56)).
ref(f__types_2952, q_length_32, line(type_bindings_1, 56)).
assign(v_h_2953, type_bindings_1_literal6, line(type_bindings_1, 59)).
assign(v_i_2954, type_bindings_1_literal7, line(type_bindings_1, 60)).
assign(v_len_2955, q_length_33, line(type_bindings_1, 60)).
ref(f__types_2952, q_length_33, line(type_bindings_1, 60)).
assign(f__unbound_variables_2956, p_uvars_2950, line(type_bindings_1, 63)).
assign(f__hash_code_2957, v_h_2953, line(type_bindings_1, 64)).
return(f_empty_2947, m_empty_bindings_1214, line(type_bindings_1, 68)).
param(p_erased_type_2958, 1, m_create_1879).
param(p_type_list_2959, 2, m_create_1879).
param(p_erased_type_2960, 1, m_create_1880).
param(p_types_2961, 2, m_create_1880).
param(p_erased_type_2962, 1, m_create_1881).
param(p_type_arg1_2963, 2, m_create_1881).
param(p_erased_type_2964, 1, m_create_1882).
param(p_type_arg1_2965, 2, m_create_1882).
param(p_type_arg2_2966, 3, m_create_1882).
param(p_erased_type_2967, 1, m_create_if_needed_1883).
param(p_type_arg1_2968, 2, m_create_if_needed_1883).
param(p_erased_type_2969, 1, m_create_if_needed_1884).
param(p_types_2970, 2, m_create_if_needed_1884).
param(p_name_2971, 1, m_with_unbound_variable_1885).
param(p_name_2972, 1, m_find_bound_type_1886).
return(type_bindings_1_expr18, m_is_empty_1887, line(type_bindings_1, 246)).
assign(type_bindings_1_expr18, type_bindings_1_expr19, line(type_bindings_1, 246)).
ref(f__types_2952, q_length_33, line(type_bindings_1, 246)).
param(p_index_2973, 1, m_get_bound_name_1889).
param(p_index_2974, 1, m_get_bound_type_1890).
param(p_name_2975, 1, m_has_unbound_1892).
param(p_raw_base_2976, 1, m_as_key_1893).
param(p_o_2977, 1, m_equals_1896).
param(p_erased_type_2978, 1, m_params_for1_1898).
param(p_erased_type_2979, 1, m_params_for2_1899).
param(p_raw_2980, 1, m_as_key_1900).
param(p_params_2981, 2, m_as_key_1900).
param(p_hash_2982, 3, m_as_key_1900).
param(p_o_2983, 1, m_equals_1902).

%unknown_serializer_1 - com.fasterxml.jackson.databind.ser.impl.UnknownSerializer
method_invoc(unknown_serializer_1_expr1, m_std_serializer_1696, line(unknown_serializer_1, 17)).
argument(unknown_serializer_1_expr2, 1, unknown_serializer_1_expr1).
param(p_cls_2555, 1, m_unknown_serializer_1700).
param(p_value_2556, 1, m_serialize_1701).
param(p_gen_2557, 2, m_serialize_1701).
param(p_provider_2558, 3, m_serialize_1701).
throw(m_serialize_1701, ioexception).
param(p_value_2559, 1, m_serialize_with_type_1702).
param(p_gen_2560, 2, m_serialize_with_type_1702).
param(p_provider_2561, 3, m_serialize_with_type_1702).
param(p_type_ser_2562, 4, m_serialize_with_type_1702).
throw(m_serialize_with_type_1702, ioexception).
param(p_provider_2563, 1, m_is_empty_1703).
param(p_value_2564, 2, m_is_empty_1703).
param(p_provider_2565, 1, m_get_schema_1704).
param(p_type_hint_2566, 2, m_get_schema_1704).
throw(m_get_schema_1704, json_mapping_exception).
param(p_visitor_2567, 1, m_accept_json_format_visitor_1705).
param(p_type_hint_2568, 2, m_accept_json_format_visitor_1705).
throw(m_accept_json_format_visitor_1705, json_mapping_exception).
param(p_prov_2569, 1, m_fail_for_empty_1706).
param(p_value_2570, 2, m_fail_for_empty_1706).
throw(m_fail_for_empty_1706, json_mapping_exception).

%class_introspector_1 - com.fasterxml.jackson.databind.introspect.ClassIntrospector
param(p_cls_1957, 1, m_find_mix_in_class_for_1215).
param(p_cfg_1958, 1, m_for_serialization_1350).
param(p_type_1959, 2, m_for_serialization_1350).
param(p_r_1960, 3, m_for_serialization_1350).
param(p_cfg_1961, 1, m_for_deserialization_1351).
param(p_type_1962, 2, m_for_deserialization_1351).
param(p_r_1963, 3, m_for_deserialization_1351).
param(p_cfg_1964, 1, m_for_deserialization_with_builder_1352).
param(p_type_1965, 2, m_for_deserialization_with_builder_1352).
param(p_r_1966, 3, m_for_deserialization_with_builder_1352).
param(p_cfg_1967, 1, m_for_creation_1353).
param(p_type_1968, 2, m_for_creation_1353).
param(p_r_1969, 3, m_for_creation_1353).
param(p_cfg_1970, 1, m_for_class_annotations_1354).
param(p_type_1971, 2, m_for_class_annotations_1354).
param(p_r_1972, 3, m_for_class_annotations_1354).
param(p_cfg_1973, 1, m_for_direct_class_annotations_1355).
param(p_type_1974, 2, m_for_direct_class_annotations_1355).
param(p_r_1975, 3, m_for_direct_class_annotations_1355).

%annotated_class_resolver_1 - com.fasterxml.jackson.databind.introspect.AnnotatedClassResolver
assign(f_no_annotations_1772, annotated_class_resolver_1_expr1, line(annotated_class_resolver_1, 25)).
method_invoc(annotated_class_resolver_1_expr1, m_empty_annotations_1211, line(annotated_class_resolver_1, 25)).
ref(t_annotation_collector_29, annotated_class_resolver_1_expr1, line(annotated_class_resolver_1, 25)).
param(p_config_1773, 1, m_annotated_class_resolver_1212).
param(p_type_1774, 2, m_annotated_class_resolver_1212).
param(p_r_1775, 3, m_annotated_class_resolver_1212).
param(p_config_1776, 1, m_annotated_class_resolver_1213).
param(p_cls_1777, 2, m_annotated_class_resolver_1213).
param(p_r_1778, 3, m_annotated_class_resolver_1213).
assign(f__config_1779, p_config_1776, line(annotated_class_resolver_1, 48)).
assign(f__type_1780, annotated_class_resolver_1_literal1, line(annotated_class_resolver_1, 49)).
assign(f__class_1781, p_cls_1777, line(annotated_class_resolver_1, 50)).
assign(f__mix_in_resolver_1782, p_r_1778, line(annotated_class_resolver_1, 51)).
assign(f__bindings_1783, annotated_class_resolver_1_expr7, line(annotated_class_resolver_1, 52)).
method_invoc(annotated_class_resolver_1_expr7, m_empty_bindings_1214, line(annotated_class_resolver_1, 52)).
ref(t_type_bindings_30, annotated_class_resolver_1_expr7, line(annotated_class_resolver_1, 52)).
assign(f__intr_1784, annotated_class_resolver_1_expr10, line(annotated_class_resolver_1, 57)).
cond_expr(annotated_class_resolver_1_expr11, annotated_class_resolver_1_expr12, annotated_class_resolver_1_literal3, line(annotated_class_resolver_1, 57)).
method_invoc(annotated_class_resolver_1_expr11, m_is_annotation_processing_enabled_889, line(annotated_class_resolver_1, 57)).
ref(p_config_1776, annotated_class_resolver_1_expr11, line(annotated_class_resolver_1, 57)).
assign(f__primary_mixin_1785, annotated_class_resolver_1_expr14, line(annotated_class_resolver_1, 59)).
method_invoc(annotated_class_resolver_1_expr14, m_find_mix_in_class_for_1215, line(annotated_class_resolver_1, 59)).
argument(f__class_1781, 1, annotated_class_resolver_1_expr14).
ref(f__config_1779, annotated_class_resolver_1_expr14, line(annotated_class_resolver_1, 59)).
param(p_config_1786, 1, m_resolve_1216).
param(p_for_type_1787, 2, m_resolve_1216).
param(p_r_1788, 3, m_resolve_1216).
param(p_config_1789, 1, m_resolve_without_super_types_1217).
param(p_for_type_1790, 2, m_resolve_without_super_types_1217).
param(p_r_1791, 3, m_resolve_without_super_types_1217).
param(p_config_1792, 1, m_resolve_without_super_types_1218).
param(p_for_type_1793, 2, m_resolve_without_super_types_1218).
return(annotated_class_resolver_1_expr15, m_resolve_without_super_types_1218, line(annotated_class_resolver_1, 76)).
method_invoc(annotated_class_resolver_1_expr15, m_resolve_without_super_types_1219, line(annotated_class_resolver_1, 76)).
argument(p_config_1792, 1, annotated_class_resolver_1_expr15).
argument(p_for_type_1793, 2, annotated_class_resolver_1_expr15).
argument(p_config_1792, 3, annotated_class_resolver_1_expr15).
param(p_config_1794, 1, m_resolve_without_super_types_1219).
param(p_for_type_1795, 2, m_resolve_without_super_types_1219).
param(p_r_1796, 3, m_resolve_without_super_types_1219).
return(annotated_class_resolver_1_expr16, m_resolve_without_super_types_1219, line(annotated_class_resolver_1, 82)).
method_invoc(annotated_class_resolver_1_expr16, m_resolve_without_super_types_1220, line(annotated_class_resolver_1, 82)).
ref(annotated_class_resolver_1_expr17, annotated_class_resolver_1_expr16, line(annotated_class_resolver_1, 82)).
method_invoc(annotated_class_resolver_1_expr17, m_annotated_class_resolver_1213, line(annotated_class_resolver_1, 82)).
argument(p_config_1794, 1, annotated_class_resolver_1_expr17).
argument(p_for_type_1795, 2, annotated_class_resolver_1_expr17).
argument(p_r_1796, 3, annotated_class_resolver_1_expr17).
param(p_raw_1797, 1, m_create_primordial_1221).
assign(v_no_class_ann_1798, annotated_class_resolver_1_expr18, line(annotated_class_resolver_1, 90)).
method_invoc(annotated_class_resolver_1_expr18, m_annotation_map_1222, line(annotated_class_resolver_1, 90)).
assign(v_super_types_1799, annotated_class_resolver_1_expr19, line(annotated_class_resolver_1, 91)).
method_invoc(annotated_class_resolver_1_expr19, m_empty_list_1223, line(annotated_class_resolver_1, 91)).
ref(t_collections_19, annotated_class_resolver_1_expr19, line(annotated_class_resolver_1, 91)).
return(annotated_class_resolver_1_expr20, m_create_primordial_1221, line(annotated_class_resolver_1, 92)).
method_invoc(annotated_class_resolver_1_expr20, m_annotated_class_1177, line(annotated_class_resolver_1, 92)).
argument(annotated_class_resolver_1_literal4, 1, annotated_class_resolver_1_expr20).
argument(p_raw_1797, 2, annotated_class_resolver_1_expr20).
argument(v_super_types_1799, 3, annotated_class_resolver_1_expr20).
argument(annotated_class_resolver_1_literal5, 4, annotated_class_resolver_1_expr20).
argument(v_no_class_ann_1798, 5, annotated_class_resolver_1_expr20).
argument(annotated_class_resolver_1_expr21, 6, annotated_class_resolver_1_expr20).
argument(annotated_class_resolver_1_literal6, 7, annotated_class_resolver_1_expr20).
argument(annotated_class_resolver_1_literal7, 8, annotated_class_resolver_1_expr20).
argument(annotated_class_resolver_1_literal8, 9, annotated_class_resolver_1_expr20).
assign(v_super_types_1800, annotated_class_resolver_1_expr22, line(annotated_class_resolver_1, 105)).
method_invoc(annotated_class_resolver_1_expr22, m_empty_list_1223, line(annotated_class_resolver_1, 105)).
ref(t_collections_19, annotated_class_resolver_1_expr22, line(annotated_class_resolver_1, 105)).
assign(v_class_ann_1801, annotated_class_resolver_1_expr23, line(annotated_class_resolver_1, 106)).
method_invoc(annotated_class_resolver_1_expr23, m_resolve_class_annotations_1225, line(annotated_class_resolver_1, 106)).
argument(v_super_types_1800, 1, annotated_class_resolver_1_expr23).
return(annotated_class_resolver_1_expr24, m_resolve_without_super_types_1220, line(annotated_class_resolver_1, 107)).
method_invoc(annotated_class_resolver_1_expr24, m_annotated_class_1177, line(annotated_class_resolver_1, 107)).
argument(annotated_class_resolver_1_literal9, 1, annotated_class_resolver_1_expr24).
argument(f__class_1781, 2, annotated_class_resolver_1_expr24).
argument(v_super_types_1800, 3, annotated_class_resolver_1_expr24).
argument(f__primary_mixin_1785, 4, annotated_class_resolver_1_expr24).
argument(v_class_ann_1801, 5, annotated_class_resolver_1_expr24).
argument(f__bindings_1783, 6, annotated_class_resolver_1_expr24).
argument(f__intr_1784, 7, annotated_class_resolver_1_expr24).
argument(f__config_1779, 8, annotated_class_resolver_1_expr24).
argument(annotated_class_resolver_1_expr25, 9, annotated_class_resolver_1_expr24).
param(p_super_types_1802, 1, m_resolve_class_annotations_1225).
assign(v_resolved_ca_1803, annotated_class_resolver_1_expr27, line(annotated_class_resolver_1, 128)).
method_invoc(annotated_class_resolver_1_expr27, m_empty_collector_1226, line(annotated_class_resolver_1, 128)).
ref(t_annotation_collector_29, annotated_class_resolver_1_expr27, line(annotated_class_resolver_1, 128)).
assign(v_resolved_ca_1803, annotated_class_resolver_1_expr30, line(annotated_class_resolver_1, 134)).
method_invoc(annotated_class_resolver_1_expr30, m__add_annotations_if_not_present_1227, line(annotated_class_resolver_1, 134)).
argument(v_resolved_ca_1803, 1, annotated_class_resolver_1_expr30).
argument(annotated_class_resolver_1_expr31, 2, annotated_class_resolver_1_expr30).
ref(p_super_types_1802, annotated_class_resolver_1_stmt21, line(annotated_class_resolver_1, 138)).
assign(v_resolved_ca_1803, annotated_class_resolver_1_expr34, line(annotated_class_resolver_1, 155)).
method_invoc(annotated_class_resolver_1_expr34, m__add_class_mix_ins_1228, line(annotated_class_resolver_1, 155)).
argument(v_resolved_ca_1803, 1, annotated_class_resolver_1_expr34).
argument(annotated_class_resolver_1_expr35, 2, annotated_class_resolver_1_expr34).
argument(annotated_class_resolver_1_expr36, 3, annotated_class_resolver_1_expr34).
return(annotated_class_resolver_1_expr37, m_resolve_class_annotations_1225, line(annotated_class_resolver_1, 158)).
method_invoc(annotated_class_resolver_1_expr37, m_as_annotations_1229, line(annotated_class_resolver_1, 158)).
ref(v_resolved_ca_1803, annotated_class_resolver_1_expr37, line(annotated_class_resolver_1, 158)).
param(p_annotations_1805, 1, m__add_class_mix_ins_1228).
param(p_target_1806, 2, m__add_class_mix_ins_1228).
param(p_mixin_1807, 3, m__add_class_mix_ins_1228).
return(p_annotations_1805, m__add_class_mix_ins_1228, line(annotated_class_resolver_1, 177)).
param(p_c_1808, 1, m__add_annotations_if_not_present_1227).
param(p_anns_1809, 2, m__add_annotations_if_not_present_1227).
ref(p_anns_1809, annotated_class_resolver_1_stmt28, line(annotated_class_resolver_1, 184)).
method_invoc(annotated_class_resolver_1_expr41, m_is_present_1230, line(annotated_class_resolver_1, 186)).
argument(v_ann_1810, 1, annotated_class_resolver_1_expr41).
ref(p_c_1808, annotated_class_resolver_1_expr41, line(annotated_class_resolver_1, 186)).
assign(p_c_1808, annotated_class_resolver_1_expr43, line(annotated_class_resolver_1, 187)).
method_invoc(annotated_class_resolver_1_expr43, m_add_or_override_1231, line(annotated_class_resolver_1, 187)).
argument(v_ann_1810, 1, annotated_class_resolver_1_expr43).
ref(p_c_1808, annotated_class_resolver_1_expr43, line(annotated_class_resolver_1, 187)).
method_invoc(annotated_class_resolver_1_expr44, m_is_annotation_bundle_13, line(annotated_class_resolver_1, 188)).
argument(v_ann_1810, 1, annotated_class_resolver_1_expr44).
ref(f__intr_1784, annotated_class_resolver_1_expr44, line(annotated_class_resolver_1, 188)).
return(p_c_1808, m__add_annotations_if_not_present_1227, line(annotated_class_resolver_1, 194)).
param(p_c_1811, 1, m__add_from_bundle_if_not_present_1232).
param(p_bundle_1812, 2, m__add_from_bundle_if_not_present_1232).

%type_base_1 - com.fasterxml.jackson.databind.type.TypeBase
assign(f_no_bindings_2916, type_base_1_expr1, line(type_base_1, 17)).
method_invoc(type_base_1_expr1, m_empty_bindings_1214, line(type_base_1, 17)).
ref(t_type_bindings_30, type_base_1_expr1, line(type_base_1, 17)).
assign(f_no_types_2917, type_base_1_expr2, line(type_base_1, 18)).
param(p_raw_2918, 1, m_type_base_1841).
param(p_bindings_2919, 2, m_type_base_1841).
param(p_super_class_2920, 3, m_type_base_1841).
param(p_super_ints_2921, 4, m_type_base_1841).
param(p_hash_2922, 5, m_type_base_1841).
param(p_value_handler_2923, 6, m_type_base_1841).
param(p_type_handler_2924, 7, m_type_base_1841).
param(p_as_static_2925, 8, m_type_base_1841).
method_invoc(type_base_1_expr3, m_java_type_304, line(type_base_1, 45)).
argument(p_raw_2918, 1, type_base_1_expr3).
argument(p_hash_2922, 2, type_base_1_expr3).
argument(p_value_handler_2923, 3, type_base_1_expr3).
argument(p_type_handler_2924, 4, type_base_1_expr3).
argument(p_as_static_2925, 5, type_base_1_expr3).
assign(f__bindings_2926, type_base_1_expr5, line(type_base_1, 46)).
cond_expr(type_base_1_expr6, f_no_bindings_2916, p_bindings_2919, line(type_base_1, 46)).
assign(type_base_1_expr6, type_base_1_expr7, line(type_base_1, 46)).
assign(f__super_class_2927, p_super_class_2920, line(type_base_1, 47)).
assign(f__super_interfaces_2928, p_super_ints_2921, line(type_base_1, 48)).
param(p_base_2929, 1, m_type_base_1860).
param(p_sb_2930, 1, m_get_generic_signature_1863).
param(p_sb_2931, 1, m_get_erased_signature_1864).
param(p_index_2932, 1, m_contained_type_1867).
param(p_index_2933, 1, m_contained_type_name_1868).
param(p_raw_target_2934, 1, m_find_super_type_1871).
param(p_exp_type_2935, 1, m_find_type_parameters_1872).
param(p_gen_2936, 1, m_serialize_with_type_1873).
param(p_provider_2937, 2, m_serialize_with_type_1873).
param(p_type_ser_2938, 3, m_serialize_with_type_1873).
throw(m_serialize_with_type_1873, ioexception).
throw(m_serialize_with_type_1873, json_processing_exception).
param(p_gen_2939, 1, m_serialize_1874).
param(p_provider_2940, 2, m_serialize_1874).
throw(m_serialize_1874, ioexception).
throw(m_serialize_1874, json_processing_exception).
param(p_cls_2941, 1, m__class_signature_1875).
param(p_sb_2942, 2, m__class_signature_1875).
param(p_trailing_semicolon_2943, 3, m__class_signature_1875).
param(p_cls_2944, 1, m__bogus_super_class_1876).

%std_subtype_resolver_1 - com.fasterxml.jackson.databind.jsontype.impl.StdSubtypeResolver
param(p_types_2222, 1, m_register_subtypes_1545).
param(p_classes_2223, 1, m_register_subtypes_1546).
param(p_config_2224, 1, m_collect_and_resolve_subtypes_by_class_1547).
param(p_property_2225, 2, m_collect_and_resolve_subtypes_by_class_1547).
param(p_base_type_2226, 3, m_collect_and_resolve_subtypes_by_class_1547).
param(p_config_2227, 1, m_collect_and_resolve_subtypes_by_class_1548).
param(p_type_2228, 2, m_collect_and_resolve_subtypes_by_class_1548).
param(p_config_2229, 1, m_collect_and_resolve_subtypes_by_type_id_1528).
param(p_property_2230, 2, m_collect_and_resolve_subtypes_by_type_id_1528).
param(p_base_type_2231, 3, m_collect_and_resolve_subtypes_by_type_id_1528).
assign(v_ai_2232, std_subtype_resolver_1_expr1, line(std_subtype_resolver_1, 131)).
method_invoc(std_subtype_resolver_1_expr1, m_get_annotation_introspector_895, line(std_subtype_resolver_1, 131)).
ref(p_config_2229, std_subtype_resolver_1_expr1, line(std_subtype_resolver_1, 131)).
assign(v_raw_base_2233, std_subtype_resolver_1_expr2, line(std_subtype_resolver_1, 132)).
method_invoc(std_subtype_resolver_1_expr2, m_get_raw_class_318, line(std_subtype_resolver_1, 132)).
ref(p_base_type_2231, std_subtype_resolver_1_expr2, line(std_subtype_resolver_1, 132)).
assign(v_types_handled_2234, std_subtype_resolver_1_expr3, line(std_subtype_resolver_1, 135)).
method_invoc(std_subtype_resolver_1_expr3, m_hash_set_1058, line(std_subtype_resolver_1, 135)).
assign(v_by_name_2235, std_subtype_resolver_1_expr4, line(std_subtype_resolver_1, 136)).
method_invoc(std_subtype_resolver_1_expr4, m_linked_hash_map_1549, line(std_subtype_resolver_1, 136)).
assign(v_root_type_2236, std_subtype_resolver_1_expr5, line(std_subtype_resolver_1, 139)).
method_invoc(std_subtype_resolver_1_expr5, m_named_type_1396, line(std_subtype_resolver_1, 139)).
argument(v_raw_base_2233, 1, std_subtype_resolver_1_expr5).
argument(std_subtype_resolver_1_literal1, 2, std_subtype_resolver_1_expr5).
assign(v_ac_2237, std_subtype_resolver_1_expr6, line(std_subtype_resolver_1, 140)).
method_invoc(std_subtype_resolver_1_expr6, m_resolve_without_super_types_1218, line(std_subtype_resolver_1, 140)).
argument(p_config_2229, 1, std_subtype_resolver_1_expr6).
argument(v_raw_base_2233, 2, std_subtype_resolver_1_expr6).
ref(t_annotated_class_resolver_39, std_subtype_resolver_1_expr6, line(std_subtype_resolver_1, 140)).
method_invoc(std_subtype_resolver_1_expr7, m__collect_and_resolve_by_type_id_1550, line(std_subtype_resolver_1, 142)).
argument(v_ac_2237, 1, std_subtype_resolver_1_expr7).
argument(v_root_type_2236, 2, std_subtype_resolver_1_expr7).
argument(p_config_2229, 3, std_subtype_resolver_1_expr7).
argument(v_types_handled_2234, 4, std_subtype_resolver_1_expr7).
argument(v_by_name_2235, 5, std_subtype_resolver_1_expr7).
assign(v_st_2238, std_subtype_resolver_1_expr8, line(std_subtype_resolver_1, 145)).
method_invoc(std_subtype_resolver_1_expr8, m_find_subtypes_29, line(std_subtype_resolver_1, 145)).
argument(p_property_2230, 1, std_subtype_resolver_1_expr8).
ref(v_ai_2232, std_subtype_resolver_1_expr8, line(std_subtype_resolver_1, 145)).
param(p_config_2239, 1, m_collect_and_resolve_subtypes_by_type_id_1551).
param(p_base_type_2240, 2, m_collect_and_resolve_subtypes_by_type_id_1551).
param(p_annotated_type_2241, 1, m__collect_and_resolve_1552).
param(p_named_type_2242, 2, m__collect_and_resolve_1552).
param(p_config_2243, 3, m__collect_and_resolve_1552).
param(p_ai_2244, 4, m__collect_and_resolve_1552).
param(p_collected_subtypes_2245, 5, m__collect_and_resolve_1552).
param(p_annotated_type_2246, 1, m__collect_and_resolve_by_type_id_1550).
param(p_named_type_2247, 2, m__collect_and_resolve_by_type_id_1550).
param(p_config_2248, 3, m__collect_and_resolve_by_type_id_1550).
param(p_types_handled_2249, 4, m__collect_and_resolve_by_type_id_1550).
param(p_by_name_2250, 5, m__collect_and_resolve_by_type_id_1550).
assign(v_ai_2251, std_subtype_resolver_1_expr9, line(std_subtype_resolver_1, 242)).
method_invoc(std_subtype_resolver_1_expr9, m_get_annotation_introspector_895, line(std_subtype_resolver_1, 242)).
ref(p_config_2248, std_subtype_resolver_1_expr9, line(std_subtype_resolver_1, 242)).
method_invoc(std_subtype_resolver_1_expr11, m_has_name_1514, line(std_subtype_resolver_1, 243)).
ref(p_named_type_2247, std_subtype_resolver_1_expr11, line(std_subtype_resolver_1, 243)).
assign(v_name_2252, std_subtype_resolver_1_expr12, line(std_subtype_resolver_1, 244)).
method_invoc(std_subtype_resolver_1_expr12, m_find_type_name_30, line(std_subtype_resolver_1, 244)).
argument(p_annotated_type_2246, 1, std_subtype_resolver_1_expr12).
ref(v_ai_2251, std_subtype_resolver_1_expr12, line(std_subtype_resolver_1, 244)).
assign(p_named_type_2247, std_subtype_resolver_1_expr15, line(std_subtype_resolver_1, 246)).
method_invoc(std_subtype_resolver_1_expr15, m_named_type_1396, line(std_subtype_resolver_1, 246)).
argument(std_subtype_resolver_1_expr16, 1, std_subtype_resolver_1_expr15).
argument(v_name_2252, 2, std_subtype_resolver_1_expr15).
method_invoc(std_subtype_resolver_1_expr16, m_get_type_1511, line(std_subtype_resolver_1, 246)).
ref(p_named_type_2247, std_subtype_resolver_1_expr16, line(std_subtype_resolver_1, 246)).
method_invoc(std_subtype_resolver_1_expr17, m_has_name_1514, line(std_subtype_resolver_1, 249)).
ref(p_named_type_2247, std_subtype_resolver_1_expr17, line(std_subtype_resolver_1, 249)).
method_invoc(std_subtype_resolver_1_expr18, m_put_1553, line(std_subtype_resolver_1, 250)).
argument(std_subtype_resolver_1_expr19, 1, std_subtype_resolver_1_expr18).
argument(p_named_type_2247, 2, std_subtype_resolver_1_expr18).
ref(p_by_name_2250, std_subtype_resolver_1_expr18, line(std_subtype_resolver_1, 250)).
method_invoc(std_subtype_resolver_1_expr19, m_get_name_1512, line(std_subtype_resolver_1, 250)).
ref(p_named_type_2247, std_subtype_resolver_1_expr19, line(std_subtype_resolver_1, 250)).
method_invoc(std_subtype_resolver_1_expr20, m_add_1059, line(std_subtype_resolver_1, 254)).
argument(std_subtype_resolver_1_expr21, 1, std_subtype_resolver_1_expr20).
ref(p_types_handled_2249, std_subtype_resolver_1_expr20, line(std_subtype_resolver_1, 254)).
method_invoc(std_subtype_resolver_1_expr21, m_get_type_1511, line(std_subtype_resolver_1, 254)).
ref(p_named_type_2247, std_subtype_resolver_1_expr21, line(std_subtype_resolver_1, 254)).
assign(v_st_2253, std_subtype_resolver_1_expr22, line(std_subtype_resolver_1, 255)).
method_invoc(std_subtype_resolver_1_expr22, m_find_subtypes_29, line(std_subtype_resolver_1, 255)).
argument(p_annotated_type_2246, 1, std_subtype_resolver_1_expr22).
ref(v_ai_2251, std_subtype_resolver_1_expr22, line(std_subtype_resolver_1, 255)).
method_invoc(std_subtype_resolver_1_expr26, m_is_empty_1554, line(std_subtype_resolver_1, 256)).
ref(v_st_2253, std_subtype_resolver_1_expr26, line(std_subtype_resolver_1, 256)).
ref(v_st_2253, std_subtype_resolver_1_stmt19, line(std_subtype_resolver_1, 257)).
assign(v_subtype_class_2255, std_subtype_resolver_1_expr27, line(std_subtype_resolver_1, 258)).
method_invoc(std_subtype_resolver_1_expr27, m_resolve_without_super_types_1218, line(std_subtype_resolver_1, 258)).
argument(p_config_2248, 1, std_subtype_resolver_1_expr27).
argument(std_subtype_resolver_1_expr28, 2, std_subtype_resolver_1_expr27).
ref(t_annotated_class_resolver_39, std_subtype_resolver_1_expr27, line(std_subtype_resolver_1, 258)).
method_invoc(std_subtype_resolver_1_expr29, m__collect_and_resolve_by_type_id_1550, line(std_subtype_resolver_1, 260)).
argument(v_subtype_class_2255, 1, std_subtype_resolver_1_expr29).
argument(v_subtype_2254, 2, std_subtype_resolver_1_expr29).
argument(p_config_2248, 3, std_subtype_resolver_1_expr29).
argument(p_types_handled_2249, 4, std_subtype_resolver_1_expr29).
argument(p_by_name_2250, 5, std_subtype_resolver_1_expr29).
param(p_raw_base_2256, 1, m__combine_named_and_unnamed_1555).
param(p_types_handled_2257, 2, m__combine_named_and_unnamed_1555).
param(p_by_name_2258, 3, m__combine_named_and_unnamed_1555).

%null_serializer_1 - com.fasterxml.jackson.databind.ser.std.NullSerializer
assign(f_instance_2639, null_serializer_1_expr1, line(null_serializer_1, 24)).
method_invoc(null_serializer_1_expr1, m_null_serializer_1739, line(null_serializer_1, 24)).
method_invoc(null_serializer_1_expr2, m_std_serializer_1696, line(null_serializer_1, 26)).
argument(null_serializer_1_expr3, 1, null_serializer_1_expr2).
param(p_value_2640, 1, m_serialize_1740).
param(p_gen_2641, 2, m_serialize_1740).
param(p_provider_2642, 3, m_serialize_1740).
throw(m_serialize_1740, ioexception).
param(p_value_2643, 1, m_serialize_with_type_1741).
param(p_gen_2644, 2, m_serialize_with_type_1741).
param(p_serializers_2645, 3, m_serialize_with_type_1741).
param(p_type_ser_2646, 4, m_serialize_with_type_1741).
throw(m_serialize_with_type_1741, ioexception).
param(p_provider_2647, 1, m_get_schema_1742).
param(p_type_hint_2648, 2, m_get_schema_1742).
throw(m_get_schema_1742, json_mapping_exception).
param(p_visitor_2649, 1, m_accept_json_format_visitor_1743).
param(p_type_hint_2650, 2, m_accept_json_format_visitor_1743).
throw(m_accept_json_format_visitor_1743, json_mapping_exception).

%bean_description_1 - com.fasterxml.jackson.databind.BeanDescription
param(p_type_121, 1, m_bean_description_97).
assign(f__type_122, p_type_121, line(bean_description_1, 37)).
param(p_jdk_type_123, 1, m_resolve_type_105).
param(p_arg_types_124, 1, m_find_single_arg_constructor_114).
param(p_exp_arg_types_125, 1, m_find_factory_method_115).
param(p_name_126, 1, m_find_method_119).
param(p_param_types_127, 2, m_find_method_119).
param(p_def_value_128, 1, m_find_property_inclusion_123).
param(p_def_value_129, 1, m_find_expected_format_124).
param(p_fix_access_130, 1, m_instantiate_bean_131).

%json_node_factory_1 - com.fasterxml.jackson.databind.node.JsonNodeFactory
assign(f_decimals_normalized_2259, json_node_factory_1_expr1, line(json_node_factory_1, 24)).
assign(f_decimals_as_is_2260, json_node_factory_1_expr2, line(json_node_factory_1, 26)).
assign(f_instance_2261, f_decimals_normalized_2259, line(json_node_factory_1, 34)).
param(p_big_decimal_exact_2262, 1, m_json_node_factory_1556).
assign(f__cfg_big_decimal_exact_2263, p_big_decimal_exact_2262, line(json_node_factory_1, 63)).
param(p_big_decimal_exact_2264, 1, m_with_exact_big_decimals_1558).
param(p_v_2265, 1, m_boolean_node_1559).
param(p_v_2266, 1, m_number_node_1561).
param(p_value_2267, 1, m_number_node_1562).
param(p_v_2268, 1, m_number_node_1563).
param(p_value_2269, 1, m_number_node_1564).
param(p_v_2270, 1, m_number_node_1565).
param(p_value_2271, 1, m_number_node_1566).
param(p_v_2272, 1, m_number_node_1567).
param(p_v_2273, 1, m_number_node_1568).
param(p_v_2274, 1, m_number_node_1569).
param(p_v_2275, 1, m_number_node_1570).
param(p_value_2276, 1, m_number_node_1571).
param(p_v_2277, 1, m_number_node_1572).
param(p_value_2278, 1, m_number_node_1573).
param(p_v_2279, 1, m_number_node_1574).
param(p_text_2280, 1, m_text_node_1575).
param(p_data_2281, 1, m_binary_node_1576).
param(p_data_2282, 1, m_binary_node_1577).
param(p_offset_2283, 2, m_binary_node_1577).
param(p_length_2284, 3, m_binary_node_1577).
param(p_capacity_2285, 1, m_array_node_1579).
param(p_pojo_2286, 1, m_pojo_node_1581).
param(p_value_2287, 1, m_raw_value_node_1582).
param(p_l_2288, 1, m__in_int_range_1583).

%named_type_1 - com.fasterxml.jackson.databind.jsontype.NamedType
param(p_c_2181, 1, m_named_type_1509).
param(p_c_2182, 1, m_named_type_1396).
param(p_name_2183, 2, m_named_type_1396).
assign(f__class_2184, p_c_2182, line(named_type_1, 19)).
assign(f__hash_code_2185, named_type_1_expr3, line(named_type_1, 20)).
method_invoc(named_type_1_expr3, m_hash_code_305, line(named_type_1, 20)).
ref(named_type_1_expr4, named_type_1_expr3, line(named_type_1, 20)).
method_invoc(named_type_1_expr4, m_get_name_306, line(named_type_1, 20)).
ref(p_c_2182, named_type_1_expr4, line(named_type_1, 20)).
method_invoc(named_type_1_expr5, m_set_name_1510, line(named_type_1, 21)).
argument(p_name_2183, 1, named_type_1_expr5).
return(f__class_2184, m_get_type_1511, line(named_type_1, 24)).
return(f__name_2186, m_get_name_1512, line(named_type_1, 25)).
param(p_name_2187, 1, m_set_name_1510).
assign(f__name_2186, named_type_1_expr7, line(named_type_1, 26)).
cond_expr(named_type_1_expr8, named_type_1_literal1, p_name_2187, line(named_type_1, 26)).
assign(named_type_1_expr8, named_type_1_expr9, line(named_type_1, 26)).
method_invoc(named_type_1_expr12, m_length_1513, line(named_type_1, 26)).
ref(p_name_2187, named_type_1_expr12, line(named_type_1, 26)).
return(named_type_1_expr13, m_has_name_1514, line(named_type_1, 28)).
param(p_o_2188, 1, m_equals_1515).

%number_serializers_1 - com.fasterxml.jackson.databind.ser.std.NumberSerializers
param(p_all_deserializers_2661, 1, m_add_all_1585).
method_invoc(number_serializers_1_expr1, m_put_1553, line(number_serializers_1, 26)).
argument(number_serializers_1_expr2, 1, number_serializers_1_expr1).
argument(number_serializers_1_expr3, 2, number_serializers_1_expr1).
ref(p_all_deserializers_2661, number_serializers_1_expr1, line(number_serializers_1, 26)).
method_invoc(number_serializers_1_expr2, m_get_name_306, line(number_serializers_1, 26)).
ref(number_serializers_1_expr4, number_serializers_1_expr2, line(number_serializers_1, 26)).
method_invoc(number_serializers_1_expr3, m_integer_serializer_1748, line(number_serializers_1, 26)).
argument(number_serializers_1_expr5, 1, number_serializers_1_expr3).
method_invoc(number_serializers_1_expr6, m_put_1553, line(number_serializers_1, 27)).
argument(number_serializers_1_expr7, 1, number_serializers_1_expr6).
argument(number_serializers_1_expr8, 2, number_serializers_1_expr6).
ref(p_all_deserializers_2661, number_serializers_1_expr6, line(number_serializers_1, 27)).
method_invoc(number_serializers_1_expr7, m_get_name_306, line(number_serializers_1, 27)).
ref(f_type_2662, number_serializers_1_expr7, line(number_serializers_1, 27)).
ref(t_integer_35, q_type_19, line(number_serializers_1, 27)).
method_invoc(number_serializers_1_expr8, m_integer_serializer_1748, line(number_serializers_1, 27)).
argument(q_type_19, 1, number_serializers_1_expr8).
ref(t_integer_35, q_type_19, line(number_serializers_1, 27)).
method_invoc(number_serializers_1_expr9, m_put_1553, line(number_serializers_1, 28)).
argument(number_serializers_1_expr10, 1, number_serializers_1_expr9).
argument(number_serializers_1_expr11, 2, number_serializers_1_expr9).
ref(p_all_deserializers_2661, number_serializers_1_expr9, line(number_serializers_1, 28)).
method_invoc(number_serializers_1_expr10, m_get_name_306, line(number_serializers_1, 28)).
ref(number_serializers_1_expr12, number_serializers_1_expr10, line(number_serializers_1, 28)).
method_invoc(number_serializers_1_expr11, m_long_serializer_1749, line(number_serializers_1, 28)).
argument(number_serializers_1_expr13, 1, number_serializers_1_expr11).
method_invoc(number_serializers_1_expr14, m_put_1553, line(number_serializers_1, 29)).
argument(number_serializers_1_expr15, 1, number_serializers_1_expr14).
argument(number_serializers_1_expr16, 2, number_serializers_1_expr14).
ref(p_all_deserializers_2661, number_serializers_1_expr14, line(number_serializers_1, 29)).
method_invoc(number_serializers_1_expr15, m_get_name_306, line(number_serializers_1, 29)).
ref(f_type_2663, number_serializers_1_expr15, line(number_serializers_1, 29)).
ref(t_long_36, q_type_19, line(number_serializers_1, 29)).
method_invoc(number_serializers_1_expr16, m_long_serializer_1749, line(number_serializers_1, 29)).
argument(q_type_19, 1, number_serializers_1_expr16).
ref(t_long_36, q_type_19, line(number_serializers_1, 29)).
method_invoc(number_serializers_1_expr17, m_put_1553, line(number_serializers_1, 31)).
argument(number_serializers_1_expr18, 1, number_serializers_1_expr17).
argument(q_instance_19, 2, number_serializers_1_expr17).
ref(p_all_deserializers_2661, number_serializers_1_expr17, line(number_serializers_1, 31)).
method_invoc(number_serializers_1_expr18, m_get_name_306, line(number_serializers_1, 31)).
ref(number_serializers_1_expr19, number_serializers_1_expr18, line(number_serializers_1, 31)).
ref(t_int_like_serializer_47, q_instance_19, line(number_serializers_1, 31)).
method_invoc(number_serializers_1_expr20, m_put_1553, line(number_serializers_1, 32)).
argument(number_serializers_1_expr21, 1, number_serializers_1_expr20).
argument(q_instance_20, 2, number_serializers_1_expr20).
ref(p_all_deserializers_2661, number_serializers_1_expr20, line(number_serializers_1, 32)).
method_invoc(number_serializers_1_expr21, m_get_name_306, line(number_serializers_1, 32)).
ref(f_type_2664, number_serializers_1_expr21, line(number_serializers_1, 32)).
ref(t_byte_48, q_type_20, line(number_serializers_1, 32)).
ref(t_int_like_serializer_47, q_instance_20, line(number_serializers_1, 32)).
method_invoc(number_serializers_1_expr22, m_put_1553, line(number_serializers_1, 33)).
argument(number_serializers_1_expr23, 1, number_serializers_1_expr22).
argument(q_instance_21, 2, number_serializers_1_expr22).
ref(p_all_deserializers_2661, number_serializers_1_expr22, line(number_serializers_1, 33)).
method_invoc(number_serializers_1_expr23, m_get_name_306, line(number_serializers_1, 33)).
ref(number_serializers_1_expr24, number_serializers_1_expr23, line(number_serializers_1, 33)).
ref(t_short_serializer_49, q_instance_21, line(number_serializers_1, 33)).
method_invoc(number_serializers_1_expr25, m_put_1553, line(number_serializers_1, 34)).
argument(number_serializers_1_expr26, 1, number_serializers_1_expr25).
argument(q_instance_22, 2, number_serializers_1_expr25).
ref(p_all_deserializers_2661, number_serializers_1_expr25, line(number_serializers_1, 34)).
method_invoc(number_serializers_1_expr26, m_get_name_306, line(number_serializers_1, 34)).
ref(f_type_2665, number_serializers_1_expr26, line(number_serializers_1, 34)).
ref(t_short_50, q_type_22, line(number_serializers_1, 34)).
ref(t_short_serializer_49, q_instance_22, line(number_serializers_1, 34)).
method_invoc(number_serializers_1_expr27, m_put_1553, line(number_serializers_1, 37)).
argument(number_serializers_1_expr28, 1, number_serializers_1_expr27).
argument(number_serializers_1_expr29, 2, number_serializers_1_expr27).
ref(p_all_deserializers_2661, number_serializers_1_expr27, line(number_serializers_1, 37)).
method_invoc(number_serializers_1_expr28, m_get_name_306, line(number_serializers_1, 37)).
ref(number_serializers_1_expr30, number_serializers_1_expr28, line(number_serializers_1, 37)).
method_invoc(number_serializers_1_expr29, m_double_serializer_1750, line(number_serializers_1, 37)).
argument(number_serializers_1_expr31, 1, number_serializers_1_expr29).
method_invoc(number_serializers_1_expr32, m_put_1553, line(number_serializers_1, 38)).
argument(number_serializers_1_expr33, 1, number_serializers_1_expr32).
argument(number_serializers_1_expr34, 2, number_serializers_1_expr32).
ref(p_all_deserializers_2661, number_serializers_1_expr32, line(number_serializers_1, 38)).
method_invoc(number_serializers_1_expr33, m_get_name_306, line(number_serializers_1, 38)).
ref(f_type_2666, number_serializers_1_expr33, line(number_serializers_1, 38)).
ref(t_double_51, q_type_23, line(number_serializers_1, 38)).
method_invoc(number_serializers_1_expr34, m_double_serializer_1750, line(number_serializers_1, 38)).
argument(q_type_24, 1, number_serializers_1_expr34).
ref(t_double_51, q_type_24, line(number_serializers_1, 38)).
method_invoc(number_serializers_1_expr35, m_put_1553, line(number_serializers_1, 39)).
argument(number_serializers_1_expr36, 1, number_serializers_1_expr35).
argument(q_instance_24, 2, number_serializers_1_expr35).
ref(p_all_deserializers_2661, number_serializers_1_expr35, line(number_serializers_1, 39)).
method_invoc(number_serializers_1_expr36, m_get_name_306, line(number_serializers_1, 39)).
ref(number_serializers_1_expr37, number_serializers_1_expr36, line(number_serializers_1, 39)).
ref(t_float_serializer_52, q_instance_24, line(number_serializers_1, 39)).
method_invoc(number_serializers_1_expr38, m_put_1553, line(number_serializers_1, 40)).
argument(number_serializers_1_expr39, 1, number_serializers_1_expr38).
argument(q_instance_25, 2, number_serializers_1_expr38).
ref(p_all_deserializers_2661, number_serializers_1_expr38, line(number_serializers_1, 40)).
method_invoc(number_serializers_1_expr39, m_get_name_306, line(number_serializers_1, 40)).
ref(f_type_2667, number_serializers_1_expr39, line(number_serializers_1, 40)).
ref(t_float_53, q_type_25, line(number_serializers_1, 40)).
ref(t_float_serializer_52, q_instance_25, line(number_serializers_1, 40)).
param(p_cls_2668, 1, m_base_1751).
param(p_number_type_2669, 2, m_base_1751).
param(p_schema_type_2670, 3, m_base_1751).
method_invoc(number_serializers_1_expr40, m_std_scalar_serializer_1707, line(number_serializers_1, 57)).
argument(p_cls_2668, 1, number_serializers_1_expr40).
argument(number_serializers_1_literal1, 2, number_serializers_1_expr40).
assign(f__number_type_2671, p_number_type_2669, line(number_serializers_1, 58)).
assign(f__schema_type_2672, p_schema_type_2670, line(number_serializers_1, 59)).
assign(f__is_int_2673, number_serializers_1_expr44, line(number_serializers_1, 60)).
assign(number_serializers_1_expr45, number_serializers_1_expr46, line(number_serializers_1, 60)).
param(p_provider_2674, 1, m_get_schema_1752).
param(p_type_hint_2675, 2, m_get_schema_1752).
param(p_visitor_2676, 1, m_accept_json_format_visitor_1753).
param(p_type_hint_2677, 2, m_accept_json_format_visitor_1753).
throw(m_accept_json_format_visitor_1753, json_mapping_exception).
param(p_prov_2678, 1, m_create_contextual_1754).
param(p_property_2679, 2, m_create_contextual_1754).
throw(m_create_contextual_1754, json_mapping_exception).
assign(f_instance_2680, number_serializers_1_expr47, line(number_serializers_1, 105)).
method_invoc(number_serializers_1_expr47, m_short_serializer_1755, line(number_serializers_1, 105)).
method_invoc(number_serializers_1_expr48, m_base_1751, line(number_serializers_1, 108)).
argument(number_serializers_1_expr49, 1, number_serializers_1_expr48).
argument(q_int_27, 2, number_serializers_1_expr48).
argument(number_serializers_1_literal2, 3, number_serializers_1_expr48).
param(p_value_2682, 1, m_serialize_1756).
param(p_gen_2683, 2, m_serialize_1756).
param(p_provider_2684, 3, m_serialize_1756).
throw(m_serialize_1756, ioexception).
param(p_type_2685, 1, m_integer_serializer_1748).
method_invoc(number_serializers_1_expr50, m_base_1751, line(number_serializers_1, 131)).
argument(p_type_2685, 1, number_serializers_1_expr50).
argument(q_int_27, 2, number_serializers_1_expr50).
argument(number_serializers_1_literal3, 3, number_serializers_1_expr50).
param(p_value_2686, 1, m_serialize_1757).
param(p_gen_2687, 2, m_serialize_1757).
param(p_provider_2688, 3, m_serialize_1757).
throw(m_serialize_1757, ioexception).
param(p_value_2689, 1, m_serialize_with_type_1758).
param(p_gen_2690, 2, m_serialize_with_type_1758).
param(p_provider_2691, 3, m_serialize_with_type_1758).
param(p_type_ser_2692, 4, m_serialize_with_type_1758).
throw(m_serialize_with_type_1758, ioexception).
assign(f_instance_2693, number_serializers_1_expr51, line(number_serializers_1, 157)).
method_invoc(number_serializers_1_expr51, m_int_like_serializer_1759, line(number_serializers_1, 157)).
method_invoc(number_serializers_1_expr52, m_base_1751, line(number_serializers_1, 160)).
argument(number_serializers_1_expr53, 1, number_serializers_1_expr52).
argument(q_int_27, 2, number_serializers_1_expr52).
argument(number_serializers_1_literal4, 3, number_serializers_1_expr52).
param(p_value_2694, 1, m_serialize_1760).
param(p_gen_2695, 2, m_serialize_1760).
param(p_provider_2696, 3, m_serialize_1760).
throw(m_serialize_1760, ioexception).
param(p_cls_2697, 1, m_long_serializer_1749).
method_invoc(number_serializers_1_expr54, m_base_1751, line(number_serializers_1, 173)).
argument(p_cls_2697, 1, number_serializers_1_expr54).
argument(q_long_27, 2, number_serializers_1_expr54).
argument(number_serializers_1_literal5, 3, number_serializers_1_expr54).
param(p_value_2699, 1, m_serialize_1761).
param(p_gen_2700, 2, m_serialize_1761).
param(p_provider_2701, 3, m_serialize_1761).
throw(m_serialize_1761, ioexception).
assign(f_instance_2702, number_serializers_1_expr55, line(number_serializers_1, 185)).
method_invoc(number_serializers_1_expr55, m_float_serializer_1762, line(number_serializers_1, 185)).
method_invoc(number_serializers_1_expr56, m_base_1751, line(number_serializers_1, 188)).
argument(number_serializers_1_expr57, 1, number_serializers_1_expr56).
argument(q_float_28, 2, number_serializers_1_expr56).
argument(number_serializers_1_literal6, 3, number_serializers_1_expr56).
param(p_value_2704, 1, m_serialize_1763).
param(p_gen_2705, 2, m_serialize_1763).
param(p_provider_2706, 3, m_serialize_1763).
throw(m_serialize_1763, ioexception).
param(p_cls_2707, 1, m_double_serializer_1750).
method_invoc(number_serializers_1_expr58, m_base_1751, line(number_serializers_1, 208)).
argument(p_cls_2707, 1, number_serializers_1_expr58).
argument(q_double_29, 2, number_serializers_1_expr58).
argument(number_serializers_1_literal7, 3, number_serializers_1_expr58).
param(p_value_2709, 1, m_serialize_1764).
param(p_gen_2710, 2, m_serialize_1764).
param(p_provider_2711, 3, m_serialize_1764).
throw(m_serialize_1764, ioexception).
param(p_value_2712, 1, m_serialize_with_type_1765).
param(p_gen_2713, 2, m_serialize_with_type_1765).
param(p_provider_2714, 3, m_serialize_with_type_1765).
param(p_type_ser_2715, 4, m_serialize_with_type_1765).
throw(m_serialize_with_type_1765, ioexception).

%class_util_1 - com.fasterxml.jackson.databind.util.ClassUtil
assign(f_cls_object_3167, class_util_1_expr1, line(class_util_1, 17)).
assign(f_no_annotations_3168, class_util_1_expr2, line(class_util_1, 19)).
assign(f_no_ctors_3169, class_util_1_expr3, line(class_util_1, 20)).
assign(f_empty_iterator_3170, class_util_1_expr4, line(class_util_1, 22)).
method_invoc(class_util_1_expr4, m_empty_iterator_1988, line(class_util_1, 22)).
ref(t_collections_19, class_util_1_expr4, line(class_util_1, 22)).
param(p_type_3171, 1, m_find_super_types_1990).
param(p_end_before_3172, 2, m_find_super_types_1990).
param(p_add_class_itself_3173, 3, m_find_super_types_1990).
param(p_cls_3174, 1, m_find_raw_super_types_1991).
param(p_end_before_3175, 2, m_find_raw_super_types_1991).
param(p_add_class_itself_3176, 3, m_find_raw_super_types_1991).
param(p_cls_3177, 1, m_find_super_classes_1992).
param(p_end_before_3178, 2, m_find_super_classes_1992).
param(p_add_class_itself_3179, 3, m_find_super_classes_1992).
param(p_cls_3180, 1, m_find_super_types_1993).
param(p_end_before_3181, 2, m_find_super_types_1993).
param(p_cls_3182, 1, m_find_super_types_1994).
param(p_end_before_3183, 2, m_find_super_types_1994).
param(p_result_3184, 3, m_find_super_types_1994).
param(p_type_3185, 1, m__add_super_types_1995).
param(p_end_before_3186, 2, m__add_super_types_1995).
param(p_result_3187, 3, m__add_super_types_1995).
param(p_add_class_itself_3188, 4, m__add_super_types_1995).
param(p_cls_3189, 1, m__add_raw_super_types_1996).
param(p_end_before_3190, 2, m__add_raw_super_types_1996).
param(p_result_3191, 3, m__add_raw_super_types_1996).
param(p_add_class_itself_3192, 4, m__add_raw_super_types_1996).
param(p_type_3193, 1, m_can_be_abean_type_1997).
param(p_type_3194, 1, m_is_local_type_1998).
param(p_allow_non_static_3195, 2, m_is_local_type_1998).
param(p_type_3196, 1, m_get_outer_class_1999).
param(p_type_3197, 1, m_is_proxy_type_2000).
param(p_type_3198, 1, m_is_concrete_2001).
param(p_member_3199, 1, m_is_concrete_2002).
param(p_type_3200, 1, m_is_collection_map_or_array_2003).
param(p_cls_3201, 1, m_is_bogus_class_2004).
param(p_cls_3202, 1, m_is_non_static_inner_class_2005).
param(p_cls_3203, 1, m_is_object_or_primitive_2006).
return(class_util_1_expr5, m_is_object_or_primitive_2006, line(class_util_1, 289)).
assign(class_util_1_expr6, class_util_1_expr7, line(class_util_1, 289)).
method_invoc(class_util_1_expr8, m_is_primitive_1961, line(class_util_1, 289)).
ref(p_cls_3203, class_util_1_expr8, line(class_util_1, 289)).
param(p_inst_3204, 1, m_has_class_2007).
param(p_raw_3205, 2, m_has_class_2007).
param(p_exp_type_3206, 1, m_verify_must_override_2008).
param(p_instance_3207, 2, m_verify_must_override_2008).
param(p_method_3208, 3, m_verify_must_override_2008).
param(p_m_3209, 1, m_has_getter_signature_2009).
param(p_t_3210, 1, m_throw_if_error_2010).
param(p_t_3211, 1, m_throw_if_rte_2011).
param(p_t_3212, 1, m_throw_if_ioe_2012).
throw(m_throw_if_ioe_2012, ioexception).
param(p_t_3213, 1, m_get_root_cause_2013).
param(p_t_3214, 1, m_throw_root_cause_if_ioe_2014).
throw(m_throw_root_cause_if_ioe_2014, ioexception).
param(p_t_3215, 1, m_throw_as_iae_2015).
param(p_t_3216, 1, m_throw_as_iae_2016).
param(p_msg_3217, 2, m_throw_as_iae_2016).
param(p_ctxt_3218, 1, m_throw_as_mapping_exception_2017).
param(p_e_0_3219, 2, m_throw_as_mapping_exception_2017).
throw(m_throw_as_mapping_exception_2017, json_mapping_exception).
param(p_t_3220, 1, m_unwrap_and_throw_as_iae_2018).
param(p_t_3221, 1, m_unwrap_and_throw_as_iae_2019).
param(p_msg_3222, 2, m_unwrap_and_throw_as_iae_2019).
param(p_g_3223, 1, m_close_on_fail_and_throw_as_iae_2020).
param(p_fail_3224, 2, m_close_on_fail_and_throw_as_iae_2020).
throw(m_close_on_fail_and_throw_as_iae_2020, ioexception).
param(p_g_3225, 1, m_close_on_fail_and_throw_as_iae_2021).
param(p_to_close_3226, 2, m_close_on_fail_and_throw_as_iae_2021).
param(p_fail_3227, 3, m_close_on_fail_and_throw_as_iae_2021).
throw(m_close_on_fail_and_throw_as_iae_2021, ioexception).
param(p_cls_3228, 1, m_create_instance_1148).
param(p_can_fix_access_3229, 2, m_create_instance_1148).
throw(m_create_instance_1148, illegal_argument_exception).
assign(v_ctor_3230, class_util_1_expr9, line(class_util_1, 551)).
method_invoc(class_util_1_expr9, m_find_constructor_2022, line(class_util_1, 551)).
throw(class_util_1_expr9, illegal_argument_exception, line(class_util_1, 551)).
argument(p_cls_3228, 1, class_util_1_expr9).
argument(p_can_fix_access_3229, 2, class_util_1_expr9).
return(class_util_1_expr11, m_create_instance_1148, line(class_util_1, 556)).
method_invoc(class_util_1_expr11, m_new_instance_2023, line(class_util_1, 556)).
throw(class_util_1_expr11, instantiation_exception, line(class_util_1, 556)).
throw(class_util_1_expr11, illegal_access_exception, line(class_util_1, 556)).
throw(class_util_1_expr11, illegal_argument_exception, line(class_util_1, 556)).
throw(class_util_1_expr11, invocation_target_exception, line(class_util_1, 556)).
ref(v_ctor_3230, class_util_1_expr11, line(class_util_1, 556)).
param(p_cls_3231, 1, m_find_constructor_2022).
param(p_force_access_3232, 2, m_find_constructor_2022).
throw(m_find_constructor_2022, illegal_argument_exception).
assign(v_ctor_3233, class_util_1_expr12, line(class_util_1, 567)).
method_invoc(class_util_1_expr12, m_get_declared_constructor_2024, line(class_util_1, 567)).
throw(class_util_1_expr12, no_such_method_exception, line(class_util_1, 567)).
throw(class_util_1_expr12, security_exception, line(class_util_1, 567)).
ref(p_cls_3231, class_util_1_expr12, line(class_util_1, 567)).
method_invoc(class_util_1_expr14, m_is_public_2025, line(class_util_1, 572)).
argument(class_util_1_expr15, 1, class_util_1_expr14).
ref(t_modifier_55, class_util_1_expr14, line(class_util_1, 572)).
method_invoc(class_util_1_expr15, m_get_modifiers_2026, line(class_util_1, 572)).
ref(v_ctor_3233, class_util_1_expr15, line(class_util_1, 572)).
return(v_ctor_3233, m_find_constructor_2022, line(class_util_1, 576)).
param(p_inst_3234, 1, m_class_of_2027).
param(p_value_or_null_3235, 1, m_non_null_2028).
param(p_default_value_3236, 2, m_non_null_2028).
param(p_value_3237, 1, m_null_or_to_string_2029).
param(p_str_3238, 1, m_non_null_string_655).
return(p_str_3238, m_non_null_string_655, line(class_util_1, 625)).
param(p_str_3239, 1, m_quoted_or_2030).
param(p_for_null_3240, 2, m_quoted_or_2030).
param(p_class_or_instance_3241, 1, m_get_class_description_2031).
param(p_inst_3242, 1, m_class_name_of_2032).
param(p_cls_3243, 1, m_name_of_2033).
param(p_named_3244, 1, m_name_of_2034).
param(p_cls_3245, 1, m_default_value_2035).
param(p_primitive_type_3246, 1, m_wrapper_type_2036).
param(p_type_3247, 1, m_primitive_type_2037).
param(p_member_3248, 1, m_check_and_fix_access_2038).
param(p_member_3249, 1, m_check_and_fix_access_2039).
param(p_force_3250, 2, m_check_and_fix_access_2039).
param(p_s_3251, 1, m_find_enum_type_2040).
param(p_m_3252, 1, m_find_enum_type_2041).
param(p_en_3253, 1, m_find_enum_type_2042).
param(p_cls_3254, 1, m_find_enum_type_2043).
param(p_enum_class_3255, 1, m_find_first_annotated_enum_value_2044).
param(p_annotation_class_3256, 2, m_find_first_annotated_enum_value_2044).
param(p_impl_3257, 1, m_is_jackson_std_impl_2045).
param(p_impl_class_3258, 1, m_is_jackson_std_impl_2046).
param(p_cls_3259, 1, m_get_package_name_2047).
param(p_cls_3260, 1, m_has_enclosing_method_2048).
param(p_cls_3261, 1, m_get_declared_fields_2049).
param(p_cls_3262, 1, m_get_declared_methods_2050).
param(p_cls_3263, 1, m_find_class_annotations_2051).
method_invoc(class_util_1_expr17, m_is_object_or_primitive_2006, line(class_util_1, 1036)).
argument(p_cls_3263, 1, class_util_1_expr17).
return(class_util_1_expr18, m_find_class_annotations_2051, line(class_util_1, 1039)).
method_invoc(class_util_1_expr18, m_get_declared_annotations_2052, line(class_util_1, 1039)).
ref(p_cls_3263, class_util_1_expr18, line(class_util_1, 1039)).
param(p_cls_3264, 1, m_get_class_methods_2053).
param(p_cls_3265, 1, m_get_constructors_2054).
param(p_cls_3266, 1, m_get_declaring_class_2055).
param(p_cls_3267, 1, m_get_generic_superclass_1969).
return(class_util_1_expr19, m_get_generic_superclass_1969, line(class_util_1, 1104)).
method_invoc(class_util_1_expr19, m_get_generic_superclass_2056, line(class_util_1, 1104)).
ref(p_cls_3267, class_util_1_expr19, line(class_util_1, 1104)).
param(p_cls_3268, 1, m_get_generic_interfaces_1970).
return(class_util_1_expr20, m_get_generic_interfaces_1970, line(class_util_1, 1111)).
method_invoc(class_util_1_expr20, m_get_generic_interfaces_2057, line(class_util_1, 1111)).
ref(p_cls_3268, class_util_1_expr20, line(class_util_1, 1111)).
param(p_cls_3269, 1, m_get_enclosing_class_2058).
param(p_cls_3270, 1, m__interfaces_2059).
param(p_set_3271, 1, m_enum_type_for_2061).
param(p_set_3272, 1, m_enum_type_for_2062).
param(p_bean_3273, 1, m_get_2063).
param(p_field_3274, 2, m_get_2063).
param(p_from_class_3275, 1, m_locate_field_2064).
param(p_expected_name_3276, 2, m_locate_field_2064).
param(p_type_3277, 3, m_locate_field_2064).
param(p_ctor_3278, 1, m_ctor_2065).

%failing_serializer_1 - com.fasterxml.jackson.databind.ser.impl.FailingSerializer
param(p_msg_2546, 1, m_failing_serializer_1695).
method_invoc(failing_serializer_1_expr1, m_std_serializer_1696, line(failing_serializer_1, 28)).
argument(failing_serializer_1_expr2, 1, failing_serializer_1_expr1).
assign(f__msg_2547, p_msg_2546, line(failing_serializer_1, 29)).
param(p_value_2548, 1, m_serialize_1697).
param(p_g_2549, 2, m_serialize_1697).
param(p_provider_2550, 3, m_serialize_1697).
throw(m_serialize_1697, ioexception).
param(p_provider_2551, 1, m_get_schema_1698).
param(p_type_hint_2552, 2, m_get_schema_1698).
throw(m_get_schema_1698, json_mapping_exception).
param(p_visitor_2553, 1, m_accept_json_format_visitor_1699).
param(p_type_hint_2554, 2, m_accept_json_format_visitor_1699).

%visibility_checker_1 - com.fasterxml.jackson.databind.introspect.VisibilityChecker
param(p_ann_2120, 1, m_with_1463).
param(p_vis_2121, 1, m_with_overrides_1464).
param(p_v_2122, 1, m_with_1465).
param(p_method_2123, 1, m_with_visibility_1466).
param(p_v_2124, 2, m_with_visibility_1466).
param(p_v_2125, 1, m_with_getter_visibility_1467).
param(p_v_2126, 1, m_with_is_getter_visibility_1468).
param(p_v_2127, 1, m_with_setter_visibility_1469).
param(p_v_2128, 1, m_with_creator_visibility_1470).
param(p_v_2129, 1, m_with_field_visibility_1471).
param(p_m_2130, 1, m_is_getter_visible_1472).
param(p_m_2131, 1, m_is_getter_visible_1473).
param(p_m_2132, 1, m_is_is_getter_visible_1474).
param(p_m_2133, 1, m_is_is_getter_visible_1475).
param(p_m_2134, 1, m_is_setter_visible_1476).
param(p_m_2135, 1, m_is_setter_visible_1477).
param(p_m_2136, 1, m_is_creator_visible_1478).
param(p_m_2137, 1, m_is_creator_visible_1479).
param(p_f_2138, 1, m_is_field_visible_1480).
param(p_f_2139, 1, m_is_field_visible_1481).
assign(f_default_2140, visibility_checker_1_expr1, line(visibility_checker_1, 164)).
method_invoc(visibility_checker_1_expr1, m_std_1482, line(visibility_checker_1, 164)).
argument(q_public_only_13, 1, visibility_checker_1_expr1).
argument(q_public_only_14, 2, visibility_checker_1_expr1).
argument(q_any_14, 3, visibility_checker_1_expr1).
argument(q_any_15, 4, visibility_checker_1_expr1).
argument(q_public_only_15, 5, visibility_checker_1_expr1).
return(f_default_2140, m_default_instance_1483, line(visibility_checker_1, 178)).
param(p_ann_2141, 1, m_std_1484).
param(p_getter_2142, 1, m_std_1482).
param(p_is_getter_2143, 2, m_std_1482).
param(p_setter_2144, 3, m_std_1482).
param(p_creator_2145, 4, m_std_1482).
param(p_field_2146, 5, m_std_1482).
assign(f__getter_min_level_2147, p_getter_2142, line(visibility_checker_1, 202)).
assign(f__is_getter_min_level_2148, p_is_getter_2143, line(visibility_checker_1, 203)).
assign(f__setter_min_level_2149, p_setter_2144, line(visibility_checker_1, 204)).
assign(f__creator_min_level_2150, p_creator_2145, line(visibility_checker_1, 205)).
assign(f__field_min_level_2151, p_field_2146, line(visibility_checker_1, 206)).
param(p_v_2152, 1, m_std_1485).
param(p_vis_2153, 1, m_construct_1486).
param(p_g_2154, 1, m__with_1487).
param(p_is_g_2155, 2, m__with_1487).
param(p_s_2156, 3, m__with_1487).
param(p_cr_2157, 4, m__with_1487).
param(p_f_2158, 5, m__with_1487).
param(p_ann_2159, 1, m_with_1488).
param(p_vis_2160, 1, m_with_overrides_1489).
param(p_defaults_2161, 1, m__default_or_override_1490).
param(p_override_2162, 2, m__default_or_override_1490).
param(p_v_2163, 1, m_with_1491).
param(p_method_2164, 1, m_with_visibility_1492).
param(p_v_2165, 2, m_with_visibility_1492).
param(p_v_2166, 1, m_with_getter_visibility_1493).
param(p_v_2167, 1, m_with_is_getter_visibility_1494).
param(p_v_2168, 1, m_with_setter_visibility_1495).
param(p_v_2169, 1, m_with_creator_visibility_1496).
param(p_v_2170, 1, m_with_field_visibility_1497).
param(p_m_2171, 1, m_is_creator_visible_1498).
param(p_m_2172, 1, m_is_creator_visible_1499).
param(p_f_2173, 1, m_is_field_visible_1500).
param(p_f_2174, 1, m_is_field_visible_1501).
param(p_m_2175, 1, m_is_getter_visible_1502).
param(p_m_2176, 1, m_is_getter_visible_1503).
param(p_m_2177, 1, m_is_is_getter_visible_1504).
param(p_m_2178, 1, m_is_is_getter_visible_1505).
param(p_m_2179, 1, m_is_setter_visible_1506).
param(p_m_2180, 1, m_is_setter_visible_1507).

%deserialization_feature_1 - com.fasterxml.jackson.databind.DeserializationFeature
param(p_default_state_445, 1, m_deserialization_feature_299).
assign(f__default_state_446, p_default_state_445, line(deserialization_feature_1, 470)).
assign(f__mask_447, deserialization_feature_1_expr3, line(deserialization_feature_1, 471)).
assign(deserialization_feature_1_expr3, deserialization_feature_1_expr4, line(deserialization_feature_1, 471)).
method_invoc(deserialization_feature_1_expr5, m_ordinal_300, line(deserialization_feature_1, 471)).
return(f__default_state_446, m_enabled_by_default_301, line(deserialization_feature_1, 475)).
return(f__mask_447, m_get_mask_302, line(deserialization_feature_1, 478)).
param(p_flags_448, 1, m_enabled_in_303).

%context_attributes_1 - com.fasterxml.jackson.databind.cfg.ContextAttributes
return(context_attributes_1_expr1, m_get_empty_841, line(context_attributes_1, 24)).
method_invoc(context_attributes_1_expr1, m_get_empty_842, line(context_attributes_1, 24)).
ref(t_impl_18, context_attributes_1_expr1, line(context_attributes_1, 24)).
param(p_key_1144, 1, m_with_shared_attribute_843).
param(p_value_1145, 2, m_with_shared_attribute_843).
param(p_attributes_1146, 1, m_with_shared_attributes_844).
param(p_key_1147, 1, m_without_shared_attribute_845).
param(p_key_1148, 1, m_get_attribute_846).
param(p_key_1149, 1, m_with_per_call_attribute_847).
param(p_value_1150, 2, m_with_per_call_attribute_847).
assign(f_empty_1151, context_attributes_1_expr2, line(context_attributes_1, 67)).
method_invoc(context_attributes_1_expr2, m_impl_848, line(context_attributes_1, 67)).
argument(context_attributes_1_expr3, 1, context_attributes_1_expr2).
method_invoc(context_attributes_1_expr3, m_empty_map_849, line(context_attributes_1, 67)).
ref(t_collections_19, context_attributes_1_expr3, line(context_attributes_1, 67)).
assign(f_null_surrogate_1152, context_attributes_1_expr4, line(context_attributes_1, 69)).
method_invoc(context_attributes_1_expr4, m_object_850, line(context_attributes_1, 69)).
param(p_shared_1153, 1, m_impl_848).
assign(f__shared_1154, p_shared_1153, line(context_attributes_1, 93)).
assign(f__non_shared_1155, context_attributes_1_literal1, line(context_attributes_1, 94)).
param(p_shared_1156, 1, m_impl_851).
param(p_non_shared_1157, 2, m_impl_851).
return(f_empty_1151, m_get_empty_842, line(context_attributes_1, 103)).
param(p_key_1158, 1, m_with_shared_attribute_852).
param(p_value_1159, 2, m_with_shared_attribute_852).
param(p_shared_1160, 1, m_with_shared_attributes_853).
param(p_key_1161, 1, m_without_shared_attribute_854).
param(p_key_1162, 1, m_get_attribute_855).
param(p_key_1163, 1, m_with_per_call_attribute_856).
param(p_value_1164, 2, m_with_per_call_attribute_856).
param(p_key_1165, 1, m_non_shared_instance_857).
param(p_value_1166, 2, m_non_shared_instance_857).
param(p_src_1167, 1, m__copy_858).

%annotation_introspector_1 - com.fasterxml.jackson.databind.AnnotationIntrospector
param(p_t_1, 1, m_reference_property_1).
param(p_n_2, 2, m_reference_property_1).
param(p_name_3, 1, m_managed_2).
param(p_name_4, 1, m_back_3).
param(p_a_1_5, 1, m_pair_9).
param(p_a_2_6, 2, m_pair_9).
param(p_result_7, 1, m_all_introspectors_11).
param(p_ann_8, 1, m_is_annotation_bundle_13).
param(p_ann_9, 1, m_find_object_id_info_14).
param(p_ann_10, 1, m_find_object_reference_info_15).
param(p_object_id_info_11, 2, m_find_object_reference_info_15).
param(p_ac_12, 1, m_find_root_name_16).
param(p_ac_13, 1, m_find_property_ignorals_17).
param(p_ac_14, 1, m_is_ignorable_type_18).
param(p_ann_15, 1, m_find_filter_id_19).
param(p_ac_16, 1, m_find_naming_strategy_20).
param(p_ac_17, 1, m_find_class_description_21).
param(p_ac_18, 1, m_find_properties_to_ignore_22).
param(p_for_serialization_19, 2, m_find_properties_to_ignore_22).
param(p_ac_20, 1, m_find_properties_to_ignore_23).
param(p_ac_21, 1, m_find_ignore_unknown_properties_24).
param(p_ac_22, 1, m_find_auto_detect_visibility_25).
param(p_checker_23, 2, m_find_auto_detect_visibility_25).
param(p_config_24, 1, m_find_type_resolver_26).
param(p_ac_25, 2, m_find_type_resolver_26).
param(p_base_type_26, 3, m_find_type_resolver_26).
param(p_config_27, 1, m_find_property_type_resolver_27).
param(p_am_28, 2, m_find_property_type_resolver_27).
param(p_base_type_29, 3, m_find_property_type_resolver_27).
param(p_config_30, 1, m_find_property_content_type_resolver_28).
param(p_am_31, 2, m_find_property_content_type_resolver_28).
param(p_container_type_32, 3, m_find_property_content_type_resolver_28).
param(p_a_33, 1, m_find_subtypes_29).
param(p_ac_34, 1, m_find_type_name_30).
param(p_member_35, 1, m_is_type_id_31).
param(p_member_36, 1, m_find_reference_type_32).
param(p_member_37, 1, m_find_unwrapping_name_transformer_33).
param(p_m_38, 1, m_has_ignore_marker_34).
param(p_m_39, 1, m_find_injectable_value_35).
param(p_m_40, 1, m_has_required_marker_36).
param(p_a_41, 1, m_find_views_37).
param(p_member_or_class_42, 1, m_find_format_38).
param(p_ann_43, 1, m_find_wrapper_name_39).
param(p_ann_44, 1, m_find_property_default_value_40).
param(p_ann_45, 1, m_find_property_description_41).
param(p_ann_46, 1, m_find_property_index_42).
param(p_member_47, 1, m_find_implicit_property_name_43).
param(p_ann_48, 1, m_find_property_aliases_44).
param(p_ann_49, 1, m_find_property_access_45).
param(p_config_50, 1, m_resolve_setter_conflict_46).
param(p_setter_1_51, 2, m_resolve_setter_conflict_46).
param(p_setter_2_52, 3, m_resolve_setter_conflict_46).
param(p_m_53, 1, m_find_injectable_value_id_47).
param(p_am_54, 1, m_find_serializer_48).
param(p_am_55, 1, m_find_key_serializer_49).
param(p_am_56, 1, m_find_content_serializer_50).
param(p_am_57, 1, m_find_null_serializer_51).
param(p_a_58, 1, m_find_serialization_typing_52).
param(p_a_59, 1, m_find_serialization_converter_53).
param(p_a_60, 1, m_find_serialization_content_converter_54).
param(p_a_61, 1, m_find_property_inclusion_55).
param(p_a_62, 1, m_find_serialization_inclusion_56).
param(p_def_value_63, 2, m_find_serialization_inclusion_56).
param(p_a_64, 1, m_find_serialization_inclusion_for_content_57).
param(p_def_value_65, 2, m_find_serialization_inclusion_for_content_57).
param(p_config_66, 1, m_refine_serialization_type_58).
param(p_a_67, 2, m_refine_serialization_type_58).
param(p_base_type_68, 3, m_refine_serialization_type_58).
throw(m_refine_serialization_type_58, json_mapping_exception).
param(p_a_69, 1, m_find_serialization_type_59).
param(p_am_70, 1, m_find_serialization_key_type_60).
param(p_base_type_71, 2, m_find_serialization_key_type_60).
param(p_am_72, 1, m_find_serialization_content_type_61).
param(p_base_type_73, 2, m_find_serialization_content_type_61).
param(p_ac_74, 1, m_find_serialization_property_order_62).
param(p_ann_75, 1, m_find_serialization_sort_alphabetically_63).
param(p_config_76, 1, m_find_and_add_virtual_properties_64).
param(p_ac_77, 2, m_find_and_add_virtual_properties_64).
param(p_properties_78, 3, m_find_and_add_virtual_properties_64).
param(p_a_79, 1, m_find_name_for_serialization_65).
param(p_a_80, 1, m_has_as_value_66).
param(p_a_81, 1, m_has_any_getter_67).
param(p_enum_type_82, 1, m_find_enum_values_68).
param(p_enum_values_83, 2, m_find_enum_values_68).
param(p_names_84, 3, m_find_enum_values_68).
param(p_enum_cls_85, 1, m_find_default_enum_value_69).
param(p_value_86, 1, m_find_enum_value_70).
param(p_am_87, 1, m_has_as_value_annotation_71).
param(p_am_88, 1, m_has_any_getter_annotation_72).
param(p_am_89, 1, m_find_deserializer_73).
param(p_am_90, 1, m_find_key_deserializer_74).
param(p_am_91, 1, m_find_content_deserializer_75).
param(p_a_92, 1, m_find_deserialization_converter_76).
param(p_a_93, 1, m_find_deserialization_content_converter_77).
param(p_config_94, 1, m_refine_deserialization_type_78).
param(p_a_95, 2, m_refine_deserialization_type_78).
param(p_base_type_96, 3, m_refine_deserialization_type_78).
throw(m_refine_deserialization_type_78, json_mapping_exception).
param(p_am_97, 1, m_find_deserialization_type_79).
param(p_base_type_98, 2, m_find_deserialization_type_79).
param(p_am_99, 1, m_find_deserialization_key_type_80).
param(p_base_key_type_100, 2, m_find_deserialization_key_type_80).
param(p_am_101, 1, m_find_deserialization_content_type_81).
param(p_base_content_type_102, 2, m_find_deserialization_content_type_81).
param(p_ac_103, 1, m_find_value_instantiator_82).
param(p_ac_104, 1, m_find_pojobuilder_83).
param(p_ac_105, 1, m_find_pojobuilder_config_84).
param(p_a_106, 1, m_find_name_for_deserialization_85).
param(p_a_107, 1, m_has_any_setter_86).
param(p_a_108, 1, m_find_setter_info_87).
param(p_a_109, 1, m_find_merge_info_88).
param(p_config_110, 1, m_find_creator_annotation_89).
param(p_a_111, 2, m_find_creator_annotation_89).
param(p_a_112, 1, m_has_creator_annotation_90).
param(p_a_113, 1, m_find_creator_binding_91).
param(p_am_114, 1, m_has_any_setter_annotation_92).
param(p_annotated_115, 1, m__find_annotation_93).
param(p_anno_class_116, 2, m__find_annotation_93).
return(annotation_introspector_1_expr1, m__find_annotation_93, line(annotation_introspector_1, 1336)).
method_invoc(annotation_introspector_1_expr1, m_get_annotation_94, line(annotation_introspector_1, 1336)).
argument(p_anno_class_116, 1, annotation_introspector_1_expr1).
ref(p_annotated_115, annotation_introspector_1_expr1, line(annotation_introspector_1, 1336)).
param(p_annotated_117, 1, m__has_annotation_95).
param(p_anno_class_118, 2, m__has_annotation_95).
param(p_annotated_119, 1, m__has_one_of_96).
param(p_anno_classes_120, 2, m__has_one_of_96).

%simple_mix_in_resolver_1 - com.fasterxml.jackson.databind.introspect.SimpleMixInResolver
param(p_overrides_2109, 1, m_simple_mix_in_resolver_400).
assign(f__overrides_2110, p_overrides_2109, line(simple_mix_in_resolver_1, 36)).
param(p_overrides_2111, 1, m_simple_mix_in_resolver_1456).
param(p_mixins_2112, 2, m_simple_mix_in_resolver_1456).
param(p_overrides_2113, 1, m_with_overrides_1457).
param(p_source_mixins_2114, 1, m_set_local_definitions_1459).
param(p_target_2115, 1, m_add_local_definition_1460).
param(p_mixin_source_2116, 2, m_add_local_definition_1460).
param(p_cls_2117, 1, m_find_mix_in_class_for_983).
assign(v_mixin_2118, simple_mix_in_resolver_1_expr2, line(simple_mix_in_resolver_1, 92)).
cond_expr(simple_mix_in_resolver_1_expr3, simple_mix_in_resolver_1_literal1, simple_mix_in_resolver_1_expr4, line(simple_mix_in_resolver_1, 92)).
assign(simple_mix_in_resolver_1_expr3, simple_mix_in_resolver_1_expr5, line(simple_mix_in_resolver_1, 92)).
method_invoc(simple_mix_in_resolver_1_expr4, m_find_mix_in_class_for_1215, line(simple_mix_in_resolver_1, 92)).
argument(p_cls_2117, 1, simple_mix_in_resolver_1_expr4).
ref(f__overrides_2110, simple_mix_in_resolver_1_expr4, line(simple_mix_in_resolver_1, 92)).
assign(simple_mix_in_resolver_1_expr8, simple_mix_in_resolver_1_expr9, line(simple_mix_in_resolver_1, 93)).
return(v_mixin_2118, m_find_mix_in_class_for_983, line(simple_mix_in_resolver_1, 96)).

%boolean_serializer_1 - com.fasterxml.jackson.databind.ser.std.BooleanSerializer
param(p_for_primitive_2571, 1, m_boolean_serializer_1586).
method_invoc(boolean_serializer_1_expr1, m_std_scalar_serializer_1707, line(boolean_serializer_1, 42)).
argument(boolean_serializer_1_expr2, 1, boolean_serializer_1_expr1).
argument(boolean_serializer_1_literal1, 2, boolean_serializer_1_expr1).
cond_expr(p_for_primitive_2571, q_type_19, boolean_serializer_1_expr3, line(boolean_serializer_1, 42)).
ref(t_boolean_34, q_type_19, line(boolean_serializer_1, 42)).
assign(f__for_primitive_2572, p_for_primitive_2571, line(boolean_serializer_1, 43)).
param(p_serializers_2573, 1, m_create_contextual_1708).
param(p_property_2574, 2, m_create_contextual_1708).
throw(m_create_contextual_1708, json_mapping_exception).
param(p_value_2575, 1, m_serialize_1709).
param(p_g_2576, 2, m_serialize_1709).
param(p_provider_2577, 3, m_serialize_1709).
throw(m_serialize_1709, ioexception).
param(p_value_2578, 1, m_serialize_with_type_1710).
param(p_g_2579, 2, m_serialize_with_type_1710).
param(p_provider_2580, 3, m_serialize_with_type_1710).
param(p_type_ser_2581, 4, m_serialize_with_type_1710).
throw(m_serialize_with_type_1710, ioexception).
param(p_provider_2582, 1, m_get_schema_1711).
param(p_type_hint_2583, 2, m_get_schema_1711).
param(p_visitor_2584, 1, m_accept_json_format_visitor_1712).
param(p_type_hint_2585, 2, m_accept_json_format_visitor_1712).
throw(m_accept_json_format_visitor_1712, json_mapping_exception).
param(p_for_primitive_2586, 1, m_as_number_1713).
param(p_value_2587, 1, m_serialize_1714).
param(p_g_2588, 2, m_serialize_1714).
param(p_provider_2589, 3, m_serialize_1714).
throw(m_serialize_1714, ioexception).
param(p_value_2590, 1, m_serialize_with_type_1715).
param(p_g_2591, 2, m_serialize_with_type_1715).
param(p_provider_2592, 3, m_serialize_with_type_1715).
param(p_type_ser_2593, 4, m_serialize_with_type_1715).
throw(m_serialize_with_type_1715, ioexception).
param(p_visitor_2594, 1, m_accept_json_format_visitor_1716).
param(p_type_hint_2595, 2, m_accept_json_format_visitor_1716).
throw(m_accept_json_format_visitor_1716, json_mapping_exception).
param(p_serializers_2596, 1, m_create_contextual_1717).
param(p_property_2597, 2, m_create_contextual_1717).
throw(m_create_contextual_1717, json_mapping_exception).

%default_serializer_provider_1 - com.fasterxml.jackson.databind.ser.DefaultSerializerProvider
method_invoc(default_serializer_provider_1_expr1, m_serializer_provider_723, line(default_serializer_provider_1, 66)).
param(p_src_2468, 1, m_default_serializer_provider_1649).
param(p_config_2469, 2, m_default_serializer_provider_1649).
param(p_f_2470, 3, m_default_serializer_provider_1649).
param(p_src_2471, 1, m_default_serializer_provider_1650).
param(p_config_2472, 1, m_create_instance_1651).
param(p_jsf_2473, 2, m_create_instance_1651).
param(p_annotated_2474, 1, m_serializer_instance_1653).
param(p_ser_def_2475, 2, m_serializer_instance_1653).
throw(m_serializer_instance_1653, json_mapping_exception).
param(p_for_property_2476, 1, m_include_filter_instance_1654).
param(p_filter_class_2477, 2, m_include_filter_instance_1654).
param(p_filter_2478, 1, m_include_filter_suppress_nulls_1655).
throw(m_include_filter_suppress_nulls_1655, json_mapping_exception).
param(p_for_pojo_2479, 1, m_find_object_id_1656).
param(p_generator_type_2480, 2, m_find_object_id_1656).
param(p_cls_2481, 1, m_has_serializer_for_1658).
param(p_cause_2482, 2, m_has_serializer_for_1658).
param(p_gen_2483, 1, m_serialize_value_1660).
param(p_value_2484, 2, m_serialize_value_1660).
throw(m_serialize_value_1660, ioexception).
param(p_gen_2485, 1, m_serialize_value_1661).
param(p_value_2486, 2, m_serialize_value_1661).
param(p_root_type_2487, 3, m_serialize_value_1661).
throw(m_serialize_value_1661, ioexception).
param(p_gen_2488, 1, m_serialize_value_1662).
param(p_value_2489, 2, m_serialize_value_1662).
param(p_root_type_2490, 3, m_serialize_value_1662).
param(p_ser_2491, 4, m_serialize_value_1662).
throw(m_serialize_value_1662, ioexception).
param(p_gen_2492, 1, m_serialize_polymorphic_1663).
param(p_value_2493, 2, m_serialize_polymorphic_1663).
param(p_root_type_2494, 3, m_serialize_polymorphic_1663).
param(p_value_ser_2495, 4, m_serialize_polymorphic_1663).
param(p_type_ser_2496, 5, m_serialize_polymorphic_1663).
throw(m_serialize_polymorphic_1663, ioexception).
param(p_gen_2497, 1, m__serialize_1664).
param(p_value_2498, 2, m__serialize_1664).
param(p_ser_2499, 3, m__serialize_1664).
param(p_root_name_2500, 4, m__serialize_1664).
throw(m__serialize_1664, ioexception).
param(p_gen_2501, 1, m__serialize_1665).
param(p_value_2502, 2, m__serialize_1665).
param(p_ser_2503, 3, m__serialize_1665).
throw(m__serialize_1665, ioexception).
param(p_gen_2504, 1, m__serialize_null_1666).
throw(m__serialize_null_1666, ioexception).
param(p_g_2505, 1, m__wrap_as_ioe_1667).
param(p_e_2506, 2, m__wrap_as_ioe_1667).
param(p_java_type_2507, 1, m_accept_json_format_visitor_1670).
param(p_visitor_2508, 2, m_accept_json_format_visitor_1670).
throw(m_accept_json_format_visitor_1670, json_mapping_exception).
param(p_type_2509, 1, m_generate_json_schema_1671).
throw(m_generate_json_schema_1671, json_mapping_exception).
method_invoc(default_serializer_provider_1_expr2, m_default_serializer_provider_1648, line(default_serializer_provider_1, 610)).
param(p_src_2510, 1, m_impl_1672).
param(p_src_2511, 1, m_impl_1673).
param(p_config_2512, 2, m_impl_1673).
param(p_f_2513, 3, m_impl_1673).
param(p_config_2514, 1, m_create_instance_1675).
param(p_jsf_2515, 2, m_create_instance_1675).

%base_settings_1 - com.fasterxml.jackson.databind.cfg.BaseSettings
assign(f_default_timezone_1091, base_settings_1_expr1, line(base_settings_1, 29)).
param(p_ci_1092, 1, m_base_settings_392).
param(p_ai_1093, 2, m_base_settings_392).
param(p_pns_1094, 3, m_base_settings_392).
param(p_tf_1095, 4, m_base_settings_392).
param(p_typer_1096, 5, m_base_settings_392).
param(p_date_format_1097, 6, m_base_settings_392).
param(p_hi_1098, 7, m_base_settings_392).
param(p_locale_1099, 8, m_base_settings_392).
param(p_tz_1100, 9, m_base_settings_392).
param(p_default_base64_1101, 10, m_base_settings_392).
assign(f__class_introspector_1102, p_ci_1092, line(base_settings_1, 138)).
assign(f__annotation_introspector_1103, p_ai_1093, line(base_settings_1, 139)).
assign(f__property_naming_strategy_1104, p_pns_1094, line(base_settings_1, 140)).
assign(f__type_factory_1105, p_tf_1095, line(base_settings_1, 141)).
assign(f__type_resolver_builder_1106, p_typer_1096, line(base_settings_1, 142)).
assign(f__date_format_1107, p_date_format_1097, line(base_settings_1, 143)).
assign(f__handler_instantiator_1108, p_hi_1098, line(base_settings_1, 144)).
assign(f__locale_1109, p_locale_1099, line(base_settings_1, 145)).
assign(f__time_zone_1110, p_tz_1100, line(base_settings_1, 146)).
assign(f__default_base64_1111, p_default_base64_1101, line(base_settings_1, 147)).
param(p_ci_1112, 1, m_with_class_introspector_401).
return(base_settings_1_expr13, m_with_class_introspector_401, line(base_settings_1, 160)).
method_invoc(base_settings_1_expr13, m_base_settings_392, line(base_settings_1, 160)).
argument(p_ci_1112, 1, base_settings_1_expr13).
argument(f__annotation_introspector_1103, 2, base_settings_1_expr13).
argument(f__property_naming_strategy_1104, 3, base_settings_1_expr13).
argument(f__type_factory_1105, 4, base_settings_1_expr13).
argument(f__type_resolver_builder_1106, 5, base_settings_1_expr13).
argument(f__date_format_1107, 6, base_settings_1_expr13).
argument(f__handler_instantiator_1108, 7, base_settings_1_expr13).
argument(f__locale_1109, 8, base_settings_1_expr13).
argument(f__time_zone_1110, 9, base_settings_1_expr13).
argument(f__default_base64_1111, 10, base_settings_1_expr13).
param(p_ai_1113, 1, m_with_annotation_introspector_794).
param(p_ai_1114, 1, m_with_inserted_annotation_introspector_795).
param(p_ai_1115, 1, m_with_appended_annotation_introspector_796).
param(p_pns_1116, 1, m_with_property_naming_strategy_797).
param(p_tf_1117, 1, m_with_type_factory_798).
param(p_typer_1118, 1, m_with_type_resolver_builder_799).
param(p_df_1119, 1, m_with_date_format_800).
param(p_hi_1120, 1, m_with_handler_instantiator_801).
param(p_l_1121, 1, m_with_802).
param(p_tz_1122, 1, m_with_803).
param(p_base_64_1123, 1, m_with_804).
return(f__annotation_introspector_1103, m_get_annotation_introspector_806, line(base_settings_1, 296)).
return(f__type_factory_1105, m_get_type_factory_808, line(base_settings_1, 304)).
param(p_df_1124, 1, m__force_816).
param(p_tz_1125, 2, m__force_816).

%to_string_serializer_1 - com.fasterxml.jackson.databind.ser.std.ToStringSerializer
assign(f_instance_2837, to_string_serializer_1_expr1, line(to_string_serializer_1, 28)).
method_invoc(to_string_serializer_1_expr1, m_to_string_serializer_1817, line(to_string_serializer_1, 28)).
method_invoc(to_string_serializer_1_expr2, m_std_serializer_1696, line(to_string_serializer_1, 38)).
argument(to_string_serializer_1_expr3, 1, to_string_serializer_1_expr2).
param(p_handled_type_2838, 1, m_to_string_serializer_1766).
method_invoc(to_string_serializer_1_expr4, m_std_serializer_1784, line(to_string_serializer_1, 46)).
argument(p_handled_type_2838, 1, to_string_serializer_1_expr4).
argument(to_string_serializer_1_literal1, 2, to_string_serializer_1_expr4).
param(p_prov_2839, 1, m_is_empty_1818).
param(p_value_2840, 2, m_is_empty_1818).
param(p_value_2841, 1, m_serialize_1819).
param(p_gen_2842, 2, m_serialize_1819).
param(p_provider_2843, 3, m_serialize_1819).
throw(m_serialize_1819, ioexception).
param(p_value_2844, 1, m_serialize_with_type_1820).
param(p_gen_2845, 2, m_serialize_with_type_1820).
param(p_provider_2846, 3, m_serialize_with_type_1820).
param(p_type_ser_2847, 4, m_serialize_with_type_1820).
throw(m_serialize_with_type_1820, ioexception).
param(p_provider_2848, 1, m_get_schema_1821).
param(p_type_hint_2849, 2, m_get_schema_1821).
throw(m_get_schema_1821, json_mapping_exception).
param(p_visitor_2850, 1, m_accept_json_format_visitor_1822).
param(p_type_hint_2851, 2, m_accept_json_format_visitor_1822).
throw(m_accept_json_format_visitor_1822, json_mapping_exception).

%serialization_config_1 - com.fasterxml.jackson.databind.SerializationConfig
assign(f_default_pretty_printer_883, serialization_config_1_expr1, line(serialization_config_1, 37)).
method_invoc(serialization_config_1_expr1, m_default_pretty_printer_672, line(serialization_config_1, 37)).
param(p_base_884, 1, m_serialization_config_404).
param(p_str_885, 2, m_serialization_config_404).
param(p_mixins_886, 3, m_serialization_config_404).
param(p_root_names_887, 4, m_serialization_config_404).
param(p_config_overrides_888, 5, m_serialization_config_404).
method_invoc(serialization_config_1_expr2, m_mapper_config_base_158, line(serialization_config_1, 114)).
argument(p_base_884, 1, serialization_config_1_expr2).
argument(p_str_885, 2, serialization_config_1_expr2).
argument(p_mixins_886, 3, serialization_config_1_expr2).
argument(p_root_names_887, 4, serialization_config_1_expr2).
argument(p_config_overrides_888, 5, serialization_config_1_expr2).
assign(f__ser_features_889, serialization_config_1_expr4, line(serialization_config_1, 115)).
method_invoc(serialization_config_1_expr4, m_collect_feature_defaults_159, line(serialization_config_1, 115)).
argument(serialization_config_1_expr5, 1, serialization_config_1_expr4).
assign(f__filter_provider_890, serialization_config_1_literal1, line(serialization_config_1, 116)).
assign(f__default_pretty_printer_891, f_default_pretty_printer_883, line(serialization_config_1, 117)).
assign(f__generator_features_892, serialization_config_1_literal2, line(serialization_config_1, 118)).
assign(f__generator_features_to_change_893, serialization_config_1_literal3, line(serialization_config_1, 119)).
assign(f__format_write_features_894, serialization_config_1_literal4, line(serialization_config_1, 120)).
assign(f__format_write_features_to_change_895, serialization_config_1_literal5, line(serialization_config_1, 121)).
param(p_src_896, 1, m_serialization_config_673).
param(p_mixins_897, 2, m_serialization_config_673).
param(p_root_names_898, 3, m_serialization_config_673).
param(p_config_overrides_899, 4, m_serialization_config_673).
param(p_src_900, 1, m_serialization_config_674).
param(p_str_901, 2, m_serialization_config_674).
param(p_src_902, 1, m_serialization_config_675).
param(p_mapper_features_903, 2, m_serialization_config_675).
param(p_ser_features_904, 3, m_serialization_config_675).
param(p_generator_features_905, 4, m_serialization_config_675).
param(p_generator_feature_mask_906, 5, m_serialization_config_675).
param(p_format_features_907, 6, m_serialization_config_675).
param(p_format_features_mask_908, 7, m_serialization_config_675).
param(p_src_909, 1, m_serialization_config_676).
param(p_base_910, 2, m_serialization_config_676).
param(p_src_911, 1, m_serialization_config_677).
param(p_filters_912, 2, m_serialization_config_677).
param(p_src_913, 1, m_serialization_config_678).
param(p_view_914, 2, m_serialization_config_678).
param(p_src_915, 1, m_serialization_config_679).
param(p_root_name_916, 2, m_serialization_config_679).
param(p_src_917, 1, m_serialization_config_680).
param(p_attrs_918, 2, m_serialization_config_680).
param(p_src_919, 1, m_serialization_config_681).
param(p_mixins_920, 2, m_serialization_config_681).
param(p_src_921, 1, m_serialization_config_682).
param(p_default_pp_922, 2, m_serialization_config_682).
param(p_new_base_923, 1, m__with_base_683).
param(p_mapper_features_924, 1, m__with_mapper_features_684).
param(p_root_name_925, 1, m_with_root_name_685).
param(p_str_926, 1, m_with_686).
param(p_view_927, 1, m_with_view_687).
param(p_attrs_928, 1, m_with_688).
param(p_df_929, 1, m_with_689).
param(p_feature_930, 1, m_with_690).
param(p_first_931, 1, m_with_691).
param(p_features_932, 2, m_with_691).
param(p_features_933, 1, m_with_features_692).
param(p_feature_934, 1, m_without_693).
param(p_first_935, 1, m_without_694).
param(p_features_936, 2, m_without_694).
param(p_features_937, 1, m_without_features_695).
param(p_feature_938, 1, m_with_696).
param(p_features_939, 1, m_with_features_697).
param(p_feature_940, 1, m_without_698).
param(p_features_941, 1, m_without_features_699).
param(p_feature_942, 1, m_with_700).
param(p_features_943, 1, m_with_features_701).
param(p_feature_944, 1, m_without_702).
param(p_features_945, 1, m_without_features_703).
param(p_filter_provider_946, 1, m_with_filters_704).
param(p_incl_947, 1, m_with_property_inclusion_705).
param(p_pp_948, 1, m_with_default_pretty_printer_706).
param(p_g_949, 1, m_initialize_708).
param(p_f_950, 1, m_is_enabled_711).
param(p_f_951, 1, m_is_enabled_712).
param(p_factory_952, 2, m_is_enabled_712).
param(p_feature_mask_953, 1, m_has_serialization_features_713).
param(p_type_954, 1, m_introspect_717).

%annotated_1 - com.fasterxml.jackson.databind.introspect.Annotated
param(p_acls_1729, 1, m_get_annotation_94).
param(p_acls_1730, 1, m_has_annotation_1164).
param(p_anno_classes_1731, 1, m_has_one_of_1165).
param(p_bogus_1732, 1, m_get_type_1171).
param(p_o_1733, 1, m_equals_1174).

%std_jdk_serializers_1 - com.fasterxml.jackson.databind.ser.std.StdJdkSerializers
assign(v_sers_2716, std_jdk_serializers_1_expr1, line(std_jdk_serializers_1, 27)).
method_invoc(std_jdk_serializers_1_expr1, m_hash_map_1251, line(std_jdk_serializers_1, 27)).
method_invoc(std_jdk_serializers_1_expr2, m_put_997, line(std_jdk_serializers_1, 30)).
argument(std_jdk_serializers_1_expr3, 1, std_jdk_serializers_1_expr2).
argument(std_jdk_serializers_1_expr4, 2, std_jdk_serializers_1_expr2).
ref(v_sers_2716, std_jdk_serializers_1_expr2, line(std_jdk_serializers_1, 30)).
method_invoc(std_jdk_serializers_1_expr4, m_to_string_serializer_1766, line(std_jdk_serializers_1, 30)).
argument(std_jdk_serializers_1_expr5, 1, std_jdk_serializers_1_expr4).
method_invoc(std_jdk_serializers_1_expr6, m_put_997, line(std_jdk_serializers_1, 31)).
argument(std_jdk_serializers_1_expr7, 1, std_jdk_serializers_1_expr6).
argument(std_jdk_serializers_1_expr8, 2, std_jdk_serializers_1_expr6).
ref(v_sers_2716, std_jdk_serializers_1_expr6, line(std_jdk_serializers_1, 31)).
method_invoc(std_jdk_serializers_1_expr8, m_to_string_serializer_1766, line(std_jdk_serializers_1, 31)).
argument(std_jdk_serializers_1_expr9, 1, std_jdk_serializers_1_expr8).
method_invoc(std_jdk_serializers_1_expr10, m_put_997, line(std_jdk_serializers_1, 33)).
argument(std_jdk_serializers_1_expr11, 1, std_jdk_serializers_1_expr10).
argument(std_jdk_serializers_1_expr12, 2, std_jdk_serializers_1_expr10).
ref(v_sers_2716, std_jdk_serializers_1_expr10, line(std_jdk_serializers_1, 33)).
method_invoc(std_jdk_serializers_1_expr12, m_to_string_serializer_1766, line(std_jdk_serializers_1, 33)).
argument(std_jdk_serializers_1_expr13, 1, std_jdk_serializers_1_expr12).
method_invoc(std_jdk_serializers_1_expr14, m_put_997, line(std_jdk_serializers_1, 34)).
argument(std_jdk_serializers_1_expr15, 1, std_jdk_serializers_1_expr14).
argument(std_jdk_serializers_1_expr16, 2, std_jdk_serializers_1_expr14).
ref(v_sers_2716, std_jdk_serializers_1_expr14, line(std_jdk_serializers_1, 34)).
method_invoc(std_jdk_serializers_1_expr16, m_uuidserializer_1767, line(std_jdk_serializers_1, 34)).
method_invoc(std_jdk_serializers_1_expr17, m_put_997, line(std_jdk_serializers_1, 35)).
argument(std_jdk_serializers_1_expr18, 1, std_jdk_serializers_1_expr17).
argument(std_jdk_serializers_1_expr19, 2, std_jdk_serializers_1_expr17).
ref(v_sers_2716, std_jdk_serializers_1_expr17, line(std_jdk_serializers_1, 35)).
method_invoc(std_jdk_serializers_1_expr19, m_to_string_serializer_1766, line(std_jdk_serializers_1, 35)).
argument(std_jdk_serializers_1_expr20, 1, std_jdk_serializers_1_expr19).
method_invoc(std_jdk_serializers_1_expr21, m_put_997, line(std_jdk_serializers_1, 36)).
argument(std_jdk_serializers_1_expr22, 1, std_jdk_serializers_1_expr21).
argument(std_jdk_serializers_1_expr23, 2, std_jdk_serializers_1_expr21).
ref(v_sers_2716, std_jdk_serializers_1_expr21, line(std_jdk_serializers_1, 36)).
method_invoc(std_jdk_serializers_1_expr23, m_to_string_serializer_1766, line(std_jdk_serializers_1, 36)).
argument(std_jdk_serializers_1_expr24, 1, std_jdk_serializers_1_expr23).
method_invoc(std_jdk_serializers_1_expr25, m_put_997, line(std_jdk_serializers_1, 39)).
argument(std_jdk_serializers_1_expr26, 1, std_jdk_serializers_1_expr25).
argument(std_jdk_serializers_1_expr27, 2, std_jdk_serializers_1_expr25).
ref(v_sers_2716, std_jdk_serializers_1_expr25, line(std_jdk_serializers_1, 39)).
method_invoc(std_jdk_serializers_1_expr28, m_put_997, line(std_jdk_serializers_1, 40)).
argument(std_jdk_serializers_1_expr29, 1, std_jdk_serializers_1_expr28).
argument(std_jdk_serializers_1_expr30, 2, std_jdk_serializers_1_expr28).
ref(v_sers_2716, std_jdk_serializers_1_expr28, line(std_jdk_serializers_1, 40)).
method_invoc(std_jdk_serializers_1_expr31, m_put_997, line(std_jdk_serializers_1, 41)).
argument(std_jdk_serializers_1_expr32, 1, std_jdk_serializers_1_expr31).
argument(std_jdk_serializers_1_expr33, 2, std_jdk_serializers_1_expr31).
ref(v_sers_2716, std_jdk_serializers_1_expr31, line(std_jdk_serializers_1, 41)).
method_invoc(std_jdk_serializers_1_expr34, m_put_997, line(std_jdk_serializers_1, 44)).
argument(std_jdk_serializers_1_expr35, 1, std_jdk_serializers_1_expr34).
argument(std_jdk_serializers_1_expr36, 2, std_jdk_serializers_1_expr34).
ref(v_sers_2716, std_jdk_serializers_1_expr34, line(std_jdk_serializers_1, 44)).
method_invoc(std_jdk_serializers_1_expr37, m_put_997, line(std_jdk_serializers_1, 45)).
argument(std_jdk_serializers_1_expr38, 1, std_jdk_serializers_1_expr37).
argument(std_jdk_serializers_1_expr39, 2, std_jdk_serializers_1_expr37).
ref(v_sers_2716, std_jdk_serializers_1_expr37, line(std_jdk_serializers_1, 45)).
method_invoc(std_jdk_serializers_1_expr40, m_put_997, line(std_jdk_serializers_1, 48)).
argument(std_jdk_serializers_1_expr41, 1, std_jdk_serializers_1_expr40).
argument(q_instance_30, 2, std_jdk_serializers_1_expr40).
ref(v_sers_2716, std_jdk_serializers_1_expr40, line(std_jdk_serializers_1, 48)).
ref(t_null_serializer_15, q_instance_30, line(std_jdk_serializers_1, 48)).
method_invoc(std_jdk_serializers_1_expr42, m_put_997, line(std_jdk_serializers_1, 49)).
argument(q_type_30, 1, std_jdk_serializers_1_expr42).
argument(q_instance_31, 2, std_jdk_serializers_1_expr42).
ref(v_sers_2716, std_jdk_serializers_1_expr42, line(std_jdk_serializers_1, 49)).
ref(t_void_54, q_type_30, line(std_jdk_serializers_1, 49)).
ref(t_null_serializer_15, q_instance_31, line(std_jdk_serializers_1, 49)).
method_invoc(std_jdk_serializers_1_expr43, m_put_997, line(std_jdk_serializers_1, 55)).
argument(std_jdk_serializers_1_expr44, 1, std_jdk_serializers_1_expr43).
argument(q_instance_31, 2, std_jdk_serializers_1_expr43).
ref(v_sers_2716, std_jdk_serializers_1_expr43, line(std_jdk_serializers_1, 55)).
ref(t_date_serializer_44, q_instance_31, line(std_jdk_serializers_1, 55)).
method_invoc(std_jdk_serializers_1_expr45, m_put_997, line(std_jdk_serializers_1, 58)).
argument(std_jdk_serializers_1_expr46, 1, std_jdk_serializers_1_expr45).
argument(std_jdk_serializers_1_expr47, 2, std_jdk_serializers_1_expr45).
ref(v_sers_2716, std_jdk_serializers_1_expr45, line(std_jdk_serializers_1, 58)).
method_invoc(std_jdk_serializers_1_expr48, m_put_997, line(std_jdk_serializers_1, 59)).
argument(std_jdk_serializers_1_expr49, 1, std_jdk_serializers_1_expr48).
argument(std_jdk_serializers_1_expr50, 2, std_jdk_serializers_1_expr48).
ref(v_sers_2716, std_jdk_serializers_1_expr48, line(std_jdk_serializers_1, 59)).
return(std_jdk_serializers_1_expr51, m_all_1588, line(std_jdk_serializers_1, 64)).
method_invoc(std_jdk_serializers_1_expr51, m_entry_set_1255, line(std_jdk_serializers_1, 64)).
ref(v_sers_2716, std_jdk_serializers_1_expr51, line(std_jdk_serializers_1, 64)).
param(p_value_2717, 1, m_serialize_1769).
param(p_gen_2718, 2, m_serialize_1769).
param(p_provider_2719, 3, m_serialize_1769).
throw(m_serialize_1769, ioexception).
throw(m_serialize_1769, json_generation_exception).
param(p_provider_2720, 1, m_get_schema_1770).
param(p_type_hint_2721, 2, m_get_schema_1770).
param(p_visitor_2722, 1, m_accept_json_format_visitor_1771).
param(p_type_hint_2723, 2, m_accept_json_format_visitor_1771).
throw(m_accept_json_format_visitor_1771, json_mapping_exception).
param(p_value_2724, 1, m_serialize_1773).
param(p_gen_2725, 2, m_serialize_1773).
param(p_provider_2726, 3, m_serialize_1773).
throw(m_serialize_1773, ioexception).
throw(m_serialize_1773, json_generation_exception).
param(p_provider_2727, 1, m_get_schema_1774).
param(p_type_hint_2728, 2, m_get_schema_1774).
param(p_visitor_2729, 1, m_accept_json_format_visitor_1775).
param(p_type_hint_2730, 2, m_accept_json_format_visitor_1775).
throw(m_accept_json_format_visitor_1775, json_mapping_exception).
param(p_value_2731, 1, m_serialize_1777).
param(p_gen_2732, 2, m_serialize_1777).
param(p_provider_2733, 3, m_serialize_1777).
throw(m_serialize_1777, ioexception).
throw(m_serialize_1777, json_generation_exception).
param(p_provider_2734, 1, m_get_schema_1778).
param(p_type_hint_2735, 2, m_get_schema_1778).
param(p_visitor_2736, 1, m_accept_json_format_visitor_1779).
param(p_type_hint_2737, 2, m_accept_json_format_visitor_1779).
throw(m_accept_json_format_visitor_1779, json_mapping_exception).

%deserializer_factory_config_1 - com.fasterxml.jackson.databind.cfg.DeserializerFactoryConfig
assign(f_no_deserializers_1168, deserializer_factory_config_1_expr1, line(deserializer_factory_config_1, 17)).
assign(f_no_modifiers_1169, deserializer_factory_config_1_expr2, line(deserializer_factory_config_1, 18)).
assign(f_no_abstract_type_resolvers_1170, deserializer_factory_config_1_expr3, line(deserializer_factory_config_1, 19)).
assign(f_no_value_instantiators_1171, deserializer_factory_config_1_expr4, line(deserializer_factory_config_1, 20)).
assign(f_default_key_deserializers_1172, deserializer_factory_config_1_expr5, line(deserializer_factory_config_1, 28)).
method_invoc(deserializer_factory_config_1_expr7, m_deserializer_factory_config_860, line(deserializer_factory_config_1, 71)).
argument(deserializer_factory_config_1_literal5, 1, deserializer_factory_config_1_expr7).
argument(deserializer_factory_config_1_literal6, 2, deserializer_factory_config_1_expr7).
argument(deserializer_factory_config_1_literal7, 3, deserializer_factory_config_1_expr7).
argument(deserializer_factory_config_1_literal8, 4, deserializer_factory_config_1_expr7).
argument(deserializer_factory_config_1_literal9, 5, deserializer_factory_config_1_expr7).
param(p_all_additional_deserializers_1173, 1, m_deserializer_factory_config_860).
param(p_all_additional_key_deserializers_1174, 2, m_deserializer_factory_config_860).
param(p_modifiers_1175, 3, m_deserializer_factory_config_860).
param(p_atr_1176, 4, m_deserializer_factory_config_860).
param(p_vi_1177, 5, m_deserializer_factory_config_860).
assign(f__additional_deserializers_1178, deserializer_factory_config_1_expr9, line(deserializer_factory_config_1, 84)).
cond_expr(deserializer_factory_config_1_expr10, f_no_deserializers_1168, p_all_additional_deserializers_1173, line(deserializer_factory_config_1, 84)).
assign(deserializer_factory_config_1_expr10, deserializer_factory_config_1_expr11, line(deserializer_factory_config_1, 84)).
assign(f__additional_key_deserializers_1179, deserializer_factory_config_1_expr13, line(deserializer_factory_config_1, 86)).
cond_expr(deserializer_factory_config_1_expr14, f_default_key_deserializers_1172, p_all_additional_key_deserializers_1174, line(deserializer_factory_config_1, 86)).
assign(deserializer_factory_config_1_expr14, deserializer_factory_config_1_expr15, line(deserializer_factory_config_1, 86)).
assign(f__modifiers_1180, deserializer_factory_config_1_expr17, line(deserializer_factory_config_1, 88)).
cond_expr(deserializer_factory_config_1_expr18, f_no_modifiers_1169, p_modifiers_1175, line(deserializer_factory_config_1, 88)).
assign(deserializer_factory_config_1_expr18, deserializer_factory_config_1_expr19, line(deserializer_factory_config_1, 88)).
assign(f__abstract_type_resolvers_1181, deserializer_factory_config_1_expr21, line(deserializer_factory_config_1, 89)).
cond_expr(deserializer_factory_config_1_expr22, f_no_abstract_type_resolvers_1170, p_atr_1176, line(deserializer_factory_config_1, 89)).
assign(deserializer_factory_config_1_expr22, deserializer_factory_config_1_expr23, line(deserializer_factory_config_1, 89)).
assign(f__value_instantiators_1182, deserializer_factory_config_1_expr25, line(deserializer_factory_config_1, 90)).
cond_expr(deserializer_factory_config_1_expr26, f_no_value_instantiators_1171, p_vi_1177, line(deserializer_factory_config_1, 90)).
assign(deserializer_factory_config_1_expr26, deserializer_factory_config_1_expr27, line(deserializer_factory_config_1, 90)).
param(p_additional_1183, 1, m_with_additional_deserializers_861).
param(p_additional_1184, 1, m_with_additional_key_deserializers_862).
param(p_modifier_1185, 1, m_with_deserializer_modifier_863).
param(p_resolver_1186, 1, m_with_abstract_type_resolver_864).
param(p_instantiators_1187, 1, m_with_value_instantiators_865).

%lrumap_1 - com.fasterxml.jackson.databind.util.LRUMap
param(p_initial_entries_3279, 1, m_lrumap_1333).
param(p_max_entries_3280, 2, m_lrumap_1333).
assign(f__map_3281, lrumap_1_expr2, line(lrumap_1, 35)).
method_invoc(lrumap_1_expr2, m_concurrent_hash_map_2071, line(lrumap_1, 35)).
argument(p_initial_entries_3279, 1, lrumap_1_expr2).
argument(lrumap_1_literal1, 2, lrumap_1_expr2).
argument(lrumap_1_literal2, 3, lrumap_1_expr2).
assign(f__max_entries_3282, p_max_entries_3280, line(lrumap_1, 36)).
param(p_key_3283, 1, m_put_2072).
param(p_value_3284, 2, m_put_2072).
param(p_key_3285, 1, m_put_if_absent_1362).
param(p_value_3286, 2, m_put_if_absent_1362).
method_invoc(lrumap_1_expr5, m_size_2073, line(lrumap_1, 57)).
ref(f__map_3281, lrumap_1_expr5, line(lrumap_1, 57)).
return(lrumap_1_expr6, m_put_if_absent_1362, line(lrumap_1, 64)).
method_invoc(lrumap_1_expr6, m_put_if_absent_2074, line(lrumap_1, 64)).
argument(p_key_3285, 1, lrumap_1_expr6).
argument(p_value_3286, 2, lrumap_1_expr6).
ref(f__map_3281, lrumap_1_expr6, line(lrumap_1, 64)).
param(p_key_3287, 1, m_get_1360).
return(lrumap_1_expr7, m_get_1360, line(lrumap_1, 68)).
method_invoc(lrumap_1_expr7, m_get_2075, line(lrumap_1, 68)).
argument(p_key_3287, 1, lrumap_1_expr7).
ref(f__map_3281, lrumap_1_expr7, line(lrumap_1, 68)).
param(p_in_3288, 1, m_read_object_2078).
throw(m_read_object_2078, ioexception).
param(p_out_3289, 1, m_write_object_2079).
throw(m_write_object_2079, ioexception).

%serializer_cache_1 - com.fasterxml.jackson.databind.ser.SerializerCache
assign(f__shared_map_2516, serializer_cache_1_expr1, line(serializer_cache_1, 33)).
assign(f__read_only_map_2517, serializer_cache_1_expr2, line(serializer_cache_1, 39)).
param(p_type_2518, 1, m_untyped_value_serializer_1679).
param(p_type_2519, 1, m_untyped_value_serializer_1680).
param(p_type_2520, 1, m_typed_value_serializer_1681).
param(p_cls_2521, 1, m_typed_value_serializer_1682).
param(p_type_2522, 1, m_add_typed_serializer_1683).
param(p_ser_2523, 2, m_add_typed_serializer_1683).
param(p_cls_2524, 1, m_add_typed_serializer_1684).
param(p_ser_2525, 2, m_add_typed_serializer_1684).
param(p_type_2526, 1, m_add_and_resolve_non_typed_serializer_1685).
param(p_ser_2527, 2, m_add_and_resolve_non_typed_serializer_1685).
param(p_provider_2528, 3, m_add_and_resolve_non_typed_serializer_1685).
throw(m_add_and_resolve_non_typed_serializer_1685, json_mapping_exception).
param(p_type_2529, 1, m_add_and_resolve_non_typed_serializer_1686).
param(p_ser_2530, 2, m_add_and_resolve_non_typed_serializer_1686).
param(p_provider_2531, 3, m_add_and_resolve_non_typed_serializer_1686).
throw(m_add_and_resolve_non_typed_serializer_1686, json_mapping_exception).
param(p_raw_type_2532, 1, m_add_and_resolve_non_typed_serializer_1687).
param(p_full_type_2533, 2, m_add_and_resolve_non_typed_serializer_1687).
param(p_ser_2534, 3, m_add_and_resolve_non_typed_serializer_1687).
param(p_provider_2535, 4, m_add_and_resolve_non_typed_serializer_1687).
throw(m_add_and_resolve_non_typed_serializer_1687, json_mapping_exception).

%config_overrides_1 - com.fasterxml.jackson.databind.cfg.ConfigOverrides
method_invoc(config_overrides_1_expr1, m_config_overrides_828, line(config_overrides_1, 53)).
argument(config_overrides_1_literal1, 1, config_overrides_1_expr1).
argument(config_overrides_1_expr2, 2, config_overrides_1_expr1).
argument(config_overrides_1_expr3, 3, config_overrides_1_expr1).
argument(config_overrides_1_expr4, 4, config_overrides_1_expr1).
argument(config_overrides_1_literal2, 5, config_overrides_1_expr1).
param(p_overrides_1128, 1, m_config_overrides_828).
param(p_def_incl_1129, 2, m_config_overrides_828).
param(p_def_setter_1130, 3, m_config_overrides_828).
param(p_def_visibility_1131, 4, m_config_overrides_828).
param(p_def_mergeable_1132, 5, m_config_overrides_828).
assign(f__overrides_1133, p_overrides_1128, line(config_overrides_1, 67)).
assign(f__default_inclusion_1134, p_def_incl_1129, line(config_overrides_1, 68)).
assign(f__default_setter_info_1135, p_def_setter_1130, line(config_overrides_1, 69)).
assign(f__visibility_checker_1136, p_def_visibility_1131, line(config_overrides_1, 70)).
assign(f__default_mergeable_1137, p_def_mergeable_1132, line(config_overrides_1, 71)).
param(p_type_1138, 1, m_find_override_830).
param(p_type_1139, 1, m_find_or_create_override_831).
param(p_v_1140, 1, m_set_default_inclusion_836).
param(p_v_1141, 1, m_set_default_setter_info_837).
param(p_v_1142, 1, m_set_default_mergeable_838).
param(p_v_1143, 1, m_set_default_visibility_839).

%std_serializer_1 - com.fasterxml.jackson.databind.ser.std.StdSerializer
assign(f_key_content_converter_lock_2749, std_serializer_1_expr1, line(std_serializer_1, 44)).
method_invoc(std_serializer_1_expr1, m_object_850, line(std_serializer_1, 44)).
param(p_t_2750, 1, m_std_serializer_1696).
assign(f__handled_type_2751, p_t_2750, line(std_serializer_1, 59)).
param(p_type_2752, 1, m_std_serializer_1783).
param(p_t_2753, 1, m_std_serializer_1784).
param(p_dummy_2754, 2, m_std_serializer_1784).
assign(f__handled_type_2751, std_serializer_1_expr4, line(std_serializer_1, 73)).
assign(std_serializer_1_expr4, p_t_2753, line(std_serializer_1, 73)).
param(p_src_2755, 1, m_std_serializer_1785).
param(p_value_2756, 1, m_serialize_1787).
param(p_gen_2757, 2, m_serialize_1787).
param(p_provider_2758, 3, m_serialize_1787).
throw(m_serialize_1787, ioexception).
param(p_visitor_2759, 1, m_accept_json_format_visitor_1788).
param(p_type_hint_2760, 2, m_accept_json_format_visitor_1788).
throw(m_accept_json_format_visitor_1788, json_mapping_exception).
param(p_provider_2761, 1, m_get_schema_1789).
param(p_type_hint_2762, 2, m_get_schema_1789).
throw(m_get_schema_1789, json_mapping_exception).
param(p_provider_2763, 1, m_get_schema_1790).
param(p_type_hint_2764, 2, m_get_schema_1790).
param(p_is_optional_2765, 3, m_get_schema_1790).
throw(m_get_schema_1790, json_mapping_exception).
param(p_type_2766, 1, m_create_schema_node_1791).
param(p_type_2767, 1, m_create_schema_node_1792).
param(p_is_optional_2768, 2, m_create_schema_node_1792).
param(p_visitor_2769, 1, m_visit_string_format_1793).
param(p_type_hint_2770, 2, m_visit_string_format_1793).
throw(m_visit_string_format_1793, json_mapping_exception).
param(p_visitor_2771, 1, m_visit_string_format_1794).
param(p_type_hint_2772, 2, m_visit_string_format_1794).
param(p_format_2773, 3, m_visit_string_format_1794).
throw(m_visit_string_format_1794, json_mapping_exception).
param(p_visitor_2774, 1, m_visit_int_format_1795).
param(p_type_hint_2775, 2, m_visit_int_format_1795).
param(p_number_type_2776, 3, m_visit_int_format_1795).
throw(m_visit_int_format_1795, json_mapping_exception).
param(p_visitor_2777, 1, m_visit_int_format_1796).
param(p_type_hint_2778, 2, m_visit_int_format_1796).
param(p_number_type_2779, 3, m_visit_int_format_1796).
param(p_format_2780, 4, m_visit_int_format_1796).
throw(m_visit_int_format_1796, json_mapping_exception).
param(p_visitor_2781, 1, m_visit_float_format_1797).
param(p_type_hint_2782, 2, m_visit_float_format_1797).
param(p_number_type_2783, 3, m_visit_float_format_1797).
throw(m_visit_float_format_1797, json_mapping_exception).
param(p_visitor_2784, 1, m_visit_array_format_1798).
param(p_type_hint_2785, 2, m_visit_array_format_1798).
param(p_item_serializer_2786, 3, m_visit_array_format_1798).
param(p_item_type_2787, 4, m_visit_array_format_1798).
throw(m_visit_array_format_1798, json_mapping_exception).
param(p_visitor_2788, 1, m_visit_array_format_1799).
param(p_type_hint_2789, 2, m_visit_array_format_1799).
param(p_item_type_2790, 3, m_visit_array_format_1799).
throw(m_visit_array_format_1799, json_mapping_exception).
param(p_provider_2791, 1, m_wrap_and_throw_1800).
param(p_t_2792, 2, m_wrap_and_throw_1800).
param(p_bean_2793, 3, m_wrap_and_throw_1800).
param(p_field_name_2794, 4, m_wrap_and_throw_1800).
throw(m_wrap_and_throw_1800, ioexception).
param(p_provider_2795, 1, m_wrap_and_throw_1801).
param(p_t_2796, 2, m_wrap_and_throw_1801).
param(p_bean_2797, 3, m_wrap_and_throw_1801).
param(p_index_2798, 4, m_wrap_and_throw_1801).
throw(m_wrap_and_throw_1801, ioexception).
param(p_provider_2799, 1, m_find_contextual_converting_serializer_1802).
param(p_property_2800, 2, m_find_contextual_converting_serializer_1802).
param(p_existing_serializer_2801, 3, m_find_contextual_converting_serializer_1802).
throw(m_find_contextual_converting_serializer_1802, json_mapping_exception).
param(p_provider_2802, 1, m_find_converting_content_serializer_1803).
param(p_prop_2803, 2, m_find_converting_content_serializer_1803).
param(p_existing_serializer_2804, 3, m_find_converting_content_serializer_1803).
throw(m_find_converting_content_serializer_1803, json_mapping_exception).
param(p_provider_2805, 1, m_find_property_filter_1804).
param(p_filter_id_2806, 2, m_find_property_filter_1804).
param(p_value_to_filter_2807, 3, m_find_property_filter_1804).
throw(m_find_property_filter_1804, json_mapping_exception).
param(p_provider_2808, 1, m_find_format_overrides_1805).
param(p_prop_2809, 2, m_find_format_overrides_1805).
param(p_type_for_defaults_2810, 3, m_find_format_overrides_1805).
param(p_provider_2811, 1, m_find_format_feature_1806).
param(p_prop_2812, 2, m_find_format_feature_1806).
param(p_type_for_defaults_2813, 3, m_find_format_feature_1806).
param(p_feat_2814, 4, m_find_format_feature_1806).
param(p_provider_2815, 1, m_find_include_overrides_1807).
param(p_prop_2816, 2, m_find_include_overrides_1807).
param(p_type_for_defaults_2817, 3, m_find_include_overrides_1807).
param(p_serializers_2818, 1, m_find_annotated_content_serializer_1808).
param(p_property_2819, 2, m_find_annotated_content_serializer_1808).
throw(m_find_annotated_content_serializer_1808, json_mapping_exception).
param(p_serializer_2820, 1, m_is_default_serializer_1809).
param(p_a_2821, 1, m__neither_null_1810).
param(p_b_2822, 2, m__neither_null_1810).
param(p_c_2823, 1, m__non_empty_1811).

%config_override_1 - com.fasterxml.jackson.databind.cfg.ConfigOverride
param(p_src_1126, 1, m_config_override_818).
return(q_instance_6, m_empty_819, line(config_override_1, 79)).
ref(t_empty_16, q_instance_6, line(config_override_1, 79)).
assign(f_instance_1127, config_override_1_expr1, line(config_override_1, 113)).
method_invoc(config_override_1_expr1, m_empty_827, line(config_override_1, 113)).

%serializer_provider_1 - com.fasterxml.jackson.databind.SerializerProvider
assign(f_default_null_key_serializer_979, serializer_provider_1_expr1, line(serializer_provider_1, 56)).
assign(f_default_unknown_serializer_980, serializer_provider_1_expr2, line(serializer_provider_1, 68)).
method_invoc(serializer_provider_1_expr2, m_unknown_serializer_722, line(serializer_provider_1, 68)).
assign(f__unknown_type_serializer_981, f_default_unknown_serializer_980, line(serializer_provider_1, 130)).
assign(f__null_value_serializer_982, q_instance_5, line(serializer_provider_1, 143)).
ref(t_null_serializer_15, q_instance_5, line(serializer_provider_1, 143)).
assign(f__null_key_serializer_983, f_default_null_key_serializer_979, line(serializer_provider_1, 152)).
assign(f__config_984, serializer_provider_1_literal1, line(serializer_provider_1, 193)).
assign(f__serializer_factory_985, serializer_provider_1_literal2, line(serializer_provider_1, 194)).
assign(f__serializer_cache_986, serializer_provider_1_expr6, line(serializer_provider_1, 195)).
method_invoc(serializer_provider_1_expr6, m_serializer_cache_724, line(serializer_provider_1, 195)).
assign(f__known_serializers_987, serializer_provider_1_literal3, line(serializer_provider_1, 197)).
assign(f__serialization_view_988, serializer_provider_1_literal4, line(serializer_provider_1, 199)).
assign(f__attributes_989, serializer_provider_1_literal5, line(serializer_provider_1, 200)).
assign(f__std_null_value_serializer_990, serializer_provider_1_literal6, line(serializer_provider_1, 203)).
param(p_src_991, 1, m_serializer_provider_725).
param(p_config_992, 2, m_serializer_provider_725).
param(p_f_993, 3, m_serializer_provider_725).
param(p_src_994, 1, m_serializer_provider_726).
param(p_ks_995, 1, m_set_default_key_serializer_727).
param(p_nvs_996, 1, m_set_null_value_serializer_728).
param(p_nks_997, 1, m_set_null_key_serializer_729).
param(p_feature_998, 1, m_is_enabled_736).
param(p_base_type_999, 1, m_get_default_property_format_737).
param(p_base_type_1000, 1, m_get_default_property_inclusion_738).
param(p_key_1001, 1, m_get_attribute_741).
param(p_key_1002, 1, m_set_attribute_742).
param(p_value_1003, 2, m_set_attribute_742).
param(p_feature_1004, 1, m_is_enabled_743).
param(p_feature_mask_1005, 1, m_has_serialization_features_744).
param(p_for_pojo_1006, 1, m_find_object_id_747).
param(p_generator_type_1007, 2, m_find_object_id_747).
param(p_value_type_1008, 1, m_find_value_serializer_748).
param(p_property_1009, 2, m_find_value_serializer_748).
throw(m_find_value_serializer_748, json_mapping_exception).
param(p_value_type_1010, 1, m_find_value_serializer_749).
param(p_property_1011, 2, m_find_value_serializer_749).
throw(m_find_value_serializer_749, json_mapping_exception).
param(p_value_type_1012, 1, m_find_value_serializer_750).
throw(m_find_value_serializer_750, json_mapping_exception).
param(p_value_type_1013, 1, m_find_value_serializer_751).
throw(m_find_value_serializer_751, json_mapping_exception).
param(p_value_type_1014, 1, m_find_primary_property_serializer_752).
param(p_property_1015, 2, m_find_primary_property_serializer_752).
throw(m_find_primary_property_serializer_752, json_mapping_exception).
param(p_value_type_1016, 1, m_find_primary_property_serializer_753).
param(p_property_1017, 2, m_find_primary_property_serializer_753).
throw(m_find_primary_property_serializer_753, json_mapping_exception).
param(p_value_type_1018, 1, m_find_typed_value_serializer_754).
param(p_cache_1019, 2, m_find_typed_value_serializer_754).
param(p_property_1020, 3, m_find_typed_value_serializer_754).
throw(m_find_typed_value_serializer_754, json_mapping_exception).
param(p_value_type_1021, 1, m_find_typed_value_serializer_755).
param(p_cache_1022, 2, m_find_typed_value_serializer_755).
param(p_property_1023, 3, m_find_typed_value_serializer_755).
throw(m_find_typed_value_serializer_755, json_mapping_exception).
param(p_java_type_1024, 1, m_find_type_serializer_756).
throw(m_find_type_serializer_756, json_mapping_exception).
param(p_key_type_1025, 1, m_find_key_serializer_757).
param(p_property_1026, 2, m_find_key_serializer_757).
throw(m_find_key_serializer_757, json_mapping_exception).
param(p_raw_key_type_1027, 1, m_find_key_serializer_758).
param(p_property_1028, 2, m_find_key_serializer_758).
throw(m_find_key_serializer_758, json_mapping_exception).
param(p_serialization_type_1029, 1, m_find_null_key_serializer_761).
param(p_property_1030, 2, m_find_null_key_serializer_761).
throw(m_find_null_key_serializer_761, json_mapping_exception).
param(p_property_1031, 1, m_find_null_value_serializer_762).
throw(m_find_null_value_serializer_762, json_mapping_exception).
param(p_unknown_type_1032, 1, m_get_unknown_type_serializer_763).
param(p_ser_1033, 1, m_is_unknown_type_serializer_764).
param(p_annotated_1034, 1, m_serializer_instance_765).
param(p_ser_def_1035, 2, m_serializer_instance_765).
throw(m_serializer_instance_765, json_mapping_exception).
param(p_for_property_1036, 1, m_include_filter_instance_766).
param(p_filter_class_1037, 2, m_include_filter_instance_766).
throw(m_include_filter_instance_766, json_mapping_exception).
param(p_filter_1038, 1, m_include_filter_suppress_nulls_767).
throw(m_include_filter_suppress_nulls_767, json_mapping_exception).
param(p_ser_1039, 1, m_handle_primary_contextualization_768).
param(p_property_1040, 2, m_handle_primary_contextualization_768).
throw(m_handle_primary_contextualization_768, json_mapping_exception).
param(p_ser_1041, 1, m_handle_secondary_contextualization_769).
param(p_property_1042, 2, m_handle_secondary_contextualization_769).
throw(m_handle_secondary_contextualization_769, json_mapping_exception).
param(p_value_1043, 1, m_default_serialize_value_770).
param(p_gen_1044, 2, m_default_serialize_value_770).
throw(m_default_serialize_value_770, ioexception).
param(p_field_name_1045, 1, m_default_serialize_field_771).
param(p_value_1046, 2, m_default_serialize_field_771).
param(p_gen_1047, 3, m_default_serialize_field_771).
throw(m_default_serialize_field_771, ioexception).
param(p_timestamp_1048, 1, m_default_serialize_date_value_772).
param(p_gen_1049, 2, m_default_serialize_date_value_772).
throw(m_default_serialize_date_value_772, ioexception).
param(p_date_1050, 1, m_default_serialize_date_value_773).
param(p_gen_1051, 2, m_default_serialize_date_value_773).
throw(m_default_serialize_date_value_773, ioexception).
param(p_timestamp_1052, 1, m_default_serialize_date_key_774).
param(p_gen_1053, 2, m_default_serialize_date_key_774).
throw(m_default_serialize_date_key_774, ioexception).
param(p_date_1054, 1, m_default_serialize_date_key_775).
param(p_gen_1055, 2, m_default_serialize_date_key_775).
throw(m_default_serialize_date_key_775, ioexception).
param(p_gen_1056, 1, m_default_serialize_null_776).
throw(m_default_serialize_null_776, ioexception).
param(p_message_1057, 1, m_report_mapping_problem_777).
param(p_args_1058, 2, m_report_mapping_problem_777).
throw(m_report_mapping_problem_777, json_mapping_exception).
param(p_bean_1059, 1, m_report_bad_type_definition_778).
param(p_msg_1060, 2, m_report_bad_type_definition_778).
param(p_msg_args_1061, 3, m_report_bad_type_definition_778).
throw(m_report_bad_type_definition_778, json_mapping_exception).
param(p_bean_1062, 1, m_report_bad_property_definition_779).
param(p_prop_1063, 2, m_report_bad_property_definition_779).
param(p_message_1064, 3, m_report_bad_property_definition_779).
param(p_msg_args_1065, 4, m_report_bad_property_definition_779).
throw(m_report_bad_property_definition_779, json_mapping_exception).
param(p_type_1066, 1, m_report_bad_definition_780).
param(p_msg_1067, 2, m_report_bad_definition_780).
throw(m_report_bad_definition_780, json_mapping_exception).
param(p_type_1068, 1, m_report_bad_definition_781).
param(p_msg_1069, 2, m_report_bad_definition_781).
param(p_cause_1070, 3, m_report_bad_definition_781).
throw(m_report_bad_definition_781, json_mapping_exception).
param(p_raw_1071, 1, m_report_bad_definition_782).
param(p_msg_1072, 2, m_report_bad_definition_782).
param(p_cause_1073, 3, m_report_bad_definition_782).
throw(m_report_bad_definition_782, json_mapping_exception).
param(p_t_1074, 1, m_report_mapping_problem_783).
param(p_message_1075, 2, m_report_mapping_problem_783).
param(p_msg_args_1076, 3, m_report_mapping_problem_783).
throw(m_report_mapping_problem_783, json_mapping_exception).
param(p_message_1077, 1, m_mapping_exception_784).
param(p_msg_args_1078, 2, m_mapping_exception_784).
param(p_t_1079, 1, m_mapping_exception_785).
param(p_message_1080, 2, m_mapping_exception_785).
param(p_msg_args_1081, 3, m_mapping_exception_785).
param(p_value_1082, 1, m__report_incompatible_root_type_786).
param(p_root_type_1083, 2, m__report_incompatible_root_type_786).
throw(m__report_incompatible_root_type_786, ioexception).
param(p_runtime_type_1084, 1, m__find_explicit_untyped_serializer_787).
throw(m__find_explicit_untyped_serializer_787, json_mapping_exception).
param(p_raw_type_1085, 1, m__create_and_cache_untyped_serializer_788).
throw(m__create_and_cache_untyped_serializer_788, json_mapping_exception).
param(p_type_1086, 1, m__create_and_cache_untyped_serializer_789).
throw(m__create_and_cache_untyped_serializer_789, json_mapping_exception).
param(p_type_1087, 1, m__create_untyped_serializer_790).
throw(m__create_untyped_serializer_790, json_mapping_exception).
param(p_ser_1088, 1, m__handle_contextual_resolvable_791).
param(p_property_1089, 2, m__handle_contextual_resolvable_791).
throw(m__handle_contextual_resolvable_791, json_mapping_exception).
param(p_ser_1090, 1, m__handle_resolvable_792).
throw(m__handle_resolvable_792, json_mapping_exception).

%mapper_config_1 - com.fasterxml.jackson.databind.cfg.MapperConfig
assign(f_empty_include_1188, mapper_config_1_expr1, line(mapper_config_1, 45)).
method_invoc(mapper_config_1_expr1, m_empty_876, line(mapper_config_1, 45)).
ref(t_value_20, mapper_config_1_expr1, line(mapper_config_1, 45)).
ref(t_json_include_21, t_value_20, line(mapper_config_1, 45)).
assign(f_empty_format_1189, mapper_config_1_expr2, line(mapper_config_1, 50)).
method_invoc(mapper_config_1_expr2, m_empty_877, line(mapper_config_1, 50)).
ref(t_value_22, mapper_config_1_expr2, line(mapper_config_1, 50)).
ref(t_json_format_23, t_value_22, line(mapper_config_1, 50)).
param(p_base_1190, 1, m_mapper_config_878).
param(p_mapper_features_1191, 2, m_mapper_config_878).
assign(f__base_1192, p_base_1190, line(mapper_config_1, 70)).
assign(f__mapper_features_1193, p_mapper_features_1191, line(mapper_config_1, 71)).
param(p_src_1194, 1, m_mapper_config_879).
param(p_mapper_features_1195, 2, m_mapper_config_879).
param(p_src_1196, 1, m_mapper_config_880).
param(p_base_1197, 2, m_mapper_config_880).
param(p_src_1198, 1, m_mapper_config_881).
param(p_enum_class_1199, 1, m_collect_feature_defaults_159).
assign(v_flags_1200, mapper_config_1_literal1, line(mapper_config_1, 98)).
ref(mapper_config_1_expr5, mapper_config_1_stmt4, line(mapper_config_1, 99)).
method_invoc(mapper_config_1_expr5, m_get_enum_constants_882, line(mapper_config_1, 99)).
ref(p_enum_class_1199, mapper_config_1_expr5, line(mapper_config_1, 99)).
method_invoc(mapper_config_1_expr6, m_enabled_by_default_883, line(mapper_config_1, 100)).
ref(v_value_1201, mapper_config_1_expr6, line(mapper_config_1, 100)).
assign(v_flags_1200, mapper_config_1_expr8, line(mapper_config_1, 101)).
method_invoc(mapper_config_1_expr8, m_get_mask_884, line(mapper_config_1, 101)).
ref(v_value_1201, mapper_config_1_expr8, line(mapper_config_1, 101)).
return(v_flags_1200, m_collect_feature_defaults_159, line(mapper_config_1, 104)).
param(p_features_1202, 1, m_with_885).
param(p_features_1203, 1, m_without_886).
param(p_feature_1204, 1, m_with_887).
param(p_state_1205, 2, m_with_887).
param(p_f_1206, 1, m_is_enabled_406).
return(mapper_config_1_expr9, m_is_enabled_406, line(mapper_config_1, 141)).
assign(mapper_config_1_expr10, mapper_config_1_expr11, line(mapper_config_1, 141)).
method_invoc(mapper_config_1_expr12, m_get_mask_377, line(mapper_config_1, 141)).
ref(p_f_1206, mapper_config_1_expr12, line(mapper_config_1, 141)).
param(p_feature_mask_1207, 1, m_has_mapper_features_888).
return(mapper_config_1_expr13, m_is_annotation_processing_enabled_889, line(mapper_config_1, 161)).
method_invoc(mapper_config_1_expr13, m_is_enabled_406, line(mapper_config_1, 161)).
argument(q_use_annotations_7, 1, mapper_config_1_expr13).
ref(t_mapper_feature_9, q_use_annotations_7, line(mapper_config_1, 161)).
param(p_src_1208, 1, m_compile_string_893).
method_invoc(mapper_config_1_expr14, m_is_enabled_406, line(mapper_config_1, 236)).
argument(q_use_annotations_8, 1, mapper_config_1_expr14).
ref(t_mapper_feature_9, q_use_annotations_8, line(mapper_config_1, 236)).
return(mapper_config_1_expr15, m_get_annotation_introspector_895, line(mapper_config_1, 237)).
method_invoc(mapper_config_1_expr15, m_get_annotation_introspector_806, line(mapper_config_1, 237)).
ref(f__base_1192, mapper_config_1_expr15, line(mapper_config_1, 237)).
param(p_base_type_1209, 1, m_get_default_typer_898).
return(mapper_config_1_expr16, m_get_type_factory_900, line(mapper_config_1, 269)).
method_invoc(mapper_config_1_expr16, m_get_type_factory_808, line(mapper_config_1, 269)).
ref(f__base_1192, mapper_config_1_expr16, line(mapper_config_1, 269)).
param(p_cls_1210, 1, m_construct_type_901).
param(p_value_type_ref_1211, 1, m_construct_type_902).
param(p_base_type_1212, 1, m_construct_specialized_type_903).
param(p_subclass_1213, 2, m_construct_specialized_type_903).
param(p_cls_1214, 1, m_introspect_class_annotations_904).
param(p_type_1215, 1, m_introspect_class_annotations_905).
param(p_cls_1216, 1, m_introspect_direct_class_annotations_906).
param(p_type_1217, 1, m_introspect_direct_class_annotations_907).
param(p_type_1218, 1, m_find_config_override_908).
param(p_type_1219, 1, m_get_config_override_909).
param(p_base_type_1220, 1, m_get_default_property_inclusion_911).
param(p_base_type_1221, 1, m_get_default_property_inclusion_912).
param(p_default_incl_1222, 2, m_get_default_property_inclusion_912).
param(p_base_type_1223, 1, m_get_default_property_format_913).
param(p_base_type_1224, 1, m_get_default_property_ignorals_914).
param(p_base_type_1225, 1, m_get_default_property_ignorals_915).
param(p_actual_class_1226, 2, m_get_default_property_ignorals_915).
param(p_base_type_1227, 1, m_get_default_visibility_checker_917).
param(p_actual_class_1228, 2, m_get_default_visibility_checker_917).
param(p_root_type_1229, 1, m_find_root_name_926).
param(p_raw_root_type_1230, 1, m_find_root_name_927).
param(p_annotated_1231, 1, m_type_resolver_builder_instance_928).
param(p_builder_class_1232, 2, m_type_resolver_builder_instance_928).
param(p_annotated_1233, 1, m_type_id_resolver_instance_929).
param(p_resolver_class_1234, 2, m_type_id_resolver_instance_929).

%serializer_factory_config_1 - com.fasterxml.jackson.databind.cfg.SerializerFactoryConfig
assign(f_no_serializers_1309, serializer_factory_config_1_expr1, line(serializer_factory_config_1, 19)).
assign(f_no_modifiers_1310, serializer_factory_config_1_expr2, line(serializer_factory_config_1, 21)).
method_invoc(serializer_factory_config_1_expr3, m_serializer_factory_config_987, line(serializer_factory_config_1, 42)).
argument(serializer_factory_config_1_literal3, 1, serializer_factory_config_1_expr3).
argument(serializer_factory_config_1_literal4, 2, serializer_factory_config_1_expr3).
argument(serializer_factory_config_1_literal5, 3, serializer_factory_config_1_expr3).
param(p_all_additional_serializers_1311, 1, m_serializer_factory_config_987).
param(p_all_additional_key_serializers_1312, 2, m_serializer_factory_config_987).
param(p_modifiers_1313, 3, m_serializer_factory_config_987).
assign(f__additional_serializers_1314, serializer_factory_config_1_expr5, line(serializer_factory_config_1, 49)).
cond_expr(serializer_factory_config_1_expr6, f_no_serializers_1309, p_all_additional_serializers_1311, line(serializer_factory_config_1, 49)).
assign(serializer_factory_config_1_expr6, serializer_factory_config_1_expr7, line(serializer_factory_config_1, 49)).
assign(f__additional_key_serializers_1315, serializer_factory_config_1_expr9, line(serializer_factory_config_1, 51)).
cond_expr(serializer_factory_config_1_expr10, f_no_serializers_1309, p_all_additional_key_serializers_1312, line(serializer_factory_config_1, 51)).
assign(serializer_factory_config_1_expr10, serializer_factory_config_1_expr11, line(serializer_factory_config_1, 51)).
assign(f__modifiers_1316, serializer_factory_config_1_expr13, line(serializer_factory_config_1, 53)).
cond_expr(serializer_factory_config_1_expr14, f_no_modifiers_1310, p_modifiers_1313, line(serializer_factory_config_1, 53)).
assign(serializer_factory_config_1_expr14, serializer_factory_config_1_expr15, line(serializer_factory_config_1, 53)).
param(p_additional_1317, 1, m_with_additional_serializers_988).
param(p_additional_1318, 1, m_with_additional_key_serializers_989).
param(p_modifier_1319, 1, m_with_serializer_modifier_990).

%annotated_class_1 - com.fasterxml.jackson.databind.introspect.AnnotatedClass
param(p_type_1734, 1, m_annotated_class_1177).
param(p_raw_type_1735, 2, m_annotated_class_1177).
param(p_super_types_1736, 3, m_annotated_class_1177).
param(p_primary_mix_in_1737, 4, m_annotated_class_1177).
param(p_class_annotations_1738, 5, m_annotated_class_1177).
param(p_bindings_1739, 6, m_annotated_class_1177).
param(p_aintr_1740, 7, m_annotated_class_1177).
param(p_mir_1741, 8, m_annotated_class_1177).
param(p_tf_1742, 9, m_annotated_class_1177).
assign(f__type_1743, p_type_1734, line(annotated_class_1, 126)).
assign(f__class_1744, p_raw_type_1735, line(annotated_class_1, 127)).
assign(f__class_annotations_1745, p_class_annotations_1738, line(annotated_class_1, 128)).
assign(f__bindings_1746, p_bindings_1739, line(annotated_class_1, 129)).
assign(f__super_types_1747, p_super_types_1736, line(annotated_class_1, 130)).
assign(f__annotation_introspector_1748, p_aintr_1740, line(annotated_class_1, 131)).
assign(f__type_factory_1749, p_tf_1742, line(annotated_class_1, 132)).
assign(f__mix_in_resolver_1750, p_mir_1741, line(annotated_class_1, 133)).
assign(f__primary_mix_in_1751, p_primary_mix_in_1737, line(annotated_class_1, 134)).
param(p_type_1752, 1, m_construct_1178).
param(p_config_1753, 2, m_construct_1178).
param(p_type_1754, 1, m_construct_1179).
param(p_config_1755, 2, m_construct_1179).
param(p_mir_1756, 3, m_construct_1179).
param(p_raw_1757, 1, m_construct_without_super_types_1180).
param(p_config_1758, 2, m_construct_without_super_types_1180).
param(p_raw_1759, 1, m_construct_without_super_types_1181).
param(p_config_1760, 2, m_construct_without_super_types_1181).
param(p_mir_1761, 3, m_construct_without_super_types_1181).
param(p_type_1762, 1, m_resolve_type_1182).
param(p_acls_1763, 1, m_get_annotation_1186).
return(annotated_class_1_expr10, m_get_annotation_1186, line(annotated_class_1, 206)).
method_invoc(annotated_class_1_expr10, m_get_1187, line(annotated_class_1, 206)).
argument(p_acls_1763, 1, annotated_class_1_expr10).
ref(f__class_annotations_1745, annotated_class_1_expr10, line(annotated_class_1, 206)).
param(p_acls_1764, 1, m_has_annotation_1188).
param(p_anno_classes_1765, 1, m_has_one_of_1189).
param(p_name_1766, 1, m_find_method_1201).
param(p_param_types_1767, 2, m_find_method_1201).
param(p_o_1768, 1, m_equals_1209).
param(p_def_ctor_1769, 1, m_creators_1210).
param(p_ctors_1770, 2, m_creators_1210).
param(p_ctor_methods_1771, 3, m_creators_1210).

%type_factory_1 - com.fasterxml.jackson.databind.type.TypeFactory
assign(f_no_types_2984, type_factory_1_expr1, line(type_factory_1, 39)).
assign(f_instance_2985, type_factory_1_expr2, line(type_factory_1, 46)).
method_invoc(type_factory_1_expr2, m_type_factory_1904, line(type_factory_1, 46)).
assign(f_empty_bindings_2986, type_factory_1_expr3, line(type_factory_1, 48)).
method_invoc(type_factory_1_expr3, m_empty_bindings_1214, line(type_factory_1, 48)).
ref(t_type_bindings_30, type_factory_1_expr3, line(type_factory_1, 48)).
assign(f_cls_string_2987, type_factory_1_expr4, line(type_factory_1, 60)).
assign(f_cls_object_2988, type_factory_1_expr5, line(type_factory_1, 61)).
assign(f_cls_comparable_2989, type_factory_1_expr6, line(type_factory_1, 63)).
assign(f_cls_class_2990, type_factory_1_expr7, line(type_factory_1, 64)).
assign(f_cls_enum_2991, type_factory_1_expr8, line(type_factory_1, 65)).
assign(f_cls_bool_2992, q_type_33, line(type_factory_1, 67)).
ref(t_boolean_34, q_type_33, line(type_factory_1, 67)).
assign(f_cls_int_2993, q_type_33, line(type_factory_1, 68)).
ref(t_integer_35, q_type_33, line(type_factory_1, 68)).
assign(f_cls_long_2994, q_type_33, line(type_factory_1, 69)).
ref(t_long_36, q_type_33, line(type_factory_1, 69)).
assign(f_core_type_bool_2995, type_factory_1_expr9, line(type_factory_1, 78)).
method_invoc(type_factory_1_expr9, m_simple_type_1837, line(type_factory_1, 78)).
argument(f_cls_bool_2992, 1, type_factory_1_expr9).
assign(f_core_type_int_2996, type_factory_1_expr10, line(type_factory_1, 79)).
method_invoc(type_factory_1_expr10, m_simple_type_1837, line(type_factory_1, 79)).
argument(f_cls_int_2993, 1, type_factory_1_expr10).
assign(f_core_type_long_2997, type_factory_1_expr11, line(type_factory_1, 80)).
method_invoc(type_factory_1_expr11, m_simple_type_1837, line(type_factory_1, 80)).
argument(f_cls_long_2994, 1, type_factory_1_expr11).
assign(f_core_type_string_2998, type_factory_1_expr12, line(type_factory_1, 83)).
method_invoc(type_factory_1_expr12, m_simple_type_1837, line(type_factory_1, 83)).
argument(f_cls_string_2987, 1, type_factory_1_expr12).
assign(f_core_type_object_2999, type_factory_1_expr13, line(type_factory_1, 86)).
method_invoc(type_factory_1_expr13, m_simple_type_1837, line(type_factory_1, 86)).
argument(f_cls_object_2988, 1, type_factory_1_expr13).
assign(f_core_type_comparable_3000, type_factory_1_expr14, line(type_factory_1, 94)).
method_invoc(type_factory_1_expr14, m_simple_type_1837, line(type_factory_1, 94)).
argument(f_cls_comparable_2989, 1, type_factory_1_expr14).
assign(f_core_type_enum_3001, type_factory_1_expr15, line(type_factory_1, 102)).
method_invoc(type_factory_1_expr15, m_simple_type_1837, line(type_factory_1, 102)).
argument(f_cls_enum_2991, 1, type_factory_1_expr15).
assign(f_core_type_class_3002, type_factory_1_expr16, line(type_factory_1, 110)).
method_invoc(type_factory_1_expr16, m_simple_type_1837, line(type_factory_1, 110)).
argument(f_cls_class_2990, 1, type_factory_1_expr16).
method_invoc(type_factory_1_expr17, m_type_factory_1905, line(type_factory_1, 145)).
argument(type_factory_1_literal2, 1, type_factory_1_expr17).
param(p_type_cache_3003, 1, m_type_factory_1905).
assign(p_type_cache_3003, type_factory_1_expr20, line(type_factory_1, 153)).
method_invoc(type_factory_1_expr20, m_lrumap_1333, line(type_factory_1, 153)).
argument(type_factory_1_literal4, 1, type_factory_1_expr20).
argument(type_factory_1_literal5, 2, type_factory_1_expr20).
assign(f__type_cache_3004, p_type_cache_3003, line(type_factory_1, 155)).
assign(f__parser_3005, type_factory_1_expr23, line(type_factory_1, 156)).
method_invoc(type_factory_1_expr23, m_type_parser_1906, line(type_factory_1, 156)).
argument(type_factory_1_expr24, 1, type_factory_1_expr23).
assign(f__modifiers_3006, type_factory_1_literal6, line(type_factory_1, 157)).
assign(f__class_loader_3007, type_factory_1_literal7, line(type_factory_1, 158)).
param(p_type_cache_3008, 1, m_type_factory_1907).
param(p_p_3009, 2, m_type_factory_1907).
param(p_mods_3010, 3, m_type_factory_1907).
param(p_class_loader_3011, 4, m_type_factory_1907).
param(p_mod_3012, 1, m_with_modifier_1908).
param(p_class_loader_3013, 1, m_with_class_loader_1909).
param(p_cache_3014, 1, m_with_cache_1910).
return(f_instance_2985, m_default_instance_399, line(type_factory_1, 211)).
param(p_t_3015, 1, m_raw_class_1914).
param(p_class_name_3016, 1, m_find_class_1915).
throw(m_find_class_1915, class_not_found_exception).
param(p_name_3017, 1, m_class_for_name_1916).
param(p_initialize_3018, 2, m_class_for_name_1916).
param(p_loader_3019, 3, m_class_for_name_1916).
throw(m_class_for_name_1916, class_not_found_exception).
param(p_name_3020, 1, m_class_for_name_1917).
throw(m_class_for_name_1917, class_not_found_exception).
param(p_class_name_3021, 1, m__find_primitive_1918).
param(p_base_type_3022, 1, m_construct_specialized_type_1919).
param(p_subclass_3023, 2, m_construct_specialized_type_1919).
param(p_base_type_3024, 1, m__bindings_for_subtype_1920).
param(p_type_param_count_3025, 2, m__bindings_for_subtype_1920).
param(p_subclass_3026, 3, m__bindings_for_subtype_1920).
param(p_base_type_3027, 1, m_construct_generalized_type_1921).
param(p_super_class_3028, 2, m_construct_generalized_type_1921).
param(p_canonical_3029, 1, m_construct_from_canonical_1922).
throw(m_construct_from_canonical_1922, illegal_argument_exception).
param(p_type_3030, 1, m_find_type_parameters_1923).
param(p_exp_type_3031, 2, m_find_type_parameters_1923).
param(p_clz_3032, 1, m_find_type_parameters_1924).
param(p_exp_type_3033, 2, m_find_type_parameters_1924).
param(p_bindings_3034, 3, m_find_type_parameters_1924).
param(p_clz_3035, 1, m_find_type_parameters_1925).
param(p_exp_type_3036, 2, m_find_type_parameters_1925).
param(p_type_1_3037, 1, m_more_specific_type_1926).
param(p_type_2_3038, 2, m_more_specific_type_1926).
param(p_type_3039, 1, m_construct_type_497).
return(type_factory_1_expr27, m_construct_type_497, line(type_factory_1, 616)).
method_invoc(type_factory_1_expr27, m__from_any_1927, line(type_factory_1, 616)).
argument(type_factory_1_literal8, 1, type_factory_1_expr27).
argument(p_type_3039, 2, type_factory_1_expr27).
argument(f_empty_bindings_2986, 3, type_factory_1_expr27).
param(p_type_3040, 1, m_construct_type_1928).
param(p_bindings_3041, 2, m_construct_type_1928).
param(p_type_ref_3042, 1, m_construct_type_1929).
param(p_type_3043, 1, m_construct_type_1930).
param(p_context_class_3044, 2, m_construct_type_1930).
param(p_type_3045, 1, m_construct_type_1931).
param(p_context_type_3046, 2, m_construct_type_1931).
param(p_element_type_3047, 1, m_construct_array_type_1932).
param(p_element_type_3048, 1, m_construct_array_type_1933).
param(p_collection_class_3049, 1, m_construct_collection_type_1934).
param(p_element_class_3050, 2, m_construct_collection_type_1934).
param(p_collection_class_3051, 1, m_construct_collection_type_1935).
param(p_element_type_3052, 2, m_construct_collection_type_1935).
param(p_collection_class_3053, 1, m_construct_collection_like_type_1936).
param(p_element_class_3054, 2, m_construct_collection_like_type_1936).
param(p_collection_class_3055, 1, m_construct_collection_like_type_1937).
param(p_element_type_3056, 2, m_construct_collection_like_type_1937).
param(p_map_class_3057, 1, m_construct_map_type_1938).
param(p_key_class_3058, 2, m_construct_map_type_1938).
param(p_value_class_3059, 3, m_construct_map_type_1938).
param(p_map_class_3060, 1, m_construct_map_type_1939).
param(p_key_type_3061, 2, m_construct_map_type_1939).
param(p_value_type_3062, 3, m_construct_map_type_1939).
param(p_map_class_3063, 1, m_construct_map_like_type_1940).
param(p_key_class_3064, 2, m_construct_map_like_type_1940).
param(p_value_class_3065, 3, m_construct_map_like_type_1940).
param(p_map_class_3066, 1, m_construct_map_like_type_1941).
param(p_key_type_3067, 2, m_construct_map_like_type_1941).
param(p_value_type_3068, 3, m_construct_map_like_type_1941).
param(p_raw_type_3069, 1, m_construct_simple_type_1942).
param(p_parameter_types_3070, 2, m_construct_simple_type_1942).
param(p_raw_type_3071, 1, m_construct_simple_type_1943).
param(p_parameter_target_3072, 2, m_construct_simple_type_1943).
param(p_parameter_types_3073, 3, m_construct_simple_type_1943).
param(p_raw_type_3074, 1, m_construct_reference_type_1944).
param(p_referred_type_3075, 2, m_construct_reference_type_1944).
param(p_cls_3076, 1, m_unchecked_simple_type_1945).
param(p_parametrized_3077, 1, m_construct_parametric_type_1946).
param(p_parameter_classes_3078, 2, m_construct_parametric_type_1946).
param(p_raw_type_3079, 1, m_construct_parametric_type_1947).
param(p_parameter_types_3080, 2, m_construct_parametric_type_1947).
param(p_parametrized_3081, 1, m_construct_parametrized_type_1948).
param(p_parameters_for_3082, 2, m_construct_parametrized_type_1948).
param(p_parameter_types_3083, 3, m_construct_parametrized_type_1948).
param(p_parametrized_3084, 1, m_construct_parametrized_type_1949).
param(p_parameters_for_3085, 2, m_construct_parametrized_type_1949).
param(p_parameter_classes_3086, 3, m_construct_parametrized_type_1949).
param(p_collection_class_3087, 1, m_construct_raw_collection_type_1950).
param(p_collection_class_3088, 1, m_construct_raw_collection_like_type_1951).
param(p_map_class_3089, 1, m_construct_raw_map_type_1952).
param(p_map_class_3090, 1, m_construct_raw_map_like_type_1953).
param(p_raw_class_3091, 1, m__map_type_1954).
param(p_bindings_3092, 2, m__map_type_1954).
param(p_super_class_3093, 3, m__map_type_1954).
param(p_super_interfaces_3094, 4, m__map_type_1954).
param(p_raw_class_3095, 1, m__collection_type_1955).
param(p_bindings_3096, 2, m__collection_type_1955).
param(p_super_class_3097, 3, m__collection_type_1955).
param(p_super_interfaces_3098, 4, m__collection_type_1955).
param(p_raw_class_3099, 1, m__reference_type_1956).
param(p_bindings_3100, 2, m__reference_type_1956).
param(p_super_class_3101, 3, m__reference_type_1956).
param(p_super_interfaces_3102, 4, m__reference_type_1956).
param(p_raw_3103, 1, m__construct_simple_1957).
param(p_bindings_3104, 2, m__construct_simple_1957).
param(p_super_class_3105, 3, m__construct_simple_1957).
param(p_super_interfaces_3106, 4, m__construct_simple_1957).
param(p_raw_3107, 1, m__new_simple_type_1958).
param(p_bindings_3108, 2, m__new_simple_type_1958).
param(p_super_class_3109, 3, m__new_simple_type_1958).
param(p_super_interfaces_3110, 4, m__new_simple_type_1958).
return(type_factory_1_expr28, m__new_simple_type_1958, line(type_factory_1, 1118)).
method_invoc(type_factory_1_expr28, m_simple_type_1838, line(type_factory_1, 1118)).
argument(p_raw_3107, 1, type_factory_1_expr28).
argument(p_bindings_3108, 2, type_factory_1_expr28).
argument(p_super_class_3109, 3, type_factory_1_expr28).
argument(p_super_interfaces_3110, 4, type_factory_1_expr28).
param(p_clz_3111, 1, m__find_well_known_simple_1960).
method_invoc(type_factory_1_expr29, m_is_primitive_1961, line(type_factory_1, 1138)).
ref(p_clz_3111, type_factory_1_expr29, line(type_factory_1, 1138)).
return(f_core_type_string_2998, m__find_well_known_simple_1960, line(type_factory_1, 1143)).
return(f_core_type_object_2999, m__find_well_known_simple_1960, line(type_factory_1, 1144)).
return(type_factory_1_literal9, m__find_well_known_simple_1960, line(type_factory_1, 1146)).
param(p_context_3112, 1, m__from_any_1927).
param(p_type_3113, 2, m__from_any_1927).
param(p_bindings_3114, 3, m__from_any_1927).
assign(v_result_type_3115, type_factory_1_expr34, line(type_factory_1, 1167)).
method_invoc(type_factory_1_expr34, m__from_class_1962, line(type_factory_1, 1167)).
argument(p_context_3112, 1, type_factory_1_expr34).
argument(type_factory_1_expr35, 2, type_factory_1_expr34).
argument(f_empty_bindings_2986, 3, type_factory_1_expr34).
assign(type_factory_1_expr35, p_type_3113, line(type_factory_1, 1167)).
return(v_result_type_3115, m__from_any_1927, line(type_factory_1, 1207)).
param(p_context_3116, 1, m__from_class_1962).
param(p_raw_type_3117, 2, m__from_class_1962).
param(p_bindings_3118, 3, m__from_class_1962).
assign(v_result_3119, type_factory_1_expr37, line(type_factory_1, 1217)).
method_invoc(type_factory_1_expr37, m__find_well_known_simple_1960, line(type_factory_1, 1217)).
argument(p_raw_type_3117, 1, type_factory_1_expr37).
return(v_result_3119, m__from_class_1962, line(type_factory_1, 1219)).
assign(type_factory_1_expr40, type_factory_1_expr41, line(type_factory_1, 1223)).
method_invoc(type_factory_1_expr42, m_is_empty_1887, line(type_factory_1, 1223)).
ref(p_bindings_3118, type_factory_1_expr42, line(type_factory_1, 1223)).
assign(v_key_3120, p_raw_type_3117, line(type_factory_1, 1224)).
assign(v_result_3119, type_factory_1_expr45, line(type_factory_1, 1228)).
method_invoc(type_factory_1_expr45, m_get_1360, line(type_factory_1, 1228)).
argument(v_key_3120, 1, type_factory_1_expr45).
ref(f__type_cache_3004, type_factory_1_expr45, line(type_factory_1, 1228)).
assign(p_context_3116, type_factory_1_expr49, line(type_factory_1, 1235)).
method_invoc(type_factory_1_expr49, m_class_stack_1830, line(type_factory_1, 1235)).
argument(p_raw_type_3117, 1, type_factory_1_expr49).
method_invoc(type_factory_1_expr50, m_is_array_1963, line(type_factory_1, 1249)).
ref(p_raw_type_3117, type_factory_1_expr50, line(type_factory_1, 1249)).
method_invoc(type_factory_1_expr51, m_is_interface_1964, line(type_factory_1, 1258)).
ref(p_raw_type_3117, type_factory_1_expr51, line(type_factory_1, 1258)).
assign(v_super_class_3121, type_factory_1_expr53, line(type_factory_1, 1263)).
method_invoc(type_factory_1_expr53, m__resolve_super_class_1965, line(type_factory_1, 1263)).
argument(p_context_3116, 1, type_factory_1_expr53).
argument(p_raw_type_3117, 2, type_factory_1_expr53).
argument(p_bindings_3118, 3, type_factory_1_expr53).
assign(v_super_interfaces_3122, type_factory_1_expr55, line(type_factory_1, 1264)).
method_invoc(type_factory_1_expr55, m__resolve_super_interfaces_1966, line(type_factory_1, 1264)).
argument(p_context_3116, 1, type_factory_1_expr55).
argument(p_raw_type_3117, 2, type_factory_1_expr55).
argument(p_bindings_3118, 3, type_factory_1_expr55).
assign(v_result_3119, type_factory_1_expr60, line(type_factory_1, 1275)).
method_invoc(type_factory_1_expr60, m_refine_315, line(type_factory_1, 1275)).
argument(p_raw_type_3117, 1, type_factory_1_expr60).
argument(p_bindings_3118, 2, type_factory_1_expr60).
argument(v_super_class_3121, 3, type_factory_1_expr60).
argument(v_super_interfaces_3122, 4, type_factory_1_expr60).
ref(v_super_class_3121, type_factory_1_expr60, line(type_factory_1, 1275)).
assign(v_result_3119, type_factory_1_expr63, line(type_factory_1, 1279)).
method_invoc(type_factory_1_expr63, m__from_well_known_class_1967, line(type_factory_1, 1279)).
argument(p_context_3116, 1, type_factory_1_expr63).
argument(p_raw_type_3117, 2, type_factory_1_expr63).
argument(p_bindings_3118, 3, type_factory_1_expr63).
argument(v_super_class_3121, 4, type_factory_1_expr63).
argument(v_super_interfaces_3122, 5, type_factory_1_expr63).
assign(v_result_3119, type_factory_1_expr66, line(type_factory_1, 1281)).
method_invoc(type_factory_1_expr66, m__from_well_known_interface_1968, line(type_factory_1, 1281)).
argument(p_context_3116, 1, type_factory_1_expr66).
argument(p_raw_type_3117, 2, type_factory_1_expr66).
argument(p_bindings_3118, 3, type_factory_1_expr66).
argument(v_super_class_3121, 4, type_factory_1_expr66).
argument(v_super_interfaces_3122, 5, type_factory_1_expr66).
assign(v_result_3119, type_factory_1_expr69, line(type_factory_1, 1284)).
method_invoc(type_factory_1_expr69, m__new_simple_type_1958, line(type_factory_1, 1284)).
argument(p_raw_type_3117, 1, type_factory_1_expr69).
argument(p_bindings_3118, 2, type_factory_1_expr69).
argument(v_super_class_3121, 3, type_factory_1_expr69).
argument(v_super_interfaces_3122, 4, type_factory_1_expr69).
method_invoc(type_factory_1_expr70, m_resolve_self_references_1834, line(type_factory_1, 1289)).
argument(v_result_3119, 1, type_factory_1_expr70).
ref(p_context_3116, type_factory_1_expr70, line(type_factory_1, 1289)).
method_invoc(type_factory_1_expr72, m_has_handlers_354, line(type_factory_1, 1292)).
ref(v_result_3119, type_factory_1_expr72, line(type_factory_1, 1292)).
method_invoc(type_factory_1_expr73, m_put_if_absent_1362, line(type_factory_1, 1293)).
argument(v_key_3120, 1, type_factory_1_expr73).
argument(v_result_3119, 2, type_factory_1_expr73).
ref(f__type_cache_3004, type_factory_1_expr73, line(type_factory_1, 1293)).
return(v_result_3119, m__from_class_1962, line(type_factory_1, 1295)).
param(p_context_3123, 1, m__resolve_super_class_1965).
param(p_raw_type_3124, 2, m__resolve_super_class_1965).
param(p_parent_bindings_3125, 3, m__resolve_super_class_1965).
assign(v_parent_3126, type_factory_1_expr74, line(type_factory_1, 1300)).
method_invoc(type_factory_1_expr74, m_get_generic_superclass_1969, line(type_factory_1, 1300)).
argument(p_raw_type_3124, 1, type_factory_1_expr74).
ref(t_class_util_12, type_factory_1_expr74, line(type_factory_1, 1300)).
return(type_factory_1_expr76, m__resolve_super_class_1965, line(type_factory_1, 1304)).
method_invoc(type_factory_1_expr76, m__from_any_1927, line(type_factory_1, 1304)).
argument(p_context_3123, 1, type_factory_1_expr76).
argument(v_parent_3126, 2, type_factory_1_expr76).
argument(p_parent_bindings_3125, 3, type_factory_1_expr76).
param(p_context_3127, 1, m__resolve_super_interfaces_1966).
param(p_raw_type_3128, 2, m__resolve_super_interfaces_1966).
param(p_parent_bindings_3129, 3, m__resolve_super_interfaces_1966).
assign(v_types_3130, type_factory_1_expr77, line(type_factory_1, 1309)).
method_invoc(type_factory_1_expr77, m_get_generic_interfaces_1970, line(type_factory_1, 1309)).
argument(p_raw_type_3128, 1, type_factory_1_expr77).
ref(t_class_util_12, type_factory_1_expr77, line(type_factory_1, 1309)).
ref(v_types_3130, q_length_33, line(type_factory_1, 1310)).
return(f_no_types_2984, m__resolve_super_interfaces_1966, line(type_factory_1, 1311)).
param(p_context_3131, 1, m__from_well_known_class_1967).
param(p_raw_type_3132, 2, m__from_well_known_class_1967).
param(p_bindings_3133, 3, m__from_well_known_class_1967).
param(p_super_class_3134, 4, m__from_well_known_class_1967).
param(p_super_interfaces_3135, 5, m__from_well_known_class_1967).
return(type_factory_1_literal23, m__from_well_known_class_1967, line(type_factory_1, 1349)).
param(p_context_3136, 1, m__from_well_known_interface_1968).
param(p_raw_type_3137, 2, m__from_well_known_interface_1968).
param(p_bindings_3138, 3, m__from_well_known_interface_1968).
param(p_super_class_3139, 4, m__from_well_known_interface_1968).
param(p_super_interfaces_3140, 5, m__from_well_known_interface_1968).
assign(v_int_count_3141, q_length_34, line(type_factory_1, 1357)).
ref(p_super_interfaces_3140, q_length_34, line(type_factory_1, 1357)).
assign(v_i_3142, type_factory_1_literal24, line(type_factory_1, 1359)).
return(type_factory_1_literal25, m__from_well_known_interface_1968, line(type_factory_1, 1365)).
param(p_context_3143, 1, m__from_param_type_1971).
param(p_ptype_3144, 2, m__from_param_type_1971).
param(p_parent_bindings_3145, 3, m__from_param_type_1971).
param(p_context_3146, 1, m__from_array_type_1972).
param(p_type_3147, 2, m__from_array_type_1972).
param(p_bindings_3148, 3, m__from_array_type_1972).
param(p_context_3149, 1, m__from_variable_1973).
param(p_var_3150, 2, m__from_variable_1973).
param(p_bindings_3151, 3, m__from_variable_1973).
param(p_context_3152, 1, m__from_wildcard_1974).
param(p_type_3153, 2, m__from_wildcard_1974).
param(p_bindings_3154, 3, m__from_wildcard_1974).

%mapping_json_factory_1 - com.fasterxml.jackson.databind.MappingJsonFactory
param(p_mapper_526, 1, m_mapping_json_factory_380).
method_invoc(mapping_json_factory_1_expr1, m_json_factory_381, line(mapping_json_factory_1, 29)).
argument(p_mapper_526, 1, mapping_json_factory_1_expr1).
param(p_src_527, 1, m_mapping_json_factory_382).
param(p_mapper_528, 2, m_mapping_json_factory_382).
param(p_acc_529, 1, m_has_format_386).
throw(m_has_format_386, ioexception).

%default_deserialization_context_1 - com.fasterxml.jackson.databind.deser.DefaultDeserializationContext
param(p_df_1581, 1, m_default_deserialization_context_1084).
param(p_cache_1582, 2, m_default_deserialization_context_1084).
method_invoc(default_deserialization_context_1_expr1, m_deserialization_context_208, line(default_deserialization_context_1, 44)).
argument(p_df_1581, 1, default_deserialization_context_1_expr1).
argument(p_cache_1582, 2, default_deserialization_context_1_expr1).
param(p_src_1583, 1, m_default_deserialization_context_1085).
param(p_config_1584, 2, m_default_deserialization_context_1085).
param(p_jp_1585, 3, m_default_deserialization_context_1085).
param(p_values_1586, 4, m_default_deserialization_context_1085).
param(p_src_1587, 1, m_default_deserialization_context_1086).
param(p_factory_1588, 2, m_default_deserialization_context_1086).
param(p_src_1589, 1, m_default_deserialization_context_1087).
param(p_id_1590, 1, m_find_object_id_1089).
param(p_gen_1591, 2, m_find_object_id_1089).
param(p_resolver_type_1592, 3, m_find_object_id_1089).
param(p_key_1593, 1, m_create_readable_object_id_1090).
throw(m_check_unresolved_object_id_1091, unresolved_forward_reference).
param(p_roid_1594, 1, m_try_to_resolve_unresolved_object_id_1092).
param(p_ann_1595, 1, m_deserializer_instance_1093).
param(p_deser_def_1596, 2, m_deserializer_instance_1093).
throw(m_deserializer_instance_1093, json_mapping_exception).
param(p_ann_1597, 1, m_key_deserializer_instance_1094).
param(p_deser_def_1598, 2, m_key_deserializer_instance_1094).
throw(m_key_deserializer_instance_1094, json_mapping_exception).
param(p_factory_1599, 1, m_with_1095).
param(p_config_1600, 1, m_create_instance_1096).
param(p_jp_1601, 2, m_create_instance_1096).
param(p_values_1602, 3, m_create_instance_1096).
param(p_df_1603, 1, m_impl_1097).
method_invoc(default_deserialization_context_1_expr2, m_default_deserialization_context_1084, line(default_deserialization_context_1, 318)).
argument(p_df_1603, 1, default_deserialization_context_1_expr2).
argument(default_deserialization_context_1_literal1, 2, default_deserialization_context_1_expr2).
param(p_src_1604, 1, m_impl_1098).
param(p_config_1605, 2, m_impl_1098).
param(p_jp_1606, 3, m_impl_1098).
param(p_values_1607, 4, m_impl_1098).
param(p_src_1608, 1, m_impl_1099).
param(p_src_1609, 1, m_impl_1100).
param(p_factory_1610, 2, m_impl_1100).
param(p_config_1611, 1, m_create_instance_1102).
param(p_p_1612, 2, m_create_instance_1102).
param(p_values_1613, 3, m_create_instance_1102).
param(p_factory_1614, 1, m_with_1103).

%type_parser_1 - com.fasterxml.jackson.databind.type.TypeParser
param(p_f_3155, 1, m_type_parser_1906).
assign(f__factory_3156, p_f_3155, line(type_parser_1, 20)).
param(p_f_3157, 1, m_with_factory_1975).
param(p_canonical_3158, 1, m_parse_1976).
throw(m_parse_1976, illegal_argument_exception).
param(p_tokens_3159, 1, m_parse_type_1977).
throw(m_parse_type_1977, illegal_argument_exception).
param(p_tokens_3160, 1, m_parse_types_1978).
throw(m_parse_types_1978, illegal_argument_exception).
param(p_class_name_3161, 1, m_find_class_1979).
param(p_tokens_3162, 2, m_find_class_1979).
param(p_tokens_3163, 1, m__problem_1980).
param(p_msg_3164, 2, m__problem_1980).
param(p_str_3165, 1, m_my_tokenizer_1981).
param(p_token_3166, 1, m_push_back_1984).

%json_serializer_1 - com.fasterxml.jackson.databind.JsonSerializer
param(p_unwrapper_482, 1, m_unwrapping_serializer_362).
param(p_delegatee_483, 1, m_replace_delegatee_363).
param(p_filter_id_484, 1, m_with_filter_id_364).
param(p_value_485, 1, m_serialize_365).
param(p_gen_486, 2, m_serialize_365).
param(p_serializers_487, 3, m_serialize_365).
throw(m_serialize_365, ioexception).
param(p_value_488, 1, m_serialize_with_type_366).
param(p_gen_489, 2, m_serialize_with_type_366).
param(p_serializers_490, 3, m_serialize_with_type_366).
param(p_type_ser_491, 4, m_serialize_with_type_366).
throw(m_serialize_with_type_366, ioexception).
param(p_value_492, 1, m_is_empty_368).
param(p_provider_493, 1, m_is_empty_369).
param(p_value_494, 2, m_is_empty_369).
param(p_visitor_495, 1, m_accept_json_format_visitor_374).
param(p_type_496, 2, m_accept_json_format_visitor_374).
throw(m_accept_json_format_visitor_374, json_mapping_exception).

%std_key_deserializers_1 - com.fasterxml.jackson.databind.deser.std.StdKeyDeserializers
param(p_enum_resolver_1703, 1, m_construct_enum_key_deserializer_1142).
param(p_enum_resolver_1704, 1, m_construct_enum_key_deserializer_1143).
param(p_factory_1705, 2, m_construct_enum_key_deserializer_1143).
param(p_config_1706, 1, m_construct_delegating_key_deserializer_1144).
param(p_type_1707, 2, m_construct_delegating_key_deserializer_1144).
param(p_deser_1708, 3, m_construct_delegating_key_deserializer_1144).
param(p_config_1709, 1, m_find_string_based_key_deserializer_1145).
param(p_type_1710, 2, m_find_string_based_key_deserializer_1145).
param(p_type_1711, 1, m_find_key_deserializer_1146).
param(p_config_1712, 2, m_find_key_deserializer_1146).
param(p_bean_desc_1713, 3, m_find_key_deserializer_1146).
throw(m_find_key_deserializer_1146, json_mapping_exception).

%annotation_map_1 - com.fasterxml.jackson.databind.introspect.AnnotationMap
param(p_type_1863, 1, m_of_1275).
param(p_value_1864, 2, m_of_1275).
param(p_a_1865, 1, m_annotation_map_1276).
param(p_cls_1866, 1, m_get_1277).
param(p_cls_1867, 1, m_has_1278).
param(p_anno_classes_1868, 1, m_has_one_of_1279).
param(p_primary_1869, 1, m_merge_1281).
param(p_secondary_1870, 2, m_merge_1281).
param(p_ann_1871, 1, m_add_if_not_present_1283).
param(p_ann_1872, 1, m_add_1284).
param(p_ann_1873, 1, m__add_1286).

%property_name_1 - com.fasterxml.jackson.databind.PropertyName
assign(f_use_default_866, property_name_1_expr1, line(property_name_1, 29)).
method_invoc(property_name_1_expr1, m_property_name_652, line(property_name_1, 29)).
argument(f___use_default_867, 1, property_name_1_expr1).
argument(property_name_1_literal1, 2, property_name_1_expr1).
assign(f_no_name_868, property_name_1_expr2, line(property_name_1, 36)).
method_invoc(property_name_1_expr2, m_property_name_652, line(property_name_1, 36)).
argument(property_name_1_expr3, 1, property_name_1_expr2).
argument(property_name_1_literal2, 2, property_name_1_expr2).
method_invoc(property_name_1_expr3, m_string_653, line(property_name_1, 36)).
argument(f___no_name_869, 1, property_name_1_expr3).
param(p_simple_name_870, 1, m_property_name_654).
method_invoc(property_name_1_expr4, m_property_name_652, line(property_name_1, 61)).
argument(p_simple_name_870, 1, property_name_1_expr4).
argument(property_name_1_literal3, 2, property_name_1_expr4).
param(p_simple_name_871, 1, m_property_name_652).
param(p_namespace_872, 2, m_property_name_652).
assign(f__simple_name_873, property_name_1_expr6, line(property_name_1, 66)).
method_invoc(property_name_1_expr6, m_non_null_string_655, line(property_name_1, 66)).
argument(p_simple_name_871, 1, property_name_1_expr6).
ref(t_class_util_12, property_name_1_expr6, line(property_name_1, 66)).
assign(f__namespace_874, p_namespace_872, line(property_name_1, 67)).
param(p_simple_name_875, 1, m_construct_657).
param(p_simple_name_876, 1, m_construct_658).
param(p_ns_877, 2, m_construct_658).
param(p_simple_name_878, 1, m_with_simple_name_660).
param(p_ns_879, 1, m_with_namespace_661).
param(p_config_880, 1, m_simple_as_encoded_663).
param(p_str_881, 1, m_has_simple_name_666).
param(p_o_882, 1, m_equals_669).

%std_scalar_serializer_1 - com.fasterxml.jackson.databind.ser.std.StdScalarSerializer
param(p_t_2738, 1, m_std_scalar_serializer_1729).
method_invoc(std_scalar_serializer_1_expr1, m_std_serializer_1696, line(std_scalar_serializer_1, 19)).
argument(p_t_2738, 1, std_scalar_serializer_1_expr1).
param(p_t_2739, 1, m_std_scalar_serializer_1707).
param(p_dummy_2740, 2, m_std_scalar_serializer_1707).
method_invoc(std_scalar_serializer_1_expr2, m_std_serializer_1696, line(std_scalar_serializer_1, 28)).
argument(std_scalar_serializer_1_expr3, 1, std_scalar_serializer_1_expr2).
assign(std_scalar_serializer_1_expr3, p_t_2739, line(std_scalar_serializer_1, 28)).
param(p_value_2741, 1, m_serialize_with_type_1780).
param(p_g_2742, 2, m_serialize_with_type_1780).
param(p_provider_2743, 3, m_serialize_with_type_1780).
param(p_type_ser_2744, 4, m_serialize_with_type_1780).
throw(m_serialize_with_type_1780, ioexception).
param(p_provider_2745, 1, m_get_schema_1781).
param(p_type_hint_2746, 2, m_get_schema_1781).
throw(m_get_schema_1781, json_mapping_exception).
param(p_visitor_2747, 1, m_accept_json_format_visitor_1782).
param(p_type_hint_2748, 2, m_accept_json_format_visitor_1782).
throw(m_accept_json_format_visitor_1782, json_mapping_exception).


% Stack Trace Info.
test_failure(failure_1, 'com.fasterxml.jackson.databind.jsontype.TestTypeNames', 'testBaseTypeId1616').
trace(trace_1, failure_1, m__find_annotation_93, line(annotation_introspector_1, 1336), failure_1, target).
trace(trace_2, trace_1, m_find_subtypes_1392, line(jackson_annotation_introspector_1, 556), failure_1, target).
trace(trace_3, trace_2, m_collect_and_resolve_subtypes_by_type_id_1528, line(std_subtype_resolver_1, 145), failure_1, target).
trace(trace_4, trace_3, m_test_base_type_id1616_1527, line(test_type_names_1, 47), failure_1, target).
trace(trace_5, trace_4, 'invoke0', line(jdk_internal_reflect_native_method_accessor_impl, -2), failure_1, non_target).
trace(trace_6, trace_5, 'invoke', line(jdk_internal_reflect_native_method_accessor_impl, 77), failure_1, non_target).
trace(trace_7, trace_6, 'invoke', line(jdk_internal_reflect_delegating_method_accessor_impl, 43), failure_1, non_target).
trace(trace_8, trace_7, 'invoke', line(java_lang_reflect_method, 569), failure_1, non_target).
trace(trace_9, trace_8, 'runTest', line(junit_framework_test_case, 177), failure_1, non_target).
trace(trace_10, trace_9, 'runBare', line(junit_framework_test_case, 142), failure_1, non_target).
trace(trace_11, trace_10, 'protect', line(junit_framework_test_result_1, 122), failure_1, non_target).
trace(trace_12, trace_11, 'runProtected', line(junit_framework_test_result, 142), failure_1, non_target).
trace(trace_13, trace_12, 'run', line(junit_framework_test_result, 125), failure_1, non_target).
trace(trace_14, trace_13, 'run', line(junit_framework_test_case, 130), failure_1, non_target).
trace(trace_15, trace_14, 'runTest', line(junit_framework_test_suite, 241), failure_1, non_target).
trace(trace_16, trace_15, 'run', line(junit_framework_test_suite, 236), failure_1, non_target).
trace(trace_17, trace_16, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_1, non_target).
trace(trace_18, trace_17, 'run', line(org_junit_runner_junit_core, 137), failure_1, non_target).
trace(trace_19, trace_18, 'main', line(logicfl_coverage_junit4_test_runner, 36), failure_1, non_target).



%%% End of Static Facts

%%% Values

val(p_annotated_115, null, line(annotation_introspector_1, 1336)).
val(p_a_2026, null, line(jackson_annotation_introspector_1, 556)).
val(p_property_2230, null, line(std_subtype_resolver_1, 145)).



%%% End of Facts