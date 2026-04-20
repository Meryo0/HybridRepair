%%% Code Facts
:- style_check(-discontiguous).
%%% Classes
class(message_factory_1, 'org.apache.commons.math.exception.util.MessageFactory').
class(message_factory_test_1, 'org.apache.commons.math.exception.util.MessageFactoryTest').
class(dummy_localizable_1, 'org.apache.commons.math.exception.util.DummyLocalizable').

%%% Methods
%message_factory_1 - org.apache.commons.math.exception.util.MessageFactory
method(m_message_factory_5, range(message_factory_1, 1045, 86, 29, 32)).
method(m_build_message_6, range(message_factory_1, 1137, 525, 34, 46)).
method(m_build_message_7, range(message_factory_1, 1668, 1850, 48, 90)).
%message_factory_test_1 - org.apache.commons.math.exception.util.MessageFactoryTest
method(m_test_specific_general_11, range(message_factory_test_1, 966, 443, 26, 33)).
method(m_test_null_specific_12, range(message_factory_test_1, 1415, 326, 35, 41)).
method(m_test_null_general_13, range(message_factory_test_1, 1747, 335, 43, 49)).
method(m_test_null_14, range(message_factory_test_1, 2089, 174, 52, 56)).
%dummy_localizable_1 - org.apache.commons.math.exception.util.DummyLocalizable
method(m_dummy_localizable_1, range(dummy_localizable_1, 1253, 151, 35, 40)).
method(m_get_source_string_2, range(dummy_localizable_1, 1410, 87, 42, 45)).
method(m_get_localized_string_3, range(dummy_localizable_1, 1503, 103, 47, 50)).
method(m_to_string_4, range(dummy_localizable_1, 1612, 94, 52, 56)).

%%% Blocks
%message_factory_1 - org.apache.commons.math.exception.util.MessageFactory
block(message_factory_1_block1, block, message_factory_1_code3, body, range(message_factory_1, 2437, 1081, 63, 90)).
%message_factory_test_1 - org.apache.commons.math.exception.util.MessageFactoryTest
block(message_factory_test_1_block1, block, message_factory_test_1_code4, body, range(message_factory_test_1, 1787, 295, 44, 49)).
block(message_factory_test_1_block2, block, message_factory_test_1_code10, body, range(message_factory_test_1, 2122, 141, 53, 56)).
%dummy_localizable_1 - org.apache.commons.math.exception.util.DummyLocalizable
block(dummy_localizable_1_block1, block, dummy_localizable_1_code3, body, range(dummy_localizable_1, 1367, 37, 38, 40)).

%%% Statements
%message_factory_1 - org.apache.commons.math.exception.util.MessageFactory
stmt(message_factory_1_stmt1, variable_declaration_statement, message_factory_1_block1, (statements, 0), range(message_factory_1, 2448, 45, 65, 65)).
stmt(message_factory_1_stmt2, variable_declaration_statement, message_factory_1_block1, (statements, 1), range(message_factory_1, 2502, 96, 66, 66)).
%message_factory_test_1 - org.apache.commons.math.exception.util.MessageFactoryTest
stmt(message_factory_test_1_stmt1, variable_declaration_statement, message_factory_test_1_block1, (statements, 0), range(message_factory_test_1, 1797, 72, 45, 45)).
stmt(message_factory_test_1_stmt2, variable_declaration_statement, message_factory_test_1_block1, (statements, 1), range(message_factory_test_1, 1878, 138, 46, 47)).
stmt(message_factory_test_1_stmt3, variable_declaration_statement, message_factory_test_1_block2, (statements, 0), range(message_factory_test_1, 2132, 83, 54, 54)).
%dummy_localizable_1 - org.apache.commons.math.exception.util.DummyLocalizable
stmt(dummy_localizable_1_stmt1, expression_statement, dummy_localizable_1_block1, (statements, 0), range(dummy_localizable_1, 1377, 21, 39, 39)).

%%% Expressions
%message_factory_1 - org.apache.commons.math.exception.util.MessageFactory
expr(message_factory_1_expr1, class_instance_creation, message_factory_1_code6, initializer, range(message_factory_1, 2473, 19, 65, 65), "new StringBuilder()").
expr(message_factory_1_expr2, class_instance_creation, message_factory_1_code10, initializer, range(message_factory_1, 2536, 61, 66, 66), "new MessageFormat(general.getLocalizedString(locale),locale)").
expr(message_factory_1_expr3, method_invocation, message_factory_1_expr2, (arguments, 0), range(message_factory_1, 2554, 34, 66, 66), "general.getLocalizedString(locale)").
%message_factory_test_1 - org.apache.commons.math.exception.util.MessageFactoryTest
expr(message_factory_test_1_expr1, class_instance_creation, message_factory_test_1_code6, initializer, range(message_factory_test_1, 1820, 48, 45, 45), "new DummyLocalizable(\"specific {0} - {1} - {2}\")").
expr(message_factory_test_1_expr2, method_invocation, message_factory_test_1_code9, initializer, range(message_factory_test_1, 1895, 120, 46, 47), "MessageFactory.buildMessage(Locale.FRENCH,specific,null,0,1,2)").
expr(message_factory_test_1_expr3, method_invocation, message_factory_test_1_code12, initializer, range(message_factory_test_1, 2149, 65, 54, 54), "MessageFactory.buildMessage(Locale.FRENCH,null,null,\"nothing\")").
%dummy_localizable_1 - org.apache.commons.math.exception.util.DummyLocalizable
expr(dummy_localizable_1_expr1, assignment, dummy_localizable_1_stmt1, expression, range(dummy_localizable_1, 1377, 20, 39, 39), "this.source=source").
expr(dummy_localizable_1_expr2, field_access, dummy_localizable_1_expr1, left_hand_side, range(dummy_localizable_1, 1377, 11, 39, 39), "this.source").
expr(dummy_localizable_1_expr3, this_expression, f_source_2, expression, range(dummy_localizable_1, 1377, 4, 39, 39), "this").

%%% Names
%message_factory_1 - org.apache.commons.math.exception.util.MessageFactory
name(v_sb_11, simple_name, message_factory_1_code6, name, range(message_factory_1, 2468, 2, 65, 65), 'sb').
name(v_general_fmt_12, simple_name, message_factory_1_code10, name, range(message_factory_1, 2522, 10, 66, 66), 'generalFmt').
name(p_general_9, simple_name, message_factory_1_expr3, expression, range(message_factory_1, 2554, 7, 66, 66), 'general').
name(m_get_localized_string_10, simple_name, message_factory_1_expr3, name, range(message_factory_1, 2562, 18, 66, 66), 'getLocalizedString').
name(p_locale_7, simple_name, message_factory_1_expr3, (arguments, 0), range(message_factory_1, 2581, 6, 66, 66), 'locale').
name(p_locale_7, simple_name, message_factory_1_expr2, (arguments, 1), range(message_factory_1, 2590, 6, 66, 66), 'locale').
%message_factory_test_1 - org.apache.commons.math.exception.util.MessageFactoryTest
name(t_message_factory_test_1, simple_name, message_factory_test_1_code2, name, range(message_factory_test_1, 940, 18, 24, 24), 'MessageFactoryTest').
name(v_specific_13, simple_name, message_factory_test_1_code6, name, range(message_factory_test_1, 1809, 8, 45, 45), 'specific').
name(v_message_14, simple_name, message_factory_test_1_code9, name, range(message_factory_test_1, 1885, 7, 46, 46), 'message').
name(t_message_factory_2, simple_name, message_factory_test_1_expr2, expression, range(message_factory_test_1, 1895, 14, 46, 46), 'MessageFactory').
name(m_build_message_7, simple_name, message_factory_test_1_expr2, name, range(message_factory_test_1, 1910, 12, 46, 46), 'buildMessage').
name(q_french_1, qualified_name, message_factory_test_1_expr2, (arguments, 0), range(message_factory_test_1, 1923, 13, 46, 46), 'Locale.FRENCH').
name(t_locale_3, simple_name, q_french_1, qualifier, range(message_factory_test_1, 1923, 6, 46, 46), 'Locale').
name(v_specific_13, simple_name, message_factory_test_1_expr2, (arguments, 1), range(message_factory_test_1, 1938, 8, 46, 46), 'specific').
name(v_message_15, simple_name, message_factory_test_1_code12, name, range(message_factory_test_1, 2139, 7, 54, 54), 'message').
name(t_message_factory_2, simple_name, message_factory_test_1_expr3, expression, range(message_factory_test_1, 2149, 14, 54, 54), 'MessageFactory').
name(m_build_message_7, simple_name, message_factory_test_1_expr3, name, range(message_factory_test_1, 2164, 12, 54, 54), 'buildMessage').
name(q_french_2, qualified_name, message_factory_test_1_expr3, (arguments, 0), range(message_factory_test_1, 2177, 13, 54, 54), 'Locale.FRENCH').
name(t_locale_3, simple_name, q_french_2, qualifier, range(message_factory_test_1, 2177, 6, 54, 54), 'Locale').
%dummy_localizable_1 - org.apache.commons.math.exception.util.DummyLocalizable
name(m_dummy_localizable_1, simple_name, dummy_localizable_1_code3, name, range(dummy_localizable_1, 1329, 16, 38, 38), 'DummyLocalizable').
name(p_source_1, simple_name, dummy_localizable_1_code5, name, range(dummy_localizable_1, 1359, 6, 38, 38), 'source').
name(f_source_2, simple_name, dummy_localizable_1_expr2, name, range(dummy_localizable_1, 1382, 6, 39, 39), 'source').
name(p_source_1, simple_name, dummy_localizable_1_expr1, right_hand_side, range(dummy_localizable_1, 1391, 6, 39, 39), 'source').

%%% Literals
%message_factory_1 - org.apache.commons.math.exception.util.MessageFactory
%message_factory_test_1 - org.apache.commons.math.exception.util.MessageFactoryTest
literal(message_factory_test_1_literal1, string_literal, message_factory_test_1_expr1, (arguments, 0), range(message_factory_test_1, 1841, 26, 45, 45), "specific {0} - {1} - {2}").
literal(message_factory_test_1_literal2, null_literal, message_factory_test_1_expr2, (arguments, 2), range(message_factory_test_1, 1948, 4, 46, 46), null).
literal(message_factory_test_1_literal3, number_literal, message_factory_test_1_expr2, (arguments, 3), range(message_factory_test_1, 2007, 1, 47, 47), 0).
literal(message_factory_test_1_literal4, number_literal, message_factory_test_1_expr2, (arguments, 4), range(message_factory_test_1, 2010, 1, 47, 47), 1).
literal(message_factory_test_1_literal5, number_literal, message_factory_test_1_expr2, (arguments, 5), range(message_factory_test_1, 2013, 1, 47, 47), 2).
literal(message_factory_test_1_literal6, null_literal, message_factory_test_1_expr3, (arguments, 1), range(message_factory_test_1, 2192, 4, 54, 54), null).
literal(message_factory_test_1_literal7, null_literal, message_factory_test_1_expr3, (arguments, 2), range(message_factory_test_1, 2198, 4, 54, 54), null).
literal(message_factory_test_1_literal8, string_literal, message_factory_test_1_expr3, (arguments, 3), range(message_factory_test_1, 2204, 9, 54, 54), "nothing").
%dummy_localizable_1 - org.apache.commons.math.exception.util.DummyLocalizable

%%% Other Code Entities
%message_factory_1 - org.apache.commons.math.exception.util.MessageFactory
code(message_factory_1_code1, compilation_unit, range(message_factory_1, 0, 3521, 1, -1)).
code(message_factory_1_code2, type_declaration, message_factory_1_code1, (types, 0), range(message_factory_1, 910, 2610, 22, 91)).
code(message_factory_1_code3, method_declaration, message_factory_1_code2, (body_declarations, 2), range(message_factory_1, 1668, 1850, 48, 90)).
code(message_factory_1_code4, modifier, message_factory_1_stmt1, (modifiers, 0), range(message_factory_1, 2448, 5, 65, 65)).
code(message_factory_1_code5, simple_type, message_factory_1_stmt1, type, range(message_factory_1, 2454, 13, 65, 65)).
code(message_factory_1_code6, variable_declaration_fragment, message_factory_1_stmt1, (fragments, 0), range(message_factory_1, 2468, 24, 65, 65)).
code(message_factory_1_code7, simple_type, message_factory_1_expr1, type, range(message_factory_1, 2477, 13, 65, 65)).
code(message_factory_1_code8, modifier, message_factory_1_stmt2, (modifiers, 0), range(message_factory_1, 2502, 5, 66, 66)).
code(message_factory_1_code9, simple_type, message_factory_1_stmt2, type, range(message_factory_1, 2508, 13, 66, 66)).
code(message_factory_1_code10, variable_declaration_fragment, message_factory_1_stmt2, (fragments, 0), range(message_factory_1, 2522, 75, 66, 66)).
code(message_factory_1_code11, simple_type, message_factory_1_expr2, type, range(message_factory_1, 2540, 13, 66, 66)).
%message_factory_test_1 - org.apache.commons.math.exception.util.MessageFactoryTest
code(message_factory_test_1_code1, compilation_unit, range(message_factory_test_1, 0, 2267, 1, -1)).
code(message_factory_test_1_code3, modifier, message_factory_test_1_code2, (modifiers, 0), range(message_factory_test_1, 927, 6, 24, 24)).
code(message_factory_test_1_code2, type_declaration, message_factory_test_1_code1, (types, 0), range(message_factory_test_1, 927, 1339, 24, 58)).
code(message_factory_test_1_code4, method_declaration, message_factory_test_1_code2, (body_declarations, 2), range(message_factory_test_1, 1747, 335, 43, 49)).
code(message_factory_test_1_code5, simple_type, message_factory_test_1_stmt1, type, range(message_factory_test_1, 1797, 11, 45, 45)).
code(message_factory_test_1_code6, variable_declaration_fragment, message_factory_test_1_stmt1, (fragments, 0), range(message_factory_test_1, 1809, 59, 45, 45)).
code(message_factory_test_1_code7, simple_type, message_factory_test_1_expr1, type, range(message_factory_test_1, 1824, 16, 45, 45)).
code(message_factory_test_1_code8, simple_type, message_factory_test_1_stmt2, type, range(message_factory_test_1, 1878, 6, 46, 46)).
code(message_factory_test_1_code9, variable_declaration_fragment, message_factory_test_1_stmt2, (fragments, 0), range(message_factory_test_1, 1885, 130, 46, 47)).
code(message_factory_test_1_code10, method_declaration, message_factory_test_1_code2, (body_declarations, 3), range(message_factory_test_1, 2089, 174, 52, 56)).
code(message_factory_test_1_code11, simple_type, message_factory_test_1_stmt3, type, range(message_factory_test_1, 2132, 6, 54, 54)).
code(message_factory_test_1_code12, variable_declaration_fragment, message_factory_test_1_stmt3, (fragments, 0), range(message_factory_test_1, 2139, 75, 54, 54)).
%dummy_localizable_1 - org.apache.commons.math.exception.util.DummyLocalizable
code(dummy_localizable_1_code1, compilation_unit, range(dummy_localizable_1, 0, 1710, 1, -1)).
code(dummy_localizable_1_code2, type_declaration, dummy_localizable_1_code1, (types, 0), range(dummy_localizable_1, 878, 831, 21, 58)).
code(dummy_localizable_1_code3, method_declaration, dummy_localizable_1_code2, (body_declarations, 2), range(dummy_localizable_1, 1253, 151, 35, 40)).
code(dummy_localizable_1_code4, modifier, dummy_localizable_1_code3, (modifiers, 0), range(dummy_localizable_1, 1322, 6, 38, 38)).
code(dummy_localizable_1_code6, modifier, dummy_localizable_1_code5, (modifiers, 0), range(dummy_localizable_1, 1346, 5, 38, 38)).
code(dummy_localizable_1_code5, single_variable_declaration, dummy_localizable_1_code3, (parameters, 0), range(dummy_localizable_1, 1346, 19, 38, 38)).
code(dummy_localizable_1_code7, simple_type, dummy_localizable_1_code5, type, range(dummy_localizable_1, 1352, 6, 38, 38)).

%%% Name References

name_ref(t_locale_3, type, 'Locale', 'Ljava/util/Locale;').
name_ref(t_message_factory_2, type, 'MessageFactory', 'Lorg/apache/commons/math/exception/util/MessageFactory;').
name_ref(t_message_factory_test_1, type, 'MessageFactoryTest', 'Lorg/apache/commons/math/exception/util/MessageFactoryTest;').
name_ref(v_general_fmt_12, var, 'generalFmt', 'Lorg/apache/commons/math/exception/util/MessageFactory;.buildMessage(Ljava/util/Locale;Lorg/apache/commons/math/exception/util/Localizable;Lorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)Ljava/lang/String;#generalFmt').
name_ref(v_message_14, var, 'message', 'Lorg/apache/commons/math/exception/util/MessageFactoryTest;.testNullGeneral()V#message').
name_ref(v_message_15, var, 'message', 'Lorg/apache/commons/math/exception/util/MessageFactoryTest;.testNull()V#message').
name_ref(v_sb_11, var, 'sb', 'Lorg/apache/commons/math/exception/util/MessageFactory;.buildMessage(Ljava/util/Locale;Lorg/apache/commons/math/exception/util/Localizable;Lorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)Ljava/lang/String;#sb').
name_ref(v_specific_13, var, 'specific', 'Lorg/apache/commons/math/exception/util/MessageFactoryTest;.testNullGeneral()V#specific').
name_ref(p_arguments_10, param, 'arguments', 'Lorg/apache/commons/math/exception/util/MessageFactory;.buildMessage(Ljava/util/Locale;Lorg/apache/commons/math/exception/util/Localizable;Lorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)Ljava/lang/String;#arguments#0#3').
name_ref(p_arguments_6, param, 'arguments', 'Lorg/apache/commons/math/exception/util/MessageFactory;.buildMessage(Ljava/util/Locale;Lorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)Ljava/lang/String;#arguments#0#2').
name_ref(p_general_9, param, 'general', 'Lorg/apache/commons/math/exception/util/MessageFactory;.buildMessage(Ljava/util/Locale;Lorg/apache/commons/math/exception/util/Localizable;Lorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)Ljava/lang/String;#general#0#2').
name_ref(p_locale_3, param, 'locale', 'Lorg/apache/commons/math/exception/util/DummyLocalizable;.getLocalizedString(Ljava/util/Locale;)Ljava/lang/String;#locale#0#0').
name_ref(p_locale_4, param, 'locale', 'Lorg/apache/commons/math/exception/util/MessageFactory;.buildMessage(Ljava/util/Locale;Lorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)Ljava/lang/String;#locale#0#0').
name_ref(p_locale_7, param, 'locale', 'Lorg/apache/commons/math/exception/util/MessageFactory;.buildMessage(Ljava/util/Locale;Lorg/apache/commons/math/exception/util/Localizable;Lorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)Ljava/lang/String;#locale#0#0').
name_ref(p_pattern_5, param, 'pattern', 'Lorg/apache/commons/math/exception/util/MessageFactory;.buildMessage(Ljava/util/Locale;Lorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)Ljava/lang/String;#pattern#0#1').
name_ref(p_source_1, param, 'source', 'Lorg/apache/commons/math/exception/util/DummyLocalizable;.(Ljava/lang/String;)V#source#0#0').
name_ref(p_specific_8, param, 'specific', 'Lorg/apache/commons/math/exception/util/MessageFactory;.buildMessage(Ljava/util/Locale;Lorg/apache/commons/math/exception/util/Localizable;Lorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)Ljava/lang/String;#specific#0#1').
name_ref(f_source_2, field, 'source', 'Lorg/apache/commons/math/exception/util/DummyLocalizable;.source)Ljava/lang/String;').
name_ref(m_build_message_6, method, 'buildMessage', 'Lorg/apache/commons/math/exception/util/MessageFactory;.buildMessage(Ljava/util/Locale;Lorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)Ljava/lang/String;').
name_ref(m_build_message_7, method, 'buildMessage', 'Lorg/apache/commons/math/exception/util/MessageFactory;.buildMessage(Ljava/util/Locale;Lorg/apache/commons/math/exception/util/Localizable;Lorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)Ljava/lang/String;').
name_ref(m_dummy_localizable_1, method, 'DummyLocalizable', 'Lorg/apache/commons/math/exception/util/DummyLocalizable;.(Ljava/lang/String;)V').
name_ref(m_get_localized_string_10, method, 'getLocalizedString', 'Lorg/apache/commons/math/exception/util/Localizable;.getLocalizedString(Ljava/util/Locale;)Ljava/lang/String;').
name_ref(m_get_localized_string_3, method, 'getLocalizedString', 'Lorg/apache/commons/math/exception/util/DummyLocalizable;.getLocalizedString(Ljava/util/Locale;)Ljava/lang/String;').
name_ref(m_get_source_string_2, method, 'getSourceString', 'Lorg/apache/commons/math/exception/util/DummyLocalizable;.getSourceString()Ljava/lang/String;').
name_ref(m_message_factory_5, method, 'MessageFactory', 'Lorg/apache/commons/math/exception/util/MessageFactory;.()V').
name_ref(m_message_format_9, method, 'MessageFormat', 'Ljava/text/MessageFormat;.(Ljava/lang/String;Ljava/util/Locale;)V').
name_ref(m_string_builder_8, method, 'StringBuilder', 'Ljava/lang/StringBuilder;.()V').
name_ref(m_test_null_14, method, 'testNull', 'Lorg/apache/commons/math/exception/util/MessageFactoryTest;.testNull()V').
name_ref(m_test_null_general_13, method, 'testNullGeneral', 'Lorg/apache/commons/math/exception/util/MessageFactoryTest;.testNullGeneral()V').
name_ref(m_test_null_specific_12, method, 'testNullSpecific', 'Lorg/apache/commons/math/exception/util/MessageFactoryTest;.testNullSpecific()V').
name_ref(m_test_specific_general_11, method, 'testSpecificGeneral', 'Lorg/apache/commons/math/exception/util/MessageFactoryTest;.testSpecificGeneral()V').
name_ref(m_to_string_4, method, 'toString', 'Lorg/apache/commons/math/exception/util/DummyLocalizable;.toString()Ljava/lang/String;').
name_ref(q_french_1, q_name, 'Locale.FRENCH', 'Ljava/util/Locale;:Ljava/util/Locale;.FRENCH)Ljava/util/Locale;').

%%% End of Code Facts