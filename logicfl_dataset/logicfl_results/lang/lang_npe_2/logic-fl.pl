%%% Logic-FL Facts
:- style_check(-discontiguous).

%mutable_object_1 - org.apache.commons.lang3.mutable.MutableObject
param(p_value_304, 1, m_mutable_object_150).
assign(f_value_305, p_value_304, line(mutable_object_1, 53)).
param(p_value_306, 1, m_set_value_152).
param(p_obj_307, 1, m_equals_153).
return(mutable_object_1_literal2, m_equals_153, line(mutable_object_1, 92)).
method_invoc(mutable_object_1_expr8, m_get_class_154, line(mutable_object_1, 94)).
ref(mutable_object_1_expr9, mutable_object_1_expr8, line(mutable_object_1, 94)).
method_invoc(mutable_object_1_expr10, m_get_class_154, line(mutable_object_1, 94)).
ref(p_obj_307, mutable_object_1_expr10, line(mutable_object_1, 94)).
assign(v_that_308, mutable_object_1_expr11, line(mutable_object_1, 95)).
assign(mutable_object_1_expr11, p_obj_307, line(mutable_object_1, 95)).
return(mutable_object_1_expr12, m_equals_153, line(mutable_object_1, 96)).
method_invoc(mutable_object_1_expr12, m_equals_155, line(mutable_object_1, 96)).
argument(q_value_2, 1, mutable_object_1_expr12).
ref(f_value_305, mutable_object_1_expr12, line(mutable_object_1, 96)).
ref(v_that_308, q_value_2, line(mutable_object_1, 96)).

%to_string_style_1 - org.apache.commons.lang3.builder.ToStringStyle
assign(f_default_style_1, to_string_style_1_expr1, line(to_string_style_1, 84)).
method_invoc(to_string_style_1_expr1, m_default_to_string_style_1, line(to_string_style_1, 84)).
assign(f_multi_line_style_2, to_string_style_1_expr2, line(to_string_style_1, 98)).
method_invoc(to_string_style_1_expr2, m_multi_line_to_string_style_2, line(to_string_style_1, 98)).
assign(f_no_field_names_style_3, to_string_style_1_expr3, line(to_string_style_1, 109)).
method_invoc(to_string_style_1_expr3, m_no_field_name_to_string_style_3, line(to_string_style_1, 109)).
assign(f_short_prefix_style_4, to_string_style_1_expr4, line(to_string_style_1, 121)).
method_invoc(to_string_style_1_expr4, m_short_prefix_to_string_style_4, line(to_string_style_1, 121)).
assign(f_simple_style_5, to_string_style_1_expr5, line(to_string_style_1, 131)).
method_invoc(to_string_style_1_expr5, m_simple_to_string_style_5, line(to_string_style_1, 131)).
assign(f_no_class_name_style_6, to_string_style_1_expr6, line(to_string_style_1, 143)).
method_invoc(to_string_style_1_expr6, m_no_class_name_to_string_style_6, line(to_string_style_1, 143)).
assign(f_json_style_7, to_string_style_1_expr7, line(to_string_style_1, 162)).
method_invoc(to_string_style_1_expr7, m_json_to_string_style_7, line(to_string_style_1, 162)).
assign(f_registry_8, to_string_style_1_expr8, line(to_string_style_1, 169)).
method_invoc(to_string_style_1_expr8, m_thread_local_8, line(to_string_style_1, 169)).
return(to_string_style_1_expr9, m_get_registry_9, line(to_string_style_1, 187)).
method_invoc(to_string_style_1_expr9, m_get_10, line(to_string_style_1, 187)).
ref(f_registry_8, to_string_style_1_expr9, line(to_string_style_1, 187)).
param(p_value_9, 1, m_is_registered_11).
param(p_value_10, 1, m_register_12).
param(p_value_11, 1, m_unregister_13).
assign(f_use_field_names_12, to_string_style_1_literal1, line(to_string_style_1, 246)).
assign(f_use_class_name_13, to_string_style_1_literal2, line(to_string_style_1, 251)).
assign(f_use_identity_hash_code_14, to_string_style_1_literal3, line(to_string_style_1, 261)).
assign(f_content_start_15, to_string_style_1_literal4, line(to_string_style_1, 266)).
assign(f_content_end_16, to_string_style_1_literal5, line(to_string_style_1, 271)).
assign(f_field_name_value_separator_17, to_string_style_1_literal6, line(to_string_style_1, 276)).
assign(f_field_separator_18, to_string_style_1_literal7, line(to_string_style_1, 291)).
assign(f_array_start_19, to_string_style_1_literal8, line(to_string_style_1, 296)).
assign(f_array_separator_20, to_string_style_1_literal9, line(to_string_style_1, 301)).
assign(f_array_content_detail_21, to_string_style_1_literal10, line(to_string_style_1, 306)).
assign(f_array_end_22, to_string_style_1_literal11, line(to_string_style_1, 311)).
assign(f_default_full_detail_23, to_string_style_1_literal12, line(to_string_style_1, 317)).
assign(f_null_text_24, to_string_style_1_literal13, line(to_string_style_1, 322)).
assign(f_size_start_text_25, to_string_style_1_literal14, line(to_string_style_1, 327)).
assign(f_size_end_text_26, to_string_style_1_literal15, line(to_string_style_1, 332)).
assign(f_summary_object_start_text_27, to_string_style_1_literal16, line(to_string_style_1, 337)).
assign(f_summary_object_end_text_28, to_string_style_1_literal17, line(to_string_style_1, 342)).
param(p_buffer_29, 1, m_append_super_15).
param(p_super_to_string_30, 2, m_append_super_15).
param(p_buffer_31, 1, m_append_to_string_16).
param(p_to_string_32, 2, m_append_to_string_16).
param(p_buffer_33, 1, m_append_start_17).
param(p_object_34, 2, m_append_start_17).
param(p_buffer_35, 1, m_append_end_18).
param(p_object_36, 2, m_append_end_18).
param(p_buffer_37, 1, m_remove_last_field_separator_19).
param(p_buffer_38, 1, m_append_20).
param(p_field_name_39, 2, m_append_20).
param(p_value_40, 3, m_append_20).
param(p_full_detail_41, 4, m_append_20).
param(p_buffer_42, 1, m_append_internal_21).
param(p_field_name_43, 2, m_append_internal_21).
param(p_value_44, 3, m_append_internal_21).
param(p_detail_45, 4, m_append_internal_21).
param(p_buffer_46, 1, m_append_cyclic_object_22).
param(p_field_name_47, 2, m_append_cyclic_object_22).
param(p_value_48, 3, m_append_cyclic_object_22).
param(p_buffer_49, 1, m_append_detail_23).
param(p_field_name_50, 2, m_append_detail_23).
param(p_value_51, 3, m_append_detail_23).
param(p_buffer_52, 1, m_append_detail_24).
param(p_field_name_53, 2, m_append_detail_24).
param(p_coll_54, 3, m_append_detail_24).
param(p_buffer_55, 1, m_append_detail_25).
param(p_field_name_56, 2, m_append_detail_25).
param(p_map_57, 3, m_append_detail_25).
param(p_buffer_58, 1, m_append_summary_26).
param(p_field_name_59, 2, m_append_summary_26).
param(p_value_60, 3, m_append_summary_26).
param(p_buffer_61, 1, m_append_27).
param(p_field_name_62, 2, m_append_27).
param(p_value_63, 3, m_append_27).
param(p_buffer_64, 1, m_append_detail_28).
param(p_field_name_65, 2, m_append_detail_28).
param(p_value_66, 3, m_append_detail_28).
param(p_buffer_67, 1, m_append_29).
param(p_field_name_68, 2, m_append_29).
param(p_value_69, 3, m_append_29).
param(p_buffer_70, 1, m_append_detail_30).
param(p_field_name_71, 2, m_append_detail_30).
param(p_value_72, 3, m_append_detail_30).
param(p_buffer_73, 1, m_append_31).
param(p_field_name_74, 2, m_append_31).
param(p_value_75, 3, m_append_31).
param(p_buffer_76, 1, m_append_detail_32).
param(p_field_name_77, 2, m_append_detail_32).
param(p_value_78, 3, m_append_detail_32).
param(p_buffer_79, 1, m_append_33).
param(p_field_name_80, 2, m_append_33).
param(p_value_81, 3, m_append_33).
param(p_buffer_82, 1, m_append_detail_34).
param(p_field_name_83, 2, m_append_detail_34).
param(p_value_84, 3, m_append_detail_34).
param(p_buffer_85, 1, m_append_35).
param(p_field_name_86, 2, m_append_35).
param(p_value_87, 3, m_append_35).
param(p_buffer_88, 1, m_append_detail_36).
param(p_field_name_89, 2, m_append_detail_36).
param(p_value_90, 3, m_append_detail_36).
param(p_buffer_91, 1, m_append_37).
param(p_field_name_92, 2, m_append_37).
param(p_value_93, 3, m_append_37).
param(p_buffer_94, 1, m_append_detail_38).
param(p_field_name_95, 2, m_append_detail_38).
param(p_value_96, 3, m_append_detail_38).
param(p_buffer_97, 1, m_append_39).
param(p_field_name_98, 2, m_append_39).
param(p_value_99, 3, m_append_39).
param(p_buffer_100, 1, m_append_detail_40).
param(p_field_name_101, 2, m_append_detail_40).
param(p_value_102, 3, m_append_detail_40).
param(p_buffer_103, 1, m_append_41).
param(p_field_name_104, 2, m_append_41).
param(p_value_105, 3, m_append_41).
param(p_buffer_106, 1, m_append_detail_42).
param(p_field_name_107, 2, m_append_detail_42).
param(p_value_108, 3, m_append_detail_42).
param(p_buffer_109, 1, m_append_43).
param(p_field_name_110, 2, m_append_43).
param(p_array_111, 3, m_append_43).
param(p_full_detail_112, 4, m_append_43).
param(p_buffer_113, 1, m_append_detail_44).
param(p_field_name_114, 2, m_append_detail_44).
param(p_array_115, 3, m_append_detail_44).
param(p_buffer_116, 1, m_append_detail_45).
param(p_field_name_117, 2, m_append_detail_45).
param(p_i_118, 3, m_append_detail_45).
param(p_item_119, 4, m_append_detail_45).
param(p_buffer_120, 1, m_reflection_append_array_detail_46).
param(p_field_name_121, 2, m_reflection_append_array_detail_46).
param(p_array_122, 3, m_reflection_append_array_detail_46).
param(p_buffer_123, 1, m_append_summary_47).
param(p_field_name_124, 2, m_append_summary_47).
param(p_array_125, 3, m_append_summary_47).
param(p_buffer_126, 1, m_append_48).
param(p_field_name_127, 2, m_append_48).
param(p_array_128, 3, m_append_48).
param(p_full_detail_129, 4, m_append_48).
param(p_buffer_130, 1, m_append_detail_49).
param(p_field_name_131, 2, m_append_detail_49).
param(p_array_132, 3, m_append_detail_49).
param(p_buffer_133, 1, m_append_summary_50).
param(p_field_name_134, 2, m_append_summary_50).
param(p_array_135, 3, m_append_summary_50).
param(p_buffer_136, 1, m_append_51).
param(p_field_name_137, 2, m_append_51).
param(p_array_138, 3, m_append_51).
param(p_full_detail_139, 4, m_append_51).
param(p_buffer_140, 1, m_append_detail_52).
param(p_field_name_141, 2, m_append_detail_52).
param(p_array_142, 3, m_append_detail_52).
param(p_buffer_143, 1, m_append_summary_53).
param(p_field_name_144, 2, m_append_summary_53).
param(p_array_145, 3, m_append_summary_53).
param(p_buffer_146, 1, m_append_54).
param(p_field_name_147, 2, m_append_54).
param(p_array_148, 3, m_append_54).
param(p_full_detail_149, 4, m_append_54).
param(p_buffer_150, 1, m_append_detail_55).
param(p_field_name_151, 2, m_append_detail_55).
param(p_array_152, 3, m_append_detail_55).
param(p_buffer_153, 1, m_append_summary_56).
param(p_field_name_154, 2, m_append_summary_56).
param(p_array_155, 3, m_append_summary_56).
param(p_buffer_156, 1, m_append_57).
param(p_field_name_157, 2, m_append_57).
param(p_array_158, 3, m_append_57).
param(p_full_detail_159, 4, m_append_57).
param(p_buffer_160, 1, m_append_detail_58).
param(p_field_name_161, 2, m_append_detail_58).
param(p_array_162, 3, m_append_detail_58).
param(p_buffer_163, 1, m_append_summary_59).
param(p_field_name_164, 2, m_append_summary_59).
param(p_array_165, 3, m_append_summary_59).
param(p_buffer_166, 1, m_append_60).
param(p_field_name_167, 2, m_append_60).
param(p_array_168, 3, m_append_60).
param(p_full_detail_169, 4, m_append_60).
param(p_buffer_170, 1, m_append_detail_61).
param(p_field_name_171, 2, m_append_detail_61).
param(p_array_172, 3, m_append_detail_61).
param(p_buffer_173, 1, m_append_summary_62).
param(p_field_name_174, 2, m_append_summary_62).
param(p_array_175, 3, m_append_summary_62).
param(p_buffer_176, 1, m_append_63).
param(p_field_name_177, 2, m_append_63).
param(p_array_178, 3, m_append_63).
param(p_full_detail_179, 4, m_append_63).
param(p_buffer_180, 1, m_append_detail_64).
param(p_field_name_181, 2, m_append_detail_64).
param(p_array_182, 3, m_append_detail_64).
param(p_buffer_183, 1, m_append_summary_65).
param(p_field_name_184, 2, m_append_summary_65).
param(p_array_185, 3, m_append_summary_65).
param(p_buffer_186, 1, m_append_66).
param(p_field_name_187, 2, m_append_66).
param(p_array_188, 3, m_append_66).
param(p_full_detail_189, 4, m_append_66).
param(p_buffer_190, 1, m_append_detail_67).
param(p_field_name_191, 2, m_append_detail_67).
param(p_array_192, 3, m_append_detail_67).
param(p_buffer_193, 1, m_append_summary_68).
param(p_field_name_194, 2, m_append_summary_68).
param(p_array_195, 3, m_append_summary_68).
param(p_buffer_196, 1, m_append_69).
param(p_field_name_197, 2, m_append_69).
param(p_array_198, 3, m_append_69).
param(p_full_detail_199, 4, m_append_69).
param(p_buffer_200, 1, m_append_detail_70).
param(p_field_name_201, 2, m_append_detail_70).
param(p_array_202, 3, m_append_detail_70).
param(p_buffer_203, 1, m_append_summary_71).
param(p_field_name_204, 2, m_append_summary_71).
param(p_array_205, 3, m_append_summary_71).
param(p_buffer_206, 1, m_append_class_name_72).
param(p_object_207, 2, m_append_class_name_72).
param(p_buffer_208, 1, m_append_identity_hash_code_73).
param(p_object_209, 2, m_append_identity_hash_code_73).
param(p_buffer_210, 1, m_append_content_start_74).
param(p_buffer_211, 1, m_append_content_end_75).
param(p_buffer_212, 1, m_append_null_text_76).
param(p_field_name_213, 2, m_append_null_text_76).
param(p_buffer_214, 1, m_append_field_separator_77).
param(p_buffer_215, 1, m_append_field_start_78).
param(p_field_name_216, 2, m_append_field_start_78).
param(p_buffer_217, 1, m_append_field_end_79).
param(p_field_name_218, 2, m_append_field_end_79).
param(p_buffer_219, 1, m_append_summary_size_80).
param(p_field_name_220, 2, m_append_summary_size_80).
param(p_size_221, 3, m_append_summary_size_80).
param(p_full_detail_request_222, 1, m_is_full_detail_81).
param(p_cls_223, 1, m_get_short_class_name_82).
param(p_use_class_name_224, 1, m_set_use_class_name_84).
assign(f_use_class_name_13, p_use_class_name_224, line(to_string_style_1, 1581)).
param(p_use_short_class_name_225, 1, m_set_use_short_class_name_86).
assign(f_use_short_class_name_226, p_use_short_class_name_225, line(to_string_style_1, 1601)).
param(p_use_identity_hash_code_227, 1, m_set_use_identity_hash_code_88).
assign(f_use_identity_hash_code_14, p_use_identity_hash_code_227, line(to_string_style_1, 1619)).
param(p_use_field_names_228, 1, m_set_use_field_names_90).
assign(f_use_field_names_12, p_use_field_names_228, line(to_string_style_1, 1637)).
param(p_default_full_detail_229, 1, m_set_default_full_detail_92).
param(p_array_content_detail_230, 1, m_set_array_content_detail_94).
param(p_array_start_231, 1, m_set_array_start_96).
assign(f_array_start_19, p_array_start_231, line(to_string_style_1, 1699)).
param(p_array_end_232, 1, m_set_array_end_98).
assign(f_array_end_22, p_array_end_232, line(to_string_style_1, 1723)).
param(p_array_separator_233, 1, m_set_array_separator_100).
param(p_content_start_234, 1, m_set_content_start_102).
assign(f_content_start_15, p_content_start_234, line(to_string_style_1, 1771)).
param(p_content_end_235, 1, m_set_content_end_104).
assign(f_content_end_16, p_content_end_235, line(to_string_style_1, 1795)).
param(p_field_name_value_separator_236, 1, m_set_field_name_value_separator_106).
assign(f_field_name_value_separator_17, p_field_name_value_separator_236, line(to_string_style_1, 1819)).
param(p_field_separator_237, 1, m_set_field_separator_108).
assign(f_field_separator_18, p_field_separator_237, line(to_string_style_1, 1843)).
param(p_field_separator_at_start_238, 1, m_set_field_separator_at_start_110).
assign(f_field_separator_at_start_239, p_field_separator_at_start_238, line(to_string_style_1, 1865)).
param(p_field_separator_at_end_240, 1, m_set_field_separator_at_end_112).
param(p_null_text_241, 1, m_set_null_text_114).
assign(f_null_text_24, p_null_text_241, line(to_string_style_1, 1911)).
param(p_size_start_text_242, 1, m_set_size_start_text_116).
assign(f_size_start_text_25, p_size_start_text_242, line(to_string_style_1, 1941)).
param(p_size_end_text_243, 1, m_set_size_end_text_118).
assign(f_size_end_text_26, p_size_end_text_243, line(to_string_style_1, 1971)).
param(p_summary_object_start_text_244, 1, m_set_summary_object_start_text_120).
assign(f_summary_object_start_text_27, p_summary_object_start_text_244, line(to_string_style_1, 2001)).
param(p_summary_object_end_text_245, 1, m_set_summary_object_end_text_122).
assign(f_summary_object_end_text_28, p_summary_object_end_text_245, line(to_string_style_1, 2031)).
method_invoc(to_string_style_1_expr69, m_set_use_field_names_90, line(to_string_style_1, 2085)).
argument(to_string_style_1_literal29, 1, to_string_style_1_expr69).
ref(to_string_style_1_expr70, to_string_style_1_expr69, line(to_string_style_1, 2085)).
method_invoc(to_string_style_1_expr71, m_set_use_short_class_name_86, line(to_string_style_1, 2116)).
argument(to_string_style_1_literal30, 1, to_string_style_1_expr71).
ref(to_string_style_1_expr72, to_string_style_1_expr71, line(to_string_style_1, 2116)).
method_invoc(to_string_style_1_expr73, m_set_use_identity_hash_code_88, line(to_string_style_1, 2117)).
argument(to_string_style_1_literal31, 1, to_string_style_1_expr73).
ref(to_string_style_1_expr74, to_string_style_1_expr73, line(to_string_style_1, 2117)).
method_invoc(to_string_style_1_expr75, m_set_use_class_name_84, line(to_string_style_1, 2147)).
argument(to_string_style_1_literal32, 1, to_string_style_1_expr75).
ref(to_string_style_1_expr76, to_string_style_1_expr75, line(to_string_style_1, 2147)).
method_invoc(to_string_style_1_expr77, m_set_use_identity_hash_code_88, line(to_string_style_1, 2148)).
argument(to_string_style_1_literal33, 1, to_string_style_1_expr77).
ref(to_string_style_1_expr78, to_string_style_1_expr77, line(to_string_style_1, 2148)).
method_invoc(to_string_style_1_expr79, m_set_use_field_names_90, line(to_string_style_1, 2149)).
argument(to_string_style_1_literal34, 1, to_string_style_1_expr79).
ref(to_string_style_1_expr80, to_string_style_1_expr79, line(to_string_style_1, 2149)).
method_invoc(to_string_style_1_expr81, m_set_content_start_102, line(to_string_style_1, 2150)).
argument(q_empty_1, 1, to_string_style_1_expr81).
ref(to_string_style_1_expr82, to_string_style_1_expr81, line(to_string_style_1, 2150)).
ref(t_string_utils_1, q_empty_1, line(to_string_style_1, 2150)).
method_invoc(to_string_style_1_expr83, m_set_content_end_104, line(to_string_style_1, 2151)).
argument(q_empty_2, 1, to_string_style_1_expr83).
ref(to_string_style_1_expr84, to_string_style_1_expr83, line(to_string_style_1, 2151)).
ref(t_string_utils_1, q_empty_2, line(to_string_style_1, 2151)).
method_invoc(to_string_style_1_expr85, m_set_content_start_102, line(to_string_style_1, 2180)).
argument(to_string_style_1_literal35, 1, to_string_style_1_expr85).
ref(to_string_style_1_expr86, to_string_style_1_expr85, line(to_string_style_1, 2180)).
method_invoc(to_string_style_1_expr87, m_set_field_separator_108, line(to_string_style_1, 2181)).
argument(to_string_style_1_expr88, 1, to_string_style_1_expr87).
ref(to_string_style_1_expr89, to_string_style_1_expr87, line(to_string_style_1, 2181)).
method_invoc(to_string_style_1_expr90, m_line_separator_127, line(to_string_style_1, 2181)).
ref(t_system_2, to_string_style_1_expr90, line(to_string_style_1, 2181)).
method_invoc(to_string_style_1_expr91, m_set_field_separator_at_start_110, line(to_string_style_1, 2182)).
argument(to_string_style_1_literal37, 1, to_string_style_1_expr91).
ref(to_string_style_1_expr92, to_string_style_1_expr91, line(to_string_style_1, 2182)).
method_invoc(to_string_style_1_expr93, m_set_content_end_104, line(to_string_style_1, 2183)).
argument(to_string_style_1_expr94, 1, to_string_style_1_expr93).
ref(to_string_style_1_expr95, to_string_style_1_expr93, line(to_string_style_1, 2183)).
method_invoc(to_string_style_1_expr96, m_line_separator_127, line(to_string_style_1, 2183)).
ref(t_system_2, to_string_style_1_expr96, line(to_string_style_1, 2183)).
method_invoc(to_string_style_1_expr97, m_set_use_class_name_84, line(to_string_style_1, 2214)).
argument(to_string_style_1_literal39, 1, to_string_style_1_expr97).
ref(to_string_style_1_expr98, to_string_style_1_expr97, line(to_string_style_1, 2214)).
method_invoc(to_string_style_1_expr99, m_set_use_identity_hash_code_88, line(to_string_style_1, 2215)).
argument(to_string_style_1_literal40, 1, to_string_style_1_expr99).
ref(to_string_style_1_expr100, to_string_style_1_expr99, line(to_string_style_1, 2215)).
method_invoc(to_string_style_1_expr101, m_set_use_class_name_84, line(to_string_style_1, 2254)).
argument(to_string_style_1_literal41, 1, to_string_style_1_expr101).
ref(to_string_style_1_expr102, to_string_style_1_expr101, line(to_string_style_1, 2254)).
method_invoc(to_string_style_1_expr103, m_set_use_identity_hash_code_88, line(to_string_style_1, 2255)).
argument(to_string_style_1_literal42, 1, to_string_style_1_expr103).
ref(to_string_style_1_expr104, to_string_style_1_expr103, line(to_string_style_1, 2255)).
method_invoc(to_string_style_1_expr105, m_set_content_start_102, line(to_string_style_1, 2257)).
argument(to_string_style_1_literal43, 1, to_string_style_1_expr105).
ref(to_string_style_1_expr106, to_string_style_1_expr105, line(to_string_style_1, 2257)).
method_invoc(to_string_style_1_expr107, m_set_content_end_104, line(to_string_style_1, 2258)).
argument(to_string_style_1_literal44, 1, to_string_style_1_expr107).
ref(to_string_style_1_expr108, to_string_style_1_expr107, line(to_string_style_1, 2258)).
method_invoc(to_string_style_1_expr109, m_set_array_start_96, line(to_string_style_1, 2260)).
argument(to_string_style_1_literal45, 1, to_string_style_1_expr109).
ref(to_string_style_1_expr110, to_string_style_1_expr109, line(to_string_style_1, 2260)).
method_invoc(to_string_style_1_expr111, m_set_array_end_98, line(to_string_style_1, 2261)).
argument(to_string_style_1_literal46, 1, to_string_style_1_expr111).
ref(to_string_style_1_expr112, to_string_style_1_expr111, line(to_string_style_1, 2261)).
method_invoc(to_string_style_1_expr113, m_set_field_separator_108, line(to_string_style_1, 2263)).
argument(to_string_style_1_literal47, 1, to_string_style_1_expr113).
ref(to_string_style_1_expr114, to_string_style_1_expr113, line(to_string_style_1, 2263)).
method_invoc(to_string_style_1_expr115, m_set_field_name_value_separator_106, line(to_string_style_1, 2264)).
argument(to_string_style_1_literal48, 1, to_string_style_1_expr115).
ref(to_string_style_1_expr116, to_string_style_1_expr115, line(to_string_style_1, 2264)).
method_invoc(to_string_style_1_expr117, m_set_null_text_114, line(to_string_style_1, 2266)).
argument(to_string_style_1_literal49, 1, to_string_style_1_expr117).
ref(to_string_style_1_expr118, to_string_style_1_expr117, line(to_string_style_1, 2266)).
method_invoc(to_string_style_1_expr119, m_set_summary_object_start_text_120, line(to_string_style_1, 2268)).
argument(to_string_style_1_literal50, 1, to_string_style_1_expr119).
ref(to_string_style_1_expr120, to_string_style_1_expr119, line(to_string_style_1, 2268)).
method_invoc(to_string_style_1_expr121, m_set_summary_object_end_text_122, line(to_string_style_1, 2269)).
argument(to_string_style_1_literal51, 1, to_string_style_1_expr121).
ref(to_string_style_1_expr122, to_string_style_1_expr121, line(to_string_style_1, 2269)).
method_invoc(to_string_style_1_expr123, m_set_size_start_text_116, line(to_string_style_1, 2271)).
argument(to_string_style_1_literal52, 1, to_string_style_1_expr123).
ref(to_string_style_1_expr124, to_string_style_1_expr123, line(to_string_style_1, 2271)).
method_invoc(to_string_style_1_expr125, m_set_size_end_text_118, line(to_string_style_1, 2272)).
argument(to_string_style_1_literal53, 1, to_string_style_1_expr125).
ref(to_string_style_1_expr126, to_string_style_1_expr125, line(to_string_style_1, 2272)).
param(p_buffer_246, 1, m_append_130).
param(p_field_name_247, 2, m_append_130).
param(p_array_248, 3, m_append_130).
param(p_full_detail_249, 4, m_append_130).
param(p_buffer_250, 1, m_append_131).
param(p_field_name_251, 2, m_append_131).
param(p_array_252, 3, m_append_131).
param(p_full_detail_253, 4, m_append_131).
param(p_buffer_254, 1, m_append_132).
param(p_field_name_255, 2, m_append_132).
param(p_array_256, 3, m_append_132).
param(p_full_detail_257, 4, m_append_132).
param(p_buffer_258, 1, m_append_133).
param(p_field_name_259, 2, m_append_133).
param(p_array_260, 3, m_append_133).
param(p_full_detail_261, 4, m_append_133).
param(p_buffer_262, 1, m_append_134).
param(p_field_name_263, 2, m_append_134).
param(p_array_264, 3, m_append_134).
param(p_full_detail_265, 4, m_append_134).
param(p_buffer_266, 1, m_append_135).
param(p_field_name_267, 2, m_append_135).
param(p_array_268, 3, m_append_135).
param(p_full_detail_269, 4, m_append_135).
param(p_buffer_270, 1, m_append_136).
param(p_field_name_271, 2, m_append_136).
param(p_array_272, 3, m_append_136).
param(p_full_detail_273, 4, m_append_136).
param(p_buffer_274, 1, m_append_137).
param(p_field_name_275, 2, m_append_137).
param(p_array_276, 3, m_append_137).
param(p_full_detail_277, 4, m_append_137).
param(p_buffer_278, 1, m_append_138).
param(p_field_name_279, 2, m_append_138).
param(p_array_280, 3, m_append_138).
param(p_full_detail_281, 4, m_append_138).
param(p_buffer_282, 1, m_append_139).
param(p_field_name_283, 2, m_append_139).
param(p_value_284, 3, m_append_139).
param(p_full_detail_285, 4, m_append_139).
param(p_buffer_286, 1, m_append_detail_140).
param(p_field_name_287, 2, m_append_detail_140).
param(p_value_288, 3, m_append_detail_140).
param(p_buffer_289, 1, m_append_detail_141).
param(p_field_name_290, 2, m_append_detail_141).
param(p_value_291, 3, m_append_detail_141).
param(p_buffer_292, 1, m_append_detail_142).
param(p_field_name_293, 2, m_append_detail_142).
param(p_coll_294, 3, m_append_detail_142).
param(p_buffer_295, 1, m_append_detail_143).
param(p_field_name_296, 2, m_append_detail_143).
param(p_map_297, 3, m_append_detail_143).
param(p_value_as_string_298, 1, m_is_json_array_144).
param(p_value_as_string_299, 1, m_is_json_object_145).
param(p_buffer_300, 1, m_append_value_as_string_146).
param(p_value_301, 2, m_append_value_as_string_146).
param(p_buffer_302, 1, m_append_field_start_147).
param(p_field_name_303, 2, m_append_field_start_147).

%mutable_object_test_1 - org.apache.commons.lang3.mutable.MutableObjectTest
assign(v_mut_num_a_309, mutable_object_test_1_expr1, line(mutable_object_test_1, 47)).
method_invoc(mutable_object_test_1_expr1, m_mutable_object_150, line(mutable_object_test_1, 47)).
argument(mutable_object_test_1_literal1, 1, mutable_object_test_1_expr1).
assign(v_mut_num_b_310, mutable_object_test_1_expr2, line(mutable_object_test_1, 48)).
method_invoc(mutable_object_test_1_expr2, m_mutable_object_150, line(mutable_object_test_1, 48)).
argument(mutable_object_test_1_literal2, 1, mutable_object_test_1_expr2).
assign(v_mut_num_c_311, mutable_object_test_1_expr3, line(mutable_object_test_1, 49)).
method_invoc(mutable_object_test_1_expr3, m_mutable_object_150, line(mutable_object_test_1, 49)).
argument(mutable_object_test_1_literal3, 1, mutable_object_test_1_expr3).
assign(v_mut_num_null1_312, mutable_object_test_1_expr4, line(mutable_object_test_1, 50)).
method_invoc(mutable_object_test_1_expr4, m_mutable_object_150, line(mutable_object_test_1, 50)).
argument(mutable_object_test_1_literal4, 1, mutable_object_test_1_expr4).
assign(v_mut_num_null2_313, mutable_object_test_1_expr5, line(mutable_object_test_1, 51)).
method_invoc(mutable_object_test_1_expr5, m_mutable_object_150, line(mutable_object_test_1, 51)).
argument(mutable_object_test_1_literal5, 1, mutable_object_test_1_expr5).
method_invoc(mutable_object_test_1_expr6, m_assert_equals_160, line(mutable_object_test_1, 53)).
argument(v_mut_num_a_309, 1, mutable_object_test_1_expr6).
argument(v_mut_num_a_309, 2, mutable_object_test_1_expr6).
method_invoc(mutable_object_test_1_expr7, m_assert_equals_160, line(mutable_object_test_1, 54)).
argument(v_mut_num_a_309, 1, mutable_object_test_1_expr7).
argument(v_mut_num_b_310, 2, mutable_object_test_1_expr7).
method_invoc(mutable_object_test_1_expr8, m_assert_equals_160, line(mutable_object_test_1, 55)).
argument(v_mut_num_b_310, 1, mutable_object_test_1_expr8).
argument(v_mut_num_a_309, 2, mutable_object_test_1_expr8).
method_invoc(mutable_object_test_1_expr9, m_assert_equals_160, line(mutable_object_test_1, 56)).
argument(v_mut_num_b_310, 1, mutable_object_test_1_expr9).
argument(v_mut_num_b_310, 2, mutable_object_test_1_expr9).
method_invoc(mutable_object_test_1_expr10, m_assert_not_equals_161, line(mutable_object_test_1, 57)).
argument(v_mut_num_a_309, 1, mutable_object_test_1_expr10).
argument(v_mut_num_c_311, 2, mutable_object_test_1_expr10).
method_invoc(mutable_object_test_1_expr11, m_assert_not_equals_161, line(mutable_object_test_1, 58)).
argument(v_mut_num_b_310, 1, mutable_object_test_1_expr11).
argument(v_mut_num_c_311, 2, mutable_object_test_1_expr11).
method_invoc(mutable_object_test_1_expr12, m_assert_equals_160, line(mutable_object_test_1, 59)).
argument(v_mut_num_c_311, 1, mutable_object_test_1_expr12).
argument(v_mut_num_c_311, 2, mutable_object_test_1_expr12).
method_invoc(mutable_object_test_1_expr13, m_assert_not_equals_161, line(mutable_object_test_1, 60)).
argument(v_mut_num_a_309, 1, mutable_object_test_1_expr13).
argument(v_mut_num_null1_312, 2, mutable_object_test_1_expr13).
method_invoc(mutable_object_test_1_expr14, m_assert_equals_160, line(mutable_object_test_1, 61)).
argument(v_mut_num_null1_312, 1, mutable_object_test_1_expr14).
argument(v_mut_num_null1_312, 2, mutable_object_test_1_expr14).
method_invoc(mutable_object_test_1_expr15, m_assert_equals_160, line(mutable_object_test_1, 62)).
throw(mutable_object_test_1_expr15, null_pointer_exception, line(mutable_object_test_1, 62)).
argument(v_mut_num_null1_312, 1, mutable_object_test_1_expr15).
argument(v_mut_num_null2_313, 2, mutable_object_test_1_expr15).


% Stack Trace Info.
test_failure(failure_1, 'org.apache.commons.lang3.mutable.MutableObjectTest', 'testEquals').
trace(trace_1, failure_1, m_equals_153, line(mutable_object_1, 96), failure_1, target).
trace(trace_2, trace_1, 'objectsAreEqual', line(org_junit_jupiter_api_assertion_utils, 110), failure_1, non_target).
trace(trace_3, trace_2, 'assertEquals', line(org_junit_jupiter_api_assert_equals, 181), failure_1, non_target).
trace(trace_4, trace_3, 'assertEquals', line(org_junit_jupiter_api_assert_equals, 177), failure_1, non_target).
trace(trace_5, trace_4, 'assertEquals', line(org_junit_jupiter_api_assertions, 1141), failure_1, non_target).
trace(trace_6, trace_5, m_test_equals_159, line(mutable_object_test_1, 62), failure_1, target).
trace(trace_7, trace_6, 'invoke', line(java_lang_reflect_method, 569), failure_1, non_target).
trace(trace_8, trace_7, 'forEach', line(java_util_array_list, 1511), failure_1, non_target).
trace(trace_9, trace_8, 'forEach', line(java_util_array_list, 1511), failure_1, non_target).



%%% End of Static Facts

%%% Values

val(f_value_305, null, line(mutable_object_1, 96)).
val(q_value_2, null, line(mutable_object_1, 96)).



%%% End of Facts