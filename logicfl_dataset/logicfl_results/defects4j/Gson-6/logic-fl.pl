%%% Logic-FL Facts
:- style_check(-discontiguous).

%json_writer_1 - com.google.gson.stream.JsonWriter
assign(f_replacement_chars_601, json_writer_1_expr2, line(json_writer_1, 145)).
assign(v_i_602, json_writer_1_literal2, line(json_writer_1, 146)).
assign(json_writer_1_expr7, json_writer_1_expr8, line(json_writer_1, 147)).
ref(f_replacement_chars_601, json_writer_1_expr7, line(json_writer_1, 147)).
method_invoc(json_writer_1_expr8, m_format_401, line(json_writer_1, 147)).
argument(json_writer_1_literal4, 1, json_writer_1_expr8).
argument(json_writer_1_expr9, 2, json_writer_1_expr8).
ref(t_string_25, json_writer_1_expr8, line(json_writer_1, 147)).
assign(json_writer_1_expr9, v_i_602, line(json_writer_1, 147)).
assign(json_writer_1_expr11, json_writer_1_literal5, line(json_writer_1, 149)).
ref(f_replacement_chars_601, json_writer_1_expr11, line(json_writer_1, 149)).
assign(json_writer_1_expr13, json_writer_1_literal7, line(json_writer_1, 150)).
ref(f_replacement_chars_601, json_writer_1_expr13, line(json_writer_1, 150)).
assign(json_writer_1_expr15, json_writer_1_literal9, line(json_writer_1, 151)).
ref(f_replacement_chars_601, json_writer_1_expr15, line(json_writer_1, 151)).
assign(json_writer_1_expr17, json_writer_1_literal11, line(json_writer_1, 152)).
ref(f_replacement_chars_601, json_writer_1_expr17, line(json_writer_1, 152)).
assign(json_writer_1_expr19, json_writer_1_literal13, line(json_writer_1, 153)).
ref(f_replacement_chars_601, json_writer_1_expr19, line(json_writer_1, 153)).
assign(json_writer_1_expr21, json_writer_1_literal15, line(json_writer_1, 154)).
ref(f_replacement_chars_601, json_writer_1_expr21, line(json_writer_1, 154)).
assign(json_writer_1_expr23, json_writer_1_literal17, line(json_writer_1, 155)).
ref(f_replacement_chars_601, json_writer_1_expr23, line(json_writer_1, 155)).
assign(f_html_safe_replacement_chars_603, json_writer_1_expr25, line(json_writer_1, 156)).
method_invoc(json_writer_1_expr25, m_clone_402, line(json_writer_1, 156)).
ref(f_replacement_chars_601, json_writer_1_expr25, line(json_writer_1, 156)).
assign(json_writer_1_expr27, json_writer_1_literal19, line(json_writer_1, 157)).
ref(f_html_safe_replacement_chars_603, json_writer_1_expr27, line(json_writer_1, 157)).
assign(json_writer_1_expr29, json_writer_1_literal21, line(json_writer_1, 158)).
ref(f_html_safe_replacement_chars_603, json_writer_1_expr29, line(json_writer_1, 158)).
assign(json_writer_1_expr31, json_writer_1_literal23, line(json_writer_1, 159)).
ref(f_html_safe_replacement_chars_603, json_writer_1_expr31, line(json_writer_1, 159)).
assign(json_writer_1_expr33, json_writer_1_literal25, line(json_writer_1, 160)).
ref(f_html_safe_replacement_chars_603, json_writer_1_expr33, line(json_writer_1, 160)).
assign(json_writer_1_expr35, json_writer_1_literal27, line(json_writer_1, 161)).
ref(f_html_safe_replacement_chars_603, json_writer_1_expr35, line(json_writer_1, 161)).
assign(f_stack_604, json_writer_1_expr36, line(json_writer_1, 167)).
assign(f_stack_size_605, json_writer_1_literal30, line(json_writer_1, 168)).
method_invoc(json_writer_1_expr37, m_push_403, line(json_writer_1, 170)).
argument(f_empty_document_606, 1, json_writer_1_expr37).
assign(f_separator_607, json_writer_1_literal31, line(json_writer_1, 182)).
assign(f_serialize_nulls_608, json_writer_1_literal32, line(json_writer_1, 190)).
param(p_out_609, 1, m_json_writer_75).
assign(f_out_610, p_out_609, line(json_writer_1, 201)).
param(p_indent_611, 1, m_set_indent_404).
param(p_lenient_612, 1, m_set_lenient_405).
param(p_html_safe_613, 1, m_set_html_safe_407).
param(p_serialize_nulls_614, 1, m_set_serialize_nulls_76).
assign(f_serialize_nulls_608, p_serialize_nulls_614, line(json_writer_1, 269)).
throw(m_begin_array_410, ioexception).
throw(m_end_array_411, ioexception).
throw(m_begin_object_412, ioexception).
throw(m_end_object_413, ioexception).
param(p_empty_615, 1, m_open_414).
param(p_open_bracket_616, 2, m_open_414).
throw(m_open_414, ioexception).
param(p_empty_617, 1, m_close_415).
param(p_nonempty_618, 2, m_close_415).
param(p_close_bracket_619, 3, m_close_415).
throw(m_close_415, ioexception).
param(p_new_top_620, 1, m_push_403).
ref(f_stack_604, q_length_50, line(json_writer_1, 354)).
assign(json_writer_1_expr47, p_new_top_620, line(json_writer_1, 359)).
ref(f_stack_604, json_writer_1_expr47, line(json_writer_1, 359)).
param(p_top_of_stack_621, 1, m_replace_top_417).
param(p_name_622, 1, m_name_418).
throw(m_name_418, ioexception).
throw(m_write_deferred_name_419, ioexception).
param(p_value_623, 1, m_value_420).
throw(m_value_420, ioexception).
param(p_value_624, 1, m_json_value_421).
throw(m_json_value_421, ioexception).
throw(m_null_value_422, ioexception).
param(p_value_625, 1, m_value_423).
throw(m_value_423, ioexception).
param(p_value_626, 1, m_value_424).
throw(m_value_424, ioexception).
param(p_value_627, 1, m_value_425).
throw(m_value_425, ioexception).
param(p_value_628, 1, m_value_426).
throw(m_value_426, ioexception).
throw(m_flush_427, ioexception).
throw(m_close_428, ioexception).
param(p_value_629, 1, m_string_429).
throw(m_string_429, ioexception).
throw(m_newline_430, ioexception).
throw(m_before_name_431, ioexception).
throw(m_before_value_432, ioexception).

%sql_date_type_adapter_1 - com.google.gson.internal.bind.SqlDateTypeAdapter
assign(f_factory_338, sql_date_type_adapter_1_expr1, line(sql_date_type_adapter_1, 39)).
method_invoc(sql_date_type_adapter_1_expr1, m__219, line(sql_date_type_adapter_1, 39)).
param(p_gson_339, 1, m_create_220).
param(p_type_token_340, 2, m_create_220).
return(sql_date_type_adapter_1_expr2, m_create_220, line(sql_date_type_adapter_1, 42)).
cond_expr(sql_date_type_adapter_1_expr3, sql_date_type_adapter_1_expr4, sql_date_type_adapter_1_literal1, line(sql_date_type_adapter_1, 42)).
method_invoc(sql_date_type_adapter_1_expr5, m_get_raw_type_112, line(sql_date_type_adapter_1, 42)).
ref(p_type_token_340, sql_date_type_adapter_1_expr5, line(sql_date_type_adapter_1, 42)).
param(p_in_341, 1, m_read_221).
throw(m_read_221, ioexception).
param(p_out_342, 1, m_write_222).
param(p_value_343, 2, m_write_222).
throw(m_write_222, ioexception).

%type_adapters_1 - com.google.gson.internal.bind.TypeAdapters
assign(f_class_350, type_adapters_1_expr1, line(type_adapters_1, 69)).
method_invoc(type_adapters_1_expr1, m__229, line(type_adapters_1, 69)).
param(p_out_351, 1, m_write_230).
param(p_value_352, 2, m_write_230).
throw(m_write_230, ioexception).
param(p_in_353, 1, m_read_231).
throw(m_read_231, ioexception).
assign(f_class_factory_354, type_adapters_1_expr2, line(type_adapters_1, 90)).
method_invoc(type_adapters_1_expr2, m_new_factory_22, line(type_adapters_1, 90)).
argument(type_adapters_1_expr3, 1, type_adapters_1_expr2).
argument(f_class_350, 2, type_adapters_1_expr2).
assign(f_bit_set_355, type_adapters_1_expr4, line(type_adapters_1, 92)).
method_invoc(type_adapters_1_expr4, m__232, line(type_adapters_1, 92)).
param(p_in_356, 1, m_read_233).
throw(m_read_233, ioexception).
param(p_out_357, 1, m_write_234).
param(p_src_358, 2, m_write_234).
throw(m_write_234, ioexception).
assign(f_bit_set_factory_359, type_adapters_1_expr5, line(type_adapters_1, 149)).
method_invoc(type_adapters_1_expr5, m_new_factory_22, line(type_adapters_1, 149)).
argument(type_adapters_1_expr6, 1, type_adapters_1_expr5).
argument(f_bit_set_355, 2, type_adapters_1_expr5).
assign(f_boolean_360, type_adapters_1_expr7, line(type_adapters_1, 151)).
method_invoc(type_adapters_1_expr7, m__235, line(type_adapters_1, 151)).
param(p_in_361, 1, m_read_236).
throw(m_read_236, ioexception).
param(p_out_362, 1, m_write_237).
param(p_value_363, 2, m_write_237).
throw(m_write_237, ioexception).
assign(f_boolean_as_string_364, type_adapters_1_expr8, line(type_adapters_1, 177)).
method_invoc(type_adapters_1_expr8, m__238, line(type_adapters_1, 177)).
param(p_in_365, 1, m_read_239).
throw(m_read_239, ioexception).
param(p_out_366, 1, m_write_240).
param(p_value_367, 2, m_write_240).
throw(m_write_240, ioexception).
assign(f_boolean_factory_368, type_adapters_1_expr9, line(type_adapters_1, 191)).
assign(f_byte_369, type_adapters_1_expr10, line(type_adapters_1, 194)).
method_invoc(type_adapters_1_expr10, m__241, line(type_adapters_1, 194)).
param(p_in_370, 1, m_read_242).
throw(m_read_242, ioexception).
param(p_out_371, 1, m_write_243).
param(p_value_372, 2, m_write_243).
throw(m_write_243, ioexception).
assign(f_byte_factory_373, type_adapters_1_expr11, line(type_adapters_1, 214)).
assign(f_short_374, type_adapters_1_expr12, line(type_adapters_1, 217)).
method_invoc(type_adapters_1_expr12, m__244, line(type_adapters_1, 217)).
param(p_in_375, 1, m_read_245).
throw(m_read_245, ioexception).
param(p_out_376, 1, m_write_246).
param(p_value_377, 2, m_write_246).
throw(m_write_246, ioexception).
assign(f_short_factory_378, type_adapters_1_expr13, line(type_adapters_1, 236)).
assign(f_integer_379, type_adapters_1_expr14, line(type_adapters_1, 239)).
method_invoc(type_adapters_1_expr14, m__247, line(type_adapters_1, 239)).
param(p_in_380, 1, m_read_248).
throw(m_read_248, ioexception).
param(p_out_381, 1, m_write_249).
param(p_value_382, 2, m_write_249).
throw(m_write_249, ioexception).
assign(f_integer_factory_383, type_adapters_1_expr15, line(type_adapters_1, 257)).
assign(f_atomic_integer_384, type_adapters_1_expr16, line(type_adapters_1, 260)).
method_invoc(type_adapters_1_expr16, m_null_safe_41, line(type_adapters_1, 260)).
ref(type_adapters_1_expr17, type_adapters_1_expr16, line(type_adapters_1, 260)).
method_invoc(type_adapters_1_expr17, m__250, line(type_adapters_1, 260)).
param(p_in_385, 1, m_read_251).
throw(m_read_251, ioexception).
param(p_out_386, 1, m_write_252).
param(p_value_387, 2, m_write_252).
throw(m_write_252, ioexception).
assign(f_atomic_integer_factory_388, type_adapters_1_expr18, line(type_adapters_1, 272)).
assign(f_atomic_boolean_389, type_adapters_1_expr19, line(type_adapters_1, 275)).
method_invoc(type_adapters_1_expr19, m_null_safe_41, line(type_adapters_1, 275)).
ref(type_adapters_1_expr20, type_adapters_1_expr19, line(type_adapters_1, 275)).
method_invoc(type_adapters_1_expr20, m__253, line(type_adapters_1, 275)).
param(p_in_390, 1, m_read_254).
throw(m_read_254, ioexception).
param(p_out_391, 1, m_write_255).
param(p_value_392, 2, m_write_255).
throw(m_write_255, ioexception).
assign(f_atomic_boolean_factory_393, type_adapters_1_expr21, line(type_adapters_1, 283)).
assign(f_atomic_integer_array_394, type_adapters_1_expr22, line(type_adapters_1, 286)).
method_invoc(type_adapters_1_expr22, m_null_safe_41, line(type_adapters_1, 286)).
ref(type_adapters_1_expr23, type_adapters_1_expr22, line(type_adapters_1, 286)).
method_invoc(type_adapters_1_expr23, m__256, line(type_adapters_1, 286)).
param(p_in_395, 1, m_read_257).
throw(m_read_257, ioexception).
param(p_out_396, 1, m_write_258).
param(p_value_397, 2, m_write_258).
throw(m_write_258, ioexception).
assign(f_atomic_integer_array_factory_398, type_adapters_1_expr24, line(type_adapters_1, 314)).
assign(f_long_399, type_adapters_1_expr25, line(type_adapters_1, 317)).
method_invoc(type_adapters_1_expr25, m__259, line(type_adapters_1, 317)).
param(p_in_400, 1, m_read_260).
throw(m_read_260, ioexception).
param(p_out_401, 1, m_write_261).
param(p_value_402, 2, m_write_261).
throw(m_write_261, ioexception).
assign(f_float_403, type_adapters_1_expr26, line(type_adapters_1, 336)).
method_invoc(type_adapters_1_expr26, m__262, line(type_adapters_1, 336)).
param(p_in_404, 1, m_read_263).
throw(m_read_263, ioexception).
param(p_out_405, 1, m_write_264).
param(p_value_406, 2, m_write_264).
throw(m_write_264, ioexception).
assign(f_double_407, type_adapters_1_expr27, line(type_adapters_1, 351)).
method_invoc(type_adapters_1_expr27, m__265, line(type_adapters_1, 351)).
param(p_in_408, 1, m_read_266).
throw(m_read_266, ioexception).
param(p_out_409, 1, m_write_267).
param(p_value_410, 2, m_write_267).
throw(m_write_267, ioexception).
assign(f_number_411, type_adapters_1_expr28, line(type_adapters_1, 366)).
method_invoc(type_adapters_1_expr28, m__268, line(type_adapters_1, 366)).
param(p_in_412, 1, m_read_269).
throw(m_read_269, ioexception).
param(p_out_413, 1, m_write_270).
param(p_value_414, 2, m_write_270).
throw(m_write_270, ioexception).
assign(f_number_factory_415, type_adapters_1_expr29, line(type_adapters_1, 386)).
method_invoc(type_adapters_1_expr29, m_new_factory_22, line(type_adapters_1, 386)).
argument(type_adapters_1_expr30, 1, type_adapters_1_expr29).
argument(f_number_411, 2, type_adapters_1_expr29).
assign(f_character_416, type_adapters_1_expr31, line(type_adapters_1, 388)).
method_invoc(type_adapters_1_expr31, m__271, line(type_adapters_1, 388)).
param(p_in_417, 1, m_read_272).
throw(m_read_272, ioexception).
param(p_out_418, 1, m_write_273).
param(p_value_419, 2, m_write_273).
throw(m_write_273, ioexception).
assign(f_character_factory_420, type_adapters_1_expr32, line(type_adapters_1, 407)).
assign(f_string_421, type_adapters_1_expr33, line(type_adapters_1, 410)).
method_invoc(type_adapters_1_expr33, m__274, line(type_adapters_1, 410)).
param(p_in_422, 1, m_read_275).
throw(m_read_275, ioexception).
param(p_out_423, 1, m_write_276).
param(p_value_424, 2, m_write_276).
throw(m_write_276, ioexception).
assign(f_big_decimal_425, type_adapters_1_expr34, line(type_adapters_1, 430)).
method_invoc(type_adapters_1_expr34, m__277, line(type_adapters_1, 430)).
param(p_in_426, 1, m_read_278).
throw(m_read_278, ioexception).
param(p_out_427, 1, m_write_279).
param(p_value_428, 2, m_write_279).
throw(m_write_279, ioexception).
assign(f_big_integer_429, type_adapters_1_expr35, line(type_adapters_1, 448)).
method_invoc(type_adapters_1_expr35, m__280, line(type_adapters_1, 448)).
param(p_in_430, 1, m_read_281).
throw(m_read_281, ioexception).
param(p_out_431, 1, m_write_282).
param(p_value_432, 2, m_write_282).
throw(m_write_282, ioexception).
assign(f_string_factory_433, type_adapters_1_expr36, line(type_adapters_1, 466)).
method_invoc(type_adapters_1_expr36, m_new_factory_22, line(type_adapters_1, 466)).
argument(type_adapters_1_expr37, 1, type_adapters_1_expr36).
argument(f_string_421, 2, type_adapters_1_expr36).
assign(f_string_builder_434, type_adapters_1_expr38, line(type_adapters_1, 468)).
method_invoc(type_adapters_1_expr38, m__283, line(type_adapters_1, 468)).
param(p_in_435, 1, m_read_284).
throw(m_read_284, ioexception).
param(p_out_436, 1, m_write_285).
param(p_value_437, 2, m_write_285).
throw(m_write_285, ioexception).
assign(f_string_builder_factory_438, type_adapters_1_expr39, line(type_adapters_1, 483)).
assign(f_string_buffer_439, type_adapters_1_expr40, line(type_adapters_1, 486)).
method_invoc(type_adapters_1_expr40, m__286, line(type_adapters_1, 486)).
param(p_in_440, 1, m_read_287).
throw(m_read_287, ioexception).
param(p_out_441, 1, m_write_288).
param(p_value_442, 2, m_write_288).
throw(m_write_288, ioexception).
assign(f_string_buffer_factory_443, type_adapters_1_expr41, line(type_adapters_1, 501)).
assign(f_url_444, type_adapters_1_expr42, line(type_adapters_1, 504)).
method_invoc(type_adapters_1_expr42, m__289, line(type_adapters_1, 504)).
param(p_in_445, 1, m_read_290).
throw(m_read_290, ioexception).
param(p_out_446, 1, m_write_291).
param(p_value_447, 2, m_write_291).
throw(m_write_291, ioexception).
assign(f_url_factory_448, type_adapters_1_expr43, line(type_adapters_1, 520)).
method_invoc(type_adapters_1_expr43, m_new_factory_22, line(type_adapters_1, 520)).
argument(type_adapters_1_expr44, 1, type_adapters_1_expr43).
argument(f_url_444, 2, type_adapters_1_expr43).
assign(f_uri_449, type_adapters_1_expr45, line(type_adapters_1, 522)).
method_invoc(type_adapters_1_expr45, m__292, line(type_adapters_1, 522)).
param(p_in_450, 1, m_read_293).
throw(m_read_293, ioexception).
param(p_out_451, 1, m_write_294).
param(p_value_452, 2, m_write_294).
throw(m_write_294, ioexception).
assign(f_uri_factory_453, type_adapters_1_expr46, line(type_adapters_1, 542)).
method_invoc(type_adapters_1_expr46, m_new_factory_22, line(type_adapters_1, 542)).
argument(type_adapters_1_expr47, 1, type_adapters_1_expr46).
argument(f_uri_449, 2, type_adapters_1_expr46).
assign(f_inet_address_454, type_adapters_1_expr48, line(type_adapters_1, 544)).
method_invoc(type_adapters_1_expr48, m__295, line(type_adapters_1, 544)).
param(p_in_455, 1, m_read_296).
throw(m_read_296, ioexception).
param(p_out_456, 1, m_write_297).
param(p_value_457, 2, m_write_297).
throw(m_write_297, ioexception).
assign(f_inet_address_factory_458, type_adapters_1_expr49, line(type_adapters_1, 560)).
assign(f_uuid_459, type_adapters_1_expr50, line(type_adapters_1, 563)).
method_invoc(type_adapters_1_expr50, m__298, line(type_adapters_1, 563)).
param(p_in_460, 1, m_read_299).
throw(m_read_299, ioexception).
param(p_out_461, 1, m_write_300).
param(p_value_462, 2, m_write_300).
throw(m_write_300, ioexception).
assign(f_uuid_factory_463, type_adapters_1_expr51, line(type_adapters_1, 578)).
method_invoc(type_adapters_1_expr51, m_new_factory_22, line(type_adapters_1, 578)).
argument(type_adapters_1_expr52, 1, type_adapters_1_expr51).
argument(f_uuid_459, 2, type_adapters_1_expr51).
assign(f_currency_464, type_adapters_1_expr53, line(type_adapters_1, 580)).
method_invoc(type_adapters_1_expr53, m_null_safe_41, line(type_adapters_1, 580)).
ref(type_adapters_1_expr54, type_adapters_1_expr53, line(type_adapters_1, 580)).
method_invoc(type_adapters_1_expr54, m__301, line(type_adapters_1, 580)).
param(p_in_465, 1, m_read_302).
throw(m_read_302, ioexception).
param(p_out_466, 1, m_write_303).
param(p_value_467, 2, m_write_303).
throw(m_write_303, ioexception).
assign(f_currency_factory_468, type_adapters_1_expr55, line(type_adapters_1, 590)).
method_invoc(type_adapters_1_expr55, m_new_factory_22, line(type_adapters_1, 590)).
argument(type_adapters_1_expr56, 1, type_adapters_1_expr55).
argument(f_currency_464, 2, type_adapters_1_expr55).
assign(f_timestamp_factory_469, type_adapters_1_expr57, line(type_adapters_1, 592)).
method_invoc(type_adapters_1_expr57, m__304, line(type_adapters_1, 592)).
param(p_gson_470, 1, m_create_305).
param(p_type_token_471, 2, m_create_305).
method_invoc(type_adapters_1_expr59, m_get_raw_type_112, line(type_adapters_1, 595)).
ref(p_type_token_471, type_adapters_1_expr59, line(type_adapters_1, 595)).
return(type_adapters_1_literal1, m_create_305, line(type_adapters_1, 596)).
param(p_in_472, 1, m_read_306).
throw(m_read_306, ioexception).
param(p_out_473, 1, m_write_307).
param(p_value_474, 2, m_write_307).
throw(m_write_307, ioexception).
assign(f_calendar_475, type_adapters_1_expr61, line(type_adapters_1, 613)).
method_invoc(type_adapters_1_expr61, m__308, line(type_adapters_1, 613)).
param(p_in_476, 1, m_read_309).
throw(m_read_309, ioexception).
param(p_out_477, 1, m_write_310).
param(p_value_478, 2, m_write_310).
throw(m_write_310, ioexception).
assign(f_calendar_factory_479, type_adapters_1_expr62, line(type_adapters_1, 678)).
assign(f_locale_480, type_adapters_1_expr63, line(type_adapters_1, 681)).
method_invoc(type_adapters_1_expr63, m__311, line(type_adapters_1, 681)).
param(p_in_481, 1, m_read_312).
throw(m_read_312, ioexception).
param(p_out_482, 1, m_write_313).
param(p_value_483, 2, m_write_313).
throw(m_write_313, ioexception).
assign(f_locale_factory_484, type_adapters_1_expr64, line(type_adapters_1, 716)).
method_invoc(type_adapters_1_expr64, m_new_factory_22, line(type_adapters_1, 716)).
argument(type_adapters_1_expr65, 1, type_adapters_1_expr64).
argument(f_locale_480, 2, type_adapters_1_expr64).
assign(f_json_element_485, type_adapters_1_expr66, line(type_adapters_1, 718)).
method_invoc(type_adapters_1_expr66, m__314, line(type_adapters_1, 718)).
param(p_in_486, 1, m_read_315).
throw(m_read_315, ioexception).
param(p_out_487, 1, m_write_316).
param(p_value_488, 2, m_write_316).
throw(m_write_316, ioexception).
assign(f_json_element_factory_489, type_adapters_1_expr67, line(type_adapters_1, 790)).
param(p_class_of_t_490, 1, m_enum_type_adapter_317).
param(p_in_491, 1, m_read_318).
throw(m_read_318, ioexception).
param(p_out_492, 1, m_write_319).
param(p_value_493, 2, m_write_319).
throw(m_write_319, ioexception).
assign(f_enum_factory_494, type_adapters_1_expr68, line(type_adapters_1, 828)).
method_invoc(type_adapters_1_expr68, m__320, line(type_adapters_1, 828)).
param(p_gson_495, 1, m_create_321).
param(p_type_token_496, 2, m_create_321).
param(p_type_497, 1, m_new_factory_322).
param(p_type_adapter_498, 2, m_new_factory_322).
param(p_gson_499, 1, m_create_323).
param(p_type_token_500, 2, m_create_323).
param(p_type_501, 1, m_new_factory_22).
param(p_type_adapter_502, 2, m_new_factory_22).
return(type_adapters_1_expr69, m_new_factory_22, line(type_adapters_1, 854)).
method_invoc(type_adapters_1_expr69, m__324, line(type_adapters_1, 854)).
param(p_gson_503, 1, m_create_325).
param(p_type_token_504, 2, m_create_325).
return(type_adapters_1_expr70, m_create_325, line(type_adapters_1, 857)).
cond_expr(type_adapters_1_expr71, type_adapters_1_expr72, type_adapters_1_literal2, line(type_adapters_1, 857)).
method_invoc(type_adapters_1_expr73, m_get_raw_type_112, line(type_adapters_1, 857)).
ref(p_type_token_504, type_adapters_1_expr73, line(type_adapters_1, 857)).
assign(type_adapters_1_expr72, p_type_adapter_502, line(type_adapters_1, 857)).
param(p_unboxed_505, 1, m_new_factory_21).
param(p_boxed_506, 2, m_new_factory_21).
param(p_type_adapter_507, 3, m_new_factory_21).
return(type_adapters_1_expr74, m_new_factory_21, line(type_adapters_1, 867)).
method_invoc(type_adapters_1_expr74, m__327, line(type_adapters_1, 867)).
param(p_gson_508, 1, m_create_328).
param(p_type_token_509, 2, m_create_328).
assign(v_raw_type_510, type_adapters_1_expr75, line(type_adapters_1, 870)).
method_invoc(type_adapters_1_expr75, m_get_raw_type_112, line(type_adapters_1, 870)).
ref(p_type_token_509, type_adapters_1_expr75, line(type_adapters_1, 870)).
return(type_adapters_1_expr76, m_create_328, line(type_adapters_1, 871)).
cond_expr(type_adapters_1_expr77, type_adapters_1_expr78, type_adapters_1_literal3, line(type_adapters_1, 871)).
assign(type_adapters_1_expr77, type_adapters_1_expr79, line(type_adapters_1, 871)).
assign(type_adapters_1_expr78, p_type_adapter_507, line(type_adapters_1, 871)).
param(p_base_511, 1, m_new_factory_for_multiple_types_330).
param(p_sub_512, 2, m_new_factory_for_multiple_types_330).
param(p_type_adapter_513, 3, m_new_factory_for_multiple_types_330).
return(type_adapters_1_expr82, m_new_factory_for_multiple_types_330, line(type_adapters_1, 882)).
method_invoc(type_adapters_1_expr82, m__331, line(type_adapters_1, 882)).
param(p_gson_514, 1, m_create_332).
param(p_type_token_515, 2, m_create_332).
assign(v_raw_type_516, type_adapters_1_expr83, line(type_adapters_1, 885)).
method_invoc(type_adapters_1_expr83, m_get_raw_type_112, line(type_adapters_1, 885)).
ref(p_type_token_515, type_adapters_1_expr83, line(type_adapters_1, 885)).
return(type_adapters_1_expr84, m_create_332, line(type_adapters_1, 886)).
cond_expr(type_adapters_1_expr85, type_adapters_1_expr86, type_adapters_1_literal4, line(type_adapters_1, 886)).
assign(type_adapters_1_expr85, type_adapters_1_expr87, line(type_adapters_1, 886)).
assign(type_adapters_1_expr86, p_type_adapter_513, line(type_adapters_1, 886)).
param(p_clazz_517, 1, m_new_type_hierarchy_factory_334).
param(p_type_adapter_518, 2, m_new_type_hierarchy_factory_334).
return(type_adapters_1_expr90, m_new_type_hierarchy_factory_334, line(type_adapters_1, 901)).
method_invoc(type_adapters_1_expr90, m__335, line(type_adapters_1, 901)).
param(p_gson_519, 1, m_create_336).
param(p_type_token_520, 2, m_create_336).
assign(v_requested_type_521, type_adapters_1_expr91, line(type_adapters_1, 904)).
method_invoc(type_adapters_1_expr91, m_get_raw_type_112, line(type_adapters_1, 904)).
ref(p_type_token_520, type_adapters_1_expr91, line(type_adapters_1, 904)).
method_invoc(type_adapters_1_expr93, m_is_assignable_from_152, line(type_adapters_1, 905)).
argument(v_requested_type_521, 1, type_adapters_1_expr93).
ref(p_clazz_517, type_adapters_1_expr93, line(type_adapters_1, 905)).
return(type_adapters_1_literal5, m_create_336, line(type_adapters_1, 906)).
param(p_out_522, 1, m_write_337).
param(p_value_523, 2, m_write_337).
throw(m_write_337, ioexception).
param(p_in_524, 1, m_read_338).
throw(m_read_338, ioexception).

%time_type_adapter_1 - com.google.gson.internal.bind.TimeTypeAdapter
assign(f_factory_344, time_type_adapter_1_expr1, line(time_type_adapter_1, 41)).
method_invoc(time_type_adapter_1_expr1, m__223, line(time_type_adapter_1, 41)).
param(p_gson_345, 1, m_create_224).
param(p_type_token_346, 2, m_create_224).
return(time_type_adapter_1_expr2, m_create_224, line(time_type_adapter_1, 44)).
cond_expr(time_type_adapter_1_expr3, time_type_adapter_1_expr4, time_type_adapter_1_literal1, line(time_type_adapter_1, 44)).
method_invoc(time_type_adapter_1_expr5, m_get_raw_type_112, line(time_type_adapter_1, 44)).
ref(p_type_token_346, time_type_adapter_1_expr5, line(time_type_adapter_1, 44)).
assign(time_type_adapter_1_expr4, time_type_adapter_1_expr7, line(time_type_adapter_1, 44)).
method_invoc(time_type_adapter_1_expr7, m_time_type_adapter_225, line(time_type_adapter_1, 44)).
param(p_in_347, 1, m_read_226).
throw(m_read_226, ioexception).
param(p_out_348, 1, m_write_227).
param(p_value_349, 2, m_write_227).
throw(m_write_227, ioexception).

%map_type_adapter_factory_1 - com.google.gson.internal.bind.MapTypeAdapterFactory
param(p_constructor_constructor_265, 1, m_map_type_adapter_factory_26).
param(p_complex_map_key_serialization_266, 2, m_map_type_adapter_factory_26).
assign(f_constructor_constructor_267, p_constructor_constructor_265, line(map_type_adapter_factory_1, 111)).
assign(f_complex_map_key_serialization_268, p_complex_map_key_serialization_266, line(map_type_adapter_factory_1, 112)).
param(p_gson_269, 1, m_create_190).
param(p_type_token_270, 2, m_create_190).
assign(v_type_271, map_type_adapter_factory_1_expr7, line(map_type_adapter_factory_1, 116)).
method_invoc(map_type_adapter_factory_1_expr7, m_get_type_111, line(map_type_adapter_factory_1, 116)).
ref(p_type_token_270, map_type_adapter_factory_1_expr7, line(map_type_adapter_factory_1, 116)).
assign(v_raw_type_272, map_type_adapter_factory_1_expr8, line(map_type_adapter_factory_1, 118)).
method_invoc(map_type_adapter_factory_1_expr8, m_get_raw_type_112, line(map_type_adapter_factory_1, 118)).
ref(p_type_token_270, map_type_adapter_factory_1_expr8, line(map_type_adapter_factory_1, 118)).
method_invoc(map_type_adapter_factory_1_expr10, m_is_assignable_from_152, line(map_type_adapter_factory_1, 119)).
argument(v_raw_type_272, 1, map_type_adapter_factory_1_expr10).
ref(map_type_adapter_factory_1_expr11, map_type_adapter_factory_1_expr10, line(map_type_adapter_factory_1, 119)).
return(map_type_adapter_factory_1_literal1, m_create_190, line(map_type_adapter_factory_1, 120)).
param(p_context_273, 1, m_get_key_adapter_191).
param(p_key_type_274, 2, m_get_key_adapter_191).
param(p_context_275, 1, m_adapter_192).
param(p_key_type_276, 2, m_adapter_192).
param(p_key_type_adapter_277, 3, m_adapter_192).
param(p_value_type_278, 4, m_adapter_192).
param(p_value_type_adapter_279, 5, m_adapter_192).
param(p_constructor_280, 6, m_adapter_192).
param(p_in_281, 1, m_read_193).
throw(m_read_193, ioexception).
param(p_out_282, 1, m_write_194).
param(p_map_283, 2, m_write_194).
throw(m_write_194, ioexception).
param(p_key_element_284, 1, m_key_to_string_195).

%field_naming_policy_1 - com.google.gson.FieldNamingPolicy
param(p_f_2, 1, m_translate_name_1).
param(p_f_4, 1, m_translate_name_2).
param(p_f_6, 1, m_translate_name_3).
param(p_f_8, 1, m_translate_name_4).
param(p_f_10, 1, m_translate_name_5).
param(p_name_11, 1, m_separate_camel_case_6).
param(p_separator_12, 2, m_separate_camel_case_6).
param(p_name_13, 1, m_upper_case_first_letter_7).
param(p_first_character_14, 1, m_modify_string_8).
param(p_src_string_15, 2, m_modify_string_8).
param(p_index_of_substring_16, 3, m_modify_string_8).

%type_adapter_1 - com.google.gson.TypeAdapter
param(p_out_150, 1, m_write_99).
param(p_value_151, 2, m_write_99).
throw(m_write_99, ioexception).
param(p_out_152, 1, m_to_json_100).
param(p_value_153, 2, m_to_json_100).
throw(m_to_json_100, ioexception).
return(type_adapter_1_expr1, m_null_safe_41, line(type_adapter_1, 186)).
method_invoc(type_adapter_1_expr1, m__101, line(type_adapter_1, 186)).
param(p_out_154, 1, m_write_102).
param(p_value_155, 2, m_write_102).
throw(m_write_102, ioexception).
param(p_reader_156, 1, m_read_103).
throw(m_read_103, ioexception).
param(p_value_157, 1, m_to_json_104).
param(p_value_158, 1, m_to_json_tree_105).
param(p_in_159, 1, m_read_106).
throw(m_read_106, ioexception).
param(p_in_160, 1, m_from_json_107).
throw(m_from_json_107, ioexception).
param(p_json_161, 1, m_from_json_108).
throw(m_from_json_108, ioexception).
param(p_json_tree_162, 1, m_from_json_tree_109).

%collection_type_adapter_factory_1 - com.google.gson.internal.bind.CollectionTypeAdapterFactory
param(p_constructor_constructor_233, 1, m_collection_type_adapter_factory_25).
assign(f_constructor_constructor_234, p_constructor_constructor_233, line(collection_type_adapter_factory_1, 40)).
param(p_gson_235, 1, m_create_175).
param(p_type_token_236, 2, m_create_175).
assign(v_type_237, collection_type_adapter_factory_1_expr4, line(collection_type_adapter_factory_1, 45)).
method_invoc(collection_type_adapter_factory_1_expr4, m_get_type_111, line(collection_type_adapter_factory_1, 45)).
ref(p_type_token_236, collection_type_adapter_factory_1_expr4, line(collection_type_adapter_factory_1, 45)).
assign(v_raw_type_238, collection_type_adapter_factory_1_expr5, line(collection_type_adapter_factory_1, 47)).
method_invoc(collection_type_adapter_factory_1_expr5, m_get_raw_type_112, line(collection_type_adapter_factory_1, 47)).
ref(p_type_token_236, collection_type_adapter_factory_1_expr5, line(collection_type_adapter_factory_1, 47)).
method_invoc(collection_type_adapter_factory_1_expr7, m_is_assignable_from_152, line(collection_type_adapter_factory_1, 48)).
argument(v_raw_type_238, 1, collection_type_adapter_factory_1_expr7).
ref(collection_type_adapter_factory_1_expr8, collection_type_adapter_factory_1_expr7, line(collection_type_adapter_factory_1, 48)).
return(collection_type_adapter_factory_1_literal1, m_create_175, line(collection_type_adapter_factory_1, 49)).
param(p_context_239, 1, m_adapter_176).
param(p_element_type_240, 2, m_adapter_176).
param(p_element_type_adapter_241, 3, m_adapter_176).
param(p_constructor_242, 4, m_adapter_176).
param(p_in_243, 1, m_read_177).
throw(m_read_177, ioexception).
param(p_out_244, 1, m_write_178).
param(p_collection_245, 2, m_write_178).
throw(m_write_178, ioexception).

%excluder_1 - com.google.gson.internal.Excluder
assign(f_default_33, excluder_1_expr1, line(excluder_1, 52)).
method_invoc(excluder_1_expr1, m_excluder_136, line(excluder_1, 52)).
assign(f_version_178, f_ignore_versions_179, line(excluder_1, 54)).
assign(f_modifiers_180, excluder_1_expr2, line(excluder_1, 55)).
ref(t_modifier_17, q_transient_36, line(excluder_1, 55)).
ref(t_modifier_17, q_static_37, line(excluder_1, 55)).
assign(f_serialize_inner_classes_181, excluder_1_literal1, line(excluder_1, 56)).
assign(f_serialization_strategies_182, excluder_1_expr3, line(excluder_1, 58)).
method_invoc(excluder_1_expr3, m_empty_list_137, line(excluder_1, 58)).
ref(t_collections_9, excluder_1_expr3, line(excluder_1, 58)).
assign(f_deserialization_strategies_183, excluder_1_expr4, line(excluder_1, 59)).
method_invoc(excluder_1_expr4, m_empty_list_137, line(excluder_1, 59)).
ref(t_collections_9, excluder_1_expr4, line(excluder_1, 59)).
param(p_ignore_versions_after_184, 1, m_with_version_139).
param(p_modifiers_185, 1, m_with_modifiers_140).
param(p_exclusion_strategy_186, 1, m_with_exclusion_strategy_143).
param(p_serialization_187, 2, m_with_exclusion_strategy_143).
param(p_deserialization_188, 3, m_with_exclusion_strategy_143).
param(p_gson_189, 1, m_create_144).
param(p_type_190, 2, m_create_144).
assign(v_raw_type_191, excluder_1_expr5, line(excluder_1, 112)).
method_invoc(excluder_1_expr5, m_get_raw_type_112, line(excluder_1, 112)).
ref(p_type_190, excluder_1_expr5, line(excluder_1, 112)).
assign(v_skip_serialize_192, excluder_1_expr6, line(excluder_1, 113)).
method_invoc(excluder_1_expr6, m_exclude_class_145, line(excluder_1, 113)).
argument(v_raw_type_191, 1, excluder_1_expr6).
argument(excluder_1_literal2, 2, excluder_1_expr6).
assign(v_skip_deserialize_193, excluder_1_expr7, line(excluder_1, 114)).
method_invoc(excluder_1_expr7, m_exclude_class_145, line(excluder_1, 114)).
argument(v_raw_type_191, 1, excluder_1_expr7).
argument(excluder_1_literal3, 2, excluder_1_expr7).
return(excluder_1_literal4, m_create_144, line(excluder_1, 117)).
param(p_in_194, 1, m_read_146).
throw(m_read_146, ioexception).
param(p_out_195, 1, m_write_147).
param(p_value_196, 2, m_write_147).
throw(m_write_147, ioexception).
param(p_field_197, 1, m_exclude_field_149).
param(p_serialize_198, 2, m_exclude_field_149).
param(p_clazz_199, 1, m_exclude_class_145).
param(p_serialize_200, 2, m_exclude_class_145).
ref(t_excluder_2, q_ignore_versions_38, line(excluder_1, 192)).
method_invoc(excluder_1_expr15, m_is_inner_class_150, line(excluder_1, 197)).
argument(p_clazz_199, 1, excluder_1_expr15).
method_invoc(excluder_1_expr16, m_is_anonymous_or_local_151, line(excluder_1, 201)).
argument(p_clazz_199, 1, excluder_1_expr16).
assign(v_list_201, excluder_1_expr17, line(excluder_1, 205)).
cond_expr(p_serialize_200, f_serialization_strategies_182, f_deserialization_strategies_183, line(excluder_1, 205)).
ref(v_list_201, excluder_1_stmt10, line(excluder_1, 206)).
return(excluder_1_literal5, m_exclude_class_145, line(excluder_1, 212)).
param(p_clazz_203, 1, m_is_anonymous_or_local_151).
return(excluder_1_expr18, m_is_anonymous_or_local_151, line(excluder_1, 216)).
method_invoc(excluder_1_expr20, m_is_assignable_from_152, line(excluder_1, 216)).
argument(p_clazz_203, 1, excluder_1_expr20).
ref(excluder_1_expr21, excluder_1_expr20, line(excluder_1, 216)).
param(p_clazz_204, 1, m_is_inner_class_150).
param(p_clazz_205, 1, m_is_static_153).
param(p_since_206, 1, m_is_valid_version_154).
param(p_until_207, 2, m_is_valid_version_154).
param(p_annotation_208, 1, m_is_valid_since_155).
param(p_annotation_209, 1, m_is_valid_until_156).

%long_serialization_policy_1 - com.google.gson.LongSerializationPolicy
param(p_value_146, 1, m_serialize_96).
param(p_value_148, 1, m_serialize_97).
param(p_value_149, 1, m_serialize_98).

%json_adapter_annotation_type_adapter_factory_1 - com.google.gson.internal.bind.JsonAdapterAnnotationTypeAdapterFactory
param(p_constructor_constructor_253, 1, m_json_adapter_annotation_type_adapter_factory_27).
assign(f_constructor_constructor_254, p_constructor_constructor_253, line(json_adapter_annotation_type_adapter_factory_1, 37)).
param(p_gson_255, 1, m_create_185).
param(p_target_type_256, 2, m_create_185).
return(json_adapter_annotation_type_adapter_factory_1_expr4, m_create_185, line(json_adapter_annotation_type_adapter_factory_1, 47)).
assign(json_adapter_annotation_type_adapter_factory_1_expr4, json_adapter_annotation_type_adapter_factory_1_expr5, line(json_adapter_annotation_type_adapter_factory_1, 47)).
method_invoc(json_adapter_annotation_type_adapter_factory_1_expr5, m_get_type_adapter_186, line(json_adapter_annotation_type_adapter_factory_1, 47)).
throw(json_adapter_annotation_type_adapter_factory_1_expr5, null_pointer_exception, line(json_adapter_annotation_type_adapter_factory_1, 47)).
argument(f_constructor_constructor_254, 1, json_adapter_annotation_type_adapter_factory_1_expr5).
argument(p_gson_255, 2, json_adapter_annotation_type_adapter_factory_1_expr5).
argument(p_target_type_256, 3, json_adapter_annotation_type_adapter_factory_1_expr5).
argument(v_annotation_257, 4, json_adapter_annotation_type_adapter_factory_1_expr5).
param(p_constructor_constructor_258, 1, m_get_type_adapter_186).
param(p_gson_259, 2, m_get_type_adapter_186).
param(p_field_type_260, 3, m_get_type_adapter_186).
param(p_annotation_261, 4, m_get_type_adapter_186).
assign(v_value_262, json_adapter_annotation_type_adapter_factory_1_expr6, line(json_adapter_annotation_type_adapter_factory_1, 53)).
method_invoc(json_adapter_annotation_type_adapter_factory_1_expr6, m_value_187, line(json_adapter_annotation_type_adapter_factory_1, 53)).
ref(p_annotation_261, json_adapter_annotation_type_adapter_factory_1_expr6, line(json_adapter_annotation_type_adapter_factory_1, 53)).
method_invoc(json_adapter_annotation_type_adapter_factory_1_expr7, m_is_assignable_from_152, line(json_adapter_annotation_type_adapter_factory_1, 55)).
argument(v_value_262, 1, json_adapter_annotation_type_adapter_factory_1_expr7).
ref(json_adapter_annotation_type_adapter_factory_1_expr8, json_adapter_annotation_type_adapter_factory_1_expr7, line(json_adapter_annotation_type_adapter_factory_1, 55)).
method_invoc(json_adapter_annotation_type_adapter_factory_1_expr9, m_is_assignable_from_152, line(json_adapter_annotation_type_adapter_factory_1, 58)).
argument(v_value_262, 1, json_adapter_annotation_type_adapter_factory_1_expr9).
ref(json_adapter_annotation_type_adapter_factory_1_expr10, json_adapter_annotation_type_adapter_factory_1_expr9, line(json_adapter_annotation_type_adapter_factory_1, 58)).
assign(v_type_adapter_factory_263, json_adapter_annotation_type_adapter_factory_1_expr11, line(json_adapter_annotation_type_adapter_factory_1, 59)).
assign(json_adapter_annotation_type_adapter_factory_1_expr11, v_value_262, line(json_adapter_annotation_type_adapter_factory_1, 59)).
assign(v_type_adapter_264, json_adapter_annotation_type_adapter_factory_1_expr13, line(json_adapter_annotation_type_adapter_factory_1, 60)).
method_invoc(json_adapter_annotation_type_adapter_factory_1_expr13, m_create_55, line(json_adapter_annotation_type_adapter_factory_1, 60)).
argument(p_gson_259, 1, json_adapter_annotation_type_adapter_factory_1_expr13).
argument(p_field_type_260, 2, json_adapter_annotation_type_adapter_factory_1_expr13).
ref(json_adapter_annotation_type_adapter_factory_1_expr14, json_adapter_annotation_type_adapter_factory_1_expr13, line(json_adapter_annotation_type_adapter_factory_1, 60)).
method_invoc(json_adapter_annotation_type_adapter_factory_1_expr14, m_construct_188, line(json_adapter_annotation_type_adapter_factory_1, 60)).
ref(json_adapter_annotation_type_adapter_factory_1_expr15, json_adapter_annotation_type_adapter_factory_1_expr14, line(json_adapter_annotation_type_adapter_factory_1, 60)).
method_invoc(json_adapter_annotation_type_adapter_factory_1_expr15, m_get_110, line(json_adapter_annotation_type_adapter_factory_1, 60)).
argument(json_adapter_annotation_type_adapter_factory_1_expr16, 1, json_adapter_annotation_type_adapter_factory_1_expr15).
ref(p_constructor_constructor_258, json_adapter_annotation_type_adapter_factory_1_expr15, line(json_adapter_annotation_type_adapter_factory_1, 60)).
method_invoc(json_adapter_annotation_type_adapter_factory_1_expr16, m_get_189, line(json_adapter_annotation_type_adapter_factory_1, 60)).
argument(v_type_adapter_factory_263, 1, json_adapter_annotation_type_adapter_factory_1_expr16).
ref(t_type_token_12, json_adapter_annotation_type_adapter_factory_1_expr16, line(json_adapter_annotation_type_adapter_factory_1, 60)).
assign(v_type_adapter_264, json_adapter_annotation_type_adapter_factory_1_expr18, line(json_adapter_annotation_type_adapter_factory_1, 67)).
method_invoc(json_adapter_annotation_type_adapter_factory_1_expr18, m_null_safe_41, line(json_adapter_annotation_type_adapter_factory_1, 67)).
ref(v_type_adapter_264, json_adapter_annotation_type_adapter_factory_1_expr18, line(json_adapter_annotation_type_adapter_factory_1, 67)).

%json_reader_1 - com.google.gson.stream.JsonReader
assign(f_non_execute_prefix_555, json_reader_1_expr1, line(json_reader_1, 192)).
method_invoc(json_reader_1_expr1, m_to_char_array_362, line(json_reader_1, 192)).
ref(json_reader_1_literal1, json_reader_1_expr1, line(json_reader_1, 192)).
assign(f_lenient_556, json_reader_1_literal2, line(json_reader_1, 230)).
assign(f_buffer_557, json_reader_1_expr2, line(json_reader_1, 238)).
assign(f_pos_558, json_reader_1_literal4, line(json_reader_1, 239)).
assign(f_limit_559, json_reader_1_literal5, line(json_reader_1, 240)).
assign(f_line_number_560, json_reader_1_literal6, line(json_reader_1, 242)).
assign(f_line_start_561, json_reader_1_literal7, line(json_reader_1, 243)).
assign(f_peeked_562, f_peeked_none_563, line(json_reader_1, 245)).
assign(f_stack_564, json_reader_1_expr3, line(json_reader_1, 269)).
assign(f_stack_size_565, json_reader_1_literal9, line(json_reader_1, 270)).
assign(json_reader_1_expr5, q_empty_document_39, line(json_reader_1, 272)).
ref(f_stack_564, json_reader_1_expr5, line(json_reader_1, 272)).
ref(t_json_scope_23, q_empty_document_39, line(json_reader_1, 272)).
assign(f_path_names_566, json_reader_1_expr7, line(json_reader_1, 283)).
assign(f_path_indices_567, json_reader_1_expr8, line(json_reader_1, 284)).
param(p_in_568, 1, m_json_reader_78).
assign(f_in_569, p_in_568, line(json_reader_1, 293)).
param(p_lenient_570, 1, m_set_lenient_79).
assign(f_lenient_556, p_lenient_570, line(json_reader_1, 326)).
return(f_lenient_556, m_is_lenient_88, line(json_reader_1, 333)).
throw(m_begin_array_363, ioexception).
throw(m_end_array_364, ioexception).
throw(m_begin_object_365, ioexception).
throw(m_end_object_366, ioexception).
throw(m_has_next_367, ioexception).
throw(m_peek_89, ioexception).
assign(v_p_571, f_peeked_562, line(json_reader_1, 427)).
assign(v_p_571, json_reader_1_expr18, line(json_reader_1, 429)).
method_invoc(json_reader_1_expr18, m_do_peek_368, line(json_reader_1, 429)).
throw(json_reader_1_expr18, ioexception, line(json_reader_1, 429)).
return(q_begin_object_40, m_peek_89, line(json_reader_1, 434)).
ref(t_json_token_24, q_begin_object_40, line(json_reader_1, 434)).
throw(m_do_peek_368, ioexception).
assign(v_peek_stack_572, json_reader_1_expr19, line(json_reader_1, 466)).
ref(f_stack_564, json_reader_1_expr19, line(json_reader_1, 466)).
ref(t_json_scope_23, q_empty_array_41, line(json_reader_1, 467)).
ref(t_json_scope_23, q_nonempty_array_42, line(json_reader_1, 469)).
ref(t_json_scope_23, q_empty_object_43, line(json_reader_1, 482)).
ref(t_json_scope_23, q_nonempty_object_44, line(json_reader_1, 482)).
ref(t_json_scope_23, q_dangling_name_45, line(json_reader_1, 520)).
ref(t_json_scope_23, q_empty_document_46, line(json_reader_1, 536)).
method_invoc(json_reader_1_expr28, m_consume_non_execute_prefix_369, line(json_reader_1, 538)).
throw(json_reader_1_expr28, ioexception, line(json_reader_1, 538)).
assign(json_reader_1_expr30, q_nonempty_document_46, line(json_reader_1, 540)).
ref(f_stack_564, json_reader_1_expr30, line(json_reader_1, 540)).
ref(t_json_scope_23, q_nonempty_document_46, line(json_reader_1, 540)).
assign(v_c_573, json_reader_1_expr32, line(json_reader_1, 553)).
method_invoc(json_reader_1_expr32, m_next_non_whitespace_370, line(json_reader_1, 553)).
throw(json_reader_1_expr32, ioexception, line(json_reader_1, 553)).
argument(json_reader_1_literal15, 1, json_reader_1_expr32).
return(json_reader_1_expr33, m_do_peek_368, line(json_reader_1, 578)).
assign(f_peeked_562, f_peeked_begin_object_574, line(json_reader_1, 578)).
throw(m_peek_keyword_371, ioexception).
throw(m_peek_number_372, ioexception).
param(p_c_575, 1, m_is_literal_373).
throw(m_is_literal_373, ioexception).
throw(m_next_name_374, ioexception).
throw(m_next_string_375, ioexception).
throw(m_next_boolean_376, ioexception).
throw(m_next_null_377, ioexception).
throw(m_next_double_378, ioexception).
throw(m_next_long_379, ioexception).
param(p_quote_576, 1, m_next_quoted_value_380).
throw(m_next_quoted_value_380, ioexception).
throw(m_next_unquoted_value_381, ioexception).
param(p_quote_577, 1, m_skip_quoted_value_382).
throw(m_skip_quoted_value_382, ioexception).
throw(m_skip_unquoted_value_383, ioexception).
throw(m_next_int_384, ioexception).
throw(m_close_385, ioexception).
throw(m_skip_value_386, ioexception).
param(p_new_top_578, 1, m_push_387).
param(p_minimum_579, 1, m_fill_buffer_388).
throw(m_fill_buffer_388, ioexception).
assign(v_buffer_580, f_buffer_557, line(json_reader_1, 1282)).
assign(f_line_start_561, f_pos_558, line(json_reader_1, 1283)).
assign(f_limit_559, json_reader_1_literal16, line(json_reader_1, 1288)).
assign(f_pos_558, json_reader_1_literal17, line(json_reader_1, 1291)).
assign(json_reader_1_expr41, json_reader_1_expr42, line(json_reader_1, 1293)).
assign(v_total_581, json_reader_1_expr43, line(json_reader_1, 1293)).
method_invoc(json_reader_1_expr43, m_read_389, line(json_reader_1, 1293)).
throw(json_reader_1_expr43, ioexception, line(json_reader_1, 1293)).
argument(v_buffer_580, 1, json_reader_1_expr43).
argument(f_limit_559, 2, json_reader_1_expr43).
argument(json_reader_1_expr44, 3, json_reader_1_expr43).
ref(f_in_569, json_reader_1_expr43, line(json_reader_1, 1293)).
ref(v_buffer_580, q_length_47, line(json_reader_1, 1293)).
assign(f_limit_559, v_total_581, line(json_reader_1, 1294)).
ref(v_buffer_580, json_reader_1_expr54, line(json_reader_1, 1297)).
return(json_reader_1_literal24, m_fill_buffer_388, line(json_reader_1, 1304)).
param(p_throw_on_eof_582, 1, m_next_non_whitespace_370).
throw(m_next_non_whitespace_370, ioexception).
assign(v_buffer_583, f_buffer_557, line(json_reader_1, 1333)).
assign(v_p_584, f_pos_558, line(json_reader_1, 1334)).
assign(v_l_585, f_limit_559, line(json_reader_1, 1335)).
assign(f_pos_558, v_p_584, line(json_reader_1, 1338)).
method_invoc(json_reader_1_expr61, m_fill_buffer_388, line(json_reader_1, 1339)).
throw(json_reader_1_expr61, ioexception, line(json_reader_1, 1339)).
argument(json_reader_1_literal25, 1, json_reader_1_expr61).
assign(v_p_584, f_pos_558, line(json_reader_1, 1342)).
assign(v_l_585, f_limit_559, line(json_reader_1, 1343)).
assign(v_c_586, json_reader_1_expr64, line(json_reader_1, 1346)).
ref(v_buffer_583, json_reader_1_expr64, line(json_reader_1, 1346)).
assign(f_pos_558, v_p_584, line(json_reader_1, 1402)).
return(v_c_586, m_next_non_whitespace_370, line(json_reader_1, 1403)).
throw(m_check_lenient_392, ioexception).
throw(m_skip_to_end_of_line_393, ioexception).
param(p_to_find_587, 1, m_skip_to_394).
throw(m_skip_to_394, ioexception).
throw(m_read_escape_character_397, ioexception).
param(p_message_588, 1, m_syntax_error_398).
throw(m_syntax_error_398, ioexception).
throw(m_consume_non_execute_prefix_369, ioexception).
method_invoc(json_reader_1_expr75, m_next_non_whitespace_370, line(json_reader_1, 1575)).
throw(json_reader_1_expr75, ioexception, line(json_reader_1, 1575)).
argument(json_reader_1_literal32, 1, json_reader_1_expr75).
ref(f_non_execute_prefix_555, q_length_48, line(json_reader_1, 1578)).
method_invoc(json_reader_1_expr81, m_fill_buffer_388, line(json_reader_1, 1578)).
throw(json_reader_1_expr81, ioexception, line(json_reader_1, 1578)).
argument(q_length_49, 1, json_reader_1_expr81).
ref(f_non_execute_prefix_555, q_length_49, line(json_reader_1, 1578)).
assign(v_i_589, json_reader_1_literal33, line(json_reader_1, 1582)).
ref(f_non_execute_prefix_555, q_length_49, line(json_reader_1, 1582)).
ref(f_buffer_557, json_reader_1_expr86, line(json_reader_1, 1583)).
ref(f_non_execute_prefix_555, json_reader_1_expr88, line(json_reader_1, 1583)).
return(none, m_consume_non_execute_prefix_369, line(json_reader_1, 1584)).
assign(q_instance_49, json_reader_1_expr90, line(json_reader_1, 1593)).
ref(t_json_reader_internal_access_18, q_instance_49, line(json_reader_1, 1593)).
method_invoc(json_reader_1_expr90, m__399, line(json_reader_1, 1593)).
param(p_reader_590, 1, m_promote_name_to_value_400).
throw(m_promote_name_to_value_400, ioexception).

%json_adapter_null_safe_test_1 - com.google.gson.regression.JsonAdapterNullSafeTest
assign(f_gson_549, json_adapter_null_safe_test_1_expr1, line(json_adapter_null_safe_test_1, 27)).
method_invoc(json_adapter_null_safe_test_1_expr1, m_gson_14, line(json_adapter_null_safe_test_1, 27)).
throw(m_test_null_safe_bug_serialize_358, exception).
assign(v_device_550, json_adapter_null_safe_test_1_expr2, line(json_adapter_null_safe_test_1, 30)).
method_invoc(json_adapter_null_safe_test_1_expr2, m_device_359, line(json_adapter_null_safe_test_1, 30)).
argument(json_adapter_null_safe_test_1_literal1, 1, json_adapter_null_safe_test_1_expr2).
method_invoc(json_adapter_null_safe_test_1_expr3, m_to_json_63, line(json_adapter_null_safe_test_1, 31)).
argument(v_device_550, 1, json_adapter_null_safe_test_1_expr3).
ref(f_gson_549, json_adapter_null_safe_test_1_expr3, line(json_adapter_null_safe_test_1, 31)).
throw(m_test_null_safe_bug_deserialize_360, exception).
assign(v_device_551, json_adapter_null_safe_test_1_expr4, line(json_adapter_null_safe_test_1, 35)).
method_invoc(json_adapter_null_safe_test_1_expr4, m_from_json_81, line(json_adapter_null_safe_test_1, 35)).
throw(json_adapter_null_safe_test_1_expr4, json_syntax_exception, line(json_adapter_null_safe_test_1, 35)).
argument(json_adapter_null_safe_test_1_literal2, 1, json_adapter_null_safe_test_1_expr4).
argument(json_adapter_null_safe_test_1_expr5, 2, json_adapter_null_safe_test_1_expr4).
ref(f_gson_549, json_adapter_null_safe_test_1_expr4, line(json_adapter_null_safe_test_1, 35)).
param(p_id_552, 1, m_device_359).
param(p_gson_553, 1, m_create_361).
param(p_type_554, 2, m_create_361).
return(json_adapter_null_safe_test_1_expr8, m_create_361, line(json_adapter_null_safe_test_1, 58)).
assign(json_adapter_null_safe_test_1_expr8, json_adapter_null_safe_test_1_expr9, line(json_adapter_null_safe_test_1, 58)).
method_invoc(json_adapter_null_safe_test_1_expr9, m_get_delegate_adapter_58, line(json_adapter_null_safe_test_1, 58)).
argument(json_adapter_null_safe_test_1_expr10, 1, json_adapter_null_safe_test_1_expr9).
argument(p_type_554, 2, json_adapter_null_safe_test_1_expr9).
ref(p_gson_553, json_adapter_null_safe_test_1_expr9, line(json_adapter_null_safe_test_1, 58)).

%array_type_adapter_1 - com.google.gson.internal.bind.ArrayTypeAdapter
assign(f_factory_223, array_type_adapter_1_expr1, line(array_type_adapter_1, 39)).
method_invoc(array_type_adapter_1_expr1, m__169, line(array_type_adapter_1, 39)).
param(p_gson_224, 1, m_create_170).
param(p_type_token_225, 2, m_create_170).
assign(v_type_226, array_type_adapter_1_expr2, line(array_type_adapter_1, 42)).
method_invoc(array_type_adapter_1_expr2, m_get_type_111, line(array_type_adapter_1, 42)).
ref(p_type_token_225, array_type_adapter_1_expr2, line(array_type_adapter_1, 42)).
assign(array_type_adapter_1_expr4, array_type_adapter_1_expr5, line(array_type_adapter_1, 43)).
method_invoc(array_type_adapter_1_expr9, m_is_array_171, line(array_type_adapter_1, 43)).
ref(array_type_adapter_1_expr10, array_type_adapter_1_expr9, line(array_type_adapter_1, 43)).
assign(array_type_adapter_1_expr10, array_type_adapter_1_expr11, line(array_type_adapter_1, 43)).
assign(array_type_adapter_1_expr11, v_type_226, line(array_type_adapter_1, 43)).
return(array_type_adapter_1_literal1, m_create_170, line(array_type_adapter_1, 44)).
param(p_context_227, 1, m_array_type_adapter_172).
param(p_component_type_adapter_228, 2, m_array_type_adapter_172).
param(p_component_type_229, 3, m_array_type_adapter_172).
param(p_in_230, 1, m_read_173).
throw(m_read_173, ioexception).
param(p_out_231, 1, m_write_174).
param(p_array_232, 2, m_write_174).
throw(m_write_174, ioexception).

%json_reader_internal_access_1 - com.google.gson.internal.JsonReaderInternalAccess
param(p_reader_210, 1, m_promote_name_to_value_157).
throw(m_promote_name_to_value_157, ioexception).

%streams_1 - com.google.gson.internal.Streams
param(p_reader_211, 1, m_parse_159).
throw(m_parse_159, json_parse_exception).
param(p_element_212, 1, m_write_160).
param(p_writer_213, 2, m_write_160).
throw(m_write_160, ioexception).
param(p_appendable_214, 1, m_writer_for_appendable_70).
return(streams_1_expr1, m_writer_for_appendable_70, line(streams_1, 77)).
cond_expr(streams_1_expr2, streams_1_expr3, streams_1_expr4, line(streams_1, 77)).
assign(streams_1_expr3, p_appendable_214, line(streams_1, 77)).
method_invoc(streams_1_expr4, m_appendable_writer_161, line(streams_1, 77)).
argument(p_appendable_214, 1, streams_1_expr4).
param(p_appendable_215, 1, m_appendable_writer_161).
param(p_chars_216, 1, m_write_162).
param(p_offset_217, 2, m_write_162).
param(p_length_218, 3, m_write_162).
throw(m_write_162, ioexception).
param(p_i_219, 1, m_write_163).
throw(m_write_163, ioexception).
param(p_i_220, 1, m_char_at_167).
param(p_start_221, 1, m_sub_sequence_168).
param(p_end_222, 2, m_sub_sequence_168).

%date_type_adapter_1 - com.google.gson.internal.bind.DateTypeAdapter
assign(f_factory_246, date_type_adapter_1_expr1, line(date_type_adapter_1, 42)).
method_invoc(date_type_adapter_1_expr1, m__179, line(date_type_adapter_1, 42)).
param(p_gson_247, 1, m_create_180).
param(p_type_token_248, 2, m_create_180).
return(date_type_adapter_1_expr2, m_create_180, line(date_type_adapter_1, 45)).
cond_expr(date_type_adapter_1_expr3, date_type_adapter_1_expr4, date_type_adapter_1_literal1, line(date_type_adapter_1, 45)).
method_invoc(date_type_adapter_1_expr5, m_get_raw_type_112, line(date_type_adapter_1, 45)).
ref(p_type_token_248, date_type_adapter_1_expr5, line(date_type_adapter_1, 45)).
assign(date_type_adapter_1_expr4, date_type_adapter_1_expr7, line(date_type_adapter_1, 45)).
method_invoc(date_type_adapter_1_expr7, m_date_type_adapter_181, line(date_type_adapter_1, 45)).
param(p_in_249, 1, m_read_182).
throw(m_read_182, ioexception).
param(p_json_250, 1, m_deserialize_to_date_183).
param(p_out_251, 1, m_write_184).
param(p_value_252, 2, m_write_184).
throw(m_write_184, ioexception).

%object_type_adapter_1 - com.google.gson.internal.bind.ObjectTypeAdapter
assign(f_factory_285, object_type_adapter_1_expr1, line(object_type_adapter_1, 38)).
method_invoc(object_type_adapter_1_expr1, m__196, line(object_type_adapter_1, 38)).
param(p_gson_286, 1, m_create_197).
param(p_type_287, 2, m_create_197).
method_invoc(object_type_adapter_1_expr3, m_get_raw_type_112, line(object_type_adapter_1, 41)).
ref(p_type_287, object_type_adapter_1_expr3, line(object_type_adapter_1, 41)).
return(object_type_adapter_1_literal1, m_create_197, line(object_type_adapter_1, 44)).
param(p_gson_288, 1, m_object_type_adapter_198).
param(p_in_289, 1, m_read_199).
throw(m_read_199, ioexception).
param(p_out_290, 1, m_write_200).
param(p_value_291, 2, m_write_200).
throw(m_write_200, ioexception).

%gson_1 - com.google.gson.Gson
assign(f_calls_17, gson_1_expr1, line(gson_1, 120)).
assign(f_type_token_cache_18, gson_1_expr2, line(gson_1, 123)).
assign(f_deserialization_context_19, gson_1_expr3, line(gson_1, 135)).
method_invoc(gson_1_expr3, m__9, line(gson_1, 135)).
param(p_json_20, 1, m_deserialize_10).
param(p_type_of_t_21, 2, m_deserialize_10).
throw(m_deserialize_10, json_parse_exception).
assign(f_serialization_context_22, gson_1_expr4, line(gson_1, 142)).
method_invoc(gson_1_expr4, m__11, line(gson_1, 142)).
param(p_src_23, 1, m_serialize_12).
param(p_src_24, 1, m_serialize_13).
param(p_type_of_src_25, 2, m_serialize_13).
method_invoc(gson_1_expr5, m_gson_15, line(gson_1, 186)).
argument(q_default_1, 1, gson_1_expr5).
argument(q_identity_2, 2, gson_1_expr5).
argument(gson_1_expr6, 3, gson_1_expr5).
argument(f_default_serialize_nulls_26, 4, gson_1_expr5).
argument(f_default_complex_map_keys_27, 5, gson_1_expr5).
argument(f_default_json_non_executable_28, 6, gson_1_expr5).
argument(f_default_escape_html_29, 7, gson_1_expr5).
argument(f_default_pretty_print_30, 8, gson_1_expr5).
argument(f_default_lenient_31, 9, gson_1_expr5).
argument(f_default_specialize_float_values_32, 10, gson_1_expr5).
argument(q_default_3, 11, gson_1_expr5).
argument(gson_1_expr7, 12, gson_1_expr5).
ref(t_excluder_2, q_default_1, line(gson_1, 186)).
ref(t_field_naming_policy_1, q_identity_2, line(gson_1, 186)).
param(p_excluder_34, 1, m_gson_15).
param(p_field_naming_policy_35, 2, m_gson_15).
param(p_instance_creators_36, 3, m_gson_15).
param(p_serialize_nulls_37, 4, m_gson_15).
param(p_complex_map_key_serialization_38, 5, m_gson_15).
param(p_generate_non_executable_gson_39, 6, m_gson_15).
param(p_html_safe_40, 7, m_gson_15).
param(p_pretty_printing_41, 8, m_gson_15).
param(p_lenient_42, 9, m_gson_15).
param(p_serialize_special_floating_point_values_43, 10, m_gson_15).
param(p_long_serialization_policy_44, 11, m_gson_15).
param(p_type_adapter_factories_45, 12, m_gson_15).
assign(f_constructor_constructor_46, gson_1_expr10, line(gson_1, 199)).
method_invoc(gson_1_expr10, m_constructor_constructor_16, line(gson_1, 199)).
argument(p_instance_creators_36, 1, gson_1_expr10).
assign(f_serialize_nulls_47, p_serialize_nulls_37, line(gson_1, 200)).
assign(f_generate_non_executable_json_48, p_generate_non_executable_gson_39, line(gson_1, 201)).
assign(f_html_safe_49, p_html_safe_40, line(gson_1, 202)).
assign(f_pretty_printing_50, p_pretty_printing_41, line(gson_1, 203)).
assign(f_lenient_51, p_lenient_42, line(gson_1, 204)).
assign(v_factories_52, gson_1_expr27, line(gson_1, 206)).
method_invoc(gson_1_expr27, m_array_list_17, line(gson_1, 206)).
method_invoc(gson_1_expr28, m_add_18, line(gson_1, 209)).
argument(q_json_element_factory_4, 1, gson_1_expr28).
ref(v_factories_52, gson_1_expr28, line(gson_1, 209)).
ref(t_type_adapters_3, q_json_element_factory_4, line(gson_1, 209)).
method_invoc(gson_1_expr29, m_add_18, line(gson_1, 210)).
argument(q_factory_5, 1, gson_1_expr29).
ref(v_factories_52, gson_1_expr29, line(gson_1, 210)).
ref(t_object_type_adapter_4, q_factory_5, line(gson_1, 210)).
method_invoc(gson_1_expr30, m_add_18, line(gson_1, 213)).
argument(p_excluder_34, 1, gson_1_expr30).
ref(v_factories_52, gson_1_expr30, line(gson_1, 213)).
method_invoc(gson_1_expr31, m_add_all_19, line(gson_1, 216)).
argument(p_type_adapter_factories_45, 1, gson_1_expr31).
ref(v_factories_52, gson_1_expr31, line(gson_1, 216)).
method_invoc(gson_1_expr32, m_add_18, line(gson_1, 219)).
argument(q_string_factory_6, 1, gson_1_expr32).
ref(v_factories_52, gson_1_expr32, line(gson_1, 219)).
ref(t_type_adapters_3, q_string_factory_6, line(gson_1, 219)).
method_invoc(gson_1_expr33, m_add_18, line(gson_1, 220)).
argument(q_integer_factory_7, 1, gson_1_expr33).
ref(v_factories_52, gson_1_expr33, line(gson_1, 220)).
ref(t_type_adapters_3, q_integer_factory_7, line(gson_1, 220)).
method_invoc(gson_1_expr34, m_add_18, line(gson_1, 221)).
argument(q_boolean_factory_8, 1, gson_1_expr34).
ref(v_factories_52, gson_1_expr34, line(gson_1, 221)).
ref(t_type_adapters_3, q_boolean_factory_8, line(gson_1, 221)).
method_invoc(gson_1_expr35, m_add_18, line(gson_1, 222)).
argument(q_byte_factory_9, 1, gson_1_expr35).
ref(v_factories_52, gson_1_expr35, line(gson_1, 222)).
ref(t_type_adapters_3, q_byte_factory_9, line(gson_1, 222)).
method_invoc(gson_1_expr36, m_add_18, line(gson_1, 223)).
argument(q_short_factory_10, 1, gson_1_expr36).
ref(v_factories_52, gson_1_expr36, line(gson_1, 223)).
ref(t_type_adapters_3, q_short_factory_10, line(gson_1, 223)).
assign(v_long_adapter_53, gson_1_expr37, line(gson_1, 224)).
method_invoc(gson_1_expr37, m_long_adapter_20, line(gson_1, 224)).
argument(p_long_serialization_policy_44, 1, gson_1_expr37).
method_invoc(gson_1_expr38, m_add_18, line(gson_1, 225)).
argument(gson_1_expr39, 1, gson_1_expr38).
ref(v_factories_52, gson_1_expr38, line(gson_1, 225)).
method_invoc(gson_1_expr39, m_new_factory_21, line(gson_1, 225)).
argument(gson_1_expr40, 1, gson_1_expr39).
argument(gson_1_expr41, 2, gson_1_expr39).
argument(v_long_adapter_53, 3, gson_1_expr39).
ref(t_type_adapters_3, gson_1_expr39, line(gson_1, 225)).
method_invoc(gson_1_expr42, m_add_18, line(gson_1, 226)).
argument(gson_1_expr43, 1, gson_1_expr42).
ref(v_factories_52, gson_1_expr42, line(gson_1, 226)).
method_invoc(gson_1_expr43, m_new_factory_21, line(gson_1, 226)).
argument(gson_1_expr44, 1, gson_1_expr43).
argument(gson_1_expr45, 2, gson_1_expr43).
argument(gson_1_expr46, 3, gson_1_expr43).
ref(t_type_adapters_3, gson_1_expr43, line(gson_1, 226)).
method_invoc(gson_1_expr47, m_add_18, line(gson_1, 228)).
argument(gson_1_expr48, 1, gson_1_expr47).
ref(v_factories_52, gson_1_expr47, line(gson_1, 228)).
method_invoc(gson_1_expr48, m_new_factory_21, line(gson_1, 228)).
argument(gson_1_expr49, 1, gson_1_expr48).
argument(gson_1_expr50, 2, gson_1_expr48).
argument(gson_1_expr51, 3, gson_1_expr48).
ref(t_type_adapters_3, gson_1_expr48, line(gson_1, 228)).
method_invoc(gson_1_expr52, m_add_18, line(gson_1, 230)).
argument(q_number_factory_11, 1, gson_1_expr52).
ref(v_factories_52, gson_1_expr52, line(gson_1, 230)).
ref(t_type_adapters_3, q_number_factory_11, line(gson_1, 230)).
method_invoc(gson_1_expr53, m_add_18, line(gson_1, 231)).
argument(q_atomic_integer_factory_12, 1, gson_1_expr53).
ref(v_factories_52, gson_1_expr53, line(gson_1, 231)).
ref(t_type_adapters_3, q_atomic_integer_factory_12, line(gson_1, 231)).
method_invoc(gson_1_expr54, m_add_18, line(gson_1, 232)).
argument(q_atomic_boolean_factory_13, 1, gson_1_expr54).
ref(v_factories_52, gson_1_expr54, line(gson_1, 232)).
ref(t_type_adapters_3, q_atomic_boolean_factory_13, line(gson_1, 232)).
method_invoc(gson_1_expr55, m_add_18, line(gson_1, 233)).
argument(gson_1_expr56, 1, gson_1_expr55).
ref(v_factories_52, gson_1_expr55, line(gson_1, 233)).
method_invoc(gson_1_expr56, m_new_factory_22, line(gson_1, 233)).
argument(gson_1_expr57, 1, gson_1_expr56).
argument(gson_1_expr58, 2, gson_1_expr56).
ref(t_type_adapters_3, gson_1_expr56, line(gson_1, 233)).
method_invoc(gson_1_expr58, m_atomic_long_adapter_23, line(gson_1, 233)).
argument(v_long_adapter_53, 1, gson_1_expr58).
method_invoc(gson_1_expr59, m_add_18, line(gson_1, 234)).
argument(gson_1_expr60, 1, gson_1_expr59).
ref(v_factories_52, gson_1_expr59, line(gson_1, 234)).
method_invoc(gson_1_expr60, m_new_factory_22, line(gson_1, 234)).
argument(gson_1_expr61, 1, gson_1_expr60).
argument(gson_1_expr62, 2, gson_1_expr60).
ref(t_type_adapters_3, gson_1_expr60, line(gson_1, 234)).
method_invoc(gson_1_expr62, m_atomic_long_array_adapter_24, line(gson_1, 234)).
argument(v_long_adapter_53, 1, gson_1_expr62).
method_invoc(gson_1_expr63, m_add_18, line(gson_1, 235)).
argument(q_atomic_integer_array_factory_14, 1, gson_1_expr63).
ref(v_factories_52, gson_1_expr63, line(gson_1, 235)).
ref(t_type_adapters_3, q_atomic_integer_array_factory_14, line(gson_1, 235)).
method_invoc(gson_1_expr64, m_add_18, line(gson_1, 236)).
argument(q_character_factory_15, 1, gson_1_expr64).
ref(v_factories_52, gson_1_expr64, line(gson_1, 236)).
ref(t_type_adapters_3, q_character_factory_15, line(gson_1, 236)).
method_invoc(gson_1_expr65, m_add_18, line(gson_1, 237)).
argument(q_string_builder_factory_16, 1, gson_1_expr65).
ref(v_factories_52, gson_1_expr65, line(gson_1, 237)).
ref(t_type_adapters_3, q_string_builder_factory_16, line(gson_1, 237)).
method_invoc(gson_1_expr66, m_add_18, line(gson_1, 238)).
argument(q_string_buffer_factory_17, 1, gson_1_expr66).
ref(v_factories_52, gson_1_expr66, line(gson_1, 238)).
ref(t_type_adapters_3, q_string_buffer_factory_17, line(gson_1, 238)).
method_invoc(gson_1_expr67, m_add_18, line(gson_1, 239)).
argument(gson_1_expr68, 1, gson_1_expr67).
ref(v_factories_52, gson_1_expr67, line(gson_1, 239)).
method_invoc(gson_1_expr68, m_new_factory_22, line(gson_1, 239)).
argument(gson_1_expr69, 1, gson_1_expr68).
argument(q_big_decimal_18, 2, gson_1_expr68).
ref(t_type_adapters_3, gson_1_expr68, line(gson_1, 239)).
ref(t_type_adapters_3, q_big_decimal_18, line(gson_1, 239)).
method_invoc(gson_1_expr70, m_add_18, line(gson_1, 240)).
argument(gson_1_expr71, 1, gson_1_expr70).
ref(v_factories_52, gson_1_expr70, line(gson_1, 240)).
method_invoc(gson_1_expr71, m_new_factory_22, line(gson_1, 240)).
argument(gson_1_expr72, 1, gson_1_expr71).
argument(q_big_integer_19, 2, gson_1_expr71).
ref(t_type_adapters_3, gson_1_expr71, line(gson_1, 240)).
ref(t_type_adapters_3, q_big_integer_19, line(gson_1, 240)).
method_invoc(gson_1_expr73, m_add_18, line(gson_1, 241)).
argument(q_url_factory_20, 1, gson_1_expr73).
ref(v_factories_52, gson_1_expr73, line(gson_1, 241)).
ref(t_type_adapters_3, q_url_factory_20, line(gson_1, 241)).
method_invoc(gson_1_expr74, m_add_18, line(gson_1, 242)).
argument(q_uri_factory_21, 1, gson_1_expr74).
ref(v_factories_52, gson_1_expr74, line(gson_1, 242)).
ref(t_type_adapters_3, q_uri_factory_21, line(gson_1, 242)).
method_invoc(gson_1_expr75, m_add_18, line(gson_1, 243)).
argument(q_uuid_factory_22, 1, gson_1_expr75).
ref(v_factories_52, gson_1_expr75, line(gson_1, 243)).
ref(t_type_adapters_3, q_uuid_factory_22, line(gson_1, 243)).
method_invoc(gson_1_expr76, m_add_18, line(gson_1, 244)).
argument(q_currency_factory_23, 1, gson_1_expr76).
ref(v_factories_52, gson_1_expr76, line(gson_1, 244)).
ref(t_type_adapters_3, q_currency_factory_23, line(gson_1, 244)).
method_invoc(gson_1_expr77, m_add_18, line(gson_1, 245)).
argument(q_locale_factory_24, 1, gson_1_expr77).
ref(v_factories_52, gson_1_expr77, line(gson_1, 245)).
ref(t_type_adapters_3, q_locale_factory_24, line(gson_1, 245)).
method_invoc(gson_1_expr78, m_add_18, line(gson_1, 246)).
argument(q_inet_address_factory_25, 1, gson_1_expr78).
ref(v_factories_52, gson_1_expr78, line(gson_1, 246)).
ref(t_type_adapters_3, q_inet_address_factory_25, line(gson_1, 246)).
method_invoc(gson_1_expr79, m_add_18, line(gson_1, 247)).
argument(q_bit_set_factory_26, 1, gson_1_expr79).
ref(v_factories_52, gson_1_expr79, line(gson_1, 247)).
ref(t_type_adapters_3, q_bit_set_factory_26, line(gson_1, 247)).
method_invoc(gson_1_expr80, m_add_18, line(gson_1, 248)).
argument(q_factory_27, 1, gson_1_expr80).
ref(v_factories_52, gson_1_expr80, line(gson_1, 248)).
ref(t_date_type_adapter_5, q_factory_27, line(gson_1, 248)).
method_invoc(gson_1_expr81, m_add_18, line(gson_1, 249)).
argument(q_calendar_factory_28, 1, gson_1_expr81).
ref(v_factories_52, gson_1_expr81, line(gson_1, 249)).
ref(t_type_adapters_3, q_calendar_factory_28, line(gson_1, 249)).
method_invoc(gson_1_expr82, m_add_18, line(gson_1, 250)).
argument(q_factory_29, 1, gson_1_expr82).
ref(v_factories_52, gson_1_expr82, line(gson_1, 250)).
ref(t_time_type_adapter_6, q_factory_29, line(gson_1, 250)).
method_invoc(gson_1_expr83, m_add_18, line(gson_1, 251)).
argument(q_factory_30, 1, gson_1_expr83).
ref(v_factories_52, gson_1_expr83, line(gson_1, 251)).
ref(t_sql_date_type_adapter_7, q_factory_30, line(gson_1, 251)).
method_invoc(gson_1_expr84, m_add_18, line(gson_1, 252)).
argument(q_timestamp_factory_31, 1, gson_1_expr84).
ref(v_factories_52, gson_1_expr84, line(gson_1, 252)).
ref(t_type_adapters_3, q_timestamp_factory_31, line(gson_1, 252)).
method_invoc(gson_1_expr85, m_add_18, line(gson_1, 253)).
argument(q_factory_32, 1, gson_1_expr85).
ref(v_factories_52, gson_1_expr85, line(gson_1, 253)).
ref(t_array_type_adapter_8, q_factory_32, line(gson_1, 253)).
method_invoc(gson_1_expr86, m_add_18, line(gson_1, 254)).
argument(q_class_factory_33, 1, gson_1_expr86).
ref(v_factories_52, gson_1_expr86, line(gson_1, 254)).
ref(t_type_adapters_3, q_class_factory_33, line(gson_1, 254)).
method_invoc(gson_1_expr87, m_add_18, line(gson_1, 257)).
argument(gson_1_expr88, 1, gson_1_expr87).
ref(v_factories_52, gson_1_expr87, line(gson_1, 257)).
method_invoc(gson_1_expr88, m_collection_type_adapter_factory_25, line(gson_1, 257)).
argument(f_constructor_constructor_46, 1, gson_1_expr88).
method_invoc(gson_1_expr89, m_add_18, line(gson_1, 258)).
argument(gson_1_expr90, 1, gson_1_expr89).
ref(v_factories_52, gson_1_expr89, line(gson_1, 258)).
method_invoc(gson_1_expr90, m_map_type_adapter_factory_26, line(gson_1, 258)).
argument(f_constructor_constructor_46, 1, gson_1_expr90).
argument(p_complex_map_key_serialization_38, 2, gson_1_expr90).
method_invoc(gson_1_expr91, m_add_18, line(gson_1, 259)).
argument(gson_1_expr92, 1, gson_1_expr91).
ref(v_factories_52, gson_1_expr91, line(gson_1, 259)).
method_invoc(gson_1_expr92, m_json_adapter_annotation_type_adapter_factory_27, line(gson_1, 259)).
argument(f_constructor_constructor_46, 1, gson_1_expr92).
method_invoc(gson_1_expr93, m_add_18, line(gson_1, 260)).
argument(q_enum_factory_34, 1, gson_1_expr93).
ref(v_factories_52, gson_1_expr93, line(gson_1, 260)).
ref(t_type_adapters_3, q_enum_factory_34, line(gson_1, 260)).
method_invoc(gson_1_expr94, m_add_18, line(gson_1, 261)).
argument(gson_1_expr95, 1, gson_1_expr94).
ref(v_factories_52, gson_1_expr94, line(gson_1, 261)).
method_invoc(gson_1_expr95, m_reflective_type_adapter_factory_28, line(gson_1, 261)).
argument(f_constructor_constructor_46, 1, gson_1_expr95).
argument(p_field_naming_policy_35, 2, gson_1_expr95).
argument(p_excluder_34, 3, gson_1_expr95).
assign(f_factories_54, gson_1_expr98, line(gson_1, 264)).
method_invoc(gson_1_expr98, m_unmodifiable_list_29, line(gson_1, 264)).
argument(v_factories_52, 1, gson_1_expr98).
ref(t_collections_9, gson_1_expr98, line(gson_1, 264)).
param(p_serialize_special_floating_point_values_55, 1, m_double_adapter_30).
return(gson_1_expr100, m_double_adapter_30, line(gson_1, 271)).
method_invoc(gson_1_expr100, m__31, line(gson_1, 271)).
param(p_in_56, 1, m_read_32).
throw(m_read_32, ioexception).
param(p_out_57, 1, m_write_33).
param(p_value_58, 2, m_write_33).
throw(m_write_33, ioexception).
param(p_serialize_special_floating_point_values_59, 1, m_float_adapter_34).
return(gson_1_expr101, m_float_adapter_34, line(gson_1, 295)).
method_invoc(gson_1_expr101, m__35, line(gson_1, 295)).
param(p_in_60, 1, m_read_36).
throw(m_read_36, ioexception).
param(p_out_61, 1, m_write_37).
param(p_value_62, 2, m_write_37).
throw(m_write_37, ioexception).
param(p_value_63, 1, m_check_valid_floating_point_38).
param(p_long_serialization_policy_64, 1, m_long_adapter_20).
ref(t_long_serialization_policy_10, q_default_35, line(gson_1, 324)).
return(q_long_35, m_long_adapter_20, line(gson_1, 325)).
ref(t_type_adapters_3, q_long_35, line(gson_1, 325)).
param(p_in_65, 1, m_read_39).
throw(m_read_39, ioexception).
param(p_out_66, 1, m_write_40).
param(p_value_67, 2, m_write_40).
throw(m_write_40, ioexception).
param(p_long_adapter_68, 1, m_atomic_long_adapter_23).
return(gson_1_expr103, m_atomic_long_adapter_23, line(gson_1, 346)).
method_invoc(gson_1_expr103, m_null_safe_41, line(gson_1, 346)).
ref(gson_1_expr104, gson_1_expr103, line(gson_1, 346)).
method_invoc(gson_1_expr104, m__42, line(gson_1, 346)).
param(p_out_69, 1, m_write_43).
param(p_value_70, 2, m_write_43).
throw(m_write_43, ioexception).
param(p_in_71, 1, m_read_44).
throw(m_read_44, ioexception).
param(p_long_adapter_72, 1, m_atomic_long_array_adapter_24).
return(gson_1_expr105, m_atomic_long_array_adapter_24, line(gson_1, 358)).
method_invoc(gson_1_expr105, m_null_safe_41, line(gson_1, 358)).
ref(gson_1_expr106, gson_1_expr105, line(gson_1, 358)).
method_invoc(gson_1_expr106, m__45, line(gson_1, 358)).
param(p_out_73, 1, m_write_46).
param(p_value_74, 2, m_write_46).
throw(m_write_46, ioexception).
param(p_in_75, 1, m_read_47).
throw(m_read_47, ioexception).
param(p_type_76, 1, m_get_adapter_48).
assign(v_cached_77, gson_1_expr107, line(gson_1, 392)).
method_invoc(gson_1_expr107, m_get_49, line(gson_1, 392)).
argument(p_type_76, 1, gson_1_expr107).
ref(f_type_token_cache_18, gson_1_expr107, line(gson_1, 392)).
assign(v_thread_calls_78, gson_1_expr109, line(gson_1, 397)).
method_invoc(gson_1_expr109, m_get_50, line(gson_1, 397)).
ref(f_calls_17, gson_1_expr109, line(gson_1, 397)).
assign(v_requires_thread_local_cleanup_79, gson_1_literal2, line(gson_1, 398)).
assign(v_thread_calls_78, gson_1_expr112, line(gson_1, 400)).
method_invoc(gson_1_expr112, m_hash_map_51, line(gson_1, 400)).
method_invoc(gson_1_expr113, m_set_52, line(gson_1, 401)).
argument(v_thread_calls_78, 1, gson_1_expr113).
ref(f_calls_17, gson_1_expr113, line(gson_1, 401)).
assign(v_requires_thread_local_cleanup_79, gson_1_literal4, line(gson_1, 402)).
assign(v_ongoing_call_80, gson_1_expr115, line(gson_1, 406)).
assign(gson_1_expr115, gson_1_expr116, line(gson_1, 406)).
method_invoc(gson_1_expr116, m_get_49, line(gson_1, 406)).
argument(p_type_76, 1, gson_1_expr116).
ref(v_thread_calls_78, gson_1_expr116, line(gson_1, 406)).
assign(v_call_81, gson_1_expr118, line(gson_1, 412)).
method_invoc(gson_1_expr118, m_future_type_adapter_53, line(gson_1, 412)).
method_invoc(gson_1_expr119, m_put_54, line(gson_1, 413)).
argument(p_type_76, 1, gson_1_expr119).
argument(v_call_81, 2, gson_1_expr119).
ref(v_thread_calls_78, gson_1_expr119, line(gson_1, 413)).
ref(f_factories_54, gson_1_stmt74, line(gson_1, 415)).
assign(v_candidate_83, gson_1_expr120, line(gson_1, 416)).
method_invoc(gson_1_expr120, m_create_55, line(gson_1, 416)).
argument(gson_1_expr121, 1, gson_1_expr120).
argument(p_type_76, 2, gson_1_expr120).
ref(v_factory_82, gson_1_expr120, line(gson_1, 416)).
method_invoc(gson_1_expr123, m_remove_56, line(gson_1, 425)).
argument(p_type_76, 1, gson_1_expr123).
ref(v_thread_calls_78, gson_1_expr123, line(gson_1, 425)).
method_invoc(gson_1_expr124, m_remove_57, line(gson_1, 428)).
ref(f_calls_17, gson_1_expr124, line(gson_1, 428)).
param(p_skip_past_84, 1, m_get_delegate_adapter_58).
param(p_type_85, 2, m_get_delegate_adapter_58).
assign(v_skip_past_found_86, gson_1_literal7, line(gson_1, 484)).
method_invoc(gson_1_expr126, m_contains_59, line(gson_1, 488)).
argument(p_skip_past_84, 1, gson_1_expr126).
ref(f_factories_54, gson_1_expr126, line(gson_1, 488)).
assign(v_skip_past_found_86, gson_1_literal8, line(gson_1, 488)).
ref(f_factories_54, gson_1_stmt83, line(gson_1, 490)).
assign(v_candidate_88, gson_1_expr129, line(gson_1, 498)).
method_invoc(gson_1_expr129, m_create_55, line(gson_1, 498)).
argument(gson_1_expr130, 1, gson_1_expr129).
argument(p_type_85, 2, gson_1_expr129).
ref(v_factory_87, gson_1_expr129, line(gson_1, 498)).
param(p_type_89, 1, m_get_adapter_60).
param(p_src_90, 1, m_to_json_tree_61).
param(p_src_91, 1, m_to_json_tree_62).
param(p_type_of_src_92, 2, m_to_json_tree_62).
param(p_src_93, 1, m_to_json_63).
return(gson_1_expr132, m_to_json_63, line(gson_1, 575)).
method_invoc(gson_1_expr132, m_to_json_64, line(gson_1, 575)).
argument(p_src_93, 1, gson_1_expr132).
argument(gson_1_expr133, 2, gson_1_expr132).
method_invoc(gson_1_expr133, m_get_class_65, line(gson_1, 575)).
ref(p_src_93, gson_1_expr133, line(gson_1, 575)).
param(p_src_94, 1, m_to_json_64).
param(p_type_of_src_95, 2, m_to_json_64).
assign(v_writer_96, gson_1_expr134, line(gson_1, 594)).
method_invoc(gson_1_expr134, m_string_writer_66, line(gson_1, 594)).
method_invoc(gson_1_expr135, m_to_json_67, line(gson_1, 595)).
throw(gson_1_expr135, json_ioexception, line(gson_1, 595)).
argument(p_src_94, 1, gson_1_expr135).
argument(p_type_of_src_95, 2, gson_1_expr135).
argument(v_writer_96, 3, gson_1_expr135).
param(p_src_97, 1, m_to_json_68).
param(p_writer_98, 2, m_to_json_68).
throw(m_to_json_68, json_ioexception).
param(p_src_99, 1, m_to_json_67).
param(p_type_of_src_100, 2, m_to_json_67).
param(p_writer_101, 3, m_to_json_67).
throw(m_to_json_67, json_ioexception).
assign(v_json_writer_102, gson_1_expr136, line(gson_1, 639)).
method_invoc(gson_1_expr136, m_new_json_writer_69, line(gson_1, 639)).
throw(gson_1_expr136, ioexception, line(gson_1, 639)).
argument(gson_1_expr137, 1, gson_1_expr136).
method_invoc(gson_1_expr137, m_writer_for_appendable_70, line(gson_1, 639)).
argument(p_writer_101, 1, gson_1_expr137).
ref(t_streams_11, gson_1_expr137, line(gson_1, 639)).
method_invoc(gson_1_expr138, m_to_json_71, line(gson_1, 640)).
throw(gson_1_expr138, json_ioexception, line(gson_1, 640)).
argument(p_src_99, 1, gson_1_expr138).
argument(p_type_of_src_100, 2, gson_1_expr138).
argument(v_json_writer_102, 3, gson_1_expr138).
param(p_src_103, 1, m_to_json_71).
param(p_type_of_src_104, 2, m_to_json_71).
param(p_writer_105, 3, m_to_json_71).
throw(m_to_json_71, json_ioexception).
assign(v_adapter_106, gson_1_expr139, line(gson_1, 653)).
method_invoc(gson_1_expr139, m_get_adapter_48, line(gson_1, 653)).
argument(gson_1_expr140, 1, gson_1_expr139).
method_invoc(gson_1_expr140, m_get_72, line(gson_1, 653)).
argument(p_type_of_src_104, 1, gson_1_expr140).
ref(t_type_token_12, gson_1_expr140, line(gson_1, 653)).
param(p_json_element_107, 1, m_to_json_73).
param(p_json_element_108, 1, m_to_json_74).
param(p_writer_109, 2, m_to_json_74).
throw(m_to_json_74, json_ioexception).
param(p_writer_110, 1, m_new_json_writer_69).
throw(m_new_json_writer_69, ioexception).
assign(v_json_writer_111, gson_1_expr141, line(gson_1, 708)).
method_invoc(gson_1_expr141, m_json_writer_75, line(gson_1, 708)).
argument(p_writer_110, 1, gson_1_expr141).
method_invoc(gson_1_expr142, m_set_serialize_nulls_76, line(gson_1, 712)).
argument(f_serialize_nulls_47, 1, gson_1_expr142).
ref(v_json_writer_111, gson_1_expr142, line(gson_1, 712)).
return(v_json_writer_111, m_new_json_writer_69, line(gson_1, 713)).
param(p_reader_112, 1, m_new_json_reader_77).
assign(v_json_reader_113, gson_1_expr143, line(gson_1, 720)).
method_invoc(gson_1_expr143, m_json_reader_78, line(gson_1, 720)).
argument(p_reader_112, 1, gson_1_expr143).
method_invoc(gson_1_expr144, m_set_lenient_79, line(gson_1, 721)).
argument(f_lenient_51, 1, gson_1_expr144).
ref(v_json_reader_113, gson_1_expr144, line(gson_1, 721)).
return(v_json_reader_113, m_new_json_reader_77, line(gson_1, 722)).
param(p_json_element_114, 1, m_to_json_80).
param(p_writer_115, 2, m_to_json_80).
throw(m_to_json_80, json_ioexception).
param(p_json_116, 1, m_from_json_81).
param(p_class_of_t_117, 2, m_from_json_81).
throw(m_from_json_81, json_syntax_exception).
assign(v_object_118, gson_1_expr145, line(gson_1, 765)).
method_invoc(gson_1_expr145, m_from_json_82, line(gson_1, 765)).
throw(gson_1_expr145, json_syntax_exception, line(gson_1, 765)).
argument(p_json_116, 1, gson_1_expr145).
argument(gson_1_expr146, 2, gson_1_expr145).
assign(gson_1_expr146, p_class_of_t_117, line(gson_1, 765)).
param(p_json_119, 1, m_from_json_82).
param(p_type_of_t_120, 2, m_from_json_82).
throw(m_from_json_82, json_syntax_exception).
assign(v_reader_121, gson_1_expr148, line(gson_1, 792)).
method_invoc(gson_1_expr148, m_string_reader_83, line(gson_1, 792)).
argument(p_json_119, 1, gson_1_expr148).
assign(v_target_122, gson_1_expr149, line(gson_1, 793)).
assign(gson_1_expr149, gson_1_expr150, line(gson_1, 793)).
method_invoc(gson_1_expr150, m_from_json_84, line(gson_1, 793)).
throw(gson_1_expr150, json_ioexception, line(gson_1, 793)).
throw(gson_1_expr150, json_syntax_exception, line(gson_1, 793)).
argument(v_reader_121, 1, gson_1_expr150).
argument(p_type_of_t_120, 2, gson_1_expr150).
param(p_json_123, 1, m_from_json_85).
param(p_class_of_t_124, 2, m_from_json_85).
throw(m_from_json_85, json_syntax_exception).
throw(m_from_json_85, json_ioexception).
param(p_json_125, 1, m_from_json_84).
param(p_type_of_t_126, 2, m_from_json_84).
throw(m_from_json_84, json_ioexception).
throw(m_from_json_84, json_syntax_exception).
assign(v_json_reader_127, gson_1_expr151, line(gson_1, 843)).
method_invoc(gson_1_expr151, m_new_json_reader_77, line(gson_1, 843)).
argument(p_json_125, 1, gson_1_expr151).
assign(v_object_128, gson_1_expr152, line(gson_1, 844)).
assign(gson_1_expr152, gson_1_expr153, line(gson_1, 844)).
method_invoc(gson_1_expr153, m_from_json_86, line(gson_1, 844)).
throw(gson_1_expr153, json_ioexception, line(gson_1, 844)).
throw(gson_1_expr153, json_syntax_exception, line(gson_1, 844)).
argument(v_json_reader_127, 1, gson_1_expr153).
argument(p_type_of_t_126, 2, gson_1_expr153).
param(p_obj_129, 1, m_assert_full_consumption_87).
param(p_reader_130, 2, m_assert_full_consumption_87).
param(p_reader_131, 1, m_from_json_86).
param(p_type_of_t_132, 2, m_from_json_86).
throw(m_from_json_86, json_ioexception).
throw(m_from_json_86, json_syntax_exception).
assign(v_is_empty_133, gson_1_literal11, line(gson_1, 871)).
assign(v_old_lenient_134, gson_1_expr154, line(gson_1, 872)).
method_invoc(gson_1_expr154, m_is_lenient_88, line(gson_1, 872)).
ref(p_reader_131, gson_1_expr154, line(gson_1, 872)).
method_invoc(gson_1_expr155, m_set_lenient_79, line(gson_1, 873)).
argument(gson_1_literal12, 1, gson_1_expr155).
ref(p_reader_131, gson_1_expr155, line(gson_1, 873)).
method_invoc(gson_1_expr156, m_peek_89, line(gson_1, 875)).
throw(gson_1_expr156, ioexception, line(gson_1, 875)).
ref(p_reader_131, gson_1_expr156, line(gson_1, 875)).
assign(v_is_empty_133, gson_1_literal13, line(gson_1, 876)).
assign(v_type_token_135, gson_1_expr158, line(gson_1, 877)).
assign(gson_1_expr158, gson_1_expr159, line(gson_1, 877)).
method_invoc(gson_1_expr159, m_get_72, line(gson_1, 877)).
argument(p_type_of_t_132, 1, gson_1_expr159).
ref(t_type_token_12, gson_1_expr159, line(gson_1, 877)).
assign(v_type_adapter_136, gson_1_expr160, line(gson_1, 878)).
method_invoc(gson_1_expr160, m_get_adapter_48, line(gson_1, 878)).
argument(v_type_token_135, 1, gson_1_expr160).
method_invoc(gson_1_expr161, m_set_lenient_79, line(gson_1, 896)).
argument(v_old_lenient_134, 1, gson_1_expr161).
ref(p_reader_131, gson_1_expr161, line(gson_1, 896)).
param(p_json_137, 1, m_from_json_90).
param(p_class_of_t_138, 2, m_from_json_90).
throw(m_from_json_90, json_syntax_exception).
param(p_json_139, 1, m_from_json_91).
param(p_type_of_t_140, 2, m_from_json_91).
throw(m_from_json_91, json_syntax_exception).
param(p_type_adapter_141, 1, m_set_delegate_92).
param(p_in_142, 1, m_read_93).
throw(m_read_93, ioexception).
param(p_out_143, 1, m_write_94).
param(p_value_144, 2, m_write_94).
throw(m_write_94, ioexception).

%constructor_constructor_1 - com.google.gson.internal.ConstructorConstructor
param(p_instance_creators_163, 1, m_constructor_constructor_16).
assign(f_instance_creators_164, p_instance_creators_163, line(constructor_constructor_1, 52)).
param(p_type_token_165, 1, m_get_110).
assign(v_type_166, constructor_constructor_1_expr4, line(constructor_constructor_1, 56)).
method_invoc(constructor_constructor_1_expr4, m_get_type_111, line(constructor_constructor_1, 56)).
ref(p_type_token_165, constructor_constructor_1_expr4, line(constructor_constructor_1, 56)).
assign(v_raw_type_167, constructor_constructor_1_expr5, line(constructor_constructor_1, 57)).
method_invoc(constructor_constructor_1_expr5, m_get_raw_type_112, line(constructor_constructor_1, 57)).
ref(p_type_token_165, constructor_constructor_1_expr5, line(constructor_constructor_1, 57)).
assign(v_type_creator_168, constructor_constructor_1_expr6, line(constructor_constructor_1, 62)).
assign(constructor_constructor_1_expr6, constructor_constructor_1_expr7, line(constructor_constructor_1, 62)).
method_invoc(constructor_constructor_1_expr7, m_get_49, line(constructor_constructor_1, 62)).
argument(v_type_166, 1, constructor_constructor_1_expr7).
ref(f_instance_creators_164, constructor_constructor_1_expr7, line(constructor_constructor_1, 62)).
assign(v_raw_type_creator_169, constructor_constructor_1_expr9, line(constructor_constructor_1, 73)).
assign(v_default_constructor_170, constructor_constructor_1_expr11, line(constructor_constructor_1, 83)).
method_invoc(constructor_constructor_1_expr11, m_new_default_constructor_115, line(constructor_constructor_1, 83)).
argument(v_raw_type_167, 1, constructor_constructor_1_expr11).
return(v_default_constructor_170, m_construct_114, line(constructor_constructor_1, 85)).
param(p_raw_type_171, 1, m_new_default_constructor_115).
assign(v_constructor_172, constructor_constructor_1_expr13, line(constructor_constructor_1, 99)).
method_invoc(constructor_constructor_1_expr13, m_get_declared_constructor_116, line(constructor_constructor_1, 99)).
throw(constructor_constructor_1_expr13, no_such_method_exception, line(constructor_constructor_1, 99)).
throw(constructor_constructor_1_expr13, security_exception, line(constructor_constructor_1, 99)).
ref(p_raw_type_171, constructor_constructor_1_expr13, line(constructor_constructor_1, 99)).
method_invoc(constructor_constructor_1_expr15, m_is_accessible_117, line(constructor_constructor_1, 100)).
ref(v_constructor_172, constructor_constructor_1_expr15, line(constructor_constructor_1, 100)).
method_invoc(constructor_constructor_1_expr16, m_set_accessible_118, line(constructor_constructor_1, 101)).
argument(constructor_constructor_1_literal4, 1, constructor_constructor_1_expr16).
ref(v_constructor_172, constructor_constructor_1_expr16, line(constructor_constructor_1, 101)).
return(constructor_constructor_1_expr17, m_new_default_constructor_115, line(constructor_constructor_1, 103)).
method_invoc(constructor_constructor_1_expr17, m__119, line(constructor_constructor_1, 103)).
assign(v_args_173, constructor_constructor_1_literal5, line(constructor_constructor_1, 107)).
return(constructor_constructor_1_expr18, m_construct_120, line(constructor_constructor_1, 108)).
assign(constructor_constructor_1_expr18, constructor_constructor_1_expr19, line(constructor_constructor_1, 108)).
method_invoc(constructor_constructor_1_expr19, m_new_instance_121, line(constructor_constructor_1, 108)).
throw(constructor_constructor_1_expr19, instantiation_exception, line(constructor_constructor_1, 108)).
throw(constructor_constructor_1_expr19, illegal_access_exception, line(constructor_constructor_1, 108)).
throw(constructor_constructor_1_expr19, illegal_argument_exception, line(constructor_constructor_1, 108)).
throw(constructor_constructor_1_expr19, invocation_target_exception, line(constructor_constructor_1, 108)).
argument(v_args_173, 1, constructor_constructor_1_expr19).
ref(v_constructor_172, constructor_constructor_1_expr19, line(constructor_constructor_1, 108)).
param(p_type_174, 1, m_new_default_implementation_constructor_122).
param(p_raw_type_175, 2, m_new_default_implementation_constructor_122).
param(p_type_176, 1, m_new_unsafe_allocator_133).
param(p_raw_type_177, 2, m_new_unsafe_allocator_133).

%reflective_type_adapter_factory_1 - com.google.gson.internal.bind.ReflectiveTypeAdapterFactory
param(p_constructor_constructor_292, 1, m_reflective_type_adapter_factory_28).
param(p_field_naming_policy_293, 2, m_reflective_type_adapter_factory_28).
param(p_excluder_294, 3, m_reflective_type_adapter_factory_28).
assign(f_constructor_constructor_295, p_constructor_constructor_292, line(reflective_type_adapter_factory_1, 55)).
assign(f_field_naming_policy_296, p_field_naming_policy_293, line(reflective_type_adapter_factory_1, 56)).
assign(f_excluder_297, p_excluder_294, line(reflective_type_adapter_factory_1, 57)).
param(p_f_298, 1, m_exclude_field_201).
param(p_serialize_299, 2, m_exclude_field_201).
param(p_f_300, 1, m_exclude_field_202).
param(p_serialize_301, 2, m_exclude_field_202).
param(p_excluder_302, 3, m_exclude_field_202).
param(p_f_303, 1, m_get_field_names_203).
param(p_field_naming_policy_304, 1, m_get_field_name_204).
param(p_f_305, 2, m_get_field_name_204).
param(p_gson_306, 1, m_create_205).
param(p_type_307, 2, m_create_205).
param(p_context_308, 1, m_create_bound_field_206).
param(p_field_309, 2, m_create_bound_field_206).
param(p_name_310, 3, m_create_bound_field_206).
param(p_field_type_311, 4, m_create_bound_field_206).
param(p_serialize_312, 5, m_create_bound_field_206).
param(p_deserialize_313, 6, m_create_bound_field_206).
param(p_writer_314, 1, m_write_207).
param(p_value_315, 2, m_write_207).
throw(m_write_207, ioexception).
throw(m_write_207, illegal_access_exception).
param(p_reader_316, 1, m_read_208).
param(p_value_317, 2, m_read_208).
throw(m_read_208, ioexception).
throw(m_read_208, illegal_access_exception).
param(p_value_318, 1, m_write_field_209).
throw(m_write_field_209, ioexception).
throw(m_write_field_209, illegal_access_exception).
param(p_gson_319, 1, m_get_field_adapter_210).
param(p_field_320, 2, m_get_field_adapter_210).
param(p_field_type_321, 3, m_get_field_adapter_210).
param(p_context_322, 1, m_get_bound_fields_211).
param(p_type_323, 2, m_get_bound_fields_211).
param(p_raw_324, 3, m_get_bound_fields_211).
param(p_name_325, 1, m_bound_field_212).
param(p_serialized_326, 2, m_bound_field_212).
param(p_deserialized_327, 3, m_bound_field_212).
param(p_value_328, 1, m_write_field_213).
throw(m_write_field_213, ioexception).
throw(m_write_field_213, illegal_access_exception).
param(p_writer_329, 1, m_write_214).
param(p_value_330, 2, m_write_214).
throw(m_write_214, ioexception).
throw(m_write_214, illegal_access_exception).
param(p_reader_331, 1, m_read_215).
param(p_value_332, 2, m_read_215).
throw(m_read_215, ioexception).
throw(m_read_215, illegal_access_exception).
param(p_constructor_333, 1, m_adapter_216).
param(p_bound_fields_334, 2, m_adapter_216).
param(p_in_335, 1, m_read_217).
throw(m_read_217, ioexception).
param(p_out_336, 1, m_write_218).
param(p_value_337, 2, m_write_218).
throw(m_write_218, ioexception).

%type_token_1 - com.google.gson.reflect.TypeToken
param(p_type_525, 1, m_type_token_341).
assign(f_type_526, type_token_1_expr3, line(type_token_1, 72)).
method_invoc(type_token_1_expr3, m_canonicalize_342, line(type_token_1, 72)).
argument(type_token_1_expr5, 1, type_token_1_expr3).
ref(t_gson_types_19, type_token_1_expr3, line(type_token_1, 72)).
method_invoc(type_token_1_expr5, m_check_not_null_343, line(type_token_1, 72)).
argument(p_type_525, 1, type_token_1_expr5).
ref(t_gson_preconditions_20, type_token_1_expr5, line(type_token_1, 72)).
assign(f_raw_type_527, type_token_1_expr8, line(type_token_1, 73)).
assign(type_token_1_expr8, type_token_1_expr10, line(type_token_1, 73)).
method_invoc(type_token_1_expr10, m_get_raw_type_344, line(type_token_1, 73)).
argument(f_type_526, 1, type_token_1_expr10).
ref(t_gson_types_19, type_token_1_expr10, line(type_token_1, 73)).
assign(f_hash_code_528, type_token_1_expr15, line(type_token_1, 74)).
method_invoc(type_token_1_expr15, m_hash_code_345, line(type_token_1, 74)).
ref(f_type_526, type_token_1_expr15, line(type_token_1, 74)).
param(p_subclass_529, 1, m_get_superclass_type_parameter_346).
return(f_raw_type_527, m_get_raw_type_112, line(type_token_1, 94)).
return(f_type_526, m_get_type_111, line(type_token_1, 101)).
param(p_cls_530, 1, m_is_assignable_from_347).
param(p_from_531, 1, m_is_assignable_from_348).
param(p_token_532, 1, m_is_assignable_from_349).
param(p_from_533, 1, m_is_assignable_from_350).
param(p_to_534, 2, m_is_assignable_from_350).
param(p_from_535, 1, m_is_assignable_from_351).
param(p_to_536, 2, m_is_assignable_from_351).
param(p_type_var_map_537, 3, m_is_assignable_from_351).
param(p_from_538, 1, m_type_equals_352).
param(p_to_539, 2, m_type_equals_352).
param(p_type_var_map_540, 3, m_type_equals_352).
param(p_token_541, 1, m_build_unexpected_type_error_353).
param(p_expected_542, 2, m_build_unexpected_type_error_353).
param(p_from_543, 1, m_matches_354).
param(p_to_544, 2, m_matches_354).
param(p_type_map_545, 3, m_matches_354).
return(f_hash_code_528, m_hash_code_355, line(type_token_1, 280)).
param(p_o_546, 1, m_equals_356).
param(p_type_547, 1, m_get_72).
return(type_token_1_expr21, m_get_72, line(type_token_1, 296)).
method_invoc(type_token_1_expr21, m_type_token_341, line(type_token_1, 296)).
argument(p_type_547, 1, type_token_1_expr21).
param(p_type_548, 1, m_get_189).
return(type_token_1_expr22, m_get_189, line(type_token_1, 303)).
method_invoc(type_token_1_expr22, m_type_token_341, line(type_token_1, 303)).
argument(p_type_548, 1, type_token_1_expr22).

%json_token_1 - com.google.gson.stream.JsonToken


% Stack Trace Info.
test_failure(failure_1, 'com.google.gson.regression.JsonAdapterNullSafeTest', 'testNullSafeBugSerialize').
trace(trace_1, failure_1, m_get_type_adapter_186, line(json_adapter_annotation_type_adapter_factory_1, 67), failure_1, target).
trace(trace_2, trace_1, m_create_185, line(json_adapter_annotation_type_adapter_factory_1, 47), failure_1, target).
trace(trace_3, trace_2, m_get_delegate_adapter_58, line(gson_1, 498), failure_1, target).
trace(trace_4, trace_3, m_create_361, line(json_adapter_null_safe_test_1, 58), failure_1, target).
trace(trace_5, trace_4, m_get_type_adapter_186, line(json_adapter_annotation_type_adapter_factory_1, 60), failure_1, target).
trace(trace_6, trace_5, m_create_185, line(json_adapter_annotation_type_adapter_factory_1, 47), failure_1, target).
trace(trace_7, trace_6, m_get_adapter_48, line(gson_1, 416), failure_1, target).
trace(trace_8, trace_7, m_to_json_71, line(gson_1, 653), failure_1, target).
trace(trace_9, trace_8, m_to_json_67, line(gson_1, 640), failure_1, target).
trace(trace_10, trace_9, m_to_json_64, line(gson_1, 595), failure_1, target).
trace(trace_11, trace_10, m_to_json_63, line(gson_1, 575), failure_1, target).
trace(trace_12, trace_11, m_test_null_safe_bug_serialize_358, line(json_adapter_null_safe_test_1, 31), failure_1, target).
trace(trace_13, trace_12, 'invoke0', line(jdk_internal_reflect_native_method_accessor_impl, -2), failure_1, non_target).
trace(trace_14, trace_13, 'invoke', line(jdk_internal_reflect_native_method_accessor_impl, 77), failure_1, non_target).
trace(trace_15, trace_14, 'invoke', line(jdk_internal_reflect_delegating_method_accessor_impl, 43), failure_1, non_target).
trace(trace_16, trace_15, 'invoke', line(java_lang_reflect_method, 569), failure_1, non_target).
trace(trace_17, trace_16, 'runTest', line(junit_framework_test_case, 177), failure_1, non_target).
trace(trace_18, trace_17, 'runBare', line(junit_framework_test_case, 142), failure_1, non_target).
trace(trace_19, trace_18, 'protect', line(junit_framework_test_result_1, 122), failure_1, non_target).
trace(trace_20, trace_19, 'runProtected', line(junit_framework_test_result, 142), failure_1, non_target).
trace(trace_21, trace_20, 'run', line(junit_framework_test_result, 125), failure_1, non_target).
trace(trace_22, trace_21, 'run', line(junit_framework_test_case, 130), failure_1, non_target).
trace(trace_23, trace_22, 'runTest', line(junit_framework_test_suite, 241), failure_1, non_target).
trace(trace_24, trace_23, 'run', line(junit_framework_test_suite, 236), failure_1, non_target).
trace(trace_25, trace_24, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_1, non_target).
trace(trace_26, trace_25, 'run', line(org_junit_runner_junit_core, 137), failure_1, non_target).
trace(trace_27, trace_26, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_1, non_target).
test_failure(failure_2, 'com.google.gson.regression.JsonAdapterNullSafeTest', 'testNullSafeBugDeserialize').
trace(trace_28, failure_2, m_get_type_adapter_186, line(json_adapter_annotation_type_adapter_factory_1, 67), failure_2, target).
trace(trace_29, trace_28, m_create_185, line(json_adapter_annotation_type_adapter_factory_1, 47), failure_2, target).
trace(trace_30, trace_29, m_get_delegate_adapter_58, line(gson_1, 498), failure_2, target).
trace(trace_31, trace_30, m_create_361, line(json_adapter_null_safe_test_1, 58), failure_2, target).
trace(trace_32, trace_31, m_get_type_adapter_186, line(json_adapter_annotation_type_adapter_factory_1, 60), failure_2, target).
trace(trace_33, trace_32, m_create_185, line(json_adapter_annotation_type_adapter_factory_1, 47), failure_2, target).
trace(trace_34, trace_33, m_get_adapter_48, line(gson_1, 416), failure_2, target).
trace(trace_35, trace_34, m_from_json_86, line(gson_1, 878), failure_2, target).
trace(trace_36, trace_35, m_from_json_84, line(gson_1, 844), failure_2, target).
trace(trace_37, trace_36, m_from_json_82, line(gson_1, 793), failure_2, target).
trace(trace_38, trace_37, m_from_json_81, line(gson_1, 765), failure_2, target).
trace(trace_39, trace_38, m_test_null_safe_bug_deserialize_360, line(json_adapter_null_safe_test_1, 35), failure_2, target).
trace(trace_40, trace_39, 'invoke0', line(jdk_internal_reflect_native_method_accessor_impl, -2), failure_2, non_target).
trace(trace_41, trace_40, 'invoke', line(jdk_internal_reflect_native_method_accessor_impl, 77), failure_2, non_target).
trace(trace_42, trace_41, 'invoke', line(jdk_internal_reflect_delegating_method_accessor_impl, 43), failure_2, non_target).
trace(trace_43, trace_42, 'invoke', line(java_lang_reflect_method, 569), failure_2, non_target).
trace(trace_44, trace_43, 'runTest', line(junit_framework_test_case, 177), failure_2, non_target).
trace(trace_45, trace_44, 'runBare', line(junit_framework_test_case, 142), failure_2, non_target).
trace(trace_46, trace_45, 'protect', line(junit_framework_test_result_1, 122), failure_2, non_target).
trace(trace_47, trace_46, 'runProtected', line(junit_framework_test_result, 142), failure_2, non_target).
trace(trace_48, trace_47, 'run', line(junit_framework_test_result, 125), failure_2, non_target).
trace(trace_49, trace_48, 'run', line(junit_framework_test_case, 130), failure_2, non_target).
trace(trace_50, trace_49, 'runTest', line(junit_framework_test_suite, 241), failure_2, non_target).
trace(trace_51, trace_50, 'run', line(junit_framework_test_suite, 236), failure_2, non_target).
trace(trace_52, trace_51, 'run', line(org_junit_internal_runners_junit38_class_runner, 90), failure_2, non_target).
trace(trace_53, trace_52, 'run', line(org_junit_runner_junit_core, 137), failure_2, non_target).
trace(trace_54, trace_53, 'main', line(kr_ac_seoultech_selab_logicfl_coverage_junit4_test_runner, 36), failure_2, non_target).



%%% End of Static Facts

%%% Values

val(gson_1_expr107, null, line(gson_1, 392)).
val(v_cached_77, null, line(gson_1, 393)).
val(gson_1_expr109, null, line(gson_1, 397)).
val(v_thread_calls_78, null, line(gson_1, 399)).
val(gson_1_expr116, null, line(gson_1, 406)).
val(v_ongoing_call_80, null, line(gson_1, 407)).
val(v_type_adapter_264, null, line(json_adapter_annotation_type_adapter_factory_1, 67)).



%%% End of Facts