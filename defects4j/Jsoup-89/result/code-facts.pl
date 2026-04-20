%%% Code Facts
:- style_check(-discontiguous).
%%% Classes
class(attribute_test_1, 'org.jsoup.nodes.AttributeTest').
class(attribute_1, 'org.jsoup.nodes.Attribute').
class(validate_1, 'org.jsoup.helper.Validate').

%%% Methods
%attribute_test_1 - org.jsoup.nodes.AttributeTest
method(m_html_36, range(attribute_test_1, 153, 200, 9, 13)).
method(m_test_with_supplementary_character_in_attribute_key_and_value_37, range(attribute_test_1, 359, 307, 15, 20)).
method(m_validates_keys_not_empty_38, range(attribute_test_1, 672, 146, 22, 24)).
method(m_validates_keys_not_empty_via_set_39, range(attribute_test_1, 824, 180, 26, 29)).
method(m_boolean_attributes_are_empty_string_values_40, range(attribute_test_1, 1010, 384, 31, 39)).
method(m_setters_on_orphan_attribute_41, range(attribute_test_1, 1400, 354, 41, 49)).
%attribute_1 - org.jsoup.nodes.Attribute
method(m_attribute_14, range(attribute_1, 993, 283, 26, 34)).
method(m_attribute_15, range(attribute_1, 1282, 596, 36, 49)).
method(m_get_key_17, range(attribute_1, 1884, 125, 51, 57)).
method(m_set_key_18, range(attribute_1, 2015, 488, 59, 73)).
method(m_get_value_19, range(attribute_1, 2509, 156, 75, 81)).
method(m_set_value_20, range(attribute_1, 2671, 433, 83, 96)).
method(m_html_22, range(attribute_1, 3110, 431, 98, 111)).
method(m_html_23, range(attribute_1, 3547, 372, 113, 120)).
method(m_html_24, range(attribute_1, 3929, 129, 122, 124)).
method(m_to_string_25, range(attribute_1, 4064, 191, 126, 133)).
method(m_create_from_encoded_26, range(attribute_1, 4261, 525, 135, 144)).
method(m_is_data_attribute_27, range(attribute_1, 4792, 80, 146, 148)).
method(m_is_data_attribute_28, range(attribute_1, 4878, 163, 150, 152)).
method(m_should_collapse_attribute_29, range(attribute_1, 5047, 330, 154, 162)).
method(m_should_collapse_attribute_30, range(attribute_1, 5383, 329, 164, 168)).
method(m_is_boolean_attribute_31, range(attribute_1, 5718, 161, 170, 175)).
method(m_is_boolean_attribute_32, range(attribute_1, 5885, 230, 177, 182)).
method(m_equals_33, range(attribute_1, 6121, 403, 184, 191)).
method(m_hash_code_34, range(attribute_1, 6530, 218, 193, 198)).
method(m_clone_35, range(attribute_1, 6754, 208, 200, 207)).
%validate_1 - org.jsoup.helper.Validate
method(m_validate_1, range(validate_1, 136, 21, 8, 8)).
method(m_not_null_2, range(validate_1, 163, 240, 10, 17)).
method(m_not_null_3, range(validate_1, 409, 286, 19, 27)).
method(m_is_true_4, range(validate_1, 701, 217, 29, 36)).
method(m_is_true_5, range(validate_1, 924, 274, 38, 46)).
method(m_is_false_6, range(validate_1, 1204, 219, 48, 55)).
method(m_is_false_7, range(validate_1, 1429, 275, 57, 65)).
method(m_no_null_elements_8, range(validate_1, 1710, 249, 67, 73)).
method(m_no_null_elements_9, range(validate_1, 1965, 362, 75, 84)).
method(m_not_empty_10, range(validate_1, 2333, 280, 86, 93)).
method(m_not_empty_12, range(validate_1, 2619, 325, 95, 103)).
method(m_fail_13, range(validate_1, 2950, 165, 105, 111)).

%%% Blocks
%attribute_test_1 - org.jsoup.nodes.AttributeTest
block(attribute_test_1_block1, block, attribute_test_1_code4, body, range(attribute_test_1, 1445, 309, 41, 49)).
%attribute_1 - org.jsoup.nodes.Attribute
block(attribute_1_block1, block, attribute_1_code11, body, range(attribute_1, 1237, 39, 32, 34)).
block(attribute_1_block2, block, attribute_1_code12, body, range(attribute_1, 1645, 233, 42, 49)).
block(attribute_1_block3, block, attribute_1_code20, body, range(attribute_1, 2155, 348, 63, 73)).
block(attribute_1_block4, block, attribute_1_stmt11, then_statement, range(attribute_1, 2333, 140, 67, 71)).
block(attribute_1_block5, block, attribute_1_code21, body, range(attribute_1, 2810, 294, 87, 96)).
%validate_1 - org.jsoup.helper.Validate
block(validate_1_block1, block, validate_1_code3, body, range(validate_1, 296, 107, 14, 17)).
block(validate_1_block2, block, validate_1_code4, body, range(validate_1, 2478, 135, 90, 93)).

%%% Statements
%attribute_test_1 - org.jsoup.nodes.AttributeTest
stmt(attribute_test_1_stmt1, variable_declaration_statement, attribute_test_1_block1, (statements, 0), range(attribute_test_1, 1455, 45, 42, 42)).
stmt(attribute_test_1_stmt2, expression_statement, attribute_test_1_block1, (statements, 1), range(attribute_test_1, 1509, 21, 43, 43)).
stmt(attribute_test_1_stmt3, variable_declaration_statement, attribute_test_1_block1, (statements, 2), range(attribute_test_1, 1539, 38, 44, 44)).
%attribute_1 - org.jsoup.nodes.Attribute
stmt(attribute_1_stmt1, constructor_invocation, attribute_1_block1, (statements, 0), range(attribute_1, 1247, 23, 33, 33)).
stmt(attribute_1_stmt2, expression_statement, attribute_1_block2, (statements, 0), range(attribute_1, 1655, 22, 43, 43)).
stmt(attribute_1_stmt3, expression_statement, attribute_1_block2, (statements, 1), range(attribute_1, 1686, 17, 44, 44)).
stmt(attribute_1_stmt4, expression_statement, attribute_1_block2, (statements, 2), range(attribute_1, 1712, 23, 45, 45)).
stmt(attribute_1_stmt5, expression_statement, attribute_1_block2, (statements, 3), range(attribute_1, 1803, 15, 46, 46)).
stmt(attribute_1_stmt6, expression_statement, attribute_1_block2, (statements, 4), range(attribute_1, 1827, 15, 47, 47)).
stmt(attribute_1_stmt7, expression_statement, attribute_1_block2, (statements, 5), range(attribute_1, 1851, 21, 48, 48)).
stmt(attribute_1_stmt8, expression_statement, attribute_1_block3, (statements, 0), range(attribute_1, 2165, 22, 64, 64)).
stmt(attribute_1_stmt9, expression_statement, attribute_1_block3, (statements, 1), range(attribute_1, 2196, 17, 65, 65)).
stmt(attribute_1_stmt10, expression_statement, attribute_1_block3, (statements, 2), range(attribute_1, 2222, 23, 66, 66)).
stmt(attribute_1_stmt11, if_statement, attribute_1_block3, (statements, 3), range(attribute_1, 2313, 160, 67, 71)).
stmt(attribute_1_stmt12, expression_statement, attribute_1_block3, (statements, 4), range(attribute_1, 2482, 15, 72, 72)).
stmt(attribute_1_stmt13, variable_declaration_statement, attribute_1_block5, (statements, 0), range(attribute_1, 2820, 37, 88, 88)).
%validate_1 - org.jsoup.helper.Validate
stmt(validate_1_stmt1, if_statement, validate_1_block1, (statements, 0), range(validate_1, 306, 91, 15, 16)).
stmt(validate_1_stmt2, if_statement, validate_1_block2, (statements, 0), range(validate_1, 2488, 119, 91, 92)).

%%% Expressions
%attribute_test_1 - org.jsoup.nodes.AttributeTest
expr(attribute_test_1_expr1, class_instance_creation, attribute_test_1_code6, initializer, range(attribute_test_1, 1472, 27, 42, 42), "new Attribute(\"one\",\"two\")").
expr(attribute_test_1_expr2, method_invocation, attribute_test_1_stmt2, expression, range(attribute_test_1, 1509, 20, 43, 43), "attr.setKey(\"three\")").
expr(attribute_test_1_expr3, method_invocation, attribute_test_1_code9, initializer, range(attribute_test_1, 1555, 21, 44, 44), "attr.setValue(\"four\")").
%attribute_1 - org.jsoup.nodes.Attribute
expr(attribute_1_expr1, array_initializer, attribute_1_code10, initializer, range(attribute_1, 415, 407, 15, 20), "{\"allowfullscreen\",\"async\",\"autofocus\",\"checked\",\"compact\",\"declare\",\"default\",\"defer\",\"disabled\",\"formnovalidate\",\"hidden\",\"inert\",\"ismap\",\"itemscope\",\"multiple\",\"muted\",\"nohref\",\"noresize\",\"noshade\",\"novalidate\",\"nowrap\",\"open\",\"readonly\",\"required\",\"reversed\",\"seamless\",\"selected\",\"sortable\",\"truespeed\",\"typemustmatch\"}").
expr(attribute_1_expr2, constructor_invocation, attribute_1_block1, (statements, 0), range(attribute_1, 1247, 23, 33, 33), "this(key,value,null);").
expr(attribute_1_expr3, method_invocation, attribute_1_stmt2, expression, range(attribute_1, 1655, 21, 43, 43), "Validate.notNull(key)").
expr(attribute_1_expr4, assignment, attribute_1_stmt3, expression, range(attribute_1, 1686, 16, 44, 44), "key=key.trim()").
expr(attribute_1_expr5, method_invocation, attribute_1_expr4, right_hand_side, range(attribute_1, 1692, 10, 44, 44), "key.trim()").
expr(attribute_1_expr6, method_invocation, attribute_1_stmt4, expression, range(attribute_1, 1712, 22, 45, 45), "Validate.notEmpty(key)").
expr(attribute_1_expr8, field_access, attribute_1_expr7, left_hand_side, range(attribute_1, 1803, 8, 46, 46), "this.key").
expr(attribute_1_expr9, this_expression, f_key_23, expression, range(attribute_1, 1803, 4, 46, 46), "this").
expr(attribute_1_expr7, assignment, attribute_1_stmt5, expression, range(attribute_1, 1803, 14, 46, 46), "this.key=key").
expr(attribute_1_expr10, assignment, attribute_1_stmt6, expression, range(attribute_1, 1827, 14, 47, 47), "this.val=val").
expr(attribute_1_expr11, field_access, attribute_1_expr10, left_hand_side, range(attribute_1, 1827, 8, 47, 47), "this.val").
expr(attribute_1_expr12, this_expression, f_val_24, expression, range(attribute_1, 1827, 4, 47, 47), "this").
expr(attribute_1_expr13, assignment, attribute_1_stmt7, expression, range(attribute_1, 1851, 20, 48, 48), "this.parent=parent").
expr(attribute_1_expr14, field_access, attribute_1_expr13, left_hand_side, range(attribute_1, 1851, 11, 48, 48), "this.parent").
expr(attribute_1_expr15, this_expression, f_parent_25, expression, range(attribute_1, 1851, 4, 48, 48), "this").
expr(attribute_1_expr16, method_invocation, attribute_1_stmt8, expression, range(attribute_1, 2165, 21, 64, 64), "Validate.notNull(key)").
expr(attribute_1_expr17, assignment, attribute_1_stmt9, expression, range(attribute_1, 2196, 16, 65, 65), "key=key.trim()").
expr(attribute_1_expr18, method_invocation, attribute_1_expr17, right_hand_side, range(attribute_1, 2202, 10, 65, 65), "key.trim()").
expr(attribute_1_expr19, method_invocation, attribute_1_stmt10, expression, range(attribute_1, 2222, 22, 66, 66), "Validate.notEmpty(key)").
expr(attribute_1_expr20, infix_expression, attribute_1_stmt11, expression, range(attribute_1, 2317, 14, 67, 67), "parent != null").
expr(attribute_1_expr21, assignment, attribute_1_stmt12, expression, range(attribute_1, 2482, 14, 72, 72), "this.key=key").
expr(attribute_1_expr22, field_access, attribute_1_expr21, left_hand_side, range(attribute_1, 2482, 8, 72, 72), "this.key").
expr(attribute_1_expr23, this_expression, f_key_23, expression, range(attribute_1, 2482, 4, 72, 72), "this").
expr(attribute_1_expr24, method_invocation, attribute_1_code23, initializer, range(attribute_1, 2836, 20, 88, 88), "parent.get(this.key)").
expr(attribute_1_expr25, field_access, attribute_1_expr24, (arguments, 0), range(attribute_1, 2847, 8, 88, 88), "this.key").
expr(attribute_1_expr26, this_expression, f_key_23, expression, range(attribute_1, 2847, 4, 88, 88), "this").
%validate_1 - org.jsoup.helper.Validate
expr(validate_1_expr1, infix_expression, validate_1_stmt1, expression, range(validate_1, 310, 11, 15, 15), "obj == null").
expr(validate_1_expr2, infix_expression, validate_1_stmt2, expression, range(validate_1, 2492, 38, 91, 91), "string == null || string.length() == 0").
expr(validate_1_expr3, infix_expression, validate_1_expr2, left_operand, range(validate_1, 2492, 14, 91, 91), "string == null").
expr(validate_1_expr4, infix_expression, validate_1_expr2, right_operand, range(validate_1, 2510, 20, 91, 91), "string.length() == 0").
expr(validate_1_expr5, method_invocation, validate_1_expr4, left_operand, range(validate_1, 2510, 15, 91, 91), "string.length()").

%%% Names
%attribute_test_1 - org.jsoup.nodes.AttributeTest
name(t_attribute_test_2, simple_name, attribute_test_1_code2, name, range(attribute_test_1, 133, 13, 8, 8), 'AttributeTest').
name(v_attr_44, simple_name, attribute_test_1_code6, name, range(attribute_test_1, 1465, 4, 42, 42), 'attr').
name(v_attr_44, simple_name, attribute_test_1_expr2, expression, range(attribute_test_1, 1509, 4, 43, 43), 'attr').
name(m_set_key_18, simple_name, attribute_test_1_expr2, name, range(attribute_test_1, 1514, 6, 43, 43), 'setKey').
name(v_old_val_45, simple_name, attribute_test_1_code9, name, range(attribute_test_1, 1546, 6, 44, 44), 'oldVal').
name(v_attr_44, simple_name, attribute_test_1_expr3, expression, range(attribute_test_1, 1555, 4, 44, 44), 'attr').
name(m_set_value_20, simple_name, attribute_test_1_expr3, name, range(attribute_test_1, 1560, 8, 44, 44), 'setValue').
%attribute_1 - org.jsoup.nodes.Attribute
name(f_boolean_attributes_17, simple_name, attribute_1_code10, name, range(attribute_1, 395, 17, 15, 15), 'booleanAttributes').
name(p_key_18, simple_name, attribute_1_stmt1, (arguments, 0), range(attribute_1, 1252, 3, 33, 33), 'key').
name(p_value_19, simple_name, attribute_1_stmt1, (arguments, 1), range(attribute_1, 1257, 5, 33, 33), 'value').
name(m_attribute_15, simple_name, attribute_1_code12, name, range(attribute_1, 1592, 9, 42, 42), 'Attribute').
name(p_key_20, simple_name, attribute_1_code14, name, range(attribute_1, 1609, 3, 42, 42), 'key').
name(p_val_21, simple_name, attribute_1_code16, name, range(attribute_1, 1621, 3, 42, 42), 'val').
name(p_parent_22, simple_name, attribute_1_code18, name, range(attribute_1, 1637, 6, 42, 42), 'parent').
name(t_validate_1, simple_name, attribute_1_expr3, expression, range(attribute_1, 1655, 8, 43, 43), 'Validate').
name(m_not_null_2, simple_name, attribute_1_expr3, name, range(attribute_1, 1664, 7, 43, 43), 'notNull').
name(p_key_20, simple_name, attribute_1_expr3, (arguments, 0), range(attribute_1, 1672, 3, 43, 43), 'key').
name(p_key_20, simple_name, attribute_1_expr4, left_hand_side, range(attribute_1, 1686, 3, 44, 44), 'key').
name(p_key_20, simple_name, attribute_1_expr5, expression, range(attribute_1, 1692, 3, 44, 44), 'key').
name(m_trim_16, simple_name, attribute_1_expr5, name, range(attribute_1, 1696, 4, 44, 44), 'trim').
name(t_validate_1, simple_name, attribute_1_expr6, expression, range(attribute_1, 1712, 8, 45, 45), 'Validate').
name(m_not_empty_10, simple_name, attribute_1_expr6, name, range(attribute_1, 1721, 8, 45, 45), 'notEmpty').
name(p_key_20, simple_name, attribute_1_expr6, (arguments, 0), range(attribute_1, 1730, 3, 45, 45), 'key').
name(f_key_23, simple_name, attribute_1_expr8, name, range(attribute_1, 1808, 3, 46, 46), 'key').
name(p_key_20, simple_name, attribute_1_expr7, right_hand_side, range(attribute_1, 1814, 3, 46, 46), 'key').
name(f_val_24, simple_name, attribute_1_expr11, name, range(attribute_1, 1832, 3, 47, 47), 'val').
name(p_val_21, simple_name, attribute_1_expr10, right_hand_side, range(attribute_1, 1838, 3, 47, 47), 'val').
name(f_parent_25, simple_name, attribute_1_expr14, name, range(attribute_1, 1856, 6, 48, 48), 'parent').
name(p_parent_22, simple_name, attribute_1_expr13, right_hand_side, range(attribute_1, 1865, 6, 48, 48), 'parent').
name(t_validate_1, simple_name, attribute_1_expr16, expression, range(attribute_1, 2165, 8, 64, 64), 'Validate').
name(m_not_null_2, simple_name, attribute_1_expr16, name, range(attribute_1, 2174, 7, 64, 64), 'notNull').
name(p_key_26, simple_name, attribute_1_expr16, (arguments, 0), range(attribute_1, 2182, 3, 64, 64), 'key').
name(p_key_26, simple_name, attribute_1_expr17, left_hand_side, range(attribute_1, 2196, 3, 65, 65), 'key').
name(p_key_26, simple_name, attribute_1_expr18, expression, range(attribute_1, 2202, 3, 65, 65), 'key').
name(m_trim_16, simple_name, attribute_1_expr18, name, range(attribute_1, 2206, 4, 65, 65), 'trim').
name(t_validate_1, simple_name, attribute_1_expr19, expression, range(attribute_1, 2222, 8, 66, 66), 'Validate').
name(m_not_empty_10, simple_name, attribute_1_expr19, name, range(attribute_1, 2231, 8, 66, 66), 'notEmpty').
name(p_key_26, simple_name, attribute_1_expr19, (arguments, 0), range(attribute_1, 2240, 3, 66, 66), 'key').
name(f_parent_25, simple_name, attribute_1_expr20, left_operand, range(attribute_1, 2317, 6, 67, 67), 'parent').
name(f_key_23, simple_name, attribute_1_expr22, name, range(attribute_1, 2487, 3, 72, 72), 'key').
name(p_key_26, simple_name, attribute_1_expr21, right_hand_side, range(attribute_1, 2493, 3, 72, 72), 'key').
name(v_old_val_28, simple_name, attribute_1_code23, name, range(attribute_1, 2827, 6, 88, 88), 'oldVal').
name(f_parent_25, simple_name, attribute_1_expr24, expression, range(attribute_1, 2836, 6, 88, 88), 'parent').
name(m_get_21, simple_name, attribute_1_expr24, name, range(attribute_1, 2843, 3, 88, 88), 'get').
name(f_key_23, simple_name, attribute_1_expr25, name, range(attribute_1, 2852, 3, 88, 88), 'key').
%validate_1 - org.jsoup.helper.Validate
name(p_obj_1, simple_name, validate_1_expr1, left_operand, range(validate_1, 310, 3, 15, 15), 'obj').
name(p_string_13, simple_name, validate_1_expr3, left_operand, range(validate_1, 2492, 6, 91, 91), 'string').
name(p_string_13, simple_name, validate_1_expr5, expression, range(validate_1, 2510, 6, 91, 91), 'string').
name(m_length_11, simple_name, validate_1_expr5, name, range(validate_1, 2517, 6, 91, 91), 'length').

%%% Literals
%attribute_test_1 - org.jsoup.nodes.AttributeTest
literal(attribute_test_1_literal1, string_literal, attribute_test_1_expr1, (arguments, 0), range(attribute_test_1, 1486, 5, 42, 42), "one").
literal(attribute_test_1_literal2, string_literal, attribute_test_1_expr1, (arguments, 1), range(attribute_test_1, 1493, 5, 42, 42), "two").
literal(attribute_test_1_literal3, string_literal, attribute_test_1_expr2, (arguments, 0), range(attribute_test_1, 1521, 7, 43, 43), "three").
literal(attribute_test_1_literal4, string_literal, attribute_test_1_expr3, (arguments, 0), range(attribute_test_1, 1569, 6, 44, 44), "four").
%attribute_1 - org.jsoup.nodes.Attribute
literal(attribute_1_literal1, null_literal, attribute_1_stmt1, (arguments, 2), range(attribute_1, 1264, 4, 33, 33), null).
literal(attribute_1_literal2, null_literal, attribute_1_expr20, right_operand, range(attribute_1, 2327, 4, 67, 67), null).
%validate_1 - org.jsoup.helper.Validate
literal(validate_1_literal1, null_literal, validate_1_expr1, right_operand, range(validate_1, 317, 4, 15, 15), null).
literal(validate_1_literal2, null_literal, validate_1_expr3, right_operand, range(validate_1, 2502, 4, 91, 91), null).
literal(validate_1_literal3, number_literal, validate_1_expr4, right_operand, range(validate_1, 2529, 1, 91, 91), 0).

%%% Other Code Entities
%attribute_test_1 - org.jsoup.nodes.AttributeTest
code(attribute_test_1_code1, compilation_unit, range(attribute_test_1, 0, 1757, 1, -1)).
code(attribute_test_1_code3, modifier, attribute_test_1_code2, (modifiers, 0), range(attribute_test_1, 120, 6, 8, 8)).
code(attribute_test_1_code2, type_declaration, attribute_test_1_code1, (types, 0), range(attribute_test_1, 120, 1636, 8, 50)).
code(attribute_test_1_code4, method_declaration, attribute_test_1_code2, (body_declarations, 5), range(attribute_test_1, 1400, 354, 41, 49)).
code(attribute_test_1_code5, simple_type, attribute_test_1_stmt1, type, range(attribute_test_1, 1455, 9, 42, 42)).
code(attribute_test_1_code6, variable_declaration_fragment, attribute_test_1_stmt1, (fragments, 0), range(attribute_test_1, 1465, 34, 42, 42)).
code(attribute_test_1_code7, simple_type, attribute_test_1_expr1, type, range(attribute_test_1, 1476, 9, 42, 42)).
code(attribute_test_1_code8, simple_type, attribute_test_1_stmt3, type, range(attribute_test_1, 1539, 6, 44, 44)).
code(attribute_test_1_code9, variable_declaration_fragment, attribute_test_1_stmt3, (fragments, 0), range(attribute_test_1, 1546, 30, 44, 44)).
%attribute_1 - org.jsoup.nodes.Attribute
code(attribute_1_code1, compilation_unit, range(attribute_1, 0, 6965, 1, -1)).
code(attribute_1_code2, type_declaration, attribute_1_code1, (types, 0), range(attribute_1, 216, 6748, 11, 208)).
code(attribute_1_code3, field_declaration, attribute_1_code2, (body_declarations, 0), range(attribute_1, 365, 458, 15, 20)).
code(attribute_1_code4, modifier, attribute_1_code3, (modifiers, 0), range(attribute_1, 365, 7, 15, 15)).
code(attribute_1_code5, modifier, attribute_1_code3, (modifiers, 1), range(attribute_1, 373, 6, 15, 15)).
code(attribute_1_code6, modifier, attribute_1_code3, (modifiers, 2), range(attribute_1, 380, 5, 15, 15)).
code(attribute_1_code8, simple_type, attribute_1_code7, element_type, range(attribute_1, 386, 6, 15, 15)).
code(attribute_1_code7, array_type, attribute_1_code3, type, range(attribute_1, 386, 8, 15, 15)).
code(attribute_1_code9, dimension, attribute_1_code7, (dimensions, 0), range(attribute_1, 392, 2, 15, 15)).
code(attribute_1_code10, variable_declaration_fragment, attribute_1_code3, (fragments, 0), range(attribute_1, 395, 427, 15, 20)).
code(attribute_1_code11, method_declaration, attribute_1_code2, (body_declarations, 4), range(attribute_1, 993, 283, 26, 34)).
code(attribute_1_code12, method_declaration, attribute_1_code2, (body_declarations, 5), range(attribute_1, 1282, 596, 36, 49)).
code(attribute_1_code13, modifier, attribute_1_code12, (modifiers, 0), range(attribute_1, 1585, 6, 42, 42)).
code(attribute_1_code15, simple_type, attribute_1_code14, type, range(attribute_1, 1602, 6, 42, 42)).
code(attribute_1_code14, single_variable_declaration, attribute_1_code12, (parameters, 0), range(attribute_1, 1602, 10, 42, 42)).
code(attribute_1_code16, single_variable_declaration, attribute_1_code12, (parameters, 1), range(attribute_1, 1614, 10, 42, 42)).
code(attribute_1_code17, simple_type, attribute_1_code16, type, range(attribute_1, 1614, 6, 42, 42)).
code(attribute_1_code19, simple_type, attribute_1_code18, type, range(attribute_1, 1626, 10, 42, 42)).
code(attribute_1_code18, single_variable_declaration, attribute_1_code12, (parameters, 2), range(attribute_1, 1626, 17, 42, 42)).
code(attribute_1_code20, method_declaration, attribute_1_code2, (body_declarations, 7), range(attribute_1, 2015, 488, 59, 73)).
code(attribute_1_code21, method_declaration, attribute_1_code2, (body_declarations, 9), range(attribute_1, 2671, 433, 83, 96)).
code(attribute_1_code22, simple_type, attribute_1_stmt13, type, range(attribute_1, 2820, 6, 88, 88)).
code(attribute_1_code23, variable_declaration_fragment, attribute_1_stmt13, (fragments, 0), range(attribute_1, 2827, 29, 88, 88)).
%validate_1 - org.jsoup.helper.Validate
code(validate_1_code1, compilation_unit, range(validate_1, 0, 3118, 1, -1)).
code(validate_1_code2, type_declaration, validate_1_code1, (types, 0), range(validate_1, 27, 3090, 3, 112)).
code(validate_1_code3, method_declaration, validate_1_code2, (body_declarations, 1), range(validate_1, 163, 240, 10, 17)).
code(validate_1_code4, method_declaration, validate_1_code2, (body_declarations, 9), range(validate_1, 2333, 280, 86, 93)).

%%% Name References

name_ref(t_attribute_test_2, type, 'AttributeTest', 'Lorg/jsoup/nodes/AttributeTest;').
name_ref(t_validate_1, type, 'Validate', 'Lorg/jsoup/helper/Validate;').
name_ref(p_key_18, param, 'key', 'attribute_1;key_line_33').
name_ref(p_value_19, param, 'value', 'attribute_1;value_line_33').
name_ref(v_attr_44, var, 'attr', 'Lorg/jsoup/nodes/AttributeTest;.settersOnOrphanAttribute()V#attr').
name_ref(v_old_val_28, var, 'oldVal', 'Lorg/jsoup/nodes/Attribute;.setValue(Ljava/lang/String;)Ljava/lang/String;#oldVal').
name_ref(v_old_val_45, var, 'oldVal', 'Lorg/jsoup/nodes/AttributeTest;.settersOnOrphanAttribute()V#oldVal').
name_ref(p_accum_31, param, 'accum', 'Lorg/jsoup/nodes/Attribute;.html(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Appendable;Lorg/jsoup/nodes/Document$OutputSettings;)V|Ljava/io/IOException;#accum#0#2').
name_ref(p_accum_33, param, 'accum', 'Lorg/jsoup/nodes/Attribute;.html(Ljava/lang/Appendable;Lorg/jsoup/nodes/Document$OutputSettings;)V|Ljava/io/IOException;#accum#0#0').
name_ref(p_encoded_value_36, param, 'encodedValue', 'Lorg/jsoup/nodes/Attribute;.createFromEncoded(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Attribute;#encodedValue#0#1').
name_ref(p_key_18, param, 'key', 'Lorg/jsoup/nodes/Attribute;.(Ljava/lang/String;Ljava/lang/String;)V#key#0#0').
name_ref(p_key_20, param, 'key', 'Lorg/jsoup/nodes/Attribute;.(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V#key#0#0').
name_ref(p_key_26, param, 'key', 'Lorg/jsoup/nodes/Attribute;.setKey(Ljava/lang/String;)V#key#0#0').
name_ref(p_key_29, param, 'key', 'Lorg/jsoup/nodes/Attribute;.html(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Appendable;Lorg/jsoup/nodes/Document$OutputSettings;)V|Ljava/io/IOException;#key#0#0').
name_ref(p_key_37, param, 'key', 'Lorg/jsoup/nodes/Attribute;.isDataAttribute(Ljava/lang/String;)Z#key#0#0').
name_ref(p_key_39, param, 'key', 'Lorg/jsoup/nodes/Attribute;.shouldCollapseAttribute(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/nodes/Document$OutputSettings;)Z#key#0#0').
name_ref(p_key_42, param, 'key', 'Lorg/jsoup/nodes/Attribute;.isBooleanAttribute(Ljava/lang/String;)Z#key#0#0').
name_ref(p_msg_12, param, 'msg', 'Lorg/jsoup/helper/Validate;.noNullElements([Ljava/lang/Object;Ljava/lang/String;)V#msg#0#1').
name_ref(p_msg_15, param, 'msg', 'Lorg/jsoup/helper/Validate;.notEmpty(Ljava/lang/String;Ljava/lang/String;)V#msg#0#1').
name_ref(p_msg_16, param, 'msg', 'Lorg/jsoup/helper/Validate;.fail(Ljava/lang/String;)V#msg#0#0').
name_ref(p_msg_3, param, 'msg', 'Lorg/jsoup/helper/Validate;.notNull(Ljava/lang/Object;Ljava/lang/String;)V#msg#0#1').
name_ref(p_msg_6, param, 'msg', 'Lorg/jsoup/helper/Validate;.isTrue(ZLjava/lang/String;)V#msg#0#1').
name_ref(p_msg_9, param, 'msg', 'Lorg/jsoup/helper/Validate;.isFalse(ZLjava/lang/String;)V#msg#0#1').
name_ref(p_o_43, param, 'o', 'Lorg/jsoup/nodes/Attribute;.equals(Ljava/lang/Object;)Z#o#0#0').
name_ref(p_obj_1, param, 'obj', 'Lorg/jsoup/helper/Validate;.notNull(Ljava/lang/Object;)V#obj#0#0').
name_ref(p_obj_2, param, 'obj', 'Lorg/jsoup/helper/Validate;.notNull(Ljava/lang/Object;Ljava/lang/String;)V#obj#0#0').
name_ref(p_objects_10, param, 'objects', 'Lorg/jsoup/helper/Validate;.noNullElements([Ljava/lang/Object;)V#objects#0#0').
name_ref(p_objects_11, param, 'objects', 'Lorg/jsoup/helper/Validate;.noNullElements([Ljava/lang/Object;Ljava/lang/String;)V#objects#0#0').
name_ref(p_out_32, param, 'out', 'Lorg/jsoup/nodes/Attribute;.html(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Appendable;Lorg/jsoup/nodes/Document$OutputSettings;)V|Ljava/io/IOException;#out#0#3').
name_ref(p_out_34, param, 'out', 'Lorg/jsoup/nodes/Attribute;.html(Ljava/lang/Appendable;Lorg/jsoup/nodes/Document$OutputSettings;)V|Ljava/io/IOException;#out#0#1').
name_ref(p_out_38, param, 'out', 'Lorg/jsoup/nodes/Attribute;.shouldCollapseAttribute(Lorg/jsoup/nodes/Document$OutputSettings;)Z#out#0#0').
name_ref(p_out_41, param, 'out', 'Lorg/jsoup/nodes/Attribute;.shouldCollapseAttribute(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/nodes/Document$OutputSettings;)Z#out#0#2').
name_ref(p_parent_22, param, 'parent', 'Lorg/jsoup/nodes/Attribute;.(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V#parent#0#2').
name_ref(p_string_13, param, 'string', 'Lorg/jsoup/helper/Validate;.notEmpty(Ljava/lang/String;)V#string#0#0').
name_ref(p_string_14, param, 'string', 'Lorg/jsoup/helper/Validate;.notEmpty(Ljava/lang/String;Ljava/lang/String;)V#string#0#0').
name_ref(p_unencoded_key_35, param, 'unencodedKey', 'Lorg/jsoup/nodes/Attribute;.createFromEncoded(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Attribute;#unencodedKey#0#0').
name_ref(p_val_21, param, 'val', 'Lorg/jsoup/nodes/Attribute;.(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V#val#0#1').
name_ref(p_val_27, param, 'val', 'Lorg/jsoup/nodes/Attribute;.setValue(Ljava/lang/String;)Ljava/lang/String;#val#0#0').
name_ref(p_val_30, param, 'val', 'Lorg/jsoup/nodes/Attribute;.html(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Appendable;Lorg/jsoup/nodes/Document$OutputSettings;)V|Ljava/io/IOException;#val#0#1').
name_ref(p_val_4, param, 'val', 'Lorg/jsoup/helper/Validate;.isTrue(Z)V#val#0#0').
name_ref(p_val_40, param, 'val', 'Lorg/jsoup/nodes/Attribute;.shouldCollapseAttribute(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/nodes/Document$OutputSettings;)Z#val#0#1').
name_ref(p_val_5, param, 'val', 'Lorg/jsoup/helper/Validate;.isTrue(ZLjava/lang/String;)V#val#0#0').
name_ref(p_val_7, param, 'val', 'Lorg/jsoup/helper/Validate;.isFalse(Z)V#val#0#0').
name_ref(p_val_8, param, 'val', 'Lorg/jsoup/helper/Validate;.isFalse(ZLjava/lang/String;)V#val#0#0').
name_ref(p_value_19, param, 'value', 'Lorg/jsoup/nodes/Attribute;.(Ljava/lang/String;Ljava/lang/String;)V#value#0#1').
name_ref(f_boolean_attributes_17, field, 'booleanAttributes', 'Lorg/jsoup/nodes/Attribute;.booleanAttributes)[Ljava/lang/String;').
name_ref(f_key_23, field, 'key', 'Lorg/jsoup/nodes/Attribute;.key)Ljava/lang/String;').
name_ref(f_parent_25, field, 'parent', 'Lorg/jsoup/nodes/Attribute;.parent)Lorg/jsoup/nodes/Attributes;').
name_ref(f_val_24, field, 'val', 'Lorg/jsoup/nodes/Attribute;.val)Ljava/lang/String;').
name_ref(m_attribute_14, method, 'Attribute', 'Lorg/jsoup/nodes/Attribute;.(Ljava/lang/String;Ljava/lang/String;)V').
name_ref(m_attribute_15, method, 'Attribute', 'Lorg/jsoup/nodes/Attribute;.(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V').
name_ref(m_boolean_attributes_are_empty_string_values_40, method, 'booleanAttributesAreEmptyStringValues', 'Lorg/jsoup/nodes/AttributeTest;.booleanAttributesAreEmptyStringValues()V').
name_ref(m_clone_35, method, 'clone', 'Lorg/jsoup/nodes/Attribute;.clone()Lorg/jsoup/nodes/Attribute;').
name_ref(m_create_from_encoded_26, method, 'createFromEncoded', 'Lorg/jsoup/nodes/Attribute;.createFromEncoded(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Attribute;').
name_ref(m_equals_33, method, 'equals', 'Lorg/jsoup/nodes/Attribute;.equals(Ljava/lang/Object;)Z').
name_ref(m_fail_13, method, 'fail', 'Lorg/jsoup/helper/Validate;.fail(Ljava/lang/String;)V').
name_ref(m_get_21, method, 'get', 'Lorg/jsoup/nodes/Attributes;.get(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_get_key_17, method, 'getKey', 'Lorg/jsoup/nodes/Attribute;.getKey()Ljava/lang/String;').
name_ref(m_get_value_19, method, 'getValue', 'Lorg/jsoup/nodes/Attribute;.getValue()Ljava/lang/String;').
name_ref(m_hash_code_34, method, 'hashCode', 'Lorg/jsoup/nodes/Attribute;.hashCode()I').
name_ref(m_html_22, method, 'html', 'Lorg/jsoup/nodes/Attribute;.html()Ljava/lang/String;').
name_ref(m_html_23, method, 'html', 'Lorg/jsoup/nodes/Attribute;.html(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Appendable;Lorg/jsoup/nodes/Document$OutputSettings;)V|Ljava/io/IOException;').
name_ref(m_html_24, method, 'html', 'Lorg/jsoup/nodes/Attribute;.html(Ljava/lang/Appendable;Lorg/jsoup/nodes/Document$OutputSettings;)V|Ljava/io/IOException;').
name_ref(m_html_36, method, 'html', 'Lorg/jsoup/nodes/AttributeTest;.html()V').
name_ref(m_is_boolean_attribute_31, method, 'isBooleanAttribute', 'Lorg/jsoup/nodes/Attribute;.isBooleanAttribute()Z').
name_ref(m_is_boolean_attribute_32, method, 'isBooleanAttribute', 'Lorg/jsoup/nodes/Attribute;.isBooleanAttribute(Ljava/lang/String;)Z').
name_ref(m_is_data_attribute_27, method, 'isDataAttribute', 'Lorg/jsoup/nodes/Attribute;.isDataAttribute()Z').
name_ref(m_is_data_attribute_28, method, 'isDataAttribute', 'Lorg/jsoup/nodes/Attribute;.isDataAttribute(Ljava/lang/String;)Z').
name_ref(m_is_false_6, method, 'isFalse', 'Lorg/jsoup/helper/Validate;.isFalse(Z)V').
name_ref(m_is_false_7, method, 'isFalse', 'Lorg/jsoup/helper/Validate;.isFalse(ZLjava/lang/String;)V').
name_ref(m_is_true_4, method, 'isTrue', 'Lorg/jsoup/helper/Validate;.isTrue(Z)V').
name_ref(m_is_true_5, method, 'isTrue', 'Lorg/jsoup/helper/Validate;.isTrue(ZLjava/lang/String;)V').
name_ref(m_length_11, method, 'length', 'Ljava/lang/String;.length()I').
name_ref(m_no_null_elements_8, method, 'noNullElements', 'Lorg/jsoup/helper/Validate;.noNullElements([Ljava/lang/Object;)V').
name_ref(m_no_null_elements_9, method, 'noNullElements', 'Lorg/jsoup/helper/Validate;.noNullElements([Ljava/lang/Object;Ljava/lang/String;)V').
name_ref(m_not_empty_10, method, 'notEmpty', 'Lorg/jsoup/helper/Validate;.notEmpty(Ljava/lang/String;)V').
name_ref(m_not_empty_12, method, 'notEmpty', 'Lorg/jsoup/helper/Validate;.notEmpty(Ljava/lang/String;Ljava/lang/String;)V').
name_ref(m_not_null_2, method, 'notNull', 'Lorg/jsoup/helper/Validate;.notNull(Ljava/lang/Object;)V').
name_ref(m_not_null_3, method, 'notNull', 'Lorg/jsoup/helper/Validate;.notNull(Ljava/lang/Object;Ljava/lang/String;)V').
name_ref(m_set_key_18, method, 'setKey', 'Lorg/jsoup/nodes/Attribute;.setKey(Ljava/lang/String;)V').
name_ref(m_set_value_20, method, 'setValue', 'Lorg/jsoup/nodes/Attribute;.setValue(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_setters_on_orphan_attribute_41, method, 'settersOnOrphanAttribute', 'Lorg/jsoup/nodes/AttributeTest;.settersOnOrphanAttribute()V').
name_ref(m_should_collapse_attribute_29, method, 'shouldCollapseAttribute', 'Lorg/jsoup/nodes/Attribute;.shouldCollapseAttribute(Lorg/jsoup/nodes/Document$OutputSettings;)Z').
name_ref(m_should_collapse_attribute_30, method, 'shouldCollapseAttribute', 'Lorg/jsoup/nodes/Attribute;.shouldCollapseAttribute(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/nodes/Document$OutputSettings;)Z').
name_ref(m_test_with_supplementary_character_in_attribute_key_and_value_37, method, 'testWithSupplementaryCharacterInAttributeKeyAndValue', 'Lorg/jsoup/nodes/AttributeTest;.testWithSupplementaryCharacterInAttributeKeyAndValue()V').
name_ref(m_to_string_25, method, 'toString', 'Lorg/jsoup/nodes/Attribute;.toString()Ljava/lang/String;').
name_ref(m_trim_16, method, 'trim', 'Ljava/lang/String;.trim()Ljava/lang/String;').
name_ref(m_validate_1, method, 'Validate', 'Lorg/jsoup/helper/Validate;.()V').
name_ref(m_validates_keys_not_empty_38, method, 'validatesKeysNotEmpty', 'Lorg/jsoup/nodes/AttributeTest;.validatesKeysNotEmpty()V').
name_ref(m_validates_keys_not_empty_via_set_39, method, 'validatesKeysNotEmptyViaSet', 'Lorg/jsoup/nodes/AttributeTest;.validatesKeysNotEmptyViaSet()V').

%%% End of Code Facts